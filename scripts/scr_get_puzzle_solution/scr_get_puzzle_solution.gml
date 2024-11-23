// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_puzzle_solution(level){
	switch (level) {
		case 1:
			//	just adjust the row and col for each respective sprite for solutions
			return [
                { piece: obj_piece1_circle, row: 1, col: 0 },
                { piece: obj_piece2_circle, row: 0, col: 2 },
                { piece: obj_piece3_circle, row: 1, col: 2 },
                { piece: obj_piece1_square, row: 2, col: 0 },
                { piece: obj_piece2_square, row: 1, col: 1 },
                { piece: obj_piece3_square, row: 2, col: 1 },
                { piece: obj_piece1_triangle, row: 2, col: 2 },
                { piece: obj_piece2_triangle, row: 0, col: 1 },
                { piece: obj_piece3_triangle, row: 0, col: 0 }
            ];
		case 2:
			return [
				{ piece: obj_piece1_circle, row: 2, col: 2 },
                { piece: obj_piece2_circle, row: 2, col: 0 },
                { piece: obj_piece3_circle, row: 2, col: 1 },
                { piece: obj_piece1_square, row: 1, col: 2 },
                { piece: obj_piece2_square, row: 0, col: 1 },
                { piece: obj_piece3_square, row: 0, col: 2 },
                { piece: obj_piece1_triangle, row: 0, col: 0 },
                { piece: obj_piece2_triangle, row: 1, col: 0 },
                { piece: obj_piece3_triangle, row: 1, col: 1 }
			];
		case 3:
			return [
				{ piece: obj_piece1_circle, row: 1, col: 0 },
                { piece: obj_piece2_circle, row: 2, col: 2 },
                { piece: obj_piece3_circle, row: 2, col: 1 },
                { piece: obj_piece1_square, row: 0, col: 0 },
                { piece: obj_piece2_square, row: 2, col: 0 },
                { piece: obj_piece3_square, row: 1, col: 1 },
                { piece: obj_piece1_triangle, row: 0, col: 1 },
                { piece: obj_piece2_triangle, row: 1, col: 2 },
                { piece: obj_piece3_triangle, row: 0, col: 2 }
			];
		case 4:
			return [
				{ piece: obj_piece1_circle, row: 0, col: 0 },
                { piece: obj_piece2_circle, row: 1, col: 2 },
                { piece: obj_piece3_circle, row: 2, col: 2 },
                { piece: obj_piece1_square, row: 0, col: 1 },
                { piece: obj_piece2_square, row: 0, col: 2 },
                { piece: obj_piece3_square, row: 1, col: 1 },
                { piece: obj_piece1_triangle, row: 2, col: 0 },
                { piece: obj_piece2_triangle, row: 2, col: 1 },
                { piece: obj_piece3_triangle, row: 1, col: 0 }
			];
		default:
			return [];
	}
}