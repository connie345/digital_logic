`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2021 01:38:24 AM
// Design Name: 
// Module Name: RCA_4bits
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RCA_4bits(
    input clk,
    input enable,
    input [3:0] A,
    input [3:0] B,
    input cin,
    output [4:0] Q
    );
    
    wire r0,r1,r2,r3;
    
    full_adder a0(.A(A[0]),.B(B[0]),.cin(cin),.S(Q[0]),.cout(r0));
    full_adder a1(.A(A[1]),.B(B[1]),.cin(r0),.S(Q[1]),.cout(r1));
    full_adder a2(.A(A[2]),.B(B[2]),.cin(r1),.S(Q[2]),.cout(r2));
    full_adder a3(.A(A[3]),.B(B[3]),.cin(r2),.S(Q[3]),.cout(Q[4]));
    
    register_logic r(.clk(clk),.enable(enable),.Data(Q), .Q());
endmodule
