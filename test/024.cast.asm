
test/024.cast.riscv:     file format elf32-littleriscv


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
 1f4:	fe042623          	sw	zero,-20(s0)
 1f8:	00100793          	li	a5,1
 1fc:	fef41523          	sh	a5,-22(s0)
 200:	fea41783          	lh	a5,-22(s0)
 204:	fef42623          	sw	a5,-20(s0)
 208:	fe042623          	sw	zero,-20(s0)
 20c:	fff00793          	li	a5,-1
 210:	fef41523          	sh	a5,-22(s0)
 214:	fea41783          	lh	a5,-22(s0)
 218:	fef42623          	sw	a5,-20(s0)
 21c:	fe042623          	sw	zero,-20(s0)
 220:	ffff87b7          	lui	a5,0xffff8
 224:	fef41523          	sh	a5,-22(s0)
 228:	fea41783          	lh	a5,-22(s0)
 22c:	fef42623          	sw	a5,-20(s0)
 230:	fe042623          	sw	zero,-20(s0)
 234:	ffff87b7          	lui	a5,0xffff8
 238:	fff7c793          	not	a5,a5
 23c:	fef41523          	sh	a5,-22(s0)
 240:	fea41783          	lh	a5,-22(s0)
 244:	fef42623          	sw	a5,-20(s0)
 248:	fe042623          	sw	zero,-20(s0)
 24c:	00000793          	li	a5,0
 250:	00078513          	mv	a0,a5
 254:	01c12403          	lw	s0,28(sp)
 258:	02010113          	add	sp,sp,32
 25c:	00008067          	ret
