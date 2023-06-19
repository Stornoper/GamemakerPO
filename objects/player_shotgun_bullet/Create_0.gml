/// @description Insert description here
// You can write your code in this editor
lifetime = 300

var bullet_spd = oPlayer.wSpeed;
var bullet_dir = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y);
var bullet_x = oPlayer.x;
var bullet_y = oPlayer.y;
    
var new_bullet = instance_create_layer(bullet_x, bullet_y, "Instances", player_bullet);
audio_play_sound(_1245_metallic_clang_01, 1, false, 1, 0, random_range(0.5, 1.5))
new_bullet.xspeed = lengthdir_x(bullet_spd, bullet_dir-10);
new_bullet.yspeed = lengthdir_y(bullet_spd, bullet_dir-10);
new_bullet.image_angle = bullet_dir-10; 
new_bullet.scale = 1;

var bullet_spd = oPlayer.wSpeed;
var bullet_dir = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y);
var bullet_x = oPlayer.x;
var bullet_y = oPlayer.y;
    
var new_bullet = instance_create_layer(bullet_x, bullet_y, "Instances", player_bullet);
audio_play_sound(_1245_metallic_clang_01, 1, false, 1, 0, random_range(0.5, 1.5))
new_bullet.xspeed = lengthdir_x(bullet_spd, bullet_dir+10);
new_bullet.yspeed = lengthdir_y(bullet_spd, bullet_dir+10);
new_bullet.image_angle = bullet_dir+10; 
new_bullet.scale = 1;
