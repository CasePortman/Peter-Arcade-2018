x = lerp(x + random_range(-global.screenshake,global.screenshake), xto, 0.15);
y = lerp(y + random_range(-global.screenshake,global.screenshake), yto, 0.15);


if follow != noone
{
	xto = follow.x
	yto = follow.y
		
	//x=clamp(x,0+(view_wport[0]/2),room_width-(view_wport[0]/2));
	//y=clamp(y,0+(view_hport[0]/2),room_height-(view_hport[0]/2));
}


var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)
camera_set_view_mat(global.camera,vm)

global.screenshake *= 0.5