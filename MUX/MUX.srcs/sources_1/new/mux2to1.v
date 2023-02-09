`timescale 1ns / 1ps

 module mux2to1(
    input x1, x2, s,
    output f
    );
    
    and A1(g1, x2, s);
    and A0(g0, x1, ~s);
    or O0(f, g0, g1);
endmodule