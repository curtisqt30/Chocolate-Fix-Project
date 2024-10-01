draw_set_color(c_white);

// Draw the grid
for (var _row = 0; _row < grid_rows; _row++) {
    for (var _col = 0; _col < grid_columns; _col++) {
        // Calculate the position of each cell
        var _cell_x = global.grid_x + _col * global.cell_width;
        var _cell_y = global.grid_y + _row * global.cell_height;

        // Draw the cell rectangle
        draw_rectangle(_cell_x, _cell_y, _cell_x + global.cell_width, _cell_y + global.cell_height, true);
    }
}
