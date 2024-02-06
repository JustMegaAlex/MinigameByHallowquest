
draw_fade = global.pause or global.gameover
var max_alpha = global.gameover ? 1 : pause_alpha_max

pause_alpha += pause_fade_sp * (draw_fade ? 1 : -1)
pause_alpha = clamp(pause_alpha, 0, max_alpha)
