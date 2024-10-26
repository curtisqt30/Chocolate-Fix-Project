function check_function() {
    // Calculate the cell index based on row and column.
    var index = global.object_row * 3 + global.object_col;
    
    switch (index) {
        case 0:
            show_debug_message("Object is in the first cell.");
            break;
        case 1:
            show_debug_message("Object is in the second cell.");
            break;
        case 2:
            show_debug_message("Object is in the third cell.");
            break;
        case 3:
            show_debug_message("Object is in the fourth cell.");
            break;
        case 4:
            show_debug_message("Object is in the fifth cell.");
            break;
        case 5:
            show_debug_message("Object is in the sixth cell.");
            break;
        case 6:
            show_debug_message("Object is in the seventh cell.");
            break;
        case 7:
            show_debug_message("Object is in the eighth cell.");
            break;
        case 8:
            show_debug_message("Object is in the ninth cell.");
            break;
        default:
            show_debug_message("Object is out of bounds.");
            break;
    }
}