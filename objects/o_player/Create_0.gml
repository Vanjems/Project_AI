/// @description Insert description here
// You can write your code in this editor

walk_spd = 1.5;

facing = 1;
aim_dir = 0;
pistol_dis = 18;

fire_rate = 30;
can_fire = true;
bullet_speed = 8;

my_pistol = instance_create_layer(x, y, "Instances", o_pistol);

cursor_sprite = s_cursor;
window_set_cursor(cr_none);