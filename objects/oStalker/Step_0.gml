
if has_appeared {
	var xdist = xto - x, ydist = yto - y
	x += sign(xdist) * sp_factor * abs(xdist)
	y += sign(ydist) * sp_factor * abs(ydist)
}
