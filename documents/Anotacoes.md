# Anotações 

# Comandos para compilação e ligação de programas C RISC-V

1. Compilar: riscv32-unknown-elf-gcc.exe 000.main.c -o 000.main.o


* Windonws 10 
    * riscv32-unknown-elf-gcc crt.S 000.main.c -o -nostdinc -nostdlib -nostartfiles -lgcc 
    * riscv32-unknown-elf-gcc crt.S *.c -o riscv/*  -nostdinc -nostdlib -nostartfiles -lgcc 
    * riscv32-unknown-elf-objdump.exe -d 000.main.c.o > 000.main.debug
    
    * riscv32-unknown-elf-objcopy -i 000.main.o -o 000.main.dump 


* ACStone - Makefile 
    * \$(CROSS_COMPILER)gcc crt.S $@.c -o riscv/$@  $(CROSS_CFLAGS) 
    * \$(CROSS_COMPILER)objdump -d riscv/$@ > assemble/$@
