open_project ./project/vivado_sim.xpr

set_property top counter_4bit_tb [get_filesets sim_1]
update_compile_order -fileset sim_1

launch_simulation -mode behavioral

exit
