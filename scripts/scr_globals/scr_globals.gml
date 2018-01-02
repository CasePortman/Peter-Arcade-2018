//STAGE STUFF
//Player
global.player_jump_height = -2.6 
global.player_run_speed = 1.25
global.player_walk_speed = 1
global.player_gravity = 0.2
global.teleport_created = false

//Stage
global.level_timer_started = false

//General
global.screenshake = 0
global.player_pause = false

//IN STAGE
//Blocks
global.switch_solid_block = 0

//OVERWORLD STUFF
//Layers
global.overworld_layer = 0
global.locked_player = false

//Info 
global.play_coins = 0
global.tokens = 0 

global.best_time_alpha = 0

//Persistant coinage
global.total_ow_coins = 10

var i
for (i = 1 ; i < global.total_ow_coins ; i += 1)
{global.ow_coin_got[i] = 0}

//FONTS
global.font_numbers_ow = font_add_sprite(spr_ow_font,48,0,1)
global.font_numbers_ow_numbers = font_add_sprite(spr_ow_font_numbers,48,0,0)


