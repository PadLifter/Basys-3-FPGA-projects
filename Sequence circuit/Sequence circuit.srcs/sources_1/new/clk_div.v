`timescale 1ns / 1ps
//counter based


module clk_div(
input wire clk,          // 100MHz
output reg divided_clk=0  // 1Hz => 0.5s ON and 0.5s OFF
    );
 
 // division value = 1000MHz/(2*desired frquency)-1 => 1Hz = 49999999
    
 localparam div_value = 49999999;   // 1Hz?
 
 
 
 
 integer counter_value = 0;  // 32 bit wide reg bus
    
    always@(posedge clk)       // Sensitivity list --> always on rising edge of the clk signal
    begin
        // keep counting until div_value
        if (counter_value == div_value)
            counter_value <= 0;     //Reset value
        else
            counter_value <= counter_value+1;       // NON blocking assignment -> 
            
            /*
            A blocking assignment takes affect immediately it is processed. 
            A nonblocking assignment takes place at the end of processing the current "time delta".
            */    
    end
        
    always@(posedge clk)       // Sensitivity list --> always on rising edge of the clk signal
    begin
        if (counter_value == div_value)
            divided_clk <= ~divided_clk;    // Flip the signal
        else
            divided_clk <= divided_clk;    // Store value
    
    end
endmodule
