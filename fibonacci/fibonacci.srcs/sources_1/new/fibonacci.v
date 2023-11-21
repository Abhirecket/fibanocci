`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COLLEGE OF VLSI 
// Engineer: ABHISHEK KUMAR KUSHWAHA
// 
// Create Date: 23.05.2023 17:23:32
// Design Name: 
// Module Name: fibonacci
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


module fibonacci(
        clk,
        active,
        rst,
        out

    );
    
    input clk,active,rst;
    output reg [31:0] out;
    
//reg and nets
    reg [31:0] ff1, ff2, mux1, mux2, ff_out_1;
    wire [31:0] w_out, w_ff1, w_ff2;
 
 // Initializing ff to 0 and 1 
    always @(posedge clk or negedge rst) begin
        if(!rst) begin
    
            ff1 <= 32'h0001;
            ff2 <= 32'h0000;
            end
    
        else begin
            
            ff1 <= mux1;
            ff2 <= mux2;
            end
    end
    
    
//net assignment
    assign w_ff1 = ff1;
    assign w_ff2 = ff2;
//in case of enable used Muxing.
        always @(*) begin
    
        if(!rst) begin
    
            mux1 = 32'h0001;
            mux2 = 32'h0000;
            end
    
        else begin
            
            mux1 = active? w_out : w_ff1;
            mux2 = active? w_ff1 : w_ff2;
            end
    end
    
//Addition
        assign w_out = ff1 + ff2 ;
//Output ffloped for satrting value as 0,1 after that the other value 1,2,3,5,8,13......   
        always @(posedge clk or negedge rst)begin
            if(!rst) begin
    
            ff_out_1 <= 32'h0000;
            out <= 32'h0000;
            end
    
        else begin
            
            ff_out_1 <= w_out;
            out <= ff_out_1;
            end
        
        
        end
    

    
    
    
endmodule                      