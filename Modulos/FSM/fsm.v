

//profe dijo que faltaba salida init a los muxes

module fsm(clk, reset, init, FIFOpause0, FIFOpause1, FIFOpause2, FIFOpause3, FIFOcontinue0, FIFOcontinue1, FIFOcontinue2, FIFOcontinue3, 
           error_full, pause, continue, idle);

    input clk;
    input reset;
    input init;
    input FIFOpause0;
    input FIFOpause1;
    input FIFOpause2;
    input FIFOpause3;
    input FIFOcontinue0;
    input FIFOcontinue1;
    input FIFOcontinue2;
    input FIFOcontinue3;

    output [3:0] error_full;
    output [3:0] pause;
    output [3:0] continue;
    output idle;


    reg [3:0] FIFOpause;
    reg [3:0] FIFOcontinue;
    reg [x:0] state, nxtState;

    //Codificación one-hot Estados:
    parameter [x:0]RESET = x'b00000001; //RESET        = 00000001
    parameter [x:0]INIT = x'b00000010; //INIT          = 00000010
    parameter [x:0]IDLE = x'b00000100; //IDLE          = 00000100
    parameter [x:0]ACTIVE = x'b00001000; //ACTIVE      = 00001000
    parameter [x:0]PAUSE = x'b00010000; //PAUSE        = 00010000
    parameter [x:0]CONTINUE = x'b00100000; //CONTINUE  = 00100000
    parameter [x:0]PAUSECONTINUE = x'b01000000; //P&C  = 01000000
    parameter [x:0]ERROR = x'b10000000; //ERROR        = 10000000

    assign FIFOpause[0] = FIFOpause0;
    assign FIFOpause[1] = FIFOpause1;
    assign FIFOpause[2] = FIFOpause2;
    assign FIFOpause[3] = FIFOpause3;

    assign FIFOcontinue[0] = FIFOcontinue0;
    assign FIFOcontinue[1] = FIFOcontinue1;
    assign FIFOcontinue[2] = FIFOcontinue2;
    assign FIFOcontinue[3] = FIFOcontinue3;


    always @ (posedge clk) begin
        if (reset) begin
            state <= RESET;
        end 
        else
            state <= nxtState;
        end
    end
    

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
                if (FIFOpause = 4'b0000) begin
                nxtState = PAUSE;
                end

                if (FIFOcontinue == 4'b1111) begin
                nxtState = CONTINUE;
                end
                
                if (FIFOpause !== 4'b0000 && FIFOcontinue !== 4'b1111) begin
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