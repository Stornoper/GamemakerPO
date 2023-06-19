/// @description Insert description here
// You can write your code in this editor
if current_health <= 0 
	{
		dying = true
		movesp = 0
		roboparts += 20
		instance_destroy()
		room_goto(winroom)
		audio_play_sound(_1502_fireworks_01, 2, infinity)
		return
	}
//get damage
//if instance_exists(oPlayer && oEnemy){
//if place_meeting(x,y,player_bullet){
//	current_health -= oPlayer.wDamage
//	effect_create_above(ef_smoke,x,y,10,c_white)
//	instance_destroy(player_bullet.id)
//	audio_play_sound(_1245_metallic_clang_01, 0, false, 1, 0, 2)
//}

var target_obj = instance_nearest(x, y, oPlayer);
	
var dist = distance_to_object(target_obj); 


if current_health <= 1200
{
	beastmode = true
	minionTimer += 1
	sprite_index = sp_boss_enraged
}

if minionTimer >= 300
{
		instance_create_layer(x+50, y, "Instances", oEnemy_Small)
		instance_create_layer(x-50, y, "Instances", oEnemy_Small)
		instance_create_layer(x, y+50, "Instances", oEnemy_Small)
		instance_create_layer(x, y-50, "Instances", oEnemy_Small)
	minionTimer = 0
}
//schieten

if (instance_exists(oPlayer) && dist < 320) && global.pausedGame = false{
	if reload_time <= 0
	{
				var dir_to_player = point_direction(x, y, oPlayer.x, oPlayer.y);
        
		var bullet = instance_create_layer(x-9, y-9, "Instances", boss_bullet);
        bullet.direction = dir_to_player;
        bullet.speed = 5;
		var bullet2 = instance_create_layer(x-9, y-9, "Instances", boss_bullet);
		bullet2.direction = point_direction(x-9, y-9, target_obj.x + 50, target_obj.y - 50);
		bullet2.speed = 5;
		var bullet3 = instance_create_layer(x-9, y-9, "Instances", boss_bullet);
		bullet3.direction = point_direction(x-9, y-9, target_obj.x - 50, target_obj.y + 50);
		bullet3.speed = 5;
		var bullet4 = instance_create_layer(x-9, y-9, "Instances", boss_bullet);
		bullet4.direction = point_direction(x-9, y-9, target_obj.x + 100, target_obj.y - 50);
		bullet4.speed = 5;
		var bullet5 = instance_create_layer(x-9, y-9, "Instances", boss_bullet);
		bullet5.direction = point_direction(x-9, y-9, target_obj.x - 100, target_obj.y + 50);
		bullet5.speed = 5;
		reload_time	= 120;
		if beastmode = true{
			reload_time = 60
		}
		shooting = 40
		
    }
	else
	{
		reload_time -= 1
		shooting -= 1
	}
}




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

var aspeed = 0.3 

var spd_x = lengthdir_x(aspeed, dir); 
var spd_y = lengthdir_y(aspeed, dir); 

aspeed = point_distance(x, y, target_obj.x, target_obj.y) / dist * aspeed;
}
//animation en loop shit weer ja leuk

if (dist > 40 && dist < 240)  && global.pausedGame = false
{
    x += spd_x * movesp;
    y += spd_y * movesp;
}




//belangrijk!!!?
image_angle = point_direction(x, y, target_obj.x, target_obj.y)-90; 
