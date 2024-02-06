
var key_esc = keyboard_check_pressed(vk_escape)
var key_space = keyboard_check_pressed(vk_space)

if global.pause {
	if key_space {
		global.pause = false
		oAria.AnimationRun()
	} else if key_esc {
		game_end()
	}
} else {
	layer_x("Background", layer_get_x("Background") - global.runner_speed)
	if key_esc {
		global.pause = true
		oAria.AnimationStop()
	}
}

if global.gameover {
	if key_space {
		restart = true
	} else if key_esc {
		game_end()
	}
	if restart and oUI.RestartReady() {
		room_restart()	
	}
}

// for debugging
if keyboard_check_pressed(ord("R")) {
	room_restart()
}
