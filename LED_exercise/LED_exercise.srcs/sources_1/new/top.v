`timescale 1ns / 1ps

//Leevi Kinnunen
//All switches assigned test

module top(
    input wire [14:0] sw,
    output wire led0,
    output wire led1,
    output wire led2,
    output wire led3,
    output wire led4,
    output wire led5,
    output wire led6,
    output wire led7,
    output wire led8,
    output wire led9,
    output wire led10,
    output wire led11,
    output wire led12,
    output wire led13,
    output wire led14
    );
    
    assign led0 = sw[0] & sw[1];
    
    assign led2 = sw[2] | sw[3];
    
    assign led4 = ~sw[4] | ~sw[5];
   
    assign led6 = ~sw[6] & ~sw[7];
     
    assign led8 = sw[8] ^ sw[9];
 
    assign led10 = ~sw[10] & ~sw[11];
  //CREATE XNOR  assign led11 = sw[12] ? sw[13];
    
    assign led12 = sw[12];
    assign led13 = sw[13];
    assign led14 = sw[14];
    
endmodule
