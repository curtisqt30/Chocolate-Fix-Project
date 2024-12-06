if (global.game_is_paused || instance_exists(obj_try_again)) {
    // Do nothing, ignore input while paused
    exit;
}

if (position_meeting(mouse_x, mouse_y, self) && !global.is_object_selected) {
	selected_object = instance_position(mouse_x, mouse_y, self);
	global.is_object_selected = true;
}

if (global.sfx_enabled) {
	audio_play_sound(snd_piece_click1, 10, false);
}