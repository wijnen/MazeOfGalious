import numpy
import sys
import struct

class ROM:
    ## pointers to what? vram patterns?
    pointers = [	## SUMMARY:
        #0x14000,	## Top screen, weapons, rock.
        #0x14044,	## Grey pillar.
        #0x14069,	## Red pillar.
        #0x14076,	## Blue pillar.
        #0x14083,	## Blue stone, blue stone with shade on top.
        #0x140a1,	## Easter Island statue.
        #0x140b1,	## Blue stone, blue stone with shade on top.
        #0x140c9,	## Blue knight.
        #0x140d0,	## Red pillar and bricks covered with green.
        #0x14121,	## World 1: Jewish sign at end boss.
        #0x14139,	## Magnifying glass (showing password screen).
        #0x1416f,	## World 1: end boss.
        #0x141ac,	## ?BROKEN?
        #0x141ad,	## World 6: end boss
        #0x141b4,	## ?BROKEN?
        #0x141bb,
        #0x141bc,	## ?Several end bosses?
        #0x141cf,	## World 6: end boss (?again?)
        #0x141dc,	## ?Several end bosses?
        #0x141e3,	## ?Several end bosses?
        #0x141ea,	## ?Several end bosses?
        #0x141fd	## ?Several end bosses?
        
        #0x1435e,	## Shrines (deities, box drawings, hand).
        #0x14365,	## Popolon, baby, Aphrodite, map boxes.
        #0x1436c,	## Victory screen (castle, great)
        
        #0x1da96,	## Title screen.
    ]
    
    bw_pattern_name2address = {
        ## This will be paged to page 14 (0x1C000-0x1DFFF -> 0x8000-0x9999)
        'glyphs'	: 0x1daa2,	## copyright, hand_pointing_right_part_1, hand_pointing_right_part_2, blank, blank, blank
        'punctuation'	: 0x1dabd,	## ', *, -
        'digits'	: 0x1dad3,	## 0-9
        'letters'	: 0x1db24,	## A-Z (uppercase)
        'katakana'	: 0x1dbec,	## 54 drawings
    }
    bw_pattern_names = bw_pattern_name2address.keys ()
    
    item_pattern_index_start = 0x14e34 + 14
    item_color_index_start   = 0x14e80 + 14
    
    pattern_name2address = {
        'box drawing'		: 0x14000,
        'comma'			: 0x14000,
        'double exclamation mark'	: 0x14000,
        'exclamation mark'	: 0x14000,
        'hyphen'		: 0x14000,
        'large arrows'		: 0x14000,	## Under shattered rock.
        'large coin'		: 0x14000,	## Under shattered rock.
        'large key'		: 0x14000,	## Under shattered rock.
        'magnifying glass'	: 0x14000,
        'mine'			: 0x14000,
        'period'		: 0x14000,
        'red arrow'		: 0x14000,
        'shattering rock'	: 0x14000,
        'silver arrow'		: 0x14000,
        'small arrows'		: 0x14000,	## Array counter.
        'small coin'		: 0x14000,	## Coin counter.
        'small key'		: 0x14000,	## Key counter.
        'vitality meters'	: 0x14000,
        'weapons'		: 0x14000,
        'x'			: 0x14000,
    }
    
    sprite_pattern_index_start = 0x00b4e	## RAM: 0x4b4e
    

    def __init__ (self, rom = None):
        if rom is None:
            raise Exception ("ROM was not specified")
        self.rom = rom
    
    def dump (self):
	print "rom=%s" % ('<none>' if (self.rom is None) else self.rom)
        self.get_contents ()
    
    
    
    ## bw = black and white
    def _get_bw_patterns (self, address):
        self.get_contents ()
        pgt = self.get_decoded_patterns_data (address)
        
        ## Color 15/0xf is white, color 0 is black.
        ## High nybble is foreground, low nybble is background.
        foreground = 15 << 4
        background =  0
        black_and_white = foreground | background
        
        pct = numpy.ones (pgt.shape, dtype = numpy.uint8) * black_and_white
        assert pgt.shape == pct.shape
        return { 'pgt' : pgt, 'pct' : pct }
    
    def get_bw_patterns (self, pattern_name):
        self.get_contents ()
        address = ROM.bw_pattern_name2address[pattern_name]
        return self._get_bw_patterns (address)
    
    
    
    def get_contents (self):
        if hasattr (self, 'contents'):
            return self.contents
        self.contents = open (self.rom).read ()
    
    def get_decoded_patterns_data (self, address):
        self.get_contents ()
        ret = []
        
        ## The patterns are encoded to save precious space. The encoding is not 
        ## hard:
        ## * If the current byte is NULL (0x00): end of this set of patterns.
        ## * If the current byte has the high bit (bit 7 / 0x80) NOT set: use the 
        ##   next byte as the pattern and use it as often as the current byte 
        ##   specifies.
        ## * Otherwise (=high is set on the current byte): the current byte is 
        ##   followed by as many patterns as the current byte dictates (while 
        ##   disregarding the high bit of course).
        while self.contents[address] != '\0':
            c = ord (self.contents[address])
            address += 1
            assert c != 0x80
            if c & 0x80:
                ret.extend ([ord (self.contents[address + n]) for n in range (c - 0x80)])
                address += c - 0x80
            else:
                ret.extend ([ord (self.contents[address])] * c)
                address += 1
        return numpy.array (ret, dtype = numpy.uint8)
    
    
    
    def get_item (self, item_no = 0):
        assert 0 <= item_no < 38
        self.get_contents ()
        
        pattern_start = ROM.item_pattern_index_start + 2 * item_no
        pat = struct.unpack ('<H', self.contents[pattern_start : pattern_start + 2])[0]
        pat += 0x14000 - 0x6000
        pattern = self.get_decoded_patterns_data (pat)
        
        colors_start = ROM.item_color_index_start + 2 * item_no
        col = struct.unpack ('<H', self.contents[colors_start : colors_start + 2])[0]
        col += 0x14000 - 0x6000
        colors = self.get_decoded_patterns_data (col)
        return { 'pgt' : pattern, 'pct' : colors }
    
    def get_items (self):
        items = []
        for item_no in range (38):
            items.append (self.get_item (item_no))
        return items
    
    def _get_pattern (self, address):
        self.get_contents ()
        ## pgt = Pattern Generator Table
        ## pct = Pattern Color Table
        junk, pgt_encoded, start, pct_encoded = \
            struct.unpack ('<BHBH', self.contents[address:address + 6])
        assert (junk & 7) == junk
        
        ## Convert from mapping to real address.
        offset = 0x14000 - 0x6000
        print start
        if address >= 0x16000:
            offset = 0x1c000 - 0x8000
        
        pgt_encoded += offset
        pct_encoded += offset
        pgt = self.get_decoded_patterns_data (pgt_encoded)
        pct = self.get_decoded_patterns_data (pct_encoded)
        print pgt.shape
        print pct.shape
        assert pgt.shape == pct.shape
        return { 'pgt' : pgt, 'pct' : pct }
    
    def get_pattern (self, name):
        address = ROM.pattern_name2address['name']
        return self._get_pattern (address)
    
    
    
    def get_room_pattern (self, room, world = 0):
        ''' This function implements the following pieces of assembly:
        ;;
        ;; {{{ Function: A = HL[A]
        ;;
        add a,l                 ;4155
        ld l,a                  ;4156
        jr nc,$+3               ;4157
        inc h                   ;4159
        ld a,(hl)               ;415a
        ret                     ;415b
        ;;
        ;; }}} Function: A = HL[A]
        ;;
        (...)
        ;;
        ;; A = *(0x60d7 + (CurrentRoomNumber / 2))
        ld a,(0e042h)           ;5a05 A = *(0xe042), i.e. A = CurrentRoomNumber
        ld b,a                  ;5a08 B = A
        or a                    ;5a09 Resets carry bit.
        rra                     ;5a0a A = carry + (A >> 1) 
        ld hl,060d7h            ;5a0b HL = 0x60d7
        call 04155h             ;5a0e A = HL[A]
        '''
        d = ord (self.contents[0x140d7 + (room + 1) / 2])
        
        ## Return the correct nybble.
        if (room + 1) & 1:
            return d & 0x0f
        else:
            return d >> 4
    
    def get_rooms (self):
        if hasattr (self, 'room'):
            return self.room
        self.get_worlds ()
        
        ## A room definition is 40 bytes long. We do not know how many 
        ## rooms there are for each world, but we do know the start of 
        ## the next world and we know that there is no excess or other 
        ## bytes between to world definition. Last world has 6 rooms.
        self.room = [(self.world[x + 1] - self.world[x]) / 40
            for x in range (len (self.world) - 1)] + [6]
        return self.room
    
    def get_sprite_vram (self):
        ret = []
        self.get_contents ()
        offset = ROM.sprite_pattern_index_start
        while self.contents[offset] != '\0':
            c = ord (self.contents[offset])
            if c == 0x80:
                ## "Set new VRAM address."
                offset += 2
                continue
            elif c > 0x80:
                ## Send nn bytes of data to VRAM.
                num = c - 0x80
                offset += 1
                for n in range (num):
                    byte = ord (self.contents[offset])
                    ret.append (byte)
            else:
                offset += 1
                byte = ord (self.contents[offset])
                for n in range (c):
                    ret.append (byte)
                offset += 1
        return ret
    
    def get_worlds (self):
        if hasattr (self, 'world'):
            return self.world
        self.get_contents ()
        
        ## The first information about the worlds, is (in ROM page 7) at 
        ## 0xeac0: 11 pointers to the worlds. (We consider the castle to 
        ## be a world.)
        ## 
        ## The content is:
        ##   0000eac0  d6 6a ce 81 fe 83 2e 86  86 88 06 8b d6 8d ce 90  |.j..............|
        ##   0000ead0  c6 93 e6 96 f6 9a                                 |......          |
        ##
        ## The mapping is:
        ##   (ROM) 0xe000-0xffff -> 0x6000-0x7ffff (memory)
        ## 
        ## The pointers are to __mapped_memory__, but we have only the 
        ## ROM here. Solution: we determine the offset to the beginning 
        ## of the mapped memory region (subtract 0x6000) and then use 
        ## this offset to get back to ROM page 7 (add 0xe000).
        ## 
        ## '<':      MSX is little-endian and we expect pointers.
        ## 'H' * 11: 11 unsigned shorts.
        raw_pointers = struct.unpack ('<' + 'H' * 11,
            self.contents[0xeac0:0xead6])
        self.world = [p - 0x6000 + 0xe000 for p in raw_pointers]
        return self.world
