# 1-Bit Comparator Using Verilog HDL

## 1. Project Title

**1-Bit Comparator Design and Simulation Using Verilog HDL**

## 2. Introduction

A comparator is a combinational digital circuit used to compare two binary numbers.

A 1-bit comparator compares two 1-bit inputs, `A` and `B`, and produces three outputs:

* **A greater than B**
* **A equal to B**
* **A less than B**

The comparator determines the relationship between the two input bits.

## 3. Objective

The objectives of this project are:

* To design a 1-bit comparator using Verilog HDL.
* To understand digital comparison logic.
* To create a Verilog testbench.
* To test all possible input combinations.
* To simulate and verify the output waveform.

## 4. Inputs and Outputs

### Inputs

* `A` – First input
* `B` – Second input

### Outputs

* `A_gt_B` – HIGH when A is greater than B
* `A_eq_B` – HIGH when A is equal to B
* `A_lt_B` – HIGH when A is less than B

## 5. Truth Table

| A | B | A > B | A = B | A < B |
| - | - | ----- | ----- | ----- |
| 0 | 0 | 0     | 1     | 0     |
| 0 | 1 | 0     | 0     | 1     |
| 1 | 0 | 1     | 0     | 0     |
| 1 | 1 | 0     | 1     | 0     |

Only one of the three outputs is HIGH for each input combination.

## 6. Block Diagram

```text
              +---------------------+
       A ---->|                     |
              |                     |----> A > B
       B ---->|   1-BIT COMPARATOR  |----> A = B
              |                     |----> A < B
              +---------------------+
```

## 7. Working Principle

The comparator checks the relationship between inputs `A` and `B`.

### Case 1: A = B = 0

```text
A = 0
B = 0

A = B
```

Therefore:

```text
A_gt_B = 0
A_eq_B = 1
A_lt_B = 0
```

### Case 2: A = 0, B = 1

```text
A < B
```

Therefore:

```text
A_gt_B = 0
A_eq_B = 0
A_lt_B = 1
```

### Case 3: A = 1, B = 0

```text
A > B
```

Therefore:

```text
A_gt_B = 1
A_eq_B = 0
A_lt_B = 0
```

### Case 4: A = B = 1

```text
A = B
```

Therefore:

```text
A_gt_B = 0
A_eq_B = 1
A_lt_B = 0
```

## 8. Logic Equations

The logic equations are:

```text
A_gt_B = A & ~B

A_eq_B = ~(A ^ B)

A_lt_B = ~A & B
```

## 9. Project Structure

```text
1-bit-comparator/
│
├── README.md
│
├── src/
│   └── comparator_1bit.v
│
└── testbench/
    └── tb_comparator_1bit.v
```

## 10. Tools Required

The project can be simulated using:

* Icarus Verilog
* GTKWave
* ModelSim
* Vivado

## 11. Simulation

### Compile the Verilog files

```bash
iverilog -o comparator_sim src/comparator_1bit.v testbench/tb_comparator_1bit.v
```

### Run the simulation

```bash
vvp comparator_sim
```

### Open the waveform

```bash
gtkwave comparator_1bit.vcd
```

Add these signals in GTKWave:

```text
A
B
A_gt_B
A_eq_B
A_lt_B
```

## 12. Expected Simulation Output

```text
Time = 0  | A = 0 | B = 0 | A>B = 0 | A=B = 1 | A<B = 0
Time = 10 | A = 0 | B = 1 | A>B = 0 | A=B = 0 | A<B = 1
Time = 20 | A = 1 | B = 0 | A>B = 1 | A=B = 0 | A<B = 0
Time = 30 | A = 1 | B = 1 | A>B = 0 | A=B = 1 | A<B = 0
```

## 13. Applications

Comparators are used in:

* Digital processors
* Arithmetic Logic Units (ALUs)
* Digital control systems
* Address comparison
* Sorting circuits
* Counters
* Microprocessors
* Data processing systems

## 14. Advantages

* Simple combinational circuit.
* Fast comparison.
* Easy to implement using logic gates.
* Can be extended to compare multi-bit numbers.
* Easy to verify using Verilog simulation.

## 15. Conclusion

A 1-bit comparator was successfully designed using Verilog HDL.

The testbench checks all four possible combinations of inputs `A` and `B`. The simulation verifies that the correct output is generated for the conditions A greater than B, A equal to B, and A less than B.

Therefore, the comparator design is functionally correct.

## 16. Author

**Project:** 1-Bit Comparator Using Verilog HDL
**Language:** Verilog HDL
**Simulation:** Icarus Verilog and GTKWave
