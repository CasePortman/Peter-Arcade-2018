scr_collision_hor()
scr_collision_ver()

if active = false
{
	hsp = 0
	
	if active_counter < active_counter_max
	{active_counter += 1}
	else
	{
		instance_destroy()
	}
}

if !place_meeting(x+5 * image_xscale,y+8,obj_solid)
or place_meeting(x+1 * image_xscale,y,obj_solid)
{
	if stop = false
	{
		stop = true
		hsp_prev = hsp
	}
}

if stop = true
{
	hsp = 0
	
	if stop_counter < stop_counter_max
	{stop_counter += 1}
	else
	{
		hsp = -hsp_prev
		stop_counter = 0
		stop = false
	}
}

if hsp > 0
{image_xscale = 1}
else
if hsp < 0
{image_xscale = -1}
else
{image_index = 0}

if grounded = false
{vsp += grav}