draw_set_font(fnt_timer);

// Calculate minutes and seconds
var minutes = floor(global.timer / (room_speed * 60));
var seconds = floor((global.timer / room_speed) % 60);

// Convert minutes and time to a format that looks like 00:00
var formatted_minutes = (minutes < 10 ? "0" + string(minutes) : string(minutes));
var formatted_seconds = (seconds < 10 ? "0" + string(seconds) : string(seconds));

var formatted_time = formatted_minutes + ":" + formatted_seconds;

// Draw 
draw_text(670, 950, "Time: " + formatted_time);