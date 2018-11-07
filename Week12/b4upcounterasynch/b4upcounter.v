module b4upcounter(en,o);
input en;
output [3:0]o;
reg [3:0]o;
TFF1 f1(1,o[0],en);
TFF1 f2(o[0]&1,o[1],en);
TFF1 f3(o[0]&o[1]&1,o[2],en);
TFF1 f4(o[0]&o[1]&o[2]&1,o[3],en);
endmodule

module TFF1(T,Q,Clock);
input T,Clock;
output Q;
reg Q;
always@(posedge Clock)
begin
if(T==0)
	Q<=Q;
else
	Q<=~Q;
end
endmodule
