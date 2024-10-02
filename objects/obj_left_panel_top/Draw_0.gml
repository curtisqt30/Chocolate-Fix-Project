// Settings for partial puzzle pieces
var piece_size = 69;   // Size of each puzzle piece (adjust if needed)
var x_offset = 130;
var y_offset = 150;

var pieces_per_row = 3; // Number of puzzle pieces per row in the side panel
var side_pieces = 9;    // Total number of pieces on the side

// 0 = Full 9x9, 1 = Short T
var set_shape = 1;

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

// Draw the horizontal top of the T
if (set_shape == 1) {
	for (var i = 0; i < 3; i++) { // Three pieces for the top row
	    var x_pos = x_offset + (i * piece_size);
	    var y_pos = y_offset;

	    draw_sprite(spr_tile1_small, i, x_pos, y_pos); // Draw the top pieces
	}
}

// Draw the vertical stem of the T
var stem_x_pos = x_offset + (1 * piece_size); // Center the stem piece
var stem_y_pos = y_offset + piece_size; // Below the top row

draw_sprite(spr_tile1_small, 3, stem_x_pos, stem_y_pos); // Draw the stem piece


// hardcoded for now but will make some sort of algorithm that 
// takes a variable intead of the direct sprite
draw_sprite(spr_blue_circle_small, 0, 130, 150); // grid pos 1  
draw_sprite(spr_blue_diamond_small, 0, 199, 150); // grid pos 2
draw_sprite(spr_blue_diamond_small, 0, 268, 150); // grid pos 3
draw_sprite(spr_blue_diamond_small, 0, 130, 219); // grid pos 4
draw_sprite(spr_blue_diamond_small, 0, 199, 219); // grid pos 5
draw_sprite(spr_blue_diamond_small, 0, 268, 219); // grid pos 6
draw_sprite(spr_blue_diamond_small, 0, 130, 288); // grid pos 7
draw_sprite(spr_blue_diamond_small, 0, 199, 288); // grid pos 8
draw_sprite(spr_blue_star_small, 0 , 268, 288); // grid pos 9
