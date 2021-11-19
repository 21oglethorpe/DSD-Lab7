module ssd(input logic[31:0] regs, data,
			output logic r0, r1, r2, r3 , r4, r5, r6, d0, d1, d2, d3, d4, d5, d6);
			assign r0 = !(regs == 0 || regs == 2 || regs ==3 || regs == 5 || regs == 6 || regs == 7||regs == 8 || regs == 9 || regs == 10 || regs == 14 || regs == 15);
			assign r1 = !(regs == 0 || regs == 1 || regs ==2 || regs ==3 || regs == 4 || regs == 7||regs == 8 || regs == 9 || regs == 10 || regs == 12 ||regs == 13 );
			assign r2 = !(regs == 0 || regs == 1 || regs ==3 || regs == 4 || regs == 5 || regs == 6 || regs == 7||regs == 8 || regs == 9 || regs == 10 || regs == 11 ||regs == 13);
			assign r3 = !(regs == 0 || regs == 2 || regs ==3 || regs == 5 || regs == 6 || regs == 8 || regs == 11 || regs == 12 ||regs == 13 || regs == 14);
			assign r4 = !(regs == 0 || regs == 2 || regs == 6 || regs == 8 ||  regs == 10 || regs == 11 || regs == 12 ||regs == 13 || regs == 14 || regs == 15);
			assign r5 = !(regs == 0 || regs == 4 || regs == 5 || regs ==6 || regs == 8 || regs == 9 || regs == 10 || regs == 11 || regs == 14 || regs == 15);
			assign r6 = !(regs == 2 || regs ==3 || regs == 4 || regs == 5 || regs == 6 || regs == 8 || regs == 9 || regs == 10 || regs == 11 || regs == 12 ||regs == 13 || regs == 14 || regs == 15);
			
			assign d0 = !(data == 0 || data == 2 || data ==3 || data == 5 || data == 6 || data == 7||data == 8 || data == 9 || data == 10 || data == 14 || data == 15);
			assign d1 = !(data == 0 || data == 1 || data ==2 || data ==3 || data == 4 || data == 7||data == 8 || data == 9 || data == 10 || data == 12 ||data == 13 );
			assign d2 = !(data == 0 || data == 1 || data ==3 || data == 4 || data == 5 || data == 6 || data == 7||data == 8 || data == 9 || data == 10 || data == 11 ||data == 13);
			assign d3 = !(data == 0 || data == 2 || data ==3 || data == 5 || data == 6 || data == 8 || data == 11 || data == 12 ||data == 13 || data == 14);
			assign d4 = !(data == 0 || data == 2 || data == 6 || data == 8 ||  data == 10 || data == 11 || data == 12 ||data == 13 || data == 14 || data == 15);
			assign d5 = !(data == 0 || data == 4 || data == 5 || data == 6 || data == 8 || data == 9 || data == 10 || data == 11 || data == 14 || data == 15);
			assign d6 = !(data == 2 || data == 3 || data == 4 || data == 5 || data == 6 || data == 8 || data == 9 || data == 10 || data == 11 || data == 12 ||data == 13 || data == 14 || data == 15);
endmodule