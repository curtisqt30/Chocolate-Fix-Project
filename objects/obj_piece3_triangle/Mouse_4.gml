if (global.game_is_paused) {
    // Do nothing, ignore input while paused
    exit;
}

if (position_meeting(mouse_x, mouse_y,obj_piece3_triangle)) {
	dragging = true;
}