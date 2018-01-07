if active = false
{
	if cooldown < 30
	{cooldown += 1}
	else
	{
		active = true
		cooldown = 0
	}

}

if global.switch_solid_block = 0
{image_speed = 0.25}
else
{image_speed = -0.25}