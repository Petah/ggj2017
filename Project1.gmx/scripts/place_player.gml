var player = argument0;

switch (player.number) {
    case 1: {
        console_log("Spawning player 1 base");
        var spawner = instance_create(sprite_get_xoffset(spr_base_1), sprite_get_yoffset(spr_base_1), obj_spawner_base);
        spawner.player = player;
        break;
    }
    case 2: {
        console_log("Spawning player 2 base");
        var spawner = instance_create(room_width - sprite_get_width(spr_base_1) + sprite_get_xoffset(spr_base_1), room_height - sprite_get_height(spr_base_1) + sprite_get_yoffset(spr_base_1), obj_spawner_base);
        spawner.player = player;
        break;
    }
    case 3: {
        console_log("Spawning player 3 base");
        var spawner = instance_create(room_width - sprite_get_width(spr_base_1) + sprite_get_xoffset(spr_base_1), sprite_get_yoffset(spr_base_1), obj_spawner_base);
        spawner.player = player;
        break;
    }
    case 4: {
        console_log("Spawning player 4 base");
        var spawner = instance_create(sprite_get_xoffset(spr_base_1), room_height - sprite_get_height(spr_base_1) + sprite_get_yoffset(spr_base_1), obj_spawner_base);
        spawner.player = player;
        break;
    }
}

