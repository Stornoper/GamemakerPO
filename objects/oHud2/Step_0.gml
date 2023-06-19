if keyboard_check_pressed(vk_escape) && inBossroom = true
{
	room_goto(bossroom);
}

else if keyboard_check_pressed(vk_escape)
{
	global.pausedGame = false;
	room_goto(Room2);
}
if room = pause_room{
	if (keyboard_check_pressed(ord("H")) && roboparts >= 1 && global.playerHP <= 80)
	{
		global.playerHP += 20;
		roboparts -= 1;
	}
	if (keyboard_check_pressed(ord("B")) && roboparts >= 10)
	{
		roboparts -= 10;
		room_goto(bossroom);
		global.inBossroom = true
		return
	}
	if (keyboard_check_pressed(ord("F")) && roboparts >= 3 && global.moveSP < 3)
	{
		global.moveSP += 0.5;
		roboparts -= 3;
	}
	if (keyboard_check_pressed(ord("R")) && roboparts >= 5 && global.shootdelayBuff < 2)
	{
		global.shootdelayBuff += 1;
		roboparts -= 5;
	}
	if (keyboard_check_pressed(ord("C")) && roboparts >= 10 && global.currentWeapon != shotgun)
	{
		global.currentWeapon = shotgun
		roboparts -= 10;
	}
}
