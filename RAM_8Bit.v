`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh University
// Engineer: Vincent Langford
// 
// Create Date: 10/29/2025 06:30:21 PM
// Design Name: Vincent Langford
// Module Name: RAM_8Bit
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


module RAM_8Bit(
    input clk,
    input rst,
    input W,                     // Write enable: 1 = write, 0 = read
    input [7:0] data_in,         // 8-bit input data
    input [2:0] data_addr,       // 3-bit address (8 locations)
    output reg [7:0] data_out    // 8-bit output data
    );
    
    parameter data_w = 8;        // Data width = 8 bits
    parameter addr_w = 3;        // Address width = 3 bits (2^3 = 8)
    parameter size   = 8;        // Number of memory locations

    // Memory declaration
    reg [data_w-1:0] mem [0:size-1];

    integer i;

    always @(posedge clk) begin
        if (rst) begin
            // Reset memory contents
            for (i = 0; i < size; i = i + 1) begin
                mem[i] <= 8'd0;
            end
            data_out <= 8'd0;
        end
        else begin
            if (W)
                // Write operation
                mem[data_addr] <= data_in;
            else
                // Read operation
                data_out <= mem[data_addr];
        end
    end

endmodule
