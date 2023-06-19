/// @description Insert description here
// You can write your code in this editor
if obj_controls.clicked
{
		visible = true
}
else
{
	visible = false
}
if keyboard_check_pressed(vk_escape)
{
	obj_controls.clicked = false
}

x = oPlayer.x
y = oPlayer.y 