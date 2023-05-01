
test/016.const.riscv:     file format elf32-littleriscv


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
 1f4:	555557b7          	lui	a5,0x55555
 1f8:	55578793          	add	a5,a5,1365 # 55555555 <memory_size+0x35555555>
 1fc:	fef42623          	sw	a5,-20(s0)
 200:	aaaab7b7          	lui	a5,0xaaaab
 204:	aaa78793          	add	a5,a5,-1366 # aaaaaaaa <memory_size+0x8aaaaaaa>
 208:	fef42623          	sw	a5,-20(s0)
 20c:	fe042623          	sw	zero,-20(s0)
 210:	fff00793          	li	a5,-1
 214:	fef42623          	sw	a5,-20(s0)
 218:	800007b7          	lui	a5,0x80000
 21c:	fef42623          	sw	a5,-20(s0)
 220:	00100793          	li	a5,1
 224:	fef42623          	sw	a5,-20(s0)
 228:	800007b7          	lui	a5,0x80000
 22c:	fff7c793          	not	a5,a5
 230:	fef42623          	sw	a5,-20(s0)
 234:	ffe00793          	li	a5,-2
 238:	fef42623          	sw	a5,-20(s0)
 23c:	00000793          	li	a5,0
 240:	00078513          	mv	a0,a5
 244:	01c12403          	lw	s0,28(sp)
 248:	02010113          	add	sp,sp,32
 24c:	00008067          	ret
