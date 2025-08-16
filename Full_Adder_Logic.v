`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////// GENERAL INFORMATION /////////////////////////
// Create Date: 16.08.2025 15:31:26
// Owner: Omendra Kumar Upadhyay
// Design Name: 3-bit Full Adder Circuit Using Half Adder
// Target Devices: Edge Spartan 7 FPGA Board
// Additional Commnets: Learn about Full Adder and Half Adder Circuit and basic Verilog HDL Programming
//////////////////////////////////////////////////////////////////////////////////
//////////////// CODE STARTS ////////////////////////////
//Creating Top Level Block(3-bit Adder Using 3 Full Adders)
module Top_Layer(
    input [2:0] A,  //3-bit Input 'A'
    input [2:0] B,  //3-bit Input 'B'
    output [3:0] SUM  // 4-bit Output 'SUM'
    );
wire c1, c2, c3;  // Internal Variables(NETS) to take carry out from one FA to another FA Sequentially
Full_Adder FA1(A[0], B[0], 0, SUM[0], c1);  //Instantaniating Full_Adder module
Full_Adder FA2(A[1], B[1], c1, SUM[1], c2);
Full_Adder FA3(A[2], B[2], c2, SUM[2], c3);
assign SUM[3] = c3;  //Assigning final carry out to 4th bit of SUM

endmodule
//////////////////////////////////////////////////////////////
//Full Adder Module Defination
module Full_Adder(
    input a,
    input b,
    input c_in,
    output sum,
    output c_out
    );
wire sum_bridge;  //To take output of 1st HA to 2nd HA
wire carry_bridge1; //carry the c_out from first HA to OR gate
wire carry_bridge2; //carry the c_out from second HA to OR gate
Half_Adder HA1(a, b, sum_bridge, carry_bridge1);  //Instantaniating Half Adder module
Half_Adder HA2(sum_bridge, c_in, sum, carry_bridge2);
assign c_out = carry_bridge1 | carry_bridge2;  //Carry Out OR operation

endmodule
//////////////////////////////////////////////////////////////
//Half Adder Module Defination
module Half_Adder(
    input a,
    input b,
    output sum,
    output c_out
    );
assign sum = a ^ b; //Sum  = 'a' XOR 'b'
assign c_out = a & b; //Carry Out = 'a' AND 'b'

endmodule
//////////////// CODE ENDS ////////////////////
