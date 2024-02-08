
if global.pause
	exit

grounded = place_meeting(x, y + 1, oGround);

if (!grounded) {
	vsp += 10

	if (place_meeting(x, y + vsp, oGround)) {
		while (!place_meeting(x, y + 1, oGround)) {
			y += 1;	
		}
		vsp = 0;
		oScreenShaker.Shake(20, 3, 0.3);
	} else {
		y += vsp;	
	}
}

x += hsp
