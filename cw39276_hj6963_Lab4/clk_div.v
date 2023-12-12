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


module clk_div(
    input clk,
    input reset,
    output slow_clk
    );
    
    reg [15:0] COUNT;
    
        assign slow_clk = COUNT[15];
        
        always @(posedge clk)
        begin
        if(reset)
            COUNT = 0;
        else
            COUNT = COUNT + 1;
       end
     
    
    
endmodule
