`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2024 04:15:59 PM
// Design Name: 
// Module Name: bin2bcd
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


module bin2bcd(
    input [7:0] bin,
    output [11:0] bcd
    );
    
    wire [3:0] con1,con2,con3,con4,con5;
    wire [3:0] ad1,ad2,ad3,ad4,ad5,ad6,ad7;
    
    
    assign con5 [3:0] = {1'b0, con1[3],con2[3],con3[3]}; 
    assign ad1 [3:0]={1'b0, bin[7:5]};
    assign ad2 [3:0] = {con1[2:0], bin[4]}; 
    assign ad3 [3:0] = {con2[2:0],bin[3]};
    assign ad4 [3:0] = {con3[2:0],bin[2]};
    assign ad5 [3:0] = {con4[2:0],bin[1]};
    assign ad6 [3:0] = {1'b0,con1[3],con2[3],con3[3]};
    assign ad7 [3:0] = {con5[2:0],con4[3]};
     
    assign bcd[0] = bin[0]; //bit 0
    add_3 add1(.A(ad1[3:0]),.S(con1[3:0]));
    add_3 add2(.A(ad2[3:0]),.S(con2[3:0]));
    add_3 add3(.A(ad3[3:0]),.S(con3[3:0]));
    add_3 add4(.A(ad4[3:0]),.S(con4[3:0]));
    add_3 add5(.A(ad5[3:0]),.S(bcd[4:1])); //bits 1 through 4
    add_3 add6(.A(ad6[3:0]),.S(con5[3:0]));
    add_3 add7(.A(ad7[3:0]),.S(bcd[8:5])); //bits 5 through 8
    
    assign bcd[11:9] = {2'b00,con5[3]}; //bits 9 through 11
    
    
    
endmodule
