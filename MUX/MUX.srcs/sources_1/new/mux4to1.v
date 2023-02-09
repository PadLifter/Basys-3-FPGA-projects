`timescale 1ns / 1ps


module mux4to1(
    input x0,x1,x2,x3,
    input s0, s1,
    output f
   );
   
   // Define internal wires
    wire g0, g1;
    
    // Call mux2to1
    // Ylemmässä tavassa tulojen ja lähtöjen järjestyksen täytyy vastata modulin järjestystä. 
    // Alemmassa ei, joten se on hieman parempi/turvallisempi tapa 
    mux2to1 M0 (x0,x1,s0,g0);
    mux2to1 M1 (
    .x1(x2),
    .x2(x3),
    .s(s0),
    .f(g1)
    );
    
    mux2to1 M3 (
    .x1(g0),
    .x2(g1),
    .s(s1),
    .f(f)
    );
    
endmodule
