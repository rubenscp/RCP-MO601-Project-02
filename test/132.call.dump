
test/132.call.riscv:     file format elf32-littleriscv


Disassembly of section .text:

000001d8 <_start>:
 1d8:	00500137          	lui	sp,0x500
 1dc:	00c000ef          	jal	1e8 <main>
 1e0:	200002b7          	lui	t0,0x20000
 1e4:	00100073          	ebreak

000001e8 <main>:
 1e8:	fe010113          	add	sp,sp,-32 # 4fffe0 <__BSS_END__+0x4fced8>
 1ec:	00112e23          	sw	ra,28(sp)
 1f0:	00812c23          	sw	s0,24(sp)
 1f4:	02010413          	add	s0,sp,32
 1f8:	fe0407a3          	sb	zero,-17(s0)
 1fc:	fff00513          	li	a0,-1
 200:	028000ef          	jal	228 <funcA>
 204:	00050793          	mv	a5,a0
 208:	fef407a3          	sb	a5,-17(s0)
 20c:	fe0407a3          	sb	zero,-17(s0)
 210:	00000793          	li	a5,0
 214:	00078513          	mv	a0,a5
 218:	01c12083          	lw	ra,28(sp)
 21c:	01812403          	lw	s0,24(sp)
 220:	02010113          	add	sp,sp,32
 224:	00008067          	ret

00000228 <funcA>:
 228:	fd010113          	add	sp,sp,-48
 22c:	02112623          	sw	ra,44(sp)
 230:	02812423          	sw	s0,40(sp)
 234:	03010413          	add	s0,sp,48
 238:	00050793          	mv	a5,a0
 23c:	fcf40fa3          	sb	a5,-33(s0)
 240:	ffe00793          	li	a5,-2
 244:	fef42623          	sw	a5,-20(s0)
 248:	fdf40783          	lb	a5,-33(s0)
 24c:	00078513          	mv	a0,a5
 250:	070000ef          	jal	2c0 <funcB>
 254:	00003797          	auipc	a5,0x3
 258:	eac78793          	add	a5,a5,-340 # 3100 <count>
 25c:	0007a703          	lw	a4,0(a5)
 260:	0047a783          	lw	a5,4(a5)
 264:	00100513          	li	a0,1
 268:	00000593          	li	a1,0
 26c:	00a70633          	add	a2,a4,a0
 270:	00060813          	mv	a6,a2
 274:	00e83833          	sltu	a6,a6,a4
 278:	00b786b3          	add	a3,a5,a1
 27c:	00d807b3          	add	a5,a6,a3
 280:	00078693          	mv	a3,a5
 284:	00060713          	mv	a4,a2
 288:	00068793          	mv	a5,a3
 28c:	00003697          	auipc	a3,0x3
 290:	e7468693          	add	a3,a3,-396 # 3100 <count>
 294:	00e6a023          	sw	a4,0(a3)
 298:	00f6a223          	sw	a5,4(a3)
 29c:	fec42783          	lw	a5,-20(s0)
 2a0:	00178793          	add	a5,a5,1
 2a4:	fef42623          	sw	a5,-20(s0)
 2a8:	fdf40783          	lb	a5,-33(s0)
 2ac:	00078513          	mv	a0,a5
 2b0:	02c12083          	lw	ra,44(sp)
 2b4:	02812403          	lw	s0,40(sp)
 2b8:	03010113          	add	sp,sp,48
 2bc:	00008067          	ret

000002c0 <funcB>:
 2c0:	fd010113          	add	sp,sp,-48
 2c4:	02112623          	sw	ra,44(sp)
 2c8:	02812423          	sw	s0,40(sp)
 2cc:	03010413          	add	s0,sp,48
 2d0:	00050793          	mv	a5,a0
 2d4:	fcf40fa3          	sb	a5,-33(s0)
 2d8:	fe042623          	sw	zero,-20(s0)
 2dc:	fdf40783          	lb	a5,-33(s0)
 2e0:	00078513          	mv	a0,a5
 2e4:	070000ef          	jal	354 <funcC>
 2e8:	00003797          	auipc	a5,0x3
 2ec:	e1878793          	add	a5,a5,-488 # 3100 <count>
 2f0:	0007a703          	lw	a4,0(a5)
 2f4:	0047a783          	lw	a5,4(a5)
 2f8:	00100513          	li	a0,1
 2fc:	00000593          	li	a1,0
 300:	00a70633          	add	a2,a4,a0
 304:	00060813          	mv	a6,a2
 308:	00e83833          	sltu	a6,a6,a4
 30c:	00b786b3          	add	a3,a5,a1
 310:	00d807b3          	add	a5,a6,a3
 314:	00078693          	mv	a3,a5
 318:	00060713          	mv	a4,a2
 31c:	00068793          	mv	a5,a3
 320:	00003697          	auipc	a3,0x3
 324:	de068693          	add	a3,a3,-544 # 3100 <count>
 328:	00e6a023          	sw	a4,0(a3)
 32c:	00f6a223          	sw	a5,4(a3)
 330:	fec42783          	lw	a5,-20(s0)
 334:	00178793          	add	a5,a5,1
 338:	fef42623          	sw	a5,-20(s0)
 33c:	fdf40783          	lb	a5,-33(s0)
 340:	00078513          	mv	a0,a5
 344:	02c12083          	lw	ra,44(sp)
 348:	02812403          	lw	s0,40(sp)
 34c:	03010113          	add	sp,sp,48
 350:	00008067          	ret

00000354 <funcC>:
 354:	fd010113          	add	sp,sp,-48
 358:	02112623          	sw	ra,44(sp)
 35c:	02812423          	sw	s0,40(sp)
 360:	03010413          	add	s0,sp,48
 364:	00050793          	mv	a5,a0
 368:	fcf40fa3          	sb	a5,-33(s0)
 36c:	fff00793          	li	a5,-1
 370:	fef41723          	sh	a5,-18(s0)
 374:	fdf40783          	lb	a5,-33(s0)
 378:	00078513          	mv	a0,a5
 37c:	080000ef          	jal	3fc <funcD>
 380:	00003797          	auipc	a5,0x3
 384:	d8078793          	add	a5,a5,-640 # 3100 <count>
 388:	0007a703          	lw	a4,0(a5)
 38c:	0047a783          	lw	a5,4(a5)
 390:	00100513          	li	a0,1
 394:	00000593          	li	a1,0
 398:	00a70633          	add	a2,a4,a0
 39c:	00060813          	mv	a6,a2
 3a0:	00e83833          	sltu	a6,a6,a4
 3a4:	00b786b3          	add	a3,a5,a1
 3a8:	00d807b3          	add	a5,a6,a3
 3ac:	00078693          	mv	a3,a5
 3b0:	00060713          	mv	a4,a2
 3b4:	00068793          	mv	a5,a3
 3b8:	00003697          	auipc	a3,0x3
 3bc:	d4868693          	add	a3,a3,-696 # 3100 <count>
 3c0:	00e6a023          	sw	a4,0(a3)
 3c4:	00f6a223          	sw	a5,4(a3)
 3c8:	fee41783          	lh	a5,-18(s0)
 3cc:	01079793          	sll	a5,a5,0x10
 3d0:	0107d793          	srl	a5,a5,0x10
 3d4:	00178793          	add	a5,a5,1
 3d8:	01079793          	sll	a5,a5,0x10
 3dc:	0107d793          	srl	a5,a5,0x10
 3e0:	fef41723          	sh	a5,-18(s0)
 3e4:	fdf40783          	lb	a5,-33(s0)
 3e8:	00078513          	mv	a0,a5
 3ec:	02c12083          	lw	ra,44(sp)
 3f0:	02812403          	lw	s0,40(sp)
 3f4:	03010113          	add	sp,sp,48
 3f8:	00008067          	ret

000003fc <funcD>:
 3fc:	fd010113          	add	sp,sp,-48
 400:	02112623          	sw	ra,44(sp)
 404:	02812423          	sw	s0,40(sp)
 408:	03010413          	add	s0,sp,48
 40c:	00050793          	mv	a5,a0
 410:	fcf40fa3          	sb	a5,-33(s0)
 414:	00900793          	li	a5,9
 418:	fef41723          	sh	a5,-18(s0)
 41c:	fdf40783          	lb	a5,-33(s0)
 420:	00078513          	mv	a0,a5
 424:	070000ef          	jal	494 <funcE>
 428:	00003797          	auipc	a5,0x3
 42c:	cd878793          	add	a5,a5,-808 # 3100 <count>
 430:	0007a703          	lw	a4,0(a5)
 434:	0047a783          	lw	a5,4(a5)
 438:	00100513          	li	a0,1
 43c:	00000593          	li	a1,0
 440:	00a70633          	add	a2,a4,a0
 444:	00060813          	mv	a6,a2
 448:	00e83833          	sltu	a6,a6,a4
 44c:	00b786b3          	add	a3,a5,a1
 450:	00d807b3          	add	a5,a6,a3
 454:	00078693          	mv	a3,a5
 458:	00060713          	mv	a4,a2
 45c:	00068793          	mv	a5,a3
 460:	00003697          	auipc	a3,0x3
 464:	ca068693          	add	a3,a3,-864 # 3100 <count>
 468:	00e6a023          	sw	a4,0(a3)
 46c:	00f6a223          	sw	a5,4(a3)
 470:	fee45783          	lhu	a5,-18(s0)
 474:	00178793          	add	a5,a5,1
 478:	fef41723          	sh	a5,-18(s0)
 47c:	fdf40783          	lb	a5,-33(s0)
 480:	00078513          	mv	a0,a5
 484:	02c12083          	lw	ra,44(sp)
 488:	02812403          	lw	s0,40(sp)
 48c:	03010113          	add	sp,sp,48
 490:	00008067          	ret

00000494 <funcE>:
 494:	fd010113          	add	sp,sp,-48
 498:	02112623          	sw	ra,44(sp)
 49c:	02812423          	sw	s0,40(sp)
 4a0:	03010413          	add	s0,sp,48
 4a4:	00050793          	mv	a5,a0
 4a8:	fcf40fa3          	sb	a5,-33(s0)
 4ac:	fff00793          	li	a5,-1
 4b0:	fef42623          	sw	a5,-20(s0)
 4b4:	fdf40783          	lb	a5,-33(s0)
 4b8:	00078513          	mv	a0,a5
 4bc:	070000ef          	jal	52c <funcF>
 4c0:	00003797          	auipc	a5,0x3
 4c4:	c4078793          	add	a5,a5,-960 # 3100 <count>
 4c8:	0007a703          	lw	a4,0(a5)
 4cc:	0047a783          	lw	a5,4(a5)
 4d0:	00100513          	li	a0,1
 4d4:	00000593          	li	a1,0
 4d8:	00a70633          	add	a2,a4,a0
 4dc:	00060813          	mv	a6,a2
 4e0:	00e83833          	sltu	a6,a6,a4
 4e4:	00b786b3          	add	a3,a5,a1
 4e8:	00d807b3          	add	a5,a6,a3
 4ec:	00078693          	mv	a3,a5
 4f0:	00060713          	mv	a4,a2
 4f4:	00068793          	mv	a5,a3
 4f8:	00003697          	auipc	a3,0x3
 4fc:	c0868693          	add	a3,a3,-1016 # 3100 <count>
 500:	00e6a023          	sw	a4,0(a3)
 504:	00f6a223          	sw	a5,4(a3)
 508:	fec42783          	lw	a5,-20(s0)
 50c:	00178793          	add	a5,a5,1
 510:	fef42623          	sw	a5,-20(s0)
 514:	fdf40783          	lb	a5,-33(s0)
 518:	00078513          	mv	a0,a5
 51c:	02c12083          	lw	ra,44(sp)
 520:	02812403          	lw	s0,40(sp)
 524:	03010113          	add	sp,sp,48
 528:	00008067          	ret

0000052c <funcF>:
 52c:	fd010113          	add	sp,sp,-48
 530:	02112623          	sw	ra,44(sp)
 534:	02812423          	sw	s0,40(sp)
 538:	03010413          	add	s0,sp,48
 53c:	00050793          	mv	a5,a0
 540:	fcf40fa3          	sb	a5,-33(s0)
 544:	00e00793          	li	a5,14
 548:	fef42623          	sw	a5,-20(s0)
 54c:	fdf40783          	lb	a5,-33(s0)
 550:	00078513          	mv	a0,a5
 554:	070000ef          	jal	5c4 <funcG>
 558:	00003797          	auipc	a5,0x3
 55c:	ba878793          	add	a5,a5,-1112 # 3100 <count>
 560:	0007a703          	lw	a4,0(a5)
 564:	0047a783          	lw	a5,4(a5)
 568:	00100513          	li	a0,1
 56c:	00000593          	li	a1,0
 570:	00a70633          	add	a2,a4,a0
 574:	00060813          	mv	a6,a2
 578:	00e83833          	sltu	a6,a6,a4
 57c:	00b786b3          	add	a3,a5,a1
 580:	00d807b3          	add	a5,a6,a3
 584:	00078693          	mv	a3,a5
 588:	00060713          	mv	a4,a2
 58c:	00068793          	mv	a5,a3
 590:	00003697          	auipc	a3,0x3
 594:	b7068693          	add	a3,a3,-1168 # 3100 <count>
 598:	00e6a023          	sw	a4,0(a3)
 59c:	00f6a223          	sw	a5,4(a3)
 5a0:	fec42783          	lw	a5,-20(s0)
 5a4:	00178793          	add	a5,a5,1
 5a8:	fef42623          	sw	a5,-20(s0)
 5ac:	fdf40783          	lb	a5,-33(s0)
 5b0:	00078513          	mv	a0,a5
 5b4:	02c12083          	lw	ra,44(sp)
 5b8:	02812403          	lw	s0,40(sp)
 5bc:	03010113          	add	sp,sp,48
 5c0:	00008067          	ret

000005c4 <funcG>:
 5c4:	fd010113          	add	sp,sp,-48
 5c8:	02112623          	sw	ra,44(sp)
 5cc:	02812423          	sw	s0,40(sp)
 5d0:	03010413          	add	s0,sp,48
 5d4:	00050793          	mv	a5,a0
 5d8:	fcf40fa3          	sb	a5,-33(s0)
 5dc:	ffe00713          	li	a4,-2
 5e0:	fff00793          	li	a5,-1
 5e4:	fee42423          	sw	a4,-24(s0)
 5e8:	fef42623          	sw	a5,-20(s0)
 5ec:	fdf40783          	lb	a5,-33(s0)
 5f0:	00078513          	mv	a0,a5
 5f4:	094000ef          	jal	688 <funcH>
 5f8:	00003797          	auipc	a5,0x3
 5fc:	b0878793          	add	a5,a5,-1272 # 3100 <count>
 600:	0007a703          	lw	a4,0(a5)
 604:	0047a783          	lw	a5,4(a5)
 608:	00100513          	li	a0,1
 60c:	00000593          	li	a1,0
 610:	00a70633          	add	a2,a4,a0
 614:	00060813          	mv	a6,a2
 618:	00e83833          	sltu	a6,a6,a4
 61c:	00b786b3          	add	a3,a5,a1
 620:	00d807b3          	add	a5,a6,a3
 624:	00078693          	mv	a3,a5
 628:	00060713          	mv	a4,a2
 62c:	00068793          	mv	a5,a3
 630:	00003697          	auipc	a3,0x3
 634:	ad068693          	add	a3,a3,-1328 # 3100 <count>
 638:	00e6a023          	sw	a4,0(a3)
 63c:	00f6a223          	sw	a5,4(a3)
 640:	fe842603          	lw	a2,-24(s0)
 644:	fec42683          	lw	a3,-20(s0)
 648:	00100513          	li	a0,1
 64c:	00000593          	li	a1,0
 650:	00a60733          	add	a4,a2,a0
 654:	00070813          	mv	a6,a4
 658:	00c83833          	sltu	a6,a6,a2
 65c:	00b687b3          	add	a5,a3,a1
 660:	00f806b3          	add	a3,a6,a5
 664:	00068793          	mv	a5,a3
 668:	fee42423          	sw	a4,-24(s0)
 66c:	fef42623          	sw	a5,-20(s0)
 670:	fdf40783          	lb	a5,-33(s0)
 674:	00078513          	mv	a0,a5
 678:	02c12083          	lw	ra,44(sp)
 67c:	02812403          	lw	s0,40(sp)
 680:	03010113          	add	sp,sp,48
 684:	00008067          	ret

00000688 <funcH>:
 688:	fd010113          	add	sp,sp,-48
 68c:	02812623          	sw	s0,44(sp)
 690:	03010413          	add	s0,sp,48
 694:	00050793          	mv	a5,a0
 698:	fcf40fa3          	sb	a5,-33(s0)
 69c:	00100713          	li	a4,1
 6a0:	00000793          	li	a5,0
 6a4:	fee42423          	sw	a4,-24(s0)
 6a8:	fef42623          	sw	a5,-20(s0)
 6ac:	00003797          	auipc	a5,0x3
 6b0:	a5478793          	add	a5,a5,-1452 # 3100 <count>
 6b4:	0007a703          	lw	a4,0(a5)
 6b8:	0047a783          	lw	a5,4(a5)
 6bc:	00100513          	li	a0,1
 6c0:	00000593          	li	a1,0
 6c4:	00a70633          	add	a2,a4,a0
 6c8:	00060813          	mv	a6,a2
 6cc:	00e83833          	sltu	a6,a6,a4
 6d0:	00b786b3          	add	a3,a5,a1
 6d4:	00d807b3          	add	a5,a6,a3
 6d8:	00078693          	mv	a3,a5
 6dc:	00060713          	mv	a4,a2
 6e0:	00068793          	mv	a5,a3
 6e4:	00003697          	auipc	a3,0x3
 6e8:	a1c68693          	add	a3,a3,-1508 # 3100 <count>
 6ec:	00e6a023          	sw	a4,0(a3)
 6f0:	00f6a223          	sw	a5,4(a3)
 6f4:	fe842603          	lw	a2,-24(s0)
 6f8:	fec42683          	lw	a3,-20(s0)
 6fc:	00100513          	li	a0,1
 700:	00000593          	li	a1,0
 704:	00a60733          	add	a4,a2,a0
 708:	00070813          	mv	a6,a4
 70c:	00c83833          	sltu	a6,a6,a2
 710:	00b687b3          	add	a5,a3,a1
 714:	00f806b3          	add	a3,a6,a5
 718:	00068793          	mv	a5,a3
 71c:	fee42423          	sw	a4,-24(s0)
 720:	fef42623          	sw	a5,-20(s0)
 724:	fdf40783          	lb	a5,-33(s0)
 728:	00078513          	mv	a0,a5
 72c:	02c12403          	lw	s0,44(sp)
 730:	03010113          	add	sp,sp,48
 734:	00008067          	ret
