onerror {quit -f}
vlib work
vlog -work work ejercicio1.vo
vlog -work work ejercicio1.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ejercicio1_diagram_block_vlg_vec_tst
vcd file -direction ejercicio1.msim.vcd
vcd add -internal ejercicio1_diagram_block_vlg_vec_tst/*
vcd add -internal ejercicio1_diagram_block_vlg_vec_tst/i1/*
add wave /*
run -all
