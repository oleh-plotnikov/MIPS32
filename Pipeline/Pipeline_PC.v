//Program counter
`timescale 1ns/1ps

module Pipeline_PC(	i_clk,
			i_rst_n,
			i_we,
			i_data,
			o_data
		 );

input i_clk;
input i_rst_n;
input i_we;
input [29:0] i_data;

output [29:0] o_data;

reg [29:0] pc;

always@(posedge i_clk, negedge i_rst_n) begin
	if(!i_rst_n)
		pc <= 0;
	else if(!i_we)
		pc <= i_data;
end

assign o_data = pc;

endmodule