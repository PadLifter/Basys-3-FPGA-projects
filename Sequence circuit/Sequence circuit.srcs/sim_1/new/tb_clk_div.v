`timescale 1ns / 1ps

module tb_clkDiv;

reg clk = 0;      
wire divided_clk; 

clk_div clk_div_UUT (
.clk(clk),
.divided_clk(divided_clk)
);

always #5 clk=~clk;     //every 5ns signal flip => 10ns period => 100MHz
 
endmodule