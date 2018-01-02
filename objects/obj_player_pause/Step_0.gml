if timer < timer_max
{
	timer += 1
	obj_player.image_speed = 0
}
else
{
	global.player_pause = false
	instance_destroy()
	
	obj_player.hsp = obj_player.hsp_prev
	obj_player.vsp = obj_player.vsp_prev
	obj_player.grav = obj_player.grav_prev

}