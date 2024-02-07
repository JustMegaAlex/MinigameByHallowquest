
function Gameover() {
	global.gameover = true
	oAria.in_control = false
}

function Pause() {
	global.pause = true
	oAria.AnimationStop()
	with (oMoth) {
		image_speed = 0;	
	}
}

function Unpause() {
	global.pause = false
	oAria.AnimationRun()
	with (oMoth) {
		image_speed = 1;	
	}
}
