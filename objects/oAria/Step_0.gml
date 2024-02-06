
up_free = place_empty(x, y - 1, oGround)
down_free = place_empty(x, y + 1, oGround)
left_free = place_empty(x - 1, y, oGround)
right_free = place_empty(x + 1, y, oGround)

var key_jump = keyboard_check_pressed(vk_space)	

vsp = approach(vsp, vsp_max, grav)

if key_jump and !down_free {
	vsp = jump_sp
}

if ((vsp > 0) and !down_free) or ((vsp < 0) and !up_free) 
	vsp = 0

Move()

