var hurt_instance = argument0;
hurt_instance.hp -= random_range(1, 4)/hurt_instance.armor;
if (hurt_instance.hp <= 0) {
    with (hurt_instance) {
        instance_destroy();
    }
}

