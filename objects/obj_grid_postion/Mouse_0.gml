
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
	case 4:
		instance_create_depth(x, y, depth, obj_piece4);
		break;
	case 5:
		instance_create_depth(x, y, depth, obj_piece5);
		break;
	case 6:
		instance_create_depth(x, y, depth, obj_piece6);
		break;
	case 7:
		instance_create_depth(x, y, depth, obj_piece7);
		break;
	case 8:
		instance_create_depth(x, y, depth, obj_piece8);
		break;
	case 9:
		instance_create_depth(x, y, depth, obj_piece9);
		break;
}

instance_destroy();