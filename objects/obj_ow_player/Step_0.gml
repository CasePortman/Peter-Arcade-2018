button_right = keyboard_check(ord("D")) or gamepad_button_check(0,gp_padr)
button_left = keyboard_check(ord("A")) or gamepad_button_check(0,gp_padl)
button_down = keyboard_check(ord("S")) or gamepad_button_check(0,gp_padd)
button_up = keyboard_check(ord("W")) or gamepad_button_check(0,gp_padu)

depth = 200 - y

mask_index = spr_player_ow

scr_collision_ow()

if hsp != 0 or vsp != 0
{sprite_index = spr_player_run}
else
{sprite_index = spr_player_idle}

if hsp < 0
{image_xscale = -1}

if hsp > 0
{image_xscale = 1}

hsp = 0
vsp = 0

if global.locked_player = false
{
	if button_right
	{hsp = 1}

	if button_left
	{hsp = -1}

	if button_up
	{vsp = -1}

	if button_down
	{vsp = 1}
}

if distance_to_object(obj_arcade_machine) > 4
{
	if global.best_time_alpha > 0
	{global.best_time_alpha -= 0.1}
}
