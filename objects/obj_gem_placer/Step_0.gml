xx = path_get_point_x(pth_gem_placer_1,point)
yy = path_get_point_y(pth_gem_placer_1,point)

if !instance_exists(obj_ow_pickup_gem)
{
	point += 1
	instance_create_depth(xx,yy,100,obj_ow_pickup_gem)
}