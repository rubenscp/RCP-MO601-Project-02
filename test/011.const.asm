
test/011.const.riscv:     file format elf32-littleriscv


Disassembly of section .text:

000001d8 <_start>:
 1d8:	00500137          	lui	sp,0x500
 1dc:	00c000ef          	jal	1e8 <main>
 1e0:	200002b7          	lui	t0,0x20000
 1e4:	00100073          	ebreak

000001e8 <main>:
 1e8:	fe010113          	add	sp,sp,-32 # 4fffe0 <__BSS_END__+0x4fcee0>
 1ec:	00812e23          	sw	s0,28(sp)
 1f0:	02010413          	add	s0,sp,32
 1f4:	05500793          	li	a5,85
 1f8:	fef407a3          	sb	a5,-17(s0)
 1fc:	faa00793          	li	a5,-86
 200:	fef407a3          	sb	a5,-17(s0)
 204:	fe0407a3          	sb	zero,-17(s0)
 208:	fff00793          	li	a5,-1
 20c:	fef407a3          	sb	a5,-17(s0)
 210:	f8000793          	li	a5,-128
 214:	fef407a3          	sb	a5,-17(s0)
 218:	00100793          	li	a5,1
 21c:	fef407a3          	sb	a5,-17(s0)
 220:	07f00793          	li	a5,127
 224:	fef407a3          	sb	a5,-17(s0)
 228:	ffe00793          	li	a5,-2
 22c:	fef407a3          	sb	a5,-17(s0)
 230:	00000793          	li	a5,0
 234:	00078513          	mv	a0,a5
 238:	01c12403          	lw	s0,28(sp)
 23c:	02010113          	add	sp,sp,32
 240:	00008067          	ret
