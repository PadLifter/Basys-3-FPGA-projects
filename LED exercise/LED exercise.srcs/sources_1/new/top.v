`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2023 10:19:20
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
    input wire [3:0] sw,
    output wire led0,
    output wire led1,
    output wire led2,
    output wire led3
    );
    
    assign led0 = sw[0];
    assign led1 = sw[0];
    assign led2 = sw[0];
    assign led3 = sw[0];
    
endmodule
