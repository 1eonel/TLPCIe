`include "fsm.v"

module TB;
    reg clk;
    reg reset;
    reg init;
    reg FIFOpause0;
    reg FIFOpause1;
    reg FIFOpause2;
    reg FIFOpause3;
    reg FIFOcontinue0;
    reg FIFOcontinue1;
    reg FIFOcontinue2;
    reg FIFOcontinue3;
    reg FIFOempty0;
    reg FIFOempty1;
    reg FIFOempty2;
    reg FIFOempty3;
    reg FIFOerror0;
    reg FIFOerror1;
    reg FIFOerror2;
    reg FIFOerror3;
    reg FIFOfull0;
    reg FIFOfull1;
    reg FIFOfull2;
    reg FIFOfull3;

    wire [3:0] error_full;
    wire [3:0] pause;
    wire [3:0] continue;
    wire idle;

    fsm fsmachine (.clk(clk), .reset(reset), .init(init), 
    .FIFOpause0(FIFOpause0), .FIFOpause1(FIFOpause1), .FIFOpause2(FIFOpause2), .FIFOpause3(FIFOpause3), 
    .FIFOcontinue0(FIFOcontinue0), .FIFOcontinue1(FIFOcontinue1), .FIFOcontinue2(FIFOcontinue2), .FIFOcontinue3(FIFOcontinue3), 
    .FIFOempty0(FIFOempty0), .FIFOempty1(FIFOempty1), .FIFOempty2(FIFOempty2), .FIFOempty3(FIFOempty3),
    .FIFOerror0(FIFOerror0), .FIFOerror1(FIFOerror1), .FIFOerror2(FIFOerror2), .FIFOerror3(FIFOerror3),
    .FIFOfull0(FIFOfull0), .FIFOfull1(FIFOfull1), .FIFOfull2(FIFOfull2), .FIFOfull3(FIFOfull3), 
    .error_full(error_full), .pause(pause), .continue(continue), .idle(idle));

   	always #2 clk = !clk; //clk sgl.

    initial begin
    $display ("test fsm");
    $dumpvars;
    
    $display( "time\t clk, reset, init, FIFOpause0, FIFOpause1, FIFOpause2, FIFOpause3, FIFOcontinue0, FIFOcontinue1, FIFOcontinue2, FIFOcontinue3, FIFOempty0, FIFOempty1, FIFOempty2, FIFOempty3,FIFOerror0, FIFOerror1, FIFOerror2, FIFOerror3, FIFOfull0, FIFOfull1, FIFOfull2, FIFOfull3, error_full, pause, continue, idle");



    $monitor ("%g\t       %b   ",
    $time, clk);

    // Empezamos en init
    clk = 0;
    reset = 0;
    init = 1;

    FIFOpause0 = 0;
    FIFOpause1 = 0;
    FIFOpause2 = 0;
    FIFOpause3 = 0;
    FIFOcontinue0 = 0;
    FIFOcontinue1 = 0;
    FIFOcontinue2 = 0;
    FIFOcontinue3 = 0;
    FIFOempty0 = 1;
    FIFOempty1 = 1;
    FIFOempty2 = 1;
    FIFOempty3 = 1;
    FIFOerror0 = 0;
    FIFOerror1 = 0;
    FIFOerror2 = 0;
    FIFOerror3 = 0;
    FIFOfull0 = 0;
    FIFOfull1 = 0;
    FIFOfull2 = 0;
    FIFOfull3 = 0;

    #4
    init = 0;
    //Todos los FIFOS estan vacios, asi que estamos en IDLE

    #4
    //Agregamos contenido a un FIFO para pasar a ACTIVE
    FIFOempty0 = 0;
    FIFOempty1 = 0;
    FIFOempty2 = 0;
    FIFOempty3 = 0;
  
    #4
    //Encendemos señal del FIFO0 almost full, para pasar a PAUSE
    FIFOpause0 = 1;
    FIFOpause1 = 1;
    FIFOpause2 = 1;
    FIFOpause3 = 1;
    #4
    
    //Estamos en Pause
    //FIFOpause0 = 0;
    //FIFOcontinue0 =1;
    #4
    //Vuelve a Active
    FIFOpause0 = 0;
    FIFOpause1 = 0;
    FIFOpause2 = 0;
    FIFOpause3 = 0;

    FIFOcontinue0 = 1;
    FIFOcontinue1 = 1;
    FIFOcontinue2 = 1;
    FIFOcontinue3 = 1;

    #8
    FIFOpause0 = 1;
    FIFOpause1 = 0;
    FIFOpause2 = 1;
    FIFOpause3 = 0;

    FIFOcontinue0 = 0;
    FIFOcontinue1 = 1;
    FIFOcontinue2 = 0;
    FIFOcontinue3 = 1;

    #8

    FIFOerror0 = 1;
    #8
    #8
    //-----------
    reset = 1;
    
    #16


    
    $finish;


    end

    endmodule



