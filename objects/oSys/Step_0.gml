
if keyboard_check_pressed(vk_escape) {
	game_end(0)
}
 
if keyboard_check_pressed(ord("R")) {
	room_restart()
}

layer_x("Background", layer_get_x("Background") - global.runner_speed)
