# Makefile automatically generated by ghdl
# Version: GHDL 0.31 (20140108) [Dunoon edition] - GCC back-end code generator
# Command used to generate this makefile:
# ghdl --gen-makefile testbed

GHDL=ghdl
GHDLFLAGS=

# Default target
all: testbed

# Elaboration target
testbed: /usr/lib/gcc/x86_64-fedora_ghdl-linux/4.8.2/vhdl/lib//v93/ieee/std_logic_1164.o /usr/lib/gcc/x86_64-fedora_ghdl-linux/4.8.2/vhdl/lib//v93/ieee/std_logic_1164_body.o snail.o observateur.o testbed.o
	$(GHDL) -e $(GHDLFLAGS) $@

# Run target
run: testbed
	$(GHDL) -r testbed $(GHDLRUNFLAGS)

# Targets to analyze files
/usr/lib/gcc/x86_64-fedora_ghdl-linux/4.8.2/vhdl/lib//v93/ieee/std_logic_1164.o: /usr/lib/gcc/x86_64-fedora_ghdl-linux/4.8.2/vhdl/lib//v93/ieee/../../../src/ieee/std_logic_1164.v93
	@echo "This file was not locally built ($<)"
	exit 1
/usr/lib/gcc/x86_64-fedora_ghdl-linux/4.8.2/vhdl/lib//v93/ieee/std_logic_1164_body.o: /usr/lib/gcc/x86_64-fedora_ghdl-linux/4.8.2/vhdl/lib//v93/ieee/../../../src/ieee/std_logic_1164_body.v93
	@echo "This file was not locally built ($<)"
	exit 1
snail.o: snail.vhd
	$(GHDL) -a $(GHDLFLAGS) $<
observateur.o: observateur.vhd
	$(GHDL) -a $(GHDLFLAGS) $<
testbed.o: testbed.vhd
	$(GHDL) -a $(GHDLFLAGS) $<

# Files dependences
/usr/lib/gcc/x86_64-fedora_ghdl-linux/4.8.2/vhdl/lib//v93/ieee/std_logic_1164.o: 
/usr/lib/gcc/x86_64-fedora_ghdl-linux/4.8.2/vhdl/lib//v93/ieee/std_logic_1164_body.o:  /usr/lib/gcc/x86_64-fedora_ghdl-linux/4.8.2/vhdl/lib//v93/ieee/std_logic_1164.o
snail.o:  /usr/lib/gcc/x86_64-fedora_ghdl-linux/4.8.2/vhdl/lib//v93/ieee/std_logic_1164.o
observateur.o:  /usr/lib/gcc/x86_64-fedora_ghdl-linux/4.8.2/vhdl/lib//v93/ieee/std_logic_1164.o
testbed.o:  /usr/lib/gcc/x86_64-fedora_ghdl-linux/4.8.2/vhdl/lib//v93/ieee/std_logic_1164.o /usr/lib/gcc/x86_64-fedora_ghdl-linux/4.8.2/vhdl/lib//v93/ieee/std_logic_1164_body.o snail.o observateur.o
