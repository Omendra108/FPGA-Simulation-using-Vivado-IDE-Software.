# FPGA-Simulation-using-Vivado-Software
This repository contains simulations of several digital circuits and logics on FPGA(EDGE Spartan-7) hardware programmed using AMD(Xilinx) Vivado ML Edition 2024.1 Software. This is an initiative to propagate knowledge related to RTL design and help electronic geeks learn and contribute.
## How To Create Design on Vivado and Simulate on FPGA
Here is an example of simulating Full Adder on FPGA. In this example I designed a 3-bit full adder using half adders. This contains all the process and code which will be helpful for begineers.
### 1) Creating Project on Vivado
First step is to launch the Vivado 2024.1 application and click on "Create Project". Give a name to the project (Full_Adder) and save it in a particular directory. 
<img width="1920" height="1080" alt="Screenshot 2025-08-16 150650" src="https://github.com/user-attachments/assets/e7aedf11-e320-4e36-97dd-49c7897b55f3" />
In the project type choose "RTL Project" as we have to design the circuit from scratch. 
<img width="1920" height="1080" alt="Screenshot 2025-08-16 150703" src="https://github.com/user-attachments/assets/95dcf7ec-9d02-49a4-b709-7adcd94a0578" />
Next step is to choose the hardware on which we will simulate. We can search our hardware directly and choose, but sometimes we cannot find the FPGA. If FPGA name is not there then we have to go with "part name". On the main Xilinx chip on the FPGA a unique number is given we have to input that in search bar and choose the part.
![Part number](https://github.com/user-attachments/assets/812f3183-6a29-402a-b263-3aee47c3ee9c)
<img width="1920" height="1080" alt="Screenshot 2025-08-16 151025" src="https://github.com/user-attachments/assets/9c4ecdb7-465e-4ef3-ab89-c5379c5e6dfb" />
Afer clicking "Finish" the project will be creating and a dashboard will appear that will show all the components of the project.
### 2) Writing RTL Code
In the "Source" Block choose "Design Sources" and click on "+" to create verilog file. After choosing "Add or Create Design Sources" give a name to cerilog file(.v) and initialize it. <img width="1920" height="1080" alt="Screenshot 2025-08-16 152832" src="https://github.com/user-attachments/assets/ab8c073d-8b8c-4bb3-a6b1-eb07183a6498" />
After this a pop-up window will appear to declare the input and output of top level module(Define Module), here we have to define the inputs and outputs of the circuit(name, direction, length(bits)).
<img width="1920" height="1080" alt="Screenshot 2025-08-16 153124" src="https://github.com/user-attachments/assets/56d4b058-50e0-4818-be3e-61c23e61894d" />
After this a template of the RTL code will be created with top level block already defined which we can change according our design. After this write the RTL code of the circuit. In this example I followed top-down approach, where I first defined Half Adder, then uisng Half Adder I defined Full Adder and finally using 3 Full Adders the final 3-bit adder was implemented. 
<img width="1920" height="1080" alt="Screenshot 2025-08-16 154454" src="https://github.com/user-attachments/assets/f8ac9e93-4c13-4869-853c-6428406c00b9" />
### 3) Defining Switched and LEDs on FPGA Board
After the RTL code is implemented, next step is to map the input and output of the circuit to actual hardware switched and LEDs, for this we create a .xdc file. Under "Sources" block choose "Constraints" and create a .xdc file. For defining the ports on FPGA we required some information about mapping of variables with hardware elements, that we can get on following link:  
Link: https://allaboutfpga.com/edge-spartan-7-fpga-kit-xdc-pin-details/?srsltid=AfmBOook3tG5D8LPGL1pVCURv09wFhdJbXw58YRJ9u-Pi9ss-oF6CP0-  
For inputs we will use switches and for output we will use LEDs.  
<img width="1920" height="1080" alt="Screenshot 2025-08-16 155656" src="https://github.com/user-attachments/assets/e469f7a0-4b71-4886-9d79-db8843422691" />
### 4) Synthesising Design and Generating Bitstream
After the verilog and constraint file is created, to run the simulation on FPGA we need bitstream file(.bit). On the left side panel of we can click on "Generate Bitstream". After this Vivado will follow a procedure to generate the bitstream:  
SYNTHESIS ---> IMPLEMENTATION ---> PROGRAM AND DEBUG(Bitstream generation)  
<img width="1920" height="1080" alt="Screenshot 2025-08-16 160135" src="https://github.com/user-attachments/assets/79afcc6f-fc82-4f1a-9e8f-5fa2c5a2835b" />
### 5) Program FPGA and Run Simulation
After bitstream file is sucessfully generated, we can move to write the program in FPGA and run the circuit. Go to "Hardware Manager", it will automatically connect to the FPGA connected to the computer. Then click on "Program Device", Vivado will automatically choose the bitstream file(.bit). Finally click on "Program".
<img width="1920" height="1080" alt="Screenshot 2025-08-16 160247" src="https://github.com/user-attachments/assets/d7206d7b-5866-45cb-b81b-18f461055ab5" />
### 6) Testing on FPGA
<img width="1600" height="1200" alt="A 0" src="https://github.com/user-attachments/assets/aaa51970-1f2a-42ba-9802-1399edce3ad7" />

## References
1) https://www.youtube.com/watch?v=7uRp7Tj-62s
   







 



