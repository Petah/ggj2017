console_log("test");

var divider = 32;
var grid    = ds_grid_create(room_width/divider, room_height/divider);

randomize();

for(var i = 0; i < room_width/divider; i++){
    for(var j = 0; j < room_height/divider; j++){
        ds_grid_set(grid, i, j, "index i:" + string(i) + " index j:" + string(j));
        instance_create(i*divider, j*divider, obj_filler);
    }
}

generate_laval_pool();
        
instance_create(0, 0, obj_player1);
instance_create(0, room_height-32, obj_player2);
instance_create(room_width-32, 0, obj_player_3);
instance_create(room_width-32, room_height-32, obj_player_4);
