

switch (game_part) {
    case GAME_PART.BEGINNING:
        if !meet_noom_timer-- {
            oLevelGen.Stop()
            sequence = instance_create_layer(
                    room_width + 300,
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
        }
        break
    case GAME_PART.CELESTIAL_JUMP:
        break
    case GAME_PART.NIGHTMARE:
        break
}
