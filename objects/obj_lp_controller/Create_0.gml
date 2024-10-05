// Shape Settings
// -1 = No shape
// 0 = Full 9x9
// 1 = Short T upper
// 2 = Short T bottom
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
global.lp_shape_1 = 13;
global.lp_shape_2 = 11;
global.lp_shape_3 = 12;

// Room position settings
global.lp_x_offset = 130;
global.lp_y_offset = 150;

// Size settings
global.lp_piece_size = 69;

instance_create_layer(0,0,"Instances",obj_lp_1)
instance_create_layer(0,0,"Instances",obj_lp_2)
instance_create_layer(0,0,"Instances",obj_lp_3)


// Piece Rendering Settings
// Undefined = NULL (no sprite)

// panel layout 1 
global.panel1 = [
	[spr_blue_diamond_small, 130, 150], // pos 1
	[spr_blue_diamond_small, 199, 150], // pos 2
	[spr_blue_diamond_small, 268, 150], // pos 3
	[spr_blue_diamond_small, 130, 219], // pos 4
	[undefined, 199, 219], // pos 5
	[spr_blue_diamond_small, 268, 219], // pos 6
	[undefined, 130, 288], // pos 7
	[spr_blue_diamond_small, 199, 288], // pos 8
	[spr_blue_diamond_small, 268, 288], // pos 9
]

// panel layout 2
global.panel2 = [
	[spr_blue_diamond_small, 130, 450], // pos 1
	[spr_blue_diamond_small, 199, 450], // pos 2
	[spr_blue_diamond_small, 268, 450], // pos 3
	[spr_blue_diamond_small, 130, 519], // pos 4
	[spr_yellow_diamond_small, 199, 519], // pos 5
	[spr_blue_diamond_small, 268, 519], // pos 6
	[spr_pink_circle_small, 130, 588], // pos 7
	[spr_blue_diamond_small, 199, 588], // pos 8
	[spr_blue_diamond_small, 268, 588], // pos 9
]

// panel layout 3
global.panel3 = [
	[undefined, 130, 750], // pos 1
	[undefined, 199, 750], // pos 2
	[undefined, 268, 750], // pos 3
	[spr_blue_diamond_small, 130, 819], // pos 4
	[spr_yellow_diamond_small, 199, 819], // pos 5
	[spr_blue_diamond_small, 268, 819], // pos 6
	[spr_pink_circle_small, 130, 888], // pos 7
	[spr_blue_diamond_small, 199, 888], // pos 8
	[spr_blue_diamond_small, 268, 888], // pos 9
]