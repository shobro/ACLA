
module adder8_4(x,y,add);				
	input [7:0]x,y;
	output [8:0]add;
	wire c1;
	blockSize4 b1(x[3:0],y[3:0],1'b0,add[3:0],c1);
	blockSize4 b2(x[7:4],y[7:4],c1,add[7:4],cout);
	assign add[8]=cout;
endmodule
