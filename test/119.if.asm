
test/119.if.riscv:     file format elf32-littleriscv


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
 1f4:	fe0407a3          	sb	zero,-17(s0)
 1f8:	fe040723          	sb	zero,-18(s0)
 1fc:	fe0406a3          	sb	zero,-19(s0)
 200:	00100793          	li	a5,1
 204:	fef40623          	sb	a5,-20(s0)
 208:	00200793          	li	a5,2
 20c:	fef41523          	sh	a5,-22(s0)
 210:	00300793          	li	a5,3
 214:	fef41423          	sh	a5,-24(s0)
 218:	00400793          	li	a5,4
 21c:	fef42223          	sw	a5,-28(s0)
 220:	00500793          	li	a5,5
 224:	fef42023          	sw	a5,-32(s0)
 228:	00600713          	li	a4,6
 22c:	00000793          	li	a5,0
 230:	fce42c23          	sw	a4,-40(s0)
 234:	fcf42e23          	sw	a5,-36(s0)
 238:	00700713          	li	a4,7
 23c:	00000793          	li	a5,0
 240:	fce42823          	sw	a4,-48(s0)
 244:	fcf42a23          	sw	a5,-44(s0)
 248:	fed40783          	lb	a5,-19(s0)
 24c:	06079a63          	bnez	a5,2c0 <main+0xd8>
 250:	fec44703          	lbu	a4,-20(s0)
 254:	00100793          	li	a5,1
 258:	06f71463          	bne	a4,a5,2c0 <main+0xd8>
 25c:	fea41703          	lh	a4,-22(s0)
 260:	00200793          	li	a5,2
 264:	04f71e63          	bne	a4,a5,2c0 <main+0xd8>
 268:	fe845703          	lhu	a4,-24(s0)
 26c:	00300793          	li	a5,3
 270:	04f71863          	bne	a4,a5,2c0 <main+0xd8>
 274:	fe442703          	lw	a4,-28(s0)
 278:	00400793          	li	a5,4
 27c:	04f71263          	bne	a4,a5,2c0 <main+0xd8>
 280:	fe042703          	lw	a4,-32(s0)
 284:	00500793          	li	a5,5
 288:	02f71c63          	bne	a4,a5,2c0 <main+0xd8>
 28c:	fd842703          	lw	a4,-40(s0)
 290:	00600793          	li	a5,6
 294:	02f71663          	bne	a4,a5,2c0 <main+0xd8>
 298:	fdc42783          	lw	a5,-36(s0)
 29c:	02079263          	bnez	a5,2c0 <main+0xd8>
 2a0:	fd042703          	lw	a4,-48(s0)
 2a4:	00700793          	li	a5,7
 2a8:	00f71c63          	bne	a4,a5,2c0 <main+0xd8>
 2ac:	fd442783          	lw	a5,-44(s0)
 2b0:	00079863          	bnez	a5,2c0 <main+0xd8>
 2b4:	fef44783          	lbu	a5,-17(s0)
 2b8:	00178793          	add	a5,a5,1
 2bc:	fef407a3          	sb	a5,-17(s0)
 2c0:	fed40783          	lb	a5,-19(s0)
 2c4:	0807c263          	bltz	a5,348 <main+0x160>
 2c8:	fec44703          	lbu	a4,-20(s0)
 2cc:	00100793          	li	a5,1
 2d0:	06e7ec63          	bltu	a5,a4,348 <main+0x160>
 2d4:	fea41703          	lh	a4,-22(s0)
 2d8:	00100793          	li	a5,1
 2dc:	06e7d663          	bge	a5,a4,348 <main+0x160>
 2e0:	fe845703          	lhu	a4,-24(s0)
 2e4:	00300793          	li	a5,3
 2e8:	06e7e063          	bltu	a5,a4,348 <main+0x160>
 2ec:	fe442703          	lw	a4,-28(s0)
 2f0:	00300793          	li	a5,3
 2f4:	04e7da63          	bge	a5,a4,348 <main+0x160>
 2f8:	fe042703          	lw	a4,-32(s0)
 2fc:	00400793          	li	a5,4
 300:	04e7f463          	bgeu	a5,a4,348 <main+0x160>
 304:	fdc42783          	lw	a5,-36(s0)
 308:	04f04063          	bgtz	a5,348 <main+0x160>
 30c:	fdc42783          	lw	a5,-36(s0)
 310:	00079863          	bnez	a5,320 <main+0x138>
 314:	fd842703          	lw	a4,-40(s0)
 318:	00600793          	li	a5,6
 31c:	02e7e663          	bltu	a5,a4,348 <main+0x160>
 320:	fd442783          	lw	a5,-44(s0)
 324:	02079263          	bnez	a5,348 <main+0x160>
 328:	fd442783          	lw	a5,-44(s0)
 32c:	00079863          	bnez	a5,33c <main+0x154>
 330:	fd042703          	lw	a4,-48(s0)
 334:	00700793          	li	a5,7
 338:	00e7e863          	bltu	a5,a4,348 <main+0x160>
 33c:	fef44783          	lbu	a5,-17(s0)
 340:	00178793          	add	a5,a5,1
 344:	fef407a3          	sb	a5,-17(s0)
 348:	fed40703          	lb	a4,-19(s0)
 34c:	fff00793          	li	a5,-1
 350:	08f74463          	blt	a4,a5,3d8 <main+0x1f0>
 354:	fec44783          	lbu	a5,-20(s0)
 358:	08078063          	beqz	a5,3d8 <main+0x1f0>
 35c:	fea41703          	lh	a4,-22(s0)
 360:	ffe00793          	li	a5,-2
 364:	06f74a63          	blt	a4,a5,3d8 <main+0x1f0>
 368:	fe845703          	lhu	a4,-24(s0)
 36c:	00200793          	li	a5,2
 370:	06e7f463          	bgeu	a5,a4,3d8 <main+0x1f0>
 374:	fe442703          	lw	a4,-28(s0)
 378:	ffd00793          	li	a5,-3
 37c:	04f74e63          	blt	a4,a5,3d8 <main+0x1f0>
 380:	fe042703          	lw	a4,-32(s0)
 384:	00400793          	li	a5,4
 388:	04e7f863          	bgeu	a5,a4,3d8 <main+0x1f0>
 38c:	fdc42703          	lw	a4,-36(s0)
 390:	fff00793          	li	a5,-1
 394:	04f74263          	blt	a4,a5,3d8 <main+0x1f0>
 398:	fdc42703          	lw	a4,-36(s0)
 39c:	fff00793          	li	a5,-1
 3a0:	00f71863          	bne	a4,a5,3b0 <main+0x1c8>
 3a4:	fd842703          	lw	a4,-40(s0)
 3a8:	ffc00793          	li	a5,-4
 3ac:	02f76663          	bltu	a4,a5,3d8 <main+0x1f0>
 3b0:	fd442783          	lw	a5,-44(s0)
 3b4:	00079c63          	bnez	a5,3cc <main+0x1e4>
 3b8:	fd442783          	lw	a5,-44(s0)
 3bc:	00079e63          	bnez	a5,3d8 <main+0x1f0>
 3c0:	fd042703          	lw	a4,-48(s0)
 3c4:	00600793          	li	a5,6
 3c8:	00e7f863          	bgeu	a5,a4,3d8 <main+0x1f0>
 3cc:	fef44783          	lbu	a5,-17(s0)
 3d0:	00178793          	add	a5,a5,1
 3d4:	fef407a3          	sb	a5,-17(s0)
 3d8:	fed40783          	lb	a5,-19(s0)
 3dc:	06079a63          	bnez	a5,450 <main+0x268>
 3e0:	fec44703          	lbu	a4,-20(s0)
 3e4:	00100793          	li	a5,1
 3e8:	06f71463          	bne	a4,a5,450 <main+0x268>
 3ec:	fea41703          	lh	a4,-22(s0)
 3f0:	00200793          	li	a5,2
 3f4:	04f71e63          	bne	a4,a5,450 <main+0x268>
 3f8:	fe845703          	lhu	a4,-24(s0)
 3fc:	00300793          	li	a5,3
 400:	04f71863          	bne	a4,a5,450 <main+0x268>
 404:	fe442703          	lw	a4,-28(s0)
 408:	00300793          	li	a5,3
 40c:	04e7c263          	blt	a5,a4,450 <main+0x268>
 410:	fe042703          	lw	a4,-32(s0)
 414:	00500793          	li	a5,5
 418:	02f71c63          	bne	a4,a5,450 <main+0x268>
 41c:	fd842703          	lw	a4,-40(s0)
 420:	00600793          	li	a5,6
 424:	02f71663          	bne	a4,a5,450 <main+0x268>
 428:	fdc42783          	lw	a5,-36(s0)
 42c:	02079263          	bnez	a5,450 <main+0x268>
 430:	fd042703          	lw	a4,-48(s0)
 434:	00700793          	li	a5,7
 438:	00f71c63          	bne	a4,a5,450 <main+0x268>
 43c:	fd442783          	lw	a5,-44(s0)
 440:	00079863          	bnez	a5,450 <main+0x268>
 444:	fee44783          	lbu	a5,-18(s0)
 448:	00178793          	add	a5,a5,1
 44c:	fef40723          	sb	a5,-18(s0)
 450:	fed40783          	lb	a5,-19(s0)
 454:	0607ce63          	bltz	a5,4d0 <main+0x2e8>
 458:	fec44703          	lbu	a4,-20(s0)
 45c:	00100793          	li	a5,1
 460:	06e7e863          	bltu	a5,a4,4d0 <main+0x2e8>
 464:	fea41703          	lh	a4,-22(s0)
 468:	00100793          	li	a5,1
 46c:	06e7d263          	bge	a5,a4,4d0 <main+0x2e8>
 470:	fe845703          	lhu	a4,-24(s0)
 474:	00300793          	li	a5,3
 478:	04e7ec63          	bltu	a5,a4,4d0 <main+0x2e8>
 47c:	fe442703          	lw	a4,-28(s0)
 480:	00300793          	li	a5,3
 484:	04e7d663          	bge	a5,a4,4d0 <main+0x2e8>
 488:	fe042703          	lw	a4,-32(s0)
 48c:	00400793          	li	a5,4
 490:	04e7f063          	bgeu	a5,a4,4d0 <main+0x2e8>
 494:	fdc42783          	lw	a5,-36(s0)
 498:	02f04c63          	bgtz	a5,4d0 <main+0x2e8>
 49c:	fdc42783          	lw	a5,-36(s0)
 4a0:	00079863          	bnez	a5,4b0 <main+0x2c8>
 4a4:	fd842703          	lw	a4,-40(s0)
 4a8:	00600793          	li	a5,6
 4ac:	02e7e263          	bltu	a5,a4,4d0 <main+0x2e8>
 4b0:	fd042703          	lw	a4,-48(s0)
 4b4:	00800793          	li	a5,8
 4b8:	00f71c63          	bne	a4,a5,4d0 <main+0x2e8>
 4bc:	fd442783          	lw	a5,-44(s0)
 4c0:	00079863          	bnez	a5,4d0 <main+0x2e8>
 4c4:	fee44783          	lbu	a5,-18(s0)
 4c8:	00178793          	add	a5,a5,1
 4cc:	fef40723          	sb	a5,-18(s0)
 4d0:	fed40703          	lb	a4,-19(s0)
 4d4:	fff00793          	li	a5,-1
 4d8:	08f71463          	bne	a4,a5,560 <main+0x378>
 4dc:	fec44783          	lbu	a5,-20(s0)
 4e0:	08078063          	beqz	a5,560 <main+0x378>
 4e4:	fea41703          	lh	a4,-22(s0)
 4e8:	ffe00793          	li	a5,-2
 4ec:	06f74a63          	blt	a4,a5,560 <main+0x378>
 4f0:	fe845703          	lhu	a4,-24(s0)
 4f4:	00200793          	li	a5,2
 4f8:	06e7f463          	bgeu	a5,a4,560 <main+0x378>
 4fc:	fe442703          	lw	a4,-28(s0)
 500:	ffd00793          	li	a5,-3
 504:	04f74e63          	blt	a4,a5,560 <main+0x378>
 508:	fe042703          	lw	a4,-32(s0)
 50c:	00400793          	li	a5,4
 510:	04e7f863          	bgeu	a5,a4,560 <main+0x378>
 514:	fdc42703          	lw	a4,-36(s0)
 518:	fff00793          	li	a5,-1
 51c:	04f74263          	blt	a4,a5,560 <main+0x378>
 520:	fdc42703          	lw	a4,-36(s0)
 524:	fff00793          	li	a5,-1
 528:	00f71863          	bne	a4,a5,538 <main+0x350>
 52c:	fd842703          	lw	a4,-40(s0)
 530:	ffc00793          	li	a5,-4
 534:	02f76663          	bltu	a4,a5,560 <main+0x378>
 538:	fd442783          	lw	a5,-44(s0)
 53c:	00079c63          	bnez	a5,554 <main+0x36c>
 540:	fd442783          	lw	a5,-44(s0)
 544:	00079e63          	bnez	a5,560 <main+0x378>
 548:	fd042703          	lw	a4,-48(s0)
 54c:	00600793          	li	a5,6
 550:	00e7f863          	bgeu	a5,a4,560 <main+0x378>
 554:	fee44783          	lbu	a5,-18(s0)
 558:	00178793          	add	a5,a5,1
 55c:	fef40723          	sb	a5,-18(s0)
 560:	fe0407a3          	sb	zero,-17(s0)
 564:	fe040723          	sb	zero,-18(s0)
 568:	00000793          	li	a5,0
 56c:	00078513          	mv	a0,a5
 570:	02c12403          	lw	s0,44(sp)
 574:	03010113          	add	sp,sp,48
 578:	00008067          	ret
