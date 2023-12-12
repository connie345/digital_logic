`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2021 09:43:29 PM
// Design Name: 
// Module Name: clkdiv
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


module clkdiv(
    input clk,
    input reset,
    output clk_out
    );
    
    reg [1:0] COUNT = 0;
    
        assign clk_out = COUNT[1];
        
        always @(posedge clk)
        begin
        
            COUNT = COUNT + 1;
       end
     
    
    
endmodule
