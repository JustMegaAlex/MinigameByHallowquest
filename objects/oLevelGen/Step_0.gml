
if global.pause
	exit

if (is_gen_on) {
	if (!spawn_timer.update()) {
		spawn_timer.time = random_range(spawn_time_min, spawn_time_max) * room_speed;
		spawn_timer.start();
	
		var inst = instance_create_layer(room_width + 100, -500, "Instances", oBlock);
		inst.hsp = -global.runner_speed;
	}
	
	if (!moth_timer.update()) {
		moth_timer.time = random_range(moth_time_min, moth_time_max) * room_speed;
		moth_timer.start();
		
		var moth = instance_create_layer(room_width + 100, 0, "Instances", oMoth);
		moth.y = 1240;
		moth.toYAnchor = 1240;
		moth.yAnchor = 1240;
	}
}
