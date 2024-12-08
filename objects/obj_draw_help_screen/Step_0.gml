if (sprite_get_number(tutorial_images[current_image_index]) > 1) {
    // If its gif
    current_frame += frame_speed;
    if (current_frame >= sprite_get_number(tutorial_images[current_image_index])) {
        current_frame = 0; // play animation
    }
} else {
    // Reset frame
    current_frame = 0;
}

if (mouse_check_button_pressed(mb_left)) {
    // Left click: move forward
    current_image_index = min(array_length(tutorial_images) - 1, current_image_index + 1);
    current_frame = 0;
}

if (mouse_check_button_pressed(mb_right)) {
    // Right click: move backward
    current_image_index = max(0, current_image_index - 1);
    current_frame = 0; 
}