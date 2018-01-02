var i;
for (i = 0; i < (room_height * 8) / 3; i += 1)
{
	draw_set_colour(c_black)
	draw_set_alpha(0.4)
	draw_line(-10,1 + i * 2,room_width * 4,1 + i * 2)
	draw_set_colour(c_white)
	draw_set_alpha(1)
}