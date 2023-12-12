`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2021 04:19:38 PM
// Design Name: 
// Module Name: tb_bdcdecoder
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


module tb_bdcdecoder;
    reg i0;
    reg i1;
    reg i2;
    reg i3;
    wire a;
    wire b;
    wire c;
    wire d;
    wire e;
    wire f;
    wire g;
    wire an0;
    wire an1;
    wire an2;
    wire an3;
    
    bdcdecoder uut(
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .e(e),
    .f(f),
    .g(g),
    .an0(an0),
    .an1(an1),
    .an2(an2),
    .an3(an3)
    );
    
 initial begin
 
 i0 = 0;
 i1 = 0;
 i2 = 0;
 i3 = 0;
 
 #50  
 
 i0 = 0;
 i1 = 0;
 i2 = 0;
 i3 = 0;
 
 #50 
 
 i0 = 0;
 i1 = 0;
 i2 = 0;
 i3 = 1;
 
 
 #50 
 
 i0 = 0;
 i1 = 0;
 i2 = 1;
 i3 = 0;
 
 
 #50 
 
 i0 = 0;
 i1 = 0;
 i2 = 1;
 i3 = 1;
 
 
 #50 
 
 i0 = 0;
 i1 = 1;
 i2 = 0;
 i3 = 0;
 
 
 #50 
 
 i0 = 0;
 i1 = 1;
 i2 = 0;
 i3 = 1;
 
 
 #50 
 
 i0 = 0;
 i1 = 1;
 i2 = 1;
 i3 = 0;
 
 
 #50 
 
 i0 = 0;
 i1 = 1;
 i2 = 1;
 i3 = 1;
 
 
 #50 
 
 i0 = 1;
 i1 = 0;
 i2 = 0;
 i3 = 0;
 
 
 #50 
 
 i0 = 1;
 i1 = 0;
 i2 = 0;
 i3 = 1;
 
 end
endmodule
