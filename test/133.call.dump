
test/133.call.riscv:     file format elf32-littleriscv


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
 200:	01900513          	li	a0,25
 204:	00000593          	li	a1,0
 208:	068000ef          	jal	270 <ulifatorial>
 20c:	fea42423          	sw	a0,-24(s0)
 210:	feb42623          	sw	a1,-20(s0)
 214:	00000793          	li	a5,0
 218:	00000813          	li	a6,0
 21c:	00078913          	mv	s2,a5
 220:	00080993          	mv	s3,a6
 224:	fef42423          	sw	a5,-24(s0)
 228:	ff042623          	sw	a6,-20(s0)
 22c:	01900513          	li	a0,25
 230:	00000593          	li	a1,0
 234:	11c000ef          	jal	350 <slifatorial>
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

00000270 <ulifatorial>:
 270:	fe010113          	add	sp,sp,-32
 274:	00112e23          	sw	ra,28(sp)
 278:	00812c23          	sw	s0,24(sp)
 27c:	01212a23          	sw	s2,20(sp)
 280:	01312823          	sw	s3,16(sp)
 284:	02010413          	add	s0,sp,32
 288:	fea42423          	sw	a0,-24(s0)
 28c:	feb42623          	sw	a1,-20(s0)
 290:	fec42783          	lw	a5,-20(s0)
 294:	00079c63          	bnez	a5,2ac <ulifatorial+0x3c>
 298:	fec42783          	lw	a5,-20(s0)
 29c:	08079263          	bnez	a5,320 <ulifatorial+0xb0>
 2a0:	fe842703          	lw	a4,-24(s0)
 2a4:	00100793          	li	a5,1
 2a8:	06e7fc63          	bgeu	a5,a4,320 <ulifatorial+0xb0>
 2ac:	fe842703          	lw	a4,-24(s0)
 2b0:	fec42783          	lw	a5,-20(s0)
 2b4:	fff00513          	li	a0,-1
 2b8:	fff00593          	li	a1,-1
 2bc:	00a70633          	add	a2,a4,a0
 2c0:	00060813          	mv	a6,a2
 2c4:	00e83833          	sltu	a6,a6,a4
 2c8:	00b786b3          	add	a3,a5,a1
 2cc:	00d807b3          	add	a5,a6,a3
 2d0:	00078693          	mv	a3,a5
 2d4:	00060713          	mv	a4,a2
 2d8:	00068793          	mv	a5,a3
 2dc:	00070513          	mv	a0,a4
 2e0:	00078593          	mv	a1,a5
 2e4:	f8dff0ef          	jal	270 <ulifatorial>
 2e8:	00050713          	mv	a4,a0
 2ec:	00058793          	mv	a5,a1
 2f0:	fe842683          	lw	a3,-24(s0)
 2f4:	02f68633          	mul	a2,a3,a5
 2f8:	fec42683          	lw	a3,-20(s0)
 2fc:	02e686b3          	mul	a3,a3,a4
 300:	00d60633          	add	a2,a2,a3
 304:	fe842683          	lw	a3,-24(s0)
 308:	02e685b3          	mul	a1,a3,a4
 30c:	02e6b9b3          	mulhu	s3,a3,a4
 310:	00058913          	mv	s2,a1
 314:	013607b3          	add	a5,a2,s3
 318:	00078993          	mv	s3,a5
 31c:	00c0006f          	j	328 <ulifatorial+0xb8>
 320:	00100913          	li	s2,1
 324:	00000993          	li	s3,0
 328:	00090713          	mv	a4,s2
 32c:	00098793          	mv	a5,s3
 330:	00070513          	mv	a0,a4
 334:	00078593          	mv	a1,a5
 338:	01c12083          	lw	ra,28(sp)
 33c:	01812403          	lw	s0,24(sp)
 340:	01412903          	lw	s2,20(sp)
 344:	01012983          	lw	s3,16(sp)
 348:	02010113          	add	sp,sp,32
 34c:	00008067          	ret

00000350 <slifatorial>:
 350:	fe010113          	add	sp,sp,-32
 354:	00112e23          	sw	ra,28(sp)
 358:	00812c23          	sw	s0,24(sp)
 35c:	01212a23          	sw	s2,20(sp)
 360:	01312823          	sw	s3,16(sp)
 364:	02010413          	add	s0,sp,32
 368:	fea42423          	sw	a0,-24(s0)
 36c:	feb42623          	sw	a1,-20(s0)
 370:	fec42783          	lw	a5,-20(s0)
 374:	00f04c63          	bgtz	a5,38c <slifatorial+0x3c>
 378:	fec42783          	lw	a5,-20(s0)
 37c:	08079263          	bnez	a5,400 <slifatorial+0xb0>
 380:	fe842703          	lw	a4,-24(s0)
 384:	00100793          	li	a5,1
 388:	06e7fc63          	bgeu	a5,a4,400 <slifatorial+0xb0>
 38c:	fe842703          	lw	a4,-24(s0)
 390:	fec42783          	lw	a5,-20(s0)
 394:	fff00513          	li	a0,-1
 398:	fff00593          	li	a1,-1
 39c:	00a70633          	add	a2,a4,a0
 3a0:	00060813          	mv	a6,a2
 3a4:	00e83833          	sltu	a6,a6,a4
 3a8:	00b786b3          	add	a3,a5,a1
 3ac:	00d807b3          	add	a5,a6,a3
 3b0:	00078693          	mv	a3,a5
 3b4:	00060713          	mv	a4,a2
 3b8:	00068793          	mv	a5,a3
 3bc:	00070513          	mv	a0,a4
 3c0:	00078593          	mv	a1,a5
 3c4:	f8dff0ef          	jal	350 <slifatorial>
 3c8:	00050713          	mv	a4,a0
 3cc:	00058793          	mv	a5,a1
 3d0:	fe842683          	lw	a3,-24(s0)
 3d4:	02f68633          	mul	a2,a3,a5
 3d8:	fec42683          	lw	a3,-20(s0)
 3dc:	02e686b3          	mul	a3,a3,a4
 3e0:	00d60633          	add	a2,a2,a3
 3e4:	fe842683          	lw	a3,-24(s0)
 3e8:	02e685b3          	mul	a1,a3,a4
 3ec:	02e6b9b3          	mulhu	s3,a3,a4
 3f0:	00058913          	mv	s2,a1
 3f4:	013607b3          	add	a5,a2,s3
 3f8:	00078993          	mv	s3,a5
 3fc:	00c0006f          	j	408 <slifatorial+0xb8>
 400:	00100913          	li	s2,1
 404:	00000993          	li	s3,0
 408:	00090713          	mv	a4,s2
 40c:	00098793          	mv	a5,s3
 410:	00070513          	mv	a0,a4
 414:	00078593          	mv	a1,a5
 418:	01c12083          	lw	ra,28(sp)
 41c:	01812403          	lw	s0,24(sp)
 420:	01412903          	lw	s2,20(sp)
 424:	01012983          	lw	s3,16(sp)
 428:	02010113          	add	sp,sp,32
 42c:	00008067          	ret
