`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh University
// Engineer: Vincent Langford
// 
// Create Date: 10/29/2025 06:58:39 PM
// Design Name: ROM
// Module Name: ROM_8Bit
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


module ROM_8Bit(ROM_data, ROM_addr);
    output reg [3:0] ROM_data; //4-bit output data
    input [2:0] ROM_addr; //3-bit address (8 Locations)
    
    always @(ROM_addr) begin 
        case (ROM_addr)
            3'd0: ROM_data = 4'b0000; //0
            3'd1: ROM_data = 4'b1100; //C
            3'd2: ROM_data = 4'b0110; //6
            3'd3: ROM_data = 4'b0111; //7
            3'd4: ROM_data = 4'b1000; //8
            3'd5: ROM_data = 4'b0001; //1
            3'd6: ROM_data = 4'b1101; //D
            3'd7: ROM_data = 4'b1110; //E
        endcase
    end
endmodule
