/// @description 
depth = -1100;
x = display_get_width() / 2;
y = display_get_height() / 2;
menu_scale = 0;
target_scale = .70;
scale_speed = 0.20;
show_debug_message("exit confirmation created in the Create event");

if (!variable_global_exists("sfx_enabled")) {
    global.sfx_enabled = true;
}