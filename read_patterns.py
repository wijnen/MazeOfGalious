#!/usr/bin/python3
# vim: set fileencoding=utf-8 foldmethod=marker :

import sys
import struct
import numpy
from PIL import Image, ImageOps, ImageDraw

# Interface to makemaps:
# Generating characters:
#	sets[room_type]	-> This is a list of opaque objects which should only be passed into get_char and composite.
#	get_char(character_sets, charcode)
#	composite(character_sets, charcode_matrix)
# Pre-made images:
#	items[item_id]
#	shrine_img
#	worlddoor_img
#	boulder_img
#	gods[god_id]

rom = open('MazeOfGalious.rom', 'rb').read()

palette = ((0, 0, 0, # {{{
		0, 0, 0,
		62, 184, 73,
		116, 208, 125,
		89, 85, 224,
		128, 118, 241,
		185, 94, 81,
		101, 219, 239,
		219, 101, 89,
		255, 137, 125,
		204, 195, 94,
		222, 208, 135,
		58, 162, 65,
		183, 102, 181,
		204, 204, 204,
		255, 255, 255))
# }}}

# Character sets. {{{
# Character set sources. {{{
# These codes have been read manually from the code; they are not in a table, but scattered throughout.
pattern_data_pointers = [
		(0x14000, 0x14037),	# 00: Common characters for every charset.
		(0x14044, None),	# 01: Set 7 (world 1-10)
		(0x14069, None),	# 02: Set 0 (red rock)
		(0x14076, None),	# 03: Set 1 (green leaves)
		(0x14083, 0x140a8),	# 04: Set 2 (Blue stones; banners) and 3 (Blue stones)
		(0x140a1, None),	# 05: Set 4 (Blue stones; chains)
		(0x140b1, 0x140ac),	# 06: Set 4 and 5
		(0x140c9, None),	# 07: Set 3
		(0x140d0, None)]	# 08: Set 6 (Orange bricks)

# Sets defines which pattern rom sets are used by rooms.
sets = [[0, 2], [0, 3], [0, 4], [0, 4, 7], [0, 6, 5], [0, 6], [0, 8], [0, 1]]

pattern_data_pointers += [
		(0x14121, 0x14128),	# 09: Boss symbol
		(0x14139, 0x14140),	# 0a: Boss flash?
		(0x1435e, None),	# 0b: gods	pre-mirror 0x14390?
		(0x14365, None),	# 0c: popolon, pamperse, aphrodite, world map squares
		# everything above uses setup_vram_patterns, the rest does not (except boss sets below).
		(0x1436c, None),	# 0d: castle, great, nice (end demo)
		(0x1da96, None)]	# 0e: title image

# For other boss patterns: world code is at 0x1e05 + world (1-based): 05 01 04 02 0b 0a 03 07 08 06 09
# Map is at *(14157+2*code) 616f 61ac 61ad 61b4 61bb 61bc 61cf 61dc 61e3 61ea 61fd
# Same for mirror, at *(14202+2*code)
boss_sets = [[0, 9, 10, len(pattern_data_pointers) + w] for w in range(11)]
boss_world_codes = tuple(rom[0x1e05 + 1:0x1e05 + 12])
boss_map = struct.unpack('<' + 'H' * 11, rom[0x14157 + 2:0x14157 + 2 * (1 + 11)])
boss_mirror = struct.unpack('<' + 'H' * 11, rom[0x14202 + 2:0x14202 + 2 * (1 + 11)])
pattern_data_pointers += [(boss_map[c - 1] - 0x6000 + 0x14000, boss_mirror[c - 1] - 0x6000 + 0x14000) for c in boss_world_codes]

# Add boss unique characters (only for world 3)
boss3_pointers = [tuple(0x14175 + i * 7 for i in range(1, 8)), tuple(0x1421a + (i - 8) * 5 for i in range(8, 0x2c + 1))]

'''
		(0x1416f, None),	# 0f: boss 1 (bone dragon)
		(0x141ac, None),	# 10: - (boss 3: special)
		(0x141ad, None),	# 11: boss 6 (crab)
		(0x141b4, None),	# 12: boss 2 (plant)
		(0x141bb, None),	# 13: - (castle "boss")
		(0x141bc, None),	# 14: boss 9 (blue fire dragon)
		(0x141cf, None),	# 15: boss 7 (lips)
		(0x141dc, None),	# 16: boss 8 (stomper)
		(0x141e3, None),	# 17: boss 10 (Galious)
		(0x141ea, None),	# 18: boss 5 (white fire dragon)
		(0x141fd, None),	# 19: boss 4 (green blob)
		'''

'''
		(0x14175, None),	# 1a: small part of boss 1?
		(0x1417c, None),	# 1b: boss 3 (green platform dragon)
		(0x14183, None),	# 1c: == 1b
		(0x1418a, None),	# 1d: == 1b
		(0x14191, None),	# 1e: boss 2 part?
		(0x14198, None),	# 1f: == 1e
		(0x1419f, None),	# 20: == 1e
		(0x141a6, None),	# 21: flame of boss 5 or 9
		(0x141ad, None),	# 22: more boss 6
		(0x141b4, None)]	# 23: more boss 2
		'''

god_wall_colors = rom[0x181d:0x181d + 8]

text_pattern_data_pointers = [
		(0x1dad3, 0x008),	# default: 0-9
		(0x1db24, 0x058),	# default: A-Z
		(0x1dad3, 0x080),	# title: 0-9
		(0x1daa2, 0x0d0),	# title: © pointing finger
		(0x1dacc, 0x100),	# title: -
		(0x1db24, 0x108),	# title: A-Z
		(0x1daa2, 0x160),	# end demo: © pointing finger
		(0x1dabd, 0x168),	# end demo: '+-
		(0x1dbec, 0x5d0)]	# entering password; god screens: kana (4b-80)
# }}}

def decompress(address, multiple = None): # {{{
	'''Build patterns from the rom format that send_vram expects.
	Return an array of characters (each of which is an 8 byte array containing screen 2 rom).
	This is really just decompression.
	If multiple is given, it must be the initial address.'''
	ret = []
	mret = {multiple: [ret]}
	while rom[address] != 0:
		#print('%05x: %02x' % (address, rom[address]))
		c = rom[address]
		address += 1
		if c == 0x80:
			assert multiple is not None
			vram = struct.unpack('<H', rom[address:address + 2])[0]
			address += 2
			if vram not in mret:
				mret[vram] = []
			ret = []
			mret[vram].append(ret)
			continue
		if c & 0x80:
			ret.extend([rom[address + n] for n in range(c - 0x80)])
			address += c - 0x80
		else:
			ret.extend([rom[address]] * c)
			address += 1
	if multiple is not None:
		return {x: [numpy.array(mr, dtype = numpy.uint8) for mr in mret[x]] for x in mret}
	return numpy.array(ret, dtype = numpy.uint8)
# }}}

def decode_screen2(pattern, color): # {{{
	'''Create a character based on an the rom from decompress for pattern and color.
	This is converting screen 2-encoding to (palette) pixel rom.'''
	ret = numpy.zeros((8, 8), dtype = numpy.uint8)
	for line in range(8):
		colors = (color[line] & 0xf, color[line] >> 4)
		for pixel in range(8):
			ret[line, 7 - pixel] = colors[(pattern[line] >> pixel) & 1]
	return ret
# }}}

def build_patterns(address): # {{{
	'Create a character (palette pixel based) from compressed screen 2 rom.'
	junk, pgt, start, ct = struct.unpack('<BHBH', rom[address:address + 6])
	assert (junk & 7) == junk
	# Convert from mapping to real address.
	offset = (0x14000 - 0x6000) if address < 0x16000 else (0x1c000 - 0x8000)
	pgt += offset
	ct += offset
	patterns = decompress(pgt, multiple = start * 8 + 0x1800)
	colors = decompress(ct, multiple = start * 8)
	ret = {}
	assert tuple(x - 0x1800 for x in patterns.keys()) == tuple(colors.keys())
	for k in colors.keys():
		# There should only be one of each address, but use first one if there happen to be more.
		pat = patterns[k + 0x1800][0].reshape((-1, 8))
		col = colors[k][0].reshape((-1, 8))
		assert len(pat) == len(col)
		for i in range(len(col)):
			ret[k // 8 + i] = decode_screen2(pat[i], col[i])
	return ret
# }}}

all_characters = []	# every element in this list is a list of 0x100 characters, each None or an Image.
dups = []	# characters which are being overwritten before being used are stored here.

def load_chars(addr, target): # {{{
	'Load a character set from the rom file into target (which will be added to all_characters)'
	while rom[addr] != 0:
		chars = build_patterns(addr)
		for c in chars:
			im = Image.fromarray(chars[c], 'P')
			im.putpalette(palette)
			if target[c] is None:
				target[c] = im.convert('RGB')
			else:
				dups.append(im.convert('RGB'))
		addr += 6
# }}}

def apply_mirror(addr, target): # {{{
	'apply mirror commands to a target charset, as defined in the rom.'
	if addr is None:
		return
	while rom[addr] != 0:
		start, dest, flags, num = rom[addr:addr + 4]
		for c in range(num):
			if target[start + c] is None:
				print('warning: trying to mirror uninitialized character %02x' % c)
			else:
				#assert target[dest + c] is None
				target[dest + c] = ImageOps.mirror(target[start + c])
		addr += 4
# }}}

# Load all non-text characters (mostly bosses). {{{
for addr, mirror in pattern_data_pointers:
	all_characters.append([None] * 0x100)
	load_chars(addr, all_characters[-1])
	apply_mirror(mirror, all_characters[-1])

# Boss 3 is special.
for addr in boss3_pointers[0]:
	load_chars(addr, all_characters[boss_sets[3][-1]])
# Boss 3 is very special: use a different charset for mirror image.
boss_sets.append([0, 9, 10, len(all_characters)])
all_characters.append([None] * 0x100)
for addr in boss3_pointers[0]:
	load_chars(addr, all_characters[-1])
for addr in boss3_pointers[1]:
	apply_mirror(addr, all_characters[-1])
# }}}

# Add special charset for debugging. {{{
debug_set = [len(all_characters)]
all_characters.append([None] * 0x100)
debug_color = (
	(255, 0, 0), (0, 255, 0), (0, 0, 255), (255, 255, 0),
	(255, 0, 255), (0, 255, 255), (0, 0, 0), (255, 255, 255),
	(128, 0, 0), (0, 128, 0), (0, 0, 128), (128, 128, 0),
	(128, 0, 128), (0, 128, 128), (0, 0, 0), (128, 128, 128))
for i in range(0x100):
	im = Image.new('RGB', (8, 8), debug_color[i >> 4])
	imd = ImageDraw.Draw(im)
	imd.text((0, 0), '%x' % (i & 0xf), fill = (192, 64, 32))
	all_characters[-1][i] = im
# }}}

# Load all text characters (no color table, all white on black). {{{
first_text_charset = len(all_characters)
# Read image rom for text and similar "extra" characters.
for addr, start in text_pattern_data_pointers:
	start //= 8
	patterns = decompress(addr).reshape((-1, 8))
	color = numpy.ones(8, dtype = numpy.uint8) * 0xf0	# force foreground white, background transparent.
	all_characters.append([None] * 0x100)
	for i, c in enumerate(patterns):
		assert all_characters[-1][start + i] is None
		ar = numpy.array(decode_screen2(c, color))
		im = Image.fromarray(ar, 'P')
		im.putpalette(palette)
		all_characters[-1][start + i] = im.convert('RGB')

# There are multiple text sets for some reason.
text_sets = [0, first_text_charset, first_text_charset + 1, first_text_charset + 8]
title_text_sets = [0, first_text_charset + 2, first_text_charset + 3, first_text_charset + 4, first_text_charset + 5]
end_demo_text_sets = [0, first_text_charset + 6, first_text_charset + 7]
base_sets = [0, first_text_charset, first_text_charset + 1]
# }}}

# Add special "god_wall" charset for the custom god wall character. {{{
# God wall is regular 0xf0 with custom color map.
def build_god_wall():
	"The god wall is a regular wall with a custom color map. It doesn't fit well in this code, so create a custom function."
	address = pattern_data_pointers[0][0]
	while True:
		junk, pgt, start, ct = struct.unpack('<BHBH', rom[address:address + 6])
		assert (junk & 7) == junk
		# Convert from mapping to real address.
		offset = (0x14000 - 0x6000) if address < 0x16000 else (0x1c000 - 0x8000)
		pgt += offset
		patterns = decompress(pgt, multiple = start * 8 + 0x1800)
		key = tuple(patterns.keys())[0]
		pat = patterns[key][0].reshape((-1, 8))
		first = (key - 0x1800) // 8
		if not first <= 0xf0 < first + len(pat):
			#print('no; %02x <= f0 < %02x still not true' % (first, first + len(pat)))
			address += 6
			assert rom[address] != 0
			continue
		pgt_data = pat[0xf0 - first]
		result = decode_screen2(pgt_data, god_wall_colors)
		im = Image.fromarray(result, 'P')
		im.putpalette(palette)
		return im.convert('RGB')
god_wall = build_god_wall()
god_wall_set = len(all_characters)
god_sets = base_sets + [0xb, god_wall_set]	# 0xb are images of gods.
all_characters.append([None] * 0x100)
all_characters[-1][0xf0] = god_wall
# }}}
# }}}

# Using characters. {{{
def get_char(charsets, code): # {{{
	'''Return image (array of palette indices) for given arguments.
	The charset_id can be a set (<8) or a block (see start of this file).'''
	ret = None
	for charset in charsets[::-1]:
		ret = all_characters[charset][code]
		if ret is not None:
			return ret
	return None
# }}}

def composite(charsets, src): # {{{
	assert all(len(x) == len(src[0]) for x in src)
	ret = Image.new('RGB', (len(src[0]) * 8, len(src) * 8))
	for y, row in enumerate(src):
		for x, char in enumerate(row):
			if char is None:
				continue
			src = get_char(charsets, char)
			if src is not None:
				ret.paste(src, (x * 8, y * 8))
	return ret
# }}}

def block(charsets, first): # {{{
	return composite(charsets, [[first + y * 2 + x for x in range(2)] for y in range(2)])
# }}}
# }}}

# Items. {{{
# Read image rom for items. Only one item is shown at a time (except in item screen). It's always in 76-7a.
items = [None] * 0x30
for idx in range(7, 0x2d):
	offset = 0x14000 - 0x6000
	addr = struct.unpack('<H', rom[0x14e34 + 2 * idx:0x14e34 + 2 * idx + 2])[0]
	addr += offset
	patterns = decompress(addr).reshape((-1, 8))
	addr = struct.unpack('<H', rom[0x14e80 + 2 * idx:0x14e80 + 2 * idx + 2])[0]
	addr += offset
	colors = decompress(addr).reshape((-1, 8))
	assert len(patterns) == len(colors) == 4
	ar = numpy.zeros((16, 16), dtype = numpy.uint8)
	for i in range(patterns.shape[0]):
		y, x = divmod(i, 2)
		ar[y * 8:(y + 1) * 8, x * 8:(x + 1) * 8] = decode_screen2(patterns[i], colors[i])
	im = Image.fromarray(ar, 'P')
	im.putpalette(palette)
	items[idx] = im.convert('RGB')

# Add weapons images.
weaponchars = ((0x44, 0x45), (0x46, 0x47), (0x4e, None), (0x4f, None), (0x50, 0x51), (0x52, 0x53))
for w, c in enumerate(weaponchars):
	items[w + 1] = composite([0], [c])

# Add arrows, coins and keys. They start at 0x3b.
for i in range(3):
	items[0x2d + i] = block([0], 0x60 + i * 4)
# }}}

# Other pre-made images. {{{
# Create the shrine image.
shrine_img = composite([0], [[0x8d, 0x93], [0x8e, 0x94]])

# Create the worlddoor image
worlddoor_img = composite([0], [[0x5a if y == 0 or x in (0, 3) else 0x5b for x in range(4)] for y in range(3)])

# Create the boulder image
boulder_img = block([0], 0xba)
# }}}

# God screens and other text. {{{
# Text handling: implement write_vram_to_screen.
def write_string_to_vram(address, charsets, image = None): # {{{
	'Write characters to screen like the code does. return screen image. Address is to rom rom.'
	if image is None:
		image = Image.new('RGBA', (0x100, 0xa0), (0, 0, 0, 0))
	vram_ptr = struct.unpack('<H', rom[address:address + 2])[0]
	address += 2
	while rom[address] != 0xff:
		if rom[address] == 0xfe:
			vram_ptr = struct.unpack('<H', rom[address + 1:address + 3])[0]
			address += 3
			continue
		char = get_char(charsets, rom[address])
		if not 0x3800 <= vram_ptr < 0x3b00:
			print('writing to non-name table: %04x' % vram_ptr)
			address += 1
			vram_ptr += 1
			continue
		y, x = divmod(vram_ptr - 0x3800, 0x20)
		if char is not None:
			image.paste(char, (x * 8, y * 8))
		elif rom[address] == 0:
			# character 0 is never filled, so it's always a black square.
			image.paste(Image.new('RGB', (8, 8), (0, 0, 0)), (x * 8, y * 8))
		else:
			image.paste(Image.new('RGB', (8, 8), (0xff, 0xff, 0)), (x * 8, y * 8))
		address += 1
		vram_ptr += 1
	return image
# }}}

def write_god_message(msg_id, image = None, pos = (0, 0)): # {{{
	'Reproduce god text as written in game by gods. Return a transparent screen with the new text.'
	if image is None:
		image = Image.new('RGBA', (0x100, 0xa0), (0, 0, 0, 0))
	#print('writing message id %02x' % msg_id)
	base = 0xb09e - 0xa000 + 0x2000 * 0xf
	ptr = base + 2 * msg_id
	address = struct.unpack('<H', rom[ptr:ptr + 2])[0] - 0xa000 + 0x2000 * 0xf
	screen_ptr = struct.unpack('<H', rom[address:address + 2])[0]
	line_start = screen_ptr
	address += 2
	while rom[address] != 0xff:
		if rom[address] == 0xfe:
			screen_ptr = line_start + 0x20
			line_start = screen_ptr
			address += 1
			continue
		char = get_char(text_sets, rom[address])
		y, x = divmod(screen_ptr - 0xed00, 0x20)
		y -= 4
		#print('%02x at %02x %02x %x' % (rom[address], x, y, screen_ptr))
		if char is not None:
			image.paste(char, (pos[0] + x * 8, pos[1] + y * 8))
		elif rom[address] == 0:
			# character 0 is never filled, so it's always a black square.
			image.paste(Image.new('RGB', (8, 8), (0, 0, 0)), (pos[0] + x * 8, pos[1] + y * 8))
		else:
			image.paste(Image.new('RGB', (8, 8), (0xff, 0xff, 0)), (pos[0] + x * 8, pos[1] + y * 8))
		address += 1
		screen_ptr += 1
	return image
# }}}

def make_god_screen(shrine_id, english, image = None, sub = 0): # {{{
	'Create a god screen as it looks in game.'
	# sub is used to choose different options for death and demeter.
	if image is None:
		image = Image.new('RGB', (0x100, 0xa0), (0, 0, 0))
	# Based on draw_boxes, at 93ae
	# Walls around it. {{{
	image.paste(composite(god_sets, [[0xf0, 0xf0]] * 0x13), (0, 0))
	image.paste(composite(god_sets, [[0xf0, 0xf0]] * 0x13), (0x1e * 8, 0))
	image.paste(composite(god_sets, [[0xf0] * 0x20]), (0, 0))
	image.paste(composite(god_sets, [[0xf0] * 0x20]), (0, 0x12 * 8))
	image.paste(composite(god_sets, [[0x9a, 0x9b]]), (0x0f * 8, 0x13 * 8))	# Ladder.
	# }}}
	# Text boxes. {{{
	for addr in (0xee05, 0xeec5, 0xeee5, 0xef65):
		y, x = divmod(addr - 0xed00, 0x20)
		y -= 4
		image.paste(composite(god_sets, [[0x6c] * 0x16]), (x * 8, y * 8))
	for addr in (0xee24, 0xee3b):
		y, x = divmod(addr - 0xed00, 0x20)
		y -= 4
		image.paste(composite(god_sets, [[0x6d]] * 0xa), (x * 8, y * 8))
	for (addr, char) in ((0xee04, 0x72), (0xeee4, 0x72), (0xeec4, 0x73), (0xef64, 0x73), (0xee1b, 0x74), (0xeefb, 0x74), (0xeedb, 0x75), (0xef7b, 0x75), (0xee0b, 0x6a), (0xef74, 0)):
		y, x = divmod(addr - 0xed00, 0x20)
		y -= 4
		c = get_char(god_sets, char)
		if c is not None:
			image.paste(get_char(god_sets, char), (x * 8, y * 8))
	# }}}
	# Contents. {{{
	god_id = rom[0x954c - 0x8000 + 0x2000 * 2 + shrine_id]
	# God name.
	write_god_message(god_id + 0x18, image)
	# God image: characters god_id * 4 + 0x76, position 0xedcf
	picture = block(god_sets, god_id * 4 + 0x76)
	y, x = divmod(0xcf, 0x20)
	image.paste(picture, (x * 8, (y - 4) * 8))
	# God speech.
	offset = 0x20 if english else 0
	if shrine_id == 0x8:
		write_god_message(0x1 + offset, image)
	elif shrine_id >= 0xe:
		write_god_message(rom[0x9308 - 0x8000 + 0x2000 * 2 + shrine_id - 0xe] + offset, image)
	elif shrine_id == 1:
		# password
		options = [[0xc, 0xd], [0xf], [0x10]]
		for m in options[sub]:
			write_god_message(m + offset, image)
		write_god_message(0xc + offset, image)
		write_god_message(0xd + offset, image)
	elif shrine_id == 3:
		# death
		options = [[2, 0xd], [0], [3], [4], [0xe]]
		for m in options[sub]:
			write_god_message(m + offset, image)
	else:
		# Store
		write_god_message([5, 0x12][sub] + offset, image)
		# Items.
		p = 0x9253 + 2 * shrine_id - 0x8000 + 0x2000 * 2
		sale_ptr = struct.unpack('<H', rom[p:p + 2])[0] - 0x8000 + 0x2000 * 2
		sale = [rom[sale_ptr + x * 2:sale_ptr + (x + 1) * 2] for x in range(3)]
		pos = (0xeea9, 0xeeaf, 0xeeb5)
		for p, s in zip(pos, sale):
			price, saleitem = s
			if price != 0:
				y, x = divmod(p - 0xed00, 0x20)
				y -= 4
				if items[saleitem] is not None:
					image.paste(items[saleitem], (x * 8, y * 8 - items[saleitem].size[1]))
				image.paste(get_char(text_sets, ((price >> 4) & 0xf) + 1), (x * 8, y * 8))
				image.paste(get_char(text_sets, (price & 0xf) + 1), ((x + 1) * 8, y * 8))
	# }}}
	return image
# }}}

# Generate images. {{{
godsimgs = []
gods = {}
for shrine in range(1, 0x15):
	godsimgs.append([])
	godsimgs[-1].append(make_god_screen(shrine, True))
	godsimgs[-1].append(make_god_screen(shrine, False))
	gods[shrine] = godsimgs[-1][0]
# Generate the extra images for death and demeter. {{{
death = [godsimgs[3]]
for d in range(1, 5):
	godsimgs.append([])
	godsimgs[-1].append(make_god_screen(3, True, sub = d))
	godsimgs[-1].append(make_god_screen(3, False, sub = d))
	death.append(godsimgs[-1][0])
demeter = [godsimgs[1]]
for d in range(1, 3):
	godsimgs.append([])
	godsimgs[-1].append(make_god_screen(3, True, sub = d))
	godsimgs[-1].append(make_god_screen(3, False, sub = d))
	demeter.append(godsimgs[-1][0])
# }}}
# }}}
# }}}

# Only create files if we're not imported as a module.
if __name__ == '__main__':
	# Text. {{{
	write_strings = [ # These strings are all as literals in the code. {{{
			(0x3d71, title_text_sets), # PLAY START
			(0x3cf6, base_sets), # APHRODITE OUT
			(0x3d06, base_sets), # POPOLON OUT
			(0x3d44, base_sets), # GAME  OVER
			(0x3ecf, base_sets), # F5 CONTINUE
			(0x3d14, base_sets), # WORLD (center screen, entering)
			(0x3d1d, base_sets), # CASTLE!!
			(0x3d33, base_sets), # WORLD (top left, title)
			(0x3cae, base_sets), # Header
			(0x3d51, title_text_sets), # ©KONAMI 1978 PUSH SPACE KEY
			]
	# }}}
	# Boss passwords.
	write_strings += [(struct.unpack('<H', rom[0x13b5a + 2 * x:0x13b5a + 2 * (x + 1)])[0] - 0xb000 + 0x13000, base_sets) for x in range(10)]
	# Create files.
	im = Image.new('RGBA', (0x100, len(write_strings) * 0xa1 - 1), (0, 0xff, 0, 0xff))
	for i, s in enumerate(write_strings):
		screen = write_string_to_vram(*s)
		im.paste(screen, (0, i * 0xa1))
	im.save('/tmp/mog-passwords.png')
	# }}}

	# Create file with all characters. (excl. items) {{{
	im = Image.new('RGB', (0x100 * 9 - 1, len(all_characters) * 9 - 1))
	imd = ImageDraw.Draw(im)
	for x in range(0xff):
		imd.line(((x + 1) * 9 - 1, 0, (x + 1) * 9 - 1, im.size[1]), fill = (0, 0, 255) if (x & 0x3f) == 0x3f else (255, 0, 0) if (x & 0xf) == 0xf else (128, 128, 128))
	for y in range(len(all_characters) - 1):
		imd.line((0, (y + 1) * 9 - 1, im.size[0], (y + 1) * 9 - 1), fill = (255, 0, 0) if (y & 0xf) == 0xf else (128, 128, 128))
	for p, pat in enumerate(all_characters):
		for c, char in enumerate(pat):
			if char is None:
				continue
			im.paste(char, (c * 9, p * 9))
	im.save('/tmp/mogchars.png')
	# }}}

	# Create file with all items. {{{
	im = Image.new('RGB', (17 * 8 - 1, 17 * 6 - 1), (128, 128, 0))
	for i, it in enumerate(items):
		if it is None:
			continue
		y, x = divmod(i, 8)
		im.paste(it, (x * 17, y * 17))
	im.save('/tmp/mogitems.png')
	# }}}

	# God messages (without context) {{{
	for i in range(0x14):
		im = Image.new('RGB', (0x201, 0xa0), (0, 0, 0))
		write_god_message(i, im, (0x101, 0))
		write_god_message(i + 0x20, im)
		im.save('/tmp/msg-%02x.png' % i)
	# }}}

		# Write god screens to files. {{{
		im = Image.new('RGB', (0x201, 0xa1 * len(godsimgs) - 1), (0, 0, 0x30, 0xff))
		for k, g in enumerate(godsimgs):
			for t, i in enumerate(g):
				im.paste(i, (t * 0x101, k * 0xa1))
		im.save('/tmp/god.png')
		# }}}
