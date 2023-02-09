`timescale 1ns / 1ps


module top(
    input [5:0] sw,
    output led1
    );
    
        
    mux4to1 M0(
    .x0(sw[0]),
    .x1(sw[1]),
    .x2(sw[2]),
    .x3(sw[3]),
    .s1(sw[5]),
    .s0(sw[4]), 
    .f(led1)
    
    );
    
    
    
endmodule
