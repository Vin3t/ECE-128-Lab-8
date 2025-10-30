`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh University
// Engineer: Vincent Langford
// 
// Create Date: 10/29/2025 06:48:47 PM
// Design Name: RAM_tb
// Module Name: RAM_8Bit_tb
// Project Name: RAM/ROM
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


module RAM_8Bit_tb;
    reg clk, rst, W;
    reg [7:0] data_in;
    reg [2:0] data_addr;
    wire [7:0] data_out;

    RAM_8Bit uut (.clk(clk),.rst(rst),.W(W),.data_in(data_in),.data_addr(data_addr),.data_out(data_out));

    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns clock period
    end

    initial begin
        rst = 1; W = 0; data_in = 8'd0; data_addr = 3'd0;
        #10 rst = 0;

        // Write some data
        W = 1; data_addr = 3'd0; data_in = 8'hAB; #10;
        W = 1; data_addr = 3'd1; data_in = 8'h10; #10;
        
        // Read back data
        W = 0; data_addr = 3'd0; #10;
        W = 0; data_addr = 3'd1; #10;
        $stop;
    end
endmodule
