button_up = false;
button_down = false;
button_left = false;
button_right = false;
button_action_1 = false;
button_action_2 = false;
button_action_3 = false;
button_action_4 = false;

switch (controller) {
    case global.CONTROLLER_KEYBOARD_1: {
        if (keyboard_check(vk_up)) {
            button_up = true;
        }
        if (keyboard_check(vk_down)) {
            button_down = true;
        }
        if (keyboard_check(vk_left)) {
            button_left = true;
        }
        if (keyboard_check(vk_right)) {
            button_right = true;
        }
        if (keyboard_check(ord("P"))) {
            button_action_1 = true;
        }
        if (keyboard_check(ord("O"))) {
            button_action_2 = true;
        }
        if (keyboard_check(ord("I"))) {
            button_action_3 = true;
        }
        if (keyboard_check(ord("U"))) {
            button_action_4 = true;
        }
        break;
    }
    case global.CONTROLLER_KEYBOARD_2: {
        if (keyboard_check(ord("W"))) {
            button_up = true;
        }
        if (keyboard_check(ord("S"))) {
            button_down = true;
        }
        if (keyboard_check(ord("A"))) {
            button_left = true;
        }
        if (keyboard_check(ord("D"))) {
            button_right = true;
        }
        if (keyboard_check(ord("1"))) {
            button_action_1 = true;
        }
        if (keyboard_check(ord("2"))) {
            button_action_2 = true;
        }
        if (keyboard_check(ord("3"))) {
            button_action_3 = true;
        }
        if (keyboard_check(ord("4"))) {
            button_action_4 = true;
        }
        break;
    }
    case global.CONTROLLER_GAMEPAD: {
        if (gamepad_axis_value(controller_number, gp_axislv) < -0.5) {
            button_up = true;
        }
        if (gamepad_axis_value(controller_number, gp_axislv) > 0.5) {
            button_down = true;
        }
        if (gamepad_axis_value(controller_number, gp_axislh) < -0.5) {
            button_left = true;
        }
        if (gamepad_axis_value(controller_number, gp_axislh) > 0.5) {
            button_right = true;
        }
        if (gamepad_button_check(controller_number, gp_face1)) {
            button_action_1 = true;
        }
        if (gamepad_button_check(controller_number, gp_face2)) {
            button_action_2 = true;
        }
        if (gamepad_button_check(controller_number, gp_face3)) {
            button_action_3 = true;
        }
        if (gamepad_button_check(controller_number, gp_face4)) {
            button_action_4 = true;
        }
        break;
    }
}
