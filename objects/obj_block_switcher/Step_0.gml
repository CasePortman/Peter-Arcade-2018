if active = false
{
	if cooldown < 30
	{cooldown += 1}
	else
	{
		active = true
		cooldown = 0
	}
	
	if image_angle < 180
	{image_angle += 10}
}