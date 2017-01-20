console_log("test");

var divider = 128;
var grid    = ds_grid_create(room_width/divider, room_height/divider);

for(var i = 0; i < room_width/divider; i++){
    for(var j = 0; j < room_height/divider; j++){
        ds_grid_set(grid, i, j, "index i:" + string(i) + " index j:" + string(j));
        if(i == 0 && j == 0){
            instance_create(i*divider, j*divider, obj_player1);
        } else if(j == 0 && i == (ds_grid_width(grid) -1 )){
            instance_create(i*divider, j*divider, obj_player2);
        } else if(j == (ds_grid_height(grid) - 1) && i == 0){
            instance_create(i*divider, j*divider, obj_player_3);
        } else if(j == (ds_grid_height(grid) - 1) && i == (ds_grid_width(grid) -1 )){
            instance_create(i*divider, j*divider, obj_player_4);
        } else {
            instance_create(i*divider, j*divider, obj_filler);
        }
    }
}
