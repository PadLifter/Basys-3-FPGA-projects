`timescale 1ns / 1ps

//Leevi Kinnunen
//Operations exercise

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
    
    //AND - operation
    assign led0 = sw[0] & sw[1];
    
    //OR - operation
    assign led2 = sw[2] | sw[3];
    
    //NAND - operation
    assign led4 = ~sw[4] | ~sw[5];
   
    //NOR - operation
    assign led6 = ~sw[6] & ~sw[7];
     
    //XOR - operation
    assign led8 = sw[8] ^ sw[9];
 
    //XNOR - operation
    assign led10 = !(sw[10] ^ sw[11]);
    
    //Single LED on
    assign led11 = sw[12];
   
endmodule