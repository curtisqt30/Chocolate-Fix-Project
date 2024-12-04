if (!instance_exists(obj_pause_menu) && !global.game_is_paused) {
    instance_create_layer(display_get_width() / 2, display_get_height() / 2, "GUI", obj_pause_menu);
}
