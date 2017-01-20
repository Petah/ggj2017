xpos = x + sprite_width;
ypos = y - sprite_height/2;


placed = false;
while(!placed){

    if(!place_meeting(xpos,ypos,obj_minion_1)){
        instance_create(xpos,ypos,argument0);
        placed = true;
    }else{
        xpos += random_range(-16,48);
        ypos += random_range(-64,64);
    }
}
    
