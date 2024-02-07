
spawn_timer = make_timer(random_range(spawn_time_min, spawn_time_max) * room_speed);
spawn_timer.start();
is_gen_on = true

function Stop() {
	is_gen_on = false
}

function Start() {
	is_gen_on = true
}
