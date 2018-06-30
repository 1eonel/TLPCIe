all:
	iverilog -o bin/pruebaFIFO TBFifo.v
	vvp bin/pruebaFIFO
	gtkwave gtkws/testFIFO.vcd

sint:
	iverilog -o bin/pruebaSint tbRRobinSint.v
	vvp bin/pruebaSint
	gtkwave gtkws/testRRobin_sint.vcd

clean:
	rm *.dot
	rm *.pid
