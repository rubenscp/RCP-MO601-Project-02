
test/053.mul.riscv:     file format elf32-littleriscv


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
 1f4:	00200793          	li	a5,2
 1f8:	fef41723          	sh	a5,-18(s0)
 1fc:	00400793          	li	a5,4
 200:	fef41623          	sh	a5,-20(s0)
 204:	fee41703          	lh	a4,-18(s0)
 208:	fec41783          	lh	a5,-20(s0)
 20c:	02f707b3          	mul	a5,a4,a5
 210:	fef42423          	sw	a5,-24(s0)
 214:	fe042423          	sw	zero,-24(s0)
 218:	fff00793          	li	a5,-1
 21c:	fef41723          	sh	a5,-18(s0)
 220:	fff00793          	li	a5,-1
 224:	fef41623          	sh	a5,-20(s0)
 228:	fee41703          	lh	a4,-18(s0)
 22c:	fec41783          	lh	a5,-20(s0)
 230:	02f707b3          	mul	a5,a4,a5
 234:	fef42423          	sw	a5,-24(s0)
 238:	fe042423          	sw	zero,-24(s0)
 23c:	fff00793          	li	a5,-1
 240:	fef41723          	sh	a5,-18(s0)
 244:	00100793          	li	a5,1
 248:	fef41623          	sh	a5,-20(s0)
 24c:	fee41703          	lh	a4,-18(s0)
 250:	fec41783          	lh	a5,-20(s0)
 254:	02f707b3          	mul	a5,a4,a5
 258:	fef42423          	sw	a5,-24(s0)
 25c:	fe042423          	sw	zero,-24(s0)
 260:	fff00793          	li	a5,-1
 264:	fef41723          	sh	a5,-18(s0)
 268:	00a00793          	li	a5,10
 26c:	fef41623          	sh	a5,-20(s0)
 270:	fee41703          	lh	a4,-18(s0)
 274:	fec41783          	lh	a5,-20(s0)
 278:	02f707b3          	mul	a5,a4,a5
 27c:	fef42423          	sw	a5,-24(s0)
 280:	fe042423          	sw	zero,-24(s0)
 284:	ffe00793          	li	a5,-2
 288:	fef41723          	sh	a5,-18(s0)
 28c:	ffc00793          	li	a5,-4
 290:	fef41623          	sh	a5,-20(s0)
 294:	fee41703          	lh	a4,-18(s0)
 298:	fec41783          	lh	a5,-20(s0)
 29c:	02f707b3          	mul	a5,a4,a5
 2a0:	fef42423          	sw	a5,-24(s0)
 2a4:	fe042423          	sw	zero,-24(s0)
 2a8:	00a00793          	li	a5,10
 2ac:	fef41723          	sh	a5,-18(s0)
 2b0:	00b00793          	li	a5,11
 2b4:	fef41623          	sh	a5,-20(s0)
 2b8:	fee41703          	lh	a4,-18(s0)
 2bc:	fec41783          	lh	a5,-20(s0)
 2c0:	02f707b3          	mul	a5,a4,a5
 2c4:	fef42423          	sw	a5,-24(s0)
 2c8:	fe042423          	sw	zero,-24(s0)
 2cc:	ff600793          	li	a5,-10
 2d0:	fef41723          	sh	a5,-18(s0)
 2d4:	00b00793          	li	a5,11
 2d8:	fef41623          	sh	a5,-20(s0)
 2dc:	fee41703          	lh	a4,-18(s0)
 2e0:	fec41783          	lh	a5,-20(s0)
 2e4:	02f707b3          	mul	a5,a4,a5
 2e8:	fef42423          	sw	a5,-24(s0)
 2ec:	fe042423          	sw	zero,-24(s0)
 2f0:	fffff7b7          	lui	a5,0xfffff
 2f4:	fef41723          	sh	a5,-18(s0)
 2f8:	fffff7b7          	lui	a5,0xfffff
 2fc:	00178793          	add	a5,a5,1 # fffff001 <memory_size+0xdffff001>
 300:	fef41623          	sh	a5,-20(s0)
 304:	fee41703          	lh	a4,-18(s0)
 308:	fec41783          	lh	a5,-20(s0)
 30c:	02f707b3          	mul	a5,a4,a5
 310:	fef42423          	sw	a5,-24(s0)
 314:	fe042423          	sw	zero,-24(s0)
 318:	000057b7          	lui	a5,0x5
 31c:	55578793          	add	a5,a5,1365 # 5555 <__BSS_END__+0x2455>
 320:	fef41723          	sh	a5,-18(s0)
 324:	000037b7          	lui	a5,0x3
 328:	33378793          	add	a5,a5,819 # 3333 <__BSS_END__+0x233>
 32c:	fef41623          	sh	a5,-20(s0)
 330:	fee41703          	lh	a4,-18(s0)
 334:	fec41783          	lh	a5,-20(s0)
 338:	02f707b3          	mul	a5,a4,a5
 33c:	fef42423          	sw	a5,-24(s0)
 340:	fe042423          	sw	zero,-24(s0)
 344:	000057b7          	lui	a5,0x5
 348:	35378793          	add	a5,a5,851 # 5353 <__BSS_END__+0x2253>
 34c:	fef41723          	sh	a5,-18(s0)
 350:	ffff87b7          	lui	a5,0xffff8
 354:	fef41623          	sh	a5,-20(s0)
 358:	fee41703          	lh	a4,-18(s0)
 35c:	fec41783          	lh	a5,-20(s0)
 360:	02f707b3          	mul	a5,a4,a5
 364:	fef42423          	sw	a5,-24(s0)
 368:	fe042423          	sw	zero,-24(s0)
 36c:	00000793          	li	a5,0
 370:	00078513          	mv	a0,a5
 374:	01c12403          	lw	s0,28(sp)
 378:	02010113          	add	sp,sp,32
 37c:	00008067          	ret
