module ALU(out, data0, data1, opcode);

output [31:0] out;
input [31:0] data0, data1;
input [3:0] opcode;
wire [31:0] inter[32:0];

nbit_adder add(inter[0], , data0,data1,1'b0);
sub32bit sub(inter[1], , data0, data1,1'b0);
Multiply mult(inter[2], data0, data1);
Div division(inter[3], data0, data1);
comparator_32bit com(inter[4],inter[5], inter[6], data0, data1);
andbitwise opp0(inter[7], data0, data1);
orbitwise opp1(inter[8], data0,data1);
xorBitwise opp2(inter[9], data0, data1);
xnorBitwise opp3(inter[10], data0, data1);
bitshiftleft shiftleft(inter[11], data0, data1);
bitshiftright shiftright(inter[12], data0, data1);
SRA sra1(inter[13], data0, data1);

mux16to1 mux1(out,inter[0],inter[1],inter[2],inter[3],inter[4],inter[5],inter[6],,inter[7],inter[8],inter[9],inter[10],inter[11],inter[12],inter[13] , ,opcode);

endmodule 
