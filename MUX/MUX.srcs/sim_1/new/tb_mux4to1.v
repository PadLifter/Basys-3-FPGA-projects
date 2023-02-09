`timescale 1ns / 1ps

module tb_mux4to1;

reg IN0, IN1, IN2, IN3;
reg S1, S0;
wire OUTPUT;
mux4to1 mymux(
.f(OUTPUT),
.x0(IN0),
.x1(IN1),
.x2(IN2),
.x3(IN3),
.s0(S0),
.s1(S1)
);


initial
begin
IN0=1; IN1=0; IN2=1; IN3=0;
#100 $display ("IN0=%b, IN1=%b, IN2=%b, IN3=%b\n", IN0, IN1, IN2, IN3);
S1=0; S0=0;
#100 $display ("S1=%b, S0=%b, OUTPUT=%b \n", S1, S0, OUTPUT);
S1=0; S0=1;
#100 $display ("S1=%b, S0=%b, OUTPUT=%b \n", S1, S0, OUTPUT);
S1=1; S0=0;
#100 $display ("S1=%b, S0=%b, OUTPUT=%b \n", S1, S0, OUTPUT);
S1=1; S0=1;
#100 $display ("S1=%b, S0=%b, OUTPUT=%b \n", S1, S0, OUTPUT);
end
endmodule
