module Passcodes_Converter(
	input  [31:0] in, //inputs
	output reg [4:0] passcode //5-bits
	);
   
    always @(in)
    begin
    	$display("Entered passcode: %0d", in);
    	case (in)
			0:  passcode = 5'b00000;
			1:  passcode = 5'b00001;
			2:  passcode = 5'b00010;
			3:  passcode = 5'b00011; 
			4:  passcode = 5'b00100; 
			5:  passcode = 5'b00101; 
			6:  passcode = 5'b00110; 
			7:  passcode = 5'b00111; 
			8:  passcode = 5'b01000;  
			9:  passcode = 5'b01001; 
			10: passcode = 5'b01010;
			11: passcode = 5'b01011;
			12: passcode = 5'b01100;
			13: passcode = 5'b01101;
			14: passcode = 5'b01110;
			15: passcode = 5'b01111;
			16: passcode = 5'b10000;
			17: passcode = 5'b10001;
			18: passcode = 5'b10010;
			19: passcode = 5'b10011;
			20: passcode = 5'b10100;
			21: passcode = 5'b10101;
			22: passcode = 5'b10110;
			23: passcode = 5'b10111;
			24: passcode = 5'b11000;
			25: passcode = 5'b11001;
			26: passcode = 5'b11010;
			27: passcode = 5'b11011;
			28: passcode = 5'b11100;
			29: passcode = 5'b11101;
			30: passcode = 5'b11110;
			31: passcode = 5'b11111;
			default: $display("INVALID passcode");
    	endcase
      //$display("passcode= %b", passcode); 
    end
                   
endmodule