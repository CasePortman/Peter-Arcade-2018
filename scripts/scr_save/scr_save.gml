if (file_exists("Save.sav"))
{file_delete("Save.sav")};

ini_open("Save.sav");

//Stuff to save//

//Save Best Times (20 Stages)
var i;
for (i = 1 ; i < global.total_stages ; i += 1)
{
	ini_write_real("Save","Set T   " + string(i),global.stage_info[i,0])
	ini_write_real("Save","Best MS " + string(i),global.stage_info[i,1])
	ini_write_real("Save","Best S  " + string(i),global.stage_info[i,2])
	ini_write_real("Save","Best M  " + string(i),global.stage_info[i,3])
	ini_write_real("Save","Compl   " + string(i),global.stage_info[i,4])
	ini_write_real("Save","Compl EX" + string(i),global.stage_info[i,5])
	ini_write_real("Save","Locked  " + string(i),global.stage_info[i,6])
	ini_write_real("Save","Paid Am." + string(i),global.stage_info[i,8])
}

//Coins
ini_write_real("Save","Play Coins",global.play_coins)

var ii;
for (ii = 1 ; ii < global.total_ow_coins ; ii += 1)
{ini_write_real("Save","OW Coins" + string(ii),global.ow_coin_got[ii])}

/////////////////

ini_close();

