if hsp != 0
{global.level_timer_started = true}

button_restart = keyboard_check_pressed(ord("R")) or gamepad_button_check_pressed(0,gp_select)

button_right = keyboard_check(ord("D")) or gamepad_button_check(0,gp_padr)
button_left = keyboard_check(ord("A")) or gamepad_button_check(0,gp_padl)
button_down = keyboard_check(ord("S")) or gamepad_button_check(0,gp_padd)
button_up = keyboard_check(ord("W")) or gamepad_button_check(0,gp_padu)
button_jump = keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(0,gp_face1)
button_jump_released = keyboard_check_released(vk_space) or gamepad_button_check_released(0,gp_face1)
button_attack = gamepad_button_check_pressed(0,gp_face3)
button_roll = mouse_check_button_pressed(mb_right) or gamepad_button_check_pressed(0,gp_shoulderrb)
button_teleport = mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(0,gp_shoulderlb)

if global.player_pause = false
{
	if button_restart
	{
		room_restart()
	}
}

image_speed = 0.25

mask_index = spr_player_idle
ledge_grab = false

if hsp < 0
{image_xscale = -1}
if hsp > 0
{image_xscale = 1}

if grounded = true
{momentum = false}

if global.player_pause = false
{
	if state = 0
	or state = 2
	or state = 3
	{	
		if grounded = false
		{vsp += global.player_gravity}
	}
}

if global.player_pause = false
{
switch(state)
{
	case 1: //Ledge grab
	ledge_grab = true
	sprite_index = spr_player_ledge_grab
	hsp = 0
	vsp = 0
	momentum = false
	
	if button_jump
	{
		state = 0
		vsp = global.player_jump_height
		audio_play_sound(snd_jump,1,false)
		ledge_grab_cooldown = 0
	}
	
	if button_down
	{
		state = 0
		ledge_grab_cooldown = 0
	}
	
	break;

	case 0: //General
	
	//Roll
	if rolling = false
	{
		if roll_cooldown = roll_cooldown_max
		{
			if button_roll
			{
				state = 3
				
				if vsp > 0
				{vsp = 0}
				
				image_index = 0
			}
		}
	}
	

	
	
	//Jump
	if button_jump
	{
		if jump_buffer < jump_buffer_max
		{
			vsp = global.player_jump_height
			audio_play_sound(snd_jump,1,false)
			audio_sound_pitch(snd_jump,random_range(0.9,1.1))
		}
		
	}

	if button_jump_released
	{
		if vsp < 0
		{vsp = vsp / 2.5}
	}

	if grounded = true
	{
		if hsp > -0.2 and hsp < 0.2
		{sprite_index = spr_player_idle}
		else
		{sprite_index = spr_player_run}
	}
	else
	{
		if momentum = false
		{sprite_index = spr_player_jump}
		else
		{sprite_index = spr_player_roll}
	
	}
	
	
	//Attacking 
	if attacking = false
	{
		if attack_cooldown = attack_cooldown_max
		{
			if button_attack
			{
				state = 2
				image_index = 0
			}
		}
	}
	
	break;
	
	case 2: //Attacking
	{
		sprite_index = spr_player_attack
		attack_cooldown = 0
		
		if image_index > 1
		{
			with instance_create_depth(x,y,0,obj_player_attack_box)
			{
				image_xscale = other.image_xscale
			}
		}
	}
	
	break;
	
	case 3: //Rolling
	{
		sprite_index = spr_player_roll
		hsp = (global.player_run_speed * 1.5) * image_xscale
		
		if button_jump
		{
			state = 0
			
			if jump_buffer < jump_buffer_max
			{
				vsp = global.player_jump_height
				momentum = true
			}
		}
	}
	
	break;
	
}
}

//Ledge grab
if position_meeting(x+image_xscale*5,y,obj_solid)
and !position_meeting(x+image_xscale*5,y-4,obj_solid) 
and !place_meeting(x,y+4,obj_solid) 
{
	if grounded = false
	and vsp > 0.5
	{
		if ledge_grab_cooldown = ledge_grab_cooldown_max
		{
			state = 1
			move_snap(4,8)
			x += image_xscale * 1
			y += 2
		}
	}
}

//Ledge grab cooldown
if ledge_grab_cooldown < ledge_grab_cooldown_max
{ledge_grab_cooldown += 1}


//Attacking cooldown
if attack_cooldown < attack_cooldown_max
{attack_cooldown += 1}

//Rolling cooldown
if roll_cooldown < roll_cooldown_max
{roll_cooldown += 1}

scr_collision_hor()
scr_collision_ver()

if global.player_pause = false
{
	if ledge_grab = false
	{
		if button_left
		{
			if momentum = true
			{hsp = lerp(hsp,-global.player_run_speed * 1.5,0.25)}
			else
			{hsp = lerp(hsp,-global.player_run_speed,0.25)}
		}
		else
		if button_right
		{
			if momentum = true
			{hsp = lerp(hsp,global.player_run_speed * 1.5,0.25)}
			else
			{hsp = lerp(hsp,global.player_run_speed,0.25)}
		}
		else
		{
			if momentum = false
			{hsp = lerp(hsp,0,0.25)}
		}
	}
}

//jump_buffer
if grounded = true
{jump_buffer = 0}
else
{
	if jump_buffer < jump_buffer_max
	{jump_buffer += 1}
}

//Create teleporter
if global.player_pause = false
{
	if teleport_cooldown = teleport_cooldown_max
	{
		if button_teleport
		{
			teleport_cooldown = 0
		
			if global.teleport_created = true
			{
				instance_create_depth(x,y,depth-1,obj_teleport_FX)
		
				hsp_prev = hsp
				vsp_prev = vsp
				grav_prev = grav
				state_prev = state 
			}
			else
			{
				with instance_create_depth(x,y,other.depth,obj_teleport_created)
				{
					//sprite_index = other.sprite_index
					//image_index = other.image_index
					image_xscale = other.image_xscale
					//image_speed = 0
					//image_blend = c_black
				}
		
				global.teleport_created = true
			}
		}
	}


	if instance_exists(obj_teleport_FX)
	{
		hsp = 0
		vsp = 0
		grav = 0
		state = 0
		image_speed = 0
	}
}

if teleport_cooldown < teleport_cooldown_max
{teleport_cooldown += 1}

if place_meeting(x,y,obj_solid)
{room_restart()}