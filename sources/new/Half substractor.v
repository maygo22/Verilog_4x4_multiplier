`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2023 06:38:01 PM
// Design Name: 
// Module Name: half_substractor
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


module half_substractor(X, Y, S, C);
    input X;
    input Y;
    output S;
    output C;
    
    assign S = X ^ Y;
    assign C = ~X & Y; 
endmodule
