if in = true
{
	if bob_in = false
	{
		if image_xscale < 1.25
		{image_xscale += 0.25}
		else
		{bob_in = true}
	}
	else
	{
		if image_xscale > 1
		{image_xscale -= 0.25}
	}
}
else
{
	if bob_out = false
	{
		if image_xscale < 1.25
		{image_xscale += 0.25}
		else
		{bob_out = true}
	}
	else
	{
		if image_xscale > 0
		{image_xscale -= 0.25}
		else
		{instance_destroy()}
	}
}
	

	
	
	
image_yscale = image_xscale
