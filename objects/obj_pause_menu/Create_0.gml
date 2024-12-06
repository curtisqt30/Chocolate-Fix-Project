/// @description 
depth = -1000;
x = display_get_width() / 2;
y = display_get_height() / 2;
menu_scale = 0;
target_scale = 1.1;
scale_speed = 0.15;
global.game_is_paused = true;
// This is to prevent player from moving pieces or clicking buttons in pause overlay

show_debug_message("Pause menu created in the Create event");

if (!variable_global_exists("sfx_enabled")) {
    global.sfx_enabled = true;
}

