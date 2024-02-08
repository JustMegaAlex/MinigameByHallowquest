
var key_esc = keyboard_check_pressed(vk_escape)
var key_space = keyboard_check_pressed(vk_space)

if global.pause {
	if key_space {
		Unpause()
	} else if key_esc {
		game_end()
	}
} else {
	var xMoveBy = -global.runner_speed * bgr_move
	
	MoveLayerXY("ForegroundPoppies", xMoveBy * fgFactor)
	MoveLayerXY("ForegroundRocks", xMoveBy * fgFactor)
	
	MoveLayerXY("BackgroundRocks", xMoveBy)
	MoveLayerXY("BackgroundFloor", xMoveBy)
	MoveLayerXY("BackgroundPoppies", xMoveBy)
	
	MoveLayerXY("BackgroundFish", xMoveBy * bgFactor)
	MoveLayerXY("BackgroundBrambles", xMoveBy * bgFactor)
	MoveLayerXY("BackgroundBooks", xMoveBy * bgFactor)
	
	MoveLayerXY("BackgroundTower", xMoveBy * bgFarFactor)
	MoveLayerXY("BackgroundFar", xMoveBy * bgFarFactor)
	
	millis += delta_time / 1000000
	var moonHareY = sin(millis * 2 * pi / 10) * 0.25 * bgr_move;
	MoveLayerXY("BackgroundMoonhare", xMoveBy * bgFarFactor, moonHareY)

	if key_esc {
		Pause()
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
//if keyboard_check_pressed(ord("R")) {
//	room_restart()
//}
