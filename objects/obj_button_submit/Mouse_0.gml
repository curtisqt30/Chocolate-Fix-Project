var check = solution_3x3_1();
if (!check) {
	if (!instance_exists(obj_try_again)) {
		instance_create_layer(display_get_width() / 2, display_get_height() / 2, "GUI", obj_try_again);
	}
}