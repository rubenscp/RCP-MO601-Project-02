
test/084.shift.riscv:     file format elf32-littleriscv


Disassembly of section .text:

000001d8 <_start>:
 1d8:	00500137          	lui	sp,0x500
 1dc:	00c000ef          	jal	1e8 <main>
 1e0:	200002b7          	lui	t0,0x20000
 1e4:	00100073          	ebreak

000001e8 <main>:
 1e8:	f5010113          	add	sp,sp,-176 # 4fff50 <__BSS_END__+0x4fce50>
 1ec:	0a812623          	sw	s0,172(sp)
 1f0:	0b212423          	sw	s2,168(sp)
 1f4:	0b312223          	sw	s3,164(sp)
 1f8:	0b412023          	sw	s4,160(sp)
 1fc:	09512e23          	sw	s5,156(sp)
 200:	09612c23          	sw	s6,152(sp)
 204:	09712a23          	sw	s7,148(sp)
 208:	09812823          	sw	s8,144(sp)
 20c:	09912623          	sw	s9,140(sp)
 210:	09a12423          	sw	s10,136(sp)
 214:	09b12223          	sw	s11,132(sp)
 218:	0b010413          	add	s0,sp,176
 21c:	fff00713          	li	a4,-1
 220:	fff00793          	li	a5,-1
 224:	fce42423          	sw	a4,-56(s0)
 228:	fcf42623          	sw	a5,-52(s0)
 22c:	fcc42783          	lw	a5,-52(s0)
 230:	01f79713          	sll	a4,a5,0x1f
 234:	fc842783          	lw	a5,-56(s0)
 238:	0017d613          	srl	a2,a5,0x1
 23c:	00c76633          	or	a2,a4,a2
 240:	fcc42783          	lw	a5,-52(s0)
 244:	0017d693          	srl	a3,a5,0x1
 248:	fcc42423          	sw	a2,-56(s0)
 24c:	fcd42623          	sw	a3,-52(s0)
 250:	00000613          	li	a2,0
 254:	00000693          	li	a3,0
 258:	fcc42423          	sw	a2,-56(s0)
 25c:	fcd42623          	sw	a3,-52(s0)
 260:	fcc42423          	sw	a2,-56(s0)
 264:	fcd42623          	sw	a3,-52(s0)
 268:	fcc42783          	lw	a5,-52(s0)
 26c:	01f79713          	sll	a4,a5,0x1f
 270:	fc842783          	lw	a5,-56(s0)
 274:	0017d513          	srl	a0,a5,0x1
 278:	00a76533          	or	a0,a4,a0
 27c:	fcc42783          	lw	a5,-52(s0)
 280:	0017d593          	srl	a1,a5,0x1
 284:	fca42423          	sw	a0,-56(s0)
 288:	fcb42623          	sw	a1,-52(s0)
 28c:	fcc42423          	sw	a2,-56(s0)
 290:	fcd42623          	sw	a3,-52(s0)
 294:	00100713          	li	a4,1
 298:	00000793          	li	a5,0
 29c:	fce42423          	sw	a4,-56(s0)
 2a0:	fcf42623          	sw	a5,-52(s0)
 2a4:	fcc42783          	lw	a5,-52(s0)
 2a8:	01f79713          	sll	a4,a5,0x1f
 2ac:	fc842783          	lw	a5,-56(s0)
 2b0:	0017d813          	srl	a6,a5,0x1
 2b4:	01076833          	or	a6,a4,a6
 2b8:	fcc42783          	lw	a5,-52(s0)
 2bc:	0017d893          	srl	a7,a5,0x1
 2c0:	fd042423          	sw	a6,-56(s0)
 2c4:	fd142623          	sw	a7,-52(s0)
 2c8:	fcc42423          	sw	a2,-56(s0)
 2cc:	fcd42623          	sw	a3,-52(s0)
 2d0:	00000713          	li	a4,0
 2d4:	800007b7          	lui	a5,0x80000
 2d8:	fce42423          	sw	a4,-56(s0)
 2dc:	fcf42623          	sw	a5,-52(s0)
 2e0:	fcc42783          	lw	a5,-52(s0)
 2e4:	01f79713          	sll	a4,a5,0x1f
 2e8:	fc842783          	lw	a5,-56(s0)
 2ec:	0017d313          	srl	t1,a5,0x1
 2f0:	00676333          	or	t1,a4,t1
 2f4:	fcc42783          	lw	a5,-52(s0)
 2f8:	0017d393          	srl	t2,a5,0x1
 2fc:	fc642423          	sw	t1,-56(s0)
 300:	fc742623          	sw	t2,-52(s0)
 304:	fcc42423          	sw	a2,-56(s0)
 308:	fcd42623          	sw	a3,-52(s0)
 30c:	00000797          	auipc	a5,0x0
 310:	62c78793          	add	a5,a5,1580 # 938 <main+0x750>
 314:	0007a703          	lw	a4,0(a5)
 318:	0047a783          	lw	a5,4(a5)
 31c:	fce42423          	sw	a4,-56(s0)
 320:	fcf42623          	sw	a5,-52(s0)
 324:	fcc42783          	lw	a5,-52(s0)
 328:	01f79713          	sll	a4,a5,0x1f
 32c:	fc842783          	lw	a5,-56(s0)
 330:	0017de13          	srl	t3,a5,0x1
 334:	01c76e33          	or	t3,a4,t3
 338:	fcc42783          	lw	a5,-52(s0)
 33c:	0017de93          	srl	t4,a5,0x1
 340:	fdc42423          	sw	t3,-56(s0)
 344:	fdd42623          	sw	t4,-52(s0)
 348:	fcc42423          	sw	a2,-56(s0)
 34c:	fcd42623          	sw	a3,-52(s0)
 350:	c0000737          	lui	a4,0xc0000
 354:	00300793          	li	a5,3
 358:	fce42423          	sw	a4,-56(s0)
 35c:	fcf42623          	sw	a5,-52(s0)
 360:	fcc42783          	lw	a5,-52(s0)
 364:	01e79713          	sll	a4,a5,0x1e
 368:	fc842783          	lw	a5,-56(s0)
 36c:	0027df13          	srl	t5,a5,0x2
 370:	01e76f33          	or	t5,a4,t5
 374:	fcc42783          	lw	a5,-52(s0)
 378:	0027df93          	srl	t6,a5,0x2
 37c:	fde42423          	sw	t5,-56(s0)
 380:	fdf42623          	sw	t6,-52(s0)
 384:	fcc42423          	sw	a2,-56(s0)
 388:	fcd42623          	sw	a3,-52(s0)
 38c:	fff00713          	li	a4,-1
 390:	fff00793          	li	a5,-1
 394:	fce42023          	sw	a4,-64(s0)
 398:	fcf42223          	sw	a5,-60(s0)
 39c:	fc442783          	lw	a5,-60(s0)
 3a0:	01f79713          	sll	a4,a5,0x1f
 3a4:	fc042783          	lw	a5,-64(s0)
 3a8:	0017d913          	srl	s2,a5,0x1
 3ac:	01276933          	or	s2,a4,s2
 3b0:	fc442783          	lw	a5,-60(s0)
 3b4:	4017d993          	sra	s3,a5,0x1
 3b8:	fd242023          	sw	s2,-64(s0)
 3bc:	fd342223          	sw	s3,-60(s0)
 3c0:	fcc42023          	sw	a2,-64(s0)
 3c4:	fcd42223          	sw	a3,-60(s0)
 3c8:	fcc42023          	sw	a2,-64(s0)
 3cc:	fcd42223          	sw	a3,-60(s0)
 3d0:	fc442783          	lw	a5,-60(s0)
 3d4:	01f79713          	sll	a4,a5,0x1f
 3d8:	fc042783          	lw	a5,-64(s0)
 3dc:	0017da13          	srl	s4,a5,0x1
 3e0:	01476a33          	or	s4,a4,s4
 3e4:	fc442783          	lw	a5,-60(s0)
 3e8:	4017da93          	sra	s5,a5,0x1
 3ec:	fd442023          	sw	s4,-64(s0)
 3f0:	fd542223          	sw	s5,-60(s0)
 3f4:	fcc42023          	sw	a2,-64(s0)
 3f8:	fcd42223          	sw	a3,-60(s0)
 3fc:	00100713          	li	a4,1
 400:	00000793          	li	a5,0
 404:	fce42023          	sw	a4,-64(s0)
 408:	fcf42223          	sw	a5,-60(s0)
 40c:	fc442783          	lw	a5,-60(s0)
 410:	01f79713          	sll	a4,a5,0x1f
 414:	fc042783          	lw	a5,-64(s0)
 418:	0017db13          	srl	s6,a5,0x1
 41c:	01676b33          	or	s6,a4,s6
 420:	fc442783          	lw	a5,-60(s0)
 424:	4017db93          	sra	s7,a5,0x1
 428:	fd642023          	sw	s6,-64(s0)
 42c:	fd742223          	sw	s7,-60(s0)
 430:	fcc42023          	sw	a2,-64(s0)
 434:	fcd42223          	sw	a3,-60(s0)
 438:	00000713          	li	a4,0
 43c:	800007b7          	lui	a5,0x80000
 440:	fce42023          	sw	a4,-64(s0)
 444:	fcf42223          	sw	a5,-60(s0)
 448:	fc442783          	lw	a5,-60(s0)
 44c:	01f79713          	sll	a4,a5,0x1f
 450:	fc042783          	lw	a5,-64(s0)
 454:	0017dc13          	srl	s8,a5,0x1
 458:	01876c33          	or	s8,a4,s8
 45c:	fc442783          	lw	a5,-60(s0)
 460:	4017dc93          	sra	s9,a5,0x1
 464:	fd842023          	sw	s8,-64(s0)
 468:	fd942223          	sw	s9,-60(s0)
 46c:	fcc42023          	sw	a2,-64(s0)
 470:	fcd42223          	sw	a3,-60(s0)
 474:	00000797          	auipc	a5,0x0
 478:	4c478793          	add	a5,a5,1220 # 938 <main+0x750>
 47c:	0007a703          	lw	a4,0(a5)
 480:	0047a783          	lw	a5,4(a5)
 484:	fce42023          	sw	a4,-64(s0)
 488:	fcf42223          	sw	a5,-60(s0)
 48c:	fc442783          	lw	a5,-60(s0)
 490:	01f79713          	sll	a4,a5,0x1f
 494:	fc042783          	lw	a5,-64(s0)
 498:	0017dd13          	srl	s10,a5,0x1
 49c:	01a76d33          	or	s10,a4,s10
 4a0:	fc442783          	lw	a5,-60(s0)
 4a4:	4017dd93          	sra	s11,a5,0x1
 4a8:	fda42023          	sw	s10,-64(s0)
 4ac:	fdb42223          	sw	s11,-60(s0)
 4b0:	fcc42023          	sw	a2,-64(s0)
 4b4:	fcd42223          	sw	a3,-60(s0)
 4b8:	c0000737          	lui	a4,0xc0000
 4bc:	00300793          	li	a5,3
 4c0:	fce42023          	sw	a4,-64(s0)
 4c4:	fcf42223          	sw	a5,-60(s0)
 4c8:	fc442783          	lw	a5,-60(s0)
 4cc:	01e79713          	sll	a4,a5,0x1e
 4d0:	fc042783          	lw	a5,-64(s0)
 4d4:	0027d793          	srl	a5,a5,0x2
 4d8:	faf42c23          	sw	a5,-72(s0)
 4dc:	fb842783          	lw	a5,-72(s0)
 4e0:	00f767b3          	or	a5,a4,a5
 4e4:	faf42c23          	sw	a5,-72(s0)
 4e8:	fc442783          	lw	a5,-60(s0)
 4ec:	4027d793          	sra	a5,a5,0x2
 4f0:	faf42e23          	sw	a5,-68(s0)
 4f4:	fb842783          	lw	a5,-72(s0)
 4f8:	fbc42803          	lw	a6,-68(s0)
 4fc:	fcf42023          	sw	a5,-64(s0)
 500:	fd042223          	sw	a6,-60(s0)
 504:	fcc42023          	sw	a2,-64(s0)
 508:	fcd42223          	sw	a3,-60(s0)
 50c:	fff00713          	li	a4,-1
 510:	fff00793          	li	a5,-1
 514:	fce42423          	sw	a4,-56(s0)
 518:	fcf42623          	sw	a5,-52(s0)
 51c:	fc842783          	lw	a5,-56(s0)
 520:	01f7d793          	srl	a5,a5,0x1f
 524:	fcc42703          	lw	a4,-52(s0)
 528:	00171713          	sll	a4,a4,0x1
 52c:	fae42a23          	sw	a4,-76(s0)
 530:	fb442703          	lw	a4,-76(s0)
 534:	00e7e7b3          	or	a5,a5,a4
 538:	faf42a23          	sw	a5,-76(s0)
 53c:	fc842783          	lw	a5,-56(s0)
 540:	00179793          	sll	a5,a5,0x1
 544:	faf42823          	sw	a5,-80(s0)
 548:	fb042783          	lw	a5,-80(s0)
 54c:	fb442803          	lw	a6,-76(s0)
 550:	fcf42423          	sw	a5,-56(s0)
 554:	fd042623          	sw	a6,-52(s0)
 558:	fcc42423          	sw	a2,-56(s0)
 55c:	fcd42623          	sw	a3,-52(s0)
 560:	fcc42423          	sw	a2,-56(s0)
 564:	fcd42623          	sw	a3,-52(s0)
 568:	fc842783          	lw	a5,-56(s0)
 56c:	01f7d793          	srl	a5,a5,0x1f
 570:	fcc42703          	lw	a4,-52(s0)
 574:	00171713          	sll	a4,a4,0x1
 578:	fae42623          	sw	a4,-84(s0)
 57c:	fac42703          	lw	a4,-84(s0)
 580:	00e7e7b3          	or	a5,a5,a4
 584:	faf42623          	sw	a5,-84(s0)
 588:	fc842783          	lw	a5,-56(s0)
 58c:	00179793          	sll	a5,a5,0x1
 590:	faf42423          	sw	a5,-88(s0)
 594:	fa842783          	lw	a5,-88(s0)
 598:	fac42803          	lw	a6,-84(s0)
 59c:	fcf42423          	sw	a5,-56(s0)
 5a0:	fd042623          	sw	a6,-52(s0)
 5a4:	fcc42423          	sw	a2,-56(s0)
 5a8:	fcd42623          	sw	a3,-52(s0)
 5ac:	00100713          	li	a4,1
 5b0:	00000793          	li	a5,0
 5b4:	fce42423          	sw	a4,-56(s0)
 5b8:	fcf42623          	sw	a5,-52(s0)
 5bc:	fc842783          	lw	a5,-56(s0)
 5c0:	01f7d793          	srl	a5,a5,0x1f
 5c4:	fcc42703          	lw	a4,-52(s0)
 5c8:	00171713          	sll	a4,a4,0x1
 5cc:	fae42223          	sw	a4,-92(s0)
 5d0:	fa442703          	lw	a4,-92(s0)
 5d4:	00e7e7b3          	or	a5,a5,a4
 5d8:	faf42223          	sw	a5,-92(s0)
 5dc:	fc842783          	lw	a5,-56(s0)
 5e0:	00179793          	sll	a5,a5,0x1
 5e4:	faf42023          	sw	a5,-96(s0)
 5e8:	fa042783          	lw	a5,-96(s0)
 5ec:	fa442803          	lw	a6,-92(s0)
 5f0:	fcf42423          	sw	a5,-56(s0)
 5f4:	fd042623          	sw	a6,-52(s0)
 5f8:	fcc42423          	sw	a2,-56(s0)
 5fc:	fcd42623          	sw	a3,-52(s0)
 600:	00000713          	li	a4,0
 604:	800007b7          	lui	a5,0x80000
 608:	fce42423          	sw	a4,-56(s0)
 60c:	fcf42623          	sw	a5,-52(s0)
 610:	fc842783          	lw	a5,-56(s0)
 614:	01f7d793          	srl	a5,a5,0x1f
 618:	fcc42703          	lw	a4,-52(s0)
 61c:	00171713          	sll	a4,a4,0x1
 620:	f8e42e23          	sw	a4,-100(s0)
 624:	f9c42703          	lw	a4,-100(s0)
 628:	00e7e7b3          	or	a5,a5,a4
 62c:	f8f42e23          	sw	a5,-100(s0)
 630:	fc842783          	lw	a5,-56(s0)
 634:	00179793          	sll	a5,a5,0x1
 638:	f8f42c23          	sw	a5,-104(s0)
 63c:	f9842783          	lw	a5,-104(s0)
 640:	f9c42803          	lw	a6,-100(s0)
 644:	fcf42423          	sw	a5,-56(s0)
 648:	fd042623          	sw	a6,-52(s0)
 64c:	fcc42423          	sw	a2,-56(s0)
 650:	fcd42623          	sw	a3,-52(s0)
 654:	00000797          	auipc	a5,0x0
 658:	2e478793          	add	a5,a5,740 # 938 <main+0x750>
 65c:	0007a703          	lw	a4,0(a5)
 660:	0047a783          	lw	a5,4(a5)
 664:	fce42423          	sw	a4,-56(s0)
 668:	fcf42623          	sw	a5,-52(s0)
 66c:	fc842783          	lw	a5,-56(s0)
 670:	01f7d793          	srl	a5,a5,0x1f
 674:	fcc42703          	lw	a4,-52(s0)
 678:	00171713          	sll	a4,a4,0x1
 67c:	f8e42a23          	sw	a4,-108(s0)
 680:	f9442703          	lw	a4,-108(s0)
 684:	00e7e7b3          	or	a5,a5,a4
 688:	f8f42a23          	sw	a5,-108(s0)
 68c:	fc842783          	lw	a5,-56(s0)
 690:	00179793          	sll	a5,a5,0x1
 694:	f8f42823          	sw	a5,-112(s0)
 698:	f9042783          	lw	a5,-112(s0)
 69c:	f9442803          	lw	a6,-108(s0)
 6a0:	fcf42423          	sw	a5,-56(s0)
 6a4:	fd042623          	sw	a6,-52(s0)
 6a8:	fcc42423          	sw	a2,-56(s0)
 6ac:	fcd42623          	sw	a3,-52(s0)
 6b0:	c0000737          	lui	a4,0xc0000
 6b4:	00300793          	li	a5,3
 6b8:	fce42423          	sw	a4,-56(s0)
 6bc:	fcf42623          	sw	a5,-52(s0)
 6c0:	fc842783          	lw	a5,-56(s0)
 6c4:	01e7d793          	srl	a5,a5,0x1e
 6c8:	fcc42703          	lw	a4,-52(s0)
 6cc:	00271713          	sll	a4,a4,0x2
 6d0:	f8e42623          	sw	a4,-116(s0)
 6d4:	f8c42703          	lw	a4,-116(s0)
 6d8:	00e7e7b3          	or	a5,a5,a4
 6dc:	f8f42623          	sw	a5,-116(s0)
 6e0:	fc842783          	lw	a5,-56(s0)
 6e4:	00279793          	sll	a5,a5,0x2
 6e8:	f8f42423          	sw	a5,-120(s0)
 6ec:	f8842783          	lw	a5,-120(s0)
 6f0:	f8c42803          	lw	a6,-116(s0)
 6f4:	fcf42423          	sw	a5,-56(s0)
 6f8:	fd042623          	sw	a6,-52(s0)
 6fc:	fcc42423          	sw	a2,-56(s0)
 700:	fcd42623          	sw	a3,-52(s0)
 704:	fff00713          	li	a4,-1
 708:	fff00793          	li	a5,-1
 70c:	fce42023          	sw	a4,-64(s0)
 710:	fcf42223          	sw	a5,-60(s0)
 714:	fc042783          	lw	a5,-64(s0)
 718:	01f7d793          	srl	a5,a5,0x1f
 71c:	fc442703          	lw	a4,-60(s0)
 720:	00171713          	sll	a4,a4,0x1
 724:	f8e42223          	sw	a4,-124(s0)
 728:	f8442703          	lw	a4,-124(s0)
 72c:	00e7e7b3          	or	a5,a5,a4
 730:	f8f42223          	sw	a5,-124(s0)
 734:	fc042783          	lw	a5,-64(s0)
 738:	00179793          	sll	a5,a5,0x1
 73c:	f8f42023          	sw	a5,-128(s0)
 740:	f8042783          	lw	a5,-128(s0)
 744:	f8442803          	lw	a6,-124(s0)
 748:	fcf42023          	sw	a5,-64(s0)
 74c:	fd042223          	sw	a6,-60(s0)
 750:	fcc42023          	sw	a2,-64(s0)
 754:	fcd42223          	sw	a3,-60(s0)
 758:	fcc42023          	sw	a2,-64(s0)
 75c:	fcd42223          	sw	a3,-60(s0)
 760:	fc042783          	lw	a5,-64(s0)
 764:	01f7d793          	srl	a5,a5,0x1f
 768:	fc442703          	lw	a4,-60(s0)
 76c:	00171713          	sll	a4,a4,0x1
 770:	f6e42e23          	sw	a4,-132(s0)
 774:	f7c42703          	lw	a4,-132(s0)
 778:	00e7e7b3          	or	a5,a5,a4
 77c:	f6f42e23          	sw	a5,-132(s0)
 780:	fc042783          	lw	a5,-64(s0)
 784:	00179793          	sll	a5,a5,0x1
 788:	f6f42c23          	sw	a5,-136(s0)
 78c:	f7842783          	lw	a5,-136(s0)
 790:	f7c42803          	lw	a6,-132(s0)
 794:	fcf42023          	sw	a5,-64(s0)
 798:	fd042223          	sw	a6,-60(s0)
 79c:	fcc42023          	sw	a2,-64(s0)
 7a0:	fcd42223          	sw	a3,-60(s0)
 7a4:	00100713          	li	a4,1
 7a8:	00000793          	li	a5,0
 7ac:	fce42023          	sw	a4,-64(s0)
 7b0:	fcf42223          	sw	a5,-60(s0)
 7b4:	fc042783          	lw	a5,-64(s0)
 7b8:	01f7d793          	srl	a5,a5,0x1f
 7bc:	fc442703          	lw	a4,-60(s0)
 7c0:	00171713          	sll	a4,a4,0x1
 7c4:	f6e42a23          	sw	a4,-140(s0)
 7c8:	f7442703          	lw	a4,-140(s0)
 7cc:	00e7e7b3          	or	a5,a5,a4
 7d0:	f6f42a23          	sw	a5,-140(s0)
 7d4:	fc042783          	lw	a5,-64(s0)
 7d8:	00179793          	sll	a5,a5,0x1
 7dc:	f6f42823          	sw	a5,-144(s0)
 7e0:	f7042783          	lw	a5,-144(s0)
 7e4:	f7442803          	lw	a6,-140(s0)
 7e8:	fcf42023          	sw	a5,-64(s0)
 7ec:	fd042223          	sw	a6,-60(s0)
 7f0:	fcc42023          	sw	a2,-64(s0)
 7f4:	fcd42223          	sw	a3,-60(s0)
 7f8:	00000713          	li	a4,0
 7fc:	800007b7          	lui	a5,0x80000
 800:	fce42023          	sw	a4,-64(s0)
 804:	fcf42223          	sw	a5,-60(s0)
 808:	fc042783          	lw	a5,-64(s0)
 80c:	01f7d793          	srl	a5,a5,0x1f
 810:	fc442703          	lw	a4,-60(s0)
 814:	00171713          	sll	a4,a4,0x1
 818:	f6e42623          	sw	a4,-148(s0)
 81c:	f6c42703          	lw	a4,-148(s0)
 820:	00e7e7b3          	or	a5,a5,a4
 824:	f6f42623          	sw	a5,-148(s0)
 828:	fc042783          	lw	a5,-64(s0)
 82c:	00179793          	sll	a5,a5,0x1
 830:	f6f42423          	sw	a5,-152(s0)
 834:	f6842783          	lw	a5,-152(s0)
 838:	f6c42803          	lw	a6,-148(s0)
 83c:	fcf42023          	sw	a5,-64(s0)
 840:	fd042223          	sw	a6,-60(s0)
 844:	fcc42023          	sw	a2,-64(s0)
 848:	fcd42223          	sw	a3,-60(s0)
 84c:	00000797          	auipc	a5,0x0
 850:	0ec78793          	add	a5,a5,236 # 938 <main+0x750>
 854:	0007a703          	lw	a4,0(a5)
 858:	0047a783          	lw	a5,4(a5)
 85c:	fce42023          	sw	a4,-64(s0)
 860:	fcf42223          	sw	a5,-60(s0)
 864:	fc042783          	lw	a5,-64(s0)
 868:	01f7d793          	srl	a5,a5,0x1f
 86c:	fc442703          	lw	a4,-60(s0)
 870:	00171713          	sll	a4,a4,0x1
 874:	f6e42223          	sw	a4,-156(s0)
 878:	f6442703          	lw	a4,-156(s0)
 87c:	00e7e7b3          	or	a5,a5,a4
 880:	f6f42223          	sw	a5,-156(s0)
 884:	fc042783          	lw	a5,-64(s0)
 888:	00179793          	sll	a5,a5,0x1
 88c:	f6f42023          	sw	a5,-160(s0)
 890:	f6042783          	lw	a5,-160(s0)
 894:	f6442803          	lw	a6,-156(s0)
 898:	fcf42023          	sw	a5,-64(s0)
 89c:	fd042223          	sw	a6,-60(s0)
 8a0:	fcc42023          	sw	a2,-64(s0)
 8a4:	fcd42223          	sw	a3,-60(s0)
 8a8:	c0000737          	lui	a4,0xc0000
 8ac:	00300793          	li	a5,3
 8b0:	fce42023          	sw	a4,-64(s0)
 8b4:	fcf42223          	sw	a5,-60(s0)
 8b8:	fc042783          	lw	a5,-64(s0)
 8bc:	01e7d793          	srl	a5,a5,0x1e
 8c0:	fc442703          	lw	a4,-60(s0)
 8c4:	00271713          	sll	a4,a4,0x2
 8c8:	f4e42e23          	sw	a4,-164(s0)
 8cc:	f5c42703          	lw	a4,-164(s0)
 8d0:	00e7e7b3          	or	a5,a5,a4
 8d4:	f4f42e23          	sw	a5,-164(s0)
 8d8:	fc042783          	lw	a5,-64(s0)
 8dc:	00279793          	sll	a5,a5,0x2
 8e0:	f4f42c23          	sw	a5,-168(s0)
 8e4:	f5842783          	lw	a5,-168(s0)
 8e8:	f5c42803          	lw	a6,-164(s0)
 8ec:	fcf42023          	sw	a5,-64(s0)
 8f0:	fd042223          	sw	a6,-60(s0)
 8f4:	fcc42023          	sw	a2,-64(s0)
 8f8:	fcd42223          	sw	a3,-60(s0)
 8fc:	00000793          	li	a5,0
 900:	00078513          	mv	a0,a5
 904:	0ac12403          	lw	s0,172(sp)
 908:	0a812903          	lw	s2,168(sp)
 90c:	0a412983          	lw	s3,164(sp)
 910:	0a012a03          	lw	s4,160(sp)
 914:	09c12a83          	lw	s5,156(sp)
 918:	09812b03          	lw	s6,152(sp)
 91c:	09412b83          	lw	s7,148(sp)
 920:	09012c03          	lw	s8,144(sp)
 924:	08c12c83          	lw	s9,140(sp)
 928:	08812d03          	lw	s10,136(sp)
 92c:	08412d83          	lw	s11,132(sp)
 930:	0b010113          	add	sp,sp,176
 934:	00008067          	ret
