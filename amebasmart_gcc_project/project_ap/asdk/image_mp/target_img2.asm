
/home/auto_jenkins_wlan5/IOT_ATS/repos/Release_SDK_Linux/Release_Sdk/sources/firmware/amebasmart_gcc_project/project_ap/asdk/image_mp/target_img2.axf:     file format elf32-littlearm


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
60300024:	eb002a14 	bl	6030a87c <FIQHandler>
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
6030004c:	eb002a8d 	bl	6030aa88 <UndefinedExceptionHandler>
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
6030007c:	eb002a8e 	bl	6030aabc <DataAbortHandler>
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
603000ac:	eb002a93 	bl	6030ab00 <PrefetchAbortHandler>
603000b0:	e8bd0ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp}
603000b4:	e8bd500f 	pop	{r0, r1, r2, r3, ip, lr}
603000b8:	e25ef004 	subs	pc, lr, #4
603000bc:	603238c0 	.word	0x603238c0
603000c0:	603238b8 	.word	0x603238b8
603000c4:	603238bc 	.word	0x603238bc

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
60300208:	eb0031a0 	bl	6030c890 <setupMMUTable>
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
60300260:	ca002b10 	bgt	6030aea8 <vPortSecondaryStart>
60300264:	eb002971 	bl	6030a830 <app_start>
60300268:	ebffffff 	bl	6030026c <exit>

6030026c <exit>:
6030026c:	ea001d7d 	b	60307868 <_exit>

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
60300348:	6032b9c0 	.word	0x6032b9c0
6030034c:	6032c1c0 	.word	0x6032c1c0
60300350:	6032d9c0 	.word	0x6032d9c0
60300354:	6032e1c0 	.word	0x6032e1c0
60300358:	6032e9c0 	.word	0x6032e9c0
6030035c:	6032c9c0 	.word	0x6032c9c0
60300360:	55555555 	.word	0x55555555
60300364:	000003ff 	.word	0x000003ff
60300368:	00007fff 	.word	0x00007fff
6030036c:	4200c000 	.word	0x4200c000

60300370 <cpu_suspend>:
60300370:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
60300374:	e1a0500d 	mov	r5, sp
60300378:	e92d0003 	push	{r0, r1}
6030037c:	e1a00005 	mov	r0, r5
60300380:	eb004db4 	bl	60313a58 <cpu_suspend_save>
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
60300504:	603287f4 	.word	0x603287f4

60300508 <FreeRTOS_IPI_FLASHPG_Handler>:
60300508:	e10f1000 	mrs	r1, CPSR
6030050c:	f10c0080 	cpsid	i
60300510:	f57ff04f 	dsb	sy
60300514:	f57ff06f 	isb	sy
60300518:	e30422c0 	movw	r2, #17088	; 0x42c0
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
603007e0:	60323ec0 	.word	0x60323ec0

603007e4 <ulPortTaskHasFPUContextConst>:
603007e4:	603242cc 	.word	0x603242cc

603007e8 <vTaskSwitchContextConst>:
603007e8:	6030e20c 	.word	0x6030e20c

603007ec <vApplicationIRQHandlerConst>:
603007ec:	603007b0 	.word	0x603007b0

603007f0 <vApplicationFPUSafeIRQHandlerConst>:
603007f0:	6030a740 	.word	0x6030a740
603007f4:	603242c4 	.word	0x603242c4
603007f8:	603242d0 	.word	0x603242d0

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
603008a0:	60315c54 	.word	0x60315c54

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
603008d0:	60315c54 	.word	0x60315c54

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

60300a4c <__sflush_r>:
60300a4c:	e1d130bc 	ldrh	r3, [r1, #12]
60300a50:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60300a54:	e1a05000 	mov	r5, r0
60300a58:	e1d120fc 	ldrsh	r2, [r1, #12]
60300a5c:	e1a04001 	mov	r4, r1
60300a60:	e3130008 	tst	r3, #8
60300a64:	1a000058 	bne	60300bcc <__sflush_r+0x180>
60300a68:	e5913004 	ldr	r3, [r1, #4]
60300a6c:	e3822b02 	orr	r2, r2, #2048	; 0x800
60300a70:	e1c120bc 	strh	r2, [r1, #12]
60300a74:	e3530000 	cmp	r3, #0
60300a78:	ca000004 	bgt	60300a90 <__sflush_r+0x44>
60300a7c:	e5913040 	ldr	r3, [r1, #64]	; 0x40
60300a80:	e3530000 	cmp	r3, #0
60300a84:	ca000001 	bgt	60300a90 <__sflush_r+0x44>
60300a88:	e3a00000 	mov	r0, #0
60300a8c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60300a90:	e594802c 	ldr	r8, [r4, #44]	; 0x2c
60300a94:	e3580000 	cmp	r8, #0
60300a98:	0afffffa 	beq	60300a88 <__sflush_r+0x3c>
60300a9c:	e2127a01 	ands	r7, r2, #4096	; 0x1000
60300aa0:	e5956000 	ldr	r6, [r5]
60300aa4:	e3a03000 	mov	r3, #0
60300aa8:	e5853000 	str	r3, [r5]
60300aac:	15940054 	ldrne	r0, [r4, #84]	; 0x54
60300ab0:	1a000011 	bne	60300afc <__sflush_r+0xb0>
60300ab4:	e5941020 	ldr	r1, [r4, #32]
60300ab8:	e3a03001 	mov	r3, #1
60300abc:	e1a02007 	mov	r2, r7
60300ac0:	e1a00005 	mov	r0, r5
60300ac4:	e12fff38 	blx	r8
60300ac8:	e3700001 	cmn	r0, #1
60300acc:	1a00000a 	bne	60300afc <__sflush_r+0xb0>
60300ad0:	e5953000 	ldr	r3, [r5]
60300ad4:	e3530000 	cmp	r3, #0
60300ad8:	0a000007 	beq	60300afc <__sflush_r+0xb0>
60300adc:	e3530016 	cmp	r3, #22
60300ae0:	1353001d 	cmpne	r3, #29
60300ae4:	05856000 	streq	r6, [r5]
60300ae8:	11d430bc 	ldrhne	r3, [r4, #12]
60300aec:	0affffe5 	beq	60300a88 <__sflush_r+0x3c>
60300af0:	e3833040 	orr	r3, r3, #64	; 0x40
60300af4:	e1c430bc 	strh	r3, [r4, #12]
60300af8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60300afc:	e1d430bc 	ldrh	r3, [r4, #12]
60300b00:	e3130004 	tst	r3, #4
60300b04:	0a000005 	beq	60300b20 <__sflush_r+0xd4>
60300b08:	e5943004 	ldr	r3, [r4, #4]
60300b0c:	e0400003 	sub	r0, r0, r3
60300b10:	e5943034 	ldr	r3, [r4, #52]	; 0x34
60300b14:	e3530000 	cmp	r3, #0
60300b18:	15943040 	ldrne	r3, [r4, #64]	; 0x40
60300b1c:	10400003 	subne	r0, r0, r3
60300b20:	e3a03000 	mov	r3, #0
60300b24:	e1a02000 	mov	r2, r0
60300b28:	e594702c 	ldr	r7, [r4, #44]	; 0x2c
60300b2c:	e1a00005 	mov	r0, r5
60300b30:	e5941020 	ldr	r1, [r4, #32]
60300b34:	e12fff37 	blx	r7
60300b38:	e1d430bc 	ldrh	r3, [r4, #12]
60300b3c:	e3700001 	cmn	r0, #1
60300b40:	1a000006 	bne	60300b60 <__sflush_r+0x114>
60300b44:	e5951000 	ldr	r1, [r5]
60300b48:	e351001d 	cmp	r1, #29
60300b4c:	8affffe7 	bhi	60300af0 <__sflush_r+0xa4>
60300b50:	e59f20e4 	ldr	r2, [pc, #228]	; 60300c3c <__sflush_r+0x1f0>
60300b54:	e1e02132 	mvn	r2, r2, lsr r1
60300b58:	e3120001 	tst	r2, #1
60300b5c:	1affffe3 	bne	60300af0 <__sflush_r+0xa4>
60300b60:	e3c33b02 	bic	r3, r3, #2048	; 0x800
60300b64:	e3a02000 	mov	r2, #0
60300b68:	e5842004 	str	r2, [r4, #4]
60300b6c:	e6bf3073 	sxth	r3, r3
60300b70:	e5942010 	ldr	r2, [r4, #16]
60300b74:	e3130a01 	tst	r3, #4096	; 0x1000
60300b78:	e1c430bc 	strh	r3, [r4, #12]
60300b7c:	e5842000 	str	r2, [r4]
60300b80:	0a000005 	beq	60300b9c <__sflush_r+0x150>
60300b84:	e3700001 	cmn	r0, #1
60300b88:	1a000002 	bne	60300b98 <__sflush_r+0x14c>
60300b8c:	e5953000 	ldr	r3, [r5]
60300b90:	e3530000 	cmp	r3, #0
60300b94:	1a000000 	bne	60300b9c <__sflush_r+0x150>
60300b98:	e5840054 	str	r0, [r4, #84]	; 0x54
60300b9c:	e5941034 	ldr	r1, [r4, #52]	; 0x34
60300ba0:	e5856000 	str	r6, [r5]
60300ba4:	e3510000 	cmp	r1, #0
60300ba8:	0affffb6 	beq	60300a88 <__sflush_r+0x3c>
60300bac:	e2843044 	add	r3, r4, #68	; 0x44
60300bb0:	e1510003 	cmp	r1, r3
60300bb4:	0a000001 	beq	60300bc0 <__sflush_r+0x174>
60300bb8:	e1a00005 	mov	r0, r5
60300bbc:	eb0033bd 	bl	6030dab8 <__wrap__free_r>
60300bc0:	e3a00000 	mov	r0, #0
60300bc4:	e5840034 	str	r0, [r4, #52]	; 0x34
60300bc8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60300bcc:	e5917010 	ldr	r7, [r1, #16]
60300bd0:	e3570000 	cmp	r7, #0
60300bd4:	0affffab 	beq	60300a88 <__sflush_r+0x3c>
60300bd8:	e3130003 	tst	r3, #3
60300bdc:	e5916000 	ldr	r6, [r1]
60300be0:	13a03000 	movne	r3, #0
60300be4:	e5817000 	str	r7, [r1]
60300be8:	e0466007 	sub	r6, r6, r7
60300bec:	05913014 	ldreq	r3, [r1, #20]
60300bf0:	e5813008 	str	r3, [r1, #8]
60300bf4:	e3560000 	cmp	r6, #0
60300bf8:	daffffa2 	ble	60300a88 <__sflush_r+0x3c>
60300bfc:	e5948028 	ldr	r8, [r4, #40]	; 0x28
60300c00:	e1a03006 	mov	r3, r6
60300c04:	e5941020 	ldr	r1, [r4, #32]
60300c08:	e1a02007 	mov	r2, r7
60300c0c:	e1a00005 	mov	r0, r5
60300c10:	e12fff38 	blx	r8
60300c14:	e3500000 	cmp	r0, #0
60300c18:	ca000004 	bgt	60300c30 <__sflush_r+0x1e4>
60300c1c:	e1d430bc 	ldrh	r3, [r4, #12]
60300c20:	e3e00000 	mvn	r0, #0
60300c24:	e3833040 	orr	r3, r3, #64	; 0x40
60300c28:	e1c430bc 	strh	r3, [r4, #12]
60300c2c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60300c30:	e0877000 	add	r7, r7, r0
60300c34:	e0466000 	sub	r6, r6, r0
60300c38:	eaffffed 	b	60300bf4 <__sflush_r+0x1a8>
60300c3c:	20400001 	.word	0x20400001

60300c40 <_fflush_r>:
60300c40:	e5913010 	ldr	r3, [r1, #16]
60300c44:	e92d4070 	push	{r4, r5, r6, lr}
60300c48:	e3530000 	cmp	r3, #0
60300c4c:	1a000002 	bne	60300c5c <_fflush_r+0x1c>
60300c50:	e3a05000 	mov	r5, #0
60300c54:	e1a00005 	mov	r0, r5
60300c58:	e8bd8070 	pop	{r4, r5, r6, pc}
60300c5c:	e1a05000 	mov	r5, r0
60300c60:	e1a04001 	mov	r4, r1
60300c64:	e3500000 	cmp	r0, #0
60300c68:	0a000003 	beq	60300c7c <_fflush_r+0x3c>
60300c6c:	e5903018 	ldr	r3, [r0, #24]
60300c70:	e3530000 	cmp	r3, #0
60300c74:	1a000000 	bne	60300c7c <_fflush_r+0x3c>
60300c78:	eb000098 	bl	60300ee0 <__sinit>
60300c7c:	e1d430fc 	ldrsh	r3, [r4, #12]
60300c80:	e3530000 	cmp	r3, #0
60300c84:	0afffff1 	beq	60300c50 <_fflush_r+0x10>
60300c88:	e5942064 	ldr	r2, [r4, #100]	; 0x64
60300c8c:	e3120001 	tst	r2, #1
60300c90:	1a000003 	bne	60300ca4 <_fflush_r+0x64>
60300c94:	e3130c02 	tst	r3, #512	; 0x200
60300c98:	1a000001 	bne	60300ca4 <_fflush_r+0x64>
60300c9c:	e5940058 	ldr	r0, [r4, #88]	; 0x58
60300ca0:	eb00015c 	bl	60301218 <__retarget_lock_acquire_recursive>
60300ca4:	e1a00005 	mov	r0, r5
60300ca8:	e1a01004 	mov	r1, r4
60300cac:	ebffff66 	bl	60300a4c <__sflush_r>
60300cb0:	e5943064 	ldr	r3, [r4, #100]	; 0x64
60300cb4:	e1a05000 	mov	r5, r0
60300cb8:	e3130001 	tst	r3, #1
60300cbc:	1affffe4 	bne	60300c54 <_fflush_r+0x14>
60300cc0:	e1d430bc 	ldrh	r3, [r4, #12]
60300cc4:	e3130c02 	tst	r3, #512	; 0x200
60300cc8:	1affffe1 	bne	60300c54 <_fflush_r+0x14>
60300ccc:	e5940058 	ldr	r0, [r4, #88]	; 0x58
60300cd0:	eb000156 	bl	60301230 <__retarget_lock_release_recursive>
60300cd4:	eaffffde 	b	60300c54 <_fflush_r+0x14>

60300cd8 <fflush>:
60300cd8:	e2501000 	subs	r1, r0, #0
60300cdc:	1a000003 	bne	60300cf0 <fflush+0x18>
60300ce0:	e59f3014 	ldr	r3, [pc, #20]	; 60300cfc <fflush+0x24>
60300ce4:	e59f1014 	ldr	r1, [pc, #20]	; 60300d00 <fflush+0x28>
60300ce8:	e5930000 	ldr	r0, [r3]
60300cec:	ea00010e 	b	6030112c <_fwalk_reent>
60300cf0:	e59f300c 	ldr	r3, [pc, #12]	; 60300d04 <fflush+0x2c>
60300cf4:	e5930000 	ldr	r0, [r3]
60300cf8:	eaffffd0 	b	60300c40 <_fflush_r>
60300cfc:	60313e80 	.word	0x60313e80
60300d00:	60300c40 	.word	0x60300c40
60300d04:	60316000 	.word	0x60316000

60300d08 <std>:
60300d08:	e92d4010 	push	{r4, lr}
60300d0c:	e3a03000 	mov	r3, #0
60300d10:	e1a04000 	mov	r4, r0
60300d14:	e5803000 	str	r3, [r0]
60300d18:	e280005c 	add	r0, r0, #92	; 0x5c
60300d1c:	e5003058 	str	r3, [r0, #-88]	; 0xffffffa8
60300d20:	e5003054 	str	r3, [r0, #-84]	; 0xffffffac
60300d24:	e14015b0 	strh	r1, [r0, #-80]	; 0xffffffb0
60300d28:	e1a01003 	mov	r1, r3
60300d2c:	e5803008 	str	r3, [r0, #8]
60300d30:	e14024be 	strh	r2, [r0, #-78]	; 0xffffffb2
60300d34:	e3a02008 	mov	r2, #8
60300d38:	e500304c 	str	r3, [r0, #-76]	; 0xffffffb4
60300d3c:	e5003048 	str	r3, [r0, #-72]	; 0xffffffb8
60300d40:	e5003044 	str	r3, [r0, #-68]	; 0xffffffbc
60300d44:	eb00319b 	bl	6030d3b8 <__wrap_memset>
60300d48:	e59f3028 	ldr	r3, [pc, #40]	; 60300d78 <std+0x70>
60300d4c:	e5843024 	str	r3, [r4, #36]	; 0x24
60300d50:	e2840058 	add	r0, r4, #88	; 0x58
60300d54:	e59f3020 	ldr	r3, [pc, #32]	; 60300d7c <std+0x74>
60300d58:	e5843028 	str	r3, [r4, #40]	; 0x28
60300d5c:	e59f301c 	ldr	r3, [pc, #28]	; 60300d80 <std+0x78>
60300d60:	e584302c 	str	r3, [r4, #44]	; 0x2c
60300d64:	e59f3018 	ldr	r3, [pc, #24]	; 60300d84 <std+0x7c>
60300d68:	e5844020 	str	r4, [r4, #32]
60300d6c:	e5843030 	str	r3, [r4, #48]	; 0x30
60300d70:	e8bd4010 	pop	{r4, lr}
60300d74:	ea000123 	b	60301208 <__retarget_lock_init_recursive>
60300d78:	603013e0 	.word	0x603013e0
60300d7c:	60301418 	.word	0x60301418
60300d80:	6030146c 	.word	0x6030146c
60300d84:	6030149c 	.word	0x6030149c

60300d88 <_cleanup_r>:
60300d88:	e5901004 	ldr	r1, [r0, #4]
60300d8c:	e59f3050 	ldr	r3, [pc, #80]	; 60300de4 <_cleanup_r+0x5c>
60300d90:	e92d4010 	push	{r4, lr}
60300d94:	e1a04000 	mov	r4, r0
60300d98:	e1510003 	cmp	r1, r3
60300d9c:	0a000000 	beq	60300da4 <_cleanup_r+0x1c>
60300da0:	eb000671 	bl	6030276c <_fclose_r>
60300da4:	e5941008 	ldr	r1, [r4, #8]
60300da8:	e59f3038 	ldr	r3, [pc, #56]	; 60300de8 <_cleanup_r+0x60>
60300dac:	e1510003 	cmp	r1, r3
60300db0:	0a000001 	beq	60300dbc <_cleanup_r+0x34>
60300db4:	e1a00004 	mov	r0, r4
60300db8:	eb00066b 	bl	6030276c <_fclose_r>
60300dbc:	e594100c 	ldr	r1, [r4, #12]
60300dc0:	e59f3024 	ldr	r3, [pc, #36]	; 60300dec <_cleanup_r+0x64>
60300dc4:	e1510003 	cmp	r1, r3
60300dc8:	0a000001 	beq	60300dd4 <_cleanup_r+0x4c>
60300dcc:	e1a00004 	mov	r0, r4
60300dd0:	eb000665 	bl	6030276c <_fclose_r>
60300dd4:	e1a00004 	mov	r0, r4
60300dd8:	e59f1010 	ldr	r1, [pc, #16]	; 60300df0 <_cleanup_r+0x68>
60300ddc:	e8bd4010 	pop	{r4, lr}
60300de0:	ea0000d1 	b	6030112c <_fwalk_reent>
60300de4:	6032301c 	.word	0x6032301c
60300de8:	60323084 	.word	0x60323084
60300dec:	603230ec 	.word	0x603230ec
60300df0:	6030276c 	.word	0x6030276c

60300df4 <__fp_lock>:
60300df4:	e5903064 	ldr	r3, [r0, #100]	; 0x64
60300df8:	e3130001 	tst	r3, #1
60300dfc:	1a000007 	bne	60300e20 <__fp_lock+0x2c>
60300e00:	e1d030bc 	ldrh	r3, [r0, #12]
60300e04:	e3130c02 	tst	r3, #512	; 0x200
60300e08:	1a000004 	bne	60300e20 <__fp_lock+0x2c>
60300e0c:	e5900058 	ldr	r0, [r0, #88]	; 0x58
60300e10:	e92d4010 	push	{r4, lr}
60300e14:	eb0000ff 	bl	60301218 <__retarget_lock_acquire_recursive>
60300e18:	e3a00000 	mov	r0, #0
60300e1c:	e8bd8010 	pop	{r4, pc}
60300e20:	e3a00000 	mov	r0, #0
60300e24:	e12fff1e 	bx	lr

60300e28 <__fp_unlock>:
60300e28:	e5903064 	ldr	r3, [r0, #100]	; 0x64
60300e2c:	e3130001 	tst	r3, #1
60300e30:	1a000007 	bne	60300e54 <__fp_unlock+0x2c>
60300e34:	e1d030bc 	ldrh	r3, [r0, #12]
60300e38:	e3130c02 	tst	r3, #512	; 0x200
60300e3c:	1a000004 	bne	60300e54 <__fp_unlock+0x2c>
60300e40:	e5900058 	ldr	r0, [r0, #88]	; 0x58
60300e44:	e92d4010 	push	{r4, lr}
60300e48:	eb0000f8 	bl	60301230 <__retarget_lock_release_recursive>
60300e4c:	e3a00000 	mov	r0, #0
60300e50:	e8bd8010 	pop	{r4, pc}
60300e54:	e3a00000 	mov	r0, #0
60300e58:	e12fff1e 	bx	lr

60300e5c <__sfmoreglue>:
60300e5c:	e92d4070 	push	{r4, r5, r6, lr}
60300e60:	e3a02068 	mov	r2, #104	; 0x68
60300e64:	e2415001 	sub	r5, r1, #1
60300e68:	e1a06001 	mov	r6, r1
60300e6c:	e0050592 	mul	r5, r2, r5
60300e70:	e2851074 	add	r1, r5, #116	; 0x74
60300e74:	eb00330a 	bl	6030daa4 <__wrap__malloc_r>
60300e78:	e2504000 	subs	r4, r0, #0
60300e7c:	0a000005 	beq	60300e98 <__sfmoreglue+0x3c>
60300e80:	e3a01000 	mov	r1, #0
60300e84:	e284000c 	add	r0, r4, #12
60300e88:	e2852068 	add	r2, r5, #104	; 0x68
60300e8c:	e8840042 	stm	r4, {r1, r6}
60300e90:	e5840008 	str	r0, [r4, #8]
60300e94:	eb003147 	bl	6030d3b8 <__wrap_memset>
60300e98:	e1a00004 	mov	r0, r4
60300e9c:	e8bd8070 	pop	{r4, r5, r6, pc}

60300ea0 <_cleanup>:
60300ea0:	e59f3004 	ldr	r3, [pc, #4]	; 60300eac <_cleanup+0xc>
60300ea4:	e5930000 	ldr	r0, [r3]
60300ea8:	eaffffb6 	b	60300d88 <_cleanup_r>
60300eac:	60313e80 	.word	0x60313e80

60300eb0 <__sfp_lock_acquire>:
60300eb0:	e59f0000 	ldr	r0, [pc]	; 60300eb8 <__sfp_lock_acquire+0x8>
60300eb4:	ea0000d7 	b	60301218 <__retarget_lock_acquire_recursive>
60300eb8:	6032315b 	.word	0x6032315b

60300ebc <__sfp_lock_release>:
60300ebc:	e59f0000 	ldr	r0, [pc]	; 60300ec4 <__sfp_lock_release+0x8>
60300ec0:	ea0000da 	b	60301230 <__retarget_lock_release_recursive>
60300ec4:	6032315b 	.word	0x6032315b

60300ec8 <__sinit_lock_acquire>:
60300ec8:	e59f0000 	ldr	r0, [pc]	; 60300ed0 <__sinit_lock_acquire+0x8>
60300ecc:	ea0000d1 	b	60301218 <__retarget_lock_acquire_recursive>
60300ed0:	6032315c 	.word	0x6032315c

60300ed4 <__sinit_lock_release>:
60300ed4:	e59f0000 	ldr	r0, [pc]	; 60300edc <__sinit_lock_release+0x8>
60300ed8:	ea0000d4 	b	60301230 <__retarget_lock_release_recursive>
60300edc:	6032315c 	.word	0x6032315c

60300ee0 <__sinit>:
60300ee0:	e92d4070 	push	{r4, r5, r6, lr}
60300ee4:	e1a04000 	mov	r4, r0
60300ee8:	ebfffff6 	bl	60300ec8 <__sinit_lock_acquire>
60300eec:	e5943018 	ldr	r3, [r4, #24]
60300ef0:	e3530000 	cmp	r3, #0
60300ef4:	0a000001 	beq	60300f00 <__sinit+0x20>
60300ef8:	e8bd4070 	pop	{r4, r5, r6, lr}
60300efc:	eafffff4 	b	60300ed4 <__sinit_lock_release>
60300f00:	e58430d8 	str	r3, [r4, #216]	; 0xd8
60300f04:	e58430dc 	str	r3, [r4, #220]	; 0xdc
60300f08:	e58430e0 	str	r3, [r4, #224]	; 0xe0
60300f0c:	e59f3078 	ldr	r3, [pc, #120]	; 60300f8c <__sinit+0xac>
60300f10:	e59f0078 	ldr	r0, [pc, #120]	; 60300f90 <__sinit+0xb0>
60300f14:	e59f2078 	ldr	r2, [pc, #120]	; 60300f94 <__sinit+0xb4>
60300f18:	e5842028 	str	r2, [r4, #40]	; 0x28
60300f1c:	e2806068 	add	r6, r0, #104	; 0x68
60300f20:	e5933000 	ldr	r3, [r3]
60300f24:	e28050d0 	add	r5, r0, #208	; 0xd0
60300f28:	e1530004 	cmp	r3, r4
60300f2c:	03a02001 	moveq	r2, #1
60300f30:	05832018 	streq	r2, [r3, #24]
60300f34:	e5902020 	ldr	r2, [r0, #32]
60300f38:	e5840004 	str	r0, [r4, #4]
60300f3c:	e3520000 	cmp	r2, #0
60300f40:	e5846008 	str	r6, [r4, #8]
60300f44:	e584500c 	str	r5, [r4, #12]
60300f48:	1a00000c 	bne	60300f80 <__sinit+0xa0>
60300f4c:	e58300e0 	str	r0, [r3, #224]	; 0xe0
60300f50:	e3a01003 	mov	r1, #3
60300f54:	e58310dc 	str	r1, [r3, #220]	; 0xdc
60300f58:	e3a01004 	mov	r1, #4
60300f5c:	ebffff69 	bl	60300d08 <std>
60300f60:	e3a02001 	mov	r2, #1
60300f64:	e3a01009 	mov	r1, #9
60300f68:	e1a00006 	mov	r0, r6
60300f6c:	ebffff65 	bl	60300d08 <std>
60300f70:	e3a02002 	mov	r2, #2
60300f74:	e3a01012 	mov	r1, #18
60300f78:	e1a00005 	mov	r0, r5
60300f7c:	ebffff61 	bl	60300d08 <std>
60300f80:	e3a03001 	mov	r3, #1
60300f84:	e5843018 	str	r3, [r4, #24]
60300f88:	eaffffda 	b	60300ef8 <__sinit+0x18>
60300f8c:	60313e80 	.word	0x60313e80
60300f90:	6032301c 	.word	0x6032301c
60300f94:	60300d88 	.word	0x60300d88

60300f98 <__sfp>:
60300f98:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60300f9c:	e1a07000 	mov	r7, r0
60300fa0:	ebffffc2 	bl	60300eb0 <__sfp_lock_acquire>
60300fa4:	e59f30d0 	ldr	r3, [pc, #208]	; 6030107c <__sfp+0xe4>
60300fa8:	e5936000 	ldr	r6, [r3]
60300fac:	e5963018 	ldr	r3, [r6, #24]
60300fb0:	e3530000 	cmp	r3, #0
60300fb4:	1a000001 	bne	60300fc0 <__sfp+0x28>
60300fb8:	e1a00006 	mov	r0, r6
60300fbc:	ebffffc7 	bl	60300ee0 <__sinit>
60300fc0:	e28660d8 	add	r6, r6, #216	; 0xd8
60300fc4:	e9960018 	ldmib	r6, {r3, r4}
60300fc8:	e2533001 	subs	r3, r3, #1
60300fcc:	5a000004 	bpl	60300fe4 <__sfp+0x4c>
60300fd0:	e5963000 	ldr	r3, [r6]
60300fd4:	e3530000 	cmp	r3, #0
60300fd8:	0a00001c 	beq	60301050 <__sfp+0xb8>
60300fdc:	e5966000 	ldr	r6, [r6]
60300fe0:	eafffff7 	b	60300fc4 <__sfp+0x2c>
60300fe4:	e1d450fc 	ldrsh	r5, [r4, #12]
60300fe8:	e3550000 	cmp	r5, #0
60300fec:	1a000015 	bne	60301048 <__sfp+0xb0>
60300ff0:	e59f3088 	ldr	r3, [pc, #136]	; 60301080 <__sfp+0xe8>
60300ff4:	e2840058 	add	r0, r4, #88	; 0x58
60300ff8:	e584300c 	str	r3, [r4, #12]
60300ffc:	e5845064 	str	r5, [r4, #100]	; 0x64
60301000:	eb000080 	bl	60301208 <__retarget_lock_init_recursive>
60301004:	ebffffac 	bl	60300ebc <__sfp_lock_release>
60301008:	e3a02008 	mov	r2, #8
6030100c:	e1a01005 	mov	r1, r5
60301010:	e284005c 	add	r0, r4, #92	; 0x5c
60301014:	e5845000 	str	r5, [r4]
60301018:	e5845008 	str	r5, [r4, #8]
6030101c:	e5845004 	str	r5, [r4, #4]
60301020:	e5845010 	str	r5, [r4, #16]
60301024:	e5845014 	str	r5, [r4, #20]
60301028:	e5845018 	str	r5, [r4, #24]
6030102c:	eb0030e1 	bl	6030d3b8 <__wrap_memset>
60301030:	e5845034 	str	r5, [r4, #52]	; 0x34
60301034:	e5845038 	str	r5, [r4, #56]	; 0x38
60301038:	e5845048 	str	r5, [r4, #72]	; 0x48
6030103c:	e584504c 	str	r5, [r4, #76]	; 0x4c
60301040:	e1a00004 	mov	r0, r4
60301044:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60301048:	e2844068 	add	r4, r4, #104	; 0x68
6030104c:	eaffffdd 	b	60300fc8 <__sfp+0x30>
60301050:	e3a01004 	mov	r1, #4
60301054:	e1a00007 	mov	r0, r7
60301058:	ebffff7f 	bl	60300e5c <__sfmoreglue>
6030105c:	e1a04000 	mov	r4, r0
60301060:	e3500000 	cmp	r0, #0
60301064:	e5860000 	str	r0, [r6]
60301068:	1affffdb 	bne	60300fdc <__sfp+0x44>
6030106c:	ebffff92 	bl	60300ebc <__sfp_lock_release>
60301070:	e3a0300c 	mov	r3, #12
60301074:	e5873000 	str	r3, [r7]
60301078:	eafffff0 	b	60301040 <__sfp+0xa8>
6030107c:	60313e80 	.word	0x60313e80
60301080:	ffff0001 	.word	0xffff0001

60301084 <__fp_lock_all>:
60301084:	e92d4010 	push	{r4, lr}
60301088:	ebffff88 	bl	60300eb0 <__sfp_lock_acquire>
6030108c:	e59f300c 	ldr	r3, [pc, #12]	; 603010a0 <__fp_lock_all+0x1c>
60301090:	e8bd4010 	pop	{r4, lr}
60301094:	e59f1008 	ldr	r1, [pc, #8]	; 603010a4 <__fp_lock_all+0x20>
60301098:	e5930000 	ldr	r0, [r3]
6030109c:	ea00000a 	b	603010cc <_fwalk>
603010a0:	60316000 	.word	0x60316000
603010a4:	60300df4 	.word	0x60300df4

603010a8 <__fp_unlock_all>:
603010a8:	e59f3014 	ldr	r3, [pc, #20]	; 603010c4 <__fp_unlock_all+0x1c>
603010ac:	e92d4010 	push	{r4, lr}
603010b0:	e59f1010 	ldr	r1, [pc, #16]	; 603010c8 <__fp_unlock_all+0x20>
603010b4:	e5930000 	ldr	r0, [r3]
603010b8:	eb000003 	bl	603010cc <_fwalk>
603010bc:	e8bd4010 	pop	{r4, lr}
603010c0:	eaffff7d 	b	60300ebc <__sfp_lock_release>
603010c4:	60316000 	.word	0x60316000
603010c8:	60300e28 	.word	0x60300e28

603010cc <_fwalk>:
603010cc:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
603010d0:	e1a07001 	mov	r7, r1
603010d4:	e28040d8 	add	r4, r0, #216	; 0xd8
603010d8:	e3a06000 	mov	r6, #0
603010dc:	e5945008 	ldr	r5, [r4, #8]
603010e0:	e5948004 	ldr	r8, [r4, #4]
603010e4:	e2588001 	subs	r8, r8, #1
603010e8:	5a000004 	bpl	60301100 <_fwalk+0x34>
603010ec:	e5944000 	ldr	r4, [r4]
603010f0:	e3540000 	cmp	r4, #0
603010f4:	1afffff8 	bne	603010dc <_fwalk+0x10>
603010f8:	e1a00006 	mov	r0, r6
603010fc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60301100:	e1d530bc 	ldrh	r3, [r5, #12]
60301104:	e3530001 	cmp	r3, #1
60301108:	9a000005 	bls	60301124 <_fwalk+0x58>
6030110c:	e1d530fe 	ldrsh	r3, [r5, #14]
60301110:	e3730001 	cmn	r3, #1
60301114:	0a000002 	beq	60301124 <_fwalk+0x58>
60301118:	e1a00005 	mov	r0, r5
6030111c:	e12fff37 	blx	r7
60301120:	e1866000 	orr	r6, r6, r0
60301124:	e2855068 	add	r5, r5, #104	; 0x68
60301128:	eaffffed 	b	603010e4 <_fwalk+0x18>

6030112c <_fwalk_reent>:
6030112c:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
60301130:	e1a06000 	mov	r6, r0
60301134:	e1a08001 	mov	r8, r1
60301138:	e28040d8 	add	r4, r0, #216	; 0xd8
6030113c:	e3a07000 	mov	r7, #0
60301140:	e5945008 	ldr	r5, [r4, #8]
60301144:	e5949004 	ldr	r9, [r4, #4]
60301148:	e2599001 	subs	r9, r9, #1
6030114c:	5a000004 	bpl	60301164 <_fwalk_reent+0x38>
60301150:	e5944000 	ldr	r4, [r4]
60301154:	e3540000 	cmp	r4, #0
60301158:	1afffff8 	bne	60301140 <_fwalk_reent+0x14>
6030115c:	e1a00007 	mov	r0, r7
60301160:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
60301164:	e1d530bc 	ldrh	r3, [r5, #12]
60301168:	e3530001 	cmp	r3, #1
6030116c:	9a000006 	bls	6030118c <_fwalk_reent+0x60>
60301170:	e1d530fe 	ldrsh	r3, [r5, #14]
60301174:	e3730001 	cmn	r3, #1
60301178:	0a000003 	beq	6030118c <_fwalk_reent+0x60>
6030117c:	e1a01005 	mov	r1, r5
60301180:	e1a00006 	mov	r0, r6
60301184:	e12fff38 	blx	r8
60301188:	e1877000 	orr	r7, r7, r0
6030118c:	e2855068 	add	r5, r5, #104	; 0x68
60301190:	eaffffec 	b	60301148 <_fwalk_reent+0x1c>

60301194 <__libc_init_array>:
60301194:	e92d4070 	push	{r4, r5, r6, lr}
60301198:	e3a06000 	mov	r6, #0
6030119c:	e59f5050 	ldr	r5, [pc, #80]	; 603011f4 <__libc_init_array+0x60>
603011a0:	e59f4050 	ldr	r4, [pc, #80]	; 603011f8 <__libc_init_array+0x64>
603011a4:	e0444005 	sub	r4, r4, r5
603011a8:	e1a04144 	asr	r4, r4, #2
603011ac:	e1560004 	cmp	r6, r4
603011b0:	1a00000b 	bne	603011e4 <__libc_init_array+0x50>
603011b4:	e59f5040 	ldr	r5, [pc, #64]	; 603011fc <__libc_init_array+0x68>
603011b8:	e3a06000 	mov	r6, #0
603011bc:	e59f403c 	ldr	r4, [pc, #60]	; 60301200 <__libc_init_array+0x6c>
603011c0:	eb002599 	bl	6030a82c <_init>
603011c4:	e0444005 	sub	r4, r4, r5
603011c8:	e1a04144 	asr	r4, r4, #2
603011cc:	e1560004 	cmp	r6, r4
603011d0:	08bd8070 	popeq	{r4, r5, r6, pc}
603011d4:	e4953004 	ldr	r3, [r5], #4
603011d8:	e2866001 	add	r6, r6, #1
603011dc:	e12fff33 	blx	r3
603011e0:	eafffff9 	b	603011cc <__libc_init_array+0x38>
603011e4:	e4953004 	ldr	r3, [r5], #4
603011e8:	e2866001 	add	r6, r6, #1
603011ec:	e12fff33 	blx	r3
603011f0:	eaffffed 	b	603011ac <__libc_init_array+0x18>
603011f4:	60315d10 	.word	0x60315d10
603011f8:	60315d10 	.word	0x60315d10
603011fc:	60315d10 	.word	0x60315d10
60301200:	60315d14 	.word	0x60315d14

60301204 <__retarget_lock_init>:
60301204:	e12fff1e 	bx	lr

60301208 <__retarget_lock_init_recursive>:
60301208:	e12fff1e 	bx	lr

6030120c <__retarget_lock_close>:
6030120c:	e12fff1e 	bx	lr

60301210 <__retarget_lock_close_recursive>:
60301210:	e12fff1e 	bx	lr

60301214 <__retarget_lock_acquire>:
60301214:	e12fff1e 	bx	lr

60301218 <__retarget_lock_acquire_recursive>:
60301218:	e12fff1e 	bx	lr

6030121c <__retarget_lock_try_acquire>:
6030121c:	e3a00001 	mov	r0, #1
60301220:	e12fff1e 	bx	lr

60301224 <__retarget_lock_try_acquire_recursive>:
60301224:	e3a00001 	mov	r0, #1
60301228:	e12fff1e 	bx	lr

6030122c <__retarget_lock_release>:
6030122c:	e12fff1e 	bx	lr

60301230 <__retarget_lock_release_recursive>:
60301230:	e12fff1e 	bx	lr

60301234 <cleanup_glue>:
60301234:	e92d4070 	push	{r4, r5, r6, lr}
60301238:	e1a04001 	mov	r4, r1
6030123c:	e5911000 	ldr	r1, [r1]
60301240:	e1a05000 	mov	r5, r0
60301244:	e3510000 	cmp	r1, #0
60301248:	0a000000 	beq	60301250 <cleanup_glue+0x1c>
6030124c:	ebfffff8 	bl	60301234 <cleanup_glue>
60301250:	e1a01004 	mov	r1, r4
60301254:	e1a00005 	mov	r0, r5
60301258:	e8bd4070 	pop	{r4, r5, r6, lr}
6030125c:	ea003215 	b	6030dab8 <__wrap__free_r>

60301260 <_reclaim_reent>:
60301260:	e59f3174 	ldr	r3, [pc, #372]	; 603013dc <_reclaim_reent+0x17c>
60301264:	e5933000 	ldr	r3, [r3]
60301268:	e1530000 	cmp	r3, r0
6030126c:	012fff1e 	bxeq	lr
60301270:	e5903024 	ldr	r3, [r0, #36]	; 0x24
60301274:	e92d4070 	push	{r4, r5, r6, lr}
60301278:	e1a04000 	mov	r4, r0
6030127c:	e3530000 	cmp	r3, #0
60301280:	0a000009 	beq	603012ac <_reclaim_reent+0x4c>
60301284:	e593300c 	ldr	r3, [r3, #12]
60301288:	e3530000 	cmp	r3, #0
6030128c:	13a05000 	movne	r5, #0
60301290:	1a000045 	bne	603013ac <_reclaim_reent+0x14c>
60301294:	e5943024 	ldr	r3, [r4, #36]	; 0x24
60301298:	e5931000 	ldr	r1, [r3]
6030129c:	e3510000 	cmp	r1, #0
603012a0:	0a000001 	beq	603012ac <_reclaim_reent+0x4c>
603012a4:	e1a00004 	mov	r0, r4
603012a8:	eb003202 	bl	6030dab8 <__wrap__free_r>
603012ac:	e5941014 	ldr	r1, [r4, #20]
603012b0:	e3510000 	cmp	r1, #0
603012b4:	0a000001 	beq	603012c0 <_reclaim_reent+0x60>
603012b8:	e1a00004 	mov	r0, r4
603012bc:	eb0031fd 	bl	6030dab8 <__wrap__free_r>
603012c0:	e5941024 	ldr	r1, [r4, #36]	; 0x24
603012c4:	e3510000 	cmp	r1, #0
603012c8:	0a000001 	beq	603012d4 <_reclaim_reent+0x74>
603012cc:	e1a00004 	mov	r0, r4
603012d0:	eb0031f8 	bl	6030dab8 <__wrap__free_r>
603012d4:	e5941038 	ldr	r1, [r4, #56]	; 0x38
603012d8:	e3510000 	cmp	r1, #0
603012dc:	0a000001 	beq	603012e8 <_reclaim_reent+0x88>
603012e0:	e1a00004 	mov	r0, r4
603012e4:	eb0031f3 	bl	6030dab8 <__wrap__free_r>
603012e8:	e594103c 	ldr	r1, [r4, #60]	; 0x3c
603012ec:	e3510000 	cmp	r1, #0
603012f0:	0a000001 	beq	603012fc <_reclaim_reent+0x9c>
603012f4:	e1a00004 	mov	r0, r4
603012f8:	eb0031ee 	bl	6030dab8 <__wrap__free_r>
603012fc:	e5941040 	ldr	r1, [r4, #64]	; 0x40
60301300:	e3510000 	cmp	r1, #0
60301304:	0a000001 	beq	60301310 <_reclaim_reent+0xb0>
60301308:	e1a00004 	mov	r0, r4
6030130c:	eb0031e9 	bl	6030dab8 <__wrap__free_r>
60301310:	e59410ec 	ldr	r1, [r4, #236]	; 0xec
60301314:	e3510000 	cmp	r1, #0
60301318:	0a000001 	beq	60301324 <_reclaim_reent+0xc4>
6030131c:	e1a00004 	mov	r0, r4
60301320:	eb0031e4 	bl	6030dab8 <__wrap__free_r>
60301324:	e59410e8 	ldr	r1, [r4, #232]	; 0xe8
60301328:	e3510000 	cmp	r1, #0
6030132c:	0a000001 	beq	60301338 <_reclaim_reent+0xd8>
60301330:	e1a00004 	mov	r0, r4
60301334:	eb0031df 	bl	6030dab8 <__wrap__free_r>
60301338:	e5943048 	ldr	r3, [r4, #72]	; 0x48
6030133c:	e3530000 	cmp	r3, #0
60301340:	0a000004 	beq	60301358 <_reclaim_reent+0xf8>
60301344:	e5931088 	ldr	r1, [r3, #136]	; 0x88
60301348:	e3510000 	cmp	r1, #0
6030134c:	0a000001 	beq	60301358 <_reclaim_reent+0xf8>
60301350:	e1a00004 	mov	r0, r4
60301354:	eb0031d7 	bl	6030dab8 <__wrap__free_r>
60301358:	e5941034 	ldr	r1, [r4, #52]	; 0x34
6030135c:	e3510000 	cmp	r1, #0
60301360:	0a000001 	beq	6030136c <_reclaim_reent+0x10c>
60301364:	e1a00004 	mov	r0, r4
60301368:	eb0031d2 	bl	6030dab8 <__wrap__free_r>
6030136c:	e5943018 	ldr	r3, [r4, #24]
60301370:	e3530000 	cmp	r3, #0
60301374:	08bd8070 	popeq	{r4, r5, r6, pc}
60301378:	e5943028 	ldr	r3, [r4, #40]	; 0x28
6030137c:	e1a00004 	mov	r0, r4
60301380:	e12fff33 	blx	r3
60301384:	e59410d8 	ldr	r1, [r4, #216]	; 0xd8
60301388:	e3510000 	cmp	r1, #0
6030138c:	08bd8070 	popeq	{r4, r5, r6, pc}
60301390:	e1a00004 	mov	r0, r4
60301394:	e8bd4070 	pop	{r4, r5, r6, lr}
60301398:	eaffffa5 	b	60301234 <cleanup_glue>
6030139c:	e7911005 	ldr	r1, [r1, r5]
603013a0:	e3510000 	cmp	r1, #0
603013a4:	1a000007 	bne	603013c8 <_reclaim_reent+0x168>
603013a8:	e2855004 	add	r5, r5, #4
603013ac:	e5943024 	ldr	r3, [r4, #36]	; 0x24
603013b0:	e3550080 	cmp	r5, #128	; 0x80
603013b4:	e593100c 	ldr	r1, [r3, #12]
603013b8:	1afffff7 	bne	6030139c <_reclaim_reent+0x13c>
603013bc:	e1a00004 	mov	r0, r4
603013c0:	eb0031bc 	bl	6030dab8 <__wrap__free_r>
603013c4:	eaffffb2 	b	60301294 <_reclaim_reent+0x34>
603013c8:	e5916000 	ldr	r6, [r1]
603013cc:	e1a00004 	mov	r0, r4
603013d0:	eb0031b8 	bl	6030dab8 <__wrap__free_r>
603013d4:	e1a01006 	mov	r1, r6
603013d8:	eafffff0 	b	603013a0 <_reclaim_reent+0x140>
603013dc:	60316000 	.word	0x60316000

603013e0 <__sread>:
603013e0:	e92d4010 	push	{r4, lr}
603013e4:	e1a04001 	mov	r4, r1
603013e8:	e1d110fe 	ldrsh	r1, [r1, #14]
603013ec:	eb0008df 	bl	60303770 <_read_r>
603013f0:	e3500000 	cmp	r0, #0
603013f4:	a5943054 	ldrge	r3, [r4, #84]	; 0x54
603013f8:	b1d430bc 	ldrhlt	r3, [r4, #12]
603013fc:	a0833000 	addge	r3, r3, r0
60301400:	a5843054 	strge	r3, [r4, #84]	; 0x54
60301404:	b3c33a01 	biclt	r3, r3, #4096	; 0x1000
60301408:	b1c430bc 	strhlt	r3, [r4, #12]
6030140c:	e8bd8010 	pop	{r4, pc}

60301410 <__seofread>:
60301410:	e3a00000 	mov	r0, #0
60301414:	e12fff1e 	bx	lr

60301418 <__swrite>:
60301418:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
6030141c:	e1a07003 	mov	r7, r3
60301420:	e1d130bc 	ldrh	r3, [r1, #12]
60301424:	e1a05000 	mov	r5, r0
60301428:	e1a04001 	mov	r4, r1
6030142c:	e1a06002 	mov	r6, r2
60301430:	e3130c01 	tst	r3, #256	; 0x100
60301434:	0a000003 	beq	60301448 <__swrite+0x30>
60301438:	e1d110fe 	ldrsh	r1, [r1, #14]
6030143c:	e3a03002 	mov	r3, #2
60301440:	e3a02000 	mov	r2, #0
60301444:	eb00053a 	bl	60302934 <_lseek_r>
60301448:	e1d430bc 	ldrh	r3, [r4, #12]
6030144c:	e1a02006 	mov	r2, r6
60301450:	e1d410fe 	ldrsh	r1, [r4, #14]
60301454:	e1a00005 	mov	r0, r5
60301458:	e3c33a01 	bic	r3, r3, #4096	; 0x1000
6030145c:	e1c430bc 	strh	r3, [r4, #12]
60301460:	e1a03007 	mov	r3, r7
60301464:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
60301468:	ea000042 	b	60301578 <_write_r>

6030146c <__sseek>:
6030146c:	e92d4010 	push	{r4, lr}
60301470:	e1a04001 	mov	r4, r1
60301474:	e1d110fe 	ldrsh	r1, [r1, #14]
60301478:	eb00052d 	bl	60302934 <_lseek_r>
6030147c:	e3700001 	cmn	r0, #1
60301480:	e1d430bc 	ldrh	r3, [r4, #12]
60301484:	15840054 	strne	r0, [r4, #84]	; 0x54
60301488:	03c33a01 	biceq	r3, r3, #4096	; 0x1000
6030148c:	13833a01 	orrne	r3, r3, #4096	; 0x1000
60301490:	01c430bc 	strheq	r3, [r4, #12]
60301494:	11c430bc 	strhne	r3, [r4, #12]
60301498:	e8bd8010 	pop	{r4, pc}

6030149c <__sclose>:
6030149c:	e1d110fe 	ldrsh	r1, [r1, #14]
603014a0:	ea00005c 	b	60301618 <_close_r>

603014a4 <strncpy>:
603014a4:	e1803001 	orr	r3, r0, r1
603014a8:	e3520003 	cmp	r2, #3
603014ac:	e92d4070 	push	{r4, r5, r6, lr}
603014b0:	93a0e000 	movls	lr, #0
603014b4:	e7e13053 	ubfx	r3, r3, #0, #2
603014b8:	83a0e001 	movhi	lr, #1
603014bc:	e3530000 	cmp	r3, #0
603014c0:	13a0e000 	movne	lr, #0
603014c4:	e35e0000 	cmp	lr, #0
603014c8:	01a03000 	moveq	r3, r0
603014cc:	0a00000e 	beq	6030150c <strncpy+0x68>
603014d0:	e59f606c 	ldr	r6, [pc, #108]	; 60301544 <strncpy+0xa0>
603014d4:	e1a0c001 	mov	ip, r1
603014d8:	e59f5068 	ldr	r5, [pc, #104]	; 60301548 <strncpy+0xa4>
603014dc:	e1a03000 	mov	r3, r0
603014e0:	e1a0100c 	mov	r1, ip
603014e4:	e49c4004 	ldr	r4, [ip], #4
603014e8:	e084e006 	add	lr, r4, r6
603014ec:	e1cee004 	bic	lr, lr, r4
603014f0:	e11e0005 	tst	lr, r5
603014f4:	1a000004 	bne	6030150c <strncpy+0x68>
603014f8:	e2422004 	sub	r2, r2, #4
603014fc:	e1a0100c 	mov	r1, ip
60301500:	e3520003 	cmp	r2, #3
60301504:	e4834004 	str	r4, [r3], #4
60301508:	8afffff4 	bhi	603014e0 <strncpy+0x3c>
6030150c:	e2411001 	sub	r1, r1, #1
60301510:	e3520000 	cmp	r2, #0
60301514:	0a000004 	beq	6030152c <strncpy+0x88>
60301518:	e5f1c001 	ldrb	ip, [r1, #1]!
6030151c:	e2422001 	sub	r2, r2, #1
60301520:	e4c3c001 	strb	ip, [r3], #1
60301524:	e35c0000 	cmp	ip, #0
60301528:	1afffff8 	bne	60301510 <strncpy+0x6c>
6030152c:	e0832002 	add	r2, r3, r2
60301530:	e3a01000 	mov	r1, #0
60301534:	e1520003 	cmp	r2, r3
60301538:	08bd8070 	popeq	{r4, r5, r6, pc}
6030153c:	e4c31001 	strb	r1, [r3], #1
60301540:	eafffffb 	b	60301534 <strncpy+0x90>
60301544:	fefefeff 	.word	0xfefefeff
60301548:	80808080 	.word	0x80808080

6030154c <vprintf>:
6030154c:	e1a03001 	mov	r3, r1
60301550:	e59f100c 	ldr	r1, [pc, #12]	; 60301564 <vprintf+0x18>
60301554:	e1a02000 	mov	r2, r0
60301558:	e5910000 	ldr	r0, [r1]
6030155c:	e5901008 	ldr	r1, [r0, #8]
60301560:	ea000cce 	b	603048a0 <_vfprintf_r>
60301564:	60316000 	.word	0x60316000

60301568 <_vprintf_r>:
60301568:	e1a03002 	mov	r3, r2
6030156c:	e1a02001 	mov	r2, r1
60301570:	e5901008 	ldr	r1, [r0, #8]
60301574:	ea000cc9 	b	603048a0 <_vfprintf_r>

60301578 <_write_r>:
60301578:	e92d4070 	push	{r4, r5, r6, lr}
6030157c:	e1a04000 	mov	r4, r0
60301580:	e59f502c 	ldr	r5, [pc, #44]	; 603015b4 <_write_r+0x3c>
60301584:	e1a00001 	mov	r0, r1
60301588:	e1a01002 	mov	r1, r2
6030158c:	e3a02000 	mov	r2, #0
60301590:	e5852000 	str	r2, [r5]
60301594:	e1a02003 	mov	r2, r3
60301598:	eb00239f 	bl	6030a41c <_write>
6030159c:	e3700001 	cmn	r0, #1
603015a0:	18bd8070 	popne	{r4, r5, r6, pc}
603015a4:	e5953000 	ldr	r3, [r5]
603015a8:	e3530000 	cmp	r3, #0
603015ac:	15843000 	strne	r3, [r4]
603015b0:	e8bd8070 	pop	{r4, r5, r6, pc}
603015b4:	60323160 	.word	0x60323160

603015b8 <__assert_func>:
603015b8:	e92d401f 	push	{r0, r1, r2, r3, r4, lr}
603015bc:	e1a0c002 	mov	ip, r2
603015c0:	e1a02003 	mov	r2, r3
603015c4:	e59f302c 	ldr	r3, [pc, #44]	; 603015f8 <__assert_func+0x40>
603015c8:	e35c0000 	cmp	ip, #0
603015cc:	e1a0e000 	mov	lr, r0
603015d0:	e5933000 	ldr	r3, [r3]
603015d4:	e593000c 	ldr	r0, [r3, #12]
603015d8:	059f301c 	ldreq	r3, [pc, #28]	; 603015fc <__assert_func+0x44>
603015dc:	159f301c 	ldrne	r3, [pc, #28]	; 60301600 <__assert_func+0x48>
603015e0:	01a0c003 	moveq	ip, r3
603015e4:	e88d100a 	stm	sp, {r1, r3, ip}
603015e8:	e59f1014 	ldr	r1, [pc, #20]	; 60301604 <__assert_func+0x4c>
603015ec:	e1a0300e 	mov	r3, lr
603015f0:	eb0004b9 	bl	603028dc <fiprintf>
603015f4:	eb0014f4 	bl	603069cc <abort>
603015f8:	60316000 	.word	0x60316000
603015fc:	60315b4f 	.word	0x60315b4f
60301600:	60315b14 	.word	0x60315b14
60301604:	60315b21 	.word	0x60315b21

60301608 <__assert>:
60301608:	e1a03002 	mov	r3, r2
6030160c:	e92d4010 	push	{r4, lr}
60301610:	e3a02000 	mov	r2, #0
60301614:	ebffffe7 	bl	603015b8 <__assert_func>

60301618 <_close_r>:
60301618:	e92d4070 	push	{r4, r5, r6, lr}
6030161c:	e1a04000 	mov	r4, r0
60301620:	e59f5024 	ldr	r5, [pc, #36]	; 6030164c <_close_r+0x34>
60301624:	e1a00001 	mov	r0, r1
60301628:	e3a03000 	mov	r3, #0
6030162c:	e5853000 	str	r3, [r5]
60301630:	eb002385 	bl	6030a44c <_close>
60301634:	e3700001 	cmn	r0, #1
60301638:	18bd8070 	popne	{r4, r5, r6, pc}
6030163c:	e5953000 	ldr	r3, [r5]
60301640:	e3530000 	cmp	r3, #0
60301644:	15843000 	strne	r3, [r4]
60301648:	e8bd8070 	pop	{r4, r5, r6, pc}
6030164c:	60323160 	.word	0x60323160

60301650 <quorem>:
60301650:	e5903010 	ldr	r3, [r0, #16]
60301654:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
60301658:	e5914010 	ldr	r4, [r1, #16]
6030165c:	e24dd014 	sub	sp, sp, #20
60301660:	e1530004 	cmp	r3, r4
60301664:	b3a00000 	movlt	r0, #0
60301668:	ba00004d 	blt	603017a4 <quorem+0x154>
6030166c:	e2444001 	sub	r4, r4, #1
60301670:	e2806014 	add	r6, r0, #20
60301674:	e2818014 	add	r8, r1, #20
60301678:	e1a0a001 	mov	sl, r1
6030167c:	e0863104 	add	r3, r6, r4, lsl #2
60301680:	e58d3004 	str	r3, [sp, #4]
60301684:	e7963104 	ldr	r3, [r6, r4, lsl #2]
60301688:	e1a07000 	mov	r7, r0
6030168c:	e7981104 	ldr	r1, [r8, r4, lsl #2]
60301690:	e1a0b104 	lsl	fp, r4, #2
60301694:	e1a00003 	mov	r0, r3
60301698:	e58d3008 	str	r3, [sp, #8]
6030169c:	e2811001 	add	r1, r1, #1
603016a0:	e58d100c 	str	r1, [sp, #12]
603016a4:	eb0017fe 	bl	603076a4 <__udivsi3>
603016a8:	e59d3008 	ldr	r3, [sp, #8]
603016ac:	e59d100c 	ldr	r1, [sp, #12]
603016b0:	e0889104 	add	r9, r8, r4, lsl #2
603016b4:	e1a05000 	mov	r5, r0
603016b8:	e1530001 	cmp	r3, r1
603016bc:	3a00001c 	bcc	60301734 <quorem+0xe4>
603016c0:	e3a0c000 	mov	ip, #0
603016c4:	e1a01008 	mov	r1, r8
603016c8:	e1a00006 	mov	r0, r6
603016cc:	e1a0e00c 	mov	lr, ip
603016d0:	e4912004 	ldr	r2, [r1], #4
603016d4:	e1590001 	cmp	r9, r1
603016d8:	e6ff3072 	uxth	r3, r2
603016dc:	e1a02822 	lsr	r2, r2, #16
603016e0:	e023c395 	mla	r3, r5, r3, ip
603016e4:	e1a0c823 	lsr	ip, r3, #16
603016e8:	e6ff3073 	uxth	r3, r3
603016ec:	e04e3003 	sub	r3, lr, r3
603016f0:	e590e000 	ldr	lr, [r0]
603016f4:	e022c295 	mla	r2, r5, r2, ip
603016f8:	e6f3307e 	uxtah	r3, r3, lr
603016fc:	e1a0c822 	lsr	ip, r2, #16
60301700:	e6ff2072 	uxth	r2, r2
60301704:	e062282e 	rsb	r2, r2, lr, lsr #16
60301708:	e0822843 	add	r2, r2, r3, asr #16
6030170c:	e6ff3073 	uxth	r3, r3
60301710:	e1833802 	orr	r3, r3, r2, lsl #16
60301714:	e1a0e842 	asr	lr, r2, #16
60301718:	e4803004 	str	r3, [r0], #4
6030171c:	2affffeb 	bcs	603016d0 <quorem+0x80>
60301720:	e796300b 	ldr	r3, [r6, fp]
60301724:	e3530000 	cmp	r3, #0
60301728:	059d3004 	ldreq	r3, [sp, #4]
6030172c:	02433004 	subeq	r3, r3, #4
60301730:	0a000022 	beq	603017c0 <quorem+0x170>
60301734:	e1a0100a 	mov	r1, sl
60301738:	e1a00007 	mov	r0, r7
6030173c:	eb0006aa 	bl	603031ec <__mcmp>
60301740:	e3500000 	cmp	r0, #0
60301744:	ba000015 	blt	603017a0 <quorem+0x150>
60301748:	e2855001 	add	r5, r5, #1
6030174c:	e1a00006 	mov	r0, r6
60301750:	e3a0c000 	mov	ip, #0
60301754:	e4981004 	ldr	r1, [r8], #4
60301758:	e590e000 	ldr	lr, [r0]
6030175c:	e1590008 	cmp	r9, r8
60301760:	e6ff3071 	uxth	r3, r1
60301764:	e1a02821 	lsr	r2, r1, #16
60301768:	e04c3003 	sub	r3, ip, r3
6030176c:	e062282e 	rsb	r2, r2, lr, lsr #16
60301770:	e6f3307e 	uxtah	r3, r3, lr
60301774:	e0822843 	add	r2, r2, r3, asr #16
60301778:	e6ff3073 	uxth	r3, r3
6030177c:	e1833802 	orr	r3, r3, r2, lsl #16
60301780:	e1a0c842 	asr	ip, r2, #16
60301784:	e4803004 	str	r3, [r0], #4
60301788:	2afffff1 	bcs	60301754 <quorem+0x104>
6030178c:	e7962104 	ldr	r2, [r6, r4, lsl #2]
60301790:	e0863104 	add	r3, r6, r4, lsl #2
60301794:	e3520000 	cmp	r2, #0
60301798:	02433004 	subeq	r3, r3, #4
6030179c:	0a000011 	beq	603017e8 <quorem+0x198>
603017a0:	e1a00005 	mov	r0, r5
603017a4:	e28dd014 	add	sp, sp, #20
603017a8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
603017ac:	e5922000 	ldr	r2, [r2]
603017b0:	e2433004 	sub	r3, r3, #4
603017b4:	e3520000 	cmp	r2, #0
603017b8:	1a000003 	bne	603017cc <quorem+0x17c>
603017bc:	e2444001 	sub	r4, r4, #1
603017c0:	e1a02003 	mov	r2, r3
603017c4:	e1560003 	cmp	r6, r3
603017c8:	3afffff7 	bcc	603017ac <quorem+0x15c>
603017cc:	e5874010 	str	r4, [r7, #16]
603017d0:	eaffffd7 	b	60301734 <quorem+0xe4>
603017d4:	e5922000 	ldr	r2, [r2]
603017d8:	e2433004 	sub	r3, r3, #4
603017dc:	e3520000 	cmp	r2, #0
603017e0:	1a000003 	bne	603017f4 <quorem+0x1a4>
603017e4:	e2444001 	sub	r4, r4, #1
603017e8:	e1a02003 	mov	r2, r3
603017ec:	e1560003 	cmp	r6, r3
603017f0:	3afffff7 	bcc	603017d4 <quorem+0x184>
603017f4:	e5874010 	str	r4, [r7, #16]
603017f8:	eaffffe8 	b	603017a0 <quorem+0x150>

603017fc <_dtoa_r>:
603017fc:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
60301800:	ec576b10 	vmov	r6, r7, d0
60301804:	e5908024 	ldr	r8, [r0, #36]	; 0x24
60301808:	ed2d8b02 	vpush	{d8}
6030180c:	e24dd044 	sub	sp, sp, #68	; 0x44
60301810:	e1a05000 	mov	r5, r0
60301814:	e3580000 	cmp	r8, #0
60301818:	e59d4070 	ldr	r4, [sp, #112]	; 0x70
6030181c:	e58d101c 	str	r1, [sp, #28]
60301820:	e58d2024 	str	r2, [sp, #36]	; 0x24
60301824:	e58d3030 	str	r3, [sp, #48]	; 0x30
60301828:	ed8d0b02 	vstr	d0, [sp, #8]
6030182c:	1a00000b 	bne	60301860 <_dtoa_r+0x64>
60301830:	e3a00010 	mov	r0, #16
60301834:	eb003099 	bl	6030daa0 <__wrap_malloc>
60301838:	e3500000 	cmp	r0, #0
6030183c:	e1a02000 	mov	r2, r0
60301840:	03a010ea 	moveq	r1, #234	; 0xea
60301844:	e5850024 	str	r0, [r5, #36]	; 0x24
60301848:	059f33c0 	ldreq	r3, [pc, #960]	; 60301c10 <_dtoa_r+0x414>
6030184c:	0a0000d3 	beq	60301ba0 <_dtoa_r+0x3a4>
60301850:	e5808004 	str	r8, [r0, #4]
60301854:	e5808008 	str	r8, [r0, #8]
60301858:	e5808000 	str	r8, [r0]
6030185c:	e580800c 	str	r8, [r0, #12]
60301860:	e5953024 	ldr	r3, [r5, #36]	; 0x24
60301864:	e5931000 	ldr	r1, [r3]
60301868:	e3510000 	cmp	r1, #0
6030186c:	0a000009 	beq	60301898 <_dtoa_r+0x9c>
60301870:	e5932004 	ldr	r2, [r3, #4]
60301874:	e3a03001 	mov	r3, #1
60301878:	e5812004 	str	r2, [r1, #4]
6030187c:	e1a00005 	mov	r0, r5
60301880:	e1a03213 	lsl	r3, r3, r2
60301884:	e5813008 	str	r3, [r1, #8]
60301888:	eb000472 	bl	60302a58 <_Bfree>
6030188c:	e5953024 	ldr	r3, [r5, #36]	; 0x24
60301890:	e3a02000 	mov	r2, #0
60301894:	e5832000 	str	r2, [r3]
60301898:	e2573000 	subs	r3, r7, #0
6030189c:	b3c33102 	biclt	r3, r3, #-2147483648	; 0x80000000
603018a0:	b58d300c 	strlt	r3, [sp, #12]
603018a4:	a3a03000 	movge	r3, #0
603018a8:	b3a02001 	movlt	r2, #1
603018ac:	a5843000 	strge	r3, [r4]
603018b0:	b5842000 	strlt	r2, [r4]
603018b4:	e59f3358 	ldr	r3, [pc, #856]	; 60301c14 <_dtoa_r+0x418>
603018b8:	e59d400c 	ldr	r4, [sp, #12]
603018bc:	e1d33004 	bics	r3, r3, r4
603018c0:	1a000011 	bne	6030190c <_dtoa_r+0x110>
603018c4:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
603018c8:	e302370f 	movw	r3, #9999	; 0x270f
603018cc:	e5823000 	str	r3, [r2]
603018d0:	e7f33054 	ubfx	r3, r4, #0, #20
603018d4:	e1933006 	orrs	r3, r3, r6
603018d8:	0a00039c 	beq	60302750 <_dtoa_r+0xf54>
603018dc:	e59d3074 	ldr	r3, [sp, #116]	; 0x74
603018e0:	e3530000 	cmp	r3, #0
603018e4:	e59f332c 	ldr	r3, [pc, #812]	; 60301c18 <_dtoa_r+0x41c>
603018e8:	e58d3004 	str	r3, [sp, #4]
603018ec:	0a000002 	beq	603018fc <_dtoa_r+0x100>
603018f0:	e2833003 	add	r3, r3, #3
603018f4:	e59d2074 	ldr	r2, [sp, #116]	; 0x74
603018f8:	e5823000 	str	r3, [r2]
603018fc:	e59d0004 	ldr	r0, [sp, #4]
60301900:	e28dd044 	add	sp, sp, #68	; 0x44
60301904:	ecbd8b02 	vpop	{d8}
60301908:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030190c:	ed9d8b02 	vldr	d8, [sp, #8]
60301910:	eeb58b40 	vcmp.f64	d8, #0.0
60301914:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60301918:	1a00000a 	bne	60301948 <_dtoa_r+0x14c>
6030191c:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
60301920:	e3a03001 	mov	r3, #1
60301924:	e5823000 	str	r3, [r2]
60301928:	e59d3074 	ldr	r3, [sp, #116]	; 0x74
6030192c:	e3530000 	cmp	r3, #0
60301930:	059f32e4 	ldreq	r3, [pc, #740]	; 60301c1c <_dtoa_r+0x420>
60301934:	159f02e4 	ldrne	r0, [pc, #740]	; 60301c20 <_dtoa_r+0x424>
60301938:	15830000 	strne	r0, [r3]
6030193c:	12403001 	subne	r3, r0, #1
60301940:	e58d3004 	str	r3, [sp, #4]
60301944:	eaffffec 	b	603018fc <_dtoa_r+0x100>
60301948:	e28d103c 	add	r1, sp, #60	; 0x3c
6030194c:	eeb00b48 	vmov.f64	d0, d8
60301950:	e28d2038 	add	r2, sp, #56	; 0x38
60301954:	e1a00005 	mov	r0, r5
60301958:	eb0006e2 	bl	603034e8 <__d2b>
6030195c:	e7ea1a54 	ubfx	r1, r4, #20, #11
60301960:	e1a0b000 	mov	fp, r0
60301964:	e3510000 	cmp	r1, #0
60301968:	e59d0038 	ldr	r0, [sp, #56]	; 0x38
6030196c:	0a000047 	beq	60301a90 <_dtoa_r+0x294>
60301970:	ee18ca90 	vmov	ip, s17
60301974:	ec532b18 	vmov	r2, r3, d8
60301978:	e2411fff 	sub	r1, r1, #1020	; 0x3fc
6030197c:	e3a06000 	mov	r6, #0
60301980:	e2411003 	sub	r1, r1, #3
60301984:	e7f3c05c 	ubfx	ip, ip, #0, #20
60301988:	e38c35ff 	orr	r3, ip, #1069547520	; 0x3fc00000
6030198c:	e3833603 	orr	r3, r3, #3145728	; 0x300000
60301990:	ec432b31 	vmov	d17, r2, r3
60301994:	eef70b08 	vmov.f64	d16, #120	; 0x3fc00000  1.5
60301998:	eddf2b96 	vldr	d18, [pc, #600]	; 60301bf8 <_dtoa_r+0x3fc>
6030199c:	ee071a90 	vmov	s15, r1
603019a0:	ee710be0 	vsub.f64	d16, d17, d16
603019a4:	eddf1b95 	vldr	d17, [pc, #596]	; 60301c00 <_dtoa_r+0x404>
603019a8:	eddf3b96 	vldr	d19, [pc, #600]	; 60301c08 <_dtoa_r+0x40c>
603019ac:	ee401ba2 	vmla.f64	d17, d16, d18
603019b0:	eef82be7 	vcvt.f64.s32	d18, s15
603019b4:	eef00b61 	vmov.f64	d16, d17
603019b8:	ee420ba3 	vmla.f64	d16, d18, d19
603019bc:	eef50bc0 	vcmpe.f64	d16, #0.0
603019c0:	eefd7be0 	vcvt.s32.f64	s15, d16
603019c4:	eef1fa10 	vmrs	APSR_nzcv, fpscr
603019c8:	ee17aa90 	vmov	sl, s15
603019cc:	5a000003 	bpl	603019e0 <_dtoa_r+0x1e4>
603019d0:	eef81be7 	vcvt.f64.s32	d17, s15
603019d4:	eef41b60 	vcmp.f64	d17, d16
603019d8:	eef1fa10 	vmrs	APSR_nzcv, fpscr
603019dc:	124aa001 	subne	sl, sl, #1
603019e0:	e35a0016 	cmp	sl, #22
603019e4:	83a03001 	movhi	r3, #1
603019e8:	8a000006 	bhi	60301a08 <_dtoa_r+0x20c>
603019ec:	e59f3238 	ldr	r3, [pc, #568]	; 60301c2c <_dtoa_r+0x430>
603019f0:	e083318a 	add	r3, r3, sl, lsl #3
603019f4:	edd30b00 	vldr	d16, [r3]
603019f8:	e3a03000 	mov	r3, #0
603019fc:	eeb48be0 	vcmpe.f64	d8, d16
60301a00:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60301a04:	424aa001 	submi	sl, sl, #1
60301a08:	e0401001 	sub	r1, r0, r1
60301a0c:	e58d302c 	str	r3, [sp, #44]	; 0x2c
60301a10:	e2513001 	subs	r3, r1, #1
60301a14:	e58d3014 	str	r3, [sp, #20]
60301a18:	42613001 	rsbmi	r3, r1, #1
60301a1c:	53a03000 	movpl	r3, #0
60301a20:	458d3010 	strmi	r3, [sp, #16]
60301a24:	43a03000 	movmi	r3, #0
60301a28:	558d3010 	strpl	r3, [sp, #16]
60301a2c:	458d3014 	strmi	r3, [sp, #20]
60301a30:	e35a0000 	cmp	sl, #0
60301a34:	ba000029 	blt	60301ae0 <_dtoa_r+0x2e4>
60301a38:	e59d3014 	ldr	r3, [sp, #20]
60301a3c:	e3a09000 	mov	r9, #0
60301a40:	e58da028 	str	sl, [sp, #40]	; 0x28
60301a44:	e083300a 	add	r3, r3, sl
60301a48:	e58d3014 	str	r3, [sp, #20]
60301a4c:	e59d301c 	ldr	r3, [sp, #28]
60301a50:	e3530009 	cmp	r3, #9
60301a54:	8a000055 	bhi	60301bb0 <_dtoa_r+0x3b4>
60301a58:	e3530005 	cmp	r3, #5
60301a5c:	c2433004 	subgt	r3, r3, #4
60301a60:	c58d301c 	strgt	r3, [sp, #28]
60301a64:	c3a04000 	movgt	r4, #0
60301a68:	d3a04001 	movle	r4, #1
60301a6c:	e59d301c 	ldr	r3, [sp, #28]
60301a70:	e2433002 	sub	r3, r3, #2
60301a74:	e3530003 	cmp	r3, #3
60301a78:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
60301a7c:	ea000055 	b	60301bd8 <_dtoa_r+0x3dc>
60301a80:	60301afc 	.word	0x60301afc
60301a84:	60301b3c 	.word	0x60301b3c
60301a88:	60301b34 	.word	0x60301b34
60301a8c:	60301ba8 	.word	0x60301ba8
60301a90:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
60301a94:	e0801001 	add	r1, r0, r1
60301a98:	e2813e43 	add	r3, r1, #1072	; 0x430
60301a9c:	e2833002 	add	r3, r3, #2
60301aa0:	e3530020 	cmp	r3, #32
60301aa4:	c2812e41 	addgt	r2, r1, #1040	; 0x410
60301aa8:	c2633040 	rsbgt	r3, r3, #64	; 0x40
60301aac:	c2822002 	addgt	r2, r2, #2
60301ab0:	d2633020 	rsble	r3, r3, #32
60301ab4:	e2411001 	sub	r1, r1, #1
60301ab8:	c1a06236 	lsrgt	r6, r6, r2
60301abc:	c1863314 	orrgt	r3, r6, r4, lsl r3
60301ac0:	d1a03316 	lslle	r3, r6, r3
60301ac4:	ee073a90 	vmov	s15, r3
60301ac8:	e3a06001 	mov	r6, #1
60301acc:	eeb87b67 	vcvt.f64.u32	d7, s15
60301ad0:	ee17ca90 	vmov	ip, s15
60301ad4:	ec532b17 	vmov	r2, r3, d7
60301ad8:	e24c361f 	sub	r3, ip, #32505856	; 0x1f00000
60301adc:	eaffffab 	b	60301990 <_dtoa_r+0x194>
60301ae0:	e59d3010 	ldr	r3, [sp, #16]
60301ae4:	e26a9000 	rsb	r9, sl, #0
60301ae8:	e043300a 	sub	r3, r3, sl
60301aec:	e58d3010 	str	r3, [sp, #16]
60301af0:	e3a03000 	mov	r3, #0
60301af4:	e58d3028 	str	r3, [sp, #40]	; 0x28
60301af8:	eaffffd3 	b	60301a4c <_dtoa_r+0x250>
60301afc:	e3a03000 	mov	r3, #0
60301b00:	e58d3018 	str	r3, [sp, #24]
60301b04:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
60301b08:	e3530000 	cmp	r3, #0
60301b0c:	c59d3024 	ldrgt	r3, [sp, #36]	; 0x24
60301b10:	c58d3020 	strgt	r3, [sp, #32]
60301b14:	c1a08003 	movgt	r8, r3
60301b18:	ca000010 	bgt	60301b60 <_dtoa_r+0x364>
60301b1c:	e3a03001 	mov	r3, #1
60301b20:	e58d3020 	str	r3, [sp, #32]
60301b24:	e1a08003 	mov	r8, r3
60301b28:	e1a02003 	mov	r2, r3
60301b2c:	e58d2024 	str	r2, [sp, #36]	; 0x24
60301b30:	ea00000a 	b	60301b60 <_dtoa_r+0x364>
60301b34:	e3a03001 	mov	r3, #1
60301b38:	eafffff0 	b	60301b00 <_dtoa_r+0x304>
60301b3c:	e3a03000 	mov	r3, #0
60301b40:	e58d3018 	str	r3, [sp, #24]
60301b44:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
60301b48:	e08a3003 	add	r3, sl, r3
60301b4c:	e58d3020 	str	r3, [sp, #32]
60301b50:	e2838001 	add	r8, r3, #1
60301b54:	e3580001 	cmp	r8, #1
60301b58:	a1a03008 	movge	r3, r8
60301b5c:	b3a03001 	movlt	r3, #1
60301b60:	e5950024 	ldr	r0, [r5, #36]	; 0x24
60301b64:	e3a02000 	mov	r2, #0
60301b68:	e5802004 	str	r2, [r0, #4]
60301b6c:	e3a02004 	mov	r2, #4
60301b70:	e282c014 	add	ip, r2, #20
60301b74:	e5901004 	ldr	r1, [r0, #4]
60301b78:	e15c0003 	cmp	ip, r3
60301b7c:	9a000018 	bls	60301be4 <_dtoa_r+0x3e8>
60301b80:	e1a00005 	mov	r0, r5
60301b84:	eb00037a 	bl	60302974 <_Balloc>
60301b88:	e2503000 	subs	r3, r0, #0
60301b8c:	e58d3004 	str	r3, [sp, #4]
60301b90:	1a000028 	bne	60301c38 <_dtoa_r+0x43c>
60301b94:	e59f3094 	ldr	r3, [pc, #148]	; 60301c30 <_dtoa_r+0x434>
60301b98:	e1a02000 	mov	r2, r0
60301b9c:	e30011aa 	movw	r1, #426	; 0x1aa
60301ba0:	e59f007c 	ldr	r0, [pc, #124]	; 60301c24 <_dtoa_r+0x428>
60301ba4:	ebfffe83 	bl	603015b8 <__assert_func>
60301ba8:	e3a03001 	mov	r3, #1
60301bac:	eaffffe3 	b	60301b40 <_dtoa_r+0x344>
60301bb0:	e3a04001 	mov	r4, #1
60301bb4:	e3a03000 	mov	r3, #0
60301bb8:	e58d4018 	str	r4, [sp, #24]
60301bbc:	e58d301c 	str	r3, [sp, #28]
60301bc0:	e3e03000 	mvn	r3, #0
60301bc4:	e3a02000 	mov	r2, #0
60301bc8:	e1a08003 	mov	r8, r3
60301bcc:	e58d3020 	str	r3, [sp, #32]
60301bd0:	e3a03012 	mov	r3, #18
60301bd4:	eaffffd4 	b	60301b2c <_dtoa_r+0x330>
60301bd8:	e3a03001 	mov	r3, #1
60301bdc:	e58d3018 	str	r3, [sp, #24]
60301be0:	eafffff6 	b	60301bc0 <_dtoa_r+0x3c4>
60301be4:	e2811001 	add	r1, r1, #1
60301be8:	e1a02082 	lsl	r2, r2, #1
60301bec:	e5801004 	str	r1, [r0, #4]
60301bf0:	eaffffde 	b	60301b70 <_dtoa_r+0x374>
60301bf4:	e320f000 	nop	{0}
60301bf8:	636f4361 	.word	0x636f4361
60301bfc:	3fd287a7 	.word	0x3fd287a7
60301c00:	8b60c8b3 	.word	0x8b60c8b3
60301c04:	3fc68a28 	.word	0x3fc68a28
60301c08:	509f79fb 	.word	0x509f79fb
60301c0c:	3fd34413 	.word	0x3fd34413
60301c10:	60315b5f 	.word	0x60315b5f
60301c14:	7ff00000 	.word	0x7ff00000
60301c18:	60315b59 	.word	0x60315b59
60301c1c:	60315b5d 	.word	0x60315b5d
60301c20:	60315b5e 	.word	0x60315b5e
60301c24:	60315b76 	.word	0x60315b76
60301c28:	60314088 	.word	0x60314088
60301c2c:	60313f98 	.word	0x60313f98
60301c30:	60315bbd 	.word	0x60315bbd
60301c34:	60315b50 	.word	0x60315b50
60301c38:	e5953024 	ldr	r3, [r5, #36]	; 0x24
60301c3c:	e358000e 	cmp	r8, #14
60301c40:	83a04000 	movhi	r4, #0
60301c44:	92044001 	andls	r4, r4, #1
60301c48:	e59d2004 	ldr	r2, [sp, #4]
60301c4c:	e3540000 	cmp	r4, #0
60301c50:	e5832000 	str	r2, [r3]
60301c54:	0a00003c 	beq	60301d4c <_dtoa_r+0x550>
60301c58:	e35a0000 	cmp	sl, #0
60301c5c:	da000063 	ble	60301df0 <_dtoa_r+0x5f4>
60301c60:	e31a0c01 	tst	sl, #256	; 0x100
60301c64:	e51f2040 	ldr	r2, [pc, #-64]	; 60301c2c <_dtoa_r+0x430>
60301c68:	e20a300f 	and	r3, sl, #15
60301c6c:	e51f104c 	ldr	r1, [pc, #-76]	; 60301c28 <_dtoa_r+0x42c>
60301c70:	e0823183 	add	r3, r2, r3, lsl #3
60301c74:	151f2054 	ldrne	r2, [pc, #-84]	; 60301c28 <_dtoa_r+0x42c>
60301c78:	03a02002 	moveq	r2, #2
60301c7c:	edd30b00 	vldr	d16, [r3]
60301c80:	e1a0324a 	asr	r3, sl, #4
60301c84:	1dd21b08 	vldrne	d17, [r2, #32]
60301c88:	1203300f 	andne	r3, r3, #15
60301c8c:	13a02003 	movne	r2, #3
60301c90:	1ec81b21 	vdivne.f64	d17, d8, d17
60301c94:	1dcd1b02 	vstrne	d17, [sp, #8]
60301c98:	e3530000 	cmp	r3, #0
60301c9c:	1a00004c 	bne	60301dd4 <_dtoa_r+0x5d8>
60301ca0:	eddd1b02 	vldr	d17, [sp, #8]
60301ca4:	eec10ba0 	vdiv.f64	d16, d17, d16
60301ca8:	edcd0b02 	vstr	d16, [sp, #8]
60301cac:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
60301cb0:	e3530000 	cmp	r3, #0
60301cb4:	0a000067 	beq	60301e58 <_dtoa_r+0x65c>
60301cb8:	eddd0b02 	vldr	d16, [sp, #8]
60301cbc:	eef71b00 	vmov.f64	d17, #112	; 0x3f800000  1.0
60301cc0:	eef40be1 	vcmpe.f64	d16, d17
60301cc4:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60301cc8:	5a000062 	bpl	60301e58 <_dtoa_r+0x65c>
60301ccc:	e3580000 	cmp	r8, #0
60301cd0:	0a000060 	beq	60301e58 <_dtoa_r+0x65c>
60301cd4:	e59d3020 	ldr	r3, [sp, #32]
60301cd8:	e3530000 	cmp	r3, #0
60301cdc:	da000019 	ble	60301d48 <_dtoa_r+0x54c>
60301ce0:	eef21b04 	vmov.f64	d17, #36	; 0x41200000  10.0
60301ce4:	e24a1001 	sub	r1, sl, #1
60301ce8:	e2822001 	add	r2, r2, #1
60301cec:	e1a00003 	mov	r0, r3
60301cf0:	ee600ba1 	vmul.f64	d16, d16, d17
60301cf4:	edcd0b02 	vstr	d16, [sp, #8]
60301cf8:	ee072a90 	vmov	s15, r2
60301cfc:	eddd0b02 	vldr	d16, [sp, #8]
60301d00:	e3500000 	cmp	r0, #0
60301d04:	eef81be7 	vcvt.f64.s32	d17, s15
60301d08:	eeb17b0c 	vmov.f64	d7, #28	; 0x40e00000  7.0
60301d0c:	ee017ba0 	vmla.f64	d7, d17, d16
60301d10:	ee17ca90 	vmov	ip, s15
60301d14:	ec532b17 	vmov	r2, r3, d7
60301d18:	e24c350d 	sub	r3, ip, #54525952	; 0x3400000
60301d1c:	1a000050 	bne	60301e64 <_dtoa_r+0x668>
60301d20:	eef11b04 	vmov.f64	d17, #20	; 0x40a00000  5.0
60301d24:	ee700be1 	vsub.f64	d16, d16, d17
60301d28:	ec432b31 	vmov	d17, r2, r3
60301d2c:	eef40be1 	vcmpe.f64	d16, d17
60301d30:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60301d34:	ca0001ab 	bgt	603023e8 <_dtoa_r+0xbec>
60301d38:	eef11b61 	vneg.f64	d17, d17
60301d3c:	eef40be1 	vcmpe.f64	d16, d17
60301d40:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60301d44:	4a0001a4 	bmi	603023dc <_dtoa_r+0xbe0>
60301d48:	ed8d8b02 	vstr	d8, [sp, #8]
60301d4c:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
60301d50:	e35a000e 	cmp	sl, #14
60301d54:	e1e04003 	mvn	r4, r3
60301d58:	e1a04fa4 	lsr	r4, r4, #31
60301d5c:	c3a04000 	movgt	r4, #0
60301d60:	e3540000 	cmp	r4, #0
60301d64:	0a0000b2 	beq	60302034 <_dtoa_r+0x838>
60301d68:	e51f3144 	ldr	r3, [pc, #-324]	; 60301c2c <_dtoa_r+0x430>
60301d6c:	e3580000 	cmp	r8, #0
60301d70:	e59d2024 	ldr	r2, [sp, #36]	; 0x24
60301d74:	e083318a 	add	r3, r3, sl, lsl #3
60301d78:	edd31b00 	vldr	d17, [r3]
60301d7c:	c3a03000 	movgt	r3, #0
60301d80:	d3a03001 	movle	r3, #1
60301d84:	e0133fa2 	ands	r3, r3, r2, lsr #31
60301d88:	059d7004 	ldreq	r7, [sp, #4]
60301d8c:	0ef23b04 	vmoveq.f64	d19, #36	; 0x41200000  10.0
60301d90:	0ddd0b02 	vldreq	d16, [sp, #8]
60301d94:	0a000086 	beq	60301fb4 <_dtoa_r+0x7b8>
60301d98:	e3580000 	cmp	r8, #0
60301d9c:	1a00018e 	bne	603023dc <_dtoa_r+0xbe0>
60301da0:	eef10b04 	vmov.f64	d16, #20	; 0x40a00000  5.0
60301da4:	e1a04008 	mov	r4, r8
60301da8:	e1a06008 	mov	r6, r8
60301dac:	ee611ba0 	vmul.f64	d17, d17, d16
60301db0:	eddd0b02 	vldr	d16, [sp, #8]
60301db4:	eef41be0 	vcmpe.f64	d17, d16
60301db8:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60301dbc:	aa00015d 	bge	60302338 <_dtoa_r+0xb3c>
60301dc0:	e59d7004 	ldr	r7, [sp, #4]
60301dc4:	e3a03031 	mov	r3, #49	; 0x31
60301dc8:	e28aa001 	add	sl, sl, #1
60301dcc:	e4c73001 	strb	r3, [r7], #1
60301dd0:	ea00015b 	b	60302344 <_dtoa_r+0xb48>
60301dd4:	e3130001 	tst	r3, #1
60301dd8:	e2811008 	add	r1, r1, #8
60301ddc:	12822001 	addne	r2, r2, #1
60301de0:	e1a030c3 	asr	r3, r3, #1
60301de4:	1d511b02 	vldrne	d17, [r1, #-8]
60301de8:	1e600ba1 	vmulne.f64	d16, d16, d17
60301dec:	eaffffa9 	b	60301c98 <_dtoa_r+0x49c>
60301df0:	03a02002 	moveq	r2, #2
60301df4:	0affffac 	beq	60301cac <_dtoa_r+0x4b0>
60301df8:	e26a3000 	rsb	r3, sl, #0
60301dfc:	e51f21d8 	ldr	r2, [pc, #-472]	; 60301c2c <_dtoa_r+0x430>
60301e00:	e203100f 	and	r1, r3, #15
60301e04:	e3a00000 	mov	r0, #0
60301e08:	e1a03243 	asr	r3, r3, #4
60301e0c:	e0822181 	add	r2, r2, r1, lsl #3
60301e10:	e51f11f0 	ldr	r1, [pc, #-496]	; 60301c28 <_dtoa_r+0x42c>
60301e14:	edd20b00 	vldr	d16, [r2]
60301e18:	e3a02002 	mov	r2, #2
60301e1c:	ee680b20 	vmul.f64	d16, d8, d16
60301e20:	edcd0b02 	vstr	d16, [sp, #8]
60301e24:	e3530000 	cmp	r3, #0
60301e28:	1a000002 	bne	60301e38 <_dtoa_r+0x63c>
60301e2c:	e3500000 	cmp	r0, #0
60301e30:	1dcd0b02 	vstrne	d16, [sp, #8]
60301e34:	eaffff9c 	b	60301cac <_dtoa_r+0x4b0>
60301e38:	e3130001 	tst	r3, #1
60301e3c:	e2811008 	add	r1, r1, #8
60301e40:	12822001 	addne	r2, r2, #1
60301e44:	11a00004 	movne	r0, r4
60301e48:	e1a030c3 	asr	r3, r3, #1
60301e4c:	1d511b02 	vldrne	d17, [r1, #-8]
60301e50:	1e600ba1 	vmulne.f64	d16, d16, d17
60301e54:	eafffff2 	b	60301e24 <_dtoa_r+0x628>
60301e58:	e1a0100a 	mov	r1, sl
60301e5c:	e1a00008 	mov	r0, r8
60301e60:	eaffffa4 	b	60301cf8 <_dtoa_r+0x4fc>
60301e64:	ec432b31 	vmov	d17, r2, r3
60301e68:	e51f3244 	ldr	r3, [pc, #-580]	; 60301c2c <_dtoa_r+0x430>
60301e6c:	e0833180 	add	r3, r3, r0, lsl #3
60301e70:	ed533b02 	vldr	d19, [r3, #-8]
60301e74:	e59d3018 	ldr	r3, [sp, #24]
60301e78:	e3530000 	cmp	r3, #0
60301e7c:	e59d3004 	ldr	r3, [sp, #4]
60301e80:	e0834000 	add	r4, r3, r0
60301e84:	0a000017 	beq	60301ee8 <_dtoa_r+0x6ec>
60301e88:	eef64b00 	vmov.f64	d20, #96	; 0x3f000000  0.5
60301e8c:	e1a07003 	mov	r7, r3
60301e90:	eec42ba3 	vdiv.f64	d18, d20, d19
60301e94:	eef73b00 	vmov.f64	d19, #112	; 0x3f800000  1.0
60301e98:	ee721be1 	vsub.f64	d17, d18, d17
60301e9c:	eef22b04 	vmov.f64	d18, #36	; 0x41200000  10.0
60301ea0:	eefd7be0 	vcvt.s32.f64	s15, d16
60301ea4:	eef84be7 	vcvt.f64.s32	d20, s15
60301ea8:	ee173a90 	vmov	r3, s15
60301eac:	ee700be4 	vsub.f64	d16, d16, d20
60301eb0:	e2833030 	add	r3, r3, #48	; 0x30
60301eb4:	e4c73001 	strb	r3, [r7], #1
60301eb8:	eef40be1 	vcmpe.f64	d16, d17
60301ebc:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60301ec0:	4a000022 	bmi	60301f50 <_dtoa_r+0x754>
60301ec4:	ee734be0 	vsub.f64	d20, d19, d16
60301ec8:	eef44be1 	vcmpe.f64	d20, d17
60301ecc:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60301ed0:	4a000023 	bmi	60301f64 <_dtoa_r+0x768>
60301ed4:	e1570004 	cmp	r7, r4
60301ed8:	0affff9a 	beq	60301d48 <_dtoa_r+0x54c>
60301edc:	ee611ba2 	vmul.f64	d17, d17, d18
60301ee0:	ee600ba2 	vmul.f64	d16, d16, d18
60301ee4:	eaffffed 	b	60301ea0 <_dtoa_r+0x6a4>
60301ee8:	ee611ba3 	vmul.f64	d17, d17, d19
60301eec:	e59d7004 	ldr	r7, [sp, #4]
60301ef0:	e1a02004 	mov	r2, r4
60301ef4:	eef22b04 	vmov.f64	d18, #36	; 0x41200000  10.0
60301ef8:	eefd7be0 	vcvt.s32.f64	s15, d16
60301efc:	ee173a90 	vmov	r3, s15
60301f00:	eef83be7 	vcvt.f64.s32	d19, s15
60301f04:	e2833030 	add	r3, r3, #48	; 0x30
60301f08:	e4c73001 	strb	r3, [r7], #1
60301f0c:	ee700be3 	vsub.f64	d16, d16, d19
60301f10:	e1570004 	cmp	r7, r4
60301f14:	1a00000f 	bne	60301f58 <_dtoa_r+0x75c>
60301f18:	eef62b00 	vmov.f64	d18, #96	; 0x3f000000  0.5
60301f1c:	ee713ba2 	vadd.f64	d19, d17, d18
60301f20:	eef40be3 	vcmpe.f64	d16, d19
60301f24:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60301f28:	ca00000d 	bgt	60301f64 <_dtoa_r+0x768>
60301f2c:	ee721be1 	vsub.f64	d17, d18, d17
60301f30:	eef40be1 	vcmpe.f64	d16, d17
60301f34:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60301f38:	5affff82 	bpl	60301d48 <_dtoa_r+0x54c>
60301f3c:	e1a07002 	mov	r7, r2
60301f40:	e2422001 	sub	r2, r2, #1
60301f44:	e5573001 	ldrb	r3, [r7, #-1]
60301f48:	e3530030 	cmp	r3, #48	; 0x30
60301f4c:	0afffffa 	beq	60301f3c <_dtoa_r+0x740>
60301f50:	e1a0a001 	mov	sl, r1
60301f54:	ea00002a 	b	60302004 <_dtoa_r+0x808>
60301f58:	ee600ba2 	vmul.f64	d16, d16, d18
60301f5c:	eaffffe5 	b	60301ef8 <_dtoa_r+0x6fc>
60301f60:	e1a0100a 	mov	r1, sl
60301f64:	e1a03007 	mov	r3, r7
60301f68:	e1a07003 	mov	r7, r3
60301f6c:	e5732001 	ldrb	r2, [r3, #-1]!
60301f70:	e3520039 	cmp	r2, #57	; 0x39
60301f74:	1a000006 	bne	60301f94 <_dtoa_r+0x798>
60301f78:	e59d2004 	ldr	r2, [sp, #4]
60301f7c:	e1520003 	cmp	r2, r3
60301f80:	1afffff8 	bne	60301f68 <_dtoa_r+0x76c>
60301f84:	e59d0004 	ldr	r0, [sp, #4]
60301f88:	e2811001 	add	r1, r1, #1
60301f8c:	e3a02030 	mov	r2, #48	; 0x30
60301f90:	e5c02000 	strb	r2, [r0]
60301f94:	e5d32000 	ldrb	r2, [r3]
60301f98:	e2822001 	add	r2, r2, #1
60301f9c:	e5c32000 	strb	r2, [r3]
60301fa0:	eaffffea 	b	60301f50 <_dtoa_r+0x754>
60301fa4:	ee600ba3 	vmul.f64	d16, d16, d19
60301fa8:	eef50b40 	vcmp.f64	d16, #0.0
60301fac:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60301fb0:	0a000013 	beq	60302004 <_dtoa_r+0x808>
60301fb4:	eec02ba1 	vdiv.f64	d18, d16, d17
60301fb8:	eefd7be2 	vcvt.s32.f64	s15, d18
60301fbc:	ee173a90 	vmov	r3, s15
60301fc0:	eef82be7 	vcvt.f64.s32	d18, s15
60301fc4:	e2832030 	add	r2, r3, #48	; 0x30
60301fc8:	e4c72001 	strb	r2, [r7], #1
60301fcc:	e59d2004 	ldr	r2, [sp, #4]
60301fd0:	ee420be1 	vmls.f64	d16, d18, d17
60301fd4:	e0472002 	sub	r2, r7, r2
60301fd8:	e1580002 	cmp	r8, r2
60301fdc:	1afffff0 	bne	60301fa4 <_dtoa_r+0x7a8>
60301fe0:	ee700ba0 	vadd.f64	d16, d16, d16
60301fe4:	eef40be1 	vcmpe.f64	d16, d17
60301fe8:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60301fec:	caffffdb 	bgt	60301f60 <_dtoa_r+0x764>
60301ff0:	eef40b61 	vcmp.f64	d16, d17
60301ff4:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60301ff8:	1a000001 	bne	60302004 <_dtoa_r+0x808>
60301ffc:	e3130001 	tst	r3, #1
60302000:	1affffd6 	bne	60301f60 <_dtoa_r+0x764>
60302004:	e1a0100b 	mov	r1, fp
60302008:	e1a00005 	mov	r0, r5
6030200c:	eb000291 	bl	60302a58 <_Bfree>
60302010:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
60302014:	e3a03000 	mov	r3, #0
60302018:	e5c73000 	strb	r3, [r7]
6030201c:	e28a3001 	add	r3, sl, #1
60302020:	e5823000 	str	r3, [r2]
60302024:	e59d3074 	ldr	r3, [sp, #116]	; 0x74
60302028:	e3530000 	cmp	r3, #0
6030202c:	15837000 	strne	r7, [r3]
60302030:	eafffe31 	b	603018fc <_dtoa_r+0x100>
60302034:	e59d2018 	ldr	r2, [sp, #24]
60302038:	e3520000 	cmp	r2, #0
6030203c:	01a04009 	moveq	r4, r9
60302040:	059d7010 	ldreq	r7, [sp, #16]
60302044:	059d6018 	ldreq	r6, [sp, #24]
60302048:	0a000013 	beq	6030209c <_dtoa_r+0x8a0>
6030204c:	e59d201c 	ldr	r2, [sp, #28]
60302050:	e3520001 	cmp	r2, #1
60302054:	ca0000ca 	bgt	60302384 <_dtoa_r+0xb88>
60302058:	e3560000 	cmp	r6, #0
6030205c:	e59d7010 	ldr	r7, [sp, #16]
60302060:	12833e43 	addne	r3, r3, #1072	; 0x430
60302064:	e1a04009 	mov	r4, r9
60302068:	12833003 	addne	r3, r3, #3
6030206c:	059d3038 	ldreq	r3, [sp, #56]	; 0x38
60302070:	02633036 	rsbeq	r3, r3, #54	; 0x36
60302074:	e59d2010 	ldr	r2, [sp, #16]
60302078:	e3a01001 	mov	r1, #1
6030207c:	e1a00005 	mov	r0, r5
60302080:	e0822003 	add	r2, r2, r3
60302084:	e58d2010 	str	r2, [sp, #16]
60302088:	e59d2014 	ldr	r2, [sp, #20]
6030208c:	e0823003 	add	r3, r2, r3
60302090:	e58d3014 	str	r3, [sp, #20]
60302094:	eb00033e 	bl	60302d94 <__i2b>
60302098:	e1a06000 	mov	r6, r0
6030209c:	e59d3014 	ldr	r3, [sp, #20]
603020a0:	e3570000 	cmp	r7, #0
603020a4:	c3530000 	cmpgt	r3, #0
603020a8:	da000008 	ble	603020d0 <_dtoa_r+0x8d4>
603020ac:	e1570003 	cmp	r7, r3
603020b0:	e59d2010 	ldr	r2, [sp, #16]
603020b4:	b1a03007 	movlt	r3, r7
603020b8:	e0422003 	sub	r2, r2, r3
603020bc:	e58d2010 	str	r2, [sp, #16]
603020c0:	e59d2014 	ldr	r2, [sp, #20]
603020c4:	e0477003 	sub	r7, r7, r3
603020c8:	e0423003 	sub	r3, r2, r3
603020cc:	e58d3014 	str	r3, [sp, #20]
603020d0:	e3590000 	cmp	r9, #0
603020d4:	0a000019 	beq	60302140 <_dtoa_r+0x944>
603020d8:	e59d3018 	ldr	r3, [sp, #24]
603020dc:	e3530000 	cmp	r3, #0
603020e0:	0a0000b6 	beq	603023c0 <_dtoa_r+0xbc4>
603020e4:	e3540000 	cmp	r4, #0
603020e8:	da00000e 	ble	60302128 <_dtoa_r+0x92c>
603020ec:	e1a01006 	mov	r1, r6
603020f0:	e1a02004 	mov	r2, r4
603020f4:	e1a00005 	mov	r0, r5
603020f8:	eb0003a8 	bl	60302fa0 <__pow5mult>
603020fc:	e1a0200b 	mov	r2, fp
60302100:	e1a01000 	mov	r1, r0
60302104:	e1a06000 	mov	r6, r0
60302108:	e1a00005 	mov	r0, r5
6030210c:	eb000330 	bl	60302dd4 <__multiply>
60302110:	e1a0100b 	mov	r1, fp
60302114:	e58d0034 	str	r0, [sp, #52]	; 0x34
60302118:	e1a00005 	mov	r0, r5
6030211c:	eb00024d 	bl	60302a58 <_Bfree>
60302120:	e59d3034 	ldr	r3, [sp, #52]	; 0x34
60302124:	e1a0b003 	mov	fp, r3
60302128:	e0592004 	subs	r2, r9, r4
6030212c:	0a000003 	beq	60302140 <_dtoa_r+0x944>
60302130:	e1a0100b 	mov	r1, fp
60302134:	e1a00005 	mov	r0, r5
60302138:	eb000398 	bl	60302fa0 <__pow5mult>
6030213c:	e1a0b000 	mov	fp, r0
60302140:	e3a01001 	mov	r1, #1
60302144:	e1a00005 	mov	r0, r5
60302148:	eb000311 	bl	60302d94 <__i2b>
6030214c:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
60302150:	e1a04000 	mov	r4, r0
60302154:	e3530000 	cmp	r3, #0
60302158:	da00009a 	ble	603023c8 <_dtoa_r+0xbcc>
6030215c:	e1a02003 	mov	r2, r3
60302160:	e1a01000 	mov	r1, r0
60302164:	e1a00005 	mov	r0, r5
60302168:	eb00038c 	bl	60302fa0 <__pow5mult>
6030216c:	e59d301c 	ldr	r3, [sp, #28]
60302170:	e1a04000 	mov	r4, r0
60302174:	e3530001 	cmp	r3, #1
60302178:	c3a09000 	movgt	r9, #0
6030217c:	ca000018 	bgt	603021e4 <_dtoa_r+0x9e8>
60302180:	e59d3008 	ldr	r3, [sp, #8]
60302184:	e3530000 	cmp	r3, #0
60302188:	1a000091 	bne	603023d4 <_dtoa_r+0xbd8>
6030218c:	e59d300c 	ldr	r3, [sp, #12]
60302190:	e7f33053 	ubfx	r3, r3, #0, #20
60302194:	e3530000 	cmp	r3, #0
60302198:	159d9008 	ldrne	r9, [sp, #8]
6030219c:	1a00000c 	bne	603021d4 <_dtoa_r+0x9d8>
603021a0:	e59d300c 	ldr	r3, [sp, #12]
603021a4:	e3c39102 	bic	r9, r3, #-2147483648	; 0x80000000
603021a8:	e1a09a29 	lsr	r9, r9, #20
603021ac:	e1a09a09 	lsl	r9, r9, #20
603021b0:	e3590000 	cmp	r9, #0
603021b4:	0a000006 	beq	603021d4 <_dtoa_r+0x9d8>
603021b8:	e59d3010 	ldr	r3, [sp, #16]
603021bc:	e3a09001 	mov	r9, #1
603021c0:	e2833001 	add	r3, r3, #1
603021c4:	e58d3010 	str	r3, [sp, #16]
603021c8:	e59d3014 	ldr	r3, [sp, #20]
603021cc:	e2833001 	add	r3, r3, #1
603021d0:	e58d3014 	str	r3, [sp, #20]
603021d4:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
603021d8:	e3530000 	cmp	r3, #0
603021dc:	03a00001 	moveq	r0, #1
603021e0:	0a000004 	beq	603021f8 <_dtoa_r+0x9fc>
603021e4:	e5943010 	ldr	r3, [r4, #16]
603021e8:	e0843103 	add	r3, r4, r3, lsl #2
603021ec:	e5930010 	ldr	r0, [r3, #16]
603021f0:	eb0002aa 	bl	60302ca0 <__hi0bits>
603021f4:	e2600020 	rsb	r0, r0, #32
603021f8:	e59d3014 	ldr	r3, [sp, #20]
603021fc:	e0830000 	add	r0, r3, r0
60302200:	e210001f 	ands	r0, r0, #31
60302204:	0a000005 	beq	60302220 <_dtoa_r+0xa24>
60302208:	e2603020 	rsb	r3, r0, #32
6030220c:	e3530004 	cmp	r3, #4
60302210:	c260001c 	rsbgt	r0, r0, #28
60302214:	ca000002 	bgt	60302224 <_dtoa_r+0xa28>
60302218:	0a000008 	beq	60302240 <_dtoa_r+0xa44>
6030221c:	e1a00003 	mov	r0, r3
60302220:	e280001c 	add	r0, r0, #28
60302224:	e59d3010 	ldr	r3, [sp, #16]
60302228:	e0877000 	add	r7, r7, r0
6030222c:	e0833000 	add	r3, r3, r0
60302230:	e58d3010 	str	r3, [sp, #16]
60302234:	e59d3014 	ldr	r3, [sp, #20]
60302238:	e0833000 	add	r3, r3, r0
6030223c:	e58d3014 	str	r3, [sp, #20]
60302240:	e59d3010 	ldr	r3, [sp, #16]
60302244:	e3530000 	cmp	r3, #0
60302248:	da000004 	ble	60302260 <_dtoa_r+0xa64>
6030224c:	e1a0100b 	mov	r1, fp
60302250:	e1a02003 	mov	r2, r3
60302254:	e1a00005 	mov	r0, r5
60302258:	eb000398 	bl	603030c0 <__lshift>
6030225c:	e1a0b000 	mov	fp, r0
60302260:	e59d3014 	ldr	r3, [sp, #20]
60302264:	e3530000 	cmp	r3, #0
60302268:	da000004 	ble	60302280 <_dtoa_r+0xa84>
6030226c:	e1a01004 	mov	r1, r4
60302270:	e1a02003 	mov	r2, r3
60302274:	e1a00005 	mov	r0, r5
60302278:	eb000390 	bl	603030c0 <__lshift>
6030227c:	e1a04000 	mov	r4, r0
60302280:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
60302284:	e3530000 	cmp	r3, #0
60302288:	0a000015 	beq	603022e4 <_dtoa_r+0xae8>
6030228c:	e1a01004 	mov	r1, r4
60302290:	e1a0000b 	mov	r0, fp
60302294:	eb0003d4 	bl	603031ec <__mcmp>
60302298:	e3500000 	cmp	r0, #0
6030229c:	aa000010 	bge	603022e4 <_dtoa_r+0xae8>
603022a0:	e3a03000 	mov	r3, #0
603022a4:	e1a0100b 	mov	r1, fp
603022a8:	e3a0200a 	mov	r2, #10
603022ac:	e1a00005 	mov	r0, r5
603022b0:	eb000207 	bl	60302ad4 <__multadd>
603022b4:	e59d3018 	ldr	r3, [sp, #24]
603022b8:	e24aa001 	sub	sl, sl, #1
603022bc:	e1a0b000 	mov	fp, r0
603022c0:	e3530000 	cmp	r3, #0
603022c4:	0a000005 	beq	603022e0 <_dtoa_r+0xae4>
603022c8:	e1a01006 	mov	r1, r6
603022cc:	e3a03000 	mov	r3, #0
603022d0:	e3a0200a 	mov	r2, #10
603022d4:	e1a00005 	mov	r0, r5
603022d8:	eb0001fd 	bl	60302ad4 <__multadd>
603022dc:	e1a06000 	mov	r6, r0
603022e0:	e59d8020 	ldr	r8, [sp, #32]
603022e4:	e59d201c 	ldr	r2, [sp, #28]
603022e8:	e3580000 	cmp	r8, #0
603022ec:	d3a03001 	movle	r3, #1
603022f0:	c3a03000 	movgt	r3, #0
603022f4:	e3520002 	cmp	r2, #2
603022f8:	d3a03000 	movle	r3, #0
603022fc:	e3530000 	cmp	r3, #0
60302300:	0a00003c 	beq	603023f8 <_dtoa_r+0xbfc>
60302304:	e3580000 	cmp	r8, #0
60302308:	1a00000a 	bne	60302338 <_dtoa_r+0xb3c>
6030230c:	e1a01004 	mov	r1, r4
60302310:	e1a03008 	mov	r3, r8
60302314:	e3a02005 	mov	r2, #5
60302318:	e1a00005 	mov	r0, r5
6030231c:	eb0001ec 	bl	60302ad4 <__multadd>
60302320:	e1a01000 	mov	r1, r0
60302324:	e1a04000 	mov	r4, r0
60302328:	e1a0000b 	mov	r0, fp
6030232c:	eb0003ae 	bl	603031ec <__mcmp>
60302330:	e3500000 	cmp	r0, #0
60302334:	cafffea1 	bgt	60301dc0 <_dtoa_r+0x5c4>
60302338:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
6030233c:	e59d7004 	ldr	r7, [sp, #4]
60302340:	e1e0a003 	mvn	sl, r3
60302344:	e3a08000 	mov	r8, #0
60302348:	e1a01004 	mov	r1, r4
6030234c:	e1a00005 	mov	r0, r5
60302350:	eb0001c0 	bl	60302a58 <_Bfree>
60302354:	e3560000 	cmp	r6, #0
60302358:	0affff29 	beq	60302004 <_dtoa_r+0x808>
6030235c:	e3580000 	cmp	r8, #0
60302360:	11580006 	cmpne	r8, r6
60302364:	0a000002 	beq	60302374 <_dtoa_r+0xb78>
60302368:	e1a01008 	mov	r1, r8
6030236c:	e1a00005 	mov	r0, r5
60302370:	eb0001b8 	bl	60302a58 <_Bfree>
60302374:	e1a01006 	mov	r1, r6
60302378:	e1a00005 	mov	r0, r5
6030237c:	eb0001b5 	bl	60302a58 <_Bfree>
60302380:	eaffff1f 	b	60302004 <_dtoa_r+0x808>
60302384:	e2483001 	sub	r3, r8, #1
60302388:	e1590003 	cmp	r9, r3
6030238c:	b0439009 	sublt	r9, r3, r9
60302390:	a0494003 	subge	r4, r9, r3
60302394:	b59d2028 	ldrlt	r2, [sp, #40]	; 0x28
60302398:	b0822009 	addlt	r2, r2, r9
6030239c:	b1a09003 	movlt	r9, r3
603023a0:	b58d2028 	strlt	r2, [sp, #40]	; 0x28
603023a4:	e3580000 	cmp	r8, #0
603023a8:	a1a03008 	movge	r3, r8
603023ac:	b59d3010 	ldrlt	r3, [sp, #16]
603023b0:	a59d7010 	ldrge	r7, [sp, #16]
603023b4:	b0437008 	sublt	r7, r3, r8
603023b8:	b3a03000 	movlt	r3, #0
603023bc:	eaffff2c 	b	60302074 <_dtoa_r+0x878>
603023c0:	e1a02009 	mov	r2, r9
603023c4:	eaffff59 	b	60302130 <_dtoa_r+0x934>
603023c8:	e59d301c 	ldr	r3, [sp, #28]
603023cc:	e3530001 	cmp	r3, #1
603023d0:	daffff6a 	ble	60302180 <_dtoa_r+0x984>
603023d4:	e3a09000 	mov	r9, #0
603023d8:	eaffff7d 	b	603021d4 <_dtoa_r+0x9d8>
603023dc:	e3a04000 	mov	r4, #0
603023e0:	e1a06004 	mov	r6, r4
603023e4:	eaffffd3 	b	60302338 <_dtoa_r+0xb3c>
603023e8:	e1a0a001 	mov	sl, r1
603023ec:	e1a04000 	mov	r4, r0
603023f0:	e1a06000 	mov	r6, r0
603023f4:	eafffe71 	b	60301dc0 <_dtoa_r+0x5c4>
603023f8:	e59d3018 	ldr	r3, [sp, #24]
603023fc:	e3530000 	cmp	r3, #0
60302400:	0a0000a3 	beq	60302694 <_dtoa_r+0xe98>
60302404:	e3570000 	cmp	r7, #0
60302408:	da000004 	ble	60302420 <_dtoa_r+0xc24>
6030240c:	e1a01006 	mov	r1, r6
60302410:	e1a02007 	mov	r2, r7
60302414:	e1a00005 	mov	r0, r5
60302418:	eb000328 	bl	603030c0 <__lshift>
6030241c:	e1a06000 	mov	r6, r0
60302420:	e3590000 	cmp	r9, #0
60302424:	01a00006 	moveq	r0, r6
60302428:	0a000012 	beq	60302478 <_dtoa_r+0xc7c>
6030242c:	e5961004 	ldr	r1, [r6, #4]
60302430:	e1a00005 	mov	r0, r5
60302434:	eb00014e 	bl	60302974 <_Balloc>
60302438:	e2507000 	subs	r7, r0, #0
6030243c:	1a000003 	bne	60302450 <_dtoa_r+0xc54>
60302440:	e51f3818 	ldr	r3, [pc, #-2072]	; 60301c30 <_dtoa_r+0x434>
60302444:	e1a02007 	mov	r2, r7
60302448:	e30012ea 	movw	r1, #746	; 0x2ea
6030244c:	eafffdd3 	b	60301ba0 <_dtoa_r+0x3a4>
60302450:	e5962010 	ldr	r2, [r6, #16]
60302454:	e286100c 	add	r1, r6, #12
60302458:	e287000c 	add	r0, r7, #12
6030245c:	e2822002 	add	r2, r2, #2
60302460:	e1a02102 	lsl	r2, r2, #2
60302464:	eb002bd6 	bl	6030d3c4 <__wrap_memcpy>
60302468:	e3a02001 	mov	r2, #1
6030246c:	e1a01007 	mov	r1, r7
60302470:	e1a00005 	mov	r0, r5
60302474:	eb000311 	bl	603030c0 <__lshift>
60302478:	e59d3004 	ldr	r3, [sp, #4]
6030247c:	e2833001 	add	r3, r3, #1
60302480:	e58d3010 	str	r3, [sp, #16]
60302484:	e59d3004 	ldr	r3, [sp, #4]
60302488:	e0833008 	add	r3, r3, r8
6030248c:	e58d3028 	str	r3, [sp, #40]	; 0x28
60302490:	e59d3008 	ldr	r3, [sp, #8]
60302494:	e1a08006 	mov	r8, r6
60302498:	e1a06000 	mov	r6, r0
6030249c:	e2033001 	and	r3, r3, #1
603024a0:	e58d3024 	str	r3, [sp, #36]	; 0x24
603024a4:	e59d3010 	ldr	r3, [sp, #16]
603024a8:	e1a01004 	mov	r1, r4
603024ac:	e1a0000b 	mov	r0, fp
603024b0:	e2433001 	sub	r3, r3, #1
603024b4:	e58d3008 	str	r3, [sp, #8]
603024b8:	ebfffc64 	bl	60301650 <quorem>
603024bc:	e1a01008 	mov	r1, r8
603024c0:	e58d0014 	str	r0, [sp, #20]
603024c4:	e2809030 	add	r9, r0, #48	; 0x30
603024c8:	e1a0000b 	mov	r0, fp
603024cc:	eb000346 	bl	603031ec <__mcmp>
603024d0:	e1a02006 	mov	r2, r6
603024d4:	e58d0020 	str	r0, [sp, #32]
603024d8:	e1a01004 	mov	r1, r4
603024dc:	e1a00005 	mov	r0, r5
603024e0:	eb000357 	bl	60303244 <__mdiff>
603024e4:	e590200c 	ldr	r2, [r0, #12]
603024e8:	e1a07000 	mov	r7, r0
603024ec:	e3520000 	cmp	r2, #0
603024f0:	159d2018 	ldrne	r2, [sp, #24]
603024f4:	1a000003 	bne	60302508 <_dtoa_r+0xd0c>
603024f8:	e1a01000 	mov	r1, r0
603024fc:	e1a0000b 	mov	r0, fp
60302500:	eb000339 	bl	603031ec <__mcmp>
60302504:	e1a02000 	mov	r2, r0
60302508:	e1a01007 	mov	r1, r7
6030250c:	e1a00005 	mov	r0, r5
60302510:	e58d202c 	str	r2, [sp, #44]	; 0x2c
60302514:	eb00014f 	bl	60302a58 <_Bfree>
60302518:	e59d301c 	ldr	r3, [sp, #28]
6030251c:	e59d202c 	ldr	r2, [sp, #44]	; 0x2c
60302520:	e59d7010 	ldr	r7, [sp, #16]
60302524:	e1831002 	orr	r1, r3, r2
60302528:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
6030252c:	e1913003 	orrs	r3, r1, r3
60302530:	1a000009 	bne	6030255c <_dtoa_r+0xd60>
60302534:	e3590039 	cmp	r9, #57	; 0x39
60302538:	0a000020 	beq	603025c0 <_dtoa_r+0xdc4>
6030253c:	e59d3020 	ldr	r3, [sp, #32]
60302540:	e3530000 	cmp	r3, #0
60302544:	da000001 	ble	60302550 <_dtoa_r+0xd54>
60302548:	e59d3014 	ldr	r3, [sp, #20]
6030254c:	e2839031 	add	r9, r3, #49	; 0x31
60302550:	e59d3008 	ldr	r3, [sp, #8]
60302554:	e5c39000 	strb	r9, [r3]
60302558:	eaffff7a 	b	60302348 <_dtoa_r+0xb4c>
6030255c:	e59d3020 	ldr	r3, [sp, #32]
60302560:	e3530000 	cmp	r3, #0
60302564:	ba000005 	blt	60302580 <_dtoa_r+0xd84>
60302568:	e59d1020 	ldr	r1, [sp, #32]
6030256c:	e59d301c 	ldr	r3, [sp, #28]
60302570:	e1833001 	orr	r3, r3, r1
60302574:	e59d1024 	ldr	r1, [sp, #36]	; 0x24
60302578:	e1933001 	orrs	r3, r3, r1
6030257c:	1a00001b 	bne	603025f0 <_dtoa_r+0xdf4>
60302580:	e3520000 	cmp	r2, #0
60302584:	dafffff1 	ble	60302550 <_dtoa_r+0xd54>
60302588:	e1a0100b 	mov	r1, fp
6030258c:	e3a02001 	mov	r2, #1
60302590:	e1a00005 	mov	r0, r5
60302594:	eb0002c9 	bl	603030c0 <__lshift>
60302598:	e1a01004 	mov	r1, r4
6030259c:	e1a0b000 	mov	fp, r0
603025a0:	eb000311 	bl	603031ec <__mcmp>
603025a4:	e3500000 	cmp	r0, #0
603025a8:	ca000002 	bgt	603025b8 <_dtoa_r+0xdbc>
603025ac:	1affffe7 	bne	60302550 <_dtoa_r+0xd54>
603025b0:	e3190001 	tst	r9, #1
603025b4:	0affffe5 	beq	60302550 <_dtoa_r+0xd54>
603025b8:	e3590039 	cmp	r9, #57	; 0x39
603025bc:	1affffe1 	bne	60302548 <_dtoa_r+0xd4c>
603025c0:	e59d2008 	ldr	r2, [sp, #8]
603025c4:	e3a03039 	mov	r3, #57	; 0x39
603025c8:	e5c23000 	strb	r3, [r2]
603025cc:	e1a03007 	mov	r3, r7
603025d0:	e1a07003 	mov	r7, r3
603025d4:	e2433001 	sub	r3, r3, #1
603025d8:	e5572001 	ldrb	r2, [r7, #-1]
603025dc:	e3520039 	cmp	r2, #57	; 0x39
603025e0:	0a000054 	beq	60302738 <_dtoa_r+0xf3c>
603025e4:	e2822001 	add	r2, r2, #1
603025e8:	e5c32000 	strb	r2, [r3]
603025ec:	eaffff55 	b	60302348 <_dtoa_r+0xb4c>
603025f0:	e3520000 	cmp	r2, #0
603025f4:	da000005 	ble	60302610 <_dtoa_r+0xe14>
603025f8:	e3590039 	cmp	r9, #57	; 0x39
603025fc:	12893001 	addne	r3, r9, #1
60302600:	159d2008 	ldrne	r2, [sp, #8]
60302604:	0affffed 	beq	603025c0 <_dtoa_r+0xdc4>
60302608:	e5c23000 	strb	r3, [r2]
6030260c:	eaffff4d 	b	60302348 <_dtoa_r+0xb4c>
60302610:	e59d3010 	ldr	r3, [sp, #16]
60302614:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
60302618:	e5439001 	strb	r9, [r3, #-1]
6030261c:	e1530002 	cmp	r3, r2
60302620:	0a000032 	beq	603026f0 <_dtoa_r+0xef4>
60302624:	e1a0100b 	mov	r1, fp
60302628:	e3a03000 	mov	r3, #0
6030262c:	e3a0200a 	mov	r2, #10
60302630:	e1a00005 	mov	r0, r5
60302634:	eb000126 	bl	60302ad4 <__multadd>
60302638:	e3a03000 	mov	r3, #0
6030263c:	e1a0b000 	mov	fp, r0
60302640:	e3a0200a 	mov	r2, #10
60302644:	e1a01008 	mov	r1, r8
60302648:	e1a00005 	mov	r0, r5
6030264c:	e1580006 	cmp	r8, r6
60302650:	1a000006 	bne	60302670 <_dtoa_r+0xe74>
60302654:	eb00011e 	bl	60302ad4 <__multadd>
60302658:	e1a08000 	mov	r8, r0
6030265c:	e1a06000 	mov	r6, r0
60302660:	e59d3010 	ldr	r3, [sp, #16]
60302664:	e2833001 	add	r3, r3, #1
60302668:	e58d3010 	str	r3, [sp, #16]
6030266c:	eaffff8c 	b	603024a4 <_dtoa_r+0xca8>
60302670:	eb000117 	bl	60302ad4 <__multadd>
60302674:	e1a01006 	mov	r1, r6
60302678:	e1a08000 	mov	r8, r0
6030267c:	e3a03000 	mov	r3, #0
60302680:	e3a0200a 	mov	r2, #10
60302684:	e1a00005 	mov	r0, r5
60302688:	eb000111 	bl	60302ad4 <__multadd>
6030268c:	e1a06000 	mov	r6, r0
60302690:	eafffff2 	b	60302660 <_dtoa_r+0xe64>
60302694:	e59d7004 	ldr	r7, [sp, #4]
60302698:	e1a01004 	mov	r1, r4
6030269c:	e1a0000b 	mov	r0, fp
603026a0:	ebfffbea 	bl	60301650 <quorem>
603026a4:	e59d3004 	ldr	r3, [sp, #4]
603026a8:	e2809030 	add	r9, r0, #48	; 0x30
603026ac:	e4c79001 	strb	r9, [r7], #1
603026b0:	e0472003 	sub	r2, r7, r3
603026b4:	e1580002 	cmp	r8, r2
603026b8:	da000006 	ble	603026d8 <_dtoa_r+0xedc>
603026bc:	e1a0100b 	mov	r1, fp
603026c0:	e3a03000 	mov	r3, #0
603026c4:	e3a0200a 	mov	r2, #10
603026c8:	e1a00005 	mov	r0, r5
603026cc:	eb000100 	bl	60302ad4 <__multadd>
603026d0:	e1a0b000 	mov	fp, r0
603026d4:	eaffffef 	b	60302698 <_dtoa_r+0xe9c>
603026d8:	e3580000 	cmp	r8, #0
603026dc:	e59d3004 	ldr	r3, [sp, #4]
603026e0:	c1a07008 	movgt	r7, r8
603026e4:	d3a07001 	movle	r7, #1
603026e8:	e0837007 	add	r7, r3, r7
603026ec:	e3a08000 	mov	r8, #0
603026f0:	e1a0100b 	mov	r1, fp
603026f4:	e3a02001 	mov	r2, #1
603026f8:	e1a00005 	mov	r0, r5
603026fc:	eb00026f 	bl	603030c0 <__lshift>
60302700:	e1a01004 	mov	r1, r4
60302704:	e1a0b000 	mov	fp, r0
60302708:	eb0002b7 	bl	603031ec <__mcmp>
6030270c:	e3500000 	cmp	r0, #0
60302710:	caffffad 	bgt	603025cc <_dtoa_r+0xdd0>
60302714:	1a000001 	bne	60302720 <_dtoa_r+0xf24>
60302718:	e3190001 	tst	r9, #1
6030271c:	1affffaa 	bne	603025cc <_dtoa_r+0xdd0>
60302720:	e1a03007 	mov	r3, r7
60302724:	e5772001 	ldrb	r2, [r7, #-1]!
60302728:	e3520030 	cmp	r2, #48	; 0x30
6030272c:	0afffffb 	beq	60302720 <_dtoa_r+0xf24>
60302730:	e1a07003 	mov	r7, r3
60302734:	eaffff03 	b	60302348 <_dtoa_r+0xb4c>
60302738:	e59d2004 	ldr	r2, [sp, #4]
6030273c:	e1520003 	cmp	r2, r3
60302740:	1affffa2 	bne	603025d0 <_dtoa_r+0xdd4>
60302744:	e28aa001 	add	sl, sl, #1
60302748:	e3a03031 	mov	r3, #49	; 0x31
6030274c:	eaffffad 	b	60302608 <_dtoa_r+0xe0c>
60302750:	e59d3074 	ldr	r3, [sp, #116]	; 0x74
60302754:	e3530000 	cmp	r3, #0
60302758:	e51f3b2c 	ldr	r3, [pc, #-2860]	; 60301c34 <_dtoa_r+0x438>
6030275c:	e58d3004 	str	r3, [sp, #4]
60302760:	12833008 	addne	r3, r3, #8
60302764:	1afffc62 	bne	603018f4 <_dtoa_r+0xf8>
60302768:	eafffc63 	b	603018fc <_dtoa_r+0x100>

6030276c <_fclose_r>:
6030276c:	e92d4070 	push	{r4, r5, r6, lr}
60302770:	e2514000 	subs	r4, r1, #0
60302774:	1a000002 	bne	60302784 <_fclose_r+0x18>
60302778:	e3a06000 	mov	r6, #0
6030277c:	e1a00006 	mov	r0, r6
60302780:	e8bd8070 	pop	{r4, r5, r6, pc}
60302784:	e1a05000 	mov	r5, r0
60302788:	e3500000 	cmp	r0, #0
6030278c:	0a000003 	beq	603027a0 <_fclose_r+0x34>
60302790:	e5903018 	ldr	r3, [r0, #24]
60302794:	e3530000 	cmp	r3, #0
60302798:	1a000000 	bne	603027a0 <_fclose_r+0x34>
6030279c:	ebfff9cf 	bl	60300ee0 <__sinit>
603027a0:	e5943064 	ldr	r3, [r4, #100]	; 0x64
603027a4:	e3130001 	tst	r3, #1
603027a8:	1a000004 	bne	603027c0 <_fclose_r+0x54>
603027ac:	e1d430bc 	ldrh	r3, [r4, #12]
603027b0:	e3130c02 	tst	r3, #512	; 0x200
603027b4:	1a000001 	bne	603027c0 <_fclose_r+0x54>
603027b8:	e5940058 	ldr	r0, [r4, #88]	; 0x58
603027bc:	ebfffa95 	bl	60301218 <__retarget_lock_acquire_recursive>
603027c0:	e1d430fc 	ldrsh	r3, [r4, #12]
603027c4:	e3530000 	cmp	r3, #0
603027c8:	1a000005 	bne	603027e4 <_fclose_r+0x78>
603027cc:	e5940064 	ldr	r0, [r4, #100]	; 0x64
603027d0:	e2106001 	ands	r6, r0, #1
603027d4:	1affffe7 	bne	60302778 <_fclose_r+0xc>
603027d8:	e5940058 	ldr	r0, [r4, #88]	; 0x58
603027dc:	ebfffa93 	bl	60301230 <__retarget_lock_release_recursive>
603027e0:	eaffffe5 	b	6030277c <_fclose_r+0x10>
603027e4:	e1a01004 	mov	r1, r4
603027e8:	e1a00005 	mov	r0, r5
603027ec:	ebfff896 	bl	60300a4c <__sflush_r>
603027f0:	e5943030 	ldr	r3, [r4, #48]	; 0x30
603027f4:	e1a06000 	mov	r6, r0
603027f8:	e3530000 	cmp	r3, #0
603027fc:	0a000004 	beq	60302814 <_fclose_r+0xa8>
60302800:	e5941020 	ldr	r1, [r4, #32]
60302804:	e1a00005 	mov	r0, r5
60302808:	e12fff33 	blx	r3
6030280c:	e3500000 	cmp	r0, #0
60302810:	b3e06000 	mvnlt	r6, #0
60302814:	e1d430bc 	ldrh	r3, [r4, #12]
60302818:	e3130080 	tst	r3, #128	; 0x80
6030281c:	0a000002 	beq	6030282c <_fclose_r+0xc0>
60302820:	e5941010 	ldr	r1, [r4, #16]
60302824:	e1a00005 	mov	r0, r5
60302828:	eb002ca2 	bl	6030dab8 <__wrap__free_r>
6030282c:	e5941034 	ldr	r1, [r4, #52]	; 0x34
60302830:	e3510000 	cmp	r1, #0
60302834:	0a000006 	beq	60302854 <_fclose_r+0xe8>
60302838:	e2843044 	add	r3, r4, #68	; 0x44
6030283c:	e1510003 	cmp	r1, r3
60302840:	0a000001 	beq	6030284c <_fclose_r+0xe0>
60302844:	e1a00005 	mov	r0, r5
60302848:	eb002c9a 	bl	6030dab8 <__wrap__free_r>
6030284c:	e3a03000 	mov	r3, #0
60302850:	e5843034 	str	r3, [r4, #52]	; 0x34
60302854:	e5941048 	ldr	r1, [r4, #72]	; 0x48
60302858:	e3510000 	cmp	r1, #0
6030285c:	0a000003 	beq	60302870 <_fclose_r+0x104>
60302860:	e1a00005 	mov	r0, r5
60302864:	eb002c93 	bl	6030dab8 <__wrap__free_r>
60302868:	e3a03000 	mov	r3, #0
6030286c:	e5843048 	str	r3, [r4, #72]	; 0x48
60302870:	ebfff98e 	bl	60300eb0 <__sfp_lock_acquire>
60302874:	e3a03000 	mov	r3, #0
60302878:	e1c430bc 	strh	r3, [r4, #12]
6030287c:	e5943064 	ldr	r3, [r4, #100]	; 0x64
60302880:	e3130001 	tst	r3, #1
60302884:	1a000001 	bne	60302890 <_fclose_r+0x124>
60302888:	e5940058 	ldr	r0, [r4, #88]	; 0x58
6030288c:	ebfffa67 	bl	60301230 <__retarget_lock_release_recursive>
60302890:	e5940058 	ldr	r0, [r4, #88]	; 0x58
60302894:	ebfffa5d 	bl	60301210 <__retarget_lock_close_recursive>
60302898:	ebfff987 	bl	60300ebc <__sfp_lock_release>
6030289c:	eaffffb6 	b	6030277c <_fclose_r+0x10>

603028a0 <fclose>:
603028a0:	e59f3008 	ldr	r3, [pc, #8]	; 603028b0 <fclose+0x10>
603028a4:	e1a01000 	mov	r1, r0
603028a8:	e5930000 	ldr	r0, [r3]
603028ac:	eaffffae 	b	6030276c <_fclose_r>
603028b0:	60316000 	.word	0x60316000

603028b4 <_fiprintf_r>:
603028b4:	e92d000c 	push	{r2, r3}
603028b8:	e92d4007 	push	{r0, r1, r2, lr}
603028bc:	e59d2010 	ldr	r2, [sp, #16]
603028c0:	e28d3014 	add	r3, sp, #20
603028c4:	e58d3004 	str	r3, [sp, #4]
603028c8:	eb000408 	bl	603038f0 <_vfiprintf_r>
603028cc:	e28dd00c 	add	sp, sp, #12
603028d0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
603028d4:	e28dd008 	add	sp, sp, #8
603028d8:	e12fff1e 	bx	lr

603028dc <fiprintf>:
603028dc:	e92d000e 	push	{r1, r2, r3}
603028e0:	e92d4003 	push	{r0, r1, lr}
603028e4:	e1a01000 	mov	r1, r0
603028e8:	e59f0020 	ldr	r0, [pc, #32]	; 60302910 <fiprintf+0x34>
603028ec:	e28d3010 	add	r3, sp, #16
603028f0:	e59d200c 	ldr	r2, [sp, #12]
603028f4:	e58d3004 	str	r3, [sp, #4]
603028f8:	e5900000 	ldr	r0, [r0]
603028fc:	eb0003fb 	bl	603038f0 <_vfiprintf_r>
60302900:	e28dd008 	add	sp, sp, #8
60302904:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
60302908:	e28dd00c 	add	sp, sp, #12
6030290c:	e12fff1e 	bx	lr
60302910:	60316000 	.word	0x60316000

60302914 <__localeconv_l>:
60302914:	e28000f0 	add	r0, r0, #240	; 0xf0
60302918:	e12fff1e 	bx	lr

6030291c <_localeconv_r>:
6030291c:	e59f0000 	ldr	r0, [pc]	; 60302924 <_localeconv_r+0x8>
60302920:	e12fff1e 	bx	lr
60302924:	603161e4 	.word	0x603161e4

60302928 <localeconv>:
60302928:	e59f0000 	ldr	r0, [pc]	; 60302930 <localeconv+0x8>
6030292c:	e12fff1e 	bx	lr
60302930:	603161e4 	.word	0x603161e4

60302934 <_lseek_r>:
60302934:	e92d4070 	push	{r4, r5, r6, lr}
60302938:	e1a04000 	mov	r4, r0
6030293c:	e59f502c 	ldr	r5, [pc, #44]	; 60302970 <_lseek_r+0x3c>
60302940:	e1a00001 	mov	r0, r1
60302944:	e1a01002 	mov	r1, r2
60302948:	e3a02000 	mov	r2, #0
6030294c:	e5852000 	str	r2, [r5]
60302950:	e1a02003 	mov	r2, r3
60302954:	eb001ec0 	bl	6030a45c <_lseek>
60302958:	e3700001 	cmn	r0, #1
6030295c:	18bd8070 	popne	{r4, r5, r6, pc}
60302960:	e5953000 	ldr	r3, [r5]
60302964:	e3530000 	cmp	r3, #0
60302968:	15843000 	strne	r3, [r4]
6030296c:	e8bd8070 	pop	{r4, r5, r6, pc}
60302970:	60323160 	.word	0x60323160

60302974 <_Balloc>:
60302974:	e92d4070 	push	{r4, r5, r6, lr}
60302978:	e1a04000 	mov	r4, r0
6030297c:	e5906024 	ldr	r6, [r0, #36]	; 0x24
60302980:	e1a05001 	mov	r5, r1
60302984:	e3560000 	cmp	r6, #0
60302988:	1a00000d 	bne	603029c4 <_Balloc+0x50>
6030298c:	e3a00010 	mov	r0, #16
60302990:	eb002c42 	bl	6030daa0 <__wrap_malloc>
60302994:	e1a02000 	mov	r2, r0
60302998:	e3500000 	cmp	r0, #0
6030299c:	e5840024 	str	r0, [r4, #36]	; 0x24
603029a0:	1a000003 	bne	603029b4 <_Balloc+0x40>
603029a4:	e59f30a4 	ldr	r3, [pc, #164]	; 60302a50 <_Balloc+0xdc>
603029a8:	e3a01066 	mov	r1, #102	; 0x66
603029ac:	e59f00a0 	ldr	r0, [pc, #160]	; 60302a54 <_Balloc+0xe0>
603029b0:	ebfffb00 	bl	603015b8 <__assert_func>
603029b4:	e5806004 	str	r6, [r0, #4]
603029b8:	e5806008 	str	r6, [r0, #8]
603029bc:	e5806000 	str	r6, [r0]
603029c0:	e580600c 	str	r6, [r0, #12]
603029c4:	e5946024 	ldr	r6, [r4, #36]	; 0x24
603029c8:	e596300c 	ldr	r3, [r6, #12]
603029cc:	e3530000 	cmp	r3, #0
603029d0:	0a000013 	beq	60302a24 <_Balloc+0xb0>
603029d4:	e5943024 	ldr	r3, [r4, #36]	; 0x24
603029d8:	e593300c 	ldr	r3, [r3, #12]
603029dc:	e7930105 	ldr	r0, [r3, r5, lsl #2]
603029e0:	e3500000 	cmp	r0, #0
603029e4:	15902000 	ldrne	r2, [r0]
603029e8:	17832105 	strne	r2, [r3, r5, lsl #2]
603029ec:	1a000008 	bne	60302a14 <_Balloc+0xa0>
603029f0:	e3a01001 	mov	r1, #1
603029f4:	e1a00004 	mov	r0, r4
603029f8:	e1a06511 	lsl	r6, r1, r5
603029fc:	e2862005 	add	r2, r6, #5
60302a00:	e1a02102 	lsl	r2, r2, #2
60302a04:	eb002c2d 	bl	6030dac0 <__wrap__calloc_r>
60302a08:	e3500000 	cmp	r0, #0
60302a0c:	0a00000d 	beq	60302a48 <_Balloc+0xd4>
60302a10:	e9800060 	stmib	r0, {r5, r6}
60302a14:	e3a03000 	mov	r3, #0
60302a18:	e5803010 	str	r3, [r0, #16]
60302a1c:	e580300c 	str	r3, [r0, #12]
60302a20:	e8bd8070 	pop	{r4, r5, r6, pc}
60302a24:	e3a02021 	mov	r2, #33	; 0x21
60302a28:	e3a01004 	mov	r1, #4
60302a2c:	e1a00004 	mov	r0, r4
60302a30:	eb002c22 	bl	6030dac0 <__wrap__calloc_r>
60302a34:	e5943024 	ldr	r3, [r4, #36]	; 0x24
60302a38:	e586000c 	str	r0, [r6, #12]
60302a3c:	e593300c 	ldr	r3, [r3, #12]
60302a40:	e3530000 	cmp	r3, #0
60302a44:	1affffe2 	bne	603029d4 <_Balloc+0x60>
60302a48:	e3a00000 	mov	r0, #0
60302a4c:	e8bd8070 	pop	{r4, r5, r6, pc}
60302a50:	60315b5f 	.word	0x60315b5f
60302a54:	60315bce 	.word	0x60315bce

60302a58 <_Bfree>:
60302a58:	e92d4070 	push	{r4, r5, r6, lr}
60302a5c:	e1a05000 	mov	r5, r0
60302a60:	e5906024 	ldr	r6, [r0, #36]	; 0x24
60302a64:	e1a04001 	mov	r4, r1
60302a68:	e3560000 	cmp	r6, #0
60302a6c:	1a00000d 	bne	60302aa8 <_Bfree+0x50>
60302a70:	e3a00010 	mov	r0, #16
60302a74:	eb002c09 	bl	6030daa0 <__wrap_malloc>
60302a78:	e1a02000 	mov	r2, r0
60302a7c:	e3500000 	cmp	r0, #0
60302a80:	e5850024 	str	r0, [r5, #36]	; 0x24
60302a84:	1a000003 	bne	60302a98 <_Bfree+0x40>
60302a88:	e59f303c 	ldr	r3, [pc, #60]	; 60302acc <_Bfree+0x74>
60302a8c:	e3a0108a 	mov	r1, #138	; 0x8a
60302a90:	e59f0038 	ldr	r0, [pc, #56]	; 60302ad0 <_Bfree+0x78>
60302a94:	ebfffac7 	bl	603015b8 <__assert_func>
60302a98:	e5806004 	str	r6, [r0, #4]
60302a9c:	e5806008 	str	r6, [r0, #8]
60302aa0:	e5806000 	str	r6, [r0]
60302aa4:	e580600c 	str	r6, [r0, #12]
60302aa8:	e3540000 	cmp	r4, #0
60302aac:	08bd8070 	popeq	{r4, r5, r6, pc}
60302ab0:	e5953024 	ldr	r3, [r5, #36]	; 0x24
60302ab4:	e5942004 	ldr	r2, [r4, #4]
60302ab8:	e593300c 	ldr	r3, [r3, #12]
60302abc:	e7931102 	ldr	r1, [r3, r2, lsl #2]
60302ac0:	e5841000 	str	r1, [r4]
60302ac4:	e7834102 	str	r4, [r3, r2, lsl #2]
60302ac8:	e8bd8070 	pop	{r4, r5, r6, pc}
60302acc:	60315b5f 	.word	0x60315b5f
60302ad0:	60315bce 	.word	0x60315bce

60302ad4 <__multadd>:
60302ad4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60302ad8:	e281c014 	add	ip, r1, #20
60302adc:	e5915010 	ldr	r5, [r1, #16]
60302ae0:	e1a07000 	mov	r7, r0
60302ae4:	e1a04001 	mov	r4, r1
60302ae8:	e1a06003 	mov	r6, r3
60302aec:	e3a00000 	mov	r0, #0
60302af0:	e59c3000 	ldr	r3, [ip]
60302af4:	e2800001 	add	r0, r0, #1
60302af8:	e1550000 	cmp	r5, r0
60302afc:	e6ff1073 	uxth	r1, r3
60302b00:	e1a0e823 	lsr	lr, r3, #16
60302b04:	e0216192 	mla	r1, r2, r1, r6
60302b08:	e1a03821 	lsr	r3, r1, #16
60302b0c:	e6ff1071 	uxth	r1, r1
60302b10:	e0233e92 	mla	r3, r2, lr, r3
60302b14:	e0811803 	add	r1, r1, r3, lsl #16
60302b18:	e1a06823 	lsr	r6, r3, #16
60302b1c:	e48c1004 	str	r1, [ip], #4
60302b20:	cafffff2 	bgt	60302af0 <__multadd+0x1c>
60302b24:	e3560000 	cmp	r6, #0
60302b28:	0a00001b 	beq	60302b9c <__multadd+0xc8>
60302b2c:	e5943008 	ldr	r3, [r4, #8]
60302b30:	e1530005 	cmp	r3, r5
60302b34:	ca000014 	bgt	60302b8c <__multadd+0xb8>
60302b38:	e5941004 	ldr	r1, [r4, #4]
60302b3c:	e1a00007 	mov	r0, r7
60302b40:	e2811001 	add	r1, r1, #1
60302b44:	ebffff8a 	bl	60302974 <_Balloc>
60302b48:	e2508000 	subs	r8, r0, #0
60302b4c:	1a000004 	bne	60302b64 <__multadd+0x90>
60302b50:	e59f304c 	ldr	r3, [pc, #76]	; 60302ba4 <__multadd+0xd0>
60302b54:	e1a02008 	mov	r2, r8
60302b58:	e59f0048 	ldr	r0, [pc, #72]	; 60302ba8 <__multadd+0xd4>
60302b5c:	e3a010b5 	mov	r1, #181	; 0xb5
60302b60:	ebfffa94 	bl	603015b8 <__assert_func>
60302b64:	e5942010 	ldr	r2, [r4, #16]
60302b68:	e284100c 	add	r1, r4, #12
60302b6c:	e288000c 	add	r0, r8, #12
60302b70:	e2822002 	add	r2, r2, #2
60302b74:	e1a02102 	lsl	r2, r2, #2
60302b78:	eb002a11 	bl	6030d3c4 <__wrap_memcpy>
60302b7c:	e1a01004 	mov	r1, r4
60302b80:	e1a04008 	mov	r4, r8
60302b84:	e1a00007 	mov	r0, r7
60302b88:	ebffffb2 	bl	60302a58 <_Bfree>
60302b8c:	e0843105 	add	r3, r4, r5, lsl #2
60302b90:	e2855001 	add	r5, r5, #1
60302b94:	e5836014 	str	r6, [r3, #20]
60302b98:	e5845010 	str	r5, [r4, #16]
60302b9c:	e1a00004 	mov	r0, r4
60302ba0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60302ba4:	60315bbd 	.word	0x60315bbd
60302ba8:	60315bce 	.word	0x60315bce

60302bac <__s2b>:
60302bac:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
60302bb0:	e1a05002 	mov	r5, r2
60302bb4:	e59f20d8 	ldr	r2, [pc, #216]	; 60302c94 <__s2b+0xe8>
60302bb8:	e1a07003 	mov	r7, r3
60302bbc:	e2833008 	add	r3, r3, #8
60302bc0:	e1a04001 	mov	r4, r1
60302bc4:	e1a06000 	mov	r6, r0
60302bc8:	e0c12293 	smull	r2, r1, r3, r2
60302bcc:	e1a03fc3 	asr	r3, r3, #31
60302bd0:	e3a02001 	mov	r2, #1
60302bd4:	e06330c1 	rsb	r3, r3, r1, asr #1
60302bd8:	e3a01000 	mov	r1, #0
60302bdc:	e1520003 	cmp	r2, r3
60302be0:	ba000008 	blt	60302c08 <__s2b+0x5c>
60302be4:	e1a00006 	mov	r0, r6
60302be8:	ebffff61 	bl	60302974 <_Balloc>
60302bec:	e3500000 	cmp	r0, #0
60302bf0:	1a000007 	bne	60302c14 <__s2b+0x68>
60302bf4:	e1a02000 	mov	r2, r0
60302bf8:	e59f3098 	ldr	r3, [pc, #152]	; 60302c98 <__s2b+0xec>
60302bfc:	e59f0098 	ldr	r0, [pc, #152]	; 60302c9c <__s2b+0xf0>
60302c00:	e3a010ce 	mov	r1, #206	; 0xce
60302c04:	ebfffa6b 	bl	603015b8 <__assert_func>
60302c08:	e1a02082 	lsl	r2, r2, #1
60302c0c:	e2811001 	add	r1, r1, #1
60302c10:	eafffff1 	b	60302bdc <__s2b+0x30>
60302c14:	e59d3020 	ldr	r3, [sp, #32]
60302c18:	e3550009 	cmp	r5, #9
60302c1c:	e5803014 	str	r3, [r0, #20]
60302c20:	d284400a 	addle	r4, r4, #10
60302c24:	e3a03001 	mov	r3, #1
60302c28:	d3a05009 	movle	r5, #9
60302c2c:	e5803010 	str	r3, [r0, #16]
60302c30:	da00000c 	ble	60302c68 <__s2b+0xbc>
60302c34:	e2849009 	add	r9, r4, #9
60302c38:	e0844005 	add	r4, r4, r5
60302c3c:	e1a08009 	mov	r8, r9
60302c40:	e4d83001 	ldrb	r3, [r8], #1
60302c44:	e1a01000 	mov	r1, r0
60302c48:	e3a0200a 	mov	r2, #10
60302c4c:	e1a00006 	mov	r0, r6
60302c50:	e2433030 	sub	r3, r3, #48	; 0x30
60302c54:	ebffff9e 	bl	60302ad4 <__multadd>
60302c58:	e1580004 	cmp	r8, r4
60302c5c:	1afffff7 	bne	60302c40 <__s2b+0x94>
60302c60:	e2454008 	sub	r4, r5, #8
60302c64:	e0894004 	add	r4, r9, r4
60302c68:	e0455004 	sub	r5, r5, r4
60302c6c:	e0843005 	add	r3, r4, r5
60302c70:	e1530007 	cmp	r3, r7
60302c74:	a8bd87f0 	popge	{r4, r5, r6, r7, r8, r9, sl, pc}
60302c78:	e4d43001 	ldrb	r3, [r4], #1
60302c7c:	e1a01000 	mov	r1, r0
60302c80:	e3a0200a 	mov	r2, #10
60302c84:	e1a00006 	mov	r0, r6
60302c88:	e2433030 	sub	r3, r3, #48	; 0x30
60302c8c:	ebffff90 	bl	60302ad4 <__multadd>
60302c90:	eafffff5 	b	60302c6c <__s2b+0xc0>
60302c94:	38e38e39 	.word	0x38e38e39
60302c98:	60315bbd 	.word	0x60315bbd
60302c9c:	60315bce 	.word	0x60315bce

60302ca0 <__hi0bits>:
60302ca0:	e1a02820 	lsr	r2, r0, #16
60302ca4:	e1a03000 	mov	r3, r0
60302ca8:	e1a02802 	lsl	r2, r2, #16
60302cac:	e3520000 	cmp	r2, #0
60302cb0:	01a03800 	lsleq	r3, r0, #16
60302cb4:	13a00000 	movne	r0, #0
60302cb8:	03a00010 	moveq	r0, #16
60302cbc:	e31304ff 	tst	r3, #-16777216	; 0xff000000
60302cc0:	01a03403 	lsleq	r3, r3, #8
60302cc4:	02800008 	addeq	r0, r0, #8
60302cc8:	e313020f 	tst	r3, #-268435456	; 0xf0000000
60302ccc:	01a03203 	lsleq	r3, r3, #4
60302cd0:	02800004 	addeq	r0, r0, #4
60302cd4:	e3130103 	tst	r3, #-1073741824	; 0xc0000000
60302cd8:	01a03103 	lsleq	r3, r3, #2
60302cdc:	02800002 	addeq	r0, r0, #2
60302ce0:	e3530000 	cmp	r3, #0
60302ce4:	b12fff1e 	bxlt	lr
60302ce8:	e3130101 	tst	r3, #1073741824	; 0x40000000
60302cec:	12800001 	addne	r0, r0, #1
60302cf0:	03a00020 	moveq	r0, #32
60302cf4:	e12fff1e 	bx	lr

60302cf8 <__lo0bits>:
60302cf8:	e5903000 	ldr	r3, [r0]
60302cfc:	e1a02000 	mov	r2, r0
60302d00:	e2130007 	ands	r0, r3, #7
60302d04:	0a000009 	beq	60302d30 <__lo0bits+0x38>
60302d08:	e3130001 	tst	r3, #1
60302d0c:	1a00001c 	bne	60302d84 <__lo0bits+0x8c>
60302d10:	e3130002 	tst	r3, #2
60302d14:	11a030a3 	lsrne	r3, r3, #1
60302d18:	13a00001 	movne	r0, #1
60302d1c:	01a03123 	lsreq	r3, r3, #2
60302d20:	15823000 	strne	r3, [r2]
60302d24:	03a00002 	moveq	r0, #2
60302d28:	05823000 	streq	r3, [r2]
60302d2c:	e12fff1e 	bx	lr
60302d30:	e6ff1073 	uxth	r1, r3
60302d34:	e3510000 	cmp	r1, #0
60302d38:	01a03823 	lsreq	r3, r3, #16
60302d3c:	03a00010 	moveq	r0, #16
60302d40:	e6ef1073 	uxtb	r1, r3
60302d44:	e3510000 	cmp	r1, #0
60302d48:	01a03423 	lsreq	r3, r3, #8
60302d4c:	02800008 	addeq	r0, r0, #8
60302d50:	e313000f 	tst	r3, #15
60302d54:	01a03223 	lsreq	r3, r3, #4
60302d58:	02800004 	addeq	r0, r0, #4
60302d5c:	e3130003 	tst	r3, #3
60302d60:	01a03123 	lsreq	r3, r3, #2
60302d64:	02800002 	addeq	r0, r0, #2
60302d68:	e3130001 	tst	r3, #1
60302d6c:	1a000002 	bne	60302d7c <__lo0bits+0x84>
60302d70:	e2800001 	add	r0, r0, #1
60302d74:	e1b030a3 	lsrs	r3, r3, #1
60302d78:	0a000003 	beq	60302d8c <__lo0bits+0x94>
60302d7c:	e5823000 	str	r3, [r2]
60302d80:	e12fff1e 	bx	lr
60302d84:	e3a00000 	mov	r0, #0
60302d88:	e12fff1e 	bx	lr
60302d8c:	e3a00020 	mov	r0, #32
60302d90:	e12fff1e 	bx	lr

60302d94 <__i2b>:
60302d94:	e92d4010 	push	{r4, lr}
60302d98:	e1a04001 	mov	r4, r1
60302d9c:	e3a01001 	mov	r1, #1
60302da0:	ebfffef3 	bl	60302974 <_Balloc>
60302da4:	e2502000 	subs	r2, r0, #0
60302da8:	1a000003 	bne	60302dbc <__i2b+0x28>
60302dac:	e59f3018 	ldr	r3, [pc, #24]	; 60302dcc <__i2b+0x38>
60302db0:	e3a01d05 	mov	r1, #320	; 0x140
60302db4:	e59f0014 	ldr	r0, [pc, #20]	; 60302dd0 <__i2b+0x3c>
60302db8:	ebfff9fe 	bl	603015b8 <__assert_func>
60302dbc:	e3a03001 	mov	r3, #1
60302dc0:	e5824014 	str	r4, [r2, #20]
60302dc4:	e5823010 	str	r3, [r2, #16]
60302dc8:	e8bd8010 	pop	{r4, pc}
60302dcc:	60315bbd 	.word	0x60315bbd
60302dd0:	60315bce 	.word	0x60315bce

60302dd4 <__multiply>:
60302dd4:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
60302dd8:	e1a06002 	mov	r6, r2
60302ddc:	e5912010 	ldr	r2, [r1, #16]
60302de0:	e1a04001 	mov	r4, r1
60302de4:	e24dd014 	sub	sp, sp, #20
60302de8:	e5963010 	ldr	r3, [r6, #16]
60302dec:	e1520003 	cmp	r2, r3
60302df0:	b1a03001 	movlt	r3, r1
60302df4:	b1a04006 	movlt	r4, r6
60302df8:	b1a06003 	movlt	r6, r3
60302dfc:	e5949010 	ldr	r9, [r4, #16]
60302e00:	e5967010 	ldr	r7, [r6, #16]
60302e04:	e5943008 	ldr	r3, [r4, #8]
60302e08:	e5941004 	ldr	r1, [r4, #4]
60302e0c:	e0895007 	add	r5, r9, r7
60302e10:	e1530005 	cmp	r3, r5
60302e14:	b2811001 	addlt	r1, r1, #1
60302e18:	ebfffed5 	bl	60302974 <_Balloc>
60302e1c:	e3500000 	cmp	r0, #0
60302e20:	1a000004 	bne	60302e38 <__multiply+0x64>
60302e24:	e1a02000 	mov	r2, r0
60302e28:	e59f3168 	ldr	r3, [pc, #360]	; 60302f98 <__multiply+0x1c4>
60302e2c:	e59f0168 	ldr	r0, [pc, #360]	; 60302f9c <__multiply+0x1c8>
60302e30:	e300115d 	movw	r1, #349	; 0x15d
60302e34:	ebfff9df 	bl	603015b8 <__assert_func>
60302e38:	e280c014 	add	ip, r0, #20
60302e3c:	e3a02000 	mov	r2, #0
60302e40:	e08c8105 	add	r8, ip, r5, lsl #2
60302e44:	e1a0300c 	mov	r3, ip
60302e48:	e1530008 	cmp	r3, r8
60302e4c:	3a000018 	bcc	60302eb4 <__multiply+0xe0>
60302e50:	e284e014 	add	lr, r4, #20
60302e54:	e2863014 	add	r3, r6, #20
60302e58:	e08ee109 	add	lr, lr, r9, lsl #2
60302e5c:	e0832107 	add	r2, r3, r7, lsl #2
60302e60:	e58d2008 	str	r2, [sp, #8]
60302e64:	e04e2004 	sub	r2, lr, r4
60302e68:	e2422015 	sub	r2, r2, #21
60302e6c:	e2841015 	add	r1, r4, #21
60302e70:	e3c22003 	bic	r2, r2, #3
60302e74:	e15e0001 	cmp	lr, r1
60302e78:	e2822004 	add	r2, r2, #4
60302e7c:	33a02004 	movcc	r2, #4
60302e80:	e58d2004 	str	r2, [sp, #4]
60302e84:	e59d2008 	ldr	r2, [sp, #8]
60302e88:	e58d300c 	str	r3, [sp, #12]
60302e8c:	e1520003 	cmp	r2, r3
60302e90:	8a000009 	bhi	60302ebc <__multiply+0xe8>
60302e94:	e3550000 	cmp	r5, #0
60302e98:	da000002 	ble	60302ea8 <__multiply+0xd4>
60302e9c:	e5383004 	ldr	r3, [r8, #-4]!
60302ea0:	e3530000 	cmp	r3, #0
60302ea4:	0a000039 	beq	60302f90 <__multiply+0x1bc>
60302ea8:	e5805010 	str	r5, [r0, #16]
60302eac:	e28dd014 	add	sp, sp, #20
60302eb0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
60302eb4:	e4832004 	str	r2, [r3], #4
60302eb8:	eaffffe2 	b	60302e48 <__multiply+0x74>
60302ebc:	e1d3a0b0 	ldrh	sl, [r3]
60302ec0:	e35a0000 	cmp	sl, #0
60302ec4:	0a000015 	beq	60302f20 <__multiply+0x14c>
60302ec8:	e2847014 	add	r7, r4, #20
60302ecc:	e1a0900c 	mov	r9, ip
60302ed0:	e3a06000 	mov	r6, #0
60302ed4:	e4972004 	ldr	r2, [r7], #4
60302ed8:	e5991000 	ldr	r1, [r9]
60302edc:	e15e0007 	cmp	lr, r7
60302ee0:	e6ffb072 	uxth	fp, r2
60302ee4:	e1a02822 	lsr	r2, r2, #16
60302ee8:	e6ff1071 	uxth	r1, r1
60302eec:	e0211b9a 	mla	r1, sl, fp, r1
60302ef0:	e0811006 	add	r1, r1, r6
60302ef4:	e5996000 	ldr	r6, [r9]
60302ef8:	e1a06826 	lsr	r6, r6, #16
60302efc:	e022629a 	mla	r2, sl, r2, r6
60302f00:	e0822821 	add	r2, r2, r1, lsr #16
60302f04:	e6ff1071 	uxth	r1, r1
60302f08:	e1811802 	orr	r1, r1, r2, lsl #16
60302f0c:	e1a06822 	lsr	r6, r2, #16
60302f10:	e4891004 	str	r1, [r9], #4
60302f14:	8affffee 	bhi	60302ed4 <__multiply+0x100>
60302f18:	e59d2004 	ldr	r2, [sp, #4]
60302f1c:	e78c6002 	str	r6, [ip, r2]
60302f20:	e59d200c 	ldr	r2, [sp, #12]
60302f24:	e2833004 	add	r3, r3, #4
60302f28:	e1d290b2 	ldrh	r9, [r2, #2]
60302f2c:	e3590000 	cmp	r9, #0
60302f30:	0a000014 	beq	60302f88 <__multiply+0x1b4>
60302f34:	e59c1000 	ldr	r1, [ip]
60302f38:	e2846014 	add	r6, r4, #20
60302f3c:	e1a0700c 	mov	r7, ip
60302f40:	e3a0a000 	mov	sl, #0
60302f44:	e1d6b0b0 	ldrh	fp, [r6]
60302f48:	e6ff1071 	uxth	r1, r1
60302f4c:	e1d720b2 	ldrh	r2, [r7, #2]
60302f50:	e0222b99 	mla	r2, r9, fp, r2
60302f54:	e082a00a 	add	sl, r2, sl
60302f58:	e181180a 	orr	r1, r1, sl, lsl #16
60302f5c:	e4871004 	str	r1, [r7], #4
60302f60:	e4962004 	ldr	r2, [r6], #4
60302f64:	e1d710b0 	ldrh	r1, [r7]
60302f68:	e15e0006 	cmp	lr, r6
60302f6c:	e1a02822 	lsr	r2, r2, #16
60302f70:	e0211299 	mla	r1, r9, r2, r1
60302f74:	e081182a 	add	r1, r1, sl, lsr #16
60302f78:	e1a0a821 	lsr	sl, r1, #16
60302f7c:	8afffff0 	bhi	60302f44 <__multiply+0x170>
60302f80:	e59d2004 	ldr	r2, [sp, #4]
60302f84:	e78c1002 	str	r1, [ip, r2]
60302f88:	e28cc004 	add	ip, ip, #4
60302f8c:	eaffffbc 	b	60302e84 <__multiply+0xb0>
60302f90:	e2455001 	sub	r5, r5, #1
60302f94:	eaffffbe 	b	60302e94 <__multiply+0xc0>
60302f98:	60315bbd 	.word	0x60315bbd
60302f9c:	60315bce 	.word	0x60315bce

60302fa0 <__pow5mult>:
60302fa0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
60302fa4:	e1a05002 	mov	r5, r2
60302fa8:	e2122003 	ands	r2, r2, #3
60302fac:	e1a06000 	mov	r6, r0
60302fb0:	01a07001 	moveq	r7, r1
60302fb4:	0a000005 	beq	60302fd0 <__pow5mult+0x30>
60302fb8:	e59fc0f4 	ldr	ip, [pc, #244]	; 603030b4 <__pow5mult+0x114>
60302fbc:	e2422001 	sub	r2, r2, #1
60302fc0:	e3a03000 	mov	r3, #0
60302fc4:	e79c2102 	ldr	r2, [ip, r2, lsl #2]
60302fc8:	ebfffec1 	bl	60302ad4 <__multadd>
60302fcc:	e1a07000 	mov	r7, r0
60302fd0:	e1b05145 	asrs	r5, r5, #2
60302fd4:	0a000034 	beq	603030ac <__pow5mult+0x10c>
60302fd8:	e5964024 	ldr	r4, [r6, #36]	; 0x24
60302fdc:	e3540000 	cmp	r4, #0
60302fe0:	1a00000d 	bne	6030301c <__pow5mult+0x7c>
60302fe4:	e3a00010 	mov	r0, #16
60302fe8:	eb002aac 	bl	6030daa0 <__wrap_malloc>
60302fec:	e1a02000 	mov	r2, r0
60302ff0:	e3500000 	cmp	r0, #0
60302ff4:	e5860024 	str	r0, [r6, #36]	; 0x24
60302ff8:	1a000003 	bne	6030300c <__pow5mult+0x6c>
60302ffc:	e59f30b4 	ldr	r3, [pc, #180]	; 603030b8 <__pow5mult+0x118>
60303000:	e30011ae 	movw	r1, #430	; 0x1ae
60303004:	e59f00b0 	ldr	r0, [pc, #176]	; 603030bc <__pow5mult+0x11c>
60303008:	ebfff96a 	bl	603015b8 <__assert_func>
6030300c:	e5804004 	str	r4, [r0, #4]
60303010:	e5804008 	str	r4, [r0, #8]
60303014:	e5804000 	str	r4, [r0]
60303018:	e580400c 	str	r4, [r0, #12]
6030301c:	e5968024 	ldr	r8, [r6, #36]	; 0x24
60303020:	e5984008 	ldr	r4, [r8, #8]
60303024:	e3540000 	cmp	r4, #0
60303028:	1a000006 	bne	60303048 <__pow5mult+0xa8>
6030302c:	e1a00006 	mov	r0, r6
60303030:	e3001271 	movw	r1, #625	; 0x271
60303034:	ebffff56 	bl	60302d94 <__i2b>
60303038:	e1a04000 	mov	r4, r0
6030303c:	e3a03000 	mov	r3, #0
60303040:	e5880008 	str	r0, [r8, #8]
60303044:	e5803000 	str	r3, [r0]
60303048:	e3a09000 	mov	r9, #0
6030304c:	e3150001 	tst	r5, #1
60303050:	0a000008 	beq	60303078 <__pow5mult+0xd8>
60303054:	e1a01007 	mov	r1, r7
60303058:	e1a02004 	mov	r2, r4
6030305c:	e1a00006 	mov	r0, r6
60303060:	ebffff5b 	bl	60302dd4 <__multiply>
60303064:	e1a08000 	mov	r8, r0
60303068:	e1a01007 	mov	r1, r7
6030306c:	e1a07008 	mov	r7, r8
60303070:	e1a00006 	mov	r0, r6
60303074:	ebfffe77 	bl	60302a58 <_Bfree>
60303078:	e1b050c5 	asrs	r5, r5, #1
6030307c:	0a00000a 	beq	603030ac <__pow5mult+0x10c>
60303080:	e5940000 	ldr	r0, [r4]
60303084:	e3500000 	cmp	r0, #0
60303088:	1a000005 	bne	603030a4 <__pow5mult+0x104>
6030308c:	e1a02004 	mov	r2, r4
60303090:	e1a01004 	mov	r1, r4
60303094:	e1a00006 	mov	r0, r6
60303098:	ebffff4d 	bl	60302dd4 <__multiply>
6030309c:	e5840000 	str	r0, [r4]
603030a0:	e5809000 	str	r9, [r0]
603030a4:	e1a04000 	mov	r4, r0
603030a8:	eaffffe7 	b	6030304c <__pow5mult+0xac>
603030ac:	e1a00007 	mov	r0, r7
603030b0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
603030b4:	60313f88 	.word	0x60313f88
603030b8:	60315b5f 	.word	0x60315b5f
603030bc:	60315bce 	.word	0x60315bce

603030c0 <__lshift>:
603030c0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
603030c4:	e1a04001 	mov	r4, r1
603030c8:	e5911004 	ldr	r1, [r1, #4]
603030cc:	e1a07000 	mov	r7, r0
603030d0:	e1a09002 	mov	r9, r2
603030d4:	e5948010 	ldr	r8, [r4, #16]
603030d8:	e1a0a2c2 	asr	sl, r2, #5
603030dc:	e5943008 	ldr	r3, [r4, #8]
603030e0:	e08882c2 	add	r8, r8, r2, asr #5
603030e4:	e2886001 	add	r6, r8, #1
603030e8:	e1530006 	cmp	r3, r6
603030ec:	ba000008 	blt	60303114 <__lshift+0x54>
603030f0:	e1a00007 	mov	r0, r7
603030f4:	ebfffe1e 	bl	60302974 <_Balloc>
603030f8:	e2505000 	subs	r5, r0, #0
603030fc:	1a000007 	bne	60303120 <__lshift+0x60>
60303100:	e59f30dc 	ldr	r3, [pc, #220]	; 603031e4 <__lshift+0x124>
60303104:	e1a02005 	mov	r2, r5
60303108:	e59f00d8 	ldr	r0, [pc, #216]	; 603031e8 <__lshift+0x128>
6030310c:	e30011d9 	movw	r1, #473	; 0x1d9
60303110:	ebfff928 	bl	603015b8 <__assert_func>
60303114:	e2811001 	add	r1, r1, #1
60303118:	e1a03083 	lsl	r3, r3, #1
6030311c:	eafffff1 	b	603030e8 <__lshift+0x28>
60303120:	e3a03000 	mov	r3, #0
60303124:	e2851014 	add	r1, r5, #20
60303128:	e2852010 	add	r2, r5, #16
6030312c:	e1a00003 	mov	r0, r3
60303130:	e153000a 	cmp	r3, sl
60303134:	ba000021 	blt	603031c0 <__lshift+0x100>
60303138:	e5940010 	ldr	r0, [r4, #16]
6030313c:	e1caafca 	bic	sl, sl, sl, asr #31
60303140:	e2843014 	add	r3, r4, #20
60303144:	e219901f 	ands	r9, r9, #31
60303148:	e081110a 	add	r1, r1, sl, lsl #2
6030314c:	e0830100 	add	r0, r3, r0, lsl #2
60303150:	0a00001d 	beq	603031cc <__lshift+0x10c>
60303154:	e2692020 	rsb	r2, r9, #32
60303158:	e1a0a001 	mov	sl, r1
6030315c:	e3a0c000 	mov	ip, #0
60303160:	e593e000 	ldr	lr, [r3]
60303164:	e18cc91e 	orr	ip, ip, lr, lsl r9
60303168:	e48ac004 	str	ip, [sl], #4
6030316c:	e493c004 	ldr	ip, [r3], #4
60303170:	e1500003 	cmp	r0, r3
60303174:	e1a0c23c 	lsr	ip, ip, r2
60303178:	8afffff8 	bhi	60303160 <__lshift+0xa0>
6030317c:	e0403004 	sub	r3, r0, r4
60303180:	e2842015 	add	r2, r4, #21
60303184:	e2433015 	sub	r3, r3, #21
60303188:	e1500002 	cmp	r0, r2
6030318c:	e3c33003 	bic	r3, r3, #3
60303190:	e2833004 	add	r3, r3, #4
60303194:	33a03004 	movcc	r3, #4
60303198:	e35c0000 	cmp	ip, #0
6030319c:	12886002 	addne	r6, r8, #2
603031a0:	e781c003 	str	ip, [r1, r3]
603031a4:	e1a00007 	mov	r0, r7
603031a8:	e2466001 	sub	r6, r6, #1
603031ac:	e1a01004 	mov	r1, r4
603031b0:	e5856010 	str	r6, [r5, #16]
603031b4:	ebfffe27 	bl	60302a58 <_Bfree>
603031b8:	e1a00005 	mov	r0, r5
603031bc:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
603031c0:	e2833001 	add	r3, r3, #1
603031c4:	e5a20004 	str	r0, [r2, #4]!
603031c8:	eaffffd8 	b	60303130 <__lshift+0x70>
603031cc:	e2411004 	sub	r1, r1, #4
603031d0:	e4932004 	ldr	r2, [r3], #4
603031d4:	e5a12004 	str	r2, [r1, #4]!
603031d8:	e1500003 	cmp	r0, r3
603031dc:	8afffffb 	bhi	603031d0 <__lshift+0x110>
603031e0:	eaffffef 	b	603031a4 <__lshift+0xe4>
603031e4:	60315bbd 	.word	0x60315bbd
603031e8:	60315bce 	.word	0x60315bce

603031ec <__mcmp>:
603031ec:	e5912010 	ldr	r2, [r1, #16]
603031f0:	e1a03000 	mov	r3, r0
603031f4:	e5900010 	ldr	r0, [r0, #16]
603031f8:	e0500002 	subs	r0, r0, r2
603031fc:	112fff1e 	bxne	lr
60303200:	e2833014 	add	r3, r3, #20
60303204:	e2811014 	add	r1, r1, #20
60303208:	e083c102 	add	ip, r3, r2, lsl #2
6030320c:	e0811102 	add	r1, r1, r2, lsl #2
60303210:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
60303214:	e53ce004 	ldr	lr, [ip, #-4]!
60303218:	e5312004 	ldr	r2, [r1, #-4]!
6030321c:	e15e0002 	cmp	lr, r2
60303220:	0a000002 	beq	60303230 <__mcmp+0x44>
60303224:	3a000004 	bcc	6030323c <__mcmp+0x50>
60303228:	e3a00001 	mov	r0, #1
6030322c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
60303230:	e153000c 	cmp	r3, ip
60303234:	3afffff6 	bcc	60303214 <__mcmp+0x28>
60303238:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
6030323c:	e3e00000 	mvn	r0, #0
60303240:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

60303244 <__mdiff>:
60303244:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
60303248:	e1a04001 	mov	r4, r1
6030324c:	e1a06000 	mov	r6, r0
60303250:	e1a01002 	mov	r1, r2
60303254:	e1a00004 	mov	r0, r4
60303258:	e1a08002 	mov	r8, r2
6030325c:	ebffffe2 	bl	603031ec <__mcmp>
60303260:	e2505000 	subs	r5, r0, #0
60303264:	1a00000b 	bne	60303298 <__mdiff+0x54>
60303268:	e1a01005 	mov	r1, r5
6030326c:	e1a00006 	mov	r0, r6
60303270:	ebfffdbf 	bl	60302974 <_Balloc>
60303274:	e2502000 	subs	r2, r0, #0
60303278:	13a03001 	movne	r3, #1
6030327c:	03001232 	movweq	r1, #562	; 0x232
60303280:	059f3138 	ldreq	r3, [pc, #312]	; 603033c0 <__mdiff+0x17c>
60303284:	15823010 	strne	r3, [r2, #16]
60303288:	15825014 	strne	r5, [r2, #20]
6030328c:	1a00003e 	bne	6030338c <__mdiff+0x148>
60303290:	e59f012c 	ldr	r0, [pc, #300]	; 603033c4 <__mdiff+0x180>
60303294:	ebfff8c7 	bl	603015b8 <__assert_func>
60303298:	a1a03008 	movge	r3, r8
6030329c:	a1a08004 	movge	r8, r4
603032a0:	e1a00006 	mov	r0, r6
603032a4:	a1a04003 	movge	r4, r3
603032a8:	a3a05000 	movge	r5, #0
603032ac:	b3a05001 	movlt	r5, #1
603032b0:	e5981004 	ldr	r1, [r8, #4]
603032b4:	ebfffdae 	bl	60302974 <_Balloc>
603032b8:	e2502000 	subs	r2, r0, #0
603032bc:	059f30fc 	ldreq	r3, [pc, #252]	; 603033c0 <__mdiff+0x17c>
603032c0:	03a01d09 	moveq	r1, #576	; 0x240
603032c4:	0afffff1 	beq	60303290 <__mdiff+0x4c>
603032c8:	e594e010 	ldr	lr, [r4, #16]
603032cc:	e2880014 	add	r0, r8, #20
603032d0:	e582500c 	str	r5, [r2, #12]
603032d4:	e284a014 	add	sl, r4, #20
603032d8:	e5985010 	ldr	r5, [r8, #16]
603032dc:	e2827014 	add	r7, r2, #20
603032e0:	e08ae10e 	add	lr, sl, lr, lsl #2
603032e4:	e288c010 	add	ip, r8, #16
603032e8:	e1a0b007 	mov	fp, r7
603032ec:	e3a01000 	mov	r1, #0
603032f0:	e0806105 	add	r6, r0, r5, lsl #2
603032f4:	e49a8004 	ldr	r8, [sl], #4
603032f8:	e5bc3004 	ldr	r3, [ip, #4]!
603032fc:	e15e000a 	cmp	lr, sl
60303300:	e6ff9078 	uxth	r9, r8
60303304:	e1a08828 	lsr	r8, r8, #16
60303308:	e6f11073 	uxtah	r1, r1, r3
6030330c:	e0683823 	rsb	r3, r8, r3, lsr #16
60303310:	e0419009 	sub	r9, r1, r9
60303314:	e0833849 	add	r3, r3, r9, asr #16
60303318:	e6ff9079 	uxth	r9, r9
6030331c:	e1a01843 	asr	r1, r3, #16
60303320:	e1893803 	orr	r3, r9, r3, lsl #16
60303324:	e48b3004 	str	r3, [fp], #4
60303328:	8afffff1 	bhi	603032f4 <__mdiff+0xb0>
6030332c:	e04e3004 	sub	r3, lr, r4
60303330:	e2844015 	add	r4, r4, #21
60303334:	e2433015 	sub	r3, r3, #21
60303338:	e15e0004 	cmp	lr, r4
6030333c:	e3c33003 	bic	r3, r3, #3
60303340:	e2833004 	add	r3, r3, #4
60303344:	33a03004 	movcc	r3, #4
60303348:	e0800003 	add	r0, r0, r3
6030334c:	e0873003 	add	r3, r7, r3
60303350:	e1a07003 	mov	r7, r3
60303354:	e1a04000 	mov	r4, r0
60303358:	e1540006 	cmp	r4, r6
6030335c:	3a00000c 	bcc	60303394 <__mdiff+0x150>
60303360:	e2861003 	add	r1, r6, #3
60303364:	e0411000 	sub	r1, r1, r0
60303368:	e2400003 	sub	r0, r0, #3
6030336c:	e1560000 	cmp	r6, r0
60303370:	e3c11003 	bic	r1, r1, #3
60303374:	33a01000 	movcc	r1, #0
60303378:	e0831001 	add	r1, r3, r1
6030337c:	e5313004 	ldr	r3, [r1, #-4]!
60303380:	e3530000 	cmp	r3, #0
60303384:	0a00000b 	beq	603033b8 <__mdiff+0x174>
60303388:	e5825010 	str	r5, [r2, #16]
6030338c:	e1a00002 	mov	r0, r2
60303390:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
60303394:	e4948004 	ldr	r8, [r4], #4
60303398:	e6f1c078 	uxtah	ip, r1, r8
6030339c:	e1a0e84c 	asr	lr, ip, #16
603033a0:	e6ffc07c 	uxth	ip, ip
603033a4:	e08ee828 	add	lr, lr, r8, lsr #16
603033a8:	e18cc80e 	orr	ip, ip, lr, lsl #16
603033ac:	e1a0184e 	asr	r1, lr, #16
603033b0:	e487c004 	str	ip, [r7], #4
603033b4:	eaffffe7 	b	60303358 <__mdiff+0x114>
603033b8:	e2455001 	sub	r5, r5, #1
603033bc:	eaffffee 	b	6030337c <__mdiff+0x138>
603033c0:	60315bbd 	.word	0x60315bbd
603033c4:	60315bce 	.word	0x60315bce

603033c8 <__ulp>:
603033c8:	e24dd008 	sub	sp, sp, #8
603033cc:	e59f1060 	ldr	r1, [pc, #96]	; 60303434 <__ulp+0x6c>
603033d0:	ed8d0b00 	vstr	d0, [sp]
603033d4:	e59d3004 	ldr	r3, [sp, #4]
603033d8:	e0011003 	and	r1, r1, r3
603033dc:	e241150d 	sub	r1, r1, #54525952	; 0x3400000
603033e0:	e3510000 	cmp	r1, #0
603033e4:	c3a02000 	movgt	r2, #0
603033e8:	c1a03001 	movgt	r3, r1
603033ec:	ca00000d 	bgt	60303428 <__ulp+0x60>
603033f0:	e2611000 	rsb	r1, r1, #0
603033f4:	e3a03000 	mov	r3, #0
603033f8:	e3510505 	cmp	r1, #20971520	; 0x1400000
603033fc:	e3a02000 	mov	r2, #0
60303400:	e1a00a41 	asr	r0, r1, #20
60303404:	b3a01702 	movlt	r1, #524288	; 0x80000
60303408:	b1a03051 	asrlt	r3, r1, r0
6030340c:	ba000005 	blt	60303428 <__ulp+0x60>
60303410:	e2401014 	sub	r1, r0, #20
60303414:	e351001e 	cmp	r1, #30
60303418:	d3a00102 	movle	r0, #-2147483648	; 0x80000000
6030341c:	c3a01001 	movgt	r1, #1
60303420:	d1a01130 	lsrle	r1, r0, r1
60303424:	e1a02001 	mov	r2, r1
60303428:	ec432b10 	vmov	d0, r2, r3
6030342c:	e28dd008 	add	sp, sp, #8
60303430:	e12fff1e 	bx	lr
60303434:	7ff00000 	.word	0x7ff00000

60303438 <__b2d>:
60303438:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
6030343c:	e2807014 	add	r7, r0, #20
60303440:	e5904010 	ldr	r4, [r0, #16]
60303444:	e0874104 	add	r4, r7, r4, lsl #2
60303448:	e2446004 	sub	r6, r4, #4
6030344c:	e5145004 	ldr	r5, [r4, #-4]
60303450:	e1a00005 	mov	r0, r5
60303454:	ebfffe11 	bl	60302ca0 <__hi0bits>
60303458:	e59fc084 	ldr	ip, [pc, #132]	; 603034e4 <__b2d+0xac>
6030345c:	e2603020 	rsb	r3, r0, #32
60303460:	e350000a 	cmp	r0, #10
60303464:	e5813000 	str	r3, [r1]
60303468:	ca000009 	bgt	60303494 <__b2d+0x5c>
6030346c:	e1570006 	cmp	r7, r6
60303470:	e260e00b 	rsb	lr, r0, #11
60303474:	23a01000 	movcs	r1, #0
60303478:	e2800015 	add	r0, r0, #21
6030347c:	e18c3e35 	orr	r3, ip, r5, lsr lr
60303480:	35141008 	ldrcc	r1, [r4, #-8]
60303484:	e1a01e31 	lsr	r1, r1, lr
60303488:	e1812015 	orr	r2, r1, r5, lsl r0
6030348c:	ec432b10 	vmov	d0, r2, r3
60303490:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60303494:	e1570006 	cmp	r7, r6
60303498:	32446008 	subcc	r6, r4, #8
6030349c:	23a01000 	movcs	r1, #0
603034a0:	35141008 	ldrcc	r1, [r4, #-8]
603034a4:	e250000b 	subs	r0, r0, #11
603034a8:	0a00000a 	beq	603034d8 <__b2d+0xa0>
603034ac:	e1560007 	cmp	r6, r7
603034b0:	e260e020 	rsb	lr, r0, #32
603034b4:	93a0c000 	movls	ip, #0
603034b8:	e1a03e31 	lsr	r3, r1, lr
603034bc:	8516c004 	ldrhi	ip, [r6, #-4]
603034c0:	e1835015 	orr	r5, r3, r5, lsl r0
603034c4:	e38535ff 	orr	r3, r5, #1069547520	; 0x3fc00000
603034c8:	e3833603 	orr	r3, r3, #3145728	; 0x300000
603034cc:	e1a0ce3c 	lsr	ip, ip, lr
603034d0:	e18c2011 	orr	r2, ip, r1, lsl r0
603034d4:	eaffffec 	b	6030348c <__b2d+0x54>
603034d8:	e185300c 	orr	r3, r5, ip
603034dc:	e1a02001 	mov	r2, r1
603034e0:	eaffffe9 	b	6030348c <__b2d+0x54>
603034e4:	3ff00000 	.word	0x3ff00000

603034e8 <__d2b>:
603034e8:	e92d43f7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
603034ec:	e1a09001 	mov	r9, r1
603034f0:	e3a01001 	mov	r1, #1
603034f4:	ec576b10 	vmov	r6, r7, d0
603034f8:	e1a08002 	mov	r8, r2
603034fc:	ebfffd1c 	bl	60302974 <_Balloc>
60303500:	e2504000 	subs	r4, r0, #0
60303504:	1a000004 	bne	6030351c <__d2b+0x34>
60303508:	e59f30e0 	ldr	r3, [pc, #224]	; 603035f0 <__d2b+0x108>
6030350c:	e1a02004 	mov	r2, r4
60303510:	e59f00dc 	ldr	r0, [pc, #220]	; 603035f4 <__d2b+0x10c>
60303514:	e300130a 	movw	r1, #778	; 0x30a
60303518:	ebfff826 	bl	603015b8 <__assert_func>
6030351c:	e7ea5a57 	ubfx	r5, r7, #20, #11
60303520:	e7f33057 	ubfx	r3, r7, #0, #20
60303524:	e3550000 	cmp	r5, #0
60303528:	13833601 	orrne	r3, r3, #1048576	; 0x100000
6030352c:	e3560000 	cmp	r6, #0
60303530:	e58d3004 	str	r3, [sp, #4]
60303534:	0a00001c 	beq	603035ac <__d2b+0xc4>
60303538:	e1a0000d 	mov	r0, sp
6030353c:	e58d6000 	str	r6, [sp]
60303540:	ebfffdec 	bl	60302cf8 <__lo0bits>
60303544:	e3500000 	cmp	r0, #0
60303548:	e59d3000 	ldr	r3, [sp]
6030354c:	12601020 	rsbne	r1, r0, #32
60303550:	05843014 	streq	r3, [r4, #20]
60303554:	159d2004 	ldrne	r2, [sp, #4]
60303558:	11833112 	orrne	r3, r3, r2, lsl r1
6030355c:	15843014 	strne	r3, [r4, #20]
60303560:	11a02032 	lsrne	r2, r2, r0
60303564:	158d2004 	strne	r2, [sp, #4]
60303568:	e59d3004 	ldr	r3, [sp, #4]
6030356c:	e5843018 	str	r3, [r4, #24]
60303570:	e3530000 	cmp	r3, #0
60303574:	13a01002 	movne	r1, #2
60303578:	03a01001 	moveq	r1, #1
6030357c:	e5841010 	str	r1, [r4, #16]
60303580:	e3550000 	cmp	r5, #0
60303584:	0a000010 	beq	603035cc <__d2b+0xe4>
60303588:	e2455e43 	sub	r5, r5, #1072	; 0x430
6030358c:	e2455003 	sub	r5, r5, #3
60303590:	e0855000 	add	r5, r5, r0
60303594:	e2600035 	rsb	r0, r0, #53	; 0x35
60303598:	e5895000 	str	r5, [r9]
6030359c:	e5880000 	str	r0, [r8]
603035a0:	e1a00004 	mov	r0, r4
603035a4:	e28dd00c 	add	sp, sp, #12
603035a8:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
603035ac:	e28d0004 	add	r0, sp, #4
603035b0:	ebfffdd0 	bl	60302cf8 <__lo0bits>
603035b4:	e59d3004 	ldr	r3, [sp, #4]
603035b8:	e3a01001 	mov	r1, #1
603035bc:	e2800020 	add	r0, r0, #32
603035c0:	e5843014 	str	r3, [r4, #20]
603035c4:	e5841010 	str	r1, [r4, #16]
603035c8:	eaffffec 	b	60303580 <__d2b+0x98>
603035cc:	e0843101 	add	r3, r4, r1, lsl #2
603035d0:	e2400e43 	sub	r0, r0, #1072	; 0x430
603035d4:	e2400002 	sub	r0, r0, #2
603035d8:	e5890000 	str	r0, [r9]
603035dc:	e5930010 	ldr	r0, [r3, #16]
603035e0:	ebfffdae 	bl	60302ca0 <__hi0bits>
603035e4:	e0601281 	rsb	r1, r0, r1, lsl #5
603035e8:	e5881000 	str	r1, [r8]
603035ec:	eaffffeb 	b	603035a0 <__d2b+0xb8>
603035f0:	60315bbd 	.word	0x60315bbd
603035f4:	60315bce 	.word	0x60315bce

603035f8 <__ratio>:
603035f8:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
603035fc:	e1a09000 	mov	r9, r0
60303600:	e1a08001 	mov	r8, r1
60303604:	e1a0100d 	mov	r1, sp
60303608:	ebffff8a 	bl	60303438 <__b2d>
6030360c:	e28d1004 	add	r1, sp, #4
60303610:	e1a00008 	mov	r0, r8
60303614:	ec554b10 	vmov	r4, r5, d0
60303618:	ee10aa10 	vmov	sl, s0
6030361c:	ebffff85 	bl	60303438 <__b2d>
60303620:	e5993010 	ldr	r3, [r9, #16]
60303624:	ec576b10 	vmov	r6, r7, d0
60303628:	e5982010 	ldr	r2, [r8, #16]
6030362c:	ee100a10 	vmov	r0, s0
60303630:	e0432002 	sub	r2, r3, r2
60303634:	e89d1008 	ldm	sp, {r3, ip}
60303638:	e043300c 	sub	r3, r3, ip
6030363c:	e0833282 	add	r3, r3, r2, lsl #5
60303640:	e3530000 	cmp	r3, #0
60303644:	d0633603 	rsble	r3, r3, r3, lsl #12
60303648:	c1a02005 	movgt	r2, r5
6030364c:	d1a02007 	movle	r2, r7
60303650:	c1a01007 	movgt	r1, r7
60303654:	c082ba03 	addgt	fp, r2, r3, lsl #20
60303658:	d1a0b005 	movle	fp, r5
6030365c:	d0821a03 	addle	r1, r2, r3, lsl #20
60303660:	ec4bab30 	vmov	d16, sl, fp
60303664:	ec410b31 	vmov	d17, r0, r1
60303668:	ee800ba1 	vdiv.f64	d0, d16, d17
6030366c:	e28dd00c 	add	sp, sp, #12
60303670:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

60303674 <_mprec_log10>:
60303674:	e3500017 	cmp	r0, #23
60303678:	ceb70b00 	vmovgt.f64	d0, #112	; 0x3f800000  1.0
6030367c:	cef20b04 	vmovgt.f64	d16, #36	; 0x41200000  10.0
60303680:	ca000003 	bgt	60303694 <_mprec_log10+0x20>
60303684:	e59f3018 	ldr	r3, [pc, #24]	; 603036a4 <_mprec_log10+0x30>
60303688:	e0830180 	add	r0, r3, r0, lsl #3
6030368c:	ed900b04 	vldr	d0, [r0, #16]
60303690:	e12fff1e 	bx	lr
60303694:	e2500001 	subs	r0, r0, #1
60303698:	ee200b20 	vmul.f64	d0, d0, d16
6030369c:	1afffffc 	bne	60303694 <_mprec_log10+0x20>
603036a0:	e12fff1e 	bx	lr
603036a4:	60313f88 	.word	0x60313f88

603036a8 <__copybits>:
603036a8:	e2411001 	sub	r1, r1, #1
603036ac:	e592c010 	ldr	ip, [r2, #16]
603036b0:	e2823014 	add	r3, r2, #20
603036b4:	e92d4010 	push	{r4, lr}
603036b8:	e1a012c1 	asr	r1, r1, #5
603036bc:	e2811001 	add	r1, r1, #1
603036c0:	e083c10c 	add	ip, r3, ip, lsl #2
603036c4:	e240e004 	sub	lr, r0, #4
603036c8:	e0801101 	add	r1, r0, r1, lsl #2
603036cc:	e153000c 	cmp	r3, ip
603036d0:	3a00000b 	bcc	60303704 <__copybits+0x5c>
603036d4:	e04c3002 	sub	r3, ip, r2
603036d8:	e2822011 	add	r2, r2, #17
603036dc:	e2433011 	sub	r3, r3, #17
603036e0:	e152000c 	cmp	r2, ip
603036e4:	e3c33003 	bic	r3, r3, #3
603036e8:	83a03000 	movhi	r3, #0
603036ec:	e0800003 	add	r0, r0, r3
603036f0:	e3a03000 	mov	r3, #0
603036f4:	e1500001 	cmp	r0, r1
603036f8:	28bd8010 	popcs	{r4, pc}
603036fc:	e4803004 	str	r3, [r0], #4
60303700:	eafffffb 	b	603036f4 <__copybits+0x4c>
60303704:	e4934004 	ldr	r4, [r3], #4
60303708:	e5ae4004 	str	r4, [lr, #4]!
6030370c:	eaffffee 	b	603036cc <__copybits+0x24>

60303710 <__any_on>:
60303710:	e2802014 	add	r2, r0, #20
60303714:	e5900010 	ldr	r0, [r0, #16]
60303718:	e1a032c1 	asr	r3, r1, #5
6030371c:	e1500003 	cmp	r0, r3
60303720:	ba00000b 	blt	60303754 <__any_on+0x44>
60303724:	da000005 	ble	60303740 <__any_on+0x30>
60303728:	e211101f 	ands	r1, r1, #31
6030372c:	0a000003 	beq	60303740 <__any_on+0x30>
60303730:	e7920103 	ldr	r0, [r2, r3, lsl #2]
60303734:	e1a0c130 	lsr	ip, r0, r1
60303738:	e150011c 	cmp	r0, ip, lsl r1
6030373c:	1a000009 	bne	60303768 <__any_on+0x58>
60303740:	e0823103 	add	r3, r2, r3, lsl #2
60303744:	e1530002 	cmp	r3, r2
60303748:	8a000003 	bhi	6030375c <__any_on+0x4c>
6030374c:	e3a00000 	mov	r0, #0
60303750:	e12fff1e 	bx	lr
60303754:	e1a03000 	mov	r3, r0
60303758:	eafffff8 	b	60303740 <__any_on+0x30>
6030375c:	e5331004 	ldr	r1, [r3, #-4]!
60303760:	e3510000 	cmp	r1, #0
60303764:	0afffff6 	beq	60303744 <__any_on+0x34>
60303768:	e3a00001 	mov	r0, #1
6030376c:	e12fff1e 	bx	lr

60303770 <_read_r>:
60303770:	e92d4070 	push	{r4, r5, r6, lr}
60303774:	e1a04000 	mov	r4, r0
60303778:	e59f502c 	ldr	r5, [pc, #44]	; 603037ac <_read_r+0x3c>
6030377c:	e1a00001 	mov	r0, r1
60303780:	e1a01002 	mov	r1, r2
60303784:	e3a02000 	mov	r2, #0
60303788:	e5852000 	str	r2, [r5]
6030378c:	e1a02003 	mov	r2, r3
60303790:	eb001b16 	bl	6030a3f0 <_read>
60303794:	e3700001 	cmn	r0, #1
60303798:	18bd8070 	popne	{r4, r5, r6, pc}
6030379c:	e5953000 	ldr	r3, [r5]
603037a0:	e3530000 	cmp	r3, #0
603037a4:	15843000 	strne	r3, [r4]
603037a8:	e8bd8070 	pop	{r4, r5, r6, pc}
603037ac:	60323160 	.word	0x60323160

603037b0 <frexp>:
603037b0:	ee101a90 	vmov	r1, s1
603037b4:	e3a02000 	mov	r2, #0
603037b8:	e5802000 	str	r2, [r0]
603037bc:	e59f207c 	ldr	r2, [pc, #124]	; 60303840 <frexp+0x90>
603037c0:	e3c13102 	bic	r3, r1, #-2147483648	; 0x80000000
603037c4:	e1530002 	cmp	r3, r2
603037c8:	c12fff1e 	bxgt	lr
603037cc:	ee102a10 	vmov	r2, s0
603037d0:	e1932002 	orrs	r2, r3, r2
603037d4:	012fff1e 	bxeq	lr
603037d8:	e59f2064 	ldr	r2, [pc, #100]	; 60303844 <frexp+0x94>
603037dc:	e0022001 	and	r2, r2, r1
603037e0:	e3520000 	cmp	r2, #0
603037e4:	1a000005 	bne	60303800 <frexp+0x50>
603037e8:	eddf0b12 	vldr	d16, [pc, #72]	; 60303838 <frexp+0x88>
603037ec:	e3e02035 	mvn	r2, #53	; 0x35
603037f0:	e5802000 	str	r2, [r0]
603037f4:	ee200b20 	vmul.f64	d0, d0, d16
603037f8:	ee101a90 	vmov	r1, s1
603037fc:	e3c13102 	bic	r3, r1, #-2147483648	; 0x80000000
60303800:	e1a03a43 	asr	r3, r3, #20
60303804:	e5902000 	ldr	r2, [r0]
60303808:	e2433fff 	sub	r3, r3, #1020	; 0x3fc
6030380c:	e3c1147f 	bic	r1, r1, #2130706432	; 0x7f000000
60303810:	e2433002 	sub	r3, r3, #2
60303814:	e3c1160f 	bic	r1, r1, #15728640	; 0xf00000
60303818:	e0823003 	add	r3, r2, r3
6030381c:	e5803000 	str	r3, [r0]
60303820:	ec532b10 	vmov	r2, r3, d0
60303824:	e38135ff 	orr	r3, r1, #1069547520	; 0x3fc00000
60303828:	e3833602 	orr	r3, r3, #2097152	; 0x200000
6030382c:	ec432b10 	vmov	d0, r2, r3
60303830:	e12fff1e 	bx	lr
60303834:	e320f000 	nop	{0}
60303838:	00000000 	.word	0x00000000
6030383c:	43500000 	.word	0x43500000
60303840:	7fefffff 	.word	0x7fefffff
60303844:	7ff00000 	.word	0x7ff00000

60303848 <__sprint_r>:
60303848:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030384c:	e1a04002 	mov	r4, r2
60303850:	e5923008 	ldr	r3, [r2, #8]
60303854:	e3530000 	cmp	r3, #0
60303858:	1a000002 	bne	60303868 <__sprint_r+0x20>
6030385c:	e1a00003 	mov	r0, r3
60303860:	e5823004 	str	r3, [r2, #4]
60303864:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
60303868:	e5913064 	ldr	r3, [r1, #100]	; 0x64
6030386c:	e1a07001 	mov	r7, r1
60303870:	e3130a02 	tst	r3, #8192	; 0x2000
60303874:	0a00001b 	beq	603038e8 <__sprint_r+0xa0>
60303878:	e5925000 	ldr	r5, [r2]
6030387c:	e1a08000 	mov	r8, r0
60303880:	e2855008 	add	r5, r5, #8
60303884:	e5156004 	ldr	r6, [r5, #-4]
60303888:	e3a09000 	mov	r9, #0
6030388c:	e515b008 	ldr	fp, [r5, #-8]
60303890:	e1a0a126 	lsr	sl, r6, #2
60303894:	e15a0009 	cmp	sl, r9
60303898:	ca00000a 	bgt	603038c8 <__sprint_r+0x80>
6030389c:	e5940008 	ldr	r0, [r4, #8]
603038a0:	e3c66003 	bic	r6, r6, #3
603038a4:	e2855008 	add	r5, r5, #8
603038a8:	e0400006 	sub	r0, r0, r6
603038ac:	e5840008 	str	r0, [r4, #8]
603038b0:	e3500000 	cmp	r0, #0
603038b4:	1afffff2 	bne	60303884 <__sprint_r+0x3c>
603038b8:	e3a03000 	mov	r3, #0
603038bc:	e5843008 	str	r3, [r4, #8]
603038c0:	e5843004 	str	r3, [r4, #4]
603038c4:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
603038c8:	e79b1109 	ldr	r1, [fp, r9, lsl #2]
603038cc:	e1a02007 	mov	r2, r7
603038d0:	e1a00008 	mov	r0, r8
603038d4:	eb000c7b 	bl	60306ac8 <_fputwc_r>
603038d8:	e3700001 	cmn	r0, #1
603038dc:	0afffff5 	beq	603038b8 <__sprint_r+0x70>
603038e0:	e2899001 	add	r9, r9, #1
603038e4:	eaffffea 	b	60303894 <__sprint_r+0x4c>
603038e8:	eb000cab 	bl	60306b9c <__sfvwrite_r>
603038ec:	eafffff1 	b	603038b8 <__sprint_r+0x70>

603038f0 <_vfiprintf_r>:
603038f0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
603038f4:	e1a08001 	mov	r8, r1
603038f8:	e1a04003 	mov	r4, r3
603038fc:	e24dd0ec 	sub	sp, sp, #236	; 0xec
60303900:	e1a05003 	mov	r5, r3
60303904:	e2509000 	subs	r9, r0, #0
60303908:	e58d2008 	str	r2, [sp, #8]
6030390c:	0a000003 	beq	60303920 <_vfiprintf_r+0x30>
60303910:	e5993018 	ldr	r3, [r9, #24]
60303914:	e3530000 	cmp	r3, #0
60303918:	1a000000 	bne	60303920 <_vfiprintf_r+0x30>
6030391c:	ebfff56f 	bl	60300ee0 <__sinit>
60303920:	e5983064 	ldr	r3, [r8, #100]	; 0x64
60303924:	e3130001 	tst	r3, #1
60303928:	1a000004 	bne	60303940 <_vfiprintf_r+0x50>
6030392c:	e1d830bc 	ldrh	r3, [r8, #12]
60303930:	e3130c02 	tst	r3, #512	; 0x200
60303934:	1a000001 	bne	60303940 <_vfiprintf_r+0x50>
60303938:	e5980058 	ldr	r0, [r8, #88]	; 0x58
6030393c:	ebfff635 	bl	60301218 <__retarget_lock_acquire_recursive>
60303940:	e1d830fc 	ldrsh	r3, [r8, #12]
60303944:	e3130a02 	tst	r3, #8192	; 0x2000
60303948:	1a000004 	bne	60303960 <_vfiprintf_r+0x70>
6030394c:	e3833a02 	orr	r3, r3, #8192	; 0x2000
60303950:	e1c830bc 	strh	r3, [r8, #12]
60303954:	e5983064 	ldr	r3, [r8, #100]	; 0x64
60303958:	e3c33a02 	bic	r3, r3, #8192	; 0x2000
6030395c:	e5883064 	str	r3, [r8, #100]	; 0x64
60303960:	e1d830bc 	ldrh	r3, [r8, #12]
60303964:	e3130008 	tst	r3, #8
60303968:	0a000002 	beq	60303978 <_vfiprintf_r+0x88>
6030396c:	e5983010 	ldr	r3, [r8, #16]
60303970:	e3530000 	cmp	r3, #0
60303974:	1a000012 	bne	603039c4 <_vfiprintf_r+0xd4>
60303978:	e1a01008 	mov	r1, r8
6030397c:	e1a00009 	mov	r0, r9
60303980:	eb000bc5 	bl	6030689c <__swsetup_r>
60303984:	e3500000 	cmp	r0, #0
60303988:	0a00000d 	beq	603039c4 <_vfiprintf_r+0xd4>
6030398c:	e5983064 	ldr	r3, [r8, #100]	; 0x64
60303990:	e3130001 	tst	r3, #1
60303994:	0a000004 	beq	603039ac <_vfiprintf_r+0xbc>
60303998:	e3e03000 	mvn	r3, #0
6030399c:	e58d300c 	str	r3, [sp, #12]
603039a0:	e59d000c 	ldr	r0, [sp, #12]
603039a4:	e28dd0ec 	add	sp, sp, #236	; 0xec
603039a8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
603039ac:	e1d830bc 	ldrh	r3, [r8, #12]
603039b0:	e3130c02 	tst	r3, #512	; 0x200
603039b4:	1afffff7 	bne	60303998 <_vfiprintf_r+0xa8>
603039b8:	e5980058 	ldr	r0, [r8, #88]	; 0x58
603039bc:	ebfff61b 	bl	60301230 <__retarget_lock_release_recursive>
603039c0:	eafffff4 	b	60303998 <_vfiprintf_r+0xa8>
603039c4:	e1d830bc 	ldrh	r3, [r8, #12]
603039c8:	e203201a 	and	r2, r3, #26
603039cc:	e352000a 	cmp	r2, #10
603039d0:	1a000010 	bne	60303a18 <_vfiprintf_r+0x128>
603039d4:	e1d820fe 	ldrsh	r2, [r8, #14]
603039d8:	e3520000 	cmp	r2, #0
603039dc:	ba00000d 	blt	60303a18 <_vfiprintf_r+0x128>
603039e0:	e5982064 	ldr	r2, [r8, #100]	; 0x64
603039e4:	e3120001 	tst	r2, #1
603039e8:	1a000003 	bne	603039fc <_vfiprintf_r+0x10c>
603039ec:	e3130c02 	tst	r3, #512	; 0x200
603039f0:	1a000001 	bne	603039fc <_vfiprintf_r+0x10c>
603039f4:	e5980058 	ldr	r0, [r8, #88]	; 0x58
603039f8:	ebfff60c 	bl	60301230 <__retarget_lock_release_recursive>
603039fc:	e59d2008 	ldr	r2, [sp, #8]
60303a00:	e1a03004 	mov	r3, r4
60303a04:	e1a01008 	mov	r1, r8
60303a08:	e1a00009 	mov	r0, r9
60303a0c:	e28dd0ec 	add	sp, sp, #236	; 0xec
60303a10:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
60303a14:	ea00036d 	b	603047d0 <__sbprintf>
60303a18:	e3a03000 	mov	r3, #0
60303a1c:	e28d7044 	add	r7, sp, #68	; 0x44
60303a20:	e58d3040 	str	r3, [sp, #64]	; 0x40
60303a24:	e58d7038 	str	r7, [sp, #56]	; 0x38
60303a28:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60303a2c:	e58d3018 	str	r3, [sp, #24]
60303a30:	e58d301c 	str	r3, [sp, #28]
60303a34:	e58d3020 	str	r3, [sp, #32]
60303a38:	e58d3024 	str	r3, [sp, #36]	; 0x24
60303a3c:	e58d300c 	str	r3, [sp, #12]
60303a40:	e59d2008 	ldr	r2, [sp, #8]
60303a44:	e5d23000 	ldrb	r3, [r2]
60303a48:	e1a04002 	mov	r4, r2
60303a4c:	e2822001 	add	r2, r2, #1
60303a50:	e3530000 	cmp	r3, #0
60303a54:	13530025 	cmpne	r3, #37	; 0x25
60303a58:	1afffff9 	bne	60303a44 <_vfiprintf_r+0x154>
60303a5c:	e59d3008 	ldr	r3, [sp, #8]
60303a60:	e0546003 	subs	r6, r4, r3
60303a64:	0a000013 	beq	60303ab8 <_vfiprintf_r+0x1c8>
60303a68:	e8870048 	stm	r7, {r3, r6}
60303a6c:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
60303a70:	e0833006 	add	r3, r3, r6
60303a74:	e58d3040 	str	r3, [sp, #64]	; 0x40
60303a78:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
60303a7c:	e2833001 	add	r3, r3, #1
60303a80:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60303a84:	e3530007 	cmp	r3, #7
60303a88:	d2877008 	addle	r7, r7, #8
60303a8c:	da000006 	ble	60303aac <_vfiprintf_r+0x1bc>
60303a90:	e28d2038 	add	r2, sp, #56	; 0x38
60303a94:	e1a01008 	mov	r1, r8
60303a98:	e1a00009 	mov	r0, r9
60303a9c:	ebffff69 	bl	60303848 <__sprint_r>
60303aa0:	e3500000 	cmp	r0, #0
60303aa4:	1a0002cc 	bne	603045dc <_vfiprintf_r+0xcec>
60303aa8:	e28d7044 	add	r7, sp, #68	; 0x44
60303aac:	e59d300c 	ldr	r3, [sp, #12]
60303ab0:	e0833006 	add	r3, r3, r6
60303ab4:	e58d300c 	str	r3, [sp, #12]
60303ab8:	e5d43000 	ldrb	r3, [r4]
60303abc:	e3530000 	cmp	r3, #0
60303ac0:	0a0002e1 	beq	6030464c <_vfiprintf_r+0xd5c>
60303ac4:	e3a03000 	mov	r3, #0
60303ac8:	e2842001 	add	r2, r4, #1
60303acc:	e1a04003 	mov	r4, r3
60303ad0:	e3e01000 	mvn	r1, #0
60303ad4:	e5cd3033 	strb	r3, [sp, #51]	; 0x33
60303ad8:	e58d1004 	str	r1, [sp, #4]
60303adc:	e58d3010 	str	r3, [sp, #16]
60303ae0:	e4d23001 	ldrb	r3, [r2], #1
60303ae4:	e58d2008 	str	r2, [sp, #8]
60303ae8:	e2432020 	sub	r2, r3, #32
60303aec:	e352005a 	cmp	r2, #90	; 0x5a
60303af0:	979ff102 	ldrls	pc, [pc, r2, lsl #2]
60303af4:	ea000250 	b	6030443c <_vfiprintf_r+0xb4c>
60303af8:	60303d00 	.word	0x60303d00
60303afc:	6030443c 	.word	0x6030443c
60303b00:	6030443c 	.word	0x6030443c
60303b04:	60303d18 	.word	0x60303d18
60303b08:	6030443c 	.word	0x6030443c
60303b0c:	6030443c 	.word	0x6030443c
60303b10:	6030443c 	.word	0x6030443c
60303b14:	60303cb0 	.word	0x60303cb0
60303b18:	6030443c 	.word	0x6030443c
60303b1c:	6030443c 	.word	0x6030443c
60303b20:	60303d20 	.word	0x60303d20
60303b24:	60303d40 	.word	0x60303d40
60303b28:	6030443c 	.word	0x6030443c
60303b2c:	60303d38 	.word	0x60303d38
60303b30:	60303d48 	.word	0x60303d48
60303b34:	6030443c 	.word	0x6030443c
60303b38:	60303d9c 	.word	0x60303d9c
60303b3c:	60303da4 	.word	0x60303da4
60303b40:	60303da4 	.word	0x60303da4
60303b44:	60303da4 	.word	0x60303da4
60303b48:	60303da4 	.word	0x60303da4
60303b4c:	60303da4 	.word	0x60303da4
60303b50:	60303da4 	.word	0x60303da4
60303b54:	60303da4 	.word	0x60303da4
60303b58:	60303da4 	.word	0x60303da4
60303b5c:	60303da4 	.word	0x60303da4
60303b60:	6030443c 	.word	0x6030443c
60303b64:	6030443c 	.word	0x6030443c
60303b68:	6030443c 	.word	0x6030443c
60303b6c:	6030443c 	.word	0x6030443c
60303b70:	6030443c 	.word	0x6030443c
60303b74:	6030443c 	.word	0x6030443c
60303b78:	6030443c 	.word	0x6030443c
60303b7c:	6030443c 	.word	0x6030443c
60303b80:	6030443c 	.word	0x6030443c
60303b84:	60303e24 	.word	0x60303e24
60303b88:	60303e4c 	.word	0x60303e4c
60303b8c:	6030443c 	.word	0x6030443c
60303b90:	6030443c 	.word	0x6030443c
60303b94:	6030443c 	.word	0x6030443c
60303b98:	6030443c 	.word	0x6030443c
60303b9c:	6030443c 	.word	0x6030443c
60303ba0:	6030443c 	.word	0x6030443c
60303ba4:	6030443c 	.word	0x6030443c
60303ba8:	6030443c 	.word	0x6030443c
60303bac:	6030443c 	.word	0x6030443c
60303bb0:	6030443c 	.word	0x6030443c
60303bb4:	60303fac 	.word	0x60303fac
60303bb8:	6030443c 	.word	0x6030443c
60303bbc:	6030443c 	.word	0x6030443c
60303bc0:	6030443c 	.word	0x6030443c
60303bc4:	6030403c 	.word	0x6030403c
60303bc8:	6030443c 	.word	0x6030443c
60303bcc:	60304328 	.word	0x60304328
60303bd0:	6030443c 	.word	0x6030443c
60303bd4:	6030443c 	.word	0x6030443c
60303bd8:	60304384 	.word	0x60304384
60303bdc:	6030443c 	.word	0x6030443c
60303be0:	6030443c 	.word	0x6030443c
60303be4:	6030443c 	.word	0x6030443c
60303be8:	6030443c 	.word	0x6030443c
60303bec:	6030443c 	.word	0x6030443c
60303bf0:	6030443c 	.word	0x6030443c
60303bf4:	6030443c 	.word	0x6030443c
60303bf8:	6030443c 	.word	0x6030443c
60303bfc:	6030443c 	.word	0x6030443c
60303c00:	6030443c 	.word	0x6030443c
60303c04:	60303e24 	.word	0x60303e24
60303c08:	60303e50 	.word	0x60303e50
60303c0c:	6030443c 	.word	0x6030443c
60303c10:	6030443c 	.word	0x6030443c
60303c14:	6030443c 	.word	0x6030443c
60303c18:	60303dd8 	.word	0x60303dd8
60303c1c:	60303e50 	.word	0x60303e50
60303c20:	60303e1c 	.word	0x60303e1c
60303c24:	6030443c 	.word	0x6030443c
60303c28:	60303dfc 	.word	0x60303dfc
60303c2c:	6030443c 	.word	0x6030443c
60303c30:	60303f40 	.word	0x60303f40
60303c34:	60303fb0 	.word	0x60303fb0
60303c38:	60304014 	.word	0x60304014
60303c3c:	60303e1c 	.word	0x60303e1c
60303c40:	6030443c 	.word	0x6030443c
60303c44:	6030403c 	.word	0x6030403c
60303c48:	60303cf8 	.word	0x60303cf8
60303c4c:	6030432c 	.word	0x6030432c
60303c50:	6030443c 	.word	0x6030443c
60303c54:	6030443c 	.word	0x6030443c
60303c58:	60303c64 	.word	0x60303c64
60303c5c:	6030443c 	.word	0x6030443c
60303c60:	60303cf8 	.word	0x60303cf8
60303c64:	e59f2b38 	ldr	r2, [pc, #2872]	; 603047a4 <_vfiprintf_r+0xeb4>
60303c68:	e58d2018 	str	r2, [sp, #24]
60303c6c:	e2142020 	ands	r2, r4, #32
60303c70:	0a0001c5 	beq	6030438c <_vfiprintf_r+0xa9c>
60303c74:	e2855007 	add	r5, r5, #7
60303c78:	e3c52007 	bic	r2, r5, #7
60303c7c:	e1a0a002 	mov	sl, r2
60303c80:	e5926004 	ldr	r6, [r2, #4]
60303c84:	e49a5008 	ldr	r5, [sl], #8
60303c88:	e1952006 	orrs	r2, r5, r6
60303c8c:	12042001 	andne	r2, r4, #1
60303c90:	03a02000 	moveq	r2, #0
60303c94:	e3520000 	cmp	r2, #0
60303c98:	15cd3035 	strbne	r3, [sp, #53]	; 0x35
60303c9c:	13844002 	orrne	r4, r4, #2
60303ca0:	13a02030 	movne	r2, #48	; 0x30
60303ca4:	e3c44b01 	bic	r4, r4, #1024	; 0x400
60303ca8:	15cd2034 	strbne	r2, [sp, #52]	; 0x34
60303cac:	ea0000e0 	b	60304034 <_vfiprintf_r+0x744>
60303cb0:	e1a00009 	mov	r0, r9
60303cb4:	ebfffb18 	bl	6030291c <_localeconv_r>
60303cb8:	e5903004 	ldr	r3, [r0, #4]
60303cbc:	e58d3024 	str	r3, [sp, #36]	; 0x24
60303cc0:	e1a00003 	mov	r0, r3
60303cc4:	eb0025c7 	bl	6030d3e8 <__wrap_strlen>
60303cc8:	e58d0020 	str	r0, [sp, #32]
60303ccc:	e1a00009 	mov	r0, r9
60303cd0:	ebfffb11 	bl	6030291c <_localeconv_r>
60303cd4:	e5903008 	ldr	r3, [r0, #8]
60303cd8:	e58d301c 	str	r3, [sp, #28]
60303cdc:	e1cd21dc 	ldrd	r2, [sp, #28]
60303ce0:	e3530000 	cmp	r3, #0
60303ce4:	13520000 	cmpne	r2, #0
60303ce8:	0a000002 	beq	60303cf8 <_vfiprintf_r+0x408>
60303cec:	e5d23000 	ldrb	r3, [r2]
60303cf0:	e3530000 	cmp	r3, #0
60303cf4:	13844b01 	orrne	r4, r4, #1024	; 0x400
60303cf8:	e59d2008 	ldr	r2, [sp, #8]
60303cfc:	eaffff77 	b	60303ae0 <_vfiprintf_r+0x1f0>
60303d00:	e5dd3033 	ldrb	r3, [sp, #51]	; 0x33
60303d04:	e3530000 	cmp	r3, #0
60303d08:	03a03020 	moveq	r3, #32
60303d0c:	1afffff9 	bne	60303cf8 <_vfiprintf_r+0x408>
60303d10:	e5cd3033 	strb	r3, [sp, #51]	; 0x33
60303d14:	eafffff7 	b	60303cf8 <_vfiprintf_r+0x408>
60303d18:	e3844001 	orr	r4, r4, #1
60303d1c:	eafffff5 	b	60303cf8 <_vfiprintf_r+0x408>
60303d20:	e4953004 	ldr	r3, [r5], #4
60303d24:	e58d3010 	str	r3, [sp, #16]
60303d28:	e3530000 	cmp	r3, #0
60303d2c:	aafffff1 	bge	60303cf8 <_vfiprintf_r+0x408>
60303d30:	e2633000 	rsb	r3, r3, #0
60303d34:	e58d3010 	str	r3, [sp, #16]
60303d38:	e3844004 	orr	r4, r4, #4
60303d3c:	eaffffed 	b	60303cf8 <_vfiprintf_r+0x408>
60303d40:	e3a0302b 	mov	r3, #43	; 0x2b
60303d44:	eafffff1 	b	60303d10 <_vfiprintf_r+0x420>
60303d48:	e59d2008 	ldr	r2, [sp, #8]
60303d4c:	e4d23001 	ldrb	r3, [r2], #1
60303d50:	e353002a 	cmp	r3, #42	; 0x2a
60303d54:	1a00000d 	bne	60303d90 <_vfiprintf_r+0x4a0>
60303d58:	e4950004 	ldr	r0, [r5], #4
60303d5c:	e58d2008 	str	r2, [sp, #8]
60303d60:	e1803fc0 	orr	r3, r0, r0, asr #31
60303d64:	e58d3004 	str	r3, [sp, #4]
60303d68:	eaffffe2 	b	60303cf8 <_vfiprintf_r+0x408>
60303d6c:	e59d3004 	ldr	r3, [sp, #4]
60303d70:	e3a0000a 	mov	r0, #10
60303d74:	e0231390 	mla	r3, r0, r3, r1
60303d78:	e58d3004 	str	r3, [sp, #4]
60303d7c:	e4d23001 	ldrb	r3, [r2], #1
60303d80:	e2431030 	sub	r1, r3, #48	; 0x30
60303d84:	e3510009 	cmp	r1, #9
60303d88:	9afffff7 	bls	60303d6c <_vfiprintf_r+0x47c>
60303d8c:	eaffff54 	b	60303ae4 <_vfiprintf_r+0x1f4>
60303d90:	e3a01000 	mov	r1, #0
60303d94:	e58d1004 	str	r1, [sp, #4]
60303d98:	eafffff8 	b	60303d80 <_vfiprintf_r+0x490>
60303d9c:	e3844080 	orr	r4, r4, #128	; 0x80
60303da0:	eaffffd4 	b	60303cf8 <_vfiprintf_r+0x408>
60303da4:	e59d2008 	ldr	r2, [sp, #8]
60303da8:	e3a01000 	mov	r1, #0
60303dac:	e58d1010 	str	r1, [sp, #16]
60303db0:	e59d1010 	ldr	r1, [sp, #16]
60303db4:	e2433030 	sub	r3, r3, #48	; 0x30
60303db8:	e3a0000a 	mov	r0, #10
60303dbc:	e0233190 	mla	r3, r0, r1, r3
60303dc0:	e58d3010 	str	r3, [sp, #16]
60303dc4:	e4d23001 	ldrb	r3, [r2], #1
60303dc8:	e2431030 	sub	r1, r3, #48	; 0x30
60303dcc:	e3510009 	cmp	r1, #9
60303dd0:	9afffff6 	bls	60303db0 <_vfiprintf_r+0x4c0>
60303dd4:	eaffff42 	b	60303ae4 <_vfiprintf_r+0x1f4>
60303dd8:	e59d3008 	ldr	r3, [sp, #8]
60303ddc:	e5d33000 	ldrb	r3, [r3]
60303de0:	e3530068 	cmp	r3, #104	; 0x68
60303de4:	03844c02 	orreq	r4, r4, #512	; 0x200
60303de8:	13844040 	orrne	r4, r4, #64	; 0x40
60303dec:	059d3008 	ldreq	r3, [sp, #8]
60303df0:	02833001 	addeq	r3, r3, #1
60303df4:	058d3008 	streq	r3, [sp, #8]
60303df8:	eaffffbe 	b	60303cf8 <_vfiprintf_r+0x408>
60303dfc:	e59d3008 	ldr	r3, [sp, #8]
60303e00:	e5d33000 	ldrb	r3, [r3]
60303e04:	e353006c 	cmp	r3, #108	; 0x6c
60303e08:	13844010 	orrne	r4, r4, #16
60303e0c:	059d3008 	ldreq	r3, [sp, #8]
60303e10:	02833001 	addeq	r3, r3, #1
60303e14:	058d3008 	streq	r3, [sp, #8]
60303e18:	1affffb6 	bne	60303cf8 <_vfiprintf_r+0x408>
60303e1c:	e3844020 	orr	r4, r4, #32
60303e20:	eaffffb4 	b	60303cf8 <_vfiprintf_r+0x408>
60303e24:	e1a0a005 	mov	sl, r5
60303e28:	e3a0b000 	mov	fp, #0
60303e2c:	e5cdb033 	strb	fp, [sp, #51]	; 0x33
60303e30:	e49a3004 	ldr	r3, [sl], #4
60303e34:	e5cd3084 	strb	r3, [sp, #132]	; 0x84
60303e38:	e3a03001 	mov	r3, #1
60303e3c:	e1a0600b 	mov	r6, fp
60303e40:	e58d3004 	str	r3, [sp, #4]
60303e44:	e28db084 	add	fp, sp, #132	; 0x84
60303e48:	ea000090 	b	60304090 <_vfiprintf_r+0x7a0>
60303e4c:	e3844010 	orr	r4, r4, #16
60303e50:	e3140020 	tst	r4, #32
60303e54:	0a000029 	beq	60303f00 <_vfiprintf_r+0x610>
60303e58:	e2855007 	add	r5, r5, #7
60303e5c:	e3c53007 	bic	r3, r5, #7
60303e60:	e1a0a003 	mov	sl, r3
60303e64:	e5936004 	ldr	r6, [r3, #4]
60303e68:	e49a5008 	ldr	r5, [sl], #8
60303e6c:	e3560000 	cmp	r6, #0
60303e70:	aa000202 	bge	60304680 <_vfiprintf_r+0xd90>
60303e74:	e2755000 	rsbs	r5, r5, #0
60303e78:	e3a0302d 	mov	r3, #45	; 0x2d
60303e7c:	e2e66000 	rsc	r6, r6, #0
60303e80:	e5cd3033 	strb	r3, [sp, #51]	; 0x33
60303e84:	e3a03001 	mov	r3, #1
60303e88:	e59d2004 	ldr	r2, [sp, #4]
60303e8c:	e3720001 	cmn	r2, #1
60303e90:	11a01004 	movne	r1, r4
60303e94:	1a000149 	bne	603043c0 <_vfiprintf_r+0xad0>
60303e98:	e3530001 	cmp	r3, #1
60303e9c:	0a0001fc 	beq	60304694 <_vfiprintf_r+0xda4>
60303ea0:	e28db0e8 	add	fp, sp, #232	; 0xe8
60303ea4:	e3530002 	cmp	r3, #2
60303ea8:	0a000156 	beq	60304408 <_vfiprintf_r+0xb18>
60303eac:	e2053007 	and	r3, r5, #7
60303eb0:	e1a051a5 	lsr	r5, r5, #3
60303eb4:	e1855e86 	orr	r5, r5, r6, lsl #29
60303eb8:	e1a061a6 	lsr	r6, r6, #3
60303ebc:	e1a0200b 	mov	r2, fp
60303ec0:	e2833030 	add	r3, r3, #48	; 0x30
60303ec4:	e1951006 	orrs	r1, r5, r6
60303ec8:	e56b3001 	strb	r3, [fp, #-1]!
60303ecc:	1afffff6 	bne	60303eac <_vfiprintf_r+0x5bc>
60303ed0:	e3530030 	cmp	r3, #48	; 0x30
60303ed4:	03a01000 	moveq	r1, #0
60303ed8:	12041001 	andne	r1, r4, #1
60303edc:	e3510000 	cmp	r1, #0
60303ee0:	13a03030 	movne	r3, #48	; 0x30
60303ee4:	154b3001 	strbne	r3, [fp, #-1]
60303ee8:	1242b002 	subne	fp, r2, #2
60303eec:	e28d30e8 	add	r3, sp, #232	; 0xe8
60303ef0:	e59d6004 	ldr	r6, [sp, #4]
60303ef4:	e043300b 	sub	r3, r3, fp
60303ef8:	e58d3004 	str	r3, [sp, #4]
60303efc:	ea000063 	b	60304090 <_vfiprintf_r+0x7a0>
60303f00:	e1a0a005 	mov	sl, r5
60303f04:	e3140010 	tst	r4, #16
60303f08:	e49a6004 	ldr	r6, [sl], #4
60303f0c:	0a000002 	beq	60303f1c <_vfiprintf_r+0x62c>
60303f10:	e1a05006 	mov	r5, r6
60303f14:	e1a06fc6 	asr	r6, r6, #31
60303f18:	eaffffd3 	b	60303e6c <_vfiprintf_r+0x57c>
60303f1c:	e3140040 	tst	r4, #64	; 0x40
60303f20:	16bf5076 	sxthne	r5, r6
60303f24:	17a067d6 	sbfxne	r6, r6, #15, #1
60303f28:	1affffcf 	bne	60303e6c <_vfiprintf_r+0x57c>
60303f2c:	e3140c02 	tst	r4, #512	; 0x200
60303f30:	16af5076 	sxtbne	r5, r6
60303f34:	17a063d6 	sbfxne	r6, r6, #7, #1
60303f38:	1affffcb 	bne	60303e6c <_vfiprintf_r+0x57c>
60303f3c:	eafffff3 	b	60303f10 <_vfiprintf_r+0x620>
60303f40:	e285a004 	add	sl, r5, #4
60303f44:	e3140020 	tst	r4, #32
60303f48:	0a000006 	beq	60303f68 <_vfiprintf_r+0x678>
60303f4c:	e5953000 	ldr	r3, [r5]
60303f50:	e59d200c 	ldr	r2, [sp, #12]
60303f54:	e59d100c 	ldr	r1, [sp, #12]
60303f58:	e1a02fc2 	asr	r2, r2, #31
60303f5c:	e8830006 	stm	r3, {r1, r2}
60303f60:	e1a0500a 	mov	r5, sl
60303f64:	eafffeb5 	b	60303a40 <_vfiprintf_r+0x150>
60303f68:	e3140010 	tst	r4, #16
60303f6c:	0a000003 	beq	60303f80 <_vfiprintf_r+0x690>
60303f70:	e5953000 	ldr	r3, [r5]
60303f74:	e59d200c 	ldr	r2, [sp, #12]
60303f78:	e5832000 	str	r2, [r3]
60303f7c:	eafffff7 	b	60303f60 <_vfiprintf_r+0x670>
60303f80:	e3140040 	tst	r4, #64	; 0x40
60303f84:	15953000 	ldrne	r3, [r5]
60303f88:	159d200c 	ldrne	r2, [sp, #12]
60303f8c:	11c320b0 	strhne	r2, [r3]
60303f90:	1afffff2 	bne	60303f60 <_vfiprintf_r+0x670>
60303f94:	e3140c02 	tst	r4, #512	; 0x200
60303f98:	15953000 	ldrne	r3, [r5]
60303f9c:	159d200c 	ldrne	r2, [sp, #12]
60303fa0:	15c32000 	strbne	r2, [r3]
60303fa4:	1affffed 	bne	60303f60 <_vfiprintf_r+0x670>
60303fa8:	eafffff0 	b	60303f70 <_vfiprintf_r+0x680>
60303fac:	e3844010 	orr	r4, r4, #16
60303fb0:	e2143020 	ands	r3, r4, #32
60303fb4:	0a000009 	beq	60303fe0 <_vfiprintf_r+0x6f0>
60303fb8:	e2855007 	add	r5, r5, #7
60303fbc:	e3c53007 	bic	r3, r5, #7
60303fc0:	e1a0a003 	mov	sl, r3
60303fc4:	e5936004 	ldr	r6, [r3, #4]
60303fc8:	e49a5008 	ldr	r5, [sl], #8
60303fcc:	e3c44b01 	bic	r4, r4, #1024	; 0x400
60303fd0:	e3a03000 	mov	r3, #0
60303fd4:	e3a02000 	mov	r2, #0
60303fd8:	e5cd2033 	strb	r2, [sp, #51]	; 0x33
60303fdc:	eaffffa9 	b	60303e88 <_vfiprintf_r+0x598>
60303fe0:	e1a0a005 	mov	sl, r5
60303fe4:	e2146010 	ands	r6, r4, #16
60303fe8:	e49a5004 	ldr	r5, [sl], #4
60303fec:	0a000001 	beq	60303ff8 <_vfiprintf_r+0x708>
60303ff0:	e1a06003 	mov	r6, r3
60303ff4:	eafffff4 	b	60303fcc <_vfiprintf_r+0x6dc>
60303ff8:	e2143040 	ands	r3, r4, #64	; 0x40
60303ffc:	16ff5075 	uxthne	r5, r5
60304000:	1afffff1 	bne	60303fcc <_vfiprintf_r+0x6dc>
60304004:	e2146c02 	ands	r6, r4, #512	; 0x200
60304008:	0affffef 	beq	60303fcc <_vfiprintf_r+0x6dc>
6030400c:	e6ef5075 	uxtb	r5, r5
60304010:	eafffff6 	b	60303ff0 <_vfiprintf_r+0x700>
60304014:	e1a0a005 	mov	sl, r5
60304018:	e3073830 	movw	r3, #30768	; 0x7830
6030401c:	e3a06000 	mov	r6, #0
60304020:	e1cd33b4 	strh	r3, [sp, #52]	; 0x34
60304024:	e3844002 	orr	r4, r4, #2
60304028:	e59f3774 	ldr	r3, [pc, #1908]	; 603047a4 <_vfiprintf_r+0xeb4>
6030402c:	e49a5004 	ldr	r5, [sl], #4
60304030:	e58d3018 	str	r3, [sp, #24]
60304034:	e3a03002 	mov	r3, #2
60304038:	eaffffe5 	b	60303fd4 <_vfiprintf_r+0x6e4>
6030403c:	e1a0a005 	mov	sl, r5
60304040:	e59d3004 	ldr	r3, [sp, #4]
60304044:	e3a05000 	mov	r5, #0
60304048:	e5cd5033 	strb	r5, [sp, #51]	; 0x33
6030404c:	e3730001 	cmn	r3, #1
60304050:	e49ab004 	ldr	fp, [sl], #4
60304054:	0a000009 	beq	60304080 <_vfiprintf_r+0x790>
60304058:	e1a02003 	mov	r2, r3
6030405c:	e1a01005 	mov	r1, r5
60304060:	e1a0000b 	mov	r0, fp
60304064:	eb0024d9 	bl	6030d3d0 <__wrap_memchr>
60304068:	e2503000 	subs	r3, r0, #0
6030406c:	1043300b 	subne	r3, r3, fp
60304070:	158d3004 	strne	r3, [sp, #4]
60304074:	1a000004 	bne	6030408c <_vfiprintf_r+0x79c>
60304078:	e1a06003 	mov	r6, r3
6030407c:	ea000003 	b	60304090 <_vfiprintf_r+0x7a0>
60304080:	e1a0000b 	mov	r0, fp
60304084:	eb0024d7 	bl	6030d3e8 <__wrap_strlen>
60304088:	e58d0004 	str	r0, [sp, #4]
6030408c:	e1a06005 	mov	r6, r5
60304090:	e59d3004 	ldr	r3, [sp, #4]
60304094:	e1560003 	cmp	r6, r3
60304098:	a1a03006 	movge	r3, r6
6030409c:	e58d3014 	str	r3, [sp, #20]
603040a0:	e5dd3033 	ldrb	r3, [sp, #51]	; 0x33
603040a4:	e3530000 	cmp	r3, #0
603040a8:	159d3014 	ldrne	r3, [sp, #20]
603040ac:	12833001 	addne	r3, r3, #1
603040b0:	158d3014 	strne	r3, [sp, #20]
603040b4:	e2143002 	ands	r3, r4, #2
603040b8:	e58d3028 	str	r3, [sp, #40]	; 0x28
603040bc:	159d3014 	ldrne	r3, [sp, #20]
603040c0:	12833002 	addne	r3, r3, #2
603040c4:	158d3014 	strne	r3, [sp, #20]
603040c8:	e2143084 	ands	r3, r4, #132	; 0x84
603040cc:	e58d302c 	str	r3, [sp, #44]	; 0x2c
603040d0:	1a00001a 	bne	60304140 <_vfiprintf_r+0x850>
603040d4:	e59d3010 	ldr	r3, [sp, #16]
603040d8:	e59d2014 	ldr	r2, [sp, #20]
603040dc:	e0435002 	sub	r5, r3, r2
603040e0:	e3550000 	cmp	r5, #0
603040e4:	da000015 	ble	60304140 <_vfiprintf_r+0x850>
603040e8:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
603040ec:	e2871008 	add	r1, r7, #8
603040f0:	e59f06b0 	ldr	r0, [pc, #1712]	; 603047a8 <_vfiprintf_r+0xeb8>
603040f4:	e3550010 	cmp	r5, #16
603040f8:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
603040fc:	e2833001 	add	r3, r3, #1
60304100:	e5870000 	str	r0, [r7]
60304104:	ca0000d3 	bgt	60304458 <_vfiprintf_r+0xb68>
60304108:	e3530007 	cmp	r3, #7
6030410c:	e5875004 	str	r5, [r7, #4]
60304110:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60304114:	e0855002 	add	r5, r5, r2
60304118:	d1a07001 	movle	r7, r1
6030411c:	e58d5040 	str	r5, [sp, #64]	; 0x40
60304120:	da000006 	ble	60304140 <_vfiprintf_r+0x850>
60304124:	e28d2038 	add	r2, sp, #56	; 0x38
60304128:	e1a01008 	mov	r1, r8
6030412c:	e1a00009 	mov	r0, r9
60304130:	ebfffdc4 	bl	60303848 <__sprint_r>
60304134:	e3500000 	cmp	r0, #0
60304138:	1a000127 	bne	603045dc <_vfiprintf_r+0xcec>
6030413c:	e28d7044 	add	r7, sp, #68	; 0x44
60304140:	e5dd3033 	ldrb	r3, [sp, #51]	; 0x33
60304144:	e3530000 	cmp	r3, #0
60304148:	0a000013 	beq	6030419c <_vfiprintf_r+0x8ac>
6030414c:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
60304150:	e28d2033 	add	r2, sp, #51	; 0x33
60304154:	e5872000 	str	r2, [r7]
60304158:	e3a02001 	mov	r2, #1
6030415c:	e2833001 	add	r3, r3, #1
60304160:	e5872004 	str	r2, [r7, #4]
60304164:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
60304168:	e3530007 	cmp	r3, #7
6030416c:	d2877008 	addle	r7, r7, #8
60304170:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60304174:	e2822001 	add	r2, r2, #1
60304178:	e58d2040 	str	r2, [sp, #64]	; 0x40
6030417c:	da000006 	ble	6030419c <_vfiprintf_r+0x8ac>
60304180:	e28d2038 	add	r2, sp, #56	; 0x38
60304184:	e1a01008 	mov	r1, r8
60304188:	e1a00009 	mov	r0, r9
6030418c:	ebfffdad 	bl	60303848 <__sprint_r>
60304190:	e3500000 	cmp	r0, #0
60304194:	1a000110 	bne	603045dc <_vfiprintf_r+0xcec>
60304198:	e28d7044 	add	r7, sp, #68	; 0x44
6030419c:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
603041a0:	e3530000 	cmp	r3, #0
603041a4:	0a000013 	beq	603041f8 <_vfiprintf_r+0x908>
603041a8:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
603041ac:	e28d2034 	add	r2, sp, #52	; 0x34
603041b0:	e5872000 	str	r2, [r7]
603041b4:	e3a02002 	mov	r2, #2
603041b8:	e2833001 	add	r3, r3, #1
603041bc:	e5872004 	str	r2, [r7, #4]
603041c0:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
603041c4:	e3530007 	cmp	r3, #7
603041c8:	d2877008 	addle	r7, r7, #8
603041cc:	e58d303c 	str	r3, [sp, #60]	; 0x3c
603041d0:	e2822002 	add	r2, r2, #2
603041d4:	e58d2040 	str	r2, [sp, #64]	; 0x40
603041d8:	da000006 	ble	603041f8 <_vfiprintf_r+0x908>
603041dc:	e28d2038 	add	r2, sp, #56	; 0x38
603041e0:	e1a01008 	mov	r1, r8
603041e4:	e1a00009 	mov	r0, r9
603041e8:	ebfffd96 	bl	60303848 <__sprint_r>
603041ec:	e3500000 	cmp	r0, #0
603041f0:	1a0000f9 	bne	603045dc <_vfiprintf_r+0xcec>
603041f4:	e28d7044 	add	r7, sp, #68	; 0x44
603041f8:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
603041fc:	e3530080 	cmp	r3, #128	; 0x80
60304200:	1a00001a 	bne	60304270 <_vfiprintf_r+0x980>
60304204:	e59d3010 	ldr	r3, [sp, #16]
60304208:	e59d2014 	ldr	r2, [sp, #20]
6030420c:	e0435002 	sub	r5, r3, r2
60304210:	e3550000 	cmp	r5, #0
60304214:	da000015 	ble	60304270 <_vfiprintf_r+0x980>
60304218:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
6030421c:	e2871008 	add	r1, r7, #8
60304220:	e59f0584 	ldr	r0, [pc, #1412]	; 603047ac <_vfiprintf_r+0xebc>
60304224:	e3550010 	cmp	r5, #16
60304228:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
6030422c:	e2833001 	add	r3, r3, #1
60304230:	e5870000 	str	r0, [r7]
60304234:	ca000098 	bgt	6030449c <_vfiprintf_r+0xbac>
60304238:	e3530007 	cmp	r3, #7
6030423c:	e5875004 	str	r5, [r7, #4]
60304240:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60304244:	e0855002 	add	r5, r5, r2
60304248:	d1a07001 	movle	r7, r1
6030424c:	e58d5040 	str	r5, [sp, #64]	; 0x40
60304250:	da000006 	ble	60304270 <_vfiprintf_r+0x980>
60304254:	e28d2038 	add	r2, sp, #56	; 0x38
60304258:	e1a01008 	mov	r1, r8
6030425c:	e1a00009 	mov	r0, r9
60304260:	ebfffd78 	bl	60303848 <__sprint_r>
60304264:	e3500000 	cmp	r0, #0
60304268:	1a0000db 	bne	603045dc <_vfiprintf_r+0xcec>
6030426c:	e28d7044 	add	r7, sp, #68	; 0x44
60304270:	e59d3004 	ldr	r3, [sp, #4]
60304274:	e0466003 	sub	r6, r6, r3
60304278:	e3560000 	cmp	r6, #0
6030427c:	c59f5528 	ldrgt	r5, [pc, #1320]	; 603047ac <_vfiprintf_r+0xebc>
60304280:	ca0000a6 	bgt	60304520 <_vfiprintf_r+0xc30>
60304284:	e59d3004 	ldr	r3, [sp, #4]
60304288:	e59d0040 	ldr	r0, [sp, #64]	; 0x40
6030428c:	e5873004 	str	r3, [r7, #4]
60304290:	e0800003 	add	r0, r0, r3
60304294:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
60304298:	e587b000 	str	fp, [r7]
6030429c:	e2833001 	add	r3, r3, #1
603042a0:	e58d0040 	str	r0, [sp, #64]	; 0x40
603042a4:	e3530007 	cmp	r3, #7
603042a8:	e58d303c 	str	r3, [sp, #60]	; 0x3c
603042ac:	d2877008 	addle	r7, r7, #8
603042b0:	da000006 	ble	603042d0 <_vfiprintf_r+0x9e0>
603042b4:	e28d2038 	add	r2, sp, #56	; 0x38
603042b8:	e1a01008 	mov	r1, r8
603042bc:	e1a00009 	mov	r0, r9
603042c0:	ebfffd60 	bl	60303848 <__sprint_r>
603042c4:	e3500000 	cmp	r0, #0
603042c8:	1a0000c3 	bne	603045dc <_vfiprintf_r+0xcec>
603042cc:	e28d7044 	add	r7, sp, #68	; 0x44
603042d0:	e3140004 	tst	r4, #4
603042d4:	1a0000a7 	bne	60304578 <_vfiprintf_r+0xc88>
603042d8:	e59d300c 	ldr	r3, [sp, #12]
603042dc:	e59d2010 	ldr	r2, [sp, #16]
603042e0:	e59d1014 	ldr	r1, [sp, #20]
603042e4:	e1520001 	cmp	r2, r1
603042e8:	a0833002 	addge	r3, r3, r2
603042ec:	b0833001 	addlt	r3, r3, r1
603042f0:	e58d300c 	str	r3, [sp, #12]
603042f4:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
603042f8:	e3530000 	cmp	r3, #0
603042fc:	0a000005 	beq	60304318 <_vfiprintf_r+0xa28>
60304300:	e28d2038 	add	r2, sp, #56	; 0x38
60304304:	e1a01008 	mov	r1, r8
60304308:	e1a00009 	mov	r0, r9
6030430c:	ebfffd4d 	bl	60303848 <__sprint_r>
60304310:	e3500000 	cmp	r0, #0
60304314:	1a0000b0 	bne	603045dc <_vfiprintf_r+0xcec>
60304318:	e3a03000 	mov	r3, #0
6030431c:	e28d7044 	add	r7, sp, #68	; 0x44
60304320:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60304324:	eaffff0d 	b	60303f60 <_vfiprintf_r+0x670>
60304328:	e3844010 	orr	r4, r4, #16
6030432c:	e2143020 	ands	r3, r4, #32
60304330:	0a000006 	beq	60304350 <_vfiprintf_r+0xa60>
60304334:	e2855007 	add	r5, r5, #7
60304338:	e3c53007 	bic	r3, r5, #7
6030433c:	e1a0a003 	mov	sl, r3
60304340:	e5936004 	ldr	r6, [r3, #4]
60304344:	e49a5008 	ldr	r5, [sl], #8
60304348:	e3a03001 	mov	r3, #1
6030434c:	eaffff20 	b	60303fd4 <_vfiprintf_r+0x6e4>
60304350:	e1a0a005 	mov	sl, r5
60304354:	e2146010 	ands	r6, r4, #16
60304358:	e49a5004 	ldr	r5, [sl], #4
6030435c:	0a000001 	beq	60304368 <_vfiprintf_r+0xa78>
60304360:	e1a06003 	mov	r6, r3
60304364:	eafffff7 	b	60304348 <_vfiprintf_r+0xa58>
60304368:	e2143040 	ands	r3, r4, #64	; 0x40
6030436c:	16ff5075 	uxthne	r5, r5
60304370:	1afffff4 	bne	60304348 <_vfiprintf_r+0xa58>
60304374:	e2146c02 	ands	r6, r4, #512	; 0x200
60304378:	0afffff2 	beq	60304348 <_vfiprintf_r+0xa58>
6030437c:	e6ef5075 	uxtb	r5, r5
60304380:	eafffff6 	b	60304360 <_vfiprintf_r+0xa70>
60304384:	e59f2424 	ldr	r2, [pc, #1060]	; 603047b0 <_vfiprintf_r+0xec0>
60304388:	eafffe36 	b	60303c68 <_vfiprintf_r+0x378>
6030438c:	e1a0a005 	mov	sl, r5
60304390:	e2146010 	ands	r6, r4, #16
60304394:	e49a5004 	ldr	r5, [sl], #4
60304398:	0a000001 	beq	603043a4 <_vfiprintf_r+0xab4>
6030439c:	e1a06002 	mov	r6, r2
603043a0:	eafffe38 	b	60303c88 <_vfiprintf_r+0x398>
603043a4:	e2142040 	ands	r2, r4, #64	; 0x40
603043a8:	16ff5075 	uxthne	r5, r5
603043ac:	1afffe35 	bne	60303c88 <_vfiprintf_r+0x398>
603043b0:	e2146c02 	ands	r6, r4, #512	; 0x200
603043b4:	0afffe33 	beq	60303c88 <_vfiprintf_r+0x398>
603043b8:	e6ef5075 	uxtb	r5, r5
603043bc:	eafffff6 	b	6030439c <_vfiprintf_r+0xaac>
603043c0:	e59d0004 	ldr	r0, [sp, #4]
603043c4:	e1852006 	orr	r2, r5, r6
603043c8:	e3c44080 	bic	r4, r4, #128	; 0x80
603043cc:	e3520000 	cmp	r2, #0
603043d0:	03500000 	cmpeq	r0, #0
603043d4:	13a02001 	movne	r2, #1
603043d8:	03a02000 	moveq	r2, #0
603043dc:	1afffead 	bne	60303e98 <_vfiprintf_r+0x5a8>
603043e0:	e3530000 	cmp	r3, #0
603043e4:	1a000011 	bne	60304430 <_vfiprintf_r+0xb40>
603043e8:	e2112001 	ands	r2, r1, #1
603043ec:	e58d2004 	str	r2, [sp, #4]
603043f0:	0a00000f 	beq	60304434 <_vfiprintf_r+0xb44>
603043f4:	e3a02030 	mov	r2, #48	; 0x30
603043f8:	e58d3004 	str	r3, [sp, #4]
603043fc:	e5cd20e7 	strb	r2, [sp, #231]	; 0xe7
60304400:	e28db0e7 	add	fp, sp, #231	; 0xe7
60304404:	eafffeb8 	b	60303eec <_vfiprintf_r+0x5fc>
60304408:	e205300f 	and	r3, r5, #15
6030440c:	e59d2018 	ldr	r2, [sp, #24]
60304410:	e1a05225 	lsr	r5, r5, #4
60304414:	e1855e06 	orr	r5, r5, r6, lsl #28
60304418:	e1a06226 	lsr	r6, r6, #4
6030441c:	e7d23003 	ldrb	r3, [r2, r3]
60304420:	e56b3001 	strb	r3, [fp, #-1]!
60304424:	e1953006 	orrs	r3, r5, r6
60304428:	1afffff6 	bne	60304408 <_vfiprintf_r+0xb18>
6030442c:	eafffeae 	b	60303eec <_vfiprintf_r+0x5fc>
60304430:	e58d2004 	str	r2, [sp, #4]
60304434:	e28db0e8 	add	fp, sp, #232	; 0xe8
60304438:	eafffeab 	b	60303eec <_vfiprintf_r+0x5fc>
6030443c:	e3530000 	cmp	r3, #0
60304440:	0a000081 	beq	6030464c <_vfiprintf_r+0xd5c>
60304444:	e3a0b000 	mov	fp, #0
60304448:	e1a0a005 	mov	sl, r5
6030444c:	e5cd3084 	strb	r3, [sp, #132]	; 0x84
60304450:	e5cdb033 	strb	fp, [sp, #51]	; 0x33
60304454:	eafffe77 	b	60303e38 <_vfiprintf_r+0x548>
60304458:	e3a00010 	mov	r0, #16
6030445c:	e3530007 	cmp	r3, #7
60304460:	e0822000 	add	r2, r2, r0
60304464:	e5870004 	str	r0, [r7, #4]
60304468:	e58d2040 	str	r2, [sp, #64]	; 0x40
6030446c:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60304470:	da000006 	ble	60304490 <_vfiprintf_r+0xba0>
60304474:	e28d2038 	add	r2, sp, #56	; 0x38
60304478:	e1a01008 	mov	r1, r8
6030447c:	e1a00009 	mov	r0, r9
60304480:	ebfffcf0 	bl	60303848 <__sprint_r>
60304484:	e3500000 	cmp	r0, #0
60304488:	1a000053 	bne	603045dc <_vfiprintf_r+0xcec>
6030448c:	e28d1044 	add	r1, sp, #68	; 0x44
60304490:	e2455010 	sub	r5, r5, #16
60304494:	e1a07001 	mov	r7, r1
60304498:	eaffff12 	b	603040e8 <_vfiprintf_r+0x7f8>
6030449c:	e3a00010 	mov	r0, #16
603044a0:	e3530007 	cmp	r3, #7
603044a4:	e0822000 	add	r2, r2, r0
603044a8:	e5870004 	str	r0, [r7, #4]
603044ac:	e58d2040 	str	r2, [sp, #64]	; 0x40
603044b0:	e58d303c 	str	r3, [sp, #60]	; 0x3c
603044b4:	da000006 	ble	603044d4 <_vfiprintf_r+0xbe4>
603044b8:	e28d2038 	add	r2, sp, #56	; 0x38
603044bc:	e1a01008 	mov	r1, r8
603044c0:	e1a00009 	mov	r0, r9
603044c4:	ebfffcdf 	bl	60303848 <__sprint_r>
603044c8:	e3500000 	cmp	r0, #0
603044cc:	1a000042 	bne	603045dc <_vfiprintf_r+0xcec>
603044d0:	e28d1044 	add	r1, sp, #68	; 0x44
603044d4:	e2455010 	sub	r5, r5, #16
603044d8:	e1a07001 	mov	r7, r1
603044dc:	eaffff4d 	b	60304218 <_vfiprintf_r+0x928>
603044e0:	e3a00010 	mov	r0, #16
603044e4:	e3530007 	cmp	r3, #7
603044e8:	e0811000 	add	r1, r1, r0
603044ec:	e5870004 	str	r0, [r7, #4]
603044f0:	e58d1040 	str	r1, [sp, #64]	; 0x40
603044f4:	e58d303c 	str	r3, [sp, #60]	; 0x3c
603044f8:	da000006 	ble	60304518 <_vfiprintf_r+0xc28>
603044fc:	e28d2038 	add	r2, sp, #56	; 0x38
60304500:	e1a01008 	mov	r1, r8
60304504:	e1a00009 	mov	r0, r9
60304508:	ebfffcce 	bl	60303848 <__sprint_r>
6030450c:	e3500000 	cmp	r0, #0
60304510:	1a000031 	bne	603045dc <_vfiprintf_r+0xcec>
60304514:	e28d2044 	add	r2, sp, #68	; 0x44
60304518:	e2466010 	sub	r6, r6, #16
6030451c:	e1a07002 	mov	r7, r2
60304520:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
60304524:	e2872008 	add	r2, r7, #8
60304528:	e59d1040 	ldr	r1, [sp, #64]	; 0x40
6030452c:	e3560010 	cmp	r6, #16
60304530:	e2833001 	add	r3, r3, #1
60304534:	e5875000 	str	r5, [r7]
60304538:	caffffe8 	bgt	603044e0 <_vfiprintf_r+0xbf0>
6030453c:	e3530007 	cmp	r3, #7
60304540:	e0861001 	add	r1, r6, r1
60304544:	e5876004 	str	r6, [r7, #4]
60304548:	d1a07002 	movle	r7, r2
6030454c:	e58d1040 	str	r1, [sp, #64]	; 0x40
60304550:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60304554:	daffff4a 	ble	60304284 <_vfiprintf_r+0x994>
60304558:	e28d2038 	add	r2, sp, #56	; 0x38
6030455c:	e1a01008 	mov	r1, r8
60304560:	e1a00009 	mov	r0, r9
60304564:	ebfffcb7 	bl	60303848 <__sprint_r>
60304568:	e3500000 	cmp	r0, #0
6030456c:	1a00001a 	bne	603045dc <_vfiprintf_r+0xcec>
60304570:	e28d7044 	add	r7, sp, #68	; 0x44
60304574:	eaffff42 	b	60304284 <_vfiprintf_r+0x994>
60304578:	e59d3010 	ldr	r3, [sp, #16]
6030457c:	e59d2014 	ldr	r2, [sp, #20]
60304580:	e0434002 	sub	r4, r3, r2
60304584:	e3540000 	cmp	r4, #0
60304588:	c3a06010 	movgt	r6, #16
6030458c:	c59f5214 	ldrgt	r5, [pc, #532]	; 603047a8 <_vfiprintf_r+0xeb8>
60304590:	daffff50 	ble	603042d8 <_vfiprintf_r+0x9e8>
60304594:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
60304598:	e3540010 	cmp	r4, #16
6030459c:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
603045a0:	e2833001 	add	r3, r3, #1
603045a4:	e5875000 	str	r5, [r7]
603045a8:	ca000017 	bgt	6030460c <_vfiprintf_r+0xd1c>
603045ac:	e5874004 	str	r4, [r7, #4]
603045b0:	e3530007 	cmp	r3, #7
603045b4:	e0844002 	add	r4, r4, r2
603045b8:	e58d303c 	str	r3, [sp, #60]	; 0x3c
603045bc:	e58d4040 	str	r4, [sp, #64]	; 0x40
603045c0:	daffff44 	ble	603042d8 <_vfiprintf_r+0x9e8>
603045c4:	e28d2038 	add	r2, sp, #56	; 0x38
603045c8:	e1a01008 	mov	r1, r8
603045cc:	e1a00009 	mov	r0, r9
603045d0:	ebfffc9c 	bl	60303848 <__sprint_r>
603045d4:	e3500000 	cmp	r0, #0
603045d8:	0affff3e 	beq	603042d8 <_vfiprintf_r+0x9e8>
603045dc:	e5983064 	ldr	r3, [r8, #100]	; 0x64
603045e0:	e3130001 	tst	r3, #1
603045e4:	1a000004 	bne	603045fc <_vfiprintf_r+0xd0c>
603045e8:	e1d830bc 	ldrh	r3, [r8, #12]
603045ec:	e3130c02 	tst	r3, #512	; 0x200
603045f0:	1a000001 	bne	603045fc <_vfiprintf_r+0xd0c>
603045f4:	e5980058 	ldr	r0, [r8, #88]	; 0x58
603045f8:	ebfff30c 	bl	60301230 <__retarget_lock_release_recursive>
603045fc:	e1d830bc 	ldrh	r3, [r8, #12]
60304600:	e3130040 	tst	r3, #64	; 0x40
60304604:	0afffce5 	beq	603039a0 <_vfiprintf_r+0xb0>
60304608:	eafffce2 	b	60303998 <_vfiprintf_r+0xa8>
6030460c:	e3530007 	cmp	r3, #7
60304610:	e2822010 	add	r2, r2, #16
60304614:	e5876004 	str	r6, [r7, #4]
60304618:	d2877008 	addle	r7, r7, #8
6030461c:	e58d2040 	str	r2, [sp, #64]	; 0x40
60304620:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60304624:	da000006 	ble	60304644 <_vfiprintf_r+0xd54>
60304628:	e28d2038 	add	r2, sp, #56	; 0x38
6030462c:	e1a01008 	mov	r1, r8
60304630:	e1a00009 	mov	r0, r9
60304634:	ebfffc83 	bl	60303848 <__sprint_r>
60304638:	e3500000 	cmp	r0, #0
6030463c:	1affffe6 	bne	603045dc <_vfiprintf_r+0xcec>
60304640:	e28d7044 	add	r7, sp, #68	; 0x44
60304644:	e2444010 	sub	r4, r4, #16
60304648:	eaffffd1 	b	60304594 <_vfiprintf_r+0xca4>
6030464c:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
60304650:	e3530000 	cmp	r3, #0
60304654:	1a000002 	bne	60304664 <_vfiprintf_r+0xd74>
60304658:	e3a03000 	mov	r3, #0
6030465c:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60304660:	eaffffdd 	b	603045dc <_vfiprintf_r+0xcec>
60304664:	e28d2038 	add	r2, sp, #56	; 0x38
60304668:	e1a01008 	mov	r1, r8
6030466c:	e1a00009 	mov	r0, r9
60304670:	ebfffc74 	bl	60303848 <__sprint_r>
60304674:	e3500000 	cmp	r0, #0
60304678:	0afffff6 	beq	60304658 <_vfiprintf_r+0xd68>
6030467c:	eaffffd6 	b	603045dc <_vfiprintf_r+0xcec>
60304680:	e59d3004 	ldr	r3, [sp, #4]
60304684:	e3730001 	cmn	r3, #1
60304688:	11a01004 	movne	r1, r4
6030468c:	13a03001 	movne	r3, #1
60304690:	1affff4a 	bne	603043c0 <_vfiprintf_r+0xad0>
60304694:	e355000a 	cmp	r5, #10
60304698:	e2d63000 	sbcs	r3, r6, #0
6030469c:	32855030 	addcc	r5, r5, #48	; 0x30
603046a0:	35cd50e7 	strbcc	r5, [sp, #231]	; 0xe7
603046a4:	3affff55 	bcc	60304400 <_vfiprintf_r+0xb10>
603046a8:	e3a03000 	mov	r3, #0
603046ac:	e58d3014 	str	r3, [sp, #20]
603046b0:	e28d30e8 	add	r3, sp, #232	; 0xe8
603046b4:	e58d3028 	str	r3, [sp, #40]	; 0x28
603046b8:	e2043b01 	and	r3, r4, #1024	; 0x400
603046bc:	e58d302c 	str	r3, [sp, #44]	; 0x2c
603046c0:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
603046c4:	e3a0200a 	mov	r2, #10
603046c8:	e1a00005 	mov	r0, r5
603046cc:	e1a01006 	mov	r1, r6
603046d0:	e243b001 	sub	fp, r3, #1
603046d4:	e3a03000 	mov	r3, #0
603046d8:	ebfff07d 	bl	603008d4 <__aeabi_uldivmod>
603046dc:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
603046e0:	e2822030 	add	r2, r2, #48	; 0x30
603046e4:	e5432001 	strb	r2, [r3, #-1]
603046e8:	e59d3014 	ldr	r3, [sp, #20]
603046ec:	e2833001 	add	r3, r3, #1
603046f0:	e58d3014 	str	r3, [sp, #20]
603046f4:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
603046f8:	e3530000 	cmp	r3, #0
603046fc:	0a00001c 	beq	60304774 <_vfiprintf_r+0xe84>
60304700:	e59d301c 	ldr	r3, [sp, #28]
60304704:	e355000a 	cmp	r5, #10
60304708:	e59d1014 	ldr	r1, [sp, #20]
6030470c:	e5d32000 	ldrb	r2, [r3]
60304710:	e2d63000 	sbcs	r3, r6, #0
60304714:	23a03001 	movcs	r3, #1
60304718:	33a03000 	movcc	r3, #0
6030471c:	e35200ff 	cmp	r2, #255	; 0xff
60304720:	03a03000 	moveq	r3, #0
60304724:	12033001 	andne	r3, r3, #1
60304728:	e1520001 	cmp	r2, r1
6030472c:	13a03000 	movne	r3, #0
60304730:	02033001 	andeq	r3, r3, #1
60304734:	e3530000 	cmp	r3, #0
60304738:	0a00000d 	beq	60304774 <_vfiprintf_r+0xe84>
6030473c:	e59d3020 	ldr	r3, [sp, #32]
60304740:	e59d1024 	ldr	r1, [sp, #36]	; 0x24
60304744:	e04bb003 	sub	fp, fp, r3
60304748:	e1a02003 	mov	r2, r3
6030474c:	e1a0000b 	mov	r0, fp
60304750:	eb003c04 	bl	60313768 <__wrap_strncpy>
60304754:	e59d301c 	ldr	r3, [sp, #28]
60304758:	e5d33001 	ldrb	r3, [r3, #1]
6030475c:	e3530000 	cmp	r3, #0
60304760:	159d301c 	ldrne	r3, [sp, #28]
60304764:	12833001 	addne	r3, r3, #1
60304768:	158d301c 	strne	r3, [sp, #28]
6030476c:	13a03000 	movne	r3, #0
60304770:	e58d3014 	str	r3, [sp, #20]
60304774:	e3a03000 	mov	r3, #0
60304778:	e3a0200a 	mov	r2, #10
6030477c:	e1a00005 	mov	r0, r5
60304780:	e1a01006 	mov	r1, r6
60304784:	ebfff052 	bl	603008d4 <__aeabi_uldivmod>
60304788:	e355000a 	cmp	r5, #10
6030478c:	e2d63000 	sbcs	r3, r6, #0
60304790:	3afffdd5 	bcc	60303eec <_vfiprintf_r+0x5fc>
60304794:	e1a05000 	mov	r5, r0
60304798:	e1a06001 	mov	r6, r1
6030479c:	e58db028 	str	fp, [sp, #40]	; 0x28
603047a0:	eaffffc6 	b	603046c0 <_vfiprintf_r+0xdd0>
603047a4:	60315c27 	.word	0x60315c27
603047a8:	603140b0 	.word	0x603140b0
603047ac:	603140c0 	.word	0x603140c0
603047b0:	60315c16 	.word	0x60315c16

603047b4 <vfiprintf>:
603047b4:	e1a03002 	mov	r3, r2
603047b8:	e1a02001 	mov	r2, r1
603047bc:	e1a01000 	mov	r1, r0
603047c0:	e59f0004 	ldr	r0, [pc, #4]	; 603047cc <vfiprintf+0x18>
603047c4:	e5900000 	ldr	r0, [r0]
603047c8:	eafffc48 	b	603038f0 <_vfiprintf_r>
603047cc:	60316000 	.word	0x60316000

603047d0 <__sbprintf>:
603047d0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
603047d4:	e1a08003 	mov	r8, r3
603047d8:	e1d130bc 	ldrh	r3, [r1, #12]
603047dc:	e24dde46 	sub	sp, sp, #1120	; 0x460
603047e0:	e1a05002 	mov	r5, r2
603047e4:	e24dd008 	sub	sp, sp, #8
603047e8:	e3c33002 	bic	r3, r3, #2
603047ec:	e1a0700d 	mov	r7, sp
603047f0:	e1a06000 	mov	r6, r0
603047f4:	e28d0058 	add	r0, sp, #88	; 0x58
603047f8:	e1a04001 	mov	r4, r1
603047fc:	e1c730bc 	strh	r3, [r7, #12]
60304800:	e5913064 	ldr	r3, [r1, #100]	; 0x64
60304804:	e58d3064 	str	r3, [sp, #100]	; 0x64
60304808:	e1d130be 	ldrh	r3, [r1, #14]
6030480c:	e1c730be 	strh	r3, [r7, #14]
60304810:	e5913020 	ldr	r3, [r1, #32]
60304814:	e58d3020 	str	r3, [sp, #32]
60304818:	e5913028 	ldr	r3, [r1, #40]	; 0x28
6030481c:	e58d3028 	str	r3, [sp, #40]	; 0x28
60304820:	e28d3068 	add	r3, sp, #104	; 0x68
60304824:	e58d3000 	str	r3, [sp]
60304828:	e58d3010 	str	r3, [sp, #16]
6030482c:	e3a03b01 	mov	r3, #1024	; 0x400
60304830:	e58d3008 	str	r3, [sp, #8]
60304834:	e58d3014 	str	r3, [sp, #20]
60304838:	e3a03000 	mov	r3, #0
6030483c:	e58d3018 	str	r3, [sp, #24]
60304840:	ebfff270 	bl	60301208 <__retarget_lock_init_recursive>
60304844:	e1a02005 	mov	r2, r5
60304848:	e1a03008 	mov	r3, r8
6030484c:	e1a01007 	mov	r1, r7
60304850:	e1a00006 	mov	r0, r6
60304854:	ebfffc25 	bl	603038f0 <_vfiprintf_r>
60304858:	e2505000 	subs	r5, r0, #0
6030485c:	ba000004 	blt	60304874 <__sbprintf+0xa4>
60304860:	e1a01007 	mov	r1, r7
60304864:	e1a00006 	mov	r0, r6
60304868:	ebfff0f4 	bl	60300c40 <_fflush_r>
6030486c:	e3500000 	cmp	r0, #0
60304870:	13e05000 	mvnne	r5, #0
60304874:	e1dd30bc 	ldrh	r3, [sp, #12]
60304878:	e59d0058 	ldr	r0, [sp, #88]	; 0x58
6030487c:	e3130040 	tst	r3, #64	; 0x40
60304880:	11d430bc 	ldrhne	r3, [r4, #12]
60304884:	13833040 	orrne	r3, r3, #64	; 0x40
60304888:	11c430bc 	strhne	r3, [r4, #12]
6030488c:	ebfff25f 	bl	60301210 <__retarget_lock_close_recursive>
60304890:	e1a00005 	mov	r0, r5
60304894:	e28dde46 	add	sp, sp, #1120	; 0x460
60304898:	e28dd008 	add	sp, sp, #8
6030489c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

603048a0 <_vfprintf_r>:
603048a0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
603048a4:	e1a07000 	mov	r7, r0
603048a8:	e1a05001 	mov	r5, r1
603048ac:	ed2d8b04 	vpush	{d8-d9}
603048b0:	e24ddf4b 	sub	sp, sp, #300	; 0x12c
603048b4:	e1a0a002 	mov	sl, r2
603048b8:	e1a04003 	mov	r4, r3
603048bc:	e1a08003 	mov	r8, r3
603048c0:	ebfff815 	bl	6030291c <_localeconv_r>
603048c4:	e5903000 	ldr	r3, [r0]
603048c8:	e58d3040 	str	r3, [sp, #64]	; 0x40
603048cc:	e1a00003 	mov	r0, r3
603048d0:	eb0022c4 	bl	6030d3e8 <__wrap_strlen>
603048d4:	e3570000 	cmp	r7, #0
603048d8:	e58d0028 	str	r0, [sp, #40]	; 0x28
603048dc:	0a000004 	beq	603048f4 <_vfprintf_r+0x54>
603048e0:	e5973018 	ldr	r3, [r7, #24]
603048e4:	e3530000 	cmp	r3, #0
603048e8:	1a000001 	bne	603048f4 <_vfprintf_r+0x54>
603048ec:	e1a00007 	mov	r0, r7
603048f0:	ebfff17a 	bl	60300ee0 <__sinit>
603048f4:	e5953064 	ldr	r3, [r5, #100]	; 0x64
603048f8:	e3130001 	tst	r3, #1
603048fc:	1a000004 	bne	60304914 <_vfprintf_r+0x74>
60304900:	e1d530bc 	ldrh	r3, [r5, #12]
60304904:	e3130c02 	tst	r3, #512	; 0x200
60304908:	1a000001 	bne	60304914 <_vfprintf_r+0x74>
6030490c:	e5950058 	ldr	r0, [r5, #88]	; 0x58
60304910:	ebfff240 	bl	60301218 <__retarget_lock_acquire_recursive>
60304914:	e1d530fc 	ldrsh	r3, [r5, #12]
60304918:	e3130a02 	tst	r3, #8192	; 0x2000
6030491c:	1a000004 	bne	60304934 <_vfprintf_r+0x94>
60304920:	e3833a02 	orr	r3, r3, #8192	; 0x2000
60304924:	e1c530bc 	strh	r3, [r5, #12]
60304928:	e5953064 	ldr	r3, [r5, #100]	; 0x64
6030492c:	e3c33a02 	bic	r3, r3, #8192	; 0x2000
60304930:	e5853064 	str	r3, [r5, #100]	; 0x64
60304934:	e1d530bc 	ldrh	r3, [r5, #12]
60304938:	e3130008 	tst	r3, #8
6030493c:	0a000002 	beq	6030494c <_vfprintf_r+0xac>
60304940:	e5953010 	ldr	r3, [r5, #16]
60304944:	e3530000 	cmp	r3, #0
60304948:	1a000013 	bne	6030499c <_vfprintf_r+0xfc>
6030494c:	e1a01005 	mov	r1, r5
60304950:	e1a00007 	mov	r0, r7
60304954:	eb0007d0 	bl	6030689c <__swsetup_r>
60304958:	e3500000 	cmp	r0, #0
6030495c:	0a00000e 	beq	6030499c <_vfprintf_r+0xfc>
60304960:	e5953064 	ldr	r3, [r5, #100]	; 0x64
60304964:	e3130001 	tst	r3, #1
60304968:	0a000005 	beq	60304984 <_vfprintf_r+0xe4>
6030496c:	e3e03000 	mvn	r3, #0
60304970:	e58d302c 	str	r3, [sp, #44]	; 0x2c
60304974:	e59d002c 	ldr	r0, [sp, #44]	; 0x2c
60304978:	e28ddf4b 	add	sp, sp, #300	; 0x12c
6030497c:	ecbd8b04 	vpop	{d8-d9}
60304980:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
60304984:	e1d530bc 	ldrh	r3, [r5, #12]
60304988:	e3130c02 	tst	r3, #512	; 0x200
6030498c:	1afffff6 	bne	6030496c <_vfprintf_r+0xcc>
60304990:	e5950058 	ldr	r0, [r5, #88]	; 0x58
60304994:	ebfff225 	bl	60301230 <__retarget_lock_release_recursive>
60304998:	eafffff3 	b	6030496c <_vfprintf_r+0xcc>
6030499c:	e1d530bc 	ldrh	r3, [r5, #12]
603049a0:	e203201a 	and	r2, r3, #26
603049a4:	e352000a 	cmp	r2, #10
603049a8:	1a000011 	bne	603049f4 <_vfprintf_r+0x154>
603049ac:	e1d520fe 	ldrsh	r2, [r5, #14]
603049b0:	e3520000 	cmp	r2, #0
603049b4:	ba00000e 	blt	603049f4 <_vfprintf_r+0x154>
603049b8:	e5952064 	ldr	r2, [r5, #100]	; 0x64
603049bc:	e3120001 	tst	r2, #1
603049c0:	1a000003 	bne	603049d4 <_vfprintf_r+0x134>
603049c4:	e3130c02 	tst	r3, #512	; 0x200
603049c8:	1a000001 	bne	603049d4 <_vfprintf_r+0x134>
603049cc:	e5950058 	ldr	r0, [r5, #88]	; 0x58
603049d0:	ebfff216 	bl	60301230 <__retarget_lock_release_recursive>
603049d4:	e1a03004 	mov	r3, r4
603049d8:	e1a0200a 	mov	r2, sl
603049dc:	e1a01005 	mov	r1, r5
603049e0:	e1a00007 	mov	r0, r7
603049e4:	e28ddf4b 	add	sp, sp, #300	; 0x12c
603049e8:	ecbd8b04 	vpop	{d8-d9}
603049ec:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
603049f0:	ea000775 	b	603067cc <__sbprintf>
603049f4:	f2808e30 	vmov.i64	d8, #0x0000000000000000
603049f8:	e3a03000 	mov	r3, #0
603049fc:	e28d4084 	add	r4, sp, #132	; 0x84
60304a00:	e58d3080 	str	r3, [sp, #128]	; 0x80
60304a04:	e58d4078 	str	r4, [sp, #120]	; 0x78
60304a08:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60304a0c:	e58d300c 	str	r3, [sp, #12]
60304a10:	e58d304c 	str	r3, [sp, #76]	; 0x4c
60304a14:	e58d3048 	str	r3, [sp, #72]	; 0x48
60304a18:	e58d3020 	str	r3, [sp, #32]
60304a1c:	e58d3038 	str	r3, [sp, #56]	; 0x38
60304a20:	e58d3044 	str	r3, [sp, #68]	; 0x44
60304a24:	e58d302c 	str	r3, [sp, #44]	; 0x2c
60304a28:	e1a0200a 	mov	r2, sl
60304a2c:	e5d23000 	ldrb	r3, [r2]
60304a30:	e1a06002 	mov	r6, r2
60304a34:	e2822001 	add	r2, r2, #1
60304a38:	e3530000 	cmp	r3, #0
60304a3c:	13530025 	cmpne	r3, #37	; 0x25
60304a40:	1afffff9 	bne	60304a2c <_vfprintf_r+0x18c>
60304a44:	e056900a 	subs	r9, r6, sl
60304a48:	0a000014 	beq	60304aa0 <_vfprintf_r+0x200>
60304a4c:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
60304a50:	e584a000 	str	sl, [r4]
60304a54:	e0833009 	add	r3, r3, r9
60304a58:	e58d3080 	str	r3, [sp, #128]	; 0x80
60304a5c:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60304a60:	e5849004 	str	r9, [r4, #4]
60304a64:	e2833001 	add	r3, r3, #1
60304a68:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60304a6c:	e3530007 	cmp	r3, #7
60304a70:	d2844008 	addle	r4, r4, #8
60304a74:	da000006 	ble	60304a94 <_vfprintf_r+0x1f4>
60304a78:	e28d2078 	add	r2, sp, #120	; 0x78
60304a7c:	e1a01005 	mov	r1, r5
60304a80:	e1a00007 	mov	r0, r7
60304a84:	ebfffb6f 	bl	60303848 <__sprint_r>
60304a88:	e3500000 	cmp	r0, #0
60304a8c:	1a00015f 	bne	60305010 <_vfprintf_r+0x770>
60304a90:	e28d4084 	add	r4, sp, #132	; 0x84
60304a94:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
60304a98:	e0833009 	add	r3, r3, r9
60304a9c:	e58d302c 	str	r3, [sp, #44]	; 0x2c
60304aa0:	e5d63000 	ldrb	r3, [r6]
60304aa4:	e3530000 	cmp	r3, #0
60304aa8:	0a0006e9 	beq	60306654 <_vfprintf_r+0x1db4>
60304aac:	e3a02000 	mov	r2, #0
60304ab0:	e2863001 	add	r3, r6, #1
60304ab4:	e1a0b002 	mov	fp, r2
60304ab8:	e3e06000 	mvn	r6, #0
60304abc:	e3a0900a 	mov	r9, #10
60304ac0:	e1a01006 	mov	r1, r6
60304ac4:	e5cd205b 	strb	r2, [sp, #91]	; 0x5b
60304ac8:	e58d2030 	str	r2, [sp, #48]	; 0x30
60304acc:	e4d32001 	ldrb	r2, [r3], #1
60304ad0:	e58d2010 	str	r2, [sp, #16]
60304ad4:	e58d3024 	str	r3, [sp, #36]	; 0x24
60304ad8:	e59d3010 	ldr	r3, [sp, #16]
60304adc:	e2433020 	sub	r3, r3, #32
60304ae0:	e353005a 	cmp	r3, #90	; 0x5a
60304ae4:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
60304ae8:	ea0003ff 	b	60305aec <_vfprintf_r+0x124c>
60304aec:	60304cb0 	.word	0x60304cb0
60304af0:	60305aec 	.word	0x60305aec
60304af4:	60305aec 	.word	0x60305aec
60304af8:	60304cc8 	.word	0x60304cc8
60304afc:	60305aec 	.word	0x60305aec
60304b00:	60305aec 	.word	0x60305aec
60304b04:	60305aec 	.word	0x60305aec
60304b08:	60304c58 	.word	0x60304c58
60304b0c:	60305aec 	.word	0x60305aec
60304b10:	60305aec 	.word	0x60305aec
60304b14:	60304cd0 	.word	0x60304cd0
60304b18:	60304cf0 	.word	0x60304cf0
60304b1c:	60305aec 	.word	0x60305aec
60304b20:	60304ce8 	.word	0x60304ce8
60304b24:	60304cf8 	.word	0x60304cf8
60304b28:	60305aec 	.word	0x60305aec
60304b2c:	60304d48 	.word	0x60304d48
60304b30:	60304d50 	.word	0x60304d50
60304b34:	60304d50 	.word	0x60304d50
60304b38:	60304d50 	.word	0x60304d50
60304b3c:	60304d50 	.word	0x60304d50
60304b40:	60304d50 	.word	0x60304d50
60304b44:	60304d50 	.word	0x60304d50
60304b48:	60304d50 	.word	0x60304d50
60304b4c:	60304d50 	.word	0x60304d50
60304b50:	60304d50 	.word	0x60304d50
60304b54:	60305aec 	.word	0x60305aec
60304b58:	60305aec 	.word	0x60305aec
60304b5c:	60305aec 	.word	0x60305aec
60304b60:	60305aec 	.word	0x60305aec
60304b64:	60305aec 	.word	0x60305aec
60304b68:	60305aec 	.word	0x60305aec
60304b6c:	60305aec 	.word	0x60305aec
60304b70:	60304f14 	.word	0x60304f14
60304b74:	60305aec 	.word	0x60305aec
60304b78:	60304ddc 	.word	0x60304ddc
60304b7c:	60304e18 	.word	0x60304e18
60304b80:	60304f14 	.word	0x60304f14
60304b84:	60304f14 	.word	0x60304f14
60304b88:	60304f14 	.word	0x60304f14
60304b8c:	60305aec 	.word	0x60305aec
60304b90:	60305aec 	.word	0x60305aec
60304b94:	60305aec 	.word	0x60305aec
60304b98:	60305aec 	.word	0x60305aec
60304b9c:	60304d88 	.word	0x60304d88
60304ba0:	60305aec 	.word	0x60305aec
60304ba4:	60305aec 	.word	0x60305aec
60304ba8:	60305860 	.word	0x60305860
60304bac:	60305aec 	.word	0x60305aec
60304bb0:	60305aec 	.word	0x60305aec
60304bb4:	60305aec 	.word	0x60305aec
60304bb8:	60305904 	.word	0x60305904
60304bbc:	60305aec 	.word	0x60305aec
60304bc0:	60305974 	.word	0x60305974
60304bc4:	60305aec 	.word	0x60305aec
60304bc8:	60305aec 	.word	0x60305aec
60304bcc:	603059d8 	.word	0x603059d8
60304bd0:	60305aec 	.word	0x60305aec
60304bd4:	60305aec 	.word	0x60305aec
60304bd8:	60305aec 	.word	0x60305aec
60304bdc:	60305aec 	.word	0x60305aec
60304be0:	60305aec 	.word	0x60305aec
60304be4:	60305aec 	.word	0x60305aec
60304be8:	60305aec 	.word	0x60305aec
60304bec:	60305aec 	.word	0x60305aec
60304bf0:	60304f14 	.word	0x60304f14
60304bf4:	60305aec 	.word	0x60305aec
60304bf8:	60304ddc 	.word	0x60304ddc
60304bfc:	60304e1c 	.word	0x60304e1c
60304c00:	60304f14 	.word	0x60304f14
60304c04:	60304f14 	.word	0x60304f14
60304c08:	60304f14 	.word	0x60304f14
60304c0c:	60304d90 	.word	0x60304d90
60304c10:	60304e1c 	.word	0x60304e1c
60304c14:	60304dd4 	.word	0x60304dd4
60304c18:	60305aec 	.word	0x60305aec
60304c1c:	60304db4 	.word	0x60304db4
60304c20:	60305aec 	.word	0x60305aec
60304c24:	603057ec 	.word	0x603057ec
60304c28:	60305864 	.word	0x60305864
60304c2c:	603058d0 	.word	0x603058d0
60304c30:	60304dd4 	.word	0x60304dd4
60304c34:	60305aec 	.word	0x60305aec
60304c38:	60305904 	.word	0x60305904
60304c3c:	60304ca8 	.word	0x60304ca8
60304c40:	60305978 	.word	0x60305978
60304c44:	60305aec 	.word	0x60305aec
60304c48:	60305aec 	.word	0x60305aec
60304c4c:	60305a34 	.word	0x60305a34
60304c50:	60305aec 	.word	0x60305aec
60304c54:	60304ca8 	.word	0x60304ca8
60304c58:	e1a00007 	mov	r0, r7
60304c5c:	ebfff72e 	bl	6030291c <_localeconv_r>
60304c60:	e5903004 	ldr	r3, [r0, #4]
60304c64:	e58d3044 	str	r3, [sp, #68]	; 0x44
60304c68:	e1a00003 	mov	r0, r3
60304c6c:	eb0021dd 	bl	6030d3e8 <__wrap_strlen>
60304c70:	e58d0038 	str	r0, [sp, #56]	; 0x38
60304c74:	e1a00007 	mov	r0, r7
60304c78:	ebfff727 	bl	6030291c <_localeconv_r>
60304c7c:	e5903008 	ldr	r3, [r0, #8]
60304c80:	e58d3020 	str	r3, [sp, #32]
60304c84:	e3e01000 	mvn	r1, #0
60304c88:	e59d3038 	ldr	r3, [sp, #56]	; 0x38
60304c8c:	e59d2020 	ldr	r2, [sp, #32]
60304c90:	e3530000 	cmp	r3, #0
60304c94:	13520000 	cmpne	r2, #0
60304c98:	0a000002 	beq	60304ca8 <_vfprintf_r+0x408>
60304c9c:	e5d23000 	ldrb	r3, [r2]
60304ca0:	e3530000 	cmp	r3, #0
60304ca4:	138bbb01 	orrne	fp, fp, #1024	; 0x400
60304ca8:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
60304cac:	eaffff86 	b	60304acc <_vfprintf_r+0x22c>
60304cb0:	e5dd305b 	ldrb	r3, [sp, #91]	; 0x5b
60304cb4:	e3530000 	cmp	r3, #0
60304cb8:	03a03020 	moveq	r3, #32
60304cbc:	1afffff9 	bne	60304ca8 <_vfprintf_r+0x408>
60304cc0:	e5cd305b 	strb	r3, [sp, #91]	; 0x5b
60304cc4:	eafffff7 	b	60304ca8 <_vfprintf_r+0x408>
60304cc8:	e38bb001 	orr	fp, fp, #1
60304ccc:	eafffff5 	b	60304ca8 <_vfprintf_r+0x408>
60304cd0:	e4983004 	ldr	r3, [r8], #4
60304cd4:	e58d3030 	str	r3, [sp, #48]	; 0x30
60304cd8:	e3530000 	cmp	r3, #0
60304cdc:	aafffff1 	bge	60304ca8 <_vfprintf_r+0x408>
60304ce0:	e2633000 	rsb	r3, r3, #0
60304ce4:	e58d3030 	str	r3, [sp, #48]	; 0x30
60304ce8:	e38bb004 	orr	fp, fp, #4
60304cec:	eaffffed 	b	60304ca8 <_vfprintf_r+0x408>
60304cf0:	e3a0302b 	mov	r3, #43	; 0x2b
60304cf4:	eafffff1 	b	60304cc0 <_vfprintf_r+0x420>
60304cf8:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
60304cfc:	e4d32001 	ldrb	r2, [r3], #1
60304d00:	e58d2010 	str	r2, [sp, #16]
60304d04:	e352002a 	cmp	r2, #42	; 0x2a
60304d08:	1a00000c 	bne	60304d40 <_vfprintf_r+0x4a0>
60304d0c:	e4986004 	ldr	r6, [r8], #4
60304d10:	e58d3024 	str	r3, [sp, #36]	; 0x24
60304d14:	e1560001 	cmp	r6, r1
60304d18:	b1a06001 	movlt	r6, r1
60304d1c:	eaffffe1 	b	60304ca8 <_vfprintf_r+0x408>
60304d20:	e0262699 	mla	r6, r9, r6, r2
60304d24:	e4d32001 	ldrb	r2, [r3], #1
60304d28:	e58d2010 	str	r2, [sp, #16]
60304d2c:	e59d2010 	ldr	r2, [sp, #16]
60304d30:	e2422030 	sub	r2, r2, #48	; 0x30
60304d34:	e3520009 	cmp	r2, #9
60304d38:	9afffff8 	bls	60304d20 <_vfprintf_r+0x480>
60304d3c:	eaffff64 	b	60304ad4 <_vfprintf_r+0x234>
60304d40:	e3a06000 	mov	r6, #0
60304d44:	eafffff8 	b	60304d2c <_vfprintf_r+0x48c>
60304d48:	e38bb080 	orr	fp, fp, #128	; 0x80
60304d4c:	eaffffd5 	b	60304ca8 <_vfprintf_r+0x408>
60304d50:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
60304d54:	e3a02000 	mov	r2, #0
60304d58:	e58d2030 	str	r2, [sp, #48]	; 0x30
60304d5c:	e59d2010 	ldr	r2, [sp, #16]
60304d60:	e59d0030 	ldr	r0, [sp, #48]	; 0x30
60304d64:	e2422030 	sub	r2, r2, #48	; 0x30
60304d68:	e0222099 	mla	r2, r9, r0, r2
60304d6c:	e58d2030 	str	r2, [sp, #48]	; 0x30
60304d70:	e4d32001 	ldrb	r2, [r3], #1
60304d74:	e58d2010 	str	r2, [sp, #16]
60304d78:	e2422030 	sub	r2, r2, #48	; 0x30
60304d7c:	e3520009 	cmp	r2, #9
60304d80:	9afffff5 	bls	60304d5c <_vfprintf_r+0x4bc>
60304d84:	eaffff52 	b	60304ad4 <_vfprintf_r+0x234>
60304d88:	e38bb008 	orr	fp, fp, #8
60304d8c:	eaffffc5 	b	60304ca8 <_vfprintf_r+0x408>
60304d90:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
60304d94:	e5d33000 	ldrb	r3, [r3]
60304d98:	e3530068 	cmp	r3, #104	; 0x68
60304d9c:	038bbc02 	orreq	fp, fp, #512	; 0x200
60304da0:	138bb040 	orrne	fp, fp, #64	; 0x40
60304da4:	059d3024 	ldreq	r3, [sp, #36]	; 0x24
60304da8:	02833001 	addeq	r3, r3, #1
60304dac:	058d3024 	streq	r3, [sp, #36]	; 0x24
60304db0:	eaffffbc 	b	60304ca8 <_vfprintf_r+0x408>
60304db4:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
60304db8:	e5d33000 	ldrb	r3, [r3]
60304dbc:	e353006c 	cmp	r3, #108	; 0x6c
60304dc0:	138bb010 	orrne	fp, fp, #16
60304dc4:	059d3024 	ldreq	r3, [sp, #36]	; 0x24
60304dc8:	02833001 	addeq	r3, r3, #1
60304dcc:	058d3024 	streq	r3, [sp, #36]	; 0x24
60304dd0:	1affffb4 	bne	60304ca8 <_vfprintf_r+0x408>
60304dd4:	e38bb020 	orr	fp, fp, #32
60304dd8:	eaffffb2 	b	60304ca8 <_vfprintf_r+0x408>
60304ddc:	e1a02008 	mov	r2, r8
60304de0:	e3a00000 	mov	r0, #0
60304de4:	e5cd005b 	strb	r0, [sp, #91]	; 0x5b
60304de8:	e4923004 	ldr	r3, [r2], #4
60304dec:	e58d2014 	str	r2, [sp, #20]
60304df0:	e5cd30c4 	strb	r3, [sp, #196]	; 0xc4
60304df4:	e3a06001 	mov	r6, #1
60304df8:	e1a09000 	mov	r9, r0
60304dfc:	e1a03000 	mov	r3, r0
60304e00:	e1a08000 	mov	r8, r0
60304e04:	e28da0c4 	add	sl, sp, #196	; 0xc4
60304e08:	e58d0008 	str	r0, [sp, #8]
60304e0c:	e58d0018 	str	r0, [sp, #24]
60304e10:	e58d001c 	str	r0, [sp, #28]
60304e14:	ea000180 	b	6030541c <_vfprintf_r+0xb7c>
60304e18:	e38bb010 	orr	fp, fp, #16
60304e1c:	e31b0020 	tst	fp, #32
60304e20:	0a00002a 	beq	60304ed0 <_vfprintf_r+0x630>
60304e24:	e2888007 	add	r8, r8, #7
60304e28:	e3c83007 	bic	r3, r8, #7
60304e2c:	e1a02003 	mov	r2, r3
60304e30:	e5939004 	ldr	r9, [r3, #4]
60304e34:	e4928008 	ldr	r8, [r2], #8
60304e38:	e58d2014 	str	r2, [sp, #20]
60304e3c:	e3590000 	cmp	r9, #0
60304e40:	aa000610 	bge	60306688 <_vfprintf_r+0x1de8>
60304e44:	e2788000 	rsbs	r8, r8, #0
60304e48:	e3a0302d 	mov	r3, #45	; 0x2d
60304e4c:	e2e99000 	rsc	r9, r9, #0
60304e50:	e5cd305b 	strb	r3, [sp, #91]	; 0x5b
60304e54:	e3a03001 	mov	r3, #1
60304e58:	e3760001 	cmn	r6, #1
60304e5c:	11a0100b 	movne	r1, fp
60304e60:	1a000303 	bne	60305a74 <_vfprintf_r+0x11d4>
60304e64:	e3530001 	cmp	r3, #1
60304e68:	0a00060a 	beq	60306698 <_vfprintf_r+0x1df8>
60304e6c:	e28daf4a 	add	sl, sp, #296	; 0x128
60304e70:	e3530002 	cmp	r3, #2
60304e74:	0a00030f 	beq	60305ab8 <_vfprintf_r+0x1218>
60304e78:	e2083007 	and	r3, r8, #7
60304e7c:	e1a081a8 	lsr	r8, r8, #3
60304e80:	e1888e89 	orr	r8, r8, r9, lsl #29
60304e84:	e1a091a9 	lsr	r9, r9, #3
60304e88:	e1a0200a 	mov	r2, sl
60304e8c:	e2833030 	add	r3, r3, #48	; 0x30
60304e90:	e1981009 	orrs	r1, r8, r9
60304e94:	e56a3001 	strb	r3, [sl, #-1]!
60304e98:	1afffff6 	bne	60304e78 <_vfprintf_r+0x5d8>
60304e9c:	e3530030 	cmp	r3, #48	; 0x30
60304ea0:	03a01000 	moveq	r1, #0
60304ea4:	120b1001 	andne	r1, fp, #1
60304ea8:	e3510000 	cmp	r1, #0
60304eac:	13a03030 	movne	r3, #48	; 0x30
60304eb0:	154a3001 	strbne	r3, [sl, #-1]
60304eb4:	1242a002 	subne	sl, r2, #2
60304eb8:	e28d3f4a 	add	r3, sp, #296	; 0x128
60304ebc:	e1a09006 	mov	r9, r6
60304ec0:	e043600a 	sub	r6, r3, sl
60304ec4:	e3a03000 	mov	r3, #0
60304ec8:	e58d3008 	str	r3, [sp, #8]
60304ecc:	ea000028 	b	60304f74 <_vfprintf_r+0x6d4>
60304ed0:	e1a03008 	mov	r3, r8
60304ed4:	e31b0010 	tst	fp, #16
60304ed8:	e4939004 	ldr	r9, [r3], #4
60304edc:	e58d3014 	str	r3, [sp, #20]
60304ee0:	0a000002 	beq	60304ef0 <_vfprintf_r+0x650>
60304ee4:	e1a08009 	mov	r8, r9
60304ee8:	e1a09fc9 	asr	r9, r9, #31
60304eec:	eaffffd2 	b	60304e3c <_vfprintf_r+0x59c>
60304ef0:	e31b0040 	tst	fp, #64	; 0x40
60304ef4:	16bf8079 	sxthne	r8, r9
60304ef8:	17a097d9 	sbfxne	r9, r9, #15, #1
60304efc:	1affffce 	bne	60304e3c <_vfprintf_r+0x59c>
60304f00:	e31b0c02 	tst	fp, #512	; 0x200
60304f04:	16af8079 	sxtbne	r8, r9
60304f08:	17a093d9 	sbfxne	r9, r9, #7, #1
60304f0c:	1affffca 	bne	60304e3c <_vfprintf_r+0x59c>
60304f10:	eafffff3 	b	60304ee4 <_vfprintf_r+0x644>
60304f14:	e2888007 	add	r8, r8, #7
60304f18:	eddf0bec 	vldr	d16, [pc, #944]	; 603052d0 <_vfprintf_r+0xa30>
60304f1c:	e3c83007 	bic	r3, r8, #7
60304f20:	ecb38b02 	vldmia	r3!, {d8}
60304f24:	eef01bc8 	vabs.f64	d17, d8
60304f28:	e58d3014 	str	r3, [sp, #20]
60304f2c:	eef41b60 	vcmp.f64	d17, d16
60304f30:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60304f34:	da000012 	ble	60304f84 <_vfprintf_r+0x6e4>
60304f38:	eeb58bc0 	vcmpe.f64	d8, #0.0
60304f3c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60304f40:	43a0302d 	movmi	r3, #45	; 0x2d
60304f44:	45cd305b 	strbmi	r3, [sp, #91]	; 0x5b
60304f48:	e59f2388 	ldr	r2, [pc, #904]	; 603052d8 <_vfprintf_r+0xa38>
60304f4c:	e59f0388 	ldr	r0, [pc, #904]	; 603052dc <_vfprintf_r+0xa3c>
60304f50:	e59d3010 	ldr	r3, [sp, #16]
60304f54:	e3cbb080 	bic	fp, fp, #128	; 0x80
60304f58:	e3a06003 	mov	r6, #3
60304f5c:	e3530047 	cmp	r3, #71	; 0x47
60304f60:	e3a03000 	mov	r3, #0
60304f64:	d1a0a002 	movle	sl, r2
60304f68:	c1a0a000 	movgt	sl, r0
60304f6c:	e1a09003 	mov	r9, r3
60304f70:	e58d3008 	str	r3, [sp, #8]
60304f74:	e1a08003 	mov	r8, r3
60304f78:	e58d3018 	str	r3, [sp, #24]
60304f7c:	e58d301c 	str	r3, [sp, #28]
60304f80:	ea000125 	b	6030541c <_vfprintf_r+0xb7c>
60304f84:	eeb48b48 	vcmp.f64	d8, d8
60304f88:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60304f8c:	7a000006 	bvc	60304fac <_vfprintf_r+0x70c>
60304f90:	ee183a90 	vmov	r3, s17
60304f94:	e59f2344 	ldr	r2, [pc, #836]	; 603052e0 <_vfprintf_r+0xa40>
60304f98:	e59f0344 	ldr	r0, [pc, #836]	; 603052e4 <_vfprintf_r+0xa44>
60304f9c:	e3530000 	cmp	r3, #0
60304fa0:	b3a0302d 	movlt	r3, #45	; 0x2d
60304fa4:	b5cd305b 	strblt	r3, [sp, #91]	; 0x5b
60304fa8:	eaffffe8 	b	60304f50 <_vfprintf_r+0x6b0>
60304fac:	e59d3010 	ldr	r3, [sp, #16]
60304fb0:	e3c39020 	bic	r9, r3, #32
60304fb4:	e3590041 	cmp	r9, #65	; 0x41
60304fb8:	1a000020 	bne	60305040 <_vfprintf_r+0x7a0>
60304fbc:	e3a03030 	mov	r3, #48	; 0x30
60304fc0:	e5cd305c 	strb	r3, [sp, #92]	; 0x5c
60304fc4:	e59d3010 	ldr	r3, [sp, #16]
60304fc8:	e38bb002 	orr	fp, fp, #2
60304fcc:	e3530061 	cmp	r3, #97	; 0x61
60304fd0:	03a03078 	moveq	r3, #120	; 0x78
60304fd4:	13a03058 	movne	r3, #88	; 0x58
60304fd8:	e3560063 	cmp	r6, #99	; 0x63
60304fdc:	e5cd305d 	strb	r3, [sp, #93]	; 0x5d
60304fe0:	d28da0c4 	addle	sl, sp, #196	; 0xc4
60304fe4:	d3a03000 	movle	r3, #0
60304fe8:	d58d3008 	strle	r3, [sp, #8]
60304fec:	da00001b 	ble	60305060 <_vfprintf_r+0x7c0>
60304ff0:	e2861001 	add	r1, r6, #1
60304ff4:	e1a00007 	mov	r0, r7
60304ff8:	eb0022a9 	bl	6030daa4 <__wrap__malloc_r>
60304ffc:	e250a000 	subs	sl, r0, #0
60305000:	1a00006e 	bne	603051c0 <_vfprintf_r+0x920>
60305004:	e1d530bc 	ldrh	r3, [r5, #12]
60305008:	e3833040 	orr	r3, r3, #64	; 0x40
6030500c:	e1c530bc 	strh	r3, [r5, #12]
60305010:	e5953064 	ldr	r3, [r5, #100]	; 0x64
60305014:	e3130001 	tst	r3, #1
60305018:	1a000004 	bne	60305030 <_vfprintf_r+0x790>
6030501c:	e1d530bc 	ldrh	r3, [r5, #12]
60305020:	e3130c02 	tst	r3, #512	; 0x200
60305024:	1a000001 	bne	60305030 <_vfprintf_r+0x790>
60305028:	e5950058 	ldr	r0, [r5, #88]	; 0x58
6030502c:	ebfff07f 	bl	60301230 <__retarget_lock_release_recursive>
60305030:	e1d530bc 	ldrh	r3, [r5, #12]
60305034:	e3130040 	tst	r3, #64	; 0x40
60305038:	0afffe4d 	beq	60304974 <_vfprintf_r+0xd4>
6030503c:	eafffe4a 	b	6030496c <_vfprintf_r+0xcc>
60305040:	e3760001 	cmn	r6, #1
60305044:	e3a03000 	mov	r3, #0
60305048:	03a06006 	moveq	r6, #6
6030504c:	e58d3008 	str	r3, [sp, #8]
60305050:	0a000002 	beq	60305060 <_vfprintf_r+0x7c0>
60305054:	e1560003 	cmp	r6, r3
60305058:	03590047 	cmpeq	r9, #71	; 0x47
6030505c:	03a06001 	moveq	r6, #1
60305060:	e38b3c01 	orr	r3, fp, #256	; 0x100
60305064:	e58d3034 	str	r3, [sp, #52]	; 0x34
60305068:	ee183a90 	vmov	r3, s17
6030506c:	e3530000 	cmp	r3, #0
60305070:	b3a0302d 	movlt	r3, #45	; 0x2d
60305074:	a3a03000 	movge	r3, #0
60305078:	e58d303c 	str	r3, [sp, #60]	; 0x3c
6030507c:	beb19b48 	vneglt.f64	d9, d8
60305080:	aeb09b48 	vmovge.f64	d9, d8
60305084:	e3590041 	cmp	r9, #65	; 0x41
60305088:	1a00005d 	bne	60305204 <_vfprintf_r+0x964>
6030508c:	e28d0060 	add	r0, sp, #96	; 0x60
60305090:	eeb00b49 	vmov.f64	d0, d9
60305094:	ebfff9c5 	bl	603037b0 <frexp>
60305098:	eef40b00 	vmov.f64	d16, #64	; 0x3e000000  0.125
6030509c:	e59d2010 	ldr	r2, [sp, #16]
603050a0:	e2460001 	sub	r0, r6, #1
603050a4:	ee200b20 	vmul.f64	d0, d0, d16
603050a8:	e59f1244 	ldr	r1, [pc, #580]	; 603052f4 <_vfprintf_r+0xa54>
603050ac:	eef30b00 	vmov.f64	d16, #48	; 0x41800000  16.0
603050b0:	eeb50b40 	vcmp.f64	d0, #0.0
603050b4:	eef1fa10 	vmrs	APSR_nzcv, fpscr
603050b8:	03a03001 	moveq	r3, #1
603050bc:	058d3060 	streq	r3, [sp, #96]	; 0x60
603050c0:	e59f3228 	ldr	r3, [pc, #552]	; 603052f0 <_vfprintf_r+0xa50>
603050c4:	e3520061 	cmp	r2, #97	; 0x61
603050c8:	11a01003 	movne	r1, r3
603050cc:	e1a0300a 	mov	r3, sl
603050d0:	ee200b20 	vmul.f64	d0, d0, d16
603050d4:	e3700001 	cmn	r0, #1
603050d8:	eefd7bc0 	vcvt.s32.f64	s15, d0
603050dc:	ee17ca90 	vmov	ip, s15
603050e0:	eef81be7 	vcvt.f64.s32	d17, s15
603050e4:	e7d1200c 	ldrb	r2, [r1, ip]
603050e8:	ee300b61 	vsub.f64	d0, d0, d17
603050ec:	e4c32001 	strb	r2, [r3], #1
603050f0:	e1a02000 	mov	r2, r0
603050f4:	0a000003 	beq	60305108 <_vfprintf_r+0x868>
603050f8:	eeb50b40 	vcmp.f64	d0, #0.0
603050fc:	e2400001 	sub	r0, r0, #1
60305100:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60305104:	1afffff1 	bne	603050d0 <_vfprintf_r+0x830>
60305108:	eef60b00 	vmov.f64	d16, #96	; 0x3f000000  0.5
6030510c:	eeb40be0 	vcmpe.f64	d0, d16
60305110:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60305114:	ca000004 	bgt	6030512c <_vfprintf_r+0x88c>
60305118:	eeb40b60 	vcmp.f64	d0, d16
6030511c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60305120:	1a000033 	bne	603051f4 <_vfprintf_r+0x954>
60305124:	e31c0001 	tst	ip, #1
60305128:	0a000031 	beq	603051f4 <_vfprintf_r+0x954>
6030512c:	e5d1c00f 	ldrb	ip, [r1, #15]
60305130:	e3a0e030 	mov	lr, #48	; 0x30
60305134:	e58d3070 	str	r3, [sp, #112]	; 0x70
60305138:	e59d0070 	ldr	r0, [sp, #112]	; 0x70
6030513c:	e2402001 	sub	r2, r0, #1
60305140:	e58d2070 	str	r2, [sp, #112]	; 0x70
60305144:	e5502001 	ldrb	r2, [r0, #-1]
60305148:	e152000c 	cmp	r2, ip
6030514c:	0a00001d 	beq	603051c8 <_vfprintf_r+0x928>
60305150:	e3520039 	cmp	r2, #57	; 0x39
60305154:	12822001 	addne	r2, r2, #1
60305158:	05d1200a 	ldrbeq	r2, [r1, #10]
6030515c:	16ef2072 	uxtbne	r2, r2
60305160:	e5402001 	strb	r2, [r0, #-1]
60305164:	e043300a 	sub	r3, r3, sl
60305168:	e59d8060 	ldr	r8, [sp, #96]	; 0x60
6030516c:	e3590047 	cmp	r9, #71	; 0x47
60305170:	e58d300c 	str	r3, [sp, #12]
60305174:	1a000061 	bne	60305300 <_vfprintf_r+0xa60>
60305178:	e3780003 	cmn	r8, #3
6030517c:	a3a03000 	movge	r3, #0
60305180:	b3a03001 	movlt	r3, #1
60305184:	e1580006 	cmp	r8, r6
60305188:	c3833001 	orrgt	r3, r3, #1
6030518c:	e3530000 	cmp	r3, #0
60305190:	159d3010 	ldrne	r3, [sp, #16]
60305194:	12433002 	subne	r3, r3, #2
60305198:	158d3010 	strne	r3, [sp, #16]
6030519c:	1a000059 	bne	60305308 <_vfprintf_r+0xa68>
603051a0:	e59d300c 	ldr	r3, [sp, #12]
603051a4:	e1580003 	cmp	r8, r3
603051a8:	ba000176 	blt	60305788 <_vfprintf_r+0xee8>
603051ac:	e31b0001 	tst	fp, #1
603051b0:	159d3028 	ldrne	r3, [sp, #40]	; 0x28
603051b4:	10886003 	addne	r6, r8, r3
603051b8:	01a06008 	moveq	r6, r8
603051bc:	ea000177 	b	603057a0 <_vfprintf_r+0xf00>
603051c0:	e58da008 	str	sl, [sp, #8]
603051c4:	eaffffa5 	b	60305060 <_vfprintf_r+0x7c0>
603051c8:	e540e001 	strb	lr, [r0, #-1]
603051cc:	eaffffd9 	b	60305138 <_vfprintf_r+0x898>
603051d0:	e4c1e001 	strb	lr, [r1], #1
603051d4:	e04c0001 	sub	r0, ip, r1
603051d8:	e3500000 	cmp	r0, #0
603051dc:	aafffffb 	bge	603051d0 <_vfprintf_r+0x930>
603051e0:	e3720001 	cmn	r2, #1
603051e4:	a2822001 	addge	r2, r2, #1
603051e8:	b3a02000 	movlt	r2, #0
603051ec:	e0833002 	add	r3, r3, r2
603051f0:	eaffffdb 	b	60305164 <_vfprintf_r+0x8c4>
603051f4:	e1a01003 	mov	r1, r3
603051f8:	e083c002 	add	ip, r3, r2
603051fc:	e3a0e030 	mov	lr, #48	; 0x30
60305200:	eafffff3 	b	603051d4 <_vfprintf_r+0x934>
60305204:	e3590046 	cmp	r9, #70	; 0x46
60305208:	01a08006 	moveq	r8, r6
6030520c:	03a01003 	moveq	r1, #3
60305210:	0a000003 	beq	60305224 <_vfprintf_r+0x984>
60305214:	e3590045 	cmp	r9, #69	; 0x45
60305218:	e3a01002 	mov	r1, #2
6030521c:	02868001 	addeq	r8, r6, #1
60305220:	11a08006 	movne	r8, r6
60305224:	e28d3070 	add	r3, sp, #112	; 0x70
60305228:	eeb00b49 	vmov.f64	d0, d9
6030522c:	e58d3004 	str	r3, [sp, #4]
60305230:	e1a02008 	mov	r2, r8
60305234:	e28d3064 	add	r3, sp, #100	; 0x64
60305238:	e1a00007 	mov	r0, r7
6030523c:	e58d3000 	str	r3, [sp]
60305240:	e28d3060 	add	r3, sp, #96	; 0x60
60305244:	ebfff16c 	bl	603017fc <_dtoa_r>
60305248:	e3590047 	cmp	r9, #71	; 0x47
6030524c:	e1a0a000 	mov	sl, r0
60305250:	1a000003 	bne	60305264 <_vfprintf_r+0x9c4>
60305254:	e31b0001 	tst	fp, #1
60305258:	1a000001 	bne	60305264 <_vfprintf_r+0x9c4>
6030525c:	e59d3070 	ldr	r3, [sp, #112]	; 0x70
60305260:	eaffffbf 	b	60305164 <_vfprintf_r+0x8c4>
60305264:	e08a3008 	add	r3, sl, r8
60305268:	e3590046 	cmp	r9, #70	; 0x46
6030526c:	1a00000c 	bne	603052a4 <_vfprintf_r+0xa04>
60305270:	eeb59b40 	vcmp.f64	d9, #0.0
60305274:	e5da1000 	ldrb	r1, [sl]
60305278:	eef1fa10 	vmrs	APSR_nzcv, fpscr
6030527c:	13a02001 	movne	r2, #1
60305280:	03a02000 	moveq	r2, #0
60305284:	e3510030 	cmp	r1, #48	; 0x30
60305288:	13a02000 	movne	r2, #0
6030528c:	02022001 	andeq	r2, r2, #1
60305290:	e3520000 	cmp	r2, #0
60305294:	12688001 	rsbne	r8, r8, #1
60305298:	158d8060 	strne	r8, [sp, #96]	; 0x60
6030529c:	e59d2060 	ldr	r2, [sp, #96]	; 0x60
603052a0:	e0833002 	add	r3, r3, r2
603052a4:	eeb59b40 	vcmp.f64	d9, #0.0
603052a8:	e3a01030 	mov	r1, #48	; 0x30
603052ac:	eef1fa10 	vmrs	APSR_nzcv, fpscr
603052b0:	058d3070 	streq	r3, [sp, #112]	; 0x70
603052b4:	e59d2070 	ldr	r2, [sp, #112]	; 0x70
603052b8:	e1530002 	cmp	r3, r2
603052bc:	9affffe6 	bls	6030525c <_vfprintf_r+0x9bc>
603052c0:	e2820001 	add	r0, r2, #1
603052c4:	e58d0070 	str	r0, [sp, #112]	; 0x70
603052c8:	e5c21000 	strb	r1, [r2]
603052cc:	eafffff8 	b	603052b4 <_vfprintf_r+0xa14>
603052d0:	ffffffff 	.word	0xffffffff
603052d4:	7fefffff 	.word	0x7fefffff
603052d8:	60315c38 	.word	0x60315c38
603052dc:	60315c3c 	.word	0x60315c3c
603052e0:	60315c40 	.word	0x60315c40
603052e4:	60315c44 	.word	0x60315c44
603052e8:	66666667 	.word	0x66666667
603052ec:	603140d0 	.word	0x603140d0
603052f0:	60315c16 	.word	0x60315c16
603052f4:	60315c27 	.word	0x60315c27
603052f8:	60315b5d 	.word	0x60315b5d
603052fc:	603140e0 	.word	0x603140e0
60305300:	e3590046 	cmp	r9, #70	; 0x46
60305304:	0a0000f8 	beq	603056ec <_vfprintf_r+0xe4c>
60305308:	e59d3010 	ldr	r3, [sp, #16]
6030530c:	e2486001 	sub	r6, r8, #1
60305310:	e58d6060 	str	r6, [sp, #96]	; 0x60
60305314:	e3c32020 	bic	r2, r3, #32
60305318:	e5dd3010 	ldrb	r3, [sp, #16]
6030531c:	e3520041 	cmp	r2, #65	; 0x41
60305320:	0283300f 	addeq	r3, r3, #15
60305324:	06ef3073 	uxtbeq	r3, r3
60305328:	e3560000 	cmp	r6, #0
6030532c:	b2686001 	rsblt	r6, r8, #1
60305330:	e5cd3068 	strb	r3, [sp, #104]	; 0x68
60305334:	b3a0302d 	movlt	r3, #45	; 0x2d
60305338:	a3a0302b 	movge	r3, #43	; 0x2b
6030533c:	e3560009 	cmp	r6, #9
60305340:	e5cd3069 	strb	r3, [sp, #105]	; 0x69
60305344:	da0000e0 	ble	603056cc <_vfprintf_r+0xe2c>
60305348:	e28d9077 	add	r9, sp, #119	; 0x77
6030534c:	e1a00006 	mov	r0, r6
60305350:	e3a0100a 	mov	r1, #10
60305354:	eb00093b 	bl	60307848 <__aeabi_idivmod>
60305358:	e51f2078 	ldr	r2, [pc, #-120]	; 603052e8 <_vfprintf_r+0xa48>
6030535c:	e1a08009 	mov	r8, r9
60305360:	e2811030 	add	r1, r1, #48	; 0x30
60305364:	e1a03006 	mov	r3, r6
60305368:	e2499001 	sub	r9, r9, #1
6030536c:	e3530063 	cmp	r3, #99	; 0x63
60305370:	e5481001 	strb	r1, [r8, #-1]
60305374:	e0c21296 	smull	r1, r2, r6, r2
60305378:	e1a06fc6 	asr	r6, r6, #31
6030537c:	e0666142 	rsb	r6, r6, r2, asr #2
60305380:	cafffff1 	bgt	6030534c <_vfprintf_r+0xaac>
60305384:	e2483002 	sub	r3, r8, #2
60305388:	e28d006a 	add	r0, sp, #106	; 0x6a
6030538c:	e1a02003 	mov	r2, r3
60305390:	e28d1077 	add	r1, sp, #119	; 0x77
60305394:	e2866030 	add	r6, r6, #48	; 0x30
60305398:	e5496001 	strb	r6, [r9, #-1]
6030539c:	e1520001 	cmp	r2, r1
603053a0:	3a0000c6 	bcc	603056c0 <_vfprintf_r+0xe20>
603053a4:	e1530001 	cmp	r3, r1
603053a8:	e28d2079 	add	r2, sp, #121	; 0x79
603053ac:	90428008 	subls	r8, r2, r8
603053b0:	83a08000 	movhi	r8, #0
603053b4:	e28d306a 	add	r3, sp, #106	; 0x6a
603053b8:	e0838008 	add	r8, r3, r8
603053bc:	e59d200c 	ldr	r2, [sp, #12]
603053c0:	e28d3068 	add	r3, sp, #104	; 0x68
603053c4:	e0483003 	sub	r3, r8, r3
603053c8:	e58d3048 	str	r3, [sp, #72]	; 0x48
603053cc:	e0836002 	add	r6, r3, r2
603053d0:	e3520001 	cmp	r2, #1
603053d4:	ca000001 	bgt	603053e0 <_vfprintf_r+0xb40>
603053d8:	e31b0001 	tst	fp, #1
603053dc:	0a000001 	beq	603053e8 <_vfprintf_r+0xb48>
603053e0:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
603053e4:	e0866003 	add	r6, r6, r3
603053e8:	e3cb3b01 	bic	r3, fp, #1024	; 0x400
603053ec:	e3833c01 	orr	r3, r3, #256	; 0x100
603053f0:	e58d3034 	str	r3, [sp, #52]	; 0x34
603053f4:	e3a03000 	mov	r3, #0
603053f8:	e58d3018 	str	r3, [sp, #24]
603053fc:	e1a08003 	mov	r8, r3
60305400:	e58d301c 	str	r3, [sp, #28]
60305404:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
60305408:	e3a09000 	mov	r9, #0
6030540c:	e59db034 	ldr	fp, [sp, #52]	; 0x34
60305410:	e3530000 	cmp	r3, #0
60305414:	13a0302d 	movne	r3, #45	; 0x2d
60305418:	15cd305b 	strbne	r3, [sp, #91]	; 0x5b
6030541c:	e1590006 	cmp	r9, r6
60305420:	a1a03009 	movge	r3, r9
60305424:	b1a03006 	movlt	r3, r6
60305428:	e58d3034 	str	r3, [sp, #52]	; 0x34
6030542c:	e5dd305b 	ldrb	r3, [sp, #91]	; 0x5b
60305430:	e3530000 	cmp	r3, #0
60305434:	159d3034 	ldrne	r3, [sp, #52]	; 0x34
60305438:	12833001 	addne	r3, r3, #1
6030543c:	158d3034 	strne	r3, [sp, #52]	; 0x34
60305440:	e21b3002 	ands	r3, fp, #2
60305444:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60305448:	159d3034 	ldrne	r3, [sp, #52]	; 0x34
6030544c:	12833002 	addne	r3, r3, #2
60305450:	158d3034 	strne	r3, [sp, #52]	; 0x34
60305454:	e21b3084 	ands	r3, fp, #132	; 0x84
60305458:	e58d3050 	str	r3, [sp, #80]	; 0x50
6030545c:	1a00001a 	bne	603054cc <_vfprintf_r+0xc2c>
60305460:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
60305464:	e59d2034 	ldr	r2, [sp, #52]	; 0x34
60305468:	e0433002 	sub	r3, r3, r2
6030546c:	e3530000 	cmp	r3, #0
60305470:	da000015 	ble	603054cc <_vfprintf_r+0xc2c>
60305474:	e59d207c 	ldr	r2, [sp, #124]	; 0x7c
60305478:	e2840008 	add	r0, r4, #8
6030547c:	e51fc198 	ldr	ip, [pc, #-408]	; 603052ec <_vfprintf_r+0xa4c>
60305480:	e3530010 	cmp	r3, #16
60305484:	e59d1080 	ldr	r1, [sp, #128]	; 0x80
60305488:	e2822001 	add	r2, r2, #1
6030548c:	e584c000 	str	ip, [r4]
60305490:	ca00019f 	bgt	60305b14 <_vfprintf_r+0x1274>
60305494:	e3520007 	cmp	r2, #7
60305498:	e0811003 	add	r1, r1, r3
6030549c:	e5843004 	str	r3, [r4, #4]
603054a0:	d1a04000 	movle	r4, r0
603054a4:	e58d1080 	str	r1, [sp, #128]	; 0x80
603054a8:	e58d207c 	str	r2, [sp, #124]	; 0x7c
603054ac:	da000006 	ble	603054cc <_vfprintf_r+0xc2c>
603054b0:	e28d2078 	add	r2, sp, #120	; 0x78
603054b4:	e1a01005 	mov	r1, r5
603054b8:	e1a00007 	mov	r0, r7
603054bc:	ebfff8e1 	bl	60303848 <__sprint_r>
603054c0:	e3500000 	cmp	r0, #0
603054c4:	1a000447 	bne	603065e8 <_vfprintf_r+0x1d48>
603054c8:	e28d4084 	add	r4, sp, #132	; 0x84
603054cc:	e5dd305b 	ldrb	r3, [sp, #91]	; 0x5b
603054d0:	e3530000 	cmp	r3, #0
603054d4:	0a000013 	beq	60305528 <_vfprintf_r+0xc88>
603054d8:	e28d305b 	add	r3, sp, #91	; 0x5b
603054dc:	e5843000 	str	r3, [r4]
603054e0:	e3a03001 	mov	r3, #1
603054e4:	e5843004 	str	r3, [r4, #4]
603054e8:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
603054ec:	e2833001 	add	r3, r3, #1
603054f0:	e58d3080 	str	r3, [sp, #128]	; 0x80
603054f4:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
603054f8:	e2833001 	add	r3, r3, #1
603054fc:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60305500:	e3530007 	cmp	r3, #7
60305504:	d2844008 	addle	r4, r4, #8
60305508:	da000006 	ble	60305528 <_vfprintf_r+0xc88>
6030550c:	e28d2078 	add	r2, sp, #120	; 0x78
60305510:	e1a01005 	mov	r1, r5
60305514:	e1a00007 	mov	r0, r7
60305518:	ebfff8ca 	bl	60303848 <__sprint_r>
6030551c:	e3500000 	cmp	r0, #0
60305520:	1a000430 	bne	603065e8 <_vfprintf_r+0x1d48>
60305524:	e28d4084 	add	r4, sp, #132	; 0x84
60305528:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
6030552c:	e3530000 	cmp	r3, #0
60305530:	0a000013 	beq	60305584 <_vfprintf_r+0xce4>
60305534:	e28d305c 	add	r3, sp, #92	; 0x5c
60305538:	e5843000 	str	r3, [r4]
6030553c:	e3a03002 	mov	r3, #2
60305540:	e5843004 	str	r3, [r4, #4]
60305544:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
60305548:	e2833002 	add	r3, r3, #2
6030554c:	e58d3080 	str	r3, [sp, #128]	; 0x80
60305550:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60305554:	e2833001 	add	r3, r3, #1
60305558:	e58d307c 	str	r3, [sp, #124]	; 0x7c
6030555c:	e3530007 	cmp	r3, #7
60305560:	d2844008 	addle	r4, r4, #8
60305564:	da000006 	ble	60305584 <_vfprintf_r+0xce4>
60305568:	e28d2078 	add	r2, sp, #120	; 0x78
6030556c:	e1a01005 	mov	r1, r5
60305570:	e1a00007 	mov	r0, r7
60305574:	ebfff8b3 	bl	60303848 <__sprint_r>
60305578:	e3500000 	cmp	r0, #0
6030557c:	1a000419 	bne	603065e8 <_vfprintf_r+0x1d48>
60305580:	e28d4084 	add	r4, sp, #132	; 0x84
60305584:	e59d3050 	ldr	r3, [sp, #80]	; 0x50
60305588:	e3530080 	cmp	r3, #128	; 0x80
6030558c:	1a00001d 	bne	60305608 <_vfprintf_r+0xd68>
60305590:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
60305594:	e59d2034 	ldr	r2, [sp, #52]	; 0x34
60305598:	e0433002 	sub	r3, r3, r2
6030559c:	e58d303c 	str	r3, [sp, #60]	; 0x3c
603055a0:	e3530000 	cmp	r3, #0
603055a4:	da000017 	ble	60305608 <_vfprintf_r+0xd68>
603055a8:	e59d003c 	ldr	r0, [sp, #60]	; 0x3c
603055ac:	e2841008 	add	r1, r4, #8
603055b0:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
603055b4:	e3500010 	cmp	r0, #16
603055b8:	e51f02c4 	ldr	r0, [pc, #-708]	; 603052fc <_vfprintf_r+0xa5c>
603055bc:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
603055c0:	e2833001 	add	r3, r3, #1
603055c4:	e5840000 	str	r0, [r4]
603055c8:	ca000164 	bgt	60305b60 <_vfprintf_r+0x12c0>
603055cc:	e59d003c 	ldr	r0, [sp, #60]	; 0x3c
603055d0:	e3530007 	cmp	r3, #7
603055d4:	e5840004 	str	r0, [r4, #4]
603055d8:	d1a04001 	movle	r4, r1
603055dc:	e0802002 	add	r2, r0, r2
603055e0:	e58d307c 	str	r3, [sp, #124]	; 0x7c
603055e4:	e58d2080 	str	r2, [sp, #128]	; 0x80
603055e8:	da000006 	ble	60305608 <_vfprintf_r+0xd68>
603055ec:	e28d2078 	add	r2, sp, #120	; 0x78
603055f0:	e1a01005 	mov	r1, r5
603055f4:	e1a00007 	mov	r0, r7
603055f8:	ebfff892 	bl	60303848 <__sprint_r>
603055fc:	e3500000 	cmp	r0, #0
60305600:	1a0003f8 	bne	603065e8 <_vfprintf_r+0x1d48>
60305604:	e28d4084 	add	r4, sp, #132	; 0x84
60305608:	e0499006 	sub	r9, r9, r6
6030560c:	e3590000 	cmp	r9, #0
60305610:	da000015 	ble	6030566c <_vfprintf_r+0xdcc>
60305614:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60305618:	e2841008 	add	r1, r4, #8
6030561c:	e51f0328 	ldr	r0, [pc, #-808]	; 603052fc <_vfprintf_r+0xa5c>
60305620:	e3590010 	cmp	r9, #16
60305624:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
60305628:	e2833001 	add	r3, r3, #1
6030562c:	e5840000 	str	r0, [r4]
60305630:	ca00015d 	bgt	60305bac <_vfprintf_r+0x130c>
60305634:	e3530007 	cmp	r3, #7
60305638:	e5849004 	str	r9, [r4, #4]
6030563c:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60305640:	e0899002 	add	r9, r9, r2
60305644:	d1a04001 	movle	r4, r1
60305648:	e58d9080 	str	r9, [sp, #128]	; 0x80
6030564c:	da000006 	ble	6030566c <_vfprintf_r+0xdcc>
60305650:	e28d2078 	add	r2, sp, #120	; 0x78
60305654:	e1a01005 	mov	r1, r5
60305658:	e1a00007 	mov	r0, r7
6030565c:	ebfff879 	bl	60303848 <__sprint_r>
60305660:	e3500000 	cmp	r0, #0
60305664:	1a0003df 	bne	603065e8 <_vfprintf_r+0x1d48>
60305668:	e28d4084 	add	r4, sp, #132	; 0x84
6030566c:	e59d0080 	ldr	r0, [sp, #128]	; 0x80
60305670:	e31b0c01 	tst	fp, #256	; 0x100
60305674:	1a00015d 	bne	60305bf0 <_vfprintf_r+0x1350>
60305678:	e0860000 	add	r0, r6, r0
6030567c:	e584a000 	str	sl, [r4]
60305680:	e5846004 	str	r6, [r4, #4]
60305684:	e58d0080 	str	r0, [sp, #128]	; 0x80
60305688:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
6030568c:	e2833001 	add	r3, r3, #1
60305690:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60305694:	e3530007 	cmp	r3, #7
60305698:	d2844008 	addle	r4, r4, #8
6030569c:	da00018c 	ble	60305cd4 <_vfprintf_r+0x1434>
603056a0:	e28d2078 	add	r2, sp, #120	; 0x78
603056a4:	e1a01005 	mov	r1, r5
603056a8:	e1a00007 	mov	r0, r7
603056ac:	ebfff865 	bl	60303848 <__sprint_r>
603056b0:	e3500000 	cmp	r0, #0
603056b4:	1a0003cb 	bne	603065e8 <_vfprintf_r+0x1d48>
603056b8:	e28d4084 	add	r4, sp, #132	; 0x84
603056bc:	ea000184 	b	60305cd4 <_vfprintf_r+0x1434>
603056c0:	e4d2c001 	ldrb	ip, [r2], #1
603056c4:	e4c0c001 	strb	ip, [r0], #1
603056c8:	eaffff33 	b	6030539c <_vfprintf_r+0xafc>
603056cc:	e3520041 	cmp	r2, #65	; 0x41
603056d0:	e2866030 	add	r6, r6, #48	; 0x30
603056d4:	128d806b 	addne	r8, sp, #107	; 0x6b
603056d8:	028d806a 	addeq	r8, sp, #106	; 0x6a
603056dc:	13a03030 	movne	r3, #48	; 0x30
603056e0:	15cd306a 	strbne	r3, [sp, #106]	; 0x6a
603056e4:	e4c86001 	strb	r6, [r8], #1
603056e8:	eaffff33 	b	603053bc <_vfprintf_r+0xb1c>
603056ec:	e20b3001 	and	r3, fp, #1
603056f0:	e3580000 	cmp	r8, #0
603056f4:	e1833006 	orr	r3, r3, r6
603056f8:	da000005 	ble	60305714 <_vfprintf_r+0xe74>
603056fc:	e3530000 	cmp	r3, #0
60305700:	159d3028 	ldrne	r3, [sp, #40]	; 0x28
60305704:	10883003 	addne	r3, r8, r3
60305708:	1a000008 	bne	60305730 <_vfprintf_r+0xe90>
6030570c:	e1a06008 	mov	r6, r8
60305710:	ea000007 	b	60305734 <_vfprintf_r+0xe94>
60305714:	e3530000 	cmp	r3, #0
60305718:	03a03066 	moveq	r3, #102	; 0x66
6030571c:	03a06001 	moveq	r6, #1
60305720:	058d3010 	streq	r3, [sp, #16]
60305724:	0a000004 	beq	6030573c <_vfprintf_r+0xe9c>
60305728:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
6030572c:	e2833001 	add	r3, r3, #1
60305730:	e0866003 	add	r6, r6, r3
60305734:	e3a03066 	mov	r3, #102	; 0x66
60305738:	e58d3010 	str	r3, [sp, #16]
6030573c:	e21b3b01 	ands	r3, fp, #1024	; 0x400
60305740:	e58d301c 	str	r3, [sp, #28]
60305744:	059d301c 	ldreq	r3, [sp, #28]
60305748:	058d3018 	streq	r3, [sp, #24]
6030574c:	0affff2c 	beq	60305404 <_vfprintf_r+0xb64>
60305750:	e3a03000 	mov	r3, #0
60305754:	e3580000 	cmp	r8, #0
60305758:	e58d3018 	str	r3, [sp, #24]
6030575c:	e58d301c 	str	r3, [sp, #28]
60305760:	daffff27 	ble	60305404 <_vfprintf_r+0xb64>
60305764:	e59d3020 	ldr	r3, [sp, #32]
60305768:	e5d33000 	ldrb	r3, [r3]
6030576c:	e35300ff 	cmp	r3, #255	; 0xff
60305770:	1a00000c 	bne	603057a8 <_vfprintf_r+0xf08>
60305774:	e1cd21d8 	ldrd	r2, [sp, #24]
60305778:	e0833002 	add	r3, r3, r2
6030577c:	e59d2038 	ldr	r2, [sp, #56]	; 0x38
60305780:	e0266392 	mla	r6, r2, r3, r6
60305784:	eaffff1e 	b	60305404 <_vfprintf_r+0xb64>
60305788:	e59d300c 	ldr	r3, [sp, #12]
6030578c:	e3580000 	cmp	r8, #0
60305790:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
60305794:	e0836002 	add	r6, r3, r2
60305798:	d2683001 	rsble	r3, r8, #1
6030579c:	d0866003 	addle	r6, r6, r3
603057a0:	e3a03067 	mov	r3, #103	; 0x67
603057a4:	eaffffe3 	b	60305738 <_vfprintf_r+0xe98>
603057a8:	e1530008 	cmp	r3, r8
603057ac:	aafffff0 	bge	60305774 <_vfprintf_r+0xed4>
603057b0:	e0488003 	sub	r8, r8, r3
603057b4:	e59d3020 	ldr	r3, [sp, #32]
603057b8:	e5d33001 	ldrb	r3, [r3, #1]
603057bc:	e3530000 	cmp	r3, #0
603057c0:	059d3018 	ldreq	r3, [sp, #24]
603057c4:	02833001 	addeq	r3, r3, #1
603057c8:	058d3018 	streq	r3, [sp, #24]
603057cc:	0affffe4 	beq	60305764 <_vfprintf_r+0xec4>
603057d0:	e59d301c 	ldr	r3, [sp, #28]
603057d4:	e2833001 	add	r3, r3, #1
603057d8:	e58d301c 	str	r3, [sp, #28]
603057dc:	e59d3020 	ldr	r3, [sp, #32]
603057e0:	e2833001 	add	r3, r3, #1
603057e4:	e58d3020 	str	r3, [sp, #32]
603057e8:	eaffffdd 	b	60305764 <_vfprintf_r+0xec4>
603057ec:	e2883004 	add	r3, r8, #4
603057f0:	e31b0020 	tst	fp, #32
603057f4:	e58d3014 	str	r3, [sp, #20]
603057f8:	0a000007 	beq	6030581c <_vfprintf_r+0xf7c>
603057fc:	e5983000 	ldr	r3, [r8]
60305800:	e59d202c 	ldr	r2, [sp, #44]	; 0x2c
60305804:	e59d102c 	ldr	r1, [sp, #44]	; 0x2c
60305808:	e1a02fc2 	asr	r2, r2, #31
6030580c:	e8830006 	stm	r3, {r1, r2}
60305810:	e59d8014 	ldr	r8, [sp, #20]
60305814:	e59da024 	ldr	sl, [sp, #36]	; 0x24
60305818:	eafffc82 	b	60304a28 <_vfprintf_r+0x188>
6030581c:	e31b0010 	tst	fp, #16
60305820:	0a000003 	beq	60305834 <_vfprintf_r+0xf94>
60305824:	e5983000 	ldr	r3, [r8]
60305828:	e59d202c 	ldr	r2, [sp, #44]	; 0x2c
6030582c:	e5832000 	str	r2, [r3]
60305830:	eafffff6 	b	60305810 <_vfprintf_r+0xf70>
60305834:	e31b0040 	tst	fp, #64	; 0x40
60305838:	15983000 	ldrne	r3, [r8]
6030583c:	159d202c 	ldrne	r2, [sp, #44]	; 0x2c
60305840:	11c320b0 	strhne	r2, [r3]
60305844:	1afffff1 	bne	60305810 <_vfprintf_r+0xf70>
60305848:	e31b0c02 	tst	fp, #512	; 0x200
6030584c:	15983000 	ldrne	r3, [r8]
60305850:	159d202c 	ldrne	r2, [sp, #44]	; 0x2c
60305854:	15c32000 	strbne	r2, [r3]
60305858:	1affffec 	bne	60305810 <_vfprintf_r+0xf70>
6030585c:	eafffff0 	b	60305824 <_vfprintf_r+0xf84>
60305860:	e38bb010 	orr	fp, fp, #16
60305864:	e21b3020 	ands	r3, fp, #32
60305868:	0a00000a 	beq	60305898 <_vfprintf_r+0xff8>
6030586c:	e2888007 	add	r8, r8, #7
60305870:	e3c83007 	bic	r3, r8, #7
60305874:	e1a02003 	mov	r2, r3
60305878:	e5939004 	ldr	r9, [r3, #4]
6030587c:	e4928008 	ldr	r8, [r2], #8
60305880:	e58d2014 	str	r2, [sp, #20]
60305884:	e3cbbb01 	bic	fp, fp, #1024	; 0x400
60305888:	e3a03000 	mov	r3, #0
6030588c:	e3a02000 	mov	r2, #0
60305890:	e5cd205b 	strb	r2, [sp, #91]	; 0x5b
60305894:	eafffd6f 	b	60304e58 <_vfprintf_r+0x5b8>
60305898:	e1a02008 	mov	r2, r8
6030589c:	e21b9010 	ands	r9, fp, #16
603058a0:	e4928004 	ldr	r8, [r2], #4
603058a4:	e58d2014 	str	r2, [sp, #20]
603058a8:	0a000001 	beq	603058b4 <_vfprintf_r+0x1014>
603058ac:	e1a09003 	mov	r9, r3
603058b0:	eafffff3 	b	60305884 <_vfprintf_r+0xfe4>
603058b4:	e21b3040 	ands	r3, fp, #64	; 0x40
603058b8:	16ff8078 	uxthne	r8, r8
603058bc:	1afffff0 	bne	60305884 <_vfprintf_r+0xfe4>
603058c0:	e21b9c02 	ands	r9, fp, #512	; 0x200
603058c4:	0affffee 	beq	60305884 <_vfprintf_r+0xfe4>
603058c8:	e6ef8078 	uxtb	r8, r8
603058cc:	eafffff6 	b	603058ac <_vfprintf_r+0x100c>
603058d0:	e1a03008 	mov	r3, r8
603058d4:	e3a02078 	mov	r2, #120	; 0x78
603058d8:	e3a09000 	mov	r9, #0
603058dc:	e38bb002 	orr	fp, fp, #2
603058e0:	e58d2010 	str	r2, [sp, #16]
603058e4:	e4938004 	ldr	r8, [r3], #4
603058e8:	e58d3014 	str	r3, [sp, #20]
603058ec:	e3073830 	movw	r3, #30768	; 0x7830
603058f0:	e1cd35bc 	strh	r3, [sp, #92]	; 0x5c
603058f4:	e51f3608 	ldr	r3, [pc, #-1544]	; 603052f4 <_vfprintf_r+0xa54>
603058f8:	e58d304c 	str	r3, [sp, #76]	; 0x4c
603058fc:	e3a03002 	mov	r3, #2
60305900:	eaffffe1 	b	6030588c <_vfprintf_r+0xfec>
60305904:	e1a03008 	mov	r3, r8
60305908:	e3760001 	cmn	r6, #1
6030590c:	e3a08000 	mov	r8, #0
60305910:	e5cd805b 	strb	r8, [sp, #91]	; 0x5b
60305914:	e493a004 	ldr	sl, [r3], #4
60305918:	e58d3014 	str	r3, [sp, #20]
6030591c:	0a00000d 	beq	60305958 <_vfprintf_r+0x10b8>
60305920:	e1a02006 	mov	r2, r6
60305924:	e1a01008 	mov	r1, r8
60305928:	e1a0000a 	mov	r0, sl
6030592c:	eb001ea7 	bl	6030d3d0 <__wrap_memchr>
60305930:	e2503000 	subs	r3, r0, #0
60305934:	e58d3008 	str	r3, [sp, #8]
60305938:	0a000073 	beq	60305b0c <_vfprintf_r+0x126c>
6030593c:	e043600a 	sub	r6, r3, sl
60305940:	e1a09008 	mov	r9, r8
60305944:	e1a03008 	mov	r3, r8
60305948:	e58d8008 	str	r8, [sp, #8]
6030594c:	e58d8018 	str	r8, [sp, #24]
60305950:	e58d801c 	str	r8, [sp, #28]
60305954:	eafffeb0 	b	6030541c <_vfprintf_r+0xb7c>
60305958:	e1a0000a 	mov	r0, sl
6030595c:	e1a09008 	mov	r9, r8
60305960:	eb001ea0 	bl	6030d3e8 <__wrap_strlen>
60305964:	e1a06000 	mov	r6, r0
60305968:	e58d8008 	str	r8, [sp, #8]
6030596c:	e1a03009 	mov	r3, r9
60305970:	eafffd7f 	b	60304f74 <_vfprintf_r+0x6d4>
60305974:	e38bb010 	orr	fp, fp, #16
60305978:	e21b3020 	ands	r3, fp, #32
6030597c:	0a000007 	beq	603059a0 <_vfprintf_r+0x1100>
60305980:	e2888007 	add	r8, r8, #7
60305984:	e3c83007 	bic	r3, r8, #7
60305988:	e1a02003 	mov	r2, r3
6030598c:	e5939004 	ldr	r9, [r3, #4]
60305990:	e4928008 	ldr	r8, [r2], #8
60305994:	e58d2014 	str	r2, [sp, #20]
60305998:	e3a03001 	mov	r3, #1
6030599c:	eaffffba 	b	6030588c <_vfprintf_r+0xfec>
603059a0:	e1a02008 	mov	r2, r8
603059a4:	e21b9010 	ands	r9, fp, #16
603059a8:	e4928004 	ldr	r8, [r2], #4
603059ac:	e58d2014 	str	r2, [sp, #20]
603059b0:	0a000001 	beq	603059bc <_vfprintf_r+0x111c>
603059b4:	e1a09003 	mov	r9, r3
603059b8:	eafffff6 	b	60305998 <_vfprintf_r+0x10f8>
603059bc:	e21b3040 	ands	r3, fp, #64	; 0x40
603059c0:	16ff8078 	uxthne	r8, r8
603059c4:	1afffff3 	bne	60305998 <_vfprintf_r+0x10f8>
603059c8:	e21b9c02 	ands	r9, fp, #512	; 0x200
603059cc:	0afffff1 	beq	60305998 <_vfprintf_r+0x10f8>
603059d0:	e6ef8078 	uxtb	r8, r8
603059d4:	eafffff6 	b	603059b4 <_vfprintf_r+0x1114>
603059d8:	e51f36f0 	ldr	r3, [pc, #-1776]	; 603052f0 <_vfprintf_r+0xa50>
603059dc:	e58d304c 	str	r3, [sp, #76]	; 0x4c
603059e0:	e21b3020 	ands	r3, fp, #32
603059e4:	0a000014 	beq	60305a3c <_vfprintf_r+0x119c>
603059e8:	e2888007 	add	r8, r8, #7
603059ec:	e3c83007 	bic	r3, r8, #7
603059f0:	e1a02003 	mov	r2, r3
603059f4:	e5939004 	ldr	r9, [r3, #4]
603059f8:	e4928008 	ldr	r8, [r2], #8
603059fc:	e58d2014 	str	r2, [sp, #20]
60305a00:	e1983009 	orrs	r3, r8, r9
60305a04:	03a03000 	moveq	r3, #0
60305a08:	120b3001 	andne	r3, fp, #1
60305a0c:	e3530000 	cmp	r3, #0
60305a10:	0a000004 	beq	60305a28 <_vfprintf_r+0x1188>
60305a14:	e3a03030 	mov	r3, #48	; 0x30
60305a18:	e38bb002 	orr	fp, fp, #2
60305a1c:	e5cd305c 	strb	r3, [sp, #92]	; 0x5c
60305a20:	e59d3010 	ldr	r3, [sp, #16]
60305a24:	e5cd305d 	strb	r3, [sp, #93]	; 0x5d
60305a28:	e3cbbb01 	bic	fp, fp, #1024	; 0x400
60305a2c:	e3a03002 	mov	r3, #2
60305a30:	eaffff95 	b	6030588c <_vfprintf_r+0xfec>
60305a34:	e51f3748 	ldr	r3, [pc, #-1864]	; 603052f4 <_vfprintf_r+0xa54>
60305a38:	eaffffe7 	b	603059dc <_vfprintf_r+0x113c>
60305a3c:	e1a02008 	mov	r2, r8
60305a40:	e21b9010 	ands	r9, fp, #16
60305a44:	e4928004 	ldr	r8, [r2], #4
60305a48:	e58d2014 	str	r2, [sp, #20]
60305a4c:	0a000001 	beq	60305a58 <_vfprintf_r+0x11b8>
60305a50:	e1a09003 	mov	r9, r3
60305a54:	eaffffe9 	b	60305a00 <_vfprintf_r+0x1160>
60305a58:	e21b3040 	ands	r3, fp, #64	; 0x40
60305a5c:	16ff8078 	uxthne	r8, r8
60305a60:	1affffe6 	bne	60305a00 <_vfprintf_r+0x1160>
60305a64:	e21b9c02 	ands	r9, fp, #512	; 0x200
60305a68:	0affffe4 	beq	60305a00 <_vfprintf_r+0x1160>
60305a6c:	e6ef8078 	uxtb	r8, r8
60305a70:	eafffff6 	b	60305a50 <_vfprintf_r+0x11b0>
60305a74:	e1882009 	orr	r2, r8, r9
60305a78:	e3cbb080 	bic	fp, fp, #128	; 0x80
60305a7c:	e3520000 	cmp	r2, #0
60305a80:	03560000 	cmpeq	r6, #0
60305a84:	13a02001 	movne	r2, #1
60305a88:	03a02000 	moveq	r2, #0
60305a8c:	1afffcf4 	bne	60304e64 <_vfprintf_r+0x5c4>
60305a90:	e3530000 	cmp	r3, #0
60305a94:	1a000011 	bne	60305ae0 <_vfprintf_r+0x1240>
60305a98:	e2116001 	ands	r6, r1, #1
60305a9c:	0a000010 	beq	60305ae4 <_vfprintf_r+0x1244>
60305aa0:	e1a06003 	mov	r6, r3
60305aa4:	e3a02030 	mov	r2, #48	; 0x30
60305aa8:	e5cd2127 	strb	r2, [sp, #295]	; 0x127
60305aac:	e28daf49 	add	sl, sp, #292	; 0x124
60305ab0:	e28aa003 	add	sl, sl, #3
60305ab4:	eafffcff 	b	60304eb8 <_vfprintf_r+0x618>
60305ab8:	e208300f 	and	r3, r8, #15
60305abc:	e59d204c 	ldr	r2, [sp, #76]	; 0x4c
60305ac0:	e1a08228 	lsr	r8, r8, #4
60305ac4:	e1888e09 	orr	r8, r8, r9, lsl #28
60305ac8:	e1a09229 	lsr	r9, r9, #4
60305acc:	e7d23003 	ldrb	r3, [r2, r3]
60305ad0:	e56a3001 	strb	r3, [sl, #-1]!
60305ad4:	e1983009 	orrs	r3, r8, r9
60305ad8:	1afffff6 	bne	60305ab8 <_vfprintf_r+0x1218>
60305adc:	eafffcf5 	b	60304eb8 <_vfprintf_r+0x618>
60305ae0:	e1a06002 	mov	r6, r2
60305ae4:	e28daf4a 	add	sl, sp, #296	; 0x128
60305ae8:	eafffcf2 	b	60304eb8 <_vfprintf_r+0x618>
60305aec:	e59d3010 	ldr	r3, [sp, #16]
60305af0:	e3530000 	cmp	r3, #0
60305af4:	0a0002d6 	beq	60306654 <_vfprintf_r+0x1db4>
60305af8:	e3a00000 	mov	r0, #0
60305afc:	e5cd30c4 	strb	r3, [sp, #196]	; 0xc4
60305b00:	e5cd005b 	strb	r0, [sp, #91]	; 0x5b
60305b04:	e58d8014 	str	r8, [sp, #20]
60305b08:	eafffcb9 	b	60304df4 <_vfprintf_r+0x554>
60305b0c:	e59d9008 	ldr	r9, [sp, #8]
60305b10:	eaffff95 	b	6030596c <_vfprintf_r+0x10cc>
60305b14:	e3a0c010 	mov	ip, #16
60305b18:	e3520007 	cmp	r2, #7
60305b1c:	e081100c 	add	r1, r1, ip
60305b20:	e584c004 	str	ip, [r4, #4]
60305b24:	e58d1080 	str	r1, [sp, #128]	; 0x80
60305b28:	e58d207c 	str	r2, [sp, #124]	; 0x7c
60305b2c:	da000008 	ble	60305b54 <_vfprintf_r+0x12b4>
60305b30:	e28d2078 	add	r2, sp, #120	; 0x78
60305b34:	e1a01005 	mov	r1, r5
60305b38:	e1a00007 	mov	r0, r7
60305b3c:	e58d3054 	str	r3, [sp, #84]	; 0x54
60305b40:	ebfff740 	bl	60303848 <__sprint_r>
60305b44:	e3500000 	cmp	r0, #0
60305b48:	1a0002a6 	bne	603065e8 <_vfprintf_r+0x1d48>
60305b4c:	e59d3054 	ldr	r3, [sp, #84]	; 0x54
60305b50:	e28d0084 	add	r0, sp, #132	; 0x84
60305b54:	e2433010 	sub	r3, r3, #16
60305b58:	e1a04000 	mov	r4, r0
60305b5c:	eafffe44 	b	60305474 <_vfprintf_r+0xbd4>
60305b60:	e3a00010 	mov	r0, #16
60305b64:	e3530007 	cmp	r3, #7
60305b68:	e0822000 	add	r2, r2, r0
60305b6c:	e5840004 	str	r0, [r4, #4]
60305b70:	e58d2080 	str	r2, [sp, #128]	; 0x80
60305b74:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60305b78:	da000006 	ble	60305b98 <_vfprintf_r+0x12f8>
60305b7c:	e28d2078 	add	r2, sp, #120	; 0x78
60305b80:	e1a01005 	mov	r1, r5
60305b84:	e1a00007 	mov	r0, r7
60305b88:	ebfff72e 	bl	60303848 <__sprint_r>
60305b8c:	e3500000 	cmp	r0, #0
60305b90:	1a000294 	bne	603065e8 <_vfprintf_r+0x1d48>
60305b94:	e28d1084 	add	r1, sp, #132	; 0x84
60305b98:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
60305b9c:	e1a04001 	mov	r4, r1
60305ba0:	e2433010 	sub	r3, r3, #16
60305ba4:	e58d303c 	str	r3, [sp, #60]	; 0x3c
60305ba8:	eafffe7e 	b	603055a8 <_vfprintf_r+0xd08>
60305bac:	e3a00010 	mov	r0, #16
60305bb0:	e3530007 	cmp	r3, #7
60305bb4:	e0822000 	add	r2, r2, r0
60305bb8:	e5840004 	str	r0, [r4, #4]
60305bbc:	e58d2080 	str	r2, [sp, #128]	; 0x80
60305bc0:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60305bc4:	da000006 	ble	60305be4 <_vfprintf_r+0x1344>
60305bc8:	e28d2078 	add	r2, sp, #120	; 0x78
60305bcc:	e1a01005 	mov	r1, r5
60305bd0:	e1a00007 	mov	r0, r7
60305bd4:	ebfff71b 	bl	60303848 <__sprint_r>
60305bd8:	e3500000 	cmp	r0, #0
60305bdc:	1a000281 	bne	603065e8 <_vfprintf_r+0x1d48>
60305be0:	e28d1084 	add	r1, sp, #132	; 0x84
60305be4:	e2499010 	sub	r9, r9, #16
60305be8:	e1a04001 	mov	r4, r1
60305bec:	eafffe88 	b	60305614 <_vfprintf_r+0xd74>
60305bf0:	e59d3010 	ldr	r3, [sp, #16]
60305bf4:	e3530065 	cmp	r3, #101	; 0x65
60305bf8:	da0001e2 	ble	60306388 <_vfprintf_r+0x1ae8>
60305bfc:	eeb58b40 	vcmp.f64	d8, #0.0
60305c00:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60305c04:	1a00006a 	bne	60305db4 <_vfprintf_r+0x1514>
60305c08:	e51f3918 	ldr	r3, [pc, #-2328]	; 603052f8 <_vfprintf_r+0xa58>
60305c0c:	e5843000 	str	r3, [r4]
60305c10:	e3a03001 	mov	r3, #1
60305c14:	e0800003 	add	r0, r0, r3
60305c18:	e5843004 	str	r3, [r4, #4]
60305c1c:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60305c20:	e58d0080 	str	r0, [sp, #128]	; 0x80
60305c24:	e2833001 	add	r3, r3, #1
60305c28:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60305c2c:	e3530007 	cmp	r3, #7
60305c30:	d2844008 	addle	r4, r4, #8
60305c34:	da000006 	ble	60305c54 <_vfprintf_r+0x13b4>
60305c38:	e28d2078 	add	r2, sp, #120	; 0x78
60305c3c:	e1a01005 	mov	r1, r5
60305c40:	e1a00007 	mov	r0, r7
60305c44:	ebfff6ff 	bl	60303848 <__sprint_r>
60305c48:	e3500000 	cmp	r0, #0
60305c4c:	1a000265 	bne	603065e8 <_vfprintf_r+0x1d48>
60305c50:	e28d4084 	add	r4, sp, #132	; 0x84
60305c54:	e59d3060 	ldr	r3, [sp, #96]	; 0x60
60305c58:	e59d200c 	ldr	r2, [sp, #12]
60305c5c:	e1530002 	cmp	r3, r2
60305c60:	ba000001 	blt	60305c6c <_vfprintf_r+0x13cc>
60305c64:	e31b0001 	tst	fp, #1
60305c68:	0a000019 	beq	60305cd4 <_vfprintf_r+0x1434>
60305c6c:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
60305c70:	e5843000 	str	r3, [r4]
60305c74:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
60305c78:	e5843004 	str	r3, [r4, #4]
60305c7c:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
60305c80:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
60305c84:	e0833002 	add	r3, r3, r2
60305c88:	e58d3080 	str	r3, [sp, #128]	; 0x80
60305c8c:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60305c90:	e2833001 	add	r3, r3, #1
60305c94:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60305c98:	e3530007 	cmp	r3, #7
60305c9c:	d2844008 	addle	r4, r4, #8
60305ca0:	da000006 	ble	60305cc0 <_vfprintf_r+0x1420>
60305ca4:	e28d2078 	add	r2, sp, #120	; 0x78
60305ca8:	e1a01005 	mov	r1, r5
60305cac:	e1a00007 	mov	r0, r7
60305cb0:	ebfff6e4 	bl	60303848 <__sprint_r>
60305cb4:	e3500000 	cmp	r0, #0
60305cb8:	1a00024a 	bne	603065e8 <_vfprintf_r+0x1d48>
60305cbc:	e28d4084 	add	r4, sp, #132	; 0x84
60305cc0:	e59d300c 	ldr	r3, [sp, #12]
60305cc4:	e2436001 	sub	r6, r3, #1
60305cc8:	e3560000 	cmp	r6, #0
60305ccc:	c3a08010 	movgt	r8, #16
60305cd0:	ca000027 	bgt	60305d74 <_vfprintf_r+0x14d4>
60305cd4:	e31b0004 	tst	fp, #4
60305cd8:	1a000229 	bne	60306584 <_vfprintf_r+0x1ce4>
60305cdc:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
60305ce0:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
60305ce4:	e59d1034 	ldr	r1, [sp, #52]	; 0x34
60305ce8:	e1520001 	cmp	r2, r1
60305cec:	a0833002 	addge	r3, r3, r2
60305cf0:	b0833001 	addlt	r3, r3, r1
60305cf4:	e58d302c 	str	r3, [sp, #44]	; 0x2c
60305cf8:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
60305cfc:	e3530000 	cmp	r3, #0
60305d00:	0a000005 	beq	60305d1c <_vfprintf_r+0x147c>
60305d04:	e28d2078 	add	r2, sp, #120	; 0x78
60305d08:	e1a01005 	mov	r1, r5
60305d0c:	e1a00007 	mov	r0, r7
60305d10:	ebfff6cc 	bl	60303848 <__sprint_r>
60305d14:	e3500000 	cmp	r0, #0
60305d18:	1a000232 	bne	603065e8 <_vfprintf_r+0x1d48>
60305d1c:	e3a03000 	mov	r3, #0
60305d20:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60305d24:	e59d3008 	ldr	r3, [sp, #8]
60305d28:	e3530000 	cmp	r3, #0
60305d2c:	1a000244 	bne	60306644 <_vfprintf_r+0x1da4>
60305d30:	e28d4084 	add	r4, sp, #132	; 0x84
60305d34:	eafffeb5 	b	60305810 <_vfprintf_r+0xf70>
60305d38:	e2822010 	add	r2, r2, #16
60305d3c:	e3530007 	cmp	r3, #7
60305d40:	e5848004 	str	r8, [r4, #4]
60305d44:	e58d2080 	str	r2, [sp, #128]	; 0x80
60305d48:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60305d4c:	da000006 	ble	60305d6c <_vfprintf_r+0x14cc>
60305d50:	e28d2078 	add	r2, sp, #120	; 0x78
60305d54:	e1a01005 	mov	r1, r5
60305d58:	e1a00007 	mov	r0, r7
60305d5c:	ebfff6b9 	bl	60303848 <__sprint_r>
60305d60:	e3500000 	cmp	r0, #0
60305d64:	1a00021f 	bne	603065e8 <_vfprintf_r+0x1d48>
60305d68:	e28d1084 	add	r1, sp, #132	; 0x84
60305d6c:	e2466010 	sub	r6, r6, #16
60305d70:	e1a04001 	mov	r4, r1
60305d74:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60305d78:	e2841008 	add	r1, r4, #8
60305d7c:	e51f0a88 	ldr	r0, [pc, #-2696]	; 603052fc <_vfprintf_r+0xa5c>
60305d80:	e3560010 	cmp	r6, #16
60305d84:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
60305d88:	e2833001 	add	r3, r3, #1
60305d8c:	e5840000 	str	r0, [r4]
60305d90:	caffffe8 	bgt	60305d38 <_vfprintf_r+0x1498>
60305d94:	e5846004 	str	r6, [r4, #4]
60305d98:	e0866002 	add	r6, r6, r2
60305d9c:	e58d6080 	str	r6, [sp, #128]	; 0x80
60305da0:	e3530007 	cmp	r3, #7
60305da4:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60305da8:	d1a04001 	movle	r4, r1
60305dac:	daffffc8 	ble	60305cd4 <_vfprintf_r+0x1434>
60305db0:	eafffe3a 	b	603056a0 <_vfprintf_r+0xe00>
60305db4:	e59d3060 	ldr	r3, [sp, #96]	; 0x60
60305db8:	e3530000 	cmp	r3, #0
60305dbc:	ca00005f 	bgt	60305f40 <_vfprintf_r+0x16a0>
60305dc0:	e51f3ad0 	ldr	r3, [pc, #-2768]	; 603052f8 <_vfprintf_r+0xa58>
60305dc4:	e5843000 	str	r3, [r4]
60305dc8:	e3a03001 	mov	r3, #1
60305dcc:	e0800003 	add	r0, r0, r3
60305dd0:	e5843004 	str	r3, [r4, #4]
60305dd4:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60305dd8:	e58d0080 	str	r0, [sp, #128]	; 0x80
60305ddc:	e2833001 	add	r3, r3, #1
60305de0:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60305de4:	e3530007 	cmp	r3, #7
60305de8:	d2844008 	addle	r4, r4, #8
60305dec:	da000006 	ble	60305e0c <_vfprintf_r+0x156c>
60305df0:	e28d2078 	add	r2, sp, #120	; 0x78
60305df4:	e1a01005 	mov	r1, r5
60305df8:	e1a00007 	mov	r0, r7
60305dfc:	ebfff691 	bl	60303848 <__sprint_r>
60305e00:	e3500000 	cmp	r0, #0
60305e04:	1a0001f7 	bne	603065e8 <_vfprintf_r+0x1d48>
60305e08:	e28d4084 	add	r4, sp, #132	; 0x84
60305e0c:	e59d100c 	ldr	r1, [sp, #12]
60305e10:	e59d2060 	ldr	r2, [sp, #96]	; 0x60
60305e14:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
60305e18:	e1812002 	orr	r2, r1, r2
60305e1c:	e20b1001 	and	r1, fp, #1
60305e20:	e1922001 	orrs	r2, r2, r1
60305e24:	0affffaa 	beq	60305cd4 <_vfprintf_r+0x1434>
60305e28:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
60305e2c:	e5842000 	str	r2, [r4]
60305e30:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
60305e34:	e5842004 	str	r2, [r4, #4]
60305e38:	e0823003 	add	r3, r2, r3
60305e3c:	e58d3080 	str	r3, [sp, #128]	; 0x80
60305e40:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60305e44:	e2833001 	add	r3, r3, #1
60305e48:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60305e4c:	e3530007 	cmp	r3, #7
60305e50:	d2844008 	addle	r4, r4, #8
60305e54:	da000006 	ble	60305e74 <_vfprintf_r+0x15d4>
60305e58:	e28d2078 	add	r2, sp, #120	; 0x78
60305e5c:	e1a01005 	mov	r1, r5
60305e60:	e1a00007 	mov	r0, r7
60305e64:	ebfff677 	bl	60303848 <__sprint_r>
60305e68:	e3500000 	cmp	r0, #0
60305e6c:	1a0001dd 	bne	603065e8 <_vfprintf_r+0x1d48>
60305e70:	e28d4084 	add	r4, sp, #132	; 0x84
60305e74:	e59d6060 	ldr	r6, [sp, #96]	; 0x60
60305e78:	e3560000 	cmp	r6, #0
60305e7c:	b2666000 	rsblt	r6, r6, #0
60305e80:	b1a02004 	movlt	r2, r4
60305e84:	b3a08010 	movlt	r8, #16
60305e88:	ba000016 	blt	60305ee8 <_vfprintf_r+0x1648>
60305e8c:	e59d300c 	ldr	r3, [sp, #12]
60305e90:	e59d200c 	ldr	r2, [sp, #12]
60305e94:	e5843004 	str	r3, [r4, #4]
60305e98:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
60305e9c:	e584a000 	str	sl, [r4]
60305ea0:	e0833002 	add	r3, r3, r2
60305ea4:	e58d3080 	str	r3, [sp, #128]	; 0x80
60305ea8:	eafffdf6 	b	60305688 <_vfprintf_r+0xde8>
60305eac:	e2811010 	add	r1, r1, #16
60305eb0:	e3530007 	cmp	r3, #7
60305eb4:	e5828004 	str	r8, [r2, #4]
60305eb8:	e58d1080 	str	r1, [sp, #128]	; 0x80
60305ebc:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60305ec0:	da000006 	ble	60305ee0 <_vfprintf_r+0x1640>
60305ec4:	e28d2078 	add	r2, sp, #120	; 0x78
60305ec8:	e1a01005 	mov	r1, r5
60305ecc:	e1a00007 	mov	r0, r7
60305ed0:	ebfff65c 	bl	60303848 <__sprint_r>
60305ed4:	e3500000 	cmp	r0, #0
60305ed8:	1a0001c2 	bne	603065e8 <_vfprintf_r+0x1d48>
60305edc:	e28d4084 	add	r4, sp, #132	; 0x84
60305ee0:	e2466010 	sub	r6, r6, #16
60305ee4:	e1a02004 	mov	r2, r4
60305ee8:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60305eec:	e2844008 	add	r4, r4, #8
60305ef0:	e51f0bfc 	ldr	r0, [pc, #-3068]	; 603052fc <_vfprintf_r+0xa5c>
60305ef4:	e3560010 	cmp	r6, #16
60305ef8:	e59d1080 	ldr	r1, [sp, #128]	; 0x80
60305efc:	e2833001 	add	r3, r3, #1
60305f00:	e5820000 	str	r0, [r2]
60305f04:	caffffe8 	bgt	60305eac <_vfprintf_r+0x160c>
60305f08:	e5826004 	str	r6, [r2, #4]
60305f0c:	e3530007 	cmp	r3, #7
60305f10:	e0866001 	add	r6, r6, r1
60305f14:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60305f18:	e58d6080 	str	r6, [sp, #128]	; 0x80
60305f1c:	daffffda 	ble	60305e8c <_vfprintf_r+0x15ec>
60305f20:	e28d2078 	add	r2, sp, #120	; 0x78
60305f24:	e1a01005 	mov	r1, r5
60305f28:	e1a00007 	mov	r0, r7
60305f2c:	ebfff645 	bl	60303848 <__sprint_r>
60305f30:	e3500000 	cmp	r0, #0
60305f34:	1a0001ab 	bne	603065e8 <_vfprintf_r+0x1d48>
60305f38:	e28d4084 	add	r4, sp, #132	; 0x84
60305f3c:	eaffffd2 	b	60305e8c <_vfprintf_r+0x15ec>
60305f40:	e59d300c 	ldr	r3, [sp, #12]
60305f44:	e1580003 	cmp	r8, r3
60305f48:	b1a09008 	movlt	r9, r8
60305f4c:	a1a09003 	movge	r9, r3
60305f50:	e3590000 	cmp	r9, #0
60305f54:	da000010 	ble	60305f9c <_vfprintf_r+0x16fc>
60305f58:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60305f5c:	e0890000 	add	r0, r9, r0
60305f60:	e584a000 	str	sl, [r4]
60305f64:	e2833001 	add	r3, r3, #1
60305f68:	e5849004 	str	r9, [r4, #4]
60305f6c:	e3530007 	cmp	r3, #7
60305f70:	e58d0080 	str	r0, [sp, #128]	; 0x80
60305f74:	d2844008 	addle	r4, r4, #8
60305f78:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60305f7c:	da000006 	ble	60305f9c <_vfprintf_r+0x16fc>
60305f80:	e28d2078 	add	r2, sp, #120	; 0x78
60305f84:	e1a01005 	mov	r1, r5
60305f88:	e1a00007 	mov	r0, r7
60305f8c:	ebfff62d 	bl	60303848 <__sprint_r>
60305f90:	e3500000 	cmp	r0, #0
60305f94:	1a000193 	bne	603065e8 <_vfprintf_r+0x1d48>
60305f98:	e28d4084 	add	r4, sp, #132	; 0x84
60305f9c:	e3590000 	cmp	r9, #0
60305fa0:	a0486009 	subge	r6, r8, r9
60305fa4:	b1a06008 	movlt	r6, r8
60305fa8:	e3560000 	cmp	r6, #0
60305fac:	c3a09010 	movgt	r9, #16
60305fb0:	ca000063 	bgt	60306144 <_vfprintf_r+0x18a4>
60305fb4:	e08a8008 	add	r8, sl, r8
60305fb8:	e31b0b01 	tst	fp, #1024	; 0x400
60305fbc:	0a000007 	beq	60305fe0 <_vfprintf_r+0x1740>
60305fc0:	e1cd21d8 	ldrd	r2, [sp, #24]
60305fc4:	e3520000 	cmp	r2, #0
60305fc8:	d3530000 	cmple	r3, #0
60305fcc:	ca000073 	bgt	603061a0 <_vfprintf_r+0x1900>
60305fd0:	e59d300c 	ldr	r3, [sp, #12]
60305fd4:	e08a3003 	add	r3, sl, r3
60305fd8:	e1580003 	cmp	r8, r3
60305fdc:	21a08003 	movcs	r8, r3
60305fe0:	e59d3060 	ldr	r3, [sp, #96]	; 0x60
60305fe4:	e59d200c 	ldr	r2, [sp, #12]
60305fe8:	e1530002 	cmp	r3, r2
60305fec:	ba000001 	blt	60305ff8 <_vfprintf_r+0x1758>
60305ff0:	e31b0001 	tst	fp, #1
60305ff4:	0a000014 	beq	6030604c <_vfprintf_r+0x17ac>
60305ff8:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
60305ffc:	e5843000 	str	r3, [r4]
60306000:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
60306004:	e5843004 	str	r3, [r4, #4]
60306008:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
6030600c:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
60306010:	e0833002 	add	r3, r3, r2
60306014:	e58d3080 	str	r3, [sp, #128]	; 0x80
60306018:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
6030601c:	e2833001 	add	r3, r3, #1
60306020:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60306024:	e3530007 	cmp	r3, #7
60306028:	d2844008 	addle	r4, r4, #8
6030602c:	da000006 	ble	6030604c <_vfprintf_r+0x17ac>
60306030:	e28d2078 	add	r2, sp, #120	; 0x78
60306034:	e1a01005 	mov	r1, r5
60306038:	e1a00007 	mov	r0, r7
6030603c:	ebfff601 	bl	60303848 <__sprint_r>
60306040:	e3500000 	cmp	r0, #0
60306044:	1a000167 	bne	603065e8 <_vfprintf_r+0x1d48>
60306048:	e28d4084 	add	r4, sp, #132	; 0x84
6030604c:	e59d300c 	ldr	r3, [sp, #12]
60306050:	e59d6060 	ldr	r6, [sp, #96]	; 0x60
60306054:	e08a2003 	add	r2, sl, r3
60306058:	e0436006 	sub	r6, r3, r6
6030605c:	e0422008 	sub	r2, r2, r8
60306060:	e1560002 	cmp	r6, r2
60306064:	a1a06002 	movge	r6, r2
60306068:	e3560000 	cmp	r6, #0
6030606c:	da000011 	ble	603060b8 <_vfprintf_r+0x1818>
60306070:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
60306074:	e5848000 	str	r8, [r4]
60306078:	e0863003 	add	r3, r6, r3
6030607c:	e58d3080 	str	r3, [sp, #128]	; 0x80
60306080:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60306084:	e5846004 	str	r6, [r4, #4]
60306088:	e2833001 	add	r3, r3, #1
6030608c:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60306090:	e3530007 	cmp	r3, #7
60306094:	d2844008 	addle	r4, r4, #8
60306098:	da000006 	ble	603060b8 <_vfprintf_r+0x1818>
6030609c:	e28d2078 	add	r2, sp, #120	; 0x78
603060a0:	e1a01005 	mov	r1, r5
603060a4:	e1a00007 	mov	r0, r7
603060a8:	ebfff5e6 	bl	60303848 <__sprint_r>
603060ac:	e3500000 	cmp	r0, #0
603060b0:	1a00014c 	bne	603065e8 <_vfprintf_r+0x1d48>
603060b4:	e28d4084 	add	r4, sp, #132	; 0x84
603060b8:	e59d8060 	ldr	r8, [sp, #96]	; 0x60
603060bc:	e3560000 	cmp	r6, #0
603060c0:	e59d300c 	ldr	r3, [sp, #12]
603060c4:	e0438008 	sub	r8, r3, r8
603060c8:	a0488006 	subge	r8, r8, r6
603060cc:	e3580000 	cmp	r8, #0
603060d0:	c3a06010 	movgt	r6, #16
603060d4:	dafffefe 	ble	60305cd4 <_vfprintf_r+0x1434>
603060d8:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
603060dc:	e2841008 	add	r1, r4, #8
603060e0:	e51f0dec 	ldr	r0, [pc, #-3564]	; 603052fc <_vfprintf_r+0xa5c>
603060e4:	e3580010 	cmp	r8, #16
603060e8:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
603060ec:	e2833001 	add	r3, r3, #1
603060f0:	e5840000 	str	r0, [r4]
603060f4:	ca000093 	bgt	60306348 <_vfprintf_r+0x1aa8>
603060f8:	e5848004 	str	r8, [r4, #4]
603060fc:	e0888002 	add	r8, r8, r2
60306100:	e58d8080 	str	r8, [sp, #128]	; 0x80
60306104:	eaffff25 	b	60305da0 <_vfprintf_r+0x1500>
60306108:	e2822010 	add	r2, r2, #16
6030610c:	e3530007 	cmp	r3, #7
60306110:	e5849004 	str	r9, [r4, #4]
60306114:	e58d2080 	str	r2, [sp, #128]	; 0x80
60306118:	e58d307c 	str	r3, [sp, #124]	; 0x7c
6030611c:	da000006 	ble	6030613c <_vfprintf_r+0x189c>
60306120:	e28d2078 	add	r2, sp, #120	; 0x78
60306124:	e1a01005 	mov	r1, r5
60306128:	e1a00007 	mov	r0, r7
6030612c:	ebfff5c5 	bl	60303848 <__sprint_r>
60306130:	e3500000 	cmp	r0, #0
60306134:	1a00012b 	bne	603065e8 <_vfprintf_r+0x1d48>
60306138:	e28d1084 	add	r1, sp, #132	; 0x84
6030613c:	e2466010 	sub	r6, r6, #16
60306140:	e1a04001 	mov	r4, r1
60306144:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60306148:	e2841008 	add	r1, r4, #8
6030614c:	e51f0e58 	ldr	r0, [pc, #-3672]	; 603052fc <_vfprintf_r+0xa5c>
60306150:	e3560010 	cmp	r6, #16
60306154:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
60306158:	e2833001 	add	r3, r3, #1
6030615c:	e5840000 	str	r0, [r4]
60306160:	caffffe8 	bgt	60306108 <_vfprintf_r+0x1868>
60306164:	e3530007 	cmp	r3, #7
60306168:	e5846004 	str	r6, [r4, #4]
6030616c:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60306170:	e0866002 	add	r6, r6, r2
60306174:	d1a04001 	movle	r4, r1
60306178:	e58d6080 	str	r6, [sp, #128]	; 0x80
6030617c:	daffff8c 	ble	60305fb4 <_vfprintf_r+0x1714>
60306180:	e28d2078 	add	r2, sp, #120	; 0x78
60306184:	e1a01005 	mov	r1, r5
60306188:	e1a00007 	mov	r0, r7
6030618c:	ebfff5ad 	bl	60303848 <__sprint_r>
60306190:	e3500000 	cmp	r0, #0
60306194:	1a000113 	bne	603065e8 <_vfprintf_r+0x1d48>
60306198:	e28d4084 	add	r4, sp, #132	; 0x84
6030619c:	eaffff84 	b	60305fb4 <_vfprintf_r+0x1714>
603061a0:	e59d3018 	ldr	r3, [sp, #24]
603061a4:	e59d2038 	ldr	r2, [sp, #56]	; 0x38
603061a8:	e3530000 	cmp	r3, #0
603061ac:	12433001 	subne	r3, r3, #1
603061b0:	158d3018 	strne	r3, [sp, #24]
603061b4:	059d3020 	ldreq	r3, [sp, #32]
603061b8:	02433001 	subeq	r3, r3, #1
603061bc:	058d3020 	streq	r3, [sp, #32]
603061c0:	059d301c 	ldreq	r3, [sp, #28]
603061c4:	02433001 	subeq	r3, r3, #1
603061c8:	058d301c 	streq	r3, [sp, #28]
603061cc:	e59d3044 	ldr	r3, [sp, #68]	; 0x44
603061d0:	e5843000 	str	r3, [r4]
603061d4:	e59d3038 	ldr	r3, [sp, #56]	; 0x38
603061d8:	e5843004 	str	r3, [r4, #4]
603061dc:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
603061e0:	e0833002 	add	r3, r3, r2
603061e4:	e58d3080 	str	r3, [sp, #128]	; 0x80
603061e8:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
603061ec:	e2833001 	add	r3, r3, #1
603061f0:	e58d307c 	str	r3, [sp, #124]	; 0x7c
603061f4:	e3530007 	cmp	r3, #7
603061f8:	d2844008 	addle	r4, r4, #8
603061fc:	da000006 	ble	6030621c <_vfprintf_r+0x197c>
60306200:	e28d2078 	add	r2, sp, #120	; 0x78
60306204:	e1a01005 	mov	r1, r5
60306208:	e1a00007 	mov	r0, r7
6030620c:	ebfff58d 	bl	60303848 <__sprint_r>
60306210:	e3500000 	cmp	r0, #0
60306214:	1a0000f3 	bne	603065e8 <_vfprintf_r+0x1d48>
60306218:	e28d4084 	add	r4, sp, #132	; 0x84
6030621c:	e59d300c 	ldr	r3, [sp, #12]
60306220:	e59d2020 	ldr	r2, [sp, #32]
60306224:	e08a9003 	add	r9, sl, r3
60306228:	e0493008 	sub	r3, r9, r8
6030622c:	e5d29000 	ldrb	r9, [r2]
60306230:	e1590003 	cmp	r9, r3
60306234:	a1a09003 	movge	r9, r3
60306238:	e3590000 	cmp	r9, #0
6030623c:	da000010 	ble	60306284 <_vfprintf_r+0x19e4>
60306240:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
60306244:	e1c480f0 	strd	r8, [r4]
60306248:	e0893003 	add	r3, r9, r3
6030624c:	e58d3080 	str	r3, [sp, #128]	; 0x80
60306250:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
60306254:	e2833001 	add	r3, r3, #1
60306258:	e58d307c 	str	r3, [sp, #124]	; 0x7c
6030625c:	e3530007 	cmp	r3, #7
60306260:	d2844008 	addle	r4, r4, #8
60306264:	da000006 	ble	60306284 <_vfprintf_r+0x19e4>
60306268:	e28d2078 	add	r2, sp, #120	; 0x78
6030626c:	e1a01005 	mov	r1, r5
60306270:	e1a00007 	mov	r0, r7
60306274:	ebfff573 	bl	60303848 <__sprint_r>
60306278:	e3500000 	cmp	r0, #0
6030627c:	1a0000d9 	bne	603065e8 <_vfprintf_r+0x1d48>
60306280:	e28d4084 	add	r4, sp, #132	; 0x84
60306284:	e59d3020 	ldr	r3, [sp, #32]
60306288:	e3590000 	cmp	r9, #0
6030628c:	e5d36000 	ldrb	r6, [r3]
60306290:	a0466009 	subge	r6, r6, r9
60306294:	e3560000 	cmp	r6, #0
60306298:	da000015 	ble	603062f4 <_vfprintf_r+0x1a54>
6030629c:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
603062a0:	e2841008 	add	r1, r4, #8
603062a4:	e51f0fb0 	ldr	r0, [pc, #-4016]	; 603052fc <_vfprintf_r+0xa5c>
603062a8:	e3560010 	cmp	r6, #16
603062ac:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
603062b0:	e2833001 	add	r3, r3, #1
603062b4:	e5840000 	str	r0, [r4]
603062b8:	ca000011 	bgt	60306304 <_vfprintf_r+0x1a64>
603062bc:	e3530007 	cmp	r3, #7
603062c0:	e5846004 	str	r6, [r4, #4]
603062c4:	e58d307c 	str	r3, [sp, #124]	; 0x7c
603062c8:	e0866002 	add	r6, r6, r2
603062cc:	d1a04001 	movle	r4, r1
603062d0:	e58d6080 	str	r6, [sp, #128]	; 0x80
603062d4:	da000006 	ble	603062f4 <_vfprintf_r+0x1a54>
603062d8:	e28d2078 	add	r2, sp, #120	; 0x78
603062dc:	e1a01005 	mov	r1, r5
603062e0:	e1a00007 	mov	r0, r7
603062e4:	ebfff557 	bl	60303848 <__sprint_r>
603062e8:	e3500000 	cmp	r0, #0
603062ec:	1a0000bd 	bne	603065e8 <_vfprintf_r+0x1d48>
603062f0:	e28d4084 	add	r4, sp, #132	; 0x84
603062f4:	e59d3020 	ldr	r3, [sp, #32]
603062f8:	e5d33000 	ldrb	r3, [r3]
603062fc:	e0888003 	add	r8, r8, r3
60306300:	eaffff2e 	b	60305fc0 <_vfprintf_r+0x1720>
60306304:	e3a00010 	mov	r0, #16
60306308:	e3530007 	cmp	r3, #7
6030630c:	e0822000 	add	r2, r2, r0
60306310:	e5840004 	str	r0, [r4, #4]
60306314:	e58d2080 	str	r2, [sp, #128]	; 0x80
60306318:	e58d307c 	str	r3, [sp, #124]	; 0x7c
6030631c:	da000006 	ble	6030633c <_vfprintf_r+0x1a9c>
60306320:	e28d2078 	add	r2, sp, #120	; 0x78
60306324:	e1a01005 	mov	r1, r5
60306328:	e1a00007 	mov	r0, r7
6030632c:	ebfff545 	bl	60303848 <__sprint_r>
60306330:	e3500000 	cmp	r0, #0
60306334:	1a0000ab 	bne	603065e8 <_vfprintf_r+0x1d48>
60306338:	e28d1084 	add	r1, sp, #132	; 0x84
6030633c:	e2466010 	sub	r6, r6, #16
60306340:	e1a04001 	mov	r4, r1
60306344:	eaffffd4 	b	6030629c <_vfprintf_r+0x19fc>
60306348:	e2822010 	add	r2, r2, #16
6030634c:	e3530007 	cmp	r3, #7
60306350:	e5846004 	str	r6, [r4, #4]
60306354:	e58d2080 	str	r2, [sp, #128]	; 0x80
60306358:	e58d307c 	str	r3, [sp, #124]	; 0x7c
6030635c:	da000006 	ble	6030637c <_vfprintf_r+0x1adc>
60306360:	e28d2078 	add	r2, sp, #120	; 0x78
60306364:	e1a01005 	mov	r1, r5
60306368:	e1a00007 	mov	r0, r7
6030636c:	ebfff535 	bl	60303848 <__sprint_r>
60306370:	e3500000 	cmp	r0, #0
60306374:	1a00009b 	bne	603065e8 <_vfprintf_r+0x1d48>
60306378:	e28d1084 	add	r1, sp, #132	; 0x84
6030637c:	e2488010 	sub	r8, r8, #16
60306380:	e1a04001 	mov	r4, r1
60306384:	eaffff53 	b	603060d8 <_vfprintf_r+0x1838>
60306388:	e59d207c 	ldr	r2, [sp, #124]	; 0x7c
6030638c:	e2800001 	add	r0, r0, #1
60306390:	e59d100c 	ldr	r1, [sp, #12]
60306394:	e2843008 	add	r3, r4, #8
60306398:	e2822001 	add	r2, r2, #1
6030639c:	e3510001 	cmp	r1, #1
603063a0:	ca000001 	bgt	603063ac <_vfprintf_r+0x1b0c>
603063a4:	e31b0001 	tst	fp, #1
603063a8:	0a00006d 	beq	60306564 <_vfprintf_r+0x1cc4>
603063ac:	e3a01001 	mov	r1, #1
603063b0:	e3520007 	cmp	r2, #7
603063b4:	e584a000 	str	sl, [r4]
603063b8:	e5841004 	str	r1, [r4, #4]
603063bc:	e58d0080 	str	r0, [sp, #128]	; 0x80
603063c0:	e58d207c 	str	r2, [sp, #124]	; 0x7c
603063c4:	da000006 	ble	603063e4 <_vfprintf_r+0x1b44>
603063c8:	e28d2078 	add	r2, sp, #120	; 0x78
603063cc:	e1a01005 	mov	r1, r5
603063d0:	e1a00007 	mov	r0, r7
603063d4:	ebfff51b 	bl	60303848 <__sprint_r>
603063d8:	e3500000 	cmp	r0, #0
603063dc:	1a000081 	bne	603065e8 <_vfprintf_r+0x1d48>
603063e0:	e28d3084 	add	r3, sp, #132	; 0x84
603063e4:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
603063e8:	e5832000 	str	r2, [r3]
603063ec:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
603063f0:	e5832004 	str	r2, [r3, #4]
603063f4:	e59d1028 	ldr	r1, [sp, #40]	; 0x28
603063f8:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
603063fc:	e0822001 	add	r2, r2, r1
60306400:	e58d2080 	str	r2, [sp, #128]	; 0x80
60306404:	e59d207c 	ldr	r2, [sp, #124]	; 0x7c
60306408:	e2822001 	add	r2, r2, #1
6030640c:	e58d207c 	str	r2, [sp, #124]	; 0x7c
60306410:	e3520007 	cmp	r2, #7
60306414:	d2833008 	addle	r3, r3, #8
60306418:	da000006 	ble	60306438 <_vfprintf_r+0x1b98>
6030641c:	e28d2078 	add	r2, sp, #120	; 0x78
60306420:	e1a01005 	mov	r1, r5
60306424:	e1a00007 	mov	r0, r7
60306428:	ebfff506 	bl	60303848 <__sprint_r>
6030642c:	e3500000 	cmp	r0, #0
60306430:	1a00006c 	bne	603065e8 <_vfprintf_r+0x1d48>
60306434:	e28d3084 	add	r3, sp, #132	; 0x84
60306438:	eeb58b40 	vcmp.f64	d8, #0.0
6030643c:	e59d200c 	ldr	r2, [sp, #12]
60306440:	e2424001 	sub	r4, r2, #1
60306444:	eef1fa10 	vmrs	APSR_nzcv, fpscr
60306448:	0a000022 	beq	603064d8 <_vfprintf_r+0x1c38>
6030644c:	e59d107c 	ldr	r1, [sp, #124]	; 0x7c
60306450:	e28a0001 	add	r0, sl, #1
60306454:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
60306458:	e2811001 	add	r1, r1, #1
6030645c:	e8830011 	stm	r3, {r0, r4}
60306460:	e59d000c 	ldr	r0, [sp, #12]
60306464:	e2422001 	sub	r2, r2, #1
60306468:	e3510007 	cmp	r1, #7
6030646c:	e58d107c 	str	r1, [sp, #124]	; 0x7c
60306470:	e0822000 	add	r2, r2, r0
60306474:	d2833008 	addle	r3, r3, #8
60306478:	e58d2080 	str	r2, [sp, #128]	; 0x80
6030647c:	da000006 	ble	6030649c <_vfprintf_r+0x1bfc>
60306480:	e28d2078 	add	r2, sp, #120	; 0x78
60306484:	e1a01005 	mov	r1, r5
60306488:	e1a00007 	mov	r0, r7
6030648c:	ebfff4ed 	bl	60303848 <__sprint_r>
60306490:	e3500000 	cmp	r0, #0
60306494:	1a000053 	bne	603065e8 <_vfprintf_r+0x1d48>
60306498:	e28d3084 	add	r3, sp, #132	; 0x84
6030649c:	e28d2068 	add	r2, sp, #104	; 0x68
603064a0:	e5832000 	str	r2, [r3]
603064a4:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
603064a8:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
603064ac:	e5832004 	str	r2, [r3, #4]
603064b0:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
603064b4:	e0822001 	add	r2, r2, r1
603064b8:	e58d2080 	str	r2, [sp, #128]	; 0x80
603064bc:	e59d207c 	ldr	r2, [sp, #124]	; 0x7c
603064c0:	e2822001 	add	r2, r2, #1
603064c4:	e58d207c 	str	r2, [sp, #124]	; 0x7c
603064c8:	e3520007 	cmp	r2, #7
603064cc:	d2834008 	addle	r4, r3, #8
603064d0:	dafffdff 	ble	60305cd4 <_vfprintf_r+0x1434>
603064d4:	eafffc71 	b	603056a0 <_vfprintf_r+0xe00>
603064d8:	e3540000 	cmp	r4, #0
603064dc:	c3a06010 	movgt	r6, #16
603064e0:	daffffed 	ble	6030649c <_vfprintf_r+0x1bfc>
603064e4:	e59d207c 	ldr	r2, [sp, #124]	; 0x7c
603064e8:	e2830008 	add	r0, r3, #8
603064ec:	e59fc2b4 	ldr	ip, [pc, #692]	; 603067a8 <_vfprintf_r+0x1f08>
603064f0:	e3540010 	cmp	r4, #16
603064f4:	e59d1080 	ldr	r1, [sp, #128]	; 0x80
603064f8:	e2822001 	add	r2, r2, #1
603064fc:	e583c000 	str	ip, [r3]
60306500:	ca000007 	bgt	60306524 <_vfprintf_r+0x1c84>
60306504:	e3520007 	cmp	r2, #7
60306508:	e5834004 	str	r4, [r3, #4]
6030650c:	e58d207c 	str	r2, [sp, #124]	; 0x7c
60306510:	e0844001 	add	r4, r4, r1
60306514:	d1a03000 	movle	r3, r0
60306518:	e58d4080 	str	r4, [sp, #128]	; 0x80
6030651c:	daffffde 	ble	6030649c <_vfprintf_r+0x1bfc>
60306520:	eaffffd6 	b	60306480 <_vfprintf_r+0x1be0>
60306524:	e2811010 	add	r1, r1, #16
60306528:	e3520007 	cmp	r2, #7
6030652c:	e5836004 	str	r6, [r3, #4]
60306530:	e58d1080 	str	r1, [sp, #128]	; 0x80
60306534:	e58d207c 	str	r2, [sp, #124]	; 0x7c
60306538:	da000006 	ble	60306558 <_vfprintf_r+0x1cb8>
6030653c:	e28d2078 	add	r2, sp, #120	; 0x78
60306540:	e1a01005 	mov	r1, r5
60306544:	e1a00007 	mov	r0, r7
60306548:	ebfff4be 	bl	60303848 <__sprint_r>
6030654c:	e3500000 	cmp	r0, #0
60306550:	1a000024 	bne	603065e8 <_vfprintf_r+0x1d48>
60306554:	e28d0084 	add	r0, sp, #132	; 0x84
60306558:	e2444010 	sub	r4, r4, #16
6030655c:	e1a03000 	mov	r3, r0
60306560:	eaffffdf 	b	603064e4 <_vfprintf_r+0x1c44>
60306564:	e3a01001 	mov	r1, #1
60306568:	e3520007 	cmp	r2, #7
6030656c:	e584a000 	str	sl, [r4]
60306570:	e5841004 	str	r1, [r4, #4]
60306574:	e58d0080 	str	r0, [sp, #128]	; 0x80
60306578:	e58d207c 	str	r2, [sp, #124]	; 0x7c
6030657c:	daffffc6 	ble	6030649c <_vfprintf_r+0x1bfc>
60306580:	eaffffbe 	b	60306480 <_vfprintf_r+0x1be0>
60306584:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
60306588:	e59d2034 	ldr	r2, [sp, #52]	; 0x34
6030658c:	e0436002 	sub	r6, r3, r2
60306590:	e3560000 	cmp	r6, #0
60306594:	c3a09010 	movgt	r9, #16
60306598:	c59f820c 	ldrgt	r8, [pc, #524]	; 603067ac <_vfprintf_r+0x1f0c>
6030659c:	dafffdce 	ble	60305cdc <_vfprintf_r+0x143c>
603065a0:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
603065a4:	e3560010 	cmp	r6, #16
603065a8:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
603065ac:	e2833001 	add	r3, r3, #1
603065b0:	e5848000 	str	r8, [r4]
603065b4:	ca000012 	bgt	60306604 <_vfprintf_r+0x1d64>
603065b8:	e5846004 	str	r6, [r4, #4]
603065bc:	e3530007 	cmp	r3, #7
603065c0:	e0866002 	add	r6, r6, r2
603065c4:	e58d307c 	str	r3, [sp, #124]	; 0x7c
603065c8:	e58d6080 	str	r6, [sp, #128]	; 0x80
603065cc:	dafffdc2 	ble	60305cdc <_vfprintf_r+0x143c>
603065d0:	e28d2078 	add	r2, sp, #120	; 0x78
603065d4:	e1a01005 	mov	r1, r5
603065d8:	e1a00007 	mov	r0, r7
603065dc:	ebfff499 	bl	60303848 <__sprint_r>
603065e0:	e3500000 	cmp	r0, #0
603065e4:	0afffdbc 	beq	60305cdc <_vfprintf_r+0x143c>
603065e8:	e59d3008 	ldr	r3, [sp, #8]
603065ec:	e3530000 	cmp	r3, #0
603065f0:	0afffa86 	beq	60305010 <_vfprintf_r+0x770>
603065f4:	e1a01003 	mov	r1, r3
603065f8:	e1a00007 	mov	r0, r7
603065fc:	eb001d2d 	bl	6030dab8 <__wrap__free_r>
60306600:	eafffa82 	b	60305010 <_vfprintf_r+0x770>
60306604:	e3530007 	cmp	r3, #7
60306608:	e2822010 	add	r2, r2, #16
6030660c:	e5849004 	str	r9, [r4, #4]
60306610:	d2844008 	addle	r4, r4, #8
60306614:	e58d2080 	str	r2, [sp, #128]	; 0x80
60306618:	e58d307c 	str	r3, [sp, #124]	; 0x7c
6030661c:	da000006 	ble	6030663c <_vfprintf_r+0x1d9c>
60306620:	e28d2078 	add	r2, sp, #120	; 0x78
60306624:	e1a01005 	mov	r1, r5
60306628:	e1a00007 	mov	r0, r7
6030662c:	ebfff485 	bl	60303848 <__sprint_r>
60306630:	e3500000 	cmp	r0, #0
60306634:	1affffeb 	bne	603065e8 <_vfprintf_r+0x1d48>
60306638:	e28d4084 	add	r4, sp, #132	; 0x84
6030663c:	e2466010 	sub	r6, r6, #16
60306640:	eaffffd6 	b	603065a0 <_vfprintf_r+0x1d00>
60306644:	e59d1008 	ldr	r1, [sp, #8]
60306648:	e1a00007 	mov	r0, r7
6030664c:	eb001d19 	bl	6030dab8 <__wrap__free_r>
60306650:	eafffdb6 	b	60305d30 <_vfprintf_r+0x1490>
60306654:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
60306658:	e3530000 	cmp	r3, #0
6030665c:	1a000002 	bne	6030666c <_vfprintf_r+0x1dcc>
60306660:	e3a03000 	mov	r3, #0
60306664:	e58d307c 	str	r3, [sp, #124]	; 0x7c
60306668:	eafffa68 	b	60305010 <_vfprintf_r+0x770>
6030666c:	e28d2078 	add	r2, sp, #120	; 0x78
60306670:	e1a01005 	mov	r1, r5
60306674:	e1a00007 	mov	r0, r7
60306678:	ebfff472 	bl	60303848 <__sprint_r>
6030667c:	e3500000 	cmp	r0, #0
60306680:	0afffff6 	beq	60306660 <_vfprintf_r+0x1dc0>
60306684:	eafffa61 	b	60305010 <_vfprintf_r+0x770>
60306688:	e3760001 	cmn	r6, #1
6030668c:	11a0100b 	movne	r1, fp
60306690:	13a03001 	movne	r3, #1
60306694:	1afffcf6 	bne	60305a74 <_vfprintf_r+0x11d4>
60306698:	e358000a 	cmp	r8, #10
6030669c:	e2d93000 	sbcs	r3, r9, #0
603066a0:	32888030 	addcc	r8, r8, #48	; 0x30
603066a4:	35cd8127 	strbcc	r8, [sp, #295]	; 0x127
603066a8:	3afffcff 	bcc	60305aac <_vfprintf_r+0x120c>
603066ac:	e3a03000 	mov	r3, #0
603066b0:	e58d300c 	str	r3, [sp, #12]
603066b4:	e28d3f4a 	add	r3, sp, #296	; 0x128
603066b8:	e58d3008 	str	r3, [sp, #8]
603066bc:	e20b3b01 	and	r3, fp, #1024	; 0x400
603066c0:	e58d3018 	str	r3, [sp, #24]
603066c4:	e59d3008 	ldr	r3, [sp, #8]
603066c8:	e3a0200a 	mov	r2, #10
603066cc:	e1a00008 	mov	r0, r8
603066d0:	e1a01009 	mov	r1, r9
603066d4:	e243a001 	sub	sl, r3, #1
603066d8:	e3a03000 	mov	r3, #0
603066dc:	ebffe87c 	bl	603008d4 <__aeabi_uldivmod>
603066e0:	e59d3008 	ldr	r3, [sp, #8]
603066e4:	e2822030 	add	r2, r2, #48	; 0x30
603066e8:	e5432001 	strb	r2, [r3, #-1]
603066ec:	e59d300c 	ldr	r3, [sp, #12]
603066f0:	e2833001 	add	r3, r3, #1
603066f4:	e58d300c 	str	r3, [sp, #12]
603066f8:	e59d3018 	ldr	r3, [sp, #24]
603066fc:	e3530000 	cmp	r3, #0
60306700:	0a00001c 	beq	60306778 <_vfprintf_r+0x1ed8>
60306704:	e59d3020 	ldr	r3, [sp, #32]
60306708:	e358000a 	cmp	r8, #10
6030670c:	e59d100c 	ldr	r1, [sp, #12]
60306710:	e5d32000 	ldrb	r2, [r3]
60306714:	e2d93000 	sbcs	r3, r9, #0
60306718:	23a03001 	movcs	r3, #1
6030671c:	33a03000 	movcc	r3, #0
60306720:	e35200ff 	cmp	r2, #255	; 0xff
60306724:	03a03000 	moveq	r3, #0
60306728:	12033001 	andne	r3, r3, #1
6030672c:	e1520001 	cmp	r2, r1
60306730:	13a03000 	movne	r3, #0
60306734:	02033001 	andeq	r3, r3, #1
60306738:	e3530000 	cmp	r3, #0
6030673c:	0a00000d 	beq	60306778 <_vfprintf_r+0x1ed8>
60306740:	e59d3038 	ldr	r3, [sp, #56]	; 0x38
60306744:	e59d1044 	ldr	r1, [sp, #68]	; 0x44
60306748:	e04aa003 	sub	sl, sl, r3
6030674c:	e1a02003 	mov	r2, r3
60306750:	e1a0000a 	mov	r0, sl
60306754:	eb003403 	bl	60313768 <__wrap_strncpy>
60306758:	e59d3020 	ldr	r3, [sp, #32]
6030675c:	e5d33001 	ldrb	r3, [r3, #1]
60306760:	e3530000 	cmp	r3, #0
60306764:	159d3020 	ldrne	r3, [sp, #32]
60306768:	12833001 	addne	r3, r3, #1
6030676c:	158d3020 	strne	r3, [sp, #32]
60306770:	13a03000 	movne	r3, #0
60306774:	e58d300c 	str	r3, [sp, #12]
60306778:	e3a03000 	mov	r3, #0
6030677c:	e3a0200a 	mov	r2, #10
60306780:	e1a00008 	mov	r0, r8
60306784:	e1a01009 	mov	r1, r9
60306788:	ebffe851 	bl	603008d4 <__aeabi_uldivmod>
6030678c:	e358000a 	cmp	r8, #10
60306790:	e2d93000 	sbcs	r3, r9, #0
60306794:	3afff9c7 	bcc	60304eb8 <_vfprintf_r+0x618>
60306798:	e1a08000 	mov	r8, r0
6030679c:	e1a09001 	mov	r9, r1
603067a0:	e58da008 	str	sl, [sp, #8]
603067a4:	eaffffc6 	b	603066c4 <_vfprintf_r+0x1e24>
603067a8:	603140e0 	.word	0x603140e0
603067ac:	603140d0 	.word	0x603140d0

603067b0 <vfprintf>:
603067b0:	e1a03002 	mov	r3, r2
603067b4:	e1a02001 	mov	r2, r1
603067b8:	e1a01000 	mov	r1, r0
603067bc:	e59f0004 	ldr	r0, [pc, #4]	; 603067c8 <vfprintf+0x18>
603067c0:	e5900000 	ldr	r0, [r0]
603067c4:	eafff835 	b	603048a0 <_vfprintf_r>
603067c8:	60316000 	.word	0x60316000

603067cc <__sbprintf>:
603067cc:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
603067d0:	e1a08003 	mov	r8, r3
603067d4:	e1d130bc 	ldrh	r3, [r1, #12]
603067d8:	e24dde46 	sub	sp, sp, #1120	; 0x460
603067dc:	e1a05002 	mov	r5, r2
603067e0:	e24dd008 	sub	sp, sp, #8
603067e4:	e3c33002 	bic	r3, r3, #2
603067e8:	e1a0700d 	mov	r7, sp
603067ec:	e1a06000 	mov	r6, r0
603067f0:	e28d0058 	add	r0, sp, #88	; 0x58
603067f4:	e1a04001 	mov	r4, r1
603067f8:	e1c730bc 	strh	r3, [r7, #12]
603067fc:	e5913064 	ldr	r3, [r1, #100]	; 0x64
60306800:	e58d3064 	str	r3, [sp, #100]	; 0x64
60306804:	e1d130be 	ldrh	r3, [r1, #14]
60306808:	e1c730be 	strh	r3, [r7, #14]
6030680c:	e5913020 	ldr	r3, [r1, #32]
60306810:	e58d3020 	str	r3, [sp, #32]
60306814:	e5913028 	ldr	r3, [r1, #40]	; 0x28
60306818:	e58d3028 	str	r3, [sp, #40]	; 0x28
6030681c:	e28d3068 	add	r3, sp, #104	; 0x68
60306820:	e58d3000 	str	r3, [sp]
60306824:	e58d3010 	str	r3, [sp, #16]
60306828:	e3a03b01 	mov	r3, #1024	; 0x400
6030682c:	e58d3008 	str	r3, [sp, #8]
60306830:	e58d3014 	str	r3, [sp, #20]
60306834:	e3a03000 	mov	r3, #0
60306838:	e58d3018 	str	r3, [sp, #24]
6030683c:	ebffea71 	bl	60301208 <__retarget_lock_init_recursive>
60306840:	e1a02005 	mov	r2, r5
60306844:	e1a03008 	mov	r3, r8
60306848:	e1a01007 	mov	r1, r7
6030684c:	e1a00006 	mov	r0, r6
60306850:	ebfff812 	bl	603048a0 <_vfprintf_r>
60306854:	e2505000 	subs	r5, r0, #0
60306858:	ba000004 	blt	60306870 <__sbprintf+0xa4>
6030685c:	e1a01007 	mov	r1, r7
60306860:	e1a00006 	mov	r0, r6
60306864:	ebffe8f5 	bl	60300c40 <_fflush_r>
60306868:	e3500000 	cmp	r0, #0
6030686c:	13e05000 	mvnne	r5, #0
60306870:	e1dd30bc 	ldrh	r3, [sp, #12]
60306874:	e59d0058 	ldr	r0, [sp, #88]	; 0x58
60306878:	e3130040 	tst	r3, #64	; 0x40
6030687c:	11d430bc 	ldrhne	r3, [r4, #12]
60306880:	13833040 	orrne	r3, r3, #64	; 0x40
60306884:	11c430bc 	strhne	r3, [r4, #12]
60306888:	ebffea60 	bl	60301210 <__retarget_lock_close_recursive>
6030688c:	e1a00005 	mov	r0, r5
60306890:	e28dde46 	add	sp, sp, #1120	; 0x460
60306894:	e28dd008 	add	sp, sp, #8
60306898:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

6030689c <__swsetup_r>:
6030689c:	e59f3124 	ldr	r3, [pc, #292]	; 603069c8 <__swsetup_r+0x12c>
603068a0:	e92d4070 	push	{r4, r5, r6, lr}
603068a4:	e1a05000 	mov	r5, r0
603068a8:	e1a04001 	mov	r4, r1
603068ac:	e5930000 	ldr	r0, [r3]
603068b0:	e3500000 	cmp	r0, #0
603068b4:	0a000003 	beq	603068c8 <__swsetup_r+0x2c>
603068b8:	e5903018 	ldr	r3, [r0, #24]
603068bc:	e3530000 	cmp	r3, #0
603068c0:	1a000000 	bne	603068c8 <__swsetup_r+0x2c>
603068c4:	ebffe985 	bl	60300ee0 <__sinit>
603068c8:	e1d430bc 	ldrh	r3, [r4, #12]
603068cc:	e1d420fc 	ldrsh	r2, [r4, #12]
603068d0:	e3130008 	tst	r3, #8
603068d4:	1a000019 	bne	60306940 <__swsetup_r+0xa4>
603068d8:	e3130010 	tst	r3, #16
603068dc:	03a03009 	moveq	r3, #9
603068e0:	05853000 	streq	r3, [r5]
603068e4:	0a00002d 	beq	603069a0 <__swsetup_r+0x104>
603068e8:	e3130004 	tst	r3, #4
603068ec:	0a000010 	beq	60306934 <__swsetup_r+0x98>
603068f0:	e5941034 	ldr	r1, [r4, #52]	; 0x34
603068f4:	e3510000 	cmp	r1, #0
603068f8:	0a000006 	beq	60306918 <__swsetup_r+0x7c>
603068fc:	e2843044 	add	r3, r4, #68	; 0x44
60306900:	e1510003 	cmp	r1, r3
60306904:	0a000001 	beq	60306910 <__swsetup_r+0x74>
60306908:	e1a00005 	mov	r0, r5
6030690c:	eb001c69 	bl	6030dab8 <__wrap__free_r>
60306910:	e3a03000 	mov	r3, #0
60306914:	e5843034 	str	r3, [r4, #52]	; 0x34
60306918:	e1d430bc 	ldrh	r3, [r4, #12]
6030691c:	e3c33024 	bic	r3, r3, #36	; 0x24
60306920:	e1c430bc 	strh	r3, [r4, #12]
60306924:	e3a03000 	mov	r3, #0
60306928:	e5843004 	str	r3, [r4, #4]
6030692c:	e5943010 	ldr	r3, [r4, #16]
60306930:	e5843000 	str	r3, [r4]
60306934:	e1d430bc 	ldrh	r3, [r4, #12]
60306938:	e3833008 	orr	r3, r3, #8
6030693c:	e1c430bc 	strh	r3, [r4, #12]
60306940:	e5943010 	ldr	r3, [r4, #16]
60306944:	e3530000 	cmp	r3, #0
60306948:	1a000006 	bne	60306968 <__swsetup_r+0xcc>
6030694c:	e1d430bc 	ldrh	r3, [r4, #12]
60306950:	e2033d0a 	and	r3, r3, #640	; 0x280
60306954:	e3530c02 	cmp	r3, #512	; 0x200
60306958:	0a000002 	beq	60306968 <__swsetup_r+0xcc>
6030695c:	e1a01004 	mov	r1, r4
60306960:	e1a00005 	mov	r0, r5
60306964:	eb0001dd 	bl	603070e0 <__smakebuf_r>
60306968:	e1d400bc 	ldrh	r0, [r4, #12]
6030696c:	e1d420fc 	ldrsh	r2, [r4, #12]
60306970:	e2103001 	ands	r3, r0, #1
60306974:	0a00000d 	beq	603069b0 <__swsetup_r+0x114>
60306978:	e3a03000 	mov	r3, #0
6030697c:	e5843008 	str	r3, [r4, #8]
60306980:	e5943014 	ldr	r3, [r4, #20]
60306984:	e2633000 	rsb	r3, r3, #0
60306988:	e5843018 	str	r3, [r4, #24]
6030698c:	e5943010 	ldr	r3, [r4, #16]
60306990:	e3530000 	cmp	r3, #0
60306994:	1a000009 	bne	603069c0 <__swsetup_r+0x124>
60306998:	e2100080 	ands	r0, r0, #128	; 0x80
6030699c:	08bd8070 	popeq	{r4, r5, r6, pc}
603069a0:	e3823040 	orr	r3, r2, #64	; 0x40
603069a4:	e3e00000 	mvn	r0, #0
603069a8:	e1c430bc 	strh	r3, [r4, #12]
603069ac:	e8bd8070 	pop	{r4, r5, r6, pc}
603069b0:	e3100002 	tst	r0, #2
603069b4:	05943014 	ldreq	r3, [r4, #20]
603069b8:	e5843008 	str	r3, [r4, #8]
603069bc:	eafffff2 	b	6030698c <__swsetup_r+0xf0>
603069c0:	e3a00000 	mov	r0, #0
603069c4:	e8bd8070 	pop	{r4, r5, r6, pc}
603069c8:	60316000 	.word	0x60316000

603069cc <abort>:
603069cc:	e3a00006 	mov	r0, #6
603069d0:	e92d4010 	push	{r4, lr}
603069d4:	eb00027c 	bl	603073cc <raise>
603069d8:	e3a00001 	mov	r0, #1
603069dc:	eb0003a1 	bl	60307868 <_exit>

603069e0 <__fputwc>:
603069e0:	e92d43f7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
603069e4:	e1a08000 	mov	r8, r0
603069e8:	e1a06001 	mov	r6, r1
603069ec:	e1a05002 	mov	r5, r2
603069f0:	eb00018f 	bl	60307034 <__locale_mb_cur_max>
603069f4:	e3500001 	cmp	r0, #1
603069f8:	1a000004 	bne	60306a10 <__fputwc+0x30>
603069fc:	e2463001 	sub	r3, r6, #1
60306a00:	e35300fe 	cmp	r3, #254	; 0xfe
60306a04:	95cd6004 	strbls	r6, [sp, #4]
60306a08:	91a04000 	movls	r4, r0
60306a0c:	9a00000e 	bls	60306a4c <__fputwc+0x6c>
60306a10:	e285305c 	add	r3, r5, #92	; 0x5c
60306a14:	e1a02006 	mov	r2, r6
60306a18:	e28d1004 	add	r1, sp, #4
60306a1c:	e1a00008 	mov	r0, r8
60306a20:	eb0002d9 	bl	6030758c <_wcrtomb_r>
60306a24:	e1a04000 	mov	r4, r0
60306a28:	e3700001 	cmn	r0, #1
60306a2c:	1a000006 	bne	60306a4c <__fputwc+0x6c>
60306a30:	e1d530bc 	ldrh	r3, [r5, #12]
60306a34:	e1a06000 	mov	r6, r0
60306a38:	e3833040 	orr	r3, r3, #64	; 0x40
60306a3c:	e1c530bc 	strh	r3, [r5, #12]
60306a40:	e1a00006 	mov	r0, r6
60306a44:	e28dd00c 	add	sp, sp, #12
60306a48:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
60306a4c:	e3a07000 	mov	r7, #0
60306a50:	e28d9004 	add	r9, sp, #4
60306a54:	e1570004 	cmp	r7, r4
60306a58:	0afffff8 	beq	60306a40 <__fputwc+0x60>
60306a5c:	e5953008 	ldr	r3, [r5, #8]
60306a60:	e7d71009 	ldrb	r1, [r7, r9]
60306a64:	e2433001 	sub	r3, r3, #1
60306a68:	e5853008 	str	r3, [r5, #8]
60306a6c:	e3530000 	cmp	r3, #0
60306a70:	aa000007 	bge	60306a94 <__fputwc+0xb4>
60306a74:	e5952018 	ldr	r2, [r5, #24]
60306a78:	e1530002 	cmp	r3, r2
60306a7c:	b3a03000 	movlt	r3, #0
60306a80:	a3a03001 	movge	r3, #1
60306a84:	e351000a 	cmp	r1, #10
60306a88:	03a03000 	moveq	r3, #0
60306a8c:	e3530000 	cmp	r3, #0
60306a90:	0a000005 	beq	60306aac <__fputwc+0xcc>
60306a94:	e5953000 	ldr	r3, [r5]
60306a98:	e2832001 	add	r2, r3, #1
60306a9c:	e5852000 	str	r2, [r5]
60306aa0:	e5c31000 	strb	r1, [r3]
60306aa4:	e2877001 	add	r7, r7, #1
60306aa8:	eaffffe9 	b	60306a54 <__fputwc+0x74>
60306aac:	e1a02005 	mov	r2, r5
60306ab0:	e1a00008 	mov	r0, r8
60306ab4:	eb000268 	bl	6030745c <__swbuf_r>
60306ab8:	e3700001 	cmn	r0, #1
60306abc:	1afffff8 	bne	60306aa4 <__fputwc+0xc4>
60306ac0:	e1a06000 	mov	r6, r0
60306ac4:	eaffffdd 	b	60306a40 <__fputwc+0x60>

60306ac8 <_fputwc_r>:
60306ac8:	e5923064 	ldr	r3, [r2, #100]	; 0x64
60306acc:	e92d4070 	push	{r4, r5, r6, lr}
60306ad0:	e1a05000 	mov	r5, r0
60306ad4:	e1a06001 	mov	r6, r1
60306ad8:	e1a04002 	mov	r4, r2
60306adc:	e3130001 	tst	r3, #1
60306ae0:	1a000004 	bne	60306af8 <_fputwc_r+0x30>
60306ae4:	e1d230bc 	ldrh	r3, [r2, #12]
60306ae8:	e3130c02 	tst	r3, #512	; 0x200
60306aec:	1a000001 	bne	60306af8 <_fputwc_r+0x30>
60306af0:	e5920058 	ldr	r0, [r2, #88]	; 0x58
60306af4:	ebffe9c7 	bl	60301218 <__retarget_lock_acquire_recursive>
60306af8:	e1d430fc 	ldrsh	r3, [r4, #12]
60306afc:	e3130a02 	tst	r3, #8192	; 0x2000
60306b00:	1a000004 	bne	60306b18 <_fputwc_r+0x50>
60306b04:	e3833a02 	orr	r3, r3, #8192	; 0x2000
60306b08:	e1c430bc 	strh	r3, [r4, #12]
60306b0c:	e5943064 	ldr	r3, [r4, #100]	; 0x64
60306b10:	e3833a02 	orr	r3, r3, #8192	; 0x2000
60306b14:	e5843064 	str	r3, [r4, #100]	; 0x64
60306b18:	e1a00005 	mov	r0, r5
60306b1c:	e1a02004 	mov	r2, r4
60306b20:	e1a01006 	mov	r1, r6
60306b24:	ebffffad 	bl	603069e0 <__fputwc>
60306b28:	e5943064 	ldr	r3, [r4, #100]	; 0x64
60306b2c:	e1a05000 	mov	r5, r0
60306b30:	e3130001 	tst	r3, #1
60306b34:	1a000004 	bne	60306b4c <_fputwc_r+0x84>
60306b38:	e1d430bc 	ldrh	r3, [r4, #12]
60306b3c:	e3130c02 	tst	r3, #512	; 0x200
60306b40:	1a000001 	bne	60306b4c <_fputwc_r+0x84>
60306b44:	e5940058 	ldr	r0, [r4, #88]	; 0x58
60306b48:	ebffe9b8 	bl	60301230 <__retarget_lock_release_recursive>
60306b4c:	e1a00005 	mov	r0, r5
60306b50:	e8bd8070 	pop	{r4, r5, r6, pc}

60306b54 <fputwc>:
60306b54:	e59f303c 	ldr	r3, [pc, #60]	; 60306b98 <fputwc+0x44>
60306b58:	e92d4070 	push	{r4, r5, r6, lr}
60306b5c:	e1a05000 	mov	r5, r0
60306b60:	e1a06001 	mov	r6, r1
60306b64:	e5934000 	ldr	r4, [r3]
60306b68:	e3540000 	cmp	r4, #0
60306b6c:	0a000004 	beq	60306b84 <fputwc+0x30>
60306b70:	e5943018 	ldr	r3, [r4, #24]
60306b74:	e3530000 	cmp	r3, #0
60306b78:	1a000001 	bne	60306b84 <fputwc+0x30>
60306b7c:	e1a00004 	mov	r0, r4
60306b80:	ebffe8d6 	bl	60300ee0 <__sinit>
60306b84:	e1a02006 	mov	r2, r6
60306b88:	e1a01005 	mov	r1, r5
60306b8c:	e1a00004 	mov	r0, r4
60306b90:	e8bd4070 	pop	{r4, r5, r6, lr}
60306b94:	eaffffcb 	b	60306ac8 <_fputwc_r>
60306b98:	60316000 	.word	0x60316000

60306b9c <__sfvwrite_r>:
60306b9c:	e5923008 	ldr	r3, [r2, #8]
60306ba0:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
60306ba4:	e3530000 	cmp	r3, #0
60306ba8:	1a000002 	bne	60306bb8 <__sfvwrite_r+0x1c>
60306bac:	e3a00000 	mov	r0, #0
60306bb0:	e28dd00c 	add	sp, sp, #12
60306bb4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
60306bb8:	e1d130bc 	ldrh	r3, [r1, #12]
60306bbc:	e1a07000 	mov	r7, r0
60306bc0:	e1a04001 	mov	r4, r1
60306bc4:	e1a09002 	mov	r9, r2
60306bc8:	e3130008 	tst	r3, #8
60306bcc:	0a00000d 	beq	60306c08 <__sfvwrite_r+0x6c>
60306bd0:	e5913010 	ldr	r3, [r1, #16]
60306bd4:	e3530000 	cmp	r3, #0
60306bd8:	0a00000a 	beq	60306c08 <__sfvwrite_r+0x6c>
60306bdc:	e1d4a0bc 	ldrh	sl, [r4, #12]
60306be0:	e5998000 	ldr	r8, [r9]
60306be4:	e21a5002 	ands	r5, sl, #2
60306be8:	1a000024 	bne	60306c80 <__sfvwrite_r+0xe4>
60306bec:	e21aa001 	ands	sl, sl, #1
60306bf0:	11a00005 	movne	r0, r5
60306bf4:	11a0b005 	movne	fp, r5
60306bf8:	11a0a005 	movne	sl, r5
60306bfc:	1a0000a6 	bne	60306e9c <__sfvwrite_r+0x300>
60306c00:	e1a0600a 	mov	r6, sl
60306c04:	ea000024 	b	60306c9c <__sfvwrite_r+0x100>
60306c08:	e1a01004 	mov	r1, r4
60306c0c:	e1a00007 	mov	r0, r7
60306c10:	ebffff21 	bl	6030689c <__swsetup_r>
60306c14:	e3500000 	cmp	r0, #0
60306c18:	0affffef 	beq	60306bdc <__sfvwrite_r+0x40>
60306c1c:	e3e00000 	mvn	r0, #0
60306c20:	eaffffe2 	b	60306bb0 <__sfvwrite_r+0x14>
60306c24:	e598a000 	ldr	sl, [r8]
60306c28:	e2888008 	add	r8, r8, #8
60306c2c:	e5185004 	ldr	r5, [r8, #-4]
60306c30:	e3550000 	cmp	r5, #0
60306c34:	0afffffa 	beq	60306c24 <__sfvwrite_r+0x88>
60306c38:	e1550006 	cmp	r5, r6
60306c3c:	e594b028 	ldr	fp, [r4, #40]	; 0x28
60306c40:	31a03005 	movcc	r3, r5
60306c44:	21a03006 	movcs	r3, r6
60306c48:	e5941020 	ldr	r1, [r4, #32]
60306c4c:	e1a0200a 	mov	r2, sl
60306c50:	e1a00007 	mov	r0, r7
60306c54:	e12fff3b 	blx	fp
60306c58:	e3500000 	cmp	r0, #0
60306c5c:	da00002c 	ble	60306d14 <__sfvwrite_r+0x178>
60306c60:	e5993008 	ldr	r3, [r9, #8]
60306c64:	e08aa000 	add	sl, sl, r0
60306c68:	e0455000 	sub	r5, r5, r0
60306c6c:	e0430000 	sub	r0, r3, r0
60306c70:	e5890008 	str	r0, [r9, #8]
60306c74:	e3500000 	cmp	r0, #0
60306c78:	1affffec 	bne	60306c30 <__sfvwrite_r+0x94>
60306c7c:	eaffffca 	b	60306bac <__sfvwrite_r+0x10>
60306c80:	e3a0a000 	mov	sl, #0
60306c84:	e59f6340 	ldr	r6, [pc, #832]	; 60306fcc <__sfvwrite_r+0x430>
60306c88:	e1a0500a 	mov	r5, sl
60306c8c:	eaffffe7 	b	60306c30 <__sfvwrite_r+0x94>
60306c90:	e598a000 	ldr	sl, [r8]
60306c94:	e2888008 	add	r8, r8, #8
60306c98:	e5186004 	ldr	r6, [r8, #-4]
60306c9c:	e3560000 	cmp	r6, #0
60306ca0:	0afffffa 	beq	60306c90 <__sfvwrite_r+0xf4>
60306ca4:	e1d430bc 	ldrh	r3, [r4, #12]
60306ca8:	e5940000 	ldr	r0, [r4]
60306cac:	e5942008 	ldr	r2, [r4, #8]
60306cb0:	e3130c02 	tst	r3, #512	; 0x200
60306cb4:	0a00004c 	beq	60306dec <__sfvwrite_r+0x250>
60306cb8:	e1520006 	cmp	r2, r6
60306cbc:	8a000028 	bhi	60306d64 <__sfvwrite_r+0x1c8>
60306cc0:	e3130d12 	tst	r3, #1152	; 0x480
60306cc4:	0a000026 	beq	60306d64 <__sfvwrite_r+0x1c8>
60306cc8:	e5945014 	ldr	r5, [r4, #20]
60306ccc:	e5941010 	ldr	r1, [r4, #16]
60306cd0:	e0855085 	add	r5, r5, r5, lsl #1
60306cd4:	e040b001 	sub	fp, r0, r1
60306cd8:	e28b2001 	add	r2, fp, #1
60306cdc:	e0855fa5 	add	r5, r5, r5, lsr #31
60306ce0:	e0822006 	add	r2, r2, r6
60306ce4:	e1a050c5 	asr	r5, r5, #1
60306ce8:	e1550002 	cmp	r5, r2
60306cec:	31a05002 	movcc	r5, r2
60306cf0:	e3130b01 	tst	r3, #1024	; 0x400
60306cf4:	0a000030 	beq	60306dbc <__sfvwrite_r+0x220>
60306cf8:	e1a01005 	mov	r1, r5
60306cfc:	e1a00007 	mov	r0, r7
60306d00:	eb001b67 	bl	6030daa4 <__wrap__malloc_r>
60306d04:	e2503000 	subs	r3, r0, #0
60306d08:	1a000005 	bne	60306d24 <__sfvwrite_r+0x188>
60306d0c:	e3a0300c 	mov	r3, #12
60306d10:	e5873000 	str	r3, [r7]
60306d14:	e1d430bc 	ldrh	r3, [r4, #12]
60306d18:	e3833040 	orr	r3, r3, #64	; 0x40
60306d1c:	e1c430bc 	strh	r3, [r4, #12]
60306d20:	eaffffbd 	b	60306c1c <__sfvwrite_r+0x80>
60306d24:	e1a0200b 	mov	r2, fp
60306d28:	e5941010 	ldr	r1, [r4, #16]
60306d2c:	e58d3004 	str	r3, [sp, #4]
60306d30:	eb0019a3 	bl	6030d3c4 <__wrap_memcpy>
60306d34:	e1d420bc 	ldrh	r2, [r4, #12]
60306d38:	e59d3004 	ldr	r3, [sp, #4]
60306d3c:	e3c22d12 	bic	r2, r2, #1152	; 0x480
60306d40:	e3822080 	orr	r2, r2, #128	; 0x80
60306d44:	e1c420bc 	strh	r2, [r4, #12]
60306d48:	e1a02006 	mov	r2, r6
60306d4c:	e5843010 	str	r3, [r4, #16]
60306d50:	e5845014 	str	r5, [r4, #20]
60306d54:	e083300b 	add	r3, r3, fp
60306d58:	e045500b 	sub	r5, r5, fp
60306d5c:	e5843000 	str	r3, [r4]
60306d60:	e5845008 	str	r5, [r4, #8]
60306d64:	e1520006 	cmp	r2, r6
60306d68:	e5940000 	ldr	r0, [r4]
60306d6c:	21a02006 	movcs	r2, r6
60306d70:	e1a0100a 	mov	r1, sl
60306d74:	e58d2004 	str	r2, [sp, #4]
60306d78:	eb001997 	bl	6030d3dc <__wrap_memmove>
60306d7c:	e5943008 	ldr	r3, [r4, #8]
60306d80:	e1a05006 	mov	r5, r6
60306d84:	e59d2004 	ldr	r2, [sp, #4]
60306d88:	e0433002 	sub	r3, r3, r2
60306d8c:	e5843008 	str	r3, [r4, #8]
60306d90:	e5943000 	ldr	r3, [r4]
60306d94:	e0832002 	add	r2, r3, r2
60306d98:	e5842000 	str	r2, [r4]
60306d9c:	e5990008 	ldr	r0, [r9, #8]
60306da0:	e08aa005 	add	sl, sl, r5
60306da4:	e0466005 	sub	r6, r6, r5
60306da8:	e0405005 	sub	r5, r0, r5
60306dac:	e5895008 	str	r5, [r9, #8]
60306db0:	e3550000 	cmp	r5, #0
60306db4:	1affffb8 	bne	60306c9c <__sfvwrite_r+0x100>
60306db8:	eaffff7b 	b	60306bac <__sfvwrite_r+0x10>
60306dbc:	e1a02005 	mov	r2, r5
60306dc0:	e1a00007 	mov	r0, r7
60306dc4:	eb001b38 	bl	6030daac <__wrap__realloc_r>
60306dc8:	e2503000 	subs	r3, r0, #0
60306dcc:	1affffdd 	bne	60306d48 <__sfvwrite_r+0x1ac>
60306dd0:	e5941010 	ldr	r1, [r4, #16]
60306dd4:	e1a00007 	mov	r0, r7
60306dd8:	eb001b36 	bl	6030dab8 <__wrap__free_r>
60306ddc:	e1d430bc 	ldrh	r3, [r4, #12]
60306de0:	e3c33080 	bic	r3, r3, #128	; 0x80
60306de4:	e1c430bc 	strh	r3, [r4, #12]
60306de8:	eaffffc7 	b	60306d0c <__sfvwrite_r+0x170>
60306dec:	e5943010 	ldr	r3, [r4, #16]
60306df0:	e1530000 	cmp	r3, r0
60306df4:	3a000002 	bcc	60306e04 <__sfvwrite_r+0x268>
60306df8:	e5945014 	ldr	r5, [r4, #20]
60306dfc:	e1550006 	cmp	r5, r6
60306e00:	9a000013 	bls	60306e54 <__sfvwrite_r+0x2b8>
60306e04:	e1520006 	cmp	r2, r6
60306e08:	e1a0100a 	mov	r1, sl
60306e0c:	31a05002 	movcc	r5, r2
60306e10:	21a05006 	movcs	r5, r6
60306e14:	e1a02005 	mov	r2, r5
60306e18:	eb00196f 	bl	6030d3dc <__wrap_memmove>
60306e1c:	e5943008 	ldr	r3, [r4, #8]
60306e20:	e5942000 	ldr	r2, [r4]
60306e24:	e0433005 	sub	r3, r3, r5
60306e28:	e5843008 	str	r3, [r4, #8]
60306e2c:	e0822005 	add	r2, r2, r5
60306e30:	e3530000 	cmp	r3, #0
60306e34:	e5842000 	str	r2, [r4]
60306e38:	1affffd7 	bne	60306d9c <__sfvwrite_r+0x200>
60306e3c:	e1a01004 	mov	r1, r4
60306e40:	e1a00007 	mov	r0, r7
60306e44:	ebffe77d 	bl	60300c40 <_fflush_r>
60306e48:	e3500000 	cmp	r0, #0
60306e4c:	0affffd2 	beq	60306d9c <__sfvwrite_r+0x200>
60306e50:	eaffffaf 	b	60306d14 <__sfvwrite_r+0x178>
60306e54:	e376010a 	cmn	r6, #-2147483646	; 0x80000002
60306e58:	e1a01005 	mov	r1, r5
60306e5c:	91a00006 	movls	r0, r6
60306e60:	83e00102 	mvnhi	r0, #-2147483648	; 0x80000000
60306e64:	eb000240 	bl	6030776c <__divsi3>
60306e68:	e594b028 	ldr	fp, [r4, #40]	; 0x28
60306e6c:	e0030095 	mul	r3, r5, r0
60306e70:	e5941020 	ldr	r1, [r4, #32]
60306e74:	e1a0200a 	mov	r2, sl
60306e78:	e1a00007 	mov	r0, r7
60306e7c:	e12fff3b 	blx	fp
60306e80:	e2505000 	subs	r5, r0, #0
60306e84:	caffffc4 	bgt	60306d9c <__sfvwrite_r+0x200>
60306e88:	eaffffa1 	b	60306d14 <__sfvwrite_r+0x178>
60306e8c:	e598b000 	ldr	fp, [r8]
60306e90:	e3a00000 	mov	r0, #0
60306e94:	e598a004 	ldr	sl, [r8, #4]
60306e98:	e2888008 	add	r8, r8, #8
60306e9c:	e35a0000 	cmp	sl, #0
60306ea0:	0afffff9 	beq	60306e8c <__sfvwrite_r+0x2f0>
60306ea4:	e3500000 	cmp	r0, #0
60306ea8:	1a000007 	bne	60306ecc <__sfvwrite_r+0x330>
60306eac:	e1a0200a 	mov	r2, sl
60306eb0:	e3a0100a 	mov	r1, #10
60306eb4:	e1a0000b 	mov	r0, fp
60306eb8:	eb001944 	bl	6030d3d0 <__wrap_memchr>
60306ebc:	e2505000 	subs	r5, r0, #0
60306ec0:	12855001 	addne	r5, r5, #1
60306ec4:	028a5001 	addeq	r5, sl, #1
60306ec8:	1045500b 	subne	r5, r5, fp
60306ecc:	e5941010 	ldr	r1, [r4, #16]
60306ed0:	e155000a 	cmp	r5, sl
60306ed4:	e5943014 	ldr	r3, [r4, #20]
60306ed8:	31a02005 	movcc	r2, r5
60306edc:	e5946008 	ldr	r6, [r4, #8]
60306ee0:	21a0200a 	movcs	r2, sl
60306ee4:	e5940000 	ldr	r0, [r4]
60306ee8:	e0836006 	add	r6, r3, r6
60306eec:	e1500001 	cmp	r0, r1
60306ef0:	93a01000 	movls	r1, #0
60306ef4:	83a01001 	movhi	r1, #1
60306ef8:	e1520006 	cmp	r2, r6
60306efc:	d3a01000 	movle	r1, #0
60306f00:	e3510000 	cmp	r1, #0
60306f04:	0a00001a 	beq	60306f74 <__sfvwrite_r+0x3d8>
60306f08:	e1a02006 	mov	r2, r6
60306f0c:	e1a0100b 	mov	r1, fp
60306f10:	eb001931 	bl	6030d3dc <__wrap_memmove>
60306f14:	e5943000 	ldr	r3, [r4]
60306f18:	e1a01004 	mov	r1, r4
60306f1c:	e1a00007 	mov	r0, r7
60306f20:	e0833006 	add	r3, r3, r6
60306f24:	e5843000 	str	r3, [r4]
60306f28:	ebffe744 	bl	60300c40 <_fflush_r>
60306f2c:	e3500000 	cmp	r0, #0
60306f30:	1affff77 	bne	60306d14 <__sfvwrite_r+0x178>
60306f34:	e0555006 	subs	r5, r5, r6
60306f38:	13a00001 	movne	r0, #1
60306f3c:	1a000004 	bne	60306f54 <__sfvwrite_r+0x3b8>
60306f40:	e1a01004 	mov	r1, r4
60306f44:	e1a00007 	mov	r0, r7
60306f48:	ebffe73c 	bl	60300c40 <_fflush_r>
60306f4c:	e3500000 	cmp	r0, #0
60306f50:	1affff6f 	bne	60306d14 <__sfvwrite_r+0x178>
60306f54:	e5992008 	ldr	r2, [r9, #8]
60306f58:	e08bb006 	add	fp, fp, r6
60306f5c:	e04aa006 	sub	sl, sl, r6
60306f60:	e0426006 	sub	r6, r2, r6
60306f64:	e5896008 	str	r6, [r9, #8]
60306f68:	e3560000 	cmp	r6, #0
60306f6c:	1affffca 	bne	60306e9c <__sfvwrite_r+0x300>
60306f70:	eaffff0d 	b	60306bac <__sfvwrite_r+0x10>
60306f74:	e1530002 	cmp	r3, r2
60306f78:	ca000007 	bgt	60306f9c <__sfvwrite_r+0x400>
60306f7c:	e5946028 	ldr	r6, [r4, #40]	; 0x28
60306f80:	e1a0200b 	mov	r2, fp
60306f84:	e5941020 	ldr	r1, [r4, #32]
60306f88:	e1a00007 	mov	r0, r7
60306f8c:	e12fff36 	blx	r6
60306f90:	e2506000 	subs	r6, r0, #0
60306f94:	caffffe6 	bgt	60306f34 <__sfvwrite_r+0x398>
60306f98:	eaffff5d 	b	60306d14 <__sfvwrite_r+0x178>
60306f9c:	e1a0100b 	mov	r1, fp
60306fa0:	e58d2004 	str	r2, [sp, #4]
60306fa4:	eb00190c 	bl	6030d3dc <__wrap_memmove>
60306fa8:	e59d2004 	ldr	r2, [sp, #4]
60306fac:	e5943008 	ldr	r3, [r4, #8]
60306fb0:	e1a06002 	mov	r6, r2
60306fb4:	e0433002 	sub	r3, r3, r2
60306fb8:	e5843008 	str	r3, [r4, #8]
60306fbc:	e5943000 	ldr	r3, [r4]
60306fc0:	e0833002 	add	r3, r3, r2
60306fc4:	e5843000 	str	r3, [r4]
60306fc8:	eaffffd9 	b	60306f34 <__sfvwrite_r+0x398>
60306fcc:	7ffffc00 	.word	0x7ffffc00

60306fd0 <_setlocale_r>:
60306fd0:	e92d4010 	push	{r4, lr}
60306fd4:	e2524000 	subs	r4, r2, #0
60306fd8:	1a000001 	bne	60306fe4 <_setlocale_r+0x14>
60306fdc:	e59f0044 	ldr	r0, [pc, #68]	; 60307028 <_setlocale_r+0x58>
60306fe0:	e8bd8010 	pop	{r4, pc}
60306fe4:	e59f1040 	ldr	r1, [pc, #64]	; 6030702c <_setlocale_r+0x5c>
60306fe8:	e1a00004 	mov	r0, r4
60306fec:	eb001900 	bl	6030d3f4 <__wrap_strcmp>
60306ff0:	e3500000 	cmp	r0, #0
60306ff4:	0afffff8 	beq	60306fdc <_setlocale_r+0xc>
60306ff8:	e59f1028 	ldr	r1, [pc, #40]	; 60307028 <_setlocale_r+0x58>
60306ffc:	e1a00004 	mov	r0, r4
60307000:	eb0018fb 	bl	6030d3f4 <__wrap_strcmp>
60307004:	e3500000 	cmp	r0, #0
60307008:	0afffff3 	beq	60306fdc <_setlocale_r+0xc>
6030700c:	e59f101c 	ldr	r1, [pc, #28]	; 60307030 <_setlocale_r+0x60>
60307010:	e1a00004 	mov	r0, r4
60307014:	eb0018f6 	bl	6030d3f4 <__wrap_strcmp>
60307018:	e3500000 	cmp	r0, #0
6030701c:	0affffee 	beq	60306fdc <_setlocale_r+0xc>
60307020:	e3a00000 	mov	r0, #0
60307024:	e8bd8010 	pop	{r4, pc}
60307028:	60315c48 	.word	0x60315c48
6030702c:	60315c4a 	.word	0x60315c4a
60307030:	60315b4f 	.word	0x60315b4f

60307034 <__locale_mb_cur_max>:
60307034:	e59f3004 	ldr	r3, [pc, #4]	; 60307040 <__locale_mb_cur_max+0xc>
60307038:	e5d30128 	ldrb	r0, [r3, #296]	; 0x128
6030703c:	e12fff1e 	bx	lr
60307040:	603160f4 	.word	0x603160f4

60307044 <setlocale>:
60307044:	e59f300c 	ldr	r3, [pc, #12]	; 60307058 <setlocale+0x14>
60307048:	e1a02001 	mov	r2, r1
6030704c:	e1a01000 	mov	r1, r0
60307050:	e5930000 	ldr	r0, [r3]
60307054:	eaffffdd 	b	60306fd0 <_setlocale_r>
60307058:	60316000 	.word	0x60316000

6030705c <__swhatbuf_r>:
6030705c:	e92d4070 	push	{r4, r5, r6, lr}
60307060:	e1a06001 	mov	r6, r1
60307064:	e1d110fe 	ldrsh	r1, [r1, #14]
60307068:	e24dd058 	sub	sp, sp, #88	; 0x58
6030706c:	e1a04002 	mov	r4, r2
60307070:	e1a05003 	mov	r5, r3
60307074:	e3510000 	cmp	r1, #0
60307078:	aa00000a 	bge	603070a8 <__swhatbuf_r+0x4c>
6030707c:	e1d610fc 	ldrsh	r1, [r6, #12]
60307080:	e3a03000 	mov	r3, #0
60307084:	e5853000 	str	r3, [r5]
60307088:	e2110080 	ands	r0, r1, #128	; 0x80
6030708c:	13a02040 	movne	r2, #64	; 0x40
60307090:	11a00003 	movne	r0, r3
60307094:	15842000 	strne	r2, [r4]
60307098:	03a03b01 	moveq	r3, #1024	; 0x400
6030709c:	05843000 	streq	r3, [r4]
603070a0:	e28dd058 	add	sp, sp, #88	; 0x58
603070a4:	e8bd8070 	pop	{r4, r5, r6, pc}
603070a8:	e1a0200d 	mov	r2, sp
603070ac:	eb00015f 	bl	60307630 <_fstat_r>
603070b0:	e3500000 	cmp	r0, #0
603070b4:	bafffff0 	blt	6030707c <__swhatbuf_r+0x20>
603070b8:	e59d2004 	ldr	r2, [sp, #4]
603070bc:	e3a03b01 	mov	r3, #1024	; 0x400
603070c0:	e3a00b02 	mov	r0, #2048	; 0x800
603070c4:	e2022a0f 	and	r2, r2, #61440	; 0xf000
603070c8:	e2422a02 	sub	r2, r2, #8192	; 0x2000
603070cc:	e16f2f12 	clz	r2, r2
603070d0:	e1a022a2 	lsr	r2, r2, #5
603070d4:	e5852000 	str	r2, [r5]
603070d8:	e5843000 	str	r3, [r4]
603070dc:	eaffffef 	b	603070a0 <__swhatbuf_r+0x44>

603070e0 <__smakebuf_r>:
603070e0:	e1d130bc 	ldrh	r3, [r1, #12]
603070e4:	e92d4073 	push	{r0, r1, r4, r5, r6, lr}
603070e8:	e1a04001 	mov	r4, r1
603070ec:	e3130002 	tst	r3, #2
603070f0:	0a000006 	beq	60307110 <__smakebuf_r+0x30>
603070f4:	e2843047 	add	r3, r4, #71	; 0x47
603070f8:	e5843000 	str	r3, [r4]
603070fc:	e5843010 	str	r3, [r4, #16]
60307100:	e3a03001 	mov	r3, #1
60307104:	e5843014 	str	r3, [r4, #20]
60307108:	e28dd008 	add	sp, sp, #8
6030710c:	e8bd8070 	pop	{r4, r5, r6, pc}
60307110:	e28d3004 	add	r3, sp, #4
60307114:	e1a05000 	mov	r5, r0
60307118:	e1a0200d 	mov	r2, sp
6030711c:	ebffffce 	bl	6030705c <__swhatbuf_r>
60307120:	e59d1000 	ldr	r1, [sp]
60307124:	e1a06000 	mov	r6, r0
60307128:	e1a00005 	mov	r0, r5
6030712c:	eb001a5c 	bl	6030daa4 <__wrap__malloc_r>
60307130:	e2503000 	subs	r3, r0, #0
60307134:	1a000006 	bne	60307154 <__smakebuf_r+0x74>
60307138:	e1d430fc 	ldrsh	r3, [r4, #12]
6030713c:	e3130c02 	tst	r3, #512	; 0x200
60307140:	1afffff0 	bne	60307108 <__smakebuf_r+0x28>
60307144:	e3c33003 	bic	r3, r3, #3
60307148:	e3833002 	orr	r3, r3, #2
6030714c:	e1c430bc 	strh	r3, [r4, #12]
60307150:	eaffffe7 	b	603070f4 <__smakebuf_r+0x14>
60307154:	e59f2058 	ldr	r2, [pc, #88]	; 603071b4 <__smakebuf_r+0xd4>
60307158:	e5852028 	str	r2, [r5, #40]	; 0x28
6030715c:	e5843000 	str	r3, [r4]
60307160:	e5843010 	str	r3, [r4, #16]
60307164:	e59d3000 	ldr	r3, [sp]
60307168:	e1d420bc 	ldrh	r2, [r4, #12]
6030716c:	e5843014 	str	r3, [r4, #20]
60307170:	e59d3004 	ldr	r3, [sp, #4]
60307174:	e3822080 	orr	r2, r2, #128	; 0x80
60307178:	e1c420bc 	strh	r2, [r4, #12]
6030717c:	e3530000 	cmp	r3, #0
60307180:	0a000007 	beq	603071a4 <__smakebuf_r+0xc4>
60307184:	e1d410fe 	ldrsh	r1, [r4, #14]
60307188:	e1a00005 	mov	r0, r5
6030718c:	eb000136 	bl	6030766c <_isatty_r>
60307190:	e3500000 	cmp	r0, #0
60307194:	11d430bc 	ldrhne	r3, [r4, #12]
60307198:	13c33003 	bicne	r3, r3, #3
6030719c:	13833001 	orrne	r3, r3, #1
603071a0:	11c430bc 	strhne	r3, [r4, #12]
603071a4:	e1d400bc 	ldrh	r0, [r4, #12]
603071a8:	e1800006 	orr	r0, r0, r6
603071ac:	e1c400bc 	strh	r0, [r4, #12]
603071b0:	eaffffd4 	b	60307108 <__smakebuf_r+0x28>
603071b4:	60300d88 	.word	0x60300d88

603071b8 <_mbtowc_r>:
603071b8:	e59fc010 	ldr	ip, [pc, #16]	; 603071d0 <_mbtowc_r+0x18>
603071bc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
603071c0:	e59ce0e4 	ldr	lr, [ip, #228]	; 0xe4
603071c4:	e1a0c00e 	mov	ip, lr
603071c8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
603071cc:	e12fff1c 	bx	ip
603071d0:	603160f4 	.word	0x603160f4

603071d4 <__ascii_mbtowc>:
603071d4:	e3510000 	cmp	r1, #0
603071d8:	e24dd008 	sub	sp, sp, #8
603071dc:	028d1004 	addeq	r1, sp, #4
603071e0:	e3520000 	cmp	r2, #0
603071e4:	01a00002 	moveq	r0, r2
603071e8:	0a000007 	beq	6030720c <__ascii_mbtowc+0x38>
603071ec:	e3530000 	cmp	r3, #0
603071f0:	03e00001 	mvneq	r0, #1
603071f4:	0a000004 	beq	6030720c <__ascii_mbtowc+0x38>
603071f8:	e5d23000 	ldrb	r3, [r2]
603071fc:	e5813000 	str	r3, [r1]
60307200:	e5d22000 	ldrb	r2, [r2]
60307204:	e2520000 	subs	r0, r2, #0
60307208:	13a00001 	movne	r0, #1
6030720c:	e28dd008 	add	sp, sp, #8
60307210:	e12fff1e 	bx	lr

60307214 <_init_signal_r>:
60307214:	e92d4070 	push	{r4, r5, r6, lr}
60307218:	e5905044 	ldr	r5, [r0, #68]	; 0x44
6030721c:	e3550000 	cmp	r5, #0
60307220:	1a00000a 	bne	60307250 <_init_signal_r+0x3c>
60307224:	e1a04000 	mov	r4, r0
60307228:	e3a01080 	mov	r1, #128	; 0x80
6030722c:	eb001a1c 	bl	6030daa4 <__wrap__malloc_r>
60307230:	e3500000 	cmp	r0, #0
60307234:	e5840044 	str	r0, [r4, #68]	; 0x44
60307238:	0a000006 	beq	60307258 <_init_signal_r+0x44>
6030723c:	e2403004 	sub	r3, r0, #4
60307240:	e280007c 	add	r0, r0, #124	; 0x7c
60307244:	e5a35004 	str	r5, [r3, #4]!
60307248:	e1530000 	cmp	r3, r0
6030724c:	1afffffc 	bne	60307244 <_init_signal_r+0x30>
60307250:	e3a00000 	mov	r0, #0
60307254:	e8bd8070 	pop	{r4, r5, r6, pc}
60307258:	e3e00000 	mvn	r0, #0
6030725c:	e8bd8070 	pop	{r4, r5, r6, pc}

60307260 <_signal_r>:
60307260:	e351001f 	cmp	r1, #31
60307264:	e92d4070 	push	{r4, r5, r6, lr}
60307268:	83a03016 	movhi	r3, #22
6030726c:	e1a04000 	mov	r4, r0
60307270:	85803000 	strhi	r3, [r0]
60307274:	8a00000b 	bhi	603072a8 <_signal_r+0x48>
60307278:	e5903044 	ldr	r3, [r0, #68]	; 0x44
6030727c:	e1a05001 	mov	r5, r1
60307280:	e1a06002 	mov	r6, r2
60307284:	e3530000 	cmp	r3, #0
60307288:	0a000003 	beq	6030729c <_signal_r+0x3c>
6030728c:	e5943044 	ldr	r3, [r4, #68]	; 0x44
60307290:	e7930105 	ldr	r0, [r3, r5, lsl #2]
60307294:	e7836105 	str	r6, [r3, r5, lsl #2]
60307298:	e8bd8070 	pop	{r4, r5, r6, pc}
6030729c:	ebffffdc 	bl	60307214 <_init_signal_r>
603072a0:	e3500000 	cmp	r0, #0
603072a4:	0afffff8 	beq	6030728c <_signal_r+0x2c>
603072a8:	e3e00000 	mvn	r0, #0
603072ac:	e8bd8070 	pop	{r4, r5, r6, pc}

603072b0 <_raise_r>:
603072b0:	e92d4070 	push	{r4, r5, r6, lr}
603072b4:	e351001f 	cmp	r1, #31
603072b8:	e1a04000 	mov	r4, r0
603072bc:	9a000003 	bls	603072d0 <_raise_r+0x20>
603072c0:	e3a03016 	mov	r3, #22
603072c4:	e5803000 	str	r3, [r0]
603072c8:	e3e00000 	mvn	r0, #0
603072cc:	e8bd8070 	pop	{r4, r5, r6, pc}
603072d0:	e5902044 	ldr	r2, [r0, #68]	; 0x44
603072d4:	e1a05001 	mov	r5, r1
603072d8:	e3520000 	cmp	r2, #0
603072dc:	0a000002 	beq	603072ec <_raise_r+0x3c>
603072e0:	e7923101 	ldr	r3, [r2, r1, lsl #2]
603072e4:	e3530000 	cmp	r3, #0
603072e8:	1a000006 	bne	60307308 <_raise_r+0x58>
603072ec:	e1a00004 	mov	r0, r4
603072f0:	eb000058 	bl	60307458 <_getpid_r>
603072f4:	e1a02005 	mov	r2, r5
603072f8:	e1a01000 	mov	r1, r0
603072fc:	e1a00004 	mov	r0, r4
60307300:	e8bd4070 	pop	{r4, r5, r6, lr}
60307304:	ea000044 	b	6030741c <_kill_r>
60307308:	e3530001 	cmp	r3, #1
6030730c:	0a000009 	beq	60307338 <_raise_r+0x88>
60307310:	e3730001 	cmn	r3, #1
60307314:	1a000003 	bne	60307328 <_raise_r+0x78>
60307318:	e3a03016 	mov	r3, #22
6030731c:	e5803000 	str	r3, [r0]
60307320:	e3a00001 	mov	r0, #1
60307324:	e8bd8070 	pop	{r4, r5, r6, pc}
60307328:	e3a04000 	mov	r4, #0
6030732c:	e1a00001 	mov	r0, r1
60307330:	e7824101 	str	r4, [r2, r1, lsl #2]
60307334:	e12fff33 	blx	r3
60307338:	e3a00000 	mov	r0, #0
6030733c:	e8bd8070 	pop	{r4, r5, r6, pc}

60307340 <__sigtramp_r>:
60307340:	e351001f 	cmp	r1, #31
60307344:	9a000001 	bls	60307350 <__sigtramp_r+0x10>
60307348:	e3e00000 	mvn	r0, #0
6030734c:	e12fff1e 	bx	lr
60307350:	e5903044 	ldr	r3, [r0, #68]	; 0x44
60307354:	e92d4070 	push	{r4, r5, r6, lr}
60307358:	e1a04000 	mov	r4, r0
6030735c:	e1a05001 	mov	r5, r1
60307360:	e3530000 	cmp	r3, #0
60307364:	0a000005 	beq	60307380 <__sigtramp_r+0x40>
60307368:	e5942044 	ldr	r2, [r4, #68]	; 0x44
6030736c:	e7923105 	ldr	r3, [r2, r5, lsl #2]
60307370:	e3530000 	cmp	r3, #0
60307374:	1a000006 	bne	60307394 <__sigtramp_r+0x54>
60307378:	e3a00001 	mov	r0, #1
6030737c:	e8bd8070 	pop	{r4, r5, r6, pc}
60307380:	ebffffa3 	bl	60307214 <_init_signal_r>
60307384:	e3500000 	cmp	r0, #0
60307388:	0afffff6 	beq	60307368 <__sigtramp_r+0x28>
6030738c:	e3e00000 	mvn	r0, #0
60307390:	e8bd8070 	pop	{r4, r5, r6, pc}
60307394:	e3730001 	cmn	r3, #1
60307398:	0a000007 	beq	603073bc <__sigtramp_r+0x7c>
6030739c:	e3530001 	cmp	r3, #1
603073a0:	0a000007 	beq	603073c4 <__sigtramp_r+0x84>
603073a4:	e3a04000 	mov	r4, #0
603073a8:	e1a00005 	mov	r0, r5
603073ac:	e7824105 	str	r4, [r2, r5, lsl #2]
603073b0:	e12fff33 	blx	r3
603073b4:	e1a00004 	mov	r0, r4
603073b8:	e8bd8070 	pop	{r4, r5, r6, pc}
603073bc:	e3a00002 	mov	r0, #2
603073c0:	e8bd8070 	pop	{r4, r5, r6, pc}
603073c4:	e3a00003 	mov	r0, #3
603073c8:	e8bd8070 	pop	{r4, r5, r6, pc}

603073cc <raise>:
603073cc:	e59f3008 	ldr	r3, [pc, #8]	; 603073dc <raise+0x10>
603073d0:	e1a01000 	mov	r1, r0
603073d4:	e5930000 	ldr	r0, [r3]
603073d8:	eaffffb4 	b	603072b0 <_raise_r>
603073dc:	60316000 	.word	0x60316000

603073e0 <signal>:
603073e0:	e59f300c 	ldr	r3, [pc, #12]	; 603073f4 <signal+0x14>
603073e4:	e1a02001 	mov	r2, r1
603073e8:	e1a01000 	mov	r1, r0
603073ec:	e5930000 	ldr	r0, [r3]
603073f0:	eaffff9a 	b	60307260 <_signal_r>
603073f4:	60316000 	.word	0x60316000

603073f8 <_init_signal>:
603073f8:	e59f3004 	ldr	r3, [pc, #4]	; 60307404 <_init_signal+0xc>
603073fc:	e5930000 	ldr	r0, [r3]
60307400:	eaffff83 	b	60307214 <_init_signal_r>
60307404:	60316000 	.word	0x60316000

60307408 <__sigtramp>:
60307408:	e59f3008 	ldr	r3, [pc, #8]	; 60307418 <__sigtramp+0x10>
6030740c:	e1a01000 	mov	r1, r0
60307410:	e5930000 	ldr	r0, [r3]
60307414:	eaffffc9 	b	60307340 <__sigtramp_r>
60307418:	60316000 	.word	0x60316000

6030741c <_kill_r>:
6030741c:	e92d4070 	push	{r4, r5, r6, lr}
60307420:	e1a04000 	mov	r4, r0
60307424:	e59f5028 	ldr	r5, [pc, #40]	; 60307454 <_kill_r+0x38>
60307428:	e1a00001 	mov	r0, r1
6030742c:	e1a01002 	mov	r1, r2
60307430:	e3a03000 	mov	r3, #0
60307434:	e5853000 	str	r3, [r5]
60307438:	eb000c13 	bl	6030a48c <_kill>
6030743c:	e3700001 	cmn	r0, #1
60307440:	18bd8070 	popne	{r4, r5, r6, pc}
60307444:	e5953000 	ldr	r3, [r5]
60307448:	e3530000 	cmp	r3, #0
6030744c:	15843000 	strne	r3, [r4]
60307450:	e8bd8070 	pop	{r4, r5, r6, pc}
60307454:	60323160 	.word	0x60323160

60307458 <_getpid_r>:
60307458:	ea000c09 	b	6030a484 <_getpid>

6030745c <__swbuf_r>:
6030745c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60307460:	e1a06001 	mov	r6, r1
60307464:	e1a04002 	mov	r4, r2
60307468:	e2505000 	subs	r5, r0, #0
6030746c:	0a000003 	beq	60307480 <__swbuf_r+0x24>
60307470:	e5953018 	ldr	r3, [r5, #24]
60307474:	e3530000 	cmp	r3, #0
60307478:	1a000000 	bne	60307480 <__swbuf_r+0x24>
6030747c:	ebffe697 	bl	60300ee0 <__sinit>
60307480:	e5943018 	ldr	r3, [r4, #24]
60307484:	e5843008 	str	r3, [r4, #8]
60307488:	e1d430bc 	ldrh	r3, [r4, #12]
6030748c:	e3130008 	tst	r3, #8
60307490:	0a00002a 	beq	60307540 <__swbuf_r+0xe4>
60307494:	e5943010 	ldr	r3, [r4, #16]
60307498:	e3530000 	cmp	r3, #0
6030749c:	0a000027 	beq	60307540 <__swbuf_r+0xe4>
603074a0:	e1d430fc 	ldrsh	r3, [r4, #12]
603074a4:	e6ef6076 	uxtb	r6, r6
603074a8:	e1a07006 	mov	r7, r6
603074ac:	e3130a02 	tst	r3, #8192	; 0x2000
603074b0:	0a000029 	beq	6030755c <__swbuf_r+0x100>
603074b4:	e5943010 	ldr	r3, [r4, #16]
603074b8:	e5940000 	ldr	r0, [r4]
603074bc:	e0400003 	sub	r0, r0, r3
603074c0:	e5943014 	ldr	r3, [r4, #20]
603074c4:	e1530000 	cmp	r3, r0
603074c8:	ca000004 	bgt	603074e0 <__swbuf_r+0x84>
603074cc:	e1a01004 	mov	r1, r4
603074d0:	e1a00005 	mov	r0, r5
603074d4:	ebffe5d9 	bl	60300c40 <_fflush_r>
603074d8:	e3500000 	cmp	r0, #0
603074dc:	1a00001c 	bne	60307554 <__swbuf_r+0xf8>
603074e0:	e5943008 	ldr	r3, [r4, #8]
603074e4:	e2800001 	add	r0, r0, #1
603074e8:	e2433001 	sub	r3, r3, #1
603074ec:	e5843008 	str	r3, [r4, #8]
603074f0:	e5943000 	ldr	r3, [r4]
603074f4:	e2832001 	add	r2, r3, #1
603074f8:	e5842000 	str	r2, [r4]
603074fc:	e5c36000 	strb	r6, [r3]
60307500:	e5943014 	ldr	r3, [r4, #20]
60307504:	e1530000 	cmp	r3, r0
60307508:	0a000005 	beq	60307524 <__swbuf_r+0xc8>
6030750c:	e1d430bc 	ldrh	r3, [r4, #12]
60307510:	e356000a 	cmp	r6, #10
60307514:	13a03000 	movne	r3, #0
60307518:	02033001 	andeq	r3, r3, #1
6030751c:	e3530000 	cmp	r3, #0
60307520:	0a000004 	beq	60307538 <__swbuf_r+0xdc>
60307524:	e1a01004 	mov	r1, r4
60307528:	e1a00005 	mov	r0, r5
6030752c:	ebffe5c3 	bl	60300c40 <_fflush_r>
60307530:	e3500000 	cmp	r0, #0
60307534:	1a000006 	bne	60307554 <__swbuf_r+0xf8>
60307538:	e1a00007 	mov	r0, r7
6030753c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60307540:	e1a01004 	mov	r1, r4
60307544:	e1a00005 	mov	r0, r5
60307548:	ebfffcd3 	bl	6030689c <__swsetup_r>
6030754c:	e3500000 	cmp	r0, #0
60307550:	0affffd2 	beq	603074a0 <__swbuf_r+0x44>
60307554:	e3e07000 	mvn	r7, #0
60307558:	eafffff6 	b	60307538 <__swbuf_r+0xdc>
6030755c:	e3833a02 	orr	r3, r3, #8192	; 0x2000
60307560:	e1c430bc 	strh	r3, [r4, #12]
60307564:	e5943064 	ldr	r3, [r4, #100]	; 0x64
60307568:	e3c33a02 	bic	r3, r3, #8192	; 0x2000
6030756c:	e5843064 	str	r3, [r4, #100]	; 0x64
60307570:	eaffffcf 	b	603074b4 <__swbuf_r+0x58>

60307574 <__swbuf>:
60307574:	e59f300c 	ldr	r3, [pc, #12]	; 60307588 <__swbuf+0x14>
60307578:	e1a02001 	mov	r2, r1
6030757c:	e1a01000 	mov	r1, r0
60307580:	e5930000 	ldr	r0, [r3]
60307584:	eaffffb4 	b	6030745c <__swbuf_r>
60307588:	60316000 	.word	0x60316000

6030758c <_wcrtomb_r>:
6030758c:	e59fc038 	ldr	ip, [pc, #56]	; 603075cc <_wcrtomb_r+0x40>
60307590:	e92d407f 	push	{r0, r1, r2, r3, r4, r5, r6, lr}
60307594:	e1a05003 	mov	r5, r3
60307598:	e1a04000 	mov	r4, r0
6030759c:	e59c60e0 	ldr	r6, [ip, #224]	; 0xe0
603075a0:	e251c000 	subs	ip, r1, #0
603075a4:	01a0200c 	moveq	r2, ip
603075a8:	028d1004 	addeq	r1, sp, #4
603075ac:	e12fff36 	blx	r6
603075b0:	e3700001 	cmn	r0, #1
603075b4:	03a03000 	moveq	r3, #0
603075b8:	05853000 	streq	r3, [r5]
603075bc:	03a0308a 	moveq	r3, #138	; 0x8a
603075c0:	05843000 	streq	r3, [r4]
603075c4:	e28dd010 	add	sp, sp, #16
603075c8:	e8bd8070 	pop	{r4, r5, r6, pc}
603075cc:	603160f4 	.word	0x603160f4

603075d0 <wcrtomb>:
603075d0:	e1a03002 	mov	r3, r2
603075d4:	e1a02001 	mov	r2, r1
603075d8:	e1a01000 	mov	r1, r0
603075dc:	e59f0004 	ldr	r0, [pc, #4]	; 603075e8 <wcrtomb+0x18>
603075e0:	e5900000 	ldr	r0, [r0]
603075e4:	eaffffe8 	b	6030758c <_wcrtomb_r>
603075e8:	60316000 	.word	0x60316000

603075ec <_wctomb_r>:
603075ec:	e59fc010 	ldr	ip, [pc, #16]	; 60307604 <_wctomb_r+0x18>
603075f0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
603075f4:	e59ce0e0 	ldr	lr, [ip, #224]	; 0xe0
603075f8:	e1a0c00e 	mov	ip, lr
603075fc:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
60307600:	e12fff1c 	bx	ip
60307604:	603160f4 	.word	0x603160f4

60307608 <__ascii_wctomb>:
60307608:	e1a03000 	mov	r3, r0
6030760c:	e2510000 	subs	r0, r1, #0
60307610:	012fff1e 	bxeq	lr
60307614:	e35200ff 	cmp	r2, #255	; 0xff
60307618:	95c02000 	strbls	r2, [r0]
6030761c:	83a0208a 	movhi	r2, #138	; 0x8a
60307620:	85832000 	strhi	r2, [r3]
60307624:	83e00000 	mvnhi	r0, #0
60307628:	93a00001 	movls	r0, #1
6030762c:	e12fff1e 	bx	lr

60307630 <_fstat_r>:
60307630:	e92d4070 	push	{r4, r5, r6, lr}
60307634:	e1a04000 	mov	r4, r0
60307638:	e59f5028 	ldr	r5, [pc, #40]	; 60307668 <_fstat_r+0x38>
6030763c:	e1a00001 	mov	r0, r1
60307640:	e1a01002 	mov	r1, r2
60307644:	e3a03000 	mov	r3, #0
60307648:	e5853000 	str	r3, [r5]
6030764c:	eb000b88 	bl	6030a474 <_fstat>
60307650:	e3700001 	cmn	r0, #1
60307654:	18bd8070 	popne	{r4, r5, r6, pc}
60307658:	e5953000 	ldr	r3, [r5]
6030765c:	e3530000 	cmp	r3, #0
60307660:	15843000 	strne	r3, [r4]
60307664:	e8bd8070 	pop	{r4, r5, r6, pc}
60307668:	60323160 	.word	0x60323160

6030766c <_isatty_r>:
6030766c:	e92d4070 	push	{r4, r5, r6, lr}
60307670:	e1a04000 	mov	r4, r0
60307674:	e59f5024 	ldr	r5, [pc, #36]	; 603076a0 <_isatty_r+0x34>
60307678:	e1a00001 	mov	r0, r1
6030767c:	e3a03000 	mov	r3, #0
60307680:	e5853000 	str	r3, [r5]
60307684:	eb000b72 	bl	6030a454 <_isatty>
60307688:	e3700001 	cmn	r0, #1
6030768c:	18bd8070 	popne	{r4, r5, r6, pc}
60307690:	e5953000 	ldr	r3, [r5]
60307694:	e3530000 	cmp	r3, #0
60307698:	15843000 	strne	r3, [r4]
6030769c:	e8bd8070 	pop	{r4, r5, r6, pc}
603076a0:	60323160 	.word	0x60323160

603076a4 <__udivsi3>:
603076a4:	e2512001 	subs	r2, r1, #1
603076a8:	012fff1e 	bxeq	lr
603076ac:	3a000023 	bcc	60307740 <__udivsi3+0x9c>
603076b0:	e1500001 	cmp	r0, r1
603076b4:	9a00001a 	bls	60307724 <__udivsi3+0x80>
603076b8:	e1110002 	tst	r1, r2
603076bc:	0a00001b 	beq	60307730 <__udivsi3+0x8c>
603076c0:	e16f3f11 	clz	r3, r1
603076c4:	e16f2f10 	clz	r2, r0
603076c8:	e0432002 	sub	r2, r3, r2
603076cc:	e3a03001 	mov	r3, #1
603076d0:	e1a01211 	lsl	r1, r1, r2
603076d4:	e1a03213 	lsl	r3, r3, r2
603076d8:	e3a02000 	mov	r2, #0
603076dc:	e1500001 	cmp	r0, r1
603076e0:	20400001 	subcs	r0, r0, r1
603076e4:	21822003 	orrcs	r2, r2, r3
603076e8:	e15000a1 	cmp	r0, r1, lsr #1
603076ec:	204000a1 	subcs	r0, r0, r1, lsr #1
603076f0:	218220a3 	orrcs	r2, r2, r3, lsr #1
603076f4:	e1500121 	cmp	r0, r1, lsr #2
603076f8:	20400121 	subcs	r0, r0, r1, lsr #2
603076fc:	21822123 	orrcs	r2, r2, r3, lsr #2
60307700:	e15001a1 	cmp	r0, r1, lsr #3
60307704:	204001a1 	subcs	r0, r0, r1, lsr #3
60307708:	218221a3 	orrcs	r2, r2, r3, lsr #3
6030770c:	e3500000 	cmp	r0, #0
60307710:	11b03223 	lsrsne	r3, r3, #4
60307714:	11a01221 	lsrne	r1, r1, #4
60307718:	1affffef 	bne	603076dc <__udivsi3+0x38>
6030771c:	e1a00002 	mov	r0, r2
60307720:	e12fff1e 	bx	lr
60307724:	03a00001 	moveq	r0, #1
60307728:	13a00000 	movne	r0, #0
6030772c:	e12fff1e 	bx	lr
60307730:	e16f2f11 	clz	r2, r1
60307734:	e262201f 	rsb	r2, r2, #31
60307738:	e1a00230 	lsr	r0, r0, r2
6030773c:	e12fff1e 	bx	lr
60307740:	e3500000 	cmp	r0, #0
60307744:	13e00000 	mvnne	r0, #0
60307748:	eaffe4be 	b	60300a48 <__aeabi_idiv0>

6030774c <__aeabi_uidivmod>:
6030774c:	e3510000 	cmp	r1, #0
60307750:	0afffffa 	beq	60307740 <__udivsi3+0x9c>
60307754:	e92d4003 	push	{r0, r1, lr}
60307758:	ebffffd1 	bl	603076a4 <__udivsi3>
6030775c:	e8bd4006 	pop	{r1, r2, lr}
60307760:	e0030092 	mul	r3, r2, r0
60307764:	e0411003 	sub	r1, r1, r3
60307768:	e12fff1e 	bx	lr

6030776c <__divsi3>:
6030776c:	e3510000 	cmp	r1, #0
60307770:	0a000030 	beq	60307838 <.divsi3_skip_div0_test+0xc4>

60307774 <.divsi3_skip_div0_test>:
60307774:	e020c001 	eor	ip, r0, r1
60307778:	42611000 	rsbmi	r1, r1, #0
6030777c:	e2512001 	subs	r2, r1, #1
60307780:	0a00001f 	beq	60307804 <.divsi3_skip_div0_test+0x90>
60307784:	e1b03000 	movs	r3, r0
60307788:	42603000 	rsbmi	r3, r0, #0
6030778c:	e1530001 	cmp	r3, r1
60307790:	9a00001e 	bls	60307810 <.divsi3_skip_div0_test+0x9c>
60307794:	e1110002 	tst	r1, r2
60307798:	0a000020 	beq	60307820 <.divsi3_skip_div0_test+0xac>
6030779c:	e16f2f11 	clz	r2, r1
603077a0:	e16f0f13 	clz	r0, r3
603077a4:	e0420000 	sub	r0, r2, r0
603077a8:	e3a02001 	mov	r2, #1
603077ac:	e1a01011 	lsl	r1, r1, r0
603077b0:	e1a02012 	lsl	r2, r2, r0
603077b4:	e3a00000 	mov	r0, #0
603077b8:	e1530001 	cmp	r3, r1
603077bc:	20433001 	subcs	r3, r3, r1
603077c0:	21800002 	orrcs	r0, r0, r2
603077c4:	e15300a1 	cmp	r3, r1, lsr #1
603077c8:	204330a1 	subcs	r3, r3, r1, lsr #1
603077cc:	218000a2 	orrcs	r0, r0, r2, lsr #1
603077d0:	e1530121 	cmp	r3, r1, lsr #2
603077d4:	20433121 	subcs	r3, r3, r1, lsr #2
603077d8:	21800122 	orrcs	r0, r0, r2, lsr #2
603077dc:	e15301a1 	cmp	r3, r1, lsr #3
603077e0:	204331a1 	subcs	r3, r3, r1, lsr #3
603077e4:	218001a2 	orrcs	r0, r0, r2, lsr #3
603077e8:	e3530000 	cmp	r3, #0
603077ec:	11b02222 	lsrsne	r2, r2, #4
603077f0:	11a01221 	lsrne	r1, r1, #4
603077f4:	1affffef 	bne	603077b8 <.divsi3_skip_div0_test+0x44>
603077f8:	e35c0000 	cmp	ip, #0
603077fc:	42600000 	rsbmi	r0, r0, #0
60307800:	e12fff1e 	bx	lr
60307804:	e13c0000 	teq	ip, r0
60307808:	42600000 	rsbmi	r0, r0, #0
6030780c:	e12fff1e 	bx	lr
60307810:	33a00000 	movcc	r0, #0
60307814:	01a00fcc 	asreq	r0, ip, #31
60307818:	03800001 	orreq	r0, r0, #1
6030781c:	e12fff1e 	bx	lr
60307820:	e16f2f11 	clz	r2, r1
60307824:	e262201f 	rsb	r2, r2, #31
60307828:	e35c0000 	cmp	ip, #0
6030782c:	e1a00233 	lsr	r0, r3, r2
60307830:	42600000 	rsbmi	r0, r0, #0
60307834:	e12fff1e 	bx	lr
60307838:	e3500000 	cmp	r0, #0
6030783c:	c3e00102 	mvngt	r0, #-2147483648	; 0x80000000
60307840:	b3a00102 	movlt	r0, #-2147483648	; 0x80000000
60307844:	eaffe47f 	b	60300a48 <__aeabi_idiv0>

60307848 <__aeabi_idivmod>:
60307848:	e3510000 	cmp	r1, #0
6030784c:	0afffff9 	beq	60307838 <.divsi3_skip_div0_test+0xc4>
60307850:	e92d4003 	push	{r0, r1, lr}
60307854:	ebffffc6 	bl	60307774 <.divsi3_skip_div0_test>
60307858:	e8bd4006 	pop	{r1, r2, lr}
6030785c:	e0030092 	mul	r3, r2, r0
60307860:	e0411003 	sub	r1, r1, r3
60307864:	e12fff1e 	bx	lr

60307868 <_exit>:
60307868:	eafffffe 	b	60307868 <_exit>

6030786c <CmdRamHelp>:
6030786c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60307870:	e3055cb4 	movw	r5, #23732	; 0x5cb4
60307874:	e3465031 	movt	r5, #24625	; 0x6031
60307878:	e24dd008 	sub	sp, sp, #8
6030787c:	e3054c54 	movw	r4, #23636	; 0x5c54
60307880:	e3464031 	movt	r4, #24625	; 0x6031
60307884:	e0455004 	sub	r5, r5, r4
60307888:	e3a02041 	mov	r2, #65	; 0x41
6030788c:	e1a05225 	lsr	r5, r5, #4
60307890:	e3a00001 	mov	r0, #1
60307894:	e58d5000 	str	r5, [sp]
60307898:	e30430f0 	movw	r3, #16624	; 0x40f0
6030789c:	e3463031 	movt	r3, #24625	; 0x6031
603078a0:	e3041130 	movw	r1, #16688	; 0x4130
603078a4:	e3461031 	movt	r1, #24625	; 0x6031
603078a8:	eb00096c 	bl	60309e60 <rtk_log_write_nano>
603078ac:	e3550000 	cmp	r5, #0
603078b0:	0a000010 	beq	603078f8 <CmdRamHelp+0x8c>
603078b4:	e3047138 	movw	r7, #16696	; 0x4138
603078b8:	e3467031 	movt	r7, #24625	; 0x6031
603078bc:	e304613c 	movw	r6, #16700	; 0x413c
603078c0:	e3466031 	movt	r6, #24625	; 0x6031
603078c4:	e0848205 	add	r8, r4, r5, lsl #4
603078c8:	e594c00c 	ldr	ip, [r4, #12]
603078cc:	e1a03007 	mov	r3, r7
603078d0:	e2844010 	add	r4, r4, #16
603078d4:	e3a02041 	mov	r2, #65	; 0x41
603078d8:	e1a01006 	mov	r1, r6
603078dc:	e3a00001 	mov	r0, #1
603078e0:	e35c0000 	cmp	ip, #0
603078e4:	0a000001 	beq	603078f0 <CmdRamHelp+0x84>
603078e8:	e58dc000 	str	ip, [sp]
603078ec:	eb00095b 	bl	60309e60 <rtk_log_write_nano>
603078f0:	e1540008 	cmp	r4, r8
603078f4:	1afffff3 	bne	603078c8 <CmdRamHelp+0x5c>
603078f8:	e3a00001 	mov	r0, #1
603078fc:	e3a02041 	mov	r2, #65	; 0x41
60307900:	e58d5000 	str	r5, [sp]
60307904:	e3043140 	movw	r3, #16704	; 0x4140
60307908:	e3463031 	movt	r3, #24625	; 0x6031
6030790c:	e3041130 	movw	r1, #16688	; 0x4130
60307910:	e3461031 	movt	r1, #24625	; 0x6031
60307914:	eb000951 	bl	60309e60 <rtk_log_write_nano>
60307918:	e3a00001 	mov	r0, #1
6030791c:	e28dd008 	add	sp, sp, #8
60307920:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

60307924 <cmd_reboot>:
60307924:	e92d4070 	push	{r4, r5, r6, lr}
60307928:	e3a02041 	mov	r2, #65	; 0x41
6030792c:	e1a04000 	mov	r4, r0
60307930:	e1a05001 	mov	r5, r1
60307934:	e3a00001 	mov	r0, #1
60307938:	e3043180 	movw	r3, #16768	; 0x4180
6030793c:	e3463031 	movt	r3, #24625	; 0x6031
60307940:	e3041130 	movw	r1, #16688	; 0x4130
60307944:	e3461031 	movt	r1, #24625	; 0x6031
60307948:	eb000944 	bl	60309e60 <rtk_log_write_nano>
6030794c:	e3540000 	cmp	r4, #0
60307950:	1a000002 	bne	60307960 <cmd_reboot+0x3c>
60307954:	eb0008d5 	bl	60309cb0 <System_Reset>
60307958:	e3a00001 	mov	r0, #1
6030795c:	e8bd8070 	pop	{r4, r5, r6, pc}
60307960:	e5950000 	ldr	r0, [r5]
60307964:	e3041190 	movw	r1, #16784	; 0x4190
60307968:	e3461031 	movt	r1, #24625	; 0x6031
6030796c:	e30c3f4c 	movw	r3, #53068	; 0xcf4c
60307970:	e3463030 	movt	r3, #24624	; 0x6030
60307974:	e12fff33 	blx	r3
60307978:	e2504000 	subs	r4, r0, #0
6030797c:	1afffff4 	bne	60307954 <cmd_reboot+0x30>
60307980:	e1a01004 	mov	r1, r4
60307984:	e303381c 	movw	r3, #14364	; 0x381c
60307988:	e3463031 	movt	r3, #24625	; 0x6031
6030798c:	e12fff33 	blx	r3
60307990:	e3a01c02 	mov	r1, #512	; 0x200
60307994:	e1a00004 	mov	r0, r4
60307998:	e30337e4 	movw	r3, #14308	; 0x37e4
6030799c:	e3463031 	movt	r3, #24625	; 0x6031
603079a0:	e12fff33 	blx	r3
603079a4:	eaffffea 	b	60307954 <cmd_reboot+0x30>

603079a8 <CmdTickPS>:
603079a8:	e92d4030 	push	{r4, r5, lr}
603079ac:	e1a05001 	mov	r5, r1
603079b0:	e24dd00c 	sub	sp, sp, #12
603079b4:	e304119c 	movw	r1, #16796	; 0x419c
603079b8:	e3461031 	movt	r1, #24625	; 0x6031
603079bc:	e5950000 	ldr	r0, [r5]
603079c0:	e30c4f4c 	movw	r4, #53068	; 0xcf4c
603079c4:	e3464030 	movt	r4, #24624	; 0x6030
603079c8:	e12fff34 	blx	r4
603079cc:	e3500000 	cmp	r0, #0
603079d0:	0a000014 	beq	60307a28 <CmdTickPS+0x80>
603079d4:	e5950000 	ldr	r0, [r5]
603079d8:	e30411a0 	movw	r1, #16800	; 0x41a0
603079dc:	e3461031 	movt	r1, #24625	; 0x6031
603079e0:	e12fff34 	blx	r4
603079e4:	e3500000 	cmp	r0, #0
603079e8:	0a000039 	beq	60307ad4 <CmdTickPS+0x12c>
603079ec:	e5950000 	ldr	r0, [r5]
603079f0:	e30411a4 	movw	r1, #16804	; 0x41a4
603079f4:	e3461031 	movt	r1, #24625	; 0x6031
603079f8:	e12fff34 	blx	r4
603079fc:	e3500000 	cmp	r0, #0
60307a00:	0a000021 	beq	60307a8c <CmdTickPS+0xe4>
60307a04:	e5950000 	ldr	r0, [r5]
60307a08:	e30411b4 	movw	r1, #16820	; 0x41b4
60307a0c:	e3461031 	movt	r1, #24625	; 0x6031
60307a10:	e12fff34 	blx	r4
60307a14:	e3500000 	cmp	r0, #0
60307a18:	0a000004 	beq	60307a30 <CmdTickPS+0x88>
60307a1c:	e3a00001 	mov	r0, #1
60307a20:	e28dd00c 	add	sp, sp, #12
60307a24:	e8bd8030 	pop	{r4, r5, pc}
60307a28:	eb000e9c 	bl	6030b4a0 <pmu_release_wakelock>
60307a2c:	eaffffe8 	b	603079d4 <CmdTickPS+0x2c>
60307a30:	eb000ea5 	bl	6030b4cc <pmu_get_wakelock_status>
60307a34:	e3a02041 	mov	r2, #65	; 0x41
60307a38:	e1a03000 	mov	r3, r0
60307a3c:	e3041130 	movw	r1, #16688	; 0x4130
60307a40:	e3461031 	movt	r1, #24625	; 0x6031
60307a44:	e58d3000 	str	r3, [sp]
60307a48:	e3a00001 	mov	r0, #1
60307a4c:	e30431b8 	movw	r3, #16824	; 0x41b8
60307a50:	e3463031 	movt	r3, #24625	; 0x6031
60307a54:	eb000901 	bl	60309e60 <rtk_log_write_nano>
60307a58:	eb000eb0 	bl	6030b520 <pmu_get_deepwakelock_status>
60307a5c:	e3a02041 	mov	r2, #65	; 0x41
60307a60:	e1a0c000 	mov	ip, r0
60307a64:	e30431c8 	movw	r3, #16840	; 0x41c8
60307a68:	e3463031 	movt	r3, #24625	; 0x6031
60307a6c:	e3a00001 	mov	r0, #1
60307a70:	e58dc000 	str	ip, [sp]
60307a74:	e3041130 	movw	r1, #16688	; 0x4130
60307a78:	e3461031 	movt	r1, #24625	; 0x6031
60307a7c:	eb0008f7 	bl	60309e60 <rtk_log_write_nano>
60307a80:	e3a00001 	mov	r0, #1
60307a84:	e28dd00c 	add	sp, sp, #12
60307a88:	e8bd8030 	pop	{r4, r5, pc}
60307a8c:	e5950004 	ldr	r0, [r5, #4]
60307a90:	e30411ac 	movw	r1, #16812	; 0x41ac
60307a94:	e3461031 	movt	r1, #24625	; 0x6031
60307a98:	e12fff34 	blx	r4
60307a9c:	e3500000 	cmp	r0, #0
60307aa0:	0a000008 	beq	60307ac8 <CmdTickPS+0x120>
60307aa4:	e5950004 	ldr	r0, [r5, #4]
60307aa8:	e30411b0 	movw	r1, #16816	; 0x41b0
60307aac:	e3461031 	movt	r1, #24625	; 0x6031
60307ab0:	e12fff34 	blx	r4
60307ab4:	e3500000 	cmp	r0, #0
60307ab8:	1a000002 	bne	60307ac8 <CmdTickPS+0x120>
60307abc:	e3a00001 	mov	r0, #1
60307ac0:	eb000e85 	bl	6030b4dc <pmu_set_sleep_type>
60307ac4:	eaffffce 	b	60307a04 <CmdTickPS+0x5c>
60307ac8:	e3a00000 	mov	r0, #0
60307acc:	eb000e82 	bl	6030b4dc <pmu_set_sleep_type>
60307ad0:	eaffffcb 	b	60307a04 <CmdTickPS+0x5c>
60307ad4:	eb000e66 	bl	6030b474 <pmu_acquire_wakelock>
60307ad8:	eaffffc3 	b	603079ec <CmdTickPS+0x44>

60307adc <cmd_write_word>:
60307adc:	e92d40f0 	push	{r4, r5, r6, r7, lr}
60307ae0:	e1a07001 	mov	r7, r1
60307ae4:	e24dd00c 	sub	sp, sp, #12
60307ae8:	e3a02010 	mov	r2, #16
60307aec:	e5970000 	ldr	r0, [r7]
60307af0:	e3a01000 	mov	r1, #0
60307af4:	e30d6150 	movw	r6, #53584	; 0xd150
60307af8:	e3466030 	movt	r6, #24624	; 0x6030
60307afc:	e12fff36 	blx	r6
60307b00:	e3c05003 	bic	r5, r0, #3
60307b04:	e1a04000 	mov	r4, r0
60307b08:	e3a02010 	mov	r2, #16
60307b0c:	e5970004 	ldr	r0, [r7, #4]
60307b10:	e3a01000 	mov	r1, #0
60307b14:	e12fff36 	blx	r6
60307b18:	e3a02041 	mov	r2, #65	; 0x41
60307b1c:	e1a06000 	mov	r6, r0
60307b20:	e58d0004 	str	r0, [sp, #4]
60307b24:	e58d5000 	str	r5, [sp]
60307b28:	e3a00001 	mov	r0, #1
60307b2c:	e30431dc 	movw	r3, #16860	; 0x41dc
60307b30:	e3463031 	movt	r3, #24625	; 0x6031
60307b34:	e304113c 	movw	r1, #16700	; 0x413c
60307b38:	e3461031 	movt	r1, #24625	; 0x6031
60307b3c:	eb0008c7 	bl	60309e60 <rtk_log_write_nano>
60307b40:	e5856000 	str	r6, [r5]
60307b44:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
60307b48:	e3130004 	tst	r3, #4
60307b4c:	0a000009 	beq	60307b78 <cmd_write_word+0x9c>
60307b50:	e3c5303f 	bic	r3, r5, #63	; 0x3f
60307b54:	e3c4003f 	bic	r0, r4, #63	; 0x3f
60307b58:	e2833040 	add	r3, r3, #64	; 0x40
60307b5c:	e1500003 	cmp	r0, r3
60307b60:	2a000003 	bcs	60307b74 <cmd_write_word+0x98>
60307b64:	ee070f3a 	mcr	15, 0, r0, cr7, cr10, {1}
60307b68:	e2800040 	add	r0, r0, #64	; 0x40
60307b6c:	e1530000 	cmp	r3, r0
60307b70:	8afffffb 	bhi	60307b64 <cmd_write_word+0x88>
60307b74:	f57ff05f 	dmb	sy
60307b78:	e3a00000 	mov	r0, #0
60307b7c:	e28dd00c 	add	sp, sp, #12
60307b80:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}

60307b84 <cmd_dump_word>:
60307b84:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60307b88:	e30337c4 	movw	r3, #14276	; 0x37c4
60307b8c:	e3463031 	movt	r3, #24625	; 0x6031
60307b90:	e1a04000 	mov	r4, r0
60307b94:	e1a05001 	mov	r5, r1
60307b98:	e12fff33 	blx	r3
60307b9c:	e2443001 	sub	r3, r4, #1
60307ba0:	e3530002 	cmp	r3, #2
60307ba4:	8a000057 	bhi	60307d08 <cmd_dump_word+0x184>
60307ba8:	e1a06000 	mov	r6, r0
60307bac:	e3540003 	cmp	r4, #3
60307bb0:	0a000023 	beq	60307c44 <cmd_dump_word+0xc0>
60307bb4:	e3540001 	cmp	r4, #1
60307bb8:	1a00005b 	bne	60307d2c <cmd_dump_word+0x1a8>
60307bbc:	e3a02010 	mov	r2, #16
60307bc0:	e3a01000 	mov	r1, #0
60307bc4:	e5950000 	ldr	r0, [r5]
60307bc8:	e30d3150 	movw	r3, #53584	; 0xd150
60307bcc:	e3463030 	movt	r3, #24624	; 0x6030
60307bd0:	e12fff33 	blx	r3
60307bd4:	e1a03000 	mov	r3, r0
60307bd8:	e3c00003 	bic	r0, r0, #3
60307bdc:	e2562000 	subs	r2, r6, #0
60307be0:	e280133e 	add	r1, r0, #-134217728	; 0xf8000000
60307be4:	13a02001 	movne	r2, #1
60307be8:	e371037e 	cmn	r1, #-134217727	; 0xf8000001
60307bec:	83a02000 	movhi	r2, #0
60307bf0:	e3520000 	cmp	r2, #0
60307bf4:	1a00006d 	bne	60307db0 <cmd_dump_word+0x22c>
60307bf8:	ee112f10 	mrc	15, 0, r2, cr1, cr0, {0}
60307bfc:	e3120004 	tst	r2, #4
60307c00:	0a00000b 	beq	60307c34 <cmd_dump_word+0xb0>
60307c04:	e0802104 	add	r2, r0, r4, lsl #2
60307c08:	e2422001 	sub	r2, r2, #1
60307c0c:	e3c2203f 	bic	r2, r2, #63	; 0x3f
60307c10:	e3c3303f 	bic	r3, r3, #63	; 0x3f
60307c14:	e2822040 	add	r2, r2, #64	; 0x40
60307c18:	e1530002 	cmp	r3, r2
60307c1c:	2a000003 	bcs	60307c30 <cmd_dump_word+0xac>
60307c20:	ee073f3e 	mcr	15, 0, r3, cr7, cr14, {1}
60307c24:	e2833040 	add	r3, r3, #64	; 0x40
60307c28:	e1520003 	cmp	r2, r3
60307c2c:	8afffffb 	bhi	60307c20 <cmd_dump_word+0x9c>
60307c30:	f57ff05f 	dmb	sy
60307c34:	e1a01004 	mov	r1, r4
60307c38:	eb0008bc 	bl	60309f30 <rtk_log_memory_dump_word>
60307c3c:	e3a00001 	mov	r0, #1
60307c40:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60307c44:	e5953008 	ldr	r3, [r5, #8]
60307c48:	e3a0200a 	mov	r2, #10
60307c4c:	e3a01000 	mov	r1, #0
60307c50:	e5d37000 	ldrb	r7, [r3]
60307c54:	e5950004 	ldr	r0, [r5, #4]
60307c58:	e30d8150 	movw	r8, #53584	; 0xd150
60307c5c:	e3468030 	movt	r8, #24624	; 0x6030
60307c60:	e12fff38 	blx	r8
60307c64:	e3a02010 	mov	r2, #16
60307c68:	e3a01000 	mov	r1, #0
60307c6c:	e1a04000 	mov	r4, r0
60307c70:	e5950000 	ldr	r0, [r5]
60307c74:	e12fff38 	blx	r8
60307c78:	e20770df 	and	r7, r7, #223	; 0xdf
60307c7c:	e1a03000 	mov	r3, r0
60307c80:	e3c00003 	bic	r0, r0, #3
60307c84:	e2562000 	subs	r2, r6, #0
60307c88:	e2477042 	sub	r7, r7, #66	; 0x42
60307c8c:	e280133e 	add	r1, r0, #-134217728	; 0xf8000000
60307c90:	13a02001 	movne	r2, #1
60307c94:	e16f7f17 	clz	r7, r7
60307c98:	e371037e 	cmn	r1, #-134217727	; 0xf8000001
60307c9c:	83a02000 	movhi	r2, #0
60307ca0:	e1a072a7 	lsr	r7, r7, #5
60307ca4:	e3520000 	cmp	r2, #0
60307ca8:	1a000040 	bne	60307db0 <cmd_dump_word+0x22c>
60307cac:	e2545000 	subs	r5, r4, #0
60307cb0:	13a05001 	movne	r5, #1
60307cb4:	e1150007 	tst	r5, r7
60307cb8:	0a000031 	beq	60307d84 <cmd_dump_word+0x200>
60307cbc:	ee112f10 	mrc	15, 0, r2, cr1, cr0, {0}
60307cc0:	e3120004 	tst	r2, #4
60307cc4:	0a00000b 	beq	60307cf8 <cmd_dump_word+0x174>
60307cc8:	e2442001 	sub	r2, r4, #1
60307ccc:	e0822000 	add	r2, r2, r0
60307cd0:	e3c2203f 	bic	r2, r2, #63	; 0x3f
60307cd4:	e3c3303f 	bic	r3, r3, #63	; 0x3f
60307cd8:	e2822040 	add	r2, r2, #64	; 0x40
60307cdc:	e1530002 	cmp	r3, r2
60307ce0:	2a000003 	bcs	60307cf4 <cmd_dump_word+0x170>
60307ce4:	ee073f3e 	mcr	15, 0, r3, cr7, cr14, {1}
60307ce8:	e2833040 	add	r3, r3, #64	; 0x40
60307cec:	e1520003 	cmp	r2, r3
60307cf0:	8afffffb 	bhi	60307ce4 <cmd_dump_word+0x160>
60307cf4:	f57ff05f 	dmb	sy
60307cf8:	e1a01004 	mov	r1, r4
60307cfc:	eb0008be 	bl	60309ffc <rtk_log_memory_dump_byte>
60307d00:	e3a00001 	mov	r0, #1
60307d04:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60307d08:	e3a02045 	mov	r2, #69	; 0x45
60307d0c:	e3a00002 	mov	r0, #2
60307d10:	e30431ec 	movw	r3, #16876	; 0x41ec
60307d14:	e3463031 	movt	r3, #24625	; 0x6031
60307d18:	e3041130 	movw	r1, #16688	; 0x4130
60307d1c:	e3461031 	movt	r1, #24625	; 0x6031
60307d20:	eb00084e 	bl	60309e60 <rtk_log_write_nano>
60307d24:	e3a00000 	mov	r0, #0
60307d28:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60307d2c:	e3a0200a 	mov	r2, #10
60307d30:	e3a01000 	mov	r1, #0
60307d34:	e5950004 	ldr	r0, [r5, #4]
60307d38:	e30d7150 	movw	r7, #53584	; 0xd150
60307d3c:	e3467030 	movt	r7, #24624	; 0x6030
60307d40:	e12fff37 	blx	r7
60307d44:	e3a02010 	mov	r2, #16
60307d48:	e3a01000 	mov	r1, #0
60307d4c:	e1a04000 	mov	r4, r0
60307d50:	e5950000 	ldr	r0, [r5]
60307d54:	e12fff37 	blx	r7
60307d58:	e1a03000 	mov	r3, r0
60307d5c:	e3c00003 	bic	r0, r0, #3
60307d60:	e2562000 	subs	r2, r6, #0
60307d64:	e280133e 	add	r1, r0, #-134217728	; 0xf8000000
60307d68:	13a02001 	movne	r2, #1
60307d6c:	e371037e 	cmn	r1, #-134217727	; 0xf8000001
60307d70:	83a02000 	movhi	r2, #0
60307d74:	e3520000 	cmp	r2, #0
60307d78:	1a00000c 	bne	60307db0 <cmd_dump_word+0x22c>
60307d7c:	e2545000 	subs	r5, r4, #0
60307d80:	13a05001 	movne	r5, #1
60307d84:	e3550000 	cmp	r5, #0
60307d88:	1affff9a 	bne	60307bf8 <cmd_dump_word+0x74>
60307d8c:	e3a02045 	mov	r2, #69	; 0x45
60307d90:	e3a00002 	mov	r0, #2
60307d94:	e304322c 	movw	r3, #16940	; 0x422c
60307d98:	e3463031 	movt	r3, #24625	; 0x6031
60307d9c:	e3041130 	movw	r1, #16688	; 0x4130
60307da0:	e3461031 	movt	r1, #24625	; 0x6031
60307da4:	eb00082d 	bl	60309e60 <rtk_log_write_nano>
60307da8:	e1a00005 	mov	r0, r5
60307dac:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60307db0:	e3a02045 	mov	r2, #69	; 0x45
60307db4:	e3a00002 	mov	r0, #2
60307db8:	e3043208 	movw	r3, #16904	; 0x4208
60307dbc:	e3463031 	movt	r3, #24625	; 0x6031
60307dc0:	e3041130 	movw	r1, #16688	; 0x4130
60307dc4:	e3461031 	movt	r1, #24625	; 0x6031
60307dc8:	eb000824 	bl	60309e60 <rtk_log_write_nano>
60307dcc:	e3a00001 	mov	r0, #1
60307dd0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

60307dd4 <cmd_efuse_protect>:
60307dd4:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
60307dd8:	e1a03000 	mov	r3, r0
60307ddc:	e24dd01c 	sub	sp, sp, #28
60307de0:	e3a00b02 	mov	r0, #2048	; 0x800
60307de4:	e1a08001 	mov	r8, r1
60307de8:	e58d300c 	str	r3, [sp, #12]
60307dec:	eb001675 	bl	6030d7c8 <rtos_mem_zmalloc>
60307df0:	e2505000 	subs	r5, r0, #0
60307df4:	0a00014e 	beq	60308334 <cmd_efuse_protect+0x560>
60307df8:	e5980000 	ldr	r0, [r8]
60307dfc:	e3041254 	movw	r1, #16980	; 0x4254
60307e00:	e3461031 	movt	r1, #24625	; 0x6031
60307e04:	e30c9f4c 	movw	r9, #53068	; 0xcf4c
60307e08:	e3469030 	movt	r9, #24624	; 0x6030
60307e0c:	e12fff39 	blx	r9
60307e10:	e2506000 	subs	r6, r0, #0
60307e14:	1a000030 	bne	60307edc <cmd_efuse_protect+0x108>
60307e18:	e59d300c 	ldr	r3, [sp, #12]
60307e1c:	e3530002 	cmp	r3, #2
60307e20:	8a00010b 	bhi	60308254 <cmd_efuse_protect+0x480>
60307e24:	e3a02b01 	mov	r2, #1024	; 0x400
60307e28:	e1a01006 	mov	r1, r6
60307e2c:	e1a00005 	mov	r0, r5
60307e30:	eb0005de 	bl	603095b0 <OTP_LogicalMap_Read>
60307e34:	e3700001 	cmn	r0, #1
60307e38:	0a000182 	beq	60308448 <cmd_efuse_protect+0x674>
60307e3c:	e3a0ab01 	mov	sl, #1024	; 0x400
60307e40:	e3043280 	movw	r3, #17024	; 0x4280
60307e44:	e3463031 	movt	r3, #24625	; 0x6031
60307e48:	e304b13c 	movw	fp, #16700	; 0x413c
60307e4c:	e346b031 	movt	fp, #24625	; 0x6031
60307e50:	e2457001 	sub	r7, r5, #1
60307e54:	e58d5010 	str	r5, [sp, #16]
60307e58:	e3a04000 	mov	r4, #0
60307e5c:	e1a0500b 	mov	r5, fp
60307e60:	e1a0b003 	mov	fp, r3
60307e64:	ea000009 	b	60307e90 <cmd_efuse_protect+0xbc>
60307e68:	e5f73001 	ldrb	r3, [r7, #1]!
60307e6c:	e58d3000 	str	r3, [sp]
60307e70:	e3a02049 	mov	r2, #73	; 0x49
60307e74:	e1a01005 	mov	r1, r5
60307e78:	e3a00004 	mov	r0, #4
60307e7c:	e3043290 	movw	r3, #17040	; 0x4290
60307e80:	e3463031 	movt	r3, #24625	; 0x6031
60307e84:	eb0007c1 	bl	60309d90 <rtk_log_write>
60307e88:	e154000a 	cmp	r4, sl
60307e8c:	0a00000a 	beq	60307ebc <cmd_efuse_protect+0xe8>
60307e90:	e314000f 	tst	r4, #15
60307e94:	e0862004 	add	r2, r6, r4
60307e98:	e2844001 	add	r4, r4, #1
60307e9c:	1afffff1 	bne	60307e68 <cmd_efuse_protect+0x94>
60307ea0:	e58d2000 	str	r2, [sp]
60307ea4:	e1a0300b 	mov	r3, fp
60307ea8:	e3a02049 	mov	r2, #73	; 0x49
60307eac:	e1a01005 	mov	r1, r5
60307eb0:	e3a00004 	mov	r0, #4
60307eb4:	eb0007b5 	bl	60309d90 <rtk_log_write>
60307eb8:	eaffffea 	b	60307e68 <cmd_efuse_protect+0x94>
60307ebc:	e59d5010 	ldr	r5, [sp, #16]
60307ec0:	e304325c 	movw	r3, #16988	; 0x425c
60307ec4:	e3463031 	movt	r3, #24625	; 0x6031
60307ec8:	e304113c 	movw	r1, #16700	; 0x413c
60307ecc:	e3461031 	movt	r1, #24625	; 0x6031
60307ed0:	e3a02049 	mov	r2, #73	; 0x49
60307ed4:	e3a00004 	mov	r0, #4
60307ed8:	eb0007ac 	bl	60309d90 <rtk_log_write>
60307edc:	e5980000 	ldr	r0, [r8]
60307ee0:	e3041298 	movw	r1, #17048	; 0x4298
60307ee4:	e3461031 	movt	r1, #24625	; 0x6031
60307ee8:	e12fff39 	blx	r9
60307eec:	e2504000 	subs	r4, r0, #0
60307ef0:	1a0000bb 	bne	603081e4 <cmd_efuse_protect+0x410>
60307ef4:	e59d300c 	ldr	r3, [sp, #12]
60307ef8:	e3530003 	cmp	r3, #3
60307efc:	9a0000ac 	bls	603081b4 <cmd_efuse_protect+0x3e0>
60307f00:	e1a01004 	mov	r1, r4
60307f04:	e3a02010 	mov	r2, #16
60307f08:	e5980004 	ldr	r0, [r8, #4]
60307f0c:	e30d7150 	movw	r7, #53584	; 0xd150
60307f10:	e3467030 	movt	r7, #24624	; 0x6030
60307f14:	e12fff37 	blx	r7
60307f18:	e1a01004 	mov	r1, r4
60307f1c:	e3a02010 	mov	r2, #16
60307f20:	e58d0014 	str	r0, [sp, #20]
60307f24:	e5980008 	ldr	r0, [r8, #8]
60307f28:	e12fff37 	blx	r7
60307f2c:	e598400c 	ldr	r4, [r8, #12]
60307f30:	e1a0b000 	mov	fp, r0
60307f34:	e30d3040 	movw	r3, #53312	; 0xd040
60307f38:	e3463030 	movt	r3, #24624	; 0x6030
60307f3c:	e1a00004 	mov	r0, r4
60307f40:	e12fff33 	blx	r3
60307f44:	e3100001 	tst	r0, #1
60307f48:	e1a06000 	mov	r6, r0
60307f4c:	13a02057 	movne	r2, #87	; 0x57
60307f50:	13a00003 	movne	r0, #3
60307f54:	158d6000 	strne	r6, [sp]
60307f58:	1a000134 	bne	60308430 <cmd_efuse_protect+0x65c>
60307f5c:	e1a030a6 	lsr	r3, r6, #1
60307f60:	e1a0a003 	mov	sl, r3
60307f64:	e15b0003 	cmp	fp, r3
60307f68:	e58d3010 	str	r3, [sp, #16]
60307f6c:	1a0000ce 	bne	603082ac <cmd_efuse_protect+0x4d8>
60307f70:	e3c66001 	bic	r6, r6, #1
60307f74:	e58d6004 	str	r6, [sp, #4]
60307f78:	e59d6010 	ldr	r6, [sp, #16]
60307f7c:	e3a02049 	mov	r2, #73	; 0x49
60307f80:	e3a00004 	mov	r0, #4
60307f84:	e58d6000 	str	r6, [sp]
60307f88:	e3043318 	movw	r3, #17176	; 0x4318
60307f8c:	e3463031 	movt	r3, #24625	; 0x6031
60307f90:	e3041130 	movw	r1, #16688	; 0x4130
60307f94:	e3461031 	movt	r1, #24625	; 0x6031
60307f98:	eb00077c 	bl	60309d90 <rtk_log_write>
60307f9c:	e3560000 	cmp	r6, #0
60307fa0:	0a00000a 	beq	60307fd0 <cmd_efuse_protect+0x1fc>
60307fa4:	e59d3010 	ldr	r3, [sp, #16]
60307fa8:	e30d630c 	movw	r6, #54028	; 0xd30c
60307fac:	e3466030 	movt	r6, #24624	; 0x6030
60307fb0:	e245a001 	sub	sl, r5, #1
60307fb4:	e084b083 	add	fp, r4, r3, lsl #1
60307fb8:	e5d41001 	ldrb	r1, [r4, #1]
60307fbc:	e4d40002 	ldrb	r0, [r4], #2
60307fc0:	e12fff36 	blx	r6
60307fc4:	e154000b 	cmp	r4, fp
60307fc8:	e5ea0001 	strb	r0, [sl, #1]!
60307fcc:	1afffff9 	bne	60307fb8 <cmd_efuse_protect+0x1e4>
60307fd0:	e59d1010 	ldr	r1, [sp, #16]
60307fd4:	e59d0014 	ldr	r0, [sp, #20]
60307fd8:	e1a02005 	mov	r2, r5
60307fdc:	eb0005e0 	bl	60309764 <OTP_LogicalMap_Write>
60307fe0:	e3700001 	cmn	r0, #1
60307fe4:	0a000117 	beq	60308448 <cmd_efuse_protect+0x674>
60307fe8:	e5980000 	ldr	r0, [r8]
60307fec:	e3041344 	movw	r1, #17220	; 0x4344
60307ff0:	e3461031 	movt	r1, #24625	; 0x6031
60307ff4:	e12fff39 	blx	r9
60307ff8:	e3500000 	cmp	r0, #0
60307ffc:	0a0000b8 	beq	603082e4 <cmd_efuse_protect+0x510>
60308000:	e5980000 	ldr	r0, [r8]
60308004:	e3041374 	movw	r1, #17268	; 0x4374
60308008:	e3461031 	movt	r1, #24625	; 0x6031
6030800c:	e12fff39 	blx	r9
60308010:	e2504000 	subs	r4, r0, #0
60308014:	1a0000d1 	bne	60308360 <cmd_efuse_protect+0x58c>
60308018:	e59d300c 	ldr	r3, [sp, #12]
6030801c:	e3530003 	cmp	r3, #3
60308020:	9a000063 	bls	603081b4 <cmd_efuse_protect+0x3e0>
60308024:	e1a01004 	mov	r1, r4
60308028:	e3a02010 	mov	r2, #16
6030802c:	e5980004 	ldr	r0, [r8, #4]
60308030:	e30d6150 	movw	r6, #53584	; 0xd150
60308034:	e3466030 	movt	r6, #24624	; 0x6030
60308038:	e12fff36 	blx	r6
6030803c:	e1a01004 	mov	r1, r4
60308040:	e3a02010 	mov	r2, #16
60308044:	e58d0010 	str	r0, [sp, #16]
60308048:	e5980008 	ldr	r0, [r8, #8]
6030804c:	e12fff36 	blx	r6
60308050:	e598700c 	ldr	r7, [r8, #12]
60308054:	e1a06000 	mov	r6, r0
60308058:	e30d3040 	movw	r3, #53312	; 0xd040
6030805c:	e3463030 	movt	r3, #24624	; 0x6030
60308060:	e1a00007 	mov	r0, r7
60308064:	e12fff33 	blx	r3
60308068:	e1a04000 	mov	r4, r0
6030806c:	e3100001 	tst	r0, #1
60308070:	1a0000eb 	bne	60308424 <cmd_efuse_protect+0x650>
60308074:	e1a030a0 	lsr	r3, r0, #1
60308078:	e1a0a003 	mov	sl, r3
6030807c:	e1560003 	cmp	r6, r3
60308080:	e58d300c 	str	r3, [sp, #12]
60308084:	0a00000a 	beq	603080b4 <cmd_efuse_protect+0x2e0>
60308088:	e3a02057 	mov	r2, #87	; 0x57
6030808c:	e3a00003 	mov	r0, #3
60308090:	e30432d4 	movw	r3, #17108	; 0x42d4
60308094:	e3463031 	movt	r3, #24625	; 0x6031
60308098:	e3041130 	movw	r1, #16688	; 0x4130
6030809c:	e3461031 	movt	r1, #24625	; 0x6031
603080a0:	eb00073a 	bl	60309d90 <rtk_log_write>
603080a4:	e15a0006 	cmp	sl, r6
603080a8:	e1a0300a 	mov	r3, sl
603080ac:	21a03006 	movcs	r3, r6
603080b0:	e58d300c 	str	r3, [sp, #12]
603080b4:	e3c44001 	bic	r4, r4, #1
603080b8:	e58d4004 	str	r4, [sp, #4]
603080bc:	e59d400c 	ldr	r4, [sp, #12]
603080c0:	e3a02049 	mov	r2, #73	; 0x49
603080c4:	e3a00004 	mov	r0, #4
603080c8:	e58d4000 	str	r4, [sp]
603080cc:	e3043384 	movw	r3, #17284	; 0x4384
603080d0:	e3463031 	movt	r3, #24625	; 0x6031
603080d4:	e3041130 	movw	r1, #16688	; 0x4130
603080d8:	e3461031 	movt	r1, #24625	; 0x6031
603080dc:	eb00072b 	bl	60309d90 <rtk_log_write>
603080e0:	e1a03004 	mov	r3, r4
603080e4:	e3540000 	cmp	r4, #0
603080e8:	0a00009c 	beq	60308360 <cmd_efuse_protect+0x58c>
603080ec:	e245b001 	sub	fp, r5, #1
603080f0:	e30d630c 	movw	r6, #54028	; 0xd30c
603080f4:	e3466030 	movt	r6, #24624	; 0x6030
603080f8:	e1a0400b 	mov	r4, fp
603080fc:	e087a083 	add	sl, r7, r3, lsl #1
60308100:	e58db014 	str	fp, [sp, #20]
60308104:	e5d71001 	ldrb	r1, [r7, #1]
60308108:	e4d70002 	ldrb	r0, [r7], #2
6030810c:	e12fff36 	blx	r6
60308110:	e157000a 	cmp	r7, sl
60308114:	e5eb0001 	strb	r0, [fp, #1]!
60308118:	1afffff9 	bne	60308104 <cmd_efuse_protect+0x330>
6030811c:	e59d200c 	ldr	r2, [sp, #12]
60308120:	e59d3014 	ldr	r3, [sp, #20]
60308124:	e265b001 	rsb	fp, r5, #1
60308128:	e0833002 	add	r3, r3, r2
6030812c:	e59d2010 	ldr	r2, [sp, #16]
60308130:	e30473b0 	movw	r7, #17328	; 0x43b0
60308134:	e3467031 	movt	r7, #24625	; 0x6031
60308138:	e304a13c 	movw	sl, #16700	; 0x413c
6030813c:	e346a031 	movt	sl, #24625	; 0x6031
60308140:	e58d800c 	str	r8, [sp, #12]
60308144:	e08bb002 	add	fp, fp, r2
60308148:	e1a08007 	mov	r8, r7
6030814c:	e1a07003 	mov	r7, r3
60308150:	ea000001 	b	6030815c <cmd_efuse_protect+0x388>
60308154:	e1570004 	cmp	r7, r4
60308158:	0a00007f 	beq	6030835c <cmd_efuse_protect+0x588>
6030815c:	e08b6004 	add	r6, fp, r4
60308160:	e5f42001 	ldrb	r2, [r4, #1]!
60308164:	e1a03008 	mov	r3, r8
60308168:	e1a0100a 	mov	r1, sl
6030816c:	e3a00004 	mov	r0, #4
60308170:	e58d2004 	str	r2, [sp, #4]
60308174:	e58d6000 	str	r6, [sp]
60308178:	e3a02049 	mov	r2, #73	; 0x49
6030817c:	eb000703 	bl	60309d90 <rtk_log_write>
60308180:	e5d41000 	ldrb	r1, [r4]
60308184:	e1a00006 	mov	r0, r6
60308188:	eb000478 	bl	60309370 <OTP_Write8>
6030818c:	e3700001 	cmn	r0, #1
60308190:	1affffef 	bne	60308154 <cmd_efuse_protect+0x380>
60308194:	e3a02045 	mov	r2, #69	; 0x45
60308198:	e3a00002 	mov	r0, #2
6030819c:	e30433c0 	movw	r3, #17344	; 0x43c0
603081a0:	e3463031 	movt	r3, #24625	; 0x6031
603081a4:	e3041130 	movw	r1, #16688	; 0x4130
603081a8:	e3461031 	movt	r1, #24625	; 0x6031
603081ac:	eb0006f7 	bl	60309d90 <rtk_log_write>
603081b0:	ea000006 	b	603081d0 <cmd_efuse_protect+0x3fc>
603081b4:	e30432a0 	movw	r3, #17056	; 0x42a0
603081b8:	e3463031 	movt	r3, #24625	; 0x6031
603081bc:	e3041130 	movw	r1, #16688	; 0x4130
603081c0:	e3461031 	movt	r1, #24625	; 0x6031
603081c4:	e3a02045 	mov	r2, #69	; 0x45
603081c8:	e3a00002 	mov	r0, #2
603081cc:	eb0006ef 	bl	60309d90 <rtk_log_write>
603081d0:	e1a00005 	mov	r0, r5
603081d4:	eb001591 	bl	6030d820 <rtos_mem_free>
603081d8:	e3a00000 	mov	r0, #0
603081dc:	e28dd01c 	add	sp, sp, #28
603081e0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
603081e4:	e5980000 	ldr	r0, [r8]
603081e8:	e3041344 	movw	r1, #17220	; 0x4344
603081ec:	e3461031 	movt	r1, #24625	; 0x6031
603081f0:	e12fff39 	blx	r9
603081f4:	e2504000 	subs	r4, r0, #0
603081f8:	1affff80 	bne	60308000 <cmd_efuse_protect+0x22c>
603081fc:	e59d300c 	ldr	r3, [sp, #12]
60308200:	e3530002 	cmp	r3, #2
60308204:	93a06b02 	movls	r6, #2048	; 0x800
60308208:	8a000033 	bhi	603082dc <cmd_efuse_protect+0x508>
6030820c:	e1a07004 	mov	r7, r4
60308210:	ea000001 	b	6030821c <cmd_efuse_protect+0x448>
60308214:	e1570006 	cmp	r7, r6
60308218:	2a000060 	bcs	603083a0 <cmd_efuse_protect+0x5cc>
6030821c:	e0851007 	add	r1, r5, r7
60308220:	e1a00007 	mov	r0, r7
60308224:	eb00044b 	bl	60309358 <OTP_Read8>
60308228:	e2877001 	add	r7, r7, #1
6030822c:	e3700001 	cmn	r0, #1
60308230:	1afffff7 	bne	60308214 <cmd_efuse_protect+0x440>
60308234:	e3a02045 	mov	r2, #69	; 0x45
60308238:	e3a00002 	mov	r0, #2
6030823c:	e304334c 	movw	r3, #17228	; 0x434c
60308240:	e3463031 	movt	r3, #24625	; 0x6031
60308244:	e3041130 	movw	r1, #16688	; 0x4130
60308248:	e3461031 	movt	r1, #24625	; 0x6031
6030824c:	eb0006cf 	bl	60309d90 <rtk_log_write>
60308250:	eaffffde 	b	603081d0 <cmd_efuse_protect+0x3fc>
60308254:	e1a01006 	mov	r1, r6
60308258:	e3a02010 	mov	r2, #16
6030825c:	e5980004 	ldr	r0, [r8, #4]
60308260:	e30d7150 	movw	r7, #53584	; 0xd150
60308264:	e3467030 	movt	r7, #24624	; 0x6030
60308268:	e12fff37 	blx	r7
6030826c:	e1a01006 	mov	r1, r6
60308270:	e3a02010 	mov	r2, #16
60308274:	e1a06000 	mov	r6, r0
60308278:	e5980008 	ldr	r0, [r8, #8]
6030827c:	e12fff37 	blx	r7
60308280:	e1a01006 	mov	r1, r6
60308284:	e1a02000 	mov	r2, r0
60308288:	e1a0a000 	mov	sl, r0
6030828c:	e1a00005 	mov	r0, r5
60308290:	eb0004c6 	bl	603095b0 <OTP_LogicalMap_Read>
60308294:	e3700001 	cmn	r0, #1
60308298:	0a00006a 	beq	60308448 <cmd_efuse_protect+0x674>
6030829c:	e086300a 	add	r3, r6, sl
603082a0:	e1560003 	cmp	r6, r3
603082a4:	3afffee5 	bcc	60307e40 <cmd_efuse_protect+0x6c>
603082a8:	eaffff04 	b	60307ec0 <cmd_efuse_protect+0xec>
603082ac:	e3a02057 	mov	r2, #87	; 0x57
603082b0:	e3a00003 	mov	r0, #3
603082b4:	e30432d4 	movw	r3, #17108	; 0x42d4
603082b8:	e3463031 	movt	r3, #24625	; 0x6031
603082bc:	e3041130 	movw	r1, #16688	; 0x4130
603082c0:	e3461031 	movt	r1, #24625	; 0x6031
603082c4:	eb0006b1 	bl	60309d90 <rtk_log_write>
603082c8:	e15a000b 	cmp	sl, fp
603082cc:	e1a0300a 	mov	r3, sl
603082d0:	21a0300b 	movcs	r3, fp
603082d4:	e58d3010 	str	r3, [sp, #16]
603082d8:	eaffff24 	b	60307f70 <cmd_efuse_protect+0x19c>
603082dc:	e30d7150 	movw	r7, #53584	; 0xd150
603082e0:	e3467030 	movt	r7, #24624	; 0x6030
603082e4:	e3a02010 	mov	r2, #16
603082e8:	e3a01000 	mov	r1, #0
603082ec:	e5980004 	ldr	r0, [r8, #4]
603082f0:	e12fff37 	blx	r7
603082f4:	e3a02010 	mov	r2, #16
603082f8:	e1a04000 	mov	r4, r0
603082fc:	e3a01000 	mov	r1, #0
60308300:	e5980008 	ldr	r0, [r8, #8]
60308304:	e12fff37 	blx	r7
60308308:	e0846000 	add	r6, r4, r0
6030830c:	e1540006 	cmp	r4, r6
60308310:	3affffbd 	bcc	6030820c <cmd_efuse_protect+0x438>
60308314:	e3a02049 	mov	r2, #73	; 0x49
60308318:	e3a00004 	mov	r0, #4
6030831c:	e304325c 	movw	r3, #16988	; 0x425c
60308320:	e3463031 	movt	r3, #24625	; 0x6031
60308324:	e304113c 	movw	r1, #16700	; 0x413c
60308328:	e3461031 	movt	r1, #24625	; 0x6031
6030832c:	eb000697 	bl	60309d90 <rtk_log_write>
60308330:	eaffff32 	b	60308000 <cmd_efuse_protect+0x22c>
60308334:	e3a02045 	mov	r2, #69	; 0x45
60308338:	e3a00002 	mov	r0, #2
6030833c:	e304323c 	movw	r3, #16956	; 0x423c
60308340:	e3463031 	movt	r3, #24625	; 0x6031
60308344:	e3041130 	movw	r1, #16688	; 0x4130
60308348:	e3461031 	movt	r1, #24625	; 0x6031
6030834c:	eb0006c3 	bl	60309e60 <rtk_log_write_nano>
60308350:	e3a00000 	mov	r0, #0
60308354:	e28dd01c 	add	sp, sp, #28
60308358:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030835c:	e59d800c 	ldr	r8, [sp, #12]
60308360:	e5980000 	ldr	r0, [r8]
60308364:	e304137c 	movw	r1, #17276	; 0x437c
60308368:	e3461031 	movt	r1, #24625	; 0x6031
6030836c:	e12fff39 	blx	r9
60308370:	e3500000 	cmp	r0, #0
60308374:	1affff95 	bne	603081d0 <cmd_efuse_protect+0x3fc>
60308378:	eb0003dd 	bl	603092f4 <OTPGetCRC>
6030837c:	e3a02049 	mov	r2, #73	; 0x49
60308380:	e58d0000 	str	r0, [sp]
60308384:	e30433d4 	movw	r3, #17364	; 0x43d4
60308388:	e3463031 	movt	r3, #24625	; 0x6031
6030838c:	e3a00004 	mov	r0, #4
60308390:	e3041130 	movw	r1, #16688	; 0x4130
60308394:	e3461031 	movt	r1, #24625	; 0x6031
60308398:	eb00067c 	bl	60309d90 <rtk_log_write>
6030839c:	eaffff8b 	b	603081d0 <cmd_efuse_protect+0x3fc>
603083a0:	e085a004 	add	sl, r5, r4
603083a4:	e3043360 	movw	r3, #17248	; 0x4360
603083a8:	e3463031 	movt	r3, #24625	; 0x6031
603083ac:	e304b13c 	movw	fp, #16700	; 0x413c
603083b0:	e346b031 	movt	fp, #24625	; 0x6031
603083b4:	e58d5010 	str	r5, [sp, #16]
603083b8:	e1a0700a 	mov	r7, sl
603083bc:	e1a0500b 	mov	r5, fp
603083c0:	e1a0b003 	mov	fp, r3
603083c4:	ea00000a 	b	603083f4 <cmd_efuse_protect+0x620>
603083c8:	e4d73001 	ldrb	r3, [r7], #1
603083cc:	e58d3000 	str	r3, [sp]
603083d0:	e3a02049 	mov	r2, #73	; 0x49
603083d4:	e1a01005 	mov	r1, r5
603083d8:	e2844001 	add	r4, r4, #1
603083dc:	e3a00004 	mov	r0, #4
603083e0:	e3043290 	movw	r3, #17040	; 0x4290
603083e4:	e3463031 	movt	r3, #24625	; 0x6031
603083e8:	eb000668 	bl	60309d90 <rtk_log_write>
603083ec:	e1540006 	cmp	r4, r6
603083f0:	2a000009 	bcs	6030841c <cmd_efuse_protect+0x648>
603083f4:	e047300a 	sub	r3, r7, sl
603083f8:	e313000f 	tst	r3, #15
603083fc:	1afffff1 	bne	603083c8 <cmd_efuse_protect+0x5f4>
60308400:	e1a0300b 	mov	r3, fp
60308404:	e3a02049 	mov	r2, #73	; 0x49
60308408:	e1a01005 	mov	r1, r5
6030840c:	e3a00004 	mov	r0, #4
60308410:	e58d4000 	str	r4, [sp]
60308414:	eb00065d 	bl	60309d90 <rtk_log_write>
60308418:	eaffffea 	b	603083c8 <cmd_efuse_protect+0x5f4>
6030841c:	e59d5010 	ldr	r5, [sp, #16]
60308420:	eaffffbb 	b	60308314 <cmd_efuse_protect+0x540>
60308424:	e3a02057 	mov	r2, #87	; 0x57
60308428:	e3a00003 	mov	r0, #3
6030842c:	e58d4000 	str	r4, [sp]
60308430:	e30432b0 	movw	r3, #17072	; 0x42b0
60308434:	e3463031 	movt	r3, #24625	; 0x6031
60308438:	e3041130 	movw	r1, #16688	; 0x4130
6030843c:	e3461031 	movt	r1, #24625	; 0x6031
60308440:	eb000652 	bl	60309d90 <rtk_log_write>
60308444:	eaffff61 	b	603081d0 <cmd_efuse_protect+0x3fc>
60308448:	e3a02045 	mov	r2, #69	; 0x45
6030844c:	e3a00002 	mov	r0, #2
60308450:	e3043260 	movw	r3, #16992	; 0x4260
60308454:	e3463031 	movt	r3, #24625	; 0x6031
60308458:	e3041130 	movw	r1, #16688	; 0x4130
6030845c:	e3461031 	movt	r1, #24625	; 0x6031
60308460:	eb00064a 	bl	60309d90 <rtk_log_write>
60308464:	eaffff59 	b	603081d0 <cmd_efuse_protect+0x3fc>

60308468 <cmd_rom_table>:
60308468:	e1a02000 	mov	r2, r0
6030846c:	e3053c54 	movw	r3, #23636	; 0x5c54
60308470:	e3463031 	movt	r3, #24625	; 0x6031
60308474:	e3a00006 	mov	r0, #6
60308478:	e5823000 	str	r3, [r2]
6030847c:	e12fff1e 	bx	lr

60308480 <shell_loguratRx_ipc_int>:
60308480:	e92d4010 	push	{r4, lr}
60308484:	e3034228 	movw	r4, #12840	; 0x3228
60308488:	e3464032 	movt	r4, #24626	; 0x6032
6030848c:	e3a01000 	mov	r1, #0
60308490:	e3a00001 	mov	r0, #1
60308494:	eb000211 	bl	60308ce0 <ipc_get_message>
60308498:	e5901004 	ldr	r1, [r0, #4]
6030849c:	e5940008 	ldr	r0, [r4, #8]
603084a0:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
603084a4:	e3130004 	tst	r3, #4
603084a8:	0a00000a 	beq	603084d8 <shell_loguratRx_ipc_int+0x58>
603084ac:	e281207f 	add	r2, r1, #127	; 0x7f
603084b0:	e3c2203f 	bic	r2, r2, #63	; 0x3f
603084b4:	e3c1303f 	bic	r3, r1, #63	; 0x3f
603084b8:	e2822040 	add	r2, r2, #64	; 0x40
603084bc:	e1530002 	cmp	r3, r2
603084c0:	2a000003 	bcs	603084d4 <shell_loguratRx_ipc_int+0x54>
603084c4:	ee073f36 	mcr	15, 0, r3, cr7, cr6, {1}
603084c8:	e2833040 	add	r3, r3, #64	; 0x40
603084cc:	e1520003 	cmp	r2, r3
603084d0:	8afffffb 	bhi	603084c4 <shell_loguratRx_ipc_int+0x44>
603084d4:	f57ff05f 	dmb	sy
603084d8:	e3a02080 	mov	r2, #128	; 0x80
603084dc:	e30c3bec 	movw	r3, #52204	; 0xcbec
603084e0:	e3463030 	movt	r3, #24624	; 0x6030
603084e4:	e12fff33 	blx	r3
603084e8:	e3a03001 	mov	r3, #1
603084ec:	e5c43004 	strb	r3, [r4, #4]
603084f0:	e5943020 	ldr	r3, [r4, #32]
603084f4:	e3530000 	cmp	r3, #0
603084f8:	08bd8010 	popeq	{r4, pc}
603084fc:	e594301c 	ldr	r3, [r4, #28]
60308500:	e8bd4010 	pop	{r4, lr}
60308504:	e12fff13 	bx	r3

60308508 <shell_task_ram>:
60308508:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030850c:	e3034228 	movw	r4, #12840	; 0x3228
60308510:	e3464032 	movt	r4, #24626	; 0x6032
60308514:	e24dd02c 	sub	sp, sp, #44	; 0x2c
60308518:	e3a00b01 	mov	r0, #1024	; 0x400
6030851c:	e5943008 	ldr	r3, [r4, #8]
60308520:	e3037164 	movw	r7, #12644	; 0x3164
60308524:	e3467032 	movt	r7, #24626	; 0x6032
60308528:	e30d80d8 	movw	r8, #53464	; 0xd0d8
6030852c:	e3468030 	movt	r8, #24624	; 0x6030
60308530:	e58d3014 	str	r3, [sp, #20]
60308534:	e283b001 	add	fp, r3, #1
60308538:	e3a03001 	mov	r3, #1
6030853c:	e5843020 	str	r3, [r4, #32]
60308540:	e5c43006 	strb	r3, [r4, #6]
60308544:	eb001531 	bl	6030da10 <rtos_create_secure_context>
60308548:	e3083730 	movw	r3, #34608	; 0x8730
6030854c:	e3463030 	movt	r3, #24624	; 0x6030
60308550:	e58d3018 	str	r3, [sp, #24]
60308554:	e3043720 	movw	r3, #18208	; 0x4720
60308558:	e3463031 	movt	r3, #24625	; 0x6031
6030855c:	e58d301c 	str	r3, [sp, #28]
60308560:	e304313c 	movw	r3, #16700	; 0x413c
60308564:	e3463031 	movt	r3, #24625	; 0x6031
60308568:	e58d3020 	str	r3, [sp, #32]
6030856c:	e3043738 	movw	r3, #18232	; 0x4738
60308570:	e3463031 	movt	r3, #24625	; 0x6031
60308574:	e58d3024 	str	r3, [sp, #36]	; 0x24
60308578:	e5970000 	ldr	r0, [r7]
6030857c:	e3e01000 	mvn	r1, #0
60308580:	eb0014b7 	bl	6030d864 <rtos_sema_take>
60308584:	e5d43004 	ldrb	r3, [r4, #4]
60308588:	e3530000 	cmp	r3, #0
6030858c:	0afffff9 	beq	60308578 <shell_task_ram+0x70>
60308590:	e1a0000b 	mov	r0, fp
60308594:	eb00006e 	bl	60308754 <shell_get_argc>
60308598:	e1a09000 	mov	r9, r0
6030859c:	e1a0000b 	mov	r0, fp
603085a0:	e58d900c 	str	r9, [sp, #12]
603085a4:	eb000085 	bl	603087c0 <shell_get_argv>
603085a8:	e594a010 	ldr	sl, [r4, #16]
603085ac:	e5945014 	ldr	r5, [r4, #20]
603085b0:	e5906000 	ldr	r6, [r0]
603085b4:	e3550000 	cmp	r5, #0
603085b8:	13a09000 	movne	r9, #0
603085bc:	e58d0010 	str	r0, [sp, #16]
603085c0:	1a000002 	bne	603085d0 <shell_task_ram+0xc8>
603085c4:	ea000019 	b	60308630 <shell_task_ram+0x128>
603085c8:	e1550009 	cmp	r5, r9
603085cc:	0a000017 	beq	60308630 <shell_task_ram+0x128>
603085d0:	e79a1209 	ldr	r1, [sl, r9, lsl #4]
603085d4:	e1a00006 	mov	r0, r6
603085d8:	e12fff38 	blx	r8
603085dc:	e08a1209 	add	r1, sl, r9, lsl #4
603085e0:	e3500000 	cmp	r0, #0
603085e4:	e2899001 	add	r9, r9, #1
603085e8:	1afffff6 	bne	603085c8 <shell_task_ram+0xc0>
603085ec:	e5913008 	ldr	r3, [r1, #8]
603085f0:	e3530000 	cmp	r3, #0
603085f4:	0a00000d 	beq	60308630 <shell_task_ram+0x128>
603085f8:	e59d200c 	ldr	r2, [sp, #12]
603085fc:	e2420001 	sub	r0, r2, #1
60308600:	e59d2010 	ldr	r2, [sp, #16]
60308604:	e6ff0070 	uxth	r0, r0
60308608:	e2821004 	add	r1, r2, #4
6030860c:	e12fff33 	blx	r3
60308610:	e59d3018 	ldr	r3, [sp, #24]
60308614:	e59d0014 	ldr	r0, [sp, #20]
60308618:	e3a02000 	mov	r2, #0
6030861c:	e3a01080 	mov	r1, #128	; 0x80
60308620:	e12fff33 	blx	r3
60308624:	e3a03000 	mov	r3, #0
60308628:	e5c43004 	strb	r3, [r4, #4]
6030862c:	eaffffd1 	b	60308578 <shell_task_ram+0x70>
60308630:	e59d5020 	ldr	r5, [sp, #32]
60308634:	e59d301c 	ldr	r3, [sp, #28]
60308638:	e1a01005 	mov	r1, r5
6030863c:	e3a02045 	mov	r2, #69	; 0x45
60308640:	e3a00002 	mov	r0, #2
60308644:	e58db000 	str	fp, [sp]
60308648:	eb000604 	bl	60309e60 <rtk_log_write_nano>
6030864c:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
60308650:	e3a02045 	mov	r2, #69	; 0x45
60308654:	e1a01005 	mov	r1, r5
60308658:	e3a00002 	mov	r0, #2
6030865c:	eb0005ff 	bl	60309e60 <rtk_log_write_nano>
60308660:	eaffffea 	b	60308610 <shell_task_ram+0x108>

60308664 <shell_give_sema>:
60308664:	e3033228 	movw	r3, #12840	; 0x3228
60308668:	e3463032 	movt	r3, #24626	; 0x6032
6030866c:	e5933020 	ldr	r3, [r3, #32]
60308670:	e3530000 	cmp	r3, #0
60308674:	012fff1e 	bxeq	lr
60308678:	e3033164 	movw	r3, #12644	; 0x3164
6030867c:	e3463032 	movt	r3, #24626	; 0x6032
60308680:	e5930000 	ldr	r0, [r3]
60308684:	ea00149f 	b	6030d908 <rtos_sema_give>

60308688 <shell_init_ram>:
60308688:	e92d4010 	push	{r4, lr}
6030868c:	e3032228 	movw	r2, #12840	; 0x3228
60308690:	e3462032 	movt	r2, #24626	; 0x6032
60308694:	e24dd008 	sub	sp, sp, #8
60308698:	e3050c54 	movw	r0, #23636	; 0x5c54
6030869c:	e3460031 	movt	r0, #24625	; 0x6031
603086a0:	e3053cb4 	movw	r3, #23732	; 0x5cb4
603086a4:	e3463031 	movt	r3, #24625	; 0x6031
603086a8:	e0431000 	sub	r1, r3, r0
603086ac:	e5820010 	str	r0, [r2, #16]
603086b0:	e3a04000 	mov	r4, #0
603086b4:	e3030164 	movw	r0, #12644	; 0x3164
603086b8:	e3460032 	movt	r0, #24626	; 0x6032
603086bc:	e3a03001 	mov	r3, #1
603086c0:	e1a01221 	lsr	r1, r1, #4
603086c4:	e5821014 	str	r1, [r2, #20]
603086c8:	e5c24004 	strb	r4, [r2, #4]
603086cc:	e3081664 	movw	r1, #34404	; 0x8664
603086d0:	e3461030 	movt	r1, #24624	; 0x6030
603086d4:	e5c23005 	strb	r3, [r2, #5]
603086d8:	e582101c 	str	r1, [r2, #28]
603086dc:	eb001452 	bl	6030d82c <rtos_sema_create_binary>
603086e0:	e3a02005 	mov	r2, #5
603086e4:	e300180c 	movw	r1, #2060	; 0x80c
603086e8:	e58d2004 	str	r2, [sp, #4]
603086ec:	e58d1000 	str	r1, [sp]
603086f0:	e1a03004 	mov	r3, r4
603086f4:	e1a00004 	mov	r0, r4
603086f8:	e3082508 	movw	r2, #34056	; 0x8508
603086fc:	e3462030 	movt	r2, #24624	; 0x6030
60308700:	e3041740 	movw	r1, #18240	; 0x4740
60308704:	e3461031 	movt	r1, #24625	; 0x6031
60308708:	eb0014b2 	bl	6030d9d8 <rtos_task_create>
6030870c:	e1500004 	cmp	r0, r4
60308710:	1a000001 	bne	6030871c <shell_init_ram+0x94>
60308714:	e28dd008 	add	sp, sp, #8
60308718:	e8bd8010 	pop	{r4, pc}
6030871c:	e304074c 	movw	r0, #18252	; 0x474c
60308720:	e3460031 	movt	r0, #24625	; 0x6031
60308724:	e28dd008 	add	sp, sp, #8
60308728:	e8bd4010 	pop	{r4, lr}
6030872c:	ea002bd5 	b	60313688 <DiagPrintf>

60308730 <shell_array_init>:
60308730:	e3510000 	cmp	r1, #0
60308734:	012fff1e 	bxeq	lr
60308738:	e2411001 	sub	r1, r1, #1
6030873c:	e2403001 	sub	r3, r0, #1
60308740:	e6e00071 	uxtab	r0, r0, r1
60308744:	e5e32001 	strb	r2, [r3, #1]!
60308748:	e1530000 	cmp	r3, r0
6030874c:	1afffffc 	bne	60308744 <shell_array_init+0x14>
60308750:	e12fff1e 	bx	lr

60308754 <shell_get_argc>:
60308754:	e1a03000 	mov	r3, r0
60308758:	e5d00000 	ldrb	r0, [r0]
6030875c:	e3500000 	cmp	r0, #0
60308760:	012fff1e 	bxeq	lr
60308764:	e3a02000 	mov	r2, #0
60308768:	ea000001 	b	60308774 <shell_get_argc+0x20>
6030876c:	e3500000 	cmp	r0, #0
60308770:	0a00000d 	beq	603087ac <shell_get_argc+0x58>
60308774:	e3500020 	cmp	r0, #32
60308778:	05d30001 	ldrbeq	r0, [r3, #1]
6030877c:	02833001 	addeq	r3, r3, #1
60308780:	0afffff9 	beq	6030876c <shell_get_argc+0x18>
60308784:	e5d30000 	ldrb	r0, [r3]
60308788:	e2822001 	add	r2, r2, #1
6030878c:	e31000df 	tst	r0, #223	; 0xdf
60308790:	e6ff2072 	uxth	r2, r2
60308794:	0afffff4 	beq	6030876c <shell_get_argc+0x18>
60308798:	e5f30001 	ldrb	r0, [r3, #1]!
6030879c:	e31000df 	tst	r0, #223	; 0xdf
603087a0:	1afffffc 	bne	60308798 <shell_get_argc+0x44>
603087a4:	e3500000 	cmp	r0, #0
603087a8:	1afffff1 	bne	60308774 <shell_get_argc+0x20>
603087ac:	e352000f 	cmp	r2, #15
603087b0:	31a00002 	movcc	r0, r2
603087b4:	23a0000f 	movcs	r0, #15
603087b8:	e6ef0070 	uxtb	r0, r0
603087bc:	e12fff1e 	bx	lr

603087c0 <shell_get_argv>:
603087c0:	e59f3080 	ldr	r3, [pc, #128]	; 60308848 <shell_get_argv+0x88>
603087c4:	e3a01000 	mov	r1, #0
603087c8:	e2832001 	add	r2, r3, #1
603087cc:	e283c040 	add	ip, r3, #64	; 0x40
603087d0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
603087d4:	e5e31001 	strb	r1, [r3, #1]!
603087d8:	e153000c 	cmp	r3, ip
603087dc:	1afffffc 	bne	603087d4 <shell_get_argv+0x14>
603087e0:	e59fe064 	ldr	lr, [pc, #100]	; 6030884c <shell_get_argv+0x8c>
603087e4:	e3a0c000 	mov	ip, #0
603087e8:	e5d03000 	ldrb	r3, [r0]
603087ec:	e3530000 	cmp	r3, #0
603087f0:	0a000011 	beq	6030883c <shell_get_argv+0x7c>
603087f4:	e4820004 	str	r0, [r2], #4
603087f8:	e5d03000 	ldrb	r3, [r0]
603087fc:	e31300df 	tst	r3, #223	; 0xdf
60308800:	0a000002 	beq	60308810 <shell_get_argv+0x50>
60308804:	e5f03001 	ldrb	r3, [r0, #1]!
60308808:	e31300df 	tst	r3, #223	; 0xdf
6030880c:	1afffffc 	bne	60308804 <shell_get_argv+0x44>
60308810:	e1a03000 	mov	r3, r0
60308814:	e4c3c001 	strb	ip, [r3], #1
60308818:	e5d01001 	ldrb	r1, [r0, #1]
6030881c:	e1a00003 	mov	r0, r3
60308820:	e3510020 	cmp	r1, #32
60308824:	1a000002 	bne	60308834 <shell_get_argv+0x74>
60308828:	e5f03001 	ldrb	r3, [r0, #1]!
6030882c:	e3530020 	cmp	r3, #32
60308830:	0afffffc 	beq	60308828 <shell_get_argv+0x68>
60308834:	e15e0002 	cmp	lr, r2
60308838:	1affffea 	bne	603087e8 <shell_get_argv+0x28>
6030883c:	e3030168 	movw	r0, #12648	; 0x3168
60308840:	e3460032 	movt	r0, #24626	; 0x6032
60308844:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
60308848:	60323167 	.word	0x60323167
6030884c:	603231a8 	.word	0x603231a8

60308850 <shell_init_rom>:
60308850:	e92d4030 	push	{r4, r5, lr}
60308854:	e303e1a8 	movw	lr, #12712	; 0x31a8
60308858:	e346e032 	movt	lr, #24626	; 0x6032
6030885c:	e24dd00c 	sub	sp, sp, #12
60308860:	e1a05000 	mov	r5, r0
60308864:	e1a0300e 	mov	r3, lr
60308868:	e28ec07f 	add	ip, lr, #127	; 0x7f
6030886c:	e3a02000 	mov	r2, #0
60308870:	e5ce2000 	strb	r2, [lr]
60308874:	e5e32001 	strb	r2, [r3, #1]!
60308878:	e153000c 	cmp	r3, ip
6030887c:	1afffffc 	bne	60308874 <shell_init_rom+0x24>
60308880:	e303324c 	movw	r3, #12876	; 0x324c
60308884:	e3463032 	movt	r3, #24626	; 0x6032
60308888:	e283c07f 	add	ip, r3, #127	; 0x7f
6030888c:	e5c32000 	strb	r2, [r3]
60308890:	e3a02000 	mov	r2, #0
60308894:	e5e32001 	strb	r2, [r3, #1]!
60308898:	e153000c 	cmp	r3, ip
6030889c:	1afffffc 	bne	60308894 <shell_init_rom+0x44>
603088a0:	e3034228 	movw	r4, #12840	; 0x3228
603088a4:	e3464032 	movt	r4, #24626	; 0x6032
603088a8:	e3033688 	movw	r3, #13960	; 0x3688
603088ac:	e3463031 	movt	r3, #24625	; 0x6031
603088b0:	e5c42000 	strb	r2, [r4]
603088b4:	e3550000 	cmp	r5, #0
603088b8:	e5c42001 	strb	r2, [r4, #1]
603088bc:	e5c42002 	strb	r2, [r4, #2]
603088c0:	e5c42003 	strb	r2, [r4, #3]
603088c4:	e5c42006 	strb	r2, [r4, #6]
603088c8:	e584e008 	str	lr, [r4, #8]
603088cc:	e584300c 	str	r3, [r4, #12]
603088d0:	0a000007 	beq	603088f4 <shell_init_rom+0xa4>
603088d4:	e5841010 	str	r1, [r4, #16]
603088d8:	e5845014 	str	r5, [r4, #20]
603088dc:	e3a03000 	mov	r3, #0
603088e0:	e5843020 	str	r3, [r4, #32]
603088e4:	e5c43004 	strb	r3, [r4, #4]
603088e8:	e5c43005 	strb	r3, [r4, #5]
603088ec:	e28dd00c 	add	sp, sp, #12
603088f0:	e8bd8030 	pop	{r4, r5, pc}
603088f4:	e28d0004 	add	r0, sp, #4
603088f8:	e3083468 	movw	r3, #33896	; 0x8468
603088fc:	e3463030 	movt	r3, #24624	; 0x6030
60308900:	e58d5004 	str	r5, [sp, #4]
60308904:	e12fff33 	blx	r3
60308908:	e59d3004 	ldr	r3, [sp, #4]
6030890c:	e5843010 	str	r3, [r4, #16]
60308910:	e5840014 	str	r0, [r4, #20]
60308914:	eafffff0 	b	603088dc <shell_init_rom+0x8c>

60308918 <ipc_table_init>:
60308918:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030891c:	e3053d08 	movw	r3, #23816	; 0x5d08
60308920:	e3463031 	movt	r3, #24625	; 0x6031
60308924:	e3054cb4 	movw	r4, #23732	; 0x5cb4
60308928:	e3464031 	movt	r4, #24625	; 0x6031
6030892c:	e0433004 	sub	r3, r3, r4
60308930:	e3042925 	movw	r2, #18725	; 0x4925
60308934:	e3422492 	movt	r2, #9362	; 0x2492
60308938:	e1a07123 	lsr	r7, r3, #2
6030893c:	e24dd00c 	sub	sp, sp, #12
60308940:	e353001b 	cmp	r3, #27
60308944:	e0872792 	umull	r2, r7, r2, r7
60308948:	9a00003b 	bls	60308a3c <ipc_table_init+0x124>
6030894c:	e3a0ac86 	mov	sl, #34304	; 0x8600
60308950:	e344a200 	movt	sl, #16896	; 0x4200
60308954:	e3049768 	movw	r9, #18280	; 0x4768
60308958:	e3469031 	movt	r9, #24625	; 0x6031
6030895c:	e3048790 	movw	r8, #18320	; 0x4790
60308960:	e3468031 	movt	r8, #24625	; 0x6031
60308964:	e1a06000 	mov	r6, r0
60308968:	e3a05000 	mov	r5, #0
6030896c:	ea000014 	b	603089c4 <ipc_table_init+0xac>
60308970:	e3a01c05 	mov	r1, #1280	; 0x500
60308974:	e3441100 	movt	r1, #16640	; 0x4100
60308978:	e1560001 	cmp	r6, r1
6030897c:	0a00001c 	beq	603089f4 <ipc_table_init+0xdc>
60308980:	e3520000 	cmp	r2, #0
60308984:	13530020 	cmpne	r3, #32
60308988:	1a000000 	bne	60308990 <ipc_table_init+0x78>
6030898c:	e28bb008 	add	fp, fp, #8
60308990:	e1a00006 	mov	r0, r6
60308994:	eb000167 	bl	60308f38 <IPC_IERGet>
60308998:	e3a03001 	mov	r3, #1
6030899c:	e0103b13 	ands	r3, r0, r3, lsl fp
603089a0:	1a00002d 	bne	60308a5c <ipc_table_init+0x144>
603089a4:	e1c420dc 	ldrd	r2, [r4, #12]
603089a8:	e6ef107b 	uxtb	r1, fp
603089ac:	e1a00006 	mov	r0, r6
603089b0:	eb00017c 	bl	60308fa8 <IPC_INTUserHandler>
603089b4:	e2855001 	add	r5, r5, #1
603089b8:	e284401c 	add	r4, r4, #28
603089bc:	e1570005 	cmp	r7, r5
603089c0:	9a00001d 	bls	60308a3c <ipc_table_init+0x124>
603089c4:	e5943014 	ldr	r3, [r4, #20]
603089c8:	e594b018 	ldr	fp, [r4, #24]
603089cc:	e3c32010 	bic	r2, r3, #16
603089d0:	e3530021 	cmp	r3, #33	; 0x21
603089d4:	13530000 	cmpne	r3, #0
603089d8:	0affffe4 	beq	60308970 <ipc_table_init+0x58>
603089dc:	e3520001 	cmp	r2, #1
603089e0:	1a000017 	bne	60308a44 <ipc_table_init+0x12c>
603089e4:	e3a02d16 	mov	r2, #1408	; 0x580
603089e8:	e3442100 	movt	r2, #16640	; 0x4100
603089ec:	e1560002 	cmp	r6, r2
603089f0:	1affffe6 	bne	60308990 <ipc_table_init+0x78>
603089f4:	e3530010 	cmp	r3, #16
603089f8:	13530001 	cmpne	r3, #1
603089fc:	93a03018 	movls	r3, #24
60308a00:	83a03010 	movhi	r3, #16
60308a04:	e1a00006 	mov	r0, r6
60308a08:	e08bb003 	add	fp, fp, r3
60308a0c:	eb000149 	bl	60308f38 <IPC_IERGet>
60308a10:	e3a03001 	mov	r3, #1
60308a14:	e0103b13 	ands	r3, r0, r3, lsl fp
60308a18:	1a00000f 	bne	60308a5c <ipc_table_init+0x144>
60308a1c:	e1c420d4 	ldrd	r2, [r4, #4]
60308a20:	e6ef107b 	uxtb	r1, fp
60308a24:	e1a00006 	mov	r0, r6
60308a28:	e2855001 	add	r5, r5, #1
60308a2c:	eb00015d 	bl	60308fa8 <IPC_INTUserHandler>
60308a30:	e284401c 	add	r4, r4, #28
60308a34:	e1570005 	cmp	r7, r5
60308a38:	8affffe1 	bhi	603089c4 <ipc_table_init+0xac>
60308a3c:	e28dd00c 	add	sp, sp, #12
60308a40:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
60308a44:	e2432010 	sub	r2, r3, #16
60308a48:	e3d22010 	bics	r2, r2, #16
60308a4c:	1affffd8 	bne	603089b4 <ipc_table_init+0x9c>
60308a50:	e156000a 	cmp	r6, sl
60308a54:	1affffcc 	bne	6030898c <ipc_table_init+0x74>
60308a58:	eaffffe5 	b	603089f4 <ipc_table_init+0xdc>
60308a5c:	e1a03009 	mov	r3, r9
60308a60:	e3a02045 	mov	r2, #69	; 0x45
60308a64:	e1a01008 	mov	r1, r8
60308a68:	e3a00002 	mov	r0, #2
60308a6c:	e58db000 	str	fp, [sp]
60308a70:	eb0004c6 	bl	60309d90 <rtk_log_write>
60308a74:	eaffffce 	b	603089b4 <ipc_table_init+0x9c>

60308a78 <IPC_TXHandler>:
60308a78:	e3a03902 	mov	r3, #32768	; 0x8000
60308a7c:	e3443200 	movt	r3, #16896	; 0x4200
60308a80:	e92d4010 	push	{r4, lr}
60308a84:	e1a04002 	mov	r4, r2
60308a88:	e593027c 	ldr	r0, [r3, #636]	; 0x27c
60308a8c:	e7e10350 	ubfx	r0, r0, #6, #2
60308a90:	eb000152 	bl	60308fe0 <IPC_GetDevById>
60308a94:	e3a02000 	mov	r2, #0
60308a98:	e6ef1074 	uxtb	r1, r4
60308a9c:	eb00011d 	bl	60308f18 <IPC_INTConfig>
60308aa0:	e30332cc 	movw	r3, #13004	; 0x32cc
60308aa4:	e3463032 	movt	r3, #24626	; 0x6032
60308aa8:	e7930104 	ldr	r0, [r3, r4, lsl #2]
60308aac:	e3500000 	cmp	r0, #0
60308ab0:	08bd8010 	popeq	{r4, pc}
60308ab4:	e8bd4010 	pop	{r4, lr}
60308ab8:	ea001392 	b	6030d908 <rtos_sema_give>

60308abc <IPC_wait_idle>:
60308abc:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60308ac0:	e1a04000 	mov	r4, r0
60308ac4:	e1a05001 	mov	r5, r1
60308ac8:	eb0009a6 	bl	6030b168 <CPU_InInterrupt>
60308acc:	e3500000 	cmp	r0, #0
60308ad0:	1a000015 	bne	60308b2c <IPC_wait_idle+0x70>
60308ad4:	e3033398 	movw	r3, #13208	; 0x3398
60308ad8:	e3463032 	movt	r3, #24626	; 0x6032
60308adc:	e7933105 	ldr	r3, [r3, r5, lsl #2]
60308ae0:	e3530000 	cmp	r3, #0
60308ae4:	0a000010 	beq	60308b2c <IPC_wait_idle+0x70>
60308ae8:	e30362cc 	movw	r6, #13004	; 0x32cc
60308aec:	e3466032 	movt	r6, #24626	; 0x6032
60308af0:	e7963105 	ldr	r3, [r6, r5, lsl #2]
60308af4:	e3530000 	cmp	r3, #0
60308af8:	0a000020 	beq	60308b80 <IPC_wait_idle+0xc4>
60308afc:	e6ef7075 	uxtb	r7, r5
60308b00:	e3a02001 	mov	r2, #1
60308b04:	e1a01007 	mov	r1, r7
60308b08:	e1a00004 	mov	r0, r4
60308b0c:	eb000101 	bl	60308f18 <IPC_INTConfig>
60308b10:	e7960105 	ldr	r0, [r6, r5, lsl #2]
60308b14:	e3e01000 	mvn	r1, #0
60308b18:	eb001351 	bl	6030d864 <rtos_sema_take>
60308b1c:	e3500000 	cmp	r0, #0
60308b20:	1a000019 	bne	60308b8c <IPC_wait_idle+0xd0>
60308b24:	e3a00000 	mov	r0, #0
60308b28:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60308b2c:	e3a02001 	mov	r2, #1
60308b30:	e3093680 	movw	r3, #38528	; 0x9680
60308b34:	e3403098 	movt	r3, #152	; 0x98
60308b38:	e1a01512 	lsl	r1, r2, r5
60308b3c:	ea000001 	b	60308b48 <IPC_wait_idle+0x8c>
60308b40:	e2533001 	subs	r3, r3, #1
60308b44:	0a000004 	beq	60308b5c <IPC_wait_idle+0xa0>
60308b48:	e5942000 	ldr	r2, [r4]
60308b4c:	e1120001 	tst	r2, r1
60308b50:	1afffffa 	bne	60308b40 <IPC_wait_idle+0x84>
60308b54:	e3a00000 	mov	r0, #0
60308b58:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60308b5c:	e3a02045 	mov	r2, #69	; 0x45
60308b60:	e3a00002 	mov	r0, #2
60308b64:	e3043794 	movw	r3, #18324	; 0x4794
60308b68:	e3463031 	movt	r3, #24625	; 0x6031
60308b6c:	e3041790 	movw	r1, #18320	; 0x4790
60308b70:	e3461031 	movt	r1, #24625	; 0x6031
60308b74:	eb0004b9 	bl	60309e60 <rtk_log_write_nano>
60308b78:	e3a00002 	mov	r0, #2
60308b7c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60308b80:	e0860105 	add	r0, r6, r5, lsl #2
60308b84:	eb001328 	bl	6030d82c <rtos_sema_create_binary>
60308b88:	eaffffdb 	b	60308afc <IPC_wait_idle+0x40>
60308b8c:	e3a02045 	mov	r2, #69	; 0x45
60308b90:	e3a00002 	mov	r0, #2
60308b94:	e30437ac 	movw	r3, #18348	; 0x47ac
60308b98:	e3463031 	movt	r3, #24625	; 0x6031
60308b9c:	e3041790 	movw	r1, #18320	; 0x4790
60308ba0:	e3461031 	movt	r1, #24625	; 0x6031
60308ba4:	eb0004ad 	bl	60309e60 <rtk_log_write_nano>
60308ba8:	e1a00004 	mov	r0, r4
60308bac:	e3a02000 	mov	r2, #0
60308bb0:	e1a01007 	mov	r1, r7
60308bb4:	eb0000d7 	bl	60308f18 <IPC_INTConfig>
60308bb8:	e3a00003 	mov	r0, #3
60308bbc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

60308bc0 <ipc_send_message>:
60308bc0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
60308bc4:	e3d03011 	bics	r3, r0, #17
60308bc8:	e1a05000 	mov	r5, r0
60308bcc:	e1a04001 	mov	r4, r1
60308bd0:	e1a08002 	mov	r8, r2
60308bd4:	0a000002 	beq	60308be4 <ipc_send_message+0x24>
60308bd8:	e2403020 	sub	r3, r0, #32
60308bdc:	e3530001 	cmp	r3, #1
60308be0:	8a00003a 	bhi	60308cd0 <ipc_send_message+0x110>
60308be4:	e3540007 	cmp	r4, #7
60308be8:	8a000034 	bhi	60308cc0 <ipc_send_message+0x100>
60308bec:	e3550021 	cmp	r5, #33	; 0x21
60308bf0:	83a06000 	movhi	r6, #0
60308bf4:	93043880 	movwls	r3, #18560	; 0x4880
60308bf8:	9304285c 	movwls	r2, #18524	; 0x485c
60308bfc:	93463031 	movtls	r3, #24625	; 0x6031
60308c00:	93462031 	movtls	r2, #24625	; 0x6031
60308c04:	81a01004 	movhi	r1, r4
60308c08:	97936105 	ldrls	r6, [r3, r5, lsl #2]
60308c0c:	97d21005 	ldrbls	r1, [r2, r5]
60308c10:	e3a09001 	mov	r9, #1
60308c14:	90811004 	addls	r1, r1, r4
60308c18:	e5963000 	ldr	r3, [r6]
60308c1c:	e1a07119 	lsl	r7, r9, r1
60308c20:	e1130007 	tst	r3, r7
60308c24:	1a00001f 	bne	60308ca8 <ipc_send_message+0xe8>
60308c28:	e3580000 	cmp	r8, #0
60308c2c:	0a00001a 	beq	60308c9c <ipc_send_message+0xdc>
60308c30:	e7e30255 	ubfx	r0, r5, #4, #4
60308c34:	e205500f 	and	r5, r5, #15
60308c38:	e0855080 	add	r5, r5, r0, lsl #1
60308c3c:	e30f0d00 	movw	r0, #64768	; 0xfd00
60308c40:	e3420301 	movt	r0, #8961	; 0x2301
60308c44:	e0844185 	add	r4, r4, r5, lsl #3
60308c48:	e1a01008 	mov	r1, r8
60308c4c:	e0804204 	add	r4, r0, r4, lsl #4
60308c50:	e3a02010 	mov	r2, #16
60308c54:	e1a00004 	mov	r0, r4
60308c58:	e30c3bec 	movw	r3, #52204	; 0xcbec
60308c5c:	e3463030 	movt	r3, #24624	; 0x6030
60308c60:	e12fff33 	blx	r3
60308c64:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
60308c68:	e3130004 	tst	r3, #4
60308c6c:	0a00000a 	beq	60308c9c <ipc_send_message+0xdc>
60308c70:	e284300f 	add	r3, r4, #15
60308c74:	e3c3303f 	bic	r3, r3, #63	; 0x3f
60308c78:	e3c4003f 	bic	r0, r4, #63	; 0x3f
60308c7c:	e2833040 	add	r3, r3, #64	; 0x40
60308c80:	e1500003 	cmp	r0, r3
60308c84:	2a000003 	bcs	60308c98 <ipc_send_message+0xd8>
60308c88:	ee070f3a 	mcr	15, 0, r0, cr7, cr10, {1}
60308c8c:	e2800040 	add	r0, r0, #64	; 0x40
60308c90:	e1530000 	cmp	r3, r0
60308c94:	8afffffb 	bhi	60308c88 <ipc_send_message+0xc8>
60308c98:	f57ff05f 	dmb	sy
60308c9c:	e3a00000 	mov	r0, #0
60308ca0:	e5867000 	str	r7, [r6]
60308ca4:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
60308ca8:	e1a00006 	mov	r0, r6
60308cac:	ebffff82 	bl	60308abc <IPC_wait_idle>
60308cb0:	e3500000 	cmp	r0, #0
60308cb4:	0affffdb 	beq	60308c28 <ipc_send_message+0x68>
60308cb8:	e1a00009 	mov	r0, r9
60308cbc:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
60308cc0:	e30407cc 	movw	r0, #18380	; 0x47cc
60308cc4:	e3460031 	movt	r0, #24625	; 0x6031
60308cc8:	e3a010b6 	mov	r1, #182	; 0xb6
60308ccc:	eb002a97 	bl	60313730 <io_assert_failed>
60308cd0:	e30407cc 	movw	r0, #18380	; 0x47cc
60308cd4:	e3460031 	movt	r0, #24625	; 0x6031
60308cd8:	e3a010b5 	mov	r1, #181	; 0xb5
60308cdc:	eb002a93 	bl	60313730 <io_assert_failed>

60308ce0 <ipc_get_message>:
60308ce0:	e200300f 	and	r3, r0, #15
60308ce4:	e7e30250 	ubfx	r0, r0, #4, #4
60308ce8:	e0833080 	add	r3, r3, r0, lsl #1
60308cec:	e30f0d00 	movw	r0, #64768	; 0xfd00
60308cf0:	e3420301 	movt	r0, #8961	; 0x2301
60308cf4:	e0811183 	add	r1, r1, r3, lsl #3
60308cf8:	e0800201 	add	r0, r0, r1, lsl #4
60308cfc:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
60308d00:	e3130004 	tst	r3, #4
60308d04:	012fff1e 	bxeq	lr
60308d08:	e280200f 	add	r2, r0, #15
60308d0c:	e3c2203f 	bic	r2, r2, #63	; 0x3f
60308d10:	e3c0303f 	bic	r3, r0, #63	; 0x3f
60308d14:	e2822040 	add	r2, r2, #64	; 0x40
60308d18:	e1530002 	cmp	r3, r2
60308d1c:	2a000003 	bcs	60308d30 <ipc_get_message+0x50>
60308d20:	ee073f36 	mcr	15, 0, r3, cr7, cr6, {1}
60308d24:	e2833040 	add	r3, r3, #64	; 0x40
60308d28:	e1520003 	cmp	r2, r3
60308d2c:	8afffffb 	bhi	60308d20 <ipc_get_message+0x40>
60308d30:	f57ff05f 	dmb	sy
60308d34:	e12fff1e 	bx	lr

60308d38 <IPC_patch_function>:
60308d38:	e3032310 	movw	r2, #13072	; 0x3310
60308d3c:	e3462032 	movt	r2, #24626	; 0x6032
60308d40:	e3033314 	movw	r3, #13076	; 0x3314
60308d44:	e3463032 	movt	r3, #24626	; 0x6032
60308d48:	e5820000 	str	r0, [r2]
60308d4c:	e5831000 	str	r1, [r3]
60308d50:	e12fff1e 	bx	lr

60308d54 <IPC_SEMTake>:
60308d54:	e350000f 	cmp	r0, #15
60308d58:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60308d5c:	8a000042 	bhi	60308e6c <IPC_SEMTake+0x118>
60308d60:	e3033310 	movw	r3, #13072	; 0x3310
60308d64:	e3463032 	movt	r3, #24626	; 0x6032
60308d68:	e1a08000 	mov	r8, r0
60308d6c:	e1a04001 	mov	r4, r1
60308d70:	e5933000 	ldr	r3, [r3]
60308d74:	e3530000 	cmp	r3, #0
60308d78:	0a000001 	beq	60308d84 <IPC_SEMTake+0x30>
60308d7c:	e3a00009 	mov	r0, #9
60308d80:	e12fff33 	blx	r3
60308d84:	e3023790 	movw	r3, #10128	; 0x2790
60308d88:	e3463031 	movt	r3, #24625	; 0x6031
60308d8c:	e12fff33 	blx	r3
60308d90:	e3500002 	cmp	r0, #2
60308d94:	9a000019 	bls	60308e00 <IPC_SEMTake+0xac>
60308d98:	e30250f0 	movw	r5, #8432	; 0x20f0
60308d9c:	e3415080 	movt	r5, #4224	; 0x1080
60308da0:	e0885005 	add	r5, r8, r5
60308da4:	e1a05105 	lsl	r5, r5, #2
60308da8:	e5953000 	ldr	r3, [r5]
60308dac:	e3530000 	cmp	r3, #0
60308db0:	0a00002b 	beq	60308e64 <IPC_SEMTake+0x110>
60308db4:	e3540000 	cmp	r4, #0
60308db8:	0a00000e 	beq	60308df8 <IPC_SEMTake+0xa4>
60308dbc:	e303630c 	movw	r6, #13068	; 0x330c
60308dc0:	e3466032 	movt	r6, #24626	; 0x6032
60308dc4:	ea000002 	b	60308dd4 <IPC_SEMTake+0x80>
60308dc8:	e5953000 	ldr	r3, [r5]
60308dcc:	e3530000 	cmp	r3, #0
60308dd0:	0a000023 	beq	60308e64 <IPC_SEMTake+0x110>
60308dd4:	e5963000 	ldr	r3, [r6]
60308dd8:	e3530000 	cmp	r3, #0
60308ddc:	0a000001 	beq	60308de8 <IPC_SEMTake+0x94>
60308de0:	e3a00001 	mov	r0, #1
60308de4:	e12fff33 	blx	r3
60308de8:	e3740001 	cmn	r4, #1
60308dec:	0afffff5 	beq	60308dc8 <IPC_SEMTake+0x74>
60308df0:	e2544001 	subs	r4, r4, #1
60308df4:	1afffff3 	bne	60308dc8 <IPC_SEMTake+0x74>
60308df8:	e3a00000 	mov	r0, #0
60308dfc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60308e00:	e3a03001 	mov	r3, #1
60308e04:	e3a06c82 	mov	r6, #33280	; 0x8200
60308e08:	e3446200 	movt	r6, #16896	; 0x4200
60308e0c:	e303730c 	movw	r7, #13068	; 0x330c
60308e10:	e3467032 	movt	r7, #24626	; 0x6032
60308e14:	e1a08813 	lsl	r8, r3, r8
60308e18:	ea000008 	b	60308e40 <IPC_SEMTake+0xec>
60308e1c:	e3540000 	cmp	r4, #0
60308e20:	0afffff4 	beq	60308df8 <IPC_SEMTake+0xa4>
60308e24:	e5973000 	ldr	r3, [r7]
60308e28:	e3530000 	cmp	r3, #0
60308e2c:	0a000001 	beq	60308e38 <IPC_SEMTake+0xe4>
60308e30:	e3a00001 	mov	r0, #1
60308e34:	e12fff33 	blx	r3
60308e38:	e2544001 	subs	r4, r4, #1
60308e3c:	0affffed 	beq	60308df8 <IPC_SEMTake+0xa4>
60308e40:	e1d63fb4 	ldrh	r3, [r6, #244]	; 0xf4
60308e44:	e1130008 	tst	r3, r8
60308e48:	e6ff3073 	uxth	r3, r3
60308e4c:	1afffff2 	bne	60308e1c <IPC_SEMTake+0xc8>
60308e50:	e1833008 	orr	r3, r3, r8
60308e54:	e3a00001 	mov	r0, #1
60308e58:	e6ff3073 	uxth	r3, r3
60308e5c:	e1c63fb4 	strh	r3, [r6, #244]	; 0xf4
60308e60:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60308e64:	e3a00001 	mov	r0, #1
60308e68:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60308e6c:	e30407cc 	movw	r0, #18380	; 0x47cc
60308e70:	e3460031 	movt	r0, #24625	; 0x6031
60308e74:	e3001116 	movw	r1, #278	; 0x116
60308e78:	eb002a2c 	bl	60313730 <io_assert_failed>

60308e7c <IPC_SEMFree>:
60308e7c:	e350000f 	cmp	r0, #15
60308e80:	e92d4010 	push	{r4, lr}
60308e84:	8a00001b 	bhi	60308ef8 <IPC_SEMFree+0x7c>
60308e88:	e3023790 	movw	r3, #10128	; 0x2790
60308e8c:	e3463031 	movt	r3, #24625	; 0x6031
60308e90:	e1a04000 	mov	r4, r0
60308e94:	e12fff33 	blx	r3
60308e98:	e3500002 	cmp	r0, #2
60308e9c:	8a00000e 	bhi	60308edc <IPC_SEMFree+0x60>
60308ea0:	e3a03c82 	mov	r3, #33280	; 0x8200
60308ea4:	e3443200 	movt	r3, #16896	; 0x4200
60308ea8:	e3a02001 	mov	r2, #1
60308eac:	e1d30fb4 	ldrh	r0, [r3, #244]	; 0xf4
60308eb0:	e1c04412 	bic	r4, r0, r2, lsl r4
60308eb4:	e1c34fb4 	strh	r4, [r3, #244]	; 0xf4
60308eb8:	e3033314 	movw	r3, #13076	; 0x3314
60308ebc:	e3463032 	movt	r3, #24626	; 0x6032
60308ec0:	e5933000 	ldr	r3, [r3]
60308ec4:	e3530000 	cmp	r3, #0
60308ec8:	0a000001 	beq	60308ed4 <IPC_SEMFree+0x58>
60308ecc:	e3a00009 	mov	r0, #9
60308ed0:	e12fff33 	blx	r3
60308ed4:	e3a00001 	mov	r0, #1
60308ed8:	e8bd8010 	pop	{r4, pc}
60308edc:	e30230f0 	movw	r3, #8432	; 0x20f0
60308ee0:	e3413080 	movt	r3, #4224	; 0x1080
60308ee4:	e0843003 	add	r3, r4, r3
60308ee8:	e3a02001 	mov	r2, #1
60308eec:	e1a03103 	lsl	r3, r3, #2
60308ef0:	e5832000 	str	r2, [r3]
60308ef4:	eaffffef 	b	60308eb8 <IPC_SEMFree+0x3c>
60308ef8:	e30407cc 	movw	r0, #18380	; 0x47cc
60308efc:	e3460031 	movt	r0, #24625	; 0x6031
60308f00:	e3a01f56 	mov	r1, #344	; 0x158
60308f04:	eb002a09 	bl	60313730 <io_assert_failed>

60308f08 <IPC_SEMDelayStub>:
60308f08:	e303330c 	movw	r3, #13068	; 0x330c
60308f0c:	e3463032 	movt	r3, #24626	; 0x6032
60308f10:	e5830000 	str	r0, [r3]
60308f14:	e12fff1e 	bx	lr

60308f18 <IPC_INTConfig>:
60308f18:	e3a03001 	mov	r3, #1
60308f1c:	e3520001 	cmp	r2, #1
60308f20:	e1a03113 	lsl	r3, r3, r1
60308f24:	e590100c 	ldr	r1, [r0, #12]
60308f28:	01813003 	orreq	r3, r1, r3
60308f2c:	11c13003 	bicne	r3, r1, r3
60308f30:	e580300c 	str	r3, [r0, #12]
60308f34:	e12fff1e 	bx	lr

60308f38 <IPC_IERGet>:
60308f38:	e590000c 	ldr	r0, [r0, #12]
60308f3c:	e12fff1e 	bx	lr

60308f40 <IPC_INTHandler>:
60308f40:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
60308f44:	e3039398 	movw	r9, #13208	; 0x3398
60308f48:	e3469032 	movt	r9, #24626	; 0x6032
60308f4c:	e5906008 	ldr	r6, [r0, #8]
60308f50:	e303a318 	movw	sl, #13080	; 0x3318
60308f54:	e346a032 	movt	sl, #24626	; 0x6032
60308f58:	e1a08000 	mov	r8, r0
60308f5c:	e3a04000 	mov	r4, #0
60308f60:	e3a07001 	mov	r7, #1
60308f64:	e1a05417 	lsl	r5, r7, r4
60308f68:	e1150006 	tst	r5, r6
60308f6c:	0a000008 	beq	60308f94 <IPC_INTHandler+0x54>
60308f70:	e7993104 	ldr	r3, [r9, r4, lsl #2]
60308f74:	e1a02004 	mov	r2, r4
60308f78:	e3530000 	cmp	r3, #0
60308f7c:	e1a01006 	mov	r1, r6
60308f80:	05885008 	streq	r5, [r8, #8]
60308f84:	0a000002 	beq	60308f94 <IPC_INTHandler+0x54>
60308f88:	e79a0104 	ldr	r0, [sl, r4, lsl #2]
60308f8c:	e12fff33 	blx	r3
60308f90:	e5885008 	str	r5, [r8, #8]
60308f94:	e2844001 	add	r4, r4, #1
60308f98:	e3540020 	cmp	r4, #32
60308f9c:	1afffff0 	bne	60308f64 <IPC_INTHandler+0x24>
60308fa0:	e3a00000 	mov	r0, #0
60308fa4:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

60308fa8 <IPC_INTUserHandler>:
60308fa8:	e3520000 	cmp	r2, #0
60308fac:	012fff1e 	bxeq	lr
60308fb0:	e303c398 	movw	ip, #13208	; 0x3398
60308fb4:	e346c032 	movt	ip, #24626	; 0x6032
60308fb8:	e351000f 	cmp	r1, #15
60308fbc:	e78c2101 	str	r2, [ip, r1, lsl #2]
60308fc0:	e3032318 	movw	r2, #13080	; 0x3318
60308fc4:	e3462032 	movt	r2, #24626	; 0x6032
60308fc8:	e7823101 	str	r3, [r2, r1, lsl #2]
60308fcc:	83a02001 	movhi	r2, #1
60308fd0:	8590300c 	ldrhi	r3, [r0, #12]
60308fd4:	81831112 	orrhi	r1, r3, r2, lsl r1
60308fd8:	8580100c 	strhi	r1, [r0, #12]
60308fdc:	e12fff1e 	bx	lr

60308fe0 <IPC_GetDevById>:
60308fe0:	e3500002 	cmp	r0, #2
60308fe4:	8a00000c 	bhi	6030901c <IPC_GetDevById+0x3c>
60308fe8:	e1a03000 	mov	r3, r0
60308fec:	e3500001 	cmp	r0, #1
60308ff0:	0a000006 	beq	60309010 <IPC_GetDevById+0x30>
60308ff4:	e3530002 	cmp	r3, #2
60308ff8:	e3a02c86 	mov	r2, #34304	; 0x8600
60308ffc:	e3442200 	movt	r2, #16896	; 0x4200
60309000:	e3a00d16 	mov	r0, #1408	; 0x580
60309004:	e3440100 	movt	r0, #16640	; 0x4100
60309008:	11a00002 	movne	r0, r2
6030900c:	e12fff1e 	bx	lr
60309010:	e3a00c05 	mov	r0, #1280	; 0x500
60309014:	e3440100 	movt	r0, #16640	; 0x4100
60309018:	e12fff1e 	bx	lr
6030901c:	e3040908 	movw	r0, #18696	; 0x4908
60309020:	e3460031 	movt	r0, #24625	; 0x6031
60309024:	e3a010bb 	mov	r1, #187	; 0xbb
60309028:	e92d4010 	push	{r4, lr}
6030902c:	eb0029bf 	bl	60313730 <io_assert_failed>

60309030 <OTP_Read8.part.0>:
60309030:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
60309034:	e3045998 	movw	r5, #18840	; 0x4998
60309038:	e3465031 	movt	r5, #24625	; 0x6031
6030903c:	e30449b4 	movw	r4, #18868	; 0x49b4
60309040:	e3464031 	movt	r4, #24625	; 0x6031
60309044:	e24dd00c 	sub	sp, sp, #12
60309048:	e1a08000 	mov	r8, r0
6030904c:	e1a09001 	mov	r9, r1
60309050:	ea000000 	b	60309058 <OTP_Read8.part.0+0x28>
60309054:	eb000381 	bl	60309e60 <rtk_log_write_nano>
60309058:	e3a01ffa 	mov	r1, #1000	; 0x3e8
6030905c:	e3a00002 	mov	r0, #2
60309060:	ebffff3b 	bl	60308d54 <IPC_SEMTake>
60309064:	e1a0c000 	mov	ip, r0
60309068:	e1a03005 	mov	r3, r5
6030906c:	e3a02045 	mov	r2, #69	; 0x45
60309070:	e1a01004 	mov	r1, r4
60309074:	e3a00002 	mov	r0, #2
60309078:	e35c0001 	cmp	ip, #1
6030907c:	1afffff4 	bne	60309054 <OTP_Read8.part.0+0x24>
60309080:	e3a03902 	mov	r3, #32768	; 0x8000
60309084:	e3443200 	movt	r3, #16896	; 0x4200
60309088:	e3a05442 	mov	r5, #1107296256	; 0x42000000
6030908c:	e5932000 	ldr	r2, [r3]
60309090:	e3120001 	tst	r2, #1
60309094:	05932000 	ldreq	r2, [r3]
60309098:	03822001 	orreq	r2, r2, #1
6030909c:	05832000 	streq	r2, [r3]
603090a0:	e1a03408 	lsl	r3, r8, #8
603090a4:	e5952014 	ldr	r2, [r5, #20]
603090a8:	e3c224ff 	bic	r2, r2, #-16777216	; 0xff000000
603090ac:	e5852014 	str	r2, [r5, #20]
603090b0:	e5853008 	str	r3, [r5, #8]
603090b4:	e5953008 	ldr	r3, [r5, #8]
603090b8:	e3530000 	cmp	r3, #0
603090bc:	ba00000f 	blt	60309100 <OTP_Read8.part.0+0xd0>
603090c0:	e30a6ffc 	movw	r6, #45052	; 0xaffc
603090c4:	e3466030 	movt	r6, #24624	; 0x6030
603090c8:	e3a04000 	mov	r4, #0
603090cc:	e3047e20 	movw	r7, #20000	; 0x4e20
603090d0:	ea000001 	b	603090dc <OTP_Read8.part.0+0xac>
603090d4:	e1540007 	cmp	r4, r7
603090d8:	0a000015 	beq	60309134 <OTP_Read8.part.0+0x104>
603090dc:	e3a00005 	mov	r0, #5
603090e0:	e12fff36 	blx	r6
603090e4:	e5953008 	ldr	r3, [r5, #8]
603090e8:	e2844001 	add	r4, r4, #1
603090ec:	e3530000 	cmp	r3, #0
603090f0:	aafffff7 	bge	603090d4 <OTP_Read8.part.0+0xa4>
603090f4:	e3043e20 	movw	r3, #20000	; 0x4e20
603090f8:	e1540003 	cmp	r4, r3
603090fc:	0a00000c 	beq	60309134 <OTP_Read8.part.0+0x104>
60309100:	e3a03442 	mov	r3, #1107296256	; 0x42000000
60309104:	e3a04000 	mov	r4, #0
60309108:	e5933008 	ldr	r3, [r3, #8]
6030910c:	e5c93000 	strb	r3, [r9]
60309110:	e3a02442 	mov	r2, #1107296256	; 0x42000000
60309114:	e3a00002 	mov	r0, #2
60309118:	e5923014 	ldr	r3, [r2, #20]
6030911c:	e3c334ff 	bic	r3, r3, #-16777216	; 0xff000000
60309120:	e5823014 	str	r3, [r2, #20]
60309124:	ebffff54 	bl	60308e7c <IPC_SEMFree>
60309128:	e1a00004 	mov	r0, r4
6030912c:	e28dd00c 	add	sp, sp, #12
60309130:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
60309134:	e3e04000 	mvn	r4, #0
60309138:	e3a02045 	mov	r2, #69	; 0x45
6030913c:	e5c94000 	strb	r4, [r9]
60309140:	e3a00002 	mov	r0, #2
60309144:	e58d8000 	str	r8, [sp]
60309148:	e30439b8 	movw	r3, #18872	; 0x49b8
6030914c:	e3463031 	movt	r3, #24625	; 0x6031
60309150:	e30419b4 	movw	r1, #18868	; 0x49b4
60309154:	e3461031 	movt	r1, #24625	; 0x6031
60309158:	eb000340 	bl	60309e60 <rtk_log_write_nano>
6030915c:	eaffffeb 	b	60309110 <OTP_Read8.part.0+0xe0>

60309160 <OTP_Read32.isra.0>:
60309160:	e92d4070 	push	{r4, r5, r6, lr}
60309164:	e3a03000 	mov	r3, #0
60309168:	e24dd008 	sub	sp, sp, #8
6030916c:	e1a06001 	mov	r6, r1
60309170:	e1a04000 	mov	r4, r0
60309174:	e1a05003 	mov	r5, r3
60309178:	e5813000 	str	r3, [r1]
6030917c:	e1a00004 	mov	r0, r4
60309180:	e28d1007 	add	r1, sp, #7
60309184:	e3540b02 	cmp	r4, #2048	; 0x800
60309188:	2a00000a 	bcs	603091b8 <OTP_Read32.isra.0+0x58>
6030918c:	ebffffa7 	bl	60309030 <OTP_Read8.part.0>
60309190:	e3700001 	cmn	r0, #1
60309194:	0a000007 	beq	603091b8 <OTP_Read32.isra.0+0x58>
60309198:	e5963000 	ldr	r3, [r6]
6030919c:	e5dd2007 	ldrb	r2, [sp, #7]
603091a0:	e2844001 	add	r4, r4, #1
603091a4:	e1833512 	orr	r3, r3, r2, lsl r5
603091a8:	e2855008 	add	r5, r5, #8
603091ac:	e3550020 	cmp	r5, #32
603091b0:	e5863000 	str	r3, [r6]
603091b4:	1afffff0 	bne	6030917c <OTP_Read32.isra.0+0x1c>
603091b8:	e28dd008 	add	sp, sp, #8
603091bc:	e8bd8070 	pop	{r4, r5, r6, pc}

603091c0 <OTP_ProgramMarginRead8.part.0>:
603091c0:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
603091c4:	e3045998 	movw	r5, #18840	; 0x4998
603091c8:	e3465031 	movt	r5, #24625	; 0x6031
603091cc:	e30449b4 	movw	r4, #18868	; 0x49b4
603091d0:	e3464031 	movt	r4, #24625	; 0x6031
603091d4:	e24dd00c 	sub	sp, sp, #12
603091d8:	e1a08000 	mov	r8, r0
603091dc:	e1a09001 	mov	r9, r1
603091e0:	ea000000 	b	603091e8 <OTP_ProgramMarginRead8.part.0+0x28>
603091e4:	eb00031d 	bl	60309e60 <rtk_log_write_nano>
603091e8:	e3a01ffa 	mov	r1, #1000	; 0x3e8
603091ec:	e3a00002 	mov	r0, #2
603091f0:	ebfffed7 	bl	60308d54 <IPC_SEMTake>
603091f4:	e1a0c000 	mov	ip, r0
603091f8:	e1a03005 	mov	r3, r5
603091fc:	e3a02045 	mov	r2, #69	; 0x45
60309200:	e1a01004 	mov	r1, r4
60309204:	e3a00002 	mov	r0, #2
60309208:	e35c0001 	cmp	ip, #1
6030920c:	1afffff4 	bne	603091e4 <OTP_ProgramMarginRead8.part.0+0x24>
60309210:	e3a03902 	mov	r3, #32768	; 0x8000
60309214:	e3443200 	movt	r3, #16896	; 0x4200
60309218:	e3a05442 	mov	r5, #1107296256	; 0x42000000
6030921c:	e5932000 	ldr	r2, [r3]
60309220:	e3120001 	tst	r2, #1
60309224:	05932000 	ldreq	r2, [r3]
60309228:	03822001 	orreq	r2, r2, #1
6030922c:	05832000 	streq	r2, [r3]
60309230:	e1a03408 	lsl	r3, r8, #8
60309234:	e5952014 	ldr	r2, [r5, #20]
60309238:	e3833601 	orr	r3, r3, #1048576	; 0x100000
6030923c:	e3c224ff 	bic	r2, r2, #-16777216	; 0xff000000
60309240:	e5852014 	str	r2, [r5, #20]
60309244:	e5853008 	str	r3, [r5, #8]
60309248:	e5953008 	ldr	r3, [r5, #8]
6030924c:	e3530000 	cmp	r3, #0
60309250:	ba00000f 	blt	60309294 <OTP_ProgramMarginRead8.part.0+0xd4>
60309254:	e30a6ffc 	movw	r6, #45052	; 0xaffc
60309258:	e3466030 	movt	r6, #24624	; 0x6030
6030925c:	e3a04000 	mov	r4, #0
60309260:	e3047e20 	movw	r7, #20000	; 0x4e20
60309264:	ea000001 	b	60309270 <OTP_ProgramMarginRead8.part.0+0xb0>
60309268:	e1540007 	cmp	r4, r7
6030926c:	0a000015 	beq	603092c8 <OTP_ProgramMarginRead8.part.0+0x108>
60309270:	e3a00005 	mov	r0, #5
60309274:	e12fff36 	blx	r6
60309278:	e5953008 	ldr	r3, [r5, #8]
6030927c:	e2844001 	add	r4, r4, #1
60309280:	e3530000 	cmp	r3, #0
60309284:	aafffff7 	bge	60309268 <OTP_ProgramMarginRead8.part.0+0xa8>
60309288:	e3043e20 	movw	r3, #20000	; 0x4e20
6030928c:	e1540003 	cmp	r4, r3
60309290:	0a00000c 	beq	603092c8 <OTP_ProgramMarginRead8.part.0+0x108>
60309294:	e3a03442 	mov	r3, #1107296256	; 0x42000000
60309298:	e3a04000 	mov	r4, #0
6030929c:	e5933008 	ldr	r3, [r3, #8]
603092a0:	e5c93000 	strb	r3, [r9]
603092a4:	e3a02442 	mov	r2, #1107296256	; 0x42000000
603092a8:	e3a00002 	mov	r0, #2
603092ac:	e5923014 	ldr	r3, [r2, #20]
603092b0:	e3c334ff 	bic	r3, r3, #-16777216	; 0xff000000
603092b4:	e5823014 	str	r3, [r2, #20]
603092b8:	ebfffeef 	bl	60308e7c <IPC_SEMFree>
603092bc:	e1a00004 	mov	r0, r4
603092c0:	e28dd00c 	add	sp, sp, #12
603092c4:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
603092c8:	e3e04000 	mvn	r4, #0
603092cc:	e3a02045 	mov	r2, #69	; 0x45
603092d0:	e5c94000 	strb	r4, [r9]
603092d4:	e3a00002 	mov	r0, #2
603092d8:	e58d8000 	str	r8, [sp]
603092dc:	e30439b8 	movw	r3, #18872	; 0x49b8
603092e0:	e3463031 	movt	r3, #24625	; 0x6031
603092e4:	e30419b4 	movw	r1, #18868	; 0x49b4
603092e8:	e3461031 	movt	r1, #24625	; 0x6031
603092ec:	eb0002db 	bl	60309e60 <rtk_log_write_nano>
603092f0:	eaffffeb 	b	603092a4 <OTP_ProgramMarginRead8.part.0+0xe4>

603092f4 <OTPGetCRC>:
603092f4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
603092f8:	e3a05442 	mov	r5, #1107296256	; 0x42000000
603092fc:	e3a03101 	mov	r3, #1073741824	; 0x40000000
60309300:	e5853034 	str	r3, [r5, #52]	; 0x34
60309304:	e5954000 	ldr	r4, [r5]
60309308:	e2144002 	ands	r4, r4, #2
6030930c:	1a00000b 	bne	60309340 <OTPGetCRC+0x4c>
60309310:	e30a6ffc 	movw	r6, #45052	; 0xaffc
60309314:	e3466030 	movt	r6, #24624	; 0x6030
60309318:	e3047e20 	movw	r7, #20000	; 0x4e20
6030931c:	e3a00001 	mov	r0, #1
60309320:	e12fff36 	blx	r6
60309324:	e5953000 	ldr	r3, [r5]
60309328:	e2844001 	add	r4, r4, #1
6030932c:	e0542007 	subs	r2, r4, r7
60309330:	e2233002 	eor	r3, r3, #2
60309334:	13a02001 	movne	r2, #1
60309338:	e01230a3 	ands	r3, r2, r3, lsr #1
6030933c:	1afffff6 	bne	6030931c <OTPGetCRC+0x28>
60309340:	e3a03442 	mov	r3, #1107296256	; 0x42000000
60309344:	e3e02101 	mvn	r2, #1073741824	; 0x40000000
60309348:	e5930030 	ldr	r0, [r3, #48]	; 0x30
6030934c:	e5832034 	str	r2, [r3, #52]	; 0x34
60309350:	e1a00820 	lsr	r0, r0, #16
60309354:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

60309358 <OTP_Read8>:
60309358:	e3500b02 	cmp	r0, #2048	; 0x800
6030935c:	2a000000 	bcs	60309364 <OTP_Read8+0xc>
60309360:	eaffff32 	b	60309030 <OTP_Read8.part.0>
60309364:	e3e00000 	mvn	r0, #0
60309368:	e5c10000 	strb	r0, [r1]
6030936c:	e12fff1e 	bx	lr

60309370 <OTP_Write8>:
60309370:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
60309374:	e3500b02 	cmp	r0, #2048	; 0x800
60309378:	e24dd024 	sub	sp, sp, #36	; 0x24
6030937c:	23e03000 	mvncs	r3, #0
60309380:	e1cd00f8 	strd	r0, [sp, #8]
60309384:	25cd301f 	strbcs	r3, [sp, #31]
60309388:	2a00007f 	bcs	6030958c <OTP_Write8+0x21c>
6030938c:	e28d101f 	add	r1, sp, #31
60309390:	ebffff8a 	bl	603091c0 <OTP_ProgramMarginRead8.part.0>
60309394:	e3700001 	cmn	r0, #1
60309398:	0a00007b 	beq	6030958c <OTP_Write8+0x21c>
6030939c:	e59d2008 	ldr	r2, [sp, #8]
603093a0:	e5dd301f 	ldrb	r3, [sp, #31]
603093a4:	e59d900c 	ldr	r9, [sp, #12]
603093a8:	e3a0b902 	mov	fp, #32768	; 0x8000
603093ac:	e344b200 	movt	fp, #16896	; 0x4200
603093b0:	e30489e0 	movw	r8, #18912	; 0x49e0
603093b4:	e3468031 	movt	r8, #24625	; 0x6031
603093b8:	e30479b4 	movw	r7, #18868	; 0x49b4
603093bc:	e3467031 	movt	r7, #24625	; 0x6031
603093c0:	e1a02402 	lsl	r2, r2, #8
603093c4:	e58d2014 	str	r2, [sp, #20]
603093c8:	e3a02002 	mov	r2, #2
603093cc:	e58d2010 	str	r2, [sp, #16]
603093d0:	e1e03003 	mvn	r3, r3
603093d4:	e1839009 	orr	r9, r3, r9
603093d8:	e6ef9079 	uxtb	r9, r9
603093dc:	e35900ff 	cmp	r9, #255	; 0xff
603093e0:	1a000001 	bne	603093ec <OTP_Write8+0x7c>
603093e4:	ea000030 	b	603094ac <OTP_Write8+0x13c>
603093e8:	eb00029c 	bl	60309e60 <rtk_log_write_nano>
603093ec:	e3a01ffa 	mov	r1, #1000	; 0x3e8
603093f0:	e3a00002 	mov	r0, #2
603093f4:	ebfffe56 	bl	60308d54 <IPC_SEMTake>
603093f8:	e1a0c000 	mov	ip, r0
603093fc:	e1a03008 	mov	r3, r8
60309400:	e3a02045 	mov	r2, #69	; 0x45
60309404:	e1a01007 	mov	r1, r7
60309408:	e3a00002 	mov	r0, #2
6030940c:	e35c0001 	cmp	ip, #1
60309410:	1afffff4 	bne	603093e8 <OTP_Write8+0x78>
60309414:	e59b3000 	ldr	r3, [fp]
60309418:	e3a04442 	mov	r4, #1107296256	; 0x42000000
6030941c:	e3130001 	tst	r3, #1
60309420:	059b3000 	ldreq	r3, [fp]
60309424:	03833001 	orreq	r3, r3, #1
60309428:	058b3000 	streq	r3, [fp]
6030942c:	e59d3014 	ldr	r3, [sp, #20]
60309430:	e5942014 	ldr	r2, [r4, #20]
60309434:	e1893003 	orr	r3, r9, r3
60309438:	e3833102 	orr	r3, r3, #-2147483648	; 0x80000000
6030943c:	e3822469 	orr	r2, r2, #1761607680	; 0x69000000
60309440:	e5842014 	str	r2, [r4, #20]
60309444:	e5843008 	str	r3, [r4, #8]
60309448:	e5943008 	ldr	r3, [r4, #8]
6030944c:	e3530000 	cmp	r3, #0
60309450:	b3a0a000 	movlt	sl, #0
60309454:	b30a5ffc 	movwlt	r5, #45052	; 0xaffc
60309458:	b3046e20 	movwlt	r6, #20000	; 0x4e20
6030945c:	b3465030 	movtlt	r5, #24624	; 0x6030
60309460:	ba000002 	blt	60309470 <OTP_Write8+0x100>
60309464:	ea00000a 	b	60309494 <OTP_Write8+0x124>
60309468:	e15a0006 	cmp	sl, r6
6030946c:	0a000021 	beq	603094f8 <OTP_Write8+0x188>
60309470:	e3a00005 	mov	r0, #5
60309474:	e12fff35 	blx	r5
60309478:	e5943008 	ldr	r3, [r4, #8]
6030947c:	e28aa001 	add	sl, sl, #1
60309480:	e3530000 	cmp	r3, #0
60309484:	bafffff7 	blt	60309468 <OTP_Write8+0xf8>
60309488:	e3042e20 	movw	r2, #20000	; 0x4e20
6030948c:	e15a0002 	cmp	sl, r2
60309490:	0a000018 	beq	603094f8 <OTP_Write8+0x188>
60309494:	e3a02442 	mov	r2, #1107296256	; 0x42000000
60309498:	e3a00002 	mov	r0, #2
6030949c:	e5923014 	ldr	r3, [r2, #20]
603094a0:	e3c334ff 	bic	r3, r3, #-16777216	; 0xff000000
603094a4:	e5823014 	str	r3, [r2, #20]
603094a8:	ebfffe73 	bl	60308e7c <IPC_SEMFree>
603094ac:	e59d0008 	ldr	r0, [sp, #8]
603094b0:	e28d101f 	add	r1, sp, #31
603094b4:	ebffff41 	bl	603091c0 <OTP_ProgramMarginRead8.part.0>
603094b8:	e3700001 	cmn	r0, #1
603094bc:	0a000027 	beq	60309560 <OTP_Write8+0x1f0>
603094c0:	e5dd301f 	ldrb	r3, [sp, #31]
603094c4:	e59d200c 	ldr	r2, [sp, #12]
603094c8:	e1530002 	cmp	r3, r2
603094cc:	0a00002c 	beq	60309584 <OTP_Write8+0x214>
603094d0:	e59d2010 	ldr	r2, [sp, #16]
603094d4:	e3520001 	cmp	r2, #1
603094d8:	1a000003 	bne	603094ec <OTP_Write8+0x17c>
603094dc:	e3e04000 	mvn	r4, #0
603094e0:	e1a00004 	mov	r0, r4
603094e4:	e28dd024 	add	sp, sp, #36	; 0x24
603094e8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
603094ec:	e3a02001 	mov	r2, #1
603094f0:	e58d2010 	str	r2, [sp, #16]
603094f4:	eaffffb5 	b	603093d0 <OTP_Write8+0x60>
603094f8:	e59d3008 	ldr	r3, [sp, #8]
603094fc:	e58d3000 	str	r3, [sp]
60309500:	e3a02045 	mov	r2, #69	; 0x45
60309504:	e3a00002 	mov	r0, #2
60309508:	e30439fc 	movw	r3, #18940	; 0x49fc
6030950c:	e3463031 	movt	r3, #24625	; 0x6031
60309510:	e30419b4 	movw	r1, #18868	; 0x49b4
60309514:	e3461031 	movt	r1, #24625	; 0x6031
60309518:	eb000250 	bl	60309e60 <rtk_log_write_nano>
6030951c:	e3a02442 	mov	r2, #1107296256	; 0x42000000
60309520:	e3a00002 	mov	r0, #2
60309524:	e3e04000 	mvn	r4, #0
60309528:	e5923014 	ldr	r3, [r2, #20]
6030952c:	e3c334ff 	bic	r3, r3, #-16777216	; 0xff000000
60309530:	e5823014 	str	r3, [r2, #20]
60309534:	ebfffe50 	bl	60308e7c <IPC_SEMFree>
60309538:	e3a02045 	mov	r2, #69	; 0x45
6030953c:	e3a00002 	mov	r0, #2
60309540:	e3043a14 	movw	r3, #18964	; 0x4a14
60309544:	e3463031 	movt	r3, #24625	; 0x6031
60309548:	e30419b4 	movw	r1, #18868	; 0x49b4
6030954c:	e3461031 	movt	r1, #24625	; 0x6031
60309550:	eb000242 	bl	60309e60 <rtk_log_write_nano>
60309554:	e1a00004 	mov	r0, r4
60309558:	e28dd024 	add	sp, sp, #36	; 0x24
6030955c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
60309560:	e1a04000 	mov	r4, r0
60309564:	e3a02045 	mov	r2, #69	; 0x45
60309568:	e3a00002 	mov	r0, #2
6030956c:	e3043a28 	movw	r3, #18984	; 0x4a28
60309570:	e3463031 	movt	r3, #24625	; 0x6031
60309574:	e30419b4 	movw	r1, #18868	; 0x49b4
60309578:	e3461031 	movt	r1, #24625	; 0x6031
6030957c:	eb000237 	bl	60309e60 <rtk_log_write_nano>
60309580:	eaffffd6 	b	603094e0 <OTP_Write8+0x170>
60309584:	e3a04000 	mov	r4, #0
60309588:	eaffffd4 	b	603094e0 <OTP_Write8+0x170>
6030958c:	e3a02045 	mov	r2, #69	; 0x45
60309590:	e3a00002 	mov	r0, #2
60309594:	e30439cc 	movw	r3, #18892	; 0x49cc
60309598:	e3463031 	movt	r3, #24625	; 0x6031
6030959c:	e30419b4 	movw	r1, #18868	; 0x49b4
603095a0:	e3461031 	movt	r1, #24625	; 0x6031
603095a4:	e3e04000 	mvn	r4, #0
603095a8:	eb00022c 	bl	60309e60 <rtk_log_write_nano>
603095ac:	eaffffcb 	b	603094e0 <OTP_Write8+0x170>

603095b0 <OTP_LogicalMap_Read>:
603095b0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
603095b4:	e0817002 	add	r7, r1, r2
603095b8:	e24dd01c 	sub	sp, sp, #28
603095bc:	e1a06001 	mov	r6, r1
603095c0:	e3570b01 	cmp	r7, #1024	; 0x400
603095c4:	e58d0008 	str	r0, [sp, #8]
603095c8:	8a000059 	bhi	60309734 <OTP_LogicalMap_Read+0x184>
603095cc:	e59d3008 	ldr	r3, [sp, #8]
603095d0:	e3a04000 	mov	r4, #0
603095d4:	e0433001 	sub	r3, r3, r1
603095d8:	e3a010ff 	mov	r1, #255	; 0xff
603095dc:	e58d300c 	str	r3, [sp, #12]
603095e0:	e30c3a88 	movw	r3, #51848	; 0xca88
603095e4:	e3463030 	movt	r3, #24624	; 0x6030
603095e8:	e3048a68 	movw	r8, #19048	; 0x4a68
603095ec:	e3468031 	movt	r8, #24625	; 0x6031
603095f0:	e12fff33 	blx	r3
603095f4:	ea00000c 	b	6030962c <OTP_LogicalMap_Read+0x7c>
603095f8:	e3520002 	cmp	r2, #2
603095fc:	1a000006 	bne	6030961c <OTP_LogicalMap_Read+0x6c>
60309600:	e7e39c53 	ubfx	r9, r3, #24, #4
60309604:	e7e32653 	ubfx	r2, r3, #12, #4
60309608:	e1a09109 	lsl	r9, r9, #2
6030960c:	e2899004 	add	r9, r9, #4
60309610:	e3520007 	cmp	r2, #7
60309614:	0a00002e 	beq	603096d4 <OTP_LogicalMap_Read+0x124>
60309618:	e0844009 	add	r4, r4, r9
6030961c:	e3140003 	tst	r4, #3
60309620:	1a00001d 	bne	6030969c <OTP_LogicalMap_Read+0xec>
60309624:	e3540f7f 	cmp	r4, #508	; 0x1fc
60309628:	8a000026 	bhi	603096c8 <OTP_LogicalMap_Read+0x118>
6030962c:	e28d1014 	add	r1, sp, #20
60309630:	e1a00004 	mov	r0, r4
60309634:	ebfffec9 	bl	60309160 <OTP_Read32.isra.0>
60309638:	e59d3014 	ldr	r3, [sp, #20]
6030963c:	e3730001 	cmn	r3, #1
60309640:	0a000020 	beq	603096c8 <OTP_LogicalMap_Read+0x118>
60309644:	e1a02e23 	lsr	r2, r3, #28
60309648:	e2844004 	add	r4, r4, #4
6030964c:	e3520001 	cmp	r2, #1
60309650:	1affffe8 	bne	603095f8 <OTP_LogicalMap_Read+0x48>
60309654:	e7e32653 	ubfx	r2, r3, #12, #4
60309658:	e3520007 	cmp	r2, #7
6030965c:	1affffee 	bne	6030961c <OTP_LogicalMap_Read+0x6c>
60309660:	e7eb2053 	ubfx	r2, r3, #0, #12
60309664:	e1570002 	cmp	r7, r2
60309668:	83a01001 	movhi	r1, #1
6030966c:	93a01000 	movls	r1, #0
60309670:	e1560002 	cmp	r6, r2
60309674:	83a01000 	movhi	r1, #0
60309678:	e7e73853 	ubfx	r3, r3, #16, #8
6030967c:	e3510000 	cmp	r1, #0
60309680:	e5cd3013 	strb	r3, [sp, #19]
60309684:	0affffe4 	beq	6030961c <OTP_LogicalMap_Read+0x6c>
60309688:	e59d1008 	ldr	r1, [sp, #8]
6030968c:	e0422006 	sub	r2, r2, r6
60309690:	e3140003 	tst	r4, #3
60309694:	e7c13002 	strb	r3, [r1, r2]
60309698:	0affffe1 	beq	60309624 <OTP_LogicalMap_Read+0x74>
6030969c:	e59d0014 	ldr	r0, [sp, #20]
603096a0:	e58d0004 	str	r0, [sp, #4]
603096a4:	e1a03008 	mov	r3, r8
603096a8:	e3a02045 	mov	r2, #69	; 0x45
603096ac:	e3a00002 	mov	r0, #2
603096b0:	e30419b4 	movw	r1, #18868	; 0x49b4
603096b4:	e3461031 	movt	r1, #24625	; 0x6031
603096b8:	e58d4000 	str	r4, [sp]
603096bc:	eb0001e7 	bl	60309e60 <rtk_log_write_nano>
603096c0:	e3540f7f 	cmp	r4, #508	; 0x1fc
603096c4:	9affffd8 	bls	6030962c <OTP_LogicalMap_Read+0x7c>
603096c8:	e3a00000 	mov	r0, #0
603096cc:	e28dd01c 	add	sp, sp, #28
603096d0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
603096d4:	e7eb5053 	ubfx	r5, r3, #0, #12
603096d8:	e085a009 	add	sl, r5, r9
603096dc:	e1a0b004 	mov	fp, r4
603096e0:	e35b0b02 	cmp	fp, #2048	; 0x800
603096e4:	e1a0000b 	mov	r0, fp
603096e8:	23e03000 	mvncs	r3, #0
603096ec:	e28d1013 	add	r1, sp, #19
603096f0:	25cd3013 	strbcs	r3, [sp, #19]
603096f4:	2a000000 	bcs	603096fc <OTP_LogicalMap_Read+0x14c>
603096f8:	ebfffe4c 	bl	60309030 <OTP_Read8.part.0>
603096fc:	e1560005 	cmp	r6, r5
60309700:	93a03001 	movls	r3, #1
60309704:	83a03000 	movhi	r3, #0
60309708:	e1570005 	cmp	r7, r5
6030970c:	93a03000 	movls	r3, #0
60309710:	e3530000 	cmp	r3, #0
60309714:	e28bb001 	add	fp, fp, #1
60309718:	159d200c 	ldrne	r2, [sp, #12]
6030971c:	15dd3013 	ldrbne	r3, [sp, #19]
60309720:	17c23005 	strbne	r3, [r2, r5]
60309724:	e2855001 	add	r5, r5, #1
60309728:	e155000a 	cmp	r5, sl
6030972c:	1affffeb 	bne	603096e0 <OTP_LogicalMap_Read+0x130>
60309730:	eaffffb8 	b	60309618 <OTP_LogicalMap_Read+0x68>
60309734:	e1a03002 	mov	r3, r2
60309738:	e3a00002 	mov	r0, #2
6030973c:	e58d3004 	str	r3, [sp, #4]
60309740:	e58d1000 	str	r1, [sp]
60309744:	e3a02045 	mov	r2, #69	; 0x45
60309748:	e3043a3c 	movw	r3, #19004	; 0x4a3c
6030974c:	e3463031 	movt	r3, #24625	; 0x6031
60309750:	e30419b4 	movw	r1, #18868	; 0x49b4
60309754:	e3461031 	movt	r1, #24625	; 0x6031
60309758:	eb0001c0 	bl	60309e60 <rtk_log_write_nano>
6030975c:	e3e00000 	mvn	r0, #0
60309760:	eaffffd9 	b	603096cc <OTP_LogicalMap_Read+0x11c>

60309764 <OTP_LogicalMap_Write>:
60309764:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
60309768:	e1a03000 	mov	r3, r0
6030976c:	e24dd044 	sub	sp, sp, #68	; 0x44
60309770:	e0810000 	add	r0, r1, r0
60309774:	e3500b01 	cmp	r0, #1024	; 0x400
60309778:	e58d2014 	str	r2, [sp, #20]
6030977c:	8a00013f 	bhi	60309c80 <OTP_LogicalMap_Write+0x51c>
60309780:	e3c3200f 	bic	r2, r3, #15
60309784:	e1a04001 	mov	r4, r1
60309788:	e203300f 	and	r3, r3, #15
6030978c:	e3510000 	cmp	r1, #0
60309790:	e58d2010 	str	r2, [sp, #16]
60309794:	e58d3008 	str	r3, [sp, #8]
60309798:	da000135 	ble	60309c74 <OTP_LogicalMap_Write+0x510>
6030979c:	e304b9b4 	movw	fp, #18868	; 0x49b4
603097a0:	e346b031 	movt	fp, #24625	; 0x6031
603097a4:	e3043ad4 	movw	r3, #19156	; 0x4ad4
603097a8:	e3463031 	movt	r3, #24625	; 0x6031
603097ac:	e58d300c 	str	r3, [sp, #12]
603097b0:	e3043b7c 	movw	r3, #19324	; 0x4b7c
603097b4:	e3463031 	movt	r3, #24625	; 0x6031
603097b8:	e58d3020 	str	r3, [sp, #32]
603097bc:	e59d5008 	ldr	r5, [sp, #8]
603097c0:	e3a02010 	mov	r2, #16
603097c4:	e0843005 	add	r3, r4, r5
603097c8:	e3530010 	cmp	r3, #16
603097cc:	e59d1010 	ldr	r1, [sp, #16]
603097d0:	e28d0030 	add	r0, sp, #48	; 0x30
603097d4:	31a04003 	movcc	r4, r3
603097d8:	21a04002 	movcs	r4, r2
603097dc:	e58d3018 	str	r3, [sp, #24]
603097e0:	ebffff72 	bl	603095b0 <OTP_LogicalMap_Read>
603097e4:	e3700001 	cmn	r0, #1
603097e8:	e58d001c 	str	r0, [sp, #28]
603097ec:	0a000102 	beq	60309bfc <OTP_LogicalMap_Write+0x498>
603097f0:	e1540005 	cmp	r4, r5
603097f4:	9a00008b 	bls	60309a28 <OTP_LogicalMap_Write+0x2c4>
603097f8:	e59d3008 	ldr	r3, [sp, #8]
603097fc:	e59d2014 	ldr	r2, [sp, #20]
60309800:	e3a07000 	mov	r7, #0
60309804:	e2435001 	sub	r5, r3, #1
60309808:	e0426003 	sub	r6, r2, r3
6030980c:	e28d1030 	add	r1, sp, #48	; 0x30
60309810:	e0866004 	add	r6, r6, r4
60309814:	e0815005 	add	r5, r1, r5
60309818:	e1a04002 	mov	r4, r2
6030981c:	e1a0a007 	mov	sl, r7
60309820:	e1a08007 	mov	r8, r7
60309824:	e0439002 	sub	r9, r3, r2
60309828:	e0893004 	add	r3, r9, r4
6030982c:	e5f52001 	ldrb	r2, [r5, #1]!
60309830:	e4d40001 	ldrb	r0, [r4], #1
60309834:	e1a0c123 	lsr	ip, r3, #2
60309838:	e1520000 	cmp	r2, r0
6030983c:	0a00000c 	beq	60309874 <OTP_LogicalMap_Write+0x110>
60309840:	e3a02001 	mov	r2, #1
60309844:	e1a01002 	mov	r1, r2
60309848:	e18aa312 	orr	sl, sl, r2, lsl r3
6030984c:	e58d0004 	str	r0, [sp, #4]
60309850:	e58d3000 	str	r3, [sp]
60309854:	e1877c11 	orr	r7, r7, r1, lsl ip
60309858:	e0888001 	add	r8, r8, r1
6030985c:	e5c50000 	strb	r0, [r5]
60309860:	e59d300c 	ldr	r3, [sp, #12]
60309864:	e3a02049 	mov	r2, #73	; 0x49
60309868:	e1a0100b 	mov	r1, fp
6030986c:	e3a00004 	mov	r0, #4
60309870:	eb00017a 	bl	60309e60 <rtk_log_write_nano>
60309874:	e1560004 	cmp	r6, r4
60309878:	1affffea 	bne	60309828 <OTP_LogicalMap_Write+0xc4>
6030987c:	e3580000 	cmp	r8, #0
60309880:	0a000068 	beq	60309a28 <OTP_LogicalMap_Write+0x2c4>
60309884:	e59d3008 	ldr	r3, [sp, #8]
60309888:	e3a02000 	mov	r2, #0
6030988c:	e3a01010 	mov	r1, #16
60309890:	e1a03123 	lsr	r3, r3, #2
60309894:	e1a00337 	lsr	r0, r7, r3
60309898:	e3100001 	tst	r0, #1
6030989c:	0a000005 	beq	603098b8 <OTP_LogicalMap_Write+0x154>
603098a0:	e1510003 	cmp	r1, r3
603098a4:	21a01003 	movcs	r1, r3
603098a8:	e1520003 	cmp	r2, r3
603098ac:	31a02003 	movcc	r2, r3
603098b0:	e6ef1071 	uxtb	r1, r1
603098b4:	e6ef2072 	uxtb	r2, r2
603098b8:	e2833001 	add	r3, r3, #1
603098bc:	e3530004 	cmp	r3, #4
603098c0:	1afffff3 	bne	60309894 <OTP_LogicalMap_Write+0x130>
603098c4:	e0422001 	sub	r2, r2, r1
603098c8:	e2823002 	add	r3, r2, #2
603098cc:	e1580003 	cmp	r8, r3
603098d0:	9a00006c 	bls	60309a88 <OTP_LogicalMap_Write+0x324>
603098d4:	e1a09101 	lsl	r9, r1, #2
603098d8:	e2822001 	add	r2, r2, #1
603098dc:	e59d3010 	ldr	r3, [sp, #16]
603098e0:	e6ef9079 	uxtb	r9, r9
603098e4:	e1a04102 	lsl	r4, r2, #2
603098e8:	e0896003 	add	r6, r9, r3
603098ec:	e6ef4074 	uxtb	r4, r4
603098f0:	e28d3030 	add	r3, sp, #48	; 0x30
603098f4:	e3540010 	cmp	r4, #16
603098f8:	e0839009 	add	r9, r3, r9
603098fc:	e6ff6076 	uxth	r6, r6
60309900:	8a0000b2 	bhi	60309bd0 <OTP_LogicalMap_Write+0x46c>
60309904:	e3560b01 	cmp	r6, #1024	; 0x400
60309908:	8a0000c7 	bhi	60309c2c <OTP_LogicalMap_Write+0x4c8>
6030990c:	e3540000 	cmp	r4, #0
60309910:	0a00000f 	beq	60309954 <OTP_LogicalMap_Write+0x1f0>
60309914:	e2495001 	sub	r5, r9, #1
60309918:	e304ab40 	movw	sl, #19264	; 0x4b40
6030991c:	e346a031 	movt	sl, #24625	; 0x6031
60309920:	e0858004 	add	r8, r5, r4
60309924:	e2697001 	rsb	r7, r9, #1
60309928:	e0873005 	add	r3, r7, r5
6030992c:	e58d3000 	str	r3, [sp]
60309930:	e1a0100b 	mov	r1, fp
60309934:	e5f52001 	ldrb	r2, [r5, #1]!
60309938:	e58d2004 	str	r2, [sp, #4]
6030993c:	e1a0300a 	mov	r3, sl
60309940:	e3a02049 	mov	r2, #73	; 0x49
60309944:	e3a00004 	mov	r0, #4
60309948:	eb000144 	bl	60309e60 <rtk_log_write_nano>
6030994c:	e1580005 	cmp	r8, r5
60309950:	1afffff4 	bne	60309928 <OTP_LogicalMap_Write+0x1c4>
60309954:	e3a05000 	mov	r5, #0
60309958:	e28d702c 	add	r7, sp, #44	; 0x2c
6030995c:	ea000004 	b	60309974 <OTP_LogicalMap_Write+0x210>
60309960:	e3520003 	cmp	r2, #3
60309964:	02855008 	addeq	r5, r5, #8
60309968:	11a05001 	movne	r5, r1
6030996c:	e3550f7f 	cmp	r5, #508	; 0x1fc
60309970:	8a00000e 	bhi	603099b0 <OTP_LogicalMap_Write+0x24c>
60309974:	e1a01007 	mov	r1, r7
60309978:	e1a00005 	mov	r0, r5
6030997c:	ebfffdf7 	bl	60309160 <OTP_Read32.isra.0>
60309980:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
60309984:	e2851004 	add	r1, r5, #4
60309988:	e3730001 	cmn	r3, #1
6030998c:	e1a02e23 	lsr	r2, r3, #28
60309990:	0a000006 	beq	603099b0 <OTP_LogicalMap_Write+0x24c>
60309994:	e3520002 	cmp	r2, #2
60309998:	1afffff0 	bne	60309960 <OTP_LogicalMap_Write+0x1fc>
6030999c:	e7e33c53 	ubfx	r3, r3, #24, #4
603099a0:	e2833001 	add	r3, r3, #1
603099a4:	e0815103 	add	r5, r1, r3, lsl #2
603099a8:	e3550f7f 	cmp	r5, #508	; 0x1fc
603099ac:	9afffff0 	bls	60309974 <OTP_LogicalMap_Write+0x210>
603099b0:	e0852004 	add	r2, r5, r4
603099b4:	e30031fd 	movw	r3, #509	; 0x1fd
603099b8:	e1520003 	cmp	r2, r3
603099bc:	8a0000a2 	bhi	60309c4c <OTP_LogicalMap_Write+0x4e8>
603099c0:	e6ef1076 	uxtb	r1, r6
603099c4:	e1a00005 	mov	r0, r5
603099c8:	ebfffe68 	bl	60309370 <OTP_Write8>
603099cc:	e7e31456 	ubfx	r1, r6, #8, #4
603099d0:	e3811070 	orr	r1, r1, #112	; 0x70
603099d4:	e2850001 	add	r0, r5, #1
603099d8:	ebfffe64 	bl	60309370 <OTP_Write8>
603099dc:	e1a01144 	asr	r1, r4, #2
603099e0:	e2411001 	sub	r1, r1, #1
603099e4:	e3811020 	orr	r1, r1, #32
603099e8:	e2850003 	add	r0, r5, #3
603099ec:	e6ef1071 	uxtb	r1, r1
603099f0:	ebfffe5e 	bl	60309370 <OTP_Write8>
603099f4:	e3540000 	cmp	r4, #0
603099f8:	12496001 	subne	r6, r9, #1
603099fc:	12699005 	rsbne	r9, r9, #5
60309a00:	10895005 	addne	r5, r9, r5
60309a04:	10864004 	addne	r4, r6, r4
60309a08:	0a000004 	beq	60309a20 <OTP_LogicalMap_Write+0x2bc>
60309a0c:	e0850006 	add	r0, r5, r6
60309a10:	e5f61001 	ldrb	r1, [r6, #1]!
60309a14:	ebfffe55 	bl	60309370 <OTP_Write8>
60309a18:	e1560004 	cmp	r6, r4
60309a1c:	1afffffa 	bne	60309a0c <OTP_LogicalMap_Write+0x2a8>
60309a20:	e3a03000 	mov	r3, #0
60309a24:	e58d301c 	str	r3, [sp, #28]
60309a28:	e59d3018 	ldr	r3, [sp, #24]
60309a2c:	e59de014 	ldr	lr, [sp, #20]
60309a30:	e2434010 	sub	r4, r3, #16
60309a34:	e59d3008 	ldr	r3, [sp, #8]
60309a38:	e3a02049 	mov	r2, #73	; 0x49
60309a3c:	e263c010 	rsb	ip, r3, #16
60309a40:	e59d3010 	ldr	r3, [sp, #16]
60309a44:	e1a0100b 	mov	r1, fp
60309a48:	e2833010 	add	r3, r3, #16
60309a4c:	e3a00004 	mov	r0, #4
60309a50:	e58d3010 	str	r3, [sp, #16]
60309a54:	e88d0018 	stm	sp, {r3, r4}
60309a58:	e3043b9c 	movw	r3, #19356	; 0x4b9c
60309a5c:	e3463031 	movt	r3, #24625	; 0x6031
60309a60:	e08ec00c 	add	ip, lr, ip
60309a64:	e58dc014 	str	ip, [sp, #20]
60309a68:	e3a0c000 	mov	ip, #0
60309a6c:	e58dc008 	str	ip, [sp, #8]
60309a70:	eb0000fa 	bl	60309e60 <rtk_log_write_nano>
60309a74:	e3540000 	cmp	r4, #0
60309a78:	caffff4f 	bgt	603097bc <OTP_LogicalMap_Write+0x58>
60309a7c:	e59d001c 	ldr	r0, [sp, #28]
60309a80:	e28dd044 	add	sp, sp, #68	; 0x44
60309a84:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
60309a88:	e3043b58 	movw	r3, #19288	; 0x4b58
60309a8c:	e3463031 	movt	r3, #24625	; 0x6031
60309a90:	e1dd51b0 	ldrh	r5, [sp, #16]
60309a94:	e59d701c 	ldr	r7, [sp, #28]
60309a98:	e28d8030 	add	r8, sp, #48	; 0x30
60309a9c:	e3a06000 	mov	r6, #0
60309aa0:	e58d3024 	str	r3, [sp, #36]	; 0x24
60309aa4:	ea000005 	b	60309ac0 <OTP_LogicalMap_Write+0x35c>
60309aa8:	e2855001 	add	r5, r5, #1
60309aac:	e2866001 	add	r6, r6, #1
60309ab0:	e6ff5075 	uxth	r5, r5
60309ab4:	e2888001 	add	r8, r8, #1
60309ab8:	e3560010 	cmp	r6, #16
60309abc:	0a000041 	beq	60309bc8 <OTP_LogicalMap_Write+0x464>
60309ac0:	e3a03001 	mov	r3, #1
60309ac4:	e01a3613 	ands	r3, sl, r3, lsl r6
60309ac8:	0afffff6 	beq	60309aa8 <OTP_LogicalMap_Write+0x344>
60309acc:	e5d89000 	ldrb	r9, [r8]
60309ad0:	e3550b01 	cmp	r5, #1024	; 0x400
60309ad4:	8a000033 	bhi	60309ba8 <OTP_LogicalMap_Write+0x444>
60309ad8:	e59d3020 	ldr	r3, [sp, #32]
60309adc:	e3a02049 	mov	r2, #73	; 0x49
60309ae0:	e1a0100b 	mov	r1, fp
60309ae4:	e3a00004 	mov	r0, #4
60309ae8:	e88d0220 	stm	sp, {r5, r9}
60309aec:	e3a04000 	mov	r4, #0
60309af0:	e28d702c 	add	r7, sp, #44	; 0x2c
60309af4:	eb0000d9 	bl	60309e60 <rtk_log_write_nano>
60309af8:	ea000004 	b	60309b10 <OTP_LogicalMap_Write+0x3ac>
60309afc:	e3520003 	cmp	r2, #3
60309b00:	02844008 	addeq	r4, r4, #8
60309b04:	11a04001 	movne	r4, r1
60309b08:	e3540f7f 	cmp	r4, #508	; 0x1fc
60309b0c:	8a00000e 	bhi	60309b4c <OTP_LogicalMap_Write+0x3e8>
60309b10:	e1a01007 	mov	r1, r7
60309b14:	e1a00004 	mov	r0, r4
60309b18:	ebfffd90 	bl	60309160 <OTP_Read32.isra.0>
60309b1c:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
60309b20:	e2841004 	add	r1, r4, #4
60309b24:	e3730001 	cmn	r3, #1
60309b28:	e1a02e23 	lsr	r2, r3, #28
60309b2c:	0a00000e 	beq	60309b6c <OTP_LogicalMap_Write+0x408>
60309b30:	e3520002 	cmp	r2, #2
60309b34:	1afffff0 	bne	60309afc <OTP_LogicalMap_Write+0x398>
60309b38:	e7e30c53 	ubfx	r0, r3, #24, #4
60309b3c:	e2800001 	add	r0, r0, #1
60309b40:	e0814100 	add	r4, r1, r0, lsl #2
60309b44:	e3540f7f 	cmp	r4, #508	; 0x1fc
60309b48:	9afffff0 	bls	60309b10 <OTP_LogicalMap_Write+0x3ac>
60309b4c:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
60309b50:	e3a02045 	mov	r2, #69	; 0x45
60309b54:	e1a0100b 	mov	r1, fp
60309b58:	e3a00002 	mov	r0, #2
60309b5c:	e58d4000 	str	r4, [sp]
60309b60:	e3e07000 	mvn	r7, #0
60309b64:	eb0000bd 	bl	60309e60 <rtk_log_write_nano>
60309b68:	eaffffce 	b	60309aa8 <OTP_LogicalMap_Write+0x344>
60309b6c:	e6ef1075 	uxtb	r1, r5
60309b70:	e1a00004 	mov	r0, r4
60309b74:	ebfffdfd 	bl	60309370 <OTP_Write8>
60309b78:	e7e31455 	ubfx	r1, r5, #8, #4
60309b7c:	e3811070 	orr	r1, r1, #112	; 0x70
60309b80:	e2840001 	add	r0, r4, #1
60309b84:	ebfffdf9 	bl	60309370 <OTP_Write8>
60309b88:	e1a01009 	mov	r1, r9
60309b8c:	e2840002 	add	r0, r4, #2
60309b90:	ebfffdf6 	bl	60309370 <OTP_Write8>
60309b94:	e2840003 	add	r0, r4, #3
60309b98:	e3a0101f 	mov	r1, #31
60309b9c:	e3a07000 	mov	r7, #0
60309ba0:	ebfffdf2 	bl	60309370 <OTP_Write8>
60309ba4:	eaffffbf 	b	60309aa8 <OTP_LogicalMap_Write+0x344>
60309ba8:	e3a02045 	mov	r2, #69	; 0x45
60309bac:	e1a0100b 	mov	r1, fp
60309bb0:	e3a00002 	mov	r0, #2
60309bb4:	e58d5000 	str	r5, [sp]
60309bb8:	e3043b14 	movw	r3, #19220	; 0x4b14
60309bbc:	e3463031 	movt	r3, #24625	; 0x6031
60309bc0:	eb0000a6 	bl	60309e60 <rtk_log_write_nano>
60309bc4:	eaffffc3 	b	60309ad8 <OTP_LogicalMap_Write+0x374>
60309bc8:	e58d701c 	str	r7, [sp, #28]
60309bcc:	eaffff95 	b	60309a28 <OTP_LogicalMap_Write+0x2c4>
60309bd0:	e3a02045 	mov	r2, #69	; 0x45
60309bd4:	e1a0100b 	mov	r1, fp
60309bd8:	e3a00002 	mov	r0, #2
60309bdc:	e58d4004 	str	r4, [sp, #4]
60309be0:	e58d6000 	str	r6, [sp]
60309be4:	e3043ae8 	movw	r3, #19176	; 0x4ae8
60309be8:	e3463031 	movt	r3, #24625	; 0x6031
60309bec:	eb00009b 	bl	60309e60 <rtk_log_write_nano>
60309bf0:	e3e03000 	mvn	r3, #0
60309bf4:	e58d301c 	str	r3, [sp, #28]
60309bf8:	eaffff8a 	b	60309a28 <OTP_LogicalMap_Write+0x2c4>
60309bfc:	e59d3010 	ldr	r3, [sp, #16]
60309c00:	e58d3000 	str	r3, [sp]
60309c04:	e3a02045 	mov	r2, #69	; 0x45
60309c08:	e3a00002 	mov	r0, #2
60309c0c:	e3043aac 	movw	r3, #19116	; 0x4aac
60309c10:	e3463031 	movt	r3, #24625	; 0x6031
60309c14:	e30419b4 	movw	r1, #18868	; 0x49b4
60309c18:	e3461031 	movt	r1, #24625	; 0x6031
60309c1c:	eb00008f 	bl	60309e60 <rtk_log_write_nano>
60309c20:	e59d001c 	ldr	r0, [sp, #28]
60309c24:	e28dd044 	add	sp, sp, #68	; 0x44
60309c28:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
60309c2c:	e3a02045 	mov	r2, #69	; 0x45
60309c30:	e1a0100b 	mov	r1, fp
60309c34:	e3a00002 	mov	r0, #2
60309c38:	e58d6000 	str	r6, [sp]
60309c3c:	e3043b14 	movw	r3, #19220	; 0x4b14
60309c40:	e3463031 	movt	r3, #24625	; 0x6031
60309c44:	eb000085 	bl	60309e60 <rtk_log_write_nano>
60309c48:	eaffff2f 	b	6030990c <OTP_LogicalMap_Write+0x1a8>
60309c4c:	e3a02045 	mov	r2, #69	; 0x45
60309c50:	e1a0100b 	mov	r1, fp
60309c54:	e3a00002 	mov	r0, #2
60309c58:	e58d5000 	str	r5, [sp]
60309c5c:	e3043b58 	movw	r3, #19288	; 0x4b58
60309c60:	e3463031 	movt	r3, #24625	; 0x6031
60309c64:	eb00007d 	bl	60309e60 <rtk_log_write_nano>
60309c68:	e3e03000 	mvn	r3, #0
60309c6c:	e58d301c 	str	r3, [sp, #28]
60309c70:	eaffff6c 	b	60309a28 <OTP_LogicalMap_Write+0x2c4>
60309c74:	e3a03000 	mov	r3, #0
60309c78:	e58d301c 	str	r3, [sp, #28]
60309c7c:	eaffff7e 	b	60309a7c <OTP_LogicalMap_Write+0x318>
60309c80:	e58d1004 	str	r1, [sp, #4]
60309c84:	e58d3000 	str	r3, [sp]
60309c88:	e3a02045 	mov	r2, #69	; 0x45
60309c8c:	e3a00002 	mov	r0, #2
60309c90:	e3043a80 	movw	r3, #19072	; 0x4a80
60309c94:	e3463031 	movt	r3, #24625	; 0x6031
60309c98:	e30419b4 	movw	r1, #18868	; 0x49b4
60309c9c:	e3461031 	movt	r1, #24625	; 0x6031
60309ca0:	e3e0c000 	mvn	ip, #0
60309ca4:	e58dc01c 	str	ip, [sp, #28]
60309ca8:	eb00006c 	bl	60309e60 <rtk_log_write_nano>
60309cac:	eaffff72 	b	60309a7c <OTP_LogicalMap_Write+0x318>

60309cb0 <System_Reset>:
60309cb0:	e3a03902 	mov	r3, #32768	; 0x8000
60309cb4:	e3443200 	movt	r3, #16896	; 0x4200
60309cb8:	e593227c 	ldr	r2, [r3, #636]	; 0x27c
60309cbc:	e7e12352 	ubfx	r2, r2, #6, #2
60309cc0:	e3520003 	cmp	r2, #3
60309cc4:	012fff1e 	bxeq	lr
60309cc8:	e3a01202 	mov	r1, #536870912	; 0x20000000
60309ccc:	e3090696 	movw	r0, #38550	; 0x9696
60309cd0:	e3490696 	movt	r0, #38550	; 0x9696
60309cd4:	e1a02211 	lsl	r2, r1, r2
60309cd8:	e583023c 	str	r0, [r3, #572]	; 0x23c
60309cdc:	e3061969 	movw	r1, #26985	; 0x6969
60309ce0:	e3461969 	movt	r1, #26985	; 0x6969
60309ce4:	e5832238 	str	r2, [r3, #568]	; 0x238
60309ce8:	e583123c 	str	r1, [r3, #572]	; 0x23c
60309cec:	eafffffe 	b	60309cec <System_Reset+0x3c>

60309cf0 <rtk_log_level_get>:
60309cf0:	e3033480 	movw	r3, #13440	; 0x3480
60309cf4:	e3463032 	movt	r3, #24626	; 0x6032
60309cf8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60309cfc:	e1a06000 	mov	r6, r0
60309d00:	e5932000 	ldr	r2, [r3]
60309d04:	e3520003 	cmp	r2, #3
60309d08:	9a000016 	bls	60309d68 <rtk_log_level_get+0x78>
60309d0c:	e3500000 	cmp	r0, #0
60309d10:	13a08004 	movne	r8, #4
60309d14:	0a000018 	beq	60309d7c <rtk_log_level_get+0x8c>
60309d18:	e30c7f4c 	movw	r7, #53068	; 0xcf4c
60309d1c:	e3467030 	movt	r7, #24624	; 0x6030
60309d20:	e59f5064 	ldr	r5, [pc, #100]	; 60309d8c <rtk_log_level_get+0x9c>
60309d24:	e3a04000 	mov	r4, #0
60309d28:	ea000003 	b	60309d3c <rtk_log_level_get+0x4c>
60309d2c:	e2844001 	add	r4, r4, #1
60309d30:	e285500b 	add	r5, r5, #11
60309d34:	e1580004 	cmp	r8, r4
60309d38:	9a00000f 	bls	60309d7c <rtk_log_level_get+0x8c>
60309d3c:	e1a00005 	mov	r0, r5
60309d40:	e1a01006 	mov	r1, r6
60309d44:	e12fff37 	blx	r7
60309d48:	e3500000 	cmp	r0, #0
60309d4c:	1afffff6 	bne	60309d2c <rtk_log_level_get+0x3c>
60309d50:	e3a0200b 	mov	r2, #11
60309d54:	e3033484 	movw	r3, #13444	; 0x3484
60309d58:	e3463032 	movt	r3, #24626	; 0x6032
60309d5c:	e0040492 	mul	r4, r2, r4
60309d60:	e7d30004 	ldrb	r0, [r3, r4]
60309d64:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60309d68:	e5938000 	ldr	r8, [r3]
60309d6c:	e3500000 	cmp	r0, #0
60309d70:	0a000001 	beq	60309d7c <rtk_log_level_get+0x8c>
60309d74:	e3580000 	cmp	r8, #0
60309d78:	1affffe6 	bne	60309d18 <rtk_log_level_get+0x28>
60309d7c:	e3063260 	movw	r3, #25184	; 0x6260
60309d80:	e3463031 	movt	r3, #24625	; 0x6031
60309d84:	e5d30000 	ldrb	r0, [r3]
60309d88:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60309d8c:	60323485 	.word	0x60323485

60309d90 <rtk_log_write>:
60309d90:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
60309d94:	e92d40f0 	push	{r4, r5, r6, r7, lr}
60309d98:	e2514000 	subs	r4, r1, #0
60309d9c:	e24dd008 	sub	sp, sp, #8
60309da0:	0a000005 	beq	60309dbc <rtk_log_write+0x2c>
60309da4:	e1a05000 	mov	r5, r0
60309da8:	e1a00004 	mov	r0, r4
60309dac:	e1a06002 	mov	r6, r2
60309db0:	ebffffce 	bl	60309cf0 <rtk_log_level_get>
60309db4:	e1500005 	cmp	r0, r5
60309db8:	2a000003 	bcs	60309dcc <rtk_log_write+0x3c>
60309dbc:	e28dd008 	add	sp, sp, #8
60309dc0:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
60309dc4:	e28dd004 	add	sp, sp, #4
60309dc8:	e12fff1e 	bx	lr
60309dcc:	e10f7000 	mrs	r7, CPSR
60309dd0:	f10c0080 	cpsid	i
60309dd4:	f57ff04f 	dsb	sy
60309dd8:	f57ff06f 	isb	sy
60309ddc:	e3a03001 	mov	r3, #1
60309de0:	e3035440 	movw	r5, #13376	; 0x3440
60309de4:	e3465032 	movt	r5, #24626	; 0x6032
60309de8:	e1952f9f 	ldrex	r2, [r5]
60309dec:	e3520000 	cmp	r2, #0
60309df0:	1320f002 	wfene
60309df4:	01852f93 	strexeq	r2, r3, [r5]
60309df8:	03520000 	cmpeq	r2, #0
60309dfc:	1afffff9 	bne	60309de8 <rtk_log_write+0x58>
60309e00:	f57ff05f 	dmb	sy
60309e04:	e5d43000 	ldrb	r3, [r4]
60309e08:	e3530023 	cmp	r3, #35	; 0x23
60309e0c:	1a00000d 	bne	60309e48 <rtk_log_write+0xb8>
60309e10:	e28d1020 	add	r1, sp, #32
60309e14:	e59d001c 	ldr	r0, [sp, #28]
60309e18:	e58d1004 	str	r1, [sp, #4]
60309e1c:	eb002265 	bl	603127b8 <DiagVprintf>
60309e20:	e3a03000 	mov	r3, #0
60309e24:	f57ff05f 	dmb	sy
60309e28:	e5853000 	str	r3, [r5]
60309e2c:	f57ff04f 	dsb	sy
60309e30:	e320f004 	sev
60309e34:	e121f007 	msr	CPSR_c, r7
60309e38:	e28dd008 	add	sp, sp, #8
60309e3c:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
60309e40:	e28dd004 	add	sp, sp, #4
60309e44:	e12fff1e 	bx	lr
60309e48:	e1a02006 	mov	r2, r6
60309e4c:	e1a01004 	mov	r1, r4
60309e50:	e3040bc4 	movw	r0, #19396	; 0x4bc4
60309e54:	e3460031 	movt	r0, #24625	; 0x6031
60309e58:	eb00260a 	bl	60313688 <DiagPrintf>
60309e5c:	eaffffeb 	b	60309e10 <rtk_log_write+0x80>

60309e60 <rtk_log_write_nano>:
60309e60:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
60309e64:	e92d40f0 	push	{r4, r5, r6, r7, lr}
60309e68:	e2514000 	subs	r4, r1, #0
60309e6c:	e24dd008 	sub	sp, sp, #8
60309e70:	0a000005 	beq	60309e8c <rtk_log_write_nano+0x2c>
60309e74:	e1a05000 	mov	r5, r0
60309e78:	e1a00004 	mov	r0, r4
60309e7c:	e1a06002 	mov	r6, r2
60309e80:	ebffff9a 	bl	60309cf0 <rtk_log_level_get>
60309e84:	e1500005 	cmp	r0, r5
60309e88:	2a000003 	bcs	60309e9c <rtk_log_write_nano+0x3c>
60309e8c:	e28dd008 	add	sp, sp, #8
60309e90:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
60309e94:	e28dd004 	add	sp, sp, #4
60309e98:	e12fff1e 	bx	lr
60309e9c:	e10f7000 	mrs	r7, CPSR
60309ea0:	f10c0080 	cpsid	i
60309ea4:	f57ff04f 	dsb	sy
60309ea8:	f57ff06f 	isb	sy
60309eac:	e3a03001 	mov	r3, #1
60309eb0:	e3035440 	movw	r5, #13376	; 0x3440
60309eb4:	e3465032 	movt	r5, #24626	; 0x6032
60309eb8:	e1952f9f 	ldrex	r2, [r5]
60309ebc:	e3520000 	cmp	r2, #0
60309ec0:	1320f002 	wfene
60309ec4:	01852f93 	strexeq	r2, r3, [r5]
60309ec8:	03520000 	cmpeq	r2, #0
60309ecc:	1afffff9 	bne	60309eb8 <rtk_log_write_nano+0x58>
60309ed0:	f57ff05f 	dmb	sy
60309ed4:	e5d43000 	ldrb	r3, [r4]
60309ed8:	e3530023 	cmp	r3, #35	; 0x23
60309edc:	1a00000d 	bne	60309f18 <rtk_log_write_nano+0xb8>
60309ee0:	e28d1020 	add	r1, sp, #32
60309ee4:	e59d001c 	ldr	r0, [sp, #28]
60309ee8:	e58d1004 	str	r1, [sp, #4]
60309eec:	eb00245d 	bl	60313068 <DiagVprintfNano>
60309ef0:	e3a03000 	mov	r3, #0
60309ef4:	f57ff05f 	dmb	sy
60309ef8:	e5853000 	str	r3, [r5]
60309efc:	f57ff04f 	dsb	sy
60309f00:	e320f004 	sev
60309f04:	e121f007 	msr	CPSR_c, r7
60309f08:	e28dd008 	add	sp, sp, #8
60309f0c:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
60309f10:	e28dd004 	add	sp, sp, #4
60309f14:	e12fff1e 	bx	lr
60309f18:	e1a02006 	mov	r2, r6
60309f1c:	e1a01004 	mov	r1, r4
60309f20:	e3040bc4 	movw	r0, #19396	; 0x4bc4
60309f24:	e3460031 	movt	r0, #24625	; 0x6031
60309f28:	eb0025e1 	bl	603136b4 <DiagPrintfNano>
60309f2c:	eaffffeb 	b	60309ee0 <rtk_log_write_nano+0x80>

60309f30 <rtk_log_memory_dump_word>:
60309f30:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
60309f34:	e2517000 	subs	r7, r1, #0
60309f38:	e24dd00c 	sub	sp, sp, #12
60309f3c:	0a000025 	beq	60309fd8 <rtk_log_memory_dump_word+0xa8>
60309f40:	e3049bd8 	movw	r9, #19416	; 0x4bd8
60309f44:	e3469031 	movt	r9, #24625	; 0x6031
60309f48:	e304613c 	movw	r6, #16700	; 0x413c
60309f4c:	e3466031 	movt	r6, #24625	; 0x6031
60309f50:	e1a08000 	mov	r8, r0
60309f54:	e1a05000 	mov	r5, r0
60309f58:	e3a04000 	mov	r4, #0
60309f5c:	ea00000a 	b	60309f8c <rtk_log_memory_dump_word+0x5c>
60309f60:	e4953004 	ldr	r3, [r5], #4
60309f64:	e3a00001 	mov	r0, #1
60309f68:	e0844000 	add	r4, r4, r0
60309f6c:	e58d3000 	str	r3, [sp]
60309f70:	e3a02041 	mov	r2, #65	; 0x41
60309f74:	e1a01006 	mov	r1, r6
60309f78:	e3043be4 	movw	r3, #19428	; 0x4be4
60309f7c:	e3463031 	movt	r3, #24625	; 0x6031
60309f80:	ebffffb6 	bl	60309e60 <rtk_log_write_nano>
60309f84:	e1540007 	cmp	r4, r7
60309f88:	0a000012 	beq	60309fd8 <rtk_log_memory_dump_word+0xa8>
60309f8c:	e3540000 	cmp	r4, #0
60309f90:	0a000008 	beq	60309fb8 <rtk_log_memory_dump_word+0x88>
60309f94:	e3140007 	tst	r4, #7
60309f98:	1afffff0 	bne	60309f60 <rtk_log_memory_dump_word+0x30>
60309f9c:	e1a03009 	mov	r3, r9
60309fa0:	e3a02041 	mov	r2, #65	; 0x41
60309fa4:	e1a01006 	mov	r1, r6
60309fa8:	e3a00001 	mov	r0, #1
60309fac:	e58d5000 	str	r5, [sp]
60309fb0:	ebffffaa 	bl	60309e60 <rtk_log_write_nano>
60309fb4:	eaffffe9 	b	60309f60 <rtk_log_memory_dump_word+0x30>
60309fb8:	e3a02041 	mov	r2, #65	; 0x41
60309fbc:	e1a01006 	mov	r1, r6
60309fc0:	e3a00001 	mov	r0, #1
60309fc4:	e58d8000 	str	r8, [sp]
60309fc8:	e3043bd0 	movw	r3, #19408	; 0x4bd0
60309fcc:	e3463031 	movt	r3, #24625	; 0x6031
60309fd0:	ebffffa2 	bl	60309e60 <rtk_log_write_nano>
60309fd4:	eaffffe1 	b	60309f60 <rtk_log_memory_dump_word+0x30>
60309fd8:	e3a02041 	mov	r2, #65	; 0x41
60309fdc:	e3a00001 	mov	r0, #1
60309fe0:	e3043c08 	movw	r3, #19464	; 0x4c08
60309fe4:	e3463031 	movt	r3, #24625	; 0x6031
60309fe8:	e304113c 	movw	r1, #16700	; 0x413c
60309fec:	e3461031 	movt	r1, #24625	; 0x6031
60309ff0:	e28dd00c 	add	sp, sp, #12
60309ff4:	e8bd43f0 	pop	{r4, r5, r6, r7, r8, r9, lr}
60309ff8:	eaffff98 	b	60309e60 <rtk_log_write_nano>

60309ffc <rtk_log_memory_dump_byte>:
60309ffc:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
6030a000:	e2517000 	subs	r7, r1, #0
6030a004:	e24dd00c 	sub	sp, sp, #12
6030a008:	0a000025 	beq	6030a0a4 <rtk_log_memory_dump_byte+0xa8>
6030a00c:	e3049bd8 	movw	r9, #19416	; 0x4bd8
6030a010:	e3469031 	movt	r9, #24625	; 0x6031
6030a014:	e304613c 	movw	r6, #16700	; 0x413c
6030a018:	e3466031 	movt	r6, #24625	; 0x6031
6030a01c:	e1a08000 	mov	r8, r0
6030a020:	e1a05000 	mov	r5, r0
6030a024:	e3a04000 	mov	r4, #0
6030a028:	ea00000a 	b	6030a058 <rtk_log_memory_dump_byte+0x5c>
6030a02c:	e4d53001 	ldrb	r3, [r5], #1
6030a030:	e3a00001 	mov	r0, #1
6030a034:	e0844000 	add	r4, r4, r0
6030a038:	e58d3000 	str	r3, [sp]
6030a03c:	e3a02041 	mov	r2, #65	; 0x41
6030a040:	e1a01006 	mov	r1, r6
6030a044:	e3043bec 	movw	r3, #19436	; 0x4bec
6030a048:	e3463031 	movt	r3, #24625	; 0x6031
6030a04c:	ebffff83 	bl	60309e60 <rtk_log_write_nano>
6030a050:	e1540007 	cmp	r4, r7
6030a054:	0a000012 	beq	6030a0a4 <rtk_log_memory_dump_byte+0xa8>
6030a058:	e3540000 	cmp	r4, #0
6030a05c:	0a000008 	beq	6030a084 <rtk_log_memory_dump_byte+0x88>
6030a060:	e3140007 	tst	r4, #7
6030a064:	1afffff0 	bne	6030a02c <rtk_log_memory_dump_byte+0x30>
6030a068:	e1a03009 	mov	r3, r9
6030a06c:	e3a02041 	mov	r2, #65	; 0x41
6030a070:	e1a01006 	mov	r1, r6
6030a074:	e3a00001 	mov	r0, #1
6030a078:	e58d5000 	str	r5, [sp]
6030a07c:	ebffff77 	bl	60309e60 <rtk_log_write_nano>
6030a080:	eaffffe9 	b	6030a02c <rtk_log_memory_dump_byte+0x30>
6030a084:	e3a02041 	mov	r2, #65	; 0x41
6030a088:	e1a01006 	mov	r1, r6
6030a08c:	e3a00001 	mov	r0, #1
6030a090:	e58d8000 	str	r8, [sp]
6030a094:	e3043bd0 	movw	r3, #19408	; 0x4bd0
6030a098:	e3463031 	movt	r3, #24625	; 0x6031
6030a09c:	ebffff6f 	bl	60309e60 <rtk_log_write_nano>
6030a0a0:	eaffffe1 	b	6030a02c <rtk_log_memory_dump_byte+0x30>
6030a0a4:	e3a02041 	mov	r2, #65	; 0x41
6030a0a8:	e3a00001 	mov	r0, #1
6030a0ac:	e3043c08 	movw	r3, #19464	; 0x4c08
6030a0b0:	e3463031 	movt	r3, #24625	; 0x6031
6030a0b4:	e304113c 	movw	r1, #16700	; 0x413c
6030a0b8:	e3461031 	movt	r1, #24625	; 0x6031
6030a0bc:	e28dd00c 	add	sp, sp, #12
6030a0c0:	e8bd43f0 	pop	{r4, r5, r6, r7, r8, r9, lr}
6030a0c4:	eaffff65 	b	60309e60 <rtk_log_write_nano>

6030a0c8 <vAssertCalled>:
6030a0c8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
6030a0cc:	e1a04000 	mov	r4, r0
6030a0d0:	e24dd00c 	sub	sp, sp, #12
6030a0d4:	e1a05001 	mov	r5, r1
6030a0d8:	eb000d99 	bl	6030d744 <__rtos_critical_enter_os>
6030a0dc:	e3043bf4 	movw	r3, #19444	; 0x4bf4
6030a0e0:	e3463031 	movt	r3, #24625	; 0x6031
6030a0e4:	e304113c 	movw	r1, #16700	; 0x413c
6030a0e8:	e3461031 	movt	r1, #24625	; 0x6031
6030a0ec:	e3a02045 	mov	r2, #69	; 0x45
6030a0f0:	e3a00002 	mov	r0, #2
6030a0f4:	e58d5004 	str	r5, [sp, #4]
6030a0f8:	e58d4000 	str	r4, [sp]
6030a0fc:	ebffff57 	bl	60309e60 <rtk_log_write_nano>
6030a100:	eafffffe 	b	6030a100 <vAssertCalled+0x38>

6030a104 <gic_cpu_init>:
6030a104:	f57ff05f 	dmb	sy
6030a108:	e3a00a01 	mov	r0, #4096	; 0x1000
6030a10c:	e34a0010 	movt	r0, #40976	; 0xa010
6030a110:	e3e0c000 	mvn	ip, #0
6030a114:	e580c380 	str	ip, [r0, #896]	; 0x380
6030a118:	f57ff05f 	dmb	sy
6030a11c:	e3a03000 	mov	r3, #0
6030a120:	e34f3fff 	movt	r3, #65535	; 0xffff
6030a124:	e5803180 	str	r3, [r0, #384]	; 0x180
6030a128:	f57ff05f 	dmb	sy
6030a12c:	e30f3fff 	movw	r3, #65535	; 0xffff
6030a130:	e5803100 	str	r3, [r0, #256]	; 0x100
6030a134:	f57ff05f 	dmb	sy
6030a138:	e3a03b05 	mov	r3, #5120	; 0x1400
6030a13c:	e34a3010 	movt	r3, #40976	; 0xa010
6030a140:	e30a10a0 	movw	r1, #41120	; 0xa0a0
6030a144:	e34a10a0 	movt	r1, #41120	; 0xa0a0
6030a148:	e3012420 	movw	r2, #5152	; 0x1420
6030a14c:	e34a2010 	movt	r2, #40976	; 0xa010
6030a150:	e580c080 	str	ip, [r0, #128]	; 0x80
6030a154:	f57ff05f 	dmb	sy
6030a158:	e4831004 	str	r1, [r3], #4
6030a15c:	e1530002 	cmp	r3, r2
6030a160:	1afffffb 	bne	6030a154 <gic_cpu_init+0x50>
6030a164:	f57ff05f 	dmb	sy
6030a168:	e3a02a02 	mov	r2, #8192	; 0x2000
6030a16c:	e34a2010 	movt	r2, #40976	; 0xa010
6030a170:	e3a030ff 	mov	r3, #255	; 0xff
6030a174:	e5823004 	str	r3, [r2, #4]
6030a178:	e5923000 	ldr	r3, [r2]
6030a17c:	f57ff05f 	dmb	sy
6030a180:	e3c33e1e 	bic	r3, r3, #480	; 0x1e0
6030a184:	e3c33003 	bic	r3, r3, #3
6030a188:	e3833007 	orr	r3, r3, #7
6030a18c:	f57ff05f 	dmb	sy
6030a190:	e5823000 	str	r3, [r2]
6030a194:	e12fff1e 	bx	lr

6030a198 <arm_gic_irq_enable>:
6030a198:	e200201f 	and	r2, r0, #31
6030a19c:	e3a03001 	mov	r3, #1
6030a1a0:	e1a03213 	lsl	r3, r3, r2
6030a1a4:	f57ff05f 	dmb	sy
6030a1a8:	e3a02c11 	mov	r2, #4352	; 0x1100
6030a1ac:	e34a2010 	movt	r2, #40976	; 0xa010
6030a1b0:	e1a002a0 	lsr	r0, r0, #5
6030a1b4:	e7823100 	str	r3, [r2, r0, lsl #2]
6030a1b8:	e12fff1e 	bx	lr

6030a1bc <arm_gic_irq_disable>:
6030a1bc:	e200201f 	and	r2, r0, #31
6030a1c0:	e3a03001 	mov	r3, #1
6030a1c4:	e1a03213 	lsl	r3, r3, r2
6030a1c8:	f57ff05f 	dmb	sy
6030a1cc:	e3a02d46 	mov	r2, #4480	; 0x1180
6030a1d0:	e34a2010 	movt	r2, #40976	; 0xa010
6030a1d4:	e1a002a0 	lsr	r0, r0, #5
6030a1d8:	e7823100 	str	r3, [r2, r0, lsl #2]
6030a1dc:	e12fff1e 	bx	lr

6030a1e0 <arm_gic_irq_set_priority>:
6030a1e0:	e6ef3071 	uxtb	r3, r1
6030a1e4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
6030a1e8:	f57ff05f 	dmb	sy
6030a1ec:	e3a0eb05 	mov	lr, #5120	; 0x1400
6030a1f0:	e34ae010 	movt	lr, #40976	; 0xa010
6030a1f4:	e1a0c220 	lsr	ip, r0, #4
6030a1f8:	e200100f 	and	r1, r0, #15
6030a1fc:	e7c0300e 	strb	r3, [r0, lr]
6030a200:	e3a03b07 	mov	r3, #7168	; 0x1c00
6030a204:	e34a3010 	movt	r3, #40976	; 0xa010
6030a208:	e083010c 	add	r0, r3, ip, lsl #2
6030a20c:	e1a01081 	lsl	r1, r1, #1
6030a210:	e793310c 	ldr	r3, [r3, ip, lsl #2]
6030a214:	f57ff05f 	dmb	sy
6030a218:	e3a0c003 	mov	ip, #3
6030a21c:	e3120001 	tst	r2, #1
6030a220:	13a02002 	movne	r2, #2
6030a224:	e1c3311c 	bic	r3, r3, ip, lsl r1
6030a228:	11833112 	orrne	r3, r3, r2, lsl r1
6030a22c:	f57ff05f 	dmb	sy
6030a230:	e5803000 	str	r3, [r0]
6030a234:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

6030a238 <arm_gic_get_active>:
6030a238:	e3a03a02 	mov	r3, #8192	; 0x2000
6030a23c:	e34a3010 	movt	r3, #40976	; 0xa010
6030a240:	e593000c 	ldr	r0, [r3, #12]
6030a244:	f57ff05f 	dmb	sy
6030a248:	e7e90050 	ubfx	r0, r0, #0, #10
6030a24c:	e12fff1e 	bx	lr

6030a250 <arm_gic_clear_pending_irq>:
6030a250:	e200201f 	and	r2, r0, #31
6030a254:	e3a03001 	mov	r3, #1
6030a258:	e1a03213 	lsl	r3, r3, r2
6030a25c:	f57ff05f 	dmb	sy
6030a260:	e3a02d4a 	mov	r2, #4736	; 0x1280
6030a264:	e34a2010 	movt	r2, #40976	; 0xa010
6030a268:	e1a002a0 	lsr	r0, r0, #5
6030a26c:	e7823100 	str	r3, [r2, r0, lsl #2]
6030a270:	e12fff1e 	bx	lr

6030a274 <arm_gic_eoi>:
6030a274:	f57ff05f 	dmb	sy
6030a278:	e3a03a02 	mov	r3, #8192	; 0x2000
6030a27c:	e34a3010 	movt	r3, #40976	; 0xa010
6030a280:	e5830010 	str	r0, [r3, #16]
6030a284:	e12fff1e 	bx	lr

6030a288 <arm_gic_raise_softirq>:
6030a288:	e3500007 	cmp	r0, #7
6030a28c:	9351000f 	cmpls	r1, #15
6030a290:	812fff1e 	bxhi	lr
6030a294:	e2800010 	add	r0, r0, #16
6030a298:	e3a03001 	mov	r3, #1
6030a29c:	e1811013 	orr	r1, r1, r3, lsl r0
6030a2a0:	f57ff05f 	dmb	sy
6030a2a4:	e3a03a01 	mov	r3, #4096	; 0x1000
6030a2a8:	e34a3010 	movt	r3, #40976	; 0xa010
6030a2ac:	e5831f00 	str	r1, [r3, #3840]	; 0xf00
6030a2b0:	e12fff1e 	bx	lr

6030a2b4 <arm_gic_init_secondary>:
6030a2b4:	e92d4010 	push	{r4, lr}
6030a2b8:	ebffff91 	bl	6030a104 <gic_cpu_init>
6030a2bc:	e3a00000 	mov	r0, #0
6030a2c0:	e8bd8010 	pop	{r4, pc}

6030a2c4 <arm_gic_init>:
6030a2c4:	e3a01a01 	mov	r1, #4096	; 0x1000
6030a2c8:	e34a1010 	movt	r1, #40976	; 0xa010
6030a2cc:	e92d4010 	push	{r4, lr}
6030a2d0:	e5912004 	ldr	r2, [r1, #4]
6030a2d4:	f57ff05f 	dmb	sy
6030a2d8:	e202201f 	and	r2, r2, #31
6030a2dc:	e2822001 	add	r2, r2, #1
6030a2e0:	e1a02282 	lsl	r2, r2, #5
6030a2e4:	e3520080 	cmp	r2, #128	; 0x80
6030a2e8:	31a03002 	movcc	r3, r2
6030a2ec:	23a03080 	movcs	r3, #128	; 0x80
6030a2f0:	f57ff05f 	dmb	sy
6030a2f4:	e3a00000 	mov	r0, #0
6030a2f8:	e3520020 	cmp	r2, #32
6030a2fc:	e5810000 	str	r0, [r1]
6030a300:	0a000032 	beq	6030a3d0 <arm_gic_init+0x10c>
6030a304:	e3a00b06 	mov	r0, #6144	; 0x1800
6030a308:	e34a0010 	movt	r0, #40976	; 0xa010
6030a30c:	e3001101 	movw	r1, #257	; 0x101
6030a310:	e3401101 	movt	r1, #257	; 0x101
6030a314:	e3a02020 	mov	r2, #32
6030a318:	f57ff05f 	dmb	sy
6030a31c:	e7821000 	str	r1, [r2, r0]
6030a320:	e2822004 	add	r2, r2, #4
6030a324:	e1530002 	cmp	r3, r2
6030a328:	8afffffa 	bhi	6030a318 <arm_gic_init+0x54>
6030a32c:	e3a01b07 	mov	r1, #7168	; 0x1c00
6030a330:	e34a1010 	movt	r1, #40976	; 0xa010
6030a334:	e3a02020 	mov	r2, #32
6030a338:	e3a00000 	mov	r0, #0
6030a33c:	f57ff05f 	dmb	sy
6030a340:	e7810122 	str	r0, [r1, r2, lsr #2]
6030a344:	e2822010 	add	r2, r2, #16
6030a348:	e1530002 	cmp	r3, r2
6030a34c:	8afffffa 	bhi	6030a33c <arm_gic_init+0x78>
6030a350:	e3a00b05 	mov	r0, #5120	; 0x1400
6030a354:	e34a0010 	movt	r0, #40976	; 0xa010
6030a358:	e30a10a0 	movw	r1, #41120	; 0xa0a0
6030a35c:	e34a10a0 	movt	r1, #41120	; 0xa0a0
6030a360:	e3a02020 	mov	r2, #32
6030a364:	f57ff05f 	dmb	sy
6030a368:	e7821000 	str	r1, [r2, r0]
6030a36c:	e2822004 	add	r2, r2, #4
6030a370:	e1530002 	cmp	r3, r2
6030a374:	8afffffa 	bhi	6030a364 <arm_gic_init+0xa0>
6030a378:	e3a01d42 	mov	r1, #4224	; 0x1080
6030a37c:	e34a1010 	movt	r1, #40976	; 0xa010
6030a380:	e3a02020 	mov	r2, #32
6030a384:	e3e00000 	mvn	r0, #0
6030a388:	f57ff05f 	dmb	sy
6030a38c:	e78101a2 	str	r0, [r1, r2, lsr #3]
6030a390:	e2822020 	add	r2, r2, #32
6030a394:	e1530002 	cmp	r3, r2
6030a398:	8afffffa 	bhi	6030a388 <arm_gic_init+0xc4>
6030a39c:	e3a0cd4e 	mov	ip, #4992	; 0x1380
6030a3a0:	e34ac010 	movt	ip, #40976	; 0xa010
6030a3a4:	e3a00d46 	mov	r0, #4480	; 0x1180
6030a3a8:	e34a0010 	movt	r0, #40976	; 0xa010
6030a3ac:	e3a02020 	mov	r2, #32
6030a3b0:	e3e01000 	mvn	r1, #0
6030a3b4:	f57ff05f 	dmb	sy
6030a3b8:	e78c11a2 	str	r1, [ip, r2, lsr #3]
6030a3bc:	f57ff05f 	dmb	sy
6030a3c0:	e78011a2 	str	r1, [r0, r2, lsr #3]
6030a3c4:	e2822020 	add	r2, r2, #32
6030a3c8:	e1530002 	cmp	r3, r2
6030a3cc:	8afffff8 	bhi	6030a3b4 <arm_gic_init+0xf0>
6030a3d0:	f57ff05f 	dmb	sy
6030a3d4:	e3a03a01 	mov	r3, #4096	; 0x1000
6030a3d8:	e34a3010 	movt	r3, #40976	; 0xa010
6030a3dc:	e3a02003 	mov	r2, #3
6030a3e0:	e5832000 	str	r2, [r3]
6030a3e4:	ebffff46 	bl	6030a104 <gic_cpu_init>
6030a3e8:	e3a00000 	mov	r0, #0
6030a3ec:	e8bd8010 	pop	{r4, pc}

6030a3f0 <_read>:
6030a3f0:	e2520000 	subs	r0, r2, #0
6030a3f4:	da000006 	ble	6030a414 <_read+0x24>
6030a3f8:	e2411001 	sub	r1, r1, #1
6030a3fc:	e081c000 	add	ip, r1, r0
6030a400:	e3a03000 	mov	r3, #0
6030a404:	e5e13001 	strb	r3, [r1, #1]!
6030a408:	e151000c 	cmp	r1, ip
6030a40c:	1afffffc 	bne	6030a404 <_read+0x14>
6030a410:	e12fff1e 	bx	lr
6030a414:	e3a00000 	mov	r0, #0
6030a418:	e12fff1e 	bx	lr

6030a41c <_write>:
6030a41c:	e92d4070 	push	{r4, r5, r6, lr}
6030a420:	e2526000 	subs	r6, r2, #0
6030a424:	da000006 	ble	6030a444 <_write+0x28>
6030a428:	e2414001 	sub	r4, r1, #1
6030a42c:	e0845006 	add	r5, r4, r6
6030a430:	e5f41001 	ldrb	r1, [r4, #1]!
6030a434:	e1a00001 	mov	r0, r1
6030a438:	ebffd7b0 	bl	60300300 <__PutCharacter>
6030a43c:	e1540005 	cmp	r4, r5
6030a440:	1afffffa 	bne	6030a430 <_write+0x14>
6030a444:	e1a00006 	mov	r0, r6
6030a448:	e8bd8070 	pop	{r4, r5, r6, pc}

6030a44c <_close>:
6030a44c:	e3a00000 	mov	r0, #0
6030a450:	e12fff1e 	bx	lr

6030a454 <_isatty>:
6030a454:	e3a00001 	mov	r0, #1
6030a458:	e12fff1e 	bx	lr

6030a45c <_lseek>:
6030a45c:	e3033160 	movw	r3, #12640	; 0x3160
6030a460:	e3463032 	movt	r3, #24626	; 0x6032
6030a464:	e3a0201d 	mov	r2, #29
6030a468:	e3e00000 	mvn	r0, #0
6030a46c:	e5832000 	str	r2, [r3]
6030a470:	e12fff1e 	bx	lr

6030a474 <_fstat>:
6030a474:	e3a03a02 	mov	r3, #8192	; 0x2000
6030a478:	e3a00000 	mov	r0, #0
6030a47c:	e5813004 	str	r3, [r1, #4]
6030a480:	e12fff1e 	bx	lr

6030a484 <_getpid>:
6030a484:	e3a00001 	mov	r0, #1
6030a488:	e12fff1e 	bx	lr

6030a48c <_kill>:
6030a48c:	e3500001 	cmp	r0, #1
6030a490:	0a000001 	beq	6030a49c <_kill+0x10>
6030a494:	e3a00000 	mov	r0, #0
6030a498:	e12fff1e 	bx	lr
6030a49c:	e1a00001 	mov	r0, r1
6030a4a0:	e92d4010 	push	{r4, lr}
6030a4a4:	ebfff4ef 	bl	60307868 <_exit>
6030a4a8:	e3a00000 	mov	r0, #0
6030a4ac:	e8bd8010 	pop	{r4, pc}

6030a4b0 <vGetGenericTimerFreq>:
6030a4b0:	e92d4010 	push	{r4, lr}
6030a4b4:	e30337b0 	movw	r3, #14256	; 0x37b0
6030a4b8:	e3463031 	movt	r3, #24625	; 0x6031
6030a4bc:	e12fff33 	blx	r3
6030a4c0:	e3500001 	cmp	r0, #1
6030a4c4:	128f100c 	addne	r1, pc, #12
6030a4c8:	11c100d0 	ldrdne	r0, [r1]
6030a4cc:	028f100c 	addeq	r1, pc, #12
6030a4d0:	01c100d0 	ldrdeq	r0, [r1]
6030a4d4:	e8bd8010 	pop	{r4, pc}
6030a4d8:	02faf080 	.word	0x02faf080
6030a4dc:	00000000 	.word	0x00000000
6030a4e0:	00bebc20 	.word	0x00bebc20
6030a4e4:	00000000 	.word	0x00000000

6030a4e8 <prvSetupHardware>:
6030a4e8:	e92d4010 	push	{r4, lr}
6030a4ec:	eb001f2c 	bl	603121a4 <ulPortInterruptLock>
6030a4f0:	e30337b0 	movw	r3, #14256	; 0x37b0
6030a4f4:	e3463031 	movt	r3, #24625	; 0x6031
6030a4f8:	e12fff33 	blx	r3
6030a4fc:	e3500001 	cmp	r0, #1
6030a500:	e30334b0 	movw	r3, #13488	; 0x34b0
6030a504:	e3463032 	movt	r3, #24626	; 0x6032
6030a508:	128f1020 	addne	r1, pc, #32
6030a50c:	11c100d0 	ldrdne	r0, [r1]
6030a510:	028f1020 	addeq	r1, pc, #32
6030a514:	01c100d0 	ldrdeq	r0, [r1]
6030a518:	e1c300f0 	strd	r0, [r3]
6030a51c:	ebffff68 	bl	6030a2c4 <arm_gic_init>
6030a520:	eb0001e7 	bl	6030acc4 <psci_init>
6030a524:	e8bd4010 	pop	{r4, lr}
6030a528:	ea00027e 	b	6030af28 <smp_init>
6030a52c:	e320f000 	nop	{0}
6030a530:	02faf080 	.word	0x02faf080
6030a534:	00000000 	.word	0x00000000
6030a538:	00bebc20 	.word	0x00bebc20
6030a53c:	00000000 	.word	0x00000000

6030a540 <prvSetupHardwareSecondary>:
6030a540:	e92d4010 	push	{r4, lr}
6030a544:	eb001f16 	bl	603121a4 <ulPortInterruptLock>
6030a548:	e8bd4010 	pop	{r4, lr}
6030a54c:	eaffff58 	b	6030a2b4 <arm_gic_init_secondary>

6030a550 <vDisableIPIInterrupt>:
6030a550:	e30334b8 	movw	r3, #13496	; 0x34b8
6030a554:	e3463032 	movt	r3, #24626	; 0x6032
6030a558:	e92d4010 	push	{r4, lr}
6030a55c:	e3a02000 	mov	r2, #0
6030a560:	e3a00001 	mov	r0, #1
6030a564:	e5832008 	str	r2, [r3, #8]
6030a568:	e583200c 	str	r2, [r3, #12]
6030a56c:	ebffff12 	bl	6030a1bc <arm_gic_irq_disable>
6030a570:	e8bd4010 	pop	{r4, lr}
6030a574:	e3a00001 	mov	r0, #1
6030a578:	eaffff34 	b	6030a250 <arm_gic_clear_pending_irq>

6030a57c <vConfigureIPIInterrupt>:
6030a57c:	e92d4070 	push	{r4, r5, r6, lr}
6030a580:	e30344b8 	movw	r4, #13496	; 0x34b8
6030a584:	e3464032 	movt	r4, #24626	; 0x6032
6030a588:	e3a05000 	mov	r5, #0
6030a58c:	e1a02005 	mov	r2, r5
6030a590:	e3a010a0 	mov	r1, #160	; 0xa0
6030a594:	e1a00005 	mov	r0, r5
6030a598:	e30231ec 	movw	r3, #8684	; 0x21ec
6030a59c:	e3463031 	movt	r3, #24625	; 0x6031
6030a5a0:	e5843000 	str	r3, [r4]
6030a5a4:	e5845004 	str	r5, [r4, #4]
6030a5a8:	ebffff0c 	bl	6030a1e0 <arm_gic_irq_set_priority>
6030a5ac:	e1a00005 	mov	r0, r5
6030a5b0:	ebfffef8 	bl	6030a198 <arm_gic_irq_enable>
6030a5b4:	e1a02005 	mov	r2, r5
6030a5b8:	e3a010a0 	mov	r1, #160	; 0xa0
6030a5bc:	e3a00001 	mov	r0, #1
6030a5c0:	e3023224 	movw	r3, #8740	; 0x2224
6030a5c4:	e3463031 	movt	r3, #24625	; 0x6031
6030a5c8:	e5843008 	str	r3, [r4, #8]
6030a5cc:	e584500c 	str	r5, [r4, #12]
6030a5d0:	ebffff02 	bl	6030a1e0 <arm_gic_irq_set_priority>
6030a5d4:	e3a00001 	mov	r0, #1
6030a5d8:	ebfffeee 	bl	6030a198 <arm_gic_irq_enable>
6030a5dc:	e3a00002 	mov	r0, #2
6030a5e0:	e1a02005 	mov	r2, r5
6030a5e4:	e3a010a0 	mov	r1, #160	; 0xa0
6030a5e8:	e3003508 	movw	r3, #1288	; 0x508
6030a5ec:	e3463030 	movt	r3, #24624	; 0x6030
6030a5f0:	e5843010 	str	r3, [r4, #16]
6030a5f4:	e5845014 	str	r5, [r4, #20]
6030a5f8:	ebfffef8 	bl	6030a1e0 <arm_gic_irq_set_priority>
6030a5fc:	e8bd4070 	pop	{r4, r5, r6, lr}
6030a600:	e3a00002 	mov	r0, #2
6030a604:	eafffee3 	b	6030a198 <arm_gic_irq_enable>

6030a608 <vConfigureSMPSendIPI>:
6030a608:	e92d4010 	push	{r4, lr}
6030a60c:	e1a04000 	mov	r4, r0
6030a610:	eb0003ca 	bl	6030b540 <pmu_get_secondary_cpu_state>
6030a614:	e2501000 	subs	r1, r0, #0
6030a618:	18bd8010 	popne	{r4, pc}
6030a61c:	e1a00004 	mov	r0, r4
6030a620:	e8bd4010 	pop	{r4, lr}
6030a624:	eaffff17 	b	6030a288 <arm_gic_raise_softirq>

6030a628 <vConfigureTickInterrupt>:
6030a628:	e30334b8 	movw	r3, #13496	; 0x34b8
6030a62c:	e3463032 	movt	r3, #24626	; 0x6032
6030a630:	e92d4370 	push	{r4, r5, r6, r8, r9, lr}
6030a634:	e3022158 	movw	r2, #8536	; 0x2158
6030a638:	e3462031 	movt	r2, #24625	; 0x6031
6030a63c:	e3a06000 	mov	r6, #0
6030a640:	e58320d8 	str	r2, [r3, #216]	; 0xd8
6030a644:	e58360dc 	str	r6, [r3, #220]	; 0xdc
6030a648:	ec598f1e 	mrrc	15, 1, r8, r9, cr14
6030a64c:	e30334b0 	movw	r3, #13488	; 0x34b0
6030a650:	e3463032 	movt	r3, #24626	; 0x6032
6030a654:	e3a02ffa 	mov	r2, #1000	; 0x3e8
6030a658:	e1c300d0 	ldrd	r0, [r3]
6030a65c:	e3a03000 	mov	r3, #0
6030a660:	ebffd89b 	bl	603008d4 <__aeabi_uldivmod>
6030a664:	e0902008 	adds	r2, r0, r8
6030a668:	e0a13009 	adc	r3, r1, r9
6030a66c:	ec432f3e 	mcrr	15, 3, r2, r3, cr14
6030a670:	e3a03001 	mov	r3, #1
6030a674:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
6030a678:	e3a0001b 	mov	r0, #27
6030a67c:	e1a02006 	mov	r2, r6
6030a680:	e3a010e0 	mov	r1, #224	; 0xe0
6030a684:	ebfffed5 	bl	6030a1e0 <arm_gic_irq_set_priority>
6030a688:	e8bd4370 	pop	{r4, r5, r6, r8, r9, lr}
6030a68c:	e3a0001b 	mov	r0, #27
6030a690:	eafffec0 	b	6030a198 <arm_gic_irq_enable>

6030a694 <vClearTickInterrupt>:
6030a694:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
6030a698:	e24dd008 	sub	sp, sp, #8
6030a69c:	ec532f3e 	mrrc	15, 3, r2, r3, cr14
6030a6a0:	e1a00002 	mov	r0, r2
6030a6a4:	e1a01003 	mov	r1, r3
6030a6a8:	e1a05002 	mov	r5, r2
6030a6ac:	e1a0a003 	mov	sl, r3
6030a6b0:	ec532f1e 	mrrc	15, 1, r2, r3, cr14
6030a6b4:	e1520000 	cmp	r2, r0
6030a6b8:	e0d33001 	sbcs	r3, r3, r1
6030a6bc:	e1cd00f0 	strd	r0, [sp]
6030a6c0:	3a000015 	bcc	6030a71c <vClearTickInterrupt+0x88>
6030a6c4:	ec598f1e 	mrrc	15, 1, r8, r9, cr14
6030a6c8:	e30334b0 	movw	r3, #13488	; 0x34b0
6030a6cc:	e3463032 	movt	r3, #24626	; 0x6032
6030a6d0:	e3a02ffa 	mov	r2, #1000	; 0x3e8
6030a6d4:	e1c300d0 	ldrd	r0, [r3]
6030a6d8:	e3a03000 	mov	r3, #0
6030a6dc:	ebffd87c 	bl	603008d4 <__aeabi_uldivmod>
6030a6e0:	e1a04001 	mov	r4, r1
6030a6e4:	e1a02000 	mov	r2, r0
6030a6e8:	e0580005 	subs	r0, r8, r5
6030a6ec:	e0c9100a 	sbc	r1, r9, sl
6030a6f0:	e1a03004 	mov	r3, r4
6030a6f4:	e1a06002 	mov	r6, r2
6030a6f8:	ebffd875 	bl	603008d4 <__aeabi_uldivmod>
6030a6fc:	e0244490 	mla	r4, r0, r4, r4
6030a700:	e2800001 	add	r0, r0, #1
6030a704:	e59d1004 	ldr	r1, [sp, #4]
6030a708:	e0860690 	umull	r0, r6, r0, r6
6030a70c:	e0844006 	add	r4, r4, r6
6030a710:	e0902005 	adds	r2, r0, r5
6030a714:	e0a43001 	adc	r3, r4, r1
6030a718:	ec432f3e 	mcrr	15, 3, r2, r3, cr14
6030a71c:	e28dd008 	add	sp, sp, #8
6030a720:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

6030a724 <vRegisterIRQHandler>:
6030a724:	e350007f 	cmp	r0, #127	; 0x7f
6030a728:	930334b8 	movwls	r3, #13496	; 0x34b8
6030a72c:	93463032 	movtls	r3, #24626	; 0x6032
6030a730:	9083c180 	addls	ip, r3, r0, lsl #3
6030a734:	97831180 	strls	r1, [r3, r0, lsl #3]
6030a738:	958c2004 	strls	r2, [ip, #4]
6030a73c:	e12fff1e 	bx	lr

6030a740 <vApplicationFPUSafeIRQHandler>:
6030a740:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
6030a744:	eb001eb1 	bl	60312210 <ulPortGetCoreId>
6030a748:	e3a05a02 	mov	r5, #8192	; 0x2000
6030a74c:	e34a5010 	movt	r5, #40976	; 0xa010
6030a750:	e30482c4 	movw	r8, #17092	; 0x42c4
6030a754:	e3468032 	movt	r8, #24626	; 0x6032
6030a758:	e30364b8 	movw	r6, #13496	; 0x34b8
6030a75c:	e3466032 	movt	r6, #24626	; 0x6032
6030a760:	e1a07000 	mov	r7, r0
6030a764:	ebfffeb3 	bl	6030a238 <arm_gic_get_active>
6030a768:	e7e94050 	ubfx	r4, r0, #0, #10
6030a76c:	e30033ff 	movw	r3, #1023	; 0x3ff
6030a770:	e1540003 	cmp	r4, r3
6030a774:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
6030a778:	e3100d0e 	tst	r0, #896	; 0x380
6030a77c:	18bd87f0 	popne	{r4, r5, r6, r7, r8, r9, sl, pc}
6030a780:	e5959004 	ldr	r9, [r5, #4]
6030a784:	e5953014 	ldr	r3, [r5, #20]
6030a788:	e5853004 	str	r3, [r5, #4]
6030a78c:	f57ff04f 	dsb	sy
6030a790:	f57ff06f 	isb	sy
6030a794:	e7983107 	ldr	r3, [r8, r7, lsl #2]
6030a798:	e353000f 	cmp	r3, #15
6030a79c:	8a000002 	bhi	6030a7ac <vApplicationFPUSafeIRQHandler+0x6c>
6030a7a0:	f1080080 	cpsie	i
6030a7a4:	f57ff04f 	dsb	sy
6030a7a8:	f57ff06f 	isb	sy
6030a7ac:	e7963184 	ldr	r3, [r6, r4, lsl #3]
6030a7b0:	e0862184 	add	r2, r6, r4, lsl #3
6030a7b4:	e3530000 	cmp	r3, #0
6030a7b8:	0a000008 	beq	6030a7e0 <vApplicationFPUSafeIRQHandler+0xa0>
6030a7bc:	e5920004 	ldr	r0, [r2, #4]
6030a7c0:	e12fff33 	blx	r3
6030a7c4:	f10c0080 	cpsid	i
6030a7c8:	f57ff04f 	dsb	sy
6030a7cc:	f57ff06f 	isb	sy
6030a7d0:	e1a00004 	mov	r0, r4
6030a7d4:	ebfffea6 	bl	6030a274 <arm_gic_eoi>
6030a7d8:	e5859004 	str	r9, [r5, #4]
6030a7dc:	eaffffe0 	b	6030a764 <vApplicationFPUSafeIRQHandler+0x24>
6030a7e0:	e3040c0c 	movw	r0, #19468	; 0x4c0c
6030a7e4:	e3460031 	movt	r0, #24625	; 0x6031
6030a7e8:	e1a01004 	mov	r1, r4
6030a7ec:	eb000cb6 	bl	6030dacc <__wrap_printf>
6030a7f0:	eafffffe 	b	6030a7f0 <vApplicationFPUSafeIRQHandler+0xb0>

6030a7f4 <irq_enable>:
6030a7f4:	e2800020 	add	r0, r0, #32
6030a7f8:	eafffe66 	b	6030a198 <arm_gic_irq_enable>

6030a7fc <irq_register>:
6030a7fc:	e92d4070 	push	{r4, r5, r6, lr}
6030a800:	e2814020 	add	r4, r1, #32
6030a804:	e1a05003 	mov	r5, r3
6030a808:	e1a01000 	mov	r1, r0
6030a80c:	e1a00004 	mov	r0, r4
6030a810:	ebffffc3 	bl	6030a724 <vRegisterIRQHandler>
6030a814:	e1a00004 	mov	r0, r4
6030a818:	e3a02000 	mov	r2, #0
6030a81c:	e1a01005 	mov	r1, r5
6030a820:	ebfffe6e 	bl	6030a1e0 <arm_gic_irq_set_priority>
6030a824:	e3a00001 	mov	r0, #1
6030a828:	e8bd8070 	pop	{r4, r5, r6, pc}

6030a82c <_init>:
6030a82c:	e12fff1e 	bx	lr

6030a830 <app_start>:
6030a830:	e3033b48 	movw	r3, #15176	; 0x3b48
6030a834:	e3463032 	movt	r3, #24626	; 0x6032
6030a838:	e92d4010 	push	{r4, lr}
6030a83c:	e3e02000 	mvn	r2, #0
6030a840:	e5832000 	str	r2, [r3]
6030a844:	eb000bdd 	bl	6030d7c0 <rtos_mem_init>
6030a848:	ebffda51 	bl	60301194 <__libc_init_array>
6030a84c:	ebffff25 	bl	6030a4e8 <prvSetupHardware>
6030a850:	e3a03902 	mov	r3, #32768	; 0x8000
6030a854:	e3443200 	movt	r3, #16896	; 0x4200
6030a858:	e3a02074 	mov	r2, #116	; 0x74
6030a85c:	e3080780 	movw	r0, #34688	; 0x8780
6030a860:	e3460032 	movt	r0, #24626	; 0x6032
6030a864:	e5931270 	ldr	r1, [r3, #624]	; 0x270
6030a868:	e30c3bec 	movw	r3, #52204	; 0xcbec
6030a86c:	e3463030 	movt	r3, #24624	; 0x6030
6030a870:	e12fff33 	blx	r3
6030a874:	e8bd4010 	pop	{r4, lr}
6030a878:	ea000cc8 	b	6030dba0 <main>

6030a87c <FIQHandler>:
6030a87c:	eafffffe 	b	6030a87c <FIQHandler>

6030a880 <Crash_GetExStack>:
6030a880:	e10fc000 	mrs	ip, CPSR
6030a884:	e200001f 	and	r0, r0, #31
6030a888:	e2400010 	sub	r0, r0, #16
6030a88c:	e350000b 	cmp	r0, #11
6030a890:	979ff100 	ldrls	pc, [pc, r0, lsl #2]
6030a894:	ea00000b 	b	6030a8c8 <Crash_GetExStack+0x48>
6030a898:	6030a8ec 	.word	0x6030a8ec
6030a89c:	6030a8c8 	.word	0x6030a8c8
6030a8a0:	6030a8f4 	.word	0x6030a8f4
6030a8a4:	6030a8fc 	.word	0x6030a8fc
6030a8a8:	6030a8c8 	.word	0x6030a8c8
6030a8ac:	6030a8c8 	.word	0x6030a8c8
6030a8b0:	6030a8c8 	.word	0x6030a8c8
6030a8b4:	6030a904 	.word	0x6030a904
6030a8b8:	6030a8c8 	.word	0x6030a8c8
6030a8bc:	6030a8c8 	.word	0x6030a8c8
6030a8c0:	6030a8c8 	.word	0x6030a8c8
6030a8c4:	6030a90c 	.word	0x6030a90c
6030a8c8:	f102001f 	cps	#31
6030a8cc:	e1a0000d 	mov	r0, sp
6030a8d0:	e1a0300e 	mov	r3, lr
6030a8d4:	e129f00c 	msr	CPSR_fc, ip
6030a8d8:	f57ff04f 	dsb	sy
6030a8dc:	f57ff06f 	isb	sy
6030a8e0:	e5810000 	str	r0, [r1]
6030a8e4:	e5823000 	str	r3, [r2]
6030a8e8:	e12fff1e 	bx	lr
6030a8ec:	f1020010 	cps	#16
6030a8f0:	eafffff5 	b	6030a8cc <Crash_GetExStack+0x4c>
6030a8f4:	f1020012 	cps	#18
6030a8f8:	eafffff3 	b	6030a8cc <Crash_GetExStack+0x4c>
6030a8fc:	f1020013 	cps	#19
6030a900:	eafffff1 	b	6030a8cc <Crash_GetExStack+0x4c>
6030a904:	f1020017 	cps	#23
6030a908:	eaffffef 	b	6030a8cc <Crash_GetExStack+0x4c>
6030a90c:	f102001b 	cps	#27
6030a910:	eaffffed 	b	6030a8cc <Crash_GetExStack+0x4c>

6030a914 <Crash_DumpReg>:
6030a914:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030a918:	e59f7160 	ldr	r7, [pc, #352]	; 6030aa80 <Crash_DumpReg+0x16c>
6030a91c:	e1a06000 	mov	r6, r0
6030a920:	e24dd01c 	sub	sp, sp, #28
6030a924:	e1a08001 	mov	r8, r1
6030a928:	e304ac44 	movw	sl, #19524	; 0x4c44
6030a92c:	e346a031 	movt	sl, #24625	; 0x6031
6030a930:	eb001e36 	bl	60312210 <ulPortGetCoreId>
6030a934:	e286901c 	add	r9, r6, #28
6030a938:	e3042c3c 	movw	r2, #19516	; 0x4c3c
6030a93c:	e3462031 	movt	r2, #24625	; 0x6031
6030a940:	e1a05000 	mov	r5, r0
6030a944:	e1a04007 	mov	r4, r7
6030a948:	e287b014 	add	fp, r7, #20
6030a94c:	ea000000 	b	6030a954 <Crash_DumpReg+0x40>
6030a950:	e5b42004 	ldr	r2, [r4, #4]!
6030a954:	e5b93004 	ldr	r3, [r9, #4]!
6030a958:	e1a01005 	mov	r1, r5
6030a95c:	e1a0000a 	mov	r0, sl
6030a960:	eb000c59 	bl	6030dacc <__wrap_printf>
6030a964:	e154000b 	cmp	r4, fp
6030a968:	1afffff8 	bne	6030a950 <Crash_DumpReg+0x3c>
6030a96c:	e3042c40 	movw	r2, #19520	; 0x4c40
6030a970:	e3462031 	movt	r2, #24625	; 0x6031
6030a974:	e3049c44 	movw	r9, #19524	; 0x4c44
6030a978:	e3469031 	movt	r9, #24625	; 0x6031
6030a97c:	e59f4100 	ldr	r4, [pc, #256]	; 6030aa84 <Crash_DumpReg+0x170>
6030a980:	e2466004 	sub	r6, r6, #4
6030a984:	ea000000 	b	6030a98c <Crash_DumpReg+0x78>
6030a988:	e4942004 	ldr	r2, [r4], #4
6030a98c:	e5b63004 	ldr	r3, [r6, #4]!
6030a990:	e1a01005 	mov	r1, r5
6030a994:	e1a00009 	mov	r0, r9
6030a998:	eb000c4b 	bl	6030dacc <__wrap_printf>
6030a99c:	e1540007 	cmp	r4, r7
6030a9a0:	1afffff8 	bne	6030a988 <Crash_DumpReg+0x74>
6030a9a4:	e1a02008 	mov	r2, r8
6030a9a8:	e1a01005 	mov	r1, r5
6030a9ac:	e3040c5c 	movw	r0, #19548	; 0x4c5c
6030a9b0:	e3460031 	movt	r0, #24625	; 0x6031
6030a9b4:	eb000c44 	bl	6030dacc <__wrap_printf>
6030a9b8:	e1a00008 	mov	r0, r8
6030a9bc:	e28d2014 	add	r2, sp, #20
6030a9c0:	e28d1010 	add	r1, sp, #16
6030a9c4:	ebffffad 	bl	6030a880 <Crash_GetExStack>
6030a9c8:	e59d2014 	ldr	r2, [sp, #20]
6030a9cc:	e1a01005 	mov	r1, r5
6030a9d0:	e3040c88 	movw	r0, #19592	; 0x4c88
6030a9d4:	e3460031 	movt	r0, #24625	; 0x6031
6030a9d8:	eb000c3b 	bl	6030dacc <__wrap_printf>
6030a9dc:	e59d8010 	ldr	r8, [sp, #16]
6030a9e0:	e3040cb4 	movw	r0, #19636	; 0x4cb4
6030a9e4:	e3460031 	movt	r0, #24625	; 0x6031
6030a9e8:	e3a03080 	mov	r3, #128	; 0x80
6030a9ec:	e1a02008 	mov	r2, r8
6030a9f0:	e1a01005 	mov	r1, r5
6030a9f4:	e3046cfc 	movw	r6, #19708	; 0x4cfc
6030a9f8:	e3466031 	movt	r6, #24625	; 0x6031
6030a9fc:	e2887c02 	add	r7, r8, #512	; 0x200
6030aa00:	e1a04008 	mov	r4, r8
6030aa04:	eb000c30 	bl	6030dacc <__wrap_printf>
6030aa08:	e594200c 	ldr	r2, [r4, #12]
6030aa0c:	e5943000 	ldr	r3, [r4]
6030aa10:	e58d2008 	str	r2, [sp, #8]
6030aa14:	e1a01005 	mov	r1, r5
6030aa18:	e594c008 	ldr	ip, [r4, #8]
6030aa1c:	e58dc004 	str	ip, [sp, #4]
6030aa20:	e1a02004 	mov	r2, r4
6030aa24:	e594c004 	ldr	ip, [r4, #4]
6030aa28:	e1a00006 	mov	r0, r6
6030aa2c:	e2844010 	add	r4, r4, #16
6030aa30:	e58dc000 	str	ip, [sp]
6030aa34:	eb000c24 	bl	6030dacc <__wrap_printf>
6030aa38:	e1570004 	cmp	r7, r4
6030aa3c:	1afffff1 	bne	6030aa08 <Crash_DumpReg+0xf4>
6030aa40:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
6030aa44:	e3130004 	tst	r3, #4
6030aa48:	0a00000a 	beq	6030aa78 <Crash_DumpReg+0x164>
6030aa4c:	e288307f 	add	r3, r8, #127	; 0x7f
6030aa50:	e3c3303f 	bic	r3, r3, #63	; 0x3f
6030aa54:	e3c8803f 	bic	r8, r8, #63	; 0x3f
6030aa58:	e2833040 	add	r3, r3, #64	; 0x40
6030aa5c:	e1580003 	cmp	r8, r3
6030aa60:	2a000003 	bcs	6030aa74 <Crash_DumpReg+0x160>
6030aa64:	ee078f3a 	mcr	15, 0, r8, cr7, cr10, {1}
6030aa68:	e2888040 	add	r8, r8, #64	; 0x40
6030aa6c:	e1530008 	cmp	r3, r8
6030aa70:	8afffffb 	bhi	6030aa64 <Crash_DumpReg+0x150>
6030aa74:	f57ff05f 	dmb	sy
6030aa78:	e28dd01c 	add	sp, sp, #28
6030aa7c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030aa80:	60314e58 	.word	0x60314e58
6030aa84:	60314e3c 	.word	0x60314e3c

6030aa88 <UndefinedExceptionHandler>:
6030aa88:	e30338c0 	movw	r3, #14528	; 0x38c0
6030aa8c:	e3463032 	movt	r3, #24626	; 0x6032
6030aa90:	e92d4070 	push	{r4, r5, r6, lr}
6030aa94:	e1a05001 	mov	r5, r1
6030aa98:	e1a04000 	mov	r4, r0
6030aa9c:	e5931000 	ldr	r1, [r3]
6030aaa0:	e3040d30 	movw	r0, #19760	; 0x4d30
6030aaa4:	e3460031 	movt	r0, #24625	; 0x6031
6030aaa8:	eb000c07 	bl	6030dacc <__wrap_printf>
6030aaac:	e1a01005 	mov	r1, r5
6030aab0:	e1a00004 	mov	r0, r4
6030aab4:	ebffff96 	bl	6030a914 <Crash_DumpReg>
6030aab8:	eafffffe 	b	6030aab8 <UndefinedExceptionHandler+0x30>

6030aabc <DataAbortHandler>:
6030aabc:	e92d4070 	push	{r4, r5, r6, lr}
6030aac0:	e1a04000 	mov	r4, r0
6030aac4:	e1a05001 	mov	r5, r1
6030aac8:	ee151f10 	mrc	15, 0, r1, cr5, cr0, {0}
6030aacc:	e3040d60 	movw	r0, #19808	; 0x4d60
6030aad0:	e3460031 	movt	r0, #24625	; 0x6031
6030aad4:	eb000bfc 	bl	6030dacc <__wrap_printf>
6030aad8:	e30338b8 	movw	r3, #14520	; 0x38b8
6030aadc:	e3463032 	movt	r3, #24626	; 0x6032
6030aae0:	e3040d94 	movw	r0, #19860	; 0x4d94
6030aae4:	e3460031 	movt	r0, #24625	; 0x6031
6030aae8:	e5931000 	ldr	r1, [r3]
6030aaec:	eb000bf6 	bl	6030dacc <__wrap_printf>
6030aaf0:	e1a01005 	mov	r1, r5
6030aaf4:	e1a00004 	mov	r0, r4
6030aaf8:	ebffff85 	bl	6030a914 <Crash_DumpReg>
6030aafc:	eafffffe 	b	6030aafc <DataAbortHandler+0x40>

6030ab00 <PrefetchAbortHandler>:
6030ab00:	e92d4070 	push	{r4, r5, r6, lr}
6030ab04:	e1a04000 	mov	r4, r0
6030ab08:	e1a05001 	mov	r5, r1
6030ab0c:	ee151f30 	mrc	15, 0, r1, cr5, cr0, {1}
6030ab10:	e3040dc8 	movw	r0, #19912	; 0x4dc8
6030ab14:	e3460031 	movt	r0, #24625	; 0x6031
6030ab18:	eb000beb 	bl	6030dacc <__wrap_printf>
6030ab1c:	e30338bc 	movw	r3, #14524	; 0x38bc
6030ab20:	e3463032 	movt	r3, #24626	; 0x6032
6030ab24:	e3040d94 	movw	r0, #19860	; 0x4d94
6030ab28:	e3460031 	movt	r0, #24625	; 0x6031
6030ab2c:	e5931000 	ldr	r1, [r3]
6030ab30:	eb000be5 	bl	6030dacc <__wrap_printf>
6030ab34:	e1a01005 	mov	r1, r5
6030ab38:	e1a00004 	mov	r0, r4
6030ab3c:	ebffff74 	bl	6030a914 <Crash_DumpReg>
6030ab40:	eafffffe 	b	6030ab40 <PrefetchAbortHandler+0x40>

6030ab44 <LOGUART_PutChar>:
6030ab44:	e3a03902 	mov	r3, #32768	; 0x8000
6030ab48:	e3443200 	movt	r3, #16896	; 0x4200
6030ab4c:	e92d4070 	push	{r4, r5, r6, lr}
6030ab50:	e3a0c014 	mov	ip, #20
6030ab54:	e593527c 	ldr	r5, [r3, #636]	; 0x27c
6030ab58:	e3046e70 	movw	r6, #20080	; 0x4e70
6030ab5c:	e3466031 	movt	r6, #24625	; 0x6031
6030ab60:	e7e15355 	ubfx	r5, r5, #6, #2
6030ab64:	e3a0e903 	mov	lr, #49152	; 0xc000
6030ab68:	e344e200 	movt	lr, #16896	; 0x4200
6030ab6c:	e02c659c 	mla	ip, ip, r5, r6
6030ab70:	e3a03000 	mov	r3, #0
6030ab74:	e59c400c 	ldr	r4, [ip, #12]
6030ab78:	ea000003 	b	6030ab8c <LOGUART_PutChar+0x48>
6030ab7c:	e59e1014 	ldr	r1, [lr, #20]
6030ab80:	e59c2004 	ldr	r2, [ip, #4]
6030ab84:	e1110002 	tst	r1, r2
6030ab88:	1a000002 	bne	6030ab98 <LOGUART_PutChar+0x54>
6030ab8c:	e2833001 	add	r3, r3, #1
6030ab90:	e1540003 	cmp	r4, r3
6030ab94:	8afffff8 	bhi	6030ab7c <LOGUART_PutChar+0x38>
6030ab98:	e3a03014 	mov	r3, #20
6030ab9c:	e350000a 	cmp	r0, #10
6030aba0:	03a0200d 	moveq	r2, #13
6030aba4:	e0050593 	mul	r5, r3, r5
6030aba8:	e7963005 	ldr	r3, [r6, r5]
6030abac:	e1a03103 	lsl	r3, r3, #2
6030abb0:	e2833442 	add	r3, r3, #1107296256	; 0x42000000
6030abb4:	e2833903 	add	r3, r3, #49152	; 0xc000
6030abb8:	e583005c 	str	r0, [r3, #92]	; 0x5c
6030abbc:	0583205c 	streq	r2, [r3, #92]	; 0x5c
6030abc0:	e8bd8070 	pop	{r4, r5, r6, pc}

6030abc4 <psci_cpu_suspend>:
6030abc4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
6030abc8:	e1a0e000 	mov	lr, r0
6030abcc:	e24dd02c 	sub	sp, sp, #44	; 0x2c
6030abd0:	e3a03000 	mov	r3, #0
6030abd4:	e1a02001 	mov	r2, r1
6030abd8:	e28dc018 	add	ip, sp, #24
6030abdc:	e3a00361 	mov	r0, #-2080374783	; 0x84000001
6030abe0:	e1a0100e 	mov	r1, lr
6030abe4:	e58d3014 	str	r3, [sp, #20]
6030abe8:	e58dc010 	str	ip, [sp, #16]
6030abec:	e58d300c 	str	r3, [sp, #12]
6030abf0:	e58d3008 	str	r3, [sp, #8]
6030abf4:	e58d3004 	str	r3, [sp, #4]
6030abf8:	e58d3000 	str	r3, [sp]
6030abfc:	ebffd654 	bl	60300554 <__arm_smccc_smc>
6030ac00:	e59d0018 	ldr	r0, [sp, #24]
6030ac04:	e28dd02c 	add	sp, sp, #44	; 0x2c
6030ac08:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

6030ac0c <psci_cpu_off>:
6030ac0c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
6030ac10:	e3a03000 	mov	r3, #0
6030ac14:	e24dd02c 	sub	sp, sp, #44	; 0x2c
6030ac18:	e1a02003 	mov	r2, r3
6030ac1c:	e1a01000 	mov	r1, r0
6030ac20:	e28dc018 	add	ip, sp, #24
6030ac24:	e3a003a1 	mov	r0, #-2080374782	; 0x84000002
6030ac28:	e58d3014 	str	r3, [sp, #20]
6030ac2c:	e58d300c 	str	r3, [sp, #12]
6030ac30:	e58d3008 	str	r3, [sp, #8]
6030ac34:	e58d3004 	str	r3, [sp, #4]
6030ac38:	e58d3000 	str	r3, [sp]
6030ac3c:	e58dc010 	str	ip, [sp, #16]
6030ac40:	ebffd643 	bl	60300554 <__arm_smccc_smc>
6030ac44:	e59d3018 	ldr	r3, [sp, #24]
6030ac48:	e2833009 	add	r3, r3, #9
6030ac4c:	e3530009 	cmp	r3, #9
6030ac50:	93042fb0 	movwls	r2, #20400	; 0x4fb0
6030ac54:	93462031 	movtls	r2, #24625	; 0x6031
6030ac58:	83e00015 	mvnhi	r0, #21
6030ac5c:	97920103 	ldrls	r0, [r2, r3, lsl #2]
6030ac60:	e28dd02c 	add	sp, sp, #44	; 0x2c
6030ac64:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

6030ac68 <psci_cpu_on>:
6030ac68:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
6030ac6c:	e3a03000 	mov	r3, #0
6030ac70:	e24dd02c 	sub	sp, sp, #44	; 0x2c
6030ac74:	e1a02001 	mov	r2, r1
6030ac78:	e28dc018 	add	ip, sp, #24
6030ac7c:	e1a01000 	mov	r1, r0
6030ac80:	e58d3014 	str	r3, [sp, #20]
6030ac84:	e3a003e1 	mov	r0, #-2080374781	; 0x84000003
6030ac88:	e58d300c 	str	r3, [sp, #12]
6030ac8c:	e58d3008 	str	r3, [sp, #8]
6030ac90:	e58d3004 	str	r3, [sp, #4]
6030ac94:	e58d3000 	str	r3, [sp]
6030ac98:	e58dc010 	str	ip, [sp, #16]
6030ac9c:	ebffd62c 	bl	60300554 <__arm_smccc_smc>
6030aca0:	e59d3018 	ldr	r3, [sp, #24]
6030aca4:	e2833009 	add	r3, r3, #9
6030aca8:	e3530009 	cmp	r3, #9
6030acac:	93042fb0 	movwls	r2, #20400	; 0x4fb0
6030acb0:	93462031 	movtls	r2, #24625	; 0x6031
6030acb4:	83e00015 	mvnhi	r0, #21
6030acb8:	97920103 	ldrls	r0, [r2, r3, lsl #2]
6030acbc:	e28dd02c 	add	sp, sp, #44	; 0x2c
6030acc0:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

6030acc4 <psci_init>:
6030acc4:	e92d4030 	push	{r4, r5, lr}
6030acc8:	e3a04000 	mov	r4, #0
6030accc:	e24dd02c 	sub	sp, sp, #44	; 0x2c
6030acd0:	e1a03004 	mov	r3, r4
6030acd4:	e1a02004 	mov	r2, r4
6030acd8:	e28d5018 	add	r5, sp, #24
6030acdc:	e1a01004 	mov	r1, r4
6030ace0:	e3a00321 	mov	r0, #-2080374784	; 0x84000000
6030ace4:	e58d4014 	str	r4, [sp, #20]
6030ace8:	e1cd40fc 	strd	r4, [sp, #12]
6030acec:	e58d4008 	str	r4, [sp, #8]
6030acf0:	e58d4004 	str	r4, [sp, #4]
6030acf4:	e58d4000 	str	r4, [sp]
6030acf8:	ebffd615 	bl	60300554 <__arm_smccc_smc>
6030acfc:	e59d2018 	ldr	r2, [sp, #24]
6030ad00:	e30f3ffe 	movw	r3, #65534	; 0xfffe
6030ad04:	e0033002 	and	r3, r3, r2
6030ad08:	e1933822 	orrs	r3, r3, r2, lsr #16
6030ad0c:	0a00003d 	beq	6030ae08 <psci_init+0x144>
6030ad10:	e1a01004 	mov	r1, r4
6030ad14:	e1a03004 	mov	r3, r4
6030ad18:	e1a02004 	mov	r2, r4
6030ad1c:	e3a00006 	mov	r0, #6
6030ad20:	e3480400 	movt	r0, #33792	; 0x8400
6030ad24:	e58d4014 	str	r4, [sp, #20]
6030ad28:	e1cd40fc 	strd	r4, [sp, #12]
6030ad2c:	e58d4008 	str	r4, [sp, #8]
6030ad30:	e58d4004 	str	r4, [sp, #4]
6030ad34:	e58d4000 	str	r4, [sp]
6030ad38:	ebffd605 	bl	60300554 <__arm_smccc_smc>
6030ad3c:	e59d1018 	ldr	r1, [sp, #24]
6030ad40:	e3510002 	cmp	r1, #2
6030ad44:	0a000023 	beq	6030add8 <psci_init+0x114>
6030ad48:	e3710001 	cmn	r1, #1
6030ad4c:	0a000027 	beq	6030adf0 <psci_init+0x12c>
6030ad50:	e3510001 	cmp	r1, #1
6030ad54:	8a000013 	bhi	6030ada8 <psci_init+0xe4>
6030ad58:	e1a01004 	mov	r1, r4
6030ad5c:	e1cd40fc 	strd	r4, [sp, #12]
6030ad60:	e1a03004 	mov	r3, r4
6030ad64:	e1a02004 	mov	r2, r4
6030ad68:	e3a00007 	mov	r0, #7
6030ad6c:	e3480400 	movt	r0, #33792	; 0x8400
6030ad70:	e58d4014 	str	r4, [sp, #20]
6030ad74:	e58d4008 	str	r4, [sp, #8]
6030ad78:	e58d4004 	str	r4, [sp, #4]
6030ad7c:	e58d4000 	str	r4, [sp]
6030ad80:	ebffd5f3 	bl	60300554 <__arm_smccc_smc>
6030ad84:	e59d1018 	ldr	r1, [sp, #24]
6030ad88:	e21154ff 	ands	r5, r1, #-16777216	; 0xff000000
6030ad8c:	1a00000b 	bne	6030adc0 <psci_init+0xfc>
6030ad90:	e3040f84 	movw	r0, #20356	; 0x4f84
6030ad94:	e3460031 	movt	r0, #24625	; 0x6031
6030ad98:	eb000b4b 	bl	6030dacc <__wrap_printf>
6030ad9c:	e1a00005 	mov	r0, r5
6030ada0:	e28dd02c 	add	sp, sp, #44	; 0x2c
6030ada4:	e8bd8030 	pop	{r4, r5, pc}
6030ada8:	e3040f18 	movw	r0, #20248	; 0x4f18
6030adac:	e3460031 	movt	r0, #24625	; 0x6031
6030adb0:	eb000b45 	bl	6030dacc <__wrap_printf>
6030adb4:	e1a00004 	mov	r0, r4
6030adb8:	e28dd02c 	add	sp, sp, #44	; 0x2c
6030adbc:	e8bd8030 	pop	{r4, r5, pc}
6030adc0:	e3040f48 	movw	r0, #20296	; 0x4f48
6030adc4:	e3460031 	movt	r0, #24625	; 0x6031
6030adc8:	eb000b3f 	bl	6030dacc <__wrap_printf>
6030adcc:	e1a00004 	mov	r0, r4
6030add0:	e28dd02c 	add	sp, sp, #44	; 0x2c
6030add4:	e8bd8030 	pop	{r4, r5, pc}
6030add8:	e3040ed0 	movw	r0, #20176	; 0x4ed0
6030addc:	e3460031 	movt	r0, #24625	; 0x6031
6030ade0:	eb000b39 	bl	6030dacc <__wrap_printf>
6030ade4:	e1a00004 	mov	r0, r4
6030ade8:	e28dd02c 	add	sp, sp, #44	; 0x2c
6030adec:	e8bd8030 	pop	{r4, r5, pc}
6030adf0:	e3040ef4 	movw	r0, #20212	; 0x4ef4
6030adf4:	e3460031 	movt	r0, #24625	; 0x6031
6030adf8:	eb000b33 	bl	6030dacc <__wrap_printf>
6030adfc:	e1a00004 	mov	r0, r4
6030ae00:	e28dd02c 	add	sp, sp, #44	; 0x2c
6030ae04:	e8bd8030 	pop	{r4, r5, pc}
6030ae08:	e3040eac 	movw	r0, #20140	; 0x4eac
6030ae0c:	e3460031 	movt	r0, #24625	; 0x6031
6030ae10:	eb000b2d 	bl	6030dacc <__wrap_printf>
6030ae14:	e3e00015 	mvn	r0, #21
6030ae18:	eaffffe0 	b	6030ada0 <psci_init+0xdc>

6030ae1c <rtk_core1_power_on>:
6030ae1c:	e92d4070 	push	{r4, r5, r6, lr}
6030ae20:	e3a06c02 	mov	r6, #512	; 0x200
6030ae24:	e3446100 	movt	r6, #16640	; 0x4100
6030ae28:	e3a04441 	mov	r4, #1090519040	; 0x41000000
6030ae2c:	e3a00032 	mov	r0, #50	; 0x32
6030ae30:	e5963004 	ldr	r3, [r6, #4]
6030ae34:	e30a5ffc 	movw	r5, #45052	; 0xaffc
6030ae38:	e3465030 	movt	r5, #24624	; 0x6030
6030ae3c:	e3c33022 	bic	r3, r3, #34	; 0x22
6030ae40:	e5863004 	str	r3, [r6, #4]
6030ae44:	e5943004 	ldr	r3, [r4, #4]
6030ae48:	e3833020 	orr	r3, r3, #32
6030ae4c:	e5843004 	str	r3, [r4, #4]
6030ae50:	e12fff35 	blx	r5
6030ae54:	e5943000 	ldr	r3, [r4]
6030ae58:	e3a00032 	mov	r0, #50	; 0x32
6030ae5c:	e3833030 	orr	r3, r3, #48	; 0x30
6030ae60:	e5843000 	str	r3, [r4]
6030ae64:	e12fff35 	blx	r5
6030ae68:	e5943000 	ldr	r3, [r4]
6030ae6c:	e3a00f7d 	mov	r0, #500	; 0x1f4
6030ae70:	e38330c0 	orr	r3, r3, #192	; 0xc0
6030ae74:	e5843000 	str	r3, [r4]
6030ae78:	e12fff35 	blx	r5
6030ae7c:	e5943004 	ldr	r3, [r4, #4]
6030ae80:	e3a00032 	mov	r0, #50	; 0x32
6030ae84:	e3c33030 	bic	r3, r3, #48	; 0x30
6030ae88:	e5843004 	str	r3, [r4, #4]
6030ae8c:	e12fff35 	blx	r5
6030ae90:	e5962004 	ldr	r2, [r6, #4]
6030ae94:	e3013122 	movw	r3, #4386	; 0x1122
6030ae98:	e3403100 	movt	r3, #256	; 0x100
6030ae9c:	e1823003 	orr	r3, r2, r3
6030aea0:	e5863004 	str	r3, [r6, #4]
6030aea4:	e8bd8070 	pop	{r4, r5, r6, pc}

6030aea8 <vPortSecondaryStart>:
6030aea8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
6030aeac:	e24dd00c 	sub	sp, sp, #12
6030aeb0:	eb001cd6 	bl	60312210 <ulPortGetCoreId>
6030aeb4:	eb0001a1 	bl	6030b540 <pmu_get_secondary_cpu_state>
6030aeb8:	e3500000 	cmp	r0, #0
6030aebc:	0a000012 	beq	6030af0c <vPortSecondaryStart+0x64>
6030aec0:	eb001cd2 	bl	60312210 <ulPortGetCoreId>
6030aec4:	e3a02049 	mov	r2, #73	; 0x49
6030aec8:	e1a03000 	mov	r3, r0
6030aecc:	e304113c 	movw	r1, #16700	; 0x413c
6030aed0:	e3461031 	movt	r1, #24625	; 0x6031
6030aed4:	e3a00004 	mov	r0, #4
6030aed8:	e58d3000 	str	r3, [sp]
6030aedc:	e305300c 	movw	r3, #20492	; 0x500c
6030aee0:	e3463031 	movt	r3, #24625	; 0x6031
6030aee4:	ebfffbdd 	bl	60309e60 <rtk_log_write_nano>
6030aee8:	ebfffd94 	bl	6030a540 <prvSetupHardwareSecondary>
6030aeec:	ebfffda2 	bl	6030a57c <vConfigureIPIInterrupt>
6030aef0:	ebfffdcc 	bl	6030a628 <vConfigureTickInterrupt>
6030aef4:	e3a01000 	mov	r1, #0
6030aef8:	e3a00001 	mov	r0, #1
6030aefc:	eb00018b 	bl	6030b530 <pmu_set_secondary_cpu_state>
6030af00:	e28dd00c 	add	sp, sp, #12
6030af04:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
6030af08:	eaffd5bf 	b	6030060c <vPortRestoreTaskContext>
6030af0c:	eb000aa6 	bl	6030d9ac <rtos_sched_get_state>
6030af10:	e3500001 	cmp	r0, #1
6030af14:	1affffe9 	bne	6030aec0 <vPortSecondaryStart+0x18>
6030af18:	eb000aa3 	bl	6030d9ac <rtos_sched_get_state>
6030af1c:	e3500001 	cmp	r0, #1
6030af20:	0afffff9 	beq	6030af0c <vPortSecondaryStart+0x64>
6030af24:	eaffffe5 	b	6030aec0 <vPortSecondaryStart+0x18>

6030af28 <smp_init>:
6030af28:	e92d40f0 	push	{r4, r5, r6, r7, lr}
6030af2c:	e3a02049 	mov	r2, #73	; 0x49
6030af30:	e24dd00c 	sub	sp, sp, #12
6030af34:	e3a00004 	mov	r0, #4
6030af38:	e3053018 	movw	r3, #20504	; 0x5018
6030af3c:	e3463031 	movt	r3, #24625	; 0x6031
6030af40:	e304113c 	movw	r1, #16700	; 0x413c
6030af44:	e3461031 	movt	r1, #24625	; 0x6031
6030af48:	ebfffbc4 	bl	60309e60 <rtk_log_write_nano>
6030af4c:	e30337b0 	movw	r3, #14256	; 0x37b0
6030af50:	e3463031 	movt	r3, #24625	; 0x6031
6030af54:	e12fff33 	blx	r3
6030af58:	e3500003 	cmp	r0, #3
6030af5c:	0a000004 	beq	6030af74 <smp_init+0x4c>
6030af60:	ebffffad 	bl	6030ae1c <rtk_core1_power_on>
6030af64:	e30a3ffc 	movw	r3, #45052	; 0xaffc
6030af68:	e3463030 	movt	r3, #24624	; 0x6030
6030af6c:	e3a00032 	mov	r0, #50	; 0x32
6030af70:	e12fff33 	blx	r3
6030af74:	e30050c8 	movw	r5, #200	; 0xc8
6030af78:	e3465030 	movt	r5, #24624	; 0x6030
6030af7c:	e3057040 	movw	r7, #20544	; 0x5040
6030af80:	e3467031 	movt	r7, #24625	; 0x6031
6030af84:	e304613c 	movw	r6, #16700	; 0x413c
6030af88:	e3466031 	movt	r6, #24625	; 0x6031
6030af8c:	e3a04000 	mov	r4, #0
6030af90:	eb001c9e 	bl	60312210 <ulPortGetCoreId>
6030af94:	e1a01005 	mov	r1, r5
6030af98:	e1500004 	cmp	r0, r4
6030af9c:	0a000010 	beq	6030afe4 <smp_init+0xbc>
6030afa0:	e1a00004 	mov	r0, r4
6030afa4:	ebffff2f 	bl	6030ac68 <psci_cpu_on>
6030afa8:	e3500000 	cmp	r0, #0
6030afac:	ba000004 	blt	6030afc4 <smp_init+0x9c>
6030afb0:	e3540001 	cmp	r4, #1
6030afb4:	e3a04001 	mov	r4, #1
6030afb8:	1afffff4 	bne	6030af90 <smp_init+0x68>
6030afbc:	e28dd00c 	add	sp, sp, #12
6030afc0:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
6030afc4:	e58d0004 	str	r0, [sp, #4]
6030afc8:	e1a03007 	mov	r3, r7
6030afcc:	e3a02045 	mov	r2, #69	; 0x45
6030afd0:	e1a01006 	mov	r1, r6
6030afd4:	e3a00002 	mov	r0, #2
6030afd8:	e58d4000 	str	r4, [sp]
6030afdc:	ebfffb9f 	bl	60309e60 <rtk_log_write_nano>
6030afe0:	eafffff2 	b	6030afb0 <smp_init+0x88>
6030afe4:	e3a01000 	mov	r1, #0
6030afe8:	eb000150 	bl	6030b530 <pmu_set_secondary_cpu_state>
6030afec:	eaffffef 	b	6030afb0 <smp_init+0x88>

6030aff0 <SOCPS_LPWAP_ipc_int>:
6030aff0:	e3a01001 	mov	r1, #1
6030aff4:	e1a00001 	mov	r0, r1
6030aff8:	eafff738 	b	60308ce0 <ipc_get_message>

6030affc <DelayUs>:
6030affc:	e92d4370 	push	{r4, r5, r6, r8, r9, lr}
6030b000:	e30337b0 	movw	r3, #14256	; 0x37b0
6030b004:	e3463031 	movt	r3, #24625	; 0x6031
6030b008:	e1a06000 	mov	r6, r0
6030b00c:	e12fff33 	blx	r3
6030b010:	e3500003 	cmp	r0, #3
6030b014:	0a000017 	beq	6030b078 <DelayUs+0x7c>
6030b018:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
6030b01c:	e3130001 	tst	r3, #1
6030b020:	0a000014 	beq	6030b078 <DelayUs+0x7c>
6030b024:	ec598f1e 	mrrc	15, 1, r8, r9, cr14
6030b028:	ebfffd20 	bl	6030a4b0 <vGetGenericTimerFreq>
6030b02c:	e0830096 	umull	r0, r3, r6, r0
6030b030:	e3042240 	movw	r2, #16960	; 0x4240
6030b034:	e340200f 	movt	r2, #15
6030b038:	e1a04008 	mov	r4, r8
6030b03c:	e0213196 	mla	r1, r6, r1, r3
6030b040:	e3a03000 	mov	r3, #0
6030b044:	ebffd622 	bl	603008d4 <__aeabi_uldivmod>
6030b048:	e0900008 	adds	r0, r0, r8
6030b04c:	e0a11009 	adc	r1, r1, r9
6030b050:	ec532f1e 	mrrc	15, 1, r2, r3, cr14
6030b054:	e1520000 	cmp	r2, r0
6030b058:	e0d33001 	sbcs	r3, r3, r1
6030b05c:	28bd8370 	popcs	{r4, r5, r6, r8, r9, pc}
6030b060:	e320f000 	nop	{0}
6030b064:	ec532f1e 	mrrc	15, 1, r2, r3, cr14
6030b068:	e1520000 	cmp	r2, r0
6030b06c:	e0d33001 	sbcs	r3, r3, r1
6030b070:	3afffffa 	bcc	6030b060 <DelayUs+0x64>
6030b074:	e8bd8370 	pop	{r4, r5, r6, r8, r9, pc}
6030b078:	e3a03001 	mov	r3, #1
6030b07c:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
6030b080:	eaffffe7 	b	6030b024 <DelayUs+0x28>

6030b084 <DelayMs>:
6030b084:	e3a02ffa 	mov	r2, #1000	; 0x3e8
6030b088:	e30a3ffc 	movw	r3, #45052	; 0xaffc
6030b08c:	e3463030 	movt	r3, #24624	; 0x6030
6030b090:	e0000092 	mul	r0, r2, r0
6030b094:	e12fff13 	bx	r3

6030b098 <SOCPS_SleepPG>:
6030b098:	e92d4010 	push	{r4, lr}
6030b09c:	eb00003c 	bl	6030b194 <pmu_exec_sleep_hook_funs>
6030b0a0:	e3500007 	cmp	r0, #7
6030b0a4:	0a000001 	beq	6030b0b0 <SOCPS_SleepPG+0x18>
6030b0a8:	e8bd4010 	pop	{r4, lr}
6030b0ac:	ea00004a 	b	6030b1dc <pmu_exec_wakeup_hook_funs>
6030b0b0:	e1a04000 	mov	r4, r0
6030b0b4:	e3a02049 	mov	r2, #73	; 0x49
6030b0b8:	e3a00004 	mov	r0, #4
6030b0bc:	e305305c 	movw	r3, #20572	; 0x505c
6030b0c0:	e3463031 	movt	r3, #24625	; 0x6031
6030b0c4:	e304113c 	movw	r1, #16700	; 0x413c
6030b0c8:	e3461031 	movt	r1, #24625	; 0x6031
6030b0cc:	ebfffb63 	bl	60309e60 <rtk_log_write_nano>
6030b0d0:	eb00232f 	bl	60313d94 <SOCPS_SleepPG_LIB>
6030b0d4:	e3a02049 	mov	r2, #73	; 0x49
6030b0d8:	e3a00004 	mov	r0, #4
6030b0dc:	e3053064 	movw	r3, #20580	; 0x5064
6030b0e0:	e3463031 	movt	r3, #24625	; 0x6031
6030b0e4:	e304113c 	movw	r1, #16700	; 0x413c
6030b0e8:	e3461031 	movt	r1, #24625	; 0x6031
6030b0ec:	ebfffb5b 	bl	60309e60 <rtk_log_write_nano>
6030b0f0:	e1a00004 	mov	r0, r4
6030b0f4:	eb000038 	bl	6030b1dc <pmu_exec_wakeup_hook_funs>
6030b0f8:	ebffff8a 	bl	6030af28 <smp_init>
6030b0fc:	e8bd4010 	pop	{r4, lr}
6030b100:	e3a01002 	mov	r1, #2
6030b104:	e3a00001 	mov	r0, #1
6030b108:	ea000108 	b	6030b530 <pmu_set_secondary_cpu_state>

6030b10c <SOCPS_SleepCG>:
6030b10c:	e92d4010 	push	{r4, lr}
6030b110:	eb00001f 	bl	6030b194 <pmu_exec_sleep_hook_funs>
6030b114:	e3500007 	cmp	r0, #7
6030b118:	1a000010 	bne	6030b160 <SOCPS_SleepCG+0x54>
6030b11c:	e3a02049 	mov	r2, #73	; 0x49
6030b120:	e1a04000 	mov	r4, r0
6030b124:	e305306c 	movw	r3, #20588	; 0x506c
6030b128:	e3463031 	movt	r3, #24625	; 0x6031
6030b12c:	e3a00004 	mov	r0, #4
6030b130:	e304113c 	movw	r1, #16700	; 0x413c
6030b134:	e3461031 	movt	r1, #24625	; 0x6031
6030b138:	ebfffb48 	bl	60309e60 <rtk_log_write_nano>
6030b13c:	eb00231c 	bl	60313db4 <SOCPS_SleepCG_LIB>
6030b140:	e3a00004 	mov	r0, #4
6030b144:	e3a02049 	mov	r2, #73	; 0x49
6030b148:	e3053074 	movw	r3, #20596	; 0x5074
6030b14c:	e3463031 	movt	r3, #24625	; 0x6031
6030b150:	e304113c 	movw	r1, #16700	; 0x413c
6030b154:	e3461031 	movt	r1, #24625	; 0x6031
6030b158:	ebfffb40 	bl	60309e60 <rtk_log_write_nano>
6030b15c:	e1a00004 	mov	r0, r4
6030b160:	e8bd4010 	pop	{r4, lr}
6030b164:	ea00001c 	b	6030b1dc <pmu_exec_wakeup_hook_funs>

6030b168 <CPU_InInterrupt>:
6030b168:	e10f3000 	mrs	r3, CPSR
6030b16c:	e203301f 	and	r3, r3, #31
6030b170:	e3530010 	cmp	r3, #16
6030b174:	0a000004 	beq	6030b18c <CPU_InInterrupt+0x24>
6030b178:	e10f0000 	mrs	r0, CPSR
6030b17c:	e200001f 	and	r0, r0, #31
6030b180:	e250001f 	subs	r0, r0, #31
6030b184:	13a00001 	movne	r0, #1
6030b188:	e12fff1e 	bx	lr
6030b18c:	e3a00000 	mov	r0, #0
6030b190:	e12fff1e 	bx	lr

6030b194 <pmu_exec_sleep_hook_funs>:
6030b194:	e92d4070 	push	{r4, r5, r6, lr}
6030b198:	e30348d0 	movw	r4, #14544	; 0x38d0
6030b19c:	e3464032 	movt	r4, #24626	; 0x6032
6030b1a0:	e3a05000 	mov	r5, #0
6030b1a4:	e5943004 	ldr	r3, [r4, #4]
6030b1a8:	e3a00000 	mov	r0, #0
6030b1ac:	e1530000 	cmp	r3, r0
6030b1b0:	0a000003 	beq	6030b1c4 <pmu_exec_sleep_hook_funs+0x30>
6030b1b4:	e5941008 	ldr	r1, [r4, #8]
6030b1b8:	e12fff33 	blx	r3
6030b1bc:	e3500000 	cmp	r0, #0
6030b1c0:	0a000003 	beq	6030b1d4 <pmu_exec_sleep_hook_funs+0x40>
6030b1c4:	e2855001 	add	r5, r5, #1
6030b1c8:	e2844014 	add	r4, r4, #20
6030b1cc:	e3550007 	cmp	r5, #7
6030b1d0:	1afffff3 	bne	6030b1a4 <pmu_exec_sleep_hook_funs+0x10>
6030b1d4:	e1a00005 	mov	r0, r5
6030b1d8:	e8bd8070 	pop	{r4, r5, r6, pc}

6030b1dc <pmu_exec_wakeup_hook_funs>:
6030b1dc:	e92d4070 	push	{r4, r5, r6, lr}
6030b1e0:	e2506000 	subs	r6, r0, #0
6030b1e4:	08bd8070 	popeq	{r4, r5, r6, pc}
6030b1e8:	e30348d0 	movw	r4, #14544	; 0x38d0
6030b1ec:	e3464032 	movt	r4, #24626	; 0x6032
6030b1f0:	e3a05000 	mov	r5, #0
6030b1f4:	e594300c 	ldr	r3, [r4, #12]
6030b1f8:	e3a00000 	mov	r0, #0
6030b1fc:	e2855001 	add	r5, r5, #1
6030b200:	e1530000 	cmp	r3, r0
6030b204:	0a000001 	beq	6030b210 <pmu_exec_wakeup_hook_funs+0x34>
6030b208:	e5941010 	ldr	r1, [r4, #16]
6030b20c:	e12fff33 	blx	r3
6030b210:	e2844014 	add	r4, r4, #20
6030b214:	e1560005 	cmp	r6, r5
6030b218:	1afffff5 	bne	6030b1f4 <pmu_exec_wakeup_hook_funs+0x18>
6030b21c:	e8bd8070 	pop	{r4, r5, r6, pc}

6030b220 <pmu_set_sysactive_time>:
6030b220:	e3032988 	movw	r2, #14728	; 0x3988
6030b224:	e3462032 	movt	r2, #24626	; 0x6032
6030b228:	e92d4070 	push	{r4, r5, r6, lr}
6030b22c:	e303398c 	movw	r3, #14732	; 0x398c
6030b230:	e3463032 	movt	r3, #24626	; 0x6032
6030b234:	e5925000 	ldr	r5, [r2]
6030b238:	e5934000 	ldr	r4, [r3]
6030b23c:	e3550000 	cmp	r5, #0
6030b240:	1a00001b 	bne	6030b2b4 <pmu_set_sysactive_time+0x94>
6030b244:	e1500004 	cmp	r0, r4
6030b248:	21a04000 	movcs	r4, r0
6030b24c:	e3540000 	cmp	r4, #0
6030b250:	e5835000 	str	r5, [r3]
6030b254:	1a000001 	bne	6030b260 <pmu_set_sysactive_time+0x40>
6030b258:	e1a00005 	mov	r0, r5
6030b25c:	e8bd8070 	pop	{r4, r5, r6, pc}
6030b260:	eb0009fe 	bl	6030da60 <rtos_time_get_current_system_time_ms>
6030b264:	e3700001 	cmn	r0, #1
6030b268:	1a00001c 	bne	6030b2e0 <pmu_set_sysactive_time+0xc0>
6030b26c:	e0804004 	add	r4, r0, r4
6030b270:	eb000a02 	bl	6030da80 <rtos_time_get_current_pended_time_ms>
6030b274:	e3700001 	cmn	r0, #1
6030b278:	1a000016 	bne	6030b2d8 <pmu_set_sysactive_time+0xb8>
6030b27c:	e3033984 	movw	r3, #14724	; 0x3984
6030b280:	e3463032 	movt	r3, #24626	; 0x6032
6030b284:	e0840000 	add	r0, r4, r0
6030b288:	e5932000 	ldr	r2, [r3]
6030b28c:	e1520000 	cmp	r2, r0
6030b290:	3a00000c 	bcc	6030b2c8 <pmu_set_sysactive_time+0xa8>
6030b294:	e0421000 	sub	r1, r2, r0
6030b298:	e371010a 	cmn	r1, #-2147483646	; 0x80000002
6030b29c:	8a000001 	bhi	6030b2a8 <pmu_set_sysactive_time+0x88>
6030b2a0:	e1520000 	cmp	r2, r0
6030b2a4:	1affffeb 	bne	6030b258 <pmu_set_sysactive_time+0x38>
6030b2a8:	e5830000 	str	r0, [r3]
6030b2ac:	e1a00005 	mov	r0, r5
6030b2b0:	e8bd8070 	pop	{r4, r5, r6, pc}
6030b2b4:	e3a05001 	mov	r5, #1
6030b2b8:	e1500004 	cmp	r0, r4
6030b2bc:	9affffe5 	bls	6030b258 <pmu_set_sysactive_time+0x38>
6030b2c0:	e5830000 	str	r0, [r3]
6030b2c4:	eafffff8 	b	6030b2ac <pmu_set_sysactive_time+0x8c>
6030b2c8:	e0402002 	sub	r2, r0, r2
6030b2cc:	e372010a 	cmn	r2, #-2147483646	; 0x80000002
6030b2d0:	9afffff4 	bls	6030b2a8 <pmu_set_sysactive_time+0x88>
6030b2d4:	eaffffdf 	b	6030b258 <pmu_set_sysactive_time+0x38>
6030b2d8:	eb0009e8 	bl	6030da80 <rtos_time_get_current_pended_time_ms>
6030b2dc:	eaffffe6 	b	6030b27c <pmu_set_sysactive_time+0x5c>
6030b2e0:	eb0009de 	bl	6030da60 <rtos_time_get_current_system_time_ms>
6030b2e4:	e0804004 	add	r4, r0, r4
6030b2e8:	eb0009e4 	bl	6030da80 <rtos_time_get_current_pended_time_ms>
6030b2ec:	e3700001 	cmn	r0, #1
6030b2f0:	0affffe1 	beq	6030b27c <pmu_set_sysactive_time+0x5c>
6030b2f4:	eafffff7 	b	6030b2d8 <pmu_set_sysactive_time+0xb8>

6030b2f8 <pmu_yield_os_check>:
6030b2f8:	e3063268 	movw	r3, #25192	; 0x6268
6030b2fc:	e3463031 	movt	r3, #24625	; 0x6031
6030b300:	e5930000 	ldr	r0, [r3]
6030b304:	e12fff1e 	bx	lr

6030b308 <pmu_ready_to_sleep>:
6030b308:	e92d4010 	push	{r4, lr}
6030b30c:	eb0009d3 	bl	6030da60 <rtos_time_get_current_system_time_ms>
6030b310:	e3033984 	movw	r3, #14724	; 0x3984
6030b314:	e3463032 	movt	r3, #24626	; 0x6032
6030b318:	e5933000 	ldr	r3, [r3]
6030b31c:	e1530000 	cmp	r3, r0
6030b320:	2a000008 	bcs	6030b348 <pmu_ready_to_sleep+0x40>
6030b324:	e0400003 	sub	r0, r0, r3
6030b328:	e370010a 	cmn	r0, #-2147483646	; 0x80000002
6030b32c:	8a00000a 	bhi	6030b35c <pmu_ready_to_sleep+0x54>
6030b330:	e306326c 	movw	r3, #25196	; 0x626c
6030b334:	e3463031 	movt	r3, #24625	; 0x6031
6030b338:	e5930000 	ldr	r0, [r3]
6030b33c:	e16f0f10 	clz	r0, r0
6030b340:	e1a002a0 	lsr	r0, r0, #5
6030b344:	e8bd8010 	pop	{r4, pc}
6030b348:	e0432000 	sub	r2, r3, r0
6030b34c:	e372010a 	cmn	r2, #-2147483646	; 0x80000002
6030b350:	8afffff6 	bhi	6030b330 <pmu_ready_to_sleep+0x28>
6030b354:	e1530000 	cmp	r3, r0
6030b358:	9afffff4 	bls	6030b330 <pmu_ready_to_sleep+0x28>
6030b35c:	e3a00000 	mov	r0, #0
6030b360:	e8bd8010 	pop	{r4, pc}

6030b364 <pmu_pre_sleep_processing>:
6030b364:	e92d4070 	push	{r4, r5, r6, lr}
6030b368:	e1a05000 	mov	r5, r0
6030b36c:	eb000b5a 	bl	6030e0dc <xTaskGetTickCount>
6030b370:	e30338cc 	movw	r3, #14540	; 0x38cc
6030b374:	e3463032 	movt	r3, #24626	; 0x6032
6030b378:	e5933000 	ldr	r3, [r3]
6030b37c:	e1500003 	cmp	r0, r3
6030b380:	3a00001a 	bcc	6030b3f0 <pmu_pre_sleep_processing+0x8c>
6030b384:	e3063264 	movw	r3, #25188	; 0x6264
6030b388:	e3463031 	movt	r3, #24625	; 0x6031
6030b38c:	e5932000 	ldr	r2, [r3]
6030b390:	e3520000 	cmp	r2, #0
6030b394:	1a000015 	bne	6030b3f0 <pmu_pre_sleep_processing+0x8c>
6030b398:	e3033960 	movw	r3, #14688	; 0x3960
6030b39c:	e3463032 	movt	r3, #24626	; 0x6032
6030b3a0:	e3a01001 	mov	r1, #1
6030b3a4:	e5832004 	str	r2, [r3, #4]
6030b3a8:	e5831008 	str	r1, [r3, #8]
6030b3ac:	e3034980 	movw	r4, #14720	; 0x3980
6030b3b0:	e3464032 	movt	r4, #24626	; 0x6032
6030b3b4:	e303276c 	movw	r2, #14188	; 0x376c
6030b3b8:	e3462031 	movt	r2, #24625	; 0x6031
6030b3bc:	e5941000 	ldr	r1, [r4]
6030b3c0:	e5831000 	str	r1, [r3]
6030b3c4:	e12fff32 	blx	r2
6030b3c8:	e3033988 	movw	r3, #14728	; 0x3988
6030b3cc:	e3463032 	movt	r3, #24626	; 0x6032
6030b3d0:	e5941000 	ldr	r1, [r4]
6030b3d4:	e3a02001 	mov	r2, #1
6030b3d8:	e5850000 	str	r0, [r5]
6030b3dc:	e1510002 	cmp	r1, r2
6030b3e0:	e5832000 	str	r2, [r3]
6030b3e4:	0a000013 	beq	6030b438 <pmu_pre_sleep_processing+0xd4>
6030b3e8:	e8bd4070 	pop	{r4, r5, r6, lr}
6030b3ec:	eaffff29 	b	6030b098 <SOCPS_SleepPG>
6030b3f0:	e3034994 	movw	r4, #14740	; 0x3994
6030b3f4:	e3464032 	movt	r4, #24626	; 0x6032
6030b3f8:	e3036990 	movw	r6, #14736	; 0x3990
6030b3fc:	e3466032 	movt	r6, #24626	; 0x6032
6030b400:	e5940000 	ldr	r0, [r4]
6030b404:	e5963000 	ldr	r3, [r6]
6030b408:	e1530000 	cmp	r3, r0
6030b40c:	8a00000b 	bhi	6030b440 <pmu_pre_sleep_processing+0xdc>
6030b410:	e3500000 	cmp	r0, #0
6030b414:	e303295c 	movw	r2, #14684	; 0x395c
6030b418:	e3462032 	movt	r2, #24626	; 0x6032
6030b41c:	05920000 	ldreq	r0, [r2]
6030b420:	e3033960 	movw	r3, #14688	; 0x3960
6030b424:	e3463032 	movt	r3, #24626	; 0x6032
6030b428:	e3a01000 	mov	r1, #0
6030b42c:	e5821000 	str	r1, [r2]
6030b430:	e1c300f4 	strd	r0, [r3, #4]
6030b434:	eaffffdc 	b	6030b3ac <pmu_pre_sleep_processing+0x48>
6030b438:	e8bd4070 	pop	{r4, r5, r6, lr}
6030b43c:	eaffff32 	b	6030b10c <SOCPS_SleepCG>
6030b440:	e30c3ba4 	movw	r3, #52132	; 0xcba4
6030b444:	e3463030 	movt	r3, #24624	; 0x6030
6030b448:	e12fff33 	blx	r3
6030b44c:	e5963000 	ldr	r3, [r6]
6030b450:	e5941000 	ldr	r1, [r4]
6030b454:	e2833001 	add	r3, r3, #1
6030b458:	e0433001 	sub	r3, r3, r1
6030b45c:	e732f310 	udiv	r2, r0, r3
6030b460:	e0600392 	mls	r0, r2, r3, r0
6030b464:	e303295c 	movw	r2, #14684	; 0x395c
6030b468:	e3462032 	movt	r2, #24626	; 0x6032
6030b46c:	e0800001 	add	r0, r0, r1
6030b470:	eaffffea 	b	6030b420 <pmu_pre_sleep_processing+0xbc>

6030b474 <pmu_acquire_wakelock>:
6030b474:	e92d4010 	push	{r4, lr}
6030b478:	e1a04000 	mov	r4, r0
6030b47c:	eb001b48 	bl	603121a4 <ulPortInterruptLock>
6030b480:	e306326c 	movw	r3, #25196	; 0x626c
6030b484:	e3463031 	movt	r3, #24625	; 0x6031
6030b488:	e3a01001 	mov	r1, #1
6030b48c:	e5932000 	ldr	r2, [r3]
6030b490:	e1822411 	orr	r2, r2, r1, lsl r4
6030b494:	e5832000 	str	r2, [r3]
6030b498:	e8bd4010 	pop	{r4, lr}
6030b49c:	ea001b45 	b	603121b8 <ulPortInterruptUnLock>

6030b4a0 <pmu_release_wakelock>:
6030b4a0:	e92d4010 	push	{r4, lr}
6030b4a4:	e1a04000 	mov	r4, r0
6030b4a8:	eb001b3d 	bl	603121a4 <ulPortInterruptLock>
6030b4ac:	e306326c 	movw	r3, #25196	; 0x626c
6030b4b0:	e3463031 	movt	r3, #24625	; 0x6031
6030b4b4:	e3a01001 	mov	r1, #1
6030b4b8:	e5932000 	ldr	r2, [r3]
6030b4bc:	e1c22411 	bic	r2, r2, r1, lsl r4
6030b4c0:	e5832000 	str	r2, [r3]
6030b4c4:	e8bd4010 	pop	{r4, lr}
6030b4c8:	ea001b3a 	b	603121b8 <ulPortInterruptUnLock>

6030b4cc <pmu_get_wakelock_status>:
6030b4cc:	e306326c 	movw	r3, #25196	; 0x626c
6030b4d0:	e3463031 	movt	r3, #24625	; 0x6031
6030b4d4:	e5930000 	ldr	r0, [r3]
6030b4d8:	e12fff1e 	bx	lr

6030b4dc <pmu_set_sleep_type>:
6030b4dc:	e3033980 	movw	r3, #14720	; 0x3980
6030b4e0:	e3463032 	movt	r3, #24626	; 0x6032
6030b4e4:	e1a02000 	mov	r2, r0
6030b4e8:	e3a00000 	mov	r0, #0
6030b4ec:	e5832000 	str	r2, [r3]
6030b4f0:	e12fff1e 	bx	lr

6030b4f4 <pmu_get_sleep_type>:
6030b4f4:	e3033980 	movw	r3, #14720	; 0x3980
6030b4f8:	e3463032 	movt	r3, #24626	; 0x6032
6030b4fc:	e5930000 	ldr	r0, [r3]
6030b500:	e12fff1e 	bx	lr

6030b504 <pmu_acquire_deepwakelock>:
6030b504:	e3063264 	movw	r3, #25188	; 0x6264
6030b508:	e3463031 	movt	r3, #24625	; 0x6031
6030b50c:	e3a01001 	mov	r1, #1
6030b510:	e5932000 	ldr	r2, [r3]
6030b514:	e1822011 	orr	r2, r2, r1, lsl r0
6030b518:	e5832000 	str	r2, [r3]
6030b51c:	e12fff1e 	bx	lr

6030b520 <pmu_get_deepwakelock_status>:
6030b520:	e3063264 	movw	r3, #25188	; 0x6264
6030b524:	e3463031 	movt	r3, #24625	; 0x6031
6030b528:	e5930000 	ldr	r0, [r3]
6030b52c:	e12fff1e 	bx	lr

6030b530 <pmu_set_secondary_cpu_state>:
6030b530:	e30338c4 	movw	r3, #14532	; 0x38c4
6030b534:	e3463032 	movt	r3, #24626	; 0x6032
6030b538:	e7831100 	str	r1, [r3, r0, lsl #2]
6030b53c:	e12fff1e 	bx	lr

6030b540 <pmu_get_secondary_cpu_state>:
6030b540:	e30338c4 	movw	r3, #14532	; 0x38c4
6030b544:	e3463032 	movt	r3, #24626	; 0x6032
6030b548:	e7930100 	ldr	r0, [r3, r0, lsl #2]
6030b54c:	e12fff1e 	bx	lr

6030b550 <pmu_secondary_cpu_state_is_running>:
6030b550:	e30338c4 	movw	r3, #14532	; 0x38c4
6030b554:	e3463032 	movt	r3, #24626	; 0x6032
6030b558:	e7930100 	ldr	r0, [r3, r0, lsl #2]
6030b55c:	e16f0f10 	clz	r0, r0
6030b560:	e1a002a0 	lsr	r0, r0, #5
6030b564:	e12fff1e 	bx	lr

6030b568 <pmu_secondary_cpu_state_is_hotplug>:
6030b568:	e30338c4 	movw	r3, #14532	; 0x38c4
6030b56c:	e3463032 	movt	r3, #24626	; 0x6032
6030b570:	e7930100 	ldr	r0, [r3, r0, lsl #2]
6030b574:	e2400001 	sub	r0, r0, #1
6030b578:	e16f0f10 	clz	r0, r0
6030b57c:	e1a002a0 	lsr	r0, r0, #5
6030b580:	e12fff1e 	bx	lr

6030b584 <mmap_add_region>:
6030b584:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
6030b588:	e3a0e101 	mov	lr, #1073741824	; 0x40000000
6030b58c:	e24dd01c 	sub	sp, sp, #28
6030b590:	e1cd00f0 	strd	r0, [sp]
6030b594:	e59dc020 	ldr	ip, [sp, #32]
6030b598:	e1a0100d 	mov	r1, sp
6030b59c:	e3060270 	movw	r0, #25200	; 0x6270
6030b5a0:	e3460031 	movt	r0, #24625	; 0x6031
6030b5a4:	e58de014 	str	lr, [sp, #20]
6030b5a8:	e1cd20f8 	strd	r2, [sp, #8]
6030b5ac:	e58dc010 	str	ip, [sp, #16]
6030b5b0:	eb0001ae 	bl	6030bc70 <mmap_add_region_ctx>
6030b5b4:	e28dd01c 	add	sp, sp, #28
6030b5b8:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

6030b5bc <init_xlat_tables>:
6030b5bc:	e92d4010 	push	{r4, lr}
6030b5c0:	e3064270 	movw	r4, #25200	; 0x6270
6030b5c4:	e3464031 	movt	r4, #24625	; 0x6031
6030b5c8:	e24dd008 	sub	sp, sp, #8
6030b5cc:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
6030b5d0:	e3730001 	cmn	r3, #1
6030b5d4:	0a00000c 	beq	6030b60c <init_xlat_tables+0x50>
6030b5d8:	e3a00060 	mov	r0, #96	; 0x60
6030b5dc:	e305c09c 	movw	ip, #20636	; 0x509c
6030b5e0:	e346c031 	movt	ip, #24625	; 0x6031
6030b5e4:	e305307c 	movw	r3, #20604	; 0x507c
6030b5e8:	e3463031 	movt	r3, #24625	; 0x6031
6030b5ec:	e304113c 	movw	r1, #16700	; 0x413c
6030b5f0:	e3461031 	movt	r1, #24625	; 0x6031
6030b5f4:	e58d0004 	str	r0, [sp, #4]
6030b5f8:	e3a02049 	mov	r2, #73	; 0x49
6030b5fc:	e3a00004 	mov	r0, #4
6030b600:	e58dc000 	str	ip, [sp]
6030b604:	ebfff9e1 	bl	60309d90 <rtk_log_write>
6030b608:	eafffffe 	b	6030b608 <init_xlat_tables+0x4c>
6030b60c:	eb0003ca 	bl	6030c53c <xlat_arch_current_el>
6030b610:	e3500001 	cmp	r0, #1
6030b614:	0a000010 	beq	6030b65c <init_xlat_tables+0xa0>
6030b618:	e3500002 	cmp	r0, #2
6030b61c:	0a00000e 	beq	6030b65c <init_xlat_tables+0xa0>
6030b620:	e3500003 	cmp	r0, #3
6030b624:	0a00000c 	beq	6030b65c <init_xlat_tables+0xa0>
6030b628:	e3a00069 	mov	r0, #105	; 0x69
6030b62c:	e305c09c 	movw	ip, #20636	; 0x509c
6030b630:	e346c031 	movt	ip, #24625	; 0x6031
6030b634:	e305307c 	movw	r3, #20604	; 0x507c
6030b638:	e3463031 	movt	r3, #24625	; 0x6031
6030b63c:	e304113c 	movw	r1, #16700	; 0x413c
6030b640:	e3461031 	movt	r1, #24625	; 0x6031
6030b644:	e58d0004 	str	r0, [sp, #4]
6030b648:	e3a02049 	mov	r2, #73	; 0x49
6030b64c:	e3a00004 	mov	r0, #4
6030b650:	e58dc000 	str	ip, [sp]
6030b654:	ebfff9cd 	bl	60309d90 <rtk_log_write>
6030b658:	eafffffe 	b	6030b658 <init_xlat_tables+0x9c>
6030b65c:	e584003c 	str	r0, [r4, #60]	; 0x3c
6030b660:	e3060270 	movw	r0, #25200	; 0x6270
6030b664:	e3460031 	movt	r0, #24625	; 0x6031
6030b668:	e28dd008 	add	sp, sp, #8
6030b66c:	e8bd4010 	pop	{r4, lr}
6030b670:	ea000295 	b	6030c0cc <init_xlat_tables_ctx>

6030b674 <enable_mmu_svc_mon>:
6030b674:	e92d4010 	push	{r4, lr}
6030b678:	e3063270 	movw	r3, #25200	; 0x6270
6030b67c:	e3463031 	movt	r3, #24625	; 0x6031
6030b680:	e24dd010 	sub	sp, sp, #16
6030b684:	e1a04000 	mov	r4, r0
6030b688:	e593c008 	ldr	ip, [r3, #8]
6030b68c:	e1c300d0 	ldrd	r0, [r3]
6030b690:	e5932020 	ldr	r2, [r3, #32]
6030b694:	e1cd00f0 	strd	r0, [sp]
6030b698:	e3a03001 	mov	r3, #1
6030b69c:	e1a01004 	mov	r1, r4
6030b6a0:	e58dc008 	str	ip, [sp, #8]
6030b6a4:	e58d300c 	str	r3, [sp, #12]
6030b6a8:	e3030998 	movw	r0, #14744	; 0x3998
6030b6ac:	e3460032 	movt	r0, #24626	; 0x6032
6030b6b0:	eb0003fc 	bl	6030c6a8 <setup_mmu_cfg>
6030b6b4:	e1a00004 	mov	r0, r4
6030b6b8:	e28dd010 	add	sp, sp, #16
6030b6bc:	e8bd4010 	pop	{r4, lr}
6030b6c0:	ea0004c8 	b	6030c9e8 <enable_mmu_direct_svc_mon>

6030b6c4 <xlat_desc>:
6030b6c4:	e92d40f0 	push	{r4, r5, r6, r7, lr}
6030b6c8:	e1a04001 	mov	r4, r1
6030b6cc:	e24dd00c 	sub	sp, sp, #12
6030b6d0:	e3e01008 	mvn	r1, #8
6030b6d4:	e3e0c000 	mvn	ip, #0
6030b6d8:	e59de020 	ldr	lr, [sp, #32]
6030b6dc:	e0010e91 	mul	r1, r1, lr
6030b6e0:	e2811027 	add	r1, r1, #39	; 0x27
6030b6e4:	e1d2111c 	bics	r1, r2, ip, lsl r1
6030b6e8:	1a00002a 	bne	6030b798 <xlat_desc+0xd4>
6030b6ec:	e35e0003 	cmp	lr, #3
6030b6f0:	03a05003 	moveq	r5, #3
6030b6f4:	13a05001 	movne	r5, #1
6030b6f8:	e094c004 	adds	ip, r4, r4
6030b6fc:	e590003c 	ldr	r0, [r0, #60]	; 0x3c
6030b700:	e3140008 	tst	r4, #8
6030b704:	e20cc020 	and	ip, ip, #32
6030b708:	03822080 	orreq	r2, r2, #128	; 0x80
6030b70c:	e185500c 	orr	r5, r5, ip
6030b710:	e1855002 	orr	r5, r5, r2
6030b714:	e1816003 	orr	r6, r1, r3
6030b718:	e3500001 	cmp	r0, #1
6030b71c:	0a000010 	beq	6030b764 <xlat_desc+0xa0>
6030b720:	e2403002 	sub	r3, r0, #2
6030b724:	e3530001 	cmp	r3, #1
6030b728:	8a000034 	bhi	6030b800 <xlat_desc+0x13c>
6030b72c:	e3855d11 	orr	r5, r5, #1088	; 0x440
6030b730:	e1a01006 	mov	r1, r6
6030b734:	e2147007 	ands	r7, r4, #7
6030b738:	0a00000f 	beq	6030b77c <xlat_desc+0xb8>
6030b73c:	e3140028 	tst	r4, #40	; 0x28
6030b740:	1a000042 	bne	6030b850 <xlat_desc+0x18c>
6030b744:	e3570002 	cmp	r7, #2
6030b748:	0a000039 	beq	6030b834 <xlat_desc+0x170>
6030b74c:	e3570001 	cmp	r7, #1
6030b750:	03855f82 	orreq	r5, r5, #520	; 0x208
6030b754:	1a00001c 	bne	6030b7cc <xlat_desc+0x108>
6030b758:	e1a00005 	mov	r0, r5
6030b75c:	e28dd00c 	add	sp, sp, #12
6030b760:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
6030b764:	e3140040 	tst	r4, #64	; 0x40
6030b768:	03855b01 	orreq	r5, r5, #1024	; 0x400
6030b76c:	01a01006 	moveq	r1, r6
6030b770:	1affffed 	bne	6030b72c <xlat_desc+0x68>
6030b774:	e2147007 	ands	r7, r4, #7
6030b778:	1affffef 	bne	6030b73c <xlat_desc+0x78>
6030b77c:	eb000355 	bl	6030c4d8 <xlat_arch_regime_get_xn_desc>
6030b780:	e1855000 	orr	r5, r5, r0
6030b784:	e3855f81 	orr	r5, r5, #516	; 0x204
6030b788:	e1861001 	orr	r1, r6, r1
6030b78c:	e1a00005 	mov	r0, r5
6030b790:	e28dd00c 	add	sp, sp, #12
6030b794:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
6030b798:	e3a00084 	mov	r0, #132	; 0x84
6030b79c:	e305c13c 	movw	ip, #20796	; 0x513c
6030b7a0:	e346c031 	movt	ip, #24625	; 0x6031
6030b7a4:	e305307c 	movw	r3, #20604	; 0x507c
6030b7a8:	e3463031 	movt	r3, #24625	; 0x6031
6030b7ac:	e304113c 	movw	r1, #16700	; 0x413c
6030b7b0:	e3461031 	movt	r1, #24625	; 0x6031
6030b7b4:	e58d0004 	str	r0, [sp, #4]
6030b7b8:	e3a02049 	mov	r2, #73	; 0x49
6030b7bc:	e3a00004 	mov	r0, #4
6030b7c0:	e58dc000 	str	ip, [sp]
6030b7c4:	ebfff971 	bl	60309d90 <rtk_log_write>
6030b7c8:	eafffffe 	b	6030b7c8 <xlat_desc+0x104>
6030b7cc:	e3a000ee 	mov	r0, #238	; 0xee
6030b7d0:	e305c13c 	movw	ip, #20796	; 0x513c
6030b7d4:	e346c031 	movt	ip, #24625	; 0x6031
6030b7d8:	e305307c 	movw	r3, #20604	; 0x507c
6030b7dc:	e3463031 	movt	r3, #24625	; 0x6031
6030b7e0:	e304113c 	movw	r1, #16700	; 0x413c
6030b7e4:	e3461031 	movt	r1, #24625	; 0x6031
6030b7e8:	e58d0004 	str	r0, [sp, #4]
6030b7ec:	e3a02049 	mov	r2, #73	; 0x49
6030b7f0:	e3a00004 	mov	r0, #4
6030b7f4:	e58dc000 	str	ip, [sp]
6030b7f8:	ebfff964 	bl	60309d90 <rtk_log_write>
6030b7fc:	eafffffe 	b	6030b7fc <xlat_desc+0x138>
6030b800:	e3a000a6 	mov	r0, #166	; 0xa6
6030b804:	e305c13c 	movw	ip, #20796	; 0x513c
6030b808:	e346c031 	movt	ip, #24625	; 0x6031
6030b80c:	e305307c 	movw	r3, #20604	; 0x507c
6030b810:	e3463031 	movt	r3, #24625	; 0x6031
6030b814:	e304113c 	movw	r1, #16700	; 0x413c
6030b818:	e3461031 	movt	r1, #24625	; 0x6031
6030b81c:	e58d0004 	str	r0, [sp, #4]
6030b820:	e3a02049 	mov	r2, #73	; 0x49
6030b824:	e3a00004 	mov	r0, #4
6030b828:	e58dc000 	str	ip, [sp]
6030b82c:	ebfff957 	bl	60309d90 <rtk_log_write>
6030b830:	eafffffe 	b	6030b830 <xlat_desc+0x16c>
6030b834:	e2044d06 	and	r4, r4, #384	; 0x180
6030b838:	e3540d06 	cmp	r4, #384	; 0x180
6030b83c:	0affffc5 	beq	6030b758 <xlat_desc+0x94>
6030b840:	e3540c01 	cmp	r4, #256	; 0x100
6030b844:	03855c02 	orreq	r5, r5, #512	; 0x200
6030b848:	13855c03 	orrne	r5, r5, #768	; 0x300
6030b84c:	eaffffc1 	b	6030b758 <xlat_desc+0x94>
6030b850:	eb000320 	bl	6030c4d8 <xlat_arch_regime_get_xn_desc>
6030b854:	e1855000 	orr	r5, r5, r0
6030b858:	e1861001 	orr	r1, r6, r1
6030b85c:	eaffffb8 	b	6030b744 <xlat_desc+0x80>

6030b860 <xlat_tables_map_region>:
6030b860:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030b864:	e1a04002 	mov	r4, r2
6030b868:	e24dd02c 	sub	sp, sp, #44	; 0x2c
6030b86c:	e5902034 	ldr	r2, [r0, #52]	; 0x34
6030b870:	e59d7054 	ldr	r7, [sp, #84]	; 0x54
6030b874:	e1520007 	cmp	r2, r7
6030b878:	93570003 	cmpls	r7, #3
6030b87c:	9a00000c 	bls	6030b8b4 <xlat_tables_map_region+0x54>
6030b880:	e3000251 	movw	r0, #593	; 0x251
6030b884:	e305c13c 	movw	ip, #20796	; 0x513c
6030b888:	e346c031 	movt	ip, #24625	; 0x6031
6030b88c:	e305307c 	movw	r3, #20604	; 0x507c
6030b890:	e3463031 	movt	r3, #24625	; 0x6031
6030b894:	e304113c 	movw	r1, #16700	; 0x413c
6030b898:	e3461031 	movt	r1, #24625	; 0x6031
6030b89c:	e58d0004 	str	r0, [sp, #4]
6030b8a0:	e3a02049 	mov	r2, #73	; 0x49
6030b8a4:	e3a00004 	mov	r0, #4
6030b8a8:	e58dc000 	str	ip, [sp]
6030b8ac:	ebfff937 	bl	60309d90 <rtk_log_write>
6030b8b0:	eafffffe 	b	6030b8b0 <xlat_tables_map_region+0x50>
6030b8b4:	e3e02008 	mvn	r2, #8
6030b8b8:	e1a05001 	mov	r5, r1
6030b8bc:	e0020792 	mul	r2, r2, r7
6030b8c0:	e5911008 	ldr	r1, [r1, #8]
6030b8c4:	e1a06000 	mov	r6, r0
6030b8c8:	e2820027 	add	r0, r2, #39	; 0x27
6030b8cc:	e595200c 	ldr	r2, [r5, #12]
6030b8d0:	e1510004 	cmp	r1, r4
6030b8d4:	e0812002 	add	r2, r1, r2
6030b8d8:	e2422001 	sub	r2, r2, #1
6030b8dc:	e58d2010 	str	r2, [sp, #16]
6030b8e0:	e3a02001 	mov	r2, #1
6030b8e4:	93a08000 	movls	r8, #0
6030b8e8:	e1a02012 	lsl	r2, r2, r0
6030b8ec:	e58d0014 	str	r0, [sp, #20]
6030b8f0:	e58d200c 	str	r2, [sp, #12]
6030b8f4:	8a000059 	bhi	6030ba60 <xlat_tables_map_region+0x200>
6030b8f8:	e083b188 	add	fp, r3, r8, lsl #3
6030b8fc:	e59d300c 	ldr	r3, [sp, #12]
6030b900:	e3a0aa0f 	mov	sl, #61440	; 0xf000
6030b904:	e34fafff 	movt	sl, #65535	; 0xffff
6030b908:	e2433001 	sub	r3, r3, #1
6030b90c:	e0849003 	add	r9, r4, r3
6030b910:	e58d301c 	str	r3, [sp, #28]
6030b914:	e2873001 	add	r3, r7, #1
6030b918:	e58d3018 	str	r3, [sp, #24]
6030b91c:	e59d3050 	ldr	r3, [sp, #80]	; 0x50
6030b920:	e1580003 	cmp	r8, r3
6030b924:	2a0000b8 	bcs	6030bc0c <xlat_tables_map_region+0x3ac>
6030b928:	e5953008 	ldr	r3, [r5, #8]
6030b92c:	e595200c 	ldr	r2, [r5, #12]
6030b930:	e1530004 	cmp	r3, r4
6030b934:	e0832002 	add	r2, r3, r2
6030b938:	e2422001 	sub	r2, r2, #1
6030b93c:	83a00000 	movhi	r0, #0
6030b940:	93a00001 	movls	r0, #1
6030b944:	e59b1000 	ldr	r1, [fp]
6030b948:	e1520009 	cmp	r2, r9
6030b94c:	33a00000 	movcc	r0, #0
6030b950:	e3500000 	cmp	r0, #0
6030b954:	e2010003 	and	r0, r1, #3
6030b958:	1a000019 	bne	6030b9c4 <xlat_tables_map_region+0x164>
6030b95c:	e1530009 	cmp	r3, r9
6030b960:	83a03000 	movhi	r3, #0
6030b964:	93a03001 	movls	r3, #1
6030b968:	e1520004 	cmp	r2, r4
6030b96c:	23833001 	orrcs	r3, r3, #1
6030b970:	e3530000 	cmp	r3, #0
6030b974:	0a00002f 	beq	6030ba38 <xlat_tables_map_region+0x1d8>
6030b978:	e3570003 	cmp	r7, #3
6030b97c:	0a00003f 	beq	6030ba80 <xlat_tables_map_region+0x220>
6030b980:	e3500000 	cmp	r0, #0
6030b984:	0a00004a 	beq	6030bab4 <xlat_tables_map_region+0x254>
6030b988:	e3500003 	cmp	r0, #3
6030b98c:	0a00008a 	beq	6030bbbc <xlat_tables_map_region+0x35c>
6030b990:	e300022f 	movw	r0, #559	; 0x22f
6030b994:	e305c13c 	movw	ip, #20796	; 0x513c
6030b998:	e346c031 	movt	ip, #24625	; 0x6031
6030b99c:	e305307c 	movw	r3, #20604	; 0x507c
6030b9a0:	e3463031 	movt	r3, #24625	; 0x6031
6030b9a4:	e304113c 	movw	r1, #16700	; 0x413c
6030b9a8:	e3461031 	movt	r1, #24625	; 0x6031
6030b9ac:	e58d0004 	str	r0, [sp, #4]
6030b9b0:	e3a02049 	mov	r2, #73	; 0x49
6030b9b4:	e3a00004 	mov	r0, #4
6030b9b8:	e58dc000 	str	ip, [sp]
6030b9bc:	ebfff8f3 	bl	60309d90 <rtk_log_write>
6030b9c0:	eafffffe 	b	6030b9c0 <xlat_tables_map_region+0x160>
6030b9c4:	e5952000 	ldr	r2, [r5]
6030b9c8:	e595c004 	ldr	ip, [r5, #4]
6030b9cc:	e0523003 	subs	r3, r2, r3
6030b9d0:	e2ccc000 	sbc	ip, ip, #0
6030b9d4:	e0932004 	adds	r2, r3, r4
6030b9d8:	e2ac3000 	adc	r3, ip, #0
6030b9dc:	e3570003 	cmp	r7, #3
6030b9e0:	0a000064 	beq	6030bb78 <xlat_tables_map_region+0x318>
6030b9e4:	e3500003 	cmp	r0, #3
6030b9e8:	0a000073 	beq	6030bbbc <xlat_tables_map_region+0x35c>
6030b9ec:	e3500000 	cmp	r0, #0
6030b9f0:	1a000051 	bne	6030bb3c <xlat_tables_map_region+0x2dc>
6030b9f4:	e59d101c 	ldr	r1, [sp, #28]
6030b9f8:	e1120001 	tst	r2, r1
6030b9fc:	13a01001 	movne	r1, #1
6030ba00:	03a01000 	moveq	r1, #0
6030ba04:	e3570000 	cmp	r7, #0
6030ba08:	03811001 	orreq	r1, r1, #1
6030ba0c:	e3510000 	cmp	r1, #0
6030ba10:	1a000027 	bne	6030bab4 <xlat_tables_map_region+0x254>
6030ba14:	e5951014 	ldr	r1, [r5, #20]
6030ba18:	e59d0014 	ldr	r0, [sp, #20]
6030ba1c:	e1b01031 	lsrs	r1, r1, r0
6030ba20:	0a000023 	beq	6030bab4 <xlat_tables_map_region+0x254>
6030ba24:	e58d7000 	str	r7, [sp]
6030ba28:	e1a00006 	mov	r0, r6
6030ba2c:	e5951010 	ldr	r1, [r5, #16]
6030ba30:	ebffff23 	bl	6030b6c4 <xlat_desc>
6030ba34:	e1cb00f0 	strd	r0, [fp]
6030ba38:	e59d300c 	ldr	r3, [sp, #12]
6030ba3c:	e59d2010 	ldr	r2, [sp, #16]
6030ba40:	e0844003 	add	r4, r4, r3
6030ba44:	e2888001 	add	r8, r8, #1
6030ba48:	e28bb008 	add	fp, fp, #8
6030ba4c:	e1520004 	cmp	r2, r4
6030ba50:	e0833009 	add	r3, r3, r9
6030ba54:	9a000083 	bls	6030bc68 <xlat_tables_map_region+0x408>
6030ba58:	e1a09003 	mov	r9, r3
6030ba5c:	eaffffae 	b	6030b91c <xlat_tables_map_region+0xbc>
6030ba60:	e59d200c 	ldr	r2, [sp, #12]
6030ba64:	e2622000 	rsb	r2, r2, #0
6030ba68:	e0011002 	and	r1, r1, r2
6030ba6c:	e59d2014 	ldr	r2, [sp, #20]
6030ba70:	e0418004 	sub	r8, r1, r4
6030ba74:	e1a04001 	mov	r4, r1
6030ba78:	e1a08238 	lsr	r8, r8, r2
6030ba7c:	eaffff9d 	b	6030b8f8 <xlat_tables_map_region+0x98>
6030ba80:	e3a00f89 	mov	r0, #548	; 0x224
6030ba84:	e305c13c 	movw	ip, #20796	; 0x513c
6030ba88:	e346c031 	movt	ip, #24625	; 0x6031
6030ba8c:	e305307c 	movw	r3, #20604	; 0x507c
6030ba90:	e3463031 	movt	r3, #24625	; 0x6031
6030ba94:	e304113c 	movw	r1, #16700	; 0x413c
6030ba98:	e3461031 	movt	r1, #24625	; 0x6031
6030ba9c:	e58d0004 	str	r0, [sp, #4]
6030baa0:	e3a02049 	mov	r2, #73	; 0x49
6030baa4:	e3a00004 	mov	r0, #4
6030baa8:	e58dc000 	str	ip, [sp]
6030baac:	ebfff8b7 	bl	60309d90 <rtk_log_write>
6030bab0:	eafffffe 	b	6030bab0 <xlat_tables_map_region+0x250>
6030bab4:	e596201c 	ldr	r2, [r6, #28]
6030bab8:	e5963018 	ldr	r3, [r6, #24]
6030babc:	e1520003 	cmp	r2, r3
6030bac0:	aa000053 	bge	6030bc14 <xlat_tables_map_region+0x3b4>
6030bac4:	e5963014 	ldr	r3, [r6, #20]
6030bac8:	e0933602 	adds	r3, r3, r2, lsl #12
6030bacc:	e2822001 	add	r2, r2, #1
6030bad0:	e586201c 	str	r2, [r6, #28]
6030bad4:	e1a02004 	mov	r2, r4
6030bad8:	0a000014 	beq	6030bb30 <xlat_tables_map_region+0x2d0>
6030badc:	e3830003 	orr	r0, r3, #3
6030bae0:	e58b0000 	str	r0, [fp]
6030bae4:	e3a00000 	mov	r0, #0
6030bae8:	e58b0004 	str	r0, [fp, #4]
6030baec:	e59d0018 	ldr	r0, [sp, #24]
6030baf0:	e1a01005 	mov	r1, r5
6030baf4:	e58d0004 	str	r0, [sp, #4]
6030baf8:	e3a00c02 	mov	r0, #512	; 0x200
6030bafc:	e58d0000 	str	r0, [sp]
6030bb00:	e1a00006 	mov	r0, r6
6030bb04:	e58d3024 	str	r3, [sp, #36]	; 0x24
6030bb08:	ebffff54 	bl	6030b860 <xlat_tables_map_region>
6030bb0c:	e58d0020 	str	r0, [sp, #32]
6030bb10:	eb000266 	bl	6030c4b0 <is_dcache_enabled>
6030bb14:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
6030bb18:	e3500000 	cmp	r0, #0
6030bb1c:	1a00004d 	bne	6030bc58 <xlat_tables_map_region+0x3f8>
6030bb20:	e59d3020 	ldr	r3, [sp, #32]
6030bb24:	e1530009 	cmp	r3, r9
6030bb28:	0affffc2 	beq	6030ba38 <xlat_tables_map_region+0x1d8>
6030bb2c:	e1a02003 	mov	r2, r3
6030bb30:	e1a00002 	mov	r0, r2
6030bb34:	e28dd02c 	add	sp, sp, #44	; 0x2c
6030bb38:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030bb3c:	e3500001 	cmp	r0, #1
6030bb40:	0affffbc 	beq	6030ba38 <xlat_tables_map_region+0x1d8>
6030bb44:	e300020f 	movw	r0, #527	; 0x20f
6030bb48:	e305c13c 	movw	ip, #20796	; 0x513c
6030bb4c:	e346c031 	movt	ip, #24625	; 0x6031
6030bb50:	e305307c 	movw	r3, #20604	; 0x507c
6030bb54:	e3463031 	movt	r3, #24625	; 0x6031
6030bb58:	e304113c 	movw	r1, #16700	; 0x413c
6030bb5c:	e3461031 	movt	r1, #24625	; 0x6031
6030bb60:	e58d0004 	str	r0, [sp, #4]
6030bb64:	e3a02049 	mov	r2, #73	; 0x49
6030bb68:	e3a00004 	mov	r0, #4
6030bb6c:	e58dc000 	str	ip, [sp]
6030bb70:	ebfff886 	bl	60309d90 <rtk_log_write>
6030bb74:	eafffffe 	b	6030bb74 <xlat_tables_map_region+0x314>
6030bb78:	e3500003 	cmp	r0, #3
6030bb7c:	0affffad 	beq	6030ba38 <xlat_tables_map_region+0x1d8>
6030bb80:	e3500000 	cmp	r0, #0
6030bb84:	0affffa6 	beq	6030ba24 <xlat_tables_map_region+0x1c4>
6030bb88:	e30001e7 	movw	r0, #487	; 0x1e7
6030bb8c:	e305c13c 	movw	ip, #20796	; 0x513c
6030bb90:	e346c031 	movt	ip, #24625	; 0x6031
6030bb94:	e305307c 	movw	r3, #20604	; 0x507c
6030bb98:	e3463031 	movt	r3, #24625	; 0x6031
6030bb9c:	e304113c 	movw	r1, #16700	; 0x413c
6030bba0:	e3461031 	movt	r1, #24625	; 0x6031
6030bba4:	e58d0004 	str	r0, [sp, #4]
6030bba8:	e3a02049 	mov	r2, #73	; 0x49
6030bbac:	e3a00004 	mov	r0, #4
6030bbb0:	e58dc000 	str	ip, [sp]
6030bbb4:	ebfff875 	bl	60309d90 <rtk_log_write>
6030bbb8:	eafffffe 	b	6030bbb8 <xlat_tables_map_region+0x358>
6030bbbc:	e59d2018 	ldr	r2, [sp, #24]
6030bbc0:	e001300a 	and	r3, r1, sl
6030bbc4:	e58d2004 	str	r2, [sp, #4]
6030bbc8:	e1a01005 	mov	r1, r5
6030bbcc:	e3a02c02 	mov	r2, #512	; 0x200
6030bbd0:	e1a00006 	mov	r0, r6
6030bbd4:	e58d2000 	str	r2, [sp]
6030bbd8:	e1a02004 	mov	r2, r4
6030bbdc:	e58d3024 	str	r3, [sp, #36]	; 0x24
6030bbe0:	ebffff1e 	bl	6030b860 <xlat_tables_map_region>
6030bbe4:	e58d0020 	str	r0, [sp, #32]
6030bbe8:	eb000230 	bl	6030c4b0 <is_dcache_enabled>
6030bbec:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
6030bbf0:	e3500000 	cmp	r0, #0
6030bbf4:	1a000013 	bne	6030bc48 <xlat_tables_map_region+0x3e8>
6030bbf8:	e59d3020 	ldr	r3, [sp, #32]
6030bbfc:	e1530009 	cmp	r3, r9
6030bc00:	0affff8c 	beq	6030ba38 <xlat_tables_map_region+0x1d8>
6030bc04:	e59d2020 	ldr	r2, [sp, #32]
6030bc08:	eaffffc8 	b	6030bb30 <xlat_tables_map_region+0x2d0>
6030bc0c:	e2442001 	sub	r2, r4, #1
6030bc10:	eaffffc6 	b	6030bb30 <xlat_tables_map_region+0x2d0>
6030bc14:	e3a00072 	mov	r0, #114	; 0x72
6030bc18:	e305c13c 	movw	ip, #20796	; 0x513c
6030bc1c:	e346c031 	movt	ip, #24625	; 0x6031
6030bc20:	e305307c 	movw	r3, #20604	; 0x507c
6030bc24:	e3463031 	movt	r3, #24625	; 0x6031
6030bc28:	e304113c 	movw	r1, #16700	; 0x413c
6030bc2c:	e3461031 	movt	r1, #24625	; 0x6031
6030bc30:	e58d0004 	str	r0, [sp, #4]
6030bc34:	e3a02049 	mov	r2, #73	; 0x49
6030bc38:	e3a00004 	mov	r0, #4
6030bc3c:	e58dc000 	str	ip, [sp]
6030bc40:	ebfff852 	bl	60309d90 <rtk_log_write>
6030bc44:	eafffffe 	b	6030bc44 <xlat_tables_map_region+0x3e4>
6030bc48:	e1a00003 	mov	r0, r3
6030bc4c:	e3a01a01 	mov	r1, #4096	; 0x1000
6030bc50:	eb00037d 	bl	6030ca4c <clean_dcache_range>
6030bc54:	eaffffe7 	b	6030bbf8 <xlat_tables_map_region+0x398>
6030bc58:	e1a00003 	mov	r0, r3
6030bc5c:	e3a01a01 	mov	r1, #4096	; 0x1000
6030bc60:	eb000379 	bl	6030ca4c <clean_dcache_range>
6030bc64:	eaffffad 	b	6030bb20 <xlat_tables_map_region+0x2c0>
6030bc68:	e1a02009 	mov	r2, r9
6030bc6c:	eaffffaf 	b	6030bb30 <xlat_tables_map_region+0x2d0>

6030bc70 <mmap_add_region_ctx>:
6030bc70:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030bc74:	e24dd034 	sub	sp, sp, #52	; 0x34
6030bc78:	e591a00c 	ldr	sl, [r1, #12]
6030bc7c:	e1cd00fc 	strd	r0, [sp, #12]
6030bc80:	e35a0000 	cmp	sl, #0
6030bc84:	0a0000ec 	beq	6030c03c <mmap_add_region_ctx+0x3cc>
6030bc88:	e5d03038 	ldrb	r3, [r0, #56]	; 0x38
6030bc8c:	e3530000 	cmp	r3, #0
6030bc90:	1a00008b 	bne	6030bec4 <mmap_add_region_ctx+0x254>
6030bc94:	e59d1010 	ldr	r1, [sp, #16]
6030bc98:	e8911100 	ldm	r1, {r8, ip}
6030bc9c:	e5912014 	ldr	r2, [r1, #20]
6030bca0:	e7eb3058 	ubfx	r3, r8, #0, #12
6030bca4:	e3933000 	orrs	r3, r3, #0
6030bca8:	1a0000ff 	bne	6030c0ac <mmap_add_region_ctx+0x43c>
6030bcac:	e5916008 	ldr	r6, [r1, #8]
6030bcb0:	e18a3006 	orr	r3, sl, r6
6030bcb4:	e7eb3053 	ubfx	r3, r3, #0, #12
6030bcb8:	e3530000 	cmp	r3, #0
6030bcbc:	1a0000fa 	bne	6030c0ac <mmap_add_region_ctx+0x43c>
6030bcc0:	e3520101 	cmp	r2, #1073741824	; 0x40000000
6030bcc4:	13520602 	cmpne	r2, #2097152	; 0x200000
6030bcc8:	13a03001 	movne	r3, #1
6030bccc:	03a03000 	moveq	r3, #0
6030bcd0:	e3520a01 	cmp	r2, #4096	; 0x1000
6030bcd4:	03a03000 	moveq	r3, #0
6030bcd8:	12033001 	andne	r3, r3, #1
6030bcdc:	e3530000 	cmp	r3, #0
6030bce0:	1a0000f1 	bne	6030c0ac <mmap_add_region_ctx+0x43c>
6030bce4:	e2583001 	subs	r3, r8, #1
6030bce8:	e2cc2000 	sbc	r2, ip, #0
6030bcec:	e093100a 	adds	r1, r3, sl
6030bcf0:	e2a20000 	adc	r0, r2, #0
6030bcf4:	e1510008 	cmp	r1, r8
6030bcf8:	e0d0300c 	sbcs	r3, r0, ip
6030bcfc:	e08a3006 	add	r3, sl, r6
6030bd00:	e1a02003 	mov	r2, r3
6030bd04:	e58d301c 	str	r3, [sp, #28]
6030bd08:	e2425001 	sub	r5, r2, #1
6030bd0c:	33a03001 	movcc	r3, #1
6030bd10:	23a03000 	movcs	r3, #0
6030bd14:	e1560005 	cmp	r6, r5
6030bd18:	83833001 	orrhi	r3, r3, #1
6030bd1c:	e3530000 	cmp	r3, #0
6030bd20:	e58d1008 	str	r1, [sp, #8]
6030bd24:	e58d002c 	str	r0, [sp, #44]	; 0x2c
6030bd28:	1a0000e1 	bne	6030c0b4 <mmap_add_region_ctx+0x444>
6030bd2c:	e59d200c 	ldr	r2, [sp, #12]
6030bd30:	e5923008 	ldr	r3, [r2, #8]
6030bd34:	e1550003 	cmp	r5, r3
6030bd38:	8a0000dd 	bhi	6030c0b4 <mmap_add_region_ctx+0x444>
6030bd3c:	e5923000 	ldr	r3, [r2]
6030bd40:	e1530001 	cmp	r3, r1
6030bd44:	e5923004 	ldr	r3, [r2, #4]
6030bd48:	e0d33000 	sbcs	r3, r3, r0
6030bd4c:	3a0000d8 	bcc	6030c0b4 <mmap_add_region_ctx+0x444>
6030bd50:	e592100c 	ldr	r1, [r2, #12]
6030bd54:	e5923010 	ldr	r3, [r2, #16]
6030bd58:	e3a02018 	mov	r2, #24
6030bd5c:	e58d1014 	str	r1, [sp, #20]
6030bd60:	e0231392 	mla	r3, r2, r3, r1
6030bd64:	e58d3018 	str	r3, [sp, #24]
6030bd68:	e513300c 	ldr	r3, [r3, #-12]
6030bd6c:	e3530000 	cmp	r3, #0
6030bd70:	1a0000d3 	bne	6030c0c4 <mmap_add_region_ctx+0x454>
6030bd74:	e591b00c 	ldr	fp, [r1, #12]
6030bd78:	e5913008 	ldr	r3, [r1, #8]
6030bd7c:	e35b0000 	cmp	fp, #0
6030bd80:	e58d3020 	str	r3, [sp, #32]
6030bd84:	0a0000cc 	beq	6030c0bc <mmap_add_region_ctx+0x44c>
6030bd88:	e0819002 	add	r9, r1, r2
6030bd8c:	e1a03009 	mov	r3, r9
6030bd90:	e1a0100b 	mov	r1, fp
6030bd94:	e58db024 	str	fp, [sp, #36]	; 0x24
6030bd98:	e58d9028 	str	r9, [sp, #40]	; 0x28
6030bd9c:	e1a0b000 	mov	fp, r0
6030bda0:	e1a0900c 	mov	r9, ip
6030bda4:	ea00001f 	b	6030be28 <mmap_add_region_ctx+0x1b8>
6030bda8:	e1550000 	cmp	r5, r0
6030bdac:	33a04000 	movcc	r4, #0
6030bdb0:	23a04001 	movcs	r4, #1
6030bdb4:	e1560002 	cmp	r6, r2
6030bdb8:	83a04000 	movhi	r4, #0
6030bdbc:	e3540000 	cmp	r4, #0
6030bdc0:	1a000024 	bne	6030be58 <mmap_add_region_ctx+0x1e8>
6030bdc4:	e2511001 	subs	r1, r1, #1
6030bdc8:	e2c44000 	sbc	r4, r4, #0
6030bdcc:	e09cc00e 	adds	ip, ip, lr
6030bdd0:	e0a74004 	adc	r4, r7, r4
6030bdd4:	e15c0008 	cmp	ip, r8
6030bdd8:	e59dc008 	ldr	ip, [sp, #8]
6030bddc:	e0d41009 	sbcs	r1, r4, r9
6030bde0:	33a01001 	movcc	r1, #1
6030bde4:	23a01000 	movcs	r1, #0
6030bde8:	e15c000e 	cmp	ip, lr
6030bdec:	e0dbc007 	sbcs	ip, fp, r7
6030bdf0:	33811001 	orrcc	r1, r1, #1
6030bdf4:	e1560000 	cmp	r6, r0
6030bdf8:	93a00000 	movls	r0, #0
6030bdfc:	83a00001 	movhi	r0, #1
6030be00:	e1550002 	cmp	r5, r2
6030be04:	33800001 	orrcc	r0, r0, #1
6030be08:	e3500000 	cmp	r0, #0
6030be0c:	0a00001b 	beq	6030be80 <mmap_add_region_ctx+0x210>
6030be10:	e3510000 	cmp	r1, #0
6030be14:	0a000019 	beq	6030be80 <mmap_add_region_ctx+0x210>
6030be18:	e593100c 	ldr	r1, [r3, #12]
6030be1c:	e2833018 	add	r3, r3, #24
6030be20:	e3510000 	cmp	r1, #0
6030be24:	0a000033 	beq	6030bef8 <mmap_add_region_ctx+0x288>
6030be28:	e5132010 	ldr	r2, [r3, #-16]
6030be2c:	e241c001 	sub	ip, r1, #1
6030be30:	e08c0002 	add	r0, ip, r2
6030be34:	e1550000 	cmp	r5, r0
6030be38:	83a04000 	movhi	r4, #0
6030be3c:	93a04001 	movls	r4, #1
6030be40:	e1560002 	cmp	r6, r2
6030be44:	33a04000 	movcc	r4, #0
6030be48:	e513e018 	ldr	lr, [r3, #-24]	; 0xffffffe8
6030be4c:	e5137014 	ldr	r7, [r3, #-20]	; 0xffffffec
6030be50:	e3540000 	cmp	r4, #0
6030be54:	0affffd3 	beq	6030bda8 <mmap_add_region_ctx+0x138>
6030be58:	e052e00e 	subs	lr, r2, lr
6030be5c:	e2e77000 	rsc	r7, r7, #0
6030be60:	e056c008 	subs	ip, r6, r8
6030be64:	e2e90000 	rsc	r0, r9, #0
6030be68:	e1570000 	cmp	r7, r0
6030be6c:	015e000c 	cmpeq	lr, ip
6030be70:	1a000002 	bne	6030be80 <mmap_add_region_ctx+0x210>
6030be74:	e15a0001 	cmp	sl, r1
6030be78:	01560002 	cmpeq	r6, r2
6030be7c:	1affffe5 	bne	6030be18 <mmap_add_region_ctx+0x1a8>
6030be80:	e3e01000 	mvn	r1, #0
6030be84:	e30501d8 	movw	r0, #20952	; 0x51d8
6030be88:	e3460031 	movt	r0, #24625	; 0x6031
6030be8c:	eb00070e 	bl	6030dacc <__wrap_printf>
6030be90:	e3a00fce 	mov	r0, #824	; 0x338
6030be94:	e305c13c 	movw	ip, #20796	; 0x513c
6030be98:	e346c031 	movt	ip, #24625	; 0x6031
6030be9c:	e305307c 	movw	r3, #20604	; 0x507c
6030bea0:	e3463031 	movt	r3, #24625	; 0x6031
6030bea4:	e304113c 	movw	r1, #16700	; 0x413c
6030bea8:	e3461031 	movt	r1, #24625	; 0x6031
6030beac:	e58d0004 	str	r0, [sp, #4]
6030beb0:	e3a02049 	mov	r2, #73	; 0x49
6030beb4:	e3a00004 	mov	r0, #4
6030beb8:	e58dc000 	str	ip, [sp]
6030bebc:	ebfff7b3 	bl	60309d90 <rtk_log_write>
6030bec0:	eafffffe 	b	6030bec0 <mmap_add_region_ctx+0x250>
6030bec4:	e3000333 	movw	r0, #819	; 0x333
6030bec8:	e305c13c 	movw	ip, #20796	; 0x513c
6030becc:	e346c031 	movt	ip, #24625	; 0x6031
6030bed0:	e305307c 	movw	r3, #20604	; 0x507c
6030bed4:	e3463031 	movt	r3, #24625	; 0x6031
6030bed8:	e304113c 	movw	r1, #16700	; 0x413c
6030bedc:	e3461031 	movt	r1, #24625	; 0x6031
6030bee0:	e58d0004 	str	r0, [sp, #4]
6030bee4:	e3a02049 	mov	r2, #73	; 0x49
6030bee8:	e3a00004 	mov	r0, #4
6030beec:	e58dc000 	str	ip, [sp]
6030bef0:	ebfff7a6 	bl	60309d90 <rtk_log_write>
6030bef4:	eafffffe 	b	6030bef4 <mmap_add_region_ctx+0x284>
6030bef8:	e59db024 	ldr	fp, [sp, #36]	; 0x24
6030befc:	e59d3020 	ldr	r3, [sp, #32]
6030bf00:	e59d9028 	ldr	r9, [sp, #40]	; 0x28
6030bf04:	e08b3003 	add	r3, fp, r3
6030bf08:	e2432001 	sub	r2, r3, #1
6030bf0c:	e1550002 	cmp	r5, r2
6030bf10:	e59d4014 	ldr	r4, [sp, #20]
6030bf14:	93a02001 	movls	r2, #1
6030bf18:	9a00000b 	bls	6030bf4c <mmap_add_region_ctx+0x2dc>
6030bf1c:	e594b024 	ldr	fp, [r4, #36]	; 0x24
6030bf20:	e5943020 	ldr	r3, [r4, #32]
6030bf24:	e25b2000 	subs	r2, fp, #0
6030bf28:	e08b3003 	add	r3, fp, r3
6030bf2c:	13a02001 	movne	r2, #1
6030bf30:	e2430001 	sub	r0, r3, #1
6030bf34:	e1500005 	cmp	r0, r5
6030bf38:	23a01000 	movcs	r1, #0
6030bf3c:	32021001 	andcc	r1, r2, #1
6030bf40:	e2844018 	add	r4, r4, #24
6030bf44:	e3510000 	cmp	r1, #0
6030bf48:	1afffff3 	bne	6030bf1c <mmap_add_region_ctx+0x2ac>
6030bf4c:	e59d101c 	ldr	r1, [sp, #28]
6030bf50:	e15a000b 	cmp	sl, fp
6030bf54:	e0410003 	sub	r0, r1, r3
6030bf58:	e16f0f10 	clz	r0, r0
6030bf5c:	e1a002a0 	lsr	r0, r0, #5
6030bf60:	93a00000 	movls	r0, #0
6030bf64:	e1120000 	tst	r2, r0
6030bf68:	0a00000b 	beq	6030bf9c <mmap_add_region_ctx+0x32c>
6030bf6c:	e2844018 	add	r4, r4, #24
6030bf70:	e1c420d8 	ldrd	r2, [r4, #8]
6030bf74:	e3530000 	cmp	r3, #0
6030bf78:	115a0003 	cmpne	sl, r3
6030bf7c:	e0832002 	add	r2, r3, r2
6030bf80:	83a03001 	movhi	r3, #1
6030bf84:	93a03000 	movls	r3, #0
6030bf88:	e1520001 	cmp	r2, r1
6030bf8c:	13a03000 	movne	r3, #0
6030bf90:	02033001 	andeq	r3, r3, #1
6030bf94:	e3530000 	cmp	r3, #0
6030bf98:	1afffff3 	bne	6030bf6c <mmap_add_region_ctx+0x2fc>
6030bf9c:	e59d3014 	ldr	r3, [sp, #20]
6030bfa0:	e59d2018 	ldr	r2, [sp, #24]
6030bfa4:	e1530002 	cmp	r3, r2
6030bfa8:	359d1018 	ldrcc	r1, [sp, #24]
6030bfac:	3a000003 	bcc	6030bfc0 <mmap_add_region_ctx+0x350>
6030bfb0:	ea000023 	b	6030c044 <mmap_add_region_ctx+0x3d4>
6030bfb4:	e1590001 	cmp	r9, r1
6030bfb8:	2a000021 	bcs	6030c044 <mmap_add_region_ctx+0x3d4>
6030bfbc:	e2899018 	add	r9, r9, #24
6030bfc0:	e599300c 	ldr	r3, [r9, #12]
6030bfc4:	e3530000 	cmp	r3, #0
6030bfc8:	1afffff9 	bne	6030bfb4 <mmap_add_region_ctx+0x344>
6030bfcc:	e58d9014 	str	r9, [sp, #20]
6030bfd0:	e59d3014 	ldr	r3, [sp, #20]
6030bfd4:	e1a01004 	mov	r1, r4
6030bfd8:	e0432004 	sub	r2, r3, r4
6030bfdc:	e2840018 	add	r0, r4, #24
6030bfe0:	eb0004fd 	bl	6030d3dc <__wrap_memmove>
6030bfe4:	e59d3018 	ldr	r3, [sp, #24]
6030bfe8:	e593300c 	ldr	r3, [r3, #12]
6030bfec:	e3530000 	cmp	r3, #0
6030bff0:	1a000020 	bne	6030c078 <mmap_add_region_ctx+0x408>
6030bff4:	e59dc010 	ldr	ip, [sp, #16]
6030bff8:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
6030bffc:	e8a4000f 	stmia	r4!, {r0, r1, r2, r3}
6030c000:	e59d200c 	ldr	r2, [sp, #12]
6030c004:	e89c0003 	ldm	ip, {r0, r1}
6030c008:	e8840003 	stm	r4, {r0, r1}
6030c00c:	e59d1008 	ldr	r1, [sp, #8]
6030c010:	e5923028 	ldr	r3, [r2, #40]	; 0x28
6030c014:	e59d002c 	ldr	r0, [sp, #44]	; 0x2c
6030c018:	e1530001 	cmp	r3, r1
6030c01c:	e592302c 	ldr	r3, [r2, #44]	; 0x2c
6030c020:	e0d33000 	sbcs	r3, r3, r0
6030c024:	35821028 	strcc	r1, [r2, #40]	; 0x28
6030c028:	3582002c 	strcc	r0, [r2, #44]	; 0x2c
6030c02c:	e59d200c 	ldr	r2, [sp, #12]
6030c030:	e5923030 	ldr	r3, [r2, #48]	; 0x30
6030c034:	e1530005 	cmp	r3, r5
6030c038:	35825030 	strcc	r5, [r2, #48]	; 0x30
6030c03c:	e28dd034 	add	sp, sp, #52	; 0x34
6030c040:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030c044:	e300336b 	movw	r3, #875	; 0x36b
6030c048:	e305113c 	movw	r1, #20796	; 0x513c
6030c04c:	e3461031 	movt	r1, #24625	; 0x6031
6030c050:	e58d3004 	str	r3, [sp, #4]
6030c054:	e58d1000 	str	r1, [sp]
6030c058:	e305307c 	movw	r3, #20604	; 0x507c
6030c05c:	e3463031 	movt	r3, #24625	; 0x6031
6030c060:	e304113c 	movw	r1, #16700	; 0x413c
6030c064:	e3461031 	movt	r1, #24625	; 0x6031
6030c068:	e3a02049 	mov	r2, #73	; 0x49
6030c06c:	e3a00004 	mov	r0, #4
6030c070:	ebfff746 	bl	60309d90 <rtk_log_write>
6030c074:	eafffffe 	b	6030c074 <mmap_add_region_ctx+0x404>
6030c078:	e3000377 	movw	r0, #887	; 0x377
6030c07c:	e305c13c 	movw	ip, #20796	; 0x513c
6030c080:	e346c031 	movt	ip, #24625	; 0x6031
6030c084:	e305307c 	movw	r3, #20604	; 0x507c
6030c088:	e3463031 	movt	r3, #24625	; 0x6031
6030c08c:	e304113c 	movw	r1, #16700	; 0x413c
6030c090:	e3461031 	movt	r1, #24625	; 0x6031
6030c094:	e58d0004 	str	r0, [sp, #4]
6030c098:	e3a02049 	mov	r2, #73	; 0x49
6030c09c:	e3a00004 	mov	r0, #4
6030c0a0:	e58dc000 	str	ip, [sp]
6030c0a4:	ebfff739 	bl	60309d90 <rtk_log_write>
6030c0a8:	eafffffe 	b	6030c0a8 <mmap_add_region_ctx+0x438>
6030c0ac:	e3e01015 	mvn	r1, #21
6030c0b0:	eaffff73 	b	6030be84 <mmap_add_region_ctx+0x214>
6030c0b4:	e3e01021 	mvn	r1, #33	; 0x21
6030c0b8:	eaffff71 	b	6030be84 <mmap_add_region_ctx+0x214>
6030c0bc:	e59d4014 	ldr	r4, [sp, #20]
6030c0c0:	eaffffc2 	b	6030bfd0 <mmap_add_region_ctx+0x360>
6030c0c4:	e3e0100b 	mvn	r1, #11
6030c0c8:	eaffff6d 	b	6030be84 <mmap_add_region_ctx+0x214>

6030c0cc <init_xlat_tables_ctx>:
6030c0cc:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
6030c0d0:	e2504000 	subs	r4, r0, #0
6030c0d4:	e24dd018 	sub	sp, sp, #24
6030c0d8:	0a00007b 	beq	6030c2cc <init_xlat_tables_ctx+0x200>
6030c0dc:	e5d43038 	ldrb	r3, [r4, #56]	; 0x38
6030c0e0:	e3530000 	cmp	r3, #0
6030c0e4:	1a00005e 	bne	6030c264 <init_xlat_tables_ctx+0x198>
6030c0e8:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
6030c0ec:	e2433001 	sub	r3, r3, #1
6030c0f0:	e3530002 	cmp	r3, #2
6030c0f4:	9a00000c 	bls	6030c12c <init_xlat_tables_ctx+0x60>
6030c0f8:	e30004d7 	movw	r0, #1239	; 0x4d7
6030c0fc:	e305c13c 	movw	ip, #20796	; 0x513c
6030c100:	e346c031 	movt	ip, #24625	; 0x6031
6030c104:	e305307c 	movw	r3, #20604	; 0x507c
6030c108:	e3463031 	movt	r3, #24625	; 0x6031
6030c10c:	e304113c 	movw	r1, #16700	; 0x413c
6030c110:	e3461031 	movt	r1, #24625	; 0x6031
6030c114:	e58d0004 	str	r0, [sp, #4]
6030c118:	e3a02049 	mov	r2, #73	; 0x49
6030c11c:	e3a00004 	mov	r0, #4
6030c120:	e58dc000 	str	ip, [sp]
6030c124:	ebfff719 	bl	60309d90 <rtk_log_write>
6030c128:	eafffffe 	b	6030c128 <init_xlat_tables_ctx+0x5c>
6030c12c:	eb000121 	bl	6030c5b8 <is_mmu_enabled_ctx>
6030c130:	e3500000 	cmp	r0, #0
6030c134:	1a000057 	bne	6030c298 <init_xlat_tables_ctx+0x1cc>
6030c138:	e5946008 	ldr	r6, [r4, #8]
6030c13c:	e594500c 	ldr	r5, [r4, #12]
6030c140:	eb0000d8 	bl	6030c4a8 <xlat_get_min_virt_addr_space_size>
6030c144:	e2403001 	sub	r3, r0, #1
6030c148:	e1560003 	cmp	r6, r3
6030c14c:	3a000078 	bcc	6030c334 <init_xlat_tables_ctx+0x268>
6030c150:	e5942008 	ldr	r2, [r4, #8]
6030c154:	e2823001 	add	r3, r2, #1
6030c158:	e0136002 	ands	r6, r3, r2
6030c15c:	1a000067 	bne	6030c300 <init_xlat_tables_ctx+0x234>
6030c160:	e1a00005 	mov	r0, r5
6030c164:	eb0000ca 	bl	6030c494 <xlat_mmap_print>
6030c168:	e5942024 	ldr	r2, [r4, #36]	; 0x24
6030c16c:	e3520000 	cmp	r2, #0
6030c170:	0a000008 	beq	6030c198 <init_xlat_tables_ctx+0xcc>
6030c174:	f2c00010 	vmov.i32	d16, #0	; 0x00000000
6030c178:	e1a03006 	mov	r3, r6
6030c17c:	e5942020 	ldr	r2, [r4, #32]
6030c180:	e0822183 	add	r2, r2, r3, lsl #3
6030c184:	e2833001 	add	r3, r3, #1
6030c188:	edc20b00 	vstr	d16, [r2]
6030c18c:	e5942024 	ldr	r2, [r4, #36]	; 0x24
6030c190:	e1520003 	cmp	r2, r3
6030c194:	8afffff8 	bhi	6030c17c <init_xlat_tables_ctx+0xb0>
6030c198:	e5943018 	ldr	r3, [r4, #24]
6030c19c:	e3530000 	cmp	r3, #0
6030c1a0:	da00000e 	ble	6030c1e0 <init_xlat_tables_ctx+0x114>
6030c1a4:	f2c00010 	vmov.i32	d16, #0	; 0x00000000
6030c1a8:	e3a00000 	mov	r0, #0
6030c1ac:	e1a01600 	lsl	r1, r0, #12
6030c1b0:	e3a02000 	mov	r2, #0
6030c1b4:	e5943014 	ldr	r3, [r4, #20]
6030c1b8:	e0833001 	add	r3, r3, r1
6030c1bc:	e0833182 	add	r3, r3, r2, lsl #3
6030c1c0:	e2822001 	add	r2, r2, #1
6030c1c4:	e3520c02 	cmp	r2, #512	; 0x200
6030c1c8:	edc30b00 	vstr	d16, [r3]
6030c1cc:	1afffff8 	bne	6030c1b4 <init_xlat_tables_ctx+0xe8>
6030c1d0:	e5943018 	ldr	r3, [r4, #24]
6030c1d4:	e2800001 	add	r0, r0, #1
6030c1d8:	e1530000 	cmp	r3, r0
6030c1dc:	cafffff2 	bgt	6030c1ac <init_xlat_tables_ctx+0xe0>
6030c1e0:	e595300c 	ldr	r3, [r5, #12]
6030c1e4:	e3530000 	cmp	r3, #0
6030c1e8:	1a00000a 	bne	6030c218 <init_xlat_tables_ctx+0x14c>
6030c1ec:	ea00005d 	b	6030c368 <init_xlat_tables_ctx+0x29c>
6030c1f0:	e5950008 	ldr	r0, [r5, #8]
6030c1f4:	e595200c 	ldr	r2, [r5, #12]
6030c1f8:	e0803002 	add	r3, r0, r2
6030c1fc:	e2433001 	sub	r3, r3, #1
6030c200:	e1530006 	cmp	r3, r6
6030c204:	1a000075 	bne	6030c3e0 <init_xlat_tables_ctx+0x314>
6030c208:	e5953024 	ldr	r3, [r5, #36]	; 0x24
6030c20c:	e2855018 	add	r5, r5, #24
6030c210:	e3530000 	cmp	r3, #0
6030c214:	0a000053 	beq	6030c368 <init_xlat_tables_ctx+0x29c>
6030c218:	e5942034 	ldr	r2, [r4, #52]	; 0x34
6030c21c:	e5940024 	ldr	r0, [r4, #36]	; 0x24
6030c220:	e5943020 	ldr	r3, [r4, #32]
6030c224:	e1a01005 	mov	r1, r5
6030c228:	e58d2004 	str	r2, [sp, #4]
6030c22c:	e58d0000 	str	r0, [sp]
6030c230:	e3a02000 	mov	r2, #0
6030c234:	e1a00004 	mov	r0, r4
6030c238:	ebfffd88 	bl	6030b860 <xlat_tables_map_region>
6030c23c:	e5947020 	ldr	r7, [r4, #32]
6030c240:	e5948024 	ldr	r8, [r4, #36]	; 0x24
6030c244:	e1a06000 	mov	r6, r0
6030c248:	eb000098 	bl	6030c4b0 <is_dcache_enabled>
6030c24c:	e3500000 	cmp	r0, #0
6030c250:	0affffe6 	beq	6030c1f0 <init_xlat_tables_ctx+0x124>
6030c254:	e1a01188 	lsl	r1, r8, #3
6030c258:	e1a00007 	mov	r0, r7
6030c25c:	eb0001fa 	bl	6030ca4c <clean_dcache_range>
6030c260:	eaffffe2 	b	6030c1f0 <init_xlat_tables_ctx+0x124>
6030c264:	e30004d6 	movw	r0, #1238	; 0x4d6
6030c268:	e305c13c 	movw	ip, #20796	; 0x513c
6030c26c:	e346c031 	movt	ip, #24625	; 0x6031
6030c270:	e305307c 	movw	r3, #20604	; 0x507c
6030c274:	e3463031 	movt	r3, #24625	; 0x6031
6030c278:	e304113c 	movw	r1, #16700	; 0x413c
6030c27c:	e3461031 	movt	r1, #24625	; 0x6031
6030c280:	e58d0004 	str	r0, [sp, #4]
6030c284:	e3a02049 	mov	r2, #73	; 0x49
6030c288:	e3a00004 	mov	r0, #4
6030c28c:	e58dc000 	str	ip, [sp]
6030c290:	ebfff6be 	bl	60309d90 <rtk_log_write>
6030c294:	eafffffe 	b	6030c294 <init_xlat_tables_ctx+0x1c8>
6030c298:	e30004da 	movw	r0, #1242	; 0x4da
6030c29c:	e305c13c 	movw	ip, #20796	; 0x513c
6030c2a0:	e346c031 	movt	ip, #24625	; 0x6031
6030c2a4:	e305307c 	movw	r3, #20604	; 0x507c
6030c2a8:	e3463031 	movt	r3, #24625	; 0x6031
6030c2ac:	e304113c 	movw	r1, #16700	; 0x413c
6030c2b0:	e3461031 	movt	r1, #24625	; 0x6031
6030c2b4:	e58d0004 	str	r0, [sp, #4]
6030c2b8:	e3a02049 	mov	r2, #73	; 0x49
6030c2bc:	e3a00004 	mov	r0, #4
6030c2c0:	e58dc000 	str	ip, [sp]
6030c2c4:	ebfff6b1 	bl	60309d90 <rtk_log_write>
6030c2c8:	eafffffe 	b	6030c2c8 <init_xlat_tables_ctx+0x1fc>
6030c2cc:	e30004d5 	movw	r0, #1237	; 0x4d5
6030c2d0:	e305c13c 	movw	ip, #20796	; 0x513c
6030c2d4:	e346c031 	movt	ip, #24625	; 0x6031
6030c2d8:	e305307c 	movw	r3, #20604	; 0x507c
6030c2dc:	e3463031 	movt	r3, #24625	; 0x6031
6030c2e0:	e304113c 	movw	r1, #16700	; 0x413c
6030c2e4:	e3461031 	movt	r1, #24625	; 0x6031
6030c2e8:	e58d0004 	str	r0, [sp, #4]
6030c2ec:	e3a02049 	mov	r2, #73	; 0x49
6030c2f0:	e3a00004 	mov	r0, #4
6030c2f4:	e58dc000 	str	ip, [sp]
6030c2f8:	ebfff6a4 	bl	60309d90 <rtk_log_write>
6030c2fc:	eafffffe 	b	6030c2fc <init_xlat_tables_ctx+0x230>
6030c300:	e30004e1 	movw	r0, #1249	; 0x4e1
6030c304:	e305c13c 	movw	ip, #20796	; 0x513c
6030c308:	e346c031 	movt	ip, #24625	; 0x6031
6030c30c:	e305307c 	movw	r3, #20604	; 0x507c
6030c310:	e3463031 	movt	r3, #24625	; 0x6031
6030c314:	e304113c 	movw	r1, #16700	; 0x413c
6030c318:	e3461031 	movt	r1, #24625	; 0x6031
6030c31c:	e58d0004 	str	r0, [sp, #4]
6030c320:	e3a02049 	mov	r2, #73	; 0x49
6030c324:	e3a00004 	mov	r0, #4
6030c328:	e58dc000 	str	ip, [sp]
6030c32c:	ebfff697 	bl	60309d90 <rtk_log_write>
6030c330:	eafffffe 	b	6030c330 <init_xlat_tables_ctx+0x264>
6030c334:	e30004de 	movw	r0, #1246	; 0x4de
6030c338:	e305c13c 	movw	ip, #20796	; 0x513c
6030c33c:	e346c031 	movt	ip, #24625	; 0x6031
6030c340:	e305307c 	movw	r3, #20604	; 0x507c
6030c344:	e3463031 	movt	r3, #24625	; 0x6031
6030c348:	e304113c 	movw	r1, #16700	; 0x413c
6030c34c:	e3461031 	movt	r1, #24625	; 0x6031
6030c350:	e58d0004 	str	r0, [sp, #4]
6030c354:	e3a02049 	mov	r2, #73	; 0x49
6030c358:	e3a00004 	mov	r0, #4
6030c35c:	e58dc000 	str	ip, [sp]
6030c360:	ebfff68a 	bl	60309d90 <rtk_log_write>
6030c364:	eafffffe 	b	6030c364 <init_xlat_tables_ctx+0x298>
6030c368:	e5946000 	ldr	r6, [r4]
6030c36c:	e5945004 	ldr	r5, [r4, #4]
6030c370:	eb000049 	bl	6030c49c <xlat_arch_get_max_supported_pa>
6030c374:	e1500006 	cmp	r0, r6
6030c378:	e0d13005 	sbcs	r3, r1, r5
6030c37c:	3a000024 	bcc	6030c414 <init_xlat_tables_ctx+0x348>
6030c380:	e5942030 	ldr	r2, [r4, #48]	; 0x30
6030c384:	e5943008 	ldr	r3, [r4, #8]
6030c388:	e1520003 	cmp	r2, r3
6030c38c:	8a000033 	bhi	6030c460 <init_xlat_tables_ctx+0x394>
6030c390:	e5941028 	ldr	r1, [r4, #40]	; 0x28
6030c394:	e5940000 	ldr	r0, [r4]
6030c398:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
6030c39c:	e5942004 	ldr	r2, [r4, #4]
6030c3a0:	e1500001 	cmp	r0, r1
6030c3a4:	e0d23003 	sbcs	r3, r2, r3
6030c3a8:	2a000026 	bcs	6030c448 <init_xlat_tables_ctx+0x37c>
6030c3ac:	e3000508 	movw	r0, #1288	; 0x508
6030c3b0:	e305c13c 	movw	ip, #20796	; 0x513c
6030c3b4:	e346c031 	movt	ip, #24625	; 0x6031
6030c3b8:	e305307c 	movw	r3, #20604	; 0x507c
6030c3bc:	e3463031 	movt	r3, #24625	; 0x6031
6030c3c0:	e304113c 	movw	r1, #16700	; 0x413c
6030c3c4:	e3461031 	movt	r1, #24625	; 0x6031
6030c3c8:	e58d0004 	str	r0, [sp, #4]
6030c3cc:	e3a02049 	mov	r2, #73	; 0x49
6030c3d0:	e3a00004 	mov	r0, #4
6030c3d4:	e58dc000 	str	ip, [sp]
6030c3d8:	ebfff66c 	bl	60309d90 <rtk_log_write>
6030c3dc:	eafffffe 	b	6030c3dc <init_xlat_tables_ctx+0x310>
6030c3e0:	e5953010 	ldr	r3, [r5, #16]
6030c3e4:	e1cd21f0 	strd	r2, [sp, #16]
6030c3e8:	e304113c 	movw	r1, #16700	; 0x413c
6030c3ec:	e3461031 	movt	r1, #24625	; 0x6031
6030c3f0:	e1c540d0 	ldrd	r4, [r5]
6030c3f4:	e3053204 	movw	r3, #20996	; 0x5204
6030c3f8:	e3463031 	movt	r3, #24625	; 0x6031
6030c3fc:	e58d0000 	str	r0, [sp]
6030c400:	e3a02049 	mov	r2, #73	; 0x49
6030c404:	e3a00004 	mov	r0, #4
6030c408:	e1cd40f8 	strd	r4, [sp, #8]
6030c40c:	ebfff65f 	bl	60309d90 <rtk_log_write>
6030c410:	eafffffe 	b	6030c410 <init_xlat_tables_ctx+0x344>
6030c414:	e3000506 	movw	r0, #1286	; 0x506
6030c418:	e305c13c 	movw	ip, #20796	; 0x513c
6030c41c:	e346c031 	movt	ip, #24625	; 0x6031
6030c420:	e305307c 	movw	r3, #20604	; 0x507c
6030c424:	e3463031 	movt	r3, #24625	; 0x6031
6030c428:	e304113c 	movw	r1, #16700	; 0x413c
6030c42c:	e3461031 	movt	r1, #24625	; 0x6031
6030c430:	e58d0004 	str	r0, [sp, #4]
6030c434:	e3a02049 	mov	r2, #73	; 0x49
6030c438:	e3a00004 	mov	r0, #4
6030c43c:	e58dc000 	str	ip, [sp]
6030c440:	ebfff652 	bl	60309d90 <rtk_log_write>
6030c444:	eafffffe 	b	6030c444 <init_xlat_tables_ctx+0x378>
6030c448:	e3a03001 	mov	r3, #1
6030c44c:	e1a00004 	mov	r0, r4
6030c450:	e5c43038 	strb	r3, [r4, #56]	; 0x38
6030c454:	e28dd018 	add	sp, sp, #24
6030c458:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
6030c45c:	ea00000d 	b	6030c498 <xlat_tables_print>
6030c460:	e3000507 	movw	r0, #1287	; 0x507
6030c464:	e305c13c 	movw	ip, #20796	; 0x513c
6030c468:	e346c031 	movt	ip, #24625	; 0x6031
6030c46c:	e305307c 	movw	r3, #20604	; 0x507c
6030c470:	e3463031 	movt	r3, #24625	; 0x6031
6030c474:	e304113c 	movw	r1, #16700	; 0x413c
6030c478:	e3461031 	movt	r1, #24625	; 0x6031
6030c47c:	e58d0004 	str	r0, [sp, #4]
6030c480:	e3a02049 	mov	r2, #73	; 0x49
6030c484:	e3a00004 	mov	r0, #4
6030c488:	e58dc000 	str	ip, [sp]
6030c48c:	ebfff63f 	bl	60309d90 <rtk_log_write>
6030c490:	eafffffe 	b	6030c490 <init_xlat_tables_ctx+0x3c4>

6030c494 <xlat_mmap_print>:
6030c494:	e12fff1e 	bx	lr

6030c498 <xlat_tables_print>:
6030c498:	e12fff1e 	bx	lr

6030c49c <xlat_arch_get_max_supported_pa>:
6030c49c:	e3a010ff 	mov	r1, #255	; 0xff
6030c4a0:	e3e00000 	mvn	r0, #0
6030c4a4:	e12fff1e 	bx	lr

6030c4a8 <xlat_get_min_virt_addr_space_size>:
6030c4a8:	e3a00402 	mov	r0, #33554432	; 0x2000000
6030c4ac:	e12fff1e 	bx	lr

6030c4b0 <is_dcache_enabled>:
6030c4b0:	e10f3000 	mrs	r3, CPSR
6030c4b4:	e203301f 	and	r3, r3, #31
6030c4b8:	e353001a 	cmp	r3, #26
6030c4bc:	0a000002 	beq	6030c4cc <is_dcache_enabled+0x1c>
6030c4c0:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
6030c4c4:	e7e00150 	ubfx	r0, r0, #2, #1
6030c4c8:	e12fff1e 	bx	lr
6030c4cc:	ee910f10 	mrc	15, 4, r0, cr1, cr0, {0}
6030c4d0:	e7e00150 	ubfx	r0, r0, #2, #1
6030c4d4:	e12fff1e 	bx	lr

6030c4d8 <xlat_arch_regime_get_xn_desc>:
6030c4d8:	e3500001 	cmp	r0, #1
6030c4dc:	0a000013 	beq	6030c530 <xlat_arch_regime_get_xn_desc+0x58>
6030c4e0:	e3500002 	cmp	r0, #2
6030c4e4:	0a00000e 	beq	6030c524 <xlat_arch_regime_get_xn_desc+0x4c>
6030c4e8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
6030c4ec:	e3a00056 	mov	r0, #86	; 0x56
6030c4f0:	e24dd00c 	sub	sp, sp, #12
6030c4f4:	e305c254 	movw	ip, #21076	; 0x5254
6030c4f8:	e346c031 	movt	ip, #24625	; 0x6031
6030c4fc:	e305307c 	movw	r3, #20604	; 0x507c
6030c500:	e3463031 	movt	r3, #24625	; 0x6031
6030c504:	e304113c 	movw	r1, #16700	; 0x413c
6030c508:	e3461031 	movt	r1, #24625	; 0x6031
6030c50c:	e58d0004 	str	r0, [sp, #4]
6030c510:	e3a02049 	mov	r2, #73	; 0x49
6030c514:	e3a00004 	mov	r0, #4
6030c518:	e58dc000 	str	ip, [sp]
6030c51c:	ebfff61b 	bl	60309d90 <rtk_log_write>
6030c520:	eafffffe 	b	6030c520 <xlat_arch_regime_get_xn_desc+0x48>
6030c524:	e3a00000 	mov	r0, #0
6030c528:	e3a01501 	mov	r1, #4194304	; 0x400000
6030c52c:	e12fff1e 	bx	lr
6030c530:	e3a00000 	mov	r0, #0
6030c534:	e3a01606 	mov	r1, #6291456	; 0x600000
6030c538:	e12fff1e 	bx	lr

6030c53c <xlat_arch_current_el>:
6030c53c:	e10f3000 	mrs	r3, CPSR
6030c540:	e203301f 	and	r3, r3, #31
6030c544:	e353001a 	cmp	r3, #26
6030c548:	0a000018 	beq	6030c5b0 <xlat_arch_current_el+0x74>
6030c54c:	e10f3000 	mrs	r3, CPSR
6030c550:	e203301f 	and	r3, r3, #31
6030c554:	e3530013 	cmp	r3, #19
6030c558:	0a000012 	beq	6030c5a8 <xlat_arch_current_el+0x6c>
6030c55c:	e10f3000 	mrs	r3, CPSR
6030c560:	e203301f 	and	r3, r3, #31
6030c564:	e3530016 	cmp	r3, #22
6030c568:	0a00000e 	beq	6030c5a8 <xlat_arch_current_el+0x6c>
6030c56c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
6030c570:	e3a0008a 	mov	r0, #138	; 0x8a
6030c574:	e24dd00c 	sub	sp, sp, #12
6030c578:	e305c254 	movw	ip, #21076	; 0x5254
6030c57c:	e346c031 	movt	ip, #24625	; 0x6031
6030c580:	e305307c 	movw	r3, #20604	; 0x507c
6030c584:	e3463031 	movt	r3, #24625	; 0x6031
6030c588:	e304113c 	movw	r1, #16700	; 0x413c
6030c58c:	e3461031 	movt	r1, #24625	; 0x6031
6030c590:	e58d0004 	str	r0, [sp, #4]
6030c594:	e3a02049 	mov	r2, #73	; 0x49
6030c598:	e3a00004 	mov	r0, #4
6030c59c:	e58dc000 	str	ip, [sp]
6030c5a0:	ebfff5fa 	bl	60309d90 <rtk_log_write>
6030c5a4:	eafffffe 	b	6030c5a4 <xlat_arch_current_el+0x68>
6030c5a8:	e3a00001 	mov	r0, #1
6030c5ac:	e12fff1e 	bx	lr
6030c5b0:	e3a00002 	mov	r0, #2
6030c5b4:	e12fff1e 	bx	lr

6030c5b8 <is_mmu_enabled_ctx>:
6030c5b8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
6030c5bc:	e590303c 	ldr	r3, [r0, #60]	; 0x3c
6030c5c0:	e24dd00c 	sub	sp, sp, #12
6030c5c4:	e3530001 	cmp	r3, #1
6030c5c8:	0a00001e 	beq	6030c648 <is_mmu_enabled_ctx+0x90>
6030c5cc:	e3530002 	cmp	r3, #2
6030c5d0:	0a00000c 	beq	6030c608 <is_mmu_enabled_ctx+0x50>
6030c5d4:	e3a00042 	mov	r0, #66	; 0x42
6030c5d8:	e305c254 	movw	ip, #21076	; 0x5254
6030c5dc:	e346c031 	movt	ip, #24625	; 0x6031
6030c5e0:	e305307c 	movw	r3, #20604	; 0x507c
6030c5e4:	e3463031 	movt	r3, #24625	; 0x6031
6030c5e8:	e304113c 	movw	r1, #16700	; 0x413c
6030c5ec:	e3461031 	movt	r1, #24625	; 0x6031
6030c5f0:	e58d0004 	str	r0, [sp, #4]
6030c5f4:	e3a02049 	mov	r2, #73	; 0x49
6030c5f8:	e3a00004 	mov	r0, #4
6030c5fc:	e58dc000 	str	ip, [sp]
6030c600:	ebfff5e2 	bl	60309d90 <rtk_log_write>
6030c604:	eafffffe 	b	6030c604 <is_mmu_enabled_ctx+0x4c>
6030c608:	ebffffcb 	bl	6030c53c <xlat_arch_current_el>
6030c60c:	e3500002 	cmp	r0, #2
6030c610:	0a00001c 	beq	6030c688 <is_mmu_enabled_ctx+0xd0>
6030c614:	e3a00043 	mov	r0, #67	; 0x43
6030c618:	e305c254 	movw	ip, #21076	; 0x5254
6030c61c:	e346c031 	movt	ip, #24625	; 0x6031
6030c620:	e305307c 	movw	r3, #20604	; 0x507c
6030c624:	e3463031 	movt	r3, #24625	; 0x6031
6030c628:	e304113c 	movw	r1, #16700	; 0x413c
6030c62c:	e3461031 	movt	r1, #24625	; 0x6031
6030c630:	e58d0004 	str	r0, [sp, #4]
6030c634:	e3a02049 	mov	r2, #73	; 0x49
6030c638:	e3a00004 	mov	r0, #4
6030c63c:	e58dc000 	str	ip, [sp]
6030c640:	ebfff5d2 	bl	60309d90 <rtk_log_write>
6030c644:	eafffffe 	b	6030c644 <is_mmu_enabled_ctx+0x8c>
6030c648:	ebffffbb 	bl	6030c53c <xlat_arch_current_el>
6030c64c:	e3500001 	cmp	r0, #1
6030c650:	0a000010 	beq	6030c698 <is_mmu_enabled_ctx+0xe0>
6030c654:	e3a0003f 	mov	r0, #63	; 0x3f
6030c658:	e305c254 	movw	ip, #21076	; 0x5254
6030c65c:	e346c031 	movt	ip, #24625	; 0x6031
6030c660:	e305307c 	movw	r3, #20604	; 0x507c
6030c664:	e3463031 	movt	r3, #24625	; 0x6031
6030c668:	e304113c 	movw	r1, #16700	; 0x413c
6030c66c:	e3461031 	movt	r1, #24625	; 0x6031
6030c670:	e58d0004 	str	r0, [sp, #4]
6030c674:	e3a02049 	mov	r2, #73	; 0x49
6030c678:	e3a00004 	mov	r0, #4
6030c67c:	e58dc000 	str	ip, [sp]
6030c680:	ebfff5c2 	bl	60309d90 <rtk_log_write>
6030c684:	eafffffe 	b	6030c684 <is_mmu_enabled_ctx+0xcc>
6030c688:	ee910f10 	mrc	15, 4, r0, cr1, cr0, {0}
6030c68c:	e2000001 	and	r0, r0, #1
6030c690:	e28dd00c 	add	sp, sp, #12
6030c694:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
6030c698:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
6030c69c:	e2000001 	and	r0, r0, #1
6030c6a0:	eafffffa 	b	6030c690 <is_mmu_enabled_ctx+0xd8>
6030c6a4:	00000000 	andeq	r0, r0, r0

6030c6a8 <setup_mmu_cfg>:
6030c6a8:	e92d4070 	push	{r4, r5, r6, lr}
6030c6ac:	e1a04000 	mov	r4, r0
6030c6b0:	e24dd010 	sub	sp, sp, #16
6030c6b4:	e1a05001 	mov	r5, r1
6030c6b8:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
6030c6bc:	e3530001 	cmp	r3, #1
6030c6c0:	0a000030 	beq	6030c788 <setup_mmu_cfg+0xe0>
6030c6c4:	e3530002 	cmp	r3, #2
6030c6c8:	1a000021 	bne	6030c754 <setup_mmu_cfg+0xac>
6030c6cc:	e10f3000 	mrs	r3, CPSR
6030c6d0:	e203301f 	and	r3, r3, #31
6030c6d4:	e353001a 	cmp	r3, #26
6030c6d8:	03a06c35 	moveq	r6, #13568	; 0x3500
6030c6dc:	03486080 	movteq	r6, #32896	; 0x8080
6030c6e0:	1a000033 	bne	6030c7b4 <setup_mmu_cfg+0x10c>
6030c6e4:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
6030c6e8:	e3730001 	cmn	r3, #1
6030c6ec:	0a00000a 	beq	6030c71c <setup_mmu_cfg+0x74>
6030c6f0:	e2830001 	add	r0, r3, #1
6030c6f4:	e3500402 	cmp	r0, #33554432	; 0x2000000
6030c6f8:	3a000047 	bcc	6030c81c <setup_mmu_cfg+0x174>
6030c6fc:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
6030c700:	e0131000 	ands	r1, r3, r0
6030c704:	1a000051 	bne	6030c850 <setup_mmu_cfg+0x1a8>
6030c708:	e58d200c 	str	r2, [sp, #12]
6030c70c:	ebffd07f 	bl	60300910 <__ctzdi2>
6030c710:	e59d200c 	ldr	r2, [sp, #12]
6030c714:	e2603020 	rsb	r3, r0, #32
6030c718:	e1866003 	orr	r6, r6, r3
6030c71c:	e3150002 	tst	r5, #2
6030c720:	03866c35 	orreq	r6, r6, #13568	; 0x3500
6030c724:	ee103fd2 	mrc	15, 0, r3, cr0, cr2, {6}
6030c728:	e28f1f56 	add	r1, pc, #344	; 0x158
6030c72c:	e1c100d0 	ldrd	r0, [r1]
6030c730:	e3130a0f 	tst	r3, #61440	; 0xf000
6030c734:	13822001 	orrne	r2, r2, #1
6030c738:	e3a03000 	mov	r3, #0
6030c73c:	e1c400f0 	strd	r0, [r4]
6030c740:	e5846008 	str	r6, [r4, #8]
6030c744:	e584300c 	str	r3, [r4, #12]
6030c748:	e1c421f0 	strd	r2, [r4, #16]
6030c74c:	e28dd010 	add	sp, sp, #16
6030c750:	e8bd8070 	pop	{r4, r5, r6, pc}
6030c754:	e3a000ba 	mov	r0, #186	; 0xba
6030c758:	e305c254 	movw	ip, #21076	; 0x5254
6030c75c:	e346c031 	movt	ip, #24625	; 0x6031
6030c760:	e305307c 	movw	r3, #20604	; 0x507c
6030c764:	e3463031 	movt	r3, #24625	; 0x6031
6030c768:	e304113c 	movw	r1, #16700	; 0x413c
6030c76c:	e3461031 	movt	r1, #24625	; 0x6031
6030c770:	e58d0004 	str	r0, [sp, #4]
6030c774:	e3a02049 	mov	r2, #73	; 0x49
6030c778:	e3a00004 	mov	r0, #4
6030c77c:	e58dc000 	str	ip, [sp]
6030c780:	ebfff582 	bl	60309d90 <rtk_log_write>
6030c784:	eafffffe 	b	6030c784 <setup_mmu_cfg+0xdc>
6030c788:	e10f3000 	mrs	r3, CPSR
6030c78c:	e203301f 	and	r3, r3, #31
6030c790:	e3530013 	cmp	r3, #19
6030c794:	0a000003 	beq	6030c7a8 <setup_mmu_cfg+0x100>
6030c798:	e10f3000 	mrs	r3, CPSR
6030c79c:	e203301f 	and	r3, r3, #31
6030c7a0:	e3530016 	cmp	r3, #22
6030c7a4:	1a00000f 	bne	6030c7e8 <setup_mmu_cfg+0x140>
6030c7a8:	e3a06000 	mov	r6, #0
6030c7ac:	e3486080 	movt	r6, #32896	; 0x8080
6030c7b0:	eaffffcb 	b	6030c6e4 <setup_mmu_cfg+0x3c>
6030c7b4:	e3a000bb 	mov	r0, #187	; 0xbb
6030c7b8:	e305c254 	movw	ip, #21076	; 0x5254
6030c7bc:	e346c031 	movt	ip, #24625	; 0x6031
6030c7c0:	e305307c 	movw	r3, #20604	; 0x507c
6030c7c4:	e3463031 	movt	r3, #24625	; 0x6031
6030c7c8:	e304113c 	movw	r1, #16700	; 0x413c
6030c7cc:	e3461031 	movt	r1, #24625	; 0x6031
6030c7d0:	e58d0004 	str	r0, [sp, #4]
6030c7d4:	e3a02049 	mov	r2, #73	; 0x49
6030c7d8:	e3a00004 	mov	r0, #4
6030c7dc:	e58dc000 	str	ip, [sp]
6030c7e0:	ebfff56a 	bl	60309d90 <rtk_log_write>
6030c7e4:	eafffffe 	b	6030c7e4 <setup_mmu_cfg+0x13c>
6030c7e8:	e3a000b3 	mov	r0, #179	; 0xb3
6030c7ec:	e305c254 	movw	ip, #21076	; 0x5254
6030c7f0:	e346c031 	movt	ip, #24625	; 0x6031
6030c7f4:	e305307c 	movw	r3, #20604	; 0x507c
6030c7f8:	e3463031 	movt	r3, #24625	; 0x6031
6030c7fc:	e304113c 	movw	r1, #16700	; 0x413c
6030c800:	e3461031 	movt	r1, #24625	; 0x6031
6030c804:	e58d0004 	str	r0, [sp, #4]
6030c808:	e3a02049 	mov	r2, #73	; 0x49
6030c80c:	e3a00004 	mov	r0, #4
6030c810:	e58dc000 	str	ip, [sp]
6030c814:	ebfff55d 	bl	60309d90 <rtk_log_write>
6030c818:	eafffffe 	b	6030c818 <setup_mmu_cfg+0x170>
6030c81c:	e3a000ce 	mov	r0, #206	; 0xce
6030c820:	e305c254 	movw	ip, #21076	; 0x5254
6030c824:	e346c031 	movt	ip, #24625	; 0x6031
6030c828:	e305307c 	movw	r3, #20604	; 0x507c
6030c82c:	e3463031 	movt	r3, #24625	; 0x6031
6030c830:	e304113c 	movw	r1, #16700	; 0x413c
6030c834:	e3461031 	movt	r1, #24625	; 0x6031
6030c838:	e58d0004 	str	r0, [sp, #4]
6030c83c:	e3a02049 	mov	r2, #73	; 0x49
6030c840:	e3a00004 	mov	r0, #4
6030c844:	e58dc000 	str	ip, [sp]
6030c848:	ebfff550 	bl	60309d90 <rtk_log_write>
6030c84c:	eafffffe 	b	6030c84c <setup_mmu_cfg+0x1a4>
6030c850:	e3a000d2 	mov	r0, #210	; 0xd2
6030c854:	e305c254 	movw	ip, #21076	; 0x5254
6030c858:	e346c031 	movt	ip, #24625	; 0x6031
6030c85c:	e305307c 	movw	r3, #20604	; 0x507c
6030c860:	e3463031 	movt	r3, #24625	; 0x6031
6030c864:	e304113c 	movw	r1, #16700	; 0x413c
6030c868:	e3461031 	movt	r1, #24625	; 0x6031
6030c86c:	e58d0004 	str	r0, [sp, #4]
6030c870:	e3a02049 	mov	r2, #73	; 0x49
6030c874:	e3a00004 	mov	r0, #4
6030c878:	e58dc000 	str	ip, [sp]
6030c87c:	ebfff543 	bl	60309d90 <rtk_log_write>
6030c880:	eafffffe 	b	6030c880 <setup_mmu_cfg+0x1d8>
6030c884:	e320f000 	nop	{0}
6030c888:	004404ff 	.word	0x004404ff
6030c88c:	00000000 	.word	0x00000000

6030c890 <setupMMUTable>:
6030c890:	e3500001 	cmp	r0, #1
6030c894:	0a000001 	beq	6030c8a0 <setupMMUTable+0x10>
6030c898:	e3a00000 	mov	r0, #0
6030c89c:	eafffb74 	b	6030b674 <enable_mmu_svc_mon>
6030c8a0:	e92d4010 	push	{r4, lr}
6030c8a4:	e30829b4 	movw	r2, #35252	; 0x89b4
6030c8a8:	e3462032 	movt	r2, #24626	; 0x6032
6030c8ac:	e24dd008 	sub	sp, sp, #8
6030c8b0:	e3030000 	movw	r0, #12288	; 0x3000
6030c8b4:	e3460032 	movt	r0, #24626	; 0x6032
6030c8b8:	e0422000 	sub	r2, r2, r0
6030c8bc:	e3a01000 	mov	r1, #0
6030c8c0:	eb000070 	bl	6030ca88 <_memset>
6030c8c4:	e3a03302 	mov	r3, #134217728	; 0x8000000
6030c8c8:	e1a02003 	mov	r2, r3
6030c8cc:	e3a04012 	mov	r4, #18
6030c8d0:	e3a00302 	mov	r0, #134217728	; 0x8000000
6030c8d4:	e3a01000 	mov	r1, #0
6030c8d8:	e58d4000 	str	r4, [sp]
6030c8dc:	ebfffb28 	bl	6030b584 <mmap_add_region>
6030c8e0:	e3a03202 	mov	r3, #536870912	; 0x20000000
6030c8e4:	e1a02003 	mov	r2, r3
6030c8e8:	e3a0c01a 	mov	ip, #26
6030c8ec:	e3a00202 	mov	r0, #536870912	; 0x20000000
6030c8f0:	e3a01000 	mov	r1, #0
6030c8f4:	e58dc000 	str	ip, [sp]
6030c8f8:	ebfffb21 	bl	6030b584 <mmap_add_region>
6030c8fc:	e3a0c018 	mov	ip, #24
6030c900:	e3a00101 	mov	r0, #1073741824	; 0x40000000
6030c904:	e58dc000 	str	ip, [sp]
6030c908:	e3a01000 	mov	r1, #0
6030c90c:	e3a03202 	mov	r3, #536870912	; 0x20000000
6030c910:	e3a02101 	mov	r2, #1073741824	; 0x40000000
6030c914:	ebfffb1a 	bl	6030b584 <mmap_add_region>
6030c918:	e3002000 	movw	r2, #0
6030c91c:	e3462030 	movt	r2, #24624	; 0x6030
6030c920:	e3063000 	movw	r3, #24576	; 0x6000
6030c924:	e3463031 	movt	r3, #24625	; 0x6031
6030c928:	e0433002 	sub	r3, r3, r2
6030c92c:	e1a00002 	mov	r0, r2
6030c930:	e1a01fc2 	asr	r1, r2, #31
6030c934:	e58d4000 	str	r4, [sp]
6030c938:	ebfffb11 	bl	6030b584 <mmap_add_region>
6030c93c:	e3002000 	movw	r2, #0
6030c940:	e3462033 	movt	r2, #24627	; 0x6033
6030c944:	e3013000 	movw	r3, #4096	; 0x1000
6030c948:	e3463033 	movt	r3, #24627	; 0x6033
6030c94c:	e3a01019 	mov	r1, #25
6030c950:	e0433002 	sub	r3, r3, r2
6030c954:	e58d1000 	str	r1, [sp]
6030c958:	e1a00002 	mov	r0, r2
6030c95c:	e1a01fc2 	asr	r1, r2, #31
6030c960:	ebfffb07 	bl	6030b584 <mmap_add_region>
6030c964:	e3003000 	movw	r3, #0
6030c968:	e3403000 	movt	r3, #0
6030c96c:	e3530000 	cmp	r3, #0
6030c970:	0a000008 	beq	6030c998 <setupMMUTable+0x108>
6030c974:	e30f3fff 	movw	r3, #65535	; 0xffff
6030c978:	e3463fff 	movt	r3, #28671	; 0x6fff
6030c97c:	e2432020 	sub	r2, r3, #32
6030c980:	e59f105c 	ldr	r1, [pc, #92]	; 6030c9e4 <setupMMUTable+0x154>
6030c984:	e1a00002 	mov	r0, r2
6030c988:	e0413003 	sub	r3, r1, r3
6030c98c:	e58d4000 	str	r4, [sp]
6030c990:	e1a01fc2 	asr	r1, r2, #31
6030c994:	ebfffafa 	bl	6030b584 <mmap_add_region>
6030c998:	e3a0c01a 	mov	ip, #26
6030c99c:	e3a03202 	mov	r3, #536870912	; 0x20000000
6030c9a0:	e58dc000 	str	ip, [sp]
6030c9a4:	e3a02206 	mov	r2, #1610612736	; 0x60000000
6030c9a8:	e3a00206 	mov	r0, #1610612736	; 0x60000000
6030c9ac:	e3a01000 	mov	r1, #0
6030c9b0:	ebfffaf3 	bl	6030b584 <mmap_add_region>
6030c9b4:	e3a03102 	mov	r3, #-2147483648	; 0x80000000
6030c9b8:	e3a0c018 	mov	ip, #24
6030c9bc:	e1a02003 	mov	r2, r3
6030c9c0:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
6030c9c4:	e3a01000 	mov	r1, #0
6030c9c8:	e58dc000 	str	ip, [sp]
6030c9cc:	ebfffaec 	bl	6030b584 <mmap_add_region>
6030c9d0:	ebfffaf9 	bl	6030b5bc <init_xlat_tables>
6030c9d4:	e3a00000 	mov	r0, #0
6030c9d8:	e28dd008 	add	sp, sp, #8
6030c9dc:	e8bd4010 	pop	{r4, lr}
6030c9e0:	eafffb23 	b	6030b674 <enable_mmu_svc_mon>
6030c9e4:	7000001f 	.word	0x7000001f

6030c9e8 <enable_mmu_direct_svc_mon>:
6030c9e8:	ee080f17 	mcr	15, 0, r0, cr8, cr7, {0}
6030c9ec:	e1a03000 	mov	r3, r0
6030c9f0:	e59f004c 	ldr	r0, [pc, #76]	; 6030ca44 <enable_mmu_direct_svc_mon+0x5c>
6030c9f4:	e5901000 	ldr	r1, [r0]
6030c9f8:	ee0a1f12 	mcr	15, 0, r1, cr10, cr2, {0}
6030c9fc:	e5902008 	ldr	r2, [r0, #8]
6030ca00:	ee022f50 	mcr	15, 0, r2, cr2, cr0, {2}
6030ca04:	e5901010 	ldr	r1, [r0, #16]
6030ca08:	e5902014 	ldr	r2, [r0, #20]
6030ca0c:	ec421f02 	mcrr	15, 0, r1, r2, cr2
6030ca10:	e3a01000 	mov	r1, #0
6030ca14:	e3a02000 	mov	r2, #0
6030ca18:	ec421f12 	mcrr	15, 1, r1, r2, cr2
6030ca1c:	f57ff04b 	dsb	ish
6030ca20:	f57ff06f 	isb	sy
6030ca24:	ee111f10 	mrc	15, 0, r1, cr1, cr0, {0}
6030ca28:	e59f2018 	ldr	r2, [pc, #24]	; 6030ca48 <enable_mmu_direct_svc_mon+0x60>
6030ca2c:	e1811002 	orr	r1, r1, r2
6030ca30:	e3130001 	tst	r3, #1
6030ca34:	13c11004 	bicne	r1, r1, #4
6030ca38:	ee011f10 	mcr	15, 0, r1, cr1, cr0, {0}
6030ca3c:	f57ff06f 	isb	sy
6030ca40:	e12fff1e 	bx	lr
6030ca44:	60323998 	.word	0x60323998
6030ca48:	00080005 	.word	0x00080005

6030ca4c <clean_dcache_range>:
6030ca4c:	e3510000 	cmp	r1, #0
6030ca50:	0a00000b 	beq	6030ca84 <exit_loop_cmvac>
6030ca54:	ee103f30 	mrc	15, 0, r3, cr0, cr0, {1}
6030ca58:	e7e33853 	ubfx	r3, r3, #16, #4
6030ca5c:	e3a02004 	mov	r2, #4
6030ca60:	e1a02312 	lsl	r2, r2, r3
6030ca64:	e0801001 	add	r1, r0, r1
6030ca68:	e2423001 	sub	r3, r2, #1
6030ca6c:	e1c00003 	bic	r0, r0, r3

6030ca70 <loop_cmvac>:
6030ca70:	ee070f3a 	mcr	15, 0, r0, cr7, cr10, {1}
6030ca74:	e0800002 	add	r0, r0, r2
6030ca78:	e1500001 	cmp	r0, r1
6030ca7c:	3afffffb 	bcc	6030ca70 <loop_cmvac>
6030ca80:	f57ff04f 	dsb	sy

6030ca84 <exit_loop_cmvac>:
6030ca84:	e12fff1e 	bx	lr

6030ca88 <_memset>:
6030ca88:	e3100003 	tst	r0, #3
6030ca8c:	0a00003f 	beq	6030cb90 <_memset+0x108>
6030ca90:	e3520000 	cmp	r2, #0
6030ca94:	e242c001 	sub	ip, r2, #1
6030ca98:	012fff1e 	bxeq	lr
6030ca9c:	e6ef2071 	uxtb	r2, r1
6030caa0:	e1a03000 	mov	r3, r0
6030caa4:	ea000002 	b	6030cab4 <_memset+0x2c>
6030caa8:	e24cc001 	sub	ip, ip, #1
6030caac:	e37c0001 	cmn	ip, #1
6030cab0:	012fff1e 	bxeq	lr
6030cab4:	e4c32001 	strb	r2, [r3], #1
6030cab8:	e3130003 	tst	r3, #3
6030cabc:	1afffff9 	bne	6030caa8 <_memset+0x20>
6030cac0:	e35c0003 	cmp	ip, #3
6030cac4:	9a000027 	bls	6030cb68 <_memset+0xe0>
6030cac8:	e92d4030 	push	{r4, r5, lr}
6030cacc:	e6efe071 	uxtb	lr, r1
6030cad0:	e35c000f 	cmp	ip, #15
6030cad4:	e18ee40e 	orr	lr, lr, lr, lsl #8
6030cad8:	e18ee80e 	orr	lr, lr, lr, lsl #16
6030cadc:	9a00002e 	bls	6030cb9c <_memset+0x114>
6030cae0:	e24c2010 	sub	r2, ip, #16
6030cae4:	e3c2400f 	bic	r4, r2, #15
6030cae8:	e2835020 	add	r5, r3, #32
6030caec:	e0855004 	add	r5, r5, r4
6030caf0:	e1a04222 	lsr	r4, r2, #4
6030caf4:	e2832010 	add	r2, r3, #16
6030caf8:	e502e010 	str	lr, [r2, #-16]
6030cafc:	e502e00c 	str	lr, [r2, #-12]
6030cb00:	e502e008 	str	lr, [r2, #-8]
6030cb04:	e502e004 	str	lr, [r2, #-4]
6030cb08:	e2822010 	add	r2, r2, #16
6030cb0c:	e1520005 	cmp	r2, r5
6030cb10:	1afffff8 	bne	6030caf8 <_memset+0x70>
6030cb14:	e2842001 	add	r2, r4, #1
6030cb18:	e31c000c 	tst	ip, #12
6030cb1c:	e0832202 	add	r2, r3, r2, lsl #4
6030cb20:	e20cc00f 	and	ip, ip, #15
6030cb24:	0a000017 	beq	6030cb88 <_memset+0x100>
6030cb28:	e24c3004 	sub	r3, ip, #4
6030cb2c:	e3c33003 	bic	r3, r3, #3
6030cb30:	e2833004 	add	r3, r3, #4
6030cb34:	e0823003 	add	r3, r2, r3
6030cb38:	e482e004 	str	lr, [r2], #4
6030cb3c:	e1530002 	cmp	r3, r2
6030cb40:	1afffffc 	bne	6030cb38 <_memset+0xb0>
6030cb44:	e20cc003 	and	ip, ip, #3
6030cb48:	e35c0000 	cmp	ip, #0
6030cb4c:	08bd8030 	popeq	{r4, r5, pc}
6030cb50:	e6ef2071 	uxtb	r2, r1
6030cb54:	e083c00c 	add	ip, r3, ip
6030cb58:	e4c32001 	strb	r2, [r3], #1
6030cb5c:	e15c0003 	cmp	ip, r3
6030cb60:	1afffffc 	bne	6030cb58 <_memset+0xd0>
6030cb64:	e8bd8030 	pop	{r4, r5, pc}
6030cb68:	e35c0000 	cmp	ip, #0
6030cb6c:	012fff1e 	bxeq	lr
6030cb70:	e6ef2071 	uxtb	r2, r1
6030cb74:	e083c00c 	add	ip, r3, ip
6030cb78:	e4c32001 	strb	r2, [r3], #1
6030cb7c:	e15c0003 	cmp	ip, r3
6030cb80:	1afffffc 	bne	6030cb78 <_memset+0xf0>
6030cb84:	e12fff1e 	bx	lr
6030cb88:	e1a03002 	mov	r3, r2
6030cb8c:	eaffffed 	b	6030cb48 <_memset+0xc0>
6030cb90:	e1a03000 	mov	r3, r0
6030cb94:	e1a0c002 	mov	ip, r2
6030cb98:	eaffffc8 	b	6030cac0 <_memset+0x38>
6030cb9c:	e1a02003 	mov	r2, r3
6030cba0:	eaffffe0 	b	6030cb28 <_memset+0xa0>

6030cba4 <_rand>:
6030cba4:	e3a01a09 	mov	r1, #36864	; 0x9000
6030cba8:	e3441100 	movt	r1, #16640	; 0x4100
6030cbac:	e3a00001 	mov	r0, #1
6030cbb0:	e3a03001 	mov	r3, #1
6030cbb4:	e3403001 	movt	r3, #1
6030cbb8:	ea000001 	b	6030cbc4 <_rand+0x20>
6030cbbc:	e2533001 	subs	r3, r3, #1
6030cbc0:	0a000007 	beq	6030cbe4 <_rand+0x40>
6030cbc4:	e591200c 	ldr	r2, [r1, #12]
6030cbc8:	e352000f 	cmp	r2, #15
6030cbcc:	05810038 	streq	r0, [r1, #56]	; 0x38
6030cbd0:	0afffff9 	beq	6030cbbc <_rand+0x18>
6030cbd4:	e3520000 	cmp	r2, #0
6030cbd8:	0afffff7 	beq	6030cbbc <_rand+0x18>
6030cbdc:	e5910010 	ldr	r0, [r1, #16]
6030cbe0:	e12fff1e 	bx	lr
6030cbe4:	e5810038 	str	r0, [r1, #56]	; 0x38
6030cbe8:	eafffff0 	b	6030cbb0 <_rand+0xc>

6030cbec <_memcpy>:
6030cbec:	e352000f 	cmp	r2, #15
6030cbf0:	9a000037 	bls	6030ccd4 <_memcpy+0xe8>
6030cbf4:	e1803001 	orr	r3, r0, r1
6030cbf8:	e3130003 	tst	r3, #3
6030cbfc:	1a000040 	bne	6030cd04 <_memcpy+0x118>
6030cc00:	e2423010 	sub	r3, r2, #16
6030cc04:	e92d40f0 	push	{r4, r5, r6, r7, lr}
6030cc08:	e3c3c00f 	bic	ip, r3, #15
6030cc0c:	e2814020 	add	r4, r1, #32
6030cc10:	e2816010 	add	r6, r1, #16
6030cc14:	e2807010 	add	r7, r0, #16
6030cc18:	e084400c 	add	r4, r4, ip
6030cc1c:	e1a05223 	lsr	r5, r3, #4
6030cc20:	e516300c 	ldr	r3, [r6, #-12]
6030cc24:	e516e010 	ldr	lr, [r6, #-16]
6030cc28:	e516c008 	ldr	ip, [r6, #-8]
6030cc2c:	e507300c 	str	r3, [r7, #-12]
6030cc30:	e2866010 	add	r6, r6, #16
6030cc34:	e5163014 	ldr	r3, [r6, #-20]	; 0xffffffec
6030cc38:	e507e010 	str	lr, [r7, #-16]
6030cc3c:	e507c008 	str	ip, [r7, #-8]
6030cc40:	e5073004 	str	r3, [r7, #-4]
6030cc44:	e1560004 	cmp	r6, r4
6030cc48:	e2877010 	add	r7, r7, #16
6030cc4c:	1afffff3 	bne	6030cc20 <_memcpy+0x34>
6030cc50:	e2853001 	add	r3, r5, #1
6030cc54:	e312000c 	tst	r2, #12
6030cc58:	e1a03203 	lsl	r3, r3, #4
6030cc5c:	e202e00f 	and	lr, r2, #15
6030cc60:	e0811003 	add	r1, r1, r3
6030cc64:	01a0200e 	moveq	r2, lr
6030cc68:	e0803003 	add	r3, r0, r3
6030cc6c:	0a00000d 	beq	6030cca8 <_memcpy+0xbc>
6030cc70:	e2435004 	sub	r5, r3, #4
6030cc74:	e1a04001 	mov	r4, r1
6030cc78:	e494c004 	ldr	ip, [r4], #4
6030cc7c:	e5a5c004 	str	ip, [r5, #4]!
6030cc80:	e04ec004 	sub	ip, lr, r4
6030cc84:	e081c00c 	add	ip, r1, ip
6030cc88:	e35c0003 	cmp	ip, #3
6030cc8c:	8afffff9 	bhi	6030cc78 <_memcpy+0x8c>
6030cc90:	e24ec004 	sub	ip, lr, #4
6030cc94:	e3ccc003 	bic	ip, ip, #3
6030cc98:	e28cc004 	add	ip, ip, #4
6030cc9c:	e2022003 	and	r2, r2, #3
6030cca0:	e083300c 	add	r3, r3, ip
6030cca4:	e081100c 	add	r1, r1, ip
6030cca8:	e3520000 	cmp	r2, #0
6030ccac:	e242c001 	sub	ip, r2, #1
6030ccb0:	08bd80f0 	popeq	{r4, r5, r6, r7, pc}
6030ccb4:	e28cc001 	add	ip, ip, #1
6030ccb8:	e2433001 	sub	r3, r3, #1
6030ccbc:	e081c00c 	add	ip, r1, ip
6030ccc0:	e4d12001 	ldrb	r2, [r1], #1
6030ccc4:	e5e32001 	strb	r2, [r3, #1]!
6030ccc8:	e151000c 	cmp	r1, ip
6030cccc:	1afffffb 	bne	6030ccc0 <_memcpy+0xd4>
6030ccd0:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
6030ccd4:	e3520000 	cmp	r2, #0
6030ccd8:	e1a03000 	mov	r3, r0
6030ccdc:	e242c001 	sub	ip, r2, #1
6030cce0:	012fff1e 	bxeq	lr
6030cce4:	e28cc001 	add	ip, ip, #1
6030cce8:	e2433001 	sub	r3, r3, #1
6030ccec:	e081c00c 	add	ip, r1, ip
6030ccf0:	e4d12001 	ldrb	r2, [r1], #1
6030ccf4:	e5e32001 	strb	r2, [r3, #1]!
6030ccf8:	e151000c 	cmp	r1, ip
6030ccfc:	1afffffb 	bne	6030ccf0 <_memcpy+0x104>
6030cd00:	e12fff1e 	bx	lr
6030cd04:	e242c001 	sub	ip, r2, #1
6030cd08:	e1a03000 	mov	r3, r0
6030cd0c:	eafffff4 	b	6030cce4 <_memcpy+0xf8>

6030cd10 <_memchr>:
6030cd10:	e6ef1071 	uxtb	r1, r1
6030cd14:	e3100003 	tst	r0, #3
6030cd18:	0a000032 	beq	6030cde8 <_memchr+0xd8>
6030cd1c:	e1a03000 	mov	r3, r0
6030cd20:	e242c001 	sub	ip, r2, #1
6030cd24:	e3520000 	cmp	r2, #0
6030cd28:	1a000002 	bne	6030cd38 <_memchr+0x28>
6030cd2c:	ea000017 	b	6030cd90 <_memchr+0x80>
6030cd30:	e25cc001 	subs	ip, ip, #1
6030cd34:	3a000015 	bcc	6030cd90 <_memchr+0x80>
6030cd38:	e1a00003 	mov	r0, r3
6030cd3c:	e4d32001 	ldrb	r2, [r3], #1
6030cd40:	e1520001 	cmp	r2, r1
6030cd44:	012fff1e 	bxeq	lr
6030cd48:	e3130003 	tst	r3, #3
6030cd4c:	e1a00003 	mov	r0, r3
6030cd50:	1afffff6 	bne	6030cd30 <_memchr+0x20>
6030cd54:	e35c0003 	cmp	ip, #3
6030cd58:	e92d4070 	push	{r4, r5, r6, lr}
6030cd5c:	8a00000d 	bhi	6030cd98 <_memchr+0x88>
6030cd60:	e35c0000 	cmp	ip, #0
6030cd64:	0a000007 	beq	6030cd88 <_memchr+0x78>
6030cd68:	e1a02000 	mov	r2, r0
6030cd6c:	e080300c 	add	r3, r0, ip
6030cd70:	e1a00002 	mov	r0, r2
6030cd74:	e4d2c001 	ldrb	ip, [r2], #1
6030cd78:	e15c0001 	cmp	ip, r1
6030cd7c:	08bd8070 	popeq	{r4, r5, r6, pc}
6030cd80:	e1520003 	cmp	r2, r3
6030cd84:	1afffff9 	bne	6030cd70 <_memchr+0x60>
6030cd88:	e3a00000 	mov	r0, #0
6030cd8c:	e8bd8070 	pop	{r4, r5, r6, pc}
6030cd90:	e3a00000 	mov	r0, #0
6030cd94:	e12fff1e 	bx	lr
6030cd98:	e1814401 	orr	r4, r1, r1, lsl #8
6030cd9c:	e30f6eff 	movw	r6, #65279	; 0xfeff
6030cda0:	e34f6efe 	movt	r6, #65278	; 0xfefe
6030cda4:	e3085080 	movw	r5, #32896	; 0x8080
6030cda8:	e3485080 	movt	r5, #32896	; 0x8080
6030cdac:	e1844804 	orr	r4, r4, r4, lsl #16
6030cdb0:	e1a02000 	mov	r2, r0
6030cdb4:	e1a00002 	mov	r0, r2
6030cdb8:	e2822004 	add	r2, r2, #4
6030cdbc:	e5903000 	ldr	r3, [r0]
6030cdc0:	e0233004 	eor	r3, r3, r4
6030cdc4:	e083e006 	add	lr, r3, r6
6030cdc8:	e1ce3003 	bic	r3, lr, r3
6030cdcc:	e1130005 	tst	r3, r5
6030cdd0:	1affffe4 	bne	6030cd68 <_memchr+0x58>
6030cdd4:	e24cc004 	sub	ip, ip, #4
6030cdd8:	e1a00002 	mov	r0, r2
6030cddc:	e35c0003 	cmp	ip, #3
6030cde0:	8afffff3 	bhi	6030cdb4 <_memchr+0xa4>
6030cde4:	eaffffdd 	b	6030cd60 <_memchr+0x50>
6030cde8:	e1a0c002 	mov	ip, r2
6030cdec:	eaffffd8 	b	6030cd54 <_memchr+0x44>

6030cdf0 <_memmove>:
6030cdf0:	e1500001 	cmp	r0, r1
6030cdf4:	9a00000b 	bls	6030ce28 <_memmove+0x38>
6030cdf8:	e0813002 	add	r3, r1, r2
6030cdfc:	e1530000 	cmp	r3, r0
6030ce00:	9a000008 	bls	6030ce28 <_memmove+0x38>
6030ce04:	e3520000 	cmp	r2, #0
6030ce08:	e080c002 	add	ip, r0, r2
6030ce0c:	012fff1e 	bxeq	lr
6030ce10:	e1a0200c 	mov	r2, ip
6030ce14:	e573c001 	ldrb	ip, [r3, #-1]!
6030ce18:	e562c001 	strb	ip, [r2, #-1]!
6030ce1c:	e1510003 	cmp	r1, r3
6030ce20:	1afffffb 	bne	6030ce14 <_memmove+0x24>
6030ce24:	e12fff1e 	bx	lr
6030ce28:	e352000f 	cmp	r2, #15
6030ce2c:	8a00000b 	bhi	6030ce60 <_memmove+0x70>
6030ce30:	e3520000 	cmp	r2, #0
6030ce34:	e1a03000 	mov	r3, r0
6030ce38:	e242c001 	sub	ip, r2, #1
6030ce3c:	012fff1e 	bxeq	lr
6030ce40:	e28cc001 	add	ip, ip, #1
6030ce44:	e2433001 	sub	r3, r3, #1
6030ce48:	e081c00c 	add	ip, r1, ip
6030ce4c:	e4d12001 	ldrb	r2, [r1], #1
6030ce50:	e5e32001 	strb	r2, [r3, #1]!
6030ce54:	e151000c 	cmp	r1, ip
6030ce58:	1afffffb 	bne	6030ce4c <_memmove+0x5c>
6030ce5c:	e12fff1e 	bx	lr
6030ce60:	e1803001 	orr	r3, r0, r1
6030ce64:	e3130003 	tst	r3, #3
6030ce68:	1a000034 	bne	6030cf40 <_memmove+0x150>
6030ce6c:	e2423010 	sub	r3, r2, #16
6030ce70:	e92d4030 	push	{r4, r5, lr}
6030ce74:	e281c020 	add	ip, r1, #32
6030ce78:	e3c3e00f 	bic	lr, r3, #15
6030ce7c:	e08cc00e 	add	ip, ip, lr
6030ce80:	e2814010 	add	r4, r1, #16
6030ce84:	e2805010 	add	r5, r0, #16
6030ce88:	e1a0e223 	lsr	lr, r3, #4
6030ce8c:	e5143010 	ldr	r3, [r4, #-16]
6030ce90:	e5053010 	str	r3, [r5, #-16]
6030ce94:	e2844010 	add	r4, r4, #16
6030ce98:	e514301c 	ldr	r3, [r4, #-28]	; 0xffffffe4
6030ce9c:	e505300c 	str	r3, [r5, #-12]
6030cea0:	e2855010 	add	r5, r5, #16
6030cea4:	e5143018 	ldr	r3, [r4, #-24]	; 0xffffffe8
6030cea8:	e5053018 	str	r3, [r5, #-24]	; 0xffffffe8
6030ceac:	e5143014 	ldr	r3, [r4, #-20]	; 0xffffffec
6030ceb0:	e5053014 	str	r3, [r5, #-20]	; 0xffffffec
6030ceb4:	e154000c 	cmp	r4, ip
6030ceb8:	1afffff3 	bne	6030ce8c <_memmove+0x9c>
6030cebc:	e28e3001 	add	r3, lr, #1
6030cec0:	e312000c 	tst	r2, #12
6030cec4:	e1a03203 	lsl	r3, r3, #4
6030cec8:	e202e00f 	and	lr, r2, #15
6030cecc:	e0811003 	add	r1, r1, r3
6030ced0:	01a0200e 	moveq	r2, lr
6030ced4:	e0803003 	add	r3, r0, r3
6030ced8:	0a00000d 	beq	6030cf14 <_memmove+0x124>
6030cedc:	e2435004 	sub	r5, r3, #4
6030cee0:	e1a04001 	mov	r4, r1
6030cee4:	e494c004 	ldr	ip, [r4], #4
6030cee8:	e5a5c004 	str	ip, [r5, #4]!
6030ceec:	e04ec004 	sub	ip, lr, r4
6030cef0:	e081c00c 	add	ip, r1, ip
6030cef4:	e35c0003 	cmp	ip, #3
6030cef8:	8afffff9 	bhi	6030cee4 <_memmove+0xf4>
6030cefc:	e24ec004 	sub	ip, lr, #4
6030cf00:	e3ccc003 	bic	ip, ip, #3
6030cf04:	e28cc004 	add	ip, ip, #4
6030cf08:	e2022003 	and	r2, r2, #3
6030cf0c:	e083300c 	add	r3, r3, ip
6030cf10:	e081100c 	add	r1, r1, ip
6030cf14:	e3520000 	cmp	r2, #0
6030cf18:	e242c001 	sub	ip, r2, #1
6030cf1c:	08bd8030 	popeq	{r4, r5, pc}
6030cf20:	e28cc001 	add	ip, ip, #1
6030cf24:	e2433001 	sub	r3, r3, #1
6030cf28:	e081c00c 	add	ip, r1, ip
6030cf2c:	e4d12001 	ldrb	r2, [r1], #1
6030cf30:	e5e32001 	strb	r2, [r3, #1]!
6030cf34:	e151000c 	cmp	r1, ip
6030cf38:	1afffffb 	bne	6030cf2c <_memmove+0x13c>
6030cf3c:	e8bd8030 	pop	{r4, r5, pc}
6030cf40:	e242c001 	sub	ip, r2, #1
6030cf44:	e1a03000 	mov	r3, r0
6030cf48:	eaffffbc 	b	6030ce40 <_memmove+0x50>

6030cf4c <_strcmp>:
6030cf4c:	e1803001 	orr	r3, r0, r1
6030cf50:	e3130003 	tst	r3, #3
6030cf54:	0a000005 	beq	6030cf70 <_strcmp+0x24>
6030cf58:	e5d03000 	ldrb	r3, [r0]
6030cf5c:	e5d12000 	ldrb	r2, [r1]
6030cf60:	e3530000 	cmp	r3, #0
6030cf64:	1a00001d 	bne	6030cfe0 <_strcmp+0x94>
6030cf68:	e0430002 	sub	r0, r3, r2
6030cf6c:	e12fff1e 	bx	lr
6030cf70:	e5903000 	ldr	r3, [r0]
6030cf74:	e5912000 	ldr	r2, [r1]
6030cf78:	e1530002 	cmp	r3, r2
6030cf7c:	1afffff5 	bne	6030cf58 <_strcmp+0xc>
6030cf80:	e92d4030 	push	{r4, r5, lr}
6030cf84:	e281c004 	add	ip, r1, #4
6030cf88:	e30f5eff 	movw	r5, #65279	; 0xfeff
6030cf8c:	e34f5efe 	movt	r5, #65278	; 0xfefe
6030cf90:	e3084080 	movw	r4, #32896	; 0x8080
6030cf94:	e3484080 	movt	r4, #32896	; 0x8080
6030cf98:	e280e004 	add	lr, r0, #4
6030cf9c:	ea000004 	b	6030cfb4 <_strcmp+0x68>
6030cfa0:	e59c2000 	ldr	r2, [ip]
6030cfa4:	e49e3004 	ldr	r3, [lr], #4
6030cfa8:	e28cc004 	add	ip, ip, #4
6030cfac:	e1530002 	cmp	r3, r2
6030cfb0:	1a00000f 	bne	6030cff4 <_strcmp+0xa8>
6030cfb4:	e0832005 	add	r2, r3, r5
6030cfb8:	e1c23003 	bic	r3, r2, r3
6030cfbc:	e1a0100c 	mov	r1, ip
6030cfc0:	e1a0000e 	mov	r0, lr
6030cfc4:	e1130004 	tst	r3, r4
6030cfc8:	0afffff4 	beq	6030cfa0 <_strcmp+0x54>
6030cfcc:	e3a00000 	mov	r0, #0
6030cfd0:	e8bd8030 	pop	{r4, r5, pc}
6030cfd4:	e5f03001 	ldrb	r3, [r0, #1]!
6030cfd8:	e3530000 	cmp	r3, #0
6030cfdc:	0a000015 	beq	6030d038 <_strcmp+0xec>
6030cfe0:	e1a0c001 	mov	ip, r1
6030cfe4:	e4d12001 	ldrb	r2, [r1], #1
6030cfe8:	e1520003 	cmp	r2, r3
6030cfec:	0afffff8 	beq	6030cfd4 <_strcmp+0x88>
6030cff0:	eaffffdc 	b	6030cf68 <_strcmp+0x1c>
6030cff4:	e5d03000 	ldrb	r3, [r0]
6030cff8:	e5d12000 	ldrb	r2, [r1]
6030cffc:	e3530000 	cmp	r3, #0
6030d000:	1a000003 	bne	6030d014 <_strcmp+0xc8>
6030d004:	ea000006 	b	6030d024 <_strcmp+0xd8>
6030d008:	e5f03001 	ldrb	r3, [r0, #1]!
6030d00c:	e3530000 	cmp	r3, #0
6030d010:	0a000005 	beq	6030d02c <_strcmp+0xe0>
6030d014:	e1a0c001 	mov	ip, r1
6030d018:	e4d12001 	ldrb	r2, [r1], #1
6030d01c:	e1520003 	cmp	r2, r3
6030d020:	0afffff8 	beq	6030d008 <_strcmp+0xbc>
6030d024:	e0430002 	sub	r0, r3, r2
6030d028:	e8bd8030 	pop	{r4, r5, pc}
6030d02c:	e5dc2001 	ldrb	r2, [ip, #1]
6030d030:	e0430002 	sub	r0, r3, r2
6030d034:	e8bd8030 	pop	{r4, r5, pc}
6030d038:	e5dc2001 	ldrb	r2, [ip, #1]
6030d03c:	eaffffc9 	b	6030cf68 <_strcmp+0x1c>

6030d040 <_strlen>:
6030d040:	e3100003 	tst	r0, #3
6030d044:	0a00000b 	beq	6030d078 <_strlen+0x38>
6030d048:	e1a03000 	mov	r3, r0
6030d04c:	ea000001 	b	6030d058 <_strlen+0x18>
6030d050:	e3130003 	tst	r3, #3
6030d054:	0a000008 	beq	6030d07c <_strlen+0x3c>
6030d058:	e1a01003 	mov	r1, r3
6030d05c:	e2833001 	add	r3, r3, #1
6030d060:	e1a02003 	mov	r2, r3
6030d064:	e5d1c000 	ldrb	ip, [r1]
6030d068:	e35c0000 	cmp	ip, #0
6030d06c:	1afffff7 	bne	6030d050 <_strlen+0x10>
6030d070:	e0410000 	sub	r0, r1, r0
6030d074:	e12fff1e 	bx	lr
6030d078:	e1a02000 	mov	r2, r0
6030d07c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
6030d080:	e30feeff 	movw	lr, #65279	; 0xfeff
6030d084:	e34feefe 	movt	lr, #65278	; 0xfefe
6030d088:	e5921000 	ldr	r1, [r2]
6030d08c:	e308c080 	movw	ip, #32896	; 0x8080
6030d090:	e348c080 	movt	ip, #32896	; 0x8080
6030d094:	e081300e 	add	r3, r1, lr
6030d098:	e1c33001 	bic	r3, r3, r1
6030d09c:	e113000c 	tst	r3, ip
6030d0a0:	1a000004 	bne	6030d0b8 <_strlen+0x78>
6030d0a4:	e5b21004 	ldr	r1, [r2, #4]!
6030d0a8:	e081300e 	add	r3, r1, lr
6030d0ac:	e1c33001 	bic	r3, r3, r1
6030d0b0:	e113000c 	tst	r3, ip
6030d0b4:	0afffffa 	beq	6030d0a4 <_strlen+0x64>
6030d0b8:	e5d23000 	ldrb	r3, [r2]
6030d0bc:	e3530000 	cmp	r3, #0
6030d0c0:	0a000002 	beq	6030d0d0 <_strlen+0x90>
6030d0c4:	e5f23001 	ldrb	r3, [r2, #1]!
6030d0c8:	e3530000 	cmp	r3, #0
6030d0cc:	1afffffc 	bne	6030d0c4 <_strlen+0x84>
6030d0d0:	e0420000 	sub	r0, r2, r0
6030d0d4:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

6030d0d8 <_stricmp>:
6030d0d8:	e4d03001 	ldrb	r3, [r0], #1
6030d0dc:	e4d12001 	ldrb	r2, [r1], #1
6030d0e0:	e1530002 	cmp	r3, r2
6030d0e4:	0a000013 	beq	6030d138 <_stricmp+0x60>
6030d0e8:	e383c020 	orr	ip, r3, #32
6030d0ec:	e92d4010 	push	{r4, lr}
6030d0f0:	e24ce061 	sub	lr, ip, #97	; 0x61
6030d0f4:	e35e0019 	cmp	lr, #25
6030d0f8:	8a00000c 	bhi	6030d130 <_stricmp+0x58>
6030d0fc:	e3824020 	orr	r4, r2, #32
6030d100:	e15c0004 	cmp	ip, r4
6030d104:	1a000009 	bne	6030d130 <_stricmp+0x58>
6030d108:	e3530000 	cmp	r3, #0
6030d10c:	0a00000d 	beq	6030d148 <_stricmp+0x70>
6030d110:	e4d03001 	ldrb	r3, [r0], #1
6030d114:	e4d12001 	ldrb	r2, [r1], #1
6030d118:	e1530002 	cmp	r3, r2
6030d11c:	0afffff9 	beq	6030d108 <_stricmp+0x30>
6030d120:	e383c020 	orr	ip, r3, #32
6030d124:	e24ce061 	sub	lr, ip, #97	; 0x61
6030d128:	e35e0019 	cmp	lr, #25
6030d12c:	9afffff2 	bls	6030d0fc <_stricmp+0x24>
6030d130:	e3a00001 	mov	r0, #1
6030d134:	e8bd8010 	pop	{r4, pc}
6030d138:	e3530000 	cmp	r3, #0
6030d13c:	1affffe5 	bne	6030d0d8 <_stricmp>
6030d140:	e1a00003 	mov	r0, r3
6030d144:	e12fff1e 	bx	lr
6030d148:	e1a00003 	mov	r0, r3
6030d14c:	e8bd8010 	pop	{r4, pc}

6030d150 <_strtoul>:
6030d150:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
6030d154:	e1a0c000 	mov	ip, r0
6030d158:	e1a04000 	mov	r4, r0
6030d15c:	e1a06001 	mov	r6, r1
6030d160:	e1a05002 	mov	r5, r2
6030d164:	e1a0200c 	mov	r2, ip
6030d168:	e4dc3001 	ldrb	r3, [ip], #1
6030d16c:	e243e009 	sub	lr, r3, #9
6030d170:	e3530020 	cmp	r3, #32
6030d174:	0afffffa 	beq	6030d164 <_strtoul+0x14>
6030d178:	e353002c 	cmp	r3, #44	; 0x2c
6030d17c:	135e0004 	cmpne	lr, #4
6030d180:	93a0e001 	movls	lr, #1
6030d184:	83a0e000 	movhi	lr, #0
6030d188:	9afffff5 	bls	6030d164 <_strtoul+0x14>
6030d18c:	e353002d 	cmp	r3, #45	; 0x2d
6030d190:	0a000047 	beq	6030d2b4 <_strtoul+0x164>
6030d194:	e353002b 	cmp	r3, #43	; 0x2b
6030d198:	0282c002 	addeq	ip, r2, #2
6030d19c:	05d23001 	ldrbeq	r3, [r2, #1]
6030d1a0:	e3d52010 	bics	r2, r5, #16
6030d1a4:	0a000032 	beq	6030d274 <_strtoul+0x124>
6030d1a8:	e3e07000 	mvn	r7, #0
6030d1ac:	e1a09005 	mov	r9, r5
6030d1b0:	e737f517 	udiv	r7, r7, r5
6030d1b4:	e0080795 	mul	r8, r5, r7
6030d1b8:	e1e08008 	mvn	r8, r8
6030d1bc:	e3a01000 	mov	r1, #0
6030d1c0:	e1a00001 	mov	r0, r1
6030d1c4:	ea000009 	b	6030d1f0 <_strtoul+0xa0>
6030d1c8:	e0402007 	sub	r2, r0, r7
6030d1cc:	e16f2f12 	clz	r2, r2
6030d1d0:	e1530008 	cmp	r3, r8
6030d1d4:	e1a022a2 	lsr	r2, r2, #5
6030d1d8:	d3a02000 	movle	r2, #0
6030d1dc:	e3520000 	cmp	r2, #0
6030d1e0:	1a000017 	bne	6030d244 <_strtoul+0xf4>
6030d1e4:	e0203099 	mla	r0, r9, r0, r3
6030d1e8:	e3a01001 	mov	r1, #1
6030d1ec:	e4dc3001 	ldrb	r3, [ip], #1
6030d1f0:	e2432030 	sub	r2, r3, #48	; 0x30
6030d1f4:	e6efa072 	uxtb	sl, r2
6030d1f8:	e35a0009 	cmp	sl, #9
6030d1fc:	91a03002 	movls	r3, r2
6030d200:	9a000008 	bls	6030d228 <_strtoul+0xd8>
6030d204:	e3c32020 	bic	r2, r3, #32
6030d208:	e2422041 	sub	r2, r2, #65	; 0x41
6030d20c:	e243a041 	sub	sl, r3, #65	; 0x41
6030d210:	e3520019 	cmp	r2, #25
6030d214:	8a00000c 	bhi	6030d24c <_strtoul+0xfc>
6030d218:	e35a001a 	cmp	sl, #26
6030d21c:	33a02037 	movcc	r2, #55	; 0x37
6030d220:	23a02057 	movcs	r2, #87	; 0x57
6030d224:	e0433002 	sub	r3, r3, r2
6030d228:	e1550003 	cmp	r5, r3
6030d22c:	da000006 	ble	6030d24c <_strtoul+0xfc>
6030d230:	e1500007 	cmp	r0, r7
6030d234:	93a02000 	movls	r2, #0
6030d238:	83a02001 	movhi	r2, #1
6030d23c:	e1922fa1 	orrs	r2, r2, r1, lsr #31
6030d240:	0affffe0 	beq	6030d1c8 <_strtoul+0x78>
6030d244:	e3e01000 	mvn	r1, #0
6030d248:	eaffffe7 	b	6030d1ec <_strtoul+0x9c>
6030d24c:	e3710001 	cmn	r1, #1
6030d250:	0a000011 	beq	6030d29c <_strtoul+0x14c>
6030d254:	e35e0000 	cmp	lr, #0
6030d258:	12600000 	rsbne	r0, r0, #0
6030d25c:	e3560000 	cmp	r6, #0
6030d260:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
6030d264:	e3510000 	cmp	r1, #0
6030d268:	1a00000e 	bne	6030d2a8 <_strtoul+0x158>
6030d26c:	e5864000 	str	r4, [r6]
6030d270:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
6030d274:	e3530030 	cmp	r3, #48	; 0x30
6030d278:	0a000011 	beq	6030d2c4 <_strtoul+0x174>
6030d27c:	e3550000 	cmp	r5, #0
6030d280:	1affffc8 	bne	6030d1a8 <_strtoul+0x58>
6030d284:	e3a0500a 	mov	r5, #10
6030d288:	e3097999 	movw	r7, #39321	; 0x9999
6030d28c:	e3417999 	movt	r7, #6553	; 0x1999
6030d290:	e3a08005 	mov	r8, #5
6030d294:	e1a09005 	mov	r9, r5
6030d298:	eaffffc7 	b	6030d1bc <_strtoul+0x6c>
6030d29c:	e3560000 	cmp	r6, #0
6030d2a0:	e1a00001 	mov	r0, r1
6030d2a4:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
6030d2a8:	e24c4001 	sub	r4, ip, #1
6030d2ac:	e5864000 	str	r4, [r6]
6030d2b0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
6030d2b4:	e5d23001 	ldrb	r3, [r2, #1]
6030d2b8:	e282c002 	add	ip, r2, #2
6030d2bc:	e3a0e001 	mov	lr, #1
6030d2c0:	eaffffb6 	b	6030d1a0 <_strtoul+0x50>
6030d2c4:	e5dc2000 	ldrb	r2, [ip]
6030d2c8:	e20220df 	and	r2, r2, #223	; 0xdf
6030d2cc:	e3520058 	cmp	r2, #88	; 0x58
6030d2d0:	1a000006 	bne	6030d2f0 <_strtoul+0x1a0>
6030d2d4:	e3a05010 	mov	r5, #16
6030d2d8:	e5dc3001 	ldrb	r3, [ip, #1]
6030d2dc:	e3a0800f 	mov	r8, #15
6030d2e0:	e28cc002 	add	ip, ip, #2
6030d2e4:	e1a09005 	mov	r9, r5
6030d2e8:	e3e0720f 	mvn	r7, #-268435456	; 0xf0000000
6030d2ec:	eaffffb2 	b	6030d1bc <_strtoul+0x6c>
6030d2f0:	e3550000 	cmp	r5, #0
6030d2f4:	1affffab 	bne	6030d1a8 <_strtoul+0x58>
6030d2f8:	e3a05008 	mov	r5, #8
6030d2fc:	e3a08007 	mov	r8, #7
6030d300:	e1a09005 	mov	r9, r5
6030d304:	e3e0720e 	mvn	r7, #-536870912	; 0xe0000000
6030d308:	eaffffab 	b	6030d1bc <_strtoul+0x6c>

6030d30c <_2char2hex>:
6030d30c:	e2403030 	sub	r3, r0, #48	; 0x30
6030d310:	e6ef2073 	uxtb	r2, r3
6030d314:	e3520009 	cmp	r2, #9
6030d318:	97a30053 	sbfxls	r0, r3, #0, #4
6030d31c:	91a00200 	lslls	r0, r0, #4
6030d320:	9a000008 	bls	6030d348 <_2char2hex+0x3c>
6030d324:	e2403061 	sub	r3, r0, #97	; 0x61
6030d328:	e3530005 	cmp	r3, #5
6030d32c:	9a000013 	bls	6030d380 <_2char2hex+0x74>
6030d330:	e2403041 	sub	r3, r0, #65	; 0x41
6030d334:	e3530005 	cmp	r3, #5
6030d338:	92400037 	subls	r0, r0, #55	; 0x37
6030d33c:	83e0000f 	mvnhi	r0, #15
6030d340:	97a33050 	sbfxls	r3, r0, #0, #4
6030d344:	91a00203 	lslls	r0, r3, #4
6030d348:	e2413030 	sub	r3, r1, #48	; 0x30
6030d34c:	e6ef2073 	uxtb	r2, r3
6030d350:	e3520009 	cmp	r2, #9
6030d354:	9a000010 	bls	6030d39c <_2char2hex+0x90>
6030d358:	e2413061 	sub	r3, r1, #97	; 0x61
6030d35c:	e3530005 	cmp	r3, #5
6030d360:	9a000010 	bls	6030d3a8 <_2char2hex+0x9c>
6030d364:	e2413041 	sub	r3, r1, #65	; 0x41
6030d368:	e3530005 	cmp	r3, #5
6030d36c:	92411037 	subls	r1, r1, #55	; 0x37
6030d370:	91800001 	orrls	r0, r0, r1
6030d374:	96ef0070 	uxtbls	r0, r0
6030d378:	83a000ff 	movhi	r0, #255	; 0xff
6030d37c:	e12fff1e 	bx	lr
6030d380:	e2403057 	sub	r3, r0, #87	; 0x57
6030d384:	e7a33053 	sbfx	r3, r3, #0, #4
6030d388:	e1a00203 	lsl	r0, r3, #4
6030d38c:	e2413030 	sub	r3, r1, #48	; 0x30
6030d390:	e6ef2073 	uxtb	r2, r3
6030d394:	e3520009 	cmp	r2, #9
6030d398:	8affffee 	bhi	6030d358 <_2char2hex+0x4c>
6030d39c:	e1800003 	orr	r0, r0, r3
6030d3a0:	e6ef0070 	uxtb	r0, r0
6030d3a4:	e12fff1e 	bx	lr
6030d3a8:	e2411057 	sub	r1, r1, #87	; 0x57
6030d3ac:	e1800001 	orr	r0, r0, r1
6030d3b0:	e6ef0070 	uxtb	r0, r0
6030d3b4:	e12fff1e 	bx	lr

6030d3b8 <__wrap_memset>:
6030d3b8:	e30c3a88 	movw	r3, #51848	; 0xca88
6030d3bc:	e3463030 	movt	r3, #24624	; 0x6030
6030d3c0:	e12fff13 	bx	r3

6030d3c4 <__wrap_memcpy>:
6030d3c4:	e30c3bec 	movw	r3, #52204	; 0xcbec
6030d3c8:	e3463030 	movt	r3, #24624	; 0x6030
6030d3cc:	e12fff13 	bx	r3

6030d3d0 <__wrap_memchr>:
6030d3d0:	e30c3d10 	movw	r3, #52496	; 0xcd10
6030d3d4:	e3463030 	movt	r3, #24624	; 0x6030
6030d3d8:	e12fff13 	bx	r3

6030d3dc <__wrap_memmove>:
6030d3dc:	e30c3df0 	movw	r3, #52720	; 0xcdf0
6030d3e0:	e3463030 	movt	r3, #24624	; 0x6030
6030d3e4:	e12fff13 	bx	r3

6030d3e8 <__wrap_strlen>:
6030d3e8:	e30d3040 	movw	r3, #53312	; 0xd040
6030d3ec:	e3463030 	movt	r3, #24624	; 0x6030
6030d3f0:	e12fff13 	bx	r3

6030d3f4 <__wrap_strcmp>:
6030d3f4:	e30c3f4c 	movw	r3, #53068	; 0xcf4c
6030d3f8:	e3463030 	movt	r3, #24624	; 0x6030
6030d3fc:	e12fff13 	bx	r3

6030d400 <os_heap_init>:
6030d400:	e92d4800 	push	{fp, lr}
6030d404:	e28db004 	add	fp, sp, #4
6030d408:	e30f3000 	movw	r3, #61440	; 0xf000
6030d40c:	e340303c 	movt	r3, #60	; 0x3c
6030d410:	e1a01003 	mov	r1, r3
6030d414:	e3010000 	movw	r0, #4096	; 0x1000
6030d418:	e3460033 	movt	r0, #24627	; 0x6033
6030d41c:	eb000025 	bl	6030d4b8 <os_heap_add>
6030d420:	e3033b88 	movw	r3, #15240	; 0x3b88
6030d424:	e3463032 	movt	r3, #24626	; 0x6032
6030d428:	e5d33000 	ldrb	r3, [r3]
6030d42c:	e3530000 	cmp	r3, #0
6030d430:	0a000000 	beq	6030d438 <os_heap_init+0x38>
6030d434:	eb000004 	bl	6030d44c <os_heap_sort>
6030d438:	e3030b58 	movw	r0, #15192	; 0x3b58
6030d43c:	e3460032 	movt	r0, #24626	; 0x6032
6030d440:	eb0011b9 	bl	60311b2c <vPortDefineHeapRegions>
6030d444:	e320f000 	nop	{0}
6030d448:	e8bd8800 	pop	{fp, pc}

6030d44c <os_heap_sort>:
6030d44c:	e3033b88 	movw	r3, #15240	; 0x3b88
6030d450:	e3463032 	movt	r3, #24626	; 0x6032
6030d454:	e92d4070 	push	{r4, r5, r6, lr}
6030d458:	e5d35000 	ldrb	r5, [r3]
6030d45c:	e2455001 	sub	r5, r5, #1
6030d460:	e3550000 	cmp	r5, #0
6030d464:	d8bd8070 	pople	{r4, r5, r6, pc}
6030d468:	e3036b58 	movw	r6, #15192	; 0x3b58
6030d46c:	e3466032 	movt	r6, #24626	; 0x6032
6030d470:	e086e185 	add	lr, r6, r5, lsl #3
6030d474:	e1a03006 	mov	r3, r6
6030d478:	e5931008 	ldr	r1, [r3, #8]
6030d47c:	e593c000 	ldr	ip, [r3]
6030d480:	e2832008 	add	r2, r3, #8
6030d484:	e15c0001 	cmp	ip, r1
6030d488:	85934004 	ldrhi	r4, [r3, #4]
6030d48c:	81c200d0 	ldrdhi	r0, [r2]
6030d490:	81c300f0 	strdhi	r0, [r3]
6030d494:	8583c008 	strhi	ip, [r3, #8]
6030d498:	8583400c 	strhi	r4, [r3, #12]
6030d49c:	e1a03002 	mov	r3, r2
6030d4a0:	e152000e 	cmp	r2, lr
6030d4a4:	1afffff3 	bne	6030d478 <os_heap_sort+0x2c>
6030d4a8:	e24ee008 	sub	lr, lr, #8
6030d4ac:	e2555001 	subs	r5, r5, #1
6030d4b0:	1affffef 	bne	6030d474 <os_heap_sort+0x28>
6030d4b4:	e8bd8070 	pop	{r4, r5, r6, pc}

6030d4b8 <os_heap_add>:
6030d4b8:	e303cb88 	movw	ip, #15240	; 0x3b88
6030d4bc:	e346c032 	movt	ip, #24626	; 0x6032
6030d4c0:	e92d4010 	push	{r4, lr}
6030d4c4:	e5dc3000 	ldrb	r3, [ip]
6030d4c8:	e3530005 	cmp	r3, #5
6030d4cc:	8a00000f 	bhi	6030d510 <os_heap_add+0x58>
6030d4d0:	e3032b58 	movw	r2, #15192	; 0x3b58
6030d4d4:	e3462032 	movt	r2, #24626	; 0x6032
6030d4d8:	e3510000 	cmp	r1, #0
6030d4dc:	e082e183 	add	lr, r2, r3, lsl #3
6030d4e0:	e7820183 	str	r0, [r2, r3, lsl #3]
6030d4e4:	13032b8c 	movwne	r2, #15244	; 0x3b8c
6030d4e8:	13462032 	movtne	r2, #24626	; 0x6032
6030d4ec:	e58e1004 	str	r1, [lr, #4]
6030d4f0:	12833001 	addne	r3, r3, #1
6030d4f4:	1592e000 	ldrne	lr, [r2]
6030d4f8:	13a00001 	movne	r0, #1
6030d4fc:	108e1001 	addne	r1, lr, r1
6030d500:	15cc3000 	strbne	r3, [ip]
6030d504:	01a00001 	moveq	r0, r1
6030d508:	15821000 	strne	r1, [r2]
6030d50c:	e8bd8010 	pop	{r4, pc}
6030d510:	e3030dfc 	movw	r0, #15868	; 0x3dfc
6030d514:	e3460031 	movt	r0, #24625	; 0x6031
6030d518:	e3a01026 	mov	r1, #38	; 0x26
6030d51c:	eb001883 	bl	60313730 <io_assert_failed>

6030d520 <rtos_critical_is_in_interrupt>:
6030d520:	e10f3000 	mrs	r3, CPSR
6030d524:	e203301f 	and	r3, r3, #31
6030d528:	e3530010 	cmp	r3, #16
6030d52c:	0a000004 	beq	6030d544 <rtos_critical_is_in_interrupt+0x24>
6030d530:	e10f0000 	mrs	r0, CPSR
6030d534:	e200001f 	and	r0, r0, #31
6030d538:	e250001f 	subs	r0, r0, #31
6030d53c:	13a00001 	movne	r0, #1
6030d540:	e12fff1e 	bx	lr
6030d544:	e3a00000 	mov	r0, #0
6030d548:	e12fff1e 	bx	lr

6030d54c <GetComponentCriticalNesting>:
6030d54c:	e1a00080 	lsl	r0, r0, #1
6030d550:	e3033e68 	movw	r3, #15976	; 0x3e68
6030d554:	e3463032 	movt	r3, #24626	; 0x6032
6030d558:	e19300b0 	ldrh	r0, [r3, r0]
6030d55c:	e12fff1e 	bx	lr

6030d560 <rtos_critical_enter>:
6030d560:	e92d4030 	push	{r4, r5, lr}
6030d564:	e3500009 	cmp	r0, #9
6030d568:	e24dd00c 	sub	sp, sp, #12
6030d56c:	e1a04000 	mov	r4, r0
6030d570:	8a000025 	bhi	6030d60c <rtos_critical_enter+0xac>
6030d574:	eb00130a 	bl	603121a4 <ulPortInterruptLock>
6030d578:	eb001324 	bl	60312210 <ulPortGetCoreId>
6030d57c:	e3a0300a 	mov	r3, #10
6030d580:	e3035e40 	movw	r5, #15936	; 0x3e40
6030d584:	e3465032 	movt	r5, #24626	; 0x6032
6030d588:	e0204093 	mla	r0, r3, r0, r4
6030d58c:	e1a00080 	lsl	r0, r0, #1
6030d590:	e19530b0 	ldrh	r3, [r5, r0]
6030d594:	e3530000 	cmp	r3, #0
6030d598:	1a00000a 	bne	6030d5c8 <rtos_critical_enter+0x68>
6030d59c:	e3033bc0 	movw	r3, #15296	; 0x3bc0
6030d5a0:	e3463032 	movt	r3, #24626	; 0x6032
6030d5a4:	e0833304 	add	r3, r3, r4, lsl #6
6030d5a8:	e3a02001 	mov	r2, #1
6030d5ac:	e1931f9f 	ldrex	r1, [r3]
6030d5b0:	e3510000 	cmp	r1, #0
6030d5b4:	1320f002 	wfene
6030d5b8:	01831f92 	strexeq	r1, r2, [r3]
6030d5bc:	03510000 	cmpeq	r1, #0
6030d5c0:	1afffff9 	bne	6030d5ac <rtos_critical_enter+0x4c>
6030d5c4:	f57ff05f 	dmb	sy
6030d5c8:	eb001310 	bl	60312210 <ulPortGetCoreId>
6030d5cc:	e3a0300a 	mov	r3, #10
6030d5d0:	e0244093 	mla	r4, r3, r0, r4
6030d5d4:	e1a04084 	lsl	r4, r4, #1
6030d5d8:	e19530b4 	ldrh	r3, [r5, r4]
6030d5dc:	e2833001 	add	r3, r3, #1
6030d5e0:	e6ff3073 	uxth	r3, r3
6030d5e4:	e18530b4 	strh	r3, [r5, r4]
6030d5e8:	eb001308 	bl	60312210 <ulPortGetCoreId>
6030d5ec:	e3033e68 	movw	r3, #15976	; 0x3e68
6030d5f0:	e3463032 	movt	r3, #24626	; 0x6032
6030d5f4:	e1a00080 	lsl	r0, r0, #1
6030d5f8:	e19320b0 	ldrh	r2, [r3, r0]
6030d5fc:	e2822001 	add	r2, r2, #1
6030d600:	e18320b0 	strh	r2, [r3, r0]
6030d604:	e28dd00c 	add	sp, sp, #12
6030d608:	e8bd8030 	pop	{r4, r5, pc}
6030d60c:	e3a02045 	mov	r2, #69	; 0x45
6030d610:	e3050320 	movw	r0, #21280	; 0x5320
6030d614:	e3460031 	movt	r0, #24625	; 0x6031
6030d618:	e30532f0 	movw	r3, #21232	; 0x52f0
6030d61c:	e3463031 	movt	r3, #24625	; 0x6031
6030d620:	e58d0000 	str	r0, [sp]
6030d624:	e304113c 	movw	r1, #16700	; 0x413c
6030d628:	e3461031 	movt	r1, #24625	; 0x6031
6030d62c:	e3a00002 	mov	r0, #2
6030d630:	ebfff20a 	bl	60309e60 <rtk_log_write_nano>
6030d634:	eaffffce 	b	6030d574 <rtos_critical_enter+0x14>

6030d638 <rtos_critical_exit>:
6030d638:	e92d40f0 	push	{r4, r5, r6, r7, lr}
6030d63c:	e3500009 	cmp	r0, #9
6030d640:	e24dd00c 	sub	sp, sp, #12
6030d644:	e1a04000 	mov	r4, r0
6030d648:	8a000025 	bhi	6030d6e4 <rtos_critical_exit+0xac>
6030d64c:	eb0012ef 	bl	60312210 <ulPortGetCoreId>
6030d650:	e3035e68 	movw	r5, #15976	; 0x3e68
6030d654:	e3465032 	movt	r5, #24626	; 0x6032
6030d658:	e1a00080 	lsl	r0, r0, #1
6030d65c:	e3a0700a 	mov	r7, #10
6030d660:	e3036e40 	movw	r6, #15936	; 0x3e40
6030d664:	e3466032 	movt	r6, #24626	; 0x6032
6030d668:	e19530b0 	ldrh	r3, [r5, r0]
6030d66c:	e2433001 	sub	r3, r3, #1
6030d670:	e18530b0 	strh	r3, [r5, r0]
6030d674:	eb0012e5 	bl	60312210 <ulPortGetCoreId>
6030d678:	e0234097 	mla	r3, r7, r0, r4
6030d67c:	e1a03083 	lsl	r3, r3, #1
6030d680:	e19620b3 	ldrh	r2, [r6, r3]
6030d684:	e2422001 	sub	r2, r2, #1
6030d688:	e6ff2072 	uxth	r2, r2
6030d68c:	e18620b3 	strh	r2, [r6, r3]
6030d690:	eb0012de 	bl	60312210 <ulPortGetCoreId>
6030d694:	e0204097 	mla	r0, r7, r0, r4
6030d698:	e1a00080 	lsl	r0, r0, #1
6030d69c:	e19630b0 	ldrh	r3, [r6, r0]
6030d6a0:	e6ff3073 	uxth	r3, r3
6030d6a4:	e3530000 	cmp	r3, #0
6030d6a8:	1a000006 	bne	6030d6c8 <rtos_critical_exit+0x90>
6030d6ac:	e3030bc0 	movw	r0, #15296	; 0x3bc0
6030d6b0:	e3460032 	movt	r0, #24626	; 0x6032
6030d6b4:	e0800304 	add	r0, r0, r4, lsl #6
6030d6b8:	f57ff05f 	dmb	sy
6030d6bc:	e5803000 	str	r3, [r0]
6030d6c0:	f57ff04f 	dsb	sy
6030d6c4:	e320f004 	sev
6030d6c8:	eb0012d0 	bl	60312210 <ulPortGetCoreId>
6030d6cc:	e1a00080 	lsl	r0, r0, #1
6030d6d0:	e19530b0 	ldrh	r3, [r5, r0]
6030d6d4:	e3530000 	cmp	r3, #0
6030d6d8:	0a00000c 	beq	6030d710 <rtos_critical_exit+0xd8>
6030d6dc:	e28dd00c 	add	sp, sp, #12
6030d6e0:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
6030d6e4:	e3a02045 	mov	r2, #69	; 0x45
6030d6e8:	e305030c 	movw	r0, #21260	; 0x530c
6030d6ec:	e3460031 	movt	r0, #24625	; 0x6031
6030d6f0:	e30532f0 	movw	r3, #21232	; 0x52f0
6030d6f4:	e3463031 	movt	r3, #24625	; 0x6031
6030d6f8:	e58d0000 	str	r0, [sp]
6030d6fc:	e304113c 	movw	r1, #16700	; 0x413c
6030d700:	e3461031 	movt	r1, #24625	; 0x6031
6030d704:	e3a00002 	mov	r0, #2
6030d708:	ebfff1d4 	bl	60309e60 <rtk_log_write_nano>
6030d70c:	eaffffce 	b	6030d64c <rtos_critical_exit+0x14>
6030d710:	eb0000a5 	bl	6030d9ac <rtos_sched_get_state>
6030d714:	e3500001 	cmp	r0, #1
6030d718:	1a000004 	bne	6030d730 <rtos_critical_exit+0xf8>
6030d71c:	f1080080 	cpsie	i
6030d720:	f57ff04f 	dsb	sy
6030d724:	f57ff06f 	isb	sy
6030d728:	e28dd00c 	add	sp, sp, #12
6030d72c:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
6030d730:	eb0012b6 	bl	60312210 <ulPortGetCoreId>
6030d734:	eb0004f5 	bl	6030eb10 <GetOSCriticalNesting>
6030d738:	e3500000 	cmp	r0, #0
6030d73c:	1affffe6 	bne	6030d6dc <rtos_critical_exit+0xa4>
6030d740:	eafffff5 	b	6030d71c <rtos_critical_exit+0xe4>

6030d744 <__rtos_critical_enter_os>:
6030d744:	e10f3000 	mrs	r3, CPSR
6030d748:	e203301f 	and	r3, r3, #31
6030d74c:	e3530010 	cmp	r3, #16
6030d750:	0a000011 	beq	6030d79c <__rtos_critical_enter_os+0x58>
6030d754:	e10f3000 	mrs	r3, CPSR
6030d758:	e203301f 	and	r3, r3, #31
6030d75c:	e353001f 	cmp	r3, #31
6030d760:	0a00000d 	beq	6030d79c <__rtos_critical_enter_os+0x58>
6030d764:	e92d4070 	push	{r4, r5, r6, lr}
6030d768:	eb0012a8 	bl	60312210 <ulPortGetCoreId>
6030d76c:	e3034e68 	movw	r4, #15976	; 0x3e68
6030d770:	e3464032 	movt	r4, #24626	; 0x6032
6030d774:	e1a00080 	lsl	r0, r0, #1
6030d778:	e19430b0 	ldrh	r3, [r4, r0]
6030d77c:	e3530000 	cmp	r3, #0
6030d780:	0a000006 	beq	6030d7a0 <__rtos_critical_enter_os+0x5c>
6030d784:	eb0012a1 	bl	60312210 <ulPortGetCoreId>
6030d788:	e1a00080 	lsl	r0, r0, #1
6030d78c:	e19430b0 	ldrh	r3, [r4, r0]
6030d790:	e2833001 	add	r3, r3, #1
6030d794:	e18430b0 	strh	r3, [r4, r0]
6030d798:	e8bd8070 	pop	{r4, r5, r6, pc}
6030d79c:	ea0004c5 	b	6030eab8 <vTaskEnterCritical>
6030d7a0:	eb00129a 	bl	60312210 <ulPortGetCoreId>
6030d7a4:	e1a05000 	mov	r5, r0
6030d7a8:	eb00127d 	bl	603121a4 <ulPortInterruptLock>
6030d7ac:	e3033e6c 	movw	r3, #15980	; 0x3e6c
6030d7b0:	e3463032 	movt	r3, #24626	; 0x6032
6030d7b4:	e7830105 	str	r0, [r3, r5, lsl #2]
6030d7b8:	eb001253 	bl	6031210c <xPortSpinLockTask>
6030d7bc:	eafffff0 	b	6030d784 <__rtos_critical_enter_os+0x40>

6030d7c0 <rtos_mem_init>:
6030d7c0:	eaffff0e 	b	6030d400 <os_heap_init>

6030d7c4 <rtos_mem_malloc>:
6030d7c4:	ea00115e 	b	60311d44 <pvPortMalloc>

6030d7c8 <rtos_mem_zmalloc>:
6030d7c8:	e92d4070 	push	{r4, r5, r6, lr}
6030d7cc:	e1a05000 	mov	r5, r0
6030d7d0:	eb00115b 	bl	60311d44 <pvPortMalloc>
6030d7d4:	e2504000 	subs	r4, r0, #0
6030d7d8:	0a000002 	beq	6030d7e8 <rtos_mem_zmalloc+0x20>
6030d7dc:	e1a02005 	mov	r2, r5
6030d7e0:	e3a01000 	mov	r1, #0
6030d7e4:	ebfffef3 	bl	6030d3b8 <__wrap_memset>
6030d7e8:	e1a00004 	mov	r0, r4
6030d7ec:	e8bd8070 	pop	{r4, r5, r6, pc}

6030d7f0 <rtos_mem_calloc>:
6030d7f0:	e92d4070 	push	{r4, r5, r6, lr}
6030d7f4:	e0050091 	mul	r5, r1, r0
6030d7f8:	e1a00005 	mov	r0, r5
6030d7fc:	eb001150 	bl	60311d44 <pvPortMalloc>
6030d800:	e2504000 	subs	r4, r0, #0
6030d804:	0a000002 	beq	6030d814 <rtos_mem_calloc+0x24>
6030d808:	e1a02005 	mov	r2, r5
6030d80c:	e3a01000 	mov	r1, #0
6030d810:	ebfffee8 	bl	6030d3b8 <__wrap_memset>
6030d814:	e1a00004 	mov	r0, r4
6030d818:	e8bd8070 	pop	{r4, r5, r6, pc}

6030d81c <rtos_mem_realloc>:
6030d81c:	ea0011bb 	b	60311f10 <pvPortReAlloc>

6030d820 <rtos_mem_free>:
6030d820:	e3500000 	cmp	r0, #0
6030d824:	012fff1e 	bxeq	lr
6030d828:	ea00108a 	b	60311a58 <vPortFree>

6030d82c <rtos_sema_create_binary>:
6030d82c:	e92d4010 	push	{r4, lr}
6030d830:	e2504000 	subs	r4, r0, #0
6030d834:	0a000008 	beq	6030d85c <rtos_sema_create_binary+0x30>
6030d838:	e3a02003 	mov	r2, #3
6030d83c:	e3a01000 	mov	r1, #0
6030d840:	e3a00001 	mov	r0, #1
6030d844:	eb000bf5 	bl	60310820 <xQueueGenericCreate>
6030d848:	e16f3f10 	clz	r3, r0
6030d84c:	e5840000 	str	r0, [r4]
6030d850:	e1a032a3 	lsr	r3, r3, #5
6030d854:	e2630000 	rsb	r0, r3, #0
6030d858:	e8bd8010 	pop	{r4, pc}
6030d85c:	e3e00000 	mvn	r0, #0
6030d860:	e8bd8010 	pop	{r4, pc}

6030d864 <rtos_sema_take>:
6030d864:	e92d4070 	push	{r4, r5, r6, lr}
6030d868:	e3a06000 	mov	r6, #0
6030d86c:	e24dd008 	sub	sp, sp, #8
6030d870:	e1a04000 	mov	r4, r0
6030d874:	e1a05001 	mov	r5, r1
6030d878:	e58d6004 	str	r6, [sp, #4]
6030d87c:	ebffff27 	bl	6030d520 <rtos_critical_is_in_interrupt>
6030d880:	e1500006 	cmp	r0, r6
6030d884:	0a00000b 	beq	6030d8b8 <rtos_sema_take+0x54>
6030d888:	e1a00004 	mov	r0, r4
6030d88c:	e28d2004 	add	r2, sp, #4
6030d890:	e1a01006 	mov	r1, r6
6030d894:	eb000e4d 	bl	603111d0 <xQueueReceiveFromISR>
6030d898:	e1a04000 	mov	r4, r0
6030d89c:	e3500001 	cmp	r0, #1
6030d8a0:	1a000016 	bne	6030d900 <rtos_sema_take+0x9c>
6030d8a4:	e59d0004 	ldr	r0, [sp, #4]
6030d8a8:	e1500006 	cmp	r0, r6
6030d8ac:	1a00000b 	bne	6030d8e0 <rtos_sema_take+0x7c>
6030d8b0:	e28dd008 	add	sp, sp, #8
6030d8b4:	e8bd8070 	pop	{r4, r5, r6, pc}
6030d8b8:	ebfff68e 	bl	6030b2f8 <pmu_yield_os_check>
6030d8bc:	e3500000 	cmp	r0, #0
6030d8c0:	11a01005 	movne	r1, r5
6030d8c4:	03a01000 	moveq	r1, #0
6030d8c8:	e1a00004 	mov	r0, r4
6030d8cc:	eb000da4 	bl	60310f64 <xQueueSemaphoreTake>
6030d8d0:	e2500001 	subs	r0, r0, #1
6030d8d4:	13e00000 	mvnne	r0, #0
6030d8d8:	e28dd008 	add	sp, sp, #8
6030d8dc:	e8bd8070 	pop	{r4, r5, r6, pc}
6030d8e0:	eb00124a 	bl	60312210 <ulPortGetCoreId>
6030d8e4:	e30432d0 	movw	r3, #17104	; 0x42d0
6030d8e8:	e3463032 	movt	r3, #24626	; 0x6032
6030d8ec:	e1a02000 	mov	r2, r0
6030d8f0:	e1a00006 	mov	r0, r6
6030d8f4:	e7834102 	str	r4, [r3, r2, lsl #2]
6030d8f8:	e28dd008 	add	sp, sp, #8
6030d8fc:	e8bd8070 	pop	{r4, r5, r6, pc}
6030d900:	e3e00000 	mvn	r0, #0
6030d904:	eaffffe9 	b	6030d8b0 <rtos_sema_take+0x4c>

6030d908 <rtos_sema_give>:
6030d908:	e92d4010 	push	{r4, lr}
6030d90c:	e3a03000 	mov	r3, #0
6030d910:	e24dd008 	sub	sp, sp, #8
6030d914:	e1a04000 	mov	r4, r0
6030d918:	e58d3004 	str	r3, [sp, #4]
6030d91c:	ebfffeff 	bl	6030d520 <rtos_critical_is_in_interrupt>
6030d920:	e2503000 	subs	r3, r0, #0
6030d924:	0a00000a 	beq	6030d954 <rtos_sema_give+0x4c>
6030d928:	e1a00004 	mov	r0, r4
6030d92c:	e28d1004 	add	r1, sp, #4
6030d930:	eb000cc4 	bl	60310c48 <xQueueGiveFromISR>
6030d934:	e59d3004 	ldr	r3, [sp, #4]
6030d938:	e1a04000 	mov	r4, r0
6030d93c:	e3530000 	cmp	r3, #0
6030d940:	1a00000c 	bne	6030d978 <rtos_sema_give+0x70>
6030d944:	e2540001 	subs	r0, r4, #1
6030d948:	13e00000 	mvnne	r0, #0
6030d94c:	e28dd008 	add	sp, sp, #8
6030d950:	e8bd8010 	pop	{r4, pc}
6030d954:	e1a02003 	mov	r2, r3
6030d958:	e1a01003 	mov	r1, r3
6030d95c:	e1a00004 	mov	r0, r4
6030d960:	eb000bd6 	bl	603108c0 <xQueueGenericSend>
6030d964:	e1a04000 	mov	r4, r0
6030d968:	e2540001 	subs	r0, r4, #1
6030d96c:	13e00000 	mvnne	r0, #0
6030d970:	e28dd008 	add	sp, sp, #8
6030d974:	e8bd8010 	pop	{r4, pc}
6030d978:	eb001224 	bl	60312210 <ulPortGetCoreId>
6030d97c:	e30432d0 	movw	r3, #17104	; 0x42d0
6030d980:	e3463032 	movt	r3, #24626	; 0x6032
6030d984:	e3a02001 	mov	r2, #1
6030d988:	e7832100 	str	r2, [r3, r0, lsl #2]
6030d98c:	e2540001 	subs	r0, r4, #1
6030d990:	13e00000 	mvnne	r0, #0
6030d994:	e28dd008 	add	sp, sp, #8
6030d998:	e8bd8010 	pop	{r4, pc}

6030d99c <rtos_sched_start>:
6030d99c:	e92d4010 	push	{r4, lr}
6030d9a0:	eb000560 	bl	6030ef28 <vTaskStartScheduler>
6030d9a4:	e3a00000 	mov	r0, #0
6030d9a8:	e8bd8010 	pop	{r4, pc}

6030d9ac <rtos_sched_get_state>:
6030d9ac:	e92d4010 	push	{r4, lr}
6030d9b0:	eb000414 	bl	6030ea08 <xTaskGetSchedulerState>
6030d9b4:	e3500001 	cmp	r0, #1
6030d9b8:	08bd8010 	popeq	{r4, pc}
6030d9bc:	eb000411 	bl	6030ea08 <xTaskGetSchedulerState>
6030d9c0:	e3500000 	cmp	r0, #0
6030d9c4:	08bd8010 	popeq	{r4, pc}
6030d9c8:	eb00040e 	bl	6030ea08 <xTaskGetSchedulerState>
6030d9cc:	e3500002 	cmp	r0, #2
6030d9d0:	13e00000 	mvnne	r0, #0
6030d9d4:	e8bd8010 	pop	{r4, pc}

6030d9d8 <rtos_task_create>:
6030d9d8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
6030d9dc:	e1a0c002 	mov	ip, r2
6030d9e0:	e24dd00c 	sub	sp, sp, #12
6030d9e4:	e59de010 	ldr	lr, [sp, #16]
6030d9e8:	e58d0004 	str	r0, [sp, #4]
6030d9ec:	e1a0000c 	mov	r0, ip
6030d9f0:	e1ddc1b4 	ldrh	ip, [sp, #20]
6030d9f4:	e7ef215e 	ubfx	r2, lr, #2, #16
6030d9f8:	e58dc000 	str	ip, [sp]
6030d9fc:	eb0005a9 	bl	6030f0a8 <xTaskCreate>
6030da00:	e2500001 	subs	r0, r0, #1
6030da04:	13e00000 	mvnne	r0, #0
6030da08:	e28dd00c 	add	sp, sp, #12
6030da0c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

6030da10 <rtos_create_secure_context>:
6030da10:	e12fff1e 	bx	lr

6030da14 <rtos_time_delay_ms>:
6030da14:	e92d4010 	push	{r4, lr}
6030da18:	e1a04000 	mov	r4, r0
6030da1c:	ebfff635 	bl	6030b2f8 <pmu_yield_os_check>
6030da20:	e3500000 	cmp	r0, #0
6030da24:	0a000002 	beq	6030da34 <rtos_time_delay_ms+0x20>
6030da28:	eb0003f6 	bl	6030ea08 <xTaskGetSchedulerState>
6030da2c:	e3500002 	cmp	r0, #2
6030da30:	0a000004 	beq	6030da48 <rtos_time_delay_ms+0x34>
6030da34:	e1a00004 	mov	r0, r4
6030da38:	e30b3084 	movw	r3, #45188	; 0xb084
6030da3c:	e3463030 	movt	r3, #24624	; 0x6030
6030da40:	e8bd4010 	pop	{r4, lr}
6030da44:	e12fff13 	bx	r3
6030da48:	ebfffeb4 	bl	6030d520 <rtos_critical_is_in_interrupt>
6030da4c:	e3500000 	cmp	r0, #0
6030da50:	1afffff7 	bne	6030da34 <rtos_time_delay_ms+0x20>
6030da54:	e1a00004 	mov	r0, r4
6030da58:	e8bd4010 	pop	{r4, lr}
6030da5c:	ea0009c1 	b	60310168 <vTaskDelay>

6030da60 <rtos_time_get_current_system_time_ms>:
6030da60:	e92d4010 	push	{r4, lr}
6030da64:	ebfffead 	bl	6030d520 <rtos_critical_is_in_interrupt>
6030da68:	e3500000 	cmp	r0, #0
6030da6c:	0a000001 	beq	6030da78 <rtos_time_get_current_system_time_ms+0x18>
6030da70:	e8bd4010 	pop	{r4, lr}
6030da74:	ea0001a0 	b	6030e0fc <xTaskGetTickCountFromISR>
6030da78:	e8bd4010 	pop	{r4, lr}
6030da7c:	ea000196 	b	6030e0dc <xTaskGetTickCount>

6030da80 <rtos_time_get_current_pended_time_ms>:
6030da80:	e92d4010 	push	{r4, lr}
6030da84:	ebfffea5 	bl	6030d520 <rtos_critical_is_in_interrupt>
6030da88:	e3500000 	cmp	r0, #0
6030da8c:	0a000001 	beq	6030da98 <rtos_time_get_current_pended_time_ms+0x18>
6030da90:	e8bd4010 	pop	{r4, lr}
6030da94:	ea00019c 	b	6030e10c <xTaskGetPendedTicksFromISR>
6030da98:	e8bd4010 	pop	{r4, lr}
6030da9c:	ea000192 	b	6030e0ec <xTaskGetPendedTicks>

6030daa0 <__wrap_malloc>:
6030daa0:	eaffff47 	b	6030d7c4 <rtos_mem_malloc>

6030daa4 <__wrap__malloc_r>:
6030daa4:	e1a00001 	mov	r0, r1
6030daa8:	eaffff45 	b	6030d7c4 <rtos_mem_malloc>

6030daac <__wrap__realloc_r>:
6030daac:	e1a00001 	mov	r0, r1
6030dab0:	e1a01002 	mov	r1, r2
6030dab4:	eaffff58 	b	6030d81c <rtos_mem_realloc>

6030dab8 <__wrap__free_r>:
6030dab8:	e1a00001 	mov	r0, r1
6030dabc:	eaffff57 	b	6030d820 <rtos_mem_free>

6030dac0 <__wrap__calloc_r>:
6030dac0:	e1a00001 	mov	r0, r1
6030dac4:	e1a01002 	mov	r1, r2
6030dac8:	eaffff48 	b	6030d7f0 <rtos_mem_calloc>

6030dacc <__wrap_printf>:
6030dacc:	e92d000f 	push	{r0, r1, r2, r3}
6030dad0:	e92d4070 	push	{r4, r5, r6, lr}
6030dad4:	e24dd008 	sub	sp, sp, #8
6030dad8:	e10f6000 	mrs	r6, CPSR
6030dadc:	f10c0080 	cpsid	i
6030dae0:	f57ff04f 	dsb	sy
6030dae4:	f57ff06f 	isb	sy
6030dae8:	e3a03001 	mov	r3, #1
6030daec:	e3034e80 	movw	r4, #16000	; 0x3e80
6030daf0:	e3464032 	movt	r4, #24626	; 0x6032
6030daf4:	e1942f9f 	ldrex	r2, [r4]
6030daf8:	e3520000 	cmp	r2, #0
6030dafc:	1320f002 	wfene
6030db00:	01842f93 	strexeq	r2, r3, [r4]
6030db04:	03520000 	cmpeq	r2, #0
6030db08:	1afffff9 	bne	6030daf4 <__wrap_printf+0x28>
6030db0c:	f57ff05f 	dmb	sy
6030db10:	e28d301c 	add	r3, sp, #28
6030db14:	e58d3004 	str	r3, [sp, #4]
6030db18:	ebfff592 	bl	6030b168 <CPU_InInterrupt>
6030db1c:	e59d1004 	ldr	r1, [sp, #4]
6030db20:	e3500000 	cmp	r0, #0
6030db24:	e59d0018 	ldr	r0, [sp, #24]
6030db28:	0a00000c 	beq	6030db60 <__wrap_printf+0x94>
6030db2c:	eb001321 	bl	603127b8 <DiagVprintf>
6030db30:	e1a05000 	mov	r5, r0
6030db34:	e3a03000 	mov	r3, #0
6030db38:	f57ff05f 	dmb	sy
6030db3c:	e5843000 	str	r3, [r4]
6030db40:	f57ff04f 	dsb	sy
6030db44:	e320f004 	sev
6030db48:	e121f006 	msr	CPSR_c, r6
6030db4c:	e1a00005 	mov	r0, r5
6030db50:	e28dd008 	add	sp, sp, #8
6030db54:	e8bd4070 	pop	{r4, r5, r6, lr}
6030db58:	e28dd010 	add	sp, sp, #16
6030db5c:	e12fff1e 	bx	lr
6030db60:	ebffce79 	bl	6030154c <vprintf>
6030db64:	e3063000 	movw	r3, #24576	; 0x6000
6030db68:	e3463031 	movt	r3, #24625	; 0x6031
6030db6c:	e1a05000 	mov	r5, r0
6030db70:	e5933000 	ldr	r3, [r3]
6030db74:	e5930008 	ldr	r0, [r3, #8]
6030db78:	ebffcc56 	bl	60300cd8 <fflush>
6030db7c:	eaffffec 	b	6030db34 <__wrap_printf+0x68>

6030db80 <app_pre_example>:
6030db80:	e12fff1e 	bx	lr

6030db84 <app_example>:
6030db84:	e12fff1e 	bx	lr

6030db88 <app_pmu_init>:
6030db88:	e92d4010 	push	{r4, lr}
6030db8c:	e3a00000 	mov	r0, #0
6030db90:	ebfff651 	bl	6030b4dc <pmu_set_sleep_type>
6030db94:	e8bd4010 	pop	{r4, lr}
6030db98:	e3a00000 	mov	r0, #0
6030db9c:	eafff658 	b	6030b504 <pmu_acquire_deepwakelock>

6030dba0 <main>:
6030dba0:	e92d4010 	push	{r4, lr}
6030dba4:	e3a02057 	mov	r2, #87	; 0x57
6030dba8:	e3a00003 	mov	r0, #3
6030dbac:	e3053334 	movw	r3, #21300	; 0x5334
6030dbb0:	e3463031 	movt	r3, #24625	; 0x6031
6030dbb4:	e3051370 	movw	r1, #21360	; 0x5370
6030dbb8:	e3461031 	movt	r1, #24625	; 0x6031
6030dbbc:	ebfff073 	bl	60309d90 <rtk_log_write>
6030dbc0:	e3a02045 	mov	r2, #69	; 0x45
6030dbc4:	e3a00002 	mov	r0, #2
6030dbc8:	e3053378 	movw	r3, #21368	; 0x5378
6030dbcc:	e3463031 	movt	r3, #24625	; 0x6031
6030dbd0:	e3051370 	movw	r1, #21360	; 0x5370
6030dbd4:	e3461031 	movt	r1, #24625	; 0x6031
6030dbd8:	ebfff06c 	bl	60309d90 <rtk_log_write>
6030dbdc:	e3a02045 	mov	r2, #69	; 0x45
6030dbe0:	e3a00002 	mov	r0, #2
6030dbe4:	e30533d0 	movw	r3, #21456	; 0x53d0
6030dbe8:	e3463031 	movt	r3, #24625	; 0x6031
6030dbec:	e3051370 	movw	r1, #21360	; 0x5370
6030dbf0:	e3461031 	movt	r1, #24625	; 0x6031
6030dbf4:	ebfff065 	bl	60309d90 <rtk_log_write>
6030dbf8:	e3a02045 	mov	r2, #69	; 0x45
6030dbfc:	e3a00002 	mov	r0, #2
6030dc00:	e3053410 	movw	r3, #21520	; 0x5410
6030dc04:	e3463031 	movt	r3, #24625	; 0x6031
6030dc08:	e3051370 	movw	r1, #21360	; 0x5370
6030dc0c:	e3461031 	movt	r1, #24625	; 0x6031
6030dc10:	ebfff05e 	bl	60309d90 <rtk_log_write>
6030dc14:	e3a02045 	mov	r2, #69	; 0x45
6030dc18:	e3a00002 	mov	r0, #2
6030dc1c:	e305346c 	movw	r3, #21612	; 0x546c
6030dc20:	e3463031 	movt	r3, #24625	; 0x6031
6030dc24:	e3051370 	movw	r1, #21360	; 0x5370
6030dc28:	e3461031 	movt	r1, #24625	; 0x6031
6030dc2c:	ebfff057 	bl	60309d90 <rtk_log_write>
6030dc30:	e3a02045 	mov	r2, #69	; 0x45
6030dc34:	e3a00002 	mov	r0, #2
6030dc38:	e30534dc 	movw	r3, #21724	; 0x54dc
6030dc3c:	e3463031 	movt	r3, #24625	; 0x6031
6030dc40:	e3051370 	movw	r1, #21360	; 0x5370
6030dc44:	e3461031 	movt	r1, #24625	; 0x6031
6030dc48:	ebfff050 	bl	60309d90 <rtk_log_write>
6030dc4c:	e3a02045 	mov	r2, #69	; 0x45
6030dc50:	e3a00002 	mov	r0, #2
6030dc54:	e3053548 	movw	r3, #21832	; 0x5548
6030dc58:	e3463031 	movt	r3, #24625	; 0x6031
6030dc5c:	e3051370 	movw	r1, #21360	; 0x5370
6030dc60:	e3461031 	movt	r1, #24625	; 0x6031
6030dc64:	ebfff049 	bl	60309d90 <rtk_log_write>
6030dc68:	e3a02057 	mov	r2, #87	; 0x57
6030dc6c:	e3a00003 	mov	r0, #3
6030dc70:	e30535a0 	movw	r3, #21920	; 0x55a0
6030dc74:	e3463031 	movt	r3, #24625	; 0x6031
6030dc78:	e3051370 	movw	r1, #21360	; 0x5370
6030dc7c:	e3461031 	movt	r1, #24625	; 0x6031
6030dc80:	ebfff042 	bl	60309d90 <rtk_log_write>
6030dc84:	e30a47fc 	movw	r4, #43004	; 0xa7fc
6030dc88:	e3464030 	movt	r4, #24624	; 0x6030
6030dc8c:	e3a01018 	mov	r1, #24
6030dc90:	e3a030a0 	mov	r3, #160	; 0xa0
6030dc94:	e3a02d16 	mov	r2, #1408	; 0x580
6030dc98:	e3442100 	movt	r2, #16640	; 0x4100
6030dc9c:	e3080f40 	movw	r0, #36672	; 0x8f40
6030dca0:	e3460030 	movt	r0, #24624	; 0x6030
6030dca4:	e12fff34 	blx	r4
6030dca8:	e3a00018 	mov	r0, #24
6030dcac:	e30a37f4 	movw	r3, #42996	; 0xa7f4
6030dcb0:	e3463030 	movt	r3, #24624	; 0x6030
6030dcb4:	e12fff33 	blx	r3
6030dcb8:	e3a00d16 	mov	r0, #1408	; 0x580
6030dcbc:	e3440100 	movt	r0, #16640	; 0x4100
6030dcc0:	ebffeb14 	bl	60308918 <ipc_table_init>
6030dcc4:	ebffffaf 	bl	6030db88 <app_pmu_init>
6030dcc8:	ebffffac 	bl	6030db80 <app_pre_example>
6030dccc:	e3a01000 	mov	r1, #0
6030dcd0:	e1a00001 	mov	r0, r1
6030dcd4:	e3083850 	movw	r3, #34896	; 0x8850
6030dcd8:	e3463030 	movt	r3, #24624	; 0x6030
6030dcdc:	e12fff33 	blx	r3
6030dce0:	ebffea68 	bl	60308688 <shell_init_ram>
6030dce4:	ebffffa6 	bl	6030db84 <app_example>
6030dce8:	e30d1638 	movw	r1, #54840	; 0xd638
6030dcec:	e3461030 	movt	r1, #24624	; 0x6030
6030dcf0:	e30d0560 	movw	r0, #54624	; 0xd560
6030dcf4:	e3460030 	movt	r0, #24624	; 0x6030
6030dcf8:	ebffec0e 	bl	60308d38 <IPC_patch_function>
6030dcfc:	e30d0a14 	movw	r0, #55828	; 0xda14
6030dd00:	e3460030 	movt	r0, #24624	; 0x6030
6030dd04:	ebffec7f 	bl	60308f08 <IPC_SEMDelayStub>
6030dd08:	e3a02049 	mov	r2, #73	; 0x49
6030dd0c:	e3a00004 	mov	r0, #4
6030dd10:	e30535dc 	movw	r3, #21980	; 0x55dc
6030dd14:	e3463031 	movt	r3, #24625	; 0x6031
6030dd18:	e3051370 	movw	r1, #21360	; 0x5370
6030dd1c:	e3461031 	movt	r1, #24625	; 0x6031
6030dd20:	ebfff01a 	bl	60309d90 <rtk_log_write>
6030dd24:	ebffff1c 	bl	6030d99c <rtos_sched_start>
6030dd28:	eafffffe 	b	6030dd28 <main+0x188>

6030dd2c <prvDeleteTCB>:
6030dd2c:	e92d4010 	push	{r4, lr}
6030dd30:	e1a04000 	mov	r4, r0
6030dd34:	eb001225 	bl	603125d0 <vPortCleanUpTCB>
6030dd38:	e284007c 	add	r0, r4, #124	; 0x7c
6030dd3c:	ebffcd47 	bl	60301260 <_reclaim_reent>
6030dd40:	e5d43171 	ldrb	r3, [r4, #369]	; 0x171
6030dd44:	e3530000 	cmp	r3, #0
6030dd48:	0a000008 	beq	6030dd70 <prvDeleteTCB+0x44>
6030dd4c:	e3530001 	cmp	r3, #1
6030dd50:	0a00000b 	beq	6030dd84 <prvDeleteTCB+0x58>
6030dd54:	e3530002 	cmp	r3, #2
6030dd58:	08bd8010 	popeq	{r4, pc}
6030dd5c:	e30505f8 	movw	r0, #22008	; 0x55f8
6030dd60:	e3460031 	movt	r0, #24625	; 0x6031
6030dd64:	e8bd4010 	pop	{r4, lr}
6030dd68:	e30110f7 	movw	r1, #4343	; 0x10f7
6030dd6c:	eafff0d5 	b	6030a0c8 <vAssertCalled>
6030dd70:	e5940030 	ldr	r0, [r4, #48]	; 0x30
6030dd74:	eb000f37 	bl	60311a58 <vPortFree>
6030dd78:	e1a00004 	mov	r0, r4
6030dd7c:	e8bd4010 	pop	{r4, lr}
6030dd80:	ea000f34 	b	60311a58 <vPortFree>
6030dd84:	e1a00004 	mov	r0, r4
6030dd88:	e8bd4010 	pop	{r4, lr}
6030dd8c:	ea000f31 	b	60311a58 <vPortFree>

6030dd90 <prvYieldCore>:
6030dd90:	e92d4010 	push	{r4, lr}
6030dd94:	e1a04000 	mov	r4, r0
6030dd98:	eb00111c 	bl	60312210 <ulPortGetCoreId>
6030dd9c:	e1500004 	cmp	r0, r4
6030dda0:	1a00000a 	bne	6030ddd0 <prvYieldCore+0x40>
6030dda4:	e3033ec0 	movw	r3, #16064	; 0x3ec0
6030dda8:	e3463032 	movt	r3, #24626	; 0x6032
6030ddac:	e7933100 	ldr	r3, [r3, r0, lsl #2]
6030ddb0:	e5933058 	ldr	r3, [r3, #88]	; 0x58
6030ddb4:	e3530000 	cmp	r3, #0
6030ddb8:	0a000007 	beq	6030dddc <prvYieldCore+0x4c>
6030ddbc:	e3043068 	movw	r3, #16488	; 0x4068
6030ddc0:	e3463032 	movt	r3, #24626	; 0x6032
6030ddc4:	e3a02001 	mov	r2, #1
6030ddc8:	e7832104 	str	r2, [r3, r4, lsl #2]
6030ddcc:	e8bd8010 	pop	{r4, pc}
6030ddd0:	e1a00004 	mov	r0, r4
6030ddd4:	e8bd4010 	pop	{r4, lr}
6030ddd8:	ea00111a 	b	60312248 <vPortYieldOtherCore>
6030dddc:	eb0010f7 	bl	603121c0 <xPortCpuIsInInterrupt>
6030dde0:	e3500000 	cmp	r0, #0
6030dde4:	1afffff4 	bne	6030ddbc <prvYieldCore+0x2c>
6030dde8:	ef000000 	svc	0x00000000
6030ddec:	e8bd8010 	pop	{r4, pc}

6030ddf0 <prvInitialiseNewTask.constprop.0>:
6030ddf0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
6030ddf4:	e59d4028 	ldr	r4, [sp, #40]	; 0x28
6030ddf8:	e1a09102 	lsl	r9, r2, #2
6030ddfc:	e1a0a001 	mov	sl, r1
6030de00:	e1a02009 	mov	r2, r9
6030de04:	e1a06000 	mov	r6, r0
6030de08:	e3a010a5 	mov	r1, #165	; 0xa5
6030de0c:	e5940030 	ldr	r0, [r4, #48]	; 0x30
6030de10:	e59d5020 	ldr	r5, [sp, #32]
6030de14:	e59d8024 	ldr	r8, [sp, #36]	; 0x24
6030de18:	e1a07003 	mov	r7, r3
6030de1c:	ebfffd65 	bl	6030d3b8 <__wrap_memset>
6030de20:	e5942030 	ldr	r2, [r4, #48]	; 0x30
6030de24:	e2499004 	sub	r9, r9, #4
6030de28:	e0829009 	add	r9, r2, r9
6030de2c:	e35a0000 	cmp	sl, #0
6030de30:	e3c9903f 	bic	r9, r9, #63	; 0x3f
6030de34:	05c4a03c 	strbeq	sl, [r4, #60]	; 0x3c
6030de38:	e5849054 	str	r9, [r4, #84]	; 0x54
6030de3c:	0a00000b 	beq	6030de70 <prvInitialiseNewTask.constprop.0+0x80>
6030de40:	e24ac001 	sub	ip, sl, #1
6030de44:	e28a3017 	add	r3, sl, #23
6030de48:	e284103b 	add	r1, r4, #59	; 0x3b
6030de4c:	ea000001 	b	6030de58 <prvInitialiseNewTask.constprop.0+0x68>
6030de50:	e15c0003 	cmp	ip, r3
6030de54:	0a000003 	beq	6030de68 <prvInitialiseNewTask.constprop.0+0x78>
6030de58:	e5fce001 	ldrb	lr, [ip, #1]!
6030de5c:	e5e1e001 	strb	lr, [r1, #1]!
6030de60:	e35e0000 	cmp	lr, #0
6030de64:	1afffff9 	bne	6030de50 <prvInitialiseNewTask.constprop.0+0x60>
6030de68:	e3a03000 	mov	r3, #0
6030de6c:	e5c43053 	strb	r3, [r4, #83]	; 0x53
6030de70:	e355000a 	cmp	r5, #10
6030de74:	e3a0a000 	mov	sl, #0
6030de78:	23a0500a 	movcs	r5, #10
6030de7c:	e2840004 	add	r0, r4, #4
6030de80:	e584502c 	str	r5, [r4, #44]	; 0x2c
6030de84:	e5845064 	str	r5, [r4, #100]	; 0x64
6030de88:	e584a068 	str	sl, [r4, #104]	; 0x68
6030de8c:	eb00090b 	bl	603102c0 <vListInitialiseItem>
6030de90:	e2840018 	add	r0, r4, #24
6030de94:	eb000909 	bl	603102c0 <vListInitialiseItem>
6030de98:	e265500b 	rsb	r5, r5, #11
6030de9c:	e3a020f0 	mov	r2, #240	; 0xf0
6030dea0:	e1a0100a 	mov	r1, sl
6030dea4:	e584a16c 	str	sl, [r4, #364]	; 0x16c
6030dea8:	e284007c 	add	r0, r4, #124	; 0x7c
6030deac:	e5845018 	str	r5, [r4, #24]
6030deb0:	e5844010 	str	r4, [r4, #16]
6030deb4:	e5844024 	str	r4, [r4, #36]	; 0x24
6030deb8:	e584a058 	str	sl, [r4, #88]	; 0x58
6030debc:	e584a06c 	str	sl, [r4, #108]	; 0x6c
6030dec0:	e584a078 	str	sl, [r4, #120]	; 0x78
6030dec4:	e584a070 	str	sl, [r4, #112]	; 0x70
6030dec8:	e584a074 	str	sl, [r4, #116]	; 0x74
6030decc:	e5c4a170 	strb	sl, [r4, #368]	; 0x170
6030ded0:	ebfffd38 	bl	6030d3b8 <__wrap_memset>
6030ded4:	e303301c 	movw	r3, #12316	; 0x301c
6030ded8:	e3463032 	movt	r3, #24626	; 0x6032
6030dedc:	e2831068 	add	r1, r3, #104	; 0x68
6030dee0:	e5843080 	str	r3, [r4, #128]	; 0x80
6030dee4:	e5841084 	str	r1, [r4, #132]	; 0x84
6030dee8:	e28330d0 	add	r3, r3, #208	; 0xd0
6030deec:	e1a01006 	mov	r1, r6
6030def0:	e5843088 	str	r3, [r4, #136]	; 0x88
6030def4:	e1a02007 	mov	r2, r7
6030def8:	e1a00009 	mov	r0, r9
6030defc:	e5c4a172 	strb	sl, [r4, #370]	; 0x172
6030df00:	eb001031 	bl	60311fcc <pxPortInitialiseStack>
6030df04:	e3003018 	movw	r3, #24
6030df08:	e3463031 	movt	r3, #24625	; 0x6031
6030df0c:	e0466003 	sub	r6, r6, r3
6030df10:	e16f6f16 	clz	r6, r6
6030df14:	e158000a 	cmp	r8, sl
6030df18:	e1a062a6 	lsr	r6, r6, #5
6030df1c:	e3e03000 	mvn	r3, #0
6030df20:	e5840000 	str	r0, [r4]
6030df24:	e5843034 	str	r3, [r4, #52]	; 0x34
6030df28:	e5846038 	str	r6, [r4, #56]	; 0x38
6030df2c:	15884000 	strne	r4, [r8]
6030df30:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

6030df34 <prvYieldForTask.isra.0>:
6030df34:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
6030df38:	e1a06000 	mov	r6, r0
6030df3c:	e1a05002 	mov	r5, r2
6030df40:	e1a04001 	mov	r4, r1
6030df44:	eb0010b1 	bl	60312210 <ulPortGetCoreId>
6030df48:	e596602c 	ldr	r6, [r6, #44]	; 0x2c
6030df4c:	e3550000 	cmp	r5, #0
6030df50:	e2241001 	eor	r1, r4, #1
6030df54:	e3a0c000 	mov	ip, #0
6030df58:	e3032ec0 	movw	r2, #16064	; 0x3ec0
6030df5c:	e3462032 	movt	r2, #24626	; 0x6032
6030df60:	e3045068 	movw	r5, #16488	; 0x4068
6030df64:	e3465032 	movt	r5, #24626	; 0x6032
6030df68:	12866001 	addne	r6, r6, #1
6030df6c:	e2011001 	and	r1, r1, #1
6030df70:	e1a0300c 	mov	r3, ip
6030df74:	e1a0e000 	mov	lr, r0
6030df78:	e3e00000 	mvn	r0, #0
6030df7c:	e15e0003 	cmp	lr, r3
6030df80:	13a04000 	movne	r4, #0
6030df84:	02014001 	andeq	r4, r1, #1
6030df88:	e3540000 	cmp	r4, #0
6030df8c:	1a000013 	bne	6030dfe0 <prvYieldForTask.isra.0+0xac>
6030df90:	e7924103 	ldr	r4, [r2, r3, lsl #2]
6030df94:	e5944038 	ldr	r4, [r4, #56]	; 0x38
6030df98:	e3540000 	cmp	r4, #0
6030df9c:	1a00001a 	bne	6030e00c <prvYieldForTask.isra.0+0xd8>
6030dfa0:	e7927103 	ldr	r7, [r2, r3, lsl #2]
6030dfa4:	e7924103 	ldr	r4, [r2, r3, lsl #2]
6030dfa8:	e5944034 	ldr	r4, [r4, #52]	; 0x34
6030dfac:	e3540001 	cmp	r4, #1
6030dfb0:	8a00000a 	bhi	6030dfe0 <prvYieldForTask.isra.0+0xac>
6030dfb4:	e597402c 	ldr	r4, [r7, #44]	; 0x2c
6030dfb8:	e7958103 	ldr	r8, [r5, r3, lsl #2]
6030dfbc:	e1540006 	cmp	r4, r6
6030dfc0:	a3a07000 	movge	r7, #0
6030dfc4:	b3a07001 	movlt	r7, #1
6030dfc8:	e3580000 	cmp	r8, #0
6030dfcc:	13a07000 	movne	r7, #0
6030dfd0:	e3570000 	cmp	r7, #0
6030dfd4:	128cc001 	addne	ip, ip, #1
6030dfd8:	11a06004 	movne	r6, r4
6030dfdc:	11a00003 	movne	r0, r3
6030dfe0:	e3530001 	cmp	r3, #1
6030dfe4:	e3a03001 	mov	r3, #1
6030dfe8:	1affffe3 	bne	6030df7c <prvYieldForTask.isra.0+0x48>
6030dfec:	e25cc000 	subs	ip, ip, #0
6030dff0:	13a0c001 	movne	ip, #1
6030dff4:	e3500001 	cmp	r0, #1
6030dff8:	83a0c000 	movhi	ip, #0
6030dffc:	e35c0000 	cmp	ip, #0
6030e000:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
6030e004:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
6030e008:	eaffff60 	b	6030dd90 <prvYieldCore>
6030e00c:	e28cc001 	add	ip, ip, #1
6030e010:	e1a00003 	mov	r0, r3
6030e014:	eafffff4 	b	6030dfec <prvYieldForTask.isra.0+0xb8>

6030e018 <prvGetExpectedIdleTime>:
6030e018:	e3033fd0 	movw	r3, #16336	; 0x3fd0
6030e01c:	e3463032 	movt	r3, #24626	; 0x6032
6030e020:	e92d4070 	push	{r4, r5, r6, lr}
6030e024:	e5935000 	ldr	r5, [r3]
6030e028:	eb00105d 	bl	603121a4 <ulPortInterruptLock>
6030e02c:	e1a04000 	mov	r4, r0
6030e030:	eb001076 	bl	60312210 <ulPortGetCoreId>
6030e034:	e3033ec0 	movw	r3, #16064	; 0x3ec0
6030e038:	e3463032 	movt	r3, #24626	; 0x6032
6030e03c:	e1a02000 	mov	r2, r0
6030e040:	e1a00004 	mov	r0, r4
6030e044:	e7934102 	ldr	r4, [r3, r2, lsl #2]
6030e048:	eb00105a 	bl	603121b8 <ulPortInterruptUnLock>
6030e04c:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
6030e050:	e3530000 	cmp	r3, #0
6030e054:	0a000001 	beq	6030e060 <prvGetExpectedIdleTime+0x48>
6030e058:	e3a00000 	mov	r0, #0
6030e05c:	e8bd8070 	pop	{r4, r5, r6, pc}
6030e060:	e3a00001 	mov	r0, #1
6030e064:	ebfff539 	bl	6030b550 <pmu_secondary_cpu_state_is_running>
6030e068:	e3500000 	cmp	r0, #0
6030e06c:	0a000004 	beq	6030e084 <prvGetExpectedIdleTime+0x6c>
6030e070:	e3033ed4 	movw	r3, #16084	; 0x3ed4
6030e074:	e3463032 	movt	r3, #24626	; 0x6032
6030e078:	e5933000 	ldr	r3, [r3]
6030e07c:	e3530000 	cmp	r3, #0
6030e080:	1afffff4 	bne	6030e058 <prvGetExpectedIdleTime+0x40>
6030e084:	e3550000 	cmp	r5, #0
6030e088:	1afffff2 	bne	6030e058 <prvGetExpectedIdleTime+0x40>
6030e08c:	e3042004 	movw	r2, #16388	; 0x4004
6030e090:	e3462032 	movt	r2, #24626	; 0x6032
6030e094:	e3043064 	movw	r3, #16484	; 0x4064
6030e098:	e3463032 	movt	r3, #24626	; 0x6032
6030e09c:	e5920000 	ldr	r0, [r2]
6030e0a0:	e5933000 	ldr	r3, [r3]
6030e0a4:	e0400003 	sub	r0, r0, r3
6030e0a8:	e8bd8070 	pop	{r4, r5, r6, pc}

6030e0ac <xTaskGetCurrentYieldPending>:
6030e0ac:	e92d4010 	push	{r4, lr}
6030e0b0:	eb00103b 	bl	603121a4 <ulPortInterruptLock>
6030e0b4:	e1a04000 	mov	r4, r0
6030e0b8:	eb001054 	bl	60312210 <ulPortGetCoreId>
6030e0bc:	e3043068 	movw	r3, #16488	; 0x4068
6030e0c0:	e3463032 	movt	r3, #24626	; 0x6032
6030e0c4:	e1a02000 	mov	r2, r0
6030e0c8:	e1a00004 	mov	r0, r4
6030e0cc:	e7934102 	ldr	r4, [r3, r2, lsl #2]
6030e0d0:	eb001038 	bl	603121b8 <ulPortInterruptUnLock>
6030e0d4:	e1a00004 	mov	r0, r4
6030e0d8:	e8bd8010 	pop	{r4, pc}

6030e0dc <xTaskGetTickCount>:
6030e0dc:	e3043064 	movw	r3, #16484	; 0x4064
6030e0e0:	e3463032 	movt	r3, #24626	; 0x6032
6030e0e4:	e5930000 	ldr	r0, [r3]
6030e0e8:	e12fff1e 	bx	lr

6030e0ec <xTaskGetPendedTicks>:
6030e0ec:	e304300c 	movw	r3, #16396	; 0x400c
6030e0f0:	e3463032 	movt	r3, #24626	; 0x6032
6030e0f4:	e5930000 	ldr	r0, [r3]
6030e0f8:	e12fff1e 	bx	lr

6030e0fc <xTaskGetTickCountFromISR>:
6030e0fc:	e3043064 	movw	r3, #16484	; 0x4064
6030e100:	e3463032 	movt	r3, #24626	; 0x6032
6030e104:	e5930000 	ldr	r0, [r3]
6030e108:	e12fff1e 	bx	lr

6030e10c <xTaskGetPendedTicksFromISR>:
6030e10c:	e304300c 	movw	r3, #16396	; 0x400c
6030e110:	e3463032 	movt	r3, #24626	; 0x6032
6030e114:	e5930000 	ldr	r0, [r3]
6030e118:	e12fff1e 	bx	lr

6030e11c <pcTaskGetName>:
6030e11c:	e92d4010 	push	{r4, lr}
6030e120:	e2504000 	subs	r4, r0, #0
6030e124:	0a000001 	beq	6030e130 <pcTaskGetName+0x14>
6030e128:	e284003c 	add	r0, r4, #60	; 0x3c
6030e12c:	e8bd8010 	pop	{r4, pc}
6030e130:	eb00101b 	bl	603121a4 <ulPortInterruptLock>
6030e134:	e1a04000 	mov	r4, r0
6030e138:	eb001034 	bl	60312210 <ulPortGetCoreId>
6030e13c:	e3033ec0 	movw	r3, #16064	; 0x3ec0
6030e140:	e3463032 	movt	r3, #24626	; 0x6032
6030e144:	e1a02000 	mov	r2, r0
6030e148:	e1a00004 	mov	r0, r4
6030e14c:	e7934102 	ldr	r4, [r3, r2, lsl #2]
6030e150:	eb001018 	bl	603121b8 <ulPortInterruptUnLock>
6030e154:	e3540000 	cmp	r4, #0
6030e158:	1afffff2 	bne	6030e128 <pcTaskGetName+0xc>
6030e15c:	e3001a54 	movw	r1, #2644	; 0xa54
6030e160:	e30505f8 	movw	r0, #22008	; 0x55f8
6030e164:	e3460031 	movt	r0, #24625	; 0x6031
6030e168:	ebffefd6 	bl	6030a0c8 <vAssertCalled>
6030e16c:	e284003c 	add	r0, r4, #60	; 0x3c
6030e170:	e8bd8010 	pop	{r4, pc}

6030e174 <vTaskCompTick>:
6030e174:	e3500001 	cmp	r0, #1
6030e178:	9a000012 	bls	6030e1c8 <vTaskCompTick+0x54>
6030e17c:	e3042064 	movw	r2, #16484	; 0x4064
6030e180:	e3462032 	movt	r2, #24626	; 0x6032
6030e184:	e5923000 	ldr	r3, [r2]
6030e188:	e5921000 	ldr	r1, [r2]
6030e18c:	e0833000 	add	r3, r3, r0
6030e190:	e1530001 	cmp	r3, r1
6030e194:	e5923000 	ldr	r3, [r2]
6030e198:	9a000008 	bls	6030e1c0 <vTaskCompTick+0x4c>
6030e19c:	e2433001 	sub	r3, r3, #1
6030e1a0:	e304100c 	movw	r1, #16396	; 0x400c
6030e1a4:	e3461032 	movt	r1, #24626	; 0x6032
6030e1a8:	e0830000 	add	r0, r3, r0
6030e1ac:	e5820000 	str	r0, [r2]
6030e1b0:	e5913000 	ldr	r3, [r1]
6030e1b4:	e2833001 	add	r3, r3, #1
6030e1b8:	e5813000 	str	r3, [r1]
6030e1bc:	e12fff1e 	bx	lr
6030e1c0:	e3730001 	cmn	r3, #1
6030e1c4:	1a000005 	bne	6030e1e0 <vTaskCompTick+0x6c>
6030e1c8:	e304300c 	movw	r3, #16396	; 0x400c
6030e1cc:	e3463032 	movt	r3, #24626	; 0x6032
6030e1d0:	e5932000 	ldr	r2, [r3]
6030e1d4:	e0820000 	add	r0, r2, r0
6030e1d8:	e5830000 	str	r0, [r3]
6030e1dc:	e12fff1e 	bx	lr
6030e1e0:	e304100c 	movw	r1, #16396	; 0x400c
6030e1e4:	e3461032 	movt	r1, #24626	; 0x6032
6030e1e8:	e5923000 	ldr	r3, [r2]
6030e1ec:	e591c000 	ldr	ip, [r1]
6030e1f0:	e083300c 	add	r3, r3, ip
6030e1f4:	e2833002 	add	r3, r3, #2
6030e1f8:	e0830000 	add	r0, r3, r0
6030e1fc:	e3e03001 	mvn	r3, #1
6030e200:	e5810000 	str	r0, [r1]
6030e204:	e5823000 	str	r3, [r2]
6030e208:	e12fff1e 	bx	lr

6030e20c <vTaskSwitchContext>:
6030e20c:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030e210:	e1a04000 	mov	r4, r0
6030e214:	eb000fe2 	bl	603121a4 <ulPortInterruptLock>
6030e218:	e1a08000 	mov	r8, r0
6030e21c:	eb000fba 	bl	6031210c <xPortSpinLockTask>
6030e220:	e1a00004 	mov	r0, r4
6030e224:	ebfff4cf 	bl	6030b568 <pmu_secondary_cpu_state_is_hotplug>
6030e228:	e3500000 	cmp	r0, #0
6030e22c:	1a000114 	bne	6030e684 <vTaskSwitchContext+0x478>
6030e230:	e3033fc8 	movw	r3, #16328	; 0x3fc8
6030e234:	e3463032 	movt	r3, #24626	; 0x6032
6030e238:	e5936000 	ldr	r6, [r3]
6030e23c:	e3560000 	cmp	r6, #0
6030e240:	1a00009a 	bne	6030e4b0 <vTaskSwitchContext+0x2a4>
6030e244:	e3035ec0 	movw	r5, #16064	; 0x3ec0
6030e248:	e3465032 	movt	r5, #24626	; 0x6032
6030e24c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e250:	e5933058 	ldr	r3, [r3, #88]	; 0x58
6030e254:	e3530000 	cmp	r3, #0
6030e258:	1a000187 	bne	6030e87c <vTaskSwitchContext+0x670>
6030e25c:	e3043068 	movw	r3, #16488	; 0x4068
6030e260:	e3463032 	movt	r3, #24626	; 0x6032
6030e264:	e3a02000 	mov	r2, #0
6030e268:	e3a00a09 	mov	r0, #36864	; 0x9000
6030e26c:	e3440200 	movt	r0, #16896	; 0x4200
6030e270:	e7832104 	str	r2, [r3, r4, lsl #2]
6030e274:	e3033fb8 	movw	r3, #16312	; 0x3fb8
6030e278:	e3463032 	movt	r3, #24626	; 0x6032
6030e27c:	e3032fb0 	movw	r2, #16304	; 0x3fb0
6030e280:	e3462032 	movt	r2, #24626	; 0x6032
6030e284:	e5901004 	ldr	r1, [r0, #4]
6030e288:	e7831106 	str	r1, [r3, r6, lsl #2]
6030e28c:	e793c106 	ldr	ip, [r3, r6, lsl #2]
6030e290:	e7921106 	ldr	r1, [r2, r6, lsl #2]
6030e294:	e15c0001 	cmp	ip, r1
6030e298:	9a000006 	bls	6030e2b8 <vTaskSwitchContext+0xac>
6030e29c:	e793e106 	ldr	lr, [r3, r6, lsl #2]
6030e2a0:	e7927106 	ldr	r7, [r2, r6, lsl #2]
6030e2a4:	e795c106 	ldr	ip, [r5, r6, lsl #2]
6030e2a8:	e59c1078 	ldr	r1, [ip, #120]	; 0x78
6030e2ac:	e0411007 	sub	r1, r1, r7
6030e2b0:	e081100e 	add	r1, r1, lr
6030e2b4:	e58c1078 	str	r1, [ip, #120]	; 0x78
6030e2b8:	e7931106 	ldr	r1, [r3, r6, lsl #2]
6030e2bc:	e3560001 	cmp	r6, #1
6030e2c0:	e7821106 	str	r1, [r2, r6, lsl #2]
6030e2c4:	e3a06001 	mov	r6, #1
6030e2c8:	1affffed 	bne	6030e284 <vTaskSwitchContext+0x78>
6030e2cc:	eb000fb4 	bl	603121a4 <ulPortInterruptLock>
6030e2d0:	e1a06000 	mov	r6, r0
6030e2d4:	eb000fcd 	bl	60312210 <ulPortGetCoreId>
6030e2d8:	e1a03000 	mov	r3, r0
6030e2dc:	e1a00006 	mov	r0, r6
6030e2e0:	e7956103 	ldr	r6, [r5, r3, lsl #2]
6030e2e4:	eb000fb3 	bl	603121b8 <ulPortInterruptUnLock>
6030e2e8:	e30a35a5 	movw	r3, #42405	; 0xa5a5
6030e2ec:	e34a35a5 	movt	r3, #42405	; 0xa5a5
6030e2f0:	e5962030 	ldr	r2, [r6, #48]	; 0x30
6030e2f4:	e5921000 	ldr	r1, [r2]
6030e2f8:	e1510003 	cmp	r1, r3
6030e2fc:	1a000002 	bne	6030e30c <vTaskSwitchContext+0x100>
6030e300:	e5923004 	ldr	r3, [r2, #4]
6030e304:	e1530001 	cmp	r3, r1
6030e308:	0a000128 	beq	6030e7b0 <vTaskSwitchContext+0x5a4>
6030e30c:	eb000fa4 	bl	603121a4 <ulPortInterruptLock>
6030e310:	e1a06000 	mov	r6, r0
6030e314:	eb000fbd 	bl	60312210 <ulPortGetCoreId>
6030e318:	e1a03000 	mov	r3, r0
6030e31c:	e1a00006 	mov	r0, r6
6030e320:	e7957103 	ldr	r7, [r5, r3, lsl #2]
6030e324:	eb000fa3 	bl	603121b8 <ulPortInterruptUnLock>
6030e328:	eb000f9d 	bl	603121a4 <ulPortInterruptLock>
6030e32c:	e1a06000 	mov	r6, r0
6030e330:	eb000fb6 	bl	60312210 <ulPortGetCoreId>
6030e334:	e1a03000 	mov	r3, r0
6030e338:	e1a00006 	mov	r0, r6
6030e33c:	e7956103 	ldr	r6, [r5, r3, lsl #2]
6030e340:	eb000f9c 	bl	603121b8 <ulPortInterruptUnLock>
6030e344:	e286103c 	add	r1, r6, #60	; 0x3c
6030e348:	e1a00007 	mov	r0, r7
6030e34c:	eb000fbe 	bl	6031224c <vApplicationStackOverflowHook>
6030e350:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e354:	e5933034 	ldr	r3, [r3, #52]	; 0x34
6030e358:	e3530000 	cmp	r3, #0
6030e35c:	ba000003 	blt	6030e370 <vTaskSwitchContext+0x164>
6030e360:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e364:	e5933034 	ldr	r3, [r3, #52]	; 0x34
6030e368:	e3530001 	cmp	r3, #1
6030e36c:	da0000e9 	ble	6030e718 <vTaskSwitchContext+0x50c>
6030e370:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e374:	e3036ed0 	movw	r6, #16080	; 0x3ed0
6030e378:	e3466032 	movt	r6, #24626	; 0x6032
6030e37c:	e5932014 	ldr	r2, [r3, #20]
6030e380:	e5963000 	ldr	r3, [r6]
6030e384:	e1520003 	cmp	r2, r3
6030e388:	0a00010f 	beq	6030e7cc <vTaskSwitchContext+0x5c0>
6030e38c:	e3039fd0 	movw	r9, #16336	; 0x3fd0
6030e390:	e3469032 	movt	r9, #24626	; 0x6032
6030e394:	e3037ed4 	movw	r7, #16084	; 0x3ed4
6030e398:	e3467032 	movt	r7, #24626	; 0x6032
6030e39c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e3a0:	e3e02000 	mvn	r2, #0
6030e3a4:	e3a0a014 	mov	sl, #20
6030e3a8:	e5832034 	str	r2, [r3, #52]	; 0x34
6030e3ac:	e5996000 	ldr	r6, [r9]
6030e3b0:	e003069a 	mul	r3, sl, r6
6030e3b4:	e7973003 	ldr	r3, [r7, r3]
6030e3b8:	e3530000 	cmp	r3, #0
6030e3bc:	1a000008 	bne	6030e3e4 <vTaskSwitchContext+0x1d8>
6030e3c0:	e305b5f8 	movw	fp, #22008	; 0x55f8
6030e3c4:	e346b031 	movt	fp, #24625	; 0x6031
6030e3c8:	e3560000 	cmp	r6, #0
6030e3cc:	e2466001 	sub	r6, r6, #1
6030e3d0:	0a0000a7 	beq	6030e674 <vTaskSwitchContext+0x468>
6030e3d4:	e003069a 	mul	r3, sl, r6
6030e3d8:	e7973003 	ldr	r3, [r7, r3]
6030e3dc:	e3530000 	cmp	r3, #0
6030e3e0:	0afffff8 	beq	6030e3c8 <vTaskSwitchContext+0x1bc>
6030e3e4:	e3a01014 	mov	r1, #20
6030e3e8:	e303cffc 	movw	ip, #16380	; 0x3ffc
6030e3ec:	e346c032 	movt	ip, #24626	; 0x6032
6030e3f0:	e0010691 	mul	r1, r1, r6
6030e3f4:	e0870001 	add	r0, r7, r1
6030e3f8:	e2811008 	add	r1, r1, #8
6030e3fc:	e0871001 	add	r1, r7, r1
6030e400:	e5903004 	ldr	r3, [r0, #4]
6030e404:	ea000003 	b	6030e418 <vTaskSwitchContext+0x20c>
6030e408:	e795e104 	ldr	lr, [r5, r4, lsl #2]
6030e40c:	e79c2104 	ldr	r2, [ip, r4, lsl #2]
6030e410:	e15e0002 	cmp	lr, r2
6030e414:	0a00000a 	beq	6030e444 <vTaskSwitchContext+0x238>
6030e418:	e5933004 	ldr	r3, [r3, #4]
6030e41c:	e5803004 	str	r3, [r0, #4]
6030e420:	e1530001 	cmp	r3, r1
6030e424:	05933004 	ldreq	r3, [r3, #4]
6030e428:	05803004 	streq	r3, [r0, #4]
6030e42c:	e593200c 	ldr	r2, [r3, #12]
6030e430:	e7852104 	str	r2, [r5, r4, lsl #2]
6030e434:	e7952104 	ldr	r2, [r5, r4, lsl #2]
6030e438:	e5922038 	ldr	r2, [r2, #56]	; 0x38
6030e43c:	e3520000 	cmp	r2, #0
6030e440:	1afffff0 	bne	6030e408 <vTaskSwitchContext+0x1fc>
6030e444:	e5896000 	str	r6, [r9]
6030e448:	e7950104 	ldr	r0, [r5, r4, lsl #2]
6030e44c:	e2800004 	add	r0, r0, #4
6030e450:	eb0007be 	bl	60310350 <uxListRemove>
6030e454:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e458:	e5834034 	str	r4, [r3, #52]	; 0x34
6030e45c:	e5993000 	ldr	r3, [r9]
6030e460:	e3530000 	cmp	r3, #0
6030e464:	0a000007 	beq	6030e488 <vTaskSwitchContext+0x27c>
6030e468:	e3a01014 	mov	r1, #20
6030e46c:	ea000001 	b	6030e478 <vTaskSwitchContext+0x26c>
6030e470:	e2533001 	subs	r3, r3, #1
6030e474:	0a000003 	beq	6030e488 <vTaskSwitchContext+0x27c>
6030e478:	e0020391 	mul	r2, r1, r3
6030e47c:	e7972002 	ldr	r2, [r7, r2]
6030e480:	e3520000 	cmp	r2, #0
6030e484:	0afffff9 	beq	6030e470 <vTaskSwitchContext+0x264>
6030e488:	e5893000 	str	r3, [r9]
6030e48c:	e3063000 	movw	r3, #24576	; 0x6000
6030e490:	e3463031 	movt	r3, #24625	; 0x6031
6030e494:	e7952104 	ldr	r2, [r5, r4, lsl #2]
6030e498:	e282207c 	add	r2, r2, #124	; 0x7c
6030e49c:	e5832000 	str	r2, [r3]
6030e4a0:	eb000f24 	bl	60312138 <xPortSpinUnLockTask>
6030e4a4:	e1a00008 	mov	r0, r8
6030e4a8:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030e4ac:	ea000f41 	b	603121b8 <ulPortInterruptUnLock>
6030e4b0:	e3043068 	movw	r3, #16488	; 0x4068
6030e4b4:	e3463032 	movt	r3, #24626	; 0x6032
6030e4b8:	e3a02001 	mov	r2, #1
6030e4bc:	e7832104 	str	r2, [r3, r4, lsl #2]
6030e4c0:	eb000f3e 	bl	603121c0 <xPortCpuIsInInterrupt>
6030e4c4:	e3500000 	cmp	r0, #0
6030e4c8:	1afffff4 	bne	6030e4a0 <vTaskSwitchContext+0x294>
6030e4cc:	e3035ec0 	movw	r5, #16064	; 0x3ec0
6030e4d0:	e3465032 	movt	r5, #24626	; 0x6032
6030e4d4:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e4d8:	e5931038 	ldr	r1, [r3, #56]	; 0x38
6030e4dc:	e3510000 	cmp	r1, #0
6030e4e0:	1affffee 	bne	6030e4a0 <vTaskSwitchContext+0x294>
6030e4e4:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e4e8:	e5933034 	ldr	r3, [r3, #52]	; 0x34
6030e4ec:	e3530000 	cmp	r3, #0
6030e4f0:	ba000003 	blt	6030e504 <vTaskSwitchContext+0x2f8>
6030e4f4:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e4f8:	e5933034 	ldr	r3, [r3, #52]	; 0x34
6030e4fc:	e3530001 	cmp	r3, #1
6030e500:	daffffe6 	ble	6030e4a0 <vTaskSwitchContext+0x294>
6030e504:	e3a0ca09 	mov	ip, #36864	; 0x9000
6030e508:	e344c200 	movt	ip, #16896	; 0x4200
6030e50c:	e3033fb8 	movw	r3, #16312	; 0x3fb8
6030e510:	e3463032 	movt	r3, #24626	; 0x6032
6030e514:	e3032fb0 	movw	r2, #16304	; 0x3fb0
6030e518:	e3462032 	movt	r2, #24626	; 0x6032
6030e51c:	e59c0004 	ldr	r0, [ip, #4]
6030e520:	e7830101 	str	r0, [r3, r1, lsl #2]
6030e524:	e793e101 	ldr	lr, [r3, r1, lsl #2]
6030e528:	e7920101 	ldr	r0, [r2, r1, lsl #2]
6030e52c:	e15e0000 	cmp	lr, r0
6030e530:	9a000006 	bls	6030e550 <vTaskSwitchContext+0x344>
6030e534:	e7936101 	ldr	r6, [r3, r1, lsl #2]
6030e538:	e7927101 	ldr	r7, [r2, r1, lsl #2]
6030e53c:	e795e101 	ldr	lr, [r5, r1, lsl #2]
6030e540:	e59e0078 	ldr	r0, [lr, #120]	; 0x78
6030e544:	e0400007 	sub	r0, r0, r7
6030e548:	e0800006 	add	r0, r0, r6
6030e54c:	e58e0078 	str	r0, [lr, #120]	; 0x78
6030e550:	e7930101 	ldr	r0, [r3, r1, lsl #2]
6030e554:	e3510001 	cmp	r1, #1
6030e558:	e7820101 	str	r0, [r2, r1, lsl #2]
6030e55c:	e3a01001 	mov	r1, #1
6030e560:	1affffed 	bne	6030e51c <vTaskSwitchContext+0x310>
6030e564:	eb000f0e 	bl	603121a4 <ulPortInterruptLock>
6030e568:	e1a06000 	mov	r6, r0
6030e56c:	eb000f27 	bl	60312210 <ulPortGetCoreId>
6030e570:	e1a03000 	mov	r3, r0
6030e574:	e1a00006 	mov	r0, r6
6030e578:	e7956103 	ldr	r6, [r5, r3, lsl #2]
6030e57c:	eb000f0d 	bl	603121b8 <ulPortInterruptUnLock>
6030e580:	e30a35a5 	movw	r3, #42405	; 0xa5a5
6030e584:	e34a35a5 	movt	r3, #42405	; 0xa5a5
6030e588:	e5962030 	ldr	r2, [r6, #48]	; 0x30
6030e58c:	e5921000 	ldr	r1, [r2]
6030e590:	e1510003 	cmp	r1, r3
6030e594:	1a000002 	bne	6030e5a4 <vTaskSwitchContext+0x398>
6030e598:	e5923004 	ldr	r3, [r2, #4]
6030e59c:	e1530001 	cmp	r3, r1
6030e5a0:	0a0000dd 	beq	6030e91c <vTaskSwitchContext+0x710>
6030e5a4:	eb000efe 	bl	603121a4 <ulPortInterruptLock>
6030e5a8:	e1a06000 	mov	r6, r0
6030e5ac:	eb000f17 	bl	60312210 <ulPortGetCoreId>
6030e5b0:	e1a03000 	mov	r3, r0
6030e5b4:	e1a00006 	mov	r0, r6
6030e5b8:	e7957103 	ldr	r7, [r5, r3, lsl #2]
6030e5bc:	eb000efd 	bl	603121b8 <ulPortInterruptUnLock>
6030e5c0:	eb000ef7 	bl	603121a4 <ulPortInterruptLock>
6030e5c4:	e1a06000 	mov	r6, r0
6030e5c8:	eb000f10 	bl	60312210 <ulPortGetCoreId>
6030e5cc:	e1a03000 	mov	r3, r0
6030e5d0:	e1a00006 	mov	r0, r6
6030e5d4:	e7956103 	ldr	r6, [r5, r3, lsl #2]
6030e5d8:	eb000ef6 	bl	603121b8 <ulPortInterruptUnLock>
6030e5dc:	e286103c 	add	r1, r6, #60	; 0x3c
6030e5e0:	e1a00007 	mov	r0, r7
6030e5e4:	eb000f18 	bl	6031224c <vApplicationStackOverflowHook>
6030e5e8:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e5ec:	e3e02000 	mvn	r2, #0
6030e5f0:	e3036ed0 	movw	r6, #16080	; 0x3ed0
6030e5f4:	e3466032 	movt	r6, #24626	; 0x6032
6030e5f8:	e5832034 	str	r2, [r3, #52]	; 0x34
6030e5fc:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e600:	e5932014 	ldr	r2, [r3, #20]
6030e604:	e5963000 	ldr	r3, [r6]
6030e608:	e1520003 	cmp	r2, r3
6030e60c:	0a0000a8 	beq	6030e8b4 <vTaskSwitchContext+0x6a8>
6030e610:	e3039fd0 	movw	r9, #16336	; 0x3fd0
6030e614:	e3469032 	movt	r9, #24626	; 0x6032
6030e618:	e3033ffc 	movw	r3, #16380	; 0x3ffc
6030e61c:	e3463032 	movt	r3, #24626	; 0x6032
6030e620:	e7933104 	ldr	r3, [r3, r4, lsl #2]
6030e624:	e7853104 	str	r3, [r5, r4, lsl #2]
6030e628:	e7950104 	ldr	r0, [r5, r4, lsl #2]
6030e62c:	e2800004 	add	r0, r0, #4
6030e630:	eb000746 	bl	60310350 <uxListRemove>
6030e634:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e638:	e5834034 	str	r4, [r3, #52]	; 0x34
6030e63c:	e5993000 	ldr	r3, [r9]
6030e640:	e3530000 	cmp	r3, #0
6030e644:	0affff8f 	beq	6030e488 <vTaskSwitchContext+0x27c>
6030e648:	e3037ed4 	movw	r7, #16084	; 0x3ed4
6030e64c:	e3467032 	movt	r7, #24626	; 0x6032
6030e650:	e3a01014 	mov	r1, #20
6030e654:	ea000001 	b	6030e660 <vTaskSwitchContext+0x454>
6030e658:	e2533001 	subs	r3, r3, #1
6030e65c:	0affff89 	beq	6030e488 <vTaskSwitchContext+0x27c>
6030e660:	e0020391 	mul	r2, r1, r3
6030e664:	e7972002 	ldr	r2, [r7, r2]
6030e668:	e3520000 	cmp	r2, #0
6030e66c:	0afffff9 	beq	6030e658 <vTaskSwitchContext+0x44c>
6030e670:	eaffff84 	b	6030e488 <vTaskSwitchContext+0x27c>
6030e674:	e1a0000b 	mov	r0, fp
6030e678:	e3001d88 	movw	r1, #3464	; 0xd88
6030e67c:	ebffee91 	bl	6030a0c8 <vAssertCalled>
6030e680:	eaffff53 	b	6030e3d4 <vTaskSwitchContext+0x1c8>
6030e684:	e3035ec0 	movw	r5, #16064	; 0x3ec0
6030e688:	e3465032 	movt	r5, #24626	; 0x6032
6030e68c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e690:	e5933034 	ldr	r3, [r3, #52]	; 0x34
6030e694:	e3530000 	cmp	r3, #0
6030e698:	ba000003 	blt	6030e6ac <vTaskSwitchContext+0x4a0>
6030e69c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e6a0:	e5933034 	ldr	r3, [r3, #52]	; 0x34
6030e6a4:	e3530001 	cmp	r3, #1
6030e6a8:	da000029 	ble	6030e754 <vTaskSwitchContext+0x548>
6030e6ac:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e6b0:	e3036ed0 	movw	r6, #16080	; 0x3ed0
6030e6b4:	e3466032 	movt	r6, #24626	; 0x6032
6030e6b8:	e5932014 	ldr	r2, [r3, #20]
6030e6bc:	e5963000 	ldr	r3, [r6]
6030e6c0:	e1520003 	cmp	r2, r3
6030e6c4:	0a00005d 	beq	6030e840 <vTaskSwitchContext+0x634>
6030e6c8:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e6cc:	e3e02000 	mvn	r2, #0
6030e6d0:	e3a06000 	mov	r6, #0
6030e6d4:	e5832034 	str	r2, [r3, #52]	; 0x34
6030e6d8:	e3032ffc 	movw	r2, #16380	; 0x3ffc
6030e6dc:	e3462032 	movt	r2, #24626	; 0x6032
6030e6e0:	e3043068 	movw	r3, #16488	; 0x4068
6030e6e4:	e3463032 	movt	r3, #24626	; 0x6032
6030e6e8:	e7922104 	ldr	r2, [r2, r4, lsl #2]
6030e6ec:	e7852104 	str	r2, [r5, r4, lsl #2]
6030e6f0:	e7836104 	str	r6, [r3, r4, lsl #2]
6030e6f4:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e6f8:	e5836058 	str	r6, [r3, #88]	; 0x58
6030e6fc:	ebffef93 	bl	6030a550 <vDisableIPIInterrupt>
6030e700:	eb000e8c 	bl	60312138 <xPortSpinUnLockTask>
6030e704:	e1a00008 	mov	r0, r8
6030e708:	eb000eaa 	bl	603121b8 <ulPortInterruptUnLock>
6030e70c:	e1a00006 	mov	r0, r6
6030e710:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030e714:	eafff13c 	b	6030ac0c <psci_cpu_off>
6030e718:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e71c:	e5933034 	ldr	r3, [r3, #52]	; 0x34
6030e720:	e1530004 	cmp	r3, r4
6030e724:	1affff11 	bne	6030e370 <vTaskSwitchContext+0x164>
6030e728:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e72c:	e5933034 	ldr	r3, [r3, #52]	; 0x34
6030e730:	e3730002 	cmn	r3, #2
6030e734:	1a00002e 	bne	6030e7f4 <vTaskSwitchContext+0x5e8>
6030e738:	e3033ed0 	movw	r3, #16080	; 0x3ed0
6030e73c:	e3463032 	movt	r3, #24626	; 0x6032
6030e740:	e5930000 	ldr	r0, [r3]
6030e744:	e7951104 	ldr	r1, [r5, r4, lsl #2]
6030e748:	e2811004 	add	r1, r1, #4
6030e74c:	eb0006de 	bl	603102cc <vListInsertEnd>
6030e750:	eaffff0d 	b	6030e38c <vTaskSwitchContext+0x180>
6030e754:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e758:	e5933034 	ldr	r3, [r3, #52]	; 0x34
6030e75c:	e3730002 	cmn	r3, #2
6030e760:	0a00004a 	beq	6030e890 <vTaskSwitchContext+0x684>
6030e764:	e7952104 	ldr	r2, [r5, r4, lsl #2]
6030e768:	e3033fd0 	movw	r3, #16336	; 0x3fd0
6030e76c:	e3463032 	movt	r3, #24626	; 0x6032
6030e770:	e592102c 	ldr	r1, [r2, #44]	; 0x2c
6030e774:	e3a00014 	mov	r0, #20
6030e778:	e5932000 	ldr	r2, [r3]
6030e77c:	e1510002 	cmp	r1, r2
6030e780:	87952104 	ldrhi	r2, [r5, r4, lsl #2]
6030e784:	8592202c 	ldrhi	r2, [r2, #44]	; 0x2c
6030e788:	85832000 	strhi	r2, [r3]
6030e78c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e790:	e7951104 	ldr	r1, [r5, r4, lsl #2]
6030e794:	e593202c 	ldr	r2, [r3, #44]	; 0x2c
6030e798:	e3033ed4 	movw	r3, #16084	; 0x3ed4
6030e79c:	e3463032 	movt	r3, #24626	; 0x6032
6030e7a0:	e2811004 	add	r1, r1, #4
6030e7a4:	e0203290 	mla	r0, r0, r2, r3
6030e7a8:	eb0006c7 	bl	603102cc <vListInsertEnd>
6030e7ac:	eaffffc5 	b	6030e6c8 <vTaskSwitchContext+0x4bc>
6030e7b0:	e5921008 	ldr	r1, [r2, #8]
6030e7b4:	e1510003 	cmp	r1, r3
6030e7b8:	1afffed3 	bne	6030e30c <vTaskSwitchContext+0x100>
6030e7bc:	e592300c 	ldr	r3, [r2, #12]
6030e7c0:	e1530001 	cmp	r3, r1
6030e7c4:	1afffed0 	bne	6030e30c <vTaskSwitchContext+0x100>
6030e7c8:	eafffee0 	b	6030e350 <vTaskSwitchContext+0x144>
6030e7cc:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e7d0:	e3e02000 	mvn	r2, #0
6030e7d4:	e5832034 	str	r2, [r3, #52]	; 0x34
6030e7d8:	e7950104 	ldr	r0, [r5, r4, lsl #2]
6030e7dc:	e2800004 	add	r0, r0, #4
6030e7e0:	eb0006da 	bl	60310350 <uxListRemove>
6030e7e4:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e7e8:	e5933034 	ldr	r3, [r3, #52]	; 0x34
6030e7ec:	e3730002 	cmn	r3, #2
6030e7f0:	0a00002d 	beq	6030e8ac <vTaskSwitchContext+0x6a0>
6030e7f4:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e7f8:	e3039fd0 	movw	r9, #16336	; 0x3fd0
6030e7fc:	e3469032 	movt	r9, #24626	; 0x6032
6030e800:	e593202c 	ldr	r2, [r3, #44]	; 0x2c
6030e804:	e3a00014 	mov	r0, #20
6030e808:	e5993000 	ldr	r3, [r9]
6030e80c:	e3037ed4 	movw	r7, #16084	; 0x3ed4
6030e810:	e3467032 	movt	r7, #24626	; 0x6032
6030e814:	e1520003 	cmp	r2, r3
6030e818:	87953104 	ldrhi	r3, [r5, r4, lsl #2]
6030e81c:	8593302c 	ldrhi	r3, [r3, #44]	; 0x2c
6030e820:	85893000 	strhi	r3, [r9]
6030e824:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e828:	e7951104 	ldr	r1, [r5, r4, lsl #2]
6030e82c:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
6030e830:	e2811004 	add	r1, r1, #4
6030e834:	e0207390 	mla	r0, r0, r3, r7
6030e838:	eb0006a3 	bl	603102cc <vListInsertEnd>
6030e83c:	eafffed6 	b	6030e39c <vTaskSwitchContext+0x190>
6030e840:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e844:	e3e02000 	mvn	r2, #0
6030e848:	e5832034 	str	r2, [r3, #52]	; 0x34
6030e84c:	e7950104 	ldr	r0, [r5, r4, lsl #2]
6030e850:	e2800004 	add	r0, r0, #4
6030e854:	eb0006bd 	bl	60310350 <uxListRemove>
6030e858:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e85c:	e5933034 	ldr	r3, [r3, #52]	; 0x34
6030e860:	e3730002 	cmn	r3, #2
6030e864:	1affffbe 	bne	6030e764 <vTaskSwitchContext+0x558>
6030e868:	e5960000 	ldr	r0, [r6]
6030e86c:	e7951104 	ldr	r1, [r5, r4, lsl #2]
6030e870:	e2811004 	add	r1, r1, #4
6030e874:	eb000694 	bl	603102cc <vListInsertEnd>
6030e878:	eaffff92 	b	6030e6c8 <vTaskSwitchContext+0x4bc>
6030e87c:	e3001d57 	movw	r1, #3415	; 0xd57
6030e880:	e30505f8 	movw	r0, #22008	; 0x55f8
6030e884:	e3460031 	movt	r0, #24625	; 0x6031
6030e888:	ebffee0e 	bl	6030a0c8 <vAssertCalled>
6030e88c:	eafffe72 	b	6030e25c <vTaskSwitchContext+0x50>
6030e890:	e3033ed0 	movw	r3, #16080	; 0x3ed0
6030e894:	e3463032 	movt	r3, #24626	; 0x6032
6030e898:	e5930000 	ldr	r0, [r3]
6030e89c:	e7951104 	ldr	r1, [r5, r4, lsl #2]
6030e8a0:	e2811004 	add	r1, r1, #4
6030e8a4:	eb000688 	bl	603102cc <vListInsertEnd>
6030e8a8:	eaffff86 	b	6030e6c8 <vTaskSwitchContext+0x4bc>
6030e8ac:	e5960000 	ldr	r0, [r6]
6030e8b0:	eaffffa3 	b	6030e744 <vTaskSwitchContext+0x538>
6030e8b4:	e7950104 	ldr	r0, [r5, r4, lsl #2]
6030e8b8:	e2800004 	add	r0, r0, #4
6030e8bc:	eb0006a3 	bl	60310350 <uxListRemove>
6030e8c0:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e8c4:	e5933034 	ldr	r3, [r3, #52]	; 0x34
6030e8c8:	e3730002 	cmn	r3, #2
6030e8cc:	0a000019 	beq	6030e938 <vTaskSwitchContext+0x72c>
6030e8d0:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e8d4:	e3039fd0 	movw	r9, #16336	; 0x3fd0
6030e8d8:	e3469032 	movt	r9, #24626	; 0x6032
6030e8dc:	e593202c 	ldr	r2, [r3, #44]	; 0x2c
6030e8e0:	e3a00014 	mov	r0, #20
6030e8e4:	e5993000 	ldr	r3, [r9]
6030e8e8:	e3037ed4 	movw	r7, #16084	; 0x3ed4
6030e8ec:	e3467032 	movt	r7, #24626	; 0x6032
6030e8f0:	e1520003 	cmp	r2, r3
6030e8f4:	87953104 	ldrhi	r3, [r5, r4, lsl #2]
6030e8f8:	8593302c 	ldrhi	r3, [r3, #44]	; 0x2c
6030e8fc:	85893000 	strhi	r3, [r9]
6030e900:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030e904:	e7951104 	ldr	r1, [r5, r4, lsl #2]
6030e908:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
6030e90c:	e2811004 	add	r1, r1, #4
6030e910:	e0207390 	mla	r0, r0, r3, r7
6030e914:	eb00066c 	bl	603102cc <vListInsertEnd>
6030e918:	eaffff3e 	b	6030e618 <vTaskSwitchContext+0x40c>
6030e91c:	e5921008 	ldr	r1, [r2, #8]
6030e920:	e1510003 	cmp	r1, r3
6030e924:	1affff1e 	bne	6030e5a4 <vTaskSwitchContext+0x398>
6030e928:	e592300c 	ldr	r3, [r2, #12]
6030e92c:	e1530001 	cmp	r3, r1
6030e930:	1affff1b 	bne	6030e5a4 <vTaskSwitchContext+0x398>
6030e934:	eaffff2b 	b	6030e5e8 <vTaskSwitchContext+0x3dc>
6030e938:	e5960000 	ldr	r0, [r6]
6030e93c:	e7951104 	ldr	r1, [r5, r4, lsl #2]
6030e940:	e2811004 	add	r1, r1, #4
6030e944:	eb000660 	bl	603102cc <vListInsertEnd>
6030e948:	eaffff30 	b	6030e610 <vTaskSwitchContext+0x404>

6030e94c <vTaskInternalSetTimeOutState>:
6030e94c:	e3042008 	movw	r2, #16392	; 0x4008
6030e950:	e3462032 	movt	r2, #24626	; 0x6032
6030e954:	e3043064 	movw	r3, #16484	; 0x4064
6030e958:	e3463032 	movt	r3, #24626	; 0x6032
6030e95c:	e5922000 	ldr	r2, [r2]
6030e960:	e5933000 	ldr	r3, [r3]
6030e964:	e1c020f0 	strd	r2, [r0]
6030e968:	e12fff1e 	bx	lr

6030e96c <vTaskMissedYield>:
6030e96c:	e92d4010 	push	{r4, lr}
6030e970:	eb000e26 	bl	60312210 <ulPortGetCoreId>
6030e974:	e3043068 	movw	r3, #16488	; 0x4068
6030e978:	e3463032 	movt	r3, #24626	; 0x6032
6030e97c:	e3a02001 	mov	r2, #1
6030e980:	e7832100 	str	r2, [r3, r0, lsl #2]
6030e984:	e8bd8010 	pop	{r4, pc}

6030e988 <eTaskConfirmSleepModeStatus>:
6030e988:	e3043010 	movw	r3, #16400	; 0x4010
6030e98c:	e3463032 	movt	r3, #24626	; 0x6032
6030e990:	e5933000 	ldr	r3, [r3]
6030e994:	e3530000 	cmp	r3, #0
6030e998:	0a000001 	beq	6030e9a4 <eTaskConfirmSleepModeStatus+0x1c>
6030e99c:	e3a00000 	mov	r0, #0
6030e9a0:	e12fff1e 	bx	lr
6030e9a4:	e92d4010 	push	{r4, lr}
6030e9a8:	eb000dfd 	bl	603121a4 <ulPortInterruptLock>
6030e9ac:	e1a04000 	mov	r4, r0
6030e9b0:	eb000e16 	bl	60312210 <ulPortGetCoreId>
6030e9b4:	e3043068 	movw	r3, #16488	; 0x4068
6030e9b8:	e3463032 	movt	r3, #24626	; 0x6032
6030e9bc:	e1a02000 	mov	r2, r0
6030e9c0:	e1a00004 	mov	r0, r4
6030e9c4:	e7934102 	ldr	r4, [r3, r2, lsl #2]
6030e9c8:	eb000dfa 	bl	603121b8 <ulPortInterruptUnLock>
6030e9cc:	e3540000 	cmp	r4, #0
6030e9d0:	0a000001 	beq	6030e9dc <eTaskConfirmSleepModeStatus+0x54>
6030e9d4:	e3a00000 	mov	r0, #0
6030e9d8:	e8bd8010 	pop	{r4, pc}
6030e9dc:	e3033fc0 	movw	r3, #16320	; 0x3fc0
6030e9e0:	e3463032 	movt	r3, #24626	; 0x6032
6030e9e4:	e3042028 	movw	r2, #16424	; 0x4028
6030e9e8:	e3462032 	movt	r2, #24626	; 0x6032
6030e9ec:	e5933000 	ldr	r3, [r3]
6030e9f0:	e5920000 	ldr	r0, [r2]
6030e9f4:	e2433001 	sub	r3, r3, #1
6030e9f8:	e1500003 	cmp	r0, r3
6030e9fc:	13a00001 	movne	r0, #1
6030ea00:	03a00002 	moveq	r0, #2
6030ea04:	e8bd8010 	pop	{r4, pc}

6030ea08 <xTaskGetSchedulerState>:
6030ea08:	e3043024 	movw	r3, #16420	; 0x4024
6030ea0c:	e3463032 	movt	r3, #24626	; 0x6032
6030ea10:	e92d4070 	push	{r4, r5, r6, lr}
6030ea14:	e5933000 	ldr	r3, [r3]
6030ea18:	e3530000 	cmp	r3, #0
6030ea1c:	03a04001 	moveq	r4, #1
6030ea20:	1a000001 	bne	6030ea2c <xTaskGetSchedulerState+0x24>
6030ea24:	e1a00004 	mov	r0, r4
6030ea28:	e8bd8070 	pop	{r4, r5, r6, pc}
6030ea2c:	eb000ddc 	bl	603121a4 <ulPortInterruptLock>
6030ea30:	e1a05000 	mov	r5, r0
6030ea34:	eb000db4 	bl	6031210c <xPortSpinLockTask>
6030ea38:	e3033fc8 	movw	r3, #16328	; 0x3fc8
6030ea3c:	e3463032 	movt	r3, #24626	; 0x6032
6030ea40:	e5933000 	ldr	r3, [r3]
6030ea44:	e3530000 	cmp	r3, #0
6030ea48:	03a04002 	moveq	r4, #2
6030ea4c:	13a04000 	movne	r4, #0
6030ea50:	eb000db8 	bl	60312138 <xPortSpinUnLockTask>
6030ea54:	e1a00005 	mov	r0, r5
6030ea58:	eb000dd6 	bl	603121b8 <ulPortInterruptUnLock>
6030ea5c:	e1a00004 	mov	r0, r4
6030ea60:	e8bd8070 	pop	{r4, r5, r6, pc}

6030ea64 <vTaskYieldWithinAPI>:
6030ea64:	e92d4010 	push	{r4, lr}
6030ea68:	eb000dcd 	bl	603121a4 <ulPortInterruptLock>
6030ea6c:	e1a04000 	mov	r4, r0
6030ea70:	eb000de6 	bl	60312210 <ulPortGetCoreId>
6030ea74:	e3033ec0 	movw	r3, #16064	; 0x3ec0
6030ea78:	e3463032 	movt	r3, #24626	; 0x6032
6030ea7c:	e1a02000 	mov	r2, r0
6030ea80:	e1a00004 	mov	r0, r4
6030ea84:	e7934102 	ldr	r4, [r3, r2, lsl #2]
6030ea88:	eb000dca 	bl	603121b8 <ulPortInterruptUnLock>
6030ea8c:	e5943058 	ldr	r3, [r4, #88]	; 0x58
6030ea90:	e3530000 	cmp	r3, #0
6030ea94:	1a000001 	bne	6030eaa0 <vTaskYieldWithinAPI+0x3c>
6030ea98:	ef000000 	svc	0x00000000
6030ea9c:	e8bd8010 	pop	{r4, pc}
6030eaa0:	eb000dda 	bl	60312210 <ulPortGetCoreId>
6030eaa4:	e3043068 	movw	r3, #16488	; 0x4068
6030eaa8:	e3463032 	movt	r3, #24626	; 0x6032
6030eaac:	e3a02001 	mov	r2, #1
6030eab0:	e7832100 	str	r2, [r3, r0, lsl #2]
6030eab4:	e8bd8010 	pop	{r4, pc}

6030eab8 <vTaskEnterCritical>:
6030eab8:	e92d4070 	push	{r4, r5, r6, lr}
6030eabc:	eb000db8 	bl	603121a4 <ulPortInterruptLock>
6030eac0:	eb000dd2 	bl	60312210 <ulPortGetCoreId>
6030eac4:	e3043024 	movw	r3, #16420	; 0x4024
6030eac8:	e3463032 	movt	r3, #24626	; 0x6032
6030eacc:	e5933000 	ldr	r3, [r3]
6030ead0:	e3530000 	cmp	r3, #0
6030ead4:	08bd8070 	popeq	{r4, r5, r6, pc}
6030ead8:	e3035ec0 	movw	r5, #16064	; 0x3ec0
6030eadc:	e3465032 	movt	r5, #24626	; 0x6032
6030eae0:	e1a04000 	mov	r4, r0
6030eae4:	e7953100 	ldr	r3, [r5, r0, lsl #2]
6030eae8:	e5933058 	ldr	r3, [r3, #88]	; 0x58
6030eaec:	e3530000 	cmp	r3, #0
6030eaf0:	0a000004 	beq	6030eb08 <vTaskEnterCritical+0x50>
6030eaf4:	e7952104 	ldr	r2, [r5, r4, lsl #2]
6030eaf8:	e5923058 	ldr	r3, [r2, #88]	; 0x58
6030eafc:	e2833001 	add	r3, r3, #1
6030eb00:	e5823058 	str	r3, [r2, #88]	; 0x58
6030eb04:	e8bd8070 	pop	{r4, r5, r6, pc}
6030eb08:	eb000d7f 	bl	6031210c <xPortSpinLockTask>
6030eb0c:	eafffff8 	b	6030eaf4 <vTaskEnterCritical+0x3c>

6030eb10 <GetOSCriticalNesting>:
6030eb10:	e3033ec0 	movw	r3, #16064	; 0x3ec0
6030eb14:	e3463032 	movt	r3, #24626	; 0x6032
6030eb18:	e7933100 	ldr	r3, [r3, r0, lsl #2]
6030eb1c:	e5930058 	ldr	r0, [r3, #88]	; 0x58
6030eb20:	e12fff1e 	bx	lr

6030eb24 <vTaskExitCritical>:
6030eb24:	e92d4070 	push	{r4, r5, r6, lr}
6030eb28:	eb000db8 	bl	60312210 <ulPortGetCoreId>
6030eb2c:	e3043024 	movw	r3, #16420	; 0x4024
6030eb30:	e3463032 	movt	r3, #24626	; 0x6032
6030eb34:	e5933000 	ldr	r3, [r3]
6030eb38:	e3530000 	cmp	r3, #0
6030eb3c:	08bd8070 	popeq	{r4, r5, r6, pc}
6030eb40:	e3035ec0 	movw	r5, #16064	; 0x3ec0
6030eb44:	e3465032 	movt	r5, #24626	; 0x6032
6030eb48:	e1a04000 	mov	r4, r0
6030eb4c:	e7953100 	ldr	r3, [r5, r0, lsl #2]
6030eb50:	e5933058 	ldr	r3, [r3, #88]	; 0x58
6030eb54:	e3530000 	cmp	r3, #0
6030eb58:	0a000021 	beq	6030ebe4 <vTaskExitCritical+0xc0>
6030eb5c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030eb60:	e5933058 	ldr	r3, [r3, #88]	; 0x58
6030eb64:	e3530000 	cmp	r3, #0
6030eb68:	08bd8070 	popeq	{r4, r5, r6, pc}
6030eb6c:	e7952104 	ldr	r2, [r5, r4, lsl #2]
6030eb70:	e7951104 	ldr	r1, [r5, r4, lsl #2]
6030eb74:	e5923058 	ldr	r3, [r2, #88]	; 0x58
6030eb78:	e2433001 	sub	r3, r3, #1
6030eb7c:	e5823058 	str	r3, [r2, #88]	; 0x58
6030eb80:	e5913058 	ldr	r3, [r1, #88]	; 0x58
6030eb84:	e3530000 	cmp	r3, #0
6030eb88:	18bd8070 	popne	{r4, r5, r6, pc}
6030eb8c:	eb000d8b 	bl	603121c0 <xPortCpuIsInInterrupt>
6030eb90:	e3500000 	cmp	r0, #0
6030eb94:	1a000017 	bne	6030ebf8 <vTaskExitCritical+0xd4>
6030eb98:	e3043068 	movw	r3, #16488	; 0x4068
6030eb9c:	e3463032 	movt	r3, #24626	; 0x6032
6030eba0:	e7933104 	ldr	r3, [r3, r4, lsl #2]
6030eba4:	e3530000 	cmp	r3, #0
6030eba8:	0a000004 	beq	6030ebc0 <vTaskExitCritical+0x9c>
6030ebac:	e3033fc8 	movw	r3, #16328	; 0x3fc8
6030ebb0:	e3463032 	movt	r3, #24626	; 0x6032
6030ebb4:	e5933000 	ldr	r3, [r3]
6030ebb8:	e3530000 	cmp	r3, #0
6030ebbc:	0a00000f 	beq	6030ec00 <vTaskExitCritical+0xdc>
6030ebc0:	eb000d5c 	bl	60312138 <xPortSpinUnLockTask>
6030ebc4:	e1a00004 	mov	r0, r4
6030ebc8:	ebfffa5f 	bl	6030d54c <GetComponentCriticalNesting>
6030ebcc:	e3500000 	cmp	r0, #0
6030ebd0:	18bd8070 	popne	{r4, r5, r6, pc}
6030ebd4:	f1080080 	cpsie	i
6030ebd8:	f57ff04f 	dsb	sy
6030ebdc:	f57ff06f 	isb	sy
6030ebe0:	e8bd8070 	pop	{r4, r5, r6, pc}
6030ebe4:	e30505f8 	movw	r0, #22008	; 0x55f8
6030ebe8:	e3460031 	movt	r0, #24625	; 0x6031
6030ebec:	e3011288 	movw	r1, #4744	; 0x1288
6030ebf0:	ebffed34 	bl	6030a0c8 <vAssertCalled>
6030ebf4:	eaffffd8 	b	6030eb5c <vTaskExitCritical+0x38>
6030ebf8:	e8bd4070 	pop	{r4, r5, r6, lr}
6030ebfc:	ea000d4d 	b	60312138 <xPortSpinUnLockTask>
6030ec00:	eb000d4c 	bl	60312138 <xPortSpinUnLockTask>
6030ec04:	ef000000 	svc	0x00000000
6030ec08:	eaffffed 	b	6030ebc4 <vTaskExitCritical+0xa0>

6030ec0c <prvAddNewTaskToReadyList>:
6030ec0c:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
6030ec10:	e3035ec0 	movw	r5, #16064	; 0x3ec0
6030ec14:	e3465032 	movt	r5, #24626	; 0x6032
6030ec18:	e1a06000 	mov	r6, r0
6030ec1c:	ebffffa5 	bl	6030eab8 <vTaskEnterCritical>
6030ec20:	e5957000 	ldr	r7, [r5]
6030ec24:	e3570000 	cmp	r7, #0
6030ec28:	0a00001b 	beq	6030ec9c <prvAddNewTaskToReadyList+0x90>
6030ec2c:	e5953004 	ldr	r3, [r5, #4]
6030ec30:	e3530000 	cmp	r3, #0
6030ec34:	0a000078 	beq	6030ee1c <prvAddNewTaskToReadyList+0x210>
6030ec38:	e5953000 	ldr	r3, [r5]
6030ec3c:	e5952000 	ldr	r2, [r5]
6030ec40:	e596102c 	ldr	r1, [r6, #44]	; 0x2c
6030ec44:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
6030ec48:	e5922034 	ldr	r2, [r2, #52]	; 0x34
6030ec4c:	e3520001 	cmp	r2, #1
6030ec50:	83a02000 	movhi	r2, #0
6030ec54:	93a02001 	movls	r2, #1
6030ec58:	e1510003 	cmp	r1, r3
6030ec5c:	33a02000 	movcc	r2, #0
6030ec60:	e3520000 	cmp	r2, #0
6030ec64:	e5952004 	ldr	r2, [r5, #4]
6030ec68:	01a03001 	moveq	r3, r1
6030ec6c:	13a07000 	movne	r7, #0
6030ec70:	e592102c 	ldr	r1, [r2, #44]	; 0x2c
6030ec74:	e5952004 	ldr	r2, [r5, #4]
6030ec78:	03e07000 	mvneq	r7, #0
6030ec7c:	e1530001 	cmp	r3, r1
6030ec80:	e5922034 	ldr	r2, [r2, #52]	; 0x34
6030ec84:	33a03000 	movcc	r3, #0
6030ec88:	23a03001 	movcs	r3, #1
6030ec8c:	e3520001 	cmp	r2, #1
6030ec90:	83a03000 	movhi	r3, #0
6030ec94:	e3530000 	cmp	r3, #0
6030ec98:	13a07001 	movne	r7, #1
6030ec9c:	e3033fc0 	movw	r3, #16320	; 0x3fc0
6030eca0:	e3463032 	movt	r3, #24626	; 0x6032
6030eca4:	e5932000 	ldr	r2, [r3]
6030eca8:	e2822001 	add	r2, r2, #1
6030ecac:	e5832000 	str	r2, [r3]
6030ecb0:	e5933000 	ldr	r3, [r3]
6030ecb4:	e3530001 	cmp	r3, #1
6030ecb8:	0a000030 	beq	6030ed80 <prvAddNewTaskToReadyList+0x174>
6030ecbc:	e3032fcc 	movw	r2, #16332	; 0x3fcc
6030ecc0:	e3462032 	movt	r2, #24626	; 0x6032
6030ecc4:	e2861004 	add	r1, r6, #4
6030ecc8:	e5923000 	ldr	r3, [r2]
6030eccc:	e2833001 	add	r3, r3, #1
6030ecd0:	e5823000 	str	r3, [r2]
6030ecd4:	e3e02000 	mvn	r2, #0
6030ecd8:	e5862034 	str	r2, [r6, #52]	; 0x34
6030ecdc:	e586305c 	str	r3, [r6, #92]	; 0x5c
6030ece0:	e5963034 	ldr	r3, [r6, #52]	; 0x34
6030ece4:	e3730002 	cmn	r3, #2
6030ece8:	0a00001f 	beq	6030ed6c <prvAddNewTaskToReadyList+0x160>
6030ecec:	e3033fd0 	movw	r3, #16336	; 0x3fd0
6030ecf0:	e3463032 	movt	r3, #24626	; 0x6032
6030ecf4:	e596202c 	ldr	r2, [r6, #44]	; 0x2c
6030ecf8:	e5930000 	ldr	r0, [r3]
6030ecfc:	e1520000 	cmp	r2, r0
6030ed00:	e3a00014 	mov	r0, #20
6030ed04:	85832000 	strhi	r2, [r3]
6030ed08:	e3033ed4 	movw	r3, #16084	; 0x3ed4
6030ed0c:	e3463032 	movt	r3, #24626	; 0x6032
6030ed10:	e0203290 	mla	r0, r0, r2, r3
6030ed14:	eb00056c 	bl	603102cc <vListInsertEnd>
6030ed18:	e3043024 	movw	r3, #16420	; 0x4024
6030ed1c:	e3463032 	movt	r3, #24626	; 0x6032
6030ed20:	e5933000 	ldr	r3, [r3]
6030ed24:	e3530000 	cmp	r3, #0
6030ed28:	0a000001 	beq	6030ed34 <prvAddNewTaskToReadyList+0x128>
6030ed2c:	e3570001 	cmp	r7, #1
6030ed30:	9a000001 	bls	6030ed3c <prvAddNewTaskToReadyList+0x130>
6030ed34:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
6030ed38:	eaffff79 	b	6030eb24 <vTaskExitCritical>
6030ed3c:	e7953107 	ldr	r3, [r5, r7, lsl #2]
6030ed40:	e3530000 	cmp	r3, #0
6030ed44:	0a000004 	beq	6030ed5c <prvAddNewTaskToReadyList+0x150>
6030ed48:	e7952107 	ldr	r2, [r5, r7, lsl #2]
6030ed4c:	e596302c 	ldr	r3, [r6, #44]	; 0x2c
6030ed50:	e592202c 	ldr	r2, [r2, #44]	; 0x2c
6030ed54:	e1520003 	cmp	r2, r3
6030ed58:	2afffff5 	bcs	6030ed34 <prvAddNewTaskToReadyList+0x128>
6030ed5c:	e1a00007 	mov	r0, r7
6030ed60:	ebfffc0a 	bl	6030dd90 <prvYieldCore>
6030ed64:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
6030ed68:	eaffff6d 	b	6030eb24 <vTaskExitCritical>
6030ed6c:	e3033ed0 	movw	r3, #16080	; 0x3ed0
6030ed70:	e3463032 	movt	r3, #24626	; 0x6032
6030ed74:	e5930000 	ldr	r0, [r3]
6030ed78:	eb000553 	bl	603102cc <vListInsertEnd>
6030ed7c:	eaffffe5 	b	6030ed18 <prvAddNewTaskToReadyList+0x10c>
6030ed80:	e3034ed4 	movw	r4, #16084	; 0x3ed4
6030ed84:	e3464032 	movt	r4, #24626	; 0x6032
6030ed88:	e28480dc 	add	r8, r4, #220	; 0xdc
6030ed8c:	e1a00004 	mov	r0, r4
6030ed90:	e2844014 	add	r4, r4, #20
6030ed94:	eb000540 	bl	6031029c <vListInitialise>
6030ed98:	e1580004 	cmp	r8, r4
6030ed9c:	1afffffa 	bne	6030ed8c <prvAddNewTaskToReadyList+0x180>
6030eda0:	e3039fd4 	movw	r9, #16340	; 0x3fd4
6030eda4:	e3469032 	movt	r9, #24626	; 0x6032
6030eda8:	e1a00009 	mov	r0, r9
6030edac:	e3038fe8 	movw	r8, #16360	; 0x3fe8
6030edb0:	e3468032 	movt	r8, #24626	; 0x6032
6030edb4:	eb000538 	bl	6031029c <vListInitialise>
6030edb8:	e1a00008 	mov	r0, r8
6030edbc:	eb000536 	bl	6031029c <vListInitialise>
6030edc0:	e304403c 	movw	r4, #16444	; 0x403c
6030edc4:	e3464032 	movt	r4, #24626	; 0x6032
6030edc8:	e3040010 	movw	r0, #16400	; 0x4010
6030edcc:	e3460032 	movt	r0, #24626	; 0x6032
6030edd0:	eb000531 	bl	6031029c <vListInitialise>
6030edd4:	e1a00004 	mov	r0, r4
6030edd8:	eb00052f 	bl	6031029c <vListInitialise>
6030eddc:	e3040050 	movw	r0, #16464	; 0x4050
6030ede0:	e3460032 	movt	r0, #24626	; 0x6032
6030ede4:	eb00052c 	bl	6031029c <vListInitialise>
6030ede8:	e3040028 	movw	r0, #16424	; 0x4028
6030edec:	e3460032 	movt	r0, #24626	; 0x6032
6030edf0:	eb000529 	bl	6031029c <vListInitialise>
6030edf4:	e3033ec8 	movw	r3, #16072	; 0x3ec8
6030edf8:	e3463032 	movt	r3, #24626	; 0x6032
6030edfc:	e5839000 	str	r9, [r3]
6030ee00:	e3033ecc 	movw	r3, #16076	; 0x3ecc
6030ee04:	e3463032 	movt	r3, #24626	; 0x6032
6030ee08:	e5838000 	str	r8, [r3]
6030ee0c:	e3033ed0 	movw	r3, #16080	; 0x3ed0
6030ee10:	e3463032 	movt	r3, #24626	; 0x6032
6030ee14:	e5834000 	str	r4, [r3]
6030ee18:	eaffffa7 	b	6030ecbc <prvAddNewTaskToReadyList+0xb0>
6030ee1c:	e3a07001 	mov	r7, #1
6030ee20:	eaffff9d 	b	6030ec9c <prvAddNewTaskToReadyList+0x90>

6030ee24 <xTaskCreateStatic>:
6030ee24:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030ee28:	e1a04000 	mov	r4, r0
6030ee2c:	e24dd01c 	sub	sp, sp, #28
6030ee30:	e1a09001 	mov	r9, r1
6030ee34:	e1a07002 	mov	r7, r2
6030ee38:	e59d8044 	ldr	r8, [sp, #68]	; 0x44
6030ee3c:	e59d6048 	ldr	r6, [sp, #72]	; 0x48
6030ee40:	e3580000 	cmp	r8, #0
6030ee44:	e1a05003 	mov	r5, r3
6030ee48:	13a0b001 	movne	fp, #1
6030ee4c:	03a0b000 	moveq	fp, #0
6030ee50:	0a00002f 	beq	6030ef14 <xTaskCreateStatic+0xf0>
6030ee54:	e3560000 	cmp	r6, #0
6030ee58:	13a0a001 	movne	sl, #1
6030ee5c:	03a0a000 	moveq	sl, #0
6030ee60:	0a00001c 	beq	6030eed8 <xTaskCreateStatic+0xb4>
6030ee64:	e3a03f5e 	mov	r3, #376	; 0x178
6030ee68:	e58d3014 	str	r3, [sp, #20]
6030ee6c:	e59d3014 	ldr	r3, [sp, #20]
6030ee70:	e3530f5e 	cmp	r3, #376	; 0x178
6030ee74:	1a000021 	bne	6030ef00 <xTaskCreateStatic+0xdc>
6030ee78:	e59d3014 	ldr	r3, [sp, #20]
6030ee7c:	e11b000a 	tst	fp, sl
6030ee80:	1a000002 	bne	6030ee90 <xTaskCreateStatic+0x6c>
6030ee84:	e3a00000 	mov	r0, #0
6030ee88:	e28dd01c 	add	sp, sp, #28
6030ee8c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030ee90:	e59dc040 	ldr	ip, [sp, #64]	; 0x40
6030ee94:	e5868030 	str	r8, [r6, #48]	; 0x30
6030ee98:	e1a03005 	mov	r3, r5
6030ee9c:	e58dc000 	str	ip, [sp]
6030eea0:	e1a02007 	mov	r2, r7
6030eea4:	e1a01009 	mov	r1, r9
6030eea8:	e1a00004 	mov	r0, r4
6030eeac:	e58d6008 	str	r6, [sp, #8]
6030eeb0:	e3a0c002 	mov	ip, #2
6030eeb4:	e5c6c171 	strb	ip, [r6, #369]	; 0x171
6030eeb8:	e28dc010 	add	ip, sp, #16
6030eebc:	e58dc004 	str	ip, [sp, #4]
6030eec0:	ebfffbca 	bl	6030ddf0 <prvInitialiseNewTask.constprop.0>
6030eec4:	e1a00006 	mov	r0, r6
6030eec8:	ebffff4f 	bl	6030ec0c <prvAddNewTaskToReadyList>
6030eecc:	e59d0010 	ldr	r0, [sp, #16]
6030eed0:	e28dd01c 	add	sp, sp, #28
6030eed4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030eed8:	e3001376 	movw	r1, #886	; 0x376
6030eedc:	e30505f8 	movw	r0, #22008	; 0x55f8
6030eee0:	e3460031 	movt	r0, #24625	; 0x6031
6030eee4:	ebffec77 	bl	6030a0c8 <vAssertCalled>
6030eee8:	e3a03f5e 	mov	r3, #376	; 0x178
6030eeec:	e58d3014 	str	r3, [sp, #20]
6030eef0:	e59d3014 	ldr	r3, [sp, #20]
6030eef4:	e3530f5e 	cmp	r3, #376	; 0x178
6030eef8:	059d3014 	ldreq	r3, [sp, #20]
6030eefc:	0affffe0 	beq	6030ee84 <xTaskCreateStatic+0x60>
6030ef00:	e300137e 	movw	r1, #894	; 0x37e
6030ef04:	e30505f8 	movw	r0, #22008	; 0x55f8
6030ef08:	e3460031 	movt	r0, #24625	; 0x6031
6030ef0c:	ebffec6d 	bl	6030a0c8 <vAssertCalled>
6030ef10:	eaffffd8 	b	6030ee78 <xTaskCreateStatic+0x54>
6030ef14:	e30505f8 	movw	r0, #22008	; 0x55f8
6030ef18:	e3460031 	movt	r0, #24625	; 0x6031
6030ef1c:	e3001375 	movw	r1, #885	; 0x375
6030ef20:	ebffec68 	bl	6030a0c8 <vAssertCalled>
6030ef24:	eaffffca 	b	6030ee54 <xTaskCreateStatic+0x30>

6030ef28 <vTaskStartScheduler>:
6030ef28:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030ef2c:	e3036ffc 	movw	r6, #16380	; 0x3ffc
6030ef30:	e3466032 	movt	r6, #24626	; 0x6032
6030ef34:	e24dd03c 	sub	sp, sp, #60	; 0x3c
6030ef38:	e3007018 	movw	r7, #24
6030ef3c:	e3467031 	movt	r7, #24625	; 0x6031
6030ef40:	e3035ec0 	movw	r5, #16064	; 0x3ec0
6030ef44:	e3465032 	movt	r5, #24626	; 0x6032
6030ef48:	eb000938 	bl	60311430 <xTimerCreateTimerTask>
6030ef4c:	e3a04000 	mov	r4, #0
6030ef50:	e1a0a000 	mov	sl, r0
6030ef54:	e3a08049 	mov	r8, #73	; 0x49
6030ef58:	e35a0000 	cmp	sl, #0
6030ef5c:	0a000032 	beq	6030f02c <vTaskStartScheduler+0x104>
6030ef60:	e3051688 	movw	r1, #22152	; 0x5688
6030ef64:	e3461031 	movt	r1, #24625	; 0x6031
6030ef68:	e28d0021 	add	r0, sp, #33	; 0x21
6030ef6c:	e3a02000 	mov	r2, #0
6030ef70:	e5cd8020 	strb	r8, [sp, #32]
6030ef74:	e5f13001 	ldrb	r3, [r1, #1]!
6030ef78:	e1a0c002 	mov	ip, r2
6030ef7c:	e3530000 	cmp	r3, #0
6030ef80:	e2822001 	add	r2, r2, #1
6030ef84:	e4c03001 	strb	r3, [r0], #1
6030ef88:	1afffff9 	bne	6030ef74 <vTaskStartScheduler+0x4c>
6030ef8c:	e28c1038 	add	r1, ip, #56	; 0x38
6030ef90:	e2822038 	add	r2, r2, #56	; 0x38
6030ef94:	e08d2002 	add	r2, sp, r2
6030ef98:	e08dc001 	add	ip, sp, r1
6030ef9c:	e3540000 	cmp	r4, #0
6030efa0:	e2841030 	add	r1, r4, #48	; 0x30
6030efa4:	e28d0014 	add	r0, sp, #20
6030efa8:	e5421018 	strb	r1, [r2, #-24]	; 0xffffffe8
6030efac:	e58d3014 	str	r3, [sp, #20]
6030efb0:	e28d201c 	add	r2, sp, #28
6030efb4:	e28d1018 	add	r1, sp, #24
6030efb8:	e54c3016 	strb	r3, [ip, #-22]	; 0xffffffea
6030efbc:	e58d3018 	str	r3, [sp, #24]
6030efc0:	0a00001d 	beq	6030f03c <vTaskStartScheduler+0x114>
6030efc4:	eb000cb8 	bl	603122ac <vApplicationGetPassiveIdleTaskMemory>
6030efc8:	e59d1014 	ldr	r1, [sp, #20]
6030efcc:	e59d2018 	ldr	r2, [sp, #24]
6030efd0:	e3a0b000 	mov	fp, #0
6030efd4:	e1a0300b 	mov	r3, fp
6030efd8:	e58d1008 	str	r1, [sp, #8]
6030efdc:	e58d2004 	str	r2, [sp, #4]
6030efe0:	e28d1020 	add	r1, sp, #32
6030efe4:	e59d201c 	ldr	r2, [sp, #28]
6030efe8:	e1a00007 	mov	r0, r7
6030efec:	e58db000 	str	fp, [sp]
6030eff0:	ebffff8b 	bl	6030ee24 <xTaskCreateStatic>
6030eff4:	e7850104 	str	r0, [r5, r4, lsl #2]
6030eff8:	e1a09000 	mov	r9, r0
6030effc:	e4860004 	str	r0, [r6], #4
6030f000:	e7950104 	ldr	r0, [r5, r4, lsl #2]
6030f004:	e059a00b 	subs	sl, r9, fp
6030f008:	e2800004 	add	r0, r0, #4
6030f00c:	13a0a001 	movne	sl, #1
6030f010:	eb0004ce 	bl	60310350 <uxListRemove>
6030f014:	e7953104 	ldr	r3, [r5, r4, lsl #2]
6030f018:	e3540001 	cmp	r4, #1
6030f01c:	e5834034 	str	r4, [r3, #52]	; 0x34
6030f020:	1a000003 	bne	6030f034 <vTaskStartScheduler+0x10c>
6030f024:	e159000b 	cmp	r9, fp
6030f028:	1a000005 	bne	6030f044 <vTaskStartScheduler+0x11c>
6030f02c:	e28dd03c 	add	sp, sp, #60	; 0x3c
6030f030:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030f034:	e3a04001 	mov	r4, #1
6030f038:	eaffffc6 	b	6030ef58 <vTaskStartScheduler+0x30>
6030f03c:	eb000c91 	bl	60312288 <vApplicationGetIdleTaskMemory>
6030f040:	eaffffe0 	b	6030efc8 <vTaskStartScheduler+0xa0>
6030f044:	eb000c56 	bl	603121a4 <ulPortInterruptLock>
6030f048:	eb000c55 	bl	603121a4 <ulPortInterruptLock>
6030f04c:	e1a06000 	mov	r6, r0
6030f050:	eb000c6e 	bl	60312210 <ulPortGetCoreId>
6030f054:	e1a03000 	mov	r3, r0
6030f058:	e1a00006 	mov	r0, r6
6030f05c:	e7955103 	ldr	r5, [r5, r3, lsl #2]
6030f060:	eb000c54 	bl	603121b8 <ulPortInterruptUnLock>
6030f064:	e3063000 	movw	r3, #24576	; 0x6000
6030f068:	e3463031 	movt	r3, #24625	; 0x6031
6030f06c:	e285507c 	add	r5, r5, #124	; 0x7c
6030f070:	e3041004 	movw	r1, #16388	; 0x4004
6030f074:	e3461032 	movt	r1, #24626	; 0x6032
6030f078:	e5835000 	str	r5, [r3]
6030f07c:	e3042024 	movw	r2, #16420	; 0x4024
6030f080:	e3462032 	movt	r2, #24626	; 0x6032
6030f084:	e3043064 	movw	r3, #16484	; 0x4064
6030f088:	e3463032 	movt	r3, #24626	; 0x6032
6030f08c:	e3e00000 	mvn	r0, #0
6030f090:	e5810000 	str	r0, [r1]
6030f094:	e5824000 	str	r4, [r2]
6030f098:	e583b000 	str	fp, [r3]
6030f09c:	eb000c07 	bl	603120c0 <xPortStartScheduler>
6030f0a0:	e28dd03c 	add	sp, sp, #60	; 0x3c
6030f0a4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

6030f0a8 <xTaskCreate>:
6030f0a8:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
6030f0ac:	e1a07000 	mov	r7, r0
6030f0b0:	e24dd014 	sub	sp, sp, #20
6030f0b4:	e1a00102 	lsl	r0, r2, #2
6030f0b8:	e1a05002 	mov	r5, r2
6030f0bc:	e1a08001 	mov	r8, r1
6030f0c0:	e1a09003 	mov	r9, r3
6030f0c4:	eb000b1e 	bl	60311d44 <pvPortMalloc>
6030f0c8:	e2504000 	subs	r4, r0, #0
6030f0cc:	03e00000 	mvneq	r0, #0
6030f0d0:	0a000013 	beq	6030f124 <xTaskCreate+0x7c>
6030f0d4:	e3a00f5e 	mov	r0, #376	; 0x178
6030f0d8:	eb000b19 	bl	60311d44 <pvPortMalloc>
6030f0dc:	e2506000 	subs	r6, r0, #0
6030f0e0:	0a000011 	beq	6030f12c <xTaskCreate+0x84>
6030f0e4:	e3a0c000 	mov	ip, #0
6030f0e8:	e5c6c171 	strb	ip, [r6, #369]	; 0x171
6030f0ec:	e59dc034 	ldr	ip, [sp, #52]	; 0x34
6030f0f0:	e5864030 	str	r4, [r6, #48]	; 0x30
6030f0f4:	e58dc004 	str	ip, [sp, #4]
6030f0f8:	e59dc030 	ldr	ip, [sp, #48]	; 0x30
6030f0fc:	e1a03009 	mov	r3, r9
6030f100:	e1a02005 	mov	r2, r5
6030f104:	e1a01008 	mov	r1, r8
6030f108:	e1a00007 	mov	r0, r7
6030f10c:	e58dc000 	str	ip, [sp]
6030f110:	e58d6008 	str	r6, [sp, #8]
6030f114:	ebfffb35 	bl	6030ddf0 <prvInitialiseNewTask.constprop.0>
6030f118:	e1a00006 	mov	r0, r6
6030f11c:	ebfffeba 	bl	6030ec0c <prvAddNewTaskToReadyList>
6030f120:	e3a00001 	mov	r0, #1
6030f124:	e28dd014 	add	sp, sp, #20
6030f128:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
6030f12c:	e1a00004 	mov	r0, r4
6030f130:	eb000a48 	bl	60311a58 <vPortFree>
6030f134:	e3e00000 	mvn	r0, #0
6030f138:	eafffff9 	b	6030f124 <xTaskCreate+0x7c>

6030f13c <prvAddCurrentTaskToDelayedList>:
6030f13c:	e3043064 	movw	r3, #16484	; 0x4064
6030f140:	e3463032 	movt	r3, #24626	; 0x6032
6030f144:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
6030f148:	e1a06001 	mov	r6, r1
6030f14c:	e5938000 	ldr	r8, [r3]
6030f150:	e1a05000 	mov	r5, r0
6030f154:	eb000c12 	bl	603121a4 <ulPortInterruptLock>
6030f158:	e1a04000 	mov	r4, r0
6030f15c:	eb000c2b 	bl	60312210 <ulPortGetCoreId>
6030f160:	e1a03000 	mov	r3, r0
6030f164:	e1a00004 	mov	r0, r4
6030f168:	e3034ec0 	movw	r4, #16064	; 0x3ec0
6030f16c:	e3464032 	movt	r4, #24626	; 0x6032
6030f170:	e7947103 	ldr	r7, [r4, r3, lsl #2]
6030f174:	eb000c0f 	bl	603121b8 <ulPortInterruptUnLock>
6030f178:	e3a03000 	mov	r3, #0
6030f17c:	e5c73172 	strb	r3, [r7, #370]	; 0x172
6030f180:	ebfffe4c 	bl	6030eab8 <vTaskEnterCritical>
6030f184:	eb000c06 	bl	603121a4 <ulPortInterruptLock>
6030f188:	e1a07000 	mov	r7, r0
6030f18c:	eb000c1f 	bl	60312210 <ulPortGetCoreId>
6030f190:	e1a03000 	mov	r3, r0
6030f194:	e1a00007 	mov	r0, r7
6030f198:	e7947103 	ldr	r7, [r4, r3, lsl #2]
6030f19c:	eb000c05 	bl	603121b8 <ulPortInterruptUnLock>
6030f1a0:	e5973034 	ldr	r3, [r7, #52]	; 0x34
6030f1a4:	e3730003 	cmn	r3, #3
6030f1a8:	0a000049 	beq	6030f2d4 <prvAddCurrentTaskToDelayedList+0x198>
6030f1ac:	e2566000 	subs	r6, r6, #0
6030f1b0:	13a06001 	movne	r6, #1
6030f1b4:	e3750001 	cmn	r5, #1
6030f1b8:	13a06000 	movne	r6, #0
6030f1bc:	e3560000 	cmp	r6, #0
6030f1c0:	1a000024 	bne	6030f258 <prvAddCurrentTaskToDelayedList+0x11c>
6030f1c4:	e0985005 	adds	r5, r8, r5
6030f1c8:	23a07001 	movcs	r7, #1
6030f1cc:	33a07000 	movcc	r7, #0
6030f1d0:	eb000bf3 	bl	603121a4 <ulPortInterruptLock>
6030f1d4:	e1a06000 	mov	r6, r0
6030f1d8:	eb000c0c 	bl	60312210 <ulPortGetCoreId>
6030f1dc:	e1a03000 	mov	r3, r0
6030f1e0:	e1a00006 	mov	r0, r6
6030f1e4:	e7946103 	ldr	r6, [r4, r3, lsl #2]
6030f1e8:	eb000bf2 	bl	603121b8 <ulPortInterruptUnLock>
6030f1ec:	e3570000 	cmp	r7, #0
6030f1f0:	e5865004 	str	r5, [r6, #4]
6030f1f4:	0a000023 	beq	6030f288 <prvAddCurrentTaskToDelayedList+0x14c>
6030f1f8:	e3033ecc 	movw	r3, #16076	; 0x3ecc
6030f1fc:	e3463032 	movt	r3, #24626	; 0x6032
6030f200:	e5936000 	ldr	r6, [r3]
6030f204:	eb000be6 	bl	603121a4 <ulPortInterruptLock>
6030f208:	e1a05000 	mov	r5, r0
6030f20c:	eb000bff 	bl	60312210 <ulPortGetCoreId>
6030f210:	e1a03000 	mov	r3, r0
6030f214:	e1a00005 	mov	r0, r5
6030f218:	e7945103 	ldr	r5, [r4, r3, lsl #2]
6030f21c:	eb000be5 	bl	603121b8 <ulPortInterruptUnLock>
6030f220:	e2851004 	add	r1, r5, #4
6030f224:	e1a00006 	mov	r0, r6
6030f228:	eb000432 	bl	603102f8 <vListInsert>
6030f22c:	eb000bdc 	bl	603121a4 <ulPortInterruptLock>
6030f230:	e1a05000 	mov	r5, r0
6030f234:	eb000bf5 	bl	60312210 <ulPortGetCoreId>
6030f238:	e1a03000 	mov	r3, r0
6030f23c:	e1a00005 	mov	r0, r5
6030f240:	e7944103 	ldr	r4, [r4, r3, lsl #2]
6030f244:	eb000bdb 	bl	603121b8 <ulPortInterruptUnLock>
6030f248:	e3e03001 	mvn	r3, #1
6030f24c:	e5843034 	str	r3, [r4, #52]	; 0x34
6030f250:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
6030f254:	eafffe32 	b	6030eb24 <vTaskExitCritical>
6030f258:	eb000bd1 	bl	603121a4 <ulPortInterruptLock>
6030f25c:	e1a05000 	mov	r5, r0
6030f260:	eb000bea 	bl	60312210 <ulPortGetCoreId>
6030f264:	e1a03000 	mov	r3, r0
6030f268:	e1a00005 	mov	r0, r5
6030f26c:	e7945103 	ldr	r5, [r4, r3, lsl #2]
6030f270:	eb000bd0 	bl	603121b8 <ulPortInterruptUnLock>
6030f274:	e2851004 	add	r1, r5, #4
6030f278:	e3040028 	movw	r0, #16424	; 0x4028
6030f27c:	e3460032 	movt	r0, #24626	; 0x6032
6030f280:	eb000411 	bl	603102cc <vListInsertEnd>
6030f284:	eaffffe8 	b	6030f22c <prvAddCurrentTaskToDelayedList+0xf0>
6030f288:	e3033ec8 	movw	r3, #16072	; 0x3ec8
6030f28c:	e3463032 	movt	r3, #24626	; 0x6032
6030f290:	e5937000 	ldr	r7, [r3]
6030f294:	eb000bc2 	bl	603121a4 <ulPortInterruptLock>
6030f298:	e1a06000 	mov	r6, r0
6030f29c:	eb000bdb 	bl	60312210 <ulPortGetCoreId>
6030f2a0:	e1a03000 	mov	r3, r0
6030f2a4:	e1a00006 	mov	r0, r6
6030f2a8:	e7946103 	ldr	r6, [r4, r3, lsl #2]
6030f2ac:	eb000bc1 	bl	603121b8 <ulPortInterruptUnLock>
6030f2b0:	e2861004 	add	r1, r6, #4
6030f2b4:	e1a00007 	mov	r0, r7
6030f2b8:	eb00040e 	bl	603102f8 <vListInsert>
6030f2bc:	e3043004 	movw	r3, #16388	; 0x4004
6030f2c0:	e3463032 	movt	r3, #24626	; 0x6032
6030f2c4:	e5932000 	ldr	r2, [r3]
6030f2c8:	e1520005 	cmp	r2, r5
6030f2cc:	85835000 	strhi	r5, [r3]
6030f2d0:	eaffffd5 	b	6030f22c <prvAddCurrentTaskToDelayedList+0xf0>
6030f2d4:	eb000bb2 	bl	603121a4 <ulPortInterruptLock>
6030f2d8:	e1a05000 	mov	r5, r0
6030f2dc:	eb000bcb 	bl	60312210 <ulPortGetCoreId>
6030f2e0:	e1a03000 	mov	r3, r0
6030f2e4:	e1a00005 	mov	r0, r5
6030f2e8:	e7945103 	ldr	r5, [r4, r3, lsl #2]
6030f2ec:	eb000bb1 	bl	603121b8 <ulPortInterruptUnLock>
6030f2f0:	e5953028 	ldr	r3, [r5, #40]	; 0x28
6030f2f4:	e3530000 	cmp	r3, #0
6030f2f8:	0affffd4 	beq	6030f250 <prvAddCurrentTaskToDelayedList+0x114>
6030f2fc:	eb000ba8 	bl	603121a4 <ulPortInterruptLock>
6030f300:	e1a05000 	mov	r5, r0
6030f304:	eb000bc1 	bl	60312210 <ulPortGetCoreId>
6030f308:	e1a03000 	mov	r3, r0
6030f30c:	e1a00005 	mov	r0, r5
6030f310:	e7944103 	ldr	r4, [r4, r3, lsl #2]
6030f314:	eb000ba7 	bl	603121b8 <ulPortInterruptUnLock>
6030f318:	e2840018 	add	r0, r4, #24
6030f31c:	eb00040b 	bl	60310350 <uxListRemove>
6030f320:	eaffffca 	b	6030f250 <prvAddCurrentTaskToDelayedList+0x114>

6030f324 <xTaskIncrementTick>:
6030f324:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030f328:	e24dd014 	sub	sp, sp, #20
6030f32c:	eb000bb7 	bl	60312210 <ulPortGetCoreId>
6030f330:	e58d0000 	str	r0, [sp]
6030f334:	ebfffddf 	bl	6030eab8 <vTaskEnterCritical>
6030f338:	e3033fc8 	movw	r3, #16328	; 0x3fc8
6030f33c:	e3463032 	movt	r3, #24626	; 0x6032
6030f340:	e5933000 	ldr	r3, [r3]
6030f344:	e3530000 	cmp	r3, #0
6030f348:	1a000038 	bne	6030f430 <xTaskIncrementTick+0x10c>
6030f34c:	e3043064 	movw	r3, #16484	; 0x4064
6030f350:	e3463032 	movt	r3, #24626	; 0x6032
6030f354:	e5937000 	ldr	r7, [r3]
6030f358:	e2877001 	add	r7, r7, #1
6030f35c:	e3570000 	cmp	r7, #0
6030f360:	e5837000 	str	r7, [r3]
6030f364:	0a00003b 	beq	6030f458 <xTaskIncrementTick+0x134>
6030f368:	e3043004 	movw	r3, #16388	; 0x4004
6030f36c:	e3463032 	movt	r3, #24626	; 0x6032
6030f370:	e58d3008 	str	r3, [sp, #8]
6030f374:	e59d3008 	ldr	r3, [sp, #8]
6030f378:	e5933000 	ldr	r3, [r3]
6030f37c:	e1530007 	cmp	r3, r7
6030f380:	9a000053 	bls	6030f4d4 <xTaskIncrementTick+0x1b0>
6030f384:	e3035ec0 	movw	r5, #16064	; 0x3ec0
6030f388:	e3465032 	movt	r5, #24626	; 0x6032
6030f38c:	e3039ed4 	movw	r9, #16084	; 0x3ed4
6030f390:	e3469032 	movt	r9, #24626	; 0x6032
6030f394:	e3046068 	movw	r6, #16488	; 0x4068
6030f398:	e3466032 	movt	r6, #24626	; 0x6032
6030f39c:	e5953000 	ldr	r3, [r5]
6030f3a0:	e3a02014 	mov	r2, #20
6030f3a4:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
6030f3a8:	e0030392 	mul	r3, r2, r3
6030f3ac:	e3a02014 	mov	r2, #20
6030f3b0:	e7993003 	ldr	r3, [r9, r3]
6030f3b4:	e3530000 	cmp	r3, #0
6030f3b8:	13a03001 	movne	r3, #1
6030f3bc:	15863000 	strne	r3, [r6]
6030f3c0:	e5953004 	ldr	r3, [r5, #4]
6030f3c4:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
6030f3c8:	e0030392 	mul	r3, r2, r3
6030f3cc:	e7993003 	ldr	r3, [r9, r3]
6030f3d0:	e3530000 	cmp	r3, #0
6030f3d4:	13a03001 	movne	r3, #1
6030f3d8:	15863004 	strne	r3, [r6, #4]
6030f3dc:	e5963000 	ldr	r3, [r6]
6030f3e0:	e3530000 	cmp	r3, #0
6030f3e4:	0a000004 	beq	6030f3fc <xTaskIncrementTick+0xd8>
6030f3e8:	e59d3000 	ldr	r3, [sp]
6030f3ec:	e3530000 	cmp	r3, #0
6030f3f0:	0a00008f 	beq	6030f634 <xTaskIncrementTick+0x310>
6030f3f4:	e3a00000 	mov	r0, #0
6030f3f8:	ebfffa64 	bl	6030dd90 <prvYieldCore>
6030f3fc:	e5964004 	ldr	r4, [r6, #4]
6030f400:	e3540000 	cmp	r4, #0
6030f404:	0a00000f 	beq	6030f448 <xTaskIncrementTick+0x124>
6030f408:	e59d3000 	ldr	r3, [sp]
6030f40c:	e3530001 	cmp	r3, #1
6030f410:	13a04000 	movne	r4, #0
6030f414:	0a000089 	beq	6030f640 <xTaskIncrementTick+0x31c>
6030f418:	e3a00001 	mov	r0, #1
6030f41c:	ebfffa5b 	bl	6030dd90 <prvYieldCore>
6030f420:	ebfffdbf 	bl	6030eb24 <vTaskExitCritical>
6030f424:	e1a00004 	mov	r0, r4
6030f428:	e28dd014 	add	sp, sp, #20
6030f42c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030f430:	e304300c 	movw	r3, #16396	; 0x400c
6030f434:	e3463032 	movt	r3, #24626	; 0x6032
6030f438:	e3a04000 	mov	r4, #0
6030f43c:	e5932000 	ldr	r2, [r3]
6030f440:	e2822001 	add	r2, r2, #1
6030f444:	e5832000 	str	r2, [r3]
6030f448:	ebfffdb5 	bl	6030eb24 <vTaskExitCritical>
6030f44c:	e1a00004 	mov	r0, r4
6030f450:	e28dd014 	add	sp, sp, #20
6030f454:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030f458:	e3034ec8 	movw	r4, #16072	; 0x3ec8
6030f45c:	e3464032 	movt	r4, #24626	; 0x6032
6030f460:	e5943000 	ldr	r3, [r4]
6030f464:	e5933000 	ldr	r3, [r3]
6030f468:	e3530000 	cmp	r3, #0
6030f46c:	1a00007e 	bne	6030f66c <xTaskIncrementTick+0x348>
6030f470:	e3032ecc 	movw	r2, #16076	; 0x3ecc
6030f474:	e3462032 	movt	r2, #24626	; 0x6032
6030f478:	e5941000 	ldr	r1, [r4]
6030f47c:	e3043008 	movw	r3, #16392	; 0x4008
6030f480:	e3463032 	movt	r3, #24626	; 0x6032
6030f484:	e5920000 	ldr	r0, [r2]
6030f488:	e5840000 	str	r0, [r4]
6030f48c:	e5821000 	str	r1, [r2]
6030f490:	e5932000 	ldr	r2, [r3]
6030f494:	e2822001 	add	r2, r2, #1
6030f498:	e5832000 	str	r2, [r3]
6030f49c:	e5943000 	ldr	r3, [r4]
6030f4a0:	e5933000 	ldr	r3, [r3]
6030f4a4:	e3530000 	cmp	r3, #0
6030f4a8:	1a000058 	bne	6030f610 <xTaskIncrementTick+0x2ec>
6030f4ac:	e3043004 	movw	r3, #16388	; 0x4004
6030f4b0:	e3463032 	movt	r3, #24626	; 0x6032
6030f4b4:	e1a02003 	mov	r2, r3
6030f4b8:	e58d3008 	str	r3, [sp, #8]
6030f4bc:	e3e03000 	mvn	r3, #0
6030f4c0:	e5823000 	str	r3, [r2]
6030f4c4:	e59d3008 	ldr	r3, [sp, #8]
6030f4c8:	e5933000 	ldr	r3, [r3]
6030f4cc:	e1530007 	cmp	r3, r7
6030f4d0:	8affffab 	bhi	6030f384 <xTaskIncrementTick+0x60>
6030f4d4:	e3034ec8 	movw	r4, #16072	; 0x3ec8
6030f4d8:	e3464032 	movt	r4, #24626	; 0x6032
6030f4dc:	e3035ec0 	movw	r5, #16064	; 0x3ec0
6030f4e0:	e3465032 	movt	r5, #24626	; 0x6032
6030f4e4:	e3039ed4 	movw	r9, #16084	; 0x3ed4
6030f4e8:	e3469032 	movt	r9, #24626	; 0x6032
6030f4ec:	e3046068 	movw	r6, #16488	; 0x4068
6030f4f0:	e3466032 	movt	r6, #24626	; 0x6032
6030f4f4:	e303afd0 	movw	sl, #16336	; 0x3fd0
6030f4f8:	e346a032 	movt	sl, #24626	; 0x6032
6030f4fc:	e3033ed0 	movw	r3, #16080	; 0x3ed0
6030f500:	e3463032 	movt	r3, #24626	; 0x6032
6030f504:	e58d9004 	str	r9, [sp, #4]
6030f508:	e58d300c 	str	r3, [sp, #12]
6030f50c:	ea000005 	b	6030f528 <xTaskIncrementTick+0x204>
6030f510:	e59d2000 	ldr	r2, [sp]
6030f514:	e7962102 	ldr	r2, [r6, r2, lsl #2]
6030f518:	e3520000 	cmp	r2, #0
6030f51c:	1a000024 	bne	6030f5b4 <xTaskIncrementTick+0x290>
6030f520:	e3a03001 	mov	r3, #1
6030f524:	e7863102 	str	r3, [r6, r2, lsl #2]
6030f528:	e5943000 	ldr	r3, [r4]
6030f52c:	e5933000 	ldr	r3, [r3]
6030f530:	e3530000 	cmp	r3, #0
6030f534:	0a00002b 	beq	6030f5e8 <xTaskIncrementTick+0x2c4>
6030f538:	e3a08014 	mov	r8, #20
6030f53c:	e5943000 	ldr	r3, [r4]
6030f540:	e593300c 	ldr	r3, [r3, #12]
6030f544:	e593900c 	ldr	r9, [r3, #12]
6030f548:	e5992004 	ldr	r2, [r9, #4]
6030f54c:	e1570002 	cmp	r7, r2
6030f550:	3a00003f 	bcc	6030f654 <xTaskIncrementTick+0x330>
6030f554:	e289b004 	add	fp, r9, #4
6030f558:	e1a0000b 	mov	r0, fp
6030f55c:	eb00037b 	bl	60310350 <uxListRemove>
6030f560:	e5993028 	ldr	r3, [r9, #40]	; 0x28
6030f564:	e3530000 	cmp	r3, #0
6030f568:	0a000001 	beq	6030f574 <xTaskIncrementTick+0x250>
6030f56c:	e2890018 	add	r0, r9, #24
6030f570:	eb000376 	bl	60310350 <uxListRemove>
6030f574:	e5993034 	ldr	r3, [r9, #52]	; 0x34
6030f578:	e3730002 	cmn	r3, #2
6030f57c:	0a00001e 	beq	6030f5fc <xTaskIncrementTick+0x2d8>
6030f580:	e599002c 	ldr	r0, [r9, #44]	; 0x2c
6030f584:	e59a3000 	ldr	r3, [sl]
6030f588:	e1a0100b 	mov	r1, fp
6030f58c:	e1500003 	cmp	r0, r3
6030f590:	e59d3004 	ldr	r3, [sp, #4]
6030f594:	858a0000 	strhi	r0, [sl]
6030f598:	e0203098 	mla	r0, r8, r0, r3
6030f59c:	eb00034a 	bl	603102cc <vListInsertEnd>
6030f5a0:	e5952000 	ldr	r2, [r5]
6030f5a4:	e599302c 	ldr	r3, [r9, #44]	; 0x2c
6030f5a8:	e592202c 	ldr	r2, [r2, #44]	; 0x2c
6030f5ac:	e1530002 	cmp	r3, r2
6030f5b0:	2affffd6 	bcs	6030f510 <xTaskIncrementTick+0x1ec>
6030f5b4:	e5952004 	ldr	r2, [r5, #4]
6030f5b8:	e592202c 	ldr	r2, [r2, #44]	; 0x2c
6030f5bc:	e1530002 	cmp	r3, r2
6030f5c0:	3a000004 	bcc	6030f5d8 <xTaskIncrementTick+0x2b4>
6030f5c4:	e59d3000 	ldr	r3, [sp]
6030f5c8:	e7963103 	ldr	r3, [r6, r3, lsl #2]
6030f5cc:	e3530000 	cmp	r3, #0
6030f5d0:	03a02001 	moveq	r2, #1
6030f5d4:	0affffd1 	beq	6030f520 <xTaskIncrementTick+0x1fc>
6030f5d8:	e5943000 	ldr	r3, [r4]
6030f5dc:	e5933000 	ldr	r3, [r3]
6030f5e0:	e3530000 	cmp	r3, #0
6030f5e4:	1affffd4 	bne	6030f53c <xTaskIncrementTick+0x218>
6030f5e8:	e59d2008 	ldr	r2, [sp, #8]
6030f5ec:	e3e03000 	mvn	r3, #0
6030f5f0:	e59d9004 	ldr	r9, [sp, #4]
6030f5f4:	e5823000 	str	r3, [r2]
6030f5f8:	eaffff67 	b	6030f39c <xTaskIncrementTick+0x78>
6030f5fc:	e59d300c 	ldr	r3, [sp, #12]
6030f600:	e1a0100b 	mov	r1, fp
6030f604:	e5930000 	ldr	r0, [r3]
6030f608:	eb00032f 	bl	603102cc <vListInsertEnd>
6030f60c:	eaffffe3 	b	6030f5a0 <xTaskIncrementTick+0x27c>
6030f610:	e5943000 	ldr	r3, [r4]
6030f614:	e3042004 	movw	r2, #16388	; 0x4004
6030f618:	e3462032 	movt	r2, #24626	; 0x6032
6030f61c:	e593300c 	ldr	r3, [r3, #12]
6030f620:	e58d2008 	str	r2, [sp, #8]
6030f624:	e593300c 	ldr	r3, [r3, #12]
6030f628:	e5933004 	ldr	r3, [r3, #4]
6030f62c:	e5823000 	str	r3, [r2]
6030f630:	eaffff4f 	b	6030f374 <xTaskIncrementTick+0x50>
6030f634:	e5963004 	ldr	r3, [r6, #4]
6030f638:	e3530000 	cmp	r3, #0
6030f63c:	1a000008 	bne	6030f664 <xTaskIncrementTick+0x340>
6030f640:	e3a04001 	mov	r4, #1
6030f644:	ebfffd36 	bl	6030eb24 <vTaskExitCritical>
6030f648:	e1a00004 	mov	r0, r4
6030f64c:	e28dd014 	add	sp, sp, #20
6030f650:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030f654:	e59d3008 	ldr	r3, [sp, #8]
6030f658:	e59d9004 	ldr	r9, [sp, #4]
6030f65c:	e5832000 	str	r2, [r3]
6030f660:	eaffff4d 	b	6030f39c <xTaskIncrementTick+0x78>
6030f664:	e3a04001 	mov	r4, #1
6030f668:	eaffff6a 	b	6030f418 <xTaskIncrementTick+0xf4>
6030f66c:	e30505f8 	movw	r0, #22008	; 0x55f8
6030f670:	e3460031 	movt	r0, #24625	; 0x6031
6030f674:	e3001bdd 	movw	r1, #3037	; 0xbdd
6030f678:	ebffea92 	bl	6030a0c8 <vAssertCalled>
6030f67c:	eaffff7b 	b	6030f470 <xTaskIncrementTick+0x14c>

6030f680 <xTaskResumeAll.part.0>:
6030f680:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
6030f684:	e3034fc8 	movw	r4, #16328	; 0x3fc8
6030f688:	e3464032 	movt	r4, #24626	; 0x6032
6030f68c:	e24dd00c 	sub	sp, sp, #12
6030f690:	ebfffd08 	bl	6030eab8 <vTaskEnterCritical>
6030f694:	eb000add 	bl	60312210 <ulPortGetCoreId>
6030f698:	e5943000 	ldr	r3, [r4]
6030f69c:	e1a05000 	mov	r5, r0
6030f6a0:	e3530000 	cmp	r3, #0
6030f6a4:	0a000061 	beq	6030f830 <xTaskResumeAll.part.0+0x1b0>
6030f6a8:	e5943000 	ldr	r3, [r4]
6030f6ac:	e2433001 	sub	r3, r3, #1
6030f6b0:	e5843000 	str	r3, [r4]
6030f6b4:	e5943000 	ldr	r3, [r4]
6030f6b8:	e3530000 	cmp	r3, #0
6030f6bc:	13a04000 	movne	r4, #0
6030f6c0:	1a000056 	bne	6030f820 <xTaskResumeAll.part.0+0x1a0>
6030f6c4:	e3033fc0 	movw	r3, #16320	; 0x3fc0
6030f6c8:	e3463032 	movt	r3, #24626	; 0x6032
6030f6cc:	e5934000 	ldr	r4, [r3]
6030f6d0:	e3540000 	cmp	r4, #0
6030f6d4:	0a000051 	beq	6030f820 <xTaskResumeAll.part.0+0x1a0>
6030f6d8:	e3046010 	movw	r6, #16400	; 0x4010
6030f6dc:	e3466032 	movt	r6, #24626	; 0x6032
6030f6e0:	e5963000 	ldr	r3, [r6]
6030f6e4:	e3530000 	cmp	r3, #0
6030f6e8:	03049068 	movweq	r9, #16488	; 0x4068
6030f6ec:	03469032 	movteq	r9, #24626	; 0x6032
6030f6f0:	0a00003b 	beq	6030f7e4 <xTaskResumeAll.part.0+0x164>
6030f6f4:	e3038ec0 	movw	r8, #16064	; 0x3ec0
6030f6f8:	e3468032 	movt	r8, #24626	; 0x6032
6030f6fc:	e3049068 	movw	r9, #16488	; 0x4068
6030f700:	e3469032 	movt	r9, #24626	; 0x6032
6030f704:	e3037fd0 	movw	r7, #16336	; 0x3fd0
6030f708:	e3467032 	movt	r7, #24626	; 0x6032
6030f70c:	e303aed4 	movw	sl, #16084	; 0x3ed4
6030f710:	e346a032 	movt	sl, #24626	; 0x6032
6030f714:	e3033ed0 	movw	r3, #16080	; 0x3ed0
6030f718:	e3463032 	movt	r3, #24626	; 0x6032
6030f71c:	e58d3004 	str	r3, [sp, #4]
6030f720:	ea00000e 	b	6030f760 <xTaskResumeAll.part.0+0xe0>
6030f724:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
6030f728:	e5972000 	ldr	r2, [r7]
6030f72c:	e1530002 	cmp	r3, r2
6030f730:	e020a390 	mla	r0, r0, r3, sl
6030f734:	85873000 	strhi	r3, [r7]
6030f738:	eb0002e3 	bl	603102cc <vListInsertEnd>
6030f73c:	e7983105 	ldr	r3, [r8, r5, lsl #2]
6030f740:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
6030f744:	e3a01001 	mov	r1, #1
6030f748:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
6030f74c:	e1520003 	cmp	r2, r3
6030f750:	27891105 	strcs	r1, [r9, r5, lsl #2]
6030f754:	e5963000 	ldr	r3, [r6]
6030f758:	e3530000 	cmp	r3, #0
6030f75c:	0a00000f 	beq	6030f7a0 <xTaskResumeAll.part.0+0x120>
6030f760:	e596300c 	ldr	r3, [r6, #12]
6030f764:	e593400c 	ldr	r4, [r3, #12]
6030f768:	e284b004 	add	fp, r4, #4
6030f76c:	e2840018 	add	r0, r4, #24
6030f770:	eb0002f6 	bl	60310350 <uxListRemove>
6030f774:	e1a0000b 	mov	r0, fp
6030f778:	eb0002f4 	bl	60310350 <uxListRemove>
6030f77c:	e5943034 	ldr	r3, [r4, #52]	; 0x34
6030f780:	e3a00014 	mov	r0, #20
6030f784:	e1a0100b 	mov	r1, fp
6030f788:	e3730002 	cmn	r3, #2
6030f78c:	1affffe4 	bne	6030f724 <xTaskResumeAll.part.0+0xa4>
6030f790:	e59d3004 	ldr	r3, [sp, #4]
6030f794:	e5930000 	ldr	r0, [r3]
6030f798:	eb0002cb 	bl	603102cc <vListInsertEnd>
6030f79c:	eaffffe6 	b	6030f73c <xTaskResumeAll.part.0+0xbc>
6030f7a0:	e3540000 	cmp	r4, #0
6030f7a4:	0a00000e 	beq	6030f7e4 <xTaskResumeAll.part.0+0x164>
6030f7a8:	e3033ec8 	movw	r3, #16072	; 0x3ec8
6030f7ac:	e3463032 	movt	r3, #24626	; 0x6032
6030f7b0:	e5932000 	ldr	r2, [r3]
6030f7b4:	e5922000 	ldr	r2, [r2]
6030f7b8:	e3520000 	cmp	r2, #0
6030f7bc:	03043004 	movweq	r3, #16388	; 0x4004
6030f7c0:	15932000 	ldrne	r2, [r3]
6030f7c4:	03463032 	movteq	r3, #24626	; 0x6032
6030f7c8:	13043004 	movwne	r3, #16388	; 0x4004
6030f7cc:	1592200c 	ldrne	r2, [r2, #12]
6030f7d0:	13463032 	movtne	r3, #24626	; 0x6032
6030f7d4:	03e02000 	mvneq	r2, #0
6030f7d8:	1592200c 	ldrne	r2, [r2, #12]
6030f7dc:	15922004 	ldrne	r2, [r2, #4]
6030f7e0:	e5832000 	str	r2, [r3]
6030f7e4:	e304600c 	movw	r6, #16396	; 0x400c
6030f7e8:	e3466032 	movt	r6, #24626	; 0x6032
6030f7ec:	e5964000 	ldr	r4, [r6]
6030f7f0:	e3540000 	cmp	r4, #0
6030f7f4:	0a000006 	beq	6030f814 <xTaskResumeAll.part.0+0x194>
6030f7f8:	e3a07001 	mov	r7, #1
6030f7fc:	ebfffec8 	bl	6030f324 <xTaskIncrementTick>
6030f800:	e3500000 	cmp	r0, #0
6030f804:	17897105 	strne	r7, [r9, r5, lsl #2]
6030f808:	e2544001 	subs	r4, r4, #1
6030f80c:	1afffffa 	bne	6030f7fc <xTaskResumeAll.part.0+0x17c>
6030f810:	e5864000 	str	r4, [r6]
6030f814:	e7994105 	ldr	r4, [r9, r5, lsl #2]
6030f818:	e2544000 	subs	r4, r4, #0
6030f81c:	13a04001 	movne	r4, #1
6030f820:	ebfffcbf 	bl	6030eb24 <vTaskExitCritical>
6030f824:	e1a00004 	mov	r0, r4
6030f828:	e28dd00c 	add	sp, sp, #12
6030f82c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
6030f830:	e3a01e99 	mov	r1, #2448	; 0x990
6030f834:	e30505f8 	movw	r0, #22008	; 0x55f8
6030f838:	e3460031 	movt	r0, #24625	; 0x6031
6030f83c:	ebffea21 	bl	6030a0c8 <vAssertCalled>
6030f840:	eaffff98 	b	6030f6a8 <xTaskResumeAll.part.0+0x28>

6030f844 <xTaskResumeAll>:
6030f844:	e3043024 	movw	r3, #16420	; 0x4024
6030f848:	e3463032 	movt	r3, #24626	; 0x6032
6030f84c:	e5930000 	ldr	r0, [r3]
6030f850:	e3500000 	cmp	r0, #0
6030f854:	012fff1e 	bxeq	lr
6030f858:	eaffff88 	b	6030f680 <xTaskResumeAll.part.0>

6030f85c <vTaskPlaceOnEventList>:
6030f85c:	e92d4070 	push	{r4, r5, r6, lr}
6030f860:	e1a05001 	mov	r5, r1
6030f864:	e2504000 	subs	r4, r0, #0
6030f868:	0a000011 	beq	6030f8b4 <vTaskPlaceOnEventList+0x58>
6030f86c:	ebfffc91 	bl	6030eab8 <vTaskEnterCritical>
6030f870:	eb000a4b 	bl	603121a4 <ulPortInterruptLock>
6030f874:	e1a06000 	mov	r6, r0
6030f878:	eb000a64 	bl	60312210 <ulPortGetCoreId>
6030f87c:	e3033ec0 	movw	r3, #16064	; 0x3ec0
6030f880:	e3463032 	movt	r3, #24626	; 0x6032
6030f884:	e1a02000 	mov	r2, r0
6030f888:	e1a00006 	mov	r0, r6
6030f88c:	e7936102 	ldr	r6, [r3, r2, lsl #2]
6030f890:	eb000a48 	bl	603121b8 <ulPortInterruptUnLock>
6030f894:	e2861018 	add	r1, r6, #24
6030f898:	e1a00004 	mov	r0, r4
6030f89c:	eb000295 	bl	603102f8 <vListInsert>
6030f8a0:	e1a00005 	mov	r0, r5
6030f8a4:	e3a01001 	mov	r1, #1
6030f8a8:	ebfffe23 	bl	6030f13c <prvAddCurrentTaskToDelayedList>
6030f8ac:	e8bd4070 	pop	{r4, r5, r6, lr}
6030f8b0:	eafffc9b 	b	6030eb24 <vTaskExitCritical>
6030f8b4:	e30505f8 	movw	r0, #22008	; 0x55f8
6030f8b8:	e3460031 	movt	r0, #24625	; 0x6031
6030f8bc:	e3001da2 	movw	r1, #3490	; 0xda2
6030f8c0:	ebffea00 	bl	6030a0c8 <vAssertCalled>
6030f8c4:	eaffffe8 	b	6030f86c <vTaskPlaceOnEventList+0x10>

6030f8c8 <vTaskPlaceOnEventListRestricted>:
6030f8c8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
6030f8cc:	e1a06001 	mov	r6, r1
6030f8d0:	e1a04002 	mov	r4, r2
6030f8d4:	e2505000 	subs	r5, r0, #0
6030f8d8:	0a000013 	beq	6030f92c <vTaskPlaceOnEventListRestricted+0x64>
6030f8dc:	ebfffc75 	bl	6030eab8 <vTaskEnterCritical>
6030f8e0:	eb000a2f 	bl	603121a4 <ulPortInterruptLock>
6030f8e4:	e1a07000 	mov	r7, r0
6030f8e8:	eb000a48 	bl	60312210 <ulPortGetCoreId>
6030f8ec:	e3033ec0 	movw	r3, #16064	; 0x3ec0
6030f8f0:	e3463032 	movt	r3, #24626	; 0x6032
6030f8f4:	e1a02000 	mov	r2, r0
6030f8f8:	e1a00007 	mov	r0, r7
6030f8fc:	e7937102 	ldr	r7, [r3, r2, lsl #2]
6030f900:	eb000a2c 	bl	603121b8 <ulPortInterruptUnLock>
6030f904:	e1a00005 	mov	r0, r5
6030f908:	e2871018 	add	r1, r7, #24
6030f90c:	eb00026e 	bl	603102cc <vListInsertEnd>
6030f910:	e3540000 	cmp	r4, #0
6030f914:	e1a01004 	mov	r1, r4
6030f918:	01a00006 	moveq	r0, r6
6030f91c:	13e00000 	mvnne	r0, #0
6030f920:	ebfffe05 	bl	6030f13c <prvAddCurrentTaskToDelayedList>
6030f924:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
6030f928:	eafffc7d 	b	6030eb24 <vTaskExitCritical>
6030f92c:	e30505f8 	movw	r0, #22008	; 0x55f8
6030f930:	e3460031 	movt	r0, #24625	; 0x6031
6030f934:	e3001dd5 	movw	r1, #3541	; 0xdd5
6030f938:	ebffe9e2 	bl	6030a0c8 <vAssertCalled>
6030f93c:	eaffffe6 	b	6030f8dc <vTaskPlaceOnEventListRestricted+0x14>

6030f940 <vTaskPlaceRemoveFromEventList>:
6030f940:	e92d4070 	push	{r4, r5, r6, lr}
6030f944:	ebfffc5b 	bl	6030eab8 <vTaskEnterCritical>
6030f948:	e3034ec0 	movw	r4, #16064	; 0x3ec0
6030f94c:	e3464032 	movt	r4, #24626	; 0x6032
6030f950:	eb000a13 	bl	603121a4 <ulPortInterruptLock>
6030f954:	e1a05000 	mov	r5, r0
6030f958:	eb000a2c 	bl	60312210 <ulPortGetCoreId>
6030f95c:	e1a03000 	mov	r3, r0
6030f960:	e1a00005 	mov	r0, r5
6030f964:	e7945103 	ldr	r5, [r4, r3, lsl #2]
6030f968:	eb000a12 	bl	603121b8 <ulPortInterruptUnLock>
6030f96c:	e2850018 	add	r0, r5, #24
6030f970:	eb000276 	bl	60310350 <uxListRemove>
6030f974:	eb000a0a 	bl	603121a4 <ulPortInterruptLock>
6030f978:	e1a05000 	mov	r5, r0
6030f97c:	eb000a23 	bl	60312210 <ulPortGetCoreId>
6030f980:	e1a03000 	mov	r3, r0
6030f984:	e1a00005 	mov	r0, r5
6030f988:	e7945103 	ldr	r5, [r4, r3, lsl #2]
6030f98c:	eb000a09 	bl	603121b8 <ulPortInterruptUnLock>
6030f990:	e2850004 	add	r0, r5, #4
6030f994:	eb00026d 	bl	60310350 <uxListRemove>
6030f998:	eb000a1c 	bl	60312210 <ulPortGetCoreId>
6030f99c:	e1a05000 	mov	r5, r0
6030f9a0:	eb0009ff 	bl	603121a4 <ulPortInterruptLock>
6030f9a4:	e1a06000 	mov	r6, r0
6030f9a8:	eb000a18 	bl	60312210 <ulPortGetCoreId>
6030f9ac:	e1a03000 	mov	r3, r0
6030f9b0:	e1a00006 	mov	r0, r6
6030f9b4:	e7944103 	ldr	r4, [r4, r3, lsl #2]
6030f9b8:	eb0009fe 	bl	603121b8 <ulPortInterruptUnLock>
6030f9bc:	e5845034 	str	r5, [r4, #52]	; 0x34
6030f9c0:	e8bd4070 	pop	{r4, r5, r6, lr}
6030f9c4:	eafffc56 	b	6030eb24 <vTaskExitCritical>

6030f9c8 <xTaskRemoveFromEventList>:
6030f9c8:	e92d4070 	push	{r4, r5, r6, lr}
6030f9cc:	e1a04000 	mov	r4, r0
6030f9d0:	ebfffc38 	bl	6030eab8 <vTaskEnterCritical>
6030f9d4:	e594300c 	ldr	r3, [r4, #12]
6030f9d8:	e593400c 	ldr	r4, [r3, #12]
6030f9dc:	e3540000 	cmp	r4, #0
6030f9e0:	0a00003f 	beq	6030fae4 <xTaskRemoveFromEventList+0x11c>
6030f9e4:	e2845018 	add	r5, r4, #24
6030f9e8:	e1a00005 	mov	r0, r5
6030f9ec:	eb000257 	bl	60310350 <uxListRemove>
6030f9f0:	e3033fc8 	movw	r3, #16328	; 0x3fc8
6030f9f4:	e3463032 	movt	r3, #24626	; 0x6032
6030f9f8:	e5933000 	ldr	r3, [r3]
6030f9fc:	e3530000 	cmp	r3, #0
6030fa00:	1a000021 	bne	6030fa8c <xTaskRemoveFromEventList+0xc4>
6030fa04:	e2845004 	add	r5, r4, #4
6030fa08:	e1a00005 	mov	r0, r5
6030fa0c:	eb00024f 	bl	60310350 <uxListRemove>
6030fa10:	e5943034 	ldr	r3, [r4, #52]	; 0x34
6030fa14:	e3730002 	cmn	r3, #2
6030fa18:	0a00002b 	beq	6030facc <xTaskRemoveFromEventList+0x104>
6030fa1c:	e3033fd0 	movw	r3, #16336	; 0x3fd0
6030fa20:	e3463032 	movt	r3, #24626	; 0x6032
6030fa24:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
6030fa28:	e3a00014 	mov	r0, #20
6030fa2c:	e5931000 	ldr	r1, [r3]
6030fa30:	e1520001 	cmp	r2, r1
6030fa34:	85832000 	strhi	r2, [r3]
6030fa38:	e3033ed4 	movw	r3, #16084	; 0x3ed4
6030fa3c:	e3463032 	movt	r3, #24626	; 0x6032
6030fa40:	e1a01005 	mov	r1, r5
6030fa44:	e0203290 	mla	r0, r0, r2, r3
6030fa48:	eb00021f 	bl	603102cc <vListInsertEnd>
6030fa4c:	e3033ec8 	movw	r3, #16072	; 0x3ec8
6030fa50:	e3463032 	movt	r3, #24626	; 0x6032
6030fa54:	e5932000 	ldr	r2, [r3]
6030fa58:	e5922000 	ldr	r2, [r2]
6030fa5c:	e3520000 	cmp	r2, #0
6030fa60:	03043004 	movweq	r3, #16388	; 0x4004
6030fa64:	15932000 	ldrne	r2, [r3]
6030fa68:	03463032 	movteq	r3, #24626	; 0x6032
6030fa6c:	13043004 	movwne	r3, #16388	; 0x4004
6030fa70:	1592200c 	ldrne	r2, [r2, #12]
6030fa74:	13463032 	movtne	r3, #24626	; 0x6032
6030fa78:	03e02000 	mvneq	r2, #0
6030fa7c:	1592200c 	ldrne	r2, [r2, #12]
6030fa80:	15922004 	ldrne	r2, [r2, #4]
6030fa84:	e5832000 	str	r2, [r3]
6030fa88:	ea000003 	b	6030fa9c <xTaskRemoveFromEventList+0xd4>
6030fa8c:	e3040010 	movw	r0, #16400	; 0x4010
6030fa90:	e3460032 	movt	r0, #24626	; 0x6032
6030fa94:	e1a01005 	mov	r1, r5
6030fa98:	eb00020b 	bl	603102cc <vListInsertEnd>
6030fa9c:	e3a02000 	mov	r2, #0
6030faa0:	e3a01001 	mov	r1, #1
6030faa4:	e1a00004 	mov	r0, r4
6030faa8:	ebfff921 	bl	6030df34 <prvYieldForTask.isra.0>
6030faac:	eb0009d7 	bl	60312210 <ulPortGetCoreId>
6030fab0:	e3043068 	movw	r3, #16488	; 0x4068
6030fab4:	e3463032 	movt	r3, #24626	; 0x6032
6030fab8:	e7934100 	ldr	r4, [r3, r0, lsl #2]
6030fabc:	ebfffc18 	bl	6030eb24 <vTaskExitCritical>
6030fac0:	e2540000 	subs	r0, r4, #0
6030fac4:	13a00001 	movne	r0, #1
6030fac8:	e8bd8070 	pop	{r4, r5, r6, pc}
6030facc:	e3033ed0 	movw	r3, #16080	; 0x3ed0
6030fad0:	e3463032 	movt	r3, #24626	; 0x6032
6030fad4:	e1a01005 	mov	r1, r5
6030fad8:	e5930000 	ldr	r0, [r3]
6030fadc:	eb0001fa 	bl	603102cc <vListInsertEnd>
6030fae0:	eaffffd9 	b	6030fa4c <xTaskRemoveFromEventList+0x84>
6030fae4:	e30505f8 	movw	r0, #22008	; 0x55f8
6030fae8:	e3460031 	movt	r0, #24625	; 0x6031
6030faec:	e3001e1e 	movw	r1, #3614	; 0xe1e
6030faf0:	ebffe974 	bl	6030a0c8 <vAssertCalled>
6030faf4:	eaffffba 	b	6030f9e4 <xTaskRemoveFromEventList+0x1c>

6030faf8 <xTaskCheckForTimeOut>:
6030faf8:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
6030fafc:	e1a05001 	mov	r5, r1
6030fb00:	e2504000 	subs	r4, r0, #0
6030fb04:	0a000040 	beq	6030fc0c <xTaskCheckForTimeOut+0x114>
6030fb08:	e3550000 	cmp	r5, #0
6030fb0c:	0a000039 	beq	6030fbf8 <xTaskCheckForTimeOut+0x100>
6030fb10:	e3047064 	movw	r7, #16484	; 0x4064
6030fb14:	e3467032 	movt	r7, #24626	; 0x6032
6030fb18:	ebfffbe6 	bl	6030eab8 <vTaskEnterCritical>
6030fb1c:	e5949004 	ldr	r9, [r4, #4]
6030fb20:	e5978000 	ldr	r8, [r7]
6030fb24:	eb00099e 	bl	603121a4 <ulPortInterruptLock>
6030fb28:	e1a06000 	mov	r6, r0
6030fb2c:	eb0009b7 	bl	60312210 <ulPortGetCoreId>
6030fb30:	e1a03000 	mov	r3, r0
6030fb34:	e1a00006 	mov	r0, r6
6030fb38:	e3036ec0 	movw	r6, #16064	; 0x3ec0
6030fb3c:	e3466032 	movt	r6, #24626	; 0x6032
6030fb40:	e796a103 	ldr	sl, [r6, r3, lsl #2]
6030fb44:	eb00099b 	bl	603121b8 <ulPortInterruptUnLock>
6030fb48:	e5da0172 	ldrb	r0, [sl, #370]	; 0x172
6030fb4c:	e3500000 	cmp	r0, #0
6030fb50:	1a00001d 	bne	6030fbcc <xTaskCheckForTimeOut+0xd4>
6030fb54:	e5953000 	ldr	r3, [r5]
6030fb58:	e3730001 	cmn	r3, #1
6030fb5c:	01a07000 	moveq	r7, r0
6030fb60:	0a000009 	beq	6030fb8c <xTaskCheckForTimeOut+0x94>
6030fb64:	e3042008 	movw	r2, #16392	; 0x4008
6030fb68:	e3462032 	movt	r2, #24626	; 0x6032
6030fb6c:	e5940000 	ldr	r0, [r4]
6030fb70:	e5921000 	ldr	r1, [r2]
6030fb74:	e1500001 	cmp	r0, r1
6030fb78:	0a000006 	beq	6030fb98 <xTaskCheckForTimeOut+0xa0>
6030fb7c:	e5941004 	ldr	r1, [r4, #4]
6030fb80:	e1510008 	cmp	r1, r8
6030fb84:	93a07001 	movls	r7, #1
6030fb88:	8a000002 	bhi	6030fb98 <xTaskCheckForTimeOut+0xa0>
6030fb8c:	ebfffbe4 	bl	6030eb24 <vTaskExitCritical>
6030fb90:	e1a00007 	mov	r0, r7
6030fb94:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
6030fb98:	e0481009 	sub	r1, r8, r9
6030fb9c:	e1530001 	cmp	r3, r1
6030fba0:	80433008 	subhi	r3, r3, r8
6030fba4:	80839009 	addhi	r9, r3, r9
6030fba8:	85922000 	ldrhi	r2, [r2]
6030fbac:	85973000 	ldrhi	r3, [r7]
6030fbb0:	93a03000 	movls	r3, #0
6030fbb4:	85859000 	strhi	r9, [r5]
6030fbb8:	83a07000 	movhi	r7, #0
6030fbbc:	93a07001 	movls	r7, #1
6030fbc0:	81c420f0 	strdhi	r2, [r4]
6030fbc4:	95853000 	strls	r3, [r5]
6030fbc8:	eaffffef 	b	6030fb8c <xTaskCheckForTimeOut+0x94>
6030fbcc:	eb000974 	bl	603121a4 <ulPortInterruptLock>
6030fbd0:	e1a04000 	mov	r4, r0
6030fbd4:	eb00098d 	bl	60312210 <ulPortGetCoreId>
6030fbd8:	e1a03000 	mov	r3, r0
6030fbdc:	e1a00004 	mov	r0, r4
6030fbe0:	e3a07001 	mov	r7, #1
6030fbe4:	e7964103 	ldr	r4, [r6, r3, lsl #2]
6030fbe8:	eb000972 	bl	603121b8 <ulPortInterruptUnLock>
6030fbec:	e3a03000 	mov	r3, #0
6030fbf0:	e5c43172 	strb	r3, [r4, #370]	; 0x172
6030fbf4:	eaffffe4 	b	6030fb8c <xTaskCheckForTimeOut+0x94>
6030fbf8:	e30505f8 	movw	r0, #22008	; 0x55f8
6030fbfc:	e3460031 	movt	r0, #24625	; 0x6031
6030fc00:	e3001e7e 	movw	r1, #3710	; 0xe7e
6030fc04:	ebffe92f 	bl	6030a0c8 <vAssertCalled>
6030fc08:	eaffffc0 	b	6030fb10 <xTaskCheckForTimeOut+0x18>
6030fc0c:	e30505f8 	movw	r0, #22008	; 0x55f8
6030fc10:	e3460031 	movt	r0, #24625	; 0x6031
6030fc14:	e3001e7d 	movw	r1, #3709	; 0xe7d
6030fc18:	ebffe92a 	bl	6030a0c8 <vAssertCalled>
6030fc1c:	eaffffb9 	b	6030fb08 <xTaskCheckForTimeOut+0x10>

6030fc20 <xTaskPriorityInherit>:
6030fc20:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
6030fc24:	e2504000 	subs	r4, r0, #0
6030fc28:	0a00002e 	beq	6030fce8 <xTaskPriorityInherit+0xc8>
6030fc2c:	e594702c 	ldr	r7, [r4, #44]	; 0x2c
6030fc30:	e3035ec0 	movw	r5, #16064	; 0x3ec0
6030fc34:	e3465032 	movt	r5, #24626	; 0x6032
6030fc38:	eb000959 	bl	603121a4 <ulPortInterruptLock>
6030fc3c:	e1a06000 	mov	r6, r0
6030fc40:	eb000972 	bl	60312210 <ulPortGetCoreId>
6030fc44:	e1a03000 	mov	r3, r0
6030fc48:	e1a00006 	mov	r0, r6
6030fc4c:	e7956103 	ldr	r6, [r5, r3, lsl #2]
6030fc50:	eb000958 	bl	603121b8 <ulPortInterruptUnLock>
6030fc54:	e596302c 	ldr	r3, [r6, #44]	; 0x2c
6030fc58:	e1570003 	cmp	r7, r3
6030fc5c:	2a000023 	bcs	6030fcf0 <xTaskPriorityInherit+0xd0>
6030fc60:	e5943018 	ldr	r3, [r4, #24]
6030fc64:	e3530000 	cmp	r3, #0
6030fc68:	ba000009 	blt	6030fc94 <xTaskPriorityInherit+0x74>
6030fc6c:	eb00094c 	bl	603121a4 <ulPortInterruptLock>
6030fc70:	e1a06000 	mov	r6, r0
6030fc74:	eb000965 	bl	60312210 <ulPortGetCoreId>
6030fc78:	e1a03000 	mov	r3, r0
6030fc7c:	e1a00006 	mov	r0, r6
6030fc80:	e7956103 	ldr	r6, [r5, r3, lsl #2]
6030fc84:	eb00094b 	bl	603121b8 <ulPortInterruptUnLock>
6030fc88:	e596302c 	ldr	r3, [r6, #44]	; 0x2c
6030fc8c:	e263300b 	rsb	r3, r3, #11
6030fc90:	e5843018 	str	r3, [r4, #24]
6030fc94:	ebfffb87 	bl	6030eab8 <vTaskEnterCritical>
6030fc98:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
6030fc9c:	e3a02014 	mov	r2, #20
6030fca0:	e3036ed4 	movw	r6, #16084	; 0x3ed4
6030fca4:	e3466032 	movt	r6, #24626	; 0x6032
6030fca8:	e0236392 	mla	r3, r2, r3, r6
6030fcac:	e5942014 	ldr	r2, [r4, #20]
6030fcb0:	e1520003 	cmp	r2, r3
6030fcb4:	0a00001a 	beq	6030fd24 <xTaskPriorityInherit+0x104>
6030fcb8:	eb000939 	bl	603121a4 <ulPortInterruptLock>
6030fcbc:	e1a06000 	mov	r6, r0
6030fcc0:	eb000952 	bl	60312210 <ulPortGetCoreId>
6030fcc4:	e1a03000 	mov	r3, r0
6030fcc8:	e1a00006 	mov	r0, r6
6030fccc:	e7955103 	ldr	r5, [r5, r3, lsl #2]
6030fcd0:	eb000938 	bl	603121b8 <ulPortInterruptUnLock>
6030fcd4:	e595302c 	ldr	r3, [r5, #44]	; 0x2c
6030fcd8:	e584302c 	str	r3, [r4, #44]	; 0x2c
6030fcdc:	ebfffb90 	bl	6030eb24 <vTaskExitCritical>
6030fce0:	e3a00001 	mov	r0, #1
6030fce4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
6030fce8:	e1a00004 	mov	r0, r4
6030fcec:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
6030fcf0:	e5944064 	ldr	r4, [r4, #100]	; 0x64
6030fcf4:	eb00092a 	bl	603121a4 <ulPortInterruptLock>
6030fcf8:	e1a06000 	mov	r6, r0
6030fcfc:	eb000943 	bl	60312210 <ulPortGetCoreId>
6030fd00:	e1a03000 	mov	r3, r0
6030fd04:	e1a00006 	mov	r0, r6
6030fd08:	e7955103 	ldr	r5, [r5, r3, lsl #2]
6030fd0c:	eb000929 	bl	603121b8 <ulPortInterruptUnLock>
6030fd10:	e595002c 	ldr	r0, [r5, #44]	; 0x2c
6030fd14:	e1540000 	cmp	r4, r0
6030fd18:	23a00000 	movcs	r0, #0
6030fd1c:	33a00001 	movcc	r0, #1
6030fd20:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
6030fd24:	e2848004 	add	r8, r4, #4
6030fd28:	e1a00008 	mov	r0, r8
6030fd2c:	eb000187 	bl	60310350 <uxListRemove>
6030fd30:	eb00091b 	bl	603121a4 <ulPortInterruptLock>
6030fd34:	e1a07000 	mov	r7, r0
6030fd38:	eb000934 	bl	60312210 <ulPortGetCoreId>
6030fd3c:	e7955100 	ldr	r5, [r5, r0, lsl #2]
6030fd40:	e1a00007 	mov	r0, r7
6030fd44:	eb00091b 	bl	603121b8 <ulPortInterruptUnLock>
6030fd48:	e5942034 	ldr	r2, [r4, #52]	; 0x34
6030fd4c:	e595302c 	ldr	r3, [r5, #44]	; 0x2c
6030fd50:	e3720002 	cmn	r2, #2
6030fd54:	e584302c 	str	r3, [r4, #44]	; 0x2c
6030fd58:	0a000009 	beq	6030fd84 <xTaskPriorityInherit+0x164>
6030fd5c:	e3032fd0 	movw	r2, #16336	; 0x3fd0
6030fd60:	e3462032 	movt	r2, #24626	; 0x6032
6030fd64:	e3a00014 	mov	r0, #20
6030fd68:	e5921000 	ldr	r1, [r2]
6030fd6c:	e0206390 	mla	r0, r0, r3, r6
6030fd70:	e1530001 	cmp	r3, r1
6030fd74:	e1a01008 	mov	r1, r8
6030fd78:	85823000 	strhi	r3, [r2]
6030fd7c:	eb000152 	bl	603102cc <vListInsertEnd>
6030fd80:	eaffffd5 	b	6030fcdc <xTaskPriorityInherit+0xbc>
6030fd84:	e3033ed0 	movw	r3, #16080	; 0x3ed0
6030fd88:	e3463032 	movt	r3, #24626	; 0x6032
6030fd8c:	e1a01008 	mov	r1, r8
6030fd90:	e5930000 	ldr	r0, [r3]
6030fd94:	eb00014c 	bl	603102cc <vListInsertEnd>
6030fd98:	eaffffcf 	b	6030fcdc <xTaskPriorityInherit+0xbc>

6030fd9c <xTaskPriorityDisinherit>:
6030fd9c:	e92d4070 	push	{r4, r5, r6, lr}
6030fda0:	e2504000 	subs	r4, r0, #0
6030fda4:	0a000013 	beq	6030fdf8 <xTaskPriorityDisinherit+0x5c>
6030fda8:	eb0008fd 	bl	603121a4 <ulPortInterruptLock>
6030fdac:	e1a05000 	mov	r5, r0
6030fdb0:	eb000916 	bl	60312210 <ulPortGetCoreId>
6030fdb4:	e3033ec0 	movw	r3, #16064	; 0x3ec0
6030fdb8:	e3463032 	movt	r3, #24626	; 0x6032
6030fdbc:	e1a02000 	mov	r2, r0
6030fdc0:	e1a00005 	mov	r0, r5
6030fdc4:	e7935102 	ldr	r5, [r3, r2, lsl #2]
6030fdc8:	eb0008fa 	bl	603121b8 <ulPortInterruptUnLock>
6030fdcc:	e1540005 	cmp	r4, r5
6030fdd0:	1a00001e 	bne	6030fe50 <xTaskPriorityDisinherit+0xb4>
6030fdd4:	e5943068 	ldr	r3, [r4, #104]	; 0x68
6030fdd8:	e3530000 	cmp	r3, #0
6030fddc:	0a000020 	beq	6030fe64 <xTaskPriorityDisinherit+0xc8>
6030fde0:	e594102c 	ldr	r1, [r4, #44]	; 0x2c
6030fde4:	e5942064 	ldr	r2, [r4, #100]	; 0x64
6030fde8:	e2433001 	sub	r3, r3, #1
6030fdec:	e1510002 	cmp	r1, r2
6030fdf0:	e5843068 	str	r3, [r4, #104]	; 0x68
6030fdf4:	1a000002 	bne	6030fe04 <xTaskPriorityDisinherit+0x68>
6030fdf8:	e3a05000 	mov	r5, #0
6030fdfc:	e1a00005 	mov	r0, r5
6030fe00:	e8bd8070 	pop	{r4, r5, r6, pc}
6030fe04:	ebfffb2b 	bl	6030eab8 <vTaskEnterCritical>
6030fe08:	e5943068 	ldr	r3, [r4, #104]	; 0x68
6030fe0c:	e3530000 	cmp	r3, #0
6030fe10:	13a05000 	movne	r5, #0
6030fe14:	1a00000a 	bne	6030fe44 <xTaskPriorityDisinherit+0xa8>
6030fe18:	e3033ec8 	movw	r3, #16072	; 0x3ec8
6030fe1c:	e3463032 	movt	r3, #24626	; 0x6032
6030fe20:	e5942014 	ldr	r2, [r4, #20]
6030fe24:	e5933000 	ldr	r3, [r3]
6030fe28:	e1520003 	cmp	r2, r3
6030fe2c:	0a000012 	beq	6030fe7c <xTaskPriorityDisinherit+0xe0>
6030fe30:	e5943064 	ldr	r3, [r4, #100]	; 0x64
6030fe34:	e3a05001 	mov	r5, #1
6030fe38:	e263200b 	rsb	r2, r3, #11
6030fe3c:	e584302c 	str	r3, [r4, #44]	; 0x2c
6030fe40:	e5842018 	str	r2, [r4, #24]
6030fe44:	ebfffb36 	bl	6030eb24 <vTaskExitCritical>
6030fe48:	e1a00005 	mov	r0, r5
6030fe4c:	e8bd8070 	pop	{r4, r5, r6, pc}
6030fe50:	e30505f8 	movw	r0, #22008	; 0x55f8
6030fe54:	e3460031 	movt	r0, #24625	; 0x6031
6030fe58:	e30111a8 	movw	r1, #4520	; 0x11a8
6030fe5c:	ebffe899 	bl	6030a0c8 <vAssertCalled>
6030fe60:	eaffffdb 	b	6030fdd4 <xTaskPriorityDisinherit+0x38>
6030fe64:	e30111a9 	movw	r1, #4521	; 0x11a9
6030fe68:	e30505f8 	movw	r0, #22008	; 0x55f8
6030fe6c:	e3460031 	movt	r0, #24625	; 0x6031
6030fe70:	ebffe894 	bl	6030a0c8 <vAssertCalled>
6030fe74:	e5943068 	ldr	r3, [r4, #104]	; 0x68
6030fe78:	eaffffd8 	b	6030fde0 <xTaskPriorityDisinherit+0x44>
6030fe7c:	e2840004 	add	r0, r4, #4
6030fe80:	eb000132 	bl	60310350 <uxListRemove>
6030fe84:	e3500000 	cmp	r0, #0
6030fe88:	1affffe8 	bne	6030fe30 <xTaskPriorityDisinherit+0x94>
6030fe8c:	e303cfd0 	movw	ip, #16336	; 0x3fd0
6030fe90:	e346c032 	movt	ip, #24626	; 0x6032
6030fe94:	e59c3000 	ldr	r3, [ip]
6030fe98:	e3530000 	cmp	r3, #0
6030fe9c:	0a000009 	beq	6030fec8 <xTaskPriorityDisinherit+0x12c>
6030fea0:	e3031ed4 	movw	r1, #16084	; 0x3ed4
6030fea4:	e3461032 	movt	r1, #24626	; 0x6032
6030fea8:	e3a00014 	mov	r0, #20
6030feac:	ea000001 	b	6030feb8 <xTaskPriorityDisinherit+0x11c>
6030feb0:	e2533001 	subs	r3, r3, #1
6030feb4:	0a000003 	beq	6030fec8 <xTaskPriorityDisinherit+0x12c>
6030feb8:	e0020390 	mul	r2, r0, r3
6030febc:	e7912002 	ldr	r2, [r1, r2]
6030fec0:	e3520000 	cmp	r2, #0
6030fec4:	0afffff9 	beq	6030feb0 <xTaskPriorityDisinherit+0x114>
6030fec8:	e58c3000 	str	r3, [ip]
6030fecc:	eaffffd7 	b	6030fe30 <xTaskPriorityDisinherit+0x94>

6030fed0 <vTaskPriorityDisinheritAfterTimeout>:
6030fed0:	e92d4070 	push	{r4, r5, r6, lr}
6030fed4:	e2504000 	subs	r4, r0, #0
6030fed8:	08bd8070 	popeq	{r4, r5, r6, pc}
6030fedc:	e5943068 	ldr	r3, [r4, #104]	; 0x68
6030fee0:	e1a05001 	mov	r5, r1
6030fee4:	e3530000 	cmp	r3, #0
6030fee8:	0a000023 	beq	6030ff7c <vTaskPriorityDisinheritAfterTimeout+0xac>
6030feec:	e5941064 	ldr	r1, [r4, #100]	; 0x64
6030fef0:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
6030fef4:	e1550001 	cmp	r5, r1
6030fef8:	31a05001 	movcc	r5, r1
6030fefc:	e1530005 	cmp	r3, r5
6030ff00:	08bd8070 	popeq	{r4, r5, r6, pc}
6030ff04:	e5943068 	ldr	r3, [r4, #104]	; 0x68
6030ff08:	e3530001 	cmp	r3, #1
6030ff0c:	18bd8070 	popne	{r4, r5, r6, pc}
6030ff10:	eb0008a3 	bl	603121a4 <ulPortInterruptLock>
6030ff14:	e1a06000 	mov	r6, r0
6030ff18:	eb0008bc 	bl	60312210 <ulPortGetCoreId>
6030ff1c:	e3033ec0 	movw	r3, #16064	; 0x3ec0
6030ff20:	e3463032 	movt	r3, #24626	; 0x6032
6030ff24:	e1a02000 	mov	r2, r0
6030ff28:	e1a00006 	mov	r0, r6
6030ff2c:	e7936102 	ldr	r6, [r3, r2, lsl #2]
6030ff30:	eb0008a0 	bl	603121b8 <ulPortInterruptUnLock>
6030ff34:	e1540006 	cmp	r4, r6
6030ff38:	0a00002b 	beq	6030ffec <vTaskPriorityDisinheritAfterTimeout+0x11c>
6030ff3c:	e5943018 	ldr	r3, [r4, #24]
6030ff40:	e594602c 	ldr	r6, [r4, #44]	; 0x2c
6030ff44:	e3530000 	cmp	r3, #0
6030ff48:	e584502c 	str	r5, [r4, #44]	; 0x2c
6030ff4c:	a265500b 	rsbge	r5, r5, #11
6030ff50:	a5845018 	strge	r5, [r4, #24]
6030ff54:	ebfffad7 	bl	6030eab8 <vTaskEnterCritical>
6030ff58:	e3035ed4 	movw	r5, #16084	; 0x3ed4
6030ff5c:	e3465032 	movt	r5, #24626	; 0x6032
6030ff60:	e3a02014 	mov	r2, #20
6030ff64:	e5943014 	ldr	r3, [r4, #20]
6030ff68:	e0265692 	mla	r6, r2, r6, r5
6030ff6c:	e1530006 	cmp	r3, r6
6030ff70:	0a000006 	beq	6030ff90 <vTaskPriorityDisinheritAfterTimeout+0xc0>
6030ff74:	e8bd4070 	pop	{r4, r5, r6, lr}
6030ff78:	eafffae9 	b	6030eb24 <vTaskExitCritical>
6030ff7c:	e30505f8 	movw	r0, #22008	; 0x55f8
6030ff80:	e3460031 	movt	r0, #24625	; 0x6031
6030ff84:	e30111f5 	movw	r1, #4597	; 0x11f5
6030ff88:	ebffe84e 	bl	6030a0c8 <vAssertCalled>
6030ff8c:	eaffffd6 	b	6030feec <vTaskPriorityDisinheritAfterTimeout+0x1c>
6030ff90:	e2846004 	add	r6, r4, #4
6030ff94:	e1a00006 	mov	r0, r6
6030ff98:	eb0000ec 	bl	60310350 <uxListRemove>
6030ff9c:	e5943034 	ldr	r3, [r4, #52]	; 0x34
6030ffa0:	e3530000 	cmp	r3, #0
6030ffa4:	ba000002 	blt	6030ffb4 <vTaskPriorityDisinheritAfterTimeout+0xe4>
6030ffa8:	e5943034 	ldr	r3, [r4, #52]	; 0x34
6030ffac:	e3530001 	cmp	r3, #1
6030ffb0:	daffffef 	ble	6030ff74 <vTaskPriorityDisinheritAfterTimeout+0xa4>
6030ffb4:	e5943034 	ldr	r3, [r4, #52]	; 0x34
6030ffb8:	e3730002 	cmn	r3, #2
6030ffbc:	0a00000f 	beq	60310000 <vTaskPriorityDisinheritAfterTimeout+0x130>
6030ffc0:	e3033fd0 	movw	r3, #16336	; 0x3fd0
6030ffc4:	e3463032 	movt	r3, #24626	; 0x6032
6030ffc8:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
6030ffcc:	e3a00014 	mov	r0, #20
6030ffd0:	e5931000 	ldr	r1, [r3]
6030ffd4:	e0205290 	mla	r0, r0, r2, r5
6030ffd8:	e1520001 	cmp	r2, r1
6030ffdc:	e1a01006 	mov	r1, r6
6030ffe0:	85832000 	strhi	r2, [r3]
6030ffe4:	eb0000b8 	bl	603102cc <vListInsertEnd>
6030ffe8:	eaffffe1 	b	6030ff74 <vTaskPriorityDisinheritAfterTimeout+0xa4>
6030ffec:	e30505f8 	movw	r0, #22008	; 0x55f8
6030fff0:	e3460031 	movt	r0, #24625	; 0x6031
6030fff4:	e301120b 	movw	r1, #4619	; 0x120b
6030fff8:	ebffe832 	bl	6030a0c8 <vAssertCalled>
6030fffc:	eaffffce 	b	6030ff3c <vTaskPriorityDisinheritAfterTimeout+0x6c>
60310000:	e3033ed0 	movw	r3, #16080	; 0x3ed0
60310004:	e3463032 	movt	r3, #24626	; 0x6032
60310008:	e1a01006 	mov	r1, r6
6031000c:	e5930000 	ldr	r0, [r3]
60310010:	eb0000ad 	bl	603102cc <vListInsertEnd>
60310014:	eaffffd6 	b	6030ff74 <vTaskPriorityDisinheritAfterTimeout+0xa4>

60310018 <prvIdleTask>:
60310018:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
6031001c:	e3034fc4 	movw	r4, #16324	; 0x3fc4
60310020:	e3464032 	movt	r4, #24626	; 0x6032
60310024:	e3047050 	movw	r7, #16464	; 0x4050
60310028:	e3467032 	movt	r7, #24626	; 0x6032
6031002c:	e3036fc0 	movw	r6, #16320	; 0x3fc0
60310030:	e3466032 	movt	r6, #24626	; 0x6032
60310034:	e3038ed4 	movw	r8, #16084	; 0x3ed4
60310038:	e3468032 	movt	r8, #24626	; 0x6032
6031003c:	e3049024 	movw	r9, #16420	; 0x4024
60310040:	e3469032 	movt	r9, #24626	; 0x6032
60310044:	e303afc8 	movw	sl, #16328	; 0x3fc8
60310048:	e346a032 	movt	sl, #24626	; 0x6032
6031004c:	ea000013 	b	603100a0 <prvIdleTask+0x88>
60310050:	ebfffa98 	bl	6030eab8 <vTaskEnterCritical>
60310054:	e5943000 	ldr	r3, [r4]
60310058:	e3530000 	cmp	r3, #0
6031005c:	0a00000e 	beq	6031009c <prvIdleTask+0x84>
60310060:	e597300c 	ldr	r3, [r7, #12]
60310064:	e593500c 	ldr	r5, [r3, #12]
60310068:	e2850004 	add	r0, r5, #4
6031006c:	e5953034 	ldr	r3, [r5, #52]	; 0x34
60310070:	e3730001 	cmn	r3, #1
60310074:	1a000022 	bne	60310104 <prvIdleTask+0xec>
60310078:	eb0000b4 	bl	60310350 <uxListRemove>
6031007c:	e5963000 	ldr	r3, [r6]
60310080:	e1a00005 	mov	r0, r5
60310084:	e2433001 	sub	r3, r3, #1
60310088:	e5863000 	str	r3, [r6]
6031008c:	e5943000 	ldr	r3, [r4]
60310090:	e2433001 	sub	r3, r3, #1
60310094:	e5843000 	str	r3, [r4]
60310098:	ebfff723 	bl	6030dd2c <prvDeleteTCB>
6031009c:	ebfffaa0 	bl	6030eb24 <vTaskExitCritical>
603100a0:	e5943000 	ldr	r3, [r4]
603100a4:	e3530000 	cmp	r3, #0
603100a8:	1affffe8 	bne	60310050 <prvIdleTask+0x38>
603100ac:	e5983000 	ldr	r3, [r8]
603100b0:	e3530000 	cmp	r3, #0
603100b4:	0a000000 	beq	603100bc <prvIdleTask+0xa4>
603100b8:	ef000000 	svc	0x00000000
603100bc:	eb000853 	bl	60312210 <ulPortGetCoreId>
603100c0:	e3500000 	cmp	r0, #0
603100c4:	1a000010 	bne	6031010c <prvIdleTask+0xf4>
603100c8:	ebfff7d2 	bl	6030e018 <prvGetExpectedIdleTime>
603100cc:	e3500001 	cmp	r0, #1
603100d0:	9afffff2 	bls	603100a0 <prvIdleTask+0x88>
603100d4:	e5993000 	ldr	r3, [r9]
603100d8:	e3530000 	cmp	r3, #0
603100dc:	1a00000d 	bne	60310118 <prvIdleTask+0x100>
603100e0:	ebfff7cc 	bl	6030e018 <prvGetExpectedIdleTime>
603100e4:	e3500001 	cmp	r0, #1
603100e8:	9a000000 	bls	603100f0 <prvIdleTask+0xd8>
603100ec:	eb0008a0 	bl	60312374 <vPortSuppressTicksAndSleep>
603100f0:	e5993000 	ldr	r3, [r9]
603100f4:	e3530000 	cmp	r3, #0
603100f8:	0affffe8 	beq	603100a0 <prvIdleTask+0x88>
603100fc:	ebfffd5f 	bl	6030f680 <xTaskResumeAll.part.0>
60310100:	eaffffe6 	b	603100a0 <prvIdleTask+0x88>
60310104:	ebfffa86 	bl	6030eb24 <vTaskExitCritical>
60310108:	eaffffe7 	b	603100ac <prvIdleTask+0x94>
6031010c:	e3e00000 	mvn	r0, #0
60310110:	eb000897 	bl	60312374 <vPortSuppressTicksAndSleep>
60310114:	eaffffe1 	b	603100a0 <prvIdleTask+0x88>
60310118:	ebfffa66 	bl	6030eab8 <vTaskEnterCritical>
6031011c:	e59a3000 	ldr	r3, [sl]
60310120:	e2833001 	add	r3, r3, #1
60310124:	e58a3000 	str	r3, [sl]
60310128:	ebfffa7d 	bl	6030eb24 <vTaskExitCritical>
6031012c:	eaffffeb 	b	603100e0 <prvIdleTask+0xc8>

60310130 <vTaskSuspendAll>:
60310130:	e3043024 	movw	r3, #16420	; 0x4024
60310134:	e3463032 	movt	r3, #24626	; 0x6032
60310138:	e5933000 	ldr	r3, [r3]
6031013c:	e3530000 	cmp	r3, #0
60310140:	012fff1e 	bxeq	lr
60310144:	e92d4010 	push	{r4, lr}
60310148:	ebfffa5a 	bl	6030eab8 <vTaskEnterCritical>
6031014c:	e3033fc8 	movw	r3, #16328	; 0x3fc8
60310150:	e3463032 	movt	r3, #24626	; 0x6032
60310154:	e5932000 	ldr	r2, [r3]
60310158:	e2822001 	add	r2, r2, #1
6031015c:	e5832000 	str	r2, [r3]
60310160:	e8bd4010 	pop	{r4, lr}
60310164:	eafffa6e 	b	6030eb24 <vTaskExitCritical>

60310168 <vTaskDelay>:
60310168:	e92d4070 	push	{r4, r5, r6, lr}
6031016c:	e2504000 	subs	r4, r0, #0
60310170:	0a00000a 	beq	603101a0 <vTaskDelay+0x38>
60310174:	e3045024 	movw	r5, #16420	; 0x4024
60310178:	e3465032 	movt	r5, #24626	; 0x6032
6031017c:	e5953000 	ldr	r3, [r5]
60310180:	e3530000 	cmp	r3, #0
60310184:	1a000017 	bne	603101e8 <vTaskDelay+0x80>
60310188:	e3a01000 	mov	r1, #0
6031018c:	e1a00004 	mov	r0, r4
60310190:	ebfffbe9 	bl	6030f13c <prvAddCurrentTaskToDelayedList>
60310194:	e5953000 	ldr	r3, [r5]
60310198:	e3530000 	cmp	r3, #0
6031019c:	1a00000d 	bne	603101d8 <vTaskDelay+0x70>
603101a0:	eb0007ff 	bl	603121a4 <ulPortInterruptLock>
603101a4:	e1a04000 	mov	r4, r0
603101a8:	eb000818 	bl	60312210 <ulPortGetCoreId>
603101ac:	e3033ec0 	movw	r3, #16064	; 0x3ec0
603101b0:	e3463032 	movt	r3, #24626	; 0x6032
603101b4:	e1a02000 	mov	r2, r0
603101b8:	e1a00004 	mov	r0, r4
603101bc:	e7934102 	ldr	r4, [r3, r2, lsl #2]
603101c0:	eb0007fc 	bl	603121b8 <ulPortInterruptUnLock>
603101c4:	e5943058 	ldr	r3, [r4, #88]	; 0x58
603101c8:	e3530000 	cmp	r3, #0
603101cc:	1a00000d 	bne	60310208 <vTaskDelay+0xa0>
603101d0:	ef000000 	svc	0x00000000
603101d4:	e8bd8070 	pop	{r4, r5, r6, pc}
603101d8:	ebfffd28 	bl	6030f680 <xTaskResumeAll.part.0>
603101dc:	e3500000 	cmp	r0, #0
603101e0:	18bd8070 	popne	{r4, r5, r6, pc}
603101e4:	eaffffed 	b	603101a0 <vTaskDelay+0x38>
603101e8:	ebfffa32 	bl	6030eab8 <vTaskEnterCritical>
603101ec:	e3033fc8 	movw	r3, #16328	; 0x3fc8
603101f0:	e3463032 	movt	r3, #24626	; 0x6032
603101f4:	e5932000 	ldr	r2, [r3]
603101f8:	e2822001 	add	r2, r2, #1
603101fc:	e5832000 	str	r2, [r3]
60310200:	ebfffa47 	bl	6030eb24 <vTaskExitCritical>
60310204:	eaffffdf 	b	60310188 <vTaskDelay+0x20>
60310208:	eb000800 	bl	60312210 <ulPortGetCoreId>
6031020c:	e3043068 	movw	r3, #16488	; 0x4068
60310210:	e3463032 	movt	r3, #24626	; 0x6032
60310214:	e3a02001 	mov	r2, #1
60310218:	e7832100 	str	r2, [r3, r0, lsl #2]
6031021c:	e8bd8070 	pop	{r4, r5, r6, pc}

60310220 <pvTaskIncrementMutexHeldCount>:
60310220:	e92d4070 	push	{r4, r5, r6, lr}
60310224:	eb0007de 	bl	603121a4 <ulPortInterruptLock>
60310228:	e3034ec0 	movw	r4, #16064	; 0x3ec0
6031022c:	e3464032 	movt	r4, #24626	; 0x6032
60310230:	e1a05000 	mov	r5, r0
60310234:	eb0007f5 	bl	60312210 <ulPortGetCoreId>
60310238:	e1a03000 	mov	r3, r0
6031023c:	e1a00005 	mov	r0, r5
60310240:	e7945103 	ldr	r5, [r4, r3, lsl #2]
60310244:	eb0007db 	bl	603121b8 <ulPortInterruptUnLock>
60310248:	e3550000 	cmp	r5, #0
6031024c:	0a000009 	beq	60310278 <pvTaskIncrementMutexHeldCount+0x58>
60310250:	eb0007d3 	bl	603121a4 <ulPortInterruptLock>
60310254:	e1a05000 	mov	r5, r0
60310258:	eb0007ec 	bl	60312210 <ulPortGetCoreId>
6031025c:	e1a03000 	mov	r3, r0
60310260:	e1a00005 	mov	r0, r5
60310264:	e7945103 	ldr	r5, [r4, r3, lsl #2]
60310268:	eb0007d2 	bl	603121b8 <ulPortInterruptUnLock>
6031026c:	e5953068 	ldr	r3, [r5, #104]	; 0x68
60310270:	e2833001 	add	r3, r3, #1
60310274:	e5853068 	str	r3, [r5, #104]	; 0x68
60310278:	eb0007c9 	bl	603121a4 <ulPortInterruptLock>
6031027c:	e1a05000 	mov	r5, r0
60310280:	eb0007e2 	bl	60312210 <ulPortGetCoreId>
60310284:	e1a03000 	mov	r3, r0
60310288:	e1a00005 	mov	r0, r5
6031028c:	e7944103 	ldr	r4, [r4, r3, lsl #2]
60310290:	eb0007c8 	bl	603121b8 <ulPortInterruptUnLock>
60310294:	e1a00004 	mov	r0, r4
60310298:	e8bd8070 	pop	{r4, r5, r6, pc}

6031029c <vListInitialise>:
6031029c:	e2803008 	add	r3, r0, #8
603102a0:	e3a02000 	mov	r2, #0
603102a4:	e3e01000 	mvn	r1, #0
603102a8:	e5803004 	str	r3, [r0, #4]
603102ac:	e5801008 	str	r1, [r0, #8]
603102b0:	e580300c 	str	r3, [r0, #12]
603102b4:	e5803010 	str	r3, [r0, #16]
603102b8:	e5802000 	str	r2, [r0]
603102bc:	e12fff1e 	bx	lr

603102c0 <vListInitialiseItem>:
603102c0:	e3a03000 	mov	r3, #0
603102c4:	e5803010 	str	r3, [r0, #16]
603102c8:	e12fff1e 	bx	lr

603102cc <vListInsertEnd>:
603102cc:	e5903004 	ldr	r3, [r0, #4]
603102d0:	e5813004 	str	r3, [r1, #4]
603102d4:	e5932008 	ldr	r2, [r3, #8]
603102d8:	e5812008 	str	r2, [r1, #8]
603102dc:	e5821004 	str	r1, [r2, #4]
603102e0:	e5831008 	str	r1, [r3, #8]
603102e4:	e5810010 	str	r0, [r1, #16]
603102e8:	e5903000 	ldr	r3, [r0]
603102ec:	e2833001 	add	r3, r3, #1
603102f0:	e5803000 	str	r3, [r0]
603102f4:	e12fff1e 	bx	lr

603102f8 <vListInsert>:
603102f8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
603102fc:	e591e000 	ldr	lr, [r1]
60310300:	e37e0001 	cmn	lr, #1
60310304:	12803008 	addne	r3, r0, #8
60310308:	0a00000d 	beq	60310344 <vListInsert+0x4c>
6031030c:	e1a0c003 	mov	ip, r3
60310310:	e5933004 	ldr	r3, [r3, #4]
60310314:	e5932000 	ldr	r2, [r3]
60310318:	e152000e 	cmp	r2, lr
6031031c:	9afffffa 	bls	6031030c <vListInsert+0x14>
60310320:	e5813004 	str	r3, [r1, #4]
60310324:	e5831008 	str	r1, [r3, #8]
60310328:	e581c008 	str	ip, [r1, #8]
6031032c:	e58c1004 	str	r1, [ip, #4]
60310330:	e5810010 	str	r0, [r1, #16]
60310334:	e5903000 	ldr	r3, [r0]
60310338:	e2833001 	add	r3, r3, #1
6031033c:	e5803000 	str	r3, [r0]
60310340:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
60310344:	e590c010 	ldr	ip, [r0, #16]
60310348:	e59c3004 	ldr	r3, [ip, #4]
6031034c:	eafffff3 	b	60310320 <vListInsert+0x28>

60310350 <uxListRemove>:
60310350:	e9900006 	ldmib	r0, {r1, r2}
60310354:	e5903010 	ldr	r3, [r0, #16]
60310358:	e5812008 	str	r2, [r1, #8]
6031035c:	e5901004 	ldr	r1, [r0, #4]
60310360:	e5821004 	str	r1, [r2, #4]
60310364:	e5932004 	ldr	r2, [r3, #4]
60310368:	e1520000 	cmp	r2, r0
6031036c:	05902008 	ldreq	r2, [r0, #8]
60310370:	05832004 	streq	r2, [r3, #4]
60310374:	e3a02000 	mov	r2, #0
60310378:	e5802010 	str	r2, [r0, #16]
6031037c:	e5932000 	ldr	r2, [r3]
60310380:	e2422001 	sub	r2, r2, #1
60310384:	e5832000 	str	r2, [r3]
60310388:	e5930000 	ldr	r0, [r3]
6031038c:	e12fff1e 	bx	lr

60310390 <prvCopyDataToQueue>:
60310390:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60310394:	e1a04000 	mov	r4, r0
60310398:	e1a05002 	mov	r5, r2
6031039c:	e1a07001 	mov	r7, r1
603103a0:	ebfff9c4 	bl	6030eab8 <vTaskEnterCritical>
603103a4:	e5942040 	ldr	r2, [r4, #64]	; 0x40
603103a8:	e5946038 	ldr	r6, [r4, #56]	; 0x38
603103ac:	e3520000 	cmp	r2, #0
603103b0:	1a000008 	bne	603103d8 <prvCopyDataToQueue+0x48>
603103b4:	e5947000 	ldr	r7, [r4]
603103b8:	e2866001 	add	r6, r6, #1
603103bc:	e3570000 	cmp	r7, #0
603103c0:	11a05002 	movne	r5, r2
603103c4:	0a000023 	beq	60310458 <prvCopyDataToQueue+0xc8>
603103c8:	e5846038 	str	r6, [r4, #56]	; 0x38
603103cc:	ebfff9d4 	bl	6030eb24 <vTaskExitCritical>
603103d0:	e1a00005 	mov	r0, r5
603103d4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
603103d8:	e1a01007 	mov	r1, r7
603103dc:	e3550000 	cmp	r5, #0
603103e0:	1a00000b 	bne	60310414 <prvCopyDataToQueue+0x84>
603103e4:	e5940004 	ldr	r0, [r4, #4]
603103e8:	ebfff3f5 	bl	6030d3c4 <__wrap_memcpy>
603103ec:	e5943004 	ldr	r3, [r4, #4]
603103f0:	e5942040 	ldr	r2, [r4, #64]	; 0x40
603103f4:	e2866001 	add	r6, r6, #1
603103f8:	e0833002 	add	r3, r3, r2
603103fc:	e5942008 	ldr	r2, [r4, #8]
60310400:	e5843004 	str	r3, [r4, #4]
60310404:	e1530002 	cmp	r3, r2
60310408:	25943000 	ldrcs	r3, [r4]
6031040c:	25843004 	strcs	r3, [r4, #4]
60310410:	eaffffec 	b	603103c8 <prvCopyDataToQueue+0x38>
60310414:	e594000c 	ldr	r0, [r4, #12]
60310418:	ebfff3e9 	bl	6030d3c4 <__wrap_memcpy>
6031041c:	e5942040 	ldr	r2, [r4, #64]	; 0x40
60310420:	e594300c 	ldr	r3, [r4, #12]
60310424:	e2621000 	rsb	r1, r2, #0
60310428:	e0433002 	sub	r3, r3, r2
6031042c:	e5942000 	ldr	r2, [r4]
60310430:	e584300c 	str	r3, [r4, #12]
60310434:	e1530002 	cmp	r3, r2
60310438:	35943008 	ldrcc	r3, [r4, #8]
6031043c:	30833001 	addcc	r3, r3, r1
60310440:	3584300c 	strcc	r3, [r4, #12]
60310444:	e3550002 	cmp	r5, #2
60310448:	0a000007 	beq	6031046c <prvCopyDataToQueue+0xdc>
6031044c:	e2866001 	add	r6, r6, #1
60310450:	e3a05000 	mov	r5, #0
60310454:	eaffffdb 	b	603103c8 <prvCopyDataToQueue+0x38>
60310458:	e5940008 	ldr	r0, [r4, #8]
6031045c:	ebfffe4e 	bl	6030fd9c <xTaskPriorityDisinherit>
60310460:	e5847008 	str	r7, [r4, #8]
60310464:	e1a05000 	mov	r5, r0
60310468:	eaffffd6 	b	603103c8 <prvCopyDataToQueue+0x38>
6031046c:	e3560001 	cmp	r6, #1
60310470:	33a06001 	movcc	r6, #1
60310474:	e3a05000 	mov	r5, #0
60310478:	eaffffd2 	b	603103c8 <prvCopyDataToQueue+0x38>

6031047c <prvNotifyQueueSetContainer>:
6031047c:	e92d4070 	push	{r4, r5, r6, lr}
60310480:	e1a05001 	mov	r5, r1
60310484:	e24dd008 	sub	sp, sp, #8
60310488:	e5904048 	ldr	r4, [r0, #72]	; 0x48
6031048c:	e58d0004 	str	r0, [sp, #4]
60310490:	e3540000 	cmp	r4, #0
60310494:	0a000021 	beq	60310520 <prvNotifyQueueSetContainer+0xa4>
60310498:	e5942038 	ldr	r2, [r4, #56]	; 0x38
6031049c:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
603104a0:	e1520003 	cmp	r2, r3
603104a4:	2a000025 	bcs	60310540 <prvNotifyQueueSetContainer+0xc4>
603104a8:	e5942038 	ldr	r2, [r4, #56]	; 0x38
603104ac:	e1530002 	cmp	r3, r2
603104b0:	93a05000 	movls	r5, #0
603104b4:	8a000002 	bhi	603104c4 <prvNotifyQueueSetContainer+0x48>
603104b8:	e1a00005 	mov	r0, r5
603104bc:	e28dd008 	add	sp, sp, #8
603104c0:	e8bd8070 	pop	{r4, r5, r6, pc}
603104c4:	e5d46045 	ldrb	r6, [r4, #69]	; 0x45
603104c8:	e1a02005 	mov	r2, r5
603104cc:	e28d1004 	add	r1, sp, #4
603104d0:	e1a00004 	mov	r0, r4
603104d4:	e6af6076 	sxtb	r6, r6
603104d8:	ebffffac 	bl	60310390 <prvCopyDataToQueue>
603104dc:	e3760001 	cmn	r6, #1
603104e0:	e1a05000 	mov	r5, r0
603104e4:	0a000005 	beq	60310500 <prvNotifyQueueSetContainer+0x84>
603104e8:	e2866001 	add	r6, r6, #1
603104ec:	e1a00005 	mov	r0, r5
603104f0:	e6af6076 	sxtb	r6, r6
603104f4:	e5c46045 	strb	r6, [r4, #69]	; 0x45
603104f8:	e28dd008 	add	sp, sp, #8
603104fc:	e8bd8070 	pop	{r4, r5, r6, pc}
60310500:	e5943024 	ldr	r3, [r4, #36]	; 0x24
60310504:	e3530000 	cmp	r3, #0
60310508:	0affffea 	beq	603104b8 <prvNotifyQueueSetContainer+0x3c>
6031050c:	e2840024 	add	r0, r4, #36	; 0x24
60310510:	ebfffd2c 	bl	6030f9c8 <xTaskRemoveFromEventList>
60310514:	e3500000 	cmp	r0, #0
60310518:	13a05001 	movne	r5, #1
6031051c:	eaffffe5 	b	603104b8 <prvNotifyQueueSetContainer+0x3c>
60310520:	e3050690 	movw	r0, #22160	; 0x5690
60310524:	e3460031 	movt	r0, #24625	; 0x6031
60310528:	e30019eb 	movw	r1, #2539	; 0x9eb
6031052c:	ebffe6e5 	bl	6030a0c8 <vAssertCalled>
60310530:	e5942038 	ldr	r2, [r4, #56]	; 0x38
60310534:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
60310538:	e1520003 	cmp	r2, r3
6031053c:	3affffd9 	bcc	603104a8 <prvNotifyQueueSetContainer+0x2c>
60310540:	e30019ec 	movw	r1, #2540	; 0x9ec
60310544:	e3050690 	movw	r0, #22160	; 0x5690
60310548:	e3460031 	movt	r0, #24625	; 0x6031
6031054c:	ebffe6dd 	bl	6030a0c8 <vAssertCalled>
60310550:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
60310554:	eaffffd3 	b	603104a8 <prvNotifyQueueSetContainer+0x2c>

60310558 <prvUnlockQueue>:
60310558:	e92d4070 	push	{r4, r5, r6, lr}
6031055c:	e1a05000 	mov	r5, r0
60310560:	ebfff954 	bl	6030eab8 <vTaskEnterCritical>
60310564:	e5d54045 	ldrb	r4, [r5, #69]	; 0x45
60310568:	e6af4074 	sxtb	r4, r4
6031056c:	e3540000 	cmp	r4, #0
60310570:	da000019 	ble	603105dc <prvUnlockQueue+0x84>
60310574:	e2856024 	add	r6, r5, #36	; 0x24
60310578:	ea000006 	b	60310598 <prvUnlockQueue+0x40>
6031057c:	ebffffbe 	bl	6031047c <prvNotifyQueueSetContainer>
60310580:	e3500000 	cmp	r0, #0
60310584:	1a00000f 	bne	603105c8 <prvUnlockQueue+0x70>
60310588:	e2444001 	sub	r4, r4, #1
6031058c:	e6af4074 	sxtb	r4, r4
60310590:	e3540000 	cmp	r4, #0
60310594:	0a000010 	beq	603105dc <prvUnlockQueue+0x84>
60310598:	e5953048 	ldr	r3, [r5, #72]	; 0x48
6031059c:	e3a01000 	mov	r1, #0
603105a0:	e1a00005 	mov	r0, r5
603105a4:	e1530001 	cmp	r3, r1
603105a8:	1afffff3 	bne	6031057c <prvUnlockQueue+0x24>
603105ac:	e5953024 	ldr	r3, [r5, #36]	; 0x24
603105b0:	e1a00006 	mov	r0, r6
603105b4:	e3530000 	cmp	r3, #0
603105b8:	0a000007 	beq	603105dc <prvUnlockQueue+0x84>
603105bc:	ebfffd01 	bl	6030f9c8 <xTaskRemoveFromEventList>
603105c0:	e3500000 	cmp	r0, #0
603105c4:	0affffef 	beq	60310588 <prvUnlockQueue+0x30>
603105c8:	e2444001 	sub	r4, r4, #1
603105cc:	ebfff8e6 	bl	6030e96c <vTaskMissedYield>
603105d0:	e6af4074 	sxtb	r4, r4
603105d4:	e3540000 	cmp	r4, #0
603105d8:	1affffee 	bne	60310598 <prvUnlockQueue+0x40>
603105dc:	e3e03000 	mvn	r3, #0
603105e0:	e5c53045 	strb	r3, [r5, #69]	; 0x45
603105e4:	ebfff94e 	bl	6030eb24 <vTaskExitCritical>
603105e8:	ebfff932 	bl	6030eab8 <vTaskEnterCritical>
603105ec:	e5d54044 	ldrb	r4, [r5, #68]	; 0x44
603105f0:	e6af4074 	sxtb	r4, r4
603105f4:	e3540000 	cmp	r4, #0
603105f8:	da000011 	ble	60310644 <prvUnlockQueue+0xec>
603105fc:	e2856010 	add	r6, r5, #16
60310600:	ea000003 	b	60310614 <prvUnlockQueue+0xbc>
60310604:	e2444001 	sub	r4, r4, #1
60310608:	e6af4074 	sxtb	r4, r4
6031060c:	e3540000 	cmp	r4, #0
60310610:	0a00000b 	beq	60310644 <prvUnlockQueue+0xec>
60310614:	e5953010 	ldr	r3, [r5, #16]
60310618:	e1a00006 	mov	r0, r6
6031061c:	e3530000 	cmp	r3, #0
60310620:	0a000007 	beq	60310644 <prvUnlockQueue+0xec>
60310624:	ebfffce7 	bl	6030f9c8 <xTaskRemoveFromEventList>
60310628:	e3500000 	cmp	r0, #0
6031062c:	0afffff4 	beq	60310604 <prvUnlockQueue+0xac>
60310630:	e2444001 	sub	r4, r4, #1
60310634:	ebfff8cc 	bl	6030e96c <vTaskMissedYield>
60310638:	e6af4074 	sxtb	r4, r4
6031063c:	e3540000 	cmp	r4, #0
60310640:	1afffff3 	bne	60310614 <prvUnlockQueue+0xbc>
60310644:	e3e03000 	mvn	r3, #0
60310648:	e5c53044 	strb	r3, [r5, #68]	; 0x44
6031064c:	e8bd4070 	pop	{r4, r5, r6, lr}
60310650:	eafff933 	b	6030eb24 <vTaskExitCritical>

60310654 <xQueueGenericReset>:
60310654:	e92d4070 	push	{r4, r5, r6, lr}
60310658:	e1a05001 	mov	r5, r1
6031065c:	e2504000 	subs	r4, r0, #0
60310660:	0a000022 	beq	603106f0 <xQueueGenericReset+0x9c>
60310664:	ebfff913 	bl	6030eab8 <vTaskEnterCritical>
60310668:	e5941040 	ldr	r1, [r4, #64]	; 0x40
6031066c:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
60310670:	e5942000 	ldr	r2, [r4]
60310674:	e5842004 	str	r2, [r4, #4]
60310678:	e3550000 	cmp	r5, #0
6031067c:	e0030193 	mul	r3, r3, r1
60310680:	e0431001 	sub	r1, r3, r1
60310684:	e0823003 	add	r3, r2, r3
60310688:	e0822001 	add	r2, r2, r1
6031068c:	e5843008 	str	r3, [r4, #8]
60310690:	e3e01000 	mvn	r1, #0
60310694:	e3a03000 	mov	r3, #0
60310698:	e584200c 	str	r2, [r4, #12]
6031069c:	e5843038 	str	r3, [r4, #56]	; 0x38
603106a0:	e5c41044 	strb	r1, [r4, #68]	; 0x44
603106a4:	e5c41045 	strb	r1, [r4, #69]	; 0x45
603106a8:	1a00000b 	bne	603106dc <xQueueGenericReset+0x88>
603106ac:	e5943010 	ldr	r3, [r4, #16]
603106b0:	e3530000 	cmp	r3, #0
603106b4:	1a000002 	bne	603106c4 <xQueueGenericReset+0x70>
603106b8:	ebfff919 	bl	6030eb24 <vTaskExitCritical>
603106bc:	e3a00001 	mov	r0, #1
603106c0:	e8bd8070 	pop	{r4, r5, r6, pc}
603106c4:	e2840010 	add	r0, r4, #16
603106c8:	ebfffcbe 	bl	6030f9c8 <xTaskRemoveFromEventList>
603106cc:	e3500000 	cmp	r0, #0
603106d0:	0afffff8 	beq	603106b8 <xQueueGenericReset+0x64>
603106d4:	ebfff8e2 	bl	6030ea64 <vTaskYieldWithinAPI>
603106d8:	eafffff6 	b	603106b8 <xQueueGenericReset+0x64>
603106dc:	e2840010 	add	r0, r4, #16
603106e0:	ebfffeed 	bl	6031029c <vListInitialise>
603106e4:	e2840024 	add	r0, r4, #36	; 0x24
603106e8:	ebfffeeb 	bl	6031029c <vListInitialise>
603106ec:	eafffff1 	b	603106b8 <xQueueGenericReset+0x64>
603106f0:	e3050690 	movw	r0, #22160	; 0x5690
603106f4:	e3460031 	movt	r0, #24625	; 0x6031
603106f8:	e3001103 	movw	r1, #259	; 0x103
603106fc:	ebffe671 	bl	6030a0c8 <vAssertCalled>
60310700:	eaffffd7 	b	60310664 <xQueueGenericReset+0x10>

60310704 <xQueueGenericCreateStatic>:
60310704:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60310708:	e1a06001 	mov	r6, r1
6031070c:	e24dd008 	sub	sp, sp, #8
60310710:	e1a05002 	mov	r5, r2
60310714:	e1a04003 	mov	r4, r3
60310718:	e5dd7020 	ldrb	r7, [sp, #32]
6031071c:	e2508000 	subs	r8, r0, #0
60310720:	0a000024 	beq	603107b8 <xQueueGenericCreateStatic+0xb4>
60310724:	e3540000 	cmp	r4, #0
60310728:	0a000028 	beq	603107d0 <xQueueGenericCreateStatic+0xcc>
6031072c:	e2563000 	subs	r3, r6, #0
60310730:	13a03001 	movne	r3, #1
60310734:	e3550000 	cmp	r5, #0
60310738:	03833001 	orreq	r3, r3, #1
6031073c:	e3530000 	cmp	r3, #0
60310740:	0a000027 	beq	603107e4 <xQueueGenericCreateStatic+0xe0>
60310744:	e16f3f16 	clz	r3, r6
60310748:	e1a032a3 	lsr	r3, r3, #5
6031074c:	e3550000 	cmp	r5, #0
60310750:	13833001 	orrne	r3, r3, #1
60310754:	e3530000 	cmp	r3, #0
60310758:	0a000026 	beq	603107f8 <xQueueGenericCreateStatic+0xf4>
6031075c:	e3a03054 	mov	r3, #84	; 0x54
60310760:	e58d3004 	str	r3, [sp, #4]
60310764:	e59d3004 	ldr	r3, [sp, #4]
60310768:	e3530054 	cmp	r3, #84	; 0x54
6031076c:	1a000026 	bne	6031080c <xQueueGenericCreateStatic+0x108>
60310770:	e59d3004 	ldr	r3, [sp, #4]
60310774:	e3540000 	cmp	r4, #0
60310778:	0a00000b 	beq	603107ac <xQueueGenericCreateStatic+0xa8>
6031077c:	e3560000 	cmp	r6, #0
60310780:	01a05004 	moveq	r5, r4
60310784:	e3a01001 	mov	r1, #1
60310788:	e1a00004 	mov	r0, r4
6031078c:	e584803c 	str	r8, [r4, #60]	; 0x3c
60310790:	e5845000 	str	r5, [r4]
60310794:	e5846040 	str	r6, [r4, #64]	; 0x40
60310798:	e5c41046 	strb	r1, [r4, #70]	; 0x46
6031079c:	ebffffac 	bl	60310654 <xQueueGenericReset>
603107a0:	e3a03000 	mov	r3, #0
603107a4:	e5c47050 	strb	r7, [r4, #80]	; 0x50
603107a8:	e5843048 	str	r3, [r4, #72]	; 0x48
603107ac:	e1a00004 	mov	r0, r4
603107b0:	e28dd008 	add	sp, sp, #8
603107b4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
603107b8:	e3a01f4d 	mov	r1, #308	; 0x134
603107bc:	e3050690 	movw	r0, #22160	; 0x5690
603107c0:	e3460031 	movt	r0, #24625	; 0x6031
603107c4:	ebffe63f 	bl	6030a0c8 <vAssertCalled>
603107c8:	e3540000 	cmp	r4, #0
603107cc:	1affffd6 	bne	6031072c <xQueueGenericCreateStatic+0x28>
603107d0:	e3a01f4e 	mov	r1, #312	; 0x138
603107d4:	e3050690 	movw	r0, #22160	; 0x5690
603107d8:	e3460031 	movt	r0, #24625	; 0x6031
603107dc:	ebffe639 	bl	6030a0c8 <vAssertCalled>
603107e0:	eaffffd1 	b	6031072c <xQueueGenericCreateStatic+0x28>
603107e4:	e3a01f4f 	mov	r1, #316	; 0x13c
603107e8:	e3050690 	movw	r0, #22160	; 0x5690
603107ec:	e3460031 	movt	r0, #24625	; 0x6031
603107f0:	ebffe634 	bl	6030a0c8 <vAssertCalled>
603107f4:	eaffffd8 	b	6031075c <xQueueGenericCreateStatic+0x58>
603107f8:	e3050690 	movw	r0, #22160	; 0x5690
603107fc:	e3460031 	movt	r0, #24625	; 0x6031
60310800:	e300113d 	movw	r1, #317	; 0x13d
60310804:	ebffe62f 	bl	6030a0c8 <vAssertCalled>
60310808:	eaffffd3 	b	6031075c <xQueueGenericCreateStatic+0x58>
6031080c:	e3050690 	movw	r0, #22160	; 0x5690
60310810:	e3460031 	movt	r0, #24625	; 0x6031
60310814:	e3001145 	movw	r1, #325	; 0x145
60310818:	ebffe62a 	bl	6030a0c8 <vAssertCalled>
6031081c:	eaffffd3 	b	60310770 <xQueueGenericCreateStatic+0x6c>

60310820 <xQueueGenericCreate>:
60310820:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60310824:	e1a05001 	mov	r5, r1
60310828:	e1a07002 	mov	r7, r2
6031082c:	e2506000 	subs	r6, r0, #0
60310830:	0a00001d 	beq	603108ac <xQueueGenericCreate+0x8c>
60310834:	e3550000 	cmp	r5, #0
60310838:	0a000012 	beq	60310888 <xQueueGenericCreate+0x68>
6031083c:	e0000695 	mul	r0, r5, r6
60310840:	e2800054 	add	r0, r0, #84	; 0x54
60310844:	eb00053e 	bl	60311d44 <pvPortMalloc>
60310848:	e2504000 	subs	r4, r0, #0
6031084c:	0a000013 	beq	603108a0 <xQueueGenericCreate+0x80>
60310850:	e3a03000 	mov	r3, #0
60310854:	e5c43046 	strb	r3, [r4, #70]	; 0x46
60310858:	e2843054 	add	r3, r4, #84	; 0x54
6031085c:	e5843000 	str	r3, [r4]
60310860:	e3a01001 	mov	r1, #1
60310864:	e1a00004 	mov	r0, r4
60310868:	e584603c 	str	r6, [r4, #60]	; 0x3c
6031086c:	e5845040 	str	r5, [r4, #64]	; 0x40
60310870:	ebffff77 	bl	60310654 <xQueueGenericReset>
60310874:	e3a03000 	mov	r3, #0
60310878:	e1a00004 	mov	r0, r4
6031087c:	e5c47050 	strb	r7, [r4, #80]	; 0x50
60310880:	e5843048 	str	r3, [r4, #72]	; 0x48
60310884:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60310888:	e3a00054 	mov	r0, #84	; 0x54
6031088c:	eb00052c 	bl	60311d44 <pvPortMalloc>
60310890:	e2504000 	subs	r4, r0, #0
60310894:	15c45046 	strbne	r5, [r4, #70]	; 0x46
60310898:	15844000 	strne	r4, [r4]
6031089c:	1affffef 	bne	60310860 <xQueueGenericCreate+0x40>
603108a0:	e3a04000 	mov	r4, #0
603108a4:	e1a00004 	mov	r0, r4
603108a8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
603108ac:	e3050690 	movw	r0, #22160	; 0x5690
603108b0:	e3460031 	movt	r0, #24625	; 0x6031
603108b4:	e300116e 	movw	r1, #366	; 0x16e
603108b8:	ebffe602 	bl	6030a0c8 <vAssertCalled>
603108bc:	eaffffdc 	b	60310834 <xQueueGenericCreate+0x14>

603108c0 <xQueueGenericSend>:
603108c0:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
603108c4:	e1a09001 	mov	r9, r1
603108c8:	e24dd014 	sub	sp, sp, #20
603108cc:	e1a08003 	mov	r8, r3
603108d0:	e2504000 	subs	r4, r0, #0
603108d4:	e58d2004 	str	r2, [sp, #4]
603108d8:	0a000078 	beq	60310ac0 <xQueueGenericSend+0x200>
603108dc:	e3590000 	cmp	r9, #0
603108e0:	0a00007c 	beq	60310ad8 <xQueueGenericSend+0x218>
603108e4:	e3580002 	cmp	r8, #2
603108e8:	13a06000 	movne	r6, #0
603108ec:	11a07006 	movne	r7, r6
603108f0:	1a000005 	bne	6031090c <xQueueGenericSend+0x4c>
603108f4:	ea00005c 	b	60310a6c <xQueueGenericSend+0x1ac>
603108f8:	ebfff889 	bl	6030eb24 <vTaskExitCritical>
603108fc:	e1a00004 	mov	r0, r4
60310900:	ebffff14 	bl	60310558 <prvUnlockQueue>
60310904:	ebfffbce 	bl	6030f844 <xTaskResumeAll>
60310908:	e3a06001 	mov	r6, #1
6031090c:	ebfff869 	bl	6030eab8 <vTaskEnterCritical>
60310910:	e594c038 	ldr	ip, [r4, #56]	; 0x38
60310914:	e594003c 	ldr	r0, [r4, #60]	; 0x3c
60310918:	e15c0000 	cmp	ip, r0
6031091c:	3a000031 	bcc	603109e8 <xQueueGenericSend+0x128>
60310920:	e59d5004 	ldr	r5, [sp, #4]
60310924:	e3550000 	cmp	r5, #0
60310928:	0a00003f 	beq	60310a2c <xQueueGenericSend+0x16c>
6031092c:	e3560000 	cmp	r6, #0
60310930:	0a000027 	beq	603109d4 <xQueueGenericSend+0x114>
60310934:	ebfff87a 	bl	6030eb24 <vTaskExitCritical>
60310938:	ebfffdfc 	bl	60310130 <vTaskSuspendAll>
6031093c:	ebfff85d 	bl	6030eab8 <vTaskEnterCritical>
60310940:	e5d43044 	ldrb	r3, [r4, #68]	; 0x44
60310944:	e35300ff 	cmp	r3, #255	; 0xff
60310948:	05c47044 	strbeq	r7, [r4, #68]	; 0x44
6031094c:	e5d43045 	ldrb	r3, [r4, #69]	; 0x45
60310950:	e35300ff 	cmp	r3, #255	; 0xff
60310954:	05c47045 	strbeq	r7, [r4, #69]	; 0x45
60310958:	ebfff871 	bl	6030eb24 <vTaskExitCritical>
6031095c:	e28d1004 	add	r1, sp, #4
60310960:	e28d0008 	add	r0, sp, #8
60310964:	ebfffc63 	bl	6030faf8 <xTaskCheckForTimeOut>
60310968:	e3500000 	cmp	r0, #0
6031096c:	1a000032 	bne	60310a3c <xQueueGenericSend+0x17c>
60310970:	ebfff850 	bl	6030eab8 <vTaskEnterCritical>
60310974:	e5942038 	ldr	r2, [r4, #56]	; 0x38
60310978:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
6031097c:	e1520003 	cmp	r2, r3
60310980:	1affffdc 	bne	603108f8 <xQueueGenericSend+0x38>
60310984:	e2845010 	add	r5, r4, #16
60310988:	ebfff865 	bl	6030eb24 <vTaskExitCritical>
6031098c:	e59d1004 	ldr	r1, [sp, #4]
60310990:	e1a00005 	mov	r0, r5
60310994:	ebfffbb0 	bl	6030f85c <vTaskPlaceOnEventList>
60310998:	ebfff846 	bl	6030eab8 <vTaskEnterCritical>
6031099c:	e5942038 	ldr	r2, [r4, #56]	; 0x38
603109a0:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
603109a4:	e1520003 	cmp	r2, r3
603109a8:	0a00000c 	beq	603109e0 <xQueueGenericSend+0x120>
603109ac:	ebfff85c 	bl	6030eb24 <vTaskExitCritical>
603109b0:	e1a00005 	mov	r0, r5
603109b4:	ebfffbe1 	bl	6030f940 <vTaskPlaceRemoveFromEventList>
603109b8:	e1a00004 	mov	r0, r4
603109bc:	ebfffee5 	bl	60310558 <prvUnlockQueue>
603109c0:	ebfffb9f 	bl	6030f844 <xTaskResumeAll>
603109c4:	e3500000 	cmp	r0, #0
603109c8:	1affffce 	bne	60310908 <xQueueGenericSend+0x48>
603109cc:	ebfff824 	bl	6030ea64 <vTaskYieldWithinAPI>
603109d0:	eaffffcc 	b	60310908 <xQueueGenericSend+0x48>
603109d4:	e28d0008 	add	r0, sp, #8
603109d8:	ebfff7db 	bl	6030e94c <vTaskInternalSetTimeOutState>
603109dc:	eaffffd4 	b	60310934 <xQueueGenericSend+0x74>
603109e0:	ebfff84f 	bl	6030eb24 <vTaskExitCritical>
603109e4:	eafffff3 	b	603109b8 <xQueueGenericSend+0xf8>
603109e8:	e1a02008 	mov	r2, r8
603109ec:	e1a01009 	mov	r1, r9
603109f0:	e1a00004 	mov	r0, r4
603109f4:	e5943038 	ldr	r3, [r4, #56]	; 0x38
603109f8:	ebfffe64 	bl	60310390 <prvCopyDataToQueue>
603109fc:	e5943048 	ldr	r3, [r4, #72]	; 0x48
60310a00:	e3530000 	cmp	r3, #0
60310a04:	1a000027 	bne	60310aa8 <xQueueGenericSend+0x1e8>
60310a08:	e5943024 	ldr	r3, [r4, #36]	; 0x24
60310a0c:	e3530000 	cmp	r3, #0
60310a10:	1a00000f 	bne	60310a54 <xQueueGenericSend+0x194>
60310a14:	e3500000 	cmp	r0, #0
60310a18:	1a000011 	bne	60310a64 <xQueueGenericSend+0x1a4>
60310a1c:	ebfff840 	bl	6030eb24 <vTaskExitCritical>
60310a20:	e3a00001 	mov	r0, #1
60310a24:	e28dd014 	add	sp, sp, #20
60310a28:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
60310a2c:	ebfff83c 	bl	6030eb24 <vTaskExitCritical>
60310a30:	e1a00005 	mov	r0, r5
60310a34:	e28dd014 	add	sp, sp, #20
60310a38:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
60310a3c:	e1a00004 	mov	r0, r4
60310a40:	ebfffec4 	bl	60310558 <prvUnlockQueue>
60310a44:	ebfffb7e 	bl	6030f844 <xTaskResumeAll>
60310a48:	e3a00000 	mov	r0, #0
60310a4c:	e28dd014 	add	sp, sp, #20
60310a50:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
60310a54:	e2840024 	add	r0, r4, #36	; 0x24
60310a58:	ebfffbda 	bl	6030f9c8 <xTaskRemoveFromEventList>
60310a5c:	e3500000 	cmp	r0, #0
60310a60:	0affffed 	beq	60310a1c <xQueueGenericSend+0x15c>
60310a64:	ebfff7fe 	bl	6030ea64 <vTaskYieldWithinAPI>
60310a68:	eaffffeb 	b	60310a1c <xQueueGenericSend+0x15c>
60310a6c:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
60310a70:	e3530001 	cmp	r3, #1
60310a74:	1a00001f 	bne	60310af8 <xQueueGenericSend+0x238>
60310a78:	ebfff80e 	bl	6030eab8 <vTaskEnterCritical>
60310a7c:	e3a02002 	mov	r2, #2
60310a80:	e1a01009 	mov	r1, r9
60310a84:	e1a00004 	mov	r0, r4
60310a88:	e5943038 	ldr	r3, [r4, #56]	; 0x38
60310a8c:	e5945038 	ldr	r5, [r4, #56]	; 0x38
60310a90:	ebfffe3e 	bl	60310390 <prvCopyDataToQueue>
60310a94:	e5943048 	ldr	r3, [r4, #72]	; 0x48
60310a98:	e3530000 	cmp	r3, #0
60310a9c:	0affffd9 	beq	60310a08 <xQueueGenericSend+0x148>
60310aa0:	e3550000 	cmp	r5, #0
60310aa4:	1affffdc 	bne	60310a1c <xQueueGenericSend+0x15c>
60310aa8:	e1a01008 	mov	r1, r8
60310aac:	e1a00004 	mov	r0, r4
60310ab0:	ebfffe71 	bl	6031047c <prvNotifyQueueSetContainer>
60310ab4:	e3500000 	cmp	r0, #0
60310ab8:	0affffd7 	beq	60310a1c <xQueueGenericSend+0x15c>
60310abc:	eaffffe8 	b	60310a64 <xQueueGenericSend+0x1a4>
60310ac0:	e3050690 	movw	r0, #22160	; 0x5690
60310ac4:	e3460031 	movt	r0, #24625	; 0x6031
60310ac8:	e30012c6 	movw	r1, #710	; 0x2c6
60310acc:	ebffe57d 	bl	6030a0c8 <vAssertCalled>
60310ad0:	e3590000 	cmp	r9, #0
60310ad4:	1affff82 	bne	603108e4 <xQueueGenericSend+0x24>
60310ad8:	e5943040 	ldr	r3, [r4, #64]	; 0x40
60310adc:	e3530000 	cmp	r3, #0
60310ae0:	0affff7f 	beq	603108e4 <xQueueGenericSend+0x24>
60310ae4:	e3050690 	movw	r0, #22160	; 0x5690
60310ae8:	e3460031 	movt	r0, #24625	; 0x6031
60310aec:	e30012c7 	movw	r1, #711	; 0x2c7
60310af0:	ebffe574 	bl	6030a0c8 <vAssertCalled>
60310af4:	eaffff7a 	b	603108e4 <xQueueGenericSend+0x24>
60310af8:	e3a01fb2 	mov	r1, #712	; 0x2c8
60310afc:	e3050690 	movw	r0, #22160	; 0x5690
60310b00:	e3460031 	movt	r0, #24625	; 0x6031
60310b04:	ebffe56f 	bl	6030a0c8 <vAssertCalled>
60310b08:	eaffffda 	b	60310a78 <xQueueGenericSend+0x1b8>

60310b0c <xQueueGenericSendFromISR>:
60310b0c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60310b10:	e1a06001 	mov	r6, r1
60310b14:	e1a07002 	mov	r7, r2
60310b18:	e1a05003 	mov	r5, r3
60310b1c:	e2504000 	subs	r4, r0, #0
60310b20:	0a000023 	beq	60310bb4 <xQueueGenericSendFromISR+0xa8>
60310b24:	e3560000 	cmp	r6, #0
60310b28:	0a000027 	beq	60310bcc <xQueueGenericSendFromISR+0xc0>
60310b2c:	e3550002 	cmp	r5, #2
60310b30:	0a00002d 	beq	60310bec <xQueueGenericSendFromISR+0xe0>
60310b34:	ebfff7df 	bl	6030eab8 <vTaskEnterCritical>
60310b38:	e5942038 	ldr	r2, [r4, #56]	; 0x38
60310b3c:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
60310b40:	e1520003 	cmp	r2, r3
60310b44:	23a05000 	movcs	r5, #0
60310b48:	2a00000b 	bcs	60310b7c <xQueueGenericSendFromISR+0x70>
60310b4c:	e5d43045 	ldrb	r3, [r4, #69]	; 0x45
60310b50:	e1a01006 	mov	r1, r6
60310b54:	e1a02005 	mov	r2, r5
60310b58:	e6af6073 	sxtb	r6, r3
60310b5c:	e1a00004 	mov	r0, r4
60310b60:	ebfffe0a 	bl	60310390 <prvCopyDataToQueue>
60310b64:	e3760001 	cmn	r6, #1
60310b68:	0a000006 	beq	60310b88 <xQueueGenericSendFromISR+0x7c>
60310b6c:	e2866001 	add	r6, r6, #1
60310b70:	e3a05001 	mov	r5, #1
60310b74:	e6af6076 	sxtb	r6, r6
60310b78:	e5c46045 	strb	r6, [r4, #69]	; 0x45
60310b7c:	ebfff7e8 	bl	6030eb24 <vTaskExitCritical>
60310b80:	e1a00005 	mov	r0, r5
60310b84:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60310b88:	e5943048 	ldr	r3, [r4, #72]	; 0x48
60310b8c:	e3530000 	cmp	r3, #0
60310b90:	0a00001b 	beq	60310c04 <xQueueGenericSendFromISR+0xf8>
60310b94:	e1a01005 	mov	r1, r5
60310b98:	e1a00004 	mov	r0, r4
60310b9c:	ebfffe36 	bl	6031047c <prvNotifyQueueSetContainer>
60310ba0:	e3570000 	cmp	r7, #0
60310ba4:	13500000 	cmpne	r0, #0
60310ba8:	1a00001d 	bne	60310c24 <xQueueGenericSendFromISR+0x118>
60310bac:	e3a05001 	mov	r5, #1
60310bb0:	eafffff1 	b	60310b7c <xQueueGenericSendFromISR+0x70>
60310bb4:	e3a01fdd 	mov	r1, #884	; 0x374
60310bb8:	e3050690 	movw	r0, #22160	; 0x5690
60310bbc:	e3460031 	movt	r0, #24625	; 0x6031
60310bc0:	ebffe540 	bl	6030a0c8 <vAssertCalled>
60310bc4:	e3560000 	cmp	r6, #0
60310bc8:	1affffd7 	bne	60310b2c <xQueueGenericSendFromISR+0x20>
60310bcc:	e5943040 	ldr	r3, [r4, #64]	; 0x40
60310bd0:	e3530000 	cmp	r3, #0
60310bd4:	0affffd4 	beq	60310b2c <xQueueGenericSendFromISR+0x20>
60310bd8:	e3001375 	movw	r1, #885	; 0x375
60310bdc:	e3050690 	movw	r0, #22160	; 0x5690
60310be0:	e3460031 	movt	r0, #24625	; 0x6031
60310be4:	ebffe537 	bl	6030a0c8 <vAssertCalled>
60310be8:	eaffffcf 	b	60310b2c <xQueueGenericSendFromISR+0x20>
60310bec:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
60310bf0:	e3530001 	cmp	r3, #1
60310bf4:	1a00000e 	bne	60310c34 <xQueueGenericSendFromISR+0x128>
60310bf8:	ebfff7ae 	bl	6030eab8 <vTaskEnterCritical>
60310bfc:	e5943038 	ldr	r3, [r4, #56]	; 0x38
60310c00:	eaffffd1 	b	60310b4c <xQueueGenericSendFromISR+0x40>
60310c04:	e5943024 	ldr	r3, [r4, #36]	; 0x24
60310c08:	e3530000 	cmp	r3, #0
60310c0c:	0affffe6 	beq	60310bac <xQueueGenericSendFromISR+0xa0>
60310c10:	e2840024 	add	r0, r4, #36	; 0x24
60310c14:	ebfffb6b 	bl	6030f9c8 <xTaskRemoveFromEventList>
60310c18:	e3570000 	cmp	r7, #0
60310c1c:	13500000 	cmpne	r0, #0
60310c20:	0affffe1 	beq	60310bac <xQueueGenericSendFromISR+0xa0>
60310c24:	e3a03001 	mov	r3, #1
60310c28:	e1a05003 	mov	r5, r3
60310c2c:	e5873000 	str	r3, [r7]
60310c30:	eaffffd1 	b	60310b7c <xQueueGenericSendFromISR+0x70>
60310c34:	e3001376 	movw	r1, #886	; 0x376
60310c38:	e3050690 	movw	r0, #22160	; 0x5690
60310c3c:	e3460031 	movt	r0, #24625	; 0x6031
60310c40:	ebffe520 	bl	6030a0c8 <vAssertCalled>
60310c44:	eaffffeb 	b	60310bf8 <xQueueGenericSendFromISR+0xec>

60310c48 <xQueueGiveFromISR>:
60310c48:	e92d4070 	push	{r4, r5, r6, lr}
60310c4c:	e1a05001 	mov	r5, r1
60310c50:	e2504000 	subs	r4, r0, #0
60310c54:	0a000023 	beq	60310ce8 <xQueueGiveFromISR+0xa0>
60310c58:	e5943040 	ldr	r3, [r4, #64]	; 0x40
60310c5c:	e3530000 	cmp	r3, #0
60310c60:	1a000027 	bne	60310d04 <xQueueGiveFromISR+0xbc>
60310c64:	e5943000 	ldr	r3, [r4]
60310c68:	e3530000 	cmp	r3, #0
60310c6c:	0a00002b 	beq	60310d20 <xQueueGiveFromISR+0xd8>
60310c70:	ebfff790 	bl	6030eab8 <vTaskEnterCritical>
60310c74:	e5942038 	ldr	r2, [r4, #56]	; 0x38
60310c78:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
60310c7c:	e1530002 	cmp	r3, r2
60310c80:	93a06000 	movls	r6, #0
60310c84:	9a000009 	bls	60310cb0 <xQueueGiveFromISR+0x68>
60310c88:	e5d43045 	ldrb	r3, [r4, #69]	; 0x45
60310c8c:	e2822001 	add	r2, r2, #1
60310c90:	e35300ff 	cmp	r3, #255	; 0xff
60310c94:	e5842038 	str	r2, [r4, #56]	; 0x38
60310c98:	e6af3073 	sxtb	r3, r3
60310c9c:	0a000006 	beq	60310cbc <xQueueGiveFromISR+0x74>
60310ca0:	e2833001 	add	r3, r3, #1
60310ca4:	e3a06001 	mov	r6, #1
60310ca8:	e6af3073 	sxtb	r3, r3
60310cac:	e5c43045 	strb	r3, [r4, #69]	; 0x45
60310cb0:	ebfff79b 	bl	6030eb24 <vTaskExitCritical>
60310cb4:	e1a00006 	mov	r0, r6
60310cb8:	e8bd8070 	pop	{r4, r5, r6, pc}
60310cbc:	e5943048 	ldr	r3, [r4, #72]	; 0x48
60310cc0:	e3530000 	cmp	r3, #0
60310cc4:	0a00001d 	beq	60310d40 <xQueueGiveFromISR+0xf8>
60310cc8:	e3a01000 	mov	r1, #0
60310ccc:	e1a00004 	mov	r0, r4
60310cd0:	ebfffde9 	bl	6031047c <prvNotifyQueueSetContainer>
60310cd4:	e3550000 	cmp	r5, #0
60310cd8:	13500000 	cmpne	r0, #0
60310cdc:	1a00001f 	bne	60310d60 <xQueueGiveFromISR+0x118>
60310ce0:	e3a06001 	mov	r6, #1
60310ce4:	eafffff1 	b	60310cb0 <xQueueGiveFromISR+0x68>
60310ce8:	e3050690 	movw	r0, #22160	; 0x5690
60310cec:	e3460031 	movt	r0, #24625	; 0x6031
60310cf0:	e30013f3 	movw	r1, #1011	; 0x3f3
60310cf4:	ebffe4f3 	bl	6030a0c8 <vAssertCalled>
60310cf8:	e5943040 	ldr	r3, [r4, #64]	; 0x40
60310cfc:	e3530000 	cmp	r3, #0
60310d00:	0affffd7 	beq	60310c64 <xQueueGiveFromISR+0x1c>
60310d04:	e3050690 	movw	r0, #22160	; 0x5690
60310d08:	e3460031 	movt	r0, #24625	; 0x6031
60310d0c:	e30013f7 	movw	r1, #1015	; 0x3f7
60310d10:	ebffe4ec 	bl	6030a0c8 <vAssertCalled>
60310d14:	e5943000 	ldr	r3, [r4]
60310d18:	e3530000 	cmp	r3, #0
60310d1c:	1affffd3 	bne	60310c70 <xQueueGiveFromISR+0x28>
60310d20:	e5943008 	ldr	r3, [r4, #8]
60310d24:	e3530000 	cmp	r3, #0
60310d28:	0affffd0 	beq	60310c70 <xQueueGiveFromISR+0x28>
60310d2c:	e3a01fff 	mov	r1, #1020	; 0x3fc
60310d30:	e3050690 	movw	r0, #22160	; 0x5690
60310d34:	e3460031 	movt	r0, #24625	; 0x6031
60310d38:	ebffe4e2 	bl	6030a0c8 <vAssertCalled>
60310d3c:	eaffffcb 	b	60310c70 <xQueueGiveFromISR+0x28>
60310d40:	e5943024 	ldr	r3, [r4, #36]	; 0x24
60310d44:	e3530000 	cmp	r3, #0
60310d48:	0affffe4 	beq	60310ce0 <xQueueGiveFromISR+0x98>
60310d4c:	e2840024 	add	r0, r4, #36	; 0x24
60310d50:	ebfffb1c 	bl	6030f9c8 <xTaskRemoveFromEventList>
60310d54:	e3550000 	cmp	r5, #0
60310d58:	13500000 	cmpne	r0, #0
60310d5c:	0affffdf 	beq	60310ce0 <xQueueGiveFromISR+0x98>
60310d60:	e3a03001 	mov	r3, #1
60310d64:	e1a06003 	mov	r6, r3
60310d68:	e5853000 	str	r3, [r5]
60310d6c:	eaffffcf 	b	60310cb0 <xQueueGiveFromISR+0x68>

60310d70 <xQueueReceive>:
60310d70:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60310d74:	e1a06001 	mov	r6, r1
60310d78:	e24dd010 	sub	sp, sp, #16
60310d7c:	e2504000 	subs	r4, r0, #0
60310d80:	e58d2004 	str	r2, [sp, #4]
60310d84:	0a000062 	beq	60310f14 <xQueueReceive+0x1a4>
60310d88:	e3560000 	cmp	r6, #0
60310d8c:	0a000066 	beq	60310f2c <xQueueReceive+0x1bc>
60310d90:	ebfff748 	bl	6030eab8 <vTaskEnterCritical>
60310d94:	e5945038 	ldr	r5, [r4, #56]	; 0x38
60310d98:	e3550000 	cmp	r5, #0
60310d9c:	1a000045 	bne	60310eb8 <xQueueReceive+0x148>
60310da0:	e59d3004 	ldr	r3, [sp, #4]
60310da4:	e3530000 	cmp	r3, #0
60310da8:	0a000037 	beq	60310e8c <xQueueReceive+0x11c>
60310dac:	e28d0008 	add	r0, sp, #8
60310db0:	e1a07005 	mov	r7, r5
60310db4:	e2848024 	add	r8, r4, #36	; 0x24
60310db8:	ebfff6e3 	bl	6030e94c <vTaskInternalSetTimeOutState>
60310dbc:	ebfff758 	bl	6030eb24 <vTaskExitCritical>
60310dc0:	ebfffcda 	bl	60310130 <vTaskSuspendAll>
60310dc4:	ebfff73b 	bl	6030eab8 <vTaskEnterCritical>
60310dc8:	e5d43044 	ldrb	r3, [r4, #68]	; 0x44
60310dcc:	e35300ff 	cmp	r3, #255	; 0xff
60310dd0:	05c47044 	strbeq	r7, [r4, #68]	; 0x44
60310dd4:	e5d43045 	ldrb	r3, [r4, #69]	; 0x45
60310dd8:	e35300ff 	cmp	r3, #255	; 0xff
60310ddc:	05c47045 	strbeq	r7, [r4, #69]	; 0x45
60310de0:	ebfff74f 	bl	6030eb24 <vTaskExitCritical>
60310de4:	e28d1004 	add	r1, sp, #4
60310de8:	e28d0008 	add	r0, sp, #8
60310dec:	ebfffb41 	bl	6030faf8 <xTaskCheckForTimeOut>
60310df0:	e3500000 	cmp	r0, #0
60310df4:	1a000015 	bne	60310e50 <xQueueReceive+0xe0>
60310df8:	ebfff72e 	bl	6030eab8 <vTaskEnterCritical>
60310dfc:	e5943038 	ldr	r3, [r4, #56]	; 0x38
60310e00:	e3530000 	cmp	r3, #0
60310e04:	1a000024 	bne	60310e9c <xQueueReceive+0x12c>
60310e08:	ebfff745 	bl	6030eb24 <vTaskExitCritical>
60310e0c:	e59d1004 	ldr	r1, [sp, #4]
60310e10:	e1a00008 	mov	r0, r8
60310e14:	ebfffa90 	bl	6030f85c <vTaskPlaceOnEventList>
60310e18:	ebfff726 	bl	6030eab8 <vTaskEnterCritical>
60310e1c:	e5943038 	ldr	r3, [r4, #56]	; 0x38
60310e20:	e3530000 	cmp	r3, #0
60310e24:	0a000021 	beq	60310eb0 <xQueueReceive+0x140>
60310e28:	ebfff73d 	bl	6030eb24 <vTaskExitCritical>
60310e2c:	e1a00008 	mov	r0, r8
60310e30:	ebfffac2 	bl	6030f940 <vTaskPlaceRemoveFromEventList>
60310e34:	e1a00004 	mov	r0, r4
60310e38:	ebfffdc6 	bl	60310558 <prvUnlockQueue>
60310e3c:	ebfffa80 	bl	6030f844 <xTaskResumeAll>
60310e40:	e3500000 	cmp	r0, #0
60310e44:	1a000009 	bne	60310e70 <xQueueReceive+0x100>
60310e48:	ebfff705 	bl	6030ea64 <vTaskYieldWithinAPI>
60310e4c:	ea000007 	b	60310e70 <xQueueReceive+0x100>
60310e50:	e1a00004 	mov	r0, r4
60310e54:	ebfffdbf 	bl	60310558 <prvUnlockQueue>
60310e58:	ebfffa79 	bl	6030f844 <xTaskResumeAll>
60310e5c:	ebfff715 	bl	6030eab8 <vTaskEnterCritical>
60310e60:	e5943038 	ldr	r3, [r4, #56]	; 0x38
60310e64:	e3530000 	cmp	r3, #0
60310e68:	0a000007 	beq	60310e8c <xQueueReceive+0x11c>
60310e6c:	ebfff72c 	bl	6030eb24 <vTaskExitCritical>
60310e70:	ebfff710 	bl	6030eab8 <vTaskEnterCritical>
60310e74:	e5945038 	ldr	r5, [r4, #56]	; 0x38
60310e78:	e3550000 	cmp	r5, #0
60310e7c:	1a00000d 	bne	60310eb8 <xQueueReceive+0x148>
60310e80:	e59d3004 	ldr	r3, [sp, #4]
60310e84:	e3530000 	cmp	r3, #0
60310e88:	1affffcb 	bne	60310dbc <xQueueReceive+0x4c>
60310e8c:	ebfff724 	bl	6030eb24 <vTaskExitCritical>
60310e90:	e3a00000 	mov	r0, #0
60310e94:	e28dd010 	add	sp, sp, #16
60310e98:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60310e9c:	ebfff720 	bl	6030eb24 <vTaskExitCritical>
60310ea0:	e1a00004 	mov	r0, r4
60310ea4:	ebfffdab 	bl	60310558 <prvUnlockQueue>
60310ea8:	ebfffa65 	bl	6030f844 <xTaskResumeAll>
60310eac:	eaffffef 	b	60310e70 <xQueueReceive+0x100>
60310eb0:	ebfff71b 	bl	6030eb24 <vTaskExitCritical>
60310eb4:	eaffffde 	b	60310e34 <xQueueReceive+0xc4>
60310eb8:	ebfff6fe 	bl	6030eab8 <vTaskEnterCritical>
60310ebc:	e5942040 	ldr	r2, [r4, #64]	; 0x40
60310ec0:	e3520000 	cmp	r2, #0
60310ec4:	0a000008 	beq	60310eec <xQueueReceive+0x17c>
60310ec8:	e594100c 	ldr	r1, [r4, #12]
60310ecc:	e5943008 	ldr	r3, [r4, #8]
60310ed0:	e0811002 	add	r1, r1, r2
60310ed4:	e1510003 	cmp	r1, r3
60310ed8:	e584100c 	str	r1, [r4, #12]
60310edc:	e1a00006 	mov	r0, r6
60310ee0:	25941000 	ldrcs	r1, [r4]
60310ee4:	2584100c 	strcs	r1, [r4, #12]
60310ee8:	ebfff135 	bl	6030d3c4 <__wrap_memcpy>
60310eec:	ebfff70c 	bl	6030eb24 <vTaskExitCritical>
60310ef0:	e2455001 	sub	r5, r5, #1
60310ef4:	e5845038 	str	r5, [r4, #56]	; 0x38
60310ef8:	e5943010 	ldr	r3, [r4, #16]
60310efc:	e3530000 	cmp	r3, #0
60310f00:	1a000011 	bne	60310f4c <xQueueReceive+0x1dc>
60310f04:	ebfff706 	bl	6030eb24 <vTaskExitCritical>
60310f08:	e3a00001 	mov	r0, #1
60310f0c:	e28dd010 	add	sp, sp, #16
60310f10:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60310f14:	e3050690 	movw	r0, #22160	; 0x5690
60310f18:	e3460031 	movt	r0, #24625	; 0x6031
60310f1c:	e3001476 	movw	r1, #1142	; 0x476
60310f20:	ebffe468 	bl	6030a0c8 <vAssertCalled>
60310f24:	e3560000 	cmp	r6, #0
60310f28:	1affff98 	bne	60310d90 <xQueueReceive+0x20>
60310f2c:	e5943040 	ldr	r3, [r4, #64]	; 0x40
60310f30:	e3530000 	cmp	r3, #0
60310f34:	0affff95 	beq	60310d90 <xQueueReceive+0x20>
60310f38:	e3050690 	movw	r0, #22160	; 0x5690
60310f3c:	e3460031 	movt	r0, #24625	; 0x6031
60310f40:	e300147a 	movw	r1, #1146	; 0x47a
60310f44:	ebffe45f 	bl	6030a0c8 <vAssertCalled>
60310f48:	eaffff90 	b	60310d90 <xQueueReceive+0x20>
60310f4c:	e2840010 	add	r0, r4, #16
60310f50:	ebfffa9c 	bl	6030f9c8 <xTaskRemoveFromEventList>
60310f54:	e3500000 	cmp	r0, #0
60310f58:	0affffe9 	beq	60310f04 <xQueueReceive+0x194>
60310f5c:	ebfff6c0 	bl	6030ea64 <vTaskYieldWithinAPI>
60310f60:	eaffffe7 	b	60310f04 <xQueueReceive+0x194>

60310f64 <xQueueSemaphoreTake>:
60310f64:	e92d40f0 	push	{r4, r5, r6, r7, lr}
60310f68:	e2504000 	subs	r4, r0, #0
60310f6c:	e24dd014 	sub	sp, sp, #20
60310f70:	e58d1004 	str	r1, [sp, #4]
60310f74:	0a00007b 	beq	60311168 <xQueueSemaphoreTake+0x204>
60310f78:	e5943040 	ldr	r3, [r4, #64]	; 0x40
60310f7c:	e3530000 	cmp	r3, #0
60310f80:	1a00007f 	bne	60311184 <xQueueSemaphoreTake+0x220>
60310f84:	ebfff6cb 	bl	6030eab8 <vTaskEnterCritical>
60310f88:	e5943038 	ldr	r3, [r4, #56]	; 0x38
60310f8c:	e3a06000 	mov	r6, #0
60310f90:	e1a05006 	mov	r5, r6
60310f94:	e1a07006 	mov	r7, r6
60310f98:	e3530000 	cmp	r3, #0
60310f9c:	1a00003a 	bne	6031108c <xQueueSemaphoreTake+0x128>
60310fa0:	e59d3004 	ldr	r3, [sp, #4]
60310fa4:	e3530000 	cmp	r3, #0
60310fa8:	0a000067 	beq	6031114c <xQueueSemaphoreTake+0x1e8>
60310fac:	e3550000 	cmp	r5, #0
60310fb0:	0a000042 	beq	603110c0 <xQueueSemaphoreTake+0x15c>
60310fb4:	ebfff6da 	bl	6030eb24 <vTaskExitCritical>
60310fb8:	ebfffc5c 	bl	60310130 <vTaskSuspendAll>
60310fbc:	ebfff6bd 	bl	6030eab8 <vTaskEnterCritical>
60310fc0:	e5d43044 	ldrb	r3, [r4, #68]	; 0x44
60310fc4:	e35300ff 	cmp	r3, #255	; 0xff
60310fc8:	05c47044 	strbeq	r7, [r4, #68]	; 0x44
60310fcc:	e5d43045 	ldrb	r3, [r4, #69]	; 0x45
60310fd0:	e35300ff 	cmp	r3, #255	; 0xff
60310fd4:	05c47045 	strbeq	r7, [r4, #69]	; 0x45
60310fd8:	ebfff6d1 	bl	6030eb24 <vTaskExitCritical>
60310fdc:	e28d1004 	add	r1, sp, #4
60310fe0:	e28d0008 	add	r0, sp, #8
60310fe4:	ebfffac3 	bl	6030faf8 <xTaskCheckForTimeOut>
60310fe8:	e3500000 	cmp	r0, #0
60310fec:	1a000019 	bne	60311058 <xQueueSemaphoreTake+0xf4>
60310ff0:	ebfff6b0 	bl	6030eab8 <vTaskEnterCritical>
60310ff4:	e5943038 	ldr	r3, [r4, #56]	; 0x38
60310ff8:	e3530000 	cmp	r3, #0
60310ffc:	1a000032 	bne	603110cc <xQueueSemaphoreTake+0x168>
60311000:	ebfff6c7 	bl	6030eb24 <vTaskExitCritical>
60311004:	e5943000 	ldr	r3, [r4]
60311008:	e3530000 	cmp	r3, #0
6031100c:	0a000048 	beq	60311134 <xQueueSemaphoreTake+0x1d0>
60311010:	e2845024 	add	r5, r4, #36	; 0x24
60311014:	e59d1004 	ldr	r1, [sp, #4]
60311018:	e1a00005 	mov	r0, r5
6031101c:	ebfffa0e 	bl	6030f85c <vTaskPlaceOnEventList>
60311020:	ebfff6a4 	bl	6030eab8 <vTaskEnterCritical>
60311024:	e5943038 	ldr	r3, [r4, #56]	; 0x38
60311028:	e3530000 	cmp	r3, #0
6031102c:	0a000031 	beq	603110f8 <xQueueSemaphoreTake+0x194>
60311030:	ebfff6bb 	bl	6030eb24 <vTaskExitCritical>
60311034:	e1a00005 	mov	r0, r5
60311038:	ebfffa40 	bl	6030f940 <vTaskPlaceRemoveFromEventList>
6031103c:	e1a00004 	mov	r0, r4
60311040:	ebfffd44 	bl	60310558 <prvUnlockQueue>
60311044:	ebfff9fe 	bl	6030f844 <xTaskResumeAll>
60311048:	e3500000 	cmp	r0, #0
6031104c:	1a000009 	bne	60311078 <xQueueSemaphoreTake+0x114>
60311050:	ebfff683 	bl	6030ea64 <vTaskYieldWithinAPI>
60311054:	ea000007 	b	60311078 <xQueueSemaphoreTake+0x114>
60311058:	e1a00004 	mov	r0, r4
6031105c:	ebfffd3d 	bl	60310558 <prvUnlockQueue>
60311060:	ebfff9f7 	bl	6030f844 <xTaskResumeAll>
60311064:	ebfff693 	bl	6030eab8 <vTaskEnterCritical>
60311068:	e5943038 	ldr	r3, [r4, #56]	; 0x38
6031106c:	e3530000 	cmp	r3, #0
60311070:	0a00001a 	beq	603110e0 <xQueueSemaphoreTake+0x17c>
60311074:	ebfff6aa 	bl	6030eb24 <vTaskExitCritical>
60311078:	ebfff68e 	bl	6030eab8 <vTaskEnterCritical>
6031107c:	e5943038 	ldr	r3, [r4, #56]	; 0x38
60311080:	e3a05001 	mov	r5, #1
60311084:	e3530000 	cmp	r3, #0
60311088:	0affffc4 	beq	60310fa0 <xQueueSemaphoreTake+0x3c>
6031108c:	e5942000 	ldr	r2, [r4]
60311090:	e2433001 	sub	r3, r3, #1
60311094:	e3520000 	cmp	r2, #0
60311098:	e5843038 	str	r3, [r4, #56]	; 0x38
6031109c:	0a000043 	beq	603111b0 <xQueueSemaphoreTake+0x24c>
603110a0:	e5943010 	ldr	r3, [r4, #16]
603110a4:	e3530000 	cmp	r3, #0
603110a8:	1a00003a 	bne	60311198 <xQueueSemaphoreTake+0x234>
603110ac:	e3a06001 	mov	r6, #1
603110b0:	ebfff69b 	bl	6030eb24 <vTaskExitCritical>
603110b4:	e1a00006 	mov	r0, r6
603110b8:	e28dd014 	add	sp, sp, #20
603110bc:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
603110c0:	e28d0008 	add	r0, sp, #8
603110c4:	ebfff620 	bl	6030e94c <vTaskInternalSetTimeOutState>
603110c8:	eaffffb9 	b	60310fb4 <xQueueSemaphoreTake+0x50>
603110cc:	ebfff694 	bl	6030eb24 <vTaskExitCritical>
603110d0:	e1a00004 	mov	r0, r4
603110d4:	ebfffd1f 	bl	60310558 <prvUnlockQueue>
603110d8:	ebfff9d9 	bl	6030f844 <xTaskResumeAll>
603110dc:	eaffffe5 	b	60311078 <xQueueSemaphoreTake+0x114>
603110e0:	ebfff68f 	bl	6030eb24 <vTaskExitCritical>
603110e4:	e3560000 	cmp	r6, #0
603110e8:	1a000004 	bne	60311100 <xQueueSemaphoreTake+0x19c>
603110ec:	e1a00006 	mov	r0, r6
603110f0:	e28dd014 	add	sp, sp, #20
603110f4:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
603110f8:	ebfff689 	bl	6030eb24 <vTaskExitCritical>
603110fc:	eaffffce 	b	6031103c <xQueueSemaphoreTake+0xd8>
60311100:	ebfff66c 	bl	6030eab8 <vTaskEnterCritical>
60311104:	e5941024 	ldr	r1, [r4, #36]	; 0x24
60311108:	e5940008 	ldr	r0, [r4, #8]
6031110c:	e3510000 	cmp	r1, #0
60311110:	e3a06000 	mov	r6, #0
60311114:	15943030 	ldrne	r3, [r4, #48]	; 0x30
60311118:	15931000 	ldrne	r1, [r3]
6031111c:	1261100b 	rsbne	r1, r1, #11
60311120:	ebfffb6a 	bl	6030fed0 <vTaskPriorityDisinheritAfterTimeout>
60311124:	ebfff67e 	bl	6030eb24 <vTaskExitCritical>
60311128:	e1a00006 	mov	r0, r6
6031112c:	e28dd014 	add	sp, sp, #20
60311130:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
60311134:	ebfff65f 	bl	6030eab8 <vTaskEnterCritical>
60311138:	e5940008 	ldr	r0, [r4, #8]
6031113c:	ebfffab7 	bl	6030fc20 <xTaskPriorityInherit>
60311140:	e1a06000 	mov	r6, r0
60311144:	ebfff676 	bl	6030eb24 <vTaskExitCritical>
60311148:	eaffffb0 	b	60311010 <xQueueSemaphoreTake+0xac>
6031114c:	e3560000 	cmp	r6, #0
60311150:	1a000019 	bne	603111bc <xQueueSemaphoreTake+0x258>
60311154:	e3a06000 	mov	r6, #0
60311158:	ebfff671 	bl	6030eb24 <vTaskExitCritical>
6031115c:	e1a00006 	mov	r0, r6
60311160:	e28dd014 	add	sp, sp, #20
60311164:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
60311168:	e3a01e4f 	mov	r1, #1264	; 0x4f0
6031116c:	e3050690 	movw	r0, #22160	; 0x5690
60311170:	e3460031 	movt	r0, #24625	; 0x6031
60311174:	ebffe3d3 	bl	6030a0c8 <vAssertCalled>
60311178:	e5943040 	ldr	r3, [r4, #64]	; 0x40
6031117c:	e3530000 	cmp	r3, #0
60311180:	0affff7f 	beq	60310f84 <xQueueSemaphoreTake+0x20>
60311184:	e3050690 	movw	r0, #22160	; 0x5690
60311188:	e3460031 	movt	r0, #24625	; 0x6031
6031118c:	e30014f4 	movw	r1, #1268	; 0x4f4
60311190:	ebffe3cc 	bl	6030a0c8 <vAssertCalled>
60311194:	eaffff7a 	b	60310f84 <xQueueSemaphoreTake+0x20>
60311198:	e2840010 	add	r0, r4, #16
6031119c:	ebfffa09 	bl	6030f9c8 <xTaskRemoveFromEventList>
603111a0:	e3500000 	cmp	r0, #0
603111a4:	0affffc0 	beq	603110ac <xQueueSemaphoreTake+0x148>
603111a8:	ebfff62d 	bl	6030ea64 <vTaskYieldWithinAPI>
603111ac:	eaffffbe 	b	603110ac <xQueueSemaphoreTake+0x148>
603111b0:	ebfffc1a 	bl	60310220 <pvTaskIncrementMutexHeldCount>
603111b4:	e5840008 	str	r0, [r4, #8]
603111b8:	eaffffb8 	b	603110a0 <xQueueSemaphoreTake+0x13c>
603111bc:	e3050690 	movw	r0, #22160	; 0x5690
603111c0:	e3460031 	movt	r0, #24625	; 0x6031
603111c4:	e3001533 	movw	r1, #1331	; 0x533
603111c8:	ebffe3be 	bl	6030a0c8 <vAssertCalled>
603111cc:	eaffffe0 	b	60311154 <xQueueSemaphoreTake+0x1f0>

603111d0 <xQueueReceiveFromISR>:
603111d0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
603111d4:	e1a06001 	mov	r6, r1
603111d8:	e1a08002 	mov	r8, r2
603111dc:	e2504000 	subs	r4, r0, #0
603111e0:	0a000027 	beq	60311284 <xQueueReceiveFromISR+0xb4>
603111e4:	e3560000 	cmp	r6, #0
603111e8:	0a00002b 	beq	6031129c <xQueueReceiveFromISR+0xcc>
603111ec:	ebfff631 	bl	6030eab8 <vTaskEnterCritical>
603111f0:	e5945038 	ldr	r5, [r4, #56]	; 0x38
603111f4:	e3550000 	cmp	r5, #0
603111f8:	1a000002 	bne	60311208 <xQueueReceiveFromISR+0x38>
603111fc:	ebfff648 	bl	6030eb24 <vTaskExitCritical>
60311200:	e1a00005 	mov	r0, r5
60311204:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60311208:	e5d47044 	ldrb	r7, [r4, #68]	; 0x44
6031120c:	ebfff629 	bl	6030eab8 <vTaskEnterCritical>
60311210:	e5942040 	ldr	r2, [r4, #64]	; 0x40
60311214:	e6af7077 	sxtb	r7, r7
60311218:	e3520000 	cmp	r2, #0
6031121c:	1a000009 	bne	60311248 <xQueueReceiveFromISR+0x78>
60311220:	ebfff63f 	bl	6030eb24 <vTaskExitCritical>
60311224:	e2455001 	sub	r5, r5, #1
60311228:	e3770001 	cmn	r7, #1
6031122c:	e5845038 	str	r5, [r4, #56]	; 0x38
60311230:	0a00000e 	beq	60311270 <xQueueReceiveFromISR+0xa0>
60311234:	e2877001 	add	r7, r7, #1
60311238:	e3a05001 	mov	r5, #1
6031123c:	e6af7077 	sxtb	r7, r7
60311240:	e5c47044 	strb	r7, [r4, #68]	; 0x44
60311244:	eaffffec 	b	603111fc <xQueueReceiveFromISR+0x2c>
60311248:	e594100c 	ldr	r1, [r4, #12]
6031124c:	e5943008 	ldr	r3, [r4, #8]
60311250:	e0811002 	add	r1, r1, r2
60311254:	e1510003 	cmp	r1, r3
60311258:	e584100c 	str	r1, [r4, #12]
6031125c:	e1a00006 	mov	r0, r6
60311260:	25941000 	ldrcs	r1, [r4]
60311264:	2584100c 	strcs	r1, [r4, #12]
60311268:	ebfff055 	bl	6030d3c4 <__wrap_memcpy>
6031126c:	eaffffeb 	b	60311220 <xQueueReceiveFromISR+0x50>
60311270:	e5943010 	ldr	r3, [r4, #16]
60311274:	e3530000 	cmp	r3, #0
60311278:	1a00000f 	bne	603112bc <xQueueReceiveFromISR+0xec>
6031127c:	e3a05001 	mov	r5, #1
60311280:	eaffffdd 	b	603111fc <xQueueReceiveFromISR+0x2c>
60311284:	e3050690 	movw	r0, #22160	; 0x5690
60311288:	e3460031 	movt	r0, #24625	; 0x6031
6031128c:	e3001625 	movw	r1, #1573	; 0x625
60311290:	ebffe38c 	bl	6030a0c8 <vAssertCalled>
60311294:	e3560000 	cmp	r6, #0
60311298:	1affffd3 	bne	603111ec <xQueueReceiveFromISR+0x1c>
6031129c:	e5943040 	ldr	r3, [r4, #64]	; 0x40
603112a0:	e3530000 	cmp	r3, #0
603112a4:	0affffd0 	beq	603111ec <xQueueReceiveFromISR+0x1c>
603112a8:	e3050690 	movw	r0, #22160	; 0x5690
603112ac:	e3460031 	movt	r0, #24625	; 0x6031
603112b0:	e3001626 	movw	r1, #1574	; 0x626
603112b4:	ebffe383 	bl	6030a0c8 <vAssertCalled>
603112b8:	eaffffcb 	b	603111ec <xQueueReceiveFromISR+0x1c>
603112bc:	e2840010 	add	r0, r4, #16
603112c0:	ebfff9c0 	bl	6030f9c8 <xTaskRemoveFromEventList>
603112c4:	e3580000 	cmp	r8, #0
603112c8:	13500000 	cmpne	r0, #0
603112cc:	13a03001 	movne	r3, #1
603112d0:	11a05003 	movne	r5, r3
603112d4:	15883000 	strne	r3, [r8]
603112d8:	0affffe7 	beq	6031127c <xQueueReceiveFromISR+0xac>
603112dc:	eaffffc6 	b	603111fc <xQueueReceiveFromISR+0x2c>

603112e0 <vQueueAddToRegistry>:
603112e0:	e304c070 	movw	ip, #16496	; 0x4070
603112e4:	e346c032 	movt	ip, #24626	; 0x6032
603112e8:	e3a03000 	mov	r3, #0
603112ec:	ea000002 	b	603112fc <vQueueAddToRegistry+0x1c>
603112f0:	e2833001 	add	r3, r3, #1
603112f4:	e3530008 	cmp	r3, #8
603112f8:	012fff1e 	bxeq	lr
603112fc:	e79c2183 	ldr	r2, [ip, r3, lsl #3]
60311300:	e3520000 	cmp	r2, #0
60311304:	1afffff9 	bne	603112f0 <vQueueAddToRegistry+0x10>
60311308:	e08c2183 	add	r2, ip, r3, lsl #3
6031130c:	e78c1183 	str	r1, [ip, r3, lsl #3]
60311310:	e5820004 	str	r0, [r2, #4]
60311314:	e12fff1e 	bx	lr

60311318 <vQueueWaitForMessageRestricted>:
60311318:	e92d4070 	push	{r4, r5, r6, lr}
6031131c:	e1a04000 	mov	r4, r0
60311320:	e1a06001 	mov	r6, r1
60311324:	e1a05002 	mov	r5, r2
60311328:	ebfff5e2 	bl	6030eab8 <vTaskEnterCritical>
6031132c:	e5d43044 	ldrb	r3, [r4, #68]	; 0x44
60311330:	e35300ff 	cmp	r3, #255	; 0xff
60311334:	03a03000 	moveq	r3, #0
60311338:	05c43044 	strbeq	r3, [r4, #68]	; 0x44
6031133c:	e5d43045 	ldrb	r3, [r4, #69]	; 0x45
60311340:	e35300ff 	cmp	r3, #255	; 0xff
60311344:	03a03000 	moveq	r3, #0
60311348:	05c43045 	strbeq	r3, [r4, #69]	; 0x45
6031134c:	ebfff5f4 	bl	6030eb24 <vTaskExitCritical>
60311350:	ebfff5d8 	bl	6030eab8 <vTaskEnterCritical>
60311354:	e5943038 	ldr	r3, [r4, #56]	; 0x38
60311358:	e3530000 	cmp	r3, #0
6031135c:	0a000003 	beq	60311370 <vQueueWaitForMessageRestricted+0x58>
60311360:	ebfff5ef 	bl	6030eb24 <vTaskExitCritical>
60311364:	e1a00004 	mov	r0, r4
60311368:	e8bd4070 	pop	{r4, r5, r6, lr}
6031136c:	eafffc79 	b	60310558 <prvUnlockQueue>
60311370:	e2840024 	add	r0, r4, #36	; 0x24
60311374:	e1a02005 	mov	r2, r5
60311378:	e1a01006 	mov	r1, r6
6031137c:	ebfff951 	bl	6030f8c8 <vTaskPlaceOnEventListRestricted>
60311380:	ebfff5e7 	bl	6030eb24 <vTaskExitCritical>
60311384:	e1a00004 	mov	r0, r4
60311388:	e8bd4070 	pop	{r4, r5, r6, lr}
6031138c:	eafffc71 	b	60310558 <prvUnlockQueue>

60311390 <prvCheckForValidListAndQueue>:
60311390:	e92d40f0 	push	{r4, r5, r6, r7, lr}
60311394:	e3044228 	movw	r4, #16936	; 0x4228
60311398:	e3464032 	movt	r4, #24626	; 0x6032
6031139c:	e24dd00c 	sub	sp, sp, #12
603113a0:	ebfff5c4 	bl	6030eab8 <vTaskEnterCritical>
603113a4:	e5945000 	ldr	r5, [r4]
603113a8:	e3550000 	cmp	r5, #0
603113ac:	0a000002 	beq	603113bc <prvCheckForValidListAndQueue+0x2c>
603113b0:	e28dd00c 	add	sp, sp, #12
603113b4:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
603113b8:	eafff5d9 	b	6030eb24 <vTaskExitCritical>
603113bc:	e30471a8 	movw	r7, #16808	; 0x41a8
603113c0:	e3467032 	movt	r7, #24626	; 0x6032
603113c4:	e1a00007 	mov	r0, r7
603113c8:	e30461bc 	movw	r6, #16828	; 0x41bc
603113cc:	e3466032 	movt	r6, #24626	; 0x6032
603113d0:	ebfffbb1 	bl	6031029c <vListInitialise>
603113d4:	e1a00006 	mov	r0, r6
603113d8:	ebfffbaf 	bl	6031029c <vListInitialise>
603113dc:	e30420b0 	movw	r2, #16560	; 0x40b0
603113e0:	e3462032 	movt	r2, #24626	; 0x6032
603113e4:	e58d5000 	str	r5, [sp]
603113e8:	e3a01010 	mov	r1, #16
603113ec:	e5827000 	str	r7, [r2]
603113f0:	e30420b4 	movw	r2, #16564	; 0x40b4
603113f4:	e3462032 	movt	r2, #24626	; 0x6032
603113f8:	e3a0000f 	mov	r0, #15
603113fc:	e30431d4 	movw	r3, #16852	; 0x41d4
60311400:	e3463032 	movt	r3, #24626	; 0x6032
60311404:	e5826000 	str	r6, [r2]
60311408:	e30420b8 	movw	r2, #16568	; 0x40b8
6031140c:	e3462032 	movt	r2, #24626	; 0x6032
60311410:	ebfffcbb 	bl	60310704 <xQueueGenericCreateStatic>
60311414:	e3500000 	cmp	r0, #0
60311418:	e5840000 	str	r0, [r4]
6031141c:	0affffe3 	beq	603113b0 <prvCheckForValidListAndQueue+0x20>
60311420:	e3051720 	movw	r1, #22304	; 0x5720
60311424:	e3461031 	movt	r1, #24625	; 0x6031
60311428:	ebffffac 	bl	603112e0 <vQueueAddToRegistry>
6031142c:	eaffffdf 	b	603113b0 <prvCheckForValidListAndQueue+0x20>

60311430 <xTimerCreateTimerTask>:
60311430:	e92d4010 	push	{r4, lr}
60311434:	e24dd020 	sub	sp, sp, #32
60311438:	ebffffd4 	bl	60311390 <prvCheckForValidListAndQueue>
6031143c:	e3043228 	movw	r3, #16936	; 0x4228
60311440:	e3463032 	movt	r3, #24626	; 0x6032
60311444:	e5933000 	ldr	r3, [r3]
60311448:	e3530000 	cmp	r3, #0
6031144c:	0a00001a 	beq	603114bc <xTimerCreateTimerTask+0x8c>
60311450:	e28d201c 	add	r2, sp, #28
60311454:	e28d1018 	add	r1, sp, #24
60311458:	e28d0014 	add	r0, sp, #20
6031145c:	e3a04000 	mov	r4, #0
60311460:	e58d4014 	str	r4, [sp, #20]
60311464:	e58d4018 	str	r4, [sp, #24]
60311468:	eb00039c 	bl	603122e0 <vApplicationGetTimerTaskMemory>
6031146c:	e59d0018 	ldr	r0, [sp, #24]
60311470:	e59dc014 	ldr	ip, [sp, #20]
60311474:	e3a0100a 	mov	r1, #10
60311478:	e1a03004 	mov	r3, r4
6031147c:	e98d1001 	stmib	sp, {r0, ip}
60311480:	e58d1000 	str	r1, [sp]
60311484:	e59d201c 	ldr	r2, [sp, #28]
60311488:	e3051728 	movw	r1, #22312	; 0x5728
6031148c:	e3461031 	movt	r1, #24625	; 0x6031
60311490:	e301064c 	movw	r0, #5708	; 0x164c
60311494:	e3460031 	movt	r0, #24625	; 0x6031
60311498:	ebfff661 	bl	6030ee24 <xTaskCreateStatic>
6031149c:	e304322c 	movw	r3, #16940	; 0x422c
603114a0:	e3463032 	movt	r3, #24626	; 0x6032
603114a4:	e1500004 	cmp	r0, r4
603114a8:	e5830000 	str	r0, [r3]
603114ac:	13a00001 	movne	r0, #1
603114b0:	0a000001 	beq	603114bc <xTimerCreateTimerTask+0x8c>
603114b4:	e28dd020 	add	sp, sp, #32
603114b8:	e8bd8010 	pop	{r4, pc}
603114bc:	e300110d 	movw	r1, #269	; 0x10d
603114c0:	e3050730 	movw	r0, #22320	; 0x5730
603114c4:	e3460031 	movt	r0, #24625	; 0x6031
603114c8:	ebffe2fe 	bl	6030a0c8 <vAssertCalled>
603114cc:	e3a00000 	mov	r0, #0
603114d0:	e28dd020 	add	sp, sp, #32
603114d4:	e8bd8010 	pop	{r4, pc}

603114d8 <xTimerGenericCommand>:
603114d8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
603114dc:	e1a05001 	mov	r5, r1
603114e0:	e24dd010 	sub	sp, sp, #16
603114e4:	e1a07002 	mov	r7, r2
603114e8:	e1a08003 	mov	r8, r3
603114ec:	e2504000 	subs	r4, r0, #0
603114f0:	0a00001b 	beq	60311564 <xTimerGenericCommand+0x8c>
603114f4:	e3046228 	movw	r6, #16936	; 0x4228
603114f8:	e3466032 	movt	r6, #24626	; 0x6032
603114fc:	e5960000 	ldr	r0, [r6]
60311500:	e3500000 	cmp	r0, #0
60311504:	0a00000e 	beq	60311544 <xTimerGenericCommand+0x6c>
60311508:	e3550005 	cmp	r5, #5
6031150c:	e58d7004 	str	r7, [sp, #4]
60311510:	e58d5000 	str	r5, [sp]
60311514:	e58d4008 	str	r4, [sp, #8]
60311518:	ca00000b 	bgt	6031154c <xTimerGenericCommand+0x74>
6031151c:	ebfff539 	bl	6030ea08 <xTaskGetSchedulerState>
60311520:	e3500002 	cmp	r0, #2
60311524:	13a03000 	movne	r3, #0
60311528:	03a03000 	moveq	r3, #0
6031152c:	05960000 	ldreq	r0, [r6]
60311530:	059d2028 	ldreq	r2, [sp, #40]	; 0x28
60311534:	15960000 	ldrne	r0, [r6]
60311538:	11a02003 	movne	r2, r3
6031153c:	e1a0100d 	mov	r1, sp
60311540:	ebfffcde 	bl	603108c0 <xQueueGenericSend>
60311544:	e28dd010 	add	sp, sp, #16
60311548:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
6031154c:	e3a03000 	mov	r3, #0
60311550:	e1a02008 	mov	r2, r8
60311554:	e1a0100d 	mov	r1, sp
60311558:	ebfffd6b 	bl	60310b0c <xQueueGenericSendFromISR>
6031155c:	e28dd010 	add	sp, sp, #16
60311560:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60311564:	e300117b 	movw	r1, #379	; 0x17b
60311568:	e3050730 	movw	r0, #22320	; 0x5730
6031156c:	e3460031 	movt	r0, #24625	; 0x6031
60311570:	ebffe2d4 	bl	6030a0c8 <vAssertCalled>
60311574:	eaffffde 	b	603114f4 <xTimerGenericCommand+0x1c>

60311578 <prvSwitchTimerLists>:
60311578:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
6031157c:	e30460b0 	movw	r6, #16560	; 0x40b0
60311580:	e3466032 	movt	r6, #24626	; 0x6032
60311584:	e3057730 	movw	r7, #22320	; 0x5730
60311588:	e3467031 	movt	r7, #24625	; 0x6031
6031158c:	e24dd00c 	sub	sp, sp, #12
60311590:	e3a08000 	mov	r8, #0
60311594:	ea00000b 	b	603115c8 <prvSwitchTimerLists+0x50>
60311598:	e593300c 	ldr	r3, [r3, #12]
6031159c:	e593400c 	ldr	r4, [r3, #12]
603115a0:	e5939000 	ldr	r9, [r3]
603115a4:	e2845004 	add	r5, r4, #4
603115a8:	e1a00005 	mov	r0, r5
603115ac:	ebfffb67 	bl	60310350 <uxListRemove>
603115b0:	e5943020 	ldr	r3, [r4, #32]
603115b4:	e1a00004 	mov	r0, r4
603115b8:	e12fff33 	blx	r3
603115bc:	e5d43028 	ldrb	r3, [r4, #40]	; 0x28
603115c0:	e3130004 	tst	r3, #4
603115c4:	1a00000a 	bne	603115f4 <prvSwitchTimerLists+0x7c>
603115c8:	e5963000 	ldr	r3, [r6]
603115cc:	e5932000 	ldr	r2, [r3]
603115d0:	e3520000 	cmp	r2, #0
603115d4:	1affffef 	bne	60311598 <prvSwitchTimerLists+0x20>
603115d8:	e30420b4 	movw	r2, #16564	; 0x40b4
603115dc:	e3462032 	movt	r2, #24626	; 0x6032
603115e0:	e5921000 	ldr	r1, [r2]
603115e4:	e5861000 	str	r1, [r6]
603115e8:	e5823000 	str	r3, [r2]
603115ec:	e28dd00c 	add	sp, sp, #12
603115f0:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
603115f4:	e594c018 	ldr	ip, [r4, #24]
603115f8:	e3a03000 	mov	r3, #0
603115fc:	e089c00c 	add	ip, r9, ip
60311600:	e1a00004 	mov	r0, r4
60311604:	e1a01005 	mov	r1, r5
60311608:	e159000c 	cmp	r9, ip
6031160c:	e1a02009 	mov	r2, r9
60311610:	2a000004 	bcs	60311628 <prvSwitchTimerLists+0xb0>
60311614:	e5960000 	ldr	r0, [r6]
60311618:	e584c004 	str	ip, [r4, #4]
6031161c:	e5844010 	str	r4, [r4, #16]
60311620:	ebfffb34 	bl	603102f8 <vListInsert>
60311624:	eaffffe7 	b	603115c8 <prvSwitchTimerLists+0x50>
60311628:	e1a01003 	mov	r1, r3
6031162c:	e58d8000 	str	r8, [sp]
60311630:	ebffffa8 	bl	603114d8 <xTimerGenericCommand>
60311634:	e3500000 	cmp	r0, #0
60311638:	1affffe2 	bne	603115c8 <prvSwitchTimerLists+0x50>
6031163c:	e1a00007 	mov	r0, r7
60311640:	e3001342 	movw	r1, #834	; 0x342
60311644:	ebffe29f 	bl	6030a0c8 <vAssertCalled>
60311648:	eaffffde 	b	603115c8 <prvSwitchTimerLists+0x50>

6031164c <prvTimerTask>:
6031164c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
60311650:	e30460b0 	movw	r6, #16560	; 0x40b0
60311654:	e3466032 	movt	r6, #24626	; 0x6032
60311658:	e24dd024 	sub	sp, sp, #36	; 0x24
6031165c:	e30451d0 	movw	r5, #16848	; 0x41d0
60311660:	e3465032 	movt	r5, #24626	; 0x6032
60311664:	e30470b4 	movw	r7, #16564	; 0x40b4
60311668:	e3467032 	movt	r7, #24626	; 0x6032
6031166c:	e3044228 	movw	r4, #16936	; 0x4228
60311670:	e3464032 	movt	r4, #24626	; 0x6032
60311674:	e3053730 	movw	r3, #22320	; 0x5730
60311678:	e3463031 	movt	r3, #24625	; 0x6031
6031167c:	e58d300c 	str	r3, [sp, #12]
60311680:	e5963000 	ldr	r3, [r6]
60311684:	e5939000 	ldr	r9, [r3]
60311688:	e3590000 	cmp	r9, #0
6031168c:	0a000084 	beq	603118a4 <prvTimerTask+0x258>
60311690:	e593300c 	ldr	r3, [r3, #12]
60311694:	e5939000 	ldr	r9, [r3]
60311698:	ebfffaa4 	bl	60310130 <vTaskSuspendAll>
6031169c:	ebfff28e 	bl	6030e0dc <xTaskGetTickCount>
603116a0:	e5953000 	ldr	r3, [r5]
603116a4:	e1a0a000 	mov	sl, r0
603116a8:	e1500003 	cmp	r0, r3
603116ac:	3a000082 	bcc	603118bc <prvTimerTask+0x270>
603116b0:	e1590000 	cmp	r9, r0
603116b4:	83a02000 	movhi	r2, #0
603116b8:	e5850000 	str	r0, [r5]
603116bc:	8a000087 	bhi	603118e0 <prvTimerTask+0x294>
603116c0:	ebfff85f 	bl	6030f844 <xTaskResumeAll>
603116c4:	e5963000 	ldr	r3, [r6]
603116c8:	e593300c 	ldr	r3, [r3, #12]
603116cc:	e593b00c 	ldr	fp, [r3, #12]
603116d0:	e28b8004 	add	r8, fp, #4
603116d4:	e1a00008 	mov	r0, r8
603116d8:	ebfffb1c 	bl	60310350 <uxListRemove>
603116dc:	e5db3028 	ldrb	r3, [fp, #40]	; 0x28
603116e0:	e3130004 	tst	r3, #4
603116e4:	03c33001 	biceq	r3, r3, #1
603116e8:	05cb3028 	strbeq	r3, [fp, #40]	; 0x28
603116ec:	1a00008c 	bne	60311924 <prvTimerTask+0x2d8>
603116f0:	e59b3020 	ldr	r3, [fp, #32]
603116f4:	e1a0000b 	mov	r0, fp
603116f8:	e12fff33 	blx	r3
603116fc:	e5940000 	ldr	r0, [r4]
60311700:	e3a02000 	mov	r2, #0
60311704:	e28d1010 	add	r1, sp, #16
60311708:	ebfffd98 	bl	60310d70 <xQueueReceive>
6031170c:	e3500000 	cmp	r0, #0
60311710:	0affffda 	beq	60311680 <prvTimerTask+0x34>
60311714:	e59d3010 	ldr	r3, [sp, #16]
60311718:	e59d0018 	ldr	r0, [sp, #24]
6031171c:	e3530000 	cmp	r3, #0
60311720:	ba000058 	blt	60311888 <prvTimerTask+0x23c>
60311724:	e59da018 	ldr	sl, [sp, #24]
60311728:	e59a3014 	ldr	r3, [sl, #20]
6031172c:	e3530000 	cmp	r3, #0
60311730:	0a000001 	beq	6031173c <prvTimerTask+0xf0>
60311734:	e28a0004 	add	r0, sl, #4
60311738:	ebfffb04 	bl	60310350 <uxListRemove>
6031173c:	ebfff266 	bl	6030e0dc <xTaskGetTickCount>
60311740:	e5953000 	ldr	r3, [r5]
60311744:	e1a0b000 	mov	fp, r0
60311748:	e1500003 	cmp	r0, r3
6031174c:	3a00006b 	bcc	60311900 <prvTimerTask+0x2b4>
60311750:	e59d3010 	ldr	r3, [sp, #16]
60311754:	e585b000 	str	fp, [r5]
60311758:	e3530009 	cmp	r3, #9
6031175c:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
60311760:	eaffffe5 	b	603116fc <prvTimerTask+0xb0>
60311764:	6031178c 	.word	0x6031178c
60311768:	6031178c 	.word	0x6031178c
6031176c:	6031178c 	.word	0x6031178c
60311770:	60311858 	.word	0x60311858
60311774:	60311818 	.word	0x60311818
60311778:	60311868 	.word	0x60311868
6031177c:	6031178c 	.word	0x6031178c
60311780:	6031178c 	.word	0x6031178c
60311784:	60311858 	.word	0x60311858
60311788:	60311818 	.word	0x60311818
6031178c:	e59d3014 	ldr	r3, [sp, #20]
60311790:	e59a1018 	ldr	r1, [sl, #24]
60311794:	e5da2028 	ldrb	r2, [sl, #40]	; 0x28
60311798:	e0930001 	adds	r0, r3, r1
6031179c:	e3822001 	orr	r2, r2, #1
603117a0:	e58a0004 	str	r0, [sl, #4]
603117a4:	e5ca2028 	strb	r2, [sl, #40]	; 0x28
603117a8:	e58aa010 	str	sl, [sl, #16]
603117ac:	23a02001 	movcs	r2, #1
603117b0:	33a02000 	movcc	r2, #0
603117b4:	e150000b 	cmp	r0, fp
603117b8:	8a000052 	bhi	60311908 <prvTimerTask+0x2bc>
603117bc:	e04b3003 	sub	r3, fp, r3
603117c0:	e1510003 	cmp	r1, r3
603117c4:	8a000076 	bhi	603119a4 <prvTimerTask+0x358>
603117c8:	e59a3020 	ldr	r3, [sl, #32]
603117cc:	e1a0000a 	mov	r0, sl
603117d0:	e12fff33 	blx	r3
603117d4:	e5da3028 	ldrb	r3, [sl, #40]	; 0x28
603117d8:	e3130004 	tst	r3, #4
603117dc:	0affffc6 	beq	603116fc <prvTimerTask+0xb0>
603117e0:	e59a2018 	ldr	r2, [sl, #24]
603117e4:	e59d1014 	ldr	r1, [sp, #20]
603117e8:	e3a03000 	mov	r3, #0
603117ec:	e0812002 	add	r2, r1, r2
603117f0:	e1a0000a 	mov	r0, sl
603117f4:	e1a01003 	mov	r1, r3
603117f8:	e58d3000 	str	r3, [sp]
603117fc:	ebffff35 	bl	603114d8 <xTimerGenericCommand>
60311800:	e3500000 	cmp	r0, #0
60311804:	1affffbc 	bne	603116fc <prvTimerTask+0xb0>
60311808:	e59d000c 	ldr	r0, [sp, #12]
6031180c:	e3a01fb7 	mov	r1, #732	; 0x2dc
60311810:	ebffe22c 	bl	6030a0c8 <vAssertCalled>
60311814:	eaffffb8 	b	603116fc <prvTimerTask+0xb0>
60311818:	e5da2028 	ldrb	r2, [sl, #40]	; 0x28
6031181c:	e59d3014 	ldr	r3, [sp, #20]
60311820:	e3822001 	orr	r2, r2, #1
60311824:	e3530000 	cmp	r3, #0
60311828:	e5ca2028 	strb	r2, [sl, #40]	; 0x28
6031182c:	e58a3018 	str	r3, [sl, #24]
60311830:	0a000050 	beq	60311978 <prvTimerTask+0x32c>
60311834:	e083300b 	add	r3, r3, fp
60311838:	e153000b 	cmp	r3, fp
6031183c:	e58a3004 	str	r3, [sl, #4]
60311840:	e58aa010 	str	sl, [sl, #16]
60311844:	9a000056 	bls	603119a4 <prvTimerTask+0x358>
60311848:	e5960000 	ldr	r0, [r6]
6031184c:	e28a1004 	add	r1, sl, #4
60311850:	ebfffaa8 	bl	603102f8 <vListInsert>
60311854:	eaffffa8 	b	603116fc <prvTimerTask+0xb0>
60311858:	e5da3028 	ldrb	r3, [sl, #40]	; 0x28
6031185c:	e3c33001 	bic	r3, r3, #1
60311860:	e5ca3028 	strb	r3, [sl, #40]	; 0x28
60311864:	eaffffa4 	b	603116fc <prvTimerTask+0xb0>
60311868:	e5da3028 	ldrb	r3, [sl, #40]	; 0x28
6031186c:	e3130002 	tst	r3, #2
60311870:	13c33001 	bicne	r3, r3, #1
60311874:	15ca3028 	strbne	r3, [sl, #40]	; 0x28
60311878:	1affff9f 	bne	603116fc <prvTimerTask+0xb0>
6031187c:	e1a0000a 	mov	r0, sl
60311880:	eb000074 	bl	60311a58 <vPortFree>
60311884:	eaffff9c 	b	603116fc <prvTimerTask+0xb0>
60311888:	e59d3014 	ldr	r3, [sp, #20]
6031188c:	e59d101c 	ldr	r1, [sp, #28]
60311890:	e12fff33 	blx	r3
60311894:	e59d3010 	ldr	r3, [sp, #16]
60311898:	e3530000 	cmp	r3, #0
6031189c:	baffff96 	blt	603116fc <prvTimerTask+0xb0>
603118a0:	eaffff9f 	b	60311724 <prvTimerTask+0xd8>
603118a4:	ebfffa21 	bl	60310130 <vTaskSuspendAll>
603118a8:	ebfff20b 	bl	6030e0dc <xTaskGetTickCount>
603118ac:	e5953000 	ldr	r3, [r5]
603118b0:	e1a0a000 	mov	sl, r0
603118b4:	e1500003 	cmp	r0, r3
603118b8:	2a000003 	bcs	603118cc <prvTimerTask+0x280>
603118bc:	ebffff2d 	bl	60311578 <prvSwitchTimerLists>
603118c0:	e585a000 	str	sl, [r5]
603118c4:	ebfff7de 	bl	6030f844 <xTaskResumeAll>
603118c8:	eaffff8b 	b	603116fc <prvTimerTask+0xb0>
603118cc:	e5973000 	ldr	r3, [r7]
603118d0:	e585a000 	str	sl, [r5]
603118d4:	e5932000 	ldr	r2, [r3]
603118d8:	e16f2f12 	clz	r2, r2
603118dc:	e1a022a2 	lsr	r2, r2, #5
603118e0:	e5940000 	ldr	r0, [r4]
603118e4:	e049100a 	sub	r1, r9, sl
603118e8:	ebfffe8a 	bl	60311318 <vQueueWaitForMessageRestricted>
603118ec:	ebfff7d4 	bl	6030f844 <xTaskResumeAll>
603118f0:	e3500000 	cmp	r0, #0
603118f4:	1affff80 	bne	603116fc <prvTimerTask+0xb0>
603118f8:	ebfff459 	bl	6030ea64 <vTaskYieldWithinAPI>
603118fc:	eaffff7e 	b	603116fc <prvTimerTask+0xb0>
60311900:	ebffff1c 	bl	60311578 <prvSwitchTimerLists>
60311904:	eaffff91 	b	60311750 <prvTimerTask+0x104>
60311908:	e2222001 	eor	r2, r2, #1
6031190c:	e153000b 	cmp	r3, fp
60311910:	93a02000 	movls	r2, #0
60311914:	82022001 	andhi	r2, r2, #1
60311918:	e3520000 	cmp	r2, #0
6031191c:	1affffa9 	bne	603117c8 <prvTimerTask+0x17c>
60311920:	eaffffc8 	b	60311848 <prvTimerTask+0x1fc>
60311924:	e59b0018 	ldr	r0, [fp, #24]
60311928:	e58bb010 	str	fp, [fp, #16]
6031192c:	e0893000 	add	r3, r9, r0
60311930:	e15a0003 	cmp	sl, r3
60311934:	e58b3004 	str	r3, [fp, #4]
60311938:	3a00001d 	bcc	603119b4 <prvTimerTask+0x368>
6031193c:	e04aa009 	sub	sl, sl, r9
60311940:	e150000a 	cmp	r0, sl
60311944:	8a00001e 	bhi	603119c4 <prvTimerTask+0x378>
60311948:	e3a03000 	mov	r3, #0
6031194c:	e1a02009 	mov	r2, r9
60311950:	e1a01003 	mov	r1, r3
60311954:	e1a0000b 	mov	r0, fp
60311958:	e58d3000 	str	r3, [sp]
6031195c:	ebfffedd 	bl	603114d8 <xTimerGenericCommand>
60311960:	e3500000 	cmp	r0, #0
60311964:	1affff61 	bne	603116f0 <prvTimerTask+0xa4>
60311968:	e59d000c 	ldr	r0, [sp, #12]
6031196c:	e3a01f79 	mov	r1, #484	; 0x1e4
60311970:	ebffe1d4 	bl	6030a0c8 <vAssertCalled>
60311974:	eaffff5d 	b	603116f0 <prvTimerTask+0xa4>
60311978:	e59d000c 	ldr	r0, [sp, #12]
6031197c:	e3a01e2f 	mov	r1, #752	; 0x2f0
60311980:	ebffe1d0 	bl	6030a0c8 <vAssertCalled>
60311984:	e59a3018 	ldr	r3, [sl, #24]
60311988:	e58aa010 	str	sl, [sl, #16]
6031198c:	e083200b 	add	r2, r3, fp
60311990:	e152000b 	cmp	r2, fp
60311994:	e58a2004 	str	r2, [sl, #4]
60311998:	8affffaa 	bhi	60311848 <prvTimerTask+0x1fc>
6031199c:	e3530000 	cmp	r3, #0
603119a0:	0affff55 	beq	603116fc <prvTimerTask+0xb0>
603119a4:	e5970000 	ldr	r0, [r7]
603119a8:	e28a1004 	add	r1, sl, #4
603119ac:	ebfffa51 	bl	603102f8 <vListInsert>
603119b0:	eaffff51 	b	603116fc <prvTimerTask+0xb0>
603119b4:	e5960000 	ldr	r0, [r6]
603119b8:	e1a01008 	mov	r1, r8
603119bc:	ebfffa4d 	bl	603102f8 <vListInsert>
603119c0:	eaffff4a 	b	603116f0 <prvTimerTask+0xa4>
603119c4:	e5970000 	ldr	r0, [r7]
603119c8:	e1a01008 	mov	r1, r8
603119cc:	ebfffa49 	bl	603102f8 <vListInsert>
603119d0:	eaffff46 	b	603116f0 <prvTimerTask+0xa4>

603119d4 <prvInsertBlockIntoFreeList>:
603119d4:	e3043248 	movw	r3, #16968	; 0x4248
603119d8:	e3463032 	movt	r3, #24626	; 0x6032
603119dc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
603119e0:	e1a02003 	mov	r2, r3
603119e4:	e5933000 	ldr	r3, [r3]
603119e8:	e1530000 	cmp	r3, r0
603119ec:	3afffffb 	bcc	603119e0 <prvInsertBlockIntoFreeList+0xc>
603119f0:	e592c004 	ldr	ip, [r2, #4]
603119f4:	e5901004 	ldr	r1, [r0, #4]
603119f8:	e082e00c 	add	lr, r2, ip
603119fc:	e150000e 	cmp	r0, lr
60311a00:	0081100c 	addeq	r1, r1, ip
60311a04:	01a00002 	moveq	r0, r2
60311a08:	e080c001 	add	ip, r0, r1
60311a0c:	05821004 	streq	r1, [r2, #4]
60311a10:	e153000c 	cmp	r3, ip
60311a14:	0a000003 	beq	60311a28 <prvInsertBlockIntoFreeList+0x54>
60311a18:	e5803000 	str	r3, [r0]
60311a1c:	e1500002 	cmp	r0, r2
60311a20:	15820000 	strne	r0, [r2]
60311a24:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
60311a28:	e304c230 	movw	ip, #16944	; 0x4230
60311a2c:	e346c032 	movt	ip, #24626	; 0x6032
60311a30:	e59cc000 	ldr	ip, [ip]
60311a34:	e153000c 	cmp	r3, ip
60311a38:	0afffff6 	beq	60311a18 <prvInsertBlockIntoFreeList+0x44>
60311a3c:	e5933004 	ldr	r3, [r3, #4]
60311a40:	e0831001 	add	r1, r3, r1
60311a44:	e5801004 	str	r1, [r0, #4]
60311a48:	e5923000 	ldr	r3, [r2]
60311a4c:	e5933000 	ldr	r3, [r3]
60311a50:	e5803000 	str	r3, [r0]
60311a54:	eafffff0 	b	60311a1c <prvInsertBlockIntoFreeList+0x48>

60311a58 <vPortFree>:
60311a58:	e92d4070 	push	{r4, r5, r6, lr}
60311a5c:	e2504000 	subs	r4, r0, #0
60311a60:	08bd8070 	popeq	{r4, r5, r6, pc}
60311a64:	e3045234 	movw	r5, #16948	; 0x4234
60311a68:	e3465032 	movt	r5, #24626	; 0x6032
60311a6c:	e514303c 	ldr	r3, [r4, #-60]	; 0xffffffc4
60311a70:	e5952000 	ldr	r2, [r5]
60311a74:	e1130002 	tst	r3, r2
60311a78:	0a00001f 	beq	60311afc <vPortFree+0xa4>
60311a7c:	e5141040 	ldr	r1, [r4, #-64]	; 0xffffffc0
60311a80:	e3510000 	cmp	r1, #0
60311a84:	0a00000a 	beq	60311ab4 <vPortFree+0x5c>
60311a88:	e3a01fb3 	mov	r1, #716	; 0x2cc
60311a8c:	e30507c4 	movw	r0, #22468	; 0x57c4
60311a90:	e3460031 	movt	r0, #24625	; 0x6031
60311a94:	ebffe18b 	bl	6030a0c8 <vAssertCalled>
60311a98:	e514303c 	ldr	r3, [r4, #-60]	; 0xffffffc4
60311a9c:	e5952000 	ldr	r2, [r5]
60311aa0:	e1130002 	tst	r3, r2
60311aa4:	08bd8070 	popeq	{r4, r5, r6, pc}
60311aa8:	e5141040 	ldr	r1, [r4, #-64]	; 0xffffffc0
60311aac:	e3510000 	cmp	r1, #0
60311ab0:	18bd8070 	popne	{r4, r5, r6, pc}
60311ab4:	e1c33002 	bic	r3, r3, r2
60311ab8:	e504303c 	str	r3, [r4, #-60]	; 0xffffffc4
60311abc:	ebfff3fd 	bl	6030eab8 <vTaskEnterCritical>
60311ac0:	e3043238 	movw	r3, #16952	; 0x4238
60311ac4:	e3463032 	movt	r3, #24626	; 0x6032
60311ac8:	e514203c 	ldr	r2, [r4, #-60]	; 0xffffffc4
60311acc:	e2440040 	sub	r0, r4, #64	; 0x40
60311ad0:	e5931000 	ldr	r1, [r3]
60311ad4:	e0822001 	add	r2, r2, r1
60311ad8:	e5832000 	str	r2, [r3]
60311adc:	ebffffbc 	bl	603119d4 <prvInsertBlockIntoFreeList>
60311ae0:	e3043244 	movw	r3, #16964	; 0x4244
60311ae4:	e3463032 	movt	r3, #24626	; 0x6032
60311ae8:	e5932000 	ldr	r2, [r3]
60311aec:	e2822001 	add	r2, r2, #1
60311af0:	e5832000 	str	r2, [r3]
60311af4:	e8bd4070 	pop	{r4, r5, r6, lr}
60311af8:	eafff409 	b	6030eb24 <vTaskExitCritical>
60311afc:	e30012cb 	movw	r1, #715	; 0x2cb
60311b00:	e30507c4 	movw	r0, #22468	; 0x57c4
60311b04:	e3460031 	movt	r0, #24625	; 0x6031
60311b08:	ebffe16e 	bl	6030a0c8 <vAssertCalled>
60311b0c:	e5143040 	ldr	r3, [r4, #-64]	; 0xffffffc0
60311b10:	e3530000 	cmp	r3, #0
60311b14:	1affffdb 	bne	60311a88 <vPortFree+0x30>
60311b18:	e514303c 	ldr	r3, [r4, #-60]	; 0xffffffc4
60311b1c:	e5952000 	ldr	r2, [r5]
60311b20:	e1130002 	tst	r3, r2
60311b24:	08bd8070 	popeq	{r4, r5, r6, pc}
60311b28:	eaffffe1 	b	60311ab4 <vPortFree+0x5c>

60311b2c <vPortDefineHeapRegions>:
60311b2c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
60311b30:	e3049230 	movw	r9, #16944	; 0x4230
60311b34:	e3469032 	movt	r9, #24626	; 0x6032
60311b38:	e24dd00c 	sub	sp, sp, #12
60311b3c:	e1a06000 	mov	r6, r0
60311b40:	e5993000 	ldr	r3, [r9]
60311b44:	e3530000 	cmp	r3, #0
60311b48:	1a00004c 	bne	60311c80 <vPortDefineHeapRegions+0x154>
60311b4c:	e5902004 	ldr	r2, [r0, #4]
60311b50:	e3520000 	cmp	r2, #0
60311b54:	0a000051 	beq	60311ca0 <vPortDefineHeapRegions+0x174>
60311b58:	e3a07000 	mov	r7, #0
60311b5c:	e305b7c4 	movw	fp, #22468	; 0x57c4
60311b60:	e346b031 	movt	fp, #24625	; 0x6031
60311b64:	e304a248 	movw	sl, #16968	; 0x4248
60311b68:	e346a032 	movt	sl, #24626	; 0x6032
60311b6c:	e2866008 	add	r6, r6, #8
60311b70:	e1a08007 	mov	r8, r7
60311b74:	ea000014 	b	60311bcc <vPortDefineHeapRegions+0xa0>
60311b78:	e1a01003 	mov	r1, r3
60311b7c:	e88a0090 	stm	sl, {r4, r7}
60311b80:	e0823005 	add	r3, r2, r5
60311b84:	e2433040 	sub	r3, r3, #64	; 0x40
60311b88:	e3c3303f 	bic	r3, r3, #63	; 0x3f
60311b8c:	e3a00000 	mov	r0, #0
60311b90:	e1510000 	cmp	r1, r0
60311b94:	e5830004 	str	r0, [r3, #4]
60311b98:	e5830000 	str	r0, [r3]
60311b9c:	e0432005 	sub	r2, r3, r5
60311ba0:	e5843000 	str	r3, [r4]
60311ba4:	e5842004 	str	r2, [r4, #4]
60311ba8:	15814000 	strne	r4, [r1]
60311bac:	e2866008 	add	r6, r6, #8
60311bb0:	e5162004 	ldr	r2, [r6, #-4]
60311bb4:	e5941004 	ldr	r1, [r4, #4]
60311bb8:	e2877001 	add	r7, r7, #1
60311bbc:	e0888001 	add	r8, r8, r1
60311bc0:	e3520000 	cmp	r2, #0
60311bc4:	e5893000 	str	r3, [r9]
60311bc8:	0a000017 	beq	60311c2c <vPortDefineHeapRegions+0x100>
60311bcc:	e5164008 	ldr	r4, [r6, #-8]
60311bd0:	e1a05004 	mov	r5, r4
60311bd4:	e314003f 	tst	r4, #63	; 0x3f
60311bd8:	0a000005 	beq	60311bf4 <vPortDefineHeapRegions+0xc8>
60311bdc:	e284103f 	add	r1, r4, #63	; 0x3f
60311be0:	e3c1103f 	bic	r1, r1, #63	; 0x3f
60311be4:	e0822004 	add	r2, r2, r4
60311be8:	e0422001 	sub	r2, r2, r1
60311bec:	e1a04001 	mov	r4, r1
60311bf0:	e1a05001 	mov	r5, r1
60311bf4:	e3570000 	cmp	r7, #0
60311bf8:	0affffde 	beq	60311b78 <vPortDefineHeapRegions+0x4c>
60311bfc:	e3530000 	cmp	r3, #0
60311c00:	0a000017 	beq	60311c64 <vPortDefineHeapRegions+0x138>
60311c04:	e1530005 	cmp	r3, r5
60311c08:	31a01003 	movcc	r1, r3
60311c0c:	3affffdb 	bcc	60311b80 <vPortDefineHeapRegions+0x54>
60311c10:	e3001367 	movw	r1, #871	; 0x367
60311c14:	e1a0000b 	mov	r0, fp
60311c18:	e58d2004 	str	r2, [sp, #4]
60311c1c:	ebffe129 	bl	6030a0c8 <vAssertCalled>
60311c20:	e5991000 	ldr	r1, [r9]
60311c24:	e59d2004 	ldr	r2, [sp, #4]
60311c28:	eaffffd4 	b	60311b80 <vPortDefineHeapRegions+0x54>
60311c2c:	e304223c 	movw	r2, #16956	; 0x423c
60311c30:	e3462032 	movt	r2, #24626	; 0x6032
60311c34:	e3043238 	movw	r3, #16952	; 0x4238
60311c38:	e3463032 	movt	r3, #24626	; 0x6032
60311c3c:	e3580000 	cmp	r8, #0
60311c40:	e5828000 	str	r8, [r2]
60311c44:	e5838000 	str	r8, [r3]
60311c48:	0a00001b 	beq	60311cbc <vPortDefineHeapRegions+0x190>
60311c4c:	e3043234 	movw	r3, #16948	; 0x4234
60311c50:	e3463032 	movt	r3, #24626	; 0x6032
60311c54:	e3a02102 	mov	r2, #-2147483648	; 0x80000000
60311c58:	e5832000 	str	r2, [r3]
60311c5c:	e28dd00c 	add	sp, sp, #12
60311c60:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
60311c64:	e3a01fd9 	mov	r1, #868	; 0x364
60311c68:	e1a0000b 	mov	r0, fp
60311c6c:	e58d2004 	str	r2, [sp, #4]
60311c70:	ebffe114 	bl	6030a0c8 <vAssertCalled>
60311c74:	e5993000 	ldr	r3, [r9]
60311c78:	e59d2004 	ldr	r2, [sp, #4]
60311c7c:	eaffffe0 	b	60311c04 <vPortDefineHeapRegions+0xd8>
60311c80:	e3001341 	movw	r1, #833	; 0x341
60311c84:	e30507c4 	movw	r0, #22468	; 0x57c4
60311c88:	e3460031 	movt	r0, #24625	; 0x6031
60311c8c:	ebffe10d 	bl	6030a0c8 <vAssertCalled>
60311c90:	e5962004 	ldr	r2, [r6, #4]
60311c94:	e3520000 	cmp	r2, #0
60311c98:	15993000 	ldrne	r3, [r9]
60311c9c:	1affffad 	bne	60311b58 <vPortDefineHeapRegions+0x2c>
60311ca0:	e304223c 	movw	r2, #16956	; 0x423c
60311ca4:	e3462032 	movt	r2, #24626	; 0x6032
60311ca8:	e3043238 	movw	r3, #16952	; 0x4238
60311cac:	e3463032 	movt	r3, #24626	; 0x6032
60311cb0:	e3a01000 	mov	r1, #0
60311cb4:	e5821000 	str	r1, [r2]
60311cb8:	e5831000 	str	r1, [r3]
60311cbc:	e30507c4 	movw	r0, #22468	; 0x57c4
60311cc0:	e3460031 	movt	r0, #24625	; 0x6031
60311cc4:	e30013a6 	movw	r1, #934	; 0x3a6
60311cc8:	ebffe0fe 	bl	6030a0c8 <vAssertCalled>
60311ccc:	eaffffde 	b	60311c4c <vPortDefineHeapRegions+0x120>

60311cd0 <vApplicationMallocFailedHook>:
60311cd0:	e92d4030 	push	{r4, r5, lr}
60311cd4:	e1a05000 	mov	r5, r0
60311cd8:	e24dd014 	sub	sp, sp, #20
60311cdc:	ebfff349 	bl	6030ea08 <xTaskGetSchedulerState>
60311ce0:	e3500001 	cmp	r0, #1
60311ce4:	03054868 	movweq	r4, #22632	; 0x5868
60311ce8:	03464031 	movteq	r4, #24625	; 0x6031
60311cec:	0a000002 	beq	60311cfc <vApplicationMallocFailedHook+0x2c>
60311cf0:	e3a00000 	mov	r0, #0
60311cf4:	ebfff108 	bl	6030e11c <pcTaskGetName>
60311cf8:	e1a04000 	mov	r4, r0
60311cfc:	ebfff36d 	bl	6030eab8 <vTaskEnterCritical>
60311d00:	e3043238 	movw	r3, #16952	; 0x4238
60311d04:	e3463032 	movt	r3, #24626	; 0x6032
60311d08:	e305c8c0 	movw	ip, #22720	; 0x58c0
60311d0c:	e346c031 	movt	ip, #24625	; 0x6031
60311d10:	e5932000 	ldr	r2, [r3]
60311d14:	e58d2008 	str	r2, [sp, #8]
60311d18:	e3053870 	movw	r3, #22640	; 0x5870
60311d1c:	e3463031 	movt	r3, #24625	; 0x6031
60311d20:	e304113c 	movw	r1, #16700	; 0x413c
60311d24:	e3461031 	movt	r1, #24625	; 0x6031
60311d28:	e3a02045 	mov	r2, #69	; 0x45
60311d2c:	e3a00002 	mov	r0, #2
60311d30:	e58d500c 	str	r5, [sp, #12]
60311d34:	e58d4004 	str	r4, [sp, #4]
60311d38:	e58dc000 	str	ip, [sp]
60311d3c:	ebffe047 	bl	60309e60 <rtk_log_write_nano>
60311d40:	eafffffe 	b	60311d40 <vApplicationMallocFailedHook+0x70>

60311d44 <pvPortMalloc>:
60311d44:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
60311d48:	e3047230 	movw	r7, #16944	; 0x4230
60311d4c:	e3467032 	movt	r7, #24626	; 0x6032
60311d50:	e1a04000 	mov	r4, r0
60311d54:	e5973000 	ldr	r3, [r7]
60311d58:	e3530000 	cmp	r3, #0
60311d5c:	0a000054 	beq	60311eb4 <pvPortMalloc+0x170>
60311d60:	e3046234 	movw	r6, #16948	; 0x4234
60311d64:	e3466032 	movt	r6, #24626	; 0x6032
60311d68:	ebfff352 	bl	6030eab8 <vTaskEnterCritical>
60311d6c:	e5963000 	ldr	r3, [r6]
60311d70:	e1140003 	tst	r4, r3
60311d74:	1a00004b 	bne	60311ea8 <pvPortMalloc+0x164>
60311d78:	e2443001 	sub	r3, r4, #1
60311d7c:	e3730042 	cmn	r3, #66	; 0x42
60311d80:	8a000047 	bhi	60311ea4 <pvPortMalloc+0x160>
60311d84:	e2844040 	add	r4, r4, #64	; 0x40
60311d88:	e314003f 	tst	r4, #63	; 0x3f
60311d8c:	1a00003f 	bne	60311e90 <pvPortMalloc+0x14c>
60311d90:	e3049238 	movw	r9, #16952	; 0x4238
60311d94:	e3469032 	movt	r9, #24626	; 0x6032
60311d98:	e5993000 	ldr	r3, [r9]
60311d9c:	e1530004 	cmp	r3, r4
60311da0:	3a000040 	bcc	60311ea8 <pvPortMalloc+0x164>
60311da4:	e3043248 	movw	r3, #16968	; 0x4248
60311da8:	e3463032 	movt	r3, #24626	; 0x6032
60311dac:	e1a08003 	mov	r8, r3
60311db0:	e5935000 	ldr	r5, [r3]
60311db4:	ea000004 	b	60311dcc <pvPortMalloc+0x88>
60311db8:	e5953000 	ldr	r3, [r5]
60311dbc:	e3530000 	cmp	r3, #0
60311dc0:	0a000004 	beq	60311dd8 <pvPortMalloc+0x94>
60311dc4:	e1a08005 	mov	r8, r5
60311dc8:	e1a05003 	mov	r5, r3
60311dcc:	e5953004 	ldr	r3, [r5, #4]
60311dd0:	e1530004 	cmp	r3, r4
60311dd4:	3afffff7 	bcc	60311db8 <pvPortMalloc+0x74>
60311dd8:	e5973000 	ldr	r3, [r7]
60311ddc:	e1530005 	cmp	r3, r5
60311de0:	0a000030 	beq	60311ea8 <pvPortMalloc+0x164>
60311de4:	e5953000 	ldr	r3, [r5]
60311de8:	e5987000 	ldr	r7, [r8]
60311dec:	e5883000 	str	r3, [r8]
60311df0:	e2877040 	add	r7, r7, #64	; 0x40
60311df4:	e5953004 	ldr	r3, [r5, #4]
60311df8:	e1530004 	cmp	r3, r4
60311dfc:	3a000036 	bcc	60311edc <pvPortMalloc+0x198>
60311e00:	e0432004 	sub	r2, r3, r4
60311e04:	e3520080 	cmp	r2, #128	; 0x80
60311e08:	9a000008 	bls	60311e30 <pvPortMalloc+0xec>
60311e0c:	e085a004 	add	sl, r5, r4
60311e10:	e31a003f 	tst	sl, #63	; 0x3f
60311e14:	1a000036 	bne	60311ef4 <pvPortMalloc+0x1b0>
60311e18:	e58a2004 	str	r2, [sl, #4]
60311e1c:	e5854004 	str	r4, [r5, #4]
60311e20:	e5983000 	ldr	r3, [r8]
60311e24:	e58a3000 	str	r3, [sl]
60311e28:	e588a000 	str	sl, [r8]
60311e2c:	e5953004 	ldr	r3, [r5, #4]
60311e30:	e304123c 	movw	r1, #16956	; 0x423c
60311e34:	e3461032 	movt	r1, #24626	; 0x6032
60311e38:	e5992000 	ldr	r2, [r9]
60311e3c:	e5910000 	ldr	r0, [r1]
60311e40:	e0422003 	sub	r2, r2, r3
60311e44:	e1520000 	cmp	r2, r0
60311e48:	e5892000 	str	r2, [r9]
60311e4c:	35812000 	strcc	r2, [r1]
60311e50:	e5962000 	ldr	r2, [r6]
60311e54:	e3a01000 	mov	r1, #0
60311e58:	e1823003 	orr	r3, r2, r3
60311e5c:	e3042240 	movw	r2, #16960	; 0x4240
60311e60:	e3462032 	movt	r2, #24626	; 0x6032
60311e64:	e885000a 	stm	r5, {r1, r3}
60311e68:	e5923000 	ldr	r3, [r2]
60311e6c:	e2833001 	add	r3, r3, #1
60311e70:	e5823000 	str	r3, [r2]
60311e74:	ebfff32a 	bl	6030eb24 <vTaskExitCritical>
60311e78:	e3570000 	cmp	r7, #0
60311e7c:	0a00000a 	beq	60311eac <pvPortMalloc+0x168>
60311e80:	e317003f 	tst	r7, #63	; 0x3f
60311e84:	1a00000f 	bne	60311ec8 <pvPortMalloc+0x184>
60311e88:	e1a00007 	mov	r0, r7
60311e8c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
60311e90:	e3c4303f 	bic	r3, r4, #63	; 0x3f
60311e94:	e2833040 	add	r3, r3, #64	; 0x40
60311e98:	e1530004 	cmp	r3, r4
60311e9c:	81a04003 	movhi	r4, r3
60311ea0:	8affffba 	bhi	60311d90 <pvPortMalloc+0x4c>
60311ea4:	e3a04000 	mov	r4, #0
60311ea8:	ebfff31d 	bl	6030eb24 <vTaskExitCritical>
60311eac:	e1a00004 	mov	r0, r4
60311eb0:	ebffff86 	bl	60311cd0 <vApplicationMallocFailedHook>
60311eb4:	e30507c4 	movw	r0, #22468	; 0x57c4
60311eb8:	e3460031 	movt	r0, #24625	; 0x6031
60311ebc:	e300114d 	movw	r1, #333	; 0x14d
60311ec0:	ebffe080 	bl	6030a0c8 <vAssertCalled>
60311ec4:	eaffffa5 	b	60311d60 <pvPortMalloc+0x1c>
60311ec8:	e3a01f73 	mov	r1, #460	; 0x1cc
60311ecc:	e30507c4 	movw	r0, #22468	; 0x57c4
60311ed0:	e3460031 	movt	r0, #24625	; 0x6031
60311ed4:	ebffe07b 	bl	6030a0c8 <vAssertCalled>
60311ed8:	eaffffea 	b	60311e88 <pvPortMalloc+0x144>
60311edc:	e300118d 	movw	r1, #397	; 0x18d
60311ee0:	e30507c4 	movw	r0, #22468	; 0x57c4
60311ee4:	e3460031 	movt	r0, #24625	; 0x6031
60311ee8:	ebffe076 	bl	6030a0c8 <vAssertCalled>
60311eec:	e5953004 	ldr	r3, [r5, #4]
60311ef0:	eaffffc2 	b	60311e00 <pvPortMalloc+0xbc>
60311ef4:	e3001195 	movw	r1, #405	; 0x195
60311ef8:	e30507c4 	movw	r0, #22468	; 0x57c4
60311efc:	e3460031 	movt	r0, #24625	; 0x6031
60311f00:	ebffe070 	bl	6030a0c8 <vAssertCalled>
60311f04:	e5952004 	ldr	r2, [r5, #4]
60311f08:	e0422004 	sub	r2, r2, r4
60311f0c:	eaffffc1 	b	60311e18 <pvPortMalloc+0xd4>

60311f10 <pvPortReAlloc>:
60311f10:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60311f14:	e1a04001 	mov	r4, r1
60311f18:	e2505000 	subs	r5, r0, #0
60311f1c:	0a00001e 	beq	60311f9c <pvPortReAlloc+0x8c>
60311f20:	e3510000 	cmp	r1, #0
60311f24:	0a000024 	beq	60311fbc <pvPortReAlloc+0xac>
60311f28:	e1a00001 	mov	r0, r1
60311f2c:	ebffff84 	bl	60311d44 <pvPortMalloc>
60311f30:	e2506000 	subs	r6, r0, #0
60311f34:	0a000016 	beq	60311f94 <pvPortReAlloc+0x84>
60311f38:	e3047234 	movw	r7, #16948	; 0x4234
60311f3c:	e3467032 	movt	r7, #24626	; 0x6032
60311f40:	e515203c 	ldr	r2, [r5, #-60]	; 0xffffffc4
60311f44:	e1a01005 	mov	r1, r5
60311f48:	e5973000 	ldr	r3, [r7]
60311f4c:	e1c22003 	bic	r2, r2, r3
60311f50:	e2422040 	sub	r2, r2, #64	; 0x40
60311f54:	e1520004 	cmp	r2, r4
60311f58:	21a02004 	movcs	r2, r4
60311f5c:	ebffed18 	bl	6030d3c4 <__wrap_memcpy>
60311f60:	ebfff2d4 	bl	6030eab8 <vTaskEnterCritical>
60311f64:	e3043238 	movw	r3, #16952	; 0x4238
60311f68:	e3463032 	movt	r3, #24626	; 0x6032
60311f6c:	e515203c 	ldr	r2, [r5, #-60]	; 0xffffffc4
60311f70:	e5971000 	ldr	r1, [r7]
60311f74:	e2450040 	sub	r0, r5, #64	; 0x40
60311f78:	e1c22001 	bic	r2, r2, r1
60311f7c:	e5931000 	ldr	r1, [r3]
60311f80:	e505203c 	str	r2, [r5, #-60]	; 0xffffffc4
60311f84:	e0812002 	add	r2, r1, r2
60311f88:	e5832000 	str	r2, [r3]
60311f8c:	ebfffe90 	bl	603119d4 <prvInsertBlockIntoFreeList>
60311f90:	ebfff2e3 	bl	6030eb24 <vTaskExitCritical>
60311f94:	e1a00006 	mov	r0, r6
60311f98:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60311f9c:	e3510000 	cmp	r1, #0
60311fa0:	0a000002 	beq	60311fb0 <pvPortReAlloc+0xa0>
60311fa4:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
60311fa8:	e1a00001 	mov	r0, r1
60311fac:	eaffff64 	b	60311d44 <pvPortMalloc>
60311fb0:	e1a06001 	mov	r6, r1
60311fb4:	e1a00006 	mov	r0, r6
60311fb8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60311fbc:	e1a06001 	mov	r6, r1
60311fc0:	ebfffea4 	bl	60311a58 <vPortFree>
60311fc4:	e1a00006 	mov	r0, r6
60311fc8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

60311fcc <pxPortInitialiseStack>:
60311fcc:	e92d4010 	push	{r4, lr}
60311fd0:	e1a04000 	mov	r4, r0
60311fd4:	e1a03001 	mov	r3, r1
60311fd8:	e3130001 	tst	r3, #1
60311fdc:	e3a01000 	mov	r1, #0
60311fe0:	e1a00002 	mov	r0, r2
60311fe4:	e5043010 	str	r3, [r4, #-16]
60311fe8:	03a0201f 	moveq	r2, #31
60311fec:	13a0203f 	movne	r2, #63	; 0x3f
60311ff0:	e5040048 	str	r0, [r4, #-72]	; 0xffffffb8
60311ff4:	e504200c 	str	r2, [r4, #-12]
60311ff8:	e2440f53 	sub	r0, r4, #332	; 0x14c
60311ffc:	e3a02f41 	mov	r2, #260	; 0x104
60312000:	e5841000 	str	r1, [r4]
60312004:	e5041004 	str	r1, [r4, #-4]
60312008:	e5041008 	str	r1, [r4, #-8]
6031200c:	e5041014 	str	r1, [r4, #-20]	; 0xffffffec
60312010:	e3013212 	movw	r3, #4626	; 0x1212
60312014:	e3413212 	movt	r3, #4626	; 0x1212
60312018:	e5043018 	str	r3, [r4, #-24]	; 0xffffffe8
6031201c:	e3013111 	movw	r3, #4369	; 0x1111
60312020:	e3413111 	movt	r3, #4369	; 0x1111
60312024:	e504301c 	str	r3, [r4, #-28]	; 0xffffffe4
60312028:	e3013010 	movw	r3, #4112	; 0x1010
6031202c:	e3413010 	movt	r3, #4112	; 0x1010
60312030:	e5043020 	str	r3, [r4, #-32]	; 0xffffffe0
60312034:	e3003909 	movw	r3, #2313	; 0x909
60312038:	e3403909 	movt	r3, #2313	; 0x909
6031203c:	e5043024 	str	r3, [r4, #-36]	; 0xffffffdc
60312040:	e3003808 	movw	r3, #2056	; 0x808
60312044:	e3403808 	movt	r3, #2056	; 0x808
60312048:	e5043028 	str	r3, [r4, #-40]	; 0xffffffd8
6031204c:	e3003707 	movw	r3, #1799	; 0x707
60312050:	e3403707 	movt	r3, #1799	; 0x707
60312054:	e504302c 	str	r3, [r4, #-44]	; 0xffffffd4
60312058:	e3003606 	movw	r3, #1542	; 0x606
6031205c:	e3403606 	movt	r3, #1542	; 0x606
60312060:	e5043030 	str	r3, [r4, #-48]	; 0xffffffd0
60312064:	e3003505 	movw	r3, #1285	; 0x505
60312068:	e3403505 	movt	r3, #1285	; 0x505
6031206c:	e5043034 	str	r3, [r4, #-52]	; 0xffffffcc
60312070:	e3003404 	movw	r3, #1028	; 0x404
60312074:	e3403404 	movt	r3, #1028	; 0x404
60312078:	e5043038 	str	r3, [r4, #-56]	; 0xffffffc8
6031207c:	e3003303 	movw	r3, #771	; 0x303
60312080:	e3403303 	movt	r3, #771	; 0x303
60312084:	e504303c 	str	r3, [r4, #-60]	; 0xffffffc4
60312088:	e3003202 	movw	r3, #514	; 0x202
6031208c:	e3403202 	movt	r3, #514	; 0x202
60312090:	e5043040 	str	r3, [r4, #-64]	; 0xffffffc0
60312094:	e3003101 	movw	r3, #257	; 0x101
60312098:	e3403101 	movt	r3, #257	; 0x101
6031209c:	e5043044 	str	r3, [r4, #-68]	; 0xffffffbc
603120a0:	ebffecc4 	bl	6030d3b8 <__wrap_memset>
603120a4:	e1a00004 	mov	r0, r4
603120a8:	e30432cc 	movw	r3, #17100	; 0x42cc
603120ac:	e3463032 	movt	r3, #24626	; 0x6032
603120b0:	e3a02001 	mov	r2, #1
603120b4:	e5202150 	str	r2, [r0, #-336]!	; 0xfffffeb0
603120b8:	e5832000 	str	r2, [r3]
603120bc:	e8bd8010 	pop	{r4, pc}

603120c0 <xPortStartScheduler>:
603120c0:	e92d4010 	push	{r4, lr}
603120c4:	e10f3000 	mrs	r3, CPSR
603120c8:	e203301f 	and	r3, r3, #31
603120cc:	e3530010 	cmp	r3, #16
603120d0:	0a000007 	beq	603120f4 <xPortStartScheduler+0x34>
603120d4:	f10c0080 	cpsid	i
603120d8:	f57ff04f 	dsb	sy
603120dc:	f57ff06f 	isb	sy
603120e0:	ebffe125 	bl	6030a57c <vConfigureIPIInterrupt>
603120e4:	ebffe14f 	bl	6030a628 <vConfigureTickInterrupt>
603120e8:	ebffb947 	bl	6030060c <vPortRestoreTaskContext>
603120ec:	e3a00000 	mov	r0, #0
603120f0:	e8bd8010 	pop	{r4, pc}
603120f4:	e3001127 	movw	r1, #295	; 0x127
603120f8:	e30508c8 	movw	r0, #22728	; 0x58c8
603120fc:	e3460031 	movt	r0, #24625	; 0x6031
60312100:	ebffdff0 	bl	6030a0c8 <vAssertCalled>
60312104:	e3a00000 	mov	r0, #0
60312108:	e8bd8010 	pop	{r4, pc}

6031210c <xPortSpinLockTask>:
6031210c:	e3a02001 	mov	r2, #1
60312110:	e3043280 	movw	r3, #17024	; 0x4280
60312114:	e3463032 	movt	r3, #24626	; 0x6032
60312118:	e1931f9f 	ldrex	r1, [r3]
6031211c:	e3510000 	cmp	r1, #0
60312120:	1320f002 	wfene
60312124:	01831f92 	strexeq	r1, r2, [r3]
60312128:	03510000 	cmpeq	r1, #0
6031212c:	1afffff9 	bne	60312118 <xPortSpinLockTask+0xc>
60312130:	f57ff05f 	dmb	sy
60312134:	e12fff1e 	bx	lr

60312138 <xPortSpinUnLockTask>:
60312138:	e3a02000 	mov	r2, #0
6031213c:	e3043280 	movw	r3, #17024	; 0x4280
60312140:	e3463032 	movt	r3, #24626	; 0x6032
60312144:	f57ff05f 	dmb	sy
60312148:	e5832000 	str	r2, [r3]
6031214c:	f57ff04f 	dsb	sy
60312150:	e320f004 	sev
60312154:	e12fff1e 	bx	lr

60312158 <FreeRTOS_Tick_Handler>:
60312158:	e92d4010 	push	{r4, lr}
6031215c:	ee103fb0 	mrc	15, 0, r3, cr0, cr0, {5}
60312160:	e6ef3073 	uxtb	r3, r3
60312164:	e3530000 	cmp	r3, #0
60312168:	13a04001 	movne	r4, #1
6031216c:	03a04000 	moveq	r4, #0
60312170:	1a000005 	bne	6031218c <FreeRTOS_Tick_Handler+0x34>
60312174:	ebfff46a 	bl	6030f324 <xTaskIncrementTick>
60312178:	e30432d0 	movw	r3, #17104	; 0x42d0
6031217c:	e3463032 	movt	r3, #24626	; 0x6032
60312180:	e7830104 	str	r0, [r3, r4, lsl #2]
60312184:	e8bd4010 	pop	{r4, lr}
60312188:	eaffe141 	b	6030a694 <vClearTickInterrupt>
6031218c:	ebffefc6 	bl	6030e0ac <xTaskGetCurrentYieldPending>
60312190:	e30432d0 	movw	r3, #17104	; 0x42d0
60312194:	e3463032 	movt	r3, #24626	; 0x6032
60312198:	e7830104 	str	r0, [r3, r4, lsl #2]
6031219c:	e8bd4010 	pop	{r4, lr}
603121a0:	eaffe13b 	b	6030a694 <vClearTickInterrupt>

603121a4 <ulPortInterruptLock>:
603121a4:	e10f0000 	mrs	r0, CPSR
603121a8:	f10c0080 	cpsid	i
603121ac:	f57ff04f 	dsb	sy
603121b0:	f57ff06f 	isb	sy
603121b4:	e12fff1e 	bx	lr

603121b8 <ulPortInterruptUnLock>:
603121b8:	e121f000 	msr	CPSR_c, r0
603121bc:	e12fff1e 	bx	lr

603121c0 <xPortCpuIsInInterrupt>:
603121c0:	e10f3000 	mrs	r3, CPSR
603121c4:	e203301f 	and	r3, r3, #31
603121c8:	e3530010 	cmp	r3, #16
603121cc:	0a000004 	beq	603121e4 <xPortCpuIsInInterrupt+0x24>
603121d0:	e10f0000 	mrs	r0, CPSR
603121d4:	e200001f 	and	r0, r0, #31
603121d8:	e250001f 	subs	r0, r0, #31
603121dc:	13a00001 	movne	r0, #1
603121e0:	e12fff1e 	bx	lr
603121e4:	e3a00000 	mov	r0, #0
603121e8:	e12fff1e 	bx	lr

603121ec <FreeRTOS_IPI_Handler>:
603121ec:	ee103fb0 	mrc	15, 0, r3, cr0, cr0, {5}
603121f0:	e6ef3073 	uxtb	r3, r3
603121f4:	e2533000 	subs	r3, r3, #0
603121f8:	13a03001 	movne	r3, #1
603121fc:	e30422d0 	movw	r2, #17104	; 0x42d0
60312200:	e3462032 	movt	r2, #24626	; 0x6032
60312204:	e3a01001 	mov	r1, #1
60312208:	e7821103 	str	r1, [r2, r3, lsl #2]
6031220c:	e12fff1e 	bx	lr

60312210 <ulPortGetCoreId>:
60312210:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
60312214:	e6ef0070 	uxtb	r0, r0
60312218:	e2500000 	subs	r0, r0, #0
6031221c:	13a00001 	movne	r0, #1
60312220:	e12fff1e 	bx	lr

60312224 <FreeRTOS_IPI_CPUHP_Handler>:
60312224:	ee103fb0 	mrc	15, 0, r3, cr0, cr0, {5}
60312228:	e6ef3073 	uxtb	r3, r3
6031222c:	e2533000 	subs	r3, r3, #0
60312230:	13a03001 	movne	r3, #1
60312234:	e30422d0 	movw	r2, #17104	; 0x42d0
60312238:	e3462032 	movt	r2, #24626	; 0x6032
6031223c:	e3a01001 	mov	r1, #1
60312240:	e7821103 	str	r1, [r2, r3, lsl #2]
60312244:	e12fff1e 	bx	lr

60312248 <vPortYieldOtherCore>:
60312248:	eaffe0ee 	b	6030a608 <vConfigureSMPSendIPI>

6031224c <vApplicationStackOverflowHook>:
6031224c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
60312250:	e3a02045 	mov	r2, #69	; 0x45
60312254:	e24dd00c 	sub	sp, sp, #12
60312258:	e3a00002 	mov	r0, #2
6031225c:	e3053970 	movw	r3, #22896	; 0x5970
60312260:	e3463031 	movt	r3, #24625	; 0x6031
60312264:	e58d1000 	str	r1, [sp]
60312268:	e304113c 	movw	r1, #16700	; 0x413c
6031226c:	e3461031 	movt	r1, #24625	; 0x6031
60312270:	ebffdefa 	bl	60309e60 <rtk_log_write_nano>
60312274:	e10f3000 	mrs	r3, CPSR
60312278:	f10c0080 	cpsid	i
6031227c:	f57ff04f 	dsb	sy
60312280:	f57ff06f 	isb	sy
60312284:	eafffffe 	b	60312284 <vApplicationStackOverflowHook+0x38>

60312288 <vApplicationGetIdleTaskMemory>:
60312288:	e3a0cb01 	mov	ip, #1024	; 0x400
6031228c:	e30832d8 	movw	r3, #33496	; 0x82d8
60312290:	e3463032 	movt	r3, #24626	; 0x6032
60312294:	e5803000 	str	r3, [r0]
60312298:	e30432d8 	movw	r3, #17112	; 0x42d8
6031229c:	e3463032 	movt	r3, #24626	; 0x6032
603122a0:	e5813000 	str	r3, [r1]
603122a4:	e582c000 	str	ip, [r2]
603122a8:	e12fff1e 	bx	lr

603122ac <vApplicationGetPassiveIdleTaskMemory>:
603122ac:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
603122b0:	e308c450 	movw	ip, #33872	; 0x8450
603122b4:	e346c032 	movt	ip, #24626	; 0x6032
603122b8:	e3a0ef5e 	mov	lr, #376	; 0x178
603122bc:	e02cc39e 	mla	ip, lr, r3, ip
603122c0:	e580c000 	str	ip, [r0]
603122c4:	e30502d8 	movw	r0, #21208	; 0x52d8
603122c8:	e3460032 	movt	r0, #24626	; 0x6032
603122cc:	e0800603 	add	r0, r0, r3, lsl #12
603122d0:	e3a03b01 	mov	r3, #1024	; 0x400
603122d4:	e5810000 	str	r0, [r1]
603122d8:	e1c230b0 	strh	r3, [r2]
603122dc:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

603122e0 <vApplicationGetTimerTaskMemory>:
603122e0:	e3a0cb02 	mov	ip, #2048	; 0x800
603122e4:	e30835c8 	movw	r3, #34248	; 0x85c8
603122e8:	e3463032 	movt	r3, #24626	; 0x6032
603122ec:	e5803000 	str	r3, [r0]
603122f0:	e30632d8 	movw	r3, #25304	; 0x62d8
603122f4:	e3463032 	movt	r3, #24626	; 0x6032
603122f8:	e5813000 	str	r3, [r1]
603122fc:	e582c000 	str	ip, [r2]
60312300:	e12fff1e 	bx	lr

60312304 <pmu_post_sleep_processing>:
60312304:	e92d4010 	push	{r4, lr}
60312308:	e3033780 	movw	r3, #14208	; 0x3780
6031230c:	e3463031 	movt	r3, #24625	; 0x6031
60312310:	e24dd008 	sub	sp, sp, #8
60312314:	e5900000 	ldr	r0, [r0]
60312318:	e3a04000 	mov	r4, #0
6031231c:	e58d4004 	str	r4, [sp, #4]
60312320:	e12fff33 	blx	r3
60312324:	e3042250 	movw	r2, #16976	; 0x4250
60312328:	e3462032 	movt	r2, #24626	; 0x6032
6031232c:	e3a03ffa 	mov	r3, #1000	; 0x3e8
60312330:	e5921000 	ldr	r1, [r2]
60312334:	e0800001 	add	r0, r0, r1
60312338:	e200101f 	and	r1, r0, #31
6031233c:	e5821000 	str	r1, [r2]
60312340:	e0830390 	umull	r0, r3, r0, r3
60312344:	e1a007a0 	lsr	r0, r0, #15
60312348:	e1800883 	orr	r0, r0, r3, lsl #17
6031234c:	e58d0004 	str	r0, [sp, #4]
60312350:	e59d0004 	ldr	r0, [sp, #4]
60312354:	ebffef86 	bl	6030e174 <vTaskCompTick>
60312358:	e3033988 	movw	r3, #14728	; 0x3988
6031235c:	e3463032 	movt	r3, #24626	; 0x6032
60312360:	e1a00004 	mov	r0, r4
60312364:	e5834000 	str	r4, [r3]
60312368:	e28dd008 	add	sp, sp, #8
6031236c:	e8bd4010 	pop	{r4, lr}
60312370:	eaffe3aa 	b	6030b220 <pmu_set_sysactive_time>

60312374 <vPortSuppressTicksAndSleep>:
60312374:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60312378:	e24dd008 	sub	sp, sp, #8
6031237c:	ee103fb0 	mrc	15, 0, r3, cr0, cr0, {5}
60312380:	e21340ff 	ands	r4, r3, #255	; 0xff
60312384:	0a000014 	beq	603123dc <vPortSuppressTicksAndSleep+0x68>
60312388:	ee103fb0 	mrc	15, 0, r3, cr0, cr0, {5}
6031238c:	e6ef3073 	uxtb	r3, r3
60312390:	e3530000 	cmp	r3, #0
60312394:	1a000001 	bne	603123a0 <vPortSuppressTicksAndSleep+0x2c>
60312398:	e28dd008 	add	sp, sp, #8
6031239c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
603123a0:	ebffe3d8 	bl	6030b308 <pmu_ready_to_sleep>
603123a4:	e3500000 	cmp	r0, #0
603123a8:	1a000037 	bne	6031248c <vPortSuppressTicksAndSleep+0x118>
603123ac:	e10f3000 	mrs	r3, CPSR
603123b0:	f10c0080 	cpsid	i
603123b4:	f57ff04f 	dsb	sy
603123b8:	f57ff06f 	isb	sy
603123bc:	f57ff04f 	dsb	sy
603123c0:	e320f003 	wfi
603123c4:	f57ff06f 	isb	sy
603123c8:	f1080080 	cpsie	i
603123cc:	f57ff04f 	dsb	sy
603123d0:	f57ff06f 	isb	sy
603123d4:	e28dd008 	add	sp, sp, #8
603123d8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
603123dc:	e1a05000 	mov	r5, r0
603123e0:	e10f3000 	mrs	r3, CPSR
603123e4:	f10c0080 	cpsid	i
603123e8:	f57ff04f 	dsb	sy
603123ec:	f57ff06f 	isb	sy
603123f0:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
603123f4:	e3833002 	orr	r3, r3, #2
603123f8:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
603123fc:	e3066268 	movw	r6, #25192	; 0x6268
60312400:	e3466031 	movt	r6, #24625	; 0x6031
60312404:	e3a08001 	mov	r8, #1
60312408:	e3047280 	movw	r7, #17024	; 0x4280
6031240c:	e3467032 	movt	r7, #24626	; 0x6032
60312410:	e5864000 	str	r4, [r6]
60312414:	e1973f9f 	ldrex	r3, [r7]
60312418:	e3530000 	cmp	r3, #0
6031241c:	1320f002 	wfene
60312420:	01873f98 	strexeq	r3, r8, [r7]
60312424:	03530000 	cmpeq	r3, #0
60312428:	1afffff9 	bne	60312414 <vPortSuppressTicksAndSleep+0xa0>
6031242c:	f57ff05f 	dmb	sy
60312430:	ebfff154 	bl	6030e988 <eTaskConfirmSleepModeStatus>
60312434:	f57ff05f 	dmb	sy
60312438:	e5874000 	str	r4, [r7]
6031243c:	f57ff04f 	dsb	sy
60312440:	e320f004 	sev
60312444:	e3500000 	cmp	r0, #0
60312448:	1a00001e 	bne	603124c8 <vPortSuppressTicksAndSleep+0x154>
6031244c:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
60312450:	e3c33002 	bic	r3, r3, #2
60312454:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
60312458:	e3a03c02 	mov	r3, #512	; 0x200
6031245c:	e3443100 	movt	r3, #16640	; 0x4100
60312460:	e5933008 	ldr	r3, [r3, #8]
60312464:	e3130802 	tst	r3, #131072	; 0x20000
60312468:	0a000000 	beq	60312470 <vPortSuppressTicksAndSleep+0xfc>
6031246c:	e320f004 	sev
60312470:	e3a03001 	mov	r3, #1
60312474:	e5863000 	str	r3, [r6]
60312478:	f1080080 	cpsie	i
6031247c:	f57ff04f 	dsb	sy
60312480:	f57ff06f 	isb	sy
60312484:	e28dd008 	add	sp, sp, #8
60312488:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
6031248c:	ebffe418 	bl	6030b4f4 <pmu_get_sleep_type>
60312490:	e3500000 	cmp	r0, #0
60312494:	0a000015 	beq	603124f0 <vPortSuppressTicksAndSleep+0x17c>
60312498:	e10f3000 	mrs	r3, CPSR
6031249c:	f10c0080 	cpsid	i
603124a0:	f57ff04f 	dsb	sy
603124a4:	f57ff06f 	isb	sy
603124a8:	f57ff04f 	dsb	sy
603124ac:	e320f002 	wfe
603124b0:	e320f002 	wfe
603124b4:	f57ff06f 	isb	sy
603124b8:	f1080080 	cpsie	i
603124bc:	f57ff04f 	dsb	sy
603124c0:	f57ff06f 	isb	sy
603124c4:	eaffffb3 	b	60312398 <vPortSuppressTicksAndSleep+0x24>
603124c8:	ebffe38e 	bl	6030b308 <pmu_ready_to_sleep>
603124cc:	e3500000 	cmp	r0, #0
603124d0:	1a00000b 	bne	60312504 <vPortSuppressTicksAndSleep+0x190>
603124d4:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
603124d8:	e3c33002 	bic	r3, r3, #2
603124dc:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
603124e0:	f57ff04f 	dsb	sy
603124e4:	e320f003 	wfi
603124e8:	f57ff06f 	isb	sy
603124ec:	eaffffd9 	b	60312458 <vPortSuppressTicksAndSleep+0xe4>
603124f0:	e3a01001 	mov	r1, #1
603124f4:	e1a00001 	mov	r0, r1
603124f8:	ebffe40c 	bl	6030b530 <pmu_set_secondary_cpu_state>
603124fc:	ef000000 	svc	0x00000000
60312500:	eaffffa4 	b	60312398 <vPortSuppressTicksAndSleep+0x24>
60312504:	e58d5004 	str	r5, [sp, #4]
60312508:	ebffe3f9 	bl	6030b4f4 <pmu_get_sleep_type>
6031250c:	e3500000 	cmp	r0, #0
60312510:	0a000019 	beq	6031257c <vPortSuppressTicksAndSleep+0x208>
60312514:	e3a03c02 	mov	r3, #512	; 0x200
60312518:	e3443100 	movt	r3, #16640	; 0x4100
6031251c:	e5933008 	ldr	r3, [r3, #8]
60312520:	e3130802 	tst	r3, #131072	; 0x20000
60312524:	0affffcb 	beq	60312458 <vPortSuppressTicksAndSleep+0xe4>
60312528:	e28d0004 	add	r0, sp, #4
6031252c:	ebffe38c 	bl	6030b364 <pmu_pre_sleep_processing>
60312530:	ebffe3ef 	bl	6030b4f4 <pmu_get_sleep_type>
60312534:	e3500000 	cmp	r0, #0
60312538:	1a000009 	bne	60312564 <vPortSuppressTicksAndSleep+0x1f0>
6031253c:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
60312540:	e3130001 	tst	r3, #1
60312544:	1a000001 	bne	60312550 <vPortSuppressTicksAndSleep+0x1dc>
60312548:	e3a03001 	mov	r3, #1
6031254c:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
60312550:	ec510f1e 	mrrc	15, 1, r0, r1, cr14
60312554:	e30cc350 	movw	ip, #50000	; 0xc350
60312558:	e09c2000 	adds	r2, ip, r0
6031255c:	e2a13000 	adc	r3, r1, #0
60312560:	ec432f3e 	mcrr	15, 3, r2, r3, cr14
60312564:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
60312568:	e3c33002 	bic	r3, r3, #2
6031256c:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
60312570:	e28d0004 	add	r0, sp, #4
60312574:	ebffff62 	bl	60312304 <pmu_post_sleep_processing>
60312578:	eaffffb6 	b	60312458 <vPortSuppressTicksAndSleep+0xe4>
6031257c:	e1a00008 	mov	r0, r8
60312580:	ebffe3ee 	bl	6030b540 <pmu_get_secondary_cpu_state>
60312584:	e3500002 	cmp	r0, #2
60312588:	0affffb2 	beq	60312458 <vPortSuppressTicksAndSleep+0xe4>
6031258c:	e1a00008 	mov	r0, r8
60312590:	ebffe3ea 	bl	6030b540 <pmu_get_secondary_cpu_state>
60312594:	e2501000 	subs	r1, r0, #0
60312598:	1affffe2 	bne	60312528 <vPortSuppressTicksAndSleep+0x1b4>
6031259c:	f1080080 	cpsie	i
603125a0:	f57ff04f 	dsb	sy
603125a4:	f57ff06f 	isb	sy
603125a8:	e1a00008 	mov	r0, r8
603125ac:	ebffdf35 	bl	6030a288 <arm_gic_raise_softirq>
603125b0:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
603125b4:	e3c33002 	bic	r3, r3, #2
603125b8:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
603125bc:	e3a00064 	mov	r0, #100	; 0x64
603125c0:	e30a3ffc 	movw	r3, #45052	; 0xaffc
603125c4:	e3463030 	movt	r3, #24624	; 0x6030
603125c8:	e12fff33 	blx	r3
603125cc:	eaffffa1 	b	60312458 <vPortSuppressTicksAndSleep+0xe4>

603125d0 <vPortCleanUpTCB>:
603125d0:	e12fff1e 	bx	lr

603125d4 <print_unsigned_num>:
603125d4:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
603125d8:	e1a06000 	mov	r6, r0
603125dc:	e24dd024 	sub	sp, sp, #36	; 0x24
603125e0:	e28da00c 	add	sl, sp, #12
603125e4:	e1a05001 	mov	r5, r1
603125e8:	e59d704c 	ldr	r7, [sp, #76]	; 0x4c
603125ec:	e1a08002 	mov	r8, r2
603125f0:	e1a0b003 	mov	fp, r3
603125f4:	e1a0900a 	mov	r9, sl
603125f8:	e3a04000 	mov	r4, #0
603125fc:	ea00000b 	b	60312630 <print_unsigned_num+0x5c>
60312600:	e28c3057 	add	r3, ip, #87	; 0x57
60312604:	e3570001 	cmp	r7, #1
60312608:	e6ef3073 	uxtb	r3, r3
6031260c:	0a000012 	beq	6031265c <print_unsigned_num+0x88>
60312610:	e1560008 	cmp	r6, r8
60312614:	e2842001 	add	r2, r4, #1
60312618:	e1a06000 	mov	r6, r0
6031261c:	e4c93001 	strb	r3, [r9], #1
60312620:	e2d50000 	sbcs	r0, r5, #0
60312624:	e1a05001 	mov	r5, r1
60312628:	3a00000e 	bcc	60312668 <print_unsigned_num+0x94>
6031262c:	e1a04002 	mov	r4, r2
60312630:	e1a00006 	mov	r0, r6
60312634:	e1a01005 	mov	r1, r5
60312638:	e1a02008 	mov	r2, r8
6031263c:	e3a03000 	mov	r3, #0
60312640:	ebffb8a3 	bl	603008d4 <__aeabi_uldivmod>
60312644:	e6efc072 	uxtb	ip, r2
60312648:	e28c3030 	add	r3, ip, #48	; 0x30
6031264c:	e3520009 	cmp	r2, #9
60312650:	8affffea 	bhi	60312600 <print_unsigned_num+0x2c>
60312654:	e6ef3073 	uxtb	r3, r3
60312658:	eaffffec 	b	60312610 <print_unsigned_num+0x3c>
6031265c:	e28c3037 	add	r3, ip, #55	; 0x37
60312660:	e6ef3073 	uxtb	r3, r3
60312664:	eaffffe9 	b	60312610 <print_unsigned_num+0x3c>
60312668:	e1a07002 	mov	r7, r2
6031266c:	e59d2050 	ldr	r2, [sp, #80]	; 0x50
60312670:	e3520000 	cmp	r2, #0
60312674:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
60312678:	0a000010 	beq	603126c0 <print_unsigned_num+0xec>
6031267c:	e2422001 	sub	r2, r2, #1
60312680:	e35b0030 	cmp	fp, #48	; 0x30
60312684:	e58d2048 	str	r2, [sp, #72]	; 0x48
60312688:	1a000035 	bne	60312764 <print_unsigned_num+0x190>
6031268c:	e3a0002d 	mov	r0, #45	; 0x2d
60312690:	e30a5b44 	movw	r5, #43844	; 0xab44
60312694:	e3465030 	movt	r5, #24624	; 0x6030
60312698:	e58d3004 	str	r3, [sp, #4]
6031269c:	e12fff35 	blx	r5
603126a0:	e59d3048 	ldr	r3, [sp, #72]	; 0x48
603126a4:	e3530000 	cmp	r3, #0
603126a8:	e59d3004 	ldr	r3, [sp, #4]
603126ac:	da000021 	ble	60312738 <print_unsigned_num+0x164>
603126b0:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
603126b4:	e1570002 	cmp	r7, r2
603126b8:	ba00000a 	blt	603126e8 <print_unsigned_num+0x114>
603126bc:	ea00001b 	b	60312730 <print_unsigned_num+0x15c>
603126c0:	e3520000 	cmp	r2, #0
603126c4:	d30a5b44 	movwle	r5, #43844	; 0xab44
603126c8:	d3465030 	movtle	r5, #24624	; 0x6030
603126cc:	da000019 	ble	60312738 <print_unsigned_num+0x164>
603126d0:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
603126d4:	e30a5b44 	movw	r5, #43844	; 0xab44
603126d8:	e3465030 	movt	r5, #24624	; 0x6030
603126dc:	e59d2050 	ldr	r2, [sp, #80]	; 0x50
603126e0:	e1510007 	cmp	r1, r7
603126e4:	da00000d 	ble	60312720 <print_unsigned_num+0x14c>
603126e8:	e59d6048 	ldr	r6, [sp, #72]	; 0x48
603126ec:	e1a08003 	mov	r8, r3
603126f0:	e1a0000b 	mov	r0, fp
603126f4:	e2466001 	sub	r6, r6, #1
603126f8:	e12fff35 	blx	r5
603126fc:	e1570006 	cmp	r7, r6
60312700:	1afffffa 	bne	603126f0 <print_unsigned_num+0x11c>
60312704:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
60312708:	e1e02007 	mvn	r2, r7
6031270c:	e0822001 	add	r2, r2, r1
60312710:	e59d1050 	ldr	r1, [sp, #80]	; 0x50
60312714:	e1a03008 	mov	r3, r8
60312718:	e2811001 	add	r1, r1, #1
6031271c:	e0822001 	add	r2, r2, r1
60312720:	e59d1050 	ldr	r1, [sp, #80]	; 0x50
60312724:	e58d2050 	str	r2, [sp, #80]	; 0x50
60312728:	e3510000 	cmp	r1, #0
6031272c:	0a000001 	beq	60312738 <print_unsigned_num+0x164>
60312730:	e31b00df 	tst	fp, #223	; 0xdf
60312734:	0a000010 	beq	6031277c <print_unsigned_num+0x1a8>
60312738:	e08a4004 	add	r4, sl, r4
6031273c:	e1a00003 	mov	r0, r3
60312740:	ea000000 	b	60312748 <print_unsigned_num+0x174>
60312744:	e5740001 	ldrb	r0, [r4, #-1]!
60312748:	e12fff35 	blx	r5
6031274c:	e15a0004 	cmp	sl, r4
60312750:	1afffffb 	bne	60312744 <print_unsigned_num+0x170>
60312754:	e59d3050 	ldr	r3, [sp, #80]	; 0x50
60312758:	e0830007 	add	r0, r3, r7
6031275c:	e28dd024 	add	sp, sp, #36	; 0x24
60312760:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
60312764:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
60312768:	e3520000 	cmp	r2, #0
6031276c:	d30a5b44 	movwle	r5, #43844	; 0xab44
60312770:	d3465030 	movtle	r5, #24624	; 0x6030
60312774:	caffffd5 	bgt	603126d0 <print_unsigned_num+0xfc>
60312778:	eaffffec 	b	60312730 <print_unsigned_num+0x15c>
6031277c:	e3a0002d 	mov	r0, #45	; 0x2d
60312780:	e58d3004 	str	r3, [sp, #4]
60312784:	e12fff35 	blx	r5
60312788:	e59d3004 	ldr	r3, [sp, #4]
6031278c:	eaffffe9 	b	60312738 <print_unsigned_num+0x164>

60312790 <SYSCFG_RLVersion>:
60312790:	e3a03902 	mov	r3, #32768	; 0x8000
60312794:	e3443200 	movt	r3, #16896	; 0x4200
60312798:	e5932274 	ldr	r2, [r3, #628]	; 0x274
6031279c:	e3c2220f 	bic	r2, r2, #-268435456	; 0xf0000000
603127a0:	e382120a 	orr	r1, r2, #-1610612736	; 0xa0000000
603127a4:	e5831274 	str	r1, [r3, #628]	; 0x274
603127a8:	e5930274 	ldr	r0, [r3, #628]	; 0x274
603127ac:	e5832274 	str	r2, [r3, #628]	; 0x274
603127b0:	e7e30850 	ubfx	r0, r0, #16, #4
603127b4:	e12fff1e 	bx	lr

603127b8 <DiagVprintf>:
603127b8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
603127bc:	e1a04000 	mov	r4, r0
603127c0:	e5d00000 	ldrb	r0, [r0]
603127c4:	e24dd02c 	sub	sp, sp, #44	; 0x2c
603127c8:	e3500000 	cmp	r0, #0
603127cc:	0a00021d 	beq	60313048 <DiagVprintf+0x890>
603127d0:	e3a03000 	mov	r3, #0
603127d4:	e1a09001 	mov	r9, r1
603127d8:	e1a06003 	mov	r6, r3
603127dc:	e3a0a00a 	mov	sl, #10
603127e0:	e58d3014 	str	r3, [sp, #20]
603127e4:	ea000006 	b	60312804 <DiagVprintf+0x4c>
603127e8:	e30a5b44 	movw	r5, #43844	; 0xab44
603127ec:	e3465030 	movt	r5, #24624	; 0x6030
603127f0:	e2866001 	add	r6, r6, #1
603127f4:	e12fff35 	blx	r5
603127f8:	e5d40000 	ldrb	r0, [r4]
603127fc:	e3500000 	cmp	r0, #0
60312800:	0a000086 	beq	60312a20 <DiagVprintf+0x268>
60312804:	e2844001 	add	r4, r4, #1
60312808:	e3500025 	cmp	r0, #37	; 0x25
6031280c:	1afffff5 	bne	603127e8 <DiagVprintf+0x30>
60312810:	e3a0b000 	mov	fp, #0
60312814:	e1a0700b 	mov	r7, fp
60312818:	e1a0800b 	mov	r8, fp
6031281c:	e1a0000b 	mov	r0, fp
60312820:	e5d43000 	ldrb	r3, [r4]
60312824:	e353007a 	cmp	r3, #122	; 0x7a
60312828:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
6031282c:	ea00007a 	b	60312a1c <DiagVprintf+0x264>
60312830:	60312a70 	.word	0x60312a70
60312834:	60312a1c 	.word	0x60312a1c
60312838:	60312a1c 	.word	0x60312a1c
6031283c:	60312a1c 	.word	0x60312a1c
60312840:	60312a1c 	.word	0x60312a1c
60312844:	60312a1c 	.word	0x60312a1c
60312848:	60312a1c 	.word	0x60312a1c
6031284c:	60312a1c 	.word	0x60312a1c
60312850:	60312a1c 	.word	0x60312a1c
60312854:	60312a1c 	.word	0x60312a1c
60312858:	60312a1c 	.word	0x60312a1c
6031285c:	60312a1c 	.word	0x60312a1c
60312860:	60312a1c 	.word	0x60312a1c
60312864:	60312a1c 	.word	0x60312a1c
60312868:	60312a1c 	.word	0x60312a1c
6031286c:	60312a1c 	.word	0x60312a1c
60312870:	60312a1c 	.word	0x60312a1c
60312874:	60312a1c 	.word	0x60312a1c
60312878:	60312a1c 	.word	0x60312a1c
6031287c:	60312a1c 	.word	0x60312a1c
60312880:	60312a1c 	.word	0x60312a1c
60312884:	60312a1c 	.word	0x60312a1c
60312888:	60312a1c 	.word	0x60312a1c
6031288c:	60312a1c 	.word	0x60312a1c
60312890:	60312a1c 	.word	0x60312a1c
60312894:	60312a1c 	.word	0x60312a1c
60312898:	60312a1c 	.word	0x60312a1c
6031289c:	60312a1c 	.word	0x60312a1c
603128a0:	60312a1c 	.word	0x60312a1c
603128a4:	60312a1c 	.word	0x60312a1c
603128a8:	60312a1c 	.word	0x60312a1c
603128ac:	60312a1c 	.word	0x60312a1c
603128b0:	60312aa8 	.word	0x60312aa8
603128b4:	60312a1c 	.word	0x60312a1c
603128b8:	60312a1c 	.word	0x60312a1c
603128bc:	60312a1c 	.word	0x60312a1c
603128c0:	60312a1c 	.word	0x60312a1c
603128c4:	60312d98 	.word	0x60312d98
603128c8:	60312a1c 	.word	0x60312a1c
603128cc:	60312a1c 	.word	0x60312a1c
603128d0:	60312a1c 	.word	0x60312a1c
603128d4:	60312a1c 	.word	0x60312a1c
603128d8:	60312a1c 	.word	0x60312a1c
603128dc:	60312a1c 	.word	0x60312a1c
603128e0:	60312a1c 	.word	0x60312a1c
603128e4:	60312d8c 	.word	0x60312d8c
603128e8:	60312a1c 	.word	0x60312a1c
603128ec:	60312a1c 	.word	0x60312a1c
603128f0:	60312aa8 	.word	0x60312aa8
603128f4:	60312a78 	.word	0x60312a78
603128f8:	60312a78 	.word	0x60312a78
603128fc:	60312a78 	.word	0x60312a78
60312900:	60312a78 	.word	0x60312a78
60312904:	60312a78 	.word	0x60312a78
60312908:	60312a78 	.word	0x60312a78
6031290c:	60312a78 	.word	0x60312a78
60312910:	60312a78 	.word	0x60312a78
60312914:	60312a78 	.word	0x60312a78
60312918:	60312a1c 	.word	0x60312a1c
6031291c:	60312a1c 	.word	0x60312a1c
60312920:	60312a1c 	.word	0x60312a1c
60312924:	60312a1c 	.word	0x60312a1c
60312928:	60312a1c 	.word	0x60312a1c
6031292c:	60312a1c 	.word	0x60312a1c
60312930:	60312a1c 	.word	0x60312a1c
60312934:	60312a1c 	.word	0x60312a1c
60312938:	60312c70 	.word	0x60312c70
6031293c:	60312bf4 	.word	0x60312bf4
60312940:	60312a1c 	.word	0x60312a1c
60312944:	60312a1c 	.word	0x60312a1c
60312948:	60312a1c 	.word	0x60312a1c
6031294c:	60312a1c 	.word	0x60312a1c
60312950:	60312a1c 	.word	0x60312a1c
60312954:	60312a1c 	.word	0x60312a1c
60312958:	60312a1c 	.word	0x60312a1c
6031295c:	60312a1c 	.word	0x60312a1c
60312960:	60312be8 	.word	0x60312be8
60312964:	60312a1c 	.word	0x60312a1c
60312968:	60312a1c 	.word	0x60312a1c
6031296c:	60312b60 	.word	0x60312b60
60312970:	60312a1c 	.word	0x60312a1c
60312974:	60312a1c 	.word	0x60312a1c
60312978:	60312a1c 	.word	0x60312a1c
6031297c:	60312a1c 	.word	0x60312a1c
60312980:	60312a1c 	.word	0x60312a1c
60312984:	60312a1c 	.word	0x60312a1c
60312988:	60312a1c 	.word	0x60312a1c
6031298c:	60312a1c 	.word	0x60312a1c
60312990:	60312cf8 	.word	0x60312cf8
60312994:	60312a1c 	.word	0x60312a1c
60312998:	60312a1c 	.word	0x60312a1c
6031299c:	60312a1c 	.word	0x60312a1c
603129a0:	60312a1c 	.word	0x60312a1c
603129a4:	60312a1c 	.word	0x60312a1c
603129a8:	60312a1c 	.word	0x60312a1c
603129ac:	60312a1c 	.word	0x60312a1c
603129b0:	60312a1c 	.word	0x60312a1c
603129b4:	60312a1c 	.word	0x60312a1c
603129b8:	60312c70 	.word	0x60312c70
603129bc:	60312bf4 	.word	0x60312bf4
603129c0:	60312ac0 	.word	0x60312ac0
603129c4:	60312a1c 	.word	0x60312a1c
603129c8:	60312a1c 	.word	0x60312a1c
603129cc:	60312a1c 	.word	0x60312a1c
603129d0:	60312a1c 	.word	0x60312a1c
603129d4:	60312ac0 	.word	0x60312ac0
603129d8:	60312a1c 	.word	0x60312a1c
603129dc:	60312a1c 	.word	0x60312a1c
603129e0:	60312be8 	.word	0x60312be8
603129e4:	60312a1c 	.word	0x60312a1c
603129e8:	60312a1c 	.word	0x60312a1c
603129ec:	60312b60 	.word	0x60312b60
603129f0:	60312e54 	.word	0x60312e54
603129f4:	60312a1c 	.word	0x60312a1c
603129f8:	60312a1c 	.word	0x60312a1c
603129fc:	60312db4 	.word	0x60312db4
60312a00:	60312a1c 	.word	0x60312a1c
60312a04:	60312a2c 	.word	0x60312a2c
60312a08:	60312a1c 	.word	0x60312a1c
60312a0c:	60312a1c 	.word	0x60312a1c
60312a10:	60312d00 	.word	0x60312d00
60312a14:	60312a1c 	.word	0x60312a1c
60312a18:	60312bec 	.word	0x60312bec
60312a1c:	e3e06000 	mvn	r6, #0
60312a20:	e1a00006 	mov	r0, r6
60312a24:	e28dd02c 	add	sp, sp, #44	; 0x2c
60312a28:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
60312a2c:	e3500001 	cmp	r0, #1
60312a30:	c2899007 	addgt	r9, r9, #7
60312a34:	c3c99007 	bicgt	r9, r9, #7
60312a38:	d4990004 	ldrle	r0, [r9], #4
60312a3c:	d3a01000 	movle	r1, #0
60312a40:	c5991004 	ldrgt	r1, [r9, #4]
60312a44:	c4990008 	ldrgt	r0, [r9], #8
60312a48:	e35b0000 	cmp	fp, #0
60312a4c:	1a00012f 	bne	60312f10 <DiagVprintf+0x758>
60312a50:	e58db008 	str	fp, [sp, #8]
60312a54:	e59d2014 	ldr	r2, [sp, #20]
60312a58:	e58d2004 	str	r2, [sp, #4]
60312a5c:	e1a03008 	mov	r3, r8
60312a60:	e3a0200a 	mov	r2, #10
60312a64:	e58d7000 	str	r7, [sp]
60312a68:	ebfffed9 	bl	603125d4 <print_unsigned_num>
60312a6c:	e0866000 	add	r6, r6, r0
60312a70:	e2844001 	add	r4, r4, #1
60312a74:	eaffff5f 	b	603127f8 <DiagVprintf+0x40>
60312a78:	e3a08020 	mov	r8, #32
60312a7c:	e3a07000 	mov	r7, #0
60312a80:	ea000003 	b	60312a94 <DiagVprintf+0x2dc>
60312a84:	e5f43001 	ldrb	r3, [r4, #1]!
60312a88:	e2427030 	sub	r7, r2, #48	; 0x30
60312a8c:	e3530000 	cmp	r3, #0
60312a90:	0affffe2 	beq	60312a20 <DiagVprintf+0x268>
60312a94:	e022379a 	mla	r2, sl, r7, r3
60312a98:	e2433030 	sub	r3, r3, #48	; 0x30
60312a9c:	e3530009 	cmp	r3, #9
60312aa0:	9afffff7 	bls	60312a84 <DiagVprintf+0x2cc>
60312aa4:	eaffff5d 	b	60312820 <DiagVprintf+0x68>
60312aa8:	e2844001 	add	r4, r4, #1
60312aac:	e1a08003 	mov	r8, r3
60312ab0:	e5d43000 	ldrb	r3, [r4]
60312ab4:	e3530000 	cmp	r3, #0
60312ab8:	1affffef 	bne	60312a7c <DiagVprintf+0x2c4>
60312abc:	eaffffd7 	b	60312a20 <DiagVprintf+0x268>
60312ac0:	e3500001 	cmp	r0, #1
60312ac4:	c2899007 	addgt	r9, r9, #7
60312ac8:	c3c99007 	bicgt	r9, r9, #7
60312acc:	d5990000 	ldrle	r0, [r9]
60312ad0:	d2892004 	addle	r2, r9, #4
60312ad4:	c5991004 	ldrgt	r1, [r9, #4]
60312ad8:	d1a01fc0 	asrle	r1, r0, #31
60312adc:	d1a09002 	movle	r9, r2
60312ae0:	c4990008 	ldrgt	r0, [r9], #8
60312ae4:	e3510000 	cmp	r1, #0
60312ae8:	a3a02000 	movge	r2, #0
60312aec:	ba000128 	blt	60312f94 <DiagVprintf+0x7dc>
60312af0:	e35b0000 	cmp	fp, #0
60312af4:	e58d2008 	str	r2, [sp, #8]
60312af8:	0affffd5 	beq	60312a54 <DiagVprintf+0x29c>
60312afc:	e59d3014 	ldr	r3, [sp, #20]
60312b00:	e58d3004 	str	r3, [sp, #4]
60312b04:	e3a0200a 	mov	r2, #10
60312b08:	e3a03000 	mov	r3, #0
60312b0c:	e58d3000 	str	r3, [sp]
60312b10:	e1a03008 	mov	r3, r8
60312b14:	ebfffeae 	bl	603125d4 <print_unsigned_num>
60312b18:	e1570000 	cmp	r7, r0
60312b1c:	d3a03000 	movle	r3, #0
60312b20:	c3a03001 	movgt	r3, #1
60312b24:	e3580020 	cmp	r8, #32
60312b28:	13a03000 	movne	r3, #0
60312b2c:	e3530000 	cmp	r3, #0
60312b30:	0affffcd 	beq	60312a6c <DiagVprintf+0x2b4>
60312b34:	e0478000 	sub	r8, r7, r0
60312b38:	e3580000 	cmp	r8, #0
60312b3c:	da00013f 	ble	60313040 <DiagVprintf+0x888>
60312b40:	e30a5b44 	movw	r5, #43844	; 0xab44
60312b44:	e3465030 	movt	r5, #24624	; 0x6030
60312b48:	e3a00020 	mov	r0, #32
60312b4c:	e12fff35 	blx	r5
60312b50:	e2588001 	subs	r8, r8, #1
60312b54:	1afffffb 	bne	60312b48 <DiagVprintf+0x390>
60312b58:	e1a00007 	mov	r0, r7
60312b5c:	eaffffc2 	b	60312a6c <DiagVprintf+0x2b4>
60312b60:	e3500001 	cmp	r0, #1
60312b64:	c2899007 	addgt	r9, r9, #7
60312b68:	c3c99007 	bicgt	r9, r9, #7
60312b6c:	d4990004 	ldrle	r0, [r9], #4
60312b70:	d3a01000 	movle	r1, #0
60312b74:	c5991004 	ldrgt	r1, [r9, #4]
60312b78:	c4990008 	ldrgt	r0, [r9], #8
60312b7c:	e35b0000 	cmp	fp, #0
60312b80:	0a0000cf 	beq	60312ec4 <DiagVprintf+0x70c>
60312b84:	e59d3014 	ldr	r3, [sp, #20]
60312b88:	e58d3004 	str	r3, [sp, #4]
60312b8c:	e3a02008 	mov	r2, #8
60312b90:	e3a03000 	mov	r3, #0
60312b94:	e58d3008 	str	r3, [sp, #8]
60312b98:	e58d3000 	str	r3, [sp]
60312b9c:	e1a03008 	mov	r3, r8
60312ba0:	ebfffe8b 	bl	603125d4 <print_unsigned_num>
60312ba4:	e1570000 	cmp	r7, r0
60312ba8:	d3a03000 	movle	r3, #0
60312bac:	c3a03001 	movgt	r3, #1
60312bb0:	e3580020 	cmp	r8, #32
60312bb4:	13a03000 	movne	r3, #0
60312bb8:	e3530000 	cmp	r3, #0
60312bbc:	0affffaa 	beq	60312a6c <DiagVprintf+0x2b4>
60312bc0:	e0478000 	sub	r8, r7, r0
60312bc4:	e3580000 	cmp	r8, #0
60312bc8:	da00011c 	ble	60313040 <DiagVprintf+0x888>
60312bcc:	e30a5b44 	movw	r5, #43844	; 0xab44
60312bd0:	e3465030 	movt	r5, #24624	; 0x6030
60312bd4:	e3a00020 	mov	r0, #32
60312bd8:	e12fff35 	blx	r5
60312bdc:	e2588001 	subs	r8, r8, #1
60312be0:	1afffffb 	bne	60312bd4 <DiagVprintf+0x41c>
60312be4:	eaffffdb 	b	60312b58 <DiagVprintf+0x3a0>
60312be8:	e2800001 	add	r0, r0, #1
60312bec:	e2844001 	add	r4, r4, #1
60312bf0:	eaffff0a 	b	60312820 <DiagVprintf+0x68>
60312bf4:	e3570001 	cmp	r7, #1
60312bf8:	e4993004 	ldr	r3, [r9], #4
60312bfc:	d3a02000 	movle	r2, #0
60312c00:	c3a02001 	movgt	r2, #1
60312c04:	e35b0000 	cmp	fp, #0
60312c08:	13a01000 	movne	r1, #0
60312c0c:	02021001 	andeq	r1, r2, #1
60312c10:	e6ef3073 	uxtb	r3, r3
60312c14:	e3510000 	cmp	r1, #0
60312c18:	e58d3018 	str	r3, [sp, #24]
60312c1c:	1a0000e0 	bne	60312fa4 <DiagVprintf+0x7ec>
60312c20:	e59d0018 	ldr	r0, [sp, #24]
60312c24:	e30a5b44 	movw	r5, #43844	; 0xab44
60312c28:	e3465030 	movt	r5, #24624	; 0x6030
60312c2c:	e58d201c 	str	r2, [sp, #28]
60312c30:	e12fff35 	blx	r5
60312c34:	e59d201c 	ldr	r2, [sp, #28]
60312c38:	e2863001 	add	r3, r6, #1
60312c3c:	e35b0000 	cmp	fp, #0
60312c40:	03a02000 	moveq	r2, #0
60312c44:	12022001 	andne	r2, r2, #1
60312c48:	e3520000 	cmp	r2, #0
60312c4c:	01a06003 	moveq	r6, r3
60312c50:	0affff86 	beq	60312a70 <DiagVprintf+0x2b8>
60312c54:	e247b001 	sub	fp, r7, #1
60312c58:	e1a00008 	mov	r0, r8
60312c5c:	e12fff35 	blx	r5
60312c60:	e25bb001 	subs	fp, fp, #1
60312c64:	1afffffb 	bne	60312c58 <DiagVprintf+0x4a0>
60312c68:	e0866007 	add	r6, r6, r7
60312c6c:	eaffff7f 	b	60312a70 <DiagVprintf+0x2b8>
60312c70:	e3500001 	cmp	r0, #1
60312c74:	c2899007 	addgt	r9, r9, #7
60312c78:	c3c99007 	bicgt	r9, r9, #7
60312c7c:	d4990004 	ldrle	r0, [r9], #4
60312c80:	d3a01000 	movle	r1, #0
60312c84:	c5991004 	ldrgt	r1, [r9, #4]
60312c88:	c4990008 	ldrgt	r0, [r9], #8
60312c8c:	e35b0000 	cmp	fp, #0
60312c90:	0a0000b7 	beq	60312f74 <DiagVprintf+0x7bc>
60312c94:	e59d3014 	ldr	r3, [sp, #20]
60312c98:	e58d3004 	str	r3, [sp, #4]
60312c9c:	e3a02002 	mov	r2, #2
60312ca0:	e3a03000 	mov	r3, #0
60312ca4:	e58d3008 	str	r3, [sp, #8]
60312ca8:	e58d3000 	str	r3, [sp]
60312cac:	e1a03008 	mov	r3, r8
60312cb0:	ebfffe47 	bl	603125d4 <print_unsigned_num>
60312cb4:	e1570000 	cmp	r7, r0
60312cb8:	d3a03000 	movle	r3, #0
60312cbc:	c3a03001 	movgt	r3, #1
60312cc0:	e3580020 	cmp	r8, #32
60312cc4:	13a03000 	movne	r3, #0
60312cc8:	e3530000 	cmp	r3, #0
60312ccc:	0affff66 	beq	60312a6c <DiagVprintf+0x2b4>
60312cd0:	e0478000 	sub	r8, r7, r0
60312cd4:	e3580000 	cmp	r8, #0
60312cd8:	da0000d8 	ble	60313040 <DiagVprintf+0x888>
60312cdc:	e30a5b44 	movw	r5, #43844	; 0xab44
60312ce0:	e3465030 	movt	r5, #24624	; 0x6030
60312ce4:	e3a00020 	mov	r0, #32
60312ce8:	e12fff35 	blx	r5
60312cec:	e2588001 	subs	r8, r8, #1
60312cf0:	1afffffb 	bne	60312ce4 <DiagVprintf+0x52c>
60312cf4:	eaffff97 	b	60312b58 <DiagVprintf+0x3a0>
60312cf8:	e3a03001 	mov	r3, #1
60312cfc:	e58d3014 	str	r3, [sp, #20]
60312d00:	e3500001 	cmp	r0, #1
60312d04:	c2899007 	addgt	r9, r9, #7
60312d08:	c3c99007 	bicgt	r9, r9, #7
60312d0c:	d4990004 	ldrle	r0, [r9], #4
60312d10:	d3a01000 	movle	r1, #0
60312d14:	c5991004 	ldrgt	r1, [r9, #4]
60312d18:	c4990008 	ldrgt	r0, [r9], #8
60312d1c:	e35b0000 	cmp	fp, #0
60312d20:	0a00005f 	beq	60312ea4 <DiagVprintf+0x6ec>
60312d24:	e59d3014 	ldr	r3, [sp, #20]
60312d28:	e58d3004 	str	r3, [sp, #4]
60312d2c:	e3a02010 	mov	r2, #16
60312d30:	e3a03000 	mov	r3, #0
60312d34:	e58d3008 	str	r3, [sp, #8]
60312d38:	e58d3000 	str	r3, [sp]
60312d3c:	e1a03008 	mov	r3, r8
60312d40:	ebfffe23 	bl	603125d4 <print_unsigned_num>
60312d44:	e1570000 	cmp	r7, r0
60312d48:	d3a03000 	movle	r3, #0
60312d4c:	c3a03001 	movgt	r3, #1
60312d50:	e3580020 	cmp	r8, #32
60312d54:	13a03000 	movne	r3, #0
60312d58:	e3530000 	cmp	r3, #0
60312d5c:	0affff42 	beq	60312a6c <DiagVprintf+0x2b4>
60312d60:	e0478000 	sub	r8, r7, r0
60312d64:	e3580000 	cmp	r8, #0
60312d68:	da0000b4 	ble	60313040 <DiagVprintf+0x888>
60312d6c:	e30a5b44 	movw	r5, #43844	; 0xab44
60312d70:	e3465030 	movt	r5, #24624	; 0x6030
60312d74:	e3a00020 	mov	r0, #32
60312d78:	e12fff35 	blx	r5
60312d7c:	e2588001 	subs	r8, r8, #1
60312d80:	1afffffb 	bne	60312d74 <DiagVprintf+0x5bc>
60312d84:	e1a00007 	mov	r0, r7
60312d88:	eaffff37 	b	60312a6c <DiagVprintf+0x2b4>
60312d8c:	e2844001 	add	r4, r4, #1
60312d90:	e28bb001 	add	fp, fp, #1
60312d94:	eafffea1 	b	60312820 <DiagVprintf+0x68>
60312d98:	e3a00025 	mov	r0, #37	; 0x25
60312d9c:	e30a5b44 	movw	r5, #43844	; 0xab44
60312da0:	e3465030 	movt	r5, #24624	; 0x6030
60312da4:	e2866001 	add	r6, r6, #1
60312da8:	e2844001 	add	r4, r4, #1
60312dac:	e12fff35 	blx	r5
60312db0:	eafffe90 	b	603127f8 <DiagVprintf+0x40>
60312db4:	e1a03009 	mov	r3, r9
60312db8:	e4932004 	ldr	r2, [r3], #4
60312dbc:	e58d3018 	str	r3, [sp, #24]
60312dc0:	e5d20000 	ldrb	r0, [r2]
60312dc4:	e3500000 	cmp	r0, #0
60312dc8:	0a0000a0 	beq	60313050 <DiagVprintf+0x898>
60312dcc:	e1a0c002 	mov	ip, r2
60312dd0:	e2629001 	rsb	r9, r2, #1
60312dd4:	e089100c 	add	r1, r9, ip
60312dd8:	e5fc3001 	ldrb	r3, [ip, #1]!
60312ddc:	e3530000 	cmp	r3, #0
60312de0:	1afffffb 	bne	60312dd4 <DiagVprintf+0x61c>
60312de4:	e58d101c 	str	r1, [sp, #28]
60312de8:	e35b0000 	cmp	fp, #0
60312dec:	0a00003c 	beq	60312ee4 <DiagVprintf+0x72c>
60312df0:	e3520000 	cmp	r2, #0
60312df4:	0a000099 	beq	60313060 <DiagVprintf+0x8a8>
60312df8:	e3500000 	cmp	r0, #0
60312dfc:	0a00000d 	beq	60312e38 <DiagVprintf+0x680>
60312e00:	e30a5b44 	movw	r5, #43844	; 0xab44
60312e04:	e3465030 	movt	r5, #24624	; 0x6030
60312e08:	e58d4020 	str	r4, [sp, #32]
60312e0c:	e2629001 	rsb	r9, r2, #1
60312e10:	e1a04002 	mov	r4, r2
60312e14:	e12fff35 	blx	r5
60312e18:	e084c009 	add	ip, r4, r9
60312e1c:	e5f40001 	ldrb	r0, [r4, #1]!
60312e20:	e3500000 	cmp	r0, #0
60312e24:	1afffffa 	bne	60312e14 <DiagVprintf+0x65c>
60312e28:	e59d4020 	ldr	r4, [sp, #32]
60312e2c:	e086600c 	add	r6, r6, ip
60312e30:	e35b0000 	cmp	fp, #0
60312e34:	0a000003 	beq	60312e48 <DiagVprintf+0x690>
60312e38:	e59d301c 	ldr	r3, [sp, #28]
60312e3c:	e0477003 	sub	r7, r7, r3
60312e40:	e3570000 	cmp	r7, #0
60312e44:	ca000073 	bgt	60313018 <DiagVprintf+0x860>
60312e48:	e59d9018 	ldr	r9, [sp, #24]
60312e4c:	e2844001 	add	r4, r4, #1
60312e50:	eafffe68 	b	603127f8 <DiagVprintf+0x40>
60312e54:	e35b0000 	cmp	fp, #0
60312e58:	e4990004 	ldr	r0, [r9], #4
60312e5c:	e3a01000 	mov	r1, #0
60312e60:	13a03001 	movne	r3, #1
60312e64:	03a02008 	moveq	r2, #8
60312e68:	03a03001 	moveq	r3, #1
60312e6c:	158d3004 	strne	r3, [sp, #4]
60312e70:	01cd20f0 	strdeq	r2, [sp]
60312e74:	01a0100b 	moveq	r1, fp
60312e78:	e3a03030 	mov	r3, #48	; 0x30
60312e7c:	e3a02010 	mov	r2, #16
60312e80:	158d1008 	strne	r1, [sp, #8]
60312e84:	158d1000 	strne	r1, [sp]
60312e88:	058db008 	streq	fp, [sp, #8]
60312e8c:	ebfffdd0 	bl	603125d4 <print_unsigned_num>
60312e90:	e2844001 	add	r4, r4, #1
60312e94:	e3a03001 	mov	r3, #1
60312e98:	e0866000 	add	r6, r6, r0
60312e9c:	e58d3014 	str	r3, [sp, #20]
60312ea0:	eafffe54 	b	603127f8 <DiagVprintf+0x40>
60312ea4:	e59d2014 	ldr	r2, [sp, #20]
60312ea8:	e58d2004 	str	r2, [sp, #4]
60312eac:	e1a03008 	mov	r3, r8
60312eb0:	e3a02010 	mov	r2, #16
60312eb4:	e58db008 	str	fp, [sp, #8]
60312eb8:	e58d7000 	str	r7, [sp]
60312ebc:	ebfffdc4 	bl	603125d4 <print_unsigned_num>
60312ec0:	eafffee9 	b	60312a6c <DiagVprintf+0x2b4>
60312ec4:	e59d2014 	ldr	r2, [sp, #20]
60312ec8:	e58d2004 	str	r2, [sp, #4]
60312ecc:	e1a03008 	mov	r3, r8
60312ed0:	e3a02008 	mov	r2, #8
60312ed4:	e58db008 	str	fp, [sp, #8]
60312ed8:	e58d7000 	str	r7, [sp]
60312edc:	ebfffdbc 	bl	603125d4 <print_unsigned_num>
60312ee0:	eafffee1 	b	60312a6c <DiagVprintf+0x2b4>
60312ee4:	e59d301c 	ldr	r3, [sp, #28]
60312ee8:	e0473003 	sub	r3, r7, r3
60312eec:	e3530000 	cmp	r3, #0
60312ef0:	e58d3020 	str	r3, [sp, #32]
60312ef4:	ca000035 	bgt	60312fd0 <DiagVprintf+0x818>
60312ef8:	e3520000 	cmp	r2, #0
60312efc:	0a000055 	beq	60313058 <DiagVprintf+0x8a0>
60312f00:	e5d20000 	ldrb	r0, [r2]
60312f04:	e3500000 	cmp	r0, #0
60312f08:	1affffbc 	bne	60312e00 <DiagVprintf+0x648>
60312f0c:	eaffffcd 	b	60312e48 <DiagVprintf+0x690>
60312f10:	e59d3014 	ldr	r3, [sp, #20]
60312f14:	e58d3004 	str	r3, [sp, #4]
60312f18:	e3a0200a 	mov	r2, #10
60312f1c:	e3a03000 	mov	r3, #0
60312f20:	e58d3008 	str	r3, [sp, #8]
60312f24:	e58d3000 	str	r3, [sp]
60312f28:	e1a03008 	mov	r3, r8
60312f2c:	ebfffda8 	bl	603125d4 <print_unsigned_num>
60312f30:	e1570000 	cmp	r7, r0
60312f34:	d3a03000 	movle	r3, #0
60312f38:	c3a03001 	movgt	r3, #1
60312f3c:	e3580020 	cmp	r8, #32
60312f40:	13a03000 	movne	r3, #0
60312f44:	e3530000 	cmp	r3, #0
60312f48:	0afffec7 	beq	60312a6c <DiagVprintf+0x2b4>
60312f4c:	e0478000 	sub	r8, r7, r0
60312f50:	e3580000 	cmp	r8, #0
60312f54:	da000039 	ble	60313040 <DiagVprintf+0x888>
60312f58:	e30a5b44 	movw	r5, #43844	; 0xab44
60312f5c:	e3465030 	movt	r5, #24624	; 0x6030
60312f60:	e3a00020 	mov	r0, #32
60312f64:	e12fff35 	blx	r5
60312f68:	e2588001 	subs	r8, r8, #1
60312f6c:	1afffffb 	bne	60312f60 <DiagVprintf+0x7a8>
60312f70:	eafffef8 	b	60312b58 <DiagVprintf+0x3a0>
60312f74:	e59d2014 	ldr	r2, [sp, #20]
60312f78:	e58d2004 	str	r2, [sp, #4]
60312f7c:	e1a03008 	mov	r3, r8
60312f80:	e3a02002 	mov	r2, #2
60312f84:	e58db008 	str	fp, [sp, #8]
60312f88:	e58d7000 	str	r7, [sp]
60312f8c:	ebfffd90 	bl	603125d4 <print_unsigned_num>
60312f90:	eafffeb5 	b	60312a6c <DiagVprintf+0x2b4>
60312f94:	e2700000 	rsbs	r0, r0, #0
60312f98:	e2e11000 	rsc	r1, r1, #0
60312f9c:	e3a02001 	mov	r2, #1
60312fa0:	eafffed2 	b	60312af0 <DiagVprintf+0x338>
60312fa4:	e30a5b44 	movw	r5, #43844	; 0xab44
60312fa8:	e3465030 	movt	r5, #24624	; 0x6030
60312fac:	e247b001 	sub	fp, r7, #1
60312fb0:	e1a00008 	mov	r0, r8
60312fb4:	e12fff35 	blx	r5
60312fb8:	e25bb001 	subs	fp, fp, #1
60312fbc:	1afffffb 	bne	60312fb0 <DiagVprintf+0x7f8>
60312fc0:	e59d0018 	ldr	r0, [sp, #24]
60312fc4:	e0866007 	add	r6, r6, r7
60312fc8:	e12fff35 	blx	r5
60312fcc:	eafffea7 	b	60312a70 <DiagVprintf+0x2b8>
60312fd0:	e1a09003 	mov	r9, r3
60312fd4:	e1a03004 	mov	r3, r4
60312fd8:	e30a5b44 	movw	r5, #43844	; 0xab44
60312fdc:	e3465030 	movt	r5, #24624	; 0x6030
60312fe0:	e1a04008 	mov	r4, r8
60312fe4:	e1a08003 	mov	r8, r3
60312fe8:	e58d2024 	str	r2, [sp, #36]	; 0x24
60312fec:	e1a00004 	mov	r0, r4
60312ff0:	e12fff35 	blx	r5
60312ff4:	e2599001 	subs	r9, r9, #1
60312ff8:	1afffffb 	bne	60312fec <DiagVprintf+0x834>
60312ffc:	e1a03008 	mov	r3, r8
60313000:	e1a08004 	mov	r8, r4
60313004:	e1a04003 	mov	r4, r3
60313008:	e59d3020 	ldr	r3, [sp, #32]
6031300c:	e59d2024 	ldr	r2, [sp, #36]	; 0x24
60313010:	e0866003 	add	r6, r6, r3
60313014:	eaffffb7 	b	60312ef8 <DiagVprintf+0x740>
60313018:	e30a5b44 	movw	r5, #43844	; 0xab44
6031301c:	e3465030 	movt	r5, #24624	; 0x6030
60313020:	e1a0b007 	mov	fp, r7
60313024:	e1a00008 	mov	r0, r8
60313028:	e12fff35 	blx	r5
6031302c:	e25bb001 	subs	fp, fp, #1
60313030:	1afffffb 	bne	60313024 <DiagVprintf+0x86c>
60313034:	e59d9018 	ldr	r9, [sp, #24]
60313038:	e0866007 	add	r6, r6, r7
6031303c:	eafffe8b 	b	60312a70 <DiagVprintf+0x2b8>
60313040:	e1a07000 	mov	r7, r0
60313044:	eafffec3 	b	60312b58 <DiagVprintf+0x3a0>
60313048:	e1a06000 	mov	r6, r0
6031304c:	eafffe73 	b	60312a20 <DiagVprintf+0x268>
60313050:	e58d001c 	str	r0, [sp, #28]
60313054:	eaffff63 	b	60312de8 <DiagVprintf+0x630>
60313058:	e2466001 	sub	r6, r6, #1
6031305c:	eaffff79 	b	60312e48 <DiagVprintf+0x690>
60313060:	e2466001 	sub	r6, r6, #1
60313064:	eaffff73 	b	60312e38 <DiagVprintf+0x680>

60313068 <DiagVprintfNano>:
60313068:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
6031306c:	e1a04000 	mov	r4, r0
60313070:	e5d00000 	ldrb	r0, [r0]
60313074:	e24dd02c 	sub	sp, sp, #44	; 0x2c
60313078:	e3500000 	cmp	r0, #0
6031307c:	0a00017d 	beq	60313678 <DiagVprintfNano+0x610>
60313080:	e30a6b44 	movw	r6, #43844	; 0xab44
60313084:	e3466030 	movt	r6, #24624	; 0x6030
60313088:	e30c3ccd 	movw	r3, #52429	; 0xcccd
6031308c:	e34c3ccc 	movt	r3, #52428	; 0xcccc
60313090:	e1a08001 	mov	r8, r1
60313094:	e3a07000 	mov	r7, #0
60313098:	e58d3004 	str	r3, [sp, #4]
6031309c:	ea000004 	b	603130b4 <DiagVprintfNano+0x4c>
603130a0:	e2877001 	add	r7, r7, #1
603130a4:	e12fff36 	blx	r6
603130a8:	e5d40000 	ldrb	r0, [r4]
603130ac:	e3500000 	cmp	r0, #0
603130b0:	0a000069 	beq	6031325c <DiagVprintfNano+0x1f4>
603130b4:	e2844001 	add	r4, r4, #1
603130b8:	e3500025 	cmp	r0, #37	; 0x25
603130bc:	1afffff7 	bne	603130a0 <DiagVprintfNano+0x38>
603130c0:	e5d42000 	ldrb	r2, [r4]
603130c4:	e3a05000 	mov	r5, #0
603130c8:	e1a03005 	mov	r3, r5
603130cc:	e3a0000a 	mov	r0, #10
603130d0:	e3520000 	cmp	r2, #0
603130d4:	0a000075 	beq	603132b0 <DiagVprintfNano+0x248>
603130d8:	e2421020 	sub	r1, r2, #32
603130dc:	e6efc071 	uxtb	ip, r1
603130e0:	e35c0058 	cmp	ip, #88	; 0x58
603130e4:	8a00005b 	bhi	60313258 <DiagVprintfNano+0x1f0>
603130e8:	e3510058 	cmp	r1, #88	; 0x58
603130ec:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
603130f0:	ea000058 	b	60313258 <DiagVprintfNano+0x1f0>
603130f4:	60313268 	.word	0x60313268
603130f8:	60313258 	.word	0x60313258
603130fc:	60313258 	.word	0x60313258
60313100:	60313258 	.word	0x60313258
60313104:	60313258 	.word	0x60313258
60313108:	603134ac 	.word	0x603134ac
6031310c:	60313258 	.word	0x60313258
60313110:	60313258 	.word	0x60313258
60313114:	60313258 	.word	0x60313258
60313118:	60313258 	.word	0x60313258
6031311c:	60313258 	.word	0x60313258
60313120:	60313258 	.word	0x60313258
60313124:	60313258 	.word	0x60313258
60313128:	60313258 	.word	0x60313258
6031312c:	60313258 	.word	0x60313258
60313130:	60313258 	.word	0x60313258
60313134:	60313268 	.word	0x60313268
60313138:	603132b8 	.word	0x603132b8
6031313c:	603132b8 	.word	0x603132b8
60313140:	603132b8 	.word	0x603132b8
60313144:	603132b8 	.word	0x603132b8
60313148:	603132b8 	.word	0x603132b8
6031314c:	603132b8 	.word	0x603132b8
60313150:	603132b8 	.word	0x603132b8
60313154:	603132b8 	.word	0x603132b8
60313158:	603132b8 	.word	0x603132b8
6031315c:	60313258 	.word	0x60313258
60313160:	60313258 	.word	0x60313258
60313164:	60313258 	.word	0x60313258
60313168:	60313258 	.word	0x60313258
6031316c:	60313258 	.word	0x60313258
60313170:	60313258 	.word	0x60313258
60313174:	60313258 	.word	0x60313258
60313178:	60313258 	.word	0x60313258
6031317c:	60313258 	.word	0x60313258
60313180:	603133d0 	.word	0x603133d0
60313184:	60313258 	.word	0x60313258
60313188:	60313258 	.word	0x60313258
6031318c:	60313258 	.word	0x60313258
60313190:	60313258 	.word	0x60313258
60313194:	60313258 	.word	0x60313258
60313198:	60313258 	.word	0x60313258
6031319c:	60313258 	.word	0x60313258
603131a0:	60313258 	.word	0x60313258
603131a4:	60313258 	.word	0x60313258
603131a8:	60313258 	.word	0x60313258
603131ac:	60313258 	.word	0x60313258
603131b0:	60313258 	.word	0x60313258
603131b4:	60313258 	.word	0x60313258
603131b8:	60313258 	.word	0x60313258
603131bc:	60313258 	.word	0x60313258
603131c0:	60313258 	.word	0x60313258
603131c4:	60313258 	.word	0x60313258
603131c8:	60313258 	.word	0x60313258
603131cc:	60313258 	.word	0x60313258
603131d0:	60313258 	.word	0x60313258
603131d4:	60313258 	.word	0x60313258
603131d8:	60313258 	.word	0x60313258
603131dc:	60313258 	.word	0x60313258
603131e0:	60313258 	.word	0x60313258
603131e4:	60313258 	.word	0x60313258
603131e8:	60313258 	.word	0x60313258
603131ec:	60313258 	.word	0x60313258
603131f0:	60313258 	.word	0x60313258
603131f4:	60313258 	.word	0x60313258
603131f8:	60313258 	.word	0x60313258
603131fc:	60313258 	.word	0x60313258
60313200:	603133d0 	.word	0x603133d0
60313204:	603132c0 	.word	0x603132c0
60313208:	60313258 	.word	0x60313258
6031320c:	60313258 	.word	0x60313258
60313210:	60313258 	.word	0x60313258
60313214:	60313258 	.word	0x60313258
60313218:	603132c0 	.word	0x603132c0
6031321c:	60313258 	.word	0x60313258
60313220:	60313258 	.word	0x60313258
60313224:	60313258 	.word	0x60313258
60313228:	60313258 	.word	0x60313258
6031322c:	60313258 	.word	0x60313258
60313230:	60313258 	.word	0x60313258
60313234:	60313258 	.word	0x60313258
60313238:	60313258 	.word	0x60313258
6031323c:	60313258 	.word	0x60313258
60313240:	6031357c 	.word	0x6031357c
60313244:	60313258 	.word	0x60313258
60313248:	603134c0 	.word	0x603134c0
6031324c:	60313258 	.word	0x60313258
60313250:	60313258 	.word	0x60313258
60313254:	603133f4 	.word	0x603133f4
60313258:	e3e07000 	mvn	r7, #0
6031325c:	e1a00007 	mov	r0, r7
60313260:	e28dd02c 	add	sp, sp, #44	; 0x2c
60313264:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
60313268:	e2844001 	add	r4, r4, #1
6031326c:	e1a03002 	mov	r3, r2
60313270:	e5d42000 	ldrb	r2, [r4]
60313274:	e3520000 	cmp	r2, #0
60313278:	0afffff7 	beq	6031325c <DiagVprintfNano+0x1f4>
6031327c:	e3a05000 	mov	r5, #0
60313280:	ea000003 	b	60313294 <DiagVprintfNano+0x22c>
60313284:	e5f42001 	ldrb	r2, [r4, #1]!
60313288:	e2415030 	sub	r5, r1, #48	; 0x30
6031328c:	e3520000 	cmp	r2, #0
60313290:	0afffff1 	beq	6031325c <DiagVprintfNano+0x1f4>
60313294:	e0212590 	mla	r1, r0, r5, r2
60313298:	e2422030 	sub	r2, r2, #48	; 0x30
6031329c:	e3520009 	cmp	r2, #9
603132a0:	9afffff7 	bls	60313284 <DiagVprintfNano+0x21c>
603132a4:	e5d42000 	ldrb	r2, [r4]
603132a8:	e3520000 	cmp	r2, #0
603132ac:	1affff89 	bne	603130d8 <DiagVprintfNano+0x70>
603132b0:	e2844001 	add	r4, r4, #1
603132b4:	eaffff7b 	b	603130a8 <DiagVprintfNano+0x40>
603132b8:	e3a03020 	mov	r3, #32
603132bc:	eaffffee 	b	6031327c <DiagVprintfNano+0x214>
603132c0:	e1a01008 	mov	r1, r8
603132c4:	e28da01c 	add	sl, sp, #28
603132c8:	e59dc004 	ldr	ip, [sp, #4]
603132cc:	e4912004 	ldr	r2, [r1], #4
603132d0:	e58d100c 	str	r1, [sp, #12]
603132d4:	e3520000 	cmp	r2, #0
603132d8:	b3a01001 	movlt	r1, #1
603132dc:	a3a01000 	movge	r1, #0
603132e0:	b2622000 	rsblt	r2, r2, #0
603132e4:	e58d1008 	str	r1, [sp, #8]
603132e8:	e3a0b000 	mov	fp, #0
603132ec:	e1a0100a 	mov	r1, sl
603132f0:	e3a0000a 	mov	r0, #10
603132f4:	e08e829c 	umull	r8, lr, ip, r2
603132f8:	e3520009 	cmp	r2, #9
603132fc:	e1a0800b 	mov	r8, fp
60313300:	e1a0e1ae 	lsr	lr, lr, #3
60313304:	e28bb001 	add	fp, fp, #1
60313308:	e0692e90 	mls	r9, r0, lr, r2
6031330c:	e1a0200e 	mov	r2, lr
60313310:	e2899030 	add	r9, r9, #48	; 0x30
60313314:	e6ef9079 	uxtb	r9, r9
60313318:	e4c19001 	strb	r9, [r1], #1
6031331c:	8afffff4 	bhi	603132f4 <DiagVprintfNano+0x28c>
60313320:	e59d2008 	ldr	r2, [sp, #8]
60313324:	e3520000 	cmp	r2, #0
60313328:	1a0000ae 	bne	603135e8 <DiagVprintfNano+0x580>
6031332c:	e3550000 	cmp	r5, #0
60313330:	da000018 	ble	60313398 <DiagVprintfNano+0x330>
60313334:	e155000b 	cmp	r5, fp
60313338:	da000016 	ble	60313398 <DiagVprintfNano+0x330>
6031333c:	e58d4014 	str	r4, [sp, #20]
60313340:	e1a04003 	mov	r4, r3
60313344:	e58d5010 	str	r5, [sp, #16]
60313348:	e2455001 	sub	r5, r5, #1
6031334c:	e1a00004 	mov	r0, r4
60313350:	e12fff36 	blx	r6
60313354:	e15b0005 	cmp	fp, r5
60313358:	1afffffa 	bne	60313348 <DiagVprintfNano+0x2e0>
6031335c:	e59d1008 	ldr	r1, [sp, #8]
60313360:	e59d5010 	ldr	r5, [sp, #16]
60313364:	e1e0200b 	mvn	r2, fp
60313368:	e0822005 	add	r2, r2, r5
6031336c:	e3510000 	cmp	r1, #0
60313370:	e2811001 	add	r1, r1, #1
60313374:	e1a03004 	mov	r3, r4
60313378:	e0822001 	add	r2, r2, r1
6031337c:	e59d4014 	ldr	r4, [sp, #20]
60313380:	e58d2008 	str	r2, [sp, #8]
60313384:	0a000003 	beq	60313398 <DiagVprintfNano+0x330>
60313388:	e31300df 	tst	r3, #223	; 0xdf
6031338c:	1a000001 	bne	60313398 <DiagVprintfNano+0x330>
60313390:	e3a0002d 	mov	r0, #45	; 0x2d
60313394:	e12fff36 	blx	r6
60313398:	e08a5008 	add	r5, sl, r8
6031339c:	e1a00009 	mov	r0, r9
603133a0:	ea000000 	b	603133a8 <DiagVprintfNano+0x340>
603133a4:	e5750001 	ldrb	r0, [r5, #-1]!
603133a8:	e12fff36 	blx	r6
603133ac:	e15a0005 	cmp	sl, r5
603133b0:	1afffffb 	bne	603133a4 <DiagVprintfNano+0x33c>
603133b4:	e59d3008 	ldr	r3, [sp, #8]
603133b8:	e2877001 	add	r7, r7, #1
603133bc:	e0877008 	add	r7, r7, r8
603133c0:	e0837007 	add	r7, r3, r7
603133c4:	e59d800c 	ldr	r8, [sp, #12]
603133c8:	e2844001 	add	r4, r4, #1
603133cc:	eaffff35 	b	603130a8 <DiagVprintfNano+0x40>
603133d0:	e4989004 	ldr	r9, [r8], #4
603133d4:	e3550001 	cmp	r5, #1
603133d8:	e6ef9079 	uxtb	r9, r9
603133dc:	ca000091 	bgt	60313628 <DiagVprintfNano+0x5c0>
603133e0:	e1a00009 	mov	r0, r9
603133e4:	e2877001 	add	r7, r7, #1
603133e8:	e2844001 	add	r4, r4, #1
603133ec:	e12fff36 	blx	r6
603133f0:	eaffff2c 	b	603130a8 <DiagVprintfNano+0x40>
603133f4:	e1a02008 	mov	r2, r8
603133f8:	e28da01c 	add	sl, sp, #28
603133fc:	e1a0000a 	mov	r0, sl
60313400:	e4921004 	ldr	r1, [r2], #4
60313404:	e3a09000 	mov	r9, #0
60313408:	e58d2008 	str	r2, [sp, #8]
6031340c:	ea000000 	b	60313414 <DiagVprintfNano+0x3ac>
60313410:	e1a09008 	mov	r9, r8
60313414:	e201200f 	and	r2, r1, #15
60313418:	e3520009 	cmp	r2, #9
6031341c:	e282b057 	add	fp, r2, #87	; 0x57
60313420:	9282b030 	addls	fp, r2, #48	; 0x30
60313424:	e1a02221 	lsr	r2, r1, #4
60313428:	e351000f 	cmp	r1, #15
6031342c:	e2898001 	add	r8, r9, #1
60313430:	e1a01002 	mov	r1, r2
60313434:	e4c0b001 	strb	fp, [r0], #1
60313438:	8afffff4 	bhi	60313410 <DiagVprintfNano+0x3a8>
6031343c:	e3550000 	cmp	r5, #0
60313440:	da000074 	ble	60313618 <DiagVprintfNano+0x5b0>
60313444:	e1550008 	cmp	r5, r8
60313448:	da000072 	ble	60313618 <DiagVprintfNano+0x5b0>
6031344c:	e58d4010 	str	r4, [sp, #16]
60313450:	e1a04003 	mov	r4, r3
60313454:	e58d500c 	str	r5, [sp, #12]
60313458:	e2455001 	sub	r5, r5, #1
6031345c:	e1a00004 	mov	r0, r4
60313460:	e12fff36 	blx	r6
60313464:	e1580005 	cmp	r8, r5
60313468:	1afffffa 	bne	60313458 <DiagVprintfNano+0x3f0>
6031346c:	e59d500c 	ldr	r5, [sp, #12]
60313470:	e59d4010 	ldr	r4, [sp, #16]
60313474:	e0458008 	sub	r8, r5, r8
60313478:	e08a5009 	add	r5, sl, r9
6031347c:	e1a0000b 	mov	r0, fp
60313480:	ea000000 	b	60313488 <DiagVprintfNano+0x420>
60313484:	e5750001 	ldrb	r0, [r5, #-1]!
60313488:	e12fff36 	blx	r6
6031348c:	e155000a 	cmp	r5, sl
60313490:	1afffffb 	bne	60313484 <DiagVprintfNano+0x41c>
60313494:	e2877001 	add	r7, r7, #1
60313498:	e0877009 	add	r7, r7, r9
6031349c:	e0887007 	add	r7, r8, r7
603134a0:	e2844001 	add	r4, r4, #1
603134a4:	e59d8008 	ldr	r8, [sp, #8]
603134a8:	eafffefe 	b	603130a8 <DiagVprintfNano+0x40>
603134ac:	e3a00025 	mov	r0, #37	; 0x25
603134b0:	e2877001 	add	r7, r7, #1
603134b4:	e2844001 	add	r4, r4, #1
603134b8:	e12fff36 	blx	r6
603134bc:	eafffef9 	b	603130a8 <DiagVprintfNano+0x40>
603134c0:	e1a02008 	mov	r2, r8
603134c4:	e28da01c 	add	sl, sp, #28
603134c8:	e1a0000a 	mov	r0, sl
603134cc:	e4921004 	ldr	r1, [r2], #4
603134d0:	e58d2008 	str	r2, [sp, #8]
603134d4:	e59d2004 	ldr	r2, [sp, #4]
603134d8:	e3a08000 	mov	r8, #0
603134dc:	e3a0c00a 	mov	ip, #10
603134e0:	e08e9192 	umull	r9, lr, r2, r1
603134e4:	e3510009 	cmp	r1, #9
603134e8:	e1a0b008 	mov	fp, r8
603134ec:	e1a0e1ae 	lsr	lr, lr, #3
603134f0:	e2888001 	add	r8, r8, #1
603134f4:	e0691e9c 	mls	r9, ip, lr, r1
603134f8:	e1a0100e 	mov	r1, lr
603134fc:	e2899030 	add	r9, r9, #48	; 0x30
60313500:	e6ef9079 	uxtb	r9, r9
60313504:	e4c09001 	strb	r9, [r0], #1
60313508:	8afffff4 	bhi	603134e0 <DiagVprintfNano+0x478>
6031350c:	e3550000 	cmp	r5, #0
60313510:	da000042 	ble	60313620 <DiagVprintfNano+0x5b8>
60313514:	e1550008 	cmp	r5, r8
60313518:	da000040 	ble	60313620 <DiagVprintfNano+0x5b8>
6031351c:	e58d4010 	str	r4, [sp, #16]
60313520:	e1a04003 	mov	r4, r3
60313524:	e58d500c 	str	r5, [sp, #12]
60313528:	e2455001 	sub	r5, r5, #1
6031352c:	e1a00004 	mov	r0, r4
60313530:	e12fff36 	blx	r6
60313534:	e1580005 	cmp	r8, r5
60313538:	1afffffa 	bne	60313528 <DiagVprintfNano+0x4c0>
6031353c:	e59d500c 	ldr	r5, [sp, #12]
60313540:	e59d4010 	ldr	r4, [sp, #16]
60313544:	e0458008 	sub	r8, r5, r8
60313548:	e08a500b 	add	r5, sl, fp
6031354c:	e1a00009 	mov	r0, r9
60313550:	ea000000 	b	60313558 <DiagVprintfNano+0x4f0>
60313554:	e5750001 	ldrb	r0, [r5, #-1]!
60313558:	e12fff36 	blx	r6
6031355c:	e15a0005 	cmp	sl, r5
60313560:	1afffffb 	bne	60313554 <DiagVprintfNano+0x4ec>
60313564:	e2877001 	add	r7, r7, #1
60313568:	e087700b 	add	r7, r7, fp
6031356c:	e0887007 	add	r7, r8, r7
60313570:	e2844001 	add	r4, r4, #1
60313574:	e59d8008 	ldr	r8, [sp, #8]
60313578:	eafffeca 	b	603130a8 <DiagVprintfNano+0x40>
6031357c:	e4989004 	ldr	r9, [r8], #4
60313580:	e5d92000 	ldrb	r2, [r9]
60313584:	e3520000 	cmp	r2, #0
60313588:	0a000006 	beq	603135a8 <DiagVprintfNano+0x540>
6031358c:	e1a02009 	mov	r2, r9
60313590:	e269a001 	rsb	sl, r9, #1
60313594:	e08a0002 	add	r0, sl, r2
60313598:	e5f21001 	ldrb	r1, [r2, #1]!
6031359c:	e3510000 	cmp	r1, #0
603135a0:	1afffffb 	bne	60313594 <DiagVprintfNano+0x52c>
603135a4:	e0455000 	sub	r5, r5, r0
603135a8:	e3550000 	cmp	r5, #0
603135ac:	ca000026 	bgt	6031364c <DiagVprintfNano+0x5e4>
603135b0:	e3590000 	cmp	r9, #0
603135b4:	0a000031 	beq	60313680 <DiagVprintfNano+0x618>
603135b8:	e5d90000 	ldrb	r0, [r9]
603135bc:	e3500000 	cmp	r0, #0
603135c0:	0affff3a 	beq	603132b0 <DiagVprintfNano+0x248>
603135c4:	e269a001 	rsb	sl, r9, #1
603135c8:	e12fff36 	blx	r6
603135cc:	e089300a 	add	r3, r9, sl
603135d0:	e5f90001 	ldrb	r0, [r9, #1]!
603135d4:	e3500000 	cmp	r0, #0
603135d8:	1afffffa 	bne	603135c8 <DiagVprintfNano+0x560>
603135dc:	e0877003 	add	r7, r7, r3
603135e0:	e2844001 	add	r4, r4, #1
603135e4:	eafffeaf 	b	603130a8 <DiagVprintfNano+0x40>
603135e8:	e2455001 	sub	r5, r5, #1
603135ec:	e3530030 	cmp	r3, #48	; 0x30
603135f0:	1a00001d 	bne	6031366c <DiagVprintfNano+0x604>
603135f4:	e3a0002d 	mov	r0, #45	; 0x2d
603135f8:	e58d3010 	str	r3, [sp, #16]
603135fc:	e12fff36 	blx	r6
60313600:	e59d3010 	ldr	r3, [sp, #16]
60313604:	e3550000 	cmp	r5, #0
60313608:	daffff62 	ble	60313398 <DiagVprintfNano+0x330>
6031360c:	e15b0005 	cmp	fp, r5
60313610:	baffff49 	blt	6031333c <DiagVprintfNano+0x2d4>
60313614:	eaffff5b 	b	60313388 <DiagVprintfNano+0x320>
60313618:	e3a08000 	mov	r8, #0
6031361c:	eaffff95 	b	60313478 <DiagVprintfNano+0x410>
60313620:	e3a08000 	mov	r8, #0
60313624:	eaffffc7 	b	60313548 <DiagVprintfNano+0x4e0>
60313628:	e245a001 	sub	sl, r5, #1
6031362c:	e1a0b003 	mov	fp, r3
60313630:	e1a0000b 	mov	r0, fp
60313634:	e12fff36 	blx	r6
60313638:	e25aa001 	subs	sl, sl, #1
6031363c:	1afffffb 	bne	60313630 <DiagVprintfNano+0x5c8>
60313640:	e2477001 	sub	r7, r7, #1
60313644:	e0857007 	add	r7, r5, r7
60313648:	eaffff64 	b	603133e0 <DiagVprintfNano+0x378>
6031364c:	e1a0a005 	mov	sl, r5
60313650:	e1a0b003 	mov	fp, r3
60313654:	e1a0000b 	mov	r0, fp
60313658:	e12fff36 	blx	r6
6031365c:	e25aa001 	subs	sl, sl, #1
60313660:	1afffffb 	bne	60313654 <DiagVprintfNano+0x5ec>
60313664:	e0877005 	add	r7, r7, r5
60313668:	eaffffd0 	b	603135b0 <DiagVprintfNano+0x548>
6031366c:	e3550000 	cmp	r5, #0
60313670:	caffffe5 	bgt	6031360c <DiagVprintfNano+0x5a4>
60313674:	eaffff43 	b	60313388 <DiagVprintfNano+0x320>
60313678:	e1a07000 	mov	r7, r0
6031367c:	eafffef6 	b	6031325c <DiagVprintfNano+0x1f4>
60313680:	e2477001 	sub	r7, r7, #1
60313684:	eaffff09 	b	603132b0 <DiagVprintfNano+0x248>

60313688 <DiagPrintf>:
60313688:	e92d000f 	push	{r0, r1, r2, r3}
6031368c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
60313690:	e24dd00c 	sub	sp, sp, #12
60313694:	e28d1014 	add	r1, sp, #20
60313698:	e59d0010 	ldr	r0, [sp, #16]
6031369c:	e58d1004 	str	r1, [sp, #4]
603136a0:	ebfffc44 	bl	603127b8 <DiagVprintf>
603136a4:	e28dd00c 	add	sp, sp, #12
603136a8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
603136ac:	e28dd010 	add	sp, sp, #16
603136b0:	e12fff1e 	bx	lr

603136b4 <DiagPrintfNano>:
603136b4:	e92d000f 	push	{r0, r1, r2, r3}
603136b8:	e92d4030 	push	{r4, r5, lr}
603136bc:	e24dd00c 	sub	sp, sp, #12
603136c0:	e10f5000 	mrs	r5, CPSR
603136c4:	f10c0080 	cpsid	i
603136c8:	f57ff04f 	dsb	sy
603136cc:	f57ff06f 	isb	sy
603136d0:	e3a03001 	mov	r3, #1
603136d4:	e3084740 	movw	r4, #34624	; 0x8740
603136d8:	e3464032 	movt	r4, #24626	; 0x6032
603136dc:	e1942f9f 	ldrex	r2, [r4]
603136e0:	e3520000 	cmp	r2, #0
603136e4:	1320f002 	wfene
603136e8:	01842f93 	strexeq	r2, r3, [r4]
603136ec:	03520000 	cmpeq	r2, #0
603136f0:	1afffff9 	bne	603136dc <DiagPrintfNano+0x28>
603136f4:	f57ff05f 	dmb	sy
603136f8:	e28d101c 	add	r1, sp, #28
603136fc:	e59d0018 	ldr	r0, [sp, #24]
60313700:	e58d1004 	str	r1, [sp, #4]
60313704:	ebfffe57 	bl	60313068 <DiagVprintfNano>
60313708:	e3a03000 	mov	r3, #0
6031370c:	f57ff05f 	dmb	sy
60313710:	e5843000 	str	r3, [r4]
60313714:	f57ff04f 	dsb	sy
60313718:	e320f004 	sev
6031371c:	e121f005 	msr	CPSR_c, r5
60313720:	e28dd00c 	add	sp, sp, #12
60313724:	e8bd4030 	pop	{r4, r5, lr}
60313728:	e28dd010 	add	sp, sp, #16
6031372c:	e12fff1e 	bx	lr

60313730 <io_assert_failed>:
60313730:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
60313734:	e1a0c000 	mov	ip, r0
60313738:	e24dd00c 	sub	sp, sp, #12
6031373c:	e1a00001 	mov	r0, r1
60313740:	e3053994 	movw	r3, #22932	; 0x5994
60313744:	e3463031 	movt	r3, #24625	; 0x6031
60313748:	e304113c 	movw	r1, #16700	; 0x413c
6031374c:	e3461031 	movt	r1, #24625	; 0x6031
60313750:	e58d0004 	str	r0, [sp, #4]
60313754:	e3a02045 	mov	r2, #69	; 0x45
60313758:	e3a00002 	mov	r0, #2
6031375c:	e58dc000 	str	ip, [sp]
60313760:	ebffd9be 	bl	60309e60 <rtk_log_write_nano>
60313764:	eafffffe 	b	60313764 <io_assert_failed+0x34>

60313768 <__wrap_strncpy>:
60313768:	eaffb74d 	b	603014a4 <strncpy>

6031376c <SYSTIMER_TickGet>:
6031376c:	e3a00a0b 	mov	r0, #45056	; 0xb000
60313770:	e3440200 	movt	r0, #16896	; 0x4200
60313774:	e3033854 	movw	r3, #14420	; 0x3854
60313778:	e3463031 	movt	r3, #24625	; 0x6031
6031377c:	e12fff13 	bx	r3

60313780 <SYSTIMER_GetPassTick>:
60313780:	e92d4010 	push	{r4, lr}
60313784:	e3033854 	movw	r3, #14420	; 0x3854
60313788:	e3463031 	movt	r3, #24625	; 0x6031
6031378c:	e1a04000 	mov	r4, r0
60313790:	e3a00a0b 	mov	r0, #45056	; 0xb000
60313794:	e3440200 	movt	r0, #16896	; 0x4200
60313798:	e12fff33 	blx	r3
6031379c:	e1500004 	cmp	r0, r4
603137a0:	30444000 	subcc	r4, r4, r0
603137a4:	20400004 	subcs	r0, r0, r4
603137a8:	31e00004 	mvncc	r0, r4
603137ac:	e8bd8010 	pop	{r4, pc}

603137b0 <SYSCFG_CHIPType_Get>:
603137b0:	e3a03902 	mov	r3, #32768	; 0x8000
603137b4:	e3443200 	movt	r3, #16896	; 0x4200
603137b8:	e593027c 	ldr	r0, [r3, #636]	; 0x27c
603137bc:	e7e10450 	ubfx	r0, r0, #8, #2
603137c0:	e12fff1e 	bx	lr

603137c4 <SYSCFG_OTP_RSIPEn>:
603137c4:	e3a03442 	mov	r3, #1107296256	; 0x42000000
603137c8:	e5932100 	ldr	r2, [r3, #256]	; 0x100
603137cc:	e5930368 	ldr	r0, [r3, #872]	; 0x368
603137d0:	e3120302 	tst	r2, #134217728	; 0x8000000
603137d4:	02200004 	eoreq	r0, r0, #4
603137d8:	07e00150 	ubfxeq	r0, r0, #2, #1
603137dc:	13a00001 	movne	r0, #1
603137e0:	e12fff1e 	bx	lr

603137e4 <BKUP_Set>:
603137e4:	e3500003 	cmp	r0, #3
603137e8:	8a000006 	bhi	60313808 <BKUP_Set+0x24>
603137ec:	e1a00100 	lsl	r0, r0, #2
603137f0:	e2800442 	add	r0, r0, #1107296256	; 0x42000000
603137f4:	e2800902 	add	r0, r0, #32768	; 0x8000
603137f8:	e59030e0 	ldr	r3, [r0, #224]	; 0xe0
603137fc:	e1831001 	orr	r1, r3, r1
60313800:	e58010e0 	str	r1, [r0, #224]	; 0xe0
60313804:	e12fff1e 	bx	lr
60313808:	e30509c8 	movw	r0, #22984	; 0x59c8
6031380c:	e3460031 	movt	r0, #24625	; 0x6031
60313810:	e3a0103e 	mov	r1, #62	; 0x3e
60313814:	e92d4010 	push	{r4, lr}
60313818:	ebffffc4 	bl	60313730 <io_assert_failed>

6031381c <BKUP_Clear>:
6031381c:	e3500003 	cmp	r0, #3
60313820:	8a000006 	bhi	60313840 <BKUP_Clear+0x24>
60313824:	e1a00100 	lsl	r0, r0, #2
60313828:	e2800442 	add	r0, r0, #1107296256	; 0x42000000
6031382c:	e2800902 	add	r0, r0, #32768	; 0x8000
60313830:	e59030e0 	ldr	r3, [r0, #224]	; 0xe0
60313834:	e1c31001 	bic	r1, r3, r1
60313838:	e58010e0 	str	r1, [r0, #224]	; 0xe0
6031383c:	e12fff1e 	bx	lr
60313840:	e30509c8 	movw	r0, #22984	; 0x59c8
60313844:	e3460031 	movt	r0, #24625	; 0x6031
60313848:	e3a0104e 	mov	r1, #78	; 0x4e
6031384c:	e92d4010 	push	{r4, lr}
60313850:	ebffffb6 	bl	60313730 <io_assert_failed>

60313854 <RTIM_GetCount>:
60313854:	e3a01a0b 	mov	r1, #45056	; 0xb000
60313858:	e3441200 	movt	r1, #16896	; 0x4200
6031385c:	e3a02cb2 	mov	r2, #45568	; 0xb200
60313860:	e3442200 	movt	r2, #16896	; 0x4200
60313864:	e1a03000 	mov	r3, r0
60313868:	e1500001 	cmp	r0, r1
6031386c:	11500002 	cmpne	r0, r2
60313870:	0a00005f 	beq	603139f4 <RTIM_GetCount+0x1a0>
60313874:	e3a01b2d 	mov	r1, #46080	; 0xb400
60313878:	e3441200 	movt	r1, #16896	; 0x4200
6031387c:	e3a02cb6 	mov	r2, #46592	; 0xb600
60313880:	e3442200 	movt	r2, #16896	; 0x4200
60313884:	e1500001 	cmp	r0, r1
60313888:	11500002 	cmpne	r0, r2
6031388c:	0a000058 	beq	603139f4 <RTIM_GetCount+0x1a0>
60313890:	e3a01b2e 	mov	r1, #47104	; 0xb800
60313894:	e3441200 	movt	r1, #16896	; 0x4200
60313898:	e3a02cba 	mov	r2, #47616	; 0xba00
6031389c:	e3442200 	movt	r2, #16896	; 0x4200
603138a0:	e1500001 	cmp	r0, r1
603138a4:	11500002 	cmpne	r0, r2
603138a8:	0a000051 	beq	603139f4 <RTIM_GetCount+0x1a0>
603138ac:	e3a01b2f 	mov	r1, #48128	; 0xbc00
603138b0:	e3441200 	movt	r1, #16896	; 0x4200
603138b4:	e3a02cbe 	mov	r2, #48640	; 0xbe00
603138b8:	e3442200 	movt	r2, #16896	; 0x4200
603138bc:	e1500001 	cmp	r0, r1
603138c0:	11500002 	cmpne	r0, r2
603138c4:	0a00004a 	beq	603139f4 <RTIM_GetCount+0x1a0>
603138c8:	e3a01a0a 	mov	r1, #40960	; 0xa000
603138cc:	e3441100 	movt	r1, #16640	; 0x4100
603138d0:	e3a02ca2 	mov	r2, #41472	; 0xa200
603138d4:	e3442100 	movt	r2, #16640	; 0x4100
603138d8:	e1500001 	cmp	r0, r1
603138dc:	11500002 	cmpne	r0, r2
603138e0:	0a000043 	beq	603139f4 <RTIM_GetCount+0x1a0>
603138e4:	e3a01b29 	mov	r1, #41984	; 0xa400
603138e8:	e3441100 	movt	r1, #16640	; 0x4100
603138ec:	e3a02ca6 	mov	r2, #42496	; 0xa600
603138f0:	e3442100 	movt	r2, #16640	; 0x4100
603138f4:	e1500001 	cmp	r0, r1
603138f8:	11500002 	cmpne	r0, r2
603138fc:	0a00003c 	beq	603139f4 <RTIM_GetCount+0x1a0>
60313900:	e3a01b2a 	mov	r1, #43008	; 0xa800
60313904:	e3441100 	movt	r1, #16640	; 0x4100
60313908:	e3a02caa 	mov	r2, #43520	; 0xaa00
6031390c:	e3442100 	movt	r2, #16640	; 0x4100
60313910:	e1500001 	cmp	r0, r1
60313914:	11500002 	cmpne	r0, r2
60313918:	0a000035 	beq	603139f4 <RTIM_GetCount+0x1a0>
6031391c:	e3a01a0b 	mov	r1, #45056	; 0xb000
60313920:	e3451200 	movt	r1, #20992	; 0x5200
60313924:	e3a02cb2 	mov	r2, #45568	; 0xb200
60313928:	e3452200 	movt	r2, #20992	; 0x5200
6031392c:	e1500001 	cmp	r0, r1
60313930:	11500002 	cmpne	r0, r2
60313934:	0a00002e 	beq	603139f4 <RTIM_GetCount+0x1a0>
60313938:	e3a01b2d 	mov	r1, #46080	; 0xb400
6031393c:	e3451200 	movt	r1, #20992	; 0x5200
60313940:	e3a02cb6 	mov	r2, #46592	; 0xb600
60313944:	e3452200 	movt	r2, #20992	; 0x5200
60313948:	e1500001 	cmp	r0, r1
6031394c:	11500002 	cmpne	r0, r2
60313950:	0a000027 	beq	603139f4 <RTIM_GetCount+0x1a0>
60313954:	e3a01b2e 	mov	r1, #47104	; 0xb800
60313958:	e3451200 	movt	r1, #20992	; 0x5200
6031395c:	e3a02cba 	mov	r2, #47616	; 0xba00
60313960:	e3452200 	movt	r2, #20992	; 0x5200
60313964:	e1500001 	cmp	r0, r1
60313968:	11500002 	cmpne	r0, r2
6031396c:	0a000020 	beq	603139f4 <RTIM_GetCount+0x1a0>
60313970:	e3a01b2f 	mov	r1, #48128	; 0xbc00
60313974:	e3451200 	movt	r1, #20992	; 0x5200
60313978:	e3a02cbe 	mov	r2, #48640	; 0xbe00
6031397c:	e3452200 	movt	r2, #20992	; 0x5200
60313980:	e1500001 	cmp	r0, r1
60313984:	11500002 	cmpne	r0, r2
60313988:	0a000019 	beq	603139f4 <RTIM_GetCount+0x1a0>
6031398c:	e3a01a0a 	mov	r1, #40960	; 0xa000
60313990:	e3451100 	movt	r1, #20736	; 0x5100
60313994:	e3a02ca2 	mov	r2, #41472	; 0xa200
60313998:	e3452100 	movt	r2, #20736	; 0x5100
6031399c:	e1500001 	cmp	r0, r1
603139a0:	11500002 	cmpne	r0, r2
603139a4:	0a000012 	beq	603139f4 <RTIM_GetCount+0x1a0>
603139a8:	e3a01b29 	mov	r1, #41984	; 0xa400
603139ac:	e3451100 	movt	r1, #20736	; 0x5100
603139b0:	e3a02ca6 	mov	r2, #42496	; 0xa600
603139b4:	e3452100 	movt	r2, #20736	; 0x5100
603139b8:	e1500001 	cmp	r0, r1
603139bc:	11500002 	cmpne	r0, r2
603139c0:	0a00000b 	beq	603139f4 <RTIM_GetCount+0x1a0>
603139c4:	e3a01b2a 	mov	r1, #43008	; 0xa800
603139c8:	e3451100 	movt	r1, #20736	; 0x5100
603139cc:	e3a02caa 	mov	r2, #43520	; 0xaa00
603139d0:	e3452100 	movt	r2, #20736	; 0x5100
603139d4:	e1500001 	cmp	r0, r1
603139d8:	11500002 	cmpne	r0, r2
603139dc:	0a000004 	beq	603139f4 <RTIM_GetCount+0x1a0>
603139e0:	e3050a5c 	movw	r0, #23132	; 0x5a5c
603139e4:	e3460031 	movt	r0, #24625	; 0x6031
603139e8:	e3a010f1 	mov	r1, #241	; 0xf1
603139ec:	e92d4010 	push	{r4, lr}
603139f0:	ebffff4e 	bl	60313730 <io_assert_failed>
603139f4:	e5932014 	ldr	r2, [r3, #20]
603139f8:	e5930014 	ldr	r0, [r3, #20]
603139fc:	e1520000 	cmp	r2, r0
60313a00:	15930014 	ldrne	r0, [r3, #20]
60313a04:	e12fff1e 	bx	lr

60313a08 <SOCPS_PG_Enter>:
60313a08:	e3a00022 	mov	r0, #34	; 0x22
60313a0c:	e3400101 	movt	r0, #257	; 0x101
60313a10:	e92d4010 	push	{r4, lr}
60313a14:	e3001430 	movw	r1, #1072	; 0x430
60313a18:	e3461030 	movt	r1, #24624	; 0x6030
60313a1c:	e30b6084 	movw	r6, #45188	; 0xb084
60313a20:	e3466030 	movt	r6, #24624	; 0x6030
60313a24:	e3055aec 	movw	r5, #23276	; 0x5aec
60313a28:	e3465031 	movt	r5, #24625	; 0x6031
60313a2c:	e3054b10 	movw	r4, #23312	; 0x5b10
60313a30:	e3464031 	movt	r4, #24625	; 0x6031
60313a34:	ebffdc62 	bl	6030abc4 <psci_cpu_suspend>
60313a38:	e3a00ffa 	mov	r0, #1000	; 0x3e8
60313a3c:	e12fff36 	blx	r6
60313a40:	e1a03005 	mov	r3, r5
60313a44:	e3a02045 	mov	r2, #69	; 0x45
60313a48:	e1a01004 	mov	r1, r4
60313a4c:	e3a00002 	mov	r0, #2
60313a50:	ebffd8ce 	bl	60309d90 <rtk_log_write>
60313a54:	eafffff7 	b	60313a38 <SOCPS_PG_Enter+0x30>

60313a58 <cpu_suspend_save>:
60313a58:	e1a03000 	mov	r3, r0
60313a5c:	e30807f4 	movw	r0, #34804	; 0x87f4
60313a60:	e3460032 	movt	r0, #24626	; 0x6032
60313a64:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
60313a68:	e4803004 	str	r3, [r0], #4
60313a6c:	ebffb247 	bl	60300390 <cpu_do_suspend>
60313a70:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
60313a74:	e3130004 	tst	r3, #4
60313a78:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
60313a7c:	ee306f30 	mrc	15, 1, r6, cr0, cr0, {1}
60313a80:	e3a04000 	mov	r4, #0
60313a84:	e1a05004 	mov	r5, r4
60313a88:	e1a03536 	lsr	r3, r6, r5
60313a8c:	e2033007 	and	r3, r3, #7
60313a90:	e2433002 	sub	r3, r3, #2
60313a94:	e3530002 	cmp	r3, #2
60313a98:	8a00001f 	bhi	60313b1c <cpu_suspend_save+0xc4>
60313a9c:	ee404f10 	mcr	15, 2, r4, cr0, cr0, {0}
60313aa0:	ee307f10 	mrc	15, 1, r7, cr0, cr0, {0}
60313aa4:	e7e9c1d7 	ubfx	ip, r7, #3, #10
60313aa8:	e28ce001 	add	lr, ip, #1
60313aac:	e35c0000 	cmp	ip, #0
60313ab0:	0a00001e 	beq	60313b30 <cpu_suspend_save+0xd8>
60313ab4:	e1a0200e 	mov	r2, lr
60313ab8:	e3a03000 	mov	r3, #0
60313abc:	e2831001 	add	r1, r3, #1
60313ac0:	e1a020a2 	lsr	r2, r2, #1
60313ac4:	e1a00003 	mov	r0, r3
60313ac8:	e3520001 	cmp	r2, #1
60313acc:	e6ef3071 	uxtb	r3, r1
60313ad0:	1afffff9 	bne	60313abc <cpu_suspend_save+0x64>
60313ad4:	e31e0001 	tst	lr, #1
60313ad8:	12803002 	addne	r3, r0, #2
60313adc:	16ef3073 	uxtbne	r3, r3
60313ae0:	e3530020 	cmp	r3, #32
60313ae4:	9263e020 	rsbls	lr, r3, #32
60313ae8:	8a00000b 	bhi	60313b1c <cpu_suspend_save+0xc4>
60313aec:	e2070007 	and	r0, r7, #7
60313af0:	e2800004 	add	r0, r0, #4
60313af4:	e7ee76d7 	ubfx	r7, r7, #13, #15
60313af8:	e1841e1c 	orr	r1, r4, ip, lsl lr
60313afc:	e1a03007 	mov	r3, r7
60313b00:	e1812013 	orr	r2, r1, r3, lsl r0
60313b04:	ee072f5e 	mcr	15, 0, r2, cr7, cr14, {2}
60313b08:	e2533001 	subs	r3, r3, #1
60313b0c:	2afffffb 	bcs	60313b00 <cpu_suspend_save+0xa8>
60313b10:	e25cc001 	subs	ip, ip, #1
60313b14:	2afffff7 	bcs	60313af8 <cpu_suspend_save+0xa0>
60313b18:	f57ff05f 	dmb	sy
60313b1c:	e2855003 	add	r5, r5, #3
60313b20:	e2844002 	add	r4, r4, #2
60313b24:	e3550015 	cmp	r5, #21
60313b28:	1affffd6 	bne	60313a88 <cpu_suspend_save+0x30>
60313b2c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
60313b30:	e3a0e020 	mov	lr, #32
60313b34:	eaffffec 	b	60313aec <cpu_suspend_save+0x94>

60313b38 <SOCPS_Save_GIC>:
60313b38:	e3a03a02 	mov	r3, #8192	; 0x2000
60313b3c:	e34a3010 	movt	r3, #40976	; 0xa010
60313b40:	e5932004 	ldr	r2, [r3, #4]
60313b44:	f57ff05f 	dmb	sy
60313b48:	e308c870 	movw	ip, #34928	; 0x8870
60313b4c:	e346c032 	movt	ip, #24626	; 0x6032
60313b50:	e3a03a01 	mov	r3, #4096	; 0x1000
60313b54:	e34a3010 	movt	r3, #40976	; 0xa010
60313b58:	e58c2140 	str	r2, [ip, #320]	; 0x140
60313b5c:	e5932100 	ldr	r2, [r3, #256]	; 0x100
60313b60:	f57ff05f 	dmb	sy
60313b64:	e58c2000 	str	r2, [ip]
60313b68:	e5932104 	ldr	r2, [r3, #260]	; 0x104
60313b6c:	f57ff05f 	dmb	sy
60313b70:	e58c2004 	str	r2, [ip, #4]
60313b74:	e5932108 	ldr	r2, [r3, #264]	; 0x108
60313b78:	f57ff05f 	dmb	sy
60313b7c:	e58c2008 	str	r2, [ip, #8]
60313b80:	e593210c 	ldr	r2, [r3, #268]	; 0x10c
60313b84:	f57ff05f 	dmb	sy
60313b88:	e58c200c 	str	r2, [ip, #12]
60313b8c:	e5932300 	ldr	r2, [r3, #768]	; 0x300
60313b90:	f57ff05f 	dmb	sy
60313b94:	e58c2010 	str	r2, [ip, #16]
60313b98:	e5932304 	ldr	r2, [r3, #772]	; 0x304
60313b9c:	f57ff05f 	dmb	sy
60313ba0:	e58c2014 	str	r2, [ip, #20]
60313ba4:	e5932308 	ldr	r2, [r3, #776]	; 0x308
60313ba8:	f57ff05f 	dmb	sy
60313bac:	e58c2018 	str	r2, [ip, #24]
60313bb0:	e593230c 	ldr	r2, [r3, #780]	; 0x30c
60313bb4:	f57ff05f 	dmb	sy
60313bb8:	e3011be0 	movw	r1, #7136	; 0x1be0
60313bbc:	e34a1010 	movt	r1, #40976	; 0xa010
60313bc0:	e28c3020 	add	r3, ip, #32
60313bc4:	e28c0040 	add	r0, ip, #64	; 0x40
60313bc8:	e041100c 	sub	r1, r1, ip
60313bcc:	e58c201c 	str	r2, [ip, #28]
60313bd0:	e7912003 	ldr	r2, [r1, r3]
60313bd4:	f57ff05f 	dmb	sy
60313bd8:	e4832004 	str	r2, [r3], #4
60313bdc:	e1530000 	cmp	r3, r0
60313be0:	1afffffa 	bne	60313bd0 <SOCPS_Save_GIC+0x98>
60313be4:	e59f304c 	ldr	r3, [pc, #76]	; 60313c38 <SOCPS_Save_GIC+0x100>
60313be8:	e30117c4 	movw	r1, #6084	; 0x17c4
60313bec:	e34a1010 	movt	r1, #40976	; 0xa010
60313bf0:	e2830080 	add	r0, r3, #128	; 0x80
60313bf4:	e041100c 	sub	r1, r1, ip
60313bf8:	e7912003 	ldr	r2, [r1, r3]
60313bfc:	f57ff05f 	dmb	sy
60313c00:	e5a32004 	str	r2, [r3, #4]!
60313c04:	e1530000 	cmp	r3, r0
60313c08:	1afffffa 	bne	60313bf8 <SOCPS_Save_GIC+0xc0>
60313c0c:	e59f3028 	ldr	r3, [pc, #40]	; 60313c3c <SOCPS_Save_GIC+0x104>
60313c10:	e3011344 	movw	r1, #4932	; 0x1344
60313c14:	e34a1010 	movt	r1, #40976	; 0xa010
60313c18:	e2830080 	add	r0, r3, #128	; 0x80
60313c1c:	e041100c 	sub	r1, r1, ip
60313c20:	e7912003 	ldr	r2, [r1, r3]
60313c24:	f57ff05f 	dmb	sy
60313c28:	e5a32004 	str	r2, [r3, #4]!
60313c2c:	e1530000 	cmp	r3, r0
60313c30:	1afffffa 	bne	60313c20 <SOCPS_Save_GIC+0xe8>
60313c34:	e12fff1e 	bx	lr
60313c38:	603288ac 	.word	0x603288ac
60313c3c:	6032892c 	.word	0x6032892c

60313c40 <SOCPS_Restore_GIC>:
60313c40:	e3081870 	movw	r1, #34928	; 0x8870
60313c44:	e3461032 	movt	r1, #24626	; 0x6032
60313c48:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
60313c4c:	e5912140 	ldr	r2, [r1, #320]	; 0x140
60313c50:	f57ff05f 	dmb	sy
60313c54:	e3a03a02 	mov	r3, #8192	; 0x2000
60313c58:	e34a3010 	movt	r3, #40976	; 0xa010
60313c5c:	e5832004 	str	r2, [r3, #4]
60313c60:	e5913000 	ldr	r3, [r1]
60313c64:	f57ff05f 	dmb	sy
60313c68:	e3a02a01 	mov	r2, #4096	; 0x1000
60313c6c:	e34a2010 	movt	r2, #40976	; 0xa010
60313c70:	e5823100 	str	r3, [r2, #256]	; 0x100
60313c74:	e5913004 	ldr	r3, [r1, #4]
60313c78:	f57ff05f 	dmb	sy
60313c7c:	e5823104 	str	r3, [r2, #260]	; 0x104
60313c80:	e5913008 	ldr	r3, [r1, #8]
60313c84:	f57ff05f 	dmb	sy
60313c88:	e5823108 	str	r3, [r2, #264]	; 0x108
60313c8c:	e591300c 	ldr	r3, [r1, #12]
60313c90:	f57ff05f 	dmb	sy
60313c94:	e582310c 	str	r3, [r2, #268]	; 0x10c
60313c98:	e5913010 	ldr	r3, [r1, #16]
60313c9c:	f57ff05f 	dmb	sy
60313ca0:	e5823300 	str	r3, [r2, #768]	; 0x300
60313ca4:	e5913014 	ldr	r3, [r1, #20]
60313ca8:	f57ff05f 	dmb	sy
60313cac:	e5823304 	str	r3, [r2, #772]	; 0x304
60313cb0:	e5913018 	ldr	r3, [r1, #24]
60313cb4:	f57ff05f 	dmb	sy
60313cb8:	e5823308 	str	r3, [r2, #776]	; 0x308
60313cbc:	e591c01c 	ldr	ip, [r1, #28]
60313cc0:	f57ff05f 	dmb	sy
60313cc4:	e3010bdc 	movw	r0, #7132	; 0x1bdc
60313cc8:	e34a0010 	movt	r0, #40976	; 0xa010
60313ccc:	e582c30c 	str	ip, [r2, #780]	; 0x30c
60313cd0:	e2813020 	add	r3, r1, #32
60313cd4:	e0400001 	sub	r0, r0, r1
60313cd8:	e281c040 	add	ip, r1, #64	; 0x40
60313cdc:	e4932004 	ldr	r2, [r3], #4
60313ce0:	f57ff05f 	dmb	sy
60313ce4:	e153000c 	cmp	r3, ip
60313ce8:	e7802003 	str	r2, [r0, r3]
60313cec:	1afffffa 	bne	60313cdc <SOCPS_Restore_GIC+0x9c>
60313cf0:	e59f2094 	ldr	r2, [pc, #148]	; 60313d8c <SOCPS_Restore_GIC+0x14c>
60313cf4:	e301c7c4 	movw	ip, #6084	; 0x17c4
60313cf8:	e34ac010 	movt	ip, #40976	; 0xa010
60313cfc:	e282e080 	add	lr, r2, #128	; 0x80
60313d00:	e1a03002 	mov	r3, r2
60313d04:	e5b20004 	ldr	r0, [r2, #4]!
60313d08:	f57ff05f 	dmb	sy
60313d0c:	e083300c 	add	r3, r3, ip
60313d10:	e0433001 	sub	r3, r3, r1
60313d14:	e152000e 	cmp	r2, lr
60313d18:	e5830000 	str	r0, [r3]
60313d1c:	1afffff7 	bne	60313d00 <SOCPS_Restore_GIC+0xc0>
60313d20:	e59f2068 	ldr	r2, [pc, #104]	; 60313d90 <SOCPS_Restore_GIC+0x150>
60313d24:	e301c344 	movw	ip, #4932	; 0x1344
60313d28:	e34ac010 	movt	ip, #40976	; 0xa010
60313d2c:	e282e080 	add	lr, r2, #128	; 0x80
60313d30:	e1a03002 	mov	r3, r2
60313d34:	e5b20004 	ldr	r0, [r2, #4]!
60313d38:	f57ff05f 	dmb	sy
60313d3c:	e083300c 	add	r3, r3, ip
60313d40:	e0433001 	sub	r3, r3, r1
60313d44:	e152000e 	cmp	r2, lr
60313d48:	e5830000 	str	r0, [r3]
60313d4c:	1afffff7 	bne	60313d30 <SOCPS_Restore_GIC+0xf0>
60313d50:	e3a02a02 	mov	r2, #8192	; 0x2000
60313d54:	e34a2010 	movt	r2, #40976	; 0xa010
60313d58:	e5923000 	ldr	r3, [r2]
60313d5c:	f57ff05f 	dmb	sy
60313d60:	e3c33e1e 	bic	r3, r3, #480	; 0x1e0
60313d64:	e3c33003 	bic	r3, r3, #3
60313d68:	e3833007 	orr	r3, r3, #7
60313d6c:	f57ff05f 	dmb	sy
60313d70:	e5823000 	str	r3, [r2]
60313d74:	f57ff05f 	dmb	sy
60313d78:	e3a03a01 	mov	r3, #4096	; 0x1000
60313d7c:	e34a3010 	movt	r3, #40976	; 0xa010
60313d80:	e3a02003 	mov	r2, #3
60313d84:	e5832000 	str	r2, [r3]
60313d88:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
60313d8c:	603288ac 	.word	0x603288ac
60313d90:	6032892c 	.word	0x6032892c

60313d94 <SOCPS_SleepPG_LIB>:
60313d94:	e92d4010 	push	{r4, lr}
60313d98:	ebffff66 	bl	60313b38 <SOCPS_Save_GIC>
60313d9c:	e3a00000 	mov	r0, #0
60313da0:	e3031a08 	movw	r1, #14856	; 0x3a08
60313da4:	e3461031 	movt	r1, #24625	; 0x6031
60313da8:	ebffb170 	bl	60300370 <cpu_suspend>
60313dac:	e8bd4010 	pop	{r4, lr}
60313db0:	eaffffa2 	b	60313c40 <SOCPS_Restore_GIC>

60313db4 <SOCPS_SleepCG_LIB>:
60313db4:	e3032960 	movw	r2, #14688	; 0x3960
60313db8:	e3462032 	movt	r2, #24626	; 0x6032
60313dbc:	e92d4010 	push	{r4, lr}
60313dc0:	e3a03001 	mov	r3, #1
60313dc4:	e5823000 	str	r3, [r2]
60313dc8:	f57ff06f 	isb	sy
60313dcc:	e3a01000 	mov	r1, #0
60313dd0:	e3a00020 	mov	r0, #32
60313dd4:	ebffd379 	bl	60308bc0 <ipc_send_message>
60313dd8:	e3a01441 	mov	r1, #1090519040	; 0x41000000
60313ddc:	e30a3ffc 	movw	r3, #45052	; 0xaffc
60313de0:	e3463030 	movt	r3, #24624	; 0x6030
60313de4:	e591200c 	ldr	r2, [r1, #12]
60313de8:	e3a00002 	mov	r0, #2
60313dec:	e3c22001 	bic	r2, r2, #1
60313df0:	e581200c 	str	r2, [r1, #12]
60313df4:	e8bd4010 	pop	{r4, lr}
60313df8:	e12fff13 	bx	r3
60313dfc:	6d6f682f 	.word	0x6d6f682f
60313e00:	75612f65 	.word	0x75612f65
60313e04:	6a5f6f74 	.word	0x6a5f6f74
60313e08:	696b6e65 	.word	0x696b6e65
60313e0c:	775f736e 	.word	0x775f736e
60313e10:	356e616c 	.word	0x356e616c
60313e14:	544f492f 	.word	0x544f492f
60313e18:	5354415f 	.word	0x5354415f
60313e1c:	7065722f 	.word	0x7065722f
60313e20:	522f736f 	.word	0x522f736f
60313e24:	61656c65 	.word	0x61656c65
60313e28:	535f6573 	.word	0x535f6573
60313e2c:	4c5f4b44 	.word	0x4c5f4b44
60313e30:	78756e69 	.word	0x78756e69
60313e34:	6c65522f 	.word	0x6c65522f
60313e38:	65736165 	.word	0x65736165
60313e3c:	6b64535f 	.word	0x6b64535f
60313e40:	756f732f 	.word	0x756f732f
60313e44:	73656372 	.word	0x73656372
60313e48:	7269662f 	.word	0x7269662f
60313e4c:	7261776d 	.word	0x7261776d
60313e50:	6f632f65 	.word	0x6f632f65
60313e54:	6e6f706d 	.word	0x6e6f706d
60313e58:	2f746e65 	.word	0x2f746e65
60313e5c:	662f736f 	.word	0x662f736f
60313e60:	72656572 	.word	0x72656572
60313e64:	2f736f74 	.word	0x2f736f74
60313e68:	65657266 	.word	0x65657266
60313e6c:	736f7472 	.word	0x736f7472
60313e70:	6165685f 	.word	0x6165685f
60313e74:	635f3570 	.word	0x635f3570
60313e78:	69666e6f 	.word	0x69666e6f
60313e7c:	00632e67 	.word	0x00632e67

60313e80 <_global_impure_ptr>:
60313e80:	60316004                                .`1`

60313e84 <_ctype_>:
60313e84:	20202000 20202020 28282020 20282828     .         ((((( 
60313e94:	20202020 20202020 20202020 20202020                     
60313ea4:	10108820 10101010 10101010 10101010      ...............
60313eb4:	04040410 04040404 10040404 10101010     ................
60313ec4:	41411010 41414141 01010101 01010101     ..AAAAAA........
60313ed4:	01010101 01010101 01010101 10101010     ................
60313ee4:	42421010 42424242 02020202 02020202     ..BBBBBB........
60313ef4:	02020202 02020202 02020202 10101010     ................
60313f04:	00000020 00000000 00000000 00000000      ...............
	...

60313f88 <p05.0>:
60313f88:	00000005 00000019 0000007d 00000000     ........}.......

60313f98 <__mprec_tens>:
60313f98:	00000000 3ff00000 00000000 40240000     .......?......$@
60313fa8:	00000000 40590000 00000000 408f4000     ......Y@.....@.@
60313fb8:	00000000 40c38800 00000000 40f86a00     .......@.....j.@
60313fc8:	00000000 412e8480 00000000 416312d0     .......A......cA
60313fd8:	00000000 4197d784 00000000 41cdcd65     .......A....e..A
60313fe8:	20000000 4202a05f e8000000 42374876     ... _..B....vH7B
60313ff8:	a2000000 426d1a94 e5400000 42a2309c     ......mB..@..0.B
60314008:	1e900000 42d6bcc4 26340000 430c6bf5     .......B..4&.k.C
60314018:	37e08000 4341c379 85d8a000 43763457     ...7y.AC....W4vC
60314028:	674ec800 43abc16d 60913d00 43e158e4     ..Ngm..C.=.`.X.C
60314038:	78b58c40 4415af1d d6e2ef50 444b1ae4     @..x...DP.....KD
60314048:	064dd592 4480f0cf c7e14af6 44b52d02     ..M....D.J...-.D
60314058:	79d99db4 44ea7843                       ...yCx.D

60314060 <__mprec_tinytens>:
60314060:	97d889bc 3c9cd2b2 d5a8a733 3949f623     .......<3...#.I9
60314070:	44f4a73d 32a50ffd cf8c979d 255bba08     =..D...2......[%
60314080:	64ac6f43 0ac80628                       Co.d(...

60314088 <__mprec_bigtens>:
60314088:	37e08000 4341c379 b5056e17 4693b8b5     ...7y.AC.n.....F
60314098:	e93ff9f5 4d384f03 f9301d32 5a827748     ..?..O8M2.0.Hw.Z
603140a8:	7f73bf3c 75154fdd                       <.s..O.u

603140b0 <blanks.1>:
603140b0:	20202020 20202020 20202020 20202020                     

603140c0 <zeroes.0>:
603140c0:	30303030 30303030 30303030 30303030     0000000000000000

603140d0 <blanks.1>:
603140d0:	20202020 20202020 20202020 20202020                     

603140e0 <zeroes.0>:
603140e0:	30303030 30303030 30303030 30303030     0000000000000000
603140f0:	2d2d2d2d 2d2d2d2d 2d2d2d2d 2d2d2d2d     ----------------
60314100:	4554202d 43205453 414d4d4f 4d20444e     - TEST COMMAND M
60314110:	2045444f 504c4548 2d782520 2d2d2d2d     ODE HELP %x-----
60314120:	2d2d2d2d 2d2d2d2d 2d2d2d2d 00000a2d     -------------...
60314130:	494e4f4d 00524f54 000a7325 00000023     MONITOR.%s..#...
60314140:	2d2d2d2d 2d2d2d2d 2d2d2d2d 2d2d2d2d     ----------------
60314150:	4554202d 43205453 414d4d4f 4d20444e     - TEST COMMAND M
60314160:	2045444f 20444e45 2d782520 2d2d2d2d     ODE END  %x-----
60314170:	2d2d2d2d 2d2d2d2d 2d2d2d2d 00000a2d     -------------...
60314180:	6f626552 6e69746f 2e2e2067 000d0a2e     Rebooting ......
60314190:	74726175 6e727562 00000000 00000072     uartburn....r...
603141a0:	00000061 65707974 00000000 00006770     a...type....pg..
603141b0:	00006763 00746567 6b636f6c 3a746962     cg..get.lockbit:
603141c0:	20786c25 0000000a 706c7364 636f6c5f     %lx ....dslp_loc
603141d0:	7469626b 786c253a 0000000a 3830255b     kbit:%lx....[%08
603141e0:	25205d78 20783830 0000000a 6e6f7257     x] %08x ....Wron
603141f0:	72612067 656d7567 6e20746e 65626d75     g argument numbe
60314200:	0a0d2172 00000000 50495352 616e6520     r!......RSIP ena
60314210:	64656c62 6143202c 2074276e 64616552     bled, Can't Read
60314220:	616c4620 0a2e6873 00000000 6e6f7257      Flash......Wron
60314230:	6d632067 0a0d2164 00000000 73756665     g cmd!......efus
60314240:	656d2065 616d206d 636f6c6c 69616620     e mem malloc fai
60314250:	000a206c 70616d72 00000000 00000d0a     l ..rmap........
60314260:	53554645 6f4c5f45 61636967 70614d6c     EFUSE_LogicalMap
60314270:	6165525f 61662064 0a206c69 00000000     _Read fail .....
60314280:	46450d0a 5b455355 6c333025 003a5d78     ..EFUSE[%03lx]:.
60314290:	32302520 00000078 70616d77 00000000      %02x...wmap....
603142a0:	61766e49 2064696c 63677261 000a202e     Invalid argc. ..
603142b0:	69727473 6c20676e 74676e65 6c252868     string length(%l
603142c0:	73202975 6c756f68 65622064 64646f20     u) should be odd
603142d0:	00000a20 73706f4f 7277203a 20657469      ...Oops: write 
603142e0:	746e656c 6f6e2068 616d2074 20686374     lenth not match 
603142f0:	75706e69 74732074 676e6972 6e656c20     input string len
60314300:	202c6774 6f6f6863 73206573 6c6c616d     tg, choose small
60314310:	6f207265 000a656e 73756665 6d772065     er one..efuse wm
60314320:	77207061 65746972 6e656c20 756c253a     ap write len:%lu
60314330:	7473202c 676e6972 6e656c20 756c253a     , string len:%lu
60314340:	0000000a 77617272 00000000 5f50544f     ....rraw....OTP_
60314350:	64616552 61662038 0a206c69 00000000     Read8 fail .....
60314360:	61520d0a 70614d77 3330255b 3a5d786c     ..RawMap[%03lx]:
60314370:	00000000 77617277 00000000 43544547     ....wraw....GETC
60314380:	00004352 73756665 72772065 77207761     RC..efuse wraw w
60314390:	65746972 6e656c20 756c253a 7473202c     rite len:%lu, st
603143a0:	676e6972 6e656c20 756c253a 0000000a     ring len:%lu....
603143b0:	77617277 6c25203a 78252078 00000a20     wraw: %lx %x ...
603143c0:	5f50544f 74697257 66203865 206c6961     OTP_Write8 fail 
603143d0:	0000000a 2077656e 20637263 756c6176     ....new crc valu
603143e0:	73692065 25783020 0000786c 0000003f     e is 0x%lx..?...
603143f0:	4c454809 7e282050 0a20293f 50200909     .HELP (~?) ... P
60314400:	746e6972 69687420 65682073 6d20706c     rint this help m
60314410:	61737365 00000a67 00005744 20574409     essag...DW...DW 
60314420:	6464413c 73736572 654c202c 6874676e     <Address, Length
60314430:	09090a3e 6d754420 656d2070 79726f6d     >... Dump memory
60314440:	726f7720 726f2064 61655220 77482064      word or Read Hw
60314450:	726f7720 65722064 74736967 203b7265      word register; 
60314460:	2009090a 3c205744 72646461 0909203e     ... DW <addr> ..
60314470:	6d754420 6e6f2070 6f20796c 7720656e      Dump only one w
60314480:	2064726f 74207461 73206568 20656d61     ord at the same 
60314490:	656d6974 6e75202c 203a7469 74794234     time, unit: 4Byt
603144a0:	090a7365 57442009 64613c20 203e7264     es... DW <addr> 
603144b0:	6e656c3c 4420093e 20706d75 20656874     <len>. Dump the 
603144c0:	63657073 65696669 656c2064 6874676e     specified length
603144d0:	20666f20 20656874 64726f77 6e75202c      of the word, un
603144e0:	203a7469 74794234 090a7365 57442009     it: 4Bytes... DW
603144f0:	64613c20 203e7264 6e656c3c 2062203e      <addr> <len> b 
60314500:	6d754420 68742070 70732065 66696365      Dump the specif
60314510:	20646569 676e656c 6f206874 68742066     ied length of th
60314520:	79622065 202c6574 74696e75 4231203a     e byte, unit: 1B
60314530:	0a657479 00000000 00005745 20574509     yte.....EW...EW 
60314540:	6464413c 73736572 6548202c 090a3e78     <Address, Hex>..
60314550:	72572009 20657469 6f6d656d 64207972     . Write memory d
60314560:	64726f77 20726f20 74697257 77482065     word or Write Hw
60314570:	6f776420 72206472 73696765 20726574      dword register 
60314580:	2009090a 206e6143 74697277 6e6f2065     ... Can write on
60314590:	6f20796c 6420656e 64726f77 20746120     ly one dword at 
603145a0:	20656874 656d6173 6d697420 090a2065     the same time ..
603145b0:	78452009 5745203a 64644120 73736572     . Ex: EW Address
603145c0:	6c615620 0a206575 00000000 4f424552      Value .....REBO
603145d0:	0000544f 42455209 20544f4f 2009090a     OT...REBOOT ... 
603145e0:	6574693c 73202c6d 6e697274 3a203e67     <item, string> :
603145f0:	09090a20 65746920 75203a6d 62747261      ... item: uartb
60314600:	206e7275 4e20726f 0a20412f 0a200909     urn or N/A ... .
60314610:	00000000 53554645 00000045 55464509     ....EFUSE....EFU
60314620:	0a204553 77200909 2070616d 72646461     SE ... wmap addr
60314630:	78656828 656c2029 6568286e 64202978     (hex) len(hex) d
60314640:	28617461 29786568 2009090a 70616d72     ata(hex)... rmap
60314650:	09090a20 6d773c20 30207061 20303078      ... <wmap 0x00 
60314660:	20327830 35393138 6665203e 5b657375     0x2 8195> efuse[
60314670:	303d5d30 2c313878 75666520 5b206573     0]=0x81, efuse [
60314680:	303d5d31 0a353978 3c200909 70616d77     1]=0x95... <wmap
60314690:	46783020 78302030 31312034 33333232      0xF0 0x4 112233
603146a0:	203e3434 4678305b 303d5d30 2c313178     44> [0xF0]=0x11,
603146b0:	78305b20 3d5d3146 32327830 305b202c      [0xF1]=0x22, [0
603146c0:	5d324678 3378303d 5b202c33 33467830     xF2]=0x33, [0xF3
603146d0:	78303d5d 000a3434 4b434954 00005350     ]=0x44..TICKPS..
603146e0:	43495409 2053504b 2009090a 72203a72     .TICKPS ... r: r
603146f0:	61656c65 6f206573 61772073 6f6c656b     elease os wakelo
60314700:	0a206b63 61200909 6361203a 72697571     ck ... a: acquir
60314710:	736f2065 6b617720 636f6c65 000a206b     e os wakelock ..
60314720:	6e750a0d 776f6e6b 6f63206e 6e616d6d     ..unknown comman
60314730:	25272064 00002773 230a0a0d 00000a0d     d '%s'.....#....
60314740:	6c656873 61745f6c 00006b73 61657243     shell_task..Crea
60314750:	4c206574 5520676f 20545241 6b736154     te Log UART Task
60314760:	72724520 000a2121 6e616843 206c656e      Err!!..Channel 
60314770:	666e6f43 7463696c 726f6620 61684320     Conflict for Cha
60314780:	6c656e6e 756c2520 0a0d2120 00000000     nnel %lu !......
60314790:	00435049 43504920 71655220 74736575     IPC. IPC Request
603147a0:	6d695420 74756f65 00000a0d 43504920      Timeout.... IPC
603147b0:	74654720 6d655320 6f687061 54206572      Get Semaphore T
603147c0:	6f656d69 0a0d7475 00000000 6d6f682f     imeout....../hom
603147d0:	75612f65 6a5f6f74 696b6e65 775f736e     e/auto_jenkins_w
603147e0:	356e616c 544f492f 5354415f 7065722f     lan5/IOT_ATS/rep
603147f0:	522f736f 61656c65 535f6573 4c5f4b44     os/Release_SDK_L
60314800:	78756e69 6c65522f 65736165 6b64535f     inux/Release_Sdk
60314810:	756f732f 73656372 7269662f 7261776d     /sources/firmwar
60314820:	6f632f65 6e6f706d 2f746e65 2f636f73     e/component/soc/
60314830:	62656d61 616d7361 662f7472 62696c77     amebasmart/fwlib
60314840:	6d61722f 6d6f635f 2f6e6f6d 62656d61     /ram_common/ameb
60314850:	70695f61 70615f63 00632e69              a_ipc_api.c.

6031485c <CSWTCH.40>:
6031485c:	00000008 00000000 00000000 00000000     ................
6031486c:	00000008 00000000 00000000 00000000     ................
6031487c:	00000008                                ....

60314880 <CSWTCH.41>:
60314880:	42008600 42008600 00000000 00000000     ...B...B........
	...
603148c0:	41000500 41000500 00000000 00000000     ...A...A........
	...
60314900:	41000580 41000580 6d6f682f 75612f65     ...A...A/home/au
60314910:	6a5f6f74 696b6e65 775f736e 356e616c     to_jenkins_wlan5
60314920:	544f492f 5354415f 7065722f 522f736f     /IOT_ATS/repos/R
60314930:	61656c65 535f6573 4c5f4b44 78756e69     elease_SDK_Linux
60314940:	6c65522f 65736165 6b64535f 756f732f     /Release_Sdk/sou
60314950:	73656372 7269662f 7261776d 6f632f65     rces/firmware/co
60314960:	6e6f706d 2f746e65 2f636f73 62656d61     mponent/soc/ameb
60314970:	616d7361 662f7472 62696c77 6d61722f     asmart/fwlib/ram
60314980:	6d6f635f 2f6e6f6d 62656d61 70695f61     _common/ameba_ip
60314990:	61725f63 00632e6d 2050544f 64616572     c_ram.c.OTP read
603149a0:	74656720 20776820 616d6573 69616620      get hw sema fai
603149b0:	00000a6c 0050544f 5f50544f 64616552     l...OTP.OTP_Read
603149c0:	61462038 25206c69 000a2078 20524d50     8 Fail %x ..PMR 
603149d0:	64616552 72726520 0a21726f 00000000     Read error!.....
603149e0:	2050544f 74697277 65672065 77682074     OTP write get hw
603149f0:	6d657320 61662061 000a6c69 5f50544f      sema fail..OTP_
60314a00:	74697257 46203865 206c6961 0a207825     Write8 Fail %x .
60314a10:	00000000 2050544f 676f7270 206d6172     ....OTP program 
60314a20:	6f727265 000a2172 32524d50 61655220     error!..PMR2 Rea
60314a30:	72652064 21726f72 0000000a 69676f4c     d error!....Logi
60314a40:	4d6c6163 52207061 20646165 6f727265     calMap Read erro
60314a50:	78252072 2078252b 63786520 20646565     r %x+%x  exceed 
60314a60:	696d696c 00000a74 67696c61 6e656d6e     limit...alignmen
60314a70:	72652074 20726f72 25207825 000a2078     t error %x %x ..
60314a80:	69676f4c 4d6c6163 57207061 65746972     LogicalMap Write
60314a90:	72726520 2520726f 78252b78 78652020      error %x+%x  ex
60314aa0:	64656563 6d696c20 000a7469 69676f4c     ceed limit..Logi
60314ab0:	4d6c6163 52207061 20646165 6f727265     calMap Read erro
60314ac0:	68772072 77206e65 65746972 25204020     r when write @ %
60314ad0:	000a2078 6477656e 5b617461 3d5d7825     x ..newdata[%x]=
60314ae0:	0a782520 00000000 5f50544f 505f4750      %x.....OTP_PG_P
60314af0:	656b6361 6f575f74 73206472 20657a69     acket_Word size 
60314b00:	6f727265 253a2072 656c2078 78253a6e     error :%x len:%x
60314b10:	00000a20 656b614d 72757320 544f2065      ...Make sure OT
60314b20:	6f6c2050 61636967 7261206c 20206165     P logical area  
60314b30:	2078253a 66656420 64656e69 0000000a     :%x  defined....
60314b40:	5f50544f 505f4750 656b6361 255b2074     OTP_PG_Packet [%
60314b50:	25205d78 000a2078 5f50544f 505f4750     x] %x ..OTP_PG_P
60314b60:	656b6361 6f6e2074 6f6e6520 20686775     acket no enough 
60314b70:	63617073 78252065 00000a20 5f50544f     space %x ...OTP_
60314b80:	505f4750 656b6361 79422074 20206574     PG_Packet Byte  
60314b90:	5d78255b 20782520 0000000a 7478656e     [%x] %x ....next
60314ba0:	69727720 63206574 656c6379 73614220      write cycle Bas
60314bb0:	6c252065 6e632078 25207374 0a20786c     e %lx cnts %lx .
60314bc0:	00000000 2d73255b 205d6325 00000000     ....[%s-%c] ....
60314bd0:	3830255b 00205d78 255b0a0d 5d783830     [%08x] ...[%08x]
60314be0:	00000020 78383025 00000020 78323025      ...%08x ...%02x
60314bf0:	00000020 65737341 45207472 726f7272      ...Assert Error
60314c00:	73252021 0d75253a 0000000a 20525349     ! %s:%u.....ISR 
60314c10:	20726f66 65746e69 70757272 64692074     for interrupt id
60314c20:	756c2528 73692029 746f6e20 67657220     (%lu) is not reg
60314c30:	65747369 21646572 0000200a 00003052     istered!. ..R0..
60314c40:	00003452 65726f43 786c255b 7325205d     R4..Core[%lx] %s
60314c50:	30203d20 38302578 000a786c 65726f43      = 0x%08lx..Core
60314c60:	786c255b 7250205d 6f697665 4d207375     [%lx] Previous M
60314c70:	2765646f 50432073 69205253 78302073     ode's CPSR is 0x
60314c80:	6c383025 00000a78 65726f43 786c255b     %08lx...Core[%lx
60314c90:	7250205d 6f697665 4d207375 2765646f     ] Previous Mode'
60314ca0:	524c2073 20736920 30257830 0a786c38     s LR is 0x%08lx.
60314cb0:	00000000 65726f43 786c255b 7543205d     ....Core[%lx] Cu
60314cc0:	6e657272 74532074 206b6361 6e696f50     rrent Stack Poin
60314cd0:	20726574 7830203d 6c383025 61202c78     ter = 0x%08lx, a
60314ce0:	6420646e 20706d75 63617473 6564206b     nd dump stack de
60314cf0:	20687470 6425203d 00000a0d 65726f43     pth = %d....Core
60314d00:	786c255b 255b205d 786c3830 7830205d     [%lx] [%08lx] 0x
60314d10:	6c383025 78302078 6c383025 78302078     %08lx 0x%08lx 0x
60314d20:	6c383025 78302078 6c383025 00000a78     %08lx 0x%08lx...
60314d30:	72646441 20737365 7420666f 75206568     Address of the u
60314d40:	6665646e 64656e69 736e6920 63757274     ndefined instruc
60314d50:	6e6f6974 25783020 0a783830 00000000     tion 0x%08x.....
60314d60:	61746144 6f626120 77207472 20687469     Data abort with 
60314d70:	61746144 75614620 5320746c 75746174     Data Fault Statu
60314d80:	65522073 74736967 20207265 30257830     s Register  0x%0
60314d90:	000a7838 72646441 20737365 4920666f     8x..Address of I
60314da0:	7274736e 69746375 63206e6f 69737561     nstruction causi
60314db0:	4420676e 20617461 726f6261 78302074     ng Data abort 0x
60314dc0:	78383025 0000000a 66657250 68637465     %08x....Prefetch
60314dd0:	6f626120 77207472 20687469 74736e49      abort with Inst
60314de0:	74637572 206e6f69 6c756146 74532074     ruction Fault St
60314df0:	73757461 67655220 65747369 78302072     atus Register 0x
60314e00:	78383025 0000000a 00003552 00003652     %08x....R5..R6..
60314e10:	00003752 00003852 00003952 00303152     R7..R8..R9..R10.
60314e20:	00313152 00003152 00003252 00003352     R11.R1..R2..R3..
60314e30:	00323152 0000524c                       R12.LR..

60314e38 <crash_reg_name>:
60314e38:	60314c40 60314e08 60314e0c 60314e10     @L1`.N1`.N1`.N1`
60314e48:	60314e14 60314e18 60314e1c 60314e20     .N1`.N1`.N1` N1`
60314e58:	60314c3c 60314e24 60314e28 60314e2c     <L1`$N1`(N1`,N1`
60314e68:	60314e30 60314e34                       0N1`4N1`

60314e70 <LOG_UART_IDX_FLAG>:
60314e70:	00000001 00200000 00020000 0000cb9d     ...... .........
60314e80:	00000008 00000000 00100000 00010000     ................
60314e90:	000bee33 00000008 00000003 00800000     3...............
60314ea0:	00080000 002fb8cc 00000008 666e6f43     ....../.....Conf
60314eb0:	7463696c 20676e69 49435350 72657620     licting PSCI ver
60314ec0:	6e6f6973 74656420 65746365 000a2e64     sion detected...
60314ed0:	73757254 20646574 6d20534f 61726769     Trusted OS migra
60314ee0:	6e6f6974 746f6e20 71657220 65726975     tion not require
60314ef0:	00000a64 5247494d 5f455441 4f464e49     d...MIGRATE_INFO
60314f00:	5059545f 6f6e2045 75732074 726f7070     _TYPE not suppor
60314f10:	2e646574 0000000a 5247494d 5f455441     ted.....MIGRATE_
60314f20:	4f464e49 5059545f 65722045 6e727574     INFO_TYPE return
60314f30:	75206465 6f6e6b6e 74206e77 20657079     ed unknown type 
60314f40:	29642528 0000000a 5247494d 5f455441     (%d)....MIGRATE_
60314f50:	4f464e49 5f50555f 20555043 6f706572     INFO_UP_CPU repo
60314f60:	64657472 766e6920 64696c61 79687020     rted invalid phy
60314f70:	61636973 4449206c 78302820 29786c25     sical ID (0x%lx)
60314f80:	0000000a 73757254 20646574 7220534f     ....Trusted OS r
60314f90:	64697365 20746e65 70206e6f 69737968     esident on physi
60314fa0:	206c6163 20555043 6c257830 00000a78     cal CPU 0x%lx...

60314fb0 <CSWTCH.2>:
60314fb0:	ffffffea ffffffea ffffffea ffffffea     ................
60314fc0:	ffffffea ffffffea ffffffff ffffffea     ................
60314fd0:	ffffffa1 00000000 31757063 776f7020     ........cpu1 pow
60314fe0:	6f207265 000a6666 6f636553 7261646e     er off..Secondar
60314ff0:	6f632079 70206572 7265776f 66666f20     y core power off
60315000:	69616620 25203a6c 00000a64 25555043      fail: %d...CPU%
60315010:	6f203a64 00000a6e 3a706d73 69724220     d: on...smp: Bri
60315020:	6e69676e 70752067 63657320 61646e6f     nging up seconda
60315030:	43207972 20735550 0a2e2e2e 00000000     ry CPUs ........
60315040:	25555043 66203a64 656c6961 6f742064     CPU%d: failed to
60315050:	6f6f6220 25203a74 00000a64 47505041      boot: %d...APPG
60315060:	0000000a 57505041 0000000a 47435041     ....APPW....APCG
60315070:	0000000a 57435041 0000000a 65737361     ....APCW....asse
60315080:	65207472 20217272 656c6966 7325203a     rt err! file: %s
60315090:	696c202c 203a656e 000a6425 6d6f682f     , line: %d../hom
603150a0:	75612f65 6a5f6f74 696b6e65 775f736e     e/auto_jenkins_w
603150b0:	356e616c 544f492f 5354415f 7065722f     lan5/IOT_ATS/rep
603150c0:	522f736f 61656c65 535f6573 4c5f4b44     os/Release_SDK_L
603150d0:	78756e69 6c65522f 65736165 6b64535f     inux/Release_Sdk
603150e0:	756f732f 73656372 7269662f 7261776d     /sources/firmwar
603150f0:	6f632f65 6e6f706d 2f746e65 2f636f73     e/component/soc/
60315100:	62656d61 616d7361 662f7472 62696c77     amebasmart/fwlib
60315110:	5f70612f 65726f63 616c782f 61745f74     /ap_core/xlat_ta
60315120:	2f656c62 74616c78 6261745f 5f73656c     ble/xlat_tables_
60315130:	746e6f63 2e747865 00000063 6d6f682f     context.c.../hom
60315140:	75612f65 6a5f6f74 696b6e65 775f736e     e/auto_jenkins_w
60315150:	356e616c 544f492f 5354415f 7065722f     lan5/IOT_ATS/rep
60315160:	522f736f 61656c65 535f6573 4c5f4b44     os/Release_SDK_L
60315170:	78756e69 6c65522f 65736165 6b64535f     inux/Release_Sdk
60315180:	756f732f 73656372 7269662f 7261776d     /sources/firmwar
60315190:	6f632f65 6e6f706d 2f746e65 2f636f73     e/component/soc/
603151a0:	62656d61 616d7361 662f7472 62696c77     amebasmart/fwlib
603151b0:	5f70612f 65726f63 616c782f 61745f74     /ap_core/xlat_ta
603151c0:	2f656c62 74616c78 6261745f 5f73656c     ble/xlat_tables_
603151d0:	65726f63 0000632e 616d6d0a 64615f70     core.c...mmap_ad
603151e0:	65725f64 6e6f6967 6568635f 29286b63     d_region_check()
603151f0:	69616620 2e64656c 72726520 2520726f      failed. error %
60315200:	00000a64 20746f4e 756f6e65 6d206867     d...Not enough m
60315210:	726f6d65 6f742079 70616d20 67657220     emory to map reg
60315220:	3a6e6f69 4156200a 2578303a 2020786c     ion:. VA:0x%lx  
60315230:	303a4150 6c6c2578 73202078 3a657a69     PA:0x%llx  size:
60315240:	7a257830 61202078 3a727474 78257830     0x%zx  attr:0x%x
60315250:	0000000a 6d6f682f 75612f65 6a5f6f74     ..../home/auto_j
60315260:	696b6e65 775f736e 356e616c 544f492f     enkins_wlan5/IOT
60315270:	5354415f 7065722f 522f736f 61656c65     _ATS/repos/Relea
60315280:	535f6573 4c5f4b44 78756e69 6c65522f     se_SDK_Linux/Rel
60315290:	65736165 6b64535f 756f732f 73656372     ease_Sdk/sources
603152a0:	7269662f 7261776d 6f632f65 6e6f706d     /firmware/compon
603152b0:	2f746e65 2f636f73 62656d61 616d7361     ent/soc/amebasma
603152c0:	662f7472 62696c77 5f70612f 65726f63     rt/fwlib/ap_core
603152d0:	616c782f 61745f74 2f656c62 74616c78     /xlat_table/xlat
603152e0:	6261745f 5f73656c 68637261 0000632e     _tables_arch.c..
603152f0:	5d73255b 6d6f6320 656e6f70 695f746e     [%s] component_i
60315300:	6e692064 696c6176 000a0d64              d invalid...

6031530c <__func__.0>:
6031530c:	736f7472 6972635f 61636974 78655f6c     rtos_critical_ex
6031531c:	00007469                                it..

60315320 <__func__.1>:
60315320:	736f7472 6972635f 61636974 6e655f6c     rtos_critical_en
60315330:	00726574 2a2a2a2a 2a2a2a2a 2a2a2a2a     ter.************
60315340:	2a2a2a2a 2a2a2a2a 2a2a2a2a 57202a2a     ************** W
60315350:	494e5241 2a20474e 2a2a2a2a 2a2a2a2a     ARNING *********
60315360:	2a2a2a2a 2a2a2a2a 2a2a2a2a 000a2a2a     **************..
60315370:	4e49414d 00000000 61656c50 72206573     MAIN....Please r
60315380:	20646165 20656874 6361433c 43206568     ead the <Cache C
60315390:	69736e6f 6e657473 57207963 206e6568     onsistency When 
603153a0:	6e697355 4d442067 63203e41 74706168     Using DMA> chapt
603153b0:	69207265 6874206e 70412065 63696c70     er in the Applic
603153c0:	6f697461 6f4e5f6e 702e6574 000a6664     ation_Note.pdf..
603153d0:	65726548 20736920 656d6f73 69726220     Here is some bri
603153e0:	6f206665 68742066 68632065 65747061     ef of the chapte
603153f0:	6e612072 61632064 6562206e 6d657220     r and can be rem
60315400:	6465766f 206e6920 6e69616d 000a632e     oved in main.c..
60315410:	74726f43 412d7865 77203233 206c6c69     Cortex-A32 will 
60315420:	6f747561 6974616d 20796c63 66657270     automaticly pref
60315430:	68637465 74616420 6f742061 632d4420     etch data to D-c
60315440:	65686361 65766520 6874206e 64612065     ache even the ad
60315450:	73657264 73692073 746f6e20 61657220     dress is not rea
60315460:	72772f64 21657469 0000000a 63614344     d/write!....DCac
60315470:	495f6568 6c61766e 74616469 78302865     he_Invalidate(0x
60315480:	46464646 46464646 7830202c 46464646     FFFFFFFF, 0xFFFF
60315490:	46464646 73692029 6d617320 73612065     FFFF) is same as
603154a0:	61434420 5f656863 61656c43 766e496e      DCache_CleanInv
603154b0:	64696c61 28657461 46467830 46464646     alidate(0xFFFFFF
603154c0:	202c4646 46467830 46464646 20294646     FF, 0xFFFFFFFF) 
603154d0:	43206e69 0a323341 00000000 61766e49     in CA32.....Inva
603154e0:	6164696c 62206574 6e612079 64646120     lidate by an add
603154f0:	73736572 20736920 796c6e6f 72657020     ress is only per
60315500:	6d726f66 77206465 206e6568 20656874     formed when the 
60315510:	61746164 20736920 20746f6e 74726964     data is not dirt
60315520:	6f202c79 65687472 73697772 20612065     y, ortherwise a 
60315530:	61656c63 7369206e 72657020 6d726f66     clean is perform
60315540:	0a216465 00000000 65666572 6f742072     ed!.....refer to
60315550:	4d525420 20666f20 32334143 6f626120      TRM of CA32 abo
60315560:	27207475 61746164 65727020 63746566     ut 'data prefetc
60315570:	676e6968 6e612027 49272064 6c61766e     hing' and 'Inval
60315580:	74616469 20676e69 6320726f 6e61656c     idating or clean
60315590:	20676e69 61632061 27656863 00000a2e     ing a cache'....
603155a0:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
603155b0:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
603155c0:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
603155d0:	2a2a2a2a 2a2a2a2a 000a2a2a 74726f43     **********..Cort
603155e0:	412d7865 61745320 53207472 64656863     ex-A Start Sched
603155f0:	72656c75 0000000a 6d6f682f 75612f65     uler..../home/au
60315600:	6a5f6f74 696b6e65 775f736e 356e616c     to_jenkins_wlan5
60315610:	544f492f 5354415f 7065722f 522f736f     /IOT_ATS/repos/R
60315620:	61656c65 535f6573 4c5f4b44 78756e69     elease_SDK_Linux
60315630:	6c65522f 65736165 6b64535f 756f732f     /Release_Sdk/sou
60315640:	73656372 7269662f 7261776d 6f632f65     rces/firmware/co
60315650:	6e6f706d 2f746e65 662f736f 72656572     mponent/os/freer
60315660:	2f736f74 65657266 736f7472 3031765f     tos/freertos_v10
60315670:	312e322e 706d735f 756f532f 2f656372     .2.1_smp/Source/
60315680:	6b736174 00632e73 454c4449 00000000     tasks.c.IDLE....
60315690:	6d6f682f 75612f65 6a5f6f74 696b6e65     /home/auto_jenki
603156a0:	775f736e 356e616c 544f492f 5354415f     ns_wlan5/IOT_ATS
603156b0:	7065722f 522f736f 61656c65 535f6573     /repos/Release_S
603156c0:	4c5f4b44 78756e69 6c65522f 65736165     DK_Linux/Release
603156d0:	6b64535f 756f732f 73656372 7269662f     _Sdk/sources/fir
603156e0:	7261776d 6f632f65 6e6f706d 2f746e65     mware/component/
603156f0:	662f736f 72656572 2f736f74 65657266     os/freertos/free
60315700:	736f7472 3031765f 312e322e 706d735f     rtos_v10.2.1_smp
60315710:	756f532f 2f656372 75657571 00632e65     /Source/queue.c.
60315720:	51726d54 00000000 20726d54 00637653     TmrQ....Tmr Svc.
60315730:	6d6f682f 75612f65 6a5f6f74 696b6e65     /home/auto_jenki
60315740:	775f736e 356e616c 544f492f 5354415f     ns_wlan5/IOT_ATS
60315750:	7065722f 522f736f 61656c65 535f6573     /repos/Release_S
60315760:	4c5f4b44 78756e69 6c65522f 65736165     DK_Linux/Release
60315770:	6b64535f 756f732f 73656372 7269662f     _Sdk/sources/fir
60315780:	7261776d 6f632f65 6e6f706d 2f746e65     mware/component/
60315790:	662f736f 72656572 2f736f74 65657266     os/freertos/free
603157a0:	736f7472 3031765f 312e322e 706d735f     rtos_v10.2.1_smp
603157b0:	756f532f 2f656372 656d6974 632e7372     /Source/timers.c
603157c0:	00000000 6d6f682f 75612f65 6a5f6f74     ..../home/auto_j
603157d0:	696b6e65 775f736e 356e616c 544f492f     enkins_wlan5/IOT
603157e0:	5354415f 7065722f 522f736f 61656c65     _ATS/repos/Relea
603157f0:	535f6573 4c5f4b44 78756e69 6c65522f     se_SDK_Linux/Rel
60315800:	65736165 6b64535f 756f732f 73656372     ease_Sdk/sources
60315810:	7269662f 7261776d 6f632f65 6e6f706d     /firmware/compon
60315820:	2f746e65 662f736f 72656572 2f736f74     ent/os/freertos/
60315830:	65657266 736f7472 3031765f 312e322e     freertos_v10.2.1
60315840:	706d735f 756f532f 2f656372 74726f70     _smp/Source/port
60315850:	656c6261 6d654d2f 676e614d 6165682f     able/MemMang/hea
60315860:	2e355f70 00000063 73546f4e 0000006b     p_5.c...NoTsk...
60315870:	6c6c614d 6620636f 656c6961 43202e64     Malloc failed. C
60315880:	3a65726f 5d73255b 6154202c 5b3a6b73     ore:[%s], Task:[
60315890:	2c5d7325 72665b20 68206565 20706165     %s], [free heap 
603158a0:	657a6973 6425203a 785b205d 746e6157     size: %d] [xWant
603158b0:	69536465 253a657a 0a0d5d64 00000000     edSize:%d]......
603158c0:	32334143 00000000 6d6f682f 75612f65     CA32..../home/au
603158d0:	6a5f6f74 696b6e65 775f736e 356e616c     to_jenkins_wlan5
603158e0:	544f492f 5354415f 7065722f 522f736f     /IOT_ATS/repos/R
603158f0:	61656c65 535f6573 4c5f4b44 78756e69     elease_SDK_Linux
60315900:	6c65522f 65736165 6b64535f 756f732f     /Release_Sdk/sou
60315910:	73656372 7269662f 7261776d 6f632f65     rces/firmware/co
60315920:	6e6f706d 2f746e65 662f736f 72656572     mponent/os/freer
60315930:	2f736f74 65657266 736f7472 3031765f     tos/freertos_v10
60315940:	312e322e 706d735f 756f532f 2f656372     .2.1_smp/Source/
60315950:	74726f70 656c6261 4343472f 4d52412f     portable/GCC/ARM
60315960:	3341435f 6f702f32 632e7472 00000000     _CA32/port.c....
60315970:	54530d0a 204b4341 5245564f 574f4c46     ..STACK OVERFLOW
60315980:	54202d20 4e6b7361 28656d61 0a297325      - TaskName(%s).
60315990:	0000000d 64206f69 65766972 61702072     ....io driver pa
603159a0:	656d6172 73726574 72726520 2021726f     rameters error! 
603159b0:	656c6966 6d616e5f 25203a65 6c202c73     file_name: %s, l
603159c0:	3a656e69 00642520 6d6f682f 75612f65     ine: %d./home/au
603159d0:	6a5f6f74 696b6e65 775f736e 356e616c     to_jenkins_wlan5
603159e0:	544f492f 5354415f 7065722f 522f736f     /IOT_ATS/repos/R
603159f0:	61656c65 535f6573 4c5f4b44 78756e69     elease_SDK_Linux
60315a00:	6c65522f 65736165 6b64535f 756f732f     /Release_Sdk/sou
60315a10:	73656372 7269662f 7261776d 6f632f65     rces/firmware/co
60315a20:	6e6f706d 2f746e65 2f636f73 62656d61     mponent/soc/ameb
60315a30:	616d7361 662f7472 62696c77 6d6f722f     asmart/fwlib/rom
60315a40:	6d6f635f 2f6e6f6d 62656d61 61625f61     _common/ameba_ba
60315a50:	70756b63 6765725f 0000632e 6d6f682f     ckup_reg.c../hom
60315a60:	75612f65 6a5f6f74 696b6e65 775f736e     e/auto_jenkins_w
60315a70:	356e616c 544f492f 5354415f 7065722f     lan5/IOT_ATS/rep
60315a80:	522f736f 61656c65 535f6573 4c5f4b44     os/Release_SDK_L
60315a90:	78756e69 6c65522f 65736165 6b64535f     inux/Release_Sdk
60315aa0:	756f732f 73656372 7269662f 7261776d     /sources/firmwar
60315ab0:	6f632f65 6e6f706d 2f746e65 2f636f73     e/component/soc/
60315ac0:	62656d61 616d7361 662f7472 62696c77     amebasmart/fwlib
60315ad0:	6d6f722f 6d6f635f 2f6e6f6d 62656d61     /rom_common/ameb
60315ae0:	69745f61 6f725f6d 00632e6d 6f727245     a_tim_rom.c.Erro
60315af0:	53202172 6c756f68 656e2064 20726576     r! Should never 
60315b00:	63616572 65682068 0a216572 00000000     reach here!.....
60315b10:	00434d50 7566202c 6974636e 203a6e6f     PMC., function: 
60315b20:	73736100 69747265 22206e6f 20227325     .assertion "%s" 
60315b30:	6c696166 203a6465 656c6966 73252220     failed: file "%s
60315b40:	6c202c22 20656e69 73256425 000a7325     ", line %d%s%s..
60315b50:	69666e49 7974696e 4e614e00 52003000     Infinity.NaN.0.R
60315b60:	544e4545 6c616d20 20636f6c 63637573     EENT malloc succ
60315b70:	65646565 732f0064 742f6473 6779626f     eeded./ssd/tobyg
60315b80:	502f6f61 55535053 524f5050 32332d54     ao/PSPSUPPORT-32
60315b90:	342f3032 2f323730 6c77656e 342d6269     20/4072/newlib-4
60315ba0:	6e2f312e 696c7765 696c2f62 732f6362     .1/newlib/libc/s
60315bb0:	696c6474 74642f62 632e616f 6c614200     tdlib/dtoa.c.Bal
60315bc0:	20636f6c 63637573 65646565 732f0064     loc succeeded./s
60315bd0:	742f6473 6779626f 502f6f61 55535053     sd/tobygao/PSPSU
60315be0:	524f5050 32332d54 342f3032 2f323730     PPORT-3220/4072/
60315bf0:	6c77656e 342d6269 6e2f312e 696c7765     newlib-4.1/newli
60315c00:	696c2f62 732f6362 696c6474 706d2f62     b/libc/stdlib/mp
60315c10:	2e636572 31300063 35343332 39383736     rec.c.0123456789
60315c20:	44434241 30004645 34333231 38373635     ABCDEF.012345678
60315c30:	63626139 00666564 00464e49 00666e69     9abcdef.INF.inf.
60315c40:	004e414e 006e616e 4f500043 00584953     NAN.nan.C.POSIX.
60315c50:	0000002e                                ....

60315c54 <shell_cmd_table>:
60315c54:	603143ec 00000000 6030786c 603143f0     .C1`....lx0`.C1`
60315c64:	60314418 00000004 60307b84 6031441c     .D1`.....{0`.D1`
60315c74:	60314538 00000002 60307adc 6031453c     8E1`.....z0`<E1`
60315c84:	603145cc 00000004 60307924 603145d4     .E1`....$y0`.E1`
60315c94:	60314614 00000008 60307dd4 6031461c     .F1`.....}0`.F1`
60315ca4:	603146d8 00000004 603079a8 603146e0     .F1`.....y0`.F1`

60315cb4 <ipc_shell_table>:
60315cb4:	00000001 60308480 00000000 60308a78     ......0`....x.0`
	...
60315cd0:	00000001 60308480 00000000 60308a78     ......0`....x.0`
60315ce0:	00000000 00000001 00000000              ............

60315cec <ipc_LPWHP_table>:
60315cec:	00000001 6030aff0 00000000 60308a78     ......0`....x.0`
60315cfc:	00000000 00000001 00000001              ............
