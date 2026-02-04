`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2026 04:18:30 PM
// Design Name: 
// Module Name: tb_counter
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


module tb_counter();

    // 1. Declare signals to connect to your chip
    logic clk;
    logic reset;
    logic [3:0] count;

    // 2. Instantiate the Device Under Test (DUT)
    // This connects your "tb" signals to the "counter_4bit" pins
    counter_4bit dut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    // 3. Generate the Clock (The Heartbeat)
    // "Start at 0, then every 5ns, flip the value"
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    // 4. The Test Script
    initial begin
        // Start with Reset ON to clear everything
        reset = 1;
        #20;       // Wait 20 nanoseconds
        
        // Turn Reset OFF - The counter should start now!
        reset = 0;
        #200;      // Let it run for 200ns
        
        $finish;   // Stop simulation
    end

endmodule
