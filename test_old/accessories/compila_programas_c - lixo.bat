rem @echo off
cls
del /Q riscv-bin\*.*
setlocal EnableDelayedExpansion
for %%i in (*.c) do (
	set "_program_c=%%i"
	echo !_program_c:~0,-2!.c >> test_rubens.txt
	set _program=!_program_c:~0,-2!	
	..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S !_program_c:~0,-2!.c -o riscv-bin/!_program_c:~0,-2! -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d	
	..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/%_program% > riscv-bin/%_program.debug%
)