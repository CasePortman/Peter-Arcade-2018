scr_outline()
draw_self()

draw_sprite_ext(spr_NPC_speech,imgspd,x,y-14,xsc,ysc,0,c_white,alpha)

button_A_pressed = gamepad_button_check_pressed(0,gp_face1) or mouse_check_button_pressed(mb_left)
button_B_pressed = gamepad_button_check_pressed(0,gp_face2) or mouse_check_button_pressed(mb_right)
button_left = gamepad_button_check_pressed(0,gp_padl)
button_right = gamepad_button_check_pressed(0,gp_padr)

depth = 200 - y

if distance_to_object(obj_ow_player) < 6
//and y < obj_ow_player.y
{
	if triggered = false
	{in = true}
}
else
{in = false}

if in = true
{
	if bob_in = false
	{
		if xsc < 1.25
		{xsc += 0.25}
		else
		{bob_in = true}
	}
	else
	{
		if xsc > 1
		{xsc -= 0.25}
	}
	bob_out = false
}
else
{
	bob_in = false
	
	if bob_out = false
	{
		if xsc < 1.25
		{xsc += 0.25}
		else
		{bob_out = true}
	}
	else
	{
		if xsc > 0
		{xsc -= 0.25}
		else
		{
			in = false
		}
	}
}

if in = true
{
	if button_A_pressed
	{
		triggered = true
		
		highfive_icon_move = 0
		highfive_level = 0
		
		instance_create_depth(x,y,-9999,obj_dark_rectangle)
		with instance_create_depth(x,y,-10000,obj_screen_flash)
		{
			colour = c_black
			time = 1
		}
		
		button_A_pressed = false
	}
}

if triggered = true
{
	global.locked_player = true
	in = false
	
	depth = -10000
	obj_ow_player.depth = -10000
	
	obj_ow_player.x = xx
	obj_ow_player.y = yy
	
	if obj_ow_player.x > x
	{obj_ow_player.image_xscale = -1}
	else
	{obj_ow_player.image_xscale = 1}
		
	/// Mini Games ///
	switch (minigame_type)
	{
		case 1: //Rock, Paper, Scissors
		
		draw_sprite_ext(spr_NPC_speech_RPS,imgspd,x,y-14,-image_xscale * xsc2,ysc2,0,c_white,1)
		draw_sprite_ext(spr_NPC_speech_RPS,selection,obj_ow_player.x,obj_ow_player.y-14,-obj_ow_player.image_xscale * xsc2,ysc2,0,c_white,1)
	
		draw_sprite_ext(spr_OW_arrow_selection,imgspd,obj_ow_player.x - 12,obj_ow_player.y-16,1 * xsc2,ysc2,0,c_white,1)
		draw_sprite_ext(spr_OW_arrow_selection,imgspd,obj_ow_player.x + 12,obj_ow_player.y-16,-1 * xsc2,ysc2,0,c_white,1)
		
		break;
		
		
		case 2: //High five
		
		draw_sprite_ext(spr_NPC_speech_highfive,highfive_anim,x,y-18,xsc2,ysc2,0,c_white,1)
		draw_sprite(spr_highfive_bar,highfive_level,x-22,y+6)
		draw_sprite(spr_highfive_icon,highfive_show,x-20 + highfive_icon_move,y+20)
	
		if highfive_icon_move_toggle = 0
		{
			if highfive_icon_move < highfive_icon_move_max
			{
				if highfive_show = false
				{highfive_icon_move += 1}
			}
			else
			{highfive_icon_move_toggle = 1}
		}
		else
		{
			if highfive_icon_move > 0
			{
				if highfive_show = false
				{highfive_icon_move -= 1}
			}
			else
			{highfive_icon_move_toggle = 0}
		}
	
		if highfive_show = false
		{
			if button_A_pressed
			{
				highfive_show = true
				highfive_anim = 0
				global.screenshake = 1
			}
		}
		else
		{
			if highfive_anim < 4
			{highfive_anim += 0.25}
			else
			{
				highfive_show = false
				highfive_level += 1
			
				if highfive_level = 3
				{		
					xsc2 = 0
					global.locked_player = false
					triggered = false
		
					with obj_dark_rectangle
					{instance_destroy()}
				}
			}
		}
		
		if button_left
		{
			if selection > 0
			{selection -= 1}
		}
	
		if button_right
		{
			if selection < 2
			{selection += 1}
		}
		
		break;
		
		
		case 3: //Collect the bits 1 (path)
		
		
		break;
	}
	
	/// End of Mini games ///
	
	if xsc2 < 1
	{xsc2 += 0.1}
		
	if button_B_pressed
	{
		xsc2 = 0
		global.locked_player = false
		triggered = false
		
		with obj_dark_rectangle
		{instance_destroy()}
	}
	
	
}

ysc = xsc
ysc2 = xsc2


imgspd += 0.2