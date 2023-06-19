if lifetime <= 0 
{
	instance_destroy()
}
else
{
	lifetime -= 1
}

if instance_exists(BIG_BAD_BOSS && oPlayer) && place_meeting(x,y,oPlayer){
	effect_create_below(ef_smoke,x,y,10,c_red)
	audio_play_sound(_1245_metallic_clang_01, 0, false, 1, 0, 0.5)
	global.playerHP -= BIG_BAD_BOSS.damage;
	instance_destroy();
}