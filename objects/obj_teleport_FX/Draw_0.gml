draw_sprite_ext(obj_player.sprite_index,obj_player.image_index,obj_player.x,obj_player.y,obj_player.image_xscale * xsc,ysc,0,c_black,1)

if toggle = 0
{
	if xsc < 3
	{xsc += 0.5}
	else
	{toggle = !toggle}

}
else
{
	if xsc > 0
	{xsc -= 0.5}
	else
	{done = true}
}

if done = true
{
	if instance_exists(obj_teleport_created)
	{
		with instance_create_depth(obj_player.x,obj_player.y,other.depth,obj_player_dissolve)
		{
			sprite_index = obj_player.sprite_index
			image_index = obj_player.image_index
			image_xscale = obj_player.image_xscale
			image_speed = 0
			//image_blend = c_black
		}
		
		obj_player.x = obj_teleport_created.x
		obj_player.y = obj_teleport_created.y
		
		with obj_teleport_created
		{instance_destroy()}
	
		instance_destroy()
		
		obj_player.ledge_grab_cooldown = 0
	
		obj_player.state = obj_player.state_prev
	
		if obj_player.state = 1
		{obj_player.state = 0}
	
		obj_player.hsp = 0//obj_player.hsp_prev
		obj_player.vsp = 0//obj_player.vsp_prev
		obj_player.grav = obj_player.grav_prev
		obj_player.image_speed = 0.3
		
		global.teleport_created = false
	}
}

ysc = xsc