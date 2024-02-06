
/// main parameters
vsp_max = 15
grav = 0.6
jump_sp = -9
vsp = 0

function Move() {
	move_coord(0, vsp)
	var contact = instance_place(x, y, oGround)
	while contact {
		// relative movement
		var realtive_hsp = -contact.hsp
		var dir = point_direction(0, 0, realtive_hsp, vsp)
		// move out of an object
		while place_meeting(x, y, contact) {
	        x -= lengthdir_x(1, dir)
	        y -= lengthdir_y(1, dir)
		}
		var new_contact = instance_place(x, y, oGround)
		if !new_contact {
			return contact
		}
		contact = new_contact
	}
	return contact
}
