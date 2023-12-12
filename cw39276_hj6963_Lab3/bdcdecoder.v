`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2021 04:56:50 PM
// Design Name: 
// Module Name: bdcdecoder
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


module bdcdecoder(
    input i0,
    input i1,
    input i2,
    input i3,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
    output an0,
    output an1,
    output an2,
    output an3
    );
   
    
    not (not0, i0);
    not (not1, i1);
    not (not2, i2);
    not (not3, i3);
    /*a */
    and (a0, not0, i2);
    and (a1, i0,not1, not2);
    and (a2, not0, i1, i3);
    and (a3, not0, not1,not3);
    or (nota, a0, a1,a2,a3);
    not(a, nota);
   /*b*/
   and (b0, not0, not1);
   and (b1, not1, not2);
   and (b2, not0, i2, i3);
   and (b3, not0, not2, not3); 
   or (notb, b0, b1, b2, b3);
   not(b, notb);
   
   /*c*/
   and (c0, not0,i1);
   and (c1, not0, i3);
   and (c2, not2, not1);
   or (notc, c0,c1,c2);
   not (c, notc);
   /*d*/
   and (d0, i0, not1, not2);
   and (d1, not0, not1, i2);
   and (d2, not0, not1, not3);
   and (d3, not0, i2, not3);
   and (d4, not0, i1, not2, i3);
   or (notd, d0,d1,d2,d3,d4);
   not(d, notd);
   
   /*e*/
   and (e0, not1, not2, not3);
   and (e1, not0, i2, not3);
   or (note, e0, e1);
   not (e, note);
   
   /*f*/
   and (f0, i0, not1, not2);
   and (f1, not0, i1, not2);
   and (f2, not0, i1, not3);
   and (f3, not0, not2, not3);
   or (notf, f0, f1, f2, f3);
   not(f, notf);
   
   /*g*/
   and (g0, i0, not1, not2);
   and (g1, not0, i1, not2);
   and (g2, not0, not1, i2);
   and (g3, not0, i2, not3);
   or (notg, g0, g1, g2, g3);
   not(g, notg);
   
      
    reg an_0 = 0;
    reg an_1 = 1;
    reg an_2 = 1;
    reg an_3 = 1;
    assign an0 = an_0;
    assign an1 = an_1;
    assign an2 = an_2;
    assign an3 = an_3;
    
   
endmodule
