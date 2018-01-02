if global.switch_solid_block = 0
{
	sprite_index = spr_switch_solid_block_empty
	switched = false
}
else
{
	sprite_index = spr_switch_solid_block_full
	
	if switched = false
	{
		image_xscale = 2
		switched = true 
	}
}

if image_xscale > 1
{image_xscale -= 0.25}

image_yscale = image_xscale