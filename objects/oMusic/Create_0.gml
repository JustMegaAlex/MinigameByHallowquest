


sound_start_mainB_time = 180
var len = audio_sound_length(mscMainA)
var secs = sound_start_mainB_time / room_speed
audio_sound_loop_end(mscMainA, secs)
audio_sound_loop_end(mscMainB, secs)
audio_play_sound(mscMainA, 0, true)
audio_play_sound(mscMainB, 0, true, 0)
