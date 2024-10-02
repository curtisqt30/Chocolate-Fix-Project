function lp_draw_pieces(panel){
	for (var i = 0; i < array_length(panel); i++) {
		var sprite = panel[i][0];
		var x_pos = panel[i][1];
		var y_pos = panel[i][2];
        
		// Only draw the sprite if it is not null
        if (sprite != undefined) {
            draw_sprite(sprite, 0, x_pos, y_pos);
        }
	}
}