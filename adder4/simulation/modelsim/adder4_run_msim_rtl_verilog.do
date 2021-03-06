transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/cmWork/FPGA/adder4 {E:/cmWork/FPGA/adder4/adder4.v}

vlog -vlog01compat -work work +incdir+E:/cmWork/FPGA/adder4/simulation/modelsim {E:/cmWork/FPGA/adder4/simulation/modelsim/adder4_vlg_tst.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  adder4_vlg_tst

add wave *
view structure
view signals
run 800 ns
