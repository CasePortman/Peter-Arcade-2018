if show_square = true
{
	draw_set_colour(c_black)
	draw_set_alpha(alpha)
	draw_rectangle(x - 16, (y - 16) , x + 16, (y + 16) , false)
	draw_set_alpha(1)
	draw_set_colour(c_white)
	
	if alpha < 2
	{alpha += 0.1}
	else
	{
		instance_destroy()
		room_goto(rm)
		global.camera_zoom = 0
		global.locked_player = false
	}
}

