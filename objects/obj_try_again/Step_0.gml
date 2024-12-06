// Scale menu
menu_scale += (target_scale - menu_scale) * scale_speed;
if (abs(target_scale - menu_scale) < 0.01) {
    menu_scale = target_scale;  
}

// Scale the menu
menu_scale += (target_scale - menu_scale) * scale_speed;
if (abs(target_scale - menu_scale) < 0.01) {
    menu_scale = target_scale;
}

// Define button sizes
var button_width = 160 * menu_scale;  // Scaled button width
var button_height = 160 * menu_scale; // Scaled button height

// Offset adjustments
var horizontal_spacing = 160 * menu_scale; // Space between buttons
var total_width = (2 * button_width) + horizontal_spacing;

// Get the menu center position
var menu_x = display_get_width() / 2;
var menu_y = display_get_height() / 2;

// Define a vertical offset (positive value moves buttons down)
var vertical_offset = 190 * menu_scale;

// Adjusted button positions
var button_yes_x = menu_x - total_width / 2 + button_width / 2; // Center X for "Yes" button
var button_no_x = menu_x + total_width / 2 - button_width / 2;  // Center X for "No" button
var button_y = menu_y + vertical_offset;                       // Shared Y for both buttons

// Mouse click detection
if (mouse_check_button_pressed(mb_left)) {
    // Button "Yes"
    if (mouse_x >= (button_yes_x - button_width / 2) && mouse_x <= (button_yes_x + button_width / 2) &&
        mouse_y >= (button_y - button_height / 2) && mouse_y <= (button_y + button_height / 2)) {
		if (global.sfx_enabled) {
			audio_play_sound(snd_button_click, 1, false);
		}

		global.game_is_paused = false;
		instance_destroy();
		
    }

    // Button "Reset"
    if (mouse_x >= (button_no_x - button_width / 2) && mouse_x <= (button_no_x + button_width / 2) &&
        mouse_y >= (button_y - button_height / 2) && mouse_y <= (button_y + button_height / 2)) {
		if (global.sfx_enabled) {
			audio_play_sound(snd_button_click, 1, false);
		}
		with(obj_pieces_parent) {
			x = origin_x;
			y = origin_y;
		}
		global.game_is_paused = false;
		instance_destroy();
    }
}

// Check ESC key to unpause
if (keyboard_check_pressed(vk_escape)) {
    instance_destroy();  
} 