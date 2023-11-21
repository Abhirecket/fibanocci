`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2023 10:25:24
// Design Name: 
// Module Name: tb
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


module tb(

    );
    
    
   reg clk,active,rst;
   wire [31:0] out;
    
    
    
fibonacci dut(
        clk,
        active,
        rst,
        out

    );
    
    
    initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
    end 
    
        initial begin
       rst = 1'b0;
       active = 1'b0;
       @(posedge clk);
       rst = 1'b1;
       active = 1'b1;

       repeat(20) @(posedge clk);
       $finish;
    end 
endmodule                                        