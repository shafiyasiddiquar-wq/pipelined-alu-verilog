# ⚡ Pipelined ALU using Verilog

## 📌 Overview
This project implements a pipelined Arithmetic Logic Unit (ALU) in Verilog.

It supports multiple arithmetic and logical operations with improved timing through pipelining.

---

## ⚙️ Features
- Arithmetic operations: ADD, SUB, MUL
- Logical operations: AND, OR, XOR
- Opcode-based operation selection
- Pipeline stage for improved performance
- Synchronous design with clock and reset

---

## 🧠 Design Details
- Input signals are registered (pipeline stage)
- Combinational logic computes next result
- Output registered for stable results
- Uses case-based opcode selection

---

## 📂 Files
- alu.v → ALU design
- tb.v → Testbench

---

## 🛠️ Tools Used
- Verilog HDL
- EDA Playground

---

## 📈 Learning Outcome
- Understanding pipelined architecture
- RTL design separation (sequential vs combinational)
- Efficient ALU design techniques
