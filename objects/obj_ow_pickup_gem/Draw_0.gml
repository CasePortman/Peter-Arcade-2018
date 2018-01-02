draw_self()

if image_xscale < 1
{image_xscale += 0.1}

image_yscale = image_xscale

angle = point_direction(obj_ow_player.x,obj_ow_player.y,x,y)

if distance_to_object(obj_ow_player) > 40
{
	draw_sprite_ext(spr_FX_gem_point,0,obj_ow_player.x,obj_ow_player.y,image_xscale,image_yscale,angle,c_white,1)
	anim = 0
}
else
{draw_sprite(spr_ow_gem_indicator,anim,x,y)}

if anim < 4
{anim += 0.25}