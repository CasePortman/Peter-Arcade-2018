scr_outline()
draw_self()

if flash = true
{
	gpu_set_fog(1,c_white,0,0)
	draw_self()
	gpu_set_fog(0,0,0,0)
}