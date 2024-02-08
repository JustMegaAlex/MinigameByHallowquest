if (global.pause) {
	exit;	
}

millis += delta_time / 1000000

if (!isFollowingPlayer) {
	xAnchor -= global.runner_speed;
} else {
	var toXWithOffset = toXAnchor + oAria.x;
	var toYWithOffset = toYAnchor + oAria.y;
	if (xAnchor != toXWithOffset || yAnchor != toYWithOffset) {
		xAnchor = approach(xAnchor, toXWithOffset, 10);
		yAnchor = approach(yAnchor, toYWithOffset, 10);
	}
}

x = xAnchor + sin(millis * 2 * pi / xSeconds) * amplitude;
y = yAnchor + sin(millis * 2 * pi / ySeconds) * amplitude;

if (!isFollowingPlayer && place_meeting(x, y, oAria)) {
	isFollowingPlayer = true;
	toXAnchor = irandom_range(oAria.bbox_left, oAria.bbox_right) - oAria.x;
	toYAnchor = irandom_range(oAria.bbox_top, oAria.bbox_bottom - amplitude) - oAria.y;
}