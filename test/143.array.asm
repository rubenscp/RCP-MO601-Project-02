
test/143.array.riscv:     file format elf32-littleriscv


Disassembly of section .text:

000001d8 <_start>:
 1d8:	00500137          	lui	sp,0x500
 1dc:	00c000ef          	jal	1e8 <main>
 1e0:	200002b7          	lui	t0,0x20000
 1e4:	00100073          	ebreak

000001e8 <main>:
 1e8:	fb010113          	add	sp,sp,-80 # 4fffb0 <__BSS_END__+0x4fceb0>
 1ec:	04112623          	sw	ra,76(sp)
 1f0:	04812423          	sw	s0,72(sp)
 1f4:	05010413          	add	s0,sp,80
 1f8:	fe042623          	sw	zero,-20(s0)
 1fc:	fe042423          	sw	zero,-24(s0)
 200:	fe042223          	sw	zero,-28(s0)
 204:	fdf00793          	li	a5,-33
 208:	fcf40623          	sb	a5,-52(s0)
 20c:	04400793          	li	a5,68
 210:	fcf406a3          	sb	a5,-51(s0)
 214:	01200793          	li	a5,18
 218:	fcf40723          	sb	a5,-50(s0)
 21c:	04500793          	li	a5,69
 220:	fcf407a3          	sb	a5,-49(s0)
 224:	f8000793          	li	a5,-128
 228:	fcf40823          	sb	a5,-48(s0)
 22c:	fdd00793          	li	a5,-35
 230:	fcf408a3          	sb	a5,-47(s0)
 234:	04300793          	li	a5,67
 238:	fcf40923          	sb	a5,-46(s0)
 23c:	06700793          	li	a5,103
 240:	fcf409a3          	sb	a5,-45(s0)
 244:	fc040a23          	sb	zero,-44(s0)
 248:	02300793          	li	a5,35
 24c:	fcf40aa3          	sb	a5,-43(s0)
 250:	00100793          	li	a5,1
 254:	fcf40b23          	sb	a5,-42(s0)
 258:	ff700793          	li	a5,-9
 25c:	fcf40ba3          	sb	a5,-41(s0)
 260:	04500793          	li	a5,69
 264:	fcf40c23          	sb	a5,-40(s0)
 268:	f8600793          	li	a5,-122
 26c:	fcf40ca3          	sb	a5,-39(s0)
 270:	f9600793          	li	a5,-106
 274:	fcf40d23          	sb	a5,-38(s0)
 278:	05200793          	li	a5,82
 27c:	fcf40da3          	sb	a5,-37(s0)
 280:	fff00793          	li	a5,-1
 284:	fcf40e23          	sb	a5,-36(s0)
 288:	05600793          	li	a5,86
 28c:	fcf40ea3          	sb	a5,-35(s0)
 290:	02300793          	li	a5,35
 294:	fcf40f23          	sb	a5,-34(s0)
 298:	01000793          	li	a5,16
 29c:	fcf40fa3          	sb	a5,-33(s0)
 2a0:	00500793          	li	a5,5
 2a4:	fef40023          	sb	a5,-32(s0)
 2a8:	fdf00793          	li	a5,-33
 2ac:	faf40a23          	sb	a5,-76(s0)
 2b0:	04400793          	li	a5,68
 2b4:	faf40aa3          	sb	a5,-75(s0)
 2b8:	01200793          	li	a5,18
 2bc:	faf40b23          	sb	a5,-74(s0)
 2c0:	04500793          	li	a5,69
 2c4:	faf40ba3          	sb	a5,-73(s0)
 2c8:	f8000793          	li	a5,-128
 2cc:	faf40c23          	sb	a5,-72(s0)
 2d0:	fdd00793          	li	a5,-35
 2d4:	faf40ca3          	sb	a5,-71(s0)
 2d8:	04300793          	li	a5,67
 2dc:	faf40d23          	sb	a5,-70(s0)
 2e0:	06700793          	li	a5,103
 2e4:	faf40da3          	sb	a5,-69(s0)
 2e8:	fa040e23          	sb	zero,-68(s0)
 2ec:	02300793          	li	a5,35
 2f0:	faf40ea3          	sb	a5,-67(s0)
 2f4:	00100793          	li	a5,1
 2f8:	faf40f23          	sb	a5,-66(s0)
 2fc:	ff700793          	li	a5,-9
 300:	faf40fa3          	sb	a5,-65(s0)
 304:	04500793          	li	a5,69
 308:	fcf40023          	sb	a5,-64(s0)
 30c:	f8600793          	li	a5,-122
 310:	fcf400a3          	sb	a5,-63(s0)
 314:	f9600793          	li	a5,-106
 318:	fcf40123          	sb	a5,-62(s0)
 31c:	05200793          	li	a5,82
 320:	fcf401a3          	sb	a5,-61(s0)
 324:	fff00793          	li	a5,-1
 328:	fcf40223          	sb	a5,-60(s0)
 32c:	05600793          	li	a5,86
 330:	fcf402a3          	sb	a5,-59(s0)
 334:	02300793          	li	a5,35
 338:	fcf40323          	sb	a5,-58(s0)
 33c:	01000793          	li	a5,16
 340:	fcf403a3          	sb	a5,-57(s0)
 344:	00500793          	li	a5,5
 348:	fcf40423          	sb	a5,-56(s0)
 34c:	fcc40793          	add	a5,s0,-52
 350:	01500593          	li	a1,21
 354:	00078513          	mv	a0,a5
 358:	0d4000ef          	jal	42c <scBubbleSort>
 35c:	fb440793          	add	a5,s0,-76
 360:	01500593          	li	a1,21
 364:	00078513          	mv	a0,a5
 368:	1a8000ef          	jal	510 <ucBubbleSort>
 36c:	fe042423          	sw	zero,-24(s0)
 370:	fe042623          	sw	zero,-20(s0)
 374:	0400006f          	j	3b4 <main+0x1cc>
 378:	fec42783          	lw	a5,-20(s0)
 37c:	ff078793          	add	a5,a5,-16
 380:	008787b3          	add	a5,a5,s0
 384:	fdc78703          	lb	a4,-36(a5)
 388:	fec42783          	lw	a5,-20(s0)
 38c:	00178793          	add	a5,a5,1
 390:	ff078793          	add	a5,a5,-16
 394:	008787b3          	add	a5,a5,s0
 398:	fdc78783          	lb	a5,-36(a5)
 39c:	00e7d663          	bge	a5,a4,3a8 <main+0x1c0>
 3a0:	00100793          	li	a5,1
 3a4:	fef42423          	sw	a5,-24(s0)
 3a8:	fec42783          	lw	a5,-20(s0)
 3ac:	00178793          	add	a5,a5,1
 3b0:	fef42623          	sw	a5,-20(s0)
 3b4:	fec42703          	lw	a4,-20(s0)
 3b8:	01300793          	li	a5,19
 3bc:	fae7dee3          	bge	a5,a4,378 <main+0x190>
 3c0:	fe042223          	sw	zero,-28(s0)
 3c4:	fe042623          	sw	zero,-20(s0)
 3c8:	0400006f          	j	408 <main+0x220>
 3cc:	fec42783          	lw	a5,-20(s0)
 3d0:	ff078793          	add	a5,a5,-16
 3d4:	008787b3          	add	a5,a5,s0
 3d8:	fc47c703          	lbu	a4,-60(a5)
 3dc:	fec42783          	lw	a5,-20(s0)
 3e0:	00178793          	add	a5,a5,1
 3e4:	ff078793          	add	a5,a5,-16
 3e8:	008787b3          	add	a5,a5,s0
 3ec:	fc47c783          	lbu	a5,-60(a5)
 3f0:	00e7f663          	bgeu	a5,a4,3fc <main+0x214>
 3f4:	00100793          	li	a5,1
 3f8:	fef42223          	sw	a5,-28(s0)
 3fc:	fec42783          	lw	a5,-20(s0)
 400:	00178793          	add	a5,a5,1
 404:	fef42623          	sw	a5,-20(s0)
 408:	fec42703          	lw	a4,-20(s0)
 40c:	01300793          	li	a5,19
 410:	fae7dee3          	bge	a5,a4,3cc <main+0x1e4>
 414:	00000793          	li	a5,0
 418:	00078513          	mv	a0,a5
 41c:	04c12083          	lw	ra,76(sp)
 420:	04812403          	lw	s0,72(sp)
 424:	05010113          	add	sp,sp,80
 428:	00008067          	ret

0000042c <scBubbleSort>:
 42c:	fd010113          	add	sp,sp,-48
 430:	02812623          	sw	s0,44(sp)
 434:	03010413          	add	s0,sp,48
 438:	fca42e23          	sw	a0,-36(s0)
 43c:	fcb42c23          	sw	a1,-40(s0)
 440:	fd842783          	lw	a5,-40(s0)
 444:	fff78793          	add	a5,a5,-1
 448:	fef42623          	sw	a5,-20(s0)
 44c:	0a80006f          	j	4f4 <scBubbleSort+0xc8>
 450:	fe042423          	sw	zero,-24(s0)
 454:	0880006f          	j	4dc <scBubbleSort+0xb0>
 458:	fe842783          	lw	a5,-24(s0)
 45c:	00178793          	add	a5,a5,1
 460:	fdc42703          	lw	a4,-36(s0)
 464:	00f707b3          	add	a5,a4,a5
 468:	00078703          	lb	a4,0(a5)
 46c:	fe842783          	lw	a5,-24(s0)
 470:	fdc42683          	lw	a3,-36(s0)
 474:	00f687b3          	add	a5,a3,a5
 478:	00078783          	lb	a5,0(a5)
 47c:	04f75a63          	bge	a4,a5,4d0 <scBubbleSort+0xa4>
 480:	fe842783          	lw	a5,-24(s0)
 484:	00178793          	add	a5,a5,1
 488:	fdc42703          	lw	a4,-36(s0)
 48c:	00f707b3          	add	a5,a4,a5
 490:	0007c783          	lbu	a5,0(a5)
 494:	fef403a3          	sb	a5,-25(s0)
 498:	fe842783          	lw	a5,-24(s0)
 49c:	fdc42703          	lw	a4,-36(s0)
 4a0:	00f70733          	add	a4,a4,a5
 4a4:	fe842783          	lw	a5,-24(s0)
 4a8:	00178793          	add	a5,a5,1
 4ac:	fdc42683          	lw	a3,-36(s0)
 4b0:	00f687b3          	add	a5,a3,a5
 4b4:	00070703          	lb	a4,0(a4)
 4b8:	00e78023          	sb	a4,0(a5)
 4bc:	fe842783          	lw	a5,-24(s0)
 4c0:	fdc42703          	lw	a4,-36(s0)
 4c4:	00f707b3          	add	a5,a4,a5
 4c8:	fe744703          	lbu	a4,-25(s0)
 4cc:	00e78023          	sb	a4,0(a5)
 4d0:	fe842783          	lw	a5,-24(s0)
 4d4:	00178793          	add	a5,a5,1
 4d8:	fef42423          	sw	a5,-24(s0)
 4dc:	fe842703          	lw	a4,-24(s0)
 4e0:	fec42783          	lw	a5,-20(s0)
 4e4:	f6f74ae3          	blt	a4,a5,458 <scBubbleSort+0x2c>
 4e8:	fec42783          	lw	a5,-20(s0)
 4ec:	fff78793          	add	a5,a5,-1
 4f0:	fef42623          	sw	a5,-20(s0)
 4f4:	fec42783          	lw	a5,-20(s0)
 4f8:	f407dce3          	bgez	a5,450 <scBubbleSort+0x24>
 4fc:	00000013          	nop
 500:	00000013          	nop
 504:	02c12403          	lw	s0,44(sp)
 508:	03010113          	add	sp,sp,48
 50c:	00008067          	ret

00000510 <ucBubbleSort>:
 510:	fd010113          	add	sp,sp,-48
 514:	02812623          	sw	s0,44(sp)
 518:	03010413          	add	s0,sp,48
 51c:	fca42e23          	sw	a0,-36(s0)
 520:	fcb42c23          	sw	a1,-40(s0)
 524:	fd842783          	lw	a5,-40(s0)
 528:	fff78793          	add	a5,a5,-1
 52c:	fef42623          	sw	a5,-20(s0)
 530:	0a80006f          	j	5d8 <ucBubbleSort+0xc8>
 534:	fe042423          	sw	zero,-24(s0)
 538:	0880006f          	j	5c0 <ucBubbleSort+0xb0>
 53c:	fe842783          	lw	a5,-24(s0)
 540:	00178793          	add	a5,a5,1
 544:	fdc42703          	lw	a4,-36(s0)
 548:	00f707b3          	add	a5,a4,a5
 54c:	0007c703          	lbu	a4,0(a5)
 550:	fe842783          	lw	a5,-24(s0)
 554:	fdc42683          	lw	a3,-36(s0)
 558:	00f687b3          	add	a5,a3,a5
 55c:	0007c783          	lbu	a5,0(a5)
 560:	04f77a63          	bgeu	a4,a5,5b4 <ucBubbleSort+0xa4>
 564:	fe842783          	lw	a5,-24(s0)
 568:	00178793          	add	a5,a5,1
 56c:	fdc42703          	lw	a4,-36(s0)
 570:	00f707b3          	add	a5,a4,a5
 574:	0007c783          	lbu	a5,0(a5)
 578:	fef403a3          	sb	a5,-25(s0)
 57c:	fe842783          	lw	a5,-24(s0)
 580:	fdc42703          	lw	a4,-36(s0)
 584:	00f70733          	add	a4,a4,a5
 588:	fe842783          	lw	a5,-24(s0)
 58c:	00178793          	add	a5,a5,1
 590:	fdc42683          	lw	a3,-36(s0)
 594:	00f687b3          	add	a5,a3,a5
 598:	00074703          	lbu	a4,0(a4)
 59c:	00e78023          	sb	a4,0(a5)
 5a0:	fe842783          	lw	a5,-24(s0)
 5a4:	fdc42703          	lw	a4,-36(s0)
 5a8:	00f707b3          	add	a5,a4,a5
 5ac:	fe744703          	lbu	a4,-25(s0)
 5b0:	00e78023          	sb	a4,0(a5)
 5b4:	fe842783          	lw	a5,-24(s0)
 5b8:	00178793          	add	a5,a5,1
 5bc:	fef42423          	sw	a5,-24(s0)
 5c0:	fe842703          	lw	a4,-24(s0)
 5c4:	fec42783          	lw	a5,-20(s0)
 5c8:	f6f74ae3          	blt	a4,a5,53c <ucBubbleSort+0x2c>
 5cc:	fec42783          	lw	a5,-20(s0)
 5d0:	fff78793          	add	a5,a5,-1
 5d4:	fef42623          	sw	a5,-20(s0)
 5d8:	fec42783          	lw	a5,-20(s0)
 5dc:	f407dce3          	bgez	a5,534 <ucBubbleSort+0x24>
 5e0:	00000013          	nop
 5e4:	00000013          	nop
 5e8:	02c12403          	lw	s0,44(sp)
 5ec:	03010113          	add	sp,sp,48
 5f0:	00008067          	ret
