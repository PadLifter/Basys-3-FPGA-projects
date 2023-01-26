`timescale 1ns / 1ps

module LedSwCounter(
    input [3:0] sw,
    output led1,
    output led2,
    output led3
    );
    assign led1 = ~sw[3] & ~sw[2];
    assign led2 = (~sw[3] & sw[2])|(sw[3] & ~sw[2] & ~sw[1]);
    assign led3 = (sw[3] & sw[2]) | (sw[3] & sw[1]);

endmodule
   

