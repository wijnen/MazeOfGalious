#!/usr/bin/python3

from makemaps import addr2rom

rom = open('MazeOfGalious.rom', 'rb').read()

addr = addr2rom(0xae28, 0xf)

def mkchr(x):
	'Turn code into character. Each letter has 2 codes. Use lowercase for first, uppercase for second.'
	# S is 2e+2f.
	if x == 0:
		return '  '
	if x == 0x3e:
		return ','
	if x == 0x3f:
		return '.'
	if x == 0x44:
		return "'"
	if x == 0x45:
		return '"'
	A = 0x2e - (ord('s') - ord('a')) * 2
	letter, case = divmod(x - A, 2)
	if 0 <= letter < 26:
		return chr(ord('aA'[case]) + letter)
	return '%02x' % x

while rom[addr] < 0xf0:
	indent = rom[addr]
	addr += 1
	size = rom[addr]
	addr += 1
	text = rom[addr:addr + size]
	addr += size
	print('  ' * indent + ''.join(mkchr(x) for x in text))
