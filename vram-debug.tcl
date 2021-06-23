set vram_write_trace 0

debug set_watchpoint write_io 0x98 {$::vram_write_trace} print_vram_write

proc vram_pointer {} {
    expr {[debug read "VRAM pointer" 0] + 256 * [debug read "VRAM pointer" 1]}
}

proc print_vram_write {} {
    #if {[vram_pointer] == 0x3b00} { debug break }
    puts stderr [format "vram\[0x%04x\] = 0x%02x"  [vram_pointer] $::wp_last_value]
    puts stderr "scc mapping: [peek 0xf0f1] [peek 0xf0f2] [peek 0xf0f3]"
    puts stderr [showdebuggable "CPU regs"]
}
