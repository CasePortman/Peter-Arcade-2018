if active = true
{
	flash = true
	alarm[0] = 4
	
	active = false
	global.switch_door[1] = true
	global.screenshake = 1.5
	
	if !instance_exists(obj_player_pause)
	{instance_create_depth(x,y,0,obj_player_pause)}
}

