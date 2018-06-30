all:
	iverilog -o bin/pruebaRRobin tbRRobin.v
	vvp bin/pruebaRRobin
	gtkwave gtkws/testRRobin.vcd

sint:
	iverilog -o bin/pruebaSint tbRRobinSint.v
	vvp bin/pruebaSint
	gtkwave gtkws/testRRobin_sint.vcd

clean:
	rm *.dot
	rm *.pid
