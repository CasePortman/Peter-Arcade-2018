global.camera_inside = camera_create()
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)
var pm = matrix_build_projection_ortho(240,135,-10000,10000)

camera_set_view_mat(global.camera_inside,vm)
camera_set_proj_mat(global.camera_inside,pm)

view_camera[0] = global.camera_inside

follow = noone
xto = x
yto = y