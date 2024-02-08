
// kinda lame but still fast and effective
if global.pause {
	exit
}

up_free = place_empty(x, y - 1, oGround)
down_free = place_empty(x, y + 1, oGround)
right_free = place_empty(x + 1, y, oGround)
// left_free = place_empty(x - 1, y, oGround)

// if stuck in obstacle - gameover
if !(right_free || down_free || up_free) {
	Gameover()
}

var key_jump = false
if in_control {
	key_jump = keyboard_check_pressed(vk_space)
}

vsp = approach(vsp, vsp_max, grav)

if (key_jump && (!down_free || jump_count == global.aria_jumps_max)) {
	jump_count += 1;
	vsp = jump_sp
	sprite_index = sAriaJumpUp;
}

if (keyboard_check_released(vk_space) && vsp < 0) {
	vsp = 0;	
}

if ((vsp > 0 && !down_free) || (vsp < 0 && !up_free)) {
	vsp = 0;
} 

// If we're falling set to the first image of the fall animation
if (vsp > 0 && down_free) {
	sprite_index = sAriaJumpDown;
	image_index = 0;
	image_speed = 0;
}

// If we were falling and just touched ground
// Resume animation. Animation End event will do the rest.
if (!down_free && was_down_free) {
	jump_count = 0;
	image_speed = initial_image_speed;
}

if (down_free != was_down_free) {
	if (down_free) {
		audio_stop_sound(sfxFootsteps);	
	} else {
		audio_play_sound(sfxFootsteps, 15, true);
	}
	was_down_free = down_free;
}

Move()
