
test/075.bool.riscv:     file format elf32-littleriscv


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
 1f4:	00000f17          	auipc	t5,0x0
 1f8:	19cf0f13          	add	t5,t5,412 # 390 <main+0x1a8>
 1fc:	004f2f83          	lw	t6,4(t5)
 200:	000f2f03          	lw	t5,0(t5)
 204:	ffe42423          	sw	t5,-24(s0)
 208:	fff42623          	sw	t6,-20(s0)
 20c:	fe842f83          	lw	t6,-24(s0)
 210:	f0f0ff37          	lui	t5,0xf0f0f
 214:	0f0f0f13          	add	t5,t5,240 # f0f0f0f0 <memory_size+0xd0f0f0f0>
 218:	01efee33          	or	t3,t6,t5
 21c:	fec42f83          	lw	t6,-20(s0)
 220:	f0f0ff37          	lui	t5,0xf0f0f
 224:	0f0f0f13          	add	t5,t5,240 # f0f0f0f0 <memory_size+0xd0f0f0f0>
 228:	01efeeb3          	or	t4,t6,t5
 22c:	ffc42023          	sw	t3,-32(s0)
 230:	ffd42223          	sw	t4,-28(s0)
 234:	00000f13          	li	t5,0
 238:	00000f93          	li	t6,0
 23c:	ffe42023          	sw	t5,-32(s0)
 240:	fff42223          	sw	t6,-28(s0)
 244:	fe842e83          	lw	t4,-24(s0)
 248:	f0f0fe37          	lui	t3,0xf0f0f
 24c:	0f0e0e13          	add	t3,t3,240 # f0f0f0f0 <memory_size+0xd0f0f0f0>
 250:	01cef333          	and	t1,t4,t3
 254:	fec42e83          	lw	t4,-20(s0)
 258:	f0f0fe37          	lui	t3,0xf0f0f
 25c:	0f0e0e13          	add	t3,t3,240 # f0f0f0f0 <memory_size+0xd0f0f0f0>
 260:	01cef3b3          	and	t2,t4,t3
 264:	fe642023          	sw	t1,-32(s0)
 268:	fe742223          	sw	t2,-28(s0)
 26c:	000f0e93          	mv	t4,t5
 270:	000f8f13          	mv	t5,t6
 274:	ffd42023          	sw	t4,-32(s0)
 278:	ffe42223          	sw	t5,-28(s0)
 27c:	fe842e03          	lw	t3,-24(s0)
 280:	f0f0f337          	lui	t1,0xf0f0f
 284:	0f030313          	add	t1,t1,240 # f0f0f0f0 <memory_size+0xd0f0f0f0>
 288:	006e4833          	xor	a6,t3,t1
 28c:	fec42e03          	lw	t3,-20(s0)
 290:	f0f0f337          	lui	t1,0xf0f0f
 294:	0f030313          	add	t1,t1,240 # f0f0f0f0 <memory_size+0xd0f0f0f0>
 298:	006e48b3          	xor	a7,t3,t1
 29c:	ff042023          	sw	a6,-32(s0)
 2a0:	ff142223          	sw	a7,-28(s0)
 2a4:	000e8313          	mv	t1,t4
 2a8:	000f0393          	mv	t2,t5
 2ac:	fe642023          	sw	t1,-32(s0)
 2b0:	fe742223          	sw	t2,-28(s0)
 2b4:	fe842883          	lw	a7,-24(s0)
 2b8:	f0f0f837          	lui	a6,0xf0f0f
 2bc:	0f080813          	add	a6,a6,240 # f0f0f0f0 <memory_size+0xd0f0f0f0>
 2c0:	0108e633          	or	a2,a7,a6
 2c4:	fec42883          	lw	a7,-20(s0)
 2c8:	f0f0f837          	lui	a6,0xf0f0f
 2cc:	0f080813          	add	a6,a6,240 # f0f0f0f0 <memory_size+0xd0f0f0f0>
 2d0:	0108e6b3          	or	a3,a7,a6
 2d4:	fff64813          	not	a6,a2
 2d8:	ff042023          	sw	a6,-32(s0)
 2dc:	fff6c693          	not	a3,a3
 2e0:	fed42223          	sw	a3,-28(s0)
 2e4:	00030813          	mv	a6,t1
 2e8:	00038893          	mv	a7,t2
 2ec:	ff042023          	sw	a6,-32(s0)
 2f0:	ff142223          	sw	a7,-28(s0)
 2f4:	fe842603          	lw	a2,-24(s0)
 2f8:	f0f0f6b7          	lui	a3,0xf0f0f
 2fc:	0f068693          	add	a3,a3,240 # f0f0f0f0 <memory_size+0xd0f0f0f0>
 300:	00d67733          	and	a4,a2,a3
 304:	fec42603          	lw	a2,-20(s0)
 308:	f0f0f6b7          	lui	a3,0xf0f0f
 30c:	0f068693          	add	a3,a3,240 # f0f0f0f0 <memory_size+0xd0f0f0f0>
 310:	00d677b3          	and	a5,a2,a3
 314:	fff74693          	not	a3,a4
 318:	fed42023          	sw	a3,-32(s0)
 31c:	fff7c793          	not	a5,a5
 320:	fef42223          	sw	a5,-28(s0)
 324:	ff042023          	sw	a6,-32(s0)
 328:	ff142223          	sw	a7,-28(s0)
 32c:	fe842703          	lw	a4,-24(s0)
 330:	0f0f17b7          	lui	a5,0xf0f1
 334:	f0f78793          	add	a5,a5,-241 # f0f0f0f <__BSS_END__+0xf0ede0f>
 338:	00f74533          	xor	a0,a4,a5
 33c:	fec42703          	lw	a4,-20(s0)
 340:	0f0f17b7          	lui	a5,0xf0f1
 344:	f0f78793          	add	a5,a5,-241 # f0f0f0f <__BSS_END__+0xf0ede0f>
 348:	00f745b3          	xor	a1,a4,a5
 34c:	fea42023          	sw	a0,-32(s0)
 350:	feb42223          	sw	a1,-28(s0)
 354:	ff042023          	sw	a6,-32(s0)
 358:	ff142223          	sw	a7,-28(s0)
 35c:	00000797          	auipc	a5,0x0
 360:	03c78793          	add	a5,a5,60 # 398 <main+0x1b0>
 364:	0007a703          	lw	a4,0(a5)
 368:	0047a783          	lw	a5,4(a5)
 36c:	fee42023          	sw	a4,-32(s0)
 370:	fef42223          	sw	a5,-28(s0)
 374:	ff042023          	sw	a6,-32(s0)
 378:	ff142223          	sw	a7,-28(s0)
 37c:	00000793          	li	a5,0
 380:	00078513          	mv	a0,a5
 384:	01c12403          	lw	s0,28(sp)
 388:	02010113          	add	sp,sp,32
 38c:	00008067          	ret
