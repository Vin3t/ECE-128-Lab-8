`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh University
// Engineer: Vincent Langford
// 
// Create Date: 10/30/2025 11:26:53 AM
// Design Name: ROM_tb
// Module Name: ROM_8Bit_tb
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


module ROM_8Bit_tb;
    reg [2:0] ROM_addr;
    wire [3:0] ROM_data;
    
    ROM_8Bit uut (.ROM_data(ROM_data),.ROM_addr(ROM_addr));
    
    initial begin
        for (ROM_addr = 0; ROM_addr < 8; ROM_addr = ROM_addr + 1) begin
            #10; 
        end  
        $stop;
    end
endmodule
