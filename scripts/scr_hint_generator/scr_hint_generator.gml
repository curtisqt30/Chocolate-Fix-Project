function hint_generator(level) {
	// Tile sprite
	global.hint_tile = spr_tile1_small; // currently set to test sprite, change later?

	// Room position settings
	global.hint_x_offset = 130;
	global.hint_y_offset = 150;

	// Size settings
	global.hint_piece_size = 69; // based on spr_tile1_small which is 69 by 69
	
	// Set the hint level
	load_hint(level);
	
	// Create hint objects
	instance_create_layer(0,0,"Instances",obj_hint_1)
	instance_create_layer(0,0,"Instances",obj_hint_2)
	instance_create_layer(0,0,"Instances",obj_hint_3)
}