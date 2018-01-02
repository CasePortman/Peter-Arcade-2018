global.timer_show1 = string_format(m_secs,2,0)
global.timer_show1 = string_replace_all(global.timer_show1," ","0")

global.timer_show2 = string_format(secs,2,0)
global.timer_show2 = string_replace_all(global.timer_show2," ","0")

global.timer_show3 = string_format(mins,2,0)
global.timer_show3 = string_replace_all(global.timer_show3," ","0")

global.best_timer_show1 = string_format(global.stage_info[global.stage,1],2,0)
global.best_timer_show1 = string_replace_all(global.best_timer_show1," ","0")

global.best_timer_show2 = string_format(global.stage_info[global.stage,2],2,0)
global.best_timer_show2 = string_replace_all(global.best_timer_show2," ","0")

global.best_timer_show3 = string_format(global.stage_info[global.stage,3],2,0)
global.best_timer_show3 = string_replace_all(global.best_timer_show3," ","0")


draw_set_font(fnt_GUI)


//Current time
draw_set_colour(c_black)
draw_rectangle(x-1,y,x+45,y+8,false)

if global.level_timer_started = true
{draw_set_colour(c_white)}
else
{draw_set_colour(c_red)}

draw_text(x,y,string(global.timer_show3) + ":" + string(global.timer_show2) + ":" + string(global.timer_show1))


//Best time
draw_set_colour(c_black)
draw_rectangle(x-1,y+10,x+45,y+8+10,false)

draw_set_colour(c_orange)

if global.stage_info[global.stage,0] = 1
{draw_text(x,y+10,string(global.best_timer_show3) + ":" + string(global.best_timer_show2) + ":" + string(global.best_timer_show1))}
else
{draw_text(x,y+10,"00" + ":" + "00" + ":" + "00")}