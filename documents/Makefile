CROSS_COMPILER="riscv64-unknown-linux-gnu-"

CROSS_CFLAGS = -nostdinc -nostdlib -nostartfiles -lgcc -march=rv32imafd -mabi=ilp32d


TESTS = $(patsubst %.c,%,$(wildcard *.c))
		

all: build $(TESTS) 

build:
	mkdir -p riscv
	mkdir -p assemble

# Compile programs
$(TESTS):
	$(CROSS_COMPILER)gcc crt.S $@.c -o riscv/$@  $(CROSS_CFLAGS) 
	$(CROSS_COMPILER)objdump -d riscv/$@ > assemble/$@

# Clean executables and backup files
clean: 
	rm -f assemble/*
	rm -f riscv/*

# Use rules
help:
	@$(ECHO) -e "\nRules:\n"
	@$(ECHO) -e "help: \tShow this help"
	@$(ECHO) -e "clean: \tRemove generated files"


.PHONY: build all
