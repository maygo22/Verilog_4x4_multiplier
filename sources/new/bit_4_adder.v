`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2023 11:07:34 AM
// Design Name: 
// Module Name: bit_4_adder
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


module bit_4_adder(X, Y, Cin, S, Cout); //Declare module bit_4_adder
    input [3:0] X; //Declare X and Y to be Inputs that hold 4 bits
    input [3:0] Y;
    input Cin;  //Declare Cin as input
    
    output [3:0] S; //Declare S and Cout as outputs, S will hold 4 bits
    output Cout;
    
    wire[2:0] L; //Declare a wire variable L that holds 3 bits
    
    full_adder f1(X[0], Y[0], Cin, S[0], L[0]);  //Use 4 full adders that have their Cout linked between eachother and S is the sum
    full_adder f2(X[1], Y[1], L[0], S[1], L[1]);
    full_adder f3(X[2], Y[2], L[1], S[2], L[2]);
    full_adder f4(X[3], Y[3], L[2], S[3], Cout);
    
endmodule //End of the module
