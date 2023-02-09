`timescale 1ns / 1ps

 module tb_mux2to1;

reg IN0, IN1;
reg S;
wire OUTPUT;
mux2to1 mymux(
.f(OUTPUT),
.x1(IN0),
.x2(IN1),
.s(S)
);

initial
begin
IN0=1; IN1=0;
#100 $display ("INO=%b, IN1=%b\n", IN0, IN1);
S=0;
#100 $display ("S=%b, OUTPUT=%b \n", S, OUTPUT);
S=1;
#100 $display ("S=%b, OUTPUT=%b\n", S, OUTPUT);

end
endmodule
