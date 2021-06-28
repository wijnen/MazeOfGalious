#!/usr/bin/python3

import os
import sys
import numpy

bindir = os.path.abspath (os.path.dirname (sys.argv[0]))

import MoG
from tms9918a import tms9918a

import MoG
from tms9918a import tms9918a

rom = MoG.ROM (bindir + '/MazeOfGalious.rom')
vdp = tms9918a ()



pnt_base = 0x0
pct_base = 0x300
pgt_base = 0x2800

vdp.set_pattern_name_table_base_address (pnt_base)
vdp.set_pattern_color_table_base_address (pct_base)
vdp.set_pattern_generator_base_address (pgt_base)

vdp.copy_to_vram (range (256), pnt_base)
vdp.copy_to_vram (range (256), pnt_base + 256)
vdp.copy_to_vram (range (256), pnt_base + 256 + 256)

## An item consists of 4 characters. The character of any given item are 
## defined in this order:
##   0 1
##   2 3
## We can display 64 items (64 * 4 character = 256 chars) on one row of 
## a screen 2: 16 horizontal and 4 vertical.
assembled_items = numpy.arange (256).reshape (4, 16, 2, 2)
assembled_items = numpy.concatenate (assembled_items, 1)
assembled_items = numpy.concatenate (assembled_items, 1)
assembled_items = assembled_items.reshape (256)
vdp.copy_to_vram (assembled_items, pnt_base)

pct_offset = pct_base
pgt_offset = pgt_base

for item in rom.get_items ():
    pct_offset = vdp.copy_to_vram (item['pct'], pct_offset)
    pgt_offset = vdp.copy_to_vram (item['pgt'], pgt_offset)

im = vdp.draw_screen ()
filename = '/tmp/mog_all_items.png'
im.save (filename)
print ('Image saved as %s.' % filename)
