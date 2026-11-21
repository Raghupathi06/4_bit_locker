# 4-Bit Digital Locker

## VLSI Lab - Task 1

### Project Description

A digital locker designed using Verilog HDL.
The system verifies a 4-bit password and
generates an unlock or error signal.

### Objective

To design and simulate a digital password
locker using Xilinx Vivado 2025.2.

### Password

Stored Password: 1010

### Inputs

- A[3:0]: 4-bit password input
- CLK: Clock signal
- RESET: Reset signal

### Outputs

- UNLOCK: Indicates successful authentication
- ERROR: Indicates incorrect password

### Working Principle

The entered password is compared with the
stored password.

If both passwords match:
UNLOCK = 1
ERROR = 0

If the passwords do not match:
UNLOCK = 0
ERROR = 1

### Software

Xilinx Vivado 2025.2

### Project Files

1. digital_locker.v
   - Verilog design.

2. digital_locker_tb.v
   - Testbench for simulation.

3. digital_locker.xdc
   - FPGA pin constraints.

### Result

The 4-bit digital locker is designed and
verified using Verilog HDL simulation.
