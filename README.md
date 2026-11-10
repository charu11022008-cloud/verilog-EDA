# Universal Shift Register Using Verilog HDL

## 1. Project Description
This project implements a 4-bit Universal Shift Register using Verilog HDL.

A Universal Shift Register is a sequential circuit that can perform different operations such as:
- Hold (No Change)
- Shift Left
- Shift Right
- Parallel Load

The operation is selected using two select inputs (S1 and S0).

## 2. Features
- 4-bit Universal Shift Register.
- Supports four different operating modes.
- Synchronous clock operation.
- Reset functionality.
- Serial input and parallel input support.

## 3. Operation Table

| S1 | S0 | Operation |
|---|---|---|
| 0 | 0 | Hold |
| 0 | 1 | Shift Right |
| 1 | 0 | Shift Left |
| 1 | 1 | Parallel Load |

## 4. Inputs and Outputs

### Inputs
- `clk` – Clock signal.
- `clear` – Reset signal.
- `s[1:0]` – Mode selection inputs.
- `i[3:0]` – Parallel input data.
- `lsb` – Serial input for right shift.
- `msb` – Serial input for left shift.

### Output
- `q[3:0]` – 4-bit register output.

## 5. Tools Used
- Verilog HDL
- Synopsys VCS
- GTKWave

## 6. Project Files
- `universal_shift_register.v` – Design code.
- `universal_shift_register_tb.v` – Testbench code.
- `universal.vcd` – Simulation waveform file.

## 7. Applications
- Digital data storage.
- Serial-to-parallel conversion.
- Parallel-to-serial conversion.
- Data transfer systems.
- Digital communication systems.

## 8. Conclusion
The 4-bit Universal Shift Register was designed and simulated successfully using Verilog HDL. It performs hold, left shift, right shift, and parallel load operations based on the selection inputs.
