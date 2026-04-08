transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/CE433/DES-56bits-key {D:/CE433/DES-56bits-key/S_BOX.v}
vlog -vlog01compat -work work +incdir+D:/CE433/DES-56bits-key {D:/CE433/DES-56bits-key/SHIFT_LEFT_2.v}
vlog -vlog01compat -work work +incdir+D:/CE433/DES-56bits-key {D:/CE433/DES-56bits-key/SHIFT_LEFT_1.v}
vlog -vlog01compat -work work +incdir+D:/CE433/DES-56bits-key {D:/CE433/DES-56bits-key/P_MATRIX.v}
vlog -vlog01compat -work work +incdir+D:/CE433/DES-56bits-key {D:/CE433/DES-56bits-key/PC_2.v}
vlog -vlog01compat -work work +incdir+D:/CE433/DES-56bits-key {D:/CE433/DES-56bits-key/PC_1.v}
vlog -vlog01compat -work work +incdir+D:/CE433/DES-56bits-key {D:/CE433/DES-56bits-key/IP_1.v}
vlog -vlog01compat -work work +incdir+D:/CE433/DES-56bits-key {D:/CE433/DES-56bits-key/IP.v}
vlog -vlog01compat -work work +incdir+D:/CE433/DES-56bits-key {D:/CE433/DES-56bits-key/F_FUNCTION.v}
vlog -vlog01compat -work work +incdir+D:/CE433/DES-56bits-key {D:/CE433/DES-56bits-key/E_XOR_KEY.v}
vlog -vlog01compat -work work +incdir+D:/CE433/DES-56bits-key {D:/CE433/DES-56bits-key/E_MATRIX.v}
vlog -vlog01compat -work work +incdir+D:/CE433/DES-56bits-key {D:/CE433/DES-56bits-key/DES_ALGORITHM.v}
vlog -vlog01compat -work work +incdir+D:/CE433/DES-56bits-key {D:/CE433/DES-56bits-key/DES_CONTROL.v}

