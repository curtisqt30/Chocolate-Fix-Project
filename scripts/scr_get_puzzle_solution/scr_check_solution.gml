function check_solution(level){
	var solution = get_puzzle_solution(level)
	global.solved = true;

    // If global.solved is still true, the puzzle is global.solved
    if (global.solved) {
        show_debug_message("Puzzle is solved!");
		if(instance_exists(obj_button_submit)) {
			instance_destroy(obj_button_submit);
		}
		if(instance_exists(obj_button_reset)) {
			instance_destroy(obj_button_reset);
		}
		if(instance_exists(obj_button_menu)) {
			instance_destroy(obj_button_menu);
		}
		
		//instance_create_layer(600, 50, "GUI", obj_level_solved);
		//instance_create_layer(0, 0, "GUI", obj_blur_bg)
		if(!instance_exists(obj_level_solved)) {
			layer_sequence_create("GUI", 600, 50, Sequence1);
		}

		return true;
	} else {
		return false;
	}
}
