
test/042.sub.riscv:     file format elf32-littleriscv


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
 1f4:	0ff00793          	li	a5,255
 1f8:	fef41723          	sh	a5,-18(s0)
 1fc:	f0000793          	li	a5,-256
 200:	fef41623          	sh	a5,-20(s0)
 204:	fee45703          	lhu	a4,-18(s0)
 208:	fec45783          	lhu	a5,-20(s0)
 20c:	40f707b3          	sub	a5,a4,a5
 210:	01079793          	sll	a5,a5,0x10
 214:	0107d793          	srl	a5,a5,0x10
 218:	fef41523          	sh	a5,-22(s0)
 21c:	fe041523          	sh	zero,-22(s0)
 220:	fec00793          	li	a5,-20
 224:	fef41723          	sh	a5,-18(s0)
 228:	fe200793          	li	a5,-30
 22c:	fef41623          	sh	a5,-20(s0)
 230:	fee45703          	lhu	a4,-18(s0)
 234:	fec45783          	lhu	a5,-20(s0)
 238:	40f707b3          	sub	a5,a4,a5
 23c:	01079793          	sll	a5,a5,0x10
 240:	0107d793          	srl	a5,a5,0x10
 244:	fef41523          	sh	a5,-22(s0)
 248:	fe041523          	sh	zero,-22(s0)
 24c:	ffe00793          	li	a5,-2
 250:	fef41723          	sh	a5,-18(s0)
 254:	00200793          	li	a5,2
 258:	fef41623          	sh	a5,-20(s0)
 25c:	fee45703          	lhu	a4,-18(s0)
 260:	fec45783          	lhu	a5,-20(s0)
 264:	40f707b3          	sub	a5,a4,a5
 268:	01079793          	sll	a5,a5,0x10
 26c:	0107d793          	srl	a5,a5,0x10
 270:	fef41523          	sh	a5,-22(s0)
 274:	fe041523          	sh	zero,-22(s0)
 278:	00a00793          	li	a5,10
 27c:	fef41723          	sh	a5,-18(s0)
 280:	ffb00793          	li	a5,-5
 284:	fef41623          	sh	a5,-20(s0)
 288:	fee45703          	lhu	a4,-18(s0)
 28c:	fec45783          	lhu	a5,-20(s0)
 290:	40f707b3          	sub	a5,a4,a5
 294:	01079793          	sll	a5,a5,0x10
 298:	0107d793          	srl	a5,a5,0x10
 29c:	fef41523          	sh	a5,-22(s0)
 2a0:	fe041523          	sh	zero,-22(s0)
 2a4:	00500793          	li	a5,5
 2a8:	fef41723          	sh	a5,-18(s0)
 2ac:	ff600793          	li	a5,-10
 2b0:	fef41623          	sh	a5,-20(s0)
 2b4:	fee45703          	lhu	a4,-18(s0)
 2b8:	fec45783          	lhu	a5,-20(s0)
 2bc:	40f707b3          	sub	a5,a4,a5
 2c0:	01079793          	sll	a5,a5,0x10
 2c4:	0107d793          	srl	a5,a5,0x10
 2c8:	fef41523          	sh	a5,-22(s0)
 2cc:	fe041523          	sh	zero,-22(s0)
 2d0:	000017b7          	lui	a5,0x1
 2d4:	f0f78793          	add	a5,a5,-241 # f0f <main+0xd27>
 2d8:	fef41723          	sh	a5,-18(s0)
 2dc:	fffff7b7          	lui	a5,0xfffff
 2e0:	0f078793          	add	a5,a5,240 # fffff0f0 <memory_size+0xdffff0f0>
 2e4:	fef41623          	sh	a5,-20(s0)
 2e8:	fee45703          	lhu	a4,-18(s0)
 2ec:	fec45783          	lhu	a5,-20(s0)
 2f0:	40f707b3          	sub	a5,a4,a5
 2f4:	01079793          	sll	a5,a5,0x10
 2f8:	0107d793          	srl	a5,a5,0x10
 2fc:	fef41523          	sh	a5,-22(s0)
 300:	fe041523          	sh	zero,-22(s0)
 304:	ffffb7b7          	lui	a5,0xffffb
 308:	aaa78793          	add	a5,a5,-1366 # ffffaaaa <memory_size+0xdfffaaaa>
 30c:	fef41723          	sh	a5,-18(s0)
 310:	000057b7          	lui	a5,0x5
 314:	55578793          	add	a5,a5,1365 # 5555 <__BSS_END__+0x2455>
 318:	fef41623          	sh	a5,-20(s0)
 31c:	fee45703          	lhu	a4,-18(s0)
 320:	fec45783          	lhu	a5,-20(s0)
 324:	40f707b3          	sub	a5,a4,a5
 328:	01079793          	sll	a5,a5,0x10
 32c:	0107d793          	srl	a5,a5,0x10
 330:	fef41523          	sh	a5,-22(s0)
 334:	fe041523          	sh	zero,-22(s0)
 338:	00f00793          	li	a5,15
 33c:	fef41423          	sh	a5,-24(s0)
 340:	fe845783          	lhu	a5,-24(s0)
 344:	fff78793          	add	a5,a5,-1
 348:	01079793          	sll	a5,a5,0x10
 34c:	0107d793          	srl	a5,a5,0x10
 350:	fef41423          	sh	a5,-24(s0)
 354:	fe845783          	lhu	a5,-24(s0)
 358:	ffe78793          	add	a5,a5,-2
 35c:	01079793          	sll	a5,a5,0x10
 360:	0107d793          	srl	a5,a5,0x10
 364:	fef41423          	sh	a5,-24(s0)
 368:	fe845783          	lhu	a5,-24(s0)
 36c:	ffd78793          	add	a5,a5,-3
 370:	01079793          	sll	a5,a5,0x10
 374:	0107d793          	srl	a5,a5,0x10
 378:	fef41423          	sh	a5,-24(s0)
 37c:	fe845783          	lhu	a5,-24(s0)
 380:	ffc78793          	add	a5,a5,-4
 384:	01079793          	sll	a5,a5,0x10
 388:	0107d793          	srl	a5,a5,0x10
 38c:	fef41423          	sh	a5,-24(s0)
 390:	fe845783          	lhu	a5,-24(s0)
 394:	ffb78793          	add	a5,a5,-5
 398:	01079793          	sll	a5,a5,0x10
 39c:	0107d793          	srl	a5,a5,0x10
 3a0:	fef41423          	sh	a5,-24(s0)
 3a4:	fe041423          	sh	zero,-24(s0)
 3a8:	0ff00793          	li	a5,255
 3ac:	fef41323          	sh	a5,-26(s0)
 3b0:	f0000793          	li	a5,-256
 3b4:	fef41223          	sh	a5,-28(s0)
 3b8:	fe645783          	lhu	a5,-26(s0)
 3bc:	00078713          	mv	a4,a5
 3c0:	fe445783          	lhu	a5,-28(s0)
 3c4:	40f707b3          	sub	a5,a4,a5
 3c8:	fef41123          	sh	a5,-30(s0)
 3cc:	fe041123          	sh	zero,-30(s0)
 3d0:	fec00793          	li	a5,-20
 3d4:	fef41323          	sh	a5,-26(s0)
 3d8:	fe200793          	li	a5,-30
 3dc:	fef41223          	sh	a5,-28(s0)
 3e0:	fe645783          	lhu	a5,-26(s0)
 3e4:	00078713          	mv	a4,a5
 3e8:	fe445783          	lhu	a5,-28(s0)
 3ec:	40f707b3          	sub	a5,a4,a5
 3f0:	fef41123          	sh	a5,-30(s0)
 3f4:	fe041123          	sh	zero,-30(s0)
 3f8:	ffe00793          	li	a5,-2
 3fc:	fef41323          	sh	a5,-26(s0)
 400:	00200793          	li	a5,2
 404:	fef41223          	sh	a5,-28(s0)
 408:	fe645783          	lhu	a5,-26(s0)
 40c:	00078713          	mv	a4,a5
 410:	fe445783          	lhu	a5,-28(s0)
 414:	40f707b3          	sub	a5,a4,a5
 418:	fef41123          	sh	a5,-30(s0)
 41c:	fe041123          	sh	zero,-30(s0)
 420:	00a00793          	li	a5,10
 424:	fef41323          	sh	a5,-26(s0)
 428:	ffb00793          	li	a5,-5
 42c:	fef41223          	sh	a5,-28(s0)
 430:	fe645783          	lhu	a5,-26(s0)
 434:	00078713          	mv	a4,a5
 438:	fe445783          	lhu	a5,-28(s0)
 43c:	40f707b3          	sub	a5,a4,a5
 440:	fef41123          	sh	a5,-30(s0)
 444:	fe041123          	sh	zero,-30(s0)
 448:	00500793          	li	a5,5
 44c:	fef41323          	sh	a5,-26(s0)
 450:	ff600793          	li	a5,-10
 454:	fef41223          	sh	a5,-28(s0)
 458:	fe645783          	lhu	a5,-26(s0)
 45c:	00078713          	mv	a4,a5
 460:	fe445783          	lhu	a5,-28(s0)
 464:	40f707b3          	sub	a5,a4,a5
 468:	fef41123          	sh	a5,-30(s0)
 46c:	fe041123          	sh	zero,-30(s0)
 470:	000017b7          	lui	a5,0x1
 474:	f0f78793          	add	a5,a5,-241 # f0f <main+0xd27>
 478:	fef41323          	sh	a5,-26(s0)
 47c:	fffff7b7          	lui	a5,0xfffff
 480:	0f078793          	add	a5,a5,240 # fffff0f0 <memory_size+0xdffff0f0>
 484:	fef41223          	sh	a5,-28(s0)
 488:	fe645783          	lhu	a5,-26(s0)
 48c:	00078713          	mv	a4,a5
 490:	fe445783          	lhu	a5,-28(s0)
 494:	40f707b3          	sub	a5,a4,a5
 498:	fef41123          	sh	a5,-30(s0)
 49c:	fe041123          	sh	zero,-30(s0)
 4a0:	ffffb7b7          	lui	a5,0xffffb
 4a4:	aaa78793          	add	a5,a5,-1366 # ffffaaaa <memory_size+0xdfffaaaa>
 4a8:	fef41323          	sh	a5,-26(s0)
 4ac:	000057b7          	lui	a5,0x5
 4b0:	55578793          	add	a5,a5,1365 # 5555 <__BSS_END__+0x2455>
 4b4:	fef41223          	sh	a5,-28(s0)
 4b8:	fe645783          	lhu	a5,-26(s0)
 4bc:	00078713          	mv	a4,a5
 4c0:	fe445783          	lhu	a5,-28(s0)
 4c4:	40f707b3          	sub	a5,a4,a5
 4c8:	fef41123          	sh	a5,-30(s0)
 4cc:	fe041123          	sh	zero,-30(s0)
 4d0:	00f00793          	li	a5,15
 4d4:	fef41023          	sh	a5,-32(s0)
 4d8:	fe045783          	lhu	a5,-32(s0)
 4dc:	fff78793          	add	a5,a5,-1
 4e0:	fef41023          	sh	a5,-32(s0)
 4e4:	fe045783          	lhu	a5,-32(s0)
 4e8:	ffe78793          	add	a5,a5,-2
 4ec:	fef41023          	sh	a5,-32(s0)
 4f0:	fe045783          	lhu	a5,-32(s0)
 4f4:	ffd78793          	add	a5,a5,-3
 4f8:	fef41023          	sh	a5,-32(s0)
 4fc:	fe045783          	lhu	a5,-32(s0)
 500:	ffc78793          	add	a5,a5,-4
 504:	fef41023          	sh	a5,-32(s0)
 508:	fe045783          	lhu	a5,-32(s0)
 50c:	ffb78793          	add	a5,a5,-5
 510:	fef41023          	sh	a5,-32(s0)
 514:	fe041023          	sh	zero,-32(s0)
 518:	fe041423          	sh	zero,-24(s0)
 51c:	fe845783          	lhu	a5,-24(s0)
 520:	00178793          	add	a5,a5,1
 524:	01079793          	sll	a5,a5,0x10
 528:	0107d793          	srl	a5,a5,0x10
 52c:	fef41423          	sh	a5,-24(s0)
 530:	fe845783          	lhu	a5,-24(s0)
 534:	00278793          	add	a5,a5,2
 538:	01079793          	sll	a5,a5,0x10
 53c:	0107d793          	srl	a5,a5,0x10
 540:	fef41423          	sh	a5,-24(s0)
 544:	fe845783          	lhu	a5,-24(s0)
 548:	00378793          	add	a5,a5,3
 54c:	01079793          	sll	a5,a5,0x10
 550:	0107d793          	srl	a5,a5,0x10
 554:	fef41423          	sh	a5,-24(s0)
 558:	fe845783          	lhu	a5,-24(s0)
 55c:	00478793          	add	a5,a5,4
 560:	01079793          	sll	a5,a5,0x10
 564:	0107d793          	srl	a5,a5,0x10
 568:	fef41423          	sh	a5,-24(s0)
 56c:	fe845783          	lhu	a5,-24(s0)
 570:	00578793          	add	a5,a5,5
 574:	01079793          	sll	a5,a5,0x10
 578:	0107d793          	srl	a5,a5,0x10
 57c:	fef41423          	sh	a5,-24(s0)
 580:	fe041423          	sh	zero,-24(s0)
 584:	fe041023          	sh	zero,-32(s0)
 588:	fe045783          	lhu	a5,-32(s0)
 58c:	00178793          	add	a5,a5,1
 590:	fef41023          	sh	a5,-32(s0)
 594:	fe045783          	lhu	a5,-32(s0)
 598:	00278793          	add	a5,a5,2
 59c:	fef41023          	sh	a5,-32(s0)
 5a0:	fe045783          	lhu	a5,-32(s0)
 5a4:	00378793          	add	a5,a5,3
 5a8:	fef41023          	sh	a5,-32(s0)
 5ac:	fe045783          	lhu	a5,-32(s0)
 5b0:	00478793          	add	a5,a5,4
 5b4:	fef41023          	sh	a5,-32(s0)
 5b8:	fe045783          	lhu	a5,-32(s0)
 5bc:	00578793          	add	a5,a5,5
 5c0:	fef41023          	sh	a5,-32(s0)
 5c4:	fe041023          	sh	zero,-32(s0)
 5c8:	00000793          	li	a5,0
 5cc:	00078513          	mv	a0,a5
 5d0:	01c12403          	lw	s0,28(sp)
 5d4:	02010113          	add	sp,sp,32
 5d8:	00008067          	ret