switch game_part {
    case GAME_PART.BEGINNING:
		meet_noom_timer.start()
        break
    case GAME_PART.MEET_NOOM:
		// switch to previous part
		meet_noom_timer.start()
		sequence = noone
		game_part = GAME_PART.BEGINNING
        break
    case GAME_PART.CELESTIAL_JUMP:
		meet_stalker_timer.start()
        break
    case GAME_PART.INFINITE:
		// switch to previous part if failed after cutscene was triggered
		if !oStalker.has_appeared {
			meet_stalker_timer.start()
			game_part = GAME_PART.CELESTIAL_JUMP
		}
        break
}