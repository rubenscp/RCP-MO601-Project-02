
test/142.array.riscv:     file format elf32-littleriscv


Disassembly of section .text:

000001d8 <_start>:
 1d8:	00500137          	lui	sp,0x500
 1dc:	00c000ef          	jal	1e8 <main>
 1e0:	200002b7          	lui	t0,0x20000
 1e4:	00100073          	ebreak

000001e8 <main>:
 1e8:	81010113          	add	sp,sp,-2032 # 4ff810 <__BSS_END__+0x4fc710>
 1ec:	7e812623          	sw	s0,2028(sp)
 1f0:	7f010413          	add	s0,sp,2032
 1f4:	e7010113          	add	sp,sp,-400
 1f8:	fe040623          	sb	zero,-20(s0)
 1fc:	fe0407a3          	sb	zero,-17(s0)
 200:	0b00006f          	j	2b0 <main+0xc8>
 204:	fe040723          	sb	zero,-18(s0)
 208:	0900006f          	j	298 <main+0xb0>
 20c:	fef44703          	lbu	a4,-17(s0)
 210:	fee44783          	lbu	a5,-18(s0)
 214:	04f71063          	bne	a4,a5,254 <main+0x6c>
 218:	fef44703          	lbu	a4,-17(s0)
 21c:	fee44303          	lbu	t1,-18(s0)
 220:	00070793          	mv	a5,a4
 224:	00279793          	sll	a5,a5,0x2
 228:	00e787b3          	add	a5,a5,a4
 22c:	00179793          	sll	a5,a5,0x1
 230:	006787b3          	add	a5,a5,t1
 234:	00379793          	sll	a5,a5,0x3
 238:	ff078793          	add	a5,a5,-16
 23c:	008787b3          	add	a5,a5,s0
 240:	00100313          	li	t1,1
 244:	00000393          	li	t2,0
 248:	cc67ac23          	sw	t1,-808(a5)
 24c:	cc77ae23          	sw	t2,-804(a5)
 250:	03c0006f          	j	28c <main+0xa4>
 254:	fef44703          	lbu	a4,-17(s0)
 258:	fee44303          	lbu	t1,-18(s0)
 25c:	00070793          	mv	a5,a4
 260:	00279793          	sll	a5,a5,0x2
 264:	00e787b3          	add	a5,a5,a4
 268:	00179793          	sll	a5,a5,0x1
 26c:	006787b3          	add	a5,a5,t1
 270:	00379793          	sll	a5,a5,0x3
 274:	ff078793          	add	a5,a5,-16
 278:	008787b3          	add	a5,a5,s0
 27c:	00000313          	li	t1,0
 280:	00000393          	li	t2,0
 284:	cc67ac23          	sw	t1,-808(a5)
 288:	cc77ae23          	sw	t2,-804(a5)
 28c:	fee44783          	lbu	a5,-18(s0)
 290:	00178793          	add	a5,a5,1
 294:	fef40723          	sb	a5,-18(s0)
 298:	fee44703          	lbu	a4,-18(s0)
 29c:	00900793          	li	a5,9
 2a0:	f6e7f6e3          	bgeu	a5,a4,20c <main+0x24>
 2a4:	fef44783          	lbu	a5,-17(s0)
 2a8:	00178793          	add	a5,a5,1
 2ac:	fef407a3          	sb	a5,-17(s0)
 2b0:	fef44703          	lbu	a4,-17(s0)
 2b4:	00900793          	li	a5,9
 2b8:	f4e7f6e3          	bgeu	a5,a4,204 <main+0x1c>
 2bc:	fe0407a3          	sb	zero,-17(s0)
 2c0:	0a00006f          	j	360 <main+0x178>
 2c4:	fe040723          	sb	zero,-18(s0)
 2c8:	0800006f          	j	348 <main+0x160>
 2cc:	fef44783          	lbu	a5,-17(s0)
 2d0:	0ff7f793          	zext.b	a5,a5
 2d4:	00078613          	mv	a2,a5
 2d8:	00000693          	li	a3,0
 2dc:	fee44783          	lbu	a5,-18(s0)
 2e0:	0ff7f793          	zext.b	a5,a5
 2e4:	00078813          	mv	a6,a5
 2e8:	00000893          	li	a7,0
 2ec:	fef44e03          	lbu	t3,-17(s0)
 2f0:	fee44e83          	lbu	t4,-18(s0)
 2f4:	01060733          	add	a4,a2,a6
 2f8:	00070313          	mv	t1,a4
 2fc:	00c33333          	sltu	t1,t1,a2
 300:	011687b3          	add	a5,a3,a7
 304:	00f30333          	add	t1,t1,a5
 308:	00030793          	mv	a5,t1
 30c:	00070313          	mv	t1,a4
 310:	00078393          	mv	t2,a5
 314:	000e0793          	mv	a5,t3
 318:	00279793          	sll	a5,a5,0x2
 31c:	01c787b3          	add	a5,a5,t3
 320:	00179793          	sll	a5,a5,0x1
 324:	01d787b3          	add	a5,a5,t4
 328:	00379793          	sll	a5,a5,0x3
 32c:	ff078793          	add	a5,a5,-16
 330:	008787b3          	add	a5,a5,s0
 334:	9a67ac23          	sw	t1,-1608(a5)
 338:	9a77ae23          	sw	t2,-1604(a5)
 33c:	fee44783          	lbu	a5,-18(s0)
 340:	00178793          	add	a5,a5,1
 344:	fef40723          	sb	a5,-18(s0)
 348:	fee44703          	lbu	a4,-18(s0)
 34c:	00900793          	li	a5,9
 350:	f6e7fee3          	bgeu	a5,a4,2cc <main+0xe4>
 354:	fef44783          	lbu	a5,-17(s0)
 358:	00178793          	add	a5,a5,1
 35c:	fef407a3          	sb	a5,-17(s0)
 360:	fef44703          	lbu	a4,-17(s0)
 364:	00900793          	li	a5,9
 368:	f4e7fee3          	bgeu	a5,a4,2c4 <main+0xdc>
 36c:	fe0407a3          	sb	zero,-17(s0)
 370:	0700006f          	j	3e0 <main+0x1f8>
 374:	fe040723          	sb	zero,-18(s0)
 378:	0500006f          	j	3c8 <main+0x1e0>
 37c:	fef44703          	lbu	a4,-17(s0)
 380:	fee44603          	lbu	a2,-18(s0)
 384:	fffff7b7          	lui	a5,0xfffff
 388:	ff078793          	add	a5,a5,-16 # ffffeff0 <memory_size+0xdfffeff0>
 38c:	008786b3          	add	a3,a5,s0
 390:	00070793          	mv	a5,a4
 394:	00279793          	sll	a5,a5,0x2
 398:	00e787b3          	add	a5,a5,a4
 39c:	00179793          	sll	a5,a5,0x1
 3a0:	00c787b3          	add	a5,a5,a2
 3a4:	00379793          	sll	a5,a5,0x3
 3a8:	00f687b3          	add	a5,a3,a5
 3ac:	00000693          	li	a3,0
 3b0:	00000713          	li	a4,0
 3b4:	68d7ac23          	sw	a3,1688(a5)
 3b8:	68e7ae23          	sw	a4,1692(a5)
 3bc:	fee44783          	lbu	a5,-18(s0)
 3c0:	00178793          	add	a5,a5,1
 3c4:	fef40723          	sb	a5,-18(s0)
 3c8:	fee44703          	lbu	a4,-18(s0)
 3cc:	00900793          	li	a5,9
 3d0:	fae7f6e3          	bgeu	a5,a4,37c <main+0x194>
 3d4:	fef44783          	lbu	a5,-17(s0)
 3d8:	00178793          	add	a5,a5,1
 3dc:	fef407a3          	sb	a5,-17(s0)
 3e0:	fef44703          	lbu	a4,-17(s0)
 3e4:	00900793          	li	a5,9
 3e8:	f8e7f6e3          	bgeu	a5,a4,374 <main+0x18c>
 3ec:	fe0407a3          	sb	zero,-17(s0)
 3f0:	1600006f          	j	550 <main+0x368>
 3f4:	fe040723          	sb	zero,-18(s0)
 3f8:	1400006f          	j	538 <main+0x350>
 3fc:	fe0406a3          	sb	zero,-19(s0)
 400:	1200006f          	j	520 <main+0x338>
 404:	fef44703          	lbu	a4,-17(s0)
 408:	fee44603          	lbu	a2,-18(s0)
 40c:	fffff7b7          	lui	a5,0xfffff
 410:	ff078793          	add	a5,a5,-16 # ffffeff0 <memory_size+0xdfffeff0>
 414:	008786b3          	add	a3,a5,s0
 418:	00070793          	mv	a5,a4
 41c:	00279793          	sll	a5,a5,0x2
 420:	00e787b3          	add	a5,a5,a4
 424:	00179793          	sll	a5,a5,0x1
 428:	00c787b3          	add	a5,a5,a2
 42c:	00379793          	sll	a5,a5,0x3
 430:	00f687b3          	add	a5,a3,a5
 434:	6987a803          	lw	a6,1688(a5)
 438:	69c7a883          	lw	a7,1692(a5)
 43c:	fef44703          	lbu	a4,-17(s0)
 440:	fed44683          	lbu	a3,-19(s0)
 444:	00070793          	mv	a5,a4
 448:	00279793          	sll	a5,a5,0x2
 44c:	00e787b3          	add	a5,a5,a4
 450:	00179793          	sll	a5,a5,0x1
 454:	00d787b3          	add	a5,a5,a3
 458:	00379793          	sll	a5,a5,0x3
 45c:	ff078793          	add	a5,a5,-16
 460:	008787b3          	add	a5,a5,s0
 464:	cd87a603          	lw	a2,-808(a5)
 468:	cdc7a683          	lw	a3,-804(a5)
 46c:	fed44703          	lbu	a4,-19(s0)
 470:	fee44303          	lbu	t1,-18(s0)
 474:	00070793          	mv	a5,a4
 478:	00279793          	sll	a5,a5,0x2
 47c:	00e787b3          	add	a5,a5,a4
 480:	00179793          	sll	a5,a5,0x1
 484:	006787b3          	add	a5,a5,t1
 488:	00379793          	sll	a5,a5,0x3
 48c:	ff078793          	add	a5,a5,-16
 490:	008787b3          	add	a5,a5,s0
 494:	9b87a703          	lw	a4,-1608(a5)
 498:	9bc7a783          	lw	a5,-1604(a5)
 49c:	02e68e33          	mul	t3,a3,a4
 4a0:	02c78333          	mul	t1,a5,a2
 4a4:	006e0333          	add	t1,t3,t1
 4a8:	02e60e33          	mul	t3,a2,a4
 4ac:	02e635b3          	mulhu	a1,a2,a4
 4b0:	000e0513          	mv	a0,t3
 4b4:	00b307b3          	add	a5,t1,a1
 4b8:	00078593          	mv	a1,a5
 4bc:	fef44303          	lbu	t1,-17(s0)
 4c0:	fee44e03          	lbu	t3,-18(s0)
 4c4:	00a80733          	add	a4,a6,a0
 4c8:	00070693          	mv	a3,a4
 4cc:	0106b6b3          	sltu	a3,a3,a6
 4d0:	00b887b3          	add	a5,a7,a1
 4d4:	00f686b3          	add	a3,a3,a5
 4d8:	00068793          	mv	a5,a3
 4dc:	00070613          	mv	a2,a4
 4e0:	00078693          	mv	a3,a5
 4e4:	fffff7b7          	lui	a5,0xfffff
 4e8:	ff078793          	add	a5,a5,-16 # ffffeff0 <memory_size+0xdfffeff0>
 4ec:	00878733          	add	a4,a5,s0
 4f0:	00030793          	mv	a5,t1
 4f4:	00279793          	sll	a5,a5,0x2
 4f8:	006787b3          	add	a5,a5,t1
 4fc:	00179793          	sll	a5,a5,0x1
 500:	01c787b3          	add	a5,a5,t3
 504:	00379793          	sll	a5,a5,0x3
 508:	00f707b3          	add	a5,a4,a5
 50c:	68c7ac23          	sw	a2,1688(a5)
 510:	68d7ae23          	sw	a3,1692(a5)
 514:	fed44783          	lbu	a5,-19(s0)
 518:	00178793          	add	a5,a5,1
 51c:	fef406a3          	sb	a5,-19(s0)
 520:	fed44703          	lbu	a4,-19(s0)
 524:	00900793          	li	a5,9
 528:	ece7fee3          	bgeu	a5,a4,404 <main+0x21c>
 52c:	fee44783          	lbu	a5,-18(s0)
 530:	00178793          	add	a5,a5,1
 534:	fef40723          	sb	a5,-18(s0)
 538:	fee44703          	lbu	a4,-18(s0)
 53c:	00900793          	li	a5,9
 540:	eae7fee3          	bgeu	a5,a4,3fc <main+0x214>
 544:	fef44783          	lbu	a5,-17(s0)
 548:	00178793          	add	a5,a5,1
 54c:	fef407a3          	sb	a5,-17(s0)
 550:	fef44703          	lbu	a4,-17(s0)
 554:	00900793          	li	a5,9
 558:	e8e7fee3          	bgeu	a5,a4,3f4 <main+0x20c>
 55c:	fe0407a3          	sb	zero,-17(s0)
 560:	0b00006f          	j	610 <main+0x428>
 564:	fe040723          	sb	zero,-18(s0)
 568:	0900006f          	j	5f8 <main+0x410>
 56c:	fef44703          	lbu	a4,-17(s0)
 570:	fee44683          	lbu	a3,-18(s0)
 574:	00070793          	mv	a5,a4
 578:	00279793          	sll	a5,a5,0x2
 57c:	00e787b3          	add	a5,a5,a4
 580:	00179793          	sll	a5,a5,0x1
 584:	00d787b3          	add	a5,a5,a3
 588:	00379793          	sll	a5,a5,0x3
 58c:	ff078793          	add	a5,a5,-16
 590:	008787b3          	add	a5,a5,s0
 594:	9b87a603          	lw	a2,-1608(a5)
 598:	9bc7a683          	lw	a3,-1604(a5)
 59c:	fef44703          	lbu	a4,-17(s0)
 5a0:	fee44503          	lbu	a0,-18(s0)
 5a4:	fffff7b7          	lui	a5,0xfffff
 5a8:	ff078793          	add	a5,a5,-16 # ffffeff0 <memory_size+0xdfffeff0>
 5ac:	008785b3          	add	a1,a5,s0
 5b0:	00070793          	mv	a5,a4
 5b4:	00279793          	sll	a5,a5,0x2
 5b8:	00e787b3          	add	a5,a5,a4
 5bc:	00179793          	sll	a5,a5,0x1
 5c0:	00a787b3          	add	a5,a5,a0
 5c4:	00379793          	sll	a5,a5,0x3
 5c8:	00f587b3          	add	a5,a1,a5
 5cc:	6987a703          	lw	a4,1688(a5)
 5d0:	69c7a783          	lw	a5,1692(a5)
 5d4:	00060513          	mv	a0,a2
 5d8:	00070593          	mv	a1,a4
 5dc:	00b51463          	bne	a0,a1,5e4 <main+0x3fc>
 5e0:	00f68663          	beq	a3,a5,5ec <main+0x404>
 5e4:	00100793          	li	a5,1
 5e8:	fef40623          	sb	a5,-20(s0)
 5ec:	fee44783          	lbu	a5,-18(s0)
 5f0:	00178793          	add	a5,a5,1
 5f4:	fef40723          	sb	a5,-18(s0)
 5f8:	fee44703          	lbu	a4,-18(s0)
 5fc:	00900793          	li	a5,9
 600:	f6e7f6e3          	bgeu	a5,a4,56c <main+0x384>
 604:	fef44783          	lbu	a5,-17(s0)
 608:	00178793          	add	a5,a5,1
 60c:	fef407a3          	sb	a5,-17(s0)
 610:	fef44703          	lbu	a4,-17(s0)
 614:	00900793          	li	a5,9
 618:	f4e7f6e3          	bgeu	a5,a4,564 <main+0x37c>
 61c:	fe040623          	sb	zero,-20(s0)
 620:	00000793          	li	a5,0
 624:	00078513          	mv	a0,a5
 628:	19010113          	add	sp,sp,400
 62c:	7ec12403          	lw	s0,2028(sp)
 630:	7f010113          	add	sp,sp,2032
 634:	00008067          	ret
