/// @description Insert description here
// You can write your code in this editor
if lifetime <= 0 
{
	instance_destroy()
}
else
{
	lifetime -= 1
}
if instance_exists(oEnemy) && place_meeting(x,y,oPlayer){
	effect_create_below(ef_smoke,x,y,10,c_red)
	audio_play_sound(_1245_metallic_clang_01, 0, false, 1, 0, 0.5)
	global.playerHP -= oEnemy.damage
	instance_destroy();
}