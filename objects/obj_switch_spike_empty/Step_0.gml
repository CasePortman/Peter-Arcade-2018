if global.switch_solid_block = 0
{
	sprite_index = spr_switch_spike_empty
	switched = false
}
else
{
	sprite_index = spr_switch_spike_full
	
	if switched = false
	{
		switched = true 
	}
	
	if place_meeting(x,y,obj_player)
	{room_restart()}
}



