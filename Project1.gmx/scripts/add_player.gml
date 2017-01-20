var controller = argument0;

with (obj_overlord) {
    var player = instance_create(0, 0, obj_player);
    player.controller = controller;
    ds_list_add(players, player);
    player.number = ds_list_size(players);
    
    console_log("Player " + string(player.number) + " joined.");
    console_log(string(ds_list_size(players)) + " players.");
}

