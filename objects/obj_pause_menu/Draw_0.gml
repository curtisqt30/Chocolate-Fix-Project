// Dim the background
draw_set_alpha(0.5); 
draw_rectangle_color(0, 0, display_get_width(), display_get_height(), c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);    

// Draw the pause menu 
if (menu_scale > 0) {
    draw_sprite_ext(spr_window_pause, 0, display_get_width() / 2, display_get_height() / 2, menu_scale, menu_scale, 0, c_white, 1);
}


      