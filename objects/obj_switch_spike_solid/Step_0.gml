if global.switch_solid_block = 1
{
	sprite_index = spr_switch_spike_empty
	switched = false
}
else
{
	sprite_index = spr_switch_spike_full
	
	if switched = false
	{
		image_xscale = 2
		switched = true 
	}
	
	if place_meeting(x,y,obj_player)
	{room_restart()}
}

if image_xscale > 1
{image_xscale -= 0.25}

image_yscale = image_xscale