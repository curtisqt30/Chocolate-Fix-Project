// Set the font for the timer display
draw_set_font(fnt_timer);

// Calculate minutes and seconds
var minutes = floor(timer / (room_speed * 60));
var seconds = floor((timer / room_speed) % 60);

// 00:00 Format
var formatted_minutes = (minutes < 10 ? "0" + string(minutes) : string(minutes));
var formatted_seconds = (seconds < 10 ? "0" + string(seconds) : string(seconds));

// Combine minutes and seconds into a formatted time string
var formatted_time = formatted_minutes + ":" + formatted_seconds;

// Draw the formatted timer text at the specified position
draw_text(670, 950, "Time left: " + formatted_time);
