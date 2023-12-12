`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2021 02:03:55 AM
// Design Name: 
// Module Name: CLA_4bits
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


module CLA_4bits(
    input clk,
    input enable,
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [4:0] Q
    );
    wire [3:0] G,P,S;
    wire[4:0] C;
    //wire [3:0] Sum;
    wire Cout;
    wire [4:0] Data;
    assign C[0] = Cin;
    
    assign P[0] = A[0] ^B[0];
    assign P[1] = A[1] ^B[1];
    assign P[2] = A[2] ^B[2];
    assign P[3] = A[3] ^B[3];
    
    assign G[0] = A[0] &B[0];
    assign G[1] = A[1] &B[1];
    assign G[2] = A[2] &B[2];
    assign G[3] = A[3] &B[3];
    
    assign C[1] = G[0] | (P[0]&C[0]);
    assign C[2] = G[1] | (P[1]&G[0]) | (P[1]&P[0]&C[0]);
    assign C[3] = G[2] | (G[1]&P[2]) | (P[2]&P[1]&G[0]) | (P[2]&P[1]&P[0]&C[0]);
    assign C[4] = G[3] | (P[3]&G[2]) | (P[3]&G[1]&P[2]) | (P[3]&P[2]&P[1]&G[0]) | (P[3]&P[2]&P[1]&P[0]&C[0]);
    assign Cout = C[4];
    
    assign S[0] = P[0] ^C[0];
    assign S[1] = P[1] ^( G[0] | (P[0]&C[0]));
    assign S[2] = P[2] ^( G[1] | (P[1]&G[0]) | (P[1]&P[0]&C[0]));
    assign S[3] = P[3] ^(G[2] | (G[1]&P[2]) | (P[2]&P[1]&G[0]) | (P[2]&P[1]&P[0]&C[0]));
    
    //assign Q[4] = COut;
    //assign Sum[3:0] = S;
    
   // wire[4:0] Data;
    assign Data[3:0] = S;
    assign Data[4] = Cout;
    
    register_logic r(.clk(clk), .enable(enable),.Data(Data),.Q(Q));
    
    
endmodule
