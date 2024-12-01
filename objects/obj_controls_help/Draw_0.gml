
draw_set_font(fnt_text);
draw_set_color(c_white);

// ESC Key
draw_sprite(spr_esc_key, 0, x, y);
draw_text(x + 100, y - 25, "Press ESC to pause or unpause");

// F11 Key 
draw_sprite(spr_f11_key, 0, x, y + 100);
draw_text(x + 100, y + 75, "Press F11 to toggle fullscreen");

// Left Mouse Click
draw_sprite(spr_left_click_mouse, 0, x, y + 200);
draw_text(x + 100, y + 175, "Left-click to interact or select");

// Mouse Movement
draw_sprite(spr_move_mouse, 0, x, y + 300);
draw_text(x + 100, y + 275, "Move the mouse to navigate");
