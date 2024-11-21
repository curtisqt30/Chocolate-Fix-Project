//Move the selected piece around
//x = lerp(x, mouse_x, 0.1);
//y = lerp(y, mouse_y, 0.1);
if (global.game_is_paused) {
    // Do nothing, ignore input while paused
    exit;
}

if (position_meeting(mouse_x, mouse_y,obj_piece1_circle)) {
	dragging = true;
}
