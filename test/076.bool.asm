
test/076.bool.riscv:     file format elf32-littleriscv


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
 1f4:	fe000793          	li	a5,-32
 1f8:	fef42623          	sw	a5,-20(s0)
 1fc:	03200793          	li	a5,50
 200:	fef42423          	sw	a5,-24(s0)
 204:	fe042223          	sw	zero,-28(s0)
 208:	fec42703          	lw	a4,-20(s0)
 20c:	fe842783          	lw	a5,-24(s0)
 210:	00f727b3          	slt	a5,a4,a5
 214:	0ff7f793          	zext.b	a5,a5
 218:	fef42223          	sw	a5,-28(s0)
 21c:	fe042223          	sw	zero,-28(s0)
 220:	ffb00793          	li	a5,-5
 224:	fef42423          	sw	a5,-24(s0)
 228:	fec42703          	lw	a4,-20(s0)
 22c:	fe842783          	lw	a5,-24(s0)
 230:	00f727b3          	slt	a5,a4,a5
 234:	0ff7f793          	zext.b	a5,a5
 238:	fef42223          	sw	a5,-28(s0)
 23c:	fe042223          	sw	zero,-28(s0)
 240:	0c800793          	li	a5,200
 244:	fef42623          	sw	a5,-20(s0)
 248:	fec00793          	li	a5,-20
 24c:	fef42423          	sw	a5,-24(s0)
 250:	fec42703          	lw	a4,-20(s0)
 254:	fe842783          	lw	a5,-24(s0)
 258:	00f727b3          	slt	a5,a4,a5
 25c:	0ff7f793          	zext.b	a5,a5
 260:	fef42223          	sw	a5,-28(s0)
 264:	fe042223          	sw	zero,-28(s0)
 268:	01400793          	li	a5,20
 26c:	fef42423          	sw	a5,-24(s0)
 270:	fec42703          	lw	a4,-20(s0)
 274:	fe842783          	lw	a5,-24(s0)
 278:	00f727b3          	slt	a5,a4,a5
 27c:	0ff7f793          	zext.b	a5,a5
 280:	fef42223          	sw	a5,-28(s0)
 284:	fe042223          	sw	zero,-28(s0)
 288:	00000793          	li	a5,0
 28c:	00078513          	mv	a0,a5
 290:	01c12403          	lw	s0,28(sp)
 294:	02010113          	add	sp,sp,32
 298:	00008067          	ret
