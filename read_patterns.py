#!/usr/bin/python3
# vim: set fileencoding=utf-8 :

import sys
import struct
import numpy
from PIL import Image, ImageOps

pattern_data_pointers = [
		0x14000,	# 00: Common characters for every charset.
		0x14044,	# 01: Set 7 (world 1-10)
		0x14069,	# 02: Set 0 (red rock)
		0x14076,	# 03: Set 1 (green leaves)
		0x14083,	# 04: Set 2 (Blue stones; banners) and 3 (Blue stones)
		0x140a1,	# 05: Set 4 (Blue stones; chains)
		0x140b1,	# 06: Set 4 and 5
		0x140c9,	# 07: Set 3
		0x140d0,	# 08: Set 6 (Orange bricks)
		0x14121,	# 09: Boss symbol
		0x14139,	# 0a: Boss flash?
		0x1435e,	# 0b: gods
		0x14365,	# 0c: popolon, pamperse, aphrodite, world map squares
		0x1436c,	# 0d: castle, great, nice (end demo)
		0x1da96,	# 0e: title image
		0x1416f,	# 0f: boss 1 (bone dragon)
		0x141ac,	# 10: -
		0x141ad,	# 11: boss 6 (crab)
		0x141b4,	# 12: boss 2 (plant)
		0x141bb,	# 13: -
		0x141bc,	# 14: boss 9 (blue fire dragon)
		0x141cf,	# 15: boss 7 (lips)
		0x141dc,	# 16: boss 8 (stomper)
		0x141e3,	# 17: boss 10 (Galious)
		0x141ea,	# 18: boss 5 (white fire dragon)
		0x141fd,	# 19: boss 4 (green blob)
		0x14175,	# 1a: small part of boss 1?
		0x1417c,	# 1b: boss 3 (green platform dragon)
		0x14183,	# 1c: == 1b
		0x1418a,	# 1d: == 1b
		0x14191,	# 1e: boss 2 part?
		0x14198,	# 1f: == 1e
		0x1419f,	# 20: == 1e
		0x141a6,	# 21: flame of boss 5 or 9
		0x141ad,	# 22: more boss 6
		0x141b4]	# 23: more boss 2
# Sets defines which pattern data sets are used by each character set.
sets = [[0, 2], [0, 3], [0, 4], [0, 4, 7], [0, 6, 5], [0, 6], [0, 8], [0, 1]]
text_pattern_data_pointers = [
		0x1dad3,	# 0-9
		0x1db24,	# A-Z
		0x1daa2,	# © pointing finger
		0x1dacc,	# -
		0x1db24,	# A-Z
		0x1dabd,	# '+-
		0x1dbec]	# kana

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

data = open('MazeOfGalious.rom', 'rb').read()
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
	patterns = decompress(pgt).reshape((-1, 8))
	colors = decompress(ct).reshape((-1, 8))
	assert patterns.shape == colors.shape
	return start, junk, numpy.array([decode_screen2(patterns[i], colors[i]) for i in range(patterns.shape[0])])

def create_image(name, addr, stuff, item = False):
	'Create RGB image from numpy array of palette indices'
	start, extra, chars = stuff
	if item:
		# Make item 16x16 pixels.
		ar = numpy.zeros((16, 16), dtype = numpy.uint8)
		ar[0:8, 0:8] = chars[0]
		ar[0:8, 8:16] = chars[1]
		ar[8:16, 0:8] = chars[2]
		ar[8:16, 8:16] = chars[3]
	else:
		ar = numpy.zeros((8, chars.shape[0] * 10 - 2), dtype = numpy.uint8)
		for n, c in enumerate(chars):
			ar[:, n * 10:n * 10 + 8] = c
	im = Image.fromarray(ar, 'P')
	im.putpalette(palette)
	if name is not None:
		im.save('/tmp/charmog-%s-%04x-%02x-%d.png' % (name, addr, start, extra))
	return im

def create_item_image(idx):
	if idx not in items:
		return None
	if isinstance(items[idx], Image.Image):
		return items[idx]
	return create_image(None, None, (0, 0, items[idx]), item = True)

# Read image data for background characters.(?)
setup_vram_patterns = []
for addr in pattern_data_pointers:
	setup_vram_patterns += ([],)
	while data[addr] != 0:
		setup_vram_patterns[-1] += (build_patterns(addr),)
		addr += 6

# Read image data for text and similar "extra" characters.
setup_vram_text_patterns = []
for addr in text_pattern_data_pointers:
	patterns = decompress(addr).reshape((-1, 8))
	colors = numpy.ones(patterns.shape, dtype = numpy.uint8) * 0xf0
	setup_vram_text_patterns += (numpy.array([decode_screen2(patterns[i], colors[i]) for i in range(patterns.shape[0])]),)

# Read image data for items.
items = {}
for idx in range(7, 0x2d):
	offset = 0x14000 - 0x6000
	addr = struct.unpack('<H', data[0x14e34 + 2 * idx:0x14e34 + 2 * idx + 2])[0]
	addr += offset
	patterns = decompress(addr).reshape((-1, 8))
	addr = struct.unpack('<H', data[0x14e80 + 2 * idx:0x14e80 + 2 * idx + 2])[0]
	addr += offset
	colors = decompress(addr).reshape((-1, 8))
	items[idx] = numpy.array([decode_screen2(patterns[i], colors[i]) for i in range(patterns.shape[0])])
# Add weapons images.
default_chars = [create_image(None, None, (0, 0, p.reshape(1, 8, 8))) for p in setup_vram_patterns[0][0][2]]
default_chars1 = [create_image(None, None, (0, 0, p.reshape(1, 8, 8))) for p in setup_vram_patterns[0][1][2]]
boulder_chars = [create_image(None, None, (0, 0, p.reshape(1, 8, 8))) for p in setup_vram_patterns[0][3][2]]
weaponchars = ((0x1f, 0x20), (0x21, 0x22), (0x29, 0x28), (0x2a, 0x28), (0x2b, 0x2c), (0x2d, 0x2e))
for w, c in enumerate(weaponchars):
	im = Image.new('P', (16, 8))
	im.putpalette(palette)
	im.paste(default_chars[c[0]], (0, 0, 8, 8))
	im.paste(default_chars[c[1]], (8, 0, 16, 8))
	items[w + 1] = im
# Add arrows, coins and keys. They start at 0x3b.
for i in range(3):
	im = Image.new('P', (16, 16))
	im.putpalette(palette)
	for y in range(2):
		for x in range(2):
			im.paste(default_chars[0x3b + 4 * i + 2 * y + x], (8 * x, 8 * y, 8 * (x + 1), 8 * (y + 1)))
	items[0x2d + i] = im
# Create the shrine image.
shrine_img = Image.new('P', (16, 16))
shrine_img.putpalette(palette)
shrine_img.paste(default_chars1[0x13], (0, 0, 8, 8))
shrine_img.paste(default_chars1[0x14], (0, 8, 8, 16))
shrine_img.paste(ImageOps.mirror(default_chars1[0x13]), (8, 0, 16, 8))
shrine_img.paste(ImageOps.mirror(default_chars1[0x14]), (8, 8, 16, 16))

# Create the worlddoor image
worlddoor_img = Image.new('P', (32, 24))
worlddoor_img.putpalette(palette)
for y in range(3):
	for x in range(4):
		worlddoor_img.paste(default_chars[0x35 if y == 0 or x in (0, 3) else 0x36], (8 * x, 8 * y, 8 * (x + 1), 8 * (y + 1)))

# Create the boulder image
boulder_img = Image.new('P', (16, 16))
boulder_img.putpalette(palette)
boulder_img.paste(boulder_chars[0], (0, 0, 8, 8))
boulder_img.paste(boulder_chars[1], (8, 0, 16, 8))
boulder_img.paste(boulder_chars[2], (0, 8, 8, 16))
boulder_img.paste(boulder_chars[3], (8, 8, 16, 16))

# Write everything to files.
def create_output():
	for idx1, i in enumerate(setup_vram_patterns):
		for idx2, j in enumerate(i):
			create_image('setup_vram_patterns-%02x' % idx1, idx2, j)

	for idx, i in enumerate(setup_vram_text_patterns):
		create_image('setup_vram_text_patterns', idx, (0, 0, i))

	for i in items:
		create_image('items', i, (0, 0, items[i]), item = True)

# Only create files if we're not imported as a module.
if __name__ == '__main__':
	create_output()

def get_char(charset_id, code):
	'Return image (array of palette indices) for given arguments.'
	# Some characters are just mirror images of other characters.
	if charset_id in (2, 3) and 0xad <= code < 0xad + 7:
		mirror = True
		code -= 7
	elif charset_id in (2, 3, 4, 5) and 0xf7 <= code < 0xf7 + 6:
		mirror = True
		code -= 6
	else:
		mirror = False
	# Find charcode in the active sets.
	for s in sets[charset_id][::-1]:
		for start, junk, chars in setup_vram_patterns[s]:
			if start <= code < start + len(chars):
				if not mirror:
					return chars[code - start]
				else:
					return chars[code - start][:, ::-1]
	if (charset_id, code) != (-1, 0):
		print('not found: charset_id %d, code %x' % (charset_id, code))
	return numpy.zeros((8,8), dtype = numpy.uint8)
