rem @echo off
cls

rem gera arquivo de dump dos programas compilados
riscv32-unknown-elf-objdump -d test/000.main.riscv >  test/000.main.asm
riscv32-unknown-elf-objdump -d test/011.const.riscv >  test/011.const.asm
riscv32-unknown-elf-objdump -d test/012.const.riscv >  test/012.const.asm
riscv32-unknown-elf-objdump -d test/013.const.riscv >  test/013.const.asm
riscv32-unknown-elf-objdump -d test/014.const.riscv >  test/014.const.asm
riscv32-unknown-elf-objdump -d test/015.const.riscv >  test/015.const.asm
riscv32-unknown-elf-objdump -d test/016.const.riscv >  test/016.const.asm
riscv32-unknown-elf-objdump -d test/017.const.riscv >  test/017.const.asm
riscv32-unknown-elf-objdump -d test/018.const.riscv >  test/018.const.asm
riscv32-unknown-elf-objdump -d test/021.cast.riscv >  test/021.cast.asm
riscv32-unknown-elf-objdump -d test/022.cast.riscv >  test/022.cast.asm
riscv32-unknown-elf-objdump -d test/023.cast.riscv >  test/023.cast.asm
riscv32-unknown-elf-objdump -d test/024.cast.riscv >  test/024.cast.asm
riscv32-unknown-elf-objdump -d test/025.cast.riscv >  test/025.cast.asm
riscv32-unknown-elf-objdump -d test/026.cast.riscv >  test/026.cast.asm
riscv32-unknown-elf-objdump -d test/027.cast.riscv >  test/027.cast.asm
riscv32-unknown-elf-objdump -d test/031.add.riscv >  test/031.add.asm
riscv32-unknown-elf-objdump -d test/032.add.riscv >  test/032.add.asm
riscv32-unknown-elf-objdump -d test/033.add.riscv >  test/033.add.asm
riscv32-unknown-elf-objdump -d test/034.add.riscv >  test/034.add.asm
riscv32-unknown-elf-objdump -d test/041.sub.riscv >  test/041.sub.asm
riscv32-unknown-elf-objdump -d test/042.sub.riscv >  test/042.sub.asm
riscv32-unknown-elf-objdump -d test/043.sub.riscv >  test/043.sub.asm
riscv32-unknown-elf-objdump -d test/044.sub.riscv >  test/044.sub.asm
riscv32-unknown-elf-objdump -d test/051.mul.riscv >  test/051.mul.asm
riscv32-unknown-elf-objdump -d test/052.mul.riscv >  test/052.mul.asm
riscv32-unknown-elf-objdump -d test/053.mul.riscv >  test/053.mul.asm
riscv32-unknown-elf-objdump -d test/054.mul.riscv >  test/054.mul.asm
riscv32-unknown-elf-objdump -d test/055.mul.riscv >  test/055.mul.asm
riscv32-unknown-elf-objdump -d test/056.mul.riscv >  test/056.mul.asm
riscv32-unknown-elf-objdump -d test/057.mul.riscv >  test/057.mul.asm
riscv32-unknown-elf-objdump -d test/058.mul.riscv >  test/058.mul.asm
riscv32-unknown-elf-objdump -d test/061.div.riscv >  test/061.div.asm
riscv32-unknown-elf-objdump -d test/062.div.riscv >  test/062.div.asm
riscv32-unknown-elf-objdump -d test/063.div.riscv >  test/063.div.asm
riscv32-unknown-elf-objdump -d test/064.div.riscv >  test/064.div.asm
riscv32-unknown-elf-objdump -d test/065.div.riscv >  test/065.div.asm
riscv32-unknown-elf-objdump -d test/066.div.riscv >  test/066.div.asm
riscv32-unknown-elf-objdump -d test/071.bool.riscv >  test/071.bool.asm
riscv32-unknown-elf-objdump -d test/072.bool.riscv >  test/072.bool.asm
riscv32-unknown-elf-objdump -d test/073.bool.riscv >  test/073.bool.asm
riscv32-unknown-elf-objdump -d test/074.bool.riscv >  test/074.bool.asm
riscv32-unknown-elf-objdump -d test/075.bool.riscv >  test/075.bool.asm
riscv32-unknown-elf-objdump -d test/076.bool.riscv >  test/076.bool.asm
riscv32-unknown-elf-objdump -d test/077.bool.riscv >  test/077.bool.asm
riscv32-unknown-elf-objdump -d test/078.bool.riscv >  test/078.bool.asm
riscv32-unknown-elf-objdump -d test/081.shift.riscv >  test/081.shift.asm
riscv32-unknown-elf-objdump -d test/082.shift.riscv >  test/082.shift.asm
riscv32-unknown-elf-objdump -d test/083.shift.riscv >  test/083.shift.asm
riscv32-unknown-elf-objdump -d test/084.shift.riscv >  test/084.shift.asm
riscv32-unknown-elf-objdump -d test/085.shift.riscv >  test/085.shift.asm
riscv32-unknown-elf-objdump -d test/086.shift.riscv >  test/086.shift.asm
riscv32-unknown-elf-objdump -d test/111.if.riscv >  test/111.if.asm
riscv32-unknown-elf-objdump -d test/112.if.riscv >  test/112.if.asm
riscv32-unknown-elf-objdump -d test/113.if.riscv >  test/113.if.asm
riscv32-unknown-elf-objdump -d test/114.if.riscv >  test/114.if.asm
riscv32-unknown-elf-objdump -d test/115.if.riscv >  test/115.if.asm
riscv32-unknown-elf-objdump -d test/116.if.riscv >  test/116.if.asm
riscv32-unknown-elf-objdump -d test/117.if.riscv >  test/117.if.asm
riscv32-unknown-elf-objdump -d test/118.if.riscv >  test/118.if.asm
riscv32-unknown-elf-objdump -d test/119.if.riscv >  test/119.if.asm
riscv32-unknown-elf-objdump -d test/121.loop.riscv >  test/121.loop.asm
riscv32-unknown-elf-objdump -d test/122.loop.riscv >  test/122.loop.asm
riscv32-unknown-elf-objdump -d test/123.loop.riscv >  test/123.loop.asm
riscv32-unknown-elf-objdump -d test/124.loop.riscv >  test/124.loop.asm
riscv32-unknown-elf-objdump -d test/125.loop.riscv >  test/125.loop.asm
riscv32-unknown-elf-objdump -d test/126.loop.riscv >  test/126.loop.asm
riscv32-unknown-elf-objdump -d test/131.call.riscv >  test/131.call.asm
riscv32-unknown-elf-objdump -d test/132.call.riscv >  test/132.call.asm
riscv32-unknown-elf-objdump -d test/133.call.riscv >  test/133.call.asm
riscv32-unknown-elf-objdump -d test/134.call.riscv >  test/134.call.asm
riscv32-unknown-elf-objdump -d test/141.array.riscv >  test/141.array.asm
riscv32-unknown-elf-objdump -d test/142.array.riscv >  test/142.array.asm
riscv32-unknown-elf-objdump -d test/143.array.riscv >  test/143.array.asm
riscv32-unknown-elf-objdump -d test/144.array.riscv >  test/144.array.asm
riscv32-unknown-elf-objdump -d test/145.array.riscv >  test/145.array.asm
riscv32-unknown-elf-objdump -d test/146.array.riscv >  test/146.array.asm