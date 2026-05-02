
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
# Auto-generated simulation script

# ----------------------------------------
# Initialize the variable
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
} 

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "system_tb"
} 

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
} 

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "E:/altera/13.0sp1/quartus/"
} 

set Aldec "Riviera"
if { [ string match "*Active-HDL*" [ vsim -version ] ] } {
  set Aldec "Active"
}

if { [ string match "Active" $Aldec ] } {
  scripterconf -tcl
  createdesign "$TOP_LEVEL_NAME"  "."
  opendesign "$TOP_LEVEL_NAME"
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_onchip_memory2_0.hex ./
  file copy -force D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_ociram_default_contents.dat ./
  file copy -force D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_ociram_default_contents.hex ./
  file copy -force D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_ociram_default_contents.mif ./
  file copy -force D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_rf_ram_a.dat ./
  file copy -force D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_rf_ram_a.hex ./
  file copy -force D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_rf_ram_a.mif ./
  file copy -force D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_rf_ram_b.dat ./
  file copy -force D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_rf_ram_b.hex ./
  file copy -force D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_rf_ram_b.mif ./
  file copy -force D:/CE433/DES-56bits-key/software/DES/mem_init/hdl_sim/system_onchip_memory2_0.dat ./
  file copy -force D:/CE433/DES-56bits-key/software/DES/mem_init/system_onchip_memory2_0.hex ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib      ./libraries     
ensure_lib      ./libraries/work
vmap       work ./libraries/work
ensure_lib                  ./libraries/altera_ver      
vmap       altera_ver       ./libraries/altera_ver      
ensure_lib                  ./libraries/lpm_ver         
vmap       lpm_ver          ./libraries/lpm_ver         
ensure_lib                  ./libraries/sgate_ver       
vmap       sgate_ver        ./libraries/sgate_ver       
ensure_lib                  ./libraries/altera_mf_ver   
vmap       altera_mf_ver    ./libraries/altera_mf_ver   
ensure_lib                  ./libraries/altera_lnsim_ver
vmap       altera_lnsim_ver ./libraries/altera_lnsim_ver
ensure_lib                  ./libraries/cycloneii_ver   
vmap       cycloneii_ver    ./libraries/cycloneii_ver   
ensure_lib                                                                                   ./libraries/irq_mapper                                                                       
vmap       irq_mapper                                                                        ./libraries/irq_mapper                                                                       
ensure_lib                                                                                   ./libraries/rsp_xbar_mux_001                                                                 
vmap       rsp_xbar_mux_001                                                                  ./libraries/rsp_xbar_mux_001                                                                 
ensure_lib                                                                                   ./libraries/rsp_xbar_mux                                                                     
vmap       rsp_xbar_mux                                                                      ./libraries/rsp_xbar_mux                                                                     
ensure_lib                                                                                   ./libraries/rsp_xbar_demux_003                                                               
vmap       rsp_xbar_demux_003                                                                ./libraries/rsp_xbar_demux_003                                                               
ensure_lib                                                                                   ./libraries/rsp_xbar_demux                                                                   
vmap       rsp_xbar_demux                                                                    ./libraries/rsp_xbar_demux                                                                   
ensure_lib                                                                                   ./libraries/cmd_xbar_mux                                                                     
vmap       cmd_xbar_mux                                                                      ./libraries/cmd_xbar_mux                                                                     
ensure_lib                                                                                   ./libraries/cmd_xbar_demux_001                                                               
vmap       cmd_xbar_demux_001                                                                ./libraries/cmd_xbar_demux_001                                                               
ensure_lib                                                                                   ./libraries/cmd_xbar_demux                                                                   
vmap       cmd_xbar_demux                                                                    ./libraries/cmd_xbar_demux                                                                   
ensure_lib                                                                                   ./libraries/rst_controller                                                                   
vmap       rst_controller                                                                    ./libraries/rst_controller                                                                   
ensure_lib                                                                                   ./libraries/id_router_003                                                                    
vmap       id_router_003                                                                     ./libraries/id_router_003                                                                    
ensure_lib                                                                                   ./libraries/id_router                                                                        
vmap       id_router                                                                         ./libraries/id_router                                                                        
ensure_lib                                                                                   ./libraries/addr_router_001                                                                  
vmap       addr_router_001                                                                   ./libraries/addr_router_001                                                                  
ensure_lib                                                                                   ./libraries/addr_router                                                                      
vmap       addr_router                                                                       ./libraries/addr_router                                                                      
ensure_lib                                                                                   ./libraries/nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo
vmap       nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo ./libraries/nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo
ensure_lib                                                                                   ./libraries/nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent         
vmap       nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent          ./libraries/nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent         
ensure_lib                                                                                   ./libraries/nios2_qsys_0_instruction_master_translator_avalon_universal_master_0_agent       
vmap       nios2_qsys_0_instruction_master_translator_avalon_universal_master_0_agent        ./libraries/nios2_qsys_0_instruction_master_translator_avalon_universal_master_0_agent       
ensure_lib                                                                                   ./libraries/nios2_qsys_0_jtag_debug_module_translator                                        
vmap       nios2_qsys_0_jtag_debug_module_translator                                         ./libraries/nios2_qsys_0_jtag_debug_module_translator                                        
ensure_lib                                                                                   ./libraries/nios2_qsys_0_instruction_master_translator                                       
vmap       nios2_qsys_0_instruction_master_translator                                        ./libraries/nios2_qsys_0_instruction_master_translator                                       
ensure_lib                                                                                   ./libraries/DES_0                                                                            
vmap       DES_0                                                                             ./libraries/DES_0                                                                            
ensure_lib                                                                                   ./libraries/jtag_uart_0                                                                      
vmap       jtag_uart_0                                                                       ./libraries/jtag_uart_0                                                                      
ensure_lib                                                                                   ./libraries/onchip_memory2_0                                                                 
vmap       onchip_memory2_0                                                                  ./libraries/onchip_memory2_0                                                                 
ensure_lib                                                                                   ./libraries/nios2_qsys_0                                                                     
vmap       nios2_qsys_0                                                                      ./libraries/nios2_qsys_0                                                                     
ensure_lib                                                                                   ./libraries/system_inst_reset_bfm                                                            
vmap       system_inst_reset_bfm                                                             ./libraries/system_inst_reset_bfm                                                            
ensure_lib                                                                                   ./libraries/system_inst_clk_bfm                                                              
vmap       system_inst_clk_bfm                                                               ./libraries/system_inst_clk_bfm                                                              
ensure_lib                                                                                   ./libraries/system_inst                                                                      
vmap       system_inst                                                                       ./libraries/system_inst                                                                      

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  vlog +define+SKIP_KEYWORDS_PRAGMA "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v" -work altera_ver      
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"          -work lpm_ver         
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"             -work sgate_ver       
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"         -work altera_mf_ver   
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"     -work altera_lnsim_ver
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneii_atoms.v"   -work cycloneii_ver   
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_irq_mapper.sv"                            -work irq_mapper                                                                       
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/altera_merlin_arbitrator.sv"                     -work rsp_xbar_mux_001                                                                 
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_rsp_xbar_mux_001.sv"                      -work rsp_xbar_mux_001                                                                 
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/altera_merlin_arbitrator.sv"                     -work rsp_xbar_mux                                                                     
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_rsp_xbar_mux.sv"                          -work rsp_xbar_mux                                                                     
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_rsp_xbar_demux_003.sv"                    -work rsp_xbar_demux_003                                                               
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_rsp_xbar_demux.sv"                        -work rsp_xbar_demux                                                                   
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/altera_merlin_arbitrator.sv"                     -work cmd_xbar_mux                                                                     
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_cmd_xbar_mux.sv"                          -work cmd_xbar_mux                                                                     
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_cmd_xbar_demux_001.sv"                    -work cmd_xbar_demux_001                                                               
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_cmd_xbar_demux.sv"                        -work cmd_xbar_demux                                                                   
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/altera_reset_controller.v"                       -work rst_controller                                                                   
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/altera_reset_synchronizer.v"                     -work rst_controller                                                                   
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_id_router_003.sv"                         -work id_router_003                                                                    
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_id_router.sv"                             -work id_router                                                                        
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_addr_router_001.sv"                       -work addr_router_001                                                                  
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_addr_router.sv"                           -work addr_router                                                                      
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/altera_avalon_sc_fifo.v"                         -work nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/altera_merlin_slave_agent.sv"                    -work nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent         
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/altera_merlin_burst_uncompressor.sv"             -work nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent         
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/altera_merlin_master_agent.sv"                   -work nios2_qsys_0_instruction_master_translator_avalon_universal_master_0_agent       
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/altera_merlin_slave_translator.sv"               -work nios2_qsys_0_jtag_debug_module_translator                                        
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/altera_merlin_master_translator.sv"              -work nios2_qsys_0_instruction_master_translator                                       
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/DES_ALGORITHM.v"                                 -work DES_0                                                                            
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/DES_CONTROL.v"                                   -work DES_0                                                                            
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/E_MATRIX.v"                                      -work DES_0                                                                            
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/E_XOR_KEY.v"                                     -work DES_0                                                                            
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/F_FUNCTION.v"                                    -work DES_0                                                                            
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/IP.v"                                            -work DES_0                                                                            
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/IP_1.v"                                          -work DES_0                                                                            
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/MUX2_1_TOP.v"                                    -work DES_0                                                                            
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/P_MATRIX.v"                                      -work DES_0                                                                            
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/PC_1.v"                                          -work DES_0                                                                            
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/PC_2.v"                                          -work DES_0                                                                            
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/S_BOX.v"                                         -work DES_0                                                                            
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/SHIFT_LEFT_1.v"                                  -work DES_0                                                                            
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/SHIFT_LEFT_2.v"                                  -work DES_0                                                                            
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/DES_AVALON_WRAPPER.v"                            -work DES_0                                                                            
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_jtag_uart_0.v"                            -work jtag_uart_0                                                                      
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_onchip_memory2_0.v"                       -work onchip_memory2_0                                                                 
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0.v"                           -work nios2_qsys_0                                                                     
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_jtag_debug_module_sysclk.v"  -work nios2_qsys_0                                                                     
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_jtag_debug_module_tck.v"     -work nios2_qsys_0                                                                     
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_jtag_debug_module_wrapper.v" -work nios2_qsys_0                                                                     
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_oci_test_bench.v"            -work nios2_qsys_0                                                                     
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system_nios2_qsys_0_test_bench.v"                -work nios2_qsys_0                                                                     
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/verbosity_pkg.sv"                                -work system_inst_reset_bfm                                                            
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/altera_avalon_reset_source.sv"                   -work system_inst_reset_bfm                                                            
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/verbosity_pkg.sv"                                -work system_inst_clk_bfm                                                              
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/altera_avalon_clock_source.sv"                   -work system_inst_clk_bfm                                                              
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/submodules/system.v"                                        -work system_inst                                                                      
  vlog  "D:/CE433/DES-56bits-key/system/testbench/system_tb/simulation/system_tb.v"                                                                                                                                       
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  vsim +access +r  -t ps \
    -G/$TOP_LEVEL_NAME$SYSTEM_INSTANCE_NAME/system_inst/onchip_memory2_0/INIT_FILE=\"system_onchip_memory2_0.hex\" \
     -L work -L irq_mapper -L rsp_xbar_mux_001 -L rsp_xbar_mux -L rsp_xbar_demux_003 -L rsp_xbar_demux -L cmd_xbar_mux -L cmd_xbar_demux_001 -L cmd_xbar_demux -L rst_controller -L id_router_003 -L id_router -L addr_router_001 -L addr_router -L nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo -L nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent -L nios2_qsys_0_instruction_master_translator_avalon_universal_master_0_agent -L nios2_qsys_0_jtag_debug_module_translator -L nios2_qsys_0_instruction_master_translator -L DES_0 -L jtag_uart_0 -L onchip_memory2_0 -L nios2_qsys_0 -L system_inst_reset_bfm -L system_inst_clk_bfm -L system_inst -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with -dbg -O2 option
alias elab_debug {
  echo "\[exec\] elab_debug"
  vsim -dbg -O2 +access +r -t ps \
    -G/$TOP_LEVEL_NAME$SYSTEM_INSTANCE_NAME/system_inst/onchip_memory2_0/INIT_FILE=\"system_onchip_memory2_0.hex\" \
     -L work -L irq_mapper -L rsp_xbar_mux_001 -L rsp_xbar_mux -L rsp_xbar_demux_003 -L rsp_xbar_demux -L cmd_xbar_mux -L cmd_xbar_demux_001 -L cmd_xbar_demux -L rst_controller -L id_router_003 -L id_router -L addr_router_001 -L addr_router -L nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo -L nios2_qsys_0_jtag_debug_module_translator_avalon_universal_slave_0_agent -L nios2_qsys_0_instruction_master_translator_avalon_universal_master_0_agent -L nios2_qsys_0_jtag_debug_module_translator -L nios2_qsys_0_instruction_master_translator -L DES_0 -L jtag_uart_0 -L onchip_memory2_0 -L nios2_qsys_0 -L system_inst_reset_bfm -L system_inst_clk_bfm -L system_inst -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -dbg -O2
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with -dbg -O2 option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -dbg -O2"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
}
file_copy
h
