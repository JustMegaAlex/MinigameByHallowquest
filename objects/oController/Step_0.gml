
if global.pause {
	exit
}

switch (game_part) {
    case GAME_PART.BEGINNING:
        if !meet_noom_timer.update() {
            oLevelGen.Stop()
            sequence = instance_create_layer(
                    room_width + 2000,
                    oGround.y,
                    "Instances", oSequenceMeetNoom)
            game_part = GAME_PART.MEET_NOOM
        }
        break
    case GAME_PART.MEET_NOOM:
        if !sequence.IsPlaying() && sequence.IsStartCondition() {
            sequence.Start()
			sequence.OnStart()
        } else if sequence.IsSeqenceFinished() {
            sequence.OnFinish()
            game_part = GAME_PART.CELESTIAL_JUMP
            oLevelGen.Start()
			// obtain double jump
			global.aria_jumps_max = 1
			global.difficulty = 1
        }
        break
    case GAME_PART.CELESTIAL_JUMP:
		// launch stalker cutscene
		// sequence object will do the rest of the job
		if !meet_stalker_timer.update() {
            sequence = instance_create_layer(0, 0, "Instances", oSequenceNightmare)
			game_part = GAME_PART.INFINITE
		}
        break
}
