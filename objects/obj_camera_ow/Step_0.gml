var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)
var pm = matrix_build_projection_ortho(160 - global.camera_zoom,90 - (global.camera_zoom / 1.8),-10000,10000)

camera_set_view_mat(global.camera,vm)
camera_set_proj_mat(global.camera,pm)


x = lerp(x + random_range(-global.screenshake,global.screenshake), xto, 0.15);
y = lerp(y + random_range(-global.screenshake,global.screenshake), yto, 0.15);

if instance_exists(obj_tran_into_arcade)
{follow = obj_tran_into_arcade}
else
{follow = obj_ow_player}

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