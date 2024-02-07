
event_inherited()

aria_relative_x = -400
sp = -global.runner_speed
create_noom_relative_x = -600
create_noom_relative_y = 0

function IsStartCondition() {
    return abs(oAria.x - (x + aria_relative_x)) < global.runner_speed
}
function OnStart() {
    oAria.x = x + aria_relative_x
    sp = 0
}
function OnFinish() {
    instance_create_layer(
        x + create_noom_relative_x,
        y + create_noom_relative_y,
        "Instances", oNoom)
	instance_destroy()
}
