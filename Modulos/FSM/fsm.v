

//profe dijo que faltaba salida init a los muxes

module fsm(clk, reset, init, FIFOpause, FIFOcontinue, error_full, pause, continue, idle);
    input clk;
    input reset;
    input init;
    input FIFOpause;
    input FIFOcontinue;

    output [3:0] error_full;
    output [3:0] pause;
    output [3:0] continue;
    output idle;

    reg [4:0] state, nxtState;


    always @ (posedge clk) begin
        if (reset) begin
            state <= RESET;
        end 
        else
            state <= nxtState;
        end
    end
    



    //Codificación one-hot Estados:
    parameter [x:0]RESET = x'b0000001; //RESET        = 00000001
    parameter [x:0]INIT = x'b0000010; //INIT          = 00000010
    parameter [x:0]IDLE = x'b0000100; //IDLE          = 00000100
    parameter [x:0]ACTIVE = x'b0001000; //ACTIVE      = 00001000
    parameter [x:0]PAUSE = x'b0001000; //PAUSE        = 00010000
    parameter [x:0]CONTINUE = x'b0010000; //CONTINUE  = 00100000
    parameter [x:0]PAUSECONTINUE = x'b0100000;//P&C   = 01000000
    parameter [x:0]ERROR = x'b1000000; //ERROR        = 10000000


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
                if (FIFOpause==1 && FIFOcontinue==0) begin
                nxtState = PAUSE;
                end
                if (FIFOpause==0 && FIFOcontinue==1) begin
                nxtState = CONTINUE;
                end
                if (FIFOpause==1 && FIFOcontinue==1) begin
                nxtState = PAUSECONTINUE;
                end
            end

            PAUSE:begin
            
            end 


            CONTINUE:begin //tarda 1 ciclo de clk y regresa

            end 

            PAUSECONTINUE:begin
            end 

            ERROR:begin
            end 
            



        endcase

    end



endmodule