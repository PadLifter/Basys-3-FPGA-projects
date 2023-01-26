`timescale 1ns / 1ps

module TB_AndGate();

reg a, b, c; //inputs
wire y; //outputs

OrGate dut(a,b,c,y);
initial begin

    a=0; b=0; c=0; #10;  //Case1
    a=0; b=1; c=0; #10;  //Case2
    a=1; b=0; c=0; #10;  //Case3
    a=1; b=1; c=0; #10;  //Case4
    a=0; b=0; c=1; #10;  //Case5
    a=0; b=1; c=1; #10;  //Case6
    a=1; b=0; c=1; #10;  //Case7
    a=1; b=1; c=1; #10;  //Case8


    end
endmodule

