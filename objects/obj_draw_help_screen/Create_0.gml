/// @description Insert description here
// You can write your code in this editor
tutorial_images = [
	Slide1,
	Slide2,
	Slide3,
	Slide4,
	Slide5,
	Slide6,
	Slide7,
	Slide7,
	Slide9,
	Slide10,
	Slide11,
	Slide12,
	Slide13,
	Slide14,
	Slide15,
	Slide16,
	Slide17,
	Slide18,
	Slide19,
	Slide20,
	Slide21,
	Slide22,
];

current_image_index = 0;
frame_speed = 0.2;

target_width = 1920;  
target_height = 1080; 

scale_x = target_width / sprite_get_width(tutorial_images[current_image_index]);
scale_y = target_height / sprite_get_height(tutorial_images[current_image_index]);
