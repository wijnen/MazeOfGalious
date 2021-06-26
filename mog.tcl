proc go {room} {
	poke 0xe648 "$room"	;# down
	poke 0xe649 "$room"	;# up
	poke 0xe64a "$room"	;# left
	poke 0xe64b "$room"	;# right
}

proc edit {} {
	toggle_mog_overlay
	toggle_mog_editor
}
