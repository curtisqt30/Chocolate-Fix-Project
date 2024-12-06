// Scale menu
menu_scale += (target_scale - menu_scale) * scale_speed;
if (abs(target_scale - menu_scale) < 0.01) {
    menu_scale = target_scale;
}

// Define button sizes
var button_width = 235;
var button_height = 95;

var move_up = -30;
var offset_y = 110;

//button music size
var square_button_size = 100;

// Check if the mouse is clicked
if (mouse_check_button_pressed(mb_left)) {
    // Button Resume
    if (mouse_x >= (x - button_width / 2) && mouse_x <= (x + button_width / 2) &&
        mouse_y >= (y - button_height / 2 + move_up) && mouse_y <= (y + button_height / 2 + move_up)) {
        // Resume the game and unpause
		if (global.sfx_enabled) {
			audio_play_sound(snd_button_click, 5, false);
		}
        global.game_is_paused = false;
		instance_destroy();  
    }

    // Button Restart
    if (mouse_x >= (x - button_width / 2) && mouse_x <= (x + button_width / 2) &&
        mouse_y >= (y - button_height / 2 + offset_y + move_up) && mouse_y <= (y + button_height / 2 + offset_y + move_up)) {
        // Restart the level
        show_debug_message("Restarting the level...");
		if (global.sfx_enabled) {
			audio_play_sound(snd_button_click, 5, false);
		}
        global.game_is_paused = false;
        instance_destroy();  
        room_restart();  
    }

    // Button Exit
    if (mouse_x >= (x - button_width / 2) && mouse_x <= (x + button_width / 2) &&
        mouse_y >= (y - button_height / 2 + offset_y * 2 + move_up) && mouse_y <= (y + button_height / 2 + offset_y * 2 + move_up)) {     
        // Create the exit confirmation window
		if (global.sfx_enabled) {
			audio_play_sound(snd_button_click, 5, false);
		}
        instance_create_layer(x, y, "GUI", obj_exit_confirmation);
        // Destroy the pause menu so it doesn't overlap with the exit confirmation
        instance_destroy();  
    }
	
	// Button Music 
	if (mouse_x >= (x - (square_button_size / 2) - 70) && mouse_x <= (x - (square_button_size / 2) - 70) + square_button_size &&
		mouse_y >= (y - (square_button_size / 2) - offset_y - 40) && mouse_y <= (y - (square_button_size / 2) - offset_y - 40) + square_button_size) {
		// Toggle music on/off
		if (global.sfx_enabled) {
			audio_play_sound(snd_button_click, 5, false);
		}

		if (audio_is_playing(snd_music)) {
			audio_stop_sound(snd_music);
		} else {
			audio_play_sound(snd_music, 1, true);
		}
	}
	
	// Button SFX
	if (mouse_x >= (x - (square_button_size / 2) + 55) && mouse_x <= (x - (square_button_size / 2) + 55) + square_button_size &&
        mouse_y >= (y - (square_button_size / 2) - offset_y - 40) && mouse_y <= ( y - (square_button_size / 2) - offset_y - 40) + square_button_size) {
        if (global.sfx_enabled) {
             global.sfx_enabled = false; //Turn off
        } else {
            global.sfx_enabled = true; // Turn On
			audio_play_sound(snd_button_click, 5, false);
        }
    }

}

// Check ESC click
if (keyboard_check_pressed(vk_escape)) {
    instance_destroy();  
    global.game_is_paused = false;
} 
