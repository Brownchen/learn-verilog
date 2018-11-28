transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Dell/Desktop {C:/Users/Dell/Desktop/sequence_detect.V}

vlog -vlog01compat -work work +incdir+E:/cmWork/learn-verilog/sequence_detect/simulation/modelsim {E:/cmWork/learn-verilog/sequence_detect/simulation/modelsim/sequence_detect_vlg_tst.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  sequence_detect_vlg_tst

add wave *
view structure
view signals
run -all
