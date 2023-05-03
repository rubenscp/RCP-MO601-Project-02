
test/086.shift.riscv:     file format elf32-littleriscv


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
 1f4:	f3800313          	li	t1,-200
 1f8:	fff00393          	li	t2,-1
 1fc:	fe642423          	sw	t1,-24(s0)
 200:	fe742623          	sw	t2,-20(s0)
 204:	00000313          	li	t1,0
 208:	00000393          	li	t2,0
 20c:	fe642023          	sw	t1,-32(s0)
 210:	fe742223          	sw	t2,-28(s0)
 214:	fe042303          	lw	t1,-32(s0)
 218:	fe030e13          	add	t3,t1,-32
 21c:	000e4c63          	bltz	t3,234 <main+0x4c>
 220:	fec42303          	lw	t1,-20(s0)
 224:	41c35833          	sra	a6,t1,t3
 228:	fec42303          	lw	t1,-20(s0)
 22c:	41f35893          	sra	a7,t1,0x1f
 230:	02c0006f          	j	25c <main+0x74>
 234:	fec42e03          	lw	t3,-20(s0)
 238:	001e1e93          	sll	t4,t3,0x1
 23c:	01f00e13          	li	t3,31
 240:	406e0e33          	sub	t3,t3,t1
 244:	01ce9e33          	sll	t3,t4,t3
 248:	fe842e83          	lw	t4,-24(s0)
 24c:	006ed833          	srl	a6,t4,t1
 250:	010e6833          	or	a6,t3,a6
 254:	fec42e03          	lw	t3,-20(s0)
 258:	406e58b3          	sra	a7,t3,t1
 25c:	ff042423          	sw	a6,-24(s0)
 260:	ff142623          	sw	a7,-20(s0)
 264:	00100813          	li	a6,1
 268:	00000893          	li	a7,0
 26c:	ff042023          	sw	a6,-32(s0)
 270:	ff142223          	sw	a7,-28(s0)
 274:	fe042803          	lw	a6,-32(s0)
 278:	fe080893          	add	a7,a6,-32
 27c:	0008cc63          	bltz	a7,294 <main+0xac>
 280:	fec42803          	lw	a6,-20(s0)
 284:	41185533          	sra	a0,a6,a7
 288:	fec42803          	lw	a6,-20(s0)
 28c:	41f85593          	sra	a1,a6,0x1f
 290:	02c0006f          	j	2bc <main+0xd4>
 294:	fec42883          	lw	a7,-20(s0)
 298:	00189313          	sll	t1,a7,0x1
 29c:	01f00893          	li	a7,31
 2a0:	410888b3          	sub	a7,a7,a6
 2a4:	011318b3          	sll	a7,t1,a7
 2a8:	fe842303          	lw	t1,-24(s0)
 2ac:	01035533          	srl	a0,t1,a6
 2b0:	00a8e533          	or	a0,a7,a0
 2b4:	fec42883          	lw	a7,-20(s0)
 2b8:	4108d5b3          	sra	a1,a7,a6
 2bc:	fea42423          	sw	a0,-24(s0)
 2c0:	feb42623          	sw	a1,-20(s0)
 2c4:	00200513          	li	a0,2
 2c8:	00000593          	li	a1,0
 2cc:	fea42023          	sw	a0,-32(s0)
 2d0:	feb42223          	sw	a1,-28(s0)
 2d4:	fe042583          	lw	a1,-32(s0)
 2d8:	fe058513          	add	a0,a1,-32
 2dc:	00054c63          	bltz	a0,2f4 <main+0x10c>
 2e0:	fec42583          	lw	a1,-20(s0)
 2e4:	40a5d633          	sra	a2,a1,a0
 2e8:	fec42583          	lw	a1,-20(s0)
 2ec:	41f5d693          	sra	a3,a1,0x1f
 2f0:	02c0006f          	j	31c <main+0x134>
 2f4:	fec42503          	lw	a0,-20(s0)
 2f8:	00151813          	sll	a6,a0,0x1
 2fc:	01f00513          	li	a0,31
 300:	40b50533          	sub	a0,a0,a1
 304:	00a81533          	sll	a0,a6,a0
 308:	fe842803          	lw	a6,-24(s0)
 30c:	00b85633          	srl	a2,a6,a1
 310:	00c56633          	or	a2,a0,a2
 314:	fec42503          	lw	a0,-20(s0)
 318:	40b556b3          	sra	a3,a0,a1
 31c:	fec42423          	sw	a2,-24(s0)
 320:	fed42623          	sw	a3,-20(s0)
 324:	fe042683          	lw	a3,-32(s0)
 328:	fe068613          	add	a2,a3,-32
 32c:	00064c63          	bltz	a2,344 <main+0x15c>
 330:	fec42683          	lw	a3,-20(s0)
 334:	40c6d733          	sra	a4,a3,a2
 338:	fec42683          	lw	a3,-20(s0)
 33c:	41f6d793          	sra	a5,a3,0x1f
 340:	02c0006f          	j	36c <main+0x184>
 344:	fec42603          	lw	a2,-20(s0)
 348:	00161593          	sll	a1,a2,0x1
 34c:	01f00613          	li	a2,31
 350:	40d60633          	sub	a2,a2,a3
 354:	00c59633          	sll	a2,a1,a2
 358:	fe842583          	lw	a1,-24(s0)
 35c:	00d5d733          	srl	a4,a1,a3
 360:	00e66733          	or	a4,a2,a4
 364:	fec42603          	lw	a2,-20(s0)
 368:	40d657b3          	sra	a5,a2,a3
 36c:	fee42423          	sw	a4,-24(s0)
 370:	fef42623          	sw	a5,-20(s0)
 374:	00000793          	li	a5,0
 378:	00078513          	mv	a0,a5
 37c:	01c12403          	lw	s0,28(sp)
 380:	02010113          	add	sp,sp,32
 384:	00008067          	ret
