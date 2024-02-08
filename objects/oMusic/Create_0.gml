
if !ensure_singleton() {
	exit
}

//if audio_is_playing(mscMainA) {
//	exit
//}

// start playing the track A right away
audio_play_sound(mscMainA, 0, true)
// track B will appear after the first loop finished
track_b = audio_play_sound(mscMainB, 0, true, 0)
alarm[0] = 300
