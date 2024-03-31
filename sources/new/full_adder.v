`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2023 12:03:22 AM
// Design Name: 
// Module Name: full_adder
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


module full_adder(X, Y, Cin, S, Cout);
    input X;
    input Y;
    input Cin;
    
    output S;
    output Cout;
    
    wire s1, c1, a1;
    assign s1 = X ^ Y;
    assign c1 = X & Y;
    assign S = s1 ^ Cin;
    assign a1 = s1 & Cin;
    assign Cout = c1 | a1;
endmodule
