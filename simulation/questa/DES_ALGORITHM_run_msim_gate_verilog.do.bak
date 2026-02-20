transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {DES_ALGORITHM.vo}

vlog -vlog01compat -work work +incdir+D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS {D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS/DES_TESTBENCH.v}

vsim -t 1ps -L altera_ver -L altera_lnsim_ver -L cyclonev_ver -L lpm_ver -L sgate_ver -L cyclonev_hssi_ver -L altera_mf_ver -L cyclonev_pcie_hip_ver -L gate_work -L work -voptargs="+acc"  DES_TESTBENCH

add wave *
view structure
view signals
run -all
