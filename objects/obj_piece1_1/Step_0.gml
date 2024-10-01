if (dragging) {
	x = mouse_x;
	y = mouse_y;
}

// Calculate the row and column where the object is located
global.object_row = floor((y - global.grid_y) / global.cell_height);
global.object_col = floor((x - global.grid_x) / global.cell_width);


//if (global.object_row == 0 && global.object_col == 1) {
//    // The object is in cell (1, 1)
//    show_debug_message("Object is in the center cell.");
//}

