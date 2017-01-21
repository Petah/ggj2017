var x_pos = argument0;
var y_pos = argument1;
var burst_count = argument2;
var dir = argument3;

var emitter = ds_map_find_value(global.particle_emmiter, "BLOOD");
var type = ds_map_find_value(global.particle_type, "BLOOD");

part_system_depth(global.particle_system, 7000);  
part_type_sprite(type, spr_particle_blood, false, false, false);
part_type_speed(type, 3, 6, -0.5, 0);
part_type_color1(type, c_red);
part_type_life(type, room_speed*5, room_speed*5);
part_type_direction(type, dir-30, dir+30, 5, 0);
part_type_size(type, 0.01, 0.1, 0, 0);
part_emitter_region(global.particle_system, emitter, x_pos, x_pos, y_pos, y_pos, ps_shape_ellipse, ps_distr_gaussian);
part_emitter_burst(global.particle_system, emitter, type, burst_count);

