if obj_ow_player.y > y - 1
and obj_ow_player.y < y + 1
{vsp = obj_ow_player.vsp}

scr_collision_ow()

if vsp = 0
{sprite_index = spr_player_idle}
else
{sprite_index = spr_player_run}

