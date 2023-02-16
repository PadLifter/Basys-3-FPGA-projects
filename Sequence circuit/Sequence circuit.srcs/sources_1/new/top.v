`timescale 1ns / 1ps

module top(
input wire clk, //100MHz
output wire led
    );
    
    
clk_div C1(
.clk(clk),
.divided_clk(led)
);
endmodule
