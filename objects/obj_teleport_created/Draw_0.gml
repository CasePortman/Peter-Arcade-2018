//scr_outline()
draw_self()
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1)


if surface_exists(sf)
{
    surface_set_target(sf)
	
	gpu_set_fog(true,c_aqua,0,0)
	draw_sprite_ext( sprite_index, image_index, x-1, y+1, image_xscale, image_yscale, image_angle,c_black, image_alpha)
	draw_sprite_ext( sprite_index, image_index, x+1, y-1, image_xscale, image_yscale, image_angle,c_black, image_alpha)
	draw_sprite_ext( sprite_index, image_index, x-1, y-1, image_xscale, image_yscale, image_angle,c_black, image_alpha)
	draw_sprite_ext( sprite_index, image_index, x+1, y+1, image_xscale, image_yscale, image_angle,c_black, image_alpha)
	draw_sprite_ext( sprite_index, image_index, x-1, y, image_xscale, image_yscale, image_angle,c_black, image_alpha)
	draw_sprite_ext( sprite_index, image_index, x+1, y, image_xscale, image_yscale, image_angle,c_black, image_alpha)
	draw_sprite_ext( sprite_index, image_index, x, y-1, image_xscale, image_yscale, image_angle,c_black, image_alpha)
	draw_sprite_ext( sprite_index, image_index, x, y+1, image_xscale, image_yscale, image_angle,c_black, image_alpha)
	gpu_set_fog(0,0,0,0)
	
	
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_src_alpha)
	//gpu_set_fog(true,c_white,0,0)
    draw_sprite(spr_hologram_overlay,anim,x,y)
	//gpu_set_fog(0,0,0,0)
	gpu_set_blendmode(bm_normal)
	
        
    surface_reset_target()
    draw_surface(sf,0,0)
	
	surface_free(sf)
}
else
{
    sf = surface_create(room_width,room_height)
    
    surface_set_target(sf)
    draw_clear_alpha(c_black, 0);
    surface_reset_target()
}

draw_sprite_ext(spr_teleport_outline,anim,x,y,image_xscale,image_yscale,image_angle,c_white,1)

anim += 0.5