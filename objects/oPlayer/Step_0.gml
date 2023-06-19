movesp = global.moveSP
current_health = global.playerHP
right_key = keyboard_check(ord("D")) || keyboard_check(vk_right);
left_key = keyboard_check(ord("A")) || keyboard_check(vk_left);
up_key = keyboard_check(ord("W")) || keyboard_check(vk_up);
down_key = keyboard_check(ord("S")) || keyboard_check(vk_down);
sprint_key = keyboard_check_pressed(vk_shift)
shoot_button = mouse_check_button(mb_left)
shot_delay = max(0, shot_delay - 1);
spdx = (right_key-left_key)
spdy = (down_key-up_key)
xspd = (right_key-left_key) * movesp;
yspd = (down_key-up_key) * movesp;
wDamage = currentWeapon.damage
wSpeed = currentWeapon.bSpeed

//if alarm[0] <= 0{
//	if spdx != 0 xor spdy != 0{
//		alarm[0] = 40
//	}
//}

if keyboard_check_pressed(ord("P"))
{
	room_goto(pause_room);
}


//get damage
if current_health <= 0
{
	instance_destroy()
	room_goto(youdied)
	return
}
if shooting > 0
{
	shooting -= 1
}
if keyboard_check_pressed(ord("1")) && hasGun == false
{
	gunvariable = spr_player_gun
	hasGun = true
}
else if keyboard_check_pressed(ord("1")) && hasGun == true
{
	if currentWeapon = blaster_green{
		gunvariable = spr_player_walking
		hasGun = false
	}
}

//schieten

if (shoot_button && hasGun && shot_delay == 0 && canShoot && global.pausedGame = false)
{
    shot_delay = currentWeapon.shot_delay
    
    var bullet_spd = wSpeed;
    var bullet_dir = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y);
    var bullet_x = oPlayer.x;
    var bullet_y = oPlayer.y;
    
    var new_bullet = instance_create_layer(bullet_x, bullet_y, "Instances", currentWeapon.Bullet);
	audio_play_sound(_1245_metallic_clang_01, 1, false, 1, 0, random_range(0.5, 1.5))
    new_bullet.xspeed = lengthdir_x(bullet_spd, bullet_dir);
    new_bullet.yspeed = lengthdir_y(bullet_spd, bullet_dir);
    new_bullet.image_angle = bullet_dir;
    new_bullet.scale = 1;
	shooting = 60
}
// sprinten is wel grappig 
if sprint_key == 1
{
    global.moveSP += 1
	canShoot = false
}
else if keyboard_check_released(vk_shift)
{
    global.moveSP -= 1
	canShoot = true
}

// lopenanimatie

if xspd < 0 or yspd < 0 && xspd != 1
 	{
		face = LEFT
	}
else if xspd > 0 or yspd > 0 && xspd != -1
	{
		face = RIGHT
	}
else if xspd == 0 && yspd == 0
	{
		image_speed = 0;
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

if place_meeting(x, y, oBossground) && LavaDamage <= 0
{
	current_health -=5
	LavaDamage = 60
}
else
{
	LavaDamage --;
}
// beweging
if global.pausedGame = false
{
x += xspd
y += yspd
}

image_speed = 1

if spdx == -1 && spdy == -1
	{
		image_angle = 45
	}
else if spdx == -1 && spdy == 0
	{
		image_angle = 90
	}
else if spdx == 0 && spdy == -1
	{
		image_angle = 0
	}
else if spdx == -1 && spdy == 1
	{
		image_angle = 135
	}
else if spdx == 0 && spdy == 1
	{
		image_angle = 180
	}
else if spdx == 1 && spdy == 1
	{
		image_angle = 225
	}
else if spdx == 1 && spdy == 0 
	{
		image_angle = 270
	}
else if spdx == 1 && spdy == -1
	{
		image_angle = 315
	}
if spdx == 0 && spdy == 0
	{
		if hasGun == true
		{
			face = spr_player_gun
			image_speed = 0
		}
		else if hasGun == true && currentWeapon == RPG
		{
			face = spr_player_RPG
			image_speed = 0
			}
		else if hasGun = false
		{
			face = spr_player_idle
		}
	}
else 
{
	if hasGun == true && currentWeapon != RPG
	{
		face = spr_player_gun
		image_speed = 1
	}
	else if hasGun == true && currentWeapon == RPG
	{
		face = spr_player_RPG
		image_speed = 1
	}
	else
	{
	face = spr_player_walking
	}
}
if shooting > 0
	{
		if currentWeapon == RPG{
			face = spr_player_shoot_RPG
		}
		else{
			face = spr_player_shoot
		}
		shooting -= 1
		image_angle = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y)-90;
	}
sprite_index = face
//camera
var cam_x = lerp(camera_get_view_x(view_camera[0]), (x) - view_wview[0]/2, 0.1);
var cam_y = lerp(camera_get_view_y(view_camera[0]), (y) - view_hview[0]/2, 0.1);

camera_set_view_pos(view_camera[0], cam_x, cam_y);

room_persistent = true

if current_health != 100
{
	global.playerHP = current_health;
}