
test/121.loop.riscv:     file format elf32-littleriscv


Disassembly of section .text:

000001d8 <_start>:
 1d8:	00500137          	lui	sp,0x500
 1dc:	00c000ef          	jal	1e8 <main>
 1e0:	200002b7          	lui	t0,0x20000
 1e4:	00100073          	ebreak

000001e8 <main>:
 1e8:	fc010113          	add	sp,sp,-64 # 4fffc0 <__BSS_END__+0x4fcec0>
 1ec:	02812e23          	sw	s0,60(sp)
 1f0:	04010413          	add	s0,sp,64
 1f4:	00000793          	li	a5,0
 1f8:	00000813          	li	a6,0
 1fc:	fef42423          	sw	a5,-24(s0)
 200:	ff042623          	sw	a6,-20(s0)
 204:	00500793          	li	a5,5
 208:	fef403a3          	sb	a5,-25(s0)
 20c:	0340006f          	j	240 <main+0x58>
 210:	fe842603          	lw	a2,-24(s0)
 214:	fec42683          	lw	a3,-20(s0)
 218:	00100513          	li	a0,1
 21c:	00000593          	li	a1,0
 220:	00a60733          	add	a4,a2,a0
 224:	00070813          	mv	a6,a4
 228:	00c83833          	sltu	a6,a6,a2
 22c:	00b687b3          	add	a5,a3,a1
 230:	00f806b3          	add	a3,a6,a5
 234:	00068793          	mv	a5,a3
 238:	fee42423          	sw	a4,-24(s0)
 23c:	fef42623          	sw	a5,-20(s0)
 240:	fe744783          	lbu	a5,-25(s0)
 244:	fff78713          	add	a4,a5,-1
 248:	fee403a3          	sb	a4,-25(s0)
 24c:	fc0792e3          	bnez	a5,210 <main+0x28>
 250:	fe0403a3          	sb	zero,-25(s0)
 254:	00500793          	li	a5,5
 258:	fef40323          	sb	a5,-26(s0)
 25c:	0340006f          	j	290 <main+0xa8>
 260:	fe842603          	lw	a2,-24(s0)
 264:	fec42683          	lw	a3,-20(s0)
 268:	00100513          	li	a0,1
 26c:	00000593          	li	a1,0
 270:	00a60733          	add	a4,a2,a0
 274:	00070813          	mv	a6,a4
 278:	00c83833          	sltu	a6,a6,a2
 27c:	00b687b3          	add	a5,a3,a1
 280:	00f806b3          	add	a3,a6,a5
 284:	00068793          	mv	a5,a3
 288:	fee42423          	sw	a4,-24(s0)
 28c:	fef42623          	sw	a5,-20(s0)
 290:	fe640783          	lb	a5,-26(s0)
 294:	0ff7f713          	zext.b	a4,a5
 298:	fff70713          	add	a4,a4,-1
 29c:	0ff77713          	zext.b	a4,a4
 2a0:	fee40323          	sb	a4,-26(s0)
 2a4:	fa079ee3          	bnez	a5,260 <main+0x78>
 2a8:	fe040323          	sb	zero,-26(s0)
 2ac:	00500793          	li	a5,5
 2b0:	fef41223          	sh	a5,-28(s0)
 2b4:	0340006f          	j	2e8 <main+0x100>
 2b8:	fe842603          	lw	a2,-24(s0)
 2bc:	fec42683          	lw	a3,-20(s0)
 2c0:	00100513          	li	a0,1
 2c4:	00000593          	li	a1,0
 2c8:	00a60733          	add	a4,a2,a0
 2cc:	00070813          	mv	a6,a4
 2d0:	00c83833          	sltu	a6,a6,a2
 2d4:	00b687b3          	add	a5,a3,a1
 2d8:	00f806b3          	add	a3,a6,a5
 2dc:	00068793          	mv	a5,a3
 2e0:	fee42423          	sw	a4,-24(s0)
 2e4:	fef42623          	sw	a5,-20(s0)
 2e8:	fe445783          	lhu	a5,-28(s0)
 2ec:	fff78713          	add	a4,a5,-1
 2f0:	fee41223          	sh	a4,-28(s0)
 2f4:	fc0792e3          	bnez	a5,2b8 <main+0xd0>
 2f8:	fe041223          	sh	zero,-28(s0)
 2fc:	00500793          	li	a5,5
 300:	fef41123          	sh	a5,-30(s0)
 304:	0340006f          	j	338 <main+0x150>
 308:	fe842603          	lw	a2,-24(s0)
 30c:	fec42683          	lw	a3,-20(s0)
 310:	00100513          	li	a0,1
 314:	00000593          	li	a1,0
 318:	00a60733          	add	a4,a2,a0
 31c:	00070813          	mv	a6,a4
 320:	00c83833          	sltu	a6,a6,a2
 324:	00b687b3          	add	a5,a3,a1
 328:	00f806b3          	add	a3,a6,a5
 32c:	00068793          	mv	a5,a3
 330:	fee42423          	sw	a4,-24(s0)
 334:	fef42623          	sw	a5,-20(s0)
 338:	fe241783          	lh	a5,-30(s0)
 33c:	01079713          	sll	a4,a5,0x10
 340:	01075713          	srl	a4,a4,0x10
 344:	fff70713          	add	a4,a4,-1
 348:	01071713          	sll	a4,a4,0x10
 34c:	01075713          	srl	a4,a4,0x10
 350:	fee41123          	sh	a4,-30(s0)
 354:	fa079ae3          	bnez	a5,308 <main+0x120>
 358:	fe041123          	sh	zero,-30(s0)
 35c:	00500793          	li	a5,5
 360:	fcf42e23          	sw	a5,-36(s0)
 364:	0340006f          	j	398 <main+0x1b0>
 368:	fe842603          	lw	a2,-24(s0)
 36c:	fec42683          	lw	a3,-20(s0)
 370:	00100513          	li	a0,1
 374:	00000593          	li	a1,0
 378:	00a60733          	add	a4,a2,a0
 37c:	00070813          	mv	a6,a4
 380:	00c83833          	sltu	a6,a6,a2
 384:	00b687b3          	add	a5,a3,a1
 388:	00f806b3          	add	a3,a6,a5
 38c:	00068793          	mv	a5,a3
 390:	fee42423          	sw	a4,-24(s0)
 394:	fef42623          	sw	a5,-20(s0)
 398:	fdc42783          	lw	a5,-36(s0)
 39c:	fff78713          	add	a4,a5,-1
 3a0:	fce42e23          	sw	a4,-36(s0)
 3a4:	fc0792e3          	bnez	a5,368 <main+0x180>
 3a8:	fc042e23          	sw	zero,-36(s0)
 3ac:	00500793          	li	a5,5
 3b0:	fcf42c23          	sw	a5,-40(s0)
 3b4:	0340006f          	j	3e8 <main+0x200>
 3b8:	fe842603          	lw	a2,-24(s0)
 3bc:	fec42683          	lw	a3,-20(s0)
 3c0:	00100513          	li	a0,1
 3c4:	00000593          	li	a1,0
 3c8:	00a60733          	add	a4,a2,a0
 3cc:	00070813          	mv	a6,a4
 3d0:	00c83833          	sltu	a6,a6,a2
 3d4:	00b687b3          	add	a5,a3,a1
 3d8:	00f806b3          	add	a3,a6,a5
 3dc:	00068793          	mv	a5,a3
 3e0:	fee42423          	sw	a4,-24(s0)
 3e4:	fef42623          	sw	a5,-20(s0)
 3e8:	fd842783          	lw	a5,-40(s0)
 3ec:	fff78713          	add	a4,a5,-1
 3f0:	fce42c23          	sw	a4,-40(s0)
 3f4:	fc0792e3          	bnez	a5,3b8 <main+0x1d0>
 3f8:	fc042c23          	sw	zero,-40(s0)
 3fc:	00500713          	li	a4,5
 400:	00000793          	li	a5,0
 404:	fce42823          	sw	a4,-48(s0)
 408:	fcf42a23          	sw	a5,-44(s0)
 40c:	0340006f          	j	440 <main+0x258>
 410:	fe842603          	lw	a2,-24(s0)
 414:	fec42683          	lw	a3,-20(s0)
 418:	00100513          	li	a0,1
 41c:	00000593          	li	a1,0
 420:	00a60733          	add	a4,a2,a0
 424:	00070813          	mv	a6,a4
 428:	00c83833          	sltu	a6,a6,a2
 42c:	00b687b3          	add	a5,a3,a1
 430:	00f806b3          	add	a3,a6,a5
 434:	00068793          	mv	a5,a3
 438:	fee42423          	sw	a4,-24(s0)
 43c:	fef42623          	sw	a5,-20(s0)
 440:	fd042703          	lw	a4,-48(s0)
 444:	fd442783          	lw	a5,-44(s0)
 448:	fff00513          	li	a0,-1
 44c:	fff00593          	li	a1,-1
 450:	00a70633          	add	a2,a4,a0
 454:	00060813          	mv	a6,a2
 458:	00e83833          	sltu	a6,a6,a4
 45c:	00b786b3          	add	a3,a5,a1
 460:	00d805b3          	add	a1,a6,a3
 464:	00058693          	mv	a3,a1
 468:	fcc42823          	sw	a2,-48(s0)
 46c:	fcd42a23          	sw	a3,-44(s0)
 470:	00070693          	mv	a3,a4
 474:	00f6e6b3          	or	a3,a3,a5
 478:	f8069ce3          	bnez	a3,410 <main+0x228>
 47c:	00000793          	li	a5,0
 480:	00000813          	li	a6,0
 484:	fcf42823          	sw	a5,-48(s0)
 488:	fd042a23          	sw	a6,-44(s0)
 48c:	00500713          	li	a4,5
 490:	00000793          	li	a5,0
 494:	fce42423          	sw	a4,-56(s0)
 498:	fcf42623          	sw	a5,-52(s0)
 49c:	0340006f          	j	4d0 <main+0x2e8>
 4a0:	fe842603          	lw	a2,-24(s0)
 4a4:	fec42683          	lw	a3,-20(s0)
 4a8:	00100513          	li	a0,1
 4ac:	00000593          	li	a1,0
 4b0:	00a60733          	add	a4,a2,a0
 4b4:	00070813          	mv	a6,a4
 4b8:	00c83833          	sltu	a6,a6,a2
 4bc:	00b687b3          	add	a5,a3,a1
 4c0:	00f806b3          	add	a3,a6,a5
 4c4:	00068793          	mv	a5,a3
 4c8:	fee42423          	sw	a4,-24(s0)
 4cc:	fef42623          	sw	a5,-20(s0)
 4d0:	fc842703          	lw	a4,-56(s0)
 4d4:	fcc42783          	lw	a5,-52(s0)
 4d8:	fff00513          	li	a0,-1
 4dc:	fff00593          	li	a1,-1
 4e0:	00a70633          	add	a2,a4,a0
 4e4:	00060813          	mv	a6,a2
 4e8:	00e83833          	sltu	a6,a6,a4
 4ec:	00b786b3          	add	a3,a5,a1
 4f0:	00d805b3          	add	a1,a6,a3
 4f4:	00058693          	mv	a3,a1
 4f8:	fcc42423          	sw	a2,-56(s0)
 4fc:	fcd42623          	sw	a3,-52(s0)
 500:	00070693          	mv	a3,a4
 504:	00f6e6b3          	or	a3,a3,a5
 508:	f8069ce3          	bnez	a3,4a0 <main+0x2b8>
 50c:	00000793          	li	a5,0
 510:	00000813          	li	a6,0
 514:	fcf42423          	sw	a5,-56(s0)
 518:	fd042623          	sw	a6,-52(s0)
 51c:	00000793          	li	a5,0
 520:	00078513          	mv	a0,a5
 524:	03c12403          	lw	s0,60(sp)
 528:	04010113          	add	sp,sp,64
 52c:	00008067          	ret
