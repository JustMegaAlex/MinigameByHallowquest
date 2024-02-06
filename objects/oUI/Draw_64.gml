
var w = display_get_gui_width(), h = display_get_gui_height()

// pause fading
draw_set_alpha(pause_alpha)
draw_set_color(c_black)
draw_rectangle(0, 0, w, h, false)
draw_set_alpha(1)

// text
draw_set_color(#ADD8F7)
draw_set_halign(fa_middle)
draw_set_valign(fa_center)
var delta = 50
if global.pause {
	draw_set_font(fntMain)
	var xx = w * 0.5, yy = h * 0.35
	draw_text(xx, yy, "Pause")
	draw_set_font(fntSmall)
	yy += delta
	draw_text(xx, yy, "SPACE - continue")
	yy += delta
	draw_text(xx, yy, "ESC - exit")
}
if global.gameover {
	draw_set_font(fntMain)
	var xx = w * 0.5, yy = h * 0.35
	draw_text(xx, yy, "Lost")
	draw_set_font(fntSmall)
	yy += delta
	draw_text(xx, yy, "SPACE - retry")
	yy += delta
	draw_text(xx, yy, "ESC - exit")
}

draw_set_color(c_white)
