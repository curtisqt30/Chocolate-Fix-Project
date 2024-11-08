// Check if the game is paused
if (global.game_is_paused) {
    return;  
}

// Decrement the timer if not paused
if (timer > 0) {
    timer -= 1;
} else {
    timer = 0;  
}
