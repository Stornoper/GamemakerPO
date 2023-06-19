/// @description Insert description here
// You can write your code in this editor
audio_play_sound(_1245_metallic_clang_01, 0, false, 1, 0, 0.2)
effect_create_below(ef_explosion,x,y,150,c_gray)
instance_create_layer(x, y, "Instances", o_explosion)
instance_destroy();