transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS {D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS/S_BOX.v}
vlog -vlog01compat -work work +incdir+D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS {D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS/SHIFT_LEFT_2.v}
vlog -vlog01compat -work work +incdir+D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS {D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS/SHIFT_LEFT_1.v}
vlog -vlog01compat -work work +incdir+D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS {D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS/P_MATRIX.v}
vlog -vlog01compat -work work +incdir+D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS {D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS/PC_2.v}
vlog -vlog01compat -work work +incdir+D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS {D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS/PC_1.v}
vlog -vlog01compat -work work +incdir+D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS {D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS/IP_1.v}
vlog -vlog01compat -work work +incdir+D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS {D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS/IP.v}
vlog -vlog01compat -work work +incdir+D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS {D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS/F_FUNCTION.v}
vlog -vlog01compat -work work +incdir+D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS {D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS/E_XOR_KEY.v}
vlog -vlog01compat -work work +incdir+D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS {D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS/E_MATRIX.v}
vlog -vlog01compat -work work +incdir+D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS {D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS/DES_ALGORITHM.v}
vlog -vlog01compat -work work +incdir+D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS {D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS/DES_CONTROL.v}

vlog -vlog01compat -work work +incdir+D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS {D:/CE213/DOAN/Quartus_prime_DES/DES_ALGORITHM_64_QUATUS/DES_TESTBENCH.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  DES_TESTBENCH

add wave *
view structure
view signals
run -all
