
test/077.bool.riscv:     file format elf32-littleriscv


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
 1fc:	fce00793          	li	a5,-50
 200:	fef42423          	sw	a5,-24(s0)
 204:	fe042223          	sw	zero,-28(s0)
 208:	fec42783          	lw	a5,-20(s0)
 20c:	fce7a793          	slti	a5,a5,-50
 210:	0ff7f793          	zext.b	a5,a5
 214:	fef42223          	sw	a5,-28(s0)
 218:	fe042223          	sw	zero,-28(s0)
 21c:	ffb00793          	li	a5,-5
 220:	fef42423          	sw	a5,-24(s0)
 224:	fec42783          	lw	a5,-20(s0)
 228:	ffb7a793          	slti	a5,a5,-5
 22c:	0ff7f793          	zext.b	a5,a5
 230:	fef42223          	sw	a5,-28(s0)
 234:	fe042223          	sw	zero,-28(s0)
 238:	0c800793          	li	a5,200
 23c:	fef42623          	sw	a5,-20(s0)
 240:	0fa00793          	li	a5,250
 244:	fef42423          	sw	a5,-24(s0)
 248:	fec42783          	lw	a5,-20(s0)
 24c:	0fa7a793          	slti	a5,a5,250
 250:	0ff7f793          	zext.b	a5,a5
 254:	fef42223          	sw	a5,-28(s0)
 258:	fe042223          	sw	zero,-28(s0)
 25c:	0d200793          	li	a5,210
 260:	fef42423          	sw	a5,-24(s0)
 264:	fec42783          	lw	a5,-20(s0)
 268:	0d27a793          	slti	a5,a5,210
 26c:	0ff7f793          	zext.b	a5,a5
 270:	fef42223          	sw	a5,-28(s0)
 274:	fe042223          	sw	zero,-28(s0)
 278:	00000793          	li	a5,0
 27c:	00078513          	mv	a0,a5
 280:	01c12403          	lw	s0,28(sp)
 284:	02010113          	add	sp,sp,32
 288:	00008067          	ret
