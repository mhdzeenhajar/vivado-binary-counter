`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2026 03:59:22 PM
// Design Name: MHD Zeen Hajar
// Module Name: counter_4bit
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


module counter_4bit(
    input clk,
    input reset,
    output logic [3:0] count    //logic allows the chip to "remember" the value
    );
    
always_ff @(posedge clk) begin

if(reset) begin
    count <= 0;
end
else begin

    count <= count + 1;

end

end




    
endmodule
