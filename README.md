# DES 56-bit Key Implementation in Verilog

![Language](https://img.shields.io/badge/Language-Verilog%20/%20VHDL-blue)
![EDA Tool](https://img.shields.io/badge/EDA%20Tool-Intel%20Quartus-blue)

A complete hardware implementation of the **Data Encryption Standard (DES)** algorithm written in Verilog. This repository features a structural, modular approach to the DES cryptographic standard, designed for FPGA synthesis and simulation.

## Overview

This project implements the standard DES symmetric-key algorithm, which processes 64-bit plaintext blocks using a 56-bit effective key to produce a 64-bit ciphertext. The design is broken down into modular cryptographic components (such as S-boxes, permutations, and round key generation) making it easy to understand, test, and integrate into larger System-on-Chip (SoC) or VLSI designs.

## Features

* **Modular Verilog Design:** Core components like the F-Function, S-Boxes, and Key Scheduler are separated into distinct modules.
* **Full 16-Round Encryption:** Accurately implements the complete Feistel network structure of standard DES.
* **Testbench Included:** Built-in Verilog testbenches (`DES_TESTBENCH.v`, `Test_roundkey.v`, etc.) for verifying functional correctness.
* **Quartus Ready:** Includes Intel Quartus project files (`.qpf`, `.qsf`) for immediate synthesis, timing analysis, and FPGA deployment.
* **Timing Constraints Applied:** Contains basic `.sdc` (Synopsys Design Constraints) files for static timing analysis (STA).

## Hardware Architecture & Modules

The repository is structured around the core cryptographic operations of DES. Key files and their functions include:

* **Top-Level Module:**
    * `DES_ALGORITHM.v`: The top-level wrapper that instantiates the datapath and control unit for the encryption process.
    * `DES_CONTROL.v`: The finite state machine (FSM) managing the 16 rounds of the algorithm.
* **Datapath & Feistel Network:**
    * `F_FUNCTION.v`: The core Feistel function combining the expansion permutation, XOR with the round key, S-box substitution, and P-box permutation.
    * `IP.v` / `IP_1.v`: Initial Permutation and Final Permutation (Inverse IP).
    * `E_MATRIX.v`: Expansion permutation (32-bit to 48-bit).
    * `P_MATRIX.v`: Permutation logic applied post-S-box.
    * `S_BOX.v`: The 8 substitution boxes that provide the non-linear transformation.
* **Key Scheduling:**
    * `ROUND_KEY.v`: Generates the 16 unique 48-bit subkeys from the original 56-bit key.
    * `PC_1.v` / `PC_2.v`: Permuted Choice 1 and 2 for key compression and reduction.
    * `SHIFT_LEFT_1.v` / `SHIFT_LEFT_2.v`: Circular left shifts for the key scheduling algorithm.

## Prerequisites

To simulate or synthesize this project, you will need:
* **Intel Quartus Prime** (Lite/Standard/Pro) to open the `.qpf` project.
* **ModelSim / Questa Intel FPGA Edition** for RTL simulation.

## Getting Started

### 1. Simulation
You can verify the cryptographic logic before hardware implementation using the provided testbenches.
1. Open ModelSim or your preferred Verilog simulator.
2. Compile the working directory: `vlog *.v`
3. Load the main testbench: `vsim work.DES_TESTBENCH`
4. Add the necessary waveforms and run the simulation.

### 2. Synthesis (Intel Quartus)
1. Open Intel Quartus.
2. Go to `File > Open Project` and select `DES_ALGORITHM.qpf`.
3. Select your target FPGA family and device by going to `Assignments > Device`.
4. Click **Compile Design** to run Analysis & Synthesis, Fitter, and Timing Analysis.
5. Check the `output_files/` directory for the resulting `.sof` or `.pof` programming files.

## 📊 Timing and Verification

Ensure you review the `TIMING.sdc` constraints before final compilation if you intend to run this at a specific clock frequency on physical hardware. The repository includes native link simulation reports (`DES_ALGORITHM_nativelink_simulation.rpt`) for reference.
