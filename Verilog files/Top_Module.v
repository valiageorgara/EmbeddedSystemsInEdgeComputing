module Top_Module();
	reg Motion1, Motion2, Reed;
	integer keyboard;
	output wire [4:0] Code;
	output wire Alarm;
	output wire Active;

	//instantiating the two modules
	Passcodes_Converter P1(keyboard,Code);
	Home_Alarm_System S1(Motion1, Motion2, Reed, Code, Alarm, Active);
  
	initial 
	begin
		$dumpfile("test.vcd");
		$dumpvars(0);
		$monitor("\t\ttime=%0tns\tMotion1=%b   Motion2=%b   Reed=%b   Code=%2d   Active=%b   Alarm=%b", $time, Motion1, Motion2, Reed, keyboard, Active, Alarm);
	end
  
	initial
	begin
		keyboard = 31;
		{Motion1, Motion2, Reed} = 3'b000;
		#5 {Motion1, Motion2, Reed} = 3'b001;
		#5 {Motion1, Motion2, Reed} = 3'b010;
		#5 {Motion1, Motion2, Reed} = 3'b011; 
		#5 {Motion1, Motion2, Reed} = 3'b100;
		#5 {Motion1, Motion2, Reed} = 3'b101;
		#5 {Motion1, Motion2, Reed} = 3'b110; 
		#5 {Motion1, Motion2, Reed} = 3'b111;
		
		#5 keyboard = 4;
		{Motion1, Motion2, Reed} = 3'b000;
		#5 {Motion1, Motion2, Reed} = 3'b001;
		#5 {Motion1, Motion2, Reed} = 3'b010;
		#5 {Motion1, Motion2, Reed} = 3'b011; 
		#5 {Motion1, Motion2, Reed} = 3'b100;
		#5 {Motion1, Motion2, Reed} = 3'b101;
		#5 {Motion1, Motion2, Reed} = 3'b110; 
		#5 {Motion1, Motion2, Reed} = 3'b111;
		
		#5 keyboard = 19;	
		{Motion1, Motion2, Reed} = 3'b000;
		#5 {Motion1, Motion2, Reed} = 3'b001;
		#5 {Motion1, Motion2, Reed} = 3'b010;
		#5 {Motion1, Motion2, Reed} = 3'b011; 
		#5 {Motion1, Motion2, Reed} = 3'b100;
		#5 {Motion1, Motion2, Reed} = 3'b101;
		#5 {Motion1, Motion2, Reed} = 3'b110; 
		#5 {Motion1, Motion2, Reed} = 3'b111;
		
		#5 keyboard = 31;
		{Motion1, Motion2, Reed} = 3'b111;

		#5 keyboard = 7;
		{Motion1, Motion2, Reed} = 3'b101;
		
		#5 keyboard = 4;
		{Motion1, Motion2, Reed} = 3'b101;

		#5 keyboard = 44;
	end
  
endmodule