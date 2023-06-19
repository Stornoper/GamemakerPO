/// @description Insert description here
// You can write your code in this editor
if instance_exists(oPlayer){
if obj_controls.clicked
{
		visible = true
}
}
if instance_exists(obj_control){
if obj_control.clicked
{
	visible = true
}
}
else
{
	visible = false
}
if keyboard_check_pressed(vk_escape)
{
	obj_controls.clicked = false
	obj_control.clicked = false
}
if instance_exists(oPlayer){
x = oPlayer.x
y = oPlayer.y 
}