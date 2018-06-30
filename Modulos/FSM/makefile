all:
	iverilog -o bin/pruebaFSM TBfsm.v
	vvp bin/pruebaFSM
	gtkwave gtkws/testFSM.vcd

sint:
	iverilog -o bin/pruebaSint tbFSM.v
	vvp bin/pruebaSint
	gtkwave gtkws/testFSM_sint.vcd

clean:
	rm *.dot
	rm *.pid
