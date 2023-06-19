/// @description Insert description here
// You can write your code in this editor
room_persistent = true;
global.moveSP = 1;
globalvar playerHP;
global.playerHP = 100;
globalvar pausedGame;
global.pausedGame = false
if global.playerHP != 100
{
	global.playerHP = oPlayer.current_health
}
if not variable_instance_exists(oGlobal, "firstInstance"){
room_goto(Room2)
}
spawnTimer = 300;
globalvar currentWeapon;
currentWeapon = blaster_green;
global.shootdelayBuff = 0;
firstInstance = true
