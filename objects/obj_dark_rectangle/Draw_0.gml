if alpha < 0.6
{alpha += 0.025}

draw_set_alpha(alpha)
draw_set_colour(c_black)
draw_rectangle(0,0,room_width,room_height,false)
draw_set_colour(c_white)
draw_set_alpha(1)