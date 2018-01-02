if (file_exists("Save.sav"))
{
    ini_open("Save.sav");
	
	//Stuff to load//
	
	//Best times set
	var i;
	for (i = 0 ; i < global.total_stages ; i += 1)
	{
		global.stage_info[i,0] = ini_read_real("Save","Set T   " + string(i),0)
		global.stage_info[i,1] = ini_read_real("Save","Best MS " + string(i),0)
		global.stage_info[i,2] = ini_read_real("Save","Best S  " + string(i),0)
		global.stage_info[i,3] = ini_read_real("Save","Best M  " + string(i),0)
		global.stage_info[i,4] = ini_read_real("Save","Compl   " + string(i),0)
		global.stage_info[i,5] = ini_read_real("Save","Compl EX" + string(i),0)
		global.stage_info[i,6] = ini_read_real("Save","Locked  " + string(i),0)
		global.stage_info[i,8] = ini_read_real("Save","Paid Am." + string(i),0)
	}
	
	//Coins
	global.play_coins = ini_read_real("Save","Play Coins",0)
	
	var ii;
	for (ii = 1 ; ii < global.total_ow_coins ; ii += 1)
	{global.ow_coin_got[ii] = ini_read_real("Save","OW Coins" + string(ii),0)}
	
	/////////////////
	
	show_debug_message("[DEBUG] scr_load_game()")
    ini_close()
}
else
{
    show_debug_message("[DEBUG] Save file doesn't exist.")
}

