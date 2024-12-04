dragging = false;

// Calculate the row and column where the object is located
object_row = floor((y - global.grid_y) / global.cell_height);
object_col = floor((x - global.grid_x) / global.cell_width);
//show_debug_message("Row: " + string(global.object_row) + " Col: " + string(global.object_col));
//x = global.grid_x + (object_col * global.cell_width) + global.cell_width / 2;
//y = global.grid_y + (object_row * global.cell_height) + global.cell_height / 2;

//solution_3x3_1();