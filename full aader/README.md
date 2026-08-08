# 1-Bit Full Adder using Verilog HDL

## 📌 Project Overview

This project implements a **1-bit Full Adder** using Verilog HDL.

A Full Adder is a combinational digital circuit that performs the addition of three binary input bits:

* `A` – First input bit
* `B` – Second input bit
* `Cin` – Carry input

It produces two outputs:

* `Sum` – Result of binary addition
* `Cout` – Carry output

## 🎯 Objectives

* Design a 1-bit Full Adder using Verilog HDL.
* Implement the Boolean equations for Sum and Carry.
* Create a Verilog testbench.
* Test all possible input combinations.
* Generate and analyze simulation waveforms.

## 🧮 Logic Equations

The Full Adder equations are:

```text
Sum  = A XOR B XOR Cin

Cout = (A AND B) OR (B AND Cin) OR (A AND Cin)
```

In Verilog:

```verilog
assign Sum  = A ^ B ^ Cin;
assign Cout = (A & B) | (B & Cin) | (A & Cin);
```

## 📊 Truth Table

| A | B | Cin | Sum | Cout |
| - | - | --- | --- | ---- |
| 0 | 0 | 0   | 0   | 0    |
| 0 | 0 | 1   | 1   | 0    |
| 0 | 1 | 0   | 1   | 0    |
| 0 | 1 | 1   | 0   | 1    |
| 1 | 0 | 0   | 1   | 0    |
| 1 | 0 | 1   | 0   | 1    |
| 1 | 1 | 0   | 0   | 1    |
| 1 | 1 | 1   | 1   | 1    |

## 📁 Project Structure

```text
full-adder-verilog/
│
├── README.md
│
├── src/
│   └── full_adder.v
│
├── testbench/
│   └── full_adder_tb.v
│
└── simulation/
    └── waveform.vcd
```

## 💻 Tools Used

* Verilog HDL
* Icarus Verilog
* GTKWave
* Git
* GitHub

## ▶️ Simulation

Compile the Verilog source code and testbench:

```bash
iverilog -o full_adder_sim src/full_adder.v testbench/full_adder_tb.v
```

Run the simulation:

```bash
vvp full_adder_sim
```

Open the waveform:

```bash
gtkwave simulation/waveform.vcd
```

## 🧪 Verification

The testbench applies all **8 possible combinations** of `A`, `B`, and `Cin`.

The simulation results are compared with the expected Full Adder truth table.

Expected output:

```text
A B Cin | Sum Cout
-------------------
0 0  0  |  0    0
0 0  1  |  1    0
0 1  0  |  1    0
0 1  1  |  0    1
1 0  0  |  1    0
1 0  1  |  0    1
1 1  0  |  0    1
1 1  1  |  1    1
```

## 📈 Simulation

The waveform contains the following signals:

* `A`
* `B`
* `Cin`
* `Sum`
* `Cout`

The waveform demonstrates that the outputs change correctly for every possible combination of the three inputs.

## ✅ Result

The 1-bit Full Adder was successfully designed and simulated using Verilog HDL. All eight possible input combinations were tested, and the simulation results matched the expected truth table.

## 🚀 Future Improvements

This project can be extended to:

* 4-bit Ripple Carry Adder
* 8-bit Binary Adder
* 16-bit Binary Adder
* Carry Look-Ahead Adder
* FPGA implementation of the Full Adder

## 📜 License

This project is intended for educational purposes.

```
```
