// Initialize global variables
global.game_is_paused = false;  // Game starts unpaused
global.level = 1; // Set the room level

// Set the hints for level
hint_generator(global.level);

// Create non-visible objects
instance_create_layer(0, 0, "Controllers", obj_grid);            // Create obj_grid
instance_create_layer(0, 0, "Controllers", obj_timer_down);      // Create obj_timer_down
