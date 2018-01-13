if global.switch_door[1] = true
{
	if image_angle > 270
	{image_angle -= 10}
	
	if counter < 120
	{counter += 1}
	else
	{
		global.switch_door[1] = false
		counter = 0
	}
}
else
{
	if image_angle < 360
	{image_angle += 10}
	else
	{active = true}
	
	counter = 0
}