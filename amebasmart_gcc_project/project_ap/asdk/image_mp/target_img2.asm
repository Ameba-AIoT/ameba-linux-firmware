
/home/qi_shen/jessica/6.6/sources/firmware/amebasmart_gcc_project/project_ap/asdk/image_mp/target_img2.axf:     file format elf32-littlearm


Disassembly of section .code:

60300000 <__dram_text_start__>:
60300000:	ea000030 	b	603000c8 <_boot>
60300004:	ea000009 	b	60300030 <FreeRTOS_UndefinedHandler>
60300008:	ea00015c 	b	60300580 <FreeRTOS_SWI_Handler>
6030000c:	ea00001f 	b	60300090 <FreeRTOS_PrefetchAbortHandler>
60300010:	ea000012 	b	60300060 <FreeRTOS_DataAbortHandler>
60300014:	eafffffe 	b	60300014 <__dram_text_start__+0x14>
60300018:	ea000190 	b	60300660 <FreeRTOS_IRQ_Handler>
6030001c:	eaffffff 	b	60300020 <FreeRTOS_FIQHandler>

60300020 <FreeRTOS_FIQHandler>:
60300020:	e92d500f 	push	{r0, r1, r2, r3, ip, lr}
60300024:	eb0023fe 	bl	60309024 <FIQHandler>
60300028:	e8bd500f 	pop	{r0, r1, r2, r3, ip, lr}
6030002c:	e25ef004 	subs	pc, lr, #4

60300030 <FreeRTOS_UndefinedHandler>:
60300030:	e92d500f 	push	{r0, r1, r2, r3, ip, lr}
60300034:	e59f0080 	ldr	r0, [pc, #128]	; 603000bc <FreeRTOS_PrefetchAbortHandler+0x2c>
60300038:	e24e1004 	sub	r1, lr, #4
6030003c:	e5801000 	str	r1, [r0]
60300040:	e92d0ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp}
60300044:	e1a0000d 	mov	r0, sp
60300048:	e14f1000 	mrs	r1, SPSR
6030004c:	eb002472 	bl	6030921c <UndefinedExceptionHandler>
60300050:	e8bd0ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp}
60300054:	e8bd500f 	pop	{r0, r1, r2, r3, ip, lr}
60300058:	e1b0f00e 	movs	pc, lr
6030005c:	e320f000 	nop	{0}

60300060 <FreeRTOS_DataAbortHandler>:
60300060:	e92d500f 	push	{r0, r1, r2, r3, ip, lr}
60300064:	e59f0054 	ldr	r0, [pc, #84]	; 603000c0 <FreeRTOS_PrefetchAbortHandler+0x30>
60300068:	e24e1008 	sub	r1, lr, #8
6030006c:	e5801000 	str	r1, [r0]
60300070:	e92d0ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp}
60300074:	e1a0000d 	mov	r0, sp
60300078:	e14f1000 	mrs	r1, SPSR
6030007c:	eb002473 	bl	60309250 <DataAbortHandler>
60300080:	e8bd0ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp}
60300084:	e8bd500f 	pop	{r0, r1, r2, r3, ip, lr}
60300088:	e25ef008 	subs	pc, lr, #8
6030008c:	e320f000 	nop	{0}

60300090 <FreeRTOS_PrefetchAbortHandler>:
60300090:	e92d500f 	push	{r0, r1, r2, r3, ip, lr}
60300094:	e59f0028 	ldr	r0, [pc, #40]	; 603000c4 <FreeRTOS_PrefetchAbortHandler+0x34>
60300098:	e24e1004 	sub	r1, lr, #4
6030009c:	e5801000 	str	r1, [r0]
603000a0:	e92d0ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp}
603000a4:	e1a0000d 	mov	r0, sp
603000a8:	e14f1000 	mrs	r1, SPSR
603000ac:	eb002478 	bl	60309294 <PrefetchAbortHandler>
603000b0:	e8bd0ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp}
603000b4:	e8bd500f 	pop	{r0, r1, r2, r3, ip, lr}
603000b8:	e25ef004 	subs	pc, lr, #4
603000bc:	60323610 	.word	0x60323610
603000c0:	60323608 	.word	0x60323608
603000c4:	6032360c 	.word	0x6032360c

603000c8 <_boot>:
603000c8:	e59f0274 	ldr	r0, [pc, #628]	; 60300344 <putc_error+0x8>
603000cc:	ee0c0f10 	mcr	15, 0, r0, cr12, cr0, {0}
603000d0:	e3a00000 	mov	r0, #0
603000d4:	ee080f17 	mcr	15, 0, r0, cr8, cr7, {0}
603000d8:	ee070f15 	mcr	15, 0, r0, cr7, cr5, {0}
603000dc:	ee070fd5 	mcr	15, 0, r0, cr7, cr5, {6}
603000e0:	f57ff04f 	dsb	sy
603000e4:	f57ff06f 	isb	sy
603000e8:	eb000060 	bl	60300270 <invalidate_dcache>
603000ec:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
603000f0:	e3c00a02 	bic	r0, r0, #8192	; 0x2000
603000f4:	e3c00007 	bic	r0, r0, #7
603000f8:	e3800002 	orr	r0, r0, #2
603000fc:	e3800b02 	orr	r0, r0, #2048	; 0x800
60300100:	e3c00a01 	bic	r0, r0, #4096	; 0x1000
60300104:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
60300108:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
6030010c:	e20030ff 	and	r3, r0, #255	; 0xff
60300110:	e2833001 	add	r3, r3, #1
60300114:	e10f0000 	mrs	r0, CPSR
60300118:	e3e0101f 	mvn	r1, #31
6030011c:	e0012000 	and	r2, r1, r0
60300120:	e3822011 	orr	r2, r2, #17
60300124:	e129f002 	msr	CPSR_fc, r2
60300128:	e3a00b01 	mov	r0, #1024	; 0x400
6030012c:	e0010390 	mul	r1, r0, r3
60300130:	e59f2210 	ldr	r2, [pc, #528]	; 60300348 <putc_error+0xc>
60300134:	e081d002 	add	sp, r1, r2
60300138:	e10f0000 	mrs	r0, CPSR
6030013c:	e3e0101f 	mvn	r1, #31
60300140:	e0012000 	and	r2, r1, r0
60300144:	e3822012 	orr	r2, r2, #18
60300148:	e129f002 	msr	CPSR_fc, r2
6030014c:	e3a00b01 	mov	r0, #1024	; 0x400
60300150:	e0010390 	mul	r1, r0, r3
60300154:	e59f21f0 	ldr	r2, [pc, #496]	; 6030034c <putc_error+0x10>
60300158:	e081d002 	add	sp, r1, r2
6030015c:	e10f0000 	mrs	r0, CPSR
60300160:	e3e0101f 	mvn	r1, #31
60300164:	e0012000 	and	r2, r1, r0
60300168:	e3822017 	orr	r2, r2, #23
6030016c:	e129f002 	msr	CPSR_fc, r2
60300170:	e3a00b01 	mov	r0, #1024	; 0x400
60300174:	e0010390 	mul	r1, r0, r3
60300178:	e59f21d0 	ldr	r2, [pc, #464]	; 60300350 <putc_error+0x14>
6030017c:	e081d002 	add	sp, r1, r2
60300180:	e10f0000 	mrs	r0, CPSR
60300184:	e3e0101f 	mvn	r1, #31
60300188:	e0012000 	and	r2, r1, r0
6030018c:	e382201b 	orr	r2, r2, #27
60300190:	e129f002 	msr	CPSR_fc, r2
60300194:	e3a00b01 	mov	r0, #1024	; 0x400
60300198:	e0010390 	mul	r1, r0, r3
6030019c:	e59f21b0 	ldr	r2, [pc, #432]	; 60300354 <putc_error+0x18>
603001a0:	e081d002 	add	sp, r1, r2
603001a4:	e10f0000 	mrs	r0, CPSR
603001a8:	e3e0101f 	mvn	r1, #31
603001ac:	e0012000 	and	r2, r1, r0
603001b0:	e382201f 	orr	r2, r2, #31
603001b4:	e129f002 	msr	CPSR_fc, r2
603001b8:	e3a00b01 	mov	r0, #1024	; 0x400
603001bc:	e0010390 	mul	r1, r0, r3
603001c0:	e59f2190 	ldr	r2, [pc, #400]	; 60300358 <putc_error+0x1c>
603001c4:	e081d002 	add	sp, r1, r2
603001c8:	e10f0000 	mrs	r0, CPSR
603001cc:	e3e0101f 	mvn	r1, #31
603001d0:	e0012000 	and	r2, r1, r0
603001d4:	e3822013 	orr	r2, r2, #19
603001d8:	e129f002 	msr	CPSR_fc, r2
603001dc:	e3a00b02 	mov	r0, #2048	; 0x800
603001e0:	e0010390 	mul	r1, r0, r3
603001e4:	e59f2170 	ldr	r2, [pc, #368]	; 6030035c <putc_error+0x20>
603001e8:	e081d002 	add	sp, r1, r2
603001ec:	ee110f30 	mrc	15, 0, r0, cr1, cr0, {1}
603001f0:	e3800040 	orr	r0, r0, #64	; 0x40
603001f4:	e3800001 	orr	r0, r0, #1
603001f8:	ee010f30 	mcr	15, 0, r0, cr1, cr0, {1}
603001fc:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
60300200:	e20000ff 	and	r0, r0, #255	; 0xff
60300204:	e2800001 	add	r0, r0, #1
60300208:	eb00383a 	bl	6030e2f8 <setupMMUTable>
6030020c:	e59f014c 	ldr	r0, [pc, #332]	; 60300360 <putc_error+0x24>
60300210:	ee030f10 	mcr	15, 0, r0, cr3, cr0, {0}
60300214:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
60300218:	e3c00a02 	bic	r0, r0, #8192	; 0x2000
6030021c:	e3c00002 	bic	r0, r0, #2
60300220:	e3800a01 	orr	r0, r0, #4096	; 0x1000
60300224:	e3800004 	orr	r0, r0, #4
60300228:	e3800001 	orr	r0, r0, #1
6030022c:	f57ff04f 	dsb	sy
60300230:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
60300234:	f57ff06f 	isb	sy
60300238:	ee111f50 	mrc	15, 0, r1, cr1, cr0, {2}
6030023c:	e381160f 	orr	r1, r1, #15728640	; 0xf00000
60300240:	ee011f50 	mcr	15, 0, r1, cr1, cr0, {2}
60300244:	eef81a10 	vmrs	r1, fpexc
60300248:	e3811101 	orr	r1, r1, #1073741824	; 0x40000000
6030024c:	eee81a10 	vmsr	fpexc, r1
60300250:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
60300254:	e20030ff 	and	r3, r0, #255	; 0xff
60300258:	e2833001 	add	r3, r3, #1
6030025c:	e3530001 	cmp	r3, #1
60300260:	ca0024f5 	bgt	6030963c <vPortSecondaryStart>
60300264:	eb00235b 	bl	60308fd8 <app_start>
60300268:	ebffffff 	bl	6030026c <exit>

6030026c <exit>:
6030026c:	ea002057 	b	603083d0 <_exit>

60300270 <invalidate_dcache>:
60300270:	ee300f30 	mrc	15, 1, r0, cr0, cr0, {1}
60300274:	e2103407 	ands	r3, r0, #117440512	; 0x7000000
60300278:	e1a03c23 	lsr	r3, r3, #24
6030027c:	0a00001a 	beq	603002ec <finished>
60300280:	e3a0a000 	mov	sl, #0

60300284 <loop1>:
60300284:	e08a20aa 	add	r2, sl, sl, lsr #1
60300288:	e1a01230 	lsr	r1, r0, r2
6030028c:	e2011007 	and	r1, r1, #7
60300290:	e3510002 	cmp	r1, #2
60300294:	ba000011 	blt	603002e0 <skip>
60300298:	ee40af10 	mcr	15, 2, sl, cr0, cr0, {0}
6030029c:	f57ff06f 	isb	sy
603002a0:	ee301f10 	mrc	15, 1, r1, cr0, cr0, {0}
603002a4:	e2012007 	and	r2, r1, #7
603002a8:	e2822004 	add	r2, r2, #4
603002ac:	e59f40b0 	ldr	r4, [pc, #176]	; 60300364 <putc_error+0x28>
603002b0:	e01441a1 	ands	r4, r4, r1, lsr #3
603002b4:	e16f5f14 	clz	r5, r4
603002b8:	e59f70a8 	ldr	r7, [pc, #168]	; 60300368 <putc_error+0x2c>
603002bc:	e01776a1 	ands	r7, r7, r1, lsr #13

603002c0 <loop2>:
603002c0:	e1a09004 	mov	r9, r4

603002c4 <loop3>:
603002c4:	e18ab519 	orr	fp, sl, r9, lsl r5
603002c8:	e18bb217 	orr	fp, fp, r7, lsl r2
603002cc:	ee07bf56 	mcr	15, 0, fp, cr7, cr6, {2}
603002d0:	e2599001 	subs	r9, r9, #1
603002d4:	aafffffa 	bge	603002c4 <loop3>
603002d8:	e2577001 	subs	r7, r7, #1
603002dc:	aafffff7 	bge	603002c0 <loop2>

603002e0 <skip>:
603002e0:	e28aa002 	add	sl, sl, #2
603002e4:	e153000a 	cmp	r3, sl
603002e8:	caffffe5 	bgt	60300284 <loop1>

603002ec <finished>:
603002ec:	e3a0a000 	mov	sl, #0
603002f0:	ee40af10 	mcr	15, 2, sl, cr0, cr0, {0}
603002f4:	f57ff04f 	dsb	sy
603002f8:	f57ff06f 	isb	sy
603002fc:	e12fff1e 	bx	lr

60300300 <__PutCharacter>:
60300300:	e59f1064 	ldr	r1, [pc, #100]	; 6030036c <putc_error+0x30>
60300304:	e3510000 	cmp	r1, #0
60300308:	0a00000b 	beq	6030033c <putc_error>
6030030c:	e350000a 	cmp	r0, #10
60300310:	1a000004 	bne	60300328 <__PutCharacter+0x28>
60300314:	e5912014 	ldr	r2, [r1, #20]
60300318:	e3120502 	tst	r2, #8388608	; 0x800000
6030031c:	0afffffc 	beq	60300314 <__PutCharacter+0x14>
60300320:	e3a0200d 	mov	r2, #13
60300324:	e5812068 	str	r2, [r1, #104]	; 0x68
60300328:	e5912014 	ldr	r2, [r1, #20]
6030032c:	e3120502 	tst	r2, #8388608	; 0x800000
60300330:	0afffffc 	beq	60300328 <__PutCharacter+0x28>
60300334:	e5810068 	str	r0, [r1, #104]	; 0x68
60300338:	e12fff1e 	bx	lr

6030033c <putc_error>:
6030033c:	e3e00000 	mvn	r0, #0
60300340:	e12fff1e 	bx	lr
60300344:	60300000 	.word	0x60300000
60300348:	6032b680 	.word	0x6032b680
6030034c:	6032be80 	.word	0x6032be80
60300350:	6032d680 	.word	0x6032d680
60300354:	6032de80 	.word	0x6032de80
60300358:	6032e680 	.word	0x6032e680
6030035c:	6032c680 	.word	0x6032c680
60300360:	55555555 	.word	0x55555555
60300364:	000003ff 	.word	0x000003ff
60300368:	00007fff 	.word	0x00007fff
6030036c:	4200c000 	.word	0x4200c000

60300370 <cpu_suspend>:
60300370:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
60300374:	e1a0500d 	mov	r5, sp
60300378:	e92d0003 	push	{r0, r1}
6030037c:	e1a00005 	mov	r0, r5
60300380:	eb004df4 	bl	60313b58 <cpu_suspend_save>
60300384:	e8bd8001 	pop	{r0, pc}
60300388:	e320f000 	nop	{0}
6030038c:	e320f000 	nop	{0}

60300390 <cpu_do_suspend>:
60300390:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
60300394:	f1020013 	cps	#19
60300398:	ee1d4f10 	mrc	15, 0, r4, cr13, cr0, {0}
6030039c:	ee1d5f70 	mrc	15, 0, r5, cr13, cr0, {3}
603003a0:	e8a00030 	stmia	r0!, {r4, r5}
603003a4:	ee1c4f10 	mrc	15, 0, r4, cr12, cr0, {0}
603003a8:	ee1a6f12 	mrc	15, 0, r6, cr10, cr2, {0}
603003ac:	ec575f02 	mrrc	15, 0, r5, r7, cr2
603003b0:	ee12bf50 	mrc	15, 0, fp, cr2, cr0, {2}
603003b4:	ee118f10 	mrc	15, 0, r8, cr1, cr0, {0}
603003b8:	ee119f30 	mrc	15, 0, r9, cr1, cr0, {1}
603003bc:	ee11af50 	mrc	15, 0, sl, cr1, cr0, {2}
603003c0:	e8a00ff0 	stmia	r0!, {r4, r5, r6, r7, r8, r9, sl, fp}
603003c4:	f1020012 	cps	#18
603003c8:	e14f2000 	mrs	r2, SPSR
603003cc:	e4802004 	str	r2, [r0], #4
603003d0:	e480d004 	str	sp, [r0], #4
603003d4:	e480e004 	str	lr, [r0], #4
603003d8:	f1020011 	cps	#17
603003dc:	e14f2000 	mrs	r2, SPSR
603003e0:	e4802004 	str	r2, [r0], #4
603003e4:	e480d004 	str	sp, [r0], #4
603003e8:	e480e004 	str	lr, [r0], #4
603003ec:	f1020017 	cps	#23
603003f0:	e14f2000 	mrs	r2, SPSR
603003f4:	e4802004 	str	r2, [r0], #4
603003f8:	e480d004 	str	sp, [r0], #4
603003fc:	e480e004 	str	lr, [r0], #4
60300400:	f102001b 	cps	#27
60300404:	e14f2000 	mrs	r2, SPSR
60300408:	e4802004 	str	r2, [r0], #4
6030040c:	e480d004 	str	sp, [r0], #4
60300410:	e480e004 	str	lr, [r0], #4
60300414:	f1020013 	cps	#19
60300418:	e14f2000 	mrs	r2, SPSR
6030041c:	e4802004 	str	r2, [r0], #4
60300420:	e480d004 	str	sp, [r0], #4
60300424:	e480e004 	str	lr, [r0], #4
60300428:	f102001f 	cps	#31
6030042c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

60300430 <cpu_resume>:
60300430:	e59f10cc 	ldr	r1, [pc, #204]	; 60300504 <cpu_resume+0xd4>
60300434:	e2810004 	add	r0, r1, #4
60300438:	e3a0c000 	mov	ip, #0
6030043c:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
60300440:	ee0dcf30 	mcr	15, 0, ip, cr13, cr0, {1}
60300444:	e8b00030 	ldm	r0!, {r4, r5}
60300448:	ee0d4f10 	mcr	15, 0, r4, cr13, cr0, {0}
6030044c:	ee0d5f70 	mcr	15, 0, r5, cr13, cr0, {3}
60300450:	e8b00ff0 	ldm	r0!, {r4, r5, r6, r7, r8, r9, sl, fp}
60300454:	ee0c4f10 	mcr	15, 0, r4, cr12, cr0, {0}
60300458:	ee08cf17 	mcr	15, 0, ip, cr8, cr7, {0}
6030045c:	ee0a6f12 	mcr	15, 0, r6, cr10, cr2, {0}
60300460:	ec4c1f12 	mcrr	15, 1, r1, ip, cr2
60300464:	ec475f02 	mcrr	15, 0, r5, r7, cr2
60300468:	ee02bf50 	mcr	15, 0, fp, cr2, cr0, {2}
6030046c:	ee019f30 	mcr	15, 0, r9, cr1, cr0, {1}
60300470:	ee01af50 	mcr	15, 0, sl, cr1, cr0, {2}
60300474:	f57ff06f 	isb	sy
60300478:	f57ff04f 	dsb	sy
6030047c:	ee018f10 	mcr	15, 0, r8, cr1, cr0, {0}
60300480:	f1020012 	cps	#18
60300484:	e4902004 	ldr	r2, [r0], #4
60300488:	e490d004 	ldr	sp, [r0], #4
6030048c:	e490e004 	ldr	lr, [r0], #4
60300490:	e16ff002 	msr	SPSR_fsxc, r2
60300494:	f1020011 	cps	#17
60300498:	e4902004 	ldr	r2, [r0], #4
6030049c:	e490d004 	ldr	sp, [r0], #4
603004a0:	e490e004 	ldr	lr, [r0], #4
603004a4:	e16ff002 	msr	SPSR_fsxc, r2
603004a8:	f1020017 	cps	#23
603004ac:	e4902004 	ldr	r2, [r0], #4
603004b0:	e490d004 	ldr	sp, [r0], #4
603004b4:	e490e004 	ldr	lr, [r0], #4
603004b8:	e16ff002 	msr	SPSR_fsxc, r2
603004bc:	f102001b 	cps	#27
603004c0:	e4902004 	ldr	r2, [r0], #4
603004c4:	e490d004 	ldr	sp, [r0], #4
603004c8:	e490e004 	ldr	lr, [r0], #4
603004cc:	e16ff002 	msr	SPSR_fsxc, r2
603004d0:	f1020013 	cps	#19
603004d4:	e4902004 	ldr	r2, [r0], #4
603004d8:	e490d004 	ldr	sp, [r0], #4
603004dc:	e490e004 	ldr	lr, [r0], #4
603004e0:	e16ff002 	msr	SPSR_fsxc, r2
603004e4:	f57ff06f 	isb	sy
603004e8:	f57ff04f 	dsb	sy
603004ec:	f102001f 	cps	#31
603004f0:	e59f100c 	ldr	r1, [pc, #12]	; 60300504 <cpu_resume+0xd4>
603004f4:	e591d000 	ldr	sp, [r1]
603004f8:	f57ff06f 	isb	sy
603004fc:	e3a00000 	mov	r0, #0
60300500:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
60300504:	603284b4 	.word	0x603284b4

60300508 <FreeRTOS_IPI_FLASHPG_Handler>:
60300508:	e10f1000 	mrs	r1, CPSR
6030050c:	f10c0080 	cpsid	i
60300510:	f57ff04f 	dsb	sy
60300514:	f57ff06f 	isb	sy
60300518:	e3032d40 	movw	r2, #15680	; 0x3d40
6030051c:	e3462032 	movt	r2, #24626	; 0x6032
60300520:	e5923000 	ldr	r3, [r2]
60300524:	e2833001 	add	r3, r3, #1
60300528:	e5823000 	str	r3, [r2]
6030052c:	f57ff05f 	dmb	sy
60300530:	e5923000 	ldr	r3, [r2]
60300534:	e3530000 	cmp	r3, #0
60300538:	0a000003 	beq	6030054c <FreeRTOS_IPI_FLASHPG_Handler+0x44>
6030053c:	e320f002 	wfe
60300540:	e5923000 	ldr	r3, [r2]
60300544:	e3530000 	cmp	r3, #0
60300548:	1afffffb 	bne	6030053c <FreeRTOS_IPI_FLASHPG_Handler+0x34>
6030054c:	e121f001 	msr	CPSR_c, r1
60300550:	e12fff1e 	bx	lr

60300554 <__arm_smccc_smc>:
60300554:	e1a0c00d 	mov	ip, sp
60300558:	e92d00f0 	push	{r4, r5, r6, r7}
6030055c:	e89c00f0 	ldm	ip, {r4, r5, r6, r7}
60300560:	e1600070 	.word	0xe1600070
60300564:	e8bd00f0 	pop	{r4, r5, r6, r7}
60300568:	e59dc010 	ldr	ip, [sp, #16]
6030056c:	e88c000f 	stm	ip, {r0, r1, r2, r3}
60300570:	e12fff1e 	bx	lr
	...

60300580 <FreeRTOS_SWI_Handler>:
60300580:	f96d051f 	srsdb	sp!, #31
60300584:	f102001f 	cps	#31
60300588:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
6030058c:	e59f2250 	ldr	r2, [pc, #592]	; 603007e4 <ulPortTaskHasFPUContextConst>
60300590:	e5923000 	ldr	r3, [r2]
60300594:	e3530000 	cmp	r3, #0
60300598:	1ef11a10 	vmrsne	r1, fpscr
6030059c:	1d2d0b20 	vpushne	{d0-d15}
603005a0:	1d6d0b20 	vpushne	{d16-d31}
603005a4:	152d1004 	pushne	{r1}		; (strne r1, [sp, #-4]!)
603005a8:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
603005ac:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
603005b0:	e20000ff 	and	r0, r0, #255	; 0xff
603005b4:	e59f1224 	ldr	r1, [pc, #548]	; 603007e0 <pxCurrentTCBConst>
603005b8:	e7912100 	ldr	r2, [r1, r0, lsl #2]
603005bc:	e582d000 	str	sp, [r2]
603005c0:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
603005c4:	e20000ff 	and	r0, r0, #255	; 0xff
603005c8:	e59f1218 	ldr	r1, [pc, #536]	; 603007e8 <vTaskSwitchContextConst>
603005cc:	e12fff31 	blx	r1
603005d0:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
603005d4:	e20000ff 	and	r0, r0, #255	; 0xff
603005d8:	e59f1200 	ldr	r1, [pc, #512]	; 603007e0 <pxCurrentTCBConst>
603005dc:	e7912100 	ldr	r2, [r1, r0, lsl #2]
603005e0:	e592d000 	ldr	sp, [r2]
603005e4:	e59f01f8 	ldr	r0, [pc, #504]	; 603007e4 <ulPortTaskHasFPUContextConst>
603005e8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
603005ec:	e5801000 	str	r1, [r0]
603005f0:	e3510000 	cmp	r1, #0
603005f4:	149d0004 	popne	{r0}		; (ldrne r0, [sp], #4)
603005f8:	1cfd0b20 	vpopne	{d16-d31}
603005fc:	1cbd0b20 	vpopne	{d0-d15}
60300600:	1ee10a10 	vmsrne	fpscr, r0
60300604:	e8bd5fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
60300608:	f8bd0a00 	rfeia	sp!

6030060c <vPortRestoreTaskContext>:
6030060c:	f102001f 	cps	#31
60300610:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
60300614:	e20000ff 	and	r0, r0, #255	; 0xff
60300618:	e59f11c8 	ldr	r1, [pc, #456]	; 603007e8 <vTaskSwitchContextConst>
6030061c:	e12fff31 	blx	r1
60300620:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
60300624:	e20000ff 	and	r0, r0, #255	; 0xff
60300628:	e59f11b0 	ldr	r1, [pc, #432]	; 603007e0 <pxCurrentTCBConst>
6030062c:	e7912100 	ldr	r2, [r1, r0, lsl #2]
60300630:	e592d000 	ldr	sp, [r2]
60300634:	e59f01a8 	ldr	r0, [pc, #424]	; 603007e4 <ulPortTaskHasFPUContextConst>
60300638:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
6030063c:	e5801000 	str	r1, [r0]
60300640:	e3510000 	cmp	r1, #0
60300644:	149d0004 	popne	{r0}		; (ldrne r0, [sp], #4)
60300648:	1cfd0b20 	vpopne	{d16-d31}
6030064c:	1cbd0b20 	vpopne	{d0-d15}
60300650:	1ee10a10 	vmsrne	fpscr, r0
60300654:	e8bd5fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
60300658:	f8bd0a00 	rfeia	sp!
6030065c:	e320f000 	nop	{0}

60300660 <FreeRTOS_IRQ_Handler>:
60300660:	e24ee004 	sub	lr, lr, #4
60300664:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
60300668:	e14fe000 	mrs	lr, SPSR
6030066c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
60300670:	e92d101f 	push	{r0, r1, r2, r3, r4, ip}
60300674:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
60300678:	e20020ff 	and	r2, r0, #255	; 0xff
6030067c:	e59f3170 	ldr	r3, [pc, #368]	; 603007f4 <vApplicationFPUSafeIRQHandlerConst+0x4>
60300680:	e7931102 	ldr	r1, [r3, r2, lsl #2]
60300684:	e2814001 	add	r4, r1, #1
60300688:	e7834102 	str	r4, [r3, r2, lsl #2]
6030068c:	f1020013 	cps	#19
60300690:	e1a0200d 	mov	r2, sp
60300694:	e2022004 	and	r2, r2, #4
60300698:	e04dd002 	sub	sp, sp, r2
6030069c:	e92d401f 	push	{r0, r1, r2, r3, r4, lr}
603006a0:	e59f1144 	ldr	r1, [pc, #324]	; 603007ec <vApplicationIRQHandlerConst>
603006a4:	e12fff31 	blx	r1
603006a8:	e8bd401f 	pop	{r0, r1, r2, r3, r4, lr}
603006ac:	e08dd002 	add	sp, sp, r2
603006b0:	f1020012 	cps	#18
603006b4:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
603006b8:	e20020ff 	and	r2, r0, #255	; 0xff
603006bc:	e59f3130 	ldr	r3, [pc, #304]	; 603007f4 <vApplicationFPUSafeIRQHandlerConst+0x4>
603006c0:	e7931102 	ldr	r1, [r3, r2, lsl #2]
603006c4:	e2414001 	sub	r4, r1, #1
603006c8:	e7834102 	str	r4, [r3, r2, lsl #2]
603006cc:	e3540000 	cmp	r4, #0
603006d0:	1a000005 	bne	603006ec <exit_without_switch>
603006d4:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
603006d8:	e20020ff 	and	r2, r0, #255	; 0xff
603006dc:	e59f1114 	ldr	r1, [pc, #276]	; 603007f8 <vApplicationFPUSafeIRQHandlerConst+0x8>
603006e0:	e7910102 	ldr	r0, [r1, r2, lsl #2]
603006e4:	e3500000 	cmp	r0, #0
603006e8:	1a000004 	bne	60300700 <switch_before_exit>

603006ec <exit_without_switch>:
603006ec:	e8bd101f 	pop	{r0, r1, r2, r3, r4, ip}
603006f0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
603006f4:	e16ff00e 	msr	SPSR_fsxc, lr
603006f8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
603006fc:	e1b0f00e 	movs	pc, lr

60300700 <switch_before_exit>:
60300700:	e3a00000 	mov	r0, #0
60300704:	e7810102 	str	r0, [r1, r2, lsl #2]
60300708:	e8bd101f 	pop	{r0, r1, r2, r3, r4, ip}
6030070c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
60300710:	e16ff00e 	msr	SPSR_fsxc, lr
60300714:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
60300718:	f96d051f 	srsdb	sp!, #31
6030071c:	f102001f 	cps	#31
60300720:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
60300724:	e59f20b8 	ldr	r2, [pc, #184]	; 603007e4 <ulPortTaskHasFPUContextConst>
60300728:	e5923000 	ldr	r3, [r2]
6030072c:	e3530000 	cmp	r3, #0
60300730:	1ef11a10 	vmrsne	r1, fpscr
60300734:	1d2d0b20 	vpushne	{d0-d15}
60300738:	1d6d0b20 	vpushne	{d16-d31}
6030073c:	152d1004 	pushne	{r1}		; (strne r1, [sp, #-4]!)
60300740:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
60300744:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
60300748:	e20000ff 	and	r0, r0, #255	; 0xff
6030074c:	e59f108c 	ldr	r1, [pc, #140]	; 603007e0 <pxCurrentTCBConst>
60300750:	e7912100 	ldr	r2, [r1, r0, lsl #2]
60300754:	e582d000 	str	sp, [r2]
60300758:	f1020012 	cps	#18
6030075c:	e59f1084 	ldr	r1, [pc, #132]	; 603007e8 <vTaskSwitchContextConst>
60300760:	e12fff31 	blx	r1
60300764:	f102001f 	cps	#31
60300768:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
6030076c:	e20000ff 	and	r0, r0, #255	; 0xff
60300770:	e59f1068 	ldr	r1, [pc, #104]	; 603007e0 <pxCurrentTCBConst>
60300774:	e7912100 	ldr	r2, [r1, r0, lsl #2]
60300778:	e592d000 	ldr	sp, [r2]
6030077c:	e59f0060 	ldr	r0, [pc, #96]	; 603007e4 <ulPortTaskHasFPUContextConst>
60300780:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
60300784:	e5801000 	str	r1, [r0]
60300788:	e3510000 	cmp	r1, #0
6030078c:	149d0004 	popne	{r0}		; (ldrne r0, [sp], #4)
60300790:	1cfd0b20 	vpopne	{d16-d31}
60300794:	1cbd0b20 	vpopne	{d0-d15}
60300798:	1ee10a10 	vmsrne	fpscr, r0
6030079c:	e8bd5fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
603007a0:	f8bd0a00 	rfeia	sp!
603007a4:	e320f000 	nop	{0}
603007a8:	e320f000 	nop	{0}
603007ac:	e320f000 	nop	{0}

603007b0 <vApplicationIRQHandler>:
603007b0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
603007b4:	eef11a10 	vmrs	r1, fpscr
603007b8:	ed2d0b20 	vpush	{d0-d15}
603007bc:	ed6d0b20 	vpush	{d16-d31}
603007c0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
603007c4:	e59f1024 	ldr	r1, [pc, #36]	; 603007f0 <vApplicationFPUSafeIRQHandlerConst>
603007c8:	e12fff31 	blx	r1
603007cc:	e49d0004 	pop	{r0}		; (ldr r0, [sp], #4)
603007d0:	ecfd0b20 	vpop	{d16-d31}
603007d4:	ecbd0b20 	vpop	{d0-d15}
603007d8:	eee10a10 	vmsr	fpscr, r0
603007dc:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

603007e0 <pxCurrentTCBConst>:
603007e0:	603281c4 	.word	0x603281c4

603007e4 <ulPortTaskHasFPUContextConst>:
603007e4:	60323d4c 	.word	0x60323d4c

603007e8 <vTaskSwitchContextConst>:
603007e8:	603105bc 	.word	0x603105bc

603007ec <vApplicationIRQHandlerConst>:
603007ec:	603007b0 	.word	0x603007b0

603007f0 <vApplicationFPUSafeIRQHandlerConst>:
603007f0:	60308ee8 	.word	0x60308ee8
603007f4:	60323d44 	.word	0x60323d44
603007f8:	60323d50 	.word	0x60323d50

603007fc <deregister_tm_clones>:
603007fc:	e59f0018 	ldr	r0, [pc, #24]	; 6030081c <deregister_tm_clones+0x20>
60300800:	e59f3018 	ldr	r3, [pc, #24]	; 60300820 <deregister_tm_clones+0x24>
60300804:	e1530000 	cmp	r3, r0
60300808:	012fff1e 	bxeq	lr
6030080c:	e59f3010 	ldr	r3, [pc, #16]	; 60300824 <deregister_tm_clones+0x28>
60300810:	e3530000 	cmp	r3, #0
60300814:	012fff1e 	bxeq	lr
60300818:	e12fff13 	bx	r3
6030081c:	603162b0 	.word	0x603162b0
60300820:	603162b0 	.word	0x603162b0
60300824:	00000000 	.word	0x00000000

60300828 <register_tm_clones>:
60300828:	e59f0024 	ldr	r0, [pc, #36]	; 60300854 <register_tm_clones+0x2c>
6030082c:	e59f1024 	ldr	r1, [pc, #36]	; 60300858 <register_tm_clones+0x30>
60300830:	e0413000 	sub	r3, r1, r0
60300834:	e1a01fa3 	lsr	r1, r3, #31
60300838:	e0811143 	add	r1, r1, r3, asr #2
6030083c:	e1b010c1 	asrs	r1, r1, #1
60300840:	012fff1e 	bxeq	lr
60300844:	e59f3010 	ldr	r3, [pc, #16]	; 6030085c <register_tm_clones+0x34>
60300848:	e3530000 	cmp	r3, #0
6030084c:	012fff1e 	bxeq	lr
60300850:	e12fff13 	bx	r3
60300854:	603162b0 	.word	0x603162b0
60300858:	603162b0 	.word	0x603162b0
6030085c:	00000000 	.word	0x00000000

60300860 <__do_global_dtors_aux>:
60300860:	e92d4010 	push	{r4, lr}
60300864:	e59f402c 	ldr	r4, [pc, #44]	; 60300898 <__do_global_dtors_aux+0x38>
60300868:	e5d43000 	ldrb	r3, [r4]
6030086c:	e3530000 	cmp	r3, #0
60300870:	18bd8010 	popne	{r4, pc}
60300874:	ebffffe0 	bl	603007fc <deregister_tm_clones>
60300878:	e59f301c 	ldr	r3, [pc, #28]	; 6030089c <__do_global_dtors_aux+0x3c>
6030087c:	e3530000 	cmp	r3, #0
60300880:	0a000001 	beq	6030088c <__do_global_dtors_aux+0x2c>
60300884:	e59f0014 	ldr	r0, [pc, #20]	; 603008a0 <__do_global_dtors_aux+0x40>
60300888:	e320f000 	nop	{0}
6030088c:	e3a03001 	mov	r3, #1
60300890:	e5c43000 	strb	r3, [r4]
60300894:	e8bd8010 	pop	{r4, pc}
60300898:	60323000 	.word	0x60323000
6030089c:	00000000 	.word	0x00000000
603008a0:	60315ab8 	.word	0x60315ab8

603008a4 <frame_dummy>:
603008a4:	e59f301c 	ldr	r3, [pc, #28]	; 603008c8 <frame_dummy+0x24>
603008a8:	e3530000 	cmp	r3, #0
603008ac:	0a000004 	beq	603008c4 <frame_dummy+0x20>
603008b0:	e92d4010 	push	{r4, lr}
603008b4:	e59f1010 	ldr	r1, [pc, #16]	; 603008cc <frame_dummy+0x28>
603008b8:	e59f0010 	ldr	r0, [pc, #16]	; 603008d0 <frame_dummy+0x2c>
603008bc:	e320f000 	nop	{0}
603008c0:	e8bd4010 	pop	{r4, lr}
603008c4:	eaffffd7 	b	60300828 <register_tm_clones>
603008c8:	00000000 	.word	0x00000000
603008cc:	60323004 	.word	0x60323004
603008d0:	60315ab8 	.word	0x60315ab8

603008d4 <__aeabi_uldivmod>:
603008d4:	e3530000 	cmp	r3, #0
603008d8:	03520000 	cmpeq	r2, #0
603008dc:	1a000004 	bne	603008f4 <__aeabi_uldivmod+0x20>
603008e0:	e3510000 	cmp	r1, #0
603008e4:	03500000 	cmpeq	r0, #0
603008e8:	13e01000 	mvnne	r1, #0
603008ec:	13e00000 	mvnne	r0, #0
603008f0:	ea000054 	b	60300a48 <__aeabi_idiv0>
603008f4:	e24dd008 	sub	sp, sp, #8
603008f8:	e92d6000 	push	{sp, lr}
603008fc:	eb00000b 	bl	60300930 <__udivmoddi4>
60300900:	e59de004 	ldr	lr, [sp, #4]
60300904:	e28dd008 	add	sp, sp, #8
60300908:	e8bd000c 	pop	{r2, r3}
6030090c:	e12fff1e 	bx	lr

60300910 <__ctzdi2>:
60300910:	e3500000 	cmp	r0, #0
60300914:	11a01000 	movne	r1, r0
60300918:	03a00020 	moveq	r0, #32
6030091c:	e6ff1f31 	rbit	r1, r1
60300920:	13a00000 	movne	r0, #0
60300924:	e16f1f11 	clz	r1, r1
60300928:	e0800001 	add	r0, r0, r1
6030092c:	e12fff1e 	bx	lr

60300930 <__udivmoddi4>:
60300930:	e1500002 	cmp	r0, r2
60300934:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
60300938:	e1a0e001 	mov	lr, r1
6030093c:	e0de1003 	sbcs	r1, lr, r3
60300940:	e1a0c000 	mov	ip, r0
60300944:	33a00000 	movcc	r0, #0
60300948:	e59d601c 	ldr	r6, [sp, #28]
6030094c:	31a01000 	movcc	r1, r0
60300950:	3a000036 	bcc	60300a30 <__udivmoddi4+0x100>
60300954:	e3530000 	cmp	r3, #0
60300958:	016f4f12 	clzeq	r4, r2
6030095c:	116f4f13 	clzne	r4, r3
60300960:	02844020 	addeq	r4, r4, #32
60300964:	e35e0000 	cmp	lr, #0
60300968:	016f1f1c 	clzeq	r1, ip
6030096c:	116f1f1e 	clzne	r1, lr
60300970:	02811020 	addeq	r1, r1, #32
60300974:	e0444001 	sub	r4, r4, r1
60300978:	e2447020 	sub	r7, r4, #32
6030097c:	e2645020 	rsb	r5, r4, #32
60300980:	e1a03413 	lsl	r3, r3, r4
60300984:	e1833712 	orr	r3, r3, r2, lsl r7
60300988:	e1833532 	orr	r3, r3, r2, lsr r5
6030098c:	e1a02412 	lsl	r2, r2, r4
60300990:	e15c0002 	cmp	ip, r2
60300994:	e0de1003 	sbcs	r1, lr, r3
60300998:	33a00000 	movcc	r0, #0
6030099c:	31a01000 	movcc	r1, r0
603009a0:	3a000005 	bcc	603009bc <__udivmoddi4+0x8c>
603009a4:	e3a00001 	mov	r0, #1
603009a8:	e05cc002 	subs	ip, ip, r2
603009ac:	e0cee003 	sbc	lr, lr, r3
603009b0:	e1a01710 	lsl	r1, r0, r7
603009b4:	e1811530 	orr	r1, r1, r0, lsr r5
603009b8:	e1a00410 	lsl	r0, r0, r4
603009bc:	e3540000 	cmp	r4, #0
603009c0:	0a00001a 	beq	60300a30 <__udivmoddi4+0x100>
603009c4:	e1a020a2 	lsr	r2, r2, #1
603009c8:	e1a08004 	mov	r8, r4
603009cc:	e1822f83 	orr	r2, r2, r3, lsl #31
603009d0:	e1a030a3 	lsr	r3, r3, #1
603009d4:	e15c0002 	cmp	ip, r2
603009d8:	e0de9003 	sbcs	r9, lr, r3
603009dc:	3a000016 	bcc	60300a3c <__udivmoddi4+0x10c>
603009e0:	e05cc002 	subs	ip, ip, r2
603009e4:	e0cee003 	sbc	lr, lr, r3
603009e8:	e09cc00c 	adds	ip, ip, ip
603009ec:	e0aee00e 	adc	lr, lr, lr
603009f0:	e29cc001 	adds	ip, ip, #1
603009f4:	e2aee000 	adc	lr, lr, #0
603009f8:	e2588001 	subs	r8, r8, #1
603009fc:	1afffff4 	bne	603009d4 <__udivmoddi4+0xa4>
60300a00:	e090000c 	adds	r0, r0, ip
60300a04:	e1a0c43c 	lsr	ip, ip, r4
60300a08:	e18cc51e 	orr	ip, ip, lr, lsl r5
60300a0c:	e0a1100e 	adc	r1, r1, lr
60300a10:	e18cc73e 	orr	ip, ip, lr, lsr r7
60300a14:	e1a0e43e 	lsr	lr, lr, r4
60300a18:	e1a0341e 	lsl	r3, lr, r4
60300a1c:	e183371c 	orr	r3, r3, ip, lsl r7
60300a20:	e1a0441c 	lsl	r4, ip, r4
60300a24:	e183353c 	orr	r3, r3, ip, lsr r5
60300a28:	e0500004 	subs	r0, r0, r4
60300a2c:	e0c11003 	sbc	r1, r1, r3
60300a30:	e3560000 	cmp	r6, #0
60300a34:	18865000 	stmne	r6, {ip, lr}
60300a38:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
60300a3c:	e09cc00c 	adds	ip, ip, ip
60300a40:	e0aee00e 	adc	lr, lr, lr
60300a44:	eaffffeb 	b	603009f8 <__udivmoddi4+0xc8>

60300a48 <__aeabi_idiv0>:
60300a48:	e12fff1e 	bx	lr

60300a4c <__assert_func>:
60300a4c:	e92d401f 	push	{r0, r1, r2, r3, r4, lr}
60300a50:	e1a0c002 	mov	ip, r2
60300a54:	e1a02003 	mov	r2, r3
60300a58:	e59f302c 	ldr	r3, [pc, #44]	; 60300a8c <__assert_func+0x40>
60300a5c:	e35c0000 	cmp	ip, #0
60300a60:	e1a0e000 	mov	lr, r0
60300a64:	e5933000 	ldr	r3, [r3]
60300a68:	e593000c 	ldr	r0, [r3, #12]
60300a6c:	059f301c 	ldreq	r3, [pc, #28]	; 60300a90 <__assert_func+0x44>
60300a70:	159f301c 	ldrne	r3, [pc, #28]	; 60300a94 <__assert_func+0x48>
60300a74:	01a0c003 	moveq	ip, r3
60300a78:	e88d100a 	stm	sp, {r1, r3, ip}
60300a7c:	e59f1014 	ldr	r1, [pc, #20]	; 60300a98 <__assert_func+0x4c>
60300a80:	e1a0300e 	mov	r3, lr
60300a84:	eb0001b2 	bl	60301154 <fiprintf>
60300a88:	eb0009fa 	bl	60303278 <abort>
60300a8c:	60316000 	.word	0x60316000
60300a90:	603159b3 	.word	0x603159b3
60300a94:	60315978 	.word	0x60315978
60300a98:	60315985 	.word	0x60315985

60300a9c <__assert>:
60300a9c:	e1a03002 	mov	r3, r2
60300aa0:	e92d4010 	push	{r4, lr}
60300aa4:	e3a02000 	mov	r2, #0
60300aa8:	ebffffe7 	bl	60300a4c <__assert_func>

60300aac <__sflush_r>:
60300aac:	e1d130bc 	ldrh	r3, [r1, #12]
60300ab0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60300ab4:	e1a05000 	mov	r5, r0
60300ab8:	e1d120fc 	ldrsh	r2, [r1, #12]
60300abc:	e1a04001 	mov	r4, r1
60300ac0:	e3130008 	tst	r3, #8
60300ac4:	1a000058 	bne	60300c2c <__sflush_r+0x180>
60300ac8:	e5913004 	ldr	r3, [r1, #4]
60300acc:	e3822b02 	orr	r2, r2, #2048	; 0x800
60300ad0:	e1c120bc 	strh	r2, [r1, #12]
60300ad4:	e3530000 	cmp	r3, #0
60300ad8:	ca000004 	bgt	60300af0 <__sflush_r+0x44>
60300adc:	e5913040 	ldr	r3, [r1, #64]	; 0x40
60300ae0:	e3530000 	cmp	r3, #0
60300ae4:	ca000001 	bgt	60300af0 <__sflush_r+0x44>
60300ae8:	e3a00000 	mov	r0, #0
60300aec:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60300af0:	e594802c 	ldr	r8, [r4, #44]	; 0x2c
60300af4:	e3580000 	cmp	r8, #0
60300af8:	0afffffa 	beq	60300ae8 <__sflush_r+0x3c>
60300afc:	e2127a01 	ands	r7, r2, #4096	; 0x1000
60300b00:	e5956000 	ldr	r6, [r5]
60300b04:	e3a03000 	mov	r3, #0
60300b08:	e5853000 	str	r3, [r5]
60300b0c:	15940054 	ldrne	r0, [r4, #84]	; 0x54
60300b10:	1a000011 	bne	60300b5c <__sflush_r+0xb0>
60300b14:	e5941020 	ldr	r1, [r4, #32]
60300b18:	e3a03001 	mov	r3, #1
60300b1c:	e1a02007 	mov	r2, r7
60300b20:	e1a00005 	mov	r0, r5
60300b24:	e12fff38 	blx	r8
60300b28:	e3700001 	cmn	r0, #1
60300b2c:	1a00000a 	bne	60300b5c <__sflush_r+0xb0>
60300b30:	e5953000 	ldr	r3, [r5]
60300b34:	e3530000 	cmp	r3, #0
60300b38:	0a000007 	beq	60300b5c <__sflush_r+0xb0>
60300b3c:	e3530016 	cmp	r3, #22
60300b40:	1353001d 	cmpne	r3, #29
60300b44:	05856000 	streq	r6, [r5]
60300b48:	11d430bc 	ldrhne	r3, [r4, #12]
60300b4c:	0affffe5 	beq	60300ae8 <__sflush_r+0x3c>
60300b50:	e3833040 	orr	r3, r3, #64	; 0x40
60300b54:	e1c430bc 	strh	r3, [r4, #12]
60300b58:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60300b5c:	e1d430bc 	ldrh	r3, [r4, #12]
60300b60:	e3130004 	tst	r3, #4
60300b64:	0a000005 	beq	60300b80 <__sflush_r+0xd4>
60300b68:	e5943004 	ldr	r3, [r4, #4]
60300b6c:	e0400003 	sub	r0, r0, r3
60300b70:	e5943034 	ldr	r3, [r4, #52]	; 0x34
60300b74:	e3530000 	cmp	r3, #0
60300b78:	15943040 	ldrne	r3, [r4, #64]	; 0x40
60300b7c:	10400003 	subne	r0, r0, r3
60300b80:	e3a03000 	mov	r3, #0
60300b84:	e1a02000 	mov	r2, r0
60300b88:	e594702c 	ldr	r7, [r4, #44]	; 0x2c
60300b8c:	e1a00005 	mov	r0, r5
60300b90:	e5941020 	ldr	r1, [r4, #32]
60300b94:	e12fff37 	blx	r7
60300b98:	e1d430bc 	ldrh	r3, [r4, #12]
60300b9c:	e3700001 	cmn	r0, #1
60300ba0:	1a000006 	bne	60300bc0 <__sflush_r+0x114>
60300ba4:	e5951000 	ldr	r1, [r5]
60300ba8:	e351001d 	cmp	r1, #29
60300bac:	8affffe7 	bhi	60300b50 <__sflush_r+0xa4>
60300bb0:	e59f20e4 	ldr	r2, [pc, #228]	; 60300c9c <__sflush_r+0x1f0>
60300bb4:	e1e02132 	mvn	r2, r2, lsr r1
60300bb8:	e3120001 	tst	r2, #1
60300bbc:	1affffe3 	bne	60300b50 <__sflush_r+0xa4>
60300bc0:	e3c33b02 	bic	r3, r3, #2048	; 0x800
60300bc4:	e3a02000 	mov	r2, #0
60300bc8:	e5842004 	str	r2, [r4, #4]
60300bcc:	e6bf3073 	sxth	r3, r3
60300bd0:	e5942010 	ldr	r2, [r4, #16]
60300bd4:	e3130a01 	tst	r3, #4096	; 0x1000
60300bd8:	e1c430bc 	strh	r3, [r4, #12]
60300bdc:	e5842000 	str	r2, [r4]
60300be0:	0a000005 	beq	60300bfc <__sflush_r+0x150>
60300be4:	e3700001 	cmn	r0, #1
60300be8:	1a000002 	bne	60300bf8 <__sflush_r+0x14c>
60300bec:	e5953000 	ldr	r3, [r5]
60300bf0:	e3530000 	cmp	r3, #0
60300bf4:	1a000000 	bne	60300bfc <__sflush_r+0x150>
60300bf8:	e5840054 	str	r0, [r4, #84]	; 0x54
60300bfc:	e5941034 	ldr	r1, [r4, #52]	; 0x34
60300c00:	e5856000 	str	r6, [r5]
60300c04:	e3510000 	cmp	r1, #0
60300c08:	0affffb6 	beq	60300ae8 <__sflush_r+0x3c>
60300c0c:	e2843044 	add	r3, r4, #68	; 0x44
60300c10:	e1510003 	cmp	r1, r3
60300c14:	0a000001 	beq	60300c20 <__sflush_r+0x174>
60300c18:	e1a00005 	mov	r0, r5
60300c1c:	eb001ef2 	bl	603087ec <__wrap__free_r>
60300c20:	e3a00000 	mov	r0, #0
60300c24:	e5840034 	str	r0, [r4, #52]	; 0x34
60300c28:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60300c2c:	e5917010 	ldr	r7, [r1, #16]
60300c30:	e3570000 	cmp	r7, #0
60300c34:	0affffab 	beq	60300ae8 <__sflush_r+0x3c>
60300c38:	e3130003 	tst	r3, #3
60300c3c:	e5916000 	ldr	r6, [r1]
60300c40:	13a03000 	movne	r3, #0
60300c44:	e5817000 	str	r7, [r1]
60300c48:	e0466007 	sub	r6, r6, r7
60300c4c:	05913014 	ldreq	r3, [r1, #20]
60300c50:	e5813008 	str	r3, [r1, #8]
60300c54:	e3560000 	cmp	r6, #0
60300c58:	daffffa2 	ble	60300ae8 <__sflush_r+0x3c>
60300c5c:	e5948028 	ldr	r8, [r4, #40]	; 0x28
60300c60:	e1a03006 	mov	r3, r6
60300c64:	e5941020 	ldr	r1, [r4, #32]
60300c68:	e1a02007 	mov	r2, r7
60300c6c:	e1a00005 	mov	r0, r5
60300c70:	e12fff38 	blx	r8
60300c74:	e3500000 	cmp	r0, #0
60300c78:	ca000004 	bgt	60300c90 <__sflush_r+0x1e4>
60300c7c:	e1d430bc 	ldrh	r3, [r4, #12]
60300c80:	e3e00000 	mvn	r0, #0
60300c84:	e3833040 	orr	r3, r3, #64	; 0x40
60300c88:	e1c430bc 	strh	r3, [r4, #12]
60300c8c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60300c90:	e0877000 	add	r7, r7, r0
60300c94:	e0466000 	sub	r6, r6, r0
60300c98:	eaffffed 	b	60300c54 <__sflush_r+0x1a8>
60300c9c:	20400001 	.word	0x20400001

60300ca0 <_fflush_r>:
60300ca0:	e5913010 	ldr	r3, [r1, #16]
60300ca4:	e92d4070 	push	{r4, r5, r6, lr}
60300ca8:	e3530000 	cmp	r3, #0
60300cac:	1a000002 	bne	60300cbc <_fflush_r+0x1c>
60300cb0:	e3a05000 	mov	r5, #0
60300cb4:	e1a00005 	mov	r0, r5
60300cb8:	e8bd8070 	pop	{r4, r5, r6, pc}
60300cbc:	e1a05000 	mov	r5, r0
60300cc0:	e1a04001 	mov	r4, r1
60300cc4:	e3500000 	cmp	r0, #0
60300cc8:	0a000003 	beq	60300cdc <_fflush_r+0x3c>
60300ccc:	e5903018 	ldr	r3, [r0, #24]
60300cd0:	e3530000 	cmp	r3, #0
60300cd4:	1a000000 	bne	60300cdc <_fflush_r+0x3c>
60300cd8:	eb000098 	bl	60300f40 <__sinit>
60300cdc:	e1d430fc 	ldrsh	r3, [r4, #12]
60300ce0:	e3530000 	cmp	r3, #0
60300ce4:	0afffff1 	beq	60300cb0 <_fflush_r+0x10>
60300ce8:	e5942064 	ldr	r2, [r4, #100]	; 0x64
60300cec:	e3120001 	tst	r2, #1
60300cf0:	1a000003 	bne	60300d04 <_fflush_r+0x64>
60300cf4:	e3130c02 	tst	r3, #512	; 0x200
60300cf8:	1a000001 	bne	60300d04 <_fflush_r+0x64>
60300cfc:	e5940058 	ldr	r0, [r4, #88]	; 0x58
60300d00:	eb000174 	bl	603012d8 <__retarget_lock_acquire_recursive>
60300d04:	e1a00005 	mov	r0, r5
60300d08:	e1a01004 	mov	r1, r4
60300d0c:	ebffff66 	bl	60300aac <__sflush_r>
60300d10:	e5943064 	ldr	r3, [r4, #100]	; 0x64
60300d14:	e1a05000 	mov	r5, r0
60300d18:	e3130001 	tst	r3, #1
60300d1c:	1affffe4 	bne	60300cb4 <_fflush_r+0x14>
60300d20:	e1d430bc 	ldrh	r3, [r4, #12]
60300d24:	e3130c02 	tst	r3, #512	; 0x200
60300d28:	1affffe1 	bne	60300cb4 <_fflush_r+0x14>
60300d2c:	e5940058 	ldr	r0, [r4, #88]	; 0x58
60300d30:	eb00016e 	bl	603012f0 <__retarget_lock_release_recursive>
60300d34:	eaffffde 	b	60300cb4 <_fflush_r+0x14>

60300d38 <fflush>:
60300d38:	e2501000 	subs	r1, r0, #0
60300d3c:	1a000003 	bne	60300d50 <fflush+0x18>
60300d40:	e59f3014 	ldr	r3, [pc, #20]	; 60300d5c <fflush+0x24>
60300d44:	e59f1014 	ldr	r1, [pc, #20]	; 60300d60 <fflush+0x28>
60300d48:	e5930000 	ldr	r0, [r3]
60300d4c:	ea000126 	b	603011ec <_fwalk_reent>
60300d50:	e59f300c 	ldr	r3, [pc, #12]	; 60300d64 <fflush+0x2c>
60300d54:	e5930000 	ldr	r0, [r3]
60300d58:	eaffffd0 	b	60300ca0 <_fflush_r>
60300d5c:	60313f58 	.word	0x60313f58
60300d60:	60300ca0 	.word	0x60300ca0
60300d64:	60316000 	.word	0x60316000

60300d68 <std>:
60300d68:	e92d4010 	push	{r4, lr}
60300d6c:	e3a03000 	mov	r3, #0
60300d70:	e1a04000 	mov	r4, r0
60300d74:	e5803000 	str	r3, [r0]
60300d78:	e280005c 	add	r0, r0, #92	; 0x5c
60300d7c:	e5003058 	str	r3, [r0, #-88]	; 0xffffffa8
60300d80:	e5003054 	str	r3, [r0, #-84]	; 0xffffffac
60300d84:	e14015b0 	strh	r1, [r0, #-80]	; 0xffffffb0
60300d88:	e1a01003 	mov	r1, r3
60300d8c:	e5803008 	str	r3, [r0, #8]
60300d90:	e14024be 	strh	r2, [r0, #-78]	; 0xffffffb2
60300d94:	e3a02008 	mov	r2, #8
60300d98:	e500304c 	str	r3, [r0, #-76]	; 0xffffffb4
60300d9c:	e5003048 	str	r3, [r0, #-72]	; 0xffffffb8
60300da0:	e5003044 	str	r3, [r0, #-68]	; 0xffffffbc
60300da4:	eb0002cf 	bl	603018e8 <memset>
60300da8:	e59f3028 	ldr	r3, [pc, #40]	; 60300dd8 <std+0x70>
60300dac:	e5843024 	str	r3, [r4, #36]	; 0x24
60300db0:	e2840058 	add	r0, r4, #88	; 0x58
60300db4:	e59f3020 	ldr	r3, [pc, #32]	; 60300ddc <std+0x74>
60300db8:	e5843028 	str	r3, [r4, #40]	; 0x28
60300dbc:	e59f301c 	ldr	r3, [pc, #28]	; 60300de0 <std+0x78>
60300dc0:	e584302c 	str	r3, [r4, #44]	; 0x2c
60300dc4:	e59f3018 	ldr	r3, [pc, #24]	; 60300de4 <std+0x7c>
60300dc8:	e5844020 	str	r4, [r4, #32]
60300dcc:	e5843030 	str	r3, [r4, #48]	; 0x30
60300dd0:	e8bd4010 	pop	{r4, lr}
60300dd4:	ea00013b 	b	603012c8 <__retarget_lock_init_recursive>
60300dd8:	60301b40 	.word	0x60301b40
60300ddc:	60301b78 	.word	0x60301b78
60300de0:	60301bcc 	.word	0x60301bcc
60300de4:	60301bfc 	.word	0x60301bfc

60300de8 <_cleanup_r>:
60300de8:	e5901004 	ldr	r1, [r0, #4]
60300dec:	e59f3050 	ldr	r3, [pc, #80]	; 60300e44 <_cleanup_r+0x5c>
60300df0:	e92d4010 	push	{r4, lr}
60300df4:	e1a04000 	mov	r4, r0
60300df8:	e1510003 	cmp	r1, r3
60300dfc:	0a000000 	beq	60300e04 <_cleanup_r+0x1c>
60300e00:	eb000d77 	bl	603043e4 <_fclose_r>
60300e04:	e5941008 	ldr	r1, [r4, #8]
60300e08:	e59f3038 	ldr	r3, [pc, #56]	; 60300e48 <_cleanup_r+0x60>
60300e0c:	e1510003 	cmp	r1, r3
60300e10:	0a000001 	beq	60300e1c <_cleanup_r+0x34>
60300e14:	e1a00004 	mov	r0, r4
60300e18:	eb000d71 	bl	603043e4 <_fclose_r>
60300e1c:	e594100c 	ldr	r1, [r4, #12]
60300e20:	e59f3024 	ldr	r3, [pc, #36]	; 60300e4c <_cleanup_r+0x64>
60300e24:	e1510003 	cmp	r1, r3
60300e28:	0a000001 	beq	60300e34 <_cleanup_r+0x4c>
60300e2c:	e1a00004 	mov	r0, r4
60300e30:	eb000d6b 	bl	603043e4 <_fclose_r>
60300e34:	e1a00004 	mov	r0, r4
60300e38:	e59f1010 	ldr	r1, [pc, #16]	; 60300e50 <_cleanup_r+0x68>
60300e3c:	e8bd4010 	pop	{r4, lr}
60300e40:	ea0000e9 	b	603011ec <_fwalk_reent>
60300e44:	6032301c 	.word	0x6032301c
60300e48:	60323084 	.word	0x60323084
60300e4c:	603230ec 	.word	0x603230ec
60300e50:	603043e4 	.word	0x603043e4

60300e54 <__fp_lock>:
60300e54:	e5903064 	ldr	r3, [r0, #100]	; 0x64
60300e58:	e3130001 	tst	r3, #1
60300e5c:	1a000007 	bne	60300e80 <__fp_lock+0x2c>
60300e60:	e1d030bc 	ldrh	r3, [r0, #12]
60300e64:	e3130c02 	tst	r3, #512	; 0x200
60300e68:	1a000004 	bne	60300e80 <__fp_lock+0x2c>
60300e6c:	e5900058 	ldr	r0, [r0, #88]	; 0x58
60300e70:	e92d4010 	push	{r4, lr}
60300e74:	eb000117 	bl	603012d8 <__retarget_lock_acquire_recursive>
60300e78:	e3a00000 	mov	r0, #0
60300e7c:	e8bd8010 	pop	{r4, pc}
60300e80:	e3a00000 	mov	r0, #0
60300e84:	e12fff1e 	bx	lr

60300e88 <__fp_unlock>:
60300e88:	e5903064 	ldr	r3, [r0, #100]	; 0x64
60300e8c:	e3130001 	tst	r3, #1
60300e90:	1a000007 	bne	60300eb4 <__fp_unlock+0x2c>
60300e94:	e1d030bc 	ldrh	r3, [r0, #12]
60300e98:	e3130c02 	tst	r3, #512	; 0x200
60300e9c:	1a000004 	bne	60300eb4 <__fp_unlock+0x2c>
60300ea0:	e5900058 	ldr	r0, [r0, #88]	; 0x58
60300ea4:	e92d4010 	push	{r4, lr}
60300ea8:	eb000110 	bl	603012f0 <__retarget_lock_release_recursive>
60300eac:	e3a00000 	mov	r0, #0
60300eb0:	e8bd8010 	pop	{r4, pc}
60300eb4:	e3a00000 	mov	r0, #0
60300eb8:	e12fff1e 	bx	lr

60300ebc <__sfmoreglue>:
60300ebc:	e92d4070 	push	{r4, r5, r6, lr}
60300ec0:	e3a02068 	mov	r2, #104	; 0x68
60300ec4:	e2415001 	sub	r5, r1, #1
60300ec8:	e1a06001 	mov	r6, r1
60300ecc:	e0050592 	mul	r5, r2, r5
60300ed0:	e2851074 	add	r1, r5, #116	; 0x74
60300ed4:	eb001e3f 	bl	603087d8 <__wrap__malloc_r>
60300ed8:	e2504000 	subs	r4, r0, #0
60300edc:	0a000005 	beq	60300ef8 <__sfmoreglue+0x3c>
60300ee0:	e3a01000 	mov	r1, #0
60300ee4:	e284000c 	add	r0, r4, #12
60300ee8:	e2852068 	add	r2, r5, #104	; 0x68
60300eec:	e8840042 	stm	r4, {r1, r6}
60300ef0:	e5840008 	str	r0, [r4, #8]
60300ef4:	eb00027b 	bl	603018e8 <memset>
60300ef8:	e1a00004 	mov	r0, r4
60300efc:	e8bd8070 	pop	{r4, r5, r6, pc}

60300f00 <_cleanup>:
60300f00:	e59f3004 	ldr	r3, [pc, #4]	; 60300f0c <_cleanup+0xc>
60300f04:	e5930000 	ldr	r0, [r3]
60300f08:	eaffffb6 	b	60300de8 <_cleanup_r>
60300f0c:	60313f58 	.word	0x60313f58

60300f10 <__sfp_lock_acquire>:
60300f10:	e59f0000 	ldr	r0, [pc]	; 60300f18 <__sfp_lock_acquire+0x8>
60300f14:	ea0000ef 	b	603012d8 <__retarget_lock_acquire_recursive>
60300f18:	6032315b 	.word	0x6032315b

60300f1c <__sfp_lock_release>:
60300f1c:	e59f0000 	ldr	r0, [pc]	; 60300f24 <__sfp_lock_release+0x8>
60300f20:	ea0000f2 	b	603012f0 <__retarget_lock_release_recursive>
60300f24:	6032315b 	.word	0x6032315b

60300f28 <__sinit_lock_acquire>:
60300f28:	e59f0000 	ldr	r0, [pc]	; 60300f30 <__sinit_lock_acquire+0x8>
60300f2c:	ea0000e9 	b	603012d8 <__retarget_lock_acquire_recursive>
60300f30:	6032315c 	.word	0x6032315c

60300f34 <__sinit_lock_release>:
60300f34:	e59f0000 	ldr	r0, [pc]	; 60300f3c <__sinit_lock_release+0x8>
60300f38:	ea0000ec 	b	603012f0 <__retarget_lock_release_recursive>
60300f3c:	6032315c 	.word	0x6032315c

60300f40 <__sinit>:
60300f40:	e92d4070 	push	{r4, r5, r6, lr}
60300f44:	e1a04000 	mov	r4, r0
60300f48:	ebfffff6 	bl	60300f28 <__sinit_lock_acquire>
60300f4c:	e5943018 	ldr	r3, [r4, #24]
60300f50:	e3530000 	cmp	r3, #0
60300f54:	0a000001 	beq	60300f60 <__sinit+0x20>
60300f58:	e8bd4070 	pop	{r4, r5, r6, lr}
60300f5c:	eafffff4 	b	60300f34 <__sinit_lock_release>
60300f60:	e58430d8 	str	r3, [r4, #216]	; 0xd8
60300f64:	e58430dc 	str	r3, [r4, #220]	; 0xdc
60300f68:	e58430e0 	str	r3, [r4, #224]	; 0xe0
60300f6c:	e59f3078 	ldr	r3, [pc, #120]	; 60300fec <__sinit+0xac>
60300f70:	e59f0078 	ldr	r0, [pc, #120]	; 60300ff0 <__sinit+0xb0>
60300f74:	e59f2078 	ldr	r2, [pc, #120]	; 60300ff4 <__sinit+0xb4>
60300f78:	e5842028 	str	r2, [r4, #40]	; 0x28
60300f7c:	e2806068 	add	r6, r0, #104	; 0x68
60300f80:	e5933000 	ldr	r3, [r3]
60300f84:	e28050d0 	add	r5, r0, #208	; 0xd0
60300f88:	e1530004 	cmp	r3, r4
60300f8c:	03a02001 	moveq	r2, #1
60300f90:	05832018 	streq	r2, [r3, #24]
60300f94:	e5902020 	ldr	r2, [r0, #32]
60300f98:	e5840004 	str	r0, [r4, #4]
60300f9c:	e3520000 	cmp	r2, #0
60300fa0:	e5846008 	str	r6, [r4, #8]
60300fa4:	e584500c 	str	r5, [r4, #12]
60300fa8:	1a00000c 	bne	60300fe0 <__sinit+0xa0>
60300fac:	e58300e0 	str	r0, [r3, #224]	; 0xe0
60300fb0:	e3a01003 	mov	r1, #3
60300fb4:	e58310dc 	str	r1, [r3, #220]	; 0xdc
60300fb8:	e3a01004 	mov	r1, #4
60300fbc:	ebffff69 	bl	60300d68 <std>
60300fc0:	e3a02001 	mov	r2, #1
60300fc4:	e3a01009 	mov	r1, #9
60300fc8:	e1a00006 	mov	r0, r6
60300fcc:	ebffff65 	bl	60300d68 <std>
60300fd0:	e3a02002 	mov	r2, #2
60300fd4:	e3a01012 	mov	r1, #18
60300fd8:	e1a00005 	mov	r0, r5
60300fdc:	ebffff61 	bl	60300d68 <std>
60300fe0:	e3a03001 	mov	r3, #1
60300fe4:	e5843018 	str	r3, [r4, #24]
60300fe8:	eaffffda 	b	60300f58 <__sinit+0x18>
60300fec:	60313f58 	.word	0x60313f58
60300ff0:	6032301c 	.word	0x6032301c
60300ff4:	60300de8 	.word	0x60300de8

60300ff8 <__sfp>:
60300ff8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60300ffc:	e1a07000 	mov	r7, r0
60301000:	ebffffc2 	bl	60300f10 <__sfp_lock_acquire>
60301004:	e59f30d0 	ldr	r3, [pc, #208]	; 603010dc <__sfp+0xe4>
60301008:	e5936000 	ldr	r6, [r3]
6030100c:	e5963018 	ldr	r3, [r6, #24]
60301010:	e3530000 	cmp	r3, #0
60301014:	1a000001 	bne	60301020 <__sfp+0x28>
60301018:	e1a00006 	mov	r0, r6
6030101c:	ebffffc7 	bl	60300f40 <__sinit>
60301020:	e28660d8 	add	r6, r6, #216	; 0xd8
60301024:	e9960018 	ldmib	r6, {r3, r4}
60301028:	e2533001 	subs	r3, r3, #1
6030102c:	5a000004 	bpl	60301044 <__sfp+0x4c>
60301030:	e5963000 	ldr	r3, [r6]
60301034:	e3530000 	cmp	r3, #0
60301038:	0a00001c 	beq	603010b0 <__sfp+0xb8>
6030103c:	e5966000 	ldr	r6, [r6]
60301040:	eafffff7 	b	60301024 <__sfp+0x2c>
60301044:	e1d450fc 	ldrsh	r5, [r4, #12]
60301048:	e3550000 	cmp	r5, #0
6030104c:	1a000015 	bne	603010a8 <__sfp+0xb0>
60301050:	e59f3088 	ldr	r3, [pc, #136]	; 603010e0 <__sfp+0xe8>
60301054:	e2840058 	add	r0, r4, #88	; 0x58
60301058:	e584300c 	str	r3, [r4, #12]
6030105c:	e5845064 	str	r5, [r4, #100]	; 0x64
60301060:	eb000098 	bl	603012c8 <__retarget_lock_init_recursive>
60301064:	ebffffac 	bl	60300f1c <__sfp_lock_release>
60301068:	e3a02008 	mov	r2, #8
6030106c:	e1a01005 	mov	r1, r5
60301070:	e284005c 	add	r0, r4, #92	; 0x5c
60301074:	e5845000 	str	r5, [r4]
60301078:	e5845008 	str	r5, [r4, #8]
6030107c:	e5845004 	str	r5, [r4, #4]
60301080:	e5845010 	str	r5, [r4, #16]
60301084:	e5845014 	str	r5, [r4, #20]
60301088:	e5845018 	str	r5, [r4, #24]
6030108c:	eb000215 	bl	603018e8 <memset>
60301090:	e5845034 	str	r5, [r4, #52]	; 0x34
60301094:	e5845038 	str	r5, [r4, #56]	; 0x38
60301098:	e5845048 	str	r5, [r4, #72]	; 0x48
6030109c:	e584504c 	str	r5, [r4, #76]	; 0x4c
603010a0:	e1a00004 	mov	r0, r4
603010a4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
603010a8:	e2844068 	add	r4, r4, #104	; 0x68
603010ac:	eaffffdd 	b	60301028 <__sfp+0x30>
603010b0:	e3a01004 	mov	r1, #4
603010b4:	e1a00007 	mov	r0, r7
603010b8:	ebffff7f 	bl	60300ebc <__sfmoreglue>
603010bc:	e1a04000 	mov	r4, r0
603010c0:	e3500000 	cmp	r0, #0
603010c4:	e5860000 	str	r0, [r6]
603010c8:	1affffdb 	bne	6030103c <__sfp+0x44>
603010cc:	ebffff92 	bl	60300f1c <__sfp_lock_release>
603010d0:	e3a0300c 	mov	r3, #12
603010d4:	e5873000 	str	r3, [r7]
603010d8:	eafffff0 	b	603010a0 <__sfp+0xa8>
603010dc:	60313f58 	.word	0x60313f58
603010e0:	ffff0001 	.word	0xffff0001

603010e4 <__fp_lock_all>:
603010e4:	e92d4010 	push	{r4, lr}
603010e8:	ebffff88 	bl	60300f10 <__sfp_lock_acquire>
603010ec:	e59f300c 	ldr	r3, [pc, #12]	; 60301100 <__fp_lock_all+0x1c>
603010f0:	e8bd4010 	pop	{r4, lr}
603010f4:	e59f1008 	ldr	r1, [pc, #8]	; 60301104 <__fp_lock_all+0x20>
603010f8:	e5930000 	ldr	r0, [r3]
603010fc:	ea000022 	b	6030118c <_fwalk>
60301100:	60316000 	.word	0x60316000
60301104:	60300e54 	.word	0x60300e54

60301108 <__fp_unlock_all>:
60301108:	e59f3014 	ldr	r3, [pc, #20]	; 60301124 <__fp_unlock_all+0x1c>
6030110c:	e92d4010 	push	{r4, lr}
60301110:	e59f1010 	ldr	r1, [pc, #16]	; 60301128 <__fp_unlock_all+0x20>
60301114:	e5930000 	ldr	r0, [r3]
60301118:	eb00001b 	bl	6030118c <_fwalk>
6030111c:	e8bd4010 	pop	{r4, lr}
60301120:	eaffff7d 	b	60300f1c <__sfp_lock_release>
60301124:	60316000 	.word	0x60316000
60301128:	60300e88 	.word	0x60300e88

6030112c <_fiprintf_r>:
6030112c:	e92d000c 	push	{r2, r3}
60301130:	e92d4007 	push	{r0, r1, r2, lr}
60301134:	e59d2010 	ldr	r2, [sp, #16]
60301138:	e28d3014 	add	r3, sp, #20
6030113c:	e58d3004 	str	r3, [sp, #4]
60301140:	eb0003f9 	bl	6030212c <_vfiprintf_r>
60301144:	e28dd00c 	add	sp, sp, #12
60301148:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
6030114c:	e28dd008 	add	sp, sp, #8
60301150:	e12fff1e 	bx	lr

60301154 <fiprintf>:
60301154:	e92d000e 	push	{r1, r2, r3}
60301158:	e92d4003 	push	{r0, r1, lr}
6030115c:	e1a01000 	mov	r1, r0
60301160:	e59f0020 	ldr	r0, [pc, #32]	; 60301188 <fiprintf+0x34>
60301164:	e28d3010 	add	r3, sp, #16
60301168:	e59d200c 	ldr	r2, [sp, #12]
6030116c:	e58d3004 	str	r3, [sp, #4]
60301170:	e5900000 	ldr	r0, [r0]
60301174:	eb0003ec 	bl	6030212c <_vfiprintf_r>
60301178:	e28dd008 	add	sp, sp, #8
6030117c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
60301180:	e28dd00c 	add	sp, sp, #12
60301184:	e12fff1e 	bx	lr
60301188:	60316000 	.word	0x60316000

6030118c <_fwalk>:
6030118c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60301190:	e1a07001 	mov	r7, r1
60301194:	e28040d8 	add	r4, r0, #216	; 0xd8
60301198:	e3a06000 	mov	r6, #0
6030119c:	e5945008 	ldr	r5, [r4, #8]
603011a0:	e5948004 	ldr	r8, [r4, #4]
603011a4:	e2588001 	subs	r8, r8, #1
603011a8:	5a000004 	bpl	603011c0 <_fwalk+0x34>
603011ac:	e5944000 	ldr	r4, [r4]
603011b0:	e3540000 	cmp	r4, #0
603011b4:	1afffff8 	bne	6030119c <_fwalk+0x10>
603011b8:	e1a00006 	mov	r0, r6
603011bc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
603011c0:	e1d530bc 	ldrh	r3, [r5, #12]
603011c4:	e3530001 	cmp	r3, #1
603011c8:	9a000005 	bls	603011e4 <_fwalk+0x58>
603011cc:	e1d530fe 	ldrsh	r3, [r5, #14]
603011d0:	e3730001 	cmn	r3, #1
603011d4:	0a000002 	beq	603011e4 <_fwalk+0x58>
603011d8:	e1a00005 	mov	r0, r5
603011dc:	e12fff37 	blx	r7
603011e0:	e1866000 	orr	r6, r6, r0
603011e4:	e2855068 	add	r5, r5, #104	; 0x68
603011e8:	eaffffed 	b	603011a4 <_fwalk+0x18>

603011ec <_fwalk_reent>:
603011ec:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
603011f0:	e1a06000 	mov	r6, r0
603011f4:	e1a08001 	mov	r8, r1
603011f8:	e28040d8 	add	r4, r0, #216	; 0xd8
603011fc:	e3a07000 	mov	r7, #0
60301200:	e5945008 	ldr	r5, [r4, #8]
60301204:	e5949004 	ldr	r9, [r4, #4]
60301208:	e2599001 	subs	r9, r9, #1
6030120c:	5a000004 	bpl	60301224 <_fwalk_reent+0x38>
60301210:	e5944000 	ldr	r4, [r4]
60301214:	e3540000 	cmp	r4, #0
60301218:	1afffff8 	bne	60301200 <_fwalk_reent+0x14>
6030121c:	e1a00007 	mov	r0, r7
60301220:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
60301224:	e1d530bc 	ldrh	r3, [r5, #12]
60301228:	e3530001 	cmp	r3, #1
6030122c:	9a000006 	bls	6030124c <_fwalk_reent+0x60>
60301230:	e1d530fe 	ldrsh	r3, [r5, #14]
60301234:	e3730001 	cmn	r3, #1
60301238:	0a000003 	beq	6030124c <_fwalk_reent+0x60>
6030123c:	e1a01005 	mov	r1, r5
60301240:	e1a00006 	mov	r0, r6
60301244:	e12fff38 	blx	r8
60301248:	e1877000 	orr	r7, r7, r0
6030124c:	e2855068 	add	r5, r5, #104	; 0x68
60301250:	eaffffec 	b	60301208 <_fwalk_reent+0x1c>

60301254 <__libc_init_array>:
60301254:	e92d4070 	push	{r4, r5, r6, lr}
60301258:	e3a06000 	mov	r6, #0
6030125c:	e59f5050 	ldr	r5, [pc, #80]	; 603012b4 <__libc_init_array+0x60>
60301260:	e59f4050 	ldr	r4, [pc, #80]	; 603012b8 <__libc_init_array+0x64>
60301264:	e0444005 	sub	r4, r4, r5
60301268:	e1a04144 	asr	r4, r4, #2
6030126c:	e1560004 	cmp	r6, r4
60301270:	1a00000b 	bne	603012a4 <__libc_init_array+0x50>
60301274:	e59f5040 	ldr	r5, [pc, #64]	; 603012bc <__libc_init_array+0x68>
60301278:	e3a06000 	mov	r6, #0
6030127c:	e59f403c 	ldr	r4, [pc, #60]	; 603012c0 <__libc_init_array+0x6c>
60301280:	eb001f53 	bl	60308fd4 <_init>
60301284:	e0444005 	sub	r4, r4, r5
60301288:	e1a04144 	asr	r4, r4, #2
6030128c:	e1560004 	cmp	r6, r4
60301290:	08bd8070 	popeq	{r4, r5, r6, pc}
60301294:	e4953004 	ldr	r3, [r5], #4
60301298:	e2866001 	add	r6, r6, #1
6030129c:	e12fff33 	blx	r3
603012a0:	eafffff9 	b	6030128c <__libc_init_array+0x38>
603012a4:	e4953004 	ldr	r3, [r5], #4
603012a8:	e2866001 	add	r6, r6, #1
603012ac:	e12fff33 	blx	r3
603012b0:	eaffffed 	b	6030126c <__libc_init_array+0x18>
603012b4:	60315be8 	.word	0x60315be8
603012b8:	60315be8 	.word	0x60315be8
603012bc:	60315be8 	.word	0x60315be8
603012c0:	60315bec 	.word	0x60315bec

603012c4 <__retarget_lock_init>:
603012c4:	e12fff1e 	bx	lr

603012c8 <__retarget_lock_init_recursive>:
603012c8:	e12fff1e 	bx	lr

603012cc <__retarget_lock_close>:
603012cc:	e12fff1e 	bx	lr

603012d0 <__retarget_lock_close_recursive>:
603012d0:	e12fff1e 	bx	lr

603012d4 <__retarget_lock_acquire>:
603012d4:	e12fff1e 	bx	lr

603012d8 <__retarget_lock_acquire_recursive>:
603012d8:	e12fff1e 	bx	lr

603012dc <__retarget_lock_try_acquire>:
603012dc:	e3a00001 	mov	r0, #1
603012e0:	e12fff1e 	bx	lr

603012e4 <__retarget_lock_try_acquire_recursive>:
603012e4:	e3a00001 	mov	r0, #1
603012e8:	e12fff1e 	bx	lr

603012ec <__retarget_lock_release>:
603012ec:	e12fff1e 	bx	lr

603012f0 <__retarget_lock_release_recursive>:
603012f0:	e12fff1e 	bx	lr
	...

60301300 <memcpy>:
60301300:	e1a0c000 	mov	ip, r0
60301304:	e3520040 	cmp	r2, #64	; 0x40
60301308:	aa000019 	bge	60301374 <memcpy+0x74>
6030130c:	e2023038 	and	r3, r2, #56	; 0x38
60301310:	e2633034 	rsb	r3, r3, #52	; 0x34
60301314:	e08ff003 	add	pc, pc, r3
60301318:	f421070d 	vld1.8	{d0}, [r1]!
6030131c:	f40c070d 	vst1.8	{d0}, [ip]!
60301320:	f421070d 	vld1.8	{d0}, [r1]!
60301324:	f40c070d 	vst1.8	{d0}, [ip]!
60301328:	f421070d 	vld1.8	{d0}, [r1]!
6030132c:	f40c070d 	vst1.8	{d0}, [ip]!
60301330:	f421070d 	vld1.8	{d0}, [r1]!
60301334:	f40c070d 	vst1.8	{d0}, [ip]!
60301338:	f421070d 	vld1.8	{d0}, [r1]!
6030133c:	f40c070d 	vst1.8	{d0}, [ip]!
60301340:	f421070d 	vld1.8	{d0}, [r1]!
60301344:	f40c070d 	vst1.8	{d0}, [ip]!
60301348:	f421070d 	vld1.8	{d0}, [r1]!
6030134c:	f40c070d 	vst1.8	{d0}, [ip]!
60301350:	e3120004 	tst	r2, #4
60301354:	14913004 	ldrne	r3, [r1], #4
60301358:	148c3004 	strne	r3, [ip], #4
6030135c:	e1b02f82 	lsls	r2, r2, #31
60301360:	20d130b2 	ldrhcs	r3, [r1], #2
60301364:	15d11000 	ldrbne	r1, [r1]
60301368:	20cc30b2 	strhcs	r3, [ip], #2
6030136c:	15cc1000 	strbne	r1, [ip]
60301370:	e12fff1e 	bx	lr
60301374:	e52da004 	push	{sl}		; (str sl, [sp, #-4]!)
60301378:	e201a007 	and	sl, r1, #7
6030137c:	e20c3007 	and	r3, ip, #7
60301380:	e153000a 	cmp	r3, sl
60301384:	1a0000f1 	bne	60301750 <memcpy+0x450>
60301388:	eeb00a40 	vmov.f32	s0, s0
6030138c:	e1b0ae8c 	lsls	sl, ip, #29
60301390:	0a000008 	beq	603013b8 <memcpy+0xb8>
60301394:	e27aa000 	rsbs	sl, sl, #0
60301398:	e0422eaa 	sub	r2, r2, sl, lsr #29
6030139c:	44913004 	ldrmi	r3, [r1], #4
603013a0:	448c3004 	strmi	r3, [ip], #4
603013a4:	e1b0a10a 	lsls	sl, sl, #2
603013a8:	20d130b2 	ldrhcs	r3, [r1], #2
603013ac:	14d1a001 	ldrbne	sl, [r1], #1
603013b0:	20cc30b2 	strhcs	r3, [ip], #2
603013b4:	14cca001 	strbne	sl, [ip], #1
603013b8:	e252a040 	subs	sl, r2, #64	; 0x40
603013bc:	ba000017 	blt	60301420 <memcpy+0x120>
603013c0:	e35a0c02 	cmp	sl, #512	; 0x200
603013c4:	aa000032 	bge	60301494 <memcpy+0x194>
603013c8:	ed910b00 	vldr	d0, [r1]
603013cc:	e25aa040 	subs	sl, sl, #64	; 0x40
603013d0:	ed911b02 	vldr	d1, [r1, #8]
603013d4:	ed8c0b00 	vstr	d0, [ip]
603013d8:	ed910b04 	vldr	d0, [r1, #16]
603013dc:	ed8c1b02 	vstr	d1, [ip, #8]
603013e0:	ed911b06 	vldr	d1, [r1, #24]
603013e4:	ed8c0b04 	vstr	d0, [ip, #16]
603013e8:	ed910b08 	vldr	d0, [r1, #32]
603013ec:	ed8c1b06 	vstr	d1, [ip, #24]
603013f0:	ed911b0a 	vldr	d1, [r1, #40]	; 0x28
603013f4:	ed8c0b08 	vstr	d0, [ip, #32]
603013f8:	ed910b0c 	vldr	d0, [r1, #48]	; 0x30
603013fc:	ed8c1b0a 	vstr	d1, [ip, #40]	; 0x28
60301400:	ed911b0e 	vldr	d1, [r1, #56]	; 0x38
60301404:	ed8c0b0c 	vstr	d0, [ip, #48]	; 0x30
60301408:	e2811040 	add	r1, r1, #64	; 0x40
6030140c:	ed8c1b0e 	vstr	d1, [ip, #56]	; 0x38
60301410:	e28cc040 	add	ip, ip, #64	; 0x40
60301414:	aaffffeb 	bge	603013c8 <memcpy+0xc8>
60301418:	e31a003f 	tst	sl, #63	; 0x3f
6030141c:	0a00001a 	beq	6030148c <memcpy+0x18c>
60301420:	e20a3038 	and	r3, sl, #56	; 0x38
60301424:	e08cc003 	add	ip, ip, r3
60301428:	e0811003 	add	r1, r1, r3
6030142c:	e2633034 	rsb	r3, r3, #52	; 0x34
60301430:	e08ff003 	add	pc, pc, r3
60301434:	ed110b0e 	vldr	d0, [r1, #-56]	; 0xffffffc8
60301438:	ed0c0b0e 	vstr	d0, [ip, #-56]	; 0xffffffc8
6030143c:	ed110b0c 	vldr	d0, [r1, #-48]	; 0xffffffd0
60301440:	ed0c0b0c 	vstr	d0, [ip, #-48]	; 0xffffffd0
60301444:	ed110b0a 	vldr	d0, [r1, #-40]	; 0xffffffd8
60301448:	ed0c0b0a 	vstr	d0, [ip, #-40]	; 0xffffffd8
6030144c:	ed110b08 	vldr	d0, [r1, #-32]	; 0xffffffe0
60301450:	ed0c0b08 	vstr	d0, [ip, #-32]	; 0xffffffe0
60301454:	ed110b06 	vldr	d0, [r1, #-24]	; 0xffffffe8
60301458:	ed0c0b06 	vstr	d0, [ip, #-24]	; 0xffffffe8
6030145c:	ed110b04 	vldr	d0, [r1, #-16]
60301460:	ed0c0b04 	vstr	d0, [ip, #-16]
60301464:	ed110b02 	vldr	d0, [r1, #-8]
60301468:	ed0c0b02 	vstr	d0, [ip, #-8]
6030146c:	e31a0004 	tst	sl, #4
60301470:	14913004 	ldrne	r3, [r1], #4
60301474:	148c3004 	strne	r3, [ip], #4
60301478:	e1b0af8a 	lsls	sl, sl, #31
6030147c:	20d130b2 	ldrhcs	r3, [r1], #2
60301480:	15d1a000 	ldrbne	sl, [r1]
60301484:	20cc30b2 	strhcs	r3, [ip], #2
60301488:	15cca000 	strbne	sl, [ip]
6030148c:	e49da004 	pop	{sl}		; (ldr sl, [sp], #4)
60301490:	e12fff1e 	bx	lr
60301494:	ed913b00 	vldr	d3, [r1]
60301498:	ed914b10 	vldr	d4, [r1, #64]	; 0x40
6030149c:	ed915b20 	vldr	d5, [r1, #128]	; 0x80
603014a0:	ed916b30 	vldr	d6, [r1, #192]	; 0xc0
603014a4:	ed917b40 	vldr	d7, [r1, #256]	; 0x100
603014a8:	ed910b02 	vldr	d0, [r1, #8]
603014ac:	ed911b04 	vldr	d1, [r1, #16]
603014b0:	ed912b06 	vldr	d2, [r1, #24]
603014b4:	e2811020 	add	r1, r1, #32
603014b8:	e25aad0a 	subs	sl, sl, #640	; 0x280
603014bc:	ba000055 	blt	60301618 <memcpy+0x318>
603014c0:	ed8c3b00 	vstr	d3, [ip]
603014c4:	ed913b00 	vldr	d3, [r1]
603014c8:	ed8c0b02 	vstr	d0, [ip, #8]
603014cc:	ed910b02 	vldr	d0, [r1, #8]
603014d0:	ed8c1b04 	vstr	d1, [ip, #16]
603014d4:	ed911b04 	vldr	d1, [r1, #16]
603014d8:	ed8c2b06 	vstr	d2, [ip, #24]
603014dc:	ed912b06 	vldr	d2, [r1, #24]
603014e0:	ed8c3b08 	vstr	d3, [ip, #32]
603014e4:	ed913b48 	vldr	d3, [r1, #288]	; 0x120
603014e8:	ed8c0b0a 	vstr	d0, [ip, #40]	; 0x28
603014ec:	ed910b0a 	vldr	d0, [r1, #40]	; 0x28
603014f0:	ed8c1b0c 	vstr	d1, [ip, #48]	; 0x30
603014f4:	ed911b0c 	vldr	d1, [r1, #48]	; 0x30
603014f8:	ed8c2b0e 	vstr	d2, [ip, #56]	; 0x38
603014fc:	ed912b0e 	vldr	d2, [r1, #56]	; 0x38
60301500:	ed8c4b10 	vstr	d4, [ip, #64]	; 0x40
60301504:	ed914b10 	vldr	d4, [r1, #64]	; 0x40
60301508:	ed8c0b12 	vstr	d0, [ip, #72]	; 0x48
6030150c:	ed910b12 	vldr	d0, [r1, #72]	; 0x48
60301510:	ed8c1b14 	vstr	d1, [ip, #80]	; 0x50
60301514:	ed911b14 	vldr	d1, [r1, #80]	; 0x50
60301518:	ed8c2b16 	vstr	d2, [ip, #88]	; 0x58
6030151c:	ed912b16 	vldr	d2, [r1, #88]	; 0x58
60301520:	ed8c4b18 	vstr	d4, [ip, #96]	; 0x60
60301524:	ed914b58 	vldr	d4, [r1, #352]	; 0x160
60301528:	ed8c0b1a 	vstr	d0, [ip, #104]	; 0x68
6030152c:	ed910b1a 	vldr	d0, [r1, #104]	; 0x68
60301530:	ed8c1b1c 	vstr	d1, [ip, #112]	; 0x70
60301534:	ed911b1c 	vldr	d1, [r1, #112]	; 0x70
60301538:	ed8c2b1e 	vstr	d2, [ip, #120]	; 0x78
6030153c:	ed912b1e 	vldr	d2, [r1, #120]	; 0x78
60301540:	ed8c5b20 	vstr	d5, [ip, #128]	; 0x80
60301544:	ed915b20 	vldr	d5, [r1, #128]	; 0x80
60301548:	ed8c0b22 	vstr	d0, [ip, #136]	; 0x88
6030154c:	ed910b22 	vldr	d0, [r1, #136]	; 0x88
60301550:	ed8c1b24 	vstr	d1, [ip, #144]	; 0x90
60301554:	ed911b24 	vldr	d1, [r1, #144]	; 0x90
60301558:	ed8c2b26 	vstr	d2, [ip, #152]	; 0x98
6030155c:	ed912b26 	vldr	d2, [r1, #152]	; 0x98
60301560:	ed8c5b28 	vstr	d5, [ip, #160]	; 0xa0
60301564:	ed915b68 	vldr	d5, [r1, #416]	; 0x1a0
60301568:	ed8c0b2a 	vstr	d0, [ip, #168]	; 0xa8
6030156c:	ed910b2a 	vldr	d0, [r1, #168]	; 0xa8
60301570:	ed8c1b2c 	vstr	d1, [ip, #176]	; 0xb0
60301574:	ed911b2c 	vldr	d1, [r1, #176]	; 0xb0
60301578:	ed8c2b2e 	vstr	d2, [ip, #184]	; 0xb8
6030157c:	ed912b2e 	vldr	d2, [r1, #184]	; 0xb8
60301580:	e28cc0c0 	add	ip, ip, #192	; 0xc0
60301584:	e28110c0 	add	r1, r1, #192	; 0xc0
60301588:	ed8c6b00 	vstr	d6, [ip]
6030158c:	ed916b00 	vldr	d6, [r1]
60301590:	ed8c0b02 	vstr	d0, [ip, #8]
60301594:	ed910b02 	vldr	d0, [r1, #8]
60301598:	ed8c1b04 	vstr	d1, [ip, #16]
6030159c:	ed911b04 	vldr	d1, [r1, #16]
603015a0:	ed8c2b06 	vstr	d2, [ip, #24]
603015a4:	ed912b06 	vldr	d2, [r1, #24]
603015a8:	ed8c6b08 	vstr	d6, [ip, #32]
603015ac:	ed916b48 	vldr	d6, [r1, #288]	; 0x120
603015b0:	ed8c0b0a 	vstr	d0, [ip, #40]	; 0x28
603015b4:	ed910b0a 	vldr	d0, [r1, #40]	; 0x28
603015b8:	ed8c1b0c 	vstr	d1, [ip, #48]	; 0x30
603015bc:	ed911b0c 	vldr	d1, [r1, #48]	; 0x30
603015c0:	ed8c2b0e 	vstr	d2, [ip, #56]	; 0x38
603015c4:	ed912b0e 	vldr	d2, [r1, #56]	; 0x38
603015c8:	ed8c7b10 	vstr	d7, [ip, #64]	; 0x40
603015cc:	ed917b10 	vldr	d7, [r1, #64]	; 0x40
603015d0:	ed8c0b12 	vstr	d0, [ip, #72]	; 0x48
603015d4:	ed910b12 	vldr	d0, [r1, #72]	; 0x48
603015d8:	ed8c1b14 	vstr	d1, [ip, #80]	; 0x50
603015dc:	ed911b14 	vldr	d1, [r1, #80]	; 0x50
603015e0:	ed8c2b16 	vstr	d2, [ip, #88]	; 0x58
603015e4:	ed912b16 	vldr	d2, [r1, #88]	; 0x58
603015e8:	ed8c7b18 	vstr	d7, [ip, #96]	; 0x60
603015ec:	ed917b58 	vldr	d7, [r1, #352]	; 0x160
603015f0:	ed8c0b1a 	vstr	d0, [ip, #104]	; 0x68
603015f4:	ed910b1a 	vldr	d0, [r1, #104]	; 0x68
603015f8:	ed8c1b1c 	vstr	d1, [ip, #112]	; 0x70
603015fc:	ed911b1c 	vldr	d1, [r1, #112]	; 0x70
60301600:	ed8c2b1e 	vstr	d2, [ip, #120]	; 0x78
60301604:	ed912b1e 	vldr	d2, [r1, #120]	; 0x78
60301608:	e28cc080 	add	ip, ip, #128	; 0x80
6030160c:	e2811080 	add	r1, r1, #128	; 0x80
60301610:	e25aad05 	subs	sl, sl, #320	; 0x140
60301614:	aaffffa9 	bge	603014c0 <memcpy+0x1c0>
60301618:	ed8c3b00 	vstr	d3, [ip]
6030161c:	ed913b00 	vldr	d3, [r1]
60301620:	ed8c0b02 	vstr	d0, [ip, #8]
60301624:	ed910b02 	vldr	d0, [r1, #8]
60301628:	ed8c1b04 	vstr	d1, [ip, #16]
6030162c:	ed911b04 	vldr	d1, [r1, #16]
60301630:	ed8c2b06 	vstr	d2, [ip, #24]
60301634:	ed912b06 	vldr	d2, [r1, #24]
60301638:	ed8c3b08 	vstr	d3, [ip, #32]
6030163c:	ed8c0b0a 	vstr	d0, [ip, #40]	; 0x28
60301640:	ed910b0a 	vldr	d0, [r1, #40]	; 0x28
60301644:	ed8c1b0c 	vstr	d1, [ip, #48]	; 0x30
60301648:	ed911b0c 	vldr	d1, [r1, #48]	; 0x30
6030164c:	ed8c2b0e 	vstr	d2, [ip, #56]	; 0x38
60301650:	ed912b0e 	vldr	d2, [r1, #56]	; 0x38
60301654:	ed8c4b10 	vstr	d4, [ip, #64]	; 0x40
60301658:	ed914b10 	vldr	d4, [r1, #64]	; 0x40
6030165c:	ed8c0b12 	vstr	d0, [ip, #72]	; 0x48
60301660:	ed910b12 	vldr	d0, [r1, #72]	; 0x48
60301664:	ed8c1b14 	vstr	d1, [ip, #80]	; 0x50
60301668:	ed911b14 	vldr	d1, [r1, #80]	; 0x50
6030166c:	ed8c2b16 	vstr	d2, [ip, #88]	; 0x58
60301670:	ed912b16 	vldr	d2, [r1, #88]	; 0x58
60301674:	ed8c4b18 	vstr	d4, [ip, #96]	; 0x60
60301678:	ed8c0b1a 	vstr	d0, [ip, #104]	; 0x68
6030167c:	ed910b1a 	vldr	d0, [r1, #104]	; 0x68
60301680:	ed8c1b1c 	vstr	d1, [ip, #112]	; 0x70
60301684:	ed911b1c 	vldr	d1, [r1, #112]	; 0x70
60301688:	ed8c2b1e 	vstr	d2, [ip, #120]	; 0x78
6030168c:	ed912b1e 	vldr	d2, [r1, #120]	; 0x78
60301690:	ed8c5b20 	vstr	d5, [ip, #128]	; 0x80
60301694:	ed915b20 	vldr	d5, [r1, #128]	; 0x80
60301698:	ed8c0b22 	vstr	d0, [ip, #136]	; 0x88
6030169c:	ed910b22 	vldr	d0, [r1, #136]	; 0x88
603016a0:	ed8c1b24 	vstr	d1, [ip, #144]	; 0x90
603016a4:	ed911b24 	vldr	d1, [r1, #144]	; 0x90
603016a8:	ed8c2b26 	vstr	d2, [ip, #152]	; 0x98
603016ac:	ed912b26 	vldr	d2, [r1, #152]	; 0x98
603016b0:	ed8c5b28 	vstr	d5, [ip, #160]	; 0xa0
603016b4:	ed8c0b2a 	vstr	d0, [ip, #168]	; 0xa8
603016b8:	ed910b2a 	vldr	d0, [r1, #168]	; 0xa8
603016bc:	ed8c1b2c 	vstr	d1, [ip, #176]	; 0xb0
603016c0:	ed911b2c 	vldr	d1, [r1, #176]	; 0xb0
603016c4:	ed8c2b2e 	vstr	d2, [ip, #184]	; 0xb8
603016c8:	ed912b2e 	vldr	d2, [r1, #184]	; 0xb8
603016cc:	e28110c0 	add	r1, r1, #192	; 0xc0
603016d0:	e28cc0c0 	add	ip, ip, #192	; 0xc0
603016d4:	ed8c6b00 	vstr	d6, [ip]
603016d8:	ed916b00 	vldr	d6, [r1]
603016dc:	ed8c0b02 	vstr	d0, [ip, #8]
603016e0:	ed910b02 	vldr	d0, [r1, #8]
603016e4:	ed8c1b04 	vstr	d1, [ip, #16]
603016e8:	ed911b04 	vldr	d1, [r1, #16]
603016ec:	ed8c2b06 	vstr	d2, [ip, #24]
603016f0:	ed912b06 	vldr	d2, [r1, #24]
603016f4:	ed8c6b08 	vstr	d6, [ip, #32]
603016f8:	ed8c0b0a 	vstr	d0, [ip, #40]	; 0x28
603016fc:	ed910b0a 	vldr	d0, [r1, #40]	; 0x28
60301700:	ed8c1b0c 	vstr	d1, [ip, #48]	; 0x30
60301704:	ed911b0c 	vldr	d1, [r1, #48]	; 0x30
60301708:	ed8c2b0e 	vstr	d2, [ip, #56]	; 0x38
6030170c:	ed912b0e 	vldr	d2, [r1, #56]	; 0x38
60301710:	ed8c7b10 	vstr	d7, [ip, #64]	; 0x40
60301714:	ed917b10 	vldr	d7, [r1, #64]	; 0x40
60301718:	ed8c0b12 	vstr	d0, [ip, #72]	; 0x48
6030171c:	ed910b12 	vldr	d0, [r1, #72]	; 0x48
60301720:	ed8c1b14 	vstr	d1, [ip, #80]	; 0x50
60301724:	ed911b14 	vldr	d1, [r1, #80]	; 0x50
60301728:	ed8c2b16 	vstr	d2, [ip, #88]	; 0x58
6030172c:	ed912b16 	vldr	d2, [r1, #88]	; 0x58
60301730:	ed8c7b18 	vstr	d7, [ip, #96]	; 0x60
60301734:	e2811060 	add	r1, r1, #96	; 0x60
60301738:	ed8c0b1a 	vstr	d0, [ip, #104]	; 0x68
6030173c:	ed8c1b1c 	vstr	d1, [ip, #112]	; 0x70
60301740:	ed8c2b1e 	vstr	d2, [ip, #120]	; 0x78
60301744:	e28cc080 	add	ip, ip, #128	; 0x80
60301748:	e28aad05 	add	sl, sl, #320	; 0x140
6030174c:	eaffff1d 	b	603013c8 <memcpy+0xc8>
60301750:	f5d1f000 	pld	[r1]
60301754:	f5d1f040 	pld	[r1, #64]	; 0x40
60301758:	e1b0ae8c 	lsls	sl, ip, #29
6030175c:	f5d1f080 	pld	[r1, #128]	; 0x80
60301760:	0a000008 	beq	60301788 <memcpy+0x488>
60301764:	e27aa000 	rsbs	sl, sl, #0
60301768:	e0422eaa 	sub	r2, r2, sl, lsr #29
6030176c:	44913004 	ldrmi	r3, [r1], #4
60301770:	448c3004 	strmi	r3, [ip], #4
60301774:	e1b0a10a 	lsls	sl, sl, #2
60301778:	14d13001 	ldrbne	r3, [r1], #1
6030177c:	20d1a0b2 	ldrhcs	sl, [r1], #2
60301780:	14cc3001 	strbne	r3, [ip], #1
60301784:	20cca0b2 	strhcs	sl, [ip], #2
60301788:	f5d1f0c0 	pld	[r1, #192]	; 0xc0
6030178c:	e2522040 	subs	r2, r2, #64	; 0x40
60301790:	449da004 	popmi	{sl}		; (ldrmi sl, [sp], #4)
60301794:	4afffedc 	bmi	6030130c <memcpy+0xc>
60301798:	f5d1f100 	pld	[r1, #256]	; 0x100
6030179c:	f421020d 	vld1.8	{d0-d3}, [r1]!
603017a0:	f421420d 	vld1.8	{d4-d7}, [r1]!
603017a4:	e2522040 	subs	r2, r2, #64	; 0x40
603017a8:	4a000006 	bmi	603017c8 <memcpy+0x4c8>
603017ac:	f5d1f100 	pld	[r1, #256]	; 0x100
603017b0:	f40c021d 	vst1.8	{d0-d3}, [ip :64]!
603017b4:	f421020d 	vld1.8	{d0-d3}, [r1]!
603017b8:	f40c421d 	vst1.8	{d4-d7}, [ip :64]!
603017bc:	f421420d 	vld1.8	{d4-d7}, [r1]!
603017c0:	e2522040 	subs	r2, r2, #64	; 0x40
603017c4:	5afffff8 	bpl	603017ac <memcpy+0x4ac>
603017c8:	f40c021d 	vst1.8	{d0-d3}, [ip :64]!
603017cc:	f40c421d 	vst1.8	{d4-d7}, [ip :64]!
603017d0:	e212203f 	ands	r2, r2, #63	; 0x3f
603017d4:	e49da004 	pop	{sl}		; (ldr sl, [sp], #4)
603017d8:	1afffecb 	bne	6030130c <memcpy+0xc>
603017dc:	e12fff1e 	bx	lr

603017e0 <memmove>:
603017e0:	e1500001 	cmp	r0, r1
603017e4:	9a000004 	bls	603017fc <memmove+0x1c>
603017e8:	e0813002 	add	r3, r1, r2
603017ec:	e1530000 	cmp	r3, r0
603017f0:	80802002 	addhi	r2, r0, r2
603017f4:	81a01000 	movhi	r1, r0
603017f8:	8a00000d 	bhi	60301834 <memmove+0x54>
603017fc:	e352000f 	cmp	r2, #15
60301800:	9a000002 	bls	60301810 <memmove+0x30>
60301804:	e1813000 	orr	r3, r1, r0
60301808:	e3130003 	tst	r3, #3
6030180c:	0a00000b 	beq	60301840 <memmove+0x60>
60301810:	e2403001 	sub	r3, r0, #1
60301814:	e0812002 	add	r2, r1, r2
60301818:	e1510002 	cmp	r1, r2
6030181c:	012fff1e 	bxeq	lr
60301820:	e4d1c001 	ldrb	ip, [r1], #1
60301824:	e5e3c001 	strb	ip, [r3, #1]!
60301828:	eafffffa 	b	60301818 <memmove+0x38>
6030182c:	e573c001 	ldrb	ip, [r3, #-1]!
60301830:	e562c001 	strb	ip, [r2, #-1]!
60301834:	e1520001 	cmp	r2, r1
60301838:	1afffffb 	bne	6030182c <memmove+0x4c>
6030183c:	e12fff1e 	bx	lr
60301840:	e92d4070 	push	{r4, r5, r6, lr}
60301844:	e281c010 	add	ip, r1, #16
60301848:	e2803010 	add	r3, r0, #16
6030184c:	e1a0e002 	mov	lr, r2
60301850:	e51c4010 	ldr	r4, [ip, #-16]
60301854:	e24ee010 	sub	lr, lr, #16
60301858:	e5034010 	str	r4, [r3, #-16]
6030185c:	e28cc010 	add	ip, ip, #16
60301860:	e2833010 	add	r3, r3, #16
60301864:	e35e000f 	cmp	lr, #15
60301868:	e51c401c 	ldr	r4, [ip, #-28]	; 0xffffffe4
6030186c:	e503401c 	str	r4, [r3, #-28]	; 0xffffffe4
60301870:	e51c4018 	ldr	r4, [ip, #-24]	; 0xffffffe8
60301874:	e5034018 	str	r4, [r3, #-24]	; 0xffffffe8
60301878:	e51c4014 	ldr	r4, [ip, #-20]	; 0xffffffec
6030187c:	e5034014 	str	r4, [r3, #-20]	; 0xffffffec
60301880:	8afffff2 	bhi	60301850 <memmove+0x70>
60301884:	e2423010 	sub	r3, r2, #16
60301888:	e202e00c 	and	lr, r2, #12
6030188c:	e3c3300f 	bic	r3, r3, #15
60301890:	e202500f 	and	r5, r2, #15
60301894:	e2833010 	add	r3, r3, #16
60301898:	e7e16152 	ubfx	r6, r2, #2, #2
6030189c:	e081c003 	add	ip, r1, r3
603018a0:	e0803003 	add	r3, r0, r3
603018a4:	e2434004 	sub	r4, r3, #4
603018a8:	e08c100e 	add	r1, ip, lr
603018ac:	e15c0001 	cmp	ip, r1
603018b0:	1a000009 	bne	603018dc <memmove+0xfc>
603018b4:	e3e02003 	mvn	r2, #3
603018b8:	e083300e 	add	r3, r3, lr
603018bc:	e2433001 	sub	r3, r3, #1
603018c0:	e0225692 	mla	r2, r2, r6, r5
603018c4:	e0812002 	add	r2, r1, r2
603018c8:	e1510002 	cmp	r1, r2
603018cc:	08bd8070 	popeq	{r4, r5, r6, pc}
603018d0:	e4d1c001 	ldrb	ip, [r1], #1
603018d4:	e5e3c001 	strb	ip, [r3, #1]!
603018d8:	eafffffa 	b	603018c8 <memmove+0xe8>
603018dc:	e49c2004 	ldr	r2, [ip], #4
603018e0:	e5a42004 	str	r2, [r4, #4]!
603018e4:	eafffff0 	b	603018ac <memmove+0xcc>

603018e8 <memset>:
603018e8:	e1a03000 	mov	r3, r0
603018ec:	e92d4010 	push	{r4, lr}
603018f0:	e1a0e003 	mov	lr, r3
603018f4:	e3130003 	tst	r3, #3
603018f8:	1a000018 	bne	60301960 <memset+0x78>
603018fc:	e3520003 	cmp	r2, #3
60301900:	9a000011 	bls	6030194c <memset+0x64>
60301904:	e6efc071 	uxtb	ip, r1
60301908:	e1a04002 	mov	r4, r2
6030190c:	e18cc40c 	orr	ip, ip, ip, lsl #8
60301910:	e18cc80c 	orr	ip, ip, ip, lsl #16
60301914:	e28ee010 	add	lr, lr, #16
60301918:	e354000f 	cmp	r4, #15
6030191c:	8a000014 	bhi	60301974 <memset+0x8c>
60301920:	e1a0e222 	lsr	lr, r2, #4
60301924:	e3e0400f 	mvn	r4, #15
60301928:	e0222e94 	mla	r2, r4, lr, r2
6030192c:	e083e20e 	add	lr, r3, lr, lsl #4
60301930:	e3c23003 	bic	r3, r2, #3
60301934:	e1a04122 	lsr	r4, r2, #2
60301938:	e08e3003 	add	r3, lr, r3
6030193c:	e15e0003 	cmp	lr, r3
60301940:	1a000011 	bne	6030198c <memset+0xa4>
60301944:	e3e0c003 	mvn	ip, #3
60301948:	e022249c 	mla	r2, ip, r4, r2
6030194c:	e0832002 	add	r2, r3, r2
60301950:	e1530002 	cmp	r3, r2
60301954:	08bd8010 	popeq	{r4, pc}
60301958:	e4c31001 	strb	r1, [r3], #1
6030195c:	eafffffb 	b	60301950 <memset+0x68>
60301960:	e3520000 	cmp	r2, #0
60301964:	08bd8010 	popeq	{r4, pc}
60301968:	e2422001 	sub	r2, r2, #1
6030196c:	e4c31001 	strb	r1, [r3], #1
60301970:	eaffffde 	b	603018f0 <memset+0x8>
60301974:	e2444010 	sub	r4, r4, #16
60301978:	e50ec010 	str	ip, [lr, #-16]
6030197c:	e50ec00c 	str	ip, [lr, #-12]
60301980:	e50ec008 	str	ip, [lr, #-8]
60301984:	e50ec004 	str	ip, [lr, #-4]
60301988:	eaffffe1 	b	60301914 <memset+0x2c>
6030198c:	e48ec004 	str	ip, [lr], #4
60301990:	eaffffe9 	b	6030193c <memset+0x54>

60301994 <cleanup_glue>:
60301994:	e92d4070 	push	{r4, r5, r6, lr}
60301998:	e1a04001 	mov	r4, r1
6030199c:	e5911000 	ldr	r1, [r1]
603019a0:	e1a05000 	mov	r5, r0
603019a4:	e3510000 	cmp	r1, #0
603019a8:	0a000000 	beq	603019b0 <cleanup_glue+0x1c>
603019ac:	ebfffff8 	bl	60301994 <cleanup_glue>
603019b0:	e1a01004 	mov	r1, r4
603019b4:	e1a00005 	mov	r0, r5
603019b8:	e8bd4070 	pop	{r4, r5, r6, lr}
603019bc:	ea001b8a 	b	603087ec <__wrap__free_r>

603019c0 <_reclaim_reent>:
603019c0:	e59f3174 	ldr	r3, [pc, #372]	; 60301b3c <_reclaim_reent+0x17c>
603019c4:	e5933000 	ldr	r3, [r3]
603019c8:	e1530000 	cmp	r3, r0
603019cc:	012fff1e 	bxeq	lr
603019d0:	e5903024 	ldr	r3, [r0, #36]	; 0x24
603019d4:	e92d4070 	push	{r4, r5, r6, lr}
603019d8:	e1a04000 	mov	r4, r0
603019dc:	e3530000 	cmp	r3, #0
603019e0:	0a000009 	beq	60301a0c <_reclaim_reent+0x4c>
603019e4:	e593300c 	ldr	r3, [r3, #12]
603019e8:	e3530000 	cmp	r3, #0
603019ec:	13a05000 	movne	r5, #0
603019f0:	1a000045 	bne	60301b0c <_reclaim_reent+0x14c>
603019f4:	e5943024 	ldr	r3, [r4, #36]	; 0x24
603019f8:	e5931000 	ldr	r1, [r3]
603019fc:	e3510000 	cmp	r1, #0
60301a00:	0a000001 	beq	60301a0c <_reclaim_reent+0x4c>
60301a04:	e1a00004 	mov	r0, r4
60301a08:	eb001b77 	bl	603087ec <__wrap__free_r>
60301a0c:	e5941014 	ldr	r1, [r4, #20]
60301a10:	e3510000 	cmp	r1, #0
60301a14:	0a000001 	beq	60301a20 <_reclaim_reent+0x60>
60301a18:	e1a00004 	mov	r0, r4
60301a1c:	eb001b72 	bl	603087ec <__wrap__free_r>
60301a20:	e5941024 	ldr	r1, [r4, #36]	; 0x24
60301a24:	e3510000 	cmp	r1, #0
60301a28:	0a000001 	beq	60301a34 <_reclaim_reent+0x74>
60301a2c:	e1a00004 	mov	r0, r4
60301a30:	eb001b6d 	bl	603087ec <__wrap__free_r>
60301a34:	e5941038 	ldr	r1, [r4, #56]	; 0x38
60301a38:	e3510000 	cmp	r1, #0
60301a3c:	0a000001 	beq	60301a48 <_reclaim_reent+0x88>
60301a40:	e1a00004 	mov	r0, r4
60301a44:	eb001b68 	bl	603087ec <__wrap__free_r>
60301a48:	e594103c 	ldr	r1, [r4, #60]	; 0x3c
60301a4c:	e3510000 	cmp	r1, #0
60301a50:	0a000001 	beq	60301a5c <_reclaim_reent+0x9c>
60301a54:	e1a00004 	mov	r0, r4
60301a58:	eb001b63 	bl	603087ec <__wrap__free_r>
60301a5c:	e5941040 	ldr	r1, [r4, #64]	; 0x40
60301a60:	e3510000 	cmp	r1, #0
60301a64:	0a000001 	beq	60301a70 <_reclaim_reent+0xb0>
60301a68:	e1a00004 	mov	r0, r4
60301a6c:	eb001b5e 	bl	603087ec <__wrap__free_r>
60301a70:	e59410ec 	ldr	r1, [r4, #236]	; 0xec
60301a74:	e3510000 	cmp	r1, #0
60301a78:	0a000001 	beq	60301a84 <_reclaim_reent+0xc4>
60301a7c:	e1a00004 	mov	r0, r4
60301a80:	eb001b59 	bl	603087ec <__wrap__free_r>
60301a84:	e59410e8 	ldr	r1, [r4, #232]	; 0xe8
60301a88:	e3510000 	cmp	r1, #0
60301a8c:	0a000001 	beq	60301a98 <_reclaim_reent+0xd8>
60301a90:	e1a00004 	mov	r0, r4
60301a94:	eb001b54 	bl	603087ec <__wrap__free_r>
60301a98:	e5943048 	ldr	r3, [r4, #72]	; 0x48
60301a9c:	e3530000 	cmp	r3, #0
60301aa0:	0a000004 	beq	60301ab8 <_reclaim_reent+0xf8>
60301aa4:	e5931088 	ldr	r1, [r3, #136]	; 0x88
60301aa8:	e3510000 	cmp	r1, #0
60301aac:	0a000001 	beq	60301ab8 <_reclaim_reent+0xf8>
60301ab0:	e1a00004 	mov	r0, r4
60301ab4:	eb001b4c 	bl	603087ec <__wrap__free_r>
60301ab8:	e5941034 	ldr	r1, [r4, #52]	; 0x34
60301abc:	e3510000 	cmp	r1, #0
60301ac0:	0a000001 	beq	60301acc <_reclaim_reent+0x10c>
60301ac4:	e1a00004 	mov	r0, r4
60301ac8:	eb001b47 	bl	603087ec <__wrap__free_r>
60301acc:	e5943018 	ldr	r3, [r4, #24]
60301ad0:	e3530000 	cmp	r3, #0
60301ad4:	08bd8070 	popeq	{r4, r5, r6, pc}
60301ad8:	e5943028 	ldr	r3, [r4, #40]	; 0x28
60301adc:	e1a00004 	mov	r0, r4
60301ae0:	e12fff33 	blx	r3
60301ae4:	e59410d8 	ldr	r1, [r4, #216]	; 0xd8
60301ae8:	e3510000 	cmp	r1, #0
60301aec:	08bd8070 	popeq	{r4, r5, r6, pc}
60301af0:	e1a00004 	mov	r0, r4
60301af4:	e8bd4070 	pop	{r4, r5, r6, lr}
60301af8:	eaffffa5 	b	60301994 <cleanup_glue>
60301afc:	e7911005 	ldr	r1, [r1, r5]
60301b00:	e3510000 	cmp	r1, #0
60301b04:	1a000007 	bne	60301b28 <_reclaim_reent+0x168>
60301b08:	e2855004 	add	r5, r5, #4
60301b0c:	e5943024 	ldr	r3, [r4, #36]	; 0x24
60301b10:	e3550080 	cmp	r5, #128	; 0x80
60301b14:	e593100c 	ldr	r1, [r3, #12]
60301b18:	1afffff7 	bne	60301afc <_reclaim_reent+0x13c>
60301b1c:	e1a00004 	mov	r0, r4
60301b20:	eb001b31 	bl	603087ec <__wrap__free_r>
60301b24:	eaffffb2 	b	603019f4 <_reclaim_reent+0x34>
60301b28:	e5916000 	ldr	r6, [r1]
60301b2c:	e1a00004 	mov	r0, r4
60301b30:	eb001b2d 	bl	603087ec <__wrap__free_r>
60301b34:	e1a01006 	mov	r1, r6
60301b38:	eafffff0 	b	60301b00 <_reclaim_reent+0x140>
60301b3c:	60316000 	.word	0x60316000

60301b40 <__sread>:
60301b40:	e92d4010 	push	{r4, lr}
60301b44:	e1a04001 	mov	r4, r1
60301b48:	e1d110fe 	ldrsh	r1, [r1, #14]
60301b4c:	eb001054 	bl	60305ca4 <_read_r>
60301b50:	e3500000 	cmp	r0, #0
60301b54:	a5943054 	ldrge	r3, [r4, #84]	; 0x54
60301b58:	b1d430bc 	ldrhlt	r3, [r4, #12]
60301b5c:	a0833000 	addge	r3, r3, r0
60301b60:	a5843054 	strge	r3, [r4, #84]	; 0x54
60301b64:	b3c33a01 	biclt	r3, r3, #4096	; 0x1000
60301b68:	b1c430bc 	strhlt	r3, [r4, #12]
60301b6c:	e8bd8010 	pop	{r4, pc}

60301b70 <__seofread>:
60301b70:	e3a00000 	mov	r0, #0
60301b74:	e12fff1e 	bx	lr

60301b78 <__swrite>:
60301b78:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60301b7c:	e1a07003 	mov	r7, r3
60301b80:	e1d130bc 	ldrh	r3, [r1, #12]
60301b84:	e1a05000 	mov	r5, r0
60301b88:	e1a04001 	mov	r4, r1
60301b8c:	e1a06002 	mov	r6, r2
60301b90:	e3130c01 	tst	r3, #256	; 0x100
60301b94:	0a000003 	beq	60301ba8 <__swrite+0x30>
60301b98:	e1d110fe 	ldrsh	r1, [r1, #14]
60301b9c:	e3a03002 	mov	r3, #2
60301ba0:	e3a02000 	mov	r2, #0
60301ba4:	eb000c07 	bl	60304bc8 <_lseek_r>
60301ba8:	e1d430bc 	ldrh	r3, [r4, #12]
60301bac:	e1a02006 	mov	r2, r6
60301bb0:	e1d410fe 	ldrsh	r1, [r4, #14]
60301bb4:	e1a00005 	mov	r0, r5
60301bb8:	e3c33a01 	bic	r3, r3, #4096	; 0x1000
60301bbc:	e1c430bc 	strh	r3, [r4, #12]
60301bc0:	e1a03007 	mov	r3, r7
60301bc4:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
60301bc8:	ea00054e 	b	60303108 <_write_r>

60301bcc <__sseek>:
60301bcc:	e92d4010 	push	{r4, lr}
60301bd0:	e1a04001 	mov	r4, r1
60301bd4:	e1d110fe 	ldrsh	r1, [r1, #14]
60301bd8:	eb000bfa 	bl	60304bc8 <_lseek_r>
60301bdc:	e3700001 	cmn	r0, #1
60301be0:	e1d430bc 	ldrh	r3, [r4, #12]
60301be4:	15840054 	strne	r0, [r4, #84]	; 0x54
60301be8:	03c33a01 	biceq	r3, r3, #4096	; 0x1000
60301bec:	13833a01 	orrne	r3, r3, #4096	; 0x1000
60301bf0:	01c430bc 	strheq	r3, [r4, #12]
60301bf4:	11c430bc 	strhne	r3, [r4, #12]
60301bf8:	e8bd8010 	pop	{r4, pc}

60301bfc <__sclose>:
60301bfc:	e1d110fe 	ldrsh	r1, [r1, #14]
60301c00:	ea0005a1 	b	6030328c <_close_r>
	...
60301c20:	eba2 0003 	sub.w	r0, r2, r3
60301c24:	4770      	bx	lr
60301c26:	bf00      	nop

60301c28 <strcmp>:
60301c28:	7802      	ldrb	r2, [r0, #0]
60301c2a:	780b      	ldrb	r3, [r1, #0]
60301c2c:	2a01      	cmp	r2, #1
60301c2e:	bf28      	it	cs
60301c30:	429a      	cmpcs	r2, r3
60301c32:	d1f5      	bne.n	60301c20 <__sclose+0x24>
60301c34:	e96d 4504 	strd	r4, r5, [sp, #-16]!
60301c38:	ea40 0401 	orr.w	r4, r0, r1
60301c3c:	e9cd 6702 	strd	r6, r7, [sp, #8]
60301c40:	f06f 0c00 	mvn.w	ip, #0
60301c44:	ea4f 7244 	mov.w	r2, r4, lsl #29
60301c48:	b312      	cbz	r2, 60301c90 <strcmp+0x68>
60301c4a:	ea80 0401 	eor.w	r4, r0, r1
60301c4e:	f014 0f07 	tst.w	r4, #7
60301c52:	d16a      	bne.n	60301d2a <strcmp+0x102>
60301c54:	f000 0407 	and.w	r4, r0, #7
60301c58:	f020 0007 	bic.w	r0, r0, #7
60301c5c:	f004 0503 	and.w	r5, r4, #3
60301c60:	f021 0107 	bic.w	r1, r1, #7
60301c64:	ea4f 05c5 	mov.w	r5, r5, lsl #3
60301c68:	e8f0 2304 	ldrd	r2, r3, [r0], #16
60301c6c:	f014 0f04 	tst.w	r4, #4
60301c70:	e8f1 6704 	ldrd	r6, r7, [r1], #16
60301c74:	fa0c f405 	lsl.w	r4, ip, r5
60301c78:	ea62 0204 	orn	r2, r2, r4
60301c7c:	ea66 0604 	orn	r6, r6, r4
60301c80:	d00a      	beq.n	60301c98 <strcmp+0x70>
60301c82:	ea63 0304 	orn	r3, r3, r4
60301c86:	4662      	mov	r2, ip
60301c88:	ea67 0704 	orn	r7, r7, r4
60301c8c:	4666      	mov	r6, ip
60301c8e:	e003      	b.n	60301c98 <strcmp+0x70>
60301c90:	e8f0 2304 	ldrd	r2, r3, [r0], #16
60301c94:	e8f1 6704 	ldrd	r6, r7, [r1], #16
60301c98:	fa82 f54c 	uadd8	r5, r2, ip
60301c9c:	ea82 0406 	eor.w	r4, r2, r6
60301ca0:	faa4 f48c 	sel	r4, r4, ip
60301ca4:	bb6c      	cbnz	r4, 60301d02 <strcmp+0xda>
60301ca6:	fa83 f54c 	uadd8	r5, r3, ip
60301caa:	ea83 0507 	eor.w	r5, r3, r7
60301cae:	faa5 f58c 	sel	r5, r5, ip
60301cb2:	b995      	cbnz	r5, 60301cda <strcmp+0xb2>
60301cb4:	e950 2302 	ldrd	r2, r3, [r0, #-8]
60301cb8:	e951 6702 	ldrd	r6, r7, [r1, #-8]
60301cbc:	fa82 f54c 	uadd8	r5, r2, ip
60301cc0:	ea82 0406 	eor.w	r4, r2, r6
60301cc4:	faa4 f48c 	sel	r4, r4, ip
60301cc8:	fa83 f54c 	uadd8	r5, r3, ip
60301ccc:	ea83 0507 	eor.w	r5, r3, r7
60301cd0:	faa5 f58c 	sel	r5, r5, ip
60301cd4:	4325      	orrs	r5, r4
60301cd6:	d0db      	beq.n	60301c90 <strcmp+0x68>
60301cd8:	b99c      	cbnz	r4, 60301d02 <strcmp+0xda>
60301cda:	ba2d      	rev	r5, r5
60301cdc:	fab5 f485 	clz	r4, r5
60301ce0:	f024 0407 	bic.w	r4, r4, #7
60301ce4:	fa27 f104 	lsr.w	r1, r7, r4
60301ce8:	e9dd 6702 	ldrd	r6, r7, [sp, #8]
60301cec:	fa23 f304 	lsr.w	r3, r3, r4
60301cf0:	f003 00ff 	and.w	r0, r3, #255	; 0xff
60301cf4:	f001 01ff 	and.w	r1, r1, #255	; 0xff
60301cf8:	e8fd 4504 	ldrd	r4, r5, [sp], #16
60301cfc:	eba0 0001 	sub.w	r0, r0, r1
60301d00:	4770      	bx	lr
60301d02:	ba24      	rev	r4, r4
60301d04:	fab4 f484 	clz	r4, r4
60301d08:	f024 0407 	bic.w	r4, r4, #7
60301d0c:	fa26 f104 	lsr.w	r1, r6, r4
60301d10:	e9dd 6702 	ldrd	r6, r7, [sp, #8]
60301d14:	fa22 f204 	lsr.w	r2, r2, r4
60301d18:	f002 00ff 	and.w	r0, r2, #255	; 0xff
60301d1c:	f001 01ff 	and.w	r1, r1, #255	; 0xff
60301d20:	e8fd 4504 	ldrd	r4, r5, [sp], #16
60301d24:	eba0 0001 	sub.w	r0, r0, r1
60301d28:	4770      	bx	lr
60301d2a:	f014 0f03 	tst.w	r4, #3
60301d2e:	d13c      	bne.n	60301daa <strcmp+0x182>
60301d30:	f010 0403 	ands.w	r4, r0, #3
60301d34:	d128      	bne.n	60301d88 <strcmp+0x160>
60301d36:	f850 2b08 	ldr.w	r2, [r0], #8
60301d3a:	f851 3b08 	ldr.w	r3, [r1], #8
60301d3e:	fa82 f54c 	uadd8	r5, r2, ip
60301d42:	ea82 0503 	eor.w	r5, r2, r3
60301d46:	faa5 f58c 	sel	r5, r5, ip
60301d4a:	b95d      	cbnz	r5, 60301d64 <strcmp+0x13c>
60301d4c:	f850 2c04 	ldr.w	r2, [r0, #-4]
60301d50:	f851 3c04 	ldr.w	r3, [r1, #-4]
60301d54:	fa82 f54c 	uadd8	r5, r2, ip
60301d58:	ea82 0503 	eor.w	r5, r2, r3
60301d5c:	faa5 f58c 	sel	r5, r5, ip
60301d60:	2d00      	cmp	r5, #0
60301d62:	d0e8      	beq.n	60301d36 <strcmp+0x10e>
60301d64:	ba2d      	rev	r5, r5
60301d66:	fab5 f485 	clz	r4, r5
60301d6a:	f024 0407 	bic.w	r4, r4, #7
60301d6e:	fa23 f104 	lsr.w	r1, r3, r4
60301d72:	fa22 f204 	lsr.w	r2, r2, r4
60301d76:	f002 00ff 	and.w	r0, r2, #255	; 0xff
60301d7a:	f001 01ff 	and.w	r1, r1, #255	; 0xff
60301d7e:	e8fd 4504 	ldrd	r4, r5, [sp], #16
60301d82:	eba0 0001 	sub.w	r0, r0, r1
60301d86:	4770      	bx	lr
60301d88:	ea4f 04c4 	mov.w	r4, r4, lsl #3
60301d8c:	f020 0003 	bic.w	r0, r0, #3
60301d90:	f850 2b08 	ldr.w	r2, [r0], #8
60301d94:	f021 0103 	bic.w	r1, r1, #3
60301d98:	f851 3b08 	ldr.w	r3, [r1], #8
60301d9c:	fa0c f404 	lsl.w	r4, ip, r4
60301da0:	ea62 0204 	orn	r2, r2, r4
60301da4:	ea63 0304 	orn	r3, r3, r4
60301da8:	e7c9      	b.n	60301d3e <strcmp+0x116>
60301daa:	f010 0403 	ands.w	r4, r0, #3
60301dae:	d01a      	beq.n	60301de6 <strcmp+0x1be>
60301db0:	eba1 0104 	sub.w	r1, r1, r4
60301db4:	f020 0003 	bic.w	r0, r0, #3
60301db8:	07e4      	lsls	r4, r4, #31
60301dba:	f850 2b04 	ldr.w	r2, [r0], #4
60301dbe:	d006      	beq.n	60301dce <strcmp+0x1a6>
60301dc0:	d20f      	bcs.n	60301de2 <strcmp+0x1ba>
60301dc2:	788b      	ldrb	r3, [r1, #2]
60301dc4:	fa5f f4a2 	uxtb.w	r4, r2, ror #16
60301dc8:	1ae4      	subs	r4, r4, r3
60301dca:	d106      	bne.n	60301dda <strcmp+0x1b2>
60301dcc:	b12b      	cbz	r3, 60301dda <strcmp+0x1b2>
60301dce:	78cb      	ldrb	r3, [r1, #3]
60301dd0:	fa5f f4b2 	uxtb.w	r4, r2, ror #24
60301dd4:	1ae4      	subs	r4, r4, r3
60301dd6:	d100      	bne.n	60301dda <strcmp+0x1b2>
60301dd8:	b91b      	cbnz	r3, 60301de2 <strcmp+0x1ba>
60301dda:	4620      	mov	r0, r4
60301ddc:	f85d 4b10 	ldr.w	r4, [sp], #16
60301de0:	4770      	bx	lr
60301de2:	f101 0104 	add.w	r1, r1, #4
60301de6:	f850 2b04 	ldr.w	r2, [r0], #4
60301dea:	07cc      	lsls	r4, r1, #31
60301dec:	f021 0103 	bic.w	r1, r1, #3
60301df0:	f851 3b04 	ldr.w	r3, [r1], #4
60301df4:	d848      	bhi.n	60301e88 <strcmp+0x260>
60301df6:	d224      	bcs.n	60301e42 <strcmp+0x21a>
60301df8:	f022 447f 	bic.w	r4, r2, #4278190080	; 0xff000000
60301dfc:	fa82 f54c 	uadd8	r5, r2, ip
60301e00:	ea94 2513 	eors.w	r5, r4, r3, lsr #8
60301e04:	faa5 f58c 	sel	r5, r5, ip
60301e08:	d10a      	bne.n	60301e20 <strcmp+0x1f8>
60301e0a:	b965      	cbnz	r5, 60301e26 <strcmp+0x1fe>
60301e0c:	f851 3b04 	ldr.w	r3, [r1], #4
60301e10:	ea84 0402 	eor.w	r4, r4, r2
60301e14:	ebb4 6f03 	cmp.w	r4, r3, lsl #24
60301e18:	d10e      	bne.n	60301e38 <strcmp+0x210>
60301e1a:	f850 2b04 	ldr.w	r2, [r0], #4
60301e1e:	e7eb      	b.n	60301df8 <strcmp+0x1d0>
60301e20:	ea4f 2313 	mov.w	r3, r3, lsr #8
60301e24:	e055      	b.n	60301ed2 <strcmp+0x2aa>
60301e26:	f035 457f 	bics.w	r5, r5, #4278190080	; 0xff000000
60301e2a:	d14d      	bne.n	60301ec8 <strcmp+0x2a0>
60301e2c:	7808      	ldrb	r0, [r1, #0]
60301e2e:	e8fd 4504 	ldrd	r4, r5, [sp], #16
60301e32:	f1c0 0000 	rsb	r0, r0, #0
60301e36:	4770      	bx	lr
60301e38:	ea4f 6212 	mov.w	r2, r2, lsr #24
60301e3c:	f003 03ff 	and.w	r3, r3, #255	; 0xff
60301e40:	e047      	b.n	60301ed2 <strcmp+0x2aa>
60301e42:	ea02 441c 	and.w	r4, r2, ip, lsr #16
60301e46:	fa82 f54c 	uadd8	r5, r2, ip
60301e4a:	ea94 4513 	eors.w	r5, r4, r3, lsr #16
60301e4e:	faa5 f58c 	sel	r5, r5, ip
60301e52:	d10a      	bne.n	60301e6a <strcmp+0x242>
60301e54:	b965      	cbnz	r5, 60301e70 <strcmp+0x248>
60301e56:	f851 3b04 	ldr.w	r3, [r1], #4
60301e5a:	ea84 0402 	eor.w	r4, r4, r2
60301e5e:	ebb4 4f03 	cmp.w	r4, r3, lsl #16
60301e62:	d10c      	bne.n	60301e7e <strcmp+0x256>
60301e64:	f850 2b04 	ldr.w	r2, [r0], #4
60301e68:	e7eb      	b.n	60301e42 <strcmp+0x21a>
60301e6a:	ea4f 4313 	mov.w	r3, r3, lsr #16
60301e6e:	e030      	b.n	60301ed2 <strcmp+0x2aa>
60301e70:	ea15 451c 	ands.w	r5, r5, ip, lsr #16
60301e74:	d128      	bne.n	60301ec8 <strcmp+0x2a0>
60301e76:	880b      	ldrh	r3, [r1, #0]
60301e78:	ea4f 4212 	mov.w	r2, r2, lsr #16
60301e7c:	e029      	b.n	60301ed2 <strcmp+0x2aa>
60301e7e:	ea4f 4212 	mov.w	r2, r2, lsr #16
60301e82:	ea03 431c 	and.w	r3, r3, ip, lsr #16
60301e86:	e024      	b.n	60301ed2 <strcmp+0x2aa>
60301e88:	f002 04ff 	and.w	r4, r2, #255	; 0xff
60301e8c:	fa82 f54c 	uadd8	r5, r2, ip
60301e90:	ea94 6513 	eors.w	r5, r4, r3, lsr #24
60301e94:	faa5 f58c 	sel	r5, r5, ip
60301e98:	d10a      	bne.n	60301eb0 <strcmp+0x288>
60301e9a:	b965      	cbnz	r5, 60301eb6 <strcmp+0x28e>
60301e9c:	f851 3b04 	ldr.w	r3, [r1], #4
60301ea0:	ea84 0402 	eor.w	r4, r4, r2
60301ea4:	ebb4 2f03 	cmp.w	r4, r3, lsl #8
60301ea8:	d109      	bne.n	60301ebe <strcmp+0x296>
60301eaa:	f850 2b04 	ldr.w	r2, [r0], #4
60301eae:	e7eb      	b.n	60301e88 <strcmp+0x260>
60301eb0:	ea4f 6313 	mov.w	r3, r3, lsr #24
60301eb4:	e00d      	b.n	60301ed2 <strcmp+0x2aa>
60301eb6:	f015 0fff 	tst.w	r5, #255	; 0xff
60301eba:	d105      	bne.n	60301ec8 <strcmp+0x2a0>
60301ebc:	680b      	ldr	r3, [r1, #0]
60301ebe:	ea4f 2212 	mov.w	r2, r2, lsr #8
60301ec2:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
60301ec6:	e004      	b.n	60301ed2 <strcmp+0x2aa>
60301ec8:	f04f 0000 	mov.w	r0, #0
60301ecc:	e8fd 4504 	ldrd	r4, r5, [sp], #16
60301ed0:	4770      	bx	lr
60301ed2:	ba12      	rev	r2, r2
60301ed4:	ba1b      	rev	r3, r3
60301ed6:	fa82 f44c 	uadd8	r4, r2, ip
60301eda:	ea82 0403 	eor.w	r4, r2, r3
60301ede:	faa4 f58c 	sel	r5, r4, ip
60301ee2:	fab5 f485 	clz	r4, r5
60301ee6:	fa02 f204 	lsl.w	r2, r2, r4
60301eea:	fa03 f304 	lsl.w	r3, r3, r4
60301eee:	ea4f 6012 	mov.w	r0, r2, lsr #24
60301ef2:	e8fd 4504 	ldrd	r4, r5, [sp], #16
60301ef6:	eba0 6013 	sub.w	r0, r0, r3, lsr #24
60301efa:	4770      	bx	lr
60301efc:	0000      	movs	r0, r0
	...

60301f00 <strlen>:
60301f00:	f890 f000 	pld	[r0]
60301f04:	e96d 4502 	strd	r4, r5, [sp, #-8]!
60301f08:	f020 0107 	bic.w	r1, r0, #7
60301f0c:	f06f 0c00 	mvn.w	ip, #0
60301f10:	f010 0407 	ands.w	r4, r0, #7
60301f14:	f891 f020 	pld	[r1, #32]
60301f18:	f040 8049 	bne.w	60301fae <strlen+0xae>
60301f1c:	f04f 0400 	mov.w	r4, #0
60301f20:	f06f 0007 	mvn.w	r0, #7
60301f24:	e9d1 2300 	ldrd	r2, r3, [r1]
60301f28:	f891 f040 	pld	[r1, #64]	; 0x40
60301f2c:	f100 0008 	add.w	r0, r0, #8
60301f30:	fa82 f24c 	uadd8	r2, r2, ip
60301f34:	faa4 f28c 	sel	r2, r4, ip
60301f38:	fa83 f34c 	uadd8	r3, r3, ip
60301f3c:	faa2 f38c 	sel	r3, r2, ip
60301f40:	bb4b      	cbnz	r3, 60301f96 <strlen+0x96>
60301f42:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
60301f46:	fa82 f24c 	uadd8	r2, r2, ip
60301f4a:	f100 0008 	add.w	r0, r0, #8
60301f4e:	faa4 f28c 	sel	r2, r4, ip
60301f52:	fa83 f34c 	uadd8	r3, r3, ip
60301f56:	faa2 f38c 	sel	r3, r2, ip
60301f5a:	b9e3      	cbnz	r3, 60301f96 <strlen+0x96>
60301f5c:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
60301f60:	fa82 f24c 	uadd8	r2, r2, ip
60301f64:	f100 0008 	add.w	r0, r0, #8
60301f68:	faa4 f28c 	sel	r2, r4, ip
60301f6c:	fa83 f34c 	uadd8	r3, r3, ip
60301f70:	faa2 f38c 	sel	r3, r2, ip
60301f74:	b97b      	cbnz	r3, 60301f96 <strlen+0x96>
60301f76:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
60301f7a:	f101 0120 	add.w	r1, r1, #32
60301f7e:	fa82 f24c 	uadd8	r2, r2, ip
60301f82:	f100 0008 	add.w	r0, r0, #8
60301f86:	faa4 f28c 	sel	r2, r4, ip
60301f8a:	fa83 f34c 	uadd8	r3, r3, ip
60301f8e:	faa2 f38c 	sel	r3, r2, ip
60301f92:	2b00      	cmp	r3, #0
60301f94:	d0c6      	beq.n	60301f24 <strlen+0x24>
60301f96:	2a00      	cmp	r2, #0
60301f98:	bf04      	itt	eq
60301f9a:	3004      	addeq	r0, #4
60301f9c:	461a      	moveq	r2, r3
60301f9e:	ba12      	rev	r2, r2
60301fa0:	fab2 f282 	clz	r2, r2
60301fa4:	e8fd 4502 	ldrd	r4, r5, [sp], #8
60301fa8:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
60301fac:	4770      	bx	lr
60301fae:	e9d1 2300 	ldrd	r2, r3, [r1]
60301fb2:	f004 0503 	and.w	r5, r4, #3
60301fb6:	f1c4 0000 	rsb	r0, r4, #0
60301fba:	ea4f 05c5 	mov.w	r5, r5, lsl #3
60301fbe:	f014 0f04 	tst.w	r4, #4
60301fc2:	f891 f040 	pld	[r1, #64]	; 0x40
60301fc6:	fa0c f505 	lsl.w	r5, ip, r5
60301fca:	ea62 0205 	orn	r2, r2, r5
60301fce:	bf1c      	itt	ne
60301fd0:	ea63 0305 	ornne	r3, r3, r5
60301fd4:	4662      	movne	r2, ip
60301fd6:	f04f 0400 	mov.w	r4, #0
60301fda:	e7a9      	b.n	60301f30 <strlen+0x30>

60301fdc <strncpy>:
60301fdc:	e1803001 	orr	r3, r0, r1
60301fe0:	e3520003 	cmp	r2, #3
60301fe4:	e92d4070 	push	{r4, r5, r6, lr}
60301fe8:	93a0e000 	movls	lr, #0
60301fec:	e7e13053 	ubfx	r3, r3, #0, #2
60301ff0:	83a0e001 	movhi	lr, #1
60301ff4:	e3530000 	cmp	r3, #0
60301ff8:	13a0e000 	movne	lr, #0
60301ffc:	e35e0000 	cmp	lr, #0
60302000:	01a03000 	moveq	r3, r0
60302004:	0a00000e 	beq	60302044 <strncpy+0x68>
60302008:	e59f606c 	ldr	r6, [pc, #108]	; 6030207c <strncpy+0xa0>
6030200c:	e1a0c001 	mov	ip, r1
60302010:	e59f5068 	ldr	r5, [pc, #104]	; 60302080 <strncpy+0xa4>
60302014:	e1a03000 	mov	r3, r0
60302018:	e1a0100c 	mov	r1, ip
6030201c:	e49c4004 	ldr	r4, [ip], #4
60302020:	e084e006 	add	lr, r4, r6
60302024:	e1cee004 	bic	lr, lr, r4
60302028:	e11e0005 	tst	lr, r5
6030202c:	1a000004 	bne	60302044 <strncpy+0x68>
60302030:	e2422004 	sub	r2, r2, #4
60302034:	e1a0100c 	mov	r1, ip
60302038:	e3520003 	cmp	r2, #3
6030203c:	e4834004 	str	r4, [r3], #4
60302040:	8afffff4 	bhi	60302018 <strncpy+0x3c>
60302044:	e2411001 	sub	r1, r1, #1
60302048:	e3520000 	cmp	r2, #0
6030204c:	0a000004 	beq	60302064 <strncpy+0x88>
60302050:	e5f1c001 	ldrb	ip, [r1, #1]!
60302054:	e2422001 	sub	r2, r2, #1
60302058:	e4c3c001 	strb	ip, [r3], #1
6030205c:	e35c0000 	cmp	ip, #0
60302060:	1afffff8 	bne	60302048 <strncpy+0x6c>
60302064:	e0832002 	add	r2, r3, r2
60302068:	e3a01000 	mov	r1, #0
6030206c:	e1520003 	cmp	r2, r3
60302070:	08bd8070 	popeq	{r4, r5, r6, pc}
60302074:	e4c31001 	strb	r1, [r3], #1
60302078:	eafffffb 	b	6030206c <strncpy+0x90>
6030207c:	fefefeff 	.word	0xfefefeff
60302080:	80808080 	.word	0x80808080

60302084 <__sprint_r>:
60302084:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
60302088:	e1a04002 	mov	r4, r2
6030208c:	e5923008 	ldr	r3, [r2, #8]
60302090:	e3530000 	cmp	r3, #0
60302094:	1a000002 	bne	603020a4 <__sprint_r+0x20>
60302098:	e1a00003 	mov	r0, r3
6030209c:	e5823004 	str	r3, [r2, #4]
603020a0:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
603020a4:	e5913064 	ldr	r3, [r1, #100]	; 0x64
603020a8:	e1a07001 	mov	r7, r1
603020ac:	e3130a02 	tst	r3, #8192	; 0x2000
603020b0:	0a00001b 	beq	60302124 <__sprint_r+0xa0>
603020b4:	e5925000 	ldr	r5, [r2]
603020b8:	e1a08000 	mov	r8, r0
603020bc:	e2855008 	add	r5, r5, #8
603020c0:	e5156004 	ldr	r6, [r5, #-4]
603020c4:	e3a09000 	mov	r9, #0
603020c8:	e515b008 	ldr	fp, [r5, #-8]
603020cc:	e1a0a126 	lsr	sl, r6, #2
603020d0:	e15a0009 	cmp	sl, r9
603020d4:	ca00000a 	bgt	60302104 <__sprint_r+0x80>
603020d8:	e5940008 	ldr	r0, [r4, #8]
603020dc:	e3c66003 	bic	r6, r6, #3
603020e0:	e2855008 	add	r5, r5, #8
603020e4:	e0400006 	sub	r0, r0, r6
603020e8:	e5840008 	str	r0, [r4, #8]
603020ec:	e3500000 	cmp	r0, #0
603020f0:	1afffff2 	bne	603020c0 <__sprint_r+0x3c>
603020f4:	e3a03000 	mov	r3, #0
603020f8:	e5843008 	str	r3, [r4, #8]
603020fc:	e5843004 	str	r3, [r4, #4]
60302100:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
60302104:	e79b1109 	ldr	r1, [fp, r9, lsl #2]
60302108:	e1a02007 	mov	r2, r7
6030210c:	e1a00008 	mov	r0, r8
60302110:	eb00093f 	bl	60304614 <_fputwc_r>
60302114:	e3700001 	cmn	r0, #1
60302118:	0afffff5 	beq	603020f4 <__sprint_r+0x70>
6030211c:	e2899001 	add	r9, r9, #1
60302120:	eaffffea 	b	603020d0 <__sprint_r+0x4c>
60302124:	eb00096f 	bl	603046e8 <__sfvwrite_r>
60302128:	eafffff1 	b	603020f4 <__sprint_r+0x70>

6030212c <_vfiprintf_r>:
6030212c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
60302130:	e1a08001 	mov	r8, r1
60302134:	e1a04003 	mov	r4, r3
60302138:	e24dd0ec 	sub	sp, sp, #236	; 0xec
6030213c:	e1a05003 	mov	r5, r3
60302140:	e2509000 	subs	r9, r0, #0
60302144:	e58d2008 	str	r2, [sp, #8]
60302148:	0a000003 	beq	6030215c <_vfiprintf_r+0x30>
6030214c:	e5993018 	ldr	r3, [r9, #24]
60302150:	e3530000 	cmp	r3, #0
60302154:	1a000000 	bne	6030215c <_vfiprintf_r+0x30>
60302158:	ebfffb78 	bl	60300f40 <__sinit>
6030215c:	e5983064 	ldr	r3, [r8, #100]	; 0x64
60302160:	e3130001 	tst	r3, #1
60302164:	1a000004 	bne	6030217c <_vfiprintf_r+0x50>
60302168:	e1d830bc 	ldrh	r3, [r8, #12]
6030216c:	e3130c02 	tst	r3, #512	; 0x200
60302170:	1a000001 	bne	6030217c <_vfiprintf_r+0x50>
60302174:	e5980058 	ldr	r0, [r8, #88]	; 0x58
60302178:	ebfffc56 	bl	603012d8 <__retarget_lock_acquire_recursive>
6030217c:	e1d830fc 	ldrsh	r3, [r8, #12]
60302180:	e3130a02 	tst	r3, #8192	; 0x2000
60302184:	1a000004 	bne	6030219c <_vfiprintf_r+0x70>
60302188:	e3833a02 	orr	r3, r3, #8192	; 0x2000
6030218c:	e1c830bc 	strh	r3, [r8, #12]
60302190:	e5983064 	ldr	r3, [r8, #100]	; 0x64
60302194:	e3c33a02 	bic	r3, r3, #8192	; 0x2000
60302198:	e5883064 	str	r3, [r8, #100]	; 0x64
6030219c:	e1d830bc 	ldrh	r3, [r8, #12]
603021a0:	e3130008 	tst	r3, #8
603021a4:	0a000002 	beq	603021b4 <_vfiprintf_r+0x88>
603021a8:	e5983010 	ldr	r3, [r8, #16]
603021ac:	e3530000 	cmp	r3, #0
603021b0:	1a000012 	bne	60302200 <_vfiprintf_r+0xd4>
603021b4:	e1a01008 	mov	r1, r8
603021b8:	e1a00009 	mov	r0, r9
603021bc:	eb0003e1 	bl	60303148 <__swsetup_r>
603021c0:	e3500000 	cmp	r0, #0
603021c4:	0a00000d 	beq	60302200 <_vfiprintf_r+0xd4>
603021c8:	e5983064 	ldr	r3, [r8, #100]	; 0x64
603021cc:	e3130001 	tst	r3, #1
603021d0:	0a000004 	beq	603021e8 <_vfiprintf_r+0xbc>
603021d4:	e3e03000 	mvn	r3, #0
603021d8:	e58d300c 	str	r3, [sp, #12]
603021dc:	e59d000c 	ldr	r0, [sp, #12]
603021e0:	e28dd0ec 	add	sp, sp, #236	; 0xec
603021e4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
603021e8:	e1d830bc 	ldrh	r3, [r8, #12]
603021ec:	e3130c02 	tst	r3, #512	; 0x200
603021f0:	1afffff7 	bne	603021d4 <_vfiprintf_r+0xa8>
603021f4:	e5980058 	ldr	r0, [r8, #88]	; 0x58
603021f8:	ebfffc3c 	bl	603012f0 <__retarget_lock_release_recursive>
603021fc:	eafffff4 	b	603021d4 <_vfiprintf_r+0xa8>
60302200:	e1d830bc 	ldrh	r3, [r8, #12]
60302204:	e203201a 	and	r2, r3, #26
60302208:	e352000a 	cmp	r2, #10
6030220c:	1a000010 	bne	60302254 <_vfiprintf_r+0x128>
60302210:	e1d820fe 	ldrsh	r2, [r8, #14]
60302214:	e3520000 	cmp	r2, #0
60302218:	ba00000d 	blt	60302254 <_vfiprintf_r+0x128>
6030221c:	e5982064 	ldr	r2, [r8, #100]	; 0x64
60302220:	e3120001 	tst	r2, #1
60302224:	1a000003 	bne	60302238 <_vfiprintf_r+0x10c>
60302228:	e3130c02 	tst	r3, #512	; 0x200
6030222c:	1a000001 	bne	60302238 <_vfiprintf_r+0x10c>
60302230:	e5980058 	ldr	r0, [r8, #88]	; 0x58
60302234:	ebfffc2d 	bl	603012f0 <__retarget_lock_release_recursive>
60302238:	e59d2008 	ldr	r2, [sp, #8]
6030223c:	e1a03004 	mov	r3, r4
60302240:	e1a01008 	mov	r1, r8
60302244:	e1a00009 	mov	r0, r9
60302248:	e28dd0ec 	add	sp, sp, #236	; 0xec
6030224c:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
60302250:	ea00036d 	b	6030300c <__sbprintf>
60302254:	e3a03000 	mov	r3, #0
60302258:	e28d7044 	add	r7, sp, #68	; 0x44
6030225c:	e58d3040 	str	r3, [sp, #64]	; 0x40
60302260:	e58d7038 	str	r7, [sp, #56]	; 0x38
60302264:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60302268:	e58d3018 	str	r3, [sp, #24]
6030226c:	e58d301c 	str	r3, [sp, #28]
60302270:	e58d3020 	str	r3, [sp, #32]
60302274:	e58d3024 	str	r3, [sp, #36]	; 0x24
60302278:	e58d300c 	str	r3, [sp, #12]
6030227c:	e59d2008 	ldr	r2, [sp, #8]
60302280:	e5d23000 	ldrb	r3, [r2]
60302284:	e1a04002 	mov	r4, r2
60302288:	e2822001 	add	r2, r2, #1
6030228c:	e3530000 	cmp	r3, #0
60302290:	13530025 	cmpne	r3, #37	; 0x25
60302294:	1afffff9 	bne	60302280 <_vfiprintf_r+0x154>
60302298:	e59d3008 	ldr	r3, [sp, #8]
6030229c:	e0546003 	subs	r6, r4, r3
603022a0:	0a000013 	beq	603022f4 <_vfiprintf_r+0x1c8>
603022a4:	e8870048 	stm	r7, {r3, r6}
603022a8:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
603022ac:	e0833006 	add	r3, r3, r6
603022b0:	e58d3040 	str	r3, [sp, #64]	; 0x40
603022b4:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
603022b8:	e2833001 	add	r3, r3, #1
603022bc:	e58d303c 	str	r3, [sp, #60]	; 0x3c
603022c0:	e3530007 	cmp	r3, #7
603022c4:	d2877008 	addle	r7, r7, #8
603022c8:	da000006 	ble	603022e8 <_vfiprintf_r+0x1bc>
603022cc:	e28d2038 	add	r2, sp, #56	; 0x38
603022d0:	e1a01008 	mov	r1, r8
603022d4:	e1a00009 	mov	r0, r9
603022d8:	ebffff69 	bl	60302084 <__sprint_r>
603022dc:	e3500000 	cmp	r0, #0
603022e0:	1a0002cc 	bne	60302e18 <_vfiprintf_r+0xcec>
603022e4:	e28d7044 	add	r7, sp, #68	; 0x44
603022e8:	e59d300c 	ldr	r3, [sp, #12]
603022ec:	e0833006 	add	r3, r3, r6
603022f0:	e58d300c 	str	r3, [sp, #12]
603022f4:	e5d43000 	ldrb	r3, [r4]
603022f8:	e3530000 	cmp	r3, #0
603022fc:	0a0002e1 	beq	60302e88 <_vfiprintf_r+0xd5c>
60302300:	e3a03000 	mov	r3, #0
60302304:	e2842001 	add	r2, r4, #1
60302308:	e1a04003 	mov	r4, r3
6030230c:	e3e01000 	mvn	r1, #0
60302310:	e5cd3033 	strb	r3, [sp, #51]	; 0x33
60302314:	e58d1004 	str	r1, [sp, #4]
60302318:	e58d3010 	str	r3, [sp, #16]
6030231c:	e4d23001 	ldrb	r3, [r2], #1
60302320:	e58d2008 	str	r2, [sp, #8]
60302324:	e2432020 	sub	r2, r3, #32
60302328:	e352005a 	cmp	r2, #90	; 0x5a
6030232c:	979ff102 	ldrls	pc, [pc, r2, lsl #2]
60302330:	ea000250 	b	60302c78 <_vfiprintf_r+0xb4c>
60302334:	6030253c 	.word	0x6030253c
60302338:	60302c78 	.word	0x60302c78
6030233c:	60302c78 	.word	0x60302c78
60302340:	60302554 	.word	0x60302554
60302344:	60302c78 	.word	0x60302c78
60302348:	60302c78 	.word	0x60302c78
6030234c:	60302c78 	.word	0x60302c78
60302350:	603024ec 	.word	0x603024ec
60302354:	60302c78 	.word	0x60302c78
60302358:	60302c78 	.word	0x60302c78
6030235c:	6030255c 	.word	0x6030255c
60302360:	6030257c 	.word	0x6030257c
60302364:	60302c78 	.word	0x60302c78
60302368:	60302574 	.word	0x60302574
6030236c:	60302584 	.word	0x60302584
60302370:	60302c78 	.word	0x60302c78
60302374:	603025d8 	.word	0x603025d8
60302378:	603025e0 	.word	0x603025e0
6030237c:	603025e0 	.word	0x603025e0
60302380:	603025e0 	.word	0x603025e0
60302384:	603025e0 	.word	0x603025e0
60302388:	603025e0 	.word	0x603025e0
6030238c:	603025e0 	.word	0x603025e0
60302390:	603025e0 	.word	0x603025e0
60302394:	603025e0 	.word	0x603025e0
60302398:	603025e0 	.word	0x603025e0
6030239c:	60302c78 	.word	0x60302c78
603023a0:	60302c78 	.word	0x60302c78
603023a4:	60302c78 	.word	0x60302c78
603023a8:	60302c78 	.word	0x60302c78
603023ac:	60302c78 	.word	0x60302c78
603023b0:	60302c78 	.word	0x60302c78
603023b4:	60302c78 	.word	0x60302c78
603023b8:	60302c78 	.word	0x60302c78
603023bc:	60302c78 	.word	0x60302c78
603023c0:	60302660 	.word	0x60302660
603023c4:	60302688 	.word	0x60302688
603023c8:	60302c78 	.word	0x60302c78
603023cc:	60302c78 	.word	0x60302c78
603023d0:	60302c78 	.word	0x60302c78
603023d4:	60302c78 	.word	0x60302c78
603023d8:	60302c78 	.word	0x60302c78
603023dc:	60302c78 	.word	0x60302c78
603023e0:	60302c78 	.word	0x60302c78
603023e4:	60302c78 	.word	0x60302c78
603023e8:	60302c78 	.word	0x60302c78
603023ec:	60302c78 	.word	0x60302c78
603023f0:	603027e8 	.word	0x603027e8
603023f4:	60302c78 	.word	0x60302c78
603023f8:	60302c78 	.word	0x60302c78
603023fc:	60302c78 	.word	0x60302c78
60302400:	60302878 	.word	0x60302878
60302404:	60302c78 	.word	0x60302c78
60302408:	60302b64 	.word	0x60302b64
6030240c:	60302c78 	.word	0x60302c78
60302410:	60302c78 	.word	0x60302c78
60302414:	60302bc0 	.word	0x60302bc0
60302418:	60302c78 	.word	0x60302c78
6030241c:	60302c78 	.word	0x60302c78
60302420:	60302c78 	.word	0x60302c78
60302424:	60302c78 	.word	0x60302c78
60302428:	60302c78 	.word	0x60302c78
6030242c:	60302c78 	.word	0x60302c78
60302430:	60302c78 	.word	0x60302c78
60302434:	60302c78 	.word	0x60302c78
60302438:	60302c78 	.word	0x60302c78
6030243c:	60302c78 	.word	0x60302c78
60302440:	60302660 	.word	0x60302660
60302444:	6030268c 	.word	0x6030268c
60302448:	60302c78 	.word	0x60302c78
6030244c:	60302c78 	.word	0x60302c78
60302450:	60302c78 	.word	0x60302c78
60302454:	60302614 	.word	0x60302614
60302458:	6030268c 	.word	0x6030268c
6030245c:	60302658 	.word	0x60302658
60302460:	60302c78 	.word	0x60302c78
60302464:	60302638 	.word	0x60302638
60302468:	60302c78 	.word	0x60302c78
6030246c:	6030277c 	.word	0x6030277c
60302470:	603027ec 	.word	0x603027ec
60302474:	60302850 	.word	0x60302850
60302478:	60302658 	.word	0x60302658
6030247c:	60302c78 	.word	0x60302c78
60302480:	60302878 	.word	0x60302878
60302484:	60302534 	.word	0x60302534
60302488:	60302b68 	.word	0x60302b68
6030248c:	60302c78 	.word	0x60302c78
60302490:	60302c78 	.word	0x60302c78
60302494:	603024a0 	.word	0x603024a0
60302498:	60302c78 	.word	0x60302c78
6030249c:	60302534 	.word	0x60302534
603024a0:	e59f2b38 	ldr	r2, [pc, #2872]	; 60302fe0 <_vfiprintf_r+0xeb4>
603024a4:	e58d2018 	str	r2, [sp, #24]
603024a8:	e2142020 	ands	r2, r4, #32
603024ac:	0a0001c5 	beq	60302bc8 <_vfiprintf_r+0xa9c>
603024b0:	e2855007 	add	r5, r5, #7
603024b4:	e3c52007 	bic	r2, r5, #7
603024b8:	e1a0a002 	mov	sl, r2
603024bc:	e5926004 	ldr	r6, [r2, #4]
603024c0:	e49a5008 	ldr	r5, [sl], #8
603024c4:	e1952006 	orrs	r2, r5, r6
603024c8:	12042001 	andne	r2, r4, #1
603024cc:	03a02000 	moveq	r2, #0
603024d0:	e3520000 	cmp	r2, #0
603024d4:	15cd3035 	strbne	r3, [sp, #53]	; 0x35
603024d8:	13844002 	orrne	r4, r4, #2
603024dc:	13a02030 	movne	r2, #48	; 0x30
603024e0:	e3c44b01 	bic	r4, r4, #1024	; 0x400
603024e4:	15cd2034 	strbne	r2, [sp, #52]	; 0x34
603024e8:	ea0000e0 	b	60302870 <_vfiprintf_r+0x744>
603024ec:	e1a00009 	mov	r0, r9
603024f0:	eb0009ae 	bl	60304bb0 <_localeconv_r>
603024f4:	e5903004 	ldr	r3, [r0, #4]
603024f8:	e58d3024 	str	r3, [sp, #36]	; 0x24
603024fc:	e1a00003 	mov	r0, r3
60302500:	fafffe7e 	blx	60301f00 <strlen>
60302504:	e58d0020 	str	r0, [sp, #32]
60302508:	e1a00009 	mov	r0, r9
6030250c:	eb0009a7 	bl	60304bb0 <_localeconv_r>
60302510:	e5903008 	ldr	r3, [r0, #8]
60302514:	e58d301c 	str	r3, [sp, #28]
60302518:	e1cd21dc 	ldrd	r2, [sp, #28]
6030251c:	e3530000 	cmp	r3, #0
60302520:	13520000 	cmpne	r2, #0
60302524:	0a000002 	beq	60302534 <_vfiprintf_r+0x408>
60302528:	e5d23000 	ldrb	r3, [r2]
6030252c:	e3530000 	cmp	r3, #0
60302530:	13844b01 	orrne	r4, r4, #1024	; 0x400
60302534:	e59d2008 	ldr	r2, [sp, #8]
60302538:	eaffff77 	b	6030231c <_vfiprintf_r+0x1f0>
6030253c:	e5dd3033 	ldrb	r3, [sp, #51]	; 0x33
60302540:	e3530000 	cmp	r3, #0
60302544:	03a03020 	moveq	r3, #32
60302548:	1afffff9 	bne	60302534 <_vfiprintf_r+0x408>
6030254c:	e5cd3033 	strb	r3, [sp, #51]	; 0x33
60302550:	eafffff7 	b	60302534 <_vfiprintf_r+0x408>
60302554:	e3844001 	orr	r4, r4, #1
60302558:	eafffff5 	b	60302534 <_vfiprintf_r+0x408>
6030255c:	e4953004 	ldr	r3, [r5], #4
60302560:	e58d3010 	str	r3, [sp, #16]
60302564:	e3530000 	cmp	r3, #0
60302568:	aafffff1 	bge	60302534 <_vfiprintf_r+0x408>
6030256c:	e2633000 	rsb	r3, r3, #0
60302570:	e58d3010 	str	r3, [sp, #16]
60302574:	e3844004 	orr	r4, r4, #4
60302578:	eaffffed 	b	60302534 <_vfiprintf_r+0x408>
6030257c:	e3a0302b 	mov	r3, #43	; 0x2b
60302580:	eafffff1 	b	6030254c <_vfiprintf_r+0x420>
60302584:	e59d2008 	ldr	r2, [sp, #8]
60302588:	e4d23001 	ldrb	r3, [r2], #1
6030258c:	e353002a 	cmp	r3, #42	; 0x2a
60302590:	1a00000d 	bne	603025cc <_vfiprintf_r+0x4a0>
60302594:	e4950004 	ldr	r0, [r5], #4
60302598:	e58d2008 	str	r2, [sp, #8]
6030259c:	e1803fc0 	orr	r3, r0, r0, asr #31
603025a0:	e58d3004 	str	r3, [sp, #4]
603025a4:	eaffffe2 	b	60302534 <_vfiprintf_r+0x408>
603025a8:	e59d3004 	ldr	r3, [sp, #4]
603025ac:	e3a0000a 	mov	r0, #10
603025b0:	e0231390 	mla	r3, r0, r3, r1
603025b4:	e58d3004 	str	r3, [sp, #4]
603025b8:	e4d23001 	ldrb	r3, [r2], #1
603025bc:	e2431030 	sub	r1, r3, #48	; 0x30
603025c0:	e3510009 	cmp	r1, #9
603025c4:	9afffff7 	bls	603025a8 <_vfiprintf_r+0x47c>
603025c8:	eaffff54 	b	60302320 <_vfiprintf_r+0x1f4>
603025cc:	e3a01000 	mov	r1, #0
603025d0:	e58d1004 	str	r1, [sp, #4]
603025d4:	eafffff8 	b	603025bc <_vfiprintf_r+0x490>
603025d8:	e3844080 	orr	r4, r4, #128	; 0x80
603025dc:	eaffffd4 	b	60302534 <_vfiprintf_r+0x408>
603025e0:	e59d2008 	ldr	r2, [sp, #8]
603025e4:	e3a01000 	mov	r1, #0
603025e8:	e58d1010 	str	r1, [sp, #16]
603025ec:	e59d1010 	ldr	r1, [sp, #16]
603025f0:	e2433030 	sub	r3, r3, #48	; 0x30
603025f4:	e3a0000a 	mov	r0, #10
603025f8:	e0233190 	mla	r3, r0, r1, r3
603025fc:	e58d3010 	str	r3, [sp, #16]
60302600:	e4d23001 	ldrb	r3, [r2], #1
60302604:	e2431030 	sub	r1, r3, #48	; 0x30
60302608:	e3510009 	cmp	r1, #9
6030260c:	9afffff6 	bls	603025ec <_vfiprintf_r+0x4c0>
60302610:	eaffff42 	b	60302320 <_vfiprintf_r+0x1f4>
60302614:	e59d3008 	ldr	r3, [sp, #8]
60302618:	e5d33000 	ldrb	r3, [r3]
6030261c:	e3530068 	cmp	r3, #104	; 0x68
60302620:	03844c02 	orreq	r4, r4, #512	; 0x200
60302624:	13844040 	orrne	r4, r4, #64	; 0x40
60302628:	059d3008 	ldreq	r3, [sp, #8]
6030262c:	02833001 	addeq	r3, r3, #1
60302630:	058d3008 	streq	r3, [sp, #8]
60302634:	eaffffbe 	b	60302534 <_vfiprintf_r+0x408>
60302638:	e59d3008 	ldr	r3, [sp, #8]
6030263c:	e5d33000 	ldrb	r3, [r3]
60302640:	e353006c 	cmp	r3, #108	; 0x6c
60302644:	13844010 	orrne	r4, r4, #16
60302648:	059d3008 	ldreq	r3, [sp, #8]
6030264c:	02833001 	addeq	r3, r3, #1
60302650:	058d3008 	streq	r3, [sp, #8]
60302654:	1affffb6 	bne	60302534 <_vfiprintf_r+0x408>
60302658:	e3844020 	orr	r4, r4, #32
6030265c:	eaffffb4 	b	60302534 <_vfiprintf_r+0x408>
60302660:	e1a0a005 	mov	sl, r5
60302664:	e3a0b000 	mov	fp, #0
60302668:	e5cdb033 	strb	fp, [sp, #51]	; 0x33
6030266c:	e49a3004 	ldr	r3, [sl], #4
60302670:	e5cd3084 	strb	r3, [sp, #132]	; 0x84
60302674:	e3a03001 	mov	r3, #1
60302678:	e1a0600b 	mov	r6, fp
6030267c:	e58d3004 	str	r3, [sp, #4]
60302680:	e28db084 	add	fp, sp, #132	; 0x84
60302684:	ea000090 	b	603028cc <_vfiprintf_r+0x7a0>
60302688:	e3844010 	orr	r4, r4, #16
6030268c:	e3140020 	tst	r4, #32
60302690:	0a000029 	beq	6030273c <_vfiprintf_r+0x610>
60302694:	e2855007 	add	r5, r5, #7
60302698:	e3c53007 	bic	r3, r5, #7
6030269c:	e1a0a003 	mov	sl, r3
603026a0:	e5936004 	ldr	r6, [r3, #4]
603026a4:	e49a5008 	ldr	r5, [sl], #8
603026a8:	e3560000 	cmp	r6, #0
603026ac:	aa000202 	bge	60302ebc <_vfiprintf_r+0xd90>
603026b0:	e2755000 	rsbs	r5, r5, #0
603026b4:	e3a0302d 	mov	r3, #45	; 0x2d
603026b8:	e2e66000 	rsc	r6, r6, #0
603026bc:	e5cd3033 	strb	r3, [sp, #51]	; 0x33
603026c0:	e3a03001 	mov	r3, #1
603026c4:	e59d2004 	ldr	r2, [sp, #4]
603026c8:	e3720001 	cmn	r2, #1
603026cc:	11a01004 	movne	r1, r4
603026d0:	1a000149 	bne	60302bfc <_vfiprintf_r+0xad0>
603026d4:	e3530001 	cmp	r3, #1
603026d8:	0a0001fc 	beq	60302ed0 <_vfiprintf_r+0xda4>
603026dc:	e28db0e8 	add	fp, sp, #232	; 0xe8
603026e0:	e3530002 	cmp	r3, #2
603026e4:	0a000156 	beq	60302c44 <_vfiprintf_r+0xb18>
603026e8:	e2053007 	and	r3, r5, #7
603026ec:	e1a051a5 	lsr	r5, r5, #3
603026f0:	e1855e86 	orr	r5, r5, r6, lsl #29
603026f4:	e1a061a6 	lsr	r6, r6, #3
603026f8:	e1a0200b 	mov	r2, fp
603026fc:	e2833030 	add	r3, r3, #48	; 0x30
60302700:	e1951006 	orrs	r1, r5, r6
60302704:	e56b3001 	strb	r3, [fp, #-1]!
60302708:	1afffff6 	bne	603026e8 <_vfiprintf_r+0x5bc>
6030270c:	e3530030 	cmp	r3, #48	; 0x30
60302710:	03a01000 	moveq	r1, #0
60302714:	12041001 	andne	r1, r4, #1
60302718:	e3510000 	cmp	r1, #0
6030271c:	13a03030 	movne	r3, #48	; 0x30
60302720:	154b3001 	strbne	r3, [fp, #-1]
60302724:	1242b002 	subne	fp, r2, #2
60302728:	e28d30e8 	add	r3, sp, #232	; 0xe8
6030272c:	e59d6004 	ldr	r6, [sp, #4]
60302730:	e043300b 	sub	r3, r3, fp
60302734:	e58d3004 	str	r3, [sp, #4]
60302738:	ea000063 	b	603028cc <_vfiprintf_r+0x7a0>
6030273c:	e1a0a005 	mov	sl, r5
60302740:	e3140010 	tst	r4, #16
60302744:	e49a6004 	ldr	r6, [sl], #4
60302748:	0a000002 	beq	60302758 <_vfiprintf_r+0x62c>
6030274c:	e1a05006 	mov	r5, r6
60302750:	e1a06fc6 	asr	r6, r6, #31
60302754:	eaffffd3 	b	603026a8 <_vfiprintf_r+0x57c>
60302758:	e3140040 	tst	r4, #64	; 0x40
6030275c:	16bf5076 	sxthne	r5, r6
60302760:	17a067d6 	sbfxne	r6, r6, #15, #1
60302764:	1affffcf 	bne	603026a8 <_vfiprintf_r+0x57c>
60302768:	e3140c02 	tst	r4, #512	; 0x200
6030276c:	16af5076 	sxtbne	r5, r6
60302770:	17a063d6 	sbfxne	r6, r6, #7, #1
60302774:	1affffcb 	bne	603026a8 <_vfiprintf_r+0x57c>
60302778:	eafffff3 	b	6030274c <_vfiprintf_r+0x620>
6030277c:	e285a004 	add	sl, r5, #4
60302780:	e3140020 	tst	r4, #32
60302784:	0a000006 	beq	603027a4 <_vfiprintf_r+0x678>
60302788:	e5953000 	ldr	r3, [r5]
6030278c:	e59d200c 	ldr	r2, [sp, #12]
60302790:	e59d100c 	ldr	r1, [sp, #12]
60302794:	e1a02fc2 	asr	r2, r2, #31
60302798:	e8830006 	stm	r3, {r1, r2}
6030279c:	e1a0500a 	mov	r5, sl
603027a0:	eafffeb5 	b	6030227c <_vfiprintf_r+0x150>
603027a4:	e3140010 	tst	r4, #16
603027a8:	0a000003 	beq	603027bc <_vfiprintf_r+0x690>
603027ac:	e5953000 	ldr	r3, [r5]
603027b0:	e59d200c 	ldr	r2, [sp, #12]
603027b4:	e5832000 	str	r2, [r3]
603027b8:	eafffff7 	b	6030279c <_vfiprintf_r+0x670>
603027bc:	e3140040 	tst	r4, #64	; 0x40
603027c0:	15953000 	ldrne	r3, [r5]
603027c4:	159d200c 	ldrne	r2, [sp, #12]
603027c8:	11c320b0 	strhne	r2, [r3]
603027cc:	1afffff2 	bne	6030279c <_vfiprintf_r+0x670>
603027d0:	e3140c02 	tst	r4, #512	; 0x200
603027d4:	15953000 	ldrne	r3, [r5]
603027d8:	159d200c 	ldrne	r2, [sp, #12]
603027dc:	15c32000 	strbne	r2, [r3]
603027e0:	1affffed 	bne	6030279c <_vfiprintf_r+0x670>
603027e4:	eafffff0 	b	603027ac <_vfiprintf_r+0x680>
603027e8:	e3844010 	orr	r4, r4, #16
603027ec:	e2143020 	ands	r3, r4, #32
603027f0:	0a000009 	beq	6030281c <_vfiprintf_r+0x6f0>
603027f4:	e2855007 	add	r5, r5, #7
603027f8:	e3c53007 	bic	r3, r5, #7
603027fc:	e1a0a003 	mov	sl, r3
60302800:	e5936004 	ldr	r6, [r3, #4]
60302804:	e49a5008 	ldr	r5, [sl], #8
60302808:	e3c44b01 	bic	r4, r4, #1024	; 0x400
6030280c:	e3a03000 	mov	r3, #0
60302810:	e3a02000 	mov	r2, #0
60302814:	e5cd2033 	strb	r2, [sp, #51]	; 0x33
60302818:	eaffffa9 	b	603026c4 <_vfiprintf_r+0x598>
6030281c:	e1a0a005 	mov	sl, r5
60302820:	e2146010 	ands	r6, r4, #16
60302824:	e49a5004 	ldr	r5, [sl], #4
60302828:	0a000001 	beq	60302834 <_vfiprintf_r+0x708>
6030282c:	e1a06003 	mov	r6, r3
60302830:	eafffff4 	b	60302808 <_vfiprintf_r+0x6dc>
60302834:	e2143040 	ands	r3, r4, #64	; 0x40
60302838:	16ff5075 	uxthne	r5, r5
6030283c:	1afffff1 	bne	60302808 <_vfiprintf_r+0x6dc>
60302840:	e2146c02 	ands	r6, r4, #512	; 0x200
60302844:	0affffef 	beq	60302808 <_vfiprintf_r+0x6dc>
60302848:	e6ef5075 	uxtb	r5, r5
6030284c:	eafffff6 	b	6030282c <_vfiprintf_r+0x700>
60302850:	e1a0a005 	mov	sl, r5
60302854:	e3073830 	movw	r3, #30768	; 0x7830
60302858:	e3a06000 	mov	r6, #0
6030285c:	e1cd33b4 	strh	r3, [sp, #52]	; 0x34
60302860:	e3844002 	orr	r4, r4, #2
60302864:	e59f3774 	ldr	r3, [pc, #1908]	; 60302fe0 <_vfiprintf_r+0xeb4>
60302868:	e49a5004 	ldr	r5, [sl], #4
6030286c:	e58d3018 	str	r3, [sp, #24]
60302870:	e3a03002 	mov	r3, #2
60302874:	eaffffe5 	b	60302810 <_vfiprintf_r+0x6e4>
60302878:	e1a0a005 	mov	sl, r5
6030287c:	e59d3004 	ldr	r3, [sp, #4]
60302880:	e3a05000 	mov	r5, #0
60302884:	e5cd5033 	strb	r5, [sp, #51]	; 0x33
60302888:	e3730001 	cmn	r3, #1
6030288c:	e49ab004 	ldr	fp, [sl], #4
60302890:	0a000009 	beq	603028bc <_vfiprintf_r+0x790>
60302894:	e1a02003 	mov	r2, r3
60302898:	e1a01005 	mov	r1, r5
6030289c:	e1a0000b 	mov	r0, fp
603028a0:	fa000946 	blx	60304dc0 <memchr>
603028a4:	e2503000 	subs	r3, r0, #0
603028a8:	1043300b 	subne	r3, r3, fp
603028ac:	158d3004 	strne	r3, [sp, #4]
603028b0:	1a000004 	bne	603028c8 <_vfiprintf_r+0x79c>
603028b4:	e1a06003 	mov	r6, r3
603028b8:	ea000003 	b	603028cc <_vfiprintf_r+0x7a0>
603028bc:	e1a0000b 	mov	r0, fp
603028c0:	fafffd8e 	blx	60301f00 <strlen>
603028c4:	e58d0004 	str	r0, [sp, #4]
603028c8:	e1a06005 	mov	r6, r5
603028cc:	e59d3004 	ldr	r3, [sp, #4]
603028d0:	e1560003 	cmp	r6, r3
603028d4:	a1a03006 	movge	r3, r6
603028d8:	e58d3014 	str	r3, [sp, #20]
603028dc:	e5dd3033 	ldrb	r3, [sp, #51]	; 0x33
603028e0:	e3530000 	cmp	r3, #0
603028e4:	159d3014 	ldrne	r3, [sp, #20]
603028e8:	12833001 	addne	r3, r3, #1
603028ec:	158d3014 	strne	r3, [sp, #20]
603028f0:	e2143002 	ands	r3, r4, #2
603028f4:	e58d3028 	str	r3, [sp, #40]	; 0x28
603028f8:	159d3014 	ldrne	r3, [sp, #20]
603028fc:	12833002 	addne	r3, r3, #2
60302900:	158d3014 	strne	r3, [sp, #20]
60302904:	e2143084 	ands	r3, r4, #132	; 0x84
60302908:	e58d302c 	str	r3, [sp, #44]	; 0x2c
6030290c:	1a00001a 	bne	6030297c <_vfiprintf_r+0x850>
60302910:	e59d3010 	ldr	r3, [sp, #16]
60302914:	e59d2014 	ldr	r2, [sp, #20]
60302918:	e0435002 	sub	r5, r3, r2
6030291c:	e3550000 	cmp	r5, #0
60302920:	da000015 	ble	6030297c <_vfiprintf_r+0x850>
60302924:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
60302928:	e2871008 	add	r1, r7, #8
6030292c:	e59f06b0 	ldr	r0, [pc, #1712]	; 60302fe4 <_vfiprintf_r+0xeb8>
60302930:	e3550010 	cmp	r5, #16
60302934:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
60302938:	e2833001 	add	r3, r3, #1
6030293c:	e5870000 	str	r0, [r7]
60302940:	ca0000d3 	bgt	60302c94 <_vfiprintf_r+0xb68>
60302944:	e3530007 	cmp	r3, #7
60302948:	e5875004 	str	r5, [r7, #4]
6030294c:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60302950:	e0855002 	add	r5, r5, r2
60302954:	d1a07001 	movle	r7, r1
60302958:	e58d5040 	str	r5, [sp, #64]	; 0x40
6030295c:	da000006 	ble	6030297c <_vfiprintf_r+0x850>
60302960:	e28d2038 	add	r2, sp, #56	; 0x38
60302964:	e1a01008 	mov	r1, r8
60302968:	e1a00009 	mov	r0, r9
6030296c:	ebfffdc4 	bl	60302084 <__sprint_r>
60302970:	e3500000 	cmp	r0, #0
60302974:	1a000127 	bne	60302e18 <_vfiprintf_r+0xcec>
60302978:	e28d7044 	add	r7, sp, #68	; 0x44
6030297c:	e5dd3033 	ldrb	r3, [sp, #51]	; 0x33
60302980:	e3530000 	cmp	r3, #0
60302984:	0a000013 	beq	603029d8 <_vfiprintf_r+0x8ac>
60302988:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
6030298c:	e28d2033 	add	r2, sp, #51	; 0x33
60302990:	e5872000 	str	r2, [r7]
60302994:	e3a02001 	mov	r2, #1
60302998:	e2833001 	add	r3, r3, #1
6030299c:	e5872004 	str	r2, [r7, #4]
603029a0:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
603029a4:	e3530007 	cmp	r3, #7
603029a8:	d2877008 	addle	r7, r7, #8
603029ac:	e58d303c 	str	r3, [sp, #60]	; 0x3c
603029b0:	e2822001 	add	r2, r2, #1
603029b4:	e58d2040 	str	r2, [sp, #64]	; 0x40
603029b8:	da000006 	ble	603029d8 <_vfiprintf_r+0x8ac>
603029bc:	e28d2038 	add	r2, sp, #56	; 0x38
603029c0:	e1a01008 	mov	r1, r8
603029c4:	e1a00009 	mov	r0, r9
603029c8:	ebfffdad 	bl	60302084 <__sprint_r>
603029cc:	e3500000 	cmp	r0, #0
603029d0:	1a000110 	bne	60302e18 <_vfiprintf_r+0xcec>
603029d4:	e28d7044 	add	r7, sp, #68	; 0x44
603029d8:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
603029dc:	e3530000 	cmp	r3, #0
603029e0:	0a000013 	beq	60302a34 <_vfiprintf_r+0x908>
603029e4:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
603029e8:	e28d2034 	add	r2, sp, #52	; 0x34
603029ec:	e5872000 	str	r2, [r7]
603029f0:	e3a02002 	mov	r2, #2
603029f4:	e2833001 	add	r3, r3, #1
603029f8:	e5872004 	str	r2, [r7, #4]
603029fc:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
60302a00:	e3530007 	cmp	r3, #7
60302a04:	d2877008 	addle	r7, r7, #8
60302a08:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60302a0c:	e2822002 	add	r2, r2, #2
60302a10:	e58d2040 	str	r2, [sp, #64]	; 0x40
60302a14:	da000006 	ble	60302a34 <_vfiprintf_r+0x908>
60302a18:	e28d2038 	add	r2, sp, #56	; 0x38
60302a1c:	e1a01008 	mov	r1, r8
60302a20:	e1a00009 	mov	r0, r9
60302a24:	ebfffd96 	bl	60302084 <__sprint_r>
60302a28:	e3500000 	cmp	r0, #0
60302a2c:	1a0000f9 	bne	60302e18 <_vfiprintf_r+0xcec>
60302a30:	e28d7044 	add	r7, sp, #68	; 0x44
60302a34:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
60302a38:	e3530080 	cmp	r3, #128	; 0x80
60302a3c:	1a00001a 	bne	60302aac <_vfiprintf_r+0x980>
60302a40:	e59d3010 	ldr	r3, [sp, #16]
60302a44:	e59d2014 	ldr	r2, [sp, #20]
60302a48:	e0435002 	sub	r5, r3, r2
60302a4c:	e3550000 	cmp	r5, #0
60302a50:	da000015 	ble	60302aac <_vfiprintf_r+0x980>
60302a54:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
60302a58:	e2871008 	add	r1, r7, #8
60302a5c:	e59f0584 	ldr	r0, [pc, #1412]	; 60302fe8 <_vfiprintf_r+0xebc>
60302a60:	e3550010 	cmp	r5, #16
60302a64:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
60302a68:	e2833001 	add	r3, r3, #1
60302a6c:	e5870000 	str	r0, [r7]
60302a70:	ca000098 	bgt	60302cd8 <_vfiprintf_r+0xbac>
60302a74:	e3530007 	cmp	r3, #7
60302a78:	e5875004 	str	r5, [r7, #4]
60302a7c:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60302a80:	e0855002 	add	r5, r5, r2
60302a84:	d1a07001 	movle	r7, r1
60302a88:	e58d5040 	str	r5, [sp, #64]	; 0x40
60302a8c:	da000006 	ble	60302aac <_vfiprintf_r+0x980>
60302a90:	e28d2038 	add	r2, sp, #56	; 0x38
60302a94:	e1a01008 	mov	r1, r8
60302a98:	e1a00009 	mov	r0, r9
60302a9c:	ebfffd78 	bl	60302084 <__sprint_r>
60302aa0:	e3500000 	cmp	r0, #0
60302aa4:	1a0000db 	bne	60302e18 <_vfiprintf_r+0xcec>
60302aa8:	e28d7044 	add	r7, sp, #68	; 0x44
60302aac:	e59d3004 	ldr	r3, [sp, #4]
60302ab0:	e0466003 	sub	r6, r6, r3
60302ab4:	e3560000 	cmp	r6, #0
60302ab8:	c59f5528 	ldrgt	r5, [pc, #1320]	; 60302fe8 <_vfiprintf_r+0xebc>
60302abc:	ca0000a6 	bgt	60302d5c <_vfiprintf_r+0xc30>
60302ac0:	e59d3004 	ldr	r3, [sp, #4]
60302ac4:	e59d0040 	ldr	r0, [sp, #64]	; 0x40
60302ac8:	e5873004 	str	r3, [r7, #4]
60302acc:	e0800003 	add	r0, r0, r3
60302ad0:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
60302ad4:	e587b000 	str	fp, [r7]
60302ad8:	e2833001 	add	r3, r3, #1
60302adc:	e58d0040 	str	r0, [sp, #64]	; 0x40
60302ae0:	e3530007 	cmp	r3, #7
60302ae4:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60302ae8:	d2877008 	addle	r7, r7, #8
60302aec:	da000006 	ble	60302b0c <_vfiprintf_r+0x9e0>
60302af0:	e28d2038 	add	r2, sp, #56	; 0x38
60302af4:	e1a01008 	mov	r1, r8
60302af8:	e1a00009 	mov	r0, r9
60302afc:	ebfffd60 	bl	60302084 <__sprint_r>
60302b00:	e3500000 	cmp	r0, #0
60302b04:	1a0000c3 	bne	60302e18 <_vfiprintf_r+0xcec>
60302b08:	e28d7044 	add	r7, sp, #68	; 0x44
60302b0c:	e3140004 	tst	r4, #4
60302b10:	1a0000a7 	bne	60302db4 <_vfiprintf_r+0xc88>
60302b14:	e59d300c 	ldr	r3, [sp, #12]
60302b18:	e59d2010 	ldr	r2, [sp, #16]
60302b1c:	e59d1014 	ldr	r1, [sp, #20]
60302b20:	e1520001 	cmp	r2, r1
60302b24:	a0833002 	addge	r3, r3, r2
60302b28:	b0833001 	addlt	r3, r3, r1
60302b2c:	e58d300c 	str	r3, [sp, #12]
60302b30:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
60302b34:	e3530000 	cmp	r3, #0
60302b38:	0a000005 	beq	60302b54 <_vfiprintf_r+0xa28>
60302b3c:	e28d2038 	add	r2, sp, #56	; 0x38
60302b40:	e1a01008 	mov	r1, r8
60302b44:	e1a00009 	mov	r0, r9
60302b48:	ebfffd4d 	bl	60302084 <__sprint_r>
60302b4c:	e3500000 	cmp	r0, #0
60302b50:	1a0000b0 	bne	60302e18 <_vfiprintf_r+0xcec>
60302b54:	e3a03000 	mov	r3, #0
60302b58:	e28d7044 	add	r7, sp, #68	; 0x44
60302b5c:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60302b60:	eaffff0d 	b	6030279c <_vfiprintf_r+0x670>
60302b64:	e3844010 	orr	r4, r4, #16
60302b68:	e2143020 	ands	r3, r4, #32
60302b6c:	0a000006 	beq	60302b8c <_vfiprintf_r+0xa60>
60302b70:	e2855007 	add	r5, r5, #7
60302b74:	e3c53007 	bic	r3, r5, #7
60302b78:	e1a0a003 	mov	sl, r3
60302b7c:	e5936004 	ldr	r6, [r3, #4]
60302b80:	e49a5008 	ldr	r5, [sl], #8
60302b84:	e3a03001 	mov	r3, #1
60302b88:	eaffff20 	b	60302810 <_vfiprintf_r+0x6e4>
60302b8c:	e1a0a005 	mov	sl, r5
60302b90:	e2146010 	ands	r6, r4, #16
60302b94:	e49a5004 	ldr	r5, [sl], #4
60302b98:	0a000001 	beq	60302ba4 <_vfiprintf_r+0xa78>
60302b9c:	e1a06003 	mov	r6, r3
60302ba0:	eafffff7 	b	60302b84 <_vfiprintf_r+0xa58>
60302ba4:	e2143040 	ands	r3, r4, #64	; 0x40
60302ba8:	16ff5075 	uxthne	r5, r5
60302bac:	1afffff4 	bne	60302b84 <_vfiprintf_r+0xa58>
60302bb0:	e2146c02 	ands	r6, r4, #512	; 0x200
60302bb4:	0afffff2 	beq	60302b84 <_vfiprintf_r+0xa58>
60302bb8:	e6ef5075 	uxtb	r5, r5
60302bbc:	eafffff6 	b	60302b9c <_vfiprintf_r+0xa70>
60302bc0:	e59f2424 	ldr	r2, [pc, #1060]	; 60302fec <_vfiprintf_r+0xec0>
60302bc4:	eafffe36 	b	603024a4 <_vfiprintf_r+0x378>
60302bc8:	e1a0a005 	mov	sl, r5
60302bcc:	e2146010 	ands	r6, r4, #16
60302bd0:	e49a5004 	ldr	r5, [sl], #4
60302bd4:	0a000001 	beq	60302be0 <_vfiprintf_r+0xab4>
60302bd8:	e1a06002 	mov	r6, r2
60302bdc:	eafffe38 	b	603024c4 <_vfiprintf_r+0x398>
60302be0:	e2142040 	ands	r2, r4, #64	; 0x40
60302be4:	16ff5075 	uxthne	r5, r5
60302be8:	1afffe35 	bne	603024c4 <_vfiprintf_r+0x398>
60302bec:	e2146c02 	ands	r6, r4, #512	; 0x200
60302bf0:	0afffe33 	beq	603024c4 <_vfiprintf_r+0x398>
60302bf4:	e6ef5075 	uxtb	r5, r5
60302bf8:	eafffff6 	b	60302bd8 <_vfiprintf_r+0xaac>
60302bfc:	e59d0004 	ldr	r0, [sp, #4]
60302c00:	e1852006 	orr	r2, r5, r6
60302c04:	e3c44080 	bic	r4, r4, #128	; 0x80
60302c08:	e3520000 	cmp	r2, #0
60302c0c:	03500000 	cmpeq	r0, #0
60302c10:	13a02001 	movne	r2, #1
60302c14:	03a02000 	moveq	r2, #0
60302c18:	1afffead 	bne	603026d4 <_vfiprintf_r+0x5a8>
60302c1c:	e3530000 	cmp	r3, #0
60302c20:	1a000011 	bne	60302c6c <_vfiprintf_r+0xb40>
60302c24:	e2112001 	ands	r2, r1, #1
60302c28:	e58d2004 	str	r2, [sp, #4]
60302c2c:	0a00000f 	beq	60302c70 <_vfiprintf_r+0xb44>
60302c30:	e3a02030 	mov	r2, #48	; 0x30
60302c34:	e58d3004 	str	r3, [sp, #4]
60302c38:	e5cd20e7 	strb	r2, [sp, #231]	; 0xe7
60302c3c:	e28db0e7 	add	fp, sp, #231	; 0xe7
60302c40:	eafffeb8 	b	60302728 <_vfiprintf_r+0x5fc>
60302c44:	e205300f 	and	r3, r5, #15
60302c48:	e59d2018 	ldr	r2, [sp, #24]
60302c4c:	e1a05225 	lsr	r5, r5, #4
60302c50:	e1855e06 	orr	r5, r5, r6, lsl #28
60302c54:	e1a06226 	lsr	r6, r6, #4
60302c58:	e7d23003 	ldrb	r3, [r2, r3]
60302c5c:	e56b3001 	strb	r3, [fp, #-1]!
60302c60:	e1953006 	orrs	r3, r5, r6
60302c64:	1afffff6 	bne	60302c44 <_vfiprintf_r+0xb18>
60302c68:	eafffeae 	b	60302728 <_vfiprintf_r+0x5fc>
60302c6c:	e58d2004 	str	r2, [sp, #4]
60302c70:	e28db0e8 	add	fp, sp, #232	; 0xe8
60302c74:	eafffeab 	b	60302728 <_vfiprintf_r+0x5fc>
60302c78:	e3530000 	cmp	r3, #0
60302c7c:	0a000081 	beq	60302e88 <_vfiprintf_r+0xd5c>
60302c80:	e3a0b000 	mov	fp, #0
60302c84:	e1a0a005 	mov	sl, r5
60302c88:	e5cd3084 	strb	r3, [sp, #132]	; 0x84
60302c8c:	e5cdb033 	strb	fp, [sp, #51]	; 0x33
60302c90:	eafffe77 	b	60302674 <_vfiprintf_r+0x548>
60302c94:	e3a00010 	mov	r0, #16
60302c98:	e3530007 	cmp	r3, #7
60302c9c:	e0822000 	add	r2, r2, r0
60302ca0:	e5870004 	str	r0, [r7, #4]
60302ca4:	e58d2040 	str	r2, [sp, #64]	; 0x40
60302ca8:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60302cac:	da000006 	ble	60302ccc <_vfiprintf_r+0xba0>
60302cb0:	e28d2038 	add	r2, sp, #56	; 0x38
60302cb4:	e1a01008 	mov	r1, r8
60302cb8:	e1a00009 	mov	r0, r9
60302cbc:	ebfffcf0 	bl	60302084 <__sprint_r>
60302cc0:	e3500000 	cmp	r0, #0
60302cc4:	1a000053 	bne	60302e18 <_vfiprintf_r+0xcec>
60302cc8:	e28d1044 	add	r1, sp, #68	; 0x44
60302ccc:	e2455010 	sub	r5, r5, #16
60302cd0:	e1a07001 	mov	r7, r1
60302cd4:	eaffff12 	b	60302924 <_vfiprintf_r+0x7f8>
60302cd8:	e3a00010 	mov	r0, #16
60302cdc:	e3530007 	cmp	r3, #7
60302ce0:	e0822000 	add	r2, r2, r0
60302ce4:	e5870004 	str	r0, [r7, #4]
60302ce8:	e58d2040 	str	r2, [sp, #64]	; 0x40
60302cec:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60302cf0:	da000006 	ble	60302d10 <_vfiprintf_r+0xbe4>
60302cf4:	e28d2038 	add	r2, sp, #56	; 0x38
60302cf8:	e1a01008 	mov	r1, r8
60302cfc:	e1a00009 	mov	r0, r9
60302d00:	ebfffcdf 	bl	60302084 <__sprint_r>
60302d04:	e3500000 	cmp	r0, #0
60302d08:	1a000042 	bne	60302e18 <_vfiprintf_r+0xcec>
60302d0c:	e28d1044 	add	r1, sp, #68	; 0x44
60302d10:	e2455010 	sub	r5, r5, #16
60302d14:	e1a07001 	mov	r7, r1
60302d18:	eaffff4d 	b	60302a54 <_vfiprintf_r+0x928>
60302d1c:	e3a00010 	mov	r0, #16
60302d20:	e3530007 	cmp	r3, #7
60302d24:	e0811000 	add	r1, r1, r0
60302d28:	e5870004 	str	r0, [r7, #4]
60302d2c:	e58d1040 	str	r1, [sp, #64]	; 0x40
60302d30:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60302d34:	da000006 	ble	60302d54 <_vfiprintf_r+0xc28>
60302d38:	e28d2038 	add	r2, sp, #56	; 0x38
60302d3c:	e1a01008 	mov	r1, r8
60302d40:	e1a00009 	mov	r0, r9
60302d44:	ebfffcce 	bl	60302084 <__sprint_r>
60302d48:	e3500000 	cmp	r0, #0
60302d4c:	1a000031 	bne	60302e18 <_vfiprintf_r+0xcec>
60302d50:	e28d2044 	add	r2, sp, #68	; 0x44
60302d54:	e2466010 	sub	r6, r6, #16
60302d58:	e1a07002 	mov	r7, r2
60302d5c:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
60302d60:	e2872008 	add	r2, r7, #8
60302d64:	e59d1040 	ldr	r1, [sp, #64]	; 0x40
60302d68:	e3560010 	cmp	r6, #16
60302d6c:	e2833001 	add	r3, r3, #1
60302d70:	e5875000 	str	r5, [r7]
60302d74:	caffffe8 	bgt	60302d1c <_vfiprintf_r+0xbf0>
60302d78:	e3530007 	cmp	r3, #7
60302d7c:	e0861001 	add	r1, r6, r1
60302d80:	e5876004 	str	r6, [r7, #4]
60302d84:	d1a07002 	movle	r7, r2
60302d88:	e58d1040 	str	r1, [sp, #64]	; 0x40
60302d8c:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60302d90:	daffff4a 	ble	60302ac0 <_vfiprintf_r+0x994>
60302d94:	e28d2038 	add	r2, sp, #56	; 0x38
60302d98:	e1a01008 	mov	r1, r8
60302d9c:	e1a00009 	mov	r0, r9
60302da0:	ebfffcb7 	bl	60302084 <__sprint_r>
60302da4:	e3500000 	cmp	r0, #0
60302da8:	1a00001a 	bne	60302e18 <_vfiprintf_r+0xcec>
60302dac:	e28d7044 	add	r7, sp, #68	; 0x44
60302db0:	eaffff42 	b	60302ac0 <_vfiprintf_r+0x994>
60302db4:	e59d3010 	ldr	r3, [sp, #16]
60302db8:	e59d2014 	ldr	r2, [sp, #20]
60302dbc:	e0434002 	sub	r4, r3, r2
60302dc0:	e3540000 	cmp	r4, #0
60302dc4:	c3a06010 	movgt	r6, #16
60302dc8:	c59f5214 	ldrgt	r5, [pc, #532]	; 60302fe4 <_vfiprintf_r+0xeb8>
60302dcc:	daffff50 	ble	60302b14 <_vfiprintf_r+0x9e8>
60302dd0:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
60302dd4:	e3540010 	cmp	r4, #16
60302dd8:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
60302ddc:	e2833001 	add	r3, r3, #1
60302de0:	e5875000 	str	r5, [r7]
60302de4:	ca000017 	bgt	60302e48 <_vfiprintf_r+0xd1c>
60302de8:	e5874004 	str	r4, [r7, #4]
60302dec:	e3530007 	cmp	r3, #7
60302df0:	e0844002 	add	r4, r4, r2
60302df4:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60302df8:	e58d4040 	str	r4, [sp, #64]	; 0x40
60302dfc:	daffff44 	ble	60302b14 <_vfiprintf_r+0x9e8>
60302e00:	e28d2038 	add	r2, sp, #56	; 0x38
60302e04:	e1a01008 	mov	r1, r8
60302e08:	e1a00009 	mov	r0, r9
60302e0c:	ebfffc9c 	bl	60302084 <__sprint_r>
60302e10:	e3500000 	cmp	r0, #0
60302e14:	0affff3e 	beq	60302b14 <_vfiprintf_r+0x9e8>
60302e18:	e5983064 	ldr	r3, [r8, #100]	; 0x64
60302e1c:	e3130001 	tst	r3, #1
60302e20:	1a000004 	bne	60302e38 <_vfiprintf_r+0xd0c>
60302e24:	e1d830bc 	ldrh	r3, [r8, #12]
60302e28:	e3130c02 	tst	r3, #512	; 0x200
60302e2c:	1a000001 	bne	60302e38 <_vfiprintf_r+0xd0c>
60302e30:	e5980058 	ldr	r0, [r8, #88]	; 0x58
60302e34:	ebfff92d 	bl	603012f0 <__retarget_lock_release_recursive>
60302e38:	e1d830bc 	ldrh	r3, [r8, #12]
60302e3c:	e3130040 	tst	r3, #64	; 0x40
60302e40:	0afffce5 	beq	603021dc <_vfiprintf_r+0xb0>
60302e44:	eafffce2 	b	603021d4 <_vfiprintf_r+0xa8>
60302e48:	e3530007 	cmp	r3, #7
60302e4c:	e2822010 	add	r2, r2, #16
60302e50:	e5876004 	str	r6, [r7, #4]
60302e54:	d2877008 	addle	r7, r7, #8
60302e58:	e58d2040 	str	r2, [sp, #64]	; 0x40
60302e5c:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60302e60:	da000006 	ble	60302e80 <_vfiprintf_r+0xd54>
60302e64:	e28d2038 	add	r2, sp, #56	; 0x38
60302e68:	e1a01008 	mov	r1, r8
60302e6c:	e1a00009 	mov	r0, r9
60302e70:	ebfffc83 	bl	60302084 <__sprint_r>
60302e74:	e3500000 	cmp	r0, #0
60302e78:	1affffe6 	bne	60302e18 <_vfiprintf_r+0xcec>
60302e7c:	e28d7044 	add	r7, sp, #68	; 0x44
60302e80:	e2444010 	sub	r4, r4, #16
60302e84:	eaffffd1 	b	60302dd0 <_vfiprintf_r+0xca4>
60302e88:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
60302e8c:	e3530000 	cmp	r3, #0
60302e90:	1a000002 	bne	60302ea0 <_vfiprintf_r+0xd74>
60302e94:	e3a03000 	mov	r3, #0
60302e98:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60302e9c:	eaffffdd 	b	60302e18 <_vfiprintf_r+0xcec>
60302ea0:	e28d2038 	add	r2, sp, #56	; 0x38
60302ea4:	e1a01008 	mov	r1, r8
60302ea8:	e1a00009 	mov	r0, r9
60302eac:	ebfffc74 	bl	60302084 <__sprint_r>
60302eb0:	e3500000 	cmp	r0, #0
60302eb4:	0afffff6 	beq	60302e94 <_vfiprintf_r+0xd68>
60302eb8:	eaffffd6 	b	60302e18 <_vfiprintf_r+0xcec>
60302ebc:	e59d3004 	ldr	r3, [sp, #4]
60302ec0:	e3730001 	cmn	r3, #1
60302ec4:	11a01004 	movne	r1, r4
60302ec8:	13a03001 	movne	r3, #1
60302ecc:	1affff4a 	bne	60302bfc <_vfiprintf_r+0xad0>
60302ed0:	e355000a 	cmp	r5, #10
60302ed4:	e2d63000 	sbcs	r3, r6, #0
60302ed8:	32855030 	addcc	r5, r5, #48	; 0x30
60302edc:	35cd50e7 	strbcc	r5, [sp, #231]	; 0xe7
60302ee0:	3affff55 	bcc	60302c3c <_vfiprintf_r+0xb10>
60302ee4:	e3a03000 	mov	r3, #0
60302ee8:	e58d3014 	str	r3, [sp, #20]
60302eec:	e28d30e8 	add	r3, sp, #232	; 0xe8
60302ef0:	e58d3028 	str	r3, [sp, #40]	; 0x28
60302ef4:	e2043b01 	and	r3, r4, #1024	; 0x400
60302ef8:	e58d302c 	str	r3, [sp, #44]	; 0x2c
60302efc:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
60302f00:	e3a0200a 	mov	r2, #10
60302f04:	e1a00005 	mov	r0, r5
60302f08:	e1a01006 	mov	r1, r6
60302f0c:	e243b001 	sub	fp, r3, #1
60302f10:	e3a03000 	mov	r3, #0
60302f14:	ebfff66e 	bl	603008d4 <__aeabi_uldivmod>
60302f18:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
60302f1c:	e2822030 	add	r2, r2, #48	; 0x30
60302f20:	e5432001 	strb	r2, [r3, #-1]
60302f24:	e59d3014 	ldr	r3, [sp, #20]
60302f28:	e2833001 	add	r3, r3, #1
60302f2c:	e58d3014 	str	r3, [sp, #20]
60302f30:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
60302f34:	e3530000 	cmp	r3, #0
60302f38:	0a00001c 	beq	60302fb0 <_vfiprintf_r+0xe84>
60302f3c:	e59d301c 	ldr	r3, [sp, #28]
60302f40:	e355000a 	cmp	r5, #10
60302f44:	e59d1014 	ldr	r1, [sp, #20]
60302f48:	e5d32000 	ldrb	r2, [r3]
60302f4c:	e2d63000 	sbcs	r3, r6, #0
60302f50:	23a03001 	movcs	r3, #1
60302f54:	33a03000 	movcc	r3, #0
60302f58:	e35200ff 	cmp	r2, #255	; 0xff
60302f5c:	03a03000 	moveq	r3, #0
60302f60:	12033001 	andne	r3, r3, #1
60302f64:	e1520001 	cmp	r2, r1
60302f68:	13a03000 	movne	r3, #0
60302f6c:	02033001 	andeq	r3, r3, #1
60302f70:	e3530000 	cmp	r3, #0
60302f74:	0a00000d 	beq	60302fb0 <_vfiprintf_r+0xe84>
60302f78:	e59d3020 	ldr	r3, [sp, #32]
60302f7c:	e59d1024 	ldr	r1, [sp, #36]	; 0x24
60302f80:	e04bb003 	sub	fp, fp, r3
60302f84:	e1a02003 	mov	r2, r3
60302f88:	e1a0000b 	mov	r0, fp
60302f8c:	ebfffc12 	bl	60301fdc <strncpy>
60302f90:	e59d301c 	ldr	r3, [sp, #28]
60302f94:	e5d33001 	ldrb	r3, [r3, #1]
60302f98:	e3530000 	cmp	r3, #0
60302f9c:	159d301c 	ldrne	r3, [sp, #28]
60302fa0:	12833001 	addne	r3, r3, #1
60302fa4:	158d301c 	strne	r3, [sp, #28]
60302fa8:	13a03000 	movne	r3, #0
60302fac:	e58d3014 	str	r3, [sp, #20]
60302fb0:	e3a03000 	mov	r3, #0
60302fb4:	e3a0200a 	mov	r2, #10
60302fb8:	e1a00005 	mov	r0, r5
60302fbc:	e1a01006 	mov	r1, r6
60302fc0:	ebfff643 	bl	603008d4 <__aeabi_uldivmod>
60302fc4:	e355000a 	cmp	r5, #10
60302fc8:	e2d63000 	sbcs	r3, r6, #0
60302fcc:	3afffdd5 	bcc	60302728 <_vfiprintf_r+0x5fc>
60302fd0:	e1a05000 	mov	r5, r0
60302fd4:	e1a06001 	mov	r6, r1
60302fd8:	e58db028 	str	fp, [sp, #40]	; 0x28
60302fdc:	eaffffc6 	b	60302efc <_vfiprintf_r+0xdd0>
60302fe0:	603159c5 	.word	0x603159c5
60302fe4:	60313f5c 	.word	0x60313f5c
60302fe8:	60313f6c 	.word	0x60313f6c
60302fec:	603159b4 	.word	0x603159b4

60302ff0 <vfiprintf>:
60302ff0:	e1a03002 	mov	r3, r2
60302ff4:	e1a02001 	mov	r2, r1
60302ff8:	e1a01000 	mov	r1, r0
60302ffc:	e59f0004 	ldr	r0, [pc, #4]	; 60303008 <vfiprintf+0x18>
60303000:	e5900000 	ldr	r0, [r0]
60303004:	eafffc48 	b	6030212c <_vfiprintf_r>
60303008:	60316000 	.word	0x60316000

6030300c <__sbprintf>:
6030300c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60303010:	e1a08003 	mov	r8, r3
60303014:	e1d130bc 	ldrh	r3, [r1, #12]
60303018:	e24dde46 	sub	sp, sp, #1120	; 0x460
6030301c:	e1a05002 	mov	r5, r2
60303020:	e24dd008 	sub	sp, sp, #8
60303024:	e3c33002 	bic	r3, r3, #2
60303028:	e1a0700d 	mov	r7, sp
6030302c:	e1a06000 	mov	r6, r0
60303030:	e28d0058 	add	r0, sp, #88	; 0x58
60303034:	e1a04001 	mov	r4, r1
60303038:	e1c730bc 	strh	r3, [r7, #12]
6030303c:	e5913064 	ldr	r3, [r1, #100]	; 0x64
60303040:	e58d3064 	str	r3, [sp, #100]	; 0x64
60303044:	e1d130be 	ldrh	r3, [r1, #14]
60303048:	e1c730be 	strh	r3, [r7, #14]
6030304c:	e5913020 	ldr	r3, [r1, #32]
60303050:	e58d3020 	str	r3, [sp, #32]
60303054:	e5913028 	ldr	r3, [r1, #40]	; 0x28
60303058:	e58d3028 	str	r3, [sp, #40]	; 0x28
6030305c:	e28d3068 	add	r3, sp, #104	; 0x68
60303060:	e58d3000 	str	r3, [sp]
60303064:	e58d3010 	str	r3, [sp, #16]
60303068:	e3a03b01 	mov	r3, #1024	; 0x400
6030306c:	e58d3008 	str	r3, [sp, #8]
60303070:	e58d3014 	str	r3, [sp, #20]
60303074:	e3a03000 	mov	r3, #0
60303078:	e58d3018 	str	r3, [sp, #24]
6030307c:	ebfff891 	bl	603012c8 <__retarget_lock_init_recursive>
60303080:	e1a02005 	mov	r2, r5
60303084:	e1a03008 	mov	r3, r8
60303088:	e1a01007 	mov	r1, r7
6030308c:	e1a00006 	mov	r0, r6
60303090:	ebfffc25 	bl	6030212c <_vfiprintf_r>
60303094:	e2505000 	subs	r5, r0, #0
60303098:	ba000004 	blt	603030b0 <__sbprintf+0xa4>
6030309c:	e1a01007 	mov	r1, r7
603030a0:	e1a00006 	mov	r0, r6
603030a4:	ebfff6fd 	bl	60300ca0 <_fflush_r>
603030a8:	e3500000 	cmp	r0, #0
603030ac:	13e05000 	mvnne	r5, #0
603030b0:	e1dd30bc 	ldrh	r3, [sp, #12]
603030b4:	e59d0058 	ldr	r0, [sp, #88]	; 0x58
603030b8:	e3130040 	tst	r3, #64	; 0x40
603030bc:	11d430bc 	ldrhne	r3, [r4, #12]
603030c0:	13833040 	orrne	r3, r3, #64	; 0x40
603030c4:	11c430bc 	strhne	r3, [r4, #12]
603030c8:	ebfff880 	bl	603012d0 <__retarget_lock_close_recursive>
603030cc:	e1a00005 	mov	r0, r5
603030d0:	e28dde46 	add	sp, sp, #1120	; 0x460
603030d4:	e28dd008 	add	sp, sp, #8
603030d8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

603030dc <vprintf>:
603030dc:	e1a03001 	mov	r3, r1
603030e0:	e59f100c 	ldr	r1, [pc, #12]	; 603030f4 <vprintf+0x18>
603030e4:	e1a02000 	mov	r2, r0
603030e8:	e5910000 	ldr	r0, [r1]
603030ec:	e5901008 	ldr	r1, [r0, #8]
603030f0:	ea000bb4 	b	60305fc8 <_vfprintf_r>
603030f4:	60316000 	.word	0x60316000

603030f8 <_vprintf_r>:
603030f8:	e1a03002 	mov	r3, r2
603030fc:	e1a02001 	mov	r2, r1
60303100:	e5901008 	ldr	r1, [r0, #8]
60303104:	ea000baf 	b	60305fc8 <_vfprintf_r>

60303108 <_write_r>:
60303108:	e92d4070 	push	{r4, r5, r6, lr}
6030310c:	e1a04000 	mov	r4, r0
60303110:	e59f502c 	ldr	r5, [pc, #44]	; 60303144 <_write_r+0x3c>
60303114:	e1a00001 	mov	r0, r1
60303118:	e1a01002 	mov	r1, r2
6030311c:	e3a02000 	mov	r2, #0
60303120:	e5852000 	str	r2, [r5]
60303124:	e1a02003 	mov	r2, r3
60303128:	eb0016a7 	bl	60308bcc <_write>
6030312c:	e3700001 	cmn	r0, #1
60303130:	18bd8070 	popne	{r4, r5, r6, pc}
60303134:	e5953000 	ldr	r3, [r5]
60303138:	e3530000 	cmp	r3, #0
6030313c:	15843000 	strne	r3, [r4]
60303140:	e8bd8070 	pop	{r4, r5, r6, pc}
60303144:	60323160 	.word	0x60323160

60303148 <__swsetup_r>:
60303148:	e59f3124 	ldr	r3, [pc, #292]	; 60303274 <__swsetup_r+0x12c>
6030314c:	e92d4070 	push	{r4, r5, r6, lr}
60303150:	e1a05000 	mov	r5, r0
60303154:	e1a04001 	mov	r4, r1
60303158:	e5930000 	ldr	r0, [r3]
6030315c:	e3500000 	cmp	r0, #0
60303160:	0a000003 	beq	60303174 <__swsetup_r+0x2c>
60303164:	e5903018 	ldr	r3, [r0, #24]
60303168:	e3530000 	cmp	r3, #0
6030316c:	1a000000 	bne	60303174 <__swsetup_r+0x2c>
60303170:	ebfff772 	bl	60300f40 <__sinit>
60303174:	e1d430bc 	ldrh	r3, [r4, #12]
60303178:	e1d420fc 	ldrsh	r2, [r4, #12]
6030317c:	e3130008 	tst	r3, #8
60303180:	1a000019 	bne	603031ec <__swsetup_r+0xa4>
60303184:	e3130010 	tst	r3, #16
60303188:	03a03009 	moveq	r3, #9
6030318c:	05853000 	streq	r3, [r5]
60303190:	0a00002d 	beq	6030324c <__swsetup_r+0x104>
60303194:	e3130004 	tst	r3, #4
60303198:	0a000010 	beq	603031e0 <__swsetup_r+0x98>
6030319c:	e5941034 	ldr	r1, [r4, #52]	; 0x34
603031a0:	e3510000 	cmp	r1, #0
603031a4:	0a000006 	beq	603031c4 <__swsetup_r+0x7c>
603031a8:	e2843044 	add	r3, r4, #68	; 0x44
603031ac:	e1510003 	cmp	r1, r3
603031b0:	0a000001 	beq	603031bc <__swsetup_r+0x74>
603031b4:	e1a00005 	mov	r0, r5
603031b8:	eb00158b 	bl	603087ec <__wrap__free_r>
603031bc:	e3a03000 	mov	r3, #0
603031c0:	e5843034 	str	r3, [r4, #52]	; 0x34
603031c4:	e1d430bc 	ldrh	r3, [r4, #12]
603031c8:	e3c33024 	bic	r3, r3, #36	; 0x24
603031cc:	e1c430bc 	strh	r3, [r4, #12]
603031d0:	e3a03000 	mov	r3, #0
603031d4:	e5843004 	str	r3, [r4, #4]
603031d8:	e5943010 	ldr	r3, [r4, #16]
603031dc:	e5843000 	str	r3, [r4]
603031e0:	e1d430bc 	ldrh	r3, [r4, #12]
603031e4:	e3833008 	orr	r3, r3, #8
603031e8:	e1c430bc 	strh	r3, [r4, #12]
603031ec:	e5943010 	ldr	r3, [r4, #16]
603031f0:	e3530000 	cmp	r3, #0
603031f4:	1a000006 	bne	60303214 <__swsetup_r+0xcc>
603031f8:	e1d430bc 	ldrh	r3, [r4, #12]
603031fc:	e2033d0a 	and	r3, r3, #640	; 0x280
60303200:	e3530c02 	cmp	r3, #512	; 0x200
60303204:	0a000002 	beq	60303214 <__swsetup_r+0xcc>
60303208:	e1a01004 	mov	r1, r4
6030320c:	e1a00005 	mov	r0, r5
60303210:	eb00069d 	bl	60304c8c <__smakebuf_r>
60303214:	e1d400bc 	ldrh	r0, [r4, #12]
60303218:	e1d420fc 	ldrsh	r2, [r4, #12]
6030321c:	e2103001 	ands	r3, r0, #1
60303220:	0a00000d 	beq	6030325c <__swsetup_r+0x114>
60303224:	e3a03000 	mov	r3, #0
60303228:	e5843008 	str	r3, [r4, #8]
6030322c:	e5943014 	ldr	r3, [r4, #20]
60303230:	e2633000 	rsb	r3, r3, #0
60303234:	e5843018 	str	r3, [r4, #24]
60303238:	e5943010 	ldr	r3, [r4, #16]
6030323c:	e3530000 	cmp	r3, #0
60303240:	1a000009 	bne	6030326c <__swsetup_r+0x124>
60303244:	e2100080 	ands	r0, r0, #128	; 0x80
60303248:	08bd8070 	popeq	{r4, r5, r6, pc}
6030324c:	e3823040 	orr	r3, r2, #64	; 0x40
60303250:	e3e00000 	mvn	r0, #0
60303254:	e1c430bc 	strh	r3, [r4, #12]
60303258:	e8bd8070 	pop	{r4, r5, r6, pc}
6030325c:	e3100002 	tst	r0, #2
60303260:	05943014 	ldreq	r3, [r4, #20]
60303264:	e5843008 	str	r3, [r4, #8]
60303268:	eafffff2 	b	60303238 <__swsetup_r+0xf0>
6030326c:	e3a00000 	mov	r0, #0
60303270:	e8bd8070 	pop	{r4, r5, r6, pc}
60303274:	60316000 	.word	0x60316000

60303278 <abort>:
60303278:	e3a00006 	mov	r0, #6
6030327c:	e92d4010 	push	{r4, lr}
60303280:	eb000b2c 	bl	60305f38 <raise>
60303284:	e3a00001 	mov	r0, #1
60303288:	eb001450 	bl	603083d0 <_exit>

6030328c <_close_r>:
6030328c:	e92d4070 	push	{r4, r5, r6, lr}
60303290:	e1a04000 	mov	r4, r0
60303294:	e59f5024 	ldr	r5, [pc, #36]	; 603032c0 <_close_r+0x34>
60303298:	e1a00001 	mov	r0, r1
6030329c:	e3a03000 	mov	r3, #0
603032a0:	e5853000 	str	r3, [r5]
603032a4:	eb001654 	bl	60308bfc <_close>
603032a8:	e3700001 	cmn	r0, #1
603032ac:	18bd8070 	popne	{r4, r5, r6, pc}
603032b0:	e5953000 	ldr	r3, [r5]
603032b4:	e3530000 	cmp	r3, #0
603032b8:	15843000 	strne	r3, [r4]
603032bc:	e8bd8070 	pop	{r4, r5, r6, pc}
603032c0:	60323160 	.word	0x60323160
603032c4:	00000000 	.word	0x00000000

603032c8 <quorem>:
603032c8:	e5903010 	ldr	r3, [r0, #16]
603032cc:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
603032d0:	e5914010 	ldr	r4, [r1, #16]
603032d4:	e24dd014 	sub	sp, sp, #20
603032d8:	e1530004 	cmp	r3, r4
603032dc:	b3a00000 	movlt	r0, #0
603032e0:	ba00004d 	blt	6030341c <quorem+0x154>
603032e4:	e2444001 	sub	r4, r4, #1
603032e8:	e2806014 	add	r6, r0, #20
603032ec:	e2818014 	add	r8, r1, #20
603032f0:	e1a0a001 	mov	sl, r1
603032f4:	e0863104 	add	r3, r6, r4, lsl #2
603032f8:	e58d3004 	str	r3, [sp, #4]
603032fc:	e7963104 	ldr	r3, [r6, r4, lsl #2]
60303300:	e1a07000 	mov	r7, r0
60303304:	e7981104 	ldr	r1, [r8, r4, lsl #2]
60303308:	e1a0b104 	lsl	fp, r4, #2
6030330c:	e1a00003 	mov	r0, r3
60303310:	e58d3008 	str	r3, [sp, #8]
60303314:	e2811001 	add	r1, r1, #1
60303318:	e58d100c 	str	r1, [sp, #12]
6030331c:	eb0013ba 	bl	6030820c <__udivsi3>
60303320:	e59d3008 	ldr	r3, [sp, #8]
60303324:	e59d100c 	ldr	r1, [sp, #12]
60303328:	e0889104 	add	r9, r8, r4, lsl #2
6030332c:	e1a05000 	mov	r5, r0
60303330:	e1530001 	cmp	r3, r1
60303334:	3a00001c 	bcc	603033ac <quorem+0xe4>
60303338:	e3a0c000 	mov	ip, #0
6030333c:	e1a01008 	mov	r1, r8
60303340:	e1a00006 	mov	r0, r6
60303344:	e1a0e00c 	mov	lr, ip
60303348:	e4912004 	ldr	r2, [r1], #4
6030334c:	e1590001 	cmp	r9, r1
60303350:	e6ff3072 	uxth	r3, r2
60303354:	e1a02822 	lsr	r2, r2, #16
60303358:	e023c395 	mla	r3, r5, r3, ip
6030335c:	e1a0c823 	lsr	ip, r3, #16
60303360:	e6ff3073 	uxth	r3, r3
60303364:	e04e3003 	sub	r3, lr, r3
60303368:	e590e000 	ldr	lr, [r0]
6030336c:	e022c295 	mla	r2, r5, r2, ip
60303370:	e6f3307e 	uxtah	r3, r3, lr
60303374:	e1a0c822 	lsr	ip, r2, #16
60303378:	e6ff2072 	uxth	r2, r2
6030337c:	e062282e 	rsb	r2, r2, lr, lsr #16
60303380:	e0822843 	add	r2, r2, r3, asr #16
60303384:	e6ff3073 	uxth	r3, r3
60303388:	e1833802 	orr	r3, r3, r2, lsl #16
6030338c:	e1a0e842 	asr	lr, r2, #16
60303390:	e4803004 	str	r3, [r0], #4
60303394:	2affffeb 	bcs	60303348 <quorem+0x80>
60303398:	e796300b 	ldr	r3, [r6, fp]
6030339c:	e3530000 	cmp	r3, #0
603033a0:	059d3004 	ldreq	r3, [sp, #4]
603033a4:	02433004 	subeq	r3, r3, #4
603033a8:	0a000022 	beq	60303438 <quorem+0x170>
603033ac:	e1a0100a 	mov	r1, sl
603033b0:	e1a00007 	mov	r0, r7
603033b4:	eb0008d9 	bl	60305720 <__mcmp>
603033b8:	e3500000 	cmp	r0, #0
603033bc:	ba000015 	blt	60303418 <quorem+0x150>
603033c0:	e2855001 	add	r5, r5, #1
603033c4:	e1a00006 	mov	r0, r6
603033c8:	e3a0c000 	mov	ip, #0
603033cc:	e4981004 	ldr	r1, [r8], #4
603033d0:	e590e000 	ldr	lr, [r0]
603033d4:	e1590008 	cmp	r9, r8
603033d8:	e6ff3071 	uxth	r3, r1
603033dc:	e1a02821 	lsr	r2, r1, #16
603033e0:	e04c3003 	sub	r3, ip, r3
603033e4:	e062282e 	rsb	r2, r2, lr, lsr #16
603033e8:	e6f3307e 	uxtah	r3, r3, lr
603033ec:	e0822843 	add	r2, r2, r3, asr #16
603033f0:	e6ff3073 	uxth	r3, r3
603033f4:	e1833802 	orr	r3, r3, r2, lsl #16
603033f8:	e1a0c842 	asr	ip, r2, #16
603033fc:	e4803004 	str	r3, [r0], #4
60303400:	2afffff1 	bcs	603033cc <quorem+0x104>
60303404:	e7962104 	ldr	r2, [r6, r4, lsl #2]
60303408:	e0863104 	add	r3, r6, r4, lsl #2
6030340c:	e3520000 	cmp	r2, #0
60303410:	02433004 	subeq	r3, r3, #4
60303414:	0a000011 	beq	60303460 <quorem+0x198>
60303418:	e1a00005 	mov	r0, r5
6030341c:	e28dd014 	add	sp, sp, #20
60303420:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
60303424:	e5922000 	ldr	r2, [r2]
60303428:	e2433004 	sub	r3, r3, #4
6030342c:	e3520000 	cmp	r2, #0
60303430:	1a000003 	bne	60303444 <quorem+0x17c>
60303434:	e2444001 	sub	r4, r4, #1
60303438:	e1a02003 	mov	r2, r3
6030343c:	e1560003 	cmp	r6, r3
60303440:	3afffff7 	bcc	60303424 <quorem+0x15c>
60303444:	e5874010 	str	r4, [r7, #16]
60303448:	eaffffd7 	b	603033ac <quorem+0xe4>
6030344c:	e5922000 	ldr	r2, [r2]
60303450:	e2433004 	sub	r3, r3, #4
60303454:	e3520000 	cmp	r2, #0
60303458:	1a000003 	bne	6030346c <quorem+0x1a4>
6030345c:	e2444001 	sub	r4, r4, #1
60303460:	e1a02003 	mov	r2, r3
60303464:	e1560003 	cmp	r6, r3
60303468:	3afffff7 	bcc	6030344c <quorem+0x184>
6030346c:	e5874010 	str	r4, [r7, #16]
60303470:	eaffffe8 	b	60303418 <quorem+0x150>

60303474 <_dtoa_r>:
60303474:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
60303478:	ec576b10 	vmov	r6, r7, d0
6030347c:	e5908024 	ldr	r8, [r0, #36]	; 0x24
60303480:	ed2d8b02 	vpush	{d8}
60303484:	e24dd044 	sub	sp, sp, #68	; 0x44
60303488:	e1a05000 	mov	r5, r0
6030348c:	e3580000 	cmp	r8, #0
60303490:	e59d4070 	ldr	r4, [sp, #112]	; 0x70
60303494:	e58d101c 	str	r1, [sp, #28]
60303498:	e58d2024 	str	r2, [sp, #36]	; 0x24
6030349c:	e58d3030 	str	r3, [sp, #48]	; 0x30
603034a0:	ed8d0b02 	vstr	d0, [sp, #8]
603034a4:	1a00000b 	bne	603034d8 <_dtoa_r+0x64>
603034a8:	e3a00010 	mov	r0, #16
603034ac:	eb0014c8 	bl	603087d4 <__wrap_malloc>
603034b0:	e3500000 	cmp	r0, #0
603034b4:	e1a02000 	mov	r2, r0
603034b8:	03a010ea 	moveq	r1, #234	; 0xea
603034bc:	e5850024 	str	r0, [r5, #36]	; 0x24
603034c0:	059f33c0 	ldreq	r3, [pc, #960]	; 60303888 <_dtoa_r+0x414>
603034c4:	0a0000d3 	beq	60303818 <_dtoa_r+0x3a4>
603034c8:	e5808004 	str	r8, [r0, #4]
603034cc:	e5808008 	str	r8, [r0, #8]
603034d0:	e5808000 	str	r8, [r0]
603034d4:	e580800c 	str	r8, [r0, #12]
603034d8:	e5953024 	ldr	r3, [r5, #36]	; 0x24
603034dc:	e5931000 	ldr	r1, [r3]
603034e0:	e3510000 	cmp	r1, #0
603034e4:	0a000009 	beq	60303510 <_dtoa_r+0x9c>
603034e8:	e5932004 	ldr	r2, [r3, #4]
603034ec:	e3a03001 	mov	r3, #1
603034f0:	e5812004 	str	r2, [r1, #4]
603034f4:	e1a00005 	mov	r0, r5
603034f8:	e1a03213 	lsl	r3, r3, r2
603034fc:	e5813008 	str	r3, [r1, #8]
60303500:	eb0006a1 	bl	60304f8c <_Bfree>
60303504:	e5953024 	ldr	r3, [r5, #36]	; 0x24
60303508:	e3a02000 	mov	r2, #0
6030350c:	e5832000 	str	r2, [r3]
60303510:	e2573000 	subs	r3, r7, #0
60303514:	b3c33102 	biclt	r3, r3, #-2147483648	; 0x80000000
60303518:	b58d300c 	strlt	r3, [sp, #12]
6030351c:	a3a03000 	movge	r3, #0
60303520:	b3a02001 	movlt	r2, #1
60303524:	a5843000 	strge	r3, [r4]
60303528:	b5842000 	strlt	r2, [r4]
6030352c:	e59f3358 	ldr	r3, [pc, #856]	; 6030388c <_dtoa_r+0x418>
60303530:	e59d400c 	ldr	r4, [sp, #12]
60303534:	e1d33004 	bics	r3, r3, r4
60303538:	1a000011 	bne	60303584 <_dtoa_r+0x110>
6030353c:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
60303540:	e302370f 	movw	r3, #9999	; 0x270f
60303544:	e5823000 	str	r3, [r2]
60303548:	e7f33054 	ubfx	r3, r4, #0, #20
6030354c:	e1933006 	orrs	r3, r3, r6
60303550:	0a00039c 	beq	603043c8 <_dtoa_r+0xf54>
60303554:	e59d3074 	ldr	r3, [sp, #116]	; 0x74
60303558:	e3530000 	cmp	r3, #0
6030355c:	e59f332c 	ldr	r3, [pc, #812]	; 60303890 <_dtoa_r+0x41c>
60303560:	e58d3004 	str	r3, [sp, #4]
60303564:	0a000002 	beq	60303574 <_dtoa_r+0x100>
60303568:	e2833003 	add	r3, r3, #3
6030356c:	e59d2074 	ldr	r2, [sp, #116]	; 0x74
60303570:	e5823000 	str	r3, [r2]
60303574:	e59d0004 	ldr	r0, [sp, #4]
60303578:	e28dd044 	add	sp, sp, #68	; 0x44
6030357c:	ecbd8b02 	vpop	{d8}
60303580:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
60303584:	ed9d8b02 	vldr	d8, [sp, #8]
60303588:	eeb58b40 	vcmp.f64	d8, #0.0
6030358c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60303590:	1a00000a 	bne	603035c0 <_dtoa_r+0x14c>
60303594:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
60303598:	e3a03001 	mov	r3, #1
6030359c:	e5823000 	str	r3, [r2]
603035a0:	e59d3074 	ldr	r3, [sp, #116]	; 0x74
603035a4:	e3530000 	cmp	r3, #0
603035a8:	059f32e4 	ldreq	r3, [pc, #740]	; 60303894 <_dtoa_r+0x420>
603035ac:	159f02e4 	ldrne	r0, [pc, #740]	; 60303898 <_dtoa_r+0x424>
603035b0:	15830000 	strne	r0, [r3]
603035b4:	12403001 	subne	r3, r0, #1
603035b8:	e58d3004 	str	r3, [sp, #4]
603035bc:	eaffffec 	b	60303574 <_dtoa_r+0x100>
603035c0:	e28d103c 	add	r1, sp, #60	; 0x3c
603035c4:	eeb00b48 	vmov.f64	d0, d8
603035c8:	e28d2038 	add	r2, sp, #56	; 0x38
603035cc:	e1a00005 	mov	r0, r5
603035d0:	eb000911 	bl	60305a1c <__d2b>
603035d4:	e7ea1a54 	ubfx	r1, r4, #20, #11
603035d8:	e1a0b000 	mov	fp, r0
603035dc:	e3510000 	cmp	r1, #0
603035e0:	e59d0038 	ldr	r0, [sp, #56]	; 0x38
603035e4:	0a000047 	beq	60303708 <_dtoa_r+0x294>
603035e8:	ee18ca90 	vmov	ip, s17
603035ec:	ec532b18 	vmov	r2, r3, d8
603035f0:	e2411fff 	sub	r1, r1, #1020	; 0x3fc
603035f4:	e3a06000 	mov	r6, #0
603035f8:	e2411003 	sub	r1, r1, #3
603035fc:	e7f3c05c 	ubfx	ip, ip, #0, #20
60303600:	e38c35ff 	orr	r3, ip, #1069547520	; 0x3fc00000
60303604:	e3833603 	orr	r3, r3, #3145728	; 0x300000
60303608:	ec432b31 	vmov	d17, r2, r3
6030360c:	eef70b08 	vmov.f64	d16, #120	; 0x3fc00000  1.5
60303610:	eddf2b96 	vldr	d18, [pc, #600]	; 60303870 <_dtoa_r+0x3fc>
60303614:	ee071a90 	vmov	s15, r1
60303618:	ee710be0 	vsub.f64	d16, d17, d16
6030361c:	eddf1b95 	vldr	d17, [pc, #596]	; 60303878 <_dtoa_r+0x404>
60303620:	eddf3b96 	vldr	d19, [pc, #600]	; 60303880 <_dtoa_r+0x40c>
60303624:	ee401ba2 	vmla.f64	d17, d16, d18
60303628:	eef82be7 	vcvt.f64.s32	d18, s15
6030362c:	eef00b61 	vmov.f64	d16, d17
60303630:	ee420ba3 	vmla.f64	d16, d18, d19
60303634:	eef50bc0 	vcmpe.f64	d16, #0.0
60303638:	eefd7be0 	vcvt.s32.f64	s15, d16
6030363c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60303640:	ee17aa90 	vmov	sl, s15
60303644:	5a000003 	bpl	60303658 <_dtoa_r+0x1e4>
60303648:	eef81be7 	vcvt.f64.s32	d17, s15
6030364c:	eef41b60 	vcmp.f64	d17, d16
60303650:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60303654:	124aa001 	subne	sl, sl, #1
60303658:	e35a0016 	cmp	sl, #22
6030365c:	83a03001 	movhi	r3, #1
60303660:	8a000006 	bhi	60303680 <_dtoa_r+0x20c>
60303664:	e59f3238 	ldr	r3, [pc, #568]	; 603038a4 <_dtoa_r+0x430>
60303668:	e083318a 	add	r3, r3, sl, lsl #3
6030366c:	edd30b00 	vldr	d16, [r3]
60303670:	e3a03000 	mov	r3, #0
60303674:	eeb48be0 	vcmpe.f64	d8, d16
60303678:	eef1fa10 	vmrs	APSR_nzcv, fpscr
6030367c:	424aa001 	submi	sl, sl, #1
60303680:	e0401001 	sub	r1, r0, r1
60303684:	e58d302c 	str	r3, [sp, #44]	; 0x2c
60303688:	e2513001 	subs	r3, r1, #1
6030368c:	e58d3014 	str	r3, [sp, #20]
60303690:	42613001 	rsbmi	r3, r1, #1
60303694:	53a03000 	movpl	r3, #0
60303698:	458d3010 	strmi	r3, [sp, #16]
6030369c:	43a03000 	movmi	r3, #0
603036a0:	558d3010 	strpl	r3, [sp, #16]
603036a4:	458d3014 	strmi	r3, [sp, #20]
603036a8:	e35a0000 	cmp	sl, #0
603036ac:	ba000029 	blt	60303758 <_dtoa_r+0x2e4>
603036b0:	e59d3014 	ldr	r3, [sp, #20]
603036b4:	e3a09000 	mov	r9, #0
603036b8:	e58da028 	str	sl, [sp, #40]	; 0x28
603036bc:	e083300a 	add	r3, r3, sl
603036c0:	e58d3014 	str	r3, [sp, #20]
603036c4:	e59d301c 	ldr	r3, [sp, #28]
603036c8:	e3530009 	cmp	r3, #9
603036cc:	8a000055 	bhi	60303828 <_dtoa_r+0x3b4>
603036d0:	e3530005 	cmp	r3, #5
603036d4:	c2433004 	subgt	r3, r3, #4
603036d8:	c58d301c 	strgt	r3, [sp, #28]
603036dc:	c3a04000 	movgt	r4, #0
603036e0:	d3a04001 	movle	r4, #1
603036e4:	e59d301c 	ldr	r3, [sp, #28]
603036e8:	e2433002 	sub	r3, r3, #2
603036ec:	e3530003 	cmp	r3, #3
603036f0:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
603036f4:	ea000055 	b	60303850 <_dtoa_r+0x3dc>
603036f8:	60303774 	.word	0x60303774
603036fc:	603037b4 	.word	0x603037b4
60303700:	603037ac 	.word	0x603037ac
60303704:	60303820 	.word	0x60303820
60303708:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
6030370c:	e0801001 	add	r1, r0, r1
60303710:	e2813e43 	add	r3, r1, #1072	; 0x430
60303714:	e2833002 	add	r3, r3, #2
60303718:	e3530020 	cmp	r3, #32
6030371c:	c2812e41 	addgt	r2, r1, #1040	; 0x410
60303720:	c2633040 	rsbgt	r3, r3, #64	; 0x40
60303724:	c2822002 	addgt	r2, r2, #2
60303728:	d2633020 	rsble	r3, r3, #32
6030372c:	e2411001 	sub	r1, r1, #1
60303730:	c1a06236 	lsrgt	r6, r6, r2
60303734:	c1863314 	orrgt	r3, r6, r4, lsl r3
60303738:	d1a03316 	lslle	r3, r6, r3
6030373c:	ee073a90 	vmov	s15, r3
60303740:	e3a06001 	mov	r6, #1
60303744:	eeb87b67 	vcvt.f64.u32	d7, s15
60303748:	ee17ca90 	vmov	ip, s15
6030374c:	ec532b17 	vmov	r2, r3, d7
60303750:	e24c361f 	sub	r3, ip, #32505856	; 0x1f00000
60303754:	eaffffab 	b	60303608 <_dtoa_r+0x194>
60303758:	e59d3010 	ldr	r3, [sp, #16]
6030375c:	e26a9000 	rsb	r9, sl, #0
60303760:	e043300a 	sub	r3, r3, sl
60303764:	e58d3010 	str	r3, [sp, #16]
60303768:	e3a03000 	mov	r3, #0
6030376c:	e58d3028 	str	r3, [sp, #40]	; 0x28
60303770:	eaffffd3 	b	603036c4 <_dtoa_r+0x250>
60303774:	e3a03000 	mov	r3, #0
60303778:	e58d3018 	str	r3, [sp, #24]
6030377c:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
60303780:	e3530000 	cmp	r3, #0
60303784:	c59d3024 	ldrgt	r3, [sp, #36]	; 0x24
60303788:	c58d3020 	strgt	r3, [sp, #32]
6030378c:	c1a08003 	movgt	r8, r3
60303790:	ca000010 	bgt	603037d8 <_dtoa_r+0x364>
60303794:	e3a03001 	mov	r3, #1
60303798:	e58d3020 	str	r3, [sp, #32]
6030379c:	e1a08003 	mov	r8, r3
603037a0:	e1a02003 	mov	r2, r3
603037a4:	e58d2024 	str	r2, [sp, #36]	; 0x24
603037a8:	ea00000a 	b	603037d8 <_dtoa_r+0x364>
603037ac:	e3a03001 	mov	r3, #1
603037b0:	eafffff0 	b	60303778 <_dtoa_r+0x304>
603037b4:	e3a03000 	mov	r3, #0
603037b8:	e58d3018 	str	r3, [sp, #24]
603037bc:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
603037c0:	e08a3003 	add	r3, sl, r3
603037c4:	e58d3020 	str	r3, [sp, #32]
603037c8:	e2838001 	add	r8, r3, #1
603037cc:	e3580001 	cmp	r8, #1
603037d0:	a1a03008 	movge	r3, r8
603037d4:	b3a03001 	movlt	r3, #1
603037d8:	e5950024 	ldr	r0, [r5, #36]	; 0x24
603037dc:	e3a02000 	mov	r2, #0
603037e0:	e5802004 	str	r2, [r0, #4]
603037e4:	e3a02004 	mov	r2, #4
603037e8:	e282c014 	add	ip, r2, #20
603037ec:	e5901004 	ldr	r1, [r0, #4]
603037f0:	e15c0003 	cmp	ip, r3
603037f4:	9a000018 	bls	6030385c <_dtoa_r+0x3e8>
603037f8:	e1a00005 	mov	r0, r5
603037fc:	eb0005a9 	bl	60304ea8 <_Balloc>
60303800:	e2503000 	subs	r3, r0, #0
60303804:	e58d3004 	str	r3, [sp, #4]
60303808:	1a000028 	bne	603038b0 <_dtoa_r+0x43c>
6030380c:	e59f3094 	ldr	r3, [pc, #148]	; 603038a8 <_dtoa_r+0x434>
60303810:	e1a02000 	mov	r2, r0
60303814:	e30011aa 	movw	r1, #426	; 0x1aa
60303818:	e59f007c 	ldr	r0, [pc, #124]	; 6030389c <_dtoa_r+0x428>
6030381c:	ebfff48a 	bl	60300a4c <__assert_func>
60303820:	e3a03001 	mov	r3, #1
60303824:	eaffffe3 	b	603037b8 <_dtoa_r+0x344>
60303828:	e3a04001 	mov	r4, #1
6030382c:	e3a03000 	mov	r3, #0
60303830:	e58d4018 	str	r4, [sp, #24]
60303834:	e58d301c 	str	r3, [sp, #28]
60303838:	e3e03000 	mvn	r3, #0
6030383c:	e3a02000 	mov	r2, #0
60303840:	e1a08003 	mov	r8, r3
60303844:	e58d3020 	str	r3, [sp, #32]
60303848:	e3a03012 	mov	r3, #18
6030384c:	eaffffd4 	b	603037a4 <_dtoa_r+0x330>
60303850:	e3a03001 	mov	r3, #1
60303854:	e58d3018 	str	r3, [sp, #24]
60303858:	eafffff6 	b	60303838 <_dtoa_r+0x3c4>
6030385c:	e2811001 	add	r1, r1, #1
60303860:	e1a02082 	lsl	r2, r2, #1
60303864:	e5801004 	str	r1, [r0, #4]
60303868:	eaffffde 	b	603037e8 <_dtoa_r+0x374>
6030386c:	e320f000 	nop	{0}
60303870:	636f4361 	.word	0x636f4361
60303874:	3fd287a7 	.word	0x3fd287a7
60303878:	8b60c8b3 	.word	0x8b60c8b3
6030387c:	3fc68a28 	.word	0x3fc68a28
60303880:	509f79fb 	.word	0x509f79fb
60303884:	3fd34413 	.word	0x3fd34413
60303888:	603159e5 	.word	0x603159e5
6030388c:	7ff00000 	.word	0x7ff00000
60303890:	603159df 	.word	0x603159df
60303894:	603159e3 	.word	0x603159e3
60303898:	603159e4 	.word	0x603159e4
6030389c:	603159fc 	.word	0x603159fc
603038a0:	60314180 	.word	0x60314180
603038a4:	60314090 	.word	0x60314090
603038a8:	60315a43 	.word	0x60315a43
603038ac:	603159d6 	.word	0x603159d6
603038b0:	e5953024 	ldr	r3, [r5, #36]	; 0x24
603038b4:	e358000e 	cmp	r8, #14
603038b8:	83a04000 	movhi	r4, #0
603038bc:	92044001 	andls	r4, r4, #1
603038c0:	e59d2004 	ldr	r2, [sp, #4]
603038c4:	e3540000 	cmp	r4, #0
603038c8:	e5832000 	str	r2, [r3]
603038cc:	0a00003c 	beq	603039c4 <_dtoa_r+0x550>
603038d0:	e35a0000 	cmp	sl, #0
603038d4:	da000063 	ble	60303a68 <_dtoa_r+0x5f4>
603038d8:	e31a0c01 	tst	sl, #256	; 0x100
603038dc:	e51f2040 	ldr	r2, [pc, #-64]	; 603038a4 <_dtoa_r+0x430>
603038e0:	e20a300f 	and	r3, sl, #15
603038e4:	e51f104c 	ldr	r1, [pc, #-76]	; 603038a0 <_dtoa_r+0x42c>
603038e8:	e0823183 	add	r3, r2, r3, lsl #3
603038ec:	151f2054 	ldrne	r2, [pc, #-84]	; 603038a0 <_dtoa_r+0x42c>
603038f0:	03a02002 	moveq	r2, #2
603038f4:	edd30b00 	vldr	d16, [r3]
603038f8:	e1a0324a 	asr	r3, sl, #4
603038fc:	1dd21b08 	vldrne	d17, [r2, #32]
60303900:	1203300f 	andne	r3, r3, #15
60303904:	13a02003 	movne	r2, #3
60303908:	1ec81b21 	vdivne.f64	d17, d8, d17
6030390c:	1dcd1b02 	vstrne	d17, [sp, #8]
60303910:	e3530000 	cmp	r3, #0
60303914:	1a00004c 	bne	60303a4c <_dtoa_r+0x5d8>
60303918:	eddd1b02 	vldr	d17, [sp, #8]
6030391c:	eec10ba0 	vdiv.f64	d16, d17, d16
60303920:	edcd0b02 	vstr	d16, [sp, #8]
60303924:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
60303928:	e3530000 	cmp	r3, #0
6030392c:	0a000067 	beq	60303ad0 <_dtoa_r+0x65c>
60303930:	eddd0b02 	vldr	d16, [sp, #8]
60303934:	eef71b00 	vmov.f64	d17, #112	; 0x3f800000  1.0
60303938:	eef40be1 	vcmpe.f64	d16, d17
6030393c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60303940:	5a000062 	bpl	60303ad0 <_dtoa_r+0x65c>
60303944:	e3580000 	cmp	r8, #0
60303948:	0a000060 	beq	60303ad0 <_dtoa_r+0x65c>
6030394c:	e59d3020 	ldr	r3, [sp, #32]
60303950:	e3530000 	cmp	r3, #0
60303954:	da000019 	ble	603039c0 <_dtoa_r+0x54c>
60303958:	eef21b04 	vmov.f64	d17, #36	; 0x41200000  10.0
6030395c:	e24a1001 	sub	r1, sl, #1
60303960:	e2822001 	add	r2, r2, #1
60303964:	e1a00003 	mov	r0, r3
60303968:	ee600ba1 	vmul.f64	d16, d16, d17
6030396c:	edcd0b02 	vstr	d16, [sp, #8]
60303970:	ee072a90 	vmov	s15, r2
60303974:	eddd0b02 	vldr	d16, [sp, #8]
60303978:	e3500000 	cmp	r0, #0
6030397c:	eef81be7 	vcvt.f64.s32	d17, s15
60303980:	eeb17b0c 	vmov.f64	d7, #28	; 0x40e00000  7.0
60303984:	ee017ba0 	vmla.f64	d7, d17, d16
60303988:	ee17ca90 	vmov	ip, s15
6030398c:	ec532b17 	vmov	r2, r3, d7
60303990:	e24c350d 	sub	r3, ip, #54525952	; 0x3400000
60303994:	1a000050 	bne	60303adc <_dtoa_r+0x668>
60303998:	eef11b04 	vmov.f64	d17, #20	; 0x40a00000  5.0
6030399c:	ee700be1 	vsub.f64	d16, d16, d17
603039a0:	ec432b31 	vmov	d17, r2, r3
603039a4:	eef40be1 	vcmpe.f64	d16, d17
603039a8:	eef1fa10 	vmrs	APSR_nzcv, fpscr
603039ac:	ca0001ab 	bgt	60304060 <_dtoa_r+0xbec>
603039b0:	eef11b61 	vneg.f64	d17, d17
603039b4:	eef40be1 	vcmpe.f64	d16, d17
603039b8:	eef1fa10 	vmrs	APSR_nzcv, fpscr
603039bc:	4a0001a4 	bmi	60304054 <_dtoa_r+0xbe0>
603039c0:	ed8d8b02 	vstr	d8, [sp, #8]
603039c4:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
603039c8:	e35a000e 	cmp	sl, #14
603039cc:	e1e04003 	mvn	r4, r3
603039d0:	e1a04fa4 	lsr	r4, r4, #31
603039d4:	c3a04000 	movgt	r4, #0
603039d8:	e3540000 	cmp	r4, #0
603039dc:	0a0000b2 	beq	60303cac <_dtoa_r+0x838>
603039e0:	e51f3144 	ldr	r3, [pc, #-324]	; 603038a4 <_dtoa_r+0x430>
603039e4:	e3580000 	cmp	r8, #0
603039e8:	e59d2024 	ldr	r2, [sp, #36]	; 0x24
603039ec:	e083318a 	add	r3, r3, sl, lsl #3
603039f0:	edd31b00 	vldr	d17, [r3]
603039f4:	c3a03000 	movgt	r3, #0
603039f8:	d3a03001 	movle	r3, #1
603039fc:	e0133fa2 	ands	r3, r3, r2, lsr #31
60303a00:	059d7004 	ldreq	r7, [sp, #4]
60303a04:	0ef23b04 	vmoveq.f64	d19, #36	; 0x41200000  10.0
60303a08:	0ddd0b02 	vldreq	d16, [sp, #8]
60303a0c:	0a000086 	beq	60303c2c <_dtoa_r+0x7b8>
60303a10:	e3580000 	cmp	r8, #0
60303a14:	1a00018e 	bne	60304054 <_dtoa_r+0xbe0>
60303a18:	eef10b04 	vmov.f64	d16, #20	; 0x40a00000  5.0
60303a1c:	e1a04008 	mov	r4, r8
60303a20:	e1a06008 	mov	r6, r8
60303a24:	ee611ba0 	vmul.f64	d17, d17, d16
60303a28:	eddd0b02 	vldr	d16, [sp, #8]
60303a2c:	eef41be0 	vcmpe.f64	d17, d16
60303a30:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60303a34:	aa00015d 	bge	60303fb0 <_dtoa_r+0xb3c>
60303a38:	e59d7004 	ldr	r7, [sp, #4]
60303a3c:	e3a03031 	mov	r3, #49	; 0x31
60303a40:	e28aa001 	add	sl, sl, #1
60303a44:	e4c73001 	strb	r3, [r7], #1
60303a48:	ea00015b 	b	60303fbc <_dtoa_r+0xb48>
60303a4c:	e3130001 	tst	r3, #1
60303a50:	e2811008 	add	r1, r1, #8
60303a54:	12822001 	addne	r2, r2, #1
60303a58:	e1a030c3 	asr	r3, r3, #1
60303a5c:	1d511b02 	vldrne	d17, [r1, #-8]
60303a60:	1e600ba1 	vmulne.f64	d16, d16, d17
60303a64:	eaffffa9 	b	60303910 <_dtoa_r+0x49c>
60303a68:	03a02002 	moveq	r2, #2
60303a6c:	0affffac 	beq	60303924 <_dtoa_r+0x4b0>
60303a70:	e26a3000 	rsb	r3, sl, #0
60303a74:	e51f21d8 	ldr	r2, [pc, #-472]	; 603038a4 <_dtoa_r+0x430>
60303a78:	e203100f 	and	r1, r3, #15
60303a7c:	e3a00000 	mov	r0, #0
60303a80:	e1a03243 	asr	r3, r3, #4
60303a84:	e0822181 	add	r2, r2, r1, lsl #3
60303a88:	e51f11f0 	ldr	r1, [pc, #-496]	; 603038a0 <_dtoa_r+0x42c>
60303a8c:	edd20b00 	vldr	d16, [r2]
60303a90:	e3a02002 	mov	r2, #2
60303a94:	ee680b20 	vmul.f64	d16, d8, d16
60303a98:	edcd0b02 	vstr	d16, [sp, #8]
60303a9c:	e3530000 	cmp	r3, #0
60303aa0:	1a000002 	bne	60303ab0 <_dtoa_r+0x63c>
60303aa4:	e3500000 	cmp	r0, #0
60303aa8:	1dcd0b02 	vstrne	d16, [sp, #8]
60303aac:	eaffff9c 	b	60303924 <_dtoa_r+0x4b0>
60303ab0:	e3130001 	tst	r3, #1
60303ab4:	e2811008 	add	r1, r1, #8
60303ab8:	12822001 	addne	r2, r2, #1
60303abc:	11a00004 	movne	r0, r4
60303ac0:	e1a030c3 	asr	r3, r3, #1
60303ac4:	1d511b02 	vldrne	d17, [r1, #-8]
60303ac8:	1e600ba1 	vmulne.f64	d16, d16, d17
60303acc:	eafffff2 	b	60303a9c <_dtoa_r+0x628>
60303ad0:	e1a0100a 	mov	r1, sl
60303ad4:	e1a00008 	mov	r0, r8
60303ad8:	eaffffa4 	b	60303970 <_dtoa_r+0x4fc>
60303adc:	ec432b31 	vmov	d17, r2, r3
60303ae0:	e51f3244 	ldr	r3, [pc, #-580]	; 603038a4 <_dtoa_r+0x430>
60303ae4:	e0833180 	add	r3, r3, r0, lsl #3
60303ae8:	ed533b02 	vldr	d19, [r3, #-8]
60303aec:	e59d3018 	ldr	r3, [sp, #24]
60303af0:	e3530000 	cmp	r3, #0
60303af4:	e59d3004 	ldr	r3, [sp, #4]
60303af8:	e0834000 	add	r4, r3, r0
60303afc:	0a000017 	beq	60303b60 <_dtoa_r+0x6ec>
60303b00:	eef64b00 	vmov.f64	d20, #96	; 0x3f000000  0.5
60303b04:	e1a07003 	mov	r7, r3
60303b08:	eec42ba3 	vdiv.f64	d18, d20, d19
60303b0c:	eef73b00 	vmov.f64	d19, #112	; 0x3f800000  1.0
60303b10:	ee721be1 	vsub.f64	d17, d18, d17
60303b14:	eef22b04 	vmov.f64	d18, #36	; 0x41200000  10.0
60303b18:	eefd7be0 	vcvt.s32.f64	s15, d16
60303b1c:	eef84be7 	vcvt.f64.s32	d20, s15
60303b20:	ee173a90 	vmov	r3, s15
60303b24:	ee700be4 	vsub.f64	d16, d16, d20
60303b28:	e2833030 	add	r3, r3, #48	; 0x30
60303b2c:	e4c73001 	strb	r3, [r7], #1
60303b30:	eef40be1 	vcmpe.f64	d16, d17
60303b34:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60303b38:	4a000022 	bmi	60303bc8 <_dtoa_r+0x754>
60303b3c:	ee734be0 	vsub.f64	d20, d19, d16
60303b40:	eef44be1 	vcmpe.f64	d20, d17
60303b44:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60303b48:	4a000023 	bmi	60303bdc <_dtoa_r+0x768>
60303b4c:	e1570004 	cmp	r7, r4
60303b50:	0affff9a 	beq	603039c0 <_dtoa_r+0x54c>
60303b54:	ee611ba2 	vmul.f64	d17, d17, d18
60303b58:	ee600ba2 	vmul.f64	d16, d16, d18
60303b5c:	eaffffed 	b	60303b18 <_dtoa_r+0x6a4>
60303b60:	ee611ba3 	vmul.f64	d17, d17, d19
60303b64:	e59d7004 	ldr	r7, [sp, #4]
60303b68:	e1a02004 	mov	r2, r4
60303b6c:	eef22b04 	vmov.f64	d18, #36	; 0x41200000  10.0
60303b70:	eefd7be0 	vcvt.s32.f64	s15, d16
60303b74:	ee173a90 	vmov	r3, s15
60303b78:	eef83be7 	vcvt.f64.s32	d19, s15
60303b7c:	e2833030 	add	r3, r3, #48	; 0x30
60303b80:	e4c73001 	strb	r3, [r7], #1
60303b84:	ee700be3 	vsub.f64	d16, d16, d19
60303b88:	e1570004 	cmp	r7, r4
60303b8c:	1a00000f 	bne	60303bd0 <_dtoa_r+0x75c>
60303b90:	eef62b00 	vmov.f64	d18, #96	; 0x3f000000  0.5
60303b94:	ee713ba2 	vadd.f64	d19, d17, d18
60303b98:	eef40be3 	vcmpe.f64	d16, d19
60303b9c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60303ba0:	ca00000d 	bgt	60303bdc <_dtoa_r+0x768>
60303ba4:	ee721be1 	vsub.f64	d17, d18, d17
60303ba8:	eef40be1 	vcmpe.f64	d16, d17
60303bac:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60303bb0:	5affff82 	bpl	603039c0 <_dtoa_r+0x54c>
60303bb4:	e1a07002 	mov	r7, r2
60303bb8:	e2422001 	sub	r2, r2, #1
60303bbc:	e5573001 	ldrb	r3, [r7, #-1]
60303bc0:	e3530030 	cmp	r3, #48	; 0x30
60303bc4:	0afffffa 	beq	60303bb4 <_dtoa_r+0x740>
60303bc8:	e1a0a001 	mov	sl, r1
60303bcc:	ea00002a 	b	60303c7c <_dtoa_r+0x808>
60303bd0:	ee600ba2 	vmul.f64	d16, d16, d18
60303bd4:	eaffffe5 	b	60303b70 <_dtoa_r+0x6fc>
60303bd8:	e1a0100a 	mov	r1, sl
60303bdc:	e1a03007 	mov	r3, r7
60303be0:	e1a07003 	mov	r7, r3
60303be4:	e5732001 	ldrb	r2, [r3, #-1]!
60303be8:	e3520039 	cmp	r2, #57	; 0x39
60303bec:	1a000006 	bne	60303c0c <_dtoa_r+0x798>
60303bf0:	e59d2004 	ldr	r2, [sp, #4]
60303bf4:	e1520003 	cmp	r2, r3
60303bf8:	1afffff8 	bne	60303be0 <_dtoa_r+0x76c>
60303bfc:	e59d0004 	ldr	r0, [sp, #4]
60303c00:	e2811001 	add	r1, r1, #1
60303c04:	e3a02030 	mov	r2, #48	; 0x30
60303c08:	e5c02000 	strb	r2, [r0]
60303c0c:	e5d32000 	ldrb	r2, [r3]
60303c10:	e2822001 	add	r2, r2, #1
60303c14:	e5c32000 	strb	r2, [r3]
60303c18:	eaffffea 	b	60303bc8 <_dtoa_r+0x754>
60303c1c:	ee600ba3 	vmul.f64	d16, d16, d19
60303c20:	eef50b40 	vcmp.f64	d16, #0.0
60303c24:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60303c28:	0a000013 	beq	60303c7c <_dtoa_r+0x808>
60303c2c:	eec02ba1 	vdiv.f64	d18, d16, d17
60303c30:	eefd7be2 	vcvt.s32.f64	s15, d18
60303c34:	ee173a90 	vmov	r3, s15
60303c38:	eef82be7 	vcvt.f64.s32	d18, s15
60303c3c:	e2832030 	add	r2, r3, #48	; 0x30
60303c40:	e4c72001 	strb	r2, [r7], #1
60303c44:	e59d2004 	ldr	r2, [sp, #4]
60303c48:	ee420be1 	vmls.f64	d16, d18, d17
60303c4c:	e0472002 	sub	r2, r7, r2
60303c50:	e1580002 	cmp	r8, r2
60303c54:	1afffff0 	bne	60303c1c <_dtoa_r+0x7a8>
60303c58:	ee700ba0 	vadd.f64	d16, d16, d16
60303c5c:	eef40be1 	vcmpe.f64	d16, d17
60303c60:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60303c64:	caffffdb 	bgt	60303bd8 <_dtoa_r+0x764>
60303c68:	eef40b61 	vcmp.f64	d16, d17
60303c6c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60303c70:	1a000001 	bne	60303c7c <_dtoa_r+0x808>
60303c74:	e3130001 	tst	r3, #1
60303c78:	1affffd6 	bne	60303bd8 <_dtoa_r+0x764>
60303c7c:	e1a0100b 	mov	r1, fp
60303c80:	e1a00005 	mov	r0, r5
60303c84:	eb0004c0 	bl	60304f8c <_Bfree>
60303c88:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
60303c8c:	e3a03000 	mov	r3, #0
60303c90:	e5c73000 	strb	r3, [r7]
60303c94:	e28a3001 	add	r3, sl, #1
60303c98:	e5823000 	str	r3, [r2]
60303c9c:	e59d3074 	ldr	r3, [sp, #116]	; 0x74
60303ca0:	e3530000 	cmp	r3, #0
60303ca4:	15837000 	strne	r7, [r3]
60303ca8:	eafffe31 	b	60303574 <_dtoa_r+0x100>
60303cac:	e59d2018 	ldr	r2, [sp, #24]
60303cb0:	e3520000 	cmp	r2, #0
60303cb4:	01a04009 	moveq	r4, r9
60303cb8:	059d7010 	ldreq	r7, [sp, #16]
60303cbc:	059d6018 	ldreq	r6, [sp, #24]
60303cc0:	0a000013 	beq	60303d14 <_dtoa_r+0x8a0>
60303cc4:	e59d201c 	ldr	r2, [sp, #28]
60303cc8:	e3520001 	cmp	r2, #1
60303ccc:	ca0000ca 	bgt	60303ffc <_dtoa_r+0xb88>
60303cd0:	e3560000 	cmp	r6, #0
60303cd4:	e59d7010 	ldr	r7, [sp, #16]
60303cd8:	12833e43 	addne	r3, r3, #1072	; 0x430
60303cdc:	e1a04009 	mov	r4, r9
60303ce0:	12833003 	addne	r3, r3, #3
60303ce4:	059d3038 	ldreq	r3, [sp, #56]	; 0x38
60303ce8:	02633036 	rsbeq	r3, r3, #54	; 0x36
60303cec:	e59d2010 	ldr	r2, [sp, #16]
60303cf0:	e3a01001 	mov	r1, #1
60303cf4:	e1a00005 	mov	r0, r5
60303cf8:	e0822003 	add	r2, r2, r3
60303cfc:	e58d2010 	str	r2, [sp, #16]
60303d00:	e59d2014 	ldr	r2, [sp, #20]
60303d04:	e0823003 	add	r3, r2, r3
60303d08:	e58d3014 	str	r3, [sp, #20]
60303d0c:	eb00056d 	bl	603052c8 <__i2b>
60303d10:	e1a06000 	mov	r6, r0
60303d14:	e59d3014 	ldr	r3, [sp, #20]
60303d18:	e3570000 	cmp	r7, #0
60303d1c:	c3530000 	cmpgt	r3, #0
60303d20:	da000008 	ble	60303d48 <_dtoa_r+0x8d4>
60303d24:	e1570003 	cmp	r7, r3
60303d28:	e59d2010 	ldr	r2, [sp, #16]
60303d2c:	b1a03007 	movlt	r3, r7
60303d30:	e0422003 	sub	r2, r2, r3
60303d34:	e58d2010 	str	r2, [sp, #16]
60303d38:	e59d2014 	ldr	r2, [sp, #20]
60303d3c:	e0477003 	sub	r7, r7, r3
60303d40:	e0423003 	sub	r3, r2, r3
60303d44:	e58d3014 	str	r3, [sp, #20]
60303d48:	e3590000 	cmp	r9, #0
60303d4c:	0a000019 	beq	60303db8 <_dtoa_r+0x944>
60303d50:	e59d3018 	ldr	r3, [sp, #24]
60303d54:	e3530000 	cmp	r3, #0
60303d58:	0a0000b6 	beq	60304038 <_dtoa_r+0xbc4>
60303d5c:	e3540000 	cmp	r4, #0
60303d60:	da00000e 	ble	60303da0 <_dtoa_r+0x92c>
60303d64:	e1a01006 	mov	r1, r6
60303d68:	e1a02004 	mov	r2, r4
60303d6c:	e1a00005 	mov	r0, r5
60303d70:	eb0005d7 	bl	603054d4 <__pow5mult>
60303d74:	e1a0200b 	mov	r2, fp
60303d78:	e1a01000 	mov	r1, r0
60303d7c:	e1a06000 	mov	r6, r0
60303d80:	e1a00005 	mov	r0, r5
60303d84:	eb00055f 	bl	60305308 <__multiply>
60303d88:	e1a0100b 	mov	r1, fp
60303d8c:	e58d0034 	str	r0, [sp, #52]	; 0x34
60303d90:	e1a00005 	mov	r0, r5
60303d94:	eb00047c 	bl	60304f8c <_Bfree>
60303d98:	e59d3034 	ldr	r3, [sp, #52]	; 0x34
60303d9c:	e1a0b003 	mov	fp, r3
60303da0:	e0592004 	subs	r2, r9, r4
60303da4:	0a000003 	beq	60303db8 <_dtoa_r+0x944>
60303da8:	e1a0100b 	mov	r1, fp
60303dac:	e1a00005 	mov	r0, r5
60303db0:	eb0005c7 	bl	603054d4 <__pow5mult>
60303db4:	e1a0b000 	mov	fp, r0
60303db8:	e3a01001 	mov	r1, #1
60303dbc:	e1a00005 	mov	r0, r5
60303dc0:	eb000540 	bl	603052c8 <__i2b>
60303dc4:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
60303dc8:	e1a04000 	mov	r4, r0
60303dcc:	e3530000 	cmp	r3, #0
60303dd0:	da00009a 	ble	60304040 <_dtoa_r+0xbcc>
60303dd4:	e1a02003 	mov	r2, r3
60303dd8:	e1a01000 	mov	r1, r0
60303ddc:	e1a00005 	mov	r0, r5
60303de0:	eb0005bb 	bl	603054d4 <__pow5mult>
60303de4:	e59d301c 	ldr	r3, [sp, #28]
60303de8:	e1a04000 	mov	r4, r0
60303dec:	e3530001 	cmp	r3, #1
60303df0:	c3a09000 	movgt	r9, #0
60303df4:	ca000018 	bgt	60303e5c <_dtoa_r+0x9e8>
60303df8:	e59d3008 	ldr	r3, [sp, #8]
60303dfc:	e3530000 	cmp	r3, #0
60303e00:	1a000091 	bne	6030404c <_dtoa_r+0xbd8>
60303e04:	e59d300c 	ldr	r3, [sp, #12]
60303e08:	e7f33053 	ubfx	r3, r3, #0, #20
60303e0c:	e3530000 	cmp	r3, #0
60303e10:	159d9008 	ldrne	r9, [sp, #8]
60303e14:	1a00000c 	bne	60303e4c <_dtoa_r+0x9d8>
60303e18:	e59d300c 	ldr	r3, [sp, #12]
60303e1c:	e3c39102 	bic	r9, r3, #-2147483648	; 0x80000000
60303e20:	e1a09a29 	lsr	r9, r9, #20
60303e24:	e1a09a09 	lsl	r9, r9, #20
60303e28:	e3590000 	cmp	r9, #0
60303e2c:	0a000006 	beq	60303e4c <_dtoa_r+0x9d8>
60303e30:	e59d3010 	ldr	r3, [sp, #16]
60303e34:	e3a09001 	mov	r9, #1
60303e38:	e2833001 	add	r3, r3, #1
60303e3c:	e58d3010 	str	r3, [sp, #16]
60303e40:	e59d3014 	ldr	r3, [sp, #20]
60303e44:	e2833001 	add	r3, r3, #1
60303e48:	e58d3014 	str	r3, [sp, #20]
60303e4c:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
60303e50:	e3530000 	cmp	r3, #0
60303e54:	03a00001 	moveq	r0, #1
60303e58:	0a000004 	beq	60303e70 <_dtoa_r+0x9fc>
60303e5c:	e5943010 	ldr	r3, [r4, #16]
60303e60:	e0843103 	add	r3, r4, r3, lsl #2
60303e64:	e5930010 	ldr	r0, [r3, #16]
60303e68:	eb0004d9 	bl	603051d4 <__hi0bits>
60303e6c:	e2600020 	rsb	r0, r0, #32
60303e70:	e59d3014 	ldr	r3, [sp, #20]
60303e74:	e0830000 	add	r0, r3, r0
60303e78:	e210001f 	ands	r0, r0, #31
60303e7c:	0a000005 	beq	60303e98 <_dtoa_r+0xa24>
60303e80:	e2603020 	rsb	r3, r0, #32
60303e84:	e3530004 	cmp	r3, #4
60303e88:	c260001c 	rsbgt	r0, r0, #28
60303e8c:	ca000002 	bgt	60303e9c <_dtoa_r+0xa28>
60303e90:	0a000008 	beq	60303eb8 <_dtoa_r+0xa44>
60303e94:	e1a00003 	mov	r0, r3
60303e98:	e280001c 	add	r0, r0, #28
60303e9c:	e59d3010 	ldr	r3, [sp, #16]
60303ea0:	e0877000 	add	r7, r7, r0
60303ea4:	e0833000 	add	r3, r3, r0
60303ea8:	e58d3010 	str	r3, [sp, #16]
60303eac:	e59d3014 	ldr	r3, [sp, #20]
60303eb0:	e0833000 	add	r3, r3, r0
60303eb4:	e58d3014 	str	r3, [sp, #20]
60303eb8:	e59d3010 	ldr	r3, [sp, #16]
60303ebc:	e3530000 	cmp	r3, #0
60303ec0:	da000004 	ble	60303ed8 <_dtoa_r+0xa64>
60303ec4:	e1a0100b 	mov	r1, fp
60303ec8:	e1a02003 	mov	r2, r3
60303ecc:	e1a00005 	mov	r0, r5
60303ed0:	eb0005c7 	bl	603055f4 <__lshift>
60303ed4:	e1a0b000 	mov	fp, r0
60303ed8:	e59d3014 	ldr	r3, [sp, #20]
60303edc:	e3530000 	cmp	r3, #0
60303ee0:	da000004 	ble	60303ef8 <_dtoa_r+0xa84>
60303ee4:	e1a01004 	mov	r1, r4
60303ee8:	e1a02003 	mov	r2, r3
60303eec:	e1a00005 	mov	r0, r5
60303ef0:	eb0005bf 	bl	603055f4 <__lshift>
60303ef4:	e1a04000 	mov	r4, r0
60303ef8:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
60303efc:	e3530000 	cmp	r3, #0
60303f00:	0a000015 	beq	60303f5c <_dtoa_r+0xae8>
60303f04:	e1a01004 	mov	r1, r4
60303f08:	e1a0000b 	mov	r0, fp
60303f0c:	eb000603 	bl	60305720 <__mcmp>
60303f10:	e3500000 	cmp	r0, #0
60303f14:	aa000010 	bge	60303f5c <_dtoa_r+0xae8>
60303f18:	e3a03000 	mov	r3, #0
60303f1c:	e1a0100b 	mov	r1, fp
60303f20:	e3a0200a 	mov	r2, #10
60303f24:	e1a00005 	mov	r0, r5
60303f28:	eb000436 	bl	60305008 <__multadd>
60303f2c:	e59d3018 	ldr	r3, [sp, #24]
60303f30:	e24aa001 	sub	sl, sl, #1
60303f34:	e1a0b000 	mov	fp, r0
60303f38:	e3530000 	cmp	r3, #0
60303f3c:	0a000005 	beq	60303f58 <_dtoa_r+0xae4>
60303f40:	e1a01006 	mov	r1, r6
60303f44:	e3a03000 	mov	r3, #0
60303f48:	e3a0200a 	mov	r2, #10
60303f4c:	e1a00005 	mov	r0, r5
60303f50:	eb00042c 	bl	60305008 <__multadd>
60303f54:	e1a06000 	mov	r6, r0
60303f58:	e59d8020 	ldr	r8, [sp, #32]
60303f5c:	e59d201c 	ldr	r2, [sp, #28]
60303f60:	e3580000 	cmp	r8, #0
60303f64:	d3a03001 	movle	r3, #1
60303f68:	c3a03000 	movgt	r3, #0
60303f6c:	e3520002 	cmp	r2, #2
60303f70:	d3a03000 	movle	r3, #0
60303f74:	e3530000 	cmp	r3, #0
60303f78:	0a00003c 	beq	60304070 <_dtoa_r+0xbfc>
60303f7c:	e3580000 	cmp	r8, #0
60303f80:	1a00000a 	bne	60303fb0 <_dtoa_r+0xb3c>
60303f84:	e1a01004 	mov	r1, r4
60303f88:	e1a03008 	mov	r3, r8
60303f8c:	e3a02005 	mov	r2, #5
60303f90:	e1a00005 	mov	r0, r5
60303f94:	eb00041b 	bl	60305008 <__multadd>
60303f98:	e1a01000 	mov	r1, r0
60303f9c:	e1a04000 	mov	r4, r0
60303fa0:	e1a0000b 	mov	r0, fp
60303fa4:	eb0005dd 	bl	60305720 <__mcmp>
60303fa8:	e3500000 	cmp	r0, #0
60303fac:	cafffea1 	bgt	60303a38 <_dtoa_r+0x5c4>
60303fb0:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
60303fb4:	e59d7004 	ldr	r7, [sp, #4]
60303fb8:	e1e0a003 	mvn	sl, r3
60303fbc:	e3a08000 	mov	r8, #0
60303fc0:	e1a01004 	mov	r1, r4
60303fc4:	e1a00005 	mov	r0, r5
60303fc8:	eb0003ef 	bl	60304f8c <_Bfree>
60303fcc:	e3560000 	cmp	r6, #0
60303fd0:	0affff29 	beq	60303c7c <_dtoa_r+0x808>
60303fd4:	e3580000 	cmp	r8, #0
60303fd8:	11580006 	cmpne	r8, r6
60303fdc:	0a000002 	beq	60303fec <_dtoa_r+0xb78>
60303fe0:	e1a01008 	mov	r1, r8
60303fe4:	e1a00005 	mov	r0, r5
60303fe8:	eb0003e7 	bl	60304f8c <_Bfree>
60303fec:	e1a01006 	mov	r1, r6
60303ff0:	e1a00005 	mov	r0, r5
60303ff4:	eb0003e4 	bl	60304f8c <_Bfree>
60303ff8:	eaffff1f 	b	60303c7c <_dtoa_r+0x808>
60303ffc:	e2483001 	sub	r3, r8, #1
60304000:	e1590003 	cmp	r9, r3
60304004:	b0439009 	sublt	r9, r3, r9
60304008:	a0494003 	subge	r4, r9, r3
6030400c:	b59d2028 	ldrlt	r2, [sp, #40]	; 0x28
60304010:	b0822009 	addlt	r2, r2, r9
60304014:	b1a09003 	movlt	r9, r3
60304018:	b58d2028 	strlt	r2, [sp, #40]	; 0x28
6030401c:	e3580000 	cmp	r8, #0
60304020:	a1a03008 	movge	r3, r8
60304024:	b59d3010 	ldrlt	r3, [sp, #16]
60304028:	a59d7010 	ldrge	r7, [sp, #16]
6030402c:	b0437008 	sublt	r7, r3, r8
60304030:	b3a03000 	movlt	r3, #0
60304034:	eaffff2c 	b	60303cec <_dtoa_r+0x878>
60304038:	e1a02009 	mov	r2, r9
6030403c:	eaffff59 	b	60303da8 <_dtoa_r+0x934>
60304040:	e59d301c 	ldr	r3, [sp, #28]
60304044:	e3530001 	cmp	r3, #1
60304048:	daffff6a 	ble	60303df8 <_dtoa_r+0x984>
6030404c:	e3a09000 	mov	r9, #0
60304050:	eaffff7d 	b	60303e4c <_dtoa_r+0x9d8>
60304054:	e3a04000 	mov	r4, #0
60304058:	e1a06004 	mov	r6, r4
6030405c:	eaffffd3 	b	60303fb0 <_dtoa_r+0xb3c>
60304060:	e1a0a001 	mov	sl, r1
60304064:	e1a04000 	mov	r4, r0
60304068:	e1a06000 	mov	r6, r0
6030406c:	eafffe71 	b	60303a38 <_dtoa_r+0x5c4>
60304070:	e59d3018 	ldr	r3, [sp, #24]
60304074:	e3530000 	cmp	r3, #0
60304078:	0a0000a3 	beq	6030430c <_dtoa_r+0xe98>
6030407c:	e3570000 	cmp	r7, #0
60304080:	da000004 	ble	60304098 <_dtoa_r+0xc24>
60304084:	e1a01006 	mov	r1, r6
60304088:	e1a02007 	mov	r2, r7
6030408c:	e1a00005 	mov	r0, r5
60304090:	eb000557 	bl	603055f4 <__lshift>
60304094:	e1a06000 	mov	r6, r0
60304098:	e3590000 	cmp	r9, #0
6030409c:	01a00006 	moveq	r0, r6
603040a0:	0a000012 	beq	603040f0 <_dtoa_r+0xc7c>
603040a4:	e5961004 	ldr	r1, [r6, #4]
603040a8:	e1a00005 	mov	r0, r5
603040ac:	eb00037d 	bl	60304ea8 <_Balloc>
603040b0:	e2507000 	subs	r7, r0, #0
603040b4:	1a000003 	bne	603040c8 <_dtoa_r+0xc54>
603040b8:	e51f3818 	ldr	r3, [pc, #-2072]	; 603038a8 <_dtoa_r+0x434>
603040bc:	e1a02007 	mov	r2, r7
603040c0:	e30012ea 	movw	r1, #746	; 0x2ea
603040c4:	eafffdd3 	b	60303818 <_dtoa_r+0x3a4>
603040c8:	e5962010 	ldr	r2, [r6, #16]
603040cc:	e286100c 	add	r1, r6, #12
603040d0:	e287000c 	add	r0, r7, #12
603040d4:	e2822002 	add	r2, r2, #2
603040d8:	e1a02102 	lsl	r2, r2, #2
603040dc:	ebfff487 	bl	60301300 <memcpy>
603040e0:	e3a02001 	mov	r2, #1
603040e4:	e1a01007 	mov	r1, r7
603040e8:	e1a00005 	mov	r0, r5
603040ec:	eb000540 	bl	603055f4 <__lshift>
603040f0:	e59d3004 	ldr	r3, [sp, #4]
603040f4:	e2833001 	add	r3, r3, #1
603040f8:	e58d3010 	str	r3, [sp, #16]
603040fc:	e59d3004 	ldr	r3, [sp, #4]
60304100:	e0833008 	add	r3, r3, r8
60304104:	e58d3028 	str	r3, [sp, #40]	; 0x28
60304108:	e59d3008 	ldr	r3, [sp, #8]
6030410c:	e1a08006 	mov	r8, r6
60304110:	e1a06000 	mov	r6, r0
60304114:	e2033001 	and	r3, r3, #1
60304118:	e58d3024 	str	r3, [sp, #36]	; 0x24
6030411c:	e59d3010 	ldr	r3, [sp, #16]
60304120:	e1a01004 	mov	r1, r4
60304124:	e1a0000b 	mov	r0, fp
60304128:	e2433001 	sub	r3, r3, #1
6030412c:	e58d3008 	str	r3, [sp, #8]
60304130:	ebfffc64 	bl	603032c8 <quorem>
60304134:	e1a01008 	mov	r1, r8
60304138:	e58d0014 	str	r0, [sp, #20]
6030413c:	e2809030 	add	r9, r0, #48	; 0x30
60304140:	e1a0000b 	mov	r0, fp
60304144:	eb000575 	bl	60305720 <__mcmp>
60304148:	e1a02006 	mov	r2, r6
6030414c:	e58d0020 	str	r0, [sp, #32]
60304150:	e1a01004 	mov	r1, r4
60304154:	e1a00005 	mov	r0, r5
60304158:	eb000586 	bl	60305778 <__mdiff>
6030415c:	e590200c 	ldr	r2, [r0, #12]
60304160:	e1a07000 	mov	r7, r0
60304164:	e3520000 	cmp	r2, #0
60304168:	159d2018 	ldrne	r2, [sp, #24]
6030416c:	1a000003 	bne	60304180 <_dtoa_r+0xd0c>
60304170:	e1a01000 	mov	r1, r0
60304174:	e1a0000b 	mov	r0, fp
60304178:	eb000568 	bl	60305720 <__mcmp>
6030417c:	e1a02000 	mov	r2, r0
60304180:	e1a01007 	mov	r1, r7
60304184:	e1a00005 	mov	r0, r5
60304188:	e58d202c 	str	r2, [sp, #44]	; 0x2c
6030418c:	eb00037e 	bl	60304f8c <_Bfree>
60304190:	e59d301c 	ldr	r3, [sp, #28]
60304194:	e59d202c 	ldr	r2, [sp, #44]	; 0x2c
60304198:	e59d7010 	ldr	r7, [sp, #16]
6030419c:	e1831002 	orr	r1, r3, r2
603041a0:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
603041a4:	e1913003 	orrs	r3, r1, r3
603041a8:	1a000009 	bne	603041d4 <_dtoa_r+0xd60>
603041ac:	e3590039 	cmp	r9, #57	; 0x39
603041b0:	0a000020 	beq	60304238 <_dtoa_r+0xdc4>
603041b4:	e59d3020 	ldr	r3, [sp, #32]
603041b8:	e3530000 	cmp	r3, #0
603041bc:	da000001 	ble	603041c8 <_dtoa_r+0xd54>
603041c0:	e59d3014 	ldr	r3, [sp, #20]
603041c4:	e2839031 	add	r9, r3, #49	; 0x31
603041c8:	e59d3008 	ldr	r3, [sp, #8]
603041cc:	e5c39000 	strb	r9, [r3]
603041d0:	eaffff7a 	b	60303fc0 <_dtoa_r+0xb4c>
603041d4:	e59d3020 	ldr	r3, [sp, #32]
603041d8:	e3530000 	cmp	r3, #0
603041dc:	ba000005 	blt	603041f8 <_dtoa_r+0xd84>
603041e0:	e59d1020 	ldr	r1, [sp, #32]
603041e4:	e59d301c 	ldr	r3, [sp, #28]
603041e8:	e1833001 	orr	r3, r3, r1
603041ec:	e59d1024 	ldr	r1, [sp, #36]	; 0x24
603041f0:	e1933001 	orrs	r3, r3, r1
603041f4:	1a00001b 	bne	60304268 <_dtoa_r+0xdf4>
603041f8:	e3520000 	cmp	r2, #0
603041fc:	dafffff1 	ble	603041c8 <_dtoa_r+0xd54>
60304200:	e1a0100b 	mov	r1, fp
60304204:	e3a02001 	mov	r2, #1
60304208:	e1a00005 	mov	r0, r5
6030420c:	eb0004f8 	bl	603055f4 <__lshift>
60304210:	e1a01004 	mov	r1, r4
60304214:	e1a0b000 	mov	fp, r0
60304218:	eb000540 	bl	60305720 <__mcmp>
6030421c:	e3500000 	cmp	r0, #0
60304220:	ca000002 	bgt	60304230 <_dtoa_r+0xdbc>
60304224:	1affffe7 	bne	603041c8 <_dtoa_r+0xd54>
60304228:	e3190001 	tst	r9, #1
6030422c:	0affffe5 	beq	603041c8 <_dtoa_r+0xd54>
60304230:	e3590039 	cmp	r9, #57	; 0x39
60304234:	1affffe1 	bne	603041c0 <_dtoa_r+0xd4c>
60304238:	e59d2008 	ldr	r2, [sp, #8]
6030423c:	e3a03039 	mov	r3, #57	; 0x39
60304240:	e5c23000 	strb	r3, [r2]
60304244:	e1a03007 	mov	r3, r7
60304248:	e1a07003 	mov	r7, r3
6030424c:	e2433001 	sub	r3, r3, #1
60304250:	e5572001 	ldrb	r2, [r7, #-1]
60304254:	e3520039 	cmp	r2, #57	; 0x39
60304258:	0a000054 	beq	603043b0 <_dtoa_r+0xf3c>
6030425c:	e2822001 	add	r2, r2, #1
60304260:	e5c32000 	strb	r2, [r3]
60304264:	eaffff55 	b	60303fc0 <_dtoa_r+0xb4c>
60304268:	e3520000 	cmp	r2, #0
6030426c:	da000005 	ble	60304288 <_dtoa_r+0xe14>
60304270:	e3590039 	cmp	r9, #57	; 0x39
60304274:	12893001 	addne	r3, r9, #1
60304278:	159d2008 	ldrne	r2, [sp, #8]
6030427c:	0affffed 	beq	60304238 <_dtoa_r+0xdc4>
60304280:	e5c23000 	strb	r3, [r2]
60304284:	eaffff4d 	b	60303fc0 <_dtoa_r+0xb4c>
60304288:	e59d3010 	ldr	r3, [sp, #16]
6030428c:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
60304290:	e5439001 	strb	r9, [r3, #-1]
60304294:	e1530002 	cmp	r3, r2
60304298:	0a000032 	beq	60304368 <_dtoa_r+0xef4>
6030429c:	e1a0100b 	mov	r1, fp
603042a0:	e3a03000 	mov	r3, #0
603042a4:	e3a0200a 	mov	r2, #10
603042a8:	e1a00005 	mov	r0, r5
603042ac:	eb000355 	bl	60305008 <__multadd>
603042b0:	e3a03000 	mov	r3, #0
603042b4:	e1a0b000 	mov	fp, r0
603042b8:	e3a0200a 	mov	r2, #10
603042bc:	e1a01008 	mov	r1, r8
603042c0:	e1a00005 	mov	r0, r5
603042c4:	e1580006 	cmp	r8, r6
603042c8:	1a000006 	bne	603042e8 <_dtoa_r+0xe74>
603042cc:	eb00034d 	bl	60305008 <__multadd>
603042d0:	e1a08000 	mov	r8, r0
603042d4:	e1a06000 	mov	r6, r0
603042d8:	e59d3010 	ldr	r3, [sp, #16]
603042dc:	e2833001 	add	r3, r3, #1
603042e0:	e58d3010 	str	r3, [sp, #16]
603042e4:	eaffff8c 	b	6030411c <_dtoa_r+0xca8>
603042e8:	eb000346 	bl	60305008 <__multadd>
603042ec:	e1a01006 	mov	r1, r6
603042f0:	e1a08000 	mov	r8, r0
603042f4:	e3a03000 	mov	r3, #0
603042f8:	e3a0200a 	mov	r2, #10
603042fc:	e1a00005 	mov	r0, r5
60304300:	eb000340 	bl	60305008 <__multadd>
60304304:	e1a06000 	mov	r6, r0
60304308:	eafffff2 	b	603042d8 <_dtoa_r+0xe64>
6030430c:	e59d7004 	ldr	r7, [sp, #4]
60304310:	e1a01004 	mov	r1, r4
60304314:	e1a0000b 	mov	r0, fp
60304318:	ebfffbea 	bl	603032c8 <quorem>
6030431c:	e59d3004 	ldr	r3, [sp, #4]
60304320:	e2809030 	add	r9, r0, #48	; 0x30
60304324:	e4c79001 	strb	r9, [r7], #1
60304328:	e0472003 	sub	r2, r7, r3
6030432c:	e1580002 	cmp	r8, r2
60304330:	da000006 	ble	60304350 <_dtoa_r+0xedc>
60304334:	e1a0100b 	mov	r1, fp
60304338:	e3a03000 	mov	r3, #0
6030433c:	e3a0200a 	mov	r2, #10
60304340:	e1a00005 	mov	r0, r5
60304344:	eb00032f 	bl	60305008 <__multadd>
60304348:	e1a0b000 	mov	fp, r0
6030434c:	eaffffef 	b	60304310 <_dtoa_r+0xe9c>
60304350:	e3580000 	cmp	r8, #0
60304354:	e59d3004 	ldr	r3, [sp, #4]
60304358:	c1a07008 	movgt	r7, r8
6030435c:	d3a07001 	movle	r7, #1
60304360:	e0837007 	add	r7, r3, r7
60304364:	e3a08000 	mov	r8, #0
60304368:	e1a0100b 	mov	r1, fp
6030436c:	e3a02001 	mov	r2, #1
60304370:	e1a00005 	mov	r0, r5
60304374:	eb00049e 	bl	603055f4 <__lshift>
60304378:	e1a01004 	mov	r1, r4
6030437c:	e1a0b000 	mov	fp, r0
60304380:	eb0004e6 	bl	60305720 <__mcmp>
60304384:	e3500000 	cmp	r0, #0
60304388:	caffffad 	bgt	60304244 <_dtoa_r+0xdd0>
6030438c:	1a000001 	bne	60304398 <_dtoa_r+0xf24>
60304390:	e3190001 	tst	r9, #1
60304394:	1affffaa 	bne	60304244 <_dtoa_r+0xdd0>
60304398:	e1a03007 	mov	r3, r7
6030439c:	e5772001 	ldrb	r2, [r7, #-1]!
603043a0:	e3520030 	cmp	r2, #48	; 0x30
603043a4:	0afffffb 	beq	60304398 <_dtoa_r+0xf24>
603043a8:	e1a07003 	mov	r7, r3
603043ac:	eaffff03 	b	60303fc0 <_dtoa_r+0xb4c>
603043b0:	e59d2004 	ldr	r2, [sp, #4]
603043b4:	e1520003 	cmp	r2, r3
603043b8:	1affffa2 	bne	60304248 <_dtoa_r+0xdd4>
603043bc:	e28aa001 	add	sl, sl, #1
603043c0:	e3a03031 	mov	r3, #49	; 0x31
603043c4:	eaffffad 	b	60304280 <_dtoa_r+0xe0c>
603043c8:	e59d3074 	ldr	r3, [sp, #116]	; 0x74
603043cc:	e3530000 	cmp	r3, #0
603043d0:	e51f3b2c 	ldr	r3, [pc, #-2860]	; 603038ac <_dtoa_r+0x438>
603043d4:	e58d3004 	str	r3, [sp, #4]
603043d8:	12833008 	addne	r3, r3, #8
603043dc:	1afffc62 	bne	6030356c <_dtoa_r+0xf8>
603043e0:	eafffc63 	b	60303574 <_dtoa_r+0x100>

603043e4 <_fclose_r>:
603043e4:	e92d4070 	push	{r4, r5, r6, lr}
603043e8:	e2514000 	subs	r4, r1, #0
603043ec:	1a000002 	bne	603043fc <_fclose_r+0x18>
603043f0:	e3a06000 	mov	r6, #0
603043f4:	e1a00006 	mov	r0, r6
603043f8:	e8bd8070 	pop	{r4, r5, r6, pc}
603043fc:	e1a05000 	mov	r5, r0
60304400:	e3500000 	cmp	r0, #0
60304404:	0a000003 	beq	60304418 <_fclose_r+0x34>
60304408:	e5903018 	ldr	r3, [r0, #24]
6030440c:	e3530000 	cmp	r3, #0
60304410:	1a000000 	bne	60304418 <_fclose_r+0x34>
60304414:	ebfff2c9 	bl	60300f40 <__sinit>
60304418:	e5943064 	ldr	r3, [r4, #100]	; 0x64
6030441c:	e3130001 	tst	r3, #1
60304420:	1a000004 	bne	60304438 <_fclose_r+0x54>
60304424:	e1d430bc 	ldrh	r3, [r4, #12]
60304428:	e3130c02 	tst	r3, #512	; 0x200
6030442c:	1a000001 	bne	60304438 <_fclose_r+0x54>
60304430:	e5940058 	ldr	r0, [r4, #88]	; 0x58
60304434:	ebfff3a7 	bl	603012d8 <__retarget_lock_acquire_recursive>
60304438:	e1d430fc 	ldrsh	r3, [r4, #12]
6030443c:	e3530000 	cmp	r3, #0
60304440:	1a000005 	bne	6030445c <_fclose_r+0x78>
60304444:	e5940064 	ldr	r0, [r4, #100]	; 0x64
60304448:	e2106001 	ands	r6, r0, #1
6030444c:	1affffe7 	bne	603043f0 <_fclose_r+0xc>
60304450:	e5940058 	ldr	r0, [r4, #88]	; 0x58
60304454:	ebfff3a5 	bl	603012f0 <__retarget_lock_release_recursive>
60304458:	eaffffe5 	b	603043f4 <_fclose_r+0x10>
6030445c:	e1a01004 	mov	r1, r4
60304460:	e1a00005 	mov	r0, r5
60304464:	ebfff190 	bl	60300aac <__sflush_r>
60304468:	e5943030 	ldr	r3, [r4, #48]	; 0x30
6030446c:	e1a06000 	mov	r6, r0
60304470:	e3530000 	cmp	r3, #0
60304474:	0a000004 	beq	6030448c <_fclose_r+0xa8>
60304478:	e5941020 	ldr	r1, [r4, #32]
6030447c:	e1a00005 	mov	r0, r5
60304480:	e12fff33 	blx	r3
60304484:	e3500000 	cmp	r0, #0
60304488:	b3e06000 	mvnlt	r6, #0
6030448c:	e1d430bc 	ldrh	r3, [r4, #12]
60304490:	e3130080 	tst	r3, #128	; 0x80
60304494:	0a000002 	beq	603044a4 <_fclose_r+0xc0>
60304498:	e5941010 	ldr	r1, [r4, #16]
6030449c:	e1a00005 	mov	r0, r5
603044a0:	eb0010d1 	bl	603087ec <__wrap__free_r>
603044a4:	e5941034 	ldr	r1, [r4, #52]	; 0x34
603044a8:	e3510000 	cmp	r1, #0
603044ac:	0a000006 	beq	603044cc <_fclose_r+0xe8>
603044b0:	e2843044 	add	r3, r4, #68	; 0x44
603044b4:	e1510003 	cmp	r1, r3
603044b8:	0a000001 	beq	603044c4 <_fclose_r+0xe0>
603044bc:	e1a00005 	mov	r0, r5
603044c0:	eb0010c9 	bl	603087ec <__wrap__free_r>
603044c4:	e3a03000 	mov	r3, #0
603044c8:	e5843034 	str	r3, [r4, #52]	; 0x34
603044cc:	e5941048 	ldr	r1, [r4, #72]	; 0x48
603044d0:	e3510000 	cmp	r1, #0
603044d4:	0a000003 	beq	603044e8 <_fclose_r+0x104>
603044d8:	e1a00005 	mov	r0, r5
603044dc:	eb0010c2 	bl	603087ec <__wrap__free_r>
603044e0:	e3a03000 	mov	r3, #0
603044e4:	e5843048 	str	r3, [r4, #72]	; 0x48
603044e8:	ebfff288 	bl	60300f10 <__sfp_lock_acquire>
603044ec:	e3a03000 	mov	r3, #0
603044f0:	e1c430bc 	strh	r3, [r4, #12]
603044f4:	e5943064 	ldr	r3, [r4, #100]	; 0x64
603044f8:	e3130001 	tst	r3, #1
603044fc:	1a000001 	bne	60304508 <_fclose_r+0x124>
60304500:	e5940058 	ldr	r0, [r4, #88]	; 0x58
60304504:	ebfff379 	bl	603012f0 <__retarget_lock_release_recursive>
60304508:	e5940058 	ldr	r0, [r4, #88]	; 0x58
6030450c:	ebfff36f 	bl	603012d0 <__retarget_lock_close_recursive>
60304510:	ebfff281 	bl	60300f1c <__sfp_lock_release>
60304514:	eaffffb6 	b	603043f4 <_fclose_r+0x10>

60304518 <fclose>:
60304518:	e59f3008 	ldr	r3, [pc, #8]	; 60304528 <fclose+0x10>
6030451c:	e1a01000 	mov	r1, r0
60304520:	e5930000 	ldr	r0, [r3]
60304524:	eaffffae 	b	603043e4 <_fclose_r>
60304528:	60316000 	.word	0x60316000

6030452c <__fputwc>:
6030452c:	e92d43f7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
60304530:	e1a08000 	mov	r8, r0
60304534:	e1a06001 	mov	r6, r1
60304538:	e1a05002 	mov	r5, r2
6030453c:	eb00018f 	bl	60304b80 <__locale_mb_cur_max>
60304540:	e3500001 	cmp	r0, #1
60304544:	1a000004 	bne	6030455c <__fputwc+0x30>
60304548:	e2463001 	sub	r3, r6, #1
6030454c:	e35300fe 	cmp	r3, #254	; 0xfe
60304550:	95cd6004 	strbls	r6, [sp, #4]
60304554:	91a04000 	movls	r4, r0
60304558:	9a00000e 	bls	60304598 <__fputwc+0x6c>
6030455c:	e285305c 	add	r3, r5, #92	; 0x5c
60304560:	e1a02006 	mov	r2, r6
60304564:	e28d1004 	add	r1, sp, #4
60304568:	e1a00008 	mov	r0, r8
6030456c:	eb000ee0 	bl	603080f4 <_wcrtomb_r>
60304570:	e1a04000 	mov	r4, r0
60304574:	e3700001 	cmn	r0, #1
60304578:	1a000006 	bne	60304598 <__fputwc+0x6c>
6030457c:	e1d530bc 	ldrh	r3, [r5, #12]
60304580:	e1a06000 	mov	r6, r0
60304584:	e3833040 	orr	r3, r3, #64	; 0x40
60304588:	e1c530bc 	strh	r3, [r5, #12]
6030458c:	e1a00006 	mov	r0, r6
60304590:	e28dd00c 	add	sp, sp, #12
60304594:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
60304598:	e3a07000 	mov	r7, #0
6030459c:	e28d9004 	add	r9, sp, #4
603045a0:	e1570004 	cmp	r7, r4
603045a4:	0afffff8 	beq	6030458c <__fputwc+0x60>
603045a8:	e5953008 	ldr	r3, [r5, #8]
603045ac:	e7d71009 	ldrb	r1, [r7, r9]
603045b0:	e2433001 	sub	r3, r3, #1
603045b4:	e5853008 	str	r3, [r5, #8]
603045b8:	e3530000 	cmp	r3, #0
603045bc:	aa000007 	bge	603045e0 <__fputwc+0xb4>
603045c0:	e5952018 	ldr	r2, [r5, #24]
603045c4:	e1530002 	cmp	r3, r2
603045c8:	b3a03000 	movlt	r3, #0
603045cc:	a3a03001 	movge	r3, #1
603045d0:	e351000a 	cmp	r1, #10
603045d4:	03a03000 	moveq	r3, #0
603045d8:	e3530000 	cmp	r3, #0
603045dc:	0a000005 	beq	603045f8 <__fputwc+0xcc>
603045e0:	e5953000 	ldr	r3, [r5]
603045e4:	e2832001 	add	r2, r3, #1
603045e8:	e5852000 	str	r2, [r5]
603045ec:	e5c31000 	strb	r1, [r3]
603045f0:	e2877001 	add	r7, r7, #1
603045f4:	eaffffe9 	b	603045a0 <__fputwc+0x74>
603045f8:	e1a02005 	mov	r2, r5
603045fc:	e1a00008 	mov	r0, r8
60304600:	eb000e6f 	bl	60307fc4 <__swbuf_r>
60304604:	e3700001 	cmn	r0, #1
60304608:	1afffff8 	bne	603045f0 <__fputwc+0xc4>
6030460c:	e1a06000 	mov	r6, r0
60304610:	eaffffdd 	b	6030458c <__fputwc+0x60>

60304614 <_fputwc_r>:
60304614:	e5923064 	ldr	r3, [r2, #100]	; 0x64
60304618:	e92d4070 	push	{r4, r5, r6, lr}
6030461c:	e1a05000 	mov	r5, r0
60304620:	e1a06001 	mov	r6, r1
60304624:	e1a04002 	mov	r4, r2
60304628:	e3130001 	tst	r3, #1
6030462c:	1a000004 	bne	60304644 <_fputwc_r+0x30>
60304630:	e1d230bc 	ldrh	r3, [r2, #12]
60304634:	e3130c02 	tst	r3, #512	; 0x200
60304638:	1a000001 	bne	60304644 <_fputwc_r+0x30>
6030463c:	e5920058 	ldr	r0, [r2, #88]	; 0x58
60304640:	ebfff324 	bl	603012d8 <__retarget_lock_acquire_recursive>
60304644:	e1d430fc 	ldrsh	r3, [r4, #12]
60304648:	e3130a02 	tst	r3, #8192	; 0x2000
6030464c:	1a000004 	bne	60304664 <_fputwc_r+0x50>
60304650:	e3833a02 	orr	r3, r3, #8192	; 0x2000
60304654:	e1c430bc 	strh	r3, [r4, #12]
60304658:	e5943064 	ldr	r3, [r4, #100]	; 0x64
6030465c:	e3833a02 	orr	r3, r3, #8192	; 0x2000
60304660:	e5843064 	str	r3, [r4, #100]	; 0x64
60304664:	e1a00005 	mov	r0, r5
60304668:	e1a02004 	mov	r2, r4
6030466c:	e1a01006 	mov	r1, r6
60304670:	ebffffad 	bl	6030452c <__fputwc>
60304674:	e5943064 	ldr	r3, [r4, #100]	; 0x64
60304678:	e1a05000 	mov	r5, r0
6030467c:	e3130001 	tst	r3, #1
60304680:	1a000004 	bne	60304698 <_fputwc_r+0x84>
60304684:	e1d430bc 	ldrh	r3, [r4, #12]
60304688:	e3130c02 	tst	r3, #512	; 0x200
6030468c:	1a000001 	bne	60304698 <_fputwc_r+0x84>
60304690:	e5940058 	ldr	r0, [r4, #88]	; 0x58
60304694:	ebfff315 	bl	603012f0 <__retarget_lock_release_recursive>
60304698:	e1a00005 	mov	r0, r5
6030469c:	e8bd8070 	pop	{r4, r5, r6, pc}

603046a0 <fputwc>:
603046a0:	e59f303c 	ldr	r3, [pc, #60]	; 603046e4 <fputwc+0x44>
603046a4:	e92d4070 	push	{r4, r5, r6, lr}
603046a8:	e1a05000 	mov	r5, r0
603046ac:	e1a06001 	mov	r6, r1
603046b0:	e5934000 	ldr	r4, [r3]
603046b4:	e3540000 	cmp	r4, #0
603046b8:	0a000004 	beq	603046d0 <fputwc+0x30>
603046bc:	e5943018 	ldr	r3, [r4, #24]
603046c0:	e3530000 	cmp	r3, #0
603046c4:	1a000001 	bne	603046d0 <fputwc+0x30>
603046c8:	e1a00004 	mov	r0, r4
603046cc:	ebfff21b 	bl	60300f40 <__sinit>
603046d0:	e1a02006 	mov	r2, r6
603046d4:	e1a01005 	mov	r1, r5
603046d8:	e1a00004 	mov	r0, r4
603046dc:	e8bd4070 	pop	{r4, r5, r6, lr}
603046e0:	eaffffcb 	b	60304614 <_fputwc_r>
603046e4:	60316000 	.word	0x60316000

603046e8 <__sfvwrite_r>:
603046e8:	e5923008 	ldr	r3, [r2, #8]
603046ec:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
603046f0:	e3530000 	cmp	r3, #0
603046f4:	1a000002 	bne	60304704 <__sfvwrite_r+0x1c>
603046f8:	e3a00000 	mov	r0, #0
603046fc:	e28dd00c 	add	sp, sp, #12
60304700:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
60304704:	e1d130bc 	ldrh	r3, [r1, #12]
60304708:	e1a07000 	mov	r7, r0
6030470c:	e1a04001 	mov	r4, r1
60304710:	e1a09002 	mov	r9, r2
60304714:	e3130008 	tst	r3, #8
60304718:	0a00000d 	beq	60304754 <__sfvwrite_r+0x6c>
6030471c:	e5913010 	ldr	r3, [r1, #16]
60304720:	e3530000 	cmp	r3, #0
60304724:	0a00000a 	beq	60304754 <__sfvwrite_r+0x6c>
60304728:	e1d4a0bc 	ldrh	sl, [r4, #12]
6030472c:	e5998000 	ldr	r8, [r9]
60304730:	e21a5002 	ands	r5, sl, #2
60304734:	1a000024 	bne	603047cc <__sfvwrite_r+0xe4>
60304738:	e21aa001 	ands	sl, sl, #1
6030473c:	11a00005 	movne	r0, r5
60304740:	11a0b005 	movne	fp, r5
60304744:	11a0a005 	movne	sl, r5
60304748:	1a0000a6 	bne	603049e8 <__sfvwrite_r+0x300>
6030474c:	e1a0600a 	mov	r6, sl
60304750:	ea000024 	b	603047e8 <__sfvwrite_r+0x100>
60304754:	e1a01004 	mov	r1, r4
60304758:	e1a00007 	mov	r0, r7
6030475c:	ebfffa79 	bl	60303148 <__swsetup_r>
60304760:	e3500000 	cmp	r0, #0
60304764:	0affffef 	beq	60304728 <__sfvwrite_r+0x40>
60304768:	e3e00000 	mvn	r0, #0
6030476c:	eaffffe2 	b	603046fc <__sfvwrite_r+0x14>
60304770:	e598a000 	ldr	sl, [r8]
60304774:	e2888008 	add	r8, r8, #8
60304778:	e5185004 	ldr	r5, [r8, #-4]
6030477c:	e3550000 	cmp	r5, #0
60304780:	0afffffa 	beq	60304770 <__sfvwrite_r+0x88>
60304784:	e1550006 	cmp	r5, r6
60304788:	e594b028 	ldr	fp, [r4, #40]	; 0x28
6030478c:	31a03005 	movcc	r3, r5
60304790:	21a03006 	movcs	r3, r6
60304794:	e5941020 	ldr	r1, [r4, #32]
60304798:	e1a0200a 	mov	r2, sl
6030479c:	e1a00007 	mov	r0, r7
603047a0:	e12fff3b 	blx	fp
603047a4:	e3500000 	cmp	r0, #0
603047a8:	da00002c 	ble	60304860 <__sfvwrite_r+0x178>
603047ac:	e5993008 	ldr	r3, [r9, #8]
603047b0:	e08aa000 	add	sl, sl, r0
603047b4:	e0455000 	sub	r5, r5, r0
603047b8:	e0430000 	sub	r0, r3, r0
603047bc:	e5890008 	str	r0, [r9, #8]
603047c0:	e3500000 	cmp	r0, #0
603047c4:	1affffec 	bne	6030477c <__sfvwrite_r+0x94>
603047c8:	eaffffca 	b	603046f8 <__sfvwrite_r+0x10>
603047cc:	e3a0a000 	mov	sl, #0
603047d0:	e59f6340 	ldr	r6, [pc, #832]	; 60304b18 <__sfvwrite_r+0x430>
603047d4:	e1a0500a 	mov	r5, sl
603047d8:	eaffffe7 	b	6030477c <__sfvwrite_r+0x94>
603047dc:	e598a000 	ldr	sl, [r8]
603047e0:	e2888008 	add	r8, r8, #8
603047e4:	e5186004 	ldr	r6, [r8, #-4]
603047e8:	e3560000 	cmp	r6, #0
603047ec:	0afffffa 	beq	603047dc <__sfvwrite_r+0xf4>
603047f0:	e1d430bc 	ldrh	r3, [r4, #12]
603047f4:	e5940000 	ldr	r0, [r4]
603047f8:	e5942008 	ldr	r2, [r4, #8]
603047fc:	e3130c02 	tst	r3, #512	; 0x200
60304800:	0a00004c 	beq	60304938 <__sfvwrite_r+0x250>
60304804:	e1520006 	cmp	r2, r6
60304808:	8a000028 	bhi	603048b0 <__sfvwrite_r+0x1c8>
6030480c:	e3130d12 	tst	r3, #1152	; 0x480
60304810:	0a000026 	beq	603048b0 <__sfvwrite_r+0x1c8>
60304814:	e5945014 	ldr	r5, [r4, #20]
60304818:	e5941010 	ldr	r1, [r4, #16]
6030481c:	e0855085 	add	r5, r5, r5, lsl #1
60304820:	e040b001 	sub	fp, r0, r1
60304824:	e28b2001 	add	r2, fp, #1
60304828:	e0855fa5 	add	r5, r5, r5, lsr #31
6030482c:	e0822006 	add	r2, r2, r6
60304830:	e1a050c5 	asr	r5, r5, #1
60304834:	e1550002 	cmp	r5, r2
60304838:	31a05002 	movcc	r5, r2
6030483c:	e3130b01 	tst	r3, #1024	; 0x400
60304840:	0a000030 	beq	60304908 <__sfvwrite_r+0x220>
60304844:	e1a01005 	mov	r1, r5
60304848:	e1a00007 	mov	r0, r7
6030484c:	eb000fe1 	bl	603087d8 <__wrap__malloc_r>
60304850:	e2503000 	subs	r3, r0, #0
60304854:	1a000005 	bne	60304870 <__sfvwrite_r+0x188>
60304858:	e3a0300c 	mov	r3, #12
6030485c:	e5873000 	str	r3, [r7]
60304860:	e1d430bc 	ldrh	r3, [r4, #12]
60304864:	e3833040 	orr	r3, r3, #64	; 0x40
60304868:	e1c430bc 	strh	r3, [r4, #12]
6030486c:	eaffffbd 	b	60304768 <__sfvwrite_r+0x80>
60304870:	e1a0200b 	mov	r2, fp
60304874:	e5941010 	ldr	r1, [r4, #16]
60304878:	e58d3004 	str	r3, [sp, #4]
6030487c:	ebfff29f 	bl	60301300 <memcpy>
60304880:	e1d420bc 	ldrh	r2, [r4, #12]
60304884:	e59d3004 	ldr	r3, [sp, #4]
60304888:	e3c22d12 	bic	r2, r2, #1152	; 0x480
6030488c:	e3822080 	orr	r2, r2, #128	; 0x80
60304890:	e1c420bc 	strh	r2, [r4, #12]
60304894:	e1a02006 	mov	r2, r6
60304898:	e5843010 	str	r3, [r4, #16]
6030489c:	e5845014 	str	r5, [r4, #20]
603048a0:	e083300b 	add	r3, r3, fp
603048a4:	e045500b 	sub	r5, r5, fp
603048a8:	e5843000 	str	r3, [r4]
603048ac:	e5845008 	str	r5, [r4, #8]
603048b0:	e1520006 	cmp	r2, r6
603048b4:	e5940000 	ldr	r0, [r4]
603048b8:	21a02006 	movcs	r2, r6
603048bc:	e1a0100a 	mov	r1, sl
603048c0:	e58d2004 	str	r2, [sp, #4]
603048c4:	ebfff3c5 	bl	603017e0 <memmove>
603048c8:	e5943008 	ldr	r3, [r4, #8]
603048cc:	e1a05006 	mov	r5, r6
603048d0:	e59d2004 	ldr	r2, [sp, #4]
603048d4:	e0433002 	sub	r3, r3, r2
603048d8:	e5843008 	str	r3, [r4, #8]
603048dc:	e5943000 	ldr	r3, [r4]
603048e0:	e0832002 	add	r2, r3, r2
603048e4:	e5842000 	str	r2, [r4]
603048e8:	e5990008 	ldr	r0, [r9, #8]
603048ec:	e08aa005 	add	sl, sl, r5
603048f0:	e0466005 	sub	r6, r6, r5
603048f4:	e0405005 	sub	r5, r0, r5
603048f8:	e5895008 	str	r5, [r9, #8]
603048fc:	e3550000 	cmp	r5, #0
60304900:	1affffb8 	bne	603047e8 <__sfvwrite_r+0x100>
60304904:	eaffff7b 	b	603046f8 <__sfvwrite_r+0x10>
60304908:	e1a02005 	mov	r2, r5
6030490c:	e1a00007 	mov	r0, r7
60304910:	eb000fb2 	bl	603087e0 <__wrap__realloc_r>
60304914:	e2503000 	subs	r3, r0, #0
60304918:	1affffdd 	bne	60304894 <__sfvwrite_r+0x1ac>
6030491c:	e5941010 	ldr	r1, [r4, #16]
60304920:	e1a00007 	mov	r0, r7
60304924:	eb000fb0 	bl	603087ec <__wrap__free_r>
60304928:	e1d430bc 	ldrh	r3, [r4, #12]
6030492c:	e3c33080 	bic	r3, r3, #128	; 0x80
60304930:	e1c430bc 	strh	r3, [r4, #12]
60304934:	eaffffc7 	b	60304858 <__sfvwrite_r+0x170>
60304938:	e5943010 	ldr	r3, [r4, #16]
6030493c:	e1530000 	cmp	r3, r0
60304940:	3a000002 	bcc	60304950 <__sfvwrite_r+0x268>
60304944:	e5945014 	ldr	r5, [r4, #20]
60304948:	e1550006 	cmp	r5, r6
6030494c:	9a000013 	bls	603049a0 <__sfvwrite_r+0x2b8>
60304950:	e1520006 	cmp	r2, r6
60304954:	e1a0100a 	mov	r1, sl
60304958:	31a05002 	movcc	r5, r2
6030495c:	21a05006 	movcs	r5, r6
60304960:	e1a02005 	mov	r2, r5
60304964:	ebfff39d 	bl	603017e0 <memmove>
60304968:	e5943008 	ldr	r3, [r4, #8]
6030496c:	e5942000 	ldr	r2, [r4]
60304970:	e0433005 	sub	r3, r3, r5
60304974:	e5843008 	str	r3, [r4, #8]
60304978:	e0822005 	add	r2, r2, r5
6030497c:	e3530000 	cmp	r3, #0
60304980:	e5842000 	str	r2, [r4]
60304984:	1affffd7 	bne	603048e8 <__sfvwrite_r+0x200>
60304988:	e1a01004 	mov	r1, r4
6030498c:	e1a00007 	mov	r0, r7
60304990:	ebfff0c2 	bl	60300ca0 <_fflush_r>
60304994:	e3500000 	cmp	r0, #0
60304998:	0affffd2 	beq	603048e8 <__sfvwrite_r+0x200>
6030499c:	eaffffaf 	b	60304860 <__sfvwrite_r+0x178>
603049a0:	e376010a 	cmn	r6, #-2147483646	; 0x80000002
603049a4:	e1a01005 	mov	r1, r5
603049a8:	91a00006 	movls	r0, r6
603049ac:	83e00102 	mvnhi	r0, #-2147483648	; 0x80000000
603049b0:	eb000e47 	bl	603082d4 <__divsi3>
603049b4:	e594b028 	ldr	fp, [r4, #40]	; 0x28
603049b8:	e0030095 	mul	r3, r5, r0
603049bc:	e5941020 	ldr	r1, [r4, #32]
603049c0:	e1a0200a 	mov	r2, sl
603049c4:	e1a00007 	mov	r0, r7
603049c8:	e12fff3b 	blx	fp
603049cc:	e2505000 	subs	r5, r0, #0
603049d0:	caffffc4 	bgt	603048e8 <__sfvwrite_r+0x200>
603049d4:	eaffffa1 	b	60304860 <__sfvwrite_r+0x178>
603049d8:	e598b000 	ldr	fp, [r8]
603049dc:	e3a00000 	mov	r0, #0
603049e0:	e598a004 	ldr	sl, [r8, #4]
603049e4:	e2888008 	add	r8, r8, #8
603049e8:	e35a0000 	cmp	sl, #0
603049ec:	0afffff9 	beq	603049d8 <__sfvwrite_r+0x2f0>
603049f0:	e3500000 	cmp	r0, #0
603049f4:	1a000007 	bne	60304a18 <__sfvwrite_r+0x330>
603049f8:	e1a0200a 	mov	r2, sl
603049fc:	e3a0100a 	mov	r1, #10
60304a00:	e1a0000b 	mov	r0, fp
60304a04:	fa0000ed 	blx	60304dc0 <memchr>
60304a08:	e2505000 	subs	r5, r0, #0
60304a0c:	12855001 	addne	r5, r5, #1
60304a10:	028a5001 	addeq	r5, sl, #1
60304a14:	1045500b 	subne	r5, r5, fp
60304a18:	e5941010 	ldr	r1, [r4, #16]
60304a1c:	e155000a 	cmp	r5, sl
60304a20:	e5943014 	ldr	r3, [r4, #20]
60304a24:	31a02005 	movcc	r2, r5
60304a28:	e5946008 	ldr	r6, [r4, #8]
60304a2c:	21a0200a 	movcs	r2, sl
60304a30:	e5940000 	ldr	r0, [r4]
60304a34:	e0836006 	add	r6, r3, r6
60304a38:	e1500001 	cmp	r0, r1
60304a3c:	93a01000 	movls	r1, #0
60304a40:	83a01001 	movhi	r1, #1
60304a44:	e1520006 	cmp	r2, r6
60304a48:	d3a01000 	movle	r1, #0
60304a4c:	e3510000 	cmp	r1, #0
60304a50:	0a00001a 	beq	60304ac0 <__sfvwrite_r+0x3d8>
60304a54:	e1a02006 	mov	r2, r6
60304a58:	e1a0100b 	mov	r1, fp
60304a5c:	ebfff35f 	bl	603017e0 <memmove>
60304a60:	e5943000 	ldr	r3, [r4]
60304a64:	e1a01004 	mov	r1, r4
60304a68:	e1a00007 	mov	r0, r7
60304a6c:	e0833006 	add	r3, r3, r6
60304a70:	e5843000 	str	r3, [r4]
60304a74:	ebfff089 	bl	60300ca0 <_fflush_r>
60304a78:	e3500000 	cmp	r0, #0
60304a7c:	1affff77 	bne	60304860 <__sfvwrite_r+0x178>
60304a80:	e0555006 	subs	r5, r5, r6
60304a84:	13a00001 	movne	r0, #1
60304a88:	1a000004 	bne	60304aa0 <__sfvwrite_r+0x3b8>
60304a8c:	e1a01004 	mov	r1, r4
60304a90:	e1a00007 	mov	r0, r7
60304a94:	ebfff081 	bl	60300ca0 <_fflush_r>
60304a98:	e3500000 	cmp	r0, #0
60304a9c:	1affff6f 	bne	60304860 <__sfvwrite_r+0x178>
60304aa0:	e5992008 	ldr	r2, [r9, #8]
60304aa4:	e08bb006 	add	fp, fp, r6
60304aa8:	e04aa006 	sub	sl, sl, r6
60304aac:	e0426006 	sub	r6, r2, r6
60304ab0:	e5896008 	str	r6, [r9, #8]
60304ab4:	e3560000 	cmp	r6, #0
60304ab8:	1affffca 	bne	603049e8 <__sfvwrite_r+0x300>
60304abc:	eaffff0d 	b	603046f8 <__sfvwrite_r+0x10>
60304ac0:	e1530002 	cmp	r3, r2
60304ac4:	ca000007 	bgt	60304ae8 <__sfvwrite_r+0x400>
60304ac8:	e5946028 	ldr	r6, [r4, #40]	; 0x28
60304acc:	e1a0200b 	mov	r2, fp
60304ad0:	e5941020 	ldr	r1, [r4, #32]
60304ad4:	e1a00007 	mov	r0, r7
60304ad8:	e12fff36 	blx	r6
60304adc:	e2506000 	subs	r6, r0, #0
60304ae0:	caffffe6 	bgt	60304a80 <__sfvwrite_r+0x398>
60304ae4:	eaffff5d 	b	60304860 <__sfvwrite_r+0x178>
60304ae8:	e1a0100b 	mov	r1, fp
60304aec:	e58d2004 	str	r2, [sp, #4]
60304af0:	ebfff33a 	bl	603017e0 <memmove>
60304af4:	e59d2004 	ldr	r2, [sp, #4]
60304af8:	e5943008 	ldr	r3, [r4, #8]
60304afc:	e1a06002 	mov	r6, r2
60304b00:	e0433002 	sub	r3, r3, r2
60304b04:	e5843008 	str	r3, [r4, #8]
60304b08:	e5943000 	ldr	r3, [r4]
60304b0c:	e0833002 	add	r3, r3, r2
60304b10:	e5843000 	str	r3, [r4]
60304b14:	eaffffd9 	b	60304a80 <__sfvwrite_r+0x398>
60304b18:	7ffffc00 	.word	0x7ffffc00

60304b1c <_setlocale_r>:
60304b1c:	e92d4010 	push	{r4, lr}
60304b20:	e2524000 	subs	r4, r2, #0
60304b24:	1a000001 	bne	60304b30 <_setlocale_r+0x14>
60304b28:	e59f0044 	ldr	r0, [pc, #68]	; 60304b74 <_setlocale_r+0x58>
60304b2c:	e8bd8010 	pop	{r4, pc}
60304b30:	e59f1040 	ldr	r1, [pc, #64]	; 60304b78 <_setlocale_r+0x5c>
60304b34:	e1a00004 	mov	r0, r4
60304b38:	fafff43a 	blx	60301c28 <strcmp>
60304b3c:	e3500000 	cmp	r0, #0
60304b40:	0afffff8 	beq	60304b28 <_setlocale_r+0xc>
60304b44:	e59f1028 	ldr	r1, [pc, #40]	; 60304b74 <_setlocale_r+0x58>
60304b48:	e1a00004 	mov	r0, r4
60304b4c:	fafff435 	blx	60301c28 <strcmp>
60304b50:	e3500000 	cmp	r0, #0
60304b54:	0afffff3 	beq	60304b28 <_setlocale_r+0xc>
60304b58:	e59f101c 	ldr	r1, [pc, #28]	; 60304b7c <_setlocale_r+0x60>
60304b5c:	e1a00004 	mov	r0, r4
60304b60:	fafff430 	blx	60301c28 <strcmp>
60304b64:	e3500000 	cmp	r0, #0
60304b68:	0affffee 	beq	60304b28 <_setlocale_r+0xc>
60304b6c:	e3a00000 	mov	r0, #0
60304b70:	e8bd8010 	pop	{r4, pc}
60304b74:	60315a54 	.word	0x60315a54
60304b78:	60315a56 	.word	0x60315a56
60304b7c:	603159b3 	.word	0x603159b3

60304b80 <__locale_mb_cur_max>:
60304b80:	e59f3004 	ldr	r3, [pc, #4]	; 60304b8c <__locale_mb_cur_max+0xc>
60304b84:	e5d30128 	ldrb	r0, [r3, #296]	; 0x128
60304b88:	e12fff1e 	bx	lr
60304b8c:	603160f4 	.word	0x603160f4

60304b90 <setlocale>:
60304b90:	e59f300c 	ldr	r3, [pc, #12]	; 60304ba4 <setlocale+0x14>
60304b94:	e1a02001 	mov	r2, r1
60304b98:	e1a01000 	mov	r1, r0
60304b9c:	e5930000 	ldr	r0, [r3]
60304ba0:	eaffffdd 	b	60304b1c <_setlocale_r>
60304ba4:	60316000 	.word	0x60316000

60304ba8 <__localeconv_l>:
60304ba8:	e28000f0 	add	r0, r0, #240	; 0xf0
60304bac:	e12fff1e 	bx	lr

60304bb0 <_localeconv_r>:
60304bb0:	e59f0000 	ldr	r0, [pc]	; 60304bb8 <_localeconv_r+0x8>
60304bb4:	e12fff1e 	bx	lr
60304bb8:	603161e4 	.word	0x603161e4

60304bbc <localeconv>:
60304bbc:	e59f0000 	ldr	r0, [pc]	; 60304bc4 <localeconv+0x8>
60304bc0:	e12fff1e 	bx	lr
60304bc4:	603161e4 	.word	0x603161e4

60304bc8 <_lseek_r>:
60304bc8:	e92d4070 	push	{r4, r5, r6, lr}
60304bcc:	e1a04000 	mov	r4, r0
60304bd0:	e59f502c 	ldr	r5, [pc, #44]	; 60304c04 <_lseek_r+0x3c>
60304bd4:	e1a00001 	mov	r0, r1
60304bd8:	e1a01002 	mov	r1, r2
60304bdc:	e3a02000 	mov	r2, #0
60304be0:	e5852000 	str	r2, [r5]
60304be4:	e1a02003 	mov	r2, r3
60304be8:	eb001007 	bl	60308c0c <_lseek>
60304bec:	e3700001 	cmn	r0, #1
60304bf0:	18bd8070 	popne	{r4, r5, r6, pc}
60304bf4:	e5953000 	ldr	r3, [r5]
60304bf8:	e3530000 	cmp	r3, #0
60304bfc:	15843000 	strne	r3, [r4]
60304c00:	e8bd8070 	pop	{r4, r5, r6, pc}
60304c04:	60323160 	.word	0x60323160

60304c08 <__swhatbuf_r>:
60304c08:	e92d4070 	push	{r4, r5, r6, lr}
60304c0c:	e1a06001 	mov	r6, r1
60304c10:	e1d110fe 	ldrsh	r1, [r1, #14]
60304c14:	e24dd058 	sub	sp, sp, #88	; 0x58
60304c18:	e1a04002 	mov	r4, r2
60304c1c:	e1a05003 	mov	r5, r3
60304c20:	e3510000 	cmp	r1, #0
60304c24:	aa00000a 	bge	60304c54 <__swhatbuf_r+0x4c>
60304c28:	e1d610fc 	ldrsh	r1, [r6, #12]
60304c2c:	e3a03000 	mov	r3, #0
60304c30:	e5853000 	str	r3, [r5]
60304c34:	e2110080 	ands	r0, r1, #128	; 0x80
60304c38:	13a02040 	movne	r2, #64	; 0x40
60304c3c:	11a00003 	movne	r0, r3
60304c40:	15842000 	strne	r2, [r4]
60304c44:	03a03b01 	moveq	r3, #1024	; 0x400
60304c48:	05843000 	streq	r3, [r4]
60304c4c:	e28dd058 	add	sp, sp, #88	; 0x58
60304c50:	e8bd8070 	pop	{r4, r5, r6, pc}
60304c54:	e1a0200d 	mov	r2, sp
60304c58:	eb000d4e 	bl	60308198 <_fstat_r>
60304c5c:	e3500000 	cmp	r0, #0
60304c60:	bafffff0 	blt	60304c28 <__swhatbuf_r+0x20>
60304c64:	e59d2004 	ldr	r2, [sp, #4]
60304c68:	e3a03b01 	mov	r3, #1024	; 0x400
60304c6c:	e3a00b02 	mov	r0, #2048	; 0x800
60304c70:	e2022a0f 	and	r2, r2, #61440	; 0xf000
60304c74:	e2422a02 	sub	r2, r2, #8192	; 0x2000
60304c78:	e16f2f12 	clz	r2, r2
60304c7c:	e1a022a2 	lsr	r2, r2, #5
60304c80:	e5852000 	str	r2, [r5]
60304c84:	e5843000 	str	r3, [r4]
60304c88:	eaffffef 	b	60304c4c <__swhatbuf_r+0x44>

60304c8c <__smakebuf_r>:
60304c8c:	e1d130bc 	ldrh	r3, [r1, #12]
60304c90:	e92d4073 	push	{r0, r1, r4, r5, r6, lr}
60304c94:	e1a04001 	mov	r4, r1
60304c98:	e3130002 	tst	r3, #2
60304c9c:	0a000006 	beq	60304cbc <__smakebuf_r+0x30>
60304ca0:	e2843047 	add	r3, r4, #71	; 0x47
60304ca4:	e5843000 	str	r3, [r4]
60304ca8:	e5843010 	str	r3, [r4, #16]
60304cac:	e3a03001 	mov	r3, #1
60304cb0:	e5843014 	str	r3, [r4, #20]
60304cb4:	e28dd008 	add	sp, sp, #8
60304cb8:	e8bd8070 	pop	{r4, r5, r6, pc}
60304cbc:	e28d3004 	add	r3, sp, #4
60304cc0:	e1a05000 	mov	r5, r0
60304cc4:	e1a0200d 	mov	r2, sp
60304cc8:	ebffffce 	bl	60304c08 <__swhatbuf_r>
60304ccc:	e59d1000 	ldr	r1, [sp]
60304cd0:	e1a06000 	mov	r6, r0
60304cd4:	e1a00005 	mov	r0, r5
60304cd8:	eb000ebe 	bl	603087d8 <__wrap__malloc_r>
60304cdc:	e2503000 	subs	r3, r0, #0
60304ce0:	1a000006 	bne	60304d00 <__smakebuf_r+0x74>
60304ce4:	e1d430fc 	ldrsh	r3, [r4, #12]
60304ce8:	e3130c02 	tst	r3, #512	; 0x200
60304cec:	1afffff0 	bne	60304cb4 <__smakebuf_r+0x28>
60304cf0:	e3c33003 	bic	r3, r3, #3
60304cf4:	e3833002 	orr	r3, r3, #2
60304cf8:	e1c430bc 	strh	r3, [r4, #12]
60304cfc:	eaffffe7 	b	60304ca0 <__smakebuf_r+0x14>
60304d00:	e59f2058 	ldr	r2, [pc, #88]	; 60304d60 <__smakebuf_r+0xd4>
60304d04:	e5852028 	str	r2, [r5, #40]	; 0x28
60304d08:	e5843000 	str	r3, [r4]
60304d0c:	e5843010 	str	r3, [r4, #16]
60304d10:	e59d3000 	ldr	r3, [sp]
60304d14:	e1d420bc 	ldrh	r2, [r4, #12]
60304d18:	e5843014 	str	r3, [r4, #20]
60304d1c:	e59d3004 	ldr	r3, [sp, #4]
60304d20:	e3822080 	orr	r2, r2, #128	; 0x80
60304d24:	e1c420bc 	strh	r2, [r4, #12]
60304d28:	e3530000 	cmp	r3, #0
60304d2c:	0a000007 	beq	60304d50 <__smakebuf_r+0xc4>
60304d30:	e1d410fe 	ldrsh	r1, [r4, #14]
60304d34:	e1a00005 	mov	r0, r5
60304d38:	eb000d25 	bl	603081d4 <_isatty_r>
60304d3c:	e3500000 	cmp	r0, #0
60304d40:	11d430bc 	ldrhne	r3, [r4, #12]
60304d44:	13c33003 	bicne	r3, r3, #3
60304d48:	13833001 	orrne	r3, r3, #1
60304d4c:	11c430bc 	strhne	r3, [r4, #12]
60304d50:	e1d400bc 	ldrh	r0, [r4, #12]
60304d54:	e1800006 	orr	r0, r0, r6
60304d58:	e1c400bc 	strh	r0, [r4, #12]
60304d5c:	eaffffd4 	b	60304cb4 <__smakebuf_r+0x28>
60304d60:	60300de8 	.word	0x60300de8

60304d64 <_mbtowc_r>:
60304d64:	e59fc010 	ldr	ip, [pc, #16]	; 60304d7c <_mbtowc_r+0x18>
60304d68:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
60304d6c:	e59ce0e4 	ldr	lr, [ip, #228]	; 0xe4
60304d70:	e1a0c00e 	mov	ip, lr
60304d74:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
60304d78:	e12fff1c 	bx	ip
60304d7c:	603160f4 	.word	0x603160f4

60304d80 <__ascii_mbtowc>:
60304d80:	e3510000 	cmp	r1, #0
60304d84:	e24dd008 	sub	sp, sp, #8
60304d88:	028d1004 	addeq	r1, sp, #4
60304d8c:	e3520000 	cmp	r2, #0
60304d90:	01a00002 	moveq	r0, r2
60304d94:	0a000007 	beq	60304db8 <__ascii_mbtowc+0x38>
60304d98:	e3530000 	cmp	r3, #0
60304d9c:	03e00001 	mvneq	r0, #1
60304da0:	0a000004 	beq	60304db8 <__ascii_mbtowc+0x38>
60304da4:	e5d23000 	ldrb	r3, [r2]
60304da8:	e5813000 	str	r3, [r1]
60304dac:	e5d22000 	ldrb	r2, [r2]
60304db0:	e2520000 	subs	r0, r2, #0
60304db4:	13a00001 	movne	r0, #1
60304db8:	e28dd008 	add	sp, sp, #8
60304dbc:	e12fff1e 	bx	lr

60304dc0 <memchr>:
60304dc0:	2a07      	cmp	r2, #7
60304dc2:	d80a      	bhi.n	60304dda <memchr+0x1a>
60304dc4:	f001 01ff 	and.w	r1, r1, #255	; 0xff
60304dc8:	3a01      	subs	r2, #1
60304dca:	d36a      	bcc.n	60304ea2 <memchr+0xe2>
60304dcc:	f810 3b01 	ldrb.w	r3, [r0], #1
60304dd0:	428b      	cmp	r3, r1
60304dd2:	d1f9      	bne.n	60304dc8 <memchr+0x8>
60304dd4:	f1a0 0001 	sub.w	r0, r0, #1
60304dd8:	4770      	bx	lr
60304dda:	eee0 1b10 	vdup.8	q0, r1
60304dde:	f240 2301 	movw	r3, #513	; 0x201
60304de2:	f6c0 0304 	movt	r3, #2052	; 0x804
60304de6:	ea4f 1c03 	mov.w	ip, r3, lsl #4
60304dea:	ec4c 3b16 	vmov	d6, r3, ip
60304dee:	ec4c 3b17 	vmov	d7, r3, ip
60304df2:	f020 011f 	bic.w	r1, r0, #31
60304df6:	f010 0c1f 	ands.w	ip, r0, #31
60304dfa:	d01c      	beq.n	60304e36 <memchr+0x76>
60304dfc:	f921 223d 	vld1.8	{d2-d5}, [r1 :256]!
60304e00:	f1ac 0320 	sub.w	r3, ip, #32
60304e04:	18d2      	adds	r2, r2, r3
60304e06:	ff02 2850 	vceq.i8	q1, q1, q0
60304e0a:	ff04 4850 	vceq.i8	q2, q2, q0
60304e0e:	ef02 2156 	vand	q1, q1, q3
60304e12:	ef04 4156 	vand	q2, q2, q3
60304e16:	ef02 2b13 	vpadd.i8	d2, d2, d3
60304e1a:	ef04 4b15 	vpadd.i8	d4, d4, d5
60304e1e:	ef02 2b14 	vpadd.i8	d2, d2, d4
60304e22:	ef02 2b12 	vpadd.i8	d2, d2, d2
60304e26:	ee12 0b10 	vmov.32	r0, d2[0]
60304e2a:	fa20 f00c 	lsr.w	r0, r0, ip
60304e2e:	fa00 f00c 	lsl.w	r0, r0, ip
60304e32:	d927      	bls.n	60304e84 <memchr+0xc4>
60304e34:	bb68      	cbnz	r0, 60304e92 <memchr+0xd2>
60304e36:	ed2d 8b04 	vpush	{d8-d9}
60304e3a:	bf00      	nop
60304e3c:	f3af 8000 	nop.w
60304e40:	f921 223d 	vld1.8	{d2-d5}, [r1 :256]!
60304e44:	3a20      	subs	r2, #32
60304e46:	ff02 2850 	vceq.i8	q1, q1, q0
60304e4a:	ff04 4850 	vceq.i8	q2, q2, q0
60304e4e:	d907      	bls.n	60304e60 <memchr+0xa0>
60304e50:	ef22 8154 	vorr	q4, q1, q2
60304e54:	ef28 8119 	vorr	d8, d8, d9
60304e58:	ec53 0b18 	vmov	r0, r3, d8
60304e5c:	4318      	orrs	r0, r3
60304e5e:	d0ef      	beq.n	60304e40 <memchr+0x80>
60304e60:	ecbd 8b04 	vpop	{d8-d9}
60304e64:	ef02 2156 	vand	q1, q1, q3
60304e68:	ef04 4156 	vand	q2, q2, q3
60304e6c:	ef02 2b13 	vpadd.i8	d2, d2, d3
60304e70:	ef04 4b15 	vpadd.i8	d4, d4, d5
60304e74:	ef02 2b14 	vpadd.i8	d2, d2, d4
60304e78:	ef02 2b12 	vpadd.i8	d2, d2, d2
60304e7c:	ee12 0b10 	vmov.32	r0, d2[0]
60304e80:	b178      	cbz	r0, 60304ea2 <memchr+0xe2>
60304e82:	d806      	bhi.n	60304e92 <memchr+0xd2>
60304e84:	f1c2 0200 	rsb	r2, r2, #0
60304e88:	fa00 f002 	lsl.w	r0, r0, r2
60304e8c:	40d0      	lsrs	r0, r2
60304e8e:	bf08      	it	eq
60304e90:	2100      	moveq	r1, #0
60304e92:	fa90 f0a0 	rbit	r0, r0
60304e96:	f1a1 0120 	sub.w	r1, r1, #32
60304e9a:	fab0 f080 	clz	r0, r0
60304e9e:	4408      	add	r0, r1
60304ea0:	4770      	bx	lr
60304ea2:	f04f 0000 	mov.w	r0, #0
60304ea6:	4770      	bx	lr

60304ea8 <_Balloc>:
60304ea8:	e92d4070 	push	{r4, r5, r6, lr}
60304eac:	e1a04000 	mov	r4, r0
60304eb0:	e5906024 	ldr	r6, [r0, #36]	; 0x24
60304eb4:	e1a05001 	mov	r5, r1
60304eb8:	e3560000 	cmp	r6, #0
60304ebc:	1a00000d 	bne	60304ef8 <_Balloc+0x50>
60304ec0:	e3a00010 	mov	r0, #16
60304ec4:	eb000e42 	bl	603087d4 <__wrap_malloc>
60304ec8:	e1a02000 	mov	r2, r0
60304ecc:	e3500000 	cmp	r0, #0
60304ed0:	e5840024 	str	r0, [r4, #36]	; 0x24
60304ed4:	1a000003 	bne	60304ee8 <_Balloc+0x40>
60304ed8:	e59f30a4 	ldr	r3, [pc, #164]	; 60304f84 <_Balloc+0xdc>
60304edc:	e3a01066 	mov	r1, #102	; 0x66
60304ee0:	e59f00a0 	ldr	r0, [pc, #160]	; 60304f88 <_Balloc+0xe0>
60304ee4:	ebffeed8 	bl	60300a4c <__assert_func>
60304ee8:	e5806004 	str	r6, [r0, #4]
60304eec:	e5806008 	str	r6, [r0, #8]
60304ef0:	e5806000 	str	r6, [r0]
60304ef4:	e580600c 	str	r6, [r0, #12]
60304ef8:	e5946024 	ldr	r6, [r4, #36]	; 0x24
60304efc:	e596300c 	ldr	r3, [r6, #12]
60304f00:	e3530000 	cmp	r3, #0
60304f04:	0a000013 	beq	60304f58 <_Balloc+0xb0>
60304f08:	e5943024 	ldr	r3, [r4, #36]	; 0x24
60304f0c:	e593300c 	ldr	r3, [r3, #12]
60304f10:	e7930105 	ldr	r0, [r3, r5, lsl #2]
60304f14:	e3500000 	cmp	r0, #0
60304f18:	15902000 	ldrne	r2, [r0]
60304f1c:	17832105 	strne	r2, [r3, r5, lsl #2]
60304f20:	1a000008 	bne	60304f48 <_Balloc+0xa0>
60304f24:	e3a01001 	mov	r1, #1
60304f28:	e1a00004 	mov	r0, r4
60304f2c:	e1a06511 	lsl	r6, r1, r5
60304f30:	e2862005 	add	r2, r6, #5
60304f34:	e1a02102 	lsl	r2, r2, #2
60304f38:	eb000e2d 	bl	603087f4 <__wrap__calloc_r>
60304f3c:	e3500000 	cmp	r0, #0
60304f40:	0a00000d 	beq	60304f7c <_Balloc+0xd4>
60304f44:	e9800060 	stmib	r0, {r5, r6}
60304f48:	e3a03000 	mov	r3, #0
60304f4c:	e5803010 	str	r3, [r0, #16]
60304f50:	e580300c 	str	r3, [r0, #12]
60304f54:	e8bd8070 	pop	{r4, r5, r6, pc}
60304f58:	e3a02021 	mov	r2, #33	; 0x21
60304f5c:	e3a01004 	mov	r1, #4
60304f60:	e1a00004 	mov	r0, r4
60304f64:	eb000e22 	bl	603087f4 <__wrap__calloc_r>
60304f68:	e5943024 	ldr	r3, [r4, #36]	; 0x24
60304f6c:	e586000c 	str	r0, [r6, #12]
60304f70:	e593300c 	ldr	r3, [r3, #12]
60304f74:	e3530000 	cmp	r3, #0
60304f78:	1affffe2 	bne	60304f08 <_Balloc+0x60>
60304f7c:	e3a00000 	mov	r0, #0
60304f80:	e8bd8070 	pop	{r4, r5, r6, pc}
60304f84:	603159e5 	.word	0x603159e5
60304f88:	60315a5e 	.word	0x60315a5e

60304f8c <_Bfree>:
60304f8c:	e92d4070 	push	{r4, r5, r6, lr}
60304f90:	e1a05000 	mov	r5, r0
60304f94:	e5906024 	ldr	r6, [r0, #36]	; 0x24
60304f98:	e1a04001 	mov	r4, r1
60304f9c:	e3560000 	cmp	r6, #0
60304fa0:	1a00000d 	bne	60304fdc <_Bfree+0x50>
60304fa4:	e3a00010 	mov	r0, #16
60304fa8:	eb000e09 	bl	603087d4 <__wrap_malloc>
60304fac:	e1a02000 	mov	r2, r0
60304fb0:	e3500000 	cmp	r0, #0
60304fb4:	e5850024 	str	r0, [r5, #36]	; 0x24
60304fb8:	1a000003 	bne	60304fcc <_Bfree+0x40>
60304fbc:	e59f303c 	ldr	r3, [pc, #60]	; 60305000 <_Bfree+0x74>
60304fc0:	e3a0108a 	mov	r1, #138	; 0x8a
60304fc4:	e59f0038 	ldr	r0, [pc, #56]	; 60305004 <_Bfree+0x78>
60304fc8:	ebffee9f 	bl	60300a4c <__assert_func>
60304fcc:	e5806004 	str	r6, [r0, #4]
60304fd0:	e5806008 	str	r6, [r0, #8]
60304fd4:	e5806000 	str	r6, [r0]
60304fd8:	e580600c 	str	r6, [r0, #12]
60304fdc:	e3540000 	cmp	r4, #0
60304fe0:	08bd8070 	popeq	{r4, r5, r6, pc}
60304fe4:	e5953024 	ldr	r3, [r5, #36]	; 0x24
60304fe8:	e5942004 	ldr	r2, [r4, #4]
60304fec:	e593300c 	ldr	r3, [r3, #12]
60304ff0:	e7931102 	ldr	r1, [r3, r2, lsl #2]
60304ff4:	e5841000 	str	r1, [r4]
60304ff8:	e7834102 	str	r4, [r3, r2, lsl #2]
60304ffc:	e8bd8070 	pop	{r4, r5, r6, pc}
60305000:	603159e5 	.word	0x603159e5
60305004:	60315a5e 	.word	0x60315a5e

60305008 <__multadd>:
60305008:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
6030500c:	e281c014 	add	ip, r1, #20
60305010:	e5915010 	ldr	r5, [r1, #16]
60305014:	e1a07000 	mov	r7, r0
60305018:	e1a04001 	mov	r4, r1
6030501c:	e1a06003 	mov	r6, r3
60305020:	e3a00000 	mov	r0, #0
60305024:	e59c3000 	ldr	r3, [ip]
60305028:	e2800001 	add	r0, r0, #1
6030502c:	e1550000 	cmp	r5, r0
60305030:	e6ff1073 	uxth	r1, r3
60305034:	e1a0e823 	lsr	lr, r3, #16
60305038:	e0216192 	mla	r1, r2, r1, r6
6030503c:	e1a03821 	lsr	r3, r1, #16
60305040:	e6ff1071 	uxth	r1, r1
60305044:	e0233e92 	mla	r3, r2, lr, r3
60305048:	e0811803 	add	r1, r1, r3, lsl #16
6030504c:	e1a06823 	lsr	r6, r3, #16
60305050:	e48c1004 	str	r1, [ip], #4
60305054:	cafffff2 	bgt	60305024 <__multadd+0x1c>
60305058:	e3560000 	cmp	r6, #0
6030505c:	0a00001b 	beq	603050d0 <__multadd+0xc8>
60305060:	e5943008 	ldr	r3, [r4, #8]
60305064:	e1530005 	cmp	r3, r5
60305068:	ca000014 	bgt	603050c0 <__multadd+0xb8>
6030506c:	e5941004 	ldr	r1, [r4, #4]
60305070:	e1a00007 	mov	r0, r7
60305074:	e2811001 	add	r1, r1, #1
60305078:	ebffff8a 	bl	60304ea8 <_Balloc>
6030507c:	e2508000 	subs	r8, r0, #0
60305080:	1a000004 	bne	60305098 <__multadd+0x90>
60305084:	e59f304c 	ldr	r3, [pc, #76]	; 603050d8 <__multadd+0xd0>
60305088:	e1a02008 	mov	r2, r8
6030508c:	e59f0048 	ldr	r0, [pc, #72]	; 603050dc <__multadd+0xd4>
60305090:	e3a010b5 	mov	r1, #181	; 0xb5
60305094:	ebffee6c 	bl	60300a4c <__assert_func>
60305098:	e5942010 	ldr	r2, [r4, #16]
6030509c:	e284100c 	add	r1, r4, #12
603050a0:	e288000c 	add	r0, r8, #12
603050a4:	e2822002 	add	r2, r2, #2
603050a8:	e1a02102 	lsl	r2, r2, #2
603050ac:	ebfff093 	bl	60301300 <memcpy>
603050b0:	e1a01004 	mov	r1, r4
603050b4:	e1a04008 	mov	r4, r8
603050b8:	e1a00007 	mov	r0, r7
603050bc:	ebffffb2 	bl	60304f8c <_Bfree>
603050c0:	e0843105 	add	r3, r4, r5, lsl #2
603050c4:	e2855001 	add	r5, r5, #1
603050c8:	e5836014 	str	r6, [r3, #20]
603050cc:	e5845010 	str	r5, [r4, #16]
603050d0:	e1a00004 	mov	r0, r4
603050d4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
603050d8:	60315a43 	.word	0x60315a43
603050dc:	60315a5e 	.word	0x60315a5e

603050e0 <__s2b>:
603050e0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
603050e4:	e1a05002 	mov	r5, r2
603050e8:	e59f20d8 	ldr	r2, [pc, #216]	; 603051c8 <__s2b+0xe8>
603050ec:	e1a07003 	mov	r7, r3
603050f0:	e2833008 	add	r3, r3, #8
603050f4:	e1a04001 	mov	r4, r1
603050f8:	e1a06000 	mov	r6, r0
603050fc:	e0c12293 	smull	r2, r1, r3, r2
60305100:	e1a03fc3 	asr	r3, r3, #31
60305104:	e3a02001 	mov	r2, #1
60305108:	e06330c1 	rsb	r3, r3, r1, asr #1
6030510c:	e3a01000 	mov	r1, #0
60305110:	e1520003 	cmp	r2, r3
60305114:	ba000008 	blt	6030513c <__s2b+0x5c>
60305118:	e1a00006 	mov	r0, r6
6030511c:	ebffff61 	bl	60304ea8 <_Balloc>
60305120:	e3500000 	cmp	r0, #0
60305124:	1a000007 	bne	60305148 <__s2b+0x68>
60305128:	e1a02000 	mov	r2, r0
6030512c:	e59f3098 	ldr	r3, [pc, #152]	; 603051cc <__s2b+0xec>
60305130:	e59f0098 	ldr	r0, [pc, #152]	; 603051d0 <__s2b+0xf0>
60305134:	e3a010ce 	mov	r1, #206	; 0xce
60305138:	ebffee43 	bl	60300a4c <__assert_func>
6030513c:	e1a02082 	lsl	r2, r2, #1
60305140:	e2811001 	add	r1, r1, #1
60305144:	eafffff1 	b	60305110 <__s2b+0x30>
60305148:	e59d3020 	ldr	r3, [sp, #32]
6030514c:	e3550009 	cmp	r5, #9
60305150:	e5803014 	str	r3, [r0, #20]
60305154:	d284400a 	addle	r4, r4, #10
60305158:	e3a03001 	mov	r3, #1
6030515c:	d3a05009 	movle	r5, #9
60305160:	e5803010 	str	r3, [r0, #16]
60305164:	da00000c 	ble	6030519c <__s2b+0xbc>
60305168:	e2849009 	add	r9, r4, #9
6030516c:	e0844005 	add	r4, r4, r5
60305170:	e1a08009 	mov	r8, r9
60305174:	e4d83001 	ldrb	r3, [r8], #1
60305178:	e1a01000 	mov	r1, r0
6030517c:	e3a0200a 	mov	r2, #10
60305180:	e1a00006 	mov	r0, r6
60305184:	e2433030 	sub	r3, r3, #48	; 0x30
60305188:	ebffff9e 	bl	60305008 <__multadd>
6030518c:	e1580004 	cmp	r8, r4
60305190:	1afffff7 	bne	60305174 <__s2b+0x94>
60305194:	e2454008 	sub	r4, r5, #8
60305198:	e0894004 	add	r4, r9, r4
6030519c:	e0455004 	sub	r5, r5, r4
603051a0:	e0843005 	add	r3, r4, r5
603051a4:	e1530007 	cmp	r3, r7
603051a8:	a8bd87f0 	popge	{r4, r5, r6, r7, r8, r9, sl, pc}
603051ac:	e4d43001 	ldrb	r3, [r4], #1
603051b0:	e1a01000 	mov	r1, r0
603051b4:	e3a0200a 	mov	r2, #10
603051b8:	e1a00006 	mov	r0, r6
603051bc:	e2433030 	sub	r3, r3, #48	; 0x30
603051c0:	ebffff90 	bl	60305008 <__multadd>
603051c4:	eafffff5 	b	603051a0 <__s2b+0xc0>
603051c8:	38e38e39 	.word	0x38e38e39
603051cc:	60315a43 	.word	0x60315a43
603051d0:	60315a5e 	.word	0x60315a5e

603051d4 <__hi0bits>:
603051d4:	e1a02820 	lsr	r2, r0, #16
603051d8:	e1a03000 	mov	r3, r0
603051dc:	e1a02802 	lsl	r2, r2, #16
603051e0:	e3520000 	cmp	r2, #0
603051e4:	01a03800 	lsleq	r3, r0, #16
603051e8:	13a00000 	movne	r0, #0
603051ec:	03a00010 	moveq	r0, #16
603051f0:	e31304ff 	tst	r3, #-16777216	; 0xff000000
603051f4:	01a03403 	lsleq	r3, r3, #8
603051f8:	02800008 	addeq	r0, r0, #8
603051fc:	e313020f 	tst	r3, #-268435456	; 0xf0000000
60305200:	01a03203 	lsleq	r3, r3, #4
60305204:	02800004 	addeq	r0, r0, #4
60305208:	e3130103 	tst	r3, #-1073741824	; 0xc0000000
6030520c:	01a03103 	lsleq	r3, r3, #2
60305210:	02800002 	addeq	r0, r0, #2
60305214:	e3530000 	cmp	r3, #0
60305218:	b12fff1e 	bxlt	lr
6030521c:	e3130101 	tst	r3, #1073741824	; 0x40000000
60305220:	12800001 	addne	r0, r0, #1
60305224:	03a00020 	moveq	r0, #32
60305228:	e12fff1e 	bx	lr

6030522c <__lo0bits>:
6030522c:	e5903000 	ldr	r3, [r0]
60305230:	e1a02000 	mov	r2, r0
60305234:	e2130007 	ands	r0, r3, #7
60305238:	0a000009 	beq	60305264 <__lo0bits+0x38>
6030523c:	e3130001 	tst	r3, #1
60305240:	1a00001c 	bne	603052b8 <__lo0bits+0x8c>
60305244:	e3130002 	tst	r3, #2
60305248:	11a030a3 	lsrne	r3, r3, #1
6030524c:	13a00001 	movne	r0, #1
60305250:	01a03123 	lsreq	r3, r3, #2
60305254:	15823000 	strne	r3, [r2]
60305258:	03a00002 	moveq	r0, #2
6030525c:	05823000 	streq	r3, [r2]
60305260:	e12fff1e 	bx	lr
60305264:	e6ff1073 	uxth	r1, r3
60305268:	e3510000 	cmp	r1, #0
6030526c:	01a03823 	lsreq	r3, r3, #16
60305270:	03a00010 	moveq	r0, #16
60305274:	e6ef1073 	uxtb	r1, r3
60305278:	e3510000 	cmp	r1, #0
6030527c:	01a03423 	lsreq	r3, r3, #8
60305280:	02800008 	addeq	r0, r0, #8
60305284:	e313000f 	tst	r3, #15
60305288:	01a03223 	lsreq	r3, r3, #4
6030528c:	02800004 	addeq	r0, r0, #4
60305290:	e3130003 	tst	r3, #3
60305294:	01a03123 	lsreq	r3, r3, #2
60305298:	02800002 	addeq	r0, r0, #2
6030529c:	e3130001 	tst	r3, #1
603052a0:	1a000002 	bne	603052b0 <__lo0bits+0x84>
603052a4:	e2800001 	add	r0, r0, #1
603052a8:	e1b030a3 	lsrs	r3, r3, #1
603052ac:	0a000003 	beq	603052c0 <__lo0bits+0x94>
603052b0:	e5823000 	str	r3, [r2]
603052b4:	e12fff1e 	bx	lr
603052b8:	e3a00000 	mov	r0, #0
603052bc:	e12fff1e 	bx	lr
603052c0:	e3a00020 	mov	r0, #32
603052c4:	e12fff1e 	bx	lr

603052c8 <__i2b>:
603052c8:	e92d4010 	push	{r4, lr}
603052cc:	e1a04001 	mov	r4, r1
603052d0:	e3a01001 	mov	r1, #1
603052d4:	ebfffef3 	bl	60304ea8 <_Balloc>
603052d8:	e2502000 	subs	r2, r0, #0
603052dc:	1a000003 	bne	603052f0 <__i2b+0x28>
603052e0:	e59f3018 	ldr	r3, [pc, #24]	; 60305300 <__i2b+0x38>
603052e4:	e3a01d05 	mov	r1, #320	; 0x140
603052e8:	e59f0014 	ldr	r0, [pc, #20]	; 60305304 <__i2b+0x3c>
603052ec:	ebffedd6 	bl	60300a4c <__assert_func>
603052f0:	e3a03001 	mov	r3, #1
603052f4:	e5824014 	str	r4, [r2, #20]
603052f8:	e5823010 	str	r3, [r2, #16]
603052fc:	e8bd8010 	pop	{r4, pc}
60305300:	60315a43 	.word	0x60315a43
60305304:	60315a5e 	.word	0x60315a5e

60305308 <__multiply>:
60305308:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030530c:	e1a06002 	mov	r6, r2
60305310:	e5912010 	ldr	r2, [r1, #16]
60305314:	e1a04001 	mov	r4, r1
60305318:	e24dd014 	sub	sp, sp, #20
6030531c:	e5963010 	ldr	r3, [r6, #16]
60305320:	e1520003 	cmp	r2, r3
60305324:	b1a03001 	movlt	r3, r1
60305328:	b1a04006 	movlt	r4, r6
6030532c:	b1a06003 	movlt	r6, r3
60305330:	e5949010 	ldr	r9, [r4, #16]
60305334:	e5967010 	ldr	r7, [r6, #16]
60305338:	e5943008 	ldr	r3, [r4, #8]
6030533c:	e5941004 	ldr	r1, [r4, #4]
60305340:	e0895007 	add	r5, r9, r7
60305344:	e1530005 	cmp	r3, r5
60305348:	b2811001 	addlt	r1, r1, #1
6030534c:	ebfffed5 	bl	60304ea8 <_Balloc>
60305350:	e3500000 	cmp	r0, #0
60305354:	1a000004 	bne	6030536c <__multiply+0x64>
60305358:	e1a02000 	mov	r2, r0
6030535c:	e59f3168 	ldr	r3, [pc, #360]	; 603054cc <__multiply+0x1c4>
60305360:	e59f0168 	ldr	r0, [pc, #360]	; 603054d0 <__multiply+0x1c8>
60305364:	e300115d 	movw	r1, #349	; 0x15d
60305368:	ebffedb7 	bl	60300a4c <__assert_func>
6030536c:	e280c014 	add	ip, r0, #20
60305370:	e3a02000 	mov	r2, #0
60305374:	e08c8105 	add	r8, ip, r5, lsl #2
60305378:	e1a0300c 	mov	r3, ip
6030537c:	e1530008 	cmp	r3, r8
60305380:	3a000018 	bcc	603053e8 <__multiply+0xe0>
60305384:	e284e014 	add	lr, r4, #20
60305388:	e2863014 	add	r3, r6, #20
6030538c:	e08ee109 	add	lr, lr, r9, lsl #2
60305390:	e0832107 	add	r2, r3, r7, lsl #2
60305394:	e58d2008 	str	r2, [sp, #8]
60305398:	e04e2004 	sub	r2, lr, r4
6030539c:	e2422015 	sub	r2, r2, #21
603053a0:	e2841015 	add	r1, r4, #21
603053a4:	e3c22003 	bic	r2, r2, #3
603053a8:	e15e0001 	cmp	lr, r1
603053ac:	e2822004 	add	r2, r2, #4
603053b0:	33a02004 	movcc	r2, #4
603053b4:	e58d2004 	str	r2, [sp, #4]
603053b8:	e59d2008 	ldr	r2, [sp, #8]
603053bc:	e58d300c 	str	r3, [sp, #12]
603053c0:	e1520003 	cmp	r2, r3
603053c4:	8a000009 	bhi	603053f0 <__multiply+0xe8>
603053c8:	e3550000 	cmp	r5, #0
603053cc:	da000002 	ble	603053dc <__multiply+0xd4>
603053d0:	e5383004 	ldr	r3, [r8, #-4]!
603053d4:	e3530000 	cmp	r3, #0
603053d8:	0a000039 	beq	603054c4 <__multiply+0x1bc>
603053dc:	e5805010 	str	r5, [r0, #16]
603053e0:	e28dd014 	add	sp, sp, #20
603053e4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
603053e8:	e4832004 	str	r2, [r3], #4
603053ec:	eaffffe2 	b	6030537c <__multiply+0x74>
603053f0:	e1d3a0b0 	ldrh	sl, [r3]
603053f4:	e35a0000 	cmp	sl, #0
603053f8:	0a000015 	beq	60305454 <__multiply+0x14c>
603053fc:	e2847014 	add	r7, r4, #20
60305400:	e1a0900c 	mov	r9, ip
60305404:	e3a06000 	mov	r6, #0
60305408:	e4972004 	ldr	r2, [r7], #4
6030540c:	e5991000 	ldr	r1, [r9]
60305410:	e15e0007 	cmp	lr, r7
60305414:	e6ffb072 	uxth	fp, r2
60305418:	e1a02822 	lsr	r2, r2, #16
6030541c:	e6ff1071 	uxth	r1, r1
60305420:	e0211b9a 	mla	r1, sl, fp, r1
60305424:	e0811006 	add	r1, r1, r6
60305428:	e5996000 	ldr	r6, [r9]
6030542c:	e1a06826 	lsr	r6, r6, #16
60305430:	e022629a 	mla	r2, sl, r2, r6
60305434:	e0822821 	add	r2, r2, r1, lsr #16
60305438:	e6ff1071 	uxth	r1, r1
6030543c:	e1811802 	orr	r1, r1, r2, lsl #16
60305440:	e1a06822 	lsr	r6, r2, #16
60305444:	e4891004 	str	r1, [r9], #4
60305448:	8affffee 	bhi	60305408 <__multiply+0x100>
6030544c:	e59d2004 	ldr	r2, [sp, #4]
60305450:	e78c6002 	str	r6, [ip, r2]
60305454:	e59d200c 	ldr	r2, [sp, #12]
60305458:	e2833004 	add	r3, r3, #4
6030545c:	e1d290b2 	ldrh	r9, [r2, #2]
60305460:	e3590000 	cmp	r9, #0
60305464:	0a000014 	beq	603054bc <__multiply+0x1b4>
60305468:	e59c1000 	ldr	r1, [ip]
6030546c:	e2846014 	add	r6, r4, #20
60305470:	e1a0700c 	mov	r7, ip
60305474:	e3a0a000 	mov	sl, #0
60305478:	e1d6b0b0 	ldrh	fp, [r6]
6030547c:	e6ff1071 	uxth	r1, r1
60305480:	e1d720b2 	ldrh	r2, [r7, #2]
60305484:	e0222b99 	mla	r2, r9, fp, r2
60305488:	e082a00a 	add	sl, r2, sl
6030548c:	e181180a 	orr	r1, r1, sl, lsl #16
60305490:	e4871004 	str	r1, [r7], #4
60305494:	e4962004 	ldr	r2, [r6], #4
60305498:	e1d710b0 	ldrh	r1, [r7]
6030549c:	e15e0006 	cmp	lr, r6
603054a0:	e1a02822 	lsr	r2, r2, #16
603054a4:	e0211299 	mla	r1, r9, r2, r1
603054a8:	e081182a 	add	r1, r1, sl, lsr #16
603054ac:	e1a0a821 	lsr	sl, r1, #16
603054b0:	8afffff0 	bhi	60305478 <__multiply+0x170>
603054b4:	e59d2004 	ldr	r2, [sp, #4]
603054b8:	e78c1002 	str	r1, [ip, r2]
603054bc:	e28cc004 	add	ip, ip, #4
603054c0:	eaffffbc 	b	603053b8 <__multiply+0xb0>
603054c4:	e2455001 	sub	r5, r5, #1
603054c8:	eaffffbe 	b	603053c8 <__multiply+0xc0>
603054cc:	60315a43 	.word	0x60315a43
603054d0:	60315a5e 	.word	0x60315a5e

603054d4 <__pow5mult>:
603054d4:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
603054d8:	e1a05002 	mov	r5, r2
603054dc:	e2122003 	ands	r2, r2, #3
603054e0:	e1a06000 	mov	r6, r0
603054e4:	01a07001 	moveq	r7, r1
603054e8:	0a000005 	beq	60305504 <__pow5mult+0x30>
603054ec:	e59fc0f4 	ldr	ip, [pc, #244]	; 603055e8 <__pow5mult+0x114>
603054f0:	e2422001 	sub	r2, r2, #1
603054f4:	e3a03000 	mov	r3, #0
603054f8:	e79c2102 	ldr	r2, [ip, r2, lsl #2]
603054fc:	ebfffec1 	bl	60305008 <__multadd>
60305500:	e1a07000 	mov	r7, r0
60305504:	e1b05145 	asrs	r5, r5, #2
60305508:	0a000034 	beq	603055e0 <__pow5mult+0x10c>
6030550c:	e5964024 	ldr	r4, [r6, #36]	; 0x24
60305510:	e3540000 	cmp	r4, #0
60305514:	1a00000d 	bne	60305550 <__pow5mult+0x7c>
60305518:	e3a00010 	mov	r0, #16
6030551c:	eb000cac 	bl	603087d4 <__wrap_malloc>
60305520:	e1a02000 	mov	r2, r0
60305524:	e3500000 	cmp	r0, #0
60305528:	e5860024 	str	r0, [r6, #36]	; 0x24
6030552c:	1a000003 	bne	60305540 <__pow5mult+0x6c>
60305530:	e59f30b4 	ldr	r3, [pc, #180]	; 603055ec <__pow5mult+0x118>
60305534:	e30011ae 	movw	r1, #430	; 0x1ae
60305538:	e59f00b0 	ldr	r0, [pc, #176]	; 603055f0 <__pow5mult+0x11c>
6030553c:	ebffed42 	bl	60300a4c <__assert_func>
60305540:	e5804004 	str	r4, [r0, #4]
60305544:	e5804008 	str	r4, [r0, #8]
60305548:	e5804000 	str	r4, [r0]
6030554c:	e580400c 	str	r4, [r0, #12]
60305550:	e5968024 	ldr	r8, [r6, #36]	; 0x24
60305554:	e5984008 	ldr	r4, [r8, #8]
60305558:	e3540000 	cmp	r4, #0
6030555c:	1a000006 	bne	6030557c <__pow5mult+0xa8>
60305560:	e1a00006 	mov	r0, r6
60305564:	e3001271 	movw	r1, #625	; 0x271
60305568:	ebffff56 	bl	603052c8 <__i2b>
6030556c:	e1a04000 	mov	r4, r0
60305570:	e3a03000 	mov	r3, #0
60305574:	e5880008 	str	r0, [r8, #8]
60305578:	e5803000 	str	r3, [r0]
6030557c:	e3a09000 	mov	r9, #0
60305580:	e3150001 	tst	r5, #1
60305584:	0a000008 	beq	603055ac <__pow5mult+0xd8>
60305588:	e1a01007 	mov	r1, r7
6030558c:	e1a02004 	mov	r2, r4
60305590:	e1a00006 	mov	r0, r6
60305594:	ebffff5b 	bl	60305308 <__multiply>
60305598:	e1a08000 	mov	r8, r0
6030559c:	e1a01007 	mov	r1, r7
603055a0:	e1a07008 	mov	r7, r8
603055a4:	e1a00006 	mov	r0, r6
603055a8:	ebfffe77 	bl	60304f8c <_Bfree>
603055ac:	e1b050c5 	asrs	r5, r5, #1
603055b0:	0a00000a 	beq	603055e0 <__pow5mult+0x10c>
603055b4:	e5940000 	ldr	r0, [r4]
603055b8:	e3500000 	cmp	r0, #0
603055bc:	1a000005 	bne	603055d8 <__pow5mult+0x104>
603055c0:	e1a02004 	mov	r2, r4
603055c4:	e1a01004 	mov	r1, r4
603055c8:	e1a00006 	mov	r0, r6
603055cc:	ebffff4d 	bl	60305308 <__multiply>
603055d0:	e5840000 	str	r0, [r4]
603055d4:	e5809000 	str	r9, [r0]
603055d8:	e1a04000 	mov	r4, r0
603055dc:	eaffffe7 	b	60305580 <__pow5mult+0xac>
603055e0:	e1a00007 	mov	r0, r7
603055e4:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
603055e8:	60314080 	.word	0x60314080
603055ec:	603159e5 	.word	0x603159e5
603055f0:	60315a5e 	.word	0x60315a5e

603055f4 <__lshift>:
603055f4:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
603055f8:	e1a04001 	mov	r4, r1
603055fc:	e5911004 	ldr	r1, [r1, #4]
60305600:	e1a07000 	mov	r7, r0
60305604:	e1a09002 	mov	r9, r2
60305608:	e5948010 	ldr	r8, [r4, #16]
6030560c:	e1a0a2c2 	asr	sl, r2, #5
60305610:	e5943008 	ldr	r3, [r4, #8]
60305614:	e08882c2 	add	r8, r8, r2, asr #5
60305618:	e2886001 	add	r6, r8, #1
6030561c:	e1530006 	cmp	r3, r6
60305620:	ba000008 	blt	60305648 <__lshift+0x54>
60305624:	e1a00007 	mov	r0, r7
60305628:	ebfffe1e 	bl	60304ea8 <_Balloc>
6030562c:	e2505000 	subs	r5, r0, #0
60305630:	1a000007 	bne	60305654 <__lshift+0x60>
60305634:	e59f30dc 	ldr	r3, [pc, #220]	; 60305718 <__lshift+0x124>
60305638:	e1a02005 	mov	r2, r5
6030563c:	e59f00d8 	ldr	r0, [pc, #216]	; 6030571c <__lshift+0x128>
60305640:	e30011d9 	movw	r1, #473	; 0x1d9
60305644:	ebffed00 	bl	60300a4c <__assert_func>
60305648:	e2811001 	add	r1, r1, #1
6030564c:	e1a03083 	lsl	r3, r3, #1
60305650:	eafffff1 	b	6030561c <__lshift+0x28>
60305654:	e3a03000 	mov	r3, #0
60305658:	e2851014 	add	r1, r5, #20
6030565c:	e2852010 	add	r2, r5, #16
60305660:	e1a00003 	mov	r0, r3
60305664:	e153000a 	cmp	r3, sl
60305668:	ba000021 	blt	603056f4 <__lshift+0x100>
6030566c:	e5940010 	ldr	r0, [r4, #16]
60305670:	e1caafca 	bic	sl, sl, sl, asr #31
60305674:	e2843014 	add	r3, r4, #20
60305678:	e219901f 	ands	r9, r9, #31
6030567c:	e081110a 	add	r1, r1, sl, lsl #2
60305680:	e0830100 	add	r0, r3, r0, lsl #2
60305684:	0a00001d 	beq	60305700 <__lshift+0x10c>
60305688:	e2692020 	rsb	r2, r9, #32
6030568c:	e1a0a001 	mov	sl, r1
60305690:	e3a0c000 	mov	ip, #0
60305694:	e593e000 	ldr	lr, [r3]
60305698:	e18cc91e 	orr	ip, ip, lr, lsl r9
6030569c:	e48ac004 	str	ip, [sl], #4
603056a0:	e493c004 	ldr	ip, [r3], #4
603056a4:	e1500003 	cmp	r0, r3
603056a8:	e1a0c23c 	lsr	ip, ip, r2
603056ac:	8afffff8 	bhi	60305694 <__lshift+0xa0>
603056b0:	e0403004 	sub	r3, r0, r4
603056b4:	e2842015 	add	r2, r4, #21
603056b8:	e2433015 	sub	r3, r3, #21
603056bc:	e1500002 	cmp	r0, r2
603056c0:	e3c33003 	bic	r3, r3, #3
603056c4:	e2833004 	add	r3, r3, #4
603056c8:	33a03004 	movcc	r3, #4
603056cc:	e35c0000 	cmp	ip, #0
603056d0:	12886002 	addne	r6, r8, #2
603056d4:	e781c003 	str	ip, [r1, r3]
603056d8:	e1a00007 	mov	r0, r7
603056dc:	e2466001 	sub	r6, r6, #1
603056e0:	e1a01004 	mov	r1, r4
603056e4:	e5856010 	str	r6, [r5, #16]
603056e8:	ebfffe27 	bl	60304f8c <_Bfree>
603056ec:	e1a00005 	mov	r0, r5
603056f0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
603056f4:	e2833001 	add	r3, r3, #1
603056f8:	e5a20004 	str	r0, [r2, #4]!
603056fc:	eaffffd8 	b	60305664 <__lshift+0x70>
60305700:	e2411004 	sub	r1, r1, #4
60305704:	e4932004 	ldr	r2, [r3], #4
60305708:	e5a12004 	str	r2, [r1, #4]!
6030570c:	e1500003 	cmp	r0, r3
60305710:	8afffffb 	bhi	60305704 <__lshift+0x110>
60305714:	eaffffef 	b	603056d8 <__lshift+0xe4>
60305718:	60315a43 	.word	0x60315a43
6030571c:	60315a5e 	.word	0x60315a5e

60305720 <__mcmp>:
60305720:	e5912010 	ldr	r2, [r1, #16]
60305724:	e1a03000 	mov	r3, r0
60305728:	e5900010 	ldr	r0, [r0, #16]
6030572c:	e0500002 	subs	r0, r0, r2
60305730:	112fff1e 	bxne	lr
60305734:	e2833014 	add	r3, r3, #20
60305738:	e2811014 	add	r1, r1, #20
6030573c:	e083c102 	add	ip, r3, r2, lsl #2
60305740:	e0811102 	add	r1, r1, r2, lsl #2
60305744:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
60305748:	e53ce004 	ldr	lr, [ip, #-4]!
6030574c:	e5312004 	ldr	r2, [r1, #-4]!
60305750:	e15e0002 	cmp	lr, r2
60305754:	0a000002 	beq	60305764 <__mcmp+0x44>
60305758:	3a000004 	bcc	60305770 <__mcmp+0x50>
6030575c:	e3a00001 	mov	r0, #1
60305760:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
60305764:	e153000c 	cmp	r3, ip
60305768:	3afffff6 	bcc	60305748 <__mcmp+0x28>
6030576c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
60305770:	e3e00000 	mvn	r0, #0
60305774:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

60305778 <__mdiff>:
60305778:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030577c:	e1a04001 	mov	r4, r1
60305780:	e1a06000 	mov	r6, r0
60305784:	e1a01002 	mov	r1, r2
60305788:	e1a00004 	mov	r0, r4
6030578c:	e1a08002 	mov	r8, r2
60305790:	ebffffe2 	bl	60305720 <__mcmp>
60305794:	e2505000 	subs	r5, r0, #0
60305798:	1a00000b 	bne	603057cc <__mdiff+0x54>
6030579c:	e1a01005 	mov	r1, r5
603057a0:	e1a00006 	mov	r0, r6
603057a4:	ebfffdbf 	bl	60304ea8 <_Balloc>
603057a8:	e2502000 	subs	r2, r0, #0
603057ac:	13a03001 	movne	r3, #1
603057b0:	03001232 	movweq	r1, #562	; 0x232
603057b4:	059f3138 	ldreq	r3, [pc, #312]	; 603058f4 <__mdiff+0x17c>
603057b8:	15823010 	strne	r3, [r2, #16]
603057bc:	15825014 	strne	r5, [r2, #20]
603057c0:	1a00003e 	bne	603058c0 <__mdiff+0x148>
603057c4:	e59f012c 	ldr	r0, [pc, #300]	; 603058f8 <__mdiff+0x180>
603057c8:	ebffec9f 	bl	60300a4c <__assert_func>
603057cc:	a1a03008 	movge	r3, r8
603057d0:	a1a08004 	movge	r8, r4
603057d4:	e1a00006 	mov	r0, r6
603057d8:	a1a04003 	movge	r4, r3
603057dc:	a3a05000 	movge	r5, #0
603057e0:	b3a05001 	movlt	r5, #1
603057e4:	e5981004 	ldr	r1, [r8, #4]
603057e8:	ebfffdae 	bl	60304ea8 <_Balloc>
603057ec:	e2502000 	subs	r2, r0, #0
603057f0:	059f30fc 	ldreq	r3, [pc, #252]	; 603058f4 <__mdiff+0x17c>
603057f4:	03a01d09 	moveq	r1, #576	; 0x240
603057f8:	0afffff1 	beq	603057c4 <__mdiff+0x4c>
603057fc:	e594e010 	ldr	lr, [r4, #16]
60305800:	e2880014 	add	r0, r8, #20
60305804:	e582500c 	str	r5, [r2, #12]
60305808:	e284a014 	add	sl, r4, #20
6030580c:	e5985010 	ldr	r5, [r8, #16]
60305810:	e2827014 	add	r7, r2, #20
60305814:	e08ae10e 	add	lr, sl, lr, lsl #2
60305818:	e288c010 	add	ip, r8, #16
6030581c:	e1a0b007 	mov	fp, r7
60305820:	e3a01000 	mov	r1, #0
60305824:	e0806105 	add	r6, r0, r5, lsl #2
60305828:	e49a8004 	ldr	r8, [sl], #4
6030582c:	e5bc3004 	ldr	r3, [ip, #4]!
60305830:	e15e000a 	cmp	lr, sl
60305834:	e6ff9078 	uxth	r9, r8
60305838:	e1a08828 	lsr	r8, r8, #16
6030583c:	e6f11073 	uxtah	r1, r1, r3
60305840:	e0683823 	rsb	r3, r8, r3, lsr #16
60305844:	e0419009 	sub	r9, r1, r9
60305848:	e0833849 	add	r3, r3, r9, asr #16
6030584c:	e6ff9079 	uxth	r9, r9
60305850:	e1a01843 	asr	r1, r3, #16
60305854:	e1893803 	orr	r3, r9, r3, lsl #16
60305858:	e48b3004 	str	r3, [fp], #4
6030585c:	8afffff1 	bhi	60305828 <__mdiff+0xb0>
60305860:	e04e3004 	sub	r3, lr, r4
60305864:	e2844015 	add	r4, r4, #21
60305868:	e2433015 	sub	r3, r3, #21
6030586c:	e15e0004 	cmp	lr, r4
60305870:	e3c33003 	bic	r3, r3, #3
60305874:	e2833004 	add	r3, r3, #4
60305878:	33a03004 	movcc	r3, #4
6030587c:	e0800003 	add	r0, r0, r3
60305880:	e0873003 	add	r3, r7, r3
60305884:	e1a07003 	mov	r7, r3
60305888:	e1a04000 	mov	r4, r0
6030588c:	e1540006 	cmp	r4, r6
60305890:	3a00000c 	bcc	603058c8 <__mdiff+0x150>
60305894:	e2861003 	add	r1, r6, #3
60305898:	e0411000 	sub	r1, r1, r0
6030589c:	e2400003 	sub	r0, r0, #3
603058a0:	e1560000 	cmp	r6, r0
603058a4:	e3c11003 	bic	r1, r1, #3
603058a8:	33a01000 	movcc	r1, #0
603058ac:	e0831001 	add	r1, r3, r1
603058b0:	e5313004 	ldr	r3, [r1, #-4]!
603058b4:	e3530000 	cmp	r3, #0
603058b8:	0a00000b 	beq	603058ec <__mdiff+0x174>
603058bc:	e5825010 	str	r5, [r2, #16]
603058c0:	e1a00002 	mov	r0, r2
603058c4:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
603058c8:	e4948004 	ldr	r8, [r4], #4
603058cc:	e6f1c078 	uxtah	ip, r1, r8
603058d0:	e1a0e84c 	asr	lr, ip, #16
603058d4:	e6ffc07c 	uxth	ip, ip
603058d8:	e08ee828 	add	lr, lr, r8, lsr #16
603058dc:	e18cc80e 	orr	ip, ip, lr, lsl #16
603058e0:	e1a0184e 	asr	r1, lr, #16
603058e4:	e487c004 	str	ip, [r7], #4
603058e8:	eaffffe7 	b	6030588c <__mdiff+0x114>
603058ec:	e2455001 	sub	r5, r5, #1
603058f0:	eaffffee 	b	603058b0 <__mdiff+0x138>
603058f4:	60315a43 	.word	0x60315a43
603058f8:	60315a5e 	.word	0x60315a5e

603058fc <__ulp>:
603058fc:	e24dd008 	sub	sp, sp, #8
60305900:	e59f1060 	ldr	r1, [pc, #96]	; 60305968 <__ulp+0x6c>
60305904:	ed8d0b00 	vstr	d0, [sp]
60305908:	e59d3004 	ldr	r3, [sp, #4]
6030590c:	e0011003 	and	r1, r1, r3
60305910:	e241150d 	sub	r1, r1, #54525952	; 0x3400000
60305914:	e3510000 	cmp	r1, #0
60305918:	c3a02000 	movgt	r2, #0
6030591c:	c1a03001 	movgt	r3, r1
60305920:	ca00000d 	bgt	6030595c <__ulp+0x60>
60305924:	e2611000 	rsb	r1, r1, #0
60305928:	e3a03000 	mov	r3, #0
6030592c:	e3510505 	cmp	r1, #20971520	; 0x1400000
60305930:	e3a02000 	mov	r2, #0
60305934:	e1a00a41 	asr	r0, r1, #20
60305938:	b3a01702 	movlt	r1, #524288	; 0x80000
6030593c:	b1a03051 	asrlt	r3, r1, r0
60305940:	ba000005 	blt	6030595c <__ulp+0x60>
60305944:	e2401014 	sub	r1, r0, #20
60305948:	e351001e 	cmp	r1, #30
6030594c:	d3a00102 	movle	r0, #-2147483648	; 0x80000000
60305950:	c3a01001 	movgt	r1, #1
60305954:	d1a01130 	lsrle	r1, r0, r1
60305958:	e1a02001 	mov	r2, r1
6030595c:	ec432b10 	vmov	d0, r2, r3
60305960:	e28dd008 	add	sp, sp, #8
60305964:	e12fff1e 	bx	lr
60305968:	7ff00000 	.word	0x7ff00000

6030596c <__b2d>:
6030596c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60305970:	e2807014 	add	r7, r0, #20
60305974:	e5904010 	ldr	r4, [r0, #16]
60305978:	e0874104 	add	r4, r7, r4, lsl #2
6030597c:	e2446004 	sub	r6, r4, #4
60305980:	e5145004 	ldr	r5, [r4, #-4]
60305984:	e1a00005 	mov	r0, r5
60305988:	ebfffe11 	bl	603051d4 <__hi0bits>
6030598c:	e59fc084 	ldr	ip, [pc, #132]	; 60305a18 <__b2d+0xac>
60305990:	e2603020 	rsb	r3, r0, #32
60305994:	e350000a 	cmp	r0, #10
60305998:	e5813000 	str	r3, [r1]
6030599c:	ca000009 	bgt	603059c8 <__b2d+0x5c>
603059a0:	e1570006 	cmp	r7, r6
603059a4:	e260e00b 	rsb	lr, r0, #11
603059a8:	23a01000 	movcs	r1, #0
603059ac:	e2800015 	add	r0, r0, #21
603059b0:	e18c3e35 	orr	r3, ip, r5, lsr lr
603059b4:	35141008 	ldrcc	r1, [r4, #-8]
603059b8:	e1a01e31 	lsr	r1, r1, lr
603059bc:	e1812015 	orr	r2, r1, r5, lsl r0
603059c0:	ec432b10 	vmov	d0, r2, r3
603059c4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
603059c8:	e1570006 	cmp	r7, r6
603059cc:	32446008 	subcc	r6, r4, #8
603059d0:	23a01000 	movcs	r1, #0
603059d4:	35141008 	ldrcc	r1, [r4, #-8]
603059d8:	e250000b 	subs	r0, r0, #11
603059dc:	0a00000a 	beq	60305a0c <__b2d+0xa0>
603059e0:	e1560007 	cmp	r6, r7
603059e4:	e260e020 	rsb	lr, r0, #32
603059e8:	93a0c000 	movls	ip, #0
603059ec:	e1a03e31 	lsr	r3, r1, lr
603059f0:	8516c004 	ldrhi	ip, [r6, #-4]
603059f4:	e1835015 	orr	r5, r3, r5, lsl r0
603059f8:	e38535ff 	orr	r3, r5, #1069547520	; 0x3fc00000
603059fc:	e3833603 	orr	r3, r3, #3145728	; 0x300000
60305a00:	e1a0ce3c 	lsr	ip, ip, lr
60305a04:	e18c2011 	orr	r2, ip, r1, lsl r0
60305a08:	eaffffec 	b	603059c0 <__b2d+0x54>
60305a0c:	e185300c 	orr	r3, r5, ip
60305a10:	e1a02001 	mov	r2, r1
60305a14:	eaffffe9 	b	603059c0 <__b2d+0x54>
60305a18:	3ff00000 	.word	0x3ff00000

60305a1c <__d2b>:
60305a1c:	e92d43f7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
60305a20:	e1a09001 	mov	r9, r1
60305a24:	e3a01001 	mov	r1, #1
60305a28:	ec576b10 	vmov	r6, r7, d0
60305a2c:	e1a08002 	mov	r8, r2
60305a30:	ebfffd1c 	bl	60304ea8 <_Balloc>
60305a34:	e2504000 	subs	r4, r0, #0
60305a38:	1a000004 	bne	60305a50 <__d2b+0x34>
60305a3c:	e59f30e0 	ldr	r3, [pc, #224]	; 60305b24 <__d2b+0x108>
60305a40:	e1a02004 	mov	r2, r4
60305a44:	e59f00dc 	ldr	r0, [pc, #220]	; 60305b28 <__d2b+0x10c>
60305a48:	e300130a 	movw	r1, #778	; 0x30a
60305a4c:	ebffebfe 	bl	60300a4c <__assert_func>
60305a50:	e7ea5a57 	ubfx	r5, r7, #20, #11
60305a54:	e7f33057 	ubfx	r3, r7, #0, #20
60305a58:	e3550000 	cmp	r5, #0
60305a5c:	13833601 	orrne	r3, r3, #1048576	; 0x100000
60305a60:	e3560000 	cmp	r6, #0
60305a64:	e58d3004 	str	r3, [sp, #4]
60305a68:	0a00001c 	beq	60305ae0 <__d2b+0xc4>
60305a6c:	e1a0000d 	mov	r0, sp
60305a70:	e58d6000 	str	r6, [sp]
60305a74:	ebfffdec 	bl	6030522c <__lo0bits>
60305a78:	e3500000 	cmp	r0, #0
60305a7c:	e59d3000 	ldr	r3, [sp]
60305a80:	12601020 	rsbne	r1, r0, #32
60305a84:	05843014 	streq	r3, [r4, #20]
60305a88:	159d2004 	ldrne	r2, [sp, #4]
60305a8c:	11833112 	orrne	r3, r3, r2, lsl r1
60305a90:	15843014 	strne	r3, [r4, #20]
60305a94:	11a02032 	lsrne	r2, r2, r0
60305a98:	158d2004 	strne	r2, [sp, #4]
60305a9c:	e59d3004 	ldr	r3, [sp, #4]
60305aa0:	e5843018 	str	r3, [r4, #24]
60305aa4:	e3530000 	cmp	r3, #0
60305aa8:	13a01002 	movne	r1, #2
60305aac:	03a01001 	moveq	r1, #1
60305ab0:	e5841010 	str	r1, [r4, #16]
60305ab4:	e3550000 	cmp	r5, #0
60305ab8:	0a000010 	beq	60305b00 <__d2b+0xe4>
60305abc:	e2455e43 	sub	r5, r5, #1072	; 0x430
60305ac0:	e2455003 	sub	r5, r5, #3
60305ac4:	e0855000 	add	r5, r5, r0
60305ac8:	e2600035 	rsb	r0, r0, #53	; 0x35
60305acc:	e5895000 	str	r5, [r9]
60305ad0:	e5880000 	str	r0, [r8]
60305ad4:	e1a00004 	mov	r0, r4
60305ad8:	e28dd00c 	add	sp, sp, #12
60305adc:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
60305ae0:	e28d0004 	add	r0, sp, #4
60305ae4:	ebfffdd0 	bl	6030522c <__lo0bits>
60305ae8:	e59d3004 	ldr	r3, [sp, #4]
60305aec:	e3a01001 	mov	r1, #1
60305af0:	e2800020 	add	r0, r0, #32
60305af4:	e5843014 	str	r3, [r4, #20]
60305af8:	e5841010 	str	r1, [r4, #16]
60305afc:	eaffffec 	b	60305ab4 <__d2b+0x98>
60305b00:	e0843101 	add	r3, r4, r1, lsl #2
60305b04:	e2400e43 	sub	r0, r0, #1072	; 0x430
60305b08:	e2400002 	sub	r0, r0, #2
60305b0c:	e5890000 	str	r0, [r9]
60305b10:	e5930010 	ldr	r0, [r3, #16]
60305b14:	ebfffdae 	bl	603051d4 <__hi0bits>
60305b18:	e0601281 	rsb	r1, r0, r1, lsl #5
60305b1c:	e5881000 	str	r1, [r8]
60305b20:	eaffffeb 	b	60305ad4 <__d2b+0xb8>
60305b24:	60315a43 	.word	0x60315a43
60305b28:	60315a5e 	.word	0x60315a5e

60305b2c <__ratio>:
60305b2c:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
60305b30:	e1a09000 	mov	r9, r0
60305b34:	e1a08001 	mov	r8, r1
60305b38:	e1a0100d 	mov	r1, sp
60305b3c:	ebffff8a 	bl	6030596c <__b2d>
60305b40:	e28d1004 	add	r1, sp, #4
60305b44:	e1a00008 	mov	r0, r8
60305b48:	ec554b10 	vmov	r4, r5, d0
60305b4c:	ee10aa10 	vmov	sl, s0
60305b50:	ebffff85 	bl	6030596c <__b2d>
60305b54:	e5993010 	ldr	r3, [r9, #16]
60305b58:	ec576b10 	vmov	r6, r7, d0
60305b5c:	e5982010 	ldr	r2, [r8, #16]
60305b60:	ee100a10 	vmov	r0, s0
60305b64:	e0432002 	sub	r2, r3, r2
60305b68:	e89d1008 	ldm	sp, {r3, ip}
60305b6c:	e043300c 	sub	r3, r3, ip
60305b70:	e0833282 	add	r3, r3, r2, lsl #5
60305b74:	e3530000 	cmp	r3, #0
60305b78:	d0633603 	rsble	r3, r3, r3, lsl #12
60305b7c:	c1a02005 	movgt	r2, r5
60305b80:	d1a02007 	movle	r2, r7
60305b84:	c1a01007 	movgt	r1, r7
60305b88:	c082ba03 	addgt	fp, r2, r3, lsl #20
60305b8c:	d1a0b005 	movle	fp, r5
60305b90:	d0821a03 	addle	r1, r2, r3, lsl #20
60305b94:	ec4bab30 	vmov	d16, sl, fp
60305b98:	ec410b31 	vmov	d17, r0, r1
60305b9c:	ee800ba1 	vdiv.f64	d0, d16, d17
60305ba0:	e28dd00c 	add	sp, sp, #12
60305ba4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

60305ba8 <_mprec_log10>:
60305ba8:	e3500017 	cmp	r0, #23
60305bac:	ceb70b00 	vmovgt.f64	d0, #112	; 0x3f800000  1.0
60305bb0:	cef20b04 	vmovgt.f64	d16, #36	; 0x41200000  10.0
60305bb4:	ca000003 	bgt	60305bc8 <_mprec_log10+0x20>
60305bb8:	e59f3018 	ldr	r3, [pc, #24]	; 60305bd8 <_mprec_log10+0x30>
60305bbc:	e0830180 	add	r0, r3, r0, lsl #3
60305bc0:	ed900b04 	vldr	d0, [r0, #16]
60305bc4:	e12fff1e 	bx	lr
60305bc8:	e2500001 	subs	r0, r0, #1
60305bcc:	ee200b20 	vmul.f64	d0, d0, d16
60305bd0:	1afffffc 	bne	60305bc8 <_mprec_log10+0x20>
60305bd4:	e12fff1e 	bx	lr
60305bd8:	60314080 	.word	0x60314080

60305bdc <__copybits>:
60305bdc:	e2411001 	sub	r1, r1, #1
60305be0:	e592c010 	ldr	ip, [r2, #16]
60305be4:	e2823014 	add	r3, r2, #20
60305be8:	e92d4010 	push	{r4, lr}
60305bec:	e1a012c1 	asr	r1, r1, #5
60305bf0:	e2811001 	add	r1, r1, #1
60305bf4:	e083c10c 	add	ip, r3, ip, lsl #2
60305bf8:	e240e004 	sub	lr, r0, #4
60305bfc:	e0801101 	add	r1, r0, r1, lsl #2
60305c00:	e153000c 	cmp	r3, ip
60305c04:	3a00000b 	bcc	60305c38 <__copybits+0x5c>
60305c08:	e04c3002 	sub	r3, ip, r2
60305c0c:	e2822011 	add	r2, r2, #17
60305c10:	e2433011 	sub	r3, r3, #17
60305c14:	e152000c 	cmp	r2, ip
60305c18:	e3c33003 	bic	r3, r3, #3
60305c1c:	83a03000 	movhi	r3, #0
60305c20:	e0800003 	add	r0, r0, r3
60305c24:	e3a03000 	mov	r3, #0
60305c28:	e1500001 	cmp	r0, r1
60305c2c:	28bd8010 	popcs	{r4, pc}
60305c30:	e4803004 	str	r3, [r0], #4
60305c34:	eafffffb 	b	60305c28 <__copybits+0x4c>
60305c38:	e4934004 	ldr	r4, [r3], #4
60305c3c:	e5ae4004 	str	r4, [lr, #4]!
60305c40:	eaffffee 	b	60305c00 <__copybits+0x24>

60305c44 <__any_on>:
60305c44:	e2802014 	add	r2, r0, #20
60305c48:	e5900010 	ldr	r0, [r0, #16]
60305c4c:	e1a032c1 	asr	r3, r1, #5
60305c50:	e1500003 	cmp	r0, r3
60305c54:	ba00000b 	blt	60305c88 <__any_on+0x44>
60305c58:	da000005 	ble	60305c74 <__any_on+0x30>
60305c5c:	e211101f 	ands	r1, r1, #31
60305c60:	0a000003 	beq	60305c74 <__any_on+0x30>
60305c64:	e7920103 	ldr	r0, [r2, r3, lsl #2]
60305c68:	e1a0c130 	lsr	ip, r0, r1
60305c6c:	e150011c 	cmp	r0, ip, lsl r1
60305c70:	1a000009 	bne	60305c9c <__any_on+0x58>
60305c74:	e0823103 	add	r3, r2, r3, lsl #2
60305c78:	e1530002 	cmp	r3, r2
60305c7c:	8a000003 	bhi	60305c90 <__any_on+0x4c>
60305c80:	e3a00000 	mov	r0, #0
60305c84:	e12fff1e 	bx	lr
60305c88:	e1a03000 	mov	r3, r0
60305c8c:	eafffff8 	b	60305c74 <__any_on+0x30>
60305c90:	e5331004 	ldr	r1, [r3, #-4]!
60305c94:	e3510000 	cmp	r1, #0
60305c98:	0afffff6 	beq	60305c78 <__any_on+0x34>
60305c9c:	e3a00001 	mov	r0, #1
60305ca0:	e12fff1e 	bx	lr

60305ca4 <_read_r>:
60305ca4:	e92d4070 	push	{r4, r5, r6, lr}
60305ca8:	e1a04000 	mov	r4, r0
60305cac:	e59f502c 	ldr	r5, [pc, #44]	; 60305ce0 <_read_r+0x3c>
60305cb0:	e1a00001 	mov	r0, r1
60305cb4:	e1a01002 	mov	r1, r2
60305cb8:	e3a02000 	mov	r2, #0
60305cbc:	e5852000 	str	r2, [r5]
60305cc0:	e1a02003 	mov	r2, r3
60305cc4:	eb000bb5 	bl	60308ba0 <_read>
60305cc8:	e3700001 	cmn	r0, #1
60305ccc:	18bd8070 	popne	{r4, r5, r6, pc}
60305cd0:	e5953000 	ldr	r3, [r5]
60305cd4:	e3530000 	cmp	r3, #0
60305cd8:	15843000 	strne	r3, [r4]
60305cdc:	e8bd8070 	pop	{r4, r5, r6, pc}
60305ce0:	60323160 	.word	0x60323160
60305ce4:	00000000 	.word	0x00000000

60305ce8 <frexp>:
60305ce8:	ee101a90 	vmov	r1, s1
60305cec:	e3a02000 	mov	r2, #0
60305cf0:	e5802000 	str	r2, [r0]
60305cf4:	e59f207c 	ldr	r2, [pc, #124]	; 60305d78 <frexp+0x90>
60305cf8:	e3c13102 	bic	r3, r1, #-2147483648	; 0x80000000
60305cfc:	e1530002 	cmp	r3, r2
60305d00:	c12fff1e 	bxgt	lr
60305d04:	ee102a10 	vmov	r2, s0
60305d08:	e1932002 	orrs	r2, r3, r2
60305d0c:	012fff1e 	bxeq	lr
60305d10:	e59f2064 	ldr	r2, [pc, #100]	; 60305d7c <frexp+0x94>
60305d14:	e0022001 	and	r2, r2, r1
60305d18:	e3520000 	cmp	r2, #0
60305d1c:	1a000005 	bne	60305d38 <frexp+0x50>
60305d20:	eddf0b12 	vldr	d16, [pc, #72]	; 60305d70 <frexp+0x88>
60305d24:	e3e02035 	mvn	r2, #53	; 0x35
60305d28:	e5802000 	str	r2, [r0]
60305d2c:	ee200b20 	vmul.f64	d0, d0, d16
60305d30:	ee101a90 	vmov	r1, s1
60305d34:	e3c13102 	bic	r3, r1, #-2147483648	; 0x80000000
60305d38:	e1a03a43 	asr	r3, r3, #20
60305d3c:	e5902000 	ldr	r2, [r0]
60305d40:	e2433fff 	sub	r3, r3, #1020	; 0x3fc
60305d44:	e3c1147f 	bic	r1, r1, #2130706432	; 0x7f000000
60305d48:	e2433002 	sub	r3, r3, #2
60305d4c:	e3c1160f 	bic	r1, r1, #15728640	; 0xf00000
60305d50:	e0823003 	add	r3, r2, r3
60305d54:	e5803000 	str	r3, [r0]
60305d58:	ec532b10 	vmov	r2, r3, d0
60305d5c:	e38135ff 	orr	r3, r1, #1069547520	; 0x3fc00000
60305d60:	e3833602 	orr	r3, r3, #2097152	; 0x200000
60305d64:	ec432b10 	vmov	d0, r2, r3
60305d68:	e12fff1e 	bx	lr
60305d6c:	e320f000 	nop	{0}
60305d70:	00000000 	.word	0x00000000
60305d74:	43500000 	.word	0x43500000
60305d78:	7fefffff 	.word	0x7fefffff
60305d7c:	7ff00000 	.word	0x7ff00000

60305d80 <_init_signal_r>:
60305d80:	e92d4070 	push	{r4, r5, r6, lr}
60305d84:	e5905044 	ldr	r5, [r0, #68]	; 0x44
60305d88:	e3550000 	cmp	r5, #0
60305d8c:	1a00000a 	bne	60305dbc <_init_signal_r+0x3c>
60305d90:	e1a04000 	mov	r4, r0
60305d94:	e3a01080 	mov	r1, #128	; 0x80
60305d98:	eb000a8e 	bl	603087d8 <__wrap__malloc_r>
60305d9c:	e3500000 	cmp	r0, #0
60305da0:	e5840044 	str	r0, [r4, #68]	; 0x44
60305da4:	0a000006 	beq	60305dc4 <_init_signal_r+0x44>
60305da8:	e2403004 	sub	r3, r0, #4
60305dac:	e280007c 	add	r0, r0, #124	; 0x7c
60305db0:	e5a35004 	str	r5, [r3, #4]!
60305db4:	e1530000 	cmp	r3, r0
60305db8:	1afffffc 	bne	60305db0 <_init_signal_r+0x30>
60305dbc:	e3a00000 	mov	r0, #0
60305dc0:	e8bd8070 	pop	{r4, r5, r6, pc}
60305dc4:	e3e00000 	mvn	r0, #0
60305dc8:	e8bd8070 	pop	{r4, r5, r6, pc}

60305dcc <_signal_r>:
60305dcc:	e351001f 	cmp	r1, #31
60305dd0:	e92d4070 	push	{r4, r5, r6, lr}
60305dd4:	83a03016 	movhi	r3, #22
60305dd8:	e1a04000 	mov	r4, r0
60305ddc:	85803000 	strhi	r3, [r0]
60305de0:	8a00000b 	bhi	60305e14 <_signal_r+0x48>
60305de4:	e5903044 	ldr	r3, [r0, #68]	; 0x44
60305de8:	e1a05001 	mov	r5, r1
60305dec:	e1a06002 	mov	r6, r2
60305df0:	e3530000 	cmp	r3, #0
60305df4:	0a000003 	beq	60305e08 <_signal_r+0x3c>
60305df8:	e5943044 	ldr	r3, [r4, #68]	; 0x44
60305dfc:	e7930105 	ldr	r0, [r3, r5, lsl #2]
60305e00:	e7836105 	str	r6, [r3, r5, lsl #2]
60305e04:	e8bd8070 	pop	{r4, r5, r6, pc}
60305e08:	ebffffdc 	bl	60305d80 <_init_signal_r>
60305e0c:	e3500000 	cmp	r0, #0
60305e10:	0afffff8 	beq	60305df8 <_signal_r+0x2c>
60305e14:	e3e00000 	mvn	r0, #0
60305e18:	e8bd8070 	pop	{r4, r5, r6, pc}

60305e1c <_raise_r>:
60305e1c:	e92d4070 	push	{r4, r5, r6, lr}
60305e20:	e351001f 	cmp	r1, #31
60305e24:	e1a04000 	mov	r4, r0
60305e28:	9a000003 	bls	60305e3c <_raise_r+0x20>
60305e2c:	e3a03016 	mov	r3, #22
60305e30:	e5803000 	str	r3, [r0]
60305e34:	e3e00000 	mvn	r0, #0
60305e38:	e8bd8070 	pop	{r4, r5, r6, pc}
60305e3c:	e5902044 	ldr	r2, [r0, #68]	; 0x44
60305e40:	e1a05001 	mov	r5, r1
60305e44:	e3520000 	cmp	r2, #0
60305e48:	0a000002 	beq	60305e58 <_raise_r+0x3c>
60305e4c:	e7923101 	ldr	r3, [r2, r1, lsl #2]
60305e50:	e3530000 	cmp	r3, #0
60305e54:	1a000006 	bne	60305e74 <_raise_r+0x58>
60305e58:	e1a00004 	mov	r0, r4
60305e5c:	eb000058 	bl	60305fc4 <_getpid_r>
60305e60:	e1a02005 	mov	r2, r5
60305e64:	e1a01000 	mov	r1, r0
60305e68:	e1a00004 	mov	r0, r4
60305e6c:	e8bd4070 	pop	{r4, r5, r6, lr}
60305e70:	ea000044 	b	60305f88 <_kill_r>
60305e74:	e3530001 	cmp	r3, #1
60305e78:	0a000009 	beq	60305ea4 <_raise_r+0x88>
60305e7c:	e3730001 	cmn	r3, #1
60305e80:	1a000003 	bne	60305e94 <_raise_r+0x78>
60305e84:	e3a03016 	mov	r3, #22
60305e88:	e5803000 	str	r3, [r0]
60305e8c:	e3a00001 	mov	r0, #1
60305e90:	e8bd8070 	pop	{r4, r5, r6, pc}
60305e94:	e3a04000 	mov	r4, #0
60305e98:	e1a00001 	mov	r0, r1
60305e9c:	e7824101 	str	r4, [r2, r1, lsl #2]
60305ea0:	e12fff33 	blx	r3
60305ea4:	e3a00000 	mov	r0, #0
60305ea8:	e8bd8070 	pop	{r4, r5, r6, pc}

60305eac <__sigtramp_r>:
60305eac:	e351001f 	cmp	r1, #31
60305eb0:	9a000001 	bls	60305ebc <__sigtramp_r+0x10>
60305eb4:	e3e00000 	mvn	r0, #0
60305eb8:	e12fff1e 	bx	lr
60305ebc:	e5903044 	ldr	r3, [r0, #68]	; 0x44
60305ec0:	e92d4070 	push	{r4, r5, r6, lr}
60305ec4:	e1a04000 	mov	r4, r0
60305ec8:	e1a05001 	mov	r5, r1
60305ecc:	e3530000 	cmp	r3, #0
60305ed0:	0a000005 	beq	60305eec <__sigtramp_r+0x40>
60305ed4:	e5942044 	ldr	r2, [r4, #68]	; 0x44
60305ed8:	e7923105 	ldr	r3, [r2, r5, lsl #2]
60305edc:	e3530000 	cmp	r3, #0
60305ee0:	1a000006 	bne	60305f00 <__sigtramp_r+0x54>
60305ee4:	e3a00001 	mov	r0, #1
60305ee8:	e8bd8070 	pop	{r4, r5, r6, pc}
60305eec:	ebffffa3 	bl	60305d80 <_init_signal_r>
60305ef0:	e3500000 	cmp	r0, #0
60305ef4:	0afffff6 	beq	60305ed4 <__sigtramp_r+0x28>
60305ef8:	e3e00000 	mvn	r0, #0
60305efc:	e8bd8070 	pop	{r4, r5, r6, pc}
60305f00:	e3730001 	cmn	r3, #1
60305f04:	0a000007 	beq	60305f28 <__sigtramp_r+0x7c>
60305f08:	e3530001 	cmp	r3, #1
60305f0c:	0a000007 	beq	60305f30 <__sigtramp_r+0x84>
60305f10:	e3a04000 	mov	r4, #0
60305f14:	e1a00005 	mov	r0, r5
60305f18:	e7824105 	str	r4, [r2, r5, lsl #2]
60305f1c:	e12fff33 	blx	r3
60305f20:	e1a00004 	mov	r0, r4
60305f24:	e8bd8070 	pop	{r4, r5, r6, pc}
60305f28:	e3a00002 	mov	r0, #2
60305f2c:	e8bd8070 	pop	{r4, r5, r6, pc}
60305f30:	e3a00003 	mov	r0, #3
60305f34:	e8bd8070 	pop	{r4, r5, r6, pc}

60305f38 <raise>:
60305f38:	e59f3008 	ldr	r3, [pc, #8]	; 60305f48 <raise+0x10>
60305f3c:	e1a01000 	mov	r1, r0
60305f40:	e5930000 	ldr	r0, [r3]
60305f44:	eaffffb4 	b	60305e1c <_raise_r>
60305f48:	60316000 	.word	0x60316000

60305f4c <signal>:
60305f4c:	e59f300c 	ldr	r3, [pc, #12]	; 60305f60 <signal+0x14>
60305f50:	e1a02001 	mov	r2, r1
60305f54:	e1a01000 	mov	r1, r0
60305f58:	e5930000 	ldr	r0, [r3]
60305f5c:	eaffff9a 	b	60305dcc <_signal_r>
60305f60:	60316000 	.word	0x60316000

60305f64 <_init_signal>:
60305f64:	e59f3004 	ldr	r3, [pc, #4]	; 60305f70 <_init_signal+0xc>
60305f68:	e5930000 	ldr	r0, [r3]
60305f6c:	eaffff83 	b	60305d80 <_init_signal_r>
60305f70:	60316000 	.word	0x60316000

60305f74 <__sigtramp>:
60305f74:	e59f3008 	ldr	r3, [pc, #8]	; 60305f84 <__sigtramp+0x10>
60305f78:	e1a01000 	mov	r1, r0
60305f7c:	e5930000 	ldr	r0, [r3]
60305f80:	eaffffc9 	b	60305eac <__sigtramp_r>
60305f84:	60316000 	.word	0x60316000

60305f88 <_kill_r>:
60305f88:	e92d4070 	push	{r4, r5, r6, lr}
60305f8c:	e1a04000 	mov	r4, r0
60305f90:	e59f5028 	ldr	r5, [pc, #40]	; 60305fc0 <_kill_r+0x38>
60305f94:	e1a00001 	mov	r0, r1
60305f98:	e1a01002 	mov	r1, r2
60305f9c:	e3a03000 	mov	r3, #0
60305fa0:	e5853000 	str	r3, [r5]
60305fa4:	eb000b24 	bl	60308c3c <_kill>
60305fa8:	e3700001 	cmn	r0, #1
60305fac:	18bd8070 	popne	{r4, r5, r6, pc}
60305fb0:	e5953000 	ldr	r3, [r5]
60305fb4:	e3530000 	cmp	r3, #0
60305fb8:	15843000 	strne	r3, [r4]
60305fbc:	e8bd8070 	pop	{r4, r5, r6, pc}
60305fc0:	60323160 	.word	0x60323160

60305fc4 <_getpid_r>:
60305fc4:	ea000b1a 	b	60308c34 <_getpid>

60305fc8 <_vfprintf_r>:
60305fc8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
60305fcc:	e1a07000 	mov	r7, r0
60305fd0:	e1a05001 	mov	r5, r1
60305fd4:	ed2d8b04 	vpush	{d8-d9}
60305fd8:	e24ddf4b 	sub	sp, sp, #300	; 0x12c
60305fdc:	e1a0a002 	mov	sl, r2
60305fe0:	e1a04003 	mov	r4, r3
60305fe4:	e1a08003 	mov	r8, r3
60305fe8:	ebfffaf0 	bl	60304bb0 <_localeconv_r>
60305fec:	e5903000 	ldr	r3, [r0]
60305ff0:	e58d3040 	str	r3, [sp, #64]	; 0x40
60305ff4:	e1a00003 	mov	r0, r3
60305ff8:	faffefc0 	blx	60301f00 <strlen>
60305ffc:	e3570000 	cmp	r7, #0
60306000:	e58d0028 	str	r0, [sp, #40]	; 0x28
60306004:	0a000004 	beq	6030601c <_vfprintf_r+0x54>
60306008:	e5973018 	ldr	r3, [r7, #24]
6030600c:	e3530000 	cmp	r3, #0
60306010:	1a000001 	bne	6030601c <_vfprintf_r+0x54>
60306014:	e1a00007 	mov	r0, r7
60306018:	ebffebc8 	bl	60300f40 <__sinit>
6030601c:	e5953064 	ldr	r3, [r5, #100]	; 0x64
60306020:	e3130001 	tst	r3, #1
60306024:	1a000004 	bne	6030603c <_vfprintf_r+0x74>
60306028:	e1d530bc 	ldrh	r3, [r5, #12]
6030602c:	e3130c02 	tst	r3, #512	; 0x200
60306030:	1a000001 	bne	6030603c <_vfprintf_r+0x74>
60306034:	e5950058 	ldr	r0, [r5, #88]	; 0x58
60306038:	ebffeca6 	bl	603012d8 <__retarget_lock_acquire_recursive>
6030603c:	e1d530fc 	ldrsh	r3, [r5, #12]
60306040:	e3130a02 	tst	r3, #8192	; 0x2000
60306044:	1a000004 	bne	6030605c <_vfprintf_r+0x94>
60306048:	e3833a02 	orr	r3, r3, #8192	; 0x2000
6030604c:	e1c530bc 	strh	r3, [r5, #12]
60306050:	e5953064 	ldr	r3, [r5, #100]	; 0x64
60306054:	e3c33a02 	bic	r3, r3, #8192	; 0x2000
60306058:	e5853064 	str	r3, [r5, #100]	; 0x64
6030605c:	e1d530bc 	ldrh	r3, [r5, #12]
60306060:	e3130008 	tst	r3, #8
60306064:	0a000002 	beq	60306074 <_vfprintf_r+0xac>
60306068:	e5953010 	ldr	r3, [r5, #16]
6030606c:	e3530000 	cmp	r3, #0
60306070:	1a000013 	bne	603060c4 <_vfprintf_r+0xfc>
60306074:	e1a01005 	mov	r1, r5
60306078:	e1a00007 	mov	r0, r7
6030607c:	ebfff431 	bl	60303148 <__swsetup_r>
60306080:	e3500000 	cmp	r0, #0
60306084:	0a00000e 	beq	603060c4 <_vfprintf_r+0xfc>
60306088:	e5953064 	ldr	r3, [r5, #100]	; 0x64
6030608c:	e3130001 	tst	r3, #1
60306090:	0a000005 	beq	603060ac <_vfprintf_r+0xe4>
60306094:	e3e03000 	mvn	r3, #0
60306098:	e58d302c 	str	r3, [sp, #44]	; 0x2c
6030609c:	e59d002c 	ldr	r0, [sp, #44]	; 0x2c
603060a0:	e28ddf4b 	add	sp, sp, #300	; 0x12c
603060a4:	ecbd8b04 	vpop	{d8-d9}
603060a8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
603060ac:	e1d530bc 	ldrh	r3, [r5, #12]
603060b0:	e3130c02 	tst	r3, #512	; 0x200
603060b4:	1afffff6 	bne	60306094 <_vfprintf_r+0xcc>
603060b8:	e5950058 	ldr	r0, [r5, #88]	; 0x58
603060bc:	ebffec8b 	bl	603012f0 <__retarget_lock_release_recursive>
603060c0:	eafffff3 	b	60306094 <_vfprintf_r+0xcc>
603060c4:	e1d530bc 	ldrh	r3, [r5, #12]
603060c8:	e203201a 	and	r2, r3, #26
603060cc:	e352000a 	cmp	r2, #10
603060d0:	1a000011 	bne	6030611c <_vfprintf_r+0x154>
603060d4:	e1d520fe 	ldrsh	r2, [r5, #14]
603060d8:	e3520000 	cmp	r2, #0
603060dc:	ba00000e 	blt	6030611c <_vfprintf_r+0x154>
603060e0:	e5952064 	ldr	r2, [r5, #100]	; 0x64
603060e4:	e3120001 	tst	r2, #1
603060e8:	1a000003 	bne	603060fc <_vfprintf_r+0x134>
603060ec:	e3130c02 	tst	r3, #512	; 0x200
603060f0:	1a000001 	bne	603060fc <_vfprintf_r+0x134>
603060f4:	e5950058 	ldr	r0, [r5, #88]	; 0x58
603060f8:	ebffec7c 	bl	603012f0 <__retarget_lock_release_recursive>
603060fc:	e1a03004 	mov	r3, r4
60306100:	e1a0200a 	mov	r2, sl
60306104:	e1a01005 	mov	r1, r5
60306108:	e1a00007 	mov	r0, r7
6030610c:	e28ddf4b 	add	sp, sp, #300	; 0x12c
60306110:	ecbd8b04 	vpop	{d8-d9}
60306114:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
60306118:	ea000775 	b	60307ef4 <__sbprintf>
6030611c:	f2808e30 	vmov.i64	d8, #0x0000000000000000
60306120:	e3a03000 	mov	r3, #0
60306124:	e28d4084 	add	r4, sp, #132	; 0x84
60306128:	e58d3080 	str	r3, [sp, #128]	; 0x80
6030612c:	e58d4078 	str	r4, [sp, #120]	; 0x78
60306130:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60306134:	e58d300c 	str	r3, [sp, #12]
60306138:	e58d304c 	str	r3, [sp, #76]	; 0x4c
6030613c:	e58d3048 	str	r3, [sp, #72]	; 0x48
60306140:	e58d3020 	str	r3, [sp, #32]
60306144:	e58d3038 	str	r3, [sp, #56]	; 0x38
60306148:	e58d3044 	str	r3, [sp, #68]	; 0x44
6030614c:	e58d302c 	str	r3, [sp, #44]	; 0x2c
60306150:	e1a0200a 	mov	r2, sl
60306154:	e5d23000 	ldrb	r3, [r2]
60306158:	e1a06002 	mov	r6, r2
6030615c:	e2822001 	add	r2, r2, #1
60306160:	e3530000 	cmp	r3, #0
60306164:	13530025 	cmpne	r3, #37	; 0x25
60306168:	1afffff9 	bne	60306154 <_vfprintf_r+0x18c>
6030616c:	e056900a 	subs	r9, r6, sl
60306170:	0a000014 	beq	603061c8 <_vfprintf_r+0x200>
60306174:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
60306178:	e584a000 	str	sl, [r4]
6030617c:	e0833009 	add	r3, r3, r9
60306180:	e58d3080 	str	r3, [sp, #128]	; 0x80
60306184:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60306188:	e5849004 	str	r9, [r4, #4]
6030618c:	e2833001 	add	r3, r3, #1
60306190:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60306194:	e3530007 	cmp	r3, #7
60306198:	d2844008 	addle	r4, r4, #8
6030619c:	da000006 	ble	603061bc <_vfprintf_r+0x1f4>
603061a0:	e28d2078 	add	r2, sp, #120	; 0x78
603061a4:	e1a01005 	mov	r1, r5
603061a8:	e1a00007 	mov	r0, r7
603061ac:	ebffefb4 	bl	60302084 <__sprint_r>
603061b0:	e3500000 	cmp	r0, #0
603061b4:	1a00015f 	bne	60306738 <_vfprintf_r+0x770>
603061b8:	e28d4084 	add	r4, sp, #132	; 0x84
603061bc:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
603061c0:	e0833009 	add	r3, r3, r9
603061c4:	e58d302c 	str	r3, [sp, #44]	; 0x2c
603061c8:	e5d63000 	ldrb	r3, [r6]
603061cc:	e3530000 	cmp	r3, #0
603061d0:	0a0006e9 	beq	60307d7c <_vfprintf_r+0x1db4>
603061d4:	e3a02000 	mov	r2, #0
603061d8:	e2863001 	add	r3, r6, #1
603061dc:	e1a0b002 	mov	fp, r2
603061e0:	e3e06000 	mvn	r6, #0
603061e4:	e3a0900a 	mov	r9, #10
603061e8:	e1a01006 	mov	r1, r6
603061ec:	e5cd205b 	strb	r2, [sp, #91]	; 0x5b
603061f0:	e58d2030 	str	r2, [sp, #48]	; 0x30
603061f4:	e4d32001 	ldrb	r2, [r3], #1
603061f8:	e58d2010 	str	r2, [sp, #16]
603061fc:	e58d3024 	str	r3, [sp, #36]	; 0x24
60306200:	e59d3010 	ldr	r3, [sp, #16]
60306204:	e2433020 	sub	r3, r3, #32
60306208:	e353005a 	cmp	r3, #90	; 0x5a
6030620c:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
60306210:	ea0003ff 	b	60307214 <_vfprintf_r+0x124c>
60306214:	603063d8 	.word	0x603063d8
60306218:	60307214 	.word	0x60307214
6030621c:	60307214 	.word	0x60307214
60306220:	603063f0 	.word	0x603063f0
60306224:	60307214 	.word	0x60307214
60306228:	60307214 	.word	0x60307214
6030622c:	60307214 	.word	0x60307214
60306230:	60306380 	.word	0x60306380
60306234:	60307214 	.word	0x60307214
60306238:	60307214 	.word	0x60307214
6030623c:	603063f8 	.word	0x603063f8
60306240:	60306418 	.word	0x60306418
60306244:	60307214 	.word	0x60307214
60306248:	60306410 	.word	0x60306410
6030624c:	60306420 	.word	0x60306420
60306250:	60307214 	.word	0x60307214
60306254:	60306470 	.word	0x60306470
60306258:	60306478 	.word	0x60306478
6030625c:	60306478 	.word	0x60306478
60306260:	60306478 	.word	0x60306478
60306264:	60306478 	.word	0x60306478
60306268:	60306478 	.word	0x60306478
6030626c:	60306478 	.word	0x60306478
60306270:	60306478 	.word	0x60306478
60306274:	60306478 	.word	0x60306478
60306278:	60306478 	.word	0x60306478
6030627c:	60307214 	.word	0x60307214
60306280:	60307214 	.word	0x60307214
60306284:	60307214 	.word	0x60307214
60306288:	60307214 	.word	0x60307214
6030628c:	60307214 	.word	0x60307214
60306290:	60307214 	.word	0x60307214
60306294:	60307214 	.word	0x60307214
60306298:	6030663c 	.word	0x6030663c
6030629c:	60307214 	.word	0x60307214
603062a0:	60306504 	.word	0x60306504
603062a4:	60306540 	.word	0x60306540
603062a8:	6030663c 	.word	0x6030663c
603062ac:	6030663c 	.word	0x6030663c
603062b0:	6030663c 	.word	0x6030663c
603062b4:	60307214 	.word	0x60307214
603062b8:	60307214 	.word	0x60307214
603062bc:	60307214 	.word	0x60307214
603062c0:	60307214 	.word	0x60307214
603062c4:	603064b0 	.word	0x603064b0
603062c8:	60307214 	.word	0x60307214
603062cc:	60307214 	.word	0x60307214
603062d0:	60306f88 	.word	0x60306f88
603062d4:	60307214 	.word	0x60307214
603062d8:	60307214 	.word	0x60307214
603062dc:	60307214 	.word	0x60307214
603062e0:	6030702c 	.word	0x6030702c
603062e4:	60307214 	.word	0x60307214
603062e8:	6030709c 	.word	0x6030709c
603062ec:	60307214 	.word	0x60307214
603062f0:	60307214 	.word	0x60307214
603062f4:	60307100 	.word	0x60307100
603062f8:	60307214 	.word	0x60307214
603062fc:	60307214 	.word	0x60307214
60306300:	60307214 	.word	0x60307214
60306304:	60307214 	.word	0x60307214
60306308:	60307214 	.word	0x60307214
6030630c:	60307214 	.word	0x60307214
60306310:	60307214 	.word	0x60307214
60306314:	60307214 	.word	0x60307214
60306318:	6030663c 	.word	0x6030663c
6030631c:	60307214 	.word	0x60307214
60306320:	60306504 	.word	0x60306504
60306324:	60306544 	.word	0x60306544
60306328:	6030663c 	.word	0x6030663c
6030632c:	6030663c 	.word	0x6030663c
60306330:	6030663c 	.word	0x6030663c
60306334:	603064b8 	.word	0x603064b8
60306338:	60306544 	.word	0x60306544
6030633c:	603064fc 	.word	0x603064fc
60306340:	60307214 	.word	0x60307214
60306344:	603064dc 	.word	0x603064dc
60306348:	60307214 	.word	0x60307214
6030634c:	60306f14 	.word	0x60306f14
60306350:	60306f8c 	.word	0x60306f8c
60306354:	60306ff8 	.word	0x60306ff8
60306358:	603064fc 	.word	0x603064fc
6030635c:	60307214 	.word	0x60307214
60306360:	6030702c 	.word	0x6030702c
60306364:	603063d0 	.word	0x603063d0
60306368:	603070a0 	.word	0x603070a0
6030636c:	60307214 	.word	0x60307214
60306370:	60307214 	.word	0x60307214
60306374:	6030715c 	.word	0x6030715c
60306378:	60307214 	.word	0x60307214
6030637c:	603063d0 	.word	0x603063d0
60306380:	e1a00007 	mov	r0, r7
60306384:	ebfffa09 	bl	60304bb0 <_localeconv_r>
60306388:	e5903004 	ldr	r3, [r0, #4]
6030638c:	e58d3044 	str	r3, [sp, #68]	; 0x44
60306390:	e1a00003 	mov	r0, r3
60306394:	faffeed9 	blx	60301f00 <strlen>
60306398:	e58d0038 	str	r0, [sp, #56]	; 0x38
6030639c:	e1a00007 	mov	r0, r7
603063a0:	ebfffa02 	bl	60304bb0 <_localeconv_r>
603063a4:	e5903008 	ldr	r3, [r0, #8]
603063a8:	e58d3020 	str	r3, [sp, #32]
603063ac:	e3e01000 	mvn	r1, #0
603063b0:	e59d3038 	ldr	r3, [sp, #56]	; 0x38
603063b4:	e59d2020 	ldr	r2, [sp, #32]
603063b8:	e3530000 	cmp	r3, #0
603063bc:	13520000 	cmpne	r2, #0
603063c0:	0a000002 	beq	603063d0 <_vfprintf_r+0x408>
603063c4:	e5d23000 	ldrb	r3, [r2]
603063c8:	e3530000 	cmp	r3, #0
603063cc:	138bbb01 	orrne	fp, fp, #1024	; 0x400
603063d0:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
603063d4:	eaffff86 	b	603061f4 <_vfprintf_r+0x22c>
603063d8:	e5dd305b 	ldrb	r3, [sp, #91]	; 0x5b
603063dc:	e3530000 	cmp	r3, #0
603063e0:	03a03020 	moveq	r3, #32
603063e4:	1afffff9 	bne	603063d0 <_vfprintf_r+0x408>
603063e8:	e5cd305b 	strb	r3, [sp, #91]	; 0x5b
603063ec:	eafffff7 	b	603063d0 <_vfprintf_r+0x408>
603063f0:	e38bb001 	orr	fp, fp, #1
603063f4:	eafffff5 	b	603063d0 <_vfprintf_r+0x408>
603063f8:	e4983004 	ldr	r3, [r8], #4
603063fc:	e58d3030 	str	r3, [sp, #48]	; 0x30
60306400:	e3530000 	cmp	r3, #0
60306404:	aafffff1 	bge	603063d0 <_vfprintf_r+0x408>
60306408:	e2633000 	rsb	r3, r3, #0
6030640c:	e58d3030 	str	r3, [sp, #48]	; 0x30
60306410:	e38bb004 	orr	fp, fp, #4
60306414:	eaffffed 	b	603063d0 <_vfprintf_r+0x408>
60306418:	e3a0302b 	mov	r3, #43	; 0x2b
6030641c:	eafffff1 	b	603063e8 <_vfprintf_r+0x420>
60306420:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
60306424:	e4d32001 	ldrb	r2, [r3], #1
60306428:	e58d2010 	str	r2, [sp, #16]
6030642c:	e352002a 	cmp	r2, #42	; 0x2a
60306430:	1a00000c 	bne	60306468 <_vfprintf_r+0x4a0>
60306434:	e4986004 	ldr	r6, [r8], #4
60306438:	e58d3024 	str	r3, [sp, #36]	; 0x24
6030643c:	e1560001 	cmp	r6, r1
60306440:	b1a06001 	movlt	r6, r1
60306444:	eaffffe1 	b	603063d0 <_vfprintf_r+0x408>
60306448:	e0262699 	mla	r6, r9, r6, r2
6030644c:	e4d32001 	ldrb	r2, [r3], #1
60306450:	e58d2010 	str	r2, [sp, #16]
60306454:	e59d2010 	ldr	r2, [sp, #16]
60306458:	e2422030 	sub	r2, r2, #48	; 0x30
6030645c:	e3520009 	cmp	r2, #9
60306460:	9afffff8 	bls	60306448 <_vfprintf_r+0x480>
60306464:	eaffff64 	b	603061fc <_vfprintf_r+0x234>
60306468:	e3a06000 	mov	r6, #0
6030646c:	eafffff8 	b	60306454 <_vfprintf_r+0x48c>
60306470:	e38bb080 	orr	fp, fp, #128	; 0x80
60306474:	eaffffd5 	b	603063d0 <_vfprintf_r+0x408>
60306478:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
6030647c:	e3a02000 	mov	r2, #0
60306480:	e58d2030 	str	r2, [sp, #48]	; 0x30
60306484:	e59d2010 	ldr	r2, [sp, #16]
60306488:	e59d0030 	ldr	r0, [sp, #48]	; 0x30
6030648c:	e2422030 	sub	r2, r2, #48	; 0x30
60306490:	e0222099 	mla	r2, r9, r0, r2
60306494:	e58d2030 	str	r2, [sp, #48]	; 0x30
60306498:	e4d32001 	ldrb	r2, [r3], #1
6030649c:	e58d2010 	str	r2, [sp, #16]
603064a0:	e2422030 	sub	r2, r2, #48	; 0x30
603064a4:	e3520009 	cmp	r2, #9
603064a8:	9afffff5 	bls	60306484 <_vfprintf_r+0x4bc>
603064ac:	eaffff52 	b	603061fc <_vfprintf_r+0x234>
603064b0:	e38bb008 	orr	fp, fp, #8
603064b4:	eaffffc5 	b	603063d0 <_vfprintf_r+0x408>
603064b8:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
603064bc:	e5d33000 	ldrb	r3, [r3]
603064c0:	e3530068 	cmp	r3, #104	; 0x68
603064c4:	038bbc02 	orreq	fp, fp, #512	; 0x200
603064c8:	138bb040 	orrne	fp, fp, #64	; 0x40
603064cc:	059d3024 	ldreq	r3, [sp, #36]	; 0x24
603064d0:	02833001 	addeq	r3, r3, #1
603064d4:	058d3024 	streq	r3, [sp, #36]	; 0x24
603064d8:	eaffffbc 	b	603063d0 <_vfprintf_r+0x408>
603064dc:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
603064e0:	e5d33000 	ldrb	r3, [r3]
603064e4:	e353006c 	cmp	r3, #108	; 0x6c
603064e8:	138bb010 	orrne	fp, fp, #16
603064ec:	059d3024 	ldreq	r3, [sp, #36]	; 0x24
603064f0:	02833001 	addeq	r3, r3, #1
603064f4:	058d3024 	streq	r3, [sp, #36]	; 0x24
603064f8:	1affffb4 	bne	603063d0 <_vfprintf_r+0x408>
603064fc:	e38bb020 	orr	fp, fp, #32
60306500:	eaffffb2 	b	603063d0 <_vfprintf_r+0x408>
60306504:	e1a02008 	mov	r2, r8
60306508:	e3a00000 	mov	r0, #0
6030650c:	e5cd005b 	strb	r0, [sp, #91]	; 0x5b
60306510:	e4923004 	ldr	r3, [r2], #4
60306514:	e58d2014 	str	r2, [sp, #20]
60306518:	e5cd30c4 	strb	r3, [sp, #196]	; 0xc4
6030651c:	e3a06001 	mov	r6, #1
60306520:	e1a09000 	mov	r9, r0
60306524:	e1a03000 	mov	r3, r0
60306528:	e1a08000 	mov	r8, r0
6030652c:	e28da0c4 	add	sl, sp, #196	; 0xc4
60306530:	e58d0008 	str	r0, [sp, #8]
60306534:	e58d0018 	str	r0, [sp, #24]
60306538:	e58d001c 	str	r0, [sp, #28]
6030653c:	ea000180 	b	60306b44 <_vfprintf_r+0xb7c>
60306540:	e38bb010 	orr	fp, fp, #16
60306544:	e31b0020 	tst	fp, #32
60306548:	0a00002a 	beq	603065f8 <_vfprintf_r+0x630>
6030654c:	e2888007 	add	r8, r8, #7
60306550:	e3c83007 	bic	r3, r8, #7
60306554:	e1a02003 	mov	r2, r3
60306558:	e5939004 	ldr	r9, [r3, #4]
6030655c:	e4928008 	ldr	r8, [r2], #8
60306560:	e58d2014 	str	r2, [sp, #20]
60306564:	e3590000 	cmp	r9, #0
60306568:	aa000610 	bge	60307db0 <_vfprintf_r+0x1de8>
6030656c:	e2788000 	rsbs	r8, r8, #0
60306570:	e3a0302d 	mov	r3, #45	; 0x2d
60306574:	e2e99000 	rsc	r9, r9, #0
60306578:	e5cd305b 	strb	r3, [sp, #91]	; 0x5b
6030657c:	e3a03001 	mov	r3, #1
60306580:	e3760001 	cmn	r6, #1
60306584:	11a0100b 	movne	r1, fp
60306588:	1a000303 	bne	6030719c <_vfprintf_r+0x11d4>
6030658c:	e3530001 	cmp	r3, #1
60306590:	0a00060a 	beq	60307dc0 <_vfprintf_r+0x1df8>
60306594:	e28daf4a 	add	sl, sp, #296	; 0x128
60306598:	e3530002 	cmp	r3, #2
6030659c:	0a00030f 	beq	603071e0 <_vfprintf_r+0x1218>
603065a0:	e2083007 	and	r3, r8, #7
603065a4:	e1a081a8 	lsr	r8, r8, #3
603065a8:	e1888e89 	orr	r8, r8, r9, lsl #29
603065ac:	e1a091a9 	lsr	r9, r9, #3
603065b0:	e1a0200a 	mov	r2, sl
603065b4:	e2833030 	add	r3, r3, #48	; 0x30
603065b8:	e1981009 	orrs	r1, r8, r9
603065bc:	e56a3001 	strb	r3, [sl, #-1]!
603065c0:	1afffff6 	bne	603065a0 <_vfprintf_r+0x5d8>
603065c4:	e3530030 	cmp	r3, #48	; 0x30
603065c8:	03a01000 	moveq	r1, #0
603065cc:	120b1001 	andne	r1, fp, #1
603065d0:	e3510000 	cmp	r1, #0
603065d4:	13a03030 	movne	r3, #48	; 0x30
603065d8:	154a3001 	strbne	r3, [sl, #-1]
603065dc:	1242a002 	subne	sl, r2, #2
603065e0:	e28d3f4a 	add	r3, sp, #296	; 0x128
603065e4:	e1a09006 	mov	r9, r6
603065e8:	e043600a 	sub	r6, r3, sl
603065ec:	e3a03000 	mov	r3, #0
603065f0:	e58d3008 	str	r3, [sp, #8]
603065f4:	ea000028 	b	6030669c <_vfprintf_r+0x6d4>
603065f8:	e1a03008 	mov	r3, r8
603065fc:	e31b0010 	tst	fp, #16
60306600:	e4939004 	ldr	r9, [r3], #4
60306604:	e58d3014 	str	r3, [sp, #20]
60306608:	0a000002 	beq	60306618 <_vfprintf_r+0x650>
6030660c:	e1a08009 	mov	r8, r9
60306610:	e1a09fc9 	asr	r9, r9, #31
60306614:	eaffffd2 	b	60306564 <_vfprintf_r+0x59c>
60306618:	e31b0040 	tst	fp, #64	; 0x40
6030661c:	16bf8079 	sxthne	r8, r9
60306620:	17a097d9 	sbfxne	r9, r9, #15, #1
60306624:	1affffce 	bne	60306564 <_vfprintf_r+0x59c>
60306628:	e31b0c02 	tst	fp, #512	; 0x200
6030662c:	16af8079 	sxtbne	r8, r9
60306630:	17a093d9 	sbfxne	r9, r9, #7, #1
60306634:	1affffca 	bne	60306564 <_vfprintf_r+0x59c>
60306638:	eafffff3 	b	6030660c <_vfprintf_r+0x644>
6030663c:	e2888007 	add	r8, r8, #7
60306640:	eddf0bec 	vldr	d16, [pc, #944]	; 603069f8 <_vfprintf_r+0xa30>
60306644:	e3c83007 	bic	r3, r8, #7
60306648:	ecb38b02 	vldmia	r3!, {d8}
6030664c:	eef01bc8 	vabs.f64	d17, d8
60306650:	e58d3014 	str	r3, [sp, #20]
60306654:	eef41b60 	vcmp.f64	d17, d16
60306658:	eef1fa10 	vmrs	APSR_nzcv, fpscr
6030665c:	da000012 	ble	603066ac <_vfprintf_r+0x6e4>
60306660:	eeb58bc0 	vcmpe.f64	d8, #0.0
60306664:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60306668:	43a0302d 	movmi	r3, #45	; 0x2d
6030666c:	45cd305b 	strbmi	r3, [sp, #91]	; 0x5b
60306670:	e59f2388 	ldr	r2, [pc, #904]	; 60306a00 <_vfprintf_r+0xa38>
60306674:	e59f0388 	ldr	r0, [pc, #904]	; 60306a04 <_vfprintf_r+0xa3c>
60306678:	e59d3010 	ldr	r3, [sp, #16]
6030667c:	e3cbb080 	bic	fp, fp, #128	; 0x80
60306680:	e3a06003 	mov	r6, #3
60306684:	e3530047 	cmp	r3, #71	; 0x47
60306688:	e3a03000 	mov	r3, #0
6030668c:	d1a0a002 	movle	sl, r2
60306690:	c1a0a000 	movgt	sl, r0
60306694:	e1a09003 	mov	r9, r3
60306698:	e58d3008 	str	r3, [sp, #8]
6030669c:	e1a08003 	mov	r8, r3
603066a0:	e58d3018 	str	r3, [sp, #24]
603066a4:	e58d301c 	str	r3, [sp, #28]
603066a8:	ea000125 	b	60306b44 <_vfprintf_r+0xb7c>
603066ac:	eeb48b48 	vcmp.f64	d8, d8
603066b0:	eef1fa10 	vmrs	APSR_nzcv, fpscr
603066b4:	7a000006 	bvc	603066d4 <_vfprintf_r+0x70c>
603066b8:	ee183a90 	vmov	r3, s17
603066bc:	e59f2344 	ldr	r2, [pc, #836]	; 60306a08 <_vfprintf_r+0xa40>
603066c0:	e59f0344 	ldr	r0, [pc, #836]	; 60306a0c <_vfprintf_r+0xa44>
603066c4:	e3530000 	cmp	r3, #0
603066c8:	b3a0302d 	movlt	r3, #45	; 0x2d
603066cc:	b5cd305b 	strblt	r3, [sp, #91]	; 0x5b
603066d0:	eaffffe8 	b	60306678 <_vfprintf_r+0x6b0>
603066d4:	e59d3010 	ldr	r3, [sp, #16]
603066d8:	e3c39020 	bic	r9, r3, #32
603066dc:	e3590041 	cmp	r9, #65	; 0x41
603066e0:	1a000020 	bne	60306768 <_vfprintf_r+0x7a0>
603066e4:	e3a03030 	mov	r3, #48	; 0x30
603066e8:	e5cd305c 	strb	r3, [sp, #92]	; 0x5c
603066ec:	e59d3010 	ldr	r3, [sp, #16]
603066f0:	e38bb002 	orr	fp, fp, #2
603066f4:	e3530061 	cmp	r3, #97	; 0x61
603066f8:	03a03078 	moveq	r3, #120	; 0x78
603066fc:	13a03058 	movne	r3, #88	; 0x58
60306700:	e3560063 	cmp	r6, #99	; 0x63
60306704:	e5cd305d 	strb	r3, [sp, #93]	; 0x5d
60306708:	d28da0c4 	addle	sl, sp, #196	; 0xc4
6030670c:	d3a03000 	movle	r3, #0
60306710:	d58d3008 	strle	r3, [sp, #8]
60306714:	da00001b 	ble	60306788 <_vfprintf_r+0x7c0>
60306718:	e2861001 	add	r1, r6, #1
6030671c:	e1a00007 	mov	r0, r7
60306720:	eb00082c 	bl	603087d8 <__wrap__malloc_r>
60306724:	e250a000 	subs	sl, r0, #0
60306728:	1a00006e 	bne	603068e8 <_vfprintf_r+0x920>
6030672c:	e1d530bc 	ldrh	r3, [r5, #12]
60306730:	e3833040 	orr	r3, r3, #64	; 0x40
60306734:	e1c530bc 	strh	r3, [r5, #12]
60306738:	e5953064 	ldr	r3, [r5, #100]	; 0x64
6030673c:	e3130001 	tst	r3, #1
60306740:	1a000004 	bne	60306758 <_vfprintf_r+0x790>
60306744:	e1d530bc 	ldrh	r3, [r5, #12]
60306748:	e3130c02 	tst	r3, #512	; 0x200
6030674c:	1a000001 	bne	60306758 <_vfprintf_r+0x790>
60306750:	e5950058 	ldr	r0, [r5, #88]	; 0x58
60306754:	ebffeae5 	bl	603012f0 <__retarget_lock_release_recursive>
60306758:	e1d530bc 	ldrh	r3, [r5, #12]
6030675c:	e3130040 	tst	r3, #64	; 0x40
60306760:	0afffe4d 	beq	6030609c <_vfprintf_r+0xd4>
60306764:	eafffe4a 	b	60306094 <_vfprintf_r+0xcc>
60306768:	e3760001 	cmn	r6, #1
6030676c:	e3a03000 	mov	r3, #0
60306770:	03a06006 	moveq	r6, #6
60306774:	e58d3008 	str	r3, [sp, #8]
60306778:	0a000002 	beq	60306788 <_vfprintf_r+0x7c0>
6030677c:	e1560003 	cmp	r6, r3
60306780:	03590047 	cmpeq	r9, #71	; 0x47
60306784:	03a06001 	moveq	r6, #1
60306788:	e38b3c01 	orr	r3, fp, #256	; 0x100
6030678c:	e58d3034 	str	r3, [sp, #52]	; 0x34
60306790:	ee183a90 	vmov	r3, s17
60306794:	e3530000 	cmp	r3, #0
60306798:	b3a0302d 	movlt	r3, #45	; 0x2d
6030679c:	a3a03000 	movge	r3, #0
603067a0:	e58d303c 	str	r3, [sp, #60]	; 0x3c
603067a4:	beb19b48 	vneglt.f64	d9, d8
603067a8:	aeb09b48 	vmovge.f64	d9, d8
603067ac:	e3590041 	cmp	r9, #65	; 0x41
603067b0:	1a00005d 	bne	6030692c <_vfprintf_r+0x964>
603067b4:	e28d0060 	add	r0, sp, #96	; 0x60
603067b8:	eeb00b49 	vmov.f64	d0, d9
603067bc:	ebfffd49 	bl	60305ce8 <frexp>
603067c0:	eef40b00 	vmov.f64	d16, #64	; 0x3e000000  0.125
603067c4:	e59d2010 	ldr	r2, [sp, #16]
603067c8:	e2460001 	sub	r0, r6, #1
603067cc:	ee200b20 	vmul.f64	d0, d0, d16
603067d0:	e59f1244 	ldr	r1, [pc, #580]	; 60306a1c <_vfprintf_r+0xa54>
603067d4:	eef30b00 	vmov.f64	d16, #48	; 0x41800000  16.0
603067d8:	eeb50b40 	vcmp.f64	d0, #0.0
603067dc:	eef1fa10 	vmrs	APSR_nzcv, fpscr
603067e0:	03a03001 	moveq	r3, #1
603067e4:	058d3060 	streq	r3, [sp, #96]	; 0x60
603067e8:	e59f3228 	ldr	r3, [pc, #552]	; 60306a18 <_vfprintf_r+0xa50>
603067ec:	e3520061 	cmp	r2, #97	; 0x61
603067f0:	11a01003 	movne	r1, r3
603067f4:	e1a0300a 	mov	r3, sl
603067f8:	ee200b20 	vmul.f64	d0, d0, d16
603067fc:	e3700001 	cmn	r0, #1
60306800:	eefd7bc0 	vcvt.s32.f64	s15, d0
60306804:	ee17ca90 	vmov	ip, s15
60306808:	eef81be7 	vcvt.f64.s32	d17, s15
6030680c:	e7d1200c 	ldrb	r2, [r1, ip]
60306810:	ee300b61 	vsub.f64	d0, d0, d17
60306814:	e4c32001 	strb	r2, [r3], #1
60306818:	e1a02000 	mov	r2, r0
6030681c:	0a000003 	beq	60306830 <_vfprintf_r+0x868>
60306820:	eeb50b40 	vcmp.f64	d0, #0.0
60306824:	e2400001 	sub	r0, r0, #1
60306828:	eef1fa10 	vmrs	APSR_nzcv, fpscr
6030682c:	1afffff1 	bne	603067f8 <_vfprintf_r+0x830>
60306830:	eef60b00 	vmov.f64	d16, #96	; 0x3f000000  0.5
60306834:	eeb40be0 	vcmpe.f64	d0, d16
60306838:	eef1fa10 	vmrs	APSR_nzcv, fpscr
6030683c:	ca000004 	bgt	60306854 <_vfprintf_r+0x88c>
60306840:	eeb40b60 	vcmp.f64	d0, d16
60306844:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60306848:	1a000033 	bne	6030691c <_vfprintf_r+0x954>
6030684c:	e31c0001 	tst	ip, #1
60306850:	0a000031 	beq	6030691c <_vfprintf_r+0x954>
60306854:	e5d1c00f 	ldrb	ip, [r1, #15]
60306858:	e3a0e030 	mov	lr, #48	; 0x30
6030685c:	e58d3070 	str	r3, [sp, #112]	; 0x70
60306860:	e59d0070 	ldr	r0, [sp, #112]	; 0x70
60306864:	e2402001 	sub	r2, r0, #1
60306868:	e58d2070 	str	r2, [sp, #112]	; 0x70
6030686c:	e5502001 	ldrb	r2, [r0, #-1]
60306870:	e152000c 	cmp	r2, ip
60306874:	0a00001d 	beq	603068f0 <_vfprintf_r+0x928>
60306878:	e3520039 	cmp	r2, #57	; 0x39
6030687c:	12822001 	addne	r2, r2, #1
60306880:	05d1200a 	ldrbeq	r2, [r1, #10]
60306884:	16ef2072 	uxtbne	r2, r2
60306888:	e5402001 	strb	r2, [r0, #-1]
6030688c:	e043300a 	sub	r3, r3, sl
60306890:	e59d8060 	ldr	r8, [sp, #96]	; 0x60
60306894:	e3590047 	cmp	r9, #71	; 0x47
60306898:	e58d300c 	str	r3, [sp, #12]
6030689c:	1a000061 	bne	60306a28 <_vfprintf_r+0xa60>
603068a0:	e3780003 	cmn	r8, #3
603068a4:	a3a03000 	movge	r3, #0
603068a8:	b3a03001 	movlt	r3, #1
603068ac:	e1580006 	cmp	r8, r6
603068b0:	c3833001 	orrgt	r3, r3, #1
603068b4:	e3530000 	cmp	r3, #0
603068b8:	159d3010 	ldrne	r3, [sp, #16]
603068bc:	12433002 	subne	r3, r3, #2
603068c0:	158d3010 	strne	r3, [sp, #16]
603068c4:	1a000059 	bne	60306a30 <_vfprintf_r+0xa68>
603068c8:	e59d300c 	ldr	r3, [sp, #12]
603068cc:	e1580003 	cmp	r8, r3
603068d0:	ba000176 	blt	60306eb0 <_vfprintf_r+0xee8>
603068d4:	e31b0001 	tst	fp, #1
603068d8:	159d3028 	ldrne	r3, [sp, #40]	; 0x28
603068dc:	10886003 	addne	r6, r8, r3
603068e0:	01a06008 	moveq	r6, r8
603068e4:	ea000177 	b	60306ec8 <_vfprintf_r+0xf00>
603068e8:	e58da008 	str	sl, [sp, #8]
603068ec:	eaffffa5 	b	60306788 <_vfprintf_r+0x7c0>
603068f0:	e540e001 	strb	lr, [r0, #-1]
603068f4:	eaffffd9 	b	60306860 <_vfprintf_r+0x898>
603068f8:	e4c1e001 	strb	lr, [r1], #1
603068fc:	e04c0001 	sub	r0, ip, r1
60306900:	e3500000 	cmp	r0, #0
60306904:	aafffffb 	bge	603068f8 <_vfprintf_r+0x930>
60306908:	e3720001 	cmn	r2, #1
6030690c:	a2822001 	addge	r2, r2, #1
60306910:	b3a02000 	movlt	r2, #0
60306914:	e0833002 	add	r3, r3, r2
60306918:	eaffffdb 	b	6030688c <_vfprintf_r+0x8c4>
6030691c:	e1a01003 	mov	r1, r3
60306920:	e083c002 	add	ip, r3, r2
60306924:	e3a0e030 	mov	lr, #48	; 0x30
60306928:	eafffff3 	b	603068fc <_vfprintf_r+0x934>
6030692c:	e3590046 	cmp	r9, #70	; 0x46
60306930:	01a08006 	moveq	r8, r6
60306934:	03a01003 	moveq	r1, #3
60306938:	0a000003 	beq	6030694c <_vfprintf_r+0x984>
6030693c:	e3590045 	cmp	r9, #69	; 0x45
60306940:	e3a01002 	mov	r1, #2
60306944:	02868001 	addeq	r8, r6, #1
60306948:	11a08006 	movne	r8, r6
6030694c:	e28d3070 	add	r3, sp, #112	; 0x70
60306950:	eeb00b49 	vmov.f64	d0, d9
60306954:	e58d3004 	str	r3, [sp, #4]
60306958:	e1a02008 	mov	r2, r8
6030695c:	e28d3064 	add	r3, sp, #100	; 0x64
60306960:	e1a00007 	mov	r0, r7
60306964:	e58d3000 	str	r3, [sp]
60306968:	e28d3060 	add	r3, sp, #96	; 0x60
6030696c:	ebfff2c0 	bl	60303474 <_dtoa_r>
60306970:	e3590047 	cmp	r9, #71	; 0x47
60306974:	e1a0a000 	mov	sl, r0
60306978:	1a000003 	bne	6030698c <_vfprintf_r+0x9c4>
6030697c:	e31b0001 	tst	fp, #1
60306980:	1a000001 	bne	6030698c <_vfprintf_r+0x9c4>
60306984:	e59d3070 	ldr	r3, [sp, #112]	; 0x70
60306988:	eaffffbf 	b	6030688c <_vfprintf_r+0x8c4>
6030698c:	e08a3008 	add	r3, sl, r8
60306990:	e3590046 	cmp	r9, #70	; 0x46
60306994:	1a00000c 	bne	603069cc <_vfprintf_r+0xa04>
60306998:	eeb59b40 	vcmp.f64	d9, #0.0
6030699c:	e5da1000 	ldrb	r1, [sl]
603069a0:	eef1fa10 	vmrs	APSR_nzcv, fpscr
603069a4:	13a02001 	movne	r2, #1
603069a8:	03a02000 	moveq	r2, #0
603069ac:	e3510030 	cmp	r1, #48	; 0x30
603069b0:	13a02000 	movne	r2, #0
603069b4:	02022001 	andeq	r2, r2, #1
603069b8:	e3520000 	cmp	r2, #0
603069bc:	12688001 	rsbne	r8, r8, #1
603069c0:	158d8060 	strne	r8, [sp, #96]	; 0x60
603069c4:	e59d2060 	ldr	r2, [sp, #96]	; 0x60
603069c8:	e0833002 	add	r3, r3, r2
603069cc:	eeb59b40 	vcmp.f64	d9, #0.0
603069d0:	e3a01030 	mov	r1, #48	; 0x30
603069d4:	eef1fa10 	vmrs	APSR_nzcv, fpscr
603069d8:	058d3070 	streq	r3, [sp, #112]	; 0x70
603069dc:	e59d2070 	ldr	r2, [sp, #112]	; 0x70
603069e0:	e1530002 	cmp	r3, r2
603069e4:	9affffe6 	bls	60306984 <_vfprintf_r+0x9bc>
603069e8:	e2820001 	add	r0, r2, #1
603069ec:	e58d0070 	str	r0, [sp, #112]	; 0x70
603069f0:	e5c21000 	strb	r1, [r2]
603069f4:	eafffff8 	b	603069dc <_vfprintf_r+0xa14>
603069f8:	ffffffff 	.word	0xffffffff
603069fc:	7fefffff 	.word	0x7fefffff
60306a00:	60315aa6 	.word	0x60315aa6
60306a04:	60315aaa 	.word	0x60315aaa
60306a08:	60315aae 	.word	0x60315aae
60306a0c:	60315ab2 	.word	0x60315ab2
60306a10:	66666667 	.word	0x66666667
60306a14:	603141a8 	.word	0x603141a8
60306a18:	603159b4 	.word	0x603159b4
60306a1c:	603159c5 	.word	0x603159c5
60306a20:	603159e3 	.word	0x603159e3
60306a24:	603141b8 	.word	0x603141b8
60306a28:	e3590046 	cmp	r9, #70	; 0x46
60306a2c:	0a0000f8 	beq	60306e14 <_vfprintf_r+0xe4c>
60306a30:	e59d3010 	ldr	r3, [sp, #16]
60306a34:	e2486001 	sub	r6, r8, #1
60306a38:	e58d6060 	str	r6, [sp, #96]	; 0x60
60306a3c:	e3c32020 	bic	r2, r3, #32
60306a40:	e5dd3010 	ldrb	r3, [sp, #16]
60306a44:	e3520041 	cmp	r2, #65	; 0x41
60306a48:	0283300f 	addeq	r3, r3, #15
60306a4c:	06ef3073 	uxtbeq	r3, r3
60306a50:	e3560000 	cmp	r6, #0
60306a54:	b2686001 	rsblt	r6, r8, #1
60306a58:	e5cd3068 	strb	r3, [sp, #104]	; 0x68
60306a5c:	b3a0302d 	movlt	r3, #45	; 0x2d
60306a60:	a3a0302b 	movge	r3, #43	; 0x2b
60306a64:	e3560009 	cmp	r6, #9
60306a68:	e5cd3069 	strb	r3, [sp, #105]	; 0x69
60306a6c:	da0000e0 	ble	60306df4 <_vfprintf_r+0xe2c>
60306a70:	e28d9077 	add	r9, sp, #119	; 0x77
60306a74:	e1a00006 	mov	r0, r6
60306a78:	e3a0100a 	mov	r1, #10
60306a7c:	eb00064b 	bl	603083b0 <__aeabi_idivmod>
60306a80:	e51f2078 	ldr	r2, [pc, #-120]	; 60306a10 <_vfprintf_r+0xa48>
60306a84:	e1a08009 	mov	r8, r9
60306a88:	e2811030 	add	r1, r1, #48	; 0x30
60306a8c:	e1a03006 	mov	r3, r6
60306a90:	e2499001 	sub	r9, r9, #1
60306a94:	e3530063 	cmp	r3, #99	; 0x63
60306a98:	e5481001 	strb	r1, [r8, #-1]
60306a9c:	e0c21296 	smull	r1, r2, r6, r2
60306aa0:	e1a06fc6 	asr	r6, r6, #31
60306aa4:	e0666142 	rsb	r6, r6, r2, asr #2
60306aa8:	cafffff1 	bgt	60306a74 <_vfprintf_r+0xaac>
60306aac:	e2483002 	sub	r3, r8, #2
60306ab0:	e28d006a 	add	r0, sp, #106	; 0x6a
60306ab4:	e1a02003 	mov	r2, r3
60306ab8:	e28d1077 	add	r1, sp, #119	; 0x77
60306abc:	e2866030 	add	r6, r6, #48	; 0x30
60306ac0:	e5496001 	strb	r6, [r9, #-1]
60306ac4:	e1520001 	cmp	r2, r1
60306ac8:	3a0000c6 	bcc	60306de8 <_vfprintf_r+0xe20>
60306acc:	e1530001 	cmp	r3, r1
60306ad0:	e28d2079 	add	r2, sp, #121	; 0x79
60306ad4:	90428008 	subls	r8, r2, r8
60306ad8:	83a08000 	movhi	r8, #0
60306adc:	e28d306a 	add	r3, sp, #106	; 0x6a
60306ae0:	e0838008 	add	r8, r3, r8
60306ae4:	e59d200c 	ldr	r2, [sp, #12]
60306ae8:	e28d3068 	add	r3, sp, #104	; 0x68
60306aec:	e0483003 	sub	r3, r8, r3
60306af0:	e58d3048 	str	r3, [sp, #72]	; 0x48
60306af4:	e0836002 	add	r6, r3, r2
60306af8:	e3520001 	cmp	r2, #1
60306afc:	ca000001 	bgt	60306b08 <_vfprintf_r+0xb40>
60306b00:	e31b0001 	tst	fp, #1
60306b04:	0a000001 	beq	60306b10 <_vfprintf_r+0xb48>
60306b08:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
60306b0c:	e0866003 	add	r6, r6, r3
60306b10:	e3cb3b01 	bic	r3, fp, #1024	; 0x400
60306b14:	e3833c01 	orr	r3, r3, #256	; 0x100
60306b18:	e58d3034 	str	r3, [sp, #52]	; 0x34
60306b1c:	e3a03000 	mov	r3, #0
60306b20:	e58d3018 	str	r3, [sp, #24]
60306b24:	e1a08003 	mov	r8, r3
60306b28:	e58d301c 	str	r3, [sp, #28]
60306b2c:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
60306b30:	e3a09000 	mov	r9, #0
60306b34:	e59db034 	ldr	fp, [sp, #52]	; 0x34
60306b38:	e3530000 	cmp	r3, #0
60306b3c:	13a0302d 	movne	r3, #45	; 0x2d
60306b40:	15cd305b 	strbne	r3, [sp, #91]	; 0x5b
60306b44:	e1590006 	cmp	r9, r6
60306b48:	a1a03009 	movge	r3, r9
60306b4c:	b1a03006 	movlt	r3, r6
60306b50:	e58d3034 	str	r3, [sp, #52]	; 0x34
60306b54:	e5dd305b 	ldrb	r3, [sp, #91]	; 0x5b
60306b58:	e3530000 	cmp	r3, #0
60306b5c:	159d3034 	ldrne	r3, [sp, #52]	; 0x34
60306b60:	12833001 	addne	r3, r3, #1
60306b64:	158d3034 	strne	r3, [sp, #52]	; 0x34
60306b68:	e21b3002 	ands	r3, fp, #2
60306b6c:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60306b70:	159d3034 	ldrne	r3, [sp, #52]	; 0x34
60306b74:	12833002 	addne	r3, r3, #2
60306b78:	158d3034 	strne	r3, [sp, #52]	; 0x34
60306b7c:	e21b3084 	ands	r3, fp, #132	; 0x84
60306b80:	e58d3050 	str	r3, [sp, #80]	; 0x50
60306b84:	1a00001a 	bne	60306bf4 <_vfprintf_r+0xc2c>
60306b88:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
60306b8c:	e59d2034 	ldr	r2, [sp, #52]	; 0x34
60306b90:	e0433002 	sub	r3, r3, r2
60306b94:	e3530000 	cmp	r3, #0
60306b98:	da000015 	ble	60306bf4 <_vfprintf_r+0xc2c>
60306b9c:	e59d207c 	ldr	r2, [sp, #124]	; 0x7c
60306ba0:	e2840008 	add	r0, r4, #8
60306ba4:	e51fc198 	ldr	ip, [pc, #-408]	; 60306a14 <_vfprintf_r+0xa4c>
60306ba8:	e3530010 	cmp	r3, #16
60306bac:	e59d1080 	ldr	r1, [sp, #128]	; 0x80
60306bb0:	e2822001 	add	r2, r2, #1
60306bb4:	e584c000 	str	ip, [r4]
60306bb8:	ca00019f 	bgt	6030723c <_vfprintf_r+0x1274>
60306bbc:	e3520007 	cmp	r2, #7
60306bc0:	e0811003 	add	r1, r1, r3
60306bc4:	e5843004 	str	r3, [r4, #4]
60306bc8:	d1a04000 	movle	r4, r0
60306bcc:	e58d1080 	str	r1, [sp, #128]	; 0x80
60306bd0:	e58d207c 	str	r2, [sp, #124]	; 0x7c
60306bd4:	da000006 	ble	60306bf4 <_vfprintf_r+0xc2c>
60306bd8:	e28d2078 	add	r2, sp, #120	; 0x78
60306bdc:	e1a01005 	mov	r1, r5
60306be0:	e1a00007 	mov	r0, r7
60306be4:	ebffed26 	bl	60302084 <__sprint_r>
60306be8:	e3500000 	cmp	r0, #0
60306bec:	1a000447 	bne	60307d10 <_vfprintf_r+0x1d48>
60306bf0:	e28d4084 	add	r4, sp, #132	; 0x84
60306bf4:	e5dd305b 	ldrb	r3, [sp, #91]	; 0x5b
60306bf8:	e3530000 	cmp	r3, #0
60306bfc:	0a000013 	beq	60306c50 <_vfprintf_r+0xc88>
60306c00:	e28d305b 	add	r3, sp, #91	; 0x5b
60306c04:	e5843000 	str	r3, [r4]
60306c08:	e3a03001 	mov	r3, #1
60306c0c:	e5843004 	str	r3, [r4, #4]
60306c10:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
60306c14:	e2833001 	add	r3, r3, #1
60306c18:	e58d3080 	str	r3, [sp, #128]	; 0x80
60306c1c:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60306c20:	e2833001 	add	r3, r3, #1
60306c24:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60306c28:	e3530007 	cmp	r3, #7
60306c2c:	d2844008 	addle	r4, r4, #8
60306c30:	da000006 	ble	60306c50 <_vfprintf_r+0xc88>
60306c34:	e28d2078 	add	r2, sp, #120	; 0x78
60306c38:	e1a01005 	mov	r1, r5
60306c3c:	e1a00007 	mov	r0, r7
60306c40:	ebffed0f 	bl	60302084 <__sprint_r>
60306c44:	e3500000 	cmp	r0, #0
60306c48:	1a000430 	bne	60307d10 <_vfprintf_r+0x1d48>
60306c4c:	e28d4084 	add	r4, sp, #132	; 0x84
60306c50:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
60306c54:	e3530000 	cmp	r3, #0
60306c58:	0a000013 	beq	60306cac <_vfprintf_r+0xce4>
60306c5c:	e28d305c 	add	r3, sp, #92	; 0x5c
60306c60:	e5843000 	str	r3, [r4]
60306c64:	e3a03002 	mov	r3, #2
60306c68:	e5843004 	str	r3, [r4, #4]
60306c6c:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
60306c70:	e2833002 	add	r3, r3, #2
60306c74:	e58d3080 	str	r3, [sp, #128]	; 0x80
60306c78:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60306c7c:	e2833001 	add	r3, r3, #1
60306c80:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60306c84:	e3530007 	cmp	r3, #7
60306c88:	d2844008 	addle	r4, r4, #8
60306c8c:	da000006 	ble	60306cac <_vfprintf_r+0xce4>
60306c90:	e28d2078 	add	r2, sp, #120	; 0x78
60306c94:	e1a01005 	mov	r1, r5
60306c98:	e1a00007 	mov	r0, r7
60306c9c:	ebffecf8 	bl	60302084 <__sprint_r>
60306ca0:	e3500000 	cmp	r0, #0
60306ca4:	1a000419 	bne	60307d10 <_vfprintf_r+0x1d48>
60306ca8:	e28d4084 	add	r4, sp, #132	; 0x84
60306cac:	e59d3050 	ldr	r3, [sp, #80]	; 0x50
60306cb0:	e3530080 	cmp	r3, #128	; 0x80
60306cb4:	1a00001d 	bne	60306d30 <_vfprintf_r+0xd68>
60306cb8:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
60306cbc:	e59d2034 	ldr	r2, [sp, #52]	; 0x34
60306cc0:	e0433002 	sub	r3, r3, r2
60306cc4:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60306cc8:	e3530000 	cmp	r3, #0
60306ccc:	da000017 	ble	60306d30 <_vfprintf_r+0xd68>
60306cd0:	e59d003c 	ldr	r0, [sp, #60]	; 0x3c
60306cd4:	e2841008 	add	r1, r4, #8
60306cd8:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60306cdc:	e3500010 	cmp	r0, #16
60306ce0:	e51f02c4 	ldr	r0, [pc, #-708]	; 60306a24 <_vfprintf_r+0xa5c>
60306ce4:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
60306ce8:	e2833001 	add	r3, r3, #1
60306cec:	e5840000 	str	r0, [r4]
60306cf0:	ca000164 	bgt	60307288 <_vfprintf_r+0x12c0>
60306cf4:	e59d003c 	ldr	r0, [sp, #60]	; 0x3c
60306cf8:	e3530007 	cmp	r3, #7
60306cfc:	e5840004 	str	r0, [r4, #4]
60306d00:	d1a04001 	movle	r4, r1
60306d04:	e0802002 	add	r2, r0, r2
60306d08:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60306d0c:	e58d2080 	str	r2, [sp, #128]	; 0x80
60306d10:	da000006 	ble	60306d30 <_vfprintf_r+0xd68>
60306d14:	e28d2078 	add	r2, sp, #120	; 0x78
60306d18:	e1a01005 	mov	r1, r5
60306d1c:	e1a00007 	mov	r0, r7
60306d20:	ebffecd7 	bl	60302084 <__sprint_r>
60306d24:	e3500000 	cmp	r0, #0
60306d28:	1a0003f8 	bne	60307d10 <_vfprintf_r+0x1d48>
60306d2c:	e28d4084 	add	r4, sp, #132	; 0x84
60306d30:	e0499006 	sub	r9, r9, r6
60306d34:	e3590000 	cmp	r9, #0
60306d38:	da000015 	ble	60306d94 <_vfprintf_r+0xdcc>
60306d3c:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60306d40:	e2841008 	add	r1, r4, #8
60306d44:	e51f0328 	ldr	r0, [pc, #-808]	; 60306a24 <_vfprintf_r+0xa5c>
60306d48:	e3590010 	cmp	r9, #16
60306d4c:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
60306d50:	e2833001 	add	r3, r3, #1
60306d54:	e5840000 	str	r0, [r4]
60306d58:	ca00015d 	bgt	603072d4 <_vfprintf_r+0x130c>
60306d5c:	e3530007 	cmp	r3, #7
60306d60:	e5849004 	str	r9, [r4, #4]
60306d64:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60306d68:	e0899002 	add	r9, r9, r2
60306d6c:	d1a04001 	movle	r4, r1
60306d70:	e58d9080 	str	r9, [sp, #128]	; 0x80
60306d74:	da000006 	ble	60306d94 <_vfprintf_r+0xdcc>
60306d78:	e28d2078 	add	r2, sp, #120	; 0x78
60306d7c:	e1a01005 	mov	r1, r5
60306d80:	e1a00007 	mov	r0, r7
60306d84:	ebffecbe 	bl	60302084 <__sprint_r>
60306d88:	e3500000 	cmp	r0, #0
60306d8c:	1a0003df 	bne	60307d10 <_vfprintf_r+0x1d48>
60306d90:	e28d4084 	add	r4, sp, #132	; 0x84
60306d94:	e59d0080 	ldr	r0, [sp, #128]	; 0x80
60306d98:	e31b0c01 	tst	fp, #256	; 0x100
60306d9c:	1a00015d 	bne	60307318 <_vfprintf_r+0x1350>
60306da0:	e0860000 	add	r0, r6, r0
60306da4:	e584a000 	str	sl, [r4]
60306da8:	e5846004 	str	r6, [r4, #4]
60306dac:	e58d0080 	str	r0, [sp, #128]	; 0x80
60306db0:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60306db4:	e2833001 	add	r3, r3, #1
60306db8:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60306dbc:	e3530007 	cmp	r3, #7
60306dc0:	d2844008 	addle	r4, r4, #8
60306dc4:	da00018c 	ble	603073fc <_vfprintf_r+0x1434>
60306dc8:	e28d2078 	add	r2, sp, #120	; 0x78
60306dcc:	e1a01005 	mov	r1, r5
60306dd0:	e1a00007 	mov	r0, r7
60306dd4:	ebffecaa 	bl	60302084 <__sprint_r>
60306dd8:	e3500000 	cmp	r0, #0
60306ddc:	1a0003cb 	bne	60307d10 <_vfprintf_r+0x1d48>
60306de0:	e28d4084 	add	r4, sp, #132	; 0x84
60306de4:	ea000184 	b	603073fc <_vfprintf_r+0x1434>
60306de8:	e4d2c001 	ldrb	ip, [r2], #1
60306dec:	e4c0c001 	strb	ip, [r0], #1
60306df0:	eaffff33 	b	60306ac4 <_vfprintf_r+0xafc>
60306df4:	e3520041 	cmp	r2, #65	; 0x41
60306df8:	e2866030 	add	r6, r6, #48	; 0x30
60306dfc:	128d806b 	addne	r8, sp, #107	; 0x6b
60306e00:	028d806a 	addeq	r8, sp, #106	; 0x6a
60306e04:	13a03030 	movne	r3, #48	; 0x30
60306e08:	15cd306a 	strbne	r3, [sp, #106]	; 0x6a
60306e0c:	e4c86001 	strb	r6, [r8], #1
60306e10:	eaffff33 	b	60306ae4 <_vfprintf_r+0xb1c>
60306e14:	e20b3001 	and	r3, fp, #1
60306e18:	e3580000 	cmp	r8, #0
60306e1c:	e1833006 	orr	r3, r3, r6
60306e20:	da000005 	ble	60306e3c <_vfprintf_r+0xe74>
60306e24:	e3530000 	cmp	r3, #0
60306e28:	159d3028 	ldrne	r3, [sp, #40]	; 0x28
60306e2c:	10883003 	addne	r3, r8, r3
60306e30:	1a000008 	bne	60306e58 <_vfprintf_r+0xe90>
60306e34:	e1a06008 	mov	r6, r8
60306e38:	ea000007 	b	60306e5c <_vfprintf_r+0xe94>
60306e3c:	e3530000 	cmp	r3, #0
60306e40:	03a03066 	moveq	r3, #102	; 0x66
60306e44:	03a06001 	moveq	r6, #1
60306e48:	058d3010 	streq	r3, [sp, #16]
60306e4c:	0a000004 	beq	60306e64 <_vfprintf_r+0xe9c>
60306e50:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
60306e54:	e2833001 	add	r3, r3, #1
60306e58:	e0866003 	add	r6, r6, r3
60306e5c:	e3a03066 	mov	r3, #102	; 0x66
60306e60:	e58d3010 	str	r3, [sp, #16]
60306e64:	e21b3b01 	ands	r3, fp, #1024	; 0x400
60306e68:	e58d301c 	str	r3, [sp, #28]
60306e6c:	059d301c 	ldreq	r3, [sp, #28]
60306e70:	058d3018 	streq	r3, [sp, #24]
60306e74:	0affff2c 	beq	60306b2c <_vfprintf_r+0xb64>
60306e78:	e3a03000 	mov	r3, #0
60306e7c:	e3580000 	cmp	r8, #0
60306e80:	e58d3018 	str	r3, [sp, #24]
60306e84:	e58d301c 	str	r3, [sp, #28]
60306e88:	daffff27 	ble	60306b2c <_vfprintf_r+0xb64>
60306e8c:	e59d3020 	ldr	r3, [sp, #32]
60306e90:	e5d33000 	ldrb	r3, [r3]
60306e94:	e35300ff 	cmp	r3, #255	; 0xff
60306e98:	1a00000c 	bne	60306ed0 <_vfprintf_r+0xf08>
60306e9c:	e1cd21d8 	ldrd	r2, [sp, #24]
60306ea0:	e0833002 	add	r3, r3, r2
60306ea4:	e59d2038 	ldr	r2, [sp, #56]	; 0x38
60306ea8:	e0266392 	mla	r6, r2, r3, r6
60306eac:	eaffff1e 	b	60306b2c <_vfprintf_r+0xb64>
60306eb0:	e59d300c 	ldr	r3, [sp, #12]
60306eb4:	e3580000 	cmp	r8, #0
60306eb8:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
60306ebc:	e0836002 	add	r6, r3, r2
60306ec0:	d2683001 	rsble	r3, r8, #1
60306ec4:	d0866003 	addle	r6, r6, r3
60306ec8:	e3a03067 	mov	r3, #103	; 0x67
60306ecc:	eaffffe3 	b	60306e60 <_vfprintf_r+0xe98>
60306ed0:	e1530008 	cmp	r3, r8
60306ed4:	aafffff0 	bge	60306e9c <_vfprintf_r+0xed4>
60306ed8:	e0488003 	sub	r8, r8, r3
60306edc:	e59d3020 	ldr	r3, [sp, #32]
60306ee0:	e5d33001 	ldrb	r3, [r3, #1]
60306ee4:	e3530000 	cmp	r3, #0
60306ee8:	059d3018 	ldreq	r3, [sp, #24]
60306eec:	02833001 	addeq	r3, r3, #1
60306ef0:	058d3018 	streq	r3, [sp, #24]
60306ef4:	0affffe4 	beq	60306e8c <_vfprintf_r+0xec4>
60306ef8:	e59d301c 	ldr	r3, [sp, #28]
60306efc:	e2833001 	add	r3, r3, #1
60306f00:	e58d301c 	str	r3, [sp, #28]
60306f04:	e59d3020 	ldr	r3, [sp, #32]
60306f08:	e2833001 	add	r3, r3, #1
60306f0c:	e58d3020 	str	r3, [sp, #32]
60306f10:	eaffffdd 	b	60306e8c <_vfprintf_r+0xec4>
60306f14:	e2883004 	add	r3, r8, #4
60306f18:	e31b0020 	tst	fp, #32
60306f1c:	e58d3014 	str	r3, [sp, #20]
60306f20:	0a000007 	beq	60306f44 <_vfprintf_r+0xf7c>
60306f24:	e5983000 	ldr	r3, [r8]
60306f28:	e59d202c 	ldr	r2, [sp, #44]	; 0x2c
60306f2c:	e59d102c 	ldr	r1, [sp, #44]	; 0x2c
60306f30:	e1a02fc2 	asr	r2, r2, #31
60306f34:	e8830006 	stm	r3, {r1, r2}
60306f38:	e59d8014 	ldr	r8, [sp, #20]
60306f3c:	e59da024 	ldr	sl, [sp, #36]	; 0x24
60306f40:	eafffc82 	b	60306150 <_vfprintf_r+0x188>
60306f44:	e31b0010 	tst	fp, #16
60306f48:	0a000003 	beq	60306f5c <_vfprintf_r+0xf94>
60306f4c:	e5983000 	ldr	r3, [r8]
60306f50:	e59d202c 	ldr	r2, [sp, #44]	; 0x2c
60306f54:	e5832000 	str	r2, [r3]
60306f58:	eafffff6 	b	60306f38 <_vfprintf_r+0xf70>
60306f5c:	e31b0040 	tst	fp, #64	; 0x40
60306f60:	15983000 	ldrne	r3, [r8]
60306f64:	159d202c 	ldrne	r2, [sp, #44]	; 0x2c
60306f68:	11c320b0 	strhne	r2, [r3]
60306f6c:	1afffff1 	bne	60306f38 <_vfprintf_r+0xf70>
60306f70:	e31b0c02 	tst	fp, #512	; 0x200
60306f74:	15983000 	ldrne	r3, [r8]
60306f78:	159d202c 	ldrne	r2, [sp, #44]	; 0x2c
60306f7c:	15c32000 	strbne	r2, [r3]
60306f80:	1affffec 	bne	60306f38 <_vfprintf_r+0xf70>
60306f84:	eafffff0 	b	60306f4c <_vfprintf_r+0xf84>
60306f88:	e38bb010 	orr	fp, fp, #16
60306f8c:	e21b3020 	ands	r3, fp, #32
60306f90:	0a00000a 	beq	60306fc0 <_vfprintf_r+0xff8>
60306f94:	e2888007 	add	r8, r8, #7
60306f98:	e3c83007 	bic	r3, r8, #7
60306f9c:	e1a02003 	mov	r2, r3
60306fa0:	e5939004 	ldr	r9, [r3, #4]
60306fa4:	e4928008 	ldr	r8, [r2], #8
60306fa8:	e58d2014 	str	r2, [sp, #20]
60306fac:	e3cbbb01 	bic	fp, fp, #1024	; 0x400
60306fb0:	e3a03000 	mov	r3, #0
60306fb4:	e3a02000 	mov	r2, #0
60306fb8:	e5cd205b 	strb	r2, [sp, #91]	; 0x5b
60306fbc:	eafffd6f 	b	60306580 <_vfprintf_r+0x5b8>
60306fc0:	e1a02008 	mov	r2, r8
60306fc4:	e21b9010 	ands	r9, fp, #16
60306fc8:	e4928004 	ldr	r8, [r2], #4
60306fcc:	e58d2014 	str	r2, [sp, #20]
60306fd0:	0a000001 	beq	60306fdc <_vfprintf_r+0x1014>
60306fd4:	e1a09003 	mov	r9, r3
60306fd8:	eafffff3 	b	60306fac <_vfprintf_r+0xfe4>
60306fdc:	e21b3040 	ands	r3, fp, #64	; 0x40
60306fe0:	16ff8078 	uxthne	r8, r8
60306fe4:	1afffff0 	bne	60306fac <_vfprintf_r+0xfe4>
60306fe8:	e21b9c02 	ands	r9, fp, #512	; 0x200
60306fec:	0affffee 	beq	60306fac <_vfprintf_r+0xfe4>
60306ff0:	e6ef8078 	uxtb	r8, r8
60306ff4:	eafffff6 	b	60306fd4 <_vfprintf_r+0x100c>
60306ff8:	e1a03008 	mov	r3, r8
60306ffc:	e3a02078 	mov	r2, #120	; 0x78
60307000:	e3a09000 	mov	r9, #0
60307004:	e38bb002 	orr	fp, fp, #2
60307008:	e58d2010 	str	r2, [sp, #16]
6030700c:	e4938004 	ldr	r8, [r3], #4
60307010:	e58d3014 	str	r3, [sp, #20]
60307014:	e3073830 	movw	r3, #30768	; 0x7830
60307018:	e1cd35bc 	strh	r3, [sp, #92]	; 0x5c
6030701c:	e51f3608 	ldr	r3, [pc, #-1544]	; 60306a1c <_vfprintf_r+0xa54>
60307020:	e58d304c 	str	r3, [sp, #76]	; 0x4c
60307024:	e3a03002 	mov	r3, #2
60307028:	eaffffe1 	b	60306fb4 <_vfprintf_r+0xfec>
6030702c:	e1a03008 	mov	r3, r8
60307030:	e3760001 	cmn	r6, #1
60307034:	e3a08000 	mov	r8, #0
60307038:	e5cd805b 	strb	r8, [sp, #91]	; 0x5b
6030703c:	e493a004 	ldr	sl, [r3], #4
60307040:	e58d3014 	str	r3, [sp, #20]
60307044:	0a00000d 	beq	60307080 <_vfprintf_r+0x10b8>
60307048:	e1a02006 	mov	r2, r6
6030704c:	e1a01008 	mov	r1, r8
60307050:	e1a0000a 	mov	r0, sl
60307054:	fafff759 	blx	60304dc0 <memchr>
60307058:	e2503000 	subs	r3, r0, #0
6030705c:	e58d3008 	str	r3, [sp, #8]
60307060:	0a000073 	beq	60307234 <_vfprintf_r+0x126c>
60307064:	e043600a 	sub	r6, r3, sl
60307068:	e1a09008 	mov	r9, r8
6030706c:	e1a03008 	mov	r3, r8
60307070:	e58d8008 	str	r8, [sp, #8]
60307074:	e58d8018 	str	r8, [sp, #24]
60307078:	e58d801c 	str	r8, [sp, #28]
6030707c:	eafffeb0 	b	60306b44 <_vfprintf_r+0xb7c>
60307080:	e1a0000a 	mov	r0, sl
60307084:	e1a09008 	mov	r9, r8
60307088:	faffeb9c 	blx	60301f00 <strlen>
6030708c:	e1a06000 	mov	r6, r0
60307090:	e58d8008 	str	r8, [sp, #8]
60307094:	e1a03009 	mov	r3, r9
60307098:	eafffd7f 	b	6030669c <_vfprintf_r+0x6d4>
6030709c:	e38bb010 	orr	fp, fp, #16
603070a0:	e21b3020 	ands	r3, fp, #32
603070a4:	0a000007 	beq	603070c8 <_vfprintf_r+0x1100>
603070a8:	e2888007 	add	r8, r8, #7
603070ac:	e3c83007 	bic	r3, r8, #7
603070b0:	e1a02003 	mov	r2, r3
603070b4:	e5939004 	ldr	r9, [r3, #4]
603070b8:	e4928008 	ldr	r8, [r2], #8
603070bc:	e58d2014 	str	r2, [sp, #20]
603070c0:	e3a03001 	mov	r3, #1
603070c4:	eaffffba 	b	60306fb4 <_vfprintf_r+0xfec>
603070c8:	e1a02008 	mov	r2, r8
603070cc:	e21b9010 	ands	r9, fp, #16
603070d0:	e4928004 	ldr	r8, [r2], #4
603070d4:	e58d2014 	str	r2, [sp, #20]
603070d8:	0a000001 	beq	603070e4 <_vfprintf_r+0x111c>
603070dc:	e1a09003 	mov	r9, r3
603070e0:	eafffff6 	b	603070c0 <_vfprintf_r+0x10f8>
603070e4:	e21b3040 	ands	r3, fp, #64	; 0x40
603070e8:	16ff8078 	uxthne	r8, r8
603070ec:	1afffff3 	bne	603070c0 <_vfprintf_r+0x10f8>
603070f0:	e21b9c02 	ands	r9, fp, #512	; 0x200
603070f4:	0afffff1 	beq	603070c0 <_vfprintf_r+0x10f8>
603070f8:	e6ef8078 	uxtb	r8, r8
603070fc:	eafffff6 	b	603070dc <_vfprintf_r+0x1114>
60307100:	e51f36f0 	ldr	r3, [pc, #-1776]	; 60306a18 <_vfprintf_r+0xa50>
60307104:	e58d304c 	str	r3, [sp, #76]	; 0x4c
60307108:	e21b3020 	ands	r3, fp, #32
6030710c:	0a000014 	beq	60307164 <_vfprintf_r+0x119c>
60307110:	e2888007 	add	r8, r8, #7
60307114:	e3c83007 	bic	r3, r8, #7
60307118:	e1a02003 	mov	r2, r3
6030711c:	e5939004 	ldr	r9, [r3, #4]
60307120:	e4928008 	ldr	r8, [r2], #8
60307124:	e58d2014 	str	r2, [sp, #20]
60307128:	e1983009 	orrs	r3, r8, r9
6030712c:	03a03000 	moveq	r3, #0
60307130:	120b3001 	andne	r3, fp, #1
60307134:	e3530000 	cmp	r3, #0
60307138:	0a000004 	beq	60307150 <_vfprintf_r+0x1188>
6030713c:	e3a03030 	mov	r3, #48	; 0x30
60307140:	e38bb002 	orr	fp, fp, #2
60307144:	e5cd305c 	strb	r3, [sp, #92]	; 0x5c
60307148:	e59d3010 	ldr	r3, [sp, #16]
6030714c:	e5cd305d 	strb	r3, [sp, #93]	; 0x5d
60307150:	e3cbbb01 	bic	fp, fp, #1024	; 0x400
60307154:	e3a03002 	mov	r3, #2
60307158:	eaffff95 	b	60306fb4 <_vfprintf_r+0xfec>
6030715c:	e51f3748 	ldr	r3, [pc, #-1864]	; 60306a1c <_vfprintf_r+0xa54>
60307160:	eaffffe7 	b	60307104 <_vfprintf_r+0x113c>
60307164:	e1a02008 	mov	r2, r8
60307168:	e21b9010 	ands	r9, fp, #16
6030716c:	e4928004 	ldr	r8, [r2], #4
60307170:	e58d2014 	str	r2, [sp, #20]
60307174:	0a000001 	beq	60307180 <_vfprintf_r+0x11b8>
60307178:	e1a09003 	mov	r9, r3
6030717c:	eaffffe9 	b	60307128 <_vfprintf_r+0x1160>
60307180:	e21b3040 	ands	r3, fp, #64	; 0x40
60307184:	16ff8078 	uxthne	r8, r8
60307188:	1affffe6 	bne	60307128 <_vfprintf_r+0x1160>
6030718c:	e21b9c02 	ands	r9, fp, #512	; 0x200
60307190:	0affffe4 	beq	60307128 <_vfprintf_r+0x1160>
60307194:	e6ef8078 	uxtb	r8, r8
60307198:	eafffff6 	b	60307178 <_vfprintf_r+0x11b0>
6030719c:	e1882009 	orr	r2, r8, r9
603071a0:	e3cbb080 	bic	fp, fp, #128	; 0x80
603071a4:	e3520000 	cmp	r2, #0
603071a8:	03560000 	cmpeq	r6, #0
603071ac:	13a02001 	movne	r2, #1
603071b0:	03a02000 	moveq	r2, #0
603071b4:	1afffcf4 	bne	6030658c <_vfprintf_r+0x5c4>
603071b8:	e3530000 	cmp	r3, #0
603071bc:	1a000011 	bne	60307208 <_vfprintf_r+0x1240>
603071c0:	e2116001 	ands	r6, r1, #1
603071c4:	0a000010 	beq	6030720c <_vfprintf_r+0x1244>
603071c8:	e1a06003 	mov	r6, r3
603071cc:	e3a02030 	mov	r2, #48	; 0x30
603071d0:	e5cd2127 	strb	r2, [sp, #295]	; 0x127
603071d4:	e28daf49 	add	sl, sp, #292	; 0x124
603071d8:	e28aa003 	add	sl, sl, #3
603071dc:	eafffcff 	b	603065e0 <_vfprintf_r+0x618>
603071e0:	e208300f 	and	r3, r8, #15
603071e4:	e59d204c 	ldr	r2, [sp, #76]	; 0x4c
603071e8:	e1a08228 	lsr	r8, r8, #4
603071ec:	e1888e09 	orr	r8, r8, r9, lsl #28
603071f0:	e1a09229 	lsr	r9, r9, #4
603071f4:	e7d23003 	ldrb	r3, [r2, r3]
603071f8:	e56a3001 	strb	r3, [sl, #-1]!
603071fc:	e1983009 	orrs	r3, r8, r9
60307200:	1afffff6 	bne	603071e0 <_vfprintf_r+0x1218>
60307204:	eafffcf5 	b	603065e0 <_vfprintf_r+0x618>
60307208:	e1a06002 	mov	r6, r2
6030720c:	e28daf4a 	add	sl, sp, #296	; 0x128
60307210:	eafffcf2 	b	603065e0 <_vfprintf_r+0x618>
60307214:	e59d3010 	ldr	r3, [sp, #16]
60307218:	e3530000 	cmp	r3, #0
6030721c:	0a0002d6 	beq	60307d7c <_vfprintf_r+0x1db4>
60307220:	e3a00000 	mov	r0, #0
60307224:	e5cd30c4 	strb	r3, [sp, #196]	; 0xc4
60307228:	e5cd005b 	strb	r0, [sp, #91]	; 0x5b
6030722c:	e58d8014 	str	r8, [sp, #20]
60307230:	eafffcb9 	b	6030651c <_vfprintf_r+0x554>
60307234:	e59d9008 	ldr	r9, [sp, #8]
60307238:	eaffff95 	b	60307094 <_vfprintf_r+0x10cc>
6030723c:	e3a0c010 	mov	ip, #16
60307240:	e3520007 	cmp	r2, #7
60307244:	e081100c 	add	r1, r1, ip
60307248:	e584c004 	str	ip, [r4, #4]
6030724c:	e58d1080 	str	r1, [sp, #128]	; 0x80
60307250:	e58d207c 	str	r2, [sp, #124]	; 0x7c
60307254:	da000008 	ble	6030727c <_vfprintf_r+0x12b4>
60307258:	e28d2078 	add	r2, sp, #120	; 0x78
6030725c:	e1a01005 	mov	r1, r5
60307260:	e1a00007 	mov	r0, r7
60307264:	e58d3054 	str	r3, [sp, #84]	; 0x54
60307268:	ebffeb85 	bl	60302084 <__sprint_r>
6030726c:	e3500000 	cmp	r0, #0
60307270:	1a0002a6 	bne	60307d10 <_vfprintf_r+0x1d48>
60307274:	e59d3054 	ldr	r3, [sp, #84]	; 0x54
60307278:	e28d0084 	add	r0, sp, #132	; 0x84
6030727c:	e2433010 	sub	r3, r3, #16
60307280:	e1a04000 	mov	r4, r0
60307284:	eafffe44 	b	60306b9c <_vfprintf_r+0xbd4>
60307288:	e3a00010 	mov	r0, #16
6030728c:	e3530007 	cmp	r3, #7
60307290:	e0822000 	add	r2, r2, r0
60307294:	e5840004 	str	r0, [r4, #4]
60307298:	e58d2080 	str	r2, [sp, #128]	; 0x80
6030729c:	e58d307c 	str	r3, [sp, #124]	; 0x7c
603072a0:	da000006 	ble	603072c0 <_vfprintf_r+0x12f8>
603072a4:	e28d2078 	add	r2, sp, #120	; 0x78
603072a8:	e1a01005 	mov	r1, r5
603072ac:	e1a00007 	mov	r0, r7
603072b0:	ebffeb73 	bl	60302084 <__sprint_r>
603072b4:	e3500000 	cmp	r0, #0
603072b8:	1a000294 	bne	60307d10 <_vfprintf_r+0x1d48>
603072bc:	e28d1084 	add	r1, sp, #132	; 0x84
603072c0:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
603072c4:	e1a04001 	mov	r4, r1
603072c8:	e2433010 	sub	r3, r3, #16
603072cc:	e58d303c 	str	r3, [sp, #60]	; 0x3c
603072d0:	eafffe7e 	b	60306cd0 <_vfprintf_r+0xd08>
603072d4:	e3a00010 	mov	r0, #16
603072d8:	e3530007 	cmp	r3, #7
603072dc:	e0822000 	add	r2, r2, r0
603072e0:	e5840004 	str	r0, [r4, #4]
603072e4:	e58d2080 	str	r2, [sp, #128]	; 0x80
603072e8:	e58d307c 	str	r3, [sp, #124]	; 0x7c
603072ec:	da000006 	ble	6030730c <_vfprintf_r+0x1344>
603072f0:	e28d2078 	add	r2, sp, #120	; 0x78
603072f4:	e1a01005 	mov	r1, r5
603072f8:	e1a00007 	mov	r0, r7
603072fc:	ebffeb60 	bl	60302084 <__sprint_r>
60307300:	e3500000 	cmp	r0, #0
60307304:	1a000281 	bne	60307d10 <_vfprintf_r+0x1d48>
60307308:	e28d1084 	add	r1, sp, #132	; 0x84
6030730c:	e2499010 	sub	r9, r9, #16
60307310:	e1a04001 	mov	r4, r1
60307314:	eafffe88 	b	60306d3c <_vfprintf_r+0xd74>
60307318:	e59d3010 	ldr	r3, [sp, #16]
6030731c:	e3530065 	cmp	r3, #101	; 0x65
60307320:	da0001e2 	ble	60307ab0 <_vfprintf_r+0x1ae8>
60307324:	eeb58b40 	vcmp.f64	d8, #0.0
60307328:	eef1fa10 	vmrs	APSR_nzcv, fpscr
6030732c:	1a00006a 	bne	603074dc <_vfprintf_r+0x1514>
60307330:	e51f3918 	ldr	r3, [pc, #-2328]	; 60306a20 <_vfprintf_r+0xa58>
60307334:	e5843000 	str	r3, [r4]
60307338:	e3a03001 	mov	r3, #1
6030733c:	e0800003 	add	r0, r0, r3
60307340:	e5843004 	str	r3, [r4, #4]
60307344:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60307348:	e58d0080 	str	r0, [sp, #128]	; 0x80
6030734c:	e2833001 	add	r3, r3, #1
60307350:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60307354:	e3530007 	cmp	r3, #7
60307358:	d2844008 	addle	r4, r4, #8
6030735c:	da000006 	ble	6030737c <_vfprintf_r+0x13b4>
60307360:	e28d2078 	add	r2, sp, #120	; 0x78
60307364:	e1a01005 	mov	r1, r5
60307368:	e1a00007 	mov	r0, r7
6030736c:	ebffeb44 	bl	60302084 <__sprint_r>
60307370:	e3500000 	cmp	r0, #0
60307374:	1a000265 	bne	60307d10 <_vfprintf_r+0x1d48>
60307378:	e28d4084 	add	r4, sp, #132	; 0x84
6030737c:	e59d3060 	ldr	r3, [sp, #96]	; 0x60
60307380:	e59d200c 	ldr	r2, [sp, #12]
60307384:	e1530002 	cmp	r3, r2
60307388:	ba000001 	blt	60307394 <_vfprintf_r+0x13cc>
6030738c:	e31b0001 	tst	fp, #1
60307390:	0a000019 	beq	603073fc <_vfprintf_r+0x1434>
60307394:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
60307398:	e5843000 	str	r3, [r4]
6030739c:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
603073a0:	e5843004 	str	r3, [r4, #4]
603073a4:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
603073a8:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
603073ac:	e0833002 	add	r3, r3, r2
603073b0:	e58d3080 	str	r3, [sp, #128]	; 0x80
603073b4:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
603073b8:	e2833001 	add	r3, r3, #1
603073bc:	e58d307c 	str	r3, [sp, #124]	; 0x7c
603073c0:	e3530007 	cmp	r3, #7
603073c4:	d2844008 	addle	r4, r4, #8
603073c8:	da000006 	ble	603073e8 <_vfprintf_r+0x1420>
603073cc:	e28d2078 	add	r2, sp, #120	; 0x78
603073d0:	e1a01005 	mov	r1, r5
603073d4:	e1a00007 	mov	r0, r7
603073d8:	ebffeb29 	bl	60302084 <__sprint_r>
603073dc:	e3500000 	cmp	r0, #0
603073e0:	1a00024a 	bne	60307d10 <_vfprintf_r+0x1d48>
603073e4:	e28d4084 	add	r4, sp, #132	; 0x84
603073e8:	e59d300c 	ldr	r3, [sp, #12]
603073ec:	e2436001 	sub	r6, r3, #1
603073f0:	e3560000 	cmp	r6, #0
603073f4:	c3a08010 	movgt	r8, #16
603073f8:	ca000027 	bgt	6030749c <_vfprintf_r+0x14d4>
603073fc:	e31b0004 	tst	fp, #4
60307400:	1a000229 	bne	60307cac <_vfprintf_r+0x1ce4>
60307404:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
60307408:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
6030740c:	e59d1034 	ldr	r1, [sp, #52]	; 0x34
60307410:	e1520001 	cmp	r2, r1
60307414:	a0833002 	addge	r3, r3, r2
60307418:	b0833001 	addlt	r3, r3, r1
6030741c:	e58d302c 	str	r3, [sp, #44]	; 0x2c
60307420:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
60307424:	e3530000 	cmp	r3, #0
60307428:	0a000005 	beq	60307444 <_vfprintf_r+0x147c>
6030742c:	e28d2078 	add	r2, sp, #120	; 0x78
60307430:	e1a01005 	mov	r1, r5
60307434:	e1a00007 	mov	r0, r7
60307438:	ebffeb11 	bl	60302084 <__sprint_r>
6030743c:	e3500000 	cmp	r0, #0
60307440:	1a000232 	bne	60307d10 <_vfprintf_r+0x1d48>
60307444:	e3a03000 	mov	r3, #0
60307448:	e58d307c 	str	r3, [sp, #124]	; 0x7c
6030744c:	e59d3008 	ldr	r3, [sp, #8]
60307450:	e3530000 	cmp	r3, #0
60307454:	1a000244 	bne	60307d6c <_vfprintf_r+0x1da4>
60307458:	e28d4084 	add	r4, sp, #132	; 0x84
6030745c:	eafffeb5 	b	60306f38 <_vfprintf_r+0xf70>
60307460:	e2822010 	add	r2, r2, #16
60307464:	e3530007 	cmp	r3, #7
60307468:	e5848004 	str	r8, [r4, #4]
6030746c:	e58d2080 	str	r2, [sp, #128]	; 0x80
60307470:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60307474:	da000006 	ble	60307494 <_vfprintf_r+0x14cc>
60307478:	e28d2078 	add	r2, sp, #120	; 0x78
6030747c:	e1a01005 	mov	r1, r5
60307480:	e1a00007 	mov	r0, r7
60307484:	ebffeafe 	bl	60302084 <__sprint_r>
60307488:	e3500000 	cmp	r0, #0
6030748c:	1a00021f 	bne	60307d10 <_vfprintf_r+0x1d48>
60307490:	e28d1084 	add	r1, sp, #132	; 0x84
60307494:	e2466010 	sub	r6, r6, #16
60307498:	e1a04001 	mov	r4, r1
6030749c:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
603074a0:	e2841008 	add	r1, r4, #8
603074a4:	e51f0a88 	ldr	r0, [pc, #-2696]	; 60306a24 <_vfprintf_r+0xa5c>
603074a8:	e3560010 	cmp	r6, #16
603074ac:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
603074b0:	e2833001 	add	r3, r3, #1
603074b4:	e5840000 	str	r0, [r4]
603074b8:	caffffe8 	bgt	60307460 <_vfprintf_r+0x1498>
603074bc:	e5846004 	str	r6, [r4, #4]
603074c0:	e0866002 	add	r6, r6, r2
603074c4:	e58d6080 	str	r6, [sp, #128]	; 0x80
603074c8:	e3530007 	cmp	r3, #7
603074cc:	e58d307c 	str	r3, [sp, #124]	; 0x7c
603074d0:	d1a04001 	movle	r4, r1
603074d4:	daffffc8 	ble	603073fc <_vfprintf_r+0x1434>
603074d8:	eafffe3a 	b	60306dc8 <_vfprintf_r+0xe00>
603074dc:	e59d3060 	ldr	r3, [sp, #96]	; 0x60
603074e0:	e3530000 	cmp	r3, #0
603074e4:	ca00005f 	bgt	60307668 <_vfprintf_r+0x16a0>
603074e8:	e51f3ad0 	ldr	r3, [pc, #-2768]	; 60306a20 <_vfprintf_r+0xa58>
603074ec:	e5843000 	str	r3, [r4]
603074f0:	e3a03001 	mov	r3, #1
603074f4:	e0800003 	add	r0, r0, r3
603074f8:	e5843004 	str	r3, [r4, #4]
603074fc:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60307500:	e58d0080 	str	r0, [sp, #128]	; 0x80
60307504:	e2833001 	add	r3, r3, #1
60307508:	e58d307c 	str	r3, [sp, #124]	; 0x7c
6030750c:	e3530007 	cmp	r3, #7
60307510:	d2844008 	addle	r4, r4, #8
60307514:	da000006 	ble	60307534 <_vfprintf_r+0x156c>
60307518:	e28d2078 	add	r2, sp, #120	; 0x78
6030751c:	e1a01005 	mov	r1, r5
60307520:	e1a00007 	mov	r0, r7
60307524:	ebffead6 	bl	60302084 <__sprint_r>
60307528:	e3500000 	cmp	r0, #0
6030752c:	1a0001f7 	bne	60307d10 <_vfprintf_r+0x1d48>
60307530:	e28d4084 	add	r4, sp, #132	; 0x84
60307534:	e59d100c 	ldr	r1, [sp, #12]
60307538:	e59d2060 	ldr	r2, [sp, #96]	; 0x60
6030753c:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
60307540:	e1812002 	orr	r2, r1, r2
60307544:	e20b1001 	and	r1, fp, #1
60307548:	e1922001 	orrs	r2, r2, r1
6030754c:	0affffaa 	beq	603073fc <_vfprintf_r+0x1434>
60307550:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
60307554:	e5842000 	str	r2, [r4]
60307558:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
6030755c:	e5842004 	str	r2, [r4, #4]
60307560:	e0823003 	add	r3, r2, r3
60307564:	e58d3080 	str	r3, [sp, #128]	; 0x80
60307568:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
6030756c:	e2833001 	add	r3, r3, #1
60307570:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60307574:	e3530007 	cmp	r3, #7
60307578:	d2844008 	addle	r4, r4, #8
6030757c:	da000006 	ble	6030759c <_vfprintf_r+0x15d4>
60307580:	e28d2078 	add	r2, sp, #120	; 0x78
60307584:	e1a01005 	mov	r1, r5
60307588:	e1a00007 	mov	r0, r7
6030758c:	ebffeabc 	bl	60302084 <__sprint_r>
60307590:	e3500000 	cmp	r0, #0
60307594:	1a0001dd 	bne	60307d10 <_vfprintf_r+0x1d48>
60307598:	e28d4084 	add	r4, sp, #132	; 0x84
6030759c:	e59d6060 	ldr	r6, [sp, #96]	; 0x60
603075a0:	e3560000 	cmp	r6, #0
603075a4:	b2666000 	rsblt	r6, r6, #0
603075a8:	b1a02004 	movlt	r2, r4
603075ac:	b3a08010 	movlt	r8, #16
603075b0:	ba000016 	blt	60307610 <_vfprintf_r+0x1648>
603075b4:	e59d300c 	ldr	r3, [sp, #12]
603075b8:	e59d200c 	ldr	r2, [sp, #12]
603075bc:	e5843004 	str	r3, [r4, #4]
603075c0:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
603075c4:	e584a000 	str	sl, [r4]
603075c8:	e0833002 	add	r3, r3, r2
603075cc:	e58d3080 	str	r3, [sp, #128]	; 0x80
603075d0:	eafffdf6 	b	60306db0 <_vfprintf_r+0xde8>
603075d4:	e2811010 	add	r1, r1, #16
603075d8:	e3530007 	cmp	r3, #7
603075dc:	e5828004 	str	r8, [r2, #4]
603075e0:	e58d1080 	str	r1, [sp, #128]	; 0x80
603075e4:	e58d307c 	str	r3, [sp, #124]	; 0x7c
603075e8:	da000006 	ble	60307608 <_vfprintf_r+0x1640>
603075ec:	e28d2078 	add	r2, sp, #120	; 0x78
603075f0:	e1a01005 	mov	r1, r5
603075f4:	e1a00007 	mov	r0, r7
603075f8:	ebffeaa1 	bl	60302084 <__sprint_r>
603075fc:	e3500000 	cmp	r0, #0
60307600:	1a0001c2 	bne	60307d10 <_vfprintf_r+0x1d48>
60307604:	e28d4084 	add	r4, sp, #132	; 0x84
60307608:	e2466010 	sub	r6, r6, #16
6030760c:	e1a02004 	mov	r2, r4
60307610:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60307614:	e2844008 	add	r4, r4, #8
60307618:	e51f0bfc 	ldr	r0, [pc, #-3068]	; 60306a24 <_vfprintf_r+0xa5c>
6030761c:	e3560010 	cmp	r6, #16
60307620:	e59d1080 	ldr	r1, [sp, #128]	; 0x80
60307624:	e2833001 	add	r3, r3, #1
60307628:	e5820000 	str	r0, [r2]
6030762c:	caffffe8 	bgt	603075d4 <_vfprintf_r+0x160c>
60307630:	e5826004 	str	r6, [r2, #4]
60307634:	e3530007 	cmp	r3, #7
60307638:	e0866001 	add	r6, r6, r1
6030763c:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60307640:	e58d6080 	str	r6, [sp, #128]	; 0x80
60307644:	daffffda 	ble	603075b4 <_vfprintf_r+0x15ec>
60307648:	e28d2078 	add	r2, sp, #120	; 0x78
6030764c:	e1a01005 	mov	r1, r5
60307650:	e1a00007 	mov	r0, r7
60307654:	ebffea8a 	bl	60302084 <__sprint_r>
60307658:	e3500000 	cmp	r0, #0
6030765c:	1a0001ab 	bne	60307d10 <_vfprintf_r+0x1d48>
60307660:	e28d4084 	add	r4, sp, #132	; 0x84
60307664:	eaffffd2 	b	603075b4 <_vfprintf_r+0x15ec>
60307668:	e59d300c 	ldr	r3, [sp, #12]
6030766c:	e1580003 	cmp	r8, r3
60307670:	b1a09008 	movlt	r9, r8
60307674:	a1a09003 	movge	r9, r3
60307678:	e3590000 	cmp	r9, #0
6030767c:	da000010 	ble	603076c4 <_vfprintf_r+0x16fc>
60307680:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60307684:	e0890000 	add	r0, r9, r0
60307688:	e584a000 	str	sl, [r4]
6030768c:	e2833001 	add	r3, r3, #1
60307690:	e5849004 	str	r9, [r4, #4]
60307694:	e3530007 	cmp	r3, #7
60307698:	e58d0080 	str	r0, [sp, #128]	; 0x80
6030769c:	d2844008 	addle	r4, r4, #8
603076a0:	e58d307c 	str	r3, [sp, #124]	; 0x7c
603076a4:	da000006 	ble	603076c4 <_vfprintf_r+0x16fc>
603076a8:	e28d2078 	add	r2, sp, #120	; 0x78
603076ac:	e1a01005 	mov	r1, r5
603076b0:	e1a00007 	mov	r0, r7
603076b4:	ebffea72 	bl	60302084 <__sprint_r>
603076b8:	e3500000 	cmp	r0, #0
603076bc:	1a000193 	bne	60307d10 <_vfprintf_r+0x1d48>
603076c0:	e28d4084 	add	r4, sp, #132	; 0x84
603076c4:	e3590000 	cmp	r9, #0
603076c8:	a0486009 	subge	r6, r8, r9
603076cc:	b1a06008 	movlt	r6, r8
603076d0:	e3560000 	cmp	r6, #0
603076d4:	c3a09010 	movgt	r9, #16
603076d8:	ca000063 	bgt	6030786c <_vfprintf_r+0x18a4>
603076dc:	e08a8008 	add	r8, sl, r8
603076e0:	e31b0b01 	tst	fp, #1024	; 0x400
603076e4:	0a000007 	beq	60307708 <_vfprintf_r+0x1740>
603076e8:	e1cd21d8 	ldrd	r2, [sp, #24]
603076ec:	e3520000 	cmp	r2, #0
603076f0:	d3530000 	cmple	r3, #0
603076f4:	ca000073 	bgt	603078c8 <_vfprintf_r+0x1900>
603076f8:	e59d300c 	ldr	r3, [sp, #12]
603076fc:	e08a3003 	add	r3, sl, r3
60307700:	e1580003 	cmp	r8, r3
60307704:	21a08003 	movcs	r8, r3
60307708:	e59d3060 	ldr	r3, [sp, #96]	; 0x60
6030770c:	e59d200c 	ldr	r2, [sp, #12]
60307710:	e1530002 	cmp	r3, r2
60307714:	ba000001 	blt	60307720 <_vfprintf_r+0x1758>
60307718:	e31b0001 	tst	fp, #1
6030771c:	0a000014 	beq	60307774 <_vfprintf_r+0x17ac>
60307720:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
60307724:	e5843000 	str	r3, [r4]
60307728:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
6030772c:	e5843004 	str	r3, [r4, #4]
60307730:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
60307734:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
60307738:	e0833002 	add	r3, r3, r2
6030773c:	e58d3080 	str	r3, [sp, #128]	; 0x80
60307740:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60307744:	e2833001 	add	r3, r3, #1
60307748:	e58d307c 	str	r3, [sp, #124]	; 0x7c
6030774c:	e3530007 	cmp	r3, #7
60307750:	d2844008 	addle	r4, r4, #8
60307754:	da000006 	ble	60307774 <_vfprintf_r+0x17ac>
60307758:	e28d2078 	add	r2, sp, #120	; 0x78
6030775c:	e1a01005 	mov	r1, r5
60307760:	e1a00007 	mov	r0, r7
60307764:	ebffea46 	bl	60302084 <__sprint_r>
60307768:	e3500000 	cmp	r0, #0
6030776c:	1a000167 	bne	60307d10 <_vfprintf_r+0x1d48>
60307770:	e28d4084 	add	r4, sp, #132	; 0x84
60307774:	e59d300c 	ldr	r3, [sp, #12]
60307778:	e59d6060 	ldr	r6, [sp, #96]	; 0x60
6030777c:	e08a2003 	add	r2, sl, r3
60307780:	e0436006 	sub	r6, r3, r6
60307784:	e0422008 	sub	r2, r2, r8
60307788:	e1560002 	cmp	r6, r2
6030778c:	a1a06002 	movge	r6, r2
60307790:	e3560000 	cmp	r6, #0
60307794:	da000011 	ble	603077e0 <_vfprintf_r+0x1818>
60307798:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
6030779c:	e5848000 	str	r8, [r4]
603077a0:	e0863003 	add	r3, r6, r3
603077a4:	e58d3080 	str	r3, [sp, #128]	; 0x80
603077a8:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
603077ac:	e5846004 	str	r6, [r4, #4]
603077b0:	e2833001 	add	r3, r3, #1
603077b4:	e58d307c 	str	r3, [sp, #124]	; 0x7c
603077b8:	e3530007 	cmp	r3, #7
603077bc:	d2844008 	addle	r4, r4, #8
603077c0:	da000006 	ble	603077e0 <_vfprintf_r+0x1818>
603077c4:	e28d2078 	add	r2, sp, #120	; 0x78
603077c8:	e1a01005 	mov	r1, r5
603077cc:	e1a00007 	mov	r0, r7
603077d0:	ebffea2b 	bl	60302084 <__sprint_r>
603077d4:	e3500000 	cmp	r0, #0
603077d8:	1a00014c 	bne	60307d10 <_vfprintf_r+0x1d48>
603077dc:	e28d4084 	add	r4, sp, #132	; 0x84
603077e0:	e59d8060 	ldr	r8, [sp, #96]	; 0x60
603077e4:	e3560000 	cmp	r6, #0
603077e8:	e59d300c 	ldr	r3, [sp, #12]
603077ec:	e0438008 	sub	r8, r3, r8
603077f0:	a0488006 	subge	r8, r8, r6
603077f4:	e3580000 	cmp	r8, #0
603077f8:	c3a06010 	movgt	r6, #16
603077fc:	dafffefe 	ble	603073fc <_vfprintf_r+0x1434>
60307800:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60307804:	e2841008 	add	r1, r4, #8
60307808:	e51f0dec 	ldr	r0, [pc, #-3564]	; 60306a24 <_vfprintf_r+0xa5c>
6030780c:	e3580010 	cmp	r8, #16
60307810:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
60307814:	e2833001 	add	r3, r3, #1
60307818:	e5840000 	str	r0, [r4]
6030781c:	ca000093 	bgt	60307a70 <_vfprintf_r+0x1aa8>
60307820:	e5848004 	str	r8, [r4, #4]
60307824:	e0888002 	add	r8, r8, r2
60307828:	e58d8080 	str	r8, [sp, #128]	; 0x80
6030782c:	eaffff25 	b	603074c8 <_vfprintf_r+0x1500>
60307830:	e2822010 	add	r2, r2, #16
60307834:	e3530007 	cmp	r3, #7
60307838:	e5849004 	str	r9, [r4, #4]
6030783c:	e58d2080 	str	r2, [sp, #128]	; 0x80
60307840:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60307844:	da000006 	ble	60307864 <_vfprintf_r+0x189c>
60307848:	e28d2078 	add	r2, sp, #120	; 0x78
6030784c:	e1a01005 	mov	r1, r5
60307850:	e1a00007 	mov	r0, r7
60307854:	ebffea0a 	bl	60302084 <__sprint_r>
60307858:	e3500000 	cmp	r0, #0
6030785c:	1a00012b 	bne	60307d10 <_vfprintf_r+0x1d48>
60307860:	e28d1084 	add	r1, sp, #132	; 0x84
60307864:	e2466010 	sub	r6, r6, #16
60307868:	e1a04001 	mov	r4, r1
6030786c:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60307870:	e2841008 	add	r1, r4, #8
60307874:	e51f0e58 	ldr	r0, [pc, #-3672]	; 60306a24 <_vfprintf_r+0xa5c>
60307878:	e3560010 	cmp	r6, #16
6030787c:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
60307880:	e2833001 	add	r3, r3, #1
60307884:	e5840000 	str	r0, [r4]
60307888:	caffffe8 	bgt	60307830 <_vfprintf_r+0x1868>
6030788c:	e3530007 	cmp	r3, #7
60307890:	e5846004 	str	r6, [r4, #4]
60307894:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60307898:	e0866002 	add	r6, r6, r2
6030789c:	d1a04001 	movle	r4, r1
603078a0:	e58d6080 	str	r6, [sp, #128]	; 0x80
603078a4:	daffff8c 	ble	603076dc <_vfprintf_r+0x1714>
603078a8:	e28d2078 	add	r2, sp, #120	; 0x78
603078ac:	e1a01005 	mov	r1, r5
603078b0:	e1a00007 	mov	r0, r7
603078b4:	ebffe9f2 	bl	60302084 <__sprint_r>
603078b8:	e3500000 	cmp	r0, #0
603078bc:	1a000113 	bne	60307d10 <_vfprintf_r+0x1d48>
603078c0:	e28d4084 	add	r4, sp, #132	; 0x84
603078c4:	eaffff84 	b	603076dc <_vfprintf_r+0x1714>
603078c8:	e59d3018 	ldr	r3, [sp, #24]
603078cc:	e59d2038 	ldr	r2, [sp, #56]	; 0x38
603078d0:	e3530000 	cmp	r3, #0
603078d4:	12433001 	subne	r3, r3, #1
603078d8:	158d3018 	strne	r3, [sp, #24]
603078dc:	059d3020 	ldreq	r3, [sp, #32]
603078e0:	02433001 	subeq	r3, r3, #1
603078e4:	058d3020 	streq	r3, [sp, #32]
603078e8:	059d301c 	ldreq	r3, [sp, #28]
603078ec:	02433001 	subeq	r3, r3, #1
603078f0:	058d301c 	streq	r3, [sp, #28]
603078f4:	e59d3044 	ldr	r3, [sp, #68]	; 0x44
603078f8:	e5843000 	str	r3, [r4]
603078fc:	e59d3038 	ldr	r3, [sp, #56]	; 0x38
60307900:	e5843004 	str	r3, [r4, #4]
60307904:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
60307908:	e0833002 	add	r3, r3, r2
6030790c:	e58d3080 	str	r3, [sp, #128]	; 0x80
60307910:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60307914:	e2833001 	add	r3, r3, #1
60307918:	e58d307c 	str	r3, [sp, #124]	; 0x7c
6030791c:	e3530007 	cmp	r3, #7
60307920:	d2844008 	addle	r4, r4, #8
60307924:	da000006 	ble	60307944 <_vfprintf_r+0x197c>
60307928:	e28d2078 	add	r2, sp, #120	; 0x78
6030792c:	e1a01005 	mov	r1, r5
60307930:	e1a00007 	mov	r0, r7
60307934:	ebffe9d2 	bl	60302084 <__sprint_r>
60307938:	e3500000 	cmp	r0, #0
6030793c:	1a0000f3 	bne	60307d10 <_vfprintf_r+0x1d48>
60307940:	e28d4084 	add	r4, sp, #132	; 0x84
60307944:	e59d300c 	ldr	r3, [sp, #12]
60307948:	e59d2020 	ldr	r2, [sp, #32]
6030794c:	e08a9003 	add	r9, sl, r3
60307950:	e0493008 	sub	r3, r9, r8
60307954:	e5d29000 	ldrb	r9, [r2]
60307958:	e1590003 	cmp	r9, r3
6030795c:	a1a09003 	movge	r9, r3
60307960:	e3590000 	cmp	r9, #0
60307964:	da000010 	ble	603079ac <_vfprintf_r+0x19e4>
60307968:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
6030796c:	e1c480f0 	strd	r8, [r4]
60307970:	e0893003 	add	r3, r9, r3
60307974:	e58d3080 	str	r3, [sp, #128]	; 0x80
60307978:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
6030797c:	e2833001 	add	r3, r3, #1
60307980:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60307984:	e3530007 	cmp	r3, #7
60307988:	d2844008 	addle	r4, r4, #8
6030798c:	da000006 	ble	603079ac <_vfprintf_r+0x19e4>
60307990:	e28d2078 	add	r2, sp, #120	; 0x78
60307994:	e1a01005 	mov	r1, r5
60307998:	e1a00007 	mov	r0, r7
6030799c:	ebffe9b8 	bl	60302084 <__sprint_r>
603079a0:	e3500000 	cmp	r0, #0
603079a4:	1a0000d9 	bne	60307d10 <_vfprintf_r+0x1d48>
603079a8:	e28d4084 	add	r4, sp, #132	; 0x84
603079ac:	e59d3020 	ldr	r3, [sp, #32]
603079b0:	e3590000 	cmp	r9, #0
603079b4:	e5d36000 	ldrb	r6, [r3]
603079b8:	a0466009 	subge	r6, r6, r9
603079bc:	e3560000 	cmp	r6, #0
603079c0:	da000015 	ble	60307a1c <_vfprintf_r+0x1a54>
603079c4:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
603079c8:	e2841008 	add	r1, r4, #8
603079cc:	e51f0fb0 	ldr	r0, [pc, #-4016]	; 60306a24 <_vfprintf_r+0xa5c>
603079d0:	e3560010 	cmp	r6, #16
603079d4:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
603079d8:	e2833001 	add	r3, r3, #1
603079dc:	e5840000 	str	r0, [r4]
603079e0:	ca000011 	bgt	60307a2c <_vfprintf_r+0x1a64>
603079e4:	e3530007 	cmp	r3, #7
603079e8:	e5846004 	str	r6, [r4, #4]
603079ec:	e58d307c 	str	r3, [sp, #124]	; 0x7c
603079f0:	e0866002 	add	r6, r6, r2
603079f4:	d1a04001 	movle	r4, r1
603079f8:	e58d6080 	str	r6, [sp, #128]	; 0x80
603079fc:	da000006 	ble	60307a1c <_vfprintf_r+0x1a54>
60307a00:	e28d2078 	add	r2, sp, #120	; 0x78
60307a04:	e1a01005 	mov	r1, r5
60307a08:	e1a00007 	mov	r0, r7
60307a0c:	ebffe99c 	bl	60302084 <__sprint_r>
60307a10:	e3500000 	cmp	r0, #0
60307a14:	1a0000bd 	bne	60307d10 <_vfprintf_r+0x1d48>
60307a18:	e28d4084 	add	r4, sp, #132	; 0x84
60307a1c:	e59d3020 	ldr	r3, [sp, #32]
60307a20:	e5d33000 	ldrb	r3, [r3]
60307a24:	e0888003 	add	r8, r8, r3
60307a28:	eaffff2e 	b	603076e8 <_vfprintf_r+0x1720>
60307a2c:	e3a00010 	mov	r0, #16
60307a30:	e3530007 	cmp	r3, #7
60307a34:	e0822000 	add	r2, r2, r0
60307a38:	e5840004 	str	r0, [r4, #4]
60307a3c:	e58d2080 	str	r2, [sp, #128]	; 0x80
60307a40:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60307a44:	da000006 	ble	60307a64 <_vfprintf_r+0x1a9c>
60307a48:	e28d2078 	add	r2, sp, #120	; 0x78
60307a4c:	e1a01005 	mov	r1, r5
60307a50:	e1a00007 	mov	r0, r7
60307a54:	ebffe98a 	bl	60302084 <__sprint_r>
60307a58:	e3500000 	cmp	r0, #0
60307a5c:	1a0000ab 	bne	60307d10 <_vfprintf_r+0x1d48>
60307a60:	e28d1084 	add	r1, sp, #132	; 0x84
60307a64:	e2466010 	sub	r6, r6, #16
60307a68:	e1a04001 	mov	r4, r1
60307a6c:	eaffffd4 	b	603079c4 <_vfprintf_r+0x19fc>
60307a70:	e2822010 	add	r2, r2, #16
60307a74:	e3530007 	cmp	r3, #7
60307a78:	e5846004 	str	r6, [r4, #4]
60307a7c:	e58d2080 	str	r2, [sp, #128]	; 0x80
60307a80:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60307a84:	da000006 	ble	60307aa4 <_vfprintf_r+0x1adc>
60307a88:	e28d2078 	add	r2, sp, #120	; 0x78
60307a8c:	e1a01005 	mov	r1, r5
60307a90:	e1a00007 	mov	r0, r7
60307a94:	ebffe97a 	bl	60302084 <__sprint_r>
60307a98:	e3500000 	cmp	r0, #0
60307a9c:	1a00009b 	bne	60307d10 <_vfprintf_r+0x1d48>
60307aa0:	e28d1084 	add	r1, sp, #132	; 0x84
60307aa4:	e2488010 	sub	r8, r8, #16
60307aa8:	e1a04001 	mov	r4, r1
60307aac:	eaffff53 	b	60307800 <_vfprintf_r+0x1838>
60307ab0:	e59d207c 	ldr	r2, [sp, #124]	; 0x7c
60307ab4:	e2800001 	add	r0, r0, #1
60307ab8:	e59d100c 	ldr	r1, [sp, #12]
60307abc:	e2843008 	add	r3, r4, #8
60307ac0:	e2822001 	add	r2, r2, #1
60307ac4:	e3510001 	cmp	r1, #1
60307ac8:	ca000001 	bgt	60307ad4 <_vfprintf_r+0x1b0c>
60307acc:	e31b0001 	tst	fp, #1
60307ad0:	0a00006d 	beq	60307c8c <_vfprintf_r+0x1cc4>
60307ad4:	e3a01001 	mov	r1, #1
60307ad8:	e3520007 	cmp	r2, #7
60307adc:	e584a000 	str	sl, [r4]
60307ae0:	e5841004 	str	r1, [r4, #4]
60307ae4:	e58d0080 	str	r0, [sp, #128]	; 0x80
60307ae8:	e58d207c 	str	r2, [sp, #124]	; 0x7c
60307aec:	da000006 	ble	60307b0c <_vfprintf_r+0x1b44>
60307af0:	e28d2078 	add	r2, sp, #120	; 0x78
60307af4:	e1a01005 	mov	r1, r5
60307af8:	e1a00007 	mov	r0, r7
60307afc:	ebffe960 	bl	60302084 <__sprint_r>
60307b00:	e3500000 	cmp	r0, #0
60307b04:	1a000081 	bne	60307d10 <_vfprintf_r+0x1d48>
60307b08:	e28d3084 	add	r3, sp, #132	; 0x84
60307b0c:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
60307b10:	e5832000 	str	r2, [r3]
60307b14:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
60307b18:	e5832004 	str	r2, [r3, #4]
60307b1c:	e59d1028 	ldr	r1, [sp, #40]	; 0x28
60307b20:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
60307b24:	e0822001 	add	r2, r2, r1
60307b28:	e58d2080 	str	r2, [sp, #128]	; 0x80
60307b2c:	e59d207c 	ldr	r2, [sp, #124]	; 0x7c
60307b30:	e2822001 	add	r2, r2, #1
60307b34:	e58d207c 	str	r2, [sp, #124]	; 0x7c
60307b38:	e3520007 	cmp	r2, #7
60307b3c:	d2833008 	addle	r3, r3, #8
60307b40:	da000006 	ble	60307b60 <_vfprintf_r+0x1b98>
60307b44:	e28d2078 	add	r2, sp, #120	; 0x78
60307b48:	e1a01005 	mov	r1, r5
60307b4c:	e1a00007 	mov	r0, r7
60307b50:	ebffe94b 	bl	60302084 <__sprint_r>
60307b54:	e3500000 	cmp	r0, #0
60307b58:	1a00006c 	bne	60307d10 <_vfprintf_r+0x1d48>
60307b5c:	e28d3084 	add	r3, sp, #132	; 0x84
60307b60:	eeb58b40 	vcmp.f64	d8, #0.0
60307b64:	e59d200c 	ldr	r2, [sp, #12]
60307b68:	e2424001 	sub	r4, r2, #1
60307b6c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60307b70:	0a000022 	beq	60307c00 <_vfprintf_r+0x1c38>
60307b74:	e59d107c 	ldr	r1, [sp, #124]	; 0x7c
60307b78:	e28a0001 	add	r0, sl, #1
60307b7c:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
60307b80:	e2811001 	add	r1, r1, #1
60307b84:	e8830011 	stm	r3, {r0, r4}
60307b88:	e59d000c 	ldr	r0, [sp, #12]
60307b8c:	e2422001 	sub	r2, r2, #1
60307b90:	e3510007 	cmp	r1, #7
60307b94:	e58d107c 	str	r1, [sp, #124]	; 0x7c
60307b98:	e0822000 	add	r2, r2, r0
60307b9c:	d2833008 	addle	r3, r3, #8
60307ba0:	e58d2080 	str	r2, [sp, #128]	; 0x80
60307ba4:	da000006 	ble	60307bc4 <_vfprintf_r+0x1bfc>
60307ba8:	e28d2078 	add	r2, sp, #120	; 0x78
60307bac:	e1a01005 	mov	r1, r5
60307bb0:	e1a00007 	mov	r0, r7
60307bb4:	ebffe932 	bl	60302084 <__sprint_r>
60307bb8:	e3500000 	cmp	r0, #0
60307bbc:	1a000053 	bne	60307d10 <_vfprintf_r+0x1d48>
60307bc0:	e28d3084 	add	r3, sp, #132	; 0x84
60307bc4:	e28d2068 	add	r2, sp, #104	; 0x68
60307bc8:	e5832000 	str	r2, [r3]
60307bcc:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
60307bd0:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
60307bd4:	e5832004 	str	r2, [r3, #4]
60307bd8:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
60307bdc:	e0822001 	add	r2, r2, r1
60307be0:	e58d2080 	str	r2, [sp, #128]	; 0x80
60307be4:	e59d207c 	ldr	r2, [sp, #124]	; 0x7c
60307be8:	e2822001 	add	r2, r2, #1
60307bec:	e58d207c 	str	r2, [sp, #124]	; 0x7c
60307bf0:	e3520007 	cmp	r2, #7
60307bf4:	d2834008 	addle	r4, r3, #8
60307bf8:	dafffdff 	ble	603073fc <_vfprintf_r+0x1434>
60307bfc:	eafffc71 	b	60306dc8 <_vfprintf_r+0xe00>
60307c00:	e3540000 	cmp	r4, #0
60307c04:	c3a06010 	movgt	r6, #16
60307c08:	daffffed 	ble	60307bc4 <_vfprintf_r+0x1bfc>
60307c0c:	e59d207c 	ldr	r2, [sp, #124]	; 0x7c
60307c10:	e2830008 	add	r0, r3, #8
60307c14:	e59fc2b4 	ldr	ip, [pc, #692]	; 60307ed0 <_vfprintf_r+0x1f08>
60307c18:	e3540010 	cmp	r4, #16
60307c1c:	e59d1080 	ldr	r1, [sp, #128]	; 0x80
60307c20:	e2822001 	add	r2, r2, #1
60307c24:	e583c000 	str	ip, [r3]
60307c28:	ca000007 	bgt	60307c4c <_vfprintf_r+0x1c84>
60307c2c:	e3520007 	cmp	r2, #7
60307c30:	e5834004 	str	r4, [r3, #4]
60307c34:	e58d207c 	str	r2, [sp, #124]	; 0x7c
60307c38:	e0844001 	add	r4, r4, r1
60307c3c:	d1a03000 	movle	r3, r0
60307c40:	e58d4080 	str	r4, [sp, #128]	; 0x80
60307c44:	daffffde 	ble	60307bc4 <_vfprintf_r+0x1bfc>
60307c48:	eaffffd6 	b	60307ba8 <_vfprintf_r+0x1be0>
60307c4c:	e2811010 	add	r1, r1, #16
60307c50:	e3520007 	cmp	r2, #7
60307c54:	e5836004 	str	r6, [r3, #4]
60307c58:	e58d1080 	str	r1, [sp, #128]	; 0x80
60307c5c:	e58d207c 	str	r2, [sp, #124]	; 0x7c
60307c60:	da000006 	ble	60307c80 <_vfprintf_r+0x1cb8>
60307c64:	e28d2078 	add	r2, sp, #120	; 0x78
60307c68:	e1a01005 	mov	r1, r5
60307c6c:	e1a00007 	mov	r0, r7
60307c70:	ebffe903 	bl	60302084 <__sprint_r>
60307c74:	e3500000 	cmp	r0, #0
60307c78:	1a000024 	bne	60307d10 <_vfprintf_r+0x1d48>
60307c7c:	e28d0084 	add	r0, sp, #132	; 0x84
60307c80:	e2444010 	sub	r4, r4, #16
60307c84:	e1a03000 	mov	r3, r0
60307c88:	eaffffdf 	b	60307c0c <_vfprintf_r+0x1c44>
60307c8c:	e3a01001 	mov	r1, #1
60307c90:	e3520007 	cmp	r2, #7
60307c94:	e584a000 	str	sl, [r4]
60307c98:	e5841004 	str	r1, [r4, #4]
60307c9c:	e58d0080 	str	r0, [sp, #128]	; 0x80
60307ca0:	e58d207c 	str	r2, [sp, #124]	; 0x7c
60307ca4:	daffffc6 	ble	60307bc4 <_vfprintf_r+0x1bfc>
60307ca8:	eaffffbe 	b	60307ba8 <_vfprintf_r+0x1be0>
60307cac:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
60307cb0:	e59d2034 	ldr	r2, [sp, #52]	; 0x34
60307cb4:	e0436002 	sub	r6, r3, r2
60307cb8:	e3560000 	cmp	r6, #0
60307cbc:	c3a09010 	movgt	r9, #16
60307cc0:	c59f820c 	ldrgt	r8, [pc, #524]	; 60307ed4 <_vfprintf_r+0x1f0c>
60307cc4:	dafffdce 	ble	60307404 <_vfprintf_r+0x143c>
60307cc8:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60307ccc:	e3560010 	cmp	r6, #16
60307cd0:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
60307cd4:	e2833001 	add	r3, r3, #1
60307cd8:	e5848000 	str	r8, [r4]
60307cdc:	ca000012 	bgt	60307d2c <_vfprintf_r+0x1d64>
60307ce0:	e5846004 	str	r6, [r4, #4]
60307ce4:	e3530007 	cmp	r3, #7
60307ce8:	e0866002 	add	r6, r6, r2
60307cec:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60307cf0:	e58d6080 	str	r6, [sp, #128]	; 0x80
60307cf4:	dafffdc2 	ble	60307404 <_vfprintf_r+0x143c>
60307cf8:	e28d2078 	add	r2, sp, #120	; 0x78
60307cfc:	e1a01005 	mov	r1, r5
60307d00:	e1a00007 	mov	r0, r7
60307d04:	ebffe8de 	bl	60302084 <__sprint_r>
60307d08:	e3500000 	cmp	r0, #0
60307d0c:	0afffdbc 	beq	60307404 <_vfprintf_r+0x143c>
60307d10:	e59d3008 	ldr	r3, [sp, #8]
60307d14:	e3530000 	cmp	r3, #0
60307d18:	0afffa86 	beq	60306738 <_vfprintf_r+0x770>
60307d1c:	e1a01003 	mov	r1, r3
60307d20:	e1a00007 	mov	r0, r7
60307d24:	eb0002b0 	bl	603087ec <__wrap__free_r>
60307d28:	eafffa82 	b	60306738 <_vfprintf_r+0x770>
60307d2c:	e3530007 	cmp	r3, #7
60307d30:	e2822010 	add	r2, r2, #16
60307d34:	e5849004 	str	r9, [r4, #4]
60307d38:	d2844008 	addle	r4, r4, #8
60307d3c:	e58d2080 	str	r2, [sp, #128]	; 0x80
60307d40:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60307d44:	da000006 	ble	60307d64 <_vfprintf_r+0x1d9c>
60307d48:	e28d2078 	add	r2, sp, #120	; 0x78
60307d4c:	e1a01005 	mov	r1, r5
60307d50:	e1a00007 	mov	r0, r7
60307d54:	ebffe8ca 	bl	60302084 <__sprint_r>
60307d58:	e3500000 	cmp	r0, #0
60307d5c:	1affffeb 	bne	60307d10 <_vfprintf_r+0x1d48>
60307d60:	e28d4084 	add	r4, sp, #132	; 0x84
60307d64:	e2466010 	sub	r6, r6, #16
60307d68:	eaffffd6 	b	60307cc8 <_vfprintf_r+0x1d00>
60307d6c:	e59d1008 	ldr	r1, [sp, #8]
60307d70:	e1a00007 	mov	r0, r7
60307d74:	eb00029c 	bl	603087ec <__wrap__free_r>
60307d78:	eafffdb6 	b	60307458 <_vfprintf_r+0x1490>
60307d7c:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
60307d80:	e3530000 	cmp	r3, #0
60307d84:	1a000002 	bne	60307d94 <_vfprintf_r+0x1dcc>
60307d88:	e3a03000 	mov	r3, #0
60307d8c:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60307d90:	eafffa68 	b	60306738 <_vfprintf_r+0x770>
60307d94:	e28d2078 	add	r2, sp, #120	; 0x78
60307d98:	e1a01005 	mov	r1, r5
60307d9c:	e1a00007 	mov	r0, r7
60307da0:	ebffe8b7 	bl	60302084 <__sprint_r>
60307da4:	e3500000 	cmp	r0, #0
60307da8:	0afffff6 	beq	60307d88 <_vfprintf_r+0x1dc0>
60307dac:	eafffa61 	b	60306738 <_vfprintf_r+0x770>
60307db0:	e3760001 	cmn	r6, #1
60307db4:	11a0100b 	movne	r1, fp
60307db8:	13a03001 	movne	r3, #1
60307dbc:	1afffcf6 	bne	6030719c <_vfprintf_r+0x11d4>
60307dc0:	e358000a 	cmp	r8, #10
60307dc4:	e2d93000 	sbcs	r3, r9, #0
60307dc8:	32888030 	addcc	r8, r8, #48	; 0x30
60307dcc:	35cd8127 	strbcc	r8, [sp, #295]	; 0x127
60307dd0:	3afffcff 	bcc	603071d4 <_vfprintf_r+0x120c>
60307dd4:	e3a03000 	mov	r3, #0
60307dd8:	e58d300c 	str	r3, [sp, #12]
60307ddc:	e28d3f4a 	add	r3, sp, #296	; 0x128
60307de0:	e58d3008 	str	r3, [sp, #8]
60307de4:	e20b3b01 	and	r3, fp, #1024	; 0x400
60307de8:	e58d3018 	str	r3, [sp, #24]
60307dec:	e59d3008 	ldr	r3, [sp, #8]
60307df0:	e3a0200a 	mov	r2, #10
60307df4:	e1a00008 	mov	r0, r8
60307df8:	e1a01009 	mov	r1, r9
60307dfc:	e243a001 	sub	sl, r3, #1
60307e00:	e3a03000 	mov	r3, #0
60307e04:	ebffe2b2 	bl	603008d4 <__aeabi_uldivmod>
60307e08:	e59d3008 	ldr	r3, [sp, #8]
60307e0c:	e2822030 	add	r2, r2, #48	; 0x30
60307e10:	e5432001 	strb	r2, [r3, #-1]
60307e14:	e59d300c 	ldr	r3, [sp, #12]
60307e18:	e2833001 	add	r3, r3, #1
60307e1c:	e58d300c 	str	r3, [sp, #12]
60307e20:	e59d3018 	ldr	r3, [sp, #24]
60307e24:	e3530000 	cmp	r3, #0
60307e28:	0a00001c 	beq	60307ea0 <_vfprintf_r+0x1ed8>
60307e2c:	e59d3020 	ldr	r3, [sp, #32]
60307e30:	e358000a 	cmp	r8, #10
60307e34:	e59d100c 	ldr	r1, [sp, #12]
60307e38:	e5d32000 	ldrb	r2, [r3]
60307e3c:	e2d93000 	sbcs	r3, r9, #0
60307e40:	23a03001 	movcs	r3, #1
60307e44:	33a03000 	movcc	r3, #0
60307e48:	e35200ff 	cmp	r2, #255	; 0xff
60307e4c:	03a03000 	moveq	r3, #0
60307e50:	12033001 	andne	r3, r3, #1
60307e54:	e1520001 	cmp	r2, r1
60307e58:	13a03000 	movne	r3, #0
60307e5c:	02033001 	andeq	r3, r3, #1
60307e60:	e3530000 	cmp	r3, #0
60307e64:	0a00000d 	beq	60307ea0 <_vfprintf_r+0x1ed8>
60307e68:	e59d3038 	ldr	r3, [sp, #56]	; 0x38
60307e6c:	e59d1044 	ldr	r1, [sp, #68]	; 0x44
60307e70:	e04aa003 	sub	sl, sl, r3
60307e74:	e1a02003 	mov	r2, r3
60307e78:	e1a0000a 	mov	r0, sl
60307e7c:	ebffe856 	bl	60301fdc <strncpy>
60307e80:	e59d3020 	ldr	r3, [sp, #32]
60307e84:	e5d33001 	ldrb	r3, [r3, #1]
60307e88:	e3530000 	cmp	r3, #0
60307e8c:	159d3020 	ldrne	r3, [sp, #32]
60307e90:	12833001 	addne	r3, r3, #1
60307e94:	158d3020 	strne	r3, [sp, #32]
60307e98:	13a03000 	movne	r3, #0
60307e9c:	e58d300c 	str	r3, [sp, #12]
60307ea0:	e3a03000 	mov	r3, #0
60307ea4:	e3a0200a 	mov	r2, #10
60307ea8:	e1a00008 	mov	r0, r8
60307eac:	e1a01009 	mov	r1, r9
60307eb0:	ebffe287 	bl	603008d4 <__aeabi_uldivmod>
60307eb4:	e358000a 	cmp	r8, #10
60307eb8:	e2d93000 	sbcs	r3, r9, #0
60307ebc:	3afff9c7 	bcc	603065e0 <_vfprintf_r+0x618>
60307ec0:	e1a08000 	mov	r8, r0
60307ec4:	e1a09001 	mov	r9, r1
60307ec8:	e58da008 	str	sl, [sp, #8]
60307ecc:	eaffffc6 	b	60307dec <_vfprintf_r+0x1e24>
60307ed0:	603141b8 	.word	0x603141b8
60307ed4:	603141a8 	.word	0x603141a8

60307ed8 <vfprintf>:
60307ed8:	e1a03002 	mov	r3, r2
60307edc:	e1a02001 	mov	r2, r1
60307ee0:	e1a01000 	mov	r1, r0
60307ee4:	e59f0004 	ldr	r0, [pc, #4]	; 60307ef0 <vfprintf+0x18>
60307ee8:	e5900000 	ldr	r0, [r0]
60307eec:	eafff835 	b	60305fc8 <_vfprintf_r>
60307ef0:	60316000 	.word	0x60316000

60307ef4 <__sbprintf>:
60307ef4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60307ef8:	e1a08003 	mov	r8, r3
60307efc:	e1d130bc 	ldrh	r3, [r1, #12]
60307f00:	e24dde46 	sub	sp, sp, #1120	; 0x460
60307f04:	e1a05002 	mov	r5, r2
60307f08:	e24dd008 	sub	sp, sp, #8
60307f0c:	e3c33002 	bic	r3, r3, #2
60307f10:	e1a0700d 	mov	r7, sp
60307f14:	e1a06000 	mov	r6, r0
60307f18:	e28d0058 	add	r0, sp, #88	; 0x58
60307f1c:	e1a04001 	mov	r4, r1
60307f20:	e1c730bc 	strh	r3, [r7, #12]
60307f24:	e5913064 	ldr	r3, [r1, #100]	; 0x64
60307f28:	e58d3064 	str	r3, [sp, #100]	; 0x64
60307f2c:	e1d130be 	ldrh	r3, [r1, #14]
60307f30:	e1c730be 	strh	r3, [r7, #14]
60307f34:	e5913020 	ldr	r3, [r1, #32]
60307f38:	e58d3020 	str	r3, [sp, #32]
60307f3c:	e5913028 	ldr	r3, [r1, #40]	; 0x28
60307f40:	e58d3028 	str	r3, [sp, #40]	; 0x28
60307f44:	e28d3068 	add	r3, sp, #104	; 0x68
60307f48:	e58d3000 	str	r3, [sp]
60307f4c:	e58d3010 	str	r3, [sp, #16]
60307f50:	e3a03b01 	mov	r3, #1024	; 0x400
60307f54:	e58d3008 	str	r3, [sp, #8]
60307f58:	e58d3014 	str	r3, [sp, #20]
60307f5c:	e3a03000 	mov	r3, #0
60307f60:	e58d3018 	str	r3, [sp, #24]
60307f64:	ebffe4d7 	bl	603012c8 <__retarget_lock_init_recursive>
60307f68:	e1a02005 	mov	r2, r5
60307f6c:	e1a03008 	mov	r3, r8
60307f70:	e1a01007 	mov	r1, r7
60307f74:	e1a00006 	mov	r0, r6
60307f78:	ebfff812 	bl	60305fc8 <_vfprintf_r>
60307f7c:	e2505000 	subs	r5, r0, #0
60307f80:	ba000004 	blt	60307f98 <__sbprintf+0xa4>
60307f84:	e1a01007 	mov	r1, r7
60307f88:	e1a00006 	mov	r0, r6
60307f8c:	ebffe343 	bl	60300ca0 <_fflush_r>
60307f90:	e3500000 	cmp	r0, #0
60307f94:	13e05000 	mvnne	r5, #0
60307f98:	e1dd30bc 	ldrh	r3, [sp, #12]
60307f9c:	e59d0058 	ldr	r0, [sp, #88]	; 0x58
60307fa0:	e3130040 	tst	r3, #64	; 0x40
60307fa4:	11d430bc 	ldrhne	r3, [r4, #12]
60307fa8:	13833040 	orrne	r3, r3, #64	; 0x40
60307fac:	11c430bc 	strhne	r3, [r4, #12]
60307fb0:	ebffe4c6 	bl	603012d0 <__retarget_lock_close_recursive>
60307fb4:	e1a00005 	mov	r0, r5
60307fb8:	e28dde46 	add	sp, sp, #1120	; 0x460
60307fbc:	e28dd008 	add	sp, sp, #8
60307fc0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

60307fc4 <__swbuf_r>:
60307fc4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60307fc8:	e1a06001 	mov	r6, r1
60307fcc:	e1a04002 	mov	r4, r2
60307fd0:	e2505000 	subs	r5, r0, #0
60307fd4:	0a000003 	beq	60307fe8 <__swbuf_r+0x24>
60307fd8:	e5953018 	ldr	r3, [r5, #24]
60307fdc:	e3530000 	cmp	r3, #0
60307fe0:	1a000000 	bne	60307fe8 <__swbuf_r+0x24>
60307fe4:	ebffe3d5 	bl	60300f40 <__sinit>
60307fe8:	e5943018 	ldr	r3, [r4, #24]
60307fec:	e5843008 	str	r3, [r4, #8]
60307ff0:	e1d430bc 	ldrh	r3, [r4, #12]
60307ff4:	e3130008 	tst	r3, #8
60307ff8:	0a00002a 	beq	603080a8 <__swbuf_r+0xe4>
60307ffc:	e5943010 	ldr	r3, [r4, #16]
60308000:	e3530000 	cmp	r3, #0
60308004:	0a000027 	beq	603080a8 <__swbuf_r+0xe4>
60308008:	e1d430fc 	ldrsh	r3, [r4, #12]
6030800c:	e6ef6076 	uxtb	r6, r6
60308010:	e1a07006 	mov	r7, r6
60308014:	e3130a02 	tst	r3, #8192	; 0x2000
60308018:	0a000029 	beq	603080c4 <__swbuf_r+0x100>
6030801c:	e5943010 	ldr	r3, [r4, #16]
60308020:	e5940000 	ldr	r0, [r4]
60308024:	e0400003 	sub	r0, r0, r3
60308028:	e5943014 	ldr	r3, [r4, #20]
6030802c:	e1530000 	cmp	r3, r0
60308030:	ca000004 	bgt	60308048 <__swbuf_r+0x84>
60308034:	e1a01004 	mov	r1, r4
60308038:	e1a00005 	mov	r0, r5
6030803c:	ebffe317 	bl	60300ca0 <_fflush_r>
60308040:	e3500000 	cmp	r0, #0
60308044:	1a00001c 	bne	603080bc <__swbuf_r+0xf8>
60308048:	e5943008 	ldr	r3, [r4, #8]
6030804c:	e2800001 	add	r0, r0, #1
60308050:	e2433001 	sub	r3, r3, #1
60308054:	e5843008 	str	r3, [r4, #8]
60308058:	e5943000 	ldr	r3, [r4]
6030805c:	e2832001 	add	r2, r3, #1
60308060:	e5842000 	str	r2, [r4]
60308064:	e5c36000 	strb	r6, [r3]
60308068:	e5943014 	ldr	r3, [r4, #20]
6030806c:	e1530000 	cmp	r3, r0
60308070:	0a000005 	beq	6030808c <__swbuf_r+0xc8>
60308074:	e1d430bc 	ldrh	r3, [r4, #12]
60308078:	e356000a 	cmp	r6, #10
6030807c:	13a03000 	movne	r3, #0
60308080:	02033001 	andeq	r3, r3, #1
60308084:	e3530000 	cmp	r3, #0
60308088:	0a000004 	beq	603080a0 <__swbuf_r+0xdc>
6030808c:	e1a01004 	mov	r1, r4
60308090:	e1a00005 	mov	r0, r5
60308094:	ebffe301 	bl	60300ca0 <_fflush_r>
60308098:	e3500000 	cmp	r0, #0
6030809c:	1a000006 	bne	603080bc <__swbuf_r+0xf8>
603080a0:	e1a00007 	mov	r0, r7
603080a4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
603080a8:	e1a01004 	mov	r1, r4
603080ac:	e1a00005 	mov	r0, r5
603080b0:	ebffec24 	bl	60303148 <__swsetup_r>
603080b4:	e3500000 	cmp	r0, #0
603080b8:	0affffd2 	beq	60308008 <__swbuf_r+0x44>
603080bc:	e3e07000 	mvn	r7, #0
603080c0:	eafffff6 	b	603080a0 <__swbuf_r+0xdc>
603080c4:	e3833a02 	orr	r3, r3, #8192	; 0x2000
603080c8:	e1c430bc 	strh	r3, [r4, #12]
603080cc:	e5943064 	ldr	r3, [r4, #100]	; 0x64
603080d0:	e3c33a02 	bic	r3, r3, #8192	; 0x2000
603080d4:	e5843064 	str	r3, [r4, #100]	; 0x64
603080d8:	eaffffcf 	b	6030801c <__swbuf_r+0x58>

603080dc <__swbuf>:
603080dc:	e59f300c 	ldr	r3, [pc, #12]	; 603080f0 <__swbuf+0x14>
603080e0:	e1a02001 	mov	r2, r1
603080e4:	e1a01000 	mov	r1, r0
603080e8:	e5930000 	ldr	r0, [r3]
603080ec:	eaffffb4 	b	60307fc4 <__swbuf_r>
603080f0:	60316000 	.word	0x60316000

603080f4 <_wcrtomb_r>:
603080f4:	e59fc038 	ldr	ip, [pc, #56]	; 60308134 <_wcrtomb_r+0x40>
603080f8:	e92d407f 	push	{r0, r1, r2, r3, r4, r5, r6, lr}
603080fc:	e1a05003 	mov	r5, r3
60308100:	e1a04000 	mov	r4, r0
60308104:	e59c60e0 	ldr	r6, [ip, #224]	; 0xe0
60308108:	e251c000 	subs	ip, r1, #0
6030810c:	01a0200c 	moveq	r2, ip
60308110:	028d1004 	addeq	r1, sp, #4
60308114:	e12fff36 	blx	r6
60308118:	e3700001 	cmn	r0, #1
6030811c:	03a03000 	moveq	r3, #0
60308120:	05853000 	streq	r3, [r5]
60308124:	03a0308a 	moveq	r3, #138	; 0x8a
60308128:	05843000 	streq	r3, [r4]
6030812c:	e28dd010 	add	sp, sp, #16
60308130:	e8bd8070 	pop	{r4, r5, r6, pc}
60308134:	603160f4 	.word	0x603160f4

60308138 <wcrtomb>:
60308138:	e1a03002 	mov	r3, r2
6030813c:	e1a02001 	mov	r2, r1
60308140:	e1a01000 	mov	r1, r0
60308144:	e59f0004 	ldr	r0, [pc, #4]	; 60308150 <wcrtomb+0x18>
60308148:	e5900000 	ldr	r0, [r0]
6030814c:	eaffffe8 	b	603080f4 <_wcrtomb_r>
60308150:	60316000 	.word	0x60316000

60308154 <_wctomb_r>:
60308154:	e59fc010 	ldr	ip, [pc, #16]	; 6030816c <_wctomb_r+0x18>
60308158:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
6030815c:	e59ce0e0 	ldr	lr, [ip, #224]	; 0xe0
60308160:	e1a0c00e 	mov	ip, lr
60308164:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
60308168:	e12fff1c 	bx	ip
6030816c:	603160f4 	.word	0x603160f4

60308170 <__ascii_wctomb>:
60308170:	e1a03000 	mov	r3, r0
60308174:	e2510000 	subs	r0, r1, #0
60308178:	012fff1e 	bxeq	lr
6030817c:	e35200ff 	cmp	r2, #255	; 0xff
60308180:	95c02000 	strbls	r2, [r0]
60308184:	83a0208a 	movhi	r2, #138	; 0x8a
60308188:	85832000 	strhi	r2, [r3]
6030818c:	83e00000 	mvnhi	r0, #0
60308190:	93a00001 	movls	r0, #1
60308194:	e12fff1e 	bx	lr

60308198 <_fstat_r>:
60308198:	e92d4070 	push	{r4, r5, r6, lr}
6030819c:	e1a04000 	mov	r4, r0
603081a0:	e59f5028 	ldr	r5, [pc, #40]	; 603081d0 <_fstat_r+0x38>
603081a4:	e1a00001 	mov	r0, r1
603081a8:	e1a01002 	mov	r1, r2
603081ac:	e3a03000 	mov	r3, #0
603081b0:	e5853000 	str	r3, [r5]
603081b4:	eb00029a 	bl	60308c24 <_fstat>
603081b8:	e3700001 	cmn	r0, #1
603081bc:	18bd8070 	popne	{r4, r5, r6, pc}
603081c0:	e5953000 	ldr	r3, [r5]
603081c4:	e3530000 	cmp	r3, #0
603081c8:	15843000 	strne	r3, [r4]
603081cc:	e8bd8070 	pop	{r4, r5, r6, pc}
603081d0:	60323160 	.word	0x60323160

603081d4 <_isatty_r>:
603081d4:	e92d4070 	push	{r4, r5, r6, lr}
603081d8:	e1a04000 	mov	r4, r0
603081dc:	e59f5024 	ldr	r5, [pc, #36]	; 60308208 <_isatty_r+0x34>
603081e0:	e1a00001 	mov	r0, r1
603081e4:	e3a03000 	mov	r3, #0
603081e8:	e5853000 	str	r3, [r5]
603081ec:	eb000284 	bl	60308c04 <_isatty>
603081f0:	e3700001 	cmn	r0, #1
603081f4:	18bd8070 	popne	{r4, r5, r6, pc}
603081f8:	e5953000 	ldr	r3, [r5]
603081fc:	e3530000 	cmp	r3, #0
60308200:	15843000 	strne	r3, [r4]
60308204:	e8bd8070 	pop	{r4, r5, r6, pc}
60308208:	60323160 	.word	0x60323160

6030820c <__udivsi3>:
6030820c:	e2512001 	subs	r2, r1, #1
60308210:	012fff1e 	bxeq	lr
60308214:	3a000023 	bcc	603082a8 <__udivsi3+0x9c>
60308218:	e1500001 	cmp	r0, r1
6030821c:	9a00001a 	bls	6030828c <__udivsi3+0x80>
60308220:	e1110002 	tst	r1, r2
60308224:	0a00001b 	beq	60308298 <__udivsi3+0x8c>
60308228:	e16f3f11 	clz	r3, r1
6030822c:	e16f2f10 	clz	r2, r0
60308230:	e0432002 	sub	r2, r3, r2
60308234:	e3a03001 	mov	r3, #1
60308238:	e1a01211 	lsl	r1, r1, r2
6030823c:	e1a03213 	lsl	r3, r3, r2
60308240:	e3a02000 	mov	r2, #0
60308244:	e1500001 	cmp	r0, r1
60308248:	20400001 	subcs	r0, r0, r1
6030824c:	21822003 	orrcs	r2, r2, r3
60308250:	e15000a1 	cmp	r0, r1, lsr #1
60308254:	204000a1 	subcs	r0, r0, r1, lsr #1
60308258:	218220a3 	orrcs	r2, r2, r3, lsr #1
6030825c:	e1500121 	cmp	r0, r1, lsr #2
60308260:	20400121 	subcs	r0, r0, r1, lsr #2
60308264:	21822123 	orrcs	r2, r2, r3, lsr #2
60308268:	e15001a1 	cmp	r0, r1, lsr #3
6030826c:	204001a1 	subcs	r0, r0, r1, lsr #3
60308270:	218221a3 	orrcs	r2, r2, r3, lsr #3
60308274:	e3500000 	cmp	r0, #0
60308278:	11b03223 	lsrsne	r3, r3, #4
6030827c:	11a01221 	lsrne	r1, r1, #4
60308280:	1affffef 	bne	60308244 <__udivsi3+0x38>
60308284:	e1a00002 	mov	r0, r2
60308288:	e12fff1e 	bx	lr
6030828c:	03a00001 	moveq	r0, #1
60308290:	13a00000 	movne	r0, #0
60308294:	e12fff1e 	bx	lr
60308298:	e16f2f11 	clz	r2, r1
6030829c:	e262201f 	rsb	r2, r2, #31
603082a0:	e1a00230 	lsr	r0, r0, r2
603082a4:	e12fff1e 	bx	lr
603082a8:	e3500000 	cmp	r0, #0
603082ac:	13e00000 	mvnne	r0, #0
603082b0:	eaffe1e4 	b	60300a48 <__aeabi_idiv0>

603082b4 <__aeabi_uidivmod>:
603082b4:	e3510000 	cmp	r1, #0
603082b8:	0afffffa 	beq	603082a8 <__udivsi3+0x9c>
603082bc:	e92d4003 	push	{r0, r1, lr}
603082c0:	ebffffd1 	bl	6030820c <__udivsi3>
603082c4:	e8bd4006 	pop	{r1, r2, lr}
603082c8:	e0030092 	mul	r3, r2, r0
603082cc:	e0411003 	sub	r1, r1, r3
603082d0:	e12fff1e 	bx	lr

603082d4 <__divsi3>:
603082d4:	e3510000 	cmp	r1, #0
603082d8:	0a000030 	beq	603083a0 <.divsi3_skip_div0_test+0xc4>

603082dc <.divsi3_skip_div0_test>:
603082dc:	e020c001 	eor	ip, r0, r1
603082e0:	42611000 	rsbmi	r1, r1, #0
603082e4:	e2512001 	subs	r2, r1, #1
603082e8:	0a00001f 	beq	6030836c <.divsi3_skip_div0_test+0x90>
603082ec:	e1b03000 	movs	r3, r0
603082f0:	42603000 	rsbmi	r3, r0, #0
603082f4:	e1530001 	cmp	r3, r1
603082f8:	9a00001e 	bls	60308378 <.divsi3_skip_div0_test+0x9c>
603082fc:	e1110002 	tst	r1, r2
60308300:	0a000020 	beq	60308388 <.divsi3_skip_div0_test+0xac>
60308304:	e16f2f11 	clz	r2, r1
60308308:	e16f0f13 	clz	r0, r3
6030830c:	e0420000 	sub	r0, r2, r0
60308310:	e3a02001 	mov	r2, #1
60308314:	e1a01011 	lsl	r1, r1, r0
60308318:	e1a02012 	lsl	r2, r2, r0
6030831c:	e3a00000 	mov	r0, #0
60308320:	e1530001 	cmp	r3, r1
60308324:	20433001 	subcs	r3, r3, r1
60308328:	21800002 	orrcs	r0, r0, r2
6030832c:	e15300a1 	cmp	r3, r1, lsr #1
60308330:	204330a1 	subcs	r3, r3, r1, lsr #1
60308334:	218000a2 	orrcs	r0, r0, r2, lsr #1
60308338:	e1530121 	cmp	r3, r1, lsr #2
6030833c:	20433121 	subcs	r3, r3, r1, lsr #2
60308340:	21800122 	orrcs	r0, r0, r2, lsr #2
60308344:	e15301a1 	cmp	r3, r1, lsr #3
60308348:	204331a1 	subcs	r3, r3, r1, lsr #3
6030834c:	218001a2 	orrcs	r0, r0, r2, lsr #3
60308350:	e3530000 	cmp	r3, #0
60308354:	11b02222 	lsrsne	r2, r2, #4
60308358:	11a01221 	lsrne	r1, r1, #4
6030835c:	1affffef 	bne	60308320 <.divsi3_skip_div0_test+0x44>
60308360:	e35c0000 	cmp	ip, #0
60308364:	42600000 	rsbmi	r0, r0, #0
60308368:	e12fff1e 	bx	lr
6030836c:	e13c0000 	teq	ip, r0
60308370:	42600000 	rsbmi	r0, r0, #0
60308374:	e12fff1e 	bx	lr
60308378:	33a00000 	movcc	r0, #0
6030837c:	01a00fcc 	asreq	r0, ip, #31
60308380:	03800001 	orreq	r0, r0, #1
60308384:	e12fff1e 	bx	lr
60308388:	e16f2f11 	clz	r2, r1
6030838c:	e262201f 	rsb	r2, r2, #31
60308390:	e35c0000 	cmp	ip, #0
60308394:	e1a00233 	lsr	r0, r3, r2
60308398:	42600000 	rsbmi	r0, r0, #0
6030839c:	e12fff1e 	bx	lr
603083a0:	e3500000 	cmp	r0, #0
603083a4:	c3e00102 	mvngt	r0, #-2147483648	; 0x80000000
603083a8:	b3a00102 	movlt	r0, #-2147483648	; 0x80000000
603083ac:	eaffe1a5 	b	60300a48 <__aeabi_idiv0>

603083b0 <__aeabi_idivmod>:
603083b0:	e3510000 	cmp	r1, #0
603083b4:	0afffff9 	beq	603083a0 <.divsi3_skip_div0_test+0xc4>
603083b8:	e92d4003 	push	{r0, r1, lr}
603083bc:	ebffffc6 	bl	603082dc <.divsi3_skip_div0_test>
603083c0:	e8bd4006 	pop	{r1, r2, lr}
603083c4:	e0030092 	mul	r3, r2, r0
603083c8:	e0411003 	sub	r1, r1, r3
603083cc:	e12fff1e 	bx	lr

603083d0 <_exit>:
603083d0:	eafffffe 	b	603083d0 <_exit>

603083d4 <os_heap_init>:
603083d4:	e92d4800 	push	{fp, lr}
603083d8:	e28db004 	add	fp, sp, #4
603083dc:	e3003000 	movw	r3, #0
603083e0:	e340303d 	movt	r3, #61	; 0x3d
603083e4:	e1a01003 	mov	r1, r3
603083e8:	e3000000 	movw	r0, #0
603083ec:	e3460033 	movt	r0, #24627	; 0x6033
603083f0:	eb000025 	bl	6030848c <os_heap_add>
603083f4:	e3033194 	movw	r3, #12692	; 0x3194
603083f8:	e3463032 	movt	r3, #24626	; 0x6032
603083fc:	e5d33000 	ldrb	r3, [r3]
60308400:	e3530000 	cmp	r3, #0
60308404:	0a000000 	beq	6030840c <os_heap_init+0x38>
60308408:	eb000004 	bl	60308420 <os_heap_sort>
6030840c:	e3030164 	movw	r0, #12644	; 0x3164
60308410:	e3460032 	movt	r0, #24626	; 0x6032
60308414:	eb002d54 	bl	6031396c <vPortDefineHeapRegions>
60308418:	e320f000 	nop	{0}
6030841c:	e8bd8800 	pop	{fp, pc}

60308420 <os_heap_sort>:
60308420:	e3033194 	movw	r3, #12692	; 0x3194
60308424:	e3463032 	movt	r3, #24626	; 0x6032
60308428:	e92d4070 	push	{r4, r5, r6, lr}
6030842c:	e5d35000 	ldrb	r5, [r3]
60308430:	e2455001 	sub	r5, r5, #1
60308434:	e3550000 	cmp	r5, #0
60308438:	d8bd8070 	pople	{r4, r5, r6, pc}
6030843c:	e3036164 	movw	r6, #12644	; 0x3164
60308440:	e3466032 	movt	r6, #24626	; 0x6032
60308444:	e086e185 	add	lr, r6, r5, lsl #3
60308448:	e1a03006 	mov	r3, r6
6030844c:	e5931008 	ldr	r1, [r3, #8]
60308450:	e593c000 	ldr	ip, [r3]
60308454:	e2832008 	add	r2, r3, #8
60308458:	e15c0001 	cmp	ip, r1
6030845c:	85934004 	ldrhi	r4, [r3, #4]
60308460:	81c200d0 	ldrdhi	r0, [r2]
60308464:	81c300f0 	strdhi	r0, [r3]
60308468:	8583c008 	strhi	ip, [r3, #8]
6030846c:	8583400c 	strhi	r4, [r3, #12]
60308470:	e1a03002 	mov	r3, r2
60308474:	e152000e 	cmp	r2, lr
60308478:	1afffff3 	bne	6030844c <os_heap_sort+0x2c>
6030847c:	e24ee008 	sub	lr, lr, #8
60308480:	e2555001 	subs	r5, r5, #1
60308484:	1affffef 	bne	60308448 <os_heap_sort+0x28>
60308488:	e8bd8070 	pop	{r4, r5, r6, pc}

6030848c <os_heap_add>:
6030848c:	e303c194 	movw	ip, #12692	; 0x3194
60308490:	e346c032 	movt	ip, #24626	; 0x6032
60308494:	e92d4010 	push	{r4, lr}
60308498:	e5dc3000 	ldrb	r3, [ip]
6030849c:	e3530005 	cmp	r3, #5
603084a0:	8a00000f 	bhi	603084e4 <os_heap_add+0x58>
603084a4:	e3032164 	movw	r2, #12644	; 0x3164
603084a8:	e3462032 	movt	r2, #24626	; 0x6032
603084ac:	e3510000 	cmp	r1, #0
603084b0:	e082e183 	add	lr, r2, r3, lsl #3
603084b4:	e7820183 	str	r0, [r2, r3, lsl #3]
603084b8:	13032198 	movwne	r2, #12696	; 0x3198
603084bc:	13462032 	movtne	r2, #24626	; 0x6032
603084c0:	e58e1004 	str	r1, [lr, #4]
603084c4:	12833001 	addne	r3, r3, #1
603084c8:	1592e000 	ldrne	lr, [r2]
603084cc:	13a00001 	movne	r0, #1
603084d0:	108e1001 	addne	r1, lr, r1
603084d4:	15cc3000 	strbne	r3, [ip]
603084d8:	01a00001 	moveq	r0, r1
603084dc:	15821000 	strne	r1, [r2]
603084e0:	e8bd8010 	pop	{r4, pc}
603084e4:	e3030efc 	movw	r0, #16124	; 0x3efc
603084e8:	e3460031 	movt	r0, #24625	; 0x6031
603084ec:	e3a01026 	mov	r1, #38	; 0x26
603084f0:	eb001cf0 	bl	6030f8b8 <io_assert_failed>

603084f4 <rtos_critical_is_in_interrupt>:
603084f4:	e10f3000 	mrs	r3, CPSR
603084f8:	e203301f 	and	r3, r3, #31
603084fc:	e3530010 	cmp	r3, #16
60308500:	0a000004 	beq	60308518 <rtos_critical_is_in_interrupt+0x24>
60308504:	e10f0000 	mrs	r0, CPSR
60308508:	e200001f 	and	r0, r0, #31
6030850c:	e250001f 	subs	r0, r0, #31
60308510:	13a00001 	movne	r0, #1
60308514:	e12fff1e 	bx	lr
60308518:	e3a00000 	mov	r0, #0
6030851c:	e12fff1e 	bx	lr

60308520 <rtos_mem_init>:
60308520:	eaffffab 	b	603083d4 <os_heap_init>

60308524 <rtos_mem_malloc>:
60308524:	ea002ca0 	b	603137ac <pvPortMalloc>

60308528 <rtos_mem_zmalloc>:
60308528:	e92d4070 	push	{r4, r5, r6, lr}
6030852c:	e1a05000 	mov	r5, r0
60308530:	eb002c9d 	bl	603137ac <pvPortMalloc>
60308534:	e2504000 	subs	r4, r0, #0
60308538:	0a000002 	beq	60308548 <rtos_mem_zmalloc+0x20>
6030853c:	e1a02005 	mov	r2, r5
60308540:	e3a01000 	mov	r1, #0
60308544:	ebffe4e7 	bl	603018e8 <memset>
60308548:	e1a00004 	mov	r0, r4
6030854c:	e8bd8070 	pop	{r4, r5, r6, pc}

60308550 <rtos_mem_calloc>:
60308550:	e92d4070 	push	{r4, r5, r6, lr}
60308554:	e0050091 	mul	r5, r1, r0
60308558:	e1a00005 	mov	r0, r5
6030855c:	eb002c92 	bl	603137ac <pvPortMalloc>
60308560:	e2504000 	subs	r4, r0, #0
60308564:	0a000002 	beq	60308574 <rtos_mem_calloc+0x24>
60308568:	e1a02005 	mov	r2, r5
6030856c:	e3a01000 	mov	r1, #0
60308570:	ebffe4dc 	bl	603018e8 <memset>
60308574:	e1a00004 	mov	r0, r4
60308578:	e8bd8070 	pop	{r4, r5, r6, pc}

6030857c <rtos_mem_realloc>:
6030857c:	ea002d32 	b	60313a4c <pvPortReAlloc>

60308580 <rtos_mem_free>:
60308580:	e3500000 	cmp	r0, #0
60308584:	012fff1e 	bxeq	lr
60308588:	ea002cd5 	b	603138e4 <vPortFree>

6030858c <rtos_sema_create_binary>:
6030858c:	e92d4010 	push	{r4, lr}
60308590:	e2504000 	subs	r4, r0, #0
60308594:	0a000008 	beq	603085bc <rtos_sema_create_binary+0x30>
60308598:	e3a02003 	mov	r2, #3
6030859c:	e3a01000 	mov	r1, #0
603085a0:	e3a00001 	mov	r0, #1
603085a4:	eb00289f 	bl	60312828 <xQueueGenericCreate>
603085a8:	e16f3f10 	clz	r3, r0
603085ac:	e5840000 	str	r0, [r4]
603085b0:	e1a032a3 	lsr	r3, r3, #5
603085b4:	e2630000 	rsb	r0, r3, #0
603085b8:	e8bd8010 	pop	{r4, pc}
603085bc:	e3e00000 	mvn	r0, #0
603085c0:	e8bd8010 	pop	{r4, pc}

603085c4 <rtos_sema_take>:
603085c4:	e92d4070 	push	{r4, r5, r6, lr}
603085c8:	e3a06000 	mov	r6, #0
603085cc:	e24dd008 	sub	sp, sp, #8
603085d0:	e1a04000 	mov	r4, r0
603085d4:	e1a05001 	mov	r5, r1
603085d8:	e58d6004 	str	r6, [sp, #4]
603085dc:	ebffffc4 	bl	603084f4 <rtos_critical_is_in_interrupt>
603085e0:	e1500006 	cmp	r0, r6
603085e4:	0a00000b 	beq	60308618 <rtos_sema_take+0x54>
603085e8:	e1a00004 	mov	r0, r4
603085ec:	e28d2004 	add	r2, sp, #4
603085f0:	e1a01006 	mov	r1, r6
603085f4:	eb002a86 	bl	60313014 <xQueueReceiveFromISR>
603085f8:	e1a04000 	mov	r4, r0
603085fc:	e3500001 	cmp	r0, #1
60308600:	1a000013 	bne	60308654 <rtos_sema_take+0x90>
60308604:	e59d0004 	ldr	r0, [sp, #4]
60308608:	e1500006 	cmp	r0, r6
6030860c:	1a000008 	bne	60308634 <rtos_sema_take+0x70>
60308610:	e28dd008 	add	sp, sp, #8
60308614:	e8bd8070 	pop	{r4, r5, r6, pc}
60308618:	e1a01005 	mov	r1, r5
6030861c:	e1a00004 	mov	r0, r4
60308620:	eb0029f7 	bl	60312e04 <xQueueSemaphoreTake>
60308624:	e2500001 	subs	r0, r0, #1
60308628:	13e00000 	mvnne	r0, #0
6030862c:	e28dd008 	add	sp, sp, #8
60308630:	e8bd8070 	pop	{r4, r5, r6, pc}
60308634:	eb001de1 	bl	6030fdc0 <ulPortGetCoreId>
60308638:	e3033d50 	movw	r3, #15696	; 0x3d50
6030863c:	e3463032 	movt	r3, #24626	; 0x6032
60308640:	e1a02000 	mov	r2, r0
60308644:	e1a00006 	mov	r0, r6
60308648:	e7834102 	str	r4, [r3, r2, lsl #2]
6030864c:	e28dd008 	add	sp, sp, #8
60308650:	e8bd8070 	pop	{r4, r5, r6, pc}
60308654:	e3e00000 	mvn	r0, #0
60308658:	eaffffec 	b	60308610 <rtos_sema_take+0x4c>

6030865c <rtos_sema_give>:
6030865c:	e92d4010 	push	{r4, lr}
60308660:	e3a03000 	mov	r3, #0
60308664:	e24dd008 	sub	sp, sp, #8
60308668:	e1a04000 	mov	r4, r0
6030866c:	e58d3004 	str	r3, [sp, #4]
60308670:	ebffff9f 	bl	603084f4 <rtos_critical_is_in_interrupt>
60308674:	e2503000 	subs	r3, r0, #0
60308678:	0a00000a 	beq	603086a8 <rtos_sema_give+0x4c>
6030867c:	e1a00004 	mov	r0, r4
60308680:	e28d1004 	add	r1, sp, #4
60308684:	eb002945 	bl	60312ba0 <xQueueGiveFromISR>
60308688:	e59d3004 	ldr	r3, [sp, #4]
6030868c:	e1a04000 	mov	r4, r0
60308690:	e3530000 	cmp	r3, #0
60308694:	1a00000c 	bne	603086cc <rtos_sema_give+0x70>
60308698:	e2540001 	subs	r0, r4, #1
6030869c:	13e00000 	mvnne	r0, #0
603086a0:	e28dd008 	add	sp, sp, #8
603086a4:	e8bd8010 	pop	{r4, pc}
603086a8:	e1a02003 	mov	r2, r3
603086ac:	e1a01003 	mov	r1, r3
603086b0:	e1a00004 	mov	r0, r4
603086b4:	eb00288d 	bl	603128f0 <xQueueGenericSend>
603086b8:	e1a04000 	mov	r4, r0
603086bc:	e2540001 	subs	r0, r4, #1
603086c0:	13e00000 	mvnne	r0, #0
603086c4:	e28dd008 	add	sp, sp, #8
603086c8:	e8bd8010 	pop	{r4, pc}
603086cc:	eb001dbb 	bl	6030fdc0 <ulPortGetCoreId>
603086d0:	e3033d50 	movw	r3, #15696	; 0x3d50
603086d4:	e3463032 	movt	r3, #24626	; 0x6032
603086d8:	e3a02001 	mov	r2, #1
603086dc:	e7832100 	str	r2, [r3, r0, lsl #2]
603086e0:	e2540001 	subs	r0, r4, #1
603086e4:	13e00000 	mvnne	r0, #0
603086e8:	e28dd008 	add	sp, sp, #8
603086ec:	e8bd8010 	pop	{r4, pc}

603086f0 <rtos_sched_start>:
603086f0:	e92d4010 	push	{r4, lr}
603086f4:	eb0022de 	bl	60311274 <vTaskStartScheduler>
603086f8:	e3a00000 	mov	r0, #0
603086fc:	e8bd8010 	pop	{r4, pc}

60308700 <rtos_sched_get_state>:
60308700:	e92d4010 	push	{r4, lr}
60308704:	eb0021a6 	bl	60310da4 <xTaskGetSchedulerState>
60308708:	e3500001 	cmp	r0, #1
6030870c:	08bd8010 	popeq	{r4, pc}
60308710:	eb0021a3 	bl	60310da4 <xTaskGetSchedulerState>
60308714:	e3500000 	cmp	r0, #0
60308718:	08bd8010 	popeq	{r4, pc}
6030871c:	eb0021a0 	bl	60310da4 <xTaskGetSchedulerState>
60308720:	e3500002 	cmp	r0, #2
60308724:	13e00000 	mvnne	r0, #0
60308728:	e8bd8010 	pop	{r4, pc}

6030872c <rtos_task_create>:
6030872c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
60308730:	e1a0c002 	mov	ip, r2
60308734:	e24dd00c 	sub	sp, sp, #12
60308738:	e1dde1b0 	ldrh	lr, [sp, #16]
6030873c:	e58d0004 	str	r0, [sp, #4]
60308740:	e1a0000c 	mov	r0, ip
60308744:	e1ddc1b4 	ldrh	ip, [sp, #20]
60308748:	e1a0212e 	lsr	r2, lr, #2
6030874c:	e58dc000 	str	ip, [sp]
60308750:	eb0022a2 	bl	603111e0 <xTaskCreate>
60308754:	e2500001 	subs	r0, r0, #1
60308758:	13e00000 	mvnne	r0, #0
6030875c:	e28dd00c 	add	sp, sp, #12
60308760:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

60308764 <rtos_create_secure_context>:
60308764:	e12fff1e 	bx	lr

60308768 <rtos_time_delay_ms>:
60308768:	e92d4010 	push	{r4, lr}
6030876c:	e1a04000 	mov	r4, r0
60308770:	eb0004a8 	bl	60309a18 <pmu_yield_os_check>
60308774:	e3500000 	cmp	r0, #0
60308778:	0a000002 	beq	60308788 <rtos_time_delay_ms+0x20>
6030877c:	eb002188 	bl	60310da4 <xTaskGetSchedulerState>
60308780:	e3500002 	cmp	r0, #2
60308784:	0a000004 	beq	6030879c <rtos_time_delay_ms+0x34>
60308788:	e1a00004 	mov	r0, r4
6030878c:	e3093818 	movw	r3, #38936	; 0x9818
60308790:	e3463030 	movt	r3, #24624	; 0x6030
60308794:	e8bd4010 	pop	{r4, lr}
60308798:	e12fff13 	bx	r3
6030879c:	ebffff54 	bl	603084f4 <rtos_critical_is_in_interrupt>
603087a0:	e3500000 	cmp	r0, #0
603087a4:	1afffff7 	bne	60308788 <rtos_time_delay_ms+0x20>
603087a8:	e1a00004 	mov	r0, r4
603087ac:	e8bd4010 	pop	{r4, lr}
603087b0:	ea0026d1 	b	603122fc <vTaskDelay>

603087b4 <rtos_time_get_current_system_time_ms>:
603087b4:	e92d4010 	push	{r4, lr}
603087b8:	ebffff4d 	bl	603084f4 <rtos_critical_is_in_interrupt>
603087bc:	e3500000 	cmp	r0, #0
603087c0:	0a000001 	beq	603087cc <rtos_time_get_current_system_time_ms+0x18>
603087c4:	e8bd4010 	pop	{r4, lr}
603087c8:	ea001f61 	b	60310554 <xTaskGetTickCountFromISR>
603087cc:	e8bd4010 	pop	{r4, lr}
603087d0:	ea001f5b 	b	60310544 <xTaskGetTickCount>

603087d4 <__wrap_malloc>:
603087d4:	eaffff52 	b	60308524 <rtos_mem_malloc>

603087d8 <__wrap__malloc_r>:
603087d8:	e1a00001 	mov	r0, r1
603087dc:	eaffff50 	b	60308524 <rtos_mem_malloc>

603087e0 <__wrap__realloc_r>:
603087e0:	e1a00001 	mov	r0, r1
603087e4:	e1a01002 	mov	r1, r2
603087e8:	eaffff63 	b	6030857c <rtos_mem_realloc>

603087ec <__wrap__free_r>:
603087ec:	e1a00001 	mov	r0, r1
603087f0:	eaffff62 	b	60308580 <rtos_mem_free>

603087f4 <__wrap__calloc_r>:
603087f4:	e1a00001 	mov	r0, r1
603087f8:	e1a01002 	mov	r1, r2
603087fc:	eaffff53 	b	60308550 <rtos_mem_calloc>

60308800 <__wrap_printf>:
60308800:	e92d000f 	push	{r0, r1, r2, r3}
60308804:	e92d4070 	push	{r4, r5, r6, lr}
60308808:	e24dd008 	sub	sp, sp, #8
6030880c:	e10f6000 	mrs	r6, CPSR
60308810:	f10c0080 	cpsid	i
60308814:	f57ff04f 	dsb	sy
60308818:	f57ff06f 	isb	sy
6030881c:	e3a03001 	mov	r3, #1
60308820:	e30341c0 	movw	r4, #12736	; 0x31c0
60308824:	e3464032 	movt	r4, #24626	; 0x6032
60308828:	e1942f9f 	ldrex	r2, [r4]
6030882c:	e3520000 	cmp	r2, #0
60308830:	1320f002 	wfene
60308834:	01842f93 	strexeq	r2, r3, [r4]
60308838:	03520000 	cmpeq	r2, #0
6030883c:	1afffff9 	bne	60308828 <__wrap_printf+0x28>
60308840:	f57ff05f 	dmb	sy
60308844:	e28d301c 	add	r3, sp, #28
60308848:	e58d3004 	str	r3, [sp, #4]
6030884c:	eb0009e1 	bl	6030afd8 <CPU_InInterrupt>
60308850:	e59d1004 	ldr	r1, [sp, #4]
60308854:	e3500000 	cmp	r0, #0
60308858:	e59d0018 	ldr	r0, [sp, #24]
6030885c:	0a00000c 	beq	60308894 <__wrap_printf+0x94>
60308860:	eb0017dc 	bl	6030e7d8 <DiagVprintf>
60308864:	e1a05000 	mov	r5, r0
60308868:	e3a03000 	mov	r3, #0
6030886c:	f57ff05f 	dmb	sy
60308870:	e5843000 	str	r3, [r4]
60308874:	f57ff04f 	dsb	sy
60308878:	e320f004 	sev
6030887c:	e121f006 	msr	CPSR_c, r6
60308880:	e1a00005 	mov	r0, r5
60308884:	e28dd008 	add	sp, sp, #8
60308888:	e8bd4070 	pop	{r4, r5, r6, lr}
6030888c:	e28dd010 	add	sp, sp, #16
60308890:	e12fff1e 	bx	lr
60308894:	ebffea10 	bl	603030dc <vprintf>
60308898:	e3063000 	movw	r3, #24576	; 0x6000
6030889c:	e3463031 	movt	r3, #24625	; 0x6031
603088a0:	e1a05000 	mov	r5, r0
603088a4:	e5933000 	ldr	r3, [r3]
603088a8:	e5930008 	ldr	r0, [r3, #8]
603088ac:	eb0011b7 	bl	6030cf90 <__wrap_fflush>
603088b0:	eaffffec 	b	60308868 <__wrap_printf+0x68>

603088b4 <gic_cpu_init>:
603088b4:	f57ff05f 	dmb	sy
603088b8:	e3a00a01 	mov	r0, #4096	; 0x1000
603088bc:	e34a0010 	movt	r0, #40976	; 0xa010
603088c0:	e3e0c000 	mvn	ip, #0
603088c4:	e580c380 	str	ip, [r0, #896]	; 0x380
603088c8:	f57ff05f 	dmb	sy
603088cc:	e3a03000 	mov	r3, #0
603088d0:	e34f3fff 	movt	r3, #65535	; 0xffff
603088d4:	e5803180 	str	r3, [r0, #384]	; 0x180
603088d8:	f57ff05f 	dmb	sy
603088dc:	e30f3fff 	movw	r3, #65535	; 0xffff
603088e0:	e5803100 	str	r3, [r0, #256]	; 0x100
603088e4:	f57ff05f 	dmb	sy
603088e8:	e3a03b05 	mov	r3, #5120	; 0x1400
603088ec:	e34a3010 	movt	r3, #40976	; 0xa010
603088f0:	e30a10a0 	movw	r1, #41120	; 0xa0a0
603088f4:	e34a10a0 	movt	r1, #41120	; 0xa0a0
603088f8:	e3012420 	movw	r2, #5152	; 0x1420
603088fc:	e34a2010 	movt	r2, #40976	; 0xa010
60308900:	e580c080 	str	ip, [r0, #128]	; 0x80
60308904:	f57ff05f 	dmb	sy
60308908:	e4831004 	str	r1, [r3], #4
6030890c:	e1530002 	cmp	r3, r2
60308910:	1afffffb 	bne	60308904 <gic_cpu_init+0x50>
60308914:	f57ff05f 	dmb	sy
60308918:	e3a02a02 	mov	r2, #8192	; 0x2000
6030891c:	e34a2010 	movt	r2, #40976	; 0xa010
60308920:	e3a030ff 	mov	r3, #255	; 0xff
60308924:	e5823004 	str	r3, [r2, #4]
60308928:	e5923000 	ldr	r3, [r2]
6030892c:	f57ff05f 	dmb	sy
60308930:	e3c33e1e 	bic	r3, r3, #480	; 0x1e0
60308934:	e3c33003 	bic	r3, r3, #3
60308938:	e3833007 	orr	r3, r3, #7
6030893c:	f57ff05f 	dmb	sy
60308940:	e5823000 	str	r3, [r2]
60308944:	e12fff1e 	bx	lr

60308948 <arm_gic_irq_enable>:
60308948:	e200201f 	and	r2, r0, #31
6030894c:	e3a03001 	mov	r3, #1
60308950:	e1a03213 	lsl	r3, r3, r2
60308954:	f57ff05f 	dmb	sy
60308958:	e3a02c11 	mov	r2, #4352	; 0x1100
6030895c:	e34a2010 	movt	r2, #40976	; 0xa010
60308960:	e1a002a0 	lsr	r0, r0, #5
60308964:	e7823100 	str	r3, [r2, r0, lsl #2]
60308968:	e12fff1e 	bx	lr

6030896c <arm_gic_irq_disable>:
6030896c:	e200201f 	and	r2, r0, #31
60308970:	e3a03001 	mov	r3, #1
60308974:	e1a03213 	lsl	r3, r3, r2
60308978:	f57ff05f 	dmb	sy
6030897c:	e3a02d46 	mov	r2, #4480	; 0x1180
60308980:	e34a2010 	movt	r2, #40976	; 0xa010
60308984:	e1a002a0 	lsr	r0, r0, #5
60308988:	e7823100 	str	r3, [r2, r0, lsl #2]
6030898c:	e12fff1e 	bx	lr

60308990 <arm_gic_irq_set_priority>:
60308990:	e6ef3071 	uxtb	r3, r1
60308994:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
60308998:	f57ff05f 	dmb	sy
6030899c:	e3a0eb05 	mov	lr, #5120	; 0x1400
603089a0:	e34ae010 	movt	lr, #40976	; 0xa010
603089a4:	e1a0c220 	lsr	ip, r0, #4
603089a8:	e200100f 	and	r1, r0, #15
603089ac:	e7c0300e 	strb	r3, [r0, lr]
603089b0:	e3a03b07 	mov	r3, #7168	; 0x1c00
603089b4:	e34a3010 	movt	r3, #40976	; 0xa010
603089b8:	e083010c 	add	r0, r3, ip, lsl #2
603089bc:	e1a01081 	lsl	r1, r1, #1
603089c0:	e793310c 	ldr	r3, [r3, ip, lsl #2]
603089c4:	f57ff05f 	dmb	sy
603089c8:	e3a0c003 	mov	ip, #3
603089cc:	e3120001 	tst	r2, #1
603089d0:	13a02002 	movne	r2, #2
603089d4:	e1c3311c 	bic	r3, r3, ip, lsl r1
603089d8:	11833112 	orrne	r3, r3, r2, lsl r1
603089dc:	f57ff05f 	dmb	sy
603089e0:	e5803000 	str	r3, [r0]
603089e4:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

603089e8 <arm_gic_get_active>:
603089e8:	e3a03a02 	mov	r3, #8192	; 0x2000
603089ec:	e34a3010 	movt	r3, #40976	; 0xa010
603089f0:	e593000c 	ldr	r0, [r3, #12]
603089f4:	f57ff05f 	dmb	sy
603089f8:	e7e90050 	ubfx	r0, r0, #0, #10
603089fc:	e12fff1e 	bx	lr

60308a00 <arm_gic_clear_pending_irq>:
60308a00:	e200201f 	and	r2, r0, #31
60308a04:	e3a03001 	mov	r3, #1
60308a08:	e1a03213 	lsl	r3, r3, r2
60308a0c:	f57ff05f 	dmb	sy
60308a10:	e3a02d4a 	mov	r2, #4736	; 0x1280
60308a14:	e34a2010 	movt	r2, #40976	; 0xa010
60308a18:	e1a002a0 	lsr	r0, r0, #5
60308a1c:	e7823100 	str	r3, [r2, r0, lsl #2]
60308a20:	e12fff1e 	bx	lr

60308a24 <arm_gic_eoi>:
60308a24:	f57ff05f 	dmb	sy
60308a28:	e3a03a02 	mov	r3, #8192	; 0x2000
60308a2c:	e34a3010 	movt	r3, #40976	; 0xa010
60308a30:	e5830010 	str	r0, [r3, #16]
60308a34:	e12fff1e 	bx	lr

60308a38 <arm_gic_raise_softirq>:
60308a38:	e3500007 	cmp	r0, #7
60308a3c:	9351000f 	cmpls	r1, #15
60308a40:	812fff1e 	bxhi	lr
60308a44:	e2800010 	add	r0, r0, #16
60308a48:	e3a03001 	mov	r3, #1
60308a4c:	e1811013 	orr	r1, r1, r3, lsl r0
60308a50:	f57ff05f 	dmb	sy
60308a54:	e3a03a01 	mov	r3, #4096	; 0x1000
60308a58:	e34a3010 	movt	r3, #40976	; 0xa010
60308a5c:	e5831f00 	str	r1, [r3, #3840]	; 0xf00
60308a60:	e12fff1e 	bx	lr

60308a64 <arm_gic_init_secondary>:
60308a64:	e92d4010 	push	{r4, lr}
60308a68:	ebffff91 	bl	603088b4 <gic_cpu_init>
60308a6c:	e3a00000 	mov	r0, #0
60308a70:	e8bd8010 	pop	{r4, pc}

60308a74 <arm_gic_init>:
60308a74:	e3a01a01 	mov	r1, #4096	; 0x1000
60308a78:	e34a1010 	movt	r1, #40976	; 0xa010
60308a7c:	e92d4010 	push	{r4, lr}
60308a80:	e5912004 	ldr	r2, [r1, #4]
60308a84:	f57ff05f 	dmb	sy
60308a88:	e202201f 	and	r2, r2, #31
60308a8c:	e2822001 	add	r2, r2, #1
60308a90:	e1a02282 	lsl	r2, r2, #5
60308a94:	e3520080 	cmp	r2, #128	; 0x80
60308a98:	31a03002 	movcc	r3, r2
60308a9c:	23a03080 	movcs	r3, #128	; 0x80
60308aa0:	f57ff05f 	dmb	sy
60308aa4:	e3a00000 	mov	r0, #0
60308aa8:	e3520020 	cmp	r2, #32
60308aac:	e5810000 	str	r0, [r1]
60308ab0:	0a000032 	beq	60308b80 <arm_gic_init+0x10c>
60308ab4:	e3a00b06 	mov	r0, #6144	; 0x1800
60308ab8:	e34a0010 	movt	r0, #40976	; 0xa010
60308abc:	e3001101 	movw	r1, #257	; 0x101
60308ac0:	e3401101 	movt	r1, #257	; 0x101
60308ac4:	e3a02020 	mov	r2, #32
60308ac8:	f57ff05f 	dmb	sy
60308acc:	e7821000 	str	r1, [r2, r0]
60308ad0:	e2822004 	add	r2, r2, #4
60308ad4:	e1530002 	cmp	r3, r2
60308ad8:	8afffffa 	bhi	60308ac8 <arm_gic_init+0x54>
60308adc:	e3a01b07 	mov	r1, #7168	; 0x1c00
60308ae0:	e34a1010 	movt	r1, #40976	; 0xa010
60308ae4:	e3a02020 	mov	r2, #32
60308ae8:	e3a00000 	mov	r0, #0
60308aec:	f57ff05f 	dmb	sy
60308af0:	e7810122 	str	r0, [r1, r2, lsr #2]
60308af4:	e2822010 	add	r2, r2, #16
60308af8:	e1530002 	cmp	r3, r2
60308afc:	8afffffa 	bhi	60308aec <arm_gic_init+0x78>
60308b00:	e3a00b05 	mov	r0, #5120	; 0x1400
60308b04:	e34a0010 	movt	r0, #40976	; 0xa010
60308b08:	e30a10a0 	movw	r1, #41120	; 0xa0a0
60308b0c:	e34a10a0 	movt	r1, #41120	; 0xa0a0
60308b10:	e3a02020 	mov	r2, #32
60308b14:	f57ff05f 	dmb	sy
60308b18:	e7821000 	str	r1, [r2, r0]
60308b1c:	e2822004 	add	r2, r2, #4
60308b20:	e1530002 	cmp	r3, r2
60308b24:	8afffffa 	bhi	60308b14 <arm_gic_init+0xa0>
60308b28:	e3a01d42 	mov	r1, #4224	; 0x1080
60308b2c:	e34a1010 	movt	r1, #40976	; 0xa010
60308b30:	e3a02020 	mov	r2, #32
60308b34:	e3e00000 	mvn	r0, #0
60308b38:	f57ff05f 	dmb	sy
60308b3c:	e78101a2 	str	r0, [r1, r2, lsr #3]
60308b40:	e2822020 	add	r2, r2, #32
60308b44:	e1530002 	cmp	r3, r2
60308b48:	8afffffa 	bhi	60308b38 <arm_gic_init+0xc4>
60308b4c:	e3a0cd4e 	mov	ip, #4992	; 0x1380
60308b50:	e34ac010 	movt	ip, #40976	; 0xa010
60308b54:	e3a00d46 	mov	r0, #4480	; 0x1180
60308b58:	e34a0010 	movt	r0, #40976	; 0xa010
60308b5c:	e3a02020 	mov	r2, #32
60308b60:	e3e01000 	mvn	r1, #0
60308b64:	f57ff05f 	dmb	sy
60308b68:	e78c11a2 	str	r1, [ip, r2, lsr #3]
60308b6c:	f57ff05f 	dmb	sy
60308b70:	e78011a2 	str	r1, [r0, r2, lsr #3]
60308b74:	e2822020 	add	r2, r2, #32
60308b78:	e1530002 	cmp	r3, r2
60308b7c:	8afffff8 	bhi	60308b64 <arm_gic_init+0xf0>
60308b80:	f57ff05f 	dmb	sy
60308b84:	e3a03a01 	mov	r3, #4096	; 0x1000
60308b88:	e34a3010 	movt	r3, #40976	; 0xa010
60308b8c:	e3a02003 	mov	r2, #3
60308b90:	e5832000 	str	r2, [r3]
60308b94:	ebffff46 	bl	603088b4 <gic_cpu_init>
60308b98:	e3a00000 	mov	r0, #0
60308b9c:	e8bd8010 	pop	{r4, pc}

60308ba0 <_read>:
60308ba0:	e2520000 	subs	r0, r2, #0
60308ba4:	da000006 	ble	60308bc4 <_read+0x24>
60308ba8:	e2411001 	sub	r1, r1, #1
60308bac:	e081c000 	add	ip, r1, r0
60308bb0:	e3a03000 	mov	r3, #0
60308bb4:	e5e13001 	strb	r3, [r1, #1]!
60308bb8:	e151000c 	cmp	r1, ip
60308bbc:	1afffffc 	bne	60308bb4 <_read+0x14>
60308bc0:	e12fff1e 	bx	lr
60308bc4:	e3a00000 	mov	r0, #0
60308bc8:	e12fff1e 	bx	lr

60308bcc <_write>:
60308bcc:	e92d4070 	push	{r4, r5, r6, lr}
60308bd0:	e2526000 	subs	r6, r2, #0
60308bd4:	da000006 	ble	60308bf4 <_write+0x28>
60308bd8:	e2414001 	sub	r4, r1, #1
60308bdc:	e0845006 	add	r5, r4, r6
60308be0:	e5f41001 	ldrb	r1, [r4, #1]!
60308be4:	e1a00001 	mov	r0, r1
60308be8:	ebffddc4 	bl	60300300 <__PutCharacter>
60308bec:	e1540005 	cmp	r4, r5
60308bf0:	1afffffa 	bne	60308be0 <_write+0x14>
60308bf4:	e1a00006 	mov	r0, r6
60308bf8:	e8bd8070 	pop	{r4, r5, r6, pc}

60308bfc <_close>:
60308bfc:	e3a00000 	mov	r0, #0
60308c00:	e12fff1e 	bx	lr

60308c04 <_isatty>:
60308c04:	e3a00001 	mov	r0, #1
60308c08:	e12fff1e 	bx	lr

60308c0c <_lseek>:
60308c0c:	e3033160 	movw	r3, #12640	; 0x3160
60308c10:	e3463032 	movt	r3, #24626	; 0x6032
60308c14:	e3a0201d 	mov	r2, #29
60308c18:	e3e00000 	mvn	r0, #0
60308c1c:	e5832000 	str	r2, [r3]
60308c20:	e12fff1e 	bx	lr

60308c24 <_fstat>:
60308c24:	e3a03a02 	mov	r3, #8192	; 0x2000
60308c28:	e3a00000 	mov	r0, #0
60308c2c:	e5813004 	str	r3, [r1, #4]
60308c30:	e12fff1e 	bx	lr

60308c34 <_getpid>:
60308c34:	e3a00001 	mov	r0, #1
60308c38:	e12fff1e 	bx	lr

60308c3c <_kill>:
60308c3c:	e3500001 	cmp	r0, #1
60308c40:	0a000001 	beq	60308c4c <_kill+0x10>
60308c44:	e3a00000 	mov	r0, #0
60308c48:	e12fff1e 	bx	lr
60308c4c:	e1a00001 	mov	r0, r1
60308c50:	e92d4010 	push	{r4, lr}
60308c54:	ebfffddd 	bl	603083d0 <_exit>

60308c58 <vGetGenericTimerFreq>:
60308c58:	e92d4010 	push	{r4, lr}
60308c5c:	e30f3934 	movw	r3, #63796	; 0xf934
60308c60:	e3463030 	movt	r3, #24624	; 0x6030
60308c64:	e12fff33 	blx	r3
60308c68:	e3500001 	cmp	r0, #1
60308c6c:	128f100c 	addne	r1, pc, #12
60308c70:	11c100d0 	ldrdne	r0, [r1]
60308c74:	028f100c 	addeq	r1, pc, #12
60308c78:	01c100d0 	ldrdeq	r0, [r1]
60308c7c:	e8bd8010 	pop	{r4, pc}
60308c80:	02faf080 	.word	0x02faf080
60308c84:	00000000 	.word	0x00000000
60308c88:	00bebc20 	.word	0x00bebc20
60308c8c:	00000000 	.word	0x00000000

60308c90 <prvSetupHardware>:
60308c90:	e92d4010 	push	{r4, lr}
60308c94:	eb001c2e 	bl	6030fd54 <ulPortInterruptLock>
60308c98:	e30f3934 	movw	r3, #63796	; 0xf934
60308c9c:	e3463030 	movt	r3, #24624	; 0x6030
60308ca0:	e12fff33 	blx	r3
60308ca4:	e3500001 	cmp	r0, #1
60308ca8:	e3033200 	movw	r3, #12800	; 0x3200
60308cac:	e3463032 	movt	r3, #24626	; 0x6032
60308cb0:	128f1020 	addne	r1, pc, #32
60308cb4:	11c100d0 	ldrdne	r0, [r1]
60308cb8:	028f1020 	addeq	r1, pc, #32
60308cbc:	01c100d0 	ldrdeq	r0, [r1]
60308cc0:	e1c300f0 	strd	r0, [r3]
60308cc4:	ebffff6a 	bl	60308a74 <arm_gic_init>
60308cc8:	eb0001e2 	bl	60309458 <psci_init>
60308ccc:	e8bd4010 	pop	{r4, lr}
60308cd0:	ea000279 	b	603096bc <smp_init>
60308cd4:	e320f000 	nop	{0}
60308cd8:	02faf080 	.word	0x02faf080
60308cdc:	00000000 	.word	0x00000000
60308ce0:	00bebc20 	.word	0x00bebc20
60308ce4:	00000000 	.word	0x00000000

60308ce8 <prvSetupHardwareSecondary>:
60308ce8:	e92d4010 	push	{r4, lr}
60308cec:	eb001c18 	bl	6030fd54 <ulPortInterruptLock>
60308cf0:	e8bd4010 	pop	{r4, lr}
60308cf4:	eaffff5a 	b	60308a64 <arm_gic_init_secondary>

60308cf8 <vDisableIPIInterrupt>:
60308cf8:	e3033208 	movw	r3, #12808	; 0x3208
60308cfc:	e3463032 	movt	r3, #24626	; 0x6032
60308d00:	e92d4010 	push	{r4, lr}
60308d04:	e3a02000 	mov	r2, #0
60308d08:	e3a00001 	mov	r0, #1
60308d0c:	e5832008 	str	r2, [r3, #8]
60308d10:	e583200c 	str	r2, [r3, #12]
60308d14:	ebffff14 	bl	6030896c <arm_gic_irq_disable>
60308d18:	e8bd4010 	pop	{r4, lr}
60308d1c:	e3a00001 	mov	r0, #1
60308d20:	eaffff36 	b	60308a00 <arm_gic_clear_pending_irq>

60308d24 <vConfigureIPIInterrupt>:
60308d24:	e92d4070 	push	{r4, r5, r6, lr}
60308d28:	e3034208 	movw	r4, #12808	; 0x3208
60308d2c:	e3464032 	movt	r4, #24626	; 0x6032
60308d30:	e3a05000 	mov	r5, #0
60308d34:	e1a02005 	mov	r2, r5
60308d38:	e3a010a0 	mov	r1, #160	; 0xa0
60308d3c:	e1a00005 	mov	r0, r5
60308d40:	e30f3d9c 	movw	r3, #64924	; 0xfd9c
60308d44:	e3463030 	movt	r3, #24624	; 0x6030
60308d48:	e5843000 	str	r3, [r4]
60308d4c:	e5845004 	str	r5, [r4, #4]
60308d50:	ebffff0e 	bl	60308990 <arm_gic_irq_set_priority>
60308d54:	e1a00005 	mov	r0, r5
60308d58:	ebfffefa 	bl	60308948 <arm_gic_irq_enable>
60308d5c:	e1a02005 	mov	r2, r5
60308d60:	e3a010a0 	mov	r1, #160	; 0xa0
60308d64:	e3a00001 	mov	r0, #1
60308d68:	e30f3dd4 	movw	r3, #64980	; 0xfdd4
60308d6c:	e3463030 	movt	r3, #24624	; 0x6030
60308d70:	e5843008 	str	r3, [r4, #8]
60308d74:	e584500c 	str	r5, [r4, #12]
60308d78:	ebffff04 	bl	60308990 <arm_gic_irq_set_priority>
60308d7c:	e3a00001 	mov	r0, #1
60308d80:	ebfffef0 	bl	60308948 <arm_gic_irq_enable>
60308d84:	e3a00002 	mov	r0, #2
60308d88:	e1a02005 	mov	r2, r5
60308d8c:	e3a010a0 	mov	r1, #160	; 0xa0
60308d90:	e3003508 	movw	r3, #1288	; 0x508
60308d94:	e3463030 	movt	r3, #24624	; 0x6030
60308d98:	e5843010 	str	r3, [r4, #16]
60308d9c:	e5845014 	str	r5, [r4, #20]
60308da0:	ebfffefa 	bl	60308990 <arm_gic_irq_set_priority>
60308da4:	e8bd4070 	pop	{r4, r5, r6, lr}
60308da8:	e3a00002 	mov	r0, #2
60308dac:	eafffee5 	b	60308948 <arm_gic_irq_enable>

60308db0 <vConfigureSMPSendIPI>:
60308db0:	e92d4010 	push	{r4, lr}
60308db4:	e1a04000 	mov	r4, r0
60308db8:	eb000393 	bl	60309c0c <pmu_get_secondary_cpu_state>
60308dbc:	e2501000 	subs	r1, r0, #0
60308dc0:	18bd8010 	popne	{r4, pc}
60308dc4:	e1a00004 	mov	r0, r4
60308dc8:	e8bd4010 	pop	{r4, lr}
60308dcc:	eaffff19 	b	60308a38 <arm_gic_raise_softirq>

60308dd0 <vConfigureTickInterrupt>:
60308dd0:	e3033208 	movw	r3, #12808	; 0x3208
60308dd4:	e3463032 	movt	r3, #24626	; 0x6032
60308dd8:	e92d4370 	push	{r4, r5, r6, r8, r9, lr}
60308ddc:	e30f2d08 	movw	r2, #64776	; 0xfd08
60308de0:	e3462030 	movt	r2, #24624	; 0x6030
60308de4:	e3a06000 	mov	r6, #0
60308de8:	e58320d8 	str	r2, [r3, #216]	; 0xd8
60308dec:	e58360dc 	str	r6, [r3, #220]	; 0xdc
60308df0:	ec598f1e 	mrrc	15, 1, r8, r9, cr14
60308df4:	e3033200 	movw	r3, #12800	; 0x3200
60308df8:	e3463032 	movt	r3, #24626	; 0x6032
60308dfc:	e3a02ffa 	mov	r2, #1000	; 0x3e8
60308e00:	e1c300d0 	ldrd	r0, [r3]
60308e04:	e3a03000 	mov	r3, #0
60308e08:	ebffdeb1 	bl	603008d4 <__aeabi_uldivmod>
60308e0c:	e0902008 	adds	r2, r0, r8
60308e10:	e0a13009 	adc	r3, r1, r9
60308e14:	ec432f3e 	mcrr	15, 3, r2, r3, cr14
60308e18:	e3a03001 	mov	r3, #1
60308e1c:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
60308e20:	e3a0001b 	mov	r0, #27
60308e24:	e1a02006 	mov	r2, r6
60308e28:	e3a010e0 	mov	r1, #224	; 0xe0
60308e2c:	ebfffed7 	bl	60308990 <arm_gic_irq_set_priority>
60308e30:	e8bd4370 	pop	{r4, r5, r6, r8, r9, lr}
60308e34:	e3a0001b 	mov	r0, #27
60308e38:	eafffec2 	b	60308948 <arm_gic_irq_enable>

60308e3c <vClearTickInterrupt>:
60308e3c:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
60308e40:	e24dd008 	sub	sp, sp, #8
60308e44:	ec532f3e 	mrrc	15, 3, r2, r3, cr14
60308e48:	e1a00002 	mov	r0, r2
60308e4c:	e1a01003 	mov	r1, r3
60308e50:	e1a05002 	mov	r5, r2
60308e54:	e1a0a003 	mov	sl, r3
60308e58:	ec532f1e 	mrrc	15, 1, r2, r3, cr14
60308e5c:	e1520000 	cmp	r2, r0
60308e60:	e0d33001 	sbcs	r3, r3, r1
60308e64:	e1cd00f0 	strd	r0, [sp]
60308e68:	3a000015 	bcc	60308ec4 <vClearTickInterrupt+0x88>
60308e6c:	ec598f1e 	mrrc	15, 1, r8, r9, cr14
60308e70:	e3033200 	movw	r3, #12800	; 0x3200
60308e74:	e3463032 	movt	r3, #24626	; 0x6032
60308e78:	e3a02ffa 	mov	r2, #1000	; 0x3e8
60308e7c:	e1c300d0 	ldrd	r0, [r3]
60308e80:	e3a03000 	mov	r3, #0
60308e84:	ebffde92 	bl	603008d4 <__aeabi_uldivmod>
60308e88:	e1a04001 	mov	r4, r1
60308e8c:	e1a02000 	mov	r2, r0
60308e90:	e0580005 	subs	r0, r8, r5
60308e94:	e0c9100a 	sbc	r1, r9, sl
60308e98:	e1a03004 	mov	r3, r4
60308e9c:	e1a06002 	mov	r6, r2
60308ea0:	ebffde8b 	bl	603008d4 <__aeabi_uldivmod>
60308ea4:	e0244490 	mla	r4, r0, r4, r4
60308ea8:	e2800001 	add	r0, r0, #1
60308eac:	e59d1004 	ldr	r1, [sp, #4]
60308eb0:	e0860690 	umull	r0, r6, r0, r6
60308eb4:	e0844006 	add	r4, r4, r6
60308eb8:	e0902005 	adds	r2, r0, r5
60308ebc:	e0a43001 	adc	r3, r4, r1
60308ec0:	ec432f3e 	mcrr	15, 3, r2, r3, cr14
60308ec4:	e28dd008 	add	sp, sp, #8
60308ec8:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

60308ecc <vRegisterIRQHandler>:
60308ecc:	e350007f 	cmp	r0, #127	; 0x7f
60308ed0:	93033208 	movwls	r3, #12808	; 0x3208
60308ed4:	93463032 	movtls	r3, #24626	; 0x6032
60308ed8:	9083c180 	addls	ip, r3, r0, lsl #3
60308edc:	97831180 	strls	r1, [r3, r0, lsl #3]
60308ee0:	958c2004 	strls	r2, [ip, #4]
60308ee4:	e12fff1e 	bx	lr

60308ee8 <vApplicationFPUSafeIRQHandler>:
60308ee8:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
60308eec:	eb001bb3 	bl	6030fdc0 <ulPortGetCoreId>
60308ef0:	e3a05a02 	mov	r5, #8192	; 0x2000
60308ef4:	e34a5010 	movt	r5, #40976	; 0xa010
60308ef8:	e3038d44 	movw	r8, #15684	; 0x3d44
60308efc:	e3468032 	movt	r8, #24626	; 0x6032
60308f00:	e3036208 	movw	r6, #12808	; 0x3208
60308f04:	e3466032 	movt	r6, #24626	; 0x6032
60308f08:	e1a07000 	mov	r7, r0
60308f0c:	ebfffeb5 	bl	603089e8 <arm_gic_get_active>
60308f10:	e7e94050 	ubfx	r4, r0, #0, #10
60308f14:	e30033ff 	movw	r3, #1023	; 0x3ff
60308f18:	e1540003 	cmp	r4, r3
60308f1c:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
60308f20:	e3100d0e 	tst	r0, #896	; 0x380
60308f24:	18bd87f0 	popne	{r4, r5, r6, r7, r8, r9, sl, pc}
60308f28:	e5959004 	ldr	r9, [r5, #4]
60308f2c:	e5953014 	ldr	r3, [r5, #20]
60308f30:	e5853004 	str	r3, [r5, #4]
60308f34:	f57ff04f 	dsb	sy
60308f38:	f57ff06f 	isb	sy
60308f3c:	e7983107 	ldr	r3, [r8, r7, lsl #2]
60308f40:	e353000f 	cmp	r3, #15
60308f44:	8a000002 	bhi	60308f54 <vApplicationFPUSafeIRQHandler+0x6c>
60308f48:	f1080080 	cpsie	i
60308f4c:	f57ff04f 	dsb	sy
60308f50:	f57ff06f 	isb	sy
60308f54:	e7963184 	ldr	r3, [r6, r4, lsl #3]
60308f58:	e0862184 	add	r2, r6, r4, lsl #3
60308f5c:	e3530000 	cmp	r3, #0
60308f60:	0a000008 	beq	60308f88 <vApplicationFPUSafeIRQHandler+0xa0>
60308f64:	e5920004 	ldr	r0, [r2, #4]
60308f68:	e12fff33 	blx	r3
60308f6c:	f10c0080 	cpsid	i
60308f70:	f57ff04f 	dsb	sy
60308f74:	f57ff06f 	isb	sy
60308f78:	e1a00004 	mov	r0, r4
60308f7c:	ebfffea8 	bl	60308a24 <arm_gic_eoi>
60308f80:	e5859004 	str	r9, [r5, #4]
60308f84:	eaffffe0 	b	60308f0c <vApplicationFPUSafeIRQHandler+0x24>
60308f88:	e30401c8 	movw	r0, #16840	; 0x41c8
60308f8c:	e3460031 	movt	r0, #24625	; 0x6031
60308f90:	e1a01004 	mov	r1, r4
60308f94:	ebfffe19 	bl	60308800 <__wrap_printf>
60308f98:	eafffffe 	b	60308f98 <vApplicationFPUSafeIRQHandler+0xb0>

60308f9c <irq_enable>:
60308f9c:	e2800020 	add	r0, r0, #32
60308fa0:	eafffe68 	b	60308948 <arm_gic_irq_enable>

60308fa4 <irq_register>:
60308fa4:	e92d4070 	push	{r4, r5, r6, lr}
60308fa8:	e2814020 	add	r4, r1, #32
60308fac:	e1a05003 	mov	r5, r3
60308fb0:	e1a01000 	mov	r1, r0
60308fb4:	e1a00004 	mov	r0, r4
60308fb8:	ebffffc3 	bl	60308ecc <vRegisterIRQHandler>
60308fbc:	e1a00004 	mov	r0, r4
60308fc0:	e3a02000 	mov	r2, #0
60308fc4:	e1a01005 	mov	r1, r5
60308fc8:	ebfffe70 	bl	60308990 <arm_gic_irq_set_priority>
60308fcc:	e3a00001 	mov	r0, #1
60308fd0:	e8bd8070 	pop	{r4, r5, r6, pc}

60308fd4 <_init>:
60308fd4:	e12fff1e 	bx	lr

60308fd8 <app_start>:
60308fd8:	e30338b0 	movw	r3, #14512	; 0x38b0
60308fdc:	e3463032 	movt	r3, #24626	; 0x6032
60308fe0:	e92d4010 	push	{r4, lr}
60308fe4:	e3e02000 	mvn	r2, #0
60308fe8:	e5832000 	str	r2, [r3]
60308fec:	ebfffd4b 	bl	60308520 <rtos_mem_init>
60308ff0:	ebffe097 	bl	60301254 <__libc_init_array>
60308ff4:	ebffff25 	bl	60308c90 <prvSetupHardware>
60308ff8:	e3a03902 	mov	r3, #32768	; 0x8000
60308ffc:	e3443200 	movt	r3, #16896	; 0x4200
60309000:	e3a02074 	mov	r2, #116	; 0x74
60309004:	e3030c80 	movw	r0, #15488	; 0x3c80
60309008:	e3460032 	movt	r0, #24626	; 0x6032
6030900c:	e5931270 	ldr	r1, [r3, #624]	; 0x270
60309010:	e30b36e0 	movw	r3, #46816	; 0xb6e0
60309014:	e3463030 	movt	r3, #24624	; 0x6030
60309018:	e12fff33 	blx	r3
6030901c:	e8bd4010 	pop	{r4, lr}
60309020:	ea000b1a 	b	6030bc90 <main>

60309024 <FIQHandler>:
60309024:	eafffffe 	b	60309024 <FIQHandler>

60309028 <Crash_GetExStack>:
60309028:	e10fc000 	mrs	ip, CPSR
6030902c:	e200001f 	and	r0, r0, #31
60309030:	e3500013 	cmp	r0, #19
60309034:	0a000013 	beq	60309088 <Crash_GetExStack+0x60>
60309038:	9a00000c 	bls	60309070 <Crash_GetExStack+0x48>
6030903c:	e3500017 	cmp	r0, #23
60309040:	0a000012 	beq	60309090 <Crash_GetExStack+0x68>
60309044:	e350001b 	cmp	r0, #27
60309048:	1a000012 	bne	60309098 <Crash_GetExStack+0x70>
6030904c:	f102001b 	cps	#27
60309050:	e1a0000d 	mov	r0, sp
60309054:	e1a0300e 	mov	r3, lr
60309058:	e129f00c 	msr	CPSR_fc, ip
6030905c:	f57ff04f 	dsb	sy
60309060:	f57ff06f 	isb	sy
60309064:	e5810000 	str	r0, [r1]
60309068:	e5823000 	str	r3, [r2]
6030906c:	e12fff1e 	bx	lr
60309070:	e3500010 	cmp	r0, #16
60309074:	0a000009 	beq	603090a0 <Crash_GetExStack+0x78>
60309078:	e3500012 	cmp	r0, #18
6030907c:	1a000005 	bne	60309098 <Crash_GetExStack+0x70>
60309080:	f1020012 	cps	#18
60309084:	eafffff1 	b	60309050 <Crash_GetExStack+0x28>
60309088:	f1020013 	cps	#19
6030908c:	eaffffef 	b	60309050 <Crash_GetExStack+0x28>
60309090:	f1020017 	cps	#23
60309094:	eaffffed 	b	60309050 <Crash_GetExStack+0x28>
60309098:	f102001f 	cps	#31
6030909c:	eaffffeb 	b	60309050 <Crash_GetExStack+0x28>
603090a0:	f1020010 	cps	#16
603090a4:	eaffffe9 	b	60309050 <Crash_GetExStack+0x28>

603090a8 <Crash_DumpReg>:
603090a8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
603090ac:	e59f7160 	ldr	r7, [pc, #352]	; 60309214 <Crash_DumpReg+0x16c>
603090b0:	e1a06000 	mov	r6, r0
603090b4:	e24dd01c 	sub	sp, sp, #28
603090b8:	e1a08001 	mov	r8, r1
603090bc:	e304a200 	movw	sl, #16896	; 0x4200
603090c0:	e346a031 	movt	sl, #24625	; 0x6031
603090c4:	eb001b3d 	bl	6030fdc0 <ulPortGetCoreId>
603090c8:	e286901c 	add	r9, r6, #28
603090cc:	e30421f8 	movw	r2, #16888	; 0x41f8
603090d0:	e3462031 	movt	r2, #24625	; 0x6031
603090d4:	e1a05000 	mov	r5, r0
603090d8:	e1a04007 	mov	r4, r7
603090dc:	e287b014 	add	fp, r7, #20
603090e0:	ea000000 	b	603090e8 <Crash_DumpReg+0x40>
603090e4:	e5b42004 	ldr	r2, [r4, #4]!
603090e8:	e5b93004 	ldr	r3, [r9, #4]!
603090ec:	e1a01005 	mov	r1, r5
603090f0:	e1a0000a 	mov	r0, sl
603090f4:	ebfffdc1 	bl	60308800 <__wrap_printf>
603090f8:	e154000b 	cmp	r4, fp
603090fc:	1afffff8 	bne	603090e4 <Crash_DumpReg+0x3c>
60309100:	e30421fc 	movw	r2, #16892	; 0x41fc
60309104:	e3462031 	movt	r2, #24625	; 0x6031
60309108:	e3049200 	movw	r9, #16896	; 0x4200
6030910c:	e3469031 	movt	r9, #24625	; 0x6031
60309110:	e59f4100 	ldr	r4, [pc, #256]	; 60309218 <Crash_DumpReg+0x170>
60309114:	e2466004 	sub	r6, r6, #4
60309118:	ea000000 	b	60309120 <Crash_DumpReg+0x78>
6030911c:	e4942004 	ldr	r2, [r4], #4
60309120:	e5b63004 	ldr	r3, [r6, #4]!
60309124:	e1a01005 	mov	r1, r5
60309128:	e1a00009 	mov	r0, r9
6030912c:	ebfffdb3 	bl	60308800 <__wrap_printf>
60309130:	e1540007 	cmp	r4, r7
60309134:	1afffff8 	bne	6030911c <Crash_DumpReg+0x74>
60309138:	e1a02008 	mov	r2, r8
6030913c:	e1a01005 	mov	r1, r5
60309140:	e3040218 	movw	r0, #16920	; 0x4218
60309144:	e3460031 	movt	r0, #24625	; 0x6031
60309148:	ebfffdac 	bl	60308800 <__wrap_printf>
6030914c:	e1a00008 	mov	r0, r8
60309150:	e28d2014 	add	r2, sp, #20
60309154:	e28d1010 	add	r1, sp, #16
60309158:	ebffffb2 	bl	60309028 <Crash_GetExStack>
6030915c:	e59d2014 	ldr	r2, [sp, #20]
60309160:	e1a01005 	mov	r1, r5
60309164:	e3040244 	movw	r0, #16964	; 0x4244
60309168:	e3460031 	movt	r0, #24625	; 0x6031
6030916c:	ebfffda3 	bl	60308800 <__wrap_printf>
60309170:	e59d8010 	ldr	r8, [sp, #16]
60309174:	e3040270 	movw	r0, #17008	; 0x4270
60309178:	e3460031 	movt	r0, #24625	; 0x6031
6030917c:	e3a03080 	mov	r3, #128	; 0x80
60309180:	e1a02008 	mov	r2, r8
60309184:	e1a01005 	mov	r1, r5
60309188:	e30462b8 	movw	r6, #17080	; 0x42b8
6030918c:	e3466031 	movt	r6, #24625	; 0x6031
60309190:	e2887c02 	add	r7, r8, #512	; 0x200
60309194:	e1a04008 	mov	r4, r8
60309198:	ebfffd98 	bl	60308800 <__wrap_printf>
6030919c:	e594200c 	ldr	r2, [r4, #12]
603091a0:	e5943000 	ldr	r3, [r4]
603091a4:	e58d2008 	str	r2, [sp, #8]
603091a8:	e1a01005 	mov	r1, r5
603091ac:	e594c008 	ldr	ip, [r4, #8]
603091b0:	e58dc004 	str	ip, [sp, #4]
603091b4:	e1a02004 	mov	r2, r4
603091b8:	e594c004 	ldr	ip, [r4, #4]
603091bc:	e1a00006 	mov	r0, r6
603091c0:	e2844010 	add	r4, r4, #16
603091c4:	e58dc000 	str	ip, [sp]
603091c8:	ebfffd8c 	bl	60308800 <__wrap_printf>
603091cc:	e1570004 	cmp	r7, r4
603091d0:	1afffff1 	bne	6030919c <Crash_DumpReg+0xf4>
603091d4:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
603091d8:	e3130004 	tst	r3, #4
603091dc:	0a00000a 	beq	6030920c <Crash_DumpReg+0x164>
603091e0:	e288307f 	add	r3, r8, #127	; 0x7f
603091e4:	e3c3303f 	bic	r3, r3, #63	; 0x3f
603091e8:	e3c8803f 	bic	r8, r8, #63	; 0x3f
603091ec:	e2833040 	add	r3, r3, #64	; 0x40
603091f0:	e1580003 	cmp	r8, r3
603091f4:	2a000003 	bcs	60309208 <Crash_DumpReg+0x160>
603091f8:	ee078f3a 	mcr	15, 0, r8, cr7, cr10, {1}
603091fc:	e2888040 	add	r8, r8, #64	; 0x40
60309200:	e1530008 	cmp	r3, r8
60309204:	8afffffb 	bhi	603091f8 <Crash_DumpReg+0x150>
60309208:	f57ff05f 	dmb	sy
6030920c:	e28dd01c 	add	sp, sp, #28
60309210:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
60309214:	60314414 	.word	0x60314414
60309218:	603143f8 	.word	0x603143f8

6030921c <UndefinedExceptionHandler>:
6030921c:	e3033610 	movw	r3, #13840	; 0x3610
60309220:	e3463032 	movt	r3, #24626	; 0x6032
60309224:	e92d4070 	push	{r4, r5, r6, lr}
60309228:	e1a05001 	mov	r5, r1
6030922c:	e1a04000 	mov	r4, r0
60309230:	e5931000 	ldr	r1, [r3]
60309234:	e30402ec 	movw	r0, #17132	; 0x42ec
60309238:	e3460031 	movt	r0, #24625	; 0x6031
6030923c:	ebfffd6f 	bl	60308800 <__wrap_printf>
60309240:	e1a01005 	mov	r1, r5
60309244:	e1a00004 	mov	r0, r4
60309248:	ebffff96 	bl	603090a8 <Crash_DumpReg>
6030924c:	eafffffe 	b	6030924c <UndefinedExceptionHandler+0x30>

60309250 <DataAbortHandler>:
60309250:	e92d4070 	push	{r4, r5, r6, lr}
60309254:	e1a04000 	mov	r4, r0
60309258:	e1a05001 	mov	r5, r1
6030925c:	ee151f10 	mrc	15, 0, r1, cr5, cr0, {0}
60309260:	e304031c 	movw	r0, #17180	; 0x431c
60309264:	e3460031 	movt	r0, #24625	; 0x6031
60309268:	ebfffd64 	bl	60308800 <__wrap_printf>
6030926c:	e3033608 	movw	r3, #13832	; 0x3608
60309270:	e3463032 	movt	r3, #24626	; 0x6032
60309274:	e3040350 	movw	r0, #17232	; 0x4350
60309278:	e3460031 	movt	r0, #24625	; 0x6031
6030927c:	e5931000 	ldr	r1, [r3]
60309280:	ebfffd5e 	bl	60308800 <__wrap_printf>
60309284:	e1a01005 	mov	r1, r5
60309288:	e1a00004 	mov	r0, r4
6030928c:	ebffff85 	bl	603090a8 <Crash_DumpReg>
60309290:	eafffffe 	b	60309290 <DataAbortHandler+0x40>

60309294 <PrefetchAbortHandler>:
60309294:	e92d4070 	push	{r4, r5, r6, lr}
60309298:	e1a04000 	mov	r4, r0
6030929c:	e1a05001 	mov	r5, r1
603092a0:	ee151f30 	mrc	15, 0, r1, cr5, cr0, {1}
603092a4:	e3040384 	movw	r0, #17284	; 0x4384
603092a8:	e3460031 	movt	r0, #24625	; 0x6031
603092ac:	ebfffd53 	bl	60308800 <__wrap_printf>
603092b0:	e303360c 	movw	r3, #13836	; 0x360c
603092b4:	e3463032 	movt	r3, #24626	; 0x6032
603092b8:	e3040350 	movw	r0, #17232	; 0x4350
603092bc:	e3460031 	movt	r0, #24625	; 0x6031
603092c0:	e5931000 	ldr	r1, [r3]
603092c4:	ebfffd4d 	bl	60308800 <__wrap_printf>
603092c8:	e1a01005 	mov	r1, r5
603092cc:	e1a00004 	mov	r0, r4
603092d0:	ebffff74 	bl	603090a8 <Crash_DumpReg>
603092d4:	eafffffe 	b	603092d4 <PrefetchAbortHandler+0x40>

603092d8 <LOGUART_PutChar>:
603092d8:	e3a03902 	mov	r3, #32768	; 0x8000
603092dc:	e3443200 	movt	r3, #16896	; 0x4200
603092e0:	e92d4070 	push	{r4, r5, r6, lr}
603092e4:	e3a0c014 	mov	ip, #20
603092e8:	e593527c 	ldr	r5, [r3, #636]	; 0x27c
603092ec:	e304642c 	movw	r6, #17452	; 0x442c
603092f0:	e3466031 	movt	r6, #24625	; 0x6031
603092f4:	e7e15355 	ubfx	r5, r5, #6, #2
603092f8:	e3a0e903 	mov	lr, #49152	; 0xc000
603092fc:	e344e200 	movt	lr, #16896	; 0x4200
60309300:	e02c659c 	mla	ip, ip, r5, r6
60309304:	e3a03000 	mov	r3, #0
60309308:	e59c400c 	ldr	r4, [ip, #12]
6030930c:	ea000003 	b	60309320 <LOGUART_PutChar+0x48>
60309310:	e59e1014 	ldr	r1, [lr, #20]
60309314:	e59c2004 	ldr	r2, [ip, #4]
60309318:	e1110002 	tst	r1, r2
6030931c:	1a000002 	bne	6030932c <LOGUART_PutChar+0x54>
60309320:	e2833001 	add	r3, r3, #1
60309324:	e1540003 	cmp	r4, r3
60309328:	8afffff8 	bhi	60309310 <LOGUART_PutChar+0x38>
6030932c:	e3a03014 	mov	r3, #20
60309330:	e350000a 	cmp	r0, #10
60309334:	03a0200d 	moveq	r2, #13
60309338:	e0050593 	mul	r5, r3, r5
6030933c:	e7963005 	ldr	r3, [r6, r5]
60309340:	e1a03103 	lsl	r3, r3, #2
60309344:	e2833442 	add	r3, r3, #1107296256	; 0x42000000
60309348:	e2833903 	add	r3, r3, #49152	; 0xc000
6030934c:	e583005c 	str	r0, [r3, #92]	; 0x5c
60309350:	0583205c 	streq	r2, [r3, #92]	; 0x5c
60309354:	e8bd8070 	pop	{r4, r5, r6, pc}

60309358 <psci_cpu_suspend>:
60309358:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
6030935c:	e1a0e000 	mov	lr, r0
60309360:	e24dd02c 	sub	sp, sp, #44	; 0x2c
60309364:	e3a03000 	mov	r3, #0
60309368:	e1a02001 	mov	r2, r1
6030936c:	e28dc018 	add	ip, sp, #24
60309370:	e3a00361 	mov	r0, #-2080374783	; 0x84000001
60309374:	e1a0100e 	mov	r1, lr
60309378:	e58d3014 	str	r3, [sp, #20]
6030937c:	e58dc010 	str	ip, [sp, #16]
60309380:	e58d300c 	str	r3, [sp, #12]
60309384:	e58d3008 	str	r3, [sp, #8]
60309388:	e58d3004 	str	r3, [sp, #4]
6030938c:	e58d3000 	str	r3, [sp]
60309390:	ebffdc6f 	bl	60300554 <__arm_smccc_smc>
60309394:	e59d0018 	ldr	r0, [sp, #24]
60309398:	e28dd02c 	add	sp, sp, #44	; 0x2c
6030939c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

603093a0 <psci_cpu_off>:
603093a0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
603093a4:	e3a03000 	mov	r3, #0
603093a8:	e24dd02c 	sub	sp, sp, #44	; 0x2c
603093ac:	e1a02003 	mov	r2, r3
603093b0:	e1a01000 	mov	r1, r0
603093b4:	e28dc018 	add	ip, sp, #24
603093b8:	e3a003a1 	mov	r0, #-2080374782	; 0x84000002
603093bc:	e58d3014 	str	r3, [sp, #20]
603093c0:	e58d300c 	str	r3, [sp, #12]
603093c4:	e58d3008 	str	r3, [sp, #8]
603093c8:	e58d3004 	str	r3, [sp, #4]
603093cc:	e58d3000 	str	r3, [sp]
603093d0:	e58dc010 	str	ip, [sp, #16]
603093d4:	ebffdc5e 	bl	60300554 <__arm_smccc_smc>
603093d8:	e59d3018 	ldr	r3, [sp, #24]
603093dc:	e2833009 	add	r3, r3, #9
603093e0:	e3530009 	cmp	r3, #9
603093e4:	9304256c 	movwls	r2, #17772	; 0x456c
603093e8:	93462031 	movtls	r2, #24625	; 0x6031
603093ec:	83e00015 	mvnhi	r0, #21
603093f0:	97920103 	ldrls	r0, [r2, r3, lsl #2]
603093f4:	e28dd02c 	add	sp, sp, #44	; 0x2c
603093f8:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

603093fc <psci_cpu_on>:
603093fc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
60309400:	e3a03000 	mov	r3, #0
60309404:	e24dd02c 	sub	sp, sp, #44	; 0x2c
60309408:	e1a02001 	mov	r2, r1
6030940c:	e28dc018 	add	ip, sp, #24
60309410:	e1a01000 	mov	r1, r0
60309414:	e58d3014 	str	r3, [sp, #20]
60309418:	e3a003e1 	mov	r0, #-2080374781	; 0x84000003
6030941c:	e58d300c 	str	r3, [sp, #12]
60309420:	e58d3008 	str	r3, [sp, #8]
60309424:	e58d3004 	str	r3, [sp, #4]
60309428:	e58d3000 	str	r3, [sp]
6030942c:	e58dc010 	str	ip, [sp, #16]
60309430:	ebffdc47 	bl	60300554 <__arm_smccc_smc>
60309434:	e59d3018 	ldr	r3, [sp, #24]
60309438:	e2833009 	add	r3, r3, #9
6030943c:	e3530009 	cmp	r3, #9
60309440:	9304256c 	movwls	r2, #17772	; 0x456c
60309444:	93462031 	movtls	r2, #24625	; 0x6031
60309448:	83e00015 	mvnhi	r0, #21
6030944c:	97920103 	ldrls	r0, [r2, r3, lsl #2]
60309450:	e28dd02c 	add	sp, sp, #44	; 0x2c
60309454:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

60309458 <psci_init>:
60309458:	e92d4030 	push	{r4, r5, lr}
6030945c:	e3a04000 	mov	r4, #0
60309460:	e24dd02c 	sub	sp, sp, #44	; 0x2c
60309464:	e1a03004 	mov	r3, r4
60309468:	e1a02004 	mov	r2, r4
6030946c:	e28d5018 	add	r5, sp, #24
60309470:	e1a01004 	mov	r1, r4
60309474:	e3a00321 	mov	r0, #-2080374784	; 0x84000000
60309478:	e58d4014 	str	r4, [sp, #20]
6030947c:	e1cd40fc 	strd	r4, [sp, #12]
60309480:	e58d4008 	str	r4, [sp, #8]
60309484:	e58d4004 	str	r4, [sp, #4]
60309488:	e58d4000 	str	r4, [sp]
6030948c:	ebffdc30 	bl	60300554 <__arm_smccc_smc>
60309490:	e59d2018 	ldr	r2, [sp, #24]
60309494:	e30f3ffe 	movw	r3, #65534	; 0xfffe
60309498:	e0033002 	and	r3, r3, r2
6030949c:	e1933822 	orrs	r3, r3, r2, lsr #16
603094a0:	0a00003d 	beq	6030959c <psci_init+0x144>
603094a4:	e1a01004 	mov	r1, r4
603094a8:	e1a03004 	mov	r3, r4
603094ac:	e1a02004 	mov	r2, r4
603094b0:	e3a00006 	mov	r0, #6
603094b4:	e3480400 	movt	r0, #33792	; 0x8400
603094b8:	e58d4014 	str	r4, [sp, #20]
603094bc:	e1cd40fc 	strd	r4, [sp, #12]
603094c0:	e58d4008 	str	r4, [sp, #8]
603094c4:	e58d4004 	str	r4, [sp, #4]
603094c8:	e58d4000 	str	r4, [sp]
603094cc:	ebffdc20 	bl	60300554 <__arm_smccc_smc>
603094d0:	e59d1018 	ldr	r1, [sp, #24]
603094d4:	e3510002 	cmp	r1, #2
603094d8:	0a000023 	beq	6030956c <psci_init+0x114>
603094dc:	e3710001 	cmn	r1, #1
603094e0:	0a000027 	beq	60309584 <psci_init+0x12c>
603094e4:	e3510001 	cmp	r1, #1
603094e8:	8a000013 	bhi	6030953c <psci_init+0xe4>
603094ec:	e1a01004 	mov	r1, r4
603094f0:	e1cd40fc 	strd	r4, [sp, #12]
603094f4:	e1a03004 	mov	r3, r4
603094f8:	e1a02004 	mov	r2, r4
603094fc:	e3a00007 	mov	r0, #7
60309500:	e3480400 	movt	r0, #33792	; 0x8400
60309504:	e58d4014 	str	r4, [sp, #20]
60309508:	e58d4008 	str	r4, [sp, #8]
6030950c:	e58d4004 	str	r4, [sp, #4]
60309510:	e58d4000 	str	r4, [sp]
60309514:	ebffdc0e 	bl	60300554 <__arm_smccc_smc>
60309518:	e59d1018 	ldr	r1, [sp, #24]
6030951c:	e21154ff 	ands	r5, r1, #-16777216	; 0xff000000
60309520:	1a00000b 	bne	60309554 <psci_init+0xfc>
60309524:	e3040540 	movw	r0, #17728	; 0x4540
60309528:	e3460031 	movt	r0, #24625	; 0x6031
6030952c:	ebfffcb3 	bl	60308800 <__wrap_printf>
60309530:	e1a00005 	mov	r0, r5
60309534:	e28dd02c 	add	sp, sp, #44	; 0x2c
60309538:	e8bd8030 	pop	{r4, r5, pc}
6030953c:	e30404d4 	movw	r0, #17620	; 0x44d4
60309540:	e3460031 	movt	r0, #24625	; 0x6031
60309544:	ebfffcad 	bl	60308800 <__wrap_printf>
60309548:	e1a00004 	mov	r0, r4
6030954c:	e28dd02c 	add	sp, sp, #44	; 0x2c
60309550:	e8bd8030 	pop	{r4, r5, pc}
60309554:	e3040504 	movw	r0, #17668	; 0x4504
60309558:	e3460031 	movt	r0, #24625	; 0x6031
6030955c:	ebfffca7 	bl	60308800 <__wrap_printf>
60309560:	e1a00004 	mov	r0, r4
60309564:	e28dd02c 	add	sp, sp, #44	; 0x2c
60309568:	e8bd8030 	pop	{r4, r5, pc}
6030956c:	e304048c 	movw	r0, #17548	; 0x448c
60309570:	e3460031 	movt	r0, #24625	; 0x6031
60309574:	ebfffca1 	bl	60308800 <__wrap_printf>
60309578:	e1a00004 	mov	r0, r4
6030957c:	e28dd02c 	add	sp, sp, #44	; 0x2c
60309580:	e8bd8030 	pop	{r4, r5, pc}
60309584:	e30404b0 	movw	r0, #17584	; 0x44b0
60309588:	e3460031 	movt	r0, #24625	; 0x6031
6030958c:	ebfffc9b 	bl	60308800 <__wrap_printf>
60309590:	e1a00004 	mov	r0, r4
60309594:	e28dd02c 	add	sp, sp, #44	; 0x2c
60309598:	e8bd8030 	pop	{r4, r5, pc}
6030959c:	e3040468 	movw	r0, #17512	; 0x4468
603095a0:	e3460031 	movt	r0, #24625	; 0x6031
603095a4:	ebfffc95 	bl	60308800 <__wrap_printf>
603095a8:	e3e00015 	mvn	r0, #21
603095ac:	eaffffe0 	b	60309534 <psci_init+0xdc>

603095b0 <rtk_core1_power_on>:
603095b0:	e92d4070 	push	{r4, r5, r6, lr}
603095b4:	e3a06c02 	mov	r6, #512	; 0x200
603095b8:	e3446100 	movt	r6, #16640	; 0x4100
603095bc:	e3a04441 	mov	r4, #1090519040	; 0x41000000
603095c0:	e3a00032 	mov	r0, #50	; 0x32
603095c4:	e5963004 	ldr	r3, [r6, #4]
603095c8:	e3095790 	movw	r5, #38800	; 0x9790
603095cc:	e3465030 	movt	r5, #24624	; 0x6030
603095d0:	e3c33022 	bic	r3, r3, #34	; 0x22
603095d4:	e5863004 	str	r3, [r6, #4]
603095d8:	e5943004 	ldr	r3, [r4, #4]
603095dc:	e3833020 	orr	r3, r3, #32
603095e0:	e5843004 	str	r3, [r4, #4]
603095e4:	e12fff35 	blx	r5
603095e8:	e5943000 	ldr	r3, [r4]
603095ec:	e3a00032 	mov	r0, #50	; 0x32
603095f0:	e3833030 	orr	r3, r3, #48	; 0x30
603095f4:	e5843000 	str	r3, [r4]
603095f8:	e12fff35 	blx	r5
603095fc:	e5943000 	ldr	r3, [r4]
60309600:	e3a00f7d 	mov	r0, #500	; 0x1f4
60309604:	e38330c0 	orr	r3, r3, #192	; 0xc0
60309608:	e5843000 	str	r3, [r4]
6030960c:	e12fff35 	blx	r5
60309610:	e5943004 	ldr	r3, [r4, #4]
60309614:	e3a00032 	mov	r0, #50	; 0x32
60309618:	e3c33030 	bic	r3, r3, #48	; 0x30
6030961c:	e5843004 	str	r3, [r4, #4]
60309620:	e12fff35 	blx	r5
60309624:	e5962004 	ldr	r2, [r6, #4]
60309628:	e3013122 	movw	r3, #4386	; 0x1122
6030962c:	e3403100 	movt	r3, #256	; 0x100
60309630:	e1823003 	orr	r3, r2, r3
60309634:	e5863004 	str	r3, [r6, #4]
60309638:	e8bd8070 	pop	{r4, r5, r6, pc}

6030963c <vPortSecondaryStart>:
6030963c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
60309640:	e24dd00c 	sub	sp, sp, #12
60309644:	eb0019dd 	bl	6030fdc0 <ulPortGetCoreId>
60309648:	eb00016f 	bl	60309c0c <pmu_get_secondary_cpu_state>
6030964c:	e3500000 	cmp	r0, #0
60309650:	0a000012 	beq	603096a0 <vPortSecondaryStart+0x64>
60309654:	eb0019d9 	bl	6030fdc0 <ulPortGetCoreId>
60309658:	e3a02049 	mov	r2, #73	; 0x49
6030965c:	e1a03000 	mov	r3, r0
60309660:	e30415a4 	movw	r1, #17828	; 0x45a4
60309664:	e3461031 	movt	r1, #24625	; 0x6031
60309668:	e3a00004 	mov	r0, #4
6030966c:	e58d3000 	str	r3, [sp]
60309670:	e30435cc 	movw	r3, #17868	; 0x45cc
60309674:	e3463031 	movt	r3, #24625	; 0x6031
60309678:	eb0006bd 	bl	6030b174 <rtk_log_write_nano>
6030967c:	ebfffd99 	bl	60308ce8 <prvSetupHardwareSecondary>
60309680:	ebfffda7 	bl	60308d24 <vConfigureIPIInterrupt>
60309684:	ebfffdd1 	bl	60308dd0 <vConfigureTickInterrupt>
60309688:	e3a01000 	mov	r1, #0
6030968c:	e3a00001 	mov	r0, #1
60309690:	eb000159 	bl	60309bfc <pmu_set_secondary_cpu_state>
60309694:	e28dd00c 	add	sp, sp, #12
60309698:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
6030969c:	eaffdbda 	b	6030060c <vPortRestoreTaskContext>
603096a0:	ebfffc16 	bl	60308700 <rtos_sched_get_state>
603096a4:	e3500001 	cmp	r0, #1
603096a8:	1affffe9 	bne	60309654 <vPortSecondaryStart+0x18>
603096ac:	ebfffc13 	bl	60308700 <rtos_sched_get_state>
603096b0:	e3500001 	cmp	r0, #1
603096b4:	0afffff9 	beq	603096a0 <vPortSecondaryStart+0x64>
603096b8:	eaffffe5 	b	60309654 <vPortSecondaryStart+0x18>

603096bc <smp_init>:
603096bc:	e92d40f0 	push	{r4, r5, r6, r7, lr}
603096c0:	e3a02049 	mov	r2, #73	; 0x49
603096c4:	e24dd00c 	sub	sp, sp, #12
603096c8:	e3a00004 	mov	r0, #4
603096cc:	e30435d8 	movw	r3, #17880	; 0x45d8
603096d0:	e3463031 	movt	r3, #24625	; 0x6031
603096d4:	e30415a4 	movw	r1, #17828	; 0x45a4
603096d8:	e3461031 	movt	r1, #24625	; 0x6031
603096dc:	eb0006a4 	bl	6030b174 <rtk_log_write_nano>
603096e0:	e30f3934 	movw	r3, #63796	; 0xf934
603096e4:	e3463030 	movt	r3, #24624	; 0x6030
603096e8:	e12fff33 	blx	r3
603096ec:	e3500003 	cmp	r0, #3
603096f0:	0a000004 	beq	60309708 <smp_init+0x4c>
603096f4:	ebffffad 	bl	603095b0 <rtk_core1_power_on>
603096f8:	e3093790 	movw	r3, #38800	; 0x9790
603096fc:	e3463030 	movt	r3, #24624	; 0x6030
60309700:	e3a00032 	mov	r0, #50	; 0x32
60309704:	e12fff33 	blx	r3
60309708:	e30050c8 	movw	r5, #200	; 0xc8
6030970c:	e3465030 	movt	r5, #24624	; 0x6030
60309710:	e3047600 	movw	r7, #17920	; 0x4600
60309714:	e3467031 	movt	r7, #24625	; 0x6031
60309718:	e30465a4 	movw	r6, #17828	; 0x45a4
6030971c:	e3466031 	movt	r6, #24625	; 0x6031
60309720:	e3a04000 	mov	r4, #0
60309724:	eb0019a5 	bl	6030fdc0 <ulPortGetCoreId>
60309728:	e1a01005 	mov	r1, r5
6030972c:	e1500004 	cmp	r0, r4
60309730:	0a000010 	beq	60309778 <smp_init+0xbc>
60309734:	e1a00004 	mov	r0, r4
60309738:	ebffff2f 	bl	603093fc <psci_cpu_on>
6030973c:	e3500000 	cmp	r0, #0
60309740:	ba000004 	blt	60309758 <smp_init+0x9c>
60309744:	e3540001 	cmp	r4, #1
60309748:	e3a04001 	mov	r4, #1
6030974c:	1afffff4 	bne	60309724 <smp_init+0x68>
60309750:	e28dd00c 	add	sp, sp, #12
60309754:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
60309758:	e58d0004 	str	r0, [sp, #4]
6030975c:	e1a03007 	mov	r3, r7
60309760:	e3a02045 	mov	r2, #69	; 0x45
60309764:	e1a01006 	mov	r1, r6
60309768:	e3a00002 	mov	r0, #2
6030976c:	e58d4000 	str	r4, [sp]
60309770:	eb00067f 	bl	6030b174 <rtk_log_write_nano>
60309774:	eafffff2 	b	60309744 <smp_init+0x88>
60309778:	e3a01000 	mov	r1, #0
6030977c:	eb00011e 	bl	60309bfc <pmu_set_secondary_cpu_state>
60309780:	eaffffef 	b	60309744 <smp_init+0x88>

60309784 <SOCPS_LPWAP_ipc_int>:
60309784:	e3a01001 	mov	r1, #1
60309788:	e1a00001 	mov	r0, r1
6030978c:	ea000221 	b	6030a018 <ipc_get_message>

60309790 <DelayUs>:
60309790:	e92d4370 	push	{r4, r5, r6, r8, r9, lr}
60309794:	e30f3934 	movw	r3, #63796	; 0xf934
60309798:	e3463030 	movt	r3, #24624	; 0x6030
6030979c:	e1a06000 	mov	r6, r0
603097a0:	e12fff33 	blx	r3
603097a4:	e3500003 	cmp	r0, #3
603097a8:	0a000017 	beq	6030980c <DelayUs+0x7c>
603097ac:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
603097b0:	e3130001 	tst	r3, #1
603097b4:	0a000014 	beq	6030980c <DelayUs+0x7c>
603097b8:	ec598f1e 	mrrc	15, 1, r8, r9, cr14
603097bc:	ebfffd25 	bl	60308c58 <vGetGenericTimerFreq>
603097c0:	e0830096 	umull	r0, r3, r6, r0
603097c4:	e3042240 	movw	r2, #16960	; 0x4240
603097c8:	e340200f 	movt	r2, #15
603097cc:	e1a04008 	mov	r4, r8
603097d0:	e0213196 	mla	r1, r6, r1, r3
603097d4:	e3a03000 	mov	r3, #0
603097d8:	ebffdc3d 	bl	603008d4 <__aeabi_uldivmod>
603097dc:	e0900008 	adds	r0, r0, r8
603097e0:	e0a11009 	adc	r1, r1, r9
603097e4:	ec532f1e 	mrrc	15, 1, r2, r3, cr14
603097e8:	e1520000 	cmp	r2, r0
603097ec:	e0d33001 	sbcs	r3, r3, r1
603097f0:	28bd8370 	popcs	{r4, r5, r6, r8, r9, pc}
603097f4:	e320f000 	nop	{0}
603097f8:	ec532f1e 	mrrc	15, 1, r2, r3, cr14
603097fc:	e1520000 	cmp	r2, r0
60309800:	e0d33001 	sbcs	r3, r3, r1
60309804:	3afffffa 	bcc	603097f4 <DelayUs+0x64>
60309808:	e8bd8370 	pop	{r4, r5, r6, r8, r9, pc}
6030980c:	e3a03001 	mov	r3, #1
60309810:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
60309814:	eaffffe7 	b	603097b8 <DelayUs+0x28>

60309818 <DelayMs>:
60309818:	e3a02ffa 	mov	r2, #1000	; 0x3e8
6030981c:	e3093790 	movw	r3, #38800	; 0x9790
60309820:	e3463030 	movt	r3, #24624	; 0x6030
60309824:	e0000092 	mul	r0, r2, r0
60309828:	e12fff13 	bx	r3

6030982c <SOCPS_SleepPG>:
6030982c:	e92d4010 	push	{r4, lr}
60309830:	eb000031 	bl	603098fc <pmu_exec_sleep_hook_funs>
60309834:	e3500007 	cmp	r0, #7
60309838:	0a000001 	beq	60309844 <SOCPS_SleepPG+0x18>
6030983c:	e8bd4010 	pop	{r4, lr}
60309840:	ea00003f 	b	60309944 <pmu_exec_wakeup_hook_funs>
60309844:	e1a04000 	mov	r4, r0
60309848:	e3a02049 	mov	r2, #73	; 0x49
6030984c:	e3a00004 	mov	r0, #4
60309850:	e304361c 	movw	r3, #17948	; 0x461c
60309854:	e3463031 	movt	r3, #24625	; 0x6031
60309858:	e30415a4 	movw	r1, #17828	; 0x45a4
6030985c:	e3461031 	movt	r1, #24625	; 0x6031
60309860:	eb000643 	bl	6030b174 <rtk_log_write_nano>
60309864:	eb00298a 	bl	60313e94 <SOCPS_SleepPG_LIB>
60309868:	e3a02049 	mov	r2, #73	; 0x49
6030986c:	e3a00004 	mov	r0, #4
60309870:	e3043624 	movw	r3, #17956	; 0x4624
60309874:	e3463031 	movt	r3, #24625	; 0x6031
60309878:	e30415a4 	movw	r1, #17828	; 0x45a4
6030987c:	e3461031 	movt	r1, #24625	; 0x6031
60309880:	eb00063b 	bl	6030b174 <rtk_log_write_nano>
60309884:	e1a00004 	mov	r0, r4
60309888:	eb00002d 	bl	60309944 <pmu_exec_wakeup_hook_funs>
6030988c:	ebffff8a 	bl	603096bc <smp_init>
60309890:	e8bd4010 	pop	{r4, lr}
60309894:	e3a01002 	mov	r1, #2
60309898:	e3a00001 	mov	r0, #1
6030989c:	ea0000d6 	b	60309bfc <pmu_set_secondary_cpu_state>

603098a0 <SOCPS_SleepCG>:
603098a0:	e92d4010 	push	{r4, lr}
603098a4:	eb000014 	bl	603098fc <pmu_exec_sleep_hook_funs>
603098a8:	e3500007 	cmp	r0, #7
603098ac:	1a000010 	bne	603098f4 <SOCPS_SleepCG+0x54>
603098b0:	e3a02049 	mov	r2, #73	; 0x49
603098b4:	e1a04000 	mov	r4, r0
603098b8:	e304362c 	movw	r3, #17964	; 0x462c
603098bc:	e3463031 	movt	r3, #24625	; 0x6031
603098c0:	e3a00004 	mov	r0, #4
603098c4:	e30415a4 	movw	r1, #17828	; 0x45a4
603098c8:	e3461031 	movt	r1, #24625	; 0x6031
603098cc:	eb000628 	bl	6030b174 <rtk_log_write_nano>
603098d0:	eb002977 	bl	60313eb4 <SOCPS_SleepCG_LIB>
603098d4:	e3a00004 	mov	r0, #4
603098d8:	e3a02049 	mov	r2, #73	; 0x49
603098dc:	e3043634 	movw	r3, #17972	; 0x4634
603098e0:	e3463031 	movt	r3, #24625	; 0x6031
603098e4:	e30415a4 	movw	r1, #17828	; 0x45a4
603098e8:	e3461031 	movt	r1, #24625	; 0x6031
603098ec:	eb000620 	bl	6030b174 <rtk_log_write_nano>
603098f0:	e1a00004 	mov	r0, r4
603098f4:	e8bd4010 	pop	{r4, lr}
603098f8:	ea000011 	b	60309944 <pmu_exec_wakeup_hook_funs>

603098fc <pmu_exec_sleep_hook_funs>:
603098fc:	e92d4070 	push	{r4, r5, r6, lr}
60309900:	e3034620 	movw	r4, #13856	; 0x3620
60309904:	e3464032 	movt	r4, #24626	; 0x6032
60309908:	e3a05000 	mov	r5, #0
6030990c:	e5943004 	ldr	r3, [r4, #4]
60309910:	e3a00000 	mov	r0, #0
60309914:	e1530000 	cmp	r3, r0
60309918:	0a000003 	beq	6030992c <pmu_exec_sleep_hook_funs+0x30>
6030991c:	e5941008 	ldr	r1, [r4, #8]
60309920:	e12fff33 	blx	r3
60309924:	e3500000 	cmp	r0, #0
60309928:	0a000003 	beq	6030993c <pmu_exec_sleep_hook_funs+0x40>
6030992c:	e2855001 	add	r5, r5, #1
60309930:	e2844014 	add	r4, r4, #20
60309934:	e3550007 	cmp	r5, #7
60309938:	1afffff3 	bne	6030990c <pmu_exec_sleep_hook_funs+0x10>
6030993c:	e1a00005 	mov	r0, r5
60309940:	e8bd8070 	pop	{r4, r5, r6, pc}

60309944 <pmu_exec_wakeup_hook_funs>:
60309944:	e92d4070 	push	{r4, r5, r6, lr}
60309948:	e2506000 	subs	r6, r0, #0
6030994c:	08bd8070 	popeq	{r4, r5, r6, pc}
60309950:	e3034620 	movw	r4, #13856	; 0x3620
60309954:	e3464032 	movt	r4, #24626	; 0x6032
60309958:	e3a05000 	mov	r5, #0
6030995c:	e594300c 	ldr	r3, [r4, #12]
60309960:	e3a00000 	mov	r0, #0
60309964:	e2855001 	add	r5, r5, #1
60309968:	e1530000 	cmp	r3, r0
6030996c:	0a000001 	beq	60309978 <pmu_exec_wakeup_hook_funs+0x34>
60309970:	e5941010 	ldr	r1, [r4, #16]
60309974:	e12fff33 	blx	r3
60309978:	e2844014 	add	r4, r4, #20
6030997c:	e1560005 	cmp	r6, r5
60309980:	1afffff5 	bne	6030995c <pmu_exec_wakeup_hook_funs+0x18>
60309984:	e8bd8070 	pop	{r4, r5, r6, pc}

60309988 <pmu_set_sysactive_time>:
60309988:	e30326e8 	movw	r2, #14056	; 0x36e8
6030998c:	e3462032 	movt	r2, #24626	; 0x6032
60309990:	e92d4070 	push	{r4, r5, r6, lr}
60309994:	e30336ec 	movw	r3, #14060	; 0x36ec
60309998:	e3463032 	movt	r3, #24626	; 0x6032
6030999c:	e5925000 	ldr	r5, [r2]
603099a0:	e5934000 	ldr	r4, [r3]
603099a4:	e3550000 	cmp	r5, #0
603099a8:	0a000005 	beq	603099c4 <pmu_set_sysactive_time+0x3c>
603099ac:	e3a05001 	mov	r5, #1
603099b0:	e1500004 	cmp	r0, r4
603099b4:	9a000000 	bls	603099bc <pmu_set_sysactive_time+0x34>
603099b8:	e5830000 	str	r0, [r3]
603099bc:	e1a00005 	mov	r0, r5
603099c0:	e8bd8070 	pop	{r4, r5, r6, pc}
603099c4:	e1500004 	cmp	r0, r4
603099c8:	21a04000 	movcs	r4, r0
603099cc:	e5835000 	str	r5, [r3]
603099d0:	ebfffb77 	bl	603087b4 <rtos_time_get_current_system_time_ms>
603099d4:	e30336e4 	movw	r3, #14052	; 0x36e4
603099d8:	e3463032 	movt	r3, #24626	; 0x6032
603099dc:	e0800004 	add	r0, r0, r4
603099e0:	e5932000 	ldr	r2, [r3]
603099e4:	e1520000 	cmp	r2, r0
603099e8:	2a000003 	bcs	603099fc <pmu_set_sysactive_time+0x74>
603099ec:	e0402002 	sub	r2, r0, r2
603099f0:	e372010a 	cmn	r2, #-2147483646	; 0x80000002
603099f4:	95830000 	strls	r0, [r3]
603099f8:	eaffffef 	b	603099bc <pmu_set_sysactive_time+0x34>
603099fc:	e0421000 	sub	r1, r2, r0
60309a00:	e371010a 	cmn	r1, #-2147483646	; 0x80000002
60309a04:	8affffeb 	bhi	603099b8 <pmu_set_sysactive_time+0x30>
60309a08:	e1520000 	cmp	r2, r0
60309a0c:	0affffe9 	beq	603099b8 <pmu_set_sysactive_time+0x30>
60309a10:	e1a00005 	mov	r0, r5
60309a14:	e8bd8070 	pop	{r4, r5, r6, pc}

60309a18 <pmu_yield_os_check>:
60309a18:	e3063264 	movw	r3, #25188	; 0x6264
60309a1c:	e3463031 	movt	r3, #24625	; 0x6031
60309a20:	e5930000 	ldr	r0, [r3]
60309a24:	e12fff1e 	bx	lr

60309a28 <pmu_ready_to_sleep>:
60309a28:	e92d4010 	push	{r4, lr}
60309a2c:	ebfffb60 	bl	603087b4 <rtos_time_get_current_system_time_ms>
60309a30:	e30336e4 	movw	r3, #14052	; 0x36e4
60309a34:	e3463032 	movt	r3, #24626	; 0x6032
60309a38:	e5933000 	ldr	r3, [r3]
60309a3c:	e1530000 	cmp	r3, r0
60309a40:	2a000008 	bcs	60309a68 <pmu_ready_to_sleep+0x40>
60309a44:	e0400003 	sub	r0, r0, r3
60309a48:	e370010a 	cmn	r0, #-2147483646	; 0x80000002
60309a4c:	8a00000a 	bhi	60309a7c <pmu_ready_to_sleep+0x54>
60309a50:	e3063268 	movw	r3, #25192	; 0x6268
60309a54:	e3463031 	movt	r3, #24625	; 0x6031
60309a58:	e5930000 	ldr	r0, [r3]
60309a5c:	e16f0f10 	clz	r0, r0
60309a60:	e1a002a0 	lsr	r0, r0, #5
60309a64:	e8bd8010 	pop	{r4, pc}
60309a68:	e0432000 	sub	r2, r3, r0
60309a6c:	e372010a 	cmn	r2, #-2147483646	; 0x80000002
60309a70:	8afffff6 	bhi	60309a50 <pmu_ready_to_sleep+0x28>
60309a74:	e1530000 	cmp	r3, r0
60309a78:	9afffff4 	bls	60309a50 <pmu_ready_to_sleep+0x28>
60309a7c:	e3a00000 	mov	r0, #0
60309a80:	e8bd8010 	pop	{r4, pc}

60309a84 <pmu_pre_sleep_processing>:
60309a84:	e92d4070 	push	{r4, r5, r6, lr}
60309a88:	e1a05000 	mov	r5, r0
60309a8c:	eb001aac 	bl	60310544 <xTaskGetTickCount>
60309a90:	e303361c 	movw	r3, #13852	; 0x361c
60309a94:	e3463032 	movt	r3, #24626	; 0x6032
60309a98:	e5933000 	ldr	r3, [r3]
60309a9c:	e1500003 	cmp	r0, r3
60309aa0:	3a000004 	bcc	60309ab8 <pmu_pre_sleep_processing+0x34>
60309aa4:	e3063260 	movw	r3, #25184	; 0x6260
60309aa8:	e3463031 	movt	r3, #24625	; 0x6031
60309aac:	e5932000 	ldr	r2, [r3]
60309ab0:	e3520000 	cmp	r2, #0
60309ab4:	0a000019 	beq	60309b20 <pmu_pre_sleep_processing+0x9c>
60309ab8:	e30326ac 	movw	r2, #13996	; 0x36ac
60309abc:	e3462032 	movt	r2, #24626	; 0x6032
60309ac0:	e30336c0 	movw	r3, #14016	; 0x36c0
60309ac4:	e3463032 	movt	r3, #24626	; 0x6032
60309ac8:	e5920000 	ldr	r0, [r2]
60309acc:	e3a01000 	mov	r1, #0
60309ad0:	e5830004 	str	r0, [r3, #4]
60309ad4:	e5821000 	str	r1, [r2]
60309ad8:	e5831008 	str	r1, [r3, #8]
60309adc:	e30346e0 	movw	r4, #14048	; 0x36e0
60309ae0:	e3464032 	movt	r4, #24626	; 0x6032
60309ae4:	e30f28f0 	movw	r2, #63728	; 0xf8f0
60309ae8:	e3462030 	movt	r2, #24624	; 0x6030
60309aec:	e5941000 	ldr	r1, [r4]
60309af0:	e5831000 	str	r1, [r3]
60309af4:	e12fff32 	blx	r2
60309af8:	e30336e8 	movw	r3, #14056	; 0x36e8
60309afc:	e3463032 	movt	r3, #24626	; 0x6032
60309b00:	e5941000 	ldr	r1, [r4]
60309b04:	e3a02001 	mov	r2, #1
60309b08:	e5850000 	str	r0, [r5]
60309b0c:	e1510002 	cmp	r1, r2
60309b10:	e5832000 	str	r2, [r3]
60309b14:	0a000007 	beq	60309b38 <pmu_pre_sleep_processing+0xb4>
60309b18:	e8bd4070 	pop	{r4, r5, r6, lr}
60309b1c:	eaffff42 	b	6030982c <SOCPS_SleepPG>
60309b20:	e30336c0 	movw	r3, #14016	; 0x36c0
60309b24:	e3463032 	movt	r3, #24626	; 0x6032
60309b28:	e3a01001 	mov	r1, #1
60309b2c:	e5832004 	str	r2, [r3, #4]
60309b30:	e5831008 	str	r1, [r3, #8]
60309b34:	eaffffe8 	b	60309adc <pmu_pre_sleep_processing+0x58>
60309b38:	e8bd4070 	pop	{r4, r5, r6, lr}
60309b3c:	eaffff57 	b	603098a0 <SOCPS_SleepCG>

60309b40 <pmu_acquire_wakelock>:
60309b40:	e92d4010 	push	{r4, lr}
60309b44:	e1a04000 	mov	r4, r0
60309b48:	eb001881 	bl	6030fd54 <ulPortInterruptLock>
60309b4c:	e3063268 	movw	r3, #25192	; 0x6268
60309b50:	e3463031 	movt	r3, #24625	; 0x6031
60309b54:	e3a01001 	mov	r1, #1
60309b58:	e5932000 	ldr	r2, [r3]
60309b5c:	e1822411 	orr	r2, r2, r1, lsl r4
60309b60:	e5832000 	str	r2, [r3]
60309b64:	e8bd4010 	pop	{r4, lr}
60309b68:	ea00187e 	b	6030fd68 <ulPortInterruptUnLock>

60309b6c <pmu_release_wakelock>:
60309b6c:	e92d4010 	push	{r4, lr}
60309b70:	e1a04000 	mov	r4, r0
60309b74:	eb001876 	bl	6030fd54 <ulPortInterruptLock>
60309b78:	e3063268 	movw	r3, #25192	; 0x6268
60309b7c:	e3463031 	movt	r3, #24625	; 0x6031
60309b80:	e3a01001 	mov	r1, #1
60309b84:	e5932000 	ldr	r2, [r3]
60309b88:	e1c22411 	bic	r2, r2, r1, lsl r4
60309b8c:	e5832000 	str	r2, [r3]
60309b90:	e8bd4010 	pop	{r4, lr}
60309b94:	ea001873 	b	6030fd68 <ulPortInterruptUnLock>

60309b98 <pmu_get_wakelock_status>:
60309b98:	e3063268 	movw	r3, #25192	; 0x6268
60309b9c:	e3463031 	movt	r3, #24625	; 0x6031
60309ba0:	e5930000 	ldr	r0, [r3]
60309ba4:	e12fff1e 	bx	lr

60309ba8 <pmu_set_sleep_type>:
60309ba8:	e30336e0 	movw	r3, #14048	; 0x36e0
60309bac:	e3463032 	movt	r3, #24626	; 0x6032
60309bb0:	e1a02000 	mov	r2, r0
60309bb4:	e3a00000 	mov	r0, #0
60309bb8:	e5832000 	str	r2, [r3]
60309bbc:	e12fff1e 	bx	lr

60309bc0 <pmu_get_sleep_type>:
60309bc0:	e30336e0 	movw	r3, #14048	; 0x36e0
60309bc4:	e3463032 	movt	r3, #24626	; 0x6032
60309bc8:	e5930000 	ldr	r0, [r3]
60309bcc:	e12fff1e 	bx	lr

60309bd0 <pmu_acquire_deepwakelock>:
60309bd0:	e3063260 	movw	r3, #25184	; 0x6260
60309bd4:	e3463031 	movt	r3, #24625	; 0x6031
60309bd8:	e3a01001 	mov	r1, #1
60309bdc:	e5932000 	ldr	r2, [r3]
60309be0:	e1822011 	orr	r2, r2, r1, lsl r0
60309be4:	e5832000 	str	r2, [r3]
60309be8:	e12fff1e 	bx	lr

60309bec <pmu_get_deepwakelock_status>:
60309bec:	e3063260 	movw	r3, #25184	; 0x6260
60309bf0:	e3463031 	movt	r3, #24625	; 0x6031
60309bf4:	e5930000 	ldr	r0, [r3]
60309bf8:	e12fff1e 	bx	lr

60309bfc <pmu_set_secondary_cpu_state>:
60309bfc:	e3033614 	movw	r3, #13844	; 0x3614
60309c00:	e3463032 	movt	r3, #24626	; 0x6032
60309c04:	e7831100 	str	r1, [r3, r0, lsl #2]
60309c08:	e12fff1e 	bx	lr

60309c0c <pmu_get_secondary_cpu_state>:
60309c0c:	e3033614 	movw	r3, #13844	; 0x3614
60309c10:	e3463032 	movt	r3, #24626	; 0x6032
60309c14:	e7930100 	ldr	r0, [r3, r0, lsl #2]
60309c18:	e12fff1e 	bx	lr

60309c1c <pmu_secondary_cpu_state_is_running>:
60309c1c:	e3033614 	movw	r3, #13844	; 0x3614
60309c20:	e3463032 	movt	r3, #24626	; 0x6032
60309c24:	e7930100 	ldr	r0, [r3, r0, lsl #2]
60309c28:	e16f0f10 	clz	r0, r0
60309c2c:	e1a002a0 	lsr	r0, r0, #5
60309c30:	e12fff1e 	bx	lr

60309c34 <pmu_secondary_cpu_state_is_hotplug>:
60309c34:	e3033614 	movw	r3, #13844	; 0x3614
60309c38:	e3463032 	movt	r3, #24626	; 0x6032
60309c3c:	e7930100 	ldr	r0, [r3, r0, lsl #2]
60309c40:	e2400001 	sub	r0, r0, #1
60309c44:	e16f0f10 	clz	r0, r0
60309c48:	e1a002a0 	lsr	r0, r0, #5
60309c4c:	e12fff1e 	bx	lr

60309c50 <ipc_table_init>:
60309c50:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
60309c54:	e3053b7c 	movw	r3, #23420	; 0x5b7c
60309c58:	e3463031 	movt	r3, #24625	; 0x6031
60309c5c:	e3054b28 	movw	r4, #23336	; 0x5b28
60309c60:	e3464031 	movt	r4, #24625	; 0x6031
60309c64:	e0433004 	sub	r3, r3, r4
60309c68:	e3042925 	movw	r2, #18725	; 0x4925
60309c6c:	e3422492 	movt	r2, #9362	; 0x2492
60309c70:	e1a07123 	lsr	r7, r3, #2
60309c74:	e24dd00c 	sub	sp, sp, #12
60309c78:	e353001b 	cmp	r3, #27
60309c7c:	e0872792 	umull	r2, r7, r2, r7
60309c80:	9a00003b 	bls	60309d74 <ipc_table_init+0x124>
60309c84:	e3a0ac86 	mov	sl, #34304	; 0x8600
60309c88:	e344a200 	movt	sl, #16896	; 0x4200
60309c8c:	e304963c 	movw	r9, #17980	; 0x463c
60309c90:	e3469031 	movt	r9, #24625	; 0x6031
60309c94:	e3048664 	movw	r8, #18020	; 0x4664
60309c98:	e3468031 	movt	r8, #24625	; 0x6031
60309c9c:	e1a06000 	mov	r6, r0
60309ca0:	e3a05000 	mov	r5, #0
60309ca4:	ea000014 	b	60309cfc <ipc_table_init+0xac>
60309ca8:	e3a01c05 	mov	r1, #1280	; 0x500
60309cac:	e3441100 	movt	r1, #16640	; 0x4100
60309cb0:	e1560001 	cmp	r6, r1
60309cb4:	0a00001c 	beq	60309d2c <ipc_table_init+0xdc>
60309cb8:	e3520000 	cmp	r2, #0
60309cbc:	13530020 	cmpne	r3, #32
60309cc0:	1a000000 	bne	60309cc8 <ipc_table_init+0x78>
60309cc4:	e28bb008 	add	fp, fp, #8
60309cc8:	e1a00006 	mov	r0, r6
60309ccc:	eb000153 	bl	6030a220 <IPC_IERGet>
60309cd0:	e3a03001 	mov	r3, #1
60309cd4:	e0103b13 	ands	r3, r0, r3, lsl fp
60309cd8:	1a00002d 	bne	60309d94 <ipc_table_init+0x144>
60309cdc:	e1c420dc 	ldrd	r2, [r4, #12]
60309ce0:	e6ef107b 	uxtb	r1, fp
60309ce4:	e1a00006 	mov	r0, r6
60309ce8:	eb000168 	bl	6030a290 <IPC_INTUserHandler>
60309cec:	e2855001 	add	r5, r5, #1
60309cf0:	e284401c 	add	r4, r4, #28
60309cf4:	e1570005 	cmp	r7, r5
60309cf8:	9a00001d 	bls	60309d74 <ipc_table_init+0x124>
60309cfc:	e5943014 	ldr	r3, [r4, #20]
60309d00:	e594b018 	ldr	fp, [r4, #24]
60309d04:	e3c32010 	bic	r2, r3, #16
60309d08:	e3530021 	cmp	r3, #33	; 0x21
60309d0c:	13530000 	cmpne	r3, #0
60309d10:	0affffe4 	beq	60309ca8 <ipc_table_init+0x58>
60309d14:	e3520001 	cmp	r2, #1
60309d18:	1a000017 	bne	60309d7c <ipc_table_init+0x12c>
60309d1c:	e3a02d16 	mov	r2, #1408	; 0x580
60309d20:	e3442100 	movt	r2, #16640	; 0x4100
60309d24:	e1560002 	cmp	r6, r2
60309d28:	1affffe6 	bne	60309cc8 <ipc_table_init+0x78>
60309d2c:	e3530010 	cmp	r3, #16
60309d30:	13530001 	cmpne	r3, #1
60309d34:	93a03018 	movls	r3, #24
60309d38:	83a03010 	movhi	r3, #16
60309d3c:	e1a00006 	mov	r0, r6
60309d40:	e08bb003 	add	fp, fp, r3
60309d44:	eb000135 	bl	6030a220 <IPC_IERGet>
60309d48:	e3a03001 	mov	r3, #1
60309d4c:	e0103b13 	ands	r3, r0, r3, lsl fp
60309d50:	1a00000f 	bne	60309d94 <ipc_table_init+0x144>
60309d54:	e1c420d4 	ldrd	r2, [r4, #4]
60309d58:	e6ef107b 	uxtb	r1, fp
60309d5c:	e1a00006 	mov	r0, r6
60309d60:	e2855001 	add	r5, r5, #1
60309d64:	eb000149 	bl	6030a290 <IPC_INTUserHandler>
60309d68:	e284401c 	add	r4, r4, #28
60309d6c:	e1570005 	cmp	r7, r5
60309d70:	8affffe1 	bhi	60309cfc <ipc_table_init+0xac>
60309d74:	e28dd00c 	add	sp, sp, #12
60309d78:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
60309d7c:	e2432010 	sub	r2, r3, #16
60309d80:	e3d22010 	bics	r2, r2, #16
60309d84:	1affffd8 	bne	60309cec <ipc_table_init+0x9c>
60309d88:	e156000a 	cmp	r6, sl
60309d8c:	1affffcc 	bne	60309cc4 <ipc_table_init+0x74>
60309d90:	eaffffe5 	b	60309d2c <ipc_table_init+0xdc>
60309d94:	e1a03009 	mov	r3, r9
60309d98:	e3a02045 	mov	r2, #69	; 0x45
60309d9c:	e1a01008 	mov	r1, r8
60309da0:	e3a00002 	mov	r0, #2
60309da4:	e58db000 	str	fp, [sp]
60309da8:	eb0004bd 	bl	6030b0a4 <rtk_log_write>
60309dac:	eaffffce 	b	60309cec <ipc_table_init+0x9c>

60309db0 <IPC_TXHandler>:
60309db0:	e3a03902 	mov	r3, #32768	; 0x8000
60309db4:	e3443200 	movt	r3, #16896	; 0x4200
60309db8:	e92d4010 	push	{r4, lr}
60309dbc:	e1a04002 	mov	r4, r2
60309dc0:	e593027c 	ldr	r0, [r3, #636]	; 0x27c
60309dc4:	e7e10350 	ubfx	r0, r0, #6, #2
60309dc8:	eb00013e 	bl	6030a2c8 <IPC_GetDevById>
60309dcc:	e3a02000 	mov	r2, #0
60309dd0:	e6ef1074 	uxtb	r1, r4
60309dd4:	eb000109 	bl	6030a200 <IPC_INTConfig>
60309dd8:	e30336f0 	movw	r3, #14064	; 0x36f0
60309ddc:	e3463032 	movt	r3, #24626	; 0x6032
60309de0:	e7930104 	ldr	r0, [r3, r4, lsl #2]
60309de4:	e3500000 	cmp	r0, #0
60309de8:	08bd8010 	popeq	{r4, pc}
60309dec:	e8bd4010 	pop	{r4, lr}
60309df0:	eafffa19 	b	6030865c <rtos_sema_give>

60309df4 <IPC_wait_idle>:
60309df4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60309df8:	e1a04000 	mov	r4, r0
60309dfc:	e1a05001 	mov	r5, r1
60309e00:	eb000474 	bl	6030afd8 <CPU_InInterrupt>
60309e04:	e3500000 	cmp	r0, #0
60309e08:	1a000015 	bne	60309e64 <IPC_wait_idle+0x70>
60309e0c:	e30337b4 	movw	r3, #14260	; 0x37b4
60309e10:	e3463032 	movt	r3, #24626	; 0x6032
60309e14:	e7933105 	ldr	r3, [r3, r5, lsl #2]
60309e18:	e3530000 	cmp	r3, #0
60309e1c:	0a000010 	beq	60309e64 <IPC_wait_idle+0x70>
60309e20:	e30366f0 	movw	r6, #14064	; 0x36f0
60309e24:	e3466032 	movt	r6, #24626	; 0x6032
60309e28:	e7963105 	ldr	r3, [r6, r5, lsl #2]
60309e2c:	e3530000 	cmp	r3, #0
60309e30:	0a000020 	beq	60309eb8 <IPC_wait_idle+0xc4>
60309e34:	e6ef7075 	uxtb	r7, r5
60309e38:	e3a02001 	mov	r2, #1
60309e3c:	e1a01007 	mov	r1, r7
60309e40:	e1a00004 	mov	r0, r4
60309e44:	eb0000ed 	bl	6030a200 <IPC_INTConfig>
60309e48:	e7960105 	ldr	r0, [r6, r5, lsl #2]
60309e4c:	e3e01000 	mvn	r1, #0
60309e50:	ebfff9db 	bl	603085c4 <rtos_sema_take>
60309e54:	e3500000 	cmp	r0, #0
60309e58:	1a000019 	bne	60309ec4 <IPC_wait_idle+0xd0>
60309e5c:	e3a00000 	mov	r0, #0
60309e60:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60309e64:	e3a02001 	mov	r2, #1
60309e68:	e3093680 	movw	r3, #38528	; 0x9680
60309e6c:	e3403098 	movt	r3, #152	; 0x98
60309e70:	e1a01512 	lsl	r1, r2, r5
60309e74:	ea000001 	b	60309e80 <IPC_wait_idle+0x8c>
60309e78:	e2533001 	subs	r3, r3, #1
60309e7c:	0a000004 	beq	60309e94 <IPC_wait_idle+0xa0>
60309e80:	e5942000 	ldr	r2, [r4]
60309e84:	e1120001 	tst	r2, r1
60309e88:	1afffffa 	bne	60309e78 <IPC_wait_idle+0x84>
60309e8c:	e3a00000 	mov	r0, #0
60309e90:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60309e94:	e3a02045 	mov	r2, #69	; 0x45
60309e98:	e3a00002 	mov	r0, #2
60309e9c:	e3043668 	movw	r3, #18024	; 0x4668
60309ea0:	e3463031 	movt	r3, #24625	; 0x6031
60309ea4:	e3041664 	movw	r1, #18020	; 0x4664
60309ea8:	e3461031 	movt	r1, #24625	; 0x6031
60309eac:	eb0004b0 	bl	6030b174 <rtk_log_write_nano>
60309eb0:	e3a00002 	mov	r0, #2
60309eb4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60309eb8:	e0860105 	add	r0, r6, r5, lsl #2
60309ebc:	ebfff9b2 	bl	6030858c <rtos_sema_create_binary>
60309ec0:	eaffffdb 	b	60309e34 <IPC_wait_idle+0x40>
60309ec4:	e3a02045 	mov	r2, #69	; 0x45
60309ec8:	e3a00002 	mov	r0, #2
60309ecc:	e3043680 	movw	r3, #18048	; 0x4680
60309ed0:	e3463031 	movt	r3, #24625	; 0x6031
60309ed4:	e3041664 	movw	r1, #18020	; 0x4664
60309ed8:	e3461031 	movt	r1, #24625	; 0x6031
60309edc:	eb0004a4 	bl	6030b174 <rtk_log_write_nano>
60309ee0:	e1a00004 	mov	r0, r4
60309ee4:	e3a02000 	mov	r2, #0
60309ee8:	e1a01007 	mov	r1, r7
60309eec:	eb0000c3 	bl	6030a200 <IPC_INTConfig>
60309ef0:	e3a00003 	mov	r0, #3
60309ef4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

60309ef8 <ipc_send_message>:
60309ef8:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
60309efc:	e3d03011 	bics	r3, r0, #17
60309f00:	e1a05000 	mov	r5, r0
60309f04:	e1a04001 	mov	r4, r1
60309f08:	e1a08002 	mov	r8, r2
60309f0c:	0a000002 	beq	60309f1c <ipc_send_message+0x24>
60309f10:	e2403020 	sub	r3, r0, #32
60309f14:	e3530001 	cmp	r3, #1
60309f18:	8a00003a 	bhi	6030a008 <ipc_send_message+0x110>
60309f1c:	e3540007 	cmp	r4, #7
60309f20:	8a000034 	bhi	60309ff8 <ipc_send_message+0x100>
60309f24:	e3550021 	cmp	r5, #33	; 0x21
60309f28:	83a06000 	movhi	r6, #0
60309f2c:	9304372c 	movwls	r3, #18220	; 0x472c
60309f30:	93042708 	movwls	r2, #18184	; 0x4708
60309f34:	93463031 	movtls	r3, #24625	; 0x6031
60309f38:	93462031 	movtls	r2, #24625	; 0x6031
60309f3c:	81a01004 	movhi	r1, r4
60309f40:	97936105 	ldrls	r6, [r3, r5, lsl #2]
60309f44:	97d21005 	ldrbls	r1, [r2, r5]
60309f48:	e3a09001 	mov	r9, #1
60309f4c:	90811004 	addls	r1, r1, r4
60309f50:	e5963000 	ldr	r3, [r6]
60309f54:	e1a07119 	lsl	r7, r9, r1
60309f58:	e1130007 	tst	r3, r7
60309f5c:	1a00001f 	bne	60309fe0 <ipc_send_message+0xe8>
60309f60:	e3580000 	cmp	r8, #0
60309f64:	0a00001a 	beq	60309fd4 <ipc_send_message+0xdc>
60309f68:	e7e30255 	ubfx	r0, r5, #4, #4
60309f6c:	e205500f 	and	r5, r5, #15
60309f70:	e0855080 	add	r5, r5, r0, lsl #1
60309f74:	e30f0d00 	movw	r0, #64768	; 0xfd00
60309f78:	e3420301 	movt	r0, #8961	; 0x2301
60309f7c:	e0844185 	add	r4, r4, r5, lsl #3
60309f80:	e1a01008 	mov	r1, r8
60309f84:	e0804204 	add	r4, r0, r4, lsl #4
60309f88:	e3a02010 	mov	r2, #16
60309f8c:	e1a00004 	mov	r0, r4
60309f90:	e30b36e0 	movw	r3, #46816	; 0xb6e0
60309f94:	e3463030 	movt	r3, #24624	; 0x6030
60309f98:	e12fff33 	blx	r3
60309f9c:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
60309fa0:	e3130004 	tst	r3, #4
60309fa4:	0a00000a 	beq	60309fd4 <ipc_send_message+0xdc>
60309fa8:	e284300f 	add	r3, r4, #15
60309fac:	e3c3303f 	bic	r3, r3, #63	; 0x3f
60309fb0:	e3c4003f 	bic	r0, r4, #63	; 0x3f
60309fb4:	e2833040 	add	r3, r3, #64	; 0x40
60309fb8:	e1500003 	cmp	r0, r3
60309fbc:	2a000003 	bcs	60309fd0 <ipc_send_message+0xd8>
60309fc0:	ee070f3a 	mcr	15, 0, r0, cr7, cr10, {1}
60309fc4:	e2800040 	add	r0, r0, #64	; 0x40
60309fc8:	e1530000 	cmp	r3, r0
60309fcc:	8afffffb 	bhi	60309fc0 <ipc_send_message+0xc8>
60309fd0:	f57ff05f 	dmb	sy
60309fd4:	e3a00000 	mov	r0, #0
60309fd8:	e5867000 	str	r7, [r6]
60309fdc:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
60309fe0:	e1a00006 	mov	r0, r6
60309fe4:	ebffff82 	bl	60309df4 <IPC_wait_idle>
60309fe8:	e3500000 	cmp	r0, #0
60309fec:	0affffdb 	beq	60309f60 <ipc_send_message+0x68>
60309ff0:	e1a00009 	mov	r0, r9
60309ff4:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
60309ff8:	e30406a0 	movw	r0, #18080	; 0x46a0
60309ffc:	e3460031 	movt	r0, #24625	; 0x6031
6030a000:	e3a010b3 	mov	r1, #179	; 0xb3
6030a004:	eb00162b 	bl	6030f8b8 <io_assert_failed>
6030a008:	e30406a0 	movw	r0, #18080	; 0x46a0
6030a00c:	e3460031 	movt	r0, #24625	; 0x6031
6030a010:	e3a010b2 	mov	r1, #178	; 0xb2
6030a014:	eb001627 	bl	6030f8b8 <io_assert_failed>

6030a018 <ipc_get_message>:
6030a018:	e200300f 	and	r3, r0, #15
6030a01c:	e7e30250 	ubfx	r0, r0, #4, #4
6030a020:	e0833080 	add	r3, r3, r0, lsl #1
6030a024:	e30f0d00 	movw	r0, #64768	; 0xfd00
6030a028:	e3420301 	movt	r0, #8961	; 0x2301
6030a02c:	e0811183 	add	r1, r1, r3, lsl #3
6030a030:	e0800201 	add	r0, r0, r1, lsl #4
6030a034:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
6030a038:	e3130004 	tst	r3, #4
6030a03c:	012fff1e 	bxeq	lr
6030a040:	e280200f 	add	r2, r0, #15
6030a044:	e3c2203f 	bic	r2, r2, #63	; 0x3f
6030a048:	e3c0303f 	bic	r3, r0, #63	; 0x3f
6030a04c:	e2822040 	add	r2, r2, #64	; 0x40
6030a050:	e1530002 	cmp	r3, r2
6030a054:	2a000003 	bcs	6030a068 <ipc_get_message+0x50>
6030a058:	ee073f36 	mcr	15, 0, r3, cr7, cr6, {1}
6030a05c:	e2833040 	add	r3, r3, #64	; 0x40
6030a060:	e1520003 	cmp	r2, r3
6030a064:	8afffffb 	bhi	6030a058 <ipc_get_message+0x40>
6030a068:	f57ff05f 	dmb	sy
6030a06c:	e12fff1e 	bx	lr

6030a070 <IPC_SEMTake>:
6030a070:	e350000f 	cmp	r0, #15
6030a074:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
6030a078:	8a00003b 	bhi	6030a16c <IPC_SEMTake+0xfc>
6030a07c:	e30e37b0 	movw	r3, #59312	; 0xe7b0
6030a080:	e3463030 	movt	r3, #24624	; 0x6030
6030a084:	e1a08000 	mov	r8, r0
6030a088:	e1a04001 	mov	r4, r1
6030a08c:	e12fff33 	blx	r3
6030a090:	e3500002 	cmp	r0, #2
6030a094:	9a000019 	bls	6030a100 <IPC_SEMTake+0x90>
6030a098:	e30250f0 	movw	r5, #8432	; 0x20f0
6030a09c:	e3415080 	movt	r5, #4224	; 0x1080
6030a0a0:	e0885005 	add	r5, r8, r5
6030a0a4:	e1a05105 	lsl	r5, r5, #2
6030a0a8:	e5953000 	ldr	r3, [r5]
6030a0ac:	e3530000 	cmp	r3, #0
6030a0b0:	0a00002b 	beq	6030a164 <IPC_SEMTake+0xf4>
6030a0b4:	e3540000 	cmp	r4, #0
6030a0b8:	0a00000e 	beq	6030a0f8 <IPC_SEMTake+0x88>
6030a0bc:	e3036730 	movw	r6, #14128	; 0x3730
6030a0c0:	e3466032 	movt	r6, #24626	; 0x6032
6030a0c4:	ea000002 	b	6030a0d4 <IPC_SEMTake+0x64>
6030a0c8:	e5953000 	ldr	r3, [r5]
6030a0cc:	e3530000 	cmp	r3, #0
6030a0d0:	0a000023 	beq	6030a164 <IPC_SEMTake+0xf4>
6030a0d4:	e5963000 	ldr	r3, [r6]
6030a0d8:	e3530000 	cmp	r3, #0
6030a0dc:	0a000001 	beq	6030a0e8 <IPC_SEMTake+0x78>
6030a0e0:	e3a00001 	mov	r0, #1
6030a0e4:	e12fff33 	blx	r3
6030a0e8:	e3740001 	cmn	r4, #1
6030a0ec:	0afffff5 	beq	6030a0c8 <IPC_SEMTake+0x58>
6030a0f0:	e2544001 	subs	r4, r4, #1
6030a0f4:	1afffff3 	bne	6030a0c8 <IPC_SEMTake+0x58>
6030a0f8:	e3a00000 	mov	r0, #0
6030a0fc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
6030a100:	e3a03001 	mov	r3, #1
6030a104:	e3a06c82 	mov	r6, #33280	; 0x8200
6030a108:	e3446200 	movt	r6, #16896	; 0x4200
6030a10c:	e3037730 	movw	r7, #14128	; 0x3730
6030a110:	e3467032 	movt	r7, #24626	; 0x6032
6030a114:	e1a08813 	lsl	r8, r3, r8
6030a118:	ea000008 	b	6030a140 <IPC_SEMTake+0xd0>
6030a11c:	e3540000 	cmp	r4, #0
6030a120:	0afffff4 	beq	6030a0f8 <IPC_SEMTake+0x88>
6030a124:	e5973000 	ldr	r3, [r7]
6030a128:	e3530000 	cmp	r3, #0
6030a12c:	0a000001 	beq	6030a138 <IPC_SEMTake+0xc8>
6030a130:	e3a00001 	mov	r0, #1
6030a134:	e12fff33 	blx	r3
6030a138:	e2544001 	subs	r4, r4, #1
6030a13c:	0affffed 	beq	6030a0f8 <IPC_SEMTake+0x88>
6030a140:	e1d63fb4 	ldrh	r3, [r6, #244]	; 0xf4
6030a144:	e1130008 	tst	r3, r8
6030a148:	e6ff3073 	uxth	r3, r3
6030a14c:	1afffff2 	bne	6030a11c <IPC_SEMTake+0xac>
6030a150:	e1833008 	orr	r3, r3, r8
6030a154:	e3a00001 	mov	r0, #1
6030a158:	e6ff3073 	uxth	r3, r3
6030a15c:	e1c63fb4 	strh	r3, [r6, #244]	; 0xf4
6030a160:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
6030a164:	e3a00001 	mov	r0, #1
6030a168:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
6030a16c:	e30406a0 	movw	r0, #18080	; 0x46a0
6030a170:	e3460031 	movt	r0, #24625	; 0x6031
6030a174:	e3a01f42 	mov	r1, #264	; 0x108
6030a178:	eb0015ce 	bl	6030f8b8 <io_assert_failed>

6030a17c <IPC_SEMFree>:
6030a17c:	e350000f 	cmp	r0, #15
6030a180:	e92d4010 	push	{r4, lr}
6030a184:	8a000015 	bhi	6030a1e0 <IPC_SEMFree+0x64>
6030a188:	e30e37b0 	movw	r3, #59312	; 0xe7b0
6030a18c:	e3463030 	movt	r3, #24624	; 0x6030
6030a190:	e1a04000 	mov	r4, r0
6030a194:	e12fff33 	blx	r3
6030a198:	e3500002 	cmp	r0, #2
6030a19c:	8a000007 	bhi	6030a1c0 <IPC_SEMFree+0x44>
6030a1a0:	e3a03c82 	mov	r3, #33280	; 0x8200
6030a1a4:	e3443200 	movt	r3, #16896	; 0x4200
6030a1a8:	e3a02001 	mov	r2, #1
6030a1ac:	e1d30fb4 	ldrh	r0, [r3, #244]	; 0xf4
6030a1b0:	e1c04412 	bic	r4, r0, r2, lsl r4
6030a1b4:	e3a00001 	mov	r0, #1
6030a1b8:	e1c34fb4 	strh	r4, [r3, #244]	; 0xf4
6030a1bc:	e8bd8010 	pop	{r4, pc}
6030a1c0:	e30230f0 	movw	r3, #8432	; 0x20f0
6030a1c4:	e3413080 	movt	r3, #4224	; 0x1080
6030a1c8:	e0843003 	add	r3, r4, r3
6030a1cc:	e3a02001 	mov	r2, #1
6030a1d0:	e1a03103 	lsl	r3, r3, #2
6030a1d4:	e3a00001 	mov	r0, #1
6030a1d8:	e5832000 	str	r2, [r3]
6030a1dc:	e8bd8010 	pop	{r4, pc}
6030a1e0:	e30406a0 	movw	r0, #18080	; 0x46a0
6030a1e4:	e3460031 	movt	r0, #24625	; 0x6031
6030a1e8:	e3001146 	movw	r1, #326	; 0x146
6030a1ec:	eb0015b1 	bl	6030f8b8 <io_assert_failed>

6030a1f0 <IPC_SEMDelayStub>:
6030a1f0:	e3033730 	movw	r3, #14128	; 0x3730
6030a1f4:	e3463032 	movt	r3, #24626	; 0x6032
6030a1f8:	e5830000 	str	r0, [r3]
6030a1fc:	e12fff1e 	bx	lr

6030a200 <IPC_INTConfig>:
6030a200:	e3a03001 	mov	r3, #1
6030a204:	e3520001 	cmp	r2, #1
6030a208:	e1a03113 	lsl	r3, r3, r1
6030a20c:	e590100c 	ldr	r1, [r0, #12]
6030a210:	01813003 	orreq	r3, r1, r3
6030a214:	11c13003 	bicne	r3, r1, r3
6030a218:	e580300c 	str	r3, [r0, #12]
6030a21c:	e12fff1e 	bx	lr

6030a220 <IPC_IERGet>:
6030a220:	e590000c 	ldr	r0, [r0, #12]
6030a224:	e12fff1e 	bx	lr

6030a228 <IPC_INTHandler>:
6030a228:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
6030a22c:	e30397b4 	movw	r9, #14260	; 0x37b4
6030a230:	e3469032 	movt	r9, #24626	; 0x6032
6030a234:	e5906008 	ldr	r6, [r0, #8]
6030a238:	e303a734 	movw	sl, #14132	; 0x3734
6030a23c:	e346a032 	movt	sl, #24626	; 0x6032
6030a240:	e1a08000 	mov	r8, r0
6030a244:	e3a04000 	mov	r4, #0
6030a248:	e3a07001 	mov	r7, #1
6030a24c:	e1a05417 	lsl	r5, r7, r4
6030a250:	e1150006 	tst	r5, r6
6030a254:	0a000008 	beq	6030a27c <IPC_INTHandler+0x54>
6030a258:	e7993104 	ldr	r3, [r9, r4, lsl #2]
6030a25c:	e1a02004 	mov	r2, r4
6030a260:	e3530000 	cmp	r3, #0
6030a264:	e1a01006 	mov	r1, r6
6030a268:	05885008 	streq	r5, [r8, #8]
6030a26c:	0a000002 	beq	6030a27c <IPC_INTHandler+0x54>
6030a270:	e79a0104 	ldr	r0, [sl, r4, lsl #2]
6030a274:	e12fff33 	blx	r3
6030a278:	e5885008 	str	r5, [r8, #8]
6030a27c:	e2844001 	add	r4, r4, #1
6030a280:	e3540020 	cmp	r4, #32
6030a284:	1afffff0 	bne	6030a24c <IPC_INTHandler+0x24>
6030a288:	e3a00000 	mov	r0, #0
6030a28c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

6030a290 <IPC_INTUserHandler>:
6030a290:	e3520000 	cmp	r2, #0
6030a294:	012fff1e 	bxeq	lr
6030a298:	e303c7b4 	movw	ip, #14260	; 0x37b4
6030a29c:	e346c032 	movt	ip, #24626	; 0x6032
6030a2a0:	e351000f 	cmp	r1, #15
6030a2a4:	e78c2101 	str	r2, [ip, r1, lsl #2]
6030a2a8:	e3032734 	movw	r2, #14132	; 0x3734
6030a2ac:	e3462032 	movt	r2, #24626	; 0x6032
6030a2b0:	e7823101 	str	r3, [r2, r1, lsl #2]
6030a2b4:	83a02001 	movhi	r2, #1
6030a2b8:	8590300c 	ldrhi	r3, [r0, #12]
6030a2bc:	81831112 	orrhi	r1, r3, r2, lsl r1
6030a2c0:	8580100c 	strhi	r1, [r0, #12]
6030a2c4:	e12fff1e 	bx	lr

6030a2c8 <IPC_GetDevById>:
6030a2c8:	e3500002 	cmp	r0, #2
6030a2cc:	8a00000c 	bhi	6030a304 <IPC_GetDevById+0x3c>
6030a2d0:	e1a03000 	mov	r3, r0
6030a2d4:	e3500001 	cmp	r0, #1
6030a2d8:	0a000006 	beq	6030a2f8 <IPC_GetDevById+0x30>
6030a2dc:	e3530002 	cmp	r3, #2
6030a2e0:	e3a02c86 	mov	r2, #34304	; 0x8600
6030a2e4:	e3442200 	movt	r2, #16896	; 0x4200
6030a2e8:	e3a00d16 	mov	r0, #1408	; 0x580
6030a2ec:	e3440100 	movt	r0, #16640	; 0x4100
6030a2f0:	11a00002 	movne	r0, r2
6030a2f4:	e12fff1e 	bx	lr
6030a2f8:	e3a00c05 	mov	r0, #1280	; 0x500
6030a2fc:	e3440100 	movt	r0, #16640	; 0x4100
6030a300:	e12fff1e 	bx	lr
6030a304:	e30407b4 	movw	r0, #18356	; 0x47b4
6030a308:	e3460031 	movt	r0, #24625	; 0x6031
6030a30c:	e3a010bb 	mov	r1, #187	; 0xbb
6030a310:	e92d4010 	push	{r4, lr}
6030a314:	eb001567 	bl	6030f8b8 <io_assert_failed>

6030a318 <OTP_Read8.part.0>:
6030a318:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
6030a31c:	e304581c 	movw	r5, #18460	; 0x481c
6030a320:	e3465031 	movt	r5, #24625	; 0x6031
6030a324:	e3044838 	movw	r4, #18488	; 0x4838
6030a328:	e3464031 	movt	r4, #24625	; 0x6031
6030a32c:	e24dd00c 	sub	sp, sp, #12
6030a330:	e1a08000 	mov	r8, r0
6030a334:	e1a09001 	mov	r9, r1
6030a338:	ea000000 	b	6030a340 <OTP_Read8.part.0+0x28>
6030a33c:	eb00038c 	bl	6030b174 <rtk_log_write_nano>
6030a340:	e3a01ffa 	mov	r1, #1000	; 0x3e8
6030a344:	e3a00002 	mov	r0, #2
6030a348:	ebffff48 	bl	6030a070 <IPC_SEMTake>
6030a34c:	e1a0c000 	mov	ip, r0
6030a350:	e1a03005 	mov	r3, r5
6030a354:	e3a02045 	mov	r2, #69	; 0x45
6030a358:	e1a01004 	mov	r1, r4
6030a35c:	e3a00002 	mov	r0, #2
6030a360:	e35c0001 	cmp	ip, #1
6030a364:	1afffff4 	bne	6030a33c <OTP_Read8.part.0+0x24>
6030a368:	e3a03902 	mov	r3, #32768	; 0x8000
6030a36c:	e3443200 	movt	r3, #16896	; 0x4200
6030a370:	e3a05442 	mov	r5, #1107296256	; 0x42000000
6030a374:	e5932000 	ldr	r2, [r3]
6030a378:	e3120001 	tst	r2, #1
6030a37c:	05932000 	ldreq	r2, [r3]
6030a380:	03822001 	orreq	r2, r2, #1
6030a384:	05832000 	streq	r2, [r3]
6030a388:	e1a03408 	lsl	r3, r8, #8
6030a38c:	e5952014 	ldr	r2, [r5, #20]
6030a390:	e3c224ff 	bic	r2, r2, #-16777216	; 0xff000000
6030a394:	e5852014 	str	r2, [r5, #20]
6030a398:	e5853008 	str	r3, [r5, #8]
6030a39c:	e5953008 	ldr	r3, [r5, #8]
6030a3a0:	e3530000 	cmp	r3, #0
6030a3a4:	ba00000f 	blt	6030a3e8 <OTP_Read8.part.0+0xd0>
6030a3a8:	e3096790 	movw	r6, #38800	; 0x9790
6030a3ac:	e3466030 	movt	r6, #24624	; 0x6030
6030a3b0:	e3a04000 	mov	r4, #0
6030a3b4:	e3047e20 	movw	r7, #20000	; 0x4e20
6030a3b8:	ea000001 	b	6030a3c4 <OTP_Read8.part.0+0xac>
6030a3bc:	e1540007 	cmp	r4, r7
6030a3c0:	0a000015 	beq	6030a41c <OTP_Read8.part.0+0x104>
6030a3c4:	e3a00005 	mov	r0, #5
6030a3c8:	e12fff36 	blx	r6
6030a3cc:	e5953008 	ldr	r3, [r5, #8]
6030a3d0:	e2844001 	add	r4, r4, #1
6030a3d4:	e3530000 	cmp	r3, #0
6030a3d8:	aafffff7 	bge	6030a3bc <OTP_Read8.part.0+0xa4>
6030a3dc:	e3043e20 	movw	r3, #20000	; 0x4e20
6030a3e0:	e1540003 	cmp	r4, r3
6030a3e4:	0a00000c 	beq	6030a41c <OTP_Read8.part.0+0x104>
6030a3e8:	e3a03442 	mov	r3, #1107296256	; 0x42000000
6030a3ec:	e3a04000 	mov	r4, #0
6030a3f0:	e5933008 	ldr	r3, [r3, #8]
6030a3f4:	e5c93000 	strb	r3, [r9]
6030a3f8:	e3a02442 	mov	r2, #1107296256	; 0x42000000
6030a3fc:	e3a00002 	mov	r0, #2
6030a400:	e5923014 	ldr	r3, [r2, #20]
6030a404:	e3c334ff 	bic	r3, r3, #-16777216	; 0xff000000
6030a408:	e5823014 	str	r3, [r2, #20]
6030a40c:	ebffff5a 	bl	6030a17c <IPC_SEMFree>
6030a410:	e1a00004 	mov	r0, r4
6030a414:	e28dd00c 	add	sp, sp, #12
6030a418:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
6030a41c:	e3e04000 	mvn	r4, #0
6030a420:	e3a02045 	mov	r2, #69	; 0x45
6030a424:	e5c94000 	strb	r4, [r9]
6030a428:	e3a00002 	mov	r0, #2
6030a42c:	e58d8000 	str	r8, [sp]
6030a430:	e304383c 	movw	r3, #18492	; 0x483c
6030a434:	e3463031 	movt	r3, #24625	; 0x6031
6030a438:	e3041838 	movw	r1, #18488	; 0x4838
6030a43c:	e3461031 	movt	r1, #24625	; 0x6031
6030a440:	eb00034b 	bl	6030b174 <rtk_log_write_nano>
6030a444:	eaffffeb 	b	6030a3f8 <OTP_Read8.part.0+0xe0>

6030a448 <OTP_Read32.isra.0>:
6030a448:	e92d4070 	push	{r4, r5, r6, lr}
6030a44c:	e3a03000 	mov	r3, #0
6030a450:	e24dd008 	sub	sp, sp, #8
6030a454:	e1a06001 	mov	r6, r1
6030a458:	e1a04000 	mov	r4, r0
6030a45c:	e1a05003 	mov	r5, r3
6030a460:	e5813000 	str	r3, [r1]
6030a464:	e1a00004 	mov	r0, r4
6030a468:	e28d1007 	add	r1, sp, #7
6030a46c:	e3540b02 	cmp	r4, #2048	; 0x800
6030a470:	2a00000a 	bcs	6030a4a0 <OTP_Read32.isra.0+0x58>
6030a474:	ebffffa7 	bl	6030a318 <OTP_Read8.part.0>
6030a478:	e3700001 	cmn	r0, #1
6030a47c:	0a000007 	beq	6030a4a0 <OTP_Read32.isra.0+0x58>
6030a480:	e5963000 	ldr	r3, [r6]
6030a484:	e5dd2007 	ldrb	r2, [sp, #7]
6030a488:	e2844001 	add	r4, r4, #1
6030a48c:	e1833512 	orr	r3, r3, r2, lsl r5
6030a490:	e2855008 	add	r5, r5, #8
6030a494:	e3550020 	cmp	r5, #32
6030a498:	e5863000 	str	r3, [r6]
6030a49c:	1afffff0 	bne	6030a464 <OTP_Read32.isra.0+0x1c>
6030a4a0:	e28dd008 	add	sp, sp, #8
6030a4a4:	e8bd8070 	pop	{r4, r5, r6, pc}

6030a4a8 <OTP_ProgramMarginRead8.part.0>:
6030a4a8:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
6030a4ac:	e304581c 	movw	r5, #18460	; 0x481c
6030a4b0:	e3465031 	movt	r5, #24625	; 0x6031
6030a4b4:	e3044838 	movw	r4, #18488	; 0x4838
6030a4b8:	e3464031 	movt	r4, #24625	; 0x6031
6030a4bc:	e24dd00c 	sub	sp, sp, #12
6030a4c0:	e1a08000 	mov	r8, r0
6030a4c4:	e1a09001 	mov	r9, r1
6030a4c8:	ea000000 	b	6030a4d0 <OTP_ProgramMarginRead8.part.0+0x28>
6030a4cc:	eb000328 	bl	6030b174 <rtk_log_write_nano>
6030a4d0:	e3a01ffa 	mov	r1, #1000	; 0x3e8
6030a4d4:	e3a00002 	mov	r0, #2
6030a4d8:	ebfffee4 	bl	6030a070 <IPC_SEMTake>
6030a4dc:	e1a0c000 	mov	ip, r0
6030a4e0:	e1a03005 	mov	r3, r5
6030a4e4:	e3a02045 	mov	r2, #69	; 0x45
6030a4e8:	e1a01004 	mov	r1, r4
6030a4ec:	e3a00002 	mov	r0, #2
6030a4f0:	e35c0001 	cmp	ip, #1
6030a4f4:	1afffff4 	bne	6030a4cc <OTP_ProgramMarginRead8.part.0+0x24>
6030a4f8:	e3a03902 	mov	r3, #32768	; 0x8000
6030a4fc:	e3443200 	movt	r3, #16896	; 0x4200
6030a500:	e3a05442 	mov	r5, #1107296256	; 0x42000000
6030a504:	e5932000 	ldr	r2, [r3]
6030a508:	e3120001 	tst	r2, #1
6030a50c:	05932000 	ldreq	r2, [r3]
6030a510:	03822001 	orreq	r2, r2, #1
6030a514:	05832000 	streq	r2, [r3]
6030a518:	e1a03408 	lsl	r3, r8, #8
6030a51c:	e5952014 	ldr	r2, [r5, #20]
6030a520:	e3833601 	orr	r3, r3, #1048576	; 0x100000
6030a524:	e3c224ff 	bic	r2, r2, #-16777216	; 0xff000000
6030a528:	e5852014 	str	r2, [r5, #20]
6030a52c:	e5853008 	str	r3, [r5, #8]
6030a530:	e5953008 	ldr	r3, [r5, #8]
6030a534:	e3530000 	cmp	r3, #0
6030a538:	ba00000f 	blt	6030a57c <OTP_ProgramMarginRead8.part.0+0xd4>
6030a53c:	e3096790 	movw	r6, #38800	; 0x9790
6030a540:	e3466030 	movt	r6, #24624	; 0x6030
6030a544:	e3a04000 	mov	r4, #0
6030a548:	e3047e20 	movw	r7, #20000	; 0x4e20
6030a54c:	ea000001 	b	6030a558 <OTP_ProgramMarginRead8.part.0+0xb0>
6030a550:	e1540007 	cmp	r4, r7
6030a554:	0a000015 	beq	6030a5b0 <OTP_ProgramMarginRead8.part.0+0x108>
6030a558:	e3a00005 	mov	r0, #5
6030a55c:	e12fff36 	blx	r6
6030a560:	e5953008 	ldr	r3, [r5, #8]
6030a564:	e2844001 	add	r4, r4, #1
6030a568:	e3530000 	cmp	r3, #0
6030a56c:	aafffff7 	bge	6030a550 <OTP_ProgramMarginRead8.part.0+0xa8>
6030a570:	e3043e20 	movw	r3, #20000	; 0x4e20
6030a574:	e1540003 	cmp	r4, r3
6030a578:	0a00000c 	beq	6030a5b0 <OTP_ProgramMarginRead8.part.0+0x108>
6030a57c:	e3a03442 	mov	r3, #1107296256	; 0x42000000
6030a580:	e3a04000 	mov	r4, #0
6030a584:	e5933008 	ldr	r3, [r3, #8]
6030a588:	e5c93000 	strb	r3, [r9]
6030a58c:	e3a02442 	mov	r2, #1107296256	; 0x42000000
6030a590:	e3a00002 	mov	r0, #2
6030a594:	e5923014 	ldr	r3, [r2, #20]
6030a598:	e3c334ff 	bic	r3, r3, #-16777216	; 0xff000000
6030a59c:	e5823014 	str	r3, [r2, #20]
6030a5a0:	ebfffef5 	bl	6030a17c <IPC_SEMFree>
6030a5a4:	e1a00004 	mov	r0, r4
6030a5a8:	e28dd00c 	add	sp, sp, #12
6030a5ac:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
6030a5b0:	e3e04000 	mvn	r4, #0
6030a5b4:	e3a02045 	mov	r2, #69	; 0x45
6030a5b8:	e5c94000 	strb	r4, [r9]
6030a5bc:	e3a00002 	mov	r0, #2
6030a5c0:	e58d8000 	str	r8, [sp]
6030a5c4:	e304383c 	movw	r3, #18492	; 0x483c
6030a5c8:	e3463031 	movt	r3, #24625	; 0x6031
6030a5cc:	e3041838 	movw	r1, #18488	; 0x4838
6030a5d0:	e3461031 	movt	r1, #24625	; 0x6031
6030a5d4:	eb0002e6 	bl	6030b174 <rtk_log_write_nano>
6030a5d8:	eaffffeb 	b	6030a58c <OTP_ProgramMarginRead8.part.0+0xe4>

6030a5dc <OTPGetCRC>:
6030a5dc:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
6030a5e0:	e3a05442 	mov	r5, #1107296256	; 0x42000000
6030a5e4:	e3a03101 	mov	r3, #1073741824	; 0x40000000
6030a5e8:	e5853034 	str	r3, [r5, #52]	; 0x34
6030a5ec:	e5954000 	ldr	r4, [r5]
6030a5f0:	e2144002 	ands	r4, r4, #2
6030a5f4:	1a00000b 	bne	6030a628 <OTPGetCRC+0x4c>
6030a5f8:	e3096790 	movw	r6, #38800	; 0x9790
6030a5fc:	e3466030 	movt	r6, #24624	; 0x6030
6030a600:	e3047e20 	movw	r7, #20000	; 0x4e20
6030a604:	e3a00001 	mov	r0, #1
6030a608:	e12fff36 	blx	r6
6030a60c:	e5953000 	ldr	r3, [r5]
6030a610:	e2844001 	add	r4, r4, #1
6030a614:	e0542007 	subs	r2, r4, r7
6030a618:	e2233002 	eor	r3, r3, #2
6030a61c:	13a02001 	movne	r2, #1
6030a620:	e01230a3 	ands	r3, r2, r3, lsr #1
6030a624:	1afffff6 	bne	6030a604 <OTPGetCRC+0x28>
6030a628:	e3a03442 	mov	r3, #1107296256	; 0x42000000
6030a62c:	e3e02101 	mvn	r2, #1073741824	; 0x40000000
6030a630:	e5930030 	ldr	r0, [r3, #48]	; 0x30
6030a634:	e5832034 	str	r2, [r3, #52]	; 0x34
6030a638:	e1a00820 	lsr	r0, r0, #16
6030a63c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

6030a640 <OTP_Read8>:
6030a640:	e3500b02 	cmp	r0, #2048	; 0x800
6030a644:	2a000000 	bcs	6030a64c <OTP_Read8+0xc>
6030a648:	eaffff32 	b	6030a318 <OTP_Read8.part.0>
6030a64c:	e3e00000 	mvn	r0, #0
6030a650:	e5c10000 	strb	r0, [r1]
6030a654:	e12fff1e 	bx	lr

6030a658 <OTP_Write8>:
6030a658:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030a65c:	e3500b02 	cmp	r0, #2048	; 0x800
6030a660:	e24dd024 	sub	sp, sp, #36	; 0x24
6030a664:	23e03000 	mvncs	r3, #0
6030a668:	e1cd00f8 	strd	r0, [sp, #8]
6030a66c:	25cd301f 	strbcs	r3, [sp, #31]
6030a670:	2a00007f 	bcs	6030a874 <OTP_Write8+0x21c>
6030a674:	e28d101f 	add	r1, sp, #31
6030a678:	ebffff8a 	bl	6030a4a8 <OTP_ProgramMarginRead8.part.0>
6030a67c:	e3700001 	cmn	r0, #1
6030a680:	0a00007b 	beq	6030a874 <OTP_Write8+0x21c>
6030a684:	e59d2008 	ldr	r2, [sp, #8]
6030a688:	e5dd301f 	ldrb	r3, [sp, #31]
6030a68c:	e59d900c 	ldr	r9, [sp, #12]
6030a690:	e3a0b902 	mov	fp, #32768	; 0x8000
6030a694:	e344b200 	movt	fp, #16896	; 0x4200
6030a698:	e3048864 	movw	r8, #18532	; 0x4864
6030a69c:	e3468031 	movt	r8, #24625	; 0x6031
6030a6a0:	e3047838 	movw	r7, #18488	; 0x4838
6030a6a4:	e3467031 	movt	r7, #24625	; 0x6031
6030a6a8:	e1a02402 	lsl	r2, r2, #8
6030a6ac:	e58d2014 	str	r2, [sp, #20]
6030a6b0:	e3a02002 	mov	r2, #2
6030a6b4:	e58d2010 	str	r2, [sp, #16]
6030a6b8:	e1e03003 	mvn	r3, r3
6030a6bc:	e1839009 	orr	r9, r3, r9
6030a6c0:	e6ef9079 	uxtb	r9, r9
6030a6c4:	e35900ff 	cmp	r9, #255	; 0xff
6030a6c8:	1a000001 	bne	6030a6d4 <OTP_Write8+0x7c>
6030a6cc:	ea000030 	b	6030a794 <OTP_Write8+0x13c>
6030a6d0:	eb0002a7 	bl	6030b174 <rtk_log_write_nano>
6030a6d4:	e3a01ffa 	mov	r1, #1000	; 0x3e8
6030a6d8:	e3a00002 	mov	r0, #2
6030a6dc:	ebfffe63 	bl	6030a070 <IPC_SEMTake>
6030a6e0:	e1a0c000 	mov	ip, r0
6030a6e4:	e1a03008 	mov	r3, r8
6030a6e8:	e3a02045 	mov	r2, #69	; 0x45
6030a6ec:	e1a01007 	mov	r1, r7
6030a6f0:	e3a00002 	mov	r0, #2
6030a6f4:	e35c0001 	cmp	ip, #1
6030a6f8:	1afffff4 	bne	6030a6d0 <OTP_Write8+0x78>
6030a6fc:	e59b3000 	ldr	r3, [fp]
6030a700:	e3a04442 	mov	r4, #1107296256	; 0x42000000
6030a704:	e3130001 	tst	r3, #1
6030a708:	059b3000 	ldreq	r3, [fp]
6030a70c:	03833001 	orreq	r3, r3, #1
6030a710:	058b3000 	streq	r3, [fp]
6030a714:	e59d3014 	ldr	r3, [sp, #20]
6030a718:	e5942014 	ldr	r2, [r4, #20]
6030a71c:	e1893003 	orr	r3, r9, r3
6030a720:	e3833102 	orr	r3, r3, #-2147483648	; 0x80000000
6030a724:	e3822469 	orr	r2, r2, #1761607680	; 0x69000000
6030a728:	e5842014 	str	r2, [r4, #20]
6030a72c:	e5843008 	str	r3, [r4, #8]
6030a730:	e5943008 	ldr	r3, [r4, #8]
6030a734:	e3530000 	cmp	r3, #0
6030a738:	b3a0a000 	movlt	sl, #0
6030a73c:	b3095790 	movwlt	r5, #38800	; 0x9790
6030a740:	b3046e20 	movwlt	r6, #20000	; 0x4e20
6030a744:	b3465030 	movtlt	r5, #24624	; 0x6030
6030a748:	ba000002 	blt	6030a758 <OTP_Write8+0x100>
6030a74c:	ea00000a 	b	6030a77c <OTP_Write8+0x124>
6030a750:	e15a0006 	cmp	sl, r6
6030a754:	0a000021 	beq	6030a7e0 <OTP_Write8+0x188>
6030a758:	e3a00005 	mov	r0, #5
6030a75c:	e12fff35 	blx	r5
6030a760:	e5943008 	ldr	r3, [r4, #8]
6030a764:	e28aa001 	add	sl, sl, #1
6030a768:	e3530000 	cmp	r3, #0
6030a76c:	bafffff7 	blt	6030a750 <OTP_Write8+0xf8>
6030a770:	e3042e20 	movw	r2, #20000	; 0x4e20
6030a774:	e15a0002 	cmp	sl, r2
6030a778:	0a000018 	beq	6030a7e0 <OTP_Write8+0x188>
6030a77c:	e3a02442 	mov	r2, #1107296256	; 0x42000000
6030a780:	e3a00002 	mov	r0, #2
6030a784:	e5923014 	ldr	r3, [r2, #20]
6030a788:	e3c334ff 	bic	r3, r3, #-16777216	; 0xff000000
6030a78c:	e5823014 	str	r3, [r2, #20]
6030a790:	ebfffe79 	bl	6030a17c <IPC_SEMFree>
6030a794:	e59d0008 	ldr	r0, [sp, #8]
6030a798:	e28d101f 	add	r1, sp, #31
6030a79c:	ebffff41 	bl	6030a4a8 <OTP_ProgramMarginRead8.part.0>
6030a7a0:	e3700001 	cmn	r0, #1
6030a7a4:	0a000027 	beq	6030a848 <OTP_Write8+0x1f0>
6030a7a8:	e5dd301f 	ldrb	r3, [sp, #31]
6030a7ac:	e59d200c 	ldr	r2, [sp, #12]
6030a7b0:	e1530002 	cmp	r3, r2
6030a7b4:	0a00002c 	beq	6030a86c <OTP_Write8+0x214>
6030a7b8:	e59d2010 	ldr	r2, [sp, #16]
6030a7bc:	e3520001 	cmp	r2, #1
6030a7c0:	1a000003 	bne	6030a7d4 <OTP_Write8+0x17c>
6030a7c4:	e3e04000 	mvn	r4, #0
6030a7c8:	e1a00004 	mov	r0, r4
6030a7cc:	e28dd024 	add	sp, sp, #36	; 0x24
6030a7d0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030a7d4:	e3a02001 	mov	r2, #1
6030a7d8:	e58d2010 	str	r2, [sp, #16]
6030a7dc:	eaffffb5 	b	6030a6b8 <OTP_Write8+0x60>
6030a7e0:	e59d3008 	ldr	r3, [sp, #8]
6030a7e4:	e58d3000 	str	r3, [sp]
6030a7e8:	e3a02045 	mov	r2, #69	; 0x45
6030a7ec:	e3a00002 	mov	r0, #2
6030a7f0:	e3043880 	movw	r3, #18560	; 0x4880
6030a7f4:	e3463031 	movt	r3, #24625	; 0x6031
6030a7f8:	e3041838 	movw	r1, #18488	; 0x4838
6030a7fc:	e3461031 	movt	r1, #24625	; 0x6031
6030a800:	eb00025b 	bl	6030b174 <rtk_log_write_nano>
6030a804:	e3a02442 	mov	r2, #1107296256	; 0x42000000
6030a808:	e3a00002 	mov	r0, #2
6030a80c:	e3e04000 	mvn	r4, #0
6030a810:	e5923014 	ldr	r3, [r2, #20]
6030a814:	e3c334ff 	bic	r3, r3, #-16777216	; 0xff000000
6030a818:	e5823014 	str	r3, [r2, #20]
6030a81c:	ebfffe56 	bl	6030a17c <IPC_SEMFree>
6030a820:	e3a02045 	mov	r2, #69	; 0x45
6030a824:	e3a00002 	mov	r0, #2
6030a828:	e3043898 	movw	r3, #18584	; 0x4898
6030a82c:	e3463031 	movt	r3, #24625	; 0x6031
6030a830:	e3041838 	movw	r1, #18488	; 0x4838
6030a834:	e3461031 	movt	r1, #24625	; 0x6031
6030a838:	eb00024d 	bl	6030b174 <rtk_log_write_nano>
6030a83c:	e1a00004 	mov	r0, r4
6030a840:	e28dd024 	add	sp, sp, #36	; 0x24
6030a844:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030a848:	e1a04000 	mov	r4, r0
6030a84c:	e3a02045 	mov	r2, #69	; 0x45
6030a850:	e3a00002 	mov	r0, #2
6030a854:	e30438ac 	movw	r3, #18604	; 0x48ac
6030a858:	e3463031 	movt	r3, #24625	; 0x6031
6030a85c:	e3041838 	movw	r1, #18488	; 0x4838
6030a860:	e3461031 	movt	r1, #24625	; 0x6031
6030a864:	eb000242 	bl	6030b174 <rtk_log_write_nano>
6030a868:	eaffffd6 	b	6030a7c8 <OTP_Write8+0x170>
6030a86c:	e3a04000 	mov	r4, #0
6030a870:	eaffffd4 	b	6030a7c8 <OTP_Write8+0x170>
6030a874:	e3a02045 	mov	r2, #69	; 0x45
6030a878:	e3a00002 	mov	r0, #2
6030a87c:	e3043850 	movw	r3, #18512	; 0x4850
6030a880:	e3463031 	movt	r3, #24625	; 0x6031
6030a884:	e3041838 	movw	r1, #18488	; 0x4838
6030a888:	e3461031 	movt	r1, #24625	; 0x6031
6030a88c:	e3e04000 	mvn	r4, #0
6030a890:	eb000237 	bl	6030b174 <rtk_log_write_nano>
6030a894:	eaffffcb 	b	6030a7c8 <OTP_Write8+0x170>

6030a898 <OTP_LogicalMap_Read>:
6030a898:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030a89c:	e0817002 	add	r7, r1, r2
6030a8a0:	e24dd01c 	sub	sp, sp, #28
6030a8a4:	e1a06001 	mov	r6, r1
6030a8a8:	e3570b01 	cmp	r7, #1024	; 0x400
6030a8ac:	e58d0008 	str	r0, [sp, #8]
6030a8b0:	8a000059 	bhi	6030aa1c <OTP_LogicalMap_Read+0x184>
6030a8b4:	e59d3008 	ldr	r3, [sp, #8]
6030a8b8:	e3a04000 	mov	r4, #0
6030a8bc:	e0433001 	sub	r3, r3, r1
6030a8c0:	e3a010ff 	mov	r1, #255	; 0xff
6030a8c4:	e58d300c 	str	r3, [sp, #12]
6030a8c8:	e30b35c4 	movw	r3, #46532	; 0xb5c4
6030a8cc:	e3463030 	movt	r3, #24624	; 0x6030
6030a8d0:	e30488ec 	movw	r8, #18668	; 0x48ec
6030a8d4:	e3468031 	movt	r8, #24625	; 0x6031
6030a8d8:	e12fff33 	blx	r3
6030a8dc:	ea00000c 	b	6030a914 <OTP_LogicalMap_Read+0x7c>
6030a8e0:	e3520002 	cmp	r2, #2
6030a8e4:	1a000006 	bne	6030a904 <OTP_LogicalMap_Read+0x6c>
6030a8e8:	e7e39c53 	ubfx	r9, r3, #24, #4
6030a8ec:	e7e32653 	ubfx	r2, r3, #12, #4
6030a8f0:	e1a09109 	lsl	r9, r9, #2
6030a8f4:	e2899004 	add	r9, r9, #4
6030a8f8:	e3520007 	cmp	r2, #7
6030a8fc:	0a00002e 	beq	6030a9bc <OTP_LogicalMap_Read+0x124>
6030a900:	e0844009 	add	r4, r4, r9
6030a904:	e3140003 	tst	r4, #3
6030a908:	1a00001d 	bne	6030a984 <OTP_LogicalMap_Read+0xec>
6030a90c:	e3540f7f 	cmp	r4, #508	; 0x1fc
6030a910:	8a000026 	bhi	6030a9b0 <OTP_LogicalMap_Read+0x118>
6030a914:	e28d1014 	add	r1, sp, #20
6030a918:	e1a00004 	mov	r0, r4
6030a91c:	ebfffec9 	bl	6030a448 <OTP_Read32.isra.0>
6030a920:	e59d3014 	ldr	r3, [sp, #20]
6030a924:	e3730001 	cmn	r3, #1
6030a928:	0a000020 	beq	6030a9b0 <OTP_LogicalMap_Read+0x118>
6030a92c:	e1a02e23 	lsr	r2, r3, #28
6030a930:	e2844004 	add	r4, r4, #4
6030a934:	e3520001 	cmp	r2, #1
6030a938:	1affffe8 	bne	6030a8e0 <OTP_LogicalMap_Read+0x48>
6030a93c:	e7e32653 	ubfx	r2, r3, #12, #4
6030a940:	e3520007 	cmp	r2, #7
6030a944:	1affffee 	bne	6030a904 <OTP_LogicalMap_Read+0x6c>
6030a948:	e7eb2053 	ubfx	r2, r3, #0, #12
6030a94c:	e1570002 	cmp	r7, r2
6030a950:	83a01001 	movhi	r1, #1
6030a954:	93a01000 	movls	r1, #0
6030a958:	e1560002 	cmp	r6, r2
6030a95c:	83a01000 	movhi	r1, #0
6030a960:	e7e73853 	ubfx	r3, r3, #16, #8
6030a964:	e3510000 	cmp	r1, #0
6030a968:	e5cd3013 	strb	r3, [sp, #19]
6030a96c:	0affffe4 	beq	6030a904 <OTP_LogicalMap_Read+0x6c>
6030a970:	e59d1008 	ldr	r1, [sp, #8]
6030a974:	e0422006 	sub	r2, r2, r6
6030a978:	e3140003 	tst	r4, #3
6030a97c:	e7c13002 	strb	r3, [r1, r2]
6030a980:	0affffe1 	beq	6030a90c <OTP_LogicalMap_Read+0x74>
6030a984:	e59d0014 	ldr	r0, [sp, #20]
6030a988:	e58d0004 	str	r0, [sp, #4]
6030a98c:	e1a03008 	mov	r3, r8
6030a990:	e3a02045 	mov	r2, #69	; 0x45
6030a994:	e3a00002 	mov	r0, #2
6030a998:	e3041838 	movw	r1, #18488	; 0x4838
6030a99c:	e3461031 	movt	r1, #24625	; 0x6031
6030a9a0:	e58d4000 	str	r4, [sp]
6030a9a4:	eb0001f2 	bl	6030b174 <rtk_log_write_nano>
6030a9a8:	e3540f7f 	cmp	r4, #508	; 0x1fc
6030a9ac:	9affffd8 	bls	6030a914 <OTP_LogicalMap_Read+0x7c>
6030a9b0:	e3a00000 	mov	r0, #0
6030a9b4:	e28dd01c 	add	sp, sp, #28
6030a9b8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030a9bc:	e7eb5053 	ubfx	r5, r3, #0, #12
6030a9c0:	e085a009 	add	sl, r5, r9
6030a9c4:	e1a0b004 	mov	fp, r4
6030a9c8:	e35b0b02 	cmp	fp, #2048	; 0x800
6030a9cc:	e1a0000b 	mov	r0, fp
6030a9d0:	23e03000 	mvncs	r3, #0
6030a9d4:	e28d1013 	add	r1, sp, #19
6030a9d8:	25cd3013 	strbcs	r3, [sp, #19]
6030a9dc:	2a000000 	bcs	6030a9e4 <OTP_LogicalMap_Read+0x14c>
6030a9e0:	ebfffe4c 	bl	6030a318 <OTP_Read8.part.0>
6030a9e4:	e1560005 	cmp	r6, r5
6030a9e8:	93a03001 	movls	r3, #1
6030a9ec:	83a03000 	movhi	r3, #0
6030a9f0:	e1570005 	cmp	r7, r5
6030a9f4:	93a03000 	movls	r3, #0
6030a9f8:	e3530000 	cmp	r3, #0
6030a9fc:	e28bb001 	add	fp, fp, #1
6030aa00:	159d200c 	ldrne	r2, [sp, #12]
6030aa04:	15dd3013 	ldrbne	r3, [sp, #19]
6030aa08:	17c23005 	strbne	r3, [r2, r5]
6030aa0c:	e2855001 	add	r5, r5, #1
6030aa10:	e155000a 	cmp	r5, sl
6030aa14:	1affffeb 	bne	6030a9c8 <OTP_LogicalMap_Read+0x130>
6030aa18:	eaffffb8 	b	6030a900 <OTP_LogicalMap_Read+0x68>
6030aa1c:	e1a03002 	mov	r3, r2
6030aa20:	e3a00002 	mov	r0, #2
6030aa24:	e58d3004 	str	r3, [sp, #4]
6030aa28:	e58d1000 	str	r1, [sp]
6030aa2c:	e3a02045 	mov	r2, #69	; 0x45
6030aa30:	e30438c0 	movw	r3, #18624	; 0x48c0
6030aa34:	e3463031 	movt	r3, #24625	; 0x6031
6030aa38:	e3041838 	movw	r1, #18488	; 0x4838
6030aa3c:	e3461031 	movt	r1, #24625	; 0x6031
6030aa40:	eb0001cb 	bl	6030b174 <rtk_log_write_nano>
6030aa44:	e3e00000 	mvn	r0, #0
6030aa48:	eaffffd9 	b	6030a9b4 <OTP_LogicalMap_Read+0x11c>

6030aa4c <OTP_LogicalMap_Write>:
6030aa4c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030aa50:	e1a03000 	mov	r3, r0
6030aa54:	e24dd044 	sub	sp, sp, #68	; 0x44
6030aa58:	e0810000 	add	r0, r1, r0
6030aa5c:	e3500b01 	cmp	r0, #1024	; 0x400
6030aa60:	e58d2014 	str	r2, [sp, #20]
6030aa64:	8a00013f 	bhi	6030af68 <OTP_LogicalMap_Write+0x51c>
6030aa68:	e3c3200f 	bic	r2, r3, #15
6030aa6c:	e1a04001 	mov	r4, r1
6030aa70:	e203300f 	and	r3, r3, #15
6030aa74:	e3510000 	cmp	r1, #0
6030aa78:	e58d2010 	str	r2, [sp, #16]
6030aa7c:	e58d3008 	str	r3, [sp, #8]
6030aa80:	da000135 	ble	6030af5c <OTP_LogicalMap_Write+0x510>
6030aa84:	e304b838 	movw	fp, #18488	; 0x4838
6030aa88:	e346b031 	movt	fp, #24625	; 0x6031
6030aa8c:	e3043958 	movw	r3, #18776	; 0x4958
6030aa90:	e3463031 	movt	r3, #24625	; 0x6031
6030aa94:	e58d300c 	str	r3, [sp, #12]
6030aa98:	e3043a00 	movw	r3, #18944	; 0x4a00
6030aa9c:	e3463031 	movt	r3, #24625	; 0x6031
6030aaa0:	e58d3020 	str	r3, [sp, #32]
6030aaa4:	e59d5008 	ldr	r5, [sp, #8]
6030aaa8:	e3a02010 	mov	r2, #16
6030aaac:	e0843005 	add	r3, r4, r5
6030aab0:	e3530010 	cmp	r3, #16
6030aab4:	e59d1010 	ldr	r1, [sp, #16]
6030aab8:	e28d0030 	add	r0, sp, #48	; 0x30
6030aabc:	31a04003 	movcc	r4, r3
6030aac0:	21a04002 	movcs	r4, r2
6030aac4:	e58d3018 	str	r3, [sp, #24]
6030aac8:	ebffff72 	bl	6030a898 <OTP_LogicalMap_Read>
6030aacc:	e3700001 	cmn	r0, #1
6030aad0:	e58d001c 	str	r0, [sp, #28]
6030aad4:	0a000102 	beq	6030aee4 <OTP_LogicalMap_Write+0x498>
6030aad8:	e1540005 	cmp	r4, r5
6030aadc:	9a00008b 	bls	6030ad10 <OTP_LogicalMap_Write+0x2c4>
6030aae0:	e59d3008 	ldr	r3, [sp, #8]
6030aae4:	e59d2014 	ldr	r2, [sp, #20]
6030aae8:	e3a07000 	mov	r7, #0
6030aaec:	e2435001 	sub	r5, r3, #1
6030aaf0:	e0426003 	sub	r6, r2, r3
6030aaf4:	e28d1030 	add	r1, sp, #48	; 0x30
6030aaf8:	e0866004 	add	r6, r6, r4
6030aafc:	e0815005 	add	r5, r1, r5
6030ab00:	e1a04002 	mov	r4, r2
6030ab04:	e1a0a007 	mov	sl, r7
6030ab08:	e1a08007 	mov	r8, r7
6030ab0c:	e0439002 	sub	r9, r3, r2
6030ab10:	e0893004 	add	r3, r9, r4
6030ab14:	e5f52001 	ldrb	r2, [r5, #1]!
6030ab18:	e4d40001 	ldrb	r0, [r4], #1
6030ab1c:	e1a0c123 	lsr	ip, r3, #2
6030ab20:	e1520000 	cmp	r2, r0
6030ab24:	0a00000c 	beq	6030ab5c <OTP_LogicalMap_Write+0x110>
6030ab28:	e3a02001 	mov	r2, #1
6030ab2c:	e1a01002 	mov	r1, r2
6030ab30:	e18aa312 	orr	sl, sl, r2, lsl r3
6030ab34:	e58d0004 	str	r0, [sp, #4]
6030ab38:	e58d3000 	str	r3, [sp]
6030ab3c:	e1877c11 	orr	r7, r7, r1, lsl ip
6030ab40:	e0888001 	add	r8, r8, r1
6030ab44:	e5c50000 	strb	r0, [r5]
6030ab48:	e59d300c 	ldr	r3, [sp, #12]
6030ab4c:	e3a02049 	mov	r2, #73	; 0x49
6030ab50:	e1a0100b 	mov	r1, fp
6030ab54:	e3a00004 	mov	r0, #4
6030ab58:	eb000185 	bl	6030b174 <rtk_log_write_nano>
6030ab5c:	e1560004 	cmp	r6, r4
6030ab60:	1affffea 	bne	6030ab10 <OTP_LogicalMap_Write+0xc4>
6030ab64:	e3580000 	cmp	r8, #0
6030ab68:	0a000068 	beq	6030ad10 <OTP_LogicalMap_Write+0x2c4>
6030ab6c:	e59d3008 	ldr	r3, [sp, #8]
6030ab70:	e3a02000 	mov	r2, #0
6030ab74:	e3a01010 	mov	r1, #16
6030ab78:	e1a03123 	lsr	r3, r3, #2
6030ab7c:	e1a00337 	lsr	r0, r7, r3
6030ab80:	e3100001 	tst	r0, #1
6030ab84:	0a000005 	beq	6030aba0 <OTP_LogicalMap_Write+0x154>
6030ab88:	e1510003 	cmp	r1, r3
6030ab8c:	21a01003 	movcs	r1, r3
6030ab90:	e1520003 	cmp	r2, r3
6030ab94:	31a02003 	movcc	r2, r3
6030ab98:	e6ef1071 	uxtb	r1, r1
6030ab9c:	e6ef2072 	uxtb	r2, r2
6030aba0:	e2833001 	add	r3, r3, #1
6030aba4:	e3530004 	cmp	r3, #4
6030aba8:	1afffff3 	bne	6030ab7c <OTP_LogicalMap_Write+0x130>
6030abac:	e0422001 	sub	r2, r2, r1
6030abb0:	e2823002 	add	r3, r2, #2
6030abb4:	e1580003 	cmp	r8, r3
6030abb8:	9a00006c 	bls	6030ad70 <OTP_LogicalMap_Write+0x324>
6030abbc:	e1a09101 	lsl	r9, r1, #2
6030abc0:	e2822001 	add	r2, r2, #1
6030abc4:	e59d3010 	ldr	r3, [sp, #16]
6030abc8:	e6ef9079 	uxtb	r9, r9
6030abcc:	e1a04102 	lsl	r4, r2, #2
6030abd0:	e0896003 	add	r6, r9, r3
6030abd4:	e6ef4074 	uxtb	r4, r4
6030abd8:	e28d3030 	add	r3, sp, #48	; 0x30
6030abdc:	e3540010 	cmp	r4, #16
6030abe0:	e0839009 	add	r9, r3, r9
6030abe4:	e6ff6076 	uxth	r6, r6
6030abe8:	8a0000b2 	bhi	6030aeb8 <OTP_LogicalMap_Write+0x46c>
6030abec:	e3560b01 	cmp	r6, #1024	; 0x400
6030abf0:	8a0000c7 	bhi	6030af14 <OTP_LogicalMap_Write+0x4c8>
6030abf4:	e3540000 	cmp	r4, #0
6030abf8:	0a00000f 	beq	6030ac3c <OTP_LogicalMap_Write+0x1f0>
6030abfc:	e2495001 	sub	r5, r9, #1
6030ac00:	e304a9c4 	movw	sl, #18884	; 0x49c4
6030ac04:	e346a031 	movt	sl, #24625	; 0x6031
6030ac08:	e0858004 	add	r8, r5, r4
6030ac0c:	e2697001 	rsb	r7, r9, #1
6030ac10:	e0873005 	add	r3, r7, r5
6030ac14:	e58d3000 	str	r3, [sp]
6030ac18:	e1a0100b 	mov	r1, fp
6030ac1c:	e5f52001 	ldrb	r2, [r5, #1]!
6030ac20:	e58d2004 	str	r2, [sp, #4]
6030ac24:	e1a0300a 	mov	r3, sl
6030ac28:	e3a02049 	mov	r2, #73	; 0x49
6030ac2c:	e3a00004 	mov	r0, #4
6030ac30:	eb00014f 	bl	6030b174 <rtk_log_write_nano>
6030ac34:	e1580005 	cmp	r8, r5
6030ac38:	1afffff4 	bne	6030ac10 <OTP_LogicalMap_Write+0x1c4>
6030ac3c:	e3a05000 	mov	r5, #0
6030ac40:	e28d702c 	add	r7, sp, #44	; 0x2c
6030ac44:	ea000004 	b	6030ac5c <OTP_LogicalMap_Write+0x210>
6030ac48:	e3520003 	cmp	r2, #3
6030ac4c:	02855008 	addeq	r5, r5, #8
6030ac50:	11a05001 	movne	r5, r1
6030ac54:	e3550f7f 	cmp	r5, #508	; 0x1fc
6030ac58:	8a00000e 	bhi	6030ac98 <OTP_LogicalMap_Write+0x24c>
6030ac5c:	e1a01007 	mov	r1, r7
6030ac60:	e1a00005 	mov	r0, r5
6030ac64:	ebfffdf7 	bl	6030a448 <OTP_Read32.isra.0>
6030ac68:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
6030ac6c:	e2851004 	add	r1, r5, #4
6030ac70:	e3730001 	cmn	r3, #1
6030ac74:	e1a02e23 	lsr	r2, r3, #28
6030ac78:	0a000006 	beq	6030ac98 <OTP_LogicalMap_Write+0x24c>
6030ac7c:	e3520002 	cmp	r2, #2
6030ac80:	1afffff0 	bne	6030ac48 <OTP_LogicalMap_Write+0x1fc>
6030ac84:	e7e33c53 	ubfx	r3, r3, #24, #4
6030ac88:	e2833001 	add	r3, r3, #1
6030ac8c:	e0815103 	add	r5, r1, r3, lsl #2
6030ac90:	e3550f7f 	cmp	r5, #508	; 0x1fc
6030ac94:	9afffff0 	bls	6030ac5c <OTP_LogicalMap_Write+0x210>
6030ac98:	e0852004 	add	r2, r5, r4
6030ac9c:	e30031fd 	movw	r3, #509	; 0x1fd
6030aca0:	e1520003 	cmp	r2, r3
6030aca4:	8a0000a2 	bhi	6030af34 <OTP_LogicalMap_Write+0x4e8>
6030aca8:	e6ef1076 	uxtb	r1, r6
6030acac:	e1a00005 	mov	r0, r5
6030acb0:	ebfffe68 	bl	6030a658 <OTP_Write8>
6030acb4:	e7e31456 	ubfx	r1, r6, #8, #4
6030acb8:	e3811070 	orr	r1, r1, #112	; 0x70
6030acbc:	e2850001 	add	r0, r5, #1
6030acc0:	ebfffe64 	bl	6030a658 <OTP_Write8>
6030acc4:	e1a01144 	asr	r1, r4, #2
6030acc8:	e2411001 	sub	r1, r1, #1
6030accc:	e3811020 	orr	r1, r1, #32
6030acd0:	e2850003 	add	r0, r5, #3
6030acd4:	e6ef1071 	uxtb	r1, r1
6030acd8:	ebfffe5e 	bl	6030a658 <OTP_Write8>
6030acdc:	e3540000 	cmp	r4, #0
6030ace0:	12496001 	subne	r6, r9, #1
6030ace4:	12699005 	rsbne	r9, r9, #5
6030ace8:	10895005 	addne	r5, r9, r5
6030acec:	10864004 	addne	r4, r6, r4
6030acf0:	0a000004 	beq	6030ad08 <OTP_LogicalMap_Write+0x2bc>
6030acf4:	e0850006 	add	r0, r5, r6
6030acf8:	e5f61001 	ldrb	r1, [r6, #1]!
6030acfc:	ebfffe55 	bl	6030a658 <OTP_Write8>
6030ad00:	e1560004 	cmp	r6, r4
6030ad04:	1afffffa 	bne	6030acf4 <OTP_LogicalMap_Write+0x2a8>
6030ad08:	e3a03000 	mov	r3, #0
6030ad0c:	e58d301c 	str	r3, [sp, #28]
6030ad10:	e59d3018 	ldr	r3, [sp, #24]
6030ad14:	e59de014 	ldr	lr, [sp, #20]
6030ad18:	e2434010 	sub	r4, r3, #16
6030ad1c:	e59d3008 	ldr	r3, [sp, #8]
6030ad20:	e3a02049 	mov	r2, #73	; 0x49
6030ad24:	e263c010 	rsb	ip, r3, #16
6030ad28:	e59d3010 	ldr	r3, [sp, #16]
6030ad2c:	e1a0100b 	mov	r1, fp
6030ad30:	e2833010 	add	r3, r3, #16
6030ad34:	e3a00004 	mov	r0, #4
6030ad38:	e58d3010 	str	r3, [sp, #16]
6030ad3c:	e88d0018 	stm	sp, {r3, r4}
6030ad40:	e3043a20 	movw	r3, #18976	; 0x4a20
6030ad44:	e3463031 	movt	r3, #24625	; 0x6031
6030ad48:	e08ec00c 	add	ip, lr, ip
6030ad4c:	e58dc014 	str	ip, [sp, #20]
6030ad50:	e3a0c000 	mov	ip, #0
6030ad54:	e58dc008 	str	ip, [sp, #8]
6030ad58:	eb000105 	bl	6030b174 <rtk_log_write_nano>
6030ad5c:	e3540000 	cmp	r4, #0
6030ad60:	caffff4f 	bgt	6030aaa4 <OTP_LogicalMap_Write+0x58>
6030ad64:	e59d001c 	ldr	r0, [sp, #28]
6030ad68:	e28dd044 	add	sp, sp, #68	; 0x44
6030ad6c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030ad70:	e30439dc 	movw	r3, #18908	; 0x49dc
6030ad74:	e3463031 	movt	r3, #24625	; 0x6031
6030ad78:	e1dd51b0 	ldrh	r5, [sp, #16]
6030ad7c:	e59d701c 	ldr	r7, [sp, #28]
6030ad80:	e28d8030 	add	r8, sp, #48	; 0x30
6030ad84:	e3a06000 	mov	r6, #0
6030ad88:	e58d3024 	str	r3, [sp, #36]	; 0x24
6030ad8c:	ea000005 	b	6030ada8 <OTP_LogicalMap_Write+0x35c>
6030ad90:	e2855001 	add	r5, r5, #1
6030ad94:	e2866001 	add	r6, r6, #1
6030ad98:	e6ff5075 	uxth	r5, r5
6030ad9c:	e2888001 	add	r8, r8, #1
6030ada0:	e3560010 	cmp	r6, #16
6030ada4:	0a000041 	beq	6030aeb0 <OTP_LogicalMap_Write+0x464>
6030ada8:	e3a03001 	mov	r3, #1
6030adac:	e01a3613 	ands	r3, sl, r3, lsl r6
6030adb0:	0afffff6 	beq	6030ad90 <OTP_LogicalMap_Write+0x344>
6030adb4:	e5d89000 	ldrb	r9, [r8]
6030adb8:	e3550b01 	cmp	r5, #1024	; 0x400
6030adbc:	8a000033 	bhi	6030ae90 <OTP_LogicalMap_Write+0x444>
6030adc0:	e59d3020 	ldr	r3, [sp, #32]
6030adc4:	e3a02049 	mov	r2, #73	; 0x49
6030adc8:	e1a0100b 	mov	r1, fp
6030adcc:	e3a00004 	mov	r0, #4
6030add0:	e88d0220 	stm	sp, {r5, r9}
6030add4:	e3a04000 	mov	r4, #0
6030add8:	e28d702c 	add	r7, sp, #44	; 0x2c
6030addc:	eb0000e4 	bl	6030b174 <rtk_log_write_nano>
6030ade0:	ea000004 	b	6030adf8 <OTP_LogicalMap_Write+0x3ac>
6030ade4:	e3520003 	cmp	r2, #3
6030ade8:	02844008 	addeq	r4, r4, #8
6030adec:	11a04001 	movne	r4, r1
6030adf0:	e3540f7f 	cmp	r4, #508	; 0x1fc
6030adf4:	8a00000e 	bhi	6030ae34 <OTP_LogicalMap_Write+0x3e8>
6030adf8:	e1a01007 	mov	r1, r7
6030adfc:	e1a00004 	mov	r0, r4
6030ae00:	ebfffd90 	bl	6030a448 <OTP_Read32.isra.0>
6030ae04:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
6030ae08:	e2841004 	add	r1, r4, #4
6030ae0c:	e3730001 	cmn	r3, #1
6030ae10:	e1a02e23 	lsr	r2, r3, #28
6030ae14:	0a00000e 	beq	6030ae54 <OTP_LogicalMap_Write+0x408>
6030ae18:	e3520002 	cmp	r2, #2
6030ae1c:	1afffff0 	bne	6030ade4 <OTP_LogicalMap_Write+0x398>
6030ae20:	e7e30c53 	ubfx	r0, r3, #24, #4
6030ae24:	e2800001 	add	r0, r0, #1
6030ae28:	e0814100 	add	r4, r1, r0, lsl #2
6030ae2c:	e3540f7f 	cmp	r4, #508	; 0x1fc
6030ae30:	9afffff0 	bls	6030adf8 <OTP_LogicalMap_Write+0x3ac>
6030ae34:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
6030ae38:	e3a02045 	mov	r2, #69	; 0x45
6030ae3c:	e1a0100b 	mov	r1, fp
6030ae40:	e3a00002 	mov	r0, #2
6030ae44:	e58d4000 	str	r4, [sp]
6030ae48:	e3e07000 	mvn	r7, #0
6030ae4c:	eb0000c8 	bl	6030b174 <rtk_log_write_nano>
6030ae50:	eaffffce 	b	6030ad90 <OTP_LogicalMap_Write+0x344>
6030ae54:	e6ef1075 	uxtb	r1, r5
6030ae58:	e1a00004 	mov	r0, r4
6030ae5c:	ebfffdfd 	bl	6030a658 <OTP_Write8>
6030ae60:	e7e31455 	ubfx	r1, r5, #8, #4
6030ae64:	e3811070 	orr	r1, r1, #112	; 0x70
6030ae68:	e2840001 	add	r0, r4, #1
6030ae6c:	ebfffdf9 	bl	6030a658 <OTP_Write8>
6030ae70:	e1a01009 	mov	r1, r9
6030ae74:	e2840002 	add	r0, r4, #2
6030ae78:	ebfffdf6 	bl	6030a658 <OTP_Write8>
6030ae7c:	e2840003 	add	r0, r4, #3
6030ae80:	e3a0101f 	mov	r1, #31
6030ae84:	e3a07000 	mov	r7, #0
6030ae88:	ebfffdf2 	bl	6030a658 <OTP_Write8>
6030ae8c:	eaffffbf 	b	6030ad90 <OTP_LogicalMap_Write+0x344>
6030ae90:	e3a02045 	mov	r2, #69	; 0x45
6030ae94:	e1a0100b 	mov	r1, fp
6030ae98:	e3a00002 	mov	r0, #2
6030ae9c:	e58d5000 	str	r5, [sp]
6030aea0:	e3043998 	movw	r3, #18840	; 0x4998
6030aea4:	e3463031 	movt	r3, #24625	; 0x6031
6030aea8:	eb0000b1 	bl	6030b174 <rtk_log_write_nano>
6030aeac:	eaffffc3 	b	6030adc0 <OTP_LogicalMap_Write+0x374>
6030aeb0:	e58d701c 	str	r7, [sp, #28]
6030aeb4:	eaffff95 	b	6030ad10 <OTP_LogicalMap_Write+0x2c4>
6030aeb8:	e3a02045 	mov	r2, #69	; 0x45
6030aebc:	e1a0100b 	mov	r1, fp
6030aec0:	e3a00002 	mov	r0, #2
6030aec4:	e58d4004 	str	r4, [sp, #4]
6030aec8:	e58d6000 	str	r6, [sp]
6030aecc:	e304396c 	movw	r3, #18796	; 0x496c
6030aed0:	e3463031 	movt	r3, #24625	; 0x6031
6030aed4:	eb0000a6 	bl	6030b174 <rtk_log_write_nano>
6030aed8:	e3e03000 	mvn	r3, #0
6030aedc:	e58d301c 	str	r3, [sp, #28]
6030aee0:	eaffff8a 	b	6030ad10 <OTP_LogicalMap_Write+0x2c4>
6030aee4:	e59d3010 	ldr	r3, [sp, #16]
6030aee8:	e58d3000 	str	r3, [sp]
6030aeec:	e3a02045 	mov	r2, #69	; 0x45
6030aef0:	e3a00002 	mov	r0, #2
6030aef4:	e3043930 	movw	r3, #18736	; 0x4930
6030aef8:	e3463031 	movt	r3, #24625	; 0x6031
6030aefc:	e3041838 	movw	r1, #18488	; 0x4838
6030af00:	e3461031 	movt	r1, #24625	; 0x6031
6030af04:	eb00009a 	bl	6030b174 <rtk_log_write_nano>
6030af08:	e59d001c 	ldr	r0, [sp, #28]
6030af0c:	e28dd044 	add	sp, sp, #68	; 0x44
6030af10:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030af14:	e3a02045 	mov	r2, #69	; 0x45
6030af18:	e1a0100b 	mov	r1, fp
6030af1c:	e3a00002 	mov	r0, #2
6030af20:	e58d6000 	str	r6, [sp]
6030af24:	e3043998 	movw	r3, #18840	; 0x4998
6030af28:	e3463031 	movt	r3, #24625	; 0x6031
6030af2c:	eb000090 	bl	6030b174 <rtk_log_write_nano>
6030af30:	eaffff2f 	b	6030abf4 <OTP_LogicalMap_Write+0x1a8>
6030af34:	e3a02045 	mov	r2, #69	; 0x45
6030af38:	e1a0100b 	mov	r1, fp
6030af3c:	e3a00002 	mov	r0, #2
6030af40:	e58d5000 	str	r5, [sp]
6030af44:	e30439dc 	movw	r3, #18908	; 0x49dc
6030af48:	e3463031 	movt	r3, #24625	; 0x6031
6030af4c:	eb000088 	bl	6030b174 <rtk_log_write_nano>
6030af50:	e3e03000 	mvn	r3, #0
6030af54:	e58d301c 	str	r3, [sp, #28]
6030af58:	eaffff6c 	b	6030ad10 <OTP_LogicalMap_Write+0x2c4>
6030af5c:	e3a03000 	mov	r3, #0
6030af60:	e58d301c 	str	r3, [sp, #28]
6030af64:	eaffff7e 	b	6030ad64 <OTP_LogicalMap_Write+0x318>
6030af68:	e58d1004 	str	r1, [sp, #4]
6030af6c:	e58d3000 	str	r3, [sp]
6030af70:	e3a02045 	mov	r2, #69	; 0x45
6030af74:	e3a00002 	mov	r0, #2
6030af78:	e3043904 	movw	r3, #18692	; 0x4904
6030af7c:	e3463031 	movt	r3, #24625	; 0x6031
6030af80:	e3041838 	movw	r1, #18488	; 0x4838
6030af84:	e3461031 	movt	r1, #24625	; 0x6031
6030af88:	e3e0c000 	mvn	ip, #0
6030af8c:	e58dc01c 	str	ip, [sp, #28]
6030af90:	eb000077 	bl	6030b174 <rtk_log_write_nano>
6030af94:	eaffff72 	b	6030ad64 <OTP_LogicalMap_Write+0x318>

6030af98 <System_Reset>:
6030af98:	e3a03902 	mov	r3, #32768	; 0x8000
6030af9c:	e3443200 	movt	r3, #16896	; 0x4200
6030afa0:	e593227c 	ldr	r2, [r3, #636]	; 0x27c
6030afa4:	e7e12352 	ubfx	r2, r2, #6, #2
6030afa8:	e3520003 	cmp	r2, #3
6030afac:	012fff1e 	bxeq	lr
6030afb0:	e3a01202 	mov	r1, #536870912	; 0x20000000
6030afb4:	e3090696 	movw	r0, #38550	; 0x9696
6030afb8:	e3490696 	movt	r0, #38550	; 0x9696
6030afbc:	e1a02211 	lsl	r2, r1, r2
6030afc0:	e583023c 	str	r0, [r3, #572]	; 0x23c
6030afc4:	e3061969 	movw	r1, #26985	; 0x6969
6030afc8:	e3461969 	movt	r1, #26985	; 0x6969
6030afcc:	e5832238 	str	r2, [r3, #568]	; 0x238
6030afd0:	e583123c 	str	r1, [r3, #572]	; 0x23c
6030afd4:	e12fff1e 	bx	lr

6030afd8 <CPU_InInterrupt>:
6030afd8:	e10f3000 	mrs	r3, CPSR
6030afdc:	e203301f 	and	r3, r3, #31
6030afe0:	e3530010 	cmp	r3, #16
6030afe4:	0a000004 	beq	6030affc <CPU_InInterrupt+0x24>
6030afe8:	e10f0000 	mrs	r0, CPSR
6030afec:	e200001f 	and	r0, r0, #31
6030aff0:	e250001f 	subs	r0, r0, #31
6030aff4:	13a00001 	movne	r0, #1
6030aff8:	e12fff1e 	bx	lr
6030affc:	e3a00000 	mov	r0, #0
6030b000:	e12fff1e 	bx	lr

6030b004 <rtk_log_level_get>:
6030b004:	e3033880 	movw	r3, #14464	; 0x3880
6030b008:	e3463032 	movt	r3, #24626	; 0x6032
6030b00c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
6030b010:	e1a06000 	mov	r6, r0
6030b014:	e5932000 	ldr	r2, [r3]
6030b018:	e3520003 	cmp	r2, #3
6030b01c:	9a000016 	bls	6030b07c <rtk_log_level_get+0x78>
6030b020:	e3500000 	cmp	r0, #0
6030b024:	13a08004 	movne	r8, #4
6030b028:	0a000018 	beq	6030b090 <rtk_log_level_get+0x8c>
6030b02c:	e30b7804 	movw	r7, #47108	; 0xb804
6030b030:	e3467030 	movt	r7, #24624	; 0x6030
6030b034:	e59f5064 	ldr	r5, [pc, #100]	; 6030b0a0 <rtk_log_level_get+0x9c>
6030b038:	e3a04000 	mov	r4, #0
6030b03c:	ea000003 	b	6030b050 <rtk_log_level_get+0x4c>
6030b040:	e2844001 	add	r4, r4, #1
6030b044:	e285500b 	add	r5, r5, #11
6030b048:	e1580004 	cmp	r8, r4
6030b04c:	9a00000f 	bls	6030b090 <rtk_log_level_get+0x8c>
6030b050:	e1a00005 	mov	r0, r5
6030b054:	e1a01006 	mov	r1, r6
6030b058:	e12fff37 	blx	r7
6030b05c:	e3500000 	cmp	r0, #0
6030b060:	1afffff6 	bne	6030b040 <rtk_log_level_get+0x3c>
6030b064:	e3a0200b 	mov	r2, #11
6030b068:	e3033884 	movw	r3, #14468	; 0x3884
6030b06c:	e3463032 	movt	r3, #24626	; 0x6032
6030b070:	e0040492 	mul	r4, r2, r4
6030b074:	e7d30004 	ldrb	r0, [r3, r4]
6030b078:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
6030b07c:	e5938000 	ldr	r8, [r3]
6030b080:	e3500000 	cmp	r0, #0
6030b084:	0a000001 	beq	6030b090 <rtk_log_level_get+0x8c>
6030b088:	e3580000 	cmp	r8, #0
6030b08c:	1affffe6 	bne	6030b02c <rtk_log_level_get+0x28>
6030b090:	e306326c 	movw	r3, #25196	; 0x626c
6030b094:	e3463031 	movt	r3, #24625	; 0x6031
6030b098:	e5d30000 	ldrb	r0, [r3]
6030b09c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
6030b0a0:	60323885 	.word	0x60323885

6030b0a4 <rtk_log_write>:
6030b0a4:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
6030b0a8:	e92d40f0 	push	{r4, r5, r6, r7, lr}
6030b0ac:	e2514000 	subs	r4, r1, #0
6030b0b0:	e24dd008 	sub	sp, sp, #8
6030b0b4:	0a000005 	beq	6030b0d0 <rtk_log_write+0x2c>
6030b0b8:	e1a05000 	mov	r5, r0
6030b0bc:	e1a00004 	mov	r0, r4
6030b0c0:	e1a06002 	mov	r6, r2
6030b0c4:	ebffffce 	bl	6030b004 <rtk_log_level_get>
6030b0c8:	e1500005 	cmp	r0, r5
6030b0cc:	2a000003 	bcs	6030b0e0 <rtk_log_write+0x3c>
6030b0d0:	e28dd008 	add	sp, sp, #8
6030b0d4:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
6030b0d8:	e28dd004 	add	sp, sp, #4
6030b0dc:	e12fff1e 	bx	lr
6030b0e0:	e10f7000 	mrs	r7, CPSR
6030b0e4:	f10c0080 	cpsid	i
6030b0e8:	f57ff04f 	dsb	sy
6030b0ec:	f57ff06f 	isb	sy
6030b0f0:	e3a03001 	mov	r3, #1
6030b0f4:	e3035840 	movw	r5, #14400	; 0x3840
6030b0f8:	e3465032 	movt	r5, #24626	; 0x6032
6030b0fc:	e1952f9f 	ldrex	r2, [r5]
6030b100:	e3520000 	cmp	r2, #0
6030b104:	1320f002 	wfene
6030b108:	01852f93 	strexeq	r2, r3, [r5]
6030b10c:	03520000 	cmpeq	r2, #0
6030b110:	1afffff9 	bne	6030b0fc <rtk_log_write+0x58>
6030b114:	f57ff05f 	dmb	sy
6030b118:	e5d43000 	ldrb	r3, [r4]
6030b11c:	e3530023 	cmp	r3, #35	; 0x23
6030b120:	1a00000d 	bne	6030b15c <rtk_log_write+0xb8>
6030b124:	e28d1020 	add	r1, sp, #32
6030b128:	e59d001c 	ldr	r0, [sp, #28]
6030b12c:	e58d1004 	str	r1, [sp, #4]
6030b130:	eb000da8 	bl	6030e7d8 <DiagVprintf>
6030b134:	e3a03000 	mov	r3, #0
6030b138:	f57ff05f 	dmb	sy
6030b13c:	e5853000 	str	r3, [r5]
6030b140:	f57ff04f 	dsb	sy
6030b144:	e320f004 	sev
6030b148:	e121f007 	msr	CPSR_c, r7
6030b14c:	e28dd008 	add	sp, sp, #8
6030b150:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
6030b154:	e28dd004 	add	sp, sp, #4
6030b158:	e12fff1e 	bx	lr
6030b15c:	e1a02006 	mov	r2, r6
6030b160:	e1a01004 	mov	r1, r4
6030b164:	e3040a48 	movw	r0, #19016	; 0x4a48
6030b168:	e3460031 	movt	r0, #24625	; 0x6031
6030b16c:	eb0010c3 	bl	6030f480 <DiagPrintf>
6030b170:	eaffffeb 	b	6030b124 <rtk_log_write+0x80>

6030b174 <rtk_log_write_nano>:
6030b174:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
6030b178:	e92d40f0 	push	{r4, r5, r6, r7, lr}
6030b17c:	e2514000 	subs	r4, r1, #0
6030b180:	e24dd008 	sub	sp, sp, #8
6030b184:	0a000005 	beq	6030b1a0 <rtk_log_write_nano+0x2c>
6030b188:	e1a05000 	mov	r5, r0
6030b18c:	e1a00004 	mov	r0, r4
6030b190:	e1a06002 	mov	r6, r2
6030b194:	ebffff9a 	bl	6030b004 <rtk_log_level_get>
6030b198:	e1500005 	cmp	r0, r5
6030b19c:	2a000003 	bcs	6030b1b0 <rtk_log_write_nano+0x3c>
6030b1a0:	e28dd008 	add	sp, sp, #8
6030b1a4:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
6030b1a8:	e28dd004 	add	sp, sp, #4
6030b1ac:	e12fff1e 	bx	lr
6030b1b0:	e10f7000 	mrs	r7, CPSR
6030b1b4:	f10c0080 	cpsid	i
6030b1b8:	f57ff04f 	dsb	sy
6030b1bc:	f57ff06f 	isb	sy
6030b1c0:	e3a03001 	mov	r3, #1
6030b1c4:	e3035840 	movw	r5, #14400	; 0x3840
6030b1c8:	e3465032 	movt	r5, #24626	; 0x6032
6030b1cc:	e1952f9f 	ldrex	r2, [r5]
6030b1d0:	e3520000 	cmp	r2, #0
6030b1d4:	1320f002 	wfene
6030b1d8:	01852f93 	strexeq	r2, r3, [r5]
6030b1dc:	03520000 	cmpeq	r2, #0
6030b1e0:	1afffff9 	bne	6030b1cc <rtk_log_write_nano+0x58>
6030b1e4:	f57ff05f 	dmb	sy
6030b1e8:	e5d43000 	ldrb	r3, [r4]
6030b1ec:	e3530023 	cmp	r3, #35	; 0x23
6030b1f0:	1a00000d 	bne	6030b22c <rtk_log_write_nano+0xb8>
6030b1f4:	e28d1020 	add	r1, sp, #32
6030b1f8:	e59d001c 	ldr	r0, [sp, #28]
6030b1fc:	e58d1004 	str	r1, [sp, #4]
6030b200:	eb000f5d 	bl	6030ef7c <DiagVprintfNano>
6030b204:	e3a03000 	mov	r3, #0
6030b208:	f57ff05f 	dmb	sy
6030b20c:	e5853000 	str	r3, [r5]
6030b210:	f57ff04f 	dsb	sy
6030b214:	e320f004 	sev
6030b218:	e121f007 	msr	CPSR_c, r7
6030b21c:	e28dd008 	add	sp, sp, #8
6030b220:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
6030b224:	e28dd004 	add	sp, sp, #4
6030b228:	e12fff1e 	bx	lr
6030b22c:	e1a02006 	mov	r2, r6
6030b230:	e1a01004 	mov	r1, r4
6030b234:	e3040a48 	movw	r0, #19016	; 0x4a48
6030b238:	e3460031 	movt	r0, #24625	; 0x6031
6030b23c:	eb00109a 	bl	6030f4ac <DiagPrintfNano>
6030b240:	eaffffeb 	b	6030b1f4 <rtk_log_write_nano+0x80>

6030b244 <rtk_log_array_print>:
6030b244:	e3033880 	movw	r3, #14464	; 0x3880
6030b248:	e3463032 	movt	r3, #24626	; 0x6032
6030b24c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
6030b250:	e5932000 	ldr	r2, [r3]
6030b254:	e24dd008 	sub	sp, sp, #8
6030b258:	e3520003 	cmp	r2, #3
6030b25c:	9a000017 	bls	6030b2c0 <rtk_log_array_print+0x7c>
6030b260:	e3500000 	cmp	r0, #0
6030b264:	13a08004 	movne	r8, #4
6030b268:	0a00001a 	beq	6030b2d8 <rtk_log_array_print+0x94>
6030b26c:	e3047a54 	movw	r7, #19028	; 0x4a54
6030b270:	e3467031 	movt	r7, #24625	; 0x6031
6030b274:	e3046a68 	movw	r6, #19048	; 0x4a68
6030b278:	e3466031 	movt	r6, #24625	; 0x6031
6030b27c:	e2804001 	add	r4, r0, #1
6030b280:	e3a05000 	mov	r5, #0
6030b284:	e554c001 	ldrb	ip, [r4, #-1]
6030b288:	e1a03007 	mov	r3, r7
6030b28c:	e58d4000 	str	r4, [sp]
6030b290:	e3a02049 	mov	r2, #73	; 0x49
6030b294:	e1a01006 	mov	r1, r6
6030b298:	e3a00004 	mov	r0, #4
6030b29c:	e2855001 	add	r5, r5, #1
6030b2a0:	e58dc004 	str	ip, [sp, #4]
6030b2a4:	ebffffb2 	bl	6030b174 <rtk_log_write_nano>
6030b2a8:	e284400b 	add	r4, r4, #11
6030b2ac:	e1550008 	cmp	r5, r8
6030b2b0:	3afffff3 	bcc	6030b284 <rtk_log_array_print+0x40>
6030b2b4:	e3a00000 	mov	r0, #0
6030b2b8:	e28dd008 	add	sp, sp, #8
6030b2bc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
6030b2c0:	e5938000 	ldr	r8, [r3]
6030b2c4:	e3500000 	cmp	r0, #0
6030b2c8:	0a000002 	beq	6030b2d8 <rtk_log_array_print+0x94>
6030b2cc:	e3580000 	cmp	r8, #0
6030b2d0:	1affffe5 	bne	6030b26c <rtk_log_array_print+0x28>
6030b2d4:	eafffff6 	b	6030b2b4 <rtk_log_array_print+0x70>
6030b2d8:	e3e00000 	mvn	r0, #0
6030b2dc:	eafffff5 	b	6030b2b8 <rtk_log_array_print+0x74>

6030b2e0 <rtk_log_level_set>:
6030b2e0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
6030b2e4:	e3036880 	movw	r6, #14464	; 0x3880
6030b2e8:	e3466032 	movt	r6, #24626	; 0x6032
6030b2ec:	e1a05000 	mov	r5, r0
6030b2f0:	e1a07001 	mov	r7, r1
6030b2f4:	e5963000 	ldr	r3, [r6]
6030b2f8:	e3530003 	cmp	r3, #3
6030b2fc:	83a08004 	movhi	r8, #4
6030b300:	95968000 	ldrls	r8, [r6]
6030b304:	e3510005 	cmp	r1, #5
6030b308:	93a04000 	movls	r4, #0
6030b30c:	83a04001 	movhi	r4, #1
6030b310:	e3500000 	cmp	r0, #0
6030b314:	03844001 	orreq	r4, r4, #1
6030b318:	e3540000 	cmp	r4, #0
6030b31c:	1a00003f 	bne	6030b420 <rtk_log_level_set+0x140>
6030b320:	e3041a6c 	movw	r1, #19052	; 0x4a6c
6030b324:	e3461031 	movt	r1, #24625	; 0x6031
6030b328:	e30b9804 	movw	r9, #47108	; 0xb804
6030b32c:	e3469030 	movt	r9, #24624	; 0x6030
6030b330:	e12fff39 	blx	r9
6030b334:	e3500000 	cmp	r0, #0
6030b338:	0a000014 	beq	6030b390 <rtk_log_level_set+0xb0>
6030b33c:	e3580000 	cmp	r8, #0
6030b340:	159fa0e0 	ldrne	sl, [pc, #224]	; 6030b428 <rtk_log_level_set+0x148>
6030b344:	1a000004 	bne	6030b35c <rtk_log_level_set+0x7c>
6030b348:	ea000014 	b	6030b3a0 <rtk_log_level_set+0xc0>
6030b34c:	e2844001 	add	r4, r4, #1
6030b350:	e28aa00b 	add	sl, sl, #11
6030b354:	e1580004 	cmp	r8, r4
6030b358:	0a000010 	beq	6030b3a0 <rtk_log_level_set+0xc0>
6030b35c:	e1a0000a 	mov	r0, sl
6030b360:	e1a01005 	mov	r1, r5
6030b364:	e12fff39 	blx	r9
6030b368:	e3500000 	cmp	r0, #0
6030b36c:	1afffff6 	bne	6030b34c <rtk_log_level_set+0x6c>
6030b370:	e3a0300b 	mov	r3, #11
6030b374:	e1580004 	cmp	r8, r4
6030b378:	e3038884 	movw	r8, #14468	; 0x3884
6030b37c:	e3468032 	movt	r8, #24626	; 0x6032
6030b380:	e0040493 	mul	r4, r3, r4
6030b384:	e7c87004 	strb	r7, [r8, r4]
6030b388:	88bd87f0 	pophi	{r4, r5, r6, r7, r8, r9, sl, pc}
6030b38c:	ea000005 	b	6030b3a8 <rtk_log_level_set+0xc8>
6030b390:	e306326c 	movw	r3, #25196	; 0x626c
6030b394:	e3463031 	movt	r3, #24625	; 0x6031
6030b398:	e5c37000 	strb	r7, [r3]
6030b39c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
6030b3a0:	e3038884 	movw	r8, #14468	; 0x3884
6030b3a4:	e3468032 	movt	r8, #24626	; 0x6032
6030b3a8:	e5963000 	ldr	r3, [r6]
6030b3ac:	e3530003 	cmp	r3, #3
6030b3b0:	8a000012 	bhi	6030b400 <rtk_log_level_set+0x120>
6030b3b4:	e5963000 	ldr	r3, [r6]
6030b3b8:	e3a0200b 	mov	r2, #11
6030b3bc:	e5960000 	ldr	r0, [r6]
6030b3c0:	e2033003 	and	r3, r3, #3
6030b3c4:	e2000003 	and	r0, r0, #3
6030b3c8:	e1a01005 	mov	r1, r5
6030b3cc:	e0030392 	mul	r3, r2, r3
6030b3d0:	e0208092 	mla	r0, r2, r0, r8
6030b3d4:	e3a02009 	mov	r2, #9
6030b3d8:	e2800001 	add	r0, r0, #1
6030b3dc:	e7c87003 	strb	r7, [r8, r3]
6030b3e0:	e3013fdc 	movw	r3, #8156	; 0x1fdc
6030b3e4:	e3463030 	movt	r3, #24624	; 0x6030
6030b3e8:	e12fff33 	blx	r3
6030b3ec:	e5963000 	ldr	r3, [r6]
6030b3f0:	e3a00000 	mov	r0, #0
6030b3f4:	e2833001 	add	r3, r3, #1
6030b3f8:	e5863000 	str	r3, [r6]
6030b3fc:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
6030b400:	e3a02057 	mov	r2, #87	; 0x57
6030b404:	e3a00003 	mov	r0, #3
6030b408:	e3043a70 	movw	r3, #19056	; 0x4a70
6030b40c:	e3463031 	movt	r3, #24625	; 0x6031
6030b410:	e3041a68 	movw	r1, #19048	; 0x4a68
6030b414:	e3461031 	movt	r1, #24625	; 0x6031
6030b418:	ebffff55 	bl	6030b174 <rtk_log_write_nano>
6030b41c:	eaffffe4 	b	6030b3b4 <rtk_log_level_set+0xd4>
6030b420:	e3e00000 	mvn	r0, #0
6030b424:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
6030b428:	60323885 	.word	0x60323885

6030b42c <rtk_log_memory_dump_word>:
6030b42c:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
6030b430:	e2517000 	subs	r7, r1, #0
6030b434:	e24dd00c 	sub	sp, sp, #12
6030b438:	0a000025 	beq	6030b4d4 <rtk_log_memory_dump_word+0xa8>
6030b43c:	e3049aa4 	movw	r9, #19108	; 0x4aa4
6030b440:	e3469031 	movt	r9, #24625	; 0x6031
6030b444:	e30465a4 	movw	r6, #17828	; 0x45a4
6030b448:	e3466031 	movt	r6, #24625	; 0x6031
6030b44c:	e1a08000 	mov	r8, r0
6030b450:	e1a05000 	mov	r5, r0
6030b454:	e3a04000 	mov	r4, #0
6030b458:	ea00000a 	b	6030b488 <rtk_log_memory_dump_word+0x5c>
6030b45c:	e4953004 	ldr	r3, [r5], #4
6030b460:	e3a00001 	mov	r0, #1
6030b464:	e0844000 	add	r4, r4, r0
6030b468:	e58d3000 	str	r3, [sp]
6030b46c:	e3a02041 	mov	r2, #65	; 0x41
6030b470:	e1a01006 	mov	r1, r6
6030b474:	e3043ab0 	movw	r3, #19120	; 0x4ab0
6030b478:	e3463031 	movt	r3, #24625	; 0x6031
6030b47c:	ebffff3c 	bl	6030b174 <rtk_log_write_nano>
6030b480:	e1540007 	cmp	r4, r7
6030b484:	0a000012 	beq	6030b4d4 <rtk_log_memory_dump_word+0xa8>
6030b488:	e3540000 	cmp	r4, #0
6030b48c:	0a000008 	beq	6030b4b4 <rtk_log_memory_dump_word+0x88>
6030b490:	e3140007 	tst	r4, #7
6030b494:	1afffff0 	bne	6030b45c <rtk_log_memory_dump_word+0x30>
6030b498:	e1a03009 	mov	r3, r9
6030b49c:	e3a02041 	mov	r2, #65	; 0x41
6030b4a0:	e1a01006 	mov	r1, r6
6030b4a4:	e3a00001 	mov	r0, #1
6030b4a8:	e58d5000 	str	r5, [sp]
6030b4ac:	ebffff30 	bl	6030b174 <rtk_log_write_nano>
6030b4b0:	eaffffe9 	b	6030b45c <rtk_log_memory_dump_word+0x30>
6030b4b4:	e3a02041 	mov	r2, #65	; 0x41
6030b4b8:	e1a01006 	mov	r1, r6
6030b4bc:	e3a00001 	mov	r0, #1
6030b4c0:	e58d8000 	str	r8, [sp]
6030b4c4:	e3043a9c 	movw	r3, #19100	; 0x4a9c
6030b4c8:	e3463031 	movt	r3, #24625	; 0x6031
6030b4cc:	ebffff28 	bl	6030b174 <rtk_log_write_nano>
6030b4d0:	eaffffe1 	b	6030b45c <rtk_log_memory_dump_word+0x30>
6030b4d4:	e3a02041 	mov	r2, #65	; 0x41
6030b4d8:	e3a00001 	mov	r0, #1
6030b4dc:	e3043a1c 	movw	r3, #18972	; 0x4a1c
6030b4e0:	e3463031 	movt	r3, #24625	; 0x6031
6030b4e4:	e30415a4 	movw	r1, #17828	; 0x45a4
6030b4e8:	e3461031 	movt	r1, #24625	; 0x6031
6030b4ec:	e28dd00c 	add	sp, sp, #12
6030b4f0:	e8bd43f0 	pop	{r4, r5, r6, r7, r8, r9, lr}
6030b4f4:	eaffff1e 	b	6030b174 <rtk_log_write_nano>

6030b4f8 <rtk_log_memory_dump_byte>:
6030b4f8:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
6030b4fc:	e2517000 	subs	r7, r1, #0
6030b500:	e24dd00c 	sub	sp, sp, #12
6030b504:	0a000025 	beq	6030b5a0 <rtk_log_memory_dump_byte+0xa8>
6030b508:	e3049aa4 	movw	r9, #19108	; 0x4aa4
6030b50c:	e3469031 	movt	r9, #24625	; 0x6031
6030b510:	e30465a4 	movw	r6, #17828	; 0x45a4
6030b514:	e3466031 	movt	r6, #24625	; 0x6031
6030b518:	e1a08000 	mov	r8, r0
6030b51c:	e1a05000 	mov	r5, r0
6030b520:	e3a04000 	mov	r4, #0
6030b524:	ea00000a 	b	6030b554 <rtk_log_memory_dump_byte+0x5c>
6030b528:	e4d53001 	ldrb	r3, [r5], #1
6030b52c:	e3a00001 	mov	r0, #1
6030b530:	e0844000 	add	r4, r4, r0
6030b534:	e58d3000 	str	r3, [sp]
6030b538:	e3a02041 	mov	r2, #65	; 0x41
6030b53c:	e1a01006 	mov	r1, r6
6030b540:	e3043ab8 	movw	r3, #19128	; 0x4ab8
6030b544:	e3463031 	movt	r3, #24625	; 0x6031
6030b548:	ebffff09 	bl	6030b174 <rtk_log_write_nano>
6030b54c:	e1540007 	cmp	r4, r7
6030b550:	0a000012 	beq	6030b5a0 <rtk_log_memory_dump_byte+0xa8>
6030b554:	e3540000 	cmp	r4, #0
6030b558:	0a000008 	beq	6030b580 <rtk_log_memory_dump_byte+0x88>
6030b55c:	e3140007 	tst	r4, #7
6030b560:	1afffff0 	bne	6030b528 <rtk_log_memory_dump_byte+0x30>
6030b564:	e1a03009 	mov	r3, r9
6030b568:	e3a02041 	mov	r2, #65	; 0x41
6030b56c:	e1a01006 	mov	r1, r6
6030b570:	e3a00001 	mov	r0, #1
6030b574:	e58d5000 	str	r5, [sp]
6030b578:	ebfffefd 	bl	6030b174 <rtk_log_write_nano>
6030b57c:	eaffffe9 	b	6030b528 <rtk_log_memory_dump_byte+0x30>
6030b580:	e3a02041 	mov	r2, #65	; 0x41
6030b584:	e1a01006 	mov	r1, r6
6030b588:	e3a00001 	mov	r0, #1
6030b58c:	e58d8000 	str	r8, [sp]
6030b590:	e3043a9c 	movw	r3, #19100	; 0x4a9c
6030b594:	e3463031 	movt	r3, #24625	; 0x6031
6030b598:	ebfffef5 	bl	6030b174 <rtk_log_write_nano>
6030b59c:	eaffffe1 	b	6030b528 <rtk_log_memory_dump_byte+0x30>
6030b5a0:	e3a02041 	mov	r2, #65	; 0x41
6030b5a4:	e3a00001 	mov	r0, #1
6030b5a8:	e3043a1c 	movw	r3, #18972	; 0x4a1c
6030b5ac:	e3463031 	movt	r3, #24625	; 0x6031
6030b5b0:	e30415a4 	movw	r1, #17828	; 0x45a4
6030b5b4:	e3461031 	movt	r1, #24625	; 0x6031
6030b5b8:	e28dd00c 	add	sp, sp, #12
6030b5bc:	e8bd43f0 	pop	{r4, r5, r6, r7, r8, r9, lr}
6030b5c0:	eafffeeb 	b	6030b174 <rtk_log_write_nano>

6030b5c4 <_memset>:
6030b5c4:	e3100003 	tst	r0, #3
6030b5c8:	0a00003f 	beq	6030b6cc <_memset+0x108>
6030b5cc:	e3520000 	cmp	r2, #0
6030b5d0:	e242c001 	sub	ip, r2, #1
6030b5d4:	012fff1e 	bxeq	lr
6030b5d8:	e6ef2071 	uxtb	r2, r1
6030b5dc:	e1a03000 	mov	r3, r0
6030b5e0:	ea000002 	b	6030b5f0 <_memset+0x2c>
6030b5e4:	e24cc001 	sub	ip, ip, #1
6030b5e8:	e37c0001 	cmn	ip, #1
6030b5ec:	012fff1e 	bxeq	lr
6030b5f0:	e4c32001 	strb	r2, [r3], #1
6030b5f4:	e3130003 	tst	r3, #3
6030b5f8:	1afffff9 	bne	6030b5e4 <_memset+0x20>
6030b5fc:	e35c0003 	cmp	ip, #3
6030b600:	9a000027 	bls	6030b6a4 <_memset+0xe0>
6030b604:	e92d4030 	push	{r4, r5, lr}
6030b608:	e6efe071 	uxtb	lr, r1
6030b60c:	e35c000f 	cmp	ip, #15
6030b610:	e18ee40e 	orr	lr, lr, lr, lsl #8
6030b614:	e18ee80e 	orr	lr, lr, lr, lsl #16
6030b618:	9a00002e 	bls	6030b6d8 <_memset+0x114>
6030b61c:	e24c2010 	sub	r2, ip, #16
6030b620:	e3c2400f 	bic	r4, r2, #15
6030b624:	e2835020 	add	r5, r3, #32
6030b628:	e0855004 	add	r5, r5, r4
6030b62c:	e1a04222 	lsr	r4, r2, #4
6030b630:	e2832010 	add	r2, r3, #16
6030b634:	e502e010 	str	lr, [r2, #-16]
6030b638:	e502e00c 	str	lr, [r2, #-12]
6030b63c:	e502e008 	str	lr, [r2, #-8]
6030b640:	e502e004 	str	lr, [r2, #-4]
6030b644:	e2822010 	add	r2, r2, #16
6030b648:	e1520005 	cmp	r2, r5
6030b64c:	1afffff8 	bne	6030b634 <_memset+0x70>
6030b650:	e2842001 	add	r2, r4, #1
6030b654:	e31c000c 	tst	ip, #12
6030b658:	e0832202 	add	r2, r3, r2, lsl #4
6030b65c:	e20cc00f 	and	ip, ip, #15
6030b660:	0a000017 	beq	6030b6c4 <_memset+0x100>
6030b664:	e24c3004 	sub	r3, ip, #4
6030b668:	e3c33003 	bic	r3, r3, #3
6030b66c:	e2833004 	add	r3, r3, #4
6030b670:	e0823003 	add	r3, r2, r3
6030b674:	e482e004 	str	lr, [r2], #4
6030b678:	e1530002 	cmp	r3, r2
6030b67c:	1afffffc 	bne	6030b674 <_memset+0xb0>
6030b680:	e20cc003 	and	ip, ip, #3
6030b684:	e35c0000 	cmp	ip, #0
6030b688:	08bd8030 	popeq	{r4, r5, pc}
6030b68c:	e6ef2071 	uxtb	r2, r1
6030b690:	e083c00c 	add	ip, r3, ip
6030b694:	e4c32001 	strb	r2, [r3], #1
6030b698:	e15c0003 	cmp	ip, r3
6030b69c:	1afffffc 	bne	6030b694 <_memset+0xd0>
6030b6a0:	e8bd8030 	pop	{r4, r5, pc}
6030b6a4:	e35c0000 	cmp	ip, #0
6030b6a8:	012fff1e 	bxeq	lr
6030b6ac:	e6ef2071 	uxtb	r2, r1
6030b6b0:	e083c00c 	add	ip, r3, ip
6030b6b4:	e4c32001 	strb	r2, [r3], #1
6030b6b8:	e15c0003 	cmp	ip, r3
6030b6bc:	1afffffc 	bne	6030b6b4 <_memset+0xf0>
6030b6c0:	e12fff1e 	bx	lr
6030b6c4:	e1a03002 	mov	r3, r2
6030b6c8:	eaffffed 	b	6030b684 <_memset+0xc0>
6030b6cc:	e1a03000 	mov	r3, r0
6030b6d0:	e1a0c002 	mov	ip, r2
6030b6d4:	eaffffc8 	b	6030b5fc <_memset+0x38>
6030b6d8:	e1a02003 	mov	r2, r3
6030b6dc:	eaffffe0 	b	6030b664 <_memset+0xa0>

6030b6e0 <_memcpy>:
6030b6e0:	e352000f 	cmp	r2, #15
6030b6e4:	9a000037 	bls	6030b7c8 <_memcpy+0xe8>
6030b6e8:	e1803001 	orr	r3, r0, r1
6030b6ec:	e3130003 	tst	r3, #3
6030b6f0:	1a000040 	bne	6030b7f8 <_memcpy+0x118>
6030b6f4:	e2423010 	sub	r3, r2, #16
6030b6f8:	e92d40f0 	push	{r4, r5, r6, r7, lr}
6030b6fc:	e3c3c00f 	bic	ip, r3, #15
6030b700:	e2814020 	add	r4, r1, #32
6030b704:	e2816010 	add	r6, r1, #16
6030b708:	e2807010 	add	r7, r0, #16
6030b70c:	e084400c 	add	r4, r4, ip
6030b710:	e1a05223 	lsr	r5, r3, #4
6030b714:	e516300c 	ldr	r3, [r6, #-12]
6030b718:	e516e010 	ldr	lr, [r6, #-16]
6030b71c:	e516c008 	ldr	ip, [r6, #-8]
6030b720:	e507300c 	str	r3, [r7, #-12]
6030b724:	e2866010 	add	r6, r6, #16
6030b728:	e5163014 	ldr	r3, [r6, #-20]	; 0xffffffec
6030b72c:	e507e010 	str	lr, [r7, #-16]
6030b730:	e507c008 	str	ip, [r7, #-8]
6030b734:	e5073004 	str	r3, [r7, #-4]
6030b738:	e1560004 	cmp	r6, r4
6030b73c:	e2877010 	add	r7, r7, #16
6030b740:	1afffff3 	bne	6030b714 <_memcpy+0x34>
6030b744:	e2853001 	add	r3, r5, #1
6030b748:	e312000c 	tst	r2, #12
6030b74c:	e1a03203 	lsl	r3, r3, #4
6030b750:	e202e00f 	and	lr, r2, #15
6030b754:	e0811003 	add	r1, r1, r3
6030b758:	01a0200e 	moveq	r2, lr
6030b75c:	e0803003 	add	r3, r0, r3
6030b760:	0a00000d 	beq	6030b79c <_memcpy+0xbc>
6030b764:	e2435004 	sub	r5, r3, #4
6030b768:	e1a04001 	mov	r4, r1
6030b76c:	e494c004 	ldr	ip, [r4], #4
6030b770:	e5a5c004 	str	ip, [r5, #4]!
6030b774:	e04ec004 	sub	ip, lr, r4
6030b778:	e081c00c 	add	ip, r1, ip
6030b77c:	e35c0003 	cmp	ip, #3
6030b780:	8afffff9 	bhi	6030b76c <_memcpy+0x8c>
6030b784:	e24ec004 	sub	ip, lr, #4
6030b788:	e3ccc003 	bic	ip, ip, #3
6030b78c:	e28cc004 	add	ip, ip, #4
6030b790:	e2022003 	and	r2, r2, #3
6030b794:	e083300c 	add	r3, r3, ip
6030b798:	e081100c 	add	r1, r1, ip
6030b79c:	e3520000 	cmp	r2, #0
6030b7a0:	e242c001 	sub	ip, r2, #1
6030b7a4:	08bd80f0 	popeq	{r4, r5, r6, r7, pc}
6030b7a8:	e28cc001 	add	ip, ip, #1
6030b7ac:	e2433001 	sub	r3, r3, #1
6030b7b0:	e081c00c 	add	ip, r1, ip
6030b7b4:	e4d12001 	ldrb	r2, [r1], #1
6030b7b8:	e5e32001 	strb	r2, [r3, #1]!
6030b7bc:	e151000c 	cmp	r1, ip
6030b7c0:	1afffffb 	bne	6030b7b4 <_memcpy+0xd4>
6030b7c4:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
6030b7c8:	e3520000 	cmp	r2, #0
6030b7cc:	e1a03000 	mov	r3, r0
6030b7d0:	e242c001 	sub	ip, r2, #1
6030b7d4:	012fff1e 	bxeq	lr
6030b7d8:	e28cc001 	add	ip, ip, #1
6030b7dc:	e2433001 	sub	r3, r3, #1
6030b7e0:	e081c00c 	add	ip, r1, ip
6030b7e4:	e4d12001 	ldrb	r2, [r1], #1
6030b7e8:	e5e32001 	strb	r2, [r3, #1]!
6030b7ec:	e151000c 	cmp	r1, ip
6030b7f0:	1afffffb 	bne	6030b7e4 <_memcpy+0x104>
6030b7f4:	e12fff1e 	bx	lr
6030b7f8:	e242c001 	sub	ip, r2, #1
6030b7fc:	e1a03000 	mov	r3, r0
6030b800:	eafffff4 	b	6030b7d8 <_memcpy+0xf8>

6030b804 <_strcmp>:
6030b804:	e1803001 	orr	r3, r0, r1
6030b808:	e3130003 	tst	r3, #3
6030b80c:	0a000005 	beq	6030b828 <_strcmp+0x24>
6030b810:	e5d03000 	ldrb	r3, [r0]
6030b814:	e5d12000 	ldrb	r2, [r1]
6030b818:	e3530000 	cmp	r3, #0
6030b81c:	1a00001d 	bne	6030b898 <_strcmp+0x94>
6030b820:	e0430002 	sub	r0, r3, r2
6030b824:	e12fff1e 	bx	lr
6030b828:	e5903000 	ldr	r3, [r0]
6030b82c:	e5912000 	ldr	r2, [r1]
6030b830:	e1530002 	cmp	r3, r2
6030b834:	1afffff5 	bne	6030b810 <_strcmp+0xc>
6030b838:	e92d4030 	push	{r4, r5, lr}
6030b83c:	e281c004 	add	ip, r1, #4
6030b840:	e30f5eff 	movw	r5, #65279	; 0xfeff
6030b844:	e34f5efe 	movt	r5, #65278	; 0xfefe
6030b848:	e3084080 	movw	r4, #32896	; 0x8080
6030b84c:	e3484080 	movt	r4, #32896	; 0x8080
6030b850:	e280e004 	add	lr, r0, #4
6030b854:	ea000004 	b	6030b86c <_strcmp+0x68>
6030b858:	e59c2000 	ldr	r2, [ip]
6030b85c:	e49e3004 	ldr	r3, [lr], #4
6030b860:	e28cc004 	add	ip, ip, #4
6030b864:	e1530002 	cmp	r3, r2
6030b868:	1a00000f 	bne	6030b8ac <_strcmp+0xa8>
6030b86c:	e0832005 	add	r2, r3, r5
6030b870:	e1c23003 	bic	r3, r2, r3
6030b874:	e1a0100c 	mov	r1, ip
6030b878:	e1a0000e 	mov	r0, lr
6030b87c:	e1130004 	tst	r3, r4
6030b880:	0afffff4 	beq	6030b858 <_strcmp+0x54>
6030b884:	e3a00000 	mov	r0, #0
6030b888:	e8bd8030 	pop	{r4, r5, pc}
6030b88c:	e5f03001 	ldrb	r3, [r0, #1]!
6030b890:	e3530000 	cmp	r3, #0
6030b894:	0a000015 	beq	6030b8f0 <_strcmp+0xec>
6030b898:	e1a0c001 	mov	ip, r1
6030b89c:	e4d12001 	ldrb	r2, [r1], #1
6030b8a0:	e1520003 	cmp	r2, r3
6030b8a4:	0afffff8 	beq	6030b88c <_strcmp+0x88>
6030b8a8:	eaffffdc 	b	6030b820 <_strcmp+0x1c>
6030b8ac:	e5d03000 	ldrb	r3, [r0]
6030b8b0:	e5d12000 	ldrb	r2, [r1]
6030b8b4:	e3530000 	cmp	r3, #0
6030b8b8:	1a000003 	bne	6030b8cc <_strcmp+0xc8>
6030b8bc:	ea000006 	b	6030b8dc <_strcmp+0xd8>
6030b8c0:	e5f03001 	ldrb	r3, [r0, #1]!
6030b8c4:	e3530000 	cmp	r3, #0
6030b8c8:	0a000005 	beq	6030b8e4 <_strcmp+0xe0>
6030b8cc:	e1a0c001 	mov	ip, r1
6030b8d0:	e4d12001 	ldrb	r2, [r1], #1
6030b8d4:	e1520003 	cmp	r2, r3
6030b8d8:	0afffff8 	beq	6030b8c0 <_strcmp+0xbc>
6030b8dc:	e0430002 	sub	r0, r3, r2
6030b8e0:	e8bd8030 	pop	{r4, r5, pc}
6030b8e4:	e5dc2001 	ldrb	r2, [ip, #1]
6030b8e8:	e0430002 	sub	r0, r3, r2
6030b8ec:	e8bd8030 	pop	{r4, r5, pc}
6030b8f0:	e5dc2001 	ldrb	r2, [ip, #1]
6030b8f4:	eaffffc9 	b	6030b820 <_strcmp+0x1c>

6030b8f8 <_strlen>:
6030b8f8:	e3100003 	tst	r0, #3
6030b8fc:	0a00000b 	beq	6030b930 <_strlen+0x38>
6030b900:	e1a03000 	mov	r3, r0
6030b904:	ea000001 	b	6030b910 <_strlen+0x18>
6030b908:	e3130003 	tst	r3, #3
6030b90c:	0a000008 	beq	6030b934 <_strlen+0x3c>
6030b910:	e1a01003 	mov	r1, r3
6030b914:	e2833001 	add	r3, r3, #1
6030b918:	e1a02003 	mov	r2, r3
6030b91c:	e5d1c000 	ldrb	ip, [r1]
6030b920:	e35c0000 	cmp	ip, #0
6030b924:	1afffff7 	bne	6030b908 <_strlen+0x10>
6030b928:	e0410000 	sub	r0, r1, r0
6030b92c:	e12fff1e 	bx	lr
6030b930:	e1a02000 	mov	r2, r0
6030b934:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
6030b938:	e30feeff 	movw	lr, #65279	; 0xfeff
6030b93c:	e34feefe 	movt	lr, #65278	; 0xfefe
6030b940:	e5921000 	ldr	r1, [r2]
6030b944:	e308c080 	movw	ip, #32896	; 0x8080
6030b948:	e348c080 	movt	ip, #32896	; 0x8080
6030b94c:	e081300e 	add	r3, r1, lr
6030b950:	e1c33001 	bic	r3, r3, r1
6030b954:	e113000c 	tst	r3, ip
6030b958:	1a000004 	bne	6030b970 <_strlen+0x78>
6030b95c:	e5b21004 	ldr	r1, [r2, #4]!
6030b960:	e081300e 	add	r3, r1, lr
6030b964:	e1c33001 	bic	r3, r3, r1
6030b968:	e113000c 	tst	r3, ip
6030b96c:	0afffffa 	beq	6030b95c <_strlen+0x64>
6030b970:	e5d23000 	ldrb	r3, [r2]
6030b974:	e3530000 	cmp	r3, #0
6030b978:	0a000002 	beq	6030b988 <_strlen+0x90>
6030b97c:	e5f23001 	ldrb	r3, [r2, #1]!
6030b980:	e3530000 	cmp	r3, #0
6030b984:	1afffffc 	bne	6030b97c <_strlen+0x84>
6030b988:	e0420000 	sub	r0, r2, r0
6030b98c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

6030b990 <_stricmp>:
6030b990:	e4d03001 	ldrb	r3, [r0], #1
6030b994:	e4d12001 	ldrb	r2, [r1], #1
6030b998:	e1530002 	cmp	r3, r2
6030b99c:	0a000013 	beq	6030b9f0 <_stricmp+0x60>
6030b9a0:	e383c020 	orr	ip, r3, #32
6030b9a4:	e92d4010 	push	{r4, lr}
6030b9a8:	e24ce061 	sub	lr, ip, #97	; 0x61
6030b9ac:	e35e0019 	cmp	lr, #25
6030b9b0:	8a00000c 	bhi	6030b9e8 <_stricmp+0x58>
6030b9b4:	e3824020 	orr	r4, r2, #32
6030b9b8:	e15c0004 	cmp	ip, r4
6030b9bc:	1a000009 	bne	6030b9e8 <_stricmp+0x58>
6030b9c0:	e3530000 	cmp	r3, #0
6030b9c4:	0a00000d 	beq	6030ba00 <_stricmp+0x70>
6030b9c8:	e4d03001 	ldrb	r3, [r0], #1
6030b9cc:	e4d12001 	ldrb	r2, [r1], #1
6030b9d0:	e1530002 	cmp	r3, r2
6030b9d4:	0afffff9 	beq	6030b9c0 <_stricmp+0x30>
6030b9d8:	e383c020 	orr	ip, r3, #32
6030b9dc:	e24ce061 	sub	lr, ip, #97	; 0x61
6030b9e0:	e35e0019 	cmp	lr, #25
6030b9e4:	9afffff2 	bls	6030b9b4 <_stricmp+0x24>
6030b9e8:	e3a00001 	mov	r0, #1
6030b9ec:	e8bd8010 	pop	{r4, pc}
6030b9f0:	e3530000 	cmp	r3, #0
6030b9f4:	1affffe5 	bne	6030b990 <_stricmp>
6030b9f8:	e1a00003 	mov	r0, r3
6030b9fc:	e12fff1e 	bx	lr
6030ba00:	e1a00003 	mov	r0, r3
6030ba04:	e8bd8010 	pop	{r4, pc}

6030ba08 <_strtoul>:
6030ba08:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
6030ba0c:	e1a0c000 	mov	ip, r0
6030ba10:	e1a04000 	mov	r4, r0
6030ba14:	e1a06001 	mov	r6, r1
6030ba18:	e1a05002 	mov	r5, r2
6030ba1c:	e1a0200c 	mov	r2, ip
6030ba20:	e4dc3001 	ldrb	r3, [ip], #1
6030ba24:	e243e009 	sub	lr, r3, #9
6030ba28:	e3530020 	cmp	r3, #32
6030ba2c:	0afffffa 	beq	6030ba1c <_strtoul+0x14>
6030ba30:	e353002c 	cmp	r3, #44	; 0x2c
6030ba34:	135e0004 	cmpne	lr, #4
6030ba38:	93a0e001 	movls	lr, #1
6030ba3c:	83a0e000 	movhi	lr, #0
6030ba40:	9afffff5 	bls	6030ba1c <_strtoul+0x14>
6030ba44:	e353002d 	cmp	r3, #45	; 0x2d
6030ba48:	0a000047 	beq	6030bb6c <_strtoul+0x164>
6030ba4c:	e353002b 	cmp	r3, #43	; 0x2b
6030ba50:	0282c002 	addeq	ip, r2, #2
6030ba54:	05d23001 	ldrbeq	r3, [r2, #1]
6030ba58:	e3d52010 	bics	r2, r5, #16
6030ba5c:	0a000032 	beq	6030bb2c <_strtoul+0x124>
6030ba60:	e3e07000 	mvn	r7, #0
6030ba64:	e1a09005 	mov	r9, r5
6030ba68:	e737f517 	udiv	r7, r7, r5
6030ba6c:	e0080795 	mul	r8, r5, r7
6030ba70:	e1e08008 	mvn	r8, r8
6030ba74:	e3a01000 	mov	r1, #0
6030ba78:	e1a00001 	mov	r0, r1
6030ba7c:	ea000009 	b	6030baa8 <_strtoul+0xa0>
6030ba80:	e0402007 	sub	r2, r0, r7
6030ba84:	e16f2f12 	clz	r2, r2
6030ba88:	e1530008 	cmp	r3, r8
6030ba8c:	e1a022a2 	lsr	r2, r2, #5
6030ba90:	d3a02000 	movle	r2, #0
6030ba94:	e3520000 	cmp	r2, #0
6030ba98:	1a000017 	bne	6030bafc <_strtoul+0xf4>
6030ba9c:	e0203099 	mla	r0, r9, r0, r3
6030baa0:	e3a01001 	mov	r1, #1
6030baa4:	e4dc3001 	ldrb	r3, [ip], #1
6030baa8:	e2432030 	sub	r2, r3, #48	; 0x30
6030baac:	e6efa072 	uxtb	sl, r2
6030bab0:	e35a0009 	cmp	sl, #9
6030bab4:	91a03002 	movls	r3, r2
6030bab8:	9a000008 	bls	6030bae0 <_strtoul+0xd8>
6030babc:	e3c32020 	bic	r2, r3, #32
6030bac0:	e2422041 	sub	r2, r2, #65	; 0x41
6030bac4:	e243a041 	sub	sl, r3, #65	; 0x41
6030bac8:	e3520019 	cmp	r2, #25
6030bacc:	8a00000c 	bhi	6030bb04 <_strtoul+0xfc>
6030bad0:	e35a001a 	cmp	sl, #26
6030bad4:	33a02037 	movcc	r2, #55	; 0x37
6030bad8:	23a02057 	movcs	r2, #87	; 0x57
6030badc:	e0433002 	sub	r3, r3, r2
6030bae0:	e1550003 	cmp	r5, r3
6030bae4:	da000006 	ble	6030bb04 <_strtoul+0xfc>
6030bae8:	e1500007 	cmp	r0, r7
6030baec:	93a02000 	movls	r2, #0
6030baf0:	83a02001 	movhi	r2, #1
6030baf4:	e1922fa1 	orrs	r2, r2, r1, lsr #31
6030baf8:	0affffe0 	beq	6030ba80 <_strtoul+0x78>
6030bafc:	e3e01000 	mvn	r1, #0
6030bb00:	eaffffe7 	b	6030baa4 <_strtoul+0x9c>
6030bb04:	e3710001 	cmn	r1, #1
6030bb08:	0a000011 	beq	6030bb54 <_strtoul+0x14c>
6030bb0c:	e35e0000 	cmp	lr, #0
6030bb10:	12600000 	rsbne	r0, r0, #0
6030bb14:	e3560000 	cmp	r6, #0
6030bb18:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
6030bb1c:	e3510000 	cmp	r1, #0
6030bb20:	1a00000e 	bne	6030bb60 <_strtoul+0x158>
6030bb24:	e5864000 	str	r4, [r6]
6030bb28:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
6030bb2c:	e3530030 	cmp	r3, #48	; 0x30
6030bb30:	0a000011 	beq	6030bb7c <_strtoul+0x174>
6030bb34:	e3550000 	cmp	r5, #0
6030bb38:	1affffc8 	bne	6030ba60 <_strtoul+0x58>
6030bb3c:	e3a0500a 	mov	r5, #10
6030bb40:	e3097999 	movw	r7, #39321	; 0x9999
6030bb44:	e3417999 	movt	r7, #6553	; 0x1999
6030bb48:	e3a08005 	mov	r8, #5
6030bb4c:	e1a09005 	mov	r9, r5
6030bb50:	eaffffc7 	b	6030ba74 <_strtoul+0x6c>
6030bb54:	e3560000 	cmp	r6, #0
6030bb58:	e1a00001 	mov	r0, r1
6030bb5c:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
6030bb60:	e24c4001 	sub	r4, ip, #1
6030bb64:	e5864000 	str	r4, [r6]
6030bb68:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
6030bb6c:	e5d23001 	ldrb	r3, [r2, #1]
6030bb70:	e282c002 	add	ip, r2, #2
6030bb74:	e3a0e001 	mov	lr, #1
6030bb78:	eaffffb6 	b	6030ba58 <_strtoul+0x50>
6030bb7c:	e5dc2000 	ldrb	r2, [ip]
6030bb80:	e20220df 	and	r2, r2, #223	; 0xdf
6030bb84:	e3520058 	cmp	r2, #88	; 0x58
6030bb88:	1a000006 	bne	6030bba8 <_strtoul+0x1a0>
6030bb8c:	e3a05010 	mov	r5, #16
6030bb90:	e5dc3001 	ldrb	r3, [ip, #1]
6030bb94:	e3a0800f 	mov	r8, #15
6030bb98:	e28cc002 	add	ip, ip, #2
6030bb9c:	e1a09005 	mov	r9, r5
6030bba0:	e3e0720f 	mvn	r7, #-268435456	; 0xf0000000
6030bba4:	eaffffb2 	b	6030ba74 <_strtoul+0x6c>
6030bba8:	e3550000 	cmp	r5, #0
6030bbac:	1affffab 	bne	6030ba60 <_strtoul+0x58>
6030bbb0:	e3a05008 	mov	r5, #8
6030bbb4:	e3a08007 	mov	r8, #7
6030bbb8:	e1a09005 	mov	r9, r5
6030bbbc:	e3e0720e 	mvn	r7, #-536870912	; 0xe0000000
6030bbc0:	eaffffab 	b	6030ba74 <_strtoul+0x6c>

6030bbc4 <_2char2hex>:
6030bbc4:	e2403030 	sub	r3, r0, #48	; 0x30
6030bbc8:	e6ef2073 	uxtb	r2, r3
6030bbcc:	e3520009 	cmp	r2, #9
6030bbd0:	97a30053 	sbfxls	r0, r3, #0, #4
6030bbd4:	91a00200 	lslls	r0, r0, #4
6030bbd8:	9a000008 	bls	6030bc00 <_2char2hex+0x3c>
6030bbdc:	e2403061 	sub	r3, r0, #97	; 0x61
6030bbe0:	e3530005 	cmp	r3, #5
6030bbe4:	9a000013 	bls	6030bc38 <_2char2hex+0x74>
6030bbe8:	e2403041 	sub	r3, r0, #65	; 0x41
6030bbec:	e3530005 	cmp	r3, #5
6030bbf0:	92400037 	subls	r0, r0, #55	; 0x37
6030bbf4:	83e0000f 	mvnhi	r0, #15
6030bbf8:	97a33050 	sbfxls	r3, r0, #0, #4
6030bbfc:	91a00203 	lslls	r0, r3, #4
6030bc00:	e2413030 	sub	r3, r1, #48	; 0x30
6030bc04:	e6ef2073 	uxtb	r2, r3
6030bc08:	e3520009 	cmp	r2, #9
6030bc0c:	9a000010 	bls	6030bc54 <_2char2hex+0x90>
6030bc10:	e2413061 	sub	r3, r1, #97	; 0x61
6030bc14:	e3530005 	cmp	r3, #5
6030bc18:	9a000010 	bls	6030bc60 <_2char2hex+0x9c>
6030bc1c:	e2413041 	sub	r3, r1, #65	; 0x41
6030bc20:	e3530005 	cmp	r3, #5
6030bc24:	92411037 	subls	r1, r1, #55	; 0x37
6030bc28:	91800001 	orrls	r0, r0, r1
6030bc2c:	96ef0070 	uxtbls	r0, r0
6030bc30:	83a000ff 	movhi	r0, #255	; 0xff
6030bc34:	e12fff1e 	bx	lr
6030bc38:	e2403057 	sub	r3, r0, #87	; 0x57
6030bc3c:	e7a33053 	sbfx	r3, r3, #0, #4
6030bc40:	e1a00203 	lsl	r0, r3, #4
6030bc44:	e2413030 	sub	r3, r1, #48	; 0x30
6030bc48:	e6ef2073 	uxtb	r2, r3
6030bc4c:	e3520009 	cmp	r2, #9
6030bc50:	8affffee 	bhi	6030bc10 <_2char2hex+0x4c>
6030bc54:	e1800003 	orr	r0, r0, r3
6030bc58:	e6ef0070 	uxtb	r0, r0
6030bc5c:	e12fff1e 	bx	lr
6030bc60:	e2411057 	sub	r1, r1, #87	; 0x57
6030bc64:	e1800001 	orr	r0, r0, r1
6030bc68:	e6ef0070 	uxtb	r0, r0
6030bc6c:	e12fff1e 	bx	lr

6030bc70 <app_pre_example>:
6030bc70:	e12fff1e 	bx	lr

6030bc74 <app_example>:
6030bc74:	e12fff1e 	bx	lr

6030bc78 <app_pmu_init>:
6030bc78:	e92d4010 	push	{r4, lr}
6030bc7c:	e3a00000 	mov	r0, #0
6030bc80:	ebfff7c8 	bl	60309ba8 <pmu_set_sleep_type>
6030bc84:	e8bd4010 	pop	{r4, lr}
6030bc88:	e3a00000 	mov	r0, #0
6030bc8c:	eafff7cf 	b	60309bd0 <pmu_acquire_deepwakelock>

6030bc90 <main>:
6030bc90:	e92d4010 	push	{r4, lr}
6030bc94:	e3a02057 	mov	r2, #87	; 0x57
6030bc98:	e3a00003 	mov	r0, #3
6030bc9c:	e3043ac0 	movw	r3, #19136	; 0x4ac0
6030bca0:	e3463031 	movt	r3, #24625	; 0x6031
6030bca4:	e3041afc 	movw	r1, #19196	; 0x4afc
6030bca8:	e3461031 	movt	r1, #24625	; 0x6031
6030bcac:	ebfffcfc 	bl	6030b0a4 <rtk_log_write>
6030bcb0:	e3a02045 	mov	r2, #69	; 0x45
6030bcb4:	e3a00002 	mov	r0, #2
6030bcb8:	e3043b04 	movw	r3, #19204	; 0x4b04
6030bcbc:	e3463031 	movt	r3, #24625	; 0x6031
6030bcc0:	e3041afc 	movw	r1, #19196	; 0x4afc
6030bcc4:	e3461031 	movt	r1, #24625	; 0x6031
6030bcc8:	ebfffcf5 	bl	6030b0a4 <rtk_log_write>
6030bccc:	e3a02045 	mov	r2, #69	; 0x45
6030bcd0:	e3a00002 	mov	r0, #2
6030bcd4:	e3043b5c 	movw	r3, #19292	; 0x4b5c
6030bcd8:	e3463031 	movt	r3, #24625	; 0x6031
6030bcdc:	e3041afc 	movw	r1, #19196	; 0x4afc
6030bce0:	e3461031 	movt	r1, #24625	; 0x6031
6030bce4:	ebfffcee 	bl	6030b0a4 <rtk_log_write>
6030bce8:	e3a02045 	mov	r2, #69	; 0x45
6030bcec:	e3a00002 	mov	r0, #2
6030bcf0:	e3043b9c 	movw	r3, #19356	; 0x4b9c
6030bcf4:	e3463031 	movt	r3, #24625	; 0x6031
6030bcf8:	e3041afc 	movw	r1, #19196	; 0x4afc
6030bcfc:	e3461031 	movt	r1, #24625	; 0x6031
6030bd00:	ebfffce7 	bl	6030b0a4 <rtk_log_write>
6030bd04:	e3a02045 	mov	r2, #69	; 0x45
6030bd08:	e3a00002 	mov	r0, #2
6030bd0c:	e3043bf8 	movw	r3, #19448	; 0x4bf8
6030bd10:	e3463031 	movt	r3, #24625	; 0x6031
6030bd14:	e3041afc 	movw	r1, #19196	; 0x4afc
6030bd18:	e3461031 	movt	r1, #24625	; 0x6031
6030bd1c:	ebfffce0 	bl	6030b0a4 <rtk_log_write>
6030bd20:	e3a02045 	mov	r2, #69	; 0x45
6030bd24:	e3a00002 	mov	r0, #2
6030bd28:	e3043c68 	movw	r3, #19560	; 0x4c68
6030bd2c:	e3463031 	movt	r3, #24625	; 0x6031
6030bd30:	e3041afc 	movw	r1, #19196	; 0x4afc
6030bd34:	e3461031 	movt	r1, #24625	; 0x6031
6030bd38:	ebfffcd9 	bl	6030b0a4 <rtk_log_write>
6030bd3c:	e3a02045 	mov	r2, #69	; 0x45
6030bd40:	e3a00002 	mov	r0, #2
6030bd44:	e3043cd4 	movw	r3, #19668	; 0x4cd4
6030bd48:	e3463031 	movt	r3, #24625	; 0x6031
6030bd4c:	e3041afc 	movw	r1, #19196	; 0x4afc
6030bd50:	e3461031 	movt	r1, #24625	; 0x6031
6030bd54:	ebfffcd2 	bl	6030b0a4 <rtk_log_write>
6030bd58:	e3a02057 	mov	r2, #87	; 0x57
6030bd5c:	e3a00003 	mov	r0, #3
6030bd60:	e3043d2c 	movw	r3, #19756	; 0x4d2c
6030bd64:	e3463031 	movt	r3, #24625	; 0x6031
6030bd68:	e3041afc 	movw	r1, #19196	; 0x4afc
6030bd6c:	e3461031 	movt	r1, #24625	; 0x6031
6030bd70:	ebfffccb 	bl	6030b0a4 <rtk_log_write>
6030bd74:	e3084fa4 	movw	r4, #36772	; 0x8fa4
6030bd78:	e3464030 	movt	r4, #24624	; 0x6030
6030bd7c:	e3a01018 	mov	r1, #24
6030bd80:	e3a030a0 	mov	r3, #160	; 0xa0
6030bd84:	e3a02d16 	mov	r2, #1408	; 0x580
6030bd88:	e3442100 	movt	r2, #16640	; 0x4100
6030bd8c:	e30a0228 	movw	r0, #41512	; 0xa228
6030bd90:	e3460030 	movt	r0, #24624	; 0x6030
6030bd94:	e12fff34 	blx	r4
6030bd98:	e3a00018 	mov	r0, #24
6030bd9c:	e3083f9c 	movw	r3, #36764	; 0x8f9c
6030bda0:	e3463030 	movt	r3, #24624	; 0x6030
6030bda4:	e12fff33 	blx	r3
6030bda8:	e3a00d16 	mov	r0, #1408	; 0x580
6030bdac:	e3440100 	movt	r0, #16640	; 0x4100
6030bdb0:	ebfff7a6 	bl	60309c50 <ipc_table_init>
6030bdb4:	ebffffaf 	bl	6030bc78 <app_pmu_init>
6030bdb8:	ebffffac 	bl	6030bc70 <app_pre_example>
6030bdbc:	e3a01000 	mov	r1, #0
6030bdc0:	e1a00001 	mov	r0, r1
6030bdc4:	e30c3ec8 	movw	r3, #52936	; 0xcec8
6030bdc8:	e3463030 	movt	r3, #24624	; 0x6030
6030bdcc:	e12fff33 	blx	r3
6030bdd0:	eb0003ca 	bl	6030cd00 <shell_init_ram>
6030bdd4:	ebffffa6 	bl	6030bc74 <app_example>
6030bdd8:	e3080768 	movw	r0, #34664	; 0x8768
6030bddc:	e3460030 	movt	r0, #24624	; 0x6030
6030bde0:	ebfff902 	bl	6030a1f0 <IPC_SEMDelayStub>
6030bde4:	e3a02049 	mov	r2, #73	; 0x49
6030bde8:	e3a00004 	mov	r0, #4
6030bdec:	e3043d68 	movw	r3, #19816	; 0x4d68
6030bdf0:	e3463031 	movt	r3, #24625	; 0x6031
6030bdf4:	e3041afc 	movw	r1, #19196	; 0x4afc
6030bdf8:	e3461031 	movt	r1, #24625	; 0x6031
6030bdfc:	ebfffca8 	bl	6030b0a4 <rtk_log_write>
6030be00:	ebfff23a 	bl	603086f0 <rtos_sched_start>
6030be04:	eafffffe 	b	6030be04 <main+0x174>

6030be08 <CmdRamHelp>:
6030be08:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
6030be0c:	e3055b28 	movw	r5, #23336	; 0x5b28
6030be10:	e3465031 	movt	r5, #24625	; 0x6031
6030be14:	e24dd008 	sub	sp, sp, #8
6030be18:	e3054ab8 	movw	r4, #23224	; 0x5ab8
6030be1c:	e3464031 	movt	r4, #24625	; 0x6031
6030be20:	e0455004 	sub	r5, r5, r4
6030be24:	e3a02041 	mov	r2, #65	; 0x41
6030be28:	e1a05225 	lsr	r5, r5, #4
6030be2c:	e3a00001 	mov	r0, #1
6030be30:	e58d5000 	str	r5, [sp]
6030be34:	e3043d84 	movw	r3, #19844	; 0x4d84
6030be38:	e3463031 	movt	r3, #24625	; 0x6031
6030be3c:	e3041dc4 	movw	r1, #19908	; 0x4dc4
6030be40:	e3461031 	movt	r1, #24625	; 0x6031
6030be44:	ebfffcca 	bl	6030b174 <rtk_log_write_nano>
6030be48:	e3550000 	cmp	r5, #0
6030be4c:	0a000010 	beq	6030be94 <CmdRamHelp+0x8c>
6030be50:	e3047dcc 	movw	r7, #19916	; 0x4dcc
6030be54:	e3467031 	movt	r7, #24625	; 0x6031
6030be58:	e30465a4 	movw	r6, #17828	; 0x45a4
6030be5c:	e3466031 	movt	r6, #24625	; 0x6031
6030be60:	e0848205 	add	r8, r4, r5, lsl #4
6030be64:	e594c00c 	ldr	ip, [r4, #12]
6030be68:	e1a03007 	mov	r3, r7
6030be6c:	e2844010 	add	r4, r4, #16
6030be70:	e3a02041 	mov	r2, #65	; 0x41
6030be74:	e1a01006 	mov	r1, r6
6030be78:	e3a00001 	mov	r0, #1
6030be7c:	e35c0000 	cmp	ip, #0
6030be80:	0a000001 	beq	6030be8c <CmdRamHelp+0x84>
6030be84:	e58dc000 	str	ip, [sp]
6030be88:	ebfffcb9 	bl	6030b174 <rtk_log_write_nano>
6030be8c:	e1540008 	cmp	r4, r8
6030be90:	1afffff3 	bne	6030be64 <CmdRamHelp+0x5c>
6030be94:	e3a00001 	mov	r0, #1
6030be98:	e3a02041 	mov	r2, #65	; 0x41
6030be9c:	e58d5000 	str	r5, [sp]
6030bea0:	e3043dd0 	movw	r3, #19920	; 0x4dd0
6030bea4:	e3463031 	movt	r3, #24625	; 0x6031
6030bea8:	e3041dc4 	movw	r1, #19908	; 0x4dc4
6030beac:	e3461031 	movt	r1, #24625	; 0x6031
6030beb0:	ebfffcaf 	bl	6030b174 <rtk_log_write_nano>
6030beb4:	e3a00001 	mov	r0, #1
6030beb8:	e28dd008 	add	sp, sp, #8
6030bebc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

6030bec0 <cmd_reboot>:
6030bec0:	e92d4070 	push	{r4, r5, r6, lr}
6030bec4:	e3a02041 	mov	r2, #65	; 0x41
6030bec8:	e1a04000 	mov	r4, r0
6030becc:	e1a05001 	mov	r5, r1
6030bed0:	e3a00001 	mov	r0, #1
6030bed4:	e3043e10 	movw	r3, #19984	; 0x4e10
6030bed8:	e3463031 	movt	r3, #24625	; 0x6031
6030bedc:	e3041dc4 	movw	r1, #19908	; 0x4dc4
6030bee0:	e3461031 	movt	r1, #24625	; 0x6031
6030bee4:	ebfffca2 	bl	6030b174 <rtk_log_write_nano>
6030bee8:	e3540000 	cmp	r4, #0
6030beec:	1a000002 	bne	6030befc <cmd_reboot+0x3c>
6030bef0:	ebfffc28 	bl	6030af98 <System_Reset>
6030bef4:	e3a00001 	mov	r0, #1
6030bef8:	e8bd8070 	pop	{r4, r5, r6, pc}
6030befc:	e5950000 	ldr	r0, [r5]
6030bf00:	e3041e20 	movw	r1, #20000	; 0x4e20
6030bf04:	e3461031 	movt	r1, #24625	; 0x6031
6030bf08:	e30b3804 	movw	r3, #47108	; 0xb804
6030bf0c:	e3463030 	movt	r3, #24624	; 0x6030
6030bf10:	e12fff33 	blx	r3
6030bf14:	e2504000 	subs	r4, r0, #0
6030bf18:	1afffff4 	bne	6030bef0 <cmd_reboot+0x30>
6030bf1c:	e1a01004 	mov	r1, r4
6030bf20:	e30f39a0 	movw	r3, #63904	; 0xf9a0
6030bf24:	e3463030 	movt	r3, #24624	; 0x6030
6030bf28:	e12fff33 	blx	r3
6030bf2c:	e3a01c02 	mov	r1, #512	; 0x200
6030bf30:	e1a00004 	mov	r0, r4
6030bf34:	e30f3968 	movw	r3, #63848	; 0xf968
6030bf38:	e3463030 	movt	r3, #24624	; 0x6030
6030bf3c:	e12fff33 	blx	r3
6030bf40:	eaffffea 	b	6030bef0 <cmd_reboot+0x30>

6030bf44 <CmdTickPS>:
6030bf44:	e92d4030 	push	{r4, r5, lr}
6030bf48:	e1a05001 	mov	r5, r1
6030bf4c:	e24dd00c 	sub	sp, sp, #12
6030bf50:	e3041e2c 	movw	r1, #20012	; 0x4e2c
6030bf54:	e3461031 	movt	r1, #24625	; 0x6031
6030bf58:	e5950000 	ldr	r0, [r5]
6030bf5c:	e30b4804 	movw	r4, #47108	; 0xb804
6030bf60:	e3464030 	movt	r4, #24624	; 0x6030
6030bf64:	e12fff34 	blx	r4
6030bf68:	e3500000 	cmp	r0, #0
6030bf6c:	0a000014 	beq	6030bfc4 <CmdTickPS+0x80>
6030bf70:	e5950000 	ldr	r0, [r5]
6030bf74:	e3041e30 	movw	r1, #20016	; 0x4e30
6030bf78:	e3461031 	movt	r1, #24625	; 0x6031
6030bf7c:	e12fff34 	blx	r4
6030bf80:	e3500000 	cmp	r0, #0
6030bf84:	0a000039 	beq	6030c070 <CmdTickPS+0x12c>
6030bf88:	e5950000 	ldr	r0, [r5]
6030bf8c:	e3041e34 	movw	r1, #20020	; 0x4e34
6030bf90:	e3461031 	movt	r1, #24625	; 0x6031
6030bf94:	e12fff34 	blx	r4
6030bf98:	e3500000 	cmp	r0, #0
6030bf9c:	0a000021 	beq	6030c028 <CmdTickPS+0xe4>
6030bfa0:	e5950000 	ldr	r0, [r5]
6030bfa4:	e3041e44 	movw	r1, #20036	; 0x4e44
6030bfa8:	e3461031 	movt	r1, #24625	; 0x6031
6030bfac:	e12fff34 	blx	r4
6030bfb0:	e3500000 	cmp	r0, #0
6030bfb4:	0a000004 	beq	6030bfcc <CmdTickPS+0x88>
6030bfb8:	e3a00001 	mov	r0, #1
6030bfbc:	e28dd00c 	add	sp, sp, #12
6030bfc0:	e8bd8030 	pop	{r4, r5, pc}
6030bfc4:	ebfff6e8 	bl	60309b6c <pmu_release_wakelock>
6030bfc8:	eaffffe8 	b	6030bf70 <CmdTickPS+0x2c>
6030bfcc:	ebfff6f1 	bl	60309b98 <pmu_get_wakelock_status>
6030bfd0:	e3a02041 	mov	r2, #65	; 0x41
6030bfd4:	e1a03000 	mov	r3, r0
6030bfd8:	e3041dc4 	movw	r1, #19908	; 0x4dc4
6030bfdc:	e3461031 	movt	r1, #24625	; 0x6031
6030bfe0:	e58d3000 	str	r3, [sp]
6030bfe4:	e3a00001 	mov	r0, #1
6030bfe8:	e3043e48 	movw	r3, #20040	; 0x4e48
6030bfec:	e3463031 	movt	r3, #24625	; 0x6031
6030bff0:	ebfffc5f 	bl	6030b174 <rtk_log_write_nano>
6030bff4:	ebfff6fc 	bl	60309bec <pmu_get_deepwakelock_status>
6030bff8:	e3a02041 	mov	r2, #65	; 0x41
6030bffc:	e1a0c000 	mov	ip, r0
6030c000:	e3043e58 	movw	r3, #20056	; 0x4e58
6030c004:	e3463031 	movt	r3, #24625	; 0x6031
6030c008:	e3a00001 	mov	r0, #1
6030c00c:	e58dc000 	str	ip, [sp]
6030c010:	e3041dc4 	movw	r1, #19908	; 0x4dc4
6030c014:	e3461031 	movt	r1, #24625	; 0x6031
6030c018:	ebfffc55 	bl	6030b174 <rtk_log_write_nano>
6030c01c:	e3a00001 	mov	r0, #1
6030c020:	e28dd00c 	add	sp, sp, #12
6030c024:	e8bd8030 	pop	{r4, r5, pc}
6030c028:	e5950004 	ldr	r0, [r5, #4]
6030c02c:	e3041e3c 	movw	r1, #20028	; 0x4e3c
6030c030:	e3461031 	movt	r1, #24625	; 0x6031
6030c034:	e12fff34 	blx	r4
6030c038:	e3500000 	cmp	r0, #0
6030c03c:	0a000008 	beq	6030c064 <CmdTickPS+0x120>
6030c040:	e5950004 	ldr	r0, [r5, #4]
6030c044:	e3041e40 	movw	r1, #20032	; 0x4e40
6030c048:	e3461031 	movt	r1, #24625	; 0x6031
6030c04c:	e12fff34 	blx	r4
6030c050:	e3500000 	cmp	r0, #0
6030c054:	1a000002 	bne	6030c064 <CmdTickPS+0x120>
6030c058:	e3a00001 	mov	r0, #1
6030c05c:	ebfff6d1 	bl	60309ba8 <pmu_set_sleep_type>
6030c060:	eaffffce 	b	6030bfa0 <CmdTickPS+0x5c>
6030c064:	e3a00000 	mov	r0, #0
6030c068:	ebfff6ce 	bl	60309ba8 <pmu_set_sleep_type>
6030c06c:	eaffffcb 	b	6030bfa0 <CmdTickPS+0x5c>
6030c070:	ebfff6b2 	bl	60309b40 <pmu_acquire_wakelock>
6030c074:	eaffffc3 	b	6030bf88 <CmdTickPS+0x44>

6030c078 <cmd_write_word>:
6030c078:	e92d40f0 	push	{r4, r5, r6, r7, lr}
6030c07c:	e1a07001 	mov	r7, r1
6030c080:	e24dd00c 	sub	sp, sp, #12
6030c084:	e3a02010 	mov	r2, #16
6030c088:	e5970000 	ldr	r0, [r7]
6030c08c:	e3a01000 	mov	r1, #0
6030c090:	e30b6a08 	movw	r6, #47624	; 0xba08
6030c094:	e3466030 	movt	r6, #24624	; 0x6030
6030c098:	e12fff36 	blx	r6
6030c09c:	e3c05003 	bic	r5, r0, #3
6030c0a0:	e1a04000 	mov	r4, r0
6030c0a4:	e3a02010 	mov	r2, #16
6030c0a8:	e5970004 	ldr	r0, [r7, #4]
6030c0ac:	e3a01000 	mov	r1, #0
6030c0b0:	e12fff36 	blx	r6
6030c0b4:	e3a02041 	mov	r2, #65	; 0x41
6030c0b8:	e1a06000 	mov	r6, r0
6030c0bc:	e58d0004 	str	r0, [sp, #4]
6030c0c0:	e58d5000 	str	r5, [sp]
6030c0c4:	e3a00001 	mov	r0, #1
6030c0c8:	e3043e6c 	movw	r3, #20076	; 0x4e6c
6030c0cc:	e3463031 	movt	r3, #24625	; 0x6031
6030c0d0:	e30415a4 	movw	r1, #17828	; 0x45a4
6030c0d4:	e3461031 	movt	r1, #24625	; 0x6031
6030c0d8:	ebfffc25 	bl	6030b174 <rtk_log_write_nano>
6030c0dc:	e5856000 	str	r6, [r5]
6030c0e0:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
6030c0e4:	e3130004 	tst	r3, #4
6030c0e8:	0a000009 	beq	6030c114 <cmd_write_word+0x9c>
6030c0ec:	e3c5303f 	bic	r3, r5, #63	; 0x3f
6030c0f0:	e3c4003f 	bic	r0, r4, #63	; 0x3f
6030c0f4:	e2833040 	add	r3, r3, #64	; 0x40
6030c0f8:	e1500003 	cmp	r0, r3
6030c0fc:	2a000003 	bcs	6030c110 <cmd_write_word+0x98>
6030c100:	ee070f3a 	mcr	15, 0, r0, cr7, cr10, {1}
6030c104:	e2800040 	add	r0, r0, #64	; 0x40
6030c108:	e1530000 	cmp	r3, r0
6030c10c:	8afffffb 	bhi	6030c100 <cmd_write_word+0x88>
6030c110:	f57ff05f 	dmb	sy
6030c114:	e3a00000 	mov	r0, #0
6030c118:	e28dd00c 	add	sp, sp, #12
6030c11c:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}

6030c120 <cmd_dump_word>:
6030c120:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
6030c124:	e30f3948 	movw	r3, #63816	; 0xf948
6030c128:	e3463030 	movt	r3, #24624	; 0x6030
6030c12c:	e1a04000 	mov	r4, r0
6030c130:	e1a05001 	mov	r5, r1
6030c134:	e12fff33 	blx	r3
6030c138:	e2443001 	sub	r3, r4, #1
6030c13c:	e3530002 	cmp	r3, #2
6030c140:	8a000057 	bhi	6030c2a4 <cmd_dump_word+0x184>
6030c144:	e1a06000 	mov	r6, r0
6030c148:	e3540003 	cmp	r4, #3
6030c14c:	0a000023 	beq	6030c1e0 <cmd_dump_word+0xc0>
6030c150:	e3540001 	cmp	r4, #1
6030c154:	1a00005b 	bne	6030c2c8 <cmd_dump_word+0x1a8>
6030c158:	e3a02010 	mov	r2, #16
6030c15c:	e3a01000 	mov	r1, #0
6030c160:	e5950000 	ldr	r0, [r5]
6030c164:	e30b3a08 	movw	r3, #47624	; 0xba08
6030c168:	e3463030 	movt	r3, #24624	; 0x6030
6030c16c:	e12fff33 	blx	r3
6030c170:	e1a03000 	mov	r3, r0
6030c174:	e3c00003 	bic	r0, r0, #3
6030c178:	e2562000 	subs	r2, r6, #0
6030c17c:	e280133e 	add	r1, r0, #-134217728	; 0xf8000000
6030c180:	13a02001 	movne	r2, #1
6030c184:	e371037e 	cmn	r1, #-134217727	; 0xf8000001
6030c188:	83a02000 	movhi	r2, #0
6030c18c:	e3520000 	cmp	r2, #0
6030c190:	1a00006d 	bne	6030c34c <cmd_dump_word+0x22c>
6030c194:	ee112f10 	mrc	15, 0, r2, cr1, cr0, {0}
6030c198:	e3120004 	tst	r2, #4
6030c19c:	0a00000b 	beq	6030c1d0 <cmd_dump_word+0xb0>
6030c1a0:	e0802104 	add	r2, r0, r4, lsl #2
6030c1a4:	e2422001 	sub	r2, r2, #1
6030c1a8:	e3c2203f 	bic	r2, r2, #63	; 0x3f
6030c1ac:	e3c3303f 	bic	r3, r3, #63	; 0x3f
6030c1b0:	e2822040 	add	r2, r2, #64	; 0x40
6030c1b4:	e1530002 	cmp	r3, r2
6030c1b8:	2a000003 	bcs	6030c1cc <cmd_dump_word+0xac>
6030c1bc:	ee073f3e 	mcr	15, 0, r3, cr7, cr14, {1}
6030c1c0:	e2833040 	add	r3, r3, #64	; 0x40
6030c1c4:	e1520003 	cmp	r2, r3
6030c1c8:	8afffffb 	bhi	6030c1bc <cmd_dump_word+0x9c>
6030c1cc:	f57ff05f 	dmb	sy
6030c1d0:	e1a01004 	mov	r1, r4
6030c1d4:	ebfffc94 	bl	6030b42c <rtk_log_memory_dump_word>
6030c1d8:	e3a00001 	mov	r0, #1
6030c1dc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
6030c1e0:	e5953008 	ldr	r3, [r5, #8]
6030c1e4:	e3a0200a 	mov	r2, #10
6030c1e8:	e3a01000 	mov	r1, #0
6030c1ec:	e5d37000 	ldrb	r7, [r3]
6030c1f0:	e5950004 	ldr	r0, [r5, #4]
6030c1f4:	e30b8a08 	movw	r8, #47624	; 0xba08
6030c1f8:	e3468030 	movt	r8, #24624	; 0x6030
6030c1fc:	e12fff38 	blx	r8
6030c200:	e3a02010 	mov	r2, #16
6030c204:	e3a01000 	mov	r1, #0
6030c208:	e1a04000 	mov	r4, r0
6030c20c:	e5950000 	ldr	r0, [r5]
6030c210:	e12fff38 	blx	r8
6030c214:	e20770df 	and	r7, r7, #223	; 0xdf
6030c218:	e1a03000 	mov	r3, r0
6030c21c:	e3c00003 	bic	r0, r0, #3
6030c220:	e2562000 	subs	r2, r6, #0
6030c224:	e2477042 	sub	r7, r7, #66	; 0x42
6030c228:	e280133e 	add	r1, r0, #-134217728	; 0xf8000000
6030c22c:	13a02001 	movne	r2, #1
6030c230:	e16f7f17 	clz	r7, r7
6030c234:	e371037e 	cmn	r1, #-134217727	; 0xf8000001
6030c238:	83a02000 	movhi	r2, #0
6030c23c:	e1a072a7 	lsr	r7, r7, #5
6030c240:	e3520000 	cmp	r2, #0
6030c244:	1a000040 	bne	6030c34c <cmd_dump_word+0x22c>
6030c248:	e2545000 	subs	r5, r4, #0
6030c24c:	13a05001 	movne	r5, #1
6030c250:	e1150007 	tst	r5, r7
6030c254:	0a000031 	beq	6030c320 <cmd_dump_word+0x200>
6030c258:	ee112f10 	mrc	15, 0, r2, cr1, cr0, {0}
6030c25c:	e3120004 	tst	r2, #4
6030c260:	0a00000b 	beq	6030c294 <cmd_dump_word+0x174>
6030c264:	e2442001 	sub	r2, r4, #1
6030c268:	e0822000 	add	r2, r2, r0
6030c26c:	e3c2203f 	bic	r2, r2, #63	; 0x3f
6030c270:	e3c3303f 	bic	r3, r3, #63	; 0x3f
6030c274:	e2822040 	add	r2, r2, #64	; 0x40
6030c278:	e1530002 	cmp	r3, r2
6030c27c:	2a000003 	bcs	6030c290 <cmd_dump_word+0x170>
6030c280:	ee073f3e 	mcr	15, 0, r3, cr7, cr14, {1}
6030c284:	e2833040 	add	r3, r3, #64	; 0x40
6030c288:	e1520003 	cmp	r2, r3
6030c28c:	8afffffb 	bhi	6030c280 <cmd_dump_word+0x160>
6030c290:	f57ff05f 	dmb	sy
6030c294:	e1a01004 	mov	r1, r4
6030c298:	ebfffc96 	bl	6030b4f8 <rtk_log_memory_dump_byte>
6030c29c:	e3a00001 	mov	r0, #1
6030c2a0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
6030c2a4:	e3a02045 	mov	r2, #69	; 0x45
6030c2a8:	e3a00002 	mov	r0, #2
6030c2ac:	e3043e7c 	movw	r3, #20092	; 0x4e7c
6030c2b0:	e3463031 	movt	r3, #24625	; 0x6031
6030c2b4:	e3041dc4 	movw	r1, #19908	; 0x4dc4
6030c2b8:	e3461031 	movt	r1, #24625	; 0x6031
6030c2bc:	ebfffbac 	bl	6030b174 <rtk_log_write_nano>
6030c2c0:	e3a00000 	mov	r0, #0
6030c2c4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
6030c2c8:	e3a0200a 	mov	r2, #10
6030c2cc:	e3a01000 	mov	r1, #0
6030c2d0:	e5950004 	ldr	r0, [r5, #4]
6030c2d4:	e30b7a08 	movw	r7, #47624	; 0xba08
6030c2d8:	e3467030 	movt	r7, #24624	; 0x6030
6030c2dc:	e12fff37 	blx	r7
6030c2e0:	e3a02010 	mov	r2, #16
6030c2e4:	e3a01000 	mov	r1, #0
6030c2e8:	e1a04000 	mov	r4, r0
6030c2ec:	e5950000 	ldr	r0, [r5]
6030c2f0:	e12fff37 	blx	r7
6030c2f4:	e1a03000 	mov	r3, r0
6030c2f8:	e3c00003 	bic	r0, r0, #3
6030c2fc:	e2562000 	subs	r2, r6, #0
6030c300:	e280133e 	add	r1, r0, #-134217728	; 0xf8000000
6030c304:	13a02001 	movne	r2, #1
6030c308:	e371037e 	cmn	r1, #-134217727	; 0xf8000001
6030c30c:	83a02000 	movhi	r2, #0
6030c310:	e3520000 	cmp	r2, #0
6030c314:	1a00000c 	bne	6030c34c <cmd_dump_word+0x22c>
6030c318:	e2545000 	subs	r5, r4, #0
6030c31c:	13a05001 	movne	r5, #1
6030c320:	e3550000 	cmp	r5, #0
6030c324:	1affff9a 	bne	6030c194 <cmd_dump_word+0x74>
6030c328:	e3a02045 	mov	r2, #69	; 0x45
6030c32c:	e3a00002 	mov	r0, #2
6030c330:	e3043ebc 	movw	r3, #20156	; 0x4ebc
6030c334:	e3463031 	movt	r3, #24625	; 0x6031
6030c338:	e3041dc4 	movw	r1, #19908	; 0x4dc4
6030c33c:	e3461031 	movt	r1, #24625	; 0x6031
6030c340:	ebfffb8b 	bl	6030b174 <rtk_log_write_nano>
6030c344:	e1a00005 	mov	r0, r5
6030c348:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
6030c34c:	e3a02045 	mov	r2, #69	; 0x45
6030c350:	e3a00002 	mov	r0, #2
6030c354:	e3043e98 	movw	r3, #20120	; 0x4e98
6030c358:	e3463031 	movt	r3, #24625	; 0x6031
6030c35c:	e3041dc4 	movw	r1, #19908	; 0x4dc4
6030c360:	e3461031 	movt	r1, #24625	; 0x6031
6030c364:	ebfffb82 	bl	6030b174 <rtk_log_write_nano>
6030c368:	e3a00001 	mov	r0, #1
6030c36c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

6030c370 <cmd_efuse_protect>:
6030c370:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030c374:	e1a03000 	mov	r3, r0
6030c378:	e24dd024 	sub	sp, sp, #36	; 0x24
6030c37c:	e3a00b02 	mov	r0, #2048	; 0x800
6030c380:	e1a05001 	mov	r5, r1
6030c384:	e58d3010 	str	r3, [sp, #16]
6030c388:	ebfff066 	bl	60308528 <rtos_mem_zmalloc>
6030c38c:	e2506000 	subs	r6, r0, #0
6030c390:	0a00016e 	beq	6030c950 <cmd_efuse_protect+0x5e0>
6030c394:	e5950000 	ldr	r0, [r5]
6030c398:	e3041ee4 	movw	r1, #20196	; 0x4ee4
6030c39c:	e3461031 	movt	r1, #24625	; 0x6031
6030c3a0:	e30b8804 	movw	r8, #47108	; 0xb804
6030c3a4:	e3468030 	movt	r8, #24624	; 0x6030
6030c3a8:	e12fff38 	blx	r8
6030c3ac:	e2509000 	subs	r9, r0, #0
6030c3b0:	1a000039 	bne	6030c49c <cmd_efuse_protect+0x12c>
6030c3b4:	e3a02010 	mov	r2, #16
6030c3b8:	e1a01009 	mov	r1, r9
6030c3bc:	e5950004 	ldr	r0, [r5, #4]
6030c3c0:	e30b4a08 	movw	r4, #47624	; 0xba08
6030c3c4:	e3464030 	movt	r4, #24624	; 0x6030
6030c3c8:	e12fff34 	blx	r4
6030c3cc:	e3a02010 	mov	r2, #16
6030c3d0:	e1a01009 	mov	r1, r9
6030c3d4:	e58d000c 	str	r0, [sp, #12]
6030c3d8:	e5950008 	ldr	r0, [r5, #8]
6030c3dc:	e12fff34 	blx	r4
6030c3e0:	e595400c 	ldr	r4, [r5, #12]
6030c3e4:	e1a0b000 	mov	fp, r0
6030c3e8:	e30b38f8 	movw	r3, #47352	; 0xb8f8
6030c3ec:	e3463030 	movt	r3, #24624	; 0x6030
6030c3f0:	e1a00004 	mov	r0, r4
6030c3f4:	e12fff33 	blx	r3
6030c3f8:	e1a07000 	mov	r7, r0
6030c3fc:	e3100001 	tst	r0, #1
6030c400:	1a00011b 	bne	6030c874 <cmd_efuse_protect+0x504>
6030c404:	e1a090a0 	lsr	r9, r0, #1
6030c408:	e15b0009 	cmp	fp, r9
6030c40c:	0a000008 	beq	6030c434 <cmd_efuse_protect+0xc4>
6030c410:	e3a02057 	mov	r2, #87	; 0x57
6030c414:	e3a00003 	mov	r0, #3
6030c418:	e3043f10 	movw	r3, #20240	; 0x4f10
6030c41c:	e3463031 	movt	r3, #24625	; 0x6031
6030c420:	e3041dc4 	movw	r1, #19908	; 0x4dc4
6030c424:	e3461031 	movt	r1, #24625	; 0x6031
6030c428:	ebfffb1d 	bl	6030b0a4 <rtk_log_write>
6030c42c:	e159000b 	cmp	r9, fp
6030c430:	21a0900b 	movcs	r9, fp
6030c434:	e3c77001 	bic	r7, r7, #1
6030c438:	e3a02049 	mov	r2, #73	; 0x49
6030c43c:	e3a00004 	mov	r0, #4
6030c440:	e58d7004 	str	r7, [sp, #4]
6030c444:	e58d9000 	str	r9, [sp]
6030c448:	e3043f54 	movw	r3, #20308	; 0x4f54
6030c44c:	e3463031 	movt	r3, #24625	; 0x6031
6030c450:	e3041dc4 	movw	r1, #19908	; 0x4dc4
6030c454:	e3461031 	movt	r1, #24625	; 0x6031
6030c458:	ebfffb11 	bl	6030b0a4 <rtk_log_write>
6030c45c:	e3590000 	cmp	r9, #0
6030c460:	0a000009 	beq	6030c48c <cmd_efuse_protect+0x11c>
6030c464:	e30b7bc4 	movw	r7, #48068	; 0xbbc4
6030c468:	e3467030 	movt	r7, #24624	; 0x6030
6030c46c:	e246a001 	sub	sl, r6, #1
6030c470:	e084b089 	add	fp, r4, r9, lsl #1
6030c474:	e5d41001 	ldrb	r1, [r4, #1]
6030c478:	e4d40002 	ldrb	r0, [r4], #2
6030c47c:	e12fff37 	blx	r7
6030c480:	e154000b 	cmp	r4, fp
6030c484:	e5ea0001 	strb	r0, [sl, #1]!
6030c488:	1afffff9 	bne	6030c474 <cmd_efuse_protect+0x104>
6030c48c:	e59d000c 	ldr	r0, [sp, #12]
6030c490:	e1a01009 	mov	r1, r9
6030c494:	e1a02006 	mov	r2, r6
6030c498:	ebfff96b 	bl	6030aa4c <OTP_LogicalMap_Write>
6030c49c:	e5950000 	ldr	r0, [r5]
6030c4a0:	e3041f80 	movw	r1, #20352	; 0x4f80
6030c4a4:	e3461031 	movt	r1, #24625	; 0x6031
6030c4a8:	e12fff38 	blx	r8
6030c4ac:	e2507000 	subs	r7, r0, #0
6030c4b0:	13a03000 	movne	r3, #0
6030c4b4:	158d300c 	strne	r3, [sp, #12]
6030c4b8:	0a00009c 	beq	6030c730 <cmd_efuse_protect+0x3c0>
6030c4bc:	e5950000 	ldr	r0, [r5]
6030c4c0:	e3041fd4 	movw	r1, #20436	; 0x4fd4
6030c4c4:	e3461031 	movt	r1, #24625	; 0x6031
6030c4c8:	e12fff38 	blx	r8
6030c4cc:	e2504000 	subs	r4, r0, #0
6030c4d0:	0a000065 	beq	6030c66c <cmd_efuse_protect+0x2fc>
6030c4d4:	e5950000 	ldr	r0, [r5]
6030c4d8:	e3041ffc 	movw	r1, #20476	; 0x4ffc
6030c4dc:	e3461031 	movt	r1, #24625	; 0x6031
6030c4e0:	e12fff38 	blx	r8
6030c4e4:	e2509000 	subs	r9, r0, #0
6030c4e8:	0a00000d 	beq	6030c524 <cmd_efuse_protect+0x1b4>
6030c4ec:	e5950000 	ldr	r0, [r5]
6030c4f0:	e3051014 	movw	r1, #20500	; 0x5014
6030c4f4:	e3461031 	movt	r1, #24625	; 0x6031
6030c4f8:	e12fff38 	blx	r8
6030c4fc:	e59d900c 	ldr	r9, [sp, #12]
6030c500:	e3500000 	cmp	r0, #0
6030c504:	0a0000bb 	beq	6030c7f8 <cmd_efuse_protect+0x488>
6030c508:	e3560000 	cmp	r6, #0
6030c50c:	0a000001 	beq	6030c518 <cmd_efuse_protect+0x1a8>
6030c510:	e1a00006 	mov	r0, r6
6030c514:	ebfff019 	bl	60308580 <rtos_mem_free>
6030c518:	e1a00009 	mov	r0, r9
6030c51c:	e28dd024 	add	sp, sp, #36	; 0x24
6030c520:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030c524:	e3a02010 	mov	r2, #16
6030c528:	e1a01009 	mov	r1, r9
6030c52c:	e5950004 	ldr	r0, [r5, #4]
6030c530:	e30b4a08 	movw	r4, #47624	; 0xba08
6030c534:	e3464030 	movt	r4, #24624	; 0x6030
6030c538:	e12fff34 	blx	r4
6030c53c:	e3a02010 	mov	r2, #16
6030c540:	e1a01009 	mov	r1, r9
6030c544:	e58d0014 	str	r0, [sp, #20]
6030c548:	e5950008 	ldr	r0, [r5, #8]
6030c54c:	e12fff34 	blx	r4
6030c550:	e595400c 	ldr	r4, [r5, #12]
6030c554:	e1a0a000 	mov	sl, r0
6030c558:	e30b38f8 	movw	r3, #47352	; 0xb8f8
6030c55c:	e3463030 	movt	r3, #24624	; 0x6030
6030c560:	e1a00004 	mov	r0, r4
6030c564:	e12fff33 	blx	r3
6030c568:	e1a07000 	mov	r7, r0
6030c56c:	e3100001 	tst	r0, #1
6030c570:	1a0000bf 	bne	6030c874 <cmd_efuse_protect+0x504>
6030c574:	e1a030a0 	lsr	r3, r0, #1
6030c578:	e1a09003 	mov	r9, r3
6030c57c:	e15a0003 	cmp	sl, r3
6030c580:	e58d3010 	str	r3, [sp, #16]
6030c584:	1a0000ae 	bne	6030c844 <cmd_efuse_protect+0x4d4>
6030c588:	e3c73001 	bic	r3, r7, #1
6030c58c:	e58d3018 	str	r3, [sp, #24]
6030c590:	e59d3010 	ldr	r3, [sp, #16]
6030c594:	e3530000 	cmp	r3, #0
6030c598:	0a0000fe 	beq	6030c998 <cmd_efuse_protect+0x628>
6030c59c:	e1a09004 	mov	r9, r4
6030c5a0:	e246b001 	sub	fp, r6, #1
6030c5a4:	e30b7bc4 	movw	r7, #48068	; 0xbbc4
6030c5a8:	e3467030 	movt	r7, #24624	; 0x6030
6030c5ac:	e1a0400b 	mov	r4, fp
6030c5b0:	e089a083 	add	sl, r9, r3, lsl #1
6030c5b4:	e58db01c 	str	fp, [sp, #28]
6030c5b8:	e5d91001 	ldrb	r1, [r9, #1]
6030c5bc:	e4d90002 	ldrb	r0, [r9], #2
6030c5c0:	e12fff37 	blx	r7
6030c5c4:	e159000a 	cmp	r9, sl
6030c5c8:	e5eb0001 	strb	r0, [fp, #1]!
6030c5cc:	1afffff9 	bne	6030c5b8 <cmd_efuse_protect+0x248>
6030c5d0:	e59d3018 	ldr	r3, [sp, #24]
6030c5d4:	e59d201c 	ldr	r2, [sp, #28]
6030c5d8:	e58d3004 	str	r3, [sp, #4]
6030c5dc:	e59d3010 	ldr	r3, [sp, #16]
6030c5e0:	e58d3000 	str	r3, [sp]
6030c5e4:	e0827003 	add	r7, r2, r3
6030c5e8:	e3a00004 	mov	r0, #4
6030c5ec:	e3a02049 	mov	r2, #73	; 0x49
6030c5f0:	e3053034 	movw	r3, #20532	; 0x5034
6030c5f4:	e3463031 	movt	r3, #24625	; 0x6031
6030c5f8:	e3041dc4 	movw	r1, #19908	; 0x4dc4
6030c5fc:	e3461031 	movt	r1, #24625	; 0x6031
6030c600:	ebfffaa7 	bl	6030b0a4 <rtk_log_write>
6030c604:	e59d3014 	ldr	r3, [sp, #20]
6030c608:	e266b001 	rsb	fp, r6, #1
6030c60c:	e3059004 	movw	r9, #20484	; 0x5004
6030c610:	e3469031 	movt	r9, #24625	; 0x6031
6030c614:	e304a5a4 	movw	sl, #17828	; 0x45a4
6030c618:	e346a031 	movt	sl, #24625	; 0x6031
6030c61c:	e58d5010 	str	r5, [sp, #16]
6030c620:	e08bb003 	add	fp, fp, r3
6030c624:	e1a05009 	mov	r5, r9
6030c628:	e1a09007 	mov	r9, r7
6030c62c:	e08b7004 	add	r7, fp, r4
6030c630:	e5f42001 	ldrb	r2, [r4, #1]!
6030c634:	e1a03005 	mov	r3, r5
6030c638:	e1a0100a 	mov	r1, sl
6030c63c:	e3a00001 	mov	r0, #1
6030c640:	e58d2004 	str	r2, [sp, #4]
6030c644:	e58d7000 	str	r7, [sp]
6030c648:	e3a02041 	mov	r2, #65	; 0x41
6030c64c:	ebfffa94 	bl	6030b0a4 <rtk_log_write>
6030c650:	e5d41000 	ldrb	r1, [r4]
6030c654:	e1a00007 	mov	r0, r7
6030c658:	ebfff7fe 	bl	6030a658 <OTP_Write8>
6030c65c:	e1590004 	cmp	r9, r4
6030c660:	1afffff1 	bne	6030c62c <cmd_efuse_protect+0x2bc>
6030c664:	e59d5010 	ldr	r5, [sp, #16]
6030c668:	eaffff9f 	b	6030c4ec <cmd_efuse_protect+0x17c>
6030c66c:	e3a02049 	mov	r2, #73	; 0x49
6030c670:	e3a00004 	mov	r0, #4
6030c674:	e3043fdc 	movw	r3, #20444	; 0x4fdc
6030c678:	e3463031 	movt	r3, #24625	; 0x6031
6030c67c:	e3041dc4 	movw	r1, #19908	; 0x4dc4
6030c680:	e3461031 	movt	r1, #24625	; 0x6031
6030c684:	ebfffa86 	bl	6030b0a4 <rtk_log_write>
6030c688:	e59d3010 	ldr	r3, [sp, #16]
6030c68c:	e3530002 	cmp	r3, #2
6030c690:	93a09c05 	movls	r9, #1280	; 0x500
6030c694:	8a00009c 	bhi	6030c90c <cmd_efuse_protect+0x59c>
6030c698:	e1a07004 	mov	r7, r4
6030c69c:	e0861007 	add	r1, r6, r7
6030c6a0:	e1a00007 	mov	r0, r7
6030c6a4:	e2877001 	add	r7, r7, #1
6030c6a8:	ebfff7e4 	bl	6030a640 <OTP_Read8>
6030c6ac:	e1590007 	cmp	r9, r7
6030c6b0:	8afffff9 	bhi	6030c69c <cmd_efuse_protect+0x32c>
6030c6b4:	e086a004 	add	sl, r6, r4
6030c6b8:	e3043fe8 	movw	r3, #20456	; 0x4fe8
6030c6bc:	e3463031 	movt	r3, #24625	; 0x6031
6030c6c0:	e304b5a4 	movw	fp, #17828	; 0x45a4
6030c6c4:	e346b031 	movt	fp, #24625	; 0x6031
6030c6c8:	e58d5010 	str	r5, [sp, #16]
6030c6cc:	e1a0700a 	mov	r7, sl
6030c6d0:	e1a0500b 	mov	r5, fp
6030c6d4:	e1a0b003 	mov	fp, r3
6030c6d8:	ea00000a 	b	6030c708 <cmd_efuse_protect+0x398>
6030c6dc:	e4d73001 	ldrb	r3, [r7], #1
6030c6e0:	e3a00001 	mov	r0, #1
6030c6e4:	e0844000 	add	r4, r4, r0
6030c6e8:	e58d3000 	str	r3, [sp]
6030c6ec:	e3a02041 	mov	r2, #65	; 0x41
6030c6f0:	e1a01005 	mov	r1, r5
6030c6f4:	e3043fcc 	movw	r3, #20428	; 0x4fcc
6030c6f8:	e3463031 	movt	r3, #24625	; 0x6031
6030c6fc:	ebfffa68 	bl	6030b0a4 <rtk_log_write>
6030c700:	e1590004 	cmp	r9, r4
6030c704:	9a000045 	bls	6030c820 <cmd_efuse_protect+0x4b0>
6030c708:	e047300a 	sub	r3, r7, sl
6030c70c:	e313000f 	tst	r3, #15
6030c710:	1afffff1 	bne	6030c6dc <cmd_efuse_protect+0x36c>
6030c714:	e1a0300b 	mov	r3, fp
6030c718:	e3a02041 	mov	r2, #65	; 0x41
6030c71c:	e1a01005 	mov	r1, r5
6030c720:	e3a00001 	mov	r0, #1
6030c724:	e58d4000 	str	r4, [sp]
6030c728:	ebfffa5d 	bl	6030b0a4 <rtk_log_write>
6030c72c:	eaffffea 	b	6030c6dc <cmd_efuse_protect+0x36c>
6030c730:	e3a02049 	mov	r2, #73	; 0x49
6030c734:	e3a00004 	mov	r0, #4
6030c738:	e3043f88 	movw	r3, #20360	; 0x4f88
6030c73c:	e3463031 	movt	r3, #24625	; 0x6031
6030c740:	e3041dc4 	movw	r1, #19908	; 0x4dc4
6030c744:	e3461031 	movt	r1, #24625	; 0x6031
6030c748:	ebfffa55 	bl	6030b0a4 <rtk_log_write>
6030c74c:	e59d3010 	ldr	r3, [sp, #16]
6030c750:	e3530002 	cmp	r3, #2
6030c754:	8a00004f 	bhi	6030c898 <cmd_efuse_protect+0x528>
6030c758:	e3a02b01 	mov	r2, #1024	; 0x400
6030c75c:	e1a01007 	mov	r1, r7
6030c760:	e1a00006 	mov	r0, r6
6030c764:	ebfff84b 	bl	6030a898 <OTP_LogicalMap_Read>
6030c768:	e3a0ab01 	mov	sl, #1024	; 0x400
6030c76c:	e3700001 	cmn	r0, #1
6030c770:	e58d000c 	str	r0, [sp, #12]
6030c774:	0a00007d 	beq	6030c970 <cmd_efuse_protect+0x600>
6030c778:	e3043fbc 	movw	r3, #20412	; 0x4fbc
6030c77c:	e3463031 	movt	r3, #24625	; 0x6031
6030c780:	e304b5a4 	movw	fp, #17828	; 0x45a4
6030c784:	e346b031 	movt	fp, #24625	; 0x6031
6030c788:	e58d5014 	str	r5, [sp, #20]
6030c78c:	e04aa007 	sub	sl, sl, r7
6030c790:	e1a0500b 	mov	r5, fp
6030c794:	e2469001 	sub	r9, r6, #1
6030c798:	e3a04000 	mov	r4, #0
6030c79c:	e1a0b003 	mov	fp, r3
6030c7a0:	ea000009 	b	6030c7cc <cmd_efuse_protect+0x45c>
6030c7a4:	e5f93001 	ldrb	r3, [r9, #1]!
6030c7a8:	e58d3000 	str	r3, [sp]
6030c7ac:	e3a02041 	mov	r2, #65	; 0x41
6030c7b0:	e1a01005 	mov	r1, r5
6030c7b4:	e3a00001 	mov	r0, #1
6030c7b8:	e3043fcc 	movw	r3, #20428	; 0x4fcc
6030c7bc:	e3463031 	movt	r3, #24625	; 0x6031
6030c7c0:	ebfffa37 	bl	6030b0a4 <rtk_log_write>
6030c7c4:	e15a0004 	cmp	sl, r4
6030c7c8:	0a00005e 	beq	6030c948 <cmd_efuse_protect+0x5d8>
6030c7cc:	e314000f 	tst	r4, #15
6030c7d0:	e0872004 	add	r2, r7, r4
6030c7d4:	e2844001 	add	r4, r4, #1
6030c7d8:	1afffff1 	bne	6030c7a4 <cmd_efuse_protect+0x434>
6030c7dc:	e58d2000 	str	r2, [sp]
6030c7e0:	e1a0300b 	mov	r3, fp
6030c7e4:	e3a02041 	mov	r2, #65	; 0x41
6030c7e8:	e1a01005 	mov	r1, r5
6030c7ec:	e3a00001 	mov	r0, #1
6030c7f0:	ebfffa2b 	bl	6030b0a4 <rtk_log_write>
6030c7f4:	eaffffea 	b	6030c7a4 <cmd_efuse_protect+0x434>
6030c7f8:	ebfff777 	bl	6030a5dc <OTPGetCRC>
6030c7fc:	e3a02049 	mov	r2, #73	; 0x49
6030c800:	e58d0000 	str	r0, [sp]
6030c804:	e305301c 	movw	r3, #20508	; 0x501c
6030c808:	e3463031 	movt	r3, #24625	; 0x6031
6030c80c:	e3a00004 	mov	r0, #4
6030c810:	e3041dc4 	movw	r1, #19908	; 0x4dc4
6030c814:	e3461031 	movt	r1, #24625	; 0x6031
6030c818:	ebfffa21 	bl	6030b0a4 <rtk_log_write>
6030c81c:	eaffff39 	b	6030c508 <cmd_efuse_protect+0x198>
6030c820:	e59d5010 	ldr	r5, [sp, #16]
6030c824:	e3a02041 	mov	r2, #65	; 0x41
6030c828:	e3a00001 	mov	r0, #1
6030c82c:	e3043fb8 	movw	r3, #20408	; 0x4fb8
6030c830:	e3463031 	movt	r3, #24625	; 0x6031
6030c834:	e30415a4 	movw	r1, #17828	; 0x45a4
6030c838:	e3461031 	movt	r1, #24625	; 0x6031
6030c83c:	ebfffa18 	bl	6030b0a4 <rtk_log_write>
6030c840:	eaffff23 	b	6030c4d4 <cmd_efuse_protect+0x164>
6030c844:	e3a02057 	mov	r2, #87	; 0x57
6030c848:	e3a00003 	mov	r0, #3
6030c84c:	e3043f10 	movw	r3, #20240	; 0x4f10
6030c850:	e3463031 	movt	r3, #24625	; 0x6031
6030c854:	e3041dc4 	movw	r1, #19908	; 0x4dc4
6030c858:	e3461031 	movt	r1, #24625	; 0x6031
6030c85c:	ebfffa10 	bl	6030b0a4 <rtk_log_write>
6030c860:	e159000a 	cmp	r9, sl
6030c864:	e1a03009 	mov	r3, r9
6030c868:	21a0300a 	movcs	r3, sl
6030c86c:	e58d3010 	str	r3, [sp, #16]
6030c870:	eaffff44 	b	6030c588 <cmd_efuse_protect+0x218>
6030c874:	e3a02057 	mov	r2, #87	; 0x57
6030c878:	e3a00003 	mov	r0, #3
6030c87c:	e58d7000 	str	r7, [sp]
6030c880:	e3043eec 	movw	r3, #20204	; 0x4eec
6030c884:	e3463031 	movt	r3, #24625	; 0x6031
6030c888:	e3041dc4 	movw	r1, #19908	; 0x4dc4
6030c88c:	e3461031 	movt	r1, #24625	; 0x6031
6030c890:	ebfffa03 	bl	6030b0a4 <rtk_log_write>
6030c894:	eaffff1b 	b	6030c508 <cmd_efuse_protect+0x198>
6030c898:	e1a01007 	mov	r1, r7
6030c89c:	e3a02010 	mov	r2, #16
6030c8a0:	e5950004 	ldr	r0, [r5, #4]
6030c8a4:	e30b4a08 	movw	r4, #47624	; 0xba08
6030c8a8:	e3464030 	movt	r4, #24624	; 0x6030
6030c8ac:	e12fff34 	blx	r4
6030c8b0:	e1a01007 	mov	r1, r7
6030c8b4:	e3a0200a 	mov	r2, #10
6030c8b8:	e1a07000 	mov	r7, r0
6030c8bc:	e5950008 	ldr	r0, [r5, #8]
6030c8c0:	e12fff34 	blx	r4
6030c8c4:	e1a01007 	mov	r1, r7
6030c8c8:	e1a02000 	mov	r2, r0
6030c8cc:	e087a000 	add	sl, r7, r0
6030c8d0:	e1a00006 	mov	r0, r6
6030c8d4:	ebfff7ef 	bl	6030a898 <OTP_LogicalMap_Read>
6030c8d8:	e3700001 	cmn	r0, #1
6030c8dc:	e58d000c 	str	r0, [sp, #12]
6030c8e0:	0a000022 	beq	6030c970 <cmd_efuse_protect+0x600>
6030c8e4:	e15a0007 	cmp	sl, r7
6030c8e8:	8affffa2 	bhi	6030c778 <cmd_efuse_protect+0x408>
6030c8ec:	e3a02041 	mov	r2, #65	; 0x41
6030c8f0:	e3a00001 	mov	r0, #1
6030c8f4:	e3043fb8 	movw	r3, #20408	; 0x4fb8
6030c8f8:	e3463031 	movt	r3, #24625	; 0x6031
6030c8fc:	e30415a4 	movw	r1, #17828	; 0x45a4
6030c900:	e3461031 	movt	r1, #24625	; 0x6031
6030c904:	ebfff9e6 	bl	6030b0a4 <rtk_log_write>
6030c908:	eafffeeb 	b	6030c4bc <cmd_efuse_protect+0x14c>
6030c90c:	e1a01004 	mov	r1, r4
6030c910:	e3a02010 	mov	r2, #16
6030c914:	e5950004 	ldr	r0, [r5, #4]
6030c918:	e30b7a08 	movw	r7, #47624	; 0xba08
6030c91c:	e3467030 	movt	r7, #24624	; 0x6030
6030c920:	e12fff37 	blx	r7
6030c924:	e1a01004 	mov	r1, r4
6030c928:	e3a0200a 	mov	r2, #10
6030c92c:	e1a04000 	mov	r4, r0
6030c930:	e5950008 	ldr	r0, [r5, #8]
6030c934:	e12fff37 	blx	r7
6030c938:	e0849000 	add	r9, r4, r0
6030c93c:	e1540009 	cmp	r4, r9
6030c940:	3affff54 	bcc	6030c698 <cmd_efuse_protect+0x328>
6030c944:	eaffffb6 	b	6030c824 <cmd_efuse_protect+0x4b4>
6030c948:	e59d5014 	ldr	r5, [sp, #20]
6030c94c:	eaffffe6 	b	6030c8ec <cmd_efuse_protect+0x57c>
6030c950:	e3a02045 	mov	r2, #69	; 0x45
6030c954:	e3a00002 	mov	r0, #2
6030c958:	e3043ecc 	movw	r3, #20172	; 0x4ecc
6030c95c:	e3463031 	movt	r3, #24625	; 0x6031
6030c960:	e3041dc4 	movw	r1, #19908	; 0x4dc4
6030c964:	e3461031 	movt	r1, #24625	; 0x6031
6030c968:	ebfffa01 	bl	6030b174 <rtk_log_write_nano>
6030c96c:	eafffe88 	b	6030c394 <cmd_efuse_protect+0x24>
6030c970:	e3e03000 	mvn	r3, #0
6030c974:	e3a02045 	mov	r2, #69	; 0x45
6030c978:	e58d300c 	str	r3, [sp, #12]
6030c97c:	e3a00002 	mov	r0, #2
6030c980:	e3043f98 	movw	r3, #20376	; 0x4f98
6030c984:	e3463031 	movt	r3, #24625	; 0x6031
6030c988:	e3041dc4 	movw	r1, #19908	; 0x4dc4
6030c98c:	e3461031 	movt	r1, #24625	; 0x6031
6030c990:	ebfff9c3 	bl	6030b0a4 <rtk_log_write>
6030c994:	eaffffd2 	b	6030c8e4 <cmd_efuse_protect+0x574>
6030c998:	e59d3018 	ldr	r3, [sp, #24]
6030c99c:	e58d3004 	str	r3, [sp, #4]
6030c9a0:	e59d3010 	ldr	r3, [sp, #16]
6030c9a4:	e58d3000 	str	r3, [sp]
6030c9a8:	e3a02049 	mov	r2, #73	; 0x49
6030c9ac:	e3a00004 	mov	r0, #4
6030c9b0:	e3053034 	movw	r3, #20532	; 0x5034
6030c9b4:	e3463031 	movt	r3, #24625	; 0x6031
6030c9b8:	e3041dc4 	movw	r1, #19908	; 0x4dc4
6030c9bc:	e3461031 	movt	r1, #24625	; 0x6031
6030c9c0:	ebfff9b7 	bl	6030b0a4 <rtk_log_write>
6030c9c4:	eafffec8 	b	6030c4ec <cmd_efuse_protect+0x17c>

6030c9c8 <cmd_log_set>:
6030c9c8:	e3500002 	cmp	r0, #2
6030c9cc:	e92d4010 	push	{r4, lr}
6030c9d0:	0a000008 	beq	6030c9f8 <cmd_log_set+0x30>
6030c9d4:	e3a02045 	mov	r2, #69	; 0x45
6030c9d8:	e3a00002 	mov	r0, #2
6030c9dc:	e3043e7c 	movw	r3, #20092	; 0x4e7c
6030c9e0:	e3463031 	movt	r3, #24625	; 0x6031
6030c9e4:	e3041dc4 	movw	r1, #19908	; 0x4dc4
6030c9e8:	e3461031 	movt	r1, #24625	; 0x6031
6030c9ec:	ebfff9e0 	bl	6030b174 <rtk_log_write_nano>
6030c9f0:	e3a00000 	mov	r0, #0
6030c9f4:	e8bd8010 	pop	{r4, pc}
6030c9f8:	e1a04001 	mov	r4, r1
6030c9fc:	e3a0200a 	mov	r2, #10
6030ca00:	e3a01000 	mov	r1, #0
6030ca04:	e5940004 	ldr	r0, [r4, #4]
6030ca08:	e30b3a08 	movw	r3, #47624	; 0xba08
6030ca0c:	e3463030 	movt	r3, #24624	; 0x6030
6030ca10:	e12fff33 	blx	r3
6030ca14:	e1a01000 	mov	r1, r0
6030ca18:	e5940000 	ldr	r0, [r4]
6030ca1c:	e6ef1071 	uxtb	r1, r1
6030ca20:	ebfffa2e 	bl	6030b2e0 <rtk_log_level_set>
6030ca24:	e3030884 	movw	r0, #14468	; 0x3884
6030ca28:	e3460032 	movt	r0, #24626	; 0x6032
6030ca2c:	ebfffa04 	bl	6030b244 <rtk_log_array_print>
6030ca30:	e3a00001 	mov	r0, #1
6030ca34:	e8bd8010 	pop	{r4, pc}

6030ca38 <cmd_rom_table>:
6030ca38:	e1a02000 	mov	r2, r0
6030ca3c:	e3053ab8 	movw	r3, #23224	; 0x5ab8
6030ca40:	e3463031 	movt	r3, #24625	; 0x6031
6030ca44:	e3a00007 	mov	r0, #7
6030ca48:	e5823000 	str	r3, [r2]
6030ca4c:	e12fff1e 	bx	lr

6030ca50 <shell_loguratRx_ipc_int>:
6030ca50:	e92d4010 	push	{r4, lr}
6030ca54:	e3034984 	movw	r4, #14724	; 0x3984
6030ca58:	e3464032 	movt	r4, #24626	; 0x6032
6030ca5c:	e3a01000 	mov	r1, #0
6030ca60:	e3a00001 	mov	r0, #1
6030ca64:	ebfff56b 	bl	6030a018 <ipc_get_message>
6030ca68:	e5901004 	ldr	r1, [r0, #4]
6030ca6c:	e5940008 	ldr	r0, [r4, #8]
6030ca70:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
6030ca74:	e3130004 	tst	r3, #4
6030ca78:	0a00000a 	beq	6030caa8 <shell_loguratRx_ipc_int+0x58>
6030ca7c:	e281207f 	add	r2, r1, #127	; 0x7f
6030ca80:	e3c2203f 	bic	r2, r2, #63	; 0x3f
6030ca84:	e3c1303f 	bic	r3, r1, #63	; 0x3f
6030ca88:	e2822040 	add	r2, r2, #64	; 0x40
6030ca8c:	e1530002 	cmp	r3, r2
6030ca90:	2a000003 	bcs	6030caa4 <shell_loguratRx_ipc_int+0x54>
6030ca94:	ee073f36 	mcr	15, 0, r3, cr7, cr6, {1}
6030ca98:	e2833040 	add	r3, r3, #64	; 0x40
6030ca9c:	e1520003 	cmp	r2, r3
6030caa0:	8afffffb 	bhi	6030ca94 <shell_loguratRx_ipc_int+0x44>
6030caa4:	f57ff05f 	dmb	sy
6030caa8:	e3a02080 	mov	r2, #128	; 0x80
6030caac:	e30b36e0 	movw	r3, #46816	; 0xb6e0
6030cab0:	e3463030 	movt	r3, #24624	; 0x6030
6030cab4:	e12fff33 	blx	r3
6030cab8:	e3a03001 	mov	r3, #1
6030cabc:	e5c43004 	strb	r3, [r4, #4]
6030cac0:	e5943020 	ldr	r3, [r4, #32]
6030cac4:	e3530000 	cmp	r3, #0
6030cac8:	08bd8010 	popeq	{r4, pc}
6030cacc:	e594301c 	ldr	r3, [r4, #28]
6030cad0:	e8bd4010 	pop	{r4, lr}
6030cad4:	e12fff13 	bx	r3

6030cad8 <shell_give_sema>:
6030cad8:	e3033984 	movw	r3, #14724	; 0x3984
6030cadc:	e3463032 	movt	r3, #24626	; 0x6032
6030cae0:	e5933020 	ldr	r3, [r3, #32]
6030cae4:	e3530000 	cmp	r3, #0
6030cae8:	012fff1e 	bxeq	lr
6030caec:	e30338c0 	movw	r3, #14528	; 0x38c0
6030caf0:	e3463032 	movt	r3, #24626	; 0x6032
6030caf4:	e5930000 	ldr	r0, [r3]
6030caf8:	eaffeed7 	b	6030865c <rtos_sema_give>

6030cafc <shell_loguartRx_dispatch>:
6030cafc:	e92d40f0 	push	{r4, r5, r6, r7, lr}
6030cb00:	e3035984 	movw	r5, #14724	; 0x3984
6030cb04:	e3465032 	movt	r5, #24626	; 0x6032
6030cb08:	e24dd00c 	sub	sp, sp, #12
6030cb0c:	e30514bc 	movw	r1, #21692	; 0x54bc
6030cb10:	e3461031 	movt	r1, #24625	; 0x6031
6030cb14:	e5956008 	ldr	r6, [r5, #8]
6030cb18:	e30b3990 	movw	r3, #47504	; 0xb990
6030cb1c:	e3463030 	movt	r3, #24624	; 0x6030
6030cb20:	e2860001 	add	r0, r6, #1
6030cb24:	e12fff33 	blx	r3
6030cb28:	e2504000 	subs	r4, r0, #0
6030cb2c:	0a000001 	beq	6030cb38 <shell_loguartRx_dispatch+0x3c>
6030cb30:	e28dd00c 	add	sp, sp, #12
6030cb34:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
6030cb38:	e3a00b01 	mov	r0, #1024	; 0x400
6030cb3c:	ebffee78 	bl	60308524 <rtos_mem_malloc>
6030cb40:	e30013ff 	movw	r1, #1023	; 0x3ff
6030cb44:	e30e34f0 	movw	r3, #58608	; 0xe4f0
6030cb48:	e3463030 	movt	r3, #24624	; 0x6030
6030cb4c:	e1a07000 	mov	r7, r0
6030cb50:	e12fff33 	blx	r3
6030cb54:	e3a02049 	mov	r2, #73	; 0x49
6030cb58:	e3a00004 	mov	r0, #4
6030cb5c:	e58d7000 	str	r7, [sp]
6030cb60:	e30534c4 	movw	r3, #21700	; 0x54c4
6030cb64:	e3463031 	movt	r3, #24625	; 0x6031
6030cb68:	e30415a4 	movw	r1, #17828	; 0x45a4
6030cb6c:	e3461031 	movt	r1, #24625	; 0x6031
6030cb70:	ebfff97f 	bl	6030b174 <rtk_log_write_nano>
6030cb74:	e1a00007 	mov	r0, r7
6030cb78:	ebffee80 	bl	60308580 <rtos_mem_free>
6030cb7c:	e1a02004 	mov	r2, r4
6030cb80:	e3a01080 	mov	r1, #128	; 0x80
6030cb84:	e1a00006 	mov	r0, r6
6030cb88:	e30c3da8 	movw	r3, #52648	; 0xcda8
6030cb8c:	e3463030 	movt	r3, #24624	; 0x6030
6030cb90:	e12fff33 	blx	r3
6030cb94:	e5c54004 	strb	r4, [r5, #4]
6030cb98:	e28dd00c 	add	sp, sp, #12
6030cb9c:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}

6030cba0 <shell_task_ram>:
6030cba0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030cba4:	e3034984 	movw	r4, #14724	; 0x3984
6030cba8:	e3464032 	movt	r4, #24626	; 0x6032
6030cbac:	e24dd02c 	sub	sp, sp, #44	; 0x2c
6030cbb0:	e3a00b01 	mov	r0, #1024	; 0x400
6030cbb4:	e5943008 	ldr	r3, [r4, #8]
6030cbb8:	e30378c0 	movw	r7, #14528	; 0x38c0
6030cbbc:	e3467032 	movt	r7, #24626	; 0x6032
6030cbc0:	e30b8990 	movw	r8, #47504	; 0xb990
6030cbc4:	e3468030 	movt	r8, #24624	; 0x6030
6030cbc8:	e58d3014 	str	r3, [sp, #20]
6030cbcc:	e283b001 	add	fp, r3, #1
6030cbd0:	e3a03001 	mov	r3, #1
6030cbd4:	e5843020 	str	r3, [r4, #32]
6030cbd8:	e5c43006 	strb	r3, [r4, #6]
6030cbdc:	ebffeee0 	bl	60308764 <rtos_create_secure_context>
6030cbe0:	e30c3da8 	movw	r3, #52648	; 0xcda8
6030cbe4:	e3463030 	movt	r3, #24624	; 0x6030
6030cbe8:	e58d3018 	str	r3, [sp, #24]
6030cbec:	e30534c8 	movw	r3, #21704	; 0x54c8
6030cbf0:	e3463031 	movt	r3, #24625	; 0x6031
6030cbf4:	e58d301c 	str	r3, [sp, #28]
6030cbf8:	e30435a4 	movw	r3, #17828	; 0x45a4
6030cbfc:	e3463031 	movt	r3, #24625	; 0x6031
6030cc00:	e58d3020 	str	r3, [sp, #32]
6030cc04:	e30534e0 	movw	r3, #21728	; 0x54e0
6030cc08:	e3463031 	movt	r3, #24625	; 0x6031
6030cc0c:	e58d3024 	str	r3, [sp, #36]	; 0x24
6030cc10:	e3e01000 	mvn	r1, #0
6030cc14:	e5970000 	ldr	r0, [r7]
6030cc18:	ebffee69 	bl	603085c4 <rtos_sema_take>
6030cc1c:	ebffffb6 	bl	6030cafc <shell_loguartRx_dispatch>
6030cc20:	e5d43004 	ldrb	r3, [r4, #4]
6030cc24:	e3530000 	cmp	r3, #0
6030cc28:	0afffff8 	beq	6030cc10 <shell_task_ram+0x70>
6030cc2c:	e1a0000b 	mov	r0, fp
6030cc30:	eb000065 	bl	6030cdcc <shell_get_argc>
6030cc34:	e1a09000 	mov	r9, r0
6030cc38:	e1a0000b 	mov	r0, fp
6030cc3c:	e58d900c 	str	r9, [sp, #12]
6030cc40:	eb00007c 	bl	6030ce38 <shell_get_argv>
6030cc44:	e594a010 	ldr	sl, [r4, #16]
6030cc48:	e5945014 	ldr	r5, [r4, #20]
6030cc4c:	e5906000 	ldr	r6, [r0]
6030cc50:	e3550000 	cmp	r5, #0
6030cc54:	13a09000 	movne	r9, #0
6030cc58:	e58d0010 	str	r0, [sp, #16]
6030cc5c:	1a000002 	bne	6030cc6c <shell_task_ram+0xcc>
6030cc60:	ea000019 	b	6030cccc <shell_task_ram+0x12c>
6030cc64:	e1550009 	cmp	r5, r9
6030cc68:	0a000017 	beq	6030cccc <shell_task_ram+0x12c>
6030cc6c:	e79a1209 	ldr	r1, [sl, r9, lsl #4]
6030cc70:	e1a00006 	mov	r0, r6
6030cc74:	e12fff38 	blx	r8
6030cc78:	e08a1209 	add	r1, sl, r9, lsl #4
6030cc7c:	e3500000 	cmp	r0, #0
6030cc80:	e2899001 	add	r9, r9, #1
6030cc84:	1afffff6 	bne	6030cc64 <shell_task_ram+0xc4>
6030cc88:	e5913008 	ldr	r3, [r1, #8]
6030cc8c:	e3530000 	cmp	r3, #0
6030cc90:	0a00000d 	beq	6030cccc <shell_task_ram+0x12c>
6030cc94:	e59d200c 	ldr	r2, [sp, #12]
6030cc98:	e2420001 	sub	r0, r2, #1
6030cc9c:	e59d2010 	ldr	r2, [sp, #16]
6030cca0:	e6ff0070 	uxth	r0, r0
6030cca4:	e2821004 	add	r1, r2, #4
6030cca8:	e12fff33 	blx	r3
6030ccac:	e59d3018 	ldr	r3, [sp, #24]
6030ccb0:	e59d0014 	ldr	r0, [sp, #20]
6030ccb4:	e3a02000 	mov	r2, #0
6030ccb8:	e3a01080 	mov	r1, #128	; 0x80
6030ccbc:	e12fff33 	blx	r3
6030ccc0:	e3a03000 	mov	r3, #0
6030ccc4:	e5c43004 	strb	r3, [r4, #4]
6030ccc8:	eaffffd0 	b	6030cc10 <shell_task_ram+0x70>
6030cccc:	e59d5020 	ldr	r5, [sp, #32]
6030ccd0:	e59d301c 	ldr	r3, [sp, #28]
6030ccd4:	e1a01005 	mov	r1, r5
6030ccd8:	e3a02045 	mov	r2, #69	; 0x45
6030ccdc:	e3a00002 	mov	r0, #2
6030cce0:	e58db000 	str	fp, [sp]
6030cce4:	ebfff922 	bl	6030b174 <rtk_log_write_nano>
6030cce8:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
6030ccec:	e3a02045 	mov	r2, #69	; 0x45
6030ccf0:	e1a01005 	mov	r1, r5
6030ccf4:	e3a00002 	mov	r0, #2
6030ccf8:	ebfff91d 	bl	6030b174 <rtk_log_write_nano>
6030ccfc:	eaffffea 	b	6030ccac <shell_task_ram+0x10c>

6030cd00 <shell_init_ram>:
6030cd00:	e92d4010 	push	{r4, lr}
6030cd04:	e3032984 	movw	r2, #14724	; 0x3984
6030cd08:	e3462032 	movt	r2, #24626	; 0x6032
6030cd0c:	e24dd008 	sub	sp, sp, #8
6030cd10:	e3050ab8 	movw	r0, #23224	; 0x5ab8
6030cd14:	e3460031 	movt	r0, #24625	; 0x6031
6030cd18:	e3053b28 	movw	r3, #23336	; 0x5b28
6030cd1c:	e3463031 	movt	r3, #24625	; 0x6031
6030cd20:	e0431000 	sub	r1, r3, r0
6030cd24:	e5820010 	str	r0, [r2, #16]
6030cd28:	e3a04000 	mov	r4, #0
6030cd2c:	e30308c0 	movw	r0, #14528	; 0x38c0
6030cd30:	e3460032 	movt	r0, #24626	; 0x6032
6030cd34:	e3a03001 	mov	r3, #1
6030cd38:	e1a01221 	lsr	r1, r1, #4
6030cd3c:	e5821014 	str	r1, [r2, #20]
6030cd40:	e5c24004 	strb	r4, [r2, #4]
6030cd44:	e30c1ad8 	movw	r1, #51928	; 0xcad8
6030cd48:	e3461030 	movt	r1, #24624	; 0x6030
6030cd4c:	e5c23005 	strb	r3, [r2, #5]
6030cd50:	e582101c 	str	r1, [r2, #28]
6030cd54:	ebffee0c 	bl	6030858c <rtos_sema_create_binary>
6030cd58:	e3a01005 	mov	r1, #5
6030cd5c:	e3a02a01 	mov	r2, #4096	; 0x1000
6030cd60:	e58d1004 	str	r1, [sp, #4]
6030cd64:	e58d2000 	str	r2, [sp]
6030cd68:	e1a03004 	mov	r3, r4
6030cd6c:	e1a00004 	mov	r0, r4
6030cd70:	e30c2ba0 	movw	r2, #52128	; 0xcba0
6030cd74:	e3462030 	movt	r2, #24624	; 0x6030
6030cd78:	e30514e8 	movw	r1, #21736	; 0x54e8
6030cd7c:	e3461031 	movt	r1, #24625	; 0x6031
6030cd80:	ebffee69 	bl	6030872c <rtos_task_create>
6030cd84:	e1500004 	cmp	r0, r4
6030cd88:	1a000001 	bne	6030cd94 <shell_init_ram+0x94>
6030cd8c:	e28dd008 	add	sp, sp, #8
6030cd90:	e8bd8010 	pop	{r4, pc}
6030cd94:	e30504f4 	movw	r0, #21748	; 0x54f4
6030cd98:	e3460031 	movt	r0, #24625	; 0x6031
6030cd9c:	e28dd008 	add	sp, sp, #8
6030cda0:	e8bd4010 	pop	{r4, lr}
6030cda4:	ea0009b5 	b	6030f480 <DiagPrintf>

6030cda8 <shell_array_init>:
6030cda8:	e3510000 	cmp	r1, #0
6030cdac:	012fff1e 	bxeq	lr
6030cdb0:	e2411001 	sub	r1, r1, #1
6030cdb4:	e2403001 	sub	r3, r0, #1
6030cdb8:	e6e00071 	uxtab	r0, r0, r1
6030cdbc:	e5e32001 	strb	r2, [r3, #1]!
6030cdc0:	e1530000 	cmp	r3, r0
6030cdc4:	1afffffc 	bne	6030cdbc <shell_array_init+0x14>
6030cdc8:	e12fff1e 	bx	lr

6030cdcc <shell_get_argc>:
6030cdcc:	e1a03000 	mov	r3, r0
6030cdd0:	e5d00000 	ldrb	r0, [r0]
6030cdd4:	e3500000 	cmp	r0, #0
6030cdd8:	012fff1e 	bxeq	lr
6030cddc:	e3a02000 	mov	r2, #0
6030cde0:	ea000001 	b	6030cdec <shell_get_argc+0x20>
6030cde4:	e3500000 	cmp	r0, #0
6030cde8:	0a00000d 	beq	6030ce24 <shell_get_argc+0x58>
6030cdec:	e3500020 	cmp	r0, #32
6030cdf0:	05d30001 	ldrbeq	r0, [r3, #1]
6030cdf4:	02833001 	addeq	r3, r3, #1
6030cdf8:	0afffff9 	beq	6030cde4 <shell_get_argc+0x18>
6030cdfc:	e5d30000 	ldrb	r0, [r3]
6030ce00:	e2822001 	add	r2, r2, #1
6030ce04:	e31000df 	tst	r0, #223	; 0xdf
6030ce08:	e6ff2072 	uxth	r2, r2
6030ce0c:	0afffff4 	beq	6030cde4 <shell_get_argc+0x18>
6030ce10:	e5f30001 	ldrb	r0, [r3, #1]!
6030ce14:	e31000df 	tst	r0, #223	; 0xdf
6030ce18:	1afffffc 	bne	6030ce10 <shell_get_argc+0x44>
6030ce1c:	e3500000 	cmp	r0, #0
6030ce20:	1afffff1 	bne	6030cdec <shell_get_argc+0x20>
6030ce24:	e352000f 	cmp	r2, #15
6030ce28:	31a00002 	movcc	r0, r2
6030ce2c:	23a0000f 	movcs	r0, #15
6030ce30:	e6ef0070 	uxtb	r0, r0
6030ce34:	e12fff1e 	bx	lr

6030ce38 <shell_get_argv>:
6030ce38:	e59f3080 	ldr	r3, [pc, #128]	; 6030cec0 <shell_get_argv+0x88>
6030ce3c:	e3a01000 	mov	r1, #0
6030ce40:	e2832001 	add	r2, r3, #1
6030ce44:	e283c040 	add	ip, r3, #64	; 0x40
6030ce48:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
6030ce4c:	e5e31001 	strb	r1, [r3, #1]!
6030ce50:	e153000c 	cmp	r3, ip
6030ce54:	1afffffc 	bne	6030ce4c <shell_get_argv+0x14>
6030ce58:	e59fe064 	ldr	lr, [pc, #100]	; 6030cec4 <shell_get_argv+0x8c>
6030ce5c:	e3a0c000 	mov	ip, #0
6030ce60:	e5d03000 	ldrb	r3, [r0]
6030ce64:	e3530000 	cmp	r3, #0
6030ce68:	0a000011 	beq	6030ceb4 <shell_get_argv+0x7c>
6030ce6c:	e4820004 	str	r0, [r2], #4
6030ce70:	e5d03000 	ldrb	r3, [r0]
6030ce74:	e31300df 	tst	r3, #223	; 0xdf
6030ce78:	0a000002 	beq	6030ce88 <shell_get_argv+0x50>
6030ce7c:	e5f03001 	ldrb	r3, [r0, #1]!
6030ce80:	e31300df 	tst	r3, #223	; 0xdf
6030ce84:	1afffffc 	bne	6030ce7c <shell_get_argv+0x44>
6030ce88:	e1a03000 	mov	r3, r0
6030ce8c:	e4c3c001 	strb	ip, [r3], #1
6030ce90:	e5d01001 	ldrb	r1, [r0, #1]
6030ce94:	e1a00003 	mov	r0, r3
6030ce98:	e3510020 	cmp	r1, #32
6030ce9c:	1a000002 	bne	6030ceac <shell_get_argv+0x74>
6030cea0:	e5f03001 	ldrb	r3, [r0, #1]!
6030cea4:	e3530020 	cmp	r3, #32
6030cea8:	0afffffc 	beq	6030cea0 <shell_get_argv+0x68>
6030ceac:	e15e0002 	cmp	lr, r2
6030ceb0:	1affffea 	bne	6030ce60 <shell_get_argv+0x28>
6030ceb4:	e30308c4 	movw	r0, #14532	; 0x38c4
6030ceb8:	e3460032 	movt	r0, #24626	; 0x6032
6030cebc:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
6030cec0:	603238c3 	.word	0x603238c3
6030cec4:	60323904 	.word	0x60323904

6030cec8 <shell_init_rom>:
6030cec8:	e92d4030 	push	{r4, r5, lr}
6030cecc:	e303e904 	movw	lr, #14596	; 0x3904
6030ced0:	e346e032 	movt	lr, #24626	; 0x6032
6030ced4:	e24dd00c 	sub	sp, sp, #12
6030ced8:	e1a05000 	mov	r5, r0
6030cedc:	e1a0300e 	mov	r3, lr
6030cee0:	e28ec07f 	add	ip, lr, #127	; 0x7f
6030cee4:	e3a02000 	mov	r2, #0
6030cee8:	e5ce2000 	strb	r2, [lr]
6030ceec:	e5e32001 	strb	r2, [r3, #1]!
6030cef0:	e153000c 	cmp	r3, ip
6030cef4:	1afffffc 	bne	6030ceec <shell_init_rom+0x24>
6030cef8:	e30339a8 	movw	r3, #14760	; 0x39a8
6030cefc:	e3463032 	movt	r3, #24626	; 0x6032
6030cf00:	e283c07f 	add	ip, r3, #127	; 0x7f
6030cf04:	e5c32000 	strb	r2, [r3]
6030cf08:	e3a02000 	mov	r2, #0
6030cf0c:	e5e32001 	strb	r2, [r3, #1]!
6030cf10:	e153000c 	cmp	r3, ip
6030cf14:	1afffffc 	bne	6030cf0c <shell_init_rom+0x44>
6030cf18:	e3034984 	movw	r4, #14724	; 0x3984
6030cf1c:	e3464032 	movt	r4, #24626	; 0x6032
6030cf20:	e30f3480 	movw	r3, #62592	; 0xf480
6030cf24:	e3463030 	movt	r3, #24624	; 0x6030
6030cf28:	e5c42000 	strb	r2, [r4]
6030cf2c:	e3550000 	cmp	r5, #0
6030cf30:	e5c42001 	strb	r2, [r4, #1]
6030cf34:	e5c42002 	strb	r2, [r4, #2]
6030cf38:	e5c42003 	strb	r2, [r4, #3]
6030cf3c:	e5c42006 	strb	r2, [r4, #6]
6030cf40:	e584e008 	str	lr, [r4, #8]
6030cf44:	e584300c 	str	r3, [r4, #12]
6030cf48:	0a000007 	beq	6030cf6c <shell_init_rom+0xa4>
6030cf4c:	e5841010 	str	r1, [r4, #16]
6030cf50:	e5845014 	str	r5, [r4, #20]
6030cf54:	e3a03000 	mov	r3, #0
6030cf58:	e5843020 	str	r3, [r4, #32]
6030cf5c:	e5c43004 	strb	r3, [r4, #4]
6030cf60:	e5c43005 	strb	r3, [r4, #5]
6030cf64:	e28dd00c 	add	sp, sp, #12
6030cf68:	e8bd8030 	pop	{r4, r5, pc}
6030cf6c:	e28d0004 	add	r0, sp, #4
6030cf70:	e30c3a38 	movw	r3, #51768	; 0xca38
6030cf74:	e3463030 	movt	r3, #24624	; 0x6030
6030cf78:	e58d5004 	str	r5, [sp, #4]
6030cf7c:	e12fff33 	blx	r3
6030cf80:	e59d3004 	ldr	r3, [sp, #4]
6030cf84:	e5843010 	str	r3, [r4, #16]
6030cf88:	e5840014 	str	r0, [r4, #20]
6030cf8c:	eafffff0 	b	6030cf54 <shell_init_rom+0x8c>

6030cf90 <__wrap_fflush>:
6030cf90:	e3063000 	movw	r3, #24576	; 0x6000
6030cf94:	e3463031 	movt	r3, #24625	; 0x6031
6030cf98:	e1a01000 	mov	r1, r0
6030cf9c:	e5933000 	ldr	r3, [r3]
6030cfa0:	e5932008 	ldr	r2, [r3, #8]
6030cfa4:	e1500002 	cmp	r0, r2
6030cfa8:	0a00000b 	beq	6030cfdc <__wrap_fflush+0x4c>
6030cfac:	e593200c 	ldr	r2, [r3, #12]
6030cfb0:	e1500002 	cmp	r0, r2
6030cfb4:	0a000008 	beq	6030cfdc <__wrap_fflush+0x4c>
6030cfb8:	e5932004 	ldr	r2, [r3, #4]
6030cfbc:	e1500002 	cmp	r0, r2
6030cfc0:	0a000005 	beq	6030cfdc <__wrap_fflush+0x4c>
6030cfc4:	e5902000 	ldr	r2, [r0]
6030cfc8:	e3033a28 	movw	r3, #14888	; 0x3a28
6030cfcc:	e3463032 	movt	r3, #24626	; 0x6032
6030cfd0:	e7933102 	ldr	r3, [r3, r2, lsl #2]
6030cfd4:	e5933020 	ldr	r3, [r3, #32]
6030cfd8:	e12fff13 	bx	r3
6030cfdc:	e1a00003 	mov	r0, r3
6030cfe0:	e92d4010 	push	{r4, lr}
6030cfe4:	ebffcf2d 	bl	60300ca0 <_fflush_r>
6030cfe8:	e3a00000 	mov	r0, #0
6030cfec:	e8bd8010 	pop	{r4, pc}

6030cff0 <mmap_add_region>:
6030cff0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
6030cff4:	e3a0e101 	mov	lr, #1073741824	; 0x40000000
6030cff8:	e24dd01c 	sub	sp, sp, #28
6030cffc:	e1cd00f0 	strd	r0, [sp]
6030d000:	e59dc020 	ldr	ip, [sp, #32]
6030d004:	e1a0100d 	mov	r1, sp
6030d008:	e3060270 	movw	r0, #25200	; 0x6270
6030d00c:	e3460031 	movt	r0, #24625	; 0x6031
6030d010:	e58de014 	str	lr, [sp, #20]
6030d014:	e1cd20f8 	strd	r2, [sp, #8]
6030d018:	e58dc010 	str	ip, [sp, #16]
6030d01c:	eb0001ae 	bl	6030d6dc <mmap_add_region_ctx>
6030d020:	e28dd01c 	add	sp, sp, #28
6030d024:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

6030d028 <init_xlat_tables>:
6030d028:	e92d4010 	push	{r4, lr}
6030d02c:	e3064270 	movw	r4, #25200	; 0x6270
6030d030:	e3464031 	movt	r4, #24625	; 0x6031
6030d034:	e24dd008 	sub	sp, sp, #8
6030d038:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
6030d03c:	e3730001 	cmn	r3, #1
6030d040:	0a00000c 	beq	6030d078 <init_xlat_tables+0x50>
6030d044:	e3a00060 	mov	r0, #96	; 0x60
6030d048:	e305c530 	movw	ip, #21808	; 0x5530
6030d04c:	e346c031 	movt	ip, #24625	; 0x6031
6030d050:	e3053510 	movw	r3, #21776	; 0x5510
6030d054:	e3463031 	movt	r3, #24625	; 0x6031
6030d058:	e30415a4 	movw	r1, #17828	; 0x45a4
6030d05c:	e3461031 	movt	r1, #24625	; 0x6031
6030d060:	e58d0004 	str	r0, [sp, #4]
6030d064:	e3a02049 	mov	r2, #73	; 0x49
6030d068:	e3a00004 	mov	r0, #4
6030d06c:	e58dc000 	str	ip, [sp]
6030d070:	ebfff80b 	bl	6030b0a4 <rtk_log_write>
6030d074:	eafffffe 	b	6030d074 <init_xlat_tables+0x4c>
6030d078:	eb0003ca 	bl	6030dfa8 <xlat_arch_current_el>
6030d07c:	e3500001 	cmp	r0, #1
6030d080:	0a000010 	beq	6030d0c8 <init_xlat_tables+0xa0>
6030d084:	e3500002 	cmp	r0, #2
6030d088:	0a00000e 	beq	6030d0c8 <init_xlat_tables+0xa0>
6030d08c:	e3500003 	cmp	r0, #3
6030d090:	0a00000c 	beq	6030d0c8 <init_xlat_tables+0xa0>
6030d094:	e3a00069 	mov	r0, #105	; 0x69
6030d098:	e305c530 	movw	ip, #21808	; 0x5530
6030d09c:	e346c031 	movt	ip, #24625	; 0x6031
6030d0a0:	e3053510 	movw	r3, #21776	; 0x5510
6030d0a4:	e3463031 	movt	r3, #24625	; 0x6031
6030d0a8:	e30415a4 	movw	r1, #17828	; 0x45a4
6030d0ac:	e3461031 	movt	r1, #24625	; 0x6031
6030d0b0:	e58d0004 	str	r0, [sp, #4]
6030d0b4:	e3a02049 	mov	r2, #73	; 0x49
6030d0b8:	e3a00004 	mov	r0, #4
6030d0bc:	e58dc000 	str	ip, [sp]
6030d0c0:	ebfff7f7 	bl	6030b0a4 <rtk_log_write>
6030d0c4:	eafffffe 	b	6030d0c4 <init_xlat_tables+0x9c>
6030d0c8:	e584003c 	str	r0, [r4, #60]	; 0x3c
6030d0cc:	e3060270 	movw	r0, #25200	; 0x6270
6030d0d0:	e3460031 	movt	r0, #24625	; 0x6031
6030d0d4:	e28dd008 	add	sp, sp, #8
6030d0d8:	e8bd4010 	pop	{r4, lr}
6030d0dc:	ea000295 	b	6030db38 <init_xlat_tables_ctx>

6030d0e0 <enable_mmu_svc_mon>:
6030d0e0:	e92d4010 	push	{r4, lr}
6030d0e4:	e3063270 	movw	r3, #25200	; 0x6270
6030d0e8:	e3463031 	movt	r3, #24625	; 0x6031
6030d0ec:	e24dd010 	sub	sp, sp, #16
6030d0f0:	e1a04000 	mov	r4, r0
6030d0f4:	e593c008 	ldr	ip, [r3, #8]
6030d0f8:	e1c300d0 	ldrd	r0, [r3]
6030d0fc:	e5932020 	ldr	r2, [r3, #32]
6030d100:	e1cd00f0 	strd	r0, [sp]
6030d104:	e3a03001 	mov	r3, #1
6030d108:	e1a01004 	mov	r1, r4
6030d10c:	e58dc008 	str	ip, [sp, #8]
6030d110:	e58d300c 	str	r3, [sp, #12]
6030d114:	e3030a78 	movw	r0, #14968	; 0x3a78
6030d118:	e3460032 	movt	r0, #24626	; 0x6032
6030d11c:	eb0003fb 	bl	6030e110 <setup_mmu_cfg>
6030d120:	e1a00004 	mov	r0, r4
6030d124:	e28dd010 	add	sp, sp, #16
6030d128:	e8bd4010 	pop	{r4, lr}
6030d12c:	ea0004c7 	b	6030e450 <enable_mmu_direct_svc_mon>

6030d130 <xlat_desc>:
6030d130:	e92d40f0 	push	{r4, r5, r6, r7, lr}
6030d134:	e1a04001 	mov	r4, r1
6030d138:	e24dd00c 	sub	sp, sp, #12
6030d13c:	e3e01008 	mvn	r1, #8
6030d140:	e3e0c000 	mvn	ip, #0
6030d144:	e59de020 	ldr	lr, [sp, #32]
6030d148:	e0010e91 	mul	r1, r1, lr
6030d14c:	e2811027 	add	r1, r1, #39	; 0x27
6030d150:	e1d2111c 	bics	r1, r2, ip, lsl r1
6030d154:	1a00002a 	bne	6030d204 <xlat_desc+0xd4>
6030d158:	e35e0003 	cmp	lr, #3
6030d15c:	03a05003 	moveq	r5, #3
6030d160:	13a05001 	movne	r5, #1
6030d164:	e094c004 	adds	ip, r4, r4
6030d168:	e590003c 	ldr	r0, [r0, #60]	; 0x3c
6030d16c:	e3140008 	tst	r4, #8
6030d170:	e20cc020 	and	ip, ip, #32
6030d174:	03822080 	orreq	r2, r2, #128	; 0x80
6030d178:	e185500c 	orr	r5, r5, ip
6030d17c:	e1855002 	orr	r5, r5, r2
6030d180:	e1816003 	orr	r6, r1, r3
6030d184:	e3500001 	cmp	r0, #1
6030d188:	0a000010 	beq	6030d1d0 <xlat_desc+0xa0>
6030d18c:	e2403002 	sub	r3, r0, #2
6030d190:	e3530001 	cmp	r3, #1
6030d194:	8a000034 	bhi	6030d26c <xlat_desc+0x13c>
6030d198:	e3855d11 	orr	r5, r5, #1088	; 0x440
6030d19c:	e1a01006 	mov	r1, r6
6030d1a0:	e2147007 	ands	r7, r4, #7
6030d1a4:	0a00000f 	beq	6030d1e8 <xlat_desc+0xb8>
6030d1a8:	e3140028 	tst	r4, #40	; 0x28
6030d1ac:	1a000042 	bne	6030d2bc <xlat_desc+0x18c>
6030d1b0:	e3570002 	cmp	r7, #2
6030d1b4:	0a000039 	beq	6030d2a0 <xlat_desc+0x170>
6030d1b8:	e3570001 	cmp	r7, #1
6030d1bc:	03855f82 	orreq	r5, r5, #520	; 0x208
6030d1c0:	1a00001c 	bne	6030d238 <xlat_desc+0x108>
6030d1c4:	e1a00005 	mov	r0, r5
6030d1c8:	e28dd00c 	add	sp, sp, #12
6030d1cc:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
6030d1d0:	e3140040 	tst	r4, #64	; 0x40
6030d1d4:	03855b01 	orreq	r5, r5, #1024	; 0x400
6030d1d8:	01a01006 	moveq	r1, r6
6030d1dc:	1affffed 	bne	6030d198 <xlat_desc+0x68>
6030d1e0:	e2147007 	ands	r7, r4, #7
6030d1e4:	1affffef 	bne	6030d1a8 <xlat_desc+0x78>
6030d1e8:	eb000355 	bl	6030df44 <xlat_arch_regime_get_xn_desc>
6030d1ec:	e1855000 	orr	r5, r5, r0
6030d1f0:	e3855f81 	orr	r5, r5, #516	; 0x204
6030d1f4:	e1861001 	orr	r1, r6, r1
6030d1f8:	e1a00005 	mov	r0, r5
6030d1fc:	e28dd00c 	add	sp, sp, #12
6030d200:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
6030d204:	e3a00084 	mov	r0, #132	; 0x84
6030d208:	e305c5a4 	movw	ip, #21924	; 0x55a4
6030d20c:	e346c031 	movt	ip, #24625	; 0x6031
6030d210:	e3053510 	movw	r3, #21776	; 0x5510
6030d214:	e3463031 	movt	r3, #24625	; 0x6031
6030d218:	e30415a4 	movw	r1, #17828	; 0x45a4
6030d21c:	e3461031 	movt	r1, #24625	; 0x6031
6030d220:	e58d0004 	str	r0, [sp, #4]
6030d224:	e3a02049 	mov	r2, #73	; 0x49
6030d228:	e3a00004 	mov	r0, #4
6030d22c:	e58dc000 	str	ip, [sp]
6030d230:	ebfff79b 	bl	6030b0a4 <rtk_log_write>
6030d234:	eafffffe 	b	6030d234 <xlat_desc+0x104>
6030d238:	e3a000ee 	mov	r0, #238	; 0xee
6030d23c:	e305c5a4 	movw	ip, #21924	; 0x55a4
6030d240:	e346c031 	movt	ip, #24625	; 0x6031
6030d244:	e3053510 	movw	r3, #21776	; 0x5510
6030d248:	e3463031 	movt	r3, #24625	; 0x6031
6030d24c:	e30415a4 	movw	r1, #17828	; 0x45a4
6030d250:	e3461031 	movt	r1, #24625	; 0x6031
6030d254:	e58d0004 	str	r0, [sp, #4]
6030d258:	e3a02049 	mov	r2, #73	; 0x49
6030d25c:	e3a00004 	mov	r0, #4
6030d260:	e58dc000 	str	ip, [sp]
6030d264:	ebfff78e 	bl	6030b0a4 <rtk_log_write>
6030d268:	eafffffe 	b	6030d268 <xlat_desc+0x138>
6030d26c:	e3a000a6 	mov	r0, #166	; 0xa6
6030d270:	e305c5a4 	movw	ip, #21924	; 0x55a4
6030d274:	e346c031 	movt	ip, #24625	; 0x6031
6030d278:	e3053510 	movw	r3, #21776	; 0x5510
6030d27c:	e3463031 	movt	r3, #24625	; 0x6031
6030d280:	e30415a4 	movw	r1, #17828	; 0x45a4
6030d284:	e3461031 	movt	r1, #24625	; 0x6031
6030d288:	e58d0004 	str	r0, [sp, #4]
6030d28c:	e3a02049 	mov	r2, #73	; 0x49
6030d290:	e3a00004 	mov	r0, #4
6030d294:	e58dc000 	str	ip, [sp]
6030d298:	ebfff781 	bl	6030b0a4 <rtk_log_write>
6030d29c:	eafffffe 	b	6030d29c <xlat_desc+0x16c>
6030d2a0:	e2044d06 	and	r4, r4, #384	; 0x180
6030d2a4:	e3540d06 	cmp	r4, #384	; 0x180
6030d2a8:	0affffc5 	beq	6030d1c4 <xlat_desc+0x94>
6030d2ac:	e3540c01 	cmp	r4, #256	; 0x100
6030d2b0:	03855c02 	orreq	r5, r5, #512	; 0x200
6030d2b4:	13855c03 	orrne	r5, r5, #768	; 0x300
6030d2b8:	eaffffc1 	b	6030d1c4 <xlat_desc+0x94>
6030d2bc:	eb000320 	bl	6030df44 <xlat_arch_regime_get_xn_desc>
6030d2c0:	e1855000 	orr	r5, r5, r0
6030d2c4:	e1861001 	orr	r1, r6, r1
6030d2c8:	eaffffb8 	b	6030d1b0 <xlat_desc+0x80>

6030d2cc <xlat_tables_map_region>:
6030d2cc:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030d2d0:	e1a04002 	mov	r4, r2
6030d2d4:	e24dd02c 	sub	sp, sp, #44	; 0x2c
6030d2d8:	e5902034 	ldr	r2, [r0, #52]	; 0x34
6030d2dc:	e59d7054 	ldr	r7, [sp, #84]	; 0x54
6030d2e0:	e1520007 	cmp	r2, r7
6030d2e4:	93570003 	cmpls	r7, #3
6030d2e8:	9a00000c 	bls	6030d320 <xlat_tables_map_region+0x54>
6030d2ec:	e3000251 	movw	r0, #593	; 0x251
6030d2f0:	e305c5a4 	movw	ip, #21924	; 0x55a4
6030d2f4:	e346c031 	movt	ip, #24625	; 0x6031
6030d2f8:	e3053510 	movw	r3, #21776	; 0x5510
6030d2fc:	e3463031 	movt	r3, #24625	; 0x6031
6030d300:	e30415a4 	movw	r1, #17828	; 0x45a4
6030d304:	e3461031 	movt	r1, #24625	; 0x6031
6030d308:	e58d0004 	str	r0, [sp, #4]
6030d30c:	e3a02049 	mov	r2, #73	; 0x49
6030d310:	e3a00004 	mov	r0, #4
6030d314:	e58dc000 	str	ip, [sp]
6030d318:	ebfff761 	bl	6030b0a4 <rtk_log_write>
6030d31c:	eafffffe 	b	6030d31c <xlat_tables_map_region+0x50>
6030d320:	e3e02008 	mvn	r2, #8
6030d324:	e1a05001 	mov	r5, r1
6030d328:	e0020792 	mul	r2, r2, r7
6030d32c:	e5911008 	ldr	r1, [r1, #8]
6030d330:	e1a06000 	mov	r6, r0
6030d334:	e2820027 	add	r0, r2, #39	; 0x27
6030d338:	e595200c 	ldr	r2, [r5, #12]
6030d33c:	e1510004 	cmp	r1, r4
6030d340:	e0812002 	add	r2, r1, r2
6030d344:	e2422001 	sub	r2, r2, #1
6030d348:	e58d2010 	str	r2, [sp, #16]
6030d34c:	e3a02001 	mov	r2, #1
6030d350:	93a08000 	movls	r8, #0
6030d354:	e1a02012 	lsl	r2, r2, r0
6030d358:	e58d0014 	str	r0, [sp, #20]
6030d35c:	e58d200c 	str	r2, [sp, #12]
6030d360:	8a000059 	bhi	6030d4cc <xlat_tables_map_region+0x200>
6030d364:	e083b188 	add	fp, r3, r8, lsl #3
6030d368:	e59d300c 	ldr	r3, [sp, #12]
6030d36c:	e3a0aa0f 	mov	sl, #61440	; 0xf000
6030d370:	e34fafff 	movt	sl, #65535	; 0xffff
6030d374:	e2433001 	sub	r3, r3, #1
6030d378:	e0849003 	add	r9, r4, r3
6030d37c:	e58d301c 	str	r3, [sp, #28]
6030d380:	e2873001 	add	r3, r7, #1
6030d384:	e58d3018 	str	r3, [sp, #24]
6030d388:	e59d3050 	ldr	r3, [sp, #80]	; 0x50
6030d38c:	e1580003 	cmp	r8, r3
6030d390:	2a0000b8 	bcs	6030d678 <xlat_tables_map_region+0x3ac>
6030d394:	e5953008 	ldr	r3, [r5, #8]
6030d398:	e595200c 	ldr	r2, [r5, #12]
6030d39c:	e1530004 	cmp	r3, r4
6030d3a0:	e0832002 	add	r2, r3, r2
6030d3a4:	e2422001 	sub	r2, r2, #1
6030d3a8:	83a00000 	movhi	r0, #0
6030d3ac:	93a00001 	movls	r0, #1
6030d3b0:	e59b1000 	ldr	r1, [fp]
6030d3b4:	e1520009 	cmp	r2, r9
6030d3b8:	33a00000 	movcc	r0, #0
6030d3bc:	e3500000 	cmp	r0, #0
6030d3c0:	e2010003 	and	r0, r1, #3
6030d3c4:	1a000019 	bne	6030d430 <xlat_tables_map_region+0x164>
6030d3c8:	e1530009 	cmp	r3, r9
6030d3cc:	83a03000 	movhi	r3, #0
6030d3d0:	93a03001 	movls	r3, #1
6030d3d4:	e1520004 	cmp	r2, r4
6030d3d8:	23833001 	orrcs	r3, r3, #1
6030d3dc:	e3530000 	cmp	r3, #0
6030d3e0:	0a00002f 	beq	6030d4a4 <xlat_tables_map_region+0x1d8>
6030d3e4:	e3570003 	cmp	r7, #3
6030d3e8:	0a00003f 	beq	6030d4ec <xlat_tables_map_region+0x220>
6030d3ec:	e3500000 	cmp	r0, #0
6030d3f0:	0a00004a 	beq	6030d520 <xlat_tables_map_region+0x254>
6030d3f4:	e3500003 	cmp	r0, #3
6030d3f8:	0a00008a 	beq	6030d628 <xlat_tables_map_region+0x35c>
6030d3fc:	e300022f 	movw	r0, #559	; 0x22f
6030d400:	e305c5a4 	movw	ip, #21924	; 0x55a4
6030d404:	e346c031 	movt	ip, #24625	; 0x6031
6030d408:	e3053510 	movw	r3, #21776	; 0x5510
6030d40c:	e3463031 	movt	r3, #24625	; 0x6031
6030d410:	e30415a4 	movw	r1, #17828	; 0x45a4
6030d414:	e3461031 	movt	r1, #24625	; 0x6031
6030d418:	e58d0004 	str	r0, [sp, #4]
6030d41c:	e3a02049 	mov	r2, #73	; 0x49
6030d420:	e3a00004 	mov	r0, #4
6030d424:	e58dc000 	str	ip, [sp]
6030d428:	ebfff71d 	bl	6030b0a4 <rtk_log_write>
6030d42c:	eafffffe 	b	6030d42c <xlat_tables_map_region+0x160>
6030d430:	e5952000 	ldr	r2, [r5]
6030d434:	e595c004 	ldr	ip, [r5, #4]
6030d438:	e0523003 	subs	r3, r2, r3
6030d43c:	e2ccc000 	sbc	ip, ip, #0
6030d440:	e0932004 	adds	r2, r3, r4
6030d444:	e2ac3000 	adc	r3, ip, #0
6030d448:	e3570003 	cmp	r7, #3
6030d44c:	0a000064 	beq	6030d5e4 <xlat_tables_map_region+0x318>
6030d450:	e3500003 	cmp	r0, #3
6030d454:	0a000073 	beq	6030d628 <xlat_tables_map_region+0x35c>
6030d458:	e3500000 	cmp	r0, #0
6030d45c:	1a000051 	bne	6030d5a8 <xlat_tables_map_region+0x2dc>
6030d460:	e59d101c 	ldr	r1, [sp, #28]
6030d464:	e1120001 	tst	r2, r1
6030d468:	13a01001 	movne	r1, #1
6030d46c:	03a01000 	moveq	r1, #0
6030d470:	e3570000 	cmp	r7, #0
6030d474:	03811001 	orreq	r1, r1, #1
6030d478:	e3510000 	cmp	r1, #0
6030d47c:	1a000027 	bne	6030d520 <xlat_tables_map_region+0x254>
6030d480:	e5951014 	ldr	r1, [r5, #20]
6030d484:	e59d0014 	ldr	r0, [sp, #20]
6030d488:	e1b01031 	lsrs	r1, r1, r0
6030d48c:	0a000023 	beq	6030d520 <xlat_tables_map_region+0x254>
6030d490:	e58d7000 	str	r7, [sp]
6030d494:	e1a00006 	mov	r0, r6
6030d498:	e5951010 	ldr	r1, [r5, #16]
6030d49c:	ebffff23 	bl	6030d130 <xlat_desc>
6030d4a0:	e1cb00f0 	strd	r0, [fp]
6030d4a4:	e59d300c 	ldr	r3, [sp, #12]
6030d4a8:	e59d2010 	ldr	r2, [sp, #16]
6030d4ac:	e0844003 	add	r4, r4, r3
6030d4b0:	e2888001 	add	r8, r8, #1
6030d4b4:	e28bb008 	add	fp, fp, #8
6030d4b8:	e1520004 	cmp	r2, r4
6030d4bc:	e0833009 	add	r3, r3, r9
6030d4c0:	9a000083 	bls	6030d6d4 <xlat_tables_map_region+0x408>
6030d4c4:	e1a09003 	mov	r9, r3
6030d4c8:	eaffffae 	b	6030d388 <xlat_tables_map_region+0xbc>
6030d4cc:	e59d200c 	ldr	r2, [sp, #12]
6030d4d0:	e2622000 	rsb	r2, r2, #0
6030d4d4:	e0011002 	and	r1, r1, r2
6030d4d8:	e59d2014 	ldr	r2, [sp, #20]
6030d4dc:	e0418004 	sub	r8, r1, r4
6030d4e0:	e1a04001 	mov	r4, r1
6030d4e4:	e1a08238 	lsr	r8, r8, r2
6030d4e8:	eaffff9d 	b	6030d364 <xlat_tables_map_region+0x98>
6030d4ec:	e3a00f89 	mov	r0, #548	; 0x224
6030d4f0:	e305c5a4 	movw	ip, #21924	; 0x55a4
6030d4f4:	e346c031 	movt	ip, #24625	; 0x6031
6030d4f8:	e3053510 	movw	r3, #21776	; 0x5510
6030d4fc:	e3463031 	movt	r3, #24625	; 0x6031
6030d500:	e30415a4 	movw	r1, #17828	; 0x45a4
6030d504:	e3461031 	movt	r1, #24625	; 0x6031
6030d508:	e58d0004 	str	r0, [sp, #4]
6030d50c:	e3a02049 	mov	r2, #73	; 0x49
6030d510:	e3a00004 	mov	r0, #4
6030d514:	e58dc000 	str	ip, [sp]
6030d518:	ebfff6e1 	bl	6030b0a4 <rtk_log_write>
6030d51c:	eafffffe 	b	6030d51c <xlat_tables_map_region+0x250>
6030d520:	e596201c 	ldr	r2, [r6, #28]
6030d524:	e5963018 	ldr	r3, [r6, #24]
6030d528:	e1520003 	cmp	r2, r3
6030d52c:	aa000053 	bge	6030d680 <xlat_tables_map_region+0x3b4>
6030d530:	e5963014 	ldr	r3, [r6, #20]
6030d534:	e0933602 	adds	r3, r3, r2, lsl #12
6030d538:	e2822001 	add	r2, r2, #1
6030d53c:	e586201c 	str	r2, [r6, #28]
6030d540:	e1a02004 	mov	r2, r4
6030d544:	0a000014 	beq	6030d59c <xlat_tables_map_region+0x2d0>
6030d548:	e3830003 	orr	r0, r3, #3
6030d54c:	e58b0000 	str	r0, [fp]
6030d550:	e3a00000 	mov	r0, #0
6030d554:	e58b0004 	str	r0, [fp, #4]
6030d558:	e59d0018 	ldr	r0, [sp, #24]
6030d55c:	e1a01005 	mov	r1, r5
6030d560:	e58d0004 	str	r0, [sp, #4]
6030d564:	e3a00c02 	mov	r0, #512	; 0x200
6030d568:	e58d0000 	str	r0, [sp]
6030d56c:	e1a00006 	mov	r0, r6
6030d570:	e58d3024 	str	r3, [sp, #36]	; 0x24
6030d574:	ebffff54 	bl	6030d2cc <xlat_tables_map_region>
6030d578:	e58d0020 	str	r0, [sp, #32]
6030d57c:	eb000266 	bl	6030df1c <is_dcache_enabled>
6030d580:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
6030d584:	e3500000 	cmp	r0, #0
6030d588:	1a00004d 	bne	6030d6c4 <xlat_tables_map_region+0x3f8>
6030d58c:	e59d3020 	ldr	r3, [sp, #32]
6030d590:	e1530009 	cmp	r3, r9
6030d594:	0affffc2 	beq	6030d4a4 <xlat_tables_map_region+0x1d8>
6030d598:	e1a02003 	mov	r2, r3
6030d59c:	e1a00002 	mov	r0, r2
6030d5a0:	e28dd02c 	add	sp, sp, #44	; 0x2c
6030d5a4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030d5a8:	e3500001 	cmp	r0, #1
6030d5ac:	0affffbc 	beq	6030d4a4 <xlat_tables_map_region+0x1d8>
6030d5b0:	e300020f 	movw	r0, #527	; 0x20f
6030d5b4:	e305c5a4 	movw	ip, #21924	; 0x55a4
6030d5b8:	e346c031 	movt	ip, #24625	; 0x6031
6030d5bc:	e3053510 	movw	r3, #21776	; 0x5510
6030d5c0:	e3463031 	movt	r3, #24625	; 0x6031
6030d5c4:	e30415a4 	movw	r1, #17828	; 0x45a4
6030d5c8:	e3461031 	movt	r1, #24625	; 0x6031
6030d5cc:	e58d0004 	str	r0, [sp, #4]
6030d5d0:	e3a02049 	mov	r2, #73	; 0x49
6030d5d4:	e3a00004 	mov	r0, #4
6030d5d8:	e58dc000 	str	ip, [sp]
6030d5dc:	ebfff6b0 	bl	6030b0a4 <rtk_log_write>
6030d5e0:	eafffffe 	b	6030d5e0 <xlat_tables_map_region+0x314>
6030d5e4:	e3500003 	cmp	r0, #3
6030d5e8:	0affffad 	beq	6030d4a4 <xlat_tables_map_region+0x1d8>
6030d5ec:	e3500000 	cmp	r0, #0
6030d5f0:	0affffa6 	beq	6030d490 <xlat_tables_map_region+0x1c4>
6030d5f4:	e30001e7 	movw	r0, #487	; 0x1e7
6030d5f8:	e305c5a4 	movw	ip, #21924	; 0x55a4
6030d5fc:	e346c031 	movt	ip, #24625	; 0x6031
6030d600:	e3053510 	movw	r3, #21776	; 0x5510
6030d604:	e3463031 	movt	r3, #24625	; 0x6031
6030d608:	e30415a4 	movw	r1, #17828	; 0x45a4
6030d60c:	e3461031 	movt	r1, #24625	; 0x6031
6030d610:	e58d0004 	str	r0, [sp, #4]
6030d614:	e3a02049 	mov	r2, #73	; 0x49
6030d618:	e3a00004 	mov	r0, #4
6030d61c:	e58dc000 	str	ip, [sp]
6030d620:	ebfff69f 	bl	6030b0a4 <rtk_log_write>
6030d624:	eafffffe 	b	6030d624 <xlat_tables_map_region+0x358>
6030d628:	e59d2018 	ldr	r2, [sp, #24]
6030d62c:	e001300a 	and	r3, r1, sl
6030d630:	e58d2004 	str	r2, [sp, #4]
6030d634:	e1a01005 	mov	r1, r5
6030d638:	e3a02c02 	mov	r2, #512	; 0x200
6030d63c:	e1a00006 	mov	r0, r6
6030d640:	e58d2000 	str	r2, [sp]
6030d644:	e1a02004 	mov	r2, r4
6030d648:	e58d3024 	str	r3, [sp, #36]	; 0x24
6030d64c:	ebffff1e 	bl	6030d2cc <xlat_tables_map_region>
6030d650:	e58d0020 	str	r0, [sp, #32]
6030d654:	eb000230 	bl	6030df1c <is_dcache_enabled>
6030d658:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
6030d65c:	e3500000 	cmp	r0, #0
6030d660:	1a000013 	bne	6030d6b4 <xlat_tables_map_region+0x3e8>
6030d664:	e59d3020 	ldr	r3, [sp, #32]
6030d668:	e1530009 	cmp	r3, r9
6030d66c:	0affff8c 	beq	6030d4a4 <xlat_tables_map_region+0x1d8>
6030d670:	e59d2020 	ldr	r2, [sp, #32]
6030d674:	eaffffc8 	b	6030d59c <xlat_tables_map_region+0x2d0>
6030d678:	e2442001 	sub	r2, r4, #1
6030d67c:	eaffffc6 	b	6030d59c <xlat_tables_map_region+0x2d0>
6030d680:	e3a00072 	mov	r0, #114	; 0x72
6030d684:	e305c5a4 	movw	ip, #21924	; 0x55a4
6030d688:	e346c031 	movt	ip, #24625	; 0x6031
6030d68c:	e3053510 	movw	r3, #21776	; 0x5510
6030d690:	e3463031 	movt	r3, #24625	; 0x6031
6030d694:	e30415a4 	movw	r1, #17828	; 0x45a4
6030d698:	e3461031 	movt	r1, #24625	; 0x6031
6030d69c:	e58d0004 	str	r0, [sp, #4]
6030d6a0:	e3a02049 	mov	r2, #73	; 0x49
6030d6a4:	e3a00004 	mov	r0, #4
6030d6a8:	e58dc000 	str	ip, [sp]
6030d6ac:	ebfff67c 	bl	6030b0a4 <rtk_log_write>
6030d6b0:	eafffffe 	b	6030d6b0 <xlat_tables_map_region+0x3e4>
6030d6b4:	e1a00003 	mov	r0, r3
6030d6b8:	e3a01a01 	mov	r1, #4096	; 0x1000
6030d6bc:	eb00037c 	bl	6030e4b4 <clean_dcache_range>
6030d6c0:	eaffffe7 	b	6030d664 <xlat_tables_map_region+0x398>
6030d6c4:	e1a00003 	mov	r0, r3
6030d6c8:	e3a01a01 	mov	r1, #4096	; 0x1000
6030d6cc:	eb000378 	bl	6030e4b4 <clean_dcache_range>
6030d6d0:	eaffffad 	b	6030d58c <xlat_tables_map_region+0x2c0>
6030d6d4:	e1a02009 	mov	r2, r9
6030d6d8:	eaffffaf 	b	6030d59c <xlat_tables_map_region+0x2d0>

6030d6dc <mmap_add_region_ctx>:
6030d6dc:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030d6e0:	e24dd034 	sub	sp, sp, #52	; 0x34
6030d6e4:	e591a00c 	ldr	sl, [r1, #12]
6030d6e8:	e1cd00fc 	strd	r0, [sp, #12]
6030d6ec:	e35a0000 	cmp	sl, #0
6030d6f0:	0a0000ec 	beq	6030daa8 <mmap_add_region_ctx+0x3cc>
6030d6f4:	e5d03038 	ldrb	r3, [r0, #56]	; 0x38
6030d6f8:	e3530000 	cmp	r3, #0
6030d6fc:	1a00008b 	bne	6030d930 <mmap_add_region_ctx+0x254>
6030d700:	e59d1010 	ldr	r1, [sp, #16]
6030d704:	e8911100 	ldm	r1, {r8, ip}
6030d708:	e5912014 	ldr	r2, [r1, #20]
6030d70c:	e7eb3058 	ubfx	r3, r8, #0, #12
6030d710:	e3933000 	orrs	r3, r3, #0
6030d714:	1a0000ff 	bne	6030db18 <mmap_add_region_ctx+0x43c>
6030d718:	e5916008 	ldr	r6, [r1, #8]
6030d71c:	e18a3006 	orr	r3, sl, r6
6030d720:	e7eb3053 	ubfx	r3, r3, #0, #12
6030d724:	e3530000 	cmp	r3, #0
6030d728:	1a0000fa 	bne	6030db18 <mmap_add_region_ctx+0x43c>
6030d72c:	e3520101 	cmp	r2, #1073741824	; 0x40000000
6030d730:	13520602 	cmpne	r2, #2097152	; 0x200000
6030d734:	13a03001 	movne	r3, #1
6030d738:	03a03000 	moveq	r3, #0
6030d73c:	e3520a01 	cmp	r2, #4096	; 0x1000
6030d740:	03a03000 	moveq	r3, #0
6030d744:	12033001 	andne	r3, r3, #1
6030d748:	e3530000 	cmp	r3, #0
6030d74c:	1a0000f1 	bne	6030db18 <mmap_add_region_ctx+0x43c>
6030d750:	e2583001 	subs	r3, r8, #1
6030d754:	e2cc2000 	sbc	r2, ip, #0
6030d758:	e093100a 	adds	r1, r3, sl
6030d75c:	e2a20000 	adc	r0, r2, #0
6030d760:	e1510008 	cmp	r1, r8
6030d764:	e0d0300c 	sbcs	r3, r0, ip
6030d768:	e08a3006 	add	r3, sl, r6
6030d76c:	e1a02003 	mov	r2, r3
6030d770:	e58d301c 	str	r3, [sp, #28]
6030d774:	e2425001 	sub	r5, r2, #1
6030d778:	33a03001 	movcc	r3, #1
6030d77c:	23a03000 	movcs	r3, #0
6030d780:	e1560005 	cmp	r6, r5
6030d784:	83833001 	orrhi	r3, r3, #1
6030d788:	e3530000 	cmp	r3, #0
6030d78c:	e58d1008 	str	r1, [sp, #8]
6030d790:	e58d002c 	str	r0, [sp, #44]	; 0x2c
6030d794:	1a0000e1 	bne	6030db20 <mmap_add_region_ctx+0x444>
6030d798:	e59d200c 	ldr	r2, [sp, #12]
6030d79c:	e5923008 	ldr	r3, [r2, #8]
6030d7a0:	e1550003 	cmp	r5, r3
6030d7a4:	8a0000dd 	bhi	6030db20 <mmap_add_region_ctx+0x444>
6030d7a8:	e5923000 	ldr	r3, [r2]
6030d7ac:	e1530001 	cmp	r3, r1
6030d7b0:	e5923004 	ldr	r3, [r2, #4]
6030d7b4:	e0d33000 	sbcs	r3, r3, r0
6030d7b8:	3a0000d8 	bcc	6030db20 <mmap_add_region_ctx+0x444>
6030d7bc:	e592100c 	ldr	r1, [r2, #12]
6030d7c0:	e5923010 	ldr	r3, [r2, #16]
6030d7c4:	e3a02018 	mov	r2, #24
6030d7c8:	e58d1014 	str	r1, [sp, #20]
6030d7cc:	e0231392 	mla	r3, r2, r3, r1
6030d7d0:	e58d3018 	str	r3, [sp, #24]
6030d7d4:	e513300c 	ldr	r3, [r3, #-12]
6030d7d8:	e3530000 	cmp	r3, #0
6030d7dc:	1a0000d3 	bne	6030db30 <mmap_add_region_ctx+0x454>
6030d7e0:	e591b00c 	ldr	fp, [r1, #12]
6030d7e4:	e5913008 	ldr	r3, [r1, #8]
6030d7e8:	e35b0000 	cmp	fp, #0
6030d7ec:	e58d3020 	str	r3, [sp, #32]
6030d7f0:	0a0000cc 	beq	6030db28 <mmap_add_region_ctx+0x44c>
6030d7f4:	e0819002 	add	r9, r1, r2
6030d7f8:	e1a03009 	mov	r3, r9
6030d7fc:	e1a0100b 	mov	r1, fp
6030d800:	e58db024 	str	fp, [sp, #36]	; 0x24
6030d804:	e58d9028 	str	r9, [sp, #40]	; 0x28
6030d808:	e1a0b000 	mov	fp, r0
6030d80c:	e1a0900c 	mov	r9, ip
6030d810:	ea00001f 	b	6030d894 <mmap_add_region_ctx+0x1b8>
6030d814:	e1550000 	cmp	r5, r0
6030d818:	33a04000 	movcc	r4, #0
6030d81c:	23a04001 	movcs	r4, #1
6030d820:	e1560002 	cmp	r6, r2
6030d824:	83a04000 	movhi	r4, #0
6030d828:	e3540000 	cmp	r4, #0
6030d82c:	1a000024 	bne	6030d8c4 <mmap_add_region_ctx+0x1e8>
6030d830:	e2511001 	subs	r1, r1, #1
6030d834:	e2c44000 	sbc	r4, r4, #0
6030d838:	e09cc00e 	adds	ip, ip, lr
6030d83c:	e0a74004 	adc	r4, r7, r4
6030d840:	e15c0008 	cmp	ip, r8
6030d844:	e59dc008 	ldr	ip, [sp, #8]
6030d848:	e0d41009 	sbcs	r1, r4, r9
6030d84c:	33a01001 	movcc	r1, #1
6030d850:	23a01000 	movcs	r1, #0
6030d854:	e15c000e 	cmp	ip, lr
6030d858:	e0dbc007 	sbcs	ip, fp, r7
6030d85c:	33811001 	orrcc	r1, r1, #1
6030d860:	e1560000 	cmp	r6, r0
6030d864:	93a00000 	movls	r0, #0
6030d868:	83a00001 	movhi	r0, #1
6030d86c:	e1550002 	cmp	r5, r2
6030d870:	33800001 	orrcc	r0, r0, #1
6030d874:	e3500000 	cmp	r0, #0
6030d878:	0a00001b 	beq	6030d8ec <mmap_add_region_ctx+0x210>
6030d87c:	e3510000 	cmp	r1, #0
6030d880:	0a000019 	beq	6030d8ec <mmap_add_region_ctx+0x210>
6030d884:	e593100c 	ldr	r1, [r3, #12]
6030d888:	e2833018 	add	r3, r3, #24
6030d88c:	e3510000 	cmp	r1, #0
6030d890:	0a000033 	beq	6030d964 <mmap_add_region_ctx+0x288>
6030d894:	e5132010 	ldr	r2, [r3, #-16]
6030d898:	e241c001 	sub	ip, r1, #1
6030d89c:	e08c0002 	add	r0, ip, r2
6030d8a0:	e1550000 	cmp	r5, r0
6030d8a4:	83a04000 	movhi	r4, #0
6030d8a8:	93a04001 	movls	r4, #1
6030d8ac:	e1560002 	cmp	r6, r2
6030d8b0:	33a04000 	movcc	r4, #0
6030d8b4:	e513e018 	ldr	lr, [r3, #-24]	; 0xffffffe8
6030d8b8:	e5137014 	ldr	r7, [r3, #-20]	; 0xffffffec
6030d8bc:	e3540000 	cmp	r4, #0
6030d8c0:	0affffd3 	beq	6030d814 <mmap_add_region_ctx+0x138>
6030d8c4:	e052e00e 	subs	lr, r2, lr
6030d8c8:	e2e77000 	rsc	r7, r7, #0
6030d8cc:	e056c008 	subs	ip, r6, r8
6030d8d0:	e2e90000 	rsc	r0, r9, #0
6030d8d4:	e1570000 	cmp	r7, r0
6030d8d8:	015e000c 	cmpeq	lr, ip
6030d8dc:	1a000002 	bne	6030d8ec <mmap_add_region_ctx+0x210>
6030d8e0:	e15a0001 	cmp	sl, r1
6030d8e4:	01560002 	cmpeq	r6, r2
6030d8e8:	1affffe5 	bne	6030d884 <mmap_add_region_ctx+0x1a8>
6030d8ec:	e3e01000 	mvn	r1, #0
6030d8f0:	e3050614 	movw	r0, #22036	; 0x5614
6030d8f4:	e3460031 	movt	r0, #24625	; 0x6031
6030d8f8:	ebffebc0 	bl	60308800 <__wrap_printf>
6030d8fc:	e3a00fce 	mov	r0, #824	; 0x338
6030d900:	e305c5a4 	movw	ip, #21924	; 0x55a4
6030d904:	e346c031 	movt	ip, #24625	; 0x6031
6030d908:	e3053510 	movw	r3, #21776	; 0x5510
6030d90c:	e3463031 	movt	r3, #24625	; 0x6031
6030d910:	e30415a4 	movw	r1, #17828	; 0x45a4
6030d914:	e3461031 	movt	r1, #24625	; 0x6031
6030d918:	e58d0004 	str	r0, [sp, #4]
6030d91c:	e3a02049 	mov	r2, #73	; 0x49
6030d920:	e3a00004 	mov	r0, #4
6030d924:	e58dc000 	str	ip, [sp]
6030d928:	ebfff5dd 	bl	6030b0a4 <rtk_log_write>
6030d92c:	eafffffe 	b	6030d92c <mmap_add_region_ctx+0x250>
6030d930:	e3000333 	movw	r0, #819	; 0x333
6030d934:	e305c5a4 	movw	ip, #21924	; 0x55a4
6030d938:	e346c031 	movt	ip, #24625	; 0x6031
6030d93c:	e3053510 	movw	r3, #21776	; 0x5510
6030d940:	e3463031 	movt	r3, #24625	; 0x6031
6030d944:	e30415a4 	movw	r1, #17828	; 0x45a4
6030d948:	e3461031 	movt	r1, #24625	; 0x6031
6030d94c:	e58d0004 	str	r0, [sp, #4]
6030d950:	e3a02049 	mov	r2, #73	; 0x49
6030d954:	e3a00004 	mov	r0, #4
6030d958:	e58dc000 	str	ip, [sp]
6030d95c:	ebfff5d0 	bl	6030b0a4 <rtk_log_write>
6030d960:	eafffffe 	b	6030d960 <mmap_add_region_ctx+0x284>
6030d964:	e59db024 	ldr	fp, [sp, #36]	; 0x24
6030d968:	e59d3020 	ldr	r3, [sp, #32]
6030d96c:	e59d9028 	ldr	r9, [sp, #40]	; 0x28
6030d970:	e08b3003 	add	r3, fp, r3
6030d974:	e2432001 	sub	r2, r3, #1
6030d978:	e1550002 	cmp	r5, r2
6030d97c:	e59d4014 	ldr	r4, [sp, #20]
6030d980:	93a02001 	movls	r2, #1
6030d984:	9a00000b 	bls	6030d9b8 <mmap_add_region_ctx+0x2dc>
6030d988:	e594b024 	ldr	fp, [r4, #36]	; 0x24
6030d98c:	e5943020 	ldr	r3, [r4, #32]
6030d990:	e25b2000 	subs	r2, fp, #0
6030d994:	e08b3003 	add	r3, fp, r3
6030d998:	13a02001 	movne	r2, #1
6030d99c:	e2430001 	sub	r0, r3, #1
6030d9a0:	e1500005 	cmp	r0, r5
6030d9a4:	23a01000 	movcs	r1, #0
6030d9a8:	32021001 	andcc	r1, r2, #1
6030d9ac:	e2844018 	add	r4, r4, #24
6030d9b0:	e3510000 	cmp	r1, #0
6030d9b4:	1afffff3 	bne	6030d988 <mmap_add_region_ctx+0x2ac>
6030d9b8:	e59d101c 	ldr	r1, [sp, #28]
6030d9bc:	e15a000b 	cmp	sl, fp
6030d9c0:	e0410003 	sub	r0, r1, r3
6030d9c4:	e16f0f10 	clz	r0, r0
6030d9c8:	e1a002a0 	lsr	r0, r0, #5
6030d9cc:	93a00000 	movls	r0, #0
6030d9d0:	e1120000 	tst	r2, r0
6030d9d4:	0a00000b 	beq	6030da08 <mmap_add_region_ctx+0x32c>
6030d9d8:	e2844018 	add	r4, r4, #24
6030d9dc:	e1c420d8 	ldrd	r2, [r4, #8]
6030d9e0:	e3530000 	cmp	r3, #0
6030d9e4:	115a0003 	cmpne	sl, r3
6030d9e8:	e0832002 	add	r2, r3, r2
6030d9ec:	83a03001 	movhi	r3, #1
6030d9f0:	93a03000 	movls	r3, #0
6030d9f4:	e1520001 	cmp	r2, r1
6030d9f8:	13a03000 	movne	r3, #0
6030d9fc:	02033001 	andeq	r3, r3, #1
6030da00:	e3530000 	cmp	r3, #0
6030da04:	1afffff3 	bne	6030d9d8 <mmap_add_region_ctx+0x2fc>
6030da08:	e59d3014 	ldr	r3, [sp, #20]
6030da0c:	e59d2018 	ldr	r2, [sp, #24]
6030da10:	e1530002 	cmp	r3, r2
6030da14:	359d1018 	ldrcc	r1, [sp, #24]
6030da18:	3a000003 	bcc	6030da2c <mmap_add_region_ctx+0x350>
6030da1c:	ea000023 	b	6030dab0 <mmap_add_region_ctx+0x3d4>
6030da20:	e1590001 	cmp	r9, r1
6030da24:	2a000021 	bcs	6030dab0 <mmap_add_region_ctx+0x3d4>
6030da28:	e2899018 	add	r9, r9, #24
6030da2c:	e599300c 	ldr	r3, [r9, #12]
6030da30:	e3530000 	cmp	r3, #0
6030da34:	1afffff9 	bne	6030da20 <mmap_add_region_ctx+0x344>
6030da38:	e58d9014 	str	r9, [sp, #20]
6030da3c:	e59d3014 	ldr	r3, [sp, #20]
6030da40:	e1a01004 	mov	r1, r4
6030da44:	e0432004 	sub	r2, r3, r4
6030da48:	e2840018 	add	r0, r4, #24
6030da4c:	ebffcf63 	bl	603017e0 <memmove>
6030da50:	e59d3018 	ldr	r3, [sp, #24]
6030da54:	e593300c 	ldr	r3, [r3, #12]
6030da58:	e3530000 	cmp	r3, #0
6030da5c:	1a000020 	bne	6030dae4 <mmap_add_region_ctx+0x408>
6030da60:	e59dc010 	ldr	ip, [sp, #16]
6030da64:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
6030da68:	e8a4000f 	stmia	r4!, {r0, r1, r2, r3}
6030da6c:	e59d200c 	ldr	r2, [sp, #12]
6030da70:	e89c0003 	ldm	ip, {r0, r1}
6030da74:	e8840003 	stm	r4, {r0, r1}
6030da78:	e59d1008 	ldr	r1, [sp, #8]
6030da7c:	e5923028 	ldr	r3, [r2, #40]	; 0x28
6030da80:	e59d002c 	ldr	r0, [sp, #44]	; 0x2c
6030da84:	e1530001 	cmp	r3, r1
6030da88:	e592302c 	ldr	r3, [r2, #44]	; 0x2c
6030da8c:	e0d33000 	sbcs	r3, r3, r0
6030da90:	35821028 	strcc	r1, [r2, #40]	; 0x28
6030da94:	3582002c 	strcc	r0, [r2, #44]	; 0x2c
6030da98:	e59d200c 	ldr	r2, [sp, #12]
6030da9c:	e5923030 	ldr	r3, [r2, #48]	; 0x30
6030daa0:	e1530005 	cmp	r3, r5
6030daa4:	35825030 	strcc	r5, [r2, #48]	; 0x30
6030daa8:	e28dd034 	add	sp, sp, #52	; 0x34
6030daac:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030dab0:	e300336b 	movw	r3, #875	; 0x36b
6030dab4:	e30515a4 	movw	r1, #21924	; 0x55a4
6030dab8:	e3461031 	movt	r1, #24625	; 0x6031
6030dabc:	e58d3004 	str	r3, [sp, #4]
6030dac0:	e58d1000 	str	r1, [sp]
6030dac4:	e3053510 	movw	r3, #21776	; 0x5510
6030dac8:	e3463031 	movt	r3, #24625	; 0x6031
6030dacc:	e30415a4 	movw	r1, #17828	; 0x45a4
6030dad0:	e3461031 	movt	r1, #24625	; 0x6031
6030dad4:	e3a02049 	mov	r2, #73	; 0x49
6030dad8:	e3a00004 	mov	r0, #4
6030dadc:	ebfff570 	bl	6030b0a4 <rtk_log_write>
6030dae0:	eafffffe 	b	6030dae0 <mmap_add_region_ctx+0x404>
6030dae4:	e3000377 	movw	r0, #887	; 0x377
6030dae8:	e305c5a4 	movw	ip, #21924	; 0x55a4
6030daec:	e346c031 	movt	ip, #24625	; 0x6031
6030daf0:	e3053510 	movw	r3, #21776	; 0x5510
6030daf4:	e3463031 	movt	r3, #24625	; 0x6031
6030daf8:	e30415a4 	movw	r1, #17828	; 0x45a4
6030dafc:	e3461031 	movt	r1, #24625	; 0x6031
6030db00:	e58d0004 	str	r0, [sp, #4]
6030db04:	e3a02049 	mov	r2, #73	; 0x49
6030db08:	e3a00004 	mov	r0, #4
6030db0c:	e58dc000 	str	ip, [sp]
6030db10:	ebfff563 	bl	6030b0a4 <rtk_log_write>
6030db14:	eafffffe 	b	6030db14 <mmap_add_region_ctx+0x438>
6030db18:	e3e01015 	mvn	r1, #21
6030db1c:	eaffff73 	b	6030d8f0 <mmap_add_region_ctx+0x214>
6030db20:	e3e01021 	mvn	r1, #33	; 0x21
6030db24:	eaffff71 	b	6030d8f0 <mmap_add_region_ctx+0x214>
6030db28:	e59d4014 	ldr	r4, [sp, #20]
6030db2c:	eaffffc2 	b	6030da3c <mmap_add_region_ctx+0x360>
6030db30:	e3e0100b 	mvn	r1, #11
6030db34:	eaffff6d 	b	6030d8f0 <mmap_add_region_ctx+0x214>

6030db38 <init_xlat_tables_ctx>:
6030db38:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
6030db3c:	e2504000 	subs	r4, r0, #0
6030db40:	e24dd018 	sub	sp, sp, #24
6030db44:	0a00007b 	beq	6030dd38 <init_xlat_tables_ctx+0x200>
6030db48:	e5d43038 	ldrb	r3, [r4, #56]	; 0x38
6030db4c:	e3530000 	cmp	r3, #0
6030db50:	1a00005e 	bne	6030dcd0 <init_xlat_tables_ctx+0x198>
6030db54:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
6030db58:	e2433001 	sub	r3, r3, #1
6030db5c:	e3530002 	cmp	r3, #2
6030db60:	9a00000c 	bls	6030db98 <init_xlat_tables_ctx+0x60>
6030db64:	e30004d7 	movw	r0, #1239	; 0x4d7
6030db68:	e305c5a4 	movw	ip, #21924	; 0x55a4
6030db6c:	e346c031 	movt	ip, #24625	; 0x6031
6030db70:	e3053510 	movw	r3, #21776	; 0x5510
6030db74:	e3463031 	movt	r3, #24625	; 0x6031
6030db78:	e30415a4 	movw	r1, #17828	; 0x45a4
6030db7c:	e3461031 	movt	r1, #24625	; 0x6031
6030db80:	e58d0004 	str	r0, [sp, #4]
6030db84:	e3a02049 	mov	r2, #73	; 0x49
6030db88:	e3a00004 	mov	r0, #4
6030db8c:	e58dc000 	str	ip, [sp]
6030db90:	ebfff543 	bl	6030b0a4 <rtk_log_write>
6030db94:	eafffffe 	b	6030db94 <init_xlat_tables_ctx+0x5c>
6030db98:	eb000121 	bl	6030e024 <is_mmu_enabled_ctx>
6030db9c:	e3500000 	cmp	r0, #0
6030dba0:	1a000057 	bne	6030dd04 <init_xlat_tables_ctx+0x1cc>
6030dba4:	e5946008 	ldr	r6, [r4, #8]
6030dba8:	e594500c 	ldr	r5, [r4, #12]
6030dbac:	eb0000d8 	bl	6030df14 <xlat_get_min_virt_addr_space_size>
6030dbb0:	e2403001 	sub	r3, r0, #1
6030dbb4:	e1560003 	cmp	r6, r3
6030dbb8:	3a000078 	bcc	6030dda0 <init_xlat_tables_ctx+0x268>
6030dbbc:	e5942008 	ldr	r2, [r4, #8]
6030dbc0:	e2823001 	add	r3, r2, #1
6030dbc4:	e0136002 	ands	r6, r3, r2
6030dbc8:	1a000067 	bne	6030dd6c <init_xlat_tables_ctx+0x234>
6030dbcc:	e1a00005 	mov	r0, r5
6030dbd0:	eb0000ca 	bl	6030df00 <xlat_mmap_print>
6030dbd4:	e5942024 	ldr	r2, [r4, #36]	; 0x24
6030dbd8:	e3520000 	cmp	r2, #0
6030dbdc:	0a000008 	beq	6030dc04 <init_xlat_tables_ctx+0xcc>
6030dbe0:	f2c00010 	vmov.i32	d16, #0	; 0x00000000
6030dbe4:	e1a03006 	mov	r3, r6
6030dbe8:	e5942020 	ldr	r2, [r4, #32]
6030dbec:	e0822183 	add	r2, r2, r3, lsl #3
6030dbf0:	e2833001 	add	r3, r3, #1
6030dbf4:	edc20b00 	vstr	d16, [r2]
6030dbf8:	e5942024 	ldr	r2, [r4, #36]	; 0x24
6030dbfc:	e1520003 	cmp	r2, r3
6030dc00:	8afffff8 	bhi	6030dbe8 <init_xlat_tables_ctx+0xb0>
6030dc04:	e5943018 	ldr	r3, [r4, #24]
6030dc08:	e3530000 	cmp	r3, #0
6030dc0c:	da00000e 	ble	6030dc4c <init_xlat_tables_ctx+0x114>
6030dc10:	f2c00010 	vmov.i32	d16, #0	; 0x00000000
6030dc14:	e3a00000 	mov	r0, #0
6030dc18:	e1a01600 	lsl	r1, r0, #12
6030dc1c:	e3a02000 	mov	r2, #0
6030dc20:	e5943014 	ldr	r3, [r4, #20]
6030dc24:	e0833001 	add	r3, r3, r1
6030dc28:	e0833182 	add	r3, r3, r2, lsl #3
6030dc2c:	e2822001 	add	r2, r2, #1
6030dc30:	e3520c02 	cmp	r2, #512	; 0x200
6030dc34:	edc30b00 	vstr	d16, [r3]
6030dc38:	1afffff8 	bne	6030dc20 <init_xlat_tables_ctx+0xe8>
6030dc3c:	e5943018 	ldr	r3, [r4, #24]
6030dc40:	e2800001 	add	r0, r0, #1
6030dc44:	e1530000 	cmp	r3, r0
6030dc48:	cafffff2 	bgt	6030dc18 <init_xlat_tables_ctx+0xe0>
6030dc4c:	e595300c 	ldr	r3, [r5, #12]
6030dc50:	e3530000 	cmp	r3, #0
6030dc54:	1a00000a 	bne	6030dc84 <init_xlat_tables_ctx+0x14c>
6030dc58:	ea00005d 	b	6030ddd4 <init_xlat_tables_ctx+0x29c>
6030dc5c:	e5950008 	ldr	r0, [r5, #8]
6030dc60:	e595200c 	ldr	r2, [r5, #12]
6030dc64:	e0803002 	add	r3, r0, r2
6030dc68:	e2433001 	sub	r3, r3, #1
6030dc6c:	e1530006 	cmp	r3, r6
6030dc70:	1a000075 	bne	6030de4c <init_xlat_tables_ctx+0x314>
6030dc74:	e5953024 	ldr	r3, [r5, #36]	; 0x24
6030dc78:	e2855018 	add	r5, r5, #24
6030dc7c:	e3530000 	cmp	r3, #0
6030dc80:	0a000053 	beq	6030ddd4 <init_xlat_tables_ctx+0x29c>
6030dc84:	e5942034 	ldr	r2, [r4, #52]	; 0x34
6030dc88:	e5940024 	ldr	r0, [r4, #36]	; 0x24
6030dc8c:	e5943020 	ldr	r3, [r4, #32]
6030dc90:	e1a01005 	mov	r1, r5
6030dc94:	e58d2004 	str	r2, [sp, #4]
6030dc98:	e58d0000 	str	r0, [sp]
6030dc9c:	e3a02000 	mov	r2, #0
6030dca0:	e1a00004 	mov	r0, r4
6030dca4:	ebfffd88 	bl	6030d2cc <xlat_tables_map_region>
6030dca8:	e5947020 	ldr	r7, [r4, #32]
6030dcac:	e5948024 	ldr	r8, [r4, #36]	; 0x24
6030dcb0:	e1a06000 	mov	r6, r0
6030dcb4:	eb000098 	bl	6030df1c <is_dcache_enabled>
6030dcb8:	e3500000 	cmp	r0, #0
6030dcbc:	0affffe6 	beq	6030dc5c <init_xlat_tables_ctx+0x124>
6030dcc0:	e1a01188 	lsl	r1, r8, #3
6030dcc4:	e1a00007 	mov	r0, r7
6030dcc8:	eb0001f9 	bl	6030e4b4 <clean_dcache_range>
6030dccc:	eaffffe2 	b	6030dc5c <init_xlat_tables_ctx+0x124>
6030dcd0:	e30004d6 	movw	r0, #1238	; 0x4d6
6030dcd4:	e305c5a4 	movw	ip, #21924	; 0x55a4
6030dcd8:	e346c031 	movt	ip, #24625	; 0x6031
6030dcdc:	e3053510 	movw	r3, #21776	; 0x5510
6030dce0:	e3463031 	movt	r3, #24625	; 0x6031
6030dce4:	e30415a4 	movw	r1, #17828	; 0x45a4
6030dce8:	e3461031 	movt	r1, #24625	; 0x6031
6030dcec:	e58d0004 	str	r0, [sp, #4]
6030dcf0:	e3a02049 	mov	r2, #73	; 0x49
6030dcf4:	e3a00004 	mov	r0, #4
6030dcf8:	e58dc000 	str	ip, [sp]
6030dcfc:	ebfff4e8 	bl	6030b0a4 <rtk_log_write>
6030dd00:	eafffffe 	b	6030dd00 <init_xlat_tables_ctx+0x1c8>
6030dd04:	e30004da 	movw	r0, #1242	; 0x4da
6030dd08:	e305c5a4 	movw	ip, #21924	; 0x55a4
6030dd0c:	e346c031 	movt	ip, #24625	; 0x6031
6030dd10:	e3053510 	movw	r3, #21776	; 0x5510
6030dd14:	e3463031 	movt	r3, #24625	; 0x6031
6030dd18:	e30415a4 	movw	r1, #17828	; 0x45a4
6030dd1c:	e3461031 	movt	r1, #24625	; 0x6031
6030dd20:	e58d0004 	str	r0, [sp, #4]
6030dd24:	e3a02049 	mov	r2, #73	; 0x49
6030dd28:	e3a00004 	mov	r0, #4
6030dd2c:	e58dc000 	str	ip, [sp]
6030dd30:	ebfff4db 	bl	6030b0a4 <rtk_log_write>
6030dd34:	eafffffe 	b	6030dd34 <init_xlat_tables_ctx+0x1fc>
6030dd38:	e30004d5 	movw	r0, #1237	; 0x4d5
6030dd3c:	e305c5a4 	movw	ip, #21924	; 0x55a4
6030dd40:	e346c031 	movt	ip, #24625	; 0x6031
6030dd44:	e3053510 	movw	r3, #21776	; 0x5510
6030dd48:	e3463031 	movt	r3, #24625	; 0x6031
6030dd4c:	e30415a4 	movw	r1, #17828	; 0x45a4
6030dd50:	e3461031 	movt	r1, #24625	; 0x6031
6030dd54:	e58d0004 	str	r0, [sp, #4]
6030dd58:	e3a02049 	mov	r2, #73	; 0x49
6030dd5c:	e3a00004 	mov	r0, #4
6030dd60:	e58dc000 	str	ip, [sp]
6030dd64:	ebfff4ce 	bl	6030b0a4 <rtk_log_write>
6030dd68:	eafffffe 	b	6030dd68 <init_xlat_tables_ctx+0x230>
6030dd6c:	e30004e1 	movw	r0, #1249	; 0x4e1
6030dd70:	e305c5a4 	movw	ip, #21924	; 0x55a4
6030dd74:	e346c031 	movt	ip, #24625	; 0x6031
6030dd78:	e3053510 	movw	r3, #21776	; 0x5510
6030dd7c:	e3463031 	movt	r3, #24625	; 0x6031
6030dd80:	e30415a4 	movw	r1, #17828	; 0x45a4
6030dd84:	e3461031 	movt	r1, #24625	; 0x6031
6030dd88:	e58d0004 	str	r0, [sp, #4]
6030dd8c:	e3a02049 	mov	r2, #73	; 0x49
6030dd90:	e3a00004 	mov	r0, #4
6030dd94:	e58dc000 	str	ip, [sp]
6030dd98:	ebfff4c1 	bl	6030b0a4 <rtk_log_write>
6030dd9c:	eafffffe 	b	6030dd9c <init_xlat_tables_ctx+0x264>
6030dda0:	e30004de 	movw	r0, #1246	; 0x4de
6030dda4:	e305c5a4 	movw	ip, #21924	; 0x55a4
6030dda8:	e346c031 	movt	ip, #24625	; 0x6031
6030ddac:	e3053510 	movw	r3, #21776	; 0x5510
6030ddb0:	e3463031 	movt	r3, #24625	; 0x6031
6030ddb4:	e30415a4 	movw	r1, #17828	; 0x45a4
6030ddb8:	e3461031 	movt	r1, #24625	; 0x6031
6030ddbc:	e58d0004 	str	r0, [sp, #4]
6030ddc0:	e3a02049 	mov	r2, #73	; 0x49
6030ddc4:	e3a00004 	mov	r0, #4
6030ddc8:	e58dc000 	str	ip, [sp]
6030ddcc:	ebfff4b4 	bl	6030b0a4 <rtk_log_write>
6030ddd0:	eafffffe 	b	6030ddd0 <init_xlat_tables_ctx+0x298>
6030ddd4:	e5946000 	ldr	r6, [r4]
6030ddd8:	e5945004 	ldr	r5, [r4, #4]
6030dddc:	eb000049 	bl	6030df08 <xlat_arch_get_max_supported_pa>
6030dde0:	e1500006 	cmp	r0, r6
6030dde4:	e0d13005 	sbcs	r3, r1, r5
6030dde8:	3a000024 	bcc	6030de80 <init_xlat_tables_ctx+0x348>
6030ddec:	e5942030 	ldr	r2, [r4, #48]	; 0x30
6030ddf0:	e5943008 	ldr	r3, [r4, #8]
6030ddf4:	e1520003 	cmp	r2, r3
6030ddf8:	8a000033 	bhi	6030decc <init_xlat_tables_ctx+0x394>
6030ddfc:	e5941028 	ldr	r1, [r4, #40]	; 0x28
6030de00:	e5940000 	ldr	r0, [r4]
6030de04:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
6030de08:	e5942004 	ldr	r2, [r4, #4]
6030de0c:	e1500001 	cmp	r0, r1
6030de10:	e0d23003 	sbcs	r3, r2, r3
6030de14:	2a000026 	bcs	6030deb4 <init_xlat_tables_ctx+0x37c>
6030de18:	e3000508 	movw	r0, #1288	; 0x508
6030de1c:	e305c5a4 	movw	ip, #21924	; 0x55a4
6030de20:	e346c031 	movt	ip, #24625	; 0x6031
6030de24:	e3053510 	movw	r3, #21776	; 0x5510
6030de28:	e3463031 	movt	r3, #24625	; 0x6031
6030de2c:	e30415a4 	movw	r1, #17828	; 0x45a4
6030de30:	e3461031 	movt	r1, #24625	; 0x6031
6030de34:	e58d0004 	str	r0, [sp, #4]
6030de38:	e3a02049 	mov	r2, #73	; 0x49
6030de3c:	e3a00004 	mov	r0, #4
6030de40:	e58dc000 	str	ip, [sp]
6030de44:	ebfff496 	bl	6030b0a4 <rtk_log_write>
6030de48:	eafffffe 	b	6030de48 <init_xlat_tables_ctx+0x310>
6030de4c:	e5953010 	ldr	r3, [r5, #16]
6030de50:	e1cd21f0 	strd	r2, [sp, #16]
6030de54:	e30415a4 	movw	r1, #17828	; 0x45a4
6030de58:	e3461031 	movt	r1, #24625	; 0x6031
6030de5c:	e1c540d0 	ldrd	r4, [r5]
6030de60:	e3053640 	movw	r3, #22080	; 0x5640
6030de64:	e3463031 	movt	r3, #24625	; 0x6031
6030de68:	e58d0000 	str	r0, [sp]
6030de6c:	e3a02049 	mov	r2, #73	; 0x49
6030de70:	e3a00004 	mov	r0, #4
6030de74:	e1cd40f8 	strd	r4, [sp, #8]
6030de78:	ebfff489 	bl	6030b0a4 <rtk_log_write>
6030de7c:	eafffffe 	b	6030de7c <init_xlat_tables_ctx+0x344>
6030de80:	e3000506 	movw	r0, #1286	; 0x506
6030de84:	e305c5a4 	movw	ip, #21924	; 0x55a4
6030de88:	e346c031 	movt	ip, #24625	; 0x6031
6030de8c:	e3053510 	movw	r3, #21776	; 0x5510
6030de90:	e3463031 	movt	r3, #24625	; 0x6031
6030de94:	e30415a4 	movw	r1, #17828	; 0x45a4
6030de98:	e3461031 	movt	r1, #24625	; 0x6031
6030de9c:	e58d0004 	str	r0, [sp, #4]
6030dea0:	e3a02049 	mov	r2, #73	; 0x49
6030dea4:	e3a00004 	mov	r0, #4
6030dea8:	e58dc000 	str	ip, [sp]
6030deac:	ebfff47c 	bl	6030b0a4 <rtk_log_write>
6030deb0:	eafffffe 	b	6030deb0 <init_xlat_tables_ctx+0x378>
6030deb4:	e3a03001 	mov	r3, #1
6030deb8:	e1a00004 	mov	r0, r4
6030debc:	e5c43038 	strb	r3, [r4, #56]	; 0x38
6030dec0:	e28dd018 	add	sp, sp, #24
6030dec4:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
6030dec8:	ea00000d 	b	6030df04 <xlat_tables_print>
6030decc:	e3000507 	movw	r0, #1287	; 0x507
6030ded0:	e305c5a4 	movw	ip, #21924	; 0x55a4
6030ded4:	e346c031 	movt	ip, #24625	; 0x6031
6030ded8:	e3053510 	movw	r3, #21776	; 0x5510
6030dedc:	e3463031 	movt	r3, #24625	; 0x6031
6030dee0:	e30415a4 	movw	r1, #17828	; 0x45a4
6030dee4:	e3461031 	movt	r1, #24625	; 0x6031
6030dee8:	e58d0004 	str	r0, [sp, #4]
6030deec:	e3a02049 	mov	r2, #73	; 0x49
6030def0:	e3a00004 	mov	r0, #4
6030def4:	e58dc000 	str	ip, [sp]
6030def8:	ebfff469 	bl	6030b0a4 <rtk_log_write>
6030defc:	eafffffe 	b	6030defc <init_xlat_tables_ctx+0x3c4>

6030df00 <xlat_mmap_print>:
6030df00:	e12fff1e 	bx	lr

6030df04 <xlat_tables_print>:
6030df04:	e12fff1e 	bx	lr

6030df08 <xlat_arch_get_max_supported_pa>:
6030df08:	e3a010ff 	mov	r1, #255	; 0xff
6030df0c:	e3e00000 	mvn	r0, #0
6030df10:	e12fff1e 	bx	lr

6030df14 <xlat_get_min_virt_addr_space_size>:
6030df14:	e3a00402 	mov	r0, #33554432	; 0x2000000
6030df18:	e12fff1e 	bx	lr

6030df1c <is_dcache_enabled>:
6030df1c:	e10f3000 	mrs	r3, CPSR
6030df20:	e203301f 	and	r3, r3, #31
6030df24:	e353001a 	cmp	r3, #26
6030df28:	0a000002 	beq	6030df38 <is_dcache_enabled+0x1c>
6030df2c:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
6030df30:	e7e00150 	ubfx	r0, r0, #2, #1
6030df34:	e12fff1e 	bx	lr
6030df38:	ee910f10 	mrc	15, 4, r0, cr1, cr0, {0}
6030df3c:	e7e00150 	ubfx	r0, r0, #2, #1
6030df40:	e12fff1e 	bx	lr

6030df44 <xlat_arch_regime_get_xn_desc>:
6030df44:	e3500001 	cmp	r0, #1
6030df48:	0a000013 	beq	6030df9c <xlat_arch_regime_get_xn_desc+0x58>
6030df4c:	e3500002 	cmp	r0, #2
6030df50:	0a00000e 	beq	6030df90 <xlat_arch_regime_get_xn_desc+0x4c>
6030df54:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
6030df58:	e3a00056 	mov	r0, #86	; 0x56
6030df5c:	e24dd00c 	sub	sp, sp, #12
6030df60:	e305c690 	movw	ip, #22160	; 0x5690
6030df64:	e346c031 	movt	ip, #24625	; 0x6031
6030df68:	e3053510 	movw	r3, #21776	; 0x5510
6030df6c:	e3463031 	movt	r3, #24625	; 0x6031
6030df70:	e30415a4 	movw	r1, #17828	; 0x45a4
6030df74:	e3461031 	movt	r1, #24625	; 0x6031
6030df78:	e58d0004 	str	r0, [sp, #4]
6030df7c:	e3a02049 	mov	r2, #73	; 0x49
6030df80:	e3a00004 	mov	r0, #4
6030df84:	e58dc000 	str	ip, [sp]
6030df88:	ebfff445 	bl	6030b0a4 <rtk_log_write>
6030df8c:	eafffffe 	b	6030df8c <xlat_arch_regime_get_xn_desc+0x48>
6030df90:	e3a00000 	mov	r0, #0
6030df94:	e3a01501 	mov	r1, #4194304	; 0x400000
6030df98:	e12fff1e 	bx	lr
6030df9c:	e3a00000 	mov	r0, #0
6030dfa0:	e3a01606 	mov	r1, #6291456	; 0x600000
6030dfa4:	e12fff1e 	bx	lr

6030dfa8 <xlat_arch_current_el>:
6030dfa8:	e10f3000 	mrs	r3, CPSR
6030dfac:	e203301f 	and	r3, r3, #31
6030dfb0:	e353001a 	cmp	r3, #26
6030dfb4:	0a000018 	beq	6030e01c <xlat_arch_current_el+0x74>
6030dfb8:	e10f3000 	mrs	r3, CPSR
6030dfbc:	e203301f 	and	r3, r3, #31
6030dfc0:	e3530013 	cmp	r3, #19
6030dfc4:	0a000012 	beq	6030e014 <xlat_arch_current_el+0x6c>
6030dfc8:	e10f3000 	mrs	r3, CPSR
6030dfcc:	e203301f 	and	r3, r3, #31
6030dfd0:	e3530016 	cmp	r3, #22
6030dfd4:	0a00000e 	beq	6030e014 <xlat_arch_current_el+0x6c>
6030dfd8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
6030dfdc:	e3a0008a 	mov	r0, #138	; 0x8a
6030dfe0:	e24dd00c 	sub	sp, sp, #12
6030dfe4:	e305c690 	movw	ip, #22160	; 0x5690
6030dfe8:	e346c031 	movt	ip, #24625	; 0x6031
6030dfec:	e3053510 	movw	r3, #21776	; 0x5510
6030dff0:	e3463031 	movt	r3, #24625	; 0x6031
6030dff4:	e30415a4 	movw	r1, #17828	; 0x45a4
6030dff8:	e3461031 	movt	r1, #24625	; 0x6031
6030dffc:	e58d0004 	str	r0, [sp, #4]
6030e000:	e3a02049 	mov	r2, #73	; 0x49
6030e004:	e3a00004 	mov	r0, #4
6030e008:	e58dc000 	str	ip, [sp]
6030e00c:	ebfff424 	bl	6030b0a4 <rtk_log_write>
6030e010:	eafffffe 	b	6030e010 <xlat_arch_current_el+0x68>
6030e014:	e3a00001 	mov	r0, #1
6030e018:	e12fff1e 	bx	lr
6030e01c:	e3a00002 	mov	r0, #2
6030e020:	e12fff1e 	bx	lr

6030e024 <is_mmu_enabled_ctx>:
6030e024:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
6030e028:	e590303c 	ldr	r3, [r0, #60]	; 0x3c
6030e02c:	e24dd00c 	sub	sp, sp, #12
6030e030:	e3530001 	cmp	r3, #1
6030e034:	0a00001e 	beq	6030e0b4 <is_mmu_enabled_ctx+0x90>
6030e038:	e3530002 	cmp	r3, #2
6030e03c:	0a00000c 	beq	6030e074 <is_mmu_enabled_ctx+0x50>
6030e040:	e3a00042 	mov	r0, #66	; 0x42
6030e044:	e305c690 	movw	ip, #22160	; 0x5690
6030e048:	e346c031 	movt	ip, #24625	; 0x6031
6030e04c:	e3053510 	movw	r3, #21776	; 0x5510
6030e050:	e3463031 	movt	r3, #24625	; 0x6031
6030e054:	e30415a4 	movw	r1, #17828	; 0x45a4
6030e058:	e3461031 	movt	r1, #24625	; 0x6031
6030e05c:	e58d0004 	str	r0, [sp, #4]
6030e060:	e3a02049 	mov	r2, #73	; 0x49
6030e064:	e3a00004 	mov	r0, #4
6030e068:	e58dc000 	str	ip, [sp]
6030e06c:	ebfff40c 	bl	6030b0a4 <rtk_log_write>
6030e070:	eafffffe 	b	6030e070 <is_mmu_enabled_ctx+0x4c>
6030e074:	ebffffcb 	bl	6030dfa8 <xlat_arch_current_el>
6030e078:	e3500002 	cmp	r0, #2
6030e07c:	0a00001c 	beq	6030e0f4 <is_mmu_enabled_ctx+0xd0>
6030e080:	e3a00043 	mov	r0, #67	; 0x43
6030e084:	e305c690 	movw	ip, #22160	; 0x5690
6030e088:	e346c031 	movt	ip, #24625	; 0x6031
6030e08c:	e3053510 	movw	r3, #21776	; 0x5510
6030e090:	e3463031 	movt	r3, #24625	; 0x6031
6030e094:	e30415a4 	movw	r1, #17828	; 0x45a4
6030e098:	e3461031 	movt	r1, #24625	; 0x6031
6030e09c:	e58d0004 	str	r0, [sp, #4]
6030e0a0:	e3a02049 	mov	r2, #73	; 0x49
6030e0a4:	e3a00004 	mov	r0, #4
6030e0a8:	e58dc000 	str	ip, [sp]
6030e0ac:	ebfff3fc 	bl	6030b0a4 <rtk_log_write>
6030e0b0:	eafffffe 	b	6030e0b0 <is_mmu_enabled_ctx+0x8c>
6030e0b4:	ebffffbb 	bl	6030dfa8 <xlat_arch_current_el>
6030e0b8:	e3500001 	cmp	r0, #1
6030e0bc:	0a000010 	beq	6030e104 <is_mmu_enabled_ctx+0xe0>
6030e0c0:	e3a0003f 	mov	r0, #63	; 0x3f
6030e0c4:	e305c690 	movw	ip, #22160	; 0x5690
6030e0c8:	e346c031 	movt	ip, #24625	; 0x6031
6030e0cc:	e3053510 	movw	r3, #21776	; 0x5510
6030e0d0:	e3463031 	movt	r3, #24625	; 0x6031
6030e0d4:	e30415a4 	movw	r1, #17828	; 0x45a4
6030e0d8:	e3461031 	movt	r1, #24625	; 0x6031
6030e0dc:	e58d0004 	str	r0, [sp, #4]
6030e0e0:	e3a02049 	mov	r2, #73	; 0x49
6030e0e4:	e3a00004 	mov	r0, #4
6030e0e8:	e58dc000 	str	ip, [sp]
6030e0ec:	ebfff3ec 	bl	6030b0a4 <rtk_log_write>
6030e0f0:	eafffffe 	b	6030e0f0 <is_mmu_enabled_ctx+0xcc>
6030e0f4:	ee910f10 	mrc	15, 4, r0, cr1, cr0, {0}
6030e0f8:	e2000001 	and	r0, r0, #1
6030e0fc:	e28dd00c 	add	sp, sp, #12
6030e100:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
6030e104:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
6030e108:	e2000001 	and	r0, r0, #1
6030e10c:	eafffffa 	b	6030e0fc <is_mmu_enabled_ctx+0xd8>

6030e110 <setup_mmu_cfg>:
6030e110:	e92d4070 	push	{r4, r5, r6, lr}
6030e114:	e1a04000 	mov	r4, r0
6030e118:	e24dd010 	sub	sp, sp, #16
6030e11c:	e1a05001 	mov	r5, r1
6030e120:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
6030e124:	e3530001 	cmp	r3, #1
6030e128:	0a000030 	beq	6030e1f0 <setup_mmu_cfg+0xe0>
6030e12c:	e3530002 	cmp	r3, #2
6030e130:	1a000021 	bne	6030e1bc <setup_mmu_cfg+0xac>
6030e134:	e10f3000 	mrs	r3, CPSR
6030e138:	e203301f 	and	r3, r3, #31
6030e13c:	e353001a 	cmp	r3, #26
6030e140:	03a06c35 	moveq	r6, #13568	; 0x3500
6030e144:	03486080 	movteq	r6, #32896	; 0x8080
6030e148:	1a000033 	bne	6030e21c <setup_mmu_cfg+0x10c>
6030e14c:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
6030e150:	e3730001 	cmn	r3, #1
6030e154:	0a00000a 	beq	6030e184 <setup_mmu_cfg+0x74>
6030e158:	e2830001 	add	r0, r3, #1
6030e15c:	e3500402 	cmp	r0, #33554432	; 0x2000000
6030e160:	3a000047 	bcc	6030e284 <setup_mmu_cfg+0x174>
6030e164:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
6030e168:	e0131000 	ands	r1, r3, r0
6030e16c:	1a000051 	bne	6030e2b8 <setup_mmu_cfg+0x1a8>
6030e170:	e58d200c 	str	r2, [sp, #12]
6030e174:	ebffc9e5 	bl	60300910 <__ctzdi2>
6030e178:	e59d200c 	ldr	r2, [sp, #12]
6030e17c:	e2603020 	rsb	r3, r0, #32
6030e180:	e1866003 	orr	r6, r6, r3
6030e184:	e3150002 	tst	r5, #2
6030e188:	03866c35 	orreq	r6, r6, #13568	; 0x3500
6030e18c:	ee103fd2 	mrc	15, 0, r3, cr0, cr2, {6}
6030e190:	e28f1f56 	add	r1, pc, #344	; 0x158
6030e194:	e1c100d0 	ldrd	r0, [r1]
6030e198:	e3130a0f 	tst	r3, #61440	; 0xf000
6030e19c:	13822001 	orrne	r2, r2, #1
6030e1a0:	e3a03000 	mov	r3, #0
6030e1a4:	e1c400f0 	strd	r0, [r4]
6030e1a8:	e5846008 	str	r6, [r4, #8]
6030e1ac:	e584300c 	str	r3, [r4, #12]
6030e1b0:	e1c421f0 	strd	r2, [r4, #16]
6030e1b4:	e28dd010 	add	sp, sp, #16
6030e1b8:	e8bd8070 	pop	{r4, r5, r6, pc}
6030e1bc:	e3a000ba 	mov	r0, #186	; 0xba
6030e1c0:	e305c690 	movw	ip, #22160	; 0x5690
6030e1c4:	e346c031 	movt	ip, #24625	; 0x6031
6030e1c8:	e3053510 	movw	r3, #21776	; 0x5510
6030e1cc:	e3463031 	movt	r3, #24625	; 0x6031
6030e1d0:	e30415a4 	movw	r1, #17828	; 0x45a4
6030e1d4:	e3461031 	movt	r1, #24625	; 0x6031
6030e1d8:	e58d0004 	str	r0, [sp, #4]
6030e1dc:	e3a02049 	mov	r2, #73	; 0x49
6030e1e0:	e3a00004 	mov	r0, #4
6030e1e4:	e58dc000 	str	ip, [sp]
6030e1e8:	ebfff3ad 	bl	6030b0a4 <rtk_log_write>
6030e1ec:	eafffffe 	b	6030e1ec <setup_mmu_cfg+0xdc>
6030e1f0:	e10f3000 	mrs	r3, CPSR
6030e1f4:	e203301f 	and	r3, r3, #31
6030e1f8:	e3530013 	cmp	r3, #19
6030e1fc:	0a000003 	beq	6030e210 <setup_mmu_cfg+0x100>
6030e200:	e10f3000 	mrs	r3, CPSR
6030e204:	e203301f 	and	r3, r3, #31
6030e208:	e3530016 	cmp	r3, #22
6030e20c:	1a00000f 	bne	6030e250 <setup_mmu_cfg+0x140>
6030e210:	e3a06000 	mov	r6, #0
6030e214:	e3486080 	movt	r6, #32896	; 0x8080
6030e218:	eaffffcb 	b	6030e14c <setup_mmu_cfg+0x3c>
6030e21c:	e3a000bb 	mov	r0, #187	; 0xbb
6030e220:	e305c690 	movw	ip, #22160	; 0x5690
6030e224:	e346c031 	movt	ip, #24625	; 0x6031
6030e228:	e3053510 	movw	r3, #21776	; 0x5510
6030e22c:	e3463031 	movt	r3, #24625	; 0x6031
6030e230:	e30415a4 	movw	r1, #17828	; 0x45a4
6030e234:	e3461031 	movt	r1, #24625	; 0x6031
6030e238:	e58d0004 	str	r0, [sp, #4]
6030e23c:	e3a02049 	mov	r2, #73	; 0x49
6030e240:	e3a00004 	mov	r0, #4
6030e244:	e58dc000 	str	ip, [sp]
6030e248:	ebfff395 	bl	6030b0a4 <rtk_log_write>
6030e24c:	eafffffe 	b	6030e24c <setup_mmu_cfg+0x13c>
6030e250:	e3a000b3 	mov	r0, #179	; 0xb3
6030e254:	e305c690 	movw	ip, #22160	; 0x5690
6030e258:	e346c031 	movt	ip, #24625	; 0x6031
6030e25c:	e3053510 	movw	r3, #21776	; 0x5510
6030e260:	e3463031 	movt	r3, #24625	; 0x6031
6030e264:	e30415a4 	movw	r1, #17828	; 0x45a4
6030e268:	e3461031 	movt	r1, #24625	; 0x6031
6030e26c:	e58d0004 	str	r0, [sp, #4]
6030e270:	e3a02049 	mov	r2, #73	; 0x49
6030e274:	e3a00004 	mov	r0, #4
6030e278:	e58dc000 	str	ip, [sp]
6030e27c:	ebfff388 	bl	6030b0a4 <rtk_log_write>
6030e280:	eafffffe 	b	6030e280 <setup_mmu_cfg+0x170>
6030e284:	e3a000ce 	mov	r0, #206	; 0xce
6030e288:	e305c690 	movw	ip, #22160	; 0x5690
6030e28c:	e346c031 	movt	ip, #24625	; 0x6031
6030e290:	e3053510 	movw	r3, #21776	; 0x5510
6030e294:	e3463031 	movt	r3, #24625	; 0x6031
6030e298:	e30415a4 	movw	r1, #17828	; 0x45a4
6030e29c:	e3461031 	movt	r1, #24625	; 0x6031
6030e2a0:	e58d0004 	str	r0, [sp, #4]
6030e2a4:	e3a02049 	mov	r2, #73	; 0x49
6030e2a8:	e3a00004 	mov	r0, #4
6030e2ac:	e58dc000 	str	ip, [sp]
6030e2b0:	ebfff37b 	bl	6030b0a4 <rtk_log_write>
6030e2b4:	eafffffe 	b	6030e2b4 <setup_mmu_cfg+0x1a4>
6030e2b8:	e3a000d2 	mov	r0, #210	; 0xd2
6030e2bc:	e305c690 	movw	ip, #22160	; 0x5690
6030e2c0:	e346c031 	movt	ip, #24625	; 0x6031
6030e2c4:	e3053510 	movw	r3, #21776	; 0x5510
6030e2c8:	e3463031 	movt	r3, #24625	; 0x6031
6030e2cc:	e30415a4 	movw	r1, #17828	; 0x45a4
6030e2d0:	e3461031 	movt	r1, #24625	; 0x6031
6030e2d4:	e58d0004 	str	r0, [sp, #4]
6030e2d8:	e3a02049 	mov	r2, #73	; 0x49
6030e2dc:	e3a00004 	mov	r0, #4
6030e2e0:	e58dc000 	str	ip, [sp]
6030e2e4:	ebfff36e 	bl	6030b0a4 <rtk_log_write>
6030e2e8:	eafffffe 	b	6030e2e8 <setup_mmu_cfg+0x1d8>
6030e2ec:	e320f000 	nop	{0}
6030e2f0:	004404ff 	.word	0x004404ff
6030e2f4:	00000000 	.word	0x00000000

6030e2f8 <setupMMUTable>:
6030e2f8:	e3500001 	cmp	r0, #1
6030e2fc:	0a000001 	beq	6030e308 <setupMMUTable+0x10>
6030e300:	e3a00000 	mov	r0, #0
6030e304:	eafffb75 	b	6030d0e0 <enable_mmu_svc_mon>
6030e308:	e92d4010 	push	{r4, lr}
6030e30c:	e3082674 	movw	r2, #34420	; 0x8674
6030e310:	e3462032 	movt	r2, #24626	; 0x6032
6030e314:	e24dd008 	sub	sp, sp, #8
6030e318:	e3030000 	movw	r0, #12288	; 0x3000
6030e31c:	e3460032 	movt	r0, #24626	; 0x6032
6030e320:	e0422000 	sub	r2, r2, r0
6030e324:	e3a01000 	mov	r1, #0
6030e328:	ebfff4a5 	bl	6030b5c4 <_memset>
6030e32c:	e3a03302 	mov	r3, #134217728	; 0x8000000
6030e330:	e1a02003 	mov	r2, r3
6030e334:	e3a04012 	mov	r4, #18
6030e338:	e3a00302 	mov	r0, #134217728	; 0x8000000
6030e33c:	e3a01000 	mov	r1, #0
6030e340:	e58d4000 	str	r4, [sp]
6030e344:	ebfffb29 	bl	6030cff0 <mmap_add_region>
6030e348:	e3a03202 	mov	r3, #536870912	; 0x20000000
6030e34c:	e1a02003 	mov	r2, r3
6030e350:	e3a0c01a 	mov	ip, #26
6030e354:	e3a00202 	mov	r0, #536870912	; 0x20000000
6030e358:	e3a01000 	mov	r1, #0
6030e35c:	e58dc000 	str	ip, [sp]
6030e360:	ebfffb22 	bl	6030cff0 <mmap_add_region>
6030e364:	e3a0c018 	mov	ip, #24
6030e368:	e3a00101 	mov	r0, #1073741824	; 0x40000000
6030e36c:	e58dc000 	str	ip, [sp]
6030e370:	e3a01000 	mov	r1, #0
6030e374:	e3a03202 	mov	r3, #536870912	; 0x20000000
6030e378:	e3a02101 	mov	r2, #1073741824	; 0x40000000
6030e37c:	ebfffb1b 	bl	6030cff0 <mmap_add_region>
6030e380:	e3002000 	movw	r2, #0
6030e384:	e3462030 	movt	r2, #24624	; 0x6030
6030e388:	e3063000 	movw	r3, #24576	; 0x6000
6030e38c:	e3463031 	movt	r3, #24625	; 0x6031
6030e390:	e0433002 	sub	r3, r3, r2
6030e394:	e1a00002 	mov	r0, r2
6030e398:	e1a01fc2 	asr	r1, r2, #31
6030e39c:	e58d4000 	str	r4, [sp]
6030e3a0:	ebfffb12 	bl	6030cff0 <mmap_add_region>
6030e3a4:	e30f2000 	movw	r2, #61440	; 0xf000
6030e3a8:	e3462032 	movt	r2, #24626	; 0x6032
6030e3ac:	e3003000 	movw	r3, #0
6030e3b0:	e3463033 	movt	r3, #24627	; 0x6033
6030e3b4:	e3a01019 	mov	r1, #25
6030e3b8:	e0433002 	sub	r3, r3, r2
6030e3bc:	e58d1000 	str	r1, [sp]
6030e3c0:	e1a00002 	mov	r0, r2
6030e3c4:	e1a01fc2 	asr	r1, r2, #31
6030e3c8:	ebfffb08 	bl	6030cff0 <mmap_add_region>
6030e3cc:	e3003000 	movw	r3, #0
6030e3d0:	e3403000 	movt	r3, #0
6030e3d4:	e3530000 	cmp	r3, #0
6030e3d8:	0a000008 	beq	6030e400 <setupMMUTable+0x108>
6030e3dc:	e30f3fff 	movw	r3, #65535	; 0xffff
6030e3e0:	e3463fff 	movt	r3, #28671	; 0x6fff
6030e3e4:	e2432020 	sub	r2, r3, #32
6030e3e8:	e59f105c 	ldr	r1, [pc, #92]	; 6030e44c <setupMMUTable+0x154>
6030e3ec:	e1a00002 	mov	r0, r2
6030e3f0:	e0413003 	sub	r3, r1, r3
6030e3f4:	e58d4000 	str	r4, [sp]
6030e3f8:	e1a01fc2 	asr	r1, r2, #31
6030e3fc:	ebfffafb 	bl	6030cff0 <mmap_add_region>
6030e400:	e3a0c01a 	mov	ip, #26
6030e404:	e3a03202 	mov	r3, #536870912	; 0x20000000
6030e408:	e58dc000 	str	ip, [sp]
6030e40c:	e3a02206 	mov	r2, #1610612736	; 0x60000000
6030e410:	e3a00206 	mov	r0, #1610612736	; 0x60000000
6030e414:	e3a01000 	mov	r1, #0
6030e418:	ebfffaf4 	bl	6030cff0 <mmap_add_region>
6030e41c:	e3a03102 	mov	r3, #-2147483648	; 0x80000000
6030e420:	e3a0c018 	mov	ip, #24
6030e424:	e1a02003 	mov	r2, r3
6030e428:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
6030e42c:	e3a01000 	mov	r1, #0
6030e430:	e58dc000 	str	ip, [sp]
6030e434:	ebfffaed 	bl	6030cff0 <mmap_add_region>
6030e438:	ebfffafa 	bl	6030d028 <init_xlat_tables>
6030e43c:	e3a00000 	mov	r0, #0
6030e440:	e28dd008 	add	sp, sp, #8
6030e444:	e8bd4010 	pop	{r4, lr}
6030e448:	eafffb24 	b	6030d0e0 <enable_mmu_svc_mon>
6030e44c:	7000001f 	.word	0x7000001f

6030e450 <enable_mmu_direct_svc_mon>:
6030e450:	ee080f17 	mcr	15, 0, r0, cr8, cr7, {0}
6030e454:	e1a03000 	mov	r3, r0
6030e458:	e59f004c 	ldr	r0, [pc, #76]	; 6030e4ac <enable_mmu_direct_svc_mon+0x5c>
6030e45c:	e5901000 	ldr	r1, [r0]
6030e460:	ee0a1f12 	mcr	15, 0, r1, cr10, cr2, {0}
6030e464:	e5902008 	ldr	r2, [r0, #8]
6030e468:	ee022f50 	mcr	15, 0, r2, cr2, cr0, {2}
6030e46c:	e5901010 	ldr	r1, [r0, #16]
6030e470:	e5902014 	ldr	r2, [r0, #20]
6030e474:	ec421f02 	mcrr	15, 0, r1, r2, cr2
6030e478:	e3a01000 	mov	r1, #0
6030e47c:	e3a02000 	mov	r2, #0
6030e480:	ec421f12 	mcrr	15, 1, r1, r2, cr2
6030e484:	f57ff04b 	dsb	ish
6030e488:	f57ff06f 	isb	sy
6030e48c:	ee111f10 	mrc	15, 0, r1, cr1, cr0, {0}
6030e490:	e59f2018 	ldr	r2, [pc, #24]	; 6030e4b0 <enable_mmu_direct_svc_mon+0x60>
6030e494:	e1811002 	orr	r1, r1, r2
6030e498:	e3130001 	tst	r3, #1
6030e49c:	13c11004 	bicne	r1, r1, #4
6030e4a0:	ee011f10 	mcr	15, 0, r1, cr1, cr0, {0}
6030e4a4:	f57ff06f 	isb	sy
6030e4a8:	e12fff1e 	bx	lr
6030e4ac:	60323a78 	.word	0x60323a78
6030e4b0:	00080005 	.word	0x00080005

6030e4b4 <clean_dcache_range>:
6030e4b4:	e3510000 	cmp	r1, #0
6030e4b8:	0a00000b 	beq	6030e4ec <exit_loop_cmvac>
6030e4bc:	ee103f30 	mrc	15, 0, r3, cr0, cr0, {1}
6030e4c0:	e7e33853 	ubfx	r3, r3, #16, #4
6030e4c4:	e3a02004 	mov	r2, #4
6030e4c8:	e1a02312 	lsl	r2, r2, r3
6030e4cc:	e0801001 	add	r1, r0, r1
6030e4d0:	e2423001 	sub	r3, r2, #1
6030e4d4:	e1c00003 	bic	r0, r0, r3

6030e4d8 <loop_cmvac>:
6030e4d8:	ee070f3a 	mcr	15, 0, r0, cr7, cr10, {1}
6030e4dc:	e0800002 	add	r0, r0, r2
6030e4e0:	e1500001 	cmp	r0, r1
6030e4e4:	3afffffb 	bcc	6030e4d8 <loop_cmvac>
6030e4e8:	f57ff04f 	dsb	sy

6030e4ec <exit_loop_cmvac>:
6030e4ec:	e12fff1e 	bx	lr

6030e4f0 <ChipInfo_GetLibVersion_ToBuf>:
6030e4f0:	e3a03902 	mov	r3, #32768	; 0x8000
6030e4f4:	e3443200 	movt	r3, #16896	; 0x4200
6030e4f8:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
6030e4fc:	e2516000 	subs	r6, r1, #0
6030e500:	e593327c 	ldr	r3, [r3, #636]	; 0x27c
6030e504:	e1a08000 	mov	r8, r0
6030e508:	01a05006 	moveq	r5, r6
6030e50c:	0a000010 	beq	6030e554 <ChipInfo_GetLibVersion_ToBuf+0x64>
6030e510:	e7e12353 	ubfx	r2, r3, #6, #2
6030e514:	e3520000 	cmp	r2, #0
6030e518:	03053790 	movweq	r3, #22416	; 0x5790
6030e51c:	03463031 	movteq	r3, #24625	; 0x6031
6030e520:	0a000005 	beq	6030e53c <ChipInfo_GetLibVersion_ToBuf+0x4c>
6030e524:	e3520002 	cmp	r2, #2
6030e528:	e305179c 	movw	r1, #22428	; 0x579c
6030e52c:	e3461031 	movt	r1, #24625	; 0x6031
6030e530:	e3053794 	movw	r3, #22420	; 0x5794
6030e534:	e3463031 	movt	r3, #24625	; 0x6031
6030e538:	11a03001 	movne	r3, r1
6030e53c:	e1a01006 	mov	r1, r6
6030e540:	e1a00008 	mov	r0, r8
6030e544:	e30527a0 	movw	r2, #22432	; 0x57a0
6030e548:	e3462031 	movt	r2, #24625	; 0x6031
6030e54c:	eb0003f5 	bl	6030f528 <DiagSnPrintf>
6030e550:	e1a05000 	mov	r5, r0
6030e554:	e3054b7c 	movw	r4, #23420	; 0x5b7c
6030e558:	e3464031 	movt	r4, #24625	; 0x6031
6030e55c:	e3057be0 	movw	r7, #23520	; 0x5be0
6030e560:	e3467031 	movt	r7, #24625	; 0x6031
6030e564:	e1540007 	cmp	r4, r7
6030e568:	28bd87f0 	popcs	{r4, r5, r6, r7, r8, r9, sl, pc}
6030e56c:	e30597b4 	movw	r9, #22452	; 0x57b4
6030e570:	e3469031 	movt	r9, #24625	; 0x6031
6030e574:	e305a4e4 	movw	sl, #21732	; 0x54e4
6030e578:	e346a031 	movt	sl, #24625	; 0x6031
6030e57c:	ea000003 	b	6030e590 <ChipInfo_GetLibVersion_ToBuf+0xa0>
6030e580:	e1560005 	cmp	r6, r5
6030e584:	8a000011 	bhi	6030e5d0 <ChipInfo_GetLibVersion_ToBuf+0xe0>
6030e588:	e1540007 	cmp	r4, r7
6030e58c:	28bd87f0 	popcs	{r4, r5, r6, r7, r8, r9, sl, pc}
6030e590:	e5d43000 	ldrb	r3, [r4]
6030e594:	e3530000 	cmp	r3, #0
6030e598:	1afffff8 	bne	6030e580 <ChipInfo_GetLibVersion_ToBuf+0x90>
6030e59c:	e5f43001 	ldrb	r3, [r4, #1]!
6030e5a0:	e3530000 	cmp	r3, #0
6030e5a4:	0afffffc 	beq	6030e59c <ChipInfo_GetLibVersion_ToBuf+0xac>
6030e5a8:	e1560005 	cmp	r6, r5
6030e5ac:	9afffff5 	bls	6030e588 <ChipInfo_GetLibVersion_ToBuf+0x98>
6030e5b0:	e0461005 	sub	r1, r6, r5
6030e5b4:	e0880005 	add	r0, r8, r5
6030e5b8:	e1a0200a 	mov	r2, sl
6030e5bc:	eb0003d9 	bl	6030f528 <DiagSnPrintf>
6030e5c0:	e1540007 	cmp	r4, r7
6030e5c4:	e0855000 	add	r5, r5, r0
6030e5c8:	3afffff0 	bcc	6030e590 <ChipInfo_GetLibVersion_ToBuf+0xa0>
6030e5cc:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
6030e5d0:	e0461005 	sub	r1, r6, r5
6030e5d4:	e0880005 	add	r0, r8, r5
6030e5d8:	e1a02009 	mov	r2, r9
6030e5dc:	e2844001 	add	r4, r4, #1
6030e5e0:	eb0003d0 	bl	6030f528 <DiagSnPrintf>
6030e5e4:	e1540007 	cmp	r4, r7
6030e5e8:	e0855000 	add	r5, r5, r0
6030e5ec:	3affffe7 	bcc	6030e590 <ChipInfo_GetLibVersion_ToBuf+0xa0>
6030e5f0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

6030e5f4 <print_unsigned_num>:
6030e5f4:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030e5f8:	e1a06000 	mov	r6, r0
6030e5fc:	e24dd024 	sub	sp, sp, #36	; 0x24
6030e600:	e28da00c 	add	sl, sp, #12
6030e604:	e1a05001 	mov	r5, r1
6030e608:	e59d704c 	ldr	r7, [sp, #76]	; 0x4c
6030e60c:	e1a08002 	mov	r8, r2
6030e610:	e1a0b003 	mov	fp, r3
6030e614:	e1a0900a 	mov	r9, sl
6030e618:	e3a04000 	mov	r4, #0
6030e61c:	ea00000b 	b	6030e650 <print_unsigned_num+0x5c>
6030e620:	e28c3057 	add	r3, ip, #87	; 0x57
6030e624:	e3570001 	cmp	r7, #1
6030e628:	e6ef3073 	uxtb	r3, r3
6030e62c:	0a000012 	beq	6030e67c <print_unsigned_num+0x88>
6030e630:	e1560008 	cmp	r6, r8
6030e634:	e2842001 	add	r2, r4, #1
6030e638:	e1a06000 	mov	r6, r0
6030e63c:	e4c93001 	strb	r3, [r9], #1
6030e640:	e2d50000 	sbcs	r0, r5, #0
6030e644:	e1a05001 	mov	r5, r1
6030e648:	3a00000e 	bcc	6030e688 <print_unsigned_num+0x94>
6030e64c:	e1a04002 	mov	r4, r2
6030e650:	e1a00006 	mov	r0, r6
6030e654:	e1a01005 	mov	r1, r5
6030e658:	e1a02008 	mov	r2, r8
6030e65c:	e3a03000 	mov	r3, #0
6030e660:	ebffc89b 	bl	603008d4 <__aeabi_uldivmod>
6030e664:	e6efc072 	uxtb	ip, r2
6030e668:	e28c3030 	add	r3, ip, #48	; 0x30
6030e66c:	e3520009 	cmp	r2, #9
6030e670:	8affffea 	bhi	6030e620 <print_unsigned_num+0x2c>
6030e674:	e6ef3073 	uxtb	r3, r3
6030e678:	eaffffec 	b	6030e630 <print_unsigned_num+0x3c>
6030e67c:	e28c3037 	add	r3, ip, #55	; 0x37
6030e680:	e6ef3073 	uxtb	r3, r3
6030e684:	eaffffe9 	b	6030e630 <print_unsigned_num+0x3c>
6030e688:	e1a07002 	mov	r7, r2
6030e68c:	e59d2050 	ldr	r2, [sp, #80]	; 0x50
6030e690:	e3520000 	cmp	r2, #0
6030e694:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
6030e698:	0a000010 	beq	6030e6e0 <print_unsigned_num+0xec>
6030e69c:	e2422001 	sub	r2, r2, #1
6030e6a0:	e35b0030 	cmp	fp, #48	; 0x30
6030e6a4:	e58d2048 	str	r2, [sp, #72]	; 0x48
6030e6a8:	1a000035 	bne	6030e784 <print_unsigned_num+0x190>
6030e6ac:	e3a0002d 	mov	r0, #45	; 0x2d
6030e6b0:	e30952d8 	movw	r5, #37592	; 0x92d8
6030e6b4:	e3465030 	movt	r5, #24624	; 0x6030
6030e6b8:	e58d3004 	str	r3, [sp, #4]
6030e6bc:	e12fff35 	blx	r5
6030e6c0:	e59d3048 	ldr	r3, [sp, #72]	; 0x48
6030e6c4:	e3530000 	cmp	r3, #0
6030e6c8:	e59d3004 	ldr	r3, [sp, #4]
6030e6cc:	da000021 	ble	6030e758 <print_unsigned_num+0x164>
6030e6d0:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
6030e6d4:	e1570002 	cmp	r7, r2
6030e6d8:	ba00000a 	blt	6030e708 <print_unsigned_num+0x114>
6030e6dc:	ea00001b 	b	6030e750 <print_unsigned_num+0x15c>
6030e6e0:	e3520000 	cmp	r2, #0
6030e6e4:	d30952d8 	movwle	r5, #37592	; 0x92d8
6030e6e8:	d3465030 	movtle	r5, #24624	; 0x6030
6030e6ec:	da000019 	ble	6030e758 <print_unsigned_num+0x164>
6030e6f0:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
6030e6f4:	e30952d8 	movw	r5, #37592	; 0x92d8
6030e6f8:	e3465030 	movt	r5, #24624	; 0x6030
6030e6fc:	e59d2050 	ldr	r2, [sp, #80]	; 0x50
6030e700:	e1510007 	cmp	r1, r7
6030e704:	da00000d 	ble	6030e740 <print_unsigned_num+0x14c>
6030e708:	e59d6048 	ldr	r6, [sp, #72]	; 0x48
6030e70c:	e1a08003 	mov	r8, r3
6030e710:	e1a0000b 	mov	r0, fp
6030e714:	e2466001 	sub	r6, r6, #1
6030e718:	e12fff35 	blx	r5
6030e71c:	e1570006 	cmp	r7, r6
6030e720:	1afffffa 	bne	6030e710 <print_unsigned_num+0x11c>
6030e724:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
6030e728:	e1e02007 	mvn	r2, r7
6030e72c:	e0822001 	add	r2, r2, r1
6030e730:	e59d1050 	ldr	r1, [sp, #80]	; 0x50
6030e734:	e1a03008 	mov	r3, r8
6030e738:	e2811001 	add	r1, r1, #1
6030e73c:	e0822001 	add	r2, r2, r1
6030e740:	e59d1050 	ldr	r1, [sp, #80]	; 0x50
6030e744:	e58d2050 	str	r2, [sp, #80]	; 0x50
6030e748:	e3510000 	cmp	r1, #0
6030e74c:	0a000001 	beq	6030e758 <print_unsigned_num+0x164>
6030e750:	e31b00df 	tst	fp, #223	; 0xdf
6030e754:	0a000010 	beq	6030e79c <print_unsigned_num+0x1a8>
6030e758:	e08a4004 	add	r4, sl, r4
6030e75c:	e1a00003 	mov	r0, r3
6030e760:	ea000000 	b	6030e768 <print_unsigned_num+0x174>
6030e764:	e5740001 	ldrb	r0, [r4, #-1]!
6030e768:	e12fff35 	blx	r5
6030e76c:	e15a0004 	cmp	sl, r4
6030e770:	1afffffb 	bne	6030e764 <print_unsigned_num+0x170>
6030e774:	e59d3050 	ldr	r3, [sp, #80]	; 0x50
6030e778:	e0830007 	add	r0, r3, r7
6030e77c:	e28dd024 	add	sp, sp, #36	; 0x24
6030e780:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030e784:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
6030e788:	e3520000 	cmp	r2, #0
6030e78c:	d30952d8 	movwle	r5, #37592	; 0x92d8
6030e790:	d3465030 	movtle	r5, #24624	; 0x6030
6030e794:	caffffd5 	bgt	6030e6f0 <print_unsigned_num+0xfc>
6030e798:	eaffffec 	b	6030e750 <print_unsigned_num+0x15c>
6030e79c:	e3a0002d 	mov	r0, #45	; 0x2d
6030e7a0:	e58d3004 	str	r3, [sp, #4]
6030e7a4:	e12fff35 	blx	r5
6030e7a8:	e59d3004 	ldr	r3, [sp, #4]
6030e7ac:	eaffffe9 	b	6030e758 <print_unsigned_num+0x164>

6030e7b0 <SYSCFG_RLVersion>:
6030e7b0:	e3a03902 	mov	r3, #32768	; 0x8000
6030e7b4:	e3443200 	movt	r3, #16896	; 0x4200
6030e7b8:	e5932274 	ldr	r2, [r3, #628]	; 0x274
6030e7bc:	e3c2220f 	bic	r2, r2, #-268435456	; 0xf0000000
6030e7c0:	e382120a 	orr	r1, r2, #-1610612736	; 0xa0000000
6030e7c4:	e5831274 	str	r1, [r3, #628]	; 0x274
6030e7c8:	e5930274 	ldr	r0, [r3, #628]	; 0x274
6030e7cc:	e5832274 	str	r2, [r3, #628]	; 0x274
6030e7d0:	e7e30850 	ubfx	r0, r0, #16, #4
6030e7d4:	e12fff1e 	bx	lr

6030e7d8 <DiagVprintf>:
6030e7d8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030e7dc:	e1a04000 	mov	r4, r0
6030e7e0:	e5d00000 	ldrb	r0, [r0]
6030e7e4:	e24dd02c 	sub	sp, sp, #44	; 0x2c
6030e7e8:	e3500000 	cmp	r0, #0
6030e7ec:	0a0001da 	beq	6030ef5c <DiagVprintf+0x784>
6030e7f0:	e3a03000 	mov	r3, #0
6030e7f4:	e1a08001 	mov	r8, r1
6030e7f8:	e1a06003 	mov	r6, r3
6030e7fc:	e3a0900a 	mov	r9, #10
6030e800:	e58d3014 	str	r3, [sp, #20]
6030e804:	ea000006 	b	6030e824 <DiagVprintf+0x4c>
6030e808:	e30952d8 	movw	r5, #37592	; 0x92d8
6030e80c:	e3465030 	movt	r5, #24624	; 0x6030
6030e810:	e12fff35 	blx	r5
6030e814:	e5d40000 	ldrb	r0, [r4]
6030e818:	e2866001 	add	r6, r6, #1
6030e81c:	e3500000 	cmp	r0, #0
6030e820:	0a000040 	beq	6030e928 <DiagVprintf+0x150>
6030e824:	e2844001 	add	r4, r4, #1
6030e828:	e3500025 	cmp	r0, #37	; 0x25
6030e82c:	1afffff5 	bne	6030e808 <DiagVprintf+0x30>
6030e830:	e3a0b000 	mov	fp, #0
6030e834:	e1a0700b 	mov	r7, fp
6030e838:	e1a0a00b 	mov	sl, fp
6030e83c:	e1a0100b 	mov	r1, fp
6030e840:	e5d40000 	ldrb	r0, [r4]
6030e844:	e3500058 	cmp	r0, #88	; 0x58
6030e848:	0a00000d 	beq	6030e884 <DiagVprintf+0xac>
6030e84c:	8a000038 	bhi	6030e934 <DiagVprintf+0x15c>
6030e850:	e3500030 	cmp	r0, #48	; 0x30
6030e854:	0a0000d1 	beq	6030eba0 <DiagVprintf+0x3c8>
6030e858:	8a0000e1 	bhi	6030ebe4 <DiagVprintf+0x40c>
6030e85c:	e3500025 	cmp	r0, #37	; 0x25
6030e860:	0a00013d 	beq	6030ed5c <DiagVprintf+0x584>
6030e864:	9a0000c9 	bls	6030eb90 <DiagVprintf+0x3b8>
6030e868:	e350002d 	cmp	r0, #45	; 0x2d
6030e86c:	1a00012c 	bne	6030ed24 <DiagVprintf+0x54c>
6030e870:	e5d40001 	ldrb	r0, [r4, #1]
6030e874:	e2844001 	add	r4, r4, #1
6030e878:	e28bb001 	add	fp, fp, #1
6030e87c:	e3500058 	cmp	r0, #88	; 0x58
6030e880:	1afffff1 	bne	6030e84c <DiagVprintf+0x74>
6030e884:	e3a03001 	mov	r3, #1
6030e888:	e58d3014 	str	r3, [sp, #20]
6030e88c:	e3510001 	cmp	r1, #1
6030e890:	c2888007 	addgt	r8, r8, #7
6030e894:	c3c88007 	bicgt	r8, r8, #7
6030e898:	d4980004 	ldrle	r0, [r8], #4
6030e89c:	d3a01000 	movle	r1, #0
6030e8a0:	c5981004 	ldrgt	r1, [r8, #4]
6030e8a4:	c4980008 	ldrgt	r0, [r8], #8
6030e8a8:	e35b0000 	cmp	fp, #0
6030e8ac:	0a000130 	beq	6030ed74 <DiagVprintf+0x59c>
6030e8b0:	e59d3014 	ldr	r3, [sp, #20]
6030e8b4:	e58d3004 	str	r3, [sp, #4]
6030e8b8:	e3a02010 	mov	r2, #16
6030e8bc:	e3a03000 	mov	r3, #0
6030e8c0:	e58d3008 	str	r3, [sp, #8]
6030e8c4:	e58d3000 	str	r3, [sp]
6030e8c8:	e1a0300a 	mov	r3, sl
6030e8cc:	ebffff48 	bl	6030e5f4 <print_unsigned_num>
6030e8d0:	e1570000 	cmp	r7, r0
6030e8d4:	d3a03000 	movle	r3, #0
6030e8d8:	c3a03001 	movgt	r3, #1
6030e8dc:	e35a0020 	cmp	sl, #32
6030e8e0:	13a03000 	movne	r3, #0
6030e8e4:	e3530000 	cmp	r3, #0
6030e8e8:	0a000118 	beq	6030ed50 <DiagVprintf+0x578>
6030e8ec:	e047a000 	sub	sl, r7, r0
6030e8f0:	e35a0000 	cmp	sl, #0
6030e8f4:	da000196 	ble	6030ef54 <DiagVprintf+0x77c>
6030e8f8:	e30952d8 	movw	r5, #37592	; 0x92d8
6030e8fc:	e3465030 	movt	r5, #24624	; 0x6030
6030e900:	e3a00020 	mov	r0, #32
6030e904:	e12fff35 	blx	r5
6030e908:	e25aa001 	subs	sl, sl, #1
6030e90c:	1afffffb 	bne	6030e900 <DiagVprintf+0x128>
6030e910:	e1a00007 	mov	r0, r7
6030e914:	e0866000 	add	r6, r6, r0
6030e918:	e2844001 	add	r4, r4, #1
6030e91c:	e5d40000 	ldrb	r0, [r4]
6030e920:	e3500000 	cmp	r0, #0
6030e924:	1affffbe 	bne	6030e824 <DiagVprintf+0x4c>
6030e928:	e1a00006 	mov	r0, r6
6030e92c:	e28dd02c 	add	sp, sp, #44	; 0x2c
6030e930:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030e934:	e3500073 	cmp	r0, #115	; 0x73
6030e938:	0a000117 	beq	6030ed9c <DiagVprintf+0x5c4>
6030e93c:	8a000046 	bhi	6030ea5c <DiagVprintf+0x284>
6030e940:	e350006c 	cmp	r0, #108	; 0x6c
6030e944:	0a000112 	beq	6030ed94 <DiagVprintf+0x5bc>
6030e948:	9a000017 	bls	6030e9ac <DiagVprintf+0x1d4>
6030e94c:	e350006f 	cmp	r0, #111	; 0x6f
6030e950:	0a0000aa 	beq	6030ec00 <DiagVprintf+0x428>
6030e954:	e3500070 	cmp	r0, #112	; 0x70
6030e958:	1a0000f1 	bne	6030ed24 <DiagVprintf+0x54c>
6030e95c:	e35b0000 	cmp	fp, #0
6030e960:	e4980004 	ldr	r0, [r8], #4
6030e964:	e3a01000 	mov	r1, #0
6030e968:	13a03001 	movne	r3, #1
6030e96c:	01a0100b 	moveq	r1, fp
6030e970:	03a0a008 	moveq	sl, #8
6030e974:	158d3004 	strne	r3, [sp, #4]
6030e978:	058db008 	streq	fp, [sp, #8]
6030e97c:	e3a03030 	mov	r3, #48	; 0x30
6030e980:	03a0b001 	moveq	fp, #1
6030e984:	e3a02010 	mov	r2, #16
6030e988:	158d1008 	strne	r1, [sp, #8]
6030e98c:	158d1000 	strne	r1, [sp]
6030e990:	01cda0f0 	strdeq	sl, [sp]
6030e994:	ebffff16 	bl	6030e5f4 <print_unsigned_num>
6030e998:	e2844001 	add	r4, r4, #1
6030e99c:	e3a03001 	mov	r3, #1
6030e9a0:	e0866000 	add	r6, r6, r0
6030e9a4:	e58d3014 	str	r3, [sp, #20]
6030e9a8:	eaffffdb 	b	6030e91c <DiagVprintf+0x144>
6030e9ac:	e3500064 	cmp	r0, #100	; 0x64
6030e9b0:	0a000002 	beq	6030e9c0 <DiagVprintf+0x1e8>
6030e9b4:	9a00002e 	bls	6030ea74 <DiagVprintf+0x29c>
6030e9b8:	e3500069 	cmp	r0, #105	; 0x69
6030e9bc:	1a0000d8 	bne	6030ed24 <DiagVprintf+0x54c>
6030e9c0:	e3510001 	cmp	r1, #1
6030e9c4:	c2888007 	addgt	r8, r8, #7
6030e9c8:	c3c88007 	bicgt	r8, r8, #7
6030e9cc:	d5980000 	ldrle	r0, [r8]
6030e9d0:	d2882004 	addle	r2, r8, #4
6030e9d4:	c5981004 	ldrgt	r1, [r8, #4]
6030e9d8:	d1a01fc0 	asrle	r1, r0, #31
6030e9dc:	d1a08002 	movle	r8, r2
6030e9e0:	c4980008 	ldrgt	r0, [r8], #8
6030e9e4:	e3510000 	cmp	r1, #0
6030e9e8:	a3a02000 	movge	r2, #0
6030e9ec:	ba00012d 	blt	6030eea8 <DiagVprintf+0x6d0>
6030e9f0:	e35b0000 	cmp	fp, #0
6030e9f4:	e58d2008 	str	r2, [sp, #8]
6030e9f8:	0a0000ce 	beq	6030ed38 <DiagVprintf+0x560>
6030e9fc:	e59d3014 	ldr	r3, [sp, #20]
6030ea00:	e58d3004 	str	r3, [sp, #4]
6030ea04:	e3a0200a 	mov	r2, #10
6030ea08:	e3a03000 	mov	r3, #0
6030ea0c:	e58d3000 	str	r3, [sp]
6030ea10:	e1a0300a 	mov	r3, sl
6030ea14:	ebfffef6 	bl	6030e5f4 <print_unsigned_num>
6030ea18:	e1570000 	cmp	r7, r0
6030ea1c:	d3a03000 	movle	r3, #0
6030ea20:	c3a03001 	movgt	r3, #1
6030ea24:	e35a0020 	cmp	sl, #32
6030ea28:	13a03000 	movne	r3, #0
6030ea2c:	e3530000 	cmp	r3, #0
6030ea30:	0a0000c6 	beq	6030ed50 <DiagVprintf+0x578>
6030ea34:	e047a000 	sub	sl, r7, r0
6030ea38:	e35a0000 	cmp	sl, #0
6030ea3c:	da000144 	ble	6030ef54 <DiagVprintf+0x77c>
6030ea40:	e30952d8 	movw	r5, #37592	; 0x92d8
6030ea44:	e3465030 	movt	r5, #24624	; 0x6030
6030ea48:	e3a00020 	mov	r0, #32
6030ea4c:	e12fff35 	blx	r5
6030ea50:	e25aa001 	subs	sl, sl, #1
6030ea54:	1afffffb 	bne	6030ea48 <DiagVprintf+0x270>
6030ea58:	eaffffac 	b	6030e910 <DiagVprintf+0x138>
6030ea5c:	e3500078 	cmp	r0, #120	; 0x78
6030ea60:	0affff89 	beq	6030e88c <DiagVprintf+0xb4>
6030ea64:	e350007a 	cmp	r0, #122	; 0x7a
6030ea68:	1a000024 	bne	6030eb00 <DiagVprintf+0x328>
6030ea6c:	e2844001 	add	r4, r4, #1
6030ea70:	eaffff72 	b	6030e840 <DiagVprintf+0x68>
6030ea74:	e3500062 	cmp	r0, #98	; 0x62
6030ea78:	0a000087 	beq	6030ec9c <DiagVprintf+0x4c4>
6030ea7c:	e3500063 	cmp	r0, #99	; 0x63
6030ea80:	1a0000a7 	bne	6030ed24 <DiagVprintf+0x54c>
6030ea84:	e3570001 	cmp	r7, #1
6030ea88:	e4983004 	ldr	r3, [r8], #4
6030ea8c:	d3a02000 	movle	r2, #0
6030ea90:	c3a02001 	movgt	r2, #1
6030ea94:	e35b0000 	cmp	fp, #0
6030ea98:	13a01000 	movne	r1, #0
6030ea9c:	02021001 	andeq	r1, r2, #1
6030eaa0:	e6ef3073 	uxtb	r3, r3
6030eaa4:	e3510000 	cmp	r1, #0
6030eaa8:	e58d3018 	str	r3, [sp, #24]
6030eaac:	1a000101 	bne	6030eeb8 <DiagVprintf+0x6e0>
6030eab0:	e59d0018 	ldr	r0, [sp, #24]
6030eab4:	e30952d8 	movw	r5, #37592	; 0x92d8
6030eab8:	e3465030 	movt	r5, #24624	; 0x6030
6030eabc:	e58d201c 	str	r2, [sp, #28]
6030eac0:	e12fff35 	blx	r5
6030eac4:	e59d201c 	ldr	r2, [sp, #28]
6030eac8:	e2863001 	add	r3, r6, #1
6030eacc:	e35b0000 	cmp	fp, #0
6030ead0:	03a02000 	moveq	r2, #0
6030ead4:	12022001 	andne	r2, r2, #1
6030ead8:	e3520000 	cmp	r2, #0
6030eadc:	01a06003 	moveq	r6, r3
6030eae0:	0affff8c 	beq	6030e918 <DiagVprintf+0x140>
6030eae4:	e247b001 	sub	fp, r7, #1
6030eae8:	e1a0000a 	mov	r0, sl
6030eaec:	e12fff35 	blx	r5
6030eaf0:	e25bb001 	subs	fp, fp, #1
6030eaf4:	1afffffb 	bne	6030eae8 <DiagVprintf+0x310>
6030eaf8:	e0866007 	add	r6, r6, r7
6030eafc:	eaffff85 	b	6030e918 <DiagVprintf+0x140>
6030eb00:	e3500075 	cmp	r0, #117	; 0x75
6030eb04:	1a000086 	bne	6030ed24 <DiagVprintf+0x54c>
6030eb08:	e3510001 	cmp	r1, #1
6030eb0c:	c2888007 	addgt	r8, r8, #7
6030eb10:	c3c88007 	bicgt	r8, r8, #7
6030eb14:	d4980004 	ldrle	r0, [r8], #4
6030eb18:	d3a01000 	movle	r1, #0
6030eb1c:	c5981004 	ldrgt	r1, [r8, #4]
6030eb20:	c4980008 	ldrgt	r0, [r8], #8
6030eb24:	e35b0000 	cmp	fp, #0
6030eb28:	0a000081 	beq	6030ed34 <DiagVprintf+0x55c>
6030eb2c:	e59d3014 	ldr	r3, [sp, #20]
6030eb30:	e58d3004 	str	r3, [sp, #4]
6030eb34:	e3a0200a 	mov	r2, #10
6030eb38:	e3a03000 	mov	r3, #0
6030eb3c:	e58d3008 	str	r3, [sp, #8]
6030eb40:	e58d3000 	str	r3, [sp]
6030eb44:	e1a0300a 	mov	r3, sl
6030eb48:	ebfffea9 	bl	6030e5f4 <print_unsigned_num>
6030eb4c:	e1570000 	cmp	r7, r0
6030eb50:	d3a03000 	movle	r3, #0
6030eb54:	c3a03001 	movgt	r3, #1
6030eb58:	e35a0020 	cmp	sl, #32
6030eb5c:	13a03000 	movne	r3, #0
6030eb60:	e3530000 	cmp	r3, #0
6030eb64:	0a000079 	beq	6030ed50 <DiagVprintf+0x578>
6030eb68:	e047a000 	sub	sl, r7, r0
6030eb6c:	e35a0000 	cmp	sl, #0
6030eb70:	da0000f7 	ble	6030ef54 <DiagVprintf+0x77c>
6030eb74:	e30952d8 	movw	r5, #37592	; 0x92d8
6030eb78:	e3465030 	movt	r5, #24624	; 0x6030
6030eb7c:	e3a00020 	mov	r0, #32
6030eb80:	e12fff35 	blx	r5
6030eb84:	e25aa001 	subs	sl, sl, #1
6030eb88:	1afffffb 	bne	6030eb7c <DiagVprintf+0x3a4>
6030eb8c:	eaffff5f 	b	6030e910 <DiagVprintf+0x138>
6030eb90:	e3500000 	cmp	r0, #0
6030eb94:	0affff5f 	beq	6030e918 <DiagVprintf+0x140>
6030eb98:	e3500020 	cmp	r0, #32
6030eb9c:	1a000060 	bne	6030ed24 <DiagVprintf+0x54c>
6030eba0:	e2844001 	add	r4, r4, #1
6030eba4:	e1a0a000 	mov	sl, r0
6030eba8:	e5d40000 	ldrb	r0, [r4]
6030ebac:	e3500000 	cmp	r0, #0
6030ebb0:	0affff5c 	beq	6030e928 <DiagVprintf+0x150>
6030ebb4:	e3a07000 	mov	r7, #0
6030ebb8:	e0230799 	mla	r3, r9, r7, r0
6030ebbc:	e2400030 	sub	r0, r0, #48	; 0x30
6030ebc0:	e3500009 	cmp	r0, #9
6030ebc4:	8affff1d 	bhi	6030e840 <DiagVprintf+0x68>
6030ebc8:	e5f40001 	ldrb	r0, [r4, #1]!
6030ebcc:	e2437030 	sub	r7, r3, #48	; 0x30
6030ebd0:	e3500000 	cmp	r0, #0
6030ebd4:	1afffff7 	bne	6030ebb8 <DiagVprintf+0x3e0>
6030ebd8:	e1a00006 	mov	r0, r6
6030ebdc:	e28dd02c 	add	sp, sp, #44	; 0x2c
6030ebe0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030ebe4:	e3500043 	cmp	r0, #67	; 0x43
6030ebe8:	0affffa5 	beq	6030ea84 <DiagVprintf+0x2ac>
6030ebec:	9a000025 	bls	6030ec88 <DiagVprintf+0x4b0>
6030ebf0:	e350004c 	cmp	r0, #76	; 0x4c
6030ebf4:	0a000066 	beq	6030ed94 <DiagVprintf+0x5bc>
6030ebf8:	e350004f 	cmp	r0, #79	; 0x4f
6030ebfc:	1a000048 	bne	6030ed24 <DiagVprintf+0x54c>
6030ec00:	e3510001 	cmp	r1, #1
6030ec04:	c2888007 	addgt	r8, r8, #7
6030ec08:	c3c88007 	bicgt	r8, r8, #7
6030ec0c:	d4980004 	ldrle	r0, [r8], #4
6030ec10:	d3a01000 	movle	r1, #0
6030ec14:	c5981004 	ldrgt	r1, [r8, #4]
6030ec18:	c4980008 	ldrgt	r0, [r8], #8
6030ec1c:	e35b0000 	cmp	fp, #0
6030ec20:	0a000098 	beq	6030ee88 <DiagVprintf+0x6b0>
6030ec24:	e59d3014 	ldr	r3, [sp, #20]
6030ec28:	e58d3004 	str	r3, [sp, #4]
6030ec2c:	e3a02008 	mov	r2, #8
6030ec30:	e3a03000 	mov	r3, #0
6030ec34:	e58d3008 	str	r3, [sp, #8]
6030ec38:	e58d3000 	str	r3, [sp]
6030ec3c:	e1a0300a 	mov	r3, sl
6030ec40:	ebfffe6b 	bl	6030e5f4 <print_unsigned_num>
6030ec44:	e1570000 	cmp	r7, r0
6030ec48:	d3a03000 	movle	r3, #0
6030ec4c:	c3a03001 	movgt	r3, #1
6030ec50:	e35a0020 	cmp	sl, #32
6030ec54:	13a03000 	movne	r3, #0
6030ec58:	e3530000 	cmp	r3, #0
6030ec5c:	0a00003b 	beq	6030ed50 <DiagVprintf+0x578>
6030ec60:	e047a000 	sub	sl, r7, r0
6030ec64:	e35a0000 	cmp	sl, #0
6030ec68:	da0000b9 	ble	6030ef54 <DiagVprintf+0x77c>
6030ec6c:	e30952d8 	movw	r5, #37592	; 0x92d8
6030ec70:	e3465030 	movt	r5, #24624	; 0x6030
6030ec74:	e3a00020 	mov	r0, #32
6030ec78:	e12fff35 	blx	r5
6030ec7c:	e25aa001 	subs	sl, sl, #1
6030ec80:	1afffffb 	bne	6030ec74 <DiagVprintf+0x49c>
6030ec84:	eaffff21 	b	6030e910 <DiagVprintf+0x138>
6030ec88:	e3500039 	cmp	r0, #57	; 0x39
6030ec8c:	93a0a020 	movls	sl, #32
6030ec90:	9affffc5 	bls	6030ebac <DiagVprintf+0x3d4>
6030ec94:	e3500042 	cmp	r0, #66	; 0x42
6030ec98:	1a000021 	bne	6030ed24 <DiagVprintf+0x54c>
6030ec9c:	e3510001 	cmp	r1, #1
6030eca0:	c2888007 	addgt	r8, r8, #7
6030eca4:	c3c88007 	bicgt	r8, r8, #7
6030eca8:	d4980004 	ldrle	r0, [r8], #4
6030ecac:	d3a01000 	movle	r1, #0
6030ecb0:	c5981004 	ldrgt	r1, [r8, #4]
6030ecb4:	c4980008 	ldrgt	r0, [r8], #8
6030ecb8:	e35b0000 	cmp	fp, #0
6030ecbc:	0a000069 	beq	6030ee68 <DiagVprintf+0x690>
6030ecc0:	e59d3014 	ldr	r3, [sp, #20]
6030ecc4:	e58d3004 	str	r3, [sp, #4]
6030ecc8:	e3a02002 	mov	r2, #2
6030eccc:	e3a03000 	mov	r3, #0
6030ecd0:	e58d3008 	str	r3, [sp, #8]
6030ecd4:	e58d3000 	str	r3, [sp]
6030ecd8:	e1a0300a 	mov	r3, sl
6030ecdc:	ebfffe44 	bl	6030e5f4 <print_unsigned_num>
6030ece0:	e1570000 	cmp	r7, r0
6030ece4:	d3a03000 	movle	r3, #0
6030ece8:	c3a03001 	movgt	r3, #1
6030ecec:	e35a0020 	cmp	sl, #32
6030ecf0:	13a03000 	movne	r3, #0
6030ecf4:	e3530000 	cmp	r3, #0
6030ecf8:	0a000014 	beq	6030ed50 <DiagVprintf+0x578>
6030ecfc:	e047a000 	sub	sl, r7, r0
6030ed00:	e35a0000 	cmp	sl, #0
6030ed04:	da000092 	ble	6030ef54 <DiagVprintf+0x77c>
6030ed08:	e30952d8 	movw	r5, #37592	; 0x92d8
6030ed0c:	e3465030 	movt	r5, #24624	; 0x6030
6030ed10:	e3a00020 	mov	r0, #32
6030ed14:	e12fff35 	blx	r5
6030ed18:	e25aa001 	subs	sl, sl, #1
6030ed1c:	1afffffb 	bne	6030ed10 <DiagVprintf+0x538>
6030ed20:	eafffefa 	b	6030e910 <DiagVprintf+0x138>
6030ed24:	e3e06000 	mvn	r6, #0
6030ed28:	e1a00006 	mov	r0, r6
6030ed2c:	e28dd02c 	add	sp, sp, #44	; 0x2c
6030ed30:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030ed34:	e58db008 	str	fp, [sp, #8]
6030ed38:	e59d2014 	ldr	r2, [sp, #20]
6030ed3c:	e58d2004 	str	r2, [sp, #4]
6030ed40:	e1a0300a 	mov	r3, sl
6030ed44:	e3a0200a 	mov	r2, #10
6030ed48:	e58d7000 	str	r7, [sp]
6030ed4c:	ebfffe28 	bl	6030e5f4 <print_unsigned_num>
6030ed50:	e0866000 	add	r6, r6, r0
6030ed54:	e2844001 	add	r4, r4, #1
6030ed58:	eafffeef 	b	6030e91c <DiagVprintf+0x144>
6030ed5c:	e30952d8 	movw	r5, #37592	; 0x92d8
6030ed60:	e3465030 	movt	r5, #24624	; 0x6030
6030ed64:	e2866001 	add	r6, r6, #1
6030ed68:	e2844001 	add	r4, r4, #1
6030ed6c:	e12fff35 	blx	r5
6030ed70:	eafffee9 	b	6030e91c <DiagVprintf+0x144>
6030ed74:	e59d2014 	ldr	r2, [sp, #20]
6030ed78:	e58d2004 	str	r2, [sp, #4]
6030ed7c:	e1a0300a 	mov	r3, sl
6030ed80:	e3a02010 	mov	r2, #16
6030ed84:	e58db008 	str	fp, [sp, #8]
6030ed88:	e58d7000 	str	r7, [sp]
6030ed8c:	ebfffe18 	bl	6030e5f4 <print_unsigned_num>
6030ed90:	eaffffee 	b	6030ed50 <DiagVprintf+0x578>
6030ed94:	e2811001 	add	r1, r1, #1
6030ed98:	eaffff33 	b	6030ea6c <DiagVprintf+0x294>
6030ed9c:	e1a03008 	mov	r3, r8
6030eda0:	e4932004 	ldr	r2, [r3], #4
6030eda4:	e58d3018 	str	r3, [sp, #24]
6030eda8:	e5d20000 	ldrb	r0, [r2]
6030edac:	e3500000 	cmp	r0, #0
6030edb0:	0a00006b 	beq	6030ef64 <DiagVprintf+0x78c>
6030edb4:	e1a0c002 	mov	ip, r2
6030edb8:	e2628001 	rsb	r8, r2, #1
6030edbc:	e088100c 	add	r1, r8, ip
6030edc0:	e5fc3001 	ldrb	r3, [ip, #1]!
6030edc4:	e3530000 	cmp	r3, #0
6030edc8:	1afffffb 	bne	6030edbc <DiagVprintf+0x5e4>
6030edcc:	e58d101c 	str	r1, [sp, #28]
6030edd0:	e35b0000 	cmp	fp, #0
6030edd4:	0a000018 	beq	6030ee3c <DiagVprintf+0x664>
6030edd8:	e3520000 	cmp	r2, #0
6030eddc:	0a000064 	beq	6030ef74 <DiagVprintf+0x79c>
6030ede0:	e3500000 	cmp	r0, #0
6030ede4:	0a00000d 	beq	6030ee20 <DiagVprintf+0x648>
6030ede8:	e30952d8 	movw	r5, #37592	; 0x92d8
6030edec:	e3465030 	movt	r5, #24624	; 0x6030
6030edf0:	e58d4020 	str	r4, [sp, #32]
6030edf4:	e2628001 	rsb	r8, r2, #1
6030edf8:	e1a04002 	mov	r4, r2
6030edfc:	e12fff35 	blx	r5
6030ee00:	e084c008 	add	ip, r4, r8
6030ee04:	e5f40001 	ldrb	r0, [r4, #1]!
6030ee08:	e3500000 	cmp	r0, #0
6030ee0c:	1afffffa 	bne	6030edfc <DiagVprintf+0x624>
6030ee10:	e59d4020 	ldr	r4, [sp, #32]
6030ee14:	e086600c 	add	r6, r6, ip
6030ee18:	e35b0000 	cmp	fp, #0
6030ee1c:	0a000003 	beq	6030ee30 <DiagVprintf+0x658>
6030ee20:	e59d301c 	ldr	r3, [sp, #28]
6030ee24:	e0477003 	sub	r7, r7, r3
6030ee28:	e3570000 	cmp	r7, #0
6030ee2c:	ca00002c 	bgt	6030eee4 <DiagVprintf+0x70c>
6030ee30:	e59d8018 	ldr	r8, [sp, #24]
6030ee34:	e2844001 	add	r4, r4, #1
6030ee38:	eafffeb7 	b	6030e91c <DiagVprintf+0x144>
6030ee3c:	e59d301c 	ldr	r3, [sp, #28]
6030ee40:	e0473003 	sub	r3, r7, r3
6030ee44:	e3530000 	cmp	r3, #0
6030ee48:	e58d3020 	str	r3, [sp, #32]
6030ee4c:	ca00002e 	bgt	6030ef0c <DiagVprintf+0x734>
6030ee50:	e3520000 	cmp	r2, #0
6030ee54:	0a000044 	beq	6030ef6c <DiagVprintf+0x794>
6030ee58:	e5d20000 	ldrb	r0, [r2]
6030ee5c:	e3500000 	cmp	r0, #0
6030ee60:	1affffe0 	bne	6030ede8 <DiagVprintf+0x610>
6030ee64:	eafffff1 	b	6030ee30 <DiagVprintf+0x658>
6030ee68:	e59d2014 	ldr	r2, [sp, #20]
6030ee6c:	e58d2004 	str	r2, [sp, #4]
6030ee70:	e1a0300a 	mov	r3, sl
6030ee74:	e3a02002 	mov	r2, #2
6030ee78:	e58db008 	str	fp, [sp, #8]
6030ee7c:	e58d7000 	str	r7, [sp]
6030ee80:	ebfffddb 	bl	6030e5f4 <print_unsigned_num>
6030ee84:	eaffffb1 	b	6030ed50 <DiagVprintf+0x578>
6030ee88:	e59d2014 	ldr	r2, [sp, #20]
6030ee8c:	e58d2004 	str	r2, [sp, #4]
6030ee90:	e1a0300a 	mov	r3, sl
6030ee94:	e3a02008 	mov	r2, #8
6030ee98:	e58db008 	str	fp, [sp, #8]
6030ee9c:	e58d7000 	str	r7, [sp]
6030eea0:	ebfffdd3 	bl	6030e5f4 <print_unsigned_num>
6030eea4:	eaffffa9 	b	6030ed50 <DiagVprintf+0x578>
6030eea8:	e2700000 	rsbs	r0, r0, #0
6030eeac:	e2e11000 	rsc	r1, r1, #0
6030eeb0:	e3a02001 	mov	r2, #1
6030eeb4:	eafffecd 	b	6030e9f0 <DiagVprintf+0x218>
6030eeb8:	e30952d8 	movw	r5, #37592	; 0x92d8
6030eebc:	e3465030 	movt	r5, #24624	; 0x6030
6030eec0:	e247b001 	sub	fp, r7, #1
6030eec4:	e1a0000a 	mov	r0, sl
6030eec8:	e12fff35 	blx	r5
6030eecc:	e25bb001 	subs	fp, fp, #1
6030eed0:	1afffffb 	bne	6030eec4 <DiagVprintf+0x6ec>
6030eed4:	e59d0018 	ldr	r0, [sp, #24]
6030eed8:	e0866007 	add	r6, r6, r7
6030eedc:	e12fff35 	blx	r5
6030eee0:	eafffe8c 	b	6030e918 <DiagVprintf+0x140>
6030eee4:	e30952d8 	movw	r5, #37592	; 0x92d8
6030eee8:	e3465030 	movt	r5, #24624	; 0x6030
6030eeec:	e1a0b007 	mov	fp, r7
6030eef0:	e1a0000a 	mov	r0, sl
6030eef4:	e12fff35 	blx	r5
6030eef8:	e25bb001 	subs	fp, fp, #1
6030eefc:	1afffffb 	bne	6030eef0 <DiagVprintf+0x718>
6030ef00:	e59d8018 	ldr	r8, [sp, #24]
6030ef04:	e0866007 	add	r6, r6, r7
6030ef08:	eafffe82 	b	6030e918 <DiagVprintf+0x140>
6030ef0c:	e1a08003 	mov	r8, r3
6030ef10:	e1a03004 	mov	r3, r4
6030ef14:	e30952d8 	movw	r5, #37592	; 0x92d8
6030ef18:	e3465030 	movt	r5, #24624	; 0x6030
6030ef1c:	e1a0400a 	mov	r4, sl
6030ef20:	e1a0a003 	mov	sl, r3
6030ef24:	e58d2024 	str	r2, [sp, #36]	; 0x24
6030ef28:	e1a00004 	mov	r0, r4
6030ef2c:	e12fff35 	blx	r5
6030ef30:	e2588001 	subs	r8, r8, #1
6030ef34:	1afffffb 	bne	6030ef28 <DiagVprintf+0x750>
6030ef38:	e1a0300a 	mov	r3, sl
6030ef3c:	e1a0a004 	mov	sl, r4
6030ef40:	e1a04003 	mov	r4, r3
6030ef44:	e59d3020 	ldr	r3, [sp, #32]
6030ef48:	e59d2024 	ldr	r2, [sp, #36]	; 0x24
6030ef4c:	e0866003 	add	r6, r6, r3
6030ef50:	eaffffbe 	b	6030ee50 <DiagVprintf+0x678>
6030ef54:	e1a07000 	mov	r7, r0
6030ef58:	eafffe6c 	b	6030e910 <DiagVprintf+0x138>
6030ef5c:	e1a06000 	mov	r6, r0
6030ef60:	eafffe70 	b	6030e928 <DiagVprintf+0x150>
6030ef64:	e58d001c 	str	r0, [sp, #28]
6030ef68:	eaffff98 	b	6030edd0 <DiagVprintf+0x5f8>
6030ef6c:	e2466001 	sub	r6, r6, #1
6030ef70:	eaffffae 	b	6030ee30 <DiagVprintf+0x658>
6030ef74:	e2466001 	sub	r6, r6, #1
6030ef78:	eaffffa8 	b	6030ee20 <DiagVprintf+0x648>

6030ef7c <DiagVprintfNano>:
6030ef7c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030ef80:	e1a04000 	mov	r4, r0
6030ef84:	e5d00000 	ldrb	r0, [r0]
6030ef88:	e24dd02c 	sub	sp, sp, #44	; 0x2c
6030ef8c:	e3500000 	cmp	r0, #0
6030ef90:	0a000136 	beq	6030f470 <DiagVprintfNano+0x4f4>
6030ef94:	e30962d8 	movw	r6, #37592	; 0x92d8
6030ef98:	e3466030 	movt	r6, #24624	; 0x6030
6030ef9c:	e30c3ccd 	movw	r3, #52429	; 0xcccd
6030efa0:	e34c3ccc 	movt	r3, #52428	; 0xcccc
6030efa4:	e1a08001 	mov	r8, r1
6030efa8:	e3a07000 	mov	r7, #0
6030efac:	e58d3004 	str	r3, [sp, #4]
6030efb0:	ea000004 	b	6030efc8 <DiagVprintfNano+0x4c>
6030efb4:	e2877001 	add	r7, r7, #1
6030efb8:	e12fff36 	blx	r6
6030efbc:	e5d40000 	ldrb	r0, [r4]
6030efc0:	e3500000 	cmp	r0, #0
6030efc4:	0a00001d 	beq	6030f040 <DiagVprintfNano+0xc4>
6030efc8:	e2844001 	add	r4, r4, #1
6030efcc:	e3500025 	cmp	r0, #37	; 0x25
6030efd0:	1afffff7 	bne	6030efb4 <DiagVprintfNano+0x38>
6030efd4:	e3a05000 	mov	r5, #0
6030efd8:	e1a03005 	mov	r3, r5
6030efdc:	e3a0c00a 	mov	ip, #10
6030efe0:	e5d40000 	ldrb	r0, [r4]
6030efe4:	e3500043 	cmp	r0, #67	; 0x43
6030efe8:	0a0000a1 	beq	6030f274 <DiagVprintfNano+0x2f8>
6030efec:	8a000021 	bhi	6030f078 <DiagVprintfNano+0xfc>
6030eff0:	e3500025 	cmp	r0, #37	; 0x25
6030eff4:	0a0000c6 	beq	6030f314 <DiagVprintfNano+0x398>
6030eff8:	9a000013 	bls	6030f04c <DiagVprintfNano+0xd0>
6030effc:	e3500030 	cmp	r0, #48	; 0x30
6030f000:	0a000015 	beq	6030f05c <DiagVprintfNano+0xe0>
6030f004:	e2403031 	sub	r3, r0, #49	; 0x31
6030f008:	e6ef3073 	uxtb	r3, r3
6030f00c:	e3530008 	cmp	r3, #8
6030f010:	8a0000a0 	bhi	6030f298 <DiagVprintfNano+0x31c>
6030f014:	e3a03020 	mov	r3, #32
6030f018:	e3a05000 	mov	r5, #0
6030f01c:	e2402030 	sub	r2, r0, #48	; 0x30
6030f020:	e021059c 	mla	r1, ip, r5, r0
6030f024:	e6ef2072 	uxtb	r2, r2
6030f028:	e3520009 	cmp	r2, #9
6030f02c:	8affffeb 	bhi	6030efe0 <DiagVprintfNano+0x64>
6030f030:	e5f40001 	ldrb	r0, [r4, #1]!
6030f034:	e2415030 	sub	r5, r1, #48	; 0x30
6030f038:	e3500000 	cmp	r0, #0
6030f03c:	1afffff6 	bne	6030f01c <DiagVprintfNano+0xa0>
6030f040:	e1a00007 	mov	r0, r7
6030f044:	e28dd02c 	add	sp, sp, #44	; 0x2c
6030f048:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030f04c:	e3500000 	cmp	r0, #0
6030f050:	0a00003b 	beq	6030f144 <DiagVprintfNano+0x1c8>
6030f054:	e3500020 	cmp	r0, #32
6030f058:	1a00008e 	bne	6030f298 <DiagVprintfNano+0x31c>
6030f05c:	e5d42001 	ldrb	r2, [r4, #1]
6030f060:	e2844001 	add	r4, r4, #1
6030f064:	e3520000 	cmp	r2, #0
6030f068:	0afffff4 	beq	6030f040 <DiagVprintfNano+0xc4>
6030f06c:	e1a03000 	mov	r3, r0
6030f070:	e1a00002 	mov	r0, r2
6030f074:	eaffffe7 	b	6030f018 <DiagVprintfNano+0x9c>
6030f078:	e3500073 	cmp	r0, #115	; 0x73
6030f07c:	0a000089 	beq	6030f2a8 <DiagVprintfNano+0x32c>
6030f080:	9a000031 	bls	6030f14c <DiagVprintfNano+0x1d0>
6030f084:	e3500075 	cmp	r0, #117	; 0x75
6030f088:	0a0000a5 	beq	6030f324 <DiagVprintfNano+0x3a8>
6030f08c:	e3500078 	cmp	r0, #120	; 0x78
6030f090:	1a000080 	bne	6030f298 <DiagVprintfNano+0x31c>
6030f094:	e1a02008 	mov	r2, r8
6030f098:	e28da01c 	add	sl, sp, #28
6030f09c:	e1a0000a 	mov	r0, sl
6030f0a0:	e4921004 	ldr	r1, [r2], #4
6030f0a4:	e3a09000 	mov	r9, #0
6030f0a8:	e58d2008 	str	r2, [sp, #8]
6030f0ac:	ea000000 	b	6030f0b4 <DiagVprintfNano+0x138>
6030f0b0:	e1a09008 	mov	r9, r8
6030f0b4:	e201200f 	and	r2, r1, #15
6030f0b8:	e3520009 	cmp	r2, #9
6030f0bc:	e282b057 	add	fp, r2, #87	; 0x57
6030f0c0:	9282b030 	addls	fp, r2, #48	; 0x30
6030f0c4:	e1a02221 	lsr	r2, r1, #4
6030f0c8:	e351000f 	cmp	r1, #15
6030f0cc:	e2898001 	add	r8, r9, #1
6030f0d0:	e1a01002 	mov	r1, r2
6030f0d4:	e4c0b001 	strb	fp, [r0], #1
6030f0d8:	8afffff4 	bhi	6030f0b0 <DiagVprintfNano+0x134>
6030f0dc:	e3550000 	cmp	r5, #0
6030f0e0:	da0000cc 	ble	6030f418 <DiagVprintfNano+0x49c>
6030f0e4:	e1550008 	cmp	r5, r8
6030f0e8:	da0000ca 	ble	6030f418 <DiagVprintfNano+0x49c>
6030f0ec:	e58d4010 	str	r4, [sp, #16]
6030f0f0:	e1a04003 	mov	r4, r3
6030f0f4:	e58d500c 	str	r5, [sp, #12]
6030f0f8:	e2455001 	sub	r5, r5, #1
6030f0fc:	e1a00004 	mov	r0, r4
6030f100:	e12fff36 	blx	r6
6030f104:	e1580005 	cmp	r8, r5
6030f108:	1afffffa 	bne	6030f0f8 <DiagVprintfNano+0x17c>
6030f10c:	e59d500c 	ldr	r5, [sp, #12]
6030f110:	e59d4010 	ldr	r4, [sp, #16]
6030f114:	e0458008 	sub	r8, r5, r8
6030f118:	e08a5009 	add	r5, sl, r9
6030f11c:	e1a0000b 	mov	r0, fp
6030f120:	ea000000 	b	6030f128 <DiagVprintfNano+0x1ac>
6030f124:	e5750001 	ldrb	r0, [r5, #-1]!
6030f128:	e12fff36 	blx	r6
6030f12c:	e155000a 	cmp	r5, sl
6030f130:	1afffffb 	bne	6030f124 <DiagVprintfNano+0x1a8>
6030f134:	e2877001 	add	r7, r7, #1
6030f138:	e0877009 	add	r7, r7, r9
6030f13c:	e0887007 	add	r7, r8, r7
6030f140:	e59d8008 	ldr	r8, [sp, #8]
6030f144:	e2844001 	add	r4, r4, #1
6030f148:	eaffff9b 	b	6030efbc <DiagVprintfNano+0x40>
6030f14c:	e3500064 	cmp	r0, #100	; 0x64
6030f150:	0a000001 	beq	6030f15c <DiagVprintfNano+0x1e0>
6030f154:	e3500069 	cmp	r0, #105	; 0x69
6030f158:	1a000043 	bne	6030f26c <DiagVprintfNano+0x2f0>
6030f15c:	e1a01008 	mov	r1, r8
6030f160:	e28da01c 	add	sl, sp, #28
6030f164:	e59dc004 	ldr	ip, [sp, #4]
6030f168:	e4912004 	ldr	r2, [r1], #4
6030f16c:	e58d100c 	str	r1, [sp, #12]
6030f170:	e3520000 	cmp	r2, #0
6030f174:	b3a01001 	movlt	r1, #1
6030f178:	a3a01000 	movge	r1, #0
6030f17c:	b2622000 	rsblt	r2, r2, #0
6030f180:	e58d1008 	str	r1, [sp, #8]
6030f184:	e3a0b000 	mov	fp, #0
6030f188:	e1a0100a 	mov	r1, sl
6030f18c:	e3a0000a 	mov	r0, #10
6030f190:	e08e829c 	umull	r8, lr, ip, r2
6030f194:	e3520009 	cmp	r2, #9
6030f198:	e1a0800b 	mov	r8, fp
6030f19c:	e1a0e1ae 	lsr	lr, lr, #3
6030f1a0:	e28bb001 	add	fp, fp, #1
6030f1a4:	e0692e90 	mls	r9, r0, lr, r2
6030f1a8:	e1a0200e 	mov	r2, lr
6030f1ac:	e2899030 	add	r9, r9, #48	; 0x30
6030f1b0:	e6ef9079 	uxtb	r9, r9
6030f1b4:	e4c19001 	strb	r9, [r1], #1
6030f1b8:	8afffff4 	bhi	6030f190 <DiagVprintfNano+0x214>
6030f1bc:	e59d2008 	ldr	r2, [sp, #8]
6030f1c0:	e3520000 	cmp	r2, #0
6030f1c4:	1a000085 	bne	6030f3e0 <DiagVprintfNano+0x464>
6030f1c8:	e3550000 	cmp	r5, #0
6030f1cc:	da000018 	ble	6030f234 <DiagVprintfNano+0x2b8>
6030f1d0:	e155000b 	cmp	r5, fp
6030f1d4:	da000016 	ble	6030f234 <DiagVprintfNano+0x2b8>
6030f1d8:	e58d4014 	str	r4, [sp, #20]
6030f1dc:	e1a04003 	mov	r4, r3
6030f1e0:	e58d5010 	str	r5, [sp, #16]
6030f1e4:	e2455001 	sub	r5, r5, #1
6030f1e8:	e1a00004 	mov	r0, r4
6030f1ec:	e12fff36 	blx	r6
6030f1f0:	e15b0005 	cmp	fp, r5
6030f1f4:	1afffffa 	bne	6030f1e4 <DiagVprintfNano+0x268>
6030f1f8:	e59d1008 	ldr	r1, [sp, #8]
6030f1fc:	e59d5010 	ldr	r5, [sp, #16]
6030f200:	e1e0200b 	mvn	r2, fp
6030f204:	e0822005 	add	r2, r2, r5
6030f208:	e3510000 	cmp	r1, #0
6030f20c:	e2811001 	add	r1, r1, #1
6030f210:	e1a03004 	mov	r3, r4
6030f214:	e0822001 	add	r2, r2, r1
6030f218:	e59d4014 	ldr	r4, [sp, #20]
6030f21c:	e58d2008 	str	r2, [sp, #8]
6030f220:	0a000003 	beq	6030f234 <DiagVprintfNano+0x2b8>
6030f224:	e31300df 	tst	r3, #223	; 0xdf
6030f228:	1a000001 	bne	6030f234 <DiagVprintfNano+0x2b8>
6030f22c:	e3a0002d 	mov	r0, #45	; 0x2d
6030f230:	e12fff36 	blx	r6
6030f234:	e08a5008 	add	r5, sl, r8
6030f238:	e1a00009 	mov	r0, r9
6030f23c:	ea000000 	b	6030f244 <DiagVprintfNano+0x2c8>
6030f240:	e5750001 	ldrb	r0, [r5, #-1]!
6030f244:	e12fff36 	blx	r6
6030f248:	e15a0005 	cmp	sl, r5
6030f24c:	1afffffb 	bne	6030f240 <DiagVprintfNano+0x2c4>
6030f250:	e59d3008 	ldr	r3, [sp, #8]
6030f254:	e2877001 	add	r7, r7, #1
6030f258:	e0877008 	add	r7, r7, r8
6030f25c:	e0837007 	add	r7, r3, r7
6030f260:	e59d800c 	ldr	r8, [sp, #12]
6030f264:	e2844001 	add	r4, r4, #1
6030f268:	eaffff53 	b	6030efbc <DiagVprintfNano+0x40>
6030f26c:	e3500063 	cmp	r0, #99	; 0x63
6030f270:	1a000008 	bne	6030f298 <DiagVprintfNano+0x31c>
6030f274:	e4989004 	ldr	r9, [r8], #4
6030f278:	e3550001 	cmp	r5, #1
6030f27c:	e6ef9079 	uxtb	r9, r9
6030f280:	ca000066 	bgt	6030f420 <DiagVprintfNano+0x4a4>
6030f284:	e1a00009 	mov	r0, r9
6030f288:	e2877001 	add	r7, r7, #1
6030f28c:	e2844001 	add	r4, r4, #1
6030f290:	e12fff36 	blx	r6
6030f294:	eaffff48 	b	6030efbc <DiagVprintfNano+0x40>
6030f298:	e3e07000 	mvn	r7, #0
6030f29c:	e1a00007 	mov	r0, r7
6030f2a0:	e28dd02c 	add	sp, sp, #44	; 0x2c
6030f2a4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030f2a8:	e4989004 	ldr	r9, [r8], #4
6030f2ac:	e5d92000 	ldrb	r2, [r9]
6030f2b0:	e3520000 	cmp	r2, #0
6030f2b4:	0a000006 	beq	6030f2d4 <DiagVprintfNano+0x358>
6030f2b8:	e1a02009 	mov	r2, r9
6030f2bc:	e269a001 	rsb	sl, r9, #1
6030f2c0:	e08a0002 	add	r0, sl, r2
6030f2c4:	e5f21001 	ldrb	r1, [r2, #1]!
6030f2c8:	e3510000 	cmp	r1, #0
6030f2cc:	1afffffb 	bne	6030f2c0 <DiagVprintfNano+0x344>
6030f2d0:	e0455000 	sub	r5, r5, r0
6030f2d4:	e3550000 	cmp	r5, #0
6030f2d8:	ca000059 	bgt	6030f444 <DiagVprintfNano+0x4c8>
6030f2dc:	e3590000 	cmp	r9, #0
6030f2e0:	0a000064 	beq	6030f478 <DiagVprintfNano+0x4fc>
6030f2e4:	e5d90000 	ldrb	r0, [r9]
6030f2e8:	e3500000 	cmp	r0, #0
6030f2ec:	0affff94 	beq	6030f144 <DiagVprintfNano+0x1c8>
6030f2f0:	e269a001 	rsb	sl, r9, #1
6030f2f4:	e12fff36 	blx	r6
6030f2f8:	e089300a 	add	r3, r9, sl
6030f2fc:	e5f90001 	ldrb	r0, [r9, #1]!
6030f300:	e3500000 	cmp	r0, #0
6030f304:	1afffffa 	bne	6030f2f4 <DiagVprintfNano+0x378>
6030f308:	e0877003 	add	r7, r7, r3
6030f30c:	e2844001 	add	r4, r4, #1
6030f310:	eaffff29 	b	6030efbc <DiagVprintfNano+0x40>
6030f314:	e2877001 	add	r7, r7, #1
6030f318:	e2844001 	add	r4, r4, #1
6030f31c:	e12fff36 	blx	r6
6030f320:	eaffff25 	b	6030efbc <DiagVprintfNano+0x40>
6030f324:	e1a02008 	mov	r2, r8
6030f328:	e28da01c 	add	sl, sp, #28
6030f32c:	e1a0000a 	mov	r0, sl
6030f330:	e4921004 	ldr	r1, [r2], #4
6030f334:	e58d2008 	str	r2, [sp, #8]
6030f338:	e59d2004 	ldr	r2, [sp, #4]
6030f33c:	e3a08000 	mov	r8, #0
6030f340:	e3a0c00a 	mov	ip, #10
6030f344:	e08e9192 	umull	r9, lr, r2, r1
6030f348:	e3510009 	cmp	r1, #9
6030f34c:	e1a0b008 	mov	fp, r8
6030f350:	e1a0e1ae 	lsr	lr, lr, #3
6030f354:	e2888001 	add	r8, r8, #1
6030f358:	e0691e9c 	mls	r9, ip, lr, r1
6030f35c:	e1a0100e 	mov	r1, lr
6030f360:	e2899030 	add	r9, r9, #48	; 0x30
6030f364:	e6ef9079 	uxtb	r9, r9
6030f368:	e4c09001 	strb	r9, [r0], #1
6030f36c:	8afffff4 	bhi	6030f344 <DiagVprintfNano+0x3c8>
6030f370:	e3550000 	cmp	r5, #0
6030f374:	da000025 	ble	6030f410 <DiagVprintfNano+0x494>
6030f378:	e1550008 	cmp	r5, r8
6030f37c:	da000023 	ble	6030f410 <DiagVprintfNano+0x494>
6030f380:	e58d4010 	str	r4, [sp, #16]
6030f384:	e1a04003 	mov	r4, r3
6030f388:	e58d500c 	str	r5, [sp, #12]
6030f38c:	e2455001 	sub	r5, r5, #1
6030f390:	e1a00004 	mov	r0, r4
6030f394:	e12fff36 	blx	r6
6030f398:	e1580005 	cmp	r8, r5
6030f39c:	1afffffa 	bne	6030f38c <DiagVprintfNano+0x410>
6030f3a0:	e59d500c 	ldr	r5, [sp, #12]
6030f3a4:	e59d4010 	ldr	r4, [sp, #16]
6030f3a8:	e0458008 	sub	r8, r5, r8
6030f3ac:	e08a500b 	add	r5, sl, fp
6030f3b0:	e1a00009 	mov	r0, r9
6030f3b4:	ea000000 	b	6030f3bc <DiagVprintfNano+0x440>
6030f3b8:	e5750001 	ldrb	r0, [r5, #-1]!
6030f3bc:	e12fff36 	blx	r6
6030f3c0:	e15a0005 	cmp	sl, r5
6030f3c4:	1afffffb 	bne	6030f3b8 <DiagVprintfNano+0x43c>
6030f3c8:	e2877001 	add	r7, r7, #1
6030f3cc:	e087700b 	add	r7, r7, fp
6030f3d0:	e0887007 	add	r7, r8, r7
6030f3d4:	e2844001 	add	r4, r4, #1
6030f3d8:	e59d8008 	ldr	r8, [sp, #8]
6030f3dc:	eafffef6 	b	6030efbc <DiagVprintfNano+0x40>
6030f3e0:	e2455001 	sub	r5, r5, #1
6030f3e4:	e3530030 	cmp	r3, #48	; 0x30
6030f3e8:	1a00001d 	bne	6030f464 <DiagVprintfNano+0x4e8>
6030f3ec:	e3a0002d 	mov	r0, #45	; 0x2d
6030f3f0:	e58d3010 	str	r3, [sp, #16]
6030f3f4:	e12fff36 	blx	r6
6030f3f8:	e59d3010 	ldr	r3, [sp, #16]
6030f3fc:	e3550000 	cmp	r5, #0
6030f400:	daffff8b 	ble	6030f234 <DiagVprintfNano+0x2b8>
6030f404:	e15b0005 	cmp	fp, r5
6030f408:	baffff72 	blt	6030f1d8 <DiagVprintfNano+0x25c>
6030f40c:	eaffff84 	b	6030f224 <DiagVprintfNano+0x2a8>
6030f410:	e3a08000 	mov	r8, #0
6030f414:	eaffffe4 	b	6030f3ac <DiagVprintfNano+0x430>
6030f418:	e3a08000 	mov	r8, #0
6030f41c:	eaffff3d 	b	6030f118 <DiagVprintfNano+0x19c>
6030f420:	e245a001 	sub	sl, r5, #1
6030f424:	e1a0b003 	mov	fp, r3
6030f428:	e1a0000b 	mov	r0, fp
6030f42c:	e12fff36 	blx	r6
6030f430:	e25aa001 	subs	sl, sl, #1
6030f434:	1afffffb 	bne	6030f428 <DiagVprintfNano+0x4ac>
6030f438:	e2477001 	sub	r7, r7, #1
6030f43c:	e0877005 	add	r7, r7, r5
6030f440:	eaffff8f 	b	6030f284 <DiagVprintfNano+0x308>
6030f444:	e1a0a005 	mov	sl, r5
6030f448:	e1a0b003 	mov	fp, r3
6030f44c:	e1a0000b 	mov	r0, fp
6030f450:	e12fff36 	blx	r6
6030f454:	e25aa001 	subs	sl, sl, #1
6030f458:	1afffffb 	bne	6030f44c <DiagVprintfNano+0x4d0>
6030f45c:	e0877005 	add	r7, r7, r5
6030f460:	eaffff9d 	b	6030f2dc <DiagVprintfNano+0x360>
6030f464:	e3550000 	cmp	r5, #0
6030f468:	caffffe5 	bgt	6030f404 <DiagVprintfNano+0x488>
6030f46c:	eaffff6c 	b	6030f224 <DiagVprintfNano+0x2a8>
6030f470:	e1a07000 	mov	r7, r0
6030f474:	eafffef1 	b	6030f040 <DiagVprintfNano+0xc4>
6030f478:	e2477001 	sub	r7, r7, #1
6030f47c:	eaffff30 	b	6030f144 <DiagVprintfNano+0x1c8>

6030f480 <DiagPrintf>:
6030f480:	e92d000f 	push	{r0, r1, r2, r3}
6030f484:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
6030f488:	e24dd00c 	sub	sp, sp, #12
6030f48c:	e28d1014 	add	r1, sp, #20
6030f490:	e59d0010 	ldr	r0, [sp, #16]
6030f494:	e58d1004 	str	r1, [sp, #4]
6030f498:	ebfffcce 	bl	6030e7d8 <DiagVprintf>
6030f49c:	e28dd00c 	add	sp, sp, #12
6030f4a0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
6030f4a4:	e28dd010 	add	sp, sp, #16
6030f4a8:	e12fff1e 	bx	lr

6030f4ac <DiagPrintfNano>:
6030f4ac:	e92d000f 	push	{r0, r1, r2, r3}
6030f4b0:	e92d4030 	push	{r4, r5, lr}
6030f4b4:	e24dd00c 	sub	sp, sp, #12
6030f4b8:	e10f5000 	mrs	r5, CPSR
6030f4bc:	f10c0080 	cpsid	i
6030f4c0:	f57ff04f 	dsb	sy
6030f4c4:	f57ff06f 	isb	sy
6030f4c8:	e3a03001 	mov	r3, #1
6030f4cc:	e3034c40 	movw	r4, #15424	; 0x3c40
6030f4d0:	e3464032 	movt	r4, #24626	; 0x6032
6030f4d4:	e1942f9f 	ldrex	r2, [r4]
6030f4d8:	e3520000 	cmp	r2, #0
6030f4dc:	1320f002 	wfene
6030f4e0:	01842f93 	strexeq	r2, r3, [r4]
6030f4e4:	03520000 	cmpeq	r2, #0
6030f4e8:	1afffff9 	bne	6030f4d4 <DiagPrintfNano+0x28>
6030f4ec:	f57ff05f 	dmb	sy
6030f4f0:	e28d101c 	add	r1, sp, #28
6030f4f4:	e59d0018 	ldr	r0, [sp, #24]
6030f4f8:	e58d1004 	str	r1, [sp, #4]
6030f4fc:	ebfffe9e 	bl	6030ef7c <DiagVprintfNano>
6030f500:	e3a03000 	mov	r3, #0
6030f504:	f57ff05f 	dmb	sy
6030f508:	e5843000 	str	r3, [r4]
6030f50c:	f57ff04f 	dsb	sy
6030f510:	e320f004 	sev
6030f514:	e121f005 	msr	CPSR_c, r5
6030f518:	e28dd00c 	add	sp, sp, #12
6030f51c:	e8bd4030 	pop	{r4, r5, lr}
6030f520:	e28dd010 	add	sp, sp, #16
6030f524:	e12fff1e 	bx	lr

6030f528 <DiagSnPrintf>:
6030f528:	e92d000c 	push	{r2, r3}
6030f52c:	e3500000 	cmp	r0, #0
6030f530:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030f534:	e24dd01c 	sub	sp, sp, #28
6030f538:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
6030f53c:	0a000014 	beq	6030f594 <DiagSnPrintf+0x6c>
6030f540:	e3510000 	cmp	r1, #0
6030f544:	e5d2c000 	ldrb	ip, [r2]
6030f548:	e28d3044 	add	r3, sp, #68	; 0x44
6030f54c:	10801001 	addne	r1, r0, r1
6030f550:	e58d3000 	str	r3, [sp]
6030f554:	03e01000 	mvneq	r1, #0
6030f558:	e1a03000 	mov	r3, r0
6030f55c:	e35c0000 	cmp	ip, #0
6030f560:	0a0000cc 	beq	6030f898 <DiagSnPrintf+0x370>
6030f564:	e3069667 	movw	r9, #26215	; 0x6667
6030f568:	e3469666 	movt	r9, #26214	; 0x6666
6030f56c:	e30577b8 	movw	r7, #22456	; 0x57b8
6030f570:	e3467031 	movt	r7, #24625	; 0x6031
6030f574:	e35c0025 	cmp	ip, #37	; 0x25
6030f578:	0a000010 	beq	6030f5c0 <DiagSnPrintf+0x98>
6030f57c:	e4c3c001 	strb	ip, [r3], #1
6030f580:	e1510003 	cmp	r1, r3
6030f584:	8a000006 	bhi	6030f5a4 <DiagSnPrintf+0x7c>
6030f588:	e0430000 	sub	r0, r3, r0
6030f58c:	e3a02000 	mov	r2, #0
6030f590:	e5c32000 	strb	r2, [r3]
6030f594:	e28dd01c 	add	sp, sp, #28
6030f598:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030f59c:	e28dd008 	add	sp, sp, #8
6030f5a0:	e12fff1e 	bx	lr
6030f5a4:	e1a05002 	mov	r5, r2
6030f5a8:	e5d5c001 	ldrb	ip, [r5, #1]
6030f5ac:	e2852001 	add	r2, r5, #1
6030f5b0:	e35c0000 	cmp	ip, #0
6030f5b4:	0afffff3 	beq	6030f588 <DiagSnPrintf+0x60>
6030f5b8:	e35c0025 	cmp	ip, #37	; 0x25
6030f5bc:	1affffee 	bne	6030f57c <DiagSnPrintf+0x54>
6030f5c0:	e59dc000 	ldr	ip, [sp]
6030f5c4:	e5d2e001 	ldrb	lr, [r2, #1]
6030f5c8:	e2825001 	add	r5, r2, #1
6030f5cc:	e59c6000 	ldr	r6, [ip]
6030f5d0:	e35e0073 	cmp	lr, #115	; 0x73
6030f5d4:	028cc004 	addeq	ip, ip, #4
6030f5d8:	00466003 	subeq	r6, r6, r3
6030f5dc:	058dc000 	streq	ip, [sp]
6030f5e0:	0a00004a 	beq	6030f710 <DiagSnPrintf+0x1e8>
6030f5e4:	e20e40df 	and	r4, lr, #223	; 0xdf
6030f5e8:	e28cc004 	add	ip, ip, #4
6030f5ec:	e3540050 	cmp	r4, #80	; 0x50
6030f5f0:	e58dc000 	str	ip, [sp]
6030f5f4:	1a00004c 	bne	6030f72c <DiagSnPrintf+0x204>
6030f5f8:	e356000f 	cmp	r6, #15
6030f5fc:	c3a0c008 	movgt	ip, #8
6030f600:	c3a0a030 	movgt	sl, #48	; 0x30
6030f604:	ca00004d 	bgt	6030f740 <DiagSnPrintf+0x218>
6030f608:	e3a04000 	mov	r4, #0
6030f60c:	e3a0c008 	mov	ip, #8
6030f610:	e3a0a030 	mov	sl, #48	; 0x30
6030f614:	e24e2031 	sub	r2, lr, #49	; 0x31
6030f618:	e3520008 	cmp	r2, #8
6030f61c:	9a00006b 	bls	6030f7d0 <DiagSnPrintf+0x2a8>
6030f620:	e20e20d7 	and	r2, lr, #215	; 0xd7
6030f624:	e3520050 	cmp	r2, #80	; 0x50
6030f628:	1a000061 	bne	6030f7b4 <DiagSnPrintf+0x28c>
6030f62c:	e20e20df 	and	r2, lr, #223	; 0xdf
6030f630:	e3520050 	cmp	r2, #80	; 0x50
6030f634:	e20ee020 	and	lr, lr, #32
6030f638:	e1a08006 	mov	r8, r6
6030f63c:	128d2004 	addne	r2, sp, #4
6030f640:	1a000004 	bne	6030f658 <DiagSnPrintf+0x130>
6030f644:	e3a02030 	mov	r2, #48	; 0x30
6030f648:	e5cd2004 	strb	r2, [sp, #4]
6030f64c:	e38e2058 	orr	r2, lr, #88	; 0x58
6030f650:	e5cd2005 	strb	r2, [sp, #5]
6030f654:	e28d2006 	add	r2, sp, #6
6030f658:	e3560000 	cmp	r6, #0
6030f65c:	13a0b000 	movne	fp, #0
6030f660:	0a000090 	beq	6030f8a8 <DiagSnPrintf+0x380>
6030f664:	e28bb001 	add	fp, fp, #1
6030f668:	e1b08228 	lsrs	r8, r8, #4
6030f66c:	1afffffc 	bne	6030f664 <DiagSnPrintf+0x13c>
6030f670:	e15c000b 	cmp	ip, fp
6030f674:	da000089 	ble	6030f8a0 <DiagSnPrintf+0x378>
6030f678:	e04cc00b 	sub	ip, ip, fp
6030f67c:	e082c00c 	add	ip, r2, ip
6030f680:	e4c2a001 	strb	sl, [r2], #1
6030f684:	e15c0002 	cmp	ip, r2
6030f688:	1afffffc 	bne	6030f680 <DiagSnPrintf+0x158>
6030f68c:	e1e0af04 	mvn	sl, r4, lsl #30
6030f690:	e1a0b004 	mov	fp, r4
6030f694:	e1e0af2a 	mvn	sl, sl, lsr #30
6030f698:	e1a0800c 	mov	r8, ip
6030f69c:	e1a02456 	asr	r2, r6, r4
6030f6a0:	e202200f 	and	r2, r2, #15
6030f6a4:	e2444004 	sub	r4, r4, #4
6030f6a8:	e15a0004 	cmp	sl, r4
6030f6ac:	e7d72002 	ldrb	r2, [r7, r2]
6030f6b0:	e18e2002 	orr	r2, lr, r2
6030f6b4:	e4c82001 	strb	r2, [r8], #1
6030f6b8:	1afffff7 	bne	6030f69c <DiagSnPrintf+0x174>
6030f6bc:	e08cc12b 	add	ip, ip, fp, lsr #2
6030f6c0:	e28cc001 	add	ip, ip, #1
6030f6c4:	e28d2004 	add	r2, sp, #4
6030f6c8:	e15c0002 	cmp	ip, r2
6030f6cc:	9affffb5 	bls	6030f5a8 <DiagSnPrintf+0x80>
6030f6d0:	e5dde004 	ldrb	lr, [sp, #4]
6030f6d4:	e4c3e001 	strb	lr, [r3], #1
6030f6d8:	e1510003 	cmp	r1, r3
6030f6dc:	9a000073 	bls	6030f8b0 <DiagSnPrintf+0x388>
6030f6e0:	e28d2005 	add	r2, sp, #5
6030f6e4:	e1a0e002 	mov	lr, r2
6030f6e8:	e152000c 	cmp	r2, ip
6030f6ec:	2affffad 	bcs	6030f5a8 <DiagSnPrintf+0x80>
6030f6f0:	e5dee000 	ldrb	lr, [lr]
6030f6f4:	e4c3e001 	strb	lr, [r3], #1
6030f6f8:	e2822001 	add	r2, r2, #1
6030f6fc:	e1510003 	cmp	r1, r3
6030f700:	1afffff7 	bne	6030f6e4 <DiagSnPrintf+0x1bc>
6030f704:	e0410000 	sub	r0, r1, r0
6030f708:	e1a03001 	mov	r3, r1
6030f70c:	eaffff9e 	b	6030f58c <DiagSnPrintf+0x64>
6030f710:	e7d32006 	ldrb	r2, [r3, r6]
6030f714:	e3520000 	cmp	r2, #0
6030f718:	0affffa2 	beq	6030f5a8 <DiagSnPrintf+0x80>
6030f71c:	e4c32001 	strb	r2, [r3], #1
6030f720:	e1510003 	cmp	r1, r3
6030f724:	8afffff9 	bhi	6030f710 <DiagSnPrintf+0x1e8>
6030f728:	eaffff96 	b	6030f588 <DiagSnPrintf+0x60>
6030f72c:	e3a0c000 	mov	ip, #0
6030f730:	e356000f 	cmp	r6, #15
6030f734:	e3a0a020 	mov	sl, #32
6030f738:	d1a0400c 	movle	r4, ip
6030f73c:	da000017 	ble	6030f7a0 <DiagSnPrintf+0x278>
6030f740:	e2464010 	sub	r4, r6, #16
6030f744:	e35400ef 	cmp	r4, #239	; 0xef
6030f748:	93a04004 	movls	r4, #4
6030f74c:	9a000013 	bls	6030f7a0 <DiagSnPrintf+0x278>
6030f750:	e2464c01 	sub	r4, r6, #256	; 0x100
6030f754:	e3540c0f 	cmp	r4, #3840	; 0xf00
6030f758:	33a04008 	movcc	r4, #8
6030f75c:	3a00000f 	bcc	6030f7a0 <DiagSnPrintf+0x278>
6030f760:	e2464a01 	sub	r4, r6, #4096	; 0x1000
6030f764:	e3540a0f 	cmp	r4, #61440	; 0xf000
6030f768:	33a0400c 	movcc	r4, #12
6030f76c:	3a00000b 	bcc	6030f7a0 <DiagSnPrintf+0x278>
6030f770:	e2464801 	sub	r4, r6, #65536	; 0x10000
6030f774:	e354080f 	cmp	r4, #983040	; 0xf0000
6030f778:	33a04010 	movcc	r4, #16
6030f77c:	3a000007 	bcc	6030f7a0 <DiagSnPrintf+0x278>
6030f780:	e2464601 	sub	r4, r6, #1048576	; 0x100000
6030f784:	e354060f 	cmp	r4, #15728640	; 0xf00000
6030f788:	33a04014 	movcc	r4, #20
6030f78c:	3a000003 	bcc	6030f7a0 <DiagSnPrintf+0x278>
6030f790:	e28644ff 	add	r4, r6, #-16777216	; 0xff000000
6030f794:	e354040f 	cmp	r4, #251658240	; 0xf000000
6030f798:	33a04018 	movcc	r4, #24
6030f79c:	23a0401c 	movcs	r4, #28
6030f7a0:	e35e0030 	cmp	lr, #48	; 0x30
6030f7a4:	01a0a00e 	moveq	sl, lr
6030f7a8:	02825002 	addeq	r5, r2, #2
6030f7ac:	05d2e002 	ldrbeq	lr, [r2, #2]
6030f7b0:	eaffff97 	b	6030f614 <DiagSnPrintf+0xec>
6030f7b4:	e35e0064 	cmp	lr, #100	; 0x64
6030f7b8:	0a00000d 	beq	6030f7f4 <DiagSnPrintf+0x2cc>
6030f7bc:	e35e0063 	cmp	lr, #99	; 0x63
6030f7c0:	06efe076 	uxtbeq	lr, r6
6030f7c4:	e28dc005 	add	ip, sp, #5
6030f7c8:	e5cde004 	strb	lr, [sp, #4]
6030f7cc:	eaffffc0 	b	6030f6d4 <DiagSnPrintf+0x1ac>
6030f7d0:	e3a0c000 	mov	ip, #0
6030f7d4:	e3a0200a 	mov	r2, #10
6030f7d8:	e02cec92 	mla	ip, r2, ip, lr
6030f7dc:	e5f5e001 	ldrb	lr, [r5, #1]!
6030f7e0:	e24cc030 	sub	ip, ip, #48	; 0x30
6030f7e4:	e24e2030 	sub	r2, lr, #48	; 0x30
6030f7e8:	e3520009 	cmp	r2, #9
6030f7ec:	9afffff8 	bls	6030f7d4 <DiagSnPrintf+0x2ac>
6030f7f0:	eaffff8a 	b	6030f620 <DiagSnPrintf+0xf8>
6030f7f4:	e3560000 	cmp	r6, #0
6030f7f8:	b28d8005 	addlt	r8, sp, #5
6030f7fc:	a28d8004 	addge	r8, sp, #4
6030f800:	b2666000 	rsblt	r6, r6, #0
6030f804:	b3a0a001 	movlt	sl, #1
6030f808:	a3a0a000 	movge	sl, #0
6030f80c:	e1a0c008 	mov	ip, r8
6030f810:	b3a0202d 	movlt	r2, #45	; 0x2d
6030f814:	b5cd2004 	strblt	r2, [sp, #4]
6030f818:	e0ce2699 	smull	r2, lr, r9, r6
6030f81c:	e1a02fc6 	asr	r2, r6, #31
6030f820:	e062214e 	rsb	r2, r2, lr, asr #2
6030f824:	e3a0e00a 	mov	lr, #10
6030f828:	e06e629e 	mls	lr, lr, r2, r6
6030f82c:	e2526000 	subs	r6, r2, #0
6030f830:	e28e2030 	add	r2, lr, #48	; 0x30
6030f834:	e4cc2001 	strb	r2, [ip], #1
6030f838:	e08c200a 	add	r2, ip, sl
6030f83c:	e0422008 	sub	r2, r2, r8
6030f840:	1afffff4 	bne	6030f818 <DiagSnPrintf+0x2f0>
6030f844:	e1a0e002 	mov	lr, r2
6030f848:	e1e02124 	mvn	r2, r4, lsr #2
6030f84c:	e082200e 	add	r2, r2, lr
6030f850:	e1a0400c 	mov	r4, ip
6030f854:	e35e0000 	cmp	lr, #0
6030f858:	e24ee001 	sub	lr, lr, #1
6030f85c:	d3a0c030 	movle	ip, #48	; 0x30
6030f860:	d4c4c001 	strble	ip, [r4], #1
6030f864:	d1a0c004 	movle	ip, r4
6030f868:	e152000e 	cmp	r2, lr
6030f86c:	1afffff7 	bne	6030f850 <DiagSnPrintf+0x328>
6030f870:	e24c2001 	sub	r2, ip, #1
6030f874:	e1580002 	cmp	r8, r2
6030f878:	2affff91 	bcs	6030f6c4 <DiagSnPrintf+0x19c>
6030f87c:	e5d2e000 	ldrb	lr, [r2]
6030f880:	e5d84000 	ldrb	r4, [r8]
6030f884:	e4424001 	strb	r4, [r2], #-1
6030f888:	e4c8e001 	strb	lr, [r8], #1
6030f88c:	e1520008 	cmp	r2, r8
6030f890:	8afffff9 	bhi	6030f87c <DiagSnPrintf+0x354>
6030f894:	eaffff8a 	b	6030f6c4 <DiagSnPrintf+0x19c>
6030f898:	e1a0000c 	mov	r0, ip
6030f89c:	eaffff3a 	b	6030f58c <DiagSnPrintf+0x64>
6030f8a0:	e1a0c002 	mov	ip, r2
6030f8a4:	eaffff78 	b	6030f68c <DiagSnPrintf+0x164>
6030f8a8:	e1a0b006 	mov	fp, r6
6030f8ac:	eaffff6f 	b	6030f670 <DiagSnPrintf+0x148>
6030f8b0:	e1a01003 	mov	r1, r3
6030f8b4:	eaffff92 	b	6030f704 <DiagSnPrintf+0x1dc>

6030f8b8 <io_assert_failed>:
6030f8b8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
6030f8bc:	e1a0c000 	mov	ip, r0
6030f8c0:	e24dd00c 	sub	sp, sp, #12
6030f8c4:	e1a00001 	mov	r0, r1
6030f8c8:	e30537cc 	movw	r3, #22476	; 0x57cc
6030f8cc:	e3463031 	movt	r3, #24625	; 0x6031
6030f8d0:	e30415a4 	movw	r1, #17828	; 0x45a4
6030f8d4:	e3461031 	movt	r1, #24625	; 0x6031
6030f8d8:	e58d0004 	str	r0, [sp, #4]
6030f8dc:	e3a02045 	mov	r2, #69	; 0x45
6030f8e0:	e3a00002 	mov	r0, #2
6030f8e4:	e58dc000 	str	ip, [sp]
6030f8e8:	ebffee21 	bl	6030b174 <rtk_log_write_nano>
6030f8ec:	eafffffe 	b	6030f8ec <io_assert_failed+0x34>

6030f8f0 <SYSTIMER_TickGet>:
6030f8f0:	e3a00a0b 	mov	r0, #45056	; 0xb000
6030f8f4:	e3440200 	movt	r0, #16896	; 0x4200
6030f8f8:	e30f39d8 	movw	r3, #63960	; 0xf9d8
6030f8fc:	e3463030 	movt	r3, #24624	; 0x6030
6030f900:	e12fff13 	bx	r3

6030f904 <SYSTIMER_GetPassTick>:
6030f904:	e92d4010 	push	{r4, lr}
6030f908:	e30f39d8 	movw	r3, #63960	; 0xf9d8
6030f90c:	e3463030 	movt	r3, #24624	; 0x6030
6030f910:	e1a04000 	mov	r4, r0
6030f914:	e3a00a0b 	mov	r0, #45056	; 0xb000
6030f918:	e3440200 	movt	r0, #16896	; 0x4200
6030f91c:	e12fff33 	blx	r3
6030f920:	e1500004 	cmp	r0, r4
6030f924:	30444000 	subcc	r4, r4, r0
6030f928:	20400004 	subcs	r0, r0, r4
6030f92c:	31e00004 	mvncc	r0, r4
6030f930:	e8bd8010 	pop	{r4, pc}

6030f934 <SYSCFG_CHIPType_Get>:
6030f934:	e3a03902 	mov	r3, #32768	; 0x8000
6030f938:	e3443200 	movt	r3, #16896	; 0x4200
6030f93c:	e593027c 	ldr	r0, [r3, #636]	; 0x27c
6030f940:	e7e10450 	ubfx	r0, r0, #8, #2
6030f944:	e12fff1e 	bx	lr

6030f948 <SYSCFG_OTP_RSIPEn>:
6030f948:	e3a03442 	mov	r3, #1107296256	; 0x42000000
6030f94c:	e5932100 	ldr	r2, [r3, #256]	; 0x100
6030f950:	e5930368 	ldr	r0, [r3, #872]	; 0x368
6030f954:	e3120302 	tst	r2, #134217728	; 0x8000000
6030f958:	02200004 	eoreq	r0, r0, #4
6030f95c:	07e00150 	ubfxeq	r0, r0, #2, #1
6030f960:	13a00001 	movne	r0, #1
6030f964:	e12fff1e 	bx	lr

6030f968 <BKUP_Set>:
6030f968:	e3500003 	cmp	r0, #3
6030f96c:	8a000006 	bhi	6030f98c <BKUP_Set+0x24>
6030f970:	e1a00100 	lsl	r0, r0, #2
6030f974:	e2800442 	add	r0, r0, #1107296256	; 0x42000000
6030f978:	e2800902 	add	r0, r0, #32768	; 0x8000
6030f97c:	e59030e0 	ldr	r3, [r0, #224]	; 0xe0
6030f980:	e1831001 	orr	r1, r3, r1
6030f984:	e58010e0 	str	r1, [r0, #224]	; 0xe0
6030f988:	e12fff1e 	bx	lr
6030f98c:	e3050800 	movw	r0, #22528	; 0x5800
6030f990:	e3460031 	movt	r0, #24625	; 0x6031
6030f994:	e3a0103e 	mov	r1, #62	; 0x3e
6030f998:	e92d4010 	push	{r4, lr}
6030f99c:	ebffffc5 	bl	6030f8b8 <io_assert_failed>

6030f9a0 <BKUP_Clear>:
6030f9a0:	e3500003 	cmp	r0, #3
6030f9a4:	8a000006 	bhi	6030f9c4 <BKUP_Clear+0x24>
6030f9a8:	e1a00100 	lsl	r0, r0, #2
6030f9ac:	e2800442 	add	r0, r0, #1107296256	; 0x42000000
6030f9b0:	e2800902 	add	r0, r0, #32768	; 0x8000
6030f9b4:	e59030e0 	ldr	r3, [r0, #224]	; 0xe0
6030f9b8:	e1c31001 	bic	r1, r3, r1
6030f9bc:	e58010e0 	str	r1, [r0, #224]	; 0xe0
6030f9c0:	e12fff1e 	bx	lr
6030f9c4:	e3050800 	movw	r0, #22528	; 0x5800
6030f9c8:	e3460031 	movt	r0, #24625	; 0x6031
6030f9cc:	e3a0104e 	mov	r1, #78	; 0x4e
6030f9d0:	e92d4010 	push	{r4, lr}
6030f9d4:	ebffffb7 	bl	6030f8b8 <io_assert_failed>

6030f9d8 <RTIM_GetCount>:
6030f9d8:	e3a01a0b 	mov	r1, #45056	; 0xb000
6030f9dc:	e3441200 	movt	r1, #16896	; 0x4200
6030f9e0:	e3a02cb2 	mov	r2, #45568	; 0xb200
6030f9e4:	e3442200 	movt	r2, #16896	; 0x4200
6030f9e8:	e1a03000 	mov	r3, r0
6030f9ec:	e1500001 	cmp	r0, r1
6030f9f0:	11500002 	cmpne	r0, r2
6030f9f4:	0a00005f 	beq	6030fb78 <RTIM_GetCount+0x1a0>
6030f9f8:	e3a01b2d 	mov	r1, #46080	; 0xb400
6030f9fc:	e3441200 	movt	r1, #16896	; 0x4200
6030fa00:	e3a02cb6 	mov	r2, #46592	; 0xb600
6030fa04:	e3442200 	movt	r2, #16896	; 0x4200
6030fa08:	e1500001 	cmp	r0, r1
6030fa0c:	11500002 	cmpne	r0, r2
6030fa10:	0a000058 	beq	6030fb78 <RTIM_GetCount+0x1a0>
6030fa14:	e3a01b2e 	mov	r1, #47104	; 0xb800
6030fa18:	e3441200 	movt	r1, #16896	; 0x4200
6030fa1c:	e3a02cba 	mov	r2, #47616	; 0xba00
6030fa20:	e3442200 	movt	r2, #16896	; 0x4200
6030fa24:	e1500001 	cmp	r0, r1
6030fa28:	11500002 	cmpne	r0, r2
6030fa2c:	0a000051 	beq	6030fb78 <RTIM_GetCount+0x1a0>
6030fa30:	e3a01b2f 	mov	r1, #48128	; 0xbc00
6030fa34:	e3441200 	movt	r1, #16896	; 0x4200
6030fa38:	e3a02cbe 	mov	r2, #48640	; 0xbe00
6030fa3c:	e3442200 	movt	r2, #16896	; 0x4200
6030fa40:	e1500001 	cmp	r0, r1
6030fa44:	11500002 	cmpne	r0, r2
6030fa48:	0a00004a 	beq	6030fb78 <RTIM_GetCount+0x1a0>
6030fa4c:	e3a01a0a 	mov	r1, #40960	; 0xa000
6030fa50:	e3441100 	movt	r1, #16640	; 0x4100
6030fa54:	e3a02ca2 	mov	r2, #41472	; 0xa200
6030fa58:	e3442100 	movt	r2, #16640	; 0x4100
6030fa5c:	e1500001 	cmp	r0, r1
6030fa60:	11500002 	cmpne	r0, r2
6030fa64:	0a000043 	beq	6030fb78 <RTIM_GetCount+0x1a0>
6030fa68:	e3a01b29 	mov	r1, #41984	; 0xa400
6030fa6c:	e3441100 	movt	r1, #16640	; 0x4100
6030fa70:	e3a02ca6 	mov	r2, #42496	; 0xa600
6030fa74:	e3442100 	movt	r2, #16640	; 0x4100
6030fa78:	e1500001 	cmp	r0, r1
6030fa7c:	11500002 	cmpne	r0, r2
6030fa80:	0a00003c 	beq	6030fb78 <RTIM_GetCount+0x1a0>
6030fa84:	e3a01b2a 	mov	r1, #43008	; 0xa800
6030fa88:	e3441100 	movt	r1, #16640	; 0x4100
6030fa8c:	e3a02caa 	mov	r2, #43520	; 0xaa00
6030fa90:	e3442100 	movt	r2, #16640	; 0x4100
6030fa94:	e1500001 	cmp	r0, r1
6030fa98:	11500002 	cmpne	r0, r2
6030fa9c:	0a000035 	beq	6030fb78 <RTIM_GetCount+0x1a0>
6030faa0:	e3a01a0b 	mov	r1, #45056	; 0xb000
6030faa4:	e3451200 	movt	r1, #20992	; 0x5200
6030faa8:	e3a02cb2 	mov	r2, #45568	; 0xb200
6030faac:	e3452200 	movt	r2, #20992	; 0x5200
6030fab0:	e1500001 	cmp	r0, r1
6030fab4:	11500002 	cmpne	r0, r2
6030fab8:	0a00002e 	beq	6030fb78 <RTIM_GetCount+0x1a0>
6030fabc:	e3a01b2d 	mov	r1, #46080	; 0xb400
6030fac0:	e3451200 	movt	r1, #20992	; 0x5200
6030fac4:	e3a02cb6 	mov	r2, #46592	; 0xb600
6030fac8:	e3452200 	movt	r2, #20992	; 0x5200
6030facc:	e1500001 	cmp	r0, r1
6030fad0:	11500002 	cmpne	r0, r2
6030fad4:	0a000027 	beq	6030fb78 <RTIM_GetCount+0x1a0>
6030fad8:	e3a01b2e 	mov	r1, #47104	; 0xb800
6030fadc:	e3451200 	movt	r1, #20992	; 0x5200
6030fae0:	e3a02cba 	mov	r2, #47616	; 0xba00
6030fae4:	e3452200 	movt	r2, #20992	; 0x5200
6030fae8:	e1500001 	cmp	r0, r1
6030faec:	11500002 	cmpne	r0, r2
6030faf0:	0a000020 	beq	6030fb78 <RTIM_GetCount+0x1a0>
6030faf4:	e3a01b2f 	mov	r1, #48128	; 0xbc00
6030faf8:	e3451200 	movt	r1, #20992	; 0x5200
6030fafc:	e3a02cbe 	mov	r2, #48640	; 0xbe00
6030fb00:	e3452200 	movt	r2, #20992	; 0x5200
6030fb04:	e1500001 	cmp	r0, r1
6030fb08:	11500002 	cmpne	r0, r2
6030fb0c:	0a000019 	beq	6030fb78 <RTIM_GetCount+0x1a0>
6030fb10:	e3a01a0a 	mov	r1, #40960	; 0xa000
6030fb14:	e3451100 	movt	r1, #20736	; 0x5100
6030fb18:	e3a02ca2 	mov	r2, #41472	; 0xa200
6030fb1c:	e3452100 	movt	r2, #20736	; 0x5100
6030fb20:	e1500001 	cmp	r0, r1
6030fb24:	11500002 	cmpne	r0, r2
6030fb28:	0a000012 	beq	6030fb78 <RTIM_GetCount+0x1a0>
6030fb2c:	e3a01b29 	mov	r1, #41984	; 0xa400
6030fb30:	e3451100 	movt	r1, #20736	; 0x5100
6030fb34:	e3a02ca6 	mov	r2, #42496	; 0xa600
6030fb38:	e3452100 	movt	r2, #20736	; 0x5100
6030fb3c:	e1500001 	cmp	r0, r1
6030fb40:	11500002 	cmpne	r0, r2
6030fb44:	0a00000b 	beq	6030fb78 <RTIM_GetCount+0x1a0>
6030fb48:	e3a01b2a 	mov	r1, #43008	; 0xa800
6030fb4c:	e3451100 	movt	r1, #20736	; 0x5100
6030fb50:	e3a02caa 	mov	r2, #43520	; 0xaa00
6030fb54:	e3452100 	movt	r2, #20736	; 0x5100
6030fb58:	e1500001 	cmp	r0, r1
6030fb5c:	11500002 	cmpne	r0, r2
6030fb60:	0a000004 	beq	6030fb78 <RTIM_GetCount+0x1a0>
6030fb64:	e3050868 	movw	r0, #22632	; 0x5868
6030fb68:	e3460031 	movt	r0, #24625	; 0x6031
6030fb6c:	e3a010f1 	mov	r1, #241	; 0xf1
6030fb70:	e92d4010 	push	{r4, lr}
6030fb74:	ebffff4f 	bl	6030f8b8 <io_assert_failed>
6030fb78:	e5932014 	ldr	r2, [r3, #20]
6030fb7c:	e5930014 	ldr	r0, [r3, #20]
6030fb80:	e1520000 	cmp	r2, r0
6030fb84:	15930014 	ldrne	r0, [r3, #20]
6030fb88:	e12fff1e 	bx	lr

6030fb8c <pxPortInitialiseStack>:
6030fb8c:	e92d4010 	push	{r4, lr}
6030fb90:	e1a04000 	mov	r4, r0
6030fb94:	e1a03001 	mov	r3, r1
6030fb98:	e3130001 	tst	r3, #1
6030fb9c:	e3a01000 	mov	r1, #0
6030fba0:	e1a00002 	mov	r0, r2
6030fba4:	e5043010 	str	r3, [r4, #-16]
6030fba8:	03a0201f 	moveq	r2, #31
6030fbac:	13a0203f 	movne	r2, #63	; 0x3f
6030fbb0:	e5040048 	str	r0, [r4, #-72]	; 0xffffffb8
6030fbb4:	e504200c 	str	r2, [r4, #-12]
6030fbb8:	e2440f53 	sub	r0, r4, #332	; 0x14c
6030fbbc:	e3a02f41 	mov	r2, #260	; 0x104
6030fbc0:	e5841000 	str	r1, [r4]
6030fbc4:	e5041004 	str	r1, [r4, #-4]
6030fbc8:	e5041008 	str	r1, [r4, #-8]
6030fbcc:	e5041014 	str	r1, [r4, #-20]	; 0xffffffec
6030fbd0:	e3013212 	movw	r3, #4626	; 0x1212
6030fbd4:	e3413212 	movt	r3, #4626	; 0x1212
6030fbd8:	e5043018 	str	r3, [r4, #-24]	; 0xffffffe8
6030fbdc:	e3013111 	movw	r3, #4369	; 0x1111
6030fbe0:	e3413111 	movt	r3, #4369	; 0x1111
6030fbe4:	e504301c 	str	r3, [r4, #-28]	; 0xffffffe4
6030fbe8:	e3013010 	movw	r3, #4112	; 0x1010
6030fbec:	e3413010 	movt	r3, #4112	; 0x1010
6030fbf0:	e5043020 	str	r3, [r4, #-32]	; 0xffffffe0
6030fbf4:	e3003909 	movw	r3, #2313	; 0x909
6030fbf8:	e3403909 	movt	r3, #2313	; 0x909
6030fbfc:	e5043024 	str	r3, [r4, #-36]	; 0xffffffdc
6030fc00:	e3003808 	movw	r3, #2056	; 0x808
6030fc04:	e3403808 	movt	r3, #2056	; 0x808
6030fc08:	e5043028 	str	r3, [r4, #-40]	; 0xffffffd8
6030fc0c:	e3003707 	movw	r3, #1799	; 0x707
6030fc10:	e3403707 	movt	r3, #1799	; 0x707
6030fc14:	e504302c 	str	r3, [r4, #-44]	; 0xffffffd4
6030fc18:	e3003606 	movw	r3, #1542	; 0x606
6030fc1c:	e3403606 	movt	r3, #1542	; 0x606
6030fc20:	e5043030 	str	r3, [r4, #-48]	; 0xffffffd0
6030fc24:	e3003505 	movw	r3, #1285	; 0x505
6030fc28:	e3403505 	movt	r3, #1285	; 0x505
6030fc2c:	e5043034 	str	r3, [r4, #-52]	; 0xffffffcc
6030fc30:	e3003404 	movw	r3, #1028	; 0x404
6030fc34:	e3403404 	movt	r3, #1028	; 0x404
6030fc38:	e5043038 	str	r3, [r4, #-56]	; 0xffffffc8
6030fc3c:	e3003303 	movw	r3, #771	; 0x303
6030fc40:	e3403303 	movt	r3, #771	; 0x303
6030fc44:	e504303c 	str	r3, [r4, #-60]	; 0xffffffc4
6030fc48:	e3003202 	movw	r3, #514	; 0x202
6030fc4c:	e3403202 	movt	r3, #514	; 0x202
6030fc50:	e5043040 	str	r3, [r4, #-64]	; 0xffffffc0
6030fc54:	e3003101 	movw	r3, #257	; 0x101
6030fc58:	e3403101 	movt	r3, #257	; 0x101
6030fc5c:	e5043044 	str	r3, [r4, #-68]	; 0xffffffbc
6030fc60:	ebffc720 	bl	603018e8 <memset>
6030fc64:	e1a00004 	mov	r0, r4
6030fc68:	e3033d4c 	movw	r3, #15692	; 0x3d4c
6030fc6c:	e3463032 	movt	r3, #24626	; 0x6032
6030fc70:	e3a02001 	mov	r2, #1
6030fc74:	e5202150 	str	r2, [r0, #-336]!	; 0xfffffeb0
6030fc78:	e5832000 	str	r2, [r3]
6030fc7c:	e8bd8010 	pop	{r4, pc}

6030fc80 <xPortStartScheduler>:
6030fc80:	e10f3000 	mrs	r3, CPSR
6030fc84:	e203301f 	and	r3, r3, #31
6030fc88:	e3530010 	cmp	r3, #16
6030fc8c:	1a000001 	bne	6030fc98 <xPortStartScheduler+0x18>
6030fc90:	e3a00000 	mov	r0, #0
6030fc94:	e12fff1e 	bx	lr
6030fc98:	e92d4010 	push	{r4, lr}
6030fc9c:	f10c0080 	cpsid	i
6030fca0:	f57ff04f 	dsb	sy
6030fca4:	f57ff06f 	isb	sy
6030fca8:	ebffe41d 	bl	60308d24 <vConfigureIPIInterrupt>
6030fcac:	ebffe447 	bl	60308dd0 <vConfigureTickInterrupt>
6030fcb0:	ebffc255 	bl	6030060c <vPortRestoreTaskContext>
6030fcb4:	e3a00000 	mov	r0, #0
6030fcb8:	e8bd8010 	pop	{r4, pc}

6030fcbc <xPortSpinLockTask>:
6030fcbc:	e3a02001 	mov	r2, #1
6030fcc0:	e3033d00 	movw	r3, #15616	; 0x3d00
6030fcc4:	e3463032 	movt	r3, #24626	; 0x6032
6030fcc8:	e1931f9f 	ldrex	r1, [r3]
6030fccc:	e3510000 	cmp	r1, #0
6030fcd0:	1320f002 	wfene
6030fcd4:	01831f92 	strexeq	r1, r2, [r3]
6030fcd8:	03510000 	cmpeq	r1, #0
6030fcdc:	1afffff9 	bne	6030fcc8 <xPortSpinLockTask+0xc>
6030fce0:	f57ff05f 	dmb	sy
6030fce4:	e12fff1e 	bx	lr

6030fce8 <xPortSpinUnLockTask>:
6030fce8:	e3a02000 	mov	r2, #0
6030fcec:	e3033d00 	movw	r3, #15616	; 0x3d00
6030fcf0:	e3463032 	movt	r3, #24626	; 0x6032
6030fcf4:	f57ff05f 	dmb	sy
6030fcf8:	e5832000 	str	r2, [r3]
6030fcfc:	f57ff04f 	dsb	sy
6030fd00:	e320f004 	sev
6030fd04:	e12fff1e 	bx	lr

6030fd08 <FreeRTOS_Tick_Handler>:
6030fd08:	e92d4010 	push	{r4, lr}
6030fd0c:	ee103fb0 	mrc	15, 0, r3, cr0, cr0, {5}
6030fd10:	e6ef3073 	uxtb	r3, r3
6030fd14:	e3530000 	cmp	r3, #0
6030fd18:	13a04001 	movne	r4, #1
6030fd1c:	03a04000 	moveq	r4, #0
6030fd20:	1a000005 	bne	6030fd3c <FreeRTOS_Tick_Handler+0x34>
6030fd24:	eb00063b 	bl	60311618 <xTaskIncrementTick>
6030fd28:	e3033d50 	movw	r3, #15696	; 0x3d50
6030fd2c:	e3463032 	movt	r3, #24626	; 0x6032
6030fd30:	e7830104 	str	r0, [r3, r4, lsl #2]
6030fd34:	e8bd4010 	pop	{r4, lr}
6030fd38:	eaffe43f 	b	60308e3c <vClearTickInterrupt>
6030fd3c:	eb0001f4 	bl	60310514 <xTaskGetCurrentYieldPending>
6030fd40:	e3033d50 	movw	r3, #15696	; 0x3d50
6030fd44:	e3463032 	movt	r3, #24626	; 0x6032
6030fd48:	e7830104 	str	r0, [r3, r4, lsl #2]
6030fd4c:	e8bd4010 	pop	{r4, lr}
6030fd50:	eaffe439 	b	60308e3c <vClearTickInterrupt>

6030fd54 <ulPortInterruptLock>:
6030fd54:	e10f0000 	mrs	r0, CPSR
6030fd58:	f10c0080 	cpsid	i
6030fd5c:	f57ff04f 	dsb	sy
6030fd60:	f57ff06f 	isb	sy
6030fd64:	e12fff1e 	bx	lr

6030fd68 <ulPortInterruptUnLock>:
6030fd68:	e121f000 	msr	CPSR_c, r0
6030fd6c:	e12fff1e 	bx	lr

6030fd70 <xPortCpuIsInInterrupt>:
6030fd70:	e10f3000 	mrs	r3, CPSR
6030fd74:	e203301f 	and	r3, r3, #31
6030fd78:	e3530010 	cmp	r3, #16
6030fd7c:	0a000004 	beq	6030fd94 <xPortCpuIsInInterrupt+0x24>
6030fd80:	e10f0000 	mrs	r0, CPSR
6030fd84:	e200001f 	and	r0, r0, #31
6030fd88:	e250001f 	subs	r0, r0, #31
6030fd8c:	13a00001 	movne	r0, #1
6030fd90:	e12fff1e 	bx	lr
6030fd94:	e3a00000 	mov	r0, #0
6030fd98:	e12fff1e 	bx	lr

6030fd9c <FreeRTOS_IPI_Handler>:
6030fd9c:	ee103fb0 	mrc	15, 0, r3, cr0, cr0, {5}
6030fda0:	e6ef3073 	uxtb	r3, r3
6030fda4:	e2533000 	subs	r3, r3, #0
6030fda8:	13a03001 	movne	r3, #1
6030fdac:	e3032d50 	movw	r2, #15696	; 0x3d50
6030fdb0:	e3462032 	movt	r2, #24626	; 0x6032
6030fdb4:	e3a01001 	mov	r1, #1
6030fdb8:	e7821103 	str	r1, [r2, r3, lsl #2]
6030fdbc:	e12fff1e 	bx	lr

6030fdc0 <ulPortGetCoreId>:
6030fdc0:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
6030fdc4:	e6ef0070 	uxtb	r0, r0
6030fdc8:	e2500000 	subs	r0, r0, #0
6030fdcc:	13a00001 	movne	r0, #1
6030fdd0:	e12fff1e 	bx	lr

6030fdd4 <FreeRTOS_IPI_CPUHP_Handler>:
6030fdd4:	ee103fb0 	mrc	15, 0, r3, cr0, cr0, {5}
6030fdd8:	e6ef3073 	uxtb	r3, r3
6030fddc:	e2533000 	subs	r3, r3, #0
6030fde0:	13a03001 	movne	r3, #1
6030fde4:	e3032d50 	movw	r2, #15696	; 0x3d50
6030fde8:	e3462032 	movt	r2, #24626	; 0x6032
6030fdec:	e3a01001 	mov	r1, #1
6030fdf0:	e7821103 	str	r1, [r2, r3, lsl #2]
6030fdf4:	e12fff1e 	bx	lr

6030fdf8 <vPortYieldOtherCore>:
6030fdf8:	eaffe3ec 	b	60308db0 <vConfigureSMPSendIPI>

6030fdfc <vApplicationMallocFailedHook>:
6030fdfc:	e92d4010 	push	{r4, lr}
6030fe00:	e24dd010 	sub	sp, sp, #16
6030fe04:	eb0003e6 	bl	60310da4 <xTaskGetSchedulerState>
6030fe08:	e3500001 	cmp	r0, #1
6030fe0c:	030548d0 	movweq	r4, #22736	; 0x58d0
6030fe10:	03464031 	movteq	r4, #24625	; 0x6031
6030fe14:	0a000002 	beq	6030fe24 <vApplicationMallocFailedHook+0x28>
6030fe18:	e3a00000 	mov	r0, #0
6030fe1c:	eb0001d0 	bl	60310564 <pcTaskGetName>
6030fe20:	e1a04000 	mov	r4, r0
6030fe24:	eb000ecc 	bl	6031395c <xPortGetFreeHeapSize>
6030fe28:	e3a02045 	mov	r2, #69	; 0x45
6030fe2c:	e1a03000 	mov	r3, r0
6030fe30:	e58d4004 	str	r4, [sp, #4]
6030fe34:	e58d3008 	str	r3, [sp, #8]
6030fe38:	e3a00002 	mov	r0, #2
6030fe3c:	e3051794 	movw	r1, #22420	; 0x5794
6030fe40:	e3461031 	movt	r1, #24625	; 0x6031
6030fe44:	e30538d8 	movw	r3, #22744	; 0x58d8
6030fe48:	e3463031 	movt	r3, #24625	; 0x6031
6030fe4c:	e58d1000 	str	r1, [sp]
6030fe50:	e30415a4 	movw	r1, #17828	; 0x45a4
6030fe54:	e3461031 	movt	r1, #24625	; 0x6031
6030fe58:	ebffecc5 	bl	6030b174 <rtk_log_write_nano>
6030fe5c:	e10f3000 	mrs	r3, CPSR
6030fe60:	f10c0080 	cpsid	i
6030fe64:	f57ff04f 	dsb	sy
6030fe68:	f57ff06f 	isb	sy
6030fe6c:	eafffffe 	b	6030fe6c <vApplicationMallocFailedHook+0x70>

6030fe70 <vApplicationStackOverflowHook>:
6030fe70:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
6030fe74:	e3a02045 	mov	r2, #69	; 0x45
6030fe78:	e24dd00c 	sub	sp, sp, #12
6030fe7c:	e3a00002 	mov	r0, #2
6030fe80:	e3053914 	movw	r3, #22804	; 0x5914
6030fe84:	e3463031 	movt	r3, #24625	; 0x6031
6030fe88:	e58d1000 	str	r1, [sp]
6030fe8c:	e30415a4 	movw	r1, #17828	; 0x45a4
6030fe90:	e3461031 	movt	r1, #24625	; 0x6031
6030fe94:	ebffecb6 	bl	6030b174 <rtk_log_write_nano>
6030fe98:	e10f3000 	mrs	r3, CPSR
6030fe9c:	f10c0080 	cpsid	i
6030fea0:	f57ff04f 	dsb	sy
6030fea4:	f57ff06f 	isb	sy
6030fea8:	eafffffe 	b	6030fea8 <vApplicationStackOverflowHook+0x38>

6030feac <vApplicationGetIdleTaskMemory>:
6030feac:	e3a0cb01 	mov	ip, #1024	; 0x400
6030feb0:	e3073d58 	movw	r3, #32088	; 0x7d58
6030feb4:	e3463032 	movt	r3, #24626	; 0x6032
6030feb8:	e5803000 	str	r3, [r0]
6030febc:	e3033d58 	movw	r3, #15704	; 0x3d58
6030fec0:	e3463032 	movt	r3, #24626	; 0x6032
6030fec4:	e5813000 	str	r3, [r1]
6030fec8:	e582c000 	str	ip, [r2]
6030fecc:	e12fff1e 	bx	lr

6030fed0 <vApplicationGetPassiveIdleTaskMemory>:
6030fed0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
6030fed4:	e307ced0 	movw	ip, #32464	; 0x7ed0
6030fed8:	e346c032 	movt	ip, #24626	; 0x6032
6030fedc:	e3a0ef5e 	mov	lr, #376	; 0x178
6030fee0:	e02cc39e 	mla	ip, lr, r3, ip
6030fee4:	e580c000 	str	ip, [r0]
6030fee8:	e3040d58 	movw	r0, #19800	; 0x4d58
6030feec:	e3460032 	movt	r0, #24626	; 0x6032
6030fef0:	e0800603 	add	r0, r0, r3, lsl #12
6030fef4:	e3a03b01 	mov	r3, #1024	; 0x400
6030fef8:	e5810000 	str	r0, [r1]
6030fefc:	e1c230b0 	strh	r3, [r2]
6030ff00:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

6030ff04 <vApplicationGetTimerTaskMemory>:
6030ff04:	e3a0cb02 	mov	ip, #2048	; 0x800
6030ff08:	e3083048 	movw	r3, #32840	; 0x8048
6030ff0c:	e3463032 	movt	r3, #24626	; 0x6032
6030ff10:	e5803000 	str	r3, [r0]
6030ff14:	e3053d58 	movw	r3, #23896	; 0x5d58
6030ff18:	e3463032 	movt	r3, #24626	; 0x6032
6030ff1c:	e5813000 	str	r3, [r1]
6030ff20:	e582c000 	str	ip, [r2]
6030ff24:	e12fff1e 	bx	lr

6030ff28 <pmu_post_sleep_processing>:
6030ff28:	e92d4010 	push	{r4, lr}
6030ff2c:	e30f3904 	movw	r3, #63748	; 0xf904
6030ff30:	e3463030 	movt	r3, #24624	; 0x6030
6030ff34:	e24dd008 	sub	sp, sp, #8
6030ff38:	e5900000 	ldr	r0, [r0]
6030ff3c:	e3a04000 	mov	r4, #0
6030ff40:	e58d4004 	str	r4, [sp, #4]
6030ff44:	e12fff33 	blx	r3
6030ff48:	e3032cf4 	movw	r2, #15604	; 0x3cf4
6030ff4c:	e3462032 	movt	r2, #24626	; 0x6032
6030ff50:	e3a03ffa 	mov	r3, #1000	; 0x3e8
6030ff54:	e5921000 	ldr	r1, [r2]
6030ff58:	e0800001 	add	r0, r0, r1
6030ff5c:	e200101f 	and	r1, r0, #31
6030ff60:	e5821000 	str	r1, [r2]
6030ff64:	e0830390 	umull	r0, r3, r0, r3
6030ff68:	e1a007a0 	lsr	r0, r0, #15
6030ff6c:	e1800883 	orr	r0, r0, r3, lsl #17
6030ff70:	e58d0004 	str	r0, [sp, #4]
6030ff74:	e59d0004 	ldr	r0, [sp, #4]
6030ff78:	eb000189 	bl	603105a4 <vTaskStepTick>
6030ff7c:	e30336e8 	movw	r3, #14056	; 0x36e8
6030ff80:	e3463032 	movt	r3, #24626	; 0x6032
6030ff84:	e3a00002 	mov	r0, #2
6030ff88:	e5834000 	str	r4, [r3]
6030ff8c:	e28dd008 	add	sp, sp, #8
6030ff90:	e8bd4010 	pop	{r4, lr}
6030ff94:	eaffe67b 	b	60309988 <pmu_set_sysactive_time>

6030ff98 <vPortSuppressTicksAndSleep>:
6030ff98:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
6030ff9c:	e24dd008 	sub	sp, sp, #8
6030ffa0:	ee103fb0 	mrc	15, 0, r3, cr0, cr0, {5}
6030ffa4:	e21340ff 	ands	r4, r3, #255	; 0xff
6030ffa8:	0a000014 	beq	60310000 <vPortSuppressTicksAndSleep+0x68>
6030ffac:	ee103fb0 	mrc	15, 0, r3, cr0, cr0, {5}
6030ffb0:	e6ef3073 	uxtb	r3, r3
6030ffb4:	e3530000 	cmp	r3, #0
6030ffb8:	1a000001 	bne	6030ffc4 <vPortSuppressTicksAndSleep+0x2c>
6030ffbc:	e28dd008 	add	sp, sp, #8
6030ffc0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
6030ffc4:	ebffe697 	bl	60309a28 <pmu_ready_to_sleep>
6030ffc8:	e3500000 	cmp	r0, #0
6030ffcc:	1a000037 	bne	603100b0 <vPortSuppressTicksAndSleep+0x118>
6030ffd0:	e10f3000 	mrs	r3, CPSR
6030ffd4:	f10c0080 	cpsid	i
6030ffd8:	f57ff04f 	dsb	sy
6030ffdc:	f57ff06f 	isb	sy
6030ffe0:	f57ff04f 	dsb	sy
6030ffe4:	e320f003 	wfi
6030ffe8:	f57ff06f 	isb	sy
6030ffec:	f1080080 	cpsie	i
6030fff0:	f57ff04f 	dsb	sy
6030fff4:	f57ff06f 	isb	sy
6030fff8:	e28dd008 	add	sp, sp, #8
6030fffc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60310000:	e1a05000 	mov	r5, r0
60310004:	e10f3000 	mrs	r3, CPSR
60310008:	f10c0080 	cpsid	i
6031000c:	f57ff04f 	dsb	sy
60310010:	f57ff06f 	isb	sy
60310014:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
60310018:	e3833002 	orr	r3, r3, #2
6031001c:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
60310020:	e3066264 	movw	r6, #25188	; 0x6264
60310024:	e3466031 	movt	r6, #24625	; 0x6031
60310028:	e3a08001 	mov	r8, #1
6031002c:	e3037d00 	movw	r7, #15616	; 0x3d00
60310030:	e3467032 	movt	r7, #24626	; 0x6032
60310034:	e5864000 	str	r4, [r6]
60310038:	e1973f9f 	ldrex	r3, [r7]
6031003c:	e3530000 	cmp	r3, #0
60310040:	1320f002 	wfene
60310044:	01873f98 	strexeq	r3, r8, [r7]
60310048:	03530000 	cmpeq	r3, #0
6031004c:	1afffff9 	bne	60310038 <vPortSuppressTicksAndSleep+0xa0>
60310050:	f57ff05f 	dmb	sy
60310054:	eb000332 	bl	60310d24 <eTaskConfirmSleepModeStatus>
60310058:	f57ff05f 	dmb	sy
6031005c:	e5874000 	str	r4, [r7]
60310060:	f57ff04f 	dsb	sy
60310064:	e320f004 	sev
60310068:	e3500000 	cmp	r0, #0
6031006c:	1a00001e 	bne	603100ec <vPortSuppressTicksAndSleep+0x154>
60310070:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
60310074:	e3c33002 	bic	r3, r3, #2
60310078:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
6031007c:	e3a03c02 	mov	r3, #512	; 0x200
60310080:	e3443100 	movt	r3, #16640	; 0x4100
60310084:	e5933008 	ldr	r3, [r3, #8]
60310088:	e3130802 	tst	r3, #131072	; 0x20000
6031008c:	0a000000 	beq	60310094 <vPortSuppressTicksAndSleep+0xfc>
60310090:	e320f004 	sev
60310094:	e3a03001 	mov	r3, #1
60310098:	e5863000 	str	r3, [r6]
6031009c:	f1080080 	cpsie	i
603100a0:	f57ff04f 	dsb	sy
603100a4:	f57ff06f 	isb	sy
603100a8:	e28dd008 	add	sp, sp, #8
603100ac:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
603100b0:	ebffe6c2 	bl	60309bc0 <pmu_get_sleep_type>
603100b4:	e3500000 	cmp	r0, #0
603100b8:	0a000015 	beq	60310114 <vPortSuppressTicksAndSleep+0x17c>
603100bc:	e10f3000 	mrs	r3, CPSR
603100c0:	f10c0080 	cpsid	i
603100c4:	f57ff04f 	dsb	sy
603100c8:	f57ff06f 	isb	sy
603100cc:	f57ff04f 	dsb	sy
603100d0:	e320f002 	wfe
603100d4:	e320f002 	wfe
603100d8:	f57ff06f 	isb	sy
603100dc:	f1080080 	cpsie	i
603100e0:	f57ff04f 	dsb	sy
603100e4:	f57ff06f 	isb	sy
603100e8:	eaffffb3 	b	6030ffbc <vPortSuppressTicksAndSleep+0x24>
603100ec:	ebffe64d 	bl	60309a28 <pmu_ready_to_sleep>
603100f0:	e3500000 	cmp	r0, #0
603100f4:	1a00000b 	bne	60310128 <vPortSuppressTicksAndSleep+0x190>
603100f8:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
603100fc:	e3c33002 	bic	r3, r3, #2
60310100:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
60310104:	f57ff04f 	dsb	sy
60310108:	e320f003 	wfi
6031010c:	f57ff06f 	isb	sy
60310110:	eaffffd9 	b	6031007c <vPortSuppressTicksAndSleep+0xe4>
60310114:	e3a01001 	mov	r1, #1
60310118:	e1a00001 	mov	r0, r1
6031011c:	ebffe6b6 	bl	60309bfc <pmu_set_secondary_cpu_state>
60310120:	ef000000 	svc	0x00000000
60310124:	eaffffa4 	b	6030ffbc <vPortSuppressTicksAndSleep+0x24>
60310128:	e58d5004 	str	r5, [sp, #4]
6031012c:	ebffe6a3 	bl	60309bc0 <pmu_get_sleep_type>
60310130:	e3500000 	cmp	r0, #0
60310134:	0a000019 	beq	603101a0 <vPortSuppressTicksAndSleep+0x208>
60310138:	e3a03c02 	mov	r3, #512	; 0x200
6031013c:	e3443100 	movt	r3, #16640	; 0x4100
60310140:	e5933008 	ldr	r3, [r3, #8]
60310144:	e3130802 	tst	r3, #131072	; 0x20000
60310148:	0affffcb 	beq	6031007c <vPortSuppressTicksAndSleep+0xe4>
6031014c:	e28d0004 	add	r0, sp, #4
60310150:	ebffe64b 	bl	60309a84 <pmu_pre_sleep_processing>
60310154:	ebffe699 	bl	60309bc0 <pmu_get_sleep_type>
60310158:	e3500000 	cmp	r0, #0
6031015c:	1a000009 	bne	60310188 <vPortSuppressTicksAndSleep+0x1f0>
60310160:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
60310164:	e3130001 	tst	r3, #1
60310168:	1a000001 	bne	60310174 <vPortSuppressTicksAndSleep+0x1dc>
6031016c:	e3a03001 	mov	r3, #1
60310170:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
60310174:	ec510f1e 	mrrc	15, 1, r0, r1, cr14
60310178:	e30cc350 	movw	ip, #50000	; 0xc350
6031017c:	e09c2000 	adds	r2, ip, r0
60310180:	e2a13000 	adc	r3, r1, #0
60310184:	ec432f3e 	mcrr	15, 3, r2, r3, cr14
60310188:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
6031018c:	e3c33002 	bic	r3, r3, #2
60310190:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
60310194:	e28d0004 	add	r0, sp, #4
60310198:	ebffff62 	bl	6030ff28 <pmu_post_sleep_processing>
6031019c:	eaffffb6 	b	6031007c <vPortSuppressTicksAndSleep+0xe4>
603101a0:	e1a00008 	mov	r0, r8
603101a4:	ebffe698 	bl	60309c0c <pmu_get_secondary_cpu_state>
603101a8:	e3500002 	cmp	r0, #2
603101ac:	0affffb2 	beq	6031007c <vPortSuppressTicksAndSleep+0xe4>
603101b0:	e1a00008 	mov	r0, r8
603101b4:	ebffe694 	bl	60309c0c <pmu_get_secondary_cpu_state>
603101b8:	e2501000 	subs	r1, r0, #0
603101bc:	1affffe2 	bne	6031014c <vPortSuppressTicksAndSleep+0x1b4>
603101c0:	f1080080 	cpsie	i
603101c4:	f57ff04f 	dsb	sy
603101c8:	f57ff06f 	isb	sy
603101cc:	e1a00008 	mov	r0, r8
603101d0:	ebffe218 	bl	60308a38 <arm_gic_raise_softirq>
603101d4:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
603101d8:	e3c33002 	bic	r3, r3, #2
603101dc:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
603101e0:	e3a00064 	mov	r0, #100	; 0x64
603101e4:	e3093790 	movw	r3, #38800	; 0x9790
603101e8:	e3463030 	movt	r3, #24624	; 0x6030
603101ec:	e12fff33 	blx	r3
603101f0:	eaffffa1 	b	6031007c <vPortSuppressTicksAndSleep+0xe4>

603101f4 <vPortCleanUpTCB>:
603101f4:	e12fff1e 	bx	lr

603101f8 <prvYieldCore>:
603101f8:	e92d4010 	push	{r4, lr}
603101fc:	e1a04000 	mov	r4, r0
60310200:	ebfffeee 	bl	6030fdc0 <ulPortGetCoreId>
60310204:	e1500004 	cmp	r0, r4
60310208:	1a00000a 	bne	60310238 <prvYieldCore+0x40>
6031020c:	e30831c4 	movw	r3, #33220	; 0x81c4
60310210:	e3463032 	movt	r3, #24626	; 0x6032
60310214:	e7933100 	ldr	r3, [r3, r0, lsl #2]
60310218:	e5933058 	ldr	r3, [r3, #88]	; 0x58
6031021c:	e3530000 	cmp	r3, #0
60310220:	0a000007 	beq	60310244 <prvYieldCore+0x4c>
60310224:	e308336c 	movw	r3, #33644	; 0x836c
60310228:	e3463032 	movt	r3, #24626	; 0x6032
6031022c:	e3a02001 	mov	r2, #1
60310230:	e7832104 	str	r2, [r3, r4, lsl #2]
60310234:	e8bd8010 	pop	{r4, pc}
60310238:	e1a00004 	mov	r0, r4
6031023c:	e8bd4010 	pop	{r4, lr}
60310240:	eafffeec 	b	6030fdf8 <vPortYieldOtherCore>
60310244:	ebfffec9 	bl	6030fd70 <xPortCpuIsInInterrupt>
60310248:	e3500000 	cmp	r0, #0
6031024c:	1afffff4 	bne	60310224 <prvYieldCore+0x2c>
60310250:	ef000000 	svc	0x00000000
60310254:	e8bd8010 	pop	{r4, pc}

60310258 <prvInitialiseNewTask.constprop.0>:
60310258:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
6031025c:	e59d4028 	ldr	r4, [sp, #40]	; 0x28
60310260:	e1a09102 	lsl	r9, r2, #2
60310264:	e1a0a001 	mov	sl, r1
60310268:	e1a02009 	mov	r2, r9
6031026c:	e1a06000 	mov	r6, r0
60310270:	e3a010a5 	mov	r1, #165	; 0xa5
60310274:	e5940030 	ldr	r0, [r4, #48]	; 0x30
60310278:	e59d5020 	ldr	r5, [sp, #32]
6031027c:	e59d8024 	ldr	r8, [sp, #36]	; 0x24
60310280:	e1a07003 	mov	r7, r3
60310284:	ebffc597 	bl	603018e8 <memset>
60310288:	e5942030 	ldr	r2, [r4, #48]	; 0x30
6031028c:	e2499004 	sub	r9, r9, #4
60310290:	e0829009 	add	r9, r2, r9
60310294:	e35a0000 	cmp	sl, #0
60310298:	e3c9903f 	bic	r9, r9, #63	; 0x3f
6031029c:	05c4a03c 	strbeq	sl, [r4, #60]	; 0x3c
603102a0:	e5849054 	str	r9, [r4, #84]	; 0x54
603102a4:	0a00000b 	beq	603102d8 <prvInitialiseNewTask.constprop.0+0x80>
603102a8:	e24ac001 	sub	ip, sl, #1
603102ac:	e28a3017 	add	r3, sl, #23
603102b0:	e284103b 	add	r1, r4, #59	; 0x3b
603102b4:	ea000001 	b	603102c0 <prvInitialiseNewTask.constprop.0+0x68>
603102b8:	e15c0003 	cmp	ip, r3
603102bc:	0a000003 	beq	603102d0 <prvInitialiseNewTask.constprop.0+0x78>
603102c0:	e5fce001 	ldrb	lr, [ip, #1]!
603102c4:	e5e1e001 	strb	lr, [r1, #1]!
603102c8:	e35e0000 	cmp	lr, #0
603102cc:	1afffff9 	bne	603102b8 <prvInitialiseNewTask.constprop.0+0x60>
603102d0:	e3a03000 	mov	r3, #0
603102d4:	e5c43053 	strb	r3, [r4, #83]	; 0x53
603102d8:	e355000a 	cmp	r5, #10
603102dc:	e3a0a000 	mov	sl, #0
603102e0:	23a0500a 	movcs	r5, #10
603102e4:	e2840004 	add	r0, r4, #4
603102e8:	e584502c 	str	r5, [r4, #44]	; 0x2c
603102ec:	e5845064 	str	r5, [r4, #100]	; 0x64
603102f0:	e584a068 	str	sl, [r4, #104]	; 0x68
603102f4:	eb000856 	bl	60312454 <vListInitialiseItem>
603102f8:	e2840018 	add	r0, r4, #24
603102fc:	eb000854 	bl	60312454 <vListInitialiseItem>
60310300:	e265500b 	rsb	r5, r5, #11
60310304:	e3a020f0 	mov	r2, #240	; 0xf0
60310308:	e1a0100a 	mov	r1, sl
6031030c:	e584a16c 	str	sl, [r4, #364]	; 0x16c
60310310:	e284007c 	add	r0, r4, #124	; 0x7c
60310314:	e5845018 	str	r5, [r4, #24]
60310318:	e5844010 	str	r4, [r4, #16]
6031031c:	e5844024 	str	r4, [r4, #36]	; 0x24
60310320:	e584a058 	str	sl, [r4, #88]	; 0x58
60310324:	e584a06c 	str	sl, [r4, #108]	; 0x6c
60310328:	e584a078 	str	sl, [r4, #120]	; 0x78
6031032c:	e584a070 	str	sl, [r4, #112]	; 0x70
60310330:	e584a074 	str	sl, [r4, #116]	; 0x74
60310334:	e5c4a170 	strb	sl, [r4, #368]	; 0x170
60310338:	ebffc56a 	bl	603018e8 <memset>
6031033c:	e303301c 	movw	r3, #12316	; 0x301c
60310340:	e3463032 	movt	r3, #24626	; 0x6032
60310344:	e2831068 	add	r1, r3, #104	; 0x68
60310348:	e5843080 	str	r3, [r4, #128]	; 0x80
6031034c:	e5841084 	str	r1, [r4, #132]	; 0x84
60310350:	e28330d0 	add	r3, r3, #208	; 0xd0
60310354:	e1a01006 	mov	r1, r6
60310358:	e5843088 	str	r3, [r4, #136]	; 0x88
6031035c:	e1a02007 	mov	r2, r7
60310360:	e1a00009 	mov	r0, r9
60310364:	e5c4a172 	strb	sl, [r4, #370]	; 0x172
60310368:	ebfffe07 	bl	6030fb8c <pxPortInitialiseStack>
6031036c:	e3023174 	movw	r3, #8564	; 0x2174
60310370:	e3463031 	movt	r3, #24625	; 0x6031
60310374:	e0466003 	sub	r6, r6, r3
60310378:	e16f6f16 	clz	r6, r6
6031037c:	e158000a 	cmp	r8, sl
60310380:	e1a062a6 	lsr	r6, r6, #5
60310384:	e3e03000 	mvn	r3, #0
60310388:	e5840000 	str	r0, [r4]
6031038c:	e5843034 	str	r3, [r4, #52]	; 0x34
60310390:	e5846038 	str	r6, [r4, #56]	; 0x38
60310394:	15884000 	strne	r4, [r8]
60310398:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

6031039c <prvYieldForTask.isra.0>:
6031039c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
603103a0:	e1a06000 	mov	r6, r0
603103a4:	e1a05002 	mov	r5, r2
603103a8:	e1a04001 	mov	r4, r1
603103ac:	ebfffe83 	bl	6030fdc0 <ulPortGetCoreId>
603103b0:	e596602c 	ldr	r6, [r6, #44]	; 0x2c
603103b4:	e3550000 	cmp	r5, #0
603103b8:	e2241001 	eor	r1, r4, #1
603103bc:	e3a0c000 	mov	ip, #0
603103c0:	e30821c4 	movw	r2, #33220	; 0x81c4
603103c4:	e3462032 	movt	r2, #24626	; 0x6032
603103c8:	e308536c 	movw	r5, #33644	; 0x836c
603103cc:	e3465032 	movt	r5, #24626	; 0x6032
603103d0:	12866001 	addne	r6, r6, #1
603103d4:	e2011001 	and	r1, r1, #1
603103d8:	e1a0300c 	mov	r3, ip
603103dc:	e1a0e000 	mov	lr, r0
603103e0:	e3e00000 	mvn	r0, #0
603103e4:	e15e0003 	cmp	lr, r3
603103e8:	13a04000 	movne	r4, #0
603103ec:	02014001 	andeq	r4, r1, #1
603103f0:	e3540000 	cmp	r4, #0
603103f4:	1a000013 	bne	60310448 <prvYieldForTask.isra.0+0xac>
603103f8:	e7924103 	ldr	r4, [r2, r3, lsl #2]
603103fc:	e5944038 	ldr	r4, [r4, #56]	; 0x38
60310400:	e3540000 	cmp	r4, #0
60310404:	1a00001a 	bne	60310474 <prvYieldForTask.isra.0+0xd8>
60310408:	e7927103 	ldr	r7, [r2, r3, lsl #2]
6031040c:	e7924103 	ldr	r4, [r2, r3, lsl #2]
60310410:	e5944034 	ldr	r4, [r4, #52]	; 0x34
60310414:	e3540001 	cmp	r4, #1
60310418:	8a00000a 	bhi	60310448 <prvYieldForTask.isra.0+0xac>
6031041c:	e597402c 	ldr	r4, [r7, #44]	; 0x2c
60310420:	e7958103 	ldr	r8, [r5, r3, lsl #2]
60310424:	e1540006 	cmp	r4, r6
60310428:	a3a07000 	movge	r7, #0
6031042c:	b3a07001 	movlt	r7, #1
60310430:	e3580000 	cmp	r8, #0
60310434:	13a07000 	movne	r7, #0
60310438:	e3570000 	cmp	r7, #0
6031043c:	128cc001 	addne	ip, ip, #1
60310440:	11a06004 	movne	r6, r4
60310444:	11a00003 	movne	r0, r3
60310448:	e3530001 	cmp	r3, #1
6031044c:	e3a03001 	mov	r3, #1
60310450:	1affffe3 	bne	603103e4 <prvYieldForTask.isra.0+0x48>
60310454:	e25cc000 	subs	ip, ip, #0
60310458:	13a0c001 	movne	ip, #1
6031045c:	e3500001 	cmp	r0, #1
60310460:	83a0c000 	movhi	ip, #0
60310464:	e35c0000 	cmp	ip, #0
60310468:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
6031046c:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
60310470:	eaffff60 	b	603101f8 <prvYieldCore>
60310474:	e28cc001 	add	ip, ip, #1
60310478:	e1a00003 	mov	r0, r3
6031047c:	eafffff4 	b	60310454 <prvYieldForTask.isra.0+0xb8>

60310480 <prvGetExpectedIdleTime>:
60310480:	e30832d4 	movw	r3, #33492	; 0x82d4
60310484:	e3463032 	movt	r3, #24626	; 0x6032
60310488:	e92d4070 	push	{r4, r5, r6, lr}
6031048c:	e5935000 	ldr	r5, [r3]
60310490:	ebfffe2f 	bl	6030fd54 <ulPortInterruptLock>
60310494:	e1a04000 	mov	r4, r0
60310498:	ebfffe48 	bl	6030fdc0 <ulPortGetCoreId>
6031049c:	e30831c4 	movw	r3, #33220	; 0x81c4
603104a0:	e3463032 	movt	r3, #24626	; 0x6032
603104a4:	e1a02000 	mov	r2, r0
603104a8:	e1a00004 	mov	r0, r4
603104ac:	e7934102 	ldr	r4, [r3, r2, lsl #2]
603104b0:	ebfffe2c 	bl	6030fd68 <ulPortInterruptUnLock>
603104b4:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
603104b8:	e3530000 	cmp	r3, #0
603104bc:	0a000001 	beq	603104c8 <prvGetExpectedIdleTime+0x48>
603104c0:	e3a00000 	mov	r0, #0
603104c4:	e8bd8070 	pop	{r4, r5, r6, pc}
603104c8:	e3a00001 	mov	r0, #1
603104cc:	ebffe5d2 	bl	60309c1c <pmu_secondary_cpu_state_is_running>
603104d0:	e3500000 	cmp	r0, #0
603104d4:	0a000004 	beq	603104ec <prvGetExpectedIdleTime+0x6c>
603104d8:	e30831d8 	movw	r3, #33240	; 0x81d8
603104dc:	e3463032 	movt	r3, #24626	; 0x6032
603104e0:	e5933000 	ldr	r3, [r3]
603104e4:	e3530000 	cmp	r3, #0
603104e8:	1afffff4 	bne	603104c0 <prvGetExpectedIdleTime+0x40>
603104ec:	e3550000 	cmp	r5, #0
603104f0:	1afffff2 	bne	603104c0 <prvGetExpectedIdleTime+0x40>
603104f4:	e3082308 	movw	r2, #33544	; 0x8308
603104f8:	e3462032 	movt	r2, #24626	; 0x6032
603104fc:	e3083368 	movw	r3, #33640	; 0x8368
60310500:	e3463032 	movt	r3, #24626	; 0x6032
60310504:	e5920000 	ldr	r0, [r2]
60310508:	e5933000 	ldr	r3, [r3]
6031050c:	e0400003 	sub	r0, r0, r3
60310510:	e8bd8070 	pop	{r4, r5, r6, pc}

60310514 <xTaskGetCurrentYieldPending>:
60310514:	e92d4010 	push	{r4, lr}
60310518:	ebfffe0d 	bl	6030fd54 <ulPortInterruptLock>
6031051c:	e1a04000 	mov	r4, r0
60310520:	ebfffe26 	bl	6030fdc0 <ulPortGetCoreId>
60310524:	e308336c 	movw	r3, #33644	; 0x836c
60310528:	e3463032 	movt	r3, #24626	; 0x6032
6031052c:	e1a02000 	mov	r2, r0
60310530:	e1a00004 	mov	r0, r4
60310534:	e7934102 	ldr	r4, [r3, r2, lsl #2]
60310538:	ebfffe0a 	bl	6030fd68 <ulPortInterruptUnLock>
6031053c:	e1a00004 	mov	r0, r4
60310540:	e8bd8010 	pop	{r4, pc}

60310544 <xTaskGetTickCount>:
60310544:	e3083368 	movw	r3, #33640	; 0x8368
60310548:	e3463032 	movt	r3, #24626	; 0x6032
6031054c:	e5930000 	ldr	r0, [r3]
60310550:	e12fff1e 	bx	lr

60310554 <xTaskGetTickCountFromISR>:
60310554:	e3083368 	movw	r3, #33640	; 0x8368
60310558:	e3463032 	movt	r3, #24626	; 0x6032
6031055c:	e5930000 	ldr	r0, [r3]
60310560:	e12fff1e 	bx	lr

60310564 <pcTaskGetName>:
60310564:	e92d4010 	push	{r4, lr}
60310568:	e2504000 	subs	r4, r0, #0
6031056c:	0a000001 	beq	60310578 <pcTaskGetName+0x14>
60310570:	e284003c 	add	r0, r4, #60	; 0x3c
60310574:	e8bd8010 	pop	{r4, pc}
60310578:	ebfffdf5 	bl	6030fd54 <ulPortInterruptLock>
6031057c:	e1a04000 	mov	r4, r0
60310580:	ebfffe0e 	bl	6030fdc0 <ulPortGetCoreId>
60310584:	e30831c4 	movw	r3, #33220	; 0x81c4
60310588:	e3463032 	movt	r3, #24626	; 0x6032
6031058c:	e1a02000 	mov	r2, r0
60310590:	e1a00004 	mov	r0, r4
60310594:	e7934102 	ldr	r4, [r3, r2, lsl #2]
60310598:	ebfffdf2 	bl	6030fd68 <ulPortInterruptUnLock>
6031059c:	e284003c 	add	r0, r4, #60	; 0x3c
603105a0:	e8bd8010 	pop	{r4, pc}

603105a4 <vTaskStepTick>:
603105a4:	e3083368 	movw	r3, #33640	; 0x8368
603105a8:	e3463032 	movt	r3, #24626	; 0x6032
603105ac:	e5932000 	ldr	r2, [r3]
603105b0:	e0822000 	add	r2, r2, r0
603105b4:	e5832000 	str	r2, [r3]
603105b8:	e12fff1e 	bx	lr

603105bc <vTaskSwitchContext>:
603105bc:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
603105c0:	e1a04000 	mov	r4, r0
603105c4:	ebfffde2 	bl	6030fd54 <ulPortInterruptLock>
603105c8:	e1a07000 	mov	r7, r0
603105cc:	ebfffdba 	bl	6030fcbc <xPortSpinLockTask>
603105d0:	e1a00004 	mov	r0, r4
603105d4:	ebffe596 	bl	60309c34 <pmu_secondary_cpu_state_is_hotplug>
603105d8:	e3500000 	cmp	r0, #0
603105dc:	1a000114 	bne	60310a34 <vTaskSwitchContext+0x478>
603105e0:	e30832cc 	movw	r3, #33484	; 0x82cc
603105e4:	e3463032 	movt	r3, #24626	; 0x6032
603105e8:	e5933000 	ldr	r3, [r3]
603105ec:	e3530000 	cmp	r3, #0
603105f0:	1a000099 	bne	6031085c <vTaskSwitchContext+0x2a0>
603105f4:	e308236c 	movw	r2, #33644	; 0x836c
603105f8:	e3462032 	movt	r2, #24626	; 0x6032
603105fc:	e3a0ca09 	mov	ip, #36864	; 0x9000
60310600:	e344c200 	movt	ip, #16896	; 0x4200
60310604:	e30851c4 	movw	r5, #33220	; 0x81c4
60310608:	e3465032 	movt	r5, #24626	; 0x6032
6031060c:	e7823104 	str	r3, [r2, r4, lsl #2]
60310610:	e30812b4 	movw	r1, #33460	; 0x82b4
60310614:	e3461032 	movt	r1, #24626	; 0x6032
60310618:	e30822bc 	movw	r2, #33468	; 0x82bc
6031061c:	e3462032 	movt	r2, #24626	; 0x6032
60310620:	e59c0004 	ldr	r0, [ip, #4]
60310624:	e7820103 	str	r0, [r2, r3, lsl #2]
60310628:	e792e103 	ldr	lr, [r2, r3, lsl #2]
6031062c:	e7910103 	ldr	r0, [r1, r3, lsl #2]
60310630:	e15e0000 	cmp	lr, r0
60310634:	9a000006 	bls	60310654 <vTaskSwitchContext+0x98>
60310638:	e7926103 	ldr	r6, [r2, r3, lsl #2]
6031063c:	e7918103 	ldr	r8, [r1, r3, lsl #2]
60310640:	e795e103 	ldr	lr, [r5, r3, lsl #2]
60310644:	e59e0078 	ldr	r0, [lr, #120]	; 0x78
60310648:	e0400008 	sub	r0, r0, r8
6031064c:	e0800006 	add	r0, r0, r6
60310650:	e58e0078 	str	r0, [lr, #120]	; 0x78
60310654:	e7920103 	ldr	r0, [r2, r3, lsl #2]
60310658:	e3530001 	cmp	r3, #1
6031065c:	e7810103 	str	r0, [r1, r3, lsl #2]
60310660:	e3a03001 	mov	r3, #1
60310664:	1affffed 	bne	60310620 <vTaskSwitchContext+0x64>
60310668:	ebfffdb9 	bl	6030fd54 <ulPortInterruptLock>
6031066c:	e1a06000 	mov	r6, r0
60310670:	ebfffdd2 	bl	6030fdc0 <ulPortGetCoreId>
60310674:	e1a03000 	mov	r3, r0
60310678:	e1a00006 	mov	r0, r6
6031067c:	e7956103 	ldr	r6, [r5, r3, lsl #2]
60310680:	ebfffdb8 	bl	6030fd68 <ulPortInterruptUnLock>
60310684:	e30a35a5 	movw	r3, #42405	; 0xa5a5
60310688:	e34a35a5 	movt	r3, #42405	; 0xa5a5
6031068c:	e5962030 	ldr	r2, [r6, #48]	; 0x30
60310690:	e5921000 	ldr	r1, [r2]
60310694:	e1510003 	cmp	r1, r3
60310698:	1a000002 	bne	603106a8 <vTaskSwitchContext+0xec>
6031069c:	e5923004 	ldr	r3, [r2, #4]
603106a0:	e1530001 	cmp	r3, r1
603106a4:	0a00012d 	beq	60310b60 <vTaskSwitchContext+0x5a4>
603106a8:	ebfffda9 	bl	6030fd54 <ulPortInterruptLock>
603106ac:	e1a06000 	mov	r6, r0
603106b0:	ebfffdc2 	bl	6030fdc0 <ulPortGetCoreId>
603106b4:	e1a03000 	mov	r3, r0
603106b8:	e1a00006 	mov	r0, r6
603106bc:	e7958103 	ldr	r8, [r5, r3, lsl #2]
603106c0:	ebfffda8 	bl	6030fd68 <ulPortInterruptUnLock>
603106c4:	ebfffda2 	bl	6030fd54 <ulPortInterruptLock>
603106c8:	e1a06000 	mov	r6, r0
603106cc:	ebfffdbb 	bl	6030fdc0 <ulPortGetCoreId>
603106d0:	e1a03000 	mov	r3, r0
603106d4:	e1a00006 	mov	r0, r6
603106d8:	e7956103 	ldr	r6, [r5, r3, lsl #2]
603106dc:	ebfffda1 	bl	6030fd68 <ulPortInterruptUnLock>
603106e0:	e286103c 	add	r1, r6, #60	; 0x3c
603106e4:	e1a00008 	mov	r0, r8
603106e8:	ebfffde0 	bl	6030fe70 <vApplicationStackOverflowHook>
603106ec:	e30891c0 	movw	r9, #33216	; 0x81c0
603106f0:	e3469032 	movt	r9, #24626	; 0x6032
603106f4:	e7952104 	ldr	r2, [r5, r4, lsl #2]
603106f8:	e7953104 	ldr	r3, [r5, r4, lsl #2]
603106fc:	e5991000 	ldr	r1, [r9]
60310700:	e5821174 	str	r1, [r2, #372]	; 0x174
60310704:	e5933034 	ldr	r3, [r3, #52]	; 0x34
60310708:	e3530000 	cmp	r3, #0
6031070c:	ba000003 	blt	60310720 <vTaskSwitchContext+0x164>
60310710:	e7953104 	ldr	r3, [r5, r4, lsl #2]
60310714:	e5933034 	ldr	r3, [r3, #52]	; 0x34
60310718:	e3530001 	cmp	r3, #1
6031071c:	da0000e9 	ble	60310ac8 <vTaskSwitchContext+0x50c>
60310720:	e7953104 	ldr	r3, [r5, r4, lsl #2]
60310724:	e30861d4 	movw	r6, #33236	; 0x81d4
60310728:	e3466032 	movt	r6, #24626	; 0x6032
6031072c:	e5932014 	ldr	r2, [r3, #20]
60310730:	e5963000 	ldr	r3, [r6]
60310734:	e1520003 	cmp	r2, r3
60310738:	0a00010f 	beq	60310b7c <vTaskSwitchContext+0x5c0>
6031073c:	e30882d4 	movw	r8, #33492	; 0x82d4
60310740:	e3468032 	movt	r8, #24626	; 0x6032
60310744:	e30861d8 	movw	r6, #33240	; 0x81d8
60310748:	e3466032 	movt	r6, #24626	; 0x6032
6031074c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
60310750:	e3e02000 	mvn	r2, #0
60310754:	e3a01014 	mov	r1, #20
60310758:	e5832034 	str	r2, [r3, #52]	; 0x34
6031075c:	e5982000 	ldr	r2, [r8]
60310760:	e0030291 	mul	r3, r1, r2
60310764:	e7963003 	ldr	r3, [r6, r3]
60310768:	e3530000 	cmp	r3, #0
6031076c:	1a000004 	bne	60310784 <vTaskSwitchContext+0x1c8>
60310770:	e2422001 	sub	r2, r2, #1
60310774:	e0030291 	mul	r3, r1, r2
60310778:	e7963003 	ldr	r3, [r6, r3]
6031077c:	e3530000 	cmp	r3, #0
60310780:	0afffffa 	beq	60310770 <vTaskSwitchContext+0x1b4>
60310784:	e3a00014 	mov	r0, #20
60310788:	e308e300 	movw	lr, #33536	; 0x8300
6031078c:	e346e032 	movt	lr, #24626	; 0x6032
60310790:	e0000290 	mul	r0, r0, r2
60310794:	e086c000 	add	ip, r6, r0
60310798:	e2800008 	add	r0, r0, #8
6031079c:	e0860000 	add	r0, r6, r0
603107a0:	e59c3004 	ldr	r3, [ip, #4]
603107a4:	ea000003 	b	603107b8 <vTaskSwitchContext+0x1fc>
603107a8:	e795a104 	ldr	sl, [r5, r4, lsl #2]
603107ac:	e79e1104 	ldr	r1, [lr, r4, lsl #2]
603107b0:	e15a0001 	cmp	sl, r1
603107b4:	0a00000a 	beq	603107e4 <vTaskSwitchContext+0x228>
603107b8:	e5933004 	ldr	r3, [r3, #4]
603107bc:	e58c3004 	str	r3, [ip, #4]
603107c0:	e1530000 	cmp	r3, r0
603107c4:	05933004 	ldreq	r3, [r3, #4]
603107c8:	058c3004 	streq	r3, [ip, #4]
603107cc:	e593100c 	ldr	r1, [r3, #12]
603107d0:	e7851104 	str	r1, [r5, r4, lsl #2]
603107d4:	e7951104 	ldr	r1, [r5, r4, lsl #2]
603107d8:	e5911038 	ldr	r1, [r1, #56]	; 0x38
603107dc:	e3510000 	cmp	r1, #0
603107e0:	1afffff0 	bne	603107a8 <vTaskSwitchContext+0x1ec>
603107e4:	e5882000 	str	r2, [r8]
603107e8:	e7950104 	ldr	r0, [r5, r4, lsl #2]
603107ec:	e2800004 	add	r0, r0, #4
603107f0:	eb00073b 	bl	603124e4 <uxListRemove>
603107f4:	e7953104 	ldr	r3, [r5, r4, lsl #2]
603107f8:	e5834034 	str	r4, [r3, #52]	; 0x34
603107fc:	e5983000 	ldr	r3, [r8]
60310800:	e3530000 	cmp	r3, #0
60310804:	0a000007 	beq	60310828 <vTaskSwitchContext+0x26c>
60310808:	e3a01014 	mov	r1, #20
6031080c:	ea000001 	b	60310818 <vTaskSwitchContext+0x25c>
60310810:	e2533001 	subs	r3, r3, #1
60310814:	0a000003 	beq	60310828 <vTaskSwitchContext+0x26c>
60310818:	e0020391 	mul	r2, r1, r3
6031081c:	e7962002 	ldr	r2, [r6, r2]
60310820:	e3520000 	cmp	r2, #0
60310824:	0afffff9 	beq	60310810 <vTaskSwitchContext+0x254>
60310828:	e5883000 	str	r3, [r8]
6031082c:	e3063000 	movw	r3, #24576	; 0x6000
60310830:	e3463031 	movt	r3, #24625	; 0x6031
60310834:	e7951104 	ldr	r1, [r5, r4, lsl #2]
60310838:	e7952104 	ldr	r2, [r5, r4, lsl #2]
6031083c:	e5911174 	ldr	r1, [r1, #372]	; 0x174
60310840:	e282207c 	add	r2, r2, #124	; 0x7c
60310844:	e5891000 	str	r1, [r9]
60310848:	e5832000 	str	r2, [r3]
6031084c:	ebfffd25 	bl	6030fce8 <xPortSpinUnLockTask>
60310850:	e1a00007 	mov	r0, r7
60310854:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
60310858:	eafffd42 	b	6030fd68 <ulPortInterruptUnLock>
6031085c:	e308336c 	movw	r3, #33644	; 0x836c
60310860:	e3463032 	movt	r3, #24626	; 0x6032
60310864:	e3a02001 	mov	r2, #1
60310868:	e7832104 	str	r2, [r3, r4, lsl #2]
6031086c:	ebfffd3f 	bl	6030fd70 <xPortCpuIsInInterrupt>
60310870:	e3500000 	cmp	r0, #0
60310874:	1afffff4 	bne	6031084c <vTaskSwitchContext+0x290>
60310878:	e30851c4 	movw	r5, #33220	; 0x81c4
6031087c:	e3465032 	movt	r5, #24626	; 0x6032
60310880:	e7953104 	ldr	r3, [r5, r4, lsl #2]
60310884:	e5933038 	ldr	r3, [r3, #56]	; 0x38
60310888:	e3530000 	cmp	r3, #0
6031088c:	1affffee 	bne	6031084c <vTaskSwitchContext+0x290>
60310890:	e7952104 	ldr	r2, [r5, r4, lsl #2]
60310894:	e5922034 	ldr	r2, [r2, #52]	; 0x34
60310898:	e3520000 	cmp	r2, #0
6031089c:	ba000003 	blt	603108b0 <vTaskSwitchContext+0x2f4>
603108a0:	e7952104 	ldr	r2, [r5, r4, lsl #2]
603108a4:	e5922034 	ldr	r2, [r2, #52]	; 0x34
603108a8:	e3520001 	cmp	r2, #1
603108ac:	daffffe6 	ble	6031084c <vTaskSwitchContext+0x290>
603108b0:	e3a0ca09 	mov	ip, #36864	; 0x9000
603108b4:	e344c200 	movt	ip, #16896	; 0x4200
603108b8:	e30822bc 	movw	r2, #33468	; 0x82bc
603108bc:	e3462032 	movt	r2, #24626	; 0x6032
603108c0:	e30812b4 	movw	r1, #33460	; 0x82b4
603108c4:	e3461032 	movt	r1, #24626	; 0x6032
603108c8:	e59c0004 	ldr	r0, [ip, #4]
603108cc:	e7820103 	str	r0, [r2, r3, lsl #2]
603108d0:	e792e103 	ldr	lr, [r2, r3, lsl #2]
603108d4:	e7910103 	ldr	r0, [r1, r3, lsl #2]
603108d8:	e15e0000 	cmp	lr, r0
603108dc:	9a000006 	bls	603108fc <vTaskSwitchContext+0x340>
603108e0:	e7926103 	ldr	r6, [r2, r3, lsl #2]
603108e4:	e7918103 	ldr	r8, [r1, r3, lsl #2]
603108e8:	e795e103 	ldr	lr, [r5, r3, lsl #2]
603108ec:	e59e0078 	ldr	r0, [lr, #120]	; 0x78
603108f0:	e0400008 	sub	r0, r0, r8
603108f4:	e0800006 	add	r0, r0, r6
603108f8:	e58e0078 	str	r0, [lr, #120]	; 0x78
603108fc:	e7920103 	ldr	r0, [r2, r3, lsl #2]
60310900:	e3530001 	cmp	r3, #1
60310904:	e7810103 	str	r0, [r1, r3, lsl #2]
60310908:	e3a03001 	mov	r3, #1
6031090c:	1affffed 	bne	603108c8 <vTaskSwitchContext+0x30c>
60310910:	ebfffd0f 	bl	6030fd54 <ulPortInterruptLock>
60310914:	e1a06000 	mov	r6, r0
60310918:	ebfffd28 	bl	6030fdc0 <ulPortGetCoreId>
6031091c:	e1a03000 	mov	r3, r0
60310920:	e1a00006 	mov	r0, r6
60310924:	e7956103 	ldr	r6, [r5, r3, lsl #2]
60310928:	ebfffd0e 	bl	6030fd68 <ulPortInterruptUnLock>
6031092c:	e30a35a5 	movw	r3, #42405	; 0xa5a5
60310930:	e34a35a5 	movt	r3, #42405	; 0xa5a5
60310934:	e5962030 	ldr	r2, [r6, #48]	; 0x30
60310938:	e5921000 	ldr	r1, [r2]
6031093c:	e1510003 	cmp	r1, r3
60310940:	1a000002 	bne	60310950 <vTaskSwitchContext+0x394>
60310944:	e5923004 	ldr	r3, [r2, #4]
60310948:	e1530001 	cmp	r3, r1
6031094c:	0a0000d9 	beq	60310cb8 <vTaskSwitchContext+0x6fc>
60310950:	ebfffcff 	bl	6030fd54 <ulPortInterruptLock>
60310954:	e1a06000 	mov	r6, r0
60310958:	ebfffd18 	bl	6030fdc0 <ulPortGetCoreId>
6031095c:	e1a03000 	mov	r3, r0
60310960:	e1a00006 	mov	r0, r6
60310964:	e7958103 	ldr	r8, [r5, r3, lsl #2]
60310968:	ebfffcfe 	bl	6030fd68 <ulPortInterruptUnLock>
6031096c:	ebfffcf8 	bl	6030fd54 <ulPortInterruptLock>
60310970:	e1a06000 	mov	r6, r0
60310974:	ebfffd11 	bl	6030fdc0 <ulPortGetCoreId>
60310978:	e1a03000 	mov	r3, r0
6031097c:	e1a00006 	mov	r0, r6
60310980:	e7956103 	ldr	r6, [r5, r3, lsl #2]
60310984:	ebfffcf7 	bl	6030fd68 <ulPortInterruptUnLock>
60310988:	e286103c 	add	r1, r6, #60	; 0x3c
6031098c:	e1a00008 	mov	r0, r8
60310990:	ebfffd36 	bl	6030fe70 <vApplicationStackOverflowHook>
60310994:	e30891c0 	movw	r9, #33216	; 0x81c0
60310998:	e3469032 	movt	r9, #24626	; 0x6032
6031099c:	e7952104 	ldr	r2, [r5, r4, lsl #2]
603109a0:	e7953104 	ldr	r3, [r5, r4, lsl #2]
603109a4:	e5991000 	ldr	r1, [r9]
603109a8:	e5821174 	str	r1, [r2, #372]	; 0x174
603109ac:	e3e02000 	mvn	r2, #0
603109b0:	e5832034 	str	r2, [r3, #52]	; 0x34
603109b4:	e30861d4 	movw	r6, #33236	; 0x81d4
603109b8:	e3466032 	movt	r6, #24626	; 0x6032
603109bc:	e7953104 	ldr	r3, [r5, r4, lsl #2]
603109c0:	e5932014 	ldr	r2, [r3, #20]
603109c4:	e5963000 	ldr	r3, [r6]
603109c8:	e1520003 	cmp	r2, r3
603109cc:	0a00009f 	beq	60310c50 <vTaskSwitchContext+0x694>
603109d0:	e30882d4 	movw	r8, #33492	; 0x82d4
603109d4:	e3468032 	movt	r8, #24626	; 0x6032
603109d8:	e3083300 	movw	r3, #33536	; 0x8300
603109dc:	e3463032 	movt	r3, #24626	; 0x6032
603109e0:	e7933104 	ldr	r3, [r3, r4, lsl #2]
603109e4:	e7853104 	str	r3, [r5, r4, lsl #2]
603109e8:	e7950104 	ldr	r0, [r5, r4, lsl #2]
603109ec:	e2800004 	add	r0, r0, #4
603109f0:	eb0006bb 	bl	603124e4 <uxListRemove>
603109f4:	e7953104 	ldr	r3, [r5, r4, lsl #2]
603109f8:	e5834034 	str	r4, [r3, #52]	; 0x34
603109fc:	e5983000 	ldr	r3, [r8]
60310a00:	e3530000 	cmp	r3, #0
60310a04:	0affff87 	beq	60310828 <vTaskSwitchContext+0x26c>
60310a08:	e30861d8 	movw	r6, #33240	; 0x81d8
60310a0c:	e3466032 	movt	r6, #24626	; 0x6032
60310a10:	e3a01014 	mov	r1, #20
60310a14:	ea000001 	b	60310a20 <vTaskSwitchContext+0x464>
60310a18:	e2533001 	subs	r3, r3, #1
60310a1c:	0affff81 	beq	60310828 <vTaskSwitchContext+0x26c>
60310a20:	e0020391 	mul	r2, r1, r3
60310a24:	e7962002 	ldr	r2, [r6, r2]
60310a28:	e3520000 	cmp	r2, #0
60310a2c:	0afffff9 	beq	60310a18 <vTaskSwitchContext+0x45c>
60310a30:	eaffff7c 	b	60310828 <vTaskSwitchContext+0x26c>
60310a34:	e30851c4 	movw	r5, #33220	; 0x81c4
60310a38:	e3465032 	movt	r5, #24626	; 0x6032
60310a3c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
60310a40:	e5933034 	ldr	r3, [r3, #52]	; 0x34
60310a44:	e3530000 	cmp	r3, #0
60310a48:	ba000003 	blt	60310a5c <vTaskSwitchContext+0x4a0>
60310a4c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
60310a50:	e5933034 	ldr	r3, [r3, #52]	; 0x34
60310a54:	e3530001 	cmp	r3, #1
60310a58:	da000029 	ble	60310b04 <vTaskSwitchContext+0x548>
60310a5c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
60310a60:	e30861d4 	movw	r6, #33236	; 0x81d4
60310a64:	e3466032 	movt	r6, #24626	; 0x6032
60310a68:	e5932014 	ldr	r2, [r3, #20]
60310a6c:	e5963000 	ldr	r3, [r6]
60310a70:	e1520003 	cmp	r2, r3
60310a74:	0a00005d 	beq	60310bf0 <vTaskSwitchContext+0x634>
60310a78:	e7953104 	ldr	r3, [r5, r4, lsl #2]
60310a7c:	e3e02000 	mvn	r2, #0
60310a80:	e3a06000 	mov	r6, #0
60310a84:	e5832034 	str	r2, [r3, #52]	; 0x34
60310a88:	e3082300 	movw	r2, #33536	; 0x8300
60310a8c:	e3462032 	movt	r2, #24626	; 0x6032
60310a90:	e308336c 	movw	r3, #33644	; 0x836c
60310a94:	e3463032 	movt	r3, #24626	; 0x6032
60310a98:	e7922104 	ldr	r2, [r2, r4, lsl #2]
60310a9c:	e7852104 	str	r2, [r5, r4, lsl #2]
60310aa0:	e7836104 	str	r6, [r3, r4, lsl #2]
60310aa4:	e7953104 	ldr	r3, [r5, r4, lsl #2]
60310aa8:	e5836058 	str	r6, [r3, #88]	; 0x58
60310aac:	ebffe091 	bl	60308cf8 <vDisableIPIInterrupt>
60310ab0:	ebfffc8c 	bl	6030fce8 <xPortSpinUnLockTask>
60310ab4:	e1a00007 	mov	r0, r7
60310ab8:	ebfffcaa 	bl	6030fd68 <ulPortInterruptUnLock>
60310abc:	e1a00006 	mov	r0, r6
60310ac0:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
60310ac4:	eaffe235 	b	603093a0 <psci_cpu_off>
60310ac8:	e7953104 	ldr	r3, [r5, r4, lsl #2]
60310acc:	e5933034 	ldr	r3, [r3, #52]	; 0x34
60310ad0:	e1530004 	cmp	r3, r4
60310ad4:	1affff11 	bne	60310720 <vTaskSwitchContext+0x164>
60310ad8:	e7953104 	ldr	r3, [r5, r4, lsl #2]
60310adc:	e5933034 	ldr	r3, [r3, #52]	; 0x34
60310ae0:	e3730002 	cmn	r3, #2
60310ae4:	1a00002e 	bne	60310ba4 <vTaskSwitchContext+0x5e8>
60310ae8:	e30831d4 	movw	r3, #33236	; 0x81d4
60310aec:	e3463032 	movt	r3, #24626	; 0x6032
60310af0:	e5930000 	ldr	r0, [r3]
60310af4:	e7951104 	ldr	r1, [r5, r4, lsl #2]
60310af8:	e2811004 	add	r1, r1, #4
60310afc:	eb000657 	bl	60312460 <vListInsertEnd>
60310b00:	eaffff0d 	b	6031073c <vTaskSwitchContext+0x180>
60310b04:	e7953104 	ldr	r3, [r5, r4, lsl #2]
60310b08:	e5933034 	ldr	r3, [r3, #52]	; 0x34
60310b0c:	e3730002 	cmn	r3, #2
60310b10:	0a000045 	beq	60310c2c <vTaskSwitchContext+0x670>
60310b14:	e7952104 	ldr	r2, [r5, r4, lsl #2]
60310b18:	e30832d4 	movw	r3, #33492	; 0x82d4
60310b1c:	e3463032 	movt	r3, #24626	; 0x6032
60310b20:	e592102c 	ldr	r1, [r2, #44]	; 0x2c
60310b24:	e3a00014 	mov	r0, #20
60310b28:	e5932000 	ldr	r2, [r3]
60310b2c:	e1510002 	cmp	r1, r2
60310b30:	87952104 	ldrhi	r2, [r5, r4, lsl #2]
60310b34:	8592202c 	ldrhi	r2, [r2, #44]	; 0x2c
60310b38:	85832000 	strhi	r2, [r3]
60310b3c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
60310b40:	e7951104 	ldr	r1, [r5, r4, lsl #2]
60310b44:	e593202c 	ldr	r2, [r3, #44]	; 0x2c
60310b48:	e30831d8 	movw	r3, #33240	; 0x81d8
60310b4c:	e3463032 	movt	r3, #24626	; 0x6032
60310b50:	e2811004 	add	r1, r1, #4
60310b54:	e0203290 	mla	r0, r0, r2, r3
60310b58:	eb000640 	bl	60312460 <vListInsertEnd>
60310b5c:	eaffffc5 	b	60310a78 <vTaskSwitchContext+0x4bc>
60310b60:	e5921008 	ldr	r1, [r2, #8]
60310b64:	e1510003 	cmp	r1, r3
60310b68:	1afffece 	bne	603106a8 <vTaskSwitchContext+0xec>
60310b6c:	e592300c 	ldr	r3, [r2, #12]
60310b70:	e1530001 	cmp	r3, r1
60310b74:	1afffecb 	bne	603106a8 <vTaskSwitchContext+0xec>
60310b78:	eafffedb 	b	603106ec <vTaskSwitchContext+0x130>
60310b7c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
60310b80:	e3e02000 	mvn	r2, #0
60310b84:	e5832034 	str	r2, [r3, #52]	; 0x34
60310b88:	e7950104 	ldr	r0, [r5, r4, lsl #2]
60310b8c:	e2800004 	add	r0, r0, #4
60310b90:	eb000653 	bl	603124e4 <uxListRemove>
60310b94:	e7953104 	ldr	r3, [r5, r4, lsl #2]
60310b98:	e5933034 	ldr	r3, [r3, #52]	; 0x34
60310b9c:	e3730002 	cmn	r3, #2
60310ba0:	0a000028 	beq	60310c48 <vTaskSwitchContext+0x68c>
60310ba4:	e7953104 	ldr	r3, [r5, r4, lsl #2]
60310ba8:	e30882d4 	movw	r8, #33492	; 0x82d4
60310bac:	e3468032 	movt	r8, #24626	; 0x6032
60310bb0:	e593202c 	ldr	r2, [r3, #44]	; 0x2c
60310bb4:	e3a00014 	mov	r0, #20
60310bb8:	e5983000 	ldr	r3, [r8]
60310bbc:	e30861d8 	movw	r6, #33240	; 0x81d8
60310bc0:	e3466032 	movt	r6, #24626	; 0x6032
60310bc4:	e1520003 	cmp	r2, r3
60310bc8:	87953104 	ldrhi	r3, [r5, r4, lsl #2]
60310bcc:	8593302c 	ldrhi	r3, [r3, #44]	; 0x2c
60310bd0:	85883000 	strhi	r3, [r8]
60310bd4:	e7953104 	ldr	r3, [r5, r4, lsl #2]
60310bd8:	e7951104 	ldr	r1, [r5, r4, lsl #2]
60310bdc:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
60310be0:	e2811004 	add	r1, r1, #4
60310be4:	e0206390 	mla	r0, r0, r3, r6
60310be8:	eb00061c 	bl	60312460 <vListInsertEnd>
60310bec:	eafffed6 	b	6031074c <vTaskSwitchContext+0x190>
60310bf0:	e7953104 	ldr	r3, [r5, r4, lsl #2]
60310bf4:	e3e02000 	mvn	r2, #0
60310bf8:	e5832034 	str	r2, [r3, #52]	; 0x34
60310bfc:	e7950104 	ldr	r0, [r5, r4, lsl #2]
60310c00:	e2800004 	add	r0, r0, #4
60310c04:	eb000636 	bl	603124e4 <uxListRemove>
60310c08:	e7953104 	ldr	r3, [r5, r4, lsl #2]
60310c0c:	e5933034 	ldr	r3, [r3, #52]	; 0x34
60310c10:	e3730002 	cmn	r3, #2
60310c14:	1affffbe 	bne	60310b14 <vTaskSwitchContext+0x558>
60310c18:	e5960000 	ldr	r0, [r6]
60310c1c:	e7951104 	ldr	r1, [r5, r4, lsl #2]
60310c20:	e2811004 	add	r1, r1, #4
60310c24:	eb00060d 	bl	60312460 <vListInsertEnd>
60310c28:	eaffff92 	b	60310a78 <vTaskSwitchContext+0x4bc>
60310c2c:	e30831d4 	movw	r3, #33236	; 0x81d4
60310c30:	e3463032 	movt	r3, #24626	; 0x6032
60310c34:	e5930000 	ldr	r0, [r3]
60310c38:	e7951104 	ldr	r1, [r5, r4, lsl #2]
60310c3c:	e2811004 	add	r1, r1, #4
60310c40:	eb000606 	bl	60312460 <vListInsertEnd>
60310c44:	eaffff8b 	b	60310a78 <vTaskSwitchContext+0x4bc>
60310c48:	e5960000 	ldr	r0, [r6]
60310c4c:	eaffffa8 	b	60310af4 <vTaskSwitchContext+0x538>
60310c50:	e7950104 	ldr	r0, [r5, r4, lsl #2]
60310c54:	e2800004 	add	r0, r0, #4
60310c58:	eb000621 	bl	603124e4 <uxListRemove>
60310c5c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
60310c60:	e5933034 	ldr	r3, [r3, #52]	; 0x34
60310c64:	e3730002 	cmn	r3, #2
60310c68:	0a000019 	beq	60310cd4 <vTaskSwitchContext+0x718>
60310c6c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
60310c70:	e30882d4 	movw	r8, #33492	; 0x82d4
60310c74:	e3468032 	movt	r8, #24626	; 0x6032
60310c78:	e593202c 	ldr	r2, [r3, #44]	; 0x2c
60310c7c:	e3a00014 	mov	r0, #20
60310c80:	e5983000 	ldr	r3, [r8]
60310c84:	e30861d8 	movw	r6, #33240	; 0x81d8
60310c88:	e3466032 	movt	r6, #24626	; 0x6032
60310c8c:	e1520003 	cmp	r2, r3
60310c90:	87953104 	ldrhi	r3, [r5, r4, lsl #2]
60310c94:	8593302c 	ldrhi	r3, [r3, #44]	; 0x2c
60310c98:	85883000 	strhi	r3, [r8]
60310c9c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
60310ca0:	e7951104 	ldr	r1, [r5, r4, lsl #2]
60310ca4:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
60310ca8:	e2811004 	add	r1, r1, #4
60310cac:	e0206390 	mla	r0, r0, r3, r6
60310cb0:	eb0005ea 	bl	60312460 <vListInsertEnd>
60310cb4:	eaffff47 	b	603109d8 <vTaskSwitchContext+0x41c>
60310cb8:	e5921008 	ldr	r1, [r2, #8]
60310cbc:	e1510003 	cmp	r1, r3
60310cc0:	1affff22 	bne	60310950 <vTaskSwitchContext+0x394>
60310cc4:	e592300c 	ldr	r3, [r2, #12]
60310cc8:	e1530001 	cmp	r3, r1
60310ccc:	1affff1f 	bne	60310950 <vTaskSwitchContext+0x394>
60310cd0:	eaffff2f 	b	60310994 <vTaskSwitchContext+0x3d8>
60310cd4:	e5960000 	ldr	r0, [r6]
60310cd8:	e7951104 	ldr	r1, [r5, r4, lsl #2]
60310cdc:	e2811004 	add	r1, r1, #4
60310ce0:	eb0005de 	bl	60312460 <vListInsertEnd>
60310ce4:	eaffff39 	b	603109d0 <vTaskSwitchContext+0x414>

60310ce8 <vTaskInternalSetTimeOutState>:
60310ce8:	e308230c 	movw	r2, #33548	; 0x830c
60310cec:	e3462032 	movt	r2, #24626	; 0x6032
60310cf0:	e3083368 	movw	r3, #33640	; 0x8368
60310cf4:	e3463032 	movt	r3, #24626	; 0x6032
60310cf8:	e5922000 	ldr	r2, [r2]
60310cfc:	e5933000 	ldr	r3, [r3]
60310d00:	e1c020f0 	strd	r2, [r0]
60310d04:	e12fff1e 	bx	lr

60310d08 <vTaskMissedYield>:
60310d08:	e92d4010 	push	{r4, lr}
60310d0c:	ebfffc2b 	bl	6030fdc0 <ulPortGetCoreId>
60310d10:	e308336c 	movw	r3, #33644	; 0x836c
60310d14:	e3463032 	movt	r3, #24626	; 0x6032
60310d18:	e3a02001 	mov	r2, #1
60310d1c:	e7832100 	str	r2, [r3, r0, lsl #2]
60310d20:	e8bd8010 	pop	{r4, pc}

60310d24 <eTaskConfirmSleepModeStatus>:
60310d24:	e3083314 	movw	r3, #33556	; 0x8314
60310d28:	e3463032 	movt	r3, #24626	; 0x6032
60310d2c:	e5933000 	ldr	r3, [r3]
60310d30:	e3530000 	cmp	r3, #0
60310d34:	0a000001 	beq	60310d40 <eTaskConfirmSleepModeStatus+0x1c>
60310d38:	e3a00000 	mov	r0, #0
60310d3c:	e12fff1e 	bx	lr
60310d40:	e92d4010 	push	{r4, lr}
60310d44:	ebfffc02 	bl	6030fd54 <ulPortInterruptLock>
60310d48:	e1a04000 	mov	r4, r0
60310d4c:	ebfffc1b 	bl	6030fdc0 <ulPortGetCoreId>
60310d50:	e308336c 	movw	r3, #33644	; 0x836c
60310d54:	e3463032 	movt	r3, #24626	; 0x6032
60310d58:	e1a02000 	mov	r2, r0
60310d5c:	e1a00004 	mov	r0, r4
60310d60:	e7934102 	ldr	r4, [r3, r2, lsl #2]
60310d64:	ebfffbff 	bl	6030fd68 <ulPortInterruptUnLock>
60310d68:	e3540000 	cmp	r4, #0
60310d6c:	0a000001 	beq	60310d78 <eTaskConfirmSleepModeStatus+0x54>
60310d70:	e3a00000 	mov	r0, #0
60310d74:	e8bd8010 	pop	{r4, pc}
60310d78:	e30832c4 	movw	r3, #33476	; 0x82c4
60310d7c:	e3463032 	movt	r3, #24626	; 0x6032
60310d80:	e308232c 	movw	r2, #33580	; 0x832c
60310d84:	e3462032 	movt	r2, #24626	; 0x6032
60310d88:	e5933000 	ldr	r3, [r3]
60310d8c:	e5920000 	ldr	r0, [r2]
60310d90:	e2433001 	sub	r3, r3, #1
60310d94:	e1500003 	cmp	r0, r3
60310d98:	13a00001 	movne	r0, #1
60310d9c:	03a00002 	moveq	r0, #2
60310da0:	e8bd8010 	pop	{r4, pc}

60310da4 <xTaskGetSchedulerState>:
60310da4:	e3083328 	movw	r3, #33576	; 0x8328
60310da8:	e3463032 	movt	r3, #24626	; 0x6032
60310dac:	e92d4070 	push	{r4, r5, r6, lr}
60310db0:	e5933000 	ldr	r3, [r3]
60310db4:	e3530000 	cmp	r3, #0
60310db8:	03a04001 	moveq	r4, #1
60310dbc:	1a000001 	bne	60310dc8 <xTaskGetSchedulerState+0x24>
60310dc0:	e1a00004 	mov	r0, r4
60310dc4:	e8bd8070 	pop	{r4, r5, r6, pc}
60310dc8:	ebfffbe1 	bl	6030fd54 <ulPortInterruptLock>
60310dcc:	e1a05000 	mov	r5, r0
60310dd0:	ebfffbb9 	bl	6030fcbc <xPortSpinLockTask>
60310dd4:	e30832cc 	movw	r3, #33484	; 0x82cc
60310dd8:	e3463032 	movt	r3, #24626	; 0x6032
60310ddc:	e5933000 	ldr	r3, [r3]
60310de0:	e3530000 	cmp	r3, #0
60310de4:	03a04002 	moveq	r4, #2
60310de8:	13a04000 	movne	r4, #0
60310dec:	ebfffbbd 	bl	6030fce8 <xPortSpinUnLockTask>
60310df0:	e1a00005 	mov	r0, r5
60310df4:	ebfffbdb 	bl	6030fd68 <ulPortInterruptUnLock>
60310df8:	e1a00004 	mov	r0, r4
60310dfc:	e8bd8070 	pop	{r4, r5, r6, pc}

60310e00 <vTaskYieldWithinAPI>:
60310e00:	e92d4010 	push	{r4, lr}
60310e04:	ebfffbd2 	bl	6030fd54 <ulPortInterruptLock>
60310e08:	e1a04000 	mov	r4, r0
60310e0c:	ebfffbeb 	bl	6030fdc0 <ulPortGetCoreId>
60310e10:	e30831c4 	movw	r3, #33220	; 0x81c4
60310e14:	e3463032 	movt	r3, #24626	; 0x6032
60310e18:	e1a02000 	mov	r2, r0
60310e1c:	e1a00004 	mov	r0, r4
60310e20:	e7934102 	ldr	r4, [r3, r2, lsl #2]
60310e24:	ebfffbcf 	bl	6030fd68 <ulPortInterruptUnLock>
60310e28:	e5943058 	ldr	r3, [r4, #88]	; 0x58
60310e2c:	e3530000 	cmp	r3, #0
60310e30:	1a000001 	bne	60310e3c <vTaskYieldWithinAPI+0x3c>
60310e34:	ef000000 	svc	0x00000000
60310e38:	e8bd8010 	pop	{r4, pc}
60310e3c:	ebfffbdf 	bl	6030fdc0 <ulPortGetCoreId>
60310e40:	e308336c 	movw	r3, #33644	; 0x836c
60310e44:	e3463032 	movt	r3, #24626	; 0x6032
60310e48:	e3a02001 	mov	r2, #1
60310e4c:	e7832100 	str	r2, [r3, r0, lsl #2]
60310e50:	e8bd8010 	pop	{r4, pc}

60310e54 <vTaskEnterCritical>:
60310e54:	e92d4070 	push	{r4, r5, r6, lr}
60310e58:	ebfffbbd 	bl	6030fd54 <ulPortInterruptLock>
60310e5c:	ebfffbd7 	bl	6030fdc0 <ulPortGetCoreId>
60310e60:	e3083328 	movw	r3, #33576	; 0x8328
60310e64:	e3463032 	movt	r3, #24626	; 0x6032
60310e68:	e5933000 	ldr	r3, [r3]
60310e6c:	e3530000 	cmp	r3, #0
60310e70:	08bd8070 	popeq	{r4, r5, r6, pc}
60310e74:	e30851c4 	movw	r5, #33220	; 0x81c4
60310e78:	e3465032 	movt	r5, #24626	; 0x6032
60310e7c:	e1a04000 	mov	r4, r0
60310e80:	e7953100 	ldr	r3, [r5, r0, lsl #2]
60310e84:	e5933058 	ldr	r3, [r3, #88]	; 0x58
60310e88:	e3530000 	cmp	r3, #0
60310e8c:	0a000004 	beq	60310ea4 <vTaskEnterCritical+0x50>
60310e90:	e7952104 	ldr	r2, [r5, r4, lsl #2]
60310e94:	e5923058 	ldr	r3, [r2, #88]	; 0x58
60310e98:	e2833001 	add	r3, r3, #1
60310e9c:	e5823058 	str	r3, [r2, #88]	; 0x58
60310ea0:	e8bd8070 	pop	{r4, r5, r6, pc}
60310ea4:	ebfffb84 	bl	6030fcbc <xPortSpinLockTask>
60310ea8:	eafffff8 	b	60310e90 <vTaskEnterCritical+0x3c>

60310eac <vTaskExitCritical>:
60310eac:	e92d4010 	push	{r4, lr}
60310eb0:	ebfffbc2 	bl	6030fdc0 <ulPortGetCoreId>
60310eb4:	e3083328 	movw	r3, #33576	; 0x8328
60310eb8:	e3463032 	movt	r3, #24626	; 0x6032
60310ebc:	e5933000 	ldr	r3, [r3]
60310ec0:	e3530000 	cmp	r3, #0
60310ec4:	08bd8010 	popeq	{r4, pc}
60310ec8:	e30831c4 	movw	r3, #33220	; 0x81c4
60310ecc:	e3463032 	movt	r3, #24626	; 0x6032
60310ed0:	e1a04000 	mov	r4, r0
60310ed4:	e7932100 	ldr	r2, [r3, r0, lsl #2]
60310ed8:	e5922058 	ldr	r2, [r2, #88]	; 0x58
60310edc:	e3520000 	cmp	r2, #0
60310ee0:	08bd8010 	popeq	{r4, pc}
60310ee4:	e7932100 	ldr	r2, [r3, r0, lsl #2]
60310ee8:	e7931100 	ldr	r1, [r3, r0, lsl #2]
60310eec:	e5923058 	ldr	r3, [r2, #88]	; 0x58
60310ef0:	e2433001 	sub	r3, r3, #1
60310ef4:	e5823058 	str	r3, [r2, #88]	; 0x58
60310ef8:	e5913058 	ldr	r3, [r1, #88]	; 0x58
60310efc:	e3530000 	cmp	r3, #0
60310f00:	18bd8010 	popne	{r4, pc}
60310f04:	ebfffb99 	bl	6030fd70 <xPortCpuIsInInterrupt>
60310f08:	e3500000 	cmp	r0, #0
60310f0c:	1a00000e 	bne	60310f4c <vTaskExitCritical+0xa0>
60310f10:	e308336c 	movw	r3, #33644	; 0x836c
60310f14:	e3463032 	movt	r3, #24626	; 0x6032
60310f18:	e7933104 	ldr	r3, [r3, r4, lsl #2]
60310f1c:	e3530000 	cmp	r3, #0
60310f20:	0a000004 	beq	60310f38 <vTaskExitCritical+0x8c>
60310f24:	e30832cc 	movw	r3, #33484	; 0x82cc
60310f28:	e3463032 	movt	r3, #24626	; 0x6032
60310f2c:	e5933000 	ldr	r3, [r3]
60310f30:	e3530000 	cmp	r3, #0
60310f34:	0a000006 	beq	60310f54 <vTaskExitCritical+0xa8>
60310f38:	ebfffb6a 	bl	6030fce8 <xPortSpinUnLockTask>
60310f3c:	f1080080 	cpsie	i
60310f40:	f57ff04f 	dsb	sy
60310f44:	f57ff06f 	isb	sy
60310f48:	e8bd8010 	pop	{r4, pc}
60310f4c:	e8bd4010 	pop	{r4, lr}
60310f50:	eafffb64 	b	6030fce8 <xPortSpinUnLockTask>
60310f54:	ebfffb63 	bl	6030fce8 <xPortSpinUnLockTask>
60310f58:	ef000000 	svc	0x00000000
60310f5c:	eafffff6 	b	60310f3c <vTaskExitCritical+0x90>

60310f60 <prvAddNewTaskToReadyList>:
60310f60:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
60310f64:	e30851c4 	movw	r5, #33220	; 0x81c4
60310f68:	e3465032 	movt	r5, #24626	; 0x6032
60310f6c:	e1a06000 	mov	r6, r0
60310f70:	ebffffb7 	bl	60310e54 <vTaskEnterCritical>
60310f74:	e5957000 	ldr	r7, [r5]
60310f78:	e3570000 	cmp	r7, #0
60310f7c:	0a00001b 	beq	60310ff0 <prvAddNewTaskToReadyList+0x90>
60310f80:	e5953004 	ldr	r3, [r5, #4]
60310f84:	e3530000 	cmp	r3, #0
60310f88:	0a000078 	beq	60311170 <prvAddNewTaskToReadyList+0x210>
60310f8c:	e5953000 	ldr	r3, [r5]
60310f90:	e5952000 	ldr	r2, [r5]
60310f94:	e596102c 	ldr	r1, [r6, #44]	; 0x2c
60310f98:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
60310f9c:	e5922034 	ldr	r2, [r2, #52]	; 0x34
60310fa0:	e3520001 	cmp	r2, #1
60310fa4:	83a02000 	movhi	r2, #0
60310fa8:	93a02001 	movls	r2, #1
60310fac:	e1510003 	cmp	r1, r3
60310fb0:	33a02000 	movcc	r2, #0
60310fb4:	e3520000 	cmp	r2, #0
60310fb8:	e5952004 	ldr	r2, [r5, #4]
60310fbc:	01a03001 	moveq	r3, r1
60310fc0:	13a07000 	movne	r7, #0
60310fc4:	e592102c 	ldr	r1, [r2, #44]	; 0x2c
60310fc8:	e5952004 	ldr	r2, [r5, #4]
60310fcc:	03e07000 	mvneq	r7, #0
60310fd0:	e1530001 	cmp	r3, r1
60310fd4:	e5922034 	ldr	r2, [r2, #52]	; 0x34
60310fd8:	33a03000 	movcc	r3, #0
60310fdc:	23a03001 	movcs	r3, #1
60310fe0:	e3520001 	cmp	r2, #1
60310fe4:	83a03000 	movhi	r3, #0
60310fe8:	e3530000 	cmp	r3, #0
60310fec:	13a07001 	movne	r7, #1
60310ff0:	e30832c4 	movw	r3, #33476	; 0x82c4
60310ff4:	e3463032 	movt	r3, #24626	; 0x6032
60310ff8:	e5932000 	ldr	r2, [r3]
60310ffc:	e2822001 	add	r2, r2, #1
60311000:	e5832000 	str	r2, [r3]
60311004:	e5933000 	ldr	r3, [r3]
60311008:	e3530001 	cmp	r3, #1
6031100c:	0a000030 	beq	603110d4 <prvAddNewTaskToReadyList+0x174>
60311010:	e30822d0 	movw	r2, #33488	; 0x82d0
60311014:	e3462032 	movt	r2, #24626	; 0x6032
60311018:	e2861004 	add	r1, r6, #4
6031101c:	e5923000 	ldr	r3, [r2]
60311020:	e2833001 	add	r3, r3, #1
60311024:	e5823000 	str	r3, [r2]
60311028:	e3e02000 	mvn	r2, #0
6031102c:	e5862034 	str	r2, [r6, #52]	; 0x34
60311030:	e586305c 	str	r3, [r6, #92]	; 0x5c
60311034:	e5963034 	ldr	r3, [r6, #52]	; 0x34
60311038:	e3730002 	cmn	r3, #2
6031103c:	0a00001f 	beq	603110c0 <prvAddNewTaskToReadyList+0x160>
60311040:	e30832d4 	movw	r3, #33492	; 0x82d4
60311044:	e3463032 	movt	r3, #24626	; 0x6032
60311048:	e596202c 	ldr	r2, [r6, #44]	; 0x2c
6031104c:	e5930000 	ldr	r0, [r3]
60311050:	e1520000 	cmp	r2, r0
60311054:	e3a00014 	mov	r0, #20
60311058:	85832000 	strhi	r2, [r3]
6031105c:	e30831d8 	movw	r3, #33240	; 0x81d8
60311060:	e3463032 	movt	r3, #24626	; 0x6032
60311064:	e0203290 	mla	r0, r0, r2, r3
60311068:	eb0004fc 	bl	60312460 <vListInsertEnd>
6031106c:	e3083328 	movw	r3, #33576	; 0x8328
60311070:	e3463032 	movt	r3, #24626	; 0x6032
60311074:	e5933000 	ldr	r3, [r3]
60311078:	e3530000 	cmp	r3, #0
6031107c:	0a000001 	beq	60311088 <prvAddNewTaskToReadyList+0x128>
60311080:	e3570001 	cmp	r7, #1
60311084:	9a000001 	bls	60311090 <prvAddNewTaskToReadyList+0x130>
60311088:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
6031108c:	eaffff86 	b	60310eac <vTaskExitCritical>
60311090:	e7953107 	ldr	r3, [r5, r7, lsl #2]
60311094:	e3530000 	cmp	r3, #0
60311098:	0a000004 	beq	603110b0 <prvAddNewTaskToReadyList+0x150>
6031109c:	e7952107 	ldr	r2, [r5, r7, lsl #2]
603110a0:	e596302c 	ldr	r3, [r6, #44]	; 0x2c
603110a4:	e592202c 	ldr	r2, [r2, #44]	; 0x2c
603110a8:	e1520003 	cmp	r2, r3
603110ac:	2afffff5 	bcs	60311088 <prvAddNewTaskToReadyList+0x128>
603110b0:	e1a00007 	mov	r0, r7
603110b4:	ebfffc4f 	bl	603101f8 <prvYieldCore>
603110b8:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
603110bc:	eaffff7a 	b	60310eac <vTaskExitCritical>
603110c0:	e30831d4 	movw	r3, #33236	; 0x81d4
603110c4:	e3463032 	movt	r3, #24626	; 0x6032
603110c8:	e5930000 	ldr	r0, [r3]
603110cc:	eb0004e3 	bl	60312460 <vListInsertEnd>
603110d0:	eaffffe5 	b	6031106c <prvAddNewTaskToReadyList+0x10c>
603110d4:	e30841d8 	movw	r4, #33240	; 0x81d8
603110d8:	e3464032 	movt	r4, #24626	; 0x6032
603110dc:	e28480dc 	add	r8, r4, #220	; 0xdc
603110e0:	e1a00004 	mov	r0, r4
603110e4:	e2844014 	add	r4, r4, #20
603110e8:	eb0004d0 	bl	60312430 <vListInitialise>
603110ec:	e1580004 	cmp	r8, r4
603110f0:	1afffffa 	bne	603110e0 <prvAddNewTaskToReadyList+0x180>
603110f4:	e30892d8 	movw	r9, #33496	; 0x82d8
603110f8:	e3469032 	movt	r9, #24626	; 0x6032
603110fc:	e1a00009 	mov	r0, r9
60311100:	e30882ec 	movw	r8, #33516	; 0x82ec
60311104:	e3468032 	movt	r8, #24626	; 0x6032
60311108:	eb0004c8 	bl	60312430 <vListInitialise>
6031110c:	e1a00008 	mov	r0, r8
60311110:	eb0004c6 	bl	60312430 <vListInitialise>
60311114:	e3084340 	movw	r4, #33600	; 0x8340
60311118:	e3464032 	movt	r4, #24626	; 0x6032
6031111c:	e3080314 	movw	r0, #33556	; 0x8314
60311120:	e3460032 	movt	r0, #24626	; 0x6032
60311124:	eb0004c1 	bl	60312430 <vListInitialise>
60311128:	e1a00004 	mov	r0, r4
6031112c:	eb0004bf 	bl	60312430 <vListInitialise>
60311130:	e3080354 	movw	r0, #33620	; 0x8354
60311134:	e3460032 	movt	r0, #24626	; 0x6032
60311138:	eb0004bc 	bl	60312430 <vListInitialise>
6031113c:	e308032c 	movw	r0, #33580	; 0x832c
60311140:	e3460032 	movt	r0, #24626	; 0x6032
60311144:	eb0004b9 	bl	60312430 <vListInitialise>
60311148:	e30831cc 	movw	r3, #33228	; 0x81cc
6031114c:	e3463032 	movt	r3, #24626	; 0x6032
60311150:	e5839000 	str	r9, [r3]
60311154:	e30831d0 	movw	r3, #33232	; 0x81d0
60311158:	e3463032 	movt	r3, #24626	; 0x6032
6031115c:	e5838000 	str	r8, [r3]
60311160:	e30831d4 	movw	r3, #33236	; 0x81d4
60311164:	e3463032 	movt	r3, #24626	; 0x6032
60311168:	e5834000 	str	r4, [r3]
6031116c:	eaffffa7 	b	60311010 <prvAddNewTaskToReadyList+0xb0>
60311170:	e3a07001 	mov	r7, #1
60311174:	eaffff9d 	b	60310ff0 <prvAddNewTaskToReadyList+0x90>

60311178 <xTaskCreateStatic>:
60311178:	e92d4010 	push	{r4, lr}
6031117c:	e24dd018 	sub	sp, sp, #24
60311180:	e59de024 	ldr	lr, [sp, #36]	; 0x24
60311184:	e59d4028 	ldr	r4, [sp, #40]	; 0x28
60311188:	e3540000 	cmp	r4, #0
6031118c:	135e0000 	cmpne	lr, #0
60311190:	03a0c000 	moveq	ip, #0
60311194:	13a0c001 	movne	ip, #1
60311198:	01a0000c 	moveq	r0, ip
6031119c:	1a000001 	bne	603111a8 <xTaskCreateStatic+0x30>
603111a0:	e28dd018 	add	sp, sp, #24
603111a4:	e8bd8010 	pop	{r4, pc}
603111a8:	e59dc020 	ldr	ip, [sp, #32]
603111ac:	e584e030 	str	lr, [r4, #48]	; 0x30
603111b0:	e58dc000 	str	ip, [sp]
603111b4:	e58d4008 	str	r4, [sp, #8]
603111b8:	e3a0c002 	mov	ip, #2
603111bc:	e5c4c171 	strb	ip, [r4, #369]	; 0x171
603111c0:	e28dc014 	add	ip, sp, #20
603111c4:	e58dc004 	str	ip, [sp, #4]
603111c8:	ebfffc22 	bl	60310258 <prvInitialiseNewTask.constprop.0>
603111cc:	e1a00004 	mov	r0, r4
603111d0:	ebffff62 	bl	60310f60 <prvAddNewTaskToReadyList>
603111d4:	e59d0014 	ldr	r0, [sp, #20]
603111d8:	e28dd018 	add	sp, sp, #24
603111dc:	e8bd8010 	pop	{r4, pc}

603111e0 <xTaskCreate>:
603111e0:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
603111e4:	e1a07000 	mov	r7, r0
603111e8:	e24dd014 	sub	sp, sp, #20
603111ec:	e1a00102 	lsl	r0, r2, #2
603111f0:	e1a05002 	mov	r5, r2
603111f4:	e1a08001 	mov	r8, r1
603111f8:	e1a09003 	mov	r9, r3
603111fc:	eb00096a 	bl	603137ac <pvPortMalloc>
60311200:	e2504000 	subs	r4, r0, #0
60311204:	03e00000 	mvneq	r0, #0
60311208:	0a000013 	beq	6031125c <xTaskCreate+0x7c>
6031120c:	e3a00f5e 	mov	r0, #376	; 0x178
60311210:	eb000965 	bl	603137ac <pvPortMalloc>
60311214:	e2506000 	subs	r6, r0, #0
60311218:	0a000011 	beq	60311264 <xTaskCreate+0x84>
6031121c:	e3a0c000 	mov	ip, #0
60311220:	e5c6c171 	strb	ip, [r6, #369]	; 0x171
60311224:	e59dc034 	ldr	ip, [sp, #52]	; 0x34
60311228:	e5864030 	str	r4, [r6, #48]	; 0x30
6031122c:	e58dc004 	str	ip, [sp, #4]
60311230:	e59dc030 	ldr	ip, [sp, #48]	; 0x30
60311234:	e1a03009 	mov	r3, r9
60311238:	e1a02005 	mov	r2, r5
6031123c:	e1a01008 	mov	r1, r8
60311240:	e1a00007 	mov	r0, r7
60311244:	e58dc000 	str	ip, [sp]
60311248:	e58d6008 	str	r6, [sp, #8]
6031124c:	ebfffc01 	bl	60310258 <prvInitialiseNewTask.constprop.0>
60311250:	e1a00006 	mov	r0, r6
60311254:	ebffff41 	bl	60310f60 <prvAddNewTaskToReadyList>
60311258:	e3a00001 	mov	r0, #1
6031125c:	e28dd014 	add	sp, sp, #20
60311260:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
60311264:	e1a00004 	mov	r0, r4
60311268:	eb00099d 	bl	603138e4 <vPortFree>
6031126c:	e3e00000 	mvn	r0, #0
60311270:	eafffff9 	b	6031125c <xTaskCreate+0x7c>

60311274 <vTaskStartScheduler>:
60311274:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
60311278:	e3086300 	movw	r6, #33536	; 0x8300
6031127c:	e3466032 	movt	r6, #24626	; 0x6032
60311280:	e24dd03c 	sub	sp, sp, #60	; 0x3c
60311284:	e3027174 	movw	r7, #8564	; 0x2174
60311288:	e3467031 	movt	r7, #24625	; 0x6031
6031128c:	e30851c4 	movw	r5, #33220	; 0x81c4
60311290:	e3465032 	movt	r5, #24626	; 0x6032
60311294:	eb0007e2 	bl	60313224 <xTimerCreateTimerTask>
60311298:	e3a04000 	mov	r4, #0
6031129c:	e1a09000 	mov	r9, r0
603112a0:	e3a08049 	mov	r8, #73	; 0x49
603112a4:	e3590000 	cmp	r9, #0
603112a8:	0a00002d 	beq	60311364 <vTaskStartScheduler+0xf0>
603112ac:	e3051938 	movw	r1, #22840	; 0x5938
603112b0:	e3461031 	movt	r1, #24625	; 0x6031
603112b4:	e28d0021 	add	r0, sp, #33	; 0x21
603112b8:	e3a02000 	mov	r2, #0
603112bc:	e5cd8020 	strb	r8, [sp, #32]
603112c0:	e5f13001 	ldrb	r3, [r1, #1]!
603112c4:	e1a0c002 	mov	ip, r2
603112c8:	e3530000 	cmp	r3, #0
603112cc:	e2822001 	add	r2, r2, #1
603112d0:	e4c03001 	strb	r3, [r0], #1
603112d4:	1afffff9 	bne	603112c0 <vTaskStartScheduler+0x4c>
603112d8:	e28c1038 	add	r1, ip, #56	; 0x38
603112dc:	e2822038 	add	r2, r2, #56	; 0x38
603112e0:	e08d2002 	add	r2, sp, r2
603112e4:	e08dc001 	add	ip, sp, r1
603112e8:	e3540000 	cmp	r4, #0
603112ec:	e2841030 	add	r1, r4, #48	; 0x30
603112f0:	e28d0010 	add	r0, sp, #16
603112f4:	e5421018 	strb	r1, [r2, #-24]	; 0xffffffe8
603112f8:	e58d3010 	str	r3, [sp, #16]
603112fc:	e28d2018 	add	r2, sp, #24
60311300:	e28d1014 	add	r1, sp, #20
60311304:	e54c3016 	strb	r3, [ip, #-22]	; 0xffffffea
60311308:	e58d3014 	str	r3, [sp, #20]
6031130c:	0a000018 	beq	60311374 <vTaskStartScheduler+0x100>
60311310:	ebfffaee 	bl	6030fed0 <vApplicationGetPassiveIdleTaskMemory>
60311314:	e59d2014 	ldr	r2, [sp, #20]
60311318:	e59d9010 	ldr	r9, [sp, #16]
6031131c:	e3590000 	cmp	r9, #0
60311320:	13520000 	cmpne	r2, #0
60311324:	13a03001 	movne	r3, #1
60311328:	03a03000 	moveq	r3, #0
6031132c:	1a000012 	bne	6031137c <vTaskStartScheduler+0x108>
60311330:	e1a09003 	mov	r9, r3
60311334:	e5863000 	str	r3, [r6]
60311338:	e7853104 	str	r3, [r5, r4, lsl #2]
6031133c:	e2866004 	add	r6, r6, #4
60311340:	e7950104 	ldr	r0, [r5, r4, lsl #2]
60311344:	e2800004 	add	r0, r0, #4
60311348:	eb000465 	bl	603124e4 <uxListRemove>
6031134c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
60311350:	e3540001 	cmp	r4, #1
60311354:	e5834034 	str	r4, [r3, #52]	; 0x34
60311358:	1a000003 	bne	6031136c <vTaskStartScheduler+0xf8>
6031135c:	e3590001 	cmp	r9, #1
60311360:	0a000018 	beq	603113c8 <vTaskStartScheduler+0x154>
60311364:	e28dd03c 	add	sp, sp, #60	; 0x3c
60311368:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
6031136c:	e3a04001 	mov	r4, #1
60311370:	eaffffcb 	b	603112a4 <vTaskStartScheduler+0x30>
60311374:	ebfffacc 	bl	6030feac <vApplicationGetIdleTaskMemory>
60311378:	eaffffe5 	b	60311314 <vTaskStartScheduler+0xa0>
6031137c:	e5892030 	str	r2, [r9, #48]	; 0x30
60311380:	e3a03000 	mov	r3, #0
60311384:	e59d2018 	ldr	r2, [sp, #24]
60311388:	e28d1020 	add	r1, sp, #32
6031138c:	e3a00002 	mov	r0, #2
60311390:	e5c90171 	strb	r0, [r9, #369]	; 0x171
60311394:	e58d3000 	str	r3, [sp]
60311398:	e28d001c 	add	r0, sp, #28
6031139c:	e58d9008 	str	r9, [sp, #8]
603113a0:	e58d0004 	str	r0, [sp, #4]
603113a4:	e1a00007 	mov	r0, r7
603113a8:	ebfffbaa 	bl	60310258 <prvInitialiseNewTask.constprop.0>
603113ac:	e1a00009 	mov	r0, r9
603113b0:	ebfffeea 	bl	60310f60 <prvAddNewTaskToReadyList>
603113b4:	e59d301c 	ldr	r3, [sp, #28]
603113b8:	e5863000 	str	r3, [r6]
603113bc:	e2539000 	subs	r9, r3, #0
603113c0:	13a09001 	movne	r9, #1
603113c4:	eaffffdb 	b	60311338 <vTaskStartScheduler+0xc4>
603113c8:	ebfffa61 	bl	6030fd54 <ulPortInterruptLock>
603113cc:	ebfffa60 	bl	6030fd54 <ulPortInterruptLock>
603113d0:	e1a04000 	mov	r4, r0
603113d4:	ebfffa79 	bl	6030fdc0 <ulPortGetCoreId>
603113d8:	e1a03000 	mov	r3, r0
603113dc:	e1a00004 	mov	r0, r4
603113e0:	e7954103 	ldr	r4, [r5, r3, lsl #2]
603113e4:	ebfffa5f 	bl	6030fd68 <ulPortInterruptUnLock>
603113e8:	e3062000 	movw	r2, #24576	; 0x6000
603113ec:	e3462031 	movt	r2, #24625	; 0x6031
603113f0:	e3083308 	movw	r3, #33544	; 0x8308
603113f4:	e3463032 	movt	r3, #24626	; 0x6032
603113f8:	e284407c 	add	r4, r4, #124	; 0x7c
603113fc:	e3e01000 	mvn	r1, #0
60311400:	e5824000 	str	r4, [r2]
60311404:	e5831000 	str	r1, [r3]
60311408:	e3082328 	movw	r2, #33576	; 0x8328
6031140c:	e3462032 	movt	r2, #24626	; 0x6032
60311410:	e3083368 	movw	r3, #33640	; 0x8368
60311414:	e3463032 	movt	r3, #24626	; 0x6032
60311418:	e3a01000 	mov	r1, #0
6031141c:	e5829000 	str	r9, [r2]
60311420:	e5831000 	str	r1, [r3]
60311424:	ebfffa15 	bl	6030fc80 <xPortStartScheduler>
60311428:	e28dd03c 	add	sp, sp, #60	; 0x3c
6031142c:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}

60311430 <prvAddCurrentTaskToDelayedList>:
60311430:	e3083368 	movw	r3, #33640	; 0x8368
60311434:	e3463032 	movt	r3, #24626	; 0x6032
60311438:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
6031143c:	e1a06001 	mov	r6, r1
60311440:	e5938000 	ldr	r8, [r3]
60311444:	e1a05000 	mov	r5, r0
60311448:	ebfffa41 	bl	6030fd54 <ulPortInterruptLock>
6031144c:	e1a04000 	mov	r4, r0
60311450:	ebfffa5a 	bl	6030fdc0 <ulPortGetCoreId>
60311454:	e1a03000 	mov	r3, r0
60311458:	e1a00004 	mov	r0, r4
6031145c:	e30841c4 	movw	r4, #33220	; 0x81c4
60311460:	e3464032 	movt	r4, #24626	; 0x6032
60311464:	e7947103 	ldr	r7, [r4, r3, lsl #2]
60311468:	ebfffa3e 	bl	6030fd68 <ulPortInterruptUnLock>
6031146c:	e3a03000 	mov	r3, #0
60311470:	e5c73172 	strb	r3, [r7, #370]	; 0x172
60311474:	ebfffe76 	bl	60310e54 <vTaskEnterCritical>
60311478:	ebfffa35 	bl	6030fd54 <ulPortInterruptLock>
6031147c:	e1a07000 	mov	r7, r0
60311480:	ebfffa4e 	bl	6030fdc0 <ulPortGetCoreId>
60311484:	e1a03000 	mov	r3, r0
60311488:	e1a00007 	mov	r0, r7
6031148c:	e7947103 	ldr	r7, [r4, r3, lsl #2]
60311490:	ebfffa34 	bl	6030fd68 <ulPortInterruptUnLock>
60311494:	e5973034 	ldr	r3, [r7, #52]	; 0x34
60311498:	e3730003 	cmn	r3, #3
6031149c:	0a000049 	beq	603115c8 <prvAddCurrentTaskToDelayedList+0x198>
603114a0:	e2566000 	subs	r6, r6, #0
603114a4:	13a06001 	movne	r6, #1
603114a8:	e3750001 	cmn	r5, #1
603114ac:	13a06000 	movne	r6, #0
603114b0:	e3560000 	cmp	r6, #0
603114b4:	1a000024 	bne	6031154c <prvAddCurrentTaskToDelayedList+0x11c>
603114b8:	e0985005 	adds	r5, r8, r5
603114bc:	23a07001 	movcs	r7, #1
603114c0:	33a07000 	movcc	r7, #0
603114c4:	ebfffa22 	bl	6030fd54 <ulPortInterruptLock>
603114c8:	e1a06000 	mov	r6, r0
603114cc:	ebfffa3b 	bl	6030fdc0 <ulPortGetCoreId>
603114d0:	e1a03000 	mov	r3, r0
603114d4:	e1a00006 	mov	r0, r6
603114d8:	e7946103 	ldr	r6, [r4, r3, lsl #2]
603114dc:	ebfffa21 	bl	6030fd68 <ulPortInterruptUnLock>
603114e0:	e3570000 	cmp	r7, #0
603114e4:	e5865004 	str	r5, [r6, #4]
603114e8:	0a000023 	beq	6031157c <prvAddCurrentTaskToDelayedList+0x14c>
603114ec:	e30831d0 	movw	r3, #33232	; 0x81d0
603114f0:	e3463032 	movt	r3, #24626	; 0x6032
603114f4:	e5936000 	ldr	r6, [r3]
603114f8:	ebfffa15 	bl	6030fd54 <ulPortInterruptLock>
603114fc:	e1a05000 	mov	r5, r0
60311500:	ebfffa2e 	bl	6030fdc0 <ulPortGetCoreId>
60311504:	e1a03000 	mov	r3, r0
60311508:	e1a00005 	mov	r0, r5
6031150c:	e7945103 	ldr	r5, [r4, r3, lsl #2]
60311510:	ebfffa14 	bl	6030fd68 <ulPortInterruptUnLock>
60311514:	e2851004 	add	r1, r5, #4
60311518:	e1a00006 	mov	r0, r6
6031151c:	eb0003da 	bl	6031248c <vListInsert>
60311520:	ebfffa0b 	bl	6030fd54 <ulPortInterruptLock>
60311524:	e1a05000 	mov	r5, r0
60311528:	ebfffa24 	bl	6030fdc0 <ulPortGetCoreId>
6031152c:	e1a03000 	mov	r3, r0
60311530:	e1a00005 	mov	r0, r5
60311534:	e7944103 	ldr	r4, [r4, r3, lsl #2]
60311538:	ebfffa0a 	bl	6030fd68 <ulPortInterruptUnLock>
6031153c:	e3e03001 	mvn	r3, #1
60311540:	e5843034 	str	r3, [r4, #52]	; 0x34
60311544:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
60311548:	eafffe57 	b	60310eac <vTaskExitCritical>
6031154c:	ebfffa00 	bl	6030fd54 <ulPortInterruptLock>
60311550:	e1a05000 	mov	r5, r0
60311554:	ebfffa19 	bl	6030fdc0 <ulPortGetCoreId>
60311558:	e1a03000 	mov	r3, r0
6031155c:	e1a00005 	mov	r0, r5
60311560:	e7945103 	ldr	r5, [r4, r3, lsl #2]
60311564:	ebfff9ff 	bl	6030fd68 <ulPortInterruptUnLock>
60311568:	e2851004 	add	r1, r5, #4
6031156c:	e308032c 	movw	r0, #33580	; 0x832c
60311570:	e3460032 	movt	r0, #24626	; 0x6032
60311574:	eb0003b9 	bl	60312460 <vListInsertEnd>
60311578:	eaffffe8 	b	60311520 <prvAddCurrentTaskToDelayedList+0xf0>
6031157c:	e30831cc 	movw	r3, #33228	; 0x81cc
60311580:	e3463032 	movt	r3, #24626	; 0x6032
60311584:	e5937000 	ldr	r7, [r3]
60311588:	ebfff9f1 	bl	6030fd54 <ulPortInterruptLock>
6031158c:	e1a06000 	mov	r6, r0
60311590:	ebfffa0a 	bl	6030fdc0 <ulPortGetCoreId>
60311594:	e1a03000 	mov	r3, r0
60311598:	e1a00006 	mov	r0, r6
6031159c:	e7946103 	ldr	r6, [r4, r3, lsl #2]
603115a0:	ebfff9f0 	bl	6030fd68 <ulPortInterruptUnLock>
603115a4:	e2861004 	add	r1, r6, #4
603115a8:	e1a00007 	mov	r0, r7
603115ac:	eb0003b6 	bl	6031248c <vListInsert>
603115b0:	e3083308 	movw	r3, #33544	; 0x8308
603115b4:	e3463032 	movt	r3, #24626	; 0x6032
603115b8:	e5932000 	ldr	r2, [r3]
603115bc:	e1520005 	cmp	r2, r5
603115c0:	85835000 	strhi	r5, [r3]
603115c4:	eaffffd5 	b	60311520 <prvAddCurrentTaskToDelayedList+0xf0>
603115c8:	ebfff9e1 	bl	6030fd54 <ulPortInterruptLock>
603115cc:	e1a05000 	mov	r5, r0
603115d0:	ebfff9fa 	bl	6030fdc0 <ulPortGetCoreId>
603115d4:	e1a03000 	mov	r3, r0
603115d8:	e1a00005 	mov	r0, r5
603115dc:	e7945103 	ldr	r5, [r4, r3, lsl #2]
603115e0:	ebfff9e0 	bl	6030fd68 <ulPortInterruptUnLock>
603115e4:	e5953028 	ldr	r3, [r5, #40]	; 0x28
603115e8:	e3530000 	cmp	r3, #0
603115ec:	0affffd4 	beq	60311544 <prvAddCurrentTaskToDelayedList+0x114>
603115f0:	ebfff9d7 	bl	6030fd54 <ulPortInterruptLock>
603115f4:	e1a05000 	mov	r5, r0
603115f8:	ebfff9f0 	bl	6030fdc0 <ulPortGetCoreId>
603115fc:	e1a03000 	mov	r3, r0
60311600:	e1a00005 	mov	r0, r5
60311604:	e7944103 	ldr	r4, [r4, r3, lsl #2]
60311608:	ebfff9d6 	bl	6030fd68 <ulPortInterruptUnLock>
6031160c:	e2840018 	add	r0, r4, #24
60311610:	eb0003b3 	bl	603124e4 <uxListRemove>
60311614:	eaffffca 	b	60311544 <prvAddCurrentTaskToDelayedList+0x114>

60311618 <xTaskIncrementTick>:
60311618:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
6031161c:	e24dd014 	sub	sp, sp, #20
60311620:	ebfff9e6 	bl	6030fdc0 <ulPortGetCoreId>
60311624:	e58d0000 	str	r0, [sp]
60311628:	ebfffe09 	bl	60310e54 <vTaskEnterCritical>
6031162c:	e30832cc 	movw	r3, #33484	; 0x82cc
60311630:	e3463032 	movt	r3, #24626	; 0x6032
60311634:	e5933000 	ldr	r3, [r3]
60311638:	e3530000 	cmp	r3, #0
6031163c:	1a000038 	bne	60311724 <xTaskIncrementTick+0x10c>
60311640:	e3083368 	movw	r3, #33640	; 0x8368
60311644:	e3463032 	movt	r3, #24626	; 0x6032
60311648:	e5937000 	ldr	r7, [r3]
6031164c:	e2877001 	add	r7, r7, #1
60311650:	e3570000 	cmp	r7, #0
60311654:	e5837000 	str	r7, [r3]
60311658:	0a00008a 	beq	60311888 <xTaskIncrementTick+0x270>
6031165c:	e3083308 	movw	r3, #33544	; 0x8308
60311660:	e3463032 	movt	r3, #24626	; 0x6032
60311664:	e58d3008 	str	r3, [sp, #8]
60311668:	e59d3008 	ldr	r3, [sp, #8]
6031166c:	e5933000 	ldr	r3, [r3]
60311670:	e1530007 	cmp	r3, r7
60311674:	9a000034 	bls	6031174c <xTaskIncrementTick+0x134>
60311678:	e30851c4 	movw	r5, #33220	; 0x81c4
6031167c:	e3465032 	movt	r5, #24626	; 0x6032
60311680:	e30891d8 	movw	r9, #33240	; 0x81d8
60311684:	e3469032 	movt	r9, #24626	; 0x6032
60311688:	e308636c 	movw	r6, #33644	; 0x836c
6031168c:	e3466032 	movt	r6, #24626	; 0x6032
60311690:	e5953000 	ldr	r3, [r5]
60311694:	e3a02014 	mov	r2, #20
60311698:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
6031169c:	e0030392 	mul	r3, r2, r3
603116a0:	e3a02014 	mov	r2, #20
603116a4:	e7993003 	ldr	r3, [r9, r3]
603116a8:	e3530000 	cmp	r3, #0
603116ac:	13a03001 	movne	r3, #1
603116b0:	15863000 	strne	r3, [r6]
603116b4:	e5953004 	ldr	r3, [r5, #4]
603116b8:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
603116bc:	e0030392 	mul	r3, r2, r3
603116c0:	e7993003 	ldr	r3, [r9, r3]
603116c4:	e3530000 	cmp	r3, #0
603116c8:	13a03001 	movne	r3, #1
603116cc:	15863004 	strne	r3, [r6, #4]
603116d0:	e5963000 	ldr	r3, [r6]
603116d4:	e3530000 	cmp	r3, #0
603116d8:	0a000004 	beq	603116f0 <xTaskIncrementTick+0xd8>
603116dc:	e59d3000 	ldr	r3, [sp]
603116e0:	e3530000 	cmp	r3, #0
603116e4:	0a00007f 	beq	603118e8 <xTaskIncrementTick+0x2d0>
603116e8:	e3a00000 	mov	r0, #0
603116ec:	ebfffac1 	bl	603101f8 <prvYieldCore>
603116f0:	e5964004 	ldr	r4, [r6, #4]
603116f4:	e3540000 	cmp	r4, #0
603116f8:	0a00000f 	beq	6031173c <xTaskIncrementTick+0x124>
603116fc:	e59d3000 	ldr	r3, [sp]
60311700:	e3530001 	cmp	r3, #1
60311704:	13a04000 	movne	r4, #0
60311708:	0a000079 	beq	603118f4 <xTaskIncrementTick+0x2dc>
6031170c:	e3a00001 	mov	r0, #1
60311710:	ebfffab8 	bl	603101f8 <prvYieldCore>
60311714:	ebfffde4 	bl	60310eac <vTaskExitCritical>
60311718:	e1a00004 	mov	r0, r4
6031171c:	e28dd014 	add	sp, sp, #20
60311720:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
60311724:	e3083310 	movw	r3, #33552	; 0x8310
60311728:	e3463032 	movt	r3, #24626	; 0x6032
6031172c:	e3a04000 	mov	r4, #0
60311730:	e5932000 	ldr	r2, [r3]
60311734:	e2822001 	add	r2, r2, #1
60311738:	e5832000 	str	r2, [r3]
6031173c:	ebfffdda 	bl	60310eac <vTaskExitCritical>
60311740:	e1a00004 	mov	r0, r4
60311744:	e28dd014 	add	sp, sp, #20
60311748:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6031174c:	e30841cc 	movw	r4, #33228	; 0x81cc
60311750:	e3464032 	movt	r4, #24626	; 0x6032
60311754:	e30851c4 	movw	r5, #33220	; 0x81c4
60311758:	e3465032 	movt	r5, #24626	; 0x6032
6031175c:	e30891d8 	movw	r9, #33240	; 0x81d8
60311760:	e3469032 	movt	r9, #24626	; 0x6032
60311764:	e308636c 	movw	r6, #33644	; 0x836c
60311768:	e3466032 	movt	r6, #24626	; 0x6032
6031176c:	e308a2d4 	movw	sl, #33492	; 0x82d4
60311770:	e346a032 	movt	sl, #24626	; 0x6032
60311774:	e30831d4 	movw	r3, #33236	; 0x81d4
60311778:	e3463032 	movt	r3, #24626	; 0x6032
6031177c:	e58d9004 	str	r9, [sp, #4]
60311780:	e58d300c 	str	r3, [sp, #12]
60311784:	ea000005 	b	603117a0 <xTaskIncrementTick+0x188>
60311788:	e59d2000 	ldr	r2, [sp]
6031178c:	e7962102 	ldr	r2, [r6, r2, lsl #2]
60311790:	e3520000 	cmp	r2, #0
60311794:	1a000024 	bne	6031182c <xTaskIncrementTick+0x214>
60311798:	e3a03001 	mov	r3, #1
6031179c:	e7863102 	str	r3, [r6, r2, lsl #2]
603117a0:	e5943000 	ldr	r3, [r4]
603117a4:	e5933000 	ldr	r3, [r3]
603117a8:	e3530000 	cmp	r3, #0
603117ac:	0a00002b 	beq	60311860 <xTaskIncrementTick+0x248>
603117b0:	e3a08014 	mov	r8, #20
603117b4:	e5943000 	ldr	r3, [r4]
603117b8:	e593300c 	ldr	r3, [r3, #12]
603117bc:	e593900c 	ldr	r9, [r3, #12]
603117c0:	e5992004 	ldr	r2, [r9, #4]
603117c4:	e1570002 	cmp	r7, r2
603117c8:	3a00004e 	bcc	60311908 <xTaskIncrementTick+0x2f0>
603117cc:	e289b004 	add	fp, r9, #4
603117d0:	e1a0000b 	mov	r0, fp
603117d4:	eb000342 	bl	603124e4 <uxListRemove>
603117d8:	e5993028 	ldr	r3, [r9, #40]	; 0x28
603117dc:	e3530000 	cmp	r3, #0
603117e0:	0a000001 	beq	603117ec <xTaskIncrementTick+0x1d4>
603117e4:	e2890018 	add	r0, r9, #24
603117e8:	eb00033d 	bl	603124e4 <uxListRemove>
603117ec:	e5993034 	ldr	r3, [r9, #52]	; 0x34
603117f0:	e3730002 	cmn	r3, #2
603117f4:	0a00001e 	beq	60311874 <xTaskIncrementTick+0x25c>
603117f8:	e599002c 	ldr	r0, [r9, #44]	; 0x2c
603117fc:	e59a3000 	ldr	r3, [sl]
60311800:	e1a0100b 	mov	r1, fp
60311804:	e1500003 	cmp	r0, r3
60311808:	e59d3004 	ldr	r3, [sp, #4]
6031180c:	858a0000 	strhi	r0, [sl]
60311810:	e0203098 	mla	r0, r8, r0, r3
60311814:	eb000311 	bl	60312460 <vListInsertEnd>
60311818:	e5952000 	ldr	r2, [r5]
6031181c:	e599302c 	ldr	r3, [r9, #44]	; 0x2c
60311820:	e592202c 	ldr	r2, [r2, #44]	; 0x2c
60311824:	e1530002 	cmp	r3, r2
60311828:	2affffd6 	bcs	60311788 <xTaskIncrementTick+0x170>
6031182c:	e5952004 	ldr	r2, [r5, #4]
60311830:	e592202c 	ldr	r2, [r2, #44]	; 0x2c
60311834:	e1530002 	cmp	r3, r2
60311838:	3a000004 	bcc	60311850 <xTaskIncrementTick+0x238>
6031183c:	e59d3000 	ldr	r3, [sp]
60311840:	e7963103 	ldr	r3, [r6, r3, lsl #2]
60311844:	e3530000 	cmp	r3, #0
60311848:	03a02001 	moveq	r2, #1
6031184c:	0affffd1 	beq	60311798 <xTaskIncrementTick+0x180>
60311850:	e5943000 	ldr	r3, [r4]
60311854:	e5933000 	ldr	r3, [r3]
60311858:	e3530000 	cmp	r3, #0
6031185c:	1affffd4 	bne	603117b4 <xTaskIncrementTick+0x19c>
60311860:	e59d2008 	ldr	r2, [sp, #8]
60311864:	e3e03000 	mvn	r3, #0
60311868:	e59d9004 	ldr	r9, [sp, #4]
6031186c:	e5823000 	str	r3, [r2]
60311870:	eaffff86 	b	60311690 <xTaskIncrementTick+0x78>
60311874:	e59d300c 	ldr	r3, [sp, #12]
60311878:	e1a0100b 	mov	r1, fp
6031187c:	e5930000 	ldr	r0, [r3]
60311880:	eb0002f6 	bl	60312460 <vListInsertEnd>
60311884:	eaffffe3 	b	60311818 <xTaskIncrementTick+0x200>
60311888:	e30841cc 	movw	r4, #33228	; 0x81cc
6031188c:	e3464032 	movt	r4, #24626	; 0x6032
60311890:	e30821d0 	movw	r2, #33232	; 0x81d0
60311894:	e3462032 	movt	r2, #24626	; 0x6032
60311898:	e5941000 	ldr	r1, [r4]
6031189c:	e308330c 	movw	r3, #33548	; 0x830c
603118a0:	e3463032 	movt	r3, #24626	; 0x6032
603118a4:	e5920000 	ldr	r0, [r2]
603118a8:	e5840000 	str	r0, [r4]
603118ac:	e5821000 	str	r1, [r2]
603118b0:	e5932000 	ldr	r2, [r3]
603118b4:	e2822001 	add	r2, r2, #1
603118b8:	e5832000 	str	r2, [r3]
603118bc:	e5943000 	ldr	r3, [r4]
603118c0:	e5933000 	ldr	r3, [r3]
603118c4:	e3530000 	cmp	r3, #0
603118c8:	1a000012 	bne	60311918 <xTaskIncrementTick+0x300>
603118cc:	e3083308 	movw	r3, #33544	; 0x8308
603118d0:	e3463032 	movt	r3, #24626	; 0x6032
603118d4:	e1a02003 	mov	r2, r3
603118d8:	e58d3008 	str	r3, [sp, #8]
603118dc:	e3e03000 	mvn	r3, #0
603118e0:	e5823000 	str	r3, [r2]
603118e4:	eaffff5f 	b	60311668 <xTaskIncrementTick+0x50>
603118e8:	e5963004 	ldr	r3, [r6, #4]
603118ec:	e3530000 	cmp	r3, #0
603118f0:	1a000011 	bne	6031193c <xTaskIncrementTick+0x324>
603118f4:	e3a04001 	mov	r4, #1
603118f8:	ebfffd6b 	bl	60310eac <vTaskExitCritical>
603118fc:	e1a00004 	mov	r0, r4
60311900:	e28dd014 	add	sp, sp, #20
60311904:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
60311908:	e59d3008 	ldr	r3, [sp, #8]
6031190c:	e59d9004 	ldr	r9, [sp, #4]
60311910:	e5832000 	str	r2, [r3]
60311914:	eaffff5d 	b	60311690 <xTaskIncrementTick+0x78>
60311918:	e5943000 	ldr	r3, [r4]
6031191c:	e3082308 	movw	r2, #33544	; 0x8308
60311920:	e3462032 	movt	r2, #24626	; 0x6032
60311924:	e593300c 	ldr	r3, [r3, #12]
60311928:	e58d2008 	str	r2, [sp, #8]
6031192c:	e593300c 	ldr	r3, [r3, #12]
60311930:	e5933004 	ldr	r3, [r3, #4]
60311934:	e5823000 	str	r3, [r2]
60311938:	eaffff4a 	b	60311668 <xTaskIncrementTick+0x50>
6031193c:	e3a04001 	mov	r4, #1
60311940:	eaffff71 	b	6031170c <xTaskIncrementTick+0xf4>

60311944 <xTaskResumeAll.part.0>:
60311944:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
60311948:	e24dd00c 	sub	sp, sp, #12
6031194c:	ebfffd40 	bl	60310e54 <vTaskEnterCritical>
60311950:	ebfff91a 	bl	6030fdc0 <ulPortGetCoreId>
60311954:	e30832cc 	movw	r3, #33484	; 0x82cc
60311958:	e3463032 	movt	r3, #24626	; 0x6032
6031195c:	e5932000 	ldr	r2, [r3]
60311960:	e2422001 	sub	r2, r2, #1
60311964:	e5832000 	str	r2, [r3]
60311968:	e5933000 	ldr	r3, [r3]
6031196c:	e3530000 	cmp	r3, #0
60311970:	13a04000 	movne	r4, #0
60311974:	1a000057 	bne	60311ad8 <xTaskResumeAll.part.0+0x194>
60311978:	e30832c4 	movw	r3, #33476	; 0x82c4
6031197c:	e3463032 	movt	r3, #24626	; 0x6032
60311980:	e5934000 	ldr	r4, [r3]
60311984:	e3540000 	cmp	r4, #0
60311988:	0a000052 	beq	60311ad8 <xTaskResumeAll.part.0+0x194>
6031198c:	e3086314 	movw	r6, #33556	; 0x8314
60311990:	e3466032 	movt	r6, #24626	; 0x6032
60311994:	e1a05000 	mov	r5, r0
60311998:	e5963000 	ldr	r3, [r6]
6031199c:	e3530000 	cmp	r3, #0
603119a0:	0308936c 	movweq	r9, #33644	; 0x836c
603119a4:	03469032 	movteq	r9, #24626	; 0x6032
603119a8:	0a00003b 	beq	60311a9c <xTaskResumeAll.part.0+0x158>
603119ac:	e30881c4 	movw	r8, #33220	; 0x81c4
603119b0:	e3468032 	movt	r8, #24626	; 0x6032
603119b4:	e308936c 	movw	r9, #33644	; 0x836c
603119b8:	e3469032 	movt	r9, #24626	; 0x6032
603119bc:	e30872d4 	movw	r7, #33492	; 0x82d4
603119c0:	e3467032 	movt	r7, #24626	; 0x6032
603119c4:	e308a1d8 	movw	sl, #33240	; 0x81d8
603119c8:	e346a032 	movt	sl, #24626	; 0x6032
603119cc:	e30831d4 	movw	r3, #33236	; 0x81d4
603119d0:	e3463032 	movt	r3, #24626	; 0x6032
603119d4:	e58d3004 	str	r3, [sp, #4]
603119d8:	ea00000e 	b	60311a18 <xTaskResumeAll.part.0+0xd4>
603119dc:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
603119e0:	e5972000 	ldr	r2, [r7]
603119e4:	e1530002 	cmp	r3, r2
603119e8:	e020a390 	mla	r0, r0, r3, sl
603119ec:	85873000 	strhi	r3, [r7]
603119f0:	eb00029a 	bl	60312460 <vListInsertEnd>
603119f4:	e7983105 	ldr	r3, [r8, r5, lsl #2]
603119f8:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
603119fc:	e3a01001 	mov	r1, #1
60311a00:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
60311a04:	e1520003 	cmp	r2, r3
60311a08:	27891105 	strcs	r1, [r9, r5, lsl #2]
60311a0c:	e5963000 	ldr	r3, [r6]
60311a10:	e3530000 	cmp	r3, #0
60311a14:	0a00000f 	beq	60311a58 <xTaskResumeAll.part.0+0x114>
60311a18:	e596300c 	ldr	r3, [r6, #12]
60311a1c:	e593400c 	ldr	r4, [r3, #12]
60311a20:	e284b004 	add	fp, r4, #4
60311a24:	e2840018 	add	r0, r4, #24
60311a28:	eb0002ad 	bl	603124e4 <uxListRemove>
60311a2c:	e1a0000b 	mov	r0, fp
60311a30:	eb0002ab 	bl	603124e4 <uxListRemove>
60311a34:	e5943034 	ldr	r3, [r4, #52]	; 0x34
60311a38:	e3a00014 	mov	r0, #20
60311a3c:	e1a0100b 	mov	r1, fp
60311a40:	e3730002 	cmn	r3, #2
60311a44:	1affffe4 	bne	603119dc <xTaskResumeAll.part.0+0x98>
60311a48:	e59d3004 	ldr	r3, [sp, #4]
60311a4c:	e5930000 	ldr	r0, [r3]
60311a50:	eb000282 	bl	60312460 <vListInsertEnd>
60311a54:	eaffffe6 	b	603119f4 <xTaskResumeAll.part.0+0xb0>
60311a58:	e3540000 	cmp	r4, #0
60311a5c:	0a00000e 	beq	60311a9c <xTaskResumeAll.part.0+0x158>
60311a60:	e30831cc 	movw	r3, #33228	; 0x81cc
60311a64:	e3463032 	movt	r3, #24626	; 0x6032
60311a68:	e5932000 	ldr	r2, [r3]
60311a6c:	e5922000 	ldr	r2, [r2]
60311a70:	e3520000 	cmp	r2, #0
60311a74:	03083308 	movweq	r3, #33544	; 0x8308
60311a78:	15932000 	ldrne	r2, [r3]
60311a7c:	03463032 	movteq	r3, #24626	; 0x6032
60311a80:	13083308 	movwne	r3, #33544	; 0x8308
60311a84:	1592200c 	ldrne	r2, [r2, #12]
60311a88:	13463032 	movtne	r3, #24626	; 0x6032
60311a8c:	03e02000 	mvneq	r2, #0
60311a90:	1592200c 	ldrne	r2, [r2, #12]
60311a94:	15922004 	ldrne	r2, [r2, #4]
60311a98:	e5832000 	str	r2, [r3]
60311a9c:	e3086310 	movw	r6, #33552	; 0x8310
60311aa0:	e3466032 	movt	r6, #24626	; 0x6032
60311aa4:	e5964000 	ldr	r4, [r6]
60311aa8:	e3540000 	cmp	r4, #0
60311aac:	0a000006 	beq	60311acc <xTaskResumeAll.part.0+0x188>
60311ab0:	e3a07001 	mov	r7, #1
60311ab4:	ebfffed7 	bl	60311618 <xTaskIncrementTick>
60311ab8:	e3500000 	cmp	r0, #0
60311abc:	17897105 	strne	r7, [r9, r5, lsl #2]
60311ac0:	e2544001 	subs	r4, r4, #1
60311ac4:	1afffffa 	bne	60311ab4 <xTaskResumeAll.part.0+0x170>
60311ac8:	e5864000 	str	r4, [r6]
60311acc:	e7994105 	ldr	r4, [r9, r5, lsl #2]
60311ad0:	e2544000 	subs	r4, r4, #0
60311ad4:	13a04001 	movne	r4, #1
60311ad8:	ebfffcf3 	bl	60310eac <vTaskExitCritical>
60311adc:	e1a00004 	mov	r0, r4
60311ae0:	e28dd00c 	add	sp, sp, #12
60311ae4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

60311ae8 <xTaskResumeAll>:
60311ae8:	e3083328 	movw	r3, #33576	; 0x8328
60311aec:	e3463032 	movt	r3, #24626	; 0x6032
60311af0:	e5930000 	ldr	r0, [r3]
60311af4:	e3500000 	cmp	r0, #0
60311af8:	012fff1e 	bxeq	lr
60311afc:	eaffff90 	b	60311944 <xTaskResumeAll.part.0>

60311b00 <vTaskPlaceOnEventList>:
60311b00:	e92d4070 	push	{r4, r5, r6, lr}
60311b04:	e1a04001 	mov	r4, r1
60311b08:	e1a05000 	mov	r5, r0
60311b0c:	ebfffcd0 	bl	60310e54 <vTaskEnterCritical>
60311b10:	ebfff88f 	bl	6030fd54 <ulPortInterruptLock>
60311b14:	e1a06000 	mov	r6, r0
60311b18:	ebfff8a8 	bl	6030fdc0 <ulPortGetCoreId>
60311b1c:	e30831c4 	movw	r3, #33220	; 0x81c4
60311b20:	e3463032 	movt	r3, #24626	; 0x6032
60311b24:	e1a02000 	mov	r2, r0
60311b28:	e1a00006 	mov	r0, r6
60311b2c:	e7936102 	ldr	r6, [r3, r2, lsl #2]
60311b30:	ebfff88c 	bl	6030fd68 <ulPortInterruptUnLock>
60311b34:	e2861018 	add	r1, r6, #24
60311b38:	e1a00005 	mov	r0, r5
60311b3c:	eb000252 	bl	6031248c <vListInsert>
60311b40:	e1a00004 	mov	r0, r4
60311b44:	e3a01001 	mov	r1, #1
60311b48:	ebfffe38 	bl	60311430 <prvAddCurrentTaskToDelayedList>
60311b4c:	e8bd4070 	pop	{r4, r5, r6, lr}
60311b50:	eafffcd5 	b	60310eac <vTaskExitCritical>

60311b54 <vTaskPlaceOnEventListRestricted>:
60311b54:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60311b58:	e1a04002 	mov	r4, r2
60311b5c:	e1a05001 	mov	r5, r1
60311b60:	e1a06000 	mov	r6, r0
60311b64:	ebfffcba 	bl	60310e54 <vTaskEnterCritical>
60311b68:	ebfff879 	bl	6030fd54 <ulPortInterruptLock>
60311b6c:	e1a07000 	mov	r7, r0
60311b70:	ebfff892 	bl	6030fdc0 <ulPortGetCoreId>
60311b74:	e30831c4 	movw	r3, #33220	; 0x81c4
60311b78:	e3463032 	movt	r3, #24626	; 0x6032
60311b7c:	e1a02000 	mov	r2, r0
60311b80:	e1a00007 	mov	r0, r7
60311b84:	e7937102 	ldr	r7, [r3, r2, lsl #2]
60311b88:	ebfff876 	bl	6030fd68 <ulPortInterruptUnLock>
60311b8c:	e1a00006 	mov	r0, r6
60311b90:	e2871018 	add	r1, r7, #24
60311b94:	eb000231 	bl	60312460 <vListInsertEnd>
60311b98:	e3540000 	cmp	r4, #0
60311b9c:	e1a01004 	mov	r1, r4
60311ba0:	01a00005 	moveq	r0, r5
60311ba4:	13e00000 	mvnne	r0, #0
60311ba8:	ebfffe20 	bl	60311430 <prvAddCurrentTaskToDelayedList>
60311bac:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
60311bb0:	eafffcbd 	b	60310eac <vTaskExitCritical>

60311bb4 <vTaskPlaceRemoveFromEventList>:
60311bb4:	e92d4070 	push	{r4, r5, r6, lr}
60311bb8:	ebfffca5 	bl	60310e54 <vTaskEnterCritical>
60311bbc:	e30841c4 	movw	r4, #33220	; 0x81c4
60311bc0:	e3464032 	movt	r4, #24626	; 0x6032
60311bc4:	ebfff862 	bl	6030fd54 <ulPortInterruptLock>
60311bc8:	e1a05000 	mov	r5, r0
60311bcc:	ebfff87b 	bl	6030fdc0 <ulPortGetCoreId>
60311bd0:	e1a03000 	mov	r3, r0
60311bd4:	e1a00005 	mov	r0, r5
60311bd8:	e7945103 	ldr	r5, [r4, r3, lsl #2]
60311bdc:	ebfff861 	bl	6030fd68 <ulPortInterruptUnLock>
60311be0:	e2850018 	add	r0, r5, #24
60311be4:	eb00023e 	bl	603124e4 <uxListRemove>
60311be8:	ebfff859 	bl	6030fd54 <ulPortInterruptLock>
60311bec:	e1a05000 	mov	r5, r0
60311bf0:	ebfff872 	bl	6030fdc0 <ulPortGetCoreId>
60311bf4:	e1a03000 	mov	r3, r0
60311bf8:	e1a00005 	mov	r0, r5
60311bfc:	e7945103 	ldr	r5, [r4, r3, lsl #2]
60311c00:	ebfff858 	bl	6030fd68 <ulPortInterruptUnLock>
60311c04:	e2850004 	add	r0, r5, #4
60311c08:	eb000235 	bl	603124e4 <uxListRemove>
60311c0c:	ebfff86b 	bl	6030fdc0 <ulPortGetCoreId>
60311c10:	e1a05000 	mov	r5, r0
60311c14:	ebfff84e 	bl	6030fd54 <ulPortInterruptLock>
60311c18:	e1a06000 	mov	r6, r0
60311c1c:	ebfff867 	bl	6030fdc0 <ulPortGetCoreId>
60311c20:	e1a03000 	mov	r3, r0
60311c24:	e1a00006 	mov	r0, r6
60311c28:	e7944103 	ldr	r4, [r4, r3, lsl #2]
60311c2c:	ebfff84d 	bl	6030fd68 <ulPortInterruptUnLock>
60311c30:	e5845034 	str	r5, [r4, #52]	; 0x34
60311c34:	e8bd4070 	pop	{r4, r5, r6, lr}
60311c38:	eafffc9b 	b	60310eac <vTaskExitCritical>

60311c3c <xTaskRemoveFromEventList>:
60311c3c:	e92d4070 	push	{r4, r5, r6, lr}
60311c40:	e1a04000 	mov	r4, r0
60311c44:	ebfffc82 	bl	60310e54 <vTaskEnterCritical>
60311c48:	e594300c 	ldr	r3, [r4, #12]
60311c4c:	e593400c 	ldr	r4, [r3, #12]
60311c50:	e2845018 	add	r5, r4, #24
60311c54:	e1a00005 	mov	r0, r5
60311c58:	eb000221 	bl	603124e4 <uxListRemove>
60311c5c:	e30832cc 	movw	r3, #33484	; 0x82cc
60311c60:	e3463032 	movt	r3, #24626	; 0x6032
60311c64:	e5933000 	ldr	r3, [r3]
60311c68:	e3530000 	cmp	r3, #0
60311c6c:	1a000021 	bne	60311cf8 <xTaskRemoveFromEventList+0xbc>
60311c70:	e2845004 	add	r5, r4, #4
60311c74:	e1a00005 	mov	r0, r5
60311c78:	eb000219 	bl	603124e4 <uxListRemove>
60311c7c:	e5943034 	ldr	r3, [r4, #52]	; 0x34
60311c80:	e3730002 	cmn	r3, #2
60311c84:	0a00002b 	beq	60311d38 <xTaskRemoveFromEventList+0xfc>
60311c88:	e30832d4 	movw	r3, #33492	; 0x82d4
60311c8c:	e3463032 	movt	r3, #24626	; 0x6032
60311c90:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
60311c94:	e3a00014 	mov	r0, #20
60311c98:	e5931000 	ldr	r1, [r3]
60311c9c:	e1520001 	cmp	r2, r1
60311ca0:	85832000 	strhi	r2, [r3]
60311ca4:	e30831d8 	movw	r3, #33240	; 0x81d8
60311ca8:	e3463032 	movt	r3, #24626	; 0x6032
60311cac:	e1a01005 	mov	r1, r5
60311cb0:	e0203290 	mla	r0, r0, r2, r3
60311cb4:	eb0001e9 	bl	60312460 <vListInsertEnd>
60311cb8:	e30831cc 	movw	r3, #33228	; 0x81cc
60311cbc:	e3463032 	movt	r3, #24626	; 0x6032
60311cc0:	e5932000 	ldr	r2, [r3]
60311cc4:	e5922000 	ldr	r2, [r2]
60311cc8:	e3520000 	cmp	r2, #0
60311ccc:	03083308 	movweq	r3, #33544	; 0x8308
60311cd0:	15932000 	ldrne	r2, [r3]
60311cd4:	03463032 	movteq	r3, #24626	; 0x6032
60311cd8:	13083308 	movwne	r3, #33544	; 0x8308
60311cdc:	1592200c 	ldrne	r2, [r2, #12]
60311ce0:	13463032 	movtne	r3, #24626	; 0x6032
60311ce4:	03e02000 	mvneq	r2, #0
60311ce8:	1592200c 	ldrne	r2, [r2, #12]
60311cec:	15922004 	ldrne	r2, [r2, #4]
60311cf0:	e5832000 	str	r2, [r3]
60311cf4:	ea000003 	b	60311d08 <xTaskRemoveFromEventList+0xcc>
60311cf8:	e3080314 	movw	r0, #33556	; 0x8314
60311cfc:	e3460032 	movt	r0, #24626	; 0x6032
60311d00:	e1a01005 	mov	r1, r5
60311d04:	eb0001d5 	bl	60312460 <vListInsertEnd>
60311d08:	e3a02000 	mov	r2, #0
60311d0c:	e3a01001 	mov	r1, #1
60311d10:	e1a00004 	mov	r0, r4
60311d14:	ebfff9a0 	bl	6031039c <prvYieldForTask.isra.0>
60311d18:	ebfff828 	bl	6030fdc0 <ulPortGetCoreId>
60311d1c:	e308336c 	movw	r3, #33644	; 0x836c
60311d20:	e3463032 	movt	r3, #24626	; 0x6032
60311d24:	e7934100 	ldr	r4, [r3, r0, lsl #2]
60311d28:	ebfffc5f 	bl	60310eac <vTaskExitCritical>
60311d2c:	e2540000 	subs	r0, r4, #0
60311d30:	13a00001 	movne	r0, #1
60311d34:	e8bd8070 	pop	{r4, r5, r6, pc}
60311d38:	e30831d4 	movw	r3, #33236	; 0x81d4
60311d3c:	e3463032 	movt	r3, #24626	; 0x6032
60311d40:	e1a01005 	mov	r1, r5
60311d44:	e5930000 	ldr	r0, [r3]
60311d48:	eb0001c4 	bl	60312460 <vListInsertEnd>
60311d4c:	eaffffd9 	b	60311cb8 <xTaskRemoveFromEventList+0x7c>

60311d50 <xTaskCheckForTimeOut>:
60311d50:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
60311d54:	e1a04000 	mov	r4, r0
60311d58:	e3086368 	movw	r6, #33640	; 0x8368
60311d5c:	e3466032 	movt	r6, #24626	; 0x6032
60311d60:	e1a07001 	mov	r7, r1
60311d64:	ebfffc3a 	bl	60310e54 <vTaskEnterCritical>
60311d68:	e5968000 	ldr	r8, [r6]
60311d6c:	e5949004 	ldr	r9, [r4, #4]
60311d70:	ebfff7f7 	bl	6030fd54 <ulPortInterruptLock>
60311d74:	e1a05000 	mov	r5, r0
60311d78:	ebfff810 	bl	6030fdc0 <ulPortGetCoreId>
60311d7c:	e1a03000 	mov	r3, r0
60311d80:	e1a00005 	mov	r0, r5
60311d84:	e30851c4 	movw	r5, #33220	; 0x81c4
60311d88:	e3465032 	movt	r5, #24626	; 0x6032
60311d8c:	e795a103 	ldr	sl, [r5, r3, lsl #2]
60311d90:	ebfff7f4 	bl	6030fd68 <ulPortInterruptUnLock>
60311d94:	e5da0172 	ldrb	r0, [sl, #370]	; 0x172
60311d98:	e3500000 	cmp	r0, #0
60311d9c:	1a00001d 	bne	60311e18 <xTaskCheckForTimeOut+0xc8>
60311da0:	e5973000 	ldr	r3, [r7]
60311da4:	e3730001 	cmn	r3, #1
60311da8:	01a06000 	moveq	r6, r0
60311dac:	0a000009 	beq	60311dd8 <xTaskCheckForTimeOut+0x88>
60311db0:	e308230c 	movw	r2, #33548	; 0x830c
60311db4:	e3462032 	movt	r2, #24626	; 0x6032
60311db8:	e5940000 	ldr	r0, [r4]
60311dbc:	e5921000 	ldr	r1, [r2]
60311dc0:	e1500001 	cmp	r0, r1
60311dc4:	0a000006 	beq	60311de4 <xTaskCheckForTimeOut+0x94>
60311dc8:	e5941004 	ldr	r1, [r4, #4]
60311dcc:	e1510008 	cmp	r1, r8
60311dd0:	93a06001 	movls	r6, #1
60311dd4:	8a000002 	bhi	60311de4 <xTaskCheckForTimeOut+0x94>
60311dd8:	ebfffc33 	bl	60310eac <vTaskExitCritical>
60311ddc:	e1a00006 	mov	r0, r6
60311de0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
60311de4:	e0481009 	sub	r1, r8, r9
60311de8:	e1530001 	cmp	r3, r1
60311dec:	80433008 	subhi	r3, r3, r8
60311df0:	80839009 	addhi	r9, r3, r9
60311df4:	85922000 	ldrhi	r2, [r2]
60311df8:	85963000 	ldrhi	r3, [r6]
60311dfc:	93a03000 	movls	r3, #0
60311e00:	85879000 	strhi	r9, [r7]
60311e04:	83a06000 	movhi	r6, #0
60311e08:	93a06001 	movls	r6, #1
60311e0c:	81c420f0 	strdhi	r2, [r4]
60311e10:	95873000 	strls	r3, [r7]
60311e14:	eaffffef 	b	60311dd8 <xTaskCheckForTimeOut+0x88>
60311e18:	ebfff7cd 	bl	6030fd54 <ulPortInterruptLock>
60311e1c:	e1a04000 	mov	r4, r0
60311e20:	ebfff7e6 	bl	6030fdc0 <ulPortGetCoreId>
60311e24:	e1a03000 	mov	r3, r0
60311e28:	e1a00004 	mov	r0, r4
60311e2c:	e3a06001 	mov	r6, #1
60311e30:	e7954103 	ldr	r4, [r5, r3, lsl #2]
60311e34:	ebfff7cb 	bl	6030fd68 <ulPortInterruptUnLock>
60311e38:	e3a03000 	mov	r3, #0
60311e3c:	e5c43172 	strb	r3, [r4, #370]	; 0x172
60311e40:	eaffffe4 	b	60311dd8 <xTaskCheckForTimeOut+0x88>

60311e44 <xTaskPriorityInherit>:
60311e44:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60311e48:	e2504000 	subs	r4, r0, #0
60311e4c:	0a00002e 	beq	60311f0c <xTaskPriorityInherit+0xc8>
60311e50:	e594702c 	ldr	r7, [r4, #44]	; 0x2c
60311e54:	e30851c4 	movw	r5, #33220	; 0x81c4
60311e58:	e3465032 	movt	r5, #24626	; 0x6032
60311e5c:	ebfff7bc 	bl	6030fd54 <ulPortInterruptLock>
60311e60:	e1a06000 	mov	r6, r0
60311e64:	ebfff7d5 	bl	6030fdc0 <ulPortGetCoreId>
60311e68:	e1a03000 	mov	r3, r0
60311e6c:	e1a00006 	mov	r0, r6
60311e70:	e7956103 	ldr	r6, [r5, r3, lsl #2]
60311e74:	ebfff7bb 	bl	6030fd68 <ulPortInterruptUnLock>
60311e78:	e596302c 	ldr	r3, [r6, #44]	; 0x2c
60311e7c:	e1570003 	cmp	r7, r3
60311e80:	2a000023 	bcs	60311f14 <xTaskPriorityInherit+0xd0>
60311e84:	e5943018 	ldr	r3, [r4, #24]
60311e88:	e3530000 	cmp	r3, #0
60311e8c:	ba000009 	blt	60311eb8 <xTaskPriorityInherit+0x74>
60311e90:	ebfff7af 	bl	6030fd54 <ulPortInterruptLock>
60311e94:	e1a06000 	mov	r6, r0
60311e98:	ebfff7c8 	bl	6030fdc0 <ulPortGetCoreId>
60311e9c:	e1a03000 	mov	r3, r0
60311ea0:	e1a00006 	mov	r0, r6
60311ea4:	e7956103 	ldr	r6, [r5, r3, lsl #2]
60311ea8:	ebfff7ae 	bl	6030fd68 <ulPortInterruptUnLock>
60311eac:	e596302c 	ldr	r3, [r6, #44]	; 0x2c
60311eb0:	e263300b 	rsb	r3, r3, #11
60311eb4:	e5843018 	str	r3, [r4, #24]
60311eb8:	ebfffbe5 	bl	60310e54 <vTaskEnterCritical>
60311ebc:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
60311ec0:	e3a02014 	mov	r2, #20
60311ec4:	e30861d8 	movw	r6, #33240	; 0x81d8
60311ec8:	e3466032 	movt	r6, #24626	; 0x6032
60311ecc:	e0236392 	mla	r3, r2, r3, r6
60311ed0:	e5942014 	ldr	r2, [r4, #20]
60311ed4:	e1520003 	cmp	r2, r3
60311ed8:	0a00001a 	beq	60311f48 <xTaskPriorityInherit+0x104>
60311edc:	ebfff79c 	bl	6030fd54 <ulPortInterruptLock>
60311ee0:	e1a06000 	mov	r6, r0
60311ee4:	ebfff7b5 	bl	6030fdc0 <ulPortGetCoreId>
60311ee8:	e1a03000 	mov	r3, r0
60311eec:	e1a00006 	mov	r0, r6
60311ef0:	e7955103 	ldr	r5, [r5, r3, lsl #2]
60311ef4:	ebfff79b 	bl	6030fd68 <ulPortInterruptUnLock>
60311ef8:	e595302c 	ldr	r3, [r5, #44]	; 0x2c
60311efc:	e584302c 	str	r3, [r4, #44]	; 0x2c
60311f00:	ebfffbe9 	bl	60310eac <vTaskExitCritical>
60311f04:	e3a00001 	mov	r0, #1
60311f08:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60311f0c:	e1a00004 	mov	r0, r4
60311f10:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60311f14:	e5944064 	ldr	r4, [r4, #100]	; 0x64
60311f18:	ebfff78d 	bl	6030fd54 <ulPortInterruptLock>
60311f1c:	e1a06000 	mov	r6, r0
60311f20:	ebfff7a6 	bl	6030fdc0 <ulPortGetCoreId>
60311f24:	e1a03000 	mov	r3, r0
60311f28:	e1a00006 	mov	r0, r6
60311f2c:	e7955103 	ldr	r5, [r5, r3, lsl #2]
60311f30:	ebfff78c 	bl	6030fd68 <ulPortInterruptUnLock>
60311f34:	e595002c 	ldr	r0, [r5, #44]	; 0x2c
60311f38:	e1540000 	cmp	r4, r0
60311f3c:	23a00000 	movcs	r0, #0
60311f40:	33a00001 	movcc	r0, #1
60311f44:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60311f48:	e2848004 	add	r8, r4, #4
60311f4c:	e1a00008 	mov	r0, r8
60311f50:	eb000163 	bl	603124e4 <uxListRemove>
60311f54:	ebfff77e 	bl	6030fd54 <ulPortInterruptLock>
60311f58:	e1a07000 	mov	r7, r0
60311f5c:	ebfff797 	bl	6030fdc0 <ulPortGetCoreId>
60311f60:	e7955100 	ldr	r5, [r5, r0, lsl #2]
60311f64:	e1a00007 	mov	r0, r7
60311f68:	ebfff77e 	bl	6030fd68 <ulPortInterruptUnLock>
60311f6c:	e5942034 	ldr	r2, [r4, #52]	; 0x34
60311f70:	e595302c 	ldr	r3, [r5, #44]	; 0x2c
60311f74:	e3720002 	cmn	r2, #2
60311f78:	e584302c 	str	r3, [r4, #44]	; 0x2c
60311f7c:	0a000009 	beq	60311fa8 <xTaskPriorityInherit+0x164>
60311f80:	e30822d4 	movw	r2, #33492	; 0x82d4
60311f84:	e3462032 	movt	r2, #24626	; 0x6032
60311f88:	e3a00014 	mov	r0, #20
60311f8c:	e5921000 	ldr	r1, [r2]
60311f90:	e0206390 	mla	r0, r0, r3, r6
60311f94:	e1530001 	cmp	r3, r1
60311f98:	e1a01008 	mov	r1, r8
60311f9c:	85823000 	strhi	r3, [r2]
60311fa0:	eb00012e 	bl	60312460 <vListInsertEnd>
60311fa4:	eaffffd5 	b	60311f00 <xTaskPriorityInherit+0xbc>
60311fa8:	e30831d4 	movw	r3, #33236	; 0x81d4
60311fac:	e3463032 	movt	r3, #24626	; 0x6032
60311fb0:	e1a01008 	mov	r1, r8
60311fb4:	e5930000 	ldr	r0, [r3]
60311fb8:	eb000128 	bl	60312460 <vListInsertEnd>
60311fbc:	eaffffcf 	b	60311f00 <xTaskPriorityInherit+0xbc>

60311fc0 <xTaskPriorityDisinherit>:
60311fc0:	e92d4070 	push	{r4, r5, r6, lr}
60311fc4:	e2504000 	subs	r4, r0, #0
60311fc8:	0a000006 	beq	60311fe8 <xTaskPriorityDisinherit+0x28>
60311fcc:	e5943068 	ldr	r3, [r4, #104]	; 0x68
60311fd0:	e594102c 	ldr	r1, [r4, #44]	; 0x2c
60311fd4:	e5942064 	ldr	r2, [r4, #100]	; 0x64
60311fd8:	e2433001 	sub	r3, r3, #1
60311fdc:	e1510002 	cmp	r1, r2
60311fe0:	e5843068 	str	r3, [r4, #104]	; 0x68
60311fe4:	1a000002 	bne	60311ff4 <xTaskPriorityDisinherit+0x34>
60311fe8:	e3a05000 	mov	r5, #0
60311fec:	e1a00005 	mov	r0, r5
60311ff0:	e8bd8070 	pop	{r4, r5, r6, pc}
60311ff4:	ebfffb96 	bl	60310e54 <vTaskEnterCritical>
60311ff8:	e5943068 	ldr	r3, [r4, #104]	; 0x68
60311ffc:	e3530000 	cmp	r3, #0
60312000:	13a05000 	movne	r5, #0
60312004:	1a00000a 	bne	60312034 <xTaskPriorityDisinherit+0x74>
60312008:	e30831cc 	movw	r3, #33228	; 0x81cc
6031200c:	e3463032 	movt	r3, #24626	; 0x6032
60312010:	e5942014 	ldr	r2, [r4, #20]
60312014:	e5933000 	ldr	r3, [r3]
60312018:	e1520003 	cmp	r2, r3
6031201c:	0a000007 	beq	60312040 <xTaskPriorityDisinherit+0x80>
60312020:	e5943064 	ldr	r3, [r4, #100]	; 0x64
60312024:	e3a05001 	mov	r5, #1
60312028:	e263200b 	rsb	r2, r3, #11
6031202c:	e584302c 	str	r3, [r4, #44]	; 0x2c
60312030:	e5842018 	str	r2, [r4, #24]
60312034:	ebfffb9c 	bl	60310eac <vTaskExitCritical>
60312038:	e1a00005 	mov	r0, r5
6031203c:	e8bd8070 	pop	{r4, r5, r6, pc}
60312040:	e2840004 	add	r0, r4, #4
60312044:	eb000126 	bl	603124e4 <uxListRemove>
60312048:	e3500000 	cmp	r0, #0
6031204c:	1afffff3 	bne	60312020 <xTaskPriorityDisinherit+0x60>
60312050:	e308c2d4 	movw	ip, #33492	; 0x82d4
60312054:	e346c032 	movt	ip, #24626	; 0x6032
60312058:	e59c3000 	ldr	r3, [ip]
6031205c:	e3530000 	cmp	r3, #0
60312060:	0a000009 	beq	6031208c <xTaskPriorityDisinherit+0xcc>
60312064:	e30811d8 	movw	r1, #33240	; 0x81d8
60312068:	e3461032 	movt	r1, #24626	; 0x6032
6031206c:	e3a00014 	mov	r0, #20
60312070:	ea000001 	b	6031207c <xTaskPriorityDisinherit+0xbc>
60312074:	e2533001 	subs	r3, r3, #1
60312078:	0a000003 	beq	6031208c <xTaskPriorityDisinherit+0xcc>
6031207c:	e0020390 	mul	r2, r0, r3
60312080:	e7912002 	ldr	r2, [r1, r2]
60312084:	e3520000 	cmp	r2, #0
60312088:	0afffff9 	beq	60312074 <xTaskPriorityDisinherit+0xb4>
6031208c:	e58c3000 	str	r3, [ip]
60312090:	eaffffe2 	b	60312020 <xTaskPriorityDisinherit+0x60>

60312094 <vTaskPriorityDisinheritAfterTimeout>:
60312094:	e92d4070 	push	{r4, r5, r6, lr}
60312098:	e2504000 	subs	r4, r0, #0
6031209c:	08bd8070 	popeq	{r4, r5, r6, pc}
603120a0:	e5943064 	ldr	r3, [r4, #100]	; 0x64
603120a4:	e594502c 	ldr	r5, [r4, #44]	; 0x2c
603120a8:	e1510003 	cmp	r1, r3
603120ac:	31a01003 	movcc	r1, r3
603120b0:	e1550001 	cmp	r5, r1
603120b4:	08bd8070 	popeq	{r4, r5, r6, pc}
603120b8:	e5943068 	ldr	r3, [r4, #104]	; 0x68
603120bc:	e3530001 	cmp	r3, #1
603120c0:	18bd8070 	popne	{r4, r5, r6, pc}
603120c4:	e5943018 	ldr	r3, [r4, #24]
603120c8:	e584102c 	str	r1, [r4, #44]	; 0x2c
603120cc:	e3530000 	cmp	r3, #0
603120d0:	a261100b 	rsbge	r1, r1, #11
603120d4:	a5841018 	strge	r1, [r4, #24]
603120d8:	ebfffb5d 	bl	60310e54 <vTaskEnterCritical>
603120dc:	e30861d8 	movw	r6, #33240	; 0x81d8
603120e0:	e3466032 	movt	r6, #24626	; 0x6032
603120e4:	e3a02014 	mov	r2, #20
603120e8:	e5943014 	ldr	r3, [r4, #20]
603120ec:	e0256592 	mla	r5, r2, r5, r6
603120f0:	e1530005 	cmp	r3, r5
603120f4:	0a000001 	beq	60312100 <vTaskPriorityDisinheritAfterTimeout+0x6c>
603120f8:	e8bd4070 	pop	{r4, r5, r6, lr}
603120fc:	eafffb6a 	b	60310eac <vTaskExitCritical>
60312100:	e2845004 	add	r5, r4, #4
60312104:	e1a00005 	mov	r0, r5
60312108:	eb0000f5 	bl	603124e4 <uxListRemove>
6031210c:	e5943034 	ldr	r3, [r4, #52]	; 0x34
60312110:	e3530000 	cmp	r3, #0
60312114:	ba000002 	blt	60312124 <vTaskPriorityDisinheritAfterTimeout+0x90>
60312118:	e5943034 	ldr	r3, [r4, #52]	; 0x34
6031211c:	e3530001 	cmp	r3, #1
60312120:	dafffff4 	ble	603120f8 <vTaskPriorityDisinheritAfterTimeout+0x64>
60312124:	e5943034 	ldr	r3, [r4, #52]	; 0x34
60312128:	e3730002 	cmn	r3, #2
6031212c:	0a00000a 	beq	6031215c <vTaskPriorityDisinheritAfterTimeout+0xc8>
60312130:	e30832d4 	movw	r3, #33492	; 0x82d4
60312134:	e3463032 	movt	r3, #24626	; 0x6032
60312138:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
6031213c:	e3a00014 	mov	r0, #20
60312140:	e5931000 	ldr	r1, [r3]
60312144:	e0206290 	mla	r0, r0, r2, r6
60312148:	e1520001 	cmp	r2, r1
6031214c:	e1a01005 	mov	r1, r5
60312150:	85832000 	strhi	r2, [r3]
60312154:	eb0000c1 	bl	60312460 <vListInsertEnd>
60312158:	eaffffe6 	b	603120f8 <vTaskPriorityDisinheritAfterTimeout+0x64>
6031215c:	e30831d4 	movw	r3, #33236	; 0x81d4
60312160:	e3463032 	movt	r3, #24626	; 0x6032
60312164:	e1a01005 	mov	r1, r5
60312168:	e5930000 	ldr	r0, [r3]
6031216c:	eb0000bb 	bl	60312460 <vListInsertEnd>
60312170:	eaffffe0 	b	603120f8 <vTaskPriorityDisinheritAfterTimeout+0x64>

60312174 <prvIdleTask>:
60312174:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
60312178:	e30852c8 	movw	r5, #33480	; 0x82c8
6031217c:	e3465032 	movt	r5, #24626	; 0x6032
60312180:	e3087354 	movw	r7, #33620	; 0x8354
60312184:	e3467032 	movt	r7, #24626	; 0x6032
60312188:	e30862c4 	movw	r6, #33476	; 0x82c4
6031218c:	e3466032 	movt	r6, #24626	; 0x6032
60312190:	e30881d8 	movw	r8, #33240	; 0x81d8
60312194:	e3468032 	movt	r8, #24626	; 0x6032
60312198:	e3089328 	movw	r9, #33576	; 0x8328
6031219c:	e3469032 	movt	r9, #24626	; 0x6032
603121a0:	e308a2cc 	movw	sl, #33484	; 0x82cc
603121a4:	e346a032 	movt	sl, #24626	; 0x6032
603121a8:	ea000002 	b	603121b8 <prvIdleTask+0x44>
603121ac:	e3530001 	cmp	r3, #1
603121b0:	0a000037 	beq	60312294 <prvIdleTask+0x120>
603121b4:	ebfffb3c 	bl	60310eac <vTaskExitCritical>
603121b8:	e5953000 	ldr	r3, [r5]
603121bc:	e3530000 	cmp	r3, #0
603121c0:	0a00001d 	beq	6031223c <prvIdleTask+0xc8>
603121c4:	ebfffb22 	bl	60310e54 <vTaskEnterCritical>
603121c8:	e5953000 	ldr	r3, [r5]
603121cc:	e3530000 	cmp	r3, #0
603121d0:	0afffff7 	beq	603121b4 <prvIdleTask+0x40>
603121d4:	e597300c 	ldr	r3, [r7, #12]
603121d8:	e593400c 	ldr	r4, [r3, #12]
603121dc:	e2840004 	add	r0, r4, #4
603121e0:	e5943034 	ldr	r3, [r4, #52]	; 0x34
603121e4:	e3730001 	cmn	r3, #1
603121e8:	1a000012 	bne	60312238 <prvIdleTask+0xc4>
603121ec:	eb0000bc 	bl	603124e4 <uxListRemove>
603121f0:	e5963000 	ldr	r3, [r6]
603121f4:	e1a00004 	mov	r0, r4
603121f8:	e2433001 	sub	r3, r3, #1
603121fc:	e5863000 	str	r3, [r6]
60312200:	e5953000 	ldr	r3, [r5]
60312204:	e2433001 	sub	r3, r3, #1
60312208:	e5853000 	str	r3, [r5]
6031220c:	ebfff7f8 	bl	603101f4 <vPortCleanUpTCB>
60312210:	e284007c 	add	r0, r4, #124	; 0x7c
60312214:	ebffbde9 	bl	603019c0 <_reclaim_reent>
60312218:	e5d43171 	ldrb	r3, [r4, #369]	; 0x171
6031221c:	e3530000 	cmp	r3, #0
60312220:	1affffe1 	bne	603121ac <prvIdleTask+0x38>
60312224:	e5940030 	ldr	r0, [r4, #48]	; 0x30
60312228:	eb0005ad 	bl	603138e4 <vPortFree>
6031222c:	e1a00004 	mov	r0, r4
60312230:	eb0005ab 	bl	603138e4 <vPortFree>
60312234:	eaffffde 	b	603121b4 <prvIdleTask+0x40>
60312238:	ebfffb1b 	bl	60310eac <vTaskExitCritical>
6031223c:	e5983000 	ldr	r3, [r8]
60312240:	e3530000 	cmp	r3, #0
60312244:	0a000000 	beq	6031224c <prvIdleTask+0xd8>
60312248:	ef000000 	svc	0x00000000
6031224c:	ebfff6db 	bl	6030fdc0 <ulPortGetCoreId>
60312250:	e3500000 	cmp	r0, #0
60312254:	1a000011 	bne	603122a0 <prvIdleTask+0x12c>
60312258:	ebfff888 	bl	60310480 <prvGetExpectedIdleTime>
6031225c:	e3500001 	cmp	r0, #1
60312260:	9affffd4 	bls	603121b8 <prvIdleTask+0x44>
60312264:	e5993000 	ldr	r3, [r9]
60312268:	e3530000 	cmp	r3, #0
6031226c:	1a00000e 	bne	603122ac <prvIdleTask+0x138>
60312270:	ebfff882 	bl	60310480 <prvGetExpectedIdleTime>
60312274:	e3500001 	cmp	r0, #1
60312278:	9a000000 	bls	60312280 <prvIdleTask+0x10c>
6031227c:	ebfff745 	bl	6030ff98 <vPortSuppressTicksAndSleep>
60312280:	e5993000 	ldr	r3, [r9]
60312284:	e3530000 	cmp	r3, #0
60312288:	0affffca 	beq	603121b8 <prvIdleTask+0x44>
6031228c:	ebfffdac 	bl	60311944 <xTaskResumeAll.part.0>
60312290:	eaffffc8 	b	603121b8 <prvIdleTask+0x44>
60312294:	e1a00004 	mov	r0, r4
60312298:	eb000591 	bl	603138e4 <vPortFree>
6031229c:	eaffffc4 	b	603121b4 <prvIdleTask+0x40>
603122a0:	e3e00000 	mvn	r0, #0
603122a4:	ebfff73b 	bl	6030ff98 <vPortSuppressTicksAndSleep>
603122a8:	eaffffc2 	b	603121b8 <prvIdleTask+0x44>
603122ac:	ebfffae8 	bl	60310e54 <vTaskEnterCritical>
603122b0:	e59a3000 	ldr	r3, [sl]
603122b4:	e2833001 	add	r3, r3, #1
603122b8:	e58a3000 	str	r3, [sl]
603122bc:	ebfffafa 	bl	60310eac <vTaskExitCritical>
603122c0:	eaffffea 	b	60312270 <prvIdleTask+0xfc>

603122c4 <vTaskSuspendAll>:
603122c4:	e3083328 	movw	r3, #33576	; 0x8328
603122c8:	e3463032 	movt	r3, #24626	; 0x6032
603122cc:	e5933000 	ldr	r3, [r3]
603122d0:	e3530000 	cmp	r3, #0
603122d4:	012fff1e 	bxeq	lr
603122d8:	e92d4010 	push	{r4, lr}
603122dc:	ebfffadc 	bl	60310e54 <vTaskEnterCritical>
603122e0:	e30832cc 	movw	r3, #33484	; 0x82cc
603122e4:	e3463032 	movt	r3, #24626	; 0x6032
603122e8:	e5932000 	ldr	r2, [r3]
603122ec:	e2822001 	add	r2, r2, #1
603122f0:	e5832000 	str	r2, [r3]
603122f4:	e8bd4010 	pop	{r4, lr}
603122f8:	eafffaeb 	b	60310eac <vTaskExitCritical>

603122fc <vTaskDelay>:
603122fc:	e92d4070 	push	{r4, r5, r6, lr}
60312300:	e2504000 	subs	r4, r0, #0
60312304:	0a00000a 	beq	60312334 <vTaskDelay+0x38>
60312308:	e3085328 	movw	r5, #33576	; 0x8328
6031230c:	e3465032 	movt	r5, #24626	; 0x6032
60312310:	e5953000 	ldr	r3, [r5]
60312314:	e3530000 	cmp	r3, #0
60312318:	1a000017 	bne	6031237c <vTaskDelay+0x80>
6031231c:	e3a01000 	mov	r1, #0
60312320:	e1a00004 	mov	r0, r4
60312324:	ebfffc41 	bl	60311430 <prvAddCurrentTaskToDelayedList>
60312328:	e5953000 	ldr	r3, [r5]
6031232c:	e3530000 	cmp	r3, #0
60312330:	1a00000d 	bne	6031236c <vTaskDelay+0x70>
60312334:	ebfff686 	bl	6030fd54 <ulPortInterruptLock>
60312338:	e1a04000 	mov	r4, r0
6031233c:	ebfff69f 	bl	6030fdc0 <ulPortGetCoreId>
60312340:	e30831c4 	movw	r3, #33220	; 0x81c4
60312344:	e3463032 	movt	r3, #24626	; 0x6032
60312348:	e1a02000 	mov	r2, r0
6031234c:	e1a00004 	mov	r0, r4
60312350:	e7934102 	ldr	r4, [r3, r2, lsl #2]
60312354:	ebfff683 	bl	6030fd68 <ulPortInterruptUnLock>
60312358:	e5943058 	ldr	r3, [r4, #88]	; 0x58
6031235c:	e3530000 	cmp	r3, #0
60312360:	1a00000d 	bne	6031239c <vTaskDelay+0xa0>
60312364:	ef000000 	svc	0x00000000
60312368:	e8bd8070 	pop	{r4, r5, r6, pc}
6031236c:	ebfffd74 	bl	60311944 <xTaskResumeAll.part.0>
60312370:	e3500000 	cmp	r0, #0
60312374:	18bd8070 	popne	{r4, r5, r6, pc}
60312378:	eaffffed 	b	60312334 <vTaskDelay+0x38>
6031237c:	ebfffab4 	bl	60310e54 <vTaskEnterCritical>
60312380:	e30832cc 	movw	r3, #33484	; 0x82cc
60312384:	e3463032 	movt	r3, #24626	; 0x6032
60312388:	e5932000 	ldr	r2, [r3]
6031238c:	e2822001 	add	r2, r2, #1
60312390:	e5832000 	str	r2, [r3]
60312394:	ebfffac4 	bl	60310eac <vTaskExitCritical>
60312398:	eaffffdf 	b	6031231c <vTaskDelay+0x20>
6031239c:	ebfff687 	bl	6030fdc0 <ulPortGetCoreId>
603123a0:	e308336c 	movw	r3, #33644	; 0x836c
603123a4:	e3463032 	movt	r3, #24626	; 0x6032
603123a8:	e3a02001 	mov	r2, #1
603123ac:	e7832100 	str	r2, [r3, r0, lsl #2]
603123b0:	e8bd8070 	pop	{r4, r5, r6, pc}

603123b4 <pvTaskIncrementMutexHeldCount>:
603123b4:	e92d4070 	push	{r4, r5, r6, lr}
603123b8:	ebfff665 	bl	6030fd54 <ulPortInterruptLock>
603123bc:	e30841c4 	movw	r4, #33220	; 0x81c4
603123c0:	e3464032 	movt	r4, #24626	; 0x6032
603123c4:	e1a05000 	mov	r5, r0
603123c8:	ebfff67c 	bl	6030fdc0 <ulPortGetCoreId>
603123cc:	e1a03000 	mov	r3, r0
603123d0:	e1a00005 	mov	r0, r5
603123d4:	e7945103 	ldr	r5, [r4, r3, lsl #2]
603123d8:	ebfff662 	bl	6030fd68 <ulPortInterruptUnLock>
603123dc:	e3550000 	cmp	r5, #0
603123e0:	0a000009 	beq	6031240c <pvTaskIncrementMutexHeldCount+0x58>
603123e4:	ebfff65a 	bl	6030fd54 <ulPortInterruptLock>
603123e8:	e1a05000 	mov	r5, r0
603123ec:	ebfff673 	bl	6030fdc0 <ulPortGetCoreId>
603123f0:	e1a03000 	mov	r3, r0
603123f4:	e1a00005 	mov	r0, r5
603123f8:	e7945103 	ldr	r5, [r4, r3, lsl #2]
603123fc:	ebfff659 	bl	6030fd68 <ulPortInterruptUnLock>
60312400:	e5953068 	ldr	r3, [r5, #104]	; 0x68
60312404:	e2833001 	add	r3, r3, #1
60312408:	e5853068 	str	r3, [r5, #104]	; 0x68
6031240c:	ebfff650 	bl	6030fd54 <ulPortInterruptLock>
60312410:	e1a05000 	mov	r5, r0
60312414:	ebfff669 	bl	6030fdc0 <ulPortGetCoreId>
60312418:	e1a03000 	mov	r3, r0
6031241c:	e1a00005 	mov	r0, r5
60312420:	e7944103 	ldr	r4, [r4, r3, lsl #2]
60312424:	ebfff64f 	bl	6030fd68 <ulPortInterruptUnLock>
60312428:	e1a00004 	mov	r0, r4
6031242c:	e8bd8070 	pop	{r4, r5, r6, pc}

60312430 <vListInitialise>:
60312430:	e2803008 	add	r3, r0, #8
60312434:	e3a02000 	mov	r2, #0
60312438:	e3e01000 	mvn	r1, #0
6031243c:	e5803004 	str	r3, [r0, #4]
60312440:	e5801008 	str	r1, [r0, #8]
60312444:	e580300c 	str	r3, [r0, #12]
60312448:	e5803010 	str	r3, [r0, #16]
6031244c:	e5802000 	str	r2, [r0]
60312450:	e12fff1e 	bx	lr

60312454 <vListInitialiseItem>:
60312454:	e3a03000 	mov	r3, #0
60312458:	e5803010 	str	r3, [r0, #16]
6031245c:	e12fff1e 	bx	lr

60312460 <vListInsertEnd>:
60312460:	e5903004 	ldr	r3, [r0, #4]
60312464:	e5813004 	str	r3, [r1, #4]
60312468:	e5932008 	ldr	r2, [r3, #8]
6031246c:	e5812008 	str	r2, [r1, #8]
60312470:	e5821004 	str	r1, [r2, #4]
60312474:	e5831008 	str	r1, [r3, #8]
60312478:	e5810010 	str	r0, [r1, #16]
6031247c:	e5903000 	ldr	r3, [r0]
60312480:	e2833001 	add	r3, r3, #1
60312484:	e5803000 	str	r3, [r0]
60312488:	e12fff1e 	bx	lr

6031248c <vListInsert>:
6031248c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
60312490:	e591e000 	ldr	lr, [r1]
60312494:	e37e0001 	cmn	lr, #1
60312498:	12803008 	addne	r3, r0, #8
6031249c:	0a00000d 	beq	603124d8 <vListInsert+0x4c>
603124a0:	e1a0c003 	mov	ip, r3
603124a4:	e5933004 	ldr	r3, [r3, #4]
603124a8:	e5932000 	ldr	r2, [r3]
603124ac:	e152000e 	cmp	r2, lr
603124b0:	9afffffa 	bls	603124a0 <vListInsert+0x14>
603124b4:	e5813004 	str	r3, [r1, #4]
603124b8:	e5831008 	str	r1, [r3, #8]
603124bc:	e581c008 	str	ip, [r1, #8]
603124c0:	e58c1004 	str	r1, [ip, #4]
603124c4:	e5810010 	str	r0, [r1, #16]
603124c8:	e5903000 	ldr	r3, [r0]
603124cc:	e2833001 	add	r3, r3, #1
603124d0:	e5803000 	str	r3, [r0]
603124d4:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
603124d8:	e590c010 	ldr	ip, [r0, #16]
603124dc:	e59c3004 	ldr	r3, [ip, #4]
603124e0:	eafffff3 	b	603124b4 <vListInsert+0x28>

603124e4 <uxListRemove>:
603124e4:	e9900006 	ldmib	r0, {r1, r2}
603124e8:	e5903010 	ldr	r3, [r0, #16]
603124ec:	e5812008 	str	r2, [r1, #8]
603124f0:	e5901004 	ldr	r1, [r0, #4]
603124f4:	e5821004 	str	r1, [r2, #4]
603124f8:	e5932004 	ldr	r2, [r3, #4]
603124fc:	e1520000 	cmp	r2, r0
60312500:	05902008 	ldreq	r2, [r0, #8]
60312504:	05832004 	streq	r2, [r3, #4]
60312508:	e3a02000 	mov	r2, #0
6031250c:	e5802010 	str	r2, [r0, #16]
60312510:	e5932000 	ldr	r2, [r3]
60312514:	e2422001 	sub	r2, r2, #1
60312518:	e5832000 	str	r2, [r3]
6031251c:	e5930000 	ldr	r0, [r3]
60312520:	e12fff1e 	bx	lr

60312524 <prvCopyDataToQueue>:
60312524:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60312528:	e1a04000 	mov	r4, r0
6031252c:	e1a05002 	mov	r5, r2
60312530:	e1a07001 	mov	r7, r1
60312534:	ebfffa46 	bl	60310e54 <vTaskEnterCritical>
60312538:	e5942040 	ldr	r2, [r4, #64]	; 0x40
6031253c:	e5946038 	ldr	r6, [r4, #56]	; 0x38
60312540:	e3520000 	cmp	r2, #0
60312544:	1a000008 	bne	6031256c <prvCopyDataToQueue+0x48>
60312548:	e5947000 	ldr	r7, [r4]
6031254c:	e2866001 	add	r6, r6, #1
60312550:	e3570000 	cmp	r7, #0
60312554:	11a05002 	movne	r5, r2
60312558:	0a000023 	beq	603125ec <prvCopyDataToQueue+0xc8>
6031255c:	e5846038 	str	r6, [r4, #56]	; 0x38
60312560:	ebfffa51 	bl	60310eac <vTaskExitCritical>
60312564:	e1a00005 	mov	r0, r5
60312568:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
6031256c:	e1a01007 	mov	r1, r7
60312570:	e3550000 	cmp	r5, #0
60312574:	1a00000b 	bne	603125a8 <prvCopyDataToQueue+0x84>
60312578:	e5940004 	ldr	r0, [r4, #4]
6031257c:	ebffbb5f 	bl	60301300 <memcpy>
60312580:	e5943004 	ldr	r3, [r4, #4]
60312584:	e5942040 	ldr	r2, [r4, #64]	; 0x40
60312588:	e2866001 	add	r6, r6, #1
6031258c:	e0833002 	add	r3, r3, r2
60312590:	e5942008 	ldr	r2, [r4, #8]
60312594:	e5843004 	str	r3, [r4, #4]
60312598:	e1530002 	cmp	r3, r2
6031259c:	25943000 	ldrcs	r3, [r4]
603125a0:	25843004 	strcs	r3, [r4, #4]
603125a4:	eaffffec 	b	6031255c <prvCopyDataToQueue+0x38>
603125a8:	e594000c 	ldr	r0, [r4, #12]
603125ac:	ebffbb53 	bl	60301300 <memcpy>
603125b0:	e5942040 	ldr	r2, [r4, #64]	; 0x40
603125b4:	e594300c 	ldr	r3, [r4, #12]
603125b8:	e2621000 	rsb	r1, r2, #0
603125bc:	e0433002 	sub	r3, r3, r2
603125c0:	e5942000 	ldr	r2, [r4]
603125c4:	e584300c 	str	r3, [r4, #12]
603125c8:	e1530002 	cmp	r3, r2
603125cc:	35943008 	ldrcc	r3, [r4, #8]
603125d0:	30833001 	addcc	r3, r3, r1
603125d4:	3584300c 	strcc	r3, [r4, #12]
603125d8:	e3550002 	cmp	r5, #2
603125dc:	0a000007 	beq	60312600 <prvCopyDataToQueue+0xdc>
603125e0:	e2866001 	add	r6, r6, #1
603125e4:	e3a05000 	mov	r5, #0
603125e8:	eaffffdb 	b	6031255c <prvCopyDataToQueue+0x38>
603125ec:	e5940008 	ldr	r0, [r4, #8]
603125f0:	ebfffe72 	bl	60311fc0 <xTaskPriorityDisinherit>
603125f4:	e5847008 	str	r7, [r4, #8]
603125f8:	e1a05000 	mov	r5, r0
603125fc:	eaffffd6 	b	6031255c <prvCopyDataToQueue+0x38>
60312600:	e3560001 	cmp	r6, #1
60312604:	33a06001 	movcc	r6, #1
60312608:	e3a05000 	mov	r5, #0
6031260c:	eaffffd2 	b	6031255c <prvCopyDataToQueue+0x38>

60312610 <prvNotifyQueueSetContainer>:
60312610:	e92d4070 	push	{r4, r5, r6, lr}
60312614:	e5904048 	ldr	r4, [r0, #72]	; 0x48
60312618:	e24dd008 	sub	sp, sp, #8
6031261c:	e5942038 	ldr	r2, [r4, #56]	; 0x38
60312620:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
60312624:	e58d0004 	str	r0, [sp, #4]
60312628:	e1520003 	cmp	r2, r3
6031262c:	23a05000 	movcs	r5, #0
60312630:	3a000002 	bcc	60312640 <prvNotifyQueueSetContainer+0x30>
60312634:	e1a00005 	mov	r0, r5
60312638:	e28dd008 	add	sp, sp, #8
6031263c:	e8bd8070 	pop	{r4, r5, r6, pc}
60312640:	e5d46045 	ldrb	r6, [r4, #69]	; 0x45
60312644:	e1a02001 	mov	r2, r1
60312648:	e1a00004 	mov	r0, r4
6031264c:	e28d1004 	add	r1, sp, #4
60312650:	e6af6076 	sxtb	r6, r6
60312654:	ebffffb2 	bl	60312524 <prvCopyDataToQueue>
60312658:	e3760001 	cmn	r6, #1
6031265c:	e1a05000 	mov	r5, r0
60312660:	0a000005 	beq	6031267c <prvNotifyQueueSetContainer+0x6c>
60312664:	e2866001 	add	r6, r6, #1
60312668:	e1a00005 	mov	r0, r5
6031266c:	e6af6076 	sxtb	r6, r6
60312670:	e5c46045 	strb	r6, [r4, #69]	; 0x45
60312674:	e28dd008 	add	sp, sp, #8
60312678:	e8bd8070 	pop	{r4, r5, r6, pc}
6031267c:	e5943024 	ldr	r3, [r4, #36]	; 0x24
60312680:	e3530000 	cmp	r3, #0
60312684:	0affffea 	beq	60312634 <prvNotifyQueueSetContainer+0x24>
60312688:	e2840024 	add	r0, r4, #36	; 0x24
6031268c:	ebfffd6a 	bl	60311c3c <xTaskRemoveFromEventList>
60312690:	e3500000 	cmp	r0, #0
60312694:	13a05001 	movne	r5, #1
60312698:	eaffffe5 	b	60312634 <prvNotifyQueueSetContainer+0x24>

6031269c <prvUnlockQueue>:
6031269c:	e92d4070 	push	{r4, r5, r6, lr}
603126a0:	e1a05000 	mov	r5, r0
603126a4:	ebfff9ea 	bl	60310e54 <vTaskEnterCritical>
603126a8:	e5d54045 	ldrb	r4, [r5, #69]	; 0x45
603126ac:	e6af4074 	sxtb	r4, r4
603126b0:	e3540000 	cmp	r4, #0
603126b4:	da000019 	ble	60312720 <prvUnlockQueue+0x84>
603126b8:	e2856024 	add	r6, r5, #36	; 0x24
603126bc:	ea000006 	b	603126dc <prvUnlockQueue+0x40>
603126c0:	ebffffd2 	bl	60312610 <prvNotifyQueueSetContainer>
603126c4:	e3500000 	cmp	r0, #0
603126c8:	1a00000f 	bne	6031270c <prvUnlockQueue+0x70>
603126cc:	e2444001 	sub	r4, r4, #1
603126d0:	e6af4074 	sxtb	r4, r4
603126d4:	e3540000 	cmp	r4, #0
603126d8:	0a000010 	beq	60312720 <prvUnlockQueue+0x84>
603126dc:	e5953048 	ldr	r3, [r5, #72]	; 0x48
603126e0:	e3a01000 	mov	r1, #0
603126e4:	e1a00005 	mov	r0, r5
603126e8:	e1530001 	cmp	r3, r1
603126ec:	1afffff3 	bne	603126c0 <prvUnlockQueue+0x24>
603126f0:	e5953024 	ldr	r3, [r5, #36]	; 0x24
603126f4:	e1a00006 	mov	r0, r6
603126f8:	e3530000 	cmp	r3, #0
603126fc:	0a000007 	beq	60312720 <prvUnlockQueue+0x84>
60312700:	ebfffd4d 	bl	60311c3c <xTaskRemoveFromEventList>
60312704:	e3500000 	cmp	r0, #0
60312708:	0affffef 	beq	603126cc <prvUnlockQueue+0x30>
6031270c:	e2444001 	sub	r4, r4, #1
60312710:	ebfff97c 	bl	60310d08 <vTaskMissedYield>
60312714:	e6af4074 	sxtb	r4, r4
60312718:	e3540000 	cmp	r4, #0
6031271c:	1affffee 	bne	603126dc <prvUnlockQueue+0x40>
60312720:	e3e03000 	mvn	r3, #0
60312724:	e5c53045 	strb	r3, [r5, #69]	; 0x45
60312728:	ebfff9df 	bl	60310eac <vTaskExitCritical>
6031272c:	ebfff9c8 	bl	60310e54 <vTaskEnterCritical>
60312730:	e5d54044 	ldrb	r4, [r5, #68]	; 0x44
60312734:	e6af4074 	sxtb	r4, r4
60312738:	e3540000 	cmp	r4, #0
6031273c:	da000011 	ble	60312788 <prvUnlockQueue+0xec>
60312740:	e2856010 	add	r6, r5, #16
60312744:	ea000003 	b	60312758 <prvUnlockQueue+0xbc>
60312748:	e2444001 	sub	r4, r4, #1
6031274c:	e6af4074 	sxtb	r4, r4
60312750:	e3540000 	cmp	r4, #0
60312754:	0a00000b 	beq	60312788 <prvUnlockQueue+0xec>
60312758:	e5953010 	ldr	r3, [r5, #16]
6031275c:	e1a00006 	mov	r0, r6
60312760:	e3530000 	cmp	r3, #0
60312764:	0a000007 	beq	60312788 <prvUnlockQueue+0xec>
60312768:	ebfffd33 	bl	60311c3c <xTaskRemoveFromEventList>
6031276c:	e3500000 	cmp	r0, #0
60312770:	0afffff4 	beq	60312748 <prvUnlockQueue+0xac>
60312774:	e2444001 	sub	r4, r4, #1
60312778:	ebfff962 	bl	60310d08 <vTaskMissedYield>
6031277c:	e6af4074 	sxtb	r4, r4
60312780:	e3540000 	cmp	r4, #0
60312784:	1afffff3 	bne	60312758 <prvUnlockQueue+0xbc>
60312788:	e3e03000 	mvn	r3, #0
6031278c:	e5c53044 	strb	r3, [r5, #68]	; 0x44
60312790:	e8bd4070 	pop	{r4, r5, r6, lr}
60312794:	eafff9c4 	b	60310eac <vTaskExitCritical>

60312798 <xQueueGenericCreateStatic>:
60312798:	e92d4070 	push	{r4, r5, r6, lr}
6031279c:	e2534000 	subs	r4, r3, #0
603127a0:	e5dd5010 	ldrb	r5, [sp, #16]
603127a4:	0a00001d 	beq	60312820 <xQueueGenericCreateStatic+0x88>
603127a8:	e3510000 	cmp	r1, #0
603127ac:	01a02004 	moveq	r2, r4
603127b0:	e3a03001 	mov	r3, #1
603127b4:	e584003c 	str	r0, [r4, #60]	; 0x3c
603127b8:	e5842000 	str	r2, [r4]
603127bc:	e5841040 	str	r1, [r4, #64]	; 0x40
603127c0:	e5c43046 	strb	r3, [r4, #70]	; 0x46
603127c4:	ebfff9a2 	bl	60310e54 <vTaskEnterCritical>
603127c8:	e5941040 	ldr	r1, [r4, #64]	; 0x40
603127cc:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
603127d0:	e5942000 	ldr	r2, [r4]
603127d4:	e3a06000 	mov	r6, #0
603127d8:	e2840010 	add	r0, r4, #16
603127dc:	e0030193 	mul	r3, r3, r1
603127e0:	e5846038 	str	r6, [r4, #56]	; 0x38
603127e4:	e0431001 	sub	r1, r3, r1
603127e8:	e5842004 	str	r2, [r4, #4]
603127ec:	e0823003 	add	r3, r2, r3
603127f0:	e0822001 	add	r2, r2, r1
603127f4:	e5843008 	str	r3, [r4, #8]
603127f8:	e584200c 	str	r2, [r4, #12]
603127fc:	e3e03000 	mvn	r3, #0
60312800:	e5c43044 	strb	r3, [r4, #68]	; 0x44
60312804:	e5c43045 	strb	r3, [r4, #69]	; 0x45
60312808:	ebffff08 	bl	60312430 <vListInitialise>
6031280c:	e2840024 	add	r0, r4, #36	; 0x24
60312810:	ebffff06 	bl	60312430 <vListInitialise>
60312814:	ebfff9a4 	bl	60310eac <vTaskExitCritical>
60312818:	e5c45050 	strb	r5, [r4, #80]	; 0x50
6031281c:	e5846048 	str	r6, [r4, #72]	; 0x48
60312820:	e1a00004 	mov	r0, r4
60312824:	e8bd8070 	pop	{r4, r5, r6, pc}

60312828 <xQueueGenericCreate>:
60312828:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
6031282c:	e1a06000 	mov	r6, r0
60312830:	e1a07002 	mov	r7, r2
60312834:	e2515000 	subs	r5, r1, #0
60312838:	0a000023 	beq	603128cc <xQueueGenericCreate+0xa4>
6031283c:	e0000590 	mul	r0, r0, r5
60312840:	e2800054 	add	r0, r0, #84	; 0x54
60312844:	eb0003d8 	bl	603137ac <pvPortMalloc>
60312848:	e2504000 	subs	r4, r0, #0
6031284c:	0a000024 	beq	603128e4 <xQueueGenericCreate+0xbc>
60312850:	e3a03000 	mov	r3, #0
60312854:	e5c43046 	strb	r3, [r4, #70]	; 0x46
60312858:	e2843054 	add	r3, r4, #84	; 0x54
6031285c:	e5843000 	str	r3, [r4]
60312860:	e5845040 	str	r5, [r4, #64]	; 0x40
60312864:	e584603c 	str	r6, [r4, #60]	; 0x3c
60312868:	ebfff979 	bl	60310e54 <vTaskEnterCritical>
6031286c:	e5941040 	ldr	r1, [r4, #64]	; 0x40
60312870:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
60312874:	e5942000 	ldr	r2, [r4]
60312878:	e3a05000 	mov	r5, #0
6031287c:	e2840010 	add	r0, r4, #16
60312880:	e0030193 	mul	r3, r3, r1
60312884:	e5845038 	str	r5, [r4, #56]	; 0x38
60312888:	e0431001 	sub	r1, r3, r1
6031288c:	e5842004 	str	r2, [r4, #4]
60312890:	e0823003 	add	r3, r2, r3
60312894:	e0822001 	add	r2, r2, r1
60312898:	e5843008 	str	r3, [r4, #8]
6031289c:	e584200c 	str	r2, [r4, #12]
603128a0:	e3e03000 	mvn	r3, #0
603128a4:	e5c43044 	strb	r3, [r4, #68]	; 0x44
603128a8:	e5c43045 	strb	r3, [r4, #69]	; 0x45
603128ac:	ebfffedf 	bl	60312430 <vListInitialise>
603128b0:	e2840024 	add	r0, r4, #36	; 0x24
603128b4:	ebfffedd 	bl	60312430 <vListInitialise>
603128b8:	ebfff97b 	bl	60310eac <vTaskExitCritical>
603128bc:	e1a00004 	mov	r0, r4
603128c0:	e5c47050 	strb	r7, [r4, #80]	; 0x50
603128c4:	e5845048 	str	r5, [r4, #72]	; 0x48
603128c8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
603128cc:	e3a00054 	mov	r0, #84	; 0x54
603128d0:	eb0003b5 	bl	603137ac <pvPortMalloc>
603128d4:	e2504000 	subs	r4, r0, #0
603128d8:	15c45046 	strbne	r5, [r4, #70]	; 0x46
603128dc:	15844000 	strne	r4, [r4]
603128e0:	1affffde 	bne	60312860 <xQueueGenericCreate+0x38>
603128e4:	e3a04000 	mov	r4, #0
603128e8:	e1a00004 	mov	r0, r4
603128ec:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

603128f0 <xQueueGenericSend>:
603128f0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
603128f4:	e2437002 	sub	r7, r3, #2
603128f8:	e24dd010 	sub	sp, sp, #16
603128fc:	e16f7f17 	clz	r7, r7
60312900:	e3a06000 	mov	r6, #0
60312904:	e1a09003 	mov	r9, r3
60312908:	e1a04000 	mov	r4, r0
6031290c:	e1a0a001 	mov	sl, r1
60312910:	e1a072a7 	lsr	r7, r7, #5
60312914:	e1a08006 	mov	r8, r6
60312918:	e58d2004 	str	r2, [sp, #4]
6031291c:	ea000004 	b	60312934 <xQueueGenericSend+0x44>
60312920:	ebfff961 	bl	60310eac <vTaskExitCritical>
60312924:	e1a00004 	mov	r0, r4
60312928:	ebffff5b 	bl	6031269c <prvUnlockQueue>
6031292c:	ebfffc6d 	bl	60311ae8 <xTaskResumeAll>
60312930:	e3a06001 	mov	r6, #1
60312934:	ebfff946 	bl	60310e54 <vTaskEnterCritical>
60312938:	e5942038 	ldr	r2, [r4, #56]	; 0x38
6031293c:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
60312940:	e1520003 	cmp	r2, r3
60312944:	21a00007 	movcs	r0, r7
60312948:	33870001 	orrcc	r0, r7, #1
6031294c:	e3500000 	cmp	r0, #0
60312950:	1a000031 	bne	60312a1c <xQueueGenericSend+0x12c>
60312954:	e59d5004 	ldr	r5, [sp, #4]
60312958:	e3550000 	cmp	r5, #0
6031295c:	0a00003f 	beq	60312a60 <xQueueGenericSend+0x170>
60312960:	e3560000 	cmp	r6, #0
60312964:	0a000027 	beq	60312a08 <xQueueGenericSend+0x118>
60312968:	ebfff94f 	bl	60310eac <vTaskExitCritical>
6031296c:	ebfffe54 	bl	603122c4 <vTaskSuspendAll>
60312970:	ebfff937 	bl	60310e54 <vTaskEnterCritical>
60312974:	e5d43044 	ldrb	r3, [r4, #68]	; 0x44
60312978:	e35300ff 	cmp	r3, #255	; 0xff
6031297c:	05c48044 	strbeq	r8, [r4, #68]	; 0x44
60312980:	e5d43045 	ldrb	r3, [r4, #69]	; 0x45
60312984:	e35300ff 	cmp	r3, #255	; 0xff
60312988:	05c48045 	strbeq	r8, [r4, #69]	; 0x45
6031298c:	ebfff946 	bl	60310eac <vTaskExitCritical>
60312990:	e28d1004 	add	r1, sp, #4
60312994:	e28d0008 	add	r0, sp, #8
60312998:	ebfffcec 	bl	60311d50 <xTaskCheckForTimeOut>
6031299c:	e3500000 	cmp	r0, #0
603129a0:	1a000032 	bne	60312a70 <xQueueGenericSend+0x180>
603129a4:	ebfff92a 	bl	60310e54 <vTaskEnterCritical>
603129a8:	e5942038 	ldr	r2, [r4, #56]	; 0x38
603129ac:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
603129b0:	e1520003 	cmp	r2, r3
603129b4:	1affffd9 	bne	60312920 <xQueueGenericSend+0x30>
603129b8:	e2845010 	add	r5, r4, #16
603129bc:	ebfff93a 	bl	60310eac <vTaskExitCritical>
603129c0:	e59d1004 	ldr	r1, [sp, #4]
603129c4:	e1a00005 	mov	r0, r5
603129c8:	ebfffc4c 	bl	60311b00 <vTaskPlaceOnEventList>
603129cc:	ebfff920 	bl	60310e54 <vTaskEnterCritical>
603129d0:	e5942038 	ldr	r2, [r4, #56]	; 0x38
603129d4:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
603129d8:	e1520003 	cmp	r2, r3
603129dc:	0a00000c 	beq	60312a14 <xQueueGenericSend+0x124>
603129e0:	ebfff931 	bl	60310eac <vTaskExitCritical>
603129e4:	e1a00005 	mov	r0, r5
603129e8:	ebfffc71 	bl	60311bb4 <vTaskPlaceRemoveFromEventList>
603129ec:	e1a00004 	mov	r0, r4
603129f0:	ebffff29 	bl	6031269c <prvUnlockQueue>
603129f4:	ebfffc3b 	bl	60311ae8 <xTaskResumeAll>
603129f8:	e3500000 	cmp	r0, #0
603129fc:	1affffcb 	bne	60312930 <xQueueGenericSend+0x40>
60312a00:	ebfff8fe 	bl	60310e00 <vTaskYieldWithinAPI>
60312a04:	eaffffc9 	b	60312930 <xQueueGenericSend+0x40>
60312a08:	e28d0008 	add	r0, sp, #8
60312a0c:	ebfff8b5 	bl	60310ce8 <vTaskInternalSetTimeOutState>
60312a10:	eaffffd4 	b	60312968 <xQueueGenericSend+0x78>
60312a14:	ebfff924 	bl	60310eac <vTaskExitCritical>
60312a18:	eafffff3 	b	603129ec <xQueueGenericSend+0xfc>
60312a1c:	e1a0100a 	mov	r1, sl
60312a20:	e1a02009 	mov	r2, r9
60312a24:	e1a00004 	mov	r0, r4
60312a28:	e5945038 	ldr	r5, [r4, #56]	; 0x38
60312a2c:	ebfffebc 	bl	60312524 <prvCopyDataToQueue>
60312a30:	e5943048 	ldr	r3, [r4, #72]	; 0x48
60312a34:	e3530000 	cmp	r3, #0
60312a38:	0a000012 	beq	60312a88 <xQueueGenericSend+0x198>
60312a3c:	e3550000 	cmp	r5, #0
60312a40:	03a07000 	moveq	r7, #0
60312a44:	12077001 	andne	r7, r7, #1
60312a48:	e3570000 	cmp	r7, #0
60312a4c:	0a000014 	beq	60312aa4 <xQueueGenericSend+0x1b4>
60312a50:	ebfff915 	bl	60310eac <vTaskExitCritical>
60312a54:	e3a00001 	mov	r0, #1
60312a58:	e28dd010 	add	sp, sp, #16
60312a5c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
60312a60:	ebfff911 	bl	60310eac <vTaskExitCritical>
60312a64:	e1a00005 	mov	r0, r5
60312a68:	e28dd010 	add	sp, sp, #16
60312a6c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
60312a70:	e1a00004 	mov	r0, r4
60312a74:	ebffff08 	bl	6031269c <prvUnlockQueue>
60312a78:	ebfffc1a 	bl	60311ae8 <xTaskResumeAll>
60312a7c:	e3a00000 	mov	r0, #0
60312a80:	e28dd010 	add	sp, sp, #16
60312a84:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
60312a88:	e5943024 	ldr	r3, [r4, #36]	; 0x24
60312a8c:	e3530000 	cmp	r3, #0
60312a90:	1a000007 	bne	60312ab4 <xQueueGenericSend+0x1c4>
60312a94:	e3500000 	cmp	r0, #0
60312a98:	0affffec 	beq	60312a50 <xQueueGenericSend+0x160>
60312a9c:	ebfff8d7 	bl	60310e00 <vTaskYieldWithinAPI>
60312aa0:	eaffffea 	b	60312a50 <xQueueGenericSend+0x160>
60312aa4:	e1a01009 	mov	r1, r9
60312aa8:	e1a00004 	mov	r0, r4
60312aac:	ebfffed7 	bl	60312610 <prvNotifyQueueSetContainer>
60312ab0:	eafffff7 	b	60312a94 <xQueueGenericSend+0x1a4>
60312ab4:	e2840024 	add	r0, r4, #36	; 0x24
60312ab8:	ebfffc5f 	bl	60311c3c <xTaskRemoveFromEventList>
60312abc:	e3500000 	cmp	r0, #0
60312ac0:	0affffe2 	beq	60312a50 <xQueueGenericSend+0x160>
60312ac4:	eafffff4 	b	60312a9c <xQueueGenericSend+0x1ac>

60312ac8 <xQueueGenericSendFromISR>:
60312ac8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60312acc:	e1a04000 	mov	r4, r0
60312ad0:	e1a05003 	mov	r5, r3
60312ad4:	e1a07002 	mov	r7, r2
60312ad8:	e1a08001 	mov	r8, r1
60312adc:	ebfff8dc 	bl	60310e54 <vTaskEnterCritical>
60312ae0:	e2450002 	sub	r0, r5, #2
60312ae4:	e16f0f10 	clz	r0, r0
60312ae8:	e5942038 	ldr	r2, [r4, #56]	; 0x38
60312aec:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
60312af0:	e1a002a0 	lsr	r0, r0, #5
60312af4:	e1520003 	cmp	r2, r3
60312af8:	33800001 	orrcc	r0, r0, #1
60312afc:	e3500000 	cmp	r0, #0
60312b00:	01a05000 	moveq	r5, r0
60312b04:	0a00000b 	beq	60312b38 <xQueueGenericSendFromISR+0x70>
60312b08:	e5d46045 	ldrb	r6, [r4, #69]	; 0x45
60312b0c:	e1a01008 	mov	r1, r8
60312b10:	e1a02005 	mov	r2, r5
60312b14:	e6af6076 	sxtb	r6, r6
60312b18:	e1a00004 	mov	r0, r4
60312b1c:	ebfffe80 	bl	60312524 <prvCopyDataToQueue>
60312b20:	e3760001 	cmn	r6, #1
60312b24:	0a000006 	beq	60312b44 <xQueueGenericSendFromISR+0x7c>
60312b28:	e2866001 	add	r6, r6, #1
60312b2c:	e3a05001 	mov	r5, #1
60312b30:	e6af6076 	sxtb	r6, r6
60312b34:	e5c46045 	strb	r6, [r4, #69]	; 0x45
60312b38:	ebfff8db 	bl	60310eac <vTaskExitCritical>
60312b3c:	e1a00005 	mov	r0, r5
60312b40:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60312b44:	e5943048 	ldr	r3, [r4, #72]	; 0x48
60312b48:	e3530000 	cmp	r3, #0
60312b4c:	0a000007 	beq	60312b70 <xQueueGenericSendFromISR+0xa8>
60312b50:	e1a01005 	mov	r1, r5
60312b54:	e1a00004 	mov	r0, r4
60312b58:	ebfffeac 	bl	60312610 <prvNotifyQueueSetContainer>
60312b5c:	e3570000 	cmp	r7, #0
60312b60:	13500000 	cmpne	r0, #0
60312b64:	1a000009 	bne	60312b90 <xQueueGenericSendFromISR+0xc8>
60312b68:	e3a05001 	mov	r5, #1
60312b6c:	eafffff1 	b	60312b38 <xQueueGenericSendFromISR+0x70>
60312b70:	e5943024 	ldr	r3, [r4, #36]	; 0x24
60312b74:	e3530000 	cmp	r3, #0
60312b78:	0afffffa 	beq	60312b68 <xQueueGenericSendFromISR+0xa0>
60312b7c:	e2840024 	add	r0, r4, #36	; 0x24
60312b80:	ebfffc2d 	bl	60311c3c <xTaskRemoveFromEventList>
60312b84:	e3570000 	cmp	r7, #0
60312b88:	13500000 	cmpne	r0, #0
60312b8c:	0afffff5 	beq	60312b68 <xQueueGenericSendFromISR+0xa0>
60312b90:	e3a03001 	mov	r3, #1
60312b94:	e1a05003 	mov	r5, r3
60312b98:	e5873000 	str	r3, [r7]
60312b9c:	eaffffe5 	b	60312b38 <xQueueGenericSendFromISR+0x70>

60312ba0 <xQueueGiveFromISR>:
60312ba0:	e92d4070 	push	{r4, r5, r6, lr}
60312ba4:	e1a04000 	mov	r4, r0
60312ba8:	e1a06001 	mov	r6, r1
60312bac:	ebfff8a8 	bl	60310e54 <vTaskEnterCritical>
60312bb0:	e5942038 	ldr	r2, [r4, #56]	; 0x38
60312bb4:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
60312bb8:	e1530002 	cmp	r3, r2
60312bbc:	93a05000 	movls	r5, #0
60312bc0:	9a000009 	bls	60312bec <xQueueGiveFromISR+0x4c>
60312bc4:	e5d43045 	ldrb	r3, [r4, #69]	; 0x45
60312bc8:	e2822001 	add	r2, r2, #1
60312bcc:	e35300ff 	cmp	r3, #255	; 0xff
60312bd0:	e5842038 	str	r2, [r4, #56]	; 0x38
60312bd4:	e6af3073 	sxtb	r3, r3
60312bd8:	0a000006 	beq	60312bf8 <xQueueGiveFromISR+0x58>
60312bdc:	e2833001 	add	r3, r3, #1
60312be0:	e3a05001 	mov	r5, #1
60312be4:	e6af3073 	sxtb	r3, r3
60312be8:	e5c43045 	strb	r3, [r4, #69]	; 0x45
60312bec:	ebfff8ae 	bl	60310eac <vTaskExitCritical>
60312bf0:	e1a00005 	mov	r0, r5
60312bf4:	e8bd8070 	pop	{r4, r5, r6, pc}
60312bf8:	e5943048 	ldr	r3, [r4, #72]	; 0x48
60312bfc:	e3530000 	cmp	r3, #0
60312c00:	0a000007 	beq	60312c24 <xQueueGiveFromISR+0x84>
60312c04:	e3a01000 	mov	r1, #0
60312c08:	e1a00004 	mov	r0, r4
60312c0c:	ebfffe7f 	bl	60312610 <prvNotifyQueueSetContainer>
60312c10:	e3560000 	cmp	r6, #0
60312c14:	13500000 	cmpne	r0, #0
60312c18:	1a000009 	bne	60312c44 <xQueueGiveFromISR+0xa4>
60312c1c:	e3a05001 	mov	r5, #1
60312c20:	eafffff1 	b	60312bec <xQueueGiveFromISR+0x4c>
60312c24:	e5943024 	ldr	r3, [r4, #36]	; 0x24
60312c28:	e3530000 	cmp	r3, #0
60312c2c:	0afffffa 	beq	60312c1c <xQueueGiveFromISR+0x7c>
60312c30:	e2840024 	add	r0, r4, #36	; 0x24
60312c34:	ebfffc00 	bl	60311c3c <xTaskRemoveFromEventList>
60312c38:	e3560000 	cmp	r6, #0
60312c3c:	13500000 	cmpne	r0, #0
60312c40:	0afffff5 	beq	60312c1c <xQueueGiveFromISR+0x7c>
60312c44:	e3a03001 	mov	r3, #1
60312c48:	e1a05003 	mov	r5, r3
60312c4c:	e5863000 	str	r3, [r6]
60312c50:	eaffffe5 	b	60312bec <xQueueGiveFromISR+0x4c>

60312c54 <xQueueReceive>:
60312c54:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60312c58:	e1a04000 	mov	r4, r0
60312c5c:	e24dd010 	sub	sp, sp, #16
60312c60:	e1a07001 	mov	r7, r1
60312c64:	e58d2004 	str	r2, [sp, #4]
60312c68:	ebfff879 	bl	60310e54 <vTaskEnterCritical>
60312c6c:	e5945038 	ldr	r5, [r4, #56]	; 0x38
60312c70:	e3550000 	cmp	r5, #0
60312c74:	1a000045 	bne	60312d90 <xQueueReceive+0x13c>
60312c78:	e59d3004 	ldr	r3, [sp, #4]
60312c7c:	e3530000 	cmp	r3, #0
60312c80:	0a000037 	beq	60312d64 <xQueueReceive+0x110>
60312c84:	e28d0008 	add	r0, sp, #8
60312c88:	e1a06005 	mov	r6, r5
60312c8c:	e2848024 	add	r8, r4, #36	; 0x24
60312c90:	ebfff814 	bl	60310ce8 <vTaskInternalSetTimeOutState>
60312c94:	ebfff884 	bl	60310eac <vTaskExitCritical>
60312c98:	ebfffd89 	bl	603122c4 <vTaskSuspendAll>
60312c9c:	ebfff86c 	bl	60310e54 <vTaskEnterCritical>
60312ca0:	e5d43044 	ldrb	r3, [r4, #68]	; 0x44
60312ca4:	e35300ff 	cmp	r3, #255	; 0xff
60312ca8:	05c46044 	strbeq	r6, [r4, #68]	; 0x44
60312cac:	e5d43045 	ldrb	r3, [r4, #69]	; 0x45
60312cb0:	e35300ff 	cmp	r3, #255	; 0xff
60312cb4:	05c46045 	strbeq	r6, [r4, #69]	; 0x45
60312cb8:	ebfff87b 	bl	60310eac <vTaskExitCritical>
60312cbc:	e28d1004 	add	r1, sp, #4
60312cc0:	e28d0008 	add	r0, sp, #8
60312cc4:	ebfffc21 	bl	60311d50 <xTaskCheckForTimeOut>
60312cc8:	e3500000 	cmp	r0, #0
60312ccc:	1a000015 	bne	60312d28 <xQueueReceive+0xd4>
60312cd0:	ebfff85f 	bl	60310e54 <vTaskEnterCritical>
60312cd4:	e5943038 	ldr	r3, [r4, #56]	; 0x38
60312cd8:	e3530000 	cmp	r3, #0
60312cdc:	1a000024 	bne	60312d74 <xQueueReceive+0x120>
60312ce0:	ebfff871 	bl	60310eac <vTaskExitCritical>
60312ce4:	e59d1004 	ldr	r1, [sp, #4]
60312ce8:	e1a00008 	mov	r0, r8
60312cec:	ebfffb83 	bl	60311b00 <vTaskPlaceOnEventList>
60312cf0:	ebfff857 	bl	60310e54 <vTaskEnterCritical>
60312cf4:	e5943038 	ldr	r3, [r4, #56]	; 0x38
60312cf8:	e3530000 	cmp	r3, #0
60312cfc:	0a000021 	beq	60312d88 <xQueueReceive+0x134>
60312d00:	ebfff869 	bl	60310eac <vTaskExitCritical>
60312d04:	e1a00008 	mov	r0, r8
60312d08:	ebfffba9 	bl	60311bb4 <vTaskPlaceRemoveFromEventList>
60312d0c:	e1a00004 	mov	r0, r4
60312d10:	ebfffe61 	bl	6031269c <prvUnlockQueue>
60312d14:	ebfffb73 	bl	60311ae8 <xTaskResumeAll>
60312d18:	e3500000 	cmp	r0, #0
60312d1c:	1a000009 	bne	60312d48 <xQueueReceive+0xf4>
60312d20:	ebfff836 	bl	60310e00 <vTaskYieldWithinAPI>
60312d24:	ea000007 	b	60312d48 <xQueueReceive+0xf4>
60312d28:	e1a00004 	mov	r0, r4
60312d2c:	ebfffe5a 	bl	6031269c <prvUnlockQueue>
60312d30:	ebfffb6c 	bl	60311ae8 <xTaskResumeAll>
60312d34:	ebfff846 	bl	60310e54 <vTaskEnterCritical>
60312d38:	e5943038 	ldr	r3, [r4, #56]	; 0x38
60312d3c:	e3530000 	cmp	r3, #0
60312d40:	0a000007 	beq	60312d64 <xQueueReceive+0x110>
60312d44:	ebfff858 	bl	60310eac <vTaskExitCritical>
60312d48:	ebfff841 	bl	60310e54 <vTaskEnterCritical>
60312d4c:	e5945038 	ldr	r5, [r4, #56]	; 0x38
60312d50:	e3550000 	cmp	r5, #0
60312d54:	1a00000d 	bne	60312d90 <xQueueReceive+0x13c>
60312d58:	e59d3004 	ldr	r3, [sp, #4]
60312d5c:	e3530000 	cmp	r3, #0
60312d60:	1affffcb 	bne	60312c94 <xQueueReceive+0x40>
60312d64:	ebfff850 	bl	60310eac <vTaskExitCritical>
60312d68:	e3a00000 	mov	r0, #0
60312d6c:	e28dd010 	add	sp, sp, #16
60312d70:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60312d74:	ebfff84c 	bl	60310eac <vTaskExitCritical>
60312d78:	e1a00004 	mov	r0, r4
60312d7c:	ebfffe46 	bl	6031269c <prvUnlockQueue>
60312d80:	ebfffb58 	bl	60311ae8 <xTaskResumeAll>
60312d84:	eaffffef 	b	60312d48 <xQueueReceive+0xf4>
60312d88:	ebfff847 	bl	60310eac <vTaskExitCritical>
60312d8c:	eaffffde 	b	60312d0c <xQueueReceive+0xb8>
60312d90:	ebfff82f 	bl	60310e54 <vTaskEnterCritical>
60312d94:	e5942040 	ldr	r2, [r4, #64]	; 0x40
60312d98:	e3520000 	cmp	r2, #0
60312d9c:	0a000008 	beq	60312dc4 <xQueueReceive+0x170>
60312da0:	e594100c 	ldr	r1, [r4, #12]
60312da4:	e5943008 	ldr	r3, [r4, #8]
60312da8:	e0811002 	add	r1, r1, r2
60312dac:	e1510003 	cmp	r1, r3
60312db0:	e584100c 	str	r1, [r4, #12]
60312db4:	e1a00007 	mov	r0, r7
60312db8:	25941000 	ldrcs	r1, [r4]
60312dbc:	2584100c 	strcs	r1, [r4, #12]
60312dc0:	ebffb94e 	bl	60301300 <memcpy>
60312dc4:	ebfff838 	bl	60310eac <vTaskExitCritical>
60312dc8:	e2455001 	sub	r5, r5, #1
60312dcc:	e5845038 	str	r5, [r4, #56]	; 0x38
60312dd0:	e5943010 	ldr	r3, [r4, #16]
60312dd4:	e3530000 	cmp	r3, #0
60312dd8:	1a000003 	bne	60312dec <xQueueReceive+0x198>
60312ddc:	ebfff832 	bl	60310eac <vTaskExitCritical>
60312de0:	e3a00001 	mov	r0, #1
60312de4:	e28dd010 	add	sp, sp, #16
60312de8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60312dec:	e2840010 	add	r0, r4, #16
60312df0:	ebfffb91 	bl	60311c3c <xTaskRemoveFromEventList>
60312df4:	e3500000 	cmp	r0, #0
60312df8:	0afffff7 	beq	60312ddc <xQueueReceive+0x188>
60312dfc:	ebfff7ff 	bl	60310e00 <vTaskYieldWithinAPI>
60312e00:	eafffff5 	b	60312ddc <xQueueReceive+0x188>

60312e04 <xQueueSemaphoreTake>:
60312e04:	e92d40f0 	push	{r4, r5, r6, r7, lr}
60312e08:	e1a04000 	mov	r4, r0
60312e0c:	e24dd014 	sub	sp, sp, #20
60312e10:	e3a06000 	mov	r6, #0
60312e14:	e1a05006 	mov	r5, r6
60312e18:	e58d1004 	str	r1, [sp, #4]
60312e1c:	ebfff80c 	bl	60310e54 <vTaskEnterCritical>
60312e20:	e5943038 	ldr	r3, [r4, #56]	; 0x38
60312e24:	e1a07006 	mov	r7, r6
60312e28:	e3530000 	cmp	r3, #0
60312e2c:	1a00003a 	bne	60312f1c <xQueueSemaphoreTake+0x118>
60312e30:	e59d3004 	ldr	r3, [sp, #4]
60312e34:	e3530000 	cmp	r3, #0
60312e38:	0a000067 	beq	60312fdc <xQueueSemaphoreTake+0x1d8>
60312e3c:	e3550000 	cmp	r5, #0
60312e40:	0a000042 	beq	60312f50 <xQueueSemaphoreTake+0x14c>
60312e44:	ebfff818 	bl	60310eac <vTaskExitCritical>
60312e48:	ebfffd1d 	bl	603122c4 <vTaskSuspendAll>
60312e4c:	ebfff800 	bl	60310e54 <vTaskEnterCritical>
60312e50:	e5d43044 	ldrb	r3, [r4, #68]	; 0x44
60312e54:	e35300ff 	cmp	r3, #255	; 0xff
60312e58:	05c47044 	strbeq	r7, [r4, #68]	; 0x44
60312e5c:	e5d43045 	ldrb	r3, [r4, #69]	; 0x45
60312e60:	e35300ff 	cmp	r3, #255	; 0xff
60312e64:	05c47045 	strbeq	r7, [r4, #69]	; 0x45
60312e68:	ebfff80f 	bl	60310eac <vTaskExitCritical>
60312e6c:	e28d1004 	add	r1, sp, #4
60312e70:	e28d0008 	add	r0, sp, #8
60312e74:	ebfffbb5 	bl	60311d50 <xTaskCheckForTimeOut>
60312e78:	e3500000 	cmp	r0, #0
60312e7c:	1a000019 	bne	60312ee8 <xQueueSemaphoreTake+0xe4>
60312e80:	ebfff7f3 	bl	60310e54 <vTaskEnterCritical>
60312e84:	e5943038 	ldr	r3, [r4, #56]	; 0x38
60312e88:	e3530000 	cmp	r3, #0
60312e8c:	1a000032 	bne	60312f5c <xQueueSemaphoreTake+0x158>
60312e90:	ebfff805 	bl	60310eac <vTaskExitCritical>
60312e94:	e5943000 	ldr	r3, [r4]
60312e98:	e3530000 	cmp	r3, #0
60312e9c:	0a000048 	beq	60312fc4 <xQueueSemaphoreTake+0x1c0>
60312ea0:	e2845024 	add	r5, r4, #36	; 0x24
60312ea4:	e59d1004 	ldr	r1, [sp, #4]
60312ea8:	e1a00005 	mov	r0, r5
60312eac:	ebfffb13 	bl	60311b00 <vTaskPlaceOnEventList>
60312eb0:	ebfff7e7 	bl	60310e54 <vTaskEnterCritical>
60312eb4:	e5943038 	ldr	r3, [r4, #56]	; 0x38
60312eb8:	e3530000 	cmp	r3, #0
60312ebc:	0a000031 	beq	60312f88 <xQueueSemaphoreTake+0x184>
60312ec0:	ebfff7f9 	bl	60310eac <vTaskExitCritical>
60312ec4:	e1a00005 	mov	r0, r5
60312ec8:	ebfffb39 	bl	60311bb4 <vTaskPlaceRemoveFromEventList>
60312ecc:	e1a00004 	mov	r0, r4
60312ed0:	ebfffdf1 	bl	6031269c <prvUnlockQueue>
60312ed4:	ebfffb03 	bl	60311ae8 <xTaskResumeAll>
60312ed8:	e3500000 	cmp	r0, #0
60312edc:	1a000009 	bne	60312f08 <xQueueSemaphoreTake+0x104>
60312ee0:	ebfff7c6 	bl	60310e00 <vTaskYieldWithinAPI>
60312ee4:	ea000007 	b	60312f08 <xQueueSemaphoreTake+0x104>
60312ee8:	e1a00004 	mov	r0, r4
60312eec:	ebfffdea 	bl	6031269c <prvUnlockQueue>
60312ef0:	ebfffafc 	bl	60311ae8 <xTaskResumeAll>
60312ef4:	ebfff7d6 	bl	60310e54 <vTaskEnterCritical>
60312ef8:	e5943038 	ldr	r3, [r4, #56]	; 0x38
60312efc:	e3530000 	cmp	r3, #0
60312f00:	0a00001a 	beq	60312f70 <xQueueSemaphoreTake+0x16c>
60312f04:	ebfff7e8 	bl	60310eac <vTaskExitCritical>
60312f08:	ebfff7d1 	bl	60310e54 <vTaskEnterCritical>
60312f0c:	e5943038 	ldr	r3, [r4, #56]	; 0x38
60312f10:	e3a05001 	mov	r5, #1
60312f14:	e3530000 	cmp	r3, #0
60312f18:	0affffc4 	beq	60312e30 <xQueueSemaphoreTake+0x2c>
60312f1c:	e5942000 	ldr	r2, [r4]
60312f20:	e2433001 	sub	r3, r3, #1
60312f24:	e3520000 	cmp	r2, #0
60312f28:	e5843038 	str	r3, [r4, #56]	; 0x38
60312f2c:	0a000035 	beq	60313008 <xQueueSemaphoreTake+0x204>
60312f30:	e5943010 	ldr	r3, [r4, #16]
60312f34:	e3530000 	cmp	r3, #0
60312f38:	1a00002c 	bne	60312ff0 <xQueueSemaphoreTake+0x1ec>
60312f3c:	e3a06001 	mov	r6, #1
60312f40:	ebfff7d9 	bl	60310eac <vTaskExitCritical>
60312f44:	e1a00006 	mov	r0, r6
60312f48:	e28dd014 	add	sp, sp, #20
60312f4c:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
60312f50:	e28d0008 	add	r0, sp, #8
60312f54:	ebfff763 	bl	60310ce8 <vTaskInternalSetTimeOutState>
60312f58:	eaffffb9 	b	60312e44 <xQueueSemaphoreTake+0x40>
60312f5c:	ebfff7d2 	bl	60310eac <vTaskExitCritical>
60312f60:	e1a00004 	mov	r0, r4
60312f64:	ebfffdcc 	bl	6031269c <prvUnlockQueue>
60312f68:	ebfffade 	bl	60311ae8 <xTaskResumeAll>
60312f6c:	eaffffe5 	b	60312f08 <xQueueSemaphoreTake+0x104>
60312f70:	ebfff7cd 	bl	60310eac <vTaskExitCritical>
60312f74:	e3560000 	cmp	r6, #0
60312f78:	1a000004 	bne	60312f90 <xQueueSemaphoreTake+0x18c>
60312f7c:	e1a00006 	mov	r0, r6
60312f80:	e28dd014 	add	sp, sp, #20
60312f84:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
60312f88:	ebfff7c7 	bl	60310eac <vTaskExitCritical>
60312f8c:	eaffffce 	b	60312ecc <xQueueSemaphoreTake+0xc8>
60312f90:	ebfff7af 	bl	60310e54 <vTaskEnterCritical>
60312f94:	e5941024 	ldr	r1, [r4, #36]	; 0x24
60312f98:	e5940008 	ldr	r0, [r4, #8]
60312f9c:	e3510000 	cmp	r1, #0
60312fa0:	e3a06000 	mov	r6, #0
60312fa4:	15943030 	ldrne	r3, [r4, #48]	; 0x30
60312fa8:	15931000 	ldrne	r1, [r3]
60312fac:	1261100b 	rsbne	r1, r1, #11
60312fb0:	ebfffc37 	bl	60312094 <vTaskPriorityDisinheritAfterTimeout>
60312fb4:	ebfff7bc 	bl	60310eac <vTaskExitCritical>
60312fb8:	e1a00006 	mov	r0, r6
60312fbc:	e28dd014 	add	sp, sp, #20
60312fc0:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
60312fc4:	ebfff7a2 	bl	60310e54 <vTaskEnterCritical>
60312fc8:	e5940008 	ldr	r0, [r4, #8]
60312fcc:	ebfffb9c 	bl	60311e44 <xTaskPriorityInherit>
60312fd0:	e1a06000 	mov	r6, r0
60312fd4:	ebfff7b4 	bl	60310eac <vTaskExitCritical>
60312fd8:	eaffffb0 	b	60312ea0 <xQueueSemaphoreTake+0x9c>
60312fdc:	e1a06003 	mov	r6, r3
60312fe0:	ebfff7b1 	bl	60310eac <vTaskExitCritical>
60312fe4:	e1a00006 	mov	r0, r6
60312fe8:	e28dd014 	add	sp, sp, #20
60312fec:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
60312ff0:	e2840010 	add	r0, r4, #16
60312ff4:	ebfffb10 	bl	60311c3c <xTaskRemoveFromEventList>
60312ff8:	e3500000 	cmp	r0, #0
60312ffc:	0affffce 	beq	60312f3c <xQueueSemaphoreTake+0x138>
60313000:	ebfff77e 	bl	60310e00 <vTaskYieldWithinAPI>
60313004:	eaffffcc 	b	60312f3c <xQueueSemaphoreTake+0x138>
60313008:	ebfffce9 	bl	603123b4 <pvTaskIncrementMutexHeldCount>
6031300c:	e5840008 	str	r0, [r4, #8]
60313010:	eaffffc6 	b	60312f30 <xQueueSemaphoreTake+0x12c>

60313014 <xQueueReceiveFromISR>:
60313014:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60313018:	e1a04000 	mov	r4, r0
6031301c:	e1a08001 	mov	r8, r1
60313020:	e1a07002 	mov	r7, r2
60313024:	ebfff78a 	bl	60310e54 <vTaskEnterCritical>
60313028:	e5945038 	ldr	r5, [r4, #56]	; 0x38
6031302c:	e3550000 	cmp	r5, #0
60313030:	1a000002 	bne	60313040 <xQueueReceiveFromISR+0x2c>
60313034:	ebfff79c 	bl	60310eac <vTaskExitCritical>
60313038:	e1a00005 	mov	r0, r5
6031303c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60313040:	e5d46044 	ldrb	r6, [r4, #68]	; 0x44
60313044:	ebfff782 	bl	60310e54 <vTaskEnterCritical>
60313048:	e5942040 	ldr	r2, [r4, #64]	; 0x40
6031304c:	e6af6076 	sxtb	r6, r6
60313050:	e3520000 	cmp	r2, #0
60313054:	1a000009 	bne	60313080 <xQueueReceiveFromISR+0x6c>
60313058:	ebfff793 	bl	60310eac <vTaskExitCritical>
6031305c:	e2455001 	sub	r5, r5, #1
60313060:	e3760001 	cmn	r6, #1
60313064:	e5845038 	str	r5, [r4, #56]	; 0x38
60313068:	0a00000e 	beq	603130a8 <xQueueReceiveFromISR+0x94>
6031306c:	e2866001 	add	r6, r6, #1
60313070:	e3a05001 	mov	r5, #1
60313074:	e6af6076 	sxtb	r6, r6
60313078:	e5c46044 	strb	r6, [r4, #68]	; 0x44
6031307c:	eaffffec 	b	60313034 <xQueueReceiveFromISR+0x20>
60313080:	e594100c 	ldr	r1, [r4, #12]
60313084:	e5943008 	ldr	r3, [r4, #8]
60313088:	e0811002 	add	r1, r1, r2
6031308c:	e1510003 	cmp	r1, r3
60313090:	e584100c 	str	r1, [r4, #12]
60313094:	e1a00008 	mov	r0, r8
60313098:	25941000 	ldrcs	r1, [r4]
6031309c:	2584100c 	strcs	r1, [r4, #12]
603130a0:	ebffb896 	bl	60301300 <memcpy>
603130a4:	eaffffeb 	b	60313058 <xQueueReceiveFromISR+0x44>
603130a8:	e5943010 	ldr	r3, [r4, #16]
603130ac:	e3530000 	cmp	r3, #0
603130b0:	1a000001 	bne	603130bc <xQueueReceiveFromISR+0xa8>
603130b4:	e3a05001 	mov	r5, #1
603130b8:	eaffffdd 	b	60313034 <xQueueReceiveFromISR+0x20>
603130bc:	e2840010 	add	r0, r4, #16
603130c0:	ebfffadd 	bl	60311c3c <xTaskRemoveFromEventList>
603130c4:	e3570000 	cmp	r7, #0
603130c8:	13500000 	cmpne	r0, #0
603130cc:	13a03001 	movne	r3, #1
603130d0:	11a05003 	movne	r5, r3
603130d4:	15873000 	strne	r3, [r7]
603130d8:	0afffff5 	beq	603130b4 <xQueueReceiveFromISR+0xa0>
603130dc:	eaffffd4 	b	60313034 <xQueueReceiveFromISR+0x20>

603130e0 <vQueueAddToRegistry>:
603130e0:	e308c374 	movw	ip, #33652	; 0x8374
603130e4:	e346c032 	movt	ip, #24626	; 0x6032
603130e8:	e3a03000 	mov	r3, #0
603130ec:	ea000002 	b	603130fc <vQueueAddToRegistry+0x1c>
603130f0:	e2833001 	add	r3, r3, #1
603130f4:	e3530008 	cmp	r3, #8
603130f8:	012fff1e 	bxeq	lr
603130fc:	e79c2183 	ldr	r2, [ip, r3, lsl #3]
60313100:	e3520000 	cmp	r2, #0
60313104:	1afffff9 	bne	603130f0 <vQueueAddToRegistry+0x10>
60313108:	e08c2183 	add	r2, ip, r3, lsl #3
6031310c:	e78c1183 	str	r1, [ip, r3, lsl #3]
60313110:	e5820004 	str	r0, [r2, #4]
60313114:	e12fff1e 	bx	lr

60313118 <vQueueWaitForMessageRestricted>:
60313118:	e92d4070 	push	{r4, r5, r6, lr}
6031311c:	e1a04000 	mov	r4, r0
60313120:	e1a06001 	mov	r6, r1
60313124:	e1a05002 	mov	r5, r2
60313128:	ebfff749 	bl	60310e54 <vTaskEnterCritical>
6031312c:	e5d43044 	ldrb	r3, [r4, #68]	; 0x44
60313130:	e35300ff 	cmp	r3, #255	; 0xff
60313134:	03a03000 	moveq	r3, #0
60313138:	05c43044 	strbeq	r3, [r4, #68]	; 0x44
6031313c:	e5d43045 	ldrb	r3, [r4, #69]	; 0x45
60313140:	e35300ff 	cmp	r3, #255	; 0xff
60313144:	03a03000 	moveq	r3, #0
60313148:	05c43045 	strbeq	r3, [r4, #69]	; 0x45
6031314c:	ebfff756 	bl	60310eac <vTaskExitCritical>
60313150:	e5943038 	ldr	r3, [r4, #56]	; 0x38
60313154:	e3530000 	cmp	r3, #0
60313158:	0a000002 	beq	60313168 <vQueueWaitForMessageRestricted+0x50>
6031315c:	e1a00004 	mov	r0, r4
60313160:	e8bd4070 	pop	{r4, r5, r6, lr}
60313164:	eafffd4c 	b	6031269c <prvUnlockQueue>
60313168:	e2840024 	add	r0, r4, #36	; 0x24
6031316c:	e1a02005 	mov	r2, r5
60313170:	e1a01006 	mov	r1, r6
60313174:	ebfffa76 	bl	60311b54 <vTaskPlaceOnEventListRestricted>
60313178:	e1a00004 	mov	r0, r4
6031317c:	e8bd4070 	pop	{r4, r5, r6, lr}
60313180:	eafffd45 	b	6031269c <prvUnlockQueue>

60313184 <prvCheckForValidListAndQueue>:
60313184:	e92d40f0 	push	{r4, r5, r6, r7, lr}
60313188:	e308448c 	movw	r4, #33932	; 0x848c
6031318c:	e3464032 	movt	r4, #24626	; 0x6032
60313190:	e24dd00c 	sub	sp, sp, #12
60313194:	ebfff72e 	bl	60310e54 <vTaskEnterCritical>
60313198:	e5945000 	ldr	r5, [r4]
6031319c:	e3550000 	cmp	r5, #0
603131a0:	0a000002 	beq	603131b0 <prvCheckForValidListAndQueue+0x2c>
603131a4:	e28dd00c 	add	sp, sp, #12
603131a8:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
603131ac:	eafff73e 	b	60310eac <vTaskExitCritical>
603131b0:	e308740c 	movw	r7, #33804	; 0x840c
603131b4:	e3467032 	movt	r7, #24626	; 0x6032
603131b8:	e1a00007 	mov	r0, r7
603131bc:	e3086420 	movw	r6, #33824	; 0x8420
603131c0:	e3466032 	movt	r6, #24626	; 0x6032
603131c4:	ebfffc99 	bl	60312430 <vListInitialise>
603131c8:	e1a00006 	mov	r0, r6
603131cc:	ebfffc97 	bl	60312430 <vListInitialise>
603131d0:	e30823b4 	movw	r2, #33716	; 0x83b4
603131d4:	e3462032 	movt	r2, #24626	; 0x6032
603131d8:	e58d5000 	str	r5, [sp]
603131dc:	e3a01010 	mov	r1, #16
603131e0:	e5827000 	str	r7, [r2]
603131e4:	e30823b8 	movw	r2, #33720	; 0x83b8
603131e8:	e3462032 	movt	r2, #24626	; 0x6032
603131ec:	e3a00005 	mov	r0, #5
603131f0:	e3083438 	movw	r3, #33848	; 0x8438
603131f4:	e3463032 	movt	r3, #24626	; 0x6032
603131f8:	e5826000 	str	r6, [r2]
603131fc:	e30823bc 	movw	r2, #33724	; 0x83bc
60313200:	e3462032 	movt	r2, #24626	; 0x6032
60313204:	ebfffd63 	bl	60312798 <xQueueGenericCreateStatic>
60313208:	e3500000 	cmp	r0, #0
6031320c:	e5840000 	str	r0, [r4]
60313210:	0affffe3 	beq	603131a4 <prvCheckForValidListAndQueue+0x20>
60313214:	e3051940 	movw	r1, #22848	; 0x5940
60313218:	e3461031 	movt	r1, #24625	; 0x6031
6031321c:	ebffffaf 	bl	603130e0 <vQueueAddToRegistry>
60313220:	eaffffdf 	b	603131a4 <prvCheckForValidListAndQueue+0x20>

60313224 <xTimerCreateTimerTask>:
60313224:	e92d4010 	push	{r4, lr}
60313228:	e24dd020 	sub	sp, sp, #32
6031322c:	ebffffd4 	bl	60313184 <prvCheckForValidListAndQueue>
60313230:	e308348c 	movw	r3, #33932	; 0x848c
60313234:	e3463032 	movt	r3, #24626	; 0x6032
60313238:	e5930000 	ldr	r0, [r3]
6031323c:	e3500000 	cmp	r0, #0
60313240:	0a000018 	beq	603132a8 <xTimerCreateTimerTask+0x84>
60313244:	e28d201c 	add	r2, sp, #28
60313248:	e28d1018 	add	r1, sp, #24
6031324c:	e28d0014 	add	r0, sp, #20
60313250:	e3a04000 	mov	r4, #0
60313254:	e58d4014 	str	r4, [sp, #20]
60313258:	e58d4018 	str	r4, [sp, #24]
6031325c:	ebfff328 	bl	6030ff04 <vApplicationGetTimerTaskMemory>
60313260:	e59d0018 	ldr	r0, [sp, #24]
60313264:	e59dc014 	ldr	ip, [sp, #20]
60313268:	e59d201c 	ldr	r2, [sp, #28]
6031326c:	e3a0100a 	mov	r1, #10
60313270:	e1a03004 	mov	r3, r4
60313274:	e98d1001 	stmib	sp, {r0, ip}
60313278:	e58d1000 	str	r1, [sp]
6031327c:	e30303e8 	movw	r0, #13288	; 0x33e8
60313280:	e3460031 	movt	r0, #24625	; 0x6031
60313284:	e3051948 	movw	r1, #22856	; 0x5948
60313288:	e3461031 	movt	r1, #24625	; 0x6031
6031328c:	ebfff7b9 	bl	60311178 <xTaskCreateStatic>
60313290:	e3082490 	movw	r2, #33936	; 0x8490
60313294:	e3462032 	movt	r2, #24626	; 0x6032
60313298:	e1a03000 	mov	r3, r0
6031329c:	e0500004 	subs	r0, r0, r4
603132a0:	13a00001 	movne	r0, #1
603132a4:	e5823000 	str	r3, [r2]
603132a8:	e28dd020 	add	sp, sp, #32
603132ac:	e8bd8010 	pop	{r4, pc}

603132b0 <xTimerGenericCommand>:
603132b0:	e92d4010 	push	{r4, lr}
603132b4:	e308448c 	movw	r4, #33932	; 0x848c
603132b8:	e3464032 	movt	r4, #24626	; 0x6032
603132bc:	e1a0c000 	mov	ip, r0
603132c0:	e24dd010 	sub	sp, sp, #16
603132c4:	e5940000 	ldr	r0, [r4]
603132c8:	e3500000 	cmp	r0, #0
603132cc:	0a00000e 	beq	6031330c <xTimerGenericCommand+0x5c>
603132d0:	e3510005 	cmp	r1, #5
603132d4:	e58d2004 	str	r2, [sp, #4]
603132d8:	e58d1000 	str	r1, [sp]
603132dc:	e58dc008 	str	ip, [sp, #8]
603132e0:	ca00000b 	bgt	60313314 <xTimerGenericCommand+0x64>
603132e4:	ebfff6ae 	bl	60310da4 <xTaskGetSchedulerState>
603132e8:	e3500002 	cmp	r0, #2
603132ec:	13a03000 	movne	r3, #0
603132f0:	03a03000 	moveq	r3, #0
603132f4:	05940000 	ldreq	r0, [r4]
603132f8:	059d2018 	ldreq	r2, [sp, #24]
603132fc:	15940000 	ldrne	r0, [r4]
60313300:	11a02003 	movne	r2, r3
60313304:	e1a0100d 	mov	r1, sp
60313308:	ebfffd78 	bl	603128f0 <xQueueGenericSend>
6031330c:	e28dd010 	add	sp, sp, #16
60313310:	e8bd8010 	pop	{r4, pc}
60313314:	e1a0e003 	mov	lr, r3
60313318:	e1a0200e 	mov	r2, lr
6031331c:	e3a03000 	mov	r3, #0
60313320:	e1a0100d 	mov	r1, sp
60313324:	ebfffde7 	bl	60312ac8 <xQueueGenericSendFromISR>
60313328:	e28dd010 	add	sp, sp, #16
6031332c:	e8bd8010 	pop	{r4, pc}

60313330 <prvSwitchTimerLists>:
60313330:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60313334:	e30863b4 	movw	r6, #33716	; 0x83b4
60313338:	e3466032 	movt	r6, #24626	; 0x6032
6031333c:	e24dd008 	sub	sp, sp, #8
60313340:	e3a07000 	mov	r7, #0
60313344:	ea00000b 	b	60313378 <prvSwitchTimerLists+0x48>
60313348:	e593300c 	ldr	r3, [r3, #12]
6031334c:	e593400c 	ldr	r4, [r3, #12]
60313350:	e5938000 	ldr	r8, [r3]
60313354:	e2845004 	add	r5, r4, #4
60313358:	e1a00005 	mov	r0, r5
6031335c:	ebfffc60 	bl	603124e4 <uxListRemove>
60313360:	e5943020 	ldr	r3, [r4, #32]
60313364:	e1a00004 	mov	r0, r4
60313368:	e12fff33 	blx	r3
6031336c:	e5d43028 	ldrb	r3, [r4, #40]	; 0x28
60313370:	e3130004 	tst	r3, #4
60313374:	1a00000a 	bne	603133a4 <prvSwitchTimerLists+0x74>
60313378:	e5963000 	ldr	r3, [r6]
6031337c:	e5932000 	ldr	r2, [r3]
60313380:	e3520000 	cmp	r2, #0
60313384:	1affffef 	bne	60313348 <prvSwitchTimerLists+0x18>
60313388:	e30823b8 	movw	r2, #33720	; 0x83b8
6031338c:	e3462032 	movt	r2, #24626	; 0x6032
60313390:	e5921000 	ldr	r1, [r2]
60313394:	e5861000 	str	r1, [r6]
60313398:	e5823000 	str	r3, [r2]
6031339c:	e28dd008 	add	sp, sp, #8
603133a0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
603133a4:	e594c018 	ldr	ip, [r4, #24]
603133a8:	e3a03000 	mov	r3, #0
603133ac:	e088c00c 	add	ip, r8, ip
603133b0:	e1a01005 	mov	r1, r5
603133b4:	e1a00004 	mov	r0, r4
603133b8:	e158000c 	cmp	r8, ip
603133bc:	e1a02008 	mov	r2, r8
603133c0:	2a000004 	bcs	603133d8 <prvSwitchTimerLists+0xa8>
603133c4:	e5960000 	ldr	r0, [r6]
603133c8:	e584c004 	str	ip, [r4, #4]
603133cc:	e5844010 	str	r4, [r4, #16]
603133d0:	ebfffc2d 	bl	6031248c <vListInsert>
603133d4:	eaffffe7 	b	60313378 <prvSwitchTimerLists+0x48>
603133d8:	e1a01003 	mov	r1, r3
603133dc:	e58d7000 	str	r7, [sp]
603133e0:	ebffffb2 	bl	603132b0 <xTimerGenericCommand>
603133e4:	eaffffe3 	b	60313378 <prvSwitchTimerLists+0x48>

603133e8 <prvTimerTask>:
603133e8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
603133ec:	e30863b4 	movw	r6, #33716	; 0x83b4
603133f0:	e3466032 	movt	r6, #24626	; 0x6032
603133f4:	e3085434 	movw	r5, #33844	; 0x8434
603133f8:	e3465032 	movt	r5, #24626	; 0x6032
603133fc:	e30873b8 	movw	r7, #33720	; 0x83b8
60313400:	e3467032 	movt	r7, #24626	; 0x6032
60313404:	e308448c 	movw	r4, #33932	; 0x848c
60313408:	e3464032 	movt	r4, #24626	; 0x6032
6031340c:	e24dd01c 	sub	sp, sp, #28
60313410:	e5963000 	ldr	r3, [r6]
60313414:	e593a000 	ldr	sl, [r3]
60313418:	e35a0000 	cmp	sl, #0
6031341c:	0a000077 	beq	60313600 <prvTimerTask+0x218>
60313420:	e593300c 	ldr	r3, [r3, #12]
60313424:	e593a000 	ldr	sl, [r3]
60313428:	ebfffba5 	bl	603122c4 <vTaskSuspendAll>
6031342c:	ebfff444 	bl	60310544 <xTaskGetTickCount>
60313430:	e5953000 	ldr	r3, [r5]
60313434:	e1a09000 	mov	r9, r0
60313438:	e1500003 	cmp	r0, r3
6031343c:	3a000075 	bcc	60313618 <prvTimerTask+0x230>
60313440:	e15a0000 	cmp	sl, r0
60313444:	83a02000 	movhi	r2, #0
60313448:	e5850000 	str	r0, [r5]
6031344c:	8a00007a 	bhi	6031363c <prvTimerTask+0x254>
60313450:	ebfff9a4 	bl	60311ae8 <xTaskResumeAll>
60313454:	e5963000 	ldr	r3, [r6]
60313458:	e593300c 	ldr	r3, [r3, #12]
6031345c:	e593b00c 	ldr	fp, [r3, #12]
60313460:	e28b8004 	add	r8, fp, #4
60313464:	e1a00008 	mov	r0, r8
60313468:	ebfffc1d 	bl	603124e4 <uxListRemove>
6031346c:	e5db3028 	ldrb	r3, [fp, #40]	; 0x28
60313470:	e3130004 	tst	r3, #4
60313474:	03c33001 	biceq	r3, r3, #1
60313478:	05cb3028 	strbeq	r3, [fp, #40]	; 0x28
6031347c:	1a000091 	bne	603136c8 <prvTimerTask+0x2e0>
60313480:	e59b3020 	ldr	r3, [fp, #32]
60313484:	e1a0000b 	mov	r0, fp
60313488:	e12fff33 	blx	r3
6031348c:	e5940000 	ldr	r0, [r4]
60313490:	e3a02000 	mov	r2, #0
60313494:	e28d1008 	add	r1, sp, #8
60313498:	ebfffded 	bl	60312c54 <xQueueReceive>
6031349c:	e3500000 	cmp	r0, #0
603134a0:	0affffda 	beq	60313410 <prvTimerTask+0x28>
603134a4:	e59d3008 	ldr	r3, [sp, #8]
603134a8:	e59d0010 	ldr	r0, [sp, #16]
603134ac:	e3530000 	cmp	r3, #0
603134b0:	ba000023 	blt	60313544 <prvTimerTask+0x15c>
603134b4:	e59d9010 	ldr	r9, [sp, #16]
603134b8:	e5993014 	ldr	r3, [r9, #20]
603134bc:	e3530000 	cmp	r3, #0
603134c0:	0a000001 	beq	603134cc <prvTimerTask+0xe4>
603134c4:	e2890004 	add	r0, r9, #4
603134c8:	ebfffc05 	bl	603124e4 <uxListRemove>
603134cc:	ebfff41c 	bl	60310544 <xTaskGetTickCount>
603134d0:	e5953000 	ldr	r3, [r5]
603134d4:	e1a0a000 	mov	sl, r0
603134d8:	e1500003 	cmp	r0, r3
603134dc:	3a00005e 	bcc	6031365c <prvTimerTask+0x274>
603134e0:	e59d3008 	ldr	r3, [sp, #8]
603134e4:	e585a000 	str	sl, [r5]
603134e8:	e3530005 	cmp	r3, #5
603134ec:	0a00005f 	beq	60313670 <prvTimerTask+0x288>
603134f0:	ca00003a 	bgt	603135e0 <prvTimerTask+0x1f8>
603134f4:	e3530003 	cmp	r3, #3
603134f8:	0a000064 	beq	60313690 <prvTimerTask+0x2a8>
603134fc:	e3530004 	cmp	r3, #4
60313500:	1a000016 	bne	60313560 <prvTimerTask+0x178>
60313504:	e59d200c 	ldr	r2, [sp, #12]
60313508:	e5d93028 	ldrb	r3, [r9, #40]	; 0x28
6031350c:	e082100a 	add	r1, r2, sl
60313510:	e3833001 	orr	r3, r3, #1
60313514:	e151000a 	cmp	r1, sl
60313518:	e5c93028 	strb	r3, [r9, #40]	; 0x28
6031351c:	e5892018 	str	r2, [r9, #24]
60313520:	e5891004 	str	r1, [r9, #4]
60313524:	e5899010 	str	r9, [r9, #16]
60313528:	8a000062 	bhi	603136b8 <prvTimerTask+0x2d0>
6031352c:	e3520000 	cmp	r2, #0
60313530:	0affffd5 	beq	6031348c <prvTimerTask+0xa4>
60313534:	e5970000 	ldr	r0, [r7]
60313538:	e2891004 	add	r1, r9, #4
6031353c:	ebfffbd2 	bl	6031248c <vListInsert>
60313540:	eaffffd1 	b	6031348c <prvTimerTask+0xa4>
60313544:	e59d300c 	ldr	r3, [sp, #12]
60313548:	e59d1014 	ldr	r1, [sp, #20]
6031354c:	e12fff33 	blx	r3
60313550:	e59d3008 	ldr	r3, [sp, #8]
60313554:	e3530000 	cmp	r3, #0
60313558:	baffffcb 	blt	6031348c <prvTimerTask+0xa4>
6031355c:	eaffffd4 	b	603134b4 <prvTimerTask+0xcc>
60313560:	e3530002 	cmp	r3, #2
60313564:	8affffc8 	bhi	6031348c <prvTimerTask+0xa4>
60313568:	e59d300c 	ldr	r3, [sp, #12]
6031356c:	e5990018 	ldr	r0, [r9, #24]
60313570:	e5d92028 	ldrb	r2, [r9, #40]	; 0x28
60313574:	e093c000 	adds	ip, r3, r0
60313578:	e3822001 	orr	r2, r2, #1
6031357c:	23a01001 	movcs	r1, #1
60313580:	33a01000 	movcc	r1, #0
60313584:	e5c92028 	strb	r2, [r9, #40]	; 0x28
60313588:	e15c000a 	cmp	ip, sl
6031358c:	e589c004 	str	ip, [r9, #4]
60313590:	e5899010 	str	r9, [r9, #16]
60313594:	8a000041 	bhi	603136a0 <prvTimerTask+0x2b8>
60313598:	e04a3003 	sub	r3, sl, r3
6031359c:	e1500003 	cmp	r0, r3
603135a0:	8affffe3 	bhi	60313534 <prvTimerTask+0x14c>
603135a4:	e5993020 	ldr	r3, [r9, #32]
603135a8:	e1a00009 	mov	r0, r9
603135ac:	e12fff33 	blx	r3
603135b0:	e5d93028 	ldrb	r3, [r9, #40]	; 0x28
603135b4:	e3130004 	tst	r3, #4
603135b8:	0affffb3 	beq	6031348c <prvTimerTask+0xa4>
603135bc:	e5992018 	ldr	r2, [r9, #24]
603135c0:	e59d100c 	ldr	r1, [sp, #12]
603135c4:	e3a03000 	mov	r3, #0
603135c8:	e0812002 	add	r2, r1, r2
603135cc:	e1a00009 	mov	r0, r9
603135d0:	e1a01003 	mov	r1, r3
603135d4:	e58d3000 	str	r3, [sp]
603135d8:	ebffff34 	bl	603132b0 <xTimerGenericCommand>
603135dc:	eaffffaa 	b	6031348c <prvTimerTask+0xa4>
603135e0:	e3530008 	cmp	r3, #8
603135e4:	0a000029 	beq	60313690 <prvTimerTask+0x2a8>
603135e8:	da000002 	ble	603135f8 <prvTimerTask+0x210>
603135ec:	e3530009 	cmp	r3, #9
603135f0:	0affffc3 	beq	60313504 <prvTimerTask+0x11c>
603135f4:	eaffffa4 	b	6031348c <prvTimerTask+0xa4>
603135f8:	1affffda 	bne	60313568 <prvTimerTask+0x180>
603135fc:	eaffffa2 	b	6031348c <prvTimerTask+0xa4>
60313600:	ebfffb2f 	bl	603122c4 <vTaskSuspendAll>
60313604:	ebfff3ce 	bl	60310544 <xTaskGetTickCount>
60313608:	e5953000 	ldr	r3, [r5]
6031360c:	e1a09000 	mov	r9, r0
60313610:	e1500003 	cmp	r0, r3
60313614:	2a000003 	bcs	60313628 <prvTimerTask+0x240>
60313618:	ebffff44 	bl	60313330 <prvSwitchTimerLists>
6031361c:	e5859000 	str	r9, [r5]
60313620:	ebfff930 	bl	60311ae8 <xTaskResumeAll>
60313624:	eaffff98 	b	6031348c <prvTimerTask+0xa4>
60313628:	e5973000 	ldr	r3, [r7]
6031362c:	e5859000 	str	r9, [r5]
60313630:	e5932000 	ldr	r2, [r3]
60313634:	e16f2f12 	clz	r2, r2
60313638:	e1a022a2 	lsr	r2, r2, #5
6031363c:	e5940000 	ldr	r0, [r4]
60313640:	e04a1009 	sub	r1, sl, r9
60313644:	ebfffeb3 	bl	60313118 <vQueueWaitForMessageRestricted>
60313648:	ebfff926 	bl	60311ae8 <xTaskResumeAll>
6031364c:	e3500000 	cmp	r0, #0
60313650:	1affff8d 	bne	6031348c <prvTimerTask+0xa4>
60313654:	ebfff5e9 	bl	60310e00 <vTaskYieldWithinAPI>
60313658:	eaffff8b 	b	6031348c <prvTimerTask+0xa4>
6031365c:	ebffff33 	bl	60313330 <prvSwitchTimerLists>
60313660:	e59d3008 	ldr	r3, [sp, #8]
60313664:	e585a000 	str	sl, [r5]
60313668:	e3530005 	cmp	r3, #5
6031366c:	1affff9f 	bne	603134f0 <prvTimerTask+0x108>
60313670:	e5d93028 	ldrb	r3, [r9, #40]	; 0x28
60313674:	e3130002 	tst	r3, #2
60313678:	13c33001 	bicne	r3, r3, #1
6031367c:	15c93028 	strbne	r3, [r9, #40]	; 0x28
60313680:	1affff81 	bne	6031348c <prvTimerTask+0xa4>
60313684:	e1a00009 	mov	r0, r9
60313688:	eb000095 	bl	603138e4 <vPortFree>
6031368c:	eaffff7e 	b	6031348c <prvTimerTask+0xa4>
60313690:	e5d93028 	ldrb	r3, [r9, #40]	; 0x28
60313694:	e3c33001 	bic	r3, r3, #1
60313698:	e5c93028 	strb	r3, [r9, #40]	; 0x28
6031369c:	eaffff7a 	b	6031348c <prvTimerTask+0xa4>
603136a0:	e2211001 	eor	r1, r1, #1
603136a4:	e153000a 	cmp	r3, sl
603136a8:	93a01000 	movls	r1, #0
603136ac:	82011001 	andhi	r1, r1, #1
603136b0:	e3510000 	cmp	r1, #0
603136b4:	1affffba 	bne	603135a4 <prvTimerTask+0x1bc>
603136b8:	e5960000 	ldr	r0, [r6]
603136bc:	e2891004 	add	r1, r9, #4
603136c0:	ebfffb71 	bl	6031248c <vListInsert>
603136c4:	eaffff70 	b	6031348c <prvTimerTask+0xa4>
603136c8:	e59b2018 	ldr	r2, [fp, #24]
603136cc:	e58bb010 	str	fp, [fp, #16]
603136d0:	e08a3002 	add	r3, sl, r2
603136d4:	e1590003 	cmp	r9, r3
603136d8:	e58b3004 	str	r3, [fp, #4]
603136dc:	3a000009 	bcc	60313708 <prvTimerTask+0x320>
603136e0:	e049900a 	sub	r9, r9, sl
603136e4:	e1520009 	cmp	r2, r9
603136e8:	8a00000a 	bhi	60313718 <prvTimerTask+0x330>
603136ec:	e3a03000 	mov	r3, #0
603136f0:	e1a0200a 	mov	r2, sl
603136f4:	e1a01003 	mov	r1, r3
603136f8:	e1a0000b 	mov	r0, fp
603136fc:	e58d3000 	str	r3, [sp]
60313700:	ebfffeea 	bl	603132b0 <xTimerGenericCommand>
60313704:	eaffff5d 	b	60313480 <prvTimerTask+0x98>
60313708:	e5960000 	ldr	r0, [r6]
6031370c:	e1a01008 	mov	r1, r8
60313710:	ebfffb5d 	bl	6031248c <vListInsert>
60313714:	eaffff59 	b	60313480 <prvTimerTask+0x98>
60313718:	e5970000 	ldr	r0, [r7]
6031371c:	e1a01008 	mov	r1, r8
60313720:	ebfffb59 	bl	6031248c <vListInsert>
60313724:	eaffff55 	b	60313480 <prvTimerTask+0x98>

60313728 <prvInsertBlockIntoFreeList>:
60313728:	e30834ac 	movw	r3, #33964	; 0x84ac
6031372c:	e3463032 	movt	r3, #24626	; 0x6032
60313730:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
60313734:	e1a02003 	mov	r2, r3
60313738:	e5933000 	ldr	r3, [r3]
6031373c:	e1530000 	cmp	r3, r0
60313740:	3afffffb 	bcc	60313734 <prvInsertBlockIntoFreeList+0xc>
60313744:	e592c004 	ldr	ip, [r2, #4]
60313748:	e5901004 	ldr	r1, [r0, #4]
6031374c:	e082e00c 	add	lr, r2, ip
60313750:	e150000e 	cmp	r0, lr
60313754:	0081100c 	addeq	r1, r1, ip
60313758:	01a00002 	moveq	r0, r2
6031375c:	e080c001 	add	ip, r0, r1
60313760:	05821004 	streq	r1, [r2, #4]
60313764:	e153000c 	cmp	r3, ip
60313768:	0a000003 	beq	6031377c <prvInsertBlockIntoFreeList+0x54>
6031376c:	e5803000 	str	r3, [r0]
60313770:	e1500002 	cmp	r0, r2
60313774:	15820000 	strne	r0, [r2]
60313778:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
6031377c:	e308c494 	movw	ip, #33940	; 0x8494
60313780:	e346c032 	movt	ip, #24626	; 0x6032
60313784:	e59cc000 	ldr	ip, [ip]
60313788:	e153000c 	cmp	r3, ip
6031378c:	0afffff6 	beq	6031376c <prvInsertBlockIntoFreeList+0x44>
60313790:	e5933004 	ldr	r3, [r3, #4]
60313794:	e0831001 	add	r1, r3, r1
60313798:	e5801004 	str	r1, [r0, #4]
6031379c:	e5923000 	ldr	r3, [r2]
603137a0:	e5933000 	ldr	r3, [r3]
603137a4:	e5803000 	str	r3, [r0]
603137a8:	eafffff0 	b	60313770 <prvInsertBlockIntoFreeList+0x48>

603137ac <pvPortMalloc>:
603137ac:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
603137b0:	e1a04000 	mov	r4, r0
603137b4:	ebfff5a6 	bl	60310e54 <vTaskEnterCritical>
603137b8:	e3083498 	movw	r3, #33944	; 0x8498
603137bc:	e3463032 	movt	r3, #24626	; 0x6032
603137c0:	e5936000 	ldr	r6, [r3]
603137c4:	e1160004 	tst	r6, r4
603137c8:	1a00003a 	bne	603138b8 <pvPortMalloc+0x10c>
603137cc:	e3540000 	cmp	r4, #0
603137d0:	0a000038 	beq	603138b8 <pvPortMalloc+0x10c>
603137d4:	e2842040 	add	r2, r4, #64	; 0x40
603137d8:	e314003f 	tst	r4, #63	; 0x3f
603137dc:	13c2203f 	bicne	r2, r2, #63	; 0x3f
603137e0:	12822040 	addne	r2, r2, #64	; 0x40
603137e4:	e3520000 	cmp	r2, #0
603137e8:	0a000032 	beq	603138b8 <pvPortMalloc+0x10c>
603137ec:	e308749c 	movw	r7, #33948	; 0x849c
603137f0:	e3467032 	movt	r7, #24626	; 0x6032
603137f4:	e5978000 	ldr	r8, [r7]
603137f8:	e1580002 	cmp	r8, r2
603137fc:	3a00002d 	bcc	603138b8 <pvPortMalloc+0x10c>
60313800:	e30834ac 	movw	r3, #33964	; 0x84ac
60313804:	e3463032 	movt	r3, #24626	; 0x6032
60313808:	e1a01003 	mov	r1, r3
6031380c:	e5934000 	ldr	r4, [r3]
60313810:	ea000004 	b	60313828 <pvPortMalloc+0x7c>
60313814:	e5943000 	ldr	r3, [r4]
60313818:	e3530000 	cmp	r3, #0
6031381c:	0a000004 	beq	60313834 <pvPortMalloc+0x88>
60313820:	e1a01004 	mov	r1, r4
60313824:	e1a04003 	mov	r4, r3
60313828:	e5943004 	ldr	r3, [r4, #4]
6031382c:	e1530002 	cmp	r3, r2
60313830:	3afffff7 	bcc	60313814 <pvPortMalloc+0x68>
60313834:	e3083494 	movw	r3, #33940	; 0x8494
60313838:	e3463032 	movt	r3, #24626	; 0x6032
6031383c:	e5933000 	ldr	r3, [r3]
60313840:	e1530004 	cmp	r3, r4
60313844:	0a00001b 	beq	603138b8 <pvPortMalloc+0x10c>
60313848:	e5943000 	ldr	r3, [r4]
6031384c:	e5915000 	ldr	r5, [r1]
60313850:	e5813000 	str	r3, [r1]
60313854:	e2855040 	add	r5, r5, #64	; 0x40
60313858:	e5941004 	ldr	r1, [r4, #4]
6031385c:	e0413002 	sub	r3, r1, r2
60313860:	e3530080 	cmp	r3, #128	; 0x80
60313864:	8a000018 	bhi	603138cc <pvPortMalloc+0x120>
60313868:	e30834a0 	movw	r3, #33952	; 0x84a0
6031386c:	e3463032 	movt	r3, #24626	; 0x6032
60313870:	e0488001 	sub	r8, r8, r1
60313874:	e1866001 	orr	r6, r6, r1
60313878:	e5932000 	ldr	r2, [r3]
6031387c:	e5878000 	str	r8, [r7]
60313880:	e1580002 	cmp	r8, r2
60313884:	35838000 	strcc	r8, [r3]
60313888:	e30834a4 	movw	r3, #33956	; 0x84a4
6031388c:	e3463032 	movt	r3, #24626	; 0x6032
60313890:	e3a02000 	mov	r2, #0
60313894:	e8840044 	stm	r4, {r2, r6}
60313898:	e5932000 	ldr	r2, [r3]
6031389c:	e2822001 	add	r2, r2, #1
603138a0:	e5832000 	str	r2, [r3]
603138a4:	ebfff580 	bl	60310eac <vTaskExitCritical>
603138a8:	e3550000 	cmp	r5, #0
603138ac:	0a000002 	beq	603138bc <pvPortMalloc+0x110>
603138b0:	e1a00005 	mov	r0, r5
603138b4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
603138b8:	ebfff57b 	bl	60310eac <vTaskExitCritical>
603138bc:	e3a05000 	mov	r5, #0
603138c0:	ebfff14d 	bl	6030fdfc <vApplicationMallocFailedHook>
603138c4:	e1a00005 	mov	r0, r5
603138c8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
603138cc:	e0840002 	add	r0, r4, r2
603138d0:	e5803004 	str	r3, [r0, #4]
603138d4:	e5842004 	str	r2, [r4, #4]
603138d8:	ebffff92 	bl	60313728 <prvInsertBlockIntoFreeList>
603138dc:	e5941004 	ldr	r1, [r4, #4]
603138e0:	eaffffe0 	b	60313868 <pvPortMalloc+0xbc>

603138e4 <vPortFree>:
603138e4:	e92d4010 	push	{r4, lr}
603138e8:	e2504000 	subs	r4, r0, #0
603138ec:	08bd8010 	popeq	{r4, pc}
603138f0:	e3083498 	movw	r3, #33944	; 0x8498
603138f4:	e3463032 	movt	r3, #24626	; 0x6032
603138f8:	e514203c 	ldr	r2, [r4, #-60]	; 0xffffffc4
603138fc:	e5933000 	ldr	r3, [r3]
60313900:	e1120003 	tst	r2, r3
60313904:	08bd8010 	popeq	{r4, pc}
60313908:	e5141040 	ldr	r1, [r4, #-64]	; 0xffffffc0
6031390c:	e3510000 	cmp	r1, #0
60313910:	18bd8010 	popne	{r4, pc}
60313914:	e1c22003 	bic	r2, r2, r3
60313918:	e504203c 	str	r2, [r4, #-60]	; 0xffffffc4
6031391c:	ebfff54c 	bl	60310e54 <vTaskEnterCritical>
60313920:	e308349c 	movw	r3, #33948	; 0x849c
60313924:	e3463032 	movt	r3, #24626	; 0x6032
60313928:	e514203c 	ldr	r2, [r4, #-60]	; 0xffffffc4
6031392c:	e2440040 	sub	r0, r4, #64	; 0x40
60313930:	e5931000 	ldr	r1, [r3]
60313934:	e0822001 	add	r2, r2, r1
60313938:	e5832000 	str	r2, [r3]
6031393c:	ebffff79 	bl	60313728 <prvInsertBlockIntoFreeList>
60313940:	e30834a8 	movw	r3, #33960	; 0x84a8
60313944:	e3463032 	movt	r3, #24626	; 0x6032
60313948:	e5932000 	ldr	r2, [r3]
6031394c:	e2822001 	add	r2, r2, #1
60313950:	e5832000 	str	r2, [r3]
60313954:	e8bd4010 	pop	{r4, lr}
60313958:	eafff553 	b	60310eac <vTaskExitCritical>

6031395c <xPortGetFreeHeapSize>:
6031395c:	e308349c 	movw	r3, #33948	; 0x849c
60313960:	e3463032 	movt	r3, #24626	; 0x6032
60313964:	e5930000 	ldr	r0, [r3]
60313968:	e12fff1e 	bx	lr

6031396c <vPortDefineHeapRegions>:
6031396c:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
60313970:	e5909004 	ldr	r9, [r0, #4]
60313974:	e3590000 	cmp	r9, #0
60313978:	0a000031 	beq	60313a44 <vPortDefineHeapRegions+0xd8>
6031397c:	e3088494 	movw	r8, #33940	; 0x8494
60313980:	e3468032 	movt	r8, #24626	; 0x6032
60313984:	e3a01000 	mov	r1, #0
60313988:	e30864ac 	movw	r6, #33964	; 0x84ac
6031398c:	e3466032 	movt	r6, #24626	; 0x6032
60313990:	e598e000 	ldr	lr, [r8]
60313994:	e1a04001 	mov	r4, r1
60313998:	e2807004 	add	r7, r0, #4
6031399c:	e1a05001 	mov	r5, r1
603139a0:	e7903181 	ldr	r3, [r0, r1, lsl #3]
603139a4:	e283203f 	add	r2, r3, #63	; 0x3f
603139a8:	e313003f 	tst	r3, #63	; 0x3f
603139ac:	e3c2203f 	bic	r2, r2, #63	; 0x3f
603139b0:	e1a0c003 	mov	ip, r3
603139b4:	e083a009 	add	sl, r3, r9
603139b8:	11a03002 	movne	r3, r2
603139bc:	11a0c003 	movne	ip, r3
603139c0:	104a9002 	subne	r9, sl, r2
603139c4:	e089200c 	add	r2, r9, ip
603139c8:	e2422040 	sub	r2, r2, #64	; 0x40
603139cc:	e3c2203f 	bic	r2, r2, #63	; 0x3f
603139d0:	e3510000 	cmp	r1, #0
603139d4:	05861004 	streq	r1, [r6, #4]
603139d8:	e2811001 	add	r1, r1, #1
603139dc:	05863000 	streq	r3, [r6]
603139e0:	e5825004 	str	r5, [r2, #4]
603139e4:	e5825000 	str	r5, [r2]
603139e8:	e35e0000 	cmp	lr, #0
603139ec:	e5832000 	str	r2, [r3]
603139f0:	e042c00c 	sub	ip, r2, ip
603139f4:	e583c004 	str	ip, [r3, #4]
603139f8:	158e3000 	strne	r3, [lr]
603139fc:	e1a0e002 	mov	lr, r2
60313a00:	e5933004 	ldr	r3, [r3, #4]
60313a04:	e7979181 	ldr	r9, [r7, r1, lsl #3]
60313a08:	e0844003 	add	r4, r4, r3
60313a0c:	e3590000 	cmp	r9, #0
60313a10:	1affffe2 	bne	603139a0 <vPortDefineHeapRegions+0x34>
60313a14:	e5882000 	str	r2, [r8]
60313a18:	e30814a0 	movw	r1, #33952	; 0x84a0
60313a1c:	e3461032 	movt	r1, #24626	; 0x6032
60313a20:	e308249c 	movw	r2, #33948	; 0x849c
60313a24:	e3462032 	movt	r2, #24626	; 0x6032
60313a28:	e3083498 	movw	r3, #33944	; 0x8498
60313a2c:	e3463032 	movt	r3, #24626	; 0x6032
60313a30:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
60313a34:	e5814000 	str	r4, [r1]
60313a38:	e5824000 	str	r4, [r2]
60313a3c:	e5830000 	str	r0, [r3]
60313a40:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
60313a44:	e1a04009 	mov	r4, r9
60313a48:	eafffff2 	b	60313a18 <vPortDefineHeapRegions+0xac>

60313a4c <pvPortReAlloc>:
60313a4c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60313a50:	e1a04001 	mov	r4, r1
60313a54:	e2505000 	subs	r5, r0, #0
60313a58:	0a00001e 	beq	60313ad8 <pvPortReAlloc+0x8c>
60313a5c:	e3510000 	cmp	r1, #0
60313a60:	0a000024 	beq	60313af8 <pvPortReAlloc+0xac>
60313a64:	e1a00001 	mov	r0, r1
60313a68:	ebffff4f 	bl	603137ac <pvPortMalloc>
60313a6c:	e2506000 	subs	r6, r0, #0
60313a70:	0a000016 	beq	60313ad0 <pvPortReAlloc+0x84>
60313a74:	e3087498 	movw	r7, #33944	; 0x8498
60313a78:	e3467032 	movt	r7, #24626	; 0x6032
60313a7c:	e515203c 	ldr	r2, [r5, #-60]	; 0xffffffc4
60313a80:	e1a01005 	mov	r1, r5
60313a84:	e5973000 	ldr	r3, [r7]
60313a88:	e1c22003 	bic	r2, r2, r3
60313a8c:	e2422040 	sub	r2, r2, #64	; 0x40
60313a90:	e1520004 	cmp	r2, r4
60313a94:	21a02004 	movcs	r2, r4
60313a98:	ebffb618 	bl	60301300 <memcpy>
60313a9c:	ebfffa08 	bl	603122c4 <vTaskSuspendAll>
60313aa0:	e308349c 	movw	r3, #33948	; 0x849c
60313aa4:	e3463032 	movt	r3, #24626	; 0x6032
60313aa8:	e515203c 	ldr	r2, [r5, #-60]	; 0xffffffc4
60313aac:	e5971000 	ldr	r1, [r7]
60313ab0:	e2450040 	sub	r0, r5, #64	; 0x40
60313ab4:	e1c22001 	bic	r2, r2, r1
60313ab8:	e5931000 	ldr	r1, [r3]
60313abc:	e505203c 	str	r2, [r5, #-60]	; 0xffffffc4
60313ac0:	e0812002 	add	r2, r1, r2
60313ac4:	e5832000 	str	r2, [r3]
60313ac8:	ebffff16 	bl	60313728 <prvInsertBlockIntoFreeList>
60313acc:	ebfff805 	bl	60311ae8 <xTaskResumeAll>
60313ad0:	e1a00006 	mov	r0, r6
60313ad4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60313ad8:	e3510000 	cmp	r1, #0
60313adc:	0a000002 	beq	60313aec <pvPortReAlloc+0xa0>
60313ae0:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
60313ae4:	e1a00001 	mov	r0, r1
60313ae8:	eaffff2f 	b	603137ac <pvPortMalloc>
60313aec:	e1a06001 	mov	r6, r1
60313af0:	e1a00006 	mov	r0, r6
60313af4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60313af8:	e1a06001 	mov	r6, r1
60313afc:	ebffff78 	bl	603138e4 <vPortFree>
60313b00:	e1a00006 	mov	r0, r6
60313b04:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

60313b08 <SOCPS_PG_Enter>:
60313b08:	e3a00022 	mov	r0, #34	; 0x22
60313b0c:	e3400101 	movt	r0, #257	; 0x101
60313b10:	e92d4010 	push	{r4, lr}
60313b14:	e3001430 	movw	r1, #1072	; 0x430
60313b18:	e3461030 	movt	r1, #24624	; 0x6030
60313b1c:	e3096818 	movw	r6, #38936	; 0x9818
60313b20:	e3466030 	movt	r6, #24624	; 0x6030
60313b24:	e3055950 	movw	r5, #22864	; 0x5950
60313b28:	e3465031 	movt	r5, #24625	; 0x6031
60313b2c:	e3054974 	movw	r4, #22900	; 0x5974
60313b30:	e3464031 	movt	r4, #24625	; 0x6031
60313b34:	ebffd607 	bl	60309358 <psci_cpu_suspend>
60313b38:	e3a00ffa 	mov	r0, #1000	; 0x3e8
60313b3c:	e12fff36 	blx	r6
60313b40:	e1a03005 	mov	r3, r5
60313b44:	e3a02045 	mov	r2, #69	; 0x45
60313b48:	e1a01004 	mov	r1, r4
60313b4c:	e3a00002 	mov	r0, #2
60313b50:	ebffdd53 	bl	6030b0a4 <rtk_log_write>
60313b54:	eafffff7 	b	60313b38 <SOCPS_PG_Enter+0x30>

60313b58 <cpu_suspend_save>:
60313b58:	e1a03000 	mov	r3, r0
60313b5c:	e30804b4 	movw	r0, #33972	; 0x84b4
60313b60:	e3460032 	movt	r0, #24626	; 0x6032
60313b64:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60313b68:	e4803004 	str	r3, [r0], #4
60313b6c:	ebffb207 	bl	60300390 <cpu_do_suspend>
60313b70:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
60313b74:	e3130004 	tst	r3, #4
60313b78:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
60313b7c:	ee306f30 	mrc	15, 1, r6, cr0, cr0, {1}
60313b80:	e3a04000 	mov	r4, #0
60313b84:	e1a05004 	mov	r5, r4
60313b88:	e1a03536 	lsr	r3, r6, r5
60313b8c:	e2033007 	and	r3, r3, #7
60313b90:	e2433002 	sub	r3, r3, #2
60313b94:	e3530002 	cmp	r3, #2
60313b98:	8a00001f 	bhi	60313c1c <cpu_suspend_save+0xc4>
60313b9c:	ee404f10 	mcr	15, 2, r4, cr0, cr0, {0}
60313ba0:	ee307f10 	mrc	15, 1, r7, cr0, cr0, {0}
60313ba4:	e7e9c1d7 	ubfx	ip, r7, #3, #10
60313ba8:	e28ce001 	add	lr, ip, #1
60313bac:	e35c0000 	cmp	ip, #0
60313bb0:	0a00001e 	beq	60313c30 <cpu_suspend_save+0xd8>
60313bb4:	e1a0200e 	mov	r2, lr
60313bb8:	e3a03000 	mov	r3, #0
60313bbc:	e2831001 	add	r1, r3, #1
60313bc0:	e1a020a2 	lsr	r2, r2, #1
60313bc4:	e1a00003 	mov	r0, r3
60313bc8:	e3520001 	cmp	r2, #1
60313bcc:	e6ef3071 	uxtb	r3, r1
60313bd0:	1afffff9 	bne	60313bbc <cpu_suspend_save+0x64>
60313bd4:	e31e0001 	tst	lr, #1
60313bd8:	12803002 	addne	r3, r0, #2
60313bdc:	16ef3073 	uxtbne	r3, r3
60313be0:	e3530020 	cmp	r3, #32
60313be4:	9263e020 	rsbls	lr, r3, #32
60313be8:	8a00000b 	bhi	60313c1c <cpu_suspend_save+0xc4>
60313bec:	e2070007 	and	r0, r7, #7
60313bf0:	e2800004 	add	r0, r0, #4
60313bf4:	e7ee76d7 	ubfx	r7, r7, #13, #15
60313bf8:	e1841e1c 	orr	r1, r4, ip, lsl lr
60313bfc:	e1a03007 	mov	r3, r7
60313c00:	e1812013 	orr	r2, r1, r3, lsl r0
60313c04:	ee072f5e 	mcr	15, 0, r2, cr7, cr14, {2}
60313c08:	e2533001 	subs	r3, r3, #1
60313c0c:	2afffffb 	bcs	60313c00 <cpu_suspend_save+0xa8>
60313c10:	e25cc001 	subs	ip, ip, #1
60313c14:	2afffff7 	bcs	60313bf8 <cpu_suspend_save+0xa0>
60313c18:	f57ff05f 	dmb	sy
60313c1c:	e2855003 	add	r5, r5, #3
60313c20:	e2844002 	add	r4, r4, #2
60313c24:	e3550015 	cmp	r5, #21
60313c28:	1affffd6 	bne	60313b88 <cpu_suspend_save+0x30>
60313c2c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60313c30:	e3a0e020 	mov	lr, #32
60313c34:	eaffffec 	b	60313bec <cpu_suspend_save+0x94>

60313c38 <SOCPS_Save_GIC>:
60313c38:	e3a03a02 	mov	r3, #8192	; 0x2000
60313c3c:	e34a3010 	movt	r3, #40976	; 0xa010
60313c40:	e5932004 	ldr	r2, [r3, #4]
60313c44:	f57ff05f 	dmb	sy
60313c48:	e308c530 	movw	ip, #34096	; 0x8530
60313c4c:	e346c032 	movt	ip, #24626	; 0x6032
60313c50:	e3a03a01 	mov	r3, #4096	; 0x1000
60313c54:	e34a3010 	movt	r3, #40976	; 0xa010
60313c58:	e58c2140 	str	r2, [ip, #320]	; 0x140
60313c5c:	e5932100 	ldr	r2, [r3, #256]	; 0x100
60313c60:	f57ff05f 	dmb	sy
60313c64:	e58c2000 	str	r2, [ip]
60313c68:	e5932104 	ldr	r2, [r3, #260]	; 0x104
60313c6c:	f57ff05f 	dmb	sy
60313c70:	e58c2004 	str	r2, [ip, #4]
60313c74:	e5932108 	ldr	r2, [r3, #264]	; 0x108
60313c78:	f57ff05f 	dmb	sy
60313c7c:	e58c2008 	str	r2, [ip, #8]
60313c80:	e593210c 	ldr	r2, [r3, #268]	; 0x10c
60313c84:	f57ff05f 	dmb	sy
60313c88:	e58c200c 	str	r2, [ip, #12]
60313c8c:	e5932300 	ldr	r2, [r3, #768]	; 0x300
60313c90:	f57ff05f 	dmb	sy
60313c94:	e58c2010 	str	r2, [ip, #16]
60313c98:	e5932304 	ldr	r2, [r3, #772]	; 0x304
60313c9c:	f57ff05f 	dmb	sy
60313ca0:	e58c2014 	str	r2, [ip, #20]
60313ca4:	e5932308 	ldr	r2, [r3, #776]	; 0x308
60313ca8:	f57ff05f 	dmb	sy
60313cac:	e58c2018 	str	r2, [ip, #24]
60313cb0:	e593230c 	ldr	r2, [r3, #780]	; 0x30c
60313cb4:	f57ff05f 	dmb	sy
60313cb8:	e3011be0 	movw	r1, #7136	; 0x1be0
60313cbc:	e34a1010 	movt	r1, #40976	; 0xa010
60313cc0:	e28c3020 	add	r3, ip, #32
60313cc4:	e28c0040 	add	r0, ip, #64	; 0x40
60313cc8:	e041100c 	sub	r1, r1, ip
60313ccc:	e58c201c 	str	r2, [ip, #28]
60313cd0:	e7912003 	ldr	r2, [r1, r3]
60313cd4:	f57ff05f 	dmb	sy
60313cd8:	e4832004 	str	r2, [r3], #4
60313cdc:	e1530000 	cmp	r3, r0
60313ce0:	1afffffa 	bne	60313cd0 <SOCPS_Save_GIC+0x98>
60313ce4:	e59f304c 	ldr	r3, [pc, #76]	; 60313d38 <SOCPS_Save_GIC+0x100>
60313ce8:	e30117c4 	movw	r1, #6084	; 0x17c4
60313cec:	e34a1010 	movt	r1, #40976	; 0xa010
60313cf0:	e2830080 	add	r0, r3, #128	; 0x80
60313cf4:	e041100c 	sub	r1, r1, ip
60313cf8:	e7912003 	ldr	r2, [r1, r3]
60313cfc:	f57ff05f 	dmb	sy
60313d00:	e5a32004 	str	r2, [r3, #4]!
60313d04:	e1530000 	cmp	r3, r0
60313d08:	1afffffa 	bne	60313cf8 <SOCPS_Save_GIC+0xc0>
60313d0c:	e59f3028 	ldr	r3, [pc, #40]	; 60313d3c <SOCPS_Save_GIC+0x104>
60313d10:	e3011344 	movw	r1, #4932	; 0x1344
60313d14:	e34a1010 	movt	r1, #40976	; 0xa010
60313d18:	e2830080 	add	r0, r3, #128	; 0x80
60313d1c:	e041100c 	sub	r1, r1, ip
60313d20:	e7912003 	ldr	r2, [r1, r3]
60313d24:	f57ff05f 	dmb	sy
60313d28:	e5a32004 	str	r2, [r3, #4]!
60313d2c:	e1530000 	cmp	r3, r0
60313d30:	1afffffa 	bne	60313d20 <SOCPS_Save_GIC+0xe8>
60313d34:	e12fff1e 	bx	lr
60313d38:	6032856c 	.word	0x6032856c
60313d3c:	603285ec 	.word	0x603285ec

60313d40 <SOCPS_Restore_GIC>:
60313d40:	e3081530 	movw	r1, #34096	; 0x8530
60313d44:	e3461032 	movt	r1, #24626	; 0x6032
60313d48:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
60313d4c:	e5912140 	ldr	r2, [r1, #320]	; 0x140
60313d50:	f57ff05f 	dmb	sy
60313d54:	e3a03a02 	mov	r3, #8192	; 0x2000
60313d58:	e34a3010 	movt	r3, #40976	; 0xa010
60313d5c:	e5832004 	str	r2, [r3, #4]
60313d60:	e5913000 	ldr	r3, [r1]
60313d64:	f57ff05f 	dmb	sy
60313d68:	e3a02a01 	mov	r2, #4096	; 0x1000
60313d6c:	e34a2010 	movt	r2, #40976	; 0xa010
60313d70:	e5823100 	str	r3, [r2, #256]	; 0x100
60313d74:	e5913004 	ldr	r3, [r1, #4]
60313d78:	f57ff05f 	dmb	sy
60313d7c:	e5823104 	str	r3, [r2, #260]	; 0x104
60313d80:	e5913008 	ldr	r3, [r1, #8]
60313d84:	f57ff05f 	dmb	sy
60313d88:	e5823108 	str	r3, [r2, #264]	; 0x108
60313d8c:	e591300c 	ldr	r3, [r1, #12]
60313d90:	f57ff05f 	dmb	sy
60313d94:	e582310c 	str	r3, [r2, #268]	; 0x10c
60313d98:	e5913010 	ldr	r3, [r1, #16]
60313d9c:	f57ff05f 	dmb	sy
60313da0:	e5823300 	str	r3, [r2, #768]	; 0x300
60313da4:	e5913014 	ldr	r3, [r1, #20]
60313da8:	f57ff05f 	dmb	sy
60313dac:	e5823304 	str	r3, [r2, #772]	; 0x304
60313db0:	e5913018 	ldr	r3, [r1, #24]
60313db4:	f57ff05f 	dmb	sy
60313db8:	e5823308 	str	r3, [r2, #776]	; 0x308
60313dbc:	e591c01c 	ldr	ip, [r1, #28]
60313dc0:	f57ff05f 	dmb	sy
60313dc4:	e3010bdc 	movw	r0, #7132	; 0x1bdc
60313dc8:	e34a0010 	movt	r0, #40976	; 0xa010
60313dcc:	e582c30c 	str	ip, [r2, #780]	; 0x30c
60313dd0:	e2813020 	add	r3, r1, #32
60313dd4:	e0400001 	sub	r0, r0, r1
60313dd8:	e281c040 	add	ip, r1, #64	; 0x40
60313ddc:	e4932004 	ldr	r2, [r3], #4
60313de0:	f57ff05f 	dmb	sy
60313de4:	e153000c 	cmp	r3, ip
60313de8:	e7802003 	str	r2, [r0, r3]
60313dec:	1afffffa 	bne	60313ddc <SOCPS_Restore_GIC+0x9c>
60313df0:	e59f2094 	ldr	r2, [pc, #148]	; 60313e8c <SOCPS_Restore_GIC+0x14c>
60313df4:	e301c7c4 	movw	ip, #6084	; 0x17c4
60313df8:	e34ac010 	movt	ip, #40976	; 0xa010
60313dfc:	e282e080 	add	lr, r2, #128	; 0x80
60313e00:	e1a03002 	mov	r3, r2
60313e04:	e5b20004 	ldr	r0, [r2, #4]!
60313e08:	f57ff05f 	dmb	sy
60313e0c:	e083300c 	add	r3, r3, ip
60313e10:	e0433001 	sub	r3, r3, r1
60313e14:	e152000e 	cmp	r2, lr
60313e18:	e5830000 	str	r0, [r3]
60313e1c:	1afffff7 	bne	60313e00 <SOCPS_Restore_GIC+0xc0>
60313e20:	e59f2068 	ldr	r2, [pc, #104]	; 60313e90 <SOCPS_Restore_GIC+0x150>
60313e24:	e301c344 	movw	ip, #4932	; 0x1344
60313e28:	e34ac010 	movt	ip, #40976	; 0xa010
60313e2c:	e282e080 	add	lr, r2, #128	; 0x80
60313e30:	e1a03002 	mov	r3, r2
60313e34:	e5b20004 	ldr	r0, [r2, #4]!
60313e38:	f57ff05f 	dmb	sy
60313e3c:	e083300c 	add	r3, r3, ip
60313e40:	e0433001 	sub	r3, r3, r1
60313e44:	e152000e 	cmp	r2, lr
60313e48:	e5830000 	str	r0, [r3]
60313e4c:	1afffff7 	bne	60313e30 <SOCPS_Restore_GIC+0xf0>
60313e50:	e3a02a02 	mov	r2, #8192	; 0x2000
60313e54:	e34a2010 	movt	r2, #40976	; 0xa010
60313e58:	e5923000 	ldr	r3, [r2]
60313e5c:	f57ff05f 	dmb	sy
60313e60:	e3c33e1e 	bic	r3, r3, #480	; 0x1e0
60313e64:	e3c33003 	bic	r3, r3, #3
60313e68:	e3833007 	orr	r3, r3, #7
60313e6c:	f57ff05f 	dmb	sy
60313e70:	e5823000 	str	r3, [r2]
60313e74:	f57ff05f 	dmb	sy
60313e78:	e3a03a01 	mov	r3, #4096	; 0x1000
60313e7c:	e34a3010 	movt	r3, #40976	; 0xa010
60313e80:	e3a02003 	mov	r2, #3
60313e84:	e5832000 	str	r2, [r3]
60313e88:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
60313e8c:	6032856c 	.word	0x6032856c
60313e90:	603285ec 	.word	0x603285ec

60313e94 <SOCPS_SleepPG_LIB>:
60313e94:	e92d4010 	push	{r4, lr}
60313e98:	ebffff66 	bl	60313c38 <SOCPS_Save_GIC>
60313e9c:	e3a00000 	mov	r0, #0
60313ea0:	e3031b08 	movw	r1, #15112	; 0x3b08
60313ea4:	e3461031 	movt	r1, #24625	; 0x6031
60313ea8:	ebffb130 	bl	60300370 <cpu_suspend>
60313eac:	e8bd4010 	pop	{r4, lr}
60313eb0:	eaffffa2 	b	60313d40 <SOCPS_Restore_GIC>

60313eb4 <SOCPS_SleepCG_LIB>:
60313eb4:	e30326c0 	movw	r2, #14016	; 0x36c0
60313eb8:	e3462032 	movt	r2, #24626	; 0x6032
60313ebc:	e92d4010 	push	{r4, lr}
60313ec0:	e3a03001 	mov	r3, #1
60313ec4:	e5823000 	str	r3, [r2]
60313ec8:	f57ff06f 	isb	sy
60313ecc:	e3a01000 	mov	r1, #0
60313ed0:	e3a00020 	mov	r0, #32
60313ed4:	ebffd807 	bl	60309ef8 <ipc_send_message>
60313ed8:	e3a01441 	mov	r1, #1090519040	; 0x41000000
60313edc:	e3093790 	movw	r3, #38800	; 0x9790
60313ee0:	e3463030 	movt	r3, #24624	; 0x6030
60313ee4:	e591200c 	ldr	r2, [r1, #12]
60313ee8:	e3a00002 	mov	r0, #2
60313eec:	e3c22001 	bic	r2, r2, #1
60313ef0:	e581200c 	str	r2, [r1, #12]
60313ef4:	e8bd4010 	pop	{r4, lr}
60313ef8:	e12fff13 	bx	r3
60313efc:	6d6f682f 	.word	0x6d6f682f
60313f00:	69712f65 	.word	0x69712f65
60313f04:	6568735f 	.word	0x6568735f
60313f08:	656a2f6e 	.word	0x656a2f6e
60313f0c:	63697373 	.word	0x63697373
60313f10:	2e362f61 	.word	0x2e362f61
60313f14:	6f732f36 	.word	0x6f732f36
60313f18:	65637275 	.word	0x65637275
60313f1c:	69662f73 	.word	0x69662f73
60313f20:	61776d72 	.word	0x61776d72
60313f24:	632f6572 	.word	0x632f6572
60313f28:	6f706d6f 	.word	0x6f706d6f
60313f2c:	746e656e 	.word	0x746e656e
60313f30:	2f736f2f 	.word	0x2f736f2f
60313f34:	65657266 	.word	0x65657266
60313f38:	736f7472 	.word	0x736f7472
60313f3c:	6572662f 	.word	0x6572662f
60313f40:	6f747265 	.word	0x6f747265
60313f44:	65685f73 	.word	0x65685f73
60313f48:	5f357061 	.word	0x5f357061
60313f4c:	666e6f63 	.word	0x666e6f63
60313f50:	632e6769 	.word	0x632e6769
60313f54:	00000000 	.word	0x00000000

60313f58 <_global_impure_ptr>:
60313f58:	60316004                                .`1`

60313f5c <blanks.1>:
60313f5c:	20202020 20202020 20202020 20202020                     

60313f6c <zeroes.0>:
60313f6c:	30303030 30303030 30303030 30303030     0000000000000000

60313f7c <_ctype_>:
60313f7c:	20202000 20202020 28282020 20282828     .         ((((( 
60313f8c:	20202020 20202020 20202020 20202020                     
60313f9c:	10108820 10101010 10101010 10101010      ...............
60313fac:	04040410 04040404 10040404 10101010     ................
60313fbc:	41411010 41414141 01010101 01010101     ..AAAAAA........
60313fcc:	01010101 01010101 01010101 10101010     ................
60313fdc:	42421010 42424242 02020202 02020202     ..BBBBBB........
60313fec:	02020202 02020202 02020202 10101010     ................
60313ffc:	00000020 00000000 00000000 00000000      ...............
	...

60314080 <p05.0>:
60314080:	00000005 00000019 0000007d 00000000     ........}.......

60314090 <__mprec_tens>:
60314090:	00000000 3ff00000 00000000 40240000     .......?......$@
603140a0:	00000000 40590000 00000000 408f4000     ......Y@.....@.@
603140b0:	00000000 40c38800 00000000 40f86a00     .......@.....j.@
603140c0:	00000000 412e8480 00000000 416312d0     .......A......cA
603140d0:	00000000 4197d784 00000000 41cdcd65     .......A....e..A
603140e0:	20000000 4202a05f e8000000 42374876     ... _..B....vH7B
603140f0:	a2000000 426d1a94 e5400000 42a2309c     ......mB..@..0.B
60314100:	1e900000 42d6bcc4 26340000 430c6bf5     .......B..4&.k.C
60314110:	37e08000 4341c379 85d8a000 43763457     ...7y.AC....W4vC
60314120:	674ec800 43abc16d 60913d00 43e158e4     ..Ngm..C.=.`.X.C
60314130:	78b58c40 4415af1d d6e2ef50 444b1ae4     @..x...DP.....KD
60314140:	064dd592 4480f0cf c7e14af6 44b52d02     ..M....D.J...-.D
60314150:	79d99db4 44ea7843                       ...yCx.D

60314158 <__mprec_tinytens>:
60314158:	97d889bc 3c9cd2b2 d5a8a733 3949f623     .......<3...#.I9
60314168:	44f4a73d 32a50ffd cf8c979d 255bba08     =..D...2......[%
60314178:	64ac6f43 0ac80628                       Co.d(...

60314180 <__mprec_bigtens>:
60314180:	37e08000 4341c379 b5056e17 4693b8b5     ...7y.AC.n.....F
60314190:	e93ff9f5 4d384f03 f9301d32 5a827748     ..?..O8M2.0.Hw.Z
603141a0:	7f73bf3c 75154fdd                       <.s..O.u

603141a8 <blanks.1>:
603141a8:	20202020 20202020 20202020 20202020                     

603141b8 <zeroes.0>:
603141b8:	30303030 30303030 30303030 30303030     0000000000000000
603141c8:	20525349 20726f66 65746e69 70757272     ISR for interrup
603141d8:	64692074 756c2528 73692029 746f6e20     t id(%lu) is not
603141e8:	67657220 65747369 21646572 0000200a      registered!. ..
603141f8:	00003052 00003452 65726f43 786c255b     R0..R4..Core[%lx
60314208:	7325205d 30203d20 38302578 000a786c     ] %s = 0x%08lx..
60314218:	65726f43 786c255b 7250205d 6f697665     Core[%lx] Previo
60314228:	4d207375 2765646f 50432073 69205253     us Mode's CPSR i
60314238:	78302073 6c383025 00000a78 65726f43     s 0x%08lx...Core
60314248:	786c255b 7250205d 6f697665 4d207375     [%lx] Previous M
60314258:	2765646f 524c2073 20736920 30257830     ode's LR is 0x%0
60314268:	0a786c38 00000000 65726f43 786c255b     8lx.....Core[%lx
60314278:	7543205d 6e657272 74532074 206b6361     ] Current Stack 
60314288:	6e696f50 20726574 7830203d 6c383025     Pointer = 0x%08l
60314298:	61202c78 6420646e 20706d75 63617473     x, and dump stac
603142a8:	6564206b 20687470 6425203d 00000a0d     k depth = %d....
603142b8:	65726f43 786c255b 255b205d 786c3830     Core[%lx] [%08lx
603142c8:	7830205d 6c383025 78302078 6c383025     ] 0x%08lx 0x%08l
603142d8:	78302078 6c383025 78302078 6c383025     x 0x%08lx 0x%08l
603142e8:	00000a78 72646441 20737365 7420666f     x...Address of t
603142f8:	75206568 6665646e 64656e69 736e6920     he undefined ins
60314308:	63757274 6e6f6974 25783020 0a783830     truction 0x%08x.
60314318:	00000000 61746144 6f626120 77207472     ....Data abort w
60314328:	20687469 61746144 75614620 5320746c     ith Data Fault S
60314338:	75746174 65522073 74736967 20207265     tatus Register  
60314348:	30257830 000a7838 72646441 20737365     0x%08x..Address 
60314358:	4920666f 7274736e 69746375 63206e6f     of Instruction c
60314368:	69737561 4420676e 20617461 726f6261     ausing Data abor
60314378:	78302074 78383025 0000000a 66657250     t 0x%08x....Pref
60314388:	68637465 6f626120 77207472 20687469     etch abort with 
60314398:	74736e49 74637572 206e6f69 6c756146     Instruction Faul
603143a8:	74532074 73757461 67655220 65747369     t Status Registe
603143b8:	78302072 78383025 0000000a 00003552     r 0x%08x....R5..
603143c8:	00003652 00003752 00003852 00003952     R6..R7..R8..R9..
603143d8:	00303152 00313152 00003152 00003252     R10.R11.R1..R2..
603143e8:	00003352 00323152 0000524c              R3..R12.LR..

603143f4 <crash_reg_name>:
603143f4:	603141fc 603143c4 603143c8 603143cc     .A1`.C1`.C1`.C1`
60314404:	603143d0 603143d4 603143d8 603143dc     .C1`.C1`.C1`.C1`
60314414:	603141f8 603143e0 603143e4 603143e8     .A1`.C1`.C1`.C1`
60314424:	603143ec 603143f0                       .C1`.C1`

6031442c <LOG_UART_IDX_FLAG>:
6031442c:	00000001 00200000 00020000 0000cb9d     ...... .........
6031443c:	00000008 00000000 00100000 00010000     ................
6031444c:	000bee33 00000008 00000003 00800000     3...............
6031445c:	00080000 002fb8cc 00000008 666e6f43     ....../.....Conf
6031446c:	7463696c 20676e69 49435350 72657620     licting PSCI ver
6031447c:	6e6f6973 74656420 65746365 000a2e64     sion detected...
6031448c:	73757254 20646574 6d20534f 61726769     Trusted OS migra
6031449c:	6e6f6974 746f6e20 71657220 65726975     tion not require
603144ac:	00000a64 5247494d 5f455441 4f464e49     d...MIGRATE_INFO
603144bc:	5059545f 6f6e2045 75732074 726f7070     _TYPE not suppor
603144cc:	2e646574 0000000a 5247494d 5f455441     ted.....MIGRATE_
603144dc:	4f464e49 5059545f 65722045 6e727574     INFO_TYPE return
603144ec:	75206465 6f6e6b6e 74206e77 20657079     ed unknown type 
603144fc:	29642528 0000000a 5247494d 5f455441     (%d)....MIGRATE_
6031450c:	4f464e49 5f50555f 20555043 6f706572     INFO_UP_CPU repo
6031451c:	64657472 766e6920 64696c61 79687020     rted invalid phy
6031452c:	61636973 4449206c 78302820 29786c25     sical ID (0x%lx)
6031453c:	0000000a 73757254 20646574 7220534f     ....Trusted OS r
6031454c:	64697365 20746e65 70206e6f 69737968     esident on physi
6031455c:	206c6163 20555043 6c257830 00000a78     cal CPU 0x%lx...

6031456c <CSWTCH.2>:
6031456c:	ffffffea ffffffea ffffffea ffffffea     ................
6031457c:	ffffffea ffffffea ffffffff ffffffea     ................
6031458c:	ffffffa1 00000000 31757063 776f7020     ........cpu1 pow
6031459c:	6f207265 000a6666 00000023 6f636553     er off..#...Seco
603145ac:	7261646e 6f632079 70206572 7265776f     ndary core power
603145bc:	66666f20 69616620 25203a6c 00000a64      off fail: %d...
603145cc:	25555043 6f203a64 00000a6e 3a706d73     CPU%d: on...smp:
603145dc:	69724220 6e69676e 70752067 63657320      Bringing up sec
603145ec:	61646e6f 43207972 20735550 0a2e2e2e     ondary CPUs ....
603145fc:	00000000 25555043 66203a64 656c6961     ....CPU%d: faile
6031460c:	6f742064 6f6f6220 25203a74 00000a64     d to boot: %d...
6031461c:	47505041 0000000a 57505041 0000000a     APPG....APPW....
6031462c:	47435041 0000000a 57435041 0000000a     APCG....APCW....
6031463c:	6e616843 206c656e 666e6f43 7463696c     Channel Conflict
6031464c:	726f6620 61684320 6c656e6e 756c2520      for Channel %lu
6031465c:	0a0d2120 00000000 00435049 43504920      !......IPC. IPC
6031466c:	71655220 74736575 6d695420 74756f65      Request Timeout
6031467c:	00000a0d 43504920 74654720 6d655320     .... IPC Get Sem
6031468c:	6f687061 54206572 6f656d69 0a0d7475     aphore Timeout..
6031469c:	00000000 6d6f682f 69712f65 6568735f     ..../home/qi_she
603146ac:	656a2f6e 63697373 2e362f61 6f732f36     n/jessica/6.6/so
603146bc:	65637275 69662f73 61776d72 632f6572     urces/firmware/c
603146cc:	6f706d6f 746e656e 636f732f 656d612f     omponent/soc/ame
603146dc:	6d736162 2f747261 696c7766 61722f62     basmart/fwlib/ra
603146ec:	6f635f6d 6e6f6d6d 656d612f 695f6162     m_common/ameba_i
603146fc:	615f6370 632e6970 00000000              pc_api.c....

60314708 <CSWTCH.36>:
60314708:	00000008 00000000 00000000 00000000     ................
60314718:	00000008 00000000 00000000 00000000     ................
60314728:	00000008                                ....

6031472c <CSWTCH.37>:
6031472c:	42008600 42008600 00000000 00000000     ...B...B........
	...
6031476c:	41000500 41000500 00000000 00000000     ...A...A........
	...
603147ac:	41000580 41000580 6d6f682f 69712f65     ...A...A/home/qi
603147bc:	6568735f 656a2f6e 63697373 2e362f61     _shen/jessica/6.
603147cc:	6f732f36 65637275 69662f73 61776d72     6/sources/firmwa
603147dc:	632f6572 6f706d6f 746e656e 636f732f     re/component/soc
603147ec:	656d612f 6d736162 2f747261 696c7766     /amebasmart/fwli
603147fc:	61722f62 6f635f6d 6e6f6d6d 656d612f     b/ram_common/ame
6031480c:	695f6162 725f6370 632e6d61 00000000     ba_ipc_ram.c....
6031481c:	2050544f 64616572 74656720 20776820     OTP read get hw 
6031482c:	616d6573 69616620 00000a6c 0050544f     sema fail...OTP.
6031483c:	5f50544f 64616552 61462038 25206c69     OTP_Read8 Fail %
6031484c:	000a2078 20524d50 64616552 72726520     x ..PMR Read err
6031485c:	0a21726f 00000000 2050544f 74697277     or!.....OTP writ
6031486c:	65672065 77682074 6d657320 61662061     e get hw sema fa
6031487c:	000a6c69 5f50544f 74697257 46203865     il..OTP_Write8 F
6031488c:	206c6961 0a207825 00000000 2050544f     ail %x .....OTP 
6031489c:	676f7270 206d6172 6f727265 000a2172     program error!..
603148ac:	32524d50 61655220 72652064 21726f72     PMR2 Read error!
603148bc:	0000000a 69676f4c 4d6c6163 52207061     ....LogicalMap R
603148cc:	20646165 6f727265 78252072 2078252b     ead error %x+%x 
603148dc:	63786520 20646565 696d696c 00000a74      exceed limit...
603148ec:	67696c61 6e656d6e 72652074 20726f72     alignment error 
603148fc:	25207825 000a2078 69676f4c 4d6c6163     %x %x ..LogicalM
6031490c:	57207061 65746972 72726520 2520726f     ap Write error %
6031491c:	78252b78 78652020 64656563 6d696c20     x+%x  exceed lim
6031492c:	000a7469 69676f4c 4d6c6163 52207061     it..LogicalMap R
6031493c:	20646165 6f727265 68772072 77206e65     ead error when w
6031494c:	65746972 25204020 000a2078 6477656e     rite @ %x ..newd
6031495c:	5b617461 3d5d7825 0a782520 00000000     ata[%x]= %x.....
6031496c:	5f50544f 505f4750 656b6361 6f575f74     OTP_PG_Packet_Wo
6031497c:	73206472 20657a69 6f727265 253a2072     rd size error :%
6031498c:	656c2078 78253a6e 00000a20 656b614d     x len:%x ...Make
6031499c:	72757320 544f2065 6f6c2050 61636967      sure OTP logica
603149ac:	7261206c 20206165 2078253a 66656420     l area  :%x  def
603149bc:	64656e69 0000000a 5f50544f 505f4750     ined....OTP_PG_P
603149cc:	656b6361 255b2074 25205d78 000a2078     acket [%x] %x ..
603149dc:	5f50544f 505f4750 656b6361 6f6e2074     OTP_PG_Packet no
603149ec:	6f6e6520 20686775 63617073 78252065      enough space %x
603149fc:	00000a20 5f50544f 505f4750 656b6361      ...OTP_PG_Packe
60314a0c:	79422074 20206574 5d78255b 20782520     t Byte  [%x] %x 
60314a1c:	0000000a 7478656e 69727720 63206574     ....next write c
60314a2c:	656c6379 73614220 6c252065 6e632078     ycle Base %lx cn
60314a3c:	25207374 0a20786c 00000000 2d73255b     ts %lx .....[%s-
60314a4c:	205d6325 00000000 5d73255b 76656c20     %c] ....[%s] lev
60314a5c:	3d206c65 0a642520 00000000 00474f4c     el = %d.....LOG.
60314a6c:	0000002a 68636143 72612065 20796172     *...Cache array 
60314a7c:	66207369 2c6c6c75 646e6120 70657220     is full, and rep
60314a8c:	6563616c 646c6f20 746e6520 000a7972     lace old entry..
60314a9c:	3830255b 00205d78 255b0a0d 5d783830     [%08x] ...[%08x]
60314aac:	00000020 78383025 00000020 78323025      ...%08x ...%02x
60314abc:	00000020 2a2a2a2a 2a2a2a2a 2a2a2a2a      ...************
60314acc:	2a2a2a2a 2a2a2a2a 2a2a2a2a 57202a2a     ************** W
60314adc:	494e5241 2a20474e 2a2a2a2a 2a2a2a2a     ARNING *********
60314aec:	2a2a2a2a 2a2a2a2a 2a2a2a2a 000a2a2a     **************..
60314afc:	4e49414d 00000000 61656c50 72206573     MAIN....Please r
60314b0c:	20646165 20656874 6361433c 43206568     ead the <Cache C
60314b1c:	69736e6f 6e657473 57207963 206e6568     onsistency When 
60314b2c:	6e697355 4d442067 63203e41 74706168     Using DMA> chapt
60314b3c:	69207265 6874206e 70412065 63696c70     er in the Applic
60314b4c:	6f697461 6f4e5f6e 702e6574 000a6664     ation_Note.pdf..
60314b5c:	65726548 20736920 656d6f73 69726220     Here is some bri
60314b6c:	6f206665 68742066 68632065 65747061     ef of the chapte
60314b7c:	6e612072 61632064 6562206e 6d657220     r and can be rem
60314b8c:	6465766f 206e6920 6e69616d 000a632e     oved in main.c..
60314b9c:	74726f43 412d7865 77203233 206c6c69     Cortex-A32 will 
60314bac:	6f747561 6974616d 20796c63 66657270     automaticly pref
60314bbc:	68637465 74616420 6f742061 632d4420     etch data to D-c
60314bcc:	65686361 65766520 6874206e 64612065     ache even the ad
60314bdc:	73657264 73692073 746f6e20 61657220     dress is not rea
60314bec:	72772f64 21657469 0000000a 63614344     d/write!....DCac
60314bfc:	495f6568 6c61766e 74616469 78302865     he_Invalidate(0x
60314c0c:	46464646 46464646 7830202c 46464646     FFFFFFFF, 0xFFFF
60314c1c:	46464646 73692029 6d617320 73612065     FFFF) is same as
60314c2c:	61434420 5f656863 61656c43 766e496e      DCache_CleanInv
60314c3c:	64696c61 28657461 46467830 46464646     alidate(0xFFFFFF
60314c4c:	202c4646 46467830 46464646 20294646     FF, 0xFFFFFFFF) 
60314c5c:	43206e69 0a323341 00000000 61766e49     in CA32.....Inva
60314c6c:	6164696c 62206574 6e612079 64646120     lidate by an add
60314c7c:	73736572 20736920 796c6e6f 72657020     ress is only per
60314c8c:	6d726f66 77206465 206e6568 20656874     formed when the 
60314c9c:	61746164 20736920 20746f6e 74726964     data is not dirt
60314cac:	6f202c79 65687472 73697772 20612065     y, ortherwise a 
60314cbc:	61656c63 7369206e 72657020 6d726f66     clean is perform
60314ccc:	0a216465 00000000 65666572 6f742072     ed!.....refer to
60314cdc:	4d525420 20666f20 32334143 6f626120      TRM of CA32 abo
60314cec:	27207475 61746164 65727020 63746566     ut 'data prefetc
60314cfc:	676e6968 6e612027 49272064 6c61766e     hing' and 'Inval
60314d0c:	74616469 20676e69 6320726f 6e61656c     idating or clean
60314d1c:	20676e69 61632061 27656863 00000a2e     ing a cache'....
60314d2c:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
60314d3c:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
60314d4c:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
60314d5c:	2a2a2a2a 2a2a2a2a 000a2a2a 74726f43     **********..Cort
60314d6c:	412d7865 61745320 53207472 64656863     ex-A Start Sched
60314d7c:	72656c75 0000000a 2d2d2d2d 2d2d2d2d     uler....--------
60314d8c:	2d2d2d2d 2d2d2d2d 4554202d 43205453     --------- TEST C
60314d9c:	414d4d4f 4d20444e 2045444f 504c4548     OMMAND MODE HELP
60314dac:	2d782520 2d2d2d2d 2d2d2d2d 2d2d2d2d      %x-------------
60314dbc:	2d2d2d2d 00000a2d 494e4f4d 00524f54     -----...MONITOR.
60314dcc:	000a7325 2d2d2d2d 2d2d2d2d 2d2d2d2d     %s..------------
60314ddc:	2d2d2d2d 4554202d 43205453 414d4d4f     ----- TEST COMMA
60314dec:	4d20444e 2045444f 20444e45 2d782520     ND MODE END  %x-
60314dfc:	2d2d2d2d 2d2d2d2d 2d2d2d2d 2d2d2d2d     ----------------
60314e0c:	00000a2d 6f626552 6e69746f 2e2e2067     -...Rebooting ..
60314e1c:	000d0a2e 74726175 6e727562 00000000     ....uartburn....
60314e2c:	00000072 00000061 65707974 00000000     r...a...type....
60314e3c:	00006770 00006763 00746567 6b636f6c     pg..cg..get.lock
60314e4c:	3a746962 20786c25 0000000a 706c7364     bit:%lx ....dslp
60314e5c:	636f6c5f 7469626b 786c253a 0000000a     _lockbit:%lx....
60314e6c:	3830255b 25205d78 20783830 0000000a     [%08x] %08x ....
60314e7c:	6e6f7257 72612067 656d7567 6e20746e     Wrong argument n
60314e8c:	65626d75 0a0d2172 00000000 50495352     umber!......RSIP
60314e9c:	616e6520 64656c62 6143202c 2074276e      enabled, Can't 
60314eac:	64616552 616c4620 0a2e6873 00000000     Read Flash......
60314ebc:	6e6f7257 6d632067 0a0d2164 00000000     Wrong cmd!......
60314ecc:	73756665 656d2065 616d206d 636f6c6c     efuse mem malloc
60314edc:	69616620 000a206c 70616d77 00000000      fail ..wmap....
60314eec:	69727473 6c20676e 74676e65 6c252868     string length(%l
60314efc:	73202975 6c756f68 65622064 64646f20     u) should be odd
60314f0c:	00000a20 73706f4f 7277203a 20657469      ...Oops: write 
60314f1c:	746e656c 6f6e2068 616d2074 20686374     lenth not match 
60314f2c:	75706e69 74732074 676e6972 6e656c20     input string len
60314f3c:	202c6774 6f6f6863 73206573 6c6c616d     tg, choose small
60314f4c:	6f207265 000a656e 73756665 6d772065     er one..efuse wm
60314f5c:	77207061 65746972 6e656c20 756c253a     ap write len:%lu
60314f6c:	7473202c 676e6972 6e656c20 756c253a     , string len:%lu
60314f7c:	0000000a 70616d72 00000000 73756665     ....rmap....efus
60314f8c:	6d722065 0a207061 00000000 53554645     e rmap .....EFUS
60314f9c:	6f4c5f45 61636967 70614d6c 6165525f     E_LogicalMap_Rea
60314fac:	61662064 0a206c69 00000000 00000d0a     d fail .........
60314fbc:	46450d0a 5b455355 6c333025 003a5d78     ..EFUSE[%03lx]:.
60314fcc:	32302520 00000078 77617272 00000000      %02x...rraw....
60314fdc:	73756665 72722065 000a7761 61520d0a     efuse rraw....Ra
60314fec:	70614d77 3330255b 3a5d786c 00000000     wMap[%03lx]:....
60314ffc:	77617277 00000000 77617277 6c25203a     wraw....wraw: %l
6031500c:	78252078 00000a20 63746567 00006372     x %x ...getcrc..
6031501c:	2077656e 20637263 756c6176 73692065     new crc value is
6031502c:	25783020 0000786c 73756665 72772065      0x%lx..efuse wr
6031503c:	77207761 65746972 6e656c20 756c253a     aw write len:%lu
6031504c:	7473202c 676e6972 6e656c20 756c253a     , string len:%lu
6031505c:	0000000a 0000003f 4c454809 7e282050     ....?....HELP (~
6031506c:	0a20293f 50200909 746e6972 69687420     ?) ... Print thi
6031507c:	65682073 6d20706c 61737365 00000a67     s help messag...
6031508c:	00005744 20574409 6464413c 73736572     DW...DW <Address
6031509c:	654c202c 6874676e 09090a3e 6d754420     , Length>... Dum
603150ac:	656d2070 79726f6d 726f7720 726f2064     p memory word or
603150bc:	61655220 77482064 726f7720 65722064      Read Hw word re
603150cc:	74736967 203b7265 2009090a 3c205744     gister; ... DW <
603150dc:	72646461 0909203e 6d754420 6e6f2070     addr> .. Dump on
603150ec:	6f20796c 7720656e 2064726f 74207461     ly one word at t
603150fc:	73206568 20656d61 656d6974 6e75202c     he same time, un
6031510c:	203a7469 74794234 090a7365 57442009     it: 4Bytes... DW
6031511c:	64613c20 203e7264 6e656c3c 4420093e      <addr> <len>. D
6031512c:	20706d75 20656874 63657073 65696669     ump the specifie
6031513c:	656c2064 6874676e 20666f20 20656874     d length of the 
6031514c:	64726f77 6e75202c 203a7469 74794234     word, unit: 4Byt
6031515c:	090a7365 57442009 64613c20 203e7264     es... DW <addr> 
6031516c:	6e656c3c 2062203e 6d754420 68742070     <len> b  Dump th
6031517c:	70732065 66696365 20646569 676e656c     e specified leng
6031518c:	6f206874 68742066 79622065 202c6574     th of the byte, 
6031519c:	74696e75 4231203a 0a657479 00000000     unit: 1Byte.....
603151ac:	00005745 20574509 6464413c 73736572     EW...EW <Address
603151bc:	6548202c 090a3e78 72572009 20657469     , Hex>... Write 
603151cc:	6f6d656d 64207972 64726f77 20726f20     memory dword or 
603151dc:	74697257 77482065 6f776420 72206472     Write Hw dword r
603151ec:	73696765 20726574 2009090a 206e6143     egister ... Can 
603151fc:	74697277 6e6f2065 6f20796c 6420656e     write only one d
6031520c:	64726f77 20746120 20656874 656d6173     word at the same
6031521c:	6d697420 090a2065 78452009 5745203a      time ... Ex: EW
6031522c:	64644120 73736572 6c615620 0a206575      Address Value .
6031523c:	00000000 4f424552 0000544f 42455209     ....REBOOT...REB
6031524c:	20544f4f 2009090a 6574693c 73202c6d     OOT ... <item, s
6031525c:	6e697274 3a203e67 09090a20 65746920     tring> : ... ite
6031526c:	75203a6d 62747261 206e7275 4e20726f     m: uartburn or N
6031527c:	0a20412f 0a200909 00000000 53554645     /A ... .....EFUS
6031528c:	00000045 55464509 0a204553 77200909     E....EFUSE ... w
6031529c:	2070616d 72646461 6e656c20 74616420     map addr len dat
603152ac:	09090a61 616d7220 090a2070 773c2009     a... rmap ... <w
603152bc:	2070616d 30307830 38203220 3e353931     map 0x00 2 8195>
603152cc:	75666520 305b6573 78303d5d 202c3138      efuse[0]=0x81, 
603152dc:	73756665 315b2065 78303d5d 090a3539     efuse [1]=0x95..
603152ec:	773c2009 2070616d 30467830 31203420     . <wmap 0xF0 4 1
603152fc:	33323231 3e343433 78305b20 3d5d3046     1223344> [0xF0]=
6031530c:	31317830 305b202c 5d314678 3278303d     0x11, [0xF1]=0x2
6031531c:	5b202c32 32467830 78303d5d 202c3333     2, [0xF2]=0x33, 
6031532c:	4678305b 303d5d33 0a343478 00000000     [0xF3]=0x44.....
6031533c:	4b434954 00005350 43495409 2053504b     TICKPS...TICKPS 
6031534c:	2009090a 72203a72 61656c65 6f206573     ... r: release o
6031535c:	61772073 6f6c656b 0a206b63 61200909     s wakelock ... a
6031536c:	6361203a 72697571 736f2065 6b617720     : acquire os wak
6031537c:	636f6c65 000a206b 474f4c09 61743c20     elock ...LOG <ta
6031538c:	6c202c67 6c657665 090a203e 65532009     g, level> ... Se
6031539c:	68742074 6f6c2065 69642067 616c7073     t the log displa
603153ac:	656c2079 206c6576 6120666f 646f6d20     y level of a mod
603153bc:	20656c75 69646e69 75646976 796c6c61     ule individually
603153cc:	2009090a 6761743c 6d203a3e 6c75646f     ... <tag>: modul
603153dc:	616c2065 2c6c6562 20664920 20656874     e label, If the 
603153ec:	20676174 2a207369 6874202c 77207369     tag is *, this w
603153fc:	206c6c69 65736572 6c612074 6174206c     ill reset all ta
6031540c:	656c2067 736c6576 63786520 20747065     g levels except 
6031541c:	736f6874 64612065 20646564 74206f74     those added to t
6031542c:	61206568 79617272 2009090a 76656c3c     he array... <lev
6031543c:	3a3e6c65 74202c30 206e7275 2066666f     el>:0, turn off 
6031544c:	0a676f6c 20090909 2c312020 776c6120     log....   1, alw
6031545c:	20737961 73655228 6e656469 6f6c2974     ays (Resident)lo
6031546c:	09090a67 20202009 65202c32 726f7272     g....   2, error
6031547c:	676f6c20 0909090a 33202020 6177202c      log....   3, wa
6031548c:	6e696e72 6f6c2067 09090a67 20202009     rning log....   
6031549c:	69202c34 206f666e 0a676f6c 20090909     4, info log.... 
603154ac:	2c352020 62656420 6c206775 000a676f       5, debug log..
603154bc:	3f535441 00000000 00007325 6e750a0d     ATS?....%s....un
603154cc:	776f6e6b 6f63206e 6e616d6d 25272064     known command '%
603154dc:	00002773 230a0a0d 00000a0d 6c656873     s'.....#....shel
603154ec:	61745f6c 00006b73 61657243 4c206574     l_task..Create L
603154fc:	5520676f 20545241 6b736154 72724520     og UART Task Err
6031550c:	000a2121 65737361 65207472 20217272     !!..assert err! 
6031551c:	656c6966 7325203a 696c202c 203a656e     file: %s, line: 
6031552c:	000a6425 6d6f682f 69712f65 6568735f     %d../home/qi_she
6031553c:	656a2f6e 63697373 2e362f61 6f732f36     n/jessica/6.6/so
6031554c:	65637275 69662f73 61776d72 632f6572     urces/firmware/c
6031555c:	6f706d6f 746e656e 636f732f 656d612f     omponent/soc/ame
6031556c:	6d736162 2f747261 696c7766 70612f62     basmart/fwlib/ap
6031557c:	726f635f 6c782f65 745f7461 656c6261     _core/xlat_table
6031558c:	616c782f 61745f74 73656c62 6e6f635f     /xlat_tables_con
6031559c:	74786574 0000632e 6d6f682f 69712f65     text.c../home/qi
603155ac:	6568735f 656a2f6e 63697373 2e362f61     _shen/jessica/6.
603155bc:	6f732f36 65637275 69662f73 61776d72     6/sources/firmwa
603155cc:	632f6572 6f706d6f 746e656e 636f732f     re/component/soc
603155dc:	656d612f 6d736162 2f747261 696c7766     /amebasmart/fwli
603155ec:	70612f62 726f635f 6c782f65 745f7461     b/ap_core/xlat_t
603155fc:	656c6261 616c782f 61745f74 73656c62     able/xlat_tables
6031560c:	726f635f 00632e65 616d6d0a 64615f70     _core.c..mmap_ad
6031561c:	65725f64 6e6f6967 6568635f 29286b63     d_region_check()
6031562c:	69616620 2e64656c 72726520 2520726f      failed. error %
6031563c:	00000a64 20746f4e 756f6e65 6d206867     d...Not enough m
6031564c:	726f6d65 6f742079 70616d20 67657220     emory to map reg
6031565c:	3a6e6f69 4156200a 2578303a 2020786c     ion:. VA:0x%lx  
6031566c:	303a4150 6c6c2578 73202078 3a657a69     PA:0x%llx  size:
6031567c:	7a257830 61202078 3a727474 78257830     0x%zx  attr:0x%x
6031568c:	0000000a 6d6f682f 69712f65 6568735f     ..../home/qi_she
6031569c:	656a2f6e 63697373 2e362f61 6f732f36     n/jessica/6.6/so
603156ac:	65637275 69662f73 61776d72 632f6572     urces/firmware/c
603156bc:	6f706d6f 746e656e 636f732f 656d612f     omponent/soc/ame
603156cc:	6d736162 2f747261 696c7766 70612f62     basmart/fwlib/ap
603156dc:	726f635f 6c782f65 745f7461 656c6261     _core/xlat_table
603156ec:	616c782f 61745f74 73656c62 6372615f     /xlat_tables_arc
603156fc:	00632e68 6d6f682f 69712f65 6568735f     h.c./home/qi_she
6031570c:	656a2f6e 63697373 2e362f61 6f732f36     n/jessica/6.6/so
6031571c:	65637275 69662f73 61776d72 632f6572     urces/firmware/c
6031572c:	6f706d6f 746e656e 636f732f 656d612f     omponent/soc/ame
6031573c:	6d736162 2f747261 2f62696c 5f6d6172     basmart/lib/ram_
6031574c:	6d6d6f63 612f6e6f 6162656d 6968635f     common/ameba_chi
6031575c:	666e6970 696c5f6f 00632e62 203a7325     pinfo_lib.c.%s: 
6031576c:	00000000 3a525245 74654720 636f5320     ....ERR: Get Soc
6031577c:	6d614e20 61462065 000a6c69 78323025      Name Fail..%02x
6031578c:	00000000 00304d4b 32334143 00000000     ....KM0.CA32....
6031579c:	00344d4b 4c207325 56206269 69737265     KM4.%s Lib Versi
603157ac:	0a3a6e6f 00000000 00006325 33323130     on:.....%c..0123
603157bc:	37363534 42413938 46454443 00000000     456789ABCDEF....
603157cc:	64206f69 65766972 61702072 656d6172     io driver parame
603157dc:	73726574 72726520 2021726f 656c6966     ters error! file
603157ec:	6d616e5f 25203a65 6c202c73 3a656e69     _name: %s, line:
603157fc:	00642520 6d6f682f 69712f65 6568735f      %d./home/qi_she
6031580c:	656a2f6e 63697373 2e362f61 6f732f36     n/jessica/6.6/so
6031581c:	65637275 69662f73 61776d72 632f6572     urces/firmware/c
6031582c:	6f706d6f 746e656e 636f732f 656d612f     omponent/soc/ame
6031583c:	6d736162 2f747261 696c7766 6f722f62     basmart/fwlib/ro
6031584c:	6f635f6d 6e6f6d6d 656d612f 625f6162     m_common/ameba_b
6031585c:	756b6361 65725f70 00632e67 6d6f682f     ackup_reg.c./hom
6031586c:	69712f65 6568735f 656a2f6e 63697373     e/qi_shen/jessic
6031587c:	2e362f61 6f732f36 65637275 69662f73     a/6.6/sources/fi
6031588c:	61776d72 632f6572 6f706d6f 746e656e     rmware/component
6031589c:	636f732f 656d612f 6d736162 2f747261     /soc/amebasmart/
603158ac:	696c7766 6f722f62 6f635f6d 6e6f6d6d     fwlib/rom_common
603158bc:	656d612f 745f6162 725f6d69 632e6d6f     /ameba_tim_rom.c
603158cc:	00000000 73546f4e 0000006b 6c6c614d     ....NoTsk...Mall
603158dc:	6620636f 656c6961 43202e64 3a65726f     oc failed. Core:
603158ec:	5d73255b 6154202c 5b3a6b73 2c5d7325     [%s], Task:[%s],
603158fc:	72665b20 68206565 20706165 657a6973      [free heap size
6031590c:	6425203a 000a0d5d 54530d0a 204b4341     : %d].....STACK 
6031591c:	5245564f 574f4c46 54202d20 4e6b7361     OVERFLOW - TaskN
6031592c:	28656d61 0a297325 0000000d 454c4449     ame(%s).....IDLE
6031593c:	00000000 51726d54 00000000 20726d54     ....TmrQ....Tmr 
6031594c:	00637653 6f727245 53202172 6c756f68     Svc.Error! Shoul
6031595c:	656e2064 20726576 63616572 65682068     d never reach he
6031596c:	0a216572 00000000 00434d50 7566202c     re!.....PMC., fu
6031597c:	6974636e 203a6e6f 73736100 69747265     nction: .asserti
6031598c:	22206e6f 20227325 6c696166 203a6465     on "%s" failed: 
6031599c:	656c6966 73252220 6c202c22 20656e69     file "%s", line 
603159ac:	73256425 000a7325 33323130 37363534     %d%s%s..01234567
603159bc:	42413938 46454443 32313000 36353433     89ABCDEF.0123456
603159cc:	61393837 65646362 6e490066 696e6966     789abcdef.Infini
603159dc:	4e007974 30004e61 45455200 6d20544e     ty.NaN.0.REENT m
603159ec:	6f6c6c61 75732063 65656363 00646564     alloc succeeded.
603159fc:	6473732f 626f742f 6f616779 5053502f     /ssd/tobygao/PSP
60315a0c:	50505553 2d54524f 30323233 3730342f     SUPPORT-3220/407
60315a1c:	656e2f32 62696c77 312e342d 77656e2f     2/newlib-4.1/new
60315a2c:	2f62696c 6362696c 6474732f 2f62696c     lib/libc/stdlib/
60315a3c:	616f7464 4200632e 6f6c6c61 75732063     dtoa.c.Balloc su
60315a4c:	65656363 00646564 4f500043 00584953     cceeded.C.POSIX.
60315a5c:	732f002e 742f6473 6779626f 502f6f61     ../ssd/tobygao/P
60315a6c:	55535053 524f5050 32332d54 342f3032     SPSUPPORT-3220/4
60315a7c:	2f323730 6c77656e 342d6269 6e2f312e     072/newlib-4.1/n
60315a8c:	696c7765 696c2f62 732f6362 696c6474     ewlib/libc/stdli
60315a9c:	706d2f62 2e636572 4e490063 6e690046     b/mprec.c.INF.in
60315aac:	414e0066 616e004e 0000006e              f.NAN.nan...

60315ab8 <shell_cmd_table>:
60315ab8:	60315060 00000000 6030be08 60315064     `P1`......0`dP1`
60315ac8:	6031508c 00000004 6030c120 60315090     .P1`.... .0`.P1`
60315ad8:	603151ac 00000002 6030c078 603151b0     .Q1`....x.0`.Q1`
60315ae8:	60315240 00000004 6030bec0 60315248     @R1`......0`HR1`
60315af8:	60315288 00000008 6030c370 60315290     .R1`....p.0`.R1`
60315b08:	6031533c 00000004 6030bf44 60315344     <S1`....D.0`DS1`
60315b18:	60314a68 00000003 6030c9c8 60315384     hJ1`......0`.S1`

60315b28 <ipc_LPWHP_table>:
60315b28:	00000001 60309784 00000000 60309db0     ......0`......0`
60315b38:	00000000 00000001 00000001              ............

60315b44 <ipc_shell_table>:
60315b44:	00000001 6030ca50 00000000 60309db0     ....P.0`......0`
	...
60315b60:	00000001 6030ca50 00000000 60309db0     ....P.0`......0`
60315b70:	00000000 00000001 00000000              ............

60315b7c <lib_freertos_smp_git_rev>:
60315b7c:	62696c20 6572665f 6f747265 6d735f73      lib_freertos_sm
60315b8c:	65765f70 63655f72 32363863 38383730     p_ver_ecc8620788
60315b9c:	3230325f 31302f35 2d32322f 353a3331     _2025/01/22-13:5
60315bac:	33353a33 00000000                       3:53....

60315bb4 <lib_pmc_git_rev>:
60315bb4:	62696c20 636d705f 7265765f 6363655f      lib_pmc_ver_ecc
60315bc4:	30323638 5f383837 35323032 2f31302f     8620788_2025/01/
60315bd4:	312d3232 33353a33 0033353a              22-13:53:53.
