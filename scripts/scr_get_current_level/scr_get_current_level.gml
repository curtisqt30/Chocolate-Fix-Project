// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Get the current room name and determine the level
function get_current_level() {
    var room_name = room_get_name(room);
    if (room_name == "rm_level_1") return 1;
    if (room_name == "rm_level_2") return 2;
    if (room_name == "rm_level_3") return 3;
	if (room_name == "rm_level_4") return 4;
	if (room_name == "rm_level_5") return 5;
	if (room_name == "rm_level_6") return 6;
	if (room_name == "rm_level_7") return 7;
	if (room_name == "rm_level_8") return 8;
    return 0; // Default level for unknown rooms
}
