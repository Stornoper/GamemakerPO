inBossroom = true
oPlayer.current_health = global.playerHP;
oPlayer.movesp = global.moveSP;
oPlayer.shot_delay = global.currentWeapon.shot_delay;
oPlayer.currentWeapon = global.currentWeapon;
global.pausedGame = false;
audio_stop_all();
instance_create_layer(0,0,"Instances",obj_music)