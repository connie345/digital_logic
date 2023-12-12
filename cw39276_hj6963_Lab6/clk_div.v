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
    output ans_clk,
    output count_clk
    );
    
    reg [16:0] ans;
    reg [19:0] count;
    reg a;
    reg c;
    assign ans_clk = a;
    assign count_clk = c;
    
    
    always @(posedge clk) begin
        if (count < 500000) begin 
            count <= count + 1;
          end
        else begin
            c <= ~c;
            count <= 0;
          end
    end
    always @(posedge clk) begin
        if (ans < 100000) begin 
            ans <= ans + 1;
          end
        else begin
            a <= ~a;
            ans <= 0;
          end
    end
endmodule
