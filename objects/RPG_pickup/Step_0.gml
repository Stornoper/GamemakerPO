if distance_to_object(oPlayer) <= 30
{
	if keyboard_check_pressed(ord("C")) && global.roboparts >= 20{
		global.currentWeapon = RPG;
		global.hasRPG = true;
		global.roboparts -= 20
		instance_destroy()
	}
}