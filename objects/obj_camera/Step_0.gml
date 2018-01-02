var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)
var pm = matrix_build_projection_ortho(240 - global.camera_zoom,135 - (global.camera_zoom / 1.8),-10000,10000)

camera_set_view_mat(global.camera_inside,vm)
camera_set_proj_mat(global.camera_inside,pm)


x = lerp(x + random_range(-global.screenshake,global.screenshake), room_width/2, 0.15);
y = lerp(y + random_range(-global.screenshake,global.screenshake), room_height / 2, 0.15);


if follow != noone
{
	xto = follow.x
	yto = follow.y
		
	//x=clamp(x,0+(view_wport[0]/2),room_width-(view_wport[0]/2));
	//y=clamp(y,0+(view_hport[0]/2),room_height-(view_hport[0]/2));
}


var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)
camera_set_view_mat(global.camera_inside,vm)

global.screenshake *= 0.5

if global.camera_zoom > 0
{global.camera_zoom -= 2}