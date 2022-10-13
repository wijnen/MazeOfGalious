#!/usr/bin/python3

# Parsing sound from Maze of Galious rom
import sys

rom = open('MazeOfGalious.rom', 'rb').read()

#melody_id = 0x03	## Fairy appears.
#melody_id = 0x04	## World boss beaten.
#melody_id = 0x05	## Great key picked up (castle+world).
#melody_id = 0x06	## Intro.
#melody_id = 0x07	## After hitting space to begin game (5 notes).
#melody_id = 0x08	## Main castle theme.
#melody_id = 0x0e	## From Castle to World, during black screen saying "World N !!"
melody_id = 0x15	## Game over.

base = 0x743e

sample_table_addrs =\
[
    0x661f,	## 0. May not be in use, since a lot of MoG code is 1-based.
    0x65a7,	## 1
    0x65bf,	## 2
    0x65d7,	## 3
    0x65ef,	## 4
    0x6607,	## 5
    0x661f,	## 6
]



def read_byte(addr):
    rom_addr = addr + 0xd * 0x2000 - 0x6000
    return rom[rom_addr] & 0xff

def read_ptr(addr):
    return read_byte(addr) + (read_byte(addr + 1) << 8)

def get_channel_data_addrs(melody_id):
    return [read_ptr(base + melody_id * 6 + 2 * i) for i in range(3)]

def get_compact_lilypond_note_code(note, duration):
    if note is None:
        return ''
    
    print('Duration %d' % duration, file = sys.stderr)
    shortest_note_bitshift = 5
    whole_note_duration = (1 << shortest_note_bitshift)
    #parts = [(1 << (shortest_note_bitshift - i)) for i in range(shortest_note_bitshift + 1) if duration & (1 << i)]
    parts = [(1 << (shortest_note_bitshift - i)) for i in range(shortest_note_bitshift) if duration & (1 << i)]
    
    if duration >= whole_note_duration:
        ## Lilypond has no numerical/integer postfix for long notes. 
        ## Instead of using breves, we will simply tie whole notes as 
        ## often as we need.
        duration_int = int(duration >> shortest_note_bitshift)
        extra_parts = [1 for i in range(duration_int)]
        parts.extend(extra_parts)
    
    if len(parts) == 1:
        return '{:s}{:d}'.format(note, parts[0])
    
    join_str = ' ~ '
    ## Rests cannot be tied.
    if note == 'r':
        join_str = ' '
    
    return '{ ' + join_str.join(note + '%d' % p for p in parts) + ' }'



def parse_sample(sample_table_number, sample_id):
    duration_factor = 1
    
    start_addr_p = sample_table_addrs[sample_table_number] + 2 * sample_id
    start_addr = read_ptr(start_addr_p)
    print('Sample start address: {:#04x}'.format(start_addr), file = sys.stderr)
    
    addr = start_addr
    while True:
        opcode = read_byte(addr)
        print('%04x %02x' % (addr, opcode), file = sys.stderr)
        addr += 1
        
        ## T64C3h
        if opcode == 0xff:
            ## End of sample reached.
            print('End of sample.', file = sys.stderr)
            return output
        
        ## T64CAh
        if opcode == 0xfe:
            ## Loop current sample.
            raise NotImplementedError('oops')
        
        low_nybble  = (opcode & 0x0f) >> 0
        high_nybble = (opcode & 0xf0) >> 8
        
        ## T64D1h
        if high_nybble == 0x2:
            raise NotImplementedError('oops')
            ## Set/unset noise, set/unset tone.
            opcode = read_byte(addr)
            addr += 1
            
            ## T658Fh
            if low_nybble & 0x8:
                envelope_lsb = read_byte(addr)
                addr += 1
                
                envelope_msb = read_byte(addr)
                addr += 1
                
            continue
        
        if high_nybble == 0x1:
            noise_
            volume_switch = True
             

parse_sample(6, 3)



addrs = get_channel_data_addrs(melody_id)

## The ROM contains 3 octave tables. This is the most often used octave 
## table.
decode = [
    'c',	## 0
    'cis',	## 1
    'd',	## 2
    'dis',	## 3
    'e',	## 4
    'f',	## 5
    'fis',	## 6
    'g',	## 7
    'gis',	## 8
    'a',	## 9
    'ais',	## 10
    'b',	## 11
    'r'		## 12: Special: rest
]

repeats = {}

def parse_channel(start_addr):
    addr = start_addr
    duration_factor = 1
    octave = 0
    output = []
    noise = False
    last_note = None
    last_note_duration = 0
    
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
                
                ## Write pending note.
                note_code = get_compact_lilypond_note_code(last_note, last_note_duration)
                output.append(note_code)
                last_note = False
                last_note_duration = 0
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
                ## Opcode == "CALL"
                
                ## Write pending note.
                note_code = get_compact_lilypond_note_code(last_note, last_note_duration)
                output.append(note_code)
                last_note = False
                last_note_duration = 0
                
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
            
            output.append('% {:#04x}'.format(addr - 1))
            if last_note == note:
                print('Repeated note %s' % note, file = sys.stderr)
                last_note_duration += duration
            else:
                note_code = get_compact_lilypond_note_code(last_note, last_note_duration)
                output.append(note_code)
                
                last_note = note
                last_note_duration = duration
    
    if last_note:
        note_code = get_compact_lilypond_note_code(last_note, last_note_duration)
        output.append(note_code)
    
# End of def parse_channel()

## Write the Lilypond header.
print(r'''\version "2.22.0"
#(set-default-paper-size "a3" 'landscape)
\score
{
    <<
''')

## Write out the 3 channels: A, C, B (right hand: A+C, left hand: B)
for channel_number, channel_addr in enumerate([addrs[0], addrs[2], addrs[1]]):
    print('% addr: {:#04x}'.format(channel_addr))
    print(r'\new Staff {')
    print(r'  \time 4/4')
    ## World theme has many very short notes. Let's make it easier for 
    ## Lilypond and ourself.
    #print(r'  \time 1/4')
    #print(r'  \time 2/4')
    
    ## Hack: force channel B to be the bass, for better readability.
    if channel_number == 2:
        print(r'\clef "bass"')
    
    print('\n  '.join(parse_channel(channel_addr)))
    print(r'}')

## Write the Lilypond trailer.
print(r'''
        >>
\midi{
        \tempo 4 = 400
    }
    \layout{}
}
''')
