
test/131.call.riscv:     file format elf32-littleriscv


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
 1f4:	02010413          	add	s0,sp,32
 1f8:	00000513          	li	a0,0
 1fc:	074000ef          	jal	270 <funcmenos>
 200:	fea42623          	sw	a0,-20(s0)
 204:	fe042623          	sw	zero,-20(s0)
 208:	00000513          	li	a0,0
 20c:	08c000ef          	jal	298 <funcmais>
 210:	fea42623          	sw	a0,-20(s0)
 214:	fe042623          	sw	zero,-20(s0)
 218:	fff00513          	li	a0,-1
 21c:	054000ef          	jal	270 <funcmenos>
 220:	fea42623          	sw	a0,-20(s0)
 224:	fe042623          	sw	zero,-20(s0)
 228:	fff00513          	li	a0,-1
 22c:	06c000ef          	jal	298 <funcmais>
 230:	fea42623          	sw	a0,-20(s0)
 234:	fe042623          	sw	zero,-20(s0)
 238:	00100513          	li	a0,1
 23c:	034000ef          	jal	270 <funcmenos>
 240:	fea42623          	sw	a0,-20(s0)
 244:	fe042623          	sw	zero,-20(s0)
 248:	00100513          	li	a0,1
 24c:	04c000ef          	jal	298 <funcmais>
 250:	fea42623          	sw	a0,-20(s0)
 254:	fe042623          	sw	zero,-20(s0)
 258:	00000793          	li	a5,0
 25c:	00078513          	mv	a0,a5
 260:	01c12083          	lw	ra,28(sp)
 264:	01812403          	lw	s0,24(sp)
 268:	02010113          	add	sp,sp,32
 26c:	00008067          	ret

00000270 <funcmenos>:
 270:	fe010113          	add	sp,sp,-32
 274:	00812e23          	sw	s0,28(sp)
 278:	02010413          	add	s0,sp,32
 27c:	fea42623          	sw	a0,-20(s0)
 280:	fec42783          	lw	a5,-20(s0)
 284:	fff78793          	add	a5,a5,-1
 288:	00078513          	mv	a0,a5
 28c:	01c12403          	lw	s0,28(sp)
 290:	02010113          	add	sp,sp,32
 294:	00008067          	ret

00000298 <funcmais>:
 298:	fe010113          	add	sp,sp,-32
 29c:	00812e23          	sw	s0,28(sp)
 2a0:	02010413          	add	s0,sp,32
 2a4:	fea42623          	sw	a0,-20(s0)
 2a8:	fec42783          	lw	a5,-20(s0)
 2ac:	00178793          	add	a5,a5,1
 2b0:	00078513          	mv	a0,a5
 2b4:	01c12403          	lw	s0,28(sp)
 2b8:	02010113          	add	sp,sp,32
 2bc:	00008067          	ret
