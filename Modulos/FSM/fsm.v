

//profe dijo que faltaba salida init a los muxes

module fsm(clk, init, error_full, pause, continue, idle);
    input clk;
    input init;

    output [3:0] error_full;
    output [3:0] pause;
    output [3:0] continue;
    output idle;
    output init;

    reg [4:0] state, nxtState;


    always @ (posedge clk) begin
    if (reset) begin
    state <= RESET;
    else
    state <= nxtState;
    end
    



    //Codificación one-hot Estados:
    parameter [x:0]RESET = x'b0000001; //RESET        = 0000001
    parameter [x:0]INIT = x'b0000010; //INIT          = 0000010
    parameter [x:0]IDLE = x'b0000100; //IDLE          = 0000100
    parameter [x:0]ACTIVE = x'b0001000; //PAUSE       = 0001000
    parameter [x:0]CONTINUE = x'b0010000; //CONTINUE  = 0010000
    parameter [x:0]PAUSECONTINUE = x'b0100000;//P&C   = 0100000
    parameter [x:0]ERROR = x'b1000000; //ERROR        = 1000000


    always @ (*) begin
    nxtState = state;

    case (state)

    RESET:begin
    nxtState = INIT;
    end 
    INIT:begin
    nxtState = IDLE;
    end 
    IDLE:begin
    end 
    ACTIVE:begin
    end 
    CONTINUE:begin
    end 
    PAUSECONTINUE:begin
    end 
    ERROR:begin
    end 
    



    endcase

    end



endmodule