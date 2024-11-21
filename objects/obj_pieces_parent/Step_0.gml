if (selected_object) {
	x = mouse_x;
	y = mouse_y;
}

// Calculate the row and column where the object is located
object_row = floor((y - global.grid_y) / global.cell_height);
object_col = floor((x - global.grid_x) / global.cell_width);