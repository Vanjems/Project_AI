/// @description Insert description here
// You can write your code in this editor

var _depth = (aim_dir > 0 and aim_dir < 180);

my_pistol.depth = depth + _depth;

my_pistol.x = x + lengthdir_x(pistol_dis, aim_dir);
my_pistol.y = y + lengthdir_y(pistol_dis, aim_dir);
	
pistol_dis = lerp(pistol_dis, 18, 0.1);

if (aim_dir < 90 || aim_dir > 270) {
    // Set the image_xscale to -1 to flip the image horizontally
    o_pistol.image_yscale = 1;
} else {
    // Reset the image_xscale to its default value
    o_pistol.image_yscale = -1;
}
