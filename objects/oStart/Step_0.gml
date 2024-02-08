
if keyboard_check_pressed(vk_anykey) {
	audio_play_sound(sfxClick, 10, false)
	start_pressed = true
}

if start_pressed and !text_alpha {
	room_goto_next()
}

text_alpha += fade_out_sp * (start_pressed ? -1 : 1)
text_alpha = min(1, text_alpha)
