// This function stores all the hint data
	// Shape Settings
	// -1 = No shape
	// 0 = Full 9x9
	// 1 = Short T upper
	// 2 = Short T bot tom
	// 3 = Verticle Line left
	// 4 = Verticle Line middle
	// 5 = Verticle Line right
	// 6 = Upper Rectangle
	// 7 = Lower Rectangle
	// 8 = Horizontal line top
	// 9 = Horizontal line middle
	// 10 = Horizontal line bottom
	// 11 = Diagonal Left (\)
	// 12 = Diagonal Right (/)
	// 13 = Plus (+)
	// Planned Shapes: tetris z shape, L shape, side ways T, cube, upside down T, sideways short t
	
	
function load_hint(level){
	if (level == 0) {
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
	} 
	if (level == 1) {
		// Set Shapes
		global.hint_shape_1 = 0;
		global.hint_shape_2 = 13;
		global.hint_shape_3 = 11;
		
		// Set hint 1 pieces
		global.hint1 = [
			[undefined, 130, 150], // pos 1
			[undefined, 199, 150], // pos 2
			[spr_pink_circle_small, 268, 150], // pos 3
			[undefined, 130, 219], // pos 4 
			[spr_pink_square_small, 199, 219], // pos 5
			[undefined, 268, 219], // pos 6
			[spr_orange_square_small, 130, 288], // pos 7
			[undefined, 199, 288], // pos 8
			[undefined, 268, 288], // pos 9
		]

		// Set hint 2 pieces
		global.hint2 = [
			[undefined, 130, 450], // pos 1
			[spr_pink_triangle_small, 199, 450], // pos 2
			[undefined, 268, 450], // pos 3
			[spr_orange_circle_small, 130, 519], // pos 4
			[undefined, 199, 519], // pos 5
			[spr_yellow_circle_small, 268, 519], // pos 6
			[undefined, 130, 588], // pos 7
			[undefined, 199, 588], // pos 8
			[undefined, 268, 588], // pos 9
		]

		// Set hint 3 pieces
		global.hint3 = [
			[spr_yellow_triangle_small, 130, 750], // pos 1
			[undefined, 199, 750], // pos 2
			[undefined, 268, 750], // pos 3
			[undefined, 130, 819], // pos 4
			[undefined, 199, 819], // pos 5
			[undefined, 268, 819], // pos 6
			[undefined, 130, 888], // pos 7
			[undefined, 199, 888], // pos 8
			[spr_orange_triangle_small, 268, 888], // pos 9
		]
	} else 	if (level == 2) {
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
	}
}