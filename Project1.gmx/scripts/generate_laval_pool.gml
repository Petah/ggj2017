var listOfCentrePools = ds_list_create();
var divider           = 32;

var roomQuarter      = min(room_width, room_height)/3;
var centre_height     = room_height/2;
var centre_width      = room_width/2;
var number_of_pools  = random(2);

var horizontalGridSpaces = room_width/divider;
var verticleGridSpaces   = room_height/divider;

var current_height;
var selected_height;
var current_width;
var selected_width;

for(var i = 0; i < number_of_pools; i++){
    var number_of_central_tiles = random_range(45,60);

    // > 1 for up,  < 1 for down
    if(random(2) > 1){
        current_height = centre_height + random(roomQuarter);
    } else {
        current_height = centre_height - random(roomQuarter);
    }
    
    // > for right, < for left
    if(random(2) > 1){
        current_width = centre_width + random(roomQuarter);
    } else {
        current_width = centre_width - random(roomQuarter);
    }
    
    // Sets the width to the lower bounds of a multiple of 32
    for(var j = 0; j < room_width; j+=32){
        if(current_width < j){
            current_width = j-32
            selected_width = current_width;
            break;
        }
    }
    
    // Sets the height to the lower bounds of a multiple of 32
    for(var j = 0; j < room_height; j+=32){
        if(current_height < j){
            current_height = j-32
            selected_height = current_height;
            break;
        }
    }
    
    console_log("currentHeight: " 
        + string(current_height) 
        + " currentWidth: " 
        + string(current_width));
    
    ds_list_add(listOfCentrePools, instance_create(current_width, current_height, obj_lava_centre));
    
    // 0 << 1 left, 1 << 2 top, 2 << 3 down, 3 << 4 right, 4 << 5 kill this spawning thread
    for(var j = 0; j < number_of_central_tiles; j++){
        var dir = random(6);
        
        if(dir < 1){
            selected_width -= 32;
        } else if (dir < 2){
            selected_height += 32;
        } else if (dir < 3){
            selected_height -= 32;
        } else if (dir < 4){
            selected_width += 32;
        } else{
            selected_width  = current_width;
            selected_height = current_height;
        }
        
        ds_list_add(listOfCentrePools, instance_create(selected_width, selected_height, obj_lava_centre));
    } 
}
