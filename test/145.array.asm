
test/145.array.riscv:     file format elf32-littleriscv


Disassembly of section .text:

000001d8 <_start>:
 1d8:	00500137          	lui	sp,0x500
 1dc:	00c000ef          	jal	1e8 <main>
 1e0:	200002b7          	lui	t0,0x20000
 1e4:	00100073          	ebreak

000001e8 <main>:
 1e8:	f3010113          	add	sp,sp,-208 # 4fff30 <__BSS_END__+0x4fce30>
 1ec:	0c112623          	sw	ra,204(sp)
 1f0:	0c812423          	sw	s0,200(sp)
 1f4:	0d010413          	add	s0,sp,208
 1f8:	f234f7b7          	lui	a5,0xf234f
 1fc:	5df78793          	add	a5,a5,1503 # f234f5df <memory_size+0xd234f5df>
 200:	f8f42823          	sw	a5,-112(s0)
 204:	235127b7          	lui	a5,0x23512
 208:	44478793          	add	a5,a5,1092 # 23512444 <memory_size+0x3512444>
 20c:	f8f42a23          	sw	a5,-108(s0)
 210:	345657b7          	lui	a5,0x34565
 214:	61278793          	add	a5,a5,1554 # 34565612 <memory_size+0x14565612>
 218:	f8f42c23          	sw	a5,-104(s0)
 21c:	1234f7b7          	lui	a5,0x1234f
 220:	64578793          	add	a5,a5,1605 # 1234f645 <__BSS_END__+0x1234c545>
 224:	f8f42e23          	sw	a5,-100(s0)
 228:	890207b7          	lui	a5,0x89020
 22c:	f8078793          	add	a5,a5,-128 # 8901ff80 <memory_size+0x6901ff80>
 230:	faf42023          	sw	a5,-96(s0)
 234:	789017b7          	lui	a5,0x78901
 238:	2dd78793          	add	a5,a5,733 # 789012dd <memory_size+0x589012dd>
 23c:	faf42223          	sw	a5,-92(s0)
 240:	234547b7          	lui	a5,0x23454
 244:	34378793          	add	a5,a5,835 # 23454343 <memory_size+0x3454343>
 248:	faf42423          	sw	a5,-88(s0)
 24c:	8965f7b7          	lui	a5,0x8965f
 250:	16778793          	add	a5,a5,359 # 8965f167 <memory_size+0x6965f167>
 254:	faf42623          	sw	a5,-84(s0)
 258:	fa042823          	sw	zero,-80(s0)
 25c:	456707b7          	lui	a5,0x45670
 260:	12378793          	add	a5,a5,291 # 45670123 <memory_size+0x25670123>
 264:	faf42a23          	sw	a5,-76(s0)
 268:	234537b7          	lui	a5,0x23453
 26c:	30178793          	add	a5,a5,769 # 23453301 <memory_size+0x3453301>
 270:	faf42c23          	sw	a5,-72(s0)
 274:	543217b7          	lui	a5,0x54321
 278:	2f778793          	add	a5,a5,759 # 543212f7 <memory_size+0x343212f7>
 27c:	faf42e23          	sw	a5,-68(s0)
 280:	765487b7          	lui	a5,0x76548
 284:	74578793          	add	a5,a5,1861 # 76548745 <memory_size+0x56548745>
 288:	fcf42023          	sw	a5,-64(s0)
 28c:	234587b7          	lui	a5,0x23458
 290:	28678793          	add	a5,a5,646 # 23458286 <memory_size+0x3458286>
 294:	fcf42223          	sw	a5,-60(s0)
 298:	876517b7          	lui	a5,0x87651
 29c:	29678793          	add	a5,a5,662 # 87651296 <memory_size+0x67651296>
 2a0:	fcf42423          	sw	a5,-56(s0)
 2a4:	d34537b7          	lui	a5,0xd3453
 2a8:	45278793          	add	a5,a5,1106 # d3453452 <memory_size+0xb3453452>
 2ac:	fcf42623          	sw	a5,-52(s0)
 2b0:	c432e7b7          	lui	a5,0xc432e
 2b4:	3ff78793          	add	a5,a5,1023 # c432e3ff <memory_size+0xa432e3ff>
 2b8:	fcf42823          	sw	a5,-48(s0)
 2bc:	222227b7          	lui	a5,0x22222
 2c0:	45678793          	add	a5,a5,1110 # 22222456 <memory_size+0x2222456>
 2c4:	fcf42a23          	sw	a5,-44(s0)
 2c8:	123467b7          	lui	a5,0x12346
 2cc:	72378793          	add	a5,a5,1827 # 12346723 <__BSS_END__+0x12343623>
 2d0:	fcf42c23          	sw	a5,-40(s0)
 2d4:	d45677b7          	lui	a5,0xd4567
 2d8:	51078793          	add	a5,a5,1296 # d4567510 <memory_size+0xb4567510>
 2dc:	fcf42e23          	sw	a5,-36(s0)
 2e0:	00500793          	li	a5,5
 2e4:	fef42023          	sw	a5,-32(s0)
 2e8:	f234f7b7          	lui	a5,0xf234f
 2ec:	5df78793          	add	a5,a5,1503 # f234f5df <memory_size+0xd234f5df>
 2f0:	f2f42e23          	sw	a5,-196(s0)
 2f4:	235127b7          	lui	a5,0x23512
 2f8:	44478793          	add	a5,a5,1092 # 23512444 <memory_size+0x3512444>
 2fc:	f4f42023          	sw	a5,-192(s0)
 300:	345657b7          	lui	a5,0x34565
 304:	61278793          	add	a5,a5,1554 # 34565612 <memory_size+0x14565612>
 308:	f4f42223          	sw	a5,-188(s0)
 30c:	1234f7b7          	lui	a5,0x1234f
 310:	64578793          	add	a5,a5,1605 # 1234f645 <__BSS_END__+0x1234c545>
 314:	f4f42423          	sw	a5,-184(s0)
 318:	890207b7          	lui	a5,0x89020
 31c:	f8078793          	add	a5,a5,-128 # 8901ff80 <memory_size+0x6901ff80>
 320:	f4f42623          	sw	a5,-180(s0)
 324:	789017b7          	lui	a5,0x78901
 328:	2dd78793          	add	a5,a5,733 # 789012dd <memory_size+0x589012dd>
 32c:	f4f42823          	sw	a5,-176(s0)
 330:	234547b7          	lui	a5,0x23454
 334:	34378793          	add	a5,a5,835 # 23454343 <memory_size+0x3454343>
 338:	f4f42a23          	sw	a5,-172(s0)
 33c:	8965f7b7          	lui	a5,0x8965f
 340:	16778793          	add	a5,a5,359 # 8965f167 <memory_size+0x6965f167>
 344:	f4f42c23          	sw	a5,-168(s0)
 348:	f4042e23          	sw	zero,-164(s0)
 34c:	456707b7          	lui	a5,0x45670
 350:	12378793          	add	a5,a5,291 # 45670123 <memory_size+0x25670123>
 354:	f6f42023          	sw	a5,-160(s0)
 358:	234537b7          	lui	a5,0x23453
 35c:	30178793          	add	a5,a5,769 # 23453301 <memory_size+0x3453301>
 360:	f6f42223          	sw	a5,-156(s0)
 364:	543217b7          	lui	a5,0x54321
 368:	2f778793          	add	a5,a5,759 # 543212f7 <memory_size+0x343212f7>
 36c:	f6f42423          	sw	a5,-152(s0)
 370:	765487b7          	lui	a5,0x76548
 374:	74578793          	add	a5,a5,1861 # 76548745 <memory_size+0x56548745>
 378:	f6f42623          	sw	a5,-148(s0)
 37c:	234587b7          	lui	a5,0x23458
 380:	28678793          	add	a5,a5,646 # 23458286 <memory_size+0x3458286>
 384:	f6f42823          	sw	a5,-144(s0)
 388:	876517b7          	lui	a5,0x87651
 38c:	29678793          	add	a5,a5,662 # 87651296 <memory_size+0x67651296>
 390:	f6f42a23          	sw	a5,-140(s0)
 394:	d34537b7          	lui	a5,0xd3453
 398:	45278793          	add	a5,a5,1106 # d3453452 <memory_size+0xb3453452>
 39c:	f6f42c23          	sw	a5,-136(s0)
 3a0:	c432e7b7          	lui	a5,0xc432e
 3a4:	3ff78793          	add	a5,a5,1023 # c432e3ff <memory_size+0xa432e3ff>
 3a8:	f6f42e23          	sw	a5,-132(s0)
 3ac:	222227b7          	lui	a5,0x22222
 3b0:	45678793          	add	a5,a5,1110 # 22222456 <memory_size+0x2222456>
 3b4:	f8f42023          	sw	a5,-128(s0)
 3b8:	123467b7          	lui	a5,0x12346
 3bc:	72378793          	add	a5,a5,1827 # 12346723 <__BSS_END__+0x12343623>
 3c0:	f8f42223          	sw	a5,-124(s0)
 3c4:	d45677b7          	lui	a5,0xd4567
 3c8:	51078793          	add	a5,a5,1296 # d4567510 <memory_size+0xb4567510>
 3cc:	f8f42423          	sw	a5,-120(s0)
 3d0:	00500793          	li	a5,5
 3d4:	f8f42623          	sw	a5,-116(s0)
 3d8:	f9040793          	add	a5,s0,-112
 3dc:	01500593          	li	a1,21
 3e0:	00078513          	mv	a0,a5
 3e4:	0e4000ef          	jal	4c8 <siBubbleSort>
 3e8:	f3c40793          	add	a5,s0,-196
 3ec:	01500593          	li	a1,21
 3f0:	00078513          	mv	a0,a5
 3f4:	1d0000ef          	jal	5c4 <uiBubbleSort>
 3f8:	fe042423          	sw	zero,-24(s0)
 3fc:	fe042623          	sw	zero,-20(s0)
 400:	0480006f          	j	448 <main+0x260>
 404:	fec42783          	lw	a5,-20(s0)
 408:	00279793          	sll	a5,a5,0x2
 40c:	ff078793          	add	a5,a5,-16
 410:	008787b3          	add	a5,a5,s0
 414:	fa07a703          	lw	a4,-96(a5)
 418:	fec42783          	lw	a5,-20(s0)
 41c:	00178793          	add	a5,a5,1
 420:	00279793          	sll	a5,a5,0x2
 424:	ff078793          	add	a5,a5,-16
 428:	008787b3          	add	a5,a5,s0
 42c:	fa07a783          	lw	a5,-96(a5)
 430:	00e7d663          	bge	a5,a4,43c <main+0x254>
 434:	00100793          	li	a5,1
 438:	fef42423          	sw	a5,-24(s0)
 43c:	fec42783          	lw	a5,-20(s0)
 440:	00178793          	add	a5,a5,1
 444:	fef42623          	sw	a5,-20(s0)
 448:	fec42703          	lw	a4,-20(s0)
 44c:	01300793          	li	a5,19
 450:	fae7dae3          	bge	a5,a4,404 <main+0x21c>
 454:	fe042223          	sw	zero,-28(s0)
 458:	fe042623          	sw	zero,-20(s0)
 45c:	0480006f          	j	4a4 <main+0x2bc>
 460:	fec42783          	lw	a5,-20(s0)
 464:	00279793          	sll	a5,a5,0x2
 468:	ff078793          	add	a5,a5,-16
 46c:	008787b3          	add	a5,a5,s0
 470:	f4c7a703          	lw	a4,-180(a5)
 474:	fec42783          	lw	a5,-20(s0)
 478:	00178793          	add	a5,a5,1
 47c:	00279793          	sll	a5,a5,0x2
 480:	ff078793          	add	a5,a5,-16
 484:	008787b3          	add	a5,a5,s0
 488:	f4c7a783          	lw	a5,-180(a5)
 48c:	00e7f663          	bgeu	a5,a4,498 <main+0x2b0>
 490:	00100793          	li	a5,1
 494:	fef42223          	sw	a5,-28(s0)
 498:	fec42783          	lw	a5,-20(s0)
 49c:	00178793          	add	a5,a5,1
 4a0:	fef42623          	sw	a5,-20(s0)
 4a4:	fec42703          	lw	a4,-20(s0)
 4a8:	01300793          	li	a5,19
 4ac:	fae7dae3          	bge	a5,a4,460 <main+0x278>
 4b0:	00000793          	li	a5,0
 4b4:	00078513          	mv	a0,a5
 4b8:	0cc12083          	lw	ra,204(sp)
 4bc:	0c812403          	lw	s0,200(sp)
 4c0:	0d010113          	add	sp,sp,208
 4c4:	00008067          	ret

000004c8 <siBubbleSort>:
 4c8:	fd010113          	add	sp,sp,-48
 4cc:	02812623          	sw	s0,44(sp)
 4d0:	03010413          	add	s0,sp,48
 4d4:	fca42e23          	sw	a0,-36(s0)
 4d8:	fcb42c23          	sw	a1,-40(s0)
 4dc:	fd842783          	lw	a5,-40(s0)
 4e0:	fff78793          	add	a5,a5,-1
 4e4:	fef42623          	sw	a5,-20(s0)
 4e8:	0c00006f          	j	5a8 <siBubbleSort+0xe0>
 4ec:	fe042423          	sw	zero,-24(s0)
 4f0:	0a00006f          	j	590 <siBubbleSort+0xc8>
 4f4:	fe842783          	lw	a5,-24(s0)
 4f8:	00178793          	add	a5,a5,1
 4fc:	00279793          	sll	a5,a5,0x2
 500:	fdc42703          	lw	a4,-36(s0)
 504:	00f707b3          	add	a5,a4,a5
 508:	0007a703          	lw	a4,0(a5)
 50c:	fe842783          	lw	a5,-24(s0)
 510:	00279793          	sll	a5,a5,0x2
 514:	fdc42683          	lw	a3,-36(s0)
 518:	00f687b3          	add	a5,a3,a5
 51c:	0007a783          	lw	a5,0(a5)
 520:	06f75263          	bge	a4,a5,584 <siBubbleSort+0xbc>
 524:	fe842783          	lw	a5,-24(s0)
 528:	00178793          	add	a5,a5,1
 52c:	00279793          	sll	a5,a5,0x2
 530:	fdc42703          	lw	a4,-36(s0)
 534:	00f707b3          	add	a5,a4,a5
 538:	0007a783          	lw	a5,0(a5)
 53c:	fef42223          	sw	a5,-28(s0)
 540:	fe842783          	lw	a5,-24(s0)
 544:	00279793          	sll	a5,a5,0x2
 548:	fdc42703          	lw	a4,-36(s0)
 54c:	00f70733          	add	a4,a4,a5
 550:	fe842783          	lw	a5,-24(s0)
 554:	00178793          	add	a5,a5,1
 558:	00279793          	sll	a5,a5,0x2
 55c:	fdc42683          	lw	a3,-36(s0)
 560:	00f687b3          	add	a5,a3,a5
 564:	00072703          	lw	a4,0(a4)
 568:	00e7a023          	sw	a4,0(a5)
 56c:	fe842783          	lw	a5,-24(s0)
 570:	00279793          	sll	a5,a5,0x2
 574:	fdc42703          	lw	a4,-36(s0)
 578:	00f707b3          	add	a5,a4,a5
 57c:	fe442703          	lw	a4,-28(s0)
 580:	00e7a023          	sw	a4,0(a5)
 584:	fe842783          	lw	a5,-24(s0)
 588:	00178793          	add	a5,a5,1
 58c:	fef42423          	sw	a5,-24(s0)
 590:	fe842703          	lw	a4,-24(s0)
 594:	fec42783          	lw	a5,-20(s0)
 598:	f4f74ee3          	blt	a4,a5,4f4 <siBubbleSort+0x2c>
 59c:	fec42783          	lw	a5,-20(s0)
 5a0:	fff78793          	add	a5,a5,-1
 5a4:	fef42623          	sw	a5,-20(s0)
 5a8:	fec42783          	lw	a5,-20(s0)
 5ac:	f407d0e3          	bgez	a5,4ec <siBubbleSort+0x24>
 5b0:	00000013          	nop
 5b4:	00000013          	nop
 5b8:	02c12403          	lw	s0,44(sp)
 5bc:	03010113          	add	sp,sp,48
 5c0:	00008067          	ret

000005c4 <uiBubbleSort>:
 5c4:	fd010113          	add	sp,sp,-48
 5c8:	02812623          	sw	s0,44(sp)
 5cc:	03010413          	add	s0,sp,48
 5d0:	fca42e23          	sw	a0,-36(s0)
 5d4:	fcb42c23          	sw	a1,-40(s0)
 5d8:	fd842783          	lw	a5,-40(s0)
 5dc:	fff78793          	add	a5,a5,-1
 5e0:	fef42623          	sw	a5,-20(s0)
 5e4:	0c00006f          	j	6a4 <uiBubbleSort+0xe0>
 5e8:	fe042423          	sw	zero,-24(s0)
 5ec:	0a00006f          	j	68c <uiBubbleSort+0xc8>
 5f0:	fe842783          	lw	a5,-24(s0)
 5f4:	00178793          	add	a5,a5,1
 5f8:	00279793          	sll	a5,a5,0x2
 5fc:	fdc42703          	lw	a4,-36(s0)
 600:	00f707b3          	add	a5,a4,a5
 604:	0007a703          	lw	a4,0(a5)
 608:	fe842783          	lw	a5,-24(s0)
 60c:	00279793          	sll	a5,a5,0x2
 610:	fdc42683          	lw	a3,-36(s0)
 614:	00f687b3          	add	a5,a3,a5
 618:	0007a783          	lw	a5,0(a5)
 61c:	06f77263          	bgeu	a4,a5,680 <uiBubbleSort+0xbc>
 620:	fe842783          	lw	a5,-24(s0)
 624:	00178793          	add	a5,a5,1
 628:	00279793          	sll	a5,a5,0x2
 62c:	fdc42703          	lw	a4,-36(s0)
 630:	00f707b3          	add	a5,a4,a5
 634:	0007a783          	lw	a5,0(a5)
 638:	fef42223          	sw	a5,-28(s0)
 63c:	fe842783          	lw	a5,-24(s0)
 640:	00279793          	sll	a5,a5,0x2
 644:	fdc42703          	lw	a4,-36(s0)
 648:	00f70733          	add	a4,a4,a5
 64c:	fe842783          	lw	a5,-24(s0)
 650:	00178793          	add	a5,a5,1
 654:	00279793          	sll	a5,a5,0x2
 658:	fdc42683          	lw	a3,-36(s0)
 65c:	00f687b3          	add	a5,a3,a5
 660:	00072703          	lw	a4,0(a4)
 664:	00e7a023          	sw	a4,0(a5)
 668:	fe842783          	lw	a5,-24(s0)
 66c:	00279793          	sll	a5,a5,0x2
 670:	fdc42703          	lw	a4,-36(s0)
 674:	00f707b3          	add	a5,a4,a5
 678:	fe442703          	lw	a4,-28(s0)
 67c:	00e7a023          	sw	a4,0(a5)
 680:	fe842783          	lw	a5,-24(s0)
 684:	00178793          	add	a5,a5,1
 688:	fef42423          	sw	a5,-24(s0)
 68c:	fe842703          	lw	a4,-24(s0)
 690:	fec42783          	lw	a5,-20(s0)
 694:	f4f74ee3          	blt	a4,a5,5f0 <uiBubbleSort+0x2c>
 698:	fec42783          	lw	a5,-20(s0)
 69c:	fff78793          	add	a5,a5,-1
 6a0:	fef42623          	sw	a5,-20(s0)
 6a4:	fec42783          	lw	a5,-20(s0)
 6a8:	f407d0e3          	bgez	a5,5e8 <uiBubbleSort+0x24>
 6ac:	00000013          	nop
 6b0:	00000013          	nop
 6b4:	02c12403          	lw	s0,44(sp)
 6b8:	03010113          	add	sp,sp,48
 6bc:	00008067          	ret
