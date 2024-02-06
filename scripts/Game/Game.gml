
function Gameover() {
	global.gameover = true
	oAria.in_control = false
}

function Pause() {
	global.pause = true
	oAria.AnimationStop()
}

function Unpause() {
	global.pause = false
	oAria.AnimationRun()
}
