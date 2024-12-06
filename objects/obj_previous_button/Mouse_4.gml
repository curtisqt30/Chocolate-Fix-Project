// Set the cooldown for a second (30 steps) to prevent bug in room transitions
global.button_cooldown = global.button_cooldown_duration;
if (global.sfx_enabled) {
	audio_play_sound(snd_button_click, 5, false)
}
room_goto(rm_level_selection);