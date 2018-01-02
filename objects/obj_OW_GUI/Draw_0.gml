depth = -1000


var i;
for (i = 0 ; i < global.play_coins ; i += 1)
{draw_sprite(spr_GUI_pay_coin,1,obj_camera_ow.x - 87 + (6 * i) + 9,obj_camera_ow.y - 44)}

var ii;
for (ii = 1 ; ii < 6 ; ii += 1)
{
	draw_sprite(spr_GUI_level_mark,global.stage_info[ii,4],obj_camera_ow.x + (11 * ii) - 39,obj_camera_ow.y + 34)
	draw_sprite(spr_GUI_tick,global.stage_info[ii,5],obj_camera_ow.x + (11 * ii) - 38,obj_camera_ow.y + 34)
}

/*

draw_set_font(global.font_numbers_ow_numbers)
draw_set_alpha(global.best_time_alpha)

xoffset_time = 25
yoffset_time = 29

//draw_set_colour(c_black)
//draw_rectangle(obj_camera_ow.x+10 + xoffset_time,obj_camera_ow.y+7 + yoffset_time,obj_camera_ow.x+52 + xoffset_time,obj_camera_ow.y+8+6 + yoffset_time,false)

draw_set_colour(c_orange)
if global.stage_info[global.stage,0] = 1
{draw_text(obj_ow_player.x-20,obj_ow_player.y+6,string(global.best_timer_show3) + ":" + string(global.best_timer_show2) + ":" + string(global.best_timer_show1))}
else
{draw_text(obj_ow_player.x-20,obj_ow_player.y+6,"00" + ":" + "00" + ":" + "00")}
	
draw_set_colour(c_white)


draw_set_alpha(1)

