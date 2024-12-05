draw_set_font(fnt_timer);

var x_start = 690; 
var y_start = 50;
var x_step = 0; 
var y_step = 110;  

for (var i = 0; i < array_length(global.fastest_times); i++) {
    // Get the fastest
    var fastest_time = global.fastest_times[i];

    // Format
    if (fastest_time != -1) {
        var minutes = floor(fastest_time / (room_speed * 60));
        var seconds = floor((fastest_time / room_speed) % 60);

        var formatted_minutes = (minutes < 10 ? "0" + string(minutes) : string(minutes));
        var formatted_seconds = (seconds < 10 ? "0" + string(seconds) : string(seconds));
        var formatted_time = formatted_minutes + ":" + formatted_seconds;
    } else {
        var formatted_time = "--:--"; // Default display
    }

    // Calculate X and Y positions for this level
    var x_position = x_start + (i * x_step);
    var y_position = y_start + (i * y_step);

    // Draw the text
    draw_text(x_position, y_position, "Level " + string(i + 1) + " fastest time: " + formatted_time);
}
