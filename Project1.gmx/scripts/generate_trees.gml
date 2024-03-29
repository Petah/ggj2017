var divider           = 32;

var room_quarter_height  = room_height/2;
var room_quarter_width   = room_width/2;
var centre_height        = room_height/2;
var centre_width         = room_width/2;
var number_of_trees      = random(42);

var horizontal_grid_spaces = room_width/divider;
var verticle_grid_spaces   = room_height/divider;

var current_height;
var selected_height = 0;
var current_width;
var selected_width = 0;

for(var i = 0; i < number_of_trees; i++){
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
        var inst;
        var rand = random(3)
        if(rand > 1){
            inst = instance_create(selected_width, selected_height, obj_tree1);
        } else if (rand > 2){
            inst = instance_create(selected_width, selected_height, obj_tree3);
        } else {
            inst = instance_create(selected_width, selected_height, obj_tree2);
        }
        
        while(place_meeting(selected_width, selected_height, obj_lava_centre)){
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
                inst.x = selected_width;
                inst.y = selected_height;
        };
} 
