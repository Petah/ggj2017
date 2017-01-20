var x_pos = argument0;
var y_pos = argument1;
var min_start_direction = argument2;
var max_start_direction = argument3;

part_type_direction(global.particle_type, min_start_direction, max_start_direction, 0.05, 20);
part_type_orientation(global.particle_type, min_start_direction, max_start_direction, 0.05, 2, false);
part_emitter_region(global.particle_system, global.particle_emmiter, x, x, y, y, ps_shape_ellipse, ps_distr_gaussian);
part_emitter_burst(global.particle_system, global.particle_emmiter, global.particle_type, 50);

