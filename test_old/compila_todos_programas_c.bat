rem @echo off
cls
del /Q riscv-bin\*.*

rem compila programas fonte em C
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 000.main.c -o riscv-bin/000.main -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 011.const.c -o riscv-bin/011.const -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 012.const.c -o riscv-bin/012.const -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 013.const.c -o riscv-bin/013.const -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 014.const.c -o riscv-bin/014.const -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 015.const.c -o riscv-bin/015.const -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 016.const.c -o riscv-bin/016.const -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 017.const.c -o riscv-bin/017.const -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 018.const.c -o riscv-bin/018.const -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 021.cast.c -o riscv-bin/021.cast -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 022.cast.c -o riscv-bin/022.cast -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 023.cast.c -o riscv-bin/023.cast -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 024.cast.c -o riscv-bin/024.cast -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 025.cast.c -o riscv-bin/025.cast -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 026.cast.c -o riscv-bin/026.cast -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 027.cast.c -o riscv-bin/027.cast -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 031.add.c -o riscv-bin/031.add -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 032.add.c -o riscv-bin/032.add -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 033.add.c -o riscv-bin/033.add -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 034.add.c -o riscv-bin/034.add -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 041.sub.c -o riscv-bin/041.sub -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 042.sub.c -o riscv-bin/042.sub -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 043.sub.c -o riscv-bin/043.sub -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 044.sub.c -o riscv-bin/044.sub -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 051.mul.c -o riscv-bin/051.mul -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 052.mul.c -o riscv-bin/052.mul -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 053.mul.c -o riscv-bin/053.mul -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 054.mul.c -o riscv-bin/054.mul -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 055.mul.c -o riscv-bin/055.mul -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 056.mul.c -o riscv-bin/056.mul -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 057.mul.c -o riscv-bin/057.mul -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 058.mul.c -o riscv-bin/058.mul -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 061.div.c -o riscv-bin/061.div -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 062.div.c -o riscv-bin/062.div -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 063.div.c -o riscv-bin/063.div -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 064.div.c -o riscv-bin/064.div -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 065.div.c -o riscv-bin/065.div -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 066.div.c -o riscv-bin/066.div -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 067.div.c -o riscv-bin/067.div -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 068.div.c -o riscv-bin/068.div -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 069.div.c -o riscv-bin/069.div -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 071.bool.c -o riscv-bin/071.bool -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 072.bool.c -o riscv-bin/072.bool -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 073.bool.c -o riscv-bin/073.bool -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 074.bool.c -o riscv-bin/074.bool -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 075.bool.c -o riscv-bin/075.bool -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 076.bool.c -o riscv-bin/076.bool -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 077.bool.c -o riscv-bin/077.bool -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 078.bool.c -o riscv-bin/078.bool -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 081.shift.c -o riscv-bin/081.shift -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 082.shift.c -o riscv-bin/082.shift -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 083.shift.c -o riscv-bin/083.shift -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 084.shift.c -o riscv-bin/084.shift -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 085.shift.c -o riscv-bin/085.shift -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 086.shift.c -o riscv-bin/086.shift -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 111.if.c -o riscv-bin/111.if -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 112.if.c -o riscv-bin/112.if -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 113.if.c -o riscv-bin/113.if -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 114.if.c -o riscv-bin/114.if -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 115.if.c -o riscv-bin/115.if -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 116.if.c -o riscv-bin/116.if -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 117.if.c -o riscv-bin/117.if -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 118.if.c -o riscv-bin/118.if -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 119.if.c -o riscv-bin/119.if -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 121.loop.c -o riscv-bin/121.loop -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 122.loop.c -o riscv-bin/122.loop -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 123.loop.c -o riscv-bin/123.loop -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 124.loop.c -o riscv-bin/124.loop -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 125.loop.c -o riscv-bin/125.loop -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 126.loop.c -o riscv-bin/126.loop -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 131.call.c -o riscv-bin/131.call -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 132.call.c -o riscv-bin/132.call -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 133.call.c -o riscv-bin/133.call -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 134.call.c -o riscv-bin/134.call -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 141.array.c -o riscv-bin/141.array -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 142.array.c -o riscv-bin/142.array -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 143.array.c -o riscv-bin/143.array -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 144.array.c -o riscv-bin/144.array -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 145.array.c -o riscv-bin/145.array -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 146.array.c -o riscv-bin/146.array -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-gcc crt.S 201.atomic.c -o riscv-bin/201.atomic -nostdinc -nostdlib -nostartfiles -march=rv32imafd -mabi=ilp32d

rem gera arquivo de dump dos programas compilados 
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/000.main > riscv-bin/000.main.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/011.const > riscv-bin/011.const.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/012.const > riscv-bin/012.const.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/013.const > riscv-bin/013.const.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/014.const > riscv-bin/014.const.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/015.const > riscv-bin/015.const.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/016.const > riscv-bin/016.const.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/017.const > riscv-bin/017.const.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/018.const > riscv-bin/018.const.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/021.cast > riscv-bin/021.cast.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/022.cast > riscv-bin/022.cast.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/023.cast > riscv-bin/023.cast.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/024.cast > riscv-bin/024.cast.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/025.cast > riscv-bin/025.cast.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/026.cast > riscv-bin/026.cast.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/027.cast > riscv-bin/027.cast.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/031.add > riscv-bin/031.add.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/032.add > riscv-bin/032.add.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/033.add > riscv-bin/033.add.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/034.add > riscv-bin/034.add.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/041.sub > riscv-bin/041.sub.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/042.sub > riscv-bin/042.sub.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/043.sub > riscv-bin/043.sub.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/044.sub > riscv-bin/044.sub.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/051.mul > riscv-bin/051.mul.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/052.mul > riscv-bin/052.mul.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/053.mul > riscv-bin/053.mul.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/054.mul > riscv-bin/054.mul.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/055.mul > riscv-bin/055.mul.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/056.mul > riscv-bin/056.mul.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/057.mul > riscv-bin/057.mul.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/058.mul > riscv-bin/058.mul.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/061.div > riscv-bin/061.div.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/062.div > riscv-bin/062.div.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/063.div > riscv-bin/063.div.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/064.div > riscv-bin/064.div.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/065.div > riscv-bin/065.div.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/066.div > riscv-bin/066.div.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/067.div > riscv-bin/067.div.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/068.div > riscv-bin/068.div.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/069.div > riscv-bin/069.div.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/071.bool > riscv-bin/071.bool.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/072.bool > riscv-bin/072.bool.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/073.bool > riscv-bin/073.bool.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/074.bool > riscv-bin/074.bool.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/075.bool > riscv-bin/075.bool.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/076.bool > riscv-bin/076.bool.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/077.bool > riscv-bin/077.bool.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/078.bool > riscv-bin/078.bool.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/081.shift > riscv-bin/081.shift.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/082.shift > riscv-bin/082.shift.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/083.shift > riscv-bin/083.shift.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/084.shift > riscv-bin/084.shift.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/085.shift > riscv-bin/085.shift.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/086.shift > riscv-bin/086.shift.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/111.if > riscv-bin/111.if.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/112.if > riscv-bin/112.if.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/113.if > riscv-bin/113.if.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/114.if > riscv-bin/114.if.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/115.if > riscv-bin/115.if.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/116.if > riscv-bin/116.if.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/117.if > riscv-bin/117.if.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/118.if > riscv-bin/118.if.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/119.if > riscv-bin/119.if.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/121.loop > riscv-bin/121.loop.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/122.loop > riscv-bin/122.loop.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/123.loop > riscv-bin/123.loop.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/124.loop > riscv-bin/124.loop.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/125.loop > riscv-bin/125.loop.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/126.loop > riscv-bin/126.loop.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/131.call > riscv-bin/131.call.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/132.call > riscv-bin/132.call.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/133.call > riscv-bin/133.call.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/134.call > riscv-bin/134.call.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/141.array > riscv-bin/141.array.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/142.array > riscv-bin/142.array.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/143.array > riscv-bin/143.array.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/144.array > riscv-bin/144.array.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/145.array > riscv-bin/145.array.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/146.array > riscv-bin/146.array.debug
..\tools\riscv32-embecosm-gcc-win64\bin\riscv32-unknown-elf-objdump -d riscv-bin/201.atomic > riscv-bin/201.atomic.debug

