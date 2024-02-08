
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
		
		var instances_below = ds_list_create();
		var count = collision_line_list(room_width, 0, room_width, room_height, oGround, false, false, instances_below, true);
		if (count > 0) {
			var closest_instance = instances_below[| 0];
			var distance_from_ground = 1440 - closest_instance.sprite_height;
			moth.y = distance_from_ground;
			moth.toYAnchor = distance_from_ground;
			moth.yAnchor = distance_from_ground;
		}
		ds_list_destroy(instances_below);
		
		show_debug_message("Set moth y to " + string(moth.y));
	}
}
