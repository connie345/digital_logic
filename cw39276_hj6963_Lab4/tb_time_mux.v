`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2021 05:43:19 PM
// Design Name: 
// Module Name: tb_time_mux
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


module tb_time_mux;

reg clk;
reg reset;
reg [15:0] sw;
wire [3:0] an;
wire [6:0] sseg;

time_multiplexing_main ui(
.clk(clk),
.reset(reset),
.sw(sw),
.an(an),
.sseg(sseg)
);

initial begin

clk = 0;
reset = 1;
sw= 16'h000;

#10 
reset = 0;
sw = 16'h0001;

#10 
sw = 16'h1234;

#10 
sw = 16'h3210;
reset = 1;

#10 
reset = 0;
sw = 16'h0004;

#10 
sw = 16'h0005;

end

always 
#5 clk = ~clk;


endmodule
