function draw_hint_pieces(hint){
	for (var i = 0; i < array_length(hint); i++) {
		var sprite = hint[i][0];
		var x_pos = hint[i][1];
		var y_pos = hint[i][2];
        
		// Only draw the sprite if it is not null
        if (sprite != undefined) {
            draw_sprite(sprite, 0, x_pos, y_pos);
        }
	}
}