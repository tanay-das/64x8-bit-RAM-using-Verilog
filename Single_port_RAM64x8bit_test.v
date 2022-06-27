`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:53:58 06/22/2022
// Design Name:   Single_Port_RAM_64x8bit
// Module Name:   D:/project/64x8bit_Single_port_RAM/Single_Port_RAM/Single_port_RAM64x8bit_test.v
// Project Name:  Single_Port_RAM
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Single_Port_RAM_64x8bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////


module Single_port_RAM64x8bit_test;

	// Inputs
	reg [7:0] data;
	reg [5:0] addr;
	reg we;
	reg clk;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	Single_Port_RAM_64x8bit uut (
		.data(data), 
		.addr(addr), 
		.we(we), 
		.clk(clk), 
		.q(q)
	);

	initial 
		begin
			clk = 1'b1;
			forever #5 clk= ~clk;
		end
	
	initial 
		begin
		// Initialize Inputs
			data = 8'h01;
			addr = 5'd0;
			we = 1'b1;
			#10;
			
			data = 8'h02;
			addr = 5'd1;
			#10;
			
			data = 8'h03;
			addr = 5'd4;
			#10;
			
			addr = 5'd1;
			we = 1'b0;
			#10;
			
			addr = 5'd4;
			#10;

			addr = 5'd0;
			#10;

	end
      
endmodule

