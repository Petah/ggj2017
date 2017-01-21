var divider = 32;
var grid    = ds_grid_create(room_width/divider, room_height/divider);

randomize();

for(var i = 0; i < room_width/divider; i++){
    for(var j = 0; j < room_height/divider; j++){
        ds_grid_set(grid, i, j, "index i:" + string(i) + " index j:" + string(j));
        //instance_create(i*divider, j*divider, obj_filler);
        
        tile_add(background2, 0, 0, divider, divider, i*divider, j*divider, 9000);
    }
}

generate_laval_pool();
generate_rocks();

