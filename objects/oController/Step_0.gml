

switch (game_part) {
    case GAME_PART.BEGINNING:
        if !meet_noom_timer-- {
            oLevelGen.Stop()
            sequence = instance_create(
                    room_with + 300,
                    oGround.y - 300, 
                    "Instances", oSequenceMeetNoom)
            game_part = GAME_PART.MEET_NOOM
        }
        break
    case GAME_PART.MEET_NOOM:
        if !sequence.IsPlaying 
                &&  {
            sequence.Start()
        } else if sequence.IsSeqenceFinished {
            sequence.OnFinish()
            game_part = GAME_PART.CELESTIAL_JUMP
        }
        break
    case GAME_PART.CELESTIAL_JUMP:
        break
    case GAME_PART.NIGHTMARE:
        break
}

if !meet_noom_timer-- {
	
}

