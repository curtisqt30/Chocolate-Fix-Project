/// @description
// Smoothly interpolate the menu scale to create the scale-up effect
// Smooth scaling for the pause menu
menu_scale += (target_scale - menu_scale) * scale_speed;
if (abs(target_scale - menu_scale) < 0.01) {
    menu_scale = target_scale;  // Stop scaling when close to target
}

// Check for unpause
if (keyboard_check_pressed(vk_escape) || mouse_check_button_pressed(mb_left)) {
    instance_destroy();  // Destroy the pause menu
    global.game_is_paused = false;  // Unpause the game
} else {
    global.game_is_paused = true;  // Keep the game paused
}
