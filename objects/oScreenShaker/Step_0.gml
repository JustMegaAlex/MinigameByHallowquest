
if (isShaking) {
	time -= 1;
	var xShake = choose(-magnitude, magnitude);
	var yShake = choose(-magnitude, magnitude);
	camera_set_view_pos(view_camera[0], xShake, yShake);
	
	if (time <= 0) {
		magnitude -= fade;
		if (magnitude <= 0) {
			camera_set_view_pos(view_camera[0], 0, 0);
			isShaking = false;
		}
	}
}





