module ring(clk,o);
input clk;
output [3:0]o;
reg [3:0]o;
wire [1:0]c;
JKFF1 f1(1,1,clk,c[0]);
JKFF1 f2(1,1,c[0],c[1]);
decoder241 f3(c,o);
endmodule
module JKFF1 (j,k,clk,q);
input j,k,clk;
output q;
reg q;
always@(negedge clk)
begin
if(j==0&&k==0)
	q <= q;
else if(j==1&&k==0)
	q<=1;
else if(j==0&&k==1)
	q<=0;
else
	q<=~q;
end
endmodule

module decoder241(i,o);
input [1:0]i;
output [3:0]o;
reg [3:0]o;
always@(i)
begin
if(i==0)
	o = 4'b1000;
else if(i==1)
	o = 4'b0100;
else if(i==2)
 	o = 4'b0010;
else if(i==3)
	o = 4'b0001;
end
endmodule


