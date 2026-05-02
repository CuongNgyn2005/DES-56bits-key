
# (C) 2001-2026 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 13.0sp1 232 win32 2026.04.22.21:35:33

# ----------------------------------------
# vcs - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="system_tb"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="E:/altera/13.0sp1/quartus/"
SKIP_FILE_COPY=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"
# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_onchip_memory2_0.hex ./
  cp -f D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_ociram_default_contents.dat ./
  cp -f D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_ociram_default_contents.hex ./
  cp -f D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_ociram_default_contents.mif ./
  cp -f D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_rf_ram_a.dat ./
  cp -f D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_rf_ram_a.hex ./
  cp -f D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_rf_ram_a.mif ./
  cp -f D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_rf_ram_b.dat ./
  cp -f D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_rf_ram_b.hex ./
  cp -f D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_rf_ram_b.mif ./
  cp -f D:/CE433/DES-56bits-key/software/DES/mem_init/hdl_sim/system_onchip_memory2_0.dat ./
  cp -f D:/CE433/DES-56bits-key/software/DES/mem_init/system_onchip_memory2_0.hex ./
fi

vcs -lca -timescale=1ps/1ps -sverilog +verilog2001ext+.v -ntb_opts dtm $USER_DEFINED_ELAB_OPTIONS \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v \
  $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneii_atoms.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_irq_mapper.sv \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/altera_merlin_arbitrator.sv \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_rsp_xbar_mux_001.sv \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_rsp_xbar_mux.sv \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_rsp_xbar_demux_003.sv \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_rsp_xbar_demux.sv \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_cmd_xbar_mux.sv \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_cmd_xbar_demux_001.sv \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_cmd_xbar_demux.sv \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/altera_reset_controller.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/altera_reset_synchronizer.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_id_router_003.sv \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_id_router.sv \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_addr_router_001.sv \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_addr_router.sv \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/altera_avalon_sc_fifo.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/altera_merlin_slave_agent.sv \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/altera_merlin_burst_uncompressor.sv \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/altera_merlin_master_agent.sv \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/altera_merlin_slave_translator.sv \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/altera_merlin_master_translator.sv \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/DES_ALGORITHM.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/DES_CONTROL.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/E_MATRIX.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/E_XOR_KEY.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/F_FUNCTION.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/IP.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/IP_1.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/MUX2_1_TOP.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/P_MATRIX.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/PC_1.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/PC_2.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/S_BOX.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/SHIFT_LEFT_1.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/SHIFT_LEFT_2.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/DES_AVALON_WRAPPER.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_jtag_uart_0.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_onchip_memory2_0.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_jtag_debug_module_sysclk.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_jtag_debug_module_tck.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_jtag_debug_module_wrapper.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_oci_test_bench.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_test_bench.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/verbosity_pkg.sv \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/altera_avalon_reset_source.sv \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/altera_avalon_clock_source.sv \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system.v \
  D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/system_tb.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $USER_DEFINED_SIM_OPTIONS
fi
