// Toggle fullscreen with F11
if (keyboard_check_pressed(vk_f11)) {
    if (window_get_fullscreen()) {
        window_set_fullscreen(false);
    } else {
        window_set_fullscreen(true);
    }
}

// Exit the game with Alt+F4
if (keyboard_check(vk_alt) && keyboard_check_pressed(vk_f4)) {
    game_end();
}

// Countdown the cooldown timer if it's active
if (global.button_cooldown > 0) {
    global.button_cooldown -= 1;
}