// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//global.mp_grid = mp_grid_create(0, 0, _w, _h, TS, TS);
function check_for_player() {
    var _dis = distance_to_object(o_player);
	
  // move_towards_point(o_player.x, o_player.y, 1);
 if ((_dis <= alert_dis) or alert) and _dis > attack_dis {
        alert = true;

        if calc_path_timer-- <= 0 {
            calc_path_timer = calc_path_delay;

            // Check if the global mp_grid is valid before using it
            if global.mp_grid != undefined {
                var _found_player = mp_grid_path(global.mp_grid, path, x, y, o_player.x, o_player.y, choose(0, 1));

                if _found_player {
                    path_start(path, move_spd, path_action_stop, false);
                }
            }
        }
    } else {
        if _dis <= attack_dis {
            path_end();
        }
    }

}


/*
	var _found_player = mp_grid_path(global.mp_grid, path, x, y, o_player.x, o_player.y, choose(0, 1));
	
				if _found_player {
					path_start(path, move_spd, path_action_stop, false);
			}
				
			
			
			    if ((_dis <= alert_dis) or alert) and _dis > attack_dis {
        alert = true;

        if calc_path_timer-- <= 0 {
            calc_path_timer = calc_path_delay;

            // Check if the global mp_grid is valid before using it
            if global.mp_grid != undefined {
                var _found_player = mp_grid_path(global.mp_grid, path, x, y, o_player.x, o_player.y, choose(0, 1));

                if _found_player {
                    path_start(path, move_spd, path_action_stop, false);
                }
            }
        }
    } else {
        if _dis <= attack_dis {
            path_end();
        }
    }

*/