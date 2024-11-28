if (global.game_is_paused) {
    // Do nothing, ignore input while paused
    exit;
}

selected_object.x = x;
selected_object.y = y;

selected_object = noone;

audio_play_sound(snd_piece_click2, 10, false);


