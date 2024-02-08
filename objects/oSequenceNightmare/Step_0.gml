
frames++

switch phase {
	case 0:
		if frames > 300 {
			oAria.in_control = false
			oScreenShaker.Shake(120, 15, 0.8)
			frames = 0
			phase++
		}
		break
	case 1:
		if frames > 240 {
			oNoom.is_stalker_sequence = true	
		}
		if frames > 600 {
			oNoom.is_stalker_sequence = false
			oStalker.Appear()
			oAria.in_control = true
			oLevelGen.Start()
			instance_destroy()
		}
		break
}
