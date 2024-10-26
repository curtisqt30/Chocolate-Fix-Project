function solution_3x3_1(){
	global.solved = true;
	
	if (obj_piece1_circle.object_row != 1 || obj_piece1_circle.object_col != 0) {
		global.solved = false;
    }
    if (obj_piece2_circle.object_row != 0 || obj_piece2_circle.object_col != 2) {
        global.solved = false;
    }
    if (obj_piece3_circle.object_row != 1 || obj_piece3_circle.object_col != 2) {
        global.solved = false;
    }
	if (obj_piece1_square.object_row != 2 || obj_piece1_square.object_col != 0) {
        global.solved = false;
    }
	if (obj_piece2_square.object_row != 1 || obj_piece2_square.object_col != 1) {
        global.solved = false;
    }
	if (obj_piece3_square.object_row != 2 || obj_piece3_square.object_col != 1) {
        global.solved = false;
    }
	if (obj_piece1_triangle.object_row != 2 || obj_piece1_triangle.object_col != 2) {
        global.solved = false;
    }
	if (obj_piece2_triangle.object_row != 0 || obj_piece2_triangle.object_col != 1) {
        global.solved = false;
    }
	if (obj_piece3_triangle.object_row != 0 || obj_piece3_triangle.object_col != 0) {
        global.solved = false;
    }

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
		
		instance_create_layer(room_width / 2, room_height / 2, "GUI", obj_level_solved);
   }
}