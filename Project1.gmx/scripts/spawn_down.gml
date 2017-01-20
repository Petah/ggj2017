xpos = x + sprite_width/2;
ypos = y - sprite_height;


placed = false;
while(!placed){

    if(!place_meeting(xpos,ypos,obj_minion_1)){
        instance_create(xpos,ypos,argument0);
        placed = true;
    }else{
        xpos += random_range(-32,32);
        ypos += random_range(-16,32);
    }
}
