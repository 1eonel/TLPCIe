

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
    state <= nxtState;
    end


//Codificación one-hot Estados:
parameter [x:0]RESET = x'b000001; //RESET        = 000001
parameter [x:0]INIT = x'b000010; //INIT          = 000010
parameter [x:0]IDLE = x'b000100; //IDLE          = 000100
parameter [x:0]ACTIVE = x'b001000; //PAUSE       = 001000
parameter [x:0]CONTINUE = x'b010000; //CONTINUE  = 010000
parameter [x:0]ERROR = x'b100000; //ERROR        = 100000


    always @ (*) begin
    nxtState = state;

    case (state)

    end



endmodule