scr_outline()
draw_self()





/*
if wiggle = true
{
	if turn = 0
	{
		if angle < 0.5
		{angle += 0.1}
		else
		{turn = 1}
	}
	else
	{
		if angle > -0.5
		{angle -= 0.1}
		else
		{turn = 0}
	} 
}

y += angle
*/

if shine = true
{
	sprite_index = spr_GOAL_shine
	image_xscale = 2
	shine = false
	landed = true
}

if landed = false
{
	if image_xscale > 1
	{image_xscale -= 1}
}
else
{
	if image_xscale > 1
	{image_xscale -= 0.25}
}

image_yscale = image_xscale