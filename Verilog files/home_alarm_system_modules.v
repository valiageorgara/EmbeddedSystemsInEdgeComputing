module Home_Alarm_System(
    input wire motion1,
    input wire motion2,
    input wire reed,
    input wire [4:0] code,
	output reg alarm,
	output reg active
    );
  
  always @(posedge motion1 or posedge motion2 or posedge reed or code or active or alarm)
    begin
      // arm system with code 31
      if(code == 5'b11111) begin
        active = 1'b1; //active = 1
        alarm = (motion1 | motion2 | reed) & active;
      end
      // disarm system with code 4
      else if(code == 5'b00100) begin
        active = 1'b0; // active = 0
        alarm = 1'b0; //alarm = 0
      end
      else begin
        alarm = (motion1 | motion2 | reed) & active;
      end
	
      if(alarm == 1'b1) begin
      	//$display("=======>> !!! Siren !!! <<=======");
	    end
    end
  
endmodule