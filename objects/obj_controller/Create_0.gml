// Initialize global variables
global.game_is_paused = false;  // Game starts unpaused

// Create non-visible objects
instance_create_layer(0, 0, "Controllers", obj_hint_controller); // Create obj_hint_controller
instance_create_layer(0, 0, "Controllers", obj_grid);            // Create obj_grid
instance_create_layer(0, 0, "Controllers", obj_timer_down);      // Create obj_timer_down
