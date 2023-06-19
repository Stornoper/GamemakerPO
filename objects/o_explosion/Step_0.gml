/// @description Insert description here
// You can write your code in this editor
function enemyHitcheck(Enemytype){
if instance_exists(oPlayer) && place_meeting(x,y,Enemytype){
	audio_play_sound(_1245_metallic_clang_01, 0, false, 1, 0, 0.5)
	var inst = instance_nearest(x,y, Enemytype);
	inst.current_health -= RPG.damage
}
}
if instance_exists(oPlayer) && place_meeting(x, y, oPlayer){
	audio_play_sound(_1245_metallic_clang_01, 0, false, 1, 0, 0.5)
	playerHP -= RPG.damage
}
enemyHitcheck(oEnemy)
enemyHitcheck(oEnemy_Small)
enemyHitcheck(BIG_BAD_BOSS)
instance_destroy();