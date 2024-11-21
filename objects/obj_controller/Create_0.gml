// Initialize global variables
global.game_is_paused = false;  // Game starts unpaused
var level = get_current_level() // Set the room level

// Set the hints for level
hint_generator(level);

// Create non-visible objects
instance_create_layer(0, 0, "Controllers", obj_grid);            // Create obj_grid
instance_create_layer(0, 0, "Controllers", obj_timer_up);      // Create obj_timer
