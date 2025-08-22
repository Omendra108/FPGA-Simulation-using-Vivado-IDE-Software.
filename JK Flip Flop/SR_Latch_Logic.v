`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 17.08.2025 16:06:46
// Owner: Omendra Kumar Upadhyay
// Design Name: Active Low SR Latch 
// Target Devices: Edge Spartan 7 FPGA Board
// Tool Versions: AMD Vivado 2024.1  
//////////////////////////////////////////////////////////////////////////////////
/////////////// CODE STARTS //////////////////////////////
module Top_Block(  //Top level logic block
    input  S, // S
    input  R, // R
    input  Q_0, // Qn(Previous state)
    output reg Q_1, // Qn+1(Next state)
    output reg Q_1_ // ~Qn+1(Complement of next state)
    );
//For handling Invalid State condition
always @(*) begin // Always true and executed 
    Q_1 = (~S) | (R & Q_0);  // Boolean Expression of SR Latch
    if (~S & ~R)  //For invalid state (S=0, R=0)
        Q_1_ = 1;
    else
        Q_1_ = ~Q_1;  //For other states make it perfect complement
end

endmodule
///////////////// CODE ENDS /////////////////////////////////


