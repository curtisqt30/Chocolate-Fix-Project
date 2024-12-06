// Check if the game is paused
if (global.game_is_paused || instance_exists(obj_exit_confirmation)) {
    // Do nothing, ignore input while paused
    exit;
}

if (mouse_check_button_pressed(mb_left)) {
    // Play the sound once
	if (global.sfx_enabled) {
		audio_play_sound(snd_button_click, 5, false);
	}

    var level = get_current_level();
    var check = check_solution(level);

    // If the solution is incorrect, create the "Try Again" button
    if (!check) {
        if (!instance_exists(obj_try_again)) {
            instance_create_layer(display_get_width() / 2, display_get_height() / 2, "GUI", obj_try_again);
        }
    }
}