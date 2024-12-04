// Scale menu
menu_scale += (target_scale - menu_scale) * scale_speed;
if (abs(target_scale - menu_scale) < 0.01) {
    menu_scale = target_scale;  
}

// Define button sizes
// This is for the clickable regions in the sprite
var button_width = 235;
var button_height = 95;

var move_up = -30;
var offset_y = 110;

// Check if the mouse is clicked
if (mouse_check_button_pressed(mb_left)) {
    // Button Resume
    if (mouse_x >= (x - button_width / 2) && mouse_x <= (x + button_width / 2) &&
        mouse_y >= (y - button_height / 2 + move_up) && mouse_y <= (y + button_height / 2 + move_up)) {
        // Resume tshe game and unpause
        instance_destroy();  
        global.game_is_paused = false; 
    }

    // Button Restart
    if (mouse_x >= (x - button_width / 2) && mouse_x <= (x + button_width / 2) &&
        mouse_y >= (y - button_height / 2 + offset_y + move_up) && mouse_y <= (y + button_height / 2 + offset_y + move_up)) {
        // Restart the level
        show_debug_message("Restarting the level...");
        global.game_is_paused = false;  
        instance_destroy();  
        room_restart();  
    }

    // Button Exit
    if (mouse_x >= (x - button_width / 2) && mouse_x <= (x + button_width / 2) &&
        mouse_y >= (y - button_height / 2 + offset_y * 2 + move_up) && mouse_y <= (y + button_height / 2 + offset_y * 2 + move_up)) {
        // Go back to level selection 
        show_debug_message("Exiting to level selection...");
        global.game_is_paused = false;  
        instance_destroy();  
        room_goto(rm_level_selection); 
    }
}

// Check ESC click
if (keyboard_check_pressed(vk_escape)) {
    instance_destroy();  
    global.game_is_paused = false; 
} else {
    global.game_is_paused = true; 
}
