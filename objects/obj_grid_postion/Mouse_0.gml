
switch(global.piece_type){
	case 1:
		instance_create_depth(x, y, depth, obj_piece1);
		break;
	case 2:
		instance_create_depth(x, y, depth, obj_piece2);
		break;
	case 3:
		instance_create_depth(x, y, depth, obj_piece3);
		break;
}

instance_destroy();