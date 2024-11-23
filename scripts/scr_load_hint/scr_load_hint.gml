// This function stores all the hint data
	// Shape Settings
	// -1 = No shape
	// 0 = Full 9x9
		//  [x][x][x]
		//  [x][x][x]
		//  [x][x][x]
	// 1 = Short T upper
		//  [x][x][x]
		//  [ ][x][ ]
		//  [ ][ ][ ]
	// 2 = Short T upside down
		//  [ ][x][ ]
		//  [x][x][x]
		//  [ ][ ][ ]
	// 3 = Verticle Line left
		//  [x][ ][ ]
		//  [x][ ][ ]
		//  [x][ ][ ]
	// 4 = Verticle Line middle
		//  [ ][x][ ]
		//  [ ][x][ ]
		//  [ ][x][ ]
	// 5 = Verticle Line right
		//  [ ][ ][x]
		//  [ ][ ][x]
		//  [ ][ ][x]
	// 6 = Horizontal Rectangle
		//  [x][x][x]
		//  [x][x][x]
		//  [ ][ ][ ]
	// 7 =  Rectangle
		//  [x][x][ ]
		//  [x][x][ ]
		//  [x][x][ ]
	// 8 = Horizontal line top
		//  [x][x][x]
		//  [ ][ ][ ]
		//  [ ][ ][ ]
	// 9 = Horizontal line middle
		//  [ ][ ][ ]
		//  [x][x][x]
		//  [ ][ ][ ]
	// 10 = Horizontal line bottom
		//  [ ][ ][ ]
		//  [ ][ ][ ]
		//  [x][x][x]
	// 11 = Diagonal Left (\)
		//  [x][ ][ ]
		//  [ ][x][ ]
		//  [ ][ ][x]
	// 12 = Diagonal Right (/)
		//  [ ][ ][x]
		//  [ ][x][ ]
		//  [x][ ][ ]
	// 13 = Plus (+)
		//  [ ][x][ ]
		//  [x][x][x]
		//  [ ][x][ ]
	// 14 = Cube
		//  [x][x][ ]
		//  [x][x][ ]
		//  [ ][ ][ ]
	// Planned Shapes: tetris z shape, L shape, side ways T, upside down T, sideways short t
	
	
function load_hint(level){
	switch (level) {
	case 0:
		// Set Shapes
		global.hint_shape_1 = 0;
		global.hint_shape_2 = 0;
		global.hint_shape_3 = 0;
		
		// Set hint 1 pieces
		global.hint1 = [
			[undefined, 130, 150], // pos 1
			[undefined, 199, 150], // pos 2
			[undefined, 268, 150], // pos 3
			[undefined, 130, 219], // pos 4 
			[undefined, 199, 219], // pos 5
			[undefined, 268, 219], // pos 6
			[undefined, 130, 288], // pos 7
			[undefined, 199, 288], // pos 8
			[undefined, 268, 288], // pos 9
		]

		// Set hint 2 pieces
		global.hint2 = [
			[undefined, 130, 450], // pos 1
			[undefined, 199, 450], // pos 2
			[undefined, 268, 450], // pos 3
			[undefined, 130, 519], // pos 4
			[undefined, 199, 519], // pos 5
			[undefined, 268, 519], // pos 6
			[undefined, 130, 588], // pos 7
			[undefined, 199, 588], // pos 8
			[undefined, 268, 588], // pos 9
		]

		// Set hint 3 pieces
		global.hint3 = [
			[undefined, 130, 750], // pos 1
			[undefined, 199, 750], // pos 2
			[undefined, 268, 750], // pos 3
			[undefined, 130, 819], // pos 4
			[undefined, 199, 819], // pos 5
			[undefined, 268, 819], // pos 6
			[undefined, 130, 888], // pos 7
			[undefined, 199, 888], // pos 8
			[undefined, 268, 888], // pos 9
		]
	break;
	
	case 1:
		// Set Shapes
		global.hint_shape_1 = 0;
		global.hint_shape_2 = 13;
		global.hint_shape_3 = 11;
		
		// Set hint 1 pieces
		global.hint1 = [
			[undefined, 130, 150], // pos 1
			[undefined, 199, 150], // pos 2
			[spr_hint_pink_circle, 268, 150], // pos 3
			[undefined, 130, 219], // pos 4 
			[spr_hint_pink_square, 199, 219], // pos 5
			[undefined, 268, 219], // pos 6
			[spr_hint_orange_square, 130, 288], // pos 7
			[undefined, 199, 288], // pos 8
			[undefined, 268, 288], // pos 9
		]

		// Set hint 2 pieces
		global.hint2 = [
			[undefined, 130, 450], // pos 1
			[spr_hint_pink_triangle, 199, 450], // pos 2
			[undefined, 268, 450], // pos 3
			[spr_hint_orange_circle, 130, 519], // pos 4
			[undefined, 199, 519], // pos 5
			[spr_hint_yellow_circle, 268, 519], // pos 6
			[undefined, 130, 588], // pos 7
			[undefined, 199, 588], // pos 8
			[undefined, 268, 588], // pos 9
		]

		// Set hint 3 pieces
		global.hint3 = [
			[spr_hint_yellow_triangle, 130, 750], // pos 1
			[undefined, 199, 750], // pos 2
			[undefined, 268, 750], // pos 3
			[undefined, 130, 819], // pos 4
			[undefined, 199, 819], // pos 5
			[undefined, 268, 819], // pos 6
			[undefined, 130, 888], // pos 7
			[undefined, 199, 888], // pos 8
			[spr_hint_orange_triangle, 268, 888], // pos 9
		]
	break;
	
	case 2:
		// Set Shapes
		global.hint_shape_1 = 0;  // Full 9x9
		global.hint_shape_2 = 2;  // Short T bottom
		global.hint_shape_3 = -1; // no hint
		
		// Set hint 1 pieces
		global.hint1 = [
			[spr_hint_orange_triangle, 130, 150], // pos 1
			[undefined, 199, 150], // pos 2
			[spr_hint_yellow_square, 268, 150], // pos 3
			[undefined, 130, 219], // pos 4 
			[spr_hint_triangle, 199, 219], // pos 5 - Triangle shape
			[undefined, 268, 219], // pos 6 
			[spr_hint_pink, 130, 288], // pos 7 - Pink Color
			[spr_hint_yellow, 199, 288], // pos 8 - Yellow Color
			[spr_hint_orange, 268, 288], // pos 9 - Orange Color
		]

		// Set hint 2 pieces
		global.hint2 = [
			[undefined, 130, 450], // pos 1
			[spr_hint_pink_square, 199, 450], // pos 2
			[undefined, 268, 450], // pos 3
			[spr_hint_pink_triangle, 130, 519], // pos 4
			[spr_hint_yellow, 199, 519], // pos 5
			[spr_hint_orange_square, 268, 519], // pos 6
			[undefined, 130, 588], // pos 7
			[undefined, 199, 588], // pos 8
			[undefined, 268, 588], // pos 9
		]

		// Set hint 3 pieces - No 3rd hint
		global.hint3 = [
			[undefined, 130, 750], // pos 1
			[undefined, 199, 750], // pos 2
			[undefined, 268, 750], // pos 3
			[undefined, 130, 819], // pos 4
			[undefined, 199, 819], // pos 5
			[undefined, 268, 819], // pos 6
			[undefined, 130, 888], // pos 7
			[undefined, 199, 888], // pos 8
			[undefined, 268, 888], // pos 9
		]
	break;
	
	case 3:
		// Set Shapes
		global.hint_shape_1 = 14;  // Cube
		global.hint_shape_2 = 14;  // Cube
		global.hint_shape_3 = 8; // Horizontal Line
		
		// Set hint 1 pieces
		global.hint1 = [
			[spr_hint_yellow_square, 130, 150], // pos 1
			[spr_hint_pink_triangle, 199, 150], // pos 2
			[undefined, 268, 150], // pos 3
			[spr_hint_yellow_circle, 130, 219], // pos 4 
			[spr_hint_pink_circle, 199, 219], // pos 5
			[undefined, 268, 219], // pos 6 
			[undefined, 130, 288], // pos 7
			[undefined, 199, 288], // pos 8
			[undefined, 268, 288], // pos 9
		]

		// Set hint 2 pieces
		global.hint2 = [
			[spr_hint_orange_square, 130, 150], // pos 1
			[spr_hint_orange_circle, 199, 150], // pos 2
			[undefined, 268, 150], // pos 3
			[spr_hint_orange_triangle, 130, 219], // pos 4 
			[spr_hint_yellow_square, 199, 219], // pos 5
			[undefined, 268, 219], // pos 6 
			[undefined, 130, 288], // pos 7
			[undefined, 199, 288], // pos 8
			[undefined, 268, 288], // pos 9
		]

		// Set hint 3 pieces
		global.hint3 = [
			[spr_hint_pink, 130, 750], // pos 1
			[spr_hint_yellow, 199, 750], // pos 2
			[spr_hint_pink, 268, 750], // pos 3
			[undefined, 130, 819], // pos 4
			[undefined, 199, 819], // pos 5
			[undefined, 268, 819], // pos 6
			[undefined, 130, 888], // pos 7
			[undefined, 199, 888], // pos 8
			[undefined, 268, 888], // pos 9
		]
		break;
		
		case 4:
			// Set Shapes
		global.hint_shape_1 = 0;  // 3x3
		global.hint_shape_2 = 6;  // Horixontal Rectangle
		global.hint_shape_3 = 7;  // Veritcal Rectangle
		
		// Set hint 1 pieces
		global.hint1 = [
			[undefined, 130, 150], // pos 1
			[spr_hint_orange, 199, 150], // pos 2
			[spr_hint_square, 268, 150], // pos 3
			[spr_hint_triangle, 130, 219], // pos 4 
			[undefined, 199, 219], // pos 5
			[undefined, 268, 219], // pos 6 
			[spr_hint_triangle, 130, 288], // pos 7
			[spr_hint_triangle, 199, 288], // pos 8
			[undefined, 268, 288], // pos 9
		]

		// Set hint 2 pieces
		global.hint2 = [
			[undefined, 130, 150], // pos 1
			[undefined, 199, 150], // pos 2
			[spr_hint_pink, 268, 150], // pos 3
			[spr_hint_yellow, 130, 219], // pos 4 
			[spr_hint_square, 199, 219], // pos 5
			[spr_hint_pink, 268, 219], // pos 6 
			[undefined, 130, 288], // pos 7
			[undefined, 199, 288], // pos 8
			[undefined, 268, 288], // pos 9
		]

		// Set hint 3 pieces
		global.hint3 = [
			[spr_hint_orange, 130, 750], // pos 1
			[spr_hint_square, 199, 750], // pos 2
			[undefined, 268, 750], // pos 3
			[undefined, 130, 819], // pos 4
			[undefined, 199, 819], // pos 5
			[undefined, 268, 819], // pos 6
			[undefined, 130, 888], // pos 7
			[spr_hint_pink, 199, 888], // pos 8
			[undefined, 268, 888], // pos 9
		]
		break;
	}
}