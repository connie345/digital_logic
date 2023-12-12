`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2021 08:39:02 PM
// Design Name: 
// Module Name: tb_mux
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
`timescale 1ns / 1ps


module tb_mux;
reg i0;
reg i1;
reg i2;
reg i3;
reg s0;
reg s1;
reg e;

wire d;

mux uut(
.i0(i0),
.i1(i1),
.i2(i2),
.i3(i3),
.s0(s0),
.s1(s1),
.d(d),
.e(e)
);

initial begin
/*
$display("if all inputs are 1");
i0 = 1;
i1 = 1;
i2 = 1;
i3 = 1;
s0 = 0;
s1 = 0;
e = 0;

#50;
e = 0;
s0 = 0;
s1 = 0;
$display("TC01");
if(d != 1'b0)$display("Result is wrong");

e = 0;
s0 = 0;
s1 = 1;
#50
$display("TC02");
if(d != 1'b0)$display("Result is wrong");

e = 0;
s0 = 1;
s1 = 0;
#50
$display("TC03");
if(d != 1'b0)$display("Result is wrong");

e = 0;
s0 = 1;
s1 = 1;
#50
$display("TC04");
if(d != 1'b0)$display("Result is wrong");

e = 1;
s0 = 0;
s1 = 0;

#50
$display("TC05");
if(d != i0)$display("Result is wrong");

e = 1;
s0 = 0;
s1 = 1;
#50
$display("TC06");
if(d != i1)$display("Result is wrong");

e = 1;
s0 = 1;
s1 = 0;
#50
$display("TC07");
if(d != i2)$display("Result is wrong");

e = 1;
s0 = 1;
s1 = 1;
#50
$display("TC08");
if(d != i3)$display("Result is wrong");
*/


$display("if only i0 = 1");
i0 = 1;
i1 = 0;
i2 = 0;
i3 = 0;
s0 = 0;
s1 = 0;
e = 0;

#50;
e = 0;
s0 = 0;
s1 = 0;
$display("TC01");
if(d != 1'b0)$display("Result is wrong");

e = 0;
s0 = 0;
s1 = 1;
#50
$display("TC02");
if(d != 1'b0)$display("Result is wrong");

e = 0;
s0 = 1;
s1 = 0;
#50
$display("TC03");
if(d != 1'b0)$display("Result is wrong");

e = 0;
s0 = 1;
s1 = 1;
#50
$display("TC04");
if(d != 1'b0)$display("Result is wrong");

e = 1;
s0 = 0;
s1 = 0;

#50
$display("TC05");
if(d != i0)$display("Result is wrong");

e = 1;
s0 = 0;
s1 = 1;
#50
$display("TC06");
if(d != i1)$display("Result is wrong");

e = 1;
s0 = 1;
s1 = 0;
#50
$display("TC07");
if(d != i2)$display("Result is wrong");

e = 1;
s0 = 1;
s1 = 1;
#50
$display("TC08");
if(d != i3)$display("Result is wrong");



$display("if only i1 = 1");
i0 = 0;
i1 = 1;
i2 = 0;
i3 = 0;
s0 = 0;
s1 = 0;
e = 0;

#50;
e = 0;
s0 = 0;
s1 = 0;
$display("TC01");
if(d != 1'b0)$display("Result is wrong");

e = 0;
s0 = 0;
s1 = 1;
#50
$display("TC02");
if(d != 1'b0)$display("Result is wrong");

e = 0;
s0 = 1;
s1 = 0;
#50
$display("TC03");
if(d != 1'b0)$display("Result is wrong");

e = 0;
s0 = 1;
s1 = 1;
#50
$display("TC04");
if(d != 1'b0)$display("Result is wrong");

e = 1;
s0 = 0;
s1 = 0;

#50
$display("TC05");
if(d != i0)$display("Result is wrong");

e = 1;
s0 = 0;
s1 = 1;
#50
$display("TC06");
if(d != i1)$display("Result is wrong");

e = 1;
s0 = 1;
s1 = 0;
#50
$display("TC07");
if(d != i2)$display("Result is wrong");

e = 1;
s0 = 1;
s1 = 1;
#50
$display("TC08");
if(d != i3)$display("Result is wrong");


$display("if only i2 = 1");
i0 = 0;
i1 = 0;
i2 = 1;
i3 = 0;
s0 = 0;
s1 = 0;
e = 0;

#50;
e = 0;
s0 = 0;
s1 = 0;
$display("TC01");
if(d != 1'b0)$display("Result is wrong");

e = 0;
s0 = 0;
s1 = 1;
#50
$display("TC02");
if(d != 1'b0)$display("Result is wrong");

e = 0;
s0 = 1;
s1 = 0;
#50
$display("TC03");
if(d != 1'b0)$display("Result is wrong");

e = 0;
s0 = 1;
s1 = 1;
#50
$display("TC04");
if(d != 1'b0)$display("Result is wrong");

e = 1;
s0 = 0;
s1 = 0;

#50
$display("TC05");
if(d != i0)$display("Result is wrong");

e = 1;
s0 = 0;
s1 = 1;
#50
$display("TC06");
if(d != i1)$display("Result is wrong");

e = 1;
s0 = 1;
s1 = 0;
#50
$display("TC07");
if(d != i2)$display("Result is wrong");

e = 1;
s0 = 1;
s1 = 1;
#50
$display("TC08");
if(d != i3)$display("Result is wrong");


$display("if only i3 = 1");
i0 = 0;
i1 = 0;
i2 = 0;
i3 = 1;
s0 = 0;
s1 = 0;
e = 0;

#50;
e = 0;
s0 = 0;
s1 = 0;
$display("TC01");
if(d != 1'b0)$display("Result is wrong");

e = 0;
s0 = 0;
s1 = 1;
#50
$display("TC02");
if(d != 1'b0)$display("Result is wrong");

e = 0;
s0 = 1;
s1 = 0;
#50
$display("TC03");
if(d != 1'b0)$display("Result is wrong");

e = 0;
s0 = 1;
s1 = 1;
#50
$display("TC04");
if(d != 1'b0)$display("Result is wrong");

e = 1;
s0 = 0;
s1 = 0;

#50
$display("TC05");
if(d != i0)$display("Result is wrong");

e = 1;
s0 = 0;
s1 = 1;
#50
$display("TC06");
if(d != i1)$display("Result is wrong");

e = 1;
s0 = 1;
s1 = 0;
#50
$display("TC07");
if(d != i2)$display("Result is wrong");

e = 1;
s0 = 1;
s1 = 1;
#50
$display("TC08");
if(d != i3)$display("Result is wrong");



end

endmodule
