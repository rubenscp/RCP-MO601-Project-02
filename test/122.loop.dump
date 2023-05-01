
test/122.loop.riscv:     file format elf32-littleriscv


Disassembly of section .text:

000001d8 <_start>:
 1d8:	00500137          	lui	sp,0x500
 1dc:	00c000ef          	jal	1e8 <main>
 1e0:	200002b7          	lui	t0,0x20000
 1e4:	00100073          	ebreak

000001e8 <main>:
 1e8:	fc010113          	add	sp,sp,-64 # 4fffc0 <__BSS_END__+0x4fcec0>
 1ec:	02812e23          	sw	s0,60(sp)
 1f0:	04010413          	add	s0,sp,64
 1f4:	00000793          	li	a5,0
 1f8:	00000813          	li	a6,0
 1fc:	fef42423          	sw	a5,-24(s0)
 200:	ff042623          	sw	a6,-20(s0)
 204:	fe0403a3          	sb	zero,-25(s0)
 208:	0400006f          	j	248 <main+0x60>
 20c:	fe842603          	lw	a2,-24(s0)
 210:	fec42683          	lw	a3,-20(s0)
 214:	00100513          	li	a0,1
 218:	00000593          	li	a1,0
 21c:	00a60733          	add	a4,a2,a0
 220:	00070813          	mv	a6,a4
 224:	00c83833          	sltu	a6,a6,a2
 228:	00b687b3          	add	a5,a3,a1
 22c:	00f806b3          	add	a3,a6,a5
 230:	00068793          	mv	a5,a3
 234:	fee42423          	sw	a4,-24(s0)
 238:	fef42623          	sw	a5,-20(s0)
 23c:	fe744783          	lbu	a5,-25(s0)
 240:	00178793          	add	a5,a5,1
 244:	fef403a3          	sb	a5,-25(s0)
 248:	fe744703          	lbu	a4,-25(s0)
 24c:	00400793          	li	a5,4
 250:	fae7fee3          	bgeu	a5,a4,20c <main+0x24>
 254:	fe0403a3          	sb	zero,-25(s0)
 258:	fe040323          	sb	zero,-26(s0)
 25c:	0480006f          	j	2a4 <main+0xbc>
 260:	fe842603          	lw	a2,-24(s0)
 264:	fec42683          	lw	a3,-20(s0)
 268:	00100513          	li	a0,1
 26c:	00000593          	li	a1,0
 270:	00a60733          	add	a4,a2,a0
 274:	00070813          	mv	a6,a4
 278:	00c83833          	sltu	a6,a6,a2
 27c:	00b687b3          	add	a5,a3,a1
 280:	00f806b3          	add	a3,a6,a5
 284:	00068793          	mv	a5,a3
 288:	fee42423          	sw	a4,-24(s0)
 28c:	fef42623          	sw	a5,-20(s0)
 290:	fe640783          	lb	a5,-26(s0)
 294:	0ff7f793          	zext.b	a5,a5
 298:	00178793          	add	a5,a5,1
 29c:	0ff7f793          	zext.b	a5,a5
 2a0:	fef40323          	sb	a5,-26(s0)
 2a4:	fe640703          	lb	a4,-26(s0)
 2a8:	00400793          	li	a5,4
 2ac:	fae7dae3          	bge	a5,a4,260 <main+0x78>
 2b0:	fe040323          	sb	zero,-26(s0)
 2b4:	fe041223          	sh	zero,-28(s0)
 2b8:	0400006f          	j	2f8 <main+0x110>
 2bc:	fe842603          	lw	a2,-24(s0)
 2c0:	fec42683          	lw	a3,-20(s0)
 2c4:	00100513          	li	a0,1
 2c8:	00000593          	li	a1,0
 2cc:	00a60733          	add	a4,a2,a0
 2d0:	00070813          	mv	a6,a4
 2d4:	00c83833          	sltu	a6,a6,a2
 2d8:	00b687b3          	add	a5,a3,a1
 2dc:	00f806b3          	add	a3,a6,a5
 2e0:	00068793          	mv	a5,a3
 2e4:	fee42423          	sw	a4,-24(s0)
 2e8:	fef42623          	sw	a5,-20(s0)
 2ec:	fe445783          	lhu	a5,-28(s0)
 2f0:	00178793          	add	a5,a5,1
 2f4:	fef41223          	sh	a5,-28(s0)
 2f8:	fe445703          	lhu	a4,-28(s0)
 2fc:	00400793          	li	a5,4
 300:	fae7fee3          	bgeu	a5,a4,2bc <main+0xd4>
 304:	fe041223          	sh	zero,-28(s0)
 308:	fe041123          	sh	zero,-30(s0)
 30c:	0500006f          	j	35c <main+0x174>
 310:	fe842603          	lw	a2,-24(s0)
 314:	fec42683          	lw	a3,-20(s0)
 318:	00100513          	li	a0,1
 31c:	00000593          	li	a1,0
 320:	00a60733          	add	a4,a2,a0
 324:	00070813          	mv	a6,a4
 328:	00c83833          	sltu	a6,a6,a2
 32c:	00b687b3          	add	a5,a3,a1
 330:	00f806b3          	add	a3,a6,a5
 334:	00068793          	mv	a5,a3
 338:	fee42423          	sw	a4,-24(s0)
 33c:	fef42623          	sw	a5,-20(s0)
 340:	fe241783          	lh	a5,-30(s0)
 344:	01079793          	sll	a5,a5,0x10
 348:	0107d793          	srl	a5,a5,0x10
 34c:	00178793          	add	a5,a5,1
 350:	01079793          	sll	a5,a5,0x10
 354:	0107d793          	srl	a5,a5,0x10
 358:	fef41123          	sh	a5,-30(s0)
 35c:	fe241703          	lh	a4,-30(s0)
 360:	00400793          	li	a5,4
 364:	fae7d6e3          	bge	a5,a4,310 <main+0x128>
 368:	fe041123          	sh	zero,-30(s0)
 36c:	fc042e23          	sw	zero,-36(s0)
 370:	0400006f          	j	3b0 <main+0x1c8>
 374:	fe842603          	lw	a2,-24(s0)
 378:	fec42683          	lw	a3,-20(s0)
 37c:	00100513          	li	a0,1
 380:	00000593          	li	a1,0
 384:	00a60733          	add	a4,a2,a0
 388:	00070813          	mv	a6,a4
 38c:	00c83833          	sltu	a6,a6,a2
 390:	00b687b3          	add	a5,a3,a1
 394:	00f806b3          	add	a3,a6,a5
 398:	00068793          	mv	a5,a3
 39c:	fee42423          	sw	a4,-24(s0)
 3a0:	fef42623          	sw	a5,-20(s0)
 3a4:	fdc42783          	lw	a5,-36(s0)
 3a8:	00178793          	add	a5,a5,1
 3ac:	fcf42e23          	sw	a5,-36(s0)
 3b0:	fdc42703          	lw	a4,-36(s0)
 3b4:	00400793          	li	a5,4
 3b8:	fae7fee3          	bgeu	a5,a4,374 <main+0x18c>
 3bc:	fc042e23          	sw	zero,-36(s0)
 3c0:	fc042c23          	sw	zero,-40(s0)
 3c4:	0400006f          	j	404 <main+0x21c>
 3c8:	fe842603          	lw	a2,-24(s0)
 3cc:	fec42683          	lw	a3,-20(s0)
 3d0:	00100513          	li	a0,1
 3d4:	00000593          	li	a1,0
 3d8:	00a60733          	add	a4,a2,a0
 3dc:	00070813          	mv	a6,a4
 3e0:	00c83833          	sltu	a6,a6,a2
 3e4:	00b687b3          	add	a5,a3,a1
 3e8:	00f806b3          	add	a3,a6,a5
 3ec:	00068793          	mv	a5,a3
 3f0:	fee42423          	sw	a4,-24(s0)
 3f4:	fef42623          	sw	a5,-20(s0)
 3f8:	fd842783          	lw	a5,-40(s0)
 3fc:	00178793          	add	a5,a5,1
 400:	fcf42c23          	sw	a5,-40(s0)
 404:	fd842703          	lw	a4,-40(s0)
 408:	00400793          	li	a5,4
 40c:	fae7dee3          	bge	a5,a4,3c8 <main+0x1e0>
 410:	fc042c23          	sw	zero,-40(s0)
 414:	00000793          	li	a5,0
 418:	00000813          	li	a6,0
 41c:	fcf42823          	sw	a5,-48(s0)
 420:	fd042a23          	sw	a6,-44(s0)
 424:	0640006f          	j	488 <main+0x2a0>
 428:	fe842603          	lw	a2,-24(s0)
 42c:	fec42683          	lw	a3,-20(s0)
 430:	00100513          	li	a0,1
 434:	00000593          	li	a1,0
 438:	00a60733          	add	a4,a2,a0
 43c:	00070813          	mv	a6,a4
 440:	00c83833          	sltu	a6,a6,a2
 444:	00b687b3          	add	a5,a3,a1
 448:	00f806b3          	add	a3,a6,a5
 44c:	00068793          	mv	a5,a3
 450:	fee42423          	sw	a4,-24(s0)
 454:	fef42623          	sw	a5,-20(s0)
 458:	fd042603          	lw	a2,-48(s0)
 45c:	fd442683          	lw	a3,-44(s0)
 460:	00100513          	li	a0,1
 464:	00000593          	li	a1,0
 468:	00a60733          	add	a4,a2,a0
 46c:	00070813          	mv	a6,a4
 470:	00c83833          	sltu	a6,a6,a2
 474:	00b687b3          	add	a5,a3,a1
 478:	00f806b3          	add	a3,a6,a5
 47c:	00068793          	mv	a5,a3
 480:	fce42823          	sw	a4,-48(s0)
 484:	fcf42a23          	sw	a5,-44(s0)
 488:	fd442783          	lw	a5,-44(s0)
 48c:	00079c63          	bnez	a5,4a4 <main+0x2bc>
 490:	fd442783          	lw	a5,-44(s0)
 494:	f8079ae3          	bnez	a5,428 <main+0x240>
 498:	fd042703          	lw	a4,-48(s0)
 49c:	00400793          	li	a5,4
 4a0:	f8e7f4e3          	bgeu	a5,a4,428 <main+0x240>
 4a4:	00000793          	li	a5,0
 4a8:	00000813          	li	a6,0
 4ac:	fcf42823          	sw	a5,-48(s0)
 4b0:	fd042a23          	sw	a6,-44(s0)
 4b4:	fcf42423          	sw	a5,-56(s0)
 4b8:	fd042623          	sw	a6,-52(s0)
 4bc:	0640006f          	j	520 <main+0x338>
 4c0:	fe842603          	lw	a2,-24(s0)
 4c4:	fec42683          	lw	a3,-20(s0)
 4c8:	00100513          	li	a0,1
 4cc:	00000593          	li	a1,0
 4d0:	00a60733          	add	a4,a2,a0
 4d4:	00070813          	mv	a6,a4
 4d8:	00c83833          	sltu	a6,a6,a2
 4dc:	00b687b3          	add	a5,a3,a1
 4e0:	00f806b3          	add	a3,a6,a5
 4e4:	00068793          	mv	a5,a3
 4e8:	fee42423          	sw	a4,-24(s0)
 4ec:	fef42623          	sw	a5,-20(s0)
 4f0:	fc842603          	lw	a2,-56(s0)
 4f4:	fcc42683          	lw	a3,-52(s0)
 4f8:	00100513          	li	a0,1
 4fc:	00000593          	li	a1,0
 500:	00a60733          	add	a4,a2,a0
 504:	00070813          	mv	a6,a4
 508:	00c83833          	sltu	a6,a6,a2
 50c:	00b687b3          	add	a5,a3,a1
 510:	00f806b3          	add	a3,a6,a5
 514:	00068793          	mv	a5,a3
 518:	fce42423          	sw	a4,-56(s0)
 51c:	fcf42623          	sw	a5,-52(s0)
 520:	fcc42783          	lw	a5,-52(s0)
 524:	00f04c63          	bgtz	a5,53c <main+0x354>
 528:	fcc42783          	lw	a5,-52(s0)
 52c:	f8079ae3          	bnez	a5,4c0 <main+0x2d8>
 530:	fc842703          	lw	a4,-56(s0)
 534:	00400793          	li	a5,4
 538:	f8e7f4e3          	bgeu	a5,a4,4c0 <main+0x2d8>
 53c:	00000793          	li	a5,0
 540:	00000813          	li	a6,0
 544:	fcf42423          	sw	a5,-56(s0)
 548:	fd042623          	sw	a6,-52(s0)
 54c:	00000793          	li	a5,0
 550:	00078513          	mv	a0,a5
 554:	03c12403          	lw	s0,60(sp)
 558:	04010113          	add	sp,sp,64
 55c:	00008067          	ret
