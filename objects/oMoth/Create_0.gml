
sprite_index = array_choose([sMothBlue, sMothPink, sMothRed, sMothTeal])

isFollowingPlayer = false;

xAnchor = x;
yAnchor = y;
toXAnchor = x;
toYAnchor = y;

xSeconds = random_range(1, 3);
ySeconds = random_range(1, 3);
amplitude = irandom_range(radius_min, radius_max);

millis = 0;