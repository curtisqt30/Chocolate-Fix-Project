// Function that creates the shape
function draw_hint_shape(shape_type, x_offset, y_offset, piece_size) {
	
	// Early exit condition - No shape
	if (shape_type == -1) {
		return;
	}
	
	switch (shape_type) {
		//  [x][x][x]
		//  [x][x][x]
		//  [x][x][x]
		case 0: // Full 3x3 Grid
			for (var i = 0; i < 9; i++) {
                var x_pos = x_offset + (i mod 3) * piece_size;
                var y_pos = y_offset + floor(i / 3) * piece_size;
                draw_sprite(global.hint_tile, i, x_pos, y_pos);	
			}
		break;
		//  [x][x][x]
		//  [ ][x][ ]
		//  [ ][ ][ ]
		case 1: // Short t shape (top) 
            for (var i = 0; i < 3; i++) {
                var x_pos = x_offset + (i * piece_size);
                var y_pos = y_offset;
                draw_sprite(global.hint_tile, i, x_pos, y_pos);
            }
            var stem_x_pos = x_offset + piece_size; // Center the stem piece
            var stem_y_pos = y_offset + piece_size;
            draw_sprite(global.hint_tile, 3, stem_x_pos, stem_y_pos);
        break;
		
		case 2: // Upside Down Short T shape (bottom)
			//  [ ][x][ ]
			//  [x][x][x]
			//  [ ][ ][ ]
            // Draw the row of the T shape
            for (var i = 0; i < 3; i++) {
                var x_pos = x_offset + (i * piece_size);
                var y_pos = y_offset + piece_size; // Lower the whole shape by one row
                draw_sprite(global.hint_tile, i, x_pos, y_pos);
            }
            // Draw the stem of the T one row lower
            var stem_x_pos = x_offset + piece_size; // Center the stem piece
            var stem_y_pos = y_offset; // Position the stem two rows down
            draw_sprite(global.hint_tile, 3, stem_x_pos, stem_y_pos);
        break;
		
        case 3: // Vertical line down the left
			//  [x][ ][ ]
			//  [x][ ][ ]
			//  [x][ ][ ]
            // Draw a vertical line down the left side
            for (var i = 0; i < 3; i++) { // Adjust 3 to change the height of the line
                var x_pos = x_offset; // Keep x_pos at the left edge
                var y_pos = y_offset + (i * piece_size); // Increment y_pos for each segment
                draw_sprite(global.hint_tile, 0, x_pos, y_pos);
            }
        break;
		
		case 4: // Vertical line down the middle
            // Draw a vertical line down the middle
            for (var i = 0; i < 3; i++) { // Adjust 3 to change the height of the line
                var x_pos = x_offset + piece_size; // Center the line 
                var y_pos = y_offset + (i * piece_size); // Increment y_pos for each segment
                draw_sprite(global.hint_tile, 0, x_pos, y_pos); 
            }
        break;
		
		case 5: // Vertical line down the right
            // Draw a vertical line down the right
            for (var i = 0; i < 3; i++) { // Adjust 3 to change the height of the line
                var x_pos = x_offset + (2 * piece_size); // Right side (2 pieces size over)
                var y_pos = y_offset + (i * piece_size); // Increment y_pos for each segment
                draw_sprite(global.hint_tile, 0, x_pos, y_pos)
            }
        break;
		
		case 6: // Horizontal rectangle
			//  [x][x][x]
			//  [x][x][x]
			//  [ ][ ][ ]
            // Draw a rectangle in the upper portion
            for (var i = 0; i < 6; i++) { // 6 pieces for a 2x3 rectangle
                var x_pos = x_offset + (i mod 3) * piece_size; // Calculate x position
                var y_pos = y_offset + floor(i / 3) * piece_size; // Calculate y position (only one row)
                draw_sprite(global.hint_tile, i, x_pos, y_pos);
            }
        break;
		
		case 7: // Vertical rectangle
			//  [x][x][ ]
			//  [x][x][ ]
			//  [x][x][ ]
            // Draw a rectangle
            for (var i = 0; i < 6; i++) { // 6 pieces for a 2x3 rectangle
                var x_pos = x_offset + floor(i / 3) * piece_size; // Calculate x position
                var y_pos = y_offset + (i mod 3) * piece_size; // Position it one row lower
                draw_sprite(global.hint_tile, i, x_pos, y_pos);
            }
        break;
		
		case 8: // Horizontal line top
			for (var i = 0; i < 3; i++) {
	            var x_pos = x_offset + (i * piece_size);
	            var y_pos = y_offset; // Y position stays the same for the top row
	            draw_sprite(global.hint_tile, i, x_pos, y_pos);
			}
		break;
		
		case 9: // Horizontal line middle
			for (var i = 0; i < 3; i++) {
	            var x_pos = x_offset + (i * piece_size);
	            var y_pos = y_offset + piece_size; // One level down from the top
	            draw_sprite(global.hint_tile, i, x_pos, y_pos);
			}
		break;

		case 10: // Horizontal line bottom
		    for (var i = 0; i < 3; i++) {
		        var x_pos = x_offset + (i * piece_size);
		        var y_pos = y_offset + 2 * piece_size; // Two levels down for the bottom row
		        draw_sprite(global.hint_tile, i, x_pos, y_pos);
		    }
		break;
		
		case 11: // Diagonal Left
			for (var i = 0; i < 3; i++) {
				var x_pos = x_offset + i * piece_size;
				var y_pos = y_offset + i * piece_size;
				draw_sprite(global.hint_tile, 0, x_pos, y_pos); // Top-left to bottom-right diagonal
			}
		break;
		
		case 12: // Diagonal Right
			for (var i = 0; i < 3; i++) {
				var x_pos = x_offset + (2 - i) * piece_size; // Adjust x position for reverse diagonal
				var y_pos = y_offset + i * piece_size;
				draw_sprite(global.hint_tile, 0, x_pos, y_pos); // Top-right to bottom-left diagonal
			}
		break;
		
		case 13: // Plus sign
			// Horizontal middle line 
			for (var i = 0; i < 3; i++) {
				var x_pos = x_offset + (i * piece_size);
				var y_pos = y_offset + piece_size; // Middle row
				draw_sprite(global.hint_tile, i, x_pos, y_pos);
			}
			// Vertical middle line 
			for (var i = 0; i < 3; i += 2) { // Skip the middle row 
				var x_pos = x_offset + piece_size; // Middle column
				var y_pos = y_offset + (i * piece_size); // Top and bottom
				draw_sprite(global.hint_tile, i, x_pos, y_pos);
			}
		break;
		
		case 14: // Cube
			//  [x][x][ ]
			//  [x][x][ ]
			//  [ ][ ][ ]
            for (var i = 0; i < 4; i++) { // 6 pieces for a 2x3 rectangle
                var x_pos = x_offset + (i mod 2) * piece_size; // Calculate x position
                var y_pos = y_offset + piece_size + floor(i / 2) * piece_size; // Position it one row lower
                draw_sprite(global.hint_tile, i, x_pos, y_pos);
            }
		
		break;
	}
}