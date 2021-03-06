`timescale 1ns / 1ps

module tb_sum_nbit_1cc;

	parameter N = 8;
 
	logic	[N-1:0]	g_input;
	logic	[N-1:0]	e_input;
	logic	[N:0]	o, o_ref;

	sum_nbit_1cc #(.N(N)) uut( 
		.g_input(g_input),
		.e_input(e_input),
		.o(o)
	);	

	assign o_ref = g_input + e_input;
	
	initial begin
		g_input = 'hA9;
		e_input = 'h7B;
		#100;
		$display("g_input = %H, e_input = %H, o = %H, o_ref = %H", g_input, e_input, o, o_ref);
		#100;
		g_input = 'h74;
		e_input = 'h9D;
		#100;
		$display("g_input = %H, e_input = %H, o = %H, o_ref = %H", g_input, e_input, o, o_ref);
		#100;
		g_input = 'hFF;
		e_input = 'hFF;
		#100;
		$display("g_input = %H, e_input = %H, o = %H, o_ref = %H", g_input, e_input, o, o_ref);
		$stop();
	end

endmodule