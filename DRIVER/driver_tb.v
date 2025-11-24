module driver_tb;
reg [7 :0] data_in;
reg data_en ;
 wire [7 :0] data_out;
 driver #(8) uut (.data_in(data_in), .data_en(data_en),.data_out(data_out)); 
 
 initial begin
 #10; data_en = 0; data_in = 8'bx; 
 #10; data_en = 1; data_in = 8'b01010101;
 #10; data_en = 1; data_in = 8'b10101010;
  end
    initial begin
      $dumpfile("driver_tb.vcd");
        $dumpvars(0, driver_tb); 
        $monitor("t=%0t | en=%b | in=%b | out=%b",
                  $time, data_en, data_in, data_out);
    end

 endmodule
