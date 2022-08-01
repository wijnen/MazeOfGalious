#!/usr/bin/python3

# Parsing sound from Maze of Galious rom
import sys

rom = open('MazeOfGalious.rom', 'rb').read()

melody_id = 0x08

base = 0x743e

def read_byte(addr):
    return rom[addr + 0xd * 0x2000 - 0x6000] & 0xff

def read_ptr(addr):
    return read_byte(addr) + (read_byte(addr + 1) << 8)

def get_channel_data_addrs(melody_id):
    return [read_ptr(base + melody_id * 6 + 2 * i) for i in range(3)]

addrs = get_channel_data_addrs(melody_id)

decode = [ 'c', 'cis', 'd', 'dis', 'e', 'f', 'fis', 'g', 'gis', 'a', 'ais', 'b', 'r' ]

repeats = {}

def parse_channel(start_addr):
    addr = start_addr
    duration_factor = 1
    octave = 0
    output = []
    noise = False
    while True:
        opcode = read_byte(addr)
        print('%04x %02x' % (addr, opcode), file = sys.stderr)
        addr += 1
        low = opcode & 0xf
        if opcode & 0xf0 == 0xf0:
            if low == 0xf:
                print('end', file = sys.stderr)
                return output
            elif low == 0xe:
                count = read_byte(addr)
                ptr = read_ptr(addr + 1)
                if addr in repeats:
                    repeats[addr] -= 1
                    count = repeats[addr]
                else:
                    repeats[addr] = count - 1
                    print('count', count, file = sys.stderr)
                if count > 0:
                    addr = ptr
                else:
                    del repeats[addr]
                    addr += 3
            else:
                # Ignored.
                addr += 1   # skip parameter.
                print('ignored %02x %02x' % (opcode, read_byte(addr - 1)), file = sys.stderr)
        elif opcode & 0xf0 == 0xe0:
            if low in (0x7, 0x9):
                noise = False
            if low < 6:
                octave = 6 - low
            elif low == 0x8:
                # Ignored.
                print('ignored %02x %02x' % (opcode, read_byte(addr)), file = sys.stderr)
                addr += 1
                noise = True
            elif low == 0xa:
                return output
            elif low == 0xc:
                # Ignored.
                print('ignored %02x' % opcode, file = sys.stderr)
                addr += 1
            elif low == 0xd:
                # call
                call_addr = read_ptr(addr)
                addr += 2
                output += parse_channel(call_addr)
            elif low == 0xe:
                return output
            else:
                # Ignored.
                print('ignored %02x' % opcode, file = sys.stderr)
        elif opcode & 0xf0 == 0xd0:
            duration_factor = opcode & 0xf
        else:
            # Normal note.
            high = opcode >> 4
            duration = (low + 1) * duration_factor
            note = decode[high]
            if noise:
                note = 'r'
            base_octave = 3
            if note == 'r':
                pass
            elif octave < base_octave:
                note += ',' * (base_octave - octave)
            else:
                note += "'" * (octave - base_octave)
            parts = [(1 << (7 - i)) for i in range(8) if duration & (1 << i)]
            if len(parts) == 1:
                output.append(note + '%d' % parts[0])
            else:
                output.append('{ ' + '~ '.join(note + '%d' % p for p in parts) + ' }')

print(r'''\version "2.22.0"
\score
{
    <<
''')
for a in addrs[0:3]:
    print(r'\new Staff {')
    print(' '.join(parse_channel(a)))
    print(r'}')
print(r'''
        >>
\midi{
        \tempo 4 = 100
    }
    \layout{}
}
''')
