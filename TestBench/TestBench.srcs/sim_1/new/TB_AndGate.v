`timescale 1ns / 1ps

module TB_AndGate();

reg a, b; //inputs
wire y; //outputs

AndGate dut(a,b,y);
initial begin

    a=0; b=0; #10;  //Case1
    a=0; b=1; #10;  //Case2
    a=1; b=0; #10;  //Case3
    a=1; b=1; #10;  //Case4

    end
endmodule
