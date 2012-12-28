#!/usr/bin/python
# vim: set fileencoding=utf-8 :

import sys
import struct
import numpy
import Image

pointers = [0x14000, 0x14044, 0x14069, 0x14076, 0x14083, 0x140a1, 0x140b1, 0x140c9, 0x140d0, 0x14121, 0x14139, 0x1435e, 0x14365, 0x1436c, 0x1da96] + [0x14175 + n * 7 for n in range (10)]
sets = [[0, 2], [0, 3], [0, 4], [0, 4, 7], [0, 6, 5], [0, 6], [0, 8], [0, 1]]
pointers2 = [0x1dad3, 0x1db24, 0x1daa2, 0x1dacc, 0x1db24, 0x1dabd, 0x1dbec]

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

data = open ('/home/shevek/msx/rom/MazeOfGalious.rom').read ()
world = struct.unpack ('<' + 'H' * 11, data[0xeac0:0xead6])
world = [x - 0x6000 + 0xe000 for x in world]
rooms = [(world[x + 1] - world[x]) / 40 for x in range (len (world) - 1)] + [6]

def build_patterns_internal (address):
	'''Build patterns from the data format that send_vram expects.
	Return an array of characters (each of which is an 8 byte array containing screen 2 data).'''
	ret = []
	while data[address] != '\0':
		c = ord (data[address])
		address += 1
		assert c != 0x80
		if c & 0x80:
			ret.extend ([ord (data[address + n]) for n in range (c - 0x80)])
			address += c - 0x80
		else:
			ret.extend ([ord (data[address])] * c)
			address += 1
	return numpy.array (ret, dtype = numpy.uint8)

def makechar (pattern, color):
	'''Create a character based on an the data from build_patterns_internal for pattern and color.'''
	ret = numpy.zeros ((8, 8), dtype = numpy.uint8)
	for line in range (8):
		colors = (color[line] & 0xf, color[line] >> 4)
		for pixel in range (8):
			ret[line, 7 - pixel] = colors[(pattern[line] >> pixel) & 1]
	return ret

def build_patterns (address):
	junk, pgt, start, ct = struct.unpack ('<BHBH', data[address:address + 6])
	assert (junk & 7) == junk
	# Convert from mapping to real address.
	offset = (0x14000 - 0x6000) if address < 0x16000 else (0x1c000 - 0x8000)
	pgt += offset
	ct += offset
	patterns = build_patterns_internal (pgt).reshape ((-1, 8))
	colors = build_patterns_internal (ct).reshape ((-1, 8))
	assert patterns.shape == colors.shape
	return start, junk, numpy.array ([makechar (patterns[i], colors[i]) for i in range (patterns.shape[0])])

def create_image (name, addr, (start, extra, chars), item = False):
	if item:
		ar = numpy.zeros ((16, 16), dtype = numpy.uint8)
		ar[0:8, 0:8] = chars[0]
		ar[0:8, 8:16] = chars[1]
		ar[8:16, 0:8] = chars[2]
		ar[8:16, 8:16] = chars[3]
	else:
		ar = numpy.zeros ((8, chars.shape[0] * 10), dtype = numpy.uint8)
		for n, c in enumerate (chars):
			ar[:, n * 10:n * 10 + 8] = c
	im = Image.fromarray (ar, 'P')
	im.putpalette (palette)
	im.save ('/tmp/charmog-%s-%04x-%02x-%d.png' % (name, addr, start, extra))

setup_vram_patterns = []
for addr in pointers:
	setup_vram_patterns += ([],)
	while data[addr] != '\0':
		setup_vram_patterns[-1] += (build_patterns (addr),)
		addr += 6

set_some_patterns = []
for addr in pointers2:
	patterns = build_patterns_internal (addr).reshape ((-1, 8))
	colors = numpy.ones (patterns.shape, dtype = numpy.uint8) * 0xf0
	set_some_patterns += (numpy.array ([makechar (patterns[i], colors[i]) for i in range (patterns.shape[0])]),)

items = {}
for idx in range (7, 0x2d):
	offset = 0x14000 - 0x6000
	addr = struct.unpack ('<H', data[0x14e34 + 2 * idx:0x14e34 + 2 * idx + 2])[0]
	addr += offset
	patterns = build_patterns_internal (addr).reshape ((-1, 8))
	addr = struct.unpack ('<H', data[0x14e80 + 2 * idx:0x14e80 + 2 * idx + 2])[0]
	addr += offset
	colors = build_patterns_internal (addr).reshape ((-1, 8))
	items[idx] = numpy.array ([makechar (patterns[i], colors[i]) for i in range (patterns.shape[0])])

def create_output ():
	for idx1, i in enumerate (setup_vram_patterns):
		for idx2, j in enumerate (i):
			create_image ('setup_vram_patterns-%d' % idx1, idx2, j)

	for idx, i in enumerate (set_some_patterns):
		create_image ('set_some_patterns', idx, (0, 0, i))

	for i in items:
		create_image ('items', i, (0, 0, items[i]), item = True)

if __name__ == '__main__':
	create_output ()

def get_char (pattern, code):
	if pattern in (2, 3) and 0xad <= code < 0xad + 7:
		mirror = True
		code -= 7
	elif pattern in (2, 3, 4, 5) and 0xf7 <= code < 0xf7 + 6:
		mirror = True
		code -= 6
	else:
		mirror = False
	for s in sets[pattern][::-1]:
		for start, junk, chars in setup_vram_patterns[s]:
			if start <= code < start + len (chars):
				if not mirror:
					return chars[code - start]
				else:
					return chars[code - start][:, ::-1]
	if (pattern, code) != (-1, 0):
		print 'not found: pattern %d, code %x' % (pattern, code)
	return numpy.zeros ((8,8), dtype = numpy.uint8)
