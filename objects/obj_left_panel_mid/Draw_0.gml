 // Settings for partial puzzle pieces
var piece_size = 69;   // Size of each puzzle piece (adjust if needed)
var x_offset = 130;    // X offset for positioning
var y_offset = 450;    // Y offset for positioning

var pieces_per_row = 3; // Number of puzzle pieces per row in the side panel
var side_pieces = 9;    // Total number of pieces on the side

// Shape settings:
var set_shape = global.lp_2;

// Draw the full 9x9 grid
if (set_shape == 0) {
    for (var i = 0; i < side_pieces; i++) {
        // Calculate the position for each piece in a 3x3 grid
        var x_pos = x_offset + (i mod pieces_per_row) * piece_size;
        var y_pos = y_offset + floor(i / pieces_per_row) * piece_size;
        
        // Draw the partial puzzle piece (adjust the sprite and subimage as needed)
        draw_sprite(spr_tile1_small, i, x_pos, y_pos);
    }
}

// Draw the short top of the T
if (set_shape == 1) {
    for (var i = 0; i < 3; i++) { // Three pieces for the top row
        var x_pos = x_offset + (i * piece_size);
        var y_pos = y_offset;

        draw_sprite(spr_tile1_small, i, x_pos, y_pos); // Draw the top pieces
    }
    // Draw the vertical stem of the T
    var stem_x_pos = x_offset + (1 * piece_size); // Center the stem piece
    var stem_y_pos = y_offset + piece_size; // Below the top row

    draw_sprite(spr_tile1_small, 3, stem_x_pos, stem_y_pos); // Draw the stem piece
}

// Draw the inverted T
if (set_shape == 2) {
    var stem_x_pos = x_offset + (1 * piece_size);
    var stem_y_pos = y_offset;
    draw_sprite(spr_tile1_small, 0, stem_x_pos, stem_y_pos); // Draw top stem

    for (var i = 0; i < 3; i++) {
        var x_pos = x_offset + (i * piece_size);
        var y_pos = y_offset + piece_size;
        draw_sprite(spr_tile1_small, i + 1, x_pos, y_pos); // Draw bottom row
    }
}

// Draw the upper rectangle shape
if (set_shape == 3) {
    for (var i = 0; i < 6; i++) {
        var x_pos = x_offset + (i mod 3) * piece_size;
        var y_pos = y_offset + floor(i / 3) * piece_size;
        draw_sprite(spr_tile1_small, i, x_pos, y_pos); // Draw each piece
    }
}

// Draw the T shape
if (set_shape == 4) {
    for (var i = 0; i < 3; i++) {
        var x_pos = x_offset + (i * piece_size);
        var y_pos = y_offset;
        draw_sprite(spr_tile1_small, i, x_pos, y_pos); // Draw top row
    }
    for (var j = 0; j < 3; j++) {
        var x_pos = x_offset + piece_size;
        var y_pos = y_offset + (j * piece_size);
        draw_sprite(spr_tile1_small, j + 3, x_pos, y_pos); // Draw center column
    }
}

// Draw the left vertical rectangle
if (set_shape == 5) {
    for (var i = 0; i < 6; i++) {
        var x_pos = x_offset + (i % 2 == 0 ? 0 : piece_size);
        var y_pos = y_offset + floor(i / 2) * piece_size;
        draw_sprite(spr_tile1_small, i, x_pos, y_pos); // Draw each piece
    }
}

// Draw the plus shape
if (set_shape == 6) {
    // Fill top middle
    draw_sprite(spr_tile1_small, 0, x_offset + piece_size, y_offset); // (1, 2)
    
    // Fill middle row
    draw_sprite(spr_tile1_small, 1, x_offset, y_offset + piece_size); // (2, 1)
    draw_sprite(spr_tile1_small, 1, x_offset + piece_size, y_offset + piece_size); // (2, 2)
    draw_sprite(spr_tile1_small, 1, x_offset + 2 * piece_size, y_offset + piece_size); // (2, 3)

    // Fill bottom middle
    draw_sprite(spr_tile1_small, 0, x_offset + piece_size, y_offset + 2 * piece_size); // (3, 2)
}

// Draw the left vertical line shape
if (set_shape == 7) {
    // Fill left column
    draw_sprite(spr_tile1_small, 0, x_offset, y_offset); // (1, 1)
    draw_sprite(spr_tile1_small, 0, x_offset, y_offset + piece_size); // (2, 1)
    draw_sprite(spr_tile1_small, 0, x_offset, y_offset + 2 * piece_size); // (3, 1)
}

// hardcoded for now but will make some sort of algorithm that 
// takes a variable intead of the direct sprite
draw_sprite(spr_blue_circle_small, 0, 130, 450); // grid pos 1  
draw_sprite(spr_blue_diamond_small, 0, 199, 450); // grid pos 2
draw_sprite(spr_blue_diamond_small, 0, 268, 450); // grid pos 3
draw_sprite(spr_blue_diamond_small, 0, 130, 519); // grid pos 4
draw_sprite(spr_blue_diamond_small, 0, 199, 519); // grid pos 5
draw_sprite(spr_blue_diamond_small, 0, 268, 519); // grid pos 6
draw_sprite(spr_blue_diamond_small, 0, 130, 588); // grid pos 7
draw_sprite(spr_blue_diamond_small, 0, 199, 588); // grid pos 8
draw_sprite(spr_blue_star_small, 0 , 268, 588); // grid pos 9
