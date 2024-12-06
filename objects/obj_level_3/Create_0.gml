if (global.unlocked_levels[2] == false) {
	instance_change(obj_locked, true);
	
}

if (!variable_global_exists("sfx_enabled")) {
    global.sfx_enabled = true;
}