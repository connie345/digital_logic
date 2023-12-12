`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2021 03:12:05 PM
// Design Name: 
// Module Name: stopwatch
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

 
module stopwatch(
    input clk,
    input startstop,
    input reset,
    input [1:0] mode,
    input [7:0] sw,
    output reg [3:0] d0,
    output reg [3:0] d1, 
    output reg [3:0] d2, 
    output reg [3:0] d3  
    );
    
    reg hold;
    reg ss = 1;
    
always @ (posedge clk) begin
    hold <= startstop;
    if( hold && !startstop)
        ss <= ~ss;
end
    
always @ (posedge clk) begin

//Mode 1
    if (mode == 2'b00) begin
        if (reset == 1) 
                begin 
                    d0 <= 0;
                    d1 <= 0; 
                    d2 <= 0;
                    d3 <= 0; 
                end
                
            else if (ss == 1 && reset != 0) 
                begin
                    //store 
                    d0 <= d0;
                    d1 <= d1;
                    d2 <= d2;
                    d3 <= d3;
                end
             
             else if (ss != 1)
                begin
                  if(d0 == 9) begin           
                     d0 <= 0;                          
                     if (d1 == 9) begin          
                            d1 <= 0;                  
                            if (d2 == 9) begin
                                    d2 <= 0;       
                                    if(d3 == 9)begin
                                        d3 <= 0;
                                        d2 <= 0;
                                        d1 <= 0;
                                        d0 <= 0;
                                    end else
                                        d3 <= d3 + 1; 
                                end else                      
                                    d2 <= d2 + 1;
                         end else                             
                             d1 <= d1 + 1; 
                  end else                                    
                    d0 <= d0 + 1;
                 end
     end
     
 // Mode 2 
     if (mode == 2'b01) begin
         if (reset ==1) 
                 begin 
                     d0 <= 0; 
                     d1 <= 0; 
                     d2 <= sw[3:0];
                     d3 <= sw[7:4]; 
                 end
              
             else if (ss == 1 && reset != 0) 
                 begin
                     d0 <= d0;
                     d1 <= d1;
                     d2 <= d2;
                     d3 <= d3;
                 end
              
              else if (ss != 1)
                 begin
                  if(d0 == 9) begin           
                     d0 <= 0;                          
                     if (d1 == 9) begin          
                            d1 <= 0;                  
                            if (d2 == 9) begin
                                    d2 <= 0;       
                                    if(d3 == 9)begin
                                        d3 <= 0;
                                        d2 <= 0;
                                        d1 <= 0;
                                        d0 <= 0;
                                    end else
                                        d3 <= d3 + 1; 
                                end else                      
                                    d2 <= d2 + 1;
                         end else                             
                             d1 <= d1 + 1; 
                  end else                                    
                    d0 <= d0 + 1;
                 end
                   
      end
 
 
 // Mode 3 
    if (mode == 2'b10) begin
         if (reset ==1)
         begin 
             d0 <= 9;
             d1 <= 9;
             d2 <= 9;
             d3 <= 9;
         end
         
         else if (ss == 1 && reset != 0) 
         begin
             d0 <= d0; 
             d1 <= d1; 
             d2 <= d2; 
             d3 <= d3; 
         end
         
         else if (ss != 1) begin
         
           if(d0 == 0) begin
              d0 <= 9;
              if (d1 == 0) begin
                     d1 <= 9;
                     if (d2 == 0) begin
                             d2 <= 9; 
                             if(d3 == 0) begin
                                 d0 <= 9;
                                 d1 <= 9;
                                 d2 <= 9;
                                 d3 <= 9;
                             end else
                                 d3 <= d3 - 1;
                         end else
                             d2 <= d2 - 1;
                  end else
                      d1 <= d1 - 1; 
           end else 
             d0 <= d0 - 1;
          end
    end
      
 //Mode 4 
    if (mode == 2'b11) begin
      if (reset == 1 ) begin
          d0 <= 0;
          d1 <= 0;
          d2 <= sw[3:0];
          d3 <= sw[7:4];
      end
      else if (ss == 1) begin
          d0 <= d0; 
          d1 <= d1; 
          d2 <= d2; 
          d3 <= d3; 
      end
      else if (ss != 1) begin 
        if(d0 == 0) begin
              d0 <= 9;
              if (d1 == 0) begin
                     d1 <= 9;
                     if (d2 == 0) begin
                             d2 <= 9; 
                             if(d3 == 0) begin
                                 d0 <= 9;
                                 d1 <= 9;
                                 d2 <= 9;
                                 d3 <= 9;
                             end else
                                 d3 <= d3 - 1;
                         end else
                             d2 <= d2 - 1;
                  end else
                      d1 <= d1 - 1; 
           end else 
             d0 <= d0 - 1;
          end
 end
     
     
end

endmodule
