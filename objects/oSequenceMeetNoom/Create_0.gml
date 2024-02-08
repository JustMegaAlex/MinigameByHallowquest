
event_inherited()

sequence = seqMeetNoom
sequence_inst = layer_sequence_create("Instances", x, y, sequence)
aria_relative_x = 0
sp = -global.runner_speed
// numbers are taken from sequence seqMeetNoom
create_noom_relative_x = -(635 - 365)
create_noom_relative_y = -(232 + 110)

function IsStartCondition() {
    return oAria.x >= x
}
function OnStart() {
    x = oAria.x - aria_relative_x
    sp = 0
	oSys.SetBackgroundMove(false)
	oAria.in_control = false
	oAria.visible = false
	audio_stop_sound(sfxFootsteps)
	layer_sequence_headpos(sequence_inst, 1799)
}
function OnFinish() {
	oSys.SetBackgroundMove(true)
	oAria.in_control = true
	oAria.visible = true
	instance_create_layer(
		x + create_noom_relative_x,
		y + create_noom_relative_y,
		"Instances", oNoom)
	audio_play_sound(sfxFootsteps, 15, true)
	instance_destroy()
}

self.Pause()
