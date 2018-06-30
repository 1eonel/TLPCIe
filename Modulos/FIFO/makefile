all:
	iverilog -o bin/pruebaFIFO TBFifo.v
	vvp bin/pruebaFIFO
	gtkwave gtkws/testFIFO.vcd

sint:
	iverilog -o bin/pruebaSint tbFIFO_sint.v
	vvp bin/pruebaSint
	gtkwave gtkws/testFIFO_sint.vcd

clean:
	rm *.dot
	rm *.pid
