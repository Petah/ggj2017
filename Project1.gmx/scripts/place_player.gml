var player = argument0;

switch (player.number) {
    case 1: {
        console_log("Spawning player 1 base");
        var spawner = instance_create(0, 0, obj_spawner_base);
        spawner.player = player;
        break;
    }
    case 2: {
        console_log("Spawning player 2 base");
        var spawner = instance_create(room_width - sprite_get_width(spr_spawner_placeholder), room_height - sprite_get_height(spr_spawner_placeholder), obj_spawner_base);
        spawner.player = player;
        break;
    }
    case 3: {
        console_log("Spawning player 3 base");
        var spawner = instance_create(room_width - sprite_get_width(spr_spawner_placeholder), 0, obj_spawner_base);
        spawner.player = player;
        break;
    }
    case 4: {
        console_log("Spawning player 4 base");
        var spawner = instance_create(0, room_height - sprite_get_height(spr_spawner_placeholder), obj_spawner_base);
        spawner.player = player;
        break;
    }
}

