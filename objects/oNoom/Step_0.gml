
frames++

var xto = oAria.x + aria_relative_x + lengthdir_x(wave_raduis, frames * wave_speed_x)
var yto = oAria.y + aria_relative_y + lengthdir_y(wave_raduis, frames * wave_speed_y)

var xdist = xto - x, ydist = yto - y
x += sign(xdist) * sp_factor * abs(xdist)
y += sign(ydist) * sp_factor * abs(ydist)
