var x_pos = argument0;
var y_pos = argument1;
var burst_count = argument2;
var dir = argument3;

part_type_direction(global.particle_type, dir-30, dir+30, 5, 0);
part_type_orientation(global.particle_type, dir-30, dir+30, 0.05, 0, false);
part_type_size(global.particle_type, 0.01, 0.1, 0, 0);
part_emitter_region(global.particle_system, global.particle_emmiter, x_pos, x_pos, y_pos, y_pos, ps_shape_ellipse, ps_distr_gaussian);
part_emitter_burst(global.particle_system, global.particle_emmiter, global.particle_type, burst_count);

