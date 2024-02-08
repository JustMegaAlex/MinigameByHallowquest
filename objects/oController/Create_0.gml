
ensure_singleton()

enum GAME_PART {
	BEGINNING,
	MEET_NOOM,
	CELESTIAL_JUMP,
	INFINITE
}

game_part = GAME_PART.BEGINNING

meet_noom_timer = make_timer(600)
meet_stalker_timer = make_timer(1400)
sequence = noone
