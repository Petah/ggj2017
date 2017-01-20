var move_speed = 5;
var stopped;

mob_move(initial_direction) {
    if (initial_direction != null) {
        direction = initial_direction;
    }
}

if (keyboard_check_pressed(vk_left)) {
    direction = 180;
} else if (keyboard_check_pressed(vk_right)) {
    direction = 0;
} else if (keyboard_check_pressed(vk_up)) {
    direction = 90
} else if (keyboard_check_pressed(vk_down)) {
    direction = 270;
}
if (stopped) {
    speed = move_speed;
    stopped = false;
}

//Hit edge of screen
if (x + (sprite_width/2) >= room_width || x - (sprite_width/2) <= 0) {
    speed = 0;
    stopped = true;
}
if (y + (sprite_height/2) >= room_height || y - (sprite_width/2) <= 0) {
    speed = 0;
    stopped = true;
}