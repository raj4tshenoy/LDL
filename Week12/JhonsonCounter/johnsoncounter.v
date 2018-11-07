module johnsoncounter(en,o);
input en;
output [3:0]o;
reg [3:0]o;
DFF1 f1(~o[0],o[3],en);
DFF1 f2(o[3],o[2],en);
DFF1 f3(o[2],o[1],en);
DFF1 f4(o[1],o[0],en);
endmodule

module DFF1(D,Q,Clock);
input D,Clock;
output Q;
reg Q;
always@(posedge Clock)
begin
Q<=D;
end
endmodule
