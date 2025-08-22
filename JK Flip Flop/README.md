# JK Flip-Flop Simulation  

## 📌 Project Description  
This project demonstrates the design and simulation of an **JK Flip-Flop** using **Verilog HDL** on AMD Vivado 2024.1 Software and Spartan 7 FPGA Board.  
The design implements the Flip-Flop and simulates its behavior on FPGA Board. 

---

## ⚙️ What is a JK Flip-Flop?  
A **JK Flip-Flop** is a memory element used in digital circuits.  
- **Inputs:** `J` (Set), `K` (Reset), `clk` (Clock) 
- **Outputs:** `Q` (Normal), `Q'` (Complement)  

### Truth Table (Active-Low Inputs)

| clk    | J | K | Qn+1 (Next State) | Description   |
|--------|---|---|-------------------|---------------|
| 0 -> 1 | 0 | 1 | 0                 | Reset (K = 1) |
| 0 -> 1 | 1 | 0 | 1                 | Set (J = 1)   |
| 0 -> 1 | 1 | 1 | Qn`               | Toggle        |
| 0 -> 1 | 0 | 0 | Qn                | Hold          |

---

## 🛠 Tools & Requirements  
- **Vivado Design Suite** (2024.1 Edition used in this simulation)  
- **FPGA Board** (e.g., Xilinx Spartan-7, Artix-7) for hardware testing  
- Basic knowledge of **Verilog HDL**  

