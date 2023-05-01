
test/000.main.riscv:     file format elf32-littleriscv


Disassembly of section .text:

000001d8 <_start>:
 1d8:	00500137          	lui	sp,0x500
 1dc:	00c000ef          	jal	1e8 <main>
 1e0:	200002b7          	lui	t0,0x20000
 1e4:	00100073          	ebreak

000001e8 <main>:
 1e8:	ff010113          	add	sp,sp,-16 # 4ffff0 <__BSS_END__+0x4fcef0>
 1ec:	00812623          	sw	s0,12(sp)
 1f0:	01010413          	add	s0,sp,16
 1f4:	00000793          	li	a5,0
 1f8:	00078513          	mv	a0,a5
 1fc:	00c12403          	lw	s0,12(sp)
 200:	01010113          	add	sp,sp,16
 204:	00008067          	ret
