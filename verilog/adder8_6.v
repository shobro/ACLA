module adder8_6(x,y,add);                               // 16 bit blocksize 6
        input [7:0]x,y;
        output [8:0]add;
        blockSize6 b0(x[5:0],y[5:0],1'b0,add[5:0],c1);
	fulladder f1(x[6],y[6],c1,add[6],c2);
	fulladder f2(x[7],y[7],c2,add[7],c3);
        assign add[8]=c3;
endmodule

