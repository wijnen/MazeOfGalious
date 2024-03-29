#!/usr/bin/python3
# vim: set foldmethod=marker fileencoding=utf-8 :

# Imports {{{
import sys
import struct
import numpy
from PIL import Image
from PIL import ImageDraw
import read_patterns
import read_sprites
# }}}

def addr2rom(address, page): # {{{
	'Convert address and page to an address in the rom file. page may be any of the 3 pages (so 6000,4 is the same as 6000,5)'
	if page is None:
		return address
	if page == 0:
		base = address - 0x4000
		firstpage = 0
	else:
		base = address - 0x6000	# address from start of (changed) mappings.
		firstpage = ((page - 1) // 3) * 3 + 1	# First page of the set of 3.
	return base + firstpage * 0x2000
# }}}

def getptr(address, page = None): # {{{
	if page is not None:
		address = addr2rom(address, page)
	else:
		page = address >> 13
	romptr = struct.unpack('<H', rom[address:address + 2])[0]
	if romptr < 0x4000:
		return None
	if romptr < 0x6000:
		return romptr - 0x4000
	return addr2rom(romptr, page)
# }}}

# List reading helpers. {{{
def read_A(N, addr, page, length = None, parse_record = None, parse_list = None): # {{{
	'''Read a type A list from rom. If length is None, read a type A0 list.
	Return a list of bytes objects.
	If parse_record is not None, the returned elements are passed through that function.'''
	if parse_record is None:
		parse_record = lambda x: x
	if parse_list is None:
		parse_list = lambda x: x
	ptr = addr2rom(addr, page)
	ret = []
	while length is None or len(ret) < length:
		if length is None and rom[ptr] == 0:
			return parse_list(ret)
		ret.append(parse_record(rom[ptr:ptr + N]))
		ptr += N
	return parse_list(ret)
# }}}

B_size = 0
def read_B(N, addr, page, length, parse_record = None, parse_list = None): # {{{
	'''Read a type B list from rom.
	Return a list of lists of bytes objects.
	If parse_record is not None, the returned elements are passed through that function.
	If parse_list is not None, the returned lists of elements are passed through that function.
	'''
	global B_size
	if parse_record is None:
		parse_record = lambda x: x
	if parse_list is None:
		parse_list = lambda x: x
	#print('read B %x %x %x %d' % (N, addr, page or -1, length or -1))
	ptr = addr2rom(addr, page)
	start = ptr
	ret = []
	while len(ret) < length:
		current = []
		while rom[ptr] != 0:
			current.append(parse_record(rom[ptr:ptr + N]))
			ptr += N
		ret.append(parse_list(current))
		ptr += 1
	B_size += ptr - start
	return ret
# }}}

def read_W(target, N, addr, page, lengths = (), **ka): # {{{
	'''Read a type W* list from rom. If length is None, read a type WA0 list.
	Otherwise, lengths must be a list of 11 lengths. The default will be replaced by num_rooms.
	target is called to read the contents. This is usually read_A or read_B.
	this function is not meant to be called directly.
	Return a list of bytes objects.'''
	if lengths == ():
		lengths = num_rooms
	#print('read W %x %x %x %s %s' % (N, addr, page, lengths, ka))
	ptrs = [getptr(addr + 2 * i, page) for i in range(11)]
	#print('pointers: ' + ','.join('%05x' % (x or 0) for x in ptrs))
	ret = []
	for ptr, length in zip(ptrs, lengths):
		if ptr is None:
			ret.append(None)
			continue
		ret.append(target(N, ptr, None, length, **ka))
	return ret
# }}}

def read_WA(N, addr, page, lengths = (), **ka): # {{{
	'''Read a type WA list from rom. If length is None, read a type WA0 list.
	Otherwise, lengths must be a list of 11 lengths. The default will be replaced by num_rooms.
	Return a list of bytes objects.'''
	return read_W(read_A, N, addr, page, lengths, **ka)
# }}}

def read_WB(N, addr, page, lengths = (), **ka): # {{{
	'''Read a type WB list from rom.
	Otherwise, lengths must be a list of 11 lengths. The default will be replaced by num_rooms.
	Return a list of bytes objects.'''
	#print('read WB %x %x %x %s %s' % (N, addr, page, lengths, ka))
	return read_W(read_B, N, addr, page, lengths, **ka)
# }}}
# }}}

def get_room_charset(room): # {{{
	'Every room has a charset (16 options). This function reads the charset id for a given room.'
	d = rom[addr2rom(0x60d7 + (room + 1) // 2, 0xa)]
	if (room + 1) & 1:
		return d & 0xf
	else:
		return d >> 4
# }}}

def makeimage(world_num, room_num, roomdata, charset_id, extra): # {{{
	'Convert rom into image'
	im = Image.new('RGB', (32 * 8, 20 * 8))
	imt = ImageDraw.Draw(im)
	# Draw screen background (and regular walls) {{{
	for y in range(20):
		for x in range(32):
			c = read_patterns.get_char(read_patterns.sets[charset_id], roomdata[y, x])
			if roomdata[y, x] != 0x6c: # Hide walk-through walls.
				if c is not None:
					im.paste(read_patterns.get_char(read_patterns.sets[charset_id], roomdata[y, x]), (8 * x, 8 * y))
			else:
				im.paste(read_patterns.get_char(read_patterns.sets[charset_id], roomdata[y, x]), (8 * x, 8 * y), Image.new('L', (8, 8), 0xc0))
	# }}}
	# Draw boulders first, so that what's behind can be shown on top. {{{
	if extra['boulder'] is not None:
		for x, y in extra['boulder']:
			im.paste(read_patterns.boulder_img, (x, y, x + 16, y + 16))
	# }}}
	if extra['traps'] is not None: # {{{
		for x, y, traptype in extra['traps']:
			detail = (traptype >> 4) & 0xf
			traptype &= 0xf
			if traptype == 1:	# key door in castle
				trap_img = read_patterns.composite([0], [[0xc5]] * 3)
				im.paste(trap_img, (x, y))
			elif traptype == 2:	# key door in world
				trap_img = read_patterns.composite([0], [[0xc6], [0xc7], [0xc8]])
				im.paste(trap_img, (x, y))
			elif traptype == 3:	# one way push door
				if detail == 0:		# <-
					chars = [[0xda, 0x83, 0x95]] * 3
				elif detail == 1:	# ->
					chars = [[0x8f, 0x83, 0xd3]] * 3
				else:
					raise AssertionError('unrecognized detail for door')
				trap_img = read_patterns.composite([0], chars)
				im.paste(trap_img, (x - 0x8, y))
			elif traptype == 4:	# push door (blue)
				trap_img = read_patterns.composite([0], [[0xd0], [0xd1], [0xd2]])
				im.paste(trap_img, (x, y))
			elif traptype == 5:	# trap wall.
				trap_img = read_patterns.composite([0], [[0xf0]] * 3)
				t = Image.new('L', trap_img.size, 128)
				im.paste(trap_img, (x, y), t)
			elif traptype == 6:
				# Appearing stones on the water. Coordinate is not used.
				# Y is hardcoded to 0x78. X are 4 values taken from *a630 @789.
				stone = read_patterns.composite([0], [[0xc2, 0xc3]])
				for i in range(4):
					x = rom[addr2rom(0xa630 + i, 7)]
					im.paste(stone, (x, 0x78 - 0x20), Image.new('L', stone.size, 128))
			elif traptype == 7:	# destructible wall
				trap_img = read_patterns.composite([0 if world_num == 0 else 1], [[0xf0] * 4] * 3)
				im.paste(Image.new('L', trap_img.size, 0), (x, y))
				t = Image.new('L', trap_img.size, 128)
				im.paste(trap_img, (x, y), t)
			else:
				imt.text((x, y), '%x' % traptype)
				print('trap? item world %x room %02x x %02x y %02x type %02x' % (world_num, room_num + 1, x, y, traptype))
	# }}}
	if extra['item'] is not None: # {{{
		item_item, item_x, item_y = extra['item']
		itemimg = read_patterns.items[item_item]
		# Special handling for items in destructible walls.
		if item_x == 0 or item_y == -20:
			print('world={:x}, room_num={:02x} item {:02x} is at bogus location ({:02x}, {:02x})'.format(world_num, room_num, item_item, item_x, item_y))
		elif extra['traps'] is not None and any((item_x & 0xe0) == x and (item_y & 0xe0) == y for x, y, traptype in extra['traps'] if (traptype & 0xf) == 7):
			t = Image.eval(itemimg.convert('L'), lambda p: 0xc0 if p == 0 else 255)
			im.paste(itemimg, (item_x, item_y, item_x + itemimg.size[0], item_y + itemimg.size[1]), t)
		elif extra['boulder'] is not None and (item_x, item_y) in extra['boulder']:
			t = Image.eval(itemimg.convert('L'), lambda p: 128 if p == 0 else 255)
			im.paste(itemimg, (item_x, item_y, item_x + itemimg.size[0], item_y + itemimg.size[1]), t)
		else:
			im.paste(itemimg, (item_x, item_y, item_x + itemimg.size[0], item_y + itemimg.size[1]))
	# }}}
	if extra['shrine'] is not None: # {{{
		shrine_id, shrine_x, shrine_y = extra['shrine']
		if extra['boulder'] is not None and (shrine_x, shrine_y) in extra['boulder']:
			t = Image.eval(read_patterns.shrine_img.convert('L'), lambda p: 128 if p == 0 else 255)
			im.paste(read_patterns.shrine_img, (shrine_x, shrine_y, shrine_x + 16, shrine_y + 16), t)
		else:
			im.paste(read_patterns.shrine_img, (shrine_x, shrine_y, shrine_x + 16, shrine_y + 16))
		imt.text((shrine_x + 5, shrine_y + 5), '%x' % shrine_id, fill = (0, 0, 255))
	# }}}
	if extra['worlddoor'] is not None: # {{{
		num, x, y = extra['worlddoor']
		im.paste(read_patterns.worlddoor_img, (x, y, x + 32, y + 24))
		imt.text((x + 13, y + 13), '%x' % num, fill = (255, 255, 255))
	# }}}
	if extra['ladder'] is not None: # {{{
		x, y, h = extra['ladder']
		limg = read_patterns.composite([0], [[0x9a, 0x9b]])
		t = Image.new('L', limg.size, 128)
		for i in range(h):
			im.paste(limg, (x, (y + i * 8) - 0x20), t)
	# }}}
	if extra['vertical_elevator'] is not None: # {{{
		e = extra['vertical_elevator']
		sprite = read_sprites.elevator
		if e['limit'] is not None:
			x, y = e['limit']
			im.paste(sprite, (x, y), sprite)
			im.paste(sprite, (x + 0x10, y), sprite)
		t = Image.new('L', sprite.size, 0x80)
		for x, y in e['path']:
			im.paste(sprite, (x, y), t)
			im.paste(sprite, (x + 0x10, y), t)
	# }}}
	if extra['horizontal_elevator'] is not None: # {{{
		x, y = extra['horizontal_elevator']
		sprite = read_sprites.elevator
		im.paste(sprite, (x[0], y), sprite)
		im.paste(sprite, (x[0] + 0x10, y), sprite)
		im.paste(sprite, (x[1], y), sprite)
		im.paste(sprite, (x[1] + 0x10, y), sprite)
	# }}}
	# Draw enemies. {{{
	unused_enemies = set(roomlist_sprites[world_num][room_num])
	if extra['enemy'] is not None:
		for e in extra['enemy']:
			fixes = {0x64: 0x2c, 0x69: 0x06}
			code = fixes.get(e[0], e[0])
			num = extra['enemy'][e]
			pos = e[1], e[2] - 32
			special = e[3]
			boss_map = {0x3a: 0x00, 0x50: 0x02, 0x32: 0x04, 0x51: 0x05, 0x5c: None, 0x04: None} # Moais and armors, and baby in boulder
			if code in boss_map:
				# This is a character enemy.
				block = boss_map[code]
				if block is None:
					if code == 4:
						# Hanging snake ("Gate"). Draw as image.
						target = read_patterns.composite([4], [[0xb5], [0x99]])
					else:
						# Baby option. Show baby in boulder.
						baby = read_sprites.bosses[0x17]
						boulder = read_sprites.bosses[0x39]
						target = baby.copy()
						target.paste(boulder, (0, 0), Image.new('L', boulder.size, 128))
				else:
					target = read_sprites.bosses[block]
				im.paste(target, pos)
			else:
				# This is a sprite enemy.
				if code not in roomlist_sprites[world_num][room_num]:
					print('warning: wrong sprite in room %d %02x? %02x(%s) not in %s' % (world_num, room_num + 1, code, enemy_names[code], ','.join('%02x(%s)' % (x, enemy_names[x]) for x in roomlist_sprites[world_num][room_num])))
				elif code in unused_enemies:
					unused_enemies.remove(code)
				if code == 0x31 and not (pos[1] & 8):
					# Gas at odd row uses a different sprite.
					sprite = read_sprites.sprite_imgs[code][7]
				else:
					sprite = read_sprites.sprites[code]
				color = Image.new('P', sprite.size, 15 if code == 0xe else edata[code]['color']) # force bat color to white for visibility.
				color.putpalette(read_patterns.palette)
				sprite.paste(color, (0, 0), sprite)
				# Debug bit 7 in the sprite type: change the color of those sprites.
				#if special:
				#	sprite.paste(Image.new('RGB', sprite.size, (0xff, 0, 0)), (0, 0), sprite)
				im.paste(sprite, pos, sprite)
				#imt.text(pos, enemy_names[code], fill = (255, 255, 255))
			if num > 1:
				imt.text((pos[0], pos[1] + 12), 'x%d' % num, fill = (255, 255, 255))
	# TODO: show unused enemies on screen as well.
	if len(unused_enemies) > 0:
		#print('Room %d:%02x unused enemies: %s' % (world_num, room_num + 1, ','.join('%02x' % e for e in unused_enemies)))
		pass
	# }}}
	if extra['fairies'] is not None:
		player_height = 2 * 8
		xy=extra['fairies']
		imt.rectangle(xy=[xy, (xy[0] + 0x0f, xy[1] - player_height)])
		
		# 'anchor' is only available for TrueType fonts :-/. 
		# Manually make it anchor "ld" (left decender).
		imt.text(xy=(xy[0], xy[1] - player_height - 8 - 3), text='Fairy')
	return im
# }}}

if __name__ == '__main__':
	# Prepare global data. {{{
	rom = open('MazeOfGalious.rom', 'rb').read()
	# Get pointers for rom to each world. First world is the castle.
	world_tile_data = [getptr(addr, 7) for addr in range(0x6ac0, 0x6ad6, 2)]
	# Compute number of rooms from address of next room. This does not work for the last world, so hardcode that value.
	num_rooms = [(world_tile_data[x + 1] - world_tile_data[x]) // 40 for x in range(len(world_tile_data) - 1)] + [6]
	print('total rooms: %x; castle rooms: %x' % (sum(num_rooms), num_rooms[0]))
	# Read charset ids for all castle rooms.
	charset_id = [get_room_charset(i) for i in range(num_rooms[0])]
	# Rooms are built from tiles of 4x4 characters. There are a total of 0xac tiles defined.
	tiles = numpy.array([[[rom[addr2rom(0x6000 + t * 0x10 + y * 4 + x, 7)] for x in range(4)] for y in range(4)] for t in range(0xac)], dtype = numpy.uint8)
	# }}}

	# Prepare roomlists. {{{
	roomlist_ba2e = []	# ?
	for r in range(num_rooms[0]):	# tyoe C(.2)
		roomlist_ba2e.append((rom[addr2rom(0xba2e + (r >> 2), 9)] >> (2 * ((r + 1) & 3))) & 0x3)
	roomlist_60ee = read_WA(1, 0x60ee + 2, 4, lengths = [None] * 10, parse_list = set, parse_record = lambda x: x[0]) + [set()]	# ?
	roomlist_60ae = read_WA(1, 0x60ae, 4, lengths = [None] * 11, parse_list = set, parse_record = lambda x: x[0])	# killall?
	B_size = 0
	roomlist_enemy = read_WB(2, 0xb5cb + 2, 6, parse_record = tuple)
	print('enemy size: %x' % (B_size + 2 * 11))
	B_size = 0
	roomlist_sprites = read_WB(1, 0x9737 + 2, 0xa, parse_record = lambda x: x[0])	# Sprites which are loaded for each screen.
	print('sprites size: %x' % (B_size + 2 * 11))
	# Enemies that enter the room later are all hardcoded.
	entering_enemies = {
			0x09: set(((0, frozenset((0x03, 0x47, 0x71, 0x72))),)), # Bouncing Rock
			0x08: set(((0, frozenset((0x90, 0x91, 0x92, 0x93))), (8, frozenset((0x0f, 0x10, 0x11, 0x12, 0x13))), (9, frozenset((0x03, 0x04, 0x05))), (10, frozenset((0x02, 0x03))),)), # Lava Flare
			0x0d: set(((0, frozenset((0x89, 0x8a, 0x8b, 0x8c))),)), # Fish
			0x21: set(((0, frozenset((0x0a, 0x11, 0x1c, 0x38, 0x49, 0x7a, 0x83, 0x84, 0x50))), (4, frozenset((0x0a, 0x0c))), (6, frozenset((0x08,))),)), # Crawler
			0x30: set(((5, frozenset((0x07, 0x08, 0x09, 0x0a))),)), # Seahorse Demon
			0x38: set(((0, frozenset((0x66, 0x5e, 0x5f))),)), # VerBlob
			0x35: set(((0, frozenset((0x2f, 0x3b))), (8, frozenset((0x02, 0x0e))),)), # Rolling Rock
			0x3e: set(((6, frozenset((0x02, 0x03, 0x04, 0x07, 0x08, 0x11, 0x12))),))} # Flocking Bird
	# }}}

	# Enemy names taken from openmsx mog overlay. {{{
	enemy_names = (None, "Gorilla", "Twinkle", "HorBlob", "Gate", "Fire Snake", "Thunder Fire", "Ring Worm",
			"Lava Flare", "Bouncing Rock", "Knight", "Water Strider", "Sparky", "Fish", "Bat", "Pacman",
			"Insect", "Hedgehog", "Rockman", "Cloud Demon", "Mudman", "Ill", "Bird Dragon", "Egg Bird", 
			"Worm", "Butterfly", "Snake's Fire", "Fireball", "1C", "1D", "Rockman Bullet", "Goblin",	# 1D is blocked by bronze shield
			"Shadow Blob", "Crawler", "Pea Shooter", "Trapwall", "Swine", "Bones", "Living Helmet", "Owl",
			"Ectoplasm", "Drifting Cloud", "Poltergeist", "Wizard", "Shoe 1", "Frost Demon", "Bamboo Shoot", "Frog Plant",
			"Seahorse Demon", "Gas", "Armor>", "Armor's Dart", "Bally", "Rolling Rock", "DingDong", "Great Butterfly",
			"VerBlob", "39", "Moai>", "Moai Head Projectile", "Trickster Ghost", "Star", "Flocking Bird", "3F",	# 3F is blocked by bronze shield
			"Cyclop's Ghost", "41", "Maner", "Gero", "44", "45", "46", "47",	# 44 and 47 are blocked by bronze shield; 41, 45, 46 by silver shield
			"Butterfly Poop", "Huge Bat", "Pea Shot", "4B", "Fuzzball", "4D", "Fairy Dust", "Fairy",	# 4A, 4B and 4D are blocked by silver shield
			"<Moai", "<Armor", "Middle Bat", "Mini Bat", "Bone", "Small Bone", "Small Fireball", "57",
			"Crab's Breath", "Seed", "5A", "Killed Item", "Spiral Ball ", "Arrow", "Coin", "Key",
			"Maner's Arm", "61", "Gero's Tongue", "63", "Shoe 2", "Breath", "66", "Protectors",	# 61 is blocked by silver shield
			"68", "Thunder Cloud", "Splash")	# 68 is blocked by gold shield
	# }}}

	# Read enemy data for all enemy types. {{{
	edata_ptr = addr2rom(0x67b6, 4)
	edata = []
	for e, name in enumerate(enemy_names):
		if name is None:
			edata.append(None)
			continue
		spritetype, spritename, spritecolor, byte3, byte4 = rom[edata_ptr + 5 * e:edata_ptr + 5 * (e + 1)]
		edata.append({'type': spritetype, 'name': spritename, 'color': spritecolor, 'byte3': byte3, 'byte4': byte4})
	# }}}

	# Make images of all rooms. {{{
	out = []

	# Keep some data about shrines to add their images to the map later.
	shrineroom = {}

	sizes = {'items': 0, 'shrines': 0, 'worlddoor': 0, 'enemies': 0, 'boulders': 0, 'ladders': 0, 'traps': 0, 'vertical_elevator': 0}
	for w, world_tiles in enumerate(world_tile_data):
		# Create all lists so they exist even without contents.
		items = {}	# key is room, value is id, x, y
		shrines = {}
		worlddoor = {}
		enemies = {}
		boulders = {}
		ladders = {}
		traps = {}
		vertical_elevator = {}
		horizontal_elevator = {}
		fairies = {}
		if w == 0: # Only in castle.
			# Find shrines {{{
			target = addr2rom(0x9dda, 2)
			start = target
			while rom[target] != 0:
				room, shrine_id, shrine_y, shrine_x = rom[target:target + 4]
				shrineroom[shrine_id] = room
				# Room-1, because this rom starts counting at 1. y-32, because the coordinate includes the screen header.
				shrines[room - 1] = [shrine_id, shrine_x, shrine_y - 32]
				target += 4
			sizes['shrines'] += (target - start) + 1
			# }}}
			# Find worlddoors {{{
			for num, target in enumerate(range(0x9990, 0x9999)):
				room = rom[addr2rom(target, 2)]
				addr = addr2rom(0x9997 + (num + 1) * 2, 2)
				y, x = rom[addr:addr + 2]
				#print('door %x %x %x %x' % (num + 1, room, x, y))
				worlddoor[room - 1] = (num + 1, x, y - 32)
			sizes['worlddoor'] += 2 * 10
			# }}}
			# Find boulders {{{
			target = addr2rom(0xb8a2, 9)
			start = target
			room = 0
			while room < num_rooms[w]:
				if rom[target] == 0:
					target += 1
					room += 1
					continue
				if room not in boulders:
					boulders[room] = []
				x = (rom[target] << 3) & 0xf8
				y = ((rom[target] & 0xe0) | 8) - 32
				boulders[room].append((x, y))
				target += 1
			sizes['boulders'] += target - start
			# }}}
			# Find vertical elevators. {{{
			for e in range(6):
				ptr = addr2rom(0xbb24 + 8 * (5 - e), 9)
				y, x, dx, dy, top_room, top_y, bottom_room, bottom_y = rom[ptr:ptr + 8]
				roomsptr = getptr(0xba80 + 2 * e, 9)
				assert top_room == rom[roomsptr]
				erooms = []
				while rom[roomsptr] != bottom_room:
					erooms.append(rom[roomsptr])
					roomsptr += 1
				# Elevator struct should be filled per room.
				vertical_elevator[top_room - 1] = {'limit': (x, top_y - 0x20), 'path': [(x, 0x98)]}
				vertical_elevator[bottom_room - 1] = {'limit': (x, bottom_y - 0x20), 'path': [(x, -0x8)]}
				for r in erooms[1:]:
					vertical_elevator[r - 1] = {'limit': None, 'path': [(x, -0x8), (x, 0x50), (x, 0x98)]}
			sizes['vertical_elevator'] += 6 * 8
			# }}}
			# Find horizontal elevators. {{{
			for e in range(0xf):
				room = rom[addr2rom(0xba53 + 3 * e, 9)]
				ptr = getptr(0xba53 + 3 * e + 1, 9)
				y = rom[ptr + 0] - 0x20
				x = (rom[ptr + 5], rom[ptr + 7])
				horizontal_elevator[room - 1] = (x, y)
			# }}}
		# Also in worlds.
		# Find disappearing ladders {{{
		for i in range(0xd):
			addr = addr2rom(0xa6eb + i * 2, 9)
			ldata = addr2rom(0xa700 + (i + 1) * 5, 9)
			lw, lr = rom[addr:addr + 2]
			if lw != w + 1:
				continue
			y, x, h, _, _ = rom[ldata:ldata + 5]
			ladders[lr - 1] = [x, y, h]
		sizes['ladders'] += 0xd * (2 + 5)
		# }}}
		# Find traps {{{
		# traps is a dict. traps[room] = [[x, y, traptype], ...]
		ptr = getptr(0xa7bc + (w + 1) * 2, 7)
		start = ptr
		#print('loop for world %x' % w)
		for traproom in range(num_rooms[w]):
			while rom[ptr] != 0:
				#print('world %x room %02x ptr %05x' % (w, traproom, ptr))
				traptype, coord = rom[ptr:ptr + 2]
				y = (coord & 0xe0) - 0x20
				x = (coord << 3) & 0xf8
				ptr += 2
				if traproom not in traps:
					traps[traproom] = []
				traps[traproom].append((x, y, traptype))
			ptr += 1
		sizes['traps'] += ptr - start
		# }}}
		# Find enemies {{{
		for room, e in enumerate(roomlist_enemy[w]):
			if len(e) == 0:
				continue
			if room not in enemies:
				enemies[room] = {}
			for t, pos in e:
				etype = t & 0x7f
				
				# 0x4E means "Fairy Dust", i.e. a Fairy can appear. Known 
				# rooms: (1 based) 0x19, 0x5B, 0x6E
				if etype == 0x4E:
					# Code at 0x8251 (page 5) says:
					# 115830   LD DE,03058h
					Y    = rom[addr2rom(0x8251 + 1, 5)]
					Xmin = rom[addr2rom(0x8251 + 2, 5)]
					
					if room == 0x6E - 1:
						# no-op
						pass
					else:
						# Code at 0x825B (page 5):
						# 115890   LD DE,09058h
						#Y = 0x58
						#Xmin = 0x90
						Y    = rom[addr2rom(0x825B + 1, 5)]
						Xmin = rom[addr2rom(0x825B + 2, 5)]
						
						if room == 0x19 - 1:
							# no-op
							pass
						else:
							# Code at 0x8262 (page 5) says:
							# 1E78   LD E,078h
							#Y = 0x78
							Y = rom[addr2rom(0x8262 + 1, 5)]
					
					# T8268h says:
					# FEF0   CP 0F0h
					X = 0xF0 - Xmin
					
					# Compensate for missing header.
					Y -= 0x20
					fairies[room] = (X, Y)
				ey = pos & 0xf8
				ex = ((pos << 5) | ((t & 0x80) >> 3)) & 0xf0
				record = (etype, ex, ey, bool(t & 0x80))
				if record not in enemies[room]:
					enemies[room][record] = 0
				enemies[room][record] += 1
				#print('enemy %s at %02x %02x in room %02x world %d' % (enemy_names[etype], ex, ey, room + 1, w))
		# }}}
		# Find items {{{
		itemptr = getptr(0xb6fc + (w + 1) * 2, 9)
		start = itemptr
		while rom[itemptr] != 0:
			# Data is: room(8-bit) x4,x3,item(6-bit) y7,y6,y5,y4,y3,x7,x6,x5
			room, xitem, yx = rom[itemptr:itemptr + 3]
			item = xitem & 0x3f
			y = yx & 0xf8
			x = ((yx & 0x7) << 5) | ((xitem & 0xc0) >> 3)
			# Weapons are half height.
			if item < 7:
				y += 8
			if x == 0 and y == 0:
				#print('Overwriting location of item {:#04x} in room {:#04x} in World {:#04x}'.format(item, room, w))
				# The actual location of this item is 
				# hidden elsewhere in the ROM.
				if item == 0x13: # Robe
					assert w == 0
					assert room == 0x30
					x = rom[addr2rom(0x9faf, 1)]
					y = rom[addr2rom(0x9fb0, 1)]
				elif item == 0x16: # Candle
					assert w == 0
					assert room == 0x4b
					x = rom[addr2rom(0x9fbc, 1)]
					y = rom[addr2rom(0x9fbd, 1)]
				elif item == 0x1b: # Vase
					assert w == 0
					assert room == 0x28
					x = rom[addr2rom(0x9fd4, 1)]
					y = rom[addr2rom(0x9fd5, 1)]
				elif item == 0x25: # Sabre
					assert w == 0
					assert room == 0x18
					x = rom[addr2rom(0xa011, 1)]
					y = rom[addr2rom(0xa012, 1)]
				elif item == 0x26: # Dagger
					assert w == 0
					assert room == 0x2b
					x = rom[addr2rom(0xa02b, 1)]
					y = rom[addr2rom(0xa02c, 1)]
				elif item == 0x0c:
					assert w >= 1
					assert w <= 9
					greatkeyptr = addr2rom(0x4bce, 0)
					location = rom[greatkeyptr + w]
					x = (location << 4) & 0xf0	# T4BB8h to T4BBCh.
					y = (location & 0xf0) - 8	# T4BB2h and T4BB4h.
			items[room - 1] = (item, x, y - 0x20)
			#print('item found @%x: world %x room %x item %x x %x y %x' % (itemptr, w, room, item, x, y))
			itemptr += 3
		sizes['items'] += itemptr - start
		# }}}
		# Create all rooms in a world. (14x20 characters per room)
		fullmap = numpy.zeros((num_rooms[w], 0x14, 0x20), dtype = numpy.uint8)
		# Read tiles in a room (8x5, so 40 bytes total).
		roomdata = numpy.array([[x for x in rom[world_tiles + 40 * room:world_tiles + 40 * (room + 1)]] for room in range(num_rooms[w])], dtype = numpy.uint8).reshape((num_rooms[w], 5, 8))
		# Unpack characters from tiles. {{{
		for y in range(5):
			for x in range(8):
				fullmap[:, y * 4:(y + 1) * 4, x * 4:(x + 1) * 4] = [tiles[roomdata[r, y, x]] for r in range(num_rooms[w])]
		# }}}
		# Convert character map to image.
		worldmap = []
		for r in range(num_rooms[w]):
			extra = {
				'item': items.get(r),
				'shrine': shrines.get(r),
				'worlddoor': worlddoor.get(r),
				'enemy': enemies.get(r),
				'boulder': boulders.get(r),
				'ladder': ladders.get(r),
				'traps': traps.get(r),
				'vertical_elevator': vertical_elevator.get(r),
				'horizontal_elevator': horizontal_elevator.get(r),
				'fairies': fairies.get(r),
			}
			#print('world %d room %x' % (w, r))
			worldmap.append(makeimage(w, r, fullmap[r], charset_id[r] if w == 0 else 7, extra))
		out.append(worldmap)
	for e in sizes:
		print('%s: %x' % (e, sizes[e]))
	# }}}

	# Link stuff together. {{{
	worldmap = []
	textmap = []
	invalid = Image.new('RGB', (256, 160), (0xc0, 0x20, 0xc0))
	# Prepare rom structure for storing all room exits.
	exits = [numpy.zeros((4, num_rooms[w]), dtype = numpy.uint8) for w in range(11)]
	# Compute bounding box.
	l = [[0, 0] for w in range(11)]
	h = [[0, 0] for w in range(11)]
	for w in range(11):
		a = getptr(0xa9f1 + 2 * w, 9)
		# Read all exits.
		for r in range(num_rooms[w]):
			raddr = a + 4 * (r + 1)
			exits[w][:, r] = struct.unpack('<BBBB', rom[raddr:raddr + 4])
		# check if values are sane.
		for r in range(num_rooms[w]):
			for e in range(4):
				target = exits[w][e, r]
				# num_rooms[w] + 1 is meeting a god; 0xff - w is world exit
				if target == 0xff or target == 0xff - w or target == num_rooms[w] + 1:
					#print 'world %d, found room %x' % (w, target)
					continue
				if not 0 < target <= num_rooms[w]:
					print('invalid exit %d=%x for room %x world %d' % (e, target, r, w))
					continue
				# World 4, room 4 has an upper exit to itself; ignore it.
				if (r + 1, w + 1, e) != (4, 4, 0) and exits[w][e ^ 1, target - 1] != r + 1:
					print("exit %d=%x for room %x world %d doesn't return (%x)" % (e, exits[w][e, r], r + 1, w + 1, exits[w][e ^ 1, exits[w][e, r] - 1]))
					continue
				#print 'exit %d room %x world %d is %x; exit %d room %x world %d is %x' % (e, r, w, target, e ^ 1, target, w, exits[w][e ^ 1, target - 1])
		# compute screen positions. Do a flood fill and compute bounding boxes along the way.
		screenpos = {1: numpy.array((0, 0))}
		queue = [list(screenpos.keys())[0]]
		done = set()
		todo = set(range(1, num_rooms[w] + 1))
		delta = numpy.array(((0, -1), (0, 1), (-1, 0), (1, 0)))
		if w == 0:
			# Screen 94 is not linked, but belongs at (1,-1). Link it there.
			screenpos[94] = numpy.array((1, -1))
			todo.remove(94)
			done.add(94)
			h[w][0] = 1
			l[w][1] = -1
		elif w == 10:
			# Screen 6 is not linked, but belongs at (5,0). Link it there.
			screenpos[6] = numpy.array((5, 0))
			todo.remove(6)
			done.add(6)
			h[w][0] = 5
		while queue != []:
			current = queue.pop(0)
			todo.remove(current)
			for e in range(4):
				target = exits[w][e, current - 1]
				if target == 0xff:
					continue
				# World 4, room 4 has an upper exit to itself; ignore it.
				if w == 3 and current == 4 and e == 0:
					assert current == target
					continue
				if target in screenpos:
					if not all(screenpos[target] == screenpos[current] + delta[e]):
						print('screen %d exists in different position (%s != %s)' % (target, str(screenpos[target]), str(screenpos[current] + delta[e])))
					continue
				# Add screen in any case.
				x, y = screenpos[current] + delta[e]
				double = [s for s in screenpos if screenpos[s][0] == x and screenpos[s][1] == y]
				if double != []:
					print('two screens in one position: %x %x' % (double[0], target))
				screenpos[target] = numpy.array([x, y])
				# Update bounding box.
				if x < l[w][0]:
					l[w][0] = x
				if x > h[w][0]:
					h[w][0] = x
				if y < l[w][1]:
					l[w][1] = y
				if y > h[w][1]:
					h[w][1] = y
				# Only add real screens to queue.
				if 0 < target <= num_rooms[w]:
					queue.append(target)
			done.add(current)
		#print('done: %d/%d, todo: %s, w,h=%d,%d' % (len(done), num_rooms[w], str(todo), h[w][0] - l[w][0], h[w][1] - l[w][1]))
	#print '\n'.join(['world %d; address: %05x num_rooms: %d' % (n, x, num_rooms[n]) for n, x in enumerate(world_tile_data)])

		# Create the world image.
		size = h[w][0] - l[w][0] + 1, h[w][1] - l[w][1] + 1
		textmap.append([['  ' for x in range(size[0])] for y in range(size[1])])
		worldmap.append(Image.new('RGBA', (size[0] * 257 - 1, size[1] * 161 - 1), (0, 0, 0, 0)))
		worldmapt = ImageDraw.Draw(worldmap[w])
		for sp in screenpos:
			tx = screenpos[sp][0] - l[w][0]
			ty = screenpos[sp][1] - l[w][1]
			# Add 1 pixel to separate screens in the image.
			x = tx * 257
			y = ty * 161
			if w > 0:
				god_room = rom[addr2rom(0x8f0a + (w - 1), 2)]
				god_id = rom[addr2rom(0x8f14 + (w - 1), 2)]
				if sp == god_room:
					# This is the god room of this world.
					worldmap[w].paste(read_patterns.gods[god_id], (x, y))
					textmap[w][ty][tx] = '[]'
					continue
			if 0 < sp <= num_rooms[w]:
				debug_charset = False	# w == 0	# Use this to debug charsets castle.
				worldmap[w].paste(out[w][sp - 1], (x, y, x + 256, y + 160))
				textmap[w][ty][tx] = '%02x' % sp
				if sp in roomlist_60ae[w]:
					# "killall"
					bg = (0xff, 0, 0)
				else:
					bg = (0, 0, 0)
				if sp in roomlist_60ee[w]:
					# ?
					fg = (0xff, 0xff, 0)
				else:
					fg = (0xff, 0xff, 0xff)
				if w == 0 and sp < num_rooms[w] and roomlist_ba2e[sp] != 0:
					if roomlist_ba2e[sp] == 1:
						border = (0xff, 0xff, 0xff)
					else:
						border = (0, 0xff, 0)
					worldmapt.rectangle((x, y, x + 17 + (15 if debug_charset else 0), y + 12), fill = border)
				worldmapt.rectangle((x, y, x + 15 + (15 if debug_charset else 0), y + 10), fill = bg)
				if debug_charset:
					worldmapt.text((x + 2, y), "%02x/%x" % (sp, charset_id[sp - 1]), fill = fg)
				else:
					worldmapt.text((x + 2, y), "%02x" % sp, fill = fg)
			elif sp >= 0xf0:
				worldmap[w].paste(read_patterns.world_screen(w), (x, y))
			else:
				print('invalid room %x %02x' % (w, sp))
				worldmap[w].paste(invalid, (x, y))
				textmap[w][ty][tx] = '++'
		if w == 0:
			# Place gods rooms in empty places next to their entrance.
			up, down, left, right = (0, -1), (0, 1), (-1, 0), (1, 0)
			godpos = [up, (0, -2), left, right, up, up, down, down, up, up, up]
			for s, shrinepos in enumerate(godpos):
				shrine_id = s + 1
				tx = screenpos[shrineroom[shrine_id]][0] - l[w][0] + shrinepos[0]
				ty = screenpos[shrineroom[shrine_id]][1] - l[w][1] + shrinepos[1]
				worldmap[w].paste(read_patterns.gods[shrine_id], (tx * 0x101, ty * 0xa1))
	# }}}

	# Create images of all room tiles. {{{
	offset = 0x10
	tile_img = []
	all_tiles_img = Image.new('RGB', (offset + 0x21 * len(read_patterns.sets) - 1, len(tiles) * 0x21 - 1), (0, 0, 0xb0))
	all_tiles_draw = ImageDraw.Draw(all_tiles_img)
	for tile_num, tile_data in enumerate(tiles):
		tile_img.append(Image.new('RGB', (0x21 * len(read_patterns.sets) - 1, 0x20), (0, 0, 0xb0)))
		for charset_num, charset in enumerate(read_patterns.sets):
			good = True
			for y in range(4):
				for x in range(4):
					#:print(tile_data, tile_data[y, x], charset)
					char = read_patterns.get_char(charset, tile_data[y, x])
					if char is not None:
						tile_img[-1].paste(char, (0x21 * charset_num + x * 8, y * 8))
					else:
						good = False
			if not good:
				tile_img[-1].paste(Image.new('RGB', (0x20, 0x20), (0xb0, 0, 0)), (0x21 * charset_num, 0))
		all_tiles_img.paste(tile_img[-1], (offset, tile_num * 0x21))
		all_tiles_draw.text((2, tile_num * 0x21 + 0x8), '%02x' % tile_num)
	all_tiles_img.save('/tmp/mogtiles.png')
	# }}}

	# Finally, output everything to image files and screen.
	for w, im in enumerate(worldmap):
		im.save('/tmp/mog-world-%02d.png' % w)
		#print('\nRooms in world %d' % w)
		#print('\n'.join([' '.join(y) for y in textmap[w]]))
