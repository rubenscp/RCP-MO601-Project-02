
test/018.const.riscv:     file format elf32-littleriscv


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
 1f4:	00000797          	auipc	a5,0x0
 1f8:	0ac78793          	add	a5,a5,172 # 2a0 <main+0xb8>
 1fc:	0007a703          	lw	a4,0(a5)
 200:	0047a783          	lw	a5,4(a5)
 204:	fee42423          	sw	a4,-24(s0)
 208:	fef42623          	sw	a5,-20(s0)
 20c:	00000797          	auipc	a5,0x0
 210:	09c78793          	add	a5,a5,156 # 2a8 <main+0xc0>
 214:	0007a703          	lw	a4,0(a5)
 218:	0047a783          	lw	a5,4(a5)
 21c:	fee42423          	sw	a4,-24(s0)
 220:	fef42623          	sw	a5,-20(s0)
 224:	00000793          	li	a5,0
 228:	00000813          	li	a6,0
 22c:	fef42423          	sw	a5,-24(s0)
 230:	ff042623          	sw	a6,-20(s0)
 234:	fff00713          	li	a4,-1
 238:	fff00793          	li	a5,-1
 23c:	fee42423          	sw	a4,-24(s0)
 240:	fef42623          	sw	a5,-20(s0)
 244:	00000713          	li	a4,0
 248:	800007b7          	lui	a5,0x80000
 24c:	fee42423          	sw	a4,-24(s0)
 250:	fef42623          	sw	a5,-20(s0)
 254:	00100713          	li	a4,1
 258:	00000793          	li	a5,0
 25c:	fee42423          	sw	a4,-24(s0)
 260:	fef42623          	sw	a5,-20(s0)
 264:	fff00713          	li	a4,-1
 268:	800007b7          	lui	a5,0x80000
 26c:	fff7c793          	not	a5,a5
 270:	fee42423          	sw	a4,-24(s0)
 274:	fef42623          	sw	a5,-20(s0)
 278:	ffe00713          	li	a4,-2
 27c:	fff00793          	li	a5,-1
 280:	fee42423          	sw	a4,-24(s0)
 284:	fef42623          	sw	a5,-20(s0)
 288:	00000793          	li	a5,0
 28c:	00078513          	mv	a0,a5
 290:	01c12403          	lw	s0,28(sp)
 294:	02010113          	add	sp,sp,32
 298:	00008067          	ret
