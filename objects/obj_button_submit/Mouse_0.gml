if (global.game_is_paused) {
    // Do nothing, ignore input while paused
    exit;
}

var level = get_current_level()
var check = check_solution(level);
if (!check) {
	if (!instance_exists(obj_try_again)) {
		instance_create_layer(display_get_width() / 2, display_get_height() / 2, "GUI", obj_try_again);
	}
}