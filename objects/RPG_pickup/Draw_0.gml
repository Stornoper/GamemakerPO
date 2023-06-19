/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_RPG,1,x ,y)
draw_set_font(Down);
draw_set_color(c_black);
if distance_to_object(oPlayer) <= 30{
	draw_text(oPlayer.x-50,oPlayer.y-50,"Press C to pickup " + string(weapon) + " for 20 robo-parts");
}