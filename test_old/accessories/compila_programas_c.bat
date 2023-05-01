rem @echo off
cls
del /Q riscv-bin\*.*
setlocal EnableDelayedExpansion
for %%i in (*.c) do (
	..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S %%i -o riscv-bin/%%i -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d	
	..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/%%i > riscv-bin/%%i.debug
)