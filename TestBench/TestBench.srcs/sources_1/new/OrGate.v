`timescale 1ns / 1ps

module OrGate(
    input wire a,
    input wire b,
    input wire c,
    output wire y
    );
    
    assign y = a | b | c;
endmodule
