
test/125.loop.riscv:     file format elf32-littleriscv


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
 1f4:	00000797          	auipc	a5,0x0
 1f8:	0e078793          	add	a5,a5,224 # 2d4 <main+0xec>
 1fc:	fef42223          	sw	a5,-28(s0)
 200:	00000797          	auipc	a5,0x0
 204:	10078793          	add	a5,a5,256 # 300 <main+0x118>
 208:	fef42023          	sw	a5,-32(s0)
 20c:	00000797          	auipc	a5,0x0
 210:	11078793          	add	a5,a5,272 # 31c <main+0x134>
 214:	fcf42e23          	sw	a5,-36(s0)
 218:	fe442783          	lw	a5,-28(s0)
 21c:	fef42623          	sw	a5,-20(s0)
 220:	fe042423          	sw	zero,-24(s0)
 224:	01c0006f          	j	240 <main+0x58>
 228:	fec42783          	lw	a5,-20(s0)
 22c:	00178793          	add	a5,a5,1
 230:	fef42623          	sw	a5,-20(s0)
 234:	fe842783          	lw	a5,-24(s0)
 238:	00178793          	add	a5,a5,1
 23c:	fef42423          	sw	a5,-24(s0)
 240:	fec42783          	lw	a5,-20(s0)
 244:	0007c783          	lbu	a5,0(a5)
 248:	fe0790e3          	bnez	a5,228 <main+0x40>
 24c:	fe042423          	sw	zero,-24(s0)
 250:	fe042783          	lw	a5,-32(s0)
 254:	fef42623          	sw	a5,-20(s0)
 258:	fe042423          	sw	zero,-24(s0)
 25c:	01c0006f          	j	278 <main+0x90>
 260:	fec42783          	lw	a5,-20(s0)
 264:	00178793          	add	a5,a5,1
 268:	fef42623          	sw	a5,-20(s0)
 26c:	fe842783          	lw	a5,-24(s0)
 270:	00178793          	add	a5,a5,1
 274:	fef42423          	sw	a5,-24(s0)
 278:	fec42783          	lw	a5,-20(s0)
 27c:	0007c783          	lbu	a5,0(a5)
 280:	fe0790e3          	bnez	a5,260 <main+0x78>
 284:	fe042423          	sw	zero,-24(s0)
 288:	fdc42783          	lw	a5,-36(s0)
 28c:	fef42623          	sw	a5,-20(s0)
 290:	fe042423          	sw	zero,-24(s0)
 294:	01c0006f          	j	2b0 <main+0xc8>
 298:	fec42783          	lw	a5,-20(s0)
 29c:	00178793          	add	a5,a5,1
 2a0:	fef42623          	sw	a5,-20(s0)
 2a4:	fe842783          	lw	a5,-24(s0)
 2a8:	00178793          	add	a5,a5,1
 2ac:	fef42423          	sw	a5,-24(s0)
 2b0:	fec42783          	lw	a5,-20(s0)
 2b4:	0007c783          	lbu	a5,0(a5)
 2b8:	fe0790e3          	bnez	a5,298 <main+0xb0>
 2bc:	fe042423          	sw	zero,-24(s0)
 2c0:	00000793          	li	a5,0
 2c4:	00078513          	mv	a0,a5
 2c8:	02c12403          	lw	s0,44(sp)
 2cc:	03010113          	add	sp,sp,48
 2d0:	00008067          	ret
