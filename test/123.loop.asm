
test/123.loop.riscv:     file format elf32-littleriscv


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
 1f4:	02000793          	li	a5,32
 1f8:	fef407a3          	sb	a5,-17(s0)
 1fc:	1314b7b7          	lui	a5,0x1314b
 200:	b4278793          	add	a5,a5,-1214 # 1314ab42 <__BSS_END__+0x13147a42>
 204:	fcf42e23          	sw	a5,-36(s0)
 208:	f1b347b7          	lui	a5,0xf1b34
 20c:	51778793          	add	a5,a5,1303 # f1b34517 <memory_size+0xd1b34517>
 210:	fef42023          	sw	a5,-32(s0)
 214:	fe042223          	sw	zero,-28(s0)
 218:	fe042423          	sw	zero,-24(s0)
 21c:	0cc0006f          	j	2e8 <main+0x100>
 220:	fe042783          	lw	a5,-32(s0)
 224:	0017f793          	and	a5,a5,1
 228:	04078c63          	beqz	a5,280 <main+0x98>
 22c:	fe442783          	lw	a5,-28(s0)
 230:	00078613          	mv	a2,a5
 234:	00000693          	li	a3,0
 238:	fdc42783          	lw	a5,-36(s0)
 23c:	00078313          	mv	t1,a5
 240:	00000393          	li	t2,0
 244:	00660733          	add	a4,a2,t1
 248:	00070f13          	mv	t5,a4
 24c:	00cf3f33          	sltu	t5,t5,a2
 250:	007687b3          	add	a5,a3,t2
 254:	00ff0f33          	add	t5,t5,a5
 258:	000f0793          	mv	a5,t5
 25c:	00079663          	bnez	a5,268 <main+0x80>
 260:	fe042423          	sw	zero,-24(s0)
 264:	00c0006f          	j	270 <main+0x88>
 268:	00100793          	li	a5,1
 26c:	fef42423          	sw	a5,-24(s0)
 270:	fe442703          	lw	a4,-28(s0)
 274:	fdc42783          	lw	a5,-36(s0)
 278:	00f707b3          	add	a5,a4,a5
 27c:	fef42223          	sw	a5,-28(s0)
 280:	fe042783          	lw	a5,-32(s0)
 284:	0017d793          	srl	a5,a5,0x1
 288:	fef42023          	sw	a5,-32(s0)
 28c:	fe442783          	lw	a5,-28(s0)
 290:	0017f793          	and	a5,a5,1
 294:	00078a63          	beqz	a5,2a8 <main+0xc0>
 298:	fe042703          	lw	a4,-32(s0)
 29c:	800007b7          	lui	a5,0x80000
 2a0:	00f767b3          	or	a5,a4,a5
 2a4:	fef42023          	sw	a5,-32(s0)
 2a8:	fe442783          	lw	a5,-28(s0)
 2ac:	0017d793          	srl	a5,a5,0x1
 2b0:	fef42223          	sw	a5,-28(s0)
 2b4:	fe842783          	lw	a5,-24(s0)
 2b8:	0017f793          	and	a5,a5,1
 2bc:	00078a63          	beqz	a5,2d0 <main+0xe8>
 2c0:	fe442703          	lw	a4,-28(s0)
 2c4:	800007b7          	lui	a5,0x80000
 2c8:	00f767b3          	or	a5,a4,a5
 2cc:	fef42223          	sw	a5,-28(s0)
 2d0:	fe842783          	lw	a5,-24(s0)
 2d4:	0017d793          	srl	a5,a5,0x1
 2d8:	fef42423          	sw	a5,-24(s0)
 2dc:	fef44783          	lbu	a5,-17(s0)
 2e0:	fff78793          	add	a5,a5,-1 # 7fffffff <memory_size+0x5fffffff>
 2e4:	fef407a3          	sb	a5,-17(s0)
 2e8:	fef44783          	lbu	a5,-17(s0)
 2ec:	f2079ae3          	bnez	a5,220 <main+0x38>
 2f0:	00000693          	li	a3,0
 2f4:	00000713          	li	a4,0
 2f8:	fcd42823          	sw	a3,-48(s0)
 2fc:	fce42a23          	sw	a4,-44(s0)
 300:	fe442783          	lw	a5,-28(s0)
 304:	00078e13          	mv	t3,a5
 308:	00000e93          	li	t4,0
 30c:	000e1593          	sll	a1,t3,0x0
 310:	00000513          	li	a0,0
 314:	fe042783          	lw	a5,-32(s0)
 318:	00078813          	mv	a6,a5
 31c:	00000893          	li	a7,0
 320:	010567b3          	or	a5,a0,a6
 324:	fcf42823          	sw	a5,-48(s0)
 328:	0115e7b3          	or	a5,a1,a7
 32c:	fcf42a23          	sw	a5,-44(s0)
 330:	fcd42823          	sw	a3,-48(s0)
 334:	fce42a23          	sw	a4,-44(s0)
 338:	00000793          	li	a5,0
 33c:	00078513          	mv	a0,a5
 340:	02c12403          	lw	s0,44(sp)
 344:	03010113          	add	sp,sp,48
 348:	00008067          	ret
