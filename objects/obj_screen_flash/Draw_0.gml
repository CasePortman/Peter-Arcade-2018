draw_set_colour(colour)
draw_rectangle(0,0,room_width,room_height,false)

draw_set_colour(c_white)

if counter < time
{counter += 1}
else
{instance_destroy()}

