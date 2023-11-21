`include "halfadder.v"
module main;
reg a,b;
wire s,c;
initial begin
	  $dumpfile("hello.vcd");
        $dumpvars;
    {a,b} = 2'b00; #10;
    {a,b} = 2'b01; #10;
    {a,b} = 2'b10; #10;
    {a,b} = 2'b11; #10;      
end
and(s,a,b);
xor(c,a,b);
always @(*) begin
    $monitor("%d %d | %d %d",a,b,s,c);
end
endmodule
