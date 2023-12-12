`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2021 02:25:53 AM
// Design Name: 
// Module Name: register_logic
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


module register_logic(
    input clk,
    input enable,
    input [4:0] Data,
    output reg [4:0] Q
    );
    
    always @(posedge clk)
        if(enable)
            Q = Data;
endmodule
