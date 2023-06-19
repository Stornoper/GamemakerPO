// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
#macro RIGHT 0
#macro LEFT 1
#macro IDLE 2

function playerinDistance()
{
	var target_obj = instance_nearest(x, y, oPlayer);
	var dist = distance_to_object(target_obj);
	if dist <= 100{
		return true
	}
	return false
}