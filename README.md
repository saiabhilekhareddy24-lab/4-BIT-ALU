# 4-Bit ALU using Verilog HDL

## 📌 Project Description

A 4-bit Arithmetic Logic Unit (ALU) is a combinational digital circuit that performs arithmetic and logical operations on two 4-bit binary numbers.

This project implements a 4-bit ALU using Verilog HDL. The ALU supports addition, subtraction, AND, OR, XOR, NOT, increment, and decrement operations.

## ⚙️ Features

The ALU performs the following 8 operations:

| Select | Operation | Description |
|--------|-----------|-------------|
| 000 | ADD | A + B |
| 001 | SUB | A - B |
| 010 | AND | A AND B |
| 011 | OR | A OR B |
| 100 | XOR | A XOR B |
| 101 | NOT | NOT A |
| 110 | INC | A + 1 |
| 111 | DEC | A - 1 |

## 📥 Inputs

- `A` - 4-bit input
- `B` - 4-bit input
- `ALU_Sel` - 3-bit operation select input

## 📤 Outputs

- `Result` - 4-bit operation result
- `CarryOut` - Carry/borrow indication for arithmetic operations

## 🧮 Truth Table

| ALU_Sel | Operation |
|---------|-----------|
| 000 | A + B |
| 001 | A - B |
| 010 | A & B |
| 011 | A \| B |
| 100 | A ^ B |
| 101 | ~A |
| 110 | A + 1 |
| 111 | A - 1 |

## 📁 Project Structure

```text
4-bit-ALU/
│
├── README.md
├── alu_4bit.v
├── alu_4bit_tb.v
└── simulation_output.html
