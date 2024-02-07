if (global.pause) {
	exit;	
}

millis += delta_time / 1000000

if (xAnchor != toXAnchor || yAnchor != toYAnchor) {
	xAnchor = approach(xAnchor, toXAnchor, 10);
	yAnchor = approach(yAnchor, toYAnchor, 10);
} else if (isFollowingPlayer) {
	toXAnchor = oAria.x;
	toYAnchor = oAria.y;
}

if (isFollowingPlayer) {
} else {
	toXAnchor -= global.runner_speed;	
}

x = xAnchor + sin(millis * 2 * pi / xSeconds) * amplitude;
y = yAnchor + sin(millis * 2 * pi / ySeconds) * amplitude;

depth = -y;

if (!isFollowingPlayer && place_meeting(x, y, oAria)) {
	isFollowingPlayer = true;
	toXAnchor = irandom_range(oAria.bbox_left, oAria.bbox_right)
	toYAnchor = irandom_range(oAria.bbox_top, oAria.bbox_bottom - amplitude)
}