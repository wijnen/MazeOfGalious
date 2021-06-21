#!/usr/bin/python3

import read_patterns
import struct
import numpy
from PIL import Image
from PIL import ImageDraw

data = open('MazeOfGalious.rom', 'rb').read()

def parse_sprites(addr, vram):
	sprite_data = read_patterns.decompress(addr, multiple = vram)
	ret = {}
	for s in sprite_data:
		for mr in sprite_data[s]:
			lines = [('0' * 7 + '{0:b}'.format(x))[-8:].replace('0', '  ').replace('1', '<>') for x in mr]
			#assert len(lines) % 32 == 0
			for t in range(len(lines) // 32):
				spr = []
				for l in range(16):
					spr.append(lines[t * 32 + l] + lines[t * 32 + l + 16])
				addr = s + t * 32
				if addr not in ret:
					ret[addr] = []
				ret[addr].append(spr)
	return ret

sprites = parse_sprites(0xbf16 - 0xa000 + 15 * 0x2000, 0x1800)	# 7 sprites; pause
addr = 0x790b - 0x6000 + 10 * 0x2000
vram = struct.unpack('<H', data[addr:addr + 2])[0]
sprites = parse_sprites(addr + 2, vram) # default sprites; heroes

sprites = parse_sprites(0x7849 - 0x6000 + 10 * 0x2000, 0x1e20) # explosie?
sprites = parse_sprites(0x7bb2 - 0x6000 + 10 * 0x2000, 0x1f20) # ?

'''
sprites = {}
addr = 0x14037
while data[addr] != 0:
	print('%x' % addr)
	vram = 0x1800 + 8 * data[addr]
	addr += 1
	sprites.update(parse_sprites(struct.unpack('<H', data[addr:addr + 2])[0] - 0x6000 + 10 * 0x2000, vram))
	addr += 2
'''

def make_sprite_image(sp, idx, addr, n):
	'Create image from sprite string.'
	ar = numpy.zeros((16, 16), dtype = numpy.uint8)
	for y in range(16):
		for x in range(16):
			# Times 2, because every pixel is two characters.
			if sp[y][x * 2] != ' ':
				ar[y][x] = 15
	im = Image.fromarray(ar, 'P')
	im.putpalette(read_patterns.palette)
	#im.save('/tmp/mogsprite-%02x-%04x-%x.png' % (idx, addr, n))
	return im

# Load sprites for room:
# worldpointer = 9737 (=17737) + 2 * (world + 1)
# At worldpointer, for each room there is a list of sprites (one non-0 byte each), followed by a 0.
# Skip over rooms until current is reached. (First room in list is 1.)
# A = (HL) met HL = 9848 (=17848)
# @5989: HL = 7c72 (=15c72) + 2 * A met A = monsternr ; HL = (HL)
# HL = 7d9c (=15d9c) -> a0, 8514 (=16514) == vleermuis.

# 14037: after level patterns
# 44  4a 3c

all_sprites = []
idx = 0
rows = []
for addr in range(0x15c74, 0x15d48, 2):
	target = struct.unpack('<H', data[addr:addr + 2])[0] - 0x6000 + 10 * 0x2000
	while True:
		if data[target] == 0:
			break
		rows.append((addr - 0x15c74) // 2 + 1)
		vram = 0x1800 + 8 * data[target]
		target += 1
		sprite = struct.unpack('<H', data[target:target + 2])[0] - 0x6000 + 10 * 0x2000
		target += 2
		sprites = parse_sprites(sprite, vram)

		addrs = list(sprites)
		addrs.sort()
		all_sprites.append([])
		for s in addrs:
			for n, sp in enumerate(sprites[s]):
				all_sprites[-1].append(make_sprite_image(sp, idx, s, n))
				print('+++ %04x +++' % s)
				print('\n'.join(sp))
		idx += 1
w = max(len(x) for x in all_sprites)
h = len(all_sprites)
im = Image.new('P', (15 + w * 17 - 1, h * 17 - 1), 4)
im.putpalette(read_patterns.palette)
imt = ImageDraw.Draw(im)
for y, sp in enumerate(all_sprites):
	imt.text((2, y* 17 + 4), '%02x' % rows[y])
	for x, s in enumerate(sp):
		im.paste(s, (15 + x * 17, y * 17, 15 + x * 17 + 16, y * 17 + 16))
im.save('/tmp/mogsprites.png')
