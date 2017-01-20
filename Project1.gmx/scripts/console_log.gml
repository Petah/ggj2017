with (obj_console) {
    ds_list_add(log, argument0);
    if (ds_list_size(log) > 20) {
        ds_list_delete(log, 0);
    }
}

