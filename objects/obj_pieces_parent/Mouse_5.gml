if (global.game_is_paused || global.is_object_selected == false || selected_object == noone) {
    // Do nothing, ignore input while paused
    exit;
}

// Check which grid col the piece is in
if		(selected_object.x >= global.grid_x + (global.cell_width * 0) && selected_object.x <  global.grid_x + (global.cell_width * 1)) {	
	selected_object.object_col = 0
} 
else if (selected_object.x >= global.grid_x + (global.cell_width * 1) && selected_object.x <  global.grid_x + (global.cell_width * 2)) {	
	selected_object.object_col = 1
}
else if (selected_object.x >= global.grid_x + (global.cell_width * 2) && selected_object.x <= global.grid_x + (global.cell_width * 3)) {	
	selected_object.object_col = 2
}
else {
	selected_object.object_col = -1
}

// Check which grid row the piece is in
if		(selected_object.y >= global.grid_y + (global.cell_height * 0) && selected_object.y <  global.grid_y + (global.cell_height * 1)) {	
	selected_object.object_row = 0
} 
else if (selected_object.y >= global.grid_y + (global.cell_height * 1) && selected_object.y <  global.grid_y + (global.cell_height * 2)) {	
	selected_object.object_row = 1
}
else if (selected_object.y >= global.grid_y + (global.cell_height * 2) && selected_object.y <= global.grid_y + (global.cell_height * 3)) {	
	selected_object.object_row = 2
}
else {
	selected_object.object_row = -1
}

	// Check if piece is in the grid
if (object_col >= 0 && object_row >= 0) {

	// Get new location
	var cell_col = global.grid_x + (global.cell_width * selected_object.object_col) + (global.cell_width/2);
	var cell_row = global.grid_y + (global.cell_height * selected_object.object_row) + (global.cell_height/2);
	

	selected_object.x = cell_col;
	selected_object.y = cell_row;
	
}
else {
	selected_object.x = self.origin_x;
	selected_object.y = self.origin_y;
	selected_object.object_col = -1;
	selected_object.object_row = -1;
}

// selected_object.x = x;
// selected_object.y = y;

global.is_object_selected = false;
selected_object = noone;

if (global.sfx_enabled) {
	audio_play_sound(snd_piece_click2, 10, false);
}

