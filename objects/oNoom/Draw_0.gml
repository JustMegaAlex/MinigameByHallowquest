
if global.pause {
	draw_self()
	exit
}

if is_stalker_sequence {
	image_index = 3
	draw_set_font(fntSequence)
		draw_set_color(#010F15)
	if first_replica_timer-- {
		draw_text(x, y - 200, "Noom says...")
	} else {
		draw_text_transformed(x, y - 200, "RUN ARIA", 2, 2, 0)
	}
	draw_set_color(c_white)
}

draw_self()

