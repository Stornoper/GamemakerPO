/// @description Insert description here
// You can write your code in this editor
//if place_meeting(x, y, oPlayer)
if distance_to_object(oPlayer) <= 30
{
	if keyboard_check_pressed(ord("C")) && global.roboparts >= 15{
		global.currentWeapon = shotgun;
		global.hasShotgun = true
		global.roboparts -= 15
		instance_destroy()
	}
}