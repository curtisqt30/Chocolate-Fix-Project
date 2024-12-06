//switch rooms
if (global.button_cooldown <= 0) {
	if (global.sfx_enabled) {
		audio_play_sound(snd_button_click, 5, false)
	}
	room_goto(rm_level_1);
}