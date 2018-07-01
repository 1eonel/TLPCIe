

//profe dijo que faltaba salida init a los muxes

module fsm(clk, reset, init, 
FIFOpause0, FIFOpause1, FIFOpause2, FIFOpause3, 
FIFOcontinue0, FIFOcontinue1, FIFOcontinue2, FIFOcontinue3, 
FIFOempty0, FIFOempty1, FIFOempty2, FIFOempty3,
FIFOerror0, FIFOerror1, FIFOerror2, FIFOerror3,
FIFOfull0, FIFOfull1, FIFOfull2, FIFOfull3, 
error_full, pause, continue, idle);

    input clk;
    input reset;
    input init;
    //FIFOpause = Almost full
    input FIFOpause0; 
    input FIFOpause1;
    input FIFOpause2;
    input FIFOpause3;
    //FIFOcontinue = Almost empty
    input FIFOcontinue0;
    input FIFOcontinue1;
    input FIFOcontinue2;
    input FIFOcontinue3;
    input FIFOempty0;
    input FIFOempty1;
    input FIFOempty2;
    input FIFOempty3;
    input FIFOerror0;
    input FIFOerror1;
    input FIFOerror2;
    input FIFOerror3;
    input FIFOfull0;
    input FIFOfull1;
    input FIFOfull2;
    input FIFOfull3;

    output [3:0] error_full;
    output [3:0] pause;
    output [3:0] continue;
    output idle;

    reg [3:0] error_full;
    reg [3:0] pause;
    reg [3:0] continue;
    reg idle;

    reg [8:0] state, nxtState;

    //Codificación one-hot Estados:
    parameter [8:0]sRESET = 8'b00000001; //RESET        = 00000001 = 1
    parameter [8:0]sINIT = 8'b00000010; //INIT          = 00000010 = 2
    parameter [8:0]sIDLE = 8'b00000100; //IDLE          = 00000100 = 4
    parameter [8:0]sACTIVE = 8'b00001000; //ACTIVE      = 00001000 = 8
    parameter [8:0]sPAUSE = 8'b00010000; //PAUSE        = 00010000 = 16
    parameter [8:0]sCONTINUE = 8'b00100000; //CONTINUE  = 00100000 = 32
    parameter [8:0]sPAUSECONTINUE = 8'b01000000; //P&C  = 01000000 = 64
    parameter [8:0]sERROR = 8'b10000000; //ERROR        = 10000000 = 128

    //Unification of FIFO signals
    wire [3:0] FIFOpause;
    wire [3:0] FIFOcontinue;
    wire [3:0] FIFOempty;
    wire [3:0] FIFOfull;
    wire [3:0] FIFOerror;
    wire [3:0] FIFOpauseOR;
    wire [3:0] FIFOcontinueOR;


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

    assign FIFOerror[0] = FIFOerror0;
    assign FIFOerror[1] = FIFOerror1;
    assign FIFOerror[2] = FIFOerror2;
    assign FIFOerror[3] = FIFOerror3;

    assign FIFOfull[0] = FIFOfull0;
    assign FIFOfull[1] = FIFOfull1;
    assign FIFOfull[2] = FIFOfull2;
    assign FIFOfull[3] = FIFOfull3;


    assign FIFOpauseOR[0] = FIFOfull[0] || FIFOpause[0];
    assign FIFOpauseOR[1] = FIFOfull[1] || FIFOpause[1];
    assign FIFOpauseOR[2] = FIFOfull[2] || FIFOpause[2];
    assign FIFOpauseOR[3] = FIFOfull[3] || FIFOpause[3];


    assign FIFOcontinueOR[0] =  FIFOempty[0] || FIFOcontinue[0];
    assign FIFOcontinueOR[1] =  FIFOempty[1] || FIFOcontinue[1];
    assign FIFOcontinueOR[2] =  FIFOempty[2] || FIFOcontinue[2];
    assign FIFOcontinueOR[3] =  FIFOempty[3] || FIFOcontinue[3];


    always @ (posedge clk) begin
        if (reset) begin
        state <= sRESET;
        end
        else if (init) begin
            nxtState <= sINIT;
        end else begin
            state <= nxtState;
        end   

    end
    

    always @ (*) begin

        nxtState = state;

        case (state)

            sRESET:begin
                nxtState = sINIT;
            end 

            sINIT:begin
                nxtState = sIDLE;
            end 

            sIDLE:begin
                if (FIFOempty !== 4'b1111) begin
                idle = 0;
                nxtState = sACTIVE;
                end else begin
                idle = 1;
                end
            end 

            sACTIVE:begin
                if (FIFOpauseOR !== 4'b0000 && FIFOcontinueOR == 4'b0000) begin
                nxtState = sPAUSE;
                end

                /*if (FIFOfull !== 4'b0000 && FIFOcontinue == 4'b0000) begin
                nxtState = PAUSE;
                end*/

                if (FIFOcontinueOR !== 4'b0000 && FIFOpauseOR == 4'b0000) begin
                nxtState = sCONTINUE;
                end
                
                if (FIFOpauseOR !== 4'b0000 && FIFOcontinueOR !== 4'b0000) begin
                nxtState = sPAUSECONTINUE;
                end

                if (FIFOerror !== 4'b0000) begin
                nxtState = sERROR;
                end

            end

            sPAUSE:begin
                if (FIFOpauseOR[0]) begin
                pause[0] = 1;
                continue[0] = 0;                   
                end
                if (FIFOpauseOR[1]) begin
                pause[1] = 1;  
                continue[1] = 0;                 
                end
                if (FIFOpauseOR[2]) begin
                pause[2] = 1; 
                continue[2] = 0;                  
                end
                if (FIFOpauseOR[3]) begin
                pause[3] = 1;
                continue[3] = 0;                   
                end

                nxtState = sACTIVE;
            end 


            sCONTINUE:begin
                if (FIFOcontinueOR[0]) begin
                continue[0] = 1;    
                pause[0] = 0;              
                end
                if (FIFOcontinueOR[1]) begin
                continue[1] = 1; 
                pause[1] = 0;                 
                end
                if (FIFOcontinueOR[2]) begin
                continue[2] = 1;
                pause[2] = 0;                  
                end
                if (FIFOcontinueOR[3]) begin
                continue[3] = 1;
                pause[3] = 0;                  
                end

                nxtState = sACTIVE;

            end 

            sPAUSECONTINUE:begin
                if (FIFOpauseOR[0]) begin
                pause[0] = 1;
                continue[0] = 0;                   
                end
                if (FIFOpauseOR[1]) begin
                pause[1] = 1;  
                continue[1] = 0;                 
                end
                if (FIFOpauseOR[2]) begin
                pause[2] = 1; 
                continue[2] = 0;                  
                end
                if (FIFOpauseOR[3]) begin
                pause[3] = 1;
                continue[3] = 0;                   
                end

                if (FIFOcontinueOR[0]) begin
                continue[0] = 1;    
                pause[0] = 0;              
                end
                if (FIFOcontinueOR[1]) begin
                continue[1] = 1; 
                pause[1] = 0;                 
                end
                if (FIFOcontinueOR[2]) begin
                continue[2] = 1;
                pause[2] = 0;                  
                end
                if (FIFOcontinueOR[3]) begin
                continue[3] = 1;
                pause[3] = 0;                  
                end

                nxtState = sACTIVE;   
        
            end 

            sERROR:begin
                if (reset) begin
                nxtState <= sRESET;
                end
                if (FIFOerror[0]) begin
                  error_full[0] = 1;
                end
                if (FIFOerror[1]) begin
                  error_full[1] = 1;
                end
                if (FIFOerror[2]) begin
                  error_full[2] = 1;
                end
                if (FIFOerror[3]) begin
                  error_full[3] = 1;
                end
            end 
            


        default:
        nxtState = sRESET;
        endcase

    end



endmodule