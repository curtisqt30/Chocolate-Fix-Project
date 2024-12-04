/// @description Insert description here
// Increment timer each frame
if (!global.game_is_paused) {
   
    global.timer += 1;
}

if (keyboard_check_pressed(ord("N"))) {
    // Fetch the current level
    var level = get_current_level();

    // Get the solution for the level
    var solution = get_puzzle_solution(level);

    // Set each piece to its solution position
    for (var i = 0; i < array_length(solution); i++) {
        var piece_solution = solution[i];
        var piece = piece_solution.piece;
        piece.object_row = piece_solution.row;
        piece.object_col = piece_solution.col;
    }

    // Mark the puzzle as solved
    check_solution(level);
}
