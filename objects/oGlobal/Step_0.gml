if room = Room2{
	if !instance_exists(oEnemy) && !instance_exists(oEnemy_Small) && spawnTimer <= 0{
		instance_create_layer(random_range(32, 1632), random_range(32, 736), "Instances", oEnemy);
		instance_create_layer(random_range(32, 1632), random_range(32, 736), "Instances", oEnemy);
		instance_create_layer(random_range(32, 1632), random_range(32, 736), "Instances", oEnemy_Small);
		spawnTimer = 300;
	}
	spawnTimer -= 1;
}
if keyboard_check_pressed(ord("1")){
	global.currentWeapon = blaster_green
}
else if keyboard_check_pressed(ord("2")) && global.hasRPG = true{
	global.currentWeapon = RPG;
}
else if keyboard_check_pressed(ord("3")) && global.hasShotgun = true{
	global.currentWeapon = shotgun;
}