/// @description Insert description here
// You can write your code in this editor
draw_set_font(Cool);
draw_set_color(c_white);
draw_sprite_ext(spr_heart, 0, 64, 56, 3, 3, 0, c_white, 1);
draw_text(128, 64,string(global.playerHP));
draw_text(128, 128, (global.roboparts));
draw_sprite_ext(sp_roboParts, 0, 64, 112, 1.5, 1.5, 0, c_white, 1);
draw_text(320, 540, "1")
draw_sprite_ext(spr_AR, 0, 320, 600, 2, 2, 0, c_white, 1)
if global.hasRPG = true{
	draw_text(460, 540, "2")
	draw_sprite_ext(spr_RPG, 0, 460, 600, 1.5, 1.5, 0, c_white, 1)
}
if global.hasShotgun = true{
	draw_text(600, 540, "3")
	draw_sprite_ext(spr_shotgun, 0, 600, 600, 2, 2, 0, c_white, 1)
}