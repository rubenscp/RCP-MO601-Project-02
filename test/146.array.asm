
test/146.array.riscv:     file format elf32-littleriscv


Disassembly of section .text:

000001d8 <_start>:
 1d8:	00500137          	lui	sp,0x500
 1dc:	00c000ef          	jal	1e8 <main>
 1e0:	200002b7          	lui	t0,0x20000
 1e4:	00100073          	ebreak

000001e8 <main>:
 1e8:	e9010113          	add	sp,sp,-368 # 4ffe90 <__BSS_END__+0x4fcd90>
 1ec:	16112623          	sw	ra,364(sp)
 1f0:	16812423          	sw	s0,360(sp)
 1f4:	17010413          	add	s0,sp,368
 1f8:	00000797          	auipc	a5,0x0
 1fc:	77878793          	add	a5,a5,1912 # 970 <uliBubbleSort+0x13c>
 200:	0007a703          	lw	a4,0(a5)
 204:	0047a783          	lw	a5,4(a5)
 208:	f2e42c23          	sw	a4,-200(s0)
 20c:	f2f42e23          	sw	a5,-196(s0)
 210:	00000797          	auipc	a5,0x0
 214:	76878793          	add	a5,a5,1896 # 978 <uliBubbleSort+0x144>
 218:	0007a703          	lw	a4,0(a5)
 21c:	0047a783          	lw	a5,4(a5)
 220:	f4e42023          	sw	a4,-192(s0)
 224:	f4f42223          	sw	a5,-188(s0)
 228:	00000797          	auipc	a5,0x0
 22c:	75878793          	add	a5,a5,1880 # 980 <uliBubbleSort+0x14c>
 230:	0007a703          	lw	a4,0(a5)
 234:	0047a783          	lw	a5,4(a5)
 238:	f4e42423          	sw	a4,-184(s0)
 23c:	f4f42623          	sw	a5,-180(s0)
 240:	1234f737          	lui	a4,0x1234f
 244:	64570713          	add	a4,a4,1605 # 1234f645 <__BSS_END__+0x1234c545>
 248:	00000793          	li	a5,0
 24c:	f4e42823          	sw	a4,-176(s0)
 250:	f4f42a23          	sw	a5,-172(s0)
 254:	00000797          	auipc	a5,0x0
 258:	73478793          	add	a5,a5,1844 # 988 <uliBubbleSort+0x154>
 25c:	0007a703          	lw	a4,0(a5)
 260:	0047a783          	lw	a5,4(a5)
 264:	f4e42c23          	sw	a4,-168(s0)
 268:	f4f42e23          	sw	a5,-164(s0)
 26c:	00000797          	auipc	a5,0x0
 270:	72478793          	add	a5,a5,1828 # 990 <uliBubbleSort+0x15c>
 274:	0007a703          	lw	a4,0(a5)
 278:	0047a783          	lw	a5,4(a5)
 27c:	f6e42023          	sw	a4,-160(s0)
 280:	f6f42223          	sw	a5,-156(s0)
 284:	00000797          	auipc	a5,0x0
 288:	71478793          	add	a5,a5,1812 # 998 <uliBubbleSort+0x164>
 28c:	0007a703          	lw	a4,0(a5)
 290:	0047a783          	lw	a5,4(a5)
 294:	f6e42423          	sw	a4,-152(s0)
 298:	f6f42623          	sw	a5,-148(s0)
 29c:	00000797          	auipc	a5,0x0
 2a0:	70478793          	add	a5,a5,1796 # 9a0 <uliBubbleSort+0x16c>
 2a4:	0007a703          	lw	a4,0(a5)
 2a8:	0047a783          	lw	a5,4(a5)
 2ac:	f6e42823          	sw	a4,-144(s0)
 2b0:	f6f42a23          	sw	a5,-140(s0)
 2b4:	00000613          	li	a2,0
 2b8:	00000693          	li	a3,0
 2bc:	f6c42c23          	sw	a2,-136(s0)
 2c0:	f6d42e23          	sw	a3,-132(s0)
 2c4:	00000797          	auipc	a5,0x0
 2c8:	6e478793          	add	a5,a5,1764 # 9a8 <uliBubbleSort+0x174>
 2cc:	0007a703          	lw	a4,0(a5)
 2d0:	0047a783          	lw	a5,4(a5)
 2d4:	f8e42023          	sw	a4,-128(s0)
 2d8:	f8f42223          	sw	a5,-124(s0)
 2dc:	00000797          	auipc	a5,0x0
 2e0:	6d478793          	add	a5,a5,1748 # 9b0 <uliBubbleSort+0x17c>
 2e4:	0007a703          	lw	a4,0(a5)
 2e8:	0047a783          	lw	a5,4(a5)
 2ec:	f8e42423          	sw	a4,-120(s0)
 2f0:	f8f42623          	sw	a5,-116(s0)
 2f4:	00000797          	auipc	a5,0x0
 2f8:	6c478793          	add	a5,a5,1732 # 9b8 <uliBubbleSort+0x184>
 2fc:	0007a703          	lw	a4,0(a5)
 300:	0047a783          	lw	a5,4(a5)
 304:	f8e42823          	sw	a4,-112(s0)
 308:	f8f42a23          	sw	a5,-108(s0)
 30c:	00000797          	auipc	a5,0x0
 310:	6b478793          	add	a5,a5,1716 # 9c0 <uliBubbleSort+0x18c>
 314:	0007a703          	lw	a4,0(a5)
 318:	0047a783          	lw	a5,4(a5)
 31c:	f8e42c23          	sw	a4,-104(s0)
 320:	f8f42e23          	sw	a5,-100(s0)
 324:	00000797          	auipc	a5,0x0
 328:	6a478793          	add	a5,a5,1700 # 9c8 <uliBubbleSort+0x194>
 32c:	0007a703          	lw	a4,0(a5)
 330:	0047a783          	lw	a5,4(a5)
 334:	fae42023          	sw	a4,-96(s0)
 338:	faf42223          	sw	a5,-92(s0)
 33c:	00000797          	auipc	a5,0x0
 340:	69478793          	add	a5,a5,1684 # 9d0 <uliBubbleSort+0x19c>
 344:	0007a703          	lw	a4,0(a5)
 348:	0047a783          	lw	a5,4(a5)
 34c:	fae42423          	sw	a4,-88(s0)
 350:	faf42623          	sw	a5,-84(s0)
 354:	00000797          	auipc	a5,0x0
 358:	68478793          	add	a5,a5,1668 # 9d8 <uliBubbleSort+0x1a4>
 35c:	0007a703          	lw	a4,0(a5)
 360:	0047a783          	lw	a5,4(a5)
 364:	fae42823          	sw	a4,-80(s0)
 368:	faf42a23          	sw	a5,-76(s0)
 36c:	00000797          	auipc	a5,0x0
 370:	63c78793          	add	a5,a5,1596 # 9a8 <uliBubbleSort+0x174>
 374:	0007a703          	lw	a4,0(a5)
 378:	0047a783          	lw	a5,4(a5)
 37c:	fae42c23          	sw	a4,-72(s0)
 380:	faf42e23          	sw	a5,-68(s0)
 384:	00000797          	auipc	a5,0x0
 388:	65c78793          	add	a5,a5,1628 # 9e0 <uliBubbleSort+0x1ac>
 38c:	0007a703          	lw	a4,0(a5)
 390:	0047a783          	lw	a5,4(a5)
 394:	fce42023          	sw	a4,-64(s0)
 398:	fcf42223          	sw	a5,-60(s0)
 39c:	00000797          	auipc	a5,0x0
 3a0:	64c78793          	add	a5,a5,1612 # 9e8 <uliBubbleSort+0x1b4>
 3a4:	0007a703          	lw	a4,0(a5)
 3a8:	0047a783          	lw	a5,4(a5)
 3ac:	fce42423          	sw	a4,-56(s0)
 3b0:	fcf42623          	sw	a5,-52(s0)
 3b4:	00000797          	auipc	a5,0x0
 3b8:	63c78793          	add	a5,a5,1596 # 9f0 <uliBubbleSort+0x1bc>
 3bc:	0007a703          	lw	a4,0(a5)
 3c0:	0047a783          	lw	a5,4(a5)
 3c4:	fce42823          	sw	a4,-48(s0)
 3c8:	fcf42a23          	sw	a5,-44(s0)
 3cc:	00500713          	li	a4,5
 3d0:	00000793          	li	a5,0
 3d4:	fce42c23          	sw	a4,-40(s0)
 3d8:	fcf42e23          	sw	a5,-36(s0)
 3dc:	00000797          	auipc	a5,0x0
 3e0:	59478793          	add	a5,a5,1428 # 970 <uliBubbleSort+0x13c>
 3e4:	0007a703          	lw	a4,0(a5)
 3e8:	0047a783          	lw	a5,4(a5)
 3ec:	e8e42823          	sw	a4,-368(s0)
 3f0:	e8f42a23          	sw	a5,-364(s0)
 3f4:	00000797          	auipc	a5,0x0
 3f8:	58478793          	add	a5,a5,1412 # 978 <uliBubbleSort+0x144>
 3fc:	0007a703          	lw	a4,0(a5)
 400:	0047a783          	lw	a5,4(a5)
 404:	e8e42c23          	sw	a4,-360(s0)
 408:	e8f42e23          	sw	a5,-356(s0)
 40c:	00000797          	auipc	a5,0x0
 410:	57478793          	add	a5,a5,1396 # 980 <uliBubbleSort+0x14c>
 414:	0007a703          	lw	a4,0(a5)
 418:	0047a783          	lw	a5,4(a5)
 41c:	eae42023          	sw	a4,-352(s0)
 420:	eaf42223          	sw	a5,-348(s0)
 424:	1234f737          	lui	a4,0x1234f
 428:	64570713          	add	a4,a4,1605 # 1234f645 <__BSS_END__+0x1234c545>
 42c:	00000793          	li	a5,0
 430:	eae42423          	sw	a4,-344(s0)
 434:	eaf42623          	sw	a5,-340(s0)
 438:	00000797          	auipc	a5,0x0
 43c:	55078793          	add	a5,a5,1360 # 988 <uliBubbleSort+0x154>
 440:	0007a703          	lw	a4,0(a5)
 444:	0047a783          	lw	a5,4(a5)
 448:	eae42823          	sw	a4,-336(s0)
 44c:	eaf42a23          	sw	a5,-332(s0)
 450:	00000797          	auipc	a5,0x0
 454:	54078793          	add	a5,a5,1344 # 990 <uliBubbleSort+0x15c>
 458:	0007a703          	lw	a4,0(a5)
 45c:	0047a783          	lw	a5,4(a5)
 460:	eae42c23          	sw	a4,-328(s0)
 464:	eaf42e23          	sw	a5,-324(s0)
 468:	00000797          	auipc	a5,0x0
 46c:	53078793          	add	a5,a5,1328 # 998 <uliBubbleSort+0x164>
 470:	0007a703          	lw	a4,0(a5)
 474:	0047a783          	lw	a5,4(a5)
 478:	ece42023          	sw	a4,-320(s0)
 47c:	ecf42223          	sw	a5,-316(s0)
 480:	00000797          	auipc	a5,0x0
 484:	52078793          	add	a5,a5,1312 # 9a0 <uliBubbleSort+0x16c>
 488:	0007a703          	lw	a4,0(a5)
 48c:	0047a783          	lw	a5,4(a5)
 490:	ece42423          	sw	a4,-312(s0)
 494:	ecf42623          	sw	a5,-308(s0)
 498:	ecc42823          	sw	a2,-304(s0)
 49c:	ecd42a23          	sw	a3,-300(s0)
 4a0:	00000797          	auipc	a5,0x0
 4a4:	50878793          	add	a5,a5,1288 # 9a8 <uliBubbleSort+0x174>
 4a8:	0007a703          	lw	a4,0(a5)
 4ac:	0047a783          	lw	a5,4(a5)
 4b0:	ece42c23          	sw	a4,-296(s0)
 4b4:	ecf42e23          	sw	a5,-292(s0)
 4b8:	00000797          	auipc	a5,0x0
 4bc:	4f878793          	add	a5,a5,1272 # 9b0 <uliBubbleSort+0x17c>
 4c0:	0007a703          	lw	a4,0(a5)
 4c4:	0047a783          	lw	a5,4(a5)
 4c8:	eee42023          	sw	a4,-288(s0)
 4cc:	eef42223          	sw	a5,-284(s0)
 4d0:	00000797          	auipc	a5,0x0
 4d4:	4e878793          	add	a5,a5,1256 # 9b8 <uliBubbleSort+0x184>
 4d8:	0007a703          	lw	a4,0(a5)
 4dc:	0047a783          	lw	a5,4(a5)
 4e0:	eee42423          	sw	a4,-280(s0)
 4e4:	eef42623          	sw	a5,-276(s0)
 4e8:	00000797          	auipc	a5,0x0
 4ec:	4d878793          	add	a5,a5,1240 # 9c0 <uliBubbleSort+0x18c>
 4f0:	0007a703          	lw	a4,0(a5)
 4f4:	0047a783          	lw	a5,4(a5)
 4f8:	eee42823          	sw	a4,-272(s0)
 4fc:	eef42a23          	sw	a5,-268(s0)
 500:	00000797          	auipc	a5,0x0
 504:	4c878793          	add	a5,a5,1224 # 9c8 <uliBubbleSort+0x194>
 508:	0007a703          	lw	a4,0(a5)
 50c:	0047a783          	lw	a5,4(a5)
 510:	eee42c23          	sw	a4,-264(s0)
 514:	eef42e23          	sw	a5,-260(s0)
 518:	00000797          	auipc	a5,0x0
 51c:	4b878793          	add	a5,a5,1208 # 9d0 <uliBubbleSort+0x19c>
 520:	0007a703          	lw	a4,0(a5)
 524:	0047a783          	lw	a5,4(a5)
 528:	f0e42023          	sw	a4,-256(s0)
 52c:	f0f42223          	sw	a5,-252(s0)
 530:	00000797          	auipc	a5,0x0
 534:	4a878793          	add	a5,a5,1192 # 9d8 <uliBubbleSort+0x1a4>
 538:	0007a703          	lw	a4,0(a5)
 53c:	0047a783          	lw	a5,4(a5)
 540:	f0e42423          	sw	a4,-248(s0)
 544:	f0f42623          	sw	a5,-244(s0)
 548:	00000797          	auipc	a5,0x0
 54c:	46078793          	add	a5,a5,1120 # 9a8 <uliBubbleSort+0x174>
 550:	0007a703          	lw	a4,0(a5)
 554:	0047a783          	lw	a5,4(a5)
 558:	f0e42823          	sw	a4,-240(s0)
 55c:	f0f42a23          	sw	a5,-236(s0)
 560:	00000797          	auipc	a5,0x0
 564:	48078793          	add	a5,a5,1152 # 9e0 <uliBubbleSort+0x1ac>
 568:	0007a703          	lw	a4,0(a5)
 56c:	0047a783          	lw	a5,4(a5)
 570:	f0e42c23          	sw	a4,-232(s0)
 574:	f0f42e23          	sw	a5,-228(s0)
 578:	00000797          	auipc	a5,0x0
 57c:	47078793          	add	a5,a5,1136 # 9e8 <uliBubbleSort+0x1b4>
 580:	0007a703          	lw	a4,0(a5)
 584:	0047a783          	lw	a5,4(a5)
 588:	f2e42023          	sw	a4,-224(s0)
 58c:	f2f42223          	sw	a5,-220(s0)
 590:	00000797          	auipc	a5,0x0
 594:	46078793          	add	a5,a5,1120 # 9f0 <uliBubbleSort+0x1bc>
 598:	0007a703          	lw	a4,0(a5)
 59c:	0047a783          	lw	a5,4(a5)
 5a0:	f2e42423          	sw	a4,-216(s0)
 5a4:	f2f42623          	sw	a5,-212(s0)
 5a8:	00500713          	li	a4,5
 5ac:	00000793          	li	a5,0
 5b0:	f2e42823          	sw	a4,-208(s0)
 5b4:	f2f42a23          	sw	a5,-204(s0)
 5b8:	f3840793          	add	a5,s0,-200
 5bc:	01500593          	li	a1,21
 5c0:	00078513          	mv	a0,a5
 5c4:	134000ef          	jal	6f8 <sliBubbleSort>
 5c8:	e9040793          	add	a5,s0,-368
 5cc:	01500593          	li	a1,21
 5d0:	00078513          	mv	a0,a5
 5d4:	260000ef          	jal	834 <uliBubbleSort>
 5d8:	fe042423          	sw	zero,-24(s0)
 5dc:	fe042623          	sw	zero,-20(s0)
 5e0:	0700006f          	j	650 <main+0x468>
 5e4:	fec42783          	lw	a5,-20(s0)
 5e8:	00379793          	sll	a5,a5,0x3
 5ec:	ff078793          	add	a5,a5,-16
 5f0:	008787b3          	add	a5,a5,s0
 5f4:	f487a603          	lw	a2,-184(a5)
 5f8:	f4c7a683          	lw	a3,-180(a5)
 5fc:	fec42783          	lw	a5,-20(s0)
 600:	00178793          	add	a5,a5,1
 604:	00379793          	sll	a5,a5,0x3
 608:	ff078793          	add	a5,a5,-16
 60c:	008787b3          	add	a5,a5,s0
 610:	f487a703          	lw	a4,-184(a5)
 614:	f4c7a783          	lw	a5,-180(a5)
 618:	00068513          	mv	a0,a3
 61c:	00078593          	mv	a1,a5
 620:	00a5ce63          	blt	a1,a0,63c <main+0x454>
 624:	00068513          	mv	a0,a3
 628:	00078593          	mv	a1,a5
 62c:	00b51c63          	bne	a0,a1,644 <main+0x45c>
 630:	00060693          	mv	a3,a2
 634:	00070793          	mv	a5,a4
 638:	00d7f663          	bgeu	a5,a3,644 <main+0x45c>
 63c:	00100793          	li	a5,1
 640:	fef42423          	sw	a5,-24(s0)
 644:	fec42783          	lw	a5,-20(s0)
 648:	00178793          	add	a5,a5,1
 64c:	fef42623          	sw	a5,-20(s0)
 650:	fec42703          	lw	a4,-20(s0)
 654:	01300793          	li	a5,19
 658:	f8e7d6e3          	bge	a5,a4,5e4 <main+0x3fc>
 65c:	fe042223          	sw	zero,-28(s0)
 660:	fe042623          	sw	zero,-20(s0)
 664:	0700006f          	j	6d4 <main+0x4ec>
 668:	fec42783          	lw	a5,-20(s0)
 66c:	00379793          	sll	a5,a5,0x3
 670:	ff078793          	add	a5,a5,-16
 674:	008787b3          	add	a5,a5,s0
 678:	ea07a603          	lw	a2,-352(a5)
 67c:	ea47a683          	lw	a3,-348(a5)
 680:	fec42783          	lw	a5,-20(s0)
 684:	00178793          	add	a5,a5,1
 688:	00379793          	sll	a5,a5,0x3
 68c:	ff078793          	add	a5,a5,-16
 690:	008787b3          	add	a5,a5,s0
 694:	ea07a703          	lw	a4,-352(a5)
 698:	ea47a783          	lw	a5,-348(a5)
 69c:	00068513          	mv	a0,a3
 6a0:	00078593          	mv	a1,a5
 6a4:	00a5ee63          	bltu	a1,a0,6c0 <main+0x4d8>
 6a8:	00068513          	mv	a0,a3
 6ac:	00078593          	mv	a1,a5
 6b0:	00b51c63          	bne	a0,a1,6c8 <main+0x4e0>
 6b4:	00060693          	mv	a3,a2
 6b8:	00070793          	mv	a5,a4
 6bc:	00d7f663          	bgeu	a5,a3,6c8 <main+0x4e0>
 6c0:	00100793          	li	a5,1
 6c4:	fef42223          	sw	a5,-28(s0)
 6c8:	fec42783          	lw	a5,-20(s0)
 6cc:	00178793          	add	a5,a5,1
 6d0:	fef42623          	sw	a5,-20(s0)
 6d4:	fec42703          	lw	a4,-20(s0)
 6d8:	01300793          	li	a5,19
 6dc:	f8e7d6e3          	bge	a5,a4,668 <main+0x480>
 6e0:	00000793          	li	a5,0
 6e4:	00078513          	mv	a0,a5
 6e8:	16c12083          	lw	ra,364(sp)
 6ec:	16812403          	lw	s0,360(sp)
 6f0:	17010113          	add	sp,sp,368
 6f4:	00008067          	ret

000006f8 <sliBubbleSort>:
 6f8:	fd010113          	add	sp,sp,-48
 6fc:	02812623          	sw	s0,44(sp)
 700:	03010413          	add	s0,sp,48
 704:	fca42e23          	sw	a0,-36(s0)
 708:	fcb42c23          	sw	a1,-40(s0)
 70c:	fd842783          	lw	a5,-40(s0)
 710:	fff78793          	add	a5,a5,-1
 714:	fef42623          	sw	a5,-20(s0)
 718:	1000006f          	j	818 <sliBubbleSort+0x120>
 71c:	fe042423          	sw	zero,-24(s0)
 720:	0e00006f          	j	800 <sliBubbleSort+0x108>
 724:	fe842783          	lw	a5,-24(s0)
 728:	00178793          	add	a5,a5,1
 72c:	00379793          	sll	a5,a5,0x3
 730:	fdc42703          	lw	a4,-36(s0)
 734:	00f707b3          	add	a5,a4,a5
 738:	0007a703          	lw	a4,0(a5)
 73c:	0047a783          	lw	a5,4(a5)
 740:	fe842683          	lw	a3,-24(s0)
 744:	00369693          	sll	a3,a3,0x3
 748:	fdc42603          	lw	a2,-36(s0)
 74c:	00d606b3          	add	a3,a2,a3
 750:	0006a603          	lw	a2,0(a3)
 754:	0046a683          	lw	a3,4(a3)
 758:	00068513          	mv	a0,a3
 75c:	00078593          	mv	a1,a5
 760:	00a5ce63          	blt	a1,a0,77c <sliBubbleSort+0x84>
 764:	00068513          	mv	a0,a3
 768:	00078593          	mv	a1,a5
 76c:	08b51463          	bne	a0,a1,7f4 <sliBubbleSort+0xfc>
 770:	00060693          	mv	a3,a2
 774:	00070793          	mv	a5,a4
 778:	06d7fe63          	bgeu	a5,a3,7f4 <sliBubbleSort+0xfc>
 77c:	fe842783          	lw	a5,-24(s0)
 780:	00178793          	add	a5,a5,1
 784:	00379793          	sll	a5,a5,0x3
 788:	fdc42703          	lw	a4,-36(s0)
 78c:	00f707b3          	add	a5,a4,a5
 790:	0007a703          	lw	a4,0(a5)
 794:	0047a783          	lw	a5,4(a5)
 798:	fee42023          	sw	a4,-32(s0)
 79c:	fef42223          	sw	a5,-28(s0)
 7a0:	fe842783          	lw	a5,-24(s0)
 7a4:	00379793          	sll	a5,a5,0x3
 7a8:	fdc42703          	lw	a4,-36(s0)
 7ac:	00f707b3          	add	a5,a4,a5
 7b0:	fe842703          	lw	a4,-24(s0)
 7b4:	00170713          	add	a4,a4,1
 7b8:	00371713          	sll	a4,a4,0x3
 7bc:	fdc42683          	lw	a3,-36(s0)
 7c0:	00e686b3          	add	a3,a3,a4
 7c4:	0007a703          	lw	a4,0(a5)
 7c8:	0047a783          	lw	a5,4(a5)
 7cc:	00e6a023          	sw	a4,0(a3)
 7d0:	00f6a223          	sw	a5,4(a3)
 7d4:	fe842783          	lw	a5,-24(s0)
 7d8:	00379793          	sll	a5,a5,0x3
 7dc:	fdc42703          	lw	a4,-36(s0)
 7e0:	00f706b3          	add	a3,a4,a5
 7e4:	fe042703          	lw	a4,-32(s0)
 7e8:	fe442783          	lw	a5,-28(s0)
 7ec:	00e6a023          	sw	a4,0(a3)
 7f0:	00f6a223          	sw	a5,4(a3)
 7f4:	fe842783          	lw	a5,-24(s0)
 7f8:	00178793          	add	a5,a5,1
 7fc:	fef42423          	sw	a5,-24(s0)
 800:	fe842703          	lw	a4,-24(s0)
 804:	fec42783          	lw	a5,-20(s0)
 808:	f0f74ee3          	blt	a4,a5,724 <sliBubbleSort+0x2c>
 80c:	fec42783          	lw	a5,-20(s0)
 810:	fff78793          	add	a5,a5,-1
 814:	fef42623          	sw	a5,-20(s0)
 818:	fec42783          	lw	a5,-20(s0)
 81c:	f007d0e3          	bgez	a5,71c <sliBubbleSort+0x24>
 820:	00000013          	nop
 824:	00000013          	nop
 828:	02c12403          	lw	s0,44(sp)
 82c:	03010113          	add	sp,sp,48
 830:	00008067          	ret

00000834 <uliBubbleSort>:
 834:	fd010113          	add	sp,sp,-48
 838:	02812623          	sw	s0,44(sp)
 83c:	03010413          	add	s0,sp,48
 840:	fca42e23          	sw	a0,-36(s0)
 844:	fcb42c23          	sw	a1,-40(s0)
 848:	fd842783          	lw	a5,-40(s0)
 84c:	fff78793          	add	a5,a5,-1
 850:	fef42623          	sw	a5,-20(s0)
 854:	1000006f          	j	954 <uliBubbleSort+0x120>
 858:	fe042423          	sw	zero,-24(s0)
 85c:	0e00006f          	j	93c <uliBubbleSort+0x108>
 860:	fe842783          	lw	a5,-24(s0)
 864:	00178793          	add	a5,a5,1
 868:	00379793          	sll	a5,a5,0x3
 86c:	fdc42703          	lw	a4,-36(s0)
 870:	00f707b3          	add	a5,a4,a5
 874:	0007a703          	lw	a4,0(a5)
 878:	0047a783          	lw	a5,4(a5)
 87c:	fe842683          	lw	a3,-24(s0)
 880:	00369693          	sll	a3,a3,0x3
 884:	fdc42603          	lw	a2,-36(s0)
 888:	00d606b3          	add	a3,a2,a3
 88c:	0006a603          	lw	a2,0(a3)
 890:	0046a683          	lw	a3,4(a3)
 894:	00068513          	mv	a0,a3
 898:	00078593          	mv	a1,a5
 89c:	00a5ee63          	bltu	a1,a0,8b8 <uliBubbleSort+0x84>
 8a0:	00068513          	mv	a0,a3
 8a4:	00078593          	mv	a1,a5
 8a8:	08b51463          	bne	a0,a1,930 <uliBubbleSort+0xfc>
 8ac:	00060693          	mv	a3,a2
 8b0:	00070793          	mv	a5,a4
 8b4:	06d7fe63          	bgeu	a5,a3,930 <uliBubbleSort+0xfc>
 8b8:	fe842783          	lw	a5,-24(s0)
 8bc:	00178793          	add	a5,a5,1
 8c0:	00379793          	sll	a5,a5,0x3
 8c4:	fdc42703          	lw	a4,-36(s0)
 8c8:	00f707b3          	add	a5,a4,a5
 8cc:	0007a703          	lw	a4,0(a5)
 8d0:	0047a783          	lw	a5,4(a5)
 8d4:	fee42023          	sw	a4,-32(s0)
 8d8:	fef42223          	sw	a5,-28(s0)
 8dc:	fe842783          	lw	a5,-24(s0)
 8e0:	00379793          	sll	a5,a5,0x3
 8e4:	fdc42703          	lw	a4,-36(s0)
 8e8:	00f707b3          	add	a5,a4,a5
 8ec:	fe842703          	lw	a4,-24(s0)
 8f0:	00170713          	add	a4,a4,1
 8f4:	00371713          	sll	a4,a4,0x3
 8f8:	fdc42683          	lw	a3,-36(s0)
 8fc:	00e686b3          	add	a3,a3,a4
 900:	0007a703          	lw	a4,0(a5)
 904:	0047a783          	lw	a5,4(a5)
 908:	00e6a023          	sw	a4,0(a3)
 90c:	00f6a223          	sw	a5,4(a3)
 910:	fe842783          	lw	a5,-24(s0)
 914:	00379793          	sll	a5,a5,0x3
 918:	fdc42703          	lw	a4,-36(s0)
 91c:	00f706b3          	add	a3,a4,a5
 920:	fe042703          	lw	a4,-32(s0)
 924:	fe442783          	lw	a5,-28(s0)
 928:	00e6a023          	sw	a4,0(a3)
 92c:	00f6a223          	sw	a5,4(a3)
 930:	fe842783          	lw	a5,-24(s0)
 934:	00178793          	add	a5,a5,1
 938:	fef42423          	sw	a5,-24(s0)
 93c:	fe842703          	lw	a4,-24(s0)
 940:	fec42783          	lw	a5,-20(s0)
 944:	f0f74ee3          	blt	a4,a5,860 <uliBubbleSort+0x2c>
 948:	fec42783          	lw	a5,-20(s0)
 94c:	fff78793          	add	a5,a5,-1
 950:	fef42623          	sw	a5,-20(s0)
 954:	fec42783          	lw	a5,-20(s0)
 958:	f007d0e3          	bgez	a5,858 <uliBubbleSort+0x24>
 95c:	00000013          	nop
 960:	00000013          	nop
 964:	02c12403          	lw	s0,44(sp)
 968:	03010113          	add	sp,sp,48
 96c:	00008067          	ret
