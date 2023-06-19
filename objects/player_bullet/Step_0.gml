/// @description Insert description here
// You can write your code in this editor
x+=xspeed
y+=yspeed
if lifetime <= 0 
{
	instance_destroy()
}
else
{
	lifetime -= 1
}
function enemyHitcheck(Enemytype){
if instance_exists(oPlayer) && place_meeting(x,y,Enemytype){
	audio_play_sound(_1245_metallic_clang_01, 0, false, 1, 0, 0.5)
	var inst = instance_nearest(x,y, Enemytype);
	inst.current_health -= global.currentWeapon.damage
	effect_create_below(ef_smoke,x,y,10,c_white)
	instance_destroy();
}
}
enemyHitcheck(oEnemy)
enemyHitcheck(oEnemy_Small)
enemyHitcheck(BIG_BAD_BOSS)