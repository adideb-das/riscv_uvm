`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:03:35 02/14/2015 
// Design Name: 
// Module Name:    inst_mem 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module inst_mem(
    input [7:0] a,         // Memory Address
    output [15:0] r        // Memory data output
);

reg [15:0] rom [255:0];    // Declaration of 256X16 memory

initial begin
    // Initialize memory with provided hex values
    rom[0] = 16'h9a35;
    rom[1] = 16'h9a7f;
    rom[2] = 16'h9a85;
    rom[3] = 16'h9ac0;
    rom[4] = 16'h9b0b;
    rom[5] = 16'h9b73;
    rom[6] = 16'h9bbc;
    rom[7] = 16'h9bc1;
    rom[8] = 16'h9c04;
    rom[9] = 16'h9c40;
    rom[10] = 16'h9c81;
    rom[11] = 16'h9ceb;
    rom[12] = 16'h9d11;
    rom[13] = 16'h9d40;
    rom[14] = 16'h9d82;
    rom[15] = 16'h9dd4;
    rom[16] = 16'hefff;
end

assign r = rom[a];         // Read from memory based on address 'a'

endmodule


