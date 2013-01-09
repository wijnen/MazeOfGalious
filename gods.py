#!/usr/bin/python
# vim: set fileencoding=utf8 :

import struct

data = open ('MazeOfGalious.rom').read ()

pointerbase = 0xb09e - 0xa000 + 0x1e000
num = 0x34

for n in range (num):
	paddr = pointerbase + n * 2
	pointer = struct.unpack ('<H', data[paddr:paddr + 2])[0] - 0xa000 + 0x1e000 + 2	# +2 to skip the coordinate
	print '%x:' % n
	while ord (data[pointer]) != 0xff:
		line = ''
		while ord (data[pointer]) not in (0xff, 0xfe):
			c = ord (data[pointer])
			if c == 0:
				line += ' '
			elif c <= 10:
				line += chr (ord ('0') + c - 1)
			elif c <= 10 + 26:
				line += chr (ord ('a') + c - 11)
			elif c == 0x26:
				line += '×'
			elif c == 0x27:
				line += '!'
			elif c == 0x29:
				line += '?'
			elif c == 0x2a:
				line += '.'
			elif c == 0x2b:
				line += ','
			elif c == 0x54:
				line += '<'	# arrows
			elif c == 0x55:
				line += '<'	# arrows
			elif c == 0x56:
				line += '$'	# coins
			elif c == 0x57:
				line += '€'	# coins
			elif c == 0x58:
				line += 'O'	# keys
			elif c == 0x59:
				line += '"'	# keys
			else:
				line += '[%02x]' % c
			pointer += 1
		print line
		if ord (data[pointer]) == 0xfe:
			pointer += 1
	print '-' * 74
