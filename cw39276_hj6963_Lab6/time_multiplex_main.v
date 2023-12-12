`timescale 1ns / 1ps

module time_multiplex_main(
    input clk,
    input startstop,
    input reset,
    input [7:0] sw,
    input [1:0] mode,
    output [3:0] an,
    output [6:0] sseg
    );
    
    wire [6:0] in0, in1, in2, in3;
    wire ans_clk;
    wire count_clk;
    wire [3:0] d0; //count for right most digit
    wire [3:0] d1; //count for second right most digit
    wire [3:0] d2; //count for second left most digit
    wire [3:0] d3; //count for left most digit
    
    // Module instantiation of hexto7segment decoder
    hexto7segment c1 (.x(d0), .r(in0));
    hexto7segment c2 (.x(d1), .r(in1));
    hexto7segment c3 (.x(d2), .r(in2));
    hexto7segment c4 (.x(d3), .r(in3));
    
    // Module instantiation of clock divider
    // same functionality as the clk_div before, but may have a different width requirement
    clk_div clock (.clk(clk), .reset(reset), .ans_clk(ans_clk), .count_clk(count_clk));
    
    
    stopwatch c5 (
        .clk(count_clk),
        .startstop(startstop),
        .reset(reset),
        .mode(mode[1:0]),
        .sw(sw[7:0]),
        .d0(d0),
        .d1(d1),
        .d2(d2),
        .d3(d3));
    
    
    // Module instantiation of the multiplexer
    //replace slow_clk with clk for simulation, and vice versa
    time_mux_state_machine c6 (
        .clk(ans_clk),
        .reset(reset),
        .in0(in0),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .an(an),
        .sseg(sseg));   
    
    
endmodule
