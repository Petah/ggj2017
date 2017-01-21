var x_pos = argument0;
var y_pos = argument1;
var burst_count = argument2;

var emitter = ds_map_find_value(global.particle_emmiter, "DUST");
var type = ds_map_find_value(global.particle_type, "DUST")
var x_offset = 0;

/*switch(direction) {
    case 0:
        x_offset = -30;
    case 180:
        x_offset = 30; 
}*/

part_system_depth(global.particle_system, 7000);  
part_type_sprite(type, spr_particle_cloud, false, false, false);
part_type_speed(type, 3, 6, -0.5, 0);
part_type_alpha2(type, 1, 0);
part_type_life(type, room_speed/4, room_speed/2);
part_type_size(type, 0.02, 0.1, 0.01, 0);
part_emitter_region(global.particle_system, emitter, x+x_offset, x+x_offset, y+15, y+20, ps_shape_ellipse, ps_distr_gaussian);
part_type_direction(type, direction, direction, 0, 0);
part_emitter_burst(global.particle_system, emitter, type, burst_count);
