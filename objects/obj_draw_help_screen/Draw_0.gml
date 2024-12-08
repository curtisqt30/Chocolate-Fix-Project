
/* draw_set_font(fnt_timer);
draw_set_color(c_white);

// ESC Key
draw_sprite(spr_esc_key, 0, x-45, y);
draw_text(x + 100, y - 40, "Press ESC to close pop-ups");

// F11 Key 
draw_sprite(spr_f11_key, 0, x-45, y + 100);
draw_text(x + 100, y + 60, "Press F11 to toggle fullscreen");

// Alt + F4
draw_sprite(alt, 0, x - 100, y + 200);
draw_sprite(f4, 0, x, y + 200);
draw_text(x + 100, y + 160, "Exit the game");


// Left Mouse Click
draw_sprite(spr_left_click_mouse, 0, x-45, y + 300);
draw_text(x + 100, y + 260, "Left-click to interact or select");

// Left Mouse Click
draw_sprite(spr_right_click_mouse, 0, x-45, y + 400);
draw_text(x + 100, y + 360, "Right-click to release piece");

// Mouse Movement
draw_sprite(spr_move_mouse, 0, x-45, y + 500);
draw_text(x + 100, y + 460, "Move the mouse to navigate");
*/

draw_sprite_ext(tutorial_images[current_image_index], floor(current_frame), 0, 0, scale_x, scale_y, 0, c_white, 1);
