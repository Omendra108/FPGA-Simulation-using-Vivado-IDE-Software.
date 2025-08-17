# SR Latch Simulation  

## 📌 Project Description  
This project demonstrates the design and simulation of an **SR Latch (Set-Reset Latch)** using **Verilog HDL** on AMD Vivado 2024.1 Software and Spartan 7 FPGA Board.  
The design implements the latch and simulates its behavior on FPGA Board. 

---

## ⚙️ What is an SR Latch?  
An **SR Latch** is a fundamental memory element used in digital circuits.  
- **Inputs:** `S` (Set), `R` (Reset)  
- **Outputs:** `Q` (Normal), `Q'` (Complement)  

### Truth Table (Active-Low Inputs)

| S | R | Qn+1 (Next State) | Description        |
|---|---|-------------------|--------------------|
| 0 | 1 | 1                 | Set (Q = 1)        |
| 1 | 0 | 0                 | Reset (Q = 0)      |
| 1 | 1 | Qn                | Hold               |
| 0 | 0 | Invalid           | Undefined (Error)  |

---

## 🛠 Tools & Requirements  
- **Vivado Design Suite** (2024.1 Edition used in this simulation)  
- **FPGA Board** (e.g., Xilinx Spartan-7, Artix-7) for hardware testing  
- Basic knowledge of **Verilog HDL**  

