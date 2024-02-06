
if !spawn_timer.update() {
	spawn_timer.start()
	var inst = instance_create_layer(
			room_width + 10,
			oGround.y - sprite_get_height(sGround),
			"Instances", oBlock)
	inst.hsp = -global.runner_speed
}
