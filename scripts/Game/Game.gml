
function Gameover() {
	if (!global.gameover) {
		global.gameover = true
		audio_play_sound(sfxDefeat, 20, false);
		oAria.in_control = false
	}
}

function Pause() {
	global.pause = true
	oAria.AnimationStop()
	audio_stop_sound(sfxFootsteps)
	with (oMoth) {
		image_speed = 0;	
	}
}

function Unpause() {
	if !oAria.down_free {
		audio_play_sound(sfxFootsteps, 15, true)
	}
	global.pause = false
	oAria.AnimationRun()
	with (oMoth) {
		image_speed = 1;	
	}
}
