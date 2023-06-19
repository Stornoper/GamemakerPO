/// @description Insert description here
// You can write your code in this editor
if current_health <= 0 
	{
		dying = true
		movesp = 0
		roboparts += 1
		instance_destroy()
		return
	}
//get damage
//if instance_exists(oPlayer && oEnemy){



var target_obj = instance_nearest(x, y, oPlayer);
	
var dist = distance_to_object(target_obj);

//schieten

if (instance_exists(oPlayer) && dist < 360) && global.pausedGame = false{
	if reload_time <= 0
	{
				var dir_to_player = point_direction(x, y, oPlayer.x, oPlayer.y);
        
		var bullet = instance_create_layer(x-9, y-9, "Instances", enemy_bullet);
        bullet.direction = dir_to_player;
        bullet.speed = 3;
		bullet.image_angle = dir_to_player
		var bullet2 = instance_create_layer(x-9, y-9, "Instances", enemy_bullet);
		bullet2.direction = point_direction(x-9, y-9, target_obj.x + 50, target_obj.y - 50);
		bullet2.speed = 3;
		bullet2.image_angle = dir_to_player
		var bullet3 = instance_create_layer(x-9, y-9, "Instances", enemy_bullet);
		bullet3.direction = point_direction(x-9, y-9, target_obj.x - 50, target_obj.y + 50);
		bullet3.speed = 3;
		bullet3.image_angle = dir_to_player
		reload_time	= 120;
		shooting = 40
		
    }
	else
	{
		reload_time -= 1
		shooting -= 1
	}
}





//loop naar makker to
if instance_exists(oPlayer){
var dir = point_direction(x, y, target_obj.x, target_obj.y); 

var aspeed = 0.3 

var spd_x = lengthdir_x(aspeed, dir); 
var spd_y = lengthdir_y(aspeed, dir); 

aspeed = point_distance(x, y, target_obj.x, target_obj.y) / dist * aspeed;
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

if (dist > 60 && dist < 300)  && global.pausedGame = false
{
    x += spd_x * movesp;
    y += spd_y * movesp;
}




//belangrijk!!!?
image_angle = point_direction(x, y, target_obj.x, target_obj.y)-90; 
