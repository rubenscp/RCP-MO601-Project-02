
test/083.shift.riscv:     file format elf32-littleriscv


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
 1f8:	fef42623          	sw	a5,-20(s0)
 1fc:	fec42783          	lw	a5,-20(s0)
 200:	0017d793          	srl	a5,a5,0x1
 204:	fef42623          	sw	a5,-20(s0)
 208:	fe042623          	sw	zero,-20(s0)
 20c:	fe042623          	sw	zero,-20(s0)
 210:	fec42783          	lw	a5,-20(s0)
 214:	0017d793          	srl	a5,a5,0x1
 218:	fef42623          	sw	a5,-20(s0)
 21c:	fe042623          	sw	zero,-20(s0)
 220:	00100793          	li	a5,1
 224:	fef42623          	sw	a5,-20(s0)
 228:	fec42783          	lw	a5,-20(s0)
 22c:	0017d793          	srl	a5,a5,0x1
 230:	fef42623          	sw	a5,-20(s0)
 234:	fe042623          	sw	zero,-20(s0)
 238:	800007b7          	lui	a5,0x80000
 23c:	fef42623          	sw	a5,-20(s0)
 240:	fec42783          	lw	a5,-20(s0)
 244:	0017d793          	srl	a5,a5,0x1
 248:	fef42623          	sw	a5,-20(s0)
 24c:	fe042623          	sw	zero,-20(s0)
 250:	aaaab7b7          	lui	a5,0xaaaab
 254:	aaa78793          	add	a5,a5,-1366 # aaaaaaaa <memory_size+0x8aaaaaaa>
 258:	fef42623          	sw	a5,-20(s0)
 25c:	fec42783          	lw	a5,-20(s0)
 260:	0017d793          	srl	a5,a5,0x1
 264:	fef42623          	sw	a5,-20(s0)
 268:	fe042623          	sw	zero,-20(s0)
 26c:	0003c7b7          	lui	a5,0x3c
 270:	fef42623          	sw	a5,-20(s0)
 274:	fec42783          	lw	a5,-20(s0)
 278:	0027d793          	srl	a5,a5,0x2
 27c:	fef42623          	sw	a5,-20(s0)
 280:	fe042623          	sw	zero,-20(s0)
 284:	fff00793          	li	a5,-1
 288:	fef42423          	sw	a5,-24(s0)
 28c:	fe842783          	lw	a5,-24(s0)
 290:	4017d793          	sra	a5,a5,0x1
 294:	fef42423          	sw	a5,-24(s0)
 298:	fe042423          	sw	zero,-24(s0)
 29c:	fe042423          	sw	zero,-24(s0)
 2a0:	fe842783          	lw	a5,-24(s0)
 2a4:	4017d793          	sra	a5,a5,0x1
 2a8:	fef42423          	sw	a5,-24(s0)
 2ac:	fe042423          	sw	zero,-24(s0)
 2b0:	00100793          	li	a5,1
 2b4:	fef42423          	sw	a5,-24(s0)
 2b8:	fe842783          	lw	a5,-24(s0)
 2bc:	4017d793          	sra	a5,a5,0x1
 2c0:	fef42423          	sw	a5,-24(s0)
 2c4:	fe042423          	sw	zero,-24(s0)
 2c8:	800007b7          	lui	a5,0x80000
 2cc:	fef42423          	sw	a5,-24(s0)
 2d0:	fe842783          	lw	a5,-24(s0)
 2d4:	4017d793          	sra	a5,a5,0x1
 2d8:	fef42423          	sw	a5,-24(s0)
 2dc:	fe042423          	sw	zero,-24(s0)
 2e0:	aaaab7b7          	lui	a5,0xaaaab
 2e4:	aaa78793          	add	a5,a5,-1366 # aaaaaaaa <memory_size+0x8aaaaaaa>
 2e8:	fef42423          	sw	a5,-24(s0)
 2ec:	fe842783          	lw	a5,-24(s0)
 2f0:	4017d793          	sra	a5,a5,0x1
 2f4:	fef42423          	sw	a5,-24(s0)
 2f8:	fe042423          	sw	zero,-24(s0)
 2fc:	0003c7b7          	lui	a5,0x3c
 300:	fef42423          	sw	a5,-24(s0)
 304:	fe842783          	lw	a5,-24(s0)
 308:	4027d793          	sra	a5,a5,0x2
 30c:	fef42423          	sw	a5,-24(s0)
 310:	fe042423          	sw	zero,-24(s0)
 314:	fff00793          	li	a5,-1
 318:	fef42623          	sw	a5,-20(s0)
 31c:	fec42783          	lw	a5,-20(s0)
 320:	00179793          	sll	a5,a5,0x1
 324:	fef42623          	sw	a5,-20(s0)
 328:	fe042623          	sw	zero,-20(s0)
 32c:	fe042623          	sw	zero,-20(s0)
 330:	fec42783          	lw	a5,-20(s0)
 334:	00179793          	sll	a5,a5,0x1
 338:	fef42623          	sw	a5,-20(s0)
 33c:	fe042623          	sw	zero,-20(s0)
 340:	00100793          	li	a5,1
 344:	fef42623          	sw	a5,-20(s0)
 348:	fec42783          	lw	a5,-20(s0)
 34c:	00179793          	sll	a5,a5,0x1
 350:	fef42623          	sw	a5,-20(s0)
 354:	fe042623          	sw	zero,-20(s0)
 358:	800007b7          	lui	a5,0x80000
 35c:	fef42623          	sw	a5,-20(s0)
 360:	fec42783          	lw	a5,-20(s0)
 364:	00179793          	sll	a5,a5,0x1
 368:	fef42623          	sw	a5,-20(s0)
 36c:	fe042623          	sw	zero,-20(s0)
 370:	aaaab7b7          	lui	a5,0xaaaab
 374:	aaa78793          	add	a5,a5,-1366 # aaaaaaaa <memory_size+0x8aaaaaaa>
 378:	fef42623          	sw	a5,-20(s0)
 37c:	fec42783          	lw	a5,-20(s0)
 380:	00179793          	sll	a5,a5,0x1
 384:	fef42623          	sw	a5,-20(s0)
 388:	fe042623          	sw	zero,-20(s0)
 38c:	0003c7b7          	lui	a5,0x3c
 390:	fef42623          	sw	a5,-20(s0)
 394:	fec42783          	lw	a5,-20(s0)
 398:	00279793          	sll	a5,a5,0x2
 39c:	fef42623          	sw	a5,-20(s0)
 3a0:	fe042623          	sw	zero,-20(s0)
 3a4:	fff00793          	li	a5,-1
 3a8:	fef42423          	sw	a5,-24(s0)
 3ac:	fe842783          	lw	a5,-24(s0)
 3b0:	00179793          	sll	a5,a5,0x1
 3b4:	fef42423          	sw	a5,-24(s0)
 3b8:	fe042423          	sw	zero,-24(s0)
 3bc:	fe042423          	sw	zero,-24(s0)
 3c0:	fe842783          	lw	a5,-24(s0)
 3c4:	00179793          	sll	a5,a5,0x1
 3c8:	fef42423          	sw	a5,-24(s0)
 3cc:	fe042423          	sw	zero,-24(s0)
 3d0:	00100793          	li	a5,1
 3d4:	fef42423          	sw	a5,-24(s0)
 3d8:	fe842783          	lw	a5,-24(s0)
 3dc:	00179793          	sll	a5,a5,0x1
 3e0:	fef42423          	sw	a5,-24(s0)
 3e4:	fe042423          	sw	zero,-24(s0)
 3e8:	800007b7          	lui	a5,0x80000
 3ec:	fef42423          	sw	a5,-24(s0)
 3f0:	fe842783          	lw	a5,-24(s0)
 3f4:	00179793          	sll	a5,a5,0x1
 3f8:	fef42423          	sw	a5,-24(s0)
 3fc:	fe042423          	sw	zero,-24(s0)
 400:	aaaab7b7          	lui	a5,0xaaaab
 404:	aaa78793          	add	a5,a5,-1366 # aaaaaaaa <memory_size+0x8aaaaaaa>
 408:	fef42423          	sw	a5,-24(s0)
 40c:	fe842783          	lw	a5,-24(s0)
 410:	00179793          	sll	a5,a5,0x1
 414:	fef42423          	sw	a5,-24(s0)
 418:	fe042423          	sw	zero,-24(s0)
 41c:	0003c7b7          	lui	a5,0x3c
 420:	fef42423          	sw	a5,-24(s0)
 424:	fe842783          	lw	a5,-24(s0)
 428:	00279793          	sll	a5,a5,0x2
 42c:	fef42423          	sw	a5,-24(s0)
 430:	fe042423          	sw	zero,-24(s0)
 434:	00000793          	li	a5,0
 438:	00078513          	mv	a0,a5
 43c:	01c12403          	lw	s0,28(sp)
 440:	02010113          	add	sp,sp,32
 444:	00008067          	ret
