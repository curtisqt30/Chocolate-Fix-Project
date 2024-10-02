 // Settings for partial puzzle pieces
var piece_size = 69;   // Size of each puzzle piece (adjust if needed)
var pieces_per_row = 3; // Number of puzzle pieces per row in the side panel
var side_pieces = 9;    // Total number of pieces on the side

var x_offset = 130;
var y_offset = 750;


// Loop through the side pieces to draw them in a grid (no offset)
 for (var i = 0; i < side_pieces; i++) {
    // Calculate the position for each piece in a 3x3 grid
    var x_pos = x_offset + (i mod pieces_per_row) * piece_size;
    var y_pos = y_offset + floor(i / pieces_per_row) * piece_size;
    
    // Draw the partial puzzle piece (adjust the sprite and subimage as needed)
    draw_sprite(spr_tile1_small, i, x_pos, y_pos);
} 

draw_sprite(spr_blue_circle_small, 0, 130, 750); // grid pos 1  
draw_sprite(spr_blue_diamond_small, 0, 199, 750); // grid pos 2
draw_sprite(spr_yellow_diamond_small, 0, 268, 750); // grid pos 3
draw_sprite(spr_blue_diamond_small, 0, 130, 819); // grid pos 4
draw_sprite(spr_blue_diamond_small, 0, 199, 819); // grid pos 5
draw_sprite(spr_blue_diamond_small, 0, 268, 819); // grid pos 6
draw_sprite(spr_pink_diamond_small, 0, 130, 888); // grid pos 7
draw_sprite(spr_blue_diamond_small, 0, 199, 888); // grid pos 8
draw_sprite(spr_blue_star_small, 0, 268, 888); // grid pos 9 