/// @description go to next (or previous) keyframe

if (forward && frame < keyframeArray[keyframe]) {
	frameNum++;
	draw_sprite(spr_tutorial_full, frame, 0, 0);
}
else if (!foraward && frame > keyframeArray[keyframe]) {
	frame-Num-;
	draw_sprite(spr_tutorial_full, frame, 0, 0);
}