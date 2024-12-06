if (!instance_exists(obj_pause_menu) && !instance_exists(obj_try_again) && !instance_exists(obj_exit_confirmation)) {
    instance_create_layer(display_get_width() / 2, display_get_height() / 2, "GUI", obj_pause_menu);
	if (global.sfx_enabled) {
		audio_play_sound(snd_button_click, 5, false);
	}
}
