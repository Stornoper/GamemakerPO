/// @description Insert description here
// You can write your code in this editor
if current_health <= 0 
	{
		dying = true
		movesp = 0
		roboparts += 2
		audio_stop_sound(_1244_laundry_room_01);
		instance_destroy()
		return
	}
//get damage
//if instance_exists(oPlayer && oEnemy_Small){
if place_meeting(x,y,player_bullet){
	current_health -= oPlayer.wDamage
	effect_create_above(ef_smoke,x,y,10,c_white)
	instance_destroy(player_bullet.id)
	audio_play_sound(_1245_metallic_clang_01, 0, false, 1, 0, 2)
}

var target_obj = instance_nearest(x, y, oPlayer);
	
var dist = distance_to_object(target_obj);

//schieten

//if (instance_exists(oPlayer) && dist < 240){
//	if reload_time <= 0
//	{
//				var dir_to_player = point_direction(x, y, oPlayer.x, oPlayer.y);
//        
//		var bullet = instance_create_layer(x-9, y-9, "Instances", enemy_bullet);
//        bullet.direction = dir_to_player;
//        bullet.speed = 3;
//		var bullet2 = instance_create_layer(x-9, y-9, "Instances", enemy_bullet);
//		bullet2.direction = point_direction(x-9, y-9, target_obj.x + 50, target_obj.y - 50);
//		bullet2.speed = 3;
//		var bullet3 = instance_create_layer(x-9, y-9, "Instances", enemy_bullet);
//		bullet3.direction = point_direction(x-9, y-9, target_obj.x - 50, target_obj.y + 50);
//		bullet3.speed = 3;
//		var bullet4 = instance_create_layer(x-9, y-9, "Instances", enemy_bullet);
//		bullet4.direction = point_direction(x-9, y-9, target_obj.x + 100, target_obj.y - 50);
//		bullet4.speed = 3;
//		var bullet5 = instance_create_layer(x-9, y-9, "Instances", enemy_bullet);
//		bullet5.direction = point_direction(x-9, y-9, target_obj.x - 100, target_obj.y + 50);
//		bullet5.speed = 3;
//		reload_time	= 120;
//		shooting = 40
//		
//    }
//	else
//	{
//		reload_time -= 1
//		shooting -= 1
//	}
//}




//place meeting shit ook leuk :)))))
if place_meeting(x + xspd, y, oWall)
{
    while (!place_meeting(x + sign(xspd), y, oWall))
    {
        x += sign(xspd);
    }
    xspd = 0;
}
if place_meeting(x, y + yspd, oWall)
{
    while (!place_meeting(x, y + sign(yspd), oWall))
    {
        y += sign(yspd);
    }
    yspd = 0;    
}
//loop naar makker to
if instance_exists(oPlayer){
var dir = point_direction(x, y, target_obj.x, target_obj.y); 

var aspeed = 0.5 

var spd_x = lengthdir_x(aspeed, dir); 
var spd_y = lengthdir_y(aspeed, dir); 

aspeed = point_distance(x, y, target_obj.x, target_obj.y) / dist * aspeed;
}
//animation en loop shit weer ja leuk

if (dist < 720)  && global.pausedGame = false
{
    x += spd_x * movesp;
    y += spd_y * movesp;
}

if place_meeting(x, y,  oPlayer) && hasHit <= 0{
	global.playerHP -= 5
	x += 60
	y += 60
	hasHit = 60
}
else
{
	hasHit--;
}

if dist >= 360{
	audio_pause_sound(_1244_laundry_room_01)
}
else if dist < 360{
	audio_resume_sound(_1244_laundry_room_01)
}

//belangrijk!!!?
image_angle = point_direction(x, y, target_obj.x, target_obj.y)-90; 
