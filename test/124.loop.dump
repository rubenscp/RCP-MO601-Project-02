
test/124.loop.riscv:     file format elf32-littleriscv


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
 1f4:	02000313          	li	t1,32
 1f8:	fe6407a3          	sb	t1,-17(s0)
 1fc:	82348337          	lui	t1,0x82348
 200:	24330313          	add	t1,t1,579 # 82348243 <memory_size+0x62348243>
 204:	fc642e23          	sw	t1,-36(s0)
 208:	41379337          	lui	t1,0x41379
 20c:	97230313          	add	t1,t1,-1678 # 41378972 <memory_size+0x21378972>
 210:	fe642223          	sw	t1,-28(s0)
 214:	fe042023          	sw	zero,-32(s0)
 218:	fe042423          	sw	zero,-24(s0)
 21c:	1280006f          	j	344 <main+0x15c>
 220:	fe442303          	lw	t1,-28(s0)
 224:	00131313          	sll	t1,t1,0x1
 228:	00237e13          	and	t3,t1,2
 22c:	fe042303          	lw	t1,-32(s0)
 230:	00137313          	and	t1,t1,1
 234:	006e6333          	or	t1,t3,t1
 238:	fc642623          	sw	t1,-52(s0)
 23c:	fcc42e03          	lw	t3,-52(s0)
 240:	00300313          	li	t1,3
 244:	066e0463          	beq	t3,t1,2ac <main+0xc4>
 248:	fcc42e03          	lw	t3,-52(s0)
 24c:	00300313          	li	t1,3
 250:	07c36063          	bltu	t1,t3,2b0 <main+0xc8>
 254:	fcc42e03          	lw	t3,-52(s0)
 258:	00200313          	li	t1,2
 25c:	026e0463          	beq	t3,t1,284 <main+0x9c>
 260:	fcc42e03          	lw	t3,-52(s0)
 264:	00200313          	li	t1,2
 268:	05c36463          	bltu	t1,t3,2b0 <main+0xc8>
 26c:	fcc42303          	lw	t1,-52(s0)
 270:	02030e63          	beqz	t1,2ac <main+0xc4>
 274:	fcc42e03          	lw	t3,-52(s0)
 278:	00100313          	li	t1,1
 27c:	006e0e63          	beq	t3,t1,298 <main+0xb0>
 280:	0300006f          	j	2b0 <main+0xc8>
 284:	fe842e03          	lw	t3,-24(s0)
 288:	fdc42303          	lw	t1,-36(s0)
 28c:	406e0333          	sub	t1,t3,t1
 290:	fe642423          	sw	t1,-24(s0)
 294:	01c0006f          	j	2b0 <main+0xc8>
 298:	fe842e03          	lw	t3,-24(s0)
 29c:	fdc42303          	lw	t1,-36(s0)
 2a0:	006e0333          	add	t1,t3,t1
 2a4:	fe642423          	sw	t1,-24(s0)
 2a8:	0080006f          	j	2b0 <main+0xc8>
 2ac:	00000013          	nop
 2b0:	fe442303          	lw	t1,-28(s0)
 2b4:	00137313          	and	t1,t1,1
 2b8:	00030863          	beqz	t1,2c8 <main+0xe0>
 2bc:	00100313          	li	t1,1
 2c0:	fe642023          	sw	t1,-32(s0)
 2c4:	0080006f          	j	2cc <main+0xe4>
 2c8:	fe042023          	sw	zero,-32(s0)
 2cc:	fe442303          	lw	t1,-28(s0)
 2d0:	00135313          	srl	t1,t1,0x1
 2d4:	fe642223          	sw	t1,-28(s0)
 2d8:	fe842303          	lw	t1,-24(s0)
 2dc:	00137313          	and	t1,t1,1
 2e0:	00030c63          	beqz	t1,2f8 <main+0x110>
 2e4:	fe442e03          	lw	t3,-28(s0)
 2e8:	80000337          	lui	t1,0x80000
 2ec:	006e6333          	or	t1,t3,t1
 2f0:	fe642223          	sw	t1,-28(s0)
 2f4:	0180006f          	j	30c <main+0x124>
 2f8:	fe442e03          	lw	t3,-28(s0)
 2fc:	80000337          	lui	t1,0x80000
 300:	fff34313          	not	t1,t1
 304:	006e7333          	and	t1,t3,t1
 308:	fe642223          	sw	t1,-28(s0)
 30c:	fe842303          	lw	t1,-24(s0)
 310:	00135313          	srl	t1,t1,0x1
 314:	fe642423          	sw	t1,-24(s0)
 318:	fe842e03          	lw	t3,-24(s0)
 31c:	40000337          	lui	t1,0x40000
 320:	006e7333          	and	t1,t3,t1
 324:	00030a63          	beqz	t1,338 <main+0x150>
 328:	fe842e03          	lw	t3,-24(s0)
 32c:	80000337          	lui	t1,0x80000
 330:	006e6333          	or	t1,t3,t1
 334:	fe642423          	sw	t1,-24(s0)
 338:	fef44303          	lbu	t1,-17(s0)
 33c:	fff30313          	add	t1,t1,-1 # 7fffffff <memory_size+0x5fffffff>
 340:	fe6407a3          	sb	t1,-17(s0)
 344:	fef44303          	lbu	t1,-17(s0)
 348:	ec031ce3          	bnez	t1,220 <main+0x38>
 34c:	00000e13          	li	t3,0
 350:	00000e93          	li	t4,0
 354:	fdc42823          	sw	t3,-48(s0)
 358:	fdd42a23          	sw	t4,-44(s0)
 35c:	fe842303          	lw	t1,-24(s0)
 360:	00030813          	mv	a6,t1
 364:	00000893          	li	a7,0
 368:	00081793          	sll	a5,a6,0x0
 36c:	00000713          	li	a4,0
 370:	fe442803          	lw	a6,-28(s0)
 374:	00080613          	mv	a2,a6
 378:	00000693          	li	a3,0
 37c:	00c76533          	or	a0,a4,a2
 380:	00d7e5b3          	or	a1,a5,a3
 384:	fca42823          	sw	a0,-48(s0)
 388:	fcb42a23          	sw	a1,-44(s0)
 38c:	fdc42823          	sw	t3,-48(s0)
 390:	fdd42a23          	sw	t4,-44(s0)
 394:	00000793          	li	a5,0
 398:	00078513          	mv	a0,a5
 39c:	03c12403          	lw	s0,60(sp)
 3a0:	04010113          	add	sp,sp,64
 3a4:	00008067          	ret
