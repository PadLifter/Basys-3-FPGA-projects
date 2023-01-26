`timescale 1ns / 1ps
module TB_LedSwCounter;
// inputs
reg [3:0] sw = 0;
// outputs
wire led1;
wire led2;
wire led3;
// Unit Under Test (UUT)
LedSwCounter uut (
 .sw (sw),
 .led1(led1),
 .led2(led2),
 .led3(led3)
);
integer k = 0;

initial
begin
 sw=0;
 for(k=0; k<16; k=k+1)
 #100 //100ns viive
 sw=k;
 #5
 $finish;
end
endmodule