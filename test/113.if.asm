
test/113.if.riscv:     file format elf32-littleriscv


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
 1f4:	fe0406a3          	sb	zero,-19(s0)
 1f8:	fe0407a3          	sb	zero,-17(s0)
 1fc:	fe040623          	sb	zero,-20(s0)
 200:	fe040723          	sb	zero,-18(s0)
 204:	fe041523          	sh	zero,-22(s0)
 208:	fff00793          	li	a5,-1
 20c:	fef41423          	sh	a5,-24(s0)
 210:	fea41703          	lh	a4,-22(s0)
 214:	fe841783          	lh	a5,-24(s0)
 218:	00e7da63          	bge	a5,a4,22c <main+0x44>
 21c:	fed44783          	lbu	a5,-19(s0)
 220:	00178793          	add	a5,a5,1
 224:	fef406a3          	sb	a5,-19(s0)
 228:	0100006f          	j	238 <main+0x50>
 22c:	fee44783          	lbu	a5,-18(s0)
 230:	00178793          	add	a5,a5,1
 234:	fef40723          	sb	a5,-18(s0)
 238:	fea41703          	lh	a4,-22(s0)
 23c:	fe841783          	lh	a5,-24(s0)
 240:	00f75a63          	bge	a4,a5,254 <main+0x6c>
 244:	fec44783          	lbu	a5,-20(s0)
 248:	00178793          	add	a5,a5,1
 24c:	fef40623          	sb	a5,-20(s0)
 250:	0100006f          	j	260 <main+0x78>
 254:	fef44783          	lbu	a5,-17(s0)
 258:	00178793          	add	a5,a5,1
 25c:	fef407a3          	sb	a5,-17(s0)
 260:	fea41703          	lh	a4,-22(s0)
 264:	fe841783          	lh	a5,-24(s0)
 268:	00f71a63          	bne	a4,a5,27c <main+0x94>
 26c:	fec44783          	lbu	a5,-20(s0)
 270:	00178793          	add	a5,a5,1
 274:	fef40623          	sb	a5,-20(s0)
 278:	0100006f          	j	288 <main+0xa0>
 27c:	fef44783          	lbu	a5,-17(s0)
 280:	00178793          	add	a5,a5,1
 284:	fef407a3          	sb	a5,-17(s0)
 288:	fea41703          	lh	a4,-22(s0)
 28c:	fe841783          	lh	a5,-24(s0)
 290:	00f74a63          	blt	a4,a5,2a4 <main+0xbc>
 294:	fed44783          	lbu	a5,-19(s0)
 298:	00178793          	add	a5,a5,1
 29c:	fef406a3          	sb	a5,-19(s0)
 2a0:	0100006f          	j	2b0 <main+0xc8>
 2a4:	fee44783          	lbu	a5,-18(s0)
 2a8:	00178793          	add	a5,a5,1
 2ac:	fef40723          	sb	a5,-18(s0)
 2b0:	fea41703          	lh	a4,-22(s0)
 2b4:	fe841783          	lh	a5,-24(s0)
 2b8:	00e7ca63          	blt	a5,a4,2cc <main+0xe4>
 2bc:	fec44783          	lbu	a5,-20(s0)
 2c0:	00178793          	add	a5,a5,1
 2c4:	fef40623          	sb	a5,-20(s0)
 2c8:	0100006f          	j	2d8 <main+0xf0>
 2cc:	fef44783          	lbu	a5,-17(s0)
 2d0:	00178793          	add	a5,a5,1
 2d4:	fef407a3          	sb	a5,-17(s0)
 2d8:	fe0406a3          	sb	zero,-19(s0)
 2dc:	fe0407a3          	sb	zero,-17(s0)
 2e0:	fe040623          	sb	zero,-20(s0)
 2e4:	fe040723          	sb	zero,-18(s0)
 2e8:	fff00793          	li	a5,-1
 2ec:	fef41523          	sh	a5,-22(s0)
 2f0:	ffe00793          	li	a5,-2
 2f4:	fef41423          	sh	a5,-24(s0)
 2f8:	fea41703          	lh	a4,-22(s0)
 2fc:	fe841783          	lh	a5,-24(s0)
 300:	00e7da63          	bge	a5,a4,314 <main+0x12c>
 304:	fed44783          	lbu	a5,-19(s0)
 308:	00178793          	add	a5,a5,1
 30c:	fef406a3          	sb	a5,-19(s0)
 310:	0100006f          	j	320 <main+0x138>
 314:	fee44783          	lbu	a5,-18(s0)
 318:	00178793          	add	a5,a5,1
 31c:	fef40723          	sb	a5,-18(s0)
 320:	fea41703          	lh	a4,-22(s0)
 324:	fe841783          	lh	a5,-24(s0)
 328:	00f75a63          	bge	a4,a5,33c <main+0x154>
 32c:	fec44783          	lbu	a5,-20(s0)
 330:	00178793          	add	a5,a5,1
 334:	fef40623          	sb	a5,-20(s0)
 338:	0100006f          	j	348 <main+0x160>
 33c:	fef44783          	lbu	a5,-17(s0)
 340:	00178793          	add	a5,a5,1
 344:	fef407a3          	sb	a5,-17(s0)
 348:	fea41703          	lh	a4,-22(s0)
 34c:	fe841783          	lh	a5,-24(s0)
 350:	00f71a63          	bne	a4,a5,364 <main+0x17c>
 354:	fec44783          	lbu	a5,-20(s0)
 358:	00178793          	add	a5,a5,1
 35c:	fef40623          	sb	a5,-20(s0)
 360:	0100006f          	j	370 <main+0x188>
 364:	fef44783          	lbu	a5,-17(s0)
 368:	00178793          	add	a5,a5,1
 36c:	fef407a3          	sb	a5,-17(s0)
 370:	fea41703          	lh	a4,-22(s0)
 374:	fe841783          	lh	a5,-24(s0)
 378:	00f74a63          	blt	a4,a5,38c <main+0x1a4>
 37c:	fed44783          	lbu	a5,-19(s0)
 380:	00178793          	add	a5,a5,1
 384:	fef406a3          	sb	a5,-19(s0)
 388:	0100006f          	j	398 <main+0x1b0>
 38c:	fee44783          	lbu	a5,-18(s0)
 390:	00178793          	add	a5,a5,1
 394:	fef40723          	sb	a5,-18(s0)
 398:	fea41703          	lh	a4,-22(s0)
 39c:	fe841783          	lh	a5,-24(s0)
 3a0:	00e7ca63          	blt	a5,a4,3b4 <main+0x1cc>
 3a4:	fec44783          	lbu	a5,-20(s0)
 3a8:	00178793          	add	a5,a5,1
 3ac:	fef40623          	sb	a5,-20(s0)
 3b0:	0100006f          	j	3c0 <main+0x1d8>
 3b4:	fef44783          	lbu	a5,-17(s0)
 3b8:	00178793          	add	a5,a5,1
 3bc:	fef407a3          	sb	a5,-17(s0)
 3c0:	fe0406a3          	sb	zero,-19(s0)
 3c4:	fe0407a3          	sb	zero,-17(s0)
 3c8:	fe040623          	sb	zero,-20(s0)
 3cc:	fe040723          	sb	zero,-18(s0)
 3d0:	00100793          	li	a5,1
 3d4:	fef41523          	sh	a5,-22(s0)
 3d8:	00200793          	li	a5,2
 3dc:	fef41423          	sh	a5,-24(s0)
 3e0:	fea41703          	lh	a4,-22(s0)
 3e4:	fe841783          	lh	a5,-24(s0)
 3e8:	00e7da63          	bge	a5,a4,3fc <main+0x214>
 3ec:	fec44783          	lbu	a5,-20(s0)
 3f0:	00178793          	add	a5,a5,1
 3f4:	fef40623          	sb	a5,-20(s0)
 3f8:	0100006f          	j	408 <main+0x220>
 3fc:	fef44783          	lbu	a5,-17(s0)
 400:	00178793          	add	a5,a5,1
 404:	fef407a3          	sb	a5,-17(s0)
 408:	fea41703          	lh	a4,-22(s0)
 40c:	fe841783          	lh	a5,-24(s0)
 410:	00f75a63          	bge	a4,a5,424 <main+0x23c>
 414:	fed44783          	lbu	a5,-19(s0)
 418:	00178793          	add	a5,a5,1
 41c:	fef406a3          	sb	a5,-19(s0)
 420:	0100006f          	j	430 <main+0x248>
 424:	fee44783          	lbu	a5,-18(s0)
 428:	00178793          	add	a5,a5,1
 42c:	fef40723          	sb	a5,-18(s0)
 430:	fea41703          	lh	a4,-22(s0)
 434:	fe841783          	lh	a5,-24(s0)
 438:	00f71a63          	bne	a4,a5,44c <main+0x264>
 43c:	fec44783          	lbu	a5,-20(s0)
 440:	00178793          	add	a5,a5,1
 444:	fef40623          	sb	a5,-20(s0)
 448:	0100006f          	j	458 <main+0x270>
 44c:	fef44783          	lbu	a5,-17(s0)
 450:	00178793          	add	a5,a5,1
 454:	fef407a3          	sb	a5,-17(s0)
 458:	fea41703          	lh	a4,-22(s0)
 45c:	fe841783          	lh	a5,-24(s0)
 460:	00f74a63          	blt	a4,a5,474 <main+0x28c>
 464:	fec44783          	lbu	a5,-20(s0)
 468:	00178793          	add	a5,a5,1
 46c:	fef40623          	sb	a5,-20(s0)
 470:	0100006f          	j	480 <main+0x298>
 474:	fef44783          	lbu	a5,-17(s0)
 478:	00178793          	add	a5,a5,1
 47c:	fef407a3          	sb	a5,-17(s0)
 480:	fea41703          	lh	a4,-22(s0)
 484:	fe841783          	lh	a5,-24(s0)
 488:	00e7ca63          	blt	a5,a4,49c <main+0x2b4>
 48c:	fed44783          	lbu	a5,-19(s0)
 490:	00178793          	add	a5,a5,1
 494:	fef406a3          	sb	a5,-19(s0)
 498:	0100006f          	j	4a8 <main+0x2c0>
 49c:	fee44783          	lbu	a5,-18(s0)
 4a0:	00178793          	add	a5,a5,1
 4a4:	fef40723          	sb	a5,-18(s0)
 4a8:	fe0406a3          	sb	zero,-19(s0)
 4ac:	fe0407a3          	sb	zero,-17(s0)
 4b0:	fe040623          	sb	zero,-20(s0)
 4b4:	fe040723          	sb	zero,-18(s0)
 4b8:	00f00793          	li	a5,15
 4bc:	fef41523          	sh	a5,-22(s0)
 4c0:	00f00793          	li	a5,15
 4c4:	fef41423          	sh	a5,-24(s0)
 4c8:	fea41703          	lh	a4,-22(s0)
 4cc:	fe841783          	lh	a5,-24(s0)
 4d0:	00e7da63          	bge	a5,a4,4e4 <main+0x2fc>
 4d4:	fec44783          	lbu	a5,-20(s0)
 4d8:	00178793          	add	a5,a5,1
 4dc:	fef40623          	sb	a5,-20(s0)
 4e0:	0100006f          	j	4f0 <main+0x308>
 4e4:	fef44783          	lbu	a5,-17(s0)
 4e8:	00178793          	add	a5,a5,1
 4ec:	fef407a3          	sb	a5,-17(s0)
 4f0:	fea41703          	lh	a4,-22(s0)
 4f4:	fe841783          	lh	a5,-24(s0)
 4f8:	00f75a63          	bge	a4,a5,50c <main+0x324>
 4fc:	fec44783          	lbu	a5,-20(s0)
 500:	00178793          	add	a5,a5,1
 504:	fef40623          	sb	a5,-20(s0)
 508:	0100006f          	j	518 <main+0x330>
 50c:	fef44783          	lbu	a5,-17(s0)
 510:	00178793          	add	a5,a5,1
 514:	fef407a3          	sb	a5,-17(s0)
 518:	fea41703          	lh	a4,-22(s0)
 51c:	fe841783          	lh	a5,-24(s0)
 520:	00f71a63          	bne	a4,a5,534 <main+0x34c>
 524:	fed44783          	lbu	a5,-19(s0)
 528:	00178793          	add	a5,a5,1
 52c:	fef406a3          	sb	a5,-19(s0)
 530:	0100006f          	j	540 <main+0x358>
 534:	fee44783          	lbu	a5,-18(s0)
 538:	00178793          	add	a5,a5,1
 53c:	fef40723          	sb	a5,-18(s0)
 540:	fea41703          	lh	a4,-22(s0)
 544:	fe841783          	lh	a5,-24(s0)
 548:	00f74a63          	blt	a4,a5,55c <main+0x374>
 54c:	fed44783          	lbu	a5,-19(s0)
 550:	00178793          	add	a5,a5,1
 554:	fef406a3          	sb	a5,-19(s0)
 558:	0100006f          	j	568 <main+0x380>
 55c:	fee44783          	lbu	a5,-18(s0)
 560:	00178793          	add	a5,a5,1
 564:	fef40723          	sb	a5,-18(s0)
 568:	fea41703          	lh	a4,-22(s0)
 56c:	fe841783          	lh	a5,-24(s0)
 570:	00e7ca63          	blt	a5,a4,584 <main+0x39c>
 574:	fed44783          	lbu	a5,-19(s0)
 578:	00178793          	add	a5,a5,1
 57c:	fef406a3          	sb	a5,-19(s0)
 580:	0100006f          	j	590 <main+0x3a8>
 584:	fee44783          	lbu	a5,-18(s0)
 588:	00178793          	add	a5,a5,1
 58c:	fef40723          	sb	a5,-18(s0)
 590:	fe0406a3          	sb	zero,-19(s0)
 594:	fe0407a3          	sb	zero,-17(s0)
 598:	fe040623          	sb	zero,-20(s0)
 59c:	fe040723          	sb	zero,-18(s0)
 5a0:	00100793          	li	a5,1
 5a4:	fef41523          	sh	a5,-22(s0)
 5a8:	fff00793          	li	a5,-1
 5ac:	fef41423          	sh	a5,-24(s0)
 5b0:	fea41703          	lh	a4,-22(s0)
 5b4:	fe841783          	lh	a5,-24(s0)
 5b8:	00e7da63          	bge	a5,a4,5cc <main+0x3e4>
 5bc:	fed44783          	lbu	a5,-19(s0)
 5c0:	00178793          	add	a5,a5,1
 5c4:	fef406a3          	sb	a5,-19(s0)
 5c8:	0100006f          	j	5d8 <main+0x3f0>
 5cc:	fee44783          	lbu	a5,-18(s0)
 5d0:	00178793          	add	a5,a5,1
 5d4:	fef40723          	sb	a5,-18(s0)
 5d8:	fea41703          	lh	a4,-22(s0)
 5dc:	fe841783          	lh	a5,-24(s0)
 5e0:	00f75a63          	bge	a4,a5,5f4 <main+0x40c>
 5e4:	fec44783          	lbu	a5,-20(s0)
 5e8:	00178793          	add	a5,a5,1
 5ec:	fef40623          	sb	a5,-20(s0)
 5f0:	0100006f          	j	600 <main+0x418>
 5f4:	fef44783          	lbu	a5,-17(s0)
 5f8:	00178793          	add	a5,a5,1
 5fc:	fef407a3          	sb	a5,-17(s0)
 600:	fea41703          	lh	a4,-22(s0)
 604:	fe841783          	lh	a5,-24(s0)
 608:	00f71a63          	bne	a4,a5,61c <main+0x434>
 60c:	fec44783          	lbu	a5,-20(s0)
 610:	00178793          	add	a5,a5,1
 614:	fef40623          	sb	a5,-20(s0)
 618:	0100006f          	j	628 <main+0x440>
 61c:	fef44783          	lbu	a5,-17(s0)
 620:	00178793          	add	a5,a5,1
 624:	fef407a3          	sb	a5,-17(s0)
 628:	fea41703          	lh	a4,-22(s0)
 62c:	fe841783          	lh	a5,-24(s0)
 630:	00f74a63          	blt	a4,a5,644 <main+0x45c>
 634:	fed44783          	lbu	a5,-19(s0)
 638:	00178793          	add	a5,a5,1
 63c:	fef406a3          	sb	a5,-19(s0)
 640:	0100006f          	j	650 <main+0x468>
 644:	fee44783          	lbu	a5,-18(s0)
 648:	00178793          	add	a5,a5,1
 64c:	fef40723          	sb	a5,-18(s0)
 650:	fea41703          	lh	a4,-22(s0)
 654:	fe841783          	lh	a5,-24(s0)
 658:	00e7ca63          	blt	a5,a4,66c <main+0x484>
 65c:	fec44783          	lbu	a5,-20(s0)
 660:	00178793          	add	a5,a5,1
 664:	fef40623          	sb	a5,-20(s0)
 668:	0100006f          	j	678 <main+0x490>
 66c:	fef44783          	lbu	a5,-17(s0)
 670:	00178793          	add	a5,a5,1
 674:	fef407a3          	sb	a5,-17(s0)
 678:	fe0406a3          	sb	zero,-19(s0)
 67c:	fe0407a3          	sb	zero,-17(s0)
 680:	fe040623          	sb	zero,-20(s0)
 684:	fe040723          	sb	zero,-18(s0)
 688:	00000793          	li	a5,0
 68c:	00078513          	mv	a0,a5
 690:	01c12403          	lw	s0,28(sp)
 694:	02010113          	add	sp,sp,32
 698:	00008067          	ret
