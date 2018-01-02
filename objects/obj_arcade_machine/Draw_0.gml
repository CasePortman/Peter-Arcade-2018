draw_self()

button_A_pressed = gamepad_button_check_pressed(0,gp_face1)

global.timer_show1 = string_format(global.stage_info[global.stage,1],2,0)
global.timer_show1 = string_replace_all(global.timer_show1," ","0")

global.timer_show2 = string_format(global.stage_info[global.stage,2],2,0)
global.timer_show2 = string_replace_all(global.timer_show2," ","0")

global.timer_show3 = string_format(global.stage_info[global.stage,3],2,0)
global.timer_show3 = string_replace_all(global.timer_show3," ","0")

global.best_timer_show1 = string_format(global.stage_info[global.stage,1],2,0)
global.best_timer_show1 = string_replace_all(global.best_timer_show1," ","0")

global.best_timer_show2 = string_format(global.stage_info[global.stage,2],2,0)
global.best_timer_show2 = string_replace_all(global.best_timer_show2," ","0")

global.best_timer_show3 = string_format(global.stage_info[global.stage,3],2,0)
global.best_timer_show3 = string_replace_all(global.best_timer_show3," ","0")

depth = 200 - y

if global.locked_player = false
{
	if distance_to_object(obj_ow_player) < 4
	and y < obj_ow_player.y
	{	
		if global.stage_info[stage,6] = 1
		{
			if global.best_time_alpha < 1
			{global.best_time_alpha += 0.1}
		}
	
		global.stage = stage 
	
		scr_outline()
		draw_self()
	
		if alpha < 1
		{alpha += 0.1}
	
		yoffset = 25
	
		draw_set_colour(c_white)
		draw_set_font(fnt_GUI_tiny)
	
		if global.stage_info[stage,6] = 1
		{
			draw_sprite_ext(spr_speech_bubble,1, x-12, y-yoffset,size,size,0,c_white,alpha)
			draw_sprite_ext(spr_speech_bubble,0, x, y-yoffset,size * (string_width(msg[stage]) / 12),size,0,c_white,alpha)
			draw_sprite_ext(spr_speech_bubble,2, x+ string_width(msg[stage]), y-yoffset,size,size,0,c_white,alpha)
			draw_sprite_ext(spr_speech_bubble,3, x+2, y-yoffset + 11,size,size,0,c_white,alpha)
		}
		else
		{
			draw_sprite_ext(spr_speech_bubble,1, x-12, y-yoffset,size,size,0,c_white,alpha)
			draw_sprite_ext(spr_speech_bubble,0, x, y-yoffset,size * (string_width(msg[0]) / 12),size,0,c_white,alpha)
			draw_sprite_ext(spr_speech_bubble,2, x+ string_width(msg[0]), y-yoffset,size,size,0,c_white,alpha)
			draw_sprite_ext(spr_speech_bubble,3, x+2, y-yoffset + 11,size,size,0,c_white,alpha)
		}

	
		draw_set_colour(c_black)
	
		if global.stage_info[stage,6] = 0
		{draw_sprite(spr_GUI_A_button,0,x-2,y-yoffset +2)}
		else
		{draw_text( x, y-yoffset - 1,msg[stage])}
	
		if global.stage_info[stage,6] = 0
		{
			var i;
			for (i = 0 ; i < global.stage_info[stage,7] ; i += 1)
			{draw_sprite(spr_GUI_pay_coin,0,x + (6 * i) + 9,y-yoffset)}
	
			var ii;
			for (ii = 0 ; ii < global.stage_info[stage,8] ; ii += 1)
			{draw_sprite(spr_GUI_pay_coin,1,x + (6 * ii) + 9,y-yoffset)}
		}
	
		//Go to level or pay for level
		if button_A_pressed
		{
			if global.stage_info[stage,6] = 1
			{
				with instance_create_depth(x,y-5,0,obj_tran_into_arcade)
				{rm = other.rm}
			}
			else
			{
				if global.play_coins > 0
				{
					global.stage_info[stage,8] += 1
					global.play_coins -= 1
				}
			}
		}
	
		if global.stage_info[stage,8] = global.stage_info[stage,7]
		{global.stage_info[stage,6] = 1}
	
	

		draw_set_font(global.font_numbers_ow_numbers)
		draw_set_alpha(alpha)

		//Best time
		xoffset_time = 8
		yoffset_time = -14
	
		if global.stage_info[stage,5] = 1
		{draw_set_colour(c_orange)}
		else
		{draw_set_colour(c_white)}
	
		if global.stage_info[global.stage,0] = 1
		{draw_text(x+xoffset_time,y+yoffset_time,string(global.best_timer_show3) + ":" + string(global.best_timer_show2) + ":" + string(global.best_timer_show1))}
		//else
		//{draw_text(x+xoffset_time,y+yoffset_time,"00" + ":" + "00" + ":" + "00")}
	
		//Check mark
		//Check mark on beaten required time
		if global.stage_info[stage,5] = 1
		{draw_sprite(spr_GUI_tick,1,x+xoffset_time + 40,y+yoffset_time)}
	
		draw_set_colour(c_white)


		draw_set_alpha(1)
	}
	else
	{
		alpha = 0
	}
}


