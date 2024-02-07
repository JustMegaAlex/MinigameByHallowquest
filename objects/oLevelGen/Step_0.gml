
if global.pause
	exit

if is_gen_on && !spawn_timer.update() {
	spawn_timer.time = irandom_range(spawn_time_min, spawn_time_max) * room_speed;
	spawn_timer.start()
	if (choose(true, false)) {
		var inst = instance_create_layer(
				room_width + 10,
				oGround.y - sprite_get_height(sGround),
				"Instances", oBlock)
		inst.hsp = -global.runner_speed
	} else {
		instance_create_layer(room_width + 10, oGround.y - 100, "Instances", oMoth);
	}
}
