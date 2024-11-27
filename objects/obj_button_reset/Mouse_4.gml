audio_play_sound(snd_button_click, 1, false)
if (global.game_is_paused) {
    // Do nothing, ignore input while paused
    exit;
}
with(obj_pieces_parent) {
	x = origin_x;
	y = origin_y;
}