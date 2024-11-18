// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Get the current room name and determine the level
function get_current_level() {
    var room_name = room_get_name(room);
    if (room_name == "rm_level_1") return 1;
    if (room_name == "rm_level_2") return 2;
    if (room_name == "rm_level_3") return 3;
    return 0; // Default level for unknown rooms
}
