
test/027.cast.riscv:     file format elf32-littleriscv


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
 1f4:	fff00793          	li	a5,-1
 1f8:	fef407a3          	sb	a5,-17(s0)
 1fc:	fff00793          	li	a5,-1
 200:	fef41623          	sh	a5,-20(s0)
 204:	fef44783          	lbu	a5,-17(s0)
 208:	fef41623          	sh	a5,-20(s0)
 20c:	fe041623          	sh	zero,-20(s0)
 210:	fff00793          	li	a5,-1
 214:	fef41623          	sh	a5,-20(s0)
 218:	fff00793          	li	a5,-1
 21c:	fef42423          	sw	a5,-24(s0)
 220:	fec45783          	lhu	a5,-20(s0)
 224:	fef42423          	sw	a5,-24(s0)
 228:	fe042423          	sw	zero,-24(s0)
 22c:	fff00793          	li	a5,-1
 230:	fef42423          	sw	a5,-24(s0)
 234:	fff00713          	li	a4,-1
 238:	fff00793          	li	a5,-1
 23c:	fee42023          	sw	a4,-32(s0)
 240:	fef42223          	sw	a5,-28(s0)
 244:	fe842783          	lw	a5,-24(s0)
 248:	fef42023          	sw	a5,-32(s0)
 24c:	fe042223          	sw	zero,-28(s0)
 250:	00000793          	li	a5,0
 254:	00000813          	li	a6,0
 258:	fef42023          	sw	a5,-32(s0)
 25c:	ff042223          	sw	a6,-28(s0)
 260:	00000793          	li	a5,0
 264:	00078513          	mv	a0,a5
 268:	01c12403          	lw	s0,28(sp)
 26c:	02010113          	add	sp,sp,32
 270:	00008067          	ret
