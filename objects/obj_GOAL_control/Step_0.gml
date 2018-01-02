counter += 1

if counter = 2
or counter = 18
or counter = 30
or counter = 38
or counter = 52
{
	with instance_create_depth(72 + space,64,-10000,obj_GOAL_letters)
	{
		image_index = other.letter
		depth = depth - other.letter
	}
	
	letter += 1
	space += 26
}

if counter = 82 
{
	with obj_GOAL_letters
	{
		alarm[1] = 1 + image_index * 2
	}
}


if counter = 2 + 3
or counter = 18 + 3
or counter = 30 + 3
or counter = 38 + 3
or counter = 52 + 3
{global.camera_zoom = 4} 



