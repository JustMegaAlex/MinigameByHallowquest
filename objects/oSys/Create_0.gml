
ensure_singleton()

bgr_move = true

fgFactor = 1.25;
bgFactor = 0.1;
bgFarFactor = 0.05;

millis = 0;

sound_start_mainB_time = 180

function SetBackgroundMove(val) {
	bgr_move = val
}

function MoveLayerXY(_layer, _x, _y) {
	_x = _x ?? 0;
	_y = _y ?? 0;
	
	layer_x(_layer, layer_get_x(_layer) + _x)
	layer_y(_layer, layer_get_y(_layer) + _y)
}