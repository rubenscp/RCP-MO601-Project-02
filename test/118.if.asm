
test/118.if.riscv:     file format elf32-littleriscv


Disassembly of section .text:

000001d8 <_start>:
 1d8:	00500137          	lui	sp,0x500
 1dc:	00c000ef          	jal	1e8 <main>
 1e0:	200002b7          	lui	t0,0x20000
 1e4:	00100073          	ebreak

000001e8 <main>:
 1e8:	fd010113          	add	sp,sp,-48 # 4fffd0 <__BSS_END__+0x4fced0>
 1ec:	02812623          	sw	s0,44(sp)
 1f0:	03010413          	add	s0,sp,48
 1f4:	fe0406a3          	sb	zero,-19(s0)
 1f8:	fe0407a3          	sb	zero,-17(s0)
 1fc:	fe040623          	sb	zero,-20(s0)
 200:	fe040723          	sb	zero,-18(s0)
 204:	00000793          	li	a5,0
 208:	00000813          	li	a6,0
 20c:	fef42023          	sw	a5,-32(s0)
 210:	ff042223          	sw	a6,-28(s0)
 214:	fff00713          	li	a4,-1
 218:	fff00793          	li	a5,-1
 21c:	fce42c23          	sw	a4,-40(s0)
 220:	fcf42e23          	sw	a5,-36(s0)
 224:	fe442703          	lw	a4,-28(s0)
 228:	fdc42783          	lw	a5,-36(s0)
 22c:	00e7ee63          	bltu	a5,a4,248 <main+0x60>
 230:	fe442703          	lw	a4,-28(s0)
 234:	fdc42783          	lw	a5,-36(s0)
 238:	02f71063          	bne	a4,a5,258 <main+0x70>
 23c:	fe042703          	lw	a4,-32(s0)
 240:	fd842783          	lw	a5,-40(s0)
 244:	00e7fa63          	bgeu	a5,a4,258 <main+0x70>
 248:	fec44783          	lbu	a5,-20(s0)
 24c:	00178793          	add	a5,a5,1
 250:	fef40623          	sb	a5,-20(s0)
 254:	0100006f          	j	264 <main+0x7c>
 258:	fef44783          	lbu	a5,-17(s0)
 25c:	00178793          	add	a5,a5,1
 260:	fef407a3          	sb	a5,-17(s0)
 264:	fdc42703          	lw	a4,-36(s0)
 268:	fe442783          	lw	a5,-28(s0)
 26c:	00e7ee63          	bltu	a5,a4,288 <main+0xa0>
 270:	fdc42703          	lw	a4,-36(s0)
 274:	fe442783          	lw	a5,-28(s0)
 278:	02f71063          	bne	a4,a5,298 <main+0xb0>
 27c:	fd842703          	lw	a4,-40(s0)
 280:	fe042783          	lw	a5,-32(s0)
 284:	00e7fa63          	bgeu	a5,a4,298 <main+0xb0>
 288:	fed44783          	lbu	a5,-19(s0)
 28c:	00178793          	add	a5,a5,1
 290:	fef406a3          	sb	a5,-19(s0)
 294:	0100006f          	j	2a4 <main+0xbc>
 298:	fee44783          	lbu	a5,-18(s0)
 29c:	00178793          	add	a5,a5,1
 2a0:	fef40723          	sb	a5,-18(s0)
 2a4:	fe042703          	lw	a4,-32(s0)
 2a8:	fd842783          	lw	a5,-40(s0)
 2ac:	02f71063          	bne	a4,a5,2cc <main+0xe4>
 2b0:	fe442703          	lw	a4,-28(s0)
 2b4:	fdc42783          	lw	a5,-36(s0)
 2b8:	00f71a63          	bne	a4,a5,2cc <main+0xe4>
 2bc:	fec44783          	lbu	a5,-20(s0)
 2c0:	00178793          	add	a5,a5,1
 2c4:	fef40623          	sb	a5,-20(s0)
 2c8:	0100006f          	j	2d8 <main+0xf0>
 2cc:	fef44783          	lbu	a5,-17(s0)
 2d0:	00178793          	add	a5,a5,1
 2d4:	fef407a3          	sb	a5,-17(s0)
 2d8:	fdc42703          	lw	a4,-36(s0)
 2dc:	fe442783          	lw	a5,-28(s0)
 2e0:	02e7e663          	bltu	a5,a4,30c <main+0x124>
 2e4:	fdc42703          	lw	a4,-36(s0)
 2e8:	fe442783          	lw	a5,-28(s0)
 2ec:	00f71863          	bne	a4,a5,2fc <main+0x114>
 2f0:	fd842703          	lw	a4,-40(s0)
 2f4:	fe042783          	lw	a5,-32(s0)
 2f8:	00e7ea63          	bltu	a5,a4,30c <main+0x124>
 2fc:	fec44783          	lbu	a5,-20(s0)
 300:	00178793          	add	a5,a5,1
 304:	fef40623          	sb	a5,-20(s0)
 308:	0100006f          	j	318 <main+0x130>
 30c:	fef44783          	lbu	a5,-17(s0)
 310:	00178793          	add	a5,a5,1
 314:	fef407a3          	sb	a5,-17(s0)
 318:	fe442703          	lw	a4,-28(s0)
 31c:	fdc42783          	lw	a5,-36(s0)
 320:	02e7e663          	bltu	a5,a4,34c <main+0x164>
 324:	fe442703          	lw	a4,-28(s0)
 328:	fdc42783          	lw	a5,-36(s0)
 32c:	00f71863          	bne	a4,a5,33c <main+0x154>
 330:	fe042703          	lw	a4,-32(s0)
 334:	fd842783          	lw	a5,-40(s0)
 338:	00e7ea63          	bltu	a5,a4,34c <main+0x164>
 33c:	fed44783          	lbu	a5,-19(s0)
 340:	00178793          	add	a5,a5,1
 344:	fef406a3          	sb	a5,-19(s0)
 348:	0100006f          	j	358 <main+0x170>
 34c:	fee44783          	lbu	a5,-18(s0)
 350:	00178793          	add	a5,a5,1
 354:	fef40723          	sb	a5,-18(s0)
 358:	fe0406a3          	sb	zero,-19(s0)
 35c:	fe0407a3          	sb	zero,-17(s0)
 360:	fe040623          	sb	zero,-20(s0)
 364:	fe040723          	sb	zero,-18(s0)
 368:	fff00713          	li	a4,-1
 36c:	fff00793          	li	a5,-1
 370:	fee42023          	sw	a4,-32(s0)
 374:	fef42223          	sw	a5,-28(s0)
 378:	ffe00713          	li	a4,-2
 37c:	fff00793          	li	a5,-1
 380:	fce42c23          	sw	a4,-40(s0)
 384:	fcf42e23          	sw	a5,-36(s0)
 388:	fe442703          	lw	a4,-28(s0)
 38c:	fdc42783          	lw	a5,-36(s0)
 390:	00e7ee63          	bltu	a5,a4,3ac <main+0x1c4>
 394:	fe442703          	lw	a4,-28(s0)
 398:	fdc42783          	lw	a5,-36(s0)
 39c:	02f71063          	bne	a4,a5,3bc <main+0x1d4>
 3a0:	fe042703          	lw	a4,-32(s0)
 3a4:	fd842783          	lw	a5,-40(s0)
 3a8:	00e7fa63          	bgeu	a5,a4,3bc <main+0x1d4>
 3ac:	fed44783          	lbu	a5,-19(s0)
 3b0:	00178793          	add	a5,a5,1
 3b4:	fef406a3          	sb	a5,-19(s0)
 3b8:	0100006f          	j	3c8 <main+0x1e0>
 3bc:	fee44783          	lbu	a5,-18(s0)
 3c0:	00178793          	add	a5,a5,1
 3c4:	fef40723          	sb	a5,-18(s0)
 3c8:	fdc42703          	lw	a4,-36(s0)
 3cc:	fe442783          	lw	a5,-28(s0)
 3d0:	00e7ee63          	bltu	a5,a4,3ec <main+0x204>
 3d4:	fdc42703          	lw	a4,-36(s0)
 3d8:	fe442783          	lw	a5,-28(s0)
 3dc:	02f71063          	bne	a4,a5,3fc <main+0x214>
 3e0:	fd842703          	lw	a4,-40(s0)
 3e4:	fe042783          	lw	a5,-32(s0)
 3e8:	00e7fa63          	bgeu	a5,a4,3fc <main+0x214>
 3ec:	fec44783          	lbu	a5,-20(s0)
 3f0:	00178793          	add	a5,a5,1
 3f4:	fef40623          	sb	a5,-20(s0)
 3f8:	0100006f          	j	408 <main+0x220>
 3fc:	fef44783          	lbu	a5,-17(s0)
 400:	00178793          	add	a5,a5,1
 404:	fef407a3          	sb	a5,-17(s0)
 408:	fe042703          	lw	a4,-32(s0)
 40c:	fd842783          	lw	a5,-40(s0)
 410:	02f71063          	bne	a4,a5,430 <main+0x248>
 414:	fe442703          	lw	a4,-28(s0)
 418:	fdc42783          	lw	a5,-36(s0)
 41c:	00f71a63          	bne	a4,a5,430 <main+0x248>
 420:	fec44783          	lbu	a5,-20(s0)
 424:	00178793          	add	a5,a5,1
 428:	fef40623          	sb	a5,-20(s0)
 42c:	0100006f          	j	43c <main+0x254>
 430:	fef44783          	lbu	a5,-17(s0)
 434:	00178793          	add	a5,a5,1
 438:	fef407a3          	sb	a5,-17(s0)
 43c:	fdc42703          	lw	a4,-36(s0)
 440:	fe442783          	lw	a5,-28(s0)
 444:	02e7e663          	bltu	a5,a4,470 <main+0x288>
 448:	fdc42703          	lw	a4,-36(s0)
 44c:	fe442783          	lw	a5,-28(s0)
 450:	00f71863          	bne	a4,a5,460 <main+0x278>
 454:	fd842703          	lw	a4,-40(s0)
 458:	fe042783          	lw	a5,-32(s0)
 45c:	00e7ea63          	bltu	a5,a4,470 <main+0x288>
 460:	fed44783          	lbu	a5,-19(s0)
 464:	00178793          	add	a5,a5,1
 468:	fef406a3          	sb	a5,-19(s0)
 46c:	0100006f          	j	47c <main+0x294>
 470:	fee44783          	lbu	a5,-18(s0)
 474:	00178793          	add	a5,a5,1
 478:	fef40723          	sb	a5,-18(s0)
 47c:	fe442703          	lw	a4,-28(s0)
 480:	fdc42783          	lw	a5,-36(s0)
 484:	02e7e663          	bltu	a5,a4,4b0 <main+0x2c8>
 488:	fe442703          	lw	a4,-28(s0)
 48c:	fdc42783          	lw	a5,-36(s0)
 490:	00f71863          	bne	a4,a5,4a0 <main+0x2b8>
 494:	fe042703          	lw	a4,-32(s0)
 498:	fd842783          	lw	a5,-40(s0)
 49c:	00e7ea63          	bltu	a5,a4,4b0 <main+0x2c8>
 4a0:	fec44783          	lbu	a5,-20(s0)
 4a4:	00178793          	add	a5,a5,1
 4a8:	fef40623          	sb	a5,-20(s0)
 4ac:	0100006f          	j	4bc <main+0x2d4>
 4b0:	fef44783          	lbu	a5,-17(s0)
 4b4:	00178793          	add	a5,a5,1
 4b8:	fef407a3          	sb	a5,-17(s0)
 4bc:	fe0406a3          	sb	zero,-19(s0)
 4c0:	fe0407a3          	sb	zero,-17(s0)
 4c4:	fe040623          	sb	zero,-20(s0)
 4c8:	fe040723          	sb	zero,-18(s0)
 4cc:	00100713          	li	a4,1
 4d0:	00000793          	li	a5,0
 4d4:	fee42023          	sw	a4,-32(s0)
 4d8:	fef42223          	sw	a5,-28(s0)
 4dc:	00200713          	li	a4,2
 4e0:	00000793          	li	a5,0
 4e4:	fce42c23          	sw	a4,-40(s0)
 4e8:	fcf42e23          	sw	a5,-36(s0)
 4ec:	fe442703          	lw	a4,-28(s0)
 4f0:	fdc42783          	lw	a5,-36(s0)
 4f4:	00e7ee63          	bltu	a5,a4,510 <main+0x328>
 4f8:	fe442703          	lw	a4,-28(s0)
 4fc:	fdc42783          	lw	a5,-36(s0)
 500:	02f71063          	bne	a4,a5,520 <main+0x338>
 504:	fe042703          	lw	a4,-32(s0)
 508:	fd842783          	lw	a5,-40(s0)
 50c:	00e7fa63          	bgeu	a5,a4,520 <main+0x338>
 510:	fec44783          	lbu	a5,-20(s0)
 514:	00178793          	add	a5,a5,1
 518:	fef40623          	sb	a5,-20(s0)
 51c:	0100006f          	j	52c <main+0x344>
 520:	fef44783          	lbu	a5,-17(s0)
 524:	00178793          	add	a5,a5,1
 528:	fef407a3          	sb	a5,-17(s0)
 52c:	fdc42703          	lw	a4,-36(s0)
 530:	fe442783          	lw	a5,-28(s0)
 534:	00e7ee63          	bltu	a5,a4,550 <main+0x368>
 538:	fdc42703          	lw	a4,-36(s0)
 53c:	fe442783          	lw	a5,-28(s0)
 540:	02f71063          	bne	a4,a5,560 <main+0x378>
 544:	fd842703          	lw	a4,-40(s0)
 548:	fe042783          	lw	a5,-32(s0)
 54c:	00e7fa63          	bgeu	a5,a4,560 <main+0x378>
 550:	fed44783          	lbu	a5,-19(s0)
 554:	00178793          	add	a5,a5,1
 558:	fef406a3          	sb	a5,-19(s0)
 55c:	0100006f          	j	56c <main+0x384>
 560:	fee44783          	lbu	a5,-18(s0)
 564:	00178793          	add	a5,a5,1
 568:	fef40723          	sb	a5,-18(s0)
 56c:	fe042703          	lw	a4,-32(s0)
 570:	fd842783          	lw	a5,-40(s0)
 574:	02f71063          	bne	a4,a5,594 <main+0x3ac>
 578:	fe442703          	lw	a4,-28(s0)
 57c:	fdc42783          	lw	a5,-36(s0)
 580:	00f71a63          	bne	a4,a5,594 <main+0x3ac>
 584:	fec44783          	lbu	a5,-20(s0)
 588:	00178793          	add	a5,a5,1
 58c:	fef40623          	sb	a5,-20(s0)
 590:	0100006f          	j	5a0 <main+0x3b8>
 594:	fef44783          	lbu	a5,-17(s0)
 598:	00178793          	add	a5,a5,1
 59c:	fef407a3          	sb	a5,-17(s0)
 5a0:	fdc42703          	lw	a4,-36(s0)
 5a4:	fe442783          	lw	a5,-28(s0)
 5a8:	02e7e663          	bltu	a5,a4,5d4 <main+0x3ec>
 5ac:	fdc42703          	lw	a4,-36(s0)
 5b0:	fe442783          	lw	a5,-28(s0)
 5b4:	00f71863          	bne	a4,a5,5c4 <main+0x3dc>
 5b8:	fd842703          	lw	a4,-40(s0)
 5bc:	fe042783          	lw	a5,-32(s0)
 5c0:	00e7ea63          	bltu	a5,a4,5d4 <main+0x3ec>
 5c4:	fec44783          	lbu	a5,-20(s0)
 5c8:	00178793          	add	a5,a5,1
 5cc:	fef40623          	sb	a5,-20(s0)
 5d0:	0100006f          	j	5e0 <main+0x3f8>
 5d4:	fef44783          	lbu	a5,-17(s0)
 5d8:	00178793          	add	a5,a5,1
 5dc:	fef407a3          	sb	a5,-17(s0)
 5e0:	fe442703          	lw	a4,-28(s0)
 5e4:	fdc42783          	lw	a5,-36(s0)
 5e8:	02e7e663          	bltu	a5,a4,614 <main+0x42c>
 5ec:	fe442703          	lw	a4,-28(s0)
 5f0:	fdc42783          	lw	a5,-36(s0)
 5f4:	00f71863          	bne	a4,a5,604 <main+0x41c>
 5f8:	fe042703          	lw	a4,-32(s0)
 5fc:	fd842783          	lw	a5,-40(s0)
 600:	00e7ea63          	bltu	a5,a4,614 <main+0x42c>
 604:	fed44783          	lbu	a5,-19(s0)
 608:	00178793          	add	a5,a5,1
 60c:	fef406a3          	sb	a5,-19(s0)
 610:	0100006f          	j	620 <main+0x438>
 614:	fee44783          	lbu	a5,-18(s0)
 618:	00178793          	add	a5,a5,1
 61c:	fef40723          	sb	a5,-18(s0)
 620:	fe0406a3          	sb	zero,-19(s0)
 624:	fe0407a3          	sb	zero,-17(s0)
 628:	fe040623          	sb	zero,-20(s0)
 62c:	fe040723          	sb	zero,-18(s0)
 630:	00f00713          	li	a4,15
 634:	00000793          	li	a5,0
 638:	fee42023          	sw	a4,-32(s0)
 63c:	fef42223          	sw	a5,-28(s0)
 640:	00f00713          	li	a4,15
 644:	00000793          	li	a5,0
 648:	fce42c23          	sw	a4,-40(s0)
 64c:	fcf42e23          	sw	a5,-36(s0)
 650:	fe442703          	lw	a4,-28(s0)
 654:	fdc42783          	lw	a5,-36(s0)
 658:	00e7ee63          	bltu	a5,a4,674 <main+0x48c>
 65c:	fe442703          	lw	a4,-28(s0)
 660:	fdc42783          	lw	a5,-36(s0)
 664:	02f71063          	bne	a4,a5,684 <main+0x49c>
 668:	fe042703          	lw	a4,-32(s0)
 66c:	fd842783          	lw	a5,-40(s0)
 670:	00e7fa63          	bgeu	a5,a4,684 <main+0x49c>
 674:	fec44783          	lbu	a5,-20(s0)
 678:	00178793          	add	a5,a5,1
 67c:	fef40623          	sb	a5,-20(s0)
 680:	0100006f          	j	690 <main+0x4a8>
 684:	fef44783          	lbu	a5,-17(s0)
 688:	00178793          	add	a5,a5,1
 68c:	fef407a3          	sb	a5,-17(s0)
 690:	fdc42703          	lw	a4,-36(s0)
 694:	fe442783          	lw	a5,-28(s0)
 698:	00e7ee63          	bltu	a5,a4,6b4 <main+0x4cc>
 69c:	fdc42703          	lw	a4,-36(s0)
 6a0:	fe442783          	lw	a5,-28(s0)
 6a4:	02f71063          	bne	a4,a5,6c4 <main+0x4dc>
 6a8:	fd842703          	lw	a4,-40(s0)
 6ac:	fe042783          	lw	a5,-32(s0)
 6b0:	00e7fa63          	bgeu	a5,a4,6c4 <main+0x4dc>
 6b4:	fec44783          	lbu	a5,-20(s0)
 6b8:	00178793          	add	a5,a5,1
 6bc:	fef40623          	sb	a5,-20(s0)
 6c0:	0100006f          	j	6d0 <main+0x4e8>
 6c4:	fef44783          	lbu	a5,-17(s0)
 6c8:	00178793          	add	a5,a5,1
 6cc:	fef407a3          	sb	a5,-17(s0)
 6d0:	fe042703          	lw	a4,-32(s0)
 6d4:	fd842783          	lw	a5,-40(s0)
 6d8:	02f71063          	bne	a4,a5,6f8 <main+0x510>
 6dc:	fe442703          	lw	a4,-28(s0)
 6e0:	fdc42783          	lw	a5,-36(s0)
 6e4:	00f71a63          	bne	a4,a5,6f8 <main+0x510>
 6e8:	fed44783          	lbu	a5,-19(s0)
 6ec:	00178793          	add	a5,a5,1
 6f0:	fef406a3          	sb	a5,-19(s0)
 6f4:	0100006f          	j	704 <main+0x51c>
 6f8:	fee44783          	lbu	a5,-18(s0)
 6fc:	00178793          	add	a5,a5,1
 700:	fef40723          	sb	a5,-18(s0)
 704:	fdc42703          	lw	a4,-36(s0)
 708:	fe442783          	lw	a5,-28(s0)
 70c:	02e7e663          	bltu	a5,a4,738 <main+0x550>
 710:	fdc42703          	lw	a4,-36(s0)
 714:	fe442783          	lw	a5,-28(s0)
 718:	00f71863          	bne	a4,a5,728 <main+0x540>
 71c:	fd842703          	lw	a4,-40(s0)
 720:	fe042783          	lw	a5,-32(s0)
 724:	00e7ea63          	bltu	a5,a4,738 <main+0x550>
 728:	fed44783          	lbu	a5,-19(s0)
 72c:	00178793          	add	a5,a5,1
 730:	fef406a3          	sb	a5,-19(s0)
 734:	0100006f          	j	744 <main+0x55c>
 738:	fee44783          	lbu	a5,-18(s0)
 73c:	00178793          	add	a5,a5,1
 740:	fef40723          	sb	a5,-18(s0)
 744:	fe442703          	lw	a4,-28(s0)
 748:	fdc42783          	lw	a5,-36(s0)
 74c:	02e7e663          	bltu	a5,a4,778 <main+0x590>
 750:	fe442703          	lw	a4,-28(s0)
 754:	fdc42783          	lw	a5,-36(s0)
 758:	00f71863          	bne	a4,a5,768 <main+0x580>
 75c:	fe042703          	lw	a4,-32(s0)
 760:	fd842783          	lw	a5,-40(s0)
 764:	00e7ea63          	bltu	a5,a4,778 <main+0x590>
 768:	fed44783          	lbu	a5,-19(s0)
 76c:	00178793          	add	a5,a5,1
 770:	fef406a3          	sb	a5,-19(s0)
 774:	0100006f          	j	784 <main+0x59c>
 778:	fee44783          	lbu	a5,-18(s0)
 77c:	00178793          	add	a5,a5,1
 780:	fef40723          	sb	a5,-18(s0)
 784:	fe0406a3          	sb	zero,-19(s0)
 788:	fe0407a3          	sb	zero,-17(s0)
 78c:	fe040623          	sb	zero,-20(s0)
 790:	fe040723          	sb	zero,-18(s0)
 794:	00100713          	li	a4,1
 798:	00000793          	li	a5,0
 79c:	fee42023          	sw	a4,-32(s0)
 7a0:	fef42223          	sw	a5,-28(s0)
 7a4:	fff00713          	li	a4,-1
 7a8:	fff00793          	li	a5,-1
 7ac:	fce42c23          	sw	a4,-40(s0)
 7b0:	fcf42e23          	sw	a5,-36(s0)
 7b4:	fe442703          	lw	a4,-28(s0)
 7b8:	fdc42783          	lw	a5,-36(s0)
 7bc:	00e7ee63          	bltu	a5,a4,7d8 <main+0x5f0>
 7c0:	fe442703          	lw	a4,-28(s0)
 7c4:	fdc42783          	lw	a5,-36(s0)
 7c8:	02f71063          	bne	a4,a5,7e8 <main+0x600>
 7cc:	fe042703          	lw	a4,-32(s0)
 7d0:	fd842783          	lw	a5,-40(s0)
 7d4:	00e7fa63          	bgeu	a5,a4,7e8 <main+0x600>
 7d8:	fec44783          	lbu	a5,-20(s0)
 7dc:	00178793          	add	a5,a5,1
 7e0:	fef40623          	sb	a5,-20(s0)
 7e4:	0100006f          	j	7f4 <main+0x60c>
 7e8:	fef44783          	lbu	a5,-17(s0)
 7ec:	00178793          	add	a5,a5,1
 7f0:	fef407a3          	sb	a5,-17(s0)
 7f4:	fdc42703          	lw	a4,-36(s0)
 7f8:	fe442783          	lw	a5,-28(s0)
 7fc:	00e7ee63          	bltu	a5,a4,818 <main+0x630>
 800:	fdc42703          	lw	a4,-36(s0)
 804:	fe442783          	lw	a5,-28(s0)
 808:	02f71063          	bne	a4,a5,828 <main+0x640>
 80c:	fd842703          	lw	a4,-40(s0)
 810:	fe042783          	lw	a5,-32(s0)
 814:	00e7fa63          	bgeu	a5,a4,828 <main+0x640>
 818:	fed44783          	lbu	a5,-19(s0)
 81c:	00178793          	add	a5,a5,1
 820:	fef406a3          	sb	a5,-19(s0)
 824:	0100006f          	j	834 <main+0x64c>
 828:	fee44783          	lbu	a5,-18(s0)
 82c:	00178793          	add	a5,a5,1
 830:	fef40723          	sb	a5,-18(s0)
 834:	fe042703          	lw	a4,-32(s0)
 838:	fd842783          	lw	a5,-40(s0)
 83c:	02f71063          	bne	a4,a5,85c <main+0x674>
 840:	fe442703          	lw	a4,-28(s0)
 844:	fdc42783          	lw	a5,-36(s0)
 848:	00f71a63          	bne	a4,a5,85c <main+0x674>
 84c:	fec44783          	lbu	a5,-20(s0)
 850:	00178793          	add	a5,a5,1
 854:	fef40623          	sb	a5,-20(s0)
 858:	0100006f          	j	868 <main+0x680>
 85c:	fef44783          	lbu	a5,-17(s0)
 860:	00178793          	add	a5,a5,1
 864:	fef407a3          	sb	a5,-17(s0)
 868:	fdc42703          	lw	a4,-36(s0)
 86c:	fe442783          	lw	a5,-28(s0)
 870:	02e7e663          	bltu	a5,a4,89c <main+0x6b4>
 874:	fdc42703          	lw	a4,-36(s0)
 878:	fe442783          	lw	a5,-28(s0)
 87c:	00f71863          	bne	a4,a5,88c <main+0x6a4>
 880:	fd842703          	lw	a4,-40(s0)
 884:	fe042783          	lw	a5,-32(s0)
 888:	00e7ea63          	bltu	a5,a4,89c <main+0x6b4>
 88c:	fec44783          	lbu	a5,-20(s0)
 890:	00178793          	add	a5,a5,1
 894:	fef40623          	sb	a5,-20(s0)
 898:	0100006f          	j	8a8 <main+0x6c0>
 89c:	fef44783          	lbu	a5,-17(s0)
 8a0:	00178793          	add	a5,a5,1
 8a4:	fef407a3          	sb	a5,-17(s0)
 8a8:	fe442703          	lw	a4,-28(s0)
 8ac:	fdc42783          	lw	a5,-36(s0)
 8b0:	02e7e663          	bltu	a5,a4,8dc <main+0x6f4>
 8b4:	fe442703          	lw	a4,-28(s0)
 8b8:	fdc42783          	lw	a5,-36(s0)
 8bc:	00f71863          	bne	a4,a5,8cc <main+0x6e4>
 8c0:	fe042703          	lw	a4,-32(s0)
 8c4:	fd842783          	lw	a5,-40(s0)
 8c8:	00e7ea63          	bltu	a5,a4,8dc <main+0x6f4>
 8cc:	fed44783          	lbu	a5,-19(s0)
 8d0:	00178793          	add	a5,a5,1
 8d4:	fef406a3          	sb	a5,-19(s0)
 8d8:	0100006f          	j	8e8 <main+0x700>
 8dc:	fee44783          	lbu	a5,-18(s0)
 8e0:	00178793          	add	a5,a5,1
 8e4:	fef40723          	sb	a5,-18(s0)
 8e8:	fe0406a3          	sb	zero,-19(s0)
 8ec:	fe0407a3          	sb	zero,-17(s0)
 8f0:	fe040623          	sb	zero,-20(s0)
 8f4:	fe040723          	sb	zero,-18(s0)
 8f8:	00000793          	li	a5,0
 8fc:	00078513          	mv	a0,a5
 900:	02c12403          	lw	s0,44(sp)
 904:	03010113          	add	sp,sp,48
 908:	00008067          	ret
