var divider           = 32;

var room_quarter_height  = room_height/2;
var room_quarter_width   = room_width/2;
var centre_height        = room_height/2;
var centre_width         = room_width/2;
var number_of_rocks      = random(4);
var number_of_pebbles    = random_range(20,40);

var horizontal_grid_spaces = room_width/divider;
var verticle_grid_spaces   = room_height/divider;

var current_height;
var selected_height = 0;
var current_width;
var selected_width = 0;

for(var i = 0; i < number_of_rocks; i++){
    // > 1 for up,  < 1 for down
    if(random(2) > 1){
        current_height = centre_height + random(room_quarter_height);
    } else {
        current_height = centre_height - random(room_quarter_height);
    }
    
    // > for right, < for left
    if(random(2) > 1){
        current_width = centre_width + random(room_quarter_width);
    } else {
        current_width = centre_width - random(room_quarter_width);
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
    
    var inst = instance_create(selected_width, selected_height, obj_boulder);
} 

for(var i = 0; i < number_of_pebbles; i++){
    // > 1 for up,  < 1 for down
    if(random(2) > 1){
        current_height = centre_height + random(room_quarter_height);
    } else {
        current_height = centre_height - random(room_quarter_height);
    }
    
    // > for right, < for left
    if(random(2) > 1){
        current_width = centre_width + random(room_quarter_width);
    } else {
        current_width = centre_width - random(room_quarter_width);
    }
    
    var rand = random(11)
    
    if(rand < 1){
        var inst = instance_create(current_width, current_height, obj_pebble1);
    } else if (rand < 2){
         var inst = instance_create(current_width, current_height, obj_pebble3);
    } else if (rand < 3){
         var inst = instance_create(current_width, current_height, obj_pebble4);
    } else if (rand < 4){
         var inst = instance_create(current_width, current_height, obj_pebble5);
    } else if (rand < 5){
         var inst = instance_create(current_width, current_height, obj_pebble6);
    } else if (rand < 6){
         var inst = instance_create(current_width, current_height, obj_pebble7);
    } else if (rand < 7){
         var inst = instance_create(current_width, current_height, obj_rock);
    } else if (rand < 8){
         var inst = instance_create(current_width, current_height, obj_rock2);
    } else if (rand < 9){
         var inst = instance_create(current_width, current_height, obj_rock3);
    } else if (rand < 10){
         var inst = instance_create(current_width, current_height, obj_spire);
    } else {
        var inst = instance_create(current_width, current_height, obj_pebble2);
    }
} 
