if active = true
{
	active = false
	global.switch_solid_block = !global.switch_solid_block
	global.screenshake = 1.5
	
	if !instance_exists(obj_player_pause)
	{instance_create_depth(x,y,0,obj_player_pause)}

}