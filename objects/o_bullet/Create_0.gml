/// @description Insert description here
// You can write your code in this editor
damage = 5;
range = 160;
owner_id = noone;
knockback_time = 5;

function bullet_die(){
	speed = 0;
	instance_change(o_bullet_explode, false);
}