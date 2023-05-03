
test/126.loop.riscv:     file format elf32-littleriscv


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
 1f4:	01900513          	li	a0,25
 1f8:	00000593          	li	a1,0
 1fc:	fca42423          	sw	a0,-56(s0)
 200:	fcb42623          	sw	a1,-52(s0)
 204:	00100513          	li	a0,1
 208:	00000593          	li	a1,0
 20c:	fea42423          	sw	a0,-24(s0)
 210:	feb42623          	sw	a1,-20(s0)
 214:	fc842503          	lw	a0,-56(s0)
 218:	fcc42583          	lw	a1,-52(s0)
 21c:	fea42023          	sw	a0,-32(s0)
 220:	feb42223          	sw	a1,-28(s0)
 224:	07c0006f          	j	2a0 <main+0xb8>
 228:	fec42503          	lw	a0,-20(s0)
 22c:	fe042583          	lw	a1,-32(s0)
 230:	02b50533          	mul	a0,a0,a1
 234:	fe442803          	lw	a6,-28(s0)
 238:	fe842583          	lw	a1,-24(s0)
 23c:	02b805b3          	mul	a1,a6,a1
 240:	00b50833          	add	a6,a0,a1
 244:	fe842503          	lw	a0,-24(s0)
 248:	fe042583          	lw	a1,-32(s0)
 24c:	02b508b3          	mul	a7,a0,a1
 250:	02b536b3          	mulhu	a3,a0,a1
 254:	00088613          	mv	a2,a7
 258:	00d805b3          	add	a1,a6,a3
 25c:	00058693          	mv	a3,a1
 260:	fec42423          	sw	a2,-24(s0)
 264:	fed42623          	sw	a3,-20(s0)
 268:	fec42423          	sw	a2,-24(s0)
 26c:	fed42623          	sw	a3,-20(s0)
 270:	fe042803          	lw	a6,-32(s0)
 274:	fe442883          	lw	a7,-28(s0)
 278:	fff00313          	li	t1,-1
 27c:	fff00393          	li	t2,-1
 280:	00680533          	add	a0,a6,t1
 284:	00050e13          	mv	t3,a0
 288:	010e3e33          	sltu	t3,t3,a6
 28c:	007885b3          	add	a1,a7,t2
 290:	00be0833          	add	a6,t3,a1
 294:	00080593          	mv	a1,a6
 298:	fea42023          	sw	a0,-32(s0)
 29c:	feb42223          	sw	a1,-28(s0)
 2a0:	fe442583          	lw	a1,-28(s0)
 2a4:	f80592e3          	bnez	a1,228 <main+0x40>
 2a8:	fe442583          	lw	a1,-28(s0)
 2ac:	00059863          	bnez	a1,2bc <main+0xd4>
 2b0:	fe042503          	lw	a0,-32(s0)
 2b4:	00100593          	li	a1,1
 2b8:	f6a5e8e3          	bltu	a1,a0,228 <main+0x40>
 2bc:	00000613          	li	a2,0
 2c0:	00000693          	li	a3,0
 2c4:	fec42423          	sw	a2,-24(s0)
 2c8:	fed42623          	sw	a3,-20(s0)
 2cc:	01900613          	li	a2,25
 2d0:	00000693          	li	a3,0
 2d4:	fcc42023          	sw	a2,-64(s0)
 2d8:	fcd42223          	sw	a3,-60(s0)
 2dc:	00100613          	li	a2,1
 2e0:	00000693          	li	a3,0
 2e4:	fcc42c23          	sw	a2,-40(s0)
 2e8:	fcd42e23          	sw	a3,-36(s0)
 2ec:	fc042603          	lw	a2,-64(s0)
 2f0:	fc442683          	lw	a3,-60(s0)
 2f4:	fcc42823          	sw	a2,-48(s0)
 2f8:	fcd42a23          	sw	a3,-44(s0)
 2fc:	07c0006f          	j	378 <main+0x190>
 300:	fdc42603          	lw	a2,-36(s0)
 304:	fd042683          	lw	a3,-48(s0)
 308:	02d60633          	mul	a2,a2,a3
 30c:	fd442583          	lw	a1,-44(s0)
 310:	fd842683          	lw	a3,-40(s0)
 314:	02d586b3          	mul	a3,a1,a3
 318:	00d605b3          	add	a1,a2,a3
 31c:	fd842603          	lw	a2,-40(s0)
 320:	fd042683          	lw	a3,-48(s0)
 324:	02d60533          	mul	a0,a2,a3
 328:	02d637b3          	mulhu	a5,a2,a3
 32c:	00050713          	mv	a4,a0
 330:	00f586b3          	add	a3,a1,a5
 334:	00068793          	mv	a5,a3
 338:	fce42c23          	sw	a4,-40(s0)
 33c:	fcf42e23          	sw	a5,-36(s0)
 340:	fce42c23          	sw	a4,-40(s0)
 344:	fcf42e23          	sw	a5,-36(s0)
 348:	fd042503          	lw	a0,-48(s0)
 34c:	fd442583          	lw	a1,-44(s0)
 350:	fff00813          	li	a6,-1
 354:	fff00893          	li	a7,-1
 358:	01050633          	add	a2,a0,a6
 35c:	00060313          	mv	t1,a2
 360:	00a33333          	sltu	t1,t1,a0
 364:	011586b3          	add	a3,a1,a7
 368:	00d305b3          	add	a1,t1,a3
 36c:	00058693          	mv	a3,a1
 370:	fcc42823          	sw	a2,-48(s0)
 374:	fcd42a23          	sw	a3,-44(s0)
 378:	fd442683          	lw	a3,-44(s0)
 37c:	f8d042e3          	bgtz	a3,300 <main+0x118>
 380:	fd442683          	lw	a3,-44(s0)
 384:	00069863          	bnez	a3,394 <main+0x1ac>
 388:	fd042603          	lw	a2,-48(s0)
 38c:	00100693          	li	a3,1
 390:	f6c6e8e3          	bltu	a3,a2,300 <main+0x118>
 394:	00000793          	li	a5,0
 398:	00000813          	li	a6,0
 39c:	fcf42c23          	sw	a5,-40(s0)
 3a0:	fd042e23          	sw	a6,-36(s0)
 3a4:	00000793          	li	a5,0
 3a8:	00078513          	mv	a0,a5
 3ac:	03c12403          	lw	s0,60(sp)
 3b0:	04010113          	add	sp,sp,64
 3b4:	00008067          	ret
