x+=xspeed
y+=yspeed
if lifetime <= 0 
{
	instance_create_layer(x, y, "Instances", o_explosion)
	instance_destroy()
}
else
{
	lifetime -= 1
}
function enemyHitcheck(Enemytype){
if instance_exists(oPlayer) && place_meeting(x,y,Enemytype){
	audio_play_sound(_1245_metallic_clang_01, 0, false, 1, 0, 0.2)
	effect_create_below(ef_explosion,x,y,150,c_gray)
	instance_create_layer(x, y, "Instances", o_explosion)
	instance_destroy();
}
}
enemyHitcheck(oEnemy)
enemyHitcheck(oEnemy_Small)
enemyHitcheck(BIG_BAD_BOSS)