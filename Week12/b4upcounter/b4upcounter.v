module b4upcounter(en,o);
input en;
output [3:0]o;
reg [3:0]o;
TFF1 f1(1,o[0],en);
TFF1 f2(1,o[1],o[0]);
TFF1 f3(1,o[2],o[1]);
TFF1 f4(1,o[3],o[2]);
endmodule

module TFF1(T,Q,Clock);
input T,Clock;
output Q;
reg Q;
always@(negedge Clock)
begin
if(T==0)
	Q<=Q;
else
	Q<=~Q;
end
endmodule
