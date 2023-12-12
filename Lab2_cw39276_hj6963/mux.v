`timescale 1ns / 1ps

module mux(
    input e,
    input s0,
    input s1,
    input i0,
    input i1,
    input i2,
    input i3,
    output d
    );
       
    // Structural -- Comment when testing Behavioral
    // Both should never be uncommented at once
    /*
    not (nots0, s0);
    not (nots1, s1);
    
    and (a0, i0, nots0, nots1, e);
    and (a1, i1, nots0, s1, e);
    and (a2, i2, s0, nots1, e);
    and (a3, i3, s0, s1, e);
    
    or (d, a0, a1, a2, a3);
*/    
    
    
    //Behave 
    
    reg db = 0;
    assign d = db;
    always @(e, s0, s1)
    begin
    if(e == 1)
        case({s0,s1})
            2'b00: db = i0;
            2'b01: db = i1;
            2'b10: db = i2;
            2'b11: db = i3;
            default:begin
                db = 0;
                end
        endcase
    else
        db = 0;
   end
   
   
   
    endmodule