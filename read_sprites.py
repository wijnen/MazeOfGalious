#!/usr/bin/python3

'''In this file is code related to sprites (and also some to character enemies).
Parts that may be called when imported as a module:

- bosses[]: list of boss images. Index is 0-based (unlike in the game, I think)
- sprite_imgs[]: dict of sprite images, RGBA. keys are game enemy codes (multiples of 4).
- sprites[]: dict of merged sprite images.
'''

import read_patterns
import struct
import numpy
from PIL import Image
from PIL import ImageDraw, ImageOps

data = open('MazeOfGalious.rom', 'rb').read()

sprite_imgs = {}	# All "enemey" sprite images, indexed by enemy code. Elements are lists of RGBA images.
sprites = {}	# Same as above, but nice composits.
all_sprites = []	# All sprites that will be in the output
rows = []		# For each element of all_sprites, the sprite number or a string.

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

def make_sprite_image(sp, idx, addr, n):
	'Create image from sprite string.'
	ar = numpy.zeros((16, 16, 4), dtype = numpy.uint8)
	for y in range(16):
		for x in range(16):
			# Times 2, because every pixel is two characters.
			if sp[y][x * 2] != ' ':
				ar[y][x] = (255, 255, 255, 255)	# TODO: apply color
	im = Image.fromarray(ar, 'RGBA')
	#im.save('/tmp/mogsprite-%02x-%04x-%x.png' % (idx, addr, n))
	return im
def append_to_all(new_sprites, row, idx):
	addrs = list(new_sprites)
	addrs.sort()
	last_s = None
	for s in addrs:
		code = row
		if code is not None and code not in sprite_imgs:
			sprite_imgs[code] = []
		if last_s is None or s != last_s:
			all_sprites.append([])
			rows.append(('--' if row is None else '%02x' % row) + ' %02x' % (((s - 0x1800) // 0x20) * 4))
		for n, sp in enumerate(new_sprites[s]):
			img = make_sprite_image(sp, idx, s, n)
			if code is not None:
				sprite_imgs[code].append(img)
			all_sprites[-1].append(img)
			#print('+++ %04x +++' % s)
			#print('\n'.join(sp))
		last_s = s + 0x20 * len(new_sprites[s])

# vdp tables:
# 0000: color table (size 300*8=1800)
# 1800: sprite patterns (size: 40*20=800)
# 2000: character patterns (size: 1800)
# 3800: name table	(size: 300)
# 3b00: sprite attributes (size: 20*4=80)

# All send_vram calls:
# 4b3f: 4b4e @0, sprites 1800
# 575b: 7831 @abc, sprites 1d00
# 5791: 99a9 @def, sprites 1800
# 57be: beaf @abc, sprites 1800
# 583b: 7b34 @abc, sprites 1900
# 5923: bf16 @abf, sprites 1800
# 594a: 7849 @ab3, sprites 1e20
# 5953: 7bb2 @ab3, sprites 1f20
# 59b9: ? @?, sprites 1800 ++ (loop)

# 5af0: characters		2000 + offset
# 5b02: character colors	0000 + offset
# 5c00: characters: send 3 times the same block with offset 800
#	5e1a: 2008	9ad3 @def
#	5e23: 2058	9b24 @def
#	5e40: 2080	9ad3 @def
#	5e49: 20d0	9aa2 @def
#	5e52: 2100	9acc @def
#	5e5b: 2108	9b24 @def
#	5e75: 2160	9aa2 @def
#	5e84: 2168	9abd @def
#	5e9e: 25d0	9bec @def
# 5c10: characters: same as above, in item screen

# 9e67 @123: 9e6a @123, sprites 1f80

# All send_vram_absolute calls:
# 593e: 790b @abf	-> 1800
# 6960 @123: bcef @123?	abc?->0200

# All setup_vram_patterns calls:
# 5707: 6121		mirror 6128	Boss common patterns
# 5744: 6365		no mirror	Inventory
# 5765: 6139		mirror 6140	?
# 5781: 9a96		mirror 9a9d	?
# 57a1: 6000 and 636c	mirror 637f	?
# 57f5: 635e		premirror 6390	?
# 589d: 6175+(*e61b)*7	mirror 621a+(*e61b)*5	Boss unique patterns for boss 3: 8 parts characters, 2c parts mirror
# 59a3: 6365		no mirror	?
# 59ed: 6000		mirror 6037
# 5a02: 6044		no mirror	?
# 5a30: 6069		no mirror	?
# 5a37: 6076		no mirror	?
# 5a3e: 6083		mirror 60a8	?
# 5a4c: 6083+60c9	mirror 60a8	?
# 5a61: 60b1+60a1	mirror 60ac	?
# 5a61: 60b1		mirror 60ac	?
# 5a84: 60d0		no mirror

# Character vram patterns IX values @abc:
# 6121: boss patterns (+mirror 6128)



# Sprite addresses:
# Patterns start at 0x1800. Each pattern uses 20 bytes.

regular = (
	(0x4b4e, 0x0, 0x1800),	# password cursor
	(0x7831, 0xa, 0x1d00),	# hero and weapon selector
	(0x99a9, 0xe, 0x1800),	# title screen sword flash
	(0xbeaf, 0xc, 0x1800),	# face, hair, flags (victory), small explosion, circle?
	(0x7b34, 0xa, 0x1900),	# hero death
	(0xbf16, 0xf, 0x1800),	# hero pause
	(0x7849, 0xa, 0x1e20),	# boss appear clouds
	(0x7bb2, 0xa, 0x1f20),	# elevator, large explosion (mine)
	(0x790b + 2, 0xa, 0x1800))	# hero walk, stab, shoot, climb, weapon explosions

for addr, page, target in regular:
	pagestart = (0 if page == 0 else 1 + ((page - 1) % 3)) * 0x2000 + 0x4000
	romaddr = addr - pagestart + page * 0x2000
	#print('sprites? %04x %04x %x %05x' % (addr, target, page, romaddr))
	sprites = parse_sprites(romaddr, target)
	append_to_all(sprites, None, 0)

# Load sprites for room:
# worldpointer = 9737 (=17737) + 2 * (world + 1)
# At worldpointer, for each room there is a list of sprites (one non-0 byte each), followed by a 0.
# Skip over rooms until current is reached. (First room in list is 1.)
# A = (HL) met HL = 9848 (=17848)
# @5989: HL = 7c72 (=15c72) + 2 * A met A = monsternr ; HL = (HL)
# HL = 7d9c (=15d9c) -> a0, 8514 (=16514) == vleermuis.

# 14037: after level patterns
# 44  4a 3c

idx = 0
for romaddr in range(0x15c74, 0x15d48, 2):
	target = struct.unpack('<H', data[romaddr:romaddr + 2])[0] - 0x6000 + 10 * 0x2000
	while True:
		if data[target] == 0:
			break
		vram = 0x1800 + 8 * data[target]
		target += 1
		sprite = struct.unpack('<H', data[target:target + 2])[0] - 0x6000 + 10 * 0x2000
		target += 2
		sprites = parse_sprites(sprite, vram)
		append_to_all(sprites, (romaddr - 0x15c74) // 2 + 1, idx)
		idx += 1
w = max(len(x) for x in all_sprites)
h = len(all_sprites)
offset = 34
im = Image.new('RGB', (offset + w * 17 - 1, h * 17 - 1), (0, 0, 240))
imt = ImageDraw.Draw(im)
for y, sp in enumerate(all_sprites):
	imt.text((2, y* 17 + 4), rows[y])
	for x, s in enumerate(sp):
		im.paste(s, (offset + x * 17, y * 17, offset + x * 17 + 16, y * 17 + 16))
im.save('/tmp/mogsprites.png')
elevator = all_sprites[7][0]

# Build composits for displaying on map.
sprite_map = {
	0x01: [[1]], 0x02: [[0]], 0x03: [[2]], 0x05: [[0]], 0x06: [[7], [1]], 0x07: [[1]],
	0x08: [[6]], 0x09: [[1]], 0x0a: [[6, 7]], 0x0b: [[1]], 0x0c: [[5]], 0x0d: [[1]], 0x0e: [[3]], 0x0f: [[7]],
	0x10: [[1]], 0x11: [[3, 0]], 0x12: [[4]], 0x13: [[3]], 0x14: [[3]], 0x15: [[3, -3], [2, -2]], 0x16: [[1, 2], [3, 4]], 0x17: [[11, 8]],
	0x18: [[2]], 0x19: [[10]], 0x1f: [[2]],
	0x20: [[0]], 0x21: [[0]], 0x22: [[0]], 0x23: [[0], [1]], 0x24: [[0]], 0x25: [[4, 5]], 0x26: [[2]], 0x27: [[1]],
	0x28: [[3]], 0x29: [[0]], 0x2a: [[0]], 0x2b: [[1]], 0x2c: [[3]], 0x2d: [[1, 2]], 0x2e: [[4]], 0x2f: [[0]],
	0x30: [[3, 4]], 0x31: [[3]], 0x32: [[0]], 0x34: [[0]], 0x35: [[0]], 0x36: [[0]],
	0x38: [[0]], 0x39: [[0]], 0x3a: [[0]], 0x3c: [[1]], 0x3e: [[1]],
	0x40: [[3, 4], [5, 6]], 0x42: [[1, -1]], 0x43: [[3, -3]],
	0x49: [[5, -5]], 0x4c: [[0, 1], [2, 3]], 0x4e: [[0]], 0x4f: [[0]],
	0x54: [[5]], 0x55: [[5]],
	0x58: [[1]], 0x59: [[0]], 0x5a: [[0]],
	0x65: [[4]], 0x67: [[0]],
	0x68: [[0]]
}
assert set(sprite_imgs) == set(sprite_map)
total_h = 0
max_w = 0
for code in sprite_map:
	tiles = sprite_map[code]
	h, w = len(tiles), len(tiles[0])
	im = Image.new('RGBA', (w * 16, h * 16), (0, 0, 0, 0))
	for y, row in enumerate(tiles):
		for x, tile in enumerate(row):
			src = sprite_imgs[code][abs(tile)]
			if tile < 0:
				src = ImageOps.mirror(src)
			im.paste(src, (x * 16, y * 16))
	sprites[code] = im
	total_h += h * 16 + 1
	if w * 16 > max_w:
		max_w = w * 16
offset = 16
all_composites = Image.new('RGBA', (max_w + offset, total_h - 1))
ct = ImageDraw.Draw(all_composites)
codes = list(sprite_map)
codes.sort()
y = 0
for code in codes:
	ct.text((0, y), '%02x' % code)
	all_composites.paste(sprites[code], (offset, y))
	y += sprites[code].size[1] + 1
all_composites.save('/tmp/mog-enemy.png')

# Sprite printing
# Writing to vram happens at 54af.
# A memory table is copied as sprite attributes.
# The table is at 0xec80

# Values are taken from enemies table at e800, which has 20-byte records.
# 00: enemy type
# 01: 
# 02: bit 7: active
# 03: 
# 04: 
# 05: sprite Y + 1
# 06: 
# 07: sprite X
# 08: 
# 09: bit 7: set for sprite; clear for characters. bit 6: set for boss?
# 0a: sprite namea if ix[9].7 is set, or boss pattern if ix[9].7 is clear
# 0b: sprite color
# 0c: 
# 0d: 
# 0e: 
# 0f: 
# 10: 
# 11: 
# 12+13: screen address for characters (in 0xed00)
# 14: 
# 15: 
# 16: 
# 17: 
# 18: 
# 19: 
# 10: 
# 1a: 
# 1b: 
# 1c: 
# 1d: 
# 1e: 
# 1f: 

# Boss character graphics:
# 00: Moai>, Moai> fire, <Moai, <Moai fire
# 04: Armor>, <Armor
# 06: Boss3 <1:2, >1:2, <3, >3
# 0c: Boss 1 1:4
# 10: Boss 2 1:4
# 14: Unused, Unused, Unused
# 17: Pamperse
# 18: Boss 7 1:4
# 1c: Boss 5 body 1:2, neck 1:4, head 1:2
# 24: Boss 8 1:7
# 2b: Boss 4 1:6
# 31: Unused, Unused, Unused
# 34: Boss 9 1:3
# 37: Boss 10 1:2
# 39: Boulder
# 3a: Boss 6 1:3
# 3d

# For character sprite enemies, the size of their image is in 9d90+2*type @def, the characters are in 9e0a+2*type @def
# Generate those character blocks.
boss_charsets = [
	[0, 4], [0, 4], [0, 4], [0, 4], [0, 6], [0, 6], 3, 3,
	11, 11, 3, 11, 1, 1, 1, 1,
	2, 2, 2, 2, read_patterns.debug_set, read_patterns.debug_set, read_patterns.debug_set, [0xc],
	7, 7, 7, 7, 5, 5, 5, 5,
	5, 5, 5, 5, 8, 8, 8, 8,
	8, 8, 8, 4, 4, 4, 4, 4,
	4, read_patterns.debug_set, read_patterns.debug_set, read_patterns.debug_set, 9, 9, 9, 10,
	10, [0], 6, 6, 6]
bosses = []
for t, boss in enumerate(boss_charsets):
	w, h = data[0x1dd90 + 2 * t:0x1dd90 + 2 * (t + 1)]
	ptr = struct.unpack('<H', data[0x1de0a + 2 * t:0x1de0a + 2 * (t + 1)])[0] - 0x8000 + 0x1c000
	canvas = Image.new('RGB', (w * 8, h * 8))
	for y in range(h):
		for x in range(w):
			char = read_patterns.get_char(read_patterns.boss_sets[boss] if isinstance(boss, int) else [0] if boss is None else boss, data[ptr + w * y + x])
			if char is not None:
				canvas.paste(char, (x * 8, y * 8))
	bosses.append(canvas)
	canvas.save('/tmp/mog-enemy-%02x.png' % t)
