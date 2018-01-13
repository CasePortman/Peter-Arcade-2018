if global.switch_door[1] = false
{
	if image_index > 0
	{image_index -= 0.25}
	else
	{image_index = 0}
	
	mask_index = spr_timed_door
}
else
{
	if image_index < 3
	{image_index += 0.25}
	else
	{image_index = 3}
	
	mask_index = spr_null
}