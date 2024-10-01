if (dragging) {
    // Snap the object to the nearest grid cell
    x = grid_x + round((mouse_x - grid_x)) + cell_size;
    y = grid_y + round((mouse_y - grid_y)) + cell_size;
    
    dragging = false;
}