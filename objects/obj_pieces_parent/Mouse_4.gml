if (global.game_is_paused || instance_exists(obj_try_again)) {
    // Do nothing, ignore input while paused
    exit;
}

if (position_meeting(mouse_x, mouse_y, self)) {
	selected_object = instance_position(mouse_x, mouse_y, self);
}
