origin_x = x;
origin_y = y;

selected_object = noone;

object_row = -1; 
object_col = -1;

if (!variable_global_exists("sfx_enabled")) {
    global.sfx_enabled = true;
}