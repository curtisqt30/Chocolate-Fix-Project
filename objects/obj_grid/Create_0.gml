// Define grid properties
global.grid_x = 400;         // X position of the top-left corner of the grid
global.grid_y = 100;         // Y position of the top-left corner of the grid
global.cell_width = 275;      // Width of each cell
global.cell_height = 275;     // Height of each cell
grid_columns = 3;     // Number of columns in the grid
grid_rows = 3;        // Number of rows in the grid

// Place objects in the grid cells
for (var _row = 0; _row < grid_rows; _row++) {
    for (var _col = 0; _col < grid_columns; _col++) {
        var _cell_x = global.grid_x + _col * global.cell_width;
        var _cell_y = global.grid_y + _row * global.cell_height;

        instance_create_layer(_cell_x, _cell_y, "Instances", obj_grid_tile_1);
    }
}
