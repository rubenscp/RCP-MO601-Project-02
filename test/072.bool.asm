
test/072.bool.riscv:     file format elf32-littleriscv


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
 1f4:	fff00793          	li	a5,-1
 1f8:	fef41723          	sh	a5,-18(s0)
 1fc:	fff00793          	li	a5,-1
 200:	fef41623          	sh	a5,-20(s0)
 204:	fee45783          	lhu	a5,-18(s0)
 208:	00078713          	mv	a4,a5
 20c:	fec45783          	lhu	a5,-20(s0)
 210:	00f767b3          	or	a5,a4,a5
 214:	fef41523          	sh	a5,-22(s0)
 218:	fe041523          	sh	zero,-22(s0)
 21c:	fee45783          	lhu	a5,-18(s0)
 220:	00078713          	mv	a4,a5
 224:	fec45783          	lhu	a5,-20(s0)
 228:	00f777b3          	and	a5,a4,a5
 22c:	fef41423          	sh	a5,-24(s0)
 230:	fe041423          	sh	zero,-24(s0)
 234:	fee45783          	lhu	a5,-18(s0)
 238:	00078713          	mv	a4,a5
 23c:	fec45783          	lhu	a5,-20(s0)
 240:	00f747b3          	xor	a5,a4,a5
 244:	fef41323          	sh	a5,-26(s0)
 248:	fe041323          	sh	zero,-26(s0)
 24c:	fee45783          	lhu	a5,-18(s0)
 250:	00078713          	mv	a4,a5
 254:	fec45783          	lhu	a5,-20(s0)
 258:	00f767b3          	or	a5,a4,a5
 25c:	01079793          	sll	a5,a5,0x10
 260:	0107d793          	srl	a5,a5,0x10
 264:	fff7c793          	not	a5,a5
 268:	fef41223          	sh	a5,-28(s0)
 26c:	fe041223          	sh	zero,-28(s0)
 270:	fee45783          	lhu	a5,-18(s0)
 274:	00078713          	mv	a4,a5
 278:	fec45783          	lhu	a5,-20(s0)
 27c:	00f777b3          	and	a5,a4,a5
 280:	01079793          	sll	a5,a5,0x10
 284:	0107d793          	srl	a5,a5,0x10
 288:	fff7c793          	not	a5,a5
 28c:	fef41123          	sh	a5,-30(s0)
 290:	fe041123          	sh	zero,-30(s0)
 294:	fee45783          	lhu	a5,-18(s0)
 298:	00078713          	mv	a4,a5
 29c:	fec45783          	lhu	a5,-20(s0)
 2a0:	00f747b3          	xor	a5,a4,a5
 2a4:	01079793          	sll	a5,a5,0x10
 2a8:	0107d793          	srl	a5,a5,0x10
 2ac:	fff7c793          	not	a5,a5
 2b0:	fef41023          	sh	a5,-32(s0)
 2b4:	fe041023          	sh	zero,-32(s0)
 2b8:	fee45783          	lhu	a5,-18(s0)
 2bc:	fff7c793          	not	a5,a5
 2c0:	fcf41f23          	sh	a5,-34(s0)
 2c4:	fc041f23          	sh	zero,-34(s0)
 2c8:	fec45783          	lhu	a5,-20(s0)
 2cc:	fff7c793          	not	a5,a5
 2d0:	fcf41e23          	sh	a5,-36(s0)
 2d4:	fc041e23          	sh	zero,-36(s0)
 2d8:	000017b7          	lui	a5,0x1
 2dc:	f0f78793          	add	a5,a5,-241 # f0f <main+0xd27>
 2e0:	fef41723          	sh	a5,-18(s0)
 2e4:	fffff7b7          	lui	a5,0xfffff
 2e8:	0f078793          	add	a5,a5,240 # fffff0f0 <memory_size+0xdffff0f0>
 2ec:	fef41623          	sh	a5,-20(s0)
 2f0:	fee45783          	lhu	a5,-18(s0)
 2f4:	00078713          	mv	a4,a5
 2f8:	fec45783          	lhu	a5,-20(s0)
 2fc:	00f767b3          	or	a5,a4,a5
 300:	fef41523          	sh	a5,-22(s0)
 304:	fe041523          	sh	zero,-22(s0)
 308:	fee45783          	lhu	a5,-18(s0)
 30c:	00078713          	mv	a4,a5
 310:	fec45783          	lhu	a5,-20(s0)
 314:	00f777b3          	and	a5,a4,a5
 318:	fef41423          	sh	a5,-24(s0)
 31c:	fe041423          	sh	zero,-24(s0)
 320:	fee45783          	lhu	a5,-18(s0)
 324:	00078713          	mv	a4,a5
 328:	fec45783          	lhu	a5,-20(s0)
 32c:	00f747b3          	xor	a5,a4,a5
 330:	fef41323          	sh	a5,-26(s0)
 334:	fe041323          	sh	zero,-26(s0)
 338:	fee45783          	lhu	a5,-18(s0)
 33c:	00078713          	mv	a4,a5
 340:	fec45783          	lhu	a5,-20(s0)
 344:	00f767b3          	or	a5,a4,a5
 348:	01079793          	sll	a5,a5,0x10
 34c:	0107d793          	srl	a5,a5,0x10
 350:	fff7c793          	not	a5,a5
 354:	fef41223          	sh	a5,-28(s0)
 358:	fe041223          	sh	zero,-28(s0)
 35c:	fee45783          	lhu	a5,-18(s0)
 360:	00078713          	mv	a4,a5
 364:	fec45783          	lhu	a5,-20(s0)
 368:	00f777b3          	and	a5,a4,a5
 36c:	01079793          	sll	a5,a5,0x10
 370:	0107d793          	srl	a5,a5,0x10
 374:	fff7c793          	not	a5,a5
 378:	fef41123          	sh	a5,-30(s0)
 37c:	fe041123          	sh	zero,-30(s0)
 380:	fee45783          	lhu	a5,-18(s0)
 384:	00078713          	mv	a4,a5
 388:	fec45783          	lhu	a5,-20(s0)
 38c:	00f747b3          	xor	a5,a4,a5
 390:	01079793          	sll	a5,a5,0x10
 394:	0107d793          	srl	a5,a5,0x10
 398:	fff7c793          	not	a5,a5
 39c:	fef41023          	sh	a5,-32(s0)
 3a0:	fe041023          	sh	zero,-32(s0)
 3a4:	fee45783          	lhu	a5,-18(s0)
 3a8:	fff7c793          	not	a5,a5
 3ac:	fcf41f23          	sh	a5,-34(s0)
 3b0:	fc041f23          	sh	zero,-34(s0)
 3b4:	fec45783          	lhu	a5,-20(s0)
 3b8:	fff7c793          	not	a5,a5
 3bc:	fcf41e23          	sh	a5,-36(s0)
 3c0:	fc041e23          	sh	zero,-36(s0)
 3c4:	fff00793          	li	a5,-1
 3c8:	fef41723          	sh	a5,-18(s0)
 3cc:	fe041623          	sh	zero,-20(s0)
 3d0:	fee45783          	lhu	a5,-18(s0)
 3d4:	00078713          	mv	a4,a5
 3d8:	fec45783          	lhu	a5,-20(s0)
 3dc:	00f767b3          	or	a5,a4,a5
 3e0:	fef41523          	sh	a5,-22(s0)
 3e4:	fe041523          	sh	zero,-22(s0)
 3e8:	fee45783          	lhu	a5,-18(s0)
 3ec:	00078713          	mv	a4,a5
 3f0:	fec45783          	lhu	a5,-20(s0)
 3f4:	00f777b3          	and	a5,a4,a5
 3f8:	fef41423          	sh	a5,-24(s0)
 3fc:	fe041423          	sh	zero,-24(s0)
 400:	fee45783          	lhu	a5,-18(s0)
 404:	00078713          	mv	a4,a5
 408:	fec45783          	lhu	a5,-20(s0)
 40c:	00f747b3          	xor	a5,a4,a5
 410:	fef41323          	sh	a5,-26(s0)
 414:	fe041323          	sh	zero,-26(s0)
 418:	fee45783          	lhu	a5,-18(s0)
 41c:	00078713          	mv	a4,a5
 420:	fec45783          	lhu	a5,-20(s0)
 424:	00f767b3          	or	a5,a4,a5
 428:	01079793          	sll	a5,a5,0x10
 42c:	0107d793          	srl	a5,a5,0x10
 430:	fff7c793          	not	a5,a5
 434:	fef41223          	sh	a5,-28(s0)
 438:	fe041223          	sh	zero,-28(s0)
 43c:	fee45783          	lhu	a5,-18(s0)
 440:	00078713          	mv	a4,a5
 444:	fec45783          	lhu	a5,-20(s0)
 448:	00f777b3          	and	a5,a4,a5
 44c:	01079793          	sll	a5,a5,0x10
 450:	0107d793          	srl	a5,a5,0x10
 454:	fff7c793          	not	a5,a5
 458:	fef41123          	sh	a5,-30(s0)
 45c:	fe041123          	sh	zero,-30(s0)
 460:	fee45783          	lhu	a5,-18(s0)
 464:	00078713          	mv	a4,a5
 468:	fec45783          	lhu	a5,-20(s0)
 46c:	00f747b3          	xor	a5,a4,a5
 470:	01079793          	sll	a5,a5,0x10
 474:	0107d793          	srl	a5,a5,0x10
 478:	fff7c793          	not	a5,a5
 47c:	fef41023          	sh	a5,-32(s0)
 480:	fe041023          	sh	zero,-32(s0)
 484:	fee45783          	lhu	a5,-18(s0)
 488:	fff7c793          	not	a5,a5
 48c:	fcf41f23          	sh	a5,-34(s0)
 490:	fc041f23          	sh	zero,-34(s0)
 494:	fec45783          	lhu	a5,-20(s0)
 498:	fff7c793          	not	a5,a5
 49c:	fcf41e23          	sh	a5,-36(s0)
 4a0:	fc041e23          	sh	zero,-36(s0)
 4a4:	000057b7          	lui	a5,0x5
 4a8:	55578793          	add	a5,a5,1365 # 5555 <__BSS_END__+0x2455>
 4ac:	fef41723          	sh	a5,-18(s0)
 4b0:	ffffb7b7          	lui	a5,0xffffb
 4b4:	aaa78793          	add	a5,a5,-1366 # ffffaaaa <memory_size+0xdfffaaaa>
 4b8:	fef41623          	sh	a5,-20(s0)
 4bc:	fee45783          	lhu	a5,-18(s0)
 4c0:	00078713          	mv	a4,a5
 4c4:	fec45783          	lhu	a5,-20(s0)
 4c8:	00f767b3          	or	a5,a4,a5
 4cc:	fef41523          	sh	a5,-22(s0)
 4d0:	fe041523          	sh	zero,-22(s0)
 4d4:	fee45783          	lhu	a5,-18(s0)
 4d8:	00078713          	mv	a4,a5
 4dc:	fec45783          	lhu	a5,-20(s0)
 4e0:	00f777b3          	and	a5,a4,a5
 4e4:	fef41423          	sh	a5,-24(s0)
 4e8:	fe041423          	sh	zero,-24(s0)
 4ec:	fee45783          	lhu	a5,-18(s0)
 4f0:	00078713          	mv	a4,a5
 4f4:	fec45783          	lhu	a5,-20(s0)
 4f8:	00f747b3          	xor	a5,a4,a5
 4fc:	fef41323          	sh	a5,-26(s0)
 500:	fe041323          	sh	zero,-26(s0)
 504:	fee45783          	lhu	a5,-18(s0)
 508:	00078713          	mv	a4,a5
 50c:	fec45783          	lhu	a5,-20(s0)
 510:	00f767b3          	or	a5,a4,a5
 514:	01079793          	sll	a5,a5,0x10
 518:	0107d793          	srl	a5,a5,0x10
 51c:	fff7c793          	not	a5,a5
 520:	fef41223          	sh	a5,-28(s0)
 524:	fe041223          	sh	zero,-28(s0)
 528:	fee45783          	lhu	a5,-18(s0)
 52c:	00078713          	mv	a4,a5
 530:	fec45783          	lhu	a5,-20(s0)
 534:	00f777b3          	and	a5,a4,a5
 538:	01079793          	sll	a5,a5,0x10
 53c:	0107d793          	srl	a5,a5,0x10
 540:	fff7c793          	not	a5,a5
 544:	fef41123          	sh	a5,-30(s0)
 548:	fe041123          	sh	zero,-30(s0)
 54c:	fee45783          	lhu	a5,-18(s0)
 550:	00078713          	mv	a4,a5
 554:	fec45783          	lhu	a5,-20(s0)
 558:	00f747b3          	xor	a5,a4,a5
 55c:	01079793          	sll	a5,a5,0x10
 560:	0107d793          	srl	a5,a5,0x10
 564:	fff7c793          	not	a5,a5
 568:	fef41023          	sh	a5,-32(s0)
 56c:	fe041023          	sh	zero,-32(s0)
 570:	fee45783          	lhu	a5,-18(s0)
 574:	fff7c793          	not	a5,a5
 578:	fcf41f23          	sh	a5,-34(s0)
 57c:	fc041f23          	sh	zero,-34(s0)
 580:	fec45783          	lhu	a5,-20(s0)
 584:	fff7c793          	not	a5,a5
 588:	fcf41e23          	sh	a5,-36(s0)
 58c:	fc041e23          	sh	zero,-36(s0)
 590:	fe041723          	sh	zero,-18(s0)
 594:	fe041623          	sh	zero,-20(s0)
 598:	fee45783          	lhu	a5,-18(s0)
 59c:	00078713          	mv	a4,a5
 5a0:	fec45783          	lhu	a5,-20(s0)
 5a4:	00f767b3          	or	a5,a4,a5
 5a8:	fef41523          	sh	a5,-22(s0)
 5ac:	fe041523          	sh	zero,-22(s0)
 5b0:	fee45783          	lhu	a5,-18(s0)
 5b4:	00078713          	mv	a4,a5
 5b8:	fec45783          	lhu	a5,-20(s0)
 5bc:	00f777b3          	and	a5,a4,a5
 5c0:	fef41423          	sh	a5,-24(s0)
 5c4:	fe041423          	sh	zero,-24(s0)
 5c8:	fee45783          	lhu	a5,-18(s0)
 5cc:	00078713          	mv	a4,a5
 5d0:	fec45783          	lhu	a5,-20(s0)
 5d4:	00f747b3          	xor	a5,a4,a5
 5d8:	fef41323          	sh	a5,-26(s0)
 5dc:	fe041323          	sh	zero,-26(s0)
 5e0:	fee45783          	lhu	a5,-18(s0)
 5e4:	00078713          	mv	a4,a5
 5e8:	fec45783          	lhu	a5,-20(s0)
 5ec:	00f767b3          	or	a5,a4,a5
 5f0:	01079793          	sll	a5,a5,0x10
 5f4:	0107d793          	srl	a5,a5,0x10
 5f8:	fff7c793          	not	a5,a5
 5fc:	fef41223          	sh	a5,-28(s0)
 600:	fe041223          	sh	zero,-28(s0)
 604:	fee45783          	lhu	a5,-18(s0)
 608:	00078713          	mv	a4,a5
 60c:	fec45783          	lhu	a5,-20(s0)
 610:	00f777b3          	and	a5,a4,a5
 614:	01079793          	sll	a5,a5,0x10
 618:	0107d793          	srl	a5,a5,0x10
 61c:	fff7c793          	not	a5,a5
 620:	fef41123          	sh	a5,-30(s0)
 624:	fe041123          	sh	zero,-30(s0)
 628:	fee45783          	lhu	a5,-18(s0)
 62c:	00078713          	mv	a4,a5
 630:	fec45783          	lhu	a5,-20(s0)
 634:	00f747b3          	xor	a5,a4,a5
 638:	01079793          	sll	a5,a5,0x10
 63c:	0107d793          	srl	a5,a5,0x10
 640:	fff7c793          	not	a5,a5
 644:	fef41023          	sh	a5,-32(s0)
 648:	fe041023          	sh	zero,-32(s0)
 64c:	fee45783          	lhu	a5,-18(s0)
 650:	fff7c793          	not	a5,a5
 654:	fcf41f23          	sh	a5,-34(s0)
 658:	fc041f23          	sh	zero,-34(s0)
 65c:	fec45783          	lhu	a5,-20(s0)
 660:	fff7c793          	not	a5,a5
 664:	fcf41e23          	sh	a5,-36(s0)
 668:	fc041e23          	sh	zero,-36(s0)
 66c:	00000793          	li	a5,0
 670:	00078513          	mv	a0,a5
 674:	02c12403          	lw	s0,44(sp)
 678:	03010113          	add	sp,sp,48
 67c:	00008067          	ret