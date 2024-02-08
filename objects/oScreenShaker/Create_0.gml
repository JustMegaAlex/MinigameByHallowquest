isShaking = false;
time = 0;
magnitude = 0;
fade = 0;

function Shake(_time, _magnitude, _fade) {
	time = _time;
	magnitude = _magnitude;
	fade = _fade;
	isShaking = true;
}
