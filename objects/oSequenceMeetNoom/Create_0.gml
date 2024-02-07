
sequence = noone
sequence_inst = noone
destroy_delay = 10

function IsSeqenceFinished() {
	var sp = layer_sequence_get_speedscale(sequence_inst)
	return layer_sequence_get_headpos(sequence_inst)
		   >= (layer_sequence_get_length(sequence_inst) - sp)
}

function IsSequenceOnFrame(frame) {
	return layer_sequence_get_headpos(sequence_inst) == frame
}

function IsPlaying() {
	return layer_sequence_get_speedscale(sequence_inst) != 0
}

function Pause() {
	layer_sequence_speedscale(sequence_inst, 0)
}

function Start() {
	layer_sequence_speedscale(sequence_inst, 1)
}
