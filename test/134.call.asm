
test/134.call.riscv:     file format elf32-littleriscv


Disassembly of section .text:

000001d8 <_start>:
 1d8:	00500137          	lui	sp,0x500
 1dc:	00c000ef          	jal	1e8 <main>
 1e0:	200002b7          	lui	t0,0x20000
 1e4:	00100073          	ebreak

000001e8 <main>:
 1e8:	fe010113          	add	sp,sp,-32 # 4fffe0 <__BSS_END__+0x4fcee0>
 1ec:	00112e23          	sw	ra,28(sp)
 1f0:	00812c23          	sw	s0,24(sp)
 1f4:	01212a23          	sw	s2,20(sp)
 1f8:	01312823          	sw	s3,16(sp)
 1fc:	02010413          	add	s0,sp,32
 200:	00d00513          	li	a0,13
 204:	00000593          	li	a1,0
 208:	068000ef          	jal	270 <ulifibonacci>
 20c:	fea42423          	sw	a0,-24(s0)
 210:	feb42623          	sw	a1,-20(s0)
 214:	00000793          	li	a5,0
 218:	00000813          	li	a6,0
 21c:	00078913          	mv	s2,a5
 220:	00080993          	mv	s3,a6
 224:	fef42423          	sw	a5,-24(s0)
 228:	ff042623          	sw	a6,-20(s0)
 22c:	00d00513          	li	a0,13
 230:	00000593          	li	a1,0
 234:	144000ef          	jal	378 <slifibonacci>
 238:	fea42023          	sw	a0,-32(s0)
 23c:	feb42223          	sw	a1,-28(s0)
 240:	00090793          	mv	a5,s2
 244:	00098813          	mv	a6,s3
 248:	fef42023          	sw	a5,-32(s0)
 24c:	ff042223          	sw	a6,-28(s0)
 250:	00000793          	li	a5,0
 254:	00078513          	mv	a0,a5
 258:	01c12083          	lw	ra,28(sp)
 25c:	01812403          	lw	s0,24(sp)
 260:	01412903          	lw	s2,20(sp)
 264:	01012983          	lw	s3,16(sp)
 268:	02010113          	add	sp,sp,32
 26c:	00008067          	ret

00000270 <ulifibonacci>:
 270:	fe010113          	add	sp,sp,-32
 274:	00112e23          	sw	ra,28(sp)
 278:	00812c23          	sw	s0,24(sp)
 27c:	01212a23          	sw	s2,20(sp)
 280:	01312823          	sw	s3,16(sp)
 284:	02010413          	add	s0,sp,32
 288:	fea42423          	sw	a0,-24(s0)
 28c:	feb42623          	sw	a1,-20(s0)
 290:	fec42783          	lw	a5,-20(s0)
 294:	02079263          	bnez	a5,2b8 <ulifibonacci+0x48>
 298:	fec42783          	lw	a5,-20(s0)
 29c:	00079863          	bnez	a5,2ac <ulifibonacci+0x3c>
 2a0:	fe842703          	lw	a4,-24(s0)
 2a4:	00200793          	li	a5,2
 2a8:	00e7e863          	bltu	a5,a4,2b8 <ulifibonacci+0x48>
 2ac:	00100713          	li	a4,1
 2b0:	00000793          	li	a5,0
 2b4:	0a40006f          	j	358 <ulifibonacci+0xe8>
 2b8:	fe842703          	lw	a4,-24(s0)
 2bc:	fec42783          	lw	a5,-20(s0)
 2c0:	fff00513          	li	a0,-1
 2c4:	fff00593          	li	a1,-1
 2c8:	00a70633          	add	a2,a4,a0
 2cc:	00060813          	mv	a6,a2
 2d0:	00e83833          	sltu	a6,a6,a4
 2d4:	00b786b3          	add	a3,a5,a1
 2d8:	00d807b3          	add	a5,a6,a3
 2dc:	00078693          	mv	a3,a5
 2e0:	00060713          	mv	a4,a2
 2e4:	00068793          	mv	a5,a3
 2e8:	00070513          	mv	a0,a4
 2ec:	00078593          	mv	a1,a5
 2f0:	f81ff0ef          	jal	270 <ulifibonacci>
 2f4:	00050913          	mv	s2,a0
 2f8:	00058993          	mv	s3,a1
 2fc:	fe842703          	lw	a4,-24(s0)
 300:	fec42783          	lw	a5,-20(s0)
 304:	ffe00513          	li	a0,-2
 308:	fff00593          	li	a1,-1
 30c:	00a70633          	add	a2,a4,a0
 310:	00060813          	mv	a6,a2
 314:	00e83833          	sltu	a6,a6,a4
 318:	00b786b3          	add	a3,a5,a1
 31c:	00d807b3          	add	a5,a6,a3
 320:	00078693          	mv	a3,a5
 324:	00060713          	mv	a4,a2
 328:	00068793          	mv	a5,a3
 32c:	00070513          	mv	a0,a4
 330:	00078593          	mv	a1,a5
 334:	f3dff0ef          	jal	270 <ulifibonacci>
 338:	00050613          	mv	a2,a0
 33c:	00058693          	mv	a3,a1
 340:	00c90733          	add	a4,s2,a2
 344:	00070593          	mv	a1,a4
 348:	0125b5b3          	sltu	a1,a1,s2
 34c:	00d987b3          	add	a5,s3,a3
 350:	00f586b3          	add	a3,a1,a5
 354:	00068793          	mv	a5,a3
 358:	00070513          	mv	a0,a4
 35c:	00078593          	mv	a1,a5
 360:	01c12083          	lw	ra,28(sp)
 364:	01812403          	lw	s0,24(sp)
 368:	01412903          	lw	s2,20(sp)
 36c:	01012983          	lw	s3,16(sp)
 370:	02010113          	add	sp,sp,32
 374:	00008067          	ret

00000378 <slifibonacci>:
 378:	fe010113          	add	sp,sp,-32
 37c:	00112e23          	sw	ra,28(sp)
 380:	00812c23          	sw	s0,24(sp)
 384:	01212a23          	sw	s2,20(sp)
 388:	01312823          	sw	s3,16(sp)
 38c:	02010413          	add	s0,sp,32
 390:	fea42423          	sw	a0,-24(s0)
 394:	feb42623          	sw	a1,-20(s0)
 398:	fec42783          	lw	a5,-20(s0)
 39c:	02f04263          	bgtz	a5,3c0 <slifibonacci+0x48>
 3a0:	fec42783          	lw	a5,-20(s0)
 3a4:	00079863          	bnez	a5,3b4 <slifibonacci+0x3c>
 3a8:	fe842703          	lw	a4,-24(s0)
 3ac:	00200793          	li	a5,2
 3b0:	00e7e863          	bltu	a5,a4,3c0 <slifibonacci+0x48>
 3b4:	00100713          	li	a4,1
 3b8:	00000793          	li	a5,0
 3bc:	0a40006f          	j	460 <slifibonacci+0xe8>
 3c0:	fe842703          	lw	a4,-24(s0)
 3c4:	fec42783          	lw	a5,-20(s0)
 3c8:	fff00513          	li	a0,-1
 3cc:	fff00593          	li	a1,-1
 3d0:	00a70633          	add	a2,a4,a0
 3d4:	00060813          	mv	a6,a2
 3d8:	00e83833          	sltu	a6,a6,a4
 3dc:	00b786b3          	add	a3,a5,a1
 3e0:	00d807b3          	add	a5,a6,a3
 3e4:	00078693          	mv	a3,a5
 3e8:	00060713          	mv	a4,a2
 3ec:	00068793          	mv	a5,a3
 3f0:	00070513          	mv	a0,a4
 3f4:	00078593          	mv	a1,a5
 3f8:	f81ff0ef          	jal	378 <slifibonacci>
 3fc:	00050913          	mv	s2,a0
 400:	00058993          	mv	s3,a1
 404:	fe842703          	lw	a4,-24(s0)
 408:	fec42783          	lw	a5,-20(s0)
 40c:	ffe00513          	li	a0,-2
 410:	fff00593          	li	a1,-1
 414:	00a70633          	add	a2,a4,a0
 418:	00060813          	mv	a6,a2
 41c:	00e83833          	sltu	a6,a6,a4
 420:	00b786b3          	add	a3,a5,a1
 424:	00d807b3          	add	a5,a6,a3
 428:	00078693          	mv	a3,a5
 42c:	00060713          	mv	a4,a2
 430:	00068793          	mv	a5,a3
 434:	00070513          	mv	a0,a4
 438:	00078593          	mv	a1,a5
 43c:	f3dff0ef          	jal	378 <slifibonacci>
 440:	00050613          	mv	a2,a0
 444:	00058693          	mv	a3,a1
 448:	00c90733          	add	a4,s2,a2
 44c:	00070593          	mv	a1,a4
 450:	0125b5b3          	sltu	a1,a1,s2
 454:	00d987b3          	add	a5,s3,a3
 458:	00f586b3          	add	a3,a1,a5
 45c:	00068793          	mv	a5,a3
 460:	00070513          	mv	a0,a4
 464:	00078593          	mv	a1,a5
 468:	01c12083          	lw	ra,28(sp)
 46c:	01812403          	lw	s0,24(sp)
 470:	01412903          	lw	s2,20(sp)
 474:	01012983          	lw	s3,16(sp)
 478:	02010113          	add	sp,sp,32
 47c:	00008067          	ret
