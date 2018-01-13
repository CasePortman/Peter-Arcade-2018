draw_self()

if destroy = true
{
	if counter < 4
	{counter += 1}
	else
	{instance_destroy()}
	
	gpu_set_fog(1,c_white,0,0)
	draw_self()
	gpu_set_fog(0,0,0,0)
}