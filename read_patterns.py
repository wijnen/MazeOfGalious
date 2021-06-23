#!/usr/bin/python3
# vim: set fileencoding=utf-8 :

import sys
import struct
import numpy
from PIL import Image, ImageOps, ImageDraw

data = open('MazeOfGalious.rom', 'rb').read()

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

# Sets defines which pattern data sets are used by rooms.
sets = [[0, 2], [0, 3], [0, 4], [0, 4, 7], [0, 6, 5], [0, 6], [0, 8], [0, 1]]

pattern_data_pointers += [
		(0x14121, 0x14128),	# 09: Boss symbol
		(0x14139, 0x14140),	# 0a: Boss flash?
		(0x1435e, None),	# 0b: gods	pre-mirror 0x14390?
		(0x14365, None),	# 0c: popolon, pamperse, aphrodite, world map squares
		# everything above uses setup_vram_patterns (the function in asm, not the one in this file), the rest does not (except boss sets below).
		(0x1436c, None),	# 0d: castle, great, nice (end demo)
		(0x1da96, None)]	# 0e: title image

# For other boss patterns: world code is at 0x1e05 + world (1-based): 05 01 04 02 0b 0a 03 07 08 06 09
# Map is at *(14157+2*code) 616f 61ac 61ad 61b4 61bb 61bc 61cf 61dc 61e3 61ea 61fd
# Same for mirror, at *(14202+2*code)
boss_sets = [[0, 9, 10, len(pattern_data_pointers) + w] for w in range(11)]
boss_world_codes = tuple(data[0x1e05 + 1:0x1e05 + 12])
boss_map = struct.unpack('<' + 'H' * 11, data[0x14157 + 2:0x14157 + 2 * (1 + 11)])
boss_mirror = struct.unpack('<' + 'H' * 11, data[0x14202 + 2:0x14202 + 2 * (1 + 11)])
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

text_pattern_data_pointers = [
		(0x1dad3, 0x008),	# 0-9
		(0x1db24, 0x058),	# A-Z
		(0x1dad3, 0x080),	# 0-9
		(0x1daa2, 0x0d0),	# © pointing finger
		(0x1dacc, 0x100),	# -
		(0x1db24, 0x108),	# A-Z
		(0x1daa2, 0x160),	# © pointing finger
		(0x1dabd, 0x168),	# '+-
		(0x1dbec, 0x25d)]	# kana

palette = ((0, 0, 0,
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

world = struct.unpack('<' + 'H' * 11, data[0xeac0:0xead6])
world = [x - 0x6000 + 0xe000 for x in world]
rooms = [(world[x + 1] - world[x]) / 40 for x in range(len(world) - 1)] + [6]

def decompress(address, multiple = None):
	'''Build patterns from the data format that send_vram expects.
	Return an array of characters (each of which is an 8 byte array containing screen 2 data).
	This is really just decompression.
	If multiple is given, it must be the initial address.'''
	ret = []
	mret = {multiple: [ret]}
	while data[address] != 0:
		#print('%05x: %02x' % (address, data[address]))
		c = data[address]
		address += 1
		if c == 0x80:
			assert multiple is not None
			vram = struct.unpack('<H', data[address:address + 2])[0]
			address += 2
			if vram not in mret:
				mret[vram] = []
			ret = []
			mret[vram].append(ret)
			continue
		if c & 0x80:
			ret.extend([data[address + n] for n in range(c - 0x80)])
			address += c - 0x80
		else:
			ret.extend([data[address]] * c)
			address += 1
	if multiple is not None:
		return {x: [numpy.array(mr, dtype = numpy.uint8) for mr in mret[x]] for x in mret}
	return numpy.array(ret, dtype = numpy.uint8)

def decode_screen2(pattern, color):
	'''Create a character based on an the data from decompress for pattern and color.
	This is converting screen 2-encoding to (palette) pixel data.'''
	ret = numpy.zeros((8, 8), dtype = numpy.uint8)
	for line in range(8):
		colors = (color[line] & 0xf, color[line] >> 4)
		for pixel in range(8):
			ret[line, 7 - pixel] = colors[(pattern[line] >> pixel) & 1]
	return ret

def build_patterns(address):
	'Create a character (palette pixel based) from compressed screen 2 data.'
	junk, pgt, start, ct = struct.unpack('<BHBH', data[address:address + 6])
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
		# There should only be one of each address, but use last one if there happen to be more.
		pat = patterns[k + 0x1800][0].reshape((-1, 8))
		col = colors[k][0].reshape((-1, 8))
		assert len(pat) == len(col)
		for i in range(len(col)):
			ret[k // 8 + i] = decode_screen2(pat[i], col[i])
	return ret

# Read image data for background characters.(?)
setup_vram_patterns = []
dups = []

def load_chars(addr, target):
	while data[addr] != 0:
		chars = build_patterns(addr)
		for c in chars:
			im = Image.fromarray(chars[c], 'P')
			im.putpalette(palette)
			if target[c] is None:
				target[c] = im.convert('RGB')
			else:
				dups.append(im.convert('RGB'))
		addr += 6

def apply_mirror(addr, target):
	if addr is None:
		return
	while data[addr] != 0:
		start, dest, flags, num = data[addr:addr + 4]
		for c in range(num):
			if target[start + c] is None:
				print('warning: trying to mirror uninitialized character %02x' % c)
			else:
				#assert target[dest + c] is None
				target[dest + c] = ImageOps.mirror(target[start + c])
		addr += 4

for addr, mirror in pattern_data_pointers:
	setup_vram_patterns.append([None] * 0x100)
	load_chars(addr, setup_vram_patterns[-1])
	apply_mirror(mirror, setup_vram_patterns[-1])
# Boss 3 is special.
for addr in boss3_pointers[0]:
	load_chars(addr, setup_vram_patterns[boss_sets[3][-1]])
# Boss 3 is very special: use a different charset for mirror image.
boss_sets.append([0, 9, 10, len(setup_vram_patterns)])
setup_vram_patterns.append([None] * 0x100)
for addr in boss3_pointers[0]:
	load_chars(addr, setup_vram_patterns[-1])
for addr in boss3_pointers[1]:
	apply_mirror(addr, setup_vram_patterns[-1])
# Add special charset for debugging.
debug_set = [len(setup_vram_patterns)]
setup_vram_patterns.append([None] * 0x100)
debug_color = (
	(255, 0, 0), (0, 255, 0), (0, 0, 255), (255, 255, 0),
	(255, 0, 255), (0, 255, 255), (0, 0, 0), (255, 255, 255),
	(128, 0, 0), (0, 128, 0), (0, 0, 128), (128, 128, 0),
	(128, 0, 128), (0, 128, 128), (0, 0, 0), (128, 128, 128))
for i in range(0x100):
	im = Image.new('RGB', (8, 8), debug_color[i >> 4])
	imd = ImageDraw.Draw(im)
	imd.text((0, 0), '%x' % (i & 0xf), fill = (192, 64, 32))
	setup_vram_patterns[-1][i] = im

# Read image data for text and similar "extra" characters.
for addr, start in text_pattern_data_pointers:
	start //= 8
	patterns = decompress(addr).reshape((-1, 8))
	color = numpy.ones(8, dtype = numpy.uint8) * 0xf0	# force foreground white, background transparent.
	setup_vram_patterns.append([None] * 0x100)
	for i, c in enumerate(patterns):
		assert setup_vram_patterns[-1][start + i] is None
		ar = numpy.array(decode_screen2(c, color))
		im = Image.fromarray(ar, 'P')
		im.putpalette(palette)
		setup_vram_patterns[-1][start + i] = im.convert('RGB')

# Read image data for items. Only one item is shown at a time (except in item screen). It's always in 76-7a.
items = [None] * 0x30
for idx in range(7, 0x2d):
	offset = 0x14000 - 0x6000
	addr = struct.unpack('<H', data[0x14e34 + 2 * idx:0x14e34 + 2 * idx + 2])[0]
	addr += offset
	patterns = decompress(addr).reshape((-1, 8))
	addr = struct.unpack('<H', data[0x14e80 + 2 * idx:0x14e80 + 2 * idx + 2])[0]
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

def get_char(charsets, code):
	'''Return image (array of palette indices) for given arguments.
	The charset_id can be a set (<8) or a block (see start of this file).'''
	ret = None
	for charset in charsets[::-1]:
		ret = setup_vram_patterns[charset][code]
		if ret is not None:
			return ret
	return None

def composite(charsets, src):
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

def block(charsets, first):
	return composite(charsets, [[first + y * 2 + x for x in range(2)] for y in range(2)])

# Add weapons images.
weaponchars = ((0x44, 0x45), (0x46, 0x47), (0x4e, None), (0x4f, None), (0x50, 0x51), (0x52, 0x53))
for w, c in enumerate(weaponchars):
	items[w + 1] = composite([0], [c])

# Add arrows, coins and keys. They start at 0x3b.
for i in range(3):
	items[0x2d + i] = block([0], 0x60 + i * 4)

# Create the shrine image.
shrine_img = composite([0], [[0x8d, 0x93], [0x8e, 0x94]])

# Create the worlddoor image
worlddoor_img = composite([0], [[0x5a if y == 0 or x in (0, 3) else 0x5b for x in range(4)] for y in range(3)])

# Create the boulder image
boulder_img = block([0], 0xba)

# Only create files if we're not imported as a module.
if __name__ == '__main__':
	# Create file with all characters. (excl. items)
	im = Image.new('RGB', (0x100 * 9 - 1, len(setup_vram_patterns) * 9 - 1))
	imd = ImageDraw.Draw(im)
	for x in range(0xff):
		imd.line(((x + 1) * 9 - 1, 0, (x + 1) * 9 - 1, im.size[1]), fill = (0, 0, 255) if (x & 0x3f) == 0x3f else (255, 0, 0) if (x & 0xf) == 0xf else (128, 128, 128))
	for y in range(len(setup_vram_patterns) - 1):
		imd.line((0, (y + 1) * 9 - 1, im.size[0], (y + 1) * 9 - 1), fill = (255, 0, 0) if (y & 0xf) == 0xf else (128, 128, 128))
	for p, pat in enumerate(setup_vram_patterns):
		for c, char in enumerate(pat):
			if char is None:
				continue
			im.paste(char, (c * 9, p * 9))
	im.save('/tmp/mogchars.png')

	# Create file with all items.
	im = Image.new('RGB', (17 * 8 - 1, 17 * 6 - 1), (128, 128, 0))
	for i, it in enumerate(items):
		if it is None:
			continue
		y, x = divmod(i, 8)
		im.paste(it, (x * 17, y * 17))
	im.save('/tmp/mogitems.png')
