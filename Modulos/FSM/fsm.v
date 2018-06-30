

//profe dijo que faltaba salida init a los muxes

module fsm(clk, reset, init, 
FIFOpause0, FIFOpause1, FIFOpause2, FIFOpause3, 
FIFOcontinue0, FIFOcontinue1, FIFOcontinue2, FIFOcontinue3, 
FIFOempty0, FIFOempty1, FIFOempty2, FIFOempty3,
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
    input FIFOempty0;
    input FIFOempty1;
    input FIFOempty2;
    input FIFOempty3;

    output [3:0] error_full;
    output [3:0] pause;
    output [3:0] continue;
    output idle;

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

    //Unification of FIFO signals
    reg [3:0] FIFOpause;
    reg [3:0] FIFOcontinue;
    reg [3:0] FIFOempty;

    assign FIFOpause[0] = FIFOpause0;
    assign FIFOpause[1] = FIFOpause1;
    assign FIFOpause[2] = FIFOpause2;
    assign FIFOpause[3] = FIFOpause3;

    assign FIFOcontinue[0] = FIFOcontinue0;
    assign FIFOcontinue[1] = FIFOcontinue1;
    assign FIFOcontinue[2] = FIFOcontinue2;
    assign FIFOcontinue[3] = FIFOcontinue3;

    assign FIFOempty[0] = FIFOempty0;
    assign FIFOempty[1] = FIFOempty1;
    assign FIFOempty[2] = FIFOempty2;
    assign FIFOempty[3] = FIFOempty3;

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
                
                if (FIFOempty !== 4'b0000) begin
                  nxtState = ACTIVE;
                end
            end 

            ACTIVE:begin
                if (FIFOpause = 4'b1111) begin
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
                pause = 4'b1111;
                nxtState = ACTIVE;
            end 


            CONTINUE:begin
                continue = 4'b1111;
                nxtState = ACTIVE

            end 

            PAUSECONTINUE:begin
                if (FIFOpause[0]) begin
                pause[0] = 1;                  
                end
                if (FIFOpause[1]) begin
                pause[1] = 1;                  
                end
                if (FIFOpause[2]) begin
                pause[2] = 1;                  
                end
                if (FIFOpause[3]) begin
                pause[3] = 1;                  
                end

                if (FIFOcontinue[0]) begin
                continue[0] = 1;  
                if (FIFOcontinue[1]) begin
                continue[1] = 1;  
                if (FIFOcontinue[2]) begin
                continue[2] = 1;  
                if (FIFOcontinue[3]) begin
                continue[3] = 1;                  
                end  

                nxtState = ACTIVE;   
        
            end 

            ERROR:begin
            end 
            



        endcase

    end



endmodule