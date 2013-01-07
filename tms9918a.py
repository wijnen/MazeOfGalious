import numpy
import Image

'''
tms9918a - The TMS9918A chip (partially) in software

This module was created for drawing rooms, items etc. of the MSX game 
'Maze of Galious', but it should by no means be limited to that game.
'''


## Sources:
## * http://bifi.msxnet.org/msxnet/tech/tms9918a.txt
## * www.cs.columbia.edu/~sedwards/papers/TMS9918.pdf

class tms9918a:
    palette_msx1 = (
          0,   0,   0,	## Transparent
          0,   0,   0,	## Black
         33, 200,  66,	## Medium green
         94, 220, 120,	## Light green
         84,  85, 237,	## Dark blue
        125, 118, 252,	## Light blue
        212,  82,  77,	## Dark red
         66, 235, 245,	## Cyan
        252,  85,  84,	## Medium red
        255, 121, 120,	## Light red
        212, 193,  84,	## Dark yellow
        230, 206, 128,	## Light yellow
         33, 176,  59,	## Dark green
        201,  91, 186,	## Magenta
        204, 204, 204,	## Gray
        255, 255, 255,	## White
    )
    
    palette_msx2 = (
          0,   0,   0,	## Transparent
          0,   0,   0,	## Black
         62, 184,  73,	## Bright green
        116, 208, 125,	## Light green
         89,  85, 224,	## Deep blue something
        128, 118, 241,	## Bright blue
        185,  94,  81,	## Deep red
        101, 219, 239,	## Light blue
        219, 101,  89,	## Bright red
        255, 137, 125,	## Light red
        204, 195,  94,	## Bright yellow
        222, 208, 135,	## Pale yellow
         58, 162,  65,	## Deep green
        183, 102, 181,	## Purple
        204, 204, 204,	## Grey
        255, 255, 255,	## White
    )
    
    operating_mode = {
        'Graphics_I_mode'	: 0b000,
        'Graphics_II_mode'	: 0b001,
        'Multicolor_Mode'	: 0b010,
        'Multicolor_mode'	: 0b010,
        'Text_mode'		: 0b100,
    }
    
    def __init__ (self):
        self.palette = tms9918a.palette_msx1
        
        ## Clear all registers.
        self.register = [0] * 9
        
        ## Clear VRAM.
        self.vram = numpy.zeros (128 * 1024, dtype = numpy.uint8)
        
        self.set_screenmode (tms9918a.operating_mode['Graphics_II_mode'])
    
    def copy_to_vram (self, data, vram_start_offset):
        '''Copy data to VRAM.'''
        length = len (data)
        self.vram[vram_start_offset : vram_start_offset + length] = data
        return vram_start_offset + length
    
    
    
    def draw_screen (self):
        screen = self.get_screen ()
        im = Image.fromarray (screen, 'P')
        im.putpalette (self.palette)
        return im
    
    
    
    def get_char (self, pattern, color):
        '''Get 8x8 character as a matrix of colors.'''
        char = numpy.zeros ((8, 8), dtype = numpy.uint8)
        for line in range (8):
            colors = (color[line] & 0x0f, color[line] >> 4)
            for pixel in range (8):
                char[line, 7 - pixel] = colors[(pattern[line] >> pixel) & 1]
        return char
    
    
    
    def _get_pattern_color_table_base_address (self):
        return self.register[3]
    
    def get_pattern_color_table_base_address (self):
        return self._get_pattern_color_table_base_address () << 6
    
    
    
    def _get_pattern_generator_table_base_address (self):
        return self.register[4]
    
    def get_pattern_generator_table_base_address (self):
        return self._get_pattern_generator_table_base_address () << 11
    
    
    
    def _get_pattern_name_table_base_address (self):
        return self.register[2]
    
    def get_pattern_name_table_base_address (self):
        return self._get_pattern_name_table_base_address () << 10
    
    
    
    def get_register (self, register_number):
        assert 0 <= register_number <= 8
        return self.register[register_number]
    def get_register0 (self):
        return self.register[0]
    def get_register1 (self):
        return self.register[1]
    def get_register2 (self):
        return self.register[2]
    def get_register3 (self):
        return self.register[3]
    def get_register4 (self):
        return self.register[4]
    def get_register5 (self):
        return self.register[5]
    def get_register6 (self):
        return self.register[6]
    def get_register7 (self):
        return self.register[7]
    def get_register8 (self):
        return self.register[8]
    
    def get_screen (self):
        '''Get screen as a matrix of colors.'''
        pnt_base = self.get_pattern_name_table_base_address ()
        pgt_base = self.get_pattern_generator_table_base_address ()
        pct_base = self.get_pattern_color_table_base_address ()
        
        print 'pnt_base=0x%05x' % pnt_base
        print 'pct_base=0x%05x' % pct_base
        print 'pgt_base=0x%05x' % pgt_base
        
        h = self.height
        w = self.width
        screen = numpy.zeros ((h * 8, w * 8), dtype = numpy.uint8)
        
        ## Draw character by character.
        for y in range (h):
            row = y / 8
            
            for x in range (w):
                name = self.vram[pnt_base + y * 32 + x]
                #print 'name/charnum=0x%02x, row=%d' % (name, row)
                
                pgt_offset = pgt_base + row * 0x800 + 8 * name
                pattern    = self.vram[pgt_offset : pgt_offset + 8]
                
                pct_offset = pct_base + row * 0x800 + 8 * name
                color      = self.vram[pct_offset : pct_offset + 8]
                
                char = self.get_char (pattern, color)
                screen[y * 8 : (y + 1) * 8, x * 8 : (x + 1) * 8] = char
        return screen
    
    
    
    def _set_color_table_base_address (self, upper_8_bits):
        self._set_pattern_color_table_base_address (upper_8_bits)
    
    def set_color_table_base_address (self, base_address):
        self.set_pattern_color_table_base_address (base_address)
    
    
    
    def _set_name_table_base_address (self, upper_4_bits):
        self._set_pattern_name_table_base_address (upper_4_bits)
    
    def set_name_table_base_address (self, base_address):
        self.set_pattern_name_table_base_addres (base_address)
    
    
    
    def set_palette (self, custom_palette):
        self.palette = custom_palette
    
    
    
    def _set_pattern_color_table_base_address (self, upper_8_bits):
        ## From www.cs.columbia.edu/~sedwards/papers/TMS9918.pdf:
        ## 
        ## Register 3 defines the base address of the Color Table 
        ## sub-block. The range of its contents is from 0 to 255. The 
        ## contents of the register form the upper 8 bits of the 14-bit 
        ## Color Table addresses; thus the Color Table base address is 
        ## equal to (Register 3) *40(hex).
        assert upper_8_bits == upper_8_bits & 255
        self.register[3] = upper_8_bits
    
    def set_pattern_color_table_base_address (self, base_address):
        assert base_address == base_address >> 6 << 6
        self._set_pattern_color_table_base_address (base_address >> 6)
    
    
    
    def _set_pattern_generator_base_address (self, upper_3_bits):
        ## From www.cs.columbia.edu/~sedwards/papers/TMS9918.pdf:
        ##
        ## Register 4 defines the base address of the Pattern, Text, or 
        ## Multicolor Generator sub-block. The range of its contents is 
        ## 0 through 7. The contents of the register form the upper 3 
        ## bits of the 14-bit Generator address; thus the Generator base 
        ## address is equal to (Register 4) *800(hex).
        assert upper_3_bits == upper_3_bits & 7
        self.register[4] = upper_3_bits
    
    def set_pattern_generator_base_address (self, base_address):
        assert base_address == base_address >> 11 << 11
        self._set_pattern_generator_base_address (base_address >> 11)
    
    
    
    def _set_pattern_name_table_base_address (self, upper_4_bits):
        ## From www.cs.columbia.edu/~sedwards/papers/TMS9918.pdf:
        ## 
        ## Register 2 defines the base address of the Name Table 
        ## sub-block. The range of its contents is from 0 to 15. The 
        ## contents of the register form the upper 4 bits of the 14-bit 
        ## Name Table addresses; thus the Name Table address is equal to 
        ## (Register 2) *400(hex).
        assert upper_4_bits == upper_4_bits & 15
        self.register[2] = upper_4_bits & 15
    
    def set_pattern_name_table_base_address (self, base_address):
        assert base_address == base_address >> 10 << 10
        self._set_pattern_name_table_base_address (base_address >> 10)
    
    
    def set_register (self, register_no, value, mask = 0xff):
        assert value == value & 0xff
        assert mask  == mask  & 0xff
        old_value = self.register[register_no]
        self.register[register_no] = (old_value & (0xff ^ mask)) | (value & mask)
    
    def set_register0 (self, value, mask = 0xff):
        self.set_register (0, value, mask)
    def set_register1 (self, value, mask = 0xff):
        self.set_register (1, value, mask)
    def set_register2 (self, value):
        self._set_pattern_name_table_base_address (value)
    def set_register3 (self, value):
        self._set_pattern_color_table_base_address (value)
    def set_register4 (self, value):
        self._set_pattern_generator_base_address (value)
    def set_register5 (self, value):
        self._set_sprite_attribute_table_base_address (value)
    def set_register6 (self, value):
        self._set_sprite_pattern_generator_base_address (value)
    
    
    
    def set_screenmode (self, M1_M2_M3):
        '''Set M1, M2, M3, i.e. the operating mode of the VDP.'''
        assert M1_M2_M3 == M1_M2_M3 & 0b111
        M1   = (M1_M2_M3 >> 2) & 1
        M2   = (M1_M2_M3 >> 1) & 1
        M3   = (M1_M2_M3 >> 0) & 1
        M1M2 = M1_M2_M3 >> 1
        self.set_register0 (M3 << 5,   0b01000000)
        self.set_register1 (M1M2 << 3, 0b00011000)

        if M1 == 0:
            if M2 == 0:
                if M3 == 1:
                    self.width  = 32
                    self.height = 24
        else:
            assert 'stub' == 'not implemented'
    
    
    def _set_sprite_attribute_table_base_address (self, upper_7_bits):
        ## From www.cs.columbia.edu/~sedwards/papers/TMS9918.pdf:
        ## 
        ## Register 5 defines the base address of the Sprite Attribute 
        ## Table sub-block. The range of its contents is from 0 through 
        ## 127. The contents of the register form the upper 7 bits of 
        ## the 14-bit Sprite Attribute Table addresses; thus the base 
        ## address is equal to (Register 5) *80(hex).
        assert upper_7_bits == upper_7_bits & 127
        self.register[5] = upper_7_bits
    
    def set_sprite_attribute_table_base_address (self, base_address):
        '''Set the base address of the sprite attribute table (sat).'''
        self._set_sprite_attribute_table_base_address (base_address >> 7)
    
    
    
    def _set_sprite_pattern_generator_base_address (self, upper_3_bits):
        ## From www.cs.columbia.edu/~sedwards/papers/TMS9918.pdf:
        ## 
        ## Register 6 defines the base address of the Sprite Pattern 
        ## Generator sub-block. The range of its contents is 0 through 
        ## 7. The contents of the register form the upper 3 bits of the 
        ## 14-bit Sprite Pattern Generator addresses; thus the Sprite 
        ## Pattern Generator base address is equal to (Register 6) 
        ## *800(hex)
        assert upper_3_bits == upper_3_bits & 7
        self.register[6] = upper_3_bits
    
    def set_sprite_pattern_generator_base_address (self, base_address):
        '''Set the base address of the sprite pattern generator table (spgt).'''
        self._set_sprite_pattern_generator_base_address (base_address >> 11)
    
    
    
    def set_pnt (self, pattern_name_table, vram_start_offset = 0):
        '''Copy a pattern name table to VRAM.'''
        self.copy_to_vram (pattern_name_table, vram_start_offset)
        self.pnt_start_offset = vram_start_offset
    
