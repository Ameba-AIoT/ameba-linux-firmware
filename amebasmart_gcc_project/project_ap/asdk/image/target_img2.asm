
/home/qi_shen/jessica/6.6/sources/firmware/amebasmart_gcc_project/project_ap/asdk/image/target_img2.axf:     file format elf32-littlearm


Disassembly of section .xip_image2.text:

0e000020 <__arm_smccc_smc>:
 e000020:	e1a0c00d 	mov	ip, sp
 e000024:	e92d00f0 	push	{r4, r5, r6, r7}
 e000028:	e89c00f0 	ldm	ip, {r4, r5, r6, r7}
 e00002c:	e1600070 	.word	0xe1600070
 e000030:	e8bd00f0 	pop	{r4, r5, r6, r7}
 e000034:	e59dc010 	ldr	ip, [sp, #16]
 e000038:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 e00003c:	e12fff1e 	bx	lr

0e000040 <FreeRTOS_SWI_Handler>:
 e000040:	f96d051f 	srsdb	sp!, #31
 e000044:	f102001f 	cps	#31
 e000048:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
 e00004c:	e59f2250 	ldr	r2, [pc, #592]	; e0002a4 <ulPortTaskHasFPUContextConst>
 e000050:	e5923000 	ldr	r3, [r2]
 e000054:	e3530000 	cmp	r3, #0
 e000058:	1ef11a10 	vmrsne	r1, fpscr
 e00005c:	1d2d0b20 	vpushne	{d0-d15}
 e000060:	1d6d0b20 	vpushne	{d16-d31}
 e000064:	152d1004 	pushne	{r1}		; (strne r1, [sp, #-4]!)
 e000068:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 e00006c:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
 e000070:	e20000ff 	and	r0, r0, #255	; 0xff
 e000074:	e59f1224 	ldr	r1, [pc, #548]	; e0002a0 <pxCurrentTCBConst>
 e000078:	e7912100 	ldr	r2, [r1, r0, lsl #2]
 e00007c:	e582d000 	str	sp, [r2]
 e000080:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
 e000084:	e20000ff 	and	r0, r0, #255	; 0xff
 e000088:	e59f1218 	ldr	r1, [pc, #536]	; e0002a8 <vTaskSwitchContextConst>
 e00008c:	e12fff31 	blx	r1
 e000090:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
 e000094:	e20000ff 	and	r0, r0, #255	; 0xff
 e000098:	e59f1200 	ldr	r1, [pc, #512]	; e0002a0 <pxCurrentTCBConst>
 e00009c:	e7912100 	ldr	r2, [r1, r0, lsl #2]
 e0000a0:	e592d000 	ldr	sp, [r2]
 e0000a4:	e59f01f8 	ldr	r0, [pc, #504]	; e0002a4 <ulPortTaskHasFPUContextConst>
 e0000a8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 e0000ac:	e5801000 	str	r1, [r0]
 e0000b0:	e3510000 	cmp	r1, #0
 e0000b4:	149d0004 	popne	{r0}		; (ldrne r0, [sp], #4)
 e0000b8:	1cfd0b20 	vpopne	{d16-d31}
 e0000bc:	1cbd0b20 	vpopne	{d0-d15}
 e0000c0:	1ee10a10 	vmsrne	fpscr, r0
 e0000c4:	e8bd5fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
 e0000c8:	f8bd0a00 	rfeia	sp!

0e0000cc <vPortRestoreTaskContext>:
 e0000cc:	f102001f 	cps	#31
 e0000d0:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
 e0000d4:	e20000ff 	and	r0, r0, #255	; 0xff
 e0000d8:	e59f11c8 	ldr	r1, [pc, #456]	; e0002a8 <vTaskSwitchContextConst>
 e0000dc:	e12fff31 	blx	r1
 e0000e0:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
 e0000e4:	e20000ff 	and	r0, r0, #255	; 0xff
 e0000e8:	e59f11b0 	ldr	r1, [pc, #432]	; e0002a0 <pxCurrentTCBConst>
 e0000ec:	e7912100 	ldr	r2, [r1, r0, lsl #2]
 e0000f0:	e592d000 	ldr	sp, [r2]
 e0000f4:	e59f01a8 	ldr	r0, [pc, #424]	; e0002a4 <ulPortTaskHasFPUContextConst>
 e0000f8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 e0000fc:	e5801000 	str	r1, [r0]
 e000100:	e3510000 	cmp	r1, #0
 e000104:	149d0004 	popne	{r0}		; (ldrne r0, [sp], #4)
 e000108:	1cfd0b20 	vpopne	{d16-d31}
 e00010c:	1cbd0b20 	vpopne	{d0-d15}
 e000110:	1ee10a10 	vmsrne	fpscr, r0
 e000114:	e8bd5fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
 e000118:	f8bd0a00 	rfeia	sp!
 e00011c:	e320f000 	nop	{0}

0e000120 <FreeRTOS_IRQ_Handler>:
 e000120:	e24ee004 	sub	lr, lr, #4
 e000124:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e000128:	e14fe000 	mrs	lr, SPSR
 e00012c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e000130:	e92d101f 	push	{r0, r1, r2, r3, r4, ip}
 e000134:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
 e000138:	e20020ff 	and	r2, r0, #255	; 0xff
 e00013c:	e59f3170 	ldr	r3, [pc, #368]	; e0002b4 <vApplicationFPUSafeIRQHandlerConst+0x4>
 e000140:	e7931102 	ldr	r1, [r3, r2, lsl #2]
 e000144:	e2814001 	add	r4, r1, #1
 e000148:	e7834102 	str	r4, [r3, r2, lsl #2]
 e00014c:	f1020013 	cps	#19
 e000150:	e1a0200d 	mov	r2, sp
 e000154:	e2022004 	and	r2, r2, #4
 e000158:	e04dd002 	sub	sp, sp, r2
 e00015c:	e92d401f 	push	{r0, r1, r2, r3, r4, lr}
 e000160:	e59f1144 	ldr	r1, [pc, #324]	; e0002ac <vApplicationIRQHandlerConst>
 e000164:	e12fff31 	blx	r1
 e000168:	e8bd401f 	pop	{r0, r1, r2, r3, r4, lr}
 e00016c:	e08dd002 	add	sp, sp, r2
 e000170:	f1020012 	cps	#18
 e000174:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
 e000178:	e20020ff 	and	r2, r0, #255	; 0xff
 e00017c:	e59f3130 	ldr	r3, [pc, #304]	; e0002b4 <vApplicationFPUSafeIRQHandlerConst+0x4>
 e000180:	e7931102 	ldr	r1, [r3, r2, lsl #2]
 e000184:	e2414001 	sub	r4, r1, #1
 e000188:	e7834102 	str	r4, [r3, r2, lsl #2]
 e00018c:	e3540000 	cmp	r4, #0
 e000190:	1a000005 	bne	e0001ac <exit_without_switch>
 e000194:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
 e000198:	e20020ff 	and	r2, r0, #255	; 0xff
 e00019c:	e59f1114 	ldr	r1, [pc, #276]	; e0002b8 <vApplicationFPUSafeIRQHandlerConst+0x8>
 e0001a0:	e7910102 	ldr	r0, [r1, r2, lsl #2]
 e0001a4:	e3500000 	cmp	r0, #0
 e0001a8:	1a000004 	bne	e0001c0 <switch_before_exit>

0e0001ac <exit_without_switch>:
 e0001ac:	e8bd101f 	pop	{r0, r1, r2, r3, r4, ip}
 e0001b0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 e0001b4:	e16ff00e 	msr	SPSR_fsxc, lr
 e0001b8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 e0001bc:	e1b0f00e 	movs	pc, lr

0e0001c0 <switch_before_exit>:
 e0001c0:	e3a00000 	mov	r0, #0
 e0001c4:	e7810102 	str	r0, [r1, r2, lsl #2]
 e0001c8:	e8bd101f 	pop	{r0, r1, r2, r3, r4, ip}
 e0001cc:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 e0001d0:	e16ff00e 	msr	SPSR_fsxc, lr
 e0001d4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 e0001d8:	f96d051f 	srsdb	sp!, #31
 e0001dc:	f102001f 	cps	#31
 e0001e0:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
 e0001e4:	e59f20b8 	ldr	r2, [pc, #184]	; e0002a4 <ulPortTaskHasFPUContextConst>
 e0001e8:	e5923000 	ldr	r3, [r2]
 e0001ec:	e3530000 	cmp	r3, #0
 e0001f0:	1ef11a10 	vmrsne	r1, fpscr
 e0001f4:	1d2d0b20 	vpushne	{d0-d15}
 e0001f8:	1d6d0b20 	vpushne	{d16-d31}
 e0001fc:	152d1004 	pushne	{r1}		; (strne r1, [sp, #-4]!)
 e000200:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 e000204:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
 e000208:	e20000ff 	and	r0, r0, #255	; 0xff
 e00020c:	e59f108c 	ldr	r1, [pc, #140]	; e0002a0 <pxCurrentTCBConst>
 e000210:	e7912100 	ldr	r2, [r1, r0, lsl #2]
 e000214:	e582d000 	str	sp, [r2]
 e000218:	f1020012 	cps	#18
 e00021c:	e59f1084 	ldr	r1, [pc, #132]	; e0002a8 <vTaskSwitchContextConst>
 e000220:	e12fff31 	blx	r1
 e000224:	f102001f 	cps	#31
 e000228:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
 e00022c:	e20000ff 	and	r0, r0, #255	; 0xff
 e000230:	e59f1068 	ldr	r1, [pc, #104]	; e0002a0 <pxCurrentTCBConst>
 e000234:	e7912100 	ldr	r2, [r1, r0, lsl #2]
 e000238:	e592d000 	ldr	sp, [r2]
 e00023c:	e59f0060 	ldr	r0, [pc, #96]	; e0002a4 <ulPortTaskHasFPUContextConst>
 e000240:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 e000244:	e5801000 	str	r1, [r0]
 e000248:	e3510000 	cmp	r1, #0
 e00024c:	149d0004 	popne	{r0}		; (ldrne r0, [sp], #4)
 e000250:	1cfd0b20 	vpopne	{d16-d31}
 e000254:	1cbd0b20 	vpopne	{d0-d15}
 e000258:	1ee10a10 	vmsrne	fpscr, r0
 e00025c:	e8bd5fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
 e000260:	f8bd0a00 	rfeia	sp!
 e000264:	e320f000 	nop	{0}
 e000268:	e320f000 	nop	{0}
 e00026c:	e320f000 	nop	{0}

0e000270 <vApplicationIRQHandler>:
 e000270:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e000274:	eef11a10 	vmrs	r1, fpscr
 e000278:	ed2d0b20 	vpush	{d0-d15}
 e00027c:	ed6d0b20 	vpush	{d16-d31}
 e000280:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 e000284:	e59f1024 	ldr	r1, [pc, #36]	; e0002b0 <vApplicationFPUSafeIRQHandlerConst>
 e000288:	e12fff31 	blx	r1
 e00028c:	e49d0004 	pop	{r0}		; (ldr r0, [sp], #4)
 e000290:	ecfd0b20 	vpop	{d16-d31}
 e000294:	ecbd0b20 	vpop	{d0-d15}
 e000298:	eee10a10 	vmsr	fpscr, r0
 e00029c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

0e0002a0 <pxCurrentTCBConst>:
 e0002a0:	600a81c4 	.word	0x600a81c4

0e0002a4 <ulPortTaskHasFPUContextConst>:
 e0002a4:	600a3d4c 	.word	0x600a3d4c

0e0002a8 <vTaskSwitchContextConst>:
 e0002a8:	0e01007c 	.word	0x0e01007c

0e0002ac <vApplicationIRQHandlerConst>:
 e0002ac:	0e000270 	.word	0x0e000270

0e0002b0 <vApplicationFPUSafeIRQHandlerConst>:
 e0002b0:	0e0089a8 	.word	0x0e0089a8
 e0002b4:	600a3d44 	.word	0x600a3d44
 e0002b8:	600a3d50 	.word	0x600a3d50

0e0002bc <deregister_tm_clones>:
 e0002bc:	e59f0018 	ldr	r0, [pc, #24]	; e0002dc <deregister_tm_clones+0x20>
 e0002c0:	e59f3018 	ldr	r3, [pc, #24]	; e0002e0 <deregister_tm_clones+0x24>
 e0002c4:	e1530000 	cmp	r3, r0
 e0002c8:	012fff1e 	bxeq	lr
 e0002cc:	e59f3010 	ldr	r3, [pc, #16]	; e0002e4 <deregister_tm_clones+0x28>
 e0002d0:	e3530000 	cmp	r3, #0
 e0002d4:	012fff1e 	bxeq	lr
 e0002d8:	e12fff13 	bx	r3
 e0002dc:	600952b0 	.word	0x600952b0
 e0002e0:	600952b0 	.word	0x600952b0
 e0002e4:	00000000 	.word	0x00000000

0e0002e8 <register_tm_clones>:
 e0002e8:	e59f0024 	ldr	r0, [pc, #36]	; e000314 <register_tm_clones+0x2c>
 e0002ec:	e59f1024 	ldr	r1, [pc, #36]	; e000318 <register_tm_clones+0x30>
 e0002f0:	e0413000 	sub	r3, r1, r0
 e0002f4:	e1a01fa3 	lsr	r1, r3, #31
 e0002f8:	e0811143 	add	r1, r1, r3, asr #2
 e0002fc:	e1b010c1 	asrs	r1, r1, #1
 e000300:	012fff1e 	bxeq	lr
 e000304:	e59f3010 	ldr	r3, [pc, #16]	; e00031c <register_tm_clones+0x34>
 e000308:	e3530000 	cmp	r3, #0
 e00030c:	012fff1e 	bxeq	lr
 e000310:	e12fff13 	bx	r3
 e000314:	600952b0 	.word	0x600952b0
 e000318:	600952b0 	.word	0x600952b0
 e00031c:	00000000 	.word	0x00000000

0e000320 <__do_global_dtors_aux>:
 e000320:	e92d4010 	push	{r4, lr}
 e000324:	e59f402c 	ldr	r4, [pc, #44]	; e000358 <__do_global_dtors_aux+0x38>
 e000328:	e5d43000 	ldrb	r3, [r4]
 e00032c:	e3530000 	cmp	r3, #0
 e000330:	18bd8010 	popne	{r4, pc}
 e000334:	ebffffe0 	bl	e0002bc <deregister_tm_clones>
 e000338:	e59f301c 	ldr	r3, [pc, #28]	; e00035c <__do_global_dtors_aux+0x3c>
 e00033c:	e3530000 	cmp	r3, #0
 e000340:	0a000001 	beq	e00034c <__do_global_dtors_aux+0x2c>
 e000344:	e59f0014 	ldr	r0, [pc, #20]	; e000360 <__do_global_dtors_aux+0x40>
 e000348:	e320f000 	nop	{0}
 e00034c:	e3a03001 	mov	r3, #1
 e000350:	e5c43000 	strb	r3, [r4]
 e000354:	e8bd8010 	pop	{r4, pc}
 e000358:	600a3000 	.word	0x600a3000
 e00035c:	00000000 	.word	0x00000000
 e000360:	0e015598 	.word	0x0e015598

0e000364 <frame_dummy>:
 e000364:	e59f301c 	ldr	r3, [pc, #28]	; e000388 <frame_dummy+0x24>
 e000368:	e3530000 	cmp	r3, #0
 e00036c:	0a000004 	beq	e000384 <frame_dummy+0x20>
 e000370:	e92d4010 	push	{r4, lr}
 e000374:	e59f1010 	ldr	r1, [pc, #16]	; e00038c <frame_dummy+0x28>
 e000378:	e59f0010 	ldr	r0, [pc, #16]	; e000390 <frame_dummy+0x2c>
 e00037c:	e320f000 	nop	{0}
 e000380:	e8bd4010 	pop	{r4, lr}
 e000384:	eaffffd7 	b	e0002e8 <register_tm_clones>
 e000388:	00000000 	.word	0x00000000
 e00038c:	600a3004 	.word	0x600a3004
 e000390:	0e015598 	.word	0x0e015598

0e000394 <__aeabi_uldivmod>:
 e000394:	e3530000 	cmp	r3, #0
 e000398:	03520000 	cmpeq	r2, #0
 e00039c:	1a000004 	bne	e0003b4 <__aeabi_uldivmod+0x20>
 e0003a0:	e3510000 	cmp	r1, #0
 e0003a4:	03500000 	cmpeq	r0, #0
 e0003a8:	13e01000 	mvnne	r1, #0
 e0003ac:	13e00000 	mvnne	r0, #0
 e0003b0:	ea000054 	b	e000508 <__aeabi_idiv0>
 e0003b4:	e24dd008 	sub	sp, sp, #8
 e0003b8:	e92d6000 	push	{sp, lr}
 e0003bc:	eb00000b 	bl	e0003f0 <__udivmoddi4>
 e0003c0:	e59de004 	ldr	lr, [sp, #4]
 e0003c4:	e28dd008 	add	sp, sp, #8
 e0003c8:	e8bd000c 	pop	{r2, r3}
 e0003cc:	e12fff1e 	bx	lr

0e0003d0 <__ctzdi2>:
 e0003d0:	e3500000 	cmp	r0, #0
 e0003d4:	11a01000 	movne	r1, r0
 e0003d8:	03a00020 	moveq	r0, #32
 e0003dc:	e6ff1f31 	rbit	r1, r1
 e0003e0:	13a00000 	movne	r0, #0
 e0003e4:	e16f1f11 	clz	r1, r1
 e0003e8:	e0800001 	add	r0, r0, r1
 e0003ec:	e12fff1e 	bx	lr

0e0003f0 <__udivmoddi4>:
 e0003f0:	e1500002 	cmp	r0, r2
 e0003f4:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 e0003f8:	e1a0e001 	mov	lr, r1
 e0003fc:	e0de1003 	sbcs	r1, lr, r3
 e000400:	e1a0c000 	mov	ip, r0
 e000404:	33a00000 	movcc	r0, #0
 e000408:	e59d601c 	ldr	r6, [sp, #28]
 e00040c:	31a01000 	movcc	r1, r0
 e000410:	3a000036 	bcc	e0004f0 <__udivmoddi4+0x100>
 e000414:	e3530000 	cmp	r3, #0
 e000418:	016f4f12 	clzeq	r4, r2
 e00041c:	116f4f13 	clzne	r4, r3
 e000420:	02844020 	addeq	r4, r4, #32
 e000424:	e35e0000 	cmp	lr, #0
 e000428:	016f1f1c 	clzeq	r1, ip
 e00042c:	116f1f1e 	clzne	r1, lr
 e000430:	02811020 	addeq	r1, r1, #32
 e000434:	e0444001 	sub	r4, r4, r1
 e000438:	e2447020 	sub	r7, r4, #32
 e00043c:	e2645020 	rsb	r5, r4, #32
 e000440:	e1a03413 	lsl	r3, r3, r4
 e000444:	e1833712 	orr	r3, r3, r2, lsl r7
 e000448:	e1833532 	orr	r3, r3, r2, lsr r5
 e00044c:	e1a02412 	lsl	r2, r2, r4
 e000450:	e15c0002 	cmp	ip, r2
 e000454:	e0de1003 	sbcs	r1, lr, r3
 e000458:	33a00000 	movcc	r0, #0
 e00045c:	31a01000 	movcc	r1, r0
 e000460:	3a000005 	bcc	e00047c <__udivmoddi4+0x8c>
 e000464:	e3a00001 	mov	r0, #1
 e000468:	e05cc002 	subs	ip, ip, r2
 e00046c:	e0cee003 	sbc	lr, lr, r3
 e000470:	e1a01710 	lsl	r1, r0, r7
 e000474:	e1811530 	orr	r1, r1, r0, lsr r5
 e000478:	e1a00410 	lsl	r0, r0, r4
 e00047c:	e3540000 	cmp	r4, #0
 e000480:	0a00001a 	beq	e0004f0 <__udivmoddi4+0x100>
 e000484:	e1a020a2 	lsr	r2, r2, #1
 e000488:	e1a08004 	mov	r8, r4
 e00048c:	e1822f83 	orr	r2, r2, r3, lsl #31
 e000490:	e1a030a3 	lsr	r3, r3, #1
 e000494:	e15c0002 	cmp	ip, r2
 e000498:	e0de9003 	sbcs	r9, lr, r3
 e00049c:	3a000016 	bcc	e0004fc <__udivmoddi4+0x10c>
 e0004a0:	e05cc002 	subs	ip, ip, r2
 e0004a4:	e0cee003 	sbc	lr, lr, r3
 e0004a8:	e09cc00c 	adds	ip, ip, ip
 e0004ac:	e0aee00e 	adc	lr, lr, lr
 e0004b0:	e29cc001 	adds	ip, ip, #1
 e0004b4:	e2aee000 	adc	lr, lr, #0
 e0004b8:	e2588001 	subs	r8, r8, #1
 e0004bc:	1afffff4 	bne	e000494 <__udivmoddi4+0xa4>
 e0004c0:	e090000c 	adds	r0, r0, ip
 e0004c4:	e1a0c43c 	lsr	ip, ip, r4
 e0004c8:	e18cc51e 	orr	ip, ip, lr, lsl r5
 e0004cc:	e0a1100e 	adc	r1, r1, lr
 e0004d0:	e18cc73e 	orr	ip, ip, lr, lsr r7
 e0004d4:	e1a0e43e 	lsr	lr, lr, r4
 e0004d8:	e1a0341e 	lsl	r3, lr, r4
 e0004dc:	e183371c 	orr	r3, r3, ip, lsl r7
 e0004e0:	e1a0441c 	lsl	r4, ip, r4
 e0004e4:	e183353c 	orr	r3, r3, ip, lsr r5
 e0004e8:	e0500004 	subs	r0, r0, r4
 e0004ec:	e0c11003 	sbc	r1, r1, r3
 e0004f0:	e3560000 	cmp	r6, #0
 e0004f4:	18865000 	stmne	r6, {ip, lr}
 e0004f8:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
 e0004fc:	e09cc00c 	adds	ip, ip, ip
 e000500:	e0aee00e 	adc	lr, lr, lr
 e000504:	eaffffeb 	b	e0004b8 <__udivmoddi4+0xc8>

0e000508 <__aeabi_idiv0>:
 e000508:	e12fff1e 	bx	lr

0e00050c <__assert_func>:
 e00050c:	e92d401f 	push	{r0, r1, r2, r3, r4, lr}
 e000510:	e1a0c002 	mov	ip, r2
 e000514:	e1a02003 	mov	r2, r3
 e000518:	e59f302c 	ldr	r3, [pc, #44]	; e00054c <__assert_func+0x40>
 e00051c:	e35c0000 	cmp	ip, #0
 e000520:	e1a0e000 	mov	lr, r0
 e000524:	e5933000 	ldr	r3, [r3]
 e000528:	e593000c 	ldr	r0, [r3, #12]
 e00052c:	059f301c 	ldreq	r3, [pc, #28]	; e000550 <__assert_func+0x44>
 e000530:	159f301c 	ldrne	r3, [pc, #28]	; e000554 <__assert_func+0x48>
 e000534:	01a0c003 	moveq	ip, r3
 e000538:	e88d100a 	stm	sp, {r1, r3, ip}
 e00053c:	e59f1014 	ldr	r1, [pc, #20]	; e000558 <__assert_func+0x4c>
 e000540:	e1a0300e 	mov	r3, lr
 e000544:	eb0001b2 	bl	e000c14 <fiprintf>
 e000548:	eb0009fa 	bl	e002d38 <abort>
 e00054c:	60095000 	.word	0x60095000
 e000550:	0e015493 	.word	0x0e015493
 e000554:	0e015458 	.word	0x0e015458
 e000558:	0e015465 	.word	0x0e015465

0e00055c <__assert>:
 e00055c:	e1a03002 	mov	r3, r2
 e000560:	e92d4010 	push	{r4, lr}
 e000564:	e3a02000 	mov	r2, #0
 e000568:	ebffffe7 	bl	e00050c <__assert_func>

0e00056c <__sflush_r>:
 e00056c:	e1d130bc 	ldrh	r3, [r1, #12]
 e000570:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e000574:	e1a05000 	mov	r5, r0
 e000578:	e1d120fc 	ldrsh	r2, [r1, #12]
 e00057c:	e1a04001 	mov	r4, r1
 e000580:	e3130008 	tst	r3, #8
 e000584:	1a000058 	bne	e0006ec <__sflush_r+0x180>
 e000588:	e5913004 	ldr	r3, [r1, #4]
 e00058c:	e3822b02 	orr	r2, r2, #2048	; 0x800
 e000590:	e1c120bc 	strh	r2, [r1, #12]
 e000594:	e3530000 	cmp	r3, #0
 e000598:	ca000004 	bgt	e0005b0 <__sflush_r+0x44>
 e00059c:	e5913040 	ldr	r3, [r1, #64]	; 0x40
 e0005a0:	e3530000 	cmp	r3, #0
 e0005a4:	ca000001 	bgt	e0005b0 <__sflush_r+0x44>
 e0005a8:	e3a00000 	mov	r0, #0
 e0005ac:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e0005b0:	e594802c 	ldr	r8, [r4, #44]	; 0x2c
 e0005b4:	e3580000 	cmp	r8, #0
 e0005b8:	0afffffa 	beq	e0005a8 <__sflush_r+0x3c>
 e0005bc:	e2127a01 	ands	r7, r2, #4096	; 0x1000
 e0005c0:	e5956000 	ldr	r6, [r5]
 e0005c4:	e3a03000 	mov	r3, #0
 e0005c8:	e5853000 	str	r3, [r5]
 e0005cc:	15940054 	ldrne	r0, [r4, #84]	; 0x54
 e0005d0:	1a000011 	bne	e00061c <__sflush_r+0xb0>
 e0005d4:	e5941020 	ldr	r1, [r4, #32]
 e0005d8:	e3a03001 	mov	r3, #1
 e0005dc:	e1a02007 	mov	r2, r7
 e0005e0:	e1a00005 	mov	r0, r5
 e0005e4:	e12fff38 	blx	r8
 e0005e8:	e3700001 	cmn	r0, #1
 e0005ec:	1a00000a 	bne	e00061c <__sflush_r+0xb0>
 e0005f0:	e5953000 	ldr	r3, [r5]
 e0005f4:	e3530000 	cmp	r3, #0
 e0005f8:	0a000007 	beq	e00061c <__sflush_r+0xb0>
 e0005fc:	e3530016 	cmp	r3, #22
 e000600:	1353001d 	cmpne	r3, #29
 e000604:	05856000 	streq	r6, [r5]
 e000608:	11d430bc 	ldrhne	r3, [r4, #12]
 e00060c:	0affffe5 	beq	e0005a8 <__sflush_r+0x3c>
 e000610:	e3833040 	orr	r3, r3, #64	; 0x40
 e000614:	e1c430bc 	strh	r3, [r4, #12]
 e000618:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e00061c:	e1d430bc 	ldrh	r3, [r4, #12]
 e000620:	e3130004 	tst	r3, #4
 e000624:	0a000005 	beq	e000640 <__sflush_r+0xd4>
 e000628:	e5943004 	ldr	r3, [r4, #4]
 e00062c:	e0400003 	sub	r0, r0, r3
 e000630:	e5943034 	ldr	r3, [r4, #52]	; 0x34
 e000634:	e3530000 	cmp	r3, #0
 e000638:	15943040 	ldrne	r3, [r4, #64]	; 0x40
 e00063c:	10400003 	subne	r0, r0, r3
 e000640:	e3a03000 	mov	r3, #0
 e000644:	e1a02000 	mov	r2, r0
 e000648:	e594702c 	ldr	r7, [r4, #44]	; 0x2c
 e00064c:	e1a00005 	mov	r0, r5
 e000650:	e5941020 	ldr	r1, [r4, #32]
 e000654:	e12fff37 	blx	r7
 e000658:	e1d430bc 	ldrh	r3, [r4, #12]
 e00065c:	e3700001 	cmn	r0, #1
 e000660:	1a000006 	bne	e000680 <__sflush_r+0x114>
 e000664:	e5951000 	ldr	r1, [r5]
 e000668:	e351001d 	cmp	r1, #29
 e00066c:	8affffe7 	bhi	e000610 <__sflush_r+0xa4>
 e000670:	e59f20e4 	ldr	r2, [pc, #228]	; e00075c <__sflush_r+0x1f0>
 e000674:	e1e02132 	mvn	r2, r2, lsr r1
 e000678:	e3120001 	tst	r2, #1
 e00067c:	1affffe3 	bne	e000610 <__sflush_r+0xa4>
 e000680:	e3c33b02 	bic	r3, r3, #2048	; 0x800
 e000684:	e3a02000 	mov	r2, #0
 e000688:	e5842004 	str	r2, [r4, #4]
 e00068c:	e6bf3073 	sxth	r3, r3
 e000690:	e5942010 	ldr	r2, [r4, #16]
 e000694:	e3130a01 	tst	r3, #4096	; 0x1000
 e000698:	e1c430bc 	strh	r3, [r4, #12]
 e00069c:	e5842000 	str	r2, [r4]
 e0006a0:	0a000005 	beq	e0006bc <__sflush_r+0x150>
 e0006a4:	e3700001 	cmn	r0, #1
 e0006a8:	1a000002 	bne	e0006b8 <__sflush_r+0x14c>
 e0006ac:	e5953000 	ldr	r3, [r5]
 e0006b0:	e3530000 	cmp	r3, #0
 e0006b4:	1a000000 	bne	e0006bc <__sflush_r+0x150>
 e0006b8:	e5840054 	str	r0, [r4, #84]	; 0x54
 e0006bc:	e5941034 	ldr	r1, [r4, #52]	; 0x34
 e0006c0:	e5856000 	str	r6, [r5]
 e0006c4:	e3510000 	cmp	r1, #0
 e0006c8:	0affffb6 	beq	e0005a8 <__sflush_r+0x3c>
 e0006cc:	e2843044 	add	r3, r4, #68	; 0x44
 e0006d0:	e1510003 	cmp	r1, r3
 e0006d4:	0a000001 	beq	e0006e0 <__sflush_r+0x174>
 e0006d8:	e1a00005 	mov	r0, r5
 e0006dc:	eb001ef2 	bl	e0082ac <__wrap__free_r>
 e0006e0:	e3a00000 	mov	r0, #0
 e0006e4:	e5840034 	str	r0, [r4, #52]	; 0x34
 e0006e8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e0006ec:	e5917010 	ldr	r7, [r1, #16]
 e0006f0:	e3570000 	cmp	r7, #0
 e0006f4:	0affffab 	beq	e0005a8 <__sflush_r+0x3c>
 e0006f8:	e3130003 	tst	r3, #3
 e0006fc:	e5916000 	ldr	r6, [r1]
 e000700:	13a03000 	movne	r3, #0
 e000704:	e5817000 	str	r7, [r1]
 e000708:	e0466007 	sub	r6, r6, r7
 e00070c:	05913014 	ldreq	r3, [r1, #20]
 e000710:	e5813008 	str	r3, [r1, #8]
 e000714:	e3560000 	cmp	r6, #0
 e000718:	daffffa2 	ble	e0005a8 <__sflush_r+0x3c>
 e00071c:	e5948028 	ldr	r8, [r4, #40]	; 0x28
 e000720:	e1a03006 	mov	r3, r6
 e000724:	e5941020 	ldr	r1, [r4, #32]
 e000728:	e1a02007 	mov	r2, r7
 e00072c:	e1a00005 	mov	r0, r5
 e000730:	e12fff38 	blx	r8
 e000734:	e3500000 	cmp	r0, #0
 e000738:	ca000004 	bgt	e000750 <__sflush_r+0x1e4>
 e00073c:	e1d430bc 	ldrh	r3, [r4, #12]
 e000740:	e3e00000 	mvn	r0, #0
 e000744:	e3833040 	orr	r3, r3, #64	; 0x40
 e000748:	e1c430bc 	strh	r3, [r4, #12]
 e00074c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e000750:	e0877000 	add	r7, r7, r0
 e000754:	e0466000 	sub	r6, r6, r0
 e000758:	eaffffed 	b	e000714 <__sflush_r+0x1a8>
 e00075c:	20400001 	.word	0x20400001

0e000760 <_fflush_r>:
 e000760:	e5913010 	ldr	r3, [r1, #16]
 e000764:	e92d4070 	push	{r4, r5, r6, lr}
 e000768:	e3530000 	cmp	r3, #0
 e00076c:	1a000002 	bne	e00077c <_fflush_r+0x1c>
 e000770:	e3a05000 	mov	r5, #0
 e000774:	e1a00005 	mov	r0, r5
 e000778:	e8bd8070 	pop	{r4, r5, r6, pc}
 e00077c:	e1a05000 	mov	r5, r0
 e000780:	e1a04001 	mov	r4, r1
 e000784:	e3500000 	cmp	r0, #0
 e000788:	0a000003 	beq	e00079c <_fflush_r+0x3c>
 e00078c:	e5903018 	ldr	r3, [r0, #24]
 e000790:	e3530000 	cmp	r3, #0
 e000794:	1a000000 	bne	e00079c <_fflush_r+0x3c>
 e000798:	eb000098 	bl	e000a00 <__sinit>
 e00079c:	e1d430fc 	ldrsh	r3, [r4, #12]
 e0007a0:	e3530000 	cmp	r3, #0
 e0007a4:	0afffff1 	beq	e000770 <_fflush_r+0x10>
 e0007a8:	e5942064 	ldr	r2, [r4, #100]	; 0x64
 e0007ac:	e3120001 	tst	r2, #1
 e0007b0:	1a000003 	bne	e0007c4 <_fflush_r+0x64>
 e0007b4:	e3130c02 	tst	r3, #512	; 0x200
 e0007b8:	1a000001 	bne	e0007c4 <_fflush_r+0x64>
 e0007bc:	e5940058 	ldr	r0, [r4, #88]	; 0x58
 e0007c0:	eb000174 	bl	e000d98 <__retarget_lock_acquire_recursive>
 e0007c4:	e1a00005 	mov	r0, r5
 e0007c8:	e1a01004 	mov	r1, r4
 e0007cc:	ebffff66 	bl	e00056c <__sflush_r>
 e0007d0:	e5943064 	ldr	r3, [r4, #100]	; 0x64
 e0007d4:	e1a05000 	mov	r5, r0
 e0007d8:	e3130001 	tst	r3, #1
 e0007dc:	1affffe4 	bne	e000774 <_fflush_r+0x14>
 e0007e0:	e1d430bc 	ldrh	r3, [r4, #12]
 e0007e4:	e3130c02 	tst	r3, #512	; 0x200
 e0007e8:	1affffe1 	bne	e000774 <_fflush_r+0x14>
 e0007ec:	e5940058 	ldr	r0, [r4, #88]	; 0x58
 e0007f0:	eb00016e 	bl	e000db0 <__retarget_lock_release_recursive>
 e0007f4:	eaffffde 	b	e000774 <_fflush_r+0x14>

0e0007f8 <fflush>:
 e0007f8:	e2501000 	subs	r1, r0, #0
 e0007fc:	1a000003 	bne	e000810 <fflush+0x18>
 e000800:	e59f3014 	ldr	r3, [pc, #20]	; e00081c <fflush+0x24>
 e000804:	e59f1014 	ldr	r1, [pc, #20]	; e000820 <fflush+0x28>
 e000808:	e5930000 	ldr	r0, [r3]
 e00080c:	ea000126 	b	e000cac <_fwalk_reent>
 e000810:	e59f300c 	ldr	r3, [pc, #12]	; e000824 <fflush+0x2c>
 e000814:	e5930000 	ldr	r0, [r3]
 e000818:	eaffffd0 	b	e000760 <_fflush_r>
 e00081c:	0e013a34 	.word	0x0e013a34
 e000820:	0e000760 	.word	0x0e000760
 e000824:	60095000 	.word	0x60095000

0e000828 <std>:
 e000828:	e92d4010 	push	{r4, lr}
 e00082c:	e3a03000 	mov	r3, #0
 e000830:	e1a04000 	mov	r4, r0
 e000834:	e5803000 	str	r3, [r0]
 e000838:	e280005c 	add	r0, r0, #92	; 0x5c
 e00083c:	e5003058 	str	r3, [r0, #-88]	; 0xffffffa8
 e000840:	e5003054 	str	r3, [r0, #-84]	; 0xffffffac
 e000844:	e14015b0 	strh	r1, [r0, #-80]	; 0xffffffb0
 e000848:	e1a01003 	mov	r1, r3
 e00084c:	e5803008 	str	r3, [r0, #8]
 e000850:	e14024be 	strh	r2, [r0, #-78]	; 0xffffffb2
 e000854:	e3a02008 	mov	r2, #8
 e000858:	e500304c 	str	r3, [r0, #-76]	; 0xffffffb4
 e00085c:	e5003048 	str	r3, [r0, #-72]	; 0xffffffb8
 e000860:	e5003044 	str	r3, [r0, #-68]	; 0xffffffbc
 e000864:	eb0002cf 	bl	e0013a8 <memset>
 e000868:	e59f3028 	ldr	r3, [pc, #40]	; e000898 <std+0x70>
 e00086c:	e5843024 	str	r3, [r4, #36]	; 0x24
 e000870:	e2840058 	add	r0, r4, #88	; 0x58
 e000874:	e59f3020 	ldr	r3, [pc, #32]	; e00089c <std+0x74>
 e000878:	e5843028 	str	r3, [r4, #40]	; 0x28
 e00087c:	e59f301c 	ldr	r3, [pc, #28]	; e0008a0 <std+0x78>
 e000880:	e584302c 	str	r3, [r4, #44]	; 0x2c
 e000884:	e59f3018 	ldr	r3, [pc, #24]	; e0008a4 <std+0x7c>
 e000888:	e5844020 	str	r4, [r4, #32]
 e00088c:	e5843030 	str	r3, [r4, #48]	; 0x30
 e000890:	e8bd4010 	pop	{r4, lr}
 e000894:	ea00013b 	b	e000d88 <__retarget_lock_init_recursive>
 e000898:	0e001600 	.word	0x0e001600
 e00089c:	0e001638 	.word	0x0e001638
 e0008a0:	0e00168c 	.word	0x0e00168c
 e0008a4:	0e0016bc 	.word	0x0e0016bc

0e0008a8 <_cleanup_r>:
 e0008a8:	e5901004 	ldr	r1, [r0, #4]
 e0008ac:	e59f3050 	ldr	r3, [pc, #80]	; e000904 <_cleanup_r+0x5c>
 e0008b0:	e92d4010 	push	{r4, lr}
 e0008b4:	e1a04000 	mov	r4, r0
 e0008b8:	e1510003 	cmp	r1, r3
 e0008bc:	0a000000 	beq	e0008c4 <_cleanup_r+0x1c>
 e0008c0:	eb000d77 	bl	e003ea4 <_fclose_r>
 e0008c4:	e5941008 	ldr	r1, [r4, #8]
 e0008c8:	e59f3038 	ldr	r3, [pc, #56]	; e000908 <_cleanup_r+0x60>
 e0008cc:	e1510003 	cmp	r1, r3
 e0008d0:	0a000001 	beq	e0008dc <_cleanup_r+0x34>
 e0008d4:	e1a00004 	mov	r0, r4
 e0008d8:	eb000d71 	bl	e003ea4 <_fclose_r>
 e0008dc:	e594100c 	ldr	r1, [r4, #12]
 e0008e0:	e59f3024 	ldr	r3, [pc, #36]	; e00090c <_cleanup_r+0x64>
 e0008e4:	e1510003 	cmp	r1, r3
 e0008e8:	0a000001 	beq	e0008f4 <_cleanup_r+0x4c>
 e0008ec:	e1a00004 	mov	r0, r4
 e0008f0:	eb000d6b 	bl	e003ea4 <_fclose_r>
 e0008f4:	e1a00004 	mov	r0, r4
 e0008f8:	e59f1010 	ldr	r1, [pc, #16]	; e000910 <_cleanup_r+0x68>
 e0008fc:	e8bd4010 	pop	{r4, lr}
 e000900:	ea0000e9 	b	e000cac <_fwalk_reent>
 e000904:	600a301c 	.word	0x600a301c
 e000908:	600a3084 	.word	0x600a3084
 e00090c:	600a30ec 	.word	0x600a30ec
 e000910:	0e003ea4 	.word	0x0e003ea4

0e000914 <__fp_lock>:
 e000914:	e5903064 	ldr	r3, [r0, #100]	; 0x64
 e000918:	e3130001 	tst	r3, #1
 e00091c:	1a000007 	bne	e000940 <__fp_lock+0x2c>
 e000920:	e1d030bc 	ldrh	r3, [r0, #12]
 e000924:	e3130c02 	tst	r3, #512	; 0x200
 e000928:	1a000004 	bne	e000940 <__fp_lock+0x2c>
 e00092c:	e5900058 	ldr	r0, [r0, #88]	; 0x58
 e000930:	e92d4010 	push	{r4, lr}
 e000934:	eb000117 	bl	e000d98 <__retarget_lock_acquire_recursive>
 e000938:	e3a00000 	mov	r0, #0
 e00093c:	e8bd8010 	pop	{r4, pc}
 e000940:	e3a00000 	mov	r0, #0
 e000944:	e12fff1e 	bx	lr

0e000948 <__fp_unlock>:
 e000948:	e5903064 	ldr	r3, [r0, #100]	; 0x64
 e00094c:	e3130001 	tst	r3, #1
 e000950:	1a000007 	bne	e000974 <__fp_unlock+0x2c>
 e000954:	e1d030bc 	ldrh	r3, [r0, #12]
 e000958:	e3130c02 	tst	r3, #512	; 0x200
 e00095c:	1a000004 	bne	e000974 <__fp_unlock+0x2c>
 e000960:	e5900058 	ldr	r0, [r0, #88]	; 0x58
 e000964:	e92d4010 	push	{r4, lr}
 e000968:	eb000110 	bl	e000db0 <__retarget_lock_release_recursive>
 e00096c:	e3a00000 	mov	r0, #0
 e000970:	e8bd8010 	pop	{r4, pc}
 e000974:	e3a00000 	mov	r0, #0
 e000978:	e12fff1e 	bx	lr

0e00097c <__sfmoreglue>:
 e00097c:	e92d4070 	push	{r4, r5, r6, lr}
 e000980:	e3a02068 	mov	r2, #104	; 0x68
 e000984:	e2415001 	sub	r5, r1, #1
 e000988:	e1a06001 	mov	r6, r1
 e00098c:	e0050592 	mul	r5, r2, r5
 e000990:	e2851074 	add	r1, r5, #116	; 0x74
 e000994:	eb001e3f 	bl	e008298 <__wrap__malloc_r>
 e000998:	e2504000 	subs	r4, r0, #0
 e00099c:	0a000005 	beq	e0009b8 <__sfmoreglue+0x3c>
 e0009a0:	e3a01000 	mov	r1, #0
 e0009a4:	e284000c 	add	r0, r4, #12
 e0009a8:	e2852068 	add	r2, r5, #104	; 0x68
 e0009ac:	e8840042 	stm	r4, {r1, r6}
 e0009b0:	e5840008 	str	r0, [r4, #8]
 e0009b4:	eb00027b 	bl	e0013a8 <memset>
 e0009b8:	e1a00004 	mov	r0, r4
 e0009bc:	e8bd8070 	pop	{r4, r5, r6, pc}

0e0009c0 <_cleanup>:
 e0009c0:	e59f3004 	ldr	r3, [pc, #4]	; e0009cc <_cleanup+0xc>
 e0009c4:	e5930000 	ldr	r0, [r3]
 e0009c8:	eaffffb6 	b	e0008a8 <_cleanup_r>
 e0009cc:	0e013a34 	.word	0x0e013a34

0e0009d0 <__sfp_lock_acquire>:
 e0009d0:	e59f0000 	ldr	r0, [pc]	; e0009d8 <__sfp_lock_acquire+0x8>
 e0009d4:	ea0000ef 	b	e000d98 <__retarget_lock_acquire_recursive>
 e0009d8:	600a315b 	.word	0x600a315b

0e0009dc <__sfp_lock_release>:
 e0009dc:	e59f0000 	ldr	r0, [pc]	; e0009e4 <__sfp_lock_release+0x8>
 e0009e0:	ea0000f2 	b	e000db0 <__retarget_lock_release_recursive>
 e0009e4:	600a315b 	.word	0x600a315b

0e0009e8 <__sinit_lock_acquire>:
 e0009e8:	e59f0000 	ldr	r0, [pc]	; e0009f0 <__sinit_lock_acquire+0x8>
 e0009ec:	ea0000e9 	b	e000d98 <__retarget_lock_acquire_recursive>
 e0009f0:	600a315c 	.word	0x600a315c

0e0009f4 <__sinit_lock_release>:
 e0009f4:	e59f0000 	ldr	r0, [pc]	; e0009fc <__sinit_lock_release+0x8>
 e0009f8:	ea0000ec 	b	e000db0 <__retarget_lock_release_recursive>
 e0009fc:	600a315c 	.word	0x600a315c

0e000a00 <__sinit>:
 e000a00:	e92d4070 	push	{r4, r5, r6, lr}
 e000a04:	e1a04000 	mov	r4, r0
 e000a08:	ebfffff6 	bl	e0009e8 <__sinit_lock_acquire>
 e000a0c:	e5943018 	ldr	r3, [r4, #24]
 e000a10:	e3530000 	cmp	r3, #0
 e000a14:	0a000001 	beq	e000a20 <__sinit+0x20>
 e000a18:	e8bd4070 	pop	{r4, r5, r6, lr}
 e000a1c:	eafffff4 	b	e0009f4 <__sinit_lock_release>
 e000a20:	e58430d8 	str	r3, [r4, #216]	; 0xd8
 e000a24:	e58430dc 	str	r3, [r4, #220]	; 0xdc
 e000a28:	e58430e0 	str	r3, [r4, #224]	; 0xe0
 e000a2c:	e59f3078 	ldr	r3, [pc, #120]	; e000aac <__sinit+0xac>
 e000a30:	e59f0078 	ldr	r0, [pc, #120]	; e000ab0 <__sinit+0xb0>
 e000a34:	e59f2078 	ldr	r2, [pc, #120]	; e000ab4 <__sinit+0xb4>
 e000a38:	e5842028 	str	r2, [r4, #40]	; 0x28
 e000a3c:	e2806068 	add	r6, r0, #104	; 0x68
 e000a40:	e5933000 	ldr	r3, [r3]
 e000a44:	e28050d0 	add	r5, r0, #208	; 0xd0
 e000a48:	e1530004 	cmp	r3, r4
 e000a4c:	03a02001 	moveq	r2, #1
 e000a50:	05832018 	streq	r2, [r3, #24]
 e000a54:	e5902020 	ldr	r2, [r0, #32]
 e000a58:	e5840004 	str	r0, [r4, #4]
 e000a5c:	e3520000 	cmp	r2, #0
 e000a60:	e5846008 	str	r6, [r4, #8]
 e000a64:	e584500c 	str	r5, [r4, #12]
 e000a68:	1a00000c 	bne	e000aa0 <__sinit+0xa0>
 e000a6c:	e58300e0 	str	r0, [r3, #224]	; 0xe0
 e000a70:	e3a01003 	mov	r1, #3
 e000a74:	e58310dc 	str	r1, [r3, #220]	; 0xdc
 e000a78:	e3a01004 	mov	r1, #4
 e000a7c:	ebffff69 	bl	e000828 <std>
 e000a80:	e3a02001 	mov	r2, #1
 e000a84:	e3a01009 	mov	r1, #9
 e000a88:	e1a00006 	mov	r0, r6
 e000a8c:	ebffff65 	bl	e000828 <std>
 e000a90:	e3a02002 	mov	r2, #2
 e000a94:	e3a01012 	mov	r1, #18
 e000a98:	e1a00005 	mov	r0, r5
 e000a9c:	ebffff61 	bl	e000828 <std>
 e000aa0:	e3a03001 	mov	r3, #1
 e000aa4:	e5843018 	str	r3, [r4, #24]
 e000aa8:	eaffffda 	b	e000a18 <__sinit+0x18>
 e000aac:	0e013a34 	.word	0x0e013a34
 e000ab0:	600a301c 	.word	0x600a301c
 e000ab4:	0e0008a8 	.word	0x0e0008a8

0e000ab8 <__sfp>:
 e000ab8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e000abc:	e1a07000 	mov	r7, r0
 e000ac0:	ebffffc2 	bl	e0009d0 <__sfp_lock_acquire>
 e000ac4:	e59f30d0 	ldr	r3, [pc, #208]	; e000b9c <__sfp+0xe4>
 e000ac8:	e5936000 	ldr	r6, [r3]
 e000acc:	e5963018 	ldr	r3, [r6, #24]
 e000ad0:	e3530000 	cmp	r3, #0
 e000ad4:	1a000001 	bne	e000ae0 <__sfp+0x28>
 e000ad8:	e1a00006 	mov	r0, r6
 e000adc:	ebffffc7 	bl	e000a00 <__sinit>
 e000ae0:	e28660d8 	add	r6, r6, #216	; 0xd8
 e000ae4:	e9960018 	ldmib	r6, {r3, r4}
 e000ae8:	e2533001 	subs	r3, r3, #1
 e000aec:	5a000004 	bpl	e000b04 <__sfp+0x4c>
 e000af0:	e5963000 	ldr	r3, [r6]
 e000af4:	e3530000 	cmp	r3, #0
 e000af8:	0a00001c 	beq	e000b70 <__sfp+0xb8>
 e000afc:	e5966000 	ldr	r6, [r6]
 e000b00:	eafffff7 	b	e000ae4 <__sfp+0x2c>
 e000b04:	e1d450fc 	ldrsh	r5, [r4, #12]
 e000b08:	e3550000 	cmp	r5, #0
 e000b0c:	1a000015 	bne	e000b68 <__sfp+0xb0>
 e000b10:	e59f3088 	ldr	r3, [pc, #136]	; e000ba0 <__sfp+0xe8>
 e000b14:	e2840058 	add	r0, r4, #88	; 0x58
 e000b18:	e584300c 	str	r3, [r4, #12]
 e000b1c:	e5845064 	str	r5, [r4, #100]	; 0x64
 e000b20:	eb000098 	bl	e000d88 <__retarget_lock_init_recursive>
 e000b24:	ebffffac 	bl	e0009dc <__sfp_lock_release>
 e000b28:	e3a02008 	mov	r2, #8
 e000b2c:	e1a01005 	mov	r1, r5
 e000b30:	e284005c 	add	r0, r4, #92	; 0x5c
 e000b34:	e5845000 	str	r5, [r4]
 e000b38:	e5845008 	str	r5, [r4, #8]
 e000b3c:	e5845004 	str	r5, [r4, #4]
 e000b40:	e5845010 	str	r5, [r4, #16]
 e000b44:	e5845014 	str	r5, [r4, #20]
 e000b48:	e5845018 	str	r5, [r4, #24]
 e000b4c:	eb000215 	bl	e0013a8 <memset>
 e000b50:	e5845034 	str	r5, [r4, #52]	; 0x34
 e000b54:	e5845038 	str	r5, [r4, #56]	; 0x38
 e000b58:	e5845048 	str	r5, [r4, #72]	; 0x48
 e000b5c:	e584504c 	str	r5, [r4, #76]	; 0x4c
 e000b60:	e1a00004 	mov	r0, r4
 e000b64:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e000b68:	e2844068 	add	r4, r4, #104	; 0x68
 e000b6c:	eaffffdd 	b	e000ae8 <__sfp+0x30>
 e000b70:	e3a01004 	mov	r1, #4
 e000b74:	e1a00007 	mov	r0, r7
 e000b78:	ebffff7f 	bl	e00097c <__sfmoreglue>
 e000b7c:	e1a04000 	mov	r4, r0
 e000b80:	e3500000 	cmp	r0, #0
 e000b84:	e5860000 	str	r0, [r6]
 e000b88:	1affffdb 	bne	e000afc <__sfp+0x44>
 e000b8c:	ebffff92 	bl	e0009dc <__sfp_lock_release>
 e000b90:	e3a0300c 	mov	r3, #12
 e000b94:	e5873000 	str	r3, [r7]
 e000b98:	eafffff0 	b	e000b60 <__sfp+0xa8>
 e000b9c:	0e013a34 	.word	0x0e013a34
 e000ba0:	ffff0001 	.word	0xffff0001

0e000ba4 <__fp_lock_all>:
 e000ba4:	e92d4010 	push	{r4, lr}
 e000ba8:	ebffff88 	bl	e0009d0 <__sfp_lock_acquire>
 e000bac:	e59f300c 	ldr	r3, [pc, #12]	; e000bc0 <__fp_lock_all+0x1c>
 e000bb0:	e8bd4010 	pop	{r4, lr}
 e000bb4:	e59f1008 	ldr	r1, [pc, #8]	; e000bc4 <__fp_lock_all+0x20>
 e000bb8:	e5930000 	ldr	r0, [r3]
 e000bbc:	ea000022 	b	e000c4c <_fwalk>
 e000bc0:	60095000 	.word	0x60095000
 e000bc4:	0e000914 	.word	0x0e000914

0e000bc8 <__fp_unlock_all>:
 e000bc8:	e59f3014 	ldr	r3, [pc, #20]	; e000be4 <__fp_unlock_all+0x1c>
 e000bcc:	e92d4010 	push	{r4, lr}
 e000bd0:	e59f1010 	ldr	r1, [pc, #16]	; e000be8 <__fp_unlock_all+0x20>
 e000bd4:	e5930000 	ldr	r0, [r3]
 e000bd8:	eb00001b 	bl	e000c4c <_fwalk>
 e000bdc:	e8bd4010 	pop	{r4, lr}
 e000be0:	eaffff7d 	b	e0009dc <__sfp_lock_release>
 e000be4:	60095000 	.word	0x60095000
 e000be8:	0e000948 	.word	0x0e000948

0e000bec <_fiprintf_r>:
 e000bec:	e92d000c 	push	{r2, r3}
 e000bf0:	e92d4007 	push	{r0, r1, r2, lr}
 e000bf4:	e59d2010 	ldr	r2, [sp, #16]
 e000bf8:	e28d3014 	add	r3, sp, #20
 e000bfc:	e58d3004 	str	r3, [sp, #4]
 e000c00:	eb0003f9 	bl	e001bec <_vfiprintf_r>
 e000c04:	e28dd00c 	add	sp, sp, #12
 e000c08:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 e000c0c:	e28dd008 	add	sp, sp, #8
 e000c10:	e12fff1e 	bx	lr

0e000c14 <fiprintf>:
 e000c14:	e92d000e 	push	{r1, r2, r3}
 e000c18:	e92d4003 	push	{r0, r1, lr}
 e000c1c:	e1a01000 	mov	r1, r0
 e000c20:	e59f0020 	ldr	r0, [pc, #32]	; e000c48 <fiprintf+0x34>
 e000c24:	e28d3010 	add	r3, sp, #16
 e000c28:	e59d200c 	ldr	r2, [sp, #12]
 e000c2c:	e58d3004 	str	r3, [sp, #4]
 e000c30:	e5900000 	ldr	r0, [r0]
 e000c34:	eb0003ec 	bl	e001bec <_vfiprintf_r>
 e000c38:	e28dd008 	add	sp, sp, #8
 e000c3c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 e000c40:	e28dd00c 	add	sp, sp, #12
 e000c44:	e12fff1e 	bx	lr
 e000c48:	60095000 	.word	0x60095000

0e000c4c <_fwalk>:
 e000c4c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e000c50:	e1a07001 	mov	r7, r1
 e000c54:	e28040d8 	add	r4, r0, #216	; 0xd8
 e000c58:	e3a06000 	mov	r6, #0
 e000c5c:	e5945008 	ldr	r5, [r4, #8]
 e000c60:	e5948004 	ldr	r8, [r4, #4]
 e000c64:	e2588001 	subs	r8, r8, #1
 e000c68:	5a000004 	bpl	e000c80 <_fwalk+0x34>
 e000c6c:	e5944000 	ldr	r4, [r4]
 e000c70:	e3540000 	cmp	r4, #0
 e000c74:	1afffff8 	bne	e000c5c <_fwalk+0x10>
 e000c78:	e1a00006 	mov	r0, r6
 e000c7c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e000c80:	e1d530bc 	ldrh	r3, [r5, #12]
 e000c84:	e3530001 	cmp	r3, #1
 e000c88:	9a000005 	bls	e000ca4 <_fwalk+0x58>
 e000c8c:	e1d530fe 	ldrsh	r3, [r5, #14]
 e000c90:	e3730001 	cmn	r3, #1
 e000c94:	0a000002 	beq	e000ca4 <_fwalk+0x58>
 e000c98:	e1a00005 	mov	r0, r5
 e000c9c:	e12fff37 	blx	r7
 e000ca0:	e1866000 	orr	r6, r6, r0
 e000ca4:	e2855068 	add	r5, r5, #104	; 0x68
 e000ca8:	eaffffed 	b	e000c64 <_fwalk+0x18>

0e000cac <_fwalk_reent>:
 e000cac:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e000cb0:	e1a06000 	mov	r6, r0
 e000cb4:	e1a08001 	mov	r8, r1
 e000cb8:	e28040d8 	add	r4, r0, #216	; 0xd8
 e000cbc:	e3a07000 	mov	r7, #0
 e000cc0:	e5945008 	ldr	r5, [r4, #8]
 e000cc4:	e5949004 	ldr	r9, [r4, #4]
 e000cc8:	e2599001 	subs	r9, r9, #1
 e000ccc:	5a000004 	bpl	e000ce4 <_fwalk_reent+0x38>
 e000cd0:	e5944000 	ldr	r4, [r4]
 e000cd4:	e3540000 	cmp	r4, #0
 e000cd8:	1afffff8 	bne	e000cc0 <_fwalk_reent+0x14>
 e000cdc:	e1a00007 	mov	r0, r7
 e000ce0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e000ce4:	e1d530bc 	ldrh	r3, [r5, #12]
 e000ce8:	e3530001 	cmp	r3, #1
 e000cec:	9a000006 	bls	e000d0c <_fwalk_reent+0x60>
 e000cf0:	e1d530fe 	ldrsh	r3, [r5, #14]
 e000cf4:	e3730001 	cmn	r3, #1
 e000cf8:	0a000003 	beq	e000d0c <_fwalk_reent+0x60>
 e000cfc:	e1a01005 	mov	r1, r5
 e000d00:	e1a00006 	mov	r0, r6
 e000d04:	e12fff38 	blx	r8
 e000d08:	e1877000 	orr	r7, r7, r0
 e000d0c:	e2855068 	add	r5, r5, #104	; 0x68
 e000d10:	eaffffec 	b	e000cc8 <_fwalk_reent+0x1c>

0e000d14 <__libc_init_array>:
 e000d14:	e92d4070 	push	{r4, r5, r6, lr}
 e000d18:	e3a06000 	mov	r6, #0
 e000d1c:	e59f5050 	ldr	r5, [pc, #80]	; e000d74 <__libc_init_array+0x60>
 e000d20:	e59f4050 	ldr	r4, [pc, #80]	; e000d78 <__libc_init_array+0x64>
 e000d24:	e0444005 	sub	r4, r4, r5
 e000d28:	e1a04144 	asr	r4, r4, #2
 e000d2c:	e1560004 	cmp	r6, r4
 e000d30:	1a00000b 	bne	e000d64 <__libc_init_array+0x50>
 e000d34:	e59f5040 	ldr	r5, [pc, #64]	; e000d7c <__libc_init_array+0x68>
 e000d38:	e3a06000 	mov	r6, #0
 e000d3c:	e59f403c 	ldr	r4, [pc, #60]	; e000d80 <__libc_init_array+0x6c>
 e000d40:	eb001f53 	bl	e008a94 <_init>
 e000d44:	e0444005 	sub	r4, r4, r5
 e000d48:	e1a04144 	asr	r4, r4, #2
 e000d4c:	e1560004 	cmp	r6, r4
 e000d50:	08bd8070 	popeq	{r4, r5, r6, pc}
 e000d54:	e4953004 	ldr	r3, [r5], #4
 e000d58:	e2866001 	add	r6, r6, #1
 e000d5c:	e12fff33 	blx	r3
 e000d60:	eafffff9 	b	e000d4c <__libc_init_array+0x38>
 e000d64:	e4953004 	ldr	r3, [r5], #4
 e000d68:	e2866001 	add	r6, r6, #1
 e000d6c:	e12fff33 	blx	r3
 e000d70:	eaffffed 	b	e000d2c <__libc_init_array+0x18>
 e000d74:	0e0156c8 	.word	0x0e0156c8
 e000d78:	0e0156c8 	.word	0x0e0156c8
 e000d7c:	0e0156c8 	.word	0x0e0156c8
 e000d80:	0e0156cc 	.word	0x0e0156cc

0e000d84 <__retarget_lock_init>:
 e000d84:	e12fff1e 	bx	lr

0e000d88 <__retarget_lock_init_recursive>:
 e000d88:	e12fff1e 	bx	lr

0e000d8c <__retarget_lock_close>:
 e000d8c:	e12fff1e 	bx	lr

0e000d90 <__retarget_lock_close_recursive>:
 e000d90:	e12fff1e 	bx	lr

0e000d94 <__retarget_lock_acquire>:
 e000d94:	e12fff1e 	bx	lr

0e000d98 <__retarget_lock_acquire_recursive>:
 e000d98:	e12fff1e 	bx	lr

0e000d9c <__retarget_lock_try_acquire>:
 e000d9c:	e3a00001 	mov	r0, #1
 e000da0:	e12fff1e 	bx	lr

0e000da4 <__retarget_lock_try_acquire_recursive>:
 e000da4:	e3a00001 	mov	r0, #1
 e000da8:	e12fff1e 	bx	lr

0e000dac <__retarget_lock_release>:
 e000dac:	e12fff1e 	bx	lr

0e000db0 <__retarget_lock_release_recursive>:
 e000db0:	e12fff1e 	bx	lr
	...

0e000dc0 <memcpy>:
 e000dc0:	e1a0c000 	mov	ip, r0
 e000dc4:	e3520040 	cmp	r2, #64	; 0x40
 e000dc8:	aa000019 	bge	e000e34 <memcpy+0x74>
 e000dcc:	e2023038 	and	r3, r2, #56	; 0x38
 e000dd0:	e2633034 	rsb	r3, r3, #52	; 0x34
 e000dd4:	e08ff003 	add	pc, pc, r3
 e000dd8:	f421070d 	vld1.8	{d0}, [r1]!
 e000ddc:	f40c070d 	vst1.8	{d0}, [ip]!
 e000de0:	f421070d 	vld1.8	{d0}, [r1]!
 e000de4:	f40c070d 	vst1.8	{d0}, [ip]!
 e000de8:	f421070d 	vld1.8	{d0}, [r1]!
 e000dec:	f40c070d 	vst1.8	{d0}, [ip]!
 e000df0:	f421070d 	vld1.8	{d0}, [r1]!
 e000df4:	f40c070d 	vst1.8	{d0}, [ip]!
 e000df8:	f421070d 	vld1.8	{d0}, [r1]!
 e000dfc:	f40c070d 	vst1.8	{d0}, [ip]!
 e000e00:	f421070d 	vld1.8	{d0}, [r1]!
 e000e04:	f40c070d 	vst1.8	{d0}, [ip]!
 e000e08:	f421070d 	vld1.8	{d0}, [r1]!
 e000e0c:	f40c070d 	vst1.8	{d0}, [ip]!
 e000e10:	e3120004 	tst	r2, #4
 e000e14:	14913004 	ldrne	r3, [r1], #4
 e000e18:	148c3004 	strne	r3, [ip], #4
 e000e1c:	e1b02f82 	lsls	r2, r2, #31
 e000e20:	20d130b2 	ldrhcs	r3, [r1], #2
 e000e24:	15d11000 	ldrbne	r1, [r1]
 e000e28:	20cc30b2 	strhcs	r3, [ip], #2
 e000e2c:	15cc1000 	strbne	r1, [ip]
 e000e30:	e12fff1e 	bx	lr
 e000e34:	e52da004 	push	{sl}		; (str sl, [sp, #-4]!)
 e000e38:	e201a007 	and	sl, r1, #7
 e000e3c:	e20c3007 	and	r3, ip, #7
 e000e40:	e153000a 	cmp	r3, sl
 e000e44:	1a0000f1 	bne	e001210 <memcpy+0x450>
 e000e48:	eeb00a40 	vmov.f32	s0, s0
 e000e4c:	e1b0ae8c 	lsls	sl, ip, #29
 e000e50:	0a000008 	beq	e000e78 <memcpy+0xb8>
 e000e54:	e27aa000 	rsbs	sl, sl, #0
 e000e58:	e0422eaa 	sub	r2, r2, sl, lsr #29
 e000e5c:	44913004 	ldrmi	r3, [r1], #4
 e000e60:	448c3004 	strmi	r3, [ip], #4
 e000e64:	e1b0a10a 	lsls	sl, sl, #2
 e000e68:	20d130b2 	ldrhcs	r3, [r1], #2
 e000e6c:	14d1a001 	ldrbne	sl, [r1], #1
 e000e70:	20cc30b2 	strhcs	r3, [ip], #2
 e000e74:	14cca001 	strbne	sl, [ip], #1
 e000e78:	e252a040 	subs	sl, r2, #64	; 0x40
 e000e7c:	ba000017 	blt	e000ee0 <memcpy+0x120>
 e000e80:	e35a0c02 	cmp	sl, #512	; 0x200
 e000e84:	aa000032 	bge	e000f54 <memcpy+0x194>
 e000e88:	ed910b00 	vldr	d0, [r1]
 e000e8c:	e25aa040 	subs	sl, sl, #64	; 0x40
 e000e90:	ed911b02 	vldr	d1, [r1, #8]
 e000e94:	ed8c0b00 	vstr	d0, [ip]
 e000e98:	ed910b04 	vldr	d0, [r1, #16]
 e000e9c:	ed8c1b02 	vstr	d1, [ip, #8]
 e000ea0:	ed911b06 	vldr	d1, [r1, #24]
 e000ea4:	ed8c0b04 	vstr	d0, [ip, #16]
 e000ea8:	ed910b08 	vldr	d0, [r1, #32]
 e000eac:	ed8c1b06 	vstr	d1, [ip, #24]
 e000eb0:	ed911b0a 	vldr	d1, [r1, #40]	; 0x28
 e000eb4:	ed8c0b08 	vstr	d0, [ip, #32]
 e000eb8:	ed910b0c 	vldr	d0, [r1, #48]	; 0x30
 e000ebc:	ed8c1b0a 	vstr	d1, [ip, #40]	; 0x28
 e000ec0:	ed911b0e 	vldr	d1, [r1, #56]	; 0x38
 e000ec4:	ed8c0b0c 	vstr	d0, [ip, #48]	; 0x30
 e000ec8:	e2811040 	add	r1, r1, #64	; 0x40
 e000ecc:	ed8c1b0e 	vstr	d1, [ip, #56]	; 0x38
 e000ed0:	e28cc040 	add	ip, ip, #64	; 0x40
 e000ed4:	aaffffeb 	bge	e000e88 <memcpy+0xc8>
 e000ed8:	e31a003f 	tst	sl, #63	; 0x3f
 e000edc:	0a00001a 	beq	e000f4c <memcpy+0x18c>
 e000ee0:	e20a3038 	and	r3, sl, #56	; 0x38
 e000ee4:	e08cc003 	add	ip, ip, r3
 e000ee8:	e0811003 	add	r1, r1, r3
 e000eec:	e2633034 	rsb	r3, r3, #52	; 0x34
 e000ef0:	e08ff003 	add	pc, pc, r3
 e000ef4:	ed110b0e 	vldr	d0, [r1, #-56]	; 0xffffffc8
 e000ef8:	ed0c0b0e 	vstr	d0, [ip, #-56]	; 0xffffffc8
 e000efc:	ed110b0c 	vldr	d0, [r1, #-48]	; 0xffffffd0
 e000f00:	ed0c0b0c 	vstr	d0, [ip, #-48]	; 0xffffffd0
 e000f04:	ed110b0a 	vldr	d0, [r1, #-40]	; 0xffffffd8
 e000f08:	ed0c0b0a 	vstr	d0, [ip, #-40]	; 0xffffffd8
 e000f0c:	ed110b08 	vldr	d0, [r1, #-32]	; 0xffffffe0
 e000f10:	ed0c0b08 	vstr	d0, [ip, #-32]	; 0xffffffe0
 e000f14:	ed110b06 	vldr	d0, [r1, #-24]	; 0xffffffe8
 e000f18:	ed0c0b06 	vstr	d0, [ip, #-24]	; 0xffffffe8
 e000f1c:	ed110b04 	vldr	d0, [r1, #-16]
 e000f20:	ed0c0b04 	vstr	d0, [ip, #-16]
 e000f24:	ed110b02 	vldr	d0, [r1, #-8]
 e000f28:	ed0c0b02 	vstr	d0, [ip, #-8]
 e000f2c:	e31a0004 	tst	sl, #4
 e000f30:	14913004 	ldrne	r3, [r1], #4
 e000f34:	148c3004 	strne	r3, [ip], #4
 e000f38:	e1b0af8a 	lsls	sl, sl, #31
 e000f3c:	20d130b2 	ldrhcs	r3, [r1], #2
 e000f40:	15d1a000 	ldrbne	sl, [r1]
 e000f44:	20cc30b2 	strhcs	r3, [ip], #2
 e000f48:	15cca000 	strbne	sl, [ip]
 e000f4c:	e49da004 	pop	{sl}		; (ldr sl, [sp], #4)
 e000f50:	e12fff1e 	bx	lr
 e000f54:	ed913b00 	vldr	d3, [r1]
 e000f58:	ed914b10 	vldr	d4, [r1, #64]	; 0x40
 e000f5c:	ed915b20 	vldr	d5, [r1, #128]	; 0x80
 e000f60:	ed916b30 	vldr	d6, [r1, #192]	; 0xc0
 e000f64:	ed917b40 	vldr	d7, [r1, #256]	; 0x100
 e000f68:	ed910b02 	vldr	d0, [r1, #8]
 e000f6c:	ed911b04 	vldr	d1, [r1, #16]
 e000f70:	ed912b06 	vldr	d2, [r1, #24]
 e000f74:	e2811020 	add	r1, r1, #32
 e000f78:	e25aad0a 	subs	sl, sl, #640	; 0x280
 e000f7c:	ba000055 	blt	e0010d8 <memcpy+0x318>
 e000f80:	ed8c3b00 	vstr	d3, [ip]
 e000f84:	ed913b00 	vldr	d3, [r1]
 e000f88:	ed8c0b02 	vstr	d0, [ip, #8]
 e000f8c:	ed910b02 	vldr	d0, [r1, #8]
 e000f90:	ed8c1b04 	vstr	d1, [ip, #16]
 e000f94:	ed911b04 	vldr	d1, [r1, #16]
 e000f98:	ed8c2b06 	vstr	d2, [ip, #24]
 e000f9c:	ed912b06 	vldr	d2, [r1, #24]
 e000fa0:	ed8c3b08 	vstr	d3, [ip, #32]
 e000fa4:	ed913b48 	vldr	d3, [r1, #288]	; 0x120
 e000fa8:	ed8c0b0a 	vstr	d0, [ip, #40]	; 0x28
 e000fac:	ed910b0a 	vldr	d0, [r1, #40]	; 0x28
 e000fb0:	ed8c1b0c 	vstr	d1, [ip, #48]	; 0x30
 e000fb4:	ed911b0c 	vldr	d1, [r1, #48]	; 0x30
 e000fb8:	ed8c2b0e 	vstr	d2, [ip, #56]	; 0x38
 e000fbc:	ed912b0e 	vldr	d2, [r1, #56]	; 0x38
 e000fc0:	ed8c4b10 	vstr	d4, [ip, #64]	; 0x40
 e000fc4:	ed914b10 	vldr	d4, [r1, #64]	; 0x40
 e000fc8:	ed8c0b12 	vstr	d0, [ip, #72]	; 0x48
 e000fcc:	ed910b12 	vldr	d0, [r1, #72]	; 0x48
 e000fd0:	ed8c1b14 	vstr	d1, [ip, #80]	; 0x50
 e000fd4:	ed911b14 	vldr	d1, [r1, #80]	; 0x50
 e000fd8:	ed8c2b16 	vstr	d2, [ip, #88]	; 0x58
 e000fdc:	ed912b16 	vldr	d2, [r1, #88]	; 0x58
 e000fe0:	ed8c4b18 	vstr	d4, [ip, #96]	; 0x60
 e000fe4:	ed914b58 	vldr	d4, [r1, #352]	; 0x160
 e000fe8:	ed8c0b1a 	vstr	d0, [ip, #104]	; 0x68
 e000fec:	ed910b1a 	vldr	d0, [r1, #104]	; 0x68
 e000ff0:	ed8c1b1c 	vstr	d1, [ip, #112]	; 0x70
 e000ff4:	ed911b1c 	vldr	d1, [r1, #112]	; 0x70
 e000ff8:	ed8c2b1e 	vstr	d2, [ip, #120]	; 0x78
 e000ffc:	ed912b1e 	vldr	d2, [r1, #120]	; 0x78
 e001000:	ed8c5b20 	vstr	d5, [ip, #128]	; 0x80
 e001004:	ed915b20 	vldr	d5, [r1, #128]	; 0x80
 e001008:	ed8c0b22 	vstr	d0, [ip, #136]	; 0x88
 e00100c:	ed910b22 	vldr	d0, [r1, #136]	; 0x88
 e001010:	ed8c1b24 	vstr	d1, [ip, #144]	; 0x90
 e001014:	ed911b24 	vldr	d1, [r1, #144]	; 0x90
 e001018:	ed8c2b26 	vstr	d2, [ip, #152]	; 0x98
 e00101c:	ed912b26 	vldr	d2, [r1, #152]	; 0x98
 e001020:	ed8c5b28 	vstr	d5, [ip, #160]	; 0xa0
 e001024:	ed915b68 	vldr	d5, [r1, #416]	; 0x1a0
 e001028:	ed8c0b2a 	vstr	d0, [ip, #168]	; 0xa8
 e00102c:	ed910b2a 	vldr	d0, [r1, #168]	; 0xa8
 e001030:	ed8c1b2c 	vstr	d1, [ip, #176]	; 0xb0
 e001034:	ed911b2c 	vldr	d1, [r1, #176]	; 0xb0
 e001038:	ed8c2b2e 	vstr	d2, [ip, #184]	; 0xb8
 e00103c:	ed912b2e 	vldr	d2, [r1, #184]	; 0xb8
 e001040:	e28cc0c0 	add	ip, ip, #192	; 0xc0
 e001044:	e28110c0 	add	r1, r1, #192	; 0xc0
 e001048:	ed8c6b00 	vstr	d6, [ip]
 e00104c:	ed916b00 	vldr	d6, [r1]
 e001050:	ed8c0b02 	vstr	d0, [ip, #8]
 e001054:	ed910b02 	vldr	d0, [r1, #8]
 e001058:	ed8c1b04 	vstr	d1, [ip, #16]
 e00105c:	ed911b04 	vldr	d1, [r1, #16]
 e001060:	ed8c2b06 	vstr	d2, [ip, #24]
 e001064:	ed912b06 	vldr	d2, [r1, #24]
 e001068:	ed8c6b08 	vstr	d6, [ip, #32]
 e00106c:	ed916b48 	vldr	d6, [r1, #288]	; 0x120
 e001070:	ed8c0b0a 	vstr	d0, [ip, #40]	; 0x28
 e001074:	ed910b0a 	vldr	d0, [r1, #40]	; 0x28
 e001078:	ed8c1b0c 	vstr	d1, [ip, #48]	; 0x30
 e00107c:	ed911b0c 	vldr	d1, [r1, #48]	; 0x30
 e001080:	ed8c2b0e 	vstr	d2, [ip, #56]	; 0x38
 e001084:	ed912b0e 	vldr	d2, [r1, #56]	; 0x38
 e001088:	ed8c7b10 	vstr	d7, [ip, #64]	; 0x40
 e00108c:	ed917b10 	vldr	d7, [r1, #64]	; 0x40
 e001090:	ed8c0b12 	vstr	d0, [ip, #72]	; 0x48
 e001094:	ed910b12 	vldr	d0, [r1, #72]	; 0x48
 e001098:	ed8c1b14 	vstr	d1, [ip, #80]	; 0x50
 e00109c:	ed911b14 	vldr	d1, [r1, #80]	; 0x50
 e0010a0:	ed8c2b16 	vstr	d2, [ip, #88]	; 0x58
 e0010a4:	ed912b16 	vldr	d2, [r1, #88]	; 0x58
 e0010a8:	ed8c7b18 	vstr	d7, [ip, #96]	; 0x60
 e0010ac:	ed917b58 	vldr	d7, [r1, #352]	; 0x160
 e0010b0:	ed8c0b1a 	vstr	d0, [ip, #104]	; 0x68
 e0010b4:	ed910b1a 	vldr	d0, [r1, #104]	; 0x68
 e0010b8:	ed8c1b1c 	vstr	d1, [ip, #112]	; 0x70
 e0010bc:	ed911b1c 	vldr	d1, [r1, #112]	; 0x70
 e0010c0:	ed8c2b1e 	vstr	d2, [ip, #120]	; 0x78
 e0010c4:	ed912b1e 	vldr	d2, [r1, #120]	; 0x78
 e0010c8:	e28cc080 	add	ip, ip, #128	; 0x80
 e0010cc:	e2811080 	add	r1, r1, #128	; 0x80
 e0010d0:	e25aad05 	subs	sl, sl, #320	; 0x140
 e0010d4:	aaffffa9 	bge	e000f80 <memcpy+0x1c0>
 e0010d8:	ed8c3b00 	vstr	d3, [ip]
 e0010dc:	ed913b00 	vldr	d3, [r1]
 e0010e0:	ed8c0b02 	vstr	d0, [ip, #8]
 e0010e4:	ed910b02 	vldr	d0, [r1, #8]
 e0010e8:	ed8c1b04 	vstr	d1, [ip, #16]
 e0010ec:	ed911b04 	vldr	d1, [r1, #16]
 e0010f0:	ed8c2b06 	vstr	d2, [ip, #24]
 e0010f4:	ed912b06 	vldr	d2, [r1, #24]
 e0010f8:	ed8c3b08 	vstr	d3, [ip, #32]
 e0010fc:	ed8c0b0a 	vstr	d0, [ip, #40]	; 0x28
 e001100:	ed910b0a 	vldr	d0, [r1, #40]	; 0x28
 e001104:	ed8c1b0c 	vstr	d1, [ip, #48]	; 0x30
 e001108:	ed911b0c 	vldr	d1, [r1, #48]	; 0x30
 e00110c:	ed8c2b0e 	vstr	d2, [ip, #56]	; 0x38
 e001110:	ed912b0e 	vldr	d2, [r1, #56]	; 0x38
 e001114:	ed8c4b10 	vstr	d4, [ip, #64]	; 0x40
 e001118:	ed914b10 	vldr	d4, [r1, #64]	; 0x40
 e00111c:	ed8c0b12 	vstr	d0, [ip, #72]	; 0x48
 e001120:	ed910b12 	vldr	d0, [r1, #72]	; 0x48
 e001124:	ed8c1b14 	vstr	d1, [ip, #80]	; 0x50
 e001128:	ed911b14 	vldr	d1, [r1, #80]	; 0x50
 e00112c:	ed8c2b16 	vstr	d2, [ip, #88]	; 0x58
 e001130:	ed912b16 	vldr	d2, [r1, #88]	; 0x58
 e001134:	ed8c4b18 	vstr	d4, [ip, #96]	; 0x60
 e001138:	ed8c0b1a 	vstr	d0, [ip, #104]	; 0x68
 e00113c:	ed910b1a 	vldr	d0, [r1, #104]	; 0x68
 e001140:	ed8c1b1c 	vstr	d1, [ip, #112]	; 0x70
 e001144:	ed911b1c 	vldr	d1, [r1, #112]	; 0x70
 e001148:	ed8c2b1e 	vstr	d2, [ip, #120]	; 0x78
 e00114c:	ed912b1e 	vldr	d2, [r1, #120]	; 0x78
 e001150:	ed8c5b20 	vstr	d5, [ip, #128]	; 0x80
 e001154:	ed915b20 	vldr	d5, [r1, #128]	; 0x80
 e001158:	ed8c0b22 	vstr	d0, [ip, #136]	; 0x88
 e00115c:	ed910b22 	vldr	d0, [r1, #136]	; 0x88
 e001160:	ed8c1b24 	vstr	d1, [ip, #144]	; 0x90
 e001164:	ed911b24 	vldr	d1, [r1, #144]	; 0x90
 e001168:	ed8c2b26 	vstr	d2, [ip, #152]	; 0x98
 e00116c:	ed912b26 	vldr	d2, [r1, #152]	; 0x98
 e001170:	ed8c5b28 	vstr	d5, [ip, #160]	; 0xa0
 e001174:	ed8c0b2a 	vstr	d0, [ip, #168]	; 0xa8
 e001178:	ed910b2a 	vldr	d0, [r1, #168]	; 0xa8
 e00117c:	ed8c1b2c 	vstr	d1, [ip, #176]	; 0xb0
 e001180:	ed911b2c 	vldr	d1, [r1, #176]	; 0xb0
 e001184:	ed8c2b2e 	vstr	d2, [ip, #184]	; 0xb8
 e001188:	ed912b2e 	vldr	d2, [r1, #184]	; 0xb8
 e00118c:	e28110c0 	add	r1, r1, #192	; 0xc0
 e001190:	e28cc0c0 	add	ip, ip, #192	; 0xc0
 e001194:	ed8c6b00 	vstr	d6, [ip]
 e001198:	ed916b00 	vldr	d6, [r1]
 e00119c:	ed8c0b02 	vstr	d0, [ip, #8]
 e0011a0:	ed910b02 	vldr	d0, [r1, #8]
 e0011a4:	ed8c1b04 	vstr	d1, [ip, #16]
 e0011a8:	ed911b04 	vldr	d1, [r1, #16]
 e0011ac:	ed8c2b06 	vstr	d2, [ip, #24]
 e0011b0:	ed912b06 	vldr	d2, [r1, #24]
 e0011b4:	ed8c6b08 	vstr	d6, [ip, #32]
 e0011b8:	ed8c0b0a 	vstr	d0, [ip, #40]	; 0x28
 e0011bc:	ed910b0a 	vldr	d0, [r1, #40]	; 0x28
 e0011c0:	ed8c1b0c 	vstr	d1, [ip, #48]	; 0x30
 e0011c4:	ed911b0c 	vldr	d1, [r1, #48]	; 0x30
 e0011c8:	ed8c2b0e 	vstr	d2, [ip, #56]	; 0x38
 e0011cc:	ed912b0e 	vldr	d2, [r1, #56]	; 0x38
 e0011d0:	ed8c7b10 	vstr	d7, [ip, #64]	; 0x40
 e0011d4:	ed917b10 	vldr	d7, [r1, #64]	; 0x40
 e0011d8:	ed8c0b12 	vstr	d0, [ip, #72]	; 0x48
 e0011dc:	ed910b12 	vldr	d0, [r1, #72]	; 0x48
 e0011e0:	ed8c1b14 	vstr	d1, [ip, #80]	; 0x50
 e0011e4:	ed911b14 	vldr	d1, [r1, #80]	; 0x50
 e0011e8:	ed8c2b16 	vstr	d2, [ip, #88]	; 0x58
 e0011ec:	ed912b16 	vldr	d2, [r1, #88]	; 0x58
 e0011f0:	ed8c7b18 	vstr	d7, [ip, #96]	; 0x60
 e0011f4:	e2811060 	add	r1, r1, #96	; 0x60
 e0011f8:	ed8c0b1a 	vstr	d0, [ip, #104]	; 0x68
 e0011fc:	ed8c1b1c 	vstr	d1, [ip, #112]	; 0x70
 e001200:	ed8c2b1e 	vstr	d2, [ip, #120]	; 0x78
 e001204:	e28cc080 	add	ip, ip, #128	; 0x80
 e001208:	e28aad05 	add	sl, sl, #320	; 0x140
 e00120c:	eaffff1d 	b	e000e88 <memcpy+0xc8>
 e001210:	f5d1f000 	pld	[r1]
 e001214:	f5d1f040 	pld	[r1, #64]	; 0x40
 e001218:	e1b0ae8c 	lsls	sl, ip, #29
 e00121c:	f5d1f080 	pld	[r1, #128]	; 0x80
 e001220:	0a000008 	beq	e001248 <memcpy+0x488>
 e001224:	e27aa000 	rsbs	sl, sl, #0
 e001228:	e0422eaa 	sub	r2, r2, sl, lsr #29
 e00122c:	44913004 	ldrmi	r3, [r1], #4
 e001230:	448c3004 	strmi	r3, [ip], #4
 e001234:	e1b0a10a 	lsls	sl, sl, #2
 e001238:	14d13001 	ldrbne	r3, [r1], #1
 e00123c:	20d1a0b2 	ldrhcs	sl, [r1], #2
 e001240:	14cc3001 	strbne	r3, [ip], #1
 e001244:	20cca0b2 	strhcs	sl, [ip], #2
 e001248:	f5d1f0c0 	pld	[r1, #192]	; 0xc0
 e00124c:	e2522040 	subs	r2, r2, #64	; 0x40
 e001250:	449da004 	popmi	{sl}		; (ldrmi sl, [sp], #4)
 e001254:	4afffedc 	bmi	e000dcc <memcpy+0xc>
 e001258:	f5d1f100 	pld	[r1, #256]	; 0x100
 e00125c:	f421020d 	vld1.8	{d0-d3}, [r1]!
 e001260:	f421420d 	vld1.8	{d4-d7}, [r1]!
 e001264:	e2522040 	subs	r2, r2, #64	; 0x40
 e001268:	4a000006 	bmi	e001288 <memcpy+0x4c8>
 e00126c:	f5d1f100 	pld	[r1, #256]	; 0x100
 e001270:	f40c021d 	vst1.8	{d0-d3}, [ip :64]!
 e001274:	f421020d 	vld1.8	{d0-d3}, [r1]!
 e001278:	f40c421d 	vst1.8	{d4-d7}, [ip :64]!
 e00127c:	f421420d 	vld1.8	{d4-d7}, [r1]!
 e001280:	e2522040 	subs	r2, r2, #64	; 0x40
 e001284:	5afffff8 	bpl	e00126c <memcpy+0x4ac>
 e001288:	f40c021d 	vst1.8	{d0-d3}, [ip :64]!
 e00128c:	f40c421d 	vst1.8	{d4-d7}, [ip :64]!
 e001290:	e212203f 	ands	r2, r2, #63	; 0x3f
 e001294:	e49da004 	pop	{sl}		; (ldr sl, [sp], #4)
 e001298:	1afffecb 	bne	e000dcc <memcpy+0xc>
 e00129c:	e12fff1e 	bx	lr

0e0012a0 <memmove>:
 e0012a0:	e1500001 	cmp	r0, r1
 e0012a4:	9a000004 	bls	e0012bc <memmove+0x1c>
 e0012a8:	e0813002 	add	r3, r1, r2
 e0012ac:	e1530000 	cmp	r3, r0
 e0012b0:	80802002 	addhi	r2, r0, r2
 e0012b4:	81a01000 	movhi	r1, r0
 e0012b8:	8a00000d 	bhi	e0012f4 <memmove+0x54>
 e0012bc:	e352000f 	cmp	r2, #15
 e0012c0:	9a000002 	bls	e0012d0 <memmove+0x30>
 e0012c4:	e1813000 	orr	r3, r1, r0
 e0012c8:	e3130003 	tst	r3, #3
 e0012cc:	0a00000b 	beq	e001300 <memmove+0x60>
 e0012d0:	e2403001 	sub	r3, r0, #1
 e0012d4:	e0812002 	add	r2, r1, r2
 e0012d8:	e1510002 	cmp	r1, r2
 e0012dc:	012fff1e 	bxeq	lr
 e0012e0:	e4d1c001 	ldrb	ip, [r1], #1
 e0012e4:	e5e3c001 	strb	ip, [r3, #1]!
 e0012e8:	eafffffa 	b	e0012d8 <memmove+0x38>
 e0012ec:	e573c001 	ldrb	ip, [r3, #-1]!
 e0012f0:	e562c001 	strb	ip, [r2, #-1]!
 e0012f4:	e1520001 	cmp	r2, r1
 e0012f8:	1afffffb 	bne	e0012ec <memmove+0x4c>
 e0012fc:	e12fff1e 	bx	lr
 e001300:	e92d4070 	push	{r4, r5, r6, lr}
 e001304:	e281c010 	add	ip, r1, #16
 e001308:	e2803010 	add	r3, r0, #16
 e00130c:	e1a0e002 	mov	lr, r2
 e001310:	e51c4010 	ldr	r4, [ip, #-16]
 e001314:	e24ee010 	sub	lr, lr, #16
 e001318:	e5034010 	str	r4, [r3, #-16]
 e00131c:	e28cc010 	add	ip, ip, #16
 e001320:	e2833010 	add	r3, r3, #16
 e001324:	e35e000f 	cmp	lr, #15
 e001328:	e51c401c 	ldr	r4, [ip, #-28]	; 0xffffffe4
 e00132c:	e503401c 	str	r4, [r3, #-28]	; 0xffffffe4
 e001330:	e51c4018 	ldr	r4, [ip, #-24]	; 0xffffffe8
 e001334:	e5034018 	str	r4, [r3, #-24]	; 0xffffffe8
 e001338:	e51c4014 	ldr	r4, [ip, #-20]	; 0xffffffec
 e00133c:	e5034014 	str	r4, [r3, #-20]	; 0xffffffec
 e001340:	8afffff2 	bhi	e001310 <memmove+0x70>
 e001344:	e2423010 	sub	r3, r2, #16
 e001348:	e202e00c 	and	lr, r2, #12
 e00134c:	e3c3300f 	bic	r3, r3, #15
 e001350:	e202500f 	and	r5, r2, #15
 e001354:	e2833010 	add	r3, r3, #16
 e001358:	e7e16152 	ubfx	r6, r2, #2, #2
 e00135c:	e081c003 	add	ip, r1, r3
 e001360:	e0803003 	add	r3, r0, r3
 e001364:	e2434004 	sub	r4, r3, #4
 e001368:	e08c100e 	add	r1, ip, lr
 e00136c:	e15c0001 	cmp	ip, r1
 e001370:	1a000009 	bne	e00139c <memmove+0xfc>
 e001374:	e3e02003 	mvn	r2, #3
 e001378:	e083300e 	add	r3, r3, lr
 e00137c:	e2433001 	sub	r3, r3, #1
 e001380:	e0225692 	mla	r2, r2, r6, r5
 e001384:	e0812002 	add	r2, r1, r2
 e001388:	e1510002 	cmp	r1, r2
 e00138c:	08bd8070 	popeq	{r4, r5, r6, pc}
 e001390:	e4d1c001 	ldrb	ip, [r1], #1
 e001394:	e5e3c001 	strb	ip, [r3, #1]!
 e001398:	eafffffa 	b	e001388 <memmove+0xe8>
 e00139c:	e49c2004 	ldr	r2, [ip], #4
 e0013a0:	e5a42004 	str	r2, [r4, #4]!
 e0013a4:	eafffff0 	b	e00136c <memmove+0xcc>

0e0013a8 <memset>:
 e0013a8:	e1a03000 	mov	r3, r0
 e0013ac:	e92d4010 	push	{r4, lr}
 e0013b0:	e1a0e003 	mov	lr, r3
 e0013b4:	e3130003 	tst	r3, #3
 e0013b8:	1a000018 	bne	e001420 <memset+0x78>
 e0013bc:	e3520003 	cmp	r2, #3
 e0013c0:	9a000011 	bls	e00140c <memset+0x64>
 e0013c4:	e6efc071 	uxtb	ip, r1
 e0013c8:	e1a04002 	mov	r4, r2
 e0013cc:	e18cc40c 	orr	ip, ip, ip, lsl #8
 e0013d0:	e18cc80c 	orr	ip, ip, ip, lsl #16
 e0013d4:	e28ee010 	add	lr, lr, #16
 e0013d8:	e354000f 	cmp	r4, #15
 e0013dc:	8a000014 	bhi	e001434 <memset+0x8c>
 e0013e0:	e1a0e222 	lsr	lr, r2, #4
 e0013e4:	e3e0400f 	mvn	r4, #15
 e0013e8:	e0222e94 	mla	r2, r4, lr, r2
 e0013ec:	e083e20e 	add	lr, r3, lr, lsl #4
 e0013f0:	e3c23003 	bic	r3, r2, #3
 e0013f4:	e1a04122 	lsr	r4, r2, #2
 e0013f8:	e08e3003 	add	r3, lr, r3
 e0013fc:	e15e0003 	cmp	lr, r3
 e001400:	1a000011 	bne	e00144c <memset+0xa4>
 e001404:	e3e0c003 	mvn	ip, #3
 e001408:	e022249c 	mla	r2, ip, r4, r2
 e00140c:	e0832002 	add	r2, r3, r2
 e001410:	e1530002 	cmp	r3, r2
 e001414:	08bd8010 	popeq	{r4, pc}
 e001418:	e4c31001 	strb	r1, [r3], #1
 e00141c:	eafffffb 	b	e001410 <memset+0x68>
 e001420:	e3520000 	cmp	r2, #0
 e001424:	08bd8010 	popeq	{r4, pc}
 e001428:	e2422001 	sub	r2, r2, #1
 e00142c:	e4c31001 	strb	r1, [r3], #1
 e001430:	eaffffde 	b	e0013b0 <memset+0x8>
 e001434:	e2444010 	sub	r4, r4, #16
 e001438:	e50ec010 	str	ip, [lr, #-16]
 e00143c:	e50ec00c 	str	ip, [lr, #-12]
 e001440:	e50ec008 	str	ip, [lr, #-8]
 e001444:	e50ec004 	str	ip, [lr, #-4]
 e001448:	eaffffe1 	b	e0013d4 <memset+0x2c>
 e00144c:	e48ec004 	str	ip, [lr], #4
 e001450:	eaffffe9 	b	e0013fc <memset+0x54>

0e001454 <cleanup_glue>:
 e001454:	e92d4070 	push	{r4, r5, r6, lr}
 e001458:	e1a04001 	mov	r4, r1
 e00145c:	e5911000 	ldr	r1, [r1]
 e001460:	e1a05000 	mov	r5, r0
 e001464:	e3510000 	cmp	r1, #0
 e001468:	0a000000 	beq	e001470 <cleanup_glue+0x1c>
 e00146c:	ebfffff8 	bl	e001454 <cleanup_glue>
 e001470:	e1a01004 	mov	r1, r4
 e001474:	e1a00005 	mov	r0, r5
 e001478:	e8bd4070 	pop	{r4, r5, r6, lr}
 e00147c:	ea001b8a 	b	e0082ac <__wrap__free_r>

0e001480 <_reclaim_reent>:
 e001480:	e59f3174 	ldr	r3, [pc, #372]	; e0015fc <_reclaim_reent+0x17c>
 e001484:	e5933000 	ldr	r3, [r3]
 e001488:	e1530000 	cmp	r3, r0
 e00148c:	012fff1e 	bxeq	lr
 e001490:	e5903024 	ldr	r3, [r0, #36]	; 0x24
 e001494:	e92d4070 	push	{r4, r5, r6, lr}
 e001498:	e1a04000 	mov	r4, r0
 e00149c:	e3530000 	cmp	r3, #0
 e0014a0:	0a000009 	beq	e0014cc <_reclaim_reent+0x4c>
 e0014a4:	e593300c 	ldr	r3, [r3, #12]
 e0014a8:	e3530000 	cmp	r3, #0
 e0014ac:	13a05000 	movne	r5, #0
 e0014b0:	1a000045 	bne	e0015cc <_reclaim_reent+0x14c>
 e0014b4:	e5943024 	ldr	r3, [r4, #36]	; 0x24
 e0014b8:	e5931000 	ldr	r1, [r3]
 e0014bc:	e3510000 	cmp	r1, #0
 e0014c0:	0a000001 	beq	e0014cc <_reclaim_reent+0x4c>
 e0014c4:	e1a00004 	mov	r0, r4
 e0014c8:	eb001b77 	bl	e0082ac <__wrap__free_r>
 e0014cc:	e5941014 	ldr	r1, [r4, #20]
 e0014d0:	e3510000 	cmp	r1, #0
 e0014d4:	0a000001 	beq	e0014e0 <_reclaim_reent+0x60>
 e0014d8:	e1a00004 	mov	r0, r4
 e0014dc:	eb001b72 	bl	e0082ac <__wrap__free_r>
 e0014e0:	e5941024 	ldr	r1, [r4, #36]	; 0x24
 e0014e4:	e3510000 	cmp	r1, #0
 e0014e8:	0a000001 	beq	e0014f4 <_reclaim_reent+0x74>
 e0014ec:	e1a00004 	mov	r0, r4
 e0014f0:	eb001b6d 	bl	e0082ac <__wrap__free_r>
 e0014f4:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 e0014f8:	e3510000 	cmp	r1, #0
 e0014fc:	0a000001 	beq	e001508 <_reclaim_reent+0x88>
 e001500:	e1a00004 	mov	r0, r4
 e001504:	eb001b68 	bl	e0082ac <__wrap__free_r>
 e001508:	e594103c 	ldr	r1, [r4, #60]	; 0x3c
 e00150c:	e3510000 	cmp	r1, #0
 e001510:	0a000001 	beq	e00151c <_reclaim_reent+0x9c>
 e001514:	e1a00004 	mov	r0, r4
 e001518:	eb001b63 	bl	e0082ac <__wrap__free_r>
 e00151c:	e5941040 	ldr	r1, [r4, #64]	; 0x40
 e001520:	e3510000 	cmp	r1, #0
 e001524:	0a000001 	beq	e001530 <_reclaim_reent+0xb0>
 e001528:	e1a00004 	mov	r0, r4
 e00152c:	eb001b5e 	bl	e0082ac <__wrap__free_r>
 e001530:	e59410ec 	ldr	r1, [r4, #236]	; 0xec
 e001534:	e3510000 	cmp	r1, #0
 e001538:	0a000001 	beq	e001544 <_reclaim_reent+0xc4>
 e00153c:	e1a00004 	mov	r0, r4
 e001540:	eb001b59 	bl	e0082ac <__wrap__free_r>
 e001544:	e59410e8 	ldr	r1, [r4, #232]	; 0xe8
 e001548:	e3510000 	cmp	r1, #0
 e00154c:	0a000001 	beq	e001558 <_reclaim_reent+0xd8>
 e001550:	e1a00004 	mov	r0, r4
 e001554:	eb001b54 	bl	e0082ac <__wrap__free_r>
 e001558:	e5943048 	ldr	r3, [r4, #72]	; 0x48
 e00155c:	e3530000 	cmp	r3, #0
 e001560:	0a000004 	beq	e001578 <_reclaim_reent+0xf8>
 e001564:	e5931088 	ldr	r1, [r3, #136]	; 0x88
 e001568:	e3510000 	cmp	r1, #0
 e00156c:	0a000001 	beq	e001578 <_reclaim_reent+0xf8>
 e001570:	e1a00004 	mov	r0, r4
 e001574:	eb001b4c 	bl	e0082ac <__wrap__free_r>
 e001578:	e5941034 	ldr	r1, [r4, #52]	; 0x34
 e00157c:	e3510000 	cmp	r1, #0
 e001580:	0a000001 	beq	e00158c <_reclaim_reent+0x10c>
 e001584:	e1a00004 	mov	r0, r4
 e001588:	eb001b47 	bl	e0082ac <__wrap__free_r>
 e00158c:	e5943018 	ldr	r3, [r4, #24]
 e001590:	e3530000 	cmp	r3, #0
 e001594:	08bd8070 	popeq	{r4, r5, r6, pc}
 e001598:	e5943028 	ldr	r3, [r4, #40]	; 0x28
 e00159c:	e1a00004 	mov	r0, r4
 e0015a0:	e12fff33 	blx	r3
 e0015a4:	e59410d8 	ldr	r1, [r4, #216]	; 0xd8
 e0015a8:	e3510000 	cmp	r1, #0
 e0015ac:	08bd8070 	popeq	{r4, r5, r6, pc}
 e0015b0:	e1a00004 	mov	r0, r4
 e0015b4:	e8bd4070 	pop	{r4, r5, r6, lr}
 e0015b8:	eaffffa5 	b	e001454 <cleanup_glue>
 e0015bc:	e7911005 	ldr	r1, [r1, r5]
 e0015c0:	e3510000 	cmp	r1, #0
 e0015c4:	1a000007 	bne	e0015e8 <_reclaim_reent+0x168>
 e0015c8:	e2855004 	add	r5, r5, #4
 e0015cc:	e5943024 	ldr	r3, [r4, #36]	; 0x24
 e0015d0:	e3550080 	cmp	r5, #128	; 0x80
 e0015d4:	e593100c 	ldr	r1, [r3, #12]
 e0015d8:	1afffff7 	bne	e0015bc <_reclaim_reent+0x13c>
 e0015dc:	e1a00004 	mov	r0, r4
 e0015e0:	eb001b31 	bl	e0082ac <__wrap__free_r>
 e0015e4:	eaffffb2 	b	e0014b4 <_reclaim_reent+0x34>
 e0015e8:	e5916000 	ldr	r6, [r1]
 e0015ec:	e1a00004 	mov	r0, r4
 e0015f0:	eb001b2d 	bl	e0082ac <__wrap__free_r>
 e0015f4:	e1a01006 	mov	r1, r6
 e0015f8:	eafffff0 	b	e0015c0 <_reclaim_reent+0x140>
 e0015fc:	60095000 	.word	0x60095000

0e001600 <__sread>:
 e001600:	e92d4010 	push	{r4, lr}
 e001604:	e1a04001 	mov	r4, r1
 e001608:	e1d110fe 	ldrsh	r1, [r1, #14]
 e00160c:	eb001054 	bl	e005764 <_read_r>
 e001610:	e3500000 	cmp	r0, #0
 e001614:	a5943054 	ldrge	r3, [r4, #84]	; 0x54
 e001618:	b1d430bc 	ldrhlt	r3, [r4, #12]
 e00161c:	a0833000 	addge	r3, r3, r0
 e001620:	a5843054 	strge	r3, [r4, #84]	; 0x54
 e001624:	b3c33a01 	biclt	r3, r3, #4096	; 0x1000
 e001628:	b1c430bc 	strhlt	r3, [r4, #12]
 e00162c:	e8bd8010 	pop	{r4, pc}

0e001630 <__seofread>:
 e001630:	e3a00000 	mov	r0, #0
 e001634:	e12fff1e 	bx	lr

0e001638 <__swrite>:
 e001638:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e00163c:	e1a07003 	mov	r7, r3
 e001640:	e1d130bc 	ldrh	r3, [r1, #12]
 e001644:	e1a05000 	mov	r5, r0
 e001648:	e1a04001 	mov	r4, r1
 e00164c:	e1a06002 	mov	r6, r2
 e001650:	e3130c01 	tst	r3, #256	; 0x100
 e001654:	0a000003 	beq	e001668 <__swrite+0x30>
 e001658:	e1d110fe 	ldrsh	r1, [r1, #14]
 e00165c:	e3a03002 	mov	r3, #2
 e001660:	e3a02000 	mov	r2, #0
 e001664:	eb000c07 	bl	e004688 <_lseek_r>
 e001668:	e1d430bc 	ldrh	r3, [r4, #12]
 e00166c:	e1a02006 	mov	r2, r6
 e001670:	e1d410fe 	ldrsh	r1, [r4, #14]
 e001674:	e1a00005 	mov	r0, r5
 e001678:	e3c33a01 	bic	r3, r3, #4096	; 0x1000
 e00167c:	e1c430bc 	strh	r3, [r4, #12]
 e001680:	e1a03007 	mov	r3, r7
 e001684:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 e001688:	ea00054e 	b	e002bc8 <_write_r>

0e00168c <__sseek>:
 e00168c:	e92d4010 	push	{r4, lr}
 e001690:	e1a04001 	mov	r4, r1
 e001694:	e1d110fe 	ldrsh	r1, [r1, #14]
 e001698:	eb000bfa 	bl	e004688 <_lseek_r>
 e00169c:	e3700001 	cmn	r0, #1
 e0016a0:	e1d430bc 	ldrh	r3, [r4, #12]
 e0016a4:	15840054 	strne	r0, [r4, #84]	; 0x54
 e0016a8:	03c33a01 	biceq	r3, r3, #4096	; 0x1000
 e0016ac:	13833a01 	orrne	r3, r3, #4096	; 0x1000
 e0016b0:	01c430bc 	strheq	r3, [r4, #12]
 e0016b4:	11c430bc 	strhne	r3, [r4, #12]
 e0016b8:	e8bd8010 	pop	{r4, pc}

0e0016bc <__sclose>:
 e0016bc:	e1d110fe 	ldrsh	r1, [r1, #14]
 e0016c0:	ea0005a1 	b	e002d4c <_close_r>
	...
 e0016e0:	eba2 0003 	sub.w	r0, r2, r3
 e0016e4:	4770      	bx	lr
 e0016e6:	bf00      	nop

0e0016e8 <strcmp>:
 e0016e8:	7802      	ldrb	r2, [r0, #0]
 e0016ea:	780b      	ldrb	r3, [r1, #0]
 e0016ec:	2a01      	cmp	r2, #1
 e0016ee:	bf28      	it	cs
 e0016f0:	429a      	cmpcs	r2, r3
 e0016f2:	d1f5      	bne.n	e0016e0 <__sclose+0x24>
 e0016f4:	e96d 4504 	strd	r4, r5, [sp, #-16]!
 e0016f8:	ea40 0401 	orr.w	r4, r0, r1
 e0016fc:	e9cd 6702 	strd	r6, r7, [sp, #8]
 e001700:	f06f 0c00 	mvn.w	ip, #0
 e001704:	ea4f 7244 	mov.w	r2, r4, lsl #29
 e001708:	b312      	cbz	r2, e001750 <strcmp+0x68>
 e00170a:	ea80 0401 	eor.w	r4, r0, r1
 e00170e:	f014 0f07 	tst.w	r4, #7
 e001712:	d16a      	bne.n	e0017ea <strcmp+0x102>
 e001714:	f000 0407 	and.w	r4, r0, #7
 e001718:	f020 0007 	bic.w	r0, r0, #7
 e00171c:	f004 0503 	and.w	r5, r4, #3
 e001720:	f021 0107 	bic.w	r1, r1, #7
 e001724:	ea4f 05c5 	mov.w	r5, r5, lsl #3
 e001728:	e8f0 2304 	ldrd	r2, r3, [r0], #16
 e00172c:	f014 0f04 	tst.w	r4, #4
 e001730:	e8f1 6704 	ldrd	r6, r7, [r1], #16
 e001734:	fa0c f405 	lsl.w	r4, ip, r5
 e001738:	ea62 0204 	orn	r2, r2, r4
 e00173c:	ea66 0604 	orn	r6, r6, r4
 e001740:	d00a      	beq.n	e001758 <strcmp+0x70>
 e001742:	ea63 0304 	orn	r3, r3, r4
 e001746:	4662      	mov	r2, ip
 e001748:	ea67 0704 	orn	r7, r7, r4
 e00174c:	4666      	mov	r6, ip
 e00174e:	e003      	b.n	e001758 <strcmp+0x70>
 e001750:	e8f0 2304 	ldrd	r2, r3, [r0], #16
 e001754:	e8f1 6704 	ldrd	r6, r7, [r1], #16
 e001758:	fa82 f54c 	uadd8	r5, r2, ip
 e00175c:	ea82 0406 	eor.w	r4, r2, r6
 e001760:	faa4 f48c 	sel	r4, r4, ip
 e001764:	bb6c      	cbnz	r4, e0017c2 <strcmp+0xda>
 e001766:	fa83 f54c 	uadd8	r5, r3, ip
 e00176a:	ea83 0507 	eor.w	r5, r3, r7
 e00176e:	faa5 f58c 	sel	r5, r5, ip
 e001772:	b995      	cbnz	r5, e00179a <strcmp+0xb2>
 e001774:	e950 2302 	ldrd	r2, r3, [r0, #-8]
 e001778:	e951 6702 	ldrd	r6, r7, [r1, #-8]
 e00177c:	fa82 f54c 	uadd8	r5, r2, ip
 e001780:	ea82 0406 	eor.w	r4, r2, r6
 e001784:	faa4 f48c 	sel	r4, r4, ip
 e001788:	fa83 f54c 	uadd8	r5, r3, ip
 e00178c:	ea83 0507 	eor.w	r5, r3, r7
 e001790:	faa5 f58c 	sel	r5, r5, ip
 e001794:	4325      	orrs	r5, r4
 e001796:	d0db      	beq.n	e001750 <strcmp+0x68>
 e001798:	b99c      	cbnz	r4, e0017c2 <strcmp+0xda>
 e00179a:	ba2d      	rev	r5, r5
 e00179c:	fab5 f485 	clz	r4, r5
 e0017a0:	f024 0407 	bic.w	r4, r4, #7
 e0017a4:	fa27 f104 	lsr.w	r1, r7, r4
 e0017a8:	e9dd 6702 	ldrd	r6, r7, [sp, #8]
 e0017ac:	fa23 f304 	lsr.w	r3, r3, r4
 e0017b0:	f003 00ff 	and.w	r0, r3, #255	; 0xff
 e0017b4:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 e0017b8:	e8fd 4504 	ldrd	r4, r5, [sp], #16
 e0017bc:	eba0 0001 	sub.w	r0, r0, r1
 e0017c0:	4770      	bx	lr
 e0017c2:	ba24      	rev	r4, r4
 e0017c4:	fab4 f484 	clz	r4, r4
 e0017c8:	f024 0407 	bic.w	r4, r4, #7
 e0017cc:	fa26 f104 	lsr.w	r1, r6, r4
 e0017d0:	e9dd 6702 	ldrd	r6, r7, [sp, #8]
 e0017d4:	fa22 f204 	lsr.w	r2, r2, r4
 e0017d8:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 e0017dc:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 e0017e0:	e8fd 4504 	ldrd	r4, r5, [sp], #16
 e0017e4:	eba0 0001 	sub.w	r0, r0, r1
 e0017e8:	4770      	bx	lr
 e0017ea:	f014 0f03 	tst.w	r4, #3
 e0017ee:	d13c      	bne.n	e00186a <strcmp+0x182>
 e0017f0:	f010 0403 	ands.w	r4, r0, #3
 e0017f4:	d128      	bne.n	e001848 <strcmp+0x160>
 e0017f6:	f850 2b08 	ldr.w	r2, [r0], #8
 e0017fa:	f851 3b08 	ldr.w	r3, [r1], #8
 e0017fe:	fa82 f54c 	uadd8	r5, r2, ip
 e001802:	ea82 0503 	eor.w	r5, r2, r3
 e001806:	faa5 f58c 	sel	r5, r5, ip
 e00180a:	b95d      	cbnz	r5, e001824 <strcmp+0x13c>
 e00180c:	f850 2c04 	ldr.w	r2, [r0, #-4]
 e001810:	f851 3c04 	ldr.w	r3, [r1, #-4]
 e001814:	fa82 f54c 	uadd8	r5, r2, ip
 e001818:	ea82 0503 	eor.w	r5, r2, r3
 e00181c:	faa5 f58c 	sel	r5, r5, ip
 e001820:	2d00      	cmp	r5, #0
 e001822:	d0e8      	beq.n	e0017f6 <strcmp+0x10e>
 e001824:	ba2d      	rev	r5, r5
 e001826:	fab5 f485 	clz	r4, r5
 e00182a:	f024 0407 	bic.w	r4, r4, #7
 e00182e:	fa23 f104 	lsr.w	r1, r3, r4
 e001832:	fa22 f204 	lsr.w	r2, r2, r4
 e001836:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 e00183a:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 e00183e:	e8fd 4504 	ldrd	r4, r5, [sp], #16
 e001842:	eba0 0001 	sub.w	r0, r0, r1
 e001846:	4770      	bx	lr
 e001848:	ea4f 04c4 	mov.w	r4, r4, lsl #3
 e00184c:	f020 0003 	bic.w	r0, r0, #3
 e001850:	f850 2b08 	ldr.w	r2, [r0], #8
 e001854:	f021 0103 	bic.w	r1, r1, #3
 e001858:	f851 3b08 	ldr.w	r3, [r1], #8
 e00185c:	fa0c f404 	lsl.w	r4, ip, r4
 e001860:	ea62 0204 	orn	r2, r2, r4
 e001864:	ea63 0304 	orn	r3, r3, r4
 e001868:	e7c9      	b.n	e0017fe <strcmp+0x116>
 e00186a:	f010 0403 	ands.w	r4, r0, #3
 e00186e:	d01a      	beq.n	e0018a6 <strcmp+0x1be>
 e001870:	eba1 0104 	sub.w	r1, r1, r4
 e001874:	f020 0003 	bic.w	r0, r0, #3
 e001878:	07e4      	lsls	r4, r4, #31
 e00187a:	f850 2b04 	ldr.w	r2, [r0], #4
 e00187e:	d006      	beq.n	e00188e <strcmp+0x1a6>
 e001880:	d20f      	bcs.n	e0018a2 <strcmp+0x1ba>
 e001882:	788b      	ldrb	r3, [r1, #2]
 e001884:	fa5f f4a2 	uxtb.w	r4, r2, ror #16
 e001888:	1ae4      	subs	r4, r4, r3
 e00188a:	d106      	bne.n	e00189a <strcmp+0x1b2>
 e00188c:	b12b      	cbz	r3, e00189a <strcmp+0x1b2>
 e00188e:	78cb      	ldrb	r3, [r1, #3]
 e001890:	fa5f f4b2 	uxtb.w	r4, r2, ror #24
 e001894:	1ae4      	subs	r4, r4, r3
 e001896:	d100      	bne.n	e00189a <strcmp+0x1b2>
 e001898:	b91b      	cbnz	r3, e0018a2 <strcmp+0x1ba>
 e00189a:	4620      	mov	r0, r4
 e00189c:	f85d 4b10 	ldr.w	r4, [sp], #16
 e0018a0:	4770      	bx	lr
 e0018a2:	f101 0104 	add.w	r1, r1, #4
 e0018a6:	f850 2b04 	ldr.w	r2, [r0], #4
 e0018aa:	07cc      	lsls	r4, r1, #31
 e0018ac:	f021 0103 	bic.w	r1, r1, #3
 e0018b0:	f851 3b04 	ldr.w	r3, [r1], #4
 e0018b4:	d848      	bhi.n	e001948 <strcmp+0x260>
 e0018b6:	d224      	bcs.n	e001902 <strcmp+0x21a>
 e0018b8:	f022 447f 	bic.w	r4, r2, #4278190080	; 0xff000000
 e0018bc:	fa82 f54c 	uadd8	r5, r2, ip
 e0018c0:	ea94 2513 	eors.w	r5, r4, r3, lsr #8
 e0018c4:	faa5 f58c 	sel	r5, r5, ip
 e0018c8:	d10a      	bne.n	e0018e0 <strcmp+0x1f8>
 e0018ca:	b965      	cbnz	r5, e0018e6 <strcmp+0x1fe>
 e0018cc:	f851 3b04 	ldr.w	r3, [r1], #4
 e0018d0:	ea84 0402 	eor.w	r4, r4, r2
 e0018d4:	ebb4 6f03 	cmp.w	r4, r3, lsl #24
 e0018d8:	d10e      	bne.n	e0018f8 <strcmp+0x210>
 e0018da:	f850 2b04 	ldr.w	r2, [r0], #4
 e0018de:	e7eb      	b.n	e0018b8 <strcmp+0x1d0>
 e0018e0:	ea4f 2313 	mov.w	r3, r3, lsr #8
 e0018e4:	e055      	b.n	e001992 <strcmp+0x2aa>
 e0018e6:	f035 457f 	bics.w	r5, r5, #4278190080	; 0xff000000
 e0018ea:	d14d      	bne.n	e001988 <strcmp+0x2a0>
 e0018ec:	7808      	ldrb	r0, [r1, #0]
 e0018ee:	e8fd 4504 	ldrd	r4, r5, [sp], #16
 e0018f2:	f1c0 0000 	rsb	r0, r0, #0
 e0018f6:	4770      	bx	lr
 e0018f8:	ea4f 6212 	mov.w	r2, r2, lsr #24
 e0018fc:	f003 03ff 	and.w	r3, r3, #255	; 0xff
 e001900:	e047      	b.n	e001992 <strcmp+0x2aa>
 e001902:	ea02 441c 	and.w	r4, r2, ip, lsr #16
 e001906:	fa82 f54c 	uadd8	r5, r2, ip
 e00190a:	ea94 4513 	eors.w	r5, r4, r3, lsr #16
 e00190e:	faa5 f58c 	sel	r5, r5, ip
 e001912:	d10a      	bne.n	e00192a <strcmp+0x242>
 e001914:	b965      	cbnz	r5, e001930 <strcmp+0x248>
 e001916:	f851 3b04 	ldr.w	r3, [r1], #4
 e00191a:	ea84 0402 	eor.w	r4, r4, r2
 e00191e:	ebb4 4f03 	cmp.w	r4, r3, lsl #16
 e001922:	d10c      	bne.n	e00193e <strcmp+0x256>
 e001924:	f850 2b04 	ldr.w	r2, [r0], #4
 e001928:	e7eb      	b.n	e001902 <strcmp+0x21a>
 e00192a:	ea4f 4313 	mov.w	r3, r3, lsr #16
 e00192e:	e030      	b.n	e001992 <strcmp+0x2aa>
 e001930:	ea15 451c 	ands.w	r5, r5, ip, lsr #16
 e001934:	d128      	bne.n	e001988 <strcmp+0x2a0>
 e001936:	880b      	ldrh	r3, [r1, #0]
 e001938:	ea4f 4212 	mov.w	r2, r2, lsr #16
 e00193c:	e029      	b.n	e001992 <strcmp+0x2aa>
 e00193e:	ea4f 4212 	mov.w	r2, r2, lsr #16
 e001942:	ea03 431c 	and.w	r3, r3, ip, lsr #16
 e001946:	e024      	b.n	e001992 <strcmp+0x2aa>
 e001948:	f002 04ff 	and.w	r4, r2, #255	; 0xff
 e00194c:	fa82 f54c 	uadd8	r5, r2, ip
 e001950:	ea94 6513 	eors.w	r5, r4, r3, lsr #24
 e001954:	faa5 f58c 	sel	r5, r5, ip
 e001958:	d10a      	bne.n	e001970 <strcmp+0x288>
 e00195a:	b965      	cbnz	r5, e001976 <strcmp+0x28e>
 e00195c:	f851 3b04 	ldr.w	r3, [r1], #4
 e001960:	ea84 0402 	eor.w	r4, r4, r2
 e001964:	ebb4 2f03 	cmp.w	r4, r3, lsl #8
 e001968:	d109      	bne.n	e00197e <strcmp+0x296>
 e00196a:	f850 2b04 	ldr.w	r2, [r0], #4
 e00196e:	e7eb      	b.n	e001948 <strcmp+0x260>
 e001970:	ea4f 6313 	mov.w	r3, r3, lsr #24
 e001974:	e00d      	b.n	e001992 <strcmp+0x2aa>
 e001976:	f015 0fff 	tst.w	r5, #255	; 0xff
 e00197a:	d105      	bne.n	e001988 <strcmp+0x2a0>
 e00197c:	680b      	ldr	r3, [r1, #0]
 e00197e:	ea4f 2212 	mov.w	r2, r2, lsr #8
 e001982:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
 e001986:	e004      	b.n	e001992 <strcmp+0x2aa>
 e001988:	f04f 0000 	mov.w	r0, #0
 e00198c:	e8fd 4504 	ldrd	r4, r5, [sp], #16
 e001990:	4770      	bx	lr
 e001992:	ba12      	rev	r2, r2
 e001994:	ba1b      	rev	r3, r3
 e001996:	fa82 f44c 	uadd8	r4, r2, ip
 e00199a:	ea82 0403 	eor.w	r4, r2, r3
 e00199e:	faa4 f58c 	sel	r5, r4, ip
 e0019a2:	fab5 f485 	clz	r4, r5
 e0019a6:	fa02 f204 	lsl.w	r2, r2, r4
 e0019aa:	fa03 f304 	lsl.w	r3, r3, r4
 e0019ae:	ea4f 6012 	mov.w	r0, r2, lsr #24
 e0019b2:	e8fd 4504 	ldrd	r4, r5, [sp], #16
 e0019b6:	eba0 6013 	sub.w	r0, r0, r3, lsr #24
 e0019ba:	4770      	bx	lr
 e0019bc:	0000      	movs	r0, r0
	...

0e0019c0 <strlen>:
 e0019c0:	f890 f000 	pld	[r0]
 e0019c4:	e96d 4502 	strd	r4, r5, [sp, #-8]!
 e0019c8:	f020 0107 	bic.w	r1, r0, #7
 e0019cc:	f06f 0c00 	mvn.w	ip, #0
 e0019d0:	f010 0407 	ands.w	r4, r0, #7
 e0019d4:	f891 f020 	pld	[r1, #32]
 e0019d8:	f040 8049 	bne.w	e001a6e <strlen+0xae>
 e0019dc:	f04f 0400 	mov.w	r4, #0
 e0019e0:	f06f 0007 	mvn.w	r0, #7
 e0019e4:	e9d1 2300 	ldrd	r2, r3, [r1]
 e0019e8:	f891 f040 	pld	[r1, #64]	; 0x40
 e0019ec:	f100 0008 	add.w	r0, r0, #8
 e0019f0:	fa82 f24c 	uadd8	r2, r2, ip
 e0019f4:	faa4 f28c 	sel	r2, r4, ip
 e0019f8:	fa83 f34c 	uadd8	r3, r3, ip
 e0019fc:	faa2 f38c 	sel	r3, r2, ip
 e001a00:	bb4b      	cbnz	r3, e001a56 <strlen+0x96>
 e001a02:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
 e001a06:	fa82 f24c 	uadd8	r2, r2, ip
 e001a0a:	f100 0008 	add.w	r0, r0, #8
 e001a0e:	faa4 f28c 	sel	r2, r4, ip
 e001a12:	fa83 f34c 	uadd8	r3, r3, ip
 e001a16:	faa2 f38c 	sel	r3, r2, ip
 e001a1a:	b9e3      	cbnz	r3, e001a56 <strlen+0x96>
 e001a1c:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
 e001a20:	fa82 f24c 	uadd8	r2, r2, ip
 e001a24:	f100 0008 	add.w	r0, r0, #8
 e001a28:	faa4 f28c 	sel	r2, r4, ip
 e001a2c:	fa83 f34c 	uadd8	r3, r3, ip
 e001a30:	faa2 f38c 	sel	r3, r2, ip
 e001a34:	b97b      	cbnz	r3, e001a56 <strlen+0x96>
 e001a36:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
 e001a3a:	f101 0120 	add.w	r1, r1, #32
 e001a3e:	fa82 f24c 	uadd8	r2, r2, ip
 e001a42:	f100 0008 	add.w	r0, r0, #8
 e001a46:	faa4 f28c 	sel	r2, r4, ip
 e001a4a:	fa83 f34c 	uadd8	r3, r3, ip
 e001a4e:	faa2 f38c 	sel	r3, r2, ip
 e001a52:	2b00      	cmp	r3, #0
 e001a54:	d0c6      	beq.n	e0019e4 <strlen+0x24>
 e001a56:	2a00      	cmp	r2, #0
 e001a58:	bf04      	itt	eq
 e001a5a:	3004      	addeq	r0, #4
 e001a5c:	461a      	moveq	r2, r3
 e001a5e:	ba12      	rev	r2, r2
 e001a60:	fab2 f282 	clz	r2, r2
 e001a64:	e8fd 4502 	ldrd	r4, r5, [sp], #8
 e001a68:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
 e001a6c:	4770      	bx	lr
 e001a6e:	e9d1 2300 	ldrd	r2, r3, [r1]
 e001a72:	f004 0503 	and.w	r5, r4, #3
 e001a76:	f1c4 0000 	rsb	r0, r4, #0
 e001a7a:	ea4f 05c5 	mov.w	r5, r5, lsl #3
 e001a7e:	f014 0f04 	tst.w	r4, #4
 e001a82:	f891 f040 	pld	[r1, #64]	; 0x40
 e001a86:	fa0c f505 	lsl.w	r5, ip, r5
 e001a8a:	ea62 0205 	orn	r2, r2, r5
 e001a8e:	bf1c      	itt	ne
 e001a90:	ea63 0305 	ornne	r3, r3, r5
 e001a94:	4662      	movne	r2, ip
 e001a96:	f04f 0400 	mov.w	r4, #0
 e001a9a:	e7a9      	b.n	e0019f0 <strlen+0x30>

0e001a9c <strncpy>:
 e001a9c:	e1803001 	orr	r3, r0, r1
 e001aa0:	e3520003 	cmp	r2, #3
 e001aa4:	e92d4070 	push	{r4, r5, r6, lr}
 e001aa8:	93a0e000 	movls	lr, #0
 e001aac:	e7e13053 	ubfx	r3, r3, #0, #2
 e001ab0:	83a0e001 	movhi	lr, #1
 e001ab4:	e3530000 	cmp	r3, #0
 e001ab8:	13a0e000 	movne	lr, #0
 e001abc:	e35e0000 	cmp	lr, #0
 e001ac0:	01a03000 	moveq	r3, r0
 e001ac4:	0a00000e 	beq	e001b04 <strncpy+0x68>
 e001ac8:	e59f606c 	ldr	r6, [pc, #108]	; e001b3c <strncpy+0xa0>
 e001acc:	e1a0c001 	mov	ip, r1
 e001ad0:	e59f5068 	ldr	r5, [pc, #104]	; e001b40 <strncpy+0xa4>
 e001ad4:	e1a03000 	mov	r3, r0
 e001ad8:	e1a0100c 	mov	r1, ip
 e001adc:	e49c4004 	ldr	r4, [ip], #4
 e001ae0:	e084e006 	add	lr, r4, r6
 e001ae4:	e1cee004 	bic	lr, lr, r4
 e001ae8:	e11e0005 	tst	lr, r5
 e001aec:	1a000004 	bne	e001b04 <strncpy+0x68>
 e001af0:	e2422004 	sub	r2, r2, #4
 e001af4:	e1a0100c 	mov	r1, ip
 e001af8:	e3520003 	cmp	r2, #3
 e001afc:	e4834004 	str	r4, [r3], #4
 e001b00:	8afffff4 	bhi	e001ad8 <strncpy+0x3c>
 e001b04:	e2411001 	sub	r1, r1, #1
 e001b08:	e3520000 	cmp	r2, #0
 e001b0c:	0a000004 	beq	e001b24 <strncpy+0x88>
 e001b10:	e5f1c001 	ldrb	ip, [r1, #1]!
 e001b14:	e2422001 	sub	r2, r2, #1
 e001b18:	e4c3c001 	strb	ip, [r3], #1
 e001b1c:	e35c0000 	cmp	ip, #0
 e001b20:	1afffff8 	bne	e001b08 <strncpy+0x6c>
 e001b24:	e0832002 	add	r2, r3, r2
 e001b28:	e3a01000 	mov	r1, #0
 e001b2c:	e1520003 	cmp	r2, r3
 e001b30:	08bd8070 	popeq	{r4, r5, r6, pc}
 e001b34:	e4c31001 	strb	r1, [r3], #1
 e001b38:	eafffffb 	b	e001b2c <strncpy+0x90>
 e001b3c:	fefefeff 	.word	0xfefefeff
 e001b40:	80808080 	.word	0x80808080

0e001b44 <__sprint_r>:
 e001b44:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e001b48:	e1a04002 	mov	r4, r2
 e001b4c:	e5923008 	ldr	r3, [r2, #8]
 e001b50:	e3530000 	cmp	r3, #0
 e001b54:	1a000002 	bne	e001b64 <__sprint_r+0x20>
 e001b58:	e1a00003 	mov	r0, r3
 e001b5c:	e5823004 	str	r3, [r2, #4]
 e001b60:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e001b64:	e5913064 	ldr	r3, [r1, #100]	; 0x64
 e001b68:	e1a07001 	mov	r7, r1
 e001b6c:	e3130a02 	tst	r3, #8192	; 0x2000
 e001b70:	0a00001b 	beq	e001be4 <__sprint_r+0xa0>
 e001b74:	e5925000 	ldr	r5, [r2]
 e001b78:	e1a08000 	mov	r8, r0
 e001b7c:	e2855008 	add	r5, r5, #8
 e001b80:	e5156004 	ldr	r6, [r5, #-4]
 e001b84:	e3a09000 	mov	r9, #0
 e001b88:	e515b008 	ldr	fp, [r5, #-8]
 e001b8c:	e1a0a126 	lsr	sl, r6, #2
 e001b90:	e15a0009 	cmp	sl, r9
 e001b94:	ca00000a 	bgt	e001bc4 <__sprint_r+0x80>
 e001b98:	e5940008 	ldr	r0, [r4, #8]
 e001b9c:	e3c66003 	bic	r6, r6, #3
 e001ba0:	e2855008 	add	r5, r5, #8
 e001ba4:	e0400006 	sub	r0, r0, r6
 e001ba8:	e5840008 	str	r0, [r4, #8]
 e001bac:	e3500000 	cmp	r0, #0
 e001bb0:	1afffff2 	bne	e001b80 <__sprint_r+0x3c>
 e001bb4:	e3a03000 	mov	r3, #0
 e001bb8:	e5843008 	str	r3, [r4, #8]
 e001bbc:	e5843004 	str	r3, [r4, #4]
 e001bc0:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e001bc4:	e79b1109 	ldr	r1, [fp, r9, lsl #2]
 e001bc8:	e1a02007 	mov	r2, r7
 e001bcc:	e1a00008 	mov	r0, r8
 e001bd0:	eb00093f 	bl	e0040d4 <_fputwc_r>
 e001bd4:	e3700001 	cmn	r0, #1
 e001bd8:	0afffff5 	beq	e001bb4 <__sprint_r+0x70>
 e001bdc:	e2899001 	add	r9, r9, #1
 e001be0:	eaffffea 	b	e001b90 <__sprint_r+0x4c>
 e001be4:	eb00096f 	bl	e0041a8 <__sfvwrite_r>
 e001be8:	eafffff1 	b	e001bb4 <__sprint_r+0x70>

0e001bec <_vfiprintf_r>:
 e001bec:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e001bf0:	e1a08001 	mov	r8, r1
 e001bf4:	e1a04003 	mov	r4, r3
 e001bf8:	e24dd0ec 	sub	sp, sp, #236	; 0xec
 e001bfc:	e1a05003 	mov	r5, r3
 e001c00:	e2509000 	subs	r9, r0, #0
 e001c04:	e58d2008 	str	r2, [sp, #8]
 e001c08:	0a000003 	beq	e001c1c <_vfiprintf_r+0x30>
 e001c0c:	e5993018 	ldr	r3, [r9, #24]
 e001c10:	e3530000 	cmp	r3, #0
 e001c14:	1a000000 	bne	e001c1c <_vfiprintf_r+0x30>
 e001c18:	ebfffb78 	bl	e000a00 <__sinit>
 e001c1c:	e5983064 	ldr	r3, [r8, #100]	; 0x64
 e001c20:	e3130001 	tst	r3, #1
 e001c24:	1a000004 	bne	e001c3c <_vfiprintf_r+0x50>
 e001c28:	e1d830bc 	ldrh	r3, [r8, #12]
 e001c2c:	e3130c02 	tst	r3, #512	; 0x200
 e001c30:	1a000001 	bne	e001c3c <_vfiprintf_r+0x50>
 e001c34:	e5980058 	ldr	r0, [r8, #88]	; 0x58
 e001c38:	ebfffc56 	bl	e000d98 <__retarget_lock_acquire_recursive>
 e001c3c:	e1d830fc 	ldrsh	r3, [r8, #12]
 e001c40:	e3130a02 	tst	r3, #8192	; 0x2000
 e001c44:	1a000004 	bne	e001c5c <_vfiprintf_r+0x70>
 e001c48:	e3833a02 	orr	r3, r3, #8192	; 0x2000
 e001c4c:	e1c830bc 	strh	r3, [r8, #12]
 e001c50:	e5983064 	ldr	r3, [r8, #100]	; 0x64
 e001c54:	e3c33a02 	bic	r3, r3, #8192	; 0x2000
 e001c58:	e5883064 	str	r3, [r8, #100]	; 0x64
 e001c5c:	e1d830bc 	ldrh	r3, [r8, #12]
 e001c60:	e3130008 	tst	r3, #8
 e001c64:	0a000002 	beq	e001c74 <_vfiprintf_r+0x88>
 e001c68:	e5983010 	ldr	r3, [r8, #16]
 e001c6c:	e3530000 	cmp	r3, #0
 e001c70:	1a000012 	bne	e001cc0 <_vfiprintf_r+0xd4>
 e001c74:	e1a01008 	mov	r1, r8
 e001c78:	e1a00009 	mov	r0, r9
 e001c7c:	eb0003e1 	bl	e002c08 <__swsetup_r>
 e001c80:	e3500000 	cmp	r0, #0
 e001c84:	0a00000d 	beq	e001cc0 <_vfiprintf_r+0xd4>
 e001c88:	e5983064 	ldr	r3, [r8, #100]	; 0x64
 e001c8c:	e3130001 	tst	r3, #1
 e001c90:	0a000004 	beq	e001ca8 <_vfiprintf_r+0xbc>
 e001c94:	e3e03000 	mvn	r3, #0
 e001c98:	e58d300c 	str	r3, [sp, #12]
 e001c9c:	e59d000c 	ldr	r0, [sp, #12]
 e001ca0:	e28dd0ec 	add	sp, sp, #236	; 0xec
 e001ca4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e001ca8:	e1d830bc 	ldrh	r3, [r8, #12]
 e001cac:	e3130c02 	tst	r3, #512	; 0x200
 e001cb0:	1afffff7 	bne	e001c94 <_vfiprintf_r+0xa8>
 e001cb4:	e5980058 	ldr	r0, [r8, #88]	; 0x58
 e001cb8:	ebfffc3c 	bl	e000db0 <__retarget_lock_release_recursive>
 e001cbc:	eafffff4 	b	e001c94 <_vfiprintf_r+0xa8>
 e001cc0:	e1d830bc 	ldrh	r3, [r8, #12]
 e001cc4:	e203201a 	and	r2, r3, #26
 e001cc8:	e352000a 	cmp	r2, #10
 e001ccc:	1a000010 	bne	e001d14 <_vfiprintf_r+0x128>
 e001cd0:	e1d820fe 	ldrsh	r2, [r8, #14]
 e001cd4:	e3520000 	cmp	r2, #0
 e001cd8:	ba00000d 	blt	e001d14 <_vfiprintf_r+0x128>
 e001cdc:	e5982064 	ldr	r2, [r8, #100]	; 0x64
 e001ce0:	e3120001 	tst	r2, #1
 e001ce4:	1a000003 	bne	e001cf8 <_vfiprintf_r+0x10c>
 e001ce8:	e3130c02 	tst	r3, #512	; 0x200
 e001cec:	1a000001 	bne	e001cf8 <_vfiprintf_r+0x10c>
 e001cf0:	e5980058 	ldr	r0, [r8, #88]	; 0x58
 e001cf4:	ebfffc2d 	bl	e000db0 <__retarget_lock_release_recursive>
 e001cf8:	e59d2008 	ldr	r2, [sp, #8]
 e001cfc:	e1a03004 	mov	r3, r4
 e001d00:	e1a01008 	mov	r1, r8
 e001d04:	e1a00009 	mov	r0, r9
 e001d08:	e28dd0ec 	add	sp, sp, #236	; 0xec
 e001d0c:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e001d10:	ea00036d 	b	e002acc <__sbprintf>
 e001d14:	e3a03000 	mov	r3, #0
 e001d18:	e28d7044 	add	r7, sp, #68	; 0x44
 e001d1c:	e58d3040 	str	r3, [sp, #64]	; 0x40
 e001d20:	e58d7038 	str	r7, [sp, #56]	; 0x38
 e001d24:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e001d28:	e58d3018 	str	r3, [sp, #24]
 e001d2c:	e58d301c 	str	r3, [sp, #28]
 e001d30:	e58d3020 	str	r3, [sp, #32]
 e001d34:	e58d3024 	str	r3, [sp, #36]	; 0x24
 e001d38:	e58d300c 	str	r3, [sp, #12]
 e001d3c:	e59d2008 	ldr	r2, [sp, #8]
 e001d40:	e5d23000 	ldrb	r3, [r2]
 e001d44:	e1a04002 	mov	r4, r2
 e001d48:	e2822001 	add	r2, r2, #1
 e001d4c:	e3530000 	cmp	r3, #0
 e001d50:	13530025 	cmpne	r3, #37	; 0x25
 e001d54:	1afffff9 	bne	e001d40 <_vfiprintf_r+0x154>
 e001d58:	e59d3008 	ldr	r3, [sp, #8]
 e001d5c:	e0546003 	subs	r6, r4, r3
 e001d60:	0a000013 	beq	e001db4 <_vfiprintf_r+0x1c8>
 e001d64:	e8870048 	stm	r7, {r3, r6}
 e001d68:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
 e001d6c:	e0833006 	add	r3, r3, r6
 e001d70:	e58d3040 	str	r3, [sp, #64]	; 0x40
 e001d74:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
 e001d78:	e2833001 	add	r3, r3, #1
 e001d7c:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e001d80:	e3530007 	cmp	r3, #7
 e001d84:	d2877008 	addle	r7, r7, #8
 e001d88:	da000006 	ble	e001da8 <_vfiprintf_r+0x1bc>
 e001d8c:	e28d2038 	add	r2, sp, #56	; 0x38
 e001d90:	e1a01008 	mov	r1, r8
 e001d94:	e1a00009 	mov	r0, r9
 e001d98:	ebffff69 	bl	e001b44 <__sprint_r>
 e001d9c:	e3500000 	cmp	r0, #0
 e001da0:	1a0002cc 	bne	e0028d8 <_vfiprintf_r+0xcec>
 e001da4:	e28d7044 	add	r7, sp, #68	; 0x44
 e001da8:	e59d300c 	ldr	r3, [sp, #12]
 e001dac:	e0833006 	add	r3, r3, r6
 e001db0:	e58d300c 	str	r3, [sp, #12]
 e001db4:	e5d43000 	ldrb	r3, [r4]
 e001db8:	e3530000 	cmp	r3, #0
 e001dbc:	0a0002e1 	beq	e002948 <_vfiprintf_r+0xd5c>
 e001dc0:	e3a03000 	mov	r3, #0
 e001dc4:	e2842001 	add	r2, r4, #1
 e001dc8:	e1a04003 	mov	r4, r3
 e001dcc:	e3e01000 	mvn	r1, #0
 e001dd0:	e5cd3033 	strb	r3, [sp, #51]	; 0x33
 e001dd4:	e58d1004 	str	r1, [sp, #4]
 e001dd8:	e58d3010 	str	r3, [sp, #16]
 e001ddc:	e4d23001 	ldrb	r3, [r2], #1
 e001de0:	e58d2008 	str	r2, [sp, #8]
 e001de4:	e2432020 	sub	r2, r3, #32
 e001de8:	e352005a 	cmp	r2, #90	; 0x5a
 e001dec:	979ff102 	ldrls	pc, [pc, r2, lsl #2]
 e001df0:	ea000250 	b	e002738 <_vfiprintf_r+0xb4c>
 e001df4:	0e001ffc 	.word	0x0e001ffc
 e001df8:	0e002738 	.word	0x0e002738
 e001dfc:	0e002738 	.word	0x0e002738
 e001e00:	0e002014 	.word	0x0e002014
 e001e04:	0e002738 	.word	0x0e002738
 e001e08:	0e002738 	.word	0x0e002738
 e001e0c:	0e002738 	.word	0x0e002738
 e001e10:	0e001fac 	.word	0x0e001fac
 e001e14:	0e002738 	.word	0x0e002738
 e001e18:	0e002738 	.word	0x0e002738
 e001e1c:	0e00201c 	.word	0x0e00201c
 e001e20:	0e00203c 	.word	0x0e00203c
 e001e24:	0e002738 	.word	0x0e002738
 e001e28:	0e002034 	.word	0x0e002034
 e001e2c:	0e002044 	.word	0x0e002044
 e001e30:	0e002738 	.word	0x0e002738
 e001e34:	0e002098 	.word	0x0e002098
 e001e38:	0e0020a0 	.word	0x0e0020a0
 e001e3c:	0e0020a0 	.word	0x0e0020a0
 e001e40:	0e0020a0 	.word	0x0e0020a0
 e001e44:	0e0020a0 	.word	0x0e0020a0
 e001e48:	0e0020a0 	.word	0x0e0020a0
 e001e4c:	0e0020a0 	.word	0x0e0020a0
 e001e50:	0e0020a0 	.word	0x0e0020a0
 e001e54:	0e0020a0 	.word	0x0e0020a0
 e001e58:	0e0020a0 	.word	0x0e0020a0
 e001e5c:	0e002738 	.word	0x0e002738
 e001e60:	0e002738 	.word	0x0e002738
 e001e64:	0e002738 	.word	0x0e002738
 e001e68:	0e002738 	.word	0x0e002738
 e001e6c:	0e002738 	.word	0x0e002738
 e001e70:	0e002738 	.word	0x0e002738
 e001e74:	0e002738 	.word	0x0e002738
 e001e78:	0e002738 	.word	0x0e002738
 e001e7c:	0e002738 	.word	0x0e002738
 e001e80:	0e002120 	.word	0x0e002120
 e001e84:	0e002148 	.word	0x0e002148
 e001e88:	0e002738 	.word	0x0e002738
 e001e8c:	0e002738 	.word	0x0e002738
 e001e90:	0e002738 	.word	0x0e002738
 e001e94:	0e002738 	.word	0x0e002738
 e001e98:	0e002738 	.word	0x0e002738
 e001e9c:	0e002738 	.word	0x0e002738
 e001ea0:	0e002738 	.word	0x0e002738
 e001ea4:	0e002738 	.word	0x0e002738
 e001ea8:	0e002738 	.word	0x0e002738
 e001eac:	0e002738 	.word	0x0e002738
 e001eb0:	0e0022a8 	.word	0x0e0022a8
 e001eb4:	0e002738 	.word	0x0e002738
 e001eb8:	0e002738 	.word	0x0e002738
 e001ebc:	0e002738 	.word	0x0e002738
 e001ec0:	0e002338 	.word	0x0e002338
 e001ec4:	0e002738 	.word	0x0e002738
 e001ec8:	0e002624 	.word	0x0e002624
 e001ecc:	0e002738 	.word	0x0e002738
 e001ed0:	0e002738 	.word	0x0e002738
 e001ed4:	0e002680 	.word	0x0e002680
 e001ed8:	0e002738 	.word	0x0e002738
 e001edc:	0e002738 	.word	0x0e002738
 e001ee0:	0e002738 	.word	0x0e002738
 e001ee4:	0e002738 	.word	0x0e002738
 e001ee8:	0e002738 	.word	0x0e002738
 e001eec:	0e002738 	.word	0x0e002738
 e001ef0:	0e002738 	.word	0x0e002738
 e001ef4:	0e002738 	.word	0x0e002738
 e001ef8:	0e002738 	.word	0x0e002738
 e001efc:	0e002738 	.word	0x0e002738
 e001f00:	0e002120 	.word	0x0e002120
 e001f04:	0e00214c 	.word	0x0e00214c
 e001f08:	0e002738 	.word	0x0e002738
 e001f0c:	0e002738 	.word	0x0e002738
 e001f10:	0e002738 	.word	0x0e002738
 e001f14:	0e0020d4 	.word	0x0e0020d4
 e001f18:	0e00214c 	.word	0x0e00214c
 e001f1c:	0e002118 	.word	0x0e002118
 e001f20:	0e002738 	.word	0x0e002738
 e001f24:	0e0020f8 	.word	0x0e0020f8
 e001f28:	0e002738 	.word	0x0e002738
 e001f2c:	0e00223c 	.word	0x0e00223c
 e001f30:	0e0022ac 	.word	0x0e0022ac
 e001f34:	0e002310 	.word	0x0e002310
 e001f38:	0e002118 	.word	0x0e002118
 e001f3c:	0e002738 	.word	0x0e002738
 e001f40:	0e002338 	.word	0x0e002338
 e001f44:	0e001ff4 	.word	0x0e001ff4
 e001f48:	0e002628 	.word	0x0e002628
 e001f4c:	0e002738 	.word	0x0e002738
 e001f50:	0e002738 	.word	0x0e002738
 e001f54:	0e001f60 	.word	0x0e001f60
 e001f58:	0e002738 	.word	0x0e002738
 e001f5c:	0e001ff4 	.word	0x0e001ff4
 e001f60:	e59f2b38 	ldr	r2, [pc, #2872]	; e002aa0 <_vfiprintf_r+0xeb4>
 e001f64:	e58d2018 	str	r2, [sp, #24]
 e001f68:	e2142020 	ands	r2, r4, #32
 e001f6c:	0a0001c5 	beq	e002688 <_vfiprintf_r+0xa9c>
 e001f70:	e2855007 	add	r5, r5, #7
 e001f74:	e3c52007 	bic	r2, r5, #7
 e001f78:	e1a0a002 	mov	sl, r2
 e001f7c:	e5926004 	ldr	r6, [r2, #4]
 e001f80:	e49a5008 	ldr	r5, [sl], #8
 e001f84:	e1952006 	orrs	r2, r5, r6
 e001f88:	12042001 	andne	r2, r4, #1
 e001f8c:	03a02000 	moveq	r2, #0
 e001f90:	e3520000 	cmp	r2, #0
 e001f94:	15cd3035 	strbne	r3, [sp, #53]	; 0x35
 e001f98:	13844002 	orrne	r4, r4, #2
 e001f9c:	13a02030 	movne	r2, #48	; 0x30
 e001fa0:	e3c44b01 	bic	r4, r4, #1024	; 0x400
 e001fa4:	15cd2034 	strbne	r2, [sp, #52]	; 0x34
 e001fa8:	ea0000e0 	b	e002330 <_vfiprintf_r+0x744>
 e001fac:	e1a00009 	mov	r0, r9
 e001fb0:	eb0009ae 	bl	e004670 <_localeconv_r>
 e001fb4:	e5903004 	ldr	r3, [r0, #4]
 e001fb8:	e58d3024 	str	r3, [sp, #36]	; 0x24
 e001fbc:	e1a00003 	mov	r0, r3
 e001fc0:	fafffe7e 	blx	e0019c0 <strlen>
 e001fc4:	e58d0020 	str	r0, [sp, #32]
 e001fc8:	e1a00009 	mov	r0, r9
 e001fcc:	eb0009a7 	bl	e004670 <_localeconv_r>
 e001fd0:	e5903008 	ldr	r3, [r0, #8]
 e001fd4:	e58d301c 	str	r3, [sp, #28]
 e001fd8:	e1cd21dc 	ldrd	r2, [sp, #28]
 e001fdc:	e3530000 	cmp	r3, #0
 e001fe0:	13520000 	cmpne	r2, #0
 e001fe4:	0a000002 	beq	e001ff4 <_vfiprintf_r+0x408>
 e001fe8:	e5d23000 	ldrb	r3, [r2]
 e001fec:	e3530000 	cmp	r3, #0
 e001ff0:	13844b01 	orrne	r4, r4, #1024	; 0x400
 e001ff4:	e59d2008 	ldr	r2, [sp, #8]
 e001ff8:	eaffff77 	b	e001ddc <_vfiprintf_r+0x1f0>
 e001ffc:	e5dd3033 	ldrb	r3, [sp, #51]	; 0x33
 e002000:	e3530000 	cmp	r3, #0
 e002004:	03a03020 	moveq	r3, #32
 e002008:	1afffff9 	bne	e001ff4 <_vfiprintf_r+0x408>
 e00200c:	e5cd3033 	strb	r3, [sp, #51]	; 0x33
 e002010:	eafffff7 	b	e001ff4 <_vfiprintf_r+0x408>
 e002014:	e3844001 	orr	r4, r4, #1
 e002018:	eafffff5 	b	e001ff4 <_vfiprintf_r+0x408>
 e00201c:	e4953004 	ldr	r3, [r5], #4
 e002020:	e58d3010 	str	r3, [sp, #16]
 e002024:	e3530000 	cmp	r3, #0
 e002028:	aafffff1 	bge	e001ff4 <_vfiprintf_r+0x408>
 e00202c:	e2633000 	rsb	r3, r3, #0
 e002030:	e58d3010 	str	r3, [sp, #16]
 e002034:	e3844004 	orr	r4, r4, #4
 e002038:	eaffffed 	b	e001ff4 <_vfiprintf_r+0x408>
 e00203c:	e3a0302b 	mov	r3, #43	; 0x2b
 e002040:	eafffff1 	b	e00200c <_vfiprintf_r+0x420>
 e002044:	e59d2008 	ldr	r2, [sp, #8]
 e002048:	e4d23001 	ldrb	r3, [r2], #1
 e00204c:	e353002a 	cmp	r3, #42	; 0x2a
 e002050:	1a00000d 	bne	e00208c <_vfiprintf_r+0x4a0>
 e002054:	e4950004 	ldr	r0, [r5], #4
 e002058:	e58d2008 	str	r2, [sp, #8]
 e00205c:	e1803fc0 	orr	r3, r0, r0, asr #31
 e002060:	e58d3004 	str	r3, [sp, #4]
 e002064:	eaffffe2 	b	e001ff4 <_vfiprintf_r+0x408>
 e002068:	e59d3004 	ldr	r3, [sp, #4]
 e00206c:	e3a0000a 	mov	r0, #10
 e002070:	e0231390 	mla	r3, r0, r3, r1
 e002074:	e58d3004 	str	r3, [sp, #4]
 e002078:	e4d23001 	ldrb	r3, [r2], #1
 e00207c:	e2431030 	sub	r1, r3, #48	; 0x30
 e002080:	e3510009 	cmp	r1, #9
 e002084:	9afffff7 	bls	e002068 <_vfiprintf_r+0x47c>
 e002088:	eaffff54 	b	e001de0 <_vfiprintf_r+0x1f4>
 e00208c:	e3a01000 	mov	r1, #0
 e002090:	e58d1004 	str	r1, [sp, #4]
 e002094:	eafffff8 	b	e00207c <_vfiprintf_r+0x490>
 e002098:	e3844080 	orr	r4, r4, #128	; 0x80
 e00209c:	eaffffd4 	b	e001ff4 <_vfiprintf_r+0x408>
 e0020a0:	e59d2008 	ldr	r2, [sp, #8]
 e0020a4:	e3a01000 	mov	r1, #0
 e0020a8:	e58d1010 	str	r1, [sp, #16]
 e0020ac:	e59d1010 	ldr	r1, [sp, #16]
 e0020b0:	e2433030 	sub	r3, r3, #48	; 0x30
 e0020b4:	e3a0000a 	mov	r0, #10
 e0020b8:	e0233190 	mla	r3, r0, r1, r3
 e0020bc:	e58d3010 	str	r3, [sp, #16]
 e0020c0:	e4d23001 	ldrb	r3, [r2], #1
 e0020c4:	e2431030 	sub	r1, r3, #48	; 0x30
 e0020c8:	e3510009 	cmp	r1, #9
 e0020cc:	9afffff6 	bls	e0020ac <_vfiprintf_r+0x4c0>
 e0020d0:	eaffff42 	b	e001de0 <_vfiprintf_r+0x1f4>
 e0020d4:	e59d3008 	ldr	r3, [sp, #8]
 e0020d8:	e5d33000 	ldrb	r3, [r3]
 e0020dc:	e3530068 	cmp	r3, #104	; 0x68
 e0020e0:	03844c02 	orreq	r4, r4, #512	; 0x200
 e0020e4:	13844040 	orrne	r4, r4, #64	; 0x40
 e0020e8:	059d3008 	ldreq	r3, [sp, #8]
 e0020ec:	02833001 	addeq	r3, r3, #1
 e0020f0:	058d3008 	streq	r3, [sp, #8]
 e0020f4:	eaffffbe 	b	e001ff4 <_vfiprintf_r+0x408>
 e0020f8:	e59d3008 	ldr	r3, [sp, #8]
 e0020fc:	e5d33000 	ldrb	r3, [r3]
 e002100:	e353006c 	cmp	r3, #108	; 0x6c
 e002104:	13844010 	orrne	r4, r4, #16
 e002108:	059d3008 	ldreq	r3, [sp, #8]
 e00210c:	02833001 	addeq	r3, r3, #1
 e002110:	058d3008 	streq	r3, [sp, #8]
 e002114:	1affffb6 	bne	e001ff4 <_vfiprintf_r+0x408>
 e002118:	e3844020 	orr	r4, r4, #32
 e00211c:	eaffffb4 	b	e001ff4 <_vfiprintf_r+0x408>
 e002120:	e1a0a005 	mov	sl, r5
 e002124:	e3a0b000 	mov	fp, #0
 e002128:	e5cdb033 	strb	fp, [sp, #51]	; 0x33
 e00212c:	e49a3004 	ldr	r3, [sl], #4
 e002130:	e5cd3084 	strb	r3, [sp, #132]	; 0x84
 e002134:	e3a03001 	mov	r3, #1
 e002138:	e1a0600b 	mov	r6, fp
 e00213c:	e58d3004 	str	r3, [sp, #4]
 e002140:	e28db084 	add	fp, sp, #132	; 0x84
 e002144:	ea000090 	b	e00238c <_vfiprintf_r+0x7a0>
 e002148:	e3844010 	orr	r4, r4, #16
 e00214c:	e3140020 	tst	r4, #32
 e002150:	0a000029 	beq	e0021fc <_vfiprintf_r+0x610>
 e002154:	e2855007 	add	r5, r5, #7
 e002158:	e3c53007 	bic	r3, r5, #7
 e00215c:	e1a0a003 	mov	sl, r3
 e002160:	e5936004 	ldr	r6, [r3, #4]
 e002164:	e49a5008 	ldr	r5, [sl], #8
 e002168:	e3560000 	cmp	r6, #0
 e00216c:	aa000202 	bge	e00297c <_vfiprintf_r+0xd90>
 e002170:	e2755000 	rsbs	r5, r5, #0
 e002174:	e3a0302d 	mov	r3, #45	; 0x2d
 e002178:	e2e66000 	rsc	r6, r6, #0
 e00217c:	e5cd3033 	strb	r3, [sp, #51]	; 0x33
 e002180:	e3a03001 	mov	r3, #1
 e002184:	e59d2004 	ldr	r2, [sp, #4]
 e002188:	e3720001 	cmn	r2, #1
 e00218c:	11a01004 	movne	r1, r4
 e002190:	1a000149 	bne	e0026bc <_vfiprintf_r+0xad0>
 e002194:	e3530001 	cmp	r3, #1
 e002198:	0a0001fc 	beq	e002990 <_vfiprintf_r+0xda4>
 e00219c:	e28db0e8 	add	fp, sp, #232	; 0xe8
 e0021a0:	e3530002 	cmp	r3, #2
 e0021a4:	0a000156 	beq	e002704 <_vfiprintf_r+0xb18>
 e0021a8:	e2053007 	and	r3, r5, #7
 e0021ac:	e1a051a5 	lsr	r5, r5, #3
 e0021b0:	e1855e86 	orr	r5, r5, r6, lsl #29
 e0021b4:	e1a061a6 	lsr	r6, r6, #3
 e0021b8:	e1a0200b 	mov	r2, fp
 e0021bc:	e2833030 	add	r3, r3, #48	; 0x30
 e0021c0:	e1951006 	orrs	r1, r5, r6
 e0021c4:	e56b3001 	strb	r3, [fp, #-1]!
 e0021c8:	1afffff6 	bne	e0021a8 <_vfiprintf_r+0x5bc>
 e0021cc:	e3530030 	cmp	r3, #48	; 0x30
 e0021d0:	03a01000 	moveq	r1, #0
 e0021d4:	12041001 	andne	r1, r4, #1
 e0021d8:	e3510000 	cmp	r1, #0
 e0021dc:	13a03030 	movne	r3, #48	; 0x30
 e0021e0:	154b3001 	strbne	r3, [fp, #-1]
 e0021e4:	1242b002 	subne	fp, r2, #2
 e0021e8:	e28d30e8 	add	r3, sp, #232	; 0xe8
 e0021ec:	e59d6004 	ldr	r6, [sp, #4]
 e0021f0:	e043300b 	sub	r3, r3, fp
 e0021f4:	e58d3004 	str	r3, [sp, #4]
 e0021f8:	ea000063 	b	e00238c <_vfiprintf_r+0x7a0>
 e0021fc:	e1a0a005 	mov	sl, r5
 e002200:	e3140010 	tst	r4, #16
 e002204:	e49a6004 	ldr	r6, [sl], #4
 e002208:	0a000002 	beq	e002218 <_vfiprintf_r+0x62c>
 e00220c:	e1a05006 	mov	r5, r6
 e002210:	e1a06fc6 	asr	r6, r6, #31
 e002214:	eaffffd3 	b	e002168 <_vfiprintf_r+0x57c>
 e002218:	e3140040 	tst	r4, #64	; 0x40
 e00221c:	16bf5076 	sxthne	r5, r6
 e002220:	17a067d6 	sbfxne	r6, r6, #15, #1
 e002224:	1affffcf 	bne	e002168 <_vfiprintf_r+0x57c>
 e002228:	e3140c02 	tst	r4, #512	; 0x200
 e00222c:	16af5076 	sxtbne	r5, r6
 e002230:	17a063d6 	sbfxne	r6, r6, #7, #1
 e002234:	1affffcb 	bne	e002168 <_vfiprintf_r+0x57c>
 e002238:	eafffff3 	b	e00220c <_vfiprintf_r+0x620>
 e00223c:	e285a004 	add	sl, r5, #4
 e002240:	e3140020 	tst	r4, #32
 e002244:	0a000006 	beq	e002264 <_vfiprintf_r+0x678>
 e002248:	e5953000 	ldr	r3, [r5]
 e00224c:	e59d200c 	ldr	r2, [sp, #12]
 e002250:	e59d100c 	ldr	r1, [sp, #12]
 e002254:	e1a02fc2 	asr	r2, r2, #31
 e002258:	e8830006 	stm	r3, {r1, r2}
 e00225c:	e1a0500a 	mov	r5, sl
 e002260:	eafffeb5 	b	e001d3c <_vfiprintf_r+0x150>
 e002264:	e3140010 	tst	r4, #16
 e002268:	0a000003 	beq	e00227c <_vfiprintf_r+0x690>
 e00226c:	e5953000 	ldr	r3, [r5]
 e002270:	e59d200c 	ldr	r2, [sp, #12]
 e002274:	e5832000 	str	r2, [r3]
 e002278:	eafffff7 	b	e00225c <_vfiprintf_r+0x670>
 e00227c:	e3140040 	tst	r4, #64	; 0x40
 e002280:	15953000 	ldrne	r3, [r5]
 e002284:	159d200c 	ldrne	r2, [sp, #12]
 e002288:	11c320b0 	strhne	r2, [r3]
 e00228c:	1afffff2 	bne	e00225c <_vfiprintf_r+0x670>
 e002290:	e3140c02 	tst	r4, #512	; 0x200
 e002294:	15953000 	ldrne	r3, [r5]
 e002298:	159d200c 	ldrne	r2, [sp, #12]
 e00229c:	15c32000 	strbne	r2, [r3]
 e0022a0:	1affffed 	bne	e00225c <_vfiprintf_r+0x670>
 e0022a4:	eafffff0 	b	e00226c <_vfiprintf_r+0x680>
 e0022a8:	e3844010 	orr	r4, r4, #16
 e0022ac:	e2143020 	ands	r3, r4, #32
 e0022b0:	0a000009 	beq	e0022dc <_vfiprintf_r+0x6f0>
 e0022b4:	e2855007 	add	r5, r5, #7
 e0022b8:	e3c53007 	bic	r3, r5, #7
 e0022bc:	e1a0a003 	mov	sl, r3
 e0022c0:	e5936004 	ldr	r6, [r3, #4]
 e0022c4:	e49a5008 	ldr	r5, [sl], #8
 e0022c8:	e3c44b01 	bic	r4, r4, #1024	; 0x400
 e0022cc:	e3a03000 	mov	r3, #0
 e0022d0:	e3a02000 	mov	r2, #0
 e0022d4:	e5cd2033 	strb	r2, [sp, #51]	; 0x33
 e0022d8:	eaffffa9 	b	e002184 <_vfiprintf_r+0x598>
 e0022dc:	e1a0a005 	mov	sl, r5
 e0022e0:	e2146010 	ands	r6, r4, #16
 e0022e4:	e49a5004 	ldr	r5, [sl], #4
 e0022e8:	0a000001 	beq	e0022f4 <_vfiprintf_r+0x708>
 e0022ec:	e1a06003 	mov	r6, r3
 e0022f0:	eafffff4 	b	e0022c8 <_vfiprintf_r+0x6dc>
 e0022f4:	e2143040 	ands	r3, r4, #64	; 0x40
 e0022f8:	16ff5075 	uxthne	r5, r5
 e0022fc:	1afffff1 	bne	e0022c8 <_vfiprintf_r+0x6dc>
 e002300:	e2146c02 	ands	r6, r4, #512	; 0x200
 e002304:	0affffef 	beq	e0022c8 <_vfiprintf_r+0x6dc>
 e002308:	e6ef5075 	uxtb	r5, r5
 e00230c:	eafffff6 	b	e0022ec <_vfiprintf_r+0x700>
 e002310:	e1a0a005 	mov	sl, r5
 e002314:	e3073830 	movw	r3, #30768	; 0x7830
 e002318:	e3a06000 	mov	r6, #0
 e00231c:	e1cd33b4 	strh	r3, [sp, #52]	; 0x34
 e002320:	e3844002 	orr	r4, r4, #2
 e002324:	e59f3774 	ldr	r3, [pc, #1908]	; e002aa0 <_vfiprintf_r+0xeb4>
 e002328:	e49a5004 	ldr	r5, [sl], #4
 e00232c:	e58d3018 	str	r3, [sp, #24]
 e002330:	e3a03002 	mov	r3, #2
 e002334:	eaffffe5 	b	e0022d0 <_vfiprintf_r+0x6e4>
 e002338:	e1a0a005 	mov	sl, r5
 e00233c:	e59d3004 	ldr	r3, [sp, #4]
 e002340:	e3a05000 	mov	r5, #0
 e002344:	e5cd5033 	strb	r5, [sp, #51]	; 0x33
 e002348:	e3730001 	cmn	r3, #1
 e00234c:	e49ab004 	ldr	fp, [sl], #4
 e002350:	0a000009 	beq	e00237c <_vfiprintf_r+0x790>
 e002354:	e1a02003 	mov	r2, r3
 e002358:	e1a01005 	mov	r1, r5
 e00235c:	e1a0000b 	mov	r0, fp
 e002360:	fa000946 	blx	e004880 <memchr>
 e002364:	e2503000 	subs	r3, r0, #0
 e002368:	1043300b 	subne	r3, r3, fp
 e00236c:	158d3004 	strne	r3, [sp, #4]
 e002370:	1a000004 	bne	e002388 <_vfiprintf_r+0x79c>
 e002374:	e1a06003 	mov	r6, r3
 e002378:	ea000003 	b	e00238c <_vfiprintf_r+0x7a0>
 e00237c:	e1a0000b 	mov	r0, fp
 e002380:	fafffd8e 	blx	e0019c0 <strlen>
 e002384:	e58d0004 	str	r0, [sp, #4]
 e002388:	e1a06005 	mov	r6, r5
 e00238c:	e59d3004 	ldr	r3, [sp, #4]
 e002390:	e1560003 	cmp	r6, r3
 e002394:	a1a03006 	movge	r3, r6
 e002398:	e58d3014 	str	r3, [sp, #20]
 e00239c:	e5dd3033 	ldrb	r3, [sp, #51]	; 0x33
 e0023a0:	e3530000 	cmp	r3, #0
 e0023a4:	159d3014 	ldrne	r3, [sp, #20]
 e0023a8:	12833001 	addne	r3, r3, #1
 e0023ac:	158d3014 	strne	r3, [sp, #20]
 e0023b0:	e2143002 	ands	r3, r4, #2
 e0023b4:	e58d3028 	str	r3, [sp, #40]	; 0x28
 e0023b8:	159d3014 	ldrne	r3, [sp, #20]
 e0023bc:	12833002 	addne	r3, r3, #2
 e0023c0:	158d3014 	strne	r3, [sp, #20]
 e0023c4:	e2143084 	ands	r3, r4, #132	; 0x84
 e0023c8:	e58d302c 	str	r3, [sp, #44]	; 0x2c
 e0023cc:	1a00001a 	bne	e00243c <_vfiprintf_r+0x850>
 e0023d0:	e59d3010 	ldr	r3, [sp, #16]
 e0023d4:	e59d2014 	ldr	r2, [sp, #20]
 e0023d8:	e0435002 	sub	r5, r3, r2
 e0023dc:	e3550000 	cmp	r5, #0
 e0023e0:	da000015 	ble	e00243c <_vfiprintf_r+0x850>
 e0023e4:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
 e0023e8:	e2871008 	add	r1, r7, #8
 e0023ec:	e59f06b0 	ldr	r0, [pc, #1712]	; e002aa4 <_vfiprintf_r+0xeb8>
 e0023f0:	e3550010 	cmp	r5, #16
 e0023f4:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
 e0023f8:	e2833001 	add	r3, r3, #1
 e0023fc:	e5870000 	str	r0, [r7]
 e002400:	ca0000d3 	bgt	e002754 <_vfiprintf_r+0xb68>
 e002404:	e3530007 	cmp	r3, #7
 e002408:	e5875004 	str	r5, [r7, #4]
 e00240c:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e002410:	e0855002 	add	r5, r5, r2
 e002414:	d1a07001 	movle	r7, r1
 e002418:	e58d5040 	str	r5, [sp, #64]	; 0x40
 e00241c:	da000006 	ble	e00243c <_vfiprintf_r+0x850>
 e002420:	e28d2038 	add	r2, sp, #56	; 0x38
 e002424:	e1a01008 	mov	r1, r8
 e002428:	e1a00009 	mov	r0, r9
 e00242c:	ebfffdc4 	bl	e001b44 <__sprint_r>
 e002430:	e3500000 	cmp	r0, #0
 e002434:	1a000127 	bne	e0028d8 <_vfiprintf_r+0xcec>
 e002438:	e28d7044 	add	r7, sp, #68	; 0x44
 e00243c:	e5dd3033 	ldrb	r3, [sp, #51]	; 0x33
 e002440:	e3530000 	cmp	r3, #0
 e002444:	0a000013 	beq	e002498 <_vfiprintf_r+0x8ac>
 e002448:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
 e00244c:	e28d2033 	add	r2, sp, #51	; 0x33
 e002450:	e5872000 	str	r2, [r7]
 e002454:	e3a02001 	mov	r2, #1
 e002458:	e2833001 	add	r3, r3, #1
 e00245c:	e5872004 	str	r2, [r7, #4]
 e002460:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
 e002464:	e3530007 	cmp	r3, #7
 e002468:	d2877008 	addle	r7, r7, #8
 e00246c:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e002470:	e2822001 	add	r2, r2, #1
 e002474:	e58d2040 	str	r2, [sp, #64]	; 0x40
 e002478:	da000006 	ble	e002498 <_vfiprintf_r+0x8ac>
 e00247c:	e28d2038 	add	r2, sp, #56	; 0x38
 e002480:	e1a01008 	mov	r1, r8
 e002484:	e1a00009 	mov	r0, r9
 e002488:	ebfffdad 	bl	e001b44 <__sprint_r>
 e00248c:	e3500000 	cmp	r0, #0
 e002490:	1a000110 	bne	e0028d8 <_vfiprintf_r+0xcec>
 e002494:	e28d7044 	add	r7, sp, #68	; 0x44
 e002498:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
 e00249c:	e3530000 	cmp	r3, #0
 e0024a0:	0a000013 	beq	e0024f4 <_vfiprintf_r+0x908>
 e0024a4:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
 e0024a8:	e28d2034 	add	r2, sp, #52	; 0x34
 e0024ac:	e5872000 	str	r2, [r7]
 e0024b0:	e3a02002 	mov	r2, #2
 e0024b4:	e2833001 	add	r3, r3, #1
 e0024b8:	e5872004 	str	r2, [r7, #4]
 e0024bc:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
 e0024c0:	e3530007 	cmp	r3, #7
 e0024c4:	d2877008 	addle	r7, r7, #8
 e0024c8:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e0024cc:	e2822002 	add	r2, r2, #2
 e0024d0:	e58d2040 	str	r2, [sp, #64]	; 0x40
 e0024d4:	da000006 	ble	e0024f4 <_vfiprintf_r+0x908>
 e0024d8:	e28d2038 	add	r2, sp, #56	; 0x38
 e0024dc:	e1a01008 	mov	r1, r8
 e0024e0:	e1a00009 	mov	r0, r9
 e0024e4:	ebfffd96 	bl	e001b44 <__sprint_r>
 e0024e8:	e3500000 	cmp	r0, #0
 e0024ec:	1a0000f9 	bne	e0028d8 <_vfiprintf_r+0xcec>
 e0024f0:	e28d7044 	add	r7, sp, #68	; 0x44
 e0024f4:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
 e0024f8:	e3530080 	cmp	r3, #128	; 0x80
 e0024fc:	1a00001a 	bne	e00256c <_vfiprintf_r+0x980>
 e002500:	e59d3010 	ldr	r3, [sp, #16]
 e002504:	e59d2014 	ldr	r2, [sp, #20]
 e002508:	e0435002 	sub	r5, r3, r2
 e00250c:	e3550000 	cmp	r5, #0
 e002510:	da000015 	ble	e00256c <_vfiprintf_r+0x980>
 e002514:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
 e002518:	e2871008 	add	r1, r7, #8
 e00251c:	e59f0584 	ldr	r0, [pc, #1412]	; e002aa8 <_vfiprintf_r+0xebc>
 e002520:	e3550010 	cmp	r5, #16
 e002524:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
 e002528:	e2833001 	add	r3, r3, #1
 e00252c:	e5870000 	str	r0, [r7]
 e002530:	ca000098 	bgt	e002798 <_vfiprintf_r+0xbac>
 e002534:	e3530007 	cmp	r3, #7
 e002538:	e5875004 	str	r5, [r7, #4]
 e00253c:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e002540:	e0855002 	add	r5, r5, r2
 e002544:	d1a07001 	movle	r7, r1
 e002548:	e58d5040 	str	r5, [sp, #64]	; 0x40
 e00254c:	da000006 	ble	e00256c <_vfiprintf_r+0x980>
 e002550:	e28d2038 	add	r2, sp, #56	; 0x38
 e002554:	e1a01008 	mov	r1, r8
 e002558:	e1a00009 	mov	r0, r9
 e00255c:	ebfffd78 	bl	e001b44 <__sprint_r>
 e002560:	e3500000 	cmp	r0, #0
 e002564:	1a0000db 	bne	e0028d8 <_vfiprintf_r+0xcec>
 e002568:	e28d7044 	add	r7, sp, #68	; 0x44
 e00256c:	e59d3004 	ldr	r3, [sp, #4]
 e002570:	e0466003 	sub	r6, r6, r3
 e002574:	e3560000 	cmp	r6, #0
 e002578:	c59f5528 	ldrgt	r5, [pc, #1320]	; e002aa8 <_vfiprintf_r+0xebc>
 e00257c:	ca0000a6 	bgt	e00281c <_vfiprintf_r+0xc30>
 e002580:	e59d3004 	ldr	r3, [sp, #4]
 e002584:	e59d0040 	ldr	r0, [sp, #64]	; 0x40
 e002588:	e5873004 	str	r3, [r7, #4]
 e00258c:	e0800003 	add	r0, r0, r3
 e002590:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
 e002594:	e587b000 	str	fp, [r7]
 e002598:	e2833001 	add	r3, r3, #1
 e00259c:	e58d0040 	str	r0, [sp, #64]	; 0x40
 e0025a0:	e3530007 	cmp	r3, #7
 e0025a4:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e0025a8:	d2877008 	addle	r7, r7, #8
 e0025ac:	da000006 	ble	e0025cc <_vfiprintf_r+0x9e0>
 e0025b0:	e28d2038 	add	r2, sp, #56	; 0x38
 e0025b4:	e1a01008 	mov	r1, r8
 e0025b8:	e1a00009 	mov	r0, r9
 e0025bc:	ebfffd60 	bl	e001b44 <__sprint_r>
 e0025c0:	e3500000 	cmp	r0, #0
 e0025c4:	1a0000c3 	bne	e0028d8 <_vfiprintf_r+0xcec>
 e0025c8:	e28d7044 	add	r7, sp, #68	; 0x44
 e0025cc:	e3140004 	tst	r4, #4
 e0025d0:	1a0000a7 	bne	e002874 <_vfiprintf_r+0xc88>
 e0025d4:	e59d300c 	ldr	r3, [sp, #12]
 e0025d8:	e59d2010 	ldr	r2, [sp, #16]
 e0025dc:	e59d1014 	ldr	r1, [sp, #20]
 e0025e0:	e1520001 	cmp	r2, r1
 e0025e4:	a0833002 	addge	r3, r3, r2
 e0025e8:	b0833001 	addlt	r3, r3, r1
 e0025ec:	e58d300c 	str	r3, [sp, #12]
 e0025f0:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
 e0025f4:	e3530000 	cmp	r3, #0
 e0025f8:	0a000005 	beq	e002614 <_vfiprintf_r+0xa28>
 e0025fc:	e28d2038 	add	r2, sp, #56	; 0x38
 e002600:	e1a01008 	mov	r1, r8
 e002604:	e1a00009 	mov	r0, r9
 e002608:	ebfffd4d 	bl	e001b44 <__sprint_r>
 e00260c:	e3500000 	cmp	r0, #0
 e002610:	1a0000b0 	bne	e0028d8 <_vfiprintf_r+0xcec>
 e002614:	e3a03000 	mov	r3, #0
 e002618:	e28d7044 	add	r7, sp, #68	; 0x44
 e00261c:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e002620:	eaffff0d 	b	e00225c <_vfiprintf_r+0x670>
 e002624:	e3844010 	orr	r4, r4, #16
 e002628:	e2143020 	ands	r3, r4, #32
 e00262c:	0a000006 	beq	e00264c <_vfiprintf_r+0xa60>
 e002630:	e2855007 	add	r5, r5, #7
 e002634:	e3c53007 	bic	r3, r5, #7
 e002638:	e1a0a003 	mov	sl, r3
 e00263c:	e5936004 	ldr	r6, [r3, #4]
 e002640:	e49a5008 	ldr	r5, [sl], #8
 e002644:	e3a03001 	mov	r3, #1
 e002648:	eaffff20 	b	e0022d0 <_vfiprintf_r+0x6e4>
 e00264c:	e1a0a005 	mov	sl, r5
 e002650:	e2146010 	ands	r6, r4, #16
 e002654:	e49a5004 	ldr	r5, [sl], #4
 e002658:	0a000001 	beq	e002664 <_vfiprintf_r+0xa78>
 e00265c:	e1a06003 	mov	r6, r3
 e002660:	eafffff7 	b	e002644 <_vfiprintf_r+0xa58>
 e002664:	e2143040 	ands	r3, r4, #64	; 0x40
 e002668:	16ff5075 	uxthne	r5, r5
 e00266c:	1afffff4 	bne	e002644 <_vfiprintf_r+0xa58>
 e002670:	e2146c02 	ands	r6, r4, #512	; 0x200
 e002674:	0afffff2 	beq	e002644 <_vfiprintf_r+0xa58>
 e002678:	e6ef5075 	uxtb	r5, r5
 e00267c:	eafffff6 	b	e00265c <_vfiprintf_r+0xa70>
 e002680:	e59f2424 	ldr	r2, [pc, #1060]	; e002aac <_vfiprintf_r+0xec0>
 e002684:	eafffe36 	b	e001f64 <_vfiprintf_r+0x378>
 e002688:	e1a0a005 	mov	sl, r5
 e00268c:	e2146010 	ands	r6, r4, #16
 e002690:	e49a5004 	ldr	r5, [sl], #4
 e002694:	0a000001 	beq	e0026a0 <_vfiprintf_r+0xab4>
 e002698:	e1a06002 	mov	r6, r2
 e00269c:	eafffe38 	b	e001f84 <_vfiprintf_r+0x398>
 e0026a0:	e2142040 	ands	r2, r4, #64	; 0x40
 e0026a4:	16ff5075 	uxthne	r5, r5
 e0026a8:	1afffe35 	bne	e001f84 <_vfiprintf_r+0x398>
 e0026ac:	e2146c02 	ands	r6, r4, #512	; 0x200
 e0026b0:	0afffe33 	beq	e001f84 <_vfiprintf_r+0x398>
 e0026b4:	e6ef5075 	uxtb	r5, r5
 e0026b8:	eafffff6 	b	e002698 <_vfiprintf_r+0xaac>
 e0026bc:	e59d0004 	ldr	r0, [sp, #4]
 e0026c0:	e1852006 	orr	r2, r5, r6
 e0026c4:	e3c44080 	bic	r4, r4, #128	; 0x80
 e0026c8:	e3520000 	cmp	r2, #0
 e0026cc:	03500000 	cmpeq	r0, #0
 e0026d0:	13a02001 	movne	r2, #1
 e0026d4:	03a02000 	moveq	r2, #0
 e0026d8:	1afffead 	bne	e002194 <_vfiprintf_r+0x5a8>
 e0026dc:	e3530000 	cmp	r3, #0
 e0026e0:	1a000011 	bne	e00272c <_vfiprintf_r+0xb40>
 e0026e4:	e2112001 	ands	r2, r1, #1
 e0026e8:	e58d2004 	str	r2, [sp, #4]
 e0026ec:	0a00000f 	beq	e002730 <_vfiprintf_r+0xb44>
 e0026f0:	e3a02030 	mov	r2, #48	; 0x30
 e0026f4:	e58d3004 	str	r3, [sp, #4]
 e0026f8:	e5cd20e7 	strb	r2, [sp, #231]	; 0xe7
 e0026fc:	e28db0e7 	add	fp, sp, #231	; 0xe7
 e002700:	eafffeb8 	b	e0021e8 <_vfiprintf_r+0x5fc>
 e002704:	e205300f 	and	r3, r5, #15
 e002708:	e59d2018 	ldr	r2, [sp, #24]
 e00270c:	e1a05225 	lsr	r5, r5, #4
 e002710:	e1855e06 	orr	r5, r5, r6, lsl #28
 e002714:	e1a06226 	lsr	r6, r6, #4
 e002718:	e7d23003 	ldrb	r3, [r2, r3]
 e00271c:	e56b3001 	strb	r3, [fp, #-1]!
 e002720:	e1953006 	orrs	r3, r5, r6
 e002724:	1afffff6 	bne	e002704 <_vfiprintf_r+0xb18>
 e002728:	eafffeae 	b	e0021e8 <_vfiprintf_r+0x5fc>
 e00272c:	e58d2004 	str	r2, [sp, #4]
 e002730:	e28db0e8 	add	fp, sp, #232	; 0xe8
 e002734:	eafffeab 	b	e0021e8 <_vfiprintf_r+0x5fc>
 e002738:	e3530000 	cmp	r3, #0
 e00273c:	0a000081 	beq	e002948 <_vfiprintf_r+0xd5c>
 e002740:	e3a0b000 	mov	fp, #0
 e002744:	e1a0a005 	mov	sl, r5
 e002748:	e5cd3084 	strb	r3, [sp, #132]	; 0x84
 e00274c:	e5cdb033 	strb	fp, [sp, #51]	; 0x33
 e002750:	eafffe77 	b	e002134 <_vfiprintf_r+0x548>
 e002754:	e3a00010 	mov	r0, #16
 e002758:	e3530007 	cmp	r3, #7
 e00275c:	e0822000 	add	r2, r2, r0
 e002760:	e5870004 	str	r0, [r7, #4]
 e002764:	e58d2040 	str	r2, [sp, #64]	; 0x40
 e002768:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e00276c:	da000006 	ble	e00278c <_vfiprintf_r+0xba0>
 e002770:	e28d2038 	add	r2, sp, #56	; 0x38
 e002774:	e1a01008 	mov	r1, r8
 e002778:	e1a00009 	mov	r0, r9
 e00277c:	ebfffcf0 	bl	e001b44 <__sprint_r>
 e002780:	e3500000 	cmp	r0, #0
 e002784:	1a000053 	bne	e0028d8 <_vfiprintf_r+0xcec>
 e002788:	e28d1044 	add	r1, sp, #68	; 0x44
 e00278c:	e2455010 	sub	r5, r5, #16
 e002790:	e1a07001 	mov	r7, r1
 e002794:	eaffff12 	b	e0023e4 <_vfiprintf_r+0x7f8>
 e002798:	e3a00010 	mov	r0, #16
 e00279c:	e3530007 	cmp	r3, #7
 e0027a0:	e0822000 	add	r2, r2, r0
 e0027a4:	e5870004 	str	r0, [r7, #4]
 e0027a8:	e58d2040 	str	r2, [sp, #64]	; 0x40
 e0027ac:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e0027b0:	da000006 	ble	e0027d0 <_vfiprintf_r+0xbe4>
 e0027b4:	e28d2038 	add	r2, sp, #56	; 0x38
 e0027b8:	e1a01008 	mov	r1, r8
 e0027bc:	e1a00009 	mov	r0, r9
 e0027c0:	ebfffcdf 	bl	e001b44 <__sprint_r>
 e0027c4:	e3500000 	cmp	r0, #0
 e0027c8:	1a000042 	bne	e0028d8 <_vfiprintf_r+0xcec>
 e0027cc:	e28d1044 	add	r1, sp, #68	; 0x44
 e0027d0:	e2455010 	sub	r5, r5, #16
 e0027d4:	e1a07001 	mov	r7, r1
 e0027d8:	eaffff4d 	b	e002514 <_vfiprintf_r+0x928>
 e0027dc:	e3a00010 	mov	r0, #16
 e0027e0:	e3530007 	cmp	r3, #7
 e0027e4:	e0811000 	add	r1, r1, r0
 e0027e8:	e5870004 	str	r0, [r7, #4]
 e0027ec:	e58d1040 	str	r1, [sp, #64]	; 0x40
 e0027f0:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e0027f4:	da000006 	ble	e002814 <_vfiprintf_r+0xc28>
 e0027f8:	e28d2038 	add	r2, sp, #56	; 0x38
 e0027fc:	e1a01008 	mov	r1, r8
 e002800:	e1a00009 	mov	r0, r9
 e002804:	ebfffcce 	bl	e001b44 <__sprint_r>
 e002808:	e3500000 	cmp	r0, #0
 e00280c:	1a000031 	bne	e0028d8 <_vfiprintf_r+0xcec>
 e002810:	e28d2044 	add	r2, sp, #68	; 0x44
 e002814:	e2466010 	sub	r6, r6, #16
 e002818:	e1a07002 	mov	r7, r2
 e00281c:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
 e002820:	e2872008 	add	r2, r7, #8
 e002824:	e59d1040 	ldr	r1, [sp, #64]	; 0x40
 e002828:	e3560010 	cmp	r6, #16
 e00282c:	e2833001 	add	r3, r3, #1
 e002830:	e5875000 	str	r5, [r7]
 e002834:	caffffe8 	bgt	e0027dc <_vfiprintf_r+0xbf0>
 e002838:	e3530007 	cmp	r3, #7
 e00283c:	e0861001 	add	r1, r6, r1
 e002840:	e5876004 	str	r6, [r7, #4]
 e002844:	d1a07002 	movle	r7, r2
 e002848:	e58d1040 	str	r1, [sp, #64]	; 0x40
 e00284c:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e002850:	daffff4a 	ble	e002580 <_vfiprintf_r+0x994>
 e002854:	e28d2038 	add	r2, sp, #56	; 0x38
 e002858:	e1a01008 	mov	r1, r8
 e00285c:	e1a00009 	mov	r0, r9
 e002860:	ebfffcb7 	bl	e001b44 <__sprint_r>
 e002864:	e3500000 	cmp	r0, #0
 e002868:	1a00001a 	bne	e0028d8 <_vfiprintf_r+0xcec>
 e00286c:	e28d7044 	add	r7, sp, #68	; 0x44
 e002870:	eaffff42 	b	e002580 <_vfiprintf_r+0x994>
 e002874:	e59d3010 	ldr	r3, [sp, #16]
 e002878:	e59d2014 	ldr	r2, [sp, #20]
 e00287c:	e0434002 	sub	r4, r3, r2
 e002880:	e3540000 	cmp	r4, #0
 e002884:	c3a06010 	movgt	r6, #16
 e002888:	c59f5214 	ldrgt	r5, [pc, #532]	; e002aa4 <_vfiprintf_r+0xeb8>
 e00288c:	daffff50 	ble	e0025d4 <_vfiprintf_r+0x9e8>
 e002890:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
 e002894:	e3540010 	cmp	r4, #16
 e002898:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
 e00289c:	e2833001 	add	r3, r3, #1
 e0028a0:	e5875000 	str	r5, [r7]
 e0028a4:	ca000017 	bgt	e002908 <_vfiprintf_r+0xd1c>
 e0028a8:	e5874004 	str	r4, [r7, #4]
 e0028ac:	e3530007 	cmp	r3, #7
 e0028b0:	e0844002 	add	r4, r4, r2
 e0028b4:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e0028b8:	e58d4040 	str	r4, [sp, #64]	; 0x40
 e0028bc:	daffff44 	ble	e0025d4 <_vfiprintf_r+0x9e8>
 e0028c0:	e28d2038 	add	r2, sp, #56	; 0x38
 e0028c4:	e1a01008 	mov	r1, r8
 e0028c8:	e1a00009 	mov	r0, r9
 e0028cc:	ebfffc9c 	bl	e001b44 <__sprint_r>
 e0028d0:	e3500000 	cmp	r0, #0
 e0028d4:	0affff3e 	beq	e0025d4 <_vfiprintf_r+0x9e8>
 e0028d8:	e5983064 	ldr	r3, [r8, #100]	; 0x64
 e0028dc:	e3130001 	tst	r3, #1
 e0028e0:	1a000004 	bne	e0028f8 <_vfiprintf_r+0xd0c>
 e0028e4:	e1d830bc 	ldrh	r3, [r8, #12]
 e0028e8:	e3130c02 	tst	r3, #512	; 0x200
 e0028ec:	1a000001 	bne	e0028f8 <_vfiprintf_r+0xd0c>
 e0028f0:	e5980058 	ldr	r0, [r8, #88]	; 0x58
 e0028f4:	ebfff92d 	bl	e000db0 <__retarget_lock_release_recursive>
 e0028f8:	e1d830bc 	ldrh	r3, [r8, #12]
 e0028fc:	e3130040 	tst	r3, #64	; 0x40
 e002900:	0afffce5 	beq	e001c9c <_vfiprintf_r+0xb0>
 e002904:	eafffce2 	b	e001c94 <_vfiprintf_r+0xa8>
 e002908:	e3530007 	cmp	r3, #7
 e00290c:	e2822010 	add	r2, r2, #16
 e002910:	e5876004 	str	r6, [r7, #4]
 e002914:	d2877008 	addle	r7, r7, #8
 e002918:	e58d2040 	str	r2, [sp, #64]	; 0x40
 e00291c:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e002920:	da000006 	ble	e002940 <_vfiprintf_r+0xd54>
 e002924:	e28d2038 	add	r2, sp, #56	; 0x38
 e002928:	e1a01008 	mov	r1, r8
 e00292c:	e1a00009 	mov	r0, r9
 e002930:	ebfffc83 	bl	e001b44 <__sprint_r>
 e002934:	e3500000 	cmp	r0, #0
 e002938:	1affffe6 	bne	e0028d8 <_vfiprintf_r+0xcec>
 e00293c:	e28d7044 	add	r7, sp, #68	; 0x44
 e002940:	e2444010 	sub	r4, r4, #16
 e002944:	eaffffd1 	b	e002890 <_vfiprintf_r+0xca4>
 e002948:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
 e00294c:	e3530000 	cmp	r3, #0
 e002950:	1a000002 	bne	e002960 <_vfiprintf_r+0xd74>
 e002954:	e3a03000 	mov	r3, #0
 e002958:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e00295c:	eaffffdd 	b	e0028d8 <_vfiprintf_r+0xcec>
 e002960:	e28d2038 	add	r2, sp, #56	; 0x38
 e002964:	e1a01008 	mov	r1, r8
 e002968:	e1a00009 	mov	r0, r9
 e00296c:	ebfffc74 	bl	e001b44 <__sprint_r>
 e002970:	e3500000 	cmp	r0, #0
 e002974:	0afffff6 	beq	e002954 <_vfiprintf_r+0xd68>
 e002978:	eaffffd6 	b	e0028d8 <_vfiprintf_r+0xcec>
 e00297c:	e59d3004 	ldr	r3, [sp, #4]
 e002980:	e3730001 	cmn	r3, #1
 e002984:	11a01004 	movne	r1, r4
 e002988:	13a03001 	movne	r3, #1
 e00298c:	1affff4a 	bne	e0026bc <_vfiprintf_r+0xad0>
 e002990:	e355000a 	cmp	r5, #10
 e002994:	e2d63000 	sbcs	r3, r6, #0
 e002998:	32855030 	addcc	r5, r5, #48	; 0x30
 e00299c:	35cd50e7 	strbcc	r5, [sp, #231]	; 0xe7
 e0029a0:	3affff55 	bcc	e0026fc <_vfiprintf_r+0xb10>
 e0029a4:	e3a03000 	mov	r3, #0
 e0029a8:	e58d3014 	str	r3, [sp, #20]
 e0029ac:	e28d30e8 	add	r3, sp, #232	; 0xe8
 e0029b0:	e58d3028 	str	r3, [sp, #40]	; 0x28
 e0029b4:	e2043b01 	and	r3, r4, #1024	; 0x400
 e0029b8:	e58d302c 	str	r3, [sp, #44]	; 0x2c
 e0029bc:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
 e0029c0:	e3a0200a 	mov	r2, #10
 e0029c4:	e1a00005 	mov	r0, r5
 e0029c8:	e1a01006 	mov	r1, r6
 e0029cc:	e243b001 	sub	fp, r3, #1
 e0029d0:	e3a03000 	mov	r3, #0
 e0029d4:	ebfff66e 	bl	e000394 <__aeabi_uldivmod>
 e0029d8:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
 e0029dc:	e2822030 	add	r2, r2, #48	; 0x30
 e0029e0:	e5432001 	strb	r2, [r3, #-1]
 e0029e4:	e59d3014 	ldr	r3, [sp, #20]
 e0029e8:	e2833001 	add	r3, r3, #1
 e0029ec:	e58d3014 	str	r3, [sp, #20]
 e0029f0:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
 e0029f4:	e3530000 	cmp	r3, #0
 e0029f8:	0a00001c 	beq	e002a70 <_vfiprintf_r+0xe84>
 e0029fc:	e59d301c 	ldr	r3, [sp, #28]
 e002a00:	e355000a 	cmp	r5, #10
 e002a04:	e59d1014 	ldr	r1, [sp, #20]
 e002a08:	e5d32000 	ldrb	r2, [r3]
 e002a0c:	e2d63000 	sbcs	r3, r6, #0
 e002a10:	23a03001 	movcs	r3, #1
 e002a14:	33a03000 	movcc	r3, #0
 e002a18:	e35200ff 	cmp	r2, #255	; 0xff
 e002a1c:	03a03000 	moveq	r3, #0
 e002a20:	12033001 	andne	r3, r3, #1
 e002a24:	e1520001 	cmp	r2, r1
 e002a28:	13a03000 	movne	r3, #0
 e002a2c:	02033001 	andeq	r3, r3, #1
 e002a30:	e3530000 	cmp	r3, #0
 e002a34:	0a00000d 	beq	e002a70 <_vfiprintf_r+0xe84>
 e002a38:	e59d3020 	ldr	r3, [sp, #32]
 e002a3c:	e59d1024 	ldr	r1, [sp, #36]	; 0x24
 e002a40:	e04bb003 	sub	fp, fp, r3
 e002a44:	e1a02003 	mov	r2, r3
 e002a48:	e1a0000b 	mov	r0, fp
 e002a4c:	ebfffc12 	bl	e001a9c <strncpy>
 e002a50:	e59d301c 	ldr	r3, [sp, #28]
 e002a54:	e5d33001 	ldrb	r3, [r3, #1]
 e002a58:	e3530000 	cmp	r3, #0
 e002a5c:	159d301c 	ldrne	r3, [sp, #28]
 e002a60:	12833001 	addne	r3, r3, #1
 e002a64:	158d301c 	strne	r3, [sp, #28]
 e002a68:	13a03000 	movne	r3, #0
 e002a6c:	e58d3014 	str	r3, [sp, #20]
 e002a70:	e3a03000 	mov	r3, #0
 e002a74:	e3a0200a 	mov	r2, #10
 e002a78:	e1a00005 	mov	r0, r5
 e002a7c:	e1a01006 	mov	r1, r6
 e002a80:	ebfff643 	bl	e000394 <__aeabi_uldivmod>
 e002a84:	e355000a 	cmp	r5, #10
 e002a88:	e2d63000 	sbcs	r3, r6, #0
 e002a8c:	3afffdd5 	bcc	e0021e8 <_vfiprintf_r+0x5fc>
 e002a90:	e1a05000 	mov	r5, r0
 e002a94:	e1a06001 	mov	r6, r1
 e002a98:	e58db028 	str	fp, [sp, #40]	; 0x28
 e002a9c:	eaffffc6 	b	e0029bc <_vfiprintf_r+0xdd0>
 e002aa0:	0e0154a5 	.word	0x0e0154a5
 e002aa4:	0e013a38 	.word	0x0e013a38
 e002aa8:	0e013a48 	.word	0x0e013a48
 e002aac:	0e015494 	.word	0x0e015494

0e002ab0 <vfiprintf>:
 e002ab0:	e1a03002 	mov	r3, r2
 e002ab4:	e1a02001 	mov	r2, r1
 e002ab8:	e1a01000 	mov	r1, r0
 e002abc:	e59f0004 	ldr	r0, [pc, #4]	; e002ac8 <vfiprintf+0x18>
 e002ac0:	e5900000 	ldr	r0, [r0]
 e002ac4:	eafffc48 	b	e001bec <_vfiprintf_r>
 e002ac8:	60095000 	.word	0x60095000

0e002acc <__sbprintf>:
 e002acc:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e002ad0:	e1a08003 	mov	r8, r3
 e002ad4:	e1d130bc 	ldrh	r3, [r1, #12]
 e002ad8:	e24dde46 	sub	sp, sp, #1120	; 0x460
 e002adc:	e1a05002 	mov	r5, r2
 e002ae0:	e24dd008 	sub	sp, sp, #8
 e002ae4:	e3c33002 	bic	r3, r3, #2
 e002ae8:	e1a0700d 	mov	r7, sp
 e002aec:	e1a06000 	mov	r6, r0
 e002af0:	e28d0058 	add	r0, sp, #88	; 0x58
 e002af4:	e1a04001 	mov	r4, r1
 e002af8:	e1c730bc 	strh	r3, [r7, #12]
 e002afc:	e5913064 	ldr	r3, [r1, #100]	; 0x64
 e002b00:	e58d3064 	str	r3, [sp, #100]	; 0x64
 e002b04:	e1d130be 	ldrh	r3, [r1, #14]
 e002b08:	e1c730be 	strh	r3, [r7, #14]
 e002b0c:	e5913020 	ldr	r3, [r1, #32]
 e002b10:	e58d3020 	str	r3, [sp, #32]
 e002b14:	e5913028 	ldr	r3, [r1, #40]	; 0x28
 e002b18:	e58d3028 	str	r3, [sp, #40]	; 0x28
 e002b1c:	e28d3068 	add	r3, sp, #104	; 0x68
 e002b20:	e58d3000 	str	r3, [sp]
 e002b24:	e58d3010 	str	r3, [sp, #16]
 e002b28:	e3a03b01 	mov	r3, #1024	; 0x400
 e002b2c:	e58d3008 	str	r3, [sp, #8]
 e002b30:	e58d3014 	str	r3, [sp, #20]
 e002b34:	e3a03000 	mov	r3, #0
 e002b38:	e58d3018 	str	r3, [sp, #24]
 e002b3c:	ebfff891 	bl	e000d88 <__retarget_lock_init_recursive>
 e002b40:	e1a02005 	mov	r2, r5
 e002b44:	e1a03008 	mov	r3, r8
 e002b48:	e1a01007 	mov	r1, r7
 e002b4c:	e1a00006 	mov	r0, r6
 e002b50:	ebfffc25 	bl	e001bec <_vfiprintf_r>
 e002b54:	e2505000 	subs	r5, r0, #0
 e002b58:	ba000004 	blt	e002b70 <__sbprintf+0xa4>
 e002b5c:	e1a01007 	mov	r1, r7
 e002b60:	e1a00006 	mov	r0, r6
 e002b64:	ebfff6fd 	bl	e000760 <_fflush_r>
 e002b68:	e3500000 	cmp	r0, #0
 e002b6c:	13e05000 	mvnne	r5, #0
 e002b70:	e1dd30bc 	ldrh	r3, [sp, #12]
 e002b74:	e59d0058 	ldr	r0, [sp, #88]	; 0x58
 e002b78:	e3130040 	tst	r3, #64	; 0x40
 e002b7c:	11d430bc 	ldrhne	r3, [r4, #12]
 e002b80:	13833040 	orrne	r3, r3, #64	; 0x40
 e002b84:	11c430bc 	strhne	r3, [r4, #12]
 e002b88:	ebfff880 	bl	e000d90 <__retarget_lock_close_recursive>
 e002b8c:	e1a00005 	mov	r0, r5
 e002b90:	e28dde46 	add	sp, sp, #1120	; 0x460
 e002b94:	e28dd008 	add	sp, sp, #8
 e002b98:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0e002b9c <vprintf>:
 e002b9c:	e1a03001 	mov	r3, r1
 e002ba0:	e59f100c 	ldr	r1, [pc, #12]	; e002bb4 <vprintf+0x18>
 e002ba4:	e1a02000 	mov	r2, r0
 e002ba8:	e5910000 	ldr	r0, [r1]
 e002bac:	e5901008 	ldr	r1, [r0, #8]
 e002bb0:	ea000bb4 	b	e005a88 <_vfprintf_r>
 e002bb4:	60095000 	.word	0x60095000

0e002bb8 <_vprintf_r>:
 e002bb8:	e1a03002 	mov	r3, r2
 e002bbc:	e1a02001 	mov	r2, r1
 e002bc0:	e5901008 	ldr	r1, [r0, #8]
 e002bc4:	ea000baf 	b	e005a88 <_vfprintf_r>

0e002bc8 <_write_r>:
 e002bc8:	e92d4070 	push	{r4, r5, r6, lr}
 e002bcc:	e1a04000 	mov	r4, r0
 e002bd0:	e59f502c 	ldr	r5, [pc, #44]	; e002c04 <_write_r+0x3c>
 e002bd4:	e1a00001 	mov	r0, r1
 e002bd8:	e1a01002 	mov	r1, r2
 e002bdc:	e3a02000 	mov	r2, #0
 e002be0:	e5852000 	str	r2, [r5]
 e002be4:	e1a02003 	mov	r2, r3
 e002be8:	eb0016a7 	bl	e00868c <_write>
 e002bec:	e3700001 	cmn	r0, #1
 e002bf0:	18bd8070 	popne	{r4, r5, r6, pc}
 e002bf4:	e5953000 	ldr	r3, [r5]
 e002bf8:	e3530000 	cmp	r3, #0
 e002bfc:	15843000 	strne	r3, [r4]
 e002c00:	e8bd8070 	pop	{r4, r5, r6, pc}
 e002c04:	600a3160 	.word	0x600a3160

0e002c08 <__swsetup_r>:
 e002c08:	e59f3124 	ldr	r3, [pc, #292]	; e002d34 <__swsetup_r+0x12c>
 e002c0c:	e92d4070 	push	{r4, r5, r6, lr}
 e002c10:	e1a05000 	mov	r5, r0
 e002c14:	e1a04001 	mov	r4, r1
 e002c18:	e5930000 	ldr	r0, [r3]
 e002c1c:	e3500000 	cmp	r0, #0
 e002c20:	0a000003 	beq	e002c34 <__swsetup_r+0x2c>
 e002c24:	e5903018 	ldr	r3, [r0, #24]
 e002c28:	e3530000 	cmp	r3, #0
 e002c2c:	1a000000 	bne	e002c34 <__swsetup_r+0x2c>
 e002c30:	ebfff772 	bl	e000a00 <__sinit>
 e002c34:	e1d430bc 	ldrh	r3, [r4, #12]
 e002c38:	e1d420fc 	ldrsh	r2, [r4, #12]
 e002c3c:	e3130008 	tst	r3, #8
 e002c40:	1a000019 	bne	e002cac <__swsetup_r+0xa4>
 e002c44:	e3130010 	tst	r3, #16
 e002c48:	03a03009 	moveq	r3, #9
 e002c4c:	05853000 	streq	r3, [r5]
 e002c50:	0a00002d 	beq	e002d0c <__swsetup_r+0x104>
 e002c54:	e3130004 	tst	r3, #4
 e002c58:	0a000010 	beq	e002ca0 <__swsetup_r+0x98>
 e002c5c:	e5941034 	ldr	r1, [r4, #52]	; 0x34
 e002c60:	e3510000 	cmp	r1, #0
 e002c64:	0a000006 	beq	e002c84 <__swsetup_r+0x7c>
 e002c68:	e2843044 	add	r3, r4, #68	; 0x44
 e002c6c:	e1510003 	cmp	r1, r3
 e002c70:	0a000001 	beq	e002c7c <__swsetup_r+0x74>
 e002c74:	e1a00005 	mov	r0, r5
 e002c78:	eb00158b 	bl	e0082ac <__wrap__free_r>
 e002c7c:	e3a03000 	mov	r3, #0
 e002c80:	e5843034 	str	r3, [r4, #52]	; 0x34
 e002c84:	e1d430bc 	ldrh	r3, [r4, #12]
 e002c88:	e3c33024 	bic	r3, r3, #36	; 0x24
 e002c8c:	e1c430bc 	strh	r3, [r4, #12]
 e002c90:	e3a03000 	mov	r3, #0
 e002c94:	e5843004 	str	r3, [r4, #4]
 e002c98:	e5943010 	ldr	r3, [r4, #16]
 e002c9c:	e5843000 	str	r3, [r4]
 e002ca0:	e1d430bc 	ldrh	r3, [r4, #12]
 e002ca4:	e3833008 	orr	r3, r3, #8
 e002ca8:	e1c430bc 	strh	r3, [r4, #12]
 e002cac:	e5943010 	ldr	r3, [r4, #16]
 e002cb0:	e3530000 	cmp	r3, #0
 e002cb4:	1a000006 	bne	e002cd4 <__swsetup_r+0xcc>
 e002cb8:	e1d430bc 	ldrh	r3, [r4, #12]
 e002cbc:	e2033d0a 	and	r3, r3, #640	; 0x280
 e002cc0:	e3530c02 	cmp	r3, #512	; 0x200
 e002cc4:	0a000002 	beq	e002cd4 <__swsetup_r+0xcc>
 e002cc8:	e1a01004 	mov	r1, r4
 e002ccc:	e1a00005 	mov	r0, r5
 e002cd0:	eb00069d 	bl	e00474c <__smakebuf_r>
 e002cd4:	e1d400bc 	ldrh	r0, [r4, #12]
 e002cd8:	e1d420fc 	ldrsh	r2, [r4, #12]
 e002cdc:	e2103001 	ands	r3, r0, #1
 e002ce0:	0a00000d 	beq	e002d1c <__swsetup_r+0x114>
 e002ce4:	e3a03000 	mov	r3, #0
 e002ce8:	e5843008 	str	r3, [r4, #8]
 e002cec:	e5943014 	ldr	r3, [r4, #20]
 e002cf0:	e2633000 	rsb	r3, r3, #0
 e002cf4:	e5843018 	str	r3, [r4, #24]
 e002cf8:	e5943010 	ldr	r3, [r4, #16]
 e002cfc:	e3530000 	cmp	r3, #0
 e002d00:	1a000009 	bne	e002d2c <__swsetup_r+0x124>
 e002d04:	e2100080 	ands	r0, r0, #128	; 0x80
 e002d08:	08bd8070 	popeq	{r4, r5, r6, pc}
 e002d0c:	e3823040 	orr	r3, r2, #64	; 0x40
 e002d10:	e3e00000 	mvn	r0, #0
 e002d14:	e1c430bc 	strh	r3, [r4, #12]
 e002d18:	e8bd8070 	pop	{r4, r5, r6, pc}
 e002d1c:	e3100002 	tst	r0, #2
 e002d20:	05943014 	ldreq	r3, [r4, #20]
 e002d24:	e5843008 	str	r3, [r4, #8]
 e002d28:	eafffff2 	b	e002cf8 <__swsetup_r+0xf0>
 e002d2c:	e3a00000 	mov	r0, #0
 e002d30:	e8bd8070 	pop	{r4, r5, r6, pc}
 e002d34:	60095000 	.word	0x60095000

0e002d38 <abort>:
 e002d38:	e3a00006 	mov	r0, #6
 e002d3c:	e92d4010 	push	{r4, lr}
 e002d40:	eb000b2c 	bl	e0059f8 <raise>
 e002d44:	e3a00001 	mov	r0, #1
 e002d48:	eb001450 	bl	e007e90 <_exit>

0e002d4c <_close_r>:
 e002d4c:	e92d4070 	push	{r4, r5, r6, lr}
 e002d50:	e1a04000 	mov	r4, r0
 e002d54:	e59f5024 	ldr	r5, [pc, #36]	; e002d80 <_close_r+0x34>
 e002d58:	e1a00001 	mov	r0, r1
 e002d5c:	e3a03000 	mov	r3, #0
 e002d60:	e5853000 	str	r3, [r5]
 e002d64:	eb001654 	bl	e0086bc <_close>
 e002d68:	e3700001 	cmn	r0, #1
 e002d6c:	18bd8070 	popne	{r4, r5, r6, pc}
 e002d70:	e5953000 	ldr	r3, [r5]
 e002d74:	e3530000 	cmp	r3, #0
 e002d78:	15843000 	strne	r3, [r4]
 e002d7c:	e8bd8070 	pop	{r4, r5, r6, pc}
 e002d80:	600a3160 	.word	0x600a3160
 e002d84:	00000000 	.word	0x00000000

0e002d88 <quorem>:
 e002d88:	e5903010 	ldr	r3, [r0, #16]
 e002d8c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e002d90:	e5914010 	ldr	r4, [r1, #16]
 e002d94:	e24dd014 	sub	sp, sp, #20
 e002d98:	e1530004 	cmp	r3, r4
 e002d9c:	b3a00000 	movlt	r0, #0
 e002da0:	ba00004d 	blt	e002edc <quorem+0x154>
 e002da4:	e2444001 	sub	r4, r4, #1
 e002da8:	e2806014 	add	r6, r0, #20
 e002dac:	e2818014 	add	r8, r1, #20
 e002db0:	e1a0a001 	mov	sl, r1
 e002db4:	e0863104 	add	r3, r6, r4, lsl #2
 e002db8:	e58d3004 	str	r3, [sp, #4]
 e002dbc:	e7963104 	ldr	r3, [r6, r4, lsl #2]
 e002dc0:	e1a07000 	mov	r7, r0
 e002dc4:	e7981104 	ldr	r1, [r8, r4, lsl #2]
 e002dc8:	e1a0b104 	lsl	fp, r4, #2
 e002dcc:	e1a00003 	mov	r0, r3
 e002dd0:	e58d3008 	str	r3, [sp, #8]
 e002dd4:	e2811001 	add	r1, r1, #1
 e002dd8:	e58d100c 	str	r1, [sp, #12]
 e002ddc:	eb0013ba 	bl	e007ccc <__udivsi3>
 e002de0:	e59d3008 	ldr	r3, [sp, #8]
 e002de4:	e59d100c 	ldr	r1, [sp, #12]
 e002de8:	e0889104 	add	r9, r8, r4, lsl #2
 e002dec:	e1a05000 	mov	r5, r0
 e002df0:	e1530001 	cmp	r3, r1
 e002df4:	3a00001c 	bcc	e002e6c <quorem+0xe4>
 e002df8:	e3a0c000 	mov	ip, #0
 e002dfc:	e1a01008 	mov	r1, r8
 e002e00:	e1a00006 	mov	r0, r6
 e002e04:	e1a0e00c 	mov	lr, ip
 e002e08:	e4912004 	ldr	r2, [r1], #4
 e002e0c:	e1590001 	cmp	r9, r1
 e002e10:	e6ff3072 	uxth	r3, r2
 e002e14:	e1a02822 	lsr	r2, r2, #16
 e002e18:	e023c395 	mla	r3, r5, r3, ip
 e002e1c:	e1a0c823 	lsr	ip, r3, #16
 e002e20:	e6ff3073 	uxth	r3, r3
 e002e24:	e04e3003 	sub	r3, lr, r3
 e002e28:	e590e000 	ldr	lr, [r0]
 e002e2c:	e022c295 	mla	r2, r5, r2, ip
 e002e30:	e6f3307e 	uxtah	r3, r3, lr
 e002e34:	e1a0c822 	lsr	ip, r2, #16
 e002e38:	e6ff2072 	uxth	r2, r2
 e002e3c:	e062282e 	rsb	r2, r2, lr, lsr #16
 e002e40:	e0822843 	add	r2, r2, r3, asr #16
 e002e44:	e6ff3073 	uxth	r3, r3
 e002e48:	e1833802 	orr	r3, r3, r2, lsl #16
 e002e4c:	e1a0e842 	asr	lr, r2, #16
 e002e50:	e4803004 	str	r3, [r0], #4
 e002e54:	2affffeb 	bcs	e002e08 <quorem+0x80>
 e002e58:	e796300b 	ldr	r3, [r6, fp]
 e002e5c:	e3530000 	cmp	r3, #0
 e002e60:	059d3004 	ldreq	r3, [sp, #4]
 e002e64:	02433004 	subeq	r3, r3, #4
 e002e68:	0a000022 	beq	e002ef8 <quorem+0x170>
 e002e6c:	e1a0100a 	mov	r1, sl
 e002e70:	e1a00007 	mov	r0, r7
 e002e74:	eb0008d9 	bl	e0051e0 <__mcmp>
 e002e78:	e3500000 	cmp	r0, #0
 e002e7c:	ba000015 	blt	e002ed8 <quorem+0x150>
 e002e80:	e2855001 	add	r5, r5, #1
 e002e84:	e1a00006 	mov	r0, r6
 e002e88:	e3a0c000 	mov	ip, #0
 e002e8c:	e4981004 	ldr	r1, [r8], #4
 e002e90:	e590e000 	ldr	lr, [r0]
 e002e94:	e1590008 	cmp	r9, r8
 e002e98:	e6ff3071 	uxth	r3, r1
 e002e9c:	e1a02821 	lsr	r2, r1, #16
 e002ea0:	e04c3003 	sub	r3, ip, r3
 e002ea4:	e062282e 	rsb	r2, r2, lr, lsr #16
 e002ea8:	e6f3307e 	uxtah	r3, r3, lr
 e002eac:	e0822843 	add	r2, r2, r3, asr #16
 e002eb0:	e6ff3073 	uxth	r3, r3
 e002eb4:	e1833802 	orr	r3, r3, r2, lsl #16
 e002eb8:	e1a0c842 	asr	ip, r2, #16
 e002ebc:	e4803004 	str	r3, [r0], #4
 e002ec0:	2afffff1 	bcs	e002e8c <quorem+0x104>
 e002ec4:	e7962104 	ldr	r2, [r6, r4, lsl #2]
 e002ec8:	e0863104 	add	r3, r6, r4, lsl #2
 e002ecc:	e3520000 	cmp	r2, #0
 e002ed0:	02433004 	subeq	r3, r3, #4
 e002ed4:	0a000011 	beq	e002f20 <quorem+0x198>
 e002ed8:	e1a00005 	mov	r0, r5
 e002edc:	e28dd014 	add	sp, sp, #20
 e002ee0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e002ee4:	e5922000 	ldr	r2, [r2]
 e002ee8:	e2433004 	sub	r3, r3, #4
 e002eec:	e3520000 	cmp	r2, #0
 e002ef0:	1a000003 	bne	e002f04 <quorem+0x17c>
 e002ef4:	e2444001 	sub	r4, r4, #1
 e002ef8:	e1a02003 	mov	r2, r3
 e002efc:	e1560003 	cmp	r6, r3
 e002f00:	3afffff7 	bcc	e002ee4 <quorem+0x15c>
 e002f04:	e5874010 	str	r4, [r7, #16]
 e002f08:	eaffffd7 	b	e002e6c <quorem+0xe4>
 e002f0c:	e5922000 	ldr	r2, [r2]
 e002f10:	e2433004 	sub	r3, r3, #4
 e002f14:	e3520000 	cmp	r2, #0
 e002f18:	1a000003 	bne	e002f2c <quorem+0x1a4>
 e002f1c:	e2444001 	sub	r4, r4, #1
 e002f20:	e1a02003 	mov	r2, r3
 e002f24:	e1560003 	cmp	r6, r3
 e002f28:	3afffff7 	bcc	e002f0c <quorem+0x184>
 e002f2c:	e5874010 	str	r4, [r7, #16]
 e002f30:	eaffffe8 	b	e002ed8 <quorem+0x150>

0e002f34 <_dtoa_r>:
 e002f34:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e002f38:	ec576b10 	vmov	r6, r7, d0
 e002f3c:	e5908024 	ldr	r8, [r0, #36]	; 0x24
 e002f40:	ed2d8b02 	vpush	{d8}
 e002f44:	e24dd044 	sub	sp, sp, #68	; 0x44
 e002f48:	e1a05000 	mov	r5, r0
 e002f4c:	e3580000 	cmp	r8, #0
 e002f50:	e59d4070 	ldr	r4, [sp, #112]	; 0x70
 e002f54:	e58d101c 	str	r1, [sp, #28]
 e002f58:	e58d2024 	str	r2, [sp, #36]	; 0x24
 e002f5c:	e58d3030 	str	r3, [sp, #48]	; 0x30
 e002f60:	ed8d0b02 	vstr	d0, [sp, #8]
 e002f64:	1a00000b 	bne	e002f98 <_dtoa_r+0x64>
 e002f68:	e3a00010 	mov	r0, #16
 e002f6c:	eb0014c8 	bl	e008294 <__wrap_malloc>
 e002f70:	e3500000 	cmp	r0, #0
 e002f74:	e1a02000 	mov	r2, r0
 e002f78:	03a010ea 	moveq	r1, #234	; 0xea
 e002f7c:	e5850024 	str	r0, [r5, #36]	; 0x24
 e002f80:	059f33c0 	ldreq	r3, [pc, #960]	; e003348 <_dtoa_r+0x414>
 e002f84:	0a0000d3 	beq	e0032d8 <_dtoa_r+0x3a4>
 e002f88:	e5808004 	str	r8, [r0, #4]
 e002f8c:	e5808008 	str	r8, [r0, #8]
 e002f90:	e5808000 	str	r8, [r0]
 e002f94:	e580800c 	str	r8, [r0, #12]
 e002f98:	e5953024 	ldr	r3, [r5, #36]	; 0x24
 e002f9c:	e5931000 	ldr	r1, [r3]
 e002fa0:	e3510000 	cmp	r1, #0
 e002fa4:	0a000009 	beq	e002fd0 <_dtoa_r+0x9c>
 e002fa8:	e5932004 	ldr	r2, [r3, #4]
 e002fac:	e3a03001 	mov	r3, #1
 e002fb0:	e5812004 	str	r2, [r1, #4]
 e002fb4:	e1a00005 	mov	r0, r5
 e002fb8:	e1a03213 	lsl	r3, r3, r2
 e002fbc:	e5813008 	str	r3, [r1, #8]
 e002fc0:	eb0006a1 	bl	e004a4c <_Bfree>
 e002fc4:	e5953024 	ldr	r3, [r5, #36]	; 0x24
 e002fc8:	e3a02000 	mov	r2, #0
 e002fcc:	e5832000 	str	r2, [r3]
 e002fd0:	e2573000 	subs	r3, r7, #0
 e002fd4:	b3c33102 	biclt	r3, r3, #-2147483648	; 0x80000000
 e002fd8:	b58d300c 	strlt	r3, [sp, #12]
 e002fdc:	a3a03000 	movge	r3, #0
 e002fe0:	b3a02001 	movlt	r2, #1
 e002fe4:	a5843000 	strge	r3, [r4]
 e002fe8:	b5842000 	strlt	r2, [r4]
 e002fec:	e59f3358 	ldr	r3, [pc, #856]	; e00334c <_dtoa_r+0x418>
 e002ff0:	e59d400c 	ldr	r4, [sp, #12]
 e002ff4:	e1d33004 	bics	r3, r3, r4
 e002ff8:	1a000011 	bne	e003044 <_dtoa_r+0x110>
 e002ffc:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
 e003000:	e302370f 	movw	r3, #9999	; 0x270f
 e003004:	e5823000 	str	r3, [r2]
 e003008:	e7f33054 	ubfx	r3, r4, #0, #20
 e00300c:	e1933006 	orrs	r3, r3, r6
 e003010:	0a00039c 	beq	e003e88 <_dtoa_r+0xf54>
 e003014:	e59d3074 	ldr	r3, [sp, #116]	; 0x74
 e003018:	e3530000 	cmp	r3, #0
 e00301c:	e59f332c 	ldr	r3, [pc, #812]	; e003350 <_dtoa_r+0x41c>
 e003020:	e58d3004 	str	r3, [sp, #4]
 e003024:	0a000002 	beq	e003034 <_dtoa_r+0x100>
 e003028:	e2833003 	add	r3, r3, #3
 e00302c:	e59d2074 	ldr	r2, [sp, #116]	; 0x74
 e003030:	e5823000 	str	r3, [r2]
 e003034:	e59d0004 	ldr	r0, [sp, #4]
 e003038:	e28dd044 	add	sp, sp, #68	; 0x44
 e00303c:	ecbd8b02 	vpop	{d8}
 e003040:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e003044:	ed9d8b02 	vldr	d8, [sp, #8]
 e003048:	eeb58b40 	vcmp.f64	d8, #0.0
 e00304c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e003050:	1a00000a 	bne	e003080 <_dtoa_r+0x14c>
 e003054:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
 e003058:	e3a03001 	mov	r3, #1
 e00305c:	e5823000 	str	r3, [r2]
 e003060:	e59d3074 	ldr	r3, [sp, #116]	; 0x74
 e003064:	e3530000 	cmp	r3, #0
 e003068:	059f32e4 	ldreq	r3, [pc, #740]	; e003354 <_dtoa_r+0x420>
 e00306c:	159f02e4 	ldrne	r0, [pc, #740]	; e003358 <_dtoa_r+0x424>
 e003070:	15830000 	strne	r0, [r3]
 e003074:	12403001 	subne	r3, r0, #1
 e003078:	e58d3004 	str	r3, [sp, #4]
 e00307c:	eaffffec 	b	e003034 <_dtoa_r+0x100>
 e003080:	e28d103c 	add	r1, sp, #60	; 0x3c
 e003084:	eeb00b48 	vmov.f64	d0, d8
 e003088:	e28d2038 	add	r2, sp, #56	; 0x38
 e00308c:	e1a00005 	mov	r0, r5
 e003090:	eb000911 	bl	e0054dc <__d2b>
 e003094:	e7ea1a54 	ubfx	r1, r4, #20, #11
 e003098:	e1a0b000 	mov	fp, r0
 e00309c:	e3510000 	cmp	r1, #0
 e0030a0:	e59d0038 	ldr	r0, [sp, #56]	; 0x38
 e0030a4:	0a000047 	beq	e0031c8 <_dtoa_r+0x294>
 e0030a8:	ee18ca90 	vmov	ip, s17
 e0030ac:	ec532b18 	vmov	r2, r3, d8
 e0030b0:	e2411fff 	sub	r1, r1, #1020	; 0x3fc
 e0030b4:	e3a06000 	mov	r6, #0
 e0030b8:	e2411003 	sub	r1, r1, #3
 e0030bc:	e7f3c05c 	ubfx	ip, ip, #0, #20
 e0030c0:	e38c35ff 	orr	r3, ip, #1069547520	; 0x3fc00000
 e0030c4:	e3833603 	orr	r3, r3, #3145728	; 0x300000
 e0030c8:	ec432b31 	vmov	d17, r2, r3
 e0030cc:	eef70b08 	vmov.f64	d16, #120	; 0x3fc00000  1.5
 e0030d0:	eddf2b96 	vldr	d18, [pc, #600]	; e003330 <_dtoa_r+0x3fc>
 e0030d4:	ee071a90 	vmov	s15, r1
 e0030d8:	ee710be0 	vsub.f64	d16, d17, d16
 e0030dc:	eddf1b95 	vldr	d17, [pc, #596]	; e003338 <_dtoa_r+0x404>
 e0030e0:	eddf3b96 	vldr	d19, [pc, #600]	; e003340 <_dtoa_r+0x40c>
 e0030e4:	ee401ba2 	vmla.f64	d17, d16, d18
 e0030e8:	eef82be7 	vcvt.f64.s32	d18, s15
 e0030ec:	eef00b61 	vmov.f64	d16, d17
 e0030f0:	ee420ba3 	vmla.f64	d16, d18, d19
 e0030f4:	eef50bc0 	vcmpe.f64	d16, #0.0
 e0030f8:	eefd7be0 	vcvt.s32.f64	s15, d16
 e0030fc:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e003100:	ee17aa90 	vmov	sl, s15
 e003104:	5a000003 	bpl	e003118 <_dtoa_r+0x1e4>
 e003108:	eef81be7 	vcvt.f64.s32	d17, s15
 e00310c:	eef41b60 	vcmp.f64	d17, d16
 e003110:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e003114:	124aa001 	subne	sl, sl, #1
 e003118:	e35a0016 	cmp	sl, #22
 e00311c:	83a03001 	movhi	r3, #1
 e003120:	8a000006 	bhi	e003140 <_dtoa_r+0x20c>
 e003124:	e59f3238 	ldr	r3, [pc, #568]	; e003364 <_dtoa_r+0x430>
 e003128:	e083318a 	add	r3, r3, sl, lsl #3
 e00312c:	edd30b00 	vldr	d16, [r3]
 e003130:	e3a03000 	mov	r3, #0
 e003134:	eeb48be0 	vcmpe.f64	d8, d16
 e003138:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e00313c:	424aa001 	submi	sl, sl, #1
 e003140:	e0401001 	sub	r1, r0, r1
 e003144:	e58d302c 	str	r3, [sp, #44]	; 0x2c
 e003148:	e2513001 	subs	r3, r1, #1
 e00314c:	e58d3014 	str	r3, [sp, #20]
 e003150:	42613001 	rsbmi	r3, r1, #1
 e003154:	53a03000 	movpl	r3, #0
 e003158:	458d3010 	strmi	r3, [sp, #16]
 e00315c:	43a03000 	movmi	r3, #0
 e003160:	558d3010 	strpl	r3, [sp, #16]
 e003164:	458d3014 	strmi	r3, [sp, #20]
 e003168:	e35a0000 	cmp	sl, #0
 e00316c:	ba000029 	blt	e003218 <_dtoa_r+0x2e4>
 e003170:	e59d3014 	ldr	r3, [sp, #20]
 e003174:	e3a09000 	mov	r9, #0
 e003178:	e58da028 	str	sl, [sp, #40]	; 0x28
 e00317c:	e083300a 	add	r3, r3, sl
 e003180:	e58d3014 	str	r3, [sp, #20]
 e003184:	e59d301c 	ldr	r3, [sp, #28]
 e003188:	e3530009 	cmp	r3, #9
 e00318c:	8a000055 	bhi	e0032e8 <_dtoa_r+0x3b4>
 e003190:	e3530005 	cmp	r3, #5
 e003194:	c2433004 	subgt	r3, r3, #4
 e003198:	c58d301c 	strgt	r3, [sp, #28]
 e00319c:	c3a04000 	movgt	r4, #0
 e0031a0:	d3a04001 	movle	r4, #1
 e0031a4:	e59d301c 	ldr	r3, [sp, #28]
 e0031a8:	e2433002 	sub	r3, r3, #2
 e0031ac:	e3530003 	cmp	r3, #3
 e0031b0:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
 e0031b4:	ea000055 	b	e003310 <_dtoa_r+0x3dc>
 e0031b8:	0e003234 	.word	0x0e003234
 e0031bc:	0e003274 	.word	0x0e003274
 e0031c0:	0e00326c 	.word	0x0e00326c
 e0031c4:	0e0032e0 	.word	0x0e0032e0
 e0031c8:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
 e0031cc:	e0801001 	add	r1, r0, r1
 e0031d0:	e2813e43 	add	r3, r1, #1072	; 0x430
 e0031d4:	e2833002 	add	r3, r3, #2
 e0031d8:	e3530020 	cmp	r3, #32
 e0031dc:	c2812e41 	addgt	r2, r1, #1040	; 0x410
 e0031e0:	c2633040 	rsbgt	r3, r3, #64	; 0x40
 e0031e4:	c2822002 	addgt	r2, r2, #2
 e0031e8:	d2633020 	rsble	r3, r3, #32
 e0031ec:	e2411001 	sub	r1, r1, #1
 e0031f0:	c1a06236 	lsrgt	r6, r6, r2
 e0031f4:	c1863314 	orrgt	r3, r6, r4, lsl r3
 e0031f8:	d1a03316 	lslle	r3, r6, r3
 e0031fc:	ee073a90 	vmov	s15, r3
 e003200:	e3a06001 	mov	r6, #1
 e003204:	eeb87b67 	vcvt.f64.u32	d7, s15
 e003208:	ee17ca90 	vmov	ip, s15
 e00320c:	ec532b17 	vmov	r2, r3, d7
 e003210:	e24c361f 	sub	r3, ip, #32505856	; 0x1f00000
 e003214:	eaffffab 	b	e0030c8 <_dtoa_r+0x194>
 e003218:	e59d3010 	ldr	r3, [sp, #16]
 e00321c:	e26a9000 	rsb	r9, sl, #0
 e003220:	e043300a 	sub	r3, r3, sl
 e003224:	e58d3010 	str	r3, [sp, #16]
 e003228:	e3a03000 	mov	r3, #0
 e00322c:	e58d3028 	str	r3, [sp, #40]	; 0x28
 e003230:	eaffffd3 	b	e003184 <_dtoa_r+0x250>
 e003234:	e3a03000 	mov	r3, #0
 e003238:	e58d3018 	str	r3, [sp, #24]
 e00323c:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e003240:	e3530000 	cmp	r3, #0
 e003244:	c59d3024 	ldrgt	r3, [sp, #36]	; 0x24
 e003248:	c58d3020 	strgt	r3, [sp, #32]
 e00324c:	c1a08003 	movgt	r8, r3
 e003250:	ca000010 	bgt	e003298 <_dtoa_r+0x364>
 e003254:	e3a03001 	mov	r3, #1
 e003258:	e58d3020 	str	r3, [sp, #32]
 e00325c:	e1a08003 	mov	r8, r3
 e003260:	e1a02003 	mov	r2, r3
 e003264:	e58d2024 	str	r2, [sp, #36]	; 0x24
 e003268:	ea00000a 	b	e003298 <_dtoa_r+0x364>
 e00326c:	e3a03001 	mov	r3, #1
 e003270:	eafffff0 	b	e003238 <_dtoa_r+0x304>
 e003274:	e3a03000 	mov	r3, #0
 e003278:	e58d3018 	str	r3, [sp, #24]
 e00327c:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e003280:	e08a3003 	add	r3, sl, r3
 e003284:	e58d3020 	str	r3, [sp, #32]
 e003288:	e2838001 	add	r8, r3, #1
 e00328c:	e3580001 	cmp	r8, #1
 e003290:	a1a03008 	movge	r3, r8
 e003294:	b3a03001 	movlt	r3, #1
 e003298:	e5950024 	ldr	r0, [r5, #36]	; 0x24
 e00329c:	e3a02000 	mov	r2, #0
 e0032a0:	e5802004 	str	r2, [r0, #4]
 e0032a4:	e3a02004 	mov	r2, #4
 e0032a8:	e282c014 	add	ip, r2, #20
 e0032ac:	e5901004 	ldr	r1, [r0, #4]
 e0032b0:	e15c0003 	cmp	ip, r3
 e0032b4:	9a000018 	bls	e00331c <_dtoa_r+0x3e8>
 e0032b8:	e1a00005 	mov	r0, r5
 e0032bc:	eb0005a9 	bl	e004968 <_Balloc>
 e0032c0:	e2503000 	subs	r3, r0, #0
 e0032c4:	e58d3004 	str	r3, [sp, #4]
 e0032c8:	1a000028 	bne	e003370 <_dtoa_r+0x43c>
 e0032cc:	e59f3094 	ldr	r3, [pc, #148]	; e003368 <_dtoa_r+0x434>
 e0032d0:	e1a02000 	mov	r2, r0
 e0032d4:	e30011aa 	movw	r1, #426	; 0x1aa
 e0032d8:	e59f007c 	ldr	r0, [pc, #124]	; e00335c <_dtoa_r+0x428>
 e0032dc:	ebfff48a 	bl	e00050c <__assert_func>
 e0032e0:	e3a03001 	mov	r3, #1
 e0032e4:	eaffffe3 	b	e003278 <_dtoa_r+0x344>
 e0032e8:	e3a04001 	mov	r4, #1
 e0032ec:	e3a03000 	mov	r3, #0
 e0032f0:	e58d4018 	str	r4, [sp, #24]
 e0032f4:	e58d301c 	str	r3, [sp, #28]
 e0032f8:	e3e03000 	mvn	r3, #0
 e0032fc:	e3a02000 	mov	r2, #0
 e003300:	e1a08003 	mov	r8, r3
 e003304:	e58d3020 	str	r3, [sp, #32]
 e003308:	e3a03012 	mov	r3, #18
 e00330c:	eaffffd4 	b	e003264 <_dtoa_r+0x330>
 e003310:	e3a03001 	mov	r3, #1
 e003314:	e58d3018 	str	r3, [sp, #24]
 e003318:	eafffff6 	b	e0032f8 <_dtoa_r+0x3c4>
 e00331c:	e2811001 	add	r1, r1, #1
 e003320:	e1a02082 	lsl	r2, r2, #1
 e003324:	e5801004 	str	r1, [r0, #4]
 e003328:	eaffffde 	b	e0032a8 <_dtoa_r+0x374>
 e00332c:	e320f000 	nop	{0}
 e003330:	636f4361 	.word	0x636f4361
 e003334:	3fd287a7 	.word	0x3fd287a7
 e003338:	8b60c8b3 	.word	0x8b60c8b3
 e00333c:	3fc68a28 	.word	0x3fc68a28
 e003340:	509f79fb 	.word	0x509f79fb
 e003344:	3fd34413 	.word	0x3fd34413
 e003348:	0e0154c5 	.word	0x0e0154c5
 e00334c:	7ff00000 	.word	0x7ff00000
 e003350:	0e0154bf 	.word	0x0e0154bf
 e003354:	0e0154c3 	.word	0x0e0154c3
 e003358:	0e0154c4 	.word	0x0e0154c4
 e00335c:	0e0154dc 	.word	0x0e0154dc
 e003360:	0e013c60 	.word	0x0e013c60
 e003364:	0e013b70 	.word	0x0e013b70
 e003368:	0e015523 	.word	0x0e015523
 e00336c:	0e0154b6 	.word	0x0e0154b6
 e003370:	e5953024 	ldr	r3, [r5, #36]	; 0x24
 e003374:	e358000e 	cmp	r8, #14
 e003378:	83a04000 	movhi	r4, #0
 e00337c:	92044001 	andls	r4, r4, #1
 e003380:	e59d2004 	ldr	r2, [sp, #4]
 e003384:	e3540000 	cmp	r4, #0
 e003388:	e5832000 	str	r2, [r3]
 e00338c:	0a00003c 	beq	e003484 <_dtoa_r+0x550>
 e003390:	e35a0000 	cmp	sl, #0
 e003394:	da000063 	ble	e003528 <_dtoa_r+0x5f4>
 e003398:	e31a0c01 	tst	sl, #256	; 0x100
 e00339c:	e51f2040 	ldr	r2, [pc, #-64]	; e003364 <_dtoa_r+0x430>
 e0033a0:	e20a300f 	and	r3, sl, #15
 e0033a4:	e51f104c 	ldr	r1, [pc, #-76]	; e003360 <_dtoa_r+0x42c>
 e0033a8:	e0823183 	add	r3, r2, r3, lsl #3
 e0033ac:	151f2054 	ldrne	r2, [pc, #-84]	; e003360 <_dtoa_r+0x42c>
 e0033b0:	03a02002 	moveq	r2, #2
 e0033b4:	edd30b00 	vldr	d16, [r3]
 e0033b8:	e1a0324a 	asr	r3, sl, #4
 e0033bc:	1dd21b08 	vldrne	d17, [r2, #32]
 e0033c0:	1203300f 	andne	r3, r3, #15
 e0033c4:	13a02003 	movne	r2, #3
 e0033c8:	1ec81b21 	vdivne.f64	d17, d8, d17
 e0033cc:	1dcd1b02 	vstrne	d17, [sp, #8]
 e0033d0:	e3530000 	cmp	r3, #0
 e0033d4:	1a00004c 	bne	e00350c <_dtoa_r+0x5d8>
 e0033d8:	eddd1b02 	vldr	d17, [sp, #8]
 e0033dc:	eec10ba0 	vdiv.f64	d16, d17, d16
 e0033e0:	edcd0b02 	vstr	d16, [sp, #8]
 e0033e4:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
 e0033e8:	e3530000 	cmp	r3, #0
 e0033ec:	0a000067 	beq	e003590 <_dtoa_r+0x65c>
 e0033f0:	eddd0b02 	vldr	d16, [sp, #8]
 e0033f4:	eef71b00 	vmov.f64	d17, #112	; 0x3f800000  1.0
 e0033f8:	eef40be1 	vcmpe.f64	d16, d17
 e0033fc:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e003400:	5a000062 	bpl	e003590 <_dtoa_r+0x65c>
 e003404:	e3580000 	cmp	r8, #0
 e003408:	0a000060 	beq	e003590 <_dtoa_r+0x65c>
 e00340c:	e59d3020 	ldr	r3, [sp, #32]
 e003410:	e3530000 	cmp	r3, #0
 e003414:	da000019 	ble	e003480 <_dtoa_r+0x54c>
 e003418:	eef21b04 	vmov.f64	d17, #36	; 0x41200000  10.0
 e00341c:	e24a1001 	sub	r1, sl, #1
 e003420:	e2822001 	add	r2, r2, #1
 e003424:	e1a00003 	mov	r0, r3
 e003428:	ee600ba1 	vmul.f64	d16, d16, d17
 e00342c:	edcd0b02 	vstr	d16, [sp, #8]
 e003430:	ee072a90 	vmov	s15, r2
 e003434:	eddd0b02 	vldr	d16, [sp, #8]
 e003438:	e3500000 	cmp	r0, #0
 e00343c:	eef81be7 	vcvt.f64.s32	d17, s15
 e003440:	eeb17b0c 	vmov.f64	d7, #28	; 0x40e00000  7.0
 e003444:	ee017ba0 	vmla.f64	d7, d17, d16
 e003448:	ee17ca90 	vmov	ip, s15
 e00344c:	ec532b17 	vmov	r2, r3, d7
 e003450:	e24c350d 	sub	r3, ip, #54525952	; 0x3400000
 e003454:	1a000050 	bne	e00359c <_dtoa_r+0x668>
 e003458:	eef11b04 	vmov.f64	d17, #20	; 0x40a00000  5.0
 e00345c:	ee700be1 	vsub.f64	d16, d16, d17
 e003460:	ec432b31 	vmov	d17, r2, r3
 e003464:	eef40be1 	vcmpe.f64	d16, d17
 e003468:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e00346c:	ca0001ab 	bgt	e003b20 <_dtoa_r+0xbec>
 e003470:	eef11b61 	vneg.f64	d17, d17
 e003474:	eef40be1 	vcmpe.f64	d16, d17
 e003478:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e00347c:	4a0001a4 	bmi	e003b14 <_dtoa_r+0xbe0>
 e003480:	ed8d8b02 	vstr	d8, [sp, #8]
 e003484:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
 e003488:	e35a000e 	cmp	sl, #14
 e00348c:	e1e04003 	mvn	r4, r3
 e003490:	e1a04fa4 	lsr	r4, r4, #31
 e003494:	c3a04000 	movgt	r4, #0
 e003498:	e3540000 	cmp	r4, #0
 e00349c:	0a0000b2 	beq	e00376c <_dtoa_r+0x838>
 e0034a0:	e51f3144 	ldr	r3, [pc, #-324]	; e003364 <_dtoa_r+0x430>
 e0034a4:	e3580000 	cmp	r8, #0
 e0034a8:	e59d2024 	ldr	r2, [sp, #36]	; 0x24
 e0034ac:	e083318a 	add	r3, r3, sl, lsl #3
 e0034b0:	edd31b00 	vldr	d17, [r3]
 e0034b4:	c3a03000 	movgt	r3, #0
 e0034b8:	d3a03001 	movle	r3, #1
 e0034bc:	e0133fa2 	ands	r3, r3, r2, lsr #31
 e0034c0:	059d7004 	ldreq	r7, [sp, #4]
 e0034c4:	0ef23b04 	vmoveq.f64	d19, #36	; 0x41200000  10.0
 e0034c8:	0ddd0b02 	vldreq	d16, [sp, #8]
 e0034cc:	0a000086 	beq	e0036ec <_dtoa_r+0x7b8>
 e0034d0:	e3580000 	cmp	r8, #0
 e0034d4:	1a00018e 	bne	e003b14 <_dtoa_r+0xbe0>
 e0034d8:	eef10b04 	vmov.f64	d16, #20	; 0x40a00000  5.0
 e0034dc:	e1a04008 	mov	r4, r8
 e0034e0:	e1a06008 	mov	r6, r8
 e0034e4:	ee611ba0 	vmul.f64	d17, d17, d16
 e0034e8:	eddd0b02 	vldr	d16, [sp, #8]
 e0034ec:	eef41be0 	vcmpe.f64	d17, d16
 e0034f0:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e0034f4:	aa00015d 	bge	e003a70 <_dtoa_r+0xb3c>
 e0034f8:	e59d7004 	ldr	r7, [sp, #4]
 e0034fc:	e3a03031 	mov	r3, #49	; 0x31
 e003500:	e28aa001 	add	sl, sl, #1
 e003504:	e4c73001 	strb	r3, [r7], #1
 e003508:	ea00015b 	b	e003a7c <_dtoa_r+0xb48>
 e00350c:	e3130001 	tst	r3, #1
 e003510:	e2811008 	add	r1, r1, #8
 e003514:	12822001 	addne	r2, r2, #1
 e003518:	e1a030c3 	asr	r3, r3, #1
 e00351c:	1d511b02 	vldrne	d17, [r1, #-8]
 e003520:	1e600ba1 	vmulne.f64	d16, d16, d17
 e003524:	eaffffa9 	b	e0033d0 <_dtoa_r+0x49c>
 e003528:	03a02002 	moveq	r2, #2
 e00352c:	0affffac 	beq	e0033e4 <_dtoa_r+0x4b0>
 e003530:	e26a3000 	rsb	r3, sl, #0
 e003534:	e51f21d8 	ldr	r2, [pc, #-472]	; e003364 <_dtoa_r+0x430>
 e003538:	e203100f 	and	r1, r3, #15
 e00353c:	e3a00000 	mov	r0, #0
 e003540:	e1a03243 	asr	r3, r3, #4
 e003544:	e0822181 	add	r2, r2, r1, lsl #3
 e003548:	e51f11f0 	ldr	r1, [pc, #-496]	; e003360 <_dtoa_r+0x42c>
 e00354c:	edd20b00 	vldr	d16, [r2]
 e003550:	e3a02002 	mov	r2, #2
 e003554:	ee680b20 	vmul.f64	d16, d8, d16
 e003558:	edcd0b02 	vstr	d16, [sp, #8]
 e00355c:	e3530000 	cmp	r3, #0
 e003560:	1a000002 	bne	e003570 <_dtoa_r+0x63c>
 e003564:	e3500000 	cmp	r0, #0
 e003568:	1dcd0b02 	vstrne	d16, [sp, #8]
 e00356c:	eaffff9c 	b	e0033e4 <_dtoa_r+0x4b0>
 e003570:	e3130001 	tst	r3, #1
 e003574:	e2811008 	add	r1, r1, #8
 e003578:	12822001 	addne	r2, r2, #1
 e00357c:	11a00004 	movne	r0, r4
 e003580:	e1a030c3 	asr	r3, r3, #1
 e003584:	1d511b02 	vldrne	d17, [r1, #-8]
 e003588:	1e600ba1 	vmulne.f64	d16, d16, d17
 e00358c:	eafffff2 	b	e00355c <_dtoa_r+0x628>
 e003590:	e1a0100a 	mov	r1, sl
 e003594:	e1a00008 	mov	r0, r8
 e003598:	eaffffa4 	b	e003430 <_dtoa_r+0x4fc>
 e00359c:	ec432b31 	vmov	d17, r2, r3
 e0035a0:	e51f3244 	ldr	r3, [pc, #-580]	; e003364 <_dtoa_r+0x430>
 e0035a4:	e0833180 	add	r3, r3, r0, lsl #3
 e0035a8:	ed533b02 	vldr	d19, [r3, #-8]
 e0035ac:	e59d3018 	ldr	r3, [sp, #24]
 e0035b0:	e3530000 	cmp	r3, #0
 e0035b4:	e59d3004 	ldr	r3, [sp, #4]
 e0035b8:	e0834000 	add	r4, r3, r0
 e0035bc:	0a000017 	beq	e003620 <_dtoa_r+0x6ec>
 e0035c0:	eef64b00 	vmov.f64	d20, #96	; 0x3f000000  0.5
 e0035c4:	e1a07003 	mov	r7, r3
 e0035c8:	eec42ba3 	vdiv.f64	d18, d20, d19
 e0035cc:	eef73b00 	vmov.f64	d19, #112	; 0x3f800000  1.0
 e0035d0:	ee721be1 	vsub.f64	d17, d18, d17
 e0035d4:	eef22b04 	vmov.f64	d18, #36	; 0x41200000  10.0
 e0035d8:	eefd7be0 	vcvt.s32.f64	s15, d16
 e0035dc:	eef84be7 	vcvt.f64.s32	d20, s15
 e0035e0:	ee173a90 	vmov	r3, s15
 e0035e4:	ee700be4 	vsub.f64	d16, d16, d20
 e0035e8:	e2833030 	add	r3, r3, #48	; 0x30
 e0035ec:	e4c73001 	strb	r3, [r7], #1
 e0035f0:	eef40be1 	vcmpe.f64	d16, d17
 e0035f4:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e0035f8:	4a000022 	bmi	e003688 <_dtoa_r+0x754>
 e0035fc:	ee734be0 	vsub.f64	d20, d19, d16
 e003600:	eef44be1 	vcmpe.f64	d20, d17
 e003604:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e003608:	4a000023 	bmi	e00369c <_dtoa_r+0x768>
 e00360c:	e1570004 	cmp	r7, r4
 e003610:	0affff9a 	beq	e003480 <_dtoa_r+0x54c>
 e003614:	ee611ba2 	vmul.f64	d17, d17, d18
 e003618:	ee600ba2 	vmul.f64	d16, d16, d18
 e00361c:	eaffffed 	b	e0035d8 <_dtoa_r+0x6a4>
 e003620:	ee611ba3 	vmul.f64	d17, d17, d19
 e003624:	e59d7004 	ldr	r7, [sp, #4]
 e003628:	e1a02004 	mov	r2, r4
 e00362c:	eef22b04 	vmov.f64	d18, #36	; 0x41200000  10.0
 e003630:	eefd7be0 	vcvt.s32.f64	s15, d16
 e003634:	ee173a90 	vmov	r3, s15
 e003638:	eef83be7 	vcvt.f64.s32	d19, s15
 e00363c:	e2833030 	add	r3, r3, #48	; 0x30
 e003640:	e4c73001 	strb	r3, [r7], #1
 e003644:	ee700be3 	vsub.f64	d16, d16, d19
 e003648:	e1570004 	cmp	r7, r4
 e00364c:	1a00000f 	bne	e003690 <_dtoa_r+0x75c>
 e003650:	eef62b00 	vmov.f64	d18, #96	; 0x3f000000  0.5
 e003654:	ee713ba2 	vadd.f64	d19, d17, d18
 e003658:	eef40be3 	vcmpe.f64	d16, d19
 e00365c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e003660:	ca00000d 	bgt	e00369c <_dtoa_r+0x768>
 e003664:	ee721be1 	vsub.f64	d17, d18, d17
 e003668:	eef40be1 	vcmpe.f64	d16, d17
 e00366c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e003670:	5affff82 	bpl	e003480 <_dtoa_r+0x54c>
 e003674:	e1a07002 	mov	r7, r2
 e003678:	e2422001 	sub	r2, r2, #1
 e00367c:	e5573001 	ldrb	r3, [r7, #-1]
 e003680:	e3530030 	cmp	r3, #48	; 0x30
 e003684:	0afffffa 	beq	e003674 <_dtoa_r+0x740>
 e003688:	e1a0a001 	mov	sl, r1
 e00368c:	ea00002a 	b	e00373c <_dtoa_r+0x808>
 e003690:	ee600ba2 	vmul.f64	d16, d16, d18
 e003694:	eaffffe5 	b	e003630 <_dtoa_r+0x6fc>
 e003698:	e1a0100a 	mov	r1, sl
 e00369c:	e1a03007 	mov	r3, r7
 e0036a0:	e1a07003 	mov	r7, r3
 e0036a4:	e5732001 	ldrb	r2, [r3, #-1]!
 e0036a8:	e3520039 	cmp	r2, #57	; 0x39
 e0036ac:	1a000006 	bne	e0036cc <_dtoa_r+0x798>
 e0036b0:	e59d2004 	ldr	r2, [sp, #4]
 e0036b4:	e1520003 	cmp	r2, r3
 e0036b8:	1afffff8 	bne	e0036a0 <_dtoa_r+0x76c>
 e0036bc:	e59d0004 	ldr	r0, [sp, #4]
 e0036c0:	e2811001 	add	r1, r1, #1
 e0036c4:	e3a02030 	mov	r2, #48	; 0x30
 e0036c8:	e5c02000 	strb	r2, [r0]
 e0036cc:	e5d32000 	ldrb	r2, [r3]
 e0036d0:	e2822001 	add	r2, r2, #1
 e0036d4:	e5c32000 	strb	r2, [r3]
 e0036d8:	eaffffea 	b	e003688 <_dtoa_r+0x754>
 e0036dc:	ee600ba3 	vmul.f64	d16, d16, d19
 e0036e0:	eef50b40 	vcmp.f64	d16, #0.0
 e0036e4:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e0036e8:	0a000013 	beq	e00373c <_dtoa_r+0x808>
 e0036ec:	eec02ba1 	vdiv.f64	d18, d16, d17
 e0036f0:	eefd7be2 	vcvt.s32.f64	s15, d18
 e0036f4:	ee173a90 	vmov	r3, s15
 e0036f8:	eef82be7 	vcvt.f64.s32	d18, s15
 e0036fc:	e2832030 	add	r2, r3, #48	; 0x30
 e003700:	e4c72001 	strb	r2, [r7], #1
 e003704:	e59d2004 	ldr	r2, [sp, #4]
 e003708:	ee420be1 	vmls.f64	d16, d18, d17
 e00370c:	e0472002 	sub	r2, r7, r2
 e003710:	e1580002 	cmp	r8, r2
 e003714:	1afffff0 	bne	e0036dc <_dtoa_r+0x7a8>
 e003718:	ee700ba0 	vadd.f64	d16, d16, d16
 e00371c:	eef40be1 	vcmpe.f64	d16, d17
 e003720:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e003724:	caffffdb 	bgt	e003698 <_dtoa_r+0x764>
 e003728:	eef40b61 	vcmp.f64	d16, d17
 e00372c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e003730:	1a000001 	bne	e00373c <_dtoa_r+0x808>
 e003734:	e3130001 	tst	r3, #1
 e003738:	1affffd6 	bne	e003698 <_dtoa_r+0x764>
 e00373c:	e1a0100b 	mov	r1, fp
 e003740:	e1a00005 	mov	r0, r5
 e003744:	eb0004c0 	bl	e004a4c <_Bfree>
 e003748:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
 e00374c:	e3a03000 	mov	r3, #0
 e003750:	e5c73000 	strb	r3, [r7]
 e003754:	e28a3001 	add	r3, sl, #1
 e003758:	e5823000 	str	r3, [r2]
 e00375c:	e59d3074 	ldr	r3, [sp, #116]	; 0x74
 e003760:	e3530000 	cmp	r3, #0
 e003764:	15837000 	strne	r7, [r3]
 e003768:	eafffe31 	b	e003034 <_dtoa_r+0x100>
 e00376c:	e59d2018 	ldr	r2, [sp, #24]
 e003770:	e3520000 	cmp	r2, #0
 e003774:	01a04009 	moveq	r4, r9
 e003778:	059d7010 	ldreq	r7, [sp, #16]
 e00377c:	059d6018 	ldreq	r6, [sp, #24]
 e003780:	0a000013 	beq	e0037d4 <_dtoa_r+0x8a0>
 e003784:	e59d201c 	ldr	r2, [sp, #28]
 e003788:	e3520001 	cmp	r2, #1
 e00378c:	ca0000ca 	bgt	e003abc <_dtoa_r+0xb88>
 e003790:	e3560000 	cmp	r6, #0
 e003794:	e59d7010 	ldr	r7, [sp, #16]
 e003798:	12833e43 	addne	r3, r3, #1072	; 0x430
 e00379c:	e1a04009 	mov	r4, r9
 e0037a0:	12833003 	addne	r3, r3, #3
 e0037a4:	059d3038 	ldreq	r3, [sp, #56]	; 0x38
 e0037a8:	02633036 	rsbeq	r3, r3, #54	; 0x36
 e0037ac:	e59d2010 	ldr	r2, [sp, #16]
 e0037b0:	e3a01001 	mov	r1, #1
 e0037b4:	e1a00005 	mov	r0, r5
 e0037b8:	e0822003 	add	r2, r2, r3
 e0037bc:	e58d2010 	str	r2, [sp, #16]
 e0037c0:	e59d2014 	ldr	r2, [sp, #20]
 e0037c4:	e0823003 	add	r3, r2, r3
 e0037c8:	e58d3014 	str	r3, [sp, #20]
 e0037cc:	eb00056d 	bl	e004d88 <__i2b>
 e0037d0:	e1a06000 	mov	r6, r0
 e0037d4:	e59d3014 	ldr	r3, [sp, #20]
 e0037d8:	e3570000 	cmp	r7, #0
 e0037dc:	c3530000 	cmpgt	r3, #0
 e0037e0:	da000008 	ble	e003808 <_dtoa_r+0x8d4>
 e0037e4:	e1570003 	cmp	r7, r3
 e0037e8:	e59d2010 	ldr	r2, [sp, #16]
 e0037ec:	b1a03007 	movlt	r3, r7
 e0037f0:	e0422003 	sub	r2, r2, r3
 e0037f4:	e58d2010 	str	r2, [sp, #16]
 e0037f8:	e59d2014 	ldr	r2, [sp, #20]
 e0037fc:	e0477003 	sub	r7, r7, r3
 e003800:	e0423003 	sub	r3, r2, r3
 e003804:	e58d3014 	str	r3, [sp, #20]
 e003808:	e3590000 	cmp	r9, #0
 e00380c:	0a000019 	beq	e003878 <_dtoa_r+0x944>
 e003810:	e59d3018 	ldr	r3, [sp, #24]
 e003814:	e3530000 	cmp	r3, #0
 e003818:	0a0000b6 	beq	e003af8 <_dtoa_r+0xbc4>
 e00381c:	e3540000 	cmp	r4, #0
 e003820:	da00000e 	ble	e003860 <_dtoa_r+0x92c>
 e003824:	e1a01006 	mov	r1, r6
 e003828:	e1a02004 	mov	r2, r4
 e00382c:	e1a00005 	mov	r0, r5
 e003830:	eb0005d7 	bl	e004f94 <__pow5mult>
 e003834:	e1a0200b 	mov	r2, fp
 e003838:	e1a01000 	mov	r1, r0
 e00383c:	e1a06000 	mov	r6, r0
 e003840:	e1a00005 	mov	r0, r5
 e003844:	eb00055f 	bl	e004dc8 <__multiply>
 e003848:	e1a0100b 	mov	r1, fp
 e00384c:	e58d0034 	str	r0, [sp, #52]	; 0x34
 e003850:	e1a00005 	mov	r0, r5
 e003854:	eb00047c 	bl	e004a4c <_Bfree>
 e003858:	e59d3034 	ldr	r3, [sp, #52]	; 0x34
 e00385c:	e1a0b003 	mov	fp, r3
 e003860:	e0592004 	subs	r2, r9, r4
 e003864:	0a000003 	beq	e003878 <_dtoa_r+0x944>
 e003868:	e1a0100b 	mov	r1, fp
 e00386c:	e1a00005 	mov	r0, r5
 e003870:	eb0005c7 	bl	e004f94 <__pow5mult>
 e003874:	e1a0b000 	mov	fp, r0
 e003878:	e3a01001 	mov	r1, #1
 e00387c:	e1a00005 	mov	r0, r5
 e003880:	eb000540 	bl	e004d88 <__i2b>
 e003884:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
 e003888:	e1a04000 	mov	r4, r0
 e00388c:	e3530000 	cmp	r3, #0
 e003890:	da00009a 	ble	e003b00 <_dtoa_r+0xbcc>
 e003894:	e1a02003 	mov	r2, r3
 e003898:	e1a01000 	mov	r1, r0
 e00389c:	e1a00005 	mov	r0, r5
 e0038a0:	eb0005bb 	bl	e004f94 <__pow5mult>
 e0038a4:	e59d301c 	ldr	r3, [sp, #28]
 e0038a8:	e1a04000 	mov	r4, r0
 e0038ac:	e3530001 	cmp	r3, #1
 e0038b0:	c3a09000 	movgt	r9, #0
 e0038b4:	ca000018 	bgt	e00391c <_dtoa_r+0x9e8>
 e0038b8:	e59d3008 	ldr	r3, [sp, #8]
 e0038bc:	e3530000 	cmp	r3, #0
 e0038c0:	1a000091 	bne	e003b0c <_dtoa_r+0xbd8>
 e0038c4:	e59d300c 	ldr	r3, [sp, #12]
 e0038c8:	e7f33053 	ubfx	r3, r3, #0, #20
 e0038cc:	e3530000 	cmp	r3, #0
 e0038d0:	159d9008 	ldrne	r9, [sp, #8]
 e0038d4:	1a00000c 	bne	e00390c <_dtoa_r+0x9d8>
 e0038d8:	e59d300c 	ldr	r3, [sp, #12]
 e0038dc:	e3c39102 	bic	r9, r3, #-2147483648	; 0x80000000
 e0038e0:	e1a09a29 	lsr	r9, r9, #20
 e0038e4:	e1a09a09 	lsl	r9, r9, #20
 e0038e8:	e3590000 	cmp	r9, #0
 e0038ec:	0a000006 	beq	e00390c <_dtoa_r+0x9d8>
 e0038f0:	e59d3010 	ldr	r3, [sp, #16]
 e0038f4:	e3a09001 	mov	r9, #1
 e0038f8:	e2833001 	add	r3, r3, #1
 e0038fc:	e58d3010 	str	r3, [sp, #16]
 e003900:	e59d3014 	ldr	r3, [sp, #20]
 e003904:	e2833001 	add	r3, r3, #1
 e003908:	e58d3014 	str	r3, [sp, #20]
 e00390c:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
 e003910:	e3530000 	cmp	r3, #0
 e003914:	03a00001 	moveq	r0, #1
 e003918:	0a000004 	beq	e003930 <_dtoa_r+0x9fc>
 e00391c:	e5943010 	ldr	r3, [r4, #16]
 e003920:	e0843103 	add	r3, r4, r3, lsl #2
 e003924:	e5930010 	ldr	r0, [r3, #16]
 e003928:	eb0004d9 	bl	e004c94 <__hi0bits>
 e00392c:	e2600020 	rsb	r0, r0, #32
 e003930:	e59d3014 	ldr	r3, [sp, #20]
 e003934:	e0830000 	add	r0, r3, r0
 e003938:	e210001f 	ands	r0, r0, #31
 e00393c:	0a000005 	beq	e003958 <_dtoa_r+0xa24>
 e003940:	e2603020 	rsb	r3, r0, #32
 e003944:	e3530004 	cmp	r3, #4
 e003948:	c260001c 	rsbgt	r0, r0, #28
 e00394c:	ca000002 	bgt	e00395c <_dtoa_r+0xa28>
 e003950:	0a000008 	beq	e003978 <_dtoa_r+0xa44>
 e003954:	e1a00003 	mov	r0, r3
 e003958:	e280001c 	add	r0, r0, #28
 e00395c:	e59d3010 	ldr	r3, [sp, #16]
 e003960:	e0877000 	add	r7, r7, r0
 e003964:	e0833000 	add	r3, r3, r0
 e003968:	e58d3010 	str	r3, [sp, #16]
 e00396c:	e59d3014 	ldr	r3, [sp, #20]
 e003970:	e0833000 	add	r3, r3, r0
 e003974:	e58d3014 	str	r3, [sp, #20]
 e003978:	e59d3010 	ldr	r3, [sp, #16]
 e00397c:	e3530000 	cmp	r3, #0
 e003980:	da000004 	ble	e003998 <_dtoa_r+0xa64>
 e003984:	e1a0100b 	mov	r1, fp
 e003988:	e1a02003 	mov	r2, r3
 e00398c:	e1a00005 	mov	r0, r5
 e003990:	eb0005c7 	bl	e0050b4 <__lshift>
 e003994:	e1a0b000 	mov	fp, r0
 e003998:	e59d3014 	ldr	r3, [sp, #20]
 e00399c:	e3530000 	cmp	r3, #0
 e0039a0:	da000004 	ble	e0039b8 <_dtoa_r+0xa84>
 e0039a4:	e1a01004 	mov	r1, r4
 e0039a8:	e1a02003 	mov	r2, r3
 e0039ac:	e1a00005 	mov	r0, r5
 e0039b0:	eb0005bf 	bl	e0050b4 <__lshift>
 e0039b4:	e1a04000 	mov	r4, r0
 e0039b8:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
 e0039bc:	e3530000 	cmp	r3, #0
 e0039c0:	0a000015 	beq	e003a1c <_dtoa_r+0xae8>
 e0039c4:	e1a01004 	mov	r1, r4
 e0039c8:	e1a0000b 	mov	r0, fp
 e0039cc:	eb000603 	bl	e0051e0 <__mcmp>
 e0039d0:	e3500000 	cmp	r0, #0
 e0039d4:	aa000010 	bge	e003a1c <_dtoa_r+0xae8>
 e0039d8:	e3a03000 	mov	r3, #0
 e0039dc:	e1a0100b 	mov	r1, fp
 e0039e0:	e3a0200a 	mov	r2, #10
 e0039e4:	e1a00005 	mov	r0, r5
 e0039e8:	eb000436 	bl	e004ac8 <__multadd>
 e0039ec:	e59d3018 	ldr	r3, [sp, #24]
 e0039f0:	e24aa001 	sub	sl, sl, #1
 e0039f4:	e1a0b000 	mov	fp, r0
 e0039f8:	e3530000 	cmp	r3, #0
 e0039fc:	0a000005 	beq	e003a18 <_dtoa_r+0xae4>
 e003a00:	e1a01006 	mov	r1, r6
 e003a04:	e3a03000 	mov	r3, #0
 e003a08:	e3a0200a 	mov	r2, #10
 e003a0c:	e1a00005 	mov	r0, r5
 e003a10:	eb00042c 	bl	e004ac8 <__multadd>
 e003a14:	e1a06000 	mov	r6, r0
 e003a18:	e59d8020 	ldr	r8, [sp, #32]
 e003a1c:	e59d201c 	ldr	r2, [sp, #28]
 e003a20:	e3580000 	cmp	r8, #0
 e003a24:	d3a03001 	movle	r3, #1
 e003a28:	c3a03000 	movgt	r3, #0
 e003a2c:	e3520002 	cmp	r2, #2
 e003a30:	d3a03000 	movle	r3, #0
 e003a34:	e3530000 	cmp	r3, #0
 e003a38:	0a00003c 	beq	e003b30 <_dtoa_r+0xbfc>
 e003a3c:	e3580000 	cmp	r8, #0
 e003a40:	1a00000a 	bne	e003a70 <_dtoa_r+0xb3c>
 e003a44:	e1a01004 	mov	r1, r4
 e003a48:	e1a03008 	mov	r3, r8
 e003a4c:	e3a02005 	mov	r2, #5
 e003a50:	e1a00005 	mov	r0, r5
 e003a54:	eb00041b 	bl	e004ac8 <__multadd>
 e003a58:	e1a01000 	mov	r1, r0
 e003a5c:	e1a04000 	mov	r4, r0
 e003a60:	e1a0000b 	mov	r0, fp
 e003a64:	eb0005dd 	bl	e0051e0 <__mcmp>
 e003a68:	e3500000 	cmp	r0, #0
 e003a6c:	cafffea1 	bgt	e0034f8 <_dtoa_r+0x5c4>
 e003a70:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e003a74:	e59d7004 	ldr	r7, [sp, #4]
 e003a78:	e1e0a003 	mvn	sl, r3
 e003a7c:	e3a08000 	mov	r8, #0
 e003a80:	e1a01004 	mov	r1, r4
 e003a84:	e1a00005 	mov	r0, r5
 e003a88:	eb0003ef 	bl	e004a4c <_Bfree>
 e003a8c:	e3560000 	cmp	r6, #0
 e003a90:	0affff29 	beq	e00373c <_dtoa_r+0x808>
 e003a94:	e3580000 	cmp	r8, #0
 e003a98:	11580006 	cmpne	r8, r6
 e003a9c:	0a000002 	beq	e003aac <_dtoa_r+0xb78>
 e003aa0:	e1a01008 	mov	r1, r8
 e003aa4:	e1a00005 	mov	r0, r5
 e003aa8:	eb0003e7 	bl	e004a4c <_Bfree>
 e003aac:	e1a01006 	mov	r1, r6
 e003ab0:	e1a00005 	mov	r0, r5
 e003ab4:	eb0003e4 	bl	e004a4c <_Bfree>
 e003ab8:	eaffff1f 	b	e00373c <_dtoa_r+0x808>
 e003abc:	e2483001 	sub	r3, r8, #1
 e003ac0:	e1590003 	cmp	r9, r3
 e003ac4:	b0439009 	sublt	r9, r3, r9
 e003ac8:	a0494003 	subge	r4, r9, r3
 e003acc:	b59d2028 	ldrlt	r2, [sp, #40]	; 0x28
 e003ad0:	b0822009 	addlt	r2, r2, r9
 e003ad4:	b1a09003 	movlt	r9, r3
 e003ad8:	b58d2028 	strlt	r2, [sp, #40]	; 0x28
 e003adc:	e3580000 	cmp	r8, #0
 e003ae0:	a1a03008 	movge	r3, r8
 e003ae4:	b59d3010 	ldrlt	r3, [sp, #16]
 e003ae8:	a59d7010 	ldrge	r7, [sp, #16]
 e003aec:	b0437008 	sublt	r7, r3, r8
 e003af0:	b3a03000 	movlt	r3, #0
 e003af4:	eaffff2c 	b	e0037ac <_dtoa_r+0x878>
 e003af8:	e1a02009 	mov	r2, r9
 e003afc:	eaffff59 	b	e003868 <_dtoa_r+0x934>
 e003b00:	e59d301c 	ldr	r3, [sp, #28]
 e003b04:	e3530001 	cmp	r3, #1
 e003b08:	daffff6a 	ble	e0038b8 <_dtoa_r+0x984>
 e003b0c:	e3a09000 	mov	r9, #0
 e003b10:	eaffff7d 	b	e00390c <_dtoa_r+0x9d8>
 e003b14:	e3a04000 	mov	r4, #0
 e003b18:	e1a06004 	mov	r6, r4
 e003b1c:	eaffffd3 	b	e003a70 <_dtoa_r+0xb3c>
 e003b20:	e1a0a001 	mov	sl, r1
 e003b24:	e1a04000 	mov	r4, r0
 e003b28:	e1a06000 	mov	r6, r0
 e003b2c:	eafffe71 	b	e0034f8 <_dtoa_r+0x5c4>
 e003b30:	e59d3018 	ldr	r3, [sp, #24]
 e003b34:	e3530000 	cmp	r3, #0
 e003b38:	0a0000a3 	beq	e003dcc <_dtoa_r+0xe98>
 e003b3c:	e3570000 	cmp	r7, #0
 e003b40:	da000004 	ble	e003b58 <_dtoa_r+0xc24>
 e003b44:	e1a01006 	mov	r1, r6
 e003b48:	e1a02007 	mov	r2, r7
 e003b4c:	e1a00005 	mov	r0, r5
 e003b50:	eb000557 	bl	e0050b4 <__lshift>
 e003b54:	e1a06000 	mov	r6, r0
 e003b58:	e3590000 	cmp	r9, #0
 e003b5c:	01a00006 	moveq	r0, r6
 e003b60:	0a000012 	beq	e003bb0 <_dtoa_r+0xc7c>
 e003b64:	e5961004 	ldr	r1, [r6, #4]
 e003b68:	e1a00005 	mov	r0, r5
 e003b6c:	eb00037d 	bl	e004968 <_Balloc>
 e003b70:	e2507000 	subs	r7, r0, #0
 e003b74:	1a000003 	bne	e003b88 <_dtoa_r+0xc54>
 e003b78:	e51f3818 	ldr	r3, [pc, #-2072]	; e003368 <_dtoa_r+0x434>
 e003b7c:	e1a02007 	mov	r2, r7
 e003b80:	e30012ea 	movw	r1, #746	; 0x2ea
 e003b84:	eafffdd3 	b	e0032d8 <_dtoa_r+0x3a4>
 e003b88:	e5962010 	ldr	r2, [r6, #16]
 e003b8c:	e286100c 	add	r1, r6, #12
 e003b90:	e287000c 	add	r0, r7, #12
 e003b94:	e2822002 	add	r2, r2, #2
 e003b98:	e1a02102 	lsl	r2, r2, #2
 e003b9c:	ebfff487 	bl	e000dc0 <memcpy>
 e003ba0:	e3a02001 	mov	r2, #1
 e003ba4:	e1a01007 	mov	r1, r7
 e003ba8:	e1a00005 	mov	r0, r5
 e003bac:	eb000540 	bl	e0050b4 <__lshift>
 e003bb0:	e59d3004 	ldr	r3, [sp, #4]
 e003bb4:	e2833001 	add	r3, r3, #1
 e003bb8:	e58d3010 	str	r3, [sp, #16]
 e003bbc:	e59d3004 	ldr	r3, [sp, #4]
 e003bc0:	e0833008 	add	r3, r3, r8
 e003bc4:	e58d3028 	str	r3, [sp, #40]	; 0x28
 e003bc8:	e59d3008 	ldr	r3, [sp, #8]
 e003bcc:	e1a08006 	mov	r8, r6
 e003bd0:	e1a06000 	mov	r6, r0
 e003bd4:	e2033001 	and	r3, r3, #1
 e003bd8:	e58d3024 	str	r3, [sp, #36]	; 0x24
 e003bdc:	e59d3010 	ldr	r3, [sp, #16]
 e003be0:	e1a01004 	mov	r1, r4
 e003be4:	e1a0000b 	mov	r0, fp
 e003be8:	e2433001 	sub	r3, r3, #1
 e003bec:	e58d3008 	str	r3, [sp, #8]
 e003bf0:	ebfffc64 	bl	e002d88 <quorem>
 e003bf4:	e1a01008 	mov	r1, r8
 e003bf8:	e58d0014 	str	r0, [sp, #20]
 e003bfc:	e2809030 	add	r9, r0, #48	; 0x30
 e003c00:	e1a0000b 	mov	r0, fp
 e003c04:	eb000575 	bl	e0051e0 <__mcmp>
 e003c08:	e1a02006 	mov	r2, r6
 e003c0c:	e58d0020 	str	r0, [sp, #32]
 e003c10:	e1a01004 	mov	r1, r4
 e003c14:	e1a00005 	mov	r0, r5
 e003c18:	eb000586 	bl	e005238 <__mdiff>
 e003c1c:	e590200c 	ldr	r2, [r0, #12]
 e003c20:	e1a07000 	mov	r7, r0
 e003c24:	e3520000 	cmp	r2, #0
 e003c28:	159d2018 	ldrne	r2, [sp, #24]
 e003c2c:	1a000003 	bne	e003c40 <_dtoa_r+0xd0c>
 e003c30:	e1a01000 	mov	r1, r0
 e003c34:	e1a0000b 	mov	r0, fp
 e003c38:	eb000568 	bl	e0051e0 <__mcmp>
 e003c3c:	e1a02000 	mov	r2, r0
 e003c40:	e1a01007 	mov	r1, r7
 e003c44:	e1a00005 	mov	r0, r5
 e003c48:	e58d202c 	str	r2, [sp, #44]	; 0x2c
 e003c4c:	eb00037e 	bl	e004a4c <_Bfree>
 e003c50:	e59d301c 	ldr	r3, [sp, #28]
 e003c54:	e59d202c 	ldr	r2, [sp, #44]	; 0x2c
 e003c58:	e59d7010 	ldr	r7, [sp, #16]
 e003c5c:	e1831002 	orr	r1, r3, r2
 e003c60:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e003c64:	e1913003 	orrs	r3, r1, r3
 e003c68:	1a000009 	bne	e003c94 <_dtoa_r+0xd60>
 e003c6c:	e3590039 	cmp	r9, #57	; 0x39
 e003c70:	0a000020 	beq	e003cf8 <_dtoa_r+0xdc4>
 e003c74:	e59d3020 	ldr	r3, [sp, #32]
 e003c78:	e3530000 	cmp	r3, #0
 e003c7c:	da000001 	ble	e003c88 <_dtoa_r+0xd54>
 e003c80:	e59d3014 	ldr	r3, [sp, #20]
 e003c84:	e2839031 	add	r9, r3, #49	; 0x31
 e003c88:	e59d3008 	ldr	r3, [sp, #8]
 e003c8c:	e5c39000 	strb	r9, [r3]
 e003c90:	eaffff7a 	b	e003a80 <_dtoa_r+0xb4c>
 e003c94:	e59d3020 	ldr	r3, [sp, #32]
 e003c98:	e3530000 	cmp	r3, #0
 e003c9c:	ba000005 	blt	e003cb8 <_dtoa_r+0xd84>
 e003ca0:	e59d1020 	ldr	r1, [sp, #32]
 e003ca4:	e59d301c 	ldr	r3, [sp, #28]
 e003ca8:	e1833001 	orr	r3, r3, r1
 e003cac:	e59d1024 	ldr	r1, [sp, #36]	; 0x24
 e003cb0:	e1933001 	orrs	r3, r3, r1
 e003cb4:	1a00001b 	bne	e003d28 <_dtoa_r+0xdf4>
 e003cb8:	e3520000 	cmp	r2, #0
 e003cbc:	dafffff1 	ble	e003c88 <_dtoa_r+0xd54>
 e003cc0:	e1a0100b 	mov	r1, fp
 e003cc4:	e3a02001 	mov	r2, #1
 e003cc8:	e1a00005 	mov	r0, r5
 e003ccc:	eb0004f8 	bl	e0050b4 <__lshift>
 e003cd0:	e1a01004 	mov	r1, r4
 e003cd4:	e1a0b000 	mov	fp, r0
 e003cd8:	eb000540 	bl	e0051e0 <__mcmp>
 e003cdc:	e3500000 	cmp	r0, #0
 e003ce0:	ca000002 	bgt	e003cf0 <_dtoa_r+0xdbc>
 e003ce4:	1affffe7 	bne	e003c88 <_dtoa_r+0xd54>
 e003ce8:	e3190001 	tst	r9, #1
 e003cec:	0affffe5 	beq	e003c88 <_dtoa_r+0xd54>
 e003cf0:	e3590039 	cmp	r9, #57	; 0x39
 e003cf4:	1affffe1 	bne	e003c80 <_dtoa_r+0xd4c>
 e003cf8:	e59d2008 	ldr	r2, [sp, #8]
 e003cfc:	e3a03039 	mov	r3, #57	; 0x39
 e003d00:	e5c23000 	strb	r3, [r2]
 e003d04:	e1a03007 	mov	r3, r7
 e003d08:	e1a07003 	mov	r7, r3
 e003d0c:	e2433001 	sub	r3, r3, #1
 e003d10:	e5572001 	ldrb	r2, [r7, #-1]
 e003d14:	e3520039 	cmp	r2, #57	; 0x39
 e003d18:	0a000054 	beq	e003e70 <_dtoa_r+0xf3c>
 e003d1c:	e2822001 	add	r2, r2, #1
 e003d20:	e5c32000 	strb	r2, [r3]
 e003d24:	eaffff55 	b	e003a80 <_dtoa_r+0xb4c>
 e003d28:	e3520000 	cmp	r2, #0
 e003d2c:	da000005 	ble	e003d48 <_dtoa_r+0xe14>
 e003d30:	e3590039 	cmp	r9, #57	; 0x39
 e003d34:	12893001 	addne	r3, r9, #1
 e003d38:	159d2008 	ldrne	r2, [sp, #8]
 e003d3c:	0affffed 	beq	e003cf8 <_dtoa_r+0xdc4>
 e003d40:	e5c23000 	strb	r3, [r2]
 e003d44:	eaffff4d 	b	e003a80 <_dtoa_r+0xb4c>
 e003d48:	e59d3010 	ldr	r3, [sp, #16]
 e003d4c:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
 e003d50:	e5439001 	strb	r9, [r3, #-1]
 e003d54:	e1530002 	cmp	r3, r2
 e003d58:	0a000032 	beq	e003e28 <_dtoa_r+0xef4>
 e003d5c:	e1a0100b 	mov	r1, fp
 e003d60:	e3a03000 	mov	r3, #0
 e003d64:	e3a0200a 	mov	r2, #10
 e003d68:	e1a00005 	mov	r0, r5
 e003d6c:	eb000355 	bl	e004ac8 <__multadd>
 e003d70:	e3a03000 	mov	r3, #0
 e003d74:	e1a0b000 	mov	fp, r0
 e003d78:	e3a0200a 	mov	r2, #10
 e003d7c:	e1a01008 	mov	r1, r8
 e003d80:	e1a00005 	mov	r0, r5
 e003d84:	e1580006 	cmp	r8, r6
 e003d88:	1a000006 	bne	e003da8 <_dtoa_r+0xe74>
 e003d8c:	eb00034d 	bl	e004ac8 <__multadd>
 e003d90:	e1a08000 	mov	r8, r0
 e003d94:	e1a06000 	mov	r6, r0
 e003d98:	e59d3010 	ldr	r3, [sp, #16]
 e003d9c:	e2833001 	add	r3, r3, #1
 e003da0:	e58d3010 	str	r3, [sp, #16]
 e003da4:	eaffff8c 	b	e003bdc <_dtoa_r+0xca8>
 e003da8:	eb000346 	bl	e004ac8 <__multadd>
 e003dac:	e1a01006 	mov	r1, r6
 e003db0:	e1a08000 	mov	r8, r0
 e003db4:	e3a03000 	mov	r3, #0
 e003db8:	e3a0200a 	mov	r2, #10
 e003dbc:	e1a00005 	mov	r0, r5
 e003dc0:	eb000340 	bl	e004ac8 <__multadd>
 e003dc4:	e1a06000 	mov	r6, r0
 e003dc8:	eafffff2 	b	e003d98 <_dtoa_r+0xe64>
 e003dcc:	e59d7004 	ldr	r7, [sp, #4]
 e003dd0:	e1a01004 	mov	r1, r4
 e003dd4:	e1a0000b 	mov	r0, fp
 e003dd8:	ebfffbea 	bl	e002d88 <quorem>
 e003ddc:	e59d3004 	ldr	r3, [sp, #4]
 e003de0:	e2809030 	add	r9, r0, #48	; 0x30
 e003de4:	e4c79001 	strb	r9, [r7], #1
 e003de8:	e0472003 	sub	r2, r7, r3
 e003dec:	e1580002 	cmp	r8, r2
 e003df0:	da000006 	ble	e003e10 <_dtoa_r+0xedc>
 e003df4:	e1a0100b 	mov	r1, fp
 e003df8:	e3a03000 	mov	r3, #0
 e003dfc:	e3a0200a 	mov	r2, #10
 e003e00:	e1a00005 	mov	r0, r5
 e003e04:	eb00032f 	bl	e004ac8 <__multadd>
 e003e08:	e1a0b000 	mov	fp, r0
 e003e0c:	eaffffef 	b	e003dd0 <_dtoa_r+0xe9c>
 e003e10:	e3580000 	cmp	r8, #0
 e003e14:	e59d3004 	ldr	r3, [sp, #4]
 e003e18:	c1a07008 	movgt	r7, r8
 e003e1c:	d3a07001 	movle	r7, #1
 e003e20:	e0837007 	add	r7, r3, r7
 e003e24:	e3a08000 	mov	r8, #0
 e003e28:	e1a0100b 	mov	r1, fp
 e003e2c:	e3a02001 	mov	r2, #1
 e003e30:	e1a00005 	mov	r0, r5
 e003e34:	eb00049e 	bl	e0050b4 <__lshift>
 e003e38:	e1a01004 	mov	r1, r4
 e003e3c:	e1a0b000 	mov	fp, r0
 e003e40:	eb0004e6 	bl	e0051e0 <__mcmp>
 e003e44:	e3500000 	cmp	r0, #0
 e003e48:	caffffad 	bgt	e003d04 <_dtoa_r+0xdd0>
 e003e4c:	1a000001 	bne	e003e58 <_dtoa_r+0xf24>
 e003e50:	e3190001 	tst	r9, #1
 e003e54:	1affffaa 	bne	e003d04 <_dtoa_r+0xdd0>
 e003e58:	e1a03007 	mov	r3, r7
 e003e5c:	e5772001 	ldrb	r2, [r7, #-1]!
 e003e60:	e3520030 	cmp	r2, #48	; 0x30
 e003e64:	0afffffb 	beq	e003e58 <_dtoa_r+0xf24>
 e003e68:	e1a07003 	mov	r7, r3
 e003e6c:	eaffff03 	b	e003a80 <_dtoa_r+0xb4c>
 e003e70:	e59d2004 	ldr	r2, [sp, #4]
 e003e74:	e1520003 	cmp	r2, r3
 e003e78:	1affffa2 	bne	e003d08 <_dtoa_r+0xdd4>
 e003e7c:	e28aa001 	add	sl, sl, #1
 e003e80:	e3a03031 	mov	r3, #49	; 0x31
 e003e84:	eaffffad 	b	e003d40 <_dtoa_r+0xe0c>
 e003e88:	e59d3074 	ldr	r3, [sp, #116]	; 0x74
 e003e8c:	e3530000 	cmp	r3, #0
 e003e90:	e51f3b2c 	ldr	r3, [pc, #-2860]	; e00336c <_dtoa_r+0x438>
 e003e94:	e58d3004 	str	r3, [sp, #4]
 e003e98:	12833008 	addne	r3, r3, #8
 e003e9c:	1afffc62 	bne	e00302c <_dtoa_r+0xf8>
 e003ea0:	eafffc63 	b	e003034 <_dtoa_r+0x100>

0e003ea4 <_fclose_r>:
 e003ea4:	e92d4070 	push	{r4, r5, r6, lr}
 e003ea8:	e2514000 	subs	r4, r1, #0
 e003eac:	1a000002 	bne	e003ebc <_fclose_r+0x18>
 e003eb0:	e3a06000 	mov	r6, #0
 e003eb4:	e1a00006 	mov	r0, r6
 e003eb8:	e8bd8070 	pop	{r4, r5, r6, pc}
 e003ebc:	e1a05000 	mov	r5, r0
 e003ec0:	e3500000 	cmp	r0, #0
 e003ec4:	0a000003 	beq	e003ed8 <_fclose_r+0x34>
 e003ec8:	e5903018 	ldr	r3, [r0, #24]
 e003ecc:	e3530000 	cmp	r3, #0
 e003ed0:	1a000000 	bne	e003ed8 <_fclose_r+0x34>
 e003ed4:	ebfff2c9 	bl	e000a00 <__sinit>
 e003ed8:	e5943064 	ldr	r3, [r4, #100]	; 0x64
 e003edc:	e3130001 	tst	r3, #1
 e003ee0:	1a000004 	bne	e003ef8 <_fclose_r+0x54>
 e003ee4:	e1d430bc 	ldrh	r3, [r4, #12]
 e003ee8:	e3130c02 	tst	r3, #512	; 0x200
 e003eec:	1a000001 	bne	e003ef8 <_fclose_r+0x54>
 e003ef0:	e5940058 	ldr	r0, [r4, #88]	; 0x58
 e003ef4:	ebfff3a7 	bl	e000d98 <__retarget_lock_acquire_recursive>
 e003ef8:	e1d430fc 	ldrsh	r3, [r4, #12]
 e003efc:	e3530000 	cmp	r3, #0
 e003f00:	1a000005 	bne	e003f1c <_fclose_r+0x78>
 e003f04:	e5940064 	ldr	r0, [r4, #100]	; 0x64
 e003f08:	e2106001 	ands	r6, r0, #1
 e003f0c:	1affffe7 	bne	e003eb0 <_fclose_r+0xc>
 e003f10:	e5940058 	ldr	r0, [r4, #88]	; 0x58
 e003f14:	ebfff3a5 	bl	e000db0 <__retarget_lock_release_recursive>
 e003f18:	eaffffe5 	b	e003eb4 <_fclose_r+0x10>
 e003f1c:	e1a01004 	mov	r1, r4
 e003f20:	e1a00005 	mov	r0, r5
 e003f24:	ebfff190 	bl	e00056c <__sflush_r>
 e003f28:	e5943030 	ldr	r3, [r4, #48]	; 0x30
 e003f2c:	e1a06000 	mov	r6, r0
 e003f30:	e3530000 	cmp	r3, #0
 e003f34:	0a000004 	beq	e003f4c <_fclose_r+0xa8>
 e003f38:	e5941020 	ldr	r1, [r4, #32]
 e003f3c:	e1a00005 	mov	r0, r5
 e003f40:	e12fff33 	blx	r3
 e003f44:	e3500000 	cmp	r0, #0
 e003f48:	b3e06000 	mvnlt	r6, #0
 e003f4c:	e1d430bc 	ldrh	r3, [r4, #12]
 e003f50:	e3130080 	tst	r3, #128	; 0x80
 e003f54:	0a000002 	beq	e003f64 <_fclose_r+0xc0>
 e003f58:	e5941010 	ldr	r1, [r4, #16]
 e003f5c:	e1a00005 	mov	r0, r5
 e003f60:	eb0010d1 	bl	e0082ac <__wrap__free_r>
 e003f64:	e5941034 	ldr	r1, [r4, #52]	; 0x34
 e003f68:	e3510000 	cmp	r1, #0
 e003f6c:	0a000006 	beq	e003f8c <_fclose_r+0xe8>
 e003f70:	e2843044 	add	r3, r4, #68	; 0x44
 e003f74:	e1510003 	cmp	r1, r3
 e003f78:	0a000001 	beq	e003f84 <_fclose_r+0xe0>
 e003f7c:	e1a00005 	mov	r0, r5
 e003f80:	eb0010c9 	bl	e0082ac <__wrap__free_r>
 e003f84:	e3a03000 	mov	r3, #0
 e003f88:	e5843034 	str	r3, [r4, #52]	; 0x34
 e003f8c:	e5941048 	ldr	r1, [r4, #72]	; 0x48
 e003f90:	e3510000 	cmp	r1, #0
 e003f94:	0a000003 	beq	e003fa8 <_fclose_r+0x104>
 e003f98:	e1a00005 	mov	r0, r5
 e003f9c:	eb0010c2 	bl	e0082ac <__wrap__free_r>
 e003fa0:	e3a03000 	mov	r3, #0
 e003fa4:	e5843048 	str	r3, [r4, #72]	; 0x48
 e003fa8:	ebfff288 	bl	e0009d0 <__sfp_lock_acquire>
 e003fac:	e3a03000 	mov	r3, #0
 e003fb0:	e1c430bc 	strh	r3, [r4, #12]
 e003fb4:	e5943064 	ldr	r3, [r4, #100]	; 0x64
 e003fb8:	e3130001 	tst	r3, #1
 e003fbc:	1a000001 	bne	e003fc8 <_fclose_r+0x124>
 e003fc0:	e5940058 	ldr	r0, [r4, #88]	; 0x58
 e003fc4:	ebfff379 	bl	e000db0 <__retarget_lock_release_recursive>
 e003fc8:	e5940058 	ldr	r0, [r4, #88]	; 0x58
 e003fcc:	ebfff36f 	bl	e000d90 <__retarget_lock_close_recursive>
 e003fd0:	ebfff281 	bl	e0009dc <__sfp_lock_release>
 e003fd4:	eaffffb6 	b	e003eb4 <_fclose_r+0x10>

0e003fd8 <fclose>:
 e003fd8:	e59f3008 	ldr	r3, [pc, #8]	; e003fe8 <fclose+0x10>
 e003fdc:	e1a01000 	mov	r1, r0
 e003fe0:	e5930000 	ldr	r0, [r3]
 e003fe4:	eaffffae 	b	e003ea4 <_fclose_r>
 e003fe8:	60095000 	.word	0x60095000

0e003fec <__fputwc>:
 e003fec:	e92d43f7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
 e003ff0:	e1a08000 	mov	r8, r0
 e003ff4:	e1a06001 	mov	r6, r1
 e003ff8:	e1a05002 	mov	r5, r2
 e003ffc:	eb00018f 	bl	e004640 <__locale_mb_cur_max>
 e004000:	e3500001 	cmp	r0, #1
 e004004:	1a000004 	bne	e00401c <__fputwc+0x30>
 e004008:	e2463001 	sub	r3, r6, #1
 e00400c:	e35300fe 	cmp	r3, #254	; 0xfe
 e004010:	95cd6004 	strbls	r6, [sp, #4]
 e004014:	91a04000 	movls	r4, r0
 e004018:	9a00000e 	bls	e004058 <__fputwc+0x6c>
 e00401c:	e285305c 	add	r3, r5, #92	; 0x5c
 e004020:	e1a02006 	mov	r2, r6
 e004024:	e28d1004 	add	r1, sp, #4
 e004028:	e1a00008 	mov	r0, r8
 e00402c:	eb000ee0 	bl	e007bb4 <_wcrtomb_r>
 e004030:	e1a04000 	mov	r4, r0
 e004034:	e3700001 	cmn	r0, #1
 e004038:	1a000006 	bne	e004058 <__fputwc+0x6c>
 e00403c:	e1d530bc 	ldrh	r3, [r5, #12]
 e004040:	e1a06000 	mov	r6, r0
 e004044:	e3833040 	orr	r3, r3, #64	; 0x40
 e004048:	e1c530bc 	strh	r3, [r5, #12]
 e00404c:	e1a00006 	mov	r0, r6
 e004050:	e28dd00c 	add	sp, sp, #12
 e004054:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
 e004058:	e3a07000 	mov	r7, #0
 e00405c:	e28d9004 	add	r9, sp, #4
 e004060:	e1570004 	cmp	r7, r4
 e004064:	0afffff8 	beq	e00404c <__fputwc+0x60>
 e004068:	e5953008 	ldr	r3, [r5, #8]
 e00406c:	e7d71009 	ldrb	r1, [r7, r9]
 e004070:	e2433001 	sub	r3, r3, #1
 e004074:	e5853008 	str	r3, [r5, #8]
 e004078:	e3530000 	cmp	r3, #0
 e00407c:	aa000007 	bge	e0040a0 <__fputwc+0xb4>
 e004080:	e5952018 	ldr	r2, [r5, #24]
 e004084:	e1530002 	cmp	r3, r2
 e004088:	b3a03000 	movlt	r3, #0
 e00408c:	a3a03001 	movge	r3, #1
 e004090:	e351000a 	cmp	r1, #10
 e004094:	03a03000 	moveq	r3, #0
 e004098:	e3530000 	cmp	r3, #0
 e00409c:	0a000005 	beq	e0040b8 <__fputwc+0xcc>
 e0040a0:	e5953000 	ldr	r3, [r5]
 e0040a4:	e2832001 	add	r2, r3, #1
 e0040a8:	e5852000 	str	r2, [r5]
 e0040ac:	e5c31000 	strb	r1, [r3]
 e0040b0:	e2877001 	add	r7, r7, #1
 e0040b4:	eaffffe9 	b	e004060 <__fputwc+0x74>
 e0040b8:	e1a02005 	mov	r2, r5
 e0040bc:	e1a00008 	mov	r0, r8
 e0040c0:	eb000e6f 	bl	e007a84 <__swbuf_r>
 e0040c4:	e3700001 	cmn	r0, #1
 e0040c8:	1afffff8 	bne	e0040b0 <__fputwc+0xc4>
 e0040cc:	e1a06000 	mov	r6, r0
 e0040d0:	eaffffdd 	b	e00404c <__fputwc+0x60>

0e0040d4 <_fputwc_r>:
 e0040d4:	e5923064 	ldr	r3, [r2, #100]	; 0x64
 e0040d8:	e92d4070 	push	{r4, r5, r6, lr}
 e0040dc:	e1a05000 	mov	r5, r0
 e0040e0:	e1a06001 	mov	r6, r1
 e0040e4:	e1a04002 	mov	r4, r2
 e0040e8:	e3130001 	tst	r3, #1
 e0040ec:	1a000004 	bne	e004104 <_fputwc_r+0x30>
 e0040f0:	e1d230bc 	ldrh	r3, [r2, #12]
 e0040f4:	e3130c02 	tst	r3, #512	; 0x200
 e0040f8:	1a000001 	bne	e004104 <_fputwc_r+0x30>
 e0040fc:	e5920058 	ldr	r0, [r2, #88]	; 0x58
 e004100:	ebfff324 	bl	e000d98 <__retarget_lock_acquire_recursive>
 e004104:	e1d430fc 	ldrsh	r3, [r4, #12]
 e004108:	e3130a02 	tst	r3, #8192	; 0x2000
 e00410c:	1a000004 	bne	e004124 <_fputwc_r+0x50>
 e004110:	e3833a02 	orr	r3, r3, #8192	; 0x2000
 e004114:	e1c430bc 	strh	r3, [r4, #12]
 e004118:	e5943064 	ldr	r3, [r4, #100]	; 0x64
 e00411c:	e3833a02 	orr	r3, r3, #8192	; 0x2000
 e004120:	e5843064 	str	r3, [r4, #100]	; 0x64
 e004124:	e1a00005 	mov	r0, r5
 e004128:	e1a02004 	mov	r2, r4
 e00412c:	e1a01006 	mov	r1, r6
 e004130:	ebffffad 	bl	e003fec <__fputwc>
 e004134:	e5943064 	ldr	r3, [r4, #100]	; 0x64
 e004138:	e1a05000 	mov	r5, r0
 e00413c:	e3130001 	tst	r3, #1
 e004140:	1a000004 	bne	e004158 <_fputwc_r+0x84>
 e004144:	e1d430bc 	ldrh	r3, [r4, #12]
 e004148:	e3130c02 	tst	r3, #512	; 0x200
 e00414c:	1a000001 	bne	e004158 <_fputwc_r+0x84>
 e004150:	e5940058 	ldr	r0, [r4, #88]	; 0x58
 e004154:	ebfff315 	bl	e000db0 <__retarget_lock_release_recursive>
 e004158:	e1a00005 	mov	r0, r5
 e00415c:	e8bd8070 	pop	{r4, r5, r6, pc}

0e004160 <fputwc>:
 e004160:	e59f303c 	ldr	r3, [pc, #60]	; e0041a4 <fputwc+0x44>
 e004164:	e92d4070 	push	{r4, r5, r6, lr}
 e004168:	e1a05000 	mov	r5, r0
 e00416c:	e1a06001 	mov	r6, r1
 e004170:	e5934000 	ldr	r4, [r3]
 e004174:	e3540000 	cmp	r4, #0
 e004178:	0a000004 	beq	e004190 <fputwc+0x30>
 e00417c:	e5943018 	ldr	r3, [r4, #24]
 e004180:	e3530000 	cmp	r3, #0
 e004184:	1a000001 	bne	e004190 <fputwc+0x30>
 e004188:	e1a00004 	mov	r0, r4
 e00418c:	ebfff21b 	bl	e000a00 <__sinit>
 e004190:	e1a02006 	mov	r2, r6
 e004194:	e1a01005 	mov	r1, r5
 e004198:	e1a00004 	mov	r0, r4
 e00419c:	e8bd4070 	pop	{r4, r5, r6, lr}
 e0041a0:	eaffffcb 	b	e0040d4 <_fputwc_r>
 e0041a4:	60095000 	.word	0x60095000

0e0041a8 <__sfvwrite_r>:
 e0041a8:	e5923008 	ldr	r3, [r2, #8]
 e0041ac:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e0041b0:	e3530000 	cmp	r3, #0
 e0041b4:	1a000002 	bne	e0041c4 <__sfvwrite_r+0x1c>
 e0041b8:	e3a00000 	mov	r0, #0
 e0041bc:	e28dd00c 	add	sp, sp, #12
 e0041c0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e0041c4:	e1d130bc 	ldrh	r3, [r1, #12]
 e0041c8:	e1a07000 	mov	r7, r0
 e0041cc:	e1a04001 	mov	r4, r1
 e0041d0:	e1a09002 	mov	r9, r2
 e0041d4:	e3130008 	tst	r3, #8
 e0041d8:	0a00000d 	beq	e004214 <__sfvwrite_r+0x6c>
 e0041dc:	e5913010 	ldr	r3, [r1, #16]
 e0041e0:	e3530000 	cmp	r3, #0
 e0041e4:	0a00000a 	beq	e004214 <__sfvwrite_r+0x6c>
 e0041e8:	e1d4a0bc 	ldrh	sl, [r4, #12]
 e0041ec:	e5998000 	ldr	r8, [r9]
 e0041f0:	e21a5002 	ands	r5, sl, #2
 e0041f4:	1a000024 	bne	e00428c <__sfvwrite_r+0xe4>
 e0041f8:	e21aa001 	ands	sl, sl, #1
 e0041fc:	11a00005 	movne	r0, r5
 e004200:	11a0b005 	movne	fp, r5
 e004204:	11a0a005 	movne	sl, r5
 e004208:	1a0000a6 	bne	e0044a8 <__sfvwrite_r+0x300>
 e00420c:	e1a0600a 	mov	r6, sl
 e004210:	ea000024 	b	e0042a8 <__sfvwrite_r+0x100>
 e004214:	e1a01004 	mov	r1, r4
 e004218:	e1a00007 	mov	r0, r7
 e00421c:	ebfffa79 	bl	e002c08 <__swsetup_r>
 e004220:	e3500000 	cmp	r0, #0
 e004224:	0affffef 	beq	e0041e8 <__sfvwrite_r+0x40>
 e004228:	e3e00000 	mvn	r0, #0
 e00422c:	eaffffe2 	b	e0041bc <__sfvwrite_r+0x14>
 e004230:	e598a000 	ldr	sl, [r8]
 e004234:	e2888008 	add	r8, r8, #8
 e004238:	e5185004 	ldr	r5, [r8, #-4]
 e00423c:	e3550000 	cmp	r5, #0
 e004240:	0afffffa 	beq	e004230 <__sfvwrite_r+0x88>
 e004244:	e1550006 	cmp	r5, r6
 e004248:	e594b028 	ldr	fp, [r4, #40]	; 0x28
 e00424c:	31a03005 	movcc	r3, r5
 e004250:	21a03006 	movcs	r3, r6
 e004254:	e5941020 	ldr	r1, [r4, #32]
 e004258:	e1a0200a 	mov	r2, sl
 e00425c:	e1a00007 	mov	r0, r7
 e004260:	e12fff3b 	blx	fp
 e004264:	e3500000 	cmp	r0, #0
 e004268:	da00002c 	ble	e004320 <__sfvwrite_r+0x178>
 e00426c:	e5993008 	ldr	r3, [r9, #8]
 e004270:	e08aa000 	add	sl, sl, r0
 e004274:	e0455000 	sub	r5, r5, r0
 e004278:	e0430000 	sub	r0, r3, r0
 e00427c:	e5890008 	str	r0, [r9, #8]
 e004280:	e3500000 	cmp	r0, #0
 e004284:	1affffec 	bne	e00423c <__sfvwrite_r+0x94>
 e004288:	eaffffca 	b	e0041b8 <__sfvwrite_r+0x10>
 e00428c:	e3a0a000 	mov	sl, #0
 e004290:	e59f6340 	ldr	r6, [pc, #832]	; e0045d8 <__sfvwrite_r+0x430>
 e004294:	e1a0500a 	mov	r5, sl
 e004298:	eaffffe7 	b	e00423c <__sfvwrite_r+0x94>
 e00429c:	e598a000 	ldr	sl, [r8]
 e0042a0:	e2888008 	add	r8, r8, #8
 e0042a4:	e5186004 	ldr	r6, [r8, #-4]
 e0042a8:	e3560000 	cmp	r6, #0
 e0042ac:	0afffffa 	beq	e00429c <__sfvwrite_r+0xf4>
 e0042b0:	e1d430bc 	ldrh	r3, [r4, #12]
 e0042b4:	e5940000 	ldr	r0, [r4]
 e0042b8:	e5942008 	ldr	r2, [r4, #8]
 e0042bc:	e3130c02 	tst	r3, #512	; 0x200
 e0042c0:	0a00004c 	beq	e0043f8 <__sfvwrite_r+0x250>
 e0042c4:	e1520006 	cmp	r2, r6
 e0042c8:	8a000028 	bhi	e004370 <__sfvwrite_r+0x1c8>
 e0042cc:	e3130d12 	tst	r3, #1152	; 0x480
 e0042d0:	0a000026 	beq	e004370 <__sfvwrite_r+0x1c8>
 e0042d4:	e5945014 	ldr	r5, [r4, #20]
 e0042d8:	e5941010 	ldr	r1, [r4, #16]
 e0042dc:	e0855085 	add	r5, r5, r5, lsl #1
 e0042e0:	e040b001 	sub	fp, r0, r1
 e0042e4:	e28b2001 	add	r2, fp, #1
 e0042e8:	e0855fa5 	add	r5, r5, r5, lsr #31
 e0042ec:	e0822006 	add	r2, r2, r6
 e0042f0:	e1a050c5 	asr	r5, r5, #1
 e0042f4:	e1550002 	cmp	r5, r2
 e0042f8:	31a05002 	movcc	r5, r2
 e0042fc:	e3130b01 	tst	r3, #1024	; 0x400
 e004300:	0a000030 	beq	e0043c8 <__sfvwrite_r+0x220>
 e004304:	e1a01005 	mov	r1, r5
 e004308:	e1a00007 	mov	r0, r7
 e00430c:	eb000fe1 	bl	e008298 <__wrap__malloc_r>
 e004310:	e2503000 	subs	r3, r0, #0
 e004314:	1a000005 	bne	e004330 <__sfvwrite_r+0x188>
 e004318:	e3a0300c 	mov	r3, #12
 e00431c:	e5873000 	str	r3, [r7]
 e004320:	e1d430bc 	ldrh	r3, [r4, #12]
 e004324:	e3833040 	orr	r3, r3, #64	; 0x40
 e004328:	e1c430bc 	strh	r3, [r4, #12]
 e00432c:	eaffffbd 	b	e004228 <__sfvwrite_r+0x80>
 e004330:	e1a0200b 	mov	r2, fp
 e004334:	e5941010 	ldr	r1, [r4, #16]
 e004338:	e58d3004 	str	r3, [sp, #4]
 e00433c:	ebfff29f 	bl	e000dc0 <memcpy>
 e004340:	e1d420bc 	ldrh	r2, [r4, #12]
 e004344:	e59d3004 	ldr	r3, [sp, #4]
 e004348:	e3c22d12 	bic	r2, r2, #1152	; 0x480
 e00434c:	e3822080 	orr	r2, r2, #128	; 0x80
 e004350:	e1c420bc 	strh	r2, [r4, #12]
 e004354:	e1a02006 	mov	r2, r6
 e004358:	e5843010 	str	r3, [r4, #16]
 e00435c:	e5845014 	str	r5, [r4, #20]
 e004360:	e083300b 	add	r3, r3, fp
 e004364:	e045500b 	sub	r5, r5, fp
 e004368:	e5843000 	str	r3, [r4]
 e00436c:	e5845008 	str	r5, [r4, #8]
 e004370:	e1520006 	cmp	r2, r6
 e004374:	e5940000 	ldr	r0, [r4]
 e004378:	21a02006 	movcs	r2, r6
 e00437c:	e1a0100a 	mov	r1, sl
 e004380:	e58d2004 	str	r2, [sp, #4]
 e004384:	ebfff3c5 	bl	e0012a0 <memmove>
 e004388:	e5943008 	ldr	r3, [r4, #8]
 e00438c:	e1a05006 	mov	r5, r6
 e004390:	e59d2004 	ldr	r2, [sp, #4]
 e004394:	e0433002 	sub	r3, r3, r2
 e004398:	e5843008 	str	r3, [r4, #8]
 e00439c:	e5943000 	ldr	r3, [r4]
 e0043a0:	e0832002 	add	r2, r3, r2
 e0043a4:	e5842000 	str	r2, [r4]
 e0043a8:	e5990008 	ldr	r0, [r9, #8]
 e0043ac:	e08aa005 	add	sl, sl, r5
 e0043b0:	e0466005 	sub	r6, r6, r5
 e0043b4:	e0405005 	sub	r5, r0, r5
 e0043b8:	e5895008 	str	r5, [r9, #8]
 e0043bc:	e3550000 	cmp	r5, #0
 e0043c0:	1affffb8 	bne	e0042a8 <__sfvwrite_r+0x100>
 e0043c4:	eaffff7b 	b	e0041b8 <__sfvwrite_r+0x10>
 e0043c8:	e1a02005 	mov	r2, r5
 e0043cc:	e1a00007 	mov	r0, r7
 e0043d0:	eb000fb2 	bl	e0082a0 <__wrap__realloc_r>
 e0043d4:	e2503000 	subs	r3, r0, #0
 e0043d8:	1affffdd 	bne	e004354 <__sfvwrite_r+0x1ac>
 e0043dc:	e5941010 	ldr	r1, [r4, #16]
 e0043e0:	e1a00007 	mov	r0, r7
 e0043e4:	eb000fb0 	bl	e0082ac <__wrap__free_r>
 e0043e8:	e1d430bc 	ldrh	r3, [r4, #12]
 e0043ec:	e3c33080 	bic	r3, r3, #128	; 0x80
 e0043f0:	e1c430bc 	strh	r3, [r4, #12]
 e0043f4:	eaffffc7 	b	e004318 <__sfvwrite_r+0x170>
 e0043f8:	e5943010 	ldr	r3, [r4, #16]
 e0043fc:	e1530000 	cmp	r3, r0
 e004400:	3a000002 	bcc	e004410 <__sfvwrite_r+0x268>
 e004404:	e5945014 	ldr	r5, [r4, #20]
 e004408:	e1550006 	cmp	r5, r6
 e00440c:	9a000013 	bls	e004460 <__sfvwrite_r+0x2b8>
 e004410:	e1520006 	cmp	r2, r6
 e004414:	e1a0100a 	mov	r1, sl
 e004418:	31a05002 	movcc	r5, r2
 e00441c:	21a05006 	movcs	r5, r6
 e004420:	e1a02005 	mov	r2, r5
 e004424:	ebfff39d 	bl	e0012a0 <memmove>
 e004428:	e5943008 	ldr	r3, [r4, #8]
 e00442c:	e5942000 	ldr	r2, [r4]
 e004430:	e0433005 	sub	r3, r3, r5
 e004434:	e5843008 	str	r3, [r4, #8]
 e004438:	e0822005 	add	r2, r2, r5
 e00443c:	e3530000 	cmp	r3, #0
 e004440:	e5842000 	str	r2, [r4]
 e004444:	1affffd7 	bne	e0043a8 <__sfvwrite_r+0x200>
 e004448:	e1a01004 	mov	r1, r4
 e00444c:	e1a00007 	mov	r0, r7
 e004450:	ebfff0c2 	bl	e000760 <_fflush_r>
 e004454:	e3500000 	cmp	r0, #0
 e004458:	0affffd2 	beq	e0043a8 <__sfvwrite_r+0x200>
 e00445c:	eaffffaf 	b	e004320 <__sfvwrite_r+0x178>
 e004460:	e376010a 	cmn	r6, #-2147483646	; 0x80000002
 e004464:	e1a01005 	mov	r1, r5
 e004468:	91a00006 	movls	r0, r6
 e00446c:	83e00102 	mvnhi	r0, #-2147483648	; 0x80000000
 e004470:	eb000e47 	bl	e007d94 <__divsi3>
 e004474:	e594b028 	ldr	fp, [r4, #40]	; 0x28
 e004478:	e0030095 	mul	r3, r5, r0
 e00447c:	e5941020 	ldr	r1, [r4, #32]
 e004480:	e1a0200a 	mov	r2, sl
 e004484:	e1a00007 	mov	r0, r7
 e004488:	e12fff3b 	blx	fp
 e00448c:	e2505000 	subs	r5, r0, #0
 e004490:	caffffc4 	bgt	e0043a8 <__sfvwrite_r+0x200>
 e004494:	eaffffa1 	b	e004320 <__sfvwrite_r+0x178>
 e004498:	e598b000 	ldr	fp, [r8]
 e00449c:	e3a00000 	mov	r0, #0
 e0044a0:	e598a004 	ldr	sl, [r8, #4]
 e0044a4:	e2888008 	add	r8, r8, #8
 e0044a8:	e35a0000 	cmp	sl, #0
 e0044ac:	0afffff9 	beq	e004498 <__sfvwrite_r+0x2f0>
 e0044b0:	e3500000 	cmp	r0, #0
 e0044b4:	1a000007 	bne	e0044d8 <__sfvwrite_r+0x330>
 e0044b8:	e1a0200a 	mov	r2, sl
 e0044bc:	e3a0100a 	mov	r1, #10
 e0044c0:	e1a0000b 	mov	r0, fp
 e0044c4:	fa0000ed 	blx	e004880 <memchr>
 e0044c8:	e2505000 	subs	r5, r0, #0
 e0044cc:	12855001 	addne	r5, r5, #1
 e0044d0:	028a5001 	addeq	r5, sl, #1
 e0044d4:	1045500b 	subne	r5, r5, fp
 e0044d8:	e5941010 	ldr	r1, [r4, #16]
 e0044dc:	e155000a 	cmp	r5, sl
 e0044e0:	e5943014 	ldr	r3, [r4, #20]
 e0044e4:	31a02005 	movcc	r2, r5
 e0044e8:	e5946008 	ldr	r6, [r4, #8]
 e0044ec:	21a0200a 	movcs	r2, sl
 e0044f0:	e5940000 	ldr	r0, [r4]
 e0044f4:	e0836006 	add	r6, r3, r6
 e0044f8:	e1500001 	cmp	r0, r1
 e0044fc:	93a01000 	movls	r1, #0
 e004500:	83a01001 	movhi	r1, #1
 e004504:	e1520006 	cmp	r2, r6
 e004508:	d3a01000 	movle	r1, #0
 e00450c:	e3510000 	cmp	r1, #0
 e004510:	0a00001a 	beq	e004580 <__sfvwrite_r+0x3d8>
 e004514:	e1a02006 	mov	r2, r6
 e004518:	e1a0100b 	mov	r1, fp
 e00451c:	ebfff35f 	bl	e0012a0 <memmove>
 e004520:	e5943000 	ldr	r3, [r4]
 e004524:	e1a01004 	mov	r1, r4
 e004528:	e1a00007 	mov	r0, r7
 e00452c:	e0833006 	add	r3, r3, r6
 e004530:	e5843000 	str	r3, [r4]
 e004534:	ebfff089 	bl	e000760 <_fflush_r>
 e004538:	e3500000 	cmp	r0, #0
 e00453c:	1affff77 	bne	e004320 <__sfvwrite_r+0x178>
 e004540:	e0555006 	subs	r5, r5, r6
 e004544:	13a00001 	movne	r0, #1
 e004548:	1a000004 	bne	e004560 <__sfvwrite_r+0x3b8>
 e00454c:	e1a01004 	mov	r1, r4
 e004550:	e1a00007 	mov	r0, r7
 e004554:	ebfff081 	bl	e000760 <_fflush_r>
 e004558:	e3500000 	cmp	r0, #0
 e00455c:	1affff6f 	bne	e004320 <__sfvwrite_r+0x178>
 e004560:	e5992008 	ldr	r2, [r9, #8]
 e004564:	e08bb006 	add	fp, fp, r6
 e004568:	e04aa006 	sub	sl, sl, r6
 e00456c:	e0426006 	sub	r6, r2, r6
 e004570:	e5896008 	str	r6, [r9, #8]
 e004574:	e3560000 	cmp	r6, #0
 e004578:	1affffca 	bne	e0044a8 <__sfvwrite_r+0x300>
 e00457c:	eaffff0d 	b	e0041b8 <__sfvwrite_r+0x10>
 e004580:	e1530002 	cmp	r3, r2
 e004584:	ca000007 	bgt	e0045a8 <__sfvwrite_r+0x400>
 e004588:	e5946028 	ldr	r6, [r4, #40]	; 0x28
 e00458c:	e1a0200b 	mov	r2, fp
 e004590:	e5941020 	ldr	r1, [r4, #32]
 e004594:	e1a00007 	mov	r0, r7
 e004598:	e12fff36 	blx	r6
 e00459c:	e2506000 	subs	r6, r0, #0
 e0045a0:	caffffe6 	bgt	e004540 <__sfvwrite_r+0x398>
 e0045a4:	eaffff5d 	b	e004320 <__sfvwrite_r+0x178>
 e0045a8:	e1a0100b 	mov	r1, fp
 e0045ac:	e58d2004 	str	r2, [sp, #4]
 e0045b0:	ebfff33a 	bl	e0012a0 <memmove>
 e0045b4:	e59d2004 	ldr	r2, [sp, #4]
 e0045b8:	e5943008 	ldr	r3, [r4, #8]
 e0045bc:	e1a06002 	mov	r6, r2
 e0045c0:	e0433002 	sub	r3, r3, r2
 e0045c4:	e5843008 	str	r3, [r4, #8]
 e0045c8:	e5943000 	ldr	r3, [r4]
 e0045cc:	e0833002 	add	r3, r3, r2
 e0045d0:	e5843000 	str	r3, [r4]
 e0045d4:	eaffffd9 	b	e004540 <__sfvwrite_r+0x398>
 e0045d8:	7ffffc00 	.word	0x7ffffc00

0e0045dc <_setlocale_r>:
 e0045dc:	e92d4010 	push	{r4, lr}
 e0045e0:	e2524000 	subs	r4, r2, #0
 e0045e4:	1a000001 	bne	e0045f0 <_setlocale_r+0x14>
 e0045e8:	e59f0044 	ldr	r0, [pc, #68]	; e004634 <_setlocale_r+0x58>
 e0045ec:	e8bd8010 	pop	{r4, pc}
 e0045f0:	e59f1040 	ldr	r1, [pc, #64]	; e004638 <_setlocale_r+0x5c>
 e0045f4:	e1a00004 	mov	r0, r4
 e0045f8:	fafff43a 	blx	e0016e8 <strcmp>
 e0045fc:	e3500000 	cmp	r0, #0
 e004600:	0afffff8 	beq	e0045e8 <_setlocale_r+0xc>
 e004604:	e59f1028 	ldr	r1, [pc, #40]	; e004634 <_setlocale_r+0x58>
 e004608:	e1a00004 	mov	r0, r4
 e00460c:	fafff435 	blx	e0016e8 <strcmp>
 e004610:	e3500000 	cmp	r0, #0
 e004614:	0afffff3 	beq	e0045e8 <_setlocale_r+0xc>
 e004618:	e59f101c 	ldr	r1, [pc, #28]	; e00463c <_setlocale_r+0x60>
 e00461c:	e1a00004 	mov	r0, r4
 e004620:	fafff430 	blx	e0016e8 <strcmp>
 e004624:	e3500000 	cmp	r0, #0
 e004628:	0affffee 	beq	e0045e8 <_setlocale_r+0xc>
 e00462c:	e3a00000 	mov	r0, #0
 e004630:	e8bd8010 	pop	{r4, pc}
 e004634:	0e015534 	.word	0x0e015534
 e004638:	0e015536 	.word	0x0e015536
 e00463c:	0e015493 	.word	0x0e015493

0e004640 <__locale_mb_cur_max>:
 e004640:	e59f3004 	ldr	r3, [pc, #4]	; e00464c <__locale_mb_cur_max+0xc>
 e004644:	e5d30128 	ldrb	r0, [r3, #296]	; 0x128
 e004648:	e12fff1e 	bx	lr
 e00464c:	600950f4 	.word	0x600950f4

0e004650 <setlocale>:
 e004650:	e59f300c 	ldr	r3, [pc, #12]	; e004664 <setlocale+0x14>
 e004654:	e1a02001 	mov	r2, r1
 e004658:	e1a01000 	mov	r1, r0
 e00465c:	e5930000 	ldr	r0, [r3]
 e004660:	eaffffdd 	b	e0045dc <_setlocale_r>
 e004664:	60095000 	.word	0x60095000

0e004668 <__localeconv_l>:
 e004668:	e28000f0 	add	r0, r0, #240	; 0xf0
 e00466c:	e12fff1e 	bx	lr

0e004670 <_localeconv_r>:
 e004670:	e59f0000 	ldr	r0, [pc]	; e004678 <_localeconv_r+0x8>
 e004674:	e12fff1e 	bx	lr
 e004678:	600951e4 	.word	0x600951e4

0e00467c <localeconv>:
 e00467c:	e59f0000 	ldr	r0, [pc]	; e004684 <localeconv+0x8>
 e004680:	e12fff1e 	bx	lr
 e004684:	600951e4 	.word	0x600951e4

0e004688 <_lseek_r>:
 e004688:	e92d4070 	push	{r4, r5, r6, lr}
 e00468c:	e1a04000 	mov	r4, r0
 e004690:	e59f502c 	ldr	r5, [pc, #44]	; e0046c4 <_lseek_r+0x3c>
 e004694:	e1a00001 	mov	r0, r1
 e004698:	e1a01002 	mov	r1, r2
 e00469c:	e3a02000 	mov	r2, #0
 e0046a0:	e5852000 	str	r2, [r5]
 e0046a4:	e1a02003 	mov	r2, r3
 e0046a8:	eb001007 	bl	e0086cc <_lseek>
 e0046ac:	e3700001 	cmn	r0, #1
 e0046b0:	18bd8070 	popne	{r4, r5, r6, pc}
 e0046b4:	e5953000 	ldr	r3, [r5]
 e0046b8:	e3530000 	cmp	r3, #0
 e0046bc:	15843000 	strne	r3, [r4]
 e0046c0:	e8bd8070 	pop	{r4, r5, r6, pc}
 e0046c4:	600a3160 	.word	0x600a3160

0e0046c8 <__swhatbuf_r>:
 e0046c8:	e92d4070 	push	{r4, r5, r6, lr}
 e0046cc:	e1a06001 	mov	r6, r1
 e0046d0:	e1d110fe 	ldrsh	r1, [r1, #14]
 e0046d4:	e24dd058 	sub	sp, sp, #88	; 0x58
 e0046d8:	e1a04002 	mov	r4, r2
 e0046dc:	e1a05003 	mov	r5, r3
 e0046e0:	e3510000 	cmp	r1, #0
 e0046e4:	aa00000a 	bge	e004714 <__swhatbuf_r+0x4c>
 e0046e8:	e1d610fc 	ldrsh	r1, [r6, #12]
 e0046ec:	e3a03000 	mov	r3, #0
 e0046f0:	e5853000 	str	r3, [r5]
 e0046f4:	e2110080 	ands	r0, r1, #128	; 0x80
 e0046f8:	13a02040 	movne	r2, #64	; 0x40
 e0046fc:	11a00003 	movne	r0, r3
 e004700:	15842000 	strne	r2, [r4]
 e004704:	03a03b01 	moveq	r3, #1024	; 0x400
 e004708:	05843000 	streq	r3, [r4]
 e00470c:	e28dd058 	add	sp, sp, #88	; 0x58
 e004710:	e8bd8070 	pop	{r4, r5, r6, pc}
 e004714:	e1a0200d 	mov	r2, sp
 e004718:	eb000d4e 	bl	e007c58 <_fstat_r>
 e00471c:	e3500000 	cmp	r0, #0
 e004720:	bafffff0 	blt	e0046e8 <__swhatbuf_r+0x20>
 e004724:	e59d2004 	ldr	r2, [sp, #4]
 e004728:	e3a03b01 	mov	r3, #1024	; 0x400
 e00472c:	e3a00b02 	mov	r0, #2048	; 0x800
 e004730:	e2022a0f 	and	r2, r2, #61440	; 0xf000
 e004734:	e2422a02 	sub	r2, r2, #8192	; 0x2000
 e004738:	e16f2f12 	clz	r2, r2
 e00473c:	e1a022a2 	lsr	r2, r2, #5
 e004740:	e5852000 	str	r2, [r5]
 e004744:	e5843000 	str	r3, [r4]
 e004748:	eaffffef 	b	e00470c <__swhatbuf_r+0x44>

0e00474c <__smakebuf_r>:
 e00474c:	e1d130bc 	ldrh	r3, [r1, #12]
 e004750:	e92d4073 	push	{r0, r1, r4, r5, r6, lr}
 e004754:	e1a04001 	mov	r4, r1
 e004758:	e3130002 	tst	r3, #2
 e00475c:	0a000006 	beq	e00477c <__smakebuf_r+0x30>
 e004760:	e2843047 	add	r3, r4, #71	; 0x47
 e004764:	e5843000 	str	r3, [r4]
 e004768:	e5843010 	str	r3, [r4, #16]
 e00476c:	e3a03001 	mov	r3, #1
 e004770:	e5843014 	str	r3, [r4, #20]
 e004774:	e28dd008 	add	sp, sp, #8
 e004778:	e8bd8070 	pop	{r4, r5, r6, pc}
 e00477c:	e28d3004 	add	r3, sp, #4
 e004780:	e1a05000 	mov	r5, r0
 e004784:	e1a0200d 	mov	r2, sp
 e004788:	ebffffce 	bl	e0046c8 <__swhatbuf_r>
 e00478c:	e59d1000 	ldr	r1, [sp]
 e004790:	e1a06000 	mov	r6, r0
 e004794:	e1a00005 	mov	r0, r5
 e004798:	eb000ebe 	bl	e008298 <__wrap__malloc_r>
 e00479c:	e2503000 	subs	r3, r0, #0
 e0047a0:	1a000006 	bne	e0047c0 <__smakebuf_r+0x74>
 e0047a4:	e1d430fc 	ldrsh	r3, [r4, #12]
 e0047a8:	e3130c02 	tst	r3, #512	; 0x200
 e0047ac:	1afffff0 	bne	e004774 <__smakebuf_r+0x28>
 e0047b0:	e3c33003 	bic	r3, r3, #3
 e0047b4:	e3833002 	orr	r3, r3, #2
 e0047b8:	e1c430bc 	strh	r3, [r4, #12]
 e0047bc:	eaffffe7 	b	e004760 <__smakebuf_r+0x14>
 e0047c0:	e59f2058 	ldr	r2, [pc, #88]	; e004820 <__smakebuf_r+0xd4>
 e0047c4:	e5852028 	str	r2, [r5, #40]	; 0x28
 e0047c8:	e5843000 	str	r3, [r4]
 e0047cc:	e5843010 	str	r3, [r4, #16]
 e0047d0:	e59d3000 	ldr	r3, [sp]
 e0047d4:	e1d420bc 	ldrh	r2, [r4, #12]
 e0047d8:	e5843014 	str	r3, [r4, #20]
 e0047dc:	e59d3004 	ldr	r3, [sp, #4]
 e0047e0:	e3822080 	orr	r2, r2, #128	; 0x80
 e0047e4:	e1c420bc 	strh	r2, [r4, #12]
 e0047e8:	e3530000 	cmp	r3, #0
 e0047ec:	0a000007 	beq	e004810 <__smakebuf_r+0xc4>
 e0047f0:	e1d410fe 	ldrsh	r1, [r4, #14]
 e0047f4:	e1a00005 	mov	r0, r5
 e0047f8:	eb000d25 	bl	e007c94 <_isatty_r>
 e0047fc:	e3500000 	cmp	r0, #0
 e004800:	11d430bc 	ldrhne	r3, [r4, #12]
 e004804:	13c33003 	bicne	r3, r3, #3
 e004808:	13833001 	orrne	r3, r3, #1
 e00480c:	11c430bc 	strhne	r3, [r4, #12]
 e004810:	e1d400bc 	ldrh	r0, [r4, #12]
 e004814:	e1800006 	orr	r0, r0, r6
 e004818:	e1c400bc 	strh	r0, [r4, #12]
 e00481c:	eaffffd4 	b	e004774 <__smakebuf_r+0x28>
 e004820:	0e0008a8 	.word	0x0e0008a8

0e004824 <_mbtowc_r>:
 e004824:	e59fc010 	ldr	ip, [pc, #16]	; e00483c <_mbtowc_r+0x18>
 e004828:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e00482c:	e59ce0e4 	ldr	lr, [ip, #228]	; 0xe4
 e004830:	e1a0c00e 	mov	ip, lr
 e004834:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 e004838:	e12fff1c 	bx	ip
 e00483c:	600950f4 	.word	0x600950f4

0e004840 <__ascii_mbtowc>:
 e004840:	e3510000 	cmp	r1, #0
 e004844:	e24dd008 	sub	sp, sp, #8
 e004848:	028d1004 	addeq	r1, sp, #4
 e00484c:	e3520000 	cmp	r2, #0
 e004850:	01a00002 	moveq	r0, r2
 e004854:	0a000007 	beq	e004878 <__ascii_mbtowc+0x38>
 e004858:	e3530000 	cmp	r3, #0
 e00485c:	03e00001 	mvneq	r0, #1
 e004860:	0a000004 	beq	e004878 <__ascii_mbtowc+0x38>
 e004864:	e5d23000 	ldrb	r3, [r2]
 e004868:	e5813000 	str	r3, [r1]
 e00486c:	e5d22000 	ldrb	r2, [r2]
 e004870:	e2520000 	subs	r0, r2, #0
 e004874:	13a00001 	movne	r0, #1
 e004878:	e28dd008 	add	sp, sp, #8
 e00487c:	e12fff1e 	bx	lr

0e004880 <memchr>:
 e004880:	2a07      	cmp	r2, #7
 e004882:	d80a      	bhi.n	e00489a <memchr+0x1a>
 e004884:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 e004888:	3a01      	subs	r2, #1
 e00488a:	d36a      	bcc.n	e004962 <memchr+0xe2>
 e00488c:	f810 3b01 	ldrb.w	r3, [r0], #1
 e004890:	428b      	cmp	r3, r1
 e004892:	d1f9      	bne.n	e004888 <memchr+0x8>
 e004894:	f1a0 0001 	sub.w	r0, r0, #1
 e004898:	4770      	bx	lr
 e00489a:	eee0 1b10 	vdup.8	q0, r1
 e00489e:	f240 2301 	movw	r3, #513	; 0x201
 e0048a2:	f6c0 0304 	movt	r3, #2052	; 0x804
 e0048a6:	ea4f 1c03 	mov.w	ip, r3, lsl #4
 e0048aa:	ec4c 3b16 	vmov	d6, r3, ip
 e0048ae:	ec4c 3b17 	vmov	d7, r3, ip
 e0048b2:	f020 011f 	bic.w	r1, r0, #31
 e0048b6:	f010 0c1f 	ands.w	ip, r0, #31
 e0048ba:	d01c      	beq.n	e0048f6 <memchr+0x76>
 e0048bc:	f921 223d 	vld1.8	{d2-d5}, [r1 :256]!
 e0048c0:	f1ac 0320 	sub.w	r3, ip, #32
 e0048c4:	18d2      	adds	r2, r2, r3
 e0048c6:	ff02 2850 	vceq.i8	q1, q1, q0
 e0048ca:	ff04 4850 	vceq.i8	q2, q2, q0
 e0048ce:	ef02 2156 	vand	q1, q1, q3
 e0048d2:	ef04 4156 	vand	q2, q2, q3
 e0048d6:	ef02 2b13 	vpadd.i8	d2, d2, d3
 e0048da:	ef04 4b15 	vpadd.i8	d4, d4, d5
 e0048de:	ef02 2b14 	vpadd.i8	d2, d2, d4
 e0048e2:	ef02 2b12 	vpadd.i8	d2, d2, d2
 e0048e6:	ee12 0b10 	vmov.32	r0, d2[0]
 e0048ea:	fa20 f00c 	lsr.w	r0, r0, ip
 e0048ee:	fa00 f00c 	lsl.w	r0, r0, ip
 e0048f2:	d927      	bls.n	e004944 <memchr+0xc4>
 e0048f4:	bb68      	cbnz	r0, e004952 <memchr+0xd2>
 e0048f6:	ed2d 8b04 	vpush	{d8-d9}
 e0048fa:	bf00      	nop
 e0048fc:	f3af 8000 	nop.w
 e004900:	f921 223d 	vld1.8	{d2-d5}, [r1 :256]!
 e004904:	3a20      	subs	r2, #32
 e004906:	ff02 2850 	vceq.i8	q1, q1, q0
 e00490a:	ff04 4850 	vceq.i8	q2, q2, q0
 e00490e:	d907      	bls.n	e004920 <memchr+0xa0>
 e004910:	ef22 8154 	vorr	q4, q1, q2
 e004914:	ef28 8119 	vorr	d8, d8, d9
 e004918:	ec53 0b18 	vmov	r0, r3, d8
 e00491c:	4318      	orrs	r0, r3
 e00491e:	d0ef      	beq.n	e004900 <memchr+0x80>
 e004920:	ecbd 8b04 	vpop	{d8-d9}
 e004924:	ef02 2156 	vand	q1, q1, q3
 e004928:	ef04 4156 	vand	q2, q2, q3
 e00492c:	ef02 2b13 	vpadd.i8	d2, d2, d3
 e004930:	ef04 4b15 	vpadd.i8	d4, d4, d5
 e004934:	ef02 2b14 	vpadd.i8	d2, d2, d4
 e004938:	ef02 2b12 	vpadd.i8	d2, d2, d2
 e00493c:	ee12 0b10 	vmov.32	r0, d2[0]
 e004940:	b178      	cbz	r0, e004962 <memchr+0xe2>
 e004942:	d806      	bhi.n	e004952 <memchr+0xd2>
 e004944:	f1c2 0200 	rsb	r2, r2, #0
 e004948:	fa00 f002 	lsl.w	r0, r0, r2
 e00494c:	40d0      	lsrs	r0, r2
 e00494e:	bf08      	it	eq
 e004950:	2100      	moveq	r1, #0
 e004952:	fa90 f0a0 	rbit	r0, r0
 e004956:	f1a1 0120 	sub.w	r1, r1, #32
 e00495a:	fab0 f080 	clz	r0, r0
 e00495e:	4408      	add	r0, r1
 e004960:	4770      	bx	lr
 e004962:	f04f 0000 	mov.w	r0, #0
 e004966:	4770      	bx	lr

0e004968 <_Balloc>:
 e004968:	e92d4070 	push	{r4, r5, r6, lr}
 e00496c:	e1a04000 	mov	r4, r0
 e004970:	e5906024 	ldr	r6, [r0, #36]	; 0x24
 e004974:	e1a05001 	mov	r5, r1
 e004978:	e3560000 	cmp	r6, #0
 e00497c:	1a00000d 	bne	e0049b8 <_Balloc+0x50>
 e004980:	e3a00010 	mov	r0, #16
 e004984:	eb000e42 	bl	e008294 <__wrap_malloc>
 e004988:	e1a02000 	mov	r2, r0
 e00498c:	e3500000 	cmp	r0, #0
 e004990:	e5840024 	str	r0, [r4, #36]	; 0x24
 e004994:	1a000003 	bne	e0049a8 <_Balloc+0x40>
 e004998:	e59f30a4 	ldr	r3, [pc, #164]	; e004a44 <_Balloc+0xdc>
 e00499c:	e3a01066 	mov	r1, #102	; 0x66
 e0049a0:	e59f00a0 	ldr	r0, [pc, #160]	; e004a48 <_Balloc+0xe0>
 e0049a4:	ebffeed8 	bl	e00050c <__assert_func>
 e0049a8:	e5806004 	str	r6, [r0, #4]
 e0049ac:	e5806008 	str	r6, [r0, #8]
 e0049b0:	e5806000 	str	r6, [r0]
 e0049b4:	e580600c 	str	r6, [r0, #12]
 e0049b8:	e5946024 	ldr	r6, [r4, #36]	; 0x24
 e0049bc:	e596300c 	ldr	r3, [r6, #12]
 e0049c0:	e3530000 	cmp	r3, #0
 e0049c4:	0a000013 	beq	e004a18 <_Balloc+0xb0>
 e0049c8:	e5943024 	ldr	r3, [r4, #36]	; 0x24
 e0049cc:	e593300c 	ldr	r3, [r3, #12]
 e0049d0:	e7930105 	ldr	r0, [r3, r5, lsl #2]
 e0049d4:	e3500000 	cmp	r0, #0
 e0049d8:	15902000 	ldrne	r2, [r0]
 e0049dc:	17832105 	strne	r2, [r3, r5, lsl #2]
 e0049e0:	1a000008 	bne	e004a08 <_Balloc+0xa0>
 e0049e4:	e3a01001 	mov	r1, #1
 e0049e8:	e1a00004 	mov	r0, r4
 e0049ec:	e1a06511 	lsl	r6, r1, r5
 e0049f0:	e2862005 	add	r2, r6, #5
 e0049f4:	e1a02102 	lsl	r2, r2, #2
 e0049f8:	eb000e2d 	bl	e0082b4 <__wrap__calloc_r>
 e0049fc:	e3500000 	cmp	r0, #0
 e004a00:	0a00000d 	beq	e004a3c <_Balloc+0xd4>
 e004a04:	e9800060 	stmib	r0, {r5, r6}
 e004a08:	e3a03000 	mov	r3, #0
 e004a0c:	e5803010 	str	r3, [r0, #16]
 e004a10:	e580300c 	str	r3, [r0, #12]
 e004a14:	e8bd8070 	pop	{r4, r5, r6, pc}
 e004a18:	e3a02021 	mov	r2, #33	; 0x21
 e004a1c:	e3a01004 	mov	r1, #4
 e004a20:	e1a00004 	mov	r0, r4
 e004a24:	eb000e22 	bl	e0082b4 <__wrap__calloc_r>
 e004a28:	e5943024 	ldr	r3, [r4, #36]	; 0x24
 e004a2c:	e586000c 	str	r0, [r6, #12]
 e004a30:	e593300c 	ldr	r3, [r3, #12]
 e004a34:	e3530000 	cmp	r3, #0
 e004a38:	1affffe2 	bne	e0049c8 <_Balloc+0x60>
 e004a3c:	e3a00000 	mov	r0, #0
 e004a40:	e8bd8070 	pop	{r4, r5, r6, pc}
 e004a44:	0e0154c5 	.word	0x0e0154c5
 e004a48:	0e01553e 	.word	0x0e01553e

0e004a4c <_Bfree>:
 e004a4c:	e92d4070 	push	{r4, r5, r6, lr}
 e004a50:	e1a05000 	mov	r5, r0
 e004a54:	e5906024 	ldr	r6, [r0, #36]	; 0x24
 e004a58:	e1a04001 	mov	r4, r1
 e004a5c:	e3560000 	cmp	r6, #0
 e004a60:	1a00000d 	bne	e004a9c <_Bfree+0x50>
 e004a64:	e3a00010 	mov	r0, #16
 e004a68:	eb000e09 	bl	e008294 <__wrap_malloc>
 e004a6c:	e1a02000 	mov	r2, r0
 e004a70:	e3500000 	cmp	r0, #0
 e004a74:	e5850024 	str	r0, [r5, #36]	; 0x24
 e004a78:	1a000003 	bne	e004a8c <_Bfree+0x40>
 e004a7c:	e59f303c 	ldr	r3, [pc, #60]	; e004ac0 <_Bfree+0x74>
 e004a80:	e3a0108a 	mov	r1, #138	; 0x8a
 e004a84:	e59f0038 	ldr	r0, [pc, #56]	; e004ac4 <_Bfree+0x78>
 e004a88:	ebffee9f 	bl	e00050c <__assert_func>
 e004a8c:	e5806004 	str	r6, [r0, #4]
 e004a90:	e5806008 	str	r6, [r0, #8]
 e004a94:	e5806000 	str	r6, [r0]
 e004a98:	e580600c 	str	r6, [r0, #12]
 e004a9c:	e3540000 	cmp	r4, #0
 e004aa0:	08bd8070 	popeq	{r4, r5, r6, pc}
 e004aa4:	e5953024 	ldr	r3, [r5, #36]	; 0x24
 e004aa8:	e5942004 	ldr	r2, [r4, #4]
 e004aac:	e593300c 	ldr	r3, [r3, #12]
 e004ab0:	e7931102 	ldr	r1, [r3, r2, lsl #2]
 e004ab4:	e5841000 	str	r1, [r4]
 e004ab8:	e7834102 	str	r4, [r3, r2, lsl #2]
 e004abc:	e8bd8070 	pop	{r4, r5, r6, pc}
 e004ac0:	0e0154c5 	.word	0x0e0154c5
 e004ac4:	0e01553e 	.word	0x0e01553e

0e004ac8 <__multadd>:
 e004ac8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e004acc:	e281c014 	add	ip, r1, #20
 e004ad0:	e5915010 	ldr	r5, [r1, #16]
 e004ad4:	e1a07000 	mov	r7, r0
 e004ad8:	e1a04001 	mov	r4, r1
 e004adc:	e1a06003 	mov	r6, r3
 e004ae0:	e3a00000 	mov	r0, #0
 e004ae4:	e59c3000 	ldr	r3, [ip]
 e004ae8:	e2800001 	add	r0, r0, #1
 e004aec:	e1550000 	cmp	r5, r0
 e004af0:	e6ff1073 	uxth	r1, r3
 e004af4:	e1a0e823 	lsr	lr, r3, #16
 e004af8:	e0216192 	mla	r1, r2, r1, r6
 e004afc:	e1a03821 	lsr	r3, r1, #16
 e004b00:	e6ff1071 	uxth	r1, r1
 e004b04:	e0233e92 	mla	r3, r2, lr, r3
 e004b08:	e0811803 	add	r1, r1, r3, lsl #16
 e004b0c:	e1a06823 	lsr	r6, r3, #16
 e004b10:	e48c1004 	str	r1, [ip], #4
 e004b14:	cafffff2 	bgt	e004ae4 <__multadd+0x1c>
 e004b18:	e3560000 	cmp	r6, #0
 e004b1c:	0a00001b 	beq	e004b90 <__multadd+0xc8>
 e004b20:	e5943008 	ldr	r3, [r4, #8]
 e004b24:	e1530005 	cmp	r3, r5
 e004b28:	ca000014 	bgt	e004b80 <__multadd+0xb8>
 e004b2c:	e5941004 	ldr	r1, [r4, #4]
 e004b30:	e1a00007 	mov	r0, r7
 e004b34:	e2811001 	add	r1, r1, #1
 e004b38:	ebffff8a 	bl	e004968 <_Balloc>
 e004b3c:	e2508000 	subs	r8, r0, #0
 e004b40:	1a000004 	bne	e004b58 <__multadd+0x90>
 e004b44:	e59f304c 	ldr	r3, [pc, #76]	; e004b98 <__multadd+0xd0>
 e004b48:	e1a02008 	mov	r2, r8
 e004b4c:	e59f0048 	ldr	r0, [pc, #72]	; e004b9c <__multadd+0xd4>
 e004b50:	e3a010b5 	mov	r1, #181	; 0xb5
 e004b54:	ebffee6c 	bl	e00050c <__assert_func>
 e004b58:	e5942010 	ldr	r2, [r4, #16]
 e004b5c:	e284100c 	add	r1, r4, #12
 e004b60:	e288000c 	add	r0, r8, #12
 e004b64:	e2822002 	add	r2, r2, #2
 e004b68:	e1a02102 	lsl	r2, r2, #2
 e004b6c:	ebfff093 	bl	e000dc0 <memcpy>
 e004b70:	e1a01004 	mov	r1, r4
 e004b74:	e1a04008 	mov	r4, r8
 e004b78:	e1a00007 	mov	r0, r7
 e004b7c:	ebffffb2 	bl	e004a4c <_Bfree>
 e004b80:	e0843105 	add	r3, r4, r5, lsl #2
 e004b84:	e2855001 	add	r5, r5, #1
 e004b88:	e5836014 	str	r6, [r3, #20]
 e004b8c:	e5845010 	str	r5, [r4, #16]
 e004b90:	e1a00004 	mov	r0, r4
 e004b94:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e004b98:	0e015523 	.word	0x0e015523
 e004b9c:	0e01553e 	.word	0x0e01553e

0e004ba0 <__s2b>:
 e004ba0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e004ba4:	e1a05002 	mov	r5, r2
 e004ba8:	e59f20d8 	ldr	r2, [pc, #216]	; e004c88 <__s2b+0xe8>
 e004bac:	e1a07003 	mov	r7, r3
 e004bb0:	e2833008 	add	r3, r3, #8
 e004bb4:	e1a04001 	mov	r4, r1
 e004bb8:	e1a06000 	mov	r6, r0
 e004bbc:	e0c12293 	smull	r2, r1, r3, r2
 e004bc0:	e1a03fc3 	asr	r3, r3, #31
 e004bc4:	e3a02001 	mov	r2, #1
 e004bc8:	e06330c1 	rsb	r3, r3, r1, asr #1
 e004bcc:	e3a01000 	mov	r1, #0
 e004bd0:	e1520003 	cmp	r2, r3
 e004bd4:	ba000008 	blt	e004bfc <__s2b+0x5c>
 e004bd8:	e1a00006 	mov	r0, r6
 e004bdc:	ebffff61 	bl	e004968 <_Balloc>
 e004be0:	e3500000 	cmp	r0, #0
 e004be4:	1a000007 	bne	e004c08 <__s2b+0x68>
 e004be8:	e1a02000 	mov	r2, r0
 e004bec:	e59f3098 	ldr	r3, [pc, #152]	; e004c8c <__s2b+0xec>
 e004bf0:	e59f0098 	ldr	r0, [pc, #152]	; e004c90 <__s2b+0xf0>
 e004bf4:	e3a010ce 	mov	r1, #206	; 0xce
 e004bf8:	ebffee43 	bl	e00050c <__assert_func>
 e004bfc:	e1a02082 	lsl	r2, r2, #1
 e004c00:	e2811001 	add	r1, r1, #1
 e004c04:	eafffff1 	b	e004bd0 <__s2b+0x30>
 e004c08:	e59d3020 	ldr	r3, [sp, #32]
 e004c0c:	e3550009 	cmp	r5, #9
 e004c10:	e5803014 	str	r3, [r0, #20]
 e004c14:	d284400a 	addle	r4, r4, #10
 e004c18:	e3a03001 	mov	r3, #1
 e004c1c:	d3a05009 	movle	r5, #9
 e004c20:	e5803010 	str	r3, [r0, #16]
 e004c24:	da00000c 	ble	e004c5c <__s2b+0xbc>
 e004c28:	e2849009 	add	r9, r4, #9
 e004c2c:	e0844005 	add	r4, r4, r5
 e004c30:	e1a08009 	mov	r8, r9
 e004c34:	e4d83001 	ldrb	r3, [r8], #1
 e004c38:	e1a01000 	mov	r1, r0
 e004c3c:	e3a0200a 	mov	r2, #10
 e004c40:	e1a00006 	mov	r0, r6
 e004c44:	e2433030 	sub	r3, r3, #48	; 0x30
 e004c48:	ebffff9e 	bl	e004ac8 <__multadd>
 e004c4c:	e1580004 	cmp	r8, r4
 e004c50:	1afffff7 	bne	e004c34 <__s2b+0x94>
 e004c54:	e2454008 	sub	r4, r5, #8
 e004c58:	e0894004 	add	r4, r9, r4
 e004c5c:	e0455004 	sub	r5, r5, r4
 e004c60:	e0843005 	add	r3, r4, r5
 e004c64:	e1530007 	cmp	r3, r7
 e004c68:	a8bd87f0 	popge	{r4, r5, r6, r7, r8, r9, sl, pc}
 e004c6c:	e4d43001 	ldrb	r3, [r4], #1
 e004c70:	e1a01000 	mov	r1, r0
 e004c74:	e3a0200a 	mov	r2, #10
 e004c78:	e1a00006 	mov	r0, r6
 e004c7c:	e2433030 	sub	r3, r3, #48	; 0x30
 e004c80:	ebffff90 	bl	e004ac8 <__multadd>
 e004c84:	eafffff5 	b	e004c60 <__s2b+0xc0>
 e004c88:	38e38e39 	.word	0x38e38e39
 e004c8c:	0e015523 	.word	0x0e015523
 e004c90:	0e01553e 	.word	0x0e01553e

0e004c94 <__hi0bits>:
 e004c94:	e1a02820 	lsr	r2, r0, #16
 e004c98:	e1a03000 	mov	r3, r0
 e004c9c:	e1a02802 	lsl	r2, r2, #16
 e004ca0:	e3520000 	cmp	r2, #0
 e004ca4:	01a03800 	lsleq	r3, r0, #16
 e004ca8:	13a00000 	movne	r0, #0
 e004cac:	03a00010 	moveq	r0, #16
 e004cb0:	e31304ff 	tst	r3, #-16777216	; 0xff000000
 e004cb4:	01a03403 	lsleq	r3, r3, #8
 e004cb8:	02800008 	addeq	r0, r0, #8
 e004cbc:	e313020f 	tst	r3, #-268435456	; 0xf0000000
 e004cc0:	01a03203 	lsleq	r3, r3, #4
 e004cc4:	02800004 	addeq	r0, r0, #4
 e004cc8:	e3130103 	tst	r3, #-1073741824	; 0xc0000000
 e004ccc:	01a03103 	lsleq	r3, r3, #2
 e004cd0:	02800002 	addeq	r0, r0, #2
 e004cd4:	e3530000 	cmp	r3, #0
 e004cd8:	b12fff1e 	bxlt	lr
 e004cdc:	e3130101 	tst	r3, #1073741824	; 0x40000000
 e004ce0:	12800001 	addne	r0, r0, #1
 e004ce4:	03a00020 	moveq	r0, #32
 e004ce8:	e12fff1e 	bx	lr

0e004cec <__lo0bits>:
 e004cec:	e5903000 	ldr	r3, [r0]
 e004cf0:	e1a02000 	mov	r2, r0
 e004cf4:	e2130007 	ands	r0, r3, #7
 e004cf8:	0a000009 	beq	e004d24 <__lo0bits+0x38>
 e004cfc:	e3130001 	tst	r3, #1
 e004d00:	1a00001c 	bne	e004d78 <__lo0bits+0x8c>
 e004d04:	e3130002 	tst	r3, #2
 e004d08:	11a030a3 	lsrne	r3, r3, #1
 e004d0c:	13a00001 	movne	r0, #1
 e004d10:	01a03123 	lsreq	r3, r3, #2
 e004d14:	15823000 	strne	r3, [r2]
 e004d18:	03a00002 	moveq	r0, #2
 e004d1c:	05823000 	streq	r3, [r2]
 e004d20:	e12fff1e 	bx	lr
 e004d24:	e6ff1073 	uxth	r1, r3
 e004d28:	e3510000 	cmp	r1, #0
 e004d2c:	01a03823 	lsreq	r3, r3, #16
 e004d30:	03a00010 	moveq	r0, #16
 e004d34:	e6ef1073 	uxtb	r1, r3
 e004d38:	e3510000 	cmp	r1, #0
 e004d3c:	01a03423 	lsreq	r3, r3, #8
 e004d40:	02800008 	addeq	r0, r0, #8
 e004d44:	e313000f 	tst	r3, #15
 e004d48:	01a03223 	lsreq	r3, r3, #4
 e004d4c:	02800004 	addeq	r0, r0, #4
 e004d50:	e3130003 	tst	r3, #3
 e004d54:	01a03123 	lsreq	r3, r3, #2
 e004d58:	02800002 	addeq	r0, r0, #2
 e004d5c:	e3130001 	tst	r3, #1
 e004d60:	1a000002 	bne	e004d70 <__lo0bits+0x84>
 e004d64:	e2800001 	add	r0, r0, #1
 e004d68:	e1b030a3 	lsrs	r3, r3, #1
 e004d6c:	0a000003 	beq	e004d80 <__lo0bits+0x94>
 e004d70:	e5823000 	str	r3, [r2]
 e004d74:	e12fff1e 	bx	lr
 e004d78:	e3a00000 	mov	r0, #0
 e004d7c:	e12fff1e 	bx	lr
 e004d80:	e3a00020 	mov	r0, #32
 e004d84:	e12fff1e 	bx	lr

0e004d88 <__i2b>:
 e004d88:	e92d4010 	push	{r4, lr}
 e004d8c:	e1a04001 	mov	r4, r1
 e004d90:	e3a01001 	mov	r1, #1
 e004d94:	ebfffef3 	bl	e004968 <_Balloc>
 e004d98:	e2502000 	subs	r2, r0, #0
 e004d9c:	1a000003 	bne	e004db0 <__i2b+0x28>
 e004da0:	e59f3018 	ldr	r3, [pc, #24]	; e004dc0 <__i2b+0x38>
 e004da4:	e3a01d05 	mov	r1, #320	; 0x140
 e004da8:	e59f0014 	ldr	r0, [pc, #20]	; e004dc4 <__i2b+0x3c>
 e004dac:	ebffedd6 	bl	e00050c <__assert_func>
 e004db0:	e3a03001 	mov	r3, #1
 e004db4:	e5824014 	str	r4, [r2, #20]
 e004db8:	e5823010 	str	r3, [r2, #16]
 e004dbc:	e8bd8010 	pop	{r4, pc}
 e004dc0:	0e015523 	.word	0x0e015523
 e004dc4:	0e01553e 	.word	0x0e01553e

0e004dc8 <__multiply>:
 e004dc8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e004dcc:	e1a06002 	mov	r6, r2
 e004dd0:	e5912010 	ldr	r2, [r1, #16]
 e004dd4:	e1a04001 	mov	r4, r1
 e004dd8:	e24dd014 	sub	sp, sp, #20
 e004ddc:	e5963010 	ldr	r3, [r6, #16]
 e004de0:	e1520003 	cmp	r2, r3
 e004de4:	b1a03001 	movlt	r3, r1
 e004de8:	b1a04006 	movlt	r4, r6
 e004dec:	b1a06003 	movlt	r6, r3
 e004df0:	e5949010 	ldr	r9, [r4, #16]
 e004df4:	e5967010 	ldr	r7, [r6, #16]
 e004df8:	e5943008 	ldr	r3, [r4, #8]
 e004dfc:	e5941004 	ldr	r1, [r4, #4]
 e004e00:	e0895007 	add	r5, r9, r7
 e004e04:	e1530005 	cmp	r3, r5
 e004e08:	b2811001 	addlt	r1, r1, #1
 e004e0c:	ebfffed5 	bl	e004968 <_Balloc>
 e004e10:	e3500000 	cmp	r0, #0
 e004e14:	1a000004 	bne	e004e2c <__multiply+0x64>
 e004e18:	e1a02000 	mov	r2, r0
 e004e1c:	e59f3168 	ldr	r3, [pc, #360]	; e004f8c <__multiply+0x1c4>
 e004e20:	e59f0168 	ldr	r0, [pc, #360]	; e004f90 <__multiply+0x1c8>
 e004e24:	e300115d 	movw	r1, #349	; 0x15d
 e004e28:	ebffedb7 	bl	e00050c <__assert_func>
 e004e2c:	e280c014 	add	ip, r0, #20
 e004e30:	e3a02000 	mov	r2, #0
 e004e34:	e08c8105 	add	r8, ip, r5, lsl #2
 e004e38:	e1a0300c 	mov	r3, ip
 e004e3c:	e1530008 	cmp	r3, r8
 e004e40:	3a000018 	bcc	e004ea8 <__multiply+0xe0>
 e004e44:	e284e014 	add	lr, r4, #20
 e004e48:	e2863014 	add	r3, r6, #20
 e004e4c:	e08ee109 	add	lr, lr, r9, lsl #2
 e004e50:	e0832107 	add	r2, r3, r7, lsl #2
 e004e54:	e58d2008 	str	r2, [sp, #8]
 e004e58:	e04e2004 	sub	r2, lr, r4
 e004e5c:	e2422015 	sub	r2, r2, #21
 e004e60:	e2841015 	add	r1, r4, #21
 e004e64:	e3c22003 	bic	r2, r2, #3
 e004e68:	e15e0001 	cmp	lr, r1
 e004e6c:	e2822004 	add	r2, r2, #4
 e004e70:	33a02004 	movcc	r2, #4
 e004e74:	e58d2004 	str	r2, [sp, #4]
 e004e78:	e59d2008 	ldr	r2, [sp, #8]
 e004e7c:	e58d300c 	str	r3, [sp, #12]
 e004e80:	e1520003 	cmp	r2, r3
 e004e84:	8a000009 	bhi	e004eb0 <__multiply+0xe8>
 e004e88:	e3550000 	cmp	r5, #0
 e004e8c:	da000002 	ble	e004e9c <__multiply+0xd4>
 e004e90:	e5383004 	ldr	r3, [r8, #-4]!
 e004e94:	e3530000 	cmp	r3, #0
 e004e98:	0a000039 	beq	e004f84 <__multiply+0x1bc>
 e004e9c:	e5805010 	str	r5, [r0, #16]
 e004ea0:	e28dd014 	add	sp, sp, #20
 e004ea4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e004ea8:	e4832004 	str	r2, [r3], #4
 e004eac:	eaffffe2 	b	e004e3c <__multiply+0x74>
 e004eb0:	e1d3a0b0 	ldrh	sl, [r3]
 e004eb4:	e35a0000 	cmp	sl, #0
 e004eb8:	0a000015 	beq	e004f14 <__multiply+0x14c>
 e004ebc:	e2847014 	add	r7, r4, #20
 e004ec0:	e1a0900c 	mov	r9, ip
 e004ec4:	e3a06000 	mov	r6, #0
 e004ec8:	e4972004 	ldr	r2, [r7], #4
 e004ecc:	e5991000 	ldr	r1, [r9]
 e004ed0:	e15e0007 	cmp	lr, r7
 e004ed4:	e6ffb072 	uxth	fp, r2
 e004ed8:	e1a02822 	lsr	r2, r2, #16
 e004edc:	e6ff1071 	uxth	r1, r1
 e004ee0:	e0211b9a 	mla	r1, sl, fp, r1
 e004ee4:	e0811006 	add	r1, r1, r6
 e004ee8:	e5996000 	ldr	r6, [r9]
 e004eec:	e1a06826 	lsr	r6, r6, #16
 e004ef0:	e022629a 	mla	r2, sl, r2, r6
 e004ef4:	e0822821 	add	r2, r2, r1, lsr #16
 e004ef8:	e6ff1071 	uxth	r1, r1
 e004efc:	e1811802 	orr	r1, r1, r2, lsl #16
 e004f00:	e1a06822 	lsr	r6, r2, #16
 e004f04:	e4891004 	str	r1, [r9], #4
 e004f08:	8affffee 	bhi	e004ec8 <__multiply+0x100>
 e004f0c:	e59d2004 	ldr	r2, [sp, #4]
 e004f10:	e78c6002 	str	r6, [ip, r2]
 e004f14:	e59d200c 	ldr	r2, [sp, #12]
 e004f18:	e2833004 	add	r3, r3, #4
 e004f1c:	e1d290b2 	ldrh	r9, [r2, #2]
 e004f20:	e3590000 	cmp	r9, #0
 e004f24:	0a000014 	beq	e004f7c <__multiply+0x1b4>
 e004f28:	e59c1000 	ldr	r1, [ip]
 e004f2c:	e2846014 	add	r6, r4, #20
 e004f30:	e1a0700c 	mov	r7, ip
 e004f34:	e3a0a000 	mov	sl, #0
 e004f38:	e1d6b0b0 	ldrh	fp, [r6]
 e004f3c:	e6ff1071 	uxth	r1, r1
 e004f40:	e1d720b2 	ldrh	r2, [r7, #2]
 e004f44:	e0222b99 	mla	r2, r9, fp, r2
 e004f48:	e082a00a 	add	sl, r2, sl
 e004f4c:	e181180a 	orr	r1, r1, sl, lsl #16
 e004f50:	e4871004 	str	r1, [r7], #4
 e004f54:	e4962004 	ldr	r2, [r6], #4
 e004f58:	e1d710b0 	ldrh	r1, [r7]
 e004f5c:	e15e0006 	cmp	lr, r6
 e004f60:	e1a02822 	lsr	r2, r2, #16
 e004f64:	e0211299 	mla	r1, r9, r2, r1
 e004f68:	e081182a 	add	r1, r1, sl, lsr #16
 e004f6c:	e1a0a821 	lsr	sl, r1, #16
 e004f70:	8afffff0 	bhi	e004f38 <__multiply+0x170>
 e004f74:	e59d2004 	ldr	r2, [sp, #4]
 e004f78:	e78c1002 	str	r1, [ip, r2]
 e004f7c:	e28cc004 	add	ip, ip, #4
 e004f80:	eaffffbc 	b	e004e78 <__multiply+0xb0>
 e004f84:	e2455001 	sub	r5, r5, #1
 e004f88:	eaffffbe 	b	e004e88 <__multiply+0xc0>
 e004f8c:	0e015523 	.word	0x0e015523
 e004f90:	0e01553e 	.word	0x0e01553e

0e004f94 <__pow5mult>:
 e004f94:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e004f98:	e1a05002 	mov	r5, r2
 e004f9c:	e2122003 	ands	r2, r2, #3
 e004fa0:	e1a06000 	mov	r6, r0
 e004fa4:	01a07001 	moveq	r7, r1
 e004fa8:	0a000005 	beq	e004fc4 <__pow5mult+0x30>
 e004fac:	e59fc0f4 	ldr	ip, [pc, #244]	; e0050a8 <__pow5mult+0x114>
 e004fb0:	e2422001 	sub	r2, r2, #1
 e004fb4:	e3a03000 	mov	r3, #0
 e004fb8:	e79c2102 	ldr	r2, [ip, r2, lsl #2]
 e004fbc:	ebfffec1 	bl	e004ac8 <__multadd>
 e004fc0:	e1a07000 	mov	r7, r0
 e004fc4:	e1b05145 	asrs	r5, r5, #2
 e004fc8:	0a000034 	beq	e0050a0 <__pow5mult+0x10c>
 e004fcc:	e5964024 	ldr	r4, [r6, #36]	; 0x24
 e004fd0:	e3540000 	cmp	r4, #0
 e004fd4:	1a00000d 	bne	e005010 <__pow5mult+0x7c>
 e004fd8:	e3a00010 	mov	r0, #16
 e004fdc:	eb000cac 	bl	e008294 <__wrap_malloc>
 e004fe0:	e1a02000 	mov	r2, r0
 e004fe4:	e3500000 	cmp	r0, #0
 e004fe8:	e5860024 	str	r0, [r6, #36]	; 0x24
 e004fec:	1a000003 	bne	e005000 <__pow5mult+0x6c>
 e004ff0:	e59f30b4 	ldr	r3, [pc, #180]	; e0050ac <__pow5mult+0x118>
 e004ff4:	e30011ae 	movw	r1, #430	; 0x1ae
 e004ff8:	e59f00b0 	ldr	r0, [pc, #176]	; e0050b0 <__pow5mult+0x11c>
 e004ffc:	ebffed42 	bl	e00050c <__assert_func>
 e005000:	e5804004 	str	r4, [r0, #4]
 e005004:	e5804008 	str	r4, [r0, #8]
 e005008:	e5804000 	str	r4, [r0]
 e00500c:	e580400c 	str	r4, [r0, #12]
 e005010:	e5968024 	ldr	r8, [r6, #36]	; 0x24
 e005014:	e5984008 	ldr	r4, [r8, #8]
 e005018:	e3540000 	cmp	r4, #0
 e00501c:	1a000006 	bne	e00503c <__pow5mult+0xa8>
 e005020:	e1a00006 	mov	r0, r6
 e005024:	e3001271 	movw	r1, #625	; 0x271
 e005028:	ebffff56 	bl	e004d88 <__i2b>
 e00502c:	e1a04000 	mov	r4, r0
 e005030:	e3a03000 	mov	r3, #0
 e005034:	e5880008 	str	r0, [r8, #8]
 e005038:	e5803000 	str	r3, [r0]
 e00503c:	e3a09000 	mov	r9, #0
 e005040:	e3150001 	tst	r5, #1
 e005044:	0a000008 	beq	e00506c <__pow5mult+0xd8>
 e005048:	e1a01007 	mov	r1, r7
 e00504c:	e1a02004 	mov	r2, r4
 e005050:	e1a00006 	mov	r0, r6
 e005054:	ebffff5b 	bl	e004dc8 <__multiply>
 e005058:	e1a08000 	mov	r8, r0
 e00505c:	e1a01007 	mov	r1, r7
 e005060:	e1a07008 	mov	r7, r8
 e005064:	e1a00006 	mov	r0, r6
 e005068:	ebfffe77 	bl	e004a4c <_Bfree>
 e00506c:	e1b050c5 	asrs	r5, r5, #1
 e005070:	0a00000a 	beq	e0050a0 <__pow5mult+0x10c>
 e005074:	e5940000 	ldr	r0, [r4]
 e005078:	e3500000 	cmp	r0, #0
 e00507c:	1a000005 	bne	e005098 <__pow5mult+0x104>
 e005080:	e1a02004 	mov	r2, r4
 e005084:	e1a01004 	mov	r1, r4
 e005088:	e1a00006 	mov	r0, r6
 e00508c:	ebffff4d 	bl	e004dc8 <__multiply>
 e005090:	e5840000 	str	r0, [r4]
 e005094:	e5809000 	str	r9, [r0]
 e005098:	e1a04000 	mov	r4, r0
 e00509c:	eaffffe7 	b	e005040 <__pow5mult+0xac>
 e0050a0:	e1a00007 	mov	r0, r7
 e0050a4:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e0050a8:	0e013b60 	.word	0x0e013b60
 e0050ac:	0e0154c5 	.word	0x0e0154c5
 e0050b0:	0e01553e 	.word	0x0e01553e

0e0050b4 <__lshift>:
 e0050b4:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e0050b8:	e1a04001 	mov	r4, r1
 e0050bc:	e5911004 	ldr	r1, [r1, #4]
 e0050c0:	e1a07000 	mov	r7, r0
 e0050c4:	e1a09002 	mov	r9, r2
 e0050c8:	e5948010 	ldr	r8, [r4, #16]
 e0050cc:	e1a0a2c2 	asr	sl, r2, #5
 e0050d0:	e5943008 	ldr	r3, [r4, #8]
 e0050d4:	e08882c2 	add	r8, r8, r2, asr #5
 e0050d8:	e2886001 	add	r6, r8, #1
 e0050dc:	e1530006 	cmp	r3, r6
 e0050e0:	ba000008 	blt	e005108 <__lshift+0x54>
 e0050e4:	e1a00007 	mov	r0, r7
 e0050e8:	ebfffe1e 	bl	e004968 <_Balloc>
 e0050ec:	e2505000 	subs	r5, r0, #0
 e0050f0:	1a000007 	bne	e005114 <__lshift+0x60>
 e0050f4:	e59f30dc 	ldr	r3, [pc, #220]	; e0051d8 <__lshift+0x124>
 e0050f8:	e1a02005 	mov	r2, r5
 e0050fc:	e59f00d8 	ldr	r0, [pc, #216]	; e0051dc <__lshift+0x128>
 e005100:	e30011d9 	movw	r1, #473	; 0x1d9
 e005104:	ebffed00 	bl	e00050c <__assert_func>
 e005108:	e2811001 	add	r1, r1, #1
 e00510c:	e1a03083 	lsl	r3, r3, #1
 e005110:	eafffff1 	b	e0050dc <__lshift+0x28>
 e005114:	e3a03000 	mov	r3, #0
 e005118:	e2851014 	add	r1, r5, #20
 e00511c:	e2852010 	add	r2, r5, #16
 e005120:	e1a00003 	mov	r0, r3
 e005124:	e153000a 	cmp	r3, sl
 e005128:	ba000021 	blt	e0051b4 <__lshift+0x100>
 e00512c:	e5940010 	ldr	r0, [r4, #16]
 e005130:	e1caafca 	bic	sl, sl, sl, asr #31
 e005134:	e2843014 	add	r3, r4, #20
 e005138:	e219901f 	ands	r9, r9, #31
 e00513c:	e081110a 	add	r1, r1, sl, lsl #2
 e005140:	e0830100 	add	r0, r3, r0, lsl #2
 e005144:	0a00001d 	beq	e0051c0 <__lshift+0x10c>
 e005148:	e2692020 	rsb	r2, r9, #32
 e00514c:	e1a0a001 	mov	sl, r1
 e005150:	e3a0c000 	mov	ip, #0
 e005154:	e593e000 	ldr	lr, [r3]
 e005158:	e18cc91e 	orr	ip, ip, lr, lsl r9
 e00515c:	e48ac004 	str	ip, [sl], #4
 e005160:	e493c004 	ldr	ip, [r3], #4
 e005164:	e1500003 	cmp	r0, r3
 e005168:	e1a0c23c 	lsr	ip, ip, r2
 e00516c:	8afffff8 	bhi	e005154 <__lshift+0xa0>
 e005170:	e0403004 	sub	r3, r0, r4
 e005174:	e2842015 	add	r2, r4, #21
 e005178:	e2433015 	sub	r3, r3, #21
 e00517c:	e1500002 	cmp	r0, r2
 e005180:	e3c33003 	bic	r3, r3, #3
 e005184:	e2833004 	add	r3, r3, #4
 e005188:	33a03004 	movcc	r3, #4
 e00518c:	e35c0000 	cmp	ip, #0
 e005190:	12886002 	addne	r6, r8, #2
 e005194:	e781c003 	str	ip, [r1, r3]
 e005198:	e1a00007 	mov	r0, r7
 e00519c:	e2466001 	sub	r6, r6, #1
 e0051a0:	e1a01004 	mov	r1, r4
 e0051a4:	e5856010 	str	r6, [r5, #16]
 e0051a8:	ebfffe27 	bl	e004a4c <_Bfree>
 e0051ac:	e1a00005 	mov	r0, r5
 e0051b0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e0051b4:	e2833001 	add	r3, r3, #1
 e0051b8:	e5a20004 	str	r0, [r2, #4]!
 e0051bc:	eaffffd8 	b	e005124 <__lshift+0x70>
 e0051c0:	e2411004 	sub	r1, r1, #4
 e0051c4:	e4932004 	ldr	r2, [r3], #4
 e0051c8:	e5a12004 	str	r2, [r1, #4]!
 e0051cc:	e1500003 	cmp	r0, r3
 e0051d0:	8afffffb 	bhi	e0051c4 <__lshift+0x110>
 e0051d4:	eaffffef 	b	e005198 <__lshift+0xe4>
 e0051d8:	0e015523 	.word	0x0e015523
 e0051dc:	0e01553e 	.word	0x0e01553e

0e0051e0 <__mcmp>:
 e0051e0:	e5912010 	ldr	r2, [r1, #16]
 e0051e4:	e1a03000 	mov	r3, r0
 e0051e8:	e5900010 	ldr	r0, [r0, #16]
 e0051ec:	e0500002 	subs	r0, r0, r2
 e0051f0:	112fff1e 	bxne	lr
 e0051f4:	e2833014 	add	r3, r3, #20
 e0051f8:	e2811014 	add	r1, r1, #20
 e0051fc:	e083c102 	add	ip, r3, r2, lsl #2
 e005200:	e0811102 	add	r1, r1, r2, lsl #2
 e005204:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e005208:	e53ce004 	ldr	lr, [ip, #-4]!
 e00520c:	e5312004 	ldr	r2, [r1, #-4]!
 e005210:	e15e0002 	cmp	lr, r2
 e005214:	0a000002 	beq	e005224 <__mcmp+0x44>
 e005218:	3a000004 	bcc	e005230 <__mcmp+0x50>
 e00521c:	e3a00001 	mov	r0, #1
 e005220:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
 e005224:	e153000c 	cmp	r3, ip
 e005228:	3afffff6 	bcc	e005208 <__mcmp+0x28>
 e00522c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
 e005230:	e3e00000 	mvn	r0, #0
 e005234:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

0e005238 <__mdiff>:
 e005238:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e00523c:	e1a04001 	mov	r4, r1
 e005240:	e1a06000 	mov	r6, r0
 e005244:	e1a01002 	mov	r1, r2
 e005248:	e1a00004 	mov	r0, r4
 e00524c:	e1a08002 	mov	r8, r2
 e005250:	ebffffe2 	bl	e0051e0 <__mcmp>
 e005254:	e2505000 	subs	r5, r0, #0
 e005258:	1a00000b 	bne	e00528c <__mdiff+0x54>
 e00525c:	e1a01005 	mov	r1, r5
 e005260:	e1a00006 	mov	r0, r6
 e005264:	ebfffdbf 	bl	e004968 <_Balloc>
 e005268:	e2502000 	subs	r2, r0, #0
 e00526c:	13a03001 	movne	r3, #1
 e005270:	03001232 	movweq	r1, #562	; 0x232
 e005274:	059f3138 	ldreq	r3, [pc, #312]	; e0053b4 <__mdiff+0x17c>
 e005278:	15823010 	strne	r3, [r2, #16]
 e00527c:	15825014 	strne	r5, [r2, #20]
 e005280:	1a00003e 	bne	e005380 <__mdiff+0x148>
 e005284:	e59f012c 	ldr	r0, [pc, #300]	; e0053b8 <__mdiff+0x180>
 e005288:	ebffec9f 	bl	e00050c <__assert_func>
 e00528c:	a1a03008 	movge	r3, r8
 e005290:	a1a08004 	movge	r8, r4
 e005294:	e1a00006 	mov	r0, r6
 e005298:	a1a04003 	movge	r4, r3
 e00529c:	a3a05000 	movge	r5, #0
 e0052a0:	b3a05001 	movlt	r5, #1
 e0052a4:	e5981004 	ldr	r1, [r8, #4]
 e0052a8:	ebfffdae 	bl	e004968 <_Balloc>
 e0052ac:	e2502000 	subs	r2, r0, #0
 e0052b0:	059f30fc 	ldreq	r3, [pc, #252]	; e0053b4 <__mdiff+0x17c>
 e0052b4:	03a01d09 	moveq	r1, #576	; 0x240
 e0052b8:	0afffff1 	beq	e005284 <__mdiff+0x4c>
 e0052bc:	e594e010 	ldr	lr, [r4, #16]
 e0052c0:	e2880014 	add	r0, r8, #20
 e0052c4:	e582500c 	str	r5, [r2, #12]
 e0052c8:	e284a014 	add	sl, r4, #20
 e0052cc:	e5985010 	ldr	r5, [r8, #16]
 e0052d0:	e2827014 	add	r7, r2, #20
 e0052d4:	e08ae10e 	add	lr, sl, lr, lsl #2
 e0052d8:	e288c010 	add	ip, r8, #16
 e0052dc:	e1a0b007 	mov	fp, r7
 e0052e0:	e3a01000 	mov	r1, #0
 e0052e4:	e0806105 	add	r6, r0, r5, lsl #2
 e0052e8:	e49a8004 	ldr	r8, [sl], #4
 e0052ec:	e5bc3004 	ldr	r3, [ip, #4]!
 e0052f0:	e15e000a 	cmp	lr, sl
 e0052f4:	e6ff9078 	uxth	r9, r8
 e0052f8:	e1a08828 	lsr	r8, r8, #16
 e0052fc:	e6f11073 	uxtah	r1, r1, r3
 e005300:	e0683823 	rsb	r3, r8, r3, lsr #16
 e005304:	e0419009 	sub	r9, r1, r9
 e005308:	e0833849 	add	r3, r3, r9, asr #16
 e00530c:	e6ff9079 	uxth	r9, r9
 e005310:	e1a01843 	asr	r1, r3, #16
 e005314:	e1893803 	orr	r3, r9, r3, lsl #16
 e005318:	e48b3004 	str	r3, [fp], #4
 e00531c:	8afffff1 	bhi	e0052e8 <__mdiff+0xb0>
 e005320:	e04e3004 	sub	r3, lr, r4
 e005324:	e2844015 	add	r4, r4, #21
 e005328:	e2433015 	sub	r3, r3, #21
 e00532c:	e15e0004 	cmp	lr, r4
 e005330:	e3c33003 	bic	r3, r3, #3
 e005334:	e2833004 	add	r3, r3, #4
 e005338:	33a03004 	movcc	r3, #4
 e00533c:	e0800003 	add	r0, r0, r3
 e005340:	e0873003 	add	r3, r7, r3
 e005344:	e1a07003 	mov	r7, r3
 e005348:	e1a04000 	mov	r4, r0
 e00534c:	e1540006 	cmp	r4, r6
 e005350:	3a00000c 	bcc	e005388 <__mdiff+0x150>
 e005354:	e2861003 	add	r1, r6, #3
 e005358:	e0411000 	sub	r1, r1, r0
 e00535c:	e2400003 	sub	r0, r0, #3
 e005360:	e1560000 	cmp	r6, r0
 e005364:	e3c11003 	bic	r1, r1, #3
 e005368:	33a01000 	movcc	r1, #0
 e00536c:	e0831001 	add	r1, r3, r1
 e005370:	e5313004 	ldr	r3, [r1, #-4]!
 e005374:	e3530000 	cmp	r3, #0
 e005378:	0a00000b 	beq	e0053ac <__mdiff+0x174>
 e00537c:	e5825010 	str	r5, [r2, #16]
 e005380:	e1a00002 	mov	r0, r2
 e005384:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e005388:	e4948004 	ldr	r8, [r4], #4
 e00538c:	e6f1c078 	uxtah	ip, r1, r8
 e005390:	e1a0e84c 	asr	lr, ip, #16
 e005394:	e6ffc07c 	uxth	ip, ip
 e005398:	e08ee828 	add	lr, lr, r8, lsr #16
 e00539c:	e18cc80e 	orr	ip, ip, lr, lsl #16
 e0053a0:	e1a0184e 	asr	r1, lr, #16
 e0053a4:	e487c004 	str	ip, [r7], #4
 e0053a8:	eaffffe7 	b	e00534c <__mdiff+0x114>
 e0053ac:	e2455001 	sub	r5, r5, #1
 e0053b0:	eaffffee 	b	e005370 <__mdiff+0x138>
 e0053b4:	0e015523 	.word	0x0e015523
 e0053b8:	0e01553e 	.word	0x0e01553e

0e0053bc <__ulp>:
 e0053bc:	e24dd008 	sub	sp, sp, #8
 e0053c0:	e59f1060 	ldr	r1, [pc, #96]	; e005428 <__ulp+0x6c>
 e0053c4:	ed8d0b00 	vstr	d0, [sp]
 e0053c8:	e59d3004 	ldr	r3, [sp, #4]
 e0053cc:	e0011003 	and	r1, r1, r3
 e0053d0:	e241150d 	sub	r1, r1, #54525952	; 0x3400000
 e0053d4:	e3510000 	cmp	r1, #0
 e0053d8:	c3a02000 	movgt	r2, #0
 e0053dc:	c1a03001 	movgt	r3, r1
 e0053e0:	ca00000d 	bgt	e00541c <__ulp+0x60>
 e0053e4:	e2611000 	rsb	r1, r1, #0
 e0053e8:	e3a03000 	mov	r3, #0
 e0053ec:	e3510505 	cmp	r1, #20971520	; 0x1400000
 e0053f0:	e3a02000 	mov	r2, #0
 e0053f4:	e1a00a41 	asr	r0, r1, #20
 e0053f8:	b3a01702 	movlt	r1, #524288	; 0x80000
 e0053fc:	b1a03051 	asrlt	r3, r1, r0
 e005400:	ba000005 	blt	e00541c <__ulp+0x60>
 e005404:	e2401014 	sub	r1, r0, #20
 e005408:	e351001e 	cmp	r1, #30
 e00540c:	d3a00102 	movle	r0, #-2147483648	; 0x80000000
 e005410:	c3a01001 	movgt	r1, #1
 e005414:	d1a01130 	lsrle	r1, r0, r1
 e005418:	e1a02001 	mov	r2, r1
 e00541c:	ec432b10 	vmov	d0, r2, r3
 e005420:	e28dd008 	add	sp, sp, #8
 e005424:	e12fff1e 	bx	lr
 e005428:	7ff00000 	.word	0x7ff00000

0e00542c <__b2d>:
 e00542c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e005430:	e2807014 	add	r7, r0, #20
 e005434:	e5904010 	ldr	r4, [r0, #16]
 e005438:	e0874104 	add	r4, r7, r4, lsl #2
 e00543c:	e2446004 	sub	r6, r4, #4
 e005440:	e5145004 	ldr	r5, [r4, #-4]
 e005444:	e1a00005 	mov	r0, r5
 e005448:	ebfffe11 	bl	e004c94 <__hi0bits>
 e00544c:	e59fc084 	ldr	ip, [pc, #132]	; e0054d8 <__b2d+0xac>
 e005450:	e2603020 	rsb	r3, r0, #32
 e005454:	e350000a 	cmp	r0, #10
 e005458:	e5813000 	str	r3, [r1]
 e00545c:	ca000009 	bgt	e005488 <__b2d+0x5c>
 e005460:	e1570006 	cmp	r7, r6
 e005464:	e260e00b 	rsb	lr, r0, #11
 e005468:	23a01000 	movcs	r1, #0
 e00546c:	e2800015 	add	r0, r0, #21
 e005470:	e18c3e35 	orr	r3, ip, r5, lsr lr
 e005474:	35141008 	ldrcc	r1, [r4, #-8]
 e005478:	e1a01e31 	lsr	r1, r1, lr
 e00547c:	e1812015 	orr	r2, r1, r5, lsl r0
 e005480:	ec432b10 	vmov	d0, r2, r3
 e005484:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e005488:	e1570006 	cmp	r7, r6
 e00548c:	32446008 	subcc	r6, r4, #8
 e005490:	23a01000 	movcs	r1, #0
 e005494:	35141008 	ldrcc	r1, [r4, #-8]
 e005498:	e250000b 	subs	r0, r0, #11
 e00549c:	0a00000a 	beq	e0054cc <__b2d+0xa0>
 e0054a0:	e1560007 	cmp	r6, r7
 e0054a4:	e260e020 	rsb	lr, r0, #32
 e0054a8:	93a0c000 	movls	ip, #0
 e0054ac:	e1a03e31 	lsr	r3, r1, lr
 e0054b0:	8516c004 	ldrhi	ip, [r6, #-4]
 e0054b4:	e1835015 	orr	r5, r3, r5, lsl r0
 e0054b8:	e38535ff 	orr	r3, r5, #1069547520	; 0x3fc00000
 e0054bc:	e3833603 	orr	r3, r3, #3145728	; 0x300000
 e0054c0:	e1a0ce3c 	lsr	ip, ip, lr
 e0054c4:	e18c2011 	orr	r2, ip, r1, lsl r0
 e0054c8:	eaffffec 	b	e005480 <__b2d+0x54>
 e0054cc:	e185300c 	orr	r3, r5, ip
 e0054d0:	e1a02001 	mov	r2, r1
 e0054d4:	eaffffe9 	b	e005480 <__b2d+0x54>
 e0054d8:	3ff00000 	.word	0x3ff00000

0e0054dc <__d2b>:
 e0054dc:	e92d43f7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
 e0054e0:	e1a09001 	mov	r9, r1
 e0054e4:	e3a01001 	mov	r1, #1
 e0054e8:	ec576b10 	vmov	r6, r7, d0
 e0054ec:	e1a08002 	mov	r8, r2
 e0054f0:	ebfffd1c 	bl	e004968 <_Balloc>
 e0054f4:	e2504000 	subs	r4, r0, #0
 e0054f8:	1a000004 	bne	e005510 <__d2b+0x34>
 e0054fc:	e59f30e0 	ldr	r3, [pc, #224]	; e0055e4 <__d2b+0x108>
 e005500:	e1a02004 	mov	r2, r4
 e005504:	e59f00dc 	ldr	r0, [pc, #220]	; e0055e8 <__d2b+0x10c>
 e005508:	e300130a 	movw	r1, #778	; 0x30a
 e00550c:	ebffebfe 	bl	e00050c <__assert_func>
 e005510:	e7ea5a57 	ubfx	r5, r7, #20, #11
 e005514:	e7f33057 	ubfx	r3, r7, #0, #20
 e005518:	e3550000 	cmp	r5, #0
 e00551c:	13833601 	orrne	r3, r3, #1048576	; 0x100000
 e005520:	e3560000 	cmp	r6, #0
 e005524:	e58d3004 	str	r3, [sp, #4]
 e005528:	0a00001c 	beq	e0055a0 <__d2b+0xc4>
 e00552c:	e1a0000d 	mov	r0, sp
 e005530:	e58d6000 	str	r6, [sp]
 e005534:	ebfffdec 	bl	e004cec <__lo0bits>
 e005538:	e3500000 	cmp	r0, #0
 e00553c:	e59d3000 	ldr	r3, [sp]
 e005540:	12601020 	rsbne	r1, r0, #32
 e005544:	05843014 	streq	r3, [r4, #20]
 e005548:	159d2004 	ldrne	r2, [sp, #4]
 e00554c:	11833112 	orrne	r3, r3, r2, lsl r1
 e005550:	15843014 	strne	r3, [r4, #20]
 e005554:	11a02032 	lsrne	r2, r2, r0
 e005558:	158d2004 	strne	r2, [sp, #4]
 e00555c:	e59d3004 	ldr	r3, [sp, #4]
 e005560:	e5843018 	str	r3, [r4, #24]
 e005564:	e3530000 	cmp	r3, #0
 e005568:	13a01002 	movne	r1, #2
 e00556c:	03a01001 	moveq	r1, #1
 e005570:	e5841010 	str	r1, [r4, #16]
 e005574:	e3550000 	cmp	r5, #0
 e005578:	0a000010 	beq	e0055c0 <__d2b+0xe4>
 e00557c:	e2455e43 	sub	r5, r5, #1072	; 0x430
 e005580:	e2455003 	sub	r5, r5, #3
 e005584:	e0855000 	add	r5, r5, r0
 e005588:	e2600035 	rsb	r0, r0, #53	; 0x35
 e00558c:	e5895000 	str	r5, [r9]
 e005590:	e5880000 	str	r0, [r8]
 e005594:	e1a00004 	mov	r0, r4
 e005598:	e28dd00c 	add	sp, sp, #12
 e00559c:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
 e0055a0:	e28d0004 	add	r0, sp, #4
 e0055a4:	ebfffdd0 	bl	e004cec <__lo0bits>
 e0055a8:	e59d3004 	ldr	r3, [sp, #4]
 e0055ac:	e3a01001 	mov	r1, #1
 e0055b0:	e2800020 	add	r0, r0, #32
 e0055b4:	e5843014 	str	r3, [r4, #20]
 e0055b8:	e5841010 	str	r1, [r4, #16]
 e0055bc:	eaffffec 	b	e005574 <__d2b+0x98>
 e0055c0:	e0843101 	add	r3, r4, r1, lsl #2
 e0055c4:	e2400e43 	sub	r0, r0, #1072	; 0x430
 e0055c8:	e2400002 	sub	r0, r0, #2
 e0055cc:	e5890000 	str	r0, [r9]
 e0055d0:	e5930010 	ldr	r0, [r3, #16]
 e0055d4:	ebfffdae 	bl	e004c94 <__hi0bits>
 e0055d8:	e0601281 	rsb	r1, r0, r1, lsl #5
 e0055dc:	e5881000 	str	r1, [r8]
 e0055e0:	eaffffeb 	b	e005594 <__d2b+0xb8>
 e0055e4:	0e015523 	.word	0x0e015523
 e0055e8:	0e01553e 	.word	0x0e01553e

0e0055ec <__ratio>:
 e0055ec:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e0055f0:	e1a09000 	mov	r9, r0
 e0055f4:	e1a08001 	mov	r8, r1
 e0055f8:	e1a0100d 	mov	r1, sp
 e0055fc:	ebffff8a 	bl	e00542c <__b2d>
 e005600:	e28d1004 	add	r1, sp, #4
 e005604:	e1a00008 	mov	r0, r8
 e005608:	ec554b10 	vmov	r4, r5, d0
 e00560c:	ee10aa10 	vmov	sl, s0
 e005610:	ebffff85 	bl	e00542c <__b2d>
 e005614:	e5993010 	ldr	r3, [r9, #16]
 e005618:	ec576b10 	vmov	r6, r7, d0
 e00561c:	e5982010 	ldr	r2, [r8, #16]
 e005620:	ee100a10 	vmov	r0, s0
 e005624:	e0432002 	sub	r2, r3, r2
 e005628:	e89d1008 	ldm	sp, {r3, ip}
 e00562c:	e043300c 	sub	r3, r3, ip
 e005630:	e0833282 	add	r3, r3, r2, lsl #5
 e005634:	e3530000 	cmp	r3, #0
 e005638:	d0633603 	rsble	r3, r3, r3, lsl #12
 e00563c:	c1a02005 	movgt	r2, r5
 e005640:	d1a02007 	movle	r2, r7
 e005644:	c1a01007 	movgt	r1, r7
 e005648:	c082ba03 	addgt	fp, r2, r3, lsl #20
 e00564c:	d1a0b005 	movle	fp, r5
 e005650:	d0821a03 	addle	r1, r2, r3, lsl #20
 e005654:	ec4bab30 	vmov	d16, sl, fp
 e005658:	ec410b31 	vmov	d17, r0, r1
 e00565c:	ee800ba1 	vdiv.f64	d0, d16, d17
 e005660:	e28dd00c 	add	sp, sp, #12
 e005664:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

0e005668 <_mprec_log10>:
 e005668:	e3500017 	cmp	r0, #23
 e00566c:	ceb70b00 	vmovgt.f64	d0, #112	; 0x3f800000  1.0
 e005670:	cef20b04 	vmovgt.f64	d16, #36	; 0x41200000  10.0
 e005674:	ca000003 	bgt	e005688 <_mprec_log10+0x20>
 e005678:	e59f3018 	ldr	r3, [pc, #24]	; e005698 <_mprec_log10+0x30>
 e00567c:	e0830180 	add	r0, r3, r0, lsl #3
 e005680:	ed900b04 	vldr	d0, [r0, #16]
 e005684:	e12fff1e 	bx	lr
 e005688:	e2500001 	subs	r0, r0, #1
 e00568c:	ee200b20 	vmul.f64	d0, d0, d16
 e005690:	1afffffc 	bne	e005688 <_mprec_log10+0x20>
 e005694:	e12fff1e 	bx	lr
 e005698:	0e013b60 	.word	0x0e013b60

0e00569c <__copybits>:
 e00569c:	e2411001 	sub	r1, r1, #1
 e0056a0:	e592c010 	ldr	ip, [r2, #16]
 e0056a4:	e2823014 	add	r3, r2, #20
 e0056a8:	e92d4010 	push	{r4, lr}
 e0056ac:	e1a012c1 	asr	r1, r1, #5
 e0056b0:	e2811001 	add	r1, r1, #1
 e0056b4:	e083c10c 	add	ip, r3, ip, lsl #2
 e0056b8:	e240e004 	sub	lr, r0, #4
 e0056bc:	e0801101 	add	r1, r0, r1, lsl #2
 e0056c0:	e153000c 	cmp	r3, ip
 e0056c4:	3a00000b 	bcc	e0056f8 <__copybits+0x5c>
 e0056c8:	e04c3002 	sub	r3, ip, r2
 e0056cc:	e2822011 	add	r2, r2, #17
 e0056d0:	e2433011 	sub	r3, r3, #17
 e0056d4:	e152000c 	cmp	r2, ip
 e0056d8:	e3c33003 	bic	r3, r3, #3
 e0056dc:	83a03000 	movhi	r3, #0
 e0056e0:	e0800003 	add	r0, r0, r3
 e0056e4:	e3a03000 	mov	r3, #0
 e0056e8:	e1500001 	cmp	r0, r1
 e0056ec:	28bd8010 	popcs	{r4, pc}
 e0056f0:	e4803004 	str	r3, [r0], #4
 e0056f4:	eafffffb 	b	e0056e8 <__copybits+0x4c>
 e0056f8:	e4934004 	ldr	r4, [r3], #4
 e0056fc:	e5ae4004 	str	r4, [lr, #4]!
 e005700:	eaffffee 	b	e0056c0 <__copybits+0x24>

0e005704 <__any_on>:
 e005704:	e2802014 	add	r2, r0, #20
 e005708:	e5900010 	ldr	r0, [r0, #16]
 e00570c:	e1a032c1 	asr	r3, r1, #5
 e005710:	e1500003 	cmp	r0, r3
 e005714:	ba00000b 	blt	e005748 <__any_on+0x44>
 e005718:	da000005 	ble	e005734 <__any_on+0x30>
 e00571c:	e211101f 	ands	r1, r1, #31
 e005720:	0a000003 	beq	e005734 <__any_on+0x30>
 e005724:	e7920103 	ldr	r0, [r2, r3, lsl #2]
 e005728:	e1a0c130 	lsr	ip, r0, r1
 e00572c:	e150011c 	cmp	r0, ip, lsl r1
 e005730:	1a000009 	bne	e00575c <__any_on+0x58>
 e005734:	e0823103 	add	r3, r2, r3, lsl #2
 e005738:	e1530002 	cmp	r3, r2
 e00573c:	8a000003 	bhi	e005750 <__any_on+0x4c>
 e005740:	e3a00000 	mov	r0, #0
 e005744:	e12fff1e 	bx	lr
 e005748:	e1a03000 	mov	r3, r0
 e00574c:	eafffff8 	b	e005734 <__any_on+0x30>
 e005750:	e5331004 	ldr	r1, [r3, #-4]!
 e005754:	e3510000 	cmp	r1, #0
 e005758:	0afffff6 	beq	e005738 <__any_on+0x34>
 e00575c:	e3a00001 	mov	r0, #1
 e005760:	e12fff1e 	bx	lr

0e005764 <_read_r>:
 e005764:	e92d4070 	push	{r4, r5, r6, lr}
 e005768:	e1a04000 	mov	r4, r0
 e00576c:	e59f502c 	ldr	r5, [pc, #44]	; e0057a0 <_read_r+0x3c>
 e005770:	e1a00001 	mov	r0, r1
 e005774:	e1a01002 	mov	r1, r2
 e005778:	e3a02000 	mov	r2, #0
 e00577c:	e5852000 	str	r2, [r5]
 e005780:	e1a02003 	mov	r2, r3
 e005784:	eb000bb5 	bl	e008660 <_read>
 e005788:	e3700001 	cmn	r0, #1
 e00578c:	18bd8070 	popne	{r4, r5, r6, pc}
 e005790:	e5953000 	ldr	r3, [r5]
 e005794:	e3530000 	cmp	r3, #0
 e005798:	15843000 	strne	r3, [r4]
 e00579c:	e8bd8070 	pop	{r4, r5, r6, pc}
 e0057a0:	600a3160 	.word	0x600a3160
 e0057a4:	00000000 	.word	0x00000000

0e0057a8 <frexp>:
 e0057a8:	ee101a90 	vmov	r1, s1
 e0057ac:	e3a02000 	mov	r2, #0
 e0057b0:	e5802000 	str	r2, [r0]
 e0057b4:	e59f207c 	ldr	r2, [pc, #124]	; e005838 <frexp+0x90>
 e0057b8:	e3c13102 	bic	r3, r1, #-2147483648	; 0x80000000
 e0057bc:	e1530002 	cmp	r3, r2
 e0057c0:	c12fff1e 	bxgt	lr
 e0057c4:	ee102a10 	vmov	r2, s0
 e0057c8:	e1932002 	orrs	r2, r3, r2
 e0057cc:	012fff1e 	bxeq	lr
 e0057d0:	e59f2064 	ldr	r2, [pc, #100]	; e00583c <frexp+0x94>
 e0057d4:	e0022001 	and	r2, r2, r1
 e0057d8:	e3520000 	cmp	r2, #0
 e0057dc:	1a000005 	bne	e0057f8 <frexp+0x50>
 e0057e0:	eddf0b12 	vldr	d16, [pc, #72]	; e005830 <frexp+0x88>
 e0057e4:	e3e02035 	mvn	r2, #53	; 0x35
 e0057e8:	e5802000 	str	r2, [r0]
 e0057ec:	ee200b20 	vmul.f64	d0, d0, d16
 e0057f0:	ee101a90 	vmov	r1, s1
 e0057f4:	e3c13102 	bic	r3, r1, #-2147483648	; 0x80000000
 e0057f8:	e1a03a43 	asr	r3, r3, #20
 e0057fc:	e5902000 	ldr	r2, [r0]
 e005800:	e2433fff 	sub	r3, r3, #1020	; 0x3fc
 e005804:	e3c1147f 	bic	r1, r1, #2130706432	; 0x7f000000
 e005808:	e2433002 	sub	r3, r3, #2
 e00580c:	e3c1160f 	bic	r1, r1, #15728640	; 0xf00000
 e005810:	e0823003 	add	r3, r2, r3
 e005814:	e5803000 	str	r3, [r0]
 e005818:	ec532b10 	vmov	r2, r3, d0
 e00581c:	e38135ff 	orr	r3, r1, #1069547520	; 0x3fc00000
 e005820:	e3833602 	orr	r3, r3, #2097152	; 0x200000
 e005824:	ec432b10 	vmov	d0, r2, r3
 e005828:	e12fff1e 	bx	lr
 e00582c:	e320f000 	nop	{0}
 e005830:	00000000 	.word	0x00000000
 e005834:	43500000 	.word	0x43500000
 e005838:	7fefffff 	.word	0x7fefffff
 e00583c:	7ff00000 	.word	0x7ff00000

0e005840 <_init_signal_r>:
 e005840:	e92d4070 	push	{r4, r5, r6, lr}
 e005844:	e5905044 	ldr	r5, [r0, #68]	; 0x44
 e005848:	e3550000 	cmp	r5, #0
 e00584c:	1a00000a 	bne	e00587c <_init_signal_r+0x3c>
 e005850:	e1a04000 	mov	r4, r0
 e005854:	e3a01080 	mov	r1, #128	; 0x80
 e005858:	eb000a8e 	bl	e008298 <__wrap__malloc_r>
 e00585c:	e3500000 	cmp	r0, #0
 e005860:	e5840044 	str	r0, [r4, #68]	; 0x44
 e005864:	0a000006 	beq	e005884 <_init_signal_r+0x44>
 e005868:	e2403004 	sub	r3, r0, #4
 e00586c:	e280007c 	add	r0, r0, #124	; 0x7c
 e005870:	e5a35004 	str	r5, [r3, #4]!
 e005874:	e1530000 	cmp	r3, r0
 e005878:	1afffffc 	bne	e005870 <_init_signal_r+0x30>
 e00587c:	e3a00000 	mov	r0, #0
 e005880:	e8bd8070 	pop	{r4, r5, r6, pc}
 e005884:	e3e00000 	mvn	r0, #0
 e005888:	e8bd8070 	pop	{r4, r5, r6, pc}

0e00588c <_signal_r>:
 e00588c:	e351001f 	cmp	r1, #31
 e005890:	e92d4070 	push	{r4, r5, r6, lr}
 e005894:	83a03016 	movhi	r3, #22
 e005898:	e1a04000 	mov	r4, r0
 e00589c:	85803000 	strhi	r3, [r0]
 e0058a0:	8a00000b 	bhi	e0058d4 <_signal_r+0x48>
 e0058a4:	e5903044 	ldr	r3, [r0, #68]	; 0x44
 e0058a8:	e1a05001 	mov	r5, r1
 e0058ac:	e1a06002 	mov	r6, r2
 e0058b0:	e3530000 	cmp	r3, #0
 e0058b4:	0a000003 	beq	e0058c8 <_signal_r+0x3c>
 e0058b8:	e5943044 	ldr	r3, [r4, #68]	; 0x44
 e0058bc:	e7930105 	ldr	r0, [r3, r5, lsl #2]
 e0058c0:	e7836105 	str	r6, [r3, r5, lsl #2]
 e0058c4:	e8bd8070 	pop	{r4, r5, r6, pc}
 e0058c8:	ebffffdc 	bl	e005840 <_init_signal_r>
 e0058cc:	e3500000 	cmp	r0, #0
 e0058d0:	0afffff8 	beq	e0058b8 <_signal_r+0x2c>
 e0058d4:	e3e00000 	mvn	r0, #0
 e0058d8:	e8bd8070 	pop	{r4, r5, r6, pc}

0e0058dc <_raise_r>:
 e0058dc:	e92d4070 	push	{r4, r5, r6, lr}
 e0058e0:	e351001f 	cmp	r1, #31
 e0058e4:	e1a04000 	mov	r4, r0
 e0058e8:	9a000003 	bls	e0058fc <_raise_r+0x20>
 e0058ec:	e3a03016 	mov	r3, #22
 e0058f0:	e5803000 	str	r3, [r0]
 e0058f4:	e3e00000 	mvn	r0, #0
 e0058f8:	e8bd8070 	pop	{r4, r5, r6, pc}
 e0058fc:	e5902044 	ldr	r2, [r0, #68]	; 0x44
 e005900:	e1a05001 	mov	r5, r1
 e005904:	e3520000 	cmp	r2, #0
 e005908:	0a000002 	beq	e005918 <_raise_r+0x3c>
 e00590c:	e7923101 	ldr	r3, [r2, r1, lsl #2]
 e005910:	e3530000 	cmp	r3, #0
 e005914:	1a000006 	bne	e005934 <_raise_r+0x58>
 e005918:	e1a00004 	mov	r0, r4
 e00591c:	eb000058 	bl	e005a84 <_getpid_r>
 e005920:	e1a02005 	mov	r2, r5
 e005924:	e1a01000 	mov	r1, r0
 e005928:	e1a00004 	mov	r0, r4
 e00592c:	e8bd4070 	pop	{r4, r5, r6, lr}
 e005930:	ea000044 	b	e005a48 <_kill_r>
 e005934:	e3530001 	cmp	r3, #1
 e005938:	0a000009 	beq	e005964 <_raise_r+0x88>
 e00593c:	e3730001 	cmn	r3, #1
 e005940:	1a000003 	bne	e005954 <_raise_r+0x78>
 e005944:	e3a03016 	mov	r3, #22
 e005948:	e5803000 	str	r3, [r0]
 e00594c:	e3a00001 	mov	r0, #1
 e005950:	e8bd8070 	pop	{r4, r5, r6, pc}
 e005954:	e3a04000 	mov	r4, #0
 e005958:	e1a00001 	mov	r0, r1
 e00595c:	e7824101 	str	r4, [r2, r1, lsl #2]
 e005960:	e12fff33 	blx	r3
 e005964:	e3a00000 	mov	r0, #0
 e005968:	e8bd8070 	pop	{r4, r5, r6, pc}

0e00596c <__sigtramp_r>:
 e00596c:	e351001f 	cmp	r1, #31
 e005970:	9a000001 	bls	e00597c <__sigtramp_r+0x10>
 e005974:	e3e00000 	mvn	r0, #0
 e005978:	e12fff1e 	bx	lr
 e00597c:	e5903044 	ldr	r3, [r0, #68]	; 0x44
 e005980:	e92d4070 	push	{r4, r5, r6, lr}
 e005984:	e1a04000 	mov	r4, r0
 e005988:	e1a05001 	mov	r5, r1
 e00598c:	e3530000 	cmp	r3, #0
 e005990:	0a000005 	beq	e0059ac <__sigtramp_r+0x40>
 e005994:	e5942044 	ldr	r2, [r4, #68]	; 0x44
 e005998:	e7923105 	ldr	r3, [r2, r5, lsl #2]
 e00599c:	e3530000 	cmp	r3, #0
 e0059a0:	1a000006 	bne	e0059c0 <__sigtramp_r+0x54>
 e0059a4:	e3a00001 	mov	r0, #1
 e0059a8:	e8bd8070 	pop	{r4, r5, r6, pc}
 e0059ac:	ebffffa3 	bl	e005840 <_init_signal_r>
 e0059b0:	e3500000 	cmp	r0, #0
 e0059b4:	0afffff6 	beq	e005994 <__sigtramp_r+0x28>
 e0059b8:	e3e00000 	mvn	r0, #0
 e0059bc:	e8bd8070 	pop	{r4, r5, r6, pc}
 e0059c0:	e3730001 	cmn	r3, #1
 e0059c4:	0a000007 	beq	e0059e8 <__sigtramp_r+0x7c>
 e0059c8:	e3530001 	cmp	r3, #1
 e0059cc:	0a000007 	beq	e0059f0 <__sigtramp_r+0x84>
 e0059d0:	e3a04000 	mov	r4, #0
 e0059d4:	e1a00005 	mov	r0, r5
 e0059d8:	e7824105 	str	r4, [r2, r5, lsl #2]
 e0059dc:	e12fff33 	blx	r3
 e0059e0:	e1a00004 	mov	r0, r4
 e0059e4:	e8bd8070 	pop	{r4, r5, r6, pc}
 e0059e8:	e3a00002 	mov	r0, #2
 e0059ec:	e8bd8070 	pop	{r4, r5, r6, pc}
 e0059f0:	e3a00003 	mov	r0, #3
 e0059f4:	e8bd8070 	pop	{r4, r5, r6, pc}

0e0059f8 <raise>:
 e0059f8:	e59f3008 	ldr	r3, [pc, #8]	; e005a08 <raise+0x10>
 e0059fc:	e1a01000 	mov	r1, r0
 e005a00:	e5930000 	ldr	r0, [r3]
 e005a04:	eaffffb4 	b	e0058dc <_raise_r>
 e005a08:	60095000 	.word	0x60095000

0e005a0c <signal>:
 e005a0c:	e59f300c 	ldr	r3, [pc, #12]	; e005a20 <signal+0x14>
 e005a10:	e1a02001 	mov	r2, r1
 e005a14:	e1a01000 	mov	r1, r0
 e005a18:	e5930000 	ldr	r0, [r3]
 e005a1c:	eaffff9a 	b	e00588c <_signal_r>
 e005a20:	60095000 	.word	0x60095000

0e005a24 <_init_signal>:
 e005a24:	e59f3004 	ldr	r3, [pc, #4]	; e005a30 <_init_signal+0xc>
 e005a28:	e5930000 	ldr	r0, [r3]
 e005a2c:	eaffff83 	b	e005840 <_init_signal_r>
 e005a30:	60095000 	.word	0x60095000

0e005a34 <__sigtramp>:
 e005a34:	e59f3008 	ldr	r3, [pc, #8]	; e005a44 <__sigtramp+0x10>
 e005a38:	e1a01000 	mov	r1, r0
 e005a3c:	e5930000 	ldr	r0, [r3]
 e005a40:	eaffffc9 	b	e00596c <__sigtramp_r>
 e005a44:	60095000 	.word	0x60095000

0e005a48 <_kill_r>:
 e005a48:	e92d4070 	push	{r4, r5, r6, lr}
 e005a4c:	e1a04000 	mov	r4, r0
 e005a50:	e59f5028 	ldr	r5, [pc, #40]	; e005a80 <_kill_r+0x38>
 e005a54:	e1a00001 	mov	r0, r1
 e005a58:	e1a01002 	mov	r1, r2
 e005a5c:	e3a03000 	mov	r3, #0
 e005a60:	e5853000 	str	r3, [r5]
 e005a64:	eb000b24 	bl	e0086fc <_kill>
 e005a68:	e3700001 	cmn	r0, #1
 e005a6c:	18bd8070 	popne	{r4, r5, r6, pc}
 e005a70:	e5953000 	ldr	r3, [r5]
 e005a74:	e3530000 	cmp	r3, #0
 e005a78:	15843000 	strne	r3, [r4]
 e005a7c:	e8bd8070 	pop	{r4, r5, r6, pc}
 e005a80:	600a3160 	.word	0x600a3160

0e005a84 <_getpid_r>:
 e005a84:	ea000b1a 	b	e0086f4 <_getpid>

0e005a88 <_vfprintf_r>:
 e005a88:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e005a8c:	e1a07000 	mov	r7, r0
 e005a90:	e1a05001 	mov	r5, r1
 e005a94:	ed2d8b04 	vpush	{d8-d9}
 e005a98:	e24ddf4b 	sub	sp, sp, #300	; 0x12c
 e005a9c:	e1a0a002 	mov	sl, r2
 e005aa0:	e1a04003 	mov	r4, r3
 e005aa4:	e1a08003 	mov	r8, r3
 e005aa8:	ebfffaf0 	bl	e004670 <_localeconv_r>
 e005aac:	e5903000 	ldr	r3, [r0]
 e005ab0:	e58d3040 	str	r3, [sp, #64]	; 0x40
 e005ab4:	e1a00003 	mov	r0, r3
 e005ab8:	faffefc0 	blx	e0019c0 <strlen>
 e005abc:	e3570000 	cmp	r7, #0
 e005ac0:	e58d0028 	str	r0, [sp, #40]	; 0x28
 e005ac4:	0a000004 	beq	e005adc <_vfprintf_r+0x54>
 e005ac8:	e5973018 	ldr	r3, [r7, #24]
 e005acc:	e3530000 	cmp	r3, #0
 e005ad0:	1a000001 	bne	e005adc <_vfprintf_r+0x54>
 e005ad4:	e1a00007 	mov	r0, r7
 e005ad8:	ebffebc8 	bl	e000a00 <__sinit>
 e005adc:	e5953064 	ldr	r3, [r5, #100]	; 0x64
 e005ae0:	e3130001 	tst	r3, #1
 e005ae4:	1a000004 	bne	e005afc <_vfprintf_r+0x74>
 e005ae8:	e1d530bc 	ldrh	r3, [r5, #12]
 e005aec:	e3130c02 	tst	r3, #512	; 0x200
 e005af0:	1a000001 	bne	e005afc <_vfprintf_r+0x74>
 e005af4:	e5950058 	ldr	r0, [r5, #88]	; 0x58
 e005af8:	ebffeca6 	bl	e000d98 <__retarget_lock_acquire_recursive>
 e005afc:	e1d530fc 	ldrsh	r3, [r5, #12]
 e005b00:	e3130a02 	tst	r3, #8192	; 0x2000
 e005b04:	1a000004 	bne	e005b1c <_vfprintf_r+0x94>
 e005b08:	e3833a02 	orr	r3, r3, #8192	; 0x2000
 e005b0c:	e1c530bc 	strh	r3, [r5, #12]
 e005b10:	e5953064 	ldr	r3, [r5, #100]	; 0x64
 e005b14:	e3c33a02 	bic	r3, r3, #8192	; 0x2000
 e005b18:	e5853064 	str	r3, [r5, #100]	; 0x64
 e005b1c:	e1d530bc 	ldrh	r3, [r5, #12]
 e005b20:	e3130008 	tst	r3, #8
 e005b24:	0a000002 	beq	e005b34 <_vfprintf_r+0xac>
 e005b28:	e5953010 	ldr	r3, [r5, #16]
 e005b2c:	e3530000 	cmp	r3, #0
 e005b30:	1a000013 	bne	e005b84 <_vfprintf_r+0xfc>
 e005b34:	e1a01005 	mov	r1, r5
 e005b38:	e1a00007 	mov	r0, r7
 e005b3c:	ebfff431 	bl	e002c08 <__swsetup_r>
 e005b40:	e3500000 	cmp	r0, #0
 e005b44:	0a00000e 	beq	e005b84 <_vfprintf_r+0xfc>
 e005b48:	e5953064 	ldr	r3, [r5, #100]	; 0x64
 e005b4c:	e3130001 	tst	r3, #1
 e005b50:	0a000005 	beq	e005b6c <_vfprintf_r+0xe4>
 e005b54:	e3e03000 	mvn	r3, #0
 e005b58:	e58d302c 	str	r3, [sp, #44]	; 0x2c
 e005b5c:	e59d002c 	ldr	r0, [sp, #44]	; 0x2c
 e005b60:	e28ddf4b 	add	sp, sp, #300	; 0x12c
 e005b64:	ecbd8b04 	vpop	{d8-d9}
 e005b68:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e005b6c:	e1d530bc 	ldrh	r3, [r5, #12]
 e005b70:	e3130c02 	tst	r3, #512	; 0x200
 e005b74:	1afffff6 	bne	e005b54 <_vfprintf_r+0xcc>
 e005b78:	e5950058 	ldr	r0, [r5, #88]	; 0x58
 e005b7c:	ebffec8b 	bl	e000db0 <__retarget_lock_release_recursive>
 e005b80:	eafffff3 	b	e005b54 <_vfprintf_r+0xcc>
 e005b84:	e1d530bc 	ldrh	r3, [r5, #12]
 e005b88:	e203201a 	and	r2, r3, #26
 e005b8c:	e352000a 	cmp	r2, #10
 e005b90:	1a000011 	bne	e005bdc <_vfprintf_r+0x154>
 e005b94:	e1d520fe 	ldrsh	r2, [r5, #14]
 e005b98:	e3520000 	cmp	r2, #0
 e005b9c:	ba00000e 	blt	e005bdc <_vfprintf_r+0x154>
 e005ba0:	e5952064 	ldr	r2, [r5, #100]	; 0x64
 e005ba4:	e3120001 	tst	r2, #1
 e005ba8:	1a000003 	bne	e005bbc <_vfprintf_r+0x134>
 e005bac:	e3130c02 	tst	r3, #512	; 0x200
 e005bb0:	1a000001 	bne	e005bbc <_vfprintf_r+0x134>
 e005bb4:	e5950058 	ldr	r0, [r5, #88]	; 0x58
 e005bb8:	ebffec7c 	bl	e000db0 <__retarget_lock_release_recursive>
 e005bbc:	e1a03004 	mov	r3, r4
 e005bc0:	e1a0200a 	mov	r2, sl
 e005bc4:	e1a01005 	mov	r1, r5
 e005bc8:	e1a00007 	mov	r0, r7
 e005bcc:	e28ddf4b 	add	sp, sp, #300	; 0x12c
 e005bd0:	ecbd8b04 	vpop	{d8-d9}
 e005bd4:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e005bd8:	ea000775 	b	e0079b4 <__sbprintf>
 e005bdc:	f2808e30 	vmov.i64	d8, #0x0000000000000000
 e005be0:	e3a03000 	mov	r3, #0
 e005be4:	e28d4084 	add	r4, sp, #132	; 0x84
 e005be8:	e58d3080 	str	r3, [sp, #128]	; 0x80
 e005bec:	e58d4078 	str	r4, [sp, #120]	; 0x78
 e005bf0:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e005bf4:	e58d300c 	str	r3, [sp, #12]
 e005bf8:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 e005bfc:	e58d3048 	str	r3, [sp, #72]	; 0x48
 e005c00:	e58d3020 	str	r3, [sp, #32]
 e005c04:	e58d3038 	str	r3, [sp, #56]	; 0x38
 e005c08:	e58d3044 	str	r3, [sp, #68]	; 0x44
 e005c0c:	e58d302c 	str	r3, [sp, #44]	; 0x2c
 e005c10:	e1a0200a 	mov	r2, sl
 e005c14:	e5d23000 	ldrb	r3, [r2]
 e005c18:	e1a06002 	mov	r6, r2
 e005c1c:	e2822001 	add	r2, r2, #1
 e005c20:	e3530000 	cmp	r3, #0
 e005c24:	13530025 	cmpne	r3, #37	; 0x25
 e005c28:	1afffff9 	bne	e005c14 <_vfprintf_r+0x18c>
 e005c2c:	e056900a 	subs	r9, r6, sl
 e005c30:	0a000014 	beq	e005c88 <_vfprintf_r+0x200>
 e005c34:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
 e005c38:	e584a000 	str	sl, [r4]
 e005c3c:	e0833009 	add	r3, r3, r9
 e005c40:	e58d3080 	str	r3, [sp, #128]	; 0x80
 e005c44:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e005c48:	e5849004 	str	r9, [r4, #4]
 e005c4c:	e2833001 	add	r3, r3, #1
 e005c50:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e005c54:	e3530007 	cmp	r3, #7
 e005c58:	d2844008 	addle	r4, r4, #8
 e005c5c:	da000006 	ble	e005c7c <_vfprintf_r+0x1f4>
 e005c60:	e28d2078 	add	r2, sp, #120	; 0x78
 e005c64:	e1a01005 	mov	r1, r5
 e005c68:	e1a00007 	mov	r0, r7
 e005c6c:	ebffefb4 	bl	e001b44 <__sprint_r>
 e005c70:	e3500000 	cmp	r0, #0
 e005c74:	1a00015f 	bne	e0061f8 <_vfprintf_r+0x770>
 e005c78:	e28d4084 	add	r4, sp, #132	; 0x84
 e005c7c:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
 e005c80:	e0833009 	add	r3, r3, r9
 e005c84:	e58d302c 	str	r3, [sp, #44]	; 0x2c
 e005c88:	e5d63000 	ldrb	r3, [r6]
 e005c8c:	e3530000 	cmp	r3, #0
 e005c90:	0a0006e9 	beq	e00783c <_vfprintf_r+0x1db4>
 e005c94:	e3a02000 	mov	r2, #0
 e005c98:	e2863001 	add	r3, r6, #1
 e005c9c:	e1a0b002 	mov	fp, r2
 e005ca0:	e3e06000 	mvn	r6, #0
 e005ca4:	e3a0900a 	mov	r9, #10
 e005ca8:	e1a01006 	mov	r1, r6
 e005cac:	e5cd205b 	strb	r2, [sp, #91]	; 0x5b
 e005cb0:	e58d2030 	str	r2, [sp, #48]	; 0x30
 e005cb4:	e4d32001 	ldrb	r2, [r3], #1
 e005cb8:	e58d2010 	str	r2, [sp, #16]
 e005cbc:	e58d3024 	str	r3, [sp, #36]	; 0x24
 e005cc0:	e59d3010 	ldr	r3, [sp, #16]
 e005cc4:	e2433020 	sub	r3, r3, #32
 e005cc8:	e353005a 	cmp	r3, #90	; 0x5a
 e005ccc:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
 e005cd0:	ea0003ff 	b	e006cd4 <_vfprintf_r+0x124c>
 e005cd4:	0e005e98 	.word	0x0e005e98
 e005cd8:	0e006cd4 	.word	0x0e006cd4
 e005cdc:	0e006cd4 	.word	0x0e006cd4
 e005ce0:	0e005eb0 	.word	0x0e005eb0
 e005ce4:	0e006cd4 	.word	0x0e006cd4
 e005ce8:	0e006cd4 	.word	0x0e006cd4
 e005cec:	0e006cd4 	.word	0x0e006cd4
 e005cf0:	0e005e40 	.word	0x0e005e40
 e005cf4:	0e006cd4 	.word	0x0e006cd4
 e005cf8:	0e006cd4 	.word	0x0e006cd4
 e005cfc:	0e005eb8 	.word	0x0e005eb8
 e005d00:	0e005ed8 	.word	0x0e005ed8
 e005d04:	0e006cd4 	.word	0x0e006cd4
 e005d08:	0e005ed0 	.word	0x0e005ed0
 e005d0c:	0e005ee0 	.word	0x0e005ee0
 e005d10:	0e006cd4 	.word	0x0e006cd4
 e005d14:	0e005f30 	.word	0x0e005f30
 e005d18:	0e005f38 	.word	0x0e005f38
 e005d1c:	0e005f38 	.word	0x0e005f38
 e005d20:	0e005f38 	.word	0x0e005f38
 e005d24:	0e005f38 	.word	0x0e005f38
 e005d28:	0e005f38 	.word	0x0e005f38
 e005d2c:	0e005f38 	.word	0x0e005f38
 e005d30:	0e005f38 	.word	0x0e005f38
 e005d34:	0e005f38 	.word	0x0e005f38
 e005d38:	0e005f38 	.word	0x0e005f38
 e005d3c:	0e006cd4 	.word	0x0e006cd4
 e005d40:	0e006cd4 	.word	0x0e006cd4
 e005d44:	0e006cd4 	.word	0x0e006cd4
 e005d48:	0e006cd4 	.word	0x0e006cd4
 e005d4c:	0e006cd4 	.word	0x0e006cd4
 e005d50:	0e006cd4 	.word	0x0e006cd4
 e005d54:	0e006cd4 	.word	0x0e006cd4
 e005d58:	0e0060fc 	.word	0x0e0060fc
 e005d5c:	0e006cd4 	.word	0x0e006cd4
 e005d60:	0e005fc4 	.word	0x0e005fc4
 e005d64:	0e006000 	.word	0x0e006000
 e005d68:	0e0060fc 	.word	0x0e0060fc
 e005d6c:	0e0060fc 	.word	0x0e0060fc
 e005d70:	0e0060fc 	.word	0x0e0060fc
 e005d74:	0e006cd4 	.word	0x0e006cd4
 e005d78:	0e006cd4 	.word	0x0e006cd4
 e005d7c:	0e006cd4 	.word	0x0e006cd4
 e005d80:	0e006cd4 	.word	0x0e006cd4
 e005d84:	0e005f70 	.word	0x0e005f70
 e005d88:	0e006cd4 	.word	0x0e006cd4
 e005d8c:	0e006cd4 	.word	0x0e006cd4
 e005d90:	0e006a48 	.word	0x0e006a48
 e005d94:	0e006cd4 	.word	0x0e006cd4
 e005d98:	0e006cd4 	.word	0x0e006cd4
 e005d9c:	0e006cd4 	.word	0x0e006cd4
 e005da0:	0e006aec 	.word	0x0e006aec
 e005da4:	0e006cd4 	.word	0x0e006cd4
 e005da8:	0e006b5c 	.word	0x0e006b5c
 e005dac:	0e006cd4 	.word	0x0e006cd4
 e005db0:	0e006cd4 	.word	0x0e006cd4
 e005db4:	0e006bc0 	.word	0x0e006bc0
 e005db8:	0e006cd4 	.word	0x0e006cd4
 e005dbc:	0e006cd4 	.word	0x0e006cd4
 e005dc0:	0e006cd4 	.word	0x0e006cd4
 e005dc4:	0e006cd4 	.word	0x0e006cd4
 e005dc8:	0e006cd4 	.word	0x0e006cd4
 e005dcc:	0e006cd4 	.word	0x0e006cd4
 e005dd0:	0e006cd4 	.word	0x0e006cd4
 e005dd4:	0e006cd4 	.word	0x0e006cd4
 e005dd8:	0e0060fc 	.word	0x0e0060fc
 e005ddc:	0e006cd4 	.word	0x0e006cd4
 e005de0:	0e005fc4 	.word	0x0e005fc4
 e005de4:	0e006004 	.word	0x0e006004
 e005de8:	0e0060fc 	.word	0x0e0060fc
 e005dec:	0e0060fc 	.word	0x0e0060fc
 e005df0:	0e0060fc 	.word	0x0e0060fc
 e005df4:	0e005f78 	.word	0x0e005f78
 e005df8:	0e006004 	.word	0x0e006004
 e005dfc:	0e005fbc 	.word	0x0e005fbc
 e005e00:	0e006cd4 	.word	0x0e006cd4
 e005e04:	0e005f9c 	.word	0x0e005f9c
 e005e08:	0e006cd4 	.word	0x0e006cd4
 e005e0c:	0e0069d4 	.word	0x0e0069d4
 e005e10:	0e006a4c 	.word	0x0e006a4c
 e005e14:	0e006ab8 	.word	0x0e006ab8
 e005e18:	0e005fbc 	.word	0x0e005fbc
 e005e1c:	0e006cd4 	.word	0x0e006cd4
 e005e20:	0e006aec 	.word	0x0e006aec
 e005e24:	0e005e90 	.word	0x0e005e90
 e005e28:	0e006b60 	.word	0x0e006b60
 e005e2c:	0e006cd4 	.word	0x0e006cd4
 e005e30:	0e006cd4 	.word	0x0e006cd4
 e005e34:	0e006c1c 	.word	0x0e006c1c
 e005e38:	0e006cd4 	.word	0x0e006cd4
 e005e3c:	0e005e90 	.word	0x0e005e90
 e005e40:	e1a00007 	mov	r0, r7
 e005e44:	ebfffa09 	bl	e004670 <_localeconv_r>
 e005e48:	e5903004 	ldr	r3, [r0, #4]
 e005e4c:	e58d3044 	str	r3, [sp, #68]	; 0x44
 e005e50:	e1a00003 	mov	r0, r3
 e005e54:	faffeed9 	blx	e0019c0 <strlen>
 e005e58:	e58d0038 	str	r0, [sp, #56]	; 0x38
 e005e5c:	e1a00007 	mov	r0, r7
 e005e60:	ebfffa02 	bl	e004670 <_localeconv_r>
 e005e64:	e5903008 	ldr	r3, [r0, #8]
 e005e68:	e58d3020 	str	r3, [sp, #32]
 e005e6c:	e3e01000 	mvn	r1, #0
 e005e70:	e59d3038 	ldr	r3, [sp, #56]	; 0x38
 e005e74:	e59d2020 	ldr	r2, [sp, #32]
 e005e78:	e3530000 	cmp	r3, #0
 e005e7c:	13520000 	cmpne	r2, #0
 e005e80:	0a000002 	beq	e005e90 <_vfprintf_r+0x408>
 e005e84:	e5d23000 	ldrb	r3, [r2]
 e005e88:	e3530000 	cmp	r3, #0
 e005e8c:	138bbb01 	orrne	fp, fp, #1024	; 0x400
 e005e90:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e005e94:	eaffff86 	b	e005cb4 <_vfprintf_r+0x22c>
 e005e98:	e5dd305b 	ldrb	r3, [sp, #91]	; 0x5b
 e005e9c:	e3530000 	cmp	r3, #0
 e005ea0:	03a03020 	moveq	r3, #32
 e005ea4:	1afffff9 	bne	e005e90 <_vfprintf_r+0x408>
 e005ea8:	e5cd305b 	strb	r3, [sp, #91]	; 0x5b
 e005eac:	eafffff7 	b	e005e90 <_vfprintf_r+0x408>
 e005eb0:	e38bb001 	orr	fp, fp, #1
 e005eb4:	eafffff5 	b	e005e90 <_vfprintf_r+0x408>
 e005eb8:	e4983004 	ldr	r3, [r8], #4
 e005ebc:	e58d3030 	str	r3, [sp, #48]	; 0x30
 e005ec0:	e3530000 	cmp	r3, #0
 e005ec4:	aafffff1 	bge	e005e90 <_vfprintf_r+0x408>
 e005ec8:	e2633000 	rsb	r3, r3, #0
 e005ecc:	e58d3030 	str	r3, [sp, #48]	; 0x30
 e005ed0:	e38bb004 	orr	fp, fp, #4
 e005ed4:	eaffffed 	b	e005e90 <_vfprintf_r+0x408>
 e005ed8:	e3a0302b 	mov	r3, #43	; 0x2b
 e005edc:	eafffff1 	b	e005ea8 <_vfprintf_r+0x420>
 e005ee0:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e005ee4:	e4d32001 	ldrb	r2, [r3], #1
 e005ee8:	e58d2010 	str	r2, [sp, #16]
 e005eec:	e352002a 	cmp	r2, #42	; 0x2a
 e005ef0:	1a00000c 	bne	e005f28 <_vfprintf_r+0x4a0>
 e005ef4:	e4986004 	ldr	r6, [r8], #4
 e005ef8:	e58d3024 	str	r3, [sp, #36]	; 0x24
 e005efc:	e1560001 	cmp	r6, r1
 e005f00:	b1a06001 	movlt	r6, r1
 e005f04:	eaffffe1 	b	e005e90 <_vfprintf_r+0x408>
 e005f08:	e0262699 	mla	r6, r9, r6, r2
 e005f0c:	e4d32001 	ldrb	r2, [r3], #1
 e005f10:	e58d2010 	str	r2, [sp, #16]
 e005f14:	e59d2010 	ldr	r2, [sp, #16]
 e005f18:	e2422030 	sub	r2, r2, #48	; 0x30
 e005f1c:	e3520009 	cmp	r2, #9
 e005f20:	9afffff8 	bls	e005f08 <_vfprintf_r+0x480>
 e005f24:	eaffff64 	b	e005cbc <_vfprintf_r+0x234>
 e005f28:	e3a06000 	mov	r6, #0
 e005f2c:	eafffff8 	b	e005f14 <_vfprintf_r+0x48c>
 e005f30:	e38bb080 	orr	fp, fp, #128	; 0x80
 e005f34:	eaffffd5 	b	e005e90 <_vfprintf_r+0x408>
 e005f38:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e005f3c:	e3a02000 	mov	r2, #0
 e005f40:	e58d2030 	str	r2, [sp, #48]	; 0x30
 e005f44:	e59d2010 	ldr	r2, [sp, #16]
 e005f48:	e59d0030 	ldr	r0, [sp, #48]	; 0x30
 e005f4c:	e2422030 	sub	r2, r2, #48	; 0x30
 e005f50:	e0222099 	mla	r2, r9, r0, r2
 e005f54:	e58d2030 	str	r2, [sp, #48]	; 0x30
 e005f58:	e4d32001 	ldrb	r2, [r3], #1
 e005f5c:	e58d2010 	str	r2, [sp, #16]
 e005f60:	e2422030 	sub	r2, r2, #48	; 0x30
 e005f64:	e3520009 	cmp	r2, #9
 e005f68:	9afffff5 	bls	e005f44 <_vfprintf_r+0x4bc>
 e005f6c:	eaffff52 	b	e005cbc <_vfprintf_r+0x234>
 e005f70:	e38bb008 	orr	fp, fp, #8
 e005f74:	eaffffc5 	b	e005e90 <_vfprintf_r+0x408>
 e005f78:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e005f7c:	e5d33000 	ldrb	r3, [r3]
 e005f80:	e3530068 	cmp	r3, #104	; 0x68
 e005f84:	038bbc02 	orreq	fp, fp, #512	; 0x200
 e005f88:	138bb040 	orrne	fp, fp, #64	; 0x40
 e005f8c:	059d3024 	ldreq	r3, [sp, #36]	; 0x24
 e005f90:	02833001 	addeq	r3, r3, #1
 e005f94:	058d3024 	streq	r3, [sp, #36]	; 0x24
 e005f98:	eaffffbc 	b	e005e90 <_vfprintf_r+0x408>
 e005f9c:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e005fa0:	e5d33000 	ldrb	r3, [r3]
 e005fa4:	e353006c 	cmp	r3, #108	; 0x6c
 e005fa8:	138bb010 	orrne	fp, fp, #16
 e005fac:	059d3024 	ldreq	r3, [sp, #36]	; 0x24
 e005fb0:	02833001 	addeq	r3, r3, #1
 e005fb4:	058d3024 	streq	r3, [sp, #36]	; 0x24
 e005fb8:	1affffb4 	bne	e005e90 <_vfprintf_r+0x408>
 e005fbc:	e38bb020 	orr	fp, fp, #32
 e005fc0:	eaffffb2 	b	e005e90 <_vfprintf_r+0x408>
 e005fc4:	e1a02008 	mov	r2, r8
 e005fc8:	e3a00000 	mov	r0, #0
 e005fcc:	e5cd005b 	strb	r0, [sp, #91]	; 0x5b
 e005fd0:	e4923004 	ldr	r3, [r2], #4
 e005fd4:	e58d2014 	str	r2, [sp, #20]
 e005fd8:	e5cd30c4 	strb	r3, [sp, #196]	; 0xc4
 e005fdc:	e3a06001 	mov	r6, #1
 e005fe0:	e1a09000 	mov	r9, r0
 e005fe4:	e1a03000 	mov	r3, r0
 e005fe8:	e1a08000 	mov	r8, r0
 e005fec:	e28da0c4 	add	sl, sp, #196	; 0xc4
 e005ff0:	e58d0008 	str	r0, [sp, #8]
 e005ff4:	e58d0018 	str	r0, [sp, #24]
 e005ff8:	e58d001c 	str	r0, [sp, #28]
 e005ffc:	ea000180 	b	e006604 <_vfprintf_r+0xb7c>
 e006000:	e38bb010 	orr	fp, fp, #16
 e006004:	e31b0020 	tst	fp, #32
 e006008:	0a00002a 	beq	e0060b8 <_vfprintf_r+0x630>
 e00600c:	e2888007 	add	r8, r8, #7
 e006010:	e3c83007 	bic	r3, r8, #7
 e006014:	e1a02003 	mov	r2, r3
 e006018:	e5939004 	ldr	r9, [r3, #4]
 e00601c:	e4928008 	ldr	r8, [r2], #8
 e006020:	e58d2014 	str	r2, [sp, #20]
 e006024:	e3590000 	cmp	r9, #0
 e006028:	aa000610 	bge	e007870 <_vfprintf_r+0x1de8>
 e00602c:	e2788000 	rsbs	r8, r8, #0
 e006030:	e3a0302d 	mov	r3, #45	; 0x2d
 e006034:	e2e99000 	rsc	r9, r9, #0
 e006038:	e5cd305b 	strb	r3, [sp, #91]	; 0x5b
 e00603c:	e3a03001 	mov	r3, #1
 e006040:	e3760001 	cmn	r6, #1
 e006044:	11a0100b 	movne	r1, fp
 e006048:	1a000303 	bne	e006c5c <_vfprintf_r+0x11d4>
 e00604c:	e3530001 	cmp	r3, #1
 e006050:	0a00060a 	beq	e007880 <_vfprintf_r+0x1df8>
 e006054:	e28daf4a 	add	sl, sp, #296	; 0x128
 e006058:	e3530002 	cmp	r3, #2
 e00605c:	0a00030f 	beq	e006ca0 <_vfprintf_r+0x1218>
 e006060:	e2083007 	and	r3, r8, #7
 e006064:	e1a081a8 	lsr	r8, r8, #3
 e006068:	e1888e89 	orr	r8, r8, r9, lsl #29
 e00606c:	e1a091a9 	lsr	r9, r9, #3
 e006070:	e1a0200a 	mov	r2, sl
 e006074:	e2833030 	add	r3, r3, #48	; 0x30
 e006078:	e1981009 	orrs	r1, r8, r9
 e00607c:	e56a3001 	strb	r3, [sl, #-1]!
 e006080:	1afffff6 	bne	e006060 <_vfprintf_r+0x5d8>
 e006084:	e3530030 	cmp	r3, #48	; 0x30
 e006088:	03a01000 	moveq	r1, #0
 e00608c:	120b1001 	andne	r1, fp, #1
 e006090:	e3510000 	cmp	r1, #0
 e006094:	13a03030 	movne	r3, #48	; 0x30
 e006098:	154a3001 	strbne	r3, [sl, #-1]
 e00609c:	1242a002 	subne	sl, r2, #2
 e0060a0:	e28d3f4a 	add	r3, sp, #296	; 0x128
 e0060a4:	e1a09006 	mov	r9, r6
 e0060a8:	e043600a 	sub	r6, r3, sl
 e0060ac:	e3a03000 	mov	r3, #0
 e0060b0:	e58d3008 	str	r3, [sp, #8]
 e0060b4:	ea000028 	b	e00615c <_vfprintf_r+0x6d4>
 e0060b8:	e1a03008 	mov	r3, r8
 e0060bc:	e31b0010 	tst	fp, #16
 e0060c0:	e4939004 	ldr	r9, [r3], #4
 e0060c4:	e58d3014 	str	r3, [sp, #20]
 e0060c8:	0a000002 	beq	e0060d8 <_vfprintf_r+0x650>
 e0060cc:	e1a08009 	mov	r8, r9
 e0060d0:	e1a09fc9 	asr	r9, r9, #31
 e0060d4:	eaffffd2 	b	e006024 <_vfprintf_r+0x59c>
 e0060d8:	e31b0040 	tst	fp, #64	; 0x40
 e0060dc:	16bf8079 	sxthne	r8, r9
 e0060e0:	17a097d9 	sbfxne	r9, r9, #15, #1
 e0060e4:	1affffce 	bne	e006024 <_vfprintf_r+0x59c>
 e0060e8:	e31b0c02 	tst	fp, #512	; 0x200
 e0060ec:	16af8079 	sxtbne	r8, r9
 e0060f0:	17a093d9 	sbfxne	r9, r9, #7, #1
 e0060f4:	1affffca 	bne	e006024 <_vfprintf_r+0x59c>
 e0060f8:	eafffff3 	b	e0060cc <_vfprintf_r+0x644>
 e0060fc:	e2888007 	add	r8, r8, #7
 e006100:	eddf0bec 	vldr	d16, [pc, #944]	; e0064b8 <_vfprintf_r+0xa30>
 e006104:	e3c83007 	bic	r3, r8, #7
 e006108:	ecb38b02 	vldmia	r3!, {d8}
 e00610c:	eef01bc8 	vabs.f64	d17, d8
 e006110:	e58d3014 	str	r3, [sp, #20]
 e006114:	eef41b60 	vcmp.f64	d17, d16
 e006118:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e00611c:	da000012 	ble	e00616c <_vfprintf_r+0x6e4>
 e006120:	eeb58bc0 	vcmpe.f64	d8, #0.0
 e006124:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e006128:	43a0302d 	movmi	r3, #45	; 0x2d
 e00612c:	45cd305b 	strbmi	r3, [sp, #91]	; 0x5b
 e006130:	e59f2388 	ldr	r2, [pc, #904]	; e0064c0 <_vfprintf_r+0xa38>
 e006134:	e59f0388 	ldr	r0, [pc, #904]	; e0064c4 <_vfprintf_r+0xa3c>
 e006138:	e59d3010 	ldr	r3, [sp, #16]
 e00613c:	e3cbb080 	bic	fp, fp, #128	; 0x80
 e006140:	e3a06003 	mov	r6, #3
 e006144:	e3530047 	cmp	r3, #71	; 0x47
 e006148:	e3a03000 	mov	r3, #0
 e00614c:	d1a0a002 	movle	sl, r2
 e006150:	c1a0a000 	movgt	sl, r0
 e006154:	e1a09003 	mov	r9, r3
 e006158:	e58d3008 	str	r3, [sp, #8]
 e00615c:	e1a08003 	mov	r8, r3
 e006160:	e58d3018 	str	r3, [sp, #24]
 e006164:	e58d301c 	str	r3, [sp, #28]
 e006168:	ea000125 	b	e006604 <_vfprintf_r+0xb7c>
 e00616c:	eeb48b48 	vcmp.f64	d8, d8
 e006170:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e006174:	7a000006 	bvc	e006194 <_vfprintf_r+0x70c>
 e006178:	ee183a90 	vmov	r3, s17
 e00617c:	e59f2344 	ldr	r2, [pc, #836]	; e0064c8 <_vfprintf_r+0xa40>
 e006180:	e59f0344 	ldr	r0, [pc, #836]	; e0064cc <_vfprintf_r+0xa44>
 e006184:	e3530000 	cmp	r3, #0
 e006188:	b3a0302d 	movlt	r3, #45	; 0x2d
 e00618c:	b5cd305b 	strblt	r3, [sp, #91]	; 0x5b
 e006190:	eaffffe8 	b	e006138 <_vfprintf_r+0x6b0>
 e006194:	e59d3010 	ldr	r3, [sp, #16]
 e006198:	e3c39020 	bic	r9, r3, #32
 e00619c:	e3590041 	cmp	r9, #65	; 0x41
 e0061a0:	1a000020 	bne	e006228 <_vfprintf_r+0x7a0>
 e0061a4:	e3a03030 	mov	r3, #48	; 0x30
 e0061a8:	e5cd305c 	strb	r3, [sp, #92]	; 0x5c
 e0061ac:	e59d3010 	ldr	r3, [sp, #16]
 e0061b0:	e38bb002 	orr	fp, fp, #2
 e0061b4:	e3530061 	cmp	r3, #97	; 0x61
 e0061b8:	03a03078 	moveq	r3, #120	; 0x78
 e0061bc:	13a03058 	movne	r3, #88	; 0x58
 e0061c0:	e3560063 	cmp	r6, #99	; 0x63
 e0061c4:	e5cd305d 	strb	r3, [sp, #93]	; 0x5d
 e0061c8:	d28da0c4 	addle	sl, sp, #196	; 0xc4
 e0061cc:	d3a03000 	movle	r3, #0
 e0061d0:	d58d3008 	strle	r3, [sp, #8]
 e0061d4:	da00001b 	ble	e006248 <_vfprintf_r+0x7c0>
 e0061d8:	e2861001 	add	r1, r6, #1
 e0061dc:	e1a00007 	mov	r0, r7
 e0061e0:	eb00082c 	bl	e008298 <__wrap__malloc_r>
 e0061e4:	e250a000 	subs	sl, r0, #0
 e0061e8:	1a00006e 	bne	e0063a8 <_vfprintf_r+0x920>
 e0061ec:	e1d530bc 	ldrh	r3, [r5, #12]
 e0061f0:	e3833040 	orr	r3, r3, #64	; 0x40
 e0061f4:	e1c530bc 	strh	r3, [r5, #12]
 e0061f8:	e5953064 	ldr	r3, [r5, #100]	; 0x64
 e0061fc:	e3130001 	tst	r3, #1
 e006200:	1a000004 	bne	e006218 <_vfprintf_r+0x790>
 e006204:	e1d530bc 	ldrh	r3, [r5, #12]
 e006208:	e3130c02 	tst	r3, #512	; 0x200
 e00620c:	1a000001 	bne	e006218 <_vfprintf_r+0x790>
 e006210:	e5950058 	ldr	r0, [r5, #88]	; 0x58
 e006214:	ebffeae5 	bl	e000db0 <__retarget_lock_release_recursive>
 e006218:	e1d530bc 	ldrh	r3, [r5, #12]
 e00621c:	e3130040 	tst	r3, #64	; 0x40
 e006220:	0afffe4d 	beq	e005b5c <_vfprintf_r+0xd4>
 e006224:	eafffe4a 	b	e005b54 <_vfprintf_r+0xcc>
 e006228:	e3760001 	cmn	r6, #1
 e00622c:	e3a03000 	mov	r3, #0
 e006230:	03a06006 	moveq	r6, #6
 e006234:	e58d3008 	str	r3, [sp, #8]
 e006238:	0a000002 	beq	e006248 <_vfprintf_r+0x7c0>
 e00623c:	e1560003 	cmp	r6, r3
 e006240:	03590047 	cmpeq	r9, #71	; 0x47
 e006244:	03a06001 	moveq	r6, #1
 e006248:	e38b3c01 	orr	r3, fp, #256	; 0x100
 e00624c:	e58d3034 	str	r3, [sp, #52]	; 0x34
 e006250:	ee183a90 	vmov	r3, s17
 e006254:	e3530000 	cmp	r3, #0
 e006258:	b3a0302d 	movlt	r3, #45	; 0x2d
 e00625c:	a3a03000 	movge	r3, #0
 e006260:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e006264:	beb19b48 	vneglt.f64	d9, d8
 e006268:	aeb09b48 	vmovge.f64	d9, d8
 e00626c:	e3590041 	cmp	r9, #65	; 0x41
 e006270:	1a00005d 	bne	e0063ec <_vfprintf_r+0x964>
 e006274:	e28d0060 	add	r0, sp, #96	; 0x60
 e006278:	eeb00b49 	vmov.f64	d0, d9
 e00627c:	ebfffd49 	bl	e0057a8 <frexp>
 e006280:	eef40b00 	vmov.f64	d16, #64	; 0x3e000000  0.125
 e006284:	e59d2010 	ldr	r2, [sp, #16]
 e006288:	e2460001 	sub	r0, r6, #1
 e00628c:	ee200b20 	vmul.f64	d0, d0, d16
 e006290:	e59f1244 	ldr	r1, [pc, #580]	; e0064dc <_vfprintf_r+0xa54>
 e006294:	eef30b00 	vmov.f64	d16, #48	; 0x41800000  16.0
 e006298:	eeb50b40 	vcmp.f64	d0, #0.0
 e00629c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e0062a0:	03a03001 	moveq	r3, #1
 e0062a4:	058d3060 	streq	r3, [sp, #96]	; 0x60
 e0062a8:	e59f3228 	ldr	r3, [pc, #552]	; e0064d8 <_vfprintf_r+0xa50>
 e0062ac:	e3520061 	cmp	r2, #97	; 0x61
 e0062b0:	11a01003 	movne	r1, r3
 e0062b4:	e1a0300a 	mov	r3, sl
 e0062b8:	ee200b20 	vmul.f64	d0, d0, d16
 e0062bc:	e3700001 	cmn	r0, #1
 e0062c0:	eefd7bc0 	vcvt.s32.f64	s15, d0
 e0062c4:	ee17ca90 	vmov	ip, s15
 e0062c8:	eef81be7 	vcvt.f64.s32	d17, s15
 e0062cc:	e7d1200c 	ldrb	r2, [r1, ip]
 e0062d0:	ee300b61 	vsub.f64	d0, d0, d17
 e0062d4:	e4c32001 	strb	r2, [r3], #1
 e0062d8:	e1a02000 	mov	r2, r0
 e0062dc:	0a000003 	beq	e0062f0 <_vfprintf_r+0x868>
 e0062e0:	eeb50b40 	vcmp.f64	d0, #0.0
 e0062e4:	e2400001 	sub	r0, r0, #1
 e0062e8:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e0062ec:	1afffff1 	bne	e0062b8 <_vfprintf_r+0x830>
 e0062f0:	eef60b00 	vmov.f64	d16, #96	; 0x3f000000  0.5
 e0062f4:	eeb40be0 	vcmpe.f64	d0, d16
 e0062f8:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e0062fc:	ca000004 	bgt	e006314 <_vfprintf_r+0x88c>
 e006300:	eeb40b60 	vcmp.f64	d0, d16
 e006304:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e006308:	1a000033 	bne	e0063dc <_vfprintf_r+0x954>
 e00630c:	e31c0001 	tst	ip, #1
 e006310:	0a000031 	beq	e0063dc <_vfprintf_r+0x954>
 e006314:	e5d1c00f 	ldrb	ip, [r1, #15]
 e006318:	e3a0e030 	mov	lr, #48	; 0x30
 e00631c:	e58d3070 	str	r3, [sp, #112]	; 0x70
 e006320:	e59d0070 	ldr	r0, [sp, #112]	; 0x70
 e006324:	e2402001 	sub	r2, r0, #1
 e006328:	e58d2070 	str	r2, [sp, #112]	; 0x70
 e00632c:	e5502001 	ldrb	r2, [r0, #-1]
 e006330:	e152000c 	cmp	r2, ip
 e006334:	0a00001d 	beq	e0063b0 <_vfprintf_r+0x928>
 e006338:	e3520039 	cmp	r2, #57	; 0x39
 e00633c:	12822001 	addne	r2, r2, #1
 e006340:	05d1200a 	ldrbeq	r2, [r1, #10]
 e006344:	16ef2072 	uxtbne	r2, r2
 e006348:	e5402001 	strb	r2, [r0, #-1]
 e00634c:	e043300a 	sub	r3, r3, sl
 e006350:	e59d8060 	ldr	r8, [sp, #96]	; 0x60
 e006354:	e3590047 	cmp	r9, #71	; 0x47
 e006358:	e58d300c 	str	r3, [sp, #12]
 e00635c:	1a000061 	bne	e0064e8 <_vfprintf_r+0xa60>
 e006360:	e3780003 	cmn	r8, #3
 e006364:	a3a03000 	movge	r3, #0
 e006368:	b3a03001 	movlt	r3, #1
 e00636c:	e1580006 	cmp	r8, r6
 e006370:	c3833001 	orrgt	r3, r3, #1
 e006374:	e3530000 	cmp	r3, #0
 e006378:	159d3010 	ldrne	r3, [sp, #16]
 e00637c:	12433002 	subne	r3, r3, #2
 e006380:	158d3010 	strne	r3, [sp, #16]
 e006384:	1a000059 	bne	e0064f0 <_vfprintf_r+0xa68>
 e006388:	e59d300c 	ldr	r3, [sp, #12]
 e00638c:	e1580003 	cmp	r8, r3
 e006390:	ba000176 	blt	e006970 <_vfprintf_r+0xee8>
 e006394:	e31b0001 	tst	fp, #1
 e006398:	159d3028 	ldrne	r3, [sp, #40]	; 0x28
 e00639c:	10886003 	addne	r6, r8, r3
 e0063a0:	01a06008 	moveq	r6, r8
 e0063a4:	ea000177 	b	e006988 <_vfprintf_r+0xf00>
 e0063a8:	e58da008 	str	sl, [sp, #8]
 e0063ac:	eaffffa5 	b	e006248 <_vfprintf_r+0x7c0>
 e0063b0:	e540e001 	strb	lr, [r0, #-1]
 e0063b4:	eaffffd9 	b	e006320 <_vfprintf_r+0x898>
 e0063b8:	e4c1e001 	strb	lr, [r1], #1
 e0063bc:	e04c0001 	sub	r0, ip, r1
 e0063c0:	e3500000 	cmp	r0, #0
 e0063c4:	aafffffb 	bge	e0063b8 <_vfprintf_r+0x930>
 e0063c8:	e3720001 	cmn	r2, #1
 e0063cc:	a2822001 	addge	r2, r2, #1
 e0063d0:	b3a02000 	movlt	r2, #0
 e0063d4:	e0833002 	add	r3, r3, r2
 e0063d8:	eaffffdb 	b	e00634c <_vfprintf_r+0x8c4>
 e0063dc:	e1a01003 	mov	r1, r3
 e0063e0:	e083c002 	add	ip, r3, r2
 e0063e4:	e3a0e030 	mov	lr, #48	; 0x30
 e0063e8:	eafffff3 	b	e0063bc <_vfprintf_r+0x934>
 e0063ec:	e3590046 	cmp	r9, #70	; 0x46
 e0063f0:	01a08006 	moveq	r8, r6
 e0063f4:	03a01003 	moveq	r1, #3
 e0063f8:	0a000003 	beq	e00640c <_vfprintf_r+0x984>
 e0063fc:	e3590045 	cmp	r9, #69	; 0x45
 e006400:	e3a01002 	mov	r1, #2
 e006404:	02868001 	addeq	r8, r6, #1
 e006408:	11a08006 	movne	r8, r6
 e00640c:	e28d3070 	add	r3, sp, #112	; 0x70
 e006410:	eeb00b49 	vmov.f64	d0, d9
 e006414:	e58d3004 	str	r3, [sp, #4]
 e006418:	e1a02008 	mov	r2, r8
 e00641c:	e28d3064 	add	r3, sp, #100	; 0x64
 e006420:	e1a00007 	mov	r0, r7
 e006424:	e58d3000 	str	r3, [sp]
 e006428:	e28d3060 	add	r3, sp, #96	; 0x60
 e00642c:	ebfff2c0 	bl	e002f34 <_dtoa_r>
 e006430:	e3590047 	cmp	r9, #71	; 0x47
 e006434:	e1a0a000 	mov	sl, r0
 e006438:	1a000003 	bne	e00644c <_vfprintf_r+0x9c4>
 e00643c:	e31b0001 	tst	fp, #1
 e006440:	1a000001 	bne	e00644c <_vfprintf_r+0x9c4>
 e006444:	e59d3070 	ldr	r3, [sp, #112]	; 0x70
 e006448:	eaffffbf 	b	e00634c <_vfprintf_r+0x8c4>
 e00644c:	e08a3008 	add	r3, sl, r8
 e006450:	e3590046 	cmp	r9, #70	; 0x46
 e006454:	1a00000c 	bne	e00648c <_vfprintf_r+0xa04>
 e006458:	eeb59b40 	vcmp.f64	d9, #0.0
 e00645c:	e5da1000 	ldrb	r1, [sl]
 e006460:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e006464:	13a02001 	movne	r2, #1
 e006468:	03a02000 	moveq	r2, #0
 e00646c:	e3510030 	cmp	r1, #48	; 0x30
 e006470:	13a02000 	movne	r2, #0
 e006474:	02022001 	andeq	r2, r2, #1
 e006478:	e3520000 	cmp	r2, #0
 e00647c:	12688001 	rsbne	r8, r8, #1
 e006480:	158d8060 	strne	r8, [sp, #96]	; 0x60
 e006484:	e59d2060 	ldr	r2, [sp, #96]	; 0x60
 e006488:	e0833002 	add	r3, r3, r2
 e00648c:	eeb59b40 	vcmp.f64	d9, #0.0
 e006490:	e3a01030 	mov	r1, #48	; 0x30
 e006494:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e006498:	058d3070 	streq	r3, [sp, #112]	; 0x70
 e00649c:	e59d2070 	ldr	r2, [sp, #112]	; 0x70
 e0064a0:	e1530002 	cmp	r3, r2
 e0064a4:	9affffe6 	bls	e006444 <_vfprintf_r+0x9bc>
 e0064a8:	e2820001 	add	r0, r2, #1
 e0064ac:	e58d0070 	str	r0, [sp, #112]	; 0x70
 e0064b0:	e5c21000 	strb	r1, [r2]
 e0064b4:	eafffff8 	b	e00649c <_vfprintf_r+0xa14>
 e0064b8:	ffffffff 	.word	0xffffffff
 e0064bc:	7fefffff 	.word	0x7fefffff
 e0064c0:	0e015586 	.word	0x0e015586
 e0064c4:	0e01558a 	.word	0x0e01558a
 e0064c8:	0e01558e 	.word	0x0e01558e
 e0064cc:	0e015592 	.word	0x0e015592
 e0064d0:	66666667 	.word	0x66666667
 e0064d4:	0e013c88 	.word	0x0e013c88
 e0064d8:	0e015494 	.word	0x0e015494
 e0064dc:	0e0154a5 	.word	0x0e0154a5
 e0064e0:	0e0154c3 	.word	0x0e0154c3
 e0064e4:	0e013c98 	.word	0x0e013c98
 e0064e8:	e3590046 	cmp	r9, #70	; 0x46
 e0064ec:	0a0000f8 	beq	e0068d4 <_vfprintf_r+0xe4c>
 e0064f0:	e59d3010 	ldr	r3, [sp, #16]
 e0064f4:	e2486001 	sub	r6, r8, #1
 e0064f8:	e58d6060 	str	r6, [sp, #96]	; 0x60
 e0064fc:	e3c32020 	bic	r2, r3, #32
 e006500:	e5dd3010 	ldrb	r3, [sp, #16]
 e006504:	e3520041 	cmp	r2, #65	; 0x41
 e006508:	0283300f 	addeq	r3, r3, #15
 e00650c:	06ef3073 	uxtbeq	r3, r3
 e006510:	e3560000 	cmp	r6, #0
 e006514:	b2686001 	rsblt	r6, r8, #1
 e006518:	e5cd3068 	strb	r3, [sp, #104]	; 0x68
 e00651c:	b3a0302d 	movlt	r3, #45	; 0x2d
 e006520:	a3a0302b 	movge	r3, #43	; 0x2b
 e006524:	e3560009 	cmp	r6, #9
 e006528:	e5cd3069 	strb	r3, [sp, #105]	; 0x69
 e00652c:	da0000e0 	ble	e0068b4 <_vfprintf_r+0xe2c>
 e006530:	e28d9077 	add	r9, sp, #119	; 0x77
 e006534:	e1a00006 	mov	r0, r6
 e006538:	e3a0100a 	mov	r1, #10
 e00653c:	eb00064b 	bl	e007e70 <__aeabi_idivmod>
 e006540:	e51f2078 	ldr	r2, [pc, #-120]	; e0064d0 <_vfprintf_r+0xa48>
 e006544:	e1a08009 	mov	r8, r9
 e006548:	e2811030 	add	r1, r1, #48	; 0x30
 e00654c:	e1a03006 	mov	r3, r6
 e006550:	e2499001 	sub	r9, r9, #1
 e006554:	e3530063 	cmp	r3, #99	; 0x63
 e006558:	e5481001 	strb	r1, [r8, #-1]
 e00655c:	e0c21296 	smull	r1, r2, r6, r2
 e006560:	e1a06fc6 	asr	r6, r6, #31
 e006564:	e0666142 	rsb	r6, r6, r2, asr #2
 e006568:	cafffff1 	bgt	e006534 <_vfprintf_r+0xaac>
 e00656c:	e2483002 	sub	r3, r8, #2
 e006570:	e28d006a 	add	r0, sp, #106	; 0x6a
 e006574:	e1a02003 	mov	r2, r3
 e006578:	e28d1077 	add	r1, sp, #119	; 0x77
 e00657c:	e2866030 	add	r6, r6, #48	; 0x30
 e006580:	e5496001 	strb	r6, [r9, #-1]
 e006584:	e1520001 	cmp	r2, r1
 e006588:	3a0000c6 	bcc	e0068a8 <_vfprintf_r+0xe20>
 e00658c:	e1530001 	cmp	r3, r1
 e006590:	e28d2079 	add	r2, sp, #121	; 0x79
 e006594:	90428008 	subls	r8, r2, r8
 e006598:	83a08000 	movhi	r8, #0
 e00659c:	e28d306a 	add	r3, sp, #106	; 0x6a
 e0065a0:	e0838008 	add	r8, r3, r8
 e0065a4:	e59d200c 	ldr	r2, [sp, #12]
 e0065a8:	e28d3068 	add	r3, sp, #104	; 0x68
 e0065ac:	e0483003 	sub	r3, r8, r3
 e0065b0:	e58d3048 	str	r3, [sp, #72]	; 0x48
 e0065b4:	e0836002 	add	r6, r3, r2
 e0065b8:	e3520001 	cmp	r2, #1
 e0065bc:	ca000001 	bgt	e0065c8 <_vfprintf_r+0xb40>
 e0065c0:	e31b0001 	tst	fp, #1
 e0065c4:	0a000001 	beq	e0065d0 <_vfprintf_r+0xb48>
 e0065c8:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
 e0065cc:	e0866003 	add	r6, r6, r3
 e0065d0:	e3cb3b01 	bic	r3, fp, #1024	; 0x400
 e0065d4:	e3833c01 	orr	r3, r3, #256	; 0x100
 e0065d8:	e58d3034 	str	r3, [sp, #52]	; 0x34
 e0065dc:	e3a03000 	mov	r3, #0
 e0065e0:	e58d3018 	str	r3, [sp, #24]
 e0065e4:	e1a08003 	mov	r8, r3
 e0065e8:	e58d301c 	str	r3, [sp, #28]
 e0065ec:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
 e0065f0:	e3a09000 	mov	r9, #0
 e0065f4:	e59db034 	ldr	fp, [sp, #52]	; 0x34
 e0065f8:	e3530000 	cmp	r3, #0
 e0065fc:	13a0302d 	movne	r3, #45	; 0x2d
 e006600:	15cd305b 	strbne	r3, [sp, #91]	; 0x5b
 e006604:	e1590006 	cmp	r9, r6
 e006608:	a1a03009 	movge	r3, r9
 e00660c:	b1a03006 	movlt	r3, r6
 e006610:	e58d3034 	str	r3, [sp, #52]	; 0x34
 e006614:	e5dd305b 	ldrb	r3, [sp, #91]	; 0x5b
 e006618:	e3530000 	cmp	r3, #0
 e00661c:	159d3034 	ldrne	r3, [sp, #52]	; 0x34
 e006620:	12833001 	addne	r3, r3, #1
 e006624:	158d3034 	strne	r3, [sp, #52]	; 0x34
 e006628:	e21b3002 	ands	r3, fp, #2
 e00662c:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e006630:	159d3034 	ldrne	r3, [sp, #52]	; 0x34
 e006634:	12833002 	addne	r3, r3, #2
 e006638:	158d3034 	strne	r3, [sp, #52]	; 0x34
 e00663c:	e21b3084 	ands	r3, fp, #132	; 0x84
 e006640:	e58d3050 	str	r3, [sp, #80]	; 0x50
 e006644:	1a00001a 	bne	e0066b4 <_vfprintf_r+0xc2c>
 e006648:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
 e00664c:	e59d2034 	ldr	r2, [sp, #52]	; 0x34
 e006650:	e0433002 	sub	r3, r3, r2
 e006654:	e3530000 	cmp	r3, #0
 e006658:	da000015 	ble	e0066b4 <_vfprintf_r+0xc2c>
 e00665c:	e59d207c 	ldr	r2, [sp, #124]	; 0x7c
 e006660:	e2840008 	add	r0, r4, #8
 e006664:	e51fc198 	ldr	ip, [pc, #-408]	; e0064d4 <_vfprintf_r+0xa4c>
 e006668:	e3530010 	cmp	r3, #16
 e00666c:	e59d1080 	ldr	r1, [sp, #128]	; 0x80
 e006670:	e2822001 	add	r2, r2, #1
 e006674:	e584c000 	str	ip, [r4]
 e006678:	ca00019f 	bgt	e006cfc <_vfprintf_r+0x1274>
 e00667c:	e3520007 	cmp	r2, #7
 e006680:	e0811003 	add	r1, r1, r3
 e006684:	e5843004 	str	r3, [r4, #4]
 e006688:	d1a04000 	movle	r4, r0
 e00668c:	e58d1080 	str	r1, [sp, #128]	; 0x80
 e006690:	e58d207c 	str	r2, [sp, #124]	; 0x7c
 e006694:	da000006 	ble	e0066b4 <_vfprintf_r+0xc2c>
 e006698:	e28d2078 	add	r2, sp, #120	; 0x78
 e00669c:	e1a01005 	mov	r1, r5
 e0066a0:	e1a00007 	mov	r0, r7
 e0066a4:	ebffed26 	bl	e001b44 <__sprint_r>
 e0066a8:	e3500000 	cmp	r0, #0
 e0066ac:	1a000447 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e0066b0:	e28d4084 	add	r4, sp, #132	; 0x84
 e0066b4:	e5dd305b 	ldrb	r3, [sp, #91]	; 0x5b
 e0066b8:	e3530000 	cmp	r3, #0
 e0066bc:	0a000013 	beq	e006710 <_vfprintf_r+0xc88>
 e0066c0:	e28d305b 	add	r3, sp, #91	; 0x5b
 e0066c4:	e5843000 	str	r3, [r4]
 e0066c8:	e3a03001 	mov	r3, #1
 e0066cc:	e5843004 	str	r3, [r4, #4]
 e0066d0:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
 e0066d4:	e2833001 	add	r3, r3, #1
 e0066d8:	e58d3080 	str	r3, [sp, #128]	; 0x80
 e0066dc:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e0066e0:	e2833001 	add	r3, r3, #1
 e0066e4:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e0066e8:	e3530007 	cmp	r3, #7
 e0066ec:	d2844008 	addle	r4, r4, #8
 e0066f0:	da000006 	ble	e006710 <_vfprintf_r+0xc88>
 e0066f4:	e28d2078 	add	r2, sp, #120	; 0x78
 e0066f8:	e1a01005 	mov	r1, r5
 e0066fc:	e1a00007 	mov	r0, r7
 e006700:	ebffed0f 	bl	e001b44 <__sprint_r>
 e006704:	e3500000 	cmp	r0, #0
 e006708:	1a000430 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e00670c:	e28d4084 	add	r4, sp, #132	; 0x84
 e006710:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
 e006714:	e3530000 	cmp	r3, #0
 e006718:	0a000013 	beq	e00676c <_vfprintf_r+0xce4>
 e00671c:	e28d305c 	add	r3, sp, #92	; 0x5c
 e006720:	e5843000 	str	r3, [r4]
 e006724:	e3a03002 	mov	r3, #2
 e006728:	e5843004 	str	r3, [r4, #4]
 e00672c:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
 e006730:	e2833002 	add	r3, r3, #2
 e006734:	e58d3080 	str	r3, [sp, #128]	; 0x80
 e006738:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e00673c:	e2833001 	add	r3, r3, #1
 e006740:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e006744:	e3530007 	cmp	r3, #7
 e006748:	d2844008 	addle	r4, r4, #8
 e00674c:	da000006 	ble	e00676c <_vfprintf_r+0xce4>
 e006750:	e28d2078 	add	r2, sp, #120	; 0x78
 e006754:	e1a01005 	mov	r1, r5
 e006758:	e1a00007 	mov	r0, r7
 e00675c:	ebffecf8 	bl	e001b44 <__sprint_r>
 e006760:	e3500000 	cmp	r0, #0
 e006764:	1a000419 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e006768:	e28d4084 	add	r4, sp, #132	; 0x84
 e00676c:	e59d3050 	ldr	r3, [sp, #80]	; 0x50
 e006770:	e3530080 	cmp	r3, #128	; 0x80
 e006774:	1a00001d 	bne	e0067f0 <_vfprintf_r+0xd68>
 e006778:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
 e00677c:	e59d2034 	ldr	r2, [sp, #52]	; 0x34
 e006780:	e0433002 	sub	r3, r3, r2
 e006784:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e006788:	e3530000 	cmp	r3, #0
 e00678c:	da000017 	ble	e0067f0 <_vfprintf_r+0xd68>
 e006790:	e59d003c 	ldr	r0, [sp, #60]	; 0x3c
 e006794:	e2841008 	add	r1, r4, #8
 e006798:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e00679c:	e3500010 	cmp	r0, #16
 e0067a0:	e51f02c4 	ldr	r0, [pc, #-708]	; e0064e4 <_vfprintf_r+0xa5c>
 e0067a4:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
 e0067a8:	e2833001 	add	r3, r3, #1
 e0067ac:	e5840000 	str	r0, [r4]
 e0067b0:	ca000164 	bgt	e006d48 <_vfprintf_r+0x12c0>
 e0067b4:	e59d003c 	ldr	r0, [sp, #60]	; 0x3c
 e0067b8:	e3530007 	cmp	r3, #7
 e0067bc:	e5840004 	str	r0, [r4, #4]
 e0067c0:	d1a04001 	movle	r4, r1
 e0067c4:	e0802002 	add	r2, r0, r2
 e0067c8:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e0067cc:	e58d2080 	str	r2, [sp, #128]	; 0x80
 e0067d0:	da000006 	ble	e0067f0 <_vfprintf_r+0xd68>
 e0067d4:	e28d2078 	add	r2, sp, #120	; 0x78
 e0067d8:	e1a01005 	mov	r1, r5
 e0067dc:	e1a00007 	mov	r0, r7
 e0067e0:	ebffecd7 	bl	e001b44 <__sprint_r>
 e0067e4:	e3500000 	cmp	r0, #0
 e0067e8:	1a0003f8 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e0067ec:	e28d4084 	add	r4, sp, #132	; 0x84
 e0067f0:	e0499006 	sub	r9, r9, r6
 e0067f4:	e3590000 	cmp	r9, #0
 e0067f8:	da000015 	ble	e006854 <_vfprintf_r+0xdcc>
 e0067fc:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e006800:	e2841008 	add	r1, r4, #8
 e006804:	e51f0328 	ldr	r0, [pc, #-808]	; e0064e4 <_vfprintf_r+0xa5c>
 e006808:	e3590010 	cmp	r9, #16
 e00680c:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
 e006810:	e2833001 	add	r3, r3, #1
 e006814:	e5840000 	str	r0, [r4]
 e006818:	ca00015d 	bgt	e006d94 <_vfprintf_r+0x130c>
 e00681c:	e3530007 	cmp	r3, #7
 e006820:	e5849004 	str	r9, [r4, #4]
 e006824:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e006828:	e0899002 	add	r9, r9, r2
 e00682c:	d1a04001 	movle	r4, r1
 e006830:	e58d9080 	str	r9, [sp, #128]	; 0x80
 e006834:	da000006 	ble	e006854 <_vfprintf_r+0xdcc>
 e006838:	e28d2078 	add	r2, sp, #120	; 0x78
 e00683c:	e1a01005 	mov	r1, r5
 e006840:	e1a00007 	mov	r0, r7
 e006844:	ebffecbe 	bl	e001b44 <__sprint_r>
 e006848:	e3500000 	cmp	r0, #0
 e00684c:	1a0003df 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e006850:	e28d4084 	add	r4, sp, #132	; 0x84
 e006854:	e59d0080 	ldr	r0, [sp, #128]	; 0x80
 e006858:	e31b0c01 	tst	fp, #256	; 0x100
 e00685c:	1a00015d 	bne	e006dd8 <_vfprintf_r+0x1350>
 e006860:	e0860000 	add	r0, r6, r0
 e006864:	e584a000 	str	sl, [r4]
 e006868:	e5846004 	str	r6, [r4, #4]
 e00686c:	e58d0080 	str	r0, [sp, #128]	; 0x80
 e006870:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e006874:	e2833001 	add	r3, r3, #1
 e006878:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e00687c:	e3530007 	cmp	r3, #7
 e006880:	d2844008 	addle	r4, r4, #8
 e006884:	da00018c 	ble	e006ebc <_vfprintf_r+0x1434>
 e006888:	e28d2078 	add	r2, sp, #120	; 0x78
 e00688c:	e1a01005 	mov	r1, r5
 e006890:	e1a00007 	mov	r0, r7
 e006894:	ebffecaa 	bl	e001b44 <__sprint_r>
 e006898:	e3500000 	cmp	r0, #0
 e00689c:	1a0003cb 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e0068a0:	e28d4084 	add	r4, sp, #132	; 0x84
 e0068a4:	ea000184 	b	e006ebc <_vfprintf_r+0x1434>
 e0068a8:	e4d2c001 	ldrb	ip, [r2], #1
 e0068ac:	e4c0c001 	strb	ip, [r0], #1
 e0068b0:	eaffff33 	b	e006584 <_vfprintf_r+0xafc>
 e0068b4:	e3520041 	cmp	r2, #65	; 0x41
 e0068b8:	e2866030 	add	r6, r6, #48	; 0x30
 e0068bc:	128d806b 	addne	r8, sp, #107	; 0x6b
 e0068c0:	028d806a 	addeq	r8, sp, #106	; 0x6a
 e0068c4:	13a03030 	movne	r3, #48	; 0x30
 e0068c8:	15cd306a 	strbne	r3, [sp, #106]	; 0x6a
 e0068cc:	e4c86001 	strb	r6, [r8], #1
 e0068d0:	eaffff33 	b	e0065a4 <_vfprintf_r+0xb1c>
 e0068d4:	e20b3001 	and	r3, fp, #1
 e0068d8:	e3580000 	cmp	r8, #0
 e0068dc:	e1833006 	orr	r3, r3, r6
 e0068e0:	da000005 	ble	e0068fc <_vfprintf_r+0xe74>
 e0068e4:	e3530000 	cmp	r3, #0
 e0068e8:	159d3028 	ldrne	r3, [sp, #40]	; 0x28
 e0068ec:	10883003 	addne	r3, r8, r3
 e0068f0:	1a000008 	bne	e006918 <_vfprintf_r+0xe90>
 e0068f4:	e1a06008 	mov	r6, r8
 e0068f8:	ea000007 	b	e00691c <_vfprintf_r+0xe94>
 e0068fc:	e3530000 	cmp	r3, #0
 e006900:	03a03066 	moveq	r3, #102	; 0x66
 e006904:	03a06001 	moveq	r6, #1
 e006908:	058d3010 	streq	r3, [sp, #16]
 e00690c:	0a000004 	beq	e006924 <_vfprintf_r+0xe9c>
 e006910:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
 e006914:	e2833001 	add	r3, r3, #1
 e006918:	e0866003 	add	r6, r6, r3
 e00691c:	e3a03066 	mov	r3, #102	; 0x66
 e006920:	e58d3010 	str	r3, [sp, #16]
 e006924:	e21b3b01 	ands	r3, fp, #1024	; 0x400
 e006928:	e58d301c 	str	r3, [sp, #28]
 e00692c:	059d301c 	ldreq	r3, [sp, #28]
 e006930:	058d3018 	streq	r3, [sp, #24]
 e006934:	0affff2c 	beq	e0065ec <_vfprintf_r+0xb64>
 e006938:	e3a03000 	mov	r3, #0
 e00693c:	e3580000 	cmp	r8, #0
 e006940:	e58d3018 	str	r3, [sp, #24]
 e006944:	e58d301c 	str	r3, [sp, #28]
 e006948:	daffff27 	ble	e0065ec <_vfprintf_r+0xb64>
 e00694c:	e59d3020 	ldr	r3, [sp, #32]
 e006950:	e5d33000 	ldrb	r3, [r3]
 e006954:	e35300ff 	cmp	r3, #255	; 0xff
 e006958:	1a00000c 	bne	e006990 <_vfprintf_r+0xf08>
 e00695c:	e1cd21d8 	ldrd	r2, [sp, #24]
 e006960:	e0833002 	add	r3, r3, r2
 e006964:	e59d2038 	ldr	r2, [sp, #56]	; 0x38
 e006968:	e0266392 	mla	r6, r2, r3, r6
 e00696c:	eaffff1e 	b	e0065ec <_vfprintf_r+0xb64>
 e006970:	e59d300c 	ldr	r3, [sp, #12]
 e006974:	e3580000 	cmp	r8, #0
 e006978:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
 e00697c:	e0836002 	add	r6, r3, r2
 e006980:	d2683001 	rsble	r3, r8, #1
 e006984:	d0866003 	addle	r6, r6, r3
 e006988:	e3a03067 	mov	r3, #103	; 0x67
 e00698c:	eaffffe3 	b	e006920 <_vfprintf_r+0xe98>
 e006990:	e1530008 	cmp	r3, r8
 e006994:	aafffff0 	bge	e00695c <_vfprintf_r+0xed4>
 e006998:	e0488003 	sub	r8, r8, r3
 e00699c:	e59d3020 	ldr	r3, [sp, #32]
 e0069a0:	e5d33001 	ldrb	r3, [r3, #1]
 e0069a4:	e3530000 	cmp	r3, #0
 e0069a8:	059d3018 	ldreq	r3, [sp, #24]
 e0069ac:	02833001 	addeq	r3, r3, #1
 e0069b0:	058d3018 	streq	r3, [sp, #24]
 e0069b4:	0affffe4 	beq	e00694c <_vfprintf_r+0xec4>
 e0069b8:	e59d301c 	ldr	r3, [sp, #28]
 e0069bc:	e2833001 	add	r3, r3, #1
 e0069c0:	e58d301c 	str	r3, [sp, #28]
 e0069c4:	e59d3020 	ldr	r3, [sp, #32]
 e0069c8:	e2833001 	add	r3, r3, #1
 e0069cc:	e58d3020 	str	r3, [sp, #32]
 e0069d0:	eaffffdd 	b	e00694c <_vfprintf_r+0xec4>
 e0069d4:	e2883004 	add	r3, r8, #4
 e0069d8:	e31b0020 	tst	fp, #32
 e0069dc:	e58d3014 	str	r3, [sp, #20]
 e0069e0:	0a000007 	beq	e006a04 <_vfprintf_r+0xf7c>
 e0069e4:	e5983000 	ldr	r3, [r8]
 e0069e8:	e59d202c 	ldr	r2, [sp, #44]	; 0x2c
 e0069ec:	e59d102c 	ldr	r1, [sp, #44]	; 0x2c
 e0069f0:	e1a02fc2 	asr	r2, r2, #31
 e0069f4:	e8830006 	stm	r3, {r1, r2}
 e0069f8:	e59d8014 	ldr	r8, [sp, #20]
 e0069fc:	e59da024 	ldr	sl, [sp, #36]	; 0x24
 e006a00:	eafffc82 	b	e005c10 <_vfprintf_r+0x188>
 e006a04:	e31b0010 	tst	fp, #16
 e006a08:	0a000003 	beq	e006a1c <_vfprintf_r+0xf94>
 e006a0c:	e5983000 	ldr	r3, [r8]
 e006a10:	e59d202c 	ldr	r2, [sp, #44]	; 0x2c
 e006a14:	e5832000 	str	r2, [r3]
 e006a18:	eafffff6 	b	e0069f8 <_vfprintf_r+0xf70>
 e006a1c:	e31b0040 	tst	fp, #64	; 0x40
 e006a20:	15983000 	ldrne	r3, [r8]
 e006a24:	159d202c 	ldrne	r2, [sp, #44]	; 0x2c
 e006a28:	11c320b0 	strhne	r2, [r3]
 e006a2c:	1afffff1 	bne	e0069f8 <_vfprintf_r+0xf70>
 e006a30:	e31b0c02 	tst	fp, #512	; 0x200
 e006a34:	15983000 	ldrne	r3, [r8]
 e006a38:	159d202c 	ldrne	r2, [sp, #44]	; 0x2c
 e006a3c:	15c32000 	strbne	r2, [r3]
 e006a40:	1affffec 	bne	e0069f8 <_vfprintf_r+0xf70>
 e006a44:	eafffff0 	b	e006a0c <_vfprintf_r+0xf84>
 e006a48:	e38bb010 	orr	fp, fp, #16
 e006a4c:	e21b3020 	ands	r3, fp, #32
 e006a50:	0a00000a 	beq	e006a80 <_vfprintf_r+0xff8>
 e006a54:	e2888007 	add	r8, r8, #7
 e006a58:	e3c83007 	bic	r3, r8, #7
 e006a5c:	e1a02003 	mov	r2, r3
 e006a60:	e5939004 	ldr	r9, [r3, #4]
 e006a64:	e4928008 	ldr	r8, [r2], #8
 e006a68:	e58d2014 	str	r2, [sp, #20]
 e006a6c:	e3cbbb01 	bic	fp, fp, #1024	; 0x400
 e006a70:	e3a03000 	mov	r3, #0
 e006a74:	e3a02000 	mov	r2, #0
 e006a78:	e5cd205b 	strb	r2, [sp, #91]	; 0x5b
 e006a7c:	eafffd6f 	b	e006040 <_vfprintf_r+0x5b8>
 e006a80:	e1a02008 	mov	r2, r8
 e006a84:	e21b9010 	ands	r9, fp, #16
 e006a88:	e4928004 	ldr	r8, [r2], #4
 e006a8c:	e58d2014 	str	r2, [sp, #20]
 e006a90:	0a000001 	beq	e006a9c <_vfprintf_r+0x1014>
 e006a94:	e1a09003 	mov	r9, r3
 e006a98:	eafffff3 	b	e006a6c <_vfprintf_r+0xfe4>
 e006a9c:	e21b3040 	ands	r3, fp, #64	; 0x40
 e006aa0:	16ff8078 	uxthne	r8, r8
 e006aa4:	1afffff0 	bne	e006a6c <_vfprintf_r+0xfe4>
 e006aa8:	e21b9c02 	ands	r9, fp, #512	; 0x200
 e006aac:	0affffee 	beq	e006a6c <_vfprintf_r+0xfe4>
 e006ab0:	e6ef8078 	uxtb	r8, r8
 e006ab4:	eafffff6 	b	e006a94 <_vfprintf_r+0x100c>
 e006ab8:	e1a03008 	mov	r3, r8
 e006abc:	e3a02078 	mov	r2, #120	; 0x78
 e006ac0:	e3a09000 	mov	r9, #0
 e006ac4:	e38bb002 	orr	fp, fp, #2
 e006ac8:	e58d2010 	str	r2, [sp, #16]
 e006acc:	e4938004 	ldr	r8, [r3], #4
 e006ad0:	e58d3014 	str	r3, [sp, #20]
 e006ad4:	e3073830 	movw	r3, #30768	; 0x7830
 e006ad8:	e1cd35bc 	strh	r3, [sp, #92]	; 0x5c
 e006adc:	e51f3608 	ldr	r3, [pc, #-1544]	; e0064dc <_vfprintf_r+0xa54>
 e006ae0:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 e006ae4:	e3a03002 	mov	r3, #2
 e006ae8:	eaffffe1 	b	e006a74 <_vfprintf_r+0xfec>
 e006aec:	e1a03008 	mov	r3, r8
 e006af0:	e3760001 	cmn	r6, #1
 e006af4:	e3a08000 	mov	r8, #0
 e006af8:	e5cd805b 	strb	r8, [sp, #91]	; 0x5b
 e006afc:	e493a004 	ldr	sl, [r3], #4
 e006b00:	e58d3014 	str	r3, [sp, #20]
 e006b04:	0a00000d 	beq	e006b40 <_vfprintf_r+0x10b8>
 e006b08:	e1a02006 	mov	r2, r6
 e006b0c:	e1a01008 	mov	r1, r8
 e006b10:	e1a0000a 	mov	r0, sl
 e006b14:	fafff759 	blx	e004880 <memchr>
 e006b18:	e2503000 	subs	r3, r0, #0
 e006b1c:	e58d3008 	str	r3, [sp, #8]
 e006b20:	0a000073 	beq	e006cf4 <_vfprintf_r+0x126c>
 e006b24:	e043600a 	sub	r6, r3, sl
 e006b28:	e1a09008 	mov	r9, r8
 e006b2c:	e1a03008 	mov	r3, r8
 e006b30:	e58d8008 	str	r8, [sp, #8]
 e006b34:	e58d8018 	str	r8, [sp, #24]
 e006b38:	e58d801c 	str	r8, [sp, #28]
 e006b3c:	eafffeb0 	b	e006604 <_vfprintf_r+0xb7c>
 e006b40:	e1a0000a 	mov	r0, sl
 e006b44:	e1a09008 	mov	r9, r8
 e006b48:	faffeb9c 	blx	e0019c0 <strlen>
 e006b4c:	e1a06000 	mov	r6, r0
 e006b50:	e58d8008 	str	r8, [sp, #8]
 e006b54:	e1a03009 	mov	r3, r9
 e006b58:	eafffd7f 	b	e00615c <_vfprintf_r+0x6d4>
 e006b5c:	e38bb010 	orr	fp, fp, #16
 e006b60:	e21b3020 	ands	r3, fp, #32
 e006b64:	0a000007 	beq	e006b88 <_vfprintf_r+0x1100>
 e006b68:	e2888007 	add	r8, r8, #7
 e006b6c:	e3c83007 	bic	r3, r8, #7
 e006b70:	e1a02003 	mov	r2, r3
 e006b74:	e5939004 	ldr	r9, [r3, #4]
 e006b78:	e4928008 	ldr	r8, [r2], #8
 e006b7c:	e58d2014 	str	r2, [sp, #20]
 e006b80:	e3a03001 	mov	r3, #1
 e006b84:	eaffffba 	b	e006a74 <_vfprintf_r+0xfec>
 e006b88:	e1a02008 	mov	r2, r8
 e006b8c:	e21b9010 	ands	r9, fp, #16
 e006b90:	e4928004 	ldr	r8, [r2], #4
 e006b94:	e58d2014 	str	r2, [sp, #20]
 e006b98:	0a000001 	beq	e006ba4 <_vfprintf_r+0x111c>
 e006b9c:	e1a09003 	mov	r9, r3
 e006ba0:	eafffff6 	b	e006b80 <_vfprintf_r+0x10f8>
 e006ba4:	e21b3040 	ands	r3, fp, #64	; 0x40
 e006ba8:	16ff8078 	uxthne	r8, r8
 e006bac:	1afffff3 	bne	e006b80 <_vfprintf_r+0x10f8>
 e006bb0:	e21b9c02 	ands	r9, fp, #512	; 0x200
 e006bb4:	0afffff1 	beq	e006b80 <_vfprintf_r+0x10f8>
 e006bb8:	e6ef8078 	uxtb	r8, r8
 e006bbc:	eafffff6 	b	e006b9c <_vfprintf_r+0x1114>
 e006bc0:	e51f36f0 	ldr	r3, [pc, #-1776]	; e0064d8 <_vfprintf_r+0xa50>
 e006bc4:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 e006bc8:	e21b3020 	ands	r3, fp, #32
 e006bcc:	0a000014 	beq	e006c24 <_vfprintf_r+0x119c>
 e006bd0:	e2888007 	add	r8, r8, #7
 e006bd4:	e3c83007 	bic	r3, r8, #7
 e006bd8:	e1a02003 	mov	r2, r3
 e006bdc:	e5939004 	ldr	r9, [r3, #4]
 e006be0:	e4928008 	ldr	r8, [r2], #8
 e006be4:	e58d2014 	str	r2, [sp, #20]
 e006be8:	e1983009 	orrs	r3, r8, r9
 e006bec:	03a03000 	moveq	r3, #0
 e006bf0:	120b3001 	andne	r3, fp, #1
 e006bf4:	e3530000 	cmp	r3, #0
 e006bf8:	0a000004 	beq	e006c10 <_vfprintf_r+0x1188>
 e006bfc:	e3a03030 	mov	r3, #48	; 0x30
 e006c00:	e38bb002 	orr	fp, fp, #2
 e006c04:	e5cd305c 	strb	r3, [sp, #92]	; 0x5c
 e006c08:	e59d3010 	ldr	r3, [sp, #16]
 e006c0c:	e5cd305d 	strb	r3, [sp, #93]	; 0x5d
 e006c10:	e3cbbb01 	bic	fp, fp, #1024	; 0x400
 e006c14:	e3a03002 	mov	r3, #2
 e006c18:	eaffff95 	b	e006a74 <_vfprintf_r+0xfec>
 e006c1c:	e51f3748 	ldr	r3, [pc, #-1864]	; e0064dc <_vfprintf_r+0xa54>
 e006c20:	eaffffe7 	b	e006bc4 <_vfprintf_r+0x113c>
 e006c24:	e1a02008 	mov	r2, r8
 e006c28:	e21b9010 	ands	r9, fp, #16
 e006c2c:	e4928004 	ldr	r8, [r2], #4
 e006c30:	e58d2014 	str	r2, [sp, #20]
 e006c34:	0a000001 	beq	e006c40 <_vfprintf_r+0x11b8>
 e006c38:	e1a09003 	mov	r9, r3
 e006c3c:	eaffffe9 	b	e006be8 <_vfprintf_r+0x1160>
 e006c40:	e21b3040 	ands	r3, fp, #64	; 0x40
 e006c44:	16ff8078 	uxthne	r8, r8
 e006c48:	1affffe6 	bne	e006be8 <_vfprintf_r+0x1160>
 e006c4c:	e21b9c02 	ands	r9, fp, #512	; 0x200
 e006c50:	0affffe4 	beq	e006be8 <_vfprintf_r+0x1160>
 e006c54:	e6ef8078 	uxtb	r8, r8
 e006c58:	eafffff6 	b	e006c38 <_vfprintf_r+0x11b0>
 e006c5c:	e1882009 	orr	r2, r8, r9
 e006c60:	e3cbb080 	bic	fp, fp, #128	; 0x80
 e006c64:	e3520000 	cmp	r2, #0
 e006c68:	03560000 	cmpeq	r6, #0
 e006c6c:	13a02001 	movne	r2, #1
 e006c70:	03a02000 	moveq	r2, #0
 e006c74:	1afffcf4 	bne	e00604c <_vfprintf_r+0x5c4>
 e006c78:	e3530000 	cmp	r3, #0
 e006c7c:	1a000011 	bne	e006cc8 <_vfprintf_r+0x1240>
 e006c80:	e2116001 	ands	r6, r1, #1
 e006c84:	0a000010 	beq	e006ccc <_vfprintf_r+0x1244>
 e006c88:	e1a06003 	mov	r6, r3
 e006c8c:	e3a02030 	mov	r2, #48	; 0x30
 e006c90:	e5cd2127 	strb	r2, [sp, #295]	; 0x127
 e006c94:	e28daf49 	add	sl, sp, #292	; 0x124
 e006c98:	e28aa003 	add	sl, sl, #3
 e006c9c:	eafffcff 	b	e0060a0 <_vfprintf_r+0x618>
 e006ca0:	e208300f 	and	r3, r8, #15
 e006ca4:	e59d204c 	ldr	r2, [sp, #76]	; 0x4c
 e006ca8:	e1a08228 	lsr	r8, r8, #4
 e006cac:	e1888e09 	orr	r8, r8, r9, lsl #28
 e006cb0:	e1a09229 	lsr	r9, r9, #4
 e006cb4:	e7d23003 	ldrb	r3, [r2, r3]
 e006cb8:	e56a3001 	strb	r3, [sl, #-1]!
 e006cbc:	e1983009 	orrs	r3, r8, r9
 e006cc0:	1afffff6 	bne	e006ca0 <_vfprintf_r+0x1218>
 e006cc4:	eafffcf5 	b	e0060a0 <_vfprintf_r+0x618>
 e006cc8:	e1a06002 	mov	r6, r2
 e006ccc:	e28daf4a 	add	sl, sp, #296	; 0x128
 e006cd0:	eafffcf2 	b	e0060a0 <_vfprintf_r+0x618>
 e006cd4:	e59d3010 	ldr	r3, [sp, #16]
 e006cd8:	e3530000 	cmp	r3, #0
 e006cdc:	0a0002d6 	beq	e00783c <_vfprintf_r+0x1db4>
 e006ce0:	e3a00000 	mov	r0, #0
 e006ce4:	e5cd30c4 	strb	r3, [sp, #196]	; 0xc4
 e006ce8:	e5cd005b 	strb	r0, [sp, #91]	; 0x5b
 e006cec:	e58d8014 	str	r8, [sp, #20]
 e006cf0:	eafffcb9 	b	e005fdc <_vfprintf_r+0x554>
 e006cf4:	e59d9008 	ldr	r9, [sp, #8]
 e006cf8:	eaffff95 	b	e006b54 <_vfprintf_r+0x10cc>
 e006cfc:	e3a0c010 	mov	ip, #16
 e006d00:	e3520007 	cmp	r2, #7
 e006d04:	e081100c 	add	r1, r1, ip
 e006d08:	e584c004 	str	ip, [r4, #4]
 e006d0c:	e58d1080 	str	r1, [sp, #128]	; 0x80
 e006d10:	e58d207c 	str	r2, [sp, #124]	; 0x7c
 e006d14:	da000008 	ble	e006d3c <_vfprintf_r+0x12b4>
 e006d18:	e28d2078 	add	r2, sp, #120	; 0x78
 e006d1c:	e1a01005 	mov	r1, r5
 e006d20:	e1a00007 	mov	r0, r7
 e006d24:	e58d3054 	str	r3, [sp, #84]	; 0x54
 e006d28:	ebffeb85 	bl	e001b44 <__sprint_r>
 e006d2c:	e3500000 	cmp	r0, #0
 e006d30:	1a0002a6 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e006d34:	e59d3054 	ldr	r3, [sp, #84]	; 0x54
 e006d38:	e28d0084 	add	r0, sp, #132	; 0x84
 e006d3c:	e2433010 	sub	r3, r3, #16
 e006d40:	e1a04000 	mov	r4, r0
 e006d44:	eafffe44 	b	e00665c <_vfprintf_r+0xbd4>
 e006d48:	e3a00010 	mov	r0, #16
 e006d4c:	e3530007 	cmp	r3, #7
 e006d50:	e0822000 	add	r2, r2, r0
 e006d54:	e5840004 	str	r0, [r4, #4]
 e006d58:	e58d2080 	str	r2, [sp, #128]	; 0x80
 e006d5c:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e006d60:	da000006 	ble	e006d80 <_vfprintf_r+0x12f8>
 e006d64:	e28d2078 	add	r2, sp, #120	; 0x78
 e006d68:	e1a01005 	mov	r1, r5
 e006d6c:	e1a00007 	mov	r0, r7
 e006d70:	ebffeb73 	bl	e001b44 <__sprint_r>
 e006d74:	e3500000 	cmp	r0, #0
 e006d78:	1a000294 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e006d7c:	e28d1084 	add	r1, sp, #132	; 0x84
 e006d80:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
 e006d84:	e1a04001 	mov	r4, r1
 e006d88:	e2433010 	sub	r3, r3, #16
 e006d8c:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e006d90:	eafffe7e 	b	e006790 <_vfprintf_r+0xd08>
 e006d94:	e3a00010 	mov	r0, #16
 e006d98:	e3530007 	cmp	r3, #7
 e006d9c:	e0822000 	add	r2, r2, r0
 e006da0:	e5840004 	str	r0, [r4, #4]
 e006da4:	e58d2080 	str	r2, [sp, #128]	; 0x80
 e006da8:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e006dac:	da000006 	ble	e006dcc <_vfprintf_r+0x1344>
 e006db0:	e28d2078 	add	r2, sp, #120	; 0x78
 e006db4:	e1a01005 	mov	r1, r5
 e006db8:	e1a00007 	mov	r0, r7
 e006dbc:	ebffeb60 	bl	e001b44 <__sprint_r>
 e006dc0:	e3500000 	cmp	r0, #0
 e006dc4:	1a000281 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e006dc8:	e28d1084 	add	r1, sp, #132	; 0x84
 e006dcc:	e2499010 	sub	r9, r9, #16
 e006dd0:	e1a04001 	mov	r4, r1
 e006dd4:	eafffe88 	b	e0067fc <_vfprintf_r+0xd74>
 e006dd8:	e59d3010 	ldr	r3, [sp, #16]
 e006ddc:	e3530065 	cmp	r3, #101	; 0x65
 e006de0:	da0001e2 	ble	e007570 <_vfprintf_r+0x1ae8>
 e006de4:	eeb58b40 	vcmp.f64	d8, #0.0
 e006de8:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e006dec:	1a00006a 	bne	e006f9c <_vfprintf_r+0x1514>
 e006df0:	e51f3918 	ldr	r3, [pc, #-2328]	; e0064e0 <_vfprintf_r+0xa58>
 e006df4:	e5843000 	str	r3, [r4]
 e006df8:	e3a03001 	mov	r3, #1
 e006dfc:	e0800003 	add	r0, r0, r3
 e006e00:	e5843004 	str	r3, [r4, #4]
 e006e04:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e006e08:	e58d0080 	str	r0, [sp, #128]	; 0x80
 e006e0c:	e2833001 	add	r3, r3, #1
 e006e10:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e006e14:	e3530007 	cmp	r3, #7
 e006e18:	d2844008 	addle	r4, r4, #8
 e006e1c:	da000006 	ble	e006e3c <_vfprintf_r+0x13b4>
 e006e20:	e28d2078 	add	r2, sp, #120	; 0x78
 e006e24:	e1a01005 	mov	r1, r5
 e006e28:	e1a00007 	mov	r0, r7
 e006e2c:	ebffeb44 	bl	e001b44 <__sprint_r>
 e006e30:	e3500000 	cmp	r0, #0
 e006e34:	1a000265 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e006e38:	e28d4084 	add	r4, sp, #132	; 0x84
 e006e3c:	e59d3060 	ldr	r3, [sp, #96]	; 0x60
 e006e40:	e59d200c 	ldr	r2, [sp, #12]
 e006e44:	e1530002 	cmp	r3, r2
 e006e48:	ba000001 	blt	e006e54 <_vfprintf_r+0x13cc>
 e006e4c:	e31b0001 	tst	fp, #1
 e006e50:	0a000019 	beq	e006ebc <_vfprintf_r+0x1434>
 e006e54:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
 e006e58:	e5843000 	str	r3, [r4]
 e006e5c:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
 e006e60:	e5843004 	str	r3, [r4, #4]
 e006e64:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
 e006e68:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
 e006e6c:	e0833002 	add	r3, r3, r2
 e006e70:	e58d3080 	str	r3, [sp, #128]	; 0x80
 e006e74:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e006e78:	e2833001 	add	r3, r3, #1
 e006e7c:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e006e80:	e3530007 	cmp	r3, #7
 e006e84:	d2844008 	addle	r4, r4, #8
 e006e88:	da000006 	ble	e006ea8 <_vfprintf_r+0x1420>
 e006e8c:	e28d2078 	add	r2, sp, #120	; 0x78
 e006e90:	e1a01005 	mov	r1, r5
 e006e94:	e1a00007 	mov	r0, r7
 e006e98:	ebffeb29 	bl	e001b44 <__sprint_r>
 e006e9c:	e3500000 	cmp	r0, #0
 e006ea0:	1a00024a 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e006ea4:	e28d4084 	add	r4, sp, #132	; 0x84
 e006ea8:	e59d300c 	ldr	r3, [sp, #12]
 e006eac:	e2436001 	sub	r6, r3, #1
 e006eb0:	e3560000 	cmp	r6, #0
 e006eb4:	c3a08010 	movgt	r8, #16
 e006eb8:	ca000027 	bgt	e006f5c <_vfprintf_r+0x14d4>
 e006ebc:	e31b0004 	tst	fp, #4
 e006ec0:	1a000229 	bne	e00776c <_vfprintf_r+0x1ce4>
 e006ec4:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
 e006ec8:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
 e006ecc:	e59d1034 	ldr	r1, [sp, #52]	; 0x34
 e006ed0:	e1520001 	cmp	r2, r1
 e006ed4:	a0833002 	addge	r3, r3, r2
 e006ed8:	b0833001 	addlt	r3, r3, r1
 e006edc:	e58d302c 	str	r3, [sp, #44]	; 0x2c
 e006ee0:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
 e006ee4:	e3530000 	cmp	r3, #0
 e006ee8:	0a000005 	beq	e006f04 <_vfprintf_r+0x147c>
 e006eec:	e28d2078 	add	r2, sp, #120	; 0x78
 e006ef0:	e1a01005 	mov	r1, r5
 e006ef4:	e1a00007 	mov	r0, r7
 e006ef8:	ebffeb11 	bl	e001b44 <__sprint_r>
 e006efc:	e3500000 	cmp	r0, #0
 e006f00:	1a000232 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e006f04:	e3a03000 	mov	r3, #0
 e006f08:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e006f0c:	e59d3008 	ldr	r3, [sp, #8]
 e006f10:	e3530000 	cmp	r3, #0
 e006f14:	1a000244 	bne	e00782c <_vfprintf_r+0x1da4>
 e006f18:	e28d4084 	add	r4, sp, #132	; 0x84
 e006f1c:	eafffeb5 	b	e0069f8 <_vfprintf_r+0xf70>
 e006f20:	e2822010 	add	r2, r2, #16
 e006f24:	e3530007 	cmp	r3, #7
 e006f28:	e5848004 	str	r8, [r4, #4]
 e006f2c:	e58d2080 	str	r2, [sp, #128]	; 0x80
 e006f30:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e006f34:	da000006 	ble	e006f54 <_vfprintf_r+0x14cc>
 e006f38:	e28d2078 	add	r2, sp, #120	; 0x78
 e006f3c:	e1a01005 	mov	r1, r5
 e006f40:	e1a00007 	mov	r0, r7
 e006f44:	ebffeafe 	bl	e001b44 <__sprint_r>
 e006f48:	e3500000 	cmp	r0, #0
 e006f4c:	1a00021f 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e006f50:	e28d1084 	add	r1, sp, #132	; 0x84
 e006f54:	e2466010 	sub	r6, r6, #16
 e006f58:	e1a04001 	mov	r4, r1
 e006f5c:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e006f60:	e2841008 	add	r1, r4, #8
 e006f64:	e51f0a88 	ldr	r0, [pc, #-2696]	; e0064e4 <_vfprintf_r+0xa5c>
 e006f68:	e3560010 	cmp	r6, #16
 e006f6c:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
 e006f70:	e2833001 	add	r3, r3, #1
 e006f74:	e5840000 	str	r0, [r4]
 e006f78:	caffffe8 	bgt	e006f20 <_vfprintf_r+0x1498>
 e006f7c:	e5846004 	str	r6, [r4, #4]
 e006f80:	e0866002 	add	r6, r6, r2
 e006f84:	e58d6080 	str	r6, [sp, #128]	; 0x80
 e006f88:	e3530007 	cmp	r3, #7
 e006f8c:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e006f90:	d1a04001 	movle	r4, r1
 e006f94:	daffffc8 	ble	e006ebc <_vfprintf_r+0x1434>
 e006f98:	eafffe3a 	b	e006888 <_vfprintf_r+0xe00>
 e006f9c:	e59d3060 	ldr	r3, [sp, #96]	; 0x60
 e006fa0:	e3530000 	cmp	r3, #0
 e006fa4:	ca00005f 	bgt	e007128 <_vfprintf_r+0x16a0>
 e006fa8:	e51f3ad0 	ldr	r3, [pc, #-2768]	; e0064e0 <_vfprintf_r+0xa58>
 e006fac:	e5843000 	str	r3, [r4]
 e006fb0:	e3a03001 	mov	r3, #1
 e006fb4:	e0800003 	add	r0, r0, r3
 e006fb8:	e5843004 	str	r3, [r4, #4]
 e006fbc:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e006fc0:	e58d0080 	str	r0, [sp, #128]	; 0x80
 e006fc4:	e2833001 	add	r3, r3, #1
 e006fc8:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e006fcc:	e3530007 	cmp	r3, #7
 e006fd0:	d2844008 	addle	r4, r4, #8
 e006fd4:	da000006 	ble	e006ff4 <_vfprintf_r+0x156c>
 e006fd8:	e28d2078 	add	r2, sp, #120	; 0x78
 e006fdc:	e1a01005 	mov	r1, r5
 e006fe0:	e1a00007 	mov	r0, r7
 e006fe4:	ebffead6 	bl	e001b44 <__sprint_r>
 e006fe8:	e3500000 	cmp	r0, #0
 e006fec:	1a0001f7 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e006ff0:	e28d4084 	add	r4, sp, #132	; 0x84
 e006ff4:	e59d100c 	ldr	r1, [sp, #12]
 e006ff8:	e59d2060 	ldr	r2, [sp, #96]	; 0x60
 e006ffc:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
 e007000:	e1812002 	orr	r2, r1, r2
 e007004:	e20b1001 	and	r1, fp, #1
 e007008:	e1922001 	orrs	r2, r2, r1
 e00700c:	0affffaa 	beq	e006ebc <_vfprintf_r+0x1434>
 e007010:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
 e007014:	e5842000 	str	r2, [r4]
 e007018:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
 e00701c:	e5842004 	str	r2, [r4, #4]
 e007020:	e0823003 	add	r3, r2, r3
 e007024:	e58d3080 	str	r3, [sp, #128]	; 0x80
 e007028:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e00702c:	e2833001 	add	r3, r3, #1
 e007030:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e007034:	e3530007 	cmp	r3, #7
 e007038:	d2844008 	addle	r4, r4, #8
 e00703c:	da000006 	ble	e00705c <_vfprintf_r+0x15d4>
 e007040:	e28d2078 	add	r2, sp, #120	; 0x78
 e007044:	e1a01005 	mov	r1, r5
 e007048:	e1a00007 	mov	r0, r7
 e00704c:	ebffeabc 	bl	e001b44 <__sprint_r>
 e007050:	e3500000 	cmp	r0, #0
 e007054:	1a0001dd 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e007058:	e28d4084 	add	r4, sp, #132	; 0x84
 e00705c:	e59d6060 	ldr	r6, [sp, #96]	; 0x60
 e007060:	e3560000 	cmp	r6, #0
 e007064:	b2666000 	rsblt	r6, r6, #0
 e007068:	b1a02004 	movlt	r2, r4
 e00706c:	b3a08010 	movlt	r8, #16
 e007070:	ba000016 	blt	e0070d0 <_vfprintf_r+0x1648>
 e007074:	e59d300c 	ldr	r3, [sp, #12]
 e007078:	e59d200c 	ldr	r2, [sp, #12]
 e00707c:	e5843004 	str	r3, [r4, #4]
 e007080:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
 e007084:	e584a000 	str	sl, [r4]
 e007088:	e0833002 	add	r3, r3, r2
 e00708c:	e58d3080 	str	r3, [sp, #128]	; 0x80
 e007090:	eafffdf6 	b	e006870 <_vfprintf_r+0xde8>
 e007094:	e2811010 	add	r1, r1, #16
 e007098:	e3530007 	cmp	r3, #7
 e00709c:	e5828004 	str	r8, [r2, #4]
 e0070a0:	e58d1080 	str	r1, [sp, #128]	; 0x80
 e0070a4:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e0070a8:	da000006 	ble	e0070c8 <_vfprintf_r+0x1640>
 e0070ac:	e28d2078 	add	r2, sp, #120	; 0x78
 e0070b0:	e1a01005 	mov	r1, r5
 e0070b4:	e1a00007 	mov	r0, r7
 e0070b8:	ebffeaa1 	bl	e001b44 <__sprint_r>
 e0070bc:	e3500000 	cmp	r0, #0
 e0070c0:	1a0001c2 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e0070c4:	e28d4084 	add	r4, sp, #132	; 0x84
 e0070c8:	e2466010 	sub	r6, r6, #16
 e0070cc:	e1a02004 	mov	r2, r4
 e0070d0:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e0070d4:	e2844008 	add	r4, r4, #8
 e0070d8:	e51f0bfc 	ldr	r0, [pc, #-3068]	; e0064e4 <_vfprintf_r+0xa5c>
 e0070dc:	e3560010 	cmp	r6, #16
 e0070e0:	e59d1080 	ldr	r1, [sp, #128]	; 0x80
 e0070e4:	e2833001 	add	r3, r3, #1
 e0070e8:	e5820000 	str	r0, [r2]
 e0070ec:	caffffe8 	bgt	e007094 <_vfprintf_r+0x160c>
 e0070f0:	e5826004 	str	r6, [r2, #4]
 e0070f4:	e3530007 	cmp	r3, #7
 e0070f8:	e0866001 	add	r6, r6, r1
 e0070fc:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e007100:	e58d6080 	str	r6, [sp, #128]	; 0x80
 e007104:	daffffda 	ble	e007074 <_vfprintf_r+0x15ec>
 e007108:	e28d2078 	add	r2, sp, #120	; 0x78
 e00710c:	e1a01005 	mov	r1, r5
 e007110:	e1a00007 	mov	r0, r7
 e007114:	ebffea8a 	bl	e001b44 <__sprint_r>
 e007118:	e3500000 	cmp	r0, #0
 e00711c:	1a0001ab 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e007120:	e28d4084 	add	r4, sp, #132	; 0x84
 e007124:	eaffffd2 	b	e007074 <_vfprintf_r+0x15ec>
 e007128:	e59d300c 	ldr	r3, [sp, #12]
 e00712c:	e1580003 	cmp	r8, r3
 e007130:	b1a09008 	movlt	r9, r8
 e007134:	a1a09003 	movge	r9, r3
 e007138:	e3590000 	cmp	r9, #0
 e00713c:	da000010 	ble	e007184 <_vfprintf_r+0x16fc>
 e007140:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e007144:	e0890000 	add	r0, r9, r0
 e007148:	e584a000 	str	sl, [r4]
 e00714c:	e2833001 	add	r3, r3, #1
 e007150:	e5849004 	str	r9, [r4, #4]
 e007154:	e3530007 	cmp	r3, #7
 e007158:	e58d0080 	str	r0, [sp, #128]	; 0x80
 e00715c:	d2844008 	addle	r4, r4, #8
 e007160:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e007164:	da000006 	ble	e007184 <_vfprintf_r+0x16fc>
 e007168:	e28d2078 	add	r2, sp, #120	; 0x78
 e00716c:	e1a01005 	mov	r1, r5
 e007170:	e1a00007 	mov	r0, r7
 e007174:	ebffea72 	bl	e001b44 <__sprint_r>
 e007178:	e3500000 	cmp	r0, #0
 e00717c:	1a000193 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e007180:	e28d4084 	add	r4, sp, #132	; 0x84
 e007184:	e3590000 	cmp	r9, #0
 e007188:	a0486009 	subge	r6, r8, r9
 e00718c:	b1a06008 	movlt	r6, r8
 e007190:	e3560000 	cmp	r6, #0
 e007194:	c3a09010 	movgt	r9, #16
 e007198:	ca000063 	bgt	e00732c <_vfprintf_r+0x18a4>
 e00719c:	e08a8008 	add	r8, sl, r8
 e0071a0:	e31b0b01 	tst	fp, #1024	; 0x400
 e0071a4:	0a000007 	beq	e0071c8 <_vfprintf_r+0x1740>
 e0071a8:	e1cd21d8 	ldrd	r2, [sp, #24]
 e0071ac:	e3520000 	cmp	r2, #0
 e0071b0:	d3530000 	cmple	r3, #0
 e0071b4:	ca000073 	bgt	e007388 <_vfprintf_r+0x1900>
 e0071b8:	e59d300c 	ldr	r3, [sp, #12]
 e0071bc:	e08a3003 	add	r3, sl, r3
 e0071c0:	e1580003 	cmp	r8, r3
 e0071c4:	21a08003 	movcs	r8, r3
 e0071c8:	e59d3060 	ldr	r3, [sp, #96]	; 0x60
 e0071cc:	e59d200c 	ldr	r2, [sp, #12]
 e0071d0:	e1530002 	cmp	r3, r2
 e0071d4:	ba000001 	blt	e0071e0 <_vfprintf_r+0x1758>
 e0071d8:	e31b0001 	tst	fp, #1
 e0071dc:	0a000014 	beq	e007234 <_vfprintf_r+0x17ac>
 e0071e0:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
 e0071e4:	e5843000 	str	r3, [r4]
 e0071e8:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
 e0071ec:	e5843004 	str	r3, [r4, #4]
 e0071f0:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
 e0071f4:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
 e0071f8:	e0833002 	add	r3, r3, r2
 e0071fc:	e58d3080 	str	r3, [sp, #128]	; 0x80
 e007200:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e007204:	e2833001 	add	r3, r3, #1
 e007208:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e00720c:	e3530007 	cmp	r3, #7
 e007210:	d2844008 	addle	r4, r4, #8
 e007214:	da000006 	ble	e007234 <_vfprintf_r+0x17ac>
 e007218:	e28d2078 	add	r2, sp, #120	; 0x78
 e00721c:	e1a01005 	mov	r1, r5
 e007220:	e1a00007 	mov	r0, r7
 e007224:	ebffea46 	bl	e001b44 <__sprint_r>
 e007228:	e3500000 	cmp	r0, #0
 e00722c:	1a000167 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e007230:	e28d4084 	add	r4, sp, #132	; 0x84
 e007234:	e59d300c 	ldr	r3, [sp, #12]
 e007238:	e59d6060 	ldr	r6, [sp, #96]	; 0x60
 e00723c:	e08a2003 	add	r2, sl, r3
 e007240:	e0436006 	sub	r6, r3, r6
 e007244:	e0422008 	sub	r2, r2, r8
 e007248:	e1560002 	cmp	r6, r2
 e00724c:	a1a06002 	movge	r6, r2
 e007250:	e3560000 	cmp	r6, #0
 e007254:	da000011 	ble	e0072a0 <_vfprintf_r+0x1818>
 e007258:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
 e00725c:	e5848000 	str	r8, [r4]
 e007260:	e0863003 	add	r3, r6, r3
 e007264:	e58d3080 	str	r3, [sp, #128]	; 0x80
 e007268:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e00726c:	e5846004 	str	r6, [r4, #4]
 e007270:	e2833001 	add	r3, r3, #1
 e007274:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e007278:	e3530007 	cmp	r3, #7
 e00727c:	d2844008 	addle	r4, r4, #8
 e007280:	da000006 	ble	e0072a0 <_vfprintf_r+0x1818>
 e007284:	e28d2078 	add	r2, sp, #120	; 0x78
 e007288:	e1a01005 	mov	r1, r5
 e00728c:	e1a00007 	mov	r0, r7
 e007290:	ebffea2b 	bl	e001b44 <__sprint_r>
 e007294:	e3500000 	cmp	r0, #0
 e007298:	1a00014c 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e00729c:	e28d4084 	add	r4, sp, #132	; 0x84
 e0072a0:	e59d8060 	ldr	r8, [sp, #96]	; 0x60
 e0072a4:	e3560000 	cmp	r6, #0
 e0072a8:	e59d300c 	ldr	r3, [sp, #12]
 e0072ac:	e0438008 	sub	r8, r3, r8
 e0072b0:	a0488006 	subge	r8, r8, r6
 e0072b4:	e3580000 	cmp	r8, #0
 e0072b8:	c3a06010 	movgt	r6, #16
 e0072bc:	dafffefe 	ble	e006ebc <_vfprintf_r+0x1434>
 e0072c0:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e0072c4:	e2841008 	add	r1, r4, #8
 e0072c8:	e51f0dec 	ldr	r0, [pc, #-3564]	; e0064e4 <_vfprintf_r+0xa5c>
 e0072cc:	e3580010 	cmp	r8, #16
 e0072d0:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
 e0072d4:	e2833001 	add	r3, r3, #1
 e0072d8:	e5840000 	str	r0, [r4]
 e0072dc:	ca000093 	bgt	e007530 <_vfprintf_r+0x1aa8>
 e0072e0:	e5848004 	str	r8, [r4, #4]
 e0072e4:	e0888002 	add	r8, r8, r2
 e0072e8:	e58d8080 	str	r8, [sp, #128]	; 0x80
 e0072ec:	eaffff25 	b	e006f88 <_vfprintf_r+0x1500>
 e0072f0:	e2822010 	add	r2, r2, #16
 e0072f4:	e3530007 	cmp	r3, #7
 e0072f8:	e5849004 	str	r9, [r4, #4]
 e0072fc:	e58d2080 	str	r2, [sp, #128]	; 0x80
 e007300:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e007304:	da000006 	ble	e007324 <_vfprintf_r+0x189c>
 e007308:	e28d2078 	add	r2, sp, #120	; 0x78
 e00730c:	e1a01005 	mov	r1, r5
 e007310:	e1a00007 	mov	r0, r7
 e007314:	ebffea0a 	bl	e001b44 <__sprint_r>
 e007318:	e3500000 	cmp	r0, #0
 e00731c:	1a00012b 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e007320:	e28d1084 	add	r1, sp, #132	; 0x84
 e007324:	e2466010 	sub	r6, r6, #16
 e007328:	e1a04001 	mov	r4, r1
 e00732c:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e007330:	e2841008 	add	r1, r4, #8
 e007334:	e51f0e58 	ldr	r0, [pc, #-3672]	; e0064e4 <_vfprintf_r+0xa5c>
 e007338:	e3560010 	cmp	r6, #16
 e00733c:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
 e007340:	e2833001 	add	r3, r3, #1
 e007344:	e5840000 	str	r0, [r4]
 e007348:	caffffe8 	bgt	e0072f0 <_vfprintf_r+0x1868>
 e00734c:	e3530007 	cmp	r3, #7
 e007350:	e5846004 	str	r6, [r4, #4]
 e007354:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e007358:	e0866002 	add	r6, r6, r2
 e00735c:	d1a04001 	movle	r4, r1
 e007360:	e58d6080 	str	r6, [sp, #128]	; 0x80
 e007364:	daffff8c 	ble	e00719c <_vfprintf_r+0x1714>
 e007368:	e28d2078 	add	r2, sp, #120	; 0x78
 e00736c:	e1a01005 	mov	r1, r5
 e007370:	e1a00007 	mov	r0, r7
 e007374:	ebffe9f2 	bl	e001b44 <__sprint_r>
 e007378:	e3500000 	cmp	r0, #0
 e00737c:	1a000113 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e007380:	e28d4084 	add	r4, sp, #132	; 0x84
 e007384:	eaffff84 	b	e00719c <_vfprintf_r+0x1714>
 e007388:	e59d3018 	ldr	r3, [sp, #24]
 e00738c:	e59d2038 	ldr	r2, [sp, #56]	; 0x38
 e007390:	e3530000 	cmp	r3, #0
 e007394:	12433001 	subne	r3, r3, #1
 e007398:	158d3018 	strne	r3, [sp, #24]
 e00739c:	059d3020 	ldreq	r3, [sp, #32]
 e0073a0:	02433001 	subeq	r3, r3, #1
 e0073a4:	058d3020 	streq	r3, [sp, #32]
 e0073a8:	059d301c 	ldreq	r3, [sp, #28]
 e0073ac:	02433001 	subeq	r3, r3, #1
 e0073b0:	058d301c 	streq	r3, [sp, #28]
 e0073b4:	e59d3044 	ldr	r3, [sp, #68]	; 0x44
 e0073b8:	e5843000 	str	r3, [r4]
 e0073bc:	e59d3038 	ldr	r3, [sp, #56]	; 0x38
 e0073c0:	e5843004 	str	r3, [r4, #4]
 e0073c4:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
 e0073c8:	e0833002 	add	r3, r3, r2
 e0073cc:	e58d3080 	str	r3, [sp, #128]	; 0x80
 e0073d0:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e0073d4:	e2833001 	add	r3, r3, #1
 e0073d8:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e0073dc:	e3530007 	cmp	r3, #7
 e0073e0:	d2844008 	addle	r4, r4, #8
 e0073e4:	da000006 	ble	e007404 <_vfprintf_r+0x197c>
 e0073e8:	e28d2078 	add	r2, sp, #120	; 0x78
 e0073ec:	e1a01005 	mov	r1, r5
 e0073f0:	e1a00007 	mov	r0, r7
 e0073f4:	ebffe9d2 	bl	e001b44 <__sprint_r>
 e0073f8:	e3500000 	cmp	r0, #0
 e0073fc:	1a0000f3 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e007400:	e28d4084 	add	r4, sp, #132	; 0x84
 e007404:	e59d300c 	ldr	r3, [sp, #12]
 e007408:	e59d2020 	ldr	r2, [sp, #32]
 e00740c:	e08a9003 	add	r9, sl, r3
 e007410:	e0493008 	sub	r3, r9, r8
 e007414:	e5d29000 	ldrb	r9, [r2]
 e007418:	e1590003 	cmp	r9, r3
 e00741c:	a1a09003 	movge	r9, r3
 e007420:	e3590000 	cmp	r9, #0
 e007424:	da000010 	ble	e00746c <_vfprintf_r+0x19e4>
 e007428:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
 e00742c:	e1c480f0 	strd	r8, [r4]
 e007430:	e0893003 	add	r3, r9, r3
 e007434:	e58d3080 	str	r3, [sp, #128]	; 0x80
 e007438:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e00743c:	e2833001 	add	r3, r3, #1
 e007440:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e007444:	e3530007 	cmp	r3, #7
 e007448:	d2844008 	addle	r4, r4, #8
 e00744c:	da000006 	ble	e00746c <_vfprintf_r+0x19e4>
 e007450:	e28d2078 	add	r2, sp, #120	; 0x78
 e007454:	e1a01005 	mov	r1, r5
 e007458:	e1a00007 	mov	r0, r7
 e00745c:	ebffe9b8 	bl	e001b44 <__sprint_r>
 e007460:	e3500000 	cmp	r0, #0
 e007464:	1a0000d9 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e007468:	e28d4084 	add	r4, sp, #132	; 0x84
 e00746c:	e59d3020 	ldr	r3, [sp, #32]
 e007470:	e3590000 	cmp	r9, #0
 e007474:	e5d36000 	ldrb	r6, [r3]
 e007478:	a0466009 	subge	r6, r6, r9
 e00747c:	e3560000 	cmp	r6, #0
 e007480:	da000015 	ble	e0074dc <_vfprintf_r+0x1a54>
 e007484:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e007488:	e2841008 	add	r1, r4, #8
 e00748c:	e51f0fb0 	ldr	r0, [pc, #-4016]	; e0064e4 <_vfprintf_r+0xa5c>
 e007490:	e3560010 	cmp	r6, #16
 e007494:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
 e007498:	e2833001 	add	r3, r3, #1
 e00749c:	e5840000 	str	r0, [r4]
 e0074a0:	ca000011 	bgt	e0074ec <_vfprintf_r+0x1a64>
 e0074a4:	e3530007 	cmp	r3, #7
 e0074a8:	e5846004 	str	r6, [r4, #4]
 e0074ac:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e0074b0:	e0866002 	add	r6, r6, r2
 e0074b4:	d1a04001 	movle	r4, r1
 e0074b8:	e58d6080 	str	r6, [sp, #128]	; 0x80
 e0074bc:	da000006 	ble	e0074dc <_vfprintf_r+0x1a54>
 e0074c0:	e28d2078 	add	r2, sp, #120	; 0x78
 e0074c4:	e1a01005 	mov	r1, r5
 e0074c8:	e1a00007 	mov	r0, r7
 e0074cc:	ebffe99c 	bl	e001b44 <__sprint_r>
 e0074d0:	e3500000 	cmp	r0, #0
 e0074d4:	1a0000bd 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e0074d8:	e28d4084 	add	r4, sp, #132	; 0x84
 e0074dc:	e59d3020 	ldr	r3, [sp, #32]
 e0074e0:	e5d33000 	ldrb	r3, [r3]
 e0074e4:	e0888003 	add	r8, r8, r3
 e0074e8:	eaffff2e 	b	e0071a8 <_vfprintf_r+0x1720>
 e0074ec:	e3a00010 	mov	r0, #16
 e0074f0:	e3530007 	cmp	r3, #7
 e0074f4:	e0822000 	add	r2, r2, r0
 e0074f8:	e5840004 	str	r0, [r4, #4]
 e0074fc:	e58d2080 	str	r2, [sp, #128]	; 0x80
 e007500:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e007504:	da000006 	ble	e007524 <_vfprintf_r+0x1a9c>
 e007508:	e28d2078 	add	r2, sp, #120	; 0x78
 e00750c:	e1a01005 	mov	r1, r5
 e007510:	e1a00007 	mov	r0, r7
 e007514:	ebffe98a 	bl	e001b44 <__sprint_r>
 e007518:	e3500000 	cmp	r0, #0
 e00751c:	1a0000ab 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e007520:	e28d1084 	add	r1, sp, #132	; 0x84
 e007524:	e2466010 	sub	r6, r6, #16
 e007528:	e1a04001 	mov	r4, r1
 e00752c:	eaffffd4 	b	e007484 <_vfprintf_r+0x19fc>
 e007530:	e2822010 	add	r2, r2, #16
 e007534:	e3530007 	cmp	r3, #7
 e007538:	e5846004 	str	r6, [r4, #4]
 e00753c:	e58d2080 	str	r2, [sp, #128]	; 0x80
 e007540:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e007544:	da000006 	ble	e007564 <_vfprintf_r+0x1adc>
 e007548:	e28d2078 	add	r2, sp, #120	; 0x78
 e00754c:	e1a01005 	mov	r1, r5
 e007550:	e1a00007 	mov	r0, r7
 e007554:	ebffe97a 	bl	e001b44 <__sprint_r>
 e007558:	e3500000 	cmp	r0, #0
 e00755c:	1a00009b 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e007560:	e28d1084 	add	r1, sp, #132	; 0x84
 e007564:	e2488010 	sub	r8, r8, #16
 e007568:	e1a04001 	mov	r4, r1
 e00756c:	eaffff53 	b	e0072c0 <_vfprintf_r+0x1838>
 e007570:	e59d207c 	ldr	r2, [sp, #124]	; 0x7c
 e007574:	e2800001 	add	r0, r0, #1
 e007578:	e59d100c 	ldr	r1, [sp, #12]
 e00757c:	e2843008 	add	r3, r4, #8
 e007580:	e2822001 	add	r2, r2, #1
 e007584:	e3510001 	cmp	r1, #1
 e007588:	ca000001 	bgt	e007594 <_vfprintf_r+0x1b0c>
 e00758c:	e31b0001 	tst	fp, #1
 e007590:	0a00006d 	beq	e00774c <_vfprintf_r+0x1cc4>
 e007594:	e3a01001 	mov	r1, #1
 e007598:	e3520007 	cmp	r2, #7
 e00759c:	e584a000 	str	sl, [r4]
 e0075a0:	e5841004 	str	r1, [r4, #4]
 e0075a4:	e58d0080 	str	r0, [sp, #128]	; 0x80
 e0075a8:	e58d207c 	str	r2, [sp, #124]	; 0x7c
 e0075ac:	da000006 	ble	e0075cc <_vfprintf_r+0x1b44>
 e0075b0:	e28d2078 	add	r2, sp, #120	; 0x78
 e0075b4:	e1a01005 	mov	r1, r5
 e0075b8:	e1a00007 	mov	r0, r7
 e0075bc:	ebffe960 	bl	e001b44 <__sprint_r>
 e0075c0:	e3500000 	cmp	r0, #0
 e0075c4:	1a000081 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e0075c8:	e28d3084 	add	r3, sp, #132	; 0x84
 e0075cc:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
 e0075d0:	e5832000 	str	r2, [r3]
 e0075d4:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
 e0075d8:	e5832004 	str	r2, [r3, #4]
 e0075dc:	e59d1028 	ldr	r1, [sp, #40]	; 0x28
 e0075e0:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
 e0075e4:	e0822001 	add	r2, r2, r1
 e0075e8:	e58d2080 	str	r2, [sp, #128]	; 0x80
 e0075ec:	e59d207c 	ldr	r2, [sp, #124]	; 0x7c
 e0075f0:	e2822001 	add	r2, r2, #1
 e0075f4:	e58d207c 	str	r2, [sp, #124]	; 0x7c
 e0075f8:	e3520007 	cmp	r2, #7
 e0075fc:	d2833008 	addle	r3, r3, #8
 e007600:	da000006 	ble	e007620 <_vfprintf_r+0x1b98>
 e007604:	e28d2078 	add	r2, sp, #120	; 0x78
 e007608:	e1a01005 	mov	r1, r5
 e00760c:	e1a00007 	mov	r0, r7
 e007610:	ebffe94b 	bl	e001b44 <__sprint_r>
 e007614:	e3500000 	cmp	r0, #0
 e007618:	1a00006c 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e00761c:	e28d3084 	add	r3, sp, #132	; 0x84
 e007620:	eeb58b40 	vcmp.f64	d8, #0.0
 e007624:	e59d200c 	ldr	r2, [sp, #12]
 e007628:	e2424001 	sub	r4, r2, #1
 e00762c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e007630:	0a000022 	beq	e0076c0 <_vfprintf_r+0x1c38>
 e007634:	e59d107c 	ldr	r1, [sp, #124]	; 0x7c
 e007638:	e28a0001 	add	r0, sl, #1
 e00763c:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
 e007640:	e2811001 	add	r1, r1, #1
 e007644:	e8830011 	stm	r3, {r0, r4}
 e007648:	e59d000c 	ldr	r0, [sp, #12]
 e00764c:	e2422001 	sub	r2, r2, #1
 e007650:	e3510007 	cmp	r1, #7
 e007654:	e58d107c 	str	r1, [sp, #124]	; 0x7c
 e007658:	e0822000 	add	r2, r2, r0
 e00765c:	d2833008 	addle	r3, r3, #8
 e007660:	e58d2080 	str	r2, [sp, #128]	; 0x80
 e007664:	da000006 	ble	e007684 <_vfprintf_r+0x1bfc>
 e007668:	e28d2078 	add	r2, sp, #120	; 0x78
 e00766c:	e1a01005 	mov	r1, r5
 e007670:	e1a00007 	mov	r0, r7
 e007674:	ebffe932 	bl	e001b44 <__sprint_r>
 e007678:	e3500000 	cmp	r0, #0
 e00767c:	1a000053 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e007680:	e28d3084 	add	r3, sp, #132	; 0x84
 e007684:	e28d2068 	add	r2, sp, #104	; 0x68
 e007688:	e5832000 	str	r2, [r3]
 e00768c:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
 e007690:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 e007694:	e5832004 	str	r2, [r3, #4]
 e007698:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
 e00769c:	e0822001 	add	r2, r2, r1
 e0076a0:	e58d2080 	str	r2, [sp, #128]	; 0x80
 e0076a4:	e59d207c 	ldr	r2, [sp, #124]	; 0x7c
 e0076a8:	e2822001 	add	r2, r2, #1
 e0076ac:	e58d207c 	str	r2, [sp, #124]	; 0x7c
 e0076b0:	e3520007 	cmp	r2, #7
 e0076b4:	d2834008 	addle	r4, r3, #8
 e0076b8:	dafffdff 	ble	e006ebc <_vfprintf_r+0x1434>
 e0076bc:	eafffc71 	b	e006888 <_vfprintf_r+0xe00>
 e0076c0:	e3540000 	cmp	r4, #0
 e0076c4:	c3a06010 	movgt	r6, #16
 e0076c8:	daffffed 	ble	e007684 <_vfprintf_r+0x1bfc>
 e0076cc:	e59d207c 	ldr	r2, [sp, #124]	; 0x7c
 e0076d0:	e2830008 	add	r0, r3, #8
 e0076d4:	e59fc2b4 	ldr	ip, [pc, #692]	; e007990 <_vfprintf_r+0x1f08>
 e0076d8:	e3540010 	cmp	r4, #16
 e0076dc:	e59d1080 	ldr	r1, [sp, #128]	; 0x80
 e0076e0:	e2822001 	add	r2, r2, #1
 e0076e4:	e583c000 	str	ip, [r3]
 e0076e8:	ca000007 	bgt	e00770c <_vfprintf_r+0x1c84>
 e0076ec:	e3520007 	cmp	r2, #7
 e0076f0:	e5834004 	str	r4, [r3, #4]
 e0076f4:	e58d207c 	str	r2, [sp, #124]	; 0x7c
 e0076f8:	e0844001 	add	r4, r4, r1
 e0076fc:	d1a03000 	movle	r3, r0
 e007700:	e58d4080 	str	r4, [sp, #128]	; 0x80
 e007704:	daffffde 	ble	e007684 <_vfprintf_r+0x1bfc>
 e007708:	eaffffd6 	b	e007668 <_vfprintf_r+0x1be0>
 e00770c:	e2811010 	add	r1, r1, #16
 e007710:	e3520007 	cmp	r2, #7
 e007714:	e5836004 	str	r6, [r3, #4]
 e007718:	e58d1080 	str	r1, [sp, #128]	; 0x80
 e00771c:	e58d207c 	str	r2, [sp, #124]	; 0x7c
 e007720:	da000006 	ble	e007740 <_vfprintf_r+0x1cb8>
 e007724:	e28d2078 	add	r2, sp, #120	; 0x78
 e007728:	e1a01005 	mov	r1, r5
 e00772c:	e1a00007 	mov	r0, r7
 e007730:	ebffe903 	bl	e001b44 <__sprint_r>
 e007734:	e3500000 	cmp	r0, #0
 e007738:	1a000024 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e00773c:	e28d0084 	add	r0, sp, #132	; 0x84
 e007740:	e2444010 	sub	r4, r4, #16
 e007744:	e1a03000 	mov	r3, r0
 e007748:	eaffffdf 	b	e0076cc <_vfprintf_r+0x1c44>
 e00774c:	e3a01001 	mov	r1, #1
 e007750:	e3520007 	cmp	r2, #7
 e007754:	e584a000 	str	sl, [r4]
 e007758:	e5841004 	str	r1, [r4, #4]
 e00775c:	e58d0080 	str	r0, [sp, #128]	; 0x80
 e007760:	e58d207c 	str	r2, [sp, #124]	; 0x7c
 e007764:	daffffc6 	ble	e007684 <_vfprintf_r+0x1bfc>
 e007768:	eaffffbe 	b	e007668 <_vfprintf_r+0x1be0>
 e00776c:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
 e007770:	e59d2034 	ldr	r2, [sp, #52]	; 0x34
 e007774:	e0436002 	sub	r6, r3, r2
 e007778:	e3560000 	cmp	r6, #0
 e00777c:	c3a09010 	movgt	r9, #16
 e007780:	c59f820c 	ldrgt	r8, [pc, #524]	; e007994 <_vfprintf_r+0x1f0c>
 e007784:	dafffdce 	ble	e006ec4 <_vfprintf_r+0x143c>
 e007788:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e00778c:	e3560010 	cmp	r6, #16
 e007790:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
 e007794:	e2833001 	add	r3, r3, #1
 e007798:	e5848000 	str	r8, [r4]
 e00779c:	ca000012 	bgt	e0077ec <_vfprintf_r+0x1d64>
 e0077a0:	e5846004 	str	r6, [r4, #4]
 e0077a4:	e3530007 	cmp	r3, #7
 e0077a8:	e0866002 	add	r6, r6, r2
 e0077ac:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e0077b0:	e58d6080 	str	r6, [sp, #128]	; 0x80
 e0077b4:	dafffdc2 	ble	e006ec4 <_vfprintf_r+0x143c>
 e0077b8:	e28d2078 	add	r2, sp, #120	; 0x78
 e0077bc:	e1a01005 	mov	r1, r5
 e0077c0:	e1a00007 	mov	r0, r7
 e0077c4:	ebffe8de 	bl	e001b44 <__sprint_r>
 e0077c8:	e3500000 	cmp	r0, #0
 e0077cc:	0afffdbc 	beq	e006ec4 <_vfprintf_r+0x143c>
 e0077d0:	e59d3008 	ldr	r3, [sp, #8]
 e0077d4:	e3530000 	cmp	r3, #0
 e0077d8:	0afffa86 	beq	e0061f8 <_vfprintf_r+0x770>
 e0077dc:	e1a01003 	mov	r1, r3
 e0077e0:	e1a00007 	mov	r0, r7
 e0077e4:	eb0002b0 	bl	e0082ac <__wrap__free_r>
 e0077e8:	eafffa82 	b	e0061f8 <_vfprintf_r+0x770>
 e0077ec:	e3530007 	cmp	r3, #7
 e0077f0:	e2822010 	add	r2, r2, #16
 e0077f4:	e5849004 	str	r9, [r4, #4]
 e0077f8:	d2844008 	addle	r4, r4, #8
 e0077fc:	e58d2080 	str	r2, [sp, #128]	; 0x80
 e007800:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e007804:	da000006 	ble	e007824 <_vfprintf_r+0x1d9c>
 e007808:	e28d2078 	add	r2, sp, #120	; 0x78
 e00780c:	e1a01005 	mov	r1, r5
 e007810:	e1a00007 	mov	r0, r7
 e007814:	ebffe8ca 	bl	e001b44 <__sprint_r>
 e007818:	e3500000 	cmp	r0, #0
 e00781c:	1affffeb 	bne	e0077d0 <_vfprintf_r+0x1d48>
 e007820:	e28d4084 	add	r4, sp, #132	; 0x84
 e007824:	e2466010 	sub	r6, r6, #16
 e007828:	eaffffd6 	b	e007788 <_vfprintf_r+0x1d00>
 e00782c:	e59d1008 	ldr	r1, [sp, #8]
 e007830:	e1a00007 	mov	r0, r7
 e007834:	eb00029c 	bl	e0082ac <__wrap__free_r>
 e007838:	eafffdb6 	b	e006f18 <_vfprintf_r+0x1490>
 e00783c:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
 e007840:	e3530000 	cmp	r3, #0
 e007844:	1a000002 	bne	e007854 <_vfprintf_r+0x1dcc>
 e007848:	e3a03000 	mov	r3, #0
 e00784c:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e007850:	eafffa68 	b	e0061f8 <_vfprintf_r+0x770>
 e007854:	e28d2078 	add	r2, sp, #120	; 0x78
 e007858:	e1a01005 	mov	r1, r5
 e00785c:	e1a00007 	mov	r0, r7
 e007860:	ebffe8b7 	bl	e001b44 <__sprint_r>
 e007864:	e3500000 	cmp	r0, #0
 e007868:	0afffff6 	beq	e007848 <_vfprintf_r+0x1dc0>
 e00786c:	eafffa61 	b	e0061f8 <_vfprintf_r+0x770>
 e007870:	e3760001 	cmn	r6, #1
 e007874:	11a0100b 	movne	r1, fp
 e007878:	13a03001 	movne	r3, #1
 e00787c:	1afffcf6 	bne	e006c5c <_vfprintf_r+0x11d4>
 e007880:	e358000a 	cmp	r8, #10
 e007884:	e2d93000 	sbcs	r3, r9, #0
 e007888:	32888030 	addcc	r8, r8, #48	; 0x30
 e00788c:	35cd8127 	strbcc	r8, [sp, #295]	; 0x127
 e007890:	3afffcff 	bcc	e006c94 <_vfprintf_r+0x120c>
 e007894:	e3a03000 	mov	r3, #0
 e007898:	e58d300c 	str	r3, [sp, #12]
 e00789c:	e28d3f4a 	add	r3, sp, #296	; 0x128
 e0078a0:	e58d3008 	str	r3, [sp, #8]
 e0078a4:	e20b3b01 	and	r3, fp, #1024	; 0x400
 e0078a8:	e58d3018 	str	r3, [sp, #24]
 e0078ac:	e59d3008 	ldr	r3, [sp, #8]
 e0078b0:	e3a0200a 	mov	r2, #10
 e0078b4:	e1a00008 	mov	r0, r8
 e0078b8:	e1a01009 	mov	r1, r9
 e0078bc:	e243a001 	sub	sl, r3, #1
 e0078c0:	e3a03000 	mov	r3, #0
 e0078c4:	ebffe2b2 	bl	e000394 <__aeabi_uldivmod>
 e0078c8:	e59d3008 	ldr	r3, [sp, #8]
 e0078cc:	e2822030 	add	r2, r2, #48	; 0x30
 e0078d0:	e5432001 	strb	r2, [r3, #-1]
 e0078d4:	e59d300c 	ldr	r3, [sp, #12]
 e0078d8:	e2833001 	add	r3, r3, #1
 e0078dc:	e58d300c 	str	r3, [sp, #12]
 e0078e0:	e59d3018 	ldr	r3, [sp, #24]
 e0078e4:	e3530000 	cmp	r3, #0
 e0078e8:	0a00001c 	beq	e007960 <_vfprintf_r+0x1ed8>
 e0078ec:	e59d3020 	ldr	r3, [sp, #32]
 e0078f0:	e358000a 	cmp	r8, #10
 e0078f4:	e59d100c 	ldr	r1, [sp, #12]
 e0078f8:	e5d32000 	ldrb	r2, [r3]
 e0078fc:	e2d93000 	sbcs	r3, r9, #0
 e007900:	23a03001 	movcs	r3, #1
 e007904:	33a03000 	movcc	r3, #0
 e007908:	e35200ff 	cmp	r2, #255	; 0xff
 e00790c:	03a03000 	moveq	r3, #0
 e007910:	12033001 	andne	r3, r3, #1
 e007914:	e1520001 	cmp	r2, r1
 e007918:	13a03000 	movne	r3, #0
 e00791c:	02033001 	andeq	r3, r3, #1
 e007920:	e3530000 	cmp	r3, #0
 e007924:	0a00000d 	beq	e007960 <_vfprintf_r+0x1ed8>
 e007928:	e59d3038 	ldr	r3, [sp, #56]	; 0x38
 e00792c:	e59d1044 	ldr	r1, [sp, #68]	; 0x44
 e007930:	e04aa003 	sub	sl, sl, r3
 e007934:	e1a02003 	mov	r2, r3
 e007938:	e1a0000a 	mov	r0, sl
 e00793c:	ebffe856 	bl	e001a9c <strncpy>
 e007940:	e59d3020 	ldr	r3, [sp, #32]
 e007944:	e5d33001 	ldrb	r3, [r3, #1]
 e007948:	e3530000 	cmp	r3, #0
 e00794c:	159d3020 	ldrne	r3, [sp, #32]
 e007950:	12833001 	addne	r3, r3, #1
 e007954:	158d3020 	strne	r3, [sp, #32]
 e007958:	13a03000 	movne	r3, #0
 e00795c:	e58d300c 	str	r3, [sp, #12]
 e007960:	e3a03000 	mov	r3, #0
 e007964:	e3a0200a 	mov	r2, #10
 e007968:	e1a00008 	mov	r0, r8
 e00796c:	e1a01009 	mov	r1, r9
 e007970:	ebffe287 	bl	e000394 <__aeabi_uldivmod>
 e007974:	e358000a 	cmp	r8, #10
 e007978:	e2d93000 	sbcs	r3, r9, #0
 e00797c:	3afff9c7 	bcc	e0060a0 <_vfprintf_r+0x618>
 e007980:	e1a08000 	mov	r8, r0
 e007984:	e1a09001 	mov	r9, r1
 e007988:	e58da008 	str	sl, [sp, #8]
 e00798c:	eaffffc6 	b	e0078ac <_vfprintf_r+0x1e24>
 e007990:	0e013c98 	.word	0x0e013c98
 e007994:	0e013c88 	.word	0x0e013c88

0e007998 <vfprintf>:
 e007998:	e1a03002 	mov	r3, r2
 e00799c:	e1a02001 	mov	r2, r1
 e0079a0:	e1a01000 	mov	r1, r0
 e0079a4:	e59f0004 	ldr	r0, [pc, #4]	; e0079b0 <vfprintf+0x18>
 e0079a8:	e5900000 	ldr	r0, [r0]
 e0079ac:	eafff835 	b	e005a88 <_vfprintf_r>
 e0079b0:	60095000 	.word	0x60095000

0e0079b4 <__sbprintf>:
 e0079b4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e0079b8:	e1a08003 	mov	r8, r3
 e0079bc:	e1d130bc 	ldrh	r3, [r1, #12]
 e0079c0:	e24dde46 	sub	sp, sp, #1120	; 0x460
 e0079c4:	e1a05002 	mov	r5, r2
 e0079c8:	e24dd008 	sub	sp, sp, #8
 e0079cc:	e3c33002 	bic	r3, r3, #2
 e0079d0:	e1a0700d 	mov	r7, sp
 e0079d4:	e1a06000 	mov	r6, r0
 e0079d8:	e28d0058 	add	r0, sp, #88	; 0x58
 e0079dc:	e1a04001 	mov	r4, r1
 e0079e0:	e1c730bc 	strh	r3, [r7, #12]
 e0079e4:	e5913064 	ldr	r3, [r1, #100]	; 0x64
 e0079e8:	e58d3064 	str	r3, [sp, #100]	; 0x64
 e0079ec:	e1d130be 	ldrh	r3, [r1, #14]
 e0079f0:	e1c730be 	strh	r3, [r7, #14]
 e0079f4:	e5913020 	ldr	r3, [r1, #32]
 e0079f8:	e58d3020 	str	r3, [sp, #32]
 e0079fc:	e5913028 	ldr	r3, [r1, #40]	; 0x28
 e007a00:	e58d3028 	str	r3, [sp, #40]	; 0x28
 e007a04:	e28d3068 	add	r3, sp, #104	; 0x68
 e007a08:	e58d3000 	str	r3, [sp]
 e007a0c:	e58d3010 	str	r3, [sp, #16]
 e007a10:	e3a03b01 	mov	r3, #1024	; 0x400
 e007a14:	e58d3008 	str	r3, [sp, #8]
 e007a18:	e58d3014 	str	r3, [sp, #20]
 e007a1c:	e3a03000 	mov	r3, #0
 e007a20:	e58d3018 	str	r3, [sp, #24]
 e007a24:	ebffe4d7 	bl	e000d88 <__retarget_lock_init_recursive>
 e007a28:	e1a02005 	mov	r2, r5
 e007a2c:	e1a03008 	mov	r3, r8
 e007a30:	e1a01007 	mov	r1, r7
 e007a34:	e1a00006 	mov	r0, r6
 e007a38:	ebfff812 	bl	e005a88 <_vfprintf_r>
 e007a3c:	e2505000 	subs	r5, r0, #0
 e007a40:	ba000004 	blt	e007a58 <__sbprintf+0xa4>
 e007a44:	e1a01007 	mov	r1, r7
 e007a48:	e1a00006 	mov	r0, r6
 e007a4c:	ebffe343 	bl	e000760 <_fflush_r>
 e007a50:	e3500000 	cmp	r0, #0
 e007a54:	13e05000 	mvnne	r5, #0
 e007a58:	e1dd30bc 	ldrh	r3, [sp, #12]
 e007a5c:	e59d0058 	ldr	r0, [sp, #88]	; 0x58
 e007a60:	e3130040 	tst	r3, #64	; 0x40
 e007a64:	11d430bc 	ldrhne	r3, [r4, #12]
 e007a68:	13833040 	orrne	r3, r3, #64	; 0x40
 e007a6c:	11c430bc 	strhne	r3, [r4, #12]
 e007a70:	ebffe4c6 	bl	e000d90 <__retarget_lock_close_recursive>
 e007a74:	e1a00005 	mov	r0, r5
 e007a78:	e28dde46 	add	sp, sp, #1120	; 0x460
 e007a7c:	e28dd008 	add	sp, sp, #8
 e007a80:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0e007a84 <__swbuf_r>:
 e007a84:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e007a88:	e1a06001 	mov	r6, r1
 e007a8c:	e1a04002 	mov	r4, r2
 e007a90:	e2505000 	subs	r5, r0, #0
 e007a94:	0a000003 	beq	e007aa8 <__swbuf_r+0x24>
 e007a98:	e5953018 	ldr	r3, [r5, #24]
 e007a9c:	e3530000 	cmp	r3, #0
 e007aa0:	1a000000 	bne	e007aa8 <__swbuf_r+0x24>
 e007aa4:	ebffe3d5 	bl	e000a00 <__sinit>
 e007aa8:	e5943018 	ldr	r3, [r4, #24]
 e007aac:	e5843008 	str	r3, [r4, #8]
 e007ab0:	e1d430bc 	ldrh	r3, [r4, #12]
 e007ab4:	e3130008 	tst	r3, #8
 e007ab8:	0a00002a 	beq	e007b68 <__swbuf_r+0xe4>
 e007abc:	e5943010 	ldr	r3, [r4, #16]
 e007ac0:	e3530000 	cmp	r3, #0
 e007ac4:	0a000027 	beq	e007b68 <__swbuf_r+0xe4>
 e007ac8:	e1d430fc 	ldrsh	r3, [r4, #12]
 e007acc:	e6ef6076 	uxtb	r6, r6
 e007ad0:	e1a07006 	mov	r7, r6
 e007ad4:	e3130a02 	tst	r3, #8192	; 0x2000
 e007ad8:	0a000029 	beq	e007b84 <__swbuf_r+0x100>
 e007adc:	e5943010 	ldr	r3, [r4, #16]
 e007ae0:	e5940000 	ldr	r0, [r4]
 e007ae4:	e0400003 	sub	r0, r0, r3
 e007ae8:	e5943014 	ldr	r3, [r4, #20]
 e007aec:	e1530000 	cmp	r3, r0
 e007af0:	ca000004 	bgt	e007b08 <__swbuf_r+0x84>
 e007af4:	e1a01004 	mov	r1, r4
 e007af8:	e1a00005 	mov	r0, r5
 e007afc:	ebffe317 	bl	e000760 <_fflush_r>
 e007b00:	e3500000 	cmp	r0, #0
 e007b04:	1a00001c 	bne	e007b7c <__swbuf_r+0xf8>
 e007b08:	e5943008 	ldr	r3, [r4, #8]
 e007b0c:	e2800001 	add	r0, r0, #1
 e007b10:	e2433001 	sub	r3, r3, #1
 e007b14:	e5843008 	str	r3, [r4, #8]
 e007b18:	e5943000 	ldr	r3, [r4]
 e007b1c:	e2832001 	add	r2, r3, #1
 e007b20:	e5842000 	str	r2, [r4]
 e007b24:	e5c36000 	strb	r6, [r3]
 e007b28:	e5943014 	ldr	r3, [r4, #20]
 e007b2c:	e1530000 	cmp	r3, r0
 e007b30:	0a000005 	beq	e007b4c <__swbuf_r+0xc8>
 e007b34:	e1d430bc 	ldrh	r3, [r4, #12]
 e007b38:	e356000a 	cmp	r6, #10
 e007b3c:	13a03000 	movne	r3, #0
 e007b40:	02033001 	andeq	r3, r3, #1
 e007b44:	e3530000 	cmp	r3, #0
 e007b48:	0a000004 	beq	e007b60 <__swbuf_r+0xdc>
 e007b4c:	e1a01004 	mov	r1, r4
 e007b50:	e1a00005 	mov	r0, r5
 e007b54:	ebffe301 	bl	e000760 <_fflush_r>
 e007b58:	e3500000 	cmp	r0, #0
 e007b5c:	1a000006 	bne	e007b7c <__swbuf_r+0xf8>
 e007b60:	e1a00007 	mov	r0, r7
 e007b64:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e007b68:	e1a01004 	mov	r1, r4
 e007b6c:	e1a00005 	mov	r0, r5
 e007b70:	ebffec24 	bl	e002c08 <__swsetup_r>
 e007b74:	e3500000 	cmp	r0, #0
 e007b78:	0affffd2 	beq	e007ac8 <__swbuf_r+0x44>
 e007b7c:	e3e07000 	mvn	r7, #0
 e007b80:	eafffff6 	b	e007b60 <__swbuf_r+0xdc>
 e007b84:	e3833a02 	orr	r3, r3, #8192	; 0x2000
 e007b88:	e1c430bc 	strh	r3, [r4, #12]
 e007b8c:	e5943064 	ldr	r3, [r4, #100]	; 0x64
 e007b90:	e3c33a02 	bic	r3, r3, #8192	; 0x2000
 e007b94:	e5843064 	str	r3, [r4, #100]	; 0x64
 e007b98:	eaffffcf 	b	e007adc <__swbuf_r+0x58>

0e007b9c <__swbuf>:
 e007b9c:	e59f300c 	ldr	r3, [pc, #12]	; e007bb0 <__swbuf+0x14>
 e007ba0:	e1a02001 	mov	r2, r1
 e007ba4:	e1a01000 	mov	r1, r0
 e007ba8:	e5930000 	ldr	r0, [r3]
 e007bac:	eaffffb4 	b	e007a84 <__swbuf_r>
 e007bb0:	60095000 	.word	0x60095000

0e007bb4 <_wcrtomb_r>:
 e007bb4:	e59fc038 	ldr	ip, [pc, #56]	; e007bf4 <_wcrtomb_r+0x40>
 e007bb8:	e92d407f 	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 e007bbc:	e1a05003 	mov	r5, r3
 e007bc0:	e1a04000 	mov	r4, r0
 e007bc4:	e59c60e0 	ldr	r6, [ip, #224]	; 0xe0
 e007bc8:	e251c000 	subs	ip, r1, #0
 e007bcc:	01a0200c 	moveq	r2, ip
 e007bd0:	028d1004 	addeq	r1, sp, #4
 e007bd4:	e12fff36 	blx	r6
 e007bd8:	e3700001 	cmn	r0, #1
 e007bdc:	03a03000 	moveq	r3, #0
 e007be0:	05853000 	streq	r3, [r5]
 e007be4:	03a0308a 	moveq	r3, #138	; 0x8a
 e007be8:	05843000 	streq	r3, [r4]
 e007bec:	e28dd010 	add	sp, sp, #16
 e007bf0:	e8bd8070 	pop	{r4, r5, r6, pc}
 e007bf4:	600950f4 	.word	0x600950f4

0e007bf8 <wcrtomb>:
 e007bf8:	e1a03002 	mov	r3, r2
 e007bfc:	e1a02001 	mov	r2, r1
 e007c00:	e1a01000 	mov	r1, r0
 e007c04:	e59f0004 	ldr	r0, [pc, #4]	; e007c10 <wcrtomb+0x18>
 e007c08:	e5900000 	ldr	r0, [r0]
 e007c0c:	eaffffe8 	b	e007bb4 <_wcrtomb_r>
 e007c10:	60095000 	.word	0x60095000

0e007c14 <_wctomb_r>:
 e007c14:	e59fc010 	ldr	ip, [pc, #16]	; e007c2c <_wctomb_r+0x18>
 e007c18:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e007c1c:	e59ce0e0 	ldr	lr, [ip, #224]	; 0xe0
 e007c20:	e1a0c00e 	mov	ip, lr
 e007c24:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 e007c28:	e12fff1c 	bx	ip
 e007c2c:	600950f4 	.word	0x600950f4

0e007c30 <__ascii_wctomb>:
 e007c30:	e1a03000 	mov	r3, r0
 e007c34:	e2510000 	subs	r0, r1, #0
 e007c38:	012fff1e 	bxeq	lr
 e007c3c:	e35200ff 	cmp	r2, #255	; 0xff
 e007c40:	95c02000 	strbls	r2, [r0]
 e007c44:	83a0208a 	movhi	r2, #138	; 0x8a
 e007c48:	85832000 	strhi	r2, [r3]
 e007c4c:	83e00000 	mvnhi	r0, #0
 e007c50:	93a00001 	movls	r0, #1
 e007c54:	e12fff1e 	bx	lr

0e007c58 <_fstat_r>:
 e007c58:	e92d4070 	push	{r4, r5, r6, lr}
 e007c5c:	e1a04000 	mov	r4, r0
 e007c60:	e59f5028 	ldr	r5, [pc, #40]	; e007c90 <_fstat_r+0x38>
 e007c64:	e1a00001 	mov	r0, r1
 e007c68:	e1a01002 	mov	r1, r2
 e007c6c:	e3a03000 	mov	r3, #0
 e007c70:	e5853000 	str	r3, [r5]
 e007c74:	eb00029a 	bl	e0086e4 <_fstat>
 e007c78:	e3700001 	cmn	r0, #1
 e007c7c:	18bd8070 	popne	{r4, r5, r6, pc}
 e007c80:	e5953000 	ldr	r3, [r5]
 e007c84:	e3530000 	cmp	r3, #0
 e007c88:	15843000 	strne	r3, [r4]
 e007c8c:	e8bd8070 	pop	{r4, r5, r6, pc}
 e007c90:	600a3160 	.word	0x600a3160

0e007c94 <_isatty_r>:
 e007c94:	e92d4070 	push	{r4, r5, r6, lr}
 e007c98:	e1a04000 	mov	r4, r0
 e007c9c:	e59f5024 	ldr	r5, [pc, #36]	; e007cc8 <_isatty_r+0x34>
 e007ca0:	e1a00001 	mov	r0, r1
 e007ca4:	e3a03000 	mov	r3, #0
 e007ca8:	e5853000 	str	r3, [r5]
 e007cac:	eb000284 	bl	e0086c4 <_isatty>
 e007cb0:	e3700001 	cmn	r0, #1
 e007cb4:	18bd8070 	popne	{r4, r5, r6, pc}
 e007cb8:	e5953000 	ldr	r3, [r5]
 e007cbc:	e3530000 	cmp	r3, #0
 e007cc0:	15843000 	strne	r3, [r4]
 e007cc4:	e8bd8070 	pop	{r4, r5, r6, pc}
 e007cc8:	600a3160 	.word	0x600a3160

0e007ccc <__udivsi3>:
 e007ccc:	e2512001 	subs	r2, r1, #1
 e007cd0:	012fff1e 	bxeq	lr
 e007cd4:	3a000023 	bcc	e007d68 <__udivsi3+0x9c>
 e007cd8:	e1500001 	cmp	r0, r1
 e007cdc:	9a00001a 	bls	e007d4c <__udivsi3+0x80>
 e007ce0:	e1110002 	tst	r1, r2
 e007ce4:	0a00001b 	beq	e007d58 <__udivsi3+0x8c>
 e007ce8:	e16f3f11 	clz	r3, r1
 e007cec:	e16f2f10 	clz	r2, r0
 e007cf0:	e0432002 	sub	r2, r3, r2
 e007cf4:	e3a03001 	mov	r3, #1
 e007cf8:	e1a01211 	lsl	r1, r1, r2
 e007cfc:	e1a03213 	lsl	r3, r3, r2
 e007d00:	e3a02000 	mov	r2, #0
 e007d04:	e1500001 	cmp	r0, r1
 e007d08:	20400001 	subcs	r0, r0, r1
 e007d0c:	21822003 	orrcs	r2, r2, r3
 e007d10:	e15000a1 	cmp	r0, r1, lsr #1
 e007d14:	204000a1 	subcs	r0, r0, r1, lsr #1
 e007d18:	218220a3 	orrcs	r2, r2, r3, lsr #1
 e007d1c:	e1500121 	cmp	r0, r1, lsr #2
 e007d20:	20400121 	subcs	r0, r0, r1, lsr #2
 e007d24:	21822123 	orrcs	r2, r2, r3, lsr #2
 e007d28:	e15001a1 	cmp	r0, r1, lsr #3
 e007d2c:	204001a1 	subcs	r0, r0, r1, lsr #3
 e007d30:	218221a3 	orrcs	r2, r2, r3, lsr #3
 e007d34:	e3500000 	cmp	r0, #0
 e007d38:	11b03223 	lsrsne	r3, r3, #4
 e007d3c:	11a01221 	lsrne	r1, r1, #4
 e007d40:	1affffef 	bne	e007d04 <__udivsi3+0x38>
 e007d44:	e1a00002 	mov	r0, r2
 e007d48:	e12fff1e 	bx	lr
 e007d4c:	03a00001 	moveq	r0, #1
 e007d50:	13a00000 	movne	r0, #0
 e007d54:	e12fff1e 	bx	lr
 e007d58:	e16f2f11 	clz	r2, r1
 e007d5c:	e262201f 	rsb	r2, r2, #31
 e007d60:	e1a00230 	lsr	r0, r0, r2
 e007d64:	e12fff1e 	bx	lr
 e007d68:	e3500000 	cmp	r0, #0
 e007d6c:	13e00000 	mvnne	r0, #0
 e007d70:	eaffe1e4 	b	e000508 <__aeabi_idiv0>

0e007d74 <__aeabi_uidivmod>:
 e007d74:	e3510000 	cmp	r1, #0
 e007d78:	0afffffa 	beq	e007d68 <__udivsi3+0x9c>
 e007d7c:	e92d4003 	push	{r0, r1, lr}
 e007d80:	ebffffd1 	bl	e007ccc <__udivsi3>
 e007d84:	e8bd4006 	pop	{r1, r2, lr}
 e007d88:	e0030092 	mul	r3, r2, r0
 e007d8c:	e0411003 	sub	r1, r1, r3
 e007d90:	e12fff1e 	bx	lr

0e007d94 <__divsi3>:
 e007d94:	e3510000 	cmp	r1, #0
 e007d98:	0a000030 	beq	e007e60 <.divsi3_skip_div0_test+0xc4>

0e007d9c <.divsi3_skip_div0_test>:
 e007d9c:	e020c001 	eor	ip, r0, r1
 e007da0:	42611000 	rsbmi	r1, r1, #0
 e007da4:	e2512001 	subs	r2, r1, #1
 e007da8:	0a00001f 	beq	e007e2c <.divsi3_skip_div0_test+0x90>
 e007dac:	e1b03000 	movs	r3, r0
 e007db0:	42603000 	rsbmi	r3, r0, #0
 e007db4:	e1530001 	cmp	r3, r1
 e007db8:	9a00001e 	bls	e007e38 <.divsi3_skip_div0_test+0x9c>
 e007dbc:	e1110002 	tst	r1, r2
 e007dc0:	0a000020 	beq	e007e48 <.divsi3_skip_div0_test+0xac>
 e007dc4:	e16f2f11 	clz	r2, r1
 e007dc8:	e16f0f13 	clz	r0, r3
 e007dcc:	e0420000 	sub	r0, r2, r0
 e007dd0:	e3a02001 	mov	r2, #1
 e007dd4:	e1a01011 	lsl	r1, r1, r0
 e007dd8:	e1a02012 	lsl	r2, r2, r0
 e007ddc:	e3a00000 	mov	r0, #0
 e007de0:	e1530001 	cmp	r3, r1
 e007de4:	20433001 	subcs	r3, r3, r1
 e007de8:	21800002 	orrcs	r0, r0, r2
 e007dec:	e15300a1 	cmp	r3, r1, lsr #1
 e007df0:	204330a1 	subcs	r3, r3, r1, lsr #1
 e007df4:	218000a2 	orrcs	r0, r0, r2, lsr #1
 e007df8:	e1530121 	cmp	r3, r1, lsr #2
 e007dfc:	20433121 	subcs	r3, r3, r1, lsr #2
 e007e00:	21800122 	orrcs	r0, r0, r2, lsr #2
 e007e04:	e15301a1 	cmp	r3, r1, lsr #3
 e007e08:	204331a1 	subcs	r3, r3, r1, lsr #3
 e007e0c:	218001a2 	orrcs	r0, r0, r2, lsr #3
 e007e10:	e3530000 	cmp	r3, #0
 e007e14:	11b02222 	lsrsne	r2, r2, #4
 e007e18:	11a01221 	lsrne	r1, r1, #4
 e007e1c:	1affffef 	bne	e007de0 <.divsi3_skip_div0_test+0x44>
 e007e20:	e35c0000 	cmp	ip, #0
 e007e24:	42600000 	rsbmi	r0, r0, #0
 e007e28:	e12fff1e 	bx	lr
 e007e2c:	e13c0000 	teq	ip, r0
 e007e30:	42600000 	rsbmi	r0, r0, #0
 e007e34:	e12fff1e 	bx	lr
 e007e38:	33a00000 	movcc	r0, #0
 e007e3c:	01a00fcc 	asreq	r0, ip, #31
 e007e40:	03800001 	orreq	r0, r0, #1
 e007e44:	e12fff1e 	bx	lr
 e007e48:	e16f2f11 	clz	r2, r1
 e007e4c:	e262201f 	rsb	r2, r2, #31
 e007e50:	e35c0000 	cmp	ip, #0
 e007e54:	e1a00233 	lsr	r0, r3, r2
 e007e58:	42600000 	rsbmi	r0, r0, #0
 e007e5c:	e12fff1e 	bx	lr
 e007e60:	e3500000 	cmp	r0, #0
 e007e64:	c3e00102 	mvngt	r0, #-2147483648	; 0x80000000
 e007e68:	b3a00102 	movlt	r0, #-2147483648	; 0x80000000
 e007e6c:	eaffe1a5 	b	e000508 <__aeabi_idiv0>

0e007e70 <__aeabi_idivmod>:
 e007e70:	e3510000 	cmp	r1, #0
 e007e74:	0afffff9 	beq	e007e60 <.divsi3_skip_div0_test+0xc4>
 e007e78:	e92d4003 	push	{r0, r1, lr}
 e007e7c:	ebffffc6 	bl	e007d9c <.divsi3_skip_div0_test>
 e007e80:	e8bd4006 	pop	{r1, r2, lr}
 e007e84:	e0030092 	mul	r3, r2, r0
 e007e88:	e0411003 	sub	r1, r1, r3
 e007e8c:	e12fff1e 	bx	lr

0e007e90 <_exit>:
 e007e90:	eafffffe 	b	e007e90 <_exit>

0e007e94 <os_heap_init>:
 e007e94:	e92d4800 	push	{fp, lr}
 e007e98:	e28db004 	add	fp, sp, #4
 e007e9c:	e3003000 	movw	r3, #0
 e007ea0:	e3403075 	movt	r3, #117	; 0x75
 e007ea4:	e1a01003 	mov	r1, r3
 e007ea8:	e3000000 	movw	r0, #0
 e007eac:	e346000b 	movt	r0, #24587	; 0x600b
 e007eb0:	eb000025 	bl	e007f4c <os_heap_add>
 e007eb4:	e3033194 	movw	r3, #12692	; 0x3194
 e007eb8:	e346300a 	movt	r3, #24586	; 0x600a
 e007ebc:	e5d33000 	ldrb	r3, [r3]
 e007ec0:	e3530000 	cmp	r3, #0
 e007ec4:	0a000000 	beq	e007ecc <os_heap_init+0x38>
 e007ec8:	eb000004 	bl	e007ee0 <os_heap_sort>
 e007ecc:	e3030164 	movw	r0, #12644	; 0x3164
 e007ed0:	e346000a 	movt	r0, #24586	; 0x600a
 e007ed4:	eb002d54 	bl	e01342c <vPortDefineHeapRegions>
 e007ed8:	e320f000 	nop	{0}
 e007edc:	e8bd8800 	pop	{fp, pc}

0e007ee0 <os_heap_sort>:
 e007ee0:	e3033194 	movw	r3, #12692	; 0x3194
 e007ee4:	e346300a 	movt	r3, #24586	; 0x600a
 e007ee8:	e92d4070 	push	{r4, r5, r6, lr}
 e007eec:	e5d35000 	ldrb	r5, [r3]
 e007ef0:	e2455001 	sub	r5, r5, #1
 e007ef4:	e3550000 	cmp	r5, #0
 e007ef8:	d8bd8070 	pople	{r4, r5, r6, pc}
 e007efc:	e3036164 	movw	r6, #12644	; 0x3164
 e007f00:	e346600a 	movt	r6, #24586	; 0x600a
 e007f04:	e086e185 	add	lr, r6, r5, lsl #3
 e007f08:	e1a03006 	mov	r3, r6
 e007f0c:	e5931008 	ldr	r1, [r3, #8]
 e007f10:	e593c000 	ldr	ip, [r3]
 e007f14:	e2832008 	add	r2, r3, #8
 e007f18:	e15c0001 	cmp	ip, r1
 e007f1c:	85934004 	ldrhi	r4, [r3, #4]
 e007f20:	81c200d0 	ldrdhi	r0, [r2]
 e007f24:	81c300f0 	strdhi	r0, [r3]
 e007f28:	8583c008 	strhi	ip, [r3, #8]
 e007f2c:	8583400c 	strhi	r4, [r3, #12]
 e007f30:	e1a03002 	mov	r3, r2
 e007f34:	e152000e 	cmp	r2, lr
 e007f38:	1afffff3 	bne	e007f0c <os_heap_sort+0x2c>
 e007f3c:	e24ee008 	sub	lr, lr, #8
 e007f40:	e2555001 	subs	r5, r5, #1
 e007f44:	1affffef 	bne	e007f08 <os_heap_sort+0x28>
 e007f48:	e8bd8070 	pop	{r4, r5, r6, pc}

0e007f4c <os_heap_add>:
 e007f4c:	e303c194 	movw	ip, #12692	; 0x3194
 e007f50:	e346c00a 	movt	ip, #24586	; 0x600a
 e007f54:	e92d4010 	push	{r4, lr}
 e007f58:	e5dc3000 	ldrb	r3, [ip]
 e007f5c:	e3530005 	cmp	r3, #5
 e007f60:	8a00000f 	bhi	e007fa4 <os_heap_add+0x58>
 e007f64:	e3032164 	movw	r2, #12644	; 0x3164
 e007f68:	e346200a 	movt	r2, #24586	; 0x600a
 e007f6c:	e3510000 	cmp	r1, #0
 e007f70:	e082e183 	add	lr, r2, r3, lsl #3
 e007f74:	e7820183 	str	r0, [r2, r3, lsl #3]
 e007f78:	13032198 	movwne	r2, #12696	; 0x3198
 e007f7c:	1346200a 	movtne	r2, #24586	; 0x600a
 e007f80:	e58e1004 	str	r1, [lr, #4]
 e007f84:	12833001 	addne	r3, r3, #1
 e007f88:	1592e000 	ldrne	lr, [r2]
 e007f8c:	13a00001 	movne	r0, #1
 e007f90:	108e1001 	addne	r1, lr, r1
 e007f94:	15cc3000 	strbne	r3, [ip]
 e007f98:	01a00001 	moveq	r0, r1
 e007f9c:	15821000 	strne	r1, [r2]
 e007fa0:	e8bd8010 	pop	{r4, pc}
 e007fa4:	e30309d8 	movw	r0, #14808	; 0x39d8
 e007fa8:	e3400e01 	movt	r0, #3585	; 0xe01
 e007fac:	e3a01026 	mov	r1, #38	; 0x26
 e007fb0:	eb001cf0 	bl	e00f378 <io_assert_failed>

0e007fb4 <rtos_critical_is_in_interrupt>:
 e007fb4:	e10f3000 	mrs	r3, CPSR
 e007fb8:	e203301f 	and	r3, r3, #31
 e007fbc:	e3530010 	cmp	r3, #16
 e007fc0:	0a000004 	beq	e007fd8 <rtos_critical_is_in_interrupt+0x24>
 e007fc4:	e10f0000 	mrs	r0, CPSR
 e007fc8:	e200001f 	and	r0, r0, #31
 e007fcc:	e250001f 	subs	r0, r0, #31
 e007fd0:	13a00001 	movne	r0, #1
 e007fd4:	e12fff1e 	bx	lr
 e007fd8:	e3a00000 	mov	r0, #0
 e007fdc:	e12fff1e 	bx	lr

0e007fe0 <rtos_mem_init>:
 e007fe0:	eaffffab 	b	e007e94 <os_heap_init>

0e007fe4 <rtos_mem_malloc>:
 e007fe4:	ea002ca0 	b	e01326c <pvPortMalloc>

0e007fe8 <rtos_mem_zmalloc>:
 e007fe8:	e92d4070 	push	{r4, r5, r6, lr}
 e007fec:	e1a05000 	mov	r5, r0
 e007ff0:	eb002c9d 	bl	e01326c <pvPortMalloc>
 e007ff4:	e2504000 	subs	r4, r0, #0
 e007ff8:	0a000002 	beq	e008008 <rtos_mem_zmalloc+0x20>
 e007ffc:	e1a02005 	mov	r2, r5
 e008000:	e3a01000 	mov	r1, #0
 e008004:	ebffe4e7 	bl	e0013a8 <memset>
 e008008:	e1a00004 	mov	r0, r4
 e00800c:	e8bd8070 	pop	{r4, r5, r6, pc}

0e008010 <rtos_mem_calloc>:
 e008010:	e92d4070 	push	{r4, r5, r6, lr}
 e008014:	e0050091 	mul	r5, r1, r0
 e008018:	e1a00005 	mov	r0, r5
 e00801c:	eb002c92 	bl	e01326c <pvPortMalloc>
 e008020:	e2504000 	subs	r4, r0, #0
 e008024:	0a000002 	beq	e008034 <rtos_mem_calloc+0x24>
 e008028:	e1a02005 	mov	r2, r5
 e00802c:	e3a01000 	mov	r1, #0
 e008030:	ebffe4dc 	bl	e0013a8 <memset>
 e008034:	e1a00004 	mov	r0, r4
 e008038:	e8bd8070 	pop	{r4, r5, r6, pc}

0e00803c <rtos_mem_realloc>:
 e00803c:	ea002d32 	b	e01350c <pvPortReAlloc>

0e008040 <rtos_mem_free>:
 e008040:	e3500000 	cmp	r0, #0
 e008044:	012fff1e 	bxeq	lr
 e008048:	ea002cd5 	b	e0133a4 <vPortFree>

0e00804c <rtos_sema_create_binary>:
 e00804c:	e92d4010 	push	{r4, lr}
 e008050:	e2504000 	subs	r4, r0, #0
 e008054:	0a000008 	beq	e00807c <rtos_sema_create_binary+0x30>
 e008058:	e3a02003 	mov	r2, #3
 e00805c:	e3a01000 	mov	r1, #0
 e008060:	e3a00001 	mov	r0, #1
 e008064:	eb00289f 	bl	e0122e8 <xQueueGenericCreate>
 e008068:	e16f3f10 	clz	r3, r0
 e00806c:	e5840000 	str	r0, [r4]
 e008070:	e1a032a3 	lsr	r3, r3, #5
 e008074:	e2630000 	rsb	r0, r3, #0
 e008078:	e8bd8010 	pop	{r4, pc}
 e00807c:	e3e00000 	mvn	r0, #0
 e008080:	e8bd8010 	pop	{r4, pc}

0e008084 <rtos_sema_take>:
 e008084:	e92d4070 	push	{r4, r5, r6, lr}
 e008088:	e3a06000 	mov	r6, #0
 e00808c:	e24dd008 	sub	sp, sp, #8
 e008090:	e1a04000 	mov	r4, r0
 e008094:	e1a05001 	mov	r5, r1
 e008098:	e58d6004 	str	r6, [sp, #4]
 e00809c:	ebffffc4 	bl	e007fb4 <rtos_critical_is_in_interrupt>
 e0080a0:	e1500006 	cmp	r0, r6
 e0080a4:	0a00000b 	beq	e0080d8 <rtos_sema_take+0x54>
 e0080a8:	e1a00004 	mov	r0, r4
 e0080ac:	e28d2004 	add	r2, sp, #4
 e0080b0:	e1a01006 	mov	r1, r6
 e0080b4:	eb002a86 	bl	e012ad4 <xQueueReceiveFromISR>
 e0080b8:	e1a04000 	mov	r4, r0
 e0080bc:	e3500001 	cmp	r0, #1
 e0080c0:	1a000013 	bne	e008114 <rtos_sema_take+0x90>
 e0080c4:	e59d0004 	ldr	r0, [sp, #4]
 e0080c8:	e1500006 	cmp	r0, r6
 e0080cc:	1a000008 	bne	e0080f4 <rtos_sema_take+0x70>
 e0080d0:	e28dd008 	add	sp, sp, #8
 e0080d4:	e8bd8070 	pop	{r4, r5, r6, pc}
 e0080d8:	e1a01005 	mov	r1, r5
 e0080dc:	e1a00004 	mov	r0, r4
 e0080e0:	eb0029f7 	bl	e0128c4 <xQueueSemaphoreTake>
 e0080e4:	e2500001 	subs	r0, r0, #1
 e0080e8:	13e00000 	mvnne	r0, #0
 e0080ec:	e28dd008 	add	sp, sp, #8
 e0080f0:	e8bd8070 	pop	{r4, r5, r6, pc}
 e0080f4:	eb001de1 	bl	e00f880 <ulPortGetCoreId>
 e0080f8:	e3033d50 	movw	r3, #15696	; 0x3d50
 e0080fc:	e346300a 	movt	r3, #24586	; 0x600a
 e008100:	e1a02000 	mov	r2, r0
 e008104:	e1a00006 	mov	r0, r6
 e008108:	e7834102 	str	r4, [r3, r2, lsl #2]
 e00810c:	e28dd008 	add	sp, sp, #8
 e008110:	e8bd8070 	pop	{r4, r5, r6, pc}
 e008114:	e3e00000 	mvn	r0, #0
 e008118:	eaffffec 	b	e0080d0 <rtos_sema_take+0x4c>

0e00811c <rtos_sema_give>:
 e00811c:	e92d4010 	push	{r4, lr}
 e008120:	e3a03000 	mov	r3, #0
 e008124:	e24dd008 	sub	sp, sp, #8
 e008128:	e1a04000 	mov	r4, r0
 e00812c:	e58d3004 	str	r3, [sp, #4]
 e008130:	ebffff9f 	bl	e007fb4 <rtos_critical_is_in_interrupt>
 e008134:	e2503000 	subs	r3, r0, #0
 e008138:	0a00000a 	beq	e008168 <rtos_sema_give+0x4c>
 e00813c:	e1a00004 	mov	r0, r4
 e008140:	e28d1004 	add	r1, sp, #4
 e008144:	eb002945 	bl	e012660 <xQueueGiveFromISR>
 e008148:	e59d3004 	ldr	r3, [sp, #4]
 e00814c:	e1a04000 	mov	r4, r0
 e008150:	e3530000 	cmp	r3, #0
 e008154:	1a00000c 	bne	e00818c <rtos_sema_give+0x70>
 e008158:	e2540001 	subs	r0, r4, #1
 e00815c:	13e00000 	mvnne	r0, #0
 e008160:	e28dd008 	add	sp, sp, #8
 e008164:	e8bd8010 	pop	{r4, pc}
 e008168:	e1a02003 	mov	r2, r3
 e00816c:	e1a01003 	mov	r1, r3
 e008170:	e1a00004 	mov	r0, r4
 e008174:	eb00288d 	bl	e0123b0 <xQueueGenericSend>
 e008178:	e1a04000 	mov	r4, r0
 e00817c:	e2540001 	subs	r0, r4, #1
 e008180:	13e00000 	mvnne	r0, #0
 e008184:	e28dd008 	add	sp, sp, #8
 e008188:	e8bd8010 	pop	{r4, pc}
 e00818c:	eb001dbb 	bl	e00f880 <ulPortGetCoreId>
 e008190:	e3033d50 	movw	r3, #15696	; 0x3d50
 e008194:	e346300a 	movt	r3, #24586	; 0x600a
 e008198:	e3a02001 	mov	r2, #1
 e00819c:	e7832100 	str	r2, [r3, r0, lsl #2]
 e0081a0:	e2540001 	subs	r0, r4, #1
 e0081a4:	13e00000 	mvnne	r0, #0
 e0081a8:	e28dd008 	add	sp, sp, #8
 e0081ac:	e8bd8010 	pop	{r4, pc}

0e0081b0 <rtos_sched_start>:
 e0081b0:	e92d4010 	push	{r4, lr}
 e0081b4:	eb0022de 	bl	e010d34 <vTaskStartScheduler>
 e0081b8:	e3a00000 	mov	r0, #0
 e0081bc:	e8bd8010 	pop	{r4, pc}

0e0081c0 <rtos_sched_get_state>:
 e0081c0:	e92d4010 	push	{r4, lr}
 e0081c4:	eb0021a6 	bl	e010864 <xTaskGetSchedulerState>
 e0081c8:	e3500001 	cmp	r0, #1
 e0081cc:	08bd8010 	popeq	{r4, pc}
 e0081d0:	eb0021a3 	bl	e010864 <xTaskGetSchedulerState>
 e0081d4:	e3500000 	cmp	r0, #0
 e0081d8:	08bd8010 	popeq	{r4, pc}
 e0081dc:	eb0021a0 	bl	e010864 <xTaskGetSchedulerState>
 e0081e0:	e3500002 	cmp	r0, #2
 e0081e4:	13e00000 	mvnne	r0, #0
 e0081e8:	e8bd8010 	pop	{r4, pc}

0e0081ec <rtos_task_create>:
 e0081ec:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e0081f0:	e1a0c002 	mov	ip, r2
 e0081f4:	e24dd00c 	sub	sp, sp, #12
 e0081f8:	e1dde1b0 	ldrh	lr, [sp, #16]
 e0081fc:	e58d0004 	str	r0, [sp, #4]
 e008200:	e1a0000c 	mov	r0, ip
 e008204:	e1ddc1b4 	ldrh	ip, [sp, #20]
 e008208:	e1a0212e 	lsr	r2, lr, #2
 e00820c:	e58dc000 	str	ip, [sp]
 e008210:	eb0022a2 	bl	e010ca0 <xTaskCreate>
 e008214:	e2500001 	subs	r0, r0, #1
 e008218:	13e00000 	mvnne	r0, #0
 e00821c:	e28dd00c 	add	sp, sp, #12
 e008220:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

0e008224 <rtos_create_secure_context>:
 e008224:	e12fff1e 	bx	lr

0e008228 <rtos_time_delay_ms>:
 e008228:	e92d4010 	push	{r4, lr}
 e00822c:	e1a04000 	mov	r4, r0
 e008230:	eb0004a8 	bl	e0094d8 <pmu_yield_os_check>
 e008234:	e3500000 	cmp	r0, #0
 e008238:	0a000002 	beq	e008248 <rtos_time_delay_ms+0x20>
 e00823c:	eb002188 	bl	e010864 <xTaskGetSchedulerState>
 e008240:	e3500002 	cmp	r0, #2
 e008244:	0a000004 	beq	e00825c <rtos_time_delay_ms+0x34>
 e008248:	e1a00004 	mov	r0, r4
 e00824c:	e30932d8 	movw	r3, #37592	; 0x92d8
 e008250:	e3403e00 	movt	r3, #3584	; 0xe00
 e008254:	e8bd4010 	pop	{r4, lr}
 e008258:	e12fff13 	bx	r3
 e00825c:	ebffff54 	bl	e007fb4 <rtos_critical_is_in_interrupt>
 e008260:	e3500000 	cmp	r0, #0
 e008264:	1afffff7 	bne	e008248 <rtos_time_delay_ms+0x20>
 e008268:	e1a00004 	mov	r0, r4
 e00826c:	e8bd4010 	pop	{r4, lr}
 e008270:	ea0026d1 	b	e011dbc <vTaskDelay>

0e008274 <rtos_time_get_current_system_time_ms>:
 e008274:	e92d4010 	push	{r4, lr}
 e008278:	ebffff4d 	bl	e007fb4 <rtos_critical_is_in_interrupt>
 e00827c:	e3500000 	cmp	r0, #0
 e008280:	0a000001 	beq	e00828c <rtos_time_get_current_system_time_ms+0x18>
 e008284:	e8bd4010 	pop	{r4, lr}
 e008288:	ea001f61 	b	e010014 <xTaskGetTickCountFromISR>
 e00828c:	e8bd4010 	pop	{r4, lr}
 e008290:	ea001f5b 	b	e010004 <xTaskGetTickCount>

0e008294 <__wrap_malloc>:
 e008294:	eaffff52 	b	e007fe4 <rtos_mem_malloc>

0e008298 <__wrap__malloc_r>:
 e008298:	e1a00001 	mov	r0, r1
 e00829c:	eaffff50 	b	e007fe4 <rtos_mem_malloc>

0e0082a0 <__wrap__realloc_r>:
 e0082a0:	e1a00001 	mov	r0, r1
 e0082a4:	e1a01002 	mov	r1, r2
 e0082a8:	eaffff63 	b	e00803c <rtos_mem_realloc>

0e0082ac <__wrap__free_r>:
 e0082ac:	e1a00001 	mov	r0, r1
 e0082b0:	eaffff62 	b	e008040 <rtos_mem_free>

0e0082b4 <__wrap__calloc_r>:
 e0082b4:	e1a00001 	mov	r0, r1
 e0082b8:	e1a01002 	mov	r1, r2
 e0082bc:	eaffff53 	b	e008010 <rtos_mem_calloc>

0e0082c0 <__wrap_printf>:
 e0082c0:	e92d000f 	push	{r0, r1, r2, r3}
 e0082c4:	e92d4070 	push	{r4, r5, r6, lr}
 e0082c8:	e24dd008 	sub	sp, sp, #8
 e0082cc:	e10f6000 	mrs	r6, CPSR
 e0082d0:	f10c0080 	cpsid	i
 e0082d4:	f57ff04f 	dsb	sy
 e0082d8:	f57ff06f 	isb	sy
 e0082dc:	e3a03001 	mov	r3, #1
 e0082e0:	e30341c0 	movw	r4, #12736	; 0x31c0
 e0082e4:	e346400a 	movt	r4, #24586	; 0x600a
 e0082e8:	e1942f9f 	ldrex	r2, [r4]
 e0082ec:	e3520000 	cmp	r2, #0
 e0082f0:	1320f002 	wfene
 e0082f4:	01842f93 	strexeq	r2, r3, [r4]
 e0082f8:	03520000 	cmpeq	r2, #0
 e0082fc:	1afffff9 	bne	e0082e8 <__wrap_printf+0x28>
 e008300:	f57ff05f 	dmb	sy
 e008304:	e28d301c 	add	r3, sp, #28
 e008308:	e58d3004 	str	r3, [sp, #4]
 e00830c:	eb0009e1 	bl	e00aa98 <CPU_InInterrupt>
 e008310:	e59d1004 	ldr	r1, [sp, #4]
 e008314:	e3500000 	cmp	r0, #0
 e008318:	e59d0018 	ldr	r0, [sp, #24]
 e00831c:	0a00000c 	beq	e008354 <__wrap_printf+0x94>
 e008320:	eb0017dc 	bl	e00e298 <DiagVprintf>
 e008324:	e1a05000 	mov	r5, r0
 e008328:	e3a03000 	mov	r3, #0
 e00832c:	f57ff05f 	dmb	sy
 e008330:	e5843000 	str	r3, [r4]
 e008334:	f57ff04f 	dsb	sy
 e008338:	e320f004 	sev
 e00833c:	e121f006 	msr	CPSR_c, r6
 e008340:	e1a00005 	mov	r0, r5
 e008344:	e28dd008 	add	sp, sp, #8
 e008348:	e8bd4070 	pop	{r4, r5, r6, lr}
 e00834c:	e28dd010 	add	sp, sp, #16
 e008350:	e12fff1e 	bx	lr
 e008354:	ebffea10 	bl	e002b9c <vprintf>
 e008358:	e3053000 	movw	r3, #20480	; 0x5000
 e00835c:	e3463009 	movt	r3, #24585	; 0x6009
 e008360:	e1a05000 	mov	r5, r0
 e008364:	e5933000 	ldr	r3, [r3]
 e008368:	e5930008 	ldr	r0, [r3, #8]
 e00836c:	eb0011b7 	bl	e00ca50 <__wrap_fflush>
 e008370:	eaffffec 	b	e008328 <__wrap_printf+0x68>

0e008374 <gic_cpu_init>:
 e008374:	f57ff05f 	dmb	sy
 e008378:	e3a00a01 	mov	r0, #4096	; 0x1000
 e00837c:	e34a0010 	movt	r0, #40976	; 0xa010
 e008380:	e3e0c000 	mvn	ip, #0
 e008384:	e580c380 	str	ip, [r0, #896]	; 0x380
 e008388:	f57ff05f 	dmb	sy
 e00838c:	e3a03000 	mov	r3, #0
 e008390:	e34f3fff 	movt	r3, #65535	; 0xffff
 e008394:	e5803180 	str	r3, [r0, #384]	; 0x180
 e008398:	f57ff05f 	dmb	sy
 e00839c:	e30f3fff 	movw	r3, #65535	; 0xffff
 e0083a0:	e5803100 	str	r3, [r0, #256]	; 0x100
 e0083a4:	f57ff05f 	dmb	sy
 e0083a8:	e3a03b05 	mov	r3, #5120	; 0x1400
 e0083ac:	e34a3010 	movt	r3, #40976	; 0xa010
 e0083b0:	e30a10a0 	movw	r1, #41120	; 0xa0a0
 e0083b4:	e34a10a0 	movt	r1, #41120	; 0xa0a0
 e0083b8:	e3012420 	movw	r2, #5152	; 0x1420
 e0083bc:	e34a2010 	movt	r2, #40976	; 0xa010
 e0083c0:	e580c080 	str	ip, [r0, #128]	; 0x80
 e0083c4:	f57ff05f 	dmb	sy
 e0083c8:	e4831004 	str	r1, [r3], #4
 e0083cc:	e1530002 	cmp	r3, r2
 e0083d0:	1afffffb 	bne	e0083c4 <gic_cpu_init+0x50>
 e0083d4:	f57ff05f 	dmb	sy
 e0083d8:	e3a02a02 	mov	r2, #8192	; 0x2000
 e0083dc:	e34a2010 	movt	r2, #40976	; 0xa010
 e0083e0:	e3a030ff 	mov	r3, #255	; 0xff
 e0083e4:	e5823004 	str	r3, [r2, #4]
 e0083e8:	e5923000 	ldr	r3, [r2]
 e0083ec:	f57ff05f 	dmb	sy
 e0083f0:	e3c33e1e 	bic	r3, r3, #480	; 0x1e0
 e0083f4:	e3c33003 	bic	r3, r3, #3
 e0083f8:	e3833007 	orr	r3, r3, #7
 e0083fc:	f57ff05f 	dmb	sy
 e008400:	e5823000 	str	r3, [r2]
 e008404:	e12fff1e 	bx	lr

0e008408 <arm_gic_irq_enable>:
 e008408:	e200201f 	and	r2, r0, #31
 e00840c:	e3a03001 	mov	r3, #1
 e008410:	e1a03213 	lsl	r3, r3, r2
 e008414:	f57ff05f 	dmb	sy
 e008418:	e3a02c11 	mov	r2, #4352	; 0x1100
 e00841c:	e34a2010 	movt	r2, #40976	; 0xa010
 e008420:	e1a002a0 	lsr	r0, r0, #5
 e008424:	e7823100 	str	r3, [r2, r0, lsl #2]
 e008428:	e12fff1e 	bx	lr

0e00842c <arm_gic_irq_disable>:
 e00842c:	e200201f 	and	r2, r0, #31
 e008430:	e3a03001 	mov	r3, #1
 e008434:	e1a03213 	lsl	r3, r3, r2
 e008438:	f57ff05f 	dmb	sy
 e00843c:	e3a02d46 	mov	r2, #4480	; 0x1180
 e008440:	e34a2010 	movt	r2, #40976	; 0xa010
 e008444:	e1a002a0 	lsr	r0, r0, #5
 e008448:	e7823100 	str	r3, [r2, r0, lsl #2]
 e00844c:	e12fff1e 	bx	lr

0e008450 <arm_gic_irq_set_priority>:
 e008450:	e6ef3071 	uxtb	r3, r1
 e008454:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e008458:	f57ff05f 	dmb	sy
 e00845c:	e3a0eb05 	mov	lr, #5120	; 0x1400
 e008460:	e34ae010 	movt	lr, #40976	; 0xa010
 e008464:	e1a0c220 	lsr	ip, r0, #4
 e008468:	e200100f 	and	r1, r0, #15
 e00846c:	e7c0300e 	strb	r3, [r0, lr]
 e008470:	e3a03b07 	mov	r3, #7168	; 0x1c00
 e008474:	e34a3010 	movt	r3, #40976	; 0xa010
 e008478:	e083010c 	add	r0, r3, ip, lsl #2
 e00847c:	e1a01081 	lsl	r1, r1, #1
 e008480:	e793310c 	ldr	r3, [r3, ip, lsl #2]
 e008484:	f57ff05f 	dmb	sy
 e008488:	e3a0c003 	mov	ip, #3
 e00848c:	e3120001 	tst	r2, #1
 e008490:	13a02002 	movne	r2, #2
 e008494:	e1c3311c 	bic	r3, r3, ip, lsl r1
 e008498:	11833112 	orrne	r3, r3, r2, lsl r1
 e00849c:	f57ff05f 	dmb	sy
 e0084a0:	e5803000 	str	r3, [r0]
 e0084a4:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

0e0084a8 <arm_gic_get_active>:
 e0084a8:	e3a03a02 	mov	r3, #8192	; 0x2000
 e0084ac:	e34a3010 	movt	r3, #40976	; 0xa010
 e0084b0:	e593000c 	ldr	r0, [r3, #12]
 e0084b4:	f57ff05f 	dmb	sy
 e0084b8:	e7e90050 	ubfx	r0, r0, #0, #10
 e0084bc:	e12fff1e 	bx	lr

0e0084c0 <arm_gic_clear_pending_irq>:
 e0084c0:	e200201f 	and	r2, r0, #31
 e0084c4:	e3a03001 	mov	r3, #1
 e0084c8:	e1a03213 	lsl	r3, r3, r2
 e0084cc:	f57ff05f 	dmb	sy
 e0084d0:	e3a02d4a 	mov	r2, #4736	; 0x1280
 e0084d4:	e34a2010 	movt	r2, #40976	; 0xa010
 e0084d8:	e1a002a0 	lsr	r0, r0, #5
 e0084dc:	e7823100 	str	r3, [r2, r0, lsl #2]
 e0084e0:	e12fff1e 	bx	lr

0e0084e4 <arm_gic_eoi>:
 e0084e4:	f57ff05f 	dmb	sy
 e0084e8:	e3a03a02 	mov	r3, #8192	; 0x2000
 e0084ec:	e34a3010 	movt	r3, #40976	; 0xa010
 e0084f0:	e5830010 	str	r0, [r3, #16]
 e0084f4:	e12fff1e 	bx	lr

0e0084f8 <arm_gic_raise_softirq>:
 e0084f8:	e3500007 	cmp	r0, #7
 e0084fc:	9351000f 	cmpls	r1, #15
 e008500:	812fff1e 	bxhi	lr
 e008504:	e2800010 	add	r0, r0, #16
 e008508:	e3a03001 	mov	r3, #1
 e00850c:	e1811013 	orr	r1, r1, r3, lsl r0
 e008510:	f57ff05f 	dmb	sy
 e008514:	e3a03a01 	mov	r3, #4096	; 0x1000
 e008518:	e34a3010 	movt	r3, #40976	; 0xa010
 e00851c:	e5831f00 	str	r1, [r3, #3840]	; 0xf00
 e008520:	e12fff1e 	bx	lr

0e008524 <arm_gic_init_secondary>:
 e008524:	e92d4010 	push	{r4, lr}
 e008528:	ebffff91 	bl	e008374 <gic_cpu_init>
 e00852c:	e3a00000 	mov	r0, #0
 e008530:	e8bd8010 	pop	{r4, pc}

0e008534 <arm_gic_init>:
 e008534:	e3a01a01 	mov	r1, #4096	; 0x1000
 e008538:	e34a1010 	movt	r1, #40976	; 0xa010
 e00853c:	e92d4010 	push	{r4, lr}
 e008540:	e5912004 	ldr	r2, [r1, #4]
 e008544:	f57ff05f 	dmb	sy
 e008548:	e202201f 	and	r2, r2, #31
 e00854c:	e2822001 	add	r2, r2, #1
 e008550:	e1a02282 	lsl	r2, r2, #5
 e008554:	e3520080 	cmp	r2, #128	; 0x80
 e008558:	31a03002 	movcc	r3, r2
 e00855c:	23a03080 	movcs	r3, #128	; 0x80
 e008560:	f57ff05f 	dmb	sy
 e008564:	e3a00000 	mov	r0, #0
 e008568:	e3520020 	cmp	r2, #32
 e00856c:	e5810000 	str	r0, [r1]
 e008570:	0a000032 	beq	e008640 <arm_gic_init+0x10c>
 e008574:	e3a00b06 	mov	r0, #6144	; 0x1800
 e008578:	e34a0010 	movt	r0, #40976	; 0xa010
 e00857c:	e3001101 	movw	r1, #257	; 0x101
 e008580:	e3401101 	movt	r1, #257	; 0x101
 e008584:	e3a02020 	mov	r2, #32
 e008588:	f57ff05f 	dmb	sy
 e00858c:	e7821000 	str	r1, [r2, r0]
 e008590:	e2822004 	add	r2, r2, #4
 e008594:	e1530002 	cmp	r3, r2
 e008598:	8afffffa 	bhi	e008588 <arm_gic_init+0x54>
 e00859c:	e3a01b07 	mov	r1, #7168	; 0x1c00
 e0085a0:	e34a1010 	movt	r1, #40976	; 0xa010
 e0085a4:	e3a02020 	mov	r2, #32
 e0085a8:	e3a00000 	mov	r0, #0
 e0085ac:	f57ff05f 	dmb	sy
 e0085b0:	e7810122 	str	r0, [r1, r2, lsr #2]
 e0085b4:	e2822010 	add	r2, r2, #16
 e0085b8:	e1530002 	cmp	r3, r2
 e0085bc:	8afffffa 	bhi	e0085ac <arm_gic_init+0x78>
 e0085c0:	e3a00b05 	mov	r0, #5120	; 0x1400
 e0085c4:	e34a0010 	movt	r0, #40976	; 0xa010
 e0085c8:	e30a10a0 	movw	r1, #41120	; 0xa0a0
 e0085cc:	e34a10a0 	movt	r1, #41120	; 0xa0a0
 e0085d0:	e3a02020 	mov	r2, #32
 e0085d4:	f57ff05f 	dmb	sy
 e0085d8:	e7821000 	str	r1, [r2, r0]
 e0085dc:	e2822004 	add	r2, r2, #4
 e0085e0:	e1530002 	cmp	r3, r2
 e0085e4:	8afffffa 	bhi	e0085d4 <arm_gic_init+0xa0>
 e0085e8:	e3a01d42 	mov	r1, #4224	; 0x1080
 e0085ec:	e34a1010 	movt	r1, #40976	; 0xa010
 e0085f0:	e3a02020 	mov	r2, #32
 e0085f4:	e3e00000 	mvn	r0, #0
 e0085f8:	f57ff05f 	dmb	sy
 e0085fc:	e78101a2 	str	r0, [r1, r2, lsr #3]
 e008600:	e2822020 	add	r2, r2, #32
 e008604:	e1530002 	cmp	r3, r2
 e008608:	8afffffa 	bhi	e0085f8 <arm_gic_init+0xc4>
 e00860c:	e3a0cd4e 	mov	ip, #4992	; 0x1380
 e008610:	e34ac010 	movt	ip, #40976	; 0xa010
 e008614:	e3a00d46 	mov	r0, #4480	; 0x1180
 e008618:	e34a0010 	movt	r0, #40976	; 0xa010
 e00861c:	e3a02020 	mov	r2, #32
 e008620:	e3e01000 	mvn	r1, #0
 e008624:	f57ff05f 	dmb	sy
 e008628:	e78c11a2 	str	r1, [ip, r2, lsr #3]
 e00862c:	f57ff05f 	dmb	sy
 e008630:	e78011a2 	str	r1, [r0, r2, lsr #3]
 e008634:	e2822020 	add	r2, r2, #32
 e008638:	e1530002 	cmp	r3, r2
 e00863c:	8afffff8 	bhi	e008624 <arm_gic_init+0xf0>
 e008640:	f57ff05f 	dmb	sy
 e008644:	e3a03a01 	mov	r3, #4096	; 0x1000
 e008648:	e34a3010 	movt	r3, #40976	; 0xa010
 e00864c:	e3a02003 	mov	r2, #3
 e008650:	e5832000 	str	r2, [r3]
 e008654:	ebffff46 	bl	e008374 <gic_cpu_init>
 e008658:	e3a00000 	mov	r0, #0
 e00865c:	e8bd8010 	pop	{r4, pc}

0e008660 <_read>:
 e008660:	e2520000 	subs	r0, r2, #0
 e008664:	da000006 	ble	e008684 <_read+0x24>
 e008668:	e2411001 	sub	r1, r1, #1
 e00866c:	e081c000 	add	ip, r1, r0
 e008670:	e3a03000 	mov	r3, #0
 e008674:	e5e13001 	strb	r3, [r1, #1]!
 e008678:	e151000c 	cmp	r1, ip
 e00867c:	1afffffc 	bne	e008674 <_read+0x14>
 e008680:	e12fff1e 	bx	lr
 e008684:	e3a00000 	mov	r0, #0
 e008688:	e12fff1e 	bx	lr

0e00868c <_write>:
 e00868c:	e92d4070 	push	{r4, r5, r6, lr}
 e008690:	e2526000 	subs	r6, r2, #0
 e008694:	da000006 	ble	e0086b4 <_write+0x28>
 e008698:	e2414001 	sub	r4, r1, #1
 e00869c:	e0845006 	add	r5, r4, r6
 e0086a0:	e5f41001 	ldrb	r1, [r4, #1]!
 e0086a4:	e1a00001 	mov	r0, r1
 e0086a8:	eb002cc6 	bl	e0139c8 <____PutCharacter_veneer>
 e0086ac:	e1540005 	cmp	r4, r5
 e0086b0:	1afffffa 	bne	e0086a0 <_write+0x14>
 e0086b4:	e1a00006 	mov	r0, r6
 e0086b8:	e8bd8070 	pop	{r4, r5, r6, pc}

0e0086bc <_close>:
 e0086bc:	e3a00000 	mov	r0, #0
 e0086c0:	e12fff1e 	bx	lr

0e0086c4 <_isatty>:
 e0086c4:	e3a00001 	mov	r0, #1
 e0086c8:	e12fff1e 	bx	lr

0e0086cc <_lseek>:
 e0086cc:	e3033160 	movw	r3, #12640	; 0x3160
 e0086d0:	e346300a 	movt	r3, #24586	; 0x600a
 e0086d4:	e3a0201d 	mov	r2, #29
 e0086d8:	e3e00000 	mvn	r0, #0
 e0086dc:	e5832000 	str	r2, [r3]
 e0086e0:	e12fff1e 	bx	lr

0e0086e4 <_fstat>:
 e0086e4:	e3a03a02 	mov	r3, #8192	; 0x2000
 e0086e8:	e3a00000 	mov	r0, #0
 e0086ec:	e5813004 	str	r3, [r1, #4]
 e0086f0:	e12fff1e 	bx	lr

0e0086f4 <_getpid>:
 e0086f4:	e3a00001 	mov	r0, #1
 e0086f8:	e12fff1e 	bx	lr

0e0086fc <_kill>:
 e0086fc:	e3500001 	cmp	r0, #1
 e008700:	0a000001 	beq	e00870c <_kill+0x10>
 e008704:	e3a00000 	mov	r0, #0
 e008708:	e12fff1e 	bx	lr
 e00870c:	e1a00001 	mov	r0, r1
 e008710:	e92d4010 	push	{r4, lr}
 e008714:	ebfffddd 	bl	e007e90 <_exit>

0e008718 <vGetGenericTimerFreq>:
 e008718:	e92d4010 	push	{r4, lr}
 e00871c:	e30f33f4 	movw	r3, #62452	; 0xf3f4
 e008720:	e3403e00 	movt	r3, #3584	; 0xe00
 e008724:	e12fff33 	blx	r3
 e008728:	e3500001 	cmp	r0, #1
 e00872c:	128f100c 	addne	r1, pc, #12
 e008730:	11c100d0 	ldrdne	r0, [r1]
 e008734:	028f100c 	addeq	r1, pc, #12
 e008738:	01c100d0 	ldrdeq	r0, [r1]
 e00873c:	e8bd8010 	pop	{r4, pc}
 e008740:	02faf080 	.word	0x02faf080
 e008744:	00000000 	.word	0x00000000
 e008748:	00bebc20 	.word	0x00bebc20
 e00874c:	00000000 	.word	0x00000000

0e008750 <prvSetupHardware>:
 e008750:	e92d4010 	push	{r4, lr}
 e008754:	eb001c2e 	bl	e00f814 <ulPortInterruptLock>
 e008758:	e30f33f4 	movw	r3, #62452	; 0xf3f4
 e00875c:	e3403e00 	movt	r3, #3584	; 0xe00
 e008760:	e12fff33 	blx	r3
 e008764:	e3500001 	cmp	r0, #1
 e008768:	e3033200 	movw	r3, #12800	; 0x3200
 e00876c:	e346300a 	movt	r3, #24586	; 0x600a
 e008770:	128f1020 	addne	r1, pc, #32
 e008774:	11c100d0 	ldrdne	r0, [r1]
 e008778:	028f1020 	addeq	r1, pc, #32
 e00877c:	01c100d0 	ldrdeq	r0, [r1]
 e008780:	e1c300f0 	strd	r0, [r3]
 e008784:	ebffff6a 	bl	e008534 <arm_gic_init>
 e008788:	eb0001e2 	bl	e008f18 <psci_init>
 e00878c:	e8bd4010 	pop	{r4, lr}
 e008790:	ea000279 	b	e00917c <smp_init>
 e008794:	e320f000 	nop	{0}
 e008798:	02faf080 	.word	0x02faf080
 e00879c:	00000000 	.word	0x00000000
 e0087a0:	00bebc20 	.word	0x00bebc20
 e0087a4:	00000000 	.word	0x00000000

0e0087a8 <prvSetupHardwareSecondary>:
 e0087a8:	e92d4010 	push	{r4, lr}
 e0087ac:	eb001c18 	bl	e00f814 <ulPortInterruptLock>
 e0087b0:	e8bd4010 	pop	{r4, lr}
 e0087b4:	eaffff5a 	b	e008524 <arm_gic_init_secondary>

0e0087b8 <vDisableIPIInterrupt>:
 e0087b8:	e3033208 	movw	r3, #12808	; 0x3208
 e0087bc:	e346300a 	movt	r3, #24586	; 0x600a
 e0087c0:	e92d4010 	push	{r4, lr}
 e0087c4:	e3a02000 	mov	r2, #0
 e0087c8:	e3a00001 	mov	r0, #1
 e0087cc:	e5832008 	str	r2, [r3, #8]
 e0087d0:	e583200c 	str	r2, [r3, #12]
 e0087d4:	ebffff14 	bl	e00842c <arm_gic_irq_disable>
 e0087d8:	e8bd4010 	pop	{r4, lr}
 e0087dc:	e3a00001 	mov	r0, #1
 e0087e0:	eaffff36 	b	e0084c0 <arm_gic_clear_pending_irq>

0e0087e4 <vConfigureIPIInterrupt>:
 e0087e4:	e92d4070 	push	{r4, r5, r6, lr}
 e0087e8:	e3034208 	movw	r4, #12808	; 0x3208
 e0087ec:	e346400a 	movt	r4, #24586	; 0x600a
 e0087f0:	e3a05000 	mov	r5, #0
 e0087f4:	e1a02005 	mov	r2, r5
 e0087f8:	e3a010a0 	mov	r1, #160	; 0xa0
 e0087fc:	e1a00005 	mov	r0, r5
 e008800:	e30f385c 	movw	r3, #63580	; 0xf85c
 e008804:	e3403e00 	movt	r3, #3584	; 0xe00
 e008808:	e5843000 	str	r3, [r4]
 e00880c:	e5845004 	str	r5, [r4, #4]
 e008810:	ebffff0e 	bl	e008450 <arm_gic_irq_set_priority>
 e008814:	e1a00005 	mov	r0, r5
 e008818:	ebfffefa 	bl	e008408 <arm_gic_irq_enable>
 e00881c:	e1a02005 	mov	r2, r5
 e008820:	e3a010a0 	mov	r1, #160	; 0xa0
 e008824:	e3a00001 	mov	r0, #1
 e008828:	e30f3894 	movw	r3, #63636	; 0xf894
 e00882c:	e3403e00 	movt	r3, #3584	; 0xe00
 e008830:	e5843008 	str	r3, [r4, #8]
 e008834:	e584500c 	str	r5, [r4, #12]
 e008838:	ebffff04 	bl	e008450 <arm_gic_irq_set_priority>
 e00883c:	e3a00001 	mov	r0, #1
 e008840:	ebfffef0 	bl	e008408 <arm_gic_irq_enable>
 e008844:	e3a00002 	mov	r0, #2
 e008848:	e1a02005 	mov	r2, r5
 e00884c:	e3a010a0 	mov	r1, #160	; 0xa0
 e008850:	e3043508 	movw	r3, #17672	; 0x4508
 e008854:	e3463009 	movt	r3, #24585	; 0x6009
 e008858:	e5843010 	str	r3, [r4, #16]
 e00885c:	e5845014 	str	r5, [r4, #20]
 e008860:	ebfffefa 	bl	e008450 <arm_gic_irq_set_priority>
 e008864:	e8bd4070 	pop	{r4, r5, r6, lr}
 e008868:	e3a00002 	mov	r0, #2
 e00886c:	eafffee5 	b	e008408 <arm_gic_irq_enable>

0e008870 <vConfigureSMPSendIPI>:
 e008870:	e92d4010 	push	{r4, lr}
 e008874:	e1a04000 	mov	r4, r0
 e008878:	eb000393 	bl	e0096cc <pmu_get_secondary_cpu_state>
 e00887c:	e2501000 	subs	r1, r0, #0
 e008880:	18bd8010 	popne	{r4, pc}
 e008884:	e1a00004 	mov	r0, r4
 e008888:	e8bd4010 	pop	{r4, lr}
 e00888c:	eaffff19 	b	e0084f8 <arm_gic_raise_softirq>

0e008890 <vConfigureTickInterrupt>:
 e008890:	e3033208 	movw	r3, #12808	; 0x3208
 e008894:	e346300a 	movt	r3, #24586	; 0x600a
 e008898:	e92d4370 	push	{r4, r5, r6, r8, r9, lr}
 e00889c:	e30f27c8 	movw	r2, #63432	; 0xf7c8
 e0088a0:	e3402e00 	movt	r2, #3584	; 0xe00
 e0088a4:	e3a06000 	mov	r6, #0
 e0088a8:	e58320d8 	str	r2, [r3, #216]	; 0xd8
 e0088ac:	e58360dc 	str	r6, [r3, #220]	; 0xdc
 e0088b0:	ec598f1e 	mrrc	15, 1, r8, r9, cr14
 e0088b4:	e3033200 	movw	r3, #12800	; 0x3200
 e0088b8:	e346300a 	movt	r3, #24586	; 0x600a
 e0088bc:	e3a02ffa 	mov	r2, #1000	; 0x3e8
 e0088c0:	e1c300d0 	ldrd	r0, [r3]
 e0088c4:	e3a03000 	mov	r3, #0
 e0088c8:	ebffdeb1 	bl	e000394 <__aeabi_uldivmod>
 e0088cc:	e0902008 	adds	r2, r0, r8
 e0088d0:	e0a13009 	adc	r3, r1, r9
 e0088d4:	ec432f3e 	mcrr	15, 3, r2, r3, cr14
 e0088d8:	e3a03001 	mov	r3, #1
 e0088dc:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
 e0088e0:	e3a0001b 	mov	r0, #27
 e0088e4:	e1a02006 	mov	r2, r6
 e0088e8:	e3a010e0 	mov	r1, #224	; 0xe0
 e0088ec:	ebfffed7 	bl	e008450 <arm_gic_irq_set_priority>
 e0088f0:	e8bd4370 	pop	{r4, r5, r6, r8, r9, lr}
 e0088f4:	e3a0001b 	mov	r0, #27
 e0088f8:	eafffec2 	b	e008408 <arm_gic_irq_enable>

0e0088fc <vClearTickInterrupt>:
 e0088fc:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e008900:	e24dd008 	sub	sp, sp, #8
 e008904:	ec532f3e 	mrrc	15, 3, r2, r3, cr14
 e008908:	e1a00002 	mov	r0, r2
 e00890c:	e1a01003 	mov	r1, r3
 e008910:	e1a05002 	mov	r5, r2
 e008914:	e1a0a003 	mov	sl, r3
 e008918:	ec532f1e 	mrrc	15, 1, r2, r3, cr14
 e00891c:	e1520000 	cmp	r2, r0
 e008920:	e0d33001 	sbcs	r3, r3, r1
 e008924:	e1cd00f0 	strd	r0, [sp]
 e008928:	3a000015 	bcc	e008984 <vClearTickInterrupt+0x88>
 e00892c:	ec598f1e 	mrrc	15, 1, r8, r9, cr14
 e008930:	e3033200 	movw	r3, #12800	; 0x3200
 e008934:	e346300a 	movt	r3, #24586	; 0x600a
 e008938:	e3a02ffa 	mov	r2, #1000	; 0x3e8
 e00893c:	e1c300d0 	ldrd	r0, [r3]
 e008940:	e3a03000 	mov	r3, #0
 e008944:	ebffde92 	bl	e000394 <__aeabi_uldivmod>
 e008948:	e1a04001 	mov	r4, r1
 e00894c:	e1a02000 	mov	r2, r0
 e008950:	e0580005 	subs	r0, r8, r5
 e008954:	e0c9100a 	sbc	r1, r9, sl
 e008958:	e1a03004 	mov	r3, r4
 e00895c:	e1a06002 	mov	r6, r2
 e008960:	ebffde8b 	bl	e000394 <__aeabi_uldivmod>
 e008964:	e0244490 	mla	r4, r0, r4, r4
 e008968:	e2800001 	add	r0, r0, #1
 e00896c:	e59d1004 	ldr	r1, [sp, #4]
 e008970:	e0860690 	umull	r0, r6, r0, r6
 e008974:	e0844006 	add	r4, r4, r6
 e008978:	e0902005 	adds	r2, r0, r5
 e00897c:	e0a43001 	adc	r3, r4, r1
 e008980:	ec432f3e 	mcrr	15, 3, r2, r3, cr14
 e008984:	e28dd008 	add	sp, sp, #8
 e008988:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

0e00898c <vRegisterIRQHandler>:
 e00898c:	e350007f 	cmp	r0, #127	; 0x7f
 e008990:	93033208 	movwls	r3, #12808	; 0x3208
 e008994:	9346300a 	movtls	r3, #24586	; 0x600a
 e008998:	9083c180 	addls	ip, r3, r0, lsl #3
 e00899c:	97831180 	strls	r1, [r3, r0, lsl #3]
 e0089a0:	958c2004 	strls	r2, [ip, #4]
 e0089a4:	e12fff1e 	bx	lr

0e0089a8 <vApplicationFPUSafeIRQHandler>:
 e0089a8:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e0089ac:	eb001bb3 	bl	e00f880 <ulPortGetCoreId>
 e0089b0:	e3a05a02 	mov	r5, #8192	; 0x2000
 e0089b4:	e34a5010 	movt	r5, #40976	; 0xa010
 e0089b8:	e3038d44 	movw	r8, #15684	; 0x3d44
 e0089bc:	e346800a 	movt	r8, #24586	; 0x600a
 e0089c0:	e3036208 	movw	r6, #12808	; 0x3208
 e0089c4:	e346600a 	movt	r6, #24586	; 0x600a
 e0089c8:	e1a07000 	mov	r7, r0
 e0089cc:	ebfffeb5 	bl	e0084a8 <arm_gic_get_active>
 e0089d0:	e7e94050 	ubfx	r4, r0, #0, #10
 e0089d4:	e30033ff 	movw	r3, #1023	; 0x3ff
 e0089d8:	e1540003 	cmp	r4, r3
 e0089dc:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
 e0089e0:	e3100d0e 	tst	r0, #896	; 0x380
 e0089e4:	18bd87f0 	popne	{r4, r5, r6, r7, r8, r9, sl, pc}
 e0089e8:	e5959004 	ldr	r9, [r5, #4]
 e0089ec:	e5953014 	ldr	r3, [r5, #20]
 e0089f0:	e5853004 	str	r3, [r5, #4]
 e0089f4:	f57ff04f 	dsb	sy
 e0089f8:	f57ff06f 	isb	sy
 e0089fc:	e7983107 	ldr	r3, [r8, r7, lsl #2]
 e008a00:	e353000f 	cmp	r3, #15
 e008a04:	8a000002 	bhi	e008a14 <vApplicationFPUSafeIRQHandler+0x6c>
 e008a08:	f1080080 	cpsie	i
 e008a0c:	f57ff04f 	dsb	sy
 e008a10:	f57ff06f 	isb	sy
 e008a14:	e7963184 	ldr	r3, [r6, r4, lsl #3]
 e008a18:	e0862184 	add	r2, r6, r4, lsl #3
 e008a1c:	e3530000 	cmp	r3, #0
 e008a20:	0a000008 	beq	e008a48 <vApplicationFPUSafeIRQHandler+0xa0>
 e008a24:	e5920004 	ldr	r0, [r2, #4]
 e008a28:	e12fff33 	blx	r3
 e008a2c:	f10c0080 	cpsid	i
 e008a30:	f57ff04f 	dsb	sy
 e008a34:	f57ff06f 	isb	sy
 e008a38:	e1a00004 	mov	r0, r4
 e008a3c:	ebfffea8 	bl	e0084e4 <arm_gic_eoi>
 e008a40:	e5859004 	str	r9, [r5, #4]
 e008a44:	eaffffe0 	b	e0089cc <vApplicationFPUSafeIRQHandler+0x24>
 e008a48:	e3030ca8 	movw	r0, #15528	; 0x3ca8
 e008a4c:	e3400e01 	movt	r0, #3585	; 0xe01
 e008a50:	e1a01004 	mov	r1, r4
 e008a54:	ebfffe19 	bl	e0082c0 <__wrap_printf>
 e008a58:	eafffffe 	b	e008a58 <vApplicationFPUSafeIRQHandler+0xb0>

0e008a5c <irq_enable>:
 e008a5c:	e2800020 	add	r0, r0, #32
 e008a60:	eafffe68 	b	e008408 <arm_gic_irq_enable>

0e008a64 <irq_register>:
 e008a64:	e92d4070 	push	{r4, r5, r6, lr}
 e008a68:	e2814020 	add	r4, r1, #32
 e008a6c:	e1a05003 	mov	r5, r3
 e008a70:	e1a01000 	mov	r1, r0
 e008a74:	e1a00004 	mov	r0, r4
 e008a78:	ebffffc3 	bl	e00898c <vRegisterIRQHandler>
 e008a7c:	e1a00004 	mov	r0, r4
 e008a80:	e3a02000 	mov	r2, #0
 e008a84:	e1a01005 	mov	r1, r5
 e008a88:	ebfffe70 	bl	e008450 <arm_gic_irq_set_priority>
 e008a8c:	e3a00001 	mov	r0, #1
 e008a90:	e8bd8070 	pop	{r4, r5, r6, pc}

0e008a94 <_init>:
 e008a94:	e12fff1e 	bx	lr

0e008a98 <app_start>:
 e008a98:	e30338b0 	movw	r3, #14512	; 0x38b0
 e008a9c:	e346300a 	movt	r3, #24586	; 0x600a
 e008aa0:	e92d4010 	push	{r4, lr}
 e008aa4:	e3e02000 	mvn	r2, #0
 e008aa8:	e5832000 	str	r2, [r3]
 e008aac:	ebfffd4b 	bl	e007fe0 <rtos_mem_init>
 e008ab0:	ebffe097 	bl	e000d14 <__libc_init_array>
 e008ab4:	ebffff25 	bl	e008750 <prvSetupHardware>
 e008ab8:	e3a03902 	mov	r3, #32768	; 0x8000
 e008abc:	e3443200 	movt	r3, #16896	; 0x4200
 e008ac0:	e3a02074 	mov	r2, #116	; 0x74
 e008ac4:	e3030c80 	movw	r0, #15488	; 0x3c80
 e008ac8:	e346000a 	movt	r0, #24586	; 0x600a
 e008acc:	e5931270 	ldr	r1, [r3, #624]	; 0x270
 e008ad0:	e30b31a0 	movw	r3, #45472	; 0xb1a0
 e008ad4:	e3403e00 	movt	r3, #3584	; 0xe00
 e008ad8:	e12fff33 	blx	r3
 e008adc:	e8bd4010 	pop	{r4, lr}
 e008ae0:	ea000b1a 	b	e00b750 <main>

0e008ae4 <FIQHandler>:
 e008ae4:	eafffffe 	b	e008ae4 <FIQHandler>

0e008ae8 <Crash_GetExStack>:
 e008ae8:	e10fc000 	mrs	ip, CPSR
 e008aec:	e200001f 	and	r0, r0, #31
 e008af0:	e3500013 	cmp	r0, #19
 e008af4:	0a000013 	beq	e008b48 <Crash_GetExStack+0x60>
 e008af8:	9a00000c 	bls	e008b30 <Crash_GetExStack+0x48>
 e008afc:	e3500017 	cmp	r0, #23
 e008b00:	0a000012 	beq	e008b50 <Crash_GetExStack+0x68>
 e008b04:	e350001b 	cmp	r0, #27
 e008b08:	1a000012 	bne	e008b58 <Crash_GetExStack+0x70>
 e008b0c:	f102001b 	cps	#27
 e008b10:	e1a0000d 	mov	r0, sp
 e008b14:	e1a0300e 	mov	r3, lr
 e008b18:	e129f00c 	msr	CPSR_fc, ip
 e008b1c:	f57ff04f 	dsb	sy
 e008b20:	f57ff06f 	isb	sy
 e008b24:	e5810000 	str	r0, [r1]
 e008b28:	e5823000 	str	r3, [r2]
 e008b2c:	e12fff1e 	bx	lr
 e008b30:	e3500010 	cmp	r0, #16
 e008b34:	0a000009 	beq	e008b60 <Crash_GetExStack+0x78>
 e008b38:	e3500012 	cmp	r0, #18
 e008b3c:	1a000005 	bne	e008b58 <Crash_GetExStack+0x70>
 e008b40:	f1020012 	cps	#18
 e008b44:	eafffff1 	b	e008b10 <Crash_GetExStack+0x28>
 e008b48:	f1020013 	cps	#19
 e008b4c:	eaffffef 	b	e008b10 <Crash_GetExStack+0x28>
 e008b50:	f1020017 	cps	#23
 e008b54:	eaffffed 	b	e008b10 <Crash_GetExStack+0x28>
 e008b58:	f102001f 	cps	#31
 e008b5c:	eaffffeb 	b	e008b10 <Crash_GetExStack+0x28>
 e008b60:	f1020010 	cps	#16
 e008b64:	eaffffe9 	b	e008b10 <Crash_GetExStack+0x28>

0e008b68 <Crash_DumpReg>:
 e008b68:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e008b6c:	e59f7160 	ldr	r7, [pc, #352]	; e008cd4 <Crash_DumpReg+0x16c>
 e008b70:	e1a06000 	mov	r6, r0
 e008b74:	e24dd01c 	sub	sp, sp, #28
 e008b78:	e1a08001 	mov	r8, r1
 e008b7c:	e303ace0 	movw	sl, #15584	; 0x3ce0
 e008b80:	e340ae01 	movt	sl, #3585	; 0xe01
 e008b84:	eb001b3d 	bl	e00f880 <ulPortGetCoreId>
 e008b88:	e286901c 	add	r9, r6, #28
 e008b8c:	e3032cd8 	movw	r2, #15576	; 0x3cd8
 e008b90:	e3402e01 	movt	r2, #3585	; 0xe01
 e008b94:	e1a05000 	mov	r5, r0
 e008b98:	e1a04007 	mov	r4, r7
 e008b9c:	e287b014 	add	fp, r7, #20
 e008ba0:	ea000000 	b	e008ba8 <Crash_DumpReg+0x40>
 e008ba4:	e5b42004 	ldr	r2, [r4, #4]!
 e008ba8:	e5b93004 	ldr	r3, [r9, #4]!
 e008bac:	e1a01005 	mov	r1, r5
 e008bb0:	e1a0000a 	mov	r0, sl
 e008bb4:	ebfffdc1 	bl	e0082c0 <__wrap_printf>
 e008bb8:	e154000b 	cmp	r4, fp
 e008bbc:	1afffff8 	bne	e008ba4 <Crash_DumpReg+0x3c>
 e008bc0:	e3032cdc 	movw	r2, #15580	; 0x3cdc
 e008bc4:	e3402e01 	movt	r2, #3585	; 0xe01
 e008bc8:	e3039ce0 	movw	r9, #15584	; 0x3ce0
 e008bcc:	e3409e01 	movt	r9, #3585	; 0xe01
 e008bd0:	e59f4100 	ldr	r4, [pc, #256]	; e008cd8 <Crash_DumpReg+0x170>
 e008bd4:	e2466004 	sub	r6, r6, #4
 e008bd8:	ea000000 	b	e008be0 <Crash_DumpReg+0x78>
 e008bdc:	e4942004 	ldr	r2, [r4], #4
 e008be0:	e5b63004 	ldr	r3, [r6, #4]!
 e008be4:	e1a01005 	mov	r1, r5
 e008be8:	e1a00009 	mov	r0, r9
 e008bec:	ebfffdb3 	bl	e0082c0 <__wrap_printf>
 e008bf0:	e1540007 	cmp	r4, r7
 e008bf4:	1afffff8 	bne	e008bdc <Crash_DumpReg+0x74>
 e008bf8:	e1a02008 	mov	r2, r8
 e008bfc:	e1a01005 	mov	r1, r5
 e008c00:	e3030cf8 	movw	r0, #15608	; 0x3cf8
 e008c04:	e3400e01 	movt	r0, #3585	; 0xe01
 e008c08:	ebfffdac 	bl	e0082c0 <__wrap_printf>
 e008c0c:	e1a00008 	mov	r0, r8
 e008c10:	e28d2014 	add	r2, sp, #20
 e008c14:	e28d1010 	add	r1, sp, #16
 e008c18:	ebffffb2 	bl	e008ae8 <Crash_GetExStack>
 e008c1c:	e59d2014 	ldr	r2, [sp, #20]
 e008c20:	e1a01005 	mov	r1, r5
 e008c24:	e3030d24 	movw	r0, #15652	; 0x3d24
 e008c28:	e3400e01 	movt	r0, #3585	; 0xe01
 e008c2c:	ebfffda3 	bl	e0082c0 <__wrap_printf>
 e008c30:	e59d8010 	ldr	r8, [sp, #16]
 e008c34:	e3030d50 	movw	r0, #15696	; 0x3d50
 e008c38:	e3400e01 	movt	r0, #3585	; 0xe01
 e008c3c:	e3a03080 	mov	r3, #128	; 0x80
 e008c40:	e1a02008 	mov	r2, r8
 e008c44:	e1a01005 	mov	r1, r5
 e008c48:	e3036d98 	movw	r6, #15768	; 0x3d98
 e008c4c:	e3406e01 	movt	r6, #3585	; 0xe01
 e008c50:	e2887c02 	add	r7, r8, #512	; 0x200
 e008c54:	e1a04008 	mov	r4, r8
 e008c58:	ebfffd98 	bl	e0082c0 <__wrap_printf>
 e008c5c:	e594200c 	ldr	r2, [r4, #12]
 e008c60:	e5943000 	ldr	r3, [r4]
 e008c64:	e58d2008 	str	r2, [sp, #8]
 e008c68:	e1a01005 	mov	r1, r5
 e008c6c:	e594c008 	ldr	ip, [r4, #8]
 e008c70:	e58dc004 	str	ip, [sp, #4]
 e008c74:	e1a02004 	mov	r2, r4
 e008c78:	e594c004 	ldr	ip, [r4, #4]
 e008c7c:	e1a00006 	mov	r0, r6
 e008c80:	e2844010 	add	r4, r4, #16
 e008c84:	e58dc000 	str	ip, [sp]
 e008c88:	ebfffd8c 	bl	e0082c0 <__wrap_printf>
 e008c8c:	e1570004 	cmp	r7, r4
 e008c90:	1afffff1 	bne	e008c5c <Crash_DumpReg+0xf4>
 e008c94:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
 e008c98:	e3130004 	tst	r3, #4
 e008c9c:	0a00000a 	beq	e008ccc <Crash_DumpReg+0x164>
 e008ca0:	e288307f 	add	r3, r8, #127	; 0x7f
 e008ca4:	e3c3303f 	bic	r3, r3, #63	; 0x3f
 e008ca8:	e3c8803f 	bic	r8, r8, #63	; 0x3f
 e008cac:	e2833040 	add	r3, r3, #64	; 0x40
 e008cb0:	e1580003 	cmp	r8, r3
 e008cb4:	2a000003 	bcs	e008cc8 <Crash_DumpReg+0x160>
 e008cb8:	ee078f3a 	mcr	15, 0, r8, cr7, cr10, {1}
 e008cbc:	e2888040 	add	r8, r8, #64	; 0x40
 e008cc0:	e1530008 	cmp	r3, r8
 e008cc4:	8afffffb 	bhi	e008cb8 <Crash_DumpReg+0x150>
 e008cc8:	f57ff05f 	dmb	sy
 e008ccc:	e28dd01c 	add	sp, sp, #28
 e008cd0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e008cd4:	0e013ef4 	.word	0x0e013ef4
 e008cd8:	0e013ed8 	.word	0x0e013ed8

0e008cdc <UndefinedExceptionHandler>:
 e008cdc:	e3033610 	movw	r3, #13840	; 0x3610
 e008ce0:	e346300a 	movt	r3, #24586	; 0x600a
 e008ce4:	e92d4070 	push	{r4, r5, r6, lr}
 e008ce8:	e1a05001 	mov	r5, r1
 e008cec:	e1a04000 	mov	r4, r0
 e008cf0:	e5931000 	ldr	r1, [r3]
 e008cf4:	e3030dcc 	movw	r0, #15820	; 0x3dcc
 e008cf8:	e3400e01 	movt	r0, #3585	; 0xe01
 e008cfc:	ebfffd6f 	bl	e0082c0 <__wrap_printf>
 e008d00:	e1a01005 	mov	r1, r5
 e008d04:	e1a00004 	mov	r0, r4
 e008d08:	ebffff96 	bl	e008b68 <Crash_DumpReg>
 e008d0c:	eafffffe 	b	e008d0c <UndefinedExceptionHandler+0x30>

0e008d10 <DataAbortHandler>:
 e008d10:	e92d4070 	push	{r4, r5, r6, lr}
 e008d14:	e1a04000 	mov	r4, r0
 e008d18:	e1a05001 	mov	r5, r1
 e008d1c:	ee151f10 	mrc	15, 0, r1, cr5, cr0, {0}
 e008d20:	e3030dfc 	movw	r0, #15868	; 0x3dfc
 e008d24:	e3400e01 	movt	r0, #3585	; 0xe01
 e008d28:	ebfffd64 	bl	e0082c0 <__wrap_printf>
 e008d2c:	e3033608 	movw	r3, #13832	; 0x3608
 e008d30:	e346300a 	movt	r3, #24586	; 0x600a
 e008d34:	e3030e30 	movw	r0, #15920	; 0x3e30
 e008d38:	e3400e01 	movt	r0, #3585	; 0xe01
 e008d3c:	e5931000 	ldr	r1, [r3]
 e008d40:	ebfffd5e 	bl	e0082c0 <__wrap_printf>
 e008d44:	e1a01005 	mov	r1, r5
 e008d48:	e1a00004 	mov	r0, r4
 e008d4c:	ebffff85 	bl	e008b68 <Crash_DumpReg>
 e008d50:	eafffffe 	b	e008d50 <DataAbortHandler+0x40>

0e008d54 <PrefetchAbortHandler>:
 e008d54:	e92d4070 	push	{r4, r5, r6, lr}
 e008d58:	e1a04000 	mov	r4, r0
 e008d5c:	e1a05001 	mov	r5, r1
 e008d60:	ee151f30 	mrc	15, 0, r1, cr5, cr0, {1}
 e008d64:	e3030e64 	movw	r0, #15972	; 0x3e64
 e008d68:	e3400e01 	movt	r0, #3585	; 0xe01
 e008d6c:	ebfffd53 	bl	e0082c0 <__wrap_printf>
 e008d70:	e303360c 	movw	r3, #13836	; 0x360c
 e008d74:	e346300a 	movt	r3, #24586	; 0x600a
 e008d78:	e3030e30 	movw	r0, #15920	; 0x3e30
 e008d7c:	e3400e01 	movt	r0, #3585	; 0xe01
 e008d80:	e5931000 	ldr	r1, [r3]
 e008d84:	ebfffd4d 	bl	e0082c0 <__wrap_printf>
 e008d88:	e1a01005 	mov	r1, r5
 e008d8c:	e1a00004 	mov	r0, r4
 e008d90:	ebffff74 	bl	e008b68 <Crash_DumpReg>
 e008d94:	eafffffe 	b	e008d94 <PrefetchAbortHandler+0x40>

0e008d98 <LOGUART_PutChar>:
 e008d98:	e3a03902 	mov	r3, #32768	; 0x8000
 e008d9c:	e3443200 	movt	r3, #16896	; 0x4200
 e008da0:	e92d4070 	push	{r4, r5, r6, lr}
 e008da4:	e3a0c014 	mov	ip, #20
 e008da8:	e593527c 	ldr	r5, [r3, #636]	; 0x27c
 e008dac:	e3036f0c 	movw	r6, #16140	; 0x3f0c
 e008db0:	e3406e01 	movt	r6, #3585	; 0xe01
 e008db4:	e7e15355 	ubfx	r5, r5, #6, #2
 e008db8:	e3a0e903 	mov	lr, #49152	; 0xc000
 e008dbc:	e344e200 	movt	lr, #16896	; 0x4200
 e008dc0:	e02c659c 	mla	ip, ip, r5, r6
 e008dc4:	e3a03000 	mov	r3, #0
 e008dc8:	e59c400c 	ldr	r4, [ip, #12]
 e008dcc:	ea000003 	b	e008de0 <LOGUART_PutChar+0x48>
 e008dd0:	e59e1014 	ldr	r1, [lr, #20]
 e008dd4:	e59c2004 	ldr	r2, [ip, #4]
 e008dd8:	e1110002 	tst	r1, r2
 e008ddc:	1a000002 	bne	e008dec <LOGUART_PutChar+0x54>
 e008de0:	e2833001 	add	r3, r3, #1
 e008de4:	e1540003 	cmp	r4, r3
 e008de8:	8afffff8 	bhi	e008dd0 <LOGUART_PutChar+0x38>
 e008dec:	e3a03014 	mov	r3, #20
 e008df0:	e350000a 	cmp	r0, #10
 e008df4:	03a0200d 	moveq	r2, #13
 e008df8:	e0050593 	mul	r5, r3, r5
 e008dfc:	e7963005 	ldr	r3, [r6, r5]
 e008e00:	e1a03103 	lsl	r3, r3, #2
 e008e04:	e2833442 	add	r3, r3, #1107296256	; 0x42000000
 e008e08:	e2833903 	add	r3, r3, #49152	; 0xc000
 e008e0c:	e583005c 	str	r0, [r3, #92]	; 0x5c
 e008e10:	0583205c 	streq	r2, [r3, #92]	; 0x5c
 e008e14:	e8bd8070 	pop	{r4, r5, r6, pc}

0e008e18 <psci_cpu_suspend>:
 e008e18:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e008e1c:	e1a0e000 	mov	lr, r0
 e008e20:	e24dd02c 	sub	sp, sp, #44	; 0x2c
 e008e24:	e3a03000 	mov	r3, #0
 e008e28:	e1a02001 	mov	r2, r1
 e008e2c:	e28dc018 	add	ip, sp, #24
 e008e30:	e3a00361 	mov	r0, #-2080374783	; 0x84000001
 e008e34:	e1a0100e 	mov	r1, lr
 e008e38:	e58d3014 	str	r3, [sp, #20]
 e008e3c:	e58dc010 	str	ip, [sp, #16]
 e008e40:	e58d300c 	str	r3, [sp, #12]
 e008e44:	e58d3008 	str	r3, [sp, #8]
 e008e48:	e58d3004 	str	r3, [sp, #4]
 e008e4c:	e58d3000 	str	r3, [sp]
 e008e50:	ebffdc72 	bl	e000020 <__arm_smccc_smc>
 e008e54:	e59d0018 	ldr	r0, [sp, #24]
 e008e58:	e28dd02c 	add	sp, sp, #44	; 0x2c
 e008e5c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

0e008e60 <psci_cpu_off>:
 e008e60:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e008e64:	e3a03000 	mov	r3, #0
 e008e68:	e24dd02c 	sub	sp, sp, #44	; 0x2c
 e008e6c:	e1a02003 	mov	r2, r3
 e008e70:	e1a01000 	mov	r1, r0
 e008e74:	e28dc018 	add	ip, sp, #24
 e008e78:	e3a003a1 	mov	r0, #-2080374782	; 0x84000002
 e008e7c:	e58d3014 	str	r3, [sp, #20]
 e008e80:	e58d300c 	str	r3, [sp, #12]
 e008e84:	e58d3008 	str	r3, [sp, #8]
 e008e88:	e58d3004 	str	r3, [sp, #4]
 e008e8c:	e58d3000 	str	r3, [sp]
 e008e90:	e58dc010 	str	ip, [sp, #16]
 e008e94:	ebffdc61 	bl	e000020 <__arm_smccc_smc>
 e008e98:	e59d3018 	ldr	r3, [sp, #24]
 e008e9c:	e2833009 	add	r3, r3, #9
 e008ea0:	e3530009 	cmp	r3, #9
 e008ea4:	9304204c 	movwls	r2, #16460	; 0x404c
 e008ea8:	93402e01 	movtls	r2, #3585	; 0xe01
 e008eac:	83e00015 	mvnhi	r0, #21
 e008eb0:	97920103 	ldrls	r0, [r2, r3, lsl #2]
 e008eb4:	e28dd02c 	add	sp, sp, #44	; 0x2c
 e008eb8:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

0e008ebc <psci_cpu_on>:
 e008ebc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e008ec0:	e3a03000 	mov	r3, #0
 e008ec4:	e24dd02c 	sub	sp, sp, #44	; 0x2c
 e008ec8:	e1a02001 	mov	r2, r1
 e008ecc:	e28dc018 	add	ip, sp, #24
 e008ed0:	e1a01000 	mov	r1, r0
 e008ed4:	e58d3014 	str	r3, [sp, #20]
 e008ed8:	e3a003e1 	mov	r0, #-2080374781	; 0x84000003
 e008edc:	e58d300c 	str	r3, [sp, #12]
 e008ee0:	e58d3008 	str	r3, [sp, #8]
 e008ee4:	e58d3004 	str	r3, [sp, #4]
 e008ee8:	e58d3000 	str	r3, [sp]
 e008eec:	e58dc010 	str	ip, [sp, #16]
 e008ef0:	ebffdc4a 	bl	e000020 <__arm_smccc_smc>
 e008ef4:	e59d3018 	ldr	r3, [sp, #24]
 e008ef8:	e2833009 	add	r3, r3, #9
 e008efc:	e3530009 	cmp	r3, #9
 e008f00:	9304204c 	movwls	r2, #16460	; 0x404c
 e008f04:	93402e01 	movtls	r2, #3585	; 0xe01
 e008f08:	83e00015 	mvnhi	r0, #21
 e008f0c:	97920103 	ldrls	r0, [r2, r3, lsl #2]
 e008f10:	e28dd02c 	add	sp, sp, #44	; 0x2c
 e008f14:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

0e008f18 <psci_init>:
 e008f18:	e92d4030 	push	{r4, r5, lr}
 e008f1c:	e3a04000 	mov	r4, #0
 e008f20:	e24dd02c 	sub	sp, sp, #44	; 0x2c
 e008f24:	e1a03004 	mov	r3, r4
 e008f28:	e1a02004 	mov	r2, r4
 e008f2c:	e28d5018 	add	r5, sp, #24
 e008f30:	e1a01004 	mov	r1, r4
 e008f34:	e3a00321 	mov	r0, #-2080374784	; 0x84000000
 e008f38:	e58d4014 	str	r4, [sp, #20]
 e008f3c:	e1cd40fc 	strd	r4, [sp, #12]
 e008f40:	e58d4008 	str	r4, [sp, #8]
 e008f44:	e58d4004 	str	r4, [sp, #4]
 e008f48:	e58d4000 	str	r4, [sp]
 e008f4c:	ebffdc33 	bl	e000020 <__arm_smccc_smc>
 e008f50:	e59d2018 	ldr	r2, [sp, #24]
 e008f54:	e30f3ffe 	movw	r3, #65534	; 0xfffe
 e008f58:	e0033002 	and	r3, r3, r2
 e008f5c:	e1933822 	orrs	r3, r3, r2, lsr #16
 e008f60:	0a00003d 	beq	e00905c <psci_init+0x144>
 e008f64:	e1a01004 	mov	r1, r4
 e008f68:	e1a03004 	mov	r3, r4
 e008f6c:	e1a02004 	mov	r2, r4
 e008f70:	e3a00006 	mov	r0, #6
 e008f74:	e3480400 	movt	r0, #33792	; 0x8400
 e008f78:	e58d4014 	str	r4, [sp, #20]
 e008f7c:	e1cd40fc 	strd	r4, [sp, #12]
 e008f80:	e58d4008 	str	r4, [sp, #8]
 e008f84:	e58d4004 	str	r4, [sp, #4]
 e008f88:	e58d4000 	str	r4, [sp]
 e008f8c:	ebffdc23 	bl	e000020 <__arm_smccc_smc>
 e008f90:	e59d1018 	ldr	r1, [sp, #24]
 e008f94:	e3510002 	cmp	r1, #2
 e008f98:	0a000023 	beq	e00902c <psci_init+0x114>
 e008f9c:	e3710001 	cmn	r1, #1
 e008fa0:	0a000027 	beq	e009044 <psci_init+0x12c>
 e008fa4:	e3510001 	cmp	r1, #1
 e008fa8:	8a000013 	bhi	e008ffc <psci_init+0xe4>
 e008fac:	e1a01004 	mov	r1, r4
 e008fb0:	e1cd40fc 	strd	r4, [sp, #12]
 e008fb4:	e1a03004 	mov	r3, r4
 e008fb8:	e1a02004 	mov	r2, r4
 e008fbc:	e3a00007 	mov	r0, #7
 e008fc0:	e3480400 	movt	r0, #33792	; 0x8400
 e008fc4:	e58d4014 	str	r4, [sp, #20]
 e008fc8:	e58d4008 	str	r4, [sp, #8]
 e008fcc:	e58d4004 	str	r4, [sp, #4]
 e008fd0:	e58d4000 	str	r4, [sp]
 e008fd4:	ebffdc11 	bl	e000020 <__arm_smccc_smc>
 e008fd8:	e59d1018 	ldr	r1, [sp, #24]
 e008fdc:	e21154ff 	ands	r5, r1, #-16777216	; 0xff000000
 e008fe0:	1a00000b 	bne	e009014 <psci_init+0xfc>
 e008fe4:	e3040020 	movw	r0, #16416	; 0x4020
 e008fe8:	e3400e01 	movt	r0, #3585	; 0xe01
 e008fec:	ebfffcb3 	bl	e0082c0 <__wrap_printf>
 e008ff0:	e1a00005 	mov	r0, r5
 e008ff4:	e28dd02c 	add	sp, sp, #44	; 0x2c
 e008ff8:	e8bd8030 	pop	{r4, r5, pc}
 e008ffc:	e3030fb4 	movw	r0, #16308	; 0x3fb4
 e009000:	e3400e01 	movt	r0, #3585	; 0xe01
 e009004:	ebfffcad 	bl	e0082c0 <__wrap_printf>
 e009008:	e1a00004 	mov	r0, r4
 e00900c:	e28dd02c 	add	sp, sp, #44	; 0x2c
 e009010:	e8bd8030 	pop	{r4, r5, pc}
 e009014:	e3030fe4 	movw	r0, #16356	; 0x3fe4
 e009018:	e3400e01 	movt	r0, #3585	; 0xe01
 e00901c:	ebfffca7 	bl	e0082c0 <__wrap_printf>
 e009020:	e1a00004 	mov	r0, r4
 e009024:	e28dd02c 	add	sp, sp, #44	; 0x2c
 e009028:	e8bd8030 	pop	{r4, r5, pc}
 e00902c:	e3030f6c 	movw	r0, #16236	; 0x3f6c
 e009030:	e3400e01 	movt	r0, #3585	; 0xe01
 e009034:	ebfffca1 	bl	e0082c0 <__wrap_printf>
 e009038:	e1a00004 	mov	r0, r4
 e00903c:	e28dd02c 	add	sp, sp, #44	; 0x2c
 e009040:	e8bd8030 	pop	{r4, r5, pc}
 e009044:	e3030f90 	movw	r0, #16272	; 0x3f90
 e009048:	e3400e01 	movt	r0, #3585	; 0xe01
 e00904c:	ebfffc9b 	bl	e0082c0 <__wrap_printf>
 e009050:	e1a00004 	mov	r0, r4
 e009054:	e28dd02c 	add	sp, sp, #44	; 0x2c
 e009058:	e8bd8030 	pop	{r4, r5, pc}
 e00905c:	e3030f48 	movw	r0, #16200	; 0x3f48
 e009060:	e3400e01 	movt	r0, #3585	; 0xe01
 e009064:	ebfffc95 	bl	e0082c0 <__wrap_printf>
 e009068:	e3e00015 	mvn	r0, #21
 e00906c:	eaffffe0 	b	e008ff4 <psci_init+0xdc>

0e009070 <rtk_core1_power_on>:
 e009070:	e92d4070 	push	{r4, r5, r6, lr}
 e009074:	e3a06c02 	mov	r6, #512	; 0x200
 e009078:	e3446100 	movt	r6, #16640	; 0x4100
 e00907c:	e3a04441 	mov	r4, #1090519040	; 0x41000000
 e009080:	e3a00032 	mov	r0, #50	; 0x32
 e009084:	e5963004 	ldr	r3, [r6, #4]
 e009088:	e3095250 	movw	r5, #37456	; 0x9250
 e00908c:	e3405e00 	movt	r5, #3584	; 0xe00
 e009090:	e3c33022 	bic	r3, r3, #34	; 0x22
 e009094:	e5863004 	str	r3, [r6, #4]
 e009098:	e5943004 	ldr	r3, [r4, #4]
 e00909c:	e3833020 	orr	r3, r3, #32
 e0090a0:	e5843004 	str	r3, [r4, #4]
 e0090a4:	e12fff35 	blx	r5
 e0090a8:	e5943000 	ldr	r3, [r4]
 e0090ac:	e3a00032 	mov	r0, #50	; 0x32
 e0090b0:	e3833030 	orr	r3, r3, #48	; 0x30
 e0090b4:	e5843000 	str	r3, [r4]
 e0090b8:	e12fff35 	blx	r5
 e0090bc:	e5943000 	ldr	r3, [r4]
 e0090c0:	e3a00f7d 	mov	r0, #500	; 0x1f4
 e0090c4:	e38330c0 	orr	r3, r3, #192	; 0xc0
 e0090c8:	e5843000 	str	r3, [r4]
 e0090cc:	e12fff35 	blx	r5
 e0090d0:	e5943004 	ldr	r3, [r4, #4]
 e0090d4:	e3a00032 	mov	r0, #50	; 0x32
 e0090d8:	e3c33030 	bic	r3, r3, #48	; 0x30
 e0090dc:	e5843004 	str	r3, [r4, #4]
 e0090e0:	e12fff35 	blx	r5
 e0090e4:	e5962004 	ldr	r2, [r6, #4]
 e0090e8:	e3013122 	movw	r3, #4386	; 0x1122
 e0090ec:	e3403100 	movt	r3, #256	; 0x100
 e0090f0:	e1823003 	orr	r3, r2, r3
 e0090f4:	e5863004 	str	r3, [r6, #4]
 e0090f8:	e8bd8070 	pop	{r4, r5, r6, pc}

0e0090fc <vPortSecondaryStart>:
 e0090fc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e009100:	e24dd00c 	sub	sp, sp, #12
 e009104:	eb0019dd 	bl	e00f880 <ulPortGetCoreId>
 e009108:	eb00016f 	bl	e0096cc <pmu_get_secondary_cpu_state>
 e00910c:	e3500000 	cmp	r0, #0
 e009110:	0a000012 	beq	e009160 <vPortSecondaryStart+0x64>
 e009114:	eb0019d9 	bl	e00f880 <ulPortGetCoreId>
 e009118:	e3a02049 	mov	r2, #73	; 0x49
 e00911c:	e1a03000 	mov	r3, r0
 e009120:	e3041084 	movw	r1, #16516	; 0x4084
 e009124:	e3401e01 	movt	r1, #3585	; 0xe01
 e009128:	e3a00004 	mov	r0, #4
 e00912c:	e58d3000 	str	r3, [sp]
 e009130:	e30430ac 	movw	r3, #16556	; 0x40ac
 e009134:	e3403e01 	movt	r3, #3585	; 0xe01
 e009138:	eb0006bd 	bl	e00ac34 <rtk_log_write_nano>
 e00913c:	ebfffd99 	bl	e0087a8 <prvSetupHardwareSecondary>
 e009140:	ebfffda7 	bl	e0087e4 <vConfigureIPIInterrupt>
 e009144:	ebfffdd1 	bl	e008890 <vConfigureTickInterrupt>
 e009148:	e3a01000 	mov	r1, #0
 e00914c:	e3a00001 	mov	r0, #1
 e009150:	eb000159 	bl	e0096bc <pmu_set_secondary_cpu_state>
 e009154:	e28dd00c 	add	sp, sp, #12
 e009158:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 e00915c:	eaffdbda 	b	e0000cc <vPortRestoreTaskContext>
 e009160:	ebfffc16 	bl	e0081c0 <rtos_sched_get_state>
 e009164:	e3500001 	cmp	r0, #1
 e009168:	1affffe9 	bne	e009114 <vPortSecondaryStart+0x18>
 e00916c:	ebfffc13 	bl	e0081c0 <rtos_sched_get_state>
 e009170:	e3500001 	cmp	r0, #1
 e009174:	0afffff9 	beq	e009160 <vPortSecondaryStart+0x64>
 e009178:	eaffffe5 	b	e009114 <vPortSecondaryStart+0x18>

0e00917c <smp_init>:
 e00917c:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 e009180:	e3a02049 	mov	r2, #73	; 0x49
 e009184:	e24dd00c 	sub	sp, sp, #12
 e009188:	e3a00004 	mov	r0, #4
 e00918c:	e30430b8 	movw	r3, #16568	; 0x40b8
 e009190:	e3403e01 	movt	r3, #3585	; 0xe01
 e009194:	e3041084 	movw	r1, #16516	; 0x4084
 e009198:	e3401e01 	movt	r1, #3585	; 0xe01
 e00919c:	eb0006a4 	bl	e00ac34 <rtk_log_write_nano>
 e0091a0:	e30f33f4 	movw	r3, #62452	; 0xf3f4
 e0091a4:	e3403e00 	movt	r3, #3584	; 0xe00
 e0091a8:	e12fff33 	blx	r3
 e0091ac:	e3500003 	cmp	r0, #3
 e0091b0:	0a000004 	beq	e0091c8 <smp_init+0x4c>
 e0091b4:	ebffffad 	bl	e009070 <rtk_core1_power_on>
 e0091b8:	e3093250 	movw	r3, #37456	; 0x9250
 e0091bc:	e3403e00 	movt	r3, #3584	; 0xe00
 e0091c0:	e3a00032 	mov	r0, #50	; 0x32
 e0091c4:	e12fff33 	blx	r3
 e0091c8:	e30450c8 	movw	r5, #16584	; 0x40c8
 e0091cc:	e3465009 	movt	r5, #24585	; 0x6009
 e0091d0:	e30470e0 	movw	r7, #16608	; 0x40e0
 e0091d4:	e3407e01 	movt	r7, #3585	; 0xe01
 e0091d8:	e3046084 	movw	r6, #16516	; 0x4084
 e0091dc:	e3406e01 	movt	r6, #3585	; 0xe01
 e0091e0:	e3a04000 	mov	r4, #0
 e0091e4:	eb0019a5 	bl	e00f880 <ulPortGetCoreId>
 e0091e8:	e1a01005 	mov	r1, r5
 e0091ec:	e1500004 	cmp	r0, r4
 e0091f0:	0a000010 	beq	e009238 <smp_init+0xbc>
 e0091f4:	e1a00004 	mov	r0, r4
 e0091f8:	ebffff2f 	bl	e008ebc <psci_cpu_on>
 e0091fc:	e3500000 	cmp	r0, #0
 e009200:	ba000004 	blt	e009218 <smp_init+0x9c>
 e009204:	e3540001 	cmp	r4, #1
 e009208:	e3a04001 	mov	r4, #1
 e00920c:	1afffff4 	bne	e0091e4 <smp_init+0x68>
 e009210:	e28dd00c 	add	sp, sp, #12
 e009214:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
 e009218:	e58d0004 	str	r0, [sp, #4]
 e00921c:	e1a03007 	mov	r3, r7
 e009220:	e3a02045 	mov	r2, #69	; 0x45
 e009224:	e1a01006 	mov	r1, r6
 e009228:	e3a00002 	mov	r0, #2
 e00922c:	e58d4000 	str	r4, [sp]
 e009230:	eb00067f 	bl	e00ac34 <rtk_log_write_nano>
 e009234:	eafffff2 	b	e009204 <smp_init+0x88>
 e009238:	e3a01000 	mov	r1, #0
 e00923c:	eb00011e 	bl	e0096bc <pmu_set_secondary_cpu_state>
 e009240:	eaffffef 	b	e009204 <smp_init+0x88>

0e009244 <SOCPS_LPWAP_ipc_int>:
 e009244:	e3a01001 	mov	r1, #1
 e009248:	e1a00001 	mov	r0, r1
 e00924c:	ea000221 	b	e009ad8 <ipc_get_message>

0e009250 <DelayUs>:
 e009250:	e92d4370 	push	{r4, r5, r6, r8, r9, lr}
 e009254:	e30f33f4 	movw	r3, #62452	; 0xf3f4
 e009258:	e3403e00 	movt	r3, #3584	; 0xe00
 e00925c:	e1a06000 	mov	r6, r0
 e009260:	e12fff33 	blx	r3
 e009264:	e3500003 	cmp	r0, #3
 e009268:	0a000017 	beq	e0092cc <DelayUs+0x7c>
 e00926c:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
 e009270:	e3130001 	tst	r3, #1
 e009274:	0a000014 	beq	e0092cc <DelayUs+0x7c>
 e009278:	ec598f1e 	mrrc	15, 1, r8, r9, cr14
 e00927c:	ebfffd25 	bl	e008718 <vGetGenericTimerFreq>
 e009280:	e0830096 	umull	r0, r3, r6, r0
 e009284:	e3042240 	movw	r2, #16960	; 0x4240
 e009288:	e340200f 	movt	r2, #15
 e00928c:	e1a04008 	mov	r4, r8
 e009290:	e0213196 	mla	r1, r6, r1, r3
 e009294:	e3a03000 	mov	r3, #0
 e009298:	ebffdc3d 	bl	e000394 <__aeabi_uldivmod>
 e00929c:	e0900008 	adds	r0, r0, r8
 e0092a0:	e0a11009 	adc	r1, r1, r9
 e0092a4:	ec532f1e 	mrrc	15, 1, r2, r3, cr14
 e0092a8:	e1520000 	cmp	r2, r0
 e0092ac:	e0d33001 	sbcs	r3, r3, r1
 e0092b0:	28bd8370 	popcs	{r4, r5, r6, r8, r9, pc}
 e0092b4:	e320f000 	nop	{0}
 e0092b8:	ec532f1e 	mrrc	15, 1, r2, r3, cr14
 e0092bc:	e1520000 	cmp	r2, r0
 e0092c0:	e0d33001 	sbcs	r3, r3, r1
 e0092c4:	3afffffa 	bcc	e0092b4 <DelayUs+0x64>
 e0092c8:	e8bd8370 	pop	{r4, r5, r6, r8, r9, pc}
 e0092cc:	e3a03001 	mov	r3, #1
 e0092d0:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
 e0092d4:	eaffffe7 	b	e009278 <DelayUs+0x28>

0e0092d8 <DelayMs>:
 e0092d8:	e3a02ffa 	mov	r2, #1000	; 0x3e8
 e0092dc:	e3093250 	movw	r3, #37456	; 0x9250
 e0092e0:	e3403e00 	movt	r3, #3584	; 0xe00
 e0092e4:	e0000092 	mul	r0, r2, r0
 e0092e8:	e12fff13 	bx	r3

0e0092ec <SOCPS_SleepPG>:
 e0092ec:	e92d4010 	push	{r4, lr}
 e0092f0:	eb000031 	bl	e0093bc <pmu_exec_sleep_hook_funs>
 e0092f4:	e3500007 	cmp	r0, #7
 e0092f8:	0a000001 	beq	e009304 <SOCPS_SleepPG+0x18>
 e0092fc:	e8bd4010 	pop	{r4, lr}
 e009300:	ea00003f 	b	e009404 <pmu_exec_wakeup_hook_funs>
 e009304:	e1a04000 	mov	r4, r0
 e009308:	e3a02049 	mov	r2, #73	; 0x49
 e00930c:	e3a00004 	mov	r0, #4
 e009310:	e30430fc 	movw	r3, #16636	; 0x40fc
 e009314:	e3403e01 	movt	r3, #3585	; 0xe01
 e009318:	e3041084 	movw	r1, #16516	; 0x4084
 e00931c:	e3401e01 	movt	r1, #3585	; 0xe01
 e009320:	eb000643 	bl	e00ac34 <rtk_log_write_nano>
 e009324:	eb00298a 	bl	e013954 <SOCPS_SleepPG_LIB>
 e009328:	e3a02049 	mov	r2, #73	; 0x49
 e00932c:	e3a00004 	mov	r0, #4
 e009330:	e3043104 	movw	r3, #16644	; 0x4104
 e009334:	e3403e01 	movt	r3, #3585	; 0xe01
 e009338:	e3041084 	movw	r1, #16516	; 0x4084
 e00933c:	e3401e01 	movt	r1, #3585	; 0xe01
 e009340:	eb00063b 	bl	e00ac34 <rtk_log_write_nano>
 e009344:	e1a00004 	mov	r0, r4
 e009348:	eb00002d 	bl	e009404 <pmu_exec_wakeup_hook_funs>
 e00934c:	ebffff8a 	bl	e00917c <smp_init>
 e009350:	e8bd4010 	pop	{r4, lr}
 e009354:	e3a01002 	mov	r1, #2
 e009358:	e3a00001 	mov	r0, #1
 e00935c:	ea0000d6 	b	e0096bc <pmu_set_secondary_cpu_state>

0e009360 <SOCPS_SleepCG>:
 e009360:	e92d4010 	push	{r4, lr}
 e009364:	eb000014 	bl	e0093bc <pmu_exec_sleep_hook_funs>
 e009368:	e3500007 	cmp	r0, #7
 e00936c:	1a000010 	bne	e0093b4 <SOCPS_SleepCG+0x54>
 e009370:	e3a02049 	mov	r2, #73	; 0x49
 e009374:	e1a04000 	mov	r4, r0
 e009378:	e304310c 	movw	r3, #16652	; 0x410c
 e00937c:	e3403e01 	movt	r3, #3585	; 0xe01
 e009380:	e3a00004 	mov	r0, #4
 e009384:	e3041084 	movw	r1, #16516	; 0x4084
 e009388:	e3401e01 	movt	r1, #3585	; 0xe01
 e00938c:	eb000628 	bl	e00ac34 <rtk_log_write_nano>
 e009390:	eb002977 	bl	e013974 <SOCPS_SleepCG_LIB>
 e009394:	e3a00004 	mov	r0, #4
 e009398:	e3a02049 	mov	r2, #73	; 0x49
 e00939c:	e3043114 	movw	r3, #16660	; 0x4114
 e0093a0:	e3403e01 	movt	r3, #3585	; 0xe01
 e0093a4:	e3041084 	movw	r1, #16516	; 0x4084
 e0093a8:	e3401e01 	movt	r1, #3585	; 0xe01
 e0093ac:	eb000620 	bl	e00ac34 <rtk_log_write_nano>
 e0093b0:	e1a00004 	mov	r0, r4
 e0093b4:	e8bd4010 	pop	{r4, lr}
 e0093b8:	ea000011 	b	e009404 <pmu_exec_wakeup_hook_funs>

0e0093bc <pmu_exec_sleep_hook_funs>:
 e0093bc:	e92d4070 	push	{r4, r5, r6, lr}
 e0093c0:	e3034620 	movw	r4, #13856	; 0x3620
 e0093c4:	e346400a 	movt	r4, #24586	; 0x600a
 e0093c8:	e3a05000 	mov	r5, #0
 e0093cc:	e5943004 	ldr	r3, [r4, #4]
 e0093d0:	e3a00000 	mov	r0, #0
 e0093d4:	e1530000 	cmp	r3, r0
 e0093d8:	0a000003 	beq	e0093ec <pmu_exec_sleep_hook_funs+0x30>
 e0093dc:	e5941008 	ldr	r1, [r4, #8]
 e0093e0:	e12fff33 	blx	r3
 e0093e4:	e3500000 	cmp	r0, #0
 e0093e8:	0a000003 	beq	e0093fc <pmu_exec_sleep_hook_funs+0x40>
 e0093ec:	e2855001 	add	r5, r5, #1
 e0093f0:	e2844014 	add	r4, r4, #20
 e0093f4:	e3550007 	cmp	r5, #7
 e0093f8:	1afffff3 	bne	e0093cc <pmu_exec_sleep_hook_funs+0x10>
 e0093fc:	e1a00005 	mov	r0, r5
 e009400:	e8bd8070 	pop	{r4, r5, r6, pc}

0e009404 <pmu_exec_wakeup_hook_funs>:
 e009404:	e92d4070 	push	{r4, r5, r6, lr}
 e009408:	e2506000 	subs	r6, r0, #0
 e00940c:	08bd8070 	popeq	{r4, r5, r6, pc}
 e009410:	e3034620 	movw	r4, #13856	; 0x3620
 e009414:	e346400a 	movt	r4, #24586	; 0x600a
 e009418:	e3a05000 	mov	r5, #0
 e00941c:	e594300c 	ldr	r3, [r4, #12]
 e009420:	e3a00000 	mov	r0, #0
 e009424:	e2855001 	add	r5, r5, #1
 e009428:	e1530000 	cmp	r3, r0
 e00942c:	0a000001 	beq	e009438 <pmu_exec_wakeup_hook_funs+0x34>
 e009430:	e5941010 	ldr	r1, [r4, #16]
 e009434:	e12fff33 	blx	r3
 e009438:	e2844014 	add	r4, r4, #20
 e00943c:	e1560005 	cmp	r6, r5
 e009440:	1afffff5 	bne	e00941c <pmu_exec_wakeup_hook_funs+0x18>
 e009444:	e8bd8070 	pop	{r4, r5, r6, pc}

0e009448 <pmu_set_sysactive_time>:
 e009448:	e30326e8 	movw	r2, #14056	; 0x36e8
 e00944c:	e346200a 	movt	r2, #24586	; 0x600a
 e009450:	e92d4070 	push	{r4, r5, r6, lr}
 e009454:	e30336ec 	movw	r3, #14060	; 0x36ec
 e009458:	e346300a 	movt	r3, #24586	; 0x600a
 e00945c:	e5925000 	ldr	r5, [r2]
 e009460:	e5934000 	ldr	r4, [r3]
 e009464:	e3550000 	cmp	r5, #0
 e009468:	0a000005 	beq	e009484 <pmu_set_sysactive_time+0x3c>
 e00946c:	e3a05001 	mov	r5, #1
 e009470:	e1500004 	cmp	r0, r4
 e009474:	9a000000 	bls	e00947c <pmu_set_sysactive_time+0x34>
 e009478:	e5830000 	str	r0, [r3]
 e00947c:	e1a00005 	mov	r0, r5
 e009480:	e8bd8070 	pop	{r4, r5, r6, pc}
 e009484:	e1500004 	cmp	r0, r4
 e009488:	21a04000 	movcs	r4, r0
 e00948c:	e5835000 	str	r5, [r3]
 e009490:	ebfffb77 	bl	e008274 <rtos_time_get_current_system_time_ms>
 e009494:	e30336e4 	movw	r3, #14052	; 0x36e4
 e009498:	e346300a 	movt	r3, #24586	; 0x600a
 e00949c:	e0800004 	add	r0, r0, r4
 e0094a0:	e5932000 	ldr	r2, [r3]
 e0094a4:	e1520000 	cmp	r2, r0
 e0094a8:	2a000003 	bcs	e0094bc <pmu_set_sysactive_time+0x74>
 e0094ac:	e0402002 	sub	r2, r0, r2
 e0094b0:	e372010a 	cmn	r2, #-2147483646	; 0x80000002
 e0094b4:	95830000 	strls	r0, [r3]
 e0094b8:	eaffffef 	b	e00947c <pmu_set_sysactive_time+0x34>
 e0094bc:	e0421000 	sub	r1, r2, r0
 e0094c0:	e371010a 	cmn	r1, #-2147483646	; 0x80000002
 e0094c4:	8affffeb 	bhi	e009478 <pmu_set_sysactive_time+0x30>
 e0094c8:	e1520000 	cmp	r2, r0
 e0094cc:	0affffe9 	beq	e009478 <pmu_set_sysactive_time+0x30>
 e0094d0:	e1a00005 	mov	r0, r5
 e0094d4:	e8bd8070 	pop	{r4, r5, r6, pc}

0e0094d8 <pmu_yield_os_check>:
 e0094d8:	e3053264 	movw	r3, #21092	; 0x5264
 e0094dc:	e3463009 	movt	r3, #24585	; 0x6009
 e0094e0:	e5930000 	ldr	r0, [r3]
 e0094e4:	e12fff1e 	bx	lr

0e0094e8 <pmu_ready_to_sleep>:
 e0094e8:	e92d4010 	push	{r4, lr}
 e0094ec:	ebfffb60 	bl	e008274 <rtos_time_get_current_system_time_ms>
 e0094f0:	e30336e4 	movw	r3, #14052	; 0x36e4
 e0094f4:	e346300a 	movt	r3, #24586	; 0x600a
 e0094f8:	e5933000 	ldr	r3, [r3]
 e0094fc:	e1530000 	cmp	r3, r0
 e009500:	2a000008 	bcs	e009528 <pmu_ready_to_sleep+0x40>
 e009504:	e0400003 	sub	r0, r0, r3
 e009508:	e370010a 	cmn	r0, #-2147483646	; 0x80000002
 e00950c:	8a00000a 	bhi	e00953c <pmu_ready_to_sleep+0x54>
 e009510:	e3053268 	movw	r3, #21096	; 0x5268
 e009514:	e3463009 	movt	r3, #24585	; 0x6009
 e009518:	e5930000 	ldr	r0, [r3]
 e00951c:	e16f0f10 	clz	r0, r0
 e009520:	e1a002a0 	lsr	r0, r0, #5
 e009524:	e8bd8010 	pop	{r4, pc}
 e009528:	e0432000 	sub	r2, r3, r0
 e00952c:	e372010a 	cmn	r2, #-2147483646	; 0x80000002
 e009530:	8afffff6 	bhi	e009510 <pmu_ready_to_sleep+0x28>
 e009534:	e1530000 	cmp	r3, r0
 e009538:	9afffff4 	bls	e009510 <pmu_ready_to_sleep+0x28>
 e00953c:	e3a00000 	mov	r0, #0
 e009540:	e8bd8010 	pop	{r4, pc}

0e009544 <pmu_pre_sleep_processing>:
 e009544:	e92d4070 	push	{r4, r5, r6, lr}
 e009548:	e1a05000 	mov	r5, r0
 e00954c:	eb001aac 	bl	e010004 <xTaskGetTickCount>
 e009550:	e303361c 	movw	r3, #13852	; 0x361c
 e009554:	e346300a 	movt	r3, #24586	; 0x600a
 e009558:	e5933000 	ldr	r3, [r3]
 e00955c:	e1500003 	cmp	r0, r3
 e009560:	3a000004 	bcc	e009578 <pmu_pre_sleep_processing+0x34>
 e009564:	e3053260 	movw	r3, #21088	; 0x5260
 e009568:	e3463009 	movt	r3, #24585	; 0x6009
 e00956c:	e5932000 	ldr	r2, [r3]
 e009570:	e3520000 	cmp	r2, #0
 e009574:	0a000019 	beq	e0095e0 <pmu_pre_sleep_processing+0x9c>
 e009578:	e30326ac 	movw	r2, #13996	; 0x36ac
 e00957c:	e346200a 	movt	r2, #24586	; 0x600a
 e009580:	e30336c0 	movw	r3, #14016	; 0x36c0
 e009584:	e346300a 	movt	r3, #24586	; 0x600a
 e009588:	e5920000 	ldr	r0, [r2]
 e00958c:	e3a01000 	mov	r1, #0
 e009590:	e5830004 	str	r0, [r3, #4]
 e009594:	e5821000 	str	r1, [r2]
 e009598:	e5831008 	str	r1, [r3, #8]
 e00959c:	e30346e0 	movw	r4, #14048	; 0x36e0
 e0095a0:	e346400a 	movt	r4, #24586	; 0x600a
 e0095a4:	e30f23b0 	movw	r2, #62384	; 0xf3b0
 e0095a8:	e3402e00 	movt	r2, #3584	; 0xe00
 e0095ac:	e5941000 	ldr	r1, [r4]
 e0095b0:	e5831000 	str	r1, [r3]
 e0095b4:	e12fff32 	blx	r2
 e0095b8:	e30336e8 	movw	r3, #14056	; 0x36e8
 e0095bc:	e346300a 	movt	r3, #24586	; 0x600a
 e0095c0:	e5941000 	ldr	r1, [r4]
 e0095c4:	e3a02001 	mov	r2, #1
 e0095c8:	e5850000 	str	r0, [r5]
 e0095cc:	e1510002 	cmp	r1, r2
 e0095d0:	e5832000 	str	r2, [r3]
 e0095d4:	0a000007 	beq	e0095f8 <pmu_pre_sleep_processing+0xb4>
 e0095d8:	e8bd4070 	pop	{r4, r5, r6, lr}
 e0095dc:	eaffff42 	b	e0092ec <SOCPS_SleepPG>
 e0095e0:	e30336c0 	movw	r3, #14016	; 0x36c0
 e0095e4:	e346300a 	movt	r3, #24586	; 0x600a
 e0095e8:	e3a01001 	mov	r1, #1
 e0095ec:	e5832004 	str	r2, [r3, #4]
 e0095f0:	e5831008 	str	r1, [r3, #8]
 e0095f4:	eaffffe8 	b	e00959c <pmu_pre_sleep_processing+0x58>
 e0095f8:	e8bd4070 	pop	{r4, r5, r6, lr}
 e0095fc:	eaffff57 	b	e009360 <SOCPS_SleepCG>

0e009600 <pmu_acquire_wakelock>:
 e009600:	e92d4010 	push	{r4, lr}
 e009604:	e1a04000 	mov	r4, r0
 e009608:	eb001881 	bl	e00f814 <ulPortInterruptLock>
 e00960c:	e3053268 	movw	r3, #21096	; 0x5268
 e009610:	e3463009 	movt	r3, #24585	; 0x6009
 e009614:	e3a01001 	mov	r1, #1
 e009618:	e5932000 	ldr	r2, [r3]
 e00961c:	e1822411 	orr	r2, r2, r1, lsl r4
 e009620:	e5832000 	str	r2, [r3]
 e009624:	e8bd4010 	pop	{r4, lr}
 e009628:	ea00187e 	b	e00f828 <ulPortInterruptUnLock>

0e00962c <pmu_release_wakelock>:
 e00962c:	e92d4010 	push	{r4, lr}
 e009630:	e1a04000 	mov	r4, r0
 e009634:	eb001876 	bl	e00f814 <ulPortInterruptLock>
 e009638:	e3053268 	movw	r3, #21096	; 0x5268
 e00963c:	e3463009 	movt	r3, #24585	; 0x6009
 e009640:	e3a01001 	mov	r1, #1
 e009644:	e5932000 	ldr	r2, [r3]
 e009648:	e1c22411 	bic	r2, r2, r1, lsl r4
 e00964c:	e5832000 	str	r2, [r3]
 e009650:	e8bd4010 	pop	{r4, lr}
 e009654:	ea001873 	b	e00f828 <ulPortInterruptUnLock>

0e009658 <pmu_get_wakelock_status>:
 e009658:	e3053268 	movw	r3, #21096	; 0x5268
 e00965c:	e3463009 	movt	r3, #24585	; 0x6009
 e009660:	e5930000 	ldr	r0, [r3]
 e009664:	e12fff1e 	bx	lr

0e009668 <pmu_set_sleep_type>:
 e009668:	e30336e0 	movw	r3, #14048	; 0x36e0
 e00966c:	e346300a 	movt	r3, #24586	; 0x600a
 e009670:	e1a02000 	mov	r2, r0
 e009674:	e3a00000 	mov	r0, #0
 e009678:	e5832000 	str	r2, [r3]
 e00967c:	e12fff1e 	bx	lr

0e009680 <pmu_get_sleep_type>:
 e009680:	e30336e0 	movw	r3, #14048	; 0x36e0
 e009684:	e346300a 	movt	r3, #24586	; 0x600a
 e009688:	e5930000 	ldr	r0, [r3]
 e00968c:	e12fff1e 	bx	lr

0e009690 <pmu_acquire_deepwakelock>:
 e009690:	e3053260 	movw	r3, #21088	; 0x5260
 e009694:	e3463009 	movt	r3, #24585	; 0x6009
 e009698:	e3a01001 	mov	r1, #1
 e00969c:	e5932000 	ldr	r2, [r3]
 e0096a0:	e1822011 	orr	r2, r2, r1, lsl r0
 e0096a4:	e5832000 	str	r2, [r3]
 e0096a8:	e12fff1e 	bx	lr

0e0096ac <pmu_get_deepwakelock_status>:
 e0096ac:	e3053260 	movw	r3, #21088	; 0x5260
 e0096b0:	e3463009 	movt	r3, #24585	; 0x6009
 e0096b4:	e5930000 	ldr	r0, [r3]
 e0096b8:	e12fff1e 	bx	lr

0e0096bc <pmu_set_secondary_cpu_state>:
 e0096bc:	e3033614 	movw	r3, #13844	; 0x3614
 e0096c0:	e346300a 	movt	r3, #24586	; 0x600a
 e0096c4:	e7831100 	str	r1, [r3, r0, lsl #2]
 e0096c8:	e12fff1e 	bx	lr

0e0096cc <pmu_get_secondary_cpu_state>:
 e0096cc:	e3033614 	movw	r3, #13844	; 0x3614
 e0096d0:	e346300a 	movt	r3, #24586	; 0x600a
 e0096d4:	e7930100 	ldr	r0, [r3, r0, lsl #2]
 e0096d8:	e12fff1e 	bx	lr

0e0096dc <pmu_secondary_cpu_state_is_running>:
 e0096dc:	e3033614 	movw	r3, #13844	; 0x3614
 e0096e0:	e346300a 	movt	r3, #24586	; 0x600a
 e0096e4:	e7930100 	ldr	r0, [r3, r0, lsl #2]
 e0096e8:	e16f0f10 	clz	r0, r0
 e0096ec:	e1a002a0 	lsr	r0, r0, #5
 e0096f0:	e12fff1e 	bx	lr

0e0096f4 <pmu_secondary_cpu_state_is_hotplug>:
 e0096f4:	e3033614 	movw	r3, #13844	; 0x3614
 e0096f8:	e346300a 	movt	r3, #24586	; 0x600a
 e0096fc:	e7930100 	ldr	r0, [r3, r0, lsl #2]
 e009700:	e2400001 	sub	r0, r0, #1
 e009704:	e16f0f10 	clz	r0, r0
 e009708:	e1a002a0 	lsr	r0, r0, #5
 e00970c:	e12fff1e 	bx	lr

0e009710 <ipc_table_init>:
 e009710:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e009714:	e305365c 	movw	r3, #22108	; 0x565c
 e009718:	e3403e01 	movt	r3, #3585	; 0xe01
 e00971c:	e3054608 	movw	r4, #22024	; 0x5608
 e009720:	e3404e01 	movt	r4, #3585	; 0xe01
 e009724:	e0433004 	sub	r3, r3, r4
 e009728:	e3042925 	movw	r2, #18725	; 0x4925
 e00972c:	e3422492 	movt	r2, #9362	; 0x2492
 e009730:	e1a07123 	lsr	r7, r3, #2
 e009734:	e24dd00c 	sub	sp, sp, #12
 e009738:	e353001b 	cmp	r3, #27
 e00973c:	e0872792 	umull	r2, r7, r2, r7
 e009740:	9a00003b 	bls	e009834 <ipc_table_init+0x124>
 e009744:	e3a0ac86 	mov	sl, #34304	; 0x8600
 e009748:	e344a200 	movt	sl, #16896	; 0x4200
 e00974c:	e304911c 	movw	r9, #16668	; 0x411c
 e009750:	e3409e01 	movt	r9, #3585	; 0xe01
 e009754:	e3048144 	movw	r8, #16708	; 0x4144
 e009758:	e3408e01 	movt	r8, #3585	; 0xe01
 e00975c:	e1a06000 	mov	r6, r0
 e009760:	e3a05000 	mov	r5, #0
 e009764:	ea000014 	b	e0097bc <ipc_table_init+0xac>
 e009768:	e3a01c05 	mov	r1, #1280	; 0x500
 e00976c:	e3441100 	movt	r1, #16640	; 0x4100
 e009770:	e1560001 	cmp	r6, r1
 e009774:	0a00001c 	beq	e0097ec <ipc_table_init+0xdc>
 e009778:	e3520000 	cmp	r2, #0
 e00977c:	13530020 	cmpne	r3, #32
 e009780:	1a000000 	bne	e009788 <ipc_table_init+0x78>
 e009784:	e28bb008 	add	fp, fp, #8
 e009788:	e1a00006 	mov	r0, r6
 e00978c:	eb000153 	bl	e009ce0 <IPC_IERGet>
 e009790:	e3a03001 	mov	r3, #1
 e009794:	e0103b13 	ands	r3, r0, r3, lsl fp
 e009798:	1a00002d 	bne	e009854 <ipc_table_init+0x144>
 e00979c:	e1c420dc 	ldrd	r2, [r4, #12]
 e0097a0:	e6ef107b 	uxtb	r1, fp
 e0097a4:	e1a00006 	mov	r0, r6
 e0097a8:	eb000168 	bl	e009d50 <IPC_INTUserHandler>
 e0097ac:	e2855001 	add	r5, r5, #1
 e0097b0:	e284401c 	add	r4, r4, #28
 e0097b4:	e1570005 	cmp	r7, r5
 e0097b8:	9a00001d 	bls	e009834 <ipc_table_init+0x124>
 e0097bc:	e5943014 	ldr	r3, [r4, #20]
 e0097c0:	e594b018 	ldr	fp, [r4, #24]
 e0097c4:	e3c32010 	bic	r2, r3, #16
 e0097c8:	e3530021 	cmp	r3, #33	; 0x21
 e0097cc:	13530000 	cmpne	r3, #0
 e0097d0:	0affffe4 	beq	e009768 <ipc_table_init+0x58>
 e0097d4:	e3520001 	cmp	r2, #1
 e0097d8:	1a000017 	bne	e00983c <ipc_table_init+0x12c>
 e0097dc:	e3a02d16 	mov	r2, #1408	; 0x580
 e0097e0:	e3442100 	movt	r2, #16640	; 0x4100
 e0097e4:	e1560002 	cmp	r6, r2
 e0097e8:	1affffe6 	bne	e009788 <ipc_table_init+0x78>
 e0097ec:	e3530010 	cmp	r3, #16
 e0097f0:	13530001 	cmpne	r3, #1
 e0097f4:	93a03018 	movls	r3, #24
 e0097f8:	83a03010 	movhi	r3, #16
 e0097fc:	e1a00006 	mov	r0, r6
 e009800:	e08bb003 	add	fp, fp, r3
 e009804:	eb000135 	bl	e009ce0 <IPC_IERGet>
 e009808:	e3a03001 	mov	r3, #1
 e00980c:	e0103b13 	ands	r3, r0, r3, lsl fp
 e009810:	1a00000f 	bne	e009854 <ipc_table_init+0x144>
 e009814:	e1c420d4 	ldrd	r2, [r4, #4]
 e009818:	e6ef107b 	uxtb	r1, fp
 e00981c:	e1a00006 	mov	r0, r6
 e009820:	e2855001 	add	r5, r5, #1
 e009824:	eb000149 	bl	e009d50 <IPC_INTUserHandler>
 e009828:	e284401c 	add	r4, r4, #28
 e00982c:	e1570005 	cmp	r7, r5
 e009830:	8affffe1 	bhi	e0097bc <ipc_table_init+0xac>
 e009834:	e28dd00c 	add	sp, sp, #12
 e009838:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00983c:	e2432010 	sub	r2, r3, #16
 e009840:	e3d22010 	bics	r2, r2, #16
 e009844:	1affffd8 	bne	e0097ac <ipc_table_init+0x9c>
 e009848:	e156000a 	cmp	r6, sl
 e00984c:	1affffcc 	bne	e009784 <ipc_table_init+0x74>
 e009850:	eaffffe5 	b	e0097ec <ipc_table_init+0xdc>
 e009854:	e1a03009 	mov	r3, r9
 e009858:	e3a02045 	mov	r2, #69	; 0x45
 e00985c:	e1a01008 	mov	r1, r8
 e009860:	e3a00002 	mov	r0, #2
 e009864:	e58db000 	str	fp, [sp]
 e009868:	eb0004bd 	bl	e00ab64 <rtk_log_write>
 e00986c:	eaffffce 	b	e0097ac <ipc_table_init+0x9c>

0e009870 <IPC_TXHandler>:
 e009870:	e3a03902 	mov	r3, #32768	; 0x8000
 e009874:	e3443200 	movt	r3, #16896	; 0x4200
 e009878:	e92d4010 	push	{r4, lr}
 e00987c:	e1a04002 	mov	r4, r2
 e009880:	e593027c 	ldr	r0, [r3, #636]	; 0x27c
 e009884:	e7e10350 	ubfx	r0, r0, #6, #2
 e009888:	eb00013e 	bl	e009d88 <IPC_GetDevById>
 e00988c:	e3a02000 	mov	r2, #0
 e009890:	e6ef1074 	uxtb	r1, r4
 e009894:	eb000109 	bl	e009cc0 <IPC_INTConfig>
 e009898:	e30336f0 	movw	r3, #14064	; 0x36f0
 e00989c:	e346300a 	movt	r3, #24586	; 0x600a
 e0098a0:	e7930104 	ldr	r0, [r3, r4, lsl #2]
 e0098a4:	e3500000 	cmp	r0, #0
 e0098a8:	08bd8010 	popeq	{r4, pc}
 e0098ac:	e8bd4010 	pop	{r4, lr}
 e0098b0:	eafffa19 	b	e00811c <rtos_sema_give>

0e0098b4 <IPC_wait_idle>:
 e0098b4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e0098b8:	e1a04000 	mov	r4, r0
 e0098bc:	e1a05001 	mov	r5, r1
 e0098c0:	eb000474 	bl	e00aa98 <CPU_InInterrupt>
 e0098c4:	e3500000 	cmp	r0, #0
 e0098c8:	1a000015 	bne	e009924 <IPC_wait_idle+0x70>
 e0098cc:	e30337b4 	movw	r3, #14260	; 0x37b4
 e0098d0:	e346300a 	movt	r3, #24586	; 0x600a
 e0098d4:	e7933105 	ldr	r3, [r3, r5, lsl #2]
 e0098d8:	e3530000 	cmp	r3, #0
 e0098dc:	0a000010 	beq	e009924 <IPC_wait_idle+0x70>
 e0098e0:	e30366f0 	movw	r6, #14064	; 0x36f0
 e0098e4:	e346600a 	movt	r6, #24586	; 0x600a
 e0098e8:	e7963105 	ldr	r3, [r6, r5, lsl #2]
 e0098ec:	e3530000 	cmp	r3, #0
 e0098f0:	0a000020 	beq	e009978 <IPC_wait_idle+0xc4>
 e0098f4:	e6ef7075 	uxtb	r7, r5
 e0098f8:	e3a02001 	mov	r2, #1
 e0098fc:	e1a01007 	mov	r1, r7
 e009900:	e1a00004 	mov	r0, r4
 e009904:	eb0000ed 	bl	e009cc0 <IPC_INTConfig>
 e009908:	e7960105 	ldr	r0, [r6, r5, lsl #2]
 e00990c:	e3e01000 	mvn	r1, #0
 e009910:	ebfff9db 	bl	e008084 <rtos_sema_take>
 e009914:	e3500000 	cmp	r0, #0
 e009918:	1a000019 	bne	e009984 <IPC_wait_idle+0xd0>
 e00991c:	e3a00000 	mov	r0, #0
 e009920:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e009924:	e3a02001 	mov	r2, #1
 e009928:	e3093680 	movw	r3, #38528	; 0x9680
 e00992c:	e3403098 	movt	r3, #152	; 0x98
 e009930:	e1a01512 	lsl	r1, r2, r5
 e009934:	ea000001 	b	e009940 <IPC_wait_idle+0x8c>
 e009938:	e2533001 	subs	r3, r3, #1
 e00993c:	0a000004 	beq	e009954 <IPC_wait_idle+0xa0>
 e009940:	e5942000 	ldr	r2, [r4]
 e009944:	e1120001 	tst	r2, r1
 e009948:	1afffffa 	bne	e009938 <IPC_wait_idle+0x84>
 e00994c:	e3a00000 	mov	r0, #0
 e009950:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e009954:	e3a02045 	mov	r2, #69	; 0x45
 e009958:	e3a00002 	mov	r0, #2
 e00995c:	e3043148 	movw	r3, #16712	; 0x4148
 e009960:	e3403e01 	movt	r3, #3585	; 0xe01
 e009964:	e3041144 	movw	r1, #16708	; 0x4144
 e009968:	e3401e01 	movt	r1, #3585	; 0xe01
 e00996c:	eb0004b0 	bl	e00ac34 <rtk_log_write_nano>
 e009970:	e3a00002 	mov	r0, #2
 e009974:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e009978:	e0860105 	add	r0, r6, r5, lsl #2
 e00997c:	ebfff9b2 	bl	e00804c <rtos_sema_create_binary>
 e009980:	eaffffdb 	b	e0098f4 <IPC_wait_idle+0x40>
 e009984:	e3a02045 	mov	r2, #69	; 0x45
 e009988:	e3a00002 	mov	r0, #2
 e00998c:	e3043160 	movw	r3, #16736	; 0x4160
 e009990:	e3403e01 	movt	r3, #3585	; 0xe01
 e009994:	e3041144 	movw	r1, #16708	; 0x4144
 e009998:	e3401e01 	movt	r1, #3585	; 0xe01
 e00999c:	eb0004a4 	bl	e00ac34 <rtk_log_write_nano>
 e0099a0:	e1a00004 	mov	r0, r4
 e0099a4:	e3a02000 	mov	r2, #0
 e0099a8:	e1a01007 	mov	r1, r7
 e0099ac:	eb0000c3 	bl	e009cc0 <IPC_INTConfig>
 e0099b0:	e3a00003 	mov	r0, #3
 e0099b4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0e0099b8 <ipc_send_message>:
 e0099b8:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e0099bc:	e3d03011 	bics	r3, r0, #17
 e0099c0:	e1a05000 	mov	r5, r0
 e0099c4:	e1a04001 	mov	r4, r1
 e0099c8:	e1a08002 	mov	r8, r2
 e0099cc:	0a000002 	beq	e0099dc <ipc_send_message+0x24>
 e0099d0:	e2403020 	sub	r3, r0, #32
 e0099d4:	e3530001 	cmp	r3, #1
 e0099d8:	8a00003a 	bhi	e009ac8 <ipc_send_message+0x110>
 e0099dc:	e3540007 	cmp	r4, #7
 e0099e0:	8a000034 	bhi	e009ab8 <ipc_send_message+0x100>
 e0099e4:	e3550021 	cmp	r5, #33	; 0x21
 e0099e8:	83a06000 	movhi	r6, #0
 e0099ec:	9304320c 	movwls	r3, #16908	; 0x420c
 e0099f0:	930421e8 	movwls	r2, #16872	; 0x41e8
 e0099f4:	93403e01 	movtls	r3, #3585	; 0xe01
 e0099f8:	93402e01 	movtls	r2, #3585	; 0xe01
 e0099fc:	81a01004 	movhi	r1, r4
 e009a00:	97936105 	ldrls	r6, [r3, r5, lsl #2]
 e009a04:	97d21005 	ldrbls	r1, [r2, r5]
 e009a08:	e3a09001 	mov	r9, #1
 e009a0c:	90811004 	addls	r1, r1, r4
 e009a10:	e5963000 	ldr	r3, [r6]
 e009a14:	e1a07119 	lsl	r7, r9, r1
 e009a18:	e1130007 	tst	r3, r7
 e009a1c:	1a00001f 	bne	e009aa0 <ipc_send_message+0xe8>
 e009a20:	e3580000 	cmp	r8, #0
 e009a24:	0a00001a 	beq	e009a94 <ipc_send_message+0xdc>
 e009a28:	e7e30255 	ubfx	r0, r5, #4, #4
 e009a2c:	e205500f 	and	r5, r5, #15
 e009a30:	e0855080 	add	r5, r5, r0, lsl #1
 e009a34:	e30f0d00 	movw	r0, #64768	; 0xfd00
 e009a38:	e3420301 	movt	r0, #8961	; 0x2301
 e009a3c:	e0844185 	add	r4, r4, r5, lsl #3
 e009a40:	e1a01008 	mov	r1, r8
 e009a44:	e0804204 	add	r4, r0, r4, lsl #4
 e009a48:	e3a02010 	mov	r2, #16
 e009a4c:	e1a00004 	mov	r0, r4
 e009a50:	e30b31a0 	movw	r3, #45472	; 0xb1a0
 e009a54:	e3403e00 	movt	r3, #3584	; 0xe00
 e009a58:	e12fff33 	blx	r3
 e009a5c:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
 e009a60:	e3130004 	tst	r3, #4
 e009a64:	0a00000a 	beq	e009a94 <ipc_send_message+0xdc>
 e009a68:	e284300f 	add	r3, r4, #15
 e009a6c:	e3c3303f 	bic	r3, r3, #63	; 0x3f
 e009a70:	e3c4003f 	bic	r0, r4, #63	; 0x3f
 e009a74:	e2833040 	add	r3, r3, #64	; 0x40
 e009a78:	e1500003 	cmp	r0, r3
 e009a7c:	2a000003 	bcs	e009a90 <ipc_send_message+0xd8>
 e009a80:	ee070f3a 	mcr	15, 0, r0, cr7, cr10, {1}
 e009a84:	e2800040 	add	r0, r0, #64	; 0x40
 e009a88:	e1530000 	cmp	r3, r0
 e009a8c:	8afffffb 	bhi	e009a80 <ipc_send_message+0xc8>
 e009a90:	f57ff05f 	dmb	sy
 e009a94:	e3a00000 	mov	r0, #0
 e009a98:	e5867000 	str	r7, [r6]
 e009a9c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e009aa0:	e1a00006 	mov	r0, r6
 e009aa4:	ebffff82 	bl	e0098b4 <IPC_wait_idle>
 e009aa8:	e3500000 	cmp	r0, #0
 e009aac:	0affffdb 	beq	e009a20 <ipc_send_message+0x68>
 e009ab0:	e1a00009 	mov	r0, r9
 e009ab4:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e009ab8:	e3040180 	movw	r0, #16768	; 0x4180
 e009abc:	e3400e01 	movt	r0, #3585	; 0xe01
 e009ac0:	e3a010b3 	mov	r1, #179	; 0xb3
 e009ac4:	eb00162b 	bl	e00f378 <io_assert_failed>
 e009ac8:	e3040180 	movw	r0, #16768	; 0x4180
 e009acc:	e3400e01 	movt	r0, #3585	; 0xe01
 e009ad0:	e3a010b2 	mov	r1, #178	; 0xb2
 e009ad4:	eb001627 	bl	e00f378 <io_assert_failed>

0e009ad8 <ipc_get_message>:
 e009ad8:	e200300f 	and	r3, r0, #15
 e009adc:	e7e30250 	ubfx	r0, r0, #4, #4
 e009ae0:	e0833080 	add	r3, r3, r0, lsl #1
 e009ae4:	e30f0d00 	movw	r0, #64768	; 0xfd00
 e009ae8:	e3420301 	movt	r0, #8961	; 0x2301
 e009aec:	e0811183 	add	r1, r1, r3, lsl #3
 e009af0:	e0800201 	add	r0, r0, r1, lsl #4
 e009af4:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
 e009af8:	e3130004 	tst	r3, #4
 e009afc:	012fff1e 	bxeq	lr
 e009b00:	e280200f 	add	r2, r0, #15
 e009b04:	e3c2203f 	bic	r2, r2, #63	; 0x3f
 e009b08:	e3c0303f 	bic	r3, r0, #63	; 0x3f
 e009b0c:	e2822040 	add	r2, r2, #64	; 0x40
 e009b10:	e1530002 	cmp	r3, r2
 e009b14:	2a000003 	bcs	e009b28 <ipc_get_message+0x50>
 e009b18:	ee073f36 	mcr	15, 0, r3, cr7, cr6, {1}
 e009b1c:	e2833040 	add	r3, r3, #64	; 0x40
 e009b20:	e1520003 	cmp	r2, r3
 e009b24:	8afffffb 	bhi	e009b18 <ipc_get_message+0x40>
 e009b28:	f57ff05f 	dmb	sy
 e009b2c:	e12fff1e 	bx	lr

0e009b30 <IPC_SEMTake>:
 e009b30:	e350000f 	cmp	r0, #15
 e009b34:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e009b38:	8a00003b 	bhi	e009c2c <IPC_SEMTake+0xfc>
 e009b3c:	e30e3270 	movw	r3, #57968	; 0xe270
 e009b40:	e3403e00 	movt	r3, #3584	; 0xe00
 e009b44:	e1a08000 	mov	r8, r0
 e009b48:	e1a04001 	mov	r4, r1
 e009b4c:	e12fff33 	blx	r3
 e009b50:	e3500002 	cmp	r0, #2
 e009b54:	9a000019 	bls	e009bc0 <IPC_SEMTake+0x90>
 e009b58:	e30250f0 	movw	r5, #8432	; 0x20f0
 e009b5c:	e3415080 	movt	r5, #4224	; 0x1080
 e009b60:	e0885005 	add	r5, r8, r5
 e009b64:	e1a05105 	lsl	r5, r5, #2
 e009b68:	e5953000 	ldr	r3, [r5]
 e009b6c:	e3530000 	cmp	r3, #0
 e009b70:	0a00002b 	beq	e009c24 <IPC_SEMTake+0xf4>
 e009b74:	e3540000 	cmp	r4, #0
 e009b78:	0a00000e 	beq	e009bb8 <IPC_SEMTake+0x88>
 e009b7c:	e3036730 	movw	r6, #14128	; 0x3730
 e009b80:	e346600a 	movt	r6, #24586	; 0x600a
 e009b84:	ea000002 	b	e009b94 <IPC_SEMTake+0x64>
 e009b88:	e5953000 	ldr	r3, [r5]
 e009b8c:	e3530000 	cmp	r3, #0
 e009b90:	0a000023 	beq	e009c24 <IPC_SEMTake+0xf4>
 e009b94:	e5963000 	ldr	r3, [r6]
 e009b98:	e3530000 	cmp	r3, #0
 e009b9c:	0a000001 	beq	e009ba8 <IPC_SEMTake+0x78>
 e009ba0:	e3a00001 	mov	r0, #1
 e009ba4:	e12fff33 	blx	r3
 e009ba8:	e3740001 	cmn	r4, #1
 e009bac:	0afffff5 	beq	e009b88 <IPC_SEMTake+0x58>
 e009bb0:	e2544001 	subs	r4, r4, #1
 e009bb4:	1afffff3 	bne	e009b88 <IPC_SEMTake+0x58>
 e009bb8:	e3a00000 	mov	r0, #0
 e009bbc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e009bc0:	e3a03001 	mov	r3, #1
 e009bc4:	e3a06c82 	mov	r6, #33280	; 0x8200
 e009bc8:	e3446200 	movt	r6, #16896	; 0x4200
 e009bcc:	e3037730 	movw	r7, #14128	; 0x3730
 e009bd0:	e346700a 	movt	r7, #24586	; 0x600a
 e009bd4:	e1a08813 	lsl	r8, r3, r8
 e009bd8:	ea000008 	b	e009c00 <IPC_SEMTake+0xd0>
 e009bdc:	e3540000 	cmp	r4, #0
 e009be0:	0afffff4 	beq	e009bb8 <IPC_SEMTake+0x88>
 e009be4:	e5973000 	ldr	r3, [r7]
 e009be8:	e3530000 	cmp	r3, #0
 e009bec:	0a000001 	beq	e009bf8 <IPC_SEMTake+0xc8>
 e009bf0:	e3a00001 	mov	r0, #1
 e009bf4:	e12fff33 	blx	r3
 e009bf8:	e2544001 	subs	r4, r4, #1
 e009bfc:	0affffed 	beq	e009bb8 <IPC_SEMTake+0x88>
 e009c00:	e1d63fb4 	ldrh	r3, [r6, #244]	; 0xf4
 e009c04:	e1130008 	tst	r3, r8
 e009c08:	e6ff3073 	uxth	r3, r3
 e009c0c:	1afffff2 	bne	e009bdc <IPC_SEMTake+0xac>
 e009c10:	e1833008 	orr	r3, r3, r8
 e009c14:	e3a00001 	mov	r0, #1
 e009c18:	e6ff3073 	uxth	r3, r3
 e009c1c:	e1c63fb4 	strh	r3, [r6, #244]	; 0xf4
 e009c20:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e009c24:	e3a00001 	mov	r0, #1
 e009c28:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e009c2c:	e3040180 	movw	r0, #16768	; 0x4180
 e009c30:	e3400e01 	movt	r0, #3585	; 0xe01
 e009c34:	e3a01f42 	mov	r1, #264	; 0x108
 e009c38:	eb0015ce 	bl	e00f378 <io_assert_failed>

0e009c3c <IPC_SEMFree>:
 e009c3c:	e350000f 	cmp	r0, #15
 e009c40:	e92d4010 	push	{r4, lr}
 e009c44:	8a000015 	bhi	e009ca0 <IPC_SEMFree+0x64>
 e009c48:	e30e3270 	movw	r3, #57968	; 0xe270
 e009c4c:	e3403e00 	movt	r3, #3584	; 0xe00
 e009c50:	e1a04000 	mov	r4, r0
 e009c54:	e12fff33 	blx	r3
 e009c58:	e3500002 	cmp	r0, #2
 e009c5c:	8a000007 	bhi	e009c80 <IPC_SEMFree+0x44>
 e009c60:	e3a03c82 	mov	r3, #33280	; 0x8200
 e009c64:	e3443200 	movt	r3, #16896	; 0x4200
 e009c68:	e3a02001 	mov	r2, #1
 e009c6c:	e1d30fb4 	ldrh	r0, [r3, #244]	; 0xf4
 e009c70:	e1c04412 	bic	r4, r0, r2, lsl r4
 e009c74:	e3a00001 	mov	r0, #1
 e009c78:	e1c34fb4 	strh	r4, [r3, #244]	; 0xf4
 e009c7c:	e8bd8010 	pop	{r4, pc}
 e009c80:	e30230f0 	movw	r3, #8432	; 0x20f0
 e009c84:	e3413080 	movt	r3, #4224	; 0x1080
 e009c88:	e0843003 	add	r3, r4, r3
 e009c8c:	e3a02001 	mov	r2, #1
 e009c90:	e1a03103 	lsl	r3, r3, #2
 e009c94:	e3a00001 	mov	r0, #1
 e009c98:	e5832000 	str	r2, [r3]
 e009c9c:	e8bd8010 	pop	{r4, pc}
 e009ca0:	e3040180 	movw	r0, #16768	; 0x4180
 e009ca4:	e3400e01 	movt	r0, #3585	; 0xe01
 e009ca8:	e3001146 	movw	r1, #326	; 0x146
 e009cac:	eb0015b1 	bl	e00f378 <io_assert_failed>

0e009cb0 <IPC_SEMDelayStub>:
 e009cb0:	e3033730 	movw	r3, #14128	; 0x3730
 e009cb4:	e346300a 	movt	r3, #24586	; 0x600a
 e009cb8:	e5830000 	str	r0, [r3]
 e009cbc:	e12fff1e 	bx	lr

0e009cc0 <IPC_INTConfig>:
 e009cc0:	e3a03001 	mov	r3, #1
 e009cc4:	e3520001 	cmp	r2, #1
 e009cc8:	e1a03113 	lsl	r3, r3, r1
 e009ccc:	e590100c 	ldr	r1, [r0, #12]
 e009cd0:	01813003 	orreq	r3, r1, r3
 e009cd4:	11c13003 	bicne	r3, r1, r3
 e009cd8:	e580300c 	str	r3, [r0, #12]
 e009cdc:	e12fff1e 	bx	lr

0e009ce0 <IPC_IERGet>:
 e009ce0:	e590000c 	ldr	r0, [r0, #12]
 e009ce4:	e12fff1e 	bx	lr

0e009ce8 <IPC_INTHandler>:
 e009ce8:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e009cec:	e30397b4 	movw	r9, #14260	; 0x37b4
 e009cf0:	e346900a 	movt	r9, #24586	; 0x600a
 e009cf4:	e5906008 	ldr	r6, [r0, #8]
 e009cf8:	e303a734 	movw	sl, #14132	; 0x3734
 e009cfc:	e346a00a 	movt	sl, #24586	; 0x600a
 e009d00:	e1a08000 	mov	r8, r0
 e009d04:	e3a04000 	mov	r4, #0
 e009d08:	e3a07001 	mov	r7, #1
 e009d0c:	e1a05417 	lsl	r5, r7, r4
 e009d10:	e1150006 	tst	r5, r6
 e009d14:	0a000008 	beq	e009d3c <IPC_INTHandler+0x54>
 e009d18:	e7993104 	ldr	r3, [r9, r4, lsl #2]
 e009d1c:	e1a02004 	mov	r2, r4
 e009d20:	e3530000 	cmp	r3, #0
 e009d24:	e1a01006 	mov	r1, r6
 e009d28:	05885008 	streq	r5, [r8, #8]
 e009d2c:	0a000002 	beq	e009d3c <IPC_INTHandler+0x54>
 e009d30:	e79a0104 	ldr	r0, [sl, r4, lsl #2]
 e009d34:	e12fff33 	blx	r3
 e009d38:	e5885008 	str	r5, [r8, #8]
 e009d3c:	e2844001 	add	r4, r4, #1
 e009d40:	e3540020 	cmp	r4, #32
 e009d44:	1afffff0 	bne	e009d0c <IPC_INTHandler+0x24>
 e009d48:	e3a00000 	mov	r0, #0
 e009d4c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

0e009d50 <IPC_INTUserHandler>:
 e009d50:	e3520000 	cmp	r2, #0
 e009d54:	012fff1e 	bxeq	lr
 e009d58:	e303c7b4 	movw	ip, #14260	; 0x37b4
 e009d5c:	e346c00a 	movt	ip, #24586	; 0x600a
 e009d60:	e351000f 	cmp	r1, #15
 e009d64:	e78c2101 	str	r2, [ip, r1, lsl #2]
 e009d68:	e3032734 	movw	r2, #14132	; 0x3734
 e009d6c:	e346200a 	movt	r2, #24586	; 0x600a
 e009d70:	e7823101 	str	r3, [r2, r1, lsl #2]
 e009d74:	83a02001 	movhi	r2, #1
 e009d78:	8590300c 	ldrhi	r3, [r0, #12]
 e009d7c:	81831112 	orrhi	r1, r3, r2, lsl r1
 e009d80:	8580100c 	strhi	r1, [r0, #12]
 e009d84:	e12fff1e 	bx	lr

0e009d88 <IPC_GetDevById>:
 e009d88:	e3500002 	cmp	r0, #2
 e009d8c:	8a00000c 	bhi	e009dc4 <IPC_GetDevById+0x3c>
 e009d90:	e1a03000 	mov	r3, r0
 e009d94:	e3500001 	cmp	r0, #1
 e009d98:	0a000006 	beq	e009db8 <IPC_GetDevById+0x30>
 e009d9c:	e3530002 	cmp	r3, #2
 e009da0:	e3a02c86 	mov	r2, #34304	; 0x8600
 e009da4:	e3442200 	movt	r2, #16896	; 0x4200
 e009da8:	e3a00d16 	mov	r0, #1408	; 0x580
 e009dac:	e3440100 	movt	r0, #16640	; 0x4100
 e009db0:	11a00002 	movne	r0, r2
 e009db4:	e12fff1e 	bx	lr
 e009db8:	e3a00c05 	mov	r0, #1280	; 0x500
 e009dbc:	e3440100 	movt	r0, #16640	; 0x4100
 e009dc0:	e12fff1e 	bx	lr
 e009dc4:	e3040294 	movw	r0, #17044	; 0x4294
 e009dc8:	e3400e01 	movt	r0, #3585	; 0xe01
 e009dcc:	e3a010bb 	mov	r1, #187	; 0xbb
 e009dd0:	e92d4010 	push	{r4, lr}
 e009dd4:	eb001567 	bl	e00f378 <io_assert_failed>

0e009dd8 <OTP_Read8.part.0>:
 e009dd8:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 e009ddc:	e30452fc 	movw	r5, #17148	; 0x42fc
 e009de0:	e3405e01 	movt	r5, #3585	; 0xe01
 e009de4:	e3044318 	movw	r4, #17176	; 0x4318
 e009de8:	e3404e01 	movt	r4, #3585	; 0xe01
 e009dec:	e24dd00c 	sub	sp, sp, #12
 e009df0:	e1a08000 	mov	r8, r0
 e009df4:	e1a09001 	mov	r9, r1
 e009df8:	ea000000 	b	e009e00 <OTP_Read8.part.0+0x28>
 e009dfc:	eb00038c 	bl	e00ac34 <rtk_log_write_nano>
 e009e00:	e3a01ffa 	mov	r1, #1000	; 0x3e8
 e009e04:	e3a00002 	mov	r0, #2
 e009e08:	ebffff48 	bl	e009b30 <IPC_SEMTake>
 e009e0c:	e1a0c000 	mov	ip, r0
 e009e10:	e1a03005 	mov	r3, r5
 e009e14:	e3a02045 	mov	r2, #69	; 0x45
 e009e18:	e1a01004 	mov	r1, r4
 e009e1c:	e3a00002 	mov	r0, #2
 e009e20:	e35c0001 	cmp	ip, #1
 e009e24:	1afffff4 	bne	e009dfc <OTP_Read8.part.0+0x24>
 e009e28:	e3a03902 	mov	r3, #32768	; 0x8000
 e009e2c:	e3443200 	movt	r3, #16896	; 0x4200
 e009e30:	e3a05442 	mov	r5, #1107296256	; 0x42000000
 e009e34:	e5932000 	ldr	r2, [r3]
 e009e38:	e3120001 	tst	r2, #1
 e009e3c:	05932000 	ldreq	r2, [r3]
 e009e40:	03822001 	orreq	r2, r2, #1
 e009e44:	05832000 	streq	r2, [r3]
 e009e48:	e1a03408 	lsl	r3, r8, #8
 e009e4c:	e5952014 	ldr	r2, [r5, #20]
 e009e50:	e3c224ff 	bic	r2, r2, #-16777216	; 0xff000000
 e009e54:	e5852014 	str	r2, [r5, #20]
 e009e58:	e5853008 	str	r3, [r5, #8]
 e009e5c:	e5953008 	ldr	r3, [r5, #8]
 e009e60:	e3530000 	cmp	r3, #0
 e009e64:	ba00000f 	blt	e009ea8 <OTP_Read8.part.0+0xd0>
 e009e68:	e3096250 	movw	r6, #37456	; 0x9250
 e009e6c:	e3406e00 	movt	r6, #3584	; 0xe00
 e009e70:	e3a04000 	mov	r4, #0
 e009e74:	e3047e20 	movw	r7, #20000	; 0x4e20
 e009e78:	ea000001 	b	e009e84 <OTP_Read8.part.0+0xac>
 e009e7c:	e1540007 	cmp	r4, r7
 e009e80:	0a000015 	beq	e009edc <OTP_Read8.part.0+0x104>
 e009e84:	e3a00005 	mov	r0, #5
 e009e88:	e12fff36 	blx	r6
 e009e8c:	e5953008 	ldr	r3, [r5, #8]
 e009e90:	e2844001 	add	r4, r4, #1
 e009e94:	e3530000 	cmp	r3, #0
 e009e98:	aafffff7 	bge	e009e7c <OTP_Read8.part.0+0xa4>
 e009e9c:	e3043e20 	movw	r3, #20000	; 0x4e20
 e009ea0:	e1540003 	cmp	r4, r3
 e009ea4:	0a00000c 	beq	e009edc <OTP_Read8.part.0+0x104>
 e009ea8:	e3a03442 	mov	r3, #1107296256	; 0x42000000
 e009eac:	e3a04000 	mov	r4, #0
 e009eb0:	e5933008 	ldr	r3, [r3, #8]
 e009eb4:	e5c93000 	strb	r3, [r9]
 e009eb8:	e3a02442 	mov	r2, #1107296256	; 0x42000000
 e009ebc:	e3a00002 	mov	r0, #2
 e009ec0:	e5923014 	ldr	r3, [r2, #20]
 e009ec4:	e3c334ff 	bic	r3, r3, #-16777216	; 0xff000000
 e009ec8:	e5823014 	str	r3, [r2, #20]
 e009ecc:	ebffff5a 	bl	e009c3c <IPC_SEMFree>
 e009ed0:	e1a00004 	mov	r0, r4
 e009ed4:	e28dd00c 	add	sp, sp, #12
 e009ed8:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
 e009edc:	e3e04000 	mvn	r4, #0
 e009ee0:	e3a02045 	mov	r2, #69	; 0x45
 e009ee4:	e5c94000 	strb	r4, [r9]
 e009ee8:	e3a00002 	mov	r0, #2
 e009eec:	e58d8000 	str	r8, [sp]
 e009ef0:	e304331c 	movw	r3, #17180	; 0x431c
 e009ef4:	e3403e01 	movt	r3, #3585	; 0xe01
 e009ef8:	e3041318 	movw	r1, #17176	; 0x4318
 e009efc:	e3401e01 	movt	r1, #3585	; 0xe01
 e009f00:	eb00034b 	bl	e00ac34 <rtk_log_write_nano>
 e009f04:	eaffffeb 	b	e009eb8 <OTP_Read8.part.0+0xe0>

0e009f08 <OTP_Read32.isra.0>:
 e009f08:	e92d4070 	push	{r4, r5, r6, lr}
 e009f0c:	e3a03000 	mov	r3, #0
 e009f10:	e24dd008 	sub	sp, sp, #8
 e009f14:	e1a06001 	mov	r6, r1
 e009f18:	e1a04000 	mov	r4, r0
 e009f1c:	e1a05003 	mov	r5, r3
 e009f20:	e5813000 	str	r3, [r1]
 e009f24:	e1a00004 	mov	r0, r4
 e009f28:	e28d1007 	add	r1, sp, #7
 e009f2c:	e3540b02 	cmp	r4, #2048	; 0x800
 e009f30:	2a00000a 	bcs	e009f60 <OTP_Read32.isra.0+0x58>
 e009f34:	ebffffa7 	bl	e009dd8 <OTP_Read8.part.0>
 e009f38:	e3700001 	cmn	r0, #1
 e009f3c:	0a000007 	beq	e009f60 <OTP_Read32.isra.0+0x58>
 e009f40:	e5963000 	ldr	r3, [r6]
 e009f44:	e5dd2007 	ldrb	r2, [sp, #7]
 e009f48:	e2844001 	add	r4, r4, #1
 e009f4c:	e1833512 	orr	r3, r3, r2, lsl r5
 e009f50:	e2855008 	add	r5, r5, #8
 e009f54:	e3550020 	cmp	r5, #32
 e009f58:	e5863000 	str	r3, [r6]
 e009f5c:	1afffff0 	bne	e009f24 <OTP_Read32.isra.0+0x1c>
 e009f60:	e28dd008 	add	sp, sp, #8
 e009f64:	e8bd8070 	pop	{r4, r5, r6, pc}

0e009f68 <OTP_ProgramMarginRead8.part.0>:
 e009f68:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 e009f6c:	e30452fc 	movw	r5, #17148	; 0x42fc
 e009f70:	e3405e01 	movt	r5, #3585	; 0xe01
 e009f74:	e3044318 	movw	r4, #17176	; 0x4318
 e009f78:	e3404e01 	movt	r4, #3585	; 0xe01
 e009f7c:	e24dd00c 	sub	sp, sp, #12
 e009f80:	e1a08000 	mov	r8, r0
 e009f84:	e1a09001 	mov	r9, r1
 e009f88:	ea000000 	b	e009f90 <OTP_ProgramMarginRead8.part.0+0x28>
 e009f8c:	eb000328 	bl	e00ac34 <rtk_log_write_nano>
 e009f90:	e3a01ffa 	mov	r1, #1000	; 0x3e8
 e009f94:	e3a00002 	mov	r0, #2
 e009f98:	ebfffee4 	bl	e009b30 <IPC_SEMTake>
 e009f9c:	e1a0c000 	mov	ip, r0
 e009fa0:	e1a03005 	mov	r3, r5
 e009fa4:	e3a02045 	mov	r2, #69	; 0x45
 e009fa8:	e1a01004 	mov	r1, r4
 e009fac:	e3a00002 	mov	r0, #2
 e009fb0:	e35c0001 	cmp	ip, #1
 e009fb4:	1afffff4 	bne	e009f8c <OTP_ProgramMarginRead8.part.0+0x24>
 e009fb8:	e3a03902 	mov	r3, #32768	; 0x8000
 e009fbc:	e3443200 	movt	r3, #16896	; 0x4200
 e009fc0:	e3a05442 	mov	r5, #1107296256	; 0x42000000
 e009fc4:	e5932000 	ldr	r2, [r3]
 e009fc8:	e3120001 	tst	r2, #1
 e009fcc:	05932000 	ldreq	r2, [r3]
 e009fd0:	03822001 	orreq	r2, r2, #1
 e009fd4:	05832000 	streq	r2, [r3]
 e009fd8:	e1a03408 	lsl	r3, r8, #8
 e009fdc:	e5952014 	ldr	r2, [r5, #20]
 e009fe0:	e3833601 	orr	r3, r3, #1048576	; 0x100000
 e009fe4:	e3c224ff 	bic	r2, r2, #-16777216	; 0xff000000
 e009fe8:	e5852014 	str	r2, [r5, #20]
 e009fec:	e5853008 	str	r3, [r5, #8]
 e009ff0:	e5953008 	ldr	r3, [r5, #8]
 e009ff4:	e3530000 	cmp	r3, #0
 e009ff8:	ba00000f 	blt	e00a03c <OTP_ProgramMarginRead8.part.0+0xd4>
 e009ffc:	e3096250 	movw	r6, #37456	; 0x9250
 e00a000:	e3406e00 	movt	r6, #3584	; 0xe00
 e00a004:	e3a04000 	mov	r4, #0
 e00a008:	e3047e20 	movw	r7, #20000	; 0x4e20
 e00a00c:	ea000001 	b	e00a018 <OTP_ProgramMarginRead8.part.0+0xb0>
 e00a010:	e1540007 	cmp	r4, r7
 e00a014:	0a000015 	beq	e00a070 <OTP_ProgramMarginRead8.part.0+0x108>
 e00a018:	e3a00005 	mov	r0, #5
 e00a01c:	e12fff36 	blx	r6
 e00a020:	e5953008 	ldr	r3, [r5, #8]
 e00a024:	e2844001 	add	r4, r4, #1
 e00a028:	e3530000 	cmp	r3, #0
 e00a02c:	aafffff7 	bge	e00a010 <OTP_ProgramMarginRead8.part.0+0xa8>
 e00a030:	e3043e20 	movw	r3, #20000	; 0x4e20
 e00a034:	e1540003 	cmp	r4, r3
 e00a038:	0a00000c 	beq	e00a070 <OTP_ProgramMarginRead8.part.0+0x108>
 e00a03c:	e3a03442 	mov	r3, #1107296256	; 0x42000000
 e00a040:	e3a04000 	mov	r4, #0
 e00a044:	e5933008 	ldr	r3, [r3, #8]
 e00a048:	e5c93000 	strb	r3, [r9]
 e00a04c:	e3a02442 	mov	r2, #1107296256	; 0x42000000
 e00a050:	e3a00002 	mov	r0, #2
 e00a054:	e5923014 	ldr	r3, [r2, #20]
 e00a058:	e3c334ff 	bic	r3, r3, #-16777216	; 0xff000000
 e00a05c:	e5823014 	str	r3, [r2, #20]
 e00a060:	ebfffef5 	bl	e009c3c <IPC_SEMFree>
 e00a064:	e1a00004 	mov	r0, r4
 e00a068:	e28dd00c 	add	sp, sp, #12
 e00a06c:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
 e00a070:	e3e04000 	mvn	r4, #0
 e00a074:	e3a02045 	mov	r2, #69	; 0x45
 e00a078:	e5c94000 	strb	r4, [r9]
 e00a07c:	e3a00002 	mov	r0, #2
 e00a080:	e58d8000 	str	r8, [sp]
 e00a084:	e304331c 	movw	r3, #17180	; 0x431c
 e00a088:	e3403e01 	movt	r3, #3585	; 0xe01
 e00a08c:	e3041318 	movw	r1, #17176	; 0x4318
 e00a090:	e3401e01 	movt	r1, #3585	; 0xe01
 e00a094:	eb0002e6 	bl	e00ac34 <rtk_log_write_nano>
 e00a098:	eaffffeb 	b	e00a04c <OTP_ProgramMarginRead8.part.0+0xe4>

0e00a09c <OTPGetCRC>:
 e00a09c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e00a0a0:	e3a05442 	mov	r5, #1107296256	; 0x42000000
 e00a0a4:	e3a03101 	mov	r3, #1073741824	; 0x40000000
 e00a0a8:	e5853034 	str	r3, [r5, #52]	; 0x34
 e00a0ac:	e5954000 	ldr	r4, [r5]
 e00a0b0:	e2144002 	ands	r4, r4, #2
 e00a0b4:	1a00000b 	bne	e00a0e8 <OTPGetCRC+0x4c>
 e00a0b8:	e3096250 	movw	r6, #37456	; 0x9250
 e00a0bc:	e3406e00 	movt	r6, #3584	; 0xe00
 e00a0c0:	e3047e20 	movw	r7, #20000	; 0x4e20
 e00a0c4:	e3a00001 	mov	r0, #1
 e00a0c8:	e12fff36 	blx	r6
 e00a0cc:	e5953000 	ldr	r3, [r5]
 e00a0d0:	e2844001 	add	r4, r4, #1
 e00a0d4:	e0542007 	subs	r2, r4, r7
 e00a0d8:	e2233002 	eor	r3, r3, #2
 e00a0dc:	13a02001 	movne	r2, #1
 e00a0e0:	e01230a3 	ands	r3, r2, r3, lsr #1
 e00a0e4:	1afffff6 	bne	e00a0c4 <OTPGetCRC+0x28>
 e00a0e8:	e3a03442 	mov	r3, #1107296256	; 0x42000000
 e00a0ec:	e3e02101 	mvn	r2, #1073741824	; 0x40000000
 e00a0f0:	e5930030 	ldr	r0, [r3, #48]	; 0x30
 e00a0f4:	e5832034 	str	r2, [r3, #52]	; 0x34
 e00a0f8:	e1a00820 	lsr	r0, r0, #16
 e00a0fc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0e00a100 <OTP_Read8>:
 e00a100:	e3500b02 	cmp	r0, #2048	; 0x800
 e00a104:	2a000000 	bcs	e00a10c <OTP_Read8+0xc>
 e00a108:	eaffff32 	b	e009dd8 <OTP_Read8.part.0>
 e00a10c:	e3e00000 	mvn	r0, #0
 e00a110:	e5c10000 	strb	r0, [r1]
 e00a114:	e12fff1e 	bx	lr

0e00a118 <OTP_Write8>:
 e00a118:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e00a11c:	e3500b02 	cmp	r0, #2048	; 0x800
 e00a120:	e24dd024 	sub	sp, sp, #36	; 0x24
 e00a124:	23e03000 	mvncs	r3, #0
 e00a128:	e1cd00f8 	strd	r0, [sp, #8]
 e00a12c:	25cd301f 	strbcs	r3, [sp, #31]
 e00a130:	2a00007f 	bcs	e00a334 <OTP_Write8+0x21c>
 e00a134:	e28d101f 	add	r1, sp, #31
 e00a138:	ebffff8a 	bl	e009f68 <OTP_ProgramMarginRead8.part.0>
 e00a13c:	e3700001 	cmn	r0, #1
 e00a140:	0a00007b 	beq	e00a334 <OTP_Write8+0x21c>
 e00a144:	e59d2008 	ldr	r2, [sp, #8]
 e00a148:	e5dd301f 	ldrb	r3, [sp, #31]
 e00a14c:	e59d900c 	ldr	r9, [sp, #12]
 e00a150:	e3a0b902 	mov	fp, #32768	; 0x8000
 e00a154:	e344b200 	movt	fp, #16896	; 0x4200
 e00a158:	e3048344 	movw	r8, #17220	; 0x4344
 e00a15c:	e3408e01 	movt	r8, #3585	; 0xe01
 e00a160:	e3047318 	movw	r7, #17176	; 0x4318
 e00a164:	e3407e01 	movt	r7, #3585	; 0xe01
 e00a168:	e1a02402 	lsl	r2, r2, #8
 e00a16c:	e58d2014 	str	r2, [sp, #20]
 e00a170:	e3a02002 	mov	r2, #2
 e00a174:	e58d2010 	str	r2, [sp, #16]
 e00a178:	e1e03003 	mvn	r3, r3
 e00a17c:	e1839009 	orr	r9, r3, r9
 e00a180:	e6ef9079 	uxtb	r9, r9
 e00a184:	e35900ff 	cmp	r9, #255	; 0xff
 e00a188:	1a000001 	bne	e00a194 <OTP_Write8+0x7c>
 e00a18c:	ea000030 	b	e00a254 <OTP_Write8+0x13c>
 e00a190:	eb0002a7 	bl	e00ac34 <rtk_log_write_nano>
 e00a194:	e3a01ffa 	mov	r1, #1000	; 0x3e8
 e00a198:	e3a00002 	mov	r0, #2
 e00a19c:	ebfffe63 	bl	e009b30 <IPC_SEMTake>
 e00a1a0:	e1a0c000 	mov	ip, r0
 e00a1a4:	e1a03008 	mov	r3, r8
 e00a1a8:	e3a02045 	mov	r2, #69	; 0x45
 e00a1ac:	e1a01007 	mov	r1, r7
 e00a1b0:	e3a00002 	mov	r0, #2
 e00a1b4:	e35c0001 	cmp	ip, #1
 e00a1b8:	1afffff4 	bne	e00a190 <OTP_Write8+0x78>
 e00a1bc:	e59b3000 	ldr	r3, [fp]
 e00a1c0:	e3a04442 	mov	r4, #1107296256	; 0x42000000
 e00a1c4:	e3130001 	tst	r3, #1
 e00a1c8:	059b3000 	ldreq	r3, [fp]
 e00a1cc:	03833001 	orreq	r3, r3, #1
 e00a1d0:	058b3000 	streq	r3, [fp]
 e00a1d4:	e59d3014 	ldr	r3, [sp, #20]
 e00a1d8:	e5942014 	ldr	r2, [r4, #20]
 e00a1dc:	e1893003 	orr	r3, r9, r3
 e00a1e0:	e3833102 	orr	r3, r3, #-2147483648	; 0x80000000
 e00a1e4:	e3822469 	orr	r2, r2, #1761607680	; 0x69000000
 e00a1e8:	e5842014 	str	r2, [r4, #20]
 e00a1ec:	e5843008 	str	r3, [r4, #8]
 e00a1f0:	e5943008 	ldr	r3, [r4, #8]
 e00a1f4:	e3530000 	cmp	r3, #0
 e00a1f8:	b3a0a000 	movlt	sl, #0
 e00a1fc:	b3095250 	movwlt	r5, #37456	; 0x9250
 e00a200:	b3046e20 	movwlt	r6, #20000	; 0x4e20
 e00a204:	b3405e00 	movtlt	r5, #3584	; 0xe00
 e00a208:	ba000002 	blt	e00a218 <OTP_Write8+0x100>
 e00a20c:	ea00000a 	b	e00a23c <OTP_Write8+0x124>
 e00a210:	e15a0006 	cmp	sl, r6
 e00a214:	0a000021 	beq	e00a2a0 <OTP_Write8+0x188>
 e00a218:	e3a00005 	mov	r0, #5
 e00a21c:	e12fff35 	blx	r5
 e00a220:	e5943008 	ldr	r3, [r4, #8]
 e00a224:	e28aa001 	add	sl, sl, #1
 e00a228:	e3530000 	cmp	r3, #0
 e00a22c:	bafffff7 	blt	e00a210 <OTP_Write8+0xf8>
 e00a230:	e3042e20 	movw	r2, #20000	; 0x4e20
 e00a234:	e15a0002 	cmp	sl, r2
 e00a238:	0a000018 	beq	e00a2a0 <OTP_Write8+0x188>
 e00a23c:	e3a02442 	mov	r2, #1107296256	; 0x42000000
 e00a240:	e3a00002 	mov	r0, #2
 e00a244:	e5923014 	ldr	r3, [r2, #20]
 e00a248:	e3c334ff 	bic	r3, r3, #-16777216	; 0xff000000
 e00a24c:	e5823014 	str	r3, [r2, #20]
 e00a250:	ebfffe79 	bl	e009c3c <IPC_SEMFree>
 e00a254:	e59d0008 	ldr	r0, [sp, #8]
 e00a258:	e28d101f 	add	r1, sp, #31
 e00a25c:	ebffff41 	bl	e009f68 <OTP_ProgramMarginRead8.part.0>
 e00a260:	e3700001 	cmn	r0, #1
 e00a264:	0a000027 	beq	e00a308 <OTP_Write8+0x1f0>
 e00a268:	e5dd301f 	ldrb	r3, [sp, #31]
 e00a26c:	e59d200c 	ldr	r2, [sp, #12]
 e00a270:	e1530002 	cmp	r3, r2
 e00a274:	0a00002c 	beq	e00a32c <OTP_Write8+0x214>
 e00a278:	e59d2010 	ldr	r2, [sp, #16]
 e00a27c:	e3520001 	cmp	r2, #1
 e00a280:	1a000003 	bne	e00a294 <OTP_Write8+0x17c>
 e00a284:	e3e04000 	mvn	r4, #0
 e00a288:	e1a00004 	mov	r0, r4
 e00a28c:	e28dd024 	add	sp, sp, #36	; 0x24
 e00a290:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00a294:	e3a02001 	mov	r2, #1
 e00a298:	e58d2010 	str	r2, [sp, #16]
 e00a29c:	eaffffb5 	b	e00a178 <OTP_Write8+0x60>
 e00a2a0:	e59d3008 	ldr	r3, [sp, #8]
 e00a2a4:	e58d3000 	str	r3, [sp]
 e00a2a8:	e3a02045 	mov	r2, #69	; 0x45
 e00a2ac:	e3a00002 	mov	r0, #2
 e00a2b0:	e3043360 	movw	r3, #17248	; 0x4360
 e00a2b4:	e3403e01 	movt	r3, #3585	; 0xe01
 e00a2b8:	e3041318 	movw	r1, #17176	; 0x4318
 e00a2bc:	e3401e01 	movt	r1, #3585	; 0xe01
 e00a2c0:	eb00025b 	bl	e00ac34 <rtk_log_write_nano>
 e00a2c4:	e3a02442 	mov	r2, #1107296256	; 0x42000000
 e00a2c8:	e3a00002 	mov	r0, #2
 e00a2cc:	e3e04000 	mvn	r4, #0
 e00a2d0:	e5923014 	ldr	r3, [r2, #20]
 e00a2d4:	e3c334ff 	bic	r3, r3, #-16777216	; 0xff000000
 e00a2d8:	e5823014 	str	r3, [r2, #20]
 e00a2dc:	ebfffe56 	bl	e009c3c <IPC_SEMFree>
 e00a2e0:	e3a02045 	mov	r2, #69	; 0x45
 e00a2e4:	e3a00002 	mov	r0, #2
 e00a2e8:	e3043378 	movw	r3, #17272	; 0x4378
 e00a2ec:	e3403e01 	movt	r3, #3585	; 0xe01
 e00a2f0:	e3041318 	movw	r1, #17176	; 0x4318
 e00a2f4:	e3401e01 	movt	r1, #3585	; 0xe01
 e00a2f8:	eb00024d 	bl	e00ac34 <rtk_log_write_nano>
 e00a2fc:	e1a00004 	mov	r0, r4
 e00a300:	e28dd024 	add	sp, sp, #36	; 0x24
 e00a304:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00a308:	e1a04000 	mov	r4, r0
 e00a30c:	e3a02045 	mov	r2, #69	; 0x45
 e00a310:	e3a00002 	mov	r0, #2
 e00a314:	e304338c 	movw	r3, #17292	; 0x438c
 e00a318:	e3403e01 	movt	r3, #3585	; 0xe01
 e00a31c:	e3041318 	movw	r1, #17176	; 0x4318
 e00a320:	e3401e01 	movt	r1, #3585	; 0xe01
 e00a324:	eb000242 	bl	e00ac34 <rtk_log_write_nano>
 e00a328:	eaffffd6 	b	e00a288 <OTP_Write8+0x170>
 e00a32c:	e3a04000 	mov	r4, #0
 e00a330:	eaffffd4 	b	e00a288 <OTP_Write8+0x170>
 e00a334:	e3a02045 	mov	r2, #69	; 0x45
 e00a338:	e3a00002 	mov	r0, #2
 e00a33c:	e3043330 	movw	r3, #17200	; 0x4330
 e00a340:	e3403e01 	movt	r3, #3585	; 0xe01
 e00a344:	e3041318 	movw	r1, #17176	; 0x4318
 e00a348:	e3401e01 	movt	r1, #3585	; 0xe01
 e00a34c:	e3e04000 	mvn	r4, #0
 e00a350:	eb000237 	bl	e00ac34 <rtk_log_write_nano>
 e00a354:	eaffffcb 	b	e00a288 <OTP_Write8+0x170>

0e00a358 <OTP_LogicalMap_Read>:
 e00a358:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e00a35c:	e0817002 	add	r7, r1, r2
 e00a360:	e24dd01c 	sub	sp, sp, #28
 e00a364:	e1a06001 	mov	r6, r1
 e00a368:	e3570b01 	cmp	r7, #1024	; 0x400
 e00a36c:	e58d0008 	str	r0, [sp, #8]
 e00a370:	8a000059 	bhi	e00a4dc <OTP_LogicalMap_Read+0x184>
 e00a374:	e59d3008 	ldr	r3, [sp, #8]
 e00a378:	e3a04000 	mov	r4, #0
 e00a37c:	e0433001 	sub	r3, r3, r1
 e00a380:	e3a010ff 	mov	r1, #255	; 0xff
 e00a384:	e58d300c 	str	r3, [sp, #12]
 e00a388:	e30b3084 	movw	r3, #45188	; 0xb084
 e00a38c:	e3403e00 	movt	r3, #3584	; 0xe00
 e00a390:	e30483cc 	movw	r8, #17356	; 0x43cc
 e00a394:	e3408e01 	movt	r8, #3585	; 0xe01
 e00a398:	e12fff33 	blx	r3
 e00a39c:	ea00000c 	b	e00a3d4 <OTP_LogicalMap_Read+0x7c>
 e00a3a0:	e3520002 	cmp	r2, #2
 e00a3a4:	1a000006 	bne	e00a3c4 <OTP_LogicalMap_Read+0x6c>
 e00a3a8:	e7e39c53 	ubfx	r9, r3, #24, #4
 e00a3ac:	e7e32653 	ubfx	r2, r3, #12, #4
 e00a3b0:	e1a09109 	lsl	r9, r9, #2
 e00a3b4:	e2899004 	add	r9, r9, #4
 e00a3b8:	e3520007 	cmp	r2, #7
 e00a3bc:	0a00002e 	beq	e00a47c <OTP_LogicalMap_Read+0x124>
 e00a3c0:	e0844009 	add	r4, r4, r9
 e00a3c4:	e3140003 	tst	r4, #3
 e00a3c8:	1a00001d 	bne	e00a444 <OTP_LogicalMap_Read+0xec>
 e00a3cc:	e3540f7f 	cmp	r4, #508	; 0x1fc
 e00a3d0:	8a000026 	bhi	e00a470 <OTP_LogicalMap_Read+0x118>
 e00a3d4:	e28d1014 	add	r1, sp, #20
 e00a3d8:	e1a00004 	mov	r0, r4
 e00a3dc:	ebfffec9 	bl	e009f08 <OTP_Read32.isra.0>
 e00a3e0:	e59d3014 	ldr	r3, [sp, #20]
 e00a3e4:	e3730001 	cmn	r3, #1
 e00a3e8:	0a000020 	beq	e00a470 <OTP_LogicalMap_Read+0x118>
 e00a3ec:	e1a02e23 	lsr	r2, r3, #28
 e00a3f0:	e2844004 	add	r4, r4, #4
 e00a3f4:	e3520001 	cmp	r2, #1
 e00a3f8:	1affffe8 	bne	e00a3a0 <OTP_LogicalMap_Read+0x48>
 e00a3fc:	e7e32653 	ubfx	r2, r3, #12, #4
 e00a400:	e3520007 	cmp	r2, #7
 e00a404:	1affffee 	bne	e00a3c4 <OTP_LogicalMap_Read+0x6c>
 e00a408:	e7eb2053 	ubfx	r2, r3, #0, #12
 e00a40c:	e1570002 	cmp	r7, r2
 e00a410:	83a01001 	movhi	r1, #1
 e00a414:	93a01000 	movls	r1, #0
 e00a418:	e1560002 	cmp	r6, r2
 e00a41c:	83a01000 	movhi	r1, #0
 e00a420:	e7e73853 	ubfx	r3, r3, #16, #8
 e00a424:	e3510000 	cmp	r1, #0
 e00a428:	e5cd3013 	strb	r3, [sp, #19]
 e00a42c:	0affffe4 	beq	e00a3c4 <OTP_LogicalMap_Read+0x6c>
 e00a430:	e59d1008 	ldr	r1, [sp, #8]
 e00a434:	e0422006 	sub	r2, r2, r6
 e00a438:	e3140003 	tst	r4, #3
 e00a43c:	e7c13002 	strb	r3, [r1, r2]
 e00a440:	0affffe1 	beq	e00a3cc <OTP_LogicalMap_Read+0x74>
 e00a444:	e59d0014 	ldr	r0, [sp, #20]
 e00a448:	e58d0004 	str	r0, [sp, #4]
 e00a44c:	e1a03008 	mov	r3, r8
 e00a450:	e3a02045 	mov	r2, #69	; 0x45
 e00a454:	e3a00002 	mov	r0, #2
 e00a458:	e3041318 	movw	r1, #17176	; 0x4318
 e00a45c:	e3401e01 	movt	r1, #3585	; 0xe01
 e00a460:	e58d4000 	str	r4, [sp]
 e00a464:	eb0001f2 	bl	e00ac34 <rtk_log_write_nano>
 e00a468:	e3540f7f 	cmp	r4, #508	; 0x1fc
 e00a46c:	9affffd8 	bls	e00a3d4 <OTP_LogicalMap_Read+0x7c>
 e00a470:	e3a00000 	mov	r0, #0
 e00a474:	e28dd01c 	add	sp, sp, #28
 e00a478:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00a47c:	e7eb5053 	ubfx	r5, r3, #0, #12
 e00a480:	e085a009 	add	sl, r5, r9
 e00a484:	e1a0b004 	mov	fp, r4
 e00a488:	e35b0b02 	cmp	fp, #2048	; 0x800
 e00a48c:	e1a0000b 	mov	r0, fp
 e00a490:	23e03000 	mvncs	r3, #0
 e00a494:	e28d1013 	add	r1, sp, #19
 e00a498:	25cd3013 	strbcs	r3, [sp, #19]
 e00a49c:	2a000000 	bcs	e00a4a4 <OTP_LogicalMap_Read+0x14c>
 e00a4a0:	ebfffe4c 	bl	e009dd8 <OTP_Read8.part.0>
 e00a4a4:	e1560005 	cmp	r6, r5
 e00a4a8:	93a03001 	movls	r3, #1
 e00a4ac:	83a03000 	movhi	r3, #0
 e00a4b0:	e1570005 	cmp	r7, r5
 e00a4b4:	93a03000 	movls	r3, #0
 e00a4b8:	e3530000 	cmp	r3, #0
 e00a4bc:	e28bb001 	add	fp, fp, #1
 e00a4c0:	159d200c 	ldrne	r2, [sp, #12]
 e00a4c4:	15dd3013 	ldrbne	r3, [sp, #19]
 e00a4c8:	17c23005 	strbne	r3, [r2, r5]
 e00a4cc:	e2855001 	add	r5, r5, #1
 e00a4d0:	e155000a 	cmp	r5, sl
 e00a4d4:	1affffeb 	bne	e00a488 <OTP_LogicalMap_Read+0x130>
 e00a4d8:	eaffffb8 	b	e00a3c0 <OTP_LogicalMap_Read+0x68>
 e00a4dc:	e1a03002 	mov	r3, r2
 e00a4e0:	e3a00002 	mov	r0, #2
 e00a4e4:	e58d3004 	str	r3, [sp, #4]
 e00a4e8:	e58d1000 	str	r1, [sp]
 e00a4ec:	e3a02045 	mov	r2, #69	; 0x45
 e00a4f0:	e30433a0 	movw	r3, #17312	; 0x43a0
 e00a4f4:	e3403e01 	movt	r3, #3585	; 0xe01
 e00a4f8:	e3041318 	movw	r1, #17176	; 0x4318
 e00a4fc:	e3401e01 	movt	r1, #3585	; 0xe01
 e00a500:	eb0001cb 	bl	e00ac34 <rtk_log_write_nano>
 e00a504:	e3e00000 	mvn	r0, #0
 e00a508:	eaffffd9 	b	e00a474 <OTP_LogicalMap_Read+0x11c>

0e00a50c <OTP_LogicalMap_Write>:
 e00a50c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e00a510:	e1a03000 	mov	r3, r0
 e00a514:	e24dd044 	sub	sp, sp, #68	; 0x44
 e00a518:	e0810000 	add	r0, r1, r0
 e00a51c:	e3500b01 	cmp	r0, #1024	; 0x400
 e00a520:	e58d2014 	str	r2, [sp, #20]
 e00a524:	8a00013f 	bhi	e00aa28 <OTP_LogicalMap_Write+0x51c>
 e00a528:	e3c3200f 	bic	r2, r3, #15
 e00a52c:	e1a04001 	mov	r4, r1
 e00a530:	e203300f 	and	r3, r3, #15
 e00a534:	e3510000 	cmp	r1, #0
 e00a538:	e58d2010 	str	r2, [sp, #16]
 e00a53c:	e58d3008 	str	r3, [sp, #8]
 e00a540:	da000135 	ble	e00aa1c <OTP_LogicalMap_Write+0x510>
 e00a544:	e304b318 	movw	fp, #17176	; 0x4318
 e00a548:	e340be01 	movt	fp, #3585	; 0xe01
 e00a54c:	e3043438 	movw	r3, #17464	; 0x4438
 e00a550:	e3403e01 	movt	r3, #3585	; 0xe01
 e00a554:	e58d300c 	str	r3, [sp, #12]
 e00a558:	e30434e0 	movw	r3, #17632	; 0x44e0
 e00a55c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00a560:	e58d3020 	str	r3, [sp, #32]
 e00a564:	e59d5008 	ldr	r5, [sp, #8]
 e00a568:	e3a02010 	mov	r2, #16
 e00a56c:	e0843005 	add	r3, r4, r5
 e00a570:	e3530010 	cmp	r3, #16
 e00a574:	e59d1010 	ldr	r1, [sp, #16]
 e00a578:	e28d0030 	add	r0, sp, #48	; 0x30
 e00a57c:	31a04003 	movcc	r4, r3
 e00a580:	21a04002 	movcs	r4, r2
 e00a584:	e58d3018 	str	r3, [sp, #24]
 e00a588:	ebffff72 	bl	e00a358 <OTP_LogicalMap_Read>
 e00a58c:	e3700001 	cmn	r0, #1
 e00a590:	e58d001c 	str	r0, [sp, #28]
 e00a594:	0a000102 	beq	e00a9a4 <OTP_LogicalMap_Write+0x498>
 e00a598:	e1540005 	cmp	r4, r5
 e00a59c:	9a00008b 	bls	e00a7d0 <OTP_LogicalMap_Write+0x2c4>
 e00a5a0:	e59d3008 	ldr	r3, [sp, #8]
 e00a5a4:	e59d2014 	ldr	r2, [sp, #20]
 e00a5a8:	e3a07000 	mov	r7, #0
 e00a5ac:	e2435001 	sub	r5, r3, #1
 e00a5b0:	e0426003 	sub	r6, r2, r3
 e00a5b4:	e28d1030 	add	r1, sp, #48	; 0x30
 e00a5b8:	e0866004 	add	r6, r6, r4
 e00a5bc:	e0815005 	add	r5, r1, r5
 e00a5c0:	e1a04002 	mov	r4, r2
 e00a5c4:	e1a0a007 	mov	sl, r7
 e00a5c8:	e1a08007 	mov	r8, r7
 e00a5cc:	e0439002 	sub	r9, r3, r2
 e00a5d0:	e0893004 	add	r3, r9, r4
 e00a5d4:	e5f52001 	ldrb	r2, [r5, #1]!
 e00a5d8:	e4d40001 	ldrb	r0, [r4], #1
 e00a5dc:	e1a0c123 	lsr	ip, r3, #2
 e00a5e0:	e1520000 	cmp	r2, r0
 e00a5e4:	0a00000c 	beq	e00a61c <OTP_LogicalMap_Write+0x110>
 e00a5e8:	e3a02001 	mov	r2, #1
 e00a5ec:	e1a01002 	mov	r1, r2
 e00a5f0:	e18aa312 	orr	sl, sl, r2, lsl r3
 e00a5f4:	e58d0004 	str	r0, [sp, #4]
 e00a5f8:	e58d3000 	str	r3, [sp]
 e00a5fc:	e1877c11 	orr	r7, r7, r1, lsl ip
 e00a600:	e0888001 	add	r8, r8, r1
 e00a604:	e5c50000 	strb	r0, [r5]
 e00a608:	e59d300c 	ldr	r3, [sp, #12]
 e00a60c:	e3a02049 	mov	r2, #73	; 0x49
 e00a610:	e1a0100b 	mov	r1, fp
 e00a614:	e3a00004 	mov	r0, #4
 e00a618:	eb000185 	bl	e00ac34 <rtk_log_write_nano>
 e00a61c:	e1560004 	cmp	r6, r4
 e00a620:	1affffea 	bne	e00a5d0 <OTP_LogicalMap_Write+0xc4>
 e00a624:	e3580000 	cmp	r8, #0
 e00a628:	0a000068 	beq	e00a7d0 <OTP_LogicalMap_Write+0x2c4>
 e00a62c:	e59d3008 	ldr	r3, [sp, #8]
 e00a630:	e3a02000 	mov	r2, #0
 e00a634:	e3a01010 	mov	r1, #16
 e00a638:	e1a03123 	lsr	r3, r3, #2
 e00a63c:	e1a00337 	lsr	r0, r7, r3
 e00a640:	e3100001 	tst	r0, #1
 e00a644:	0a000005 	beq	e00a660 <OTP_LogicalMap_Write+0x154>
 e00a648:	e1510003 	cmp	r1, r3
 e00a64c:	21a01003 	movcs	r1, r3
 e00a650:	e1520003 	cmp	r2, r3
 e00a654:	31a02003 	movcc	r2, r3
 e00a658:	e6ef1071 	uxtb	r1, r1
 e00a65c:	e6ef2072 	uxtb	r2, r2
 e00a660:	e2833001 	add	r3, r3, #1
 e00a664:	e3530004 	cmp	r3, #4
 e00a668:	1afffff3 	bne	e00a63c <OTP_LogicalMap_Write+0x130>
 e00a66c:	e0422001 	sub	r2, r2, r1
 e00a670:	e2823002 	add	r3, r2, #2
 e00a674:	e1580003 	cmp	r8, r3
 e00a678:	9a00006c 	bls	e00a830 <OTP_LogicalMap_Write+0x324>
 e00a67c:	e1a09101 	lsl	r9, r1, #2
 e00a680:	e2822001 	add	r2, r2, #1
 e00a684:	e59d3010 	ldr	r3, [sp, #16]
 e00a688:	e6ef9079 	uxtb	r9, r9
 e00a68c:	e1a04102 	lsl	r4, r2, #2
 e00a690:	e0896003 	add	r6, r9, r3
 e00a694:	e6ef4074 	uxtb	r4, r4
 e00a698:	e28d3030 	add	r3, sp, #48	; 0x30
 e00a69c:	e3540010 	cmp	r4, #16
 e00a6a0:	e0839009 	add	r9, r3, r9
 e00a6a4:	e6ff6076 	uxth	r6, r6
 e00a6a8:	8a0000b2 	bhi	e00a978 <OTP_LogicalMap_Write+0x46c>
 e00a6ac:	e3560b01 	cmp	r6, #1024	; 0x400
 e00a6b0:	8a0000c7 	bhi	e00a9d4 <OTP_LogicalMap_Write+0x4c8>
 e00a6b4:	e3540000 	cmp	r4, #0
 e00a6b8:	0a00000f 	beq	e00a6fc <OTP_LogicalMap_Write+0x1f0>
 e00a6bc:	e2495001 	sub	r5, r9, #1
 e00a6c0:	e304a4a4 	movw	sl, #17572	; 0x44a4
 e00a6c4:	e340ae01 	movt	sl, #3585	; 0xe01
 e00a6c8:	e0858004 	add	r8, r5, r4
 e00a6cc:	e2697001 	rsb	r7, r9, #1
 e00a6d0:	e0873005 	add	r3, r7, r5
 e00a6d4:	e58d3000 	str	r3, [sp]
 e00a6d8:	e1a0100b 	mov	r1, fp
 e00a6dc:	e5f52001 	ldrb	r2, [r5, #1]!
 e00a6e0:	e58d2004 	str	r2, [sp, #4]
 e00a6e4:	e1a0300a 	mov	r3, sl
 e00a6e8:	e3a02049 	mov	r2, #73	; 0x49
 e00a6ec:	e3a00004 	mov	r0, #4
 e00a6f0:	eb00014f 	bl	e00ac34 <rtk_log_write_nano>
 e00a6f4:	e1580005 	cmp	r8, r5
 e00a6f8:	1afffff4 	bne	e00a6d0 <OTP_LogicalMap_Write+0x1c4>
 e00a6fc:	e3a05000 	mov	r5, #0
 e00a700:	e28d702c 	add	r7, sp, #44	; 0x2c
 e00a704:	ea000004 	b	e00a71c <OTP_LogicalMap_Write+0x210>
 e00a708:	e3520003 	cmp	r2, #3
 e00a70c:	02855008 	addeq	r5, r5, #8
 e00a710:	11a05001 	movne	r5, r1
 e00a714:	e3550f7f 	cmp	r5, #508	; 0x1fc
 e00a718:	8a00000e 	bhi	e00a758 <OTP_LogicalMap_Write+0x24c>
 e00a71c:	e1a01007 	mov	r1, r7
 e00a720:	e1a00005 	mov	r0, r5
 e00a724:	ebfffdf7 	bl	e009f08 <OTP_Read32.isra.0>
 e00a728:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
 e00a72c:	e2851004 	add	r1, r5, #4
 e00a730:	e3730001 	cmn	r3, #1
 e00a734:	e1a02e23 	lsr	r2, r3, #28
 e00a738:	0a000006 	beq	e00a758 <OTP_LogicalMap_Write+0x24c>
 e00a73c:	e3520002 	cmp	r2, #2
 e00a740:	1afffff0 	bne	e00a708 <OTP_LogicalMap_Write+0x1fc>
 e00a744:	e7e33c53 	ubfx	r3, r3, #24, #4
 e00a748:	e2833001 	add	r3, r3, #1
 e00a74c:	e0815103 	add	r5, r1, r3, lsl #2
 e00a750:	e3550f7f 	cmp	r5, #508	; 0x1fc
 e00a754:	9afffff0 	bls	e00a71c <OTP_LogicalMap_Write+0x210>
 e00a758:	e0852004 	add	r2, r5, r4
 e00a75c:	e30031fd 	movw	r3, #509	; 0x1fd
 e00a760:	e1520003 	cmp	r2, r3
 e00a764:	8a0000a2 	bhi	e00a9f4 <OTP_LogicalMap_Write+0x4e8>
 e00a768:	e6ef1076 	uxtb	r1, r6
 e00a76c:	e1a00005 	mov	r0, r5
 e00a770:	ebfffe68 	bl	e00a118 <OTP_Write8>
 e00a774:	e7e31456 	ubfx	r1, r6, #8, #4
 e00a778:	e3811070 	orr	r1, r1, #112	; 0x70
 e00a77c:	e2850001 	add	r0, r5, #1
 e00a780:	ebfffe64 	bl	e00a118 <OTP_Write8>
 e00a784:	e1a01144 	asr	r1, r4, #2
 e00a788:	e2411001 	sub	r1, r1, #1
 e00a78c:	e3811020 	orr	r1, r1, #32
 e00a790:	e2850003 	add	r0, r5, #3
 e00a794:	e6ef1071 	uxtb	r1, r1
 e00a798:	ebfffe5e 	bl	e00a118 <OTP_Write8>
 e00a79c:	e3540000 	cmp	r4, #0
 e00a7a0:	12496001 	subne	r6, r9, #1
 e00a7a4:	12699005 	rsbne	r9, r9, #5
 e00a7a8:	10895005 	addne	r5, r9, r5
 e00a7ac:	10864004 	addne	r4, r6, r4
 e00a7b0:	0a000004 	beq	e00a7c8 <OTP_LogicalMap_Write+0x2bc>
 e00a7b4:	e0850006 	add	r0, r5, r6
 e00a7b8:	e5f61001 	ldrb	r1, [r6, #1]!
 e00a7bc:	ebfffe55 	bl	e00a118 <OTP_Write8>
 e00a7c0:	e1560004 	cmp	r6, r4
 e00a7c4:	1afffffa 	bne	e00a7b4 <OTP_LogicalMap_Write+0x2a8>
 e00a7c8:	e3a03000 	mov	r3, #0
 e00a7cc:	e58d301c 	str	r3, [sp, #28]
 e00a7d0:	e59d3018 	ldr	r3, [sp, #24]
 e00a7d4:	e59de014 	ldr	lr, [sp, #20]
 e00a7d8:	e2434010 	sub	r4, r3, #16
 e00a7dc:	e59d3008 	ldr	r3, [sp, #8]
 e00a7e0:	e3a02049 	mov	r2, #73	; 0x49
 e00a7e4:	e263c010 	rsb	ip, r3, #16
 e00a7e8:	e59d3010 	ldr	r3, [sp, #16]
 e00a7ec:	e1a0100b 	mov	r1, fp
 e00a7f0:	e2833010 	add	r3, r3, #16
 e00a7f4:	e3a00004 	mov	r0, #4
 e00a7f8:	e58d3010 	str	r3, [sp, #16]
 e00a7fc:	e88d0018 	stm	sp, {r3, r4}
 e00a800:	e3043500 	movw	r3, #17664	; 0x4500
 e00a804:	e3403e01 	movt	r3, #3585	; 0xe01
 e00a808:	e08ec00c 	add	ip, lr, ip
 e00a80c:	e58dc014 	str	ip, [sp, #20]
 e00a810:	e3a0c000 	mov	ip, #0
 e00a814:	e58dc008 	str	ip, [sp, #8]
 e00a818:	eb000105 	bl	e00ac34 <rtk_log_write_nano>
 e00a81c:	e3540000 	cmp	r4, #0
 e00a820:	caffff4f 	bgt	e00a564 <OTP_LogicalMap_Write+0x58>
 e00a824:	e59d001c 	ldr	r0, [sp, #28]
 e00a828:	e28dd044 	add	sp, sp, #68	; 0x44
 e00a82c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00a830:	e30434bc 	movw	r3, #17596	; 0x44bc
 e00a834:	e3403e01 	movt	r3, #3585	; 0xe01
 e00a838:	e1dd51b0 	ldrh	r5, [sp, #16]
 e00a83c:	e59d701c 	ldr	r7, [sp, #28]
 e00a840:	e28d8030 	add	r8, sp, #48	; 0x30
 e00a844:	e3a06000 	mov	r6, #0
 e00a848:	e58d3024 	str	r3, [sp, #36]	; 0x24
 e00a84c:	ea000005 	b	e00a868 <OTP_LogicalMap_Write+0x35c>
 e00a850:	e2855001 	add	r5, r5, #1
 e00a854:	e2866001 	add	r6, r6, #1
 e00a858:	e6ff5075 	uxth	r5, r5
 e00a85c:	e2888001 	add	r8, r8, #1
 e00a860:	e3560010 	cmp	r6, #16
 e00a864:	0a000041 	beq	e00a970 <OTP_LogicalMap_Write+0x464>
 e00a868:	e3a03001 	mov	r3, #1
 e00a86c:	e01a3613 	ands	r3, sl, r3, lsl r6
 e00a870:	0afffff6 	beq	e00a850 <OTP_LogicalMap_Write+0x344>
 e00a874:	e5d89000 	ldrb	r9, [r8]
 e00a878:	e3550b01 	cmp	r5, #1024	; 0x400
 e00a87c:	8a000033 	bhi	e00a950 <OTP_LogicalMap_Write+0x444>
 e00a880:	e59d3020 	ldr	r3, [sp, #32]
 e00a884:	e3a02049 	mov	r2, #73	; 0x49
 e00a888:	e1a0100b 	mov	r1, fp
 e00a88c:	e3a00004 	mov	r0, #4
 e00a890:	e88d0220 	stm	sp, {r5, r9}
 e00a894:	e3a04000 	mov	r4, #0
 e00a898:	e28d702c 	add	r7, sp, #44	; 0x2c
 e00a89c:	eb0000e4 	bl	e00ac34 <rtk_log_write_nano>
 e00a8a0:	ea000004 	b	e00a8b8 <OTP_LogicalMap_Write+0x3ac>
 e00a8a4:	e3520003 	cmp	r2, #3
 e00a8a8:	02844008 	addeq	r4, r4, #8
 e00a8ac:	11a04001 	movne	r4, r1
 e00a8b0:	e3540f7f 	cmp	r4, #508	; 0x1fc
 e00a8b4:	8a00000e 	bhi	e00a8f4 <OTP_LogicalMap_Write+0x3e8>
 e00a8b8:	e1a01007 	mov	r1, r7
 e00a8bc:	e1a00004 	mov	r0, r4
 e00a8c0:	ebfffd90 	bl	e009f08 <OTP_Read32.isra.0>
 e00a8c4:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
 e00a8c8:	e2841004 	add	r1, r4, #4
 e00a8cc:	e3730001 	cmn	r3, #1
 e00a8d0:	e1a02e23 	lsr	r2, r3, #28
 e00a8d4:	0a00000e 	beq	e00a914 <OTP_LogicalMap_Write+0x408>
 e00a8d8:	e3520002 	cmp	r2, #2
 e00a8dc:	1afffff0 	bne	e00a8a4 <OTP_LogicalMap_Write+0x398>
 e00a8e0:	e7e30c53 	ubfx	r0, r3, #24, #4
 e00a8e4:	e2800001 	add	r0, r0, #1
 e00a8e8:	e0814100 	add	r4, r1, r0, lsl #2
 e00a8ec:	e3540f7f 	cmp	r4, #508	; 0x1fc
 e00a8f0:	9afffff0 	bls	e00a8b8 <OTP_LogicalMap_Write+0x3ac>
 e00a8f4:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e00a8f8:	e3a02045 	mov	r2, #69	; 0x45
 e00a8fc:	e1a0100b 	mov	r1, fp
 e00a900:	e3a00002 	mov	r0, #2
 e00a904:	e58d4000 	str	r4, [sp]
 e00a908:	e3e07000 	mvn	r7, #0
 e00a90c:	eb0000c8 	bl	e00ac34 <rtk_log_write_nano>
 e00a910:	eaffffce 	b	e00a850 <OTP_LogicalMap_Write+0x344>
 e00a914:	e6ef1075 	uxtb	r1, r5
 e00a918:	e1a00004 	mov	r0, r4
 e00a91c:	ebfffdfd 	bl	e00a118 <OTP_Write8>
 e00a920:	e7e31455 	ubfx	r1, r5, #8, #4
 e00a924:	e3811070 	orr	r1, r1, #112	; 0x70
 e00a928:	e2840001 	add	r0, r4, #1
 e00a92c:	ebfffdf9 	bl	e00a118 <OTP_Write8>
 e00a930:	e1a01009 	mov	r1, r9
 e00a934:	e2840002 	add	r0, r4, #2
 e00a938:	ebfffdf6 	bl	e00a118 <OTP_Write8>
 e00a93c:	e2840003 	add	r0, r4, #3
 e00a940:	e3a0101f 	mov	r1, #31
 e00a944:	e3a07000 	mov	r7, #0
 e00a948:	ebfffdf2 	bl	e00a118 <OTP_Write8>
 e00a94c:	eaffffbf 	b	e00a850 <OTP_LogicalMap_Write+0x344>
 e00a950:	e3a02045 	mov	r2, #69	; 0x45
 e00a954:	e1a0100b 	mov	r1, fp
 e00a958:	e3a00002 	mov	r0, #2
 e00a95c:	e58d5000 	str	r5, [sp]
 e00a960:	e3043478 	movw	r3, #17528	; 0x4478
 e00a964:	e3403e01 	movt	r3, #3585	; 0xe01
 e00a968:	eb0000b1 	bl	e00ac34 <rtk_log_write_nano>
 e00a96c:	eaffffc3 	b	e00a880 <OTP_LogicalMap_Write+0x374>
 e00a970:	e58d701c 	str	r7, [sp, #28]
 e00a974:	eaffff95 	b	e00a7d0 <OTP_LogicalMap_Write+0x2c4>
 e00a978:	e3a02045 	mov	r2, #69	; 0x45
 e00a97c:	e1a0100b 	mov	r1, fp
 e00a980:	e3a00002 	mov	r0, #2
 e00a984:	e58d4004 	str	r4, [sp, #4]
 e00a988:	e58d6000 	str	r6, [sp]
 e00a98c:	e304344c 	movw	r3, #17484	; 0x444c
 e00a990:	e3403e01 	movt	r3, #3585	; 0xe01
 e00a994:	eb0000a6 	bl	e00ac34 <rtk_log_write_nano>
 e00a998:	e3e03000 	mvn	r3, #0
 e00a99c:	e58d301c 	str	r3, [sp, #28]
 e00a9a0:	eaffff8a 	b	e00a7d0 <OTP_LogicalMap_Write+0x2c4>
 e00a9a4:	e59d3010 	ldr	r3, [sp, #16]
 e00a9a8:	e58d3000 	str	r3, [sp]
 e00a9ac:	e3a02045 	mov	r2, #69	; 0x45
 e00a9b0:	e3a00002 	mov	r0, #2
 e00a9b4:	e3043410 	movw	r3, #17424	; 0x4410
 e00a9b8:	e3403e01 	movt	r3, #3585	; 0xe01
 e00a9bc:	e3041318 	movw	r1, #17176	; 0x4318
 e00a9c0:	e3401e01 	movt	r1, #3585	; 0xe01
 e00a9c4:	eb00009a 	bl	e00ac34 <rtk_log_write_nano>
 e00a9c8:	e59d001c 	ldr	r0, [sp, #28]
 e00a9cc:	e28dd044 	add	sp, sp, #68	; 0x44
 e00a9d0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00a9d4:	e3a02045 	mov	r2, #69	; 0x45
 e00a9d8:	e1a0100b 	mov	r1, fp
 e00a9dc:	e3a00002 	mov	r0, #2
 e00a9e0:	e58d6000 	str	r6, [sp]
 e00a9e4:	e3043478 	movw	r3, #17528	; 0x4478
 e00a9e8:	e3403e01 	movt	r3, #3585	; 0xe01
 e00a9ec:	eb000090 	bl	e00ac34 <rtk_log_write_nano>
 e00a9f0:	eaffff2f 	b	e00a6b4 <OTP_LogicalMap_Write+0x1a8>
 e00a9f4:	e3a02045 	mov	r2, #69	; 0x45
 e00a9f8:	e1a0100b 	mov	r1, fp
 e00a9fc:	e3a00002 	mov	r0, #2
 e00aa00:	e58d5000 	str	r5, [sp]
 e00aa04:	e30434bc 	movw	r3, #17596	; 0x44bc
 e00aa08:	e3403e01 	movt	r3, #3585	; 0xe01
 e00aa0c:	eb000088 	bl	e00ac34 <rtk_log_write_nano>
 e00aa10:	e3e03000 	mvn	r3, #0
 e00aa14:	e58d301c 	str	r3, [sp, #28]
 e00aa18:	eaffff6c 	b	e00a7d0 <OTP_LogicalMap_Write+0x2c4>
 e00aa1c:	e3a03000 	mov	r3, #0
 e00aa20:	e58d301c 	str	r3, [sp, #28]
 e00aa24:	eaffff7e 	b	e00a824 <OTP_LogicalMap_Write+0x318>
 e00aa28:	e58d1004 	str	r1, [sp, #4]
 e00aa2c:	e58d3000 	str	r3, [sp]
 e00aa30:	e3a02045 	mov	r2, #69	; 0x45
 e00aa34:	e3a00002 	mov	r0, #2
 e00aa38:	e30433e4 	movw	r3, #17380	; 0x43e4
 e00aa3c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00aa40:	e3041318 	movw	r1, #17176	; 0x4318
 e00aa44:	e3401e01 	movt	r1, #3585	; 0xe01
 e00aa48:	e3e0c000 	mvn	ip, #0
 e00aa4c:	e58dc01c 	str	ip, [sp, #28]
 e00aa50:	eb000077 	bl	e00ac34 <rtk_log_write_nano>
 e00aa54:	eaffff72 	b	e00a824 <OTP_LogicalMap_Write+0x318>

0e00aa58 <System_Reset>:
 e00aa58:	e3a03902 	mov	r3, #32768	; 0x8000
 e00aa5c:	e3443200 	movt	r3, #16896	; 0x4200
 e00aa60:	e593227c 	ldr	r2, [r3, #636]	; 0x27c
 e00aa64:	e7e12352 	ubfx	r2, r2, #6, #2
 e00aa68:	e3520003 	cmp	r2, #3
 e00aa6c:	012fff1e 	bxeq	lr
 e00aa70:	e3a01202 	mov	r1, #536870912	; 0x20000000
 e00aa74:	e3090696 	movw	r0, #38550	; 0x9696
 e00aa78:	e3490696 	movt	r0, #38550	; 0x9696
 e00aa7c:	e1a02211 	lsl	r2, r1, r2
 e00aa80:	e583023c 	str	r0, [r3, #572]	; 0x23c
 e00aa84:	e3061969 	movw	r1, #26985	; 0x6969
 e00aa88:	e3461969 	movt	r1, #26985	; 0x6969
 e00aa8c:	e5832238 	str	r2, [r3, #568]	; 0x238
 e00aa90:	e583123c 	str	r1, [r3, #572]	; 0x23c
 e00aa94:	e12fff1e 	bx	lr

0e00aa98 <CPU_InInterrupt>:
 e00aa98:	e10f3000 	mrs	r3, CPSR
 e00aa9c:	e203301f 	and	r3, r3, #31
 e00aaa0:	e3530010 	cmp	r3, #16
 e00aaa4:	0a000004 	beq	e00aabc <CPU_InInterrupt+0x24>
 e00aaa8:	e10f0000 	mrs	r0, CPSR
 e00aaac:	e200001f 	and	r0, r0, #31
 e00aab0:	e250001f 	subs	r0, r0, #31
 e00aab4:	13a00001 	movne	r0, #1
 e00aab8:	e12fff1e 	bx	lr
 e00aabc:	e3a00000 	mov	r0, #0
 e00aac0:	e12fff1e 	bx	lr

0e00aac4 <rtk_log_level_get>:
 e00aac4:	e3033880 	movw	r3, #14464	; 0x3880
 e00aac8:	e346300a 	movt	r3, #24586	; 0x600a
 e00aacc:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e00aad0:	e1a06000 	mov	r6, r0
 e00aad4:	e5932000 	ldr	r2, [r3]
 e00aad8:	e3520003 	cmp	r2, #3
 e00aadc:	9a000016 	bls	e00ab3c <rtk_log_level_get+0x78>
 e00aae0:	e3500000 	cmp	r0, #0
 e00aae4:	13a08004 	movne	r8, #4
 e00aae8:	0a000018 	beq	e00ab50 <rtk_log_level_get+0x8c>
 e00aaec:	e30b72c4 	movw	r7, #45764	; 0xb2c4
 e00aaf0:	e3407e00 	movt	r7, #3584	; 0xe00
 e00aaf4:	e59f5064 	ldr	r5, [pc, #100]	; e00ab60 <rtk_log_level_get+0x9c>
 e00aaf8:	e3a04000 	mov	r4, #0
 e00aafc:	ea000003 	b	e00ab10 <rtk_log_level_get+0x4c>
 e00ab00:	e2844001 	add	r4, r4, #1
 e00ab04:	e285500b 	add	r5, r5, #11
 e00ab08:	e1580004 	cmp	r8, r4
 e00ab0c:	9a00000f 	bls	e00ab50 <rtk_log_level_get+0x8c>
 e00ab10:	e1a00005 	mov	r0, r5
 e00ab14:	e1a01006 	mov	r1, r6
 e00ab18:	e12fff37 	blx	r7
 e00ab1c:	e3500000 	cmp	r0, #0
 e00ab20:	1afffff6 	bne	e00ab00 <rtk_log_level_get+0x3c>
 e00ab24:	e3a0200b 	mov	r2, #11
 e00ab28:	e3033884 	movw	r3, #14468	; 0x3884
 e00ab2c:	e346300a 	movt	r3, #24586	; 0x600a
 e00ab30:	e0040492 	mul	r4, r2, r4
 e00ab34:	e7d30004 	ldrb	r0, [r3, r4]
 e00ab38:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e00ab3c:	e5938000 	ldr	r8, [r3]
 e00ab40:	e3500000 	cmp	r0, #0
 e00ab44:	0a000001 	beq	e00ab50 <rtk_log_level_get+0x8c>
 e00ab48:	e3580000 	cmp	r8, #0
 e00ab4c:	1affffe6 	bne	e00aaec <rtk_log_level_get+0x28>
 e00ab50:	e305326c 	movw	r3, #21100	; 0x526c
 e00ab54:	e3463009 	movt	r3, #24585	; 0x6009
 e00ab58:	e5d30000 	ldrb	r0, [r3]
 e00ab5c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e00ab60:	600a3885 	.word	0x600a3885

0e00ab64 <rtk_log_write>:
 e00ab64:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 e00ab68:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 e00ab6c:	e2514000 	subs	r4, r1, #0
 e00ab70:	e24dd008 	sub	sp, sp, #8
 e00ab74:	0a000005 	beq	e00ab90 <rtk_log_write+0x2c>
 e00ab78:	e1a05000 	mov	r5, r0
 e00ab7c:	e1a00004 	mov	r0, r4
 e00ab80:	e1a06002 	mov	r6, r2
 e00ab84:	ebffffce 	bl	e00aac4 <rtk_log_level_get>
 e00ab88:	e1500005 	cmp	r0, r5
 e00ab8c:	2a000003 	bcs	e00aba0 <rtk_log_write+0x3c>
 e00ab90:	e28dd008 	add	sp, sp, #8
 e00ab94:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
 e00ab98:	e28dd004 	add	sp, sp, #4
 e00ab9c:	e12fff1e 	bx	lr
 e00aba0:	e10f7000 	mrs	r7, CPSR
 e00aba4:	f10c0080 	cpsid	i
 e00aba8:	f57ff04f 	dsb	sy
 e00abac:	f57ff06f 	isb	sy
 e00abb0:	e3a03001 	mov	r3, #1
 e00abb4:	e3035840 	movw	r5, #14400	; 0x3840
 e00abb8:	e346500a 	movt	r5, #24586	; 0x600a
 e00abbc:	e1952f9f 	ldrex	r2, [r5]
 e00abc0:	e3520000 	cmp	r2, #0
 e00abc4:	1320f002 	wfene
 e00abc8:	01852f93 	strexeq	r2, r3, [r5]
 e00abcc:	03520000 	cmpeq	r2, #0
 e00abd0:	1afffff9 	bne	e00abbc <rtk_log_write+0x58>
 e00abd4:	f57ff05f 	dmb	sy
 e00abd8:	e5d43000 	ldrb	r3, [r4]
 e00abdc:	e3530023 	cmp	r3, #35	; 0x23
 e00abe0:	1a00000d 	bne	e00ac1c <rtk_log_write+0xb8>
 e00abe4:	e28d1020 	add	r1, sp, #32
 e00abe8:	e59d001c 	ldr	r0, [sp, #28]
 e00abec:	e58d1004 	str	r1, [sp, #4]
 e00abf0:	eb000da8 	bl	e00e298 <DiagVprintf>
 e00abf4:	e3a03000 	mov	r3, #0
 e00abf8:	f57ff05f 	dmb	sy
 e00abfc:	e5853000 	str	r3, [r5]
 e00ac00:	f57ff04f 	dsb	sy
 e00ac04:	e320f004 	sev
 e00ac08:	e121f007 	msr	CPSR_c, r7
 e00ac0c:	e28dd008 	add	sp, sp, #8
 e00ac10:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
 e00ac14:	e28dd004 	add	sp, sp, #4
 e00ac18:	e12fff1e 	bx	lr
 e00ac1c:	e1a02006 	mov	r2, r6
 e00ac20:	e1a01004 	mov	r1, r4
 e00ac24:	e3040528 	movw	r0, #17704	; 0x4528
 e00ac28:	e3400e01 	movt	r0, #3585	; 0xe01
 e00ac2c:	eb0010c3 	bl	e00ef40 <DiagPrintf>
 e00ac30:	eaffffeb 	b	e00abe4 <rtk_log_write+0x80>

0e00ac34 <rtk_log_write_nano>:
 e00ac34:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 e00ac38:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 e00ac3c:	e2514000 	subs	r4, r1, #0
 e00ac40:	e24dd008 	sub	sp, sp, #8
 e00ac44:	0a000005 	beq	e00ac60 <rtk_log_write_nano+0x2c>
 e00ac48:	e1a05000 	mov	r5, r0
 e00ac4c:	e1a00004 	mov	r0, r4
 e00ac50:	e1a06002 	mov	r6, r2
 e00ac54:	ebffff9a 	bl	e00aac4 <rtk_log_level_get>
 e00ac58:	e1500005 	cmp	r0, r5
 e00ac5c:	2a000003 	bcs	e00ac70 <rtk_log_write_nano+0x3c>
 e00ac60:	e28dd008 	add	sp, sp, #8
 e00ac64:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
 e00ac68:	e28dd004 	add	sp, sp, #4
 e00ac6c:	e12fff1e 	bx	lr
 e00ac70:	e10f7000 	mrs	r7, CPSR
 e00ac74:	f10c0080 	cpsid	i
 e00ac78:	f57ff04f 	dsb	sy
 e00ac7c:	f57ff06f 	isb	sy
 e00ac80:	e3a03001 	mov	r3, #1
 e00ac84:	e3035840 	movw	r5, #14400	; 0x3840
 e00ac88:	e346500a 	movt	r5, #24586	; 0x600a
 e00ac8c:	e1952f9f 	ldrex	r2, [r5]
 e00ac90:	e3520000 	cmp	r2, #0
 e00ac94:	1320f002 	wfene
 e00ac98:	01852f93 	strexeq	r2, r3, [r5]
 e00ac9c:	03520000 	cmpeq	r2, #0
 e00aca0:	1afffff9 	bne	e00ac8c <rtk_log_write_nano+0x58>
 e00aca4:	f57ff05f 	dmb	sy
 e00aca8:	e5d43000 	ldrb	r3, [r4]
 e00acac:	e3530023 	cmp	r3, #35	; 0x23
 e00acb0:	1a00000d 	bne	e00acec <rtk_log_write_nano+0xb8>
 e00acb4:	e28d1020 	add	r1, sp, #32
 e00acb8:	e59d001c 	ldr	r0, [sp, #28]
 e00acbc:	e58d1004 	str	r1, [sp, #4]
 e00acc0:	eb000f5d 	bl	e00ea3c <DiagVprintfNano>
 e00acc4:	e3a03000 	mov	r3, #0
 e00acc8:	f57ff05f 	dmb	sy
 e00accc:	e5853000 	str	r3, [r5]
 e00acd0:	f57ff04f 	dsb	sy
 e00acd4:	e320f004 	sev
 e00acd8:	e121f007 	msr	CPSR_c, r7
 e00acdc:	e28dd008 	add	sp, sp, #8
 e00ace0:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
 e00ace4:	e28dd004 	add	sp, sp, #4
 e00ace8:	e12fff1e 	bx	lr
 e00acec:	e1a02006 	mov	r2, r6
 e00acf0:	e1a01004 	mov	r1, r4
 e00acf4:	e3040528 	movw	r0, #17704	; 0x4528
 e00acf8:	e3400e01 	movt	r0, #3585	; 0xe01
 e00acfc:	eb00109a 	bl	e00ef6c <DiagPrintfNano>
 e00ad00:	eaffffeb 	b	e00acb4 <rtk_log_write_nano+0x80>

0e00ad04 <rtk_log_array_print>:
 e00ad04:	e3033880 	movw	r3, #14464	; 0x3880
 e00ad08:	e346300a 	movt	r3, #24586	; 0x600a
 e00ad0c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e00ad10:	e5932000 	ldr	r2, [r3]
 e00ad14:	e24dd008 	sub	sp, sp, #8
 e00ad18:	e3520003 	cmp	r2, #3
 e00ad1c:	9a000017 	bls	e00ad80 <rtk_log_array_print+0x7c>
 e00ad20:	e3500000 	cmp	r0, #0
 e00ad24:	13a08004 	movne	r8, #4
 e00ad28:	0a00001a 	beq	e00ad98 <rtk_log_array_print+0x94>
 e00ad2c:	e3047534 	movw	r7, #17716	; 0x4534
 e00ad30:	e3407e01 	movt	r7, #3585	; 0xe01
 e00ad34:	e3046548 	movw	r6, #17736	; 0x4548
 e00ad38:	e3406e01 	movt	r6, #3585	; 0xe01
 e00ad3c:	e2804001 	add	r4, r0, #1
 e00ad40:	e3a05000 	mov	r5, #0
 e00ad44:	e554c001 	ldrb	ip, [r4, #-1]
 e00ad48:	e1a03007 	mov	r3, r7
 e00ad4c:	e58d4000 	str	r4, [sp]
 e00ad50:	e3a02049 	mov	r2, #73	; 0x49
 e00ad54:	e1a01006 	mov	r1, r6
 e00ad58:	e3a00004 	mov	r0, #4
 e00ad5c:	e2855001 	add	r5, r5, #1
 e00ad60:	e58dc004 	str	ip, [sp, #4]
 e00ad64:	ebffffb2 	bl	e00ac34 <rtk_log_write_nano>
 e00ad68:	e284400b 	add	r4, r4, #11
 e00ad6c:	e1550008 	cmp	r5, r8
 e00ad70:	3afffff3 	bcc	e00ad44 <rtk_log_array_print+0x40>
 e00ad74:	e3a00000 	mov	r0, #0
 e00ad78:	e28dd008 	add	sp, sp, #8
 e00ad7c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e00ad80:	e5938000 	ldr	r8, [r3]
 e00ad84:	e3500000 	cmp	r0, #0
 e00ad88:	0a000002 	beq	e00ad98 <rtk_log_array_print+0x94>
 e00ad8c:	e3580000 	cmp	r8, #0
 e00ad90:	1affffe5 	bne	e00ad2c <rtk_log_array_print+0x28>
 e00ad94:	eafffff6 	b	e00ad74 <rtk_log_array_print+0x70>
 e00ad98:	e3e00000 	mvn	r0, #0
 e00ad9c:	eafffff5 	b	e00ad78 <rtk_log_array_print+0x74>

0e00ada0 <rtk_log_level_set>:
 e00ada0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e00ada4:	e3036880 	movw	r6, #14464	; 0x3880
 e00ada8:	e346600a 	movt	r6, #24586	; 0x600a
 e00adac:	e1a05000 	mov	r5, r0
 e00adb0:	e1a07001 	mov	r7, r1
 e00adb4:	e5963000 	ldr	r3, [r6]
 e00adb8:	e3530003 	cmp	r3, #3
 e00adbc:	83a08004 	movhi	r8, #4
 e00adc0:	95968000 	ldrls	r8, [r6]
 e00adc4:	e3510005 	cmp	r1, #5
 e00adc8:	93a04000 	movls	r4, #0
 e00adcc:	83a04001 	movhi	r4, #1
 e00add0:	e3500000 	cmp	r0, #0
 e00add4:	03844001 	orreq	r4, r4, #1
 e00add8:	e3540000 	cmp	r4, #0
 e00addc:	1a00003f 	bne	e00aee0 <rtk_log_level_set+0x140>
 e00ade0:	e304154c 	movw	r1, #17740	; 0x454c
 e00ade4:	e3401e01 	movt	r1, #3585	; 0xe01
 e00ade8:	e30b92c4 	movw	r9, #45764	; 0xb2c4
 e00adec:	e3409e00 	movt	r9, #3584	; 0xe00
 e00adf0:	e12fff39 	blx	r9
 e00adf4:	e3500000 	cmp	r0, #0
 e00adf8:	0a000014 	beq	e00ae50 <rtk_log_level_set+0xb0>
 e00adfc:	e3580000 	cmp	r8, #0
 e00ae00:	159fa0e0 	ldrne	sl, [pc, #224]	; e00aee8 <rtk_log_level_set+0x148>
 e00ae04:	1a000004 	bne	e00ae1c <rtk_log_level_set+0x7c>
 e00ae08:	ea000014 	b	e00ae60 <rtk_log_level_set+0xc0>
 e00ae0c:	e2844001 	add	r4, r4, #1
 e00ae10:	e28aa00b 	add	sl, sl, #11
 e00ae14:	e1580004 	cmp	r8, r4
 e00ae18:	0a000010 	beq	e00ae60 <rtk_log_level_set+0xc0>
 e00ae1c:	e1a0000a 	mov	r0, sl
 e00ae20:	e1a01005 	mov	r1, r5
 e00ae24:	e12fff39 	blx	r9
 e00ae28:	e3500000 	cmp	r0, #0
 e00ae2c:	1afffff6 	bne	e00ae0c <rtk_log_level_set+0x6c>
 e00ae30:	e3a0300b 	mov	r3, #11
 e00ae34:	e1580004 	cmp	r8, r4
 e00ae38:	e3038884 	movw	r8, #14468	; 0x3884
 e00ae3c:	e346800a 	movt	r8, #24586	; 0x600a
 e00ae40:	e0040493 	mul	r4, r3, r4
 e00ae44:	e7c87004 	strb	r7, [r8, r4]
 e00ae48:	88bd87f0 	pophi	{r4, r5, r6, r7, r8, r9, sl, pc}
 e00ae4c:	ea000005 	b	e00ae68 <rtk_log_level_set+0xc8>
 e00ae50:	e305326c 	movw	r3, #21100	; 0x526c
 e00ae54:	e3463009 	movt	r3, #24585	; 0x6009
 e00ae58:	e5c37000 	strb	r7, [r3]
 e00ae5c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e00ae60:	e3038884 	movw	r8, #14468	; 0x3884
 e00ae64:	e346800a 	movt	r8, #24586	; 0x600a
 e00ae68:	e5963000 	ldr	r3, [r6]
 e00ae6c:	e3530003 	cmp	r3, #3
 e00ae70:	8a000012 	bhi	e00aec0 <rtk_log_level_set+0x120>
 e00ae74:	e5963000 	ldr	r3, [r6]
 e00ae78:	e3a0200b 	mov	r2, #11
 e00ae7c:	e5960000 	ldr	r0, [r6]
 e00ae80:	e2033003 	and	r3, r3, #3
 e00ae84:	e2000003 	and	r0, r0, #3
 e00ae88:	e1a01005 	mov	r1, r5
 e00ae8c:	e0030392 	mul	r3, r2, r3
 e00ae90:	e0208092 	mla	r0, r2, r0, r8
 e00ae94:	e3a02009 	mov	r2, #9
 e00ae98:	e2800001 	add	r0, r0, #1
 e00ae9c:	e7c87003 	strb	r7, [r8, r3]
 e00aea0:	e3013a9c 	movw	r3, #6812	; 0x1a9c
 e00aea4:	e3403e00 	movt	r3, #3584	; 0xe00
 e00aea8:	e12fff33 	blx	r3
 e00aeac:	e5963000 	ldr	r3, [r6]
 e00aeb0:	e3a00000 	mov	r0, #0
 e00aeb4:	e2833001 	add	r3, r3, #1
 e00aeb8:	e5863000 	str	r3, [r6]
 e00aebc:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e00aec0:	e3a02057 	mov	r2, #87	; 0x57
 e00aec4:	e3a00003 	mov	r0, #3
 e00aec8:	e3043550 	movw	r3, #17744	; 0x4550
 e00aecc:	e3403e01 	movt	r3, #3585	; 0xe01
 e00aed0:	e3041548 	movw	r1, #17736	; 0x4548
 e00aed4:	e3401e01 	movt	r1, #3585	; 0xe01
 e00aed8:	ebffff55 	bl	e00ac34 <rtk_log_write_nano>
 e00aedc:	eaffffe4 	b	e00ae74 <rtk_log_level_set+0xd4>
 e00aee0:	e3e00000 	mvn	r0, #0
 e00aee4:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e00aee8:	600a3885 	.word	0x600a3885

0e00aeec <rtk_log_memory_dump_word>:
 e00aeec:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 e00aef0:	e2517000 	subs	r7, r1, #0
 e00aef4:	e24dd00c 	sub	sp, sp, #12
 e00aef8:	0a000025 	beq	e00af94 <rtk_log_memory_dump_word+0xa8>
 e00aefc:	e3049584 	movw	r9, #17796	; 0x4584
 e00af00:	e3409e01 	movt	r9, #3585	; 0xe01
 e00af04:	e3046084 	movw	r6, #16516	; 0x4084
 e00af08:	e3406e01 	movt	r6, #3585	; 0xe01
 e00af0c:	e1a08000 	mov	r8, r0
 e00af10:	e1a05000 	mov	r5, r0
 e00af14:	e3a04000 	mov	r4, #0
 e00af18:	ea00000a 	b	e00af48 <rtk_log_memory_dump_word+0x5c>
 e00af1c:	e4953004 	ldr	r3, [r5], #4
 e00af20:	e3a00001 	mov	r0, #1
 e00af24:	e0844000 	add	r4, r4, r0
 e00af28:	e58d3000 	str	r3, [sp]
 e00af2c:	e3a02041 	mov	r2, #65	; 0x41
 e00af30:	e1a01006 	mov	r1, r6
 e00af34:	e3043590 	movw	r3, #17808	; 0x4590
 e00af38:	e3403e01 	movt	r3, #3585	; 0xe01
 e00af3c:	ebffff3c 	bl	e00ac34 <rtk_log_write_nano>
 e00af40:	e1540007 	cmp	r4, r7
 e00af44:	0a000012 	beq	e00af94 <rtk_log_memory_dump_word+0xa8>
 e00af48:	e3540000 	cmp	r4, #0
 e00af4c:	0a000008 	beq	e00af74 <rtk_log_memory_dump_word+0x88>
 e00af50:	e3140007 	tst	r4, #7
 e00af54:	1afffff0 	bne	e00af1c <rtk_log_memory_dump_word+0x30>
 e00af58:	e1a03009 	mov	r3, r9
 e00af5c:	e3a02041 	mov	r2, #65	; 0x41
 e00af60:	e1a01006 	mov	r1, r6
 e00af64:	e3a00001 	mov	r0, #1
 e00af68:	e58d5000 	str	r5, [sp]
 e00af6c:	ebffff30 	bl	e00ac34 <rtk_log_write_nano>
 e00af70:	eaffffe9 	b	e00af1c <rtk_log_memory_dump_word+0x30>
 e00af74:	e3a02041 	mov	r2, #65	; 0x41
 e00af78:	e1a01006 	mov	r1, r6
 e00af7c:	e3a00001 	mov	r0, #1
 e00af80:	e58d8000 	str	r8, [sp]
 e00af84:	e304357c 	movw	r3, #17788	; 0x457c
 e00af88:	e3403e01 	movt	r3, #3585	; 0xe01
 e00af8c:	ebffff28 	bl	e00ac34 <rtk_log_write_nano>
 e00af90:	eaffffe1 	b	e00af1c <rtk_log_memory_dump_word+0x30>
 e00af94:	e3a02041 	mov	r2, #65	; 0x41
 e00af98:	e3a00001 	mov	r0, #1
 e00af9c:	e30434fc 	movw	r3, #17660	; 0x44fc
 e00afa0:	e3403e01 	movt	r3, #3585	; 0xe01
 e00afa4:	e3041084 	movw	r1, #16516	; 0x4084
 e00afa8:	e3401e01 	movt	r1, #3585	; 0xe01
 e00afac:	e28dd00c 	add	sp, sp, #12
 e00afb0:	e8bd43f0 	pop	{r4, r5, r6, r7, r8, r9, lr}
 e00afb4:	eaffff1e 	b	e00ac34 <rtk_log_write_nano>

0e00afb8 <rtk_log_memory_dump_byte>:
 e00afb8:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 e00afbc:	e2517000 	subs	r7, r1, #0
 e00afc0:	e24dd00c 	sub	sp, sp, #12
 e00afc4:	0a000025 	beq	e00b060 <rtk_log_memory_dump_byte+0xa8>
 e00afc8:	e3049584 	movw	r9, #17796	; 0x4584
 e00afcc:	e3409e01 	movt	r9, #3585	; 0xe01
 e00afd0:	e3046084 	movw	r6, #16516	; 0x4084
 e00afd4:	e3406e01 	movt	r6, #3585	; 0xe01
 e00afd8:	e1a08000 	mov	r8, r0
 e00afdc:	e1a05000 	mov	r5, r0
 e00afe0:	e3a04000 	mov	r4, #0
 e00afe4:	ea00000a 	b	e00b014 <rtk_log_memory_dump_byte+0x5c>
 e00afe8:	e4d53001 	ldrb	r3, [r5], #1
 e00afec:	e3a00001 	mov	r0, #1
 e00aff0:	e0844000 	add	r4, r4, r0
 e00aff4:	e58d3000 	str	r3, [sp]
 e00aff8:	e3a02041 	mov	r2, #65	; 0x41
 e00affc:	e1a01006 	mov	r1, r6
 e00b000:	e3043598 	movw	r3, #17816	; 0x4598
 e00b004:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b008:	ebffff09 	bl	e00ac34 <rtk_log_write_nano>
 e00b00c:	e1540007 	cmp	r4, r7
 e00b010:	0a000012 	beq	e00b060 <rtk_log_memory_dump_byte+0xa8>
 e00b014:	e3540000 	cmp	r4, #0
 e00b018:	0a000008 	beq	e00b040 <rtk_log_memory_dump_byte+0x88>
 e00b01c:	e3140007 	tst	r4, #7
 e00b020:	1afffff0 	bne	e00afe8 <rtk_log_memory_dump_byte+0x30>
 e00b024:	e1a03009 	mov	r3, r9
 e00b028:	e3a02041 	mov	r2, #65	; 0x41
 e00b02c:	e1a01006 	mov	r1, r6
 e00b030:	e3a00001 	mov	r0, #1
 e00b034:	e58d5000 	str	r5, [sp]
 e00b038:	ebfffefd 	bl	e00ac34 <rtk_log_write_nano>
 e00b03c:	eaffffe9 	b	e00afe8 <rtk_log_memory_dump_byte+0x30>
 e00b040:	e3a02041 	mov	r2, #65	; 0x41
 e00b044:	e1a01006 	mov	r1, r6
 e00b048:	e3a00001 	mov	r0, #1
 e00b04c:	e58d8000 	str	r8, [sp]
 e00b050:	e304357c 	movw	r3, #17788	; 0x457c
 e00b054:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b058:	ebfffef5 	bl	e00ac34 <rtk_log_write_nano>
 e00b05c:	eaffffe1 	b	e00afe8 <rtk_log_memory_dump_byte+0x30>
 e00b060:	e3a02041 	mov	r2, #65	; 0x41
 e00b064:	e3a00001 	mov	r0, #1
 e00b068:	e30434fc 	movw	r3, #17660	; 0x44fc
 e00b06c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b070:	e3041084 	movw	r1, #16516	; 0x4084
 e00b074:	e3401e01 	movt	r1, #3585	; 0xe01
 e00b078:	e28dd00c 	add	sp, sp, #12
 e00b07c:	e8bd43f0 	pop	{r4, r5, r6, r7, r8, r9, lr}
 e00b080:	eafffeeb 	b	e00ac34 <rtk_log_write_nano>

0e00b084 <_memset>:
 e00b084:	e3100003 	tst	r0, #3
 e00b088:	0a00003f 	beq	e00b18c <_memset+0x108>
 e00b08c:	e3520000 	cmp	r2, #0
 e00b090:	e242c001 	sub	ip, r2, #1
 e00b094:	012fff1e 	bxeq	lr
 e00b098:	e6ef2071 	uxtb	r2, r1
 e00b09c:	e1a03000 	mov	r3, r0
 e00b0a0:	ea000002 	b	e00b0b0 <_memset+0x2c>
 e00b0a4:	e24cc001 	sub	ip, ip, #1
 e00b0a8:	e37c0001 	cmn	ip, #1
 e00b0ac:	012fff1e 	bxeq	lr
 e00b0b0:	e4c32001 	strb	r2, [r3], #1
 e00b0b4:	e3130003 	tst	r3, #3
 e00b0b8:	1afffff9 	bne	e00b0a4 <_memset+0x20>
 e00b0bc:	e35c0003 	cmp	ip, #3
 e00b0c0:	9a000027 	bls	e00b164 <_memset+0xe0>
 e00b0c4:	e92d4030 	push	{r4, r5, lr}
 e00b0c8:	e6efe071 	uxtb	lr, r1
 e00b0cc:	e35c000f 	cmp	ip, #15
 e00b0d0:	e18ee40e 	orr	lr, lr, lr, lsl #8
 e00b0d4:	e18ee80e 	orr	lr, lr, lr, lsl #16
 e00b0d8:	9a00002e 	bls	e00b198 <_memset+0x114>
 e00b0dc:	e24c2010 	sub	r2, ip, #16
 e00b0e0:	e3c2400f 	bic	r4, r2, #15
 e00b0e4:	e2835020 	add	r5, r3, #32
 e00b0e8:	e0855004 	add	r5, r5, r4
 e00b0ec:	e1a04222 	lsr	r4, r2, #4
 e00b0f0:	e2832010 	add	r2, r3, #16
 e00b0f4:	e502e010 	str	lr, [r2, #-16]
 e00b0f8:	e502e00c 	str	lr, [r2, #-12]
 e00b0fc:	e502e008 	str	lr, [r2, #-8]
 e00b100:	e502e004 	str	lr, [r2, #-4]
 e00b104:	e2822010 	add	r2, r2, #16
 e00b108:	e1520005 	cmp	r2, r5
 e00b10c:	1afffff8 	bne	e00b0f4 <_memset+0x70>
 e00b110:	e2842001 	add	r2, r4, #1
 e00b114:	e31c000c 	tst	ip, #12
 e00b118:	e0832202 	add	r2, r3, r2, lsl #4
 e00b11c:	e20cc00f 	and	ip, ip, #15
 e00b120:	0a000017 	beq	e00b184 <_memset+0x100>
 e00b124:	e24c3004 	sub	r3, ip, #4
 e00b128:	e3c33003 	bic	r3, r3, #3
 e00b12c:	e2833004 	add	r3, r3, #4
 e00b130:	e0823003 	add	r3, r2, r3
 e00b134:	e482e004 	str	lr, [r2], #4
 e00b138:	e1530002 	cmp	r3, r2
 e00b13c:	1afffffc 	bne	e00b134 <_memset+0xb0>
 e00b140:	e20cc003 	and	ip, ip, #3
 e00b144:	e35c0000 	cmp	ip, #0
 e00b148:	08bd8030 	popeq	{r4, r5, pc}
 e00b14c:	e6ef2071 	uxtb	r2, r1
 e00b150:	e083c00c 	add	ip, r3, ip
 e00b154:	e4c32001 	strb	r2, [r3], #1
 e00b158:	e15c0003 	cmp	ip, r3
 e00b15c:	1afffffc 	bne	e00b154 <_memset+0xd0>
 e00b160:	e8bd8030 	pop	{r4, r5, pc}
 e00b164:	e35c0000 	cmp	ip, #0
 e00b168:	012fff1e 	bxeq	lr
 e00b16c:	e6ef2071 	uxtb	r2, r1
 e00b170:	e083c00c 	add	ip, r3, ip
 e00b174:	e4c32001 	strb	r2, [r3], #1
 e00b178:	e15c0003 	cmp	ip, r3
 e00b17c:	1afffffc 	bne	e00b174 <_memset+0xf0>
 e00b180:	e12fff1e 	bx	lr
 e00b184:	e1a03002 	mov	r3, r2
 e00b188:	eaffffed 	b	e00b144 <_memset+0xc0>
 e00b18c:	e1a03000 	mov	r3, r0
 e00b190:	e1a0c002 	mov	ip, r2
 e00b194:	eaffffc8 	b	e00b0bc <_memset+0x38>
 e00b198:	e1a02003 	mov	r2, r3
 e00b19c:	eaffffe0 	b	e00b124 <_memset+0xa0>

0e00b1a0 <_memcpy>:
 e00b1a0:	e352000f 	cmp	r2, #15
 e00b1a4:	9a000037 	bls	e00b288 <_memcpy+0xe8>
 e00b1a8:	e1803001 	orr	r3, r0, r1
 e00b1ac:	e3130003 	tst	r3, #3
 e00b1b0:	1a000040 	bne	e00b2b8 <_memcpy+0x118>
 e00b1b4:	e2423010 	sub	r3, r2, #16
 e00b1b8:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 e00b1bc:	e3c3c00f 	bic	ip, r3, #15
 e00b1c0:	e2814020 	add	r4, r1, #32
 e00b1c4:	e2816010 	add	r6, r1, #16
 e00b1c8:	e2807010 	add	r7, r0, #16
 e00b1cc:	e084400c 	add	r4, r4, ip
 e00b1d0:	e1a05223 	lsr	r5, r3, #4
 e00b1d4:	e516300c 	ldr	r3, [r6, #-12]
 e00b1d8:	e516e010 	ldr	lr, [r6, #-16]
 e00b1dc:	e516c008 	ldr	ip, [r6, #-8]
 e00b1e0:	e507300c 	str	r3, [r7, #-12]
 e00b1e4:	e2866010 	add	r6, r6, #16
 e00b1e8:	e5163014 	ldr	r3, [r6, #-20]	; 0xffffffec
 e00b1ec:	e507e010 	str	lr, [r7, #-16]
 e00b1f0:	e507c008 	str	ip, [r7, #-8]
 e00b1f4:	e5073004 	str	r3, [r7, #-4]
 e00b1f8:	e1560004 	cmp	r6, r4
 e00b1fc:	e2877010 	add	r7, r7, #16
 e00b200:	1afffff3 	bne	e00b1d4 <_memcpy+0x34>
 e00b204:	e2853001 	add	r3, r5, #1
 e00b208:	e312000c 	tst	r2, #12
 e00b20c:	e1a03203 	lsl	r3, r3, #4
 e00b210:	e202e00f 	and	lr, r2, #15
 e00b214:	e0811003 	add	r1, r1, r3
 e00b218:	01a0200e 	moveq	r2, lr
 e00b21c:	e0803003 	add	r3, r0, r3
 e00b220:	0a00000d 	beq	e00b25c <_memcpy+0xbc>
 e00b224:	e2435004 	sub	r5, r3, #4
 e00b228:	e1a04001 	mov	r4, r1
 e00b22c:	e494c004 	ldr	ip, [r4], #4
 e00b230:	e5a5c004 	str	ip, [r5, #4]!
 e00b234:	e04ec004 	sub	ip, lr, r4
 e00b238:	e081c00c 	add	ip, r1, ip
 e00b23c:	e35c0003 	cmp	ip, #3
 e00b240:	8afffff9 	bhi	e00b22c <_memcpy+0x8c>
 e00b244:	e24ec004 	sub	ip, lr, #4
 e00b248:	e3ccc003 	bic	ip, ip, #3
 e00b24c:	e28cc004 	add	ip, ip, #4
 e00b250:	e2022003 	and	r2, r2, #3
 e00b254:	e083300c 	add	r3, r3, ip
 e00b258:	e081100c 	add	r1, r1, ip
 e00b25c:	e3520000 	cmp	r2, #0
 e00b260:	e242c001 	sub	ip, r2, #1
 e00b264:	08bd80f0 	popeq	{r4, r5, r6, r7, pc}
 e00b268:	e28cc001 	add	ip, ip, #1
 e00b26c:	e2433001 	sub	r3, r3, #1
 e00b270:	e081c00c 	add	ip, r1, ip
 e00b274:	e4d12001 	ldrb	r2, [r1], #1
 e00b278:	e5e32001 	strb	r2, [r3, #1]!
 e00b27c:	e151000c 	cmp	r1, ip
 e00b280:	1afffffb 	bne	e00b274 <_memcpy+0xd4>
 e00b284:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
 e00b288:	e3520000 	cmp	r2, #0
 e00b28c:	e1a03000 	mov	r3, r0
 e00b290:	e242c001 	sub	ip, r2, #1
 e00b294:	012fff1e 	bxeq	lr
 e00b298:	e28cc001 	add	ip, ip, #1
 e00b29c:	e2433001 	sub	r3, r3, #1
 e00b2a0:	e081c00c 	add	ip, r1, ip
 e00b2a4:	e4d12001 	ldrb	r2, [r1], #1
 e00b2a8:	e5e32001 	strb	r2, [r3, #1]!
 e00b2ac:	e151000c 	cmp	r1, ip
 e00b2b0:	1afffffb 	bne	e00b2a4 <_memcpy+0x104>
 e00b2b4:	e12fff1e 	bx	lr
 e00b2b8:	e242c001 	sub	ip, r2, #1
 e00b2bc:	e1a03000 	mov	r3, r0
 e00b2c0:	eafffff4 	b	e00b298 <_memcpy+0xf8>

0e00b2c4 <_strcmp>:
 e00b2c4:	e1803001 	orr	r3, r0, r1
 e00b2c8:	e3130003 	tst	r3, #3
 e00b2cc:	0a000005 	beq	e00b2e8 <_strcmp+0x24>
 e00b2d0:	e5d03000 	ldrb	r3, [r0]
 e00b2d4:	e5d12000 	ldrb	r2, [r1]
 e00b2d8:	e3530000 	cmp	r3, #0
 e00b2dc:	1a00001d 	bne	e00b358 <_strcmp+0x94>
 e00b2e0:	e0430002 	sub	r0, r3, r2
 e00b2e4:	e12fff1e 	bx	lr
 e00b2e8:	e5903000 	ldr	r3, [r0]
 e00b2ec:	e5912000 	ldr	r2, [r1]
 e00b2f0:	e1530002 	cmp	r3, r2
 e00b2f4:	1afffff5 	bne	e00b2d0 <_strcmp+0xc>
 e00b2f8:	e92d4030 	push	{r4, r5, lr}
 e00b2fc:	e281c004 	add	ip, r1, #4
 e00b300:	e30f5eff 	movw	r5, #65279	; 0xfeff
 e00b304:	e34f5efe 	movt	r5, #65278	; 0xfefe
 e00b308:	e3084080 	movw	r4, #32896	; 0x8080
 e00b30c:	e3484080 	movt	r4, #32896	; 0x8080
 e00b310:	e280e004 	add	lr, r0, #4
 e00b314:	ea000004 	b	e00b32c <_strcmp+0x68>
 e00b318:	e59c2000 	ldr	r2, [ip]
 e00b31c:	e49e3004 	ldr	r3, [lr], #4
 e00b320:	e28cc004 	add	ip, ip, #4
 e00b324:	e1530002 	cmp	r3, r2
 e00b328:	1a00000f 	bne	e00b36c <_strcmp+0xa8>
 e00b32c:	e0832005 	add	r2, r3, r5
 e00b330:	e1c23003 	bic	r3, r2, r3
 e00b334:	e1a0100c 	mov	r1, ip
 e00b338:	e1a0000e 	mov	r0, lr
 e00b33c:	e1130004 	tst	r3, r4
 e00b340:	0afffff4 	beq	e00b318 <_strcmp+0x54>
 e00b344:	e3a00000 	mov	r0, #0
 e00b348:	e8bd8030 	pop	{r4, r5, pc}
 e00b34c:	e5f03001 	ldrb	r3, [r0, #1]!
 e00b350:	e3530000 	cmp	r3, #0
 e00b354:	0a000015 	beq	e00b3b0 <_strcmp+0xec>
 e00b358:	e1a0c001 	mov	ip, r1
 e00b35c:	e4d12001 	ldrb	r2, [r1], #1
 e00b360:	e1520003 	cmp	r2, r3
 e00b364:	0afffff8 	beq	e00b34c <_strcmp+0x88>
 e00b368:	eaffffdc 	b	e00b2e0 <_strcmp+0x1c>
 e00b36c:	e5d03000 	ldrb	r3, [r0]
 e00b370:	e5d12000 	ldrb	r2, [r1]
 e00b374:	e3530000 	cmp	r3, #0
 e00b378:	1a000003 	bne	e00b38c <_strcmp+0xc8>
 e00b37c:	ea000006 	b	e00b39c <_strcmp+0xd8>
 e00b380:	e5f03001 	ldrb	r3, [r0, #1]!
 e00b384:	e3530000 	cmp	r3, #0
 e00b388:	0a000005 	beq	e00b3a4 <_strcmp+0xe0>
 e00b38c:	e1a0c001 	mov	ip, r1
 e00b390:	e4d12001 	ldrb	r2, [r1], #1
 e00b394:	e1520003 	cmp	r2, r3
 e00b398:	0afffff8 	beq	e00b380 <_strcmp+0xbc>
 e00b39c:	e0430002 	sub	r0, r3, r2
 e00b3a0:	e8bd8030 	pop	{r4, r5, pc}
 e00b3a4:	e5dc2001 	ldrb	r2, [ip, #1]
 e00b3a8:	e0430002 	sub	r0, r3, r2
 e00b3ac:	e8bd8030 	pop	{r4, r5, pc}
 e00b3b0:	e5dc2001 	ldrb	r2, [ip, #1]
 e00b3b4:	eaffffc9 	b	e00b2e0 <_strcmp+0x1c>

0e00b3b8 <_strlen>:
 e00b3b8:	e3100003 	tst	r0, #3
 e00b3bc:	0a00000b 	beq	e00b3f0 <_strlen+0x38>
 e00b3c0:	e1a03000 	mov	r3, r0
 e00b3c4:	ea000001 	b	e00b3d0 <_strlen+0x18>
 e00b3c8:	e3130003 	tst	r3, #3
 e00b3cc:	0a000008 	beq	e00b3f4 <_strlen+0x3c>
 e00b3d0:	e1a01003 	mov	r1, r3
 e00b3d4:	e2833001 	add	r3, r3, #1
 e00b3d8:	e1a02003 	mov	r2, r3
 e00b3dc:	e5d1c000 	ldrb	ip, [r1]
 e00b3e0:	e35c0000 	cmp	ip, #0
 e00b3e4:	1afffff7 	bne	e00b3c8 <_strlen+0x10>
 e00b3e8:	e0410000 	sub	r0, r1, r0
 e00b3ec:	e12fff1e 	bx	lr
 e00b3f0:	e1a02000 	mov	r2, r0
 e00b3f4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e00b3f8:	e30feeff 	movw	lr, #65279	; 0xfeff
 e00b3fc:	e34feefe 	movt	lr, #65278	; 0xfefe
 e00b400:	e5921000 	ldr	r1, [r2]
 e00b404:	e308c080 	movw	ip, #32896	; 0x8080
 e00b408:	e348c080 	movt	ip, #32896	; 0x8080
 e00b40c:	e081300e 	add	r3, r1, lr
 e00b410:	e1c33001 	bic	r3, r3, r1
 e00b414:	e113000c 	tst	r3, ip
 e00b418:	1a000004 	bne	e00b430 <_strlen+0x78>
 e00b41c:	e5b21004 	ldr	r1, [r2, #4]!
 e00b420:	e081300e 	add	r3, r1, lr
 e00b424:	e1c33001 	bic	r3, r3, r1
 e00b428:	e113000c 	tst	r3, ip
 e00b42c:	0afffffa 	beq	e00b41c <_strlen+0x64>
 e00b430:	e5d23000 	ldrb	r3, [r2]
 e00b434:	e3530000 	cmp	r3, #0
 e00b438:	0a000002 	beq	e00b448 <_strlen+0x90>
 e00b43c:	e5f23001 	ldrb	r3, [r2, #1]!
 e00b440:	e3530000 	cmp	r3, #0
 e00b444:	1afffffc 	bne	e00b43c <_strlen+0x84>
 e00b448:	e0420000 	sub	r0, r2, r0
 e00b44c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

0e00b450 <_stricmp>:
 e00b450:	e4d03001 	ldrb	r3, [r0], #1
 e00b454:	e4d12001 	ldrb	r2, [r1], #1
 e00b458:	e1530002 	cmp	r3, r2
 e00b45c:	0a000013 	beq	e00b4b0 <_stricmp+0x60>
 e00b460:	e383c020 	orr	ip, r3, #32
 e00b464:	e92d4010 	push	{r4, lr}
 e00b468:	e24ce061 	sub	lr, ip, #97	; 0x61
 e00b46c:	e35e0019 	cmp	lr, #25
 e00b470:	8a00000c 	bhi	e00b4a8 <_stricmp+0x58>
 e00b474:	e3824020 	orr	r4, r2, #32
 e00b478:	e15c0004 	cmp	ip, r4
 e00b47c:	1a000009 	bne	e00b4a8 <_stricmp+0x58>
 e00b480:	e3530000 	cmp	r3, #0
 e00b484:	0a00000d 	beq	e00b4c0 <_stricmp+0x70>
 e00b488:	e4d03001 	ldrb	r3, [r0], #1
 e00b48c:	e4d12001 	ldrb	r2, [r1], #1
 e00b490:	e1530002 	cmp	r3, r2
 e00b494:	0afffff9 	beq	e00b480 <_stricmp+0x30>
 e00b498:	e383c020 	orr	ip, r3, #32
 e00b49c:	e24ce061 	sub	lr, ip, #97	; 0x61
 e00b4a0:	e35e0019 	cmp	lr, #25
 e00b4a4:	9afffff2 	bls	e00b474 <_stricmp+0x24>
 e00b4a8:	e3a00001 	mov	r0, #1
 e00b4ac:	e8bd8010 	pop	{r4, pc}
 e00b4b0:	e3530000 	cmp	r3, #0
 e00b4b4:	1affffe5 	bne	e00b450 <_stricmp>
 e00b4b8:	e1a00003 	mov	r0, r3
 e00b4bc:	e12fff1e 	bx	lr
 e00b4c0:	e1a00003 	mov	r0, r3
 e00b4c4:	e8bd8010 	pop	{r4, pc}

0e00b4c8 <_strtoul>:
 e00b4c8:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e00b4cc:	e1a0c000 	mov	ip, r0
 e00b4d0:	e1a04000 	mov	r4, r0
 e00b4d4:	e1a06001 	mov	r6, r1
 e00b4d8:	e1a05002 	mov	r5, r2
 e00b4dc:	e1a0200c 	mov	r2, ip
 e00b4e0:	e4dc3001 	ldrb	r3, [ip], #1
 e00b4e4:	e243e009 	sub	lr, r3, #9
 e00b4e8:	e3530020 	cmp	r3, #32
 e00b4ec:	0afffffa 	beq	e00b4dc <_strtoul+0x14>
 e00b4f0:	e353002c 	cmp	r3, #44	; 0x2c
 e00b4f4:	135e0004 	cmpne	lr, #4
 e00b4f8:	93a0e001 	movls	lr, #1
 e00b4fc:	83a0e000 	movhi	lr, #0
 e00b500:	9afffff5 	bls	e00b4dc <_strtoul+0x14>
 e00b504:	e353002d 	cmp	r3, #45	; 0x2d
 e00b508:	0a000047 	beq	e00b62c <_strtoul+0x164>
 e00b50c:	e353002b 	cmp	r3, #43	; 0x2b
 e00b510:	0282c002 	addeq	ip, r2, #2
 e00b514:	05d23001 	ldrbeq	r3, [r2, #1]
 e00b518:	e3d52010 	bics	r2, r5, #16
 e00b51c:	0a000032 	beq	e00b5ec <_strtoul+0x124>
 e00b520:	e3e07000 	mvn	r7, #0
 e00b524:	e1a09005 	mov	r9, r5
 e00b528:	e737f517 	udiv	r7, r7, r5
 e00b52c:	e0080795 	mul	r8, r5, r7
 e00b530:	e1e08008 	mvn	r8, r8
 e00b534:	e3a01000 	mov	r1, #0
 e00b538:	e1a00001 	mov	r0, r1
 e00b53c:	ea000009 	b	e00b568 <_strtoul+0xa0>
 e00b540:	e0402007 	sub	r2, r0, r7
 e00b544:	e16f2f12 	clz	r2, r2
 e00b548:	e1530008 	cmp	r3, r8
 e00b54c:	e1a022a2 	lsr	r2, r2, #5
 e00b550:	d3a02000 	movle	r2, #0
 e00b554:	e3520000 	cmp	r2, #0
 e00b558:	1a000017 	bne	e00b5bc <_strtoul+0xf4>
 e00b55c:	e0203099 	mla	r0, r9, r0, r3
 e00b560:	e3a01001 	mov	r1, #1
 e00b564:	e4dc3001 	ldrb	r3, [ip], #1
 e00b568:	e2432030 	sub	r2, r3, #48	; 0x30
 e00b56c:	e6efa072 	uxtb	sl, r2
 e00b570:	e35a0009 	cmp	sl, #9
 e00b574:	91a03002 	movls	r3, r2
 e00b578:	9a000008 	bls	e00b5a0 <_strtoul+0xd8>
 e00b57c:	e3c32020 	bic	r2, r3, #32
 e00b580:	e2422041 	sub	r2, r2, #65	; 0x41
 e00b584:	e243a041 	sub	sl, r3, #65	; 0x41
 e00b588:	e3520019 	cmp	r2, #25
 e00b58c:	8a00000c 	bhi	e00b5c4 <_strtoul+0xfc>
 e00b590:	e35a001a 	cmp	sl, #26
 e00b594:	33a02037 	movcc	r2, #55	; 0x37
 e00b598:	23a02057 	movcs	r2, #87	; 0x57
 e00b59c:	e0433002 	sub	r3, r3, r2
 e00b5a0:	e1550003 	cmp	r5, r3
 e00b5a4:	da000006 	ble	e00b5c4 <_strtoul+0xfc>
 e00b5a8:	e1500007 	cmp	r0, r7
 e00b5ac:	93a02000 	movls	r2, #0
 e00b5b0:	83a02001 	movhi	r2, #1
 e00b5b4:	e1922fa1 	orrs	r2, r2, r1, lsr #31
 e00b5b8:	0affffe0 	beq	e00b540 <_strtoul+0x78>
 e00b5bc:	e3e01000 	mvn	r1, #0
 e00b5c0:	eaffffe7 	b	e00b564 <_strtoul+0x9c>
 e00b5c4:	e3710001 	cmn	r1, #1
 e00b5c8:	0a000011 	beq	e00b614 <_strtoul+0x14c>
 e00b5cc:	e35e0000 	cmp	lr, #0
 e00b5d0:	12600000 	rsbne	r0, r0, #0
 e00b5d4:	e3560000 	cmp	r6, #0
 e00b5d8:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
 e00b5dc:	e3510000 	cmp	r1, #0
 e00b5e0:	1a00000e 	bne	e00b620 <_strtoul+0x158>
 e00b5e4:	e5864000 	str	r4, [r6]
 e00b5e8:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e00b5ec:	e3530030 	cmp	r3, #48	; 0x30
 e00b5f0:	0a000011 	beq	e00b63c <_strtoul+0x174>
 e00b5f4:	e3550000 	cmp	r5, #0
 e00b5f8:	1affffc8 	bne	e00b520 <_strtoul+0x58>
 e00b5fc:	e3a0500a 	mov	r5, #10
 e00b600:	e3097999 	movw	r7, #39321	; 0x9999
 e00b604:	e3417999 	movt	r7, #6553	; 0x1999
 e00b608:	e3a08005 	mov	r8, #5
 e00b60c:	e1a09005 	mov	r9, r5
 e00b610:	eaffffc7 	b	e00b534 <_strtoul+0x6c>
 e00b614:	e3560000 	cmp	r6, #0
 e00b618:	e1a00001 	mov	r0, r1
 e00b61c:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
 e00b620:	e24c4001 	sub	r4, ip, #1
 e00b624:	e5864000 	str	r4, [r6]
 e00b628:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e00b62c:	e5d23001 	ldrb	r3, [r2, #1]
 e00b630:	e282c002 	add	ip, r2, #2
 e00b634:	e3a0e001 	mov	lr, #1
 e00b638:	eaffffb6 	b	e00b518 <_strtoul+0x50>
 e00b63c:	e5dc2000 	ldrb	r2, [ip]
 e00b640:	e20220df 	and	r2, r2, #223	; 0xdf
 e00b644:	e3520058 	cmp	r2, #88	; 0x58
 e00b648:	1a000006 	bne	e00b668 <_strtoul+0x1a0>
 e00b64c:	e3a05010 	mov	r5, #16
 e00b650:	e5dc3001 	ldrb	r3, [ip, #1]
 e00b654:	e3a0800f 	mov	r8, #15
 e00b658:	e28cc002 	add	ip, ip, #2
 e00b65c:	e1a09005 	mov	r9, r5
 e00b660:	e3e0720f 	mvn	r7, #-268435456	; 0xf0000000
 e00b664:	eaffffb2 	b	e00b534 <_strtoul+0x6c>
 e00b668:	e3550000 	cmp	r5, #0
 e00b66c:	1affffab 	bne	e00b520 <_strtoul+0x58>
 e00b670:	e3a05008 	mov	r5, #8
 e00b674:	e3a08007 	mov	r8, #7
 e00b678:	e1a09005 	mov	r9, r5
 e00b67c:	e3e0720e 	mvn	r7, #-536870912	; 0xe0000000
 e00b680:	eaffffab 	b	e00b534 <_strtoul+0x6c>

0e00b684 <_2char2hex>:
 e00b684:	e2403030 	sub	r3, r0, #48	; 0x30
 e00b688:	e6ef2073 	uxtb	r2, r3
 e00b68c:	e3520009 	cmp	r2, #9
 e00b690:	97a30053 	sbfxls	r0, r3, #0, #4
 e00b694:	91a00200 	lslls	r0, r0, #4
 e00b698:	9a000008 	bls	e00b6c0 <_2char2hex+0x3c>
 e00b69c:	e2403061 	sub	r3, r0, #97	; 0x61
 e00b6a0:	e3530005 	cmp	r3, #5
 e00b6a4:	9a000013 	bls	e00b6f8 <_2char2hex+0x74>
 e00b6a8:	e2403041 	sub	r3, r0, #65	; 0x41
 e00b6ac:	e3530005 	cmp	r3, #5
 e00b6b0:	92400037 	subls	r0, r0, #55	; 0x37
 e00b6b4:	83e0000f 	mvnhi	r0, #15
 e00b6b8:	97a33050 	sbfxls	r3, r0, #0, #4
 e00b6bc:	91a00203 	lslls	r0, r3, #4
 e00b6c0:	e2413030 	sub	r3, r1, #48	; 0x30
 e00b6c4:	e6ef2073 	uxtb	r2, r3
 e00b6c8:	e3520009 	cmp	r2, #9
 e00b6cc:	9a000010 	bls	e00b714 <_2char2hex+0x90>
 e00b6d0:	e2413061 	sub	r3, r1, #97	; 0x61
 e00b6d4:	e3530005 	cmp	r3, #5
 e00b6d8:	9a000010 	bls	e00b720 <_2char2hex+0x9c>
 e00b6dc:	e2413041 	sub	r3, r1, #65	; 0x41
 e00b6e0:	e3530005 	cmp	r3, #5
 e00b6e4:	92411037 	subls	r1, r1, #55	; 0x37
 e00b6e8:	91800001 	orrls	r0, r0, r1
 e00b6ec:	96ef0070 	uxtbls	r0, r0
 e00b6f0:	83a000ff 	movhi	r0, #255	; 0xff
 e00b6f4:	e12fff1e 	bx	lr
 e00b6f8:	e2403057 	sub	r3, r0, #87	; 0x57
 e00b6fc:	e7a33053 	sbfx	r3, r3, #0, #4
 e00b700:	e1a00203 	lsl	r0, r3, #4
 e00b704:	e2413030 	sub	r3, r1, #48	; 0x30
 e00b708:	e6ef2073 	uxtb	r2, r3
 e00b70c:	e3520009 	cmp	r2, #9
 e00b710:	8affffee 	bhi	e00b6d0 <_2char2hex+0x4c>
 e00b714:	e1800003 	orr	r0, r0, r3
 e00b718:	e6ef0070 	uxtb	r0, r0
 e00b71c:	e12fff1e 	bx	lr
 e00b720:	e2411057 	sub	r1, r1, #87	; 0x57
 e00b724:	e1800001 	orr	r0, r0, r1
 e00b728:	e6ef0070 	uxtb	r0, r0
 e00b72c:	e12fff1e 	bx	lr

0e00b730 <app_pre_example>:
 e00b730:	e12fff1e 	bx	lr

0e00b734 <app_example>:
 e00b734:	e12fff1e 	bx	lr

0e00b738 <app_pmu_init>:
 e00b738:	e92d4010 	push	{r4, lr}
 e00b73c:	e3a00000 	mov	r0, #0
 e00b740:	ebfff7c8 	bl	e009668 <pmu_set_sleep_type>
 e00b744:	e8bd4010 	pop	{r4, lr}
 e00b748:	e3a00000 	mov	r0, #0
 e00b74c:	eafff7cf 	b	e009690 <pmu_acquire_deepwakelock>

0e00b750 <main>:
 e00b750:	e92d4010 	push	{r4, lr}
 e00b754:	e3a02057 	mov	r2, #87	; 0x57
 e00b758:	e3a00003 	mov	r0, #3
 e00b75c:	e30435a0 	movw	r3, #17824	; 0x45a0
 e00b760:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b764:	e30415dc 	movw	r1, #17884	; 0x45dc
 e00b768:	e3401e01 	movt	r1, #3585	; 0xe01
 e00b76c:	ebfffcfc 	bl	e00ab64 <rtk_log_write>
 e00b770:	e3a02045 	mov	r2, #69	; 0x45
 e00b774:	e3a00002 	mov	r0, #2
 e00b778:	e30435e4 	movw	r3, #17892	; 0x45e4
 e00b77c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b780:	e30415dc 	movw	r1, #17884	; 0x45dc
 e00b784:	e3401e01 	movt	r1, #3585	; 0xe01
 e00b788:	ebfffcf5 	bl	e00ab64 <rtk_log_write>
 e00b78c:	e3a02045 	mov	r2, #69	; 0x45
 e00b790:	e3a00002 	mov	r0, #2
 e00b794:	e304363c 	movw	r3, #17980	; 0x463c
 e00b798:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b79c:	e30415dc 	movw	r1, #17884	; 0x45dc
 e00b7a0:	e3401e01 	movt	r1, #3585	; 0xe01
 e00b7a4:	ebfffcee 	bl	e00ab64 <rtk_log_write>
 e00b7a8:	e3a02045 	mov	r2, #69	; 0x45
 e00b7ac:	e3a00002 	mov	r0, #2
 e00b7b0:	e304367c 	movw	r3, #18044	; 0x467c
 e00b7b4:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b7b8:	e30415dc 	movw	r1, #17884	; 0x45dc
 e00b7bc:	e3401e01 	movt	r1, #3585	; 0xe01
 e00b7c0:	ebfffce7 	bl	e00ab64 <rtk_log_write>
 e00b7c4:	e3a02045 	mov	r2, #69	; 0x45
 e00b7c8:	e3a00002 	mov	r0, #2
 e00b7cc:	e30436d8 	movw	r3, #18136	; 0x46d8
 e00b7d0:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b7d4:	e30415dc 	movw	r1, #17884	; 0x45dc
 e00b7d8:	e3401e01 	movt	r1, #3585	; 0xe01
 e00b7dc:	ebfffce0 	bl	e00ab64 <rtk_log_write>
 e00b7e0:	e3a02045 	mov	r2, #69	; 0x45
 e00b7e4:	e3a00002 	mov	r0, #2
 e00b7e8:	e3043748 	movw	r3, #18248	; 0x4748
 e00b7ec:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b7f0:	e30415dc 	movw	r1, #17884	; 0x45dc
 e00b7f4:	e3401e01 	movt	r1, #3585	; 0xe01
 e00b7f8:	ebfffcd9 	bl	e00ab64 <rtk_log_write>
 e00b7fc:	e3a02045 	mov	r2, #69	; 0x45
 e00b800:	e3a00002 	mov	r0, #2
 e00b804:	e30437b4 	movw	r3, #18356	; 0x47b4
 e00b808:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b80c:	e30415dc 	movw	r1, #17884	; 0x45dc
 e00b810:	e3401e01 	movt	r1, #3585	; 0xe01
 e00b814:	ebfffcd2 	bl	e00ab64 <rtk_log_write>
 e00b818:	e3a02057 	mov	r2, #87	; 0x57
 e00b81c:	e3a00003 	mov	r0, #3
 e00b820:	e304380c 	movw	r3, #18444	; 0x480c
 e00b824:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b828:	e30415dc 	movw	r1, #17884	; 0x45dc
 e00b82c:	e3401e01 	movt	r1, #3585	; 0xe01
 e00b830:	ebfffccb 	bl	e00ab64 <rtk_log_write>
 e00b834:	e3084a64 	movw	r4, #35428	; 0x8a64
 e00b838:	e3404e00 	movt	r4, #3584	; 0xe00
 e00b83c:	e3a01018 	mov	r1, #24
 e00b840:	e3a030a0 	mov	r3, #160	; 0xa0
 e00b844:	e3a02d16 	mov	r2, #1408	; 0x580
 e00b848:	e3442100 	movt	r2, #16640	; 0x4100
 e00b84c:	e3090ce8 	movw	r0, #40168	; 0x9ce8
 e00b850:	e3400e00 	movt	r0, #3584	; 0xe00
 e00b854:	e12fff34 	blx	r4
 e00b858:	e3a00018 	mov	r0, #24
 e00b85c:	e3083a5c 	movw	r3, #35420	; 0x8a5c
 e00b860:	e3403e00 	movt	r3, #3584	; 0xe00
 e00b864:	e12fff33 	blx	r3
 e00b868:	e3a00d16 	mov	r0, #1408	; 0x580
 e00b86c:	e3440100 	movt	r0, #16640	; 0x4100
 e00b870:	ebfff7a6 	bl	e009710 <ipc_table_init>
 e00b874:	ebffffaf 	bl	e00b738 <app_pmu_init>
 e00b878:	ebffffac 	bl	e00b730 <app_pre_example>
 e00b87c:	e3a01000 	mov	r1, #0
 e00b880:	e1a00001 	mov	r0, r1
 e00b884:	e30c3988 	movw	r3, #51592	; 0xc988
 e00b888:	e3403e00 	movt	r3, #3584	; 0xe00
 e00b88c:	e12fff33 	blx	r3
 e00b890:	eb0003ca 	bl	e00c7c0 <shell_init_ram>
 e00b894:	ebffffa6 	bl	e00b734 <app_example>
 e00b898:	e3080228 	movw	r0, #33320	; 0x8228
 e00b89c:	e3400e00 	movt	r0, #3584	; 0xe00
 e00b8a0:	ebfff902 	bl	e009cb0 <IPC_SEMDelayStub>
 e00b8a4:	e3a02049 	mov	r2, #73	; 0x49
 e00b8a8:	e3a00004 	mov	r0, #4
 e00b8ac:	e3043848 	movw	r3, #18504	; 0x4848
 e00b8b0:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b8b4:	e30415dc 	movw	r1, #17884	; 0x45dc
 e00b8b8:	e3401e01 	movt	r1, #3585	; 0xe01
 e00b8bc:	ebfffca8 	bl	e00ab64 <rtk_log_write>
 e00b8c0:	ebfff23a 	bl	e0081b0 <rtos_sched_start>
 e00b8c4:	eafffffe 	b	e00b8c4 <main+0x174>

0e00b8c8 <CmdRamHelp>:
 e00b8c8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e00b8cc:	e3055608 	movw	r5, #22024	; 0x5608
 e00b8d0:	e3405e01 	movt	r5, #3585	; 0xe01
 e00b8d4:	e24dd008 	sub	sp, sp, #8
 e00b8d8:	e3054598 	movw	r4, #21912	; 0x5598
 e00b8dc:	e3404e01 	movt	r4, #3585	; 0xe01
 e00b8e0:	e0455004 	sub	r5, r5, r4
 e00b8e4:	e3a02041 	mov	r2, #65	; 0x41
 e00b8e8:	e1a05225 	lsr	r5, r5, #4
 e00b8ec:	e3a00001 	mov	r0, #1
 e00b8f0:	e58d5000 	str	r5, [sp]
 e00b8f4:	e3043864 	movw	r3, #18532	; 0x4864
 e00b8f8:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b8fc:	e30418a4 	movw	r1, #18596	; 0x48a4
 e00b900:	e3401e01 	movt	r1, #3585	; 0xe01
 e00b904:	ebfffcca 	bl	e00ac34 <rtk_log_write_nano>
 e00b908:	e3550000 	cmp	r5, #0
 e00b90c:	0a000010 	beq	e00b954 <CmdRamHelp+0x8c>
 e00b910:	e30478ac 	movw	r7, #18604	; 0x48ac
 e00b914:	e3407e01 	movt	r7, #3585	; 0xe01
 e00b918:	e3046084 	movw	r6, #16516	; 0x4084
 e00b91c:	e3406e01 	movt	r6, #3585	; 0xe01
 e00b920:	e0848205 	add	r8, r4, r5, lsl #4
 e00b924:	e594c00c 	ldr	ip, [r4, #12]
 e00b928:	e1a03007 	mov	r3, r7
 e00b92c:	e2844010 	add	r4, r4, #16
 e00b930:	e3a02041 	mov	r2, #65	; 0x41
 e00b934:	e1a01006 	mov	r1, r6
 e00b938:	e3a00001 	mov	r0, #1
 e00b93c:	e35c0000 	cmp	ip, #0
 e00b940:	0a000001 	beq	e00b94c <CmdRamHelp+0x84>
 e00b944:	e58dc000 	str	ip, [sp]
 e00b948:	ebfffcb9 	bl	e00ac34 <rtk_log_write_nano>
 e00b94c:	e1540008 	cmp	r4, r8
 e00b950:	1afffff3 	bne	e00b924 <CmdRamHelp+0x5c>
 e00b954:	e3a00001 	mov	r0, #1
 e00b958:	e3a02041 	mov	r2, #65	; 0x41
 e00b95c:	e58d5000 	str	r5, [sp]
 e00b960:	e30438b0 	movw	r3, #18608	; 0x48b0
 e00b964:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b968:	e30418a4 	movw	r1, #18596	; 0x48a4
 e00b96c:	e3401e01 	movt	r1, #3585	; 0xe01
 e00b970:	ebfffcaf 	bl	e00ac34 <rtk_log_write_nano>
 e00b974:	e3a00001 	mov	r0, #1
 e00b978:	e28dd008 	add	sp, sp, #8
 e00b97c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0e00b980 <cmd_reboot>:
 e00b980:	e92d4070 	push	{r4, r5, r6, lr}
 e00b984:	e3a02041 	mov	r2, #65	; 0x41
 e00b988:	e1a04000 	mov	r4, r0
 e00b98c:	e1a05001 	mov	r5, r1
 e00b990:	e3a00001 	mov	r0, #1
 e00b994:	e30438f0 	movw	r3, #18672	; 0x48f0
 e00b998:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b99c:	e30418a4 	movw	r1, #18596	; 0x48a4
 e00b9a0:	e3401e01 	movt	r1, #3585	; 0xe01
 e00b9a4:	ebfffca2 	bl	e00ac34 <rtk_log_write_nano>
 e00b9a8:	e3540000 	cmp	r4, #0
 e00b9ac:	1a000002 	bne	e00b9bc <cmd_reboot+0x3c>
 e00b9b0:	ebfffc28 	bl	e00aa58 <System_Reset>
 e00b9b4:	e3a00001 	mov	r0, #1
 e00b9b8:	e8bd8070 	pop	{r4, r5, r6, pc}
 e00b9bc:	e5950000 	ldr	r0, [r5]
 e00b9c0:	e3041900 	movw	r1, #18688	; 0x4900
 e00b9c4:	e3401e01 	movt	r1, #3585	; 0xe01
 e00b9c8:	e30b32c4 	movw	r3, #45764	; 0xb2c4
 e00b9cc:	e3403e00 	movt	r3, #3584	; 0xe00
 e00b9d0:	e12fff33 	blx	r3
 e00b9d4:	e2504000 	subs	r4, r0, #0
 e00b9d8:	1afffff4 	bne	e00b9b0 <cmd_reboot+0x30>
 e00b9dc:	e1a01004 	mov	r1, r4
 e00b9e0:	e30f3460 	movw	r3, #62560	; 0xf460
 e00b9e4:	e3403e00 	movt	r3, #3584	; 0xe00
 e00b9e8:	e12fff33 	blx	r3
 e00b9ec:	e3a01c02 	mov	r1, #512	; 0x200
 e00b9f0:	e1a00004 	mov	r0, r4
 e00b9f4:	e30f3428 	movw	r3, #62504	; 0xf428
 e00b9f8:	e3403e00 	movt	r3, #3584	; 0xe00
 e00b9fc:	e12fff33 	blx	r3
 e00ba00:	eaffffea 	b	e00b9b0 <cmd_reboot+0x30>

0e00ba04 <CmdTickPS>:
 e00ba04:	e92d4030 	push	{r4, r5, lr}
 e00ba08:	e1a05001 	mov	r5, r1
 e00ba0c:	e24dd00c 	sub	sp, sp, #12
 e00ba10:	e304190c 	movw	r1, #18700	; 0x490c
 e00ba14:	e3401e01 	movt	r1, #3585	; 0xe01
 e00ba18:	e5950000 	ldr	r0, [r5]
 e00ba1c:	e30b42c4 	movw	r4, #45764	; 0xb2c4
 e00ba20:	e3404e00 	movt	r4, #3584	; 0xe00
 e00ba24:	e12fff34 	blx	r4
 e00ba28:	e3500000 	cmp	r0, #0
 e00ba2c:	0a000014 	beq	e00ba84 <CmdTickPS+0x80>
 e00ba30:	e5950000 	ldr	r0, [r5]
 e00ba34:	e3041910 	movw	r1, #18704	; 0x4910
 e00ba38:	e3401e01 	movt	r1, #3585	; 0xe01
 e00ba3c:	e12fff34 	blx	r4
 e00ba40:	e3500000 	cmp	r0, #0
 e00ba44:	0a000039 	beq	e00bb30 <CmdTickPS+0x12c>
 e00ba48:	e5950000 	ldr	r0, [r5]
 e00ba4c:	e3041914 	movw	r1, #18708	; 0x4914
 e00ba50:	e3401e01 	movt	r1, #3585	; 0xe01
 e00ba54:	e12fff34 	blx	r4
 e00ba58:	e3500000 	cmp	r0, #0
 e00ba5c:	0a000021 	beq	e00bae8 <CmdTickPS+0xe4>
 e00ba60:	e5950000 	ldr	r0, [r5]
 e00ba64:	e3041924 	movw	r1, #18724	; 0x4924
 e00ba68:	e3401e01 	movt	r1, #3585	; 0xe01
 e00ba6c:	e12fff34 	blx	r4
 e00ba70:	e3500000 	cmp	r0, #0
 e00ba74:	0a000004 	beq	e00ba8c <CmdTickPS+0x88>
 e00ba78:	e3a00001 	mov	r0, #1
 e00ba7c:	e28dd00c 	add	sp, sp, #12
 e00ba80:	e8bd8030 	pop	{r4, r5, pc}
 e00ba84:	ebfff6e8 	bl	e00962c <pmu_release_wakelock>
 e00ba88:	eaffffe8 	b	e00ba30 <CmdTickPS+0x2c>
 e00ba8c:	ebfff6f1 	bl	e009658 <pmu_get_wakelock_status>
 e00ba90:	e3a02041 	mov	r2, #65	; 0x41
 e00ba94:	e1a03000 	mov	r3, r0
 e00ba98:	e30418a4 	movw	r1, #18596	; 0x48a4
 e00ba9c:	e3401e01 	movt	r1, #3585	; 0xe01
 e00baa0:	e58d3000 	str	r3, [sp]
 e00baa4:	e3a00001 	mov	r0, #1
 e00baa8:	e3043928 	movw	r3, #18728	; 0x4928
 e00baac:	e3403e01 	movt	r3, #3585	; 0xe01
 e00bab0:	ebfffc5f 	bl	e00ac34 <rtk_log_write_nano>
 e00bab4:	ebfff6fc 	bl	e0096ac <pmu_get_deepwakelock_status>
 e00bab8:	e3a02041 	mov	r2, #65	; 0x41
 e00babc:	e1a0c000 	mov	ip, r0
 e00bac0:	e3043938 	movw	r3, #18744	; 0x4938
 e00bac4:	e3403e01 	movt	r3, #3585	; 0xe01
 e00bac8:	e3a00001 	mov	r0, #1
 e00bacc:	e58dc000 	str	ip, [sp]
 e00bad0:	e30418a4 	movw	r1, #18596	; 0x48a4
 e00bad4:	e3401e01 	movt	r1, #3585	; 0xe01
 e00bad8:	ebfffc55 	bl	e00ac34 <rtk_log_write_nano>
 e00badc:	e3a00001 	mov	r0, #1
 e00bae0:	e28dd00c 	add	sp, sp, #12
 e00bae4:	e8bd8030 	pop	{r4, r5, pc}
 e00bae8:	e5950004 	ldr	r0, [r5, #4]
 e00baec:	e304191c 	movw	r1, #18716	; 0x491c
 e00baf0:	e3401e01 	movt	r1, #3585	; 0xe01
 e00baf4:	e12fff34 	blx	r4
 e00baf8:	e3500000 	cmp	r0, #0
 e00bafc:	0a000008 	beq	e00bb24 <CmdTickPS+0x120>
 e00bb00:	e5950004 	ldr	r0, [r5, #4]
 e00bb04:	e3041920 	movw	r1, #18720	; 0x4920
 e00bb08:	e3401e01 	movt	r1, #3585	; 0xe01
 e00bb0c:	e12fff34 	blx	r4
 e00bb10:	e3500000 	cmp	r0, #0
 e00bb14:	1a000002 	bne	e00bb24 <CmdTickPS+0x120>
 e00bb18:	e3a00001 	mov	r0, #1
 e00bb1c:	ebfff6d1 	bl	e009668 <pmu_set_sleep_type>
 e00bb20:	eaffffce 	b	e00ba60 <CmdTickPS+0x5c>
 e00bb24:	e3a00000 	mov	r0, #0
 e00bb28:	ebfff6ce 	bl	e009668 <pmu_set_sleep_type>
 e00bb2c:	eaffffcb 	b	e00ba60 <CmdTickPS+0x5c>
 e00bb30:	ebfff6b2 	bl	e009600 <pmu_acquire_wakelock>
 e00bb34:	eaffffc3 	b	e00ba48 <CmdTickPS+0x44>

0e00bb38 <cmd_write_word>:
 e00bb38:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 e00bb3c:	e1a07001 	mov	r7, r1
 e00bb40:	e24dd00c 	sub	sp, sp, #12
 e00bb44:	e3a02010 	mov	r2, #16
 e00bb48:	e5970000 	ldr	r0, [r7]
 e00bb4c:	e3a01000 	mov	r1, #0
 e00bb50:	e30b64c8 	movw	r6, #46280	; 0xb4c8
 e00bb54:	e3406e00 	movt	r6, #3584	; 0xe00
 e00bb58:	e12fff36 	blx	r6
 e00bb5c:	e3c05003 	bic	r5, r0, #3
 e00bb60:	e1a04000 	mov	r4, r0
 e00bb64:	e3a02010 	mov	r2, #16
 e00bb68:	e5970004 	ldr	r0, [r7, #4]
 e00bb6c:	e3a01000 	mov	r1, #0
 e00bb70:	e12fff36 	blx	r6
 e00bb74:	e3a02041 	mov	r2, #65	; 0x41
 e00bb78:	e1a06000 	mov	r6, r0
 e00bb7c:	e58d0004 	str	r0, [sp, #4]
 e00bb80:	e58d5000 	str	r5, [sp]
 e00bb84:	e3a00001 	mov	r0, #1
 e00bb88:	e304394c 	movw	r3, #18764	; 0x494c
 e00bb8c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00bb90:	e3041084 	movw	r1, #16516	; 0x4084
 e00bb94:	e3401e01 	movt	r1, #3585	; 0xe01
 e00bb98:	ebfffc25 	bl	e00ac34 <rtk_log_write_nano>
 e00bb9c:	e5856000 	str	r6, [r5]
 e00bba0:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
 e00bba4:	e3130004 	tst	r3, #4
 e00bba8:	0a000009 	beq	e00bbd4 <cmd_write_word+0x9c>
 e00bbac:	e3c5303f 	bic	r3, r5, #63	; 0x3f
 e00bbb0:	e3c4003f 	bic	r0, r4, #63	; 0x3f
 e00bbb4:	e2833040 	add	r3, r3, #64	; 0x40
 e00bbb8:	e1500003 	cmp	r0, r3
 e00bbbc:	2a000003 	bcs	e00bbd0 <cmd_write_word+0x98>
 e00bbc0:	ee070f3a 	mcr	15, 0, r0, cr7, cr10, {1}
 e00bbc4:	e2800040 	add	r0, r0, #64	; 0x40
 e00bbc8:	e1530000 	cmp	r3, r0
 e00bbcc:	8afffffb 	bhi	e00bbc0 <cmd_write_word+0x88>
 e00bbd0:	f57ff05f 	dmb	sy
 e00bbd4:	e3a00000 	mov	r0, #0
 e00bbd8:	e28dd00c 	add	sp, sp, #12
 e00bbdc:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}

0e00bbe0 <cmd_dump_word>:
 e00bbe0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e00bbe4:	e30f3408 	movw	r3, #62472	; 0xf408
 e00bbe8:	e3403e00 	movt	r3, #3584	; 0xe00
 e00bbec:	e1a04000 	mov	r4, r0
 e00bbf0:	e1a05001 	mov	r5, r1
 e00bbf4:	e12fff33 	blx	r3
 e00bbf8:	e2443001 	sub	r3, r4, #1
 e00bbfc:	e3530002 	cmp	r3, #2
 e00bc00:	8a000057 	bhi	e00bd64 <cmd_dump_word+0x184>
 e00bc04:	e1a06000 	mov	r6, r0
 e00bc08:	e3540003 	cmp	r4, #3
 e00bc0c:	0a000023 	beq	e00bca0 <cmd_dump_word+0xc0>
 e00bc10:	e3540001 	cmp	r4, #1
 e00bc14:	1a00005b 	bne	e00bd88 <cmd_dump_word+0x1a8>
 e00bc18:	e3a02010 	mov	r2, #16
 e00bc1c:	e3a01000 	mov	r1, #0
 e00bc20:	e5950000 	ldr	r0, [r5]
 e00bc24:	e30b34c8 	movw	r3, #46280	; 0xb4c8
 e00bc28:	e3403e00 	movt	r3, #3584	; 0xe00
 e00bc2c:	e12fff33 	blx	r3
 e00bc30:	e1a03000 	mov	r3, r0
 e00bc34:	e3c00003 	bic	r0, r0, #3
 e00bc38:	e2562000 	subs	r2, r6, #0
 e00bc3c:	e280133e 	add	r1, r0, #-134217728	; 0xf8000000
 e00bc40:	13a02001 	movne	r2, #1
 e00bc44:	e371037e 	cmn	r1, #-134217727	; 0xf8000001
 e00bc48:	83a02000 	movhi	r2, #0
 e00bc4c:	e3520000 	cmp	r2, #0
 e00bc50:	1a00006d 	bne	e00be0c <cmd_dump_word+0x22c>
 e00bc54:	ee112f10 	mrc	15, 0, r2, cr1, cr0, {0}
 e00bc58:	e3120004 	tst	r2, #4
 e00bc5c:	0a00000b 	beq	e00bc90 <cmd_dump_word+0xb0>
 e00bc60:	e0802104 	add	r2, r0, r4, lsl #2
 e00bc64:	e2422001 	sub	r2, r2, #1
 e00bc68:	e3c2203f 	bic	r2, r2, #63	; 0x3f
 e00bc6c:	e3c3303f 	bic	r3, r3, #63	; 0x3f
 e00bc70:	e2822040 	add	r2, r2, #64	; 0x40
 e00bc74:	e1530002 	cmp	r3, r2
 e00bc78:	2a000003 	bcs	e00bc8c <cmd_dump_word+0xac>
 e00bc7c:	ee073f3e 	mcr	15, 0, r3, cr7, cr14, {1}
 e00bc80:	e2833040 	add	r3, r3, #64	; 0x40
 e00bc84:	e1520003 	cmp	r2, r3
 e00bc88:	8afffffb 	bhi	e00bc7c <cmd_dump_word+0x9c>
 e00bc8c:	f57ff05f 	dmb	sy
 e00bc90:	e1a01004 	mov	r1, r4
 e00bc94:	ebfffc94 	bl	e00aeec <rtk_log_memory_dump_word>
 e00bc98:	e3a00001 	mov	r0, #1
 e00bc9c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e00bca0:	e5953008 	ldr	r3, [r5, #8]
 e00bca4:	e3a0200a 	mov	r2, #10
 e00bca8:	e3a01000 	mov	r1, #0
 e00bcac:	e5d37000 	ldrb	r7, [r3]
 e00bcb0:	e5950004 	ldr	r0, [r5, #4]
 e00bcb4:	e30b84c8 	movw	r8, #46280	; 0xb4c8
 e00bcb8:	e3408e00 	movt	r8, #3584	; 0xe00
 e00bcbc:	e12fff38 	blx	r8
 e00bcc0:	e3a02010 	mov	r2, #16
 e00bcc4:	e3a01000 	mov	r1, #0
 e00bcc8:	e1a04000 	mov	r4, r0
 e00bccc:	e5950000 	ldr	r0, [r5]
 e00bcd0:	e12fff38 	blx	r8
 e00bcd4:	e20770df 	and	r7, r7, #223	; 0xdf
 e00bcd8:	e1a03000 	mov	r3, r0
 e00bcdc:	e3c00003 	bic	r0, r0, #3
 e00bce0:	e2562000 	subs	r2, r6, #0
 e00bce4:	e2477042 	sub	r7, r7, #66	; 0x42
 e00bce8:	e280133e 	add	r1, r0, #-134217728	; 0xf8000000
 e00bcec:	13a02001 	movne	r2, #1
 e00bcf0:	e16f7f17 	clz	r7, r7
 e00bcf4:	e371037e 	cmn	r1, #-134217727	; 0xf8000001
 e00bcf8:	83a02000 	movhi	r2, #0
 e00bcfc:	e1a072a7 	lsr	r7, r7, #5
 e00bd00:	e3520000 	cmp	r2, #0
 e00bd04:	1a000040 	bne	e00be0c <cmd_dump_word+0x22c>
 e00bd08:	e2545000 	subs	r5, r4, #0
 e00bd0c:	13a05001 	movne	r5, #1
 e00bd10:	e1150007 	tst	r5, r7
 e00bd14:	0a000031 	beq	e00bde0 <cmd_dump_word+0x200>
 e00bd18:	ee112f10 	mrc	15, 0, r2, cr1, cr0, {0}
 e00bd1c:	e3120004 	tst	r2, #4
 e00bd20:	0a00000b 	beq	e00bd54 <cmd_dump_word+0x174>
 e00bd24:	e2442001 	sub	r2, r4, #1
 e00bd28:	e0822000 	add	r2, r2, r0
 e00bd2c:	e3c2203f 	bic	r2, r2, #63	; 0x3f
 e00bd30:	e3c3303f 	bic	r3, r3, #63	; 0x3f
 e00bd34:	e2822040 	add	r2, r2, #64	; 0x40
 e00bd38:	e1530002 	cmp	r3, r2
 e00bd3c:	2a000003 	bcs	e00bd50 <cmd_dump_word+0x170>
 e00bd40:	ee073f3e 	mcr	15, 0, r3, cr7, cr14, {1}
 e00bd44:	e2833040 	add	r3, r3, #64	; 0x40
 e00bd48:	e1520003 	cmp	r2, r3
 e00bd4c:	8afffffb 	bhi	e00bd40 <cmd_dump_word+0x160>
 e00bd50:	f57ff05f 	dmb	sy
 e00bd54:	e1a01004 	mov	r1, r4
 e00bd58:	ebfffc96 	bl	e00afb8 <rtk_log_memory_dump_byte>
 e00bd5c:	e3a00001 	mov	r0, #1
 e00bd60:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e00bd64:	e3a02045 	mov	r2, #69	; 0x45
 e00bd68:	e3a00002 	mov	r0, #2
 e00bd6c:	e304395c 	movw	r3, #18780	; 0x495c
 e00bd70:	e3403e01 	movt	r3, #3585	; 0xe01
 e00bd74:	e30418a4 	movw	r1, #18596	; 0x48a4
 e00bd78:	e3401e01 	movt	r1, #3585	; 0xe01
 e00bd7c:	ebfffbac 	bl	e00ac34 <rtk_log_write_nano>
 e00bd80:	e3a00000 	mov	r0, #0
 e00bd84:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e00bd88:	e3a0200a 	mov	r2, #10
 e00bd8c:	e3a01000 	mov	r1, #0
 e00bd90:	e5950004 	ldr	r0, [r5, #4]
 e00bd94:	e30b74c8 	movw	r7, #46280	; 0xb4c8
 e00bd98:	e3407e00 	movt	r7, #3584	; 0xe00
 e00bd9c:	e12fff37 	blx	r7
 e00bda0:	e3a02010 	mov	r2, #16
 e00bda4:	e3a01000 	mov	r1, #0
 e00bda8:	e1a04000 	mov	r4, r0
 e00bdac:	e5950000 	ldr	r0, [r5]
 e00bdb0:	e12fff37 	blx	r7
 e00bdb4:	e1a03000 	mov	r3, r0
 e00bdb8:	e3c00003 	bic	r0, r0, #3
 e00bdbc:	e2562000 	subs	r2, r6, #0
 e00bdc0:	e280133e 	add	r1, r0, #-134217728	; 0xf8000000
 e00bdc4:	13a02001 	movne	r2, #1
 e00bdc8:	e371037e 	cmn	r1, #-134217727	; 0xf8000001
 e00bdcc:	83a02000 	movhi	r2, #0
 e00bdd0:	e3520000 	cmp	r2, #0
 e00bdd4:	1a00000c 	bne	e00be0c <cmd_dump_word+0x22c>
 e00bdd8:	e2545000 	subs	r5, r4, #0
 e00bddc:	13a05001 	movne	r5, #1
 e00bde0:	e3550000 	cmp	r5, #0
 e00bde4:	1affff9a 	bne	e00bc54 <cmd_dump_word+0x74>
 e00bde8:	e3a02045 	mov	r2, #69	; 0x45
 e00bdec:	e3a00002 	mov	r0, #2
 e00bdf0:	e304399c 	movw	r3, #18844	; 0x499c
 e00bdf4:	e3403e01 	movt	r3, #3585	; 0xe01
 e00bdf8:	e30418a4 	movw	r1, #18596	; 0x48a4
 e00bdfc:	e3401e01 	movt	r1, #3585	; 0xe01
 e00be00:	ebfffb8b 	bl	e00ac34 <rtk_log_write_nano>
 e00be04:	e1a00005 	mov	r0, r5
 e00be08:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e00be0c:	e3a02045 	mov	r2, #69	; 0x45
 e00be10:	e3a00002 	mov	r0, #2
 e00be14:	e3043978 	movw	r3, #18808	; 0x4978
 e00be18:	e3403e01 	movt	r3, #3585	; 0xe01
 e00be1c:	e30418a4 	movw	r1, #18596	; 0x48a4
 e00be20:	e3401e01 	movt	r1, #3585	; 0xe01
 e00be24:	ebfffb82 	bl	e00ac34 <rtk_log_write_nano>
 e00be28:	e3a00001 	mov	r0, #1
 e00be2c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0e00be30 <cmd_efuse_protect>:
 e00be30:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e00be34:	e1a03000 	mov	r3, r0
 e00be38:	e24dd024 	sub	sp, sp, #36	; 0x24
 e00be3c:	e3a00b02 	mov	r0, #2048	; 0x800
 e00be40:	e1a05001 	mov	r5, r1
 e00be44:	e58d3010 	str	r3, [sp, #16]
 e00be48:	ebfff066 	bl	e007fe8 <rtos_mem_zmalloc>
 e00be4c:	e2506000 	subs	r6, r0, #0
 e00be50:	0a00016e 	beq	e00c410 <cmd_efuse_protect+0x5e0>
 e00be54:	e5950000 	ldr	r0, [r5]
 e00be58:	e30419c4 	movw	r1, #18884	; 0x49c4
 e00be5c:	e3401e01 	movt	r1, #3585	; 0xe01
 e00be60:	e30b82c4 	movw	r8, #45764	; 0xb2c4
 e00be64:	e3408e00 	movt	r8, #3584	; 0xe00
 e00be68:	e12fff38 	blx	r8
 e00be6c:	e2509000 	subs	r9, r0, #0
 e00be70:	1a000039 	bne	e00bf5c <cmd_efuse_protect+0x12c>
 e00be74:	e3a02010 	mov	r2, #16
 e00be78:	e1a01009 	mov	r1, r9
 e00be7c:	e5950004 	ldr	r0, [r5, #4]
 e00be80:	e30b44c8 	movw	r4, #46280	; 0xb4c8
 e00be84:	e3404e00 	movt	r4, #3584	; 0xe00
 e00be88:	e12fff34 	blx	r4
 e00be8c:	e3a02010 	mov	r2, #16
 e00be90:	e1a01009 	mov	r1, r9
 e00be94:	e58d000c 	str	r0, [sp, #12]
 e00be98:	e5950008 	ldr	r0, [r5, #8]
 e00be9c:	e12fff34 	blx	r4
 e00bea0:	e595400c 	ldr	r4, [r5, #12]
 e00bea4:	e1a0b000 	mov	fp, r0
 e00bea8:	e30b33b8 	movw	r3, #46008	; 0xb3b8
 e00beac:	e3403e00 	movt	r3, #3584	; 0xe00
 e00beb0:	e1a00004 	mov	r0, r4
 e00beb4:	e12fff33 	blx	r3
 e00beb8:	e1a07000 	mov	r7, r0
 e00bebc:	e3100001 	tst	r0, #1
 e00bec0:	1a00011b 	bne	e00c334 <cmd_efuse_protect+0x504>
 e00bec4:	e1a090a0 	lsr	r9, r0, #1
 e00bec8:	e15b0009 	cmp	fp, r9
 e00becc:	0a000008 	beq	e00bef4 <cmd_efuse_protect+0xc4>
 e00bed0:	e3a02057 	mov	r2, #87	; 0x57
 e00bed4:	e3a00003 	mov	r0, #3
 e00bed8:	e30439f0 	movw	r3, #18928	; 0x49f0
 e00bedc:	e3403e01 	movt	r3, #3585	; 0xe01
 e00bee0:	e30418a4 	movw	r1, #18596	; 0x48a4
 e00bee4:	e3401e01 	movt	r1, #3585	; 0xe01
 e00bee8:	ebfffb1d 	bl	e00ab64 <rtk_log_write>
 e00beec:	e159000b 	cmp	r9, fp
 e00bef0:	21a0900b 	movcs	r9, fp
 e00bef4:	e3c77001 	bic	r7, r7, #1
 e00bef8:	e3a02049 	mov	r2, #73	; 0x49
 e00befc:	e3a00004 	mov	r0, #4
 e00bf00:	e58d7004 	str	r7, [sp, #4]
 e00bf04:	e58d9000 	str	r9, [sp]
 e00bf08:	e3043a34 	movw	r3, #18996	; 0x4a34
 e00bf0c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00bf10:	e30418a4 	movw	r1, #18596	; 0x48a4
 e00bf14:	e3401e01 	movt	r1, #3585	; 0xe01
 e00bf18:	ebfffb11 	bl	e00ab64 <rtk_log_write>
 e00bf1c:	e3590000 	cmp	r9, #0
 e00bf20:	0a000009 	beq	e00bf4c <cmd_efuse_protect+0x11c>
 e00bf24:	e30b7684 	movw	r7, #46724	; 0xb684
 e00bf28:	e3407e00 	movt	r7, #3584	; 0xe00
 e00bf2c:	e246a001 	sub	sl, r6, #1
 e00bf30:	e084b089 	add	fp, r4, r9, lsl #1
 e00bf34:	e5d41001 	ldrb	r1, [r4, #1]
 e00bf38:	e4d40002 	ldrb	r0, [r4], #2
 e00bf3c:	e12fff37 	blx	r7
 e00bf40:	e154000b 	cmp	r4, fp
 e00bf44:	e5ea0001 	strb	r0, [sl, #1]!
 e00bf48:	1afffff9 	bne	e00bf34 <cmd_efuse_protect+0x104>
 e00bf4c:	e59d000c 	ldr	r0, [sp, #12]
 e00bf50:	e1a01009 	mov	r1, r9
 e00bf54:	e1a02006 	mov	r2, r6
 e00bf58:	ebfff96b 	bl	e00a50c <OTP_LogicalMap_Write>
 e00bf5c:	e5950000 	ldr	r0, [r5]
 e00bf60:	e3041a60 	movw	r1, #19040	; 0x4a60
 e00bf64:	e3401e01 	movt	r1, #3585	; 0xe01
 e00bf68:	e12fff38 	blx	r8
 e00bf6c:	e2507000 	subs	r7, r0, #0
 e00bf70:	13a03000 	movne	r3, #0
 e00bf74:	158d300c 	strne	r3, [sp, #12]
 e00bf78:	0a00009c 	beq	e00c1f0 <cmd_efuse_protect+0x3c0>
 e00bf7c:	e5950000 	ldr	r0, [r5]
 e00bf80:	e3041ab4 	movw	r1, #19124	; 0x4ab4
 e00bf84:	e3401e01 	movt	r1, #3585	; 0xe01
 e00bf88:	e12fff38 	blx	r8
 e00bf8c:	e2504000 	subs	r4, r0, #0
 e00bf90:	0a000065 	beq	e00c12c <cmd_efuse_protect+0x2fc>
 e00bf94:	e5950000 	ldr	r0, [r5]
 e00bf98:	e3041adc 	movw	r1, #19164	; 0x4adc
 e00bf9c:	e3401e01 	movt	r1, #3585	; 0xe01
 e00bfa0:	e12fff38 	blx	r8
 e00bfa4:	e2509000 	subs	r9, r0, #0
 e00bfa8:	0a00000d 	beq	e00bfe4 <cmd_efuse_protect+0x1b4>
 e00bfac:	e5950000 	ldr	r0, [r5]
 e00bfb0:	e3041af4 	movw	r1, #19188	; 0x4af4
 e00bfb4:	e3401e01 	movt	r1, #3585	; 0xe01
 e00bfb8:	e12fff38 	blx	r8
 e00bfbc:	e59d900c 	ldr	r9, [sp, #12]
 e00bfc0:	e3500000 	cmp	r0, #0
 e00bfc4:	0a0000bb 	beq	e00c2b8 <cmd_efuse_protect+0x488>
 e00bfc8:	e3560000 	cmp	r6, #0
 e00bfcc:	0a000001 	beq	e00bfd8 <cmd_efuse_protect+0x1a8>
 e00bfd0:	e1a00006 	mov	r0, r6
 e00bfd4:	ebfff019 	bl	e008040 <rtos_mem_free>
 e00bfd8:	e1a00009 	mov	r0, r9
 e00bfdc:	e28dd024 	add	sp, sp, #36	; 0x24
 e00bfe0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00bfe4:	e3a02010 	mov	r2, #16
 e00bfe8:	e1a01009 	mov	r1, r9
 e00bfec:	e5950004 	ldr	r0, [r5, #4]
 e00bff0:	e30b44c8 	movw	r4, #46280	; 0xb4c8
 e00bff4:	e3404e00 	movt	r4, #3584	; 0xe00
 e00bff8:	e12fff34 	blx	r4
 e00bffc:	e3a02010 	mov	r2, #16
 e00c000:	e1a01009 	mov	r1, r9
 e00c004:	e58d0014 	str	r0, [sp, #20]
 e00c008:	e5950008 	ldr	r0, [r5, #8]
 e00c00c:	e12fff34 	blx	r4
 e00c010:	e595400c 	ldr	r4, [r5, #12]
 e00c014:	e1a0a000 	mov	sl, r0
 e00c018:	e30b33b8 	movw	r3, #46008	; 0xb3b8
 e00c01c:	e3403e00 	movt	r3, #3584	; 0xe00
 e00c020:	e1a00004 	mov	r0, r4
 e00c024:	e12fff33 	blx	r3
 e00c028:	e1a07000 	mov	r7, r0
 e00c02c:	e3100001 	tst	r0, #1
 e00c030:	1a0000bf 	bne	e00c334 <cmd_efuse_protect+0x504>
 e00c034:	e1a030a0 	lsr	r3, r0, #1
 e00c038:	e1a09003 	mov	r9, r3
 e00c03c:	e15a0003 	cmp	sl, r3
 e00c040:	e58d3010 	str	r3, [sp, #16]
 e00c044:	1a0000ae 	bne	e00c304 <cmd_efuse_protect+0x4d4>
 e00c048:	e3c73001 	bic	r3, r7, #1
 e00c04c:	e58d3018 	str	r3, [sp, #24]
 e00c050:	e59d3010 	ldr	r3, [sp, #16]
 e00c054:	e3530000 	cmp	r3, #0
 e00c058:	0a0000fe 	beq	e00c458 <cmd_efuse_protect+0x628>
 e00c05c:	e1a09004 	mov	r9, r4
 e00c060:	e246b001 	sub	fp, r6, #1
 e00c064:	e30b7684 	movw	r7, #46724	; 0xb684
 e00c068:	e3407e00 	movt	r7, #3584	; 0xe00
 e00c06c:	e1a0400b 	mov	r4, fp
 e00c070:	e089a083 	add	sl, r9, r3, lsl #1
 e00c074:	e58db01c 	str	fp, [sp, #28]
 e00c078:	e5d91001 	ldrb	r1, [r9, #1]
 e00c07c:	e4d90002 	ldrb	r0, [r9], #2
 e00c080:	e12fff37 	blx	r7
 e00c084:	e159000a 	cmp	r9, sl
 e00c088:	e5eb0001 	strb	r0, [fp, #1]!
 e00c08c:	1afffff9 	bne	e00c078 <cmd_efuse_protect+0x248>
 e00c090:	e59d3018 	ldr	r3, [sp, #24]
 e00c094:	e59d201c 	ldr	r2, [sp, #28]
 e00c098:	e58d3004 	str	r3, [sp, #4]
 e00c09c:	e59d3010 	ldr	r3, [sp, #16]
 e00c0a0:	e58d3000 	str	r3, [sp]
 e00c0a4:	e0827003 	add	r7, r2, r3
 e00c0a8:	e3a00004 	mov	r0, #4
 e00c0ac:	e3a02049 	mov	r2, #73	; 0x49
 e00c0b0:	e3043b14 	movw	r3, #19220	; 0x4b14
 e00c0b4:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c0b8:	e30418a4 	movw	r1, #18596	; 0x48a4
 e00c0bc:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c0c0:	ebfffaa7 	bl	e00ab64 <rtk_log_write>
 e00c0c4:	e59d3014 	ldr	r3, [sp, #20]
 e00c0c8:	e266b001 	rsb	fp, r6, #1
 e00c0cc:	e3049ae4 	movw	r9, #19172	; 0x4ae4
 e00c0d0:	e3409e01 	movt	r9, #3585	; 0xe01
 e00c0d4:	e304a084 	movw	sl, #16516	; 0x4084
 e00c0d8:	e340ae01 	movt	sl, #3585	; 0xe01
 e00c0dc:	e58d5010 	str	r5, [sp, #16]
 e00c0e0:	e08bb003 	add	fp, fp, r3
 e00c0e4:	e1a05009 	mov	r5, r9
 e00c0e8:	e1a09007 	mov	r9, r7
 e00c0ec:	e08b7004 	add	r7, fp, r4
 e00c0f0:	e5f42001 	ldrb	r2, [r4, #1]!
 e00c0f4:	e1a03005 	mov	r3, r5
 e00c0f8:	e1a0100a 	mov	r1, sl
 e00c0fc:	e3a00001 	mov	r0, #1
 e00c100:	e58d2004 	str	r2, [sp, #4]
 e00c104:	e58d7000 	str	r7, [sp]
 e00c108:	e3a02041 	mov	r2, #65	; 0x41
 e00c10c:	ebfffa94 	bl	e00ab64 <rtk_log_write>
 e00c110:	e5d41000 	ldrb	r1, [r4]
 e00c114:	e1a00007 	mov	r0, r7
 e00c118:	ebfff7fe 	bl	e00a118 <OTP_Write8>
 e00c11c:	e1590004 	cmp	r9, r4
 e00c120:	1afffff1 	bne	e00c0ec <cmd_efuse_protect+0x2bc>
 e00c124:	e59d5010 	ldr	r5, [sp, #16]
 e00c128:	eaffff9f 	b	e00bfac <cmd_efuse_protect+0x17c>
 e00c12c:	e3a02049 	mov	r2, #73	; 0x49
 e00c130:	e3a00004 	mov	r0, #4
 e00c134:	e3043abc 	movw	r3, #19132	; 0x4abc
 e00c138:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c13c:	e30418a4 	movw	r1, #18596	; 0x48a4
 e00c140:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c144:	ebfffa86 	bl	e00ab64 <rtk_log_write>
 e00c148:	e59d3010 	ldr	r3, [sp, #16]
 e00c14c:	e3530002 	cmp	r3, #2
 e00c150:	93a09c05 	movls	r9, #1280	; 0x500
 e00c154:	8a00009c 	bhi	e00c3cc <cmd_efuse_protect+0x59c>
 e00c158:	e1a07004 	mov	r7, r4
 e00c15c:	e0861007 	add	r1, r6, r7
 e00c160:	e1a00007 	mov	r0, r7
 e00c164:	e2877001 	add	r7, r7, #1
 e00c168:	ebfff7e4 	bl	e00a100 <OTP_Read8>
 e00c16c:	e1590007 	cmp	r9, r7
 e00c170:	8afffff9 	bhi	e00c15c <cmd_efuse_protect+0x32c>
 e00c174:	e086a004 	add	sl, r6, r4
 e00c178:	e3043ac8 	movw	r3, #19144	; 0x4ac8
 e00c17c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c180:	e304b084 	movw	fp, #16516	; 0x4084
 e00c184:	e340be01 	movt	fp, #3585	; 0xe01
 e00c188:	e58d5010 	str	r5, [sp, #16]
 e00c18c:	e1a0700a 	mov	r7, sl
 e00c190:	e1a0500b 	mov	r5, fp
 e00c194:	e1a0b003 	mov	fp, r3
 e00c198:	ea00000a 	b	e00c1c8 <cmd_efuse_protect+0x398>
 e00c19c:	e4d73001 	ldrb	r3, [r7], #1
 e00c1a0:	e3a00001 	mov	r0, #1
 e00c1a4:	e0844000 	add	r4, r4, r0
 e00c1a8:	e58d3000 	str	r3, [sp]
 e00c1ac:	e3a02041 	mov	r2, #65	; 0x41
 e00c1b0:	e1a01005 	mov	r1, r5
 e00c1b4:	e3043aac 	movw	r3, #19116	; 0x4aac
 e00c1b8:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c1bc:	ebfffa68 	bl	e00ab64 <rtk_log_write>
 e00c1c0:	e1590004 	cmp	r9, r4
 e00c1c4:	9a000045 	bls	e00c2e0 <cmd_efuse_protect+0x4b0>
 e00c1c8:	e047300a 	sub	r3, r7, sl
 e00c1cc:	e313000f 	tst	r3, #15
 e00c1d0:	1afffff1 	bne	e00c19c <cmd_efuse_protect+0x36c>
 e00c1d4:	e1a0300b 	mov	r3, fp
 e00c1d8:	e3a02041 	mov	r2, #65	; 0x41
 e00c1dc:	e1a01005 	mov	r1, r5
 e00c1e0:	e3a00001 	mov	r0, #1
 e00c1e4:	e58d4000 	str	r4, [sp]
 e00c1e8:	ebfffa5d 	bl	e00ab64 <rtk_log_write>
 e00c1ec:	eaffffea 	b	e00c19c <cmd_efuse_protect+0x36c>
 e00c1f0:	e3a02049 	mov	r2, #73	; 0x49
 e00c1f4:	e3a00004 	mov	r0, #4
 e00c1f8:	e3043a68 	movw	r3, #19048	; 0x4a68
 e00c1fc:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c200:	e30418a4 	movw	r1, #18596	; 0x48a4
 e00c204:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c208:	ebfffa55 	bl	e00ab64 <rtk_log_write>
 e00c20c:	e59d3010 	ldr	r3, [sp, #16]
 e00c210:	e3530002 	cmp	r3, #2
 e00c214:	8a00004f 	bhi	e00c358 <cmd_efuse_protect+0x528>
 e00c218:	e3a02b01 	mov	r2, #1024	; 0x400
 e00c21c:	e1a01007 	mov	r1, r7
 e00c220:	e1a00006 	mov	r0, r6
 e00c224:	ebfff84b 	bl	e00a358 <OTP_LogicalMap_Read>
 e00c228:	e3a0ab01 	mov	sl, #1024	; 0x400
 e00c22c:	e3700001 	cmn	r0, #1
 e00c230:	e58d000c 	str	r0, [sp, #12]
 e00c234:	0a00007d 	beq	e00c430 <cmd_efuse_protect+0x600>
 e00c238:	e3043a9c 	movw	r3, #19100	; 0x4a9c
 e00c23c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c240:	e304b084 	movw	fp, #16516	; 0x4084
 e00c244:	e340be01 	movt	fp, #3585	; 0xe01
 e00c248:	e58d5014 	str	r5, [sp, #20]
 e00c24c:	e04aa007 	sub	sl, sl, r7
 e00c250:	e1a0500b 	mov	r5, fp
 e00c254:	e2469001 	sub	r9, r6, #1
 e00c258:	e3a04000 	mov	r4, #0
 e00c25c:	e1a0b003 	mov	fp, r3
 e00c260:	ea000009 	b	e00c28c <cmd_efuse_protect+0x45c>
 e00c264:	e5f93001 	ldrb	r3, [r9, #1]!
 e00c268:	e58d3000 	str	r3, [sp]
 e00c26c:	e3a02041 	mov	r2, #65	; 0x41
 e00c270:	e1a01005 	mov	r1, r5
 e00c274:	e3a00001 	mov	r0, #1
 e00c278:	e3043aac 	movw	r3, #19116	; 0x4aac
 e00c27c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c280:	ebfffa37 	bl	e00ab64 <rtk_log_write>
 e00c284:	e15a0004 	cmp	sl, r4
 e00c288:	0a00005e 	beq	e00c408 <cmd_efuse_protect+0x5d8>
 e00c28c:	e314000f 	tst	r4, #15
 e00c290:	e0872004 	add	r2, r7, r4
 e00c294:	e2844001 	add	r4, r4, #1
 e00c298:	1afffff1 	bne	e00c264 <cmd_efuse_protect+0x434>
 e00c29c:	e58d2000 	str	r2, [sp]
 e00c2a0:	e1a0300b 	mov	r3, fp
 e00c2a4:	e3a02041 	mov	r2, #65	; 0x41
 e00c2a8:	e1a01005 	mov	r1, r5
 e00c2ac:	e3a00001 	mov	r0, #1
 e00c2b0:	ebfffa2b 	bl	e00ab64 <rtk_log_write>
 e00c2b4:	eaffffea 	b	e00c264 <cmd_efuse_protect+0x434>
 e00c2b8:	ebfff777 	bl	e00a09c <OTPGetCRC>
 e00c2bc:	e3a02049 	mov	r2, #73	; 0x49
 e00c2c0:	e58d0000 	str	r0, [sp]
 e00c2c4:	e3043afc 	movw	r3, #19196	; 0x4afc
 e00c2c8:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c2cc:	e3a00004 	mov	r0, #4
 e00c2d0:	e30418a4 	movw	r1, #18596	; 0x48a4
 e00c2d4:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c2d8:	ebfffa21 	bl	e00ab64 <rtk_log_write>
 e00c2dc:	eaffff39 	b	e00bfc8 <cmd_efuse_protect+0x198>
 e00c2e0:	e59d5010 	ldr	r5, [sp, #16]
 e00c2e4:	e3a02041 	mov	r2, #65	; 0x41
 e00c2e8:	e3a00001 	mov	r0, #1
 e00c2ec:	e3043a98 	movw	r3, #19096	; 0x4a98
 e00c2f0:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c2f4:	e3041084 	movw	r1, #16516	; 0x4084
 e00c2f8:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c2fc:	ebfffa18 	bl	e00ab64 <rtk_log_write>
 e00c300:	eaffff23 	b	e00bf94 <cmd_efuse_protect+0x164>
 e00c304:	e3a02057 	mov	r2, #87	; 0x57
 e00c308:	e3a00003 	mov	r0, #3
 e00c30c:	e30439f0 	movw	r3, #18928	; 0x49f0
 e00c310:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c314:	e30418a4 	movw	r1, #18596	; 0x48a4
 e00c318:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c31c:	ebfffa10 	bl	e00ab64 <rtk_log_write>
 e00c320:	e159000a 	cmp	r9, sl
 e00c324:	e1a03009 	mov	r3, r9
 e00c328:	21a0300a 	movcs	r3, sl
 e00c32c:	e58d3010 	str	r3, [sp, #16]
 e00c330:	eaffff44 	b	e00c048 <cmd_efuse_protect+0x218>
 e00c334:	e3a02057 	mov	r2, #87	; 0x57
 e00c338:	e3a00003 	mov	r0, #3
 e00c33c:	e58d7000 	str	r7, [sp]
 e00c340:	e30439cc 	movw	r3, #18892	; 0x49cc
 e00c344:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c348:	e30418a4 	movw	r1, #18596	; 0x48a4
 e00c34c:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c350:	ebfffa03 	bl	e00ab64 <rtk_log_write>
 e00c354:	eaffff1b 	b	e00bfc8 <cmd_efuse_protect+0x198>
 e00c358:	e1a01007 	mov	r1, r7
 e00c35c:	e3a02010 	mov	r2, #16
 e00c360:	e5950004 	ldr	r0, [r5, #4]
 e00c364:	e30b44c8 	movw	r4, #46280	; 0xb4c8
 e00c368:	e3404e00 	movt	r4, #3584	; 0xe00
 e00c36c:	e12fff34 	blx	r4
 e00c370:	e1a01007 	mov	r1, r7
 e00c374:	e3a0200a 	mov	r2, #10
 e00c378:	e1a07000 	mov	r7, r0
 e00c37c:	e5950008 	ldr	r0, [r5, #8]
 e00c380:	e12fff34 	blx	r4
 e00c384:	e1a01007 	mov	r1, r7
 e00c388:	e1a02000 	mov	r2, r0
 e00c38c:	e087a000 	add	sl, r7, r0
 e00c390:	e1a00006 	mov	r0, r6
 e00c394:	ebfff7ef 	bl	e00a358 <OTP_LogicalMap_Read>
 e00c398:	e3700001 	cmn	r0, #1
 e00c39c:	e58d000c 	str	r0, [sp, #12]
 e00c3a0:	0a000022 	beq	e00c430 <cmd_efuse_protect+0x600>
 e00c3a4:	e15a0007 	cmp	sl, r7
 e00c3a8:	8affffa2 	bhi	e00c238 <cmd_efuse_protect+0x408>
 e00c3ac:	e3a02041 	mov	r2, #65	; 0x41
 e00c3b0:	e3a00001 	mov	r0, #1
 e00c3b4:	e3043a98 	movw	r3, #19096	; 0x4a98
 e00c3b8:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c3bc:	e3041084 	movw	r1, #16516	; 0x4084
 e00c3c0:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c3c4:	ebfff9e6 	bl	e00ab64 <rtk_log_write>
 e00c3c8:	eafffeeb 	b	e00bf7c <cmd_efuse_protect+0x14c>
 e00c3cc:	e1a01004 	mov	r1, r4
 e00c3d0:	e3a02010 	mov	r2, #16
 e00c3d4:	e5950004 	ldr	r0, [r5, #4]
 e00c3d8:	e30b74c8 	movw	r7, #46280	; 0xb4c8
 e00c3dc:	e3407e00 	movt	r7, #3584	; 0xe00
 e00c3e0:	e12fff37 	blx	r7
 e00c3e4:	e1a01004 	mov	r1, r4
 e00c3e8:	e3a0200a 	mov	r2, #10
 e00c3ec:	e1a04000 	mov	r4, r0
 e00c3f0:	e5950008 	ldr	r0, [r5, #8]
 e00c3f4:	e12fff37 	blx	r7
 e00c3f8:	e0849000 	add	r9, r4, r0
 e00c3fc:	e1540009 	cmp	r4, r9
 e00c400:	3affff54 	bcc	e00c158 <cmd_efuse_protect+0x328>
 e00c404:	eaffffb6 	b	e00c2e4 <cmd_efuse_protect+0x4b4>
 e00c408:	e59d5014 	ldr	r5, [sp, #20]
 e00c40c:	eaffffe6 	b	e00c3ac <cmd_efuse_protect+0x57c>
 e00c410:	e3a02045 	mov	r2, #69	; 0x45
 e00c414:	e3a00002 	mov	r0, #2
 e00c418:	e30439ac 	movw	r3, #18860	; 0x49ac
 e00c41c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c420:	e30418a4 	movw	r1, #18596	; 0x48a4
 e00c424:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c428:	ebfffa01 	bl	e00ac34 <rtk_log_write_nano>
 e00c42c:	eafffe88 	b	e00be54 <cmd_efuse_protect+0x24>
 e00c430:	e3e03000 	mvn	r3, #0
 e00c434:	e3a02045 	mov	r2, #69	; 0x45
 e00c438:	e58d300c 	str	r3, [sp, #12]
 e00c43c:	e3a00002 	mov	r0, #2
 e00c440:	e3043a78 	movw	r3, #19064	; 0x4a78
 e00c444:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c448:	e30418a4 	movw	r1, #18596	; 0x48a4
 e00c44c:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c450:	ebfff9c3 	bl	e00ab64 <rtk_log_write>
 e00c454:	eaffffd2 	b	e00c3a4 <cmd_efuse_protect+0x574>
 e00c458:	e59d3018 	ldr	r3, [sp, #24]
 e00c45c:	e58d3004 	str	r3, [sp, #4]
 e00c460:	e59d3010 	ldr	r3, [sp, #16]
 e00c464:	e58d3000 	str	r3, [sp]
 e00c468:	e3a02049 	mov	r2, #73	; 0x49
 e00c46c:	e3a00004 	mov	r0, #4
 e00c470:	e3043b14 	movw	r3, #19220	; 0x4b14
 e00c474:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c478:	e30418a4 	movw	r1, #18596	; 0x48a4
 e00c47c:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c480:	ebfff9b7 	bl	e00ab64 <rtk_log_write>
 e00c484:	eafffec8 	b	e00bfac <cmd_efuse_protect+0x17c>

0e00c488 <cmd_log_set>:
 e00c488:	e3500002 	cmp	r0, #2
 e00c48c:	e92d4010 	push	{r4, lr}
 e00c490:	0a000008 	beq	e00c4b8 <cmd_log_set+0x30>
 e00c494:	e3a02045 	mov	r2, #69	; 0x45
 e00c498:	e3a00002 	mov	r0, #2
 e00c49c:	e304395c 	movw	r3, #18780	; 0x495c
 e00c4a0:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c4a4:	e30418a4 	movw	r1, #18596	; 0x48a4
 e00c4a8:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c4ac:	ebfff9e0 	bl	e00ac34 <rtk_log_write_nano>
 e00c4b0:	e3a00000 	mov	r0, #0
 e00c4b4:	e8bd8010 	pop	{r4, pc}
 e00c4b8:	e1a04001 	mov	r4, r1
 e00c4bc:	e3a0200a 	mov	r2, #10
 e00c4c0:	e3a01000 	mov	r1, #0
 e00c4c4:	e5940004 	ldr	r0, [r4, #4]
 e00c4c8:	e30b34c8 	movw	r3, #46280	; 0xb4c8
 e00c4cc:	e3403e00 	movt	r3, #3584	; 0xe00
 e00c4d0:	e12fff33 	blx	r3
 e00c4d4:	e1a01000 	mov	r1, r0
 e00c4d8:	e5940000 	ldr	r0, [r4]
 e00c4dc:	e6ef1071 	uxtb	r1, r1
 e00c4e0:	ebfffa2e 	bl	e00ada0 <rtk_log_level_set>
 e00c4e4:	e3030884 	movw	r0, #14468	; 0x3884
 e00c4e8:	e346000a 	movt	r0, #24586	; 0x600a
 e00c4ec:	ebfffa04 	bl	e00ad04 <rtk_log_array_print>
 e00c4f0:	e3a00001 	mov	r0, #1
 e00c4f4:	e8bd8010 	pop	{r4, pc}

0e00c4f8 <cmd_rom_table>:
 e00c4f8:	e1a02000 	mov	r2, r0
 e00c4fc:	e3053598 	movw	r3, #21912	; 0x5598
 e00c500:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c504:	e3a00007 	mov	r0, #7
 e00c508:	e5823000 	str	r3, [r2]
 e00c50c:	e12fff1e 	bx	lr

0e00c510 <shell_loguratRx_ipc_int>:
 e00c510:	e92d4010 	push	{r4, lr}
 e00c514:	e3034984 	movw	r4, #14724	; 0x3984
 e00c518:	e346400a 	movt	r4, #24586	; 0x600a
 e00c51c:	e3a01000 	mov	r1, #0
 e00c520:	e3a00001 	mov	r0, #1
 e00c524:	ebfff56b 	bl	e009ad8 <ipc_get_message>
 e00c528:	e5901004 	ldr	r1, [r0, #4]
 e00c52c:	e5940008 	ldr	r0, [r4, #8]
 e00c530:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
 e00c534:	e3130004 	tst	r3, #4
 e00c538:	0a00000a 	beq	e00c568 <shell_loguratRx_ipc_int+0x58>
 e00c53c:	e281207f 	add	r2, r1, #127	; 0x7f
 e00c540:	e3c2203f 	bic	r2, r2, #63	; 0x3f
 e00c544:	e3c1303f 	bic	r3, r1, #63	; 0x3f
 e00c548:	e2822040 	add	r2, r2, #64	; 0x40
 e00c54c:	e1530002 	cmp	r3, r2
 e00c550:	2a000003 	bcs	e00c564 <shell_loguratRx_ipc_int+0x54>
 e00c554:	ee073f36 	mcr	15, 0, r3, cr7, cr6, {1}
 e00c558:	e2833040 	add	r3, r3, #64	; 0x40
 e00c55c:	e1520003 	cmp	r2, r3
 e00c560:	8afffffb 	bhi	e00c554 <shell_loguratRx_ipc_int+0x44>
 e00c564:	f57ff05f 	dmb	sy
 e00c568:	e3a02080 	mov	r2, #128	; 0x80
 e00c56c:	e30b31a0 	movw	r3, #45472	; 0xb1a0
 e00c570:	e3403e00 	movt	r3, #3584	; 0xe00
 e00c574:	e12fff33 	blx	r3
 e00c578:	e3a03001 	mov	r3, #1
 e00c57c:	e5c43004 	strb	r3, [r4, #4]
 e00c580:	e5943020 	ldr	r3, [r4, #32]
 e00c584:	e3530000 	cmp	r3, #0
 e00c588:	08bd8010 	popeq	{r4, pc}
 e00c58c:	e594301c 	ldr	r3, [r4, #28]
 e00c590:	e8bd4010 	pop	{r4, lr}
 e00c594:	e12fff13 	bx	r3

0e00c598 <shell_give_sema>:
 e00c598:	e3033984 	movw	r3, #14724	; 0x3984
 e00c59c:	e346300a 	movt	r3, #24586	; 0x600a
 e00c5a0:	e5933020 	ldr	r3, [r3, #32]
 e00c5a4:	e3530000 	cmp	r3, #0
 e00c5a8:	012fff1e 	bxeq	lr
 e00c5ac:	e30338c0 	movw	r3, #14528	; 0x38c0
 e00c5b0:	e346300a 	movt	r3, #24586	; 0x600a
 e00c5b4:	e5930000 	ldr	r0, [r3]
 e00c5b8:	eaffeed7 	b	e00811c <rtos_sema_give>

0e00c5bc <shell_loguartRx_dispatch>:
 e00c5bc:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 e00c5c0:	e3035984 	movw	r5, #14724	; 0x3984
 e00c5c4:	e346500a 	movt	r5, #24586	; 0x600a
 e00c5c8:	e24dd00c 	sub	sp, sp, #12
 e00c5cc:	e3041f9c 	movw	r1, #20380	; 0x4f9c
 e00c5d0:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c5d4:	e5956008 	ldr	r6, [r5, #8]
 e00c5d8:	e30b3450 	movw	r3, #46160	; 0xb450
 e00c5dc:	e3403e00 	movt	r3, #3584	; 0xe00
 e00c5e0:	e2860001 	add	r0, r6, #1
 e00c5e4:	e12fff33 	blx	r3
 e00c5e8:	e2504000 	subs	r4, r0, #0
 e00c5ec:	0a000001 	beq	e00c5f8 <shell_loguartRx_dispatch+0x3c>
 e00c5f0:	e28dd00c 	add	sp, sp, #12
 e00c5f4:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
 e00c5f8:	e3a00b01 	mov	r0, #1024	; 0x400
 e00c5fc:	ebffee78 	bl	e007fe4 <rtos_mem_malloc>
 e00c600:	e30013ff 	movw	r1, #1023	; 0x3ff
 e00c604:	e30d3fb0 	movw	r3, #57264	; 0xdfb0
 e00c608:	e3403e00 	movt	r3, #3584	; 0xe00
 e00c60c:	e1a07000 	mov	r7, r0
 e00c610:	e12fff33 	blx	r3
 e00c614:	e3a02049 	mov	r2, #73	; 0x49
 e00c618:	e3a00004 	mov	r0, #4
 e00c61c:	e58d7000 	str	r7, [sp]
 e00c620:	e3043fa4 	movw	r3, #20388	; 0x4fa4
 e00c624:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c628:	e3041084 	movw	r1, #16516	; 0x4084
 e00c62c:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c630:	ebfff97f 	bl	e00ac34 <rtk_log_write_nano>
 e00c634:	e1a00007 	mov	r0, r7
 e00c638:	ebffee80 	bl	e008040 <rtos_mem_free>
 e00c63c:	e1a02004 	mov	r2, r4
 e00c640:	e3a01080 	mov	r1, #128	; 0x80
 e00c644:	e1a00006 	mov	r0, r6
 e00c648:	e30c3868 	movw	r3, #51304	; 0xc868
 e00c64c:	e3403e00 	movt	r3, #3584	; 0xe00
 e00c650:	e12fff33 	blx	r3
 e00c654:	e5c54004 	strb	r4, [r5, #4]
 e00c658:	e28dd00c 	add	sp, sp, #12
 e00c65c:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}

0e00c660 <shell_task_ram>:
 e00c660:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e00c664:	e3034984 	movw	r4, #14724	; 0x3984
 e00c668:	e346400a 	movt	r4, #24586	; 0x600a
 e00c66c:	e24dd02c 	sub	sp, sp, #44	; 0x2c
 e00c670:	e3a00b01 	mov	r0, #1024	; 0x400
 e00c674:	e5943008 	ldr	r3, [r4, #8]
 e00c678:	e30378c0 	movw	r7, #14528	; 0x38c0
 e00c67c:	e346700a 	movt	r7, #24586	; 0x600a
 e00c680:	e30b8450 	movw	r8, #46160	; 0xb450
 e00c684:	e3408e00 	movt	r8, #3584	; 0xe00
 e00c688:	e58d3014 	str	r3, [sp, #20]
 e00c68c:	e283b001 	add	fp, r3, #1
 e00c690:	e3a03001 	mov	r3, #1
 e00c694:	e5843020 	str	r3, [r4, #32]
 e00c698:	e5c43006 	strb	r3, [r4, #6]
 e00c69c:	ebffeee0 	bl	e008224 <rtos_create_secure_context>
 e00c6a0:	e30c3868 	movw	r3, #51304	; 0xc868
 e00c6a4:	e3403e00 	movt	r3, #3584	; 0xe00
 e00c6a8:	e58d3018 	str	r3, [sp, #24]
 e00c6ac:	e3043fa8 	movw	r3, #20392	; 0x4fa8
 e00c6b0:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c6b4:	e58d301c 	str	r3, [sp, #28]
 e00c6b8:	e3043084 	movw	r3, #16516	; 0x4084
 e00c6bc:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c6c0:	e58d3020 	str	r3, [sp, #32]
 e00c6c4:	e3043fc0 	movw	r3, #20416	; 0x4fc0
 e00c6c8:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c6cc:	e58d3024 	str	r3, [sp, #36]	; 0x24
 e00c6d0:	e3e01000 	mvn	r1, #0
 e00c6d4:	e5970000 	ldr	r0, [r7]
 e00c6d8:	ebffee69 	bl	e008084 <rtos_sema_take>
 e00c6dc:	ebffffb6 	bl	e00c5bc <shell_loguartRx_dispatch>
 e00c6e0:	e5d43004 	ldrb	r3, [r4, #4]
 e00c6e4:	e3530000 	cmp	r3, #0
 e00c6e8:	0afffff8 	beq	e00c6d0 <shell_task_ram+0x70>
 e00c6ec:	e1a0000b 	mov	r0, fp
 e00c6f0:	eb000065 	bl	e00c88c <shell_get_argc>
 e00c6f4:	e1a09000 	mov	r9, r0
 e00c6f8:	e1a0000b 	mov	r0, fp
 e00c6fc:	e58d900c 	str	r9, [sp, #12]
 e00c700:	eb00007c 	bl	e00c8f8 <shell_get_argv>
 e00c704:	e594a010 	ldr	sl, [r4, #16]
 e00c708:	e5945014 	ldr	r5, [r4, #20]
 e00c70c:	e5906000 	ldr	r6, [r0]
 e00c710:	e3550000 	cmp	r5, #0
 e00c714:	13a09000 	movne	r9, #0
 e00c718:	e58d0010 	str	r0, [sp, #16]
 e00c71c:	1a000002 	bne	e00c72c <shell_task_ram+0xcc>
 e00c720:	ea000019 	b	e00c78c <shell_task_ram+0x12c>
 e00c724:	e1550009 	cmp	r5, r9
 e00c728:	0a000017 	beq	e00c78c <shell_task_ram+0x12c>
 e00c72c:	e79a1209 	ldr	r1, [sl, r9, lsl #4]
 e00c730:	e1a00006 	mov	r0, r6
 e00c734:	e12fff38 	blx	r8
 e00c738:	e08a1209 	add	r1, sl, r9, lsl #4
 e00c73c:	e3500000 	cmp	r0, #0
 e00c740:	e2899001 	add	r9, r9, #1
 e00c744:	1afffff6 	bne	e00c724 <shell_task_ram+0xc4>
 e00c748:	e5913008 	ldr	r3, [r1, #8]
 e00c74c:	e3530000 	cmp	r3, #0
 e00c750:	0a00000d 	beq	e00c78c <shell_task_ram+0x12c>
 e00c754:	e59d200c 	ldr	r2, [sp, #12]
 e00c758:	e2420001 	sub	r0, r2, #1
 e00c75c:	e59d2010 	ldr	r2, [sp, #16]
 e00c760:	e6ff0070 	uxth	r0, r0
 e00c764:	e2821004 	add	r1, r2, #4
 e00c768:	e12fff33 	blx	r3
 e00c76c:	e59d3018 	ldr	r3, [sp, #24]
 e00c770:	e59d0014 	ldr	r0, [sp, #20]
 e00c774:	e3a02000 	mov	r2, #0
 e00c778:	e3a01080 	mov	r1, #128	; 0x80
 e00c77c:	e12fff33 	blx	r3
 e00c780:	e3a03000 	mov	r3, #0
 e00c784:	e5c43004 	strb	r3, [r4, #4]
 e00c788:	eaffffd0 	b	e00c6d0 <shell_task_ram+0x70>
 e00c78c:	e59d5020 	ldr	r5, [sp, #32]
 e00c790:	e59d301c 	ldr	r3, [sp, #28]
 e00c794:	e1a01005 	mov	r1, r5
 e00c798:	e3a02045 	mov	r2, #69	; 0x45
 e00c79c:	e3a00002 	mov	r0, #2
 e00c7a0:	e58db000 	str	fp, [sp]
 e00c7a4:	ebfff922 	bl	e00ac34 <rtk_log_write_nano>
 e00c7a8:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e00c7ac:	e3a02045 	mov	r2, #69	; 0x45
 e00c7b0:	e1a01005 	mov	r1, r5
 e00c7b4:	e3a00002 	mov	r0, #2
 e00c7b8:	ebfff91d 	bl	e00ac34 <rtk_log_write_nano>
 e00c7bc:	eaffffea 	b	e00c76c <shell_task_ram+0x10c>

0e00c7c0 <shell_init_ram>:
 e00c7c0:	e92d4010 	push	{r4, lr}
 e00c7c4:	e3032984 	movw	r2, #14724	; 0x3984
 e00c7c8:	e346200a 	movt	r2, #24586	; 0x600a
 e00c7cc:	e24dd008 	sub	sp, sp, #8
 e00c7d0:	e3050598 	movw	r0, #21912	; 0x5598
 e00c7d4:	e3400e01 	movt	r0, #3585	; 0xe01
 e00c7d8:	e3053608 	movw	r3, #22024	; 0x5608
 e00c7dc:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c7e0:	e0431000 	sub	r1, r3, r0
 e00c7e4:	e5820010 	str	r0, [r2, #16]
 e00c7e8:	e3a04000 	mov	r4, #0
 e00c7ec:	e30308c0 	movw	r0, #14528	; 0x38c0
 e00c7f0:	e346000a 	movt	r0, #24586	; 0x600a
 e00c7f4:	e3a03001 	mov	r3, #1
 e00c7f8:	e1a01221 	lsr	r1, r1, #4
 e00c7fc:	e5821014 	str	r1, [r2, #20]
 e00c800:	e5c24004 	strb	r4, [r2, #4]
 e00c804:	e30c1598 	movw	r1, #50584	; 0xc598
 e00c808:	e3401e00 	movt	r1, #3584	; 0xe00
 e00c80c:	e5c23005 	strb	r3, [r2, #5]
 e00c810:	e582101c 	str	r1, [r2, #28]
 e00c814:	ebffee0c 	bl	e00804c <rtos_sema_create_binary>
 e00c818:	e3a02005 	mov	r2, #5
 e00c81c:	e300180c 	movw	r1, #2060	; 0x80c
 e00c820:	e58d2004 	str	r2, [sp, #4]
 e00c824:	e58d1000 	str	r1, [sp]
 e00c828:	e1a03004 	mov	r3, r4
 e00c82c:	e1a00004 	mov	r0, r4
 e00c830:	e30c2660 	movw	r2, #50784	; 0xc660
 e00c834:	e3402e00 	movt	r2, #3584	; 0xe00
 e00c838:	e3041fc8 	movw	r1, #20424	; 0x4fc8
 e00c83c:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c840:	ebffee69 	bl	e0081ec <rtos_task_create>
 e00c844:	e1500004 	cmp	r0, r4
 e00c848:	1a000001 	bne	e00c854 <shell_init_ram+0x94>
 e00c84c:	e28dd008 	add	sp, sp, #8
 e00c850:	e8bd8010 	pop	{r4, pc}
 e00c854:	e3040fd4 	movw	r0, #20436	; 0x4fd4
 e00c858:	e3400e01 	movt	r0, #3585	; 0xe01
 e00c85c:	e28dd008 	add	sp, sp, #8
 e00c860:	e8bd4010 	pop	{r4, lr}
 e00c864:	ea0009b5 	b	e00ef40 <DiagPrintf>

0e00c868 <shell_array_init>:
 e00c868:	e3510000 	cmp	r1, #0
 e00c86c:	012fff1e 	bxeq	lr
 e00c870:	e2411001 	sub	r1, r1, #1
 e00c874:	e2403001 	sub	r3, r0, #1
 e00c878:	e6e00071 	uxtab	r0, r0, r1
 e00c87c:	e5e32001 	strb	r2, [r3, #1]!
 e00c880:	e1530000 	cmp	r3, r0
 e00c884:	1afffffc 	bne	e00c87c <shell_array_init+0x14>
 e00c888:	e12fff1e 	bx	lr

0e00c88c <shell_get_argc>:
 e00c88c:	e1a03000 	mov	r3, r0
 e00c890:	e5d00000 	ldrb	r0, [r0]
 e00c894:	e3500000 	cmp	r0, #0
 e00c898:	012fff1e 	bxeq	lr
 e00c89c:	e3a02000 	mov	r2, #0
 e00c8a0:	ea000001 	b	e00c8ac <shell_get_argc+0x20>
 e00c8a4:	e3500000 	cmp	r0, #0
 e00c8a8:	0a00000d 	beq	e00c8e4 <shell_get_argc+0x58>
 e00c8ac:	e3500020 	cmp	r0, #32
 e00c8b0:	05d30001 	ldrbeq	r0, [r3, #1]
 e00c8b4:	02833001 	addeq	r3, r3, #1
 e00c8b8:	0afffff9 	beq	e00c8a4 <shell_get_argc+0x18>
 e00c8bc:	e5d30000 	ldrb	r0, [r3]
 e00c8c0:	e2822001 	add	r2, r2, #1
 e00c8c4:	e31000df 	tst	r0, #223	; 0xdf
 e00c8c8:	e6ff2072 	uxth	r2, r2
 e00c8cc:	0afffff4 	beq	e00c8a4 <shell_get_argc+0x18>
 e00c8d0:	e5f30001 	ldrb	r0, [r3, #1]!
 e00c8d4:	e31000df 	tst	r0, #223	; 0xdf
 e00c8d8:	1afffffc 	bne	e00c8d0 <shell_get_argc+0x44>
 e00c8dc:	e3500000 	cmp	r0, #0
 e00c8e0:	1afffff1 	bne	e00c8ac <shell_get_argc+0x20>
 e00c8e4:	e352000f 	cmp	r2, #15
 e00c8e8:	31a00002 	movcc	r0, r2
 e00c8ec:	23a0000f 	movcs	r0, #15
 e00c8f0:	e6ef0070 	uxtb	r0, r0
 e00c8f4:	e12fff1e 	bx	lr

0e00c8f8 <shell_get_argv>:
 e00c8f8:	e59f3080 	ldr	r3, [pc, #128]	; e00c980 <shell_get_argv+0x88>
 e00c8fc:	e3a01000 	mov	r1, #0
 e00c900:	e2832001 	add	r2, r3, #1
 e00c904:	e283c040 	add	ip, r3, #64	; 0x40
 e00c908:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e00c90c:	e5e31001 	strb	r1, [r3, #1]!
 e00c910:	e153000c 	cmp	r3, ip
 e00c914:	1afffffc 	bne	e00c90c <shell_get_argv+0x14>
 e00c918:	e59fe064 	ldr	lr, [pc, #100]	; e00c984 <shell_get_argv+0x8c>
 e00c91c:	e3a0c000 	mov	ip, #0
 e00c920:	e5d03000 	ldrb	r3, [r0]
 e00c924:	e3530000 	cmp	r3, #0
 e00c928:	0a000011 	beq	e00c974 <shell_get_argv+0x7c>
 e00c92c:	e4820004 	str	r0, [r2], #4
 e00c930:	e5d03000 	ldrb	r3, [r0]
 e00c934:	e31300df 	tst	r3, #223	; 0xdf
 e00c938:	0a000002 	beq	e00c948 <shell_get_argv+0x50>
 e00c93c:	e5f03001 	ldrb	r3, [r0, #1]!
 e00c940:	e31300df 	tst	r3, #223	; 0xdf
 e00c944:	1afffffc 	bne	e00c93c <shell_get_argv+0x44>
 e00c948:	e1a03000 	mov	r3, r0
 e00c94c:	e4c3c001 	strb	ip, [r3], #1
 e00c950:	e5d01001 	ldrb	r1, [r0, #1]
 e00c954:	e1a00003 	mov	r0, r3
 e00c958:	e3510020 	cmp	r1, #32
 e00c95c:	1a000002 	bne	e00c96c <shell_get_argv+0x74>
 e00c960:	e5f03001 	ldrb	r3, [r0, #1]!
 e00c964:	e3530020 	cmp	r3, #32
 e00c968:	0afffffc 	beq	e00c960 <shell_get_argv+0x68>
 e00c96c:	e15e0002 	cmp	lr, r2
 e00c970:	1affffea 	bne	e00c920 <shell_get_argv+0x28>
 e00c974:	e30308c4 	movw	r0, #14532	; 0x38c4
 e00c978:	e346000a 	movt	r0, #24586	; 0x600a
 e00c97c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
 e00c980:	600a38c3 	.word	0x600a38c3
 e00c984:	600a3904 	.word	0x600a3904

0e00c988 <shell_init_rom>:
 e00c988:	e92d4030 	push	{r4, r5, lr}
 e00c98c:	e303e904 	movw	lr, #14596	; 0x3904
 e00c990:	e346e00a 	movt	lr, #24586	; 0x600a
 e00c994:	e24dd00c 	sub	sp, sp, #12
 e00c998:	e1a05000 	mov	r5, r0
 e00c99c:	e1a0300e 	mov	r3, lr
 e00c9a0:	e28ec07f 	add	ip, lr, #127	; 0x7f
 e00c9a4:	e3a02000 	mov	r2, #0
 e00c9a8:	e5ce2000 	strb	r2, [lr]
 e00c9ac:	e5e32001 	strb	r2, [r3, #1]!
 e00c9b0:	e153000c 	cmp	r3, ip
 e00c9b4:	1afffffc 	bne	e00c9ac <shell_init_rom+0x24>
 e00c9b8:	e30339a8 	movw	r3, #14760	; 0x39a8
 e00c9bc:	e346300a 	movt	r3, #24586	; 0x600a
 e00c9c0:	e283c07f 	add	ip, r3, #127	; 0x7f
 e00c9c4:	e5c32000 	strb	r2, [r3]
 e00c9c8:	e3a02000 	mov	r2, #0
 e00c9cc:	e5e32001 	strb	r2, [r3, #1]!
 e00c9d0:	e153000c 	cmp	r3, ip
 e00c9d4:	1afffffc 	bne	e00c9cc <shell_init_rom+0x44>
 e00c9d8:	e3034984 	movw	r4, #14724	; 0x3984
 e00c9dc:	e346400a 	movt	r4, #24586	; 0x600a
 e00c9e0:	e30e3f40 	movw	r3, #61248	; 0xef40
 e00c9e4:	e3403e00 	movt	r3, #3584	; 0xe00
 e00c9e8:	e5c42000 	strb	r2, [r4]
 e00c9ec:	e3550000 	cmp	r5, #0
 e00c9f0:	e5c42001 	strb	r2, [r4, #1]
 e00c9f4:	e5c42002 	strb	r2, [r4, #2]
 e00c9f8:	e5c42003 	strb	r2, [r4, #3]
 e00c9fc:	e5c42006 	strb	r2, [r4, #6]
 e00ca00:	e584e008 	str	lr, [r4, #8]
 e00ca04:	e584300c 	str	r3, [r4, #12]
 e00ca08:	0a000007 	beq	e00ca2c <shell_init_rom+0xa4>
 e00ca0c:	e5841010 	str	r1, [r4, #16]
 e00ca10:	e5845014 	str	r5, [r4, #20]
 e00ca14:	e3a03000 	mov	r3, #0
 e00ca18:	e5843020 	str	r3, [r4, #32]
 e00ca1c:	e5c43004 	strb	r3, [r4, #4]
 e00ca20:	e5c43005 	strb	r3, [r4, #5]
 e00ca24:	e28dd00c 	add	sp, sp, #12
 e00ca28:	e8bd8030 	pop	{r4, r5, pc}
 e00ca2c:	e28d0004 	add	r0, sp, #4
 e00ca30:	e30c34f8 	movw	r3, #50424	; 0xc4f8
 e00ca34:	e3403e00 	movt	r3, #3584	; 0xe00
 e00ca38:	e58d5004 	str	r5, [sp, #4]
 e00ca3c:	e12fff33 	blx	r3
 e00ca40:	e59d3004 	ldr	r3, [sp, #4]
 e00ca44:	e5843010 	str	r3, [r4, #16]
 e00ca48:	e5840014 	str	r0, [r4, #20]
 e00ca4c:	eafffff0 	b	e00ca14 <shell_init_rom+0x8c>

0e00ca50 <__wrap_fflush>:
 e00ca50:	e3053000 	movw	r3, #20480	; 0x5000
 e00ca54:	e3463009 	movt	r3, #24585	; 0x6009
 e00ca58:	e1a01000 	mov	r1, r0
 e00ca5c:	e5933000 	ldr	r3, [r3]
 e00ca60:	e5932008 	ldr	r2, [r3, #8]
 e00ca64:	e1500002 	cmp	r0, r2
 e00ca68:	0a00000b 	beq	e00ca9c <__wrap_fflush+0x4c>
 e00ca6c:	e593200c 	ldr	r2, [r3, #12]
 e00ca70:	e1500002 	cmp	r0, r2
 e00ca74:	0a000008 	beq	e00ca9c <__wrap_fflush+0x4c>
 e00ca78:	e5932004 	ldr	r2, [r3, #4]
 e00ca7c:	e1500002 	cmp	r0, r2
 e00ca80:	0a000005 	beq	e00ca9c <__wrap_fflush+0x4c>
 e00ca84:	e5902000 	ldr	r2, [r0]
 e00ca88:	e3033a28 	movw	r3, #14888	; 0x3a28
 e00ca8c:	e346300a 	movt	r3, #24586	; 0x600a
 e00ca90:	e7933102 	ldr	r3, [r3, r2, lsl #2]
 e00ca94:	e5933020 	ldr	r3, [r3, #32]
 e00ca98:	e12fff13 	bx	r3
 e00ca9c:	e1a00003 	mov	r0, r3
 e00caa0:	e92d4010 	push	{r4, lr}
 e00caa4:	ebffcf2d 	bl	e000760 <_fflush_r>
 e00caa8:	e3a00000 	mov	r0, #0
 e00caac:	e8bd8010 	pop	{r4, pc}

0e00cab0 <mmap_add_region>:
 e00cab0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e00cab4:	e3a0e101 	mov	lr, #1073741824	; 0x40000000
 e00cab8:	e24dd01c 	sub	sp, sp, #28
 e00cabc:	e1cd00f0 	strd	r0, [sp]
 e00cac0:	e59dc020 	ldr	ip, [sp, #32]
 e00cac4:	e1a0100d 	mov	r1, sp
 e00cac8:	e3050270 	movw	r0, #21104	; 0x5270
 e00cacc:	e3460009 	movt	r0, #24585	; 0x6009
 e00cad0:	e58de014 	str	lr, [sp, #20]
 e00cad4:	e1cd20f8 	strd	r2, [sp, #8]
 e00cad8:	e58dc010 	str	ip, [sp, #16]
 e00cadc:	eb0001ae 	bl	e00d19c <mmap_add_region_ctx>
 e00cae0:	e28dd01c 	add	sp, sp, #28
 e00cae4:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

0e00cae8 <init_xlat_tables>:
 e00cae8:	e92d4010 	push	{r4, lr}
 e00caec:	e3054270 	movw	r4, #21104	; 0x5270
 e00caf0:	e3464009 	movt	r4, #24585	; 0x6009
 e00caf4:	e24dd008 	sub	sp, sp, #8
 e00caf8:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
 e00cafc:	e3730001 	cmn	r3, #1
 e00cb00:	0a00000c 	beq	e00cb38 <init_xlat_tables+0x50>
 e00cb04:	e3a00060 	mov	r0, #96	; 0x60
 e00cb08:	e305c010 	movw	ip, #20496	; 0x5010
 e00cb0c:	e340ce01 	movt	ip, #3585	; 0xe01
 e00cb10:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00cb14:	e3403e01 	movt	r3, #3585	; 0xe01
 e00cb18:	e3041084 	movw	r1, #16516	; 0x4084
 e00cb1c:	e3401e01 	movt	r1, #3585	; 0xe01
 e00cb20:	e58d0004 	str	r0, [sp, #4]
 e00cb24:	e3a02049 	mov	r2, #73	; 0x49
 e00cb28:	e3a00004 	mov	r0, #4
 e00cb2c:	e58dc000 	str	ip, [sp]
 e00cb30:	ebfff80b 	bl	e00ab64 <rtk_log_write>
 e00cb34:	eafffffe 	b	e00cb34 <init_xlat_tables+0x4c>
 e00cb38:	eb0003ca 	bl	e00da68 <xlat_arch_current_el>
 e00cb3c:	e3500001 	cmp	r0, #1
 e00cb40:	0a000010 	beq	e00cb88 <init_xlat_tables+0xa0>
 e00cb44:	e3500002 	cmp	r0, #2
 e00cb48:	0a00000e 	beq	e00cb88 <init_xlat_tables+0xa0>
 e00cb4c:	e3500003 	cmp	r0, #3
 e00cb50:	0a00000c 	beq	e00cb88 <init_xlat_tables+0xa0>
 e00cb54:	e3a00069 	mov	r0, #105	; 0x69
 e00cb58:	e305c010 	movw	ip, #20496	; 0x5010
 e00cb5c:	e340ce01 	movt	ip, #3585	; 0xe01
 e00cb60:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00cb64:	e3403e01 	movt	r3, #3585	; 0xe01
 e00cb68:	e3041084 	movw	r1, #16516	; 0x4084
 e00cb6c:	e3401e01 	movt	r1, #3585	; 0xe01
 e00cb70:	e58d0004 	str	r0, [sp, #4]
 e00cb74:	e3a02049 	mov	r2, #73	; 0x49
 e00cb78:	e3a00004 	mov	r0, #4
 e00cb7c:	e58dc000 	str	ip, [sp]
 e00cb80:	ebfff7f7 	bl	e00ab64 <rtk_log_write>
 e00cb84:	eafffffe 	b	e00cb84 <init_xlat_tables+0x9c>
 e00cb88:	e584003c 	str	r0, [r4, #60]	; 0x3c
 e00cb8c:	e3050270 	movw	r0, #21104	; 0x5270
 e00cb90:	e3460009 	movt	r0, #24585	; 0x6009
 e00cb94:	e28dd008 	add	sp, sp, #8
 e00cb98:	e8bd4010 	pop	{r4, lr}
 e00cb9c:	ea000295 	b	e00d5f8 <init_xlat_tables_ctx>

0e00cba0 <enable_mmu_svc_mon>:
 e00cba0:	e92d4010 	push	{r4, lr}
 e00cba4:	e3053270 	movw	r3, #21104	; 0x5270
 e00cba8:	e3463009 	movt	r3, #24585	; 0x6009
 e00cbac:	e24dd010 	sub	sp, sp, #16
 e00cbb0:	e1a04000 	mov	r4, r0
 e00cbb4:	e593c008 	ldr	ip, [r3, #8]
 e00cbb8:	e1c300d0 	ldrd	r0, [r3]
 e00cbbc:	e5932020 	ldr	r2, [r3, #32]
 e00cbc0:	e1cd00f0 	strd	r0, [sp]
 e00cbc4:	e3a03001 	mov	r3, #1
 e00cbc8:	e1a01004 	mov	r1, r4
 e00cbcc:	e58dc008 	str	ip, [sp, #8]
 e00cbd0:	e58d300c 	str	r3, [sp, #12]
 e00cbd4:	e3030a78 	movw	r0, #14968	; 0x3a78
 e00cbd8:	e346000a 	movt	r0, #24586	; 0x600a
 e00cbdc:	eb0003fb 	bl	e00dbd0 <setup_mmu_cfg>
 e00cbe0:	e1a00004 	mov	r0, r4
 e00cbe4:	e28dd010 	add	sp, sp, #16
 e00cbe8:	e8bd4010 	pop	{r4, lr}
 e00cbec:	ea0004c7 	b	e00df10 <enable_mmu_direct_svc_mon>

0e00cbf0 <xlat_desc>:
 e00cbf0:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 e00cbf4:	e1a04001 	mov	r4, r1
 e00cbf8:	e24dd00c 	sub	sp, sp, #12
 e00cbfc:	e3e01008 	mvn	r1, #8
 e00cc00:	e3e0c000 	mvn	ip, #0
 e00cc04:	e59de020 	ldr	lr, [sp, #32]
 e00cc08:	e0010e91 	mul	r1, r1, lr
 e00cc0c:	e2811027 	add	r1, r1, #39	; 0x27
 e00cc10:	e1d2111c 	bics	r1, r2, ip, lsl r1
 e00cc14:	1a00002a 	bne	e00ccc4 <xlat_desc+0xd4>
 e00cc18:	e35e0003 	cmp	lr, #3
 e00cc1c:	03a05003 	moveq	r5, #3
 e00cc20:	13a05001 	movne	r5, #1
 e00cc24:	e094c004 	adds	ip, r4, r4
 e00cc28:	e590003c 	ldr	r0, [r0, #60]	; 0x3c
 e00cc2c:	e3140008 	tst	r4, #8
 e00cc30:	e20cc020 	and	ip, ip, #32
 e00cc34:	03822080 	orreq	r2, r2, #128	; 0x80
 e00cc38:	e185500c 	orr	r5, r5, ip
 e00cc3c:	e1855002 	orr	r5, r5, r2
 e00cc40:	e1816003 	orr	r6, r1, r3
 e00cc44:	e3500001 	cmp	r0, #1
 e00cc48:	0a000010 	beq	e00cc90 <xlat_desc+0xa0>
 e00cc4c:	e2403002 	sub	r3, r0, #2
 e00cc50:	e3530001 	cmp	r3, #1
 e00cc54:	8a000034 	bhi	e00cd2c <xlat_desc+0x13c>
 e00cc58:	e3855d11 	orr	r5, r5, #1088	; 0x440
 e00cc5c:	e1a01006 	mov	r1, r6
 e00cc60:	e2147007 	ands	r7, r4, #7
 e00cc64:	0a00000f 	beq	e00cca8 <xlat_desc+0xb8>
 e00cc68:	e3140028 	tst	r4, #40	; 0x28
 e00cc6c:	1a000042 	bne	e00cd7c <xlat_desc+0x18c>
 e00cc70:	e3570002 	cmp	r7, #2
 e00cc74:	0a000039 	beq	e00cd60 <xlat_desc+0x170>
 e00cc78:	e3570001 	cmp	r7, #1
 e00cc7c:	03855f82 	orreq	r5, r5, #520	; 0x208
 e00cc80:	1a00001c 	bne	e00ccf8 <xlat_desc+0x108>
 e00cc84:	e1a00005 	mov	r0, r5
 e00cc88:	e28dd00c 	add	sp, sp, #12
 e00cc8c:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
 e00cc90:	e3140040 	tst	r4, #64	; 0x40
 e00cc94:	03855b01 	orreq	r5, r5, #1024	; 0x400
 e00cc98:	01a01006 	moveq	r1, r6
 e00cc9c:	1affffed 	bne	e00cc58 <xlat_desc+0x68>
 e00cca0:	e2147007 	ands	r7, r4, #7
 e00cca4:	1affffef 	bne	e00cc68 <xlat_desc+0x78>
 e00cca8:	eb000355 	bl	e00da04 <xlat_arch_regime_get_xn_desc>
 e00ccac:	e1855000 	orr	r5, r5, r0
 e00ccb0:	e3855f81 	orr	r5, r5, #516	; 0x204
 e00ccb4:	e1861001 	orr	r1, r6, r1
 e00ccb8:	e1a00005 	mov	r0, r5
 e00ccbc:	e28dd00c 	add	sp, sp, #12
 e00ccc0:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
 e00ccc4:	e3a00084 	mov	r0, #132	; 0x84
 e00ccc8:	e305c084 	movw	ip, #20612	; 0x5084
 e00cccc:	e340ce01 	movt	ip, #3585	; 0xe01
 e00ccd0:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00ccd4:	e3403e01 	movt	r3, #3585	; 0xe01
 e00ccd8:	e3041084 	movw	r1, #16516	; 0x4084
 e00ccdc:	e3401e01 	movt	r1, #3585	; 0xe01
 e00cce0:	e58d0004 	str	r0, [sp, #4]
 e00cce4:	e3a02049 	mov	r2, #73	; 0x49
 e00cce8:	e3a00004 	mov	r0, #4
 e00ccec:	e58dc000 	str	ip, [sp]
 e00ccf0:	ebfff79b 	bl	e00ab64 <rtk_log_write>
 e00ccf4:	eafffffe 	b	e00ccf4 <xlat_desc+0x104>
 e00ccf8:	e3a000ee 	mov	r0, #238	; 0xee
 e00ccfc:	e305c084 	movw	ip, #20612	; 0x5084
 e00cd00:	e340ce01 	movt	ip, #3585	; 0xe01
 e00cd04:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00cd08:	e3403e01 	movt	r3, #3585	; 0xe01
 e00cd0c:	e3041084 	movw	r1, #16516	; 0x4084
 e00cd10:	e3401e01 	movt	r1, #3585	; 0xe01
 e00cd14:	e58d0004 	str	r0, [sp, #4]
 e00cd18:	e3a02049 	mov	r2, #73	; 0x49
 e00cd1c:	e3a00004 	mov	r0, #4
 e00cd20:	e58dc000 	str	ip, [sp]
 e00cd24:	ebfff78e 	bl	e00ab64 <rtk_log_write>
 e00cd28:	eafffffe 	b	e00cd28 <xlat_desc+0x138>
 e00cd2c:	e3a000a6 	mov	r0, #166	; 0xa6
 e00cd30:	e305c084 	movw	ip, #20612	; 0x5084
 e00cd34:	e340ce01 	movt	ip, #3585	; 0xe01
 e00cd38:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00cd3c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00cd40:	e3041084 	movw	r1, #16516	; 0x4084
 e00cd44:	e3401e01 	movt	r1, #3585	; 0xe01
 e00cd48:	e58d0004 	str	r0, [sp, #4]
 e00cd4c:	e3a02049 	mov	r2, #73	; 0x49
 e00cd50:	e3a00004 	mov	r0, #4
 e00cd54:	e58dc000 	str	ip, [sp]
 e00cd58:	ebfff781 	bl	e00ab64 <rtk_log_write>
 e00cd5c:	eafffffe 	b	e00cd5c <xlat_desc+0x16c>
 e00cd60:	e2044d06 	and	r4, r4, #384	; 0x180
 e00cd64:	e3540d06 	cmp	r4, #384	; 0x180
 e00cd68:	0affffc5 	beq	e00cc84 <xlat_desc+0x94>
 e00cd6c:	e3540c01 	cmp	r4, #256	; 0x100
 e00cd70:	03855c02 	orreq	r5, r5, #512	; 0x200
 e00cd74:	13855c03 	orrne	r5, r5, #768	; 0x300
 e00cd78:	eaffffc1 	b	e00cc84 <xlat_desc+0x94>
 e00cd7c:	eb000320 	bl	e00da04 <xlat_arch_regime_get_xn_desc>
 e00cd80:	e1855000 	orr	r5, r5, r0
 e00cd84:	e1861001 	orr	r1, r6, r1
 e00cd88:	eaffffb8 	b	e00cc70 <xlat_desc+0x80>

0e00cd8c <xlat_tables_map_region>:
 e00cd8c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e00cd90:	e1a04002 	mov	r4, r2
 e00cd94:	e24dd02c 	sub	sp, sp, #44	; 0x2c
 e00cd98:	e5902034 	ldr	r2, [r0, #52]	; 0x34
 e00cd9c:	e59d7054 	ldr	r7, [sp, #84]	; 0x54
 e00cda0:	e1520007 	cmp	r2, r7
 e00cda4:	93570003 	cmpls	r7, #3
 e00cda8:	9a00000c 	bls	e00cde0 <xlat_tables_map_region+0x54>
 e00cdac:	e3000251 	movw	r0, #593	; 0x251
 e00cdb0:	e305c084 	movw	ip, #20612	; 0x5084
 e00cdb4:	e340ce01 	movt	ip, #3585	; 0xe01
 e00cdb8:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00cdbc:	e3403e01 	movt	r3, #3585	; 0xe01
 e00cdc0:	e3041084 	movw	r1, #16516	; 0x4084
 e00cdc4:	e3401e01 	movt	r1, #3585	; 0xe01
 e00cdc8:	e58d0004 	str	r0, [sp, #4]
 e00cdcc:	e3a02049 	mov	r2, #73	; 0x49
 e00cdd0:	e3a00004 	mov	r0, #4
 e00cdd4:	e58dc000 	str	ip, [sp]
 e00cdd8:	ebfff761 	bl	e00ab64 <rtk_log_write>
 e00cddc:	eafffffe 	b	e00cddc <xlat_tables_map_region+0x50>
 e00cde0:	e3e02008 	mvn	r2, #8
 e00cde4:	e1a05001 	mov	r5, r1
 e00cde8:	e0020792 	mul	r2, r2, r7
 e00cdec:	e5911008 	ldr	r1, [r1, #8]
 e00cdf0:	e1a06000 	mov	r6, r0
 e00cdf4:	e2820027 	add	r0, r2, #39	; 0x27
 e00cdf8:	e595200c 	ldr	r2, [r5, #12]
 e00cdfc:	e1510004 	cmp	r1, r4
 e00ce00:	e0812002 	add	r2, r1, r2
 e00ce04:	e2422001 	sub	r2, r2, #1
 e00ce08:	e58d2010 	str	r2, [sp, #16]
 e00ce0c:	e3a02001 	mov	r2, #1
 e00ce10:	93a08000 	movls	r8, #0
 e00ce14:	e1a02012 	lsl	r2, r2, r0
 e00ce18:	e58d0014 	str	r0, [sp, #20]
 e00ce1c:	e58d200c 	str	r2, [sp, #12]
 e00ce20:	8a000059 	bhi	e00cf8c <xlat_tables_map_region+0x200>
 e00ce24:	e083b188 	add	fp, r3, r8, lsl #3
 e00ce28:	e59d300c 	ldr	r3, [sp, #12]
 e00ce2c:	e3a0aa0f 	mov	sl, #61440	; 0xf000
 e00ce30:	e34fafff 	movt	sl, #65535	; 0xffff
 e00ce34:	e2433001 	sub	r3, r3, #1
 e00ce38:	e0849003 	add	r9, r4, r3
 e00ce3c:	e58d301c 	str	r3, [sp, #28]
 e00ce40:	e2873001 	add	r3, r7, #1
 e00ce44:	e58d3018 	str	r3, [sp, #24]
 e00ce48:	e59d3050 	ldr	r3, [sp, #80]	; 0x50
 e00ce4c:	e1580003 	cmp	r8, r3
 e00ce50:	2a0000b8 	bcs	e00d138 <xlat_tables_map_region+0x3ac>
 e00ce54:	e5953008 	ldr	r3, [r5, #8]
 e00ce58:	e595200c 	ldr	r2, [r5, #12]
 e00ce5c:	e1530004 	cmp	r3, r4
 e00ce60:	e0832002 	add	r2, r3, r2
 e00ce64:	e2422001 	sub	r2, r2, #1
 e00ce68:	83a00000 	movhi	r0, #0
 e00ce6c:	93a00001 	movls	r0, #1
 e00ce70:	e59b1000 	ldr	r1, [fp]
 e00ce74:	e1520009 	cmp	r2, r9
 e00ce78:	33a00000 	movcc	r0, #0
 e00ce7c:	e3500000 	cmp	r0, #0
 e00ce80:	e2010003 	and	r0, r1, #3
 e00ce84:	1a000019 	bne	e00cef0 <xlat_tables_map_region+0x164>
 e00ce88:	e1530009 	cmp	r3, r9
 e00ce8c:	83a03000 	movhi	r3, #0
 e00ce90:	93a03001 	movls	r3, #1
 e00ce94:	e1520004 	cmp	r2, r4
 e00ce98:	23833001 	orrcs	r3, r3, #1
 e00ce9c:	e3530000 	cmp	r3, #0
 e00cea0:	0a00002f 	beq	e00cf64 <xlat_tables_map_region+0x1d8>
 e00cea4:	e3570003 	cmp	r7, #3
 e00cea8:	0a00003f 	beq	e00cfac <xlat_tables_map_region+0x220>
 e00ceac:	e3500000 	cmp	r0, #0
 e00ceb0:	0a00004a 	beq	e00cfe0 <xlat_tables_map_region+0x254>
 e00ceb4:	e3500003 	cmp	r0, #3
 e00ceb8:	0a00008a 	beq	e00d0e8 <xlat_tables_map_region+0x35c>
 e00cebc:	e300022f 	movw	r0, #559	; 0x22f
 e00cec0:	e305c084 	movw	ip, #20612	; 0x5084
 e00cec4:	e340ce01 	movt	ip, #3585	; 0xe01
 e00cec8:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00cecc:	e3403e01 	movt	r3, #3585	; 0xe01
 e00ced0:	e3041084 	movw	r1, #16516	; 0x4084
 e00ced4:	e3401e01 	movt	r1, #3585	; 0xe01
 e00ced8:	e58d0004 	str	r0, [sp, #4]
 e00cedc:	e3a02049 	mov	r2, #73	; 0x49
 e00cee0:	e3a00004 	mov	r0, #4
 e00cee4:	e58dc000 	str	ip, [sp]
 e00cee8:	ebfff71d 	bl	e00ab64 <rtk_log_write>
 e00ceec:	eafffffe 	b	e00ceec <xlat_tables_map_region+0x160>
 e00cef0:	e5952000 	ldr	r2, [r5]
 e00cef4:	e595c004 	ldr	ip, [r5, #4]
 e00cef8:	e0523003 	subs	r3, r2, r3
 e00cefc:	e2ccc000 	sbc	ip, ip, #0
 e00cf00:	e0932004 	adds	r2, r3, r4
 e00cf04:	e2ac3000 	adc	r3, ip, #0
 e00cf08:	e3570003 	cmp	r7, #3
 e00cf0c:	0a000064 	beq	e00d0a4 <xlat_tables_map_region+0x318>
 e00cf10:	e3500003 	cmp	r0, #3
 e00cf14:	0a000073 	beq	e00d0e8 <xlat_tables_map_region+0x35c>
 e00cf18:	e3500000 	cmp	r0, #0
 e00cf1c:	1a000051 	bne	e00d068 <xlat_tables_map_region+0x2dc>
 e00cf20:	e59d101c 	ldr	r1, [sp, #28]
 e00cf24:	e1120001 	tst	r2, r1
 e00cf28:	13a01001 	movne	r1, #1
 e00cf2c:	03a01000 	moveq	r1, #0
 e00cf30:	e3570000 	cmp	r7, #0
 e00cf34:	03811001 	orreq	r1, r1, #1
 e00cf38:	e3510000 	cmp	r1, #0
 e00cf3c:	1a000027 	bne	e00cfe0 <xlat_tables_map_region+0x254>
 e00cf40:	e5951014 	ldr	r1, [r5, #20]
 e00cf44:	e59d0014 	ldr	r0, [sp, #20]
 e00cf48:	e1b01031 	lsrs	r1, r1, r0
 e00cf4c:	0a000023 	beq	e00cfe0 <xlat_tables_map_region+0x254>
 e00cf50:	e58d7000 	str	r7, [sp]
 e00cf54:	e1a00006 	mov	r0, r6
 e00cf58:	e5951010 	ldr	r1, [r5, #16]
 e00cf5c:	ebffff23 	bl	e00cbf0 <xlat_desc>
 e00cf60:	e1cb00f0 	strd	r0, [fp]
 e00cf64:	e59d300c 	ldr	r3, [sp, #12]
 e00cf68:	e59d2010 	ldr	r2, [sp, #16]
 e00cf6c:	e0844003 	add	r4, r4, r3
 e00cf70:	e2888001 	add	r8, r8, #1
 e00cf74:	e28bb008 	add	fp, fp, #8
 e00cf78:	e1520004 	cmp	r2, r4
 e00cf7c:	e0833009 	add	r3, r3, r9
 e00cf80:	9a000083 	bls	e00d194 <xlat_tables_map_region+0x408>
 e00cf84:	e1a09003 	mov	r9, r3
 e00cf88:	eaffffae 	b	e00ce48 <xlat_tables_map_region+0xbc>
 e00cf8c:	e59d200c 	ldr	r2, [sp, #12]
 e00cf90:	e2622000 	rsb	r2, r2, #0
 e00cf94:	e0011002 	and	r1, r1, r2
 e00cf98:	e59d2014 	ldr	r2, [sp, #20]
 e00cf9c:	e0418004 	sub	r8, r1, r4
 e00cfa0:	e1a04001 	mov	r4, r1
 e00cfa4:	e1a08238 	lsr	r8, r8, r2
 e00cfa8:	eaffff9d 	b	e00ce24 <xlat_tables_map_region+0x98>
 e00cfac:	e3a00f89 	mov	r0, #548	; 0x224
 e00cfb0:	e305c084 	movw	ip, #20612	; 0x5084
 e00cfb4:	e340ce01 	movt	ip, #3585	; 0xe01
 e00cfb8:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00cfbc:	e3403e01 	movt	r3, #3585	; 0xe01
 e00cfc0:	e3041084 	movw	r1, #16516	; 0x4084
 e00cfc4:	e3401e01 	movt	r1, #3585	; 0xe01
 e00cfc8:	e58d0004 	str	r0, [sp, #4]
 e00cfcc:	e3a02049 	mov	r2, #73	; 0x49
 e00cfd0:	e3a00004 	mov	r0, #4
 e00cfd4:	e58dc000 	str	ip, [sp]
 e00cfd8:	ebfff6e1 	bl	e00ab64 <rtk_log_write>
 e00cfdc:	eafffffe 	b	e00cfdc <xlat_tables_map_region+0x250>
 e00cfe0:	e596201c 	ldr	r2, [r6, #28]
 e00cfe4:	e5963018 	ldr	r3, [r6, #24]
 e00cfe8:	e1520003 	cmp	r2, r3
 e00cfec:	aa000053 	bge	e00d140 <xlat_tables_map_region+0x3b4>
 e00cff0:	e5963014 	ldr	r3, [r6, #20]
 e00cff4:	e0933602 	adds	r3, r3, r2, lsl #12
 e00cff8:	e2822001 	add	r2, r2, #1
 e00cffc:	e586201c 	str	r2, [r6, #28]
 e00d000:	e1a02004 	mov	r2, r4
 e00d004:	0a000014 	beq	e00d05c <xlat_tables_map_region+0x2d0>
 e00d008:	e3830003 	orr	r0, r3, #3
 e00d00c:	e58b0000 	str	r0, [fp]
 e00d010:	e3a00000 	mov	r0, #0
 e00d014:	e58b0004 	str	r0, [fp, #4]
 e00d018:	e59d0018 	ldr	r0, [sp, #24]
 e00d01c:	e1a01005 	mov	r1, r5
 e00d020:	e58d0004 	str	r0, [sp, #4]
 e00d024:	e3a00c02 	mov	r0, #512	; 0x200
 e00d028:	e58d0000 	str	r0, [sp]
 e00d02c:	e1a00006 	mov	r0, r6
 e00d030:	e58d3024 	str	r3, [sp, #36]	; 0x24
 e00d034:	ebffff54 	bl	e00cd8c <xlat_tables_map_region>
 e00d038:	e58d0020 	str	r0, [sp, #32]
 e00d03c:	eb000266 	bl	e00d9dc <is_dcache_enabled>
 e00d040:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e00d044:	e3500000 	cmp	r0, #0
 e00d048:	1a00004d 	bne	e00d184 <xlat_tables_map_region+0x3f8>
 e00d04c:	e59d3020 	ldr	r3, [sp, #32]
 e00d050:	e1530009 	cmp	r3, r9
 e00d054:	0affffc2 	beq	e00cf64 <xlat_tables_map_region+0x1d8>
 e00d058:	e1a02003 	mov	r2, r3
 e00d05c:	e1a00002 	mov	r0, r2
 e00d060:	e28dd02c 	add	sp, sp, #44	; 0x2c
 e00d064:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00d068:	e3500001 	cmp	r0, #1
 e00d06c:	0affffbc 	beq	e00cf64 <xlat_tables_map_region+0x1d8>
 e00d070:	e300020f 	movw	r0, #527	; 0x20f
 e00d074:	e305c084 	movw	ip, #20612	; 0x5084
 e00d078:	e340ce01 	movt	ip, #3585	; 0xe01
 e00d07c:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00d080:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d084:	e3041084 	movw	r1, #16516	; 0x4084
 e00d088:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d08c:	e58d0004 	str	r0, [sp, #4]
 e00d090:	e3a02049 	mov	r2, #73	; 0x49
 e00d094:	e3a00004 	mov	r0, #4
 e00d098:	e58dc000 	str	ip, [sp]
 e00d09c:	ebfff6b0 	bl	e00ab64 <rtk_log_write>
 e00d0a0:	eafffffe 	b	e00d0a0 <xlat_tables_map_region+0x314>
 e00d0a4:	e3500003 	cmp	r0, #3
 e00d0a8:	0affffad 	beq	e00cf64 <xlat_tables_map_region+0x1d8>
 e00d0ac:	e3500000 	cmp	r0, #0
 e00d0b0:	0affffa6 	beq	e00cf50 <xlat_tables_map_region+0x1c4>
 e00d0b4:	e30001e7 	movw	r0, #487	; 0x1e7
 e00d0b8:	e305c084 	movw	ip, #20612	; 0x5084
 e00d0bc:	e340ce01 	movt	ip, #3585	; 0xe01
 e00d0c0:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00d0c4:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d0c8:	e3041084 	movw	r1, #16516	; 0x4084
 e00d0cc:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d0d0:	e58d0004 	str	r0, [sp, #4]
 e00d0d4:	e3a02049 	mov	r2, #73	; 0x49
 e00d0d8:	e3a00004 	mov	r0, #4
 e00d0dc:	e58dc000 	str	ip, [sp]
 e00d0e0:	ebfff69f 	bl	e00ab64 <rtk_log_write>
 e00d0e4:	eafffffe 	b	e00d0e4 <xlat_tables_map_region+0x358>
 e00d0e8:	e59d2018 	ldr	r2, [sp, #24]
 e00d0ec:	e001300a 	and	r3, r1, sl
 e00d0f0:	e58d2004 	str	r2, [sp, #4]
 e00d0f4:	e1a01005 	mov	r1, r5
 e00d0f8:	e3a02c02 	mov	r2, #512	; 0x200
 e00d0fc:	e1a00006 	mov	r0, r6
 e00d100:	e58d2000 	str	r2, [sp]
 e00d104:	e1a02004 	mov	r2, r4
 e00d108:	e58d3024 	str	r3, [sp, #36]	; 0x24
 e00d10c:	ebffff1e 	bl	e00cd8c <xlat_tables_map_region>
 e00d110:	e58d0020 	str	r0, [sp, #32]
 e00d114:	eb000230 	bl	e00d9dc <is_dcache_enabled>
 e00d118:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e00d11c:	e3500000 	cmp	r0, #0
 e00d120:	1a000013 	bne	e00d174 <xlat_tables_map_region+0x3e8>
 e00d124:	e59d3020 	ldr	r3, [sp, #32]
 e00d128:	e1530009 	cmp	r3, r9
 e00d12c:	0affff8c 	beq	e00cf64 <xlat_tables_map_region+0x1d8>
 e00d130:	e59d2020 	ldr	r2, [sp, #32]
 e00d134:	eaffffc8 	b	e00d05c <xlat_tables_map_region+0x2d0>
 e00d138:	e2442001 	sub	r2, r4, #1
 e00d13c:	eaffffc6 	b	e00d05c <xlat_tables_map_region+0x2d0>
 e00d140:	e3a00072 	mov	r0, #114	; 0x72
 e00d144:	e305c084 	movw	ip, #20612	; 0x5084
 e00d148:	e340ce01 	movt	ip, #3585	; 0xe01
 e00d14c:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00d150:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d154:	e3041084 	movw	r1, #16516	; 0x4084
 e00d158:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d15c:	e58d0004 	str	r0, [sp, #4]
 e00d160:	e3a02049 	mov	r2, #73	; 0x49
 e00d164:	e3a00004 	mov	r0, #4
 e00d168:	e58dc000 	str	ip, [sp]
 e00d16c:	ebfff67c 	bl	e00ab64 <rtk_log_write>
 e00d170:	eafffffe 	b	e00d170 <xlat_tables_map_region+0x3e4>
 e00d174:	e1a00003 	mov	r0, r3
 e00d178:	e3a01a01 	mov	r1, #4096	; 0x1000
 e00d17c:	eb00037c 	bl	e00df74 <clean_dcache_range>
 e00d180:	eaffffe7 	b	e00d124 <xlat_tables_map_region+0x398>
 e00d184:	e1a00003 	mov	r0, r3
 e00d188:	e3a01a01 	mov	r1, #4096	; 0x1000
 e00d18c:	eb000378 	bl	e00df74 <clean_dcache_range>
 e00d190:	eaffffad 	b	e00d04c <xlat_tables_map_region+0x2c0>
 e00d194:	e1a02009 	mov	r2, r9
 e00d198:	eaffffaf 	b	e00d05c <xlat_tables_map_region+0x2d0>

0e00d19c <mmap_add_region_ctx>:
 e00d19c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e00d1a0:	e24dd034 	sub	sp, sp, #52	; 0x34
 e00d1a4:	e591a00c 	ldr	sl, [r1, #12]
 e00d1a8:	e1cd00fc 	strd	r0, [sp, #12]
 e00d1ac:	e35a0000 	cmp	sl, #0
 e00d1b0:	0a0000ec 	beq	e00d568 <mmap_add_region_ctx+0x3cc>
 e00d1b4:	e5d03038 	ldrb	r3, [r0, #56]	; 0x38
 e00d1b8:	e3530000 	cmp	r3, #0
 e00d1bc:	1a00008b 	bne	e00d3f0 <mmap_add_region_ctx+0x254>
 e00d1c0:	e59d1010 	ldr	r1, [sp, #16]
 e00d1c4:	e8911100 	ldm	r1, {r8, ip}
 e00d1c8:	e5912014 	ldr	r2, [r1, #20]
 e00d1cc:	e7eb3058 	ubfx	r3, r8, #0, #12
 e00d1d0:	e3933000 	orrs	r3, r3, #0
 e00d1d4:	1a0000ff 	bne	e00d5d8 <mmap_add_region_ctx+0x43c>
 e00d1d8:	e5916008 	ldr	r6, [r1, #8]
 e00d1dc:	e18a3006 	orr	r3, sl, r6
 e00d1e0:	e7eb3053 	ubfx	r3, r3, #0, #12
 e00d1e4:	e3530000 	cmp	r3, #0
 e00d1e8:	1a0000fa 	bne	e00d5d8 <mmap_add_region_ctx+0x43c>
 e00d1ec:	e3520101 	cmp	r2, #1073741824	; 0x40000000
 e00d1f0:	13520602 	cmpne	r2, #2097152	; 0x200000
 e00d1f4:	13a03001 	movne	r3, #1
 e00d1f8:	03a03000 	moveq	r3, #0
 e00d1fc:	e3520a01 	cmp	r2, #4096	; 0x1000
 e00d200:	03a03000 	moveq	r3, #0
 e00d204:	12033001 	andne	r3, r3, #1
 e00d208:	e3530000 	cmp	r3, #0
 e00d20c:	1a0000f1 	bne	e00d5d8 <mmap_add_region_ctx+0x43c>
 e00d210:	e2583001 	subs	r3, r8, #1
 e00d214:	e2cc2000 	sbc	r2, ip, #0
 e00d218:	e093100a 	adds	r1, r3, sl
 e00d21c:	e2a20000 	adc	r0, r2, #0
 e00d220:	e1510008 	cmp	r1, r8
 e00d224:	e0d0300c 	sbcs	r3, r0, ip
 e00d228:	e08a3006 	add	r3, sl, r6
 e00d22c:	e1a02003 	mov	r2, r3
 e00d230:	e58d301c 	str	r3, [sp, #28]
 e00d234:	e2425001 	sub	r5, r2, #1
 e00d238:	33a03001 	movcc	r3, #1
 e00d23c:	23a03000 	movcs	r3, #0
 e00d240:	e1560005 	cmp	r6, r5
 e00d244:	83833001 	orrhi	r3, r3, #1
 e00d248:	e3530000 	cmp	r3, #0
 e00d24c:	e58d1008 	str	r1, [sp, #8]
 e00d250:	e58d002c 	str	r0, [sp, #44]	; 0x2c
 e00d254:	1a0000e1 	bne	e00d5e0 <mmap_add_region_ctx+0x444>
 e00d258:	e59d200c 	ldr	r2, [sp, #12]
 e00d25c:	e5923008 	ldr	r3, [r2, #8]
 e00d260:	e1550003 	cmp	r5, r3
 e00d264:	8a0000dd 	bhi	e00d5e0 <mmap_add_region_ctx+0x444>
 e00d268:	e5923000 	ldr	r3, [r2]
 e00d26c:	e1530001 	cmp	r3, r1
 e00d270:	e5923004 	ldr	r3, [r2, #4]
 e00d274:	e0d33000 	sbcs	r3, r3, r0
 e00d278:	3a0000d8 	bcc	e00d5e0 <mmap_add_region_ctx+0x444>
 e00d27c:	e592100c 	ldr	r1, [r2, #12]
 e00d280:	e5923010 	ldr	r3, [r2, #16]
 e00d284:	e3a02018 	mov	r2, #24
 e00d288:	e58d1014 	str	r1, [sp, #20]
 e00d28c:	e0231392 	mla	r3, r2, r3, r1
 e00d290:	e58d3018 	str	r3, [sp, #24]
 e00d294:	e513300c 	ldr	r3, [r3, #-12]
 e00d298:	e3530000 	cmp	r3, #0
 e00d29c:	1a0000d3 	bne	e00d5f0 <mmap_add_region_ctx+0x454>
 e00d2a0:	e591b00c 	ldr	fp, [r1, #12]
 e00d2a4:	e5913008 	ldr	r3, [r1, #8]
 e00d2a8:	e35b0000 	cmp	fp, #0
 e00d2ac:	e58d3020 	str	r3, [sp, #32]
 e00d2b0:	0a0000cc 	beq	e00d5e8 <mmap_add_region_ctx+0x44c>
 e00d2b4:	e0819002 	add	r9, r1, r2
 e00d2b8:	e1a03009 	mov	r3, r9
 e00d2bc:	e1a0100b 	mov	r1, fp
 e00d2c0:	e58db024 	str	fp, [sp, #36]	; 0x24
 e00d2c4:	e58d9028 	str	r9, [sp, #40]	; 0x28
 e00d2c8:	e1a0b000 	mov	fp, r0
 e00d2cc:	e1a0900c 	mov	r9, ip
 e00d2d0:	ea00001f 	b	e00d354 <mmap_add_region_ctx+0x1b8>
 e00d2d4:	e1550000 	cmp	r5, r0
 e00d2d8:	33a04000 	movcc	r4, #0
 e00d2dc:	23a04001 	movcs	r4, #1
 e00d2e0:	e1560002 	cmp	r6, r2
 e00d2e4:	83a04000 	movhi	r4, #0
 e00d2e8:	e3540000 	cmp	r4, #0
 e00d2ec:	1a000024 	bne	e00d384 <mmap_add_region_ctx+0x1e8>
 e00d2f0:	e2511001 	subs	r1, r1, #1
 e00d2f4:	e2c44000 	sbc	r4, r4, #0
 e00d2f8:	e09cc00e 	adds	ip, ip, lr
 e00d2fc:	e0a74004 	adc	r4, r7, r4
 e00d300:	e15c0008 	cmp	ip, r8
 e00d304:	e59dc008 	ldr	ip, [sp, #8]
 e00d308:	e0d41009 	sbcs	r1, r4, r9
 e00d30c:	33a01001 	movcc	r1, #1
 e00d310:	23a01000 	movcs	r1, #0
 e00d314:	e15c000e 	cmp	ip, lr
 e00d318:	e0dbc007 	sbcs	ip, fp, r7
 e00d31c:	33811001 	orrcc	r1, r1, #1
 e00d320:	e1560000 	cmp	r6, r0
 e00d324:	93a00000 	movls	r0, #0
 e00d328:	83a00001 	movhi	r0, #1
 e00d32c:	e1550002 	cmp	r5, r2
 e00d330:	33800001 	orrcc	r0, r0, #1
 e00d334:	e3500000 	cmp	r0, #0
 e00d338:	0a00001b 	beq	e00d3ac <mmap_add_region_ctx+0x210>
 e00d33c:	e3510000 	cmp	r1, #0
 e00d340:	0a000019 	beq	e00d3ac <mmap_add_region_ctx+0x210>
 e00d344:	e593100c 	ldr	r1, [r3, #12]
 e00d348:	e2833018 	add	r3, r3, #24
 e00d34c:	e3510000 	cmp	r1, #0
 e00d350:	0a000033 	beq	e00d424 <mmap_add_region_ctx+0x288>
 e00d354:	e5132010 	ldr	r2, [r3, #-16]
 e00d358:	e241c001 	sub	ip, r1, #1
 e00d35c:	e08c0002 	add	r0, ip, r2
 e00d360:	e1550000 	cmp	r5, r0
 e00d364:	83a04000 	movhi	r4, #0
 e00d368:	93a04001 	movls	r4, #1
 e00d36c:	e1560002 	cmp	r6, r2
 e00d370:	33a04000 	movcc	r4, #0
 e00d374:	e513e018 	ldr	lr, [r3, #-24]	; 0xffffffe8
 e00d378:	e5137014 	ldr	r7, [r3, #-20]	; 0xffffffec
 e00d37c:	e3540000 	cmp	r4, #0
 e00d380:	0affffd3 	beq	e00d2d4 <mmap_add_region_ctx+0x138>
 e00d384:	e052e00e 	subs	lr, r2, lr
 e00d388:	e2e77000 	rsc	r7, r7, #0
 e00d38c:	e056c008 	subs	ip, r6, r8
 e00d390:	e2e90000 	rsc	r0, r9, #0
 e00d394:	e1570000 	cmp	r7, r0
 e00d398:	015e000c 	cmpeq	lr, ip
 e00d39c:	1a000002 	bne	e00d3ac <mmap_add_region_ctx+0x210>
 e00d3a0:	e15a0001 	cmp	sl, r1
 e00d3a4:	01560002 	cmpeq	r6, r2
 e00d3a8:	1affffe5 	bne	e00d344 <mmap_add_region_ctx+0x1a8>
 e00d3ac:	e3e01000 	mvn	r1, #0
 e00d3b0:	e30500f4 	movw	r0, #20724	; 0x50f4
 e00d3b4:	e3400e01 	movt	r0, #3585	; 0xe01
 e00d3b8:	ebffebc0 	bl	e0082c0 <__wrap_printf>
 e00d3bc:	e3a00fce 	mov	r0, #824	; 0x338
 e00d3c0:	e305c084 	movw	ip, #20612	; 0x5084
 e00d3c4:	e340ce01 	movt	ip, #3585	; 0xe01
 e00d3c8:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00d3cc:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d3d0:	e3041084 	movw	r1, #16516	; 0x4084
 e00d3d4:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d3d8:	e58d0004 	str	r0, [sp, #4]
 e00d3dc:	e3a02049 	mov	r2, #73	; 0x49
 e00d3e0:	e3a00004 	mov	r0, #4
 e00d3e4:	e58dc000 	str	ip, [sp]
 e00d3e8:	ebfff5dd 	bl	e00ab64 <rtk_log_write>
 e00d3ec:	eafffffe 	b	e00d3ec <mmap_add_region_ctx+0x250>
 e00d3f0:	e3000333 	movw	r0, #819	; 0x333
 e00d3f4:	e305c084 	movw	ip, #20612	; 0x5084
 e00d3f8:	e340ce01 	movt	ip, #3585	; 0xe01
 e00d3fc:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00d400:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d404:	e3041084 	movw	r1, #16516	; 0x4084
 e00d408:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d40c:	e58d0004 	str	r0, [sp, #4]
 e00d410:	e3a02049 	mov	r2, #73	; 0x49
 e00d414:	e3a00004 	mov	r0, #4
 e00d418:	e58dc000 	str	ip, [sp]
 e00d41c:	ebfff5d0 	bl	e00ab64 <rtk_log_write>
 e00d420:	eafffffe 	b	e00d420 <mmap_add_region_ctx+0x284>
 e00d424:	e59db024 	ldr	fp, [sp, #36]	; 0x24
 e00d428:	e59d3020 	ldr	r3, [sp, #32]
 e00d42c:	e59d9028 	ldr	r9, [sp, #40]	; 0x28
 e00d430:	e08b3003 	add	r3, fp, r3
 e00d434:	e2432001 	sub	r2, r3, #1
 e00d438:	e1550002 	cmp	r5, r2
 e00d43c:	e59d4014 	ldr	r4, [sp, #20]
 e00d440:	93a02001 	movls	r2, #1
 e00d444:	9a00000b 	bls	e00d478 <mmap_add_region_ctx+0x2dc>
 e00d448:	e594b024 	ldr	fp, [r4, #36]	; 0x24
 e00d44c:	e5943020 	ldr	r3, [r4, #32]
 e00d450:	e25b2000 	subs	r2, fp, #0
 e00d454:	e08b3003 	add	r3, fp, r3
 e00d458:	13a02001 	movne	r2, #1
 e00d45c:	e2430001 	sub	r0, r3, #1
 e00d460:	e1500005 	cmp	r0, r5
 e00d464:	23a01000 	movcs	r1, #0
 e00d468:	32021001 	andcc	r1, r2, #1
 e00d46c:	e2844018 	add	r4, r4, #24
 e00d470:	e3510000 	cmp	r1, #0
 e00d474:	1afffff3 	bne	e00d448 <mmap_add_region_ctx+0x2ac>
 e00d478:	e59d101c 	ldr	r1, [sp, #28]
 e00d47c:	e15a000b 	cmp	sl, fp
 e00d480:	e0410003 	sub	r0, r1, r3
 e00d484:	e16f0f10 	clz	r0, r0
 e00d488:	e1a002a0 	lsr	r0, r0, #5
 e00d48c:	93a00000 	movls	r0, #0
 e00d490:	e1120000 	tst	r2, r0
 e00d494:	0a00000b 	beq	e00d4c8 <mmap_add_region_ctx+0x32c>
 e00d498:	e2844018 	add	r4, r4, #24
 e00d49c:	e1c420d8 	ldrd	r2, [r4, #8]
 e00d4a0:	e3530000 	cmp	r3, #0
 e00d4a4:	115a0003 	cmpne	sl, r3
 e00d4a8:	e0832002 	add	r2, r3, r2
 e00d4ac:	83a03001 	movhi	r3, #1
 e00d4b0:	93a03000 	movls	r3, #0
 e00d4b4:	e1520001 	cmp	r2, r1
 e00d4b8:	13a03000 	movne	r3, #0
 e00d4bc:	02033001 	andeq	r3, r3, #1
 e00d4c0:	e3530000 	cmp	r3, #0
 e00d4c4:	1afffff3 	bne	e00d498 <mmap_add_region_ctx+0x2fc>
 e00d4c8:	e59d3014 	ldr	r3, [sp, #20]
 e00d4cc:	e59d2018 	ldr	r2, [sp, #24]
 e00d4d0:	e1530002 	cmp	r3, r2
 e00d4d4:	359d1018 	ldrcc	r1, [sp, #24]
 e00d4d8:	3a000003 	bcc	e00d4ec <mmap_add_region_ctx+0x350>
 e00d4dc:	ea000023 	b	e00d570 <mmap_add_region_ctx+0x3d4>
 e00d4e0:	e1590001 	cmp	r9, r1
 e00d4e4:	2a000021 	bcs	e00d570 <mmap_add_region_ctx+0x3d4>
 e00d4e8:	e2899018 	add	r9, r9, #24
 e00d4ec:	e599300c 	ldr	r3, [r9, #12]
 e00d4f0:	e3530000 	cmp	r3, #0
 e00d4f4:	1afffff9 	bne	e00d4e0 <mmap_add_region_ctx+0x344>
 e00d4f8:	e58d9014 	str	r9, [sp, #20]
 e00d4fc:	e59d3014 	ldr	r3, [sp, #20]
 e00d500:	e1a01004 	mov	r1, r4
 e00d504:	e0432004 	sub	r2, r3, r4
 e00d508:	e2840018 	add	r0, r4, #24
 e00d50c:	ebffcf63 	bl	e0012a0 <memmove>
 e00d510:	e59d3018 	ldr	r3, [sp, #24]
 e00d514:	e593300c 	ldr	r3, [r3, #12]
 e00d518:	e3530000 	cmp	r3, #0
 e00d51c:	1a000020 	bne	e00d5a4 <mmap_add_region_ctx+0x408>
 e00d520:	e59dc010 	ldr	ip, [sp, #16]
 e00d524:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 e00d528:	e8a4000f 	stmia	r4!, {r0, r1, r2, r3}
 e00d52c:	e59d200c 	ldr	r2, [sp, #12]
 e00d530:	e89c0003 	ldm	ip, {r0, r1}
 e00d534:	e8840003 	stm	r4, {r0, r1}
 e00d538:	e59d1008 	ldr	r1, [sp, #8]
 e00d53c:	e5923028 	ldr	r3, [r2, #40]	; 0x28
 e00d540:	e59d002c 	ldr	r0, [sp, #44]	; 0x2c
 e00d544:	e1530001 	cmp	r3, r1
 e00d548:	e592302c 	ldr	r3, [r2, #44]	; 0x2c
 e00d54c:	e0d33000 	sbcs	r3, r3, r0
 e00d550:	35821028 	strcc	r1, [r2, #40]	; 0x28
 e00d554:	3582002c 	strcc	r0, [r2, #44]	; 0x2c
 e00d558:	e59d200c 	ldr	r2, [sp, #12]
 e00d55c:	e5923030 	ldr	r3, [r2, #48]	; 0x30
 e00d560:	e1530005 	cmp	r3, r5
 e00d564:	35825030 	strcc	r5, [r2, #48]	; 0x30
 e00d568:	e28dd034 	add	sp, sp, #52	; 0x34
 e00d56c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00d570:	e300336b 	movw	r3, #875	; 0x36b
 e00d574:	e3051084 	movw	r1, #20612	; 0x5084
 e00d578:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d57c:	e58d3004 	str	r3, [sp, #4]
 e00d580:	e58d1000 	str	r1, [sp]
 e00d584:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00d588:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d58c:	e3041084 	movw	r1, #16516	; 0x4084
 e00d590:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d594:	e3a02049 	mov	r2, #73	; 0x49
 e00d598:	e3a00004 	mov	r0, #4
 e00d59c:	ebfff570 	bl	e00ab64 <rtk_log_write>
 e00d5a0:	eafffffe 	b	e00d5a0 <mmap_add_region_ctx+0x404>
 e00d5a4:	e3000377 	movw	r0, #887	; 0x377
 e00d5a8:	e305c084 	movw	ip, #20612	; 0x5084
 e00d5ac:	e340ce01 	movt	ip, #3585	; 0xe01
 e00d5b0:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00d5b4:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d5b8:	e3041084 	movw	r1, #16516	; 0x4084
 e00d5bc:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d5c0:	e58d0004 	str	r0, [sp, #4]
 e00d5c4:	e3a02049 	mov	r2, #73	; 0x49
 e00d5c8:	e3a00004 	mov	r0, #4
 e00d5cc:	e58dc000 	str	ip, [sp]
 e00d5d0:	ebfff563 	bl	e00ab64 <rtk_log_write>
 e00d5d4:	eafffffe 	b	e00d5d4 <mmap_add_region_ctx+0x438>
 e00d5d8:	e3e01015 	mvn	r1, #21
 e00d5dc:	eaffff73 	b	e00d3b0 <mmap_add_region_ctx+0x214>
 e00d5e0:	e3e01021 	mvn	r1, #33	; 0x21
 e00d5e4:	eaffff71 	b	e00d3b0 <mmap_add_region_ctx+0x214>
 e00d5e8:	e59d4014 	ldr	r4, [sp, #20]
 e00d5ec:	eaffffc2 	b	e00d4fc <mmap_add_region_ctx+0x360>
 e00d5f0:	e3e0100b 	mvn	r1, #11
 e00d5f4:	eaffff6d 	b	e00d3b0 <mmap_add_region_ctx+0x214>

0e00d5f8 <init_xlat_tables_ctx>:
 e00d5f8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e00d5fc:	e2504000 	subs	r4, r0, #0
 e00d600:	e24dd018 	sub	sp, sp, #24
 e00d604:	0a00007b 	beq	e00d7f8 <init_xlat_tables_ctx+0x200>
 e00d608:	e5d43038 	ldrb	r3, [r4, #56]	; 0x38
 e00d60c:	e3530000 	cmp	r3, #0
 e00d610:	1a00005e 	bne	e00d790 <init_xlat_tables_ctx+0x198>
 e00d614:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
 e00d618:	e2433001 	sub	r3, r3, #1
 e00d61c:	e3530002 	cmp	r3, #2
 e00d620:	9a00000c 	bls	e00d658 <init_xlat_tables_ctx+0x60>
 e00d624:	e30004d7 	movw	r0, #1239	; 0x4d7
 e00d628:	e305c084 	movw	ip, #20612	; 0x5084
 e00d62c:	e340ce01 	movt	ip, #3585	; 0xe01
 e00d630:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00d634:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d638:	e3041084 	movw	r1, #16516	; 0x4084
 e00d63c:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d640:	e58d0004 	str	r0, [sp, #4]
 e00d644:	e3a02049 	mov	r2, #73	; 0x49
 e00d648:	e3a00004 	mov	r0, #4
 e00d64c:	e58dc000 	str	ip, [sp]
 e00d650:	ebfff543 	bl	e00ab64 <rtk_log_write>
 e00d654:	eafffffe 	b	e00d654 <init_xlat_tables_ctx+0x5c>
 e00d658:	eb000121 	bl	e00dae4 <is_mmu_enabled_ctx>
 e00d65c:	e3500000 	cmp	r0, #0
 e00d660:	1a000057 	bne	e00d7c4 <init_xlat_tables_ctx+0x1cc>
 e00d664:	e5946008 	ldr	r6, [r4, #8]
 e00d668:	e594500c 	ldr	r5, [r4, #12]
 e00d66c:	eb0000d8 	bl	e00d9d4 <xlat_get_min_virt_addr_space_size>
 e00d670:	e2403001 	sub	r3, r0, #1
 e00d674:	e1560003 	cmp	r6, r3
 e00d678:	3a000078 	bcc	e00d860 <init_xlat_tables_ctx+0x268>
 e00d67c:	e5942008 	ldr	r2, [r4, #8]
 e00d680:	e2823001 	add	r3, r2, #1
 e00d684:	e0136002 	ands	r6, r3, r2
 e00d688:	1a000067 	bne	e00d82c <init_xlat_tables_ctx+0x234>
 e00d68c:	e1a00005 	mov	r0, r5
 e00d690:	eb0000ca 	bl	e00d9c0 <xlat_mmap_print>
 e00d694:	e5942024 	ldr	r2, [r4, #36]	; 0x24
 e00d698:	e3520000 	cmp	r2, #0
 e00d69c:	0a000008 	beq	e00d6c4 <init_xlat_tables_ctx+0xcc>
 e00d6a0:	f2c00010 	vmov.i32	d16, #0	; 0x00000000
 e00d6a4:	e1a03006 	mov	r3, r6
 e00d6a8:	e5942020 	ldr	r2, [r4, #32]
 e00d6ac:	e0822183 	add	r2, r2, r3, lsl #3
 e00d6b0:	e2833001 	add	r3, r3, #1
 e00d6b4:	edc20b00 	vstr	d16, [r2]
 e00d6b8:	e5942024 	ldr	r2, [r4, #36]	; 0x24
 e00d6bc:	e1520003 	cmp	r2, r3
 e00d6c0:	8afffff8 	bhi	e00d6a8 <init_xlat_tables_ctx+0xb0>
 e00d6c4:	e5943018 	ldr	r3, [r4, #24]
 e00d6c8:	e3530000 	cmp	r3, #0
 e00d6cc:	da00000e 	ble	e00d70c <init_xlat_tables_ctx+0x114>
 e00d6d0:	f2c00010 	vmov.i32	d16, #0	; 0x00000000
 e00d6d4:	e3a00000 	mov	r0, #0
 e00d6d8:	e1a01600 	lsl	r1, r0, #12
 e00d6dc:	e3a02000 	mov	r2, #0
 e00d6e0:	e5943014 	ldr	r3, [r4, #20]
 e00d6e4:	e0833001 	add	r3, r3, r1
 e00d6e8:	e0833182 	add	r3, r3, r2, lsl #3
 e00d6ec:	e2822001 	add	r2, r2, #1
 e00d6f0:	e3520c02 	cmp	r2, #512	; 0x200
 e00d6f4:	edc30b00 	vstr	d16, [r3]
 e00d6f8:	1afffff8 	bne	e00d6e0 <init_xlat_tables_ctx+0xe8>
 e00d6fc:	e5943018 	ldr	r3, [r4, #24]
 e00d700:	e2800001 	add	r0, r0, #1
 e00d704:	e1530000 	cmp	r3, r0
 e00d708:	cafffff2 	bgt	e00d6d8 <init_xlat_tables_ctx+0xe0>
 e00d70c:	e595300c 	ldr	r3, [r5, #12]
 e00d710:	e3530000 	cmp	r3, #0
 e00d714:	1a00000a 	bne	e00d744 <init_xlat_tables_ctx+0x14c>
 e00d718:	ea00005d 	b	e00d894 <init_xlat_tables_ctx+0x29c>
 e00d71c:	e5950008 	ldr	r0, [r5, #8]
 e00d720:	e595200c 	ldr	r2, [r5, #12]
 e00d724:	e0803002 	add	r3, r0, r2
 e00d728:	e2433001 	sub	r3, r3, #1
 e00d72c:	e1530006 	cmp	r3, r6
 e00d730:	1a000075 	bne	e00d90c <init_xlat_tables_ctx+0x314>
 e00d734:	e5953024 	ldr	r3, [r5, #36]	; 0x24
 e00d738:	e2855018 	add	r5, r5, #24
 e00d73c:	e3530000 	cmp	r3, #0
 e00d740:	0a000053 	beq	e00d894 <init_xlat_tables_ctx+0x29c>
 e00d744:	e5942034 	ldr	r2, [r4, #52]	; 0x34
 e00d748:	e5940024 	ldr	r0, [r4, #36]	; 0x24
 e00d74c:	e5943020 	ldr	r3, [r4, #32]
 e00d750:	e1a01005 	mov	r1, r5
 e00d754:	e58d2004 	str	r2, [sp, #4]
 e00d758:	e58d0000 	str	r0, [sp]
 e00d75c:	e3a02000 	mov	r2, #0
 e00d760:	e1a00004 	mov	r0, r4
 e00d764:	ebfffd88 	bl	e00cd8c <xlat_tables_map_region>
 e00d768:	e5947020 	ldr	r7, [r4, #32]
 e00d76c:	e5948024 	ldr	r8, [r4, #36]	; 0x24
 e00d770:	e1a06000 	mov	r6, r0
 e00d774:	eb000098 	bl	e00d9dc <is_dcache_enabled>
 e00d778:	e3500000 	cmp	r0, #0
 e00d77c:	0affffe6 	beq	e00d71c <init_xlat_tables_ctx+0x124>
 e00d780:	e1a01188 	lsl	r1, r8, #3
 e00d784:	e1a00007 	mov	r0, r7
 e00d788:	eb0001f9 	bl	e00df74 <clean_dcache_range>
 e00d78c:	eaffffe2 	b	e00d71c <init_xlat_tables_ctx+0x124>
 e00d790:	e30004d6 	movw	r0, #1238	; 0x4d6
 e00d794:	e305c084 	movw	ip, #20612	; 0x5084
 e00d798:	e340ce01 	movt	ip, #3585	; 0xe01
 e00d79c:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00d7a0:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d7a4:	e3041084 	movw	r1, #16516	; 0x4084
 e00d7a8:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d7ac:	e58d0004 	str	r0, [sp, #4]
 e00d7b0:	e3a02049 	mov	r2, #73	; 0x49
 e00d7b4:	e3a00004 	mov	r0, #4
 e00d7b8:	e58dc000 	str	ip, [sp]
 e00d7bc:	ebfff4e8 	bl	e00ab64 <rtk_log_write>
 e00d7c0:	eafffffe 	b	e00d7c0 <init_xlat_tables_ctx+0x1c8>
 e00d7c4:	e30004da 	movw	r0, #1242	; 0x4da
 e00d7c8:	e305c084 	movw	ip, #20612	; 0x5084
 e00d7cc:	e340ce01 	movt	ip, #3585	; 0xe01
 e00d7d0:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00d7d4:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d7d8:	e3041084 	movw	r1, #16516	; 0x4084
 e00d7dc:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d7e0:	e58d0004 	str	r0, [sp, #4]
 e00d7e4:	e3a02049 	mov	r2, #73	; 0x49
 e00d7e8:	e3a00004 	mov	r0, #4
 e00d7ec:	e58dc000 	str	ip, [sp]
 e00d7f0:	ebfff4db 	bl	e00ab64 <rtk_log_write>
 e00d7f4:	eafffffe 	b	e00d7f4 <init_xlat_tables_ctx+0x1fc>
 e00d7f8:	e30004d5 	movw	r0, #1237	; 0x4d5
 e00d7fc:	e305c084 	movw	ip, #20612	; 0x5084
 e00d800:	e340ce01 	movt	ip, #3585	; 0xe01
 e00d804:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00d808:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d80c:	e3041084 	movw	r1, #16516	; 0x4084
 e00d810:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d814:	e58d0004 	str	r0, [sp, #4]
 e00d818:	e3a02049 	mov	r2, #73	; 0x49
 e00d81c:	e3a00004 	mov	r0, #4
 e00d820:	e58dc000 	str	ip, [sp]
 e00d824:	ebfff4ce 	bl	e00ab64 <rtk_log_write>
 e00d828:	eafffffe 	b	e00d828 <init_xlat_tables_ctx+0x230>
 e00d82c:	e30004e1 	movw	r0, #1249	; 0x4e1
 e00d830:	e305c084 	movw	ip, #20612	; 0x5084
 e00d834:	e340ce01 	movt	ip, #3585	; 0xe01
 e00d838:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00d83c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d840:	e3041084 	movw	r1, #16516	; 0x4084
 e00d844:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d848:	e58d0004 	str	r0, [sp, #4]
 e00d84c:	e3a02049 	mov	r2, #73	; 0x49
 e00d850:	e3a00004 	mov	r0, #4
 e00d854:	e58dc000 	str	ip, [sp]
 e00d858:	ebfff4c1 	bl	e00ab64 <rtk_log_write>
 e00d85c:	eafffffe 	b	e00d85c <init_xlat_tables_ctx+0x264>
 e00d860:	e30004de 	movw	r0, #1246	; 0x4de
 e00d864:	e305c084 	movw	ip, #20612	; 0x5084
 e00d868:	e340ce01 	movt	ip, #3585	; 0xe01
 e00d86c:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00d870:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d874:	e3041084 	movw	r1, #16516	; 0x4084
 e00d878:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d87c:	e58d0004 	str	r0, [sp, #4]
 e00d880:	e3a02049 	mov	r2, #73	; 0x49
 e00d884:	e3a00004 	mov	r0, #4
 e00d888:	e58dc000 	str	ip, [sp]
 e00d88c:	ebfff4b4 	bl	e00ab64 <rtk_log_write>
 e00d890:	eafffffe 	b	e00d890 <init_xlat_tables_ctx+0x298>
 e00d894:	e5946000 	ldr	r6, [r4]
 e00d898:	e5945004 	ldr	r5, [r4, #4]
 e00d89c:	eb000049 	bl	e00d9c8 <xlat_arch_get_max_supported_pa>
 e00d8a0:	e1500006 	cmp	r0, r6
 e00d8a4:	e0d13005 	sbcs	r3, r1, r5
 e00d8a8:	3a000024 	bcc	e00d940 <init_xlat_tables_ctx+0x348>
 e00d8ac:	e5942030 	ldr	r2, [r4, #48]	; 0x30
 e00d8b0:	e5943008 	ldr	r3, [r4, #8]
 e00d8b4:	e1520003 	cmp	r2, r3
 e00d8b8:	8a000033 	bhi	e00d98c <init_xlat_tables_ctx+0x394>
 e00d8bc:	e5941028 	ldr	r1, [r4, #40]	; 0x28
 e00d8c0:	e5940000 	ldr	r0, [r4]
 e00d8c4:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
 e00d8c8:	e5942004 	ldr	r2, [r4, #4]
 e00d8cc:	e1500001 	cmp	r0, r1
 e00d8d0:	e0d23003 	sbcs	r3, r2, r3
 e00d8d4:	2a000026 	bcs	e00d974 <init_xlat_tables_ctx+0x37c>
 e00d8d8:	e3000508 	movw	r0, #1288	; 0x508
 e00d8dc:	e305c084 	movw	ip, #20612	; 0x5084
 e00d8e0:	e340ce01 	movt	ip, #3585	; 0xe01
 e00d8e4:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00d8e8:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d8ec:	e3041084 	movw	r1, #16516	; 0x4084
 e00d8f0:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d8f4:	e58d0004 	str	r0, [sp, #4]
 e00d8f8:	e3a02049 	mov	r2, #73	; 0x49
 e00d8fc:	e3a00004 	mov	r0, #4
 e00d900:	e58dc000 	str	ip, [sp]
 e00d904:	ebfff496 	bl	e00ab64 <rtk_log_write>
 e00d908:	eafffffe 	b	e00d908 <init_xlat_tables_ctx+0x310>
 e00d90c:	e5953010 	ldr	r3, [r5, #16]
 e00d910:	e1cd21f0 	strd	r2, [sp, #16]
 e00d914:	e3041084 	movw	r1, #16516	; 0x4084
 e00d918:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d91c:	e1c540d0 	ldrd	r4, [r5]
 e00d920:	e3053120 	movw	r3, #20768	; 0x5120
 e00d924:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d928:	e58d0000 	str	r0, [sp]
 e00d92c:	e3a02049 	mov	r2, #73	; 0x49
 e00d930:	e3a00004 	mov	r0, #4
 e00d934:	e1cd40f8 	strd	r4, [sp, #8]
 e00d938:	ebfff489 	bl	e00ab64 <rtk_log_write>
 e00d93c:	eafffffe 	b	e00d93c <init_xlat_tables_ctx+0x344>
 e00d940:	e3000506 	movw	r0, #1286	; 0x506
 e00d944:	e305c084 	movw	ip, #20612	; 0x5084
 e00d948:	e340ce01 	movt	ip, #3585	; 0xe01
 e00d94c:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00d950:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d954:	e3041084 	movw	r1, #16516	; 0x4084
 e00d958:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d95c:	e58d0004 	str	r0, [sp, #4]
 e00d960:	e3a02049 	mov	r2, #73	; 0x49
 e00d964:	e3a00004 	mov	r0, #4
 e00d968:	e58dc000 	str	ip, [sp]
 e00d96c:	ebfff47c 	bl	e00ab64 <rtk_log_write>
 e00d970:	eafffffe 	b	e00d970 <init_xlat_tables_ctx+0x378>
 e00d974:	e3a03001 	mov	r3, #1
 e00d978:	e1a00004 	mov	r0, r4
 e00d97c:	e5c43038 	strb	r3, [r4, #56]	; 0x38
 e00d980:	e28dd018 	add	sp, sp, #24
 e00d984:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 e00d988:	ea00000d 	b	e00d9c4 <xlat_tables_print>
 e00d98c:	e3000507 	movw	r0, #1287	; 0x507
 e00d990:	e305c084 	movw	ip, #20612	; 0x5084
 e00d994:	e340ce01 	movt	ip, #3585	; 0xe01
 e00d998:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00d99c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d9a0:	e3041084 	movw	r1, #16516	; 0x4084
 e00d9a4:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d9a8:	e58d0004 	str	r0, [sp, #4]
 e00d9ac:	e3a02049 	mov	r2, #73	; 0x49
 e00d9b0:	e3a00004 	mov	r0, #4
 e00d9b4:	e58dc000 	str	ip, [sp]
 e00d9b8:	ebfff469 	bl	e00ab64 <rtk_log_write>
 e00d9bc:	eafffffe 	b	e00d9bc <init_xlat_tables_ctx+0x3c4>

0e00d9c0 <xlat_mmap_print>:
 e00d9c0:	e12fff1e 	bx	lr

0e00d9c4 <xlat_tables_print>:
 e00d9c4:	e12fff1e 	bx	lr

0e00d9c8 <xlat_arch_get_max_supported_pa>:
 e00d9c8:	e3a010ff 	mov	r1, #255	; 0xff
 e00d9cc:	e3e00000 	mvn	r0, #0
 e00d9d0:	e12fff1e 	bx	lr

0e00d9d4 <xlat_get_min_virt_addr_space_size>:
 e00d9d4:	e3a00402 	mov	r0, #33554432	; 0x2000000
 e00d9d8:	e12fff1e 	bx	lr

0e00d9dc <is_dcache_enabled>:
 e00d9dc:	e10f3000 	mrs	r3, CPSR
 e00d9e0:	e203301f 	and	r3, r3, #31
 e00d9e4:	e353001a 	cmp	r3, #26
 e00d9e8:	0a000002 	beq	e00d9f8 <is_dcache_enabled+0x1c>
 e00d9ec:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
 e00d9f0:	e7e00150 	ubfx	r0, r0, #2, #1
 e00d9f4:	e12fff1e 	bx	lr
 e00d9f8:	ee910f10 	mrc	15, 4, r0, cr1, cr0, {0}
 e00d9fc:	e7e00150 	ubfx	r0, r0, #2, #1
 e00da00:	e12fff1e 	bx	lr

0e00da04 <xlat_arch_regime_get_xn_desc>:
 e00da04:	e3500001 	cmp	r0, #1
 e00da08:	0a000013 	beq	e00da5c <xlat_arch_regime_get_xn_desc+0x58>
 e00da0c:	e3500002 	cmp	r0, #2
 e00da10:	0a00000e 	beq	e00da50 <xlat_arch_regime_get_xn_desc+0x4c>
 e00da14:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e00da18:	e3a00056 	mov	r0, #86	; 0x56
 e00da1c:	e24dd00c 	sub	sp, sp, #12
 e00da20:	e305c170 	movw	ip, #20848	; 0x5170
 e00da24:	e340ce01 	movt	ip, #3585	; 0xe01
 e00da28:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00da2c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00da30:	e3041084 	movw	r1, #16516	; 0x4084
 e00da34:	e3401e01 	movt	r1, #3585	; 0xe01
 e00da38:	e58d0004 	str	r0, [sp, #4]
 e00da3c:	e3a02049 	mov	r2, #73	; 0x49
 e00da40:	e3a00004 	mov	r0, #4
 e00da44:	e58dc000 	str	ip, [sp]
 e00da48:	ebfff445 	bl	e00ab64 <rtk_log_write>
 e00da4c:	eafffffe 	b	e00da4c <xlat_arch_regime_get_xn_desc+0x48>
 e00da50:	e3a00000 	mov	r0, #0
 e00da54:	e3a01501 	mov	r1, #4194304	; 0x400000
 e00da58:	e12fff1e 	bx	lr
 e00da5c:	e3a00000 	mov	r0, #0
 e00da60:	e3a01606 	mov	r1, #6291456	; 0x600000
 e00da64:	e12fff1e 	bx	lr

0e00da68 <xlat_arch_current_el>:
 e00da68:	e10f3000 	mrs	r3, CPSR
 e00da6c:	e203301f 	and	r3, r3, #31
 e00da70:	e353001a 	cmp	r3, #26
 e00da74:	0a000018 	beq	e00dadc <xlat_arch_current_el+0x74>
 e00da78:	e10f3000 	mrs	r3, CPSR
 e00da7c:	e203301f 	and	r3, r3, #31
 e00da80:	e3530013 	cmp	r3, #19
 e00da84:	0a000012 	beq	e00dad4 <xlat_arch_current_el+0x6c>
 e00da88:	e10f3000 	mrs	r3, CPSR
 e00da8c:	e203301f 	and	r3, r3, #31
 e00da90:	e3530016 	cmp	r3, #22
 e00da94:	0a00000e 	beq	e00dad4 <xlat_arch_current_el+0x6c>
 e00da98:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e00da9c:	e3a0008a 	mov	r0, #138	; 0x8a
 e00daa0:	e24dd00c 	sub	sp, sp, #12
 e00daa4:	e305c170 	movw	ip, #20848	; 0x5170
 e00daa8:	e340ce01 	movt	ip, #3585	; 0xe01
 e00daac:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00dab0:	e3403e01 	movt	r3, #3585	; 0xe01
 e00dab4:	e3041084 	movw	r1, #16516	; 0x4084
 e00dab8:	e3401e01 	movt	r1, #3585	; 0xe01
 e00dabc:	e58d0004 	str	r0, [sp, #4]
 e00dac0:	e3a02049 	mov	r2, #73	; 0x49
 e00dac4:	e3a00004 	mov	r0, #4
 e00dac8:	e58dc000 	str	ip, [sp]
 e00dacc:	ebfff424 	bl	e00ab64 <rtk_log_write>
 e00dad0:	eafffffe 	b	e00dad0 <xlat_arch_current_el+0x68>
 e00dad4:	e3a00001 	mov	r0, #1
 e00dad8:	e12fff1e 	bx	lr
 e00dadc:	e3a00002 	mov	r0, #2
 e00dae0:	e12fff1e 	bx	lr

0e00dae4 <is_mmu_enabled_ctx>:
 e00dae4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e00dae8:	e590303c 	ldr	r3, [r0, #60]	; 0x3c
 e00daec:	e24dd00c 	sub	sp, sp, #12
 e00daf0:	e3530001 	cmp	r3, #1
 e00daf4:	0a00001e 	beq	e00db74 <is_mmu_enabled_ctx+0x90>
 e00daf8:	e3530002 	cmp	r3, #2
 e00dafc:	0a00000c 	beq	e00db34 <is_mmu_enabled_ctx+0x50>
 e00db00:	e3a00042 	mov	r0, #66	; 0x42
 e00db04:	e305c170 	movw	ip, #20848	; 0x5170
 e00db08:	e340ce01 	movt	ip, #3585	; 0xe01
 e00db0c:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00db10:	e3403e01 	movt	r3, #3585	; 0xe01
 e00db14:	e3041084 	movw	r1, #16516	; 0x4084
 e00db18:	e3401e01 	movt	r1, #3585	; 0xe01
 e00db1c:	e58d0004 	str	r0, [sp, #4]
 e00db20:	e3a02049 	mov	r2, #73	; 0x49
 e00db24:	e3a00004 	mov	r0, #4
 e00db28:	e58dc000 	str	ip, [sp]
 e00db2c:	ebfff40c 	bl	e00ab64 <rtk_log_write>
 e00db30:	eafffffe 	b	e00db30 <is_mmu_enabled_ctx+0x4c>
 e00db34:	ebffffcb 	bl	e00da68 <xlat_arch_current_el>
 e00db38:	e3500002 	cmp	r0, #2
 e00db3c:	0a00001c 	beq	e00dbb4 <is_mmu_enabled_ctx+0xd0>
 e00db40:	e3a00043 	mov	r0, #67	; 0x43
 e00db44:	e305c170 	movw	ip, #20848	; 0x5170
 e00db48:	e340ce01 	movt	ip, #3585	; 0xe01
 e00db4c:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00db50:	e3403e01 	movt	r3, #3585	; 0xe01
 e00db54:	e3041084 	movw	r1, #16516	; 0x4084
 e00db58:	e3401e01 	movt	r1, #3585	; 0xe01
 e00db5c:	e58d0004 	str	r0, [sp, #4]
 e00db60:	e3a02049 	mov	r2, #73	; 0x49
 e00db64:	e3a00004 	mov	r0, #4
 e00db68:	e58dc000 	str	ip, [sp]
 e00db6c:	ebfff3fc 	bl	e00ab64 <rtk_log_write>
 e00db70:	eafffffe 	b	e00db70 <is_mmu_enabled_ctx+0x8c>
 e00db74:	ebffffbb 	bl	e00da68 <xlat_arch_current_el>
 e00db78:	e3500001 	cmp	r0, #1
 e00db7c:	0a000010 	beq	e00dbc4 <is_mmu_enabled_ctx+0xe0>
 e00db80:	e3a0003f 	mov	r0, #63	; 0x3f
 e00db84:	e305c170 	movw	ip, #20848	; 0x5170
 e00db88:	e340ce01 	movt	ip, #3585	; 0xe01
 e00db8c:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00db90:	e3403e01 	movt	r3, #3585	; 0xe01
 e00db94:	e3041084 	movw	r1, #16516	; 0x4084
 e00db98:	e3401e01 	movt	r1, #3585	; 0xe01
 e00db9c:	e58d0004 	str	r0, [sp, #4]
 e00dba0:	e3a02049 	mov	r2, #73	; 0x49
 e00dba4:	e3a00004 	mov	r0, #4
 e00dba8:	e58dc000 	str	ip, [sp]
 e00dbac:	ebfff3ec 	bl	e00ab64 <rtk_log_write>
 e00dbb0:	eafffffe 	b	e00dbb0 <is_mmu_enabled_ctx+0xcc>
 e00dbb4:	ee910f10 	mrc	15, 4, r0, cr1, cr0, {0}
 e00dbb8:	e2000001 	and	r0, r0, #1
 e00dbbc:	e28dd00c 	add	sp, sp, #12
 e00dbc0:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
 e00dbc4:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
 e00dbc8:	e2000001 	and	r0, r0, #1
 e00dbcc:	eafffffa 	b	e00dbbc <is_mmu_enabled_ctx+0xd8>

0e00dbd0 <setup_mmu_cfg>:
 e00dbd0:	e92d4070 	push	{r4, r5, r6, lr}
 e00dbd4:	e1a04000 	mov	r4, r0
 e00dbd8:	e24dd010 	sub	sp, sp, #16
 e00dbdc:	e1a05001 	mov	r5, r1
 e00dbe0:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
 e00dbe4:	e3530001 	cmp	r3, #1
 e00dbe8:	0a000030 	beq	e00dcb0 <setup_mmu_cfg+0xe0>
 e00dbec:	e3530002 	cmp	r3, #2
 e00dbf0:	1a000021 	bne	e00dc7c <setup_mmu_cfg+0xac>
 e00dbf4:	e10f3000 	mrs	r3, CPSR
 e00dbf8:	e203301f 	and	r3, r3, #31
 e00dbfc:	e353001a 	cmp	r3, #26
 e00dc00:	03a06c35 	moveq	r6, #13568	; 0x3500
 e00dc04:	03486080 	movteq	r6, #32896	; 0x8080
 e00dc08:	1a000033 	bne	e00dcdc <setup_mmu_cfg+0x10c>
 e00dc0c:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
 e00dc10:	e3730001 	cmn	r3, #1
 e00dc14:	0a00000a 	beq	e00dc44 <setup_mmu_cfg+0x74>
 e00dc18:	e2830001 	add	r0, r3, #1
 e00dc1c:	e3500402 	cmp	r0, #33554432	; 0x2000000
 e00dc20:	3a000047 	bcc	e00dd44 <setup_mmu_cfg+0x174>
 e00dc24:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
 e00dc28:	e0131000 	ands	r1, r3, r0
 e00dc2c:	1a000051 	bne	e00dd78 <setup_mmu_cfg+0x1a8>
 e00dc30:	e58d200c 	str	r2, [sp, #12]
 e00dc34:	ebffc9e5 	bl	e0003d0 <__ctzdi2>
 e00dc38:	e59d200c 	ldr	r2, [sp, #12]
 e00dc3c:	e2603020 	rsb	r3, r0, #32
 e00dc40:	e1866003 	orr	r6, r6, r3
 e00dc44:	e3150002 	tst	r5, #2
 e00dc48:	03866c35 	orreq	r6, r6, #13568	; 0x3500
 e00dc4c:	ee103fd2 	mrc	15, 0, r3, cr0, cr2, {6}
 e00dc50:	e28f1f56 	add	r1, pc, #344	; 0x158
 e00dc54:	e1c100d0 	ldrd	r0, [r1]
 e00dc58:	e3130a0f 	tst	r3, #61440	; 0xf000
 e00dc5c:	13822001 	orrne	r2, r2, #1
 e00dc60:	e3a03000 	mov	r3, #0
 e00dc64:	e1c400f0 	strd	r0, [r4]
 e00dc68:	e5846008 	str	r6, [r4, #8]
 e00dc6c:	e584300c 	str	r3, [r4, #12]
 e00dc70:	e1c421f0 	strd	r2, [r4, #16]
 e00dc74:	e28dd010 	add	sp, sp, #16
 e00dc78:	e8bd8070 	pop	{r4, r5, r6, pc}
 e00dc7c:	e3a000ba 	mov	r0, #186	; 0xba
 e00dc80:	e305c170 	movw	ip, #20848	; 0x5170
 e00dc84:	e340ce01 	movt	ip, #3585	; 0xe01
 e00dc88:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00dc8c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00dc90:	e3041084 	movw	r1, #16516	; 0x4084
 e00dc94:	e3401e01 	movt	r1, #3585	; 0xe01
 e00dc98:	e58d0004 	str	r0, [sp, #4]
 e00dc9c:	e3a02049 	mov	r2, #73	; 0x49
 e00dca0:	e3a00004 	mov	r0, #4
 e00dca4:	e58dc000 	str	ip, [sp]
 e00dca8:	ebfff3ad 	bl	e00ab64 <rtk_log_write>
 e00dcac:	eafffffe 	b	e00dcac <setup_mmu_cfg+0xdc>
 e00dcb0:	e10f3000 	mrs	r3, CPSR
 e00dcb4:	e203301f 	and	r3, r3, #31
 e00dcb8:	e3530013 	cmp	r3, #19
 e00dcbc:	0a000003 	beq	e00dcd0 <setup_mmu_cfg+0x100>
 e00dcc0:	e10f3000 	mrs	r3, CPSR
 e00dcc4:	e203301f 	and	r3, r3, #31
 e00dcc8:	e3530016 	cmp	r3, #22
 e00dccc:	1a00000f 	bne	e00dd10 <setup_mmu_cfg+0x140>
 e00dcd0:	e3a06000 	mov	r6, #0
 e00dcd4:	e3486080 	movt	r6, #32896	; 0x8080
 e00dcd8:	eaffffcb 	b	e00dc0c <setup_mmu_cfg+0x3c>
 e00dcdc:	e3a000bb 	mov	r0, #187	; 0xbb
 e00dce0:	e305c170 	movw	ip, #20848	; 0x5170
 e00dce4:	e340ce01 	movt	ip, #3585	; 0xe01
 e00dce8:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00dcec:	e3403e01 	movt	r3, #3585	; 0xe01
 e00dcf0:	e3041084 	movw	r1, #16516	; 0x4084
 e00dcf4:	e3401e01 	movt	r1, #3585	; 0xe01
 e00dcf8:	e58d0004 	str	r0, [sp, #4]
 e00dcfc:	e3a02049 	mov	r2, #73	; 0x49
 e00dd00:	e3a00004 	mov	r0, #4
 e00dd04:	e58dc000 	str	ip, [sp]
 e00dd08:	ebfff395 	bl	e00ab64 <rtk_log_write>
 e00dd0c:	eafffffe 	b	e00dd0c <setup_mmu_cfg+0x13c>
 e00dd10:	e3a000b3 	mov	r0, #179	; 0xb3
 e00dd14:	e305c170 	movw	ip, #20848	; 0x5170
 e00dd18:	e340ce01 	movt	ip, #3585	; 0xe01
 e00dd1c:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00dd20:	e3403e01 	movt	r3, #3585	; 0xe01
 e00dd24:	e3041084 	movw	r1, #16516	; 0x4084
 e00dd28:	e3401e01 	movt	r1, #3585	; 0xe01
 e00dd2c:	e58d0004 	str	r0, [sp, #4]
 e00dd30:	e3a02049 	mov	r2, #73	; 0x49
 e00dd34:	e3a00004 	mov	r0, #4
 e00dd38:	e58dc000 	str	ip, [sp]
 e00dd3c:	ebfff388 	bl	e00ab64 <rtk_log_write>
 e00dd40:	eafffffe 	b	e00dd40 <setup_mmu_cfg+0x170>
 e00dd44:	e3a000ce 	mov	r0, #206	; 0xce
 e00dd48:	e305c170 	movw	ip, #20848	; 0x5170
 e00dd4c:	e340ce01 	movt	ip, #3585	; 0xe01
 e00dd50:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00dd54:	e3403e01 	movt	r3, #3585	; 0xe01
 e00dd58:	e3041084 	movw	r1, #16516	; 0x4084
 e00dd5c:	e3401e01 	movt	r1, #3585	; 0xe01
 e00dd60:	e58d0004 	str	r0, [sp, #4]
 e00dd64:	e3a02049 	mov	r2, #73	; 0x49
 e00dd68:	e3a00004 	mov	r0, #4
 e00dd6c:	e58dc000 	str	ip, [sp]
 e00dd70:	ebfff37b 	bl	e00ab64 <rtk_log_write>
 e00dd74:	eafffffe 	b	e00dd74 <setup_mmu_cfg+0x1a4>
 e00dd78:	e3a000d2 	mov	r0, #210	; 0xd2
 e00dd7c:	e305c170 	movw	ip, #20848	; 0x5170
 e00dd80:	e340ce01 	movt	ip, #3585	; 0xe01
 e00dd84:	e3043ff0 	movw	r3, #20464	; 0x4ff0
 e00dd88:	e3403e01 	movt	r3, #3585	; 0xe01
 e00dd8c:	e3041084 	movw	r1, #16516	; 0x4084
 e00dd90:	e3401e01 	movt	r1, #3585	; 0xe01
 e00dd94:	e58d0004 	str	r0, [sp, #4]
 e00dd98:	e3a02049 	mov	r2, #73	; 0x49
 e00dd9c:	e3a00004 	mov	r0, #4
 e00dda0:	e58dc000 	str	ip, [sp]
 e00dda4:	ebfff36e 	bl	e00ab64 <rtk_log_write>
 e00dda8:	eafffffe 	b	e00dda8 <setup_mmu_cfg+0x1d8>
 e00ddac:	e320f000 	nop	{0}
 e00ddb0:	004404ff 	.word	0x004404ff
 e00ddb4:	00000000 	.word	0x00000000

0e00ddb8 <setupMMUTable>:
 e00ddb8:	e3500001 	cmp	r0, #1
 e00ddbc:	0a000001 	beq	e00ddc8 <setupMMUTable+0x10>
 e00ddc0:	e3a00000 	mov	r0, #0
 e00ddc4:	eafffb75 	b	e00cba0 <enable_mmu_svc_mon>
 e00ddc8:	e92d4010 	push	{r4, lr}
 e00ddcc:	e3082674 	movw	r2, #34420	; 0x8674
 e00ddd0:	e346200a 	movt	r2, #24586	; 0x600a
 e00ddd4:	e24dd008 	sub	sp, sp, #8
 e00ddd8:	e3030000 	movw	r0, #12288	; 0x3000
 e00dddc:	e346000a 	movt	r0, #24586	; 0x600a
 e00dde0:	e0422000 	sub	r2, r2, r0
 e00dde4:	e3a01000 	mov	r1, #0
 e00dde8:	ebfff4a5 	bl	e00b084 <_memset>
 e00ddec:	e3a03302 	mov	r3, #134217728	; 0x8000000
 e00ddf0:	e1a02003 	mov	r2, r3
 e00ddf4:	e3a04012 	mov	r4, #18
 e00ddf8:	e3a00302 	mov	r0, #134217728	; 0x8000000
 e00ddfc:	e3a01000 	mov	r1, #0
 e00de00:	e58d4000 	str	r4, [sp]
 e00de04:	ebfffb29 	bl	e00cab0 <mmap_add_region>
 e00de08:	e3a03202 	mov	r3, #536870912	; 0x20000000
 e00de0c:	e1a02003 	mov	r2, r3
 e00de10:	e3a0c01a 	mov	ip, #26
 e00de14:	e3a00202 	mov	r0, #536870912	; 0x20000000
 e00de18:	e3a01000 	mov	r1, #0
 e00de1c:	e58dc000 	str	ip, [sp]
 e00de20:	ebfffb22 	bl	e00cab0 <mmap_add_region>
 e00de24:	e3a0c018 	mov	ip, #24
 e00de28:	e3a00101 	mov	r0, #1073741824	; 0x40000000
 e00de2c:	e58dc000 	str	ip, [sp]
 e00de30:	e3a01000 	mov	r1, #0
 e00de34:	e3a03202 	mov	r3, #536870912	; 0x20000000
 e00de38:	e3a02101 	mov	r2, #1073741824	; 0x40000000
 e00de3c:	ebfffb1b 	bl	e00cab0 <mmap_add_region>
 e00de40:	e3042000 	movw	r2, #16384	; 0x4000
 e00de44:	e3462009 	movt	r2, #24585	; 0x6009
 e00de48:	e3053000 	movw	r3, #20480	; 0x5000
 e00de4c:	e3463009 	movt	r3, #24585	; 0x6009
 e00de50:	e0433002 	sub	r3, r3, r2
 e00de54:	e1a00002 	mov	r0, r2
 e00de58:	e1a01fc2 	asr	r1, r2, #31
 e00de5c:	e58d4000 	str	r4, [sp]
 e00de60:	ebfffb12 	bl	e00cab0 <mmap_add_region>
 e00de64:	e30f2000 	movw	r2, #61440	; 0xf000
 e00de68:	e346200a 	movt	r2, #24586	; 0x600a
 e00de6c:	e3003000 	movw	r3, #0
 e00de70:	e346300b 	movt	r3, #24587	; 0x600b
 e00de74:	e3a01019 	mov	r1, #25
 e00de78:	e0433002 	sub	r3, r3, r2
 e00de7c:	e58d1000 	str	r1, [sp]
 e00de80:	e1a00002 	mov	r0, r2
 e00de84:	e1a01fc2 	asr	r1, r2, #31
 e00de88:	ebfffb08 	bl	e00cab0 <mmap_add_region>
 e00de8c:	e3003000 	movw	r3, #0
 e00de90:	e3403000 	movt	r3, #0
 e00de94:	e3530000 	cmp	r3, #0
 e00de98:	0a000008 	beq	e00dec0 <setupMMUTable+0x108>
 e00de9c:	e30f3fff 	movw	r3, #65535	; 0xffff
 e00dea0:	e3463fff 	movt	r3, #28671	; 0x6fff
 e00dea4:	e2432020 	sub	r2, r3, #32
 e00dea8:	e59f105c 	ldr	r1, [pc, #92]	; e00df0c <setupMMUTable+0x154>
 e00deac:	e1a00002 	mov	r0, r2
 e00deb0:	e0413003 	sub	r3, r1, r3
 e00deb4:	e58d4000 	str	r4, [sp]
 e00deb8:	e1a01fc2 	asr	r1, r2, #31
 e00debc:	ebfffafb 	bl	e00cab0 <mmap_add_region>
 e00dec0:	e3a0c01a 	mov	ip, #26
 e00dec4:	e3a03202 	mov	r3, #536870912	; 0x20000000
 e00dec8:	e58dc000 	str	ip, [sp]
 e00decc:	e3a02206 	mov	r2, #1610612736	; 0x60000000
 e00ded0:	e3a00206 	mov	r0, #1610612736	; 0x60000000
 e00ded4:	e3a01000 	mov	r1, #0
 e00ded8:	ebfffaf4 	bl	e00cab0 <mmap_add_region>
 e00dedc:	e3a03102 	mov	r3, #-2147483648	; 0x80000000
 e00dee0:	e3a0c018 	mov	ip, #24
 e00dee4:	e1a02003 	mov	r2, r3
 e00dee8:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
 e00deec:	e3a01000 	mov	r1, #0
 e00def0:	e58dc000 	str	ip, [sp]
 e00def4:	ebfffaed 	bl	e00cab0 <mmap_add_region>
 e00def8:	ebfffafa 	bl	e00cae8 <init_xlat_tables>
 e00defc:	e3a00000 	mov	r0, #0
 e00df00:	e28dd008 	add	sp, sp, #8
 e00df04:	e8bd4010 	pop	{r4, lr}
 e00df08:	eafffb24 	b	e00cba0 <enable_mmu_svc_mon>
 e00df0c:	7000001f 	.word	0x7000001f

0e00df10 <enable_mmu_direct_svc_mon>:
 e00df10:	ee080f17 	mcr	15, 0, r0, cr8, cr7, {0}
 e00df14:	e1a03000 	mov	r3, r0
 e00df18:	e59f004c 	ldr	r0, [pc, #76]	; e00df6c <enable_mmu_direct_svc_mon+0x5c>
 e00df1c:	e5901000 	ldr	r1, [r0]
 e00df20:	ee0a1f12 	mcr	15, 0, r1, cr10, cr2, {0}
 e00df24:	e5902008 	ldr	r2, [r0, #8]
 e00df28:	ee022f50 	mcr	15, 0, r2, cr2, cr0, {2}
 e00df2c:	e5901010 	ldr	r1, [r0, #16]
 e00df30:	e5902014 	ldr	r2, [r0, #20]
 e00df34:	ec421f02 	mcrr	15, 0, r1, r2, cr2
 e00df38:	e3a01000 	mov	r1, #0
 e00df3c:	e3a02000 	mov	r2, #0
 e00df40:	ec421f12 	mcrr	15, 1, r1, r2, cr2
 e00df44:	f57ff04b 	dsb	ish
 e00df48:	f57ff06f 	isb	sy
 e00df4c:	ee111f10 	mrc	15, 0, r1, cr1, cr0, {0}
 e00df50:	e59f2018 	ldr	r2, [pc, #24]	; e00df70 <enable_mmu_direct_svc_mon+0x60>
 e00df54:	e1811002 	orr	r1, r1, r2
 e00df58:	e3130001 	tst	r3, #1
 e00df5c:	13c11004 	bicne	r1, r1, #4
 e00df60:	ee011f10 	mcr	15, 0, r1, cr1, cr0, {0}
 e00df64:	f57ff06f 	isb	sy
 e00df68:	e12fff1e 	bx	lr
 e00df6c:	600a3a78 	.word	0x600a3a78
 e00df70:	00080005 	.word	0x00080005

0e00df74 <clean_dcache_range>:
 e00df74:	e3510000 	cmp	r1, #0
 e00df78:	0a00000b 	beq	e00dfac <exit_loop_cmvac>
 e00df7c:	ee103f30 	mrc	15, 0, r3, cr0, cr0, {1}
 e00df80:	e7e33853 	ubfx	r3, r3, #16, #4
 e00df84:	e3a02004 	mov	r2, #4
 e00df88:	e1a02312 	lsl	r2, r2, r3
 e00df8c:	e0801001 	add	r1, r0, r1
 e00df90:	e2423001 	sub	r3, r2, #1
 e00df94:	e1c00003 	bic	r0, r0, r3

0e00df98 <loop_cmvac>:
 e00df98:	ee070f3a 	mcr	15, 0, r0, cr7, cr10, {1}
 e00df9c:	e0800002 	add	r0, r0, r2
 e00dfa0:	e1500001 	cmp	r0, r1
 e00dfa4:	3afffffb 	bcc	e00df98 <loop_cmvac>
 e00dfa8:	f57ff04f 	dsb	sy

0e00dfac <exit_loop_cmvac>:
 e00dfac:	e12fff1e 	bx	lr

0e00dfb0 <ChipInfo_GetLibVersion_ToBuf>:
 e00dfb0:	e3a03902 	mov	r3, #32768	; 0x8000
 e00dfb4:	e3443200 	movt	r3, #16896	; 0x4200
 e00dfb8:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e00dfbc:	e2516000 	subs	r6, r1, #0
 e00dfc0:	e593327c 	ldr	r3, [r3, #636]	; 0x27c
 e00dfc4:	e1a08000 	mov	r8, r0
 e00dfc8:	01a05006 	moveq	r5, r6
 e00dfcc:	0a000010 	beq	e00e014 <ChipInfo_GetLibVersion_ToBuf+0x64>
 e00dfd0:	e7e12353 	ubfx	r2, r3, #6, #2
 e00dfd4:	e3520000 	cmp	r2, #0
 e00dfd8:	03053270 	movweq	r3, #21104	; 0x5270
 e00dfdc:	03403e01 	movteq	r3, #3585	; 0xe01
 e00dfe0:	0a000005 	beq	e00dffc <ChipInfo_GetLibVersion_ToBuf+0x4c>
 e00dfe4:	e3520002 	cmp	r2, #2
 e00dfe8:	e305127c 	movw	r1, #21116	; 0x527c
 e00dfec:	e3401e01 	movt	r1, #3585	; 0xe01
 e00dff0:	e3053274 	movw	r3, #21108	; 0x5274
 e00dff4:	e3403e01 	movt	r3, #3585	; 0xe01
 e00dff8:	11a03001 	movne	r3, r1
 e00dffc:	e1a01006 	mov	r1, r6
 e00e000:	e1a00008 	mov	r0, r8
 e00e004:	e3052280 	movw	r2, #21120	; 0x5280
 e00e008:	e3402e01 	movt	r2, #3585	; 0xe01
 e00e00c:	eb0003f5 	bl	e00efe8 <DiagSnPrintf>
 e00e010:	e1a05000 	mov	r5, r0
 e00e014:	e305465c 	movw	r4, #22108	; 0x565c
 e00e018:	e3404e01 	movt	r4, #3585	; 0xe01
 e00e01c:	e30576c0 	movw	r7, #22208	; 0x56c0
 e00e020:	e3407e01 	movt	r7, #3585	; 0xe01
 e00e024:	e1540007 	cmp	r4, r7
 e00e028:	28bd87f0 	popcs	{r4, r5, r6, r7, r8, r9, sl, pc}
 e00e02c:	e3059294 	movw	r9, #21140	; 0x5294
 e00e030:	e3409e01 	movt	r9, #3585	; 0xe01
 e00e034:	e304afc4 	movw	sl, #20420	; 0x4fc4
 e00e038:	e340ae01 	movt	sl, #3585	; 0xe01
 e00e03c:	ea000003 	b	e00e050 <ChipInfo_GetLibVersion_ToBuf+0xa0>
 e00e040:	e1560005 	cmp	r6, r5
 e00e044:	8a000011 	bhi	e00e090 <ChipInfo_GetLibVersion_ToBuf+0xe0>
 e00e048:	e1540007 	cmp	r4, r7
 e00e04c:	28bd87f0 	popcs	{r4, r5, r6, r7, r8, r9, sl, pc}
 e00e050:	e5d43000 	ldrb	r3, [r4]
 e00e054:	e3530000 	cmp	r3, #0
 e00e058:	1afffff8 	bne	e00e040 <ChipInfo_GetLibVersion_ToBuf+0x90>
 e00e05c:	e5f43001 	ldrb	r3, [r4, #1]!
 e00e060:	e3530000 	cmp	r3, #0
 e00e064:	0afffffc 	beq	e00e05c <ChipInfo_GetLibVersion_ToBuf+0xac>
 e00e068:	e1560005 	cmp	r6, r5
 e00e06c:	9afffff5 	bls	e00e048 <ChipInfo_GetLibVersion_ToBuf+0x98>
 e00e070:	e0461005 	sub	r1, r6, r5
 e00e074:	e0880005 	add	r0, r8, r5
 e00e078:	e1a0200a 	mov	r2, sl
 e00e07c:	eb0003d9 	bl	e00efe8 <DiagSnPrintf>
 e00e080:	e1540007 	cmp	r4, r7
 e00e084:	e0855000 	add	r5, r5, r0
 e00e088:	3afffff0 	bcc	e00e050 <ChipInfo_GetLibVersion_ToBuf+0xa0>
 e00e08c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e00e090:	e0461005 	sub	r1, r6, r5
 e00e094:	e0880005 	add	r0, r8, r5
 e00e098:	e1a02009 	mov	r2, r9
 e00e09c:	e2844001 	add	r4, r4, #1
 e00e0a0:	eb0003d0 	bl	e00efe8 <DiagSnPrintf>
 e00e0a4:	e1540007 	cmp	r4, r7
 e00e0a8:	e0855000 	add	r5, r5, r0
 e00e0ac:	3affffe7 	bcc	e00e050 <ChipInfo_GetLibVersion_ToBuf+0xa0>
 e00e0b0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

0e00e0b4 <print_unsigned_num>:
 e00e0b4:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e00e0b8:	e1a06000 	mov	r6, r0
 e00e0bc:	e24dd024 	sub	sp, sp, #36	; 0x24
 e00e0c0:	e28da00c 	add	sl, sp, #12
 e00e0c4:	e1a05001 	mov	r5, r1
 e00e0c8:	e59d704c 	ldr	r7, [sp, #76]	; 0x4c
 e00e0cc:	e1a08002 	mov	r8, r2
 e00e0d0:	e1a0b003 	mov	fp, r3
 e00e0d4:	e1a0900a 	mov	r9, sl
 e00e0d8:	e3a04000 	mov	r4, #0
 e00e0dc:	ea00000b 	b	e00e110 <print_unsigned_num+0x5c>
 e00e0e0:	e28c3057 	add	r3, ip, #87	; 0x57
 e00e0e4:	e3570001 	cmp	r7, #1
 e00e0e8:	e6ef3073 	uxtb	r3, r3
 e00e0ec:	0a000012 	beq	e00e13c <print_unsigned_num+0x88>
 e00e0f0:	e1560008 	cmp	r6, r8
 e00e0f4:	e2842001 	add	r2, r4, #1
 e00e0f8:	e1a06000 	mov	r6, r0
 e00e0fc:	e4c93001 	strb	r3, [r9], #1
 e00e100:	e2d50000 	sbcs	r0, r5, #0
 e00e104:	e1a05001 	mov	r5, r1
 e00e108:	3a00000e 	bcc	e00e148 <print_unsigned_num+0x94>
 e00e10c:	e1a04002 	mov	r4, r2
 e00e110:	e1a00006 	mov	r0, r6
 e00e114:	e1a01005 	mov	r1, r5
 e00e118:	e1a02008 	mov	r2, r8
 e00e11c:	e3a03000 	mov	r3, #0
 e00e120:	ebffc89b 	bl	e000394 <__aeabi_uldivmod>
 e00e124:	e6efc072 	uxtb	ip, r2
 e00e128:	e28c3030 	add	r3, ip, #48	; 0x30
 e00e12c:	e3520009 	cmp	r2, #9
 e00e130:	8affffea 	bhi	e00e0e0 <print_unsigned_num+0x2c>
 e00e134:	e6ef3073 	uxtb	r3, r3
 e00e138:	eaffffec 	b	e00e0f0 <print_unsigned_num+0x3c>
 e00e13c:	e28c3037 	add	r3, ip, #55	; 0x37
 e00e140:	e6ef3073 	uxtb	r3, r3
 e00e144:	eaffffe9 	b	e00e0f0 <print_unsigned_num+0x3c>
 e00e148:	e1a07002 	mov	r7, r2
 e00e14c:	e59d2050 	ldr	r2, [sp, #80]	; 0x50
 e00e150:	e3520000 	cmp	r2, #0
 e00e154:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
 e00e158:	0a000010 	beq	e00e1a0 <print_unsigned_num+0xec>
 e00e15c:	e2422001 	sub	r2, r2, #1
 e00e160:	e35b0030 	cmp	fp, #48	; 0x30
 e00e164:	e58d2048 	str	r2, [sp, #72]	; 0x48
 e00e168:	1a000035 	bne	e00e244 <print_unsigned_num+0x190>
 e00e16c:	e3a0002d 	mov	r0, #45	; 0x2d
 e00e170:	e3085d98 	movw	r5, #36248	; 0x8d98
 e00e174:	e3405e00 	movt	r5, #3584	; 0xe00
 e00e178:	e58d3004 	str	r3, [sp, #4]
 e00e17c:	e12fff35 	blx	r5
 e00e180:	e59d3048 	ldr	r3, [sp, #72]	; 0x48
 e00e184:	e3530000 	cmp	r3, #0
 e00e188:	e59d3004 	ldr	r3, [sp, #4]
 e00e18c:	da000021 	ble	e00e218 <print_unsigned_num+0x164>
 e00e190:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
 e00e194:	e1570002 	cmp	r7, r2
 e00e198:	ba00000a 	blt	e00e1c8 <print_unsigned_num+0x114>
 e00e19c:	ea00001b 	b	e00e210 <print_unsigned_num+0x15c>
 e00e1a0:	e3520000 	cmp	r2, #0
 e00e1a4:	d3085d98 	movwle	r5, #36248	; 0x8d98
 e00e1a8:	d3405e00 	movtle	r5, #3584	; 0xe00
 e00e1ac:	da000019 	ble	e00e218 <print_unsigned_num+0x164>
 e00e1b0:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 e00e1b4:	e3085d98 	movw	r5, #36248	; 0x8d98
 e00e1b8:	e3405e00 	movt	r5, #3584	; 0xe00
 e00e1bc:	e59d2050 	ldr	r2, [sp, #80]	; 0x50
 e00e1c0:	e1510007 	cmp	r1, r7
 e00e1c4:	da00000d 	ble	e00e200 <print_unsigned_num+0x14c>
 e00e1c8:	e59d6048 	ldr	r6, [sp, #72]	; 0x48
 e00e1cc:	e1a08003 	mov	r8, r3
 e00e1d0:	e1a0000b 	mov	r0, fp
 e00e1d4:	e2466001 	sub	r6, r6, #1
 e00e1d8:	e12fff35 	blx	r5
 e00e1dc:	e1570006 	cmp	r7, r6
 e00e1e0:	1afffffa 	bne	e00e1d0 <print_unsigned_num+0x11c>
 e00e1e4:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 e00e1e8:	e1e02007 	mvn	r2, r7
 e00e1ec:	e0822001 	add	r2, r2, r1
 e00e1f0:	e59d1050 	ldr	r1, [sp, #80]	; 0x50
 e00e1f4:	e1a03008 	mov	r3, r8
 e00e1f8:	e2811001 	add	r1, r1, #1
 e00e1fc:	e0822001 	add	r2, r2, r1
 e00e200:	e59d1050 	ldr	r1, [sp, #80]	; 0x50
 e00e204:	e58d2050 	str	r2, [sp, #80]	; 0x50
 e00e208:	e3510000 	cmp	r1, #0
 e00e20c:	0a000001 	beq	e00e218 <print_unsigned_num+0x164>
 e00e210:	e31b00df 	tst	fp, #223	; 0xdf
 e00e214:	0a000010 	beq	e00e25c <print_unsigned_num+0x1a8>
 e00e218:	e08a4004 	add	r4, sl, r4
 e00e21c:	e1a00003 	mov	r0, r3
 e00e220:	ea000000 	b	e00e228 <print_unsigned_num+0x174>
 e00e224:	e5740001 	ldrb	r0, [r4, #-1]!
 e00e228:	e12fff35 	blx	r5
 e00e22c:	e15a0004 	cmp	sl, r4
 e00e230:	1afffffb 	bne	e00e224 <print_unsigned_num+0x170>
 e00e234:	e59d3050 	ldr	r3, [sp, #80]	; 0x50
 e00e238:	e0830007 	add	r0, r3, r7
 e00e23c:	e28dd024 	add	sp, sp, #36	; 0x24
 e00e240:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00e244:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
 e00e248:	e3520000 	cmp	r2, #0
 e00e24c:	d3085d98 	movwle	r5, #36248	; 0x8d98
 e00e250:	d3405e00 	movtle	r5, #3584	; 0xe00
 e00e254:	caffffd5 	bgt	e00e1b0 <print_unsigned_num+0xfc>
 e00e258:	eaffffec 	b	e00e210 <print_unsigned_num+0x15c>
 e00e25c:	e3a0002d 	mov	r0, #45	; 0x2d
 e00e260:	e58d3004 	str	r3, [sp, #4]
 e00e264:	e12fff35 	blx	r5
 e00e268:	e59d3004 	ldr	r3, [sp, #4]
 e00e26c:	eaffffe9 	b	e00e218 <print_unsigned_num+0x164>

0e00e270 <SYSCFG_RLVersion>:
 e00e270:	e3a03902 	mov	r3, #32768	; 0x8000
 e00e274:	e3443200 	movt	r3, #16896	; 0x4200
 e00e278:	e5932274 	ldr	r2, [r3, #628]	; 0x274
 e00e27c:	e3c2220f 	bic	r2, r2, #-268435456	; 0xf0000000
 e00e280:	e382120a 	orr	r1, r2, #-1610612736	; 0xa0000000
 e00e284:	e5831274 	str	r1, [r3, #628]	; 0x274
 e00e288:	e5930274 	ldr	r0, [r3, #628]	; 0x274
 e00e28c:	e5832274 	str	r2, [r3, #628]	; 0x274
 e00e290:	e7e30850 	ubfx	r0, r0, #16, #4
 e00e294:	e12fff1e 	bx	lr

0e00e298 <DiagVprintf>:
 e00e298:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e00e29c:	e1a04000 	mov	r4, r0
 e00e2a0:	e5d00000 	ldrb	r0, [r0]
 e00e2a4:	e24dd02c 	sub	sp, sp, #44	; 0x2c
 e00e2a8:	e3500000 	cmp	r0, #0
 e00e2ac:	0a0001da 	beq	e00ea1c <DiagVprintf+0x784>
 e00e2b0:	e3a03000 	mov	r3, #0
 e00e2b4:	e1a08001 	mov	r8, r1
 e00e2b8:	e1a06003 	mov	r6, r3
 e00e2bc:	e3a0900a 	mov	r9, #10
 e00e2c0:	e58d3014 	str	r3, [sp, #20]
 e00e2c4:	ea000006 	b	e00e2e4 <DiagVprintf+0x4c>
 e00e2c8:	e3085d98 	movw	r5, #36248	; 0x8d98
 e00e2cc:	e3405e00 	movt	r5, #3584	; 0xe00
 e00e2d0:	e12fff35 	blx	r5
 e00e2d4:	e5d40000 	ldrb	r0, [r4]
 e00e2d8:	e2866001 	add	r6, r6, #1
 e00e2dc:	e3500000 	cmp	r0, #0
 e00e2e0:	0a000040 	beq	e00e3e8 <DiagVprintf+0x150>
 e00e2e4:	e2844001 	add	r4, r4, #1
 e00e2e8:	e3500025 	cmp	r0, #37	; 0x25
 e00e2ec:	1afffff5 	bne	e00e2c8 <DiagVprintf+0x30>
 e00e2f0:	e3a0b000 	mov	fp, #0
 e00e2f4:	e1a0700b 	mov	r7, fp
 e00e2f8:	e1a0a00b 	mov	sl, fp
 e00e2fc:	e1a0100b 	mov	r1, fp
 e00e300:	e5d40000 	ldrb	r0, [r4]
 e00e304:	e3500058 	cmp	r0, #88	; 0x58
 e00e308:	0a00000d 	beq	e00e344 <DiagVprintf+0xac>
 e00e30c:	8a000038 	bhi	e00e3f4 <DiagVprintf+0x15c>
 e00e310:	e3500030 	cmp	r0, #48	; 0x30
 e00e314:	0a0000d1 	beq	e00e660 <DiagVprintf+0x3c8>
 e00e318:	8a0000e1 	bhi	e00e6a4 <DiagVprintf+0x40c>
 e00e31c:	e3500025 	cmp	r0, #37	; 0x25
 e00e320:	0a00013d 	beq	e00e81c <DiagVprintf+0x584>
 e00e324:	9a0000c9 	bls	e00e650 <DiagVprintf+0x3b8>
 e00e328:	e350002d 	cmp	r0, #45	; 0x2d
 e00e32c:	1a00012c 	bne	e00e7e4 <DiagVprintf+0x54c>
 e00e330:	e5d40001 	ldrb	r0, [r4, #1]
 e00e334:	e2844001 	add	r4, r4, #1
 e00e338:	e28bb001 	add	fp, fp, #1
 e00e33c:	e3500058 	cmp	r0, #88	; 0x58
 e00e340:	1afffff1 	bne	e00e30c <DiagVprintf+0x74>
 e00e344:	e3a03001 	mov	r3, #1
 e00e348:	e58d3014 	str	r3, [sp, #20]
 e00e34c:	e3510001 	cmp	r1, #1
 e00e350:	c2888007 	addgt	r8, r8, #7
 e00e354:	c3c88007 	bicgt	r8, r8, #7
 e00e358:	d4980004 	ldrle	r0, [r8], #4
 e00e35c:	d3a01000 	movle	r1, #0
 e00e360:	c5981004 	ldrgt	r1, [r8, #4]
 e00e364:	c4980008 	ldrgt	r0, [r8], #8
 e00e368:	e35b0000 	cmp	fp, #0
 e00e36c:	0a000130 	beq	e00e834 <DiagVprintf+0x59c>
 e00e370:	e59d3014 	ldr	r3, [sp, #20]
 e00e374:	e58d3004 	str	r3, [sp, #4]
 e00e378:	e3a02010 	mov	r2, #16
 e00e37c:	e3a03000 	mov	r3, #0
 e00e380:	e58d3008 	str	r3, [sp, #8]
 e00e384:	e58d3000 	str	r3, [sp]
 e00e388:	e1a0300a 	mov	r3, sl
 e00e38c:	ebffff48 	bl	e00e0b4 <print_unsigned_num>
 e00e390:	e1570000 	cmp	r7, r0
 e00e394:	d3a03000 	movle	r3, #0
 e00e398:	c3a03001 	movgt	r3, #1
 e00e39c:	e35a0020 	cmp	sl, #32
 e00e3a0:	13a03000 	movne	r3, #0
 e00e3a4:	e3530000 	cmp	r3, #0
 e00e3a8:	0a000118 	beq	e00e810 <DiagVprintf+0x578>
 e00e3ac:	e047a000 	sub	sl, r7, r0
 e00e3b0:	e35a0000 	cmp	sl, #0
 e00e3b4:	da000196 	ble	e00ea14 <DiagVprintf+0x77c>
 e00e3b8:	e3085d98 	movw	r5, #36248	; 0x8d98
 e00e3bc:	e3405e00 	movt	r5, #3584	; 0xe00
 e00e3c0:	e3a00020 	mov	r0, #32
 e00e3c4:	e12fff35 	blx	r5
 e00e3c8:	e25aa001 	subs	sl, sl, #1
 e00e3cc:	1afffffb 	bne	e00e3c0 <DiagVprintf+0x128>
 e00e3d0:	e1a00007 	mov	r0, r7
 e00e3d4:	e0866000 	add	r6, r6, r0
 e00e3d8:	e2844001 	add	r4, r4, #1
 e00e3dc:	e5d40000 	ldrb	r0, [r4]
 e00e3e0:	e3500000 	cmp	r0, #0
 e00e3e4:	1affffbe 	bne	e00e2e4 <DiagVprintf+0x4c>
 e00e3e8:	e1a00006 	mov	r0, r6
 e00e3ec:	e28dd02c 	add	sp, sp, #44	; 0x2c
 e00e3f0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00e3f4:	e3500073 	cmp	r0, #115	; 0x73
 e00e3f8:	0a000117 	beq	e00e85c <DiagVprintf+0x5c4>
 e00e3fc:	8a000046 	bhi	e00e51c <DiagVprintf+0x284>
 e00e400:	e350006c 	cmp	r0, #108	; 0x6c
 e00e404:	0a000112 	beq	e00e854 <DiagVprintf+0x5bc>
 e00e408:	9a000017 	bls	e00e46c <DiagVprintf+0x1d4>
 e00e40c:	e350006f 	cmp	r0, #111	; 0x6f
 e00e410:	0a0000aa 	beq	e00e6c0 <DiagVprintf+0x428>
 e00e414:	e3500070 	cmp	r0, #112	; 0x70
 e00e418:	1a0000f1 	bne	e00e7e4 <DiagVprintf+0x54c>
 e00e41c:	e35b0000 	cmp	fp, #0
 e00e420:	e4980004 	ldr	r0, [r8], #4
 e00e424:	e3a01000 	mov	r1, #0
 e00e428:	13a03001 	movne	r3, #1
 e00e42c:	01a0100b 	moveq	r1, fp
 e00e430:	03a0a008 	moveq	sl, #8
 e00e434:	158d3004 	strne	r3, [sp, #4]
 e00e438:	058db008 	streq	fp, [sp, #8]
 e00e43c:	e3a03030 	mov	r3, #48	; 0x30
 e00e440:	03a0b001 	moveq	fp, #1
 e00e444:	e3a02010 	mov	r2, #16
 e00e448:	158d1008 	strne	r1, [sp, #8]
 e00e44c:	158d1000 	strne	r1, [sp]
 e00e450:	01cda0f0 	strdeq	sl, [sp]
 e00e454:	ebffff16 	bl	e00e0b4 <print_unsigned_num>
 e00e458:	e2844001 	add	r4, r4, #1
 e00e45c:	e3a03001 	mov	r3, #1
 e00e460:	e0866000 	add	r6, r6, r0
 e00e464:	e58d3014 	str	r3, [sp, #20]
 e00e468:	eaffffdb 	b	e00e3dc <DiagVprintf+0x144>
 e00e46c:	e3500064 	cmp	r0, #100	; 0x64
 e00e470:	0a000002 	beq	e00e480 <DiagVprintf+0x1e8>
 e00e474:	9a00002e 	bls	e00e534 <DiagVprintf+0x29c>
 e00e478:	e3500069 	cmp	r0, #105	; 0x69
 e00e47c:	1a0000d8 	bne	e00e7e4 <DiagVprintf+0x54c>
 e00e480:	e3510001 	cmp	r1, #1
 e00e484:	c2888007 	addgt	r8, r8, #7
 e00e488:	c3c88007 	bicgt	r8, r8, #7
 e00e48c:	d5980000 	ldrle	r0, [r8]
 e00e490:	d2882004 	addle	r2, r8, #4
 e00e494:	c5981004 	ldrgt	r1, [r8, #4]
 e00e498:	d1a01fc0 	asrle	r1, r0, #31
 e00e49c:	d1a08002 	movle	r8, r2
 e00e4a0:	c4980008 	ldrgt	r0, [r8], #8
 e00e4a4:	e3510000 	cmp	r1, #0
 e00e4a8:	a3a02000 	movge	r2, #0
 e00e4ac:	ba00012d 	blt	e00e968 <DiagVprintf+0x6d0>
 e00e4b0:	e35b0000 	cmp	fp, #0
 e00e4b4:	e58d2008 	str	r2, [sp, #8]
 e00e4b8:	0a0000ce 	beq	e00e7f8 <DiagVprintf+0x560>
 e00e4bc:	e59d3014 	ldr	r3, [sp, #20]
 e00e4c0:	e58d3004 	str	r3, [sp, #4]
 e00e4c4:	e3a0200a 	mov	r2, #10
 e00e4c8:	e3a03000 	mov	r3, #0
 e00e4cc:	e58d3000 	str	r3, [sp]
 e00e4d0:	e1a0300a 	mov	r3, sl
 e00e4d4:	ebfffef6 	bl	e00e0b4 <print_unsigned_num>
 e00e4d8:	e1570000 	cmp	r7, r0
 e00e4dc:	d3a03000 	movle	r3, #0
 e00e4e0:	c3a03001 	movgt	r3, #1
 e00e4e4:	e35a0020 	cmp	sl, #32
 e00e4e8:	13a03000 	movne	r3, #0
 e00e4ec:	e3530000 	cmp	r3, #0
 e00e4f0:	0a0000c6 	beq	e00e810 <DiagVprintf+0x578>
 e00e4f4:	e047a000 	sub	sl, r7, r0
 e00e4f8:	e35a0000 	cmp	sl, #0
 e00e4fc:	da000144 	ble	e00ea14 <DiagVprintf+0x77c>
 e00e500:	e3085d98 	movw	r5, #36248	; 0x8d98
 e00e504:	e3405e00 	movt	r5, #3584	; 0xe00
 e00e508:	e3a00020 	mov	r0, #32
 e00e50c:	e12fff35 	blx	r5
 e00e510:	e25aa001 	subs	sl, sl, #1
 e00e514:	1afffffb 	bne	e00e508 <DiagVprintf+0x270>
 e00e518:	eaffffac 	b	e00e3d0 <DiagVprintf+0x138>
 e00e51c:	e3500078 	cmp	r0, #120	; 0x78
 e00e520:	0affff89 	beq	e00e34c <DiagVprintf+0xb4>
 e00e524:	e350007a 	cmp	r0, #122	; 0x7a
 e00e528:	1a000024 	bne	e00e5c0 <DiagVprintf+0x328>
 e00e52c:	e2844001 	add	r4, r4, #1
 e00e530:	eaffff72 	b	e00e300 <DiagVprintf+0x68>
 e00e534:	e3500062 	cmp	r0, #98	; 0x62
 e00e538:	0a000087 	beq	e00e75c <DiagVprintf+0x4c4>
 e00e53c:	e3500063 	cmp	r0, #99	; 0x63
 e00e540:	1a0000a7 	bne	e00e7e4 <DiagVprintf+0x54c>
 e00e544:	e3570001 	cmp	r7, #1
 e00e548:	e4983004 	ldr	r3, [r8], #4
 e00e54c:	d3a02000 	movle	r2, #0
 e00e550:	c3a02001 	movgt	r2, #1
 e00e554:	e35b0000 	cmp	fp, #0
 e00e558:	13a01000 	movne	r1, #0
 e00e55c:	02021001 	andeq	r1, r2, #1
 e00e560:	e6ef3073 	uxtb	r3, r3
 e00e564:	e3510000 	cmp	r1, #0
 e00e568:	e58d3018 	str	r3, [sp, #24]
 e00e56c:	1a000101 	bne	e00e978 <DiagVprintf+0x6e0>
 e00e570:	e59d0018 	ldr	r0, [sp, #24]
 e00e574:	e3085d98 	movw	r5, #36248	; 0x8d98
 e00e578:	e3405e00 	movt	r5, #3584	; 0xe00
 e00e57c:	e58d201c 	str	r2, [sp, #28]
 e00e580:	e12fff35 	blx	r5
 e00e584:	e59d201c 	ldr	r2, [sp, #28]
 e00e588:	e2863001 	add	r3, r6, #1
 e00e58c:	e35b0000 	cmp	fp, #0
 e00e590:	03a02000 	moveq	r2, #0
 e00e594:	12022001 	andne	r2, r2, #1
 e00e598:	e3520000 	cmp	r2, #0
 e00e59c:	01a06003 	moveq	r6, r3
 e00e5a0:	0affff8c 	beq	e00e3d8 <DiagVprintf+0x140>
 e00e5a4:	e247b001 	sub	fp, r7, #1
 e00e5a8:	e1a0000a 	mov	r0, sl
 e00e5ac:	e12fff35 	blx	r5
 e00e5b0:	e25bb001 	subs	fp, fp, #1
 e00e5b4:	1afffffb 	bne	e00e5a8 <DiagVprintf+0x310>
 e00e5b8:	e0866007 	add	r6, r6, r7
 e00e5bc:	eaffff85 	b	e00e3d8 <DiagVprintf+0x140>
 e00e5c0:	e3500075 	cmp	r0, #117	; 0x75
 e00e5c4:	1a000086 	bne	e00e7e4 <DiagVprintf+0x54c>
 e00e5c8:	e3510001 	cmp	r1, #1
 e00e5cc:	c2888007 	addgt	r8, r8, #7
 e00e5d0:	c3c88007 	bicgt	r8, r8, #7
 e00e5d4:	d4980004 	ldrle	r0, [r8], #4
 e00e5d8:	d3a01000 	movle	r1, #0
 e00e5dc:	c5981004 	ldrgt	r1, [r8, #4]
 e00e5e0:	c4980008 	ldrgt	r0, [r8], #8
 e00e5e4:	e35b0000 	cmp	fp, #0
 e00e5e8:	0a000081 	beq	e00e7f4 <DiagVprintf+0x55c>
 e00e5ec:	e59d3014 	ldr	r3, [sp, #20]
 e00e5f0:	e58d3004 	str	r3, [sp, #4]
 e00e5f4:	e3a0200a 	mov	r2, #10
 e00e5f8:	e3a03000 	mov	r3, #0
 e00e5fc:	e58d3008 	str	r3, [sp, #8]
 e00e600:	e58d3000 	str	r3, [sp]
 e00e604:	e1a0300a 	mov	r3, sl
 e00e608:	ebfffea9 	bl	e00e0b4 <print_unsigned_num>
 e00e60c:	e1570000 	cmp	r7, r0
 e00e610:	d3a03000 	movle	r3, #0
 e00e614:	c3a03001 	movgt	r3, #1
 e00e618:	e35a0020 	cmp	sl, #32
 e00e61c:	13a03000 	movne	r3, #0
 e00e620:	e3530000 	cmp	r3, #0
 e00e624:	0a000079 	beq	e00e810 <DiagVprintf+0x578>
 e00e628:	e047a000 	sub	sl, r7, r0
 e00e62c:	e35a0000 	cmp	sl, #0
 e00e630:	da0000f7 	ble	e00ea14 <DiagVprintf+0x77c>
 e00e634:	e3085d98 	movw	r5, #36248	; 0x8d98
 e00e638:	e3405e00 	movt	r5, #3584	; 0xe00
 e00e63c:	e3a00020 	mov	r0, #32
 e00e640:	e12fff35 	blx	r5
 e00e644:	e25aa001 	subs	sl, sl, #1
 e00e648:	1afffffb 	bne	e00e63c <DiagVprintf+0x3a4>
 e00e64c:	eaffff5f 	b	e00e3d0 <DiagVprintf+0x138>
 e00e650:	e3500000 	cmp	r0, #0
 e00e654:	0affff5f 	beq	e00e3d8 <DiagVprintf+0x140>
 e00e658:	e3500020 	cmp	r0, #32
 e00e65c:	1a000060 	bne	e00e7e4 <DiagVprintf+0x54c>
 e00e660:	e2844001 	add	r4, r4, #1
 e00e664:	e1a0a000 	mov	sl, r0
 e00e668:	e5d40000 	ldrb	r0, [r4]
 e00e66c:	e3500000 	cmp	r0, #0
 e00e670:	0affff5c 	beq	e00e3e8 <DiagVprintf+0x150>
 e00e674:	e3a07000 	mov	r7, #0
 e00e678:	e0230799 	mla	r3, r9, r7, r0
 e00e67c:	e2400030 	sub	r0, r0, #48	; 0x30
 e00e680:	e3500009 	cmp	r0, #9
 e00e684:	8affff1d 	bhi	e00e300 <DiagVprintf+0x68>
 e00e688:	e5f40001 	ldrb	r0, [r4, #1]!
 e00e68c:	e2437030 	sub	r7, r3, #48	; 0x30
 e00e690:	e3500000 	cmp	r0, #0
 e00e694:	1afffff7 	bne	e00e678 <DiagVprintf+0x3e0>
 e00e698:	e1a00006 	mov	r0, r6
 e00e69c:	e28dd02c 	add	sp, sp, #44	; 0x2c
 e00e6a0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00e6a4:	e3500043 	cmp	r0, #67	; 0x43
 e00e6a8:	0affffa5 	beq	e00e544 <DiagVprintf+0x2ac>
 e00e6ac:	9a000025 	bls	e00e748 <DiagVprintf+0x4b0>
 e00e6b0:	e350004c 	cmp	r0, #76	; 0x4c
 e00e6b4:	0a000066 	beq	e00e854 <DiagVprintf+0x5bc>
 e00e6b8:	e350004f 	cmp	r0, #79	; 0x4f
 e00e6bc:	1a000048 	bne	e00e7e4 <DiagVprintf+0x54c>
 e00e6c0:	e3510001 	cmp	r1, #1
 e00e6c4:	c2888007 	addgt	r8, r8, #7
 e00e6c8:	c3c88007 	bicgt	r8, r8, #7
 e00e6cc:	d4980004 	ldrle	r0, [r8], #4
 e00e6d0:	d3a01000 	movle	r1, #0
 e00e6d4:	c5981004 	ldrgt	r1, [r8, #4]
 e00e6d8:	c4980008 	ldrgt	r0, [r8], #8
 e00e6dc:	e35b0000 	cmp	fp, #0
 e00e6e0:	0a000098 	beq	e00e948 <DiagVprintf+0x6b0>
 e00e6e4:	e59d3014 	ldr	r3, [sp, #20]
 e00e6e8:	e58d3004 	str	r3, [sp, #4]
 e00e6ec:	e3a02008 	mov	r2, #8
 e00e6f0:	e3a03000 	mov	r3, #0
 e00e6f4:	e58d3008 	str	r3, [sp, #8]
 e00e6f8:	e58d3000 	str	r3, [sp]
 e00e6fc:	e1a0300a 	mov	r3, sl
 e00e700:	ebfffe6b 	bl	e00e0b4 <print_unsigned_num>
 e00e704:	e1570000 	cmp	r7, r0
 e00e708:	d3a03000 	movle	r3, #0
 e00e70c:	c3a03001 	movgt	r3, #1
 e00e710:	e35a0020 	cmp	sl, #32
 e00e714:	13a03000 	movne	r3, #0
 e00e718:	e3530000 	cmp	r3, #0
 e00e71c:	0a00003b 	beq	e00e810 <DiagVprintf+0x578>
 e00e720:	e047a000 	sub	sl, r7, r0
 e00e724:	e35a0000 	cmp	sl, #0
 e00e728:	da0000b9 	ble	e00ea14 <DiagVprintf+0x77c>
 e00e72c:	e3085d98 	movw	r5, #36248	; 0x8d98
 e00e730:	e3405e00 	movt	r5, #3584	; 0xe00
 e00e734:	e3a00020 	mov	r0, #32
 e00e738:	e12fff35 	blx	r5
 e00e73c:	e25aa001 	subs	sl, sl, #1
 e00e740:	1afffffb 	bne	e00e734 <DiagVprintf+0x49c>
 e00e744:	eaffff21 	b	e00e3d0 <DiagVprintf+0x138>
 e00e748:	e3500039 	cmp	r0, #57	; 0x39
 e00e74c:	93a0a020 	movls	sl, #32
 e00e750:	9affffc5 	bls	e00e66c <DiagVprintf+0x3d4>
 e00e754:	e3500042 	cmp	r0, #66	; 0x42
 e00e758:	1a000021 	bne	e00e7e4 <DiagVprintf+0x54c>
 e00e75c:	e3510001 	cmp	r1, #1
 e00e760:	c2888007 	addgt	r8, r8, #7
 e00e764:	c3c88007 	bicgt	r8, r8, #7
 e00e768:	d4980004 	ldrle	r0, [r8], #4
 e00e76c:	d3a01000 	movle	r1, #0
 e00e770:	c5981004 	ldrgt	r1, [r8, #4]
 e00e774:	c4980008 	ldrgt	r0, [r8], #8
 e00e778:	e35b0000 	cmp	fp, #0
 e00e77c:	0a000069 	beq	e00e928 <DiagVprintf+0x690>
 e00e780:	e59d3014 	ldr	r3, [sp, #20]
 e00e784:	e58d3004 	str	r3, [sp, #4]
 e00e788:	e3a02002 	mov	r2, #2
 e00e78c:	e3a03000 	mov	r3, #0
 e00e790:	e58d3008 	str	r3, [sp, #8]
 e00e794:	e58d3000 	str	r3, [sp]
 e00e798:	e1a0300a 	mov	r3, sl
 e00e79c:	ebfffe44 	bl	e00e0b4 <print_unsigned_num>
 e00e7a0:	e1570000 	cmp	r7, r0
 e00e7a4:	d3a03000 	movle	r3, #0
 e00e7a8:	c3a03001 	movgt	r3, #1
 e00e7ac:	e35a0020 	cmp	sl, #32
 e00e7b0:	13a03000 	movne	r3, #0
 e00e7b4:	e3530000 	cmp	r3, #0
 e00e7b8:	0a000014 	beq	e00e810 <DiagVprintf+0x578>
 e00e7bc:	e047a000 	sub	sl, r7, r0
 e00e7c0:	e35a0000 	cmp	sl, #0
 e00e7c4:	da000092 	ble	e00ea14 <DiagVprintf+0x77c>
 e00e7c8:	e3085d98 	movw	r5, #36248	; 0x8d98
 e00e7cc:	e3405e00 	movt	r5, #3584	; 0xe00
 e00e7d0:	e3a00020 	mov	r0, #32
 e00e7d4:	e12fff35 	blx	r5
 e00e7d8:	e25aa001 	subs	sl, sl, #1
 e00e7dc:	1afffffb 	bne	e00e7d0 <DiagVprintf+0x538>
 e00e7e0:	eafffefa 	b	e00e3d0 <DiagVprintf+0x138>
 e00e7e4:	e3e06000 	mvn	r6, #0
 e00e7e8:	e1a00006 	mov	r0, r6
 e00e7ec:	e28dd02c 	add	sp, sp, #44	; 0x2c
 e00e7f0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00e7f4:	e58db008 	str	fp, [sp, #8]
 e00e7f8:	e59d2014 	ldr	r2, [sp, #20]
 e00e7fc:	e58d2004 	str	r2, [sp, #4]
 e00e800:	e1a0300a 	mov	r3, sl
 e00e804:	e3a0200a 	mov	r2, #10
 e00e808:	e58d7000 	str	r7, [sp]
 e00e80c:	ebfffe28 	bl	e00e0b4 <print_unsigned_num>
 e00e810:	e0866000 	add	r6, r6, r0
 e00e814:	e2844001 	add	r4, r4, #1
 e00e818:	eafffeef 	b	e00e3dc <DiagVprintf+0x144>
 e00e81c:	e3085d98 	movw	r5, #36248	; 0x8d98
 e00e820:	e3405e00 	movt	r5, #3584	; 0xe00
 e00e824:	e2866001 	add	r6, r6, #1
 e00e828:	e2844001 	add	r4, r4, #1
 e00e82c:	e12fff35 	blx	r5
 e00e830:	eafffee9 	b	e00e3dc <DiagVprintf+0x144>
 e00e834:	e59d2014 	ldr	r2, [sp, #20]
 e00e838:	e58d2004 	str	r2, [sp, #4]
 e00e83c:	e1a0300a 	mov	r3, sl
 e00e840:	e3a02010 	mov	r2, #16
 e00e844:	e58db008 	str	fp, [sp, #8]
 e00e848:	e58d7000 	str	r7, [sp]
 e00e84c:	ebfffe18 	bl	e00e0b4 <print_unsigned_num>
 e00e850:	eaffffee 	b	e00e810 <DiagVprintf+0x578>
 e00e854:	e2811001 	add	r1, r1, #1
 e00e858:	eaffff33 	b	e00e52c <DiagVprintf+0x294>
 e00e85c:	e1a03008 	mov	r3, r8
 e00e860:	e4932004 	ldr	r2, [r3], #4
 e00e864:	e58d3018 	str	r3, [sp, #24]
 e00e868:	e5d20000 	ldrb	r0, [r2]
 e00e86c:	e3500000 	cmp	r0, #0
 e00e870:	0a00006b 	beq	e00ea24 <DiagVprintf+0x78c>
 e00e874:	e1a0c002 	mov	ip, r2
 e00e878:	e2628001 	rsb	r8, r2, #1
 e00e87c:	e088100c 	add	r1, r8, ip
 e00e880:	e5fc3001 	ldrb	r3, [ip, #1]!
 e00e884:	e3530000 	cmp	r3, #0
 e00e888:	1afffffb 	bne	e00e87c <DiagVprintf+0x5e4>
 e00e88c:	e58d101c 	str	r1, [sp, #28]
 e00e890:	e35b0000 	cmp	fp, #0
 e00e894:	0a000018 	beq	e00e8fc <DiagVprintf+0x664>
 e00e898:	e3520000 	cmp	r2, #0
 e00e89c:	0a000064 	beq	e00ea34 <DiagVprintf+0x79c>
 e00e8a0:	e3500000 	cmp	r0, #0
 e00e8a4:	0a00000d 	beq	e00e8e0 <DiagVprintf+0x648>
 e00e8a8:	e3085d98 	movw	r5, #36248	; 0x8d98
 e00e8ac:	e3405e00 	movt	r5, #3584	; 0xe00
 e00e8b0:	e58d4020 	str	r4, [sp, #32]
 e00e8b4:	e2628001 	rsb	r8, r2, #1
 e00e8b8:	e1a04002 	mov	r4, r2
 e00e8bc:	e12fff35 	blx	r5
 e00e8c0:	e084c008 	add	ip, r4, r8
 e00e8c4:	e5f40001 	ldrb	r0, [r4, #1]!
 e00e8c8:	e3500000 	cmp	r0, #0
 e00e8cc:	1afffffa 	bne	e00e8bc <DiagVprintf+0x624>
 e00e8d0:	e59d4020 	ldr	r4, [sp, #32]
 e00e8d4:	e086600c 	add	r6, r6, ip
 e00e8d8:	e35b0000 	cmp	fp, #0
 e00e8dc:	0a000003 	beq	e00e8f0 <DiagVprintf+0x658>
 e00e8e0:	e59d301c 	ldr	r3, [sp, #28]
 e00e8e4:	e0477003 	sub	r7, r7, r3
 e00e8e8:	e3570000 	cmp	r7, #0
 e00e8ec:	ca00002c 	bgt	e00e9a4 <DiagVprintf+0x70c>
 e00e8f0:	e59d8018 	ldr	r8, [sp, #24]
 e00e8f4:	e2844001 	add	r4, r4, #1
 e00e8f8:	eafffeb7 	b	e00e3dc <DiagVprintf+0x144>
 e00e8fc:	e59d301c 	ldr	r3, [sp, #28]
 e00e900:	e0473003 	sub	r3, r7, r3
 e00e904:	e3530000 	cmp	r3, #0
 e00e908:	e58d3020 	str	r3, [sp, #32]
 e00e90c:	ca00002e 	bgt	e00e9cc <DiagVprintf+0x734>
 e00e910:	e3520000 	cmp	r2, #0
 e00e914:	0a000044 	beq	e00ea2c <DiagVprintf+0x794>
 e00e918:	e5d20000 	ldrb	r0, [r2]
 e00e91c:	e3500000 	cmp	r0, #0
 e00e920:	1affffe0 	bne	e00e8a8 <DiagVprintf+0x610>
 e00e924:	eafffff1 	b	e00e8f0 <DiagVprintf+0x658>
 e00e928:	e59d2014 	ldr	r2, [sp, #20]
 e00e92c:	e58d2004 	str	r2, [sp, #4]
 e00e930:	e1a0300a 	mov	r3, sl
 e00e934:	e3a02002 	mov	r2, #2
 e00e938:	e58db008 	str	fp, [sp, #8]
 e00e93c:	e58d7000 	str	r7, [sp]
 e00e940:	ebfffddb 	bl	e00e0b4 <print_unsigned_num>
 e00e944:	eaffffb1 	b	e00e810 <DiagVprintf+0x578>
 e00e948:	e59d2014 	ldr	r2, [sp, #20]
 e00e94c:	e58d2004 	str	r2, [sp, #4]
 e00e950:	e1a0300a 	mov	r3, sl
 e00e954:	e3a02008 	mov	r2, #8
 e00e958:	e58db008 	str	fp, [sp, #8]
 e00e95c:	e58d7000 	str	r7, [sp]
 e00e960:	ebfffdd3 	bl	e00e0b4 <print_unsigned_num>
 e00e964:	eaffffa9 	b	e00e810 <DiagVprintf+0x578>
 e00e968:	e2700000 	rsbs	r0, r0, #0
 e00e96c:	e2e11000 	rsc	r1, r1, #0
 e00e970:	e3a02001 	mov	r2, #1
 e00e974:	eafffecd 	b	e00e4b0 <DiagVprintf+0x218>
 e00e978:	e3085d98 	movw	r5, #36248	; 0x8d98
 e00e97c:	e3405e00 	movt	r5, #3584	; 0xe00
 e00e980:	e247b001 	sub	fp, r7, #1
 e00e984:	e1a0000a 	mov	r0, sl
 e00e988:	e12fff35 	blx	r5
 e00e98c:	e25bb001 	subs	fp, fp, #1
 e00e990:	1afffffb 	bne	e00e984 <DiagVprintf+0x6ec>
 e00e994:	e59d0018 	ldr	r0, [sp, #24]
 e00e998:	e0866007 	add	r6, r6, r7
 e00e99c:	e12fff35 	blx	r5
 e00e9a0:	eafffe8c 	b	e00e3d8 <DiagVprintf+0x140>
 e00e9a4:	e3085d98 	movw	r5, #36248	; 0x8d98
 e00e9a8:	e3405e00 	movt	r5, #3584	; 0xe00
 e00e9ac:	e1a0b007 	mov	fp, r7
 e00e9b0:	e1a0000a 	mov	r0, sl
 e00e9b4:	e12fff35 	blx	r5
 e00e9b8:	e25bb001 	subs	fp, fp, #1
 e00e9bc:	1afffffb 	bne	e00e9b0 <DiagVprintf+0x718>
 e00e9c0:	e59d8018 	ldr	r8, [sp, #24]
 e00e9c4:	e0866007 	add	r6, r6, r7
 e00e9c8:	eafffe82 	b	e00e3d8 <DiagVprintf+0x140>
 e00e9cc:	e1a08003 	mov	r8, r3
 e00e9d0:	e1a03004 	mov	r3, r4
 e00e9d4:	e3085d98 	movw	r5, #36248	; 0x8d98
 e00e9d8:	e3405e00 	movt	r5, #3584	; 0xe00
 e00e9dc:	e1a0400a 	mov	r4, sl
 e00e9e0:	e1a0a003 	mov	sl, r3
 e00e9e4:	e58d2024 	str	r2, [sp, #36]	; 0x24
 e00e9e8:	e1a00004 	mov	r0, r4
 e00e9ec:	e12fff35 	blx	r5
 e00e9f0:	e2588001 	subs	r8, r8, #1
 e00e9f4:	1afffffb 	bne	e00e9e8 <DiagVprintf+0x750>
 e00e9f8:	e1a0300a 	mov	r3, sl
 e00e9fc:	e1a0a004 	mov	sl, r4
 e00ea00:	e1a04003 	mov	r4, r3
 e00ea04:	e59d3020 	ldr	r3, [sp, #32]
 e00ea08:	e59d2024 	ldr	r2, [sp, #36]	; 0x24
 e00ea0c:	e0866003 	add	r6, r6, r3
 e00ea10:	eaffffbe 	b	e00e910 <DiagVprintf+0x678>
 e00ea14:	e1a07000 	mov	r7, r0
 e00ea18:	eafffe6c 	b	e00e3d0 <DiagVprintf+0x138>
 e00ea1c:	e1a06000 	mov	r6, r0
 e00ea20:	eafffe70 	b	e00e3e8 <DiagVprintf+0x150>
 e00ea24:	e58d001c 	str	r0, [sp, #28]
 e00ea28:	eaffff98 	b	e00e890 <DiagVprintf+0x5f8>
 e00ea2c:	e2466001 	sub	r6, r6, #1
 e00ea30:	eaffffae 	b	e00e8f0 <DiagVprintf+0x658>
 e00ea34:	e2466001 	sub	r6, r6, #1
 e00ea38:	eaffffa8 	b	e00e8e0 <DiagVprintf+0x648>

0e00ea3c <DiagVprintfNano>:
 e00ea3c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e00ea40:	e1a04000 	mov	r4, r0
 e00ea44:	e5d00000 	ldrb	r0, [r0]
 e00ea48:	e24dd02c 	sub	sp, sp, #44	; 0x2c
 e00ea4c:	e3500000 	cmp	r0, #0
 e00ea50:	0a000136 	beq	e00ef30 <DiagVprintfNano+0x4f4>
 e00ea54:	e3086d98 	movw	r6, #36248	; 0x8d98
 e00ea58:	e3406e00 	movt	r6, #3584	; 0xe00
 e00ea5c:	e30c3ccd 	movw	r3, #52429	; 0xcccd
 e00ea60:	e34c3ccc 	movt	r3, #52428	; 0xcccc
 e00ea64:	e1a08001 	mov	r8, r1
 e00ea68:	e3a07000 	mov	r7, #0
 e00ea6c:	e58d3004 	str	r3, [sp, #4]
 e00ea70:	ea000004 	b	e00ea88 <DiagVprintfNano+0x4c>
 e00ea74:	e2877001 	add	r7, r7, #1
 e00ea78:	e12fff36 	blx	r6
 e00ea7c:	e5d40000 	ldrb	r0, [r4]
 e00ea80:	e3500000 	cmp	r0, #0
 e00ea84:	0a00001d 	beq	e00eb00 <DiagVprintfNano+0xc4>
 e00ea88:	e2844001 	add	r4, r4, #1
 e00ea8c:	e3500025 	cmp	r0, #37	; 0x25
 e00ea90:	1afffff7 	bne	e00ea74 <DiagVprintfNano+0x38>
 e00ea94:	e3a05000 	mov	r5, #0
 e00ea98:	e1a03005 	mov	r3, r5
 e00ea9c:	e3a0c00a 	mov	ip, #10
 e00eaa0:	e5d40000 	ldrb	r0, [r4]
 e00eaa4:	e3500043 	cmp	r0, #67	; 0x43
 e00eaa8:	0a0000a1 	beq	e00ed34 <DiagVprintfNano+0x2f8>
 e00eaac:	8a000021 	bhi	e00eb38 <DiagVprintfNano+0xfc>
 e00eab0:	e3500025 	cmp	r0, #37	; 0x25
 e00eab4:	0a0000c6 	beq	e00edd4 <DiagVprintfNano+0x398>
 e00eab8:	9a000013 	bls	e00eb0c <DiagVprintfNano+0xd0>
 e00eabc:	e3500030 	cmp	r0, #48	; 0x30
 e00eac0:	0a000015 	beq	e00eb1c <DiagVprintfNano+0xe0>
 e00eac4:	e2403031 	sub	r3, r0, #49	; 0x31
 e00eac8:	e6ef3073 	uxtb	r3, r3
 e00eacc:	e3530008 	cmp	r3, #8
 e00ead0:	8a0000a0 	bhi	e00ed58 <DiagVprintfNano+0x31c>
 e00ead4:	e3a03020 	mov	r3, #32
 e00ead8:	e3a05000 	mov	r5, #0
 e00eadc:	e2402030 	sub	r2, r0, #48	; 0x30
 e00eae0:	e021059c 	mla	r1, ip, r5, r0
 e00eae4:	e6ef2072 	uxtb	r2, r2
 e00eae8:	e3520009 	cmp	r2, #9
 e00eaec:	8affffeb 	bhi	e00eaa0 <DiagVprintfNano+0x64>
 e00eaf0:	e5f40001 	ldrb	r0, [r4, #1]!
 e00eaf4:	e2415030 	sub	r5, r1, #48	; 0x30
 e00eaf8:	e3500000 	cmp	r0, #0
 e00eafc:	1afffff6 	bne	e00eadc <DiagVprintfNano+0xa0>
 e00eb00:	e1a00007 	mov	r0, r7
 e00eb04:	e28dd02c 	add	sp, sp, #44	; 0x2c
 e00eb08:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00eb0c:	e3500000 	cmp	r0, #0
 e00eb10:	0a00003b 	beq	e00ec04 <DiagVprintfNano+0x1c8>
 e00eb14:	e3500020 	cmp	r0, #32
 e00eb18:	1a00008e 	bne	e00ed58 <DiagVprintfNano+0x31c>
 e00eb1c:	e5d42001 	ldrb	r2, [r4, #1]
 e00eb20:	e2844001 	add	r4, r4, #1
 e00eb24:	e3520000 	cmp	r2, #0
 e00eb28:	0afffff4 	beq	e00eb00 <DiagVprintfNano+0xc4>
 e00eb2c:	e1a03000 	mov	r3, r0
 e00eb30:	e1a00002 	mov	r0, r2
 e00eb34:	eaffffe7 	b	e00ead8 <DiagVprintfNano+0x9c>
 e00eb38:	e3500073 	cmp	r0, #115	; 0x73
 e00eb3c:	0a000089 	beq	e00ed68 <DiagVprintfNano+0x32c>
 e00eb40:	9a000031 	bls	e00ec0c <DiagVprintfNano+0x1d0>
 e00eb44:	e3500075 	cmp	r0, #117	; 0x75
 e00eb48:	0a0000a5 	beq	e00ede4 <DiagVprintfNano+0x3a8>
 e00eb4c:	e3500078 	cmp	r0, #120	; 0x78
 e00eb50:	1a000080 	bne	e00ed58 <DiagVprintfNano+0x31c>
 e00eb54:	e1a02008 	mov	r2, r8
 e00eb58:	e28da01c 	add	sl, sp, #28
 e00eb5c:	e1a0000a 	mov	r0, sl
 e00eb60:	e4921004 	ldr	r1, [r2], #4
 e00eb64:	e3a09000 	mov	r9, #0
 e00eb68:	e58d2008 	str	r2, [sp, #8]
 e00eb6c:	ea000000 	b	e00eb74 <DiagVprintfNano+0x138>
 e00eb70:	e1a09008 	mov	r9, r8
 e00eb74:	e201200f 	and	r2, r1, #15
 e00eb78:	e3520009 	cmp	r2, #9
 e00eb7c:	e282b057 	add	fp, r2, #87	; 0x57
 e00eb80:	9282b030 	addls	fp, r2, #48	; 0x30
 e00eb84:	e1a02221 	lsr	r2, r1, #4
 e00eb88:	e351000f 	cmp	r1, #15
 e00eb8c:	e2898001 	add	r8, r9, #1
 e00eb90:	e1a01002 	mov	r1, r2
 e00eb94:	e4c0b001 	strb	fp, [r0], #1
 e00eb98:	8afffff4 	bhi	e00eb70 <DiagVprintfNano+0x134>
 e00eb9c:	e3550000 	cmp	r5, #0
 e00eba0:	da0000cc 	ble	e00eed8 <DiagVprintfNano+0x49c>
 e00eba4:	e1550008 	cmp	r5, r8
 e00eba8:	da0000ca 	ble	e00eed8 <DiagVprintfNano+0x49c>
 e00ebac:	e58d4010 	str	r4, [sp, #16]
 e00ebb0:	e1a04003 	mov	r4, r3
 e00ebb4:	e58d500c 	str	r5, [sp, #12]
 e00ebb8:	e2455001 	sub	r5, r5, #1
 e00ebbc:	e1a00004 	mov	r0, r4
 e00ebc0:	e12fff36 	blx	r6
 e00ebc4:	e1580005 	cmp	r8, r5
 e00ebc8:	1afffffa 	bne	e00ebb8 <DiagVprintfNano+0x17c>
 e00ebcc:	e59d500c 	ldr	r5, [sp, #12]
 e00ebd0:	e59d4010 	ldr	r4, [sp, #16]
 e00ebd4:	e0458008 	sub	r8, r5, r8
 e00ebd8:	e08a5009 	add	r5, sl, r9
 e00ebdc:	e1a0000b 	mov	r0, fp
 e00ebe0:	ea000000 	b	e00ebe8 <DiagVprintfNano+0x1ac>
 e00ebe4:	e5750001 	ldrb	r0, [r5, #-1]!
 e00ebe8:	e12fff36 	blx	r6
 e00ebec:	e155000a 	cmp	r5, sl
 e00ebf0:	1afffffb 	bne	e00ebe4 <DiagVprintfNano+0x1a8>
 e00ebf4:	e2877001 	add	r7, r7, #1
 e00ebf8:	e0877009 	add	r7, r7, r9
 e00ebfc:	e0887007 	add	r7, r8, r7
 e00ec00:	e59d8008 	ldr	r8, [sp, #8]
 e00ec04:	e2844001 	add	r4, r4, #1
 e00ec08:	eaffff9b 	b	e00ea7c <DiagVprintfNano+0x40>
 e00ec0c:	e3500064 	cmp	r0, #100	; 0x64
 e00ec10:	0a000001 	beq	e00ec1c <DiagVprintfNano+0x1e0>
 e00ec14:	e3500069 	cmp	r0, #105	; 0x69
 e00ec18:	1a000043 	bne	e00ed2c <DiagVprintfNano+0x2f0>
 e00ec1c:	e1a01008 	mov	r1, r8
 e00ec20:	e28da01c 	add	sl, sp, #28
 e00ec24:	e59dc004 	ldr	ip, [sp, #4]
 e00ec28:	e4912004 	ldr	r2, [r1], #4
 e00ec2c:	e58d100c 	str	r1, [sp, #12]
 e00ec30:	e3520000 	cmp	r2, #0
 e00ec34:	b3a01001 	movlt	r1, #1
 e00ec38:	a3a01000 	movge	r1, #0
 e00ec3c:	b2622000 	rsblt	r2, r2, #0
 e00ec40:	e58d1008 	str	r1, [sp, #8]
 e00ec44:	e3a0b000 	mov	fp, #0
 e00ec48:	e1a0100a 	mov	r1, sl
 e00ec4c:	e3a0000a 	mov	r0, #10
 e00ec50:	e08e829c 	umull	r8, lr, ip, r2
 e00ec54:	e3520009 	cmp	r2, #9
 e00ec58:	e1a0800b 	mov	r8, fp
 e00ec5c:	e1a0e1ae 	lsr	lr, lr, #3
 e00ec60:	e28bb001 	add	fp, fp, #1
 e00ec64:	e0692e90 	mls	r9, r0, lr, r2
 e00ec68:	e1a0200e 	mov	r2, lr
 e00ec6c:	e2899030 	add	r9, r9, #48	; 0x30
 e00ec70:	e6ef9079 	uxtb	r9, r9
 e00ec74:	e4c19001 	strb	r9, [r1], #1
 e00ec78:	8afffff4 	bhi	e00ec50 <DiagVprintfNano+0x214>
 e00ec7c:	e59d2008 	ldr	r2, [sp, #8]
 e00ec80:	e3520000 	cmp	r2, #0
 e00ec84:	1a000085 	bne	e00eea0 <DiagVprintfNano+0x464>
 e00ec88:	e3550000 	cmp	r5, #0
 e00ec8c:	da000018 	ble	e00ecf4 <DiagVprintfNano+0x2b8>
 e00ec90:	e155000b 	cmp	r5, fp
 e00ec94:	da000016 	ble	e00ecf4 <DiagVprintfNano+0x2b8>
 e00ec98:	e58d4014 	str	r4, [sp, #20]
 e00ec9c:	e1a04003 	mov	r4, r3
 e00eca0:	e58d5010 	str	r5, [sp, #16]
 e00eca4:	e2455001 	sub	r5, r5, #1
 e00eca8:	e1a00004 	mov	r0, r4
 e00ecac:	e12fff36 	blx	r6
 e00ecb0:	e15b0005 	cmp	fp, r5
 e00ecb4:	1afffffa 	bne	e00eca4 <DiagVprintfNano+0x268>
 e00ecb8:	e59d1008 	ldr	r1, [sp, #8]
 e00ecbc:	e59d5010 	ldr	r5, [sp, #16]
 e00ecc0:	e1e0200b 	mvn	r2, fp
 e00ecc4:	e0822005 	add	r2, r2, r5
 e00ecc8:	e3510000 	cmp	r1, #0
 e00eccc:	e2811001 	add	r1, r1, #1
 e00ecd0:	e1a03004 	mov	r3, r4
 e00ecd4:	e0822001 	add	r2, r2, r1
 e00ecd8:	e59d4014 	ldr	r4, [sp, #20]
 e00ecdc:	e58d2008 	str	r2, [sp, #8]
 e00ece0:	0a000003 	beq	e00ecf4 <DiagVprintfNano+0x2b8>
 e00ece4:	e31300df 	tst	r3, #223	; 0xdf
 e00ece8:	1a000001 	bne	e00ecf4 <DiagVprintfNano+0x2b8>
 e00ecec:	e3a0002d 	mov	r0, #45	; 0x2d
 e00ecf0:	e12fff36 	blx	r6
 e00ecf4:	e08a5008 	add	r5, sl, r8
 e00ecf8:	e1a00009 	mov	r0, r9
 e00ecfc:	ea000000 	b	e00ed04 <DiagVprintfNano+0x2c8>
 e00ed00:	e5750001 	ldrb	r0, [r5, #-1]!
 e00ed04:	e12fff36 	blx	r6
 e00ed08:	e15a0005 	cmp	sl, r5
 e00ed0c:	1afffffb 	bne	e00ed00 <DiagVprintfNano+0x2c4>
 e00ed10:	e59d3008 	ldr	r3, [sp, #8]
 e00ed14:	e2877001 	add	r7, r7, #1
 e00ed18:	e0877008 	add	r7, r7, r8
 e00ed1c:	e0837007 	add	r7, r3, r7
 e00ed20:	e59d800c 	ldr	r8, [sp, #12]
 e00ed24:	e2844001 	add	r4, r4, #1
 e00ed28:	eaffff53 	b	e00ea7c <DiagVprintfNano+0x40>
 e00ed2c:	e3500063 	cmp	r0, #99	; 0x63
 e00ed30:	1a000008 	bne	e00ed58 <DiagVprintfNano+0x31c>
 e00ed34:	e4989004 	ldr	r9, [r8], #4
 e00ed38:	e3550001 	cmp	r5, #1
 e00ed3c:	e6ef9079 	uxtb	r9, r9
 e00ed40:	ca000066 	bgt	e00eee0 <DiagVprintfNano+0x4a4>
 e00ed44:	e1a00009 	mov	r0, r9
 e00ed48:	e2877001 	add	r7, r7, #1
 e00ed4c:	e2844001 	add	r4, r4, #1
 e00ed50:	e12fff36 	blx	r6
 e00ed54:	eaffff48 	b	e00ea7c <DiagVprintfNano+0x40>
 e00ed58:	e3e07000 	mvn	r7, #0
 e00ed5c:	e1a00007 	mov	r0, r7
 e00ed60:	e28dd02c 	add	sp, sp, #44	; 0x2c
 e00ed64:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00ed68:	e4989004 	ldr	r9, [r8], #4
 e00ed6c:	e5d92000 	ldrb	r2, [r9]
 e00ed70:	e3520000 	cmp	r2, #0
 e00ed74:	0a000006 	beq	e00ed94 <DiagVprintfNano+0x358>
 e00ed78:	e1a02009 	mov	r2, r9
 e00ed7c:	e269a001 	rsb	sl, r9, #1
 e00ed80:	e08a0002 	add	r0, sl, r2
 e00ed84:	e5f21001 	ldrb	r1, [r2, #1]!
 e00ed88:	e3510000 	cmp	r1, #0
 e00ed8c:	1afffffb 	bne	e00ed80 <DiagVprintfNano+0x344>
 e00ed90:	e0455000 	sub	r5, r5, r0
 e00ed94:	e3550000 	cmp	r5, #0
 e00ed98:	ca000059 	bgt	e00ef04 <DiagVprintfNano+0x4c8>
 e00ed9c:	e3590000 	cmp	r9, #0
 e00eda0:	0a000064 	beq	e00ef38 <DiagVprintfNano+0x4fc>
 e00eda4:	e5d90000 	ldrb	r0, [r9]
 e00eda8:	e3500000 	cmp	r0, #0
 e00edac:	0affff94 	beq	e00ec04 <DiagVprintfNano+0x1c8>
 e00edb0:	e269a001 	rsb	sl, r9, #1
 e00edb4:	e12fff36 	blx	r6
 e00edb8:	e089300a 	add	r3, r9, sl
 e00edbc:	e5f90001 	ldrb	r0, [r9, #1]!
 e00edc0:	e3500000 	cmp	r0, #0
 e00edc4:	1afffffa 	bne	e00edb4 <DiagVprintfNano+0x378>
 e00edc8:	e0877003 	add	r7, r7, r3
 e00edcc:	e2844001 	add	r4, r4, #1
 e00edd0:	eaffff29 	b	e00ea7c <DiagVprintfNano+0x40>
 e00edd4:	e2877001 	add	r7, r7, #1
 e00edd8:	e2844001 	add	r4, r4, #1
 e00eddc:	e12fff36 	blx	r6
 e00ede0:	eaffff25 	b	e00ea7c <DiagVprintfNano+0x40>
 e00ede4:	e1a02008 	mov	r2, r8
 e00ede8:	e28da01c 	add	sl, sp, #28
 e00edec:	e1a0000a 	mov	r0, sl
 e00edf0:	e4921004 	ldr	r1, [r2], #4
 e00edf4:	e58d2008 	str	r2, [sp, #8]
 e00edf8:	e59d2004 	ldr	r2, [sp, #4]
 e00edfc:	e3a08000 	mov	r8, #0
 e00ee00:	e3a0c00a 	mov	ip, #10
 e00ee04:	e08e9192 	umull	r9, lr, r2, r1
 e00ee08:	e3510009 	cmp	r1, #9
 e00ee0c:	e1a0b008 	mov	fp, r8
 e00ee10:	e1a0e1ae 	lsr	lr, lr, #3
 e00ee14:	e2888001 	add	r8, r8, #1
 e00ee18:	e0691e9c 	mls	r9, ip, lr, r1
 e00ee1c:	e1a0100e 	mov	r1, lr
 e00ee20:	e2899030 	add	r9, r9, #48	; 0x30
 e00ee24:	e6ef9079 	uxtb	r9, r9
 e00ee28:	e4c09001 	strb	r9, [r0], #1
 e00ee2c:	8afffff4 	bhi	e00ee04 <DiagVprintfNano+0x3c8>
 e00ee30:	e3550000 	cmp	r5, #0
 e00ee34:	da000025 	ble	e00eed0 <DiagVprintfNano+0x494>
 e00ee38:	e1550008 	cmp	r5, r8
 e00ee3c:	da000023 	ble	e00eed0 <DiagVprintfNano+0x494>
 e00ee40:	e58d4010 	str	r4, [sp, #16]
 e00ee44:	e1a04003 	mov	r4, r3
 e00ee48:	e58d500c 	str	r5, [sp, #12]
 e00ee4c:	e2455001 	sub	r5, r5, #1
 e00ee50:	e1a00004 	mov	r0, r4
 e00ee54:	e12fff36 	blx	r6
 e00ee58:	e1580005 	cmp	r8, r5
 e00ee5c:	1afffffa 	bne	e00ee4c <DiagVprintfNano+0x410>
 e00ee60:	e59d500c 	ldr	r5, [sp, #12]
 e00ee64:	e59d4010 	ldr	r4, [sp, #16]
 e00ee68:	e0458008 	sub	r8, r5, r8
 e00ee6c:	e08a500b 	add	r5, sl, fp
 e00ee70:	e1a00009 	mov	r0, r9
 e00ee74:	ea000000 	b	e00ee7c <DiagVprintfNano+0x440>
 e00ee78:	e5750001 	ldrb	r0, [r5, #-1]!
 e00ee7c:	e12fff36 	blx	r6
 e00ee80:	e15a0005 	cmp	sl, r5
 e00ee84:	1afffffb 	bne	e00ee78 <DiagVprintfNano+0x43c>
 e00ee88:	e2877001 	add	r7, r7, #1
 e00ee8c:	e087700b 	add	r7, r7, fp
 e00ee90:	e0887007 	add	r7, r8, r7
 e00ee94:	e2844001 	add	r4, r4, #1
 e00ee98:	e59d8008 	ldr	r8, [sp, #8]
 e00ee9c:	eafffef6 	b	e00ea7c <DiagVprintfNano+0x40>
 e00eea0:	e2455001 	sub	r5, r5, #1
 e00eea4:	e3530030 	cmp	r3, #48	; 0x30
 e00eea8:	1a00001d 	bne	e00ef24 <DiagVprintfNano+0x4e8>
 e00eeac:	e3a0002d 	mov	r0, #45	; 0x2d
 e00eeb0:	e58d3010 	str	r3, [sp, #16]
 e00eeb4:	e12fff36 	blx	r6
 e00eeb8:	e59d3010 	ldr	r3, [sp, #16]
 e00eebc:	e3550000 	cmp	r5, #0
 e00eec0:	daffff8b 	ble	e00ecf4 <DiagVprintfNano+0x2b8>
 e00eec4:	e15b0005 	cmp	fp, r5
 e00eec8:	baffff72 	blt	e00ec98 <DiagVprintfNano+0x25c>
 e00eecc:	eaffff84 	b	e00ece4 <DiagVprintfNano+0x2a8>
 e00eed0:	e3a08000 	mov	r8, #0
 e00eed4:	eaffffe4 	b	e00ee6c <DiagVprintfNano+0x430>
 e00eed8:	e3a08000 	mov	r8, #0
 e00eedc:	eaffff3d 	b	e00ebd8 <DiagVprintfNano+0x19c>
 e00eee0:	e245a001 	sub	sl, r5, #1
 e00eee4:	e1a0b003 	mov	fp, r3
 e00eee8:	e1a0000b 	mov	r0, fp
 e00eeec:	e12fff36 	blx	r6
 e00eef0:	e25aa001 	subs	sl, sl, #1
 e00eef4:	1afffffb 	bne	e00eee8 <DiagVprintfNano+0x4ac>
 e00eef8:	e2477001 	sub	r7, r7, #1
 e00eefc:	e0877005 	add	r7, r7, r5
 e00ef00:	eaffff8f 	b	e00ed44 <DiagVprintfNano+0x308>
 e00ef04:	e1a0a005 	mov	sl, r5
 e00ef08:	e1a0b003 	mov	fp, r3
 e00ef0c:	e1a0000b 	mov	r0, fp
 e00ef10:	e12fff36 	blx	r6
 e00ef14:	e25aa001 	subs	sl, sl, #1
 e00ef18:	1afffffb 	bne	e00ef0c <DiagVprintfNano+0x4d0>
 e00ef1c:	e0877005 	add	r7, r7, r5
 e00ef20:	eaffff9d 	b	e00ed9c <DiagVprintfNano+0x360>
 e00ef24:	e3550000 	cmp	r5, #0
 e00ef28:	caffffe5 	bgt	e00eec4 <DiagVprintfNano+0x488>
 e00ef2c:	eaffff6c 	b	e00ece4 <DiagVprintfNano+0x2a8>
 e00ef30:	e1a07000 	mov	r7, r0
 e00ef34:	eafffef1 	b	e00eb00 <DiagVprintfNano+0xc4>
 e00ef38:	e2477001 	sub	r7, r7, #1
 e00ef3c:	eaffff30 	b	e00ec04 <DiagVprintfNano+0x1c8>

0e00ef40 <DiagPrintf>:
 e00ef40:	e92d000f 	push	{r0, r1, r2, r3}
 e00ef44:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e00ef48:	e24dd00c 	sub	sp, sp, #12
 e00ef4c:	e28d1014 	add	r1, sp, #20
 e00ef50:	e59d0010 	ldr	r0, [sp, #16]
 e00ef54:	e58d1004 	str	r1, [sp, #4]
 e00ef58:	ebfffcce 	bl	e00e298 <DiagVprintf>
 e00ef5c:	e28dd00c 	add	sp, sp, #12
 e00ef60:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 e00ef64:	e28dd010 	add	sp, sp, #16
 e00ef68:	e12fff1e 	bx	lr

0e00ef6c <DiagPrintfNano>:
 e00ef6c:	e92d000f 	push	{r0, r1, r2, r3}
 e00ef70:	e92d4030 	push	{r4, r5, lr}
 e00ef74:	e24dd00c 	sub	sp, sp, #12
 e00ef78:	e10f5000 	mrs	r5, CPSR
 e00ef7c:	f10c0080 	cpsid	i
 e00ef80:	f57ff04f 	dsb	sy
 e00ef84:	f57ff06f 	isb	sy
 e00ef88:	e3a03001 	mov	r3, #1
 e00ef8c:	e3034c40 	movw	r4, #15424	; 0x3c40
 e00ef90:	e346400a 	movt	r4, #24586	; 0x600a
 e00ef94:	e1942f9f 	ldrex	r2, [r4]
 e00ef98:	e3520000 	cmp	r2, #0
 e00ef9c:	1320f002 	wfene
 e00efa0:	01842f93 	strexeq	r2, r3, [r4]
 e00efa4:	03520000 	cmpeq	r2, #0
 e00efa8:	1afffff9 	bne	e00ef94 <DiagPrintfNano+0x28>
 e00efac:	f57ff05f 	dmb	sy
 e00efb0:	e28d101c 	add	r1, sp, #28
 e00efb4:	e59d0018 	ldr	r0, [sp, #24]
 e00efb8:	e58d1004 	str	r1, [sp, #4]
 e00efbc:	ebfffe9e 	bl	e00ea3c <DiagVprintfNano>
 e00efc0:	e3a03000 	mov	r3, #0
 e00efc4:	f57ff05f 	dmb	sy
 e00efc8:	e5843000 	str	r3, [r4]
 e00efcc:	f57ff04f 	dsb	sy
 e00efd0:	e320f004 	sev
 e00efd4:	e121f005 	msr	CPSR_c, r5
 e00efd8:	e28dd00c 	add	sp, sp, #12
 e00efdc:	e8bd4030 	pop	{r4, r5, lr}
 e00efe0:	e28dd010 	add	sp, sp, #16
 e00efe4:	e12fff1e 	bx	lr

0e00efe8 <DiagSnPrintf>:
 e00efe8:	e92d000c 	push	{r2, r3}
 e00efec:	e3500000 	cmp	r0, #0
 e00eff0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e00eff4:	e24dd01c 	sub	sp, sp, #28
 e00eff8:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
 e00effc:	0a000014 	beq	e00f054 <DiagSnPrintf+0x6c>
 e00f000:	e3510000 	cmp	r1, #0
 e00f004:	e5d2c000 	ldrb	ip, [r2]
 e00f008:	e28d3044 	add	r3, sp, #68	; 0x44
 e00f00c:	10801001 	addne	r1, r0, r1
 e00f010:	e58d3000 	str	r3, [sp]
 e00f014:	03e01000 	mvneq	r1, #0
 e00f018:	e1a03000 	mov	r3, r0
 e00f01c:	e35c0000 	cmp	ip, #0
 e00f020:	0a0000cc 	beq	e00f358 <DiagSnPrintf+0x370>
 e00f024:	e3069667 	movw	r9, #26215	; 0x6667
 e00f028:	e3469666 	movt	r9, #26214	; 0x6666
 e00f02c:	e3057298 	movw	r7, #21144	; 0x5298
 e00f030:	e3407e01 	movt	r7, #3585	; 0xe01
 e00f034:	e35c0025 	cmp	ip, #37	; 0x25
 e00f038:	0a000010 	beq	e00f080 <DiagSnPrintf+0x98>
 e00f03c:	e4c3c001 	strb	ip, [r3], #1
 e00f040:	e1510003 	cmp	r1, r3
 e00f044:	8a000006 	bhi	e00f064 <DiagSnPrintf+0x7c>
 e00f048:	e0430000 	sub	r0, r3, r0
 e00f04c:	e3a02000 	mov	r2, #0
 e00f050:	e5c32000 	strb	r2, [r3]
 e00f054:	e28dd01c 	add	sp, sp, #28
 e00f058:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e00f05c:	e28dd008 	add	sp, sp, #8
 e00f060:	e12fff1e 	bx	lr
 e00f064:	e1a05002 	mov	r5, r2
 e00f068:	e5d5c001 	ldrb	ip, [r5, #1]
 e00f06c:	e2852001 	add	r2, r5, #1
 e00f070:	e35c0000 	cmp	ip, #0
 e00f074:	0afffff3 	beq	e00f048 <DiagSnPrintf+0x60>
 e00f078:	e35c0025 	cmp	ip, #37	; 0x25
 e00f07c:	1affffee 	bne	e00f03c <DiagSnPrintf+0x54>
 e00f080:	e59dc000 	ldr	ip, [sp]
 e00f084:	e5d2e001 	ldrb	lr, [r2, #1]
 e00f088:	e2825001 	add	r5, r2, #1
 e00f08c:	e59c6000 	ldr	r6, [ip]
 e00f090:	e35e0073 	cmp	lr, #115	; 0x73
 e00f094:	028cc004 	addeq	ip, ip, #4
 e00f098:	00466003 	subeq	r6, r6, r3
 e00f09c:	058dc000 	streq	ip, [sp]
 e00f0a0:	0a00004a 	beq	e00f1d0 <DiagSnPrintf+0x1e8>
 e00f0a4:	e20e40df 	and	r4, lr, #223	; 0xdf
 e00f0a8:	e28cc004 	add	ip, ip, #4
 e00f0ac:	e3540050 	cmp	r4, #80	; 0x50
 e00f0b0:	e58dc000 	str	ip, [sp]
 e00f0b4:	1a00004c 	bne	e00f1ec <DiagSnPrintf+0x204>
 e00f0b8:	e356000f 	cmp	r6, #15
 e00f0bc:	c3a0c008 	movgt	ip, #8
 e00f0c0:	c3a0a030 	movgt	sl, #48	; 0x30
 e00f0c4:	ca00004d 	bgt	e00f200 <DiagSnPrintf+0x218>
 e00f0c8:	e3a04000 	mov	r4, #0
 e00f0cc:	e3a0c008 	mov	ip, #8
 e00f0d0:	e3a0a030 	mov	sl, #48	; 0x30
 e00f0d4:	e24e2031 	sub	r2, lr, #49	; 0x31
 e00f0d8:	e3520008 	cmp	r2, #8
 e00f0dc:	9a00006b 	bls	e00f290 <DiagSnPrintf+0x2a8>
 e00f0e0:	e20e20d7 	and	r2, lr, #215	; 0xd7
 e00f0e4:	e3520050 	cmp	r2, #80	; 0x50
 e00f0e8:	1a000061 	bne	e00f274 <DiagSnPrintf+0x28c>
 e00f0ec:	e20e20df 	and	r2, lr, #223	; 0xdf
 e00f0f0:	e3520050 	cmp	r2, #80	; 0x50
 e00f0f4:	e20ee020 	and	lr, lr, #32
 e00f0f8:	e1a08006 	mov	r8, r6
 e00f0fc:	128d2004 	addne	r2, sp, #4
 e00f100:	1a000004 	bne	e00f118 <DiagSnPrintf+0x130>
 e00f104:	e3a02030 	mov	r2, #48	; 0x30
 e00f108:	e5cd2004 	strb	r2, [sp, #4]
 e00f10c:	e38e2058 	orr	r2, lr, #88	; 0x58
 e00f110:	e5cd2005 	strb	r2, [sp, #5]
 e00f114:	e28d2006 	add	r2, sp, #6
 e00f118:	e3560000 	cmp	r6, #0
 e00f11c:	13a0b000 	movne	fp, #0
 e00f120:	0a000090 	beq	e00f368 <DiagSnPrintf+0x380>
 e00f124:	e28bb001 	add	fp, fp, #1
 e00f128:	e1b08228 	lsrs	r8, r8, #4
 e00f12c:	1afffffc 	bne	e00f124 <DiagSnPrintf+0x13c>
 e00f130:	e15c000b 	cmp	ip, fp
 e00f134:	da000089 	ble	e00f360 <DiagSnPrintf+0x378>
 e00f138:	e04cc00b 	sub	ip, ip, fp
 e00f13c:	e082c00c 	add	ip, r2, ip
 e00f140:	e4c2a001 	strb	sl, [r2], #1
 e00f144:	e15c0002 	cmp	ip, r2
 e00f148:	1afffffc 	bne	e00f140 <DiagSnPrintf+0x158>
 e00f14c:	e1e0af04 	mvn	sl, r4, lsl #30
 e00f150:	e1a0b004 	mov	fp, r4
 e00f154:	e1e0af2a 	mvn	sl, sl, lsr #30
 e00f158:	e1a0800c 	mov	r8, ip
 e00f15c:	e1a02456 	asr	r2, r6, r4
 e00f160:	e202200f 	and	r2, r2, #15
 e00f164:	e2444004 	sub	r4, r4, #4
 e00f168:	e15a0004 	cmp	sl, r4
 e00f16c:	e7d72002 	ldrb	r2, [r7, r2]
 e00f170:	e18e2002 	orr	r2, lr, r2
 e00f174:	e4c82001 	strb	r2, [r8], #1
 e00f178:	1afffff7 	bne	e00f15c <DiagSnPrintf+0x174>
 e00f17c:	e08cc12b 	add	ip, ip, fp, lsr #2
 e00f180:	e28cc001 	add	ip, ip, #1
 e00f184:	e28d2004 	add	r2, sp, #4
 e00f188:	e15c0002 	cmp	ip, r2
 e00f18c:	9affffb5 	bls	e00f068 <DiagSnPrintf+0x80>
 e00f190:	e5dde004 	ldrb	lr, [sp, #4]
 e00f194:	e4c3e001 	strb	lr, [r3], #1
 e00f198:	e1510003 	cmp	r1, r3
 e00f19c:	9a000073 	bls	e00f370 <DiagSnPrintf+0x388>
 e00f1a0:	e28d2005 	add	r2, sp, #5
 e00f1a4:	e1a0e002 	mov	lr, r2
 e00f1a8:	e152000c 	cmp	r2, ip
 e00f1ac:	2affffad 	bcs	e00f068 <DiagSnPrintf+0x80>
 e00f1b0:	e5dee000 	ldrb	lr, [lr]
 e00f1b4:	e4c3e001 	strb	lr, [r3], #1
 e00f1b8:	e2822001 	add	r2, r2, #1
 e00f1bc:	e1510003 	cmp	r1, r3
 e00f1c0:	1afffff7 	bne	e00f1a4 <DiagSnPrintf+0x1bc>
 e00f1c4:	e0410000 	sub	r0, r1, r0
 e00f1c8:	e1a03001 	mov	r3, r1
 e00f1cc:	eaffff9e 	b	e00f04c <DiagSnPrintf+0x64>
 e00f1d0:	e7d32006 	ldrb	r2, [r3, r6]
 e00f1d4:	e3520000 	cmp	r2, #0
 e00f1d8:	0affffa2 	beq	e00f068 <DiagSnPrintf+0x80>
 e00f1dc:	e4c32001 	strb	r2, [r3], #1
 e00f1e0:	e1510003 	cmp	r1, r3
 e00f1e4:	8afffff9 	bhi	e00f1d0 <DiagSnPrintf+0x1e8>
 e00f1e8:	eaffff96 	b	e00f048 <DiagSnPrintf+0x60>
 e00f1ec:	e3a0c000 	mov	ip, #0
 e00f1f0:	e356000f 	cmp	r6, #15
 e00f1f4:	e3a0a020 	mov	sl, #32
 e00f1f8:	d1a0400c 	movle	r4, ip
 e00f1fc:	da000017 	ble	e00f260 <DiagSnPrintf+0x278>
 e00f200:	e2464010 	sub	r4, r6, #16
 e00f204:	e35400ef 	cmp	r4, #239	; 0xef
 e00f208:	93a04004 	movls	r4, #4
 e00f20c:	9a000013 	bls	e00f260 <DiagSnPrintf+0x278>
 e00f210:	e2464c01 	sub	r4, r6, #256	; 0x100
 e00f214:	e3540c0f 	cmp	r4, #3840	; 0xf00
 e00f218:	33a04008 	movcc	r4, #8
 e00f21c:	3a00000f 	bcc	e00f260 <DiagSnPrintf+0x278>
 e00f220:	e2464a01 	sub	r4, r6, #4096	; 0x1000
 e00f224:	e3540a0f 	cmp	r4, #61440	; 0xf000
 e00f228:	33a0400c 	movcc	r4, #12
 e00f22c:	3a00000b 	bcc	e00f260 <DiagSnPrintf+0x278>
 e00f230:	e2464801 	sub	r4, r6, #65536	; 0x10000
 e00f234:	e354080f 	cmp	r4, #983040	; 0xf0000
 e00f238:	33a04010 	movcc	r4, #16
 e00f23c:	3a000007 	bcc	e00f260 <DiagSnPrintf+0x278>
 e00f240:	e2464601 	sub	r4, r6, #1048576	; 0x100000
 e00f244:	e354060f 	cmp	r4, #15728640	; 0xf00000
 e00f248:	33a04014 	movcc	r4, #20
 e00f24c:	3a000003 	bcc	e00f260 <DiagSnPrintf+0x278>
 e00f250:	e28644ff 	add	r4, r6, #-16777216	; 0xff000000
 e00f254:	e354040f 	cmp	r4, #251658240	; 0xf000000
 e00f258:	33a04018 	movcc	r4, #24
 e00f25c:	23a0401c 	movcs	r4, #28
 e00f260:	e35e0030 	cmp	lr, #48	; 0x30
 e00f264:	01a0a00e 	moveq	sl, lr
 e00f268:	02825002 	addeq	r5, r2, #2
 e00f26c:	05d2e002 	ldrbeq	lr, [r2, #2]
 e00f270:	eaffff97 	b	e00f0d4 <DiagSnPrintf+0xec>
 e00f274:	e35e0064 	cmp	lr, #100	; 0x64
 e00f278:	0a00000d 	beq	e00f2b4 <DiagSnPrintf+0x2cc>
 e00f27c:	e35e0063 	cmp	lr, #99	; 0x63
 e00f280:	06efe076 	uxtbeq	lr, r6
 e00f284:	e28dc005 	add	ip, sp, #5
 e00f288:	e5cde004 	strb	lr, [sp, #4]
 e00f28c:	eaffffc0 	b	e00f194 <DiagSnPrintf+0x1ac>
 e00f290:	e3a0c000 	mov	ip, #0
 e00f294:	e3a0200a 	mov	r2, #10
 e00f298:	e02cec92 	mla	ip, r2, ip, lr
 e00f29c:	e5f5e001 	ldrb	lr, [r5, #1]!
 e00f2a0:	e24cc030 	sub	ip, ip, #48	; 0x30
 e00f2a4:	e24e2030 	sub	r2, lr, #48	; 0x30
 e00f2a8:	e3520009 	cmp	r2, #9
 e00f2ac:	9afffff8 	bls	e00f294 <DiagSnPrintf+0x2ac>
 e00f2b0:	eaffff8a 	b	e00f0e0 <DiagSnPrintf+0xf8>
 e00f2b4:	e3560000 	cmp	r6, #0
 e00f2b8:	b28d8005 	addlt	r8, sp, #5
 e00f2bc:	a28d8004 	addge	r8, sp, #4
 e00f2c0:	b2666000 	rsblt	r6, r6, #0
 e00f2c4:	b3a0a001 	movlt	sl, #1
 e00f2c8:	a3a0a000 	movge	sl, #0
 e00f2cc:	e1a0c008 	mov	ip, r8
 e00f2d0:	b3a0202d 	movlt	r2, #45	; 0x2d
 e00f2d4:	b5cd2004 	strblt	r2, [sp, #4]
 e00f2d8:	e0ce2699 	smull	r2, lr, r9, r6
 e00f2dc:	e1a02fc6 	asr	r2, r6, #31
 e00f2e0:	e062214e 	rsb	r2, r2, lr, asr #2
 e00f2e4:	e3a0e00a 	mov	lr, #10
 e00f2e8:	e06e629e 	mls	lr, lr, r2, r6
 e00f2ec:	e2526000 	subs	r6, r2, #0
 e00f2f0:	e28e2030 	add	r2, lr, #48	; 0x30
 e00f2f4:	e4cc2001 	strb	r2, [ip], #1
 e00f2f8:	e08c200a 	add	r2, ip, sl
 e00f2fc:	e0422008 	sub	r2, r2, r8
 e00f300:	1afffff4 	bne	e00f2d8 <DiagSnPrintf+0x2f0>
 e00f304:	e1a0e002 	mov	lr, r2
 e00f308:	e1e02124 	mvn	r2, r4, lsr #2
 e00f30c:	e082200e 	add	r2, r2, lr
 e00f310:	e1a0400c 	mov	r4, ip
 e00f314:	e35e0000 	cmp	lr, #0
 e00f318:	e24ee001 	sub	lr, lr, #1
 e00f31c:	d3a0c030 	movle	ip, #48	; 0x30
 e00f320:	d4c4c001 	strble	ip, [r4], #1
 e00f324:	d1a0c004 	movle	ip, r4
 e00f328:	e152000e 	cmp	r2, lr
 e00f32c:	1afffff7 	bne	e00f310 <DiagSnPrintf+0x328>
 e00f330:	e24c2001 	sub	r2, ip, #1
 e00f334:	e1580002 	cmp	r8, r2
 e00f338:	2affff91 	bcs	e00f184 <DiagSnPrintf+0x19c>
 e00f33c:	e5d2e000 	ldrb	lr, [r2]
 e00f340:	e5d84000 	ldrb	r4, [r8]
 e00f344:	e4424001 	strb	r4, [r2], #-1
 e00f348:	e4c8e001 	strb	lr, [r8], #1
 e00f34c:	e1520008 	cmp	r2, r8
 e00f350:	8afffff9 	bhi	e00f33c <DiagSnPrintf+0x354>
 e00f354:	eaffff8a 	b	e00f184 <DiagSnPrintf+0x19c>
 e00f358:	e1a0000c 	mov	r0, ip
 e00f35c:	eaffff3a 	b	e00f04c <DiagSnPrintf+0x64>
 e00f360:	e1a0c002 	mov	ip, r2
 e00f364:	eaffff78 	b	e00f14c <DiagSnPrintf+0x164>
 e00f368:	e1a0b006 	mov	fp, r6
 e00f36c:	eaffff6f 	b	e00f130 <DiagSnPrintf+0x148>
 e00f370:	e1a01003 	mov	r1, r3
 e00f374:	eaffff92 	b	e00f1c4 <DiagSnPrintf+0x1dc>

0e00f378 <io_assert_failed>:
 e00f378:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e00f37c:	e1a0c000 	mov	ip, r0
 e00f380:	e24dd00c 	sub	sp, sp, #12
 e00f384:	e1a00001 	mov	r0, r1
 e00f388:	e30532ac 	movw	r3, #21164	; 0x52ac
 e00f38c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00f390:	e3041084 	movw	r1, #16516	; 0x4084
 e00f394:	e3401e01 	movt	r1, #3585	; 0xe01
 e00f398:	e58d0004 	str	r0, [sp, #4]
 e00f39c:	e3a02045 	mov	r2, #69	; 0x45
 e00f3a0:	e3a00002 	mov	r0, #2
 e00f3a4:	e58dc000 	str	ip, [sp]
 e00f3a8:	ebffee21 	bl	e00ac34 <rtk_log_write_nano>
 e00f3ac:	eafffffe 	b	e00f3ac <io_assert_failed+0x34>

0e00f3b0 <SYSTIMER_TickGet>:
 e00f3b0:	e3a00a0b 	mov	r0, #45056	; 0xb000
 e00f3b4:	e3440200 	movt	r0, #16896	; 0x4200
 e00f3b8:	e30f3498 	movw	r3, #62616	; 0xf498
 e00f3bc:	e3403e00 	movt	r3, #3584	; 0xe00
 e00f3c0:	e12fff13 	bx	r3

0e00f3c4 <SYSTIMER_GetPassTick>:
 e00f3c4:	e92d4010 	push	{r4, lr}
 e00f3c8:	e30f3498 	movw	r3, #62616	; 0xf498
 e00f3cc:	e3403e00 	movt	r3, #3584	; 0xe00
 e00f3d0:	e1a04000 	mov	r4, r0
 e00f3d4:	e3a00a0b 	mov	r0, #45056	; 0xb000
 e00f3d8:	e3440200 	movt	r0, #16896	; 0x4200
 e00f3dc:	e12fff33 	blx	r3
 e00f3e0:	e1500004 	cmp	r0, r4
 e00f3e4:	30444000 	subcc	r4, r4, r0
 e00f3e8:	20400004 	subcs	r0, r0, r4
 e00f3ec:	31e00004 	mvncc	r0, r4
 e00f3f0:	e8bd8010 	pop	{r4, pc}

0e00f3f4 <SYSCFG_CHIPType_Get>:
 e00f3f4:	e3a03902 	mov	r3, #32768	; 0x8000
 e00f3f8:	e3443200 	movt	r3, #16896	; 0x4200
 e00f3fc:	e593027c 	ldr	r0, [r3, #636]	; 0x27c
 e00f400:	e7e10450 	ubfx	r0, r0, #8, #2
 e00f404:	e12fff1e 	bx	lr

0e00f408 <SYSCFG_OTP_RSIPEn>:
 e00f408:	e3a03442 	mov	r3, #1107296256	; 0x42000000
 e00f40c:	e5932100 	ldr	r2, [r3, #256]	; 0x100
 e00f410:	e5930368 	ldr	r0, [r3, #872]	; 0x368
 e00f414:	e3120302 	tst	r2, #134217728	; 0x8000000
 e00f418:	02200004 	eoreq	r0, r0, #4
 e00f41c:	07e00150 	ubfxeq	r0, r0, #2, #1
 e00f420:	13a00001 	movne	r0, #1
 e00f424:	e12fff1e 	bx	lr

0e00f428 <BKUP_Set>:
 e00f428:	e3500003 	cmp	r0, #3
 e00f42c:	8a000006 	bhi	e00f44c <BKUP_Set+0x24>
 e00f430:	e1a00100 	lsl	r0, r0, #2
 e00f434:	e2800442 	add	r0, r0, #1107296256	; 0x42000000
 e00f438:	e2800902 	add	r0, r0, #32768	; 0x8000
 e00f43c:	e59030e0 	ldr	r3, [r0, #224]	; 0xe0
 e00f440:	e1831001 	orr	r1, r3, r1
 e00f444:	e58010e0 	str	r1, [r0, #224]	; 0xe0
 e00f448:	e12fff1e 	bx	lr
 e00f44c:	e30502e0 	movw	r0, #21216	; 0x52e0
 e00f450:	e3400e01 	movt	r0, #3585	; 0xe01
 e00f454:	e3a0103e 	mov	r1, #62	; 0x3e
 e00f458:	e92d4010 	push	{r4, lr}
 e00f45c:	ebffffc5 	bl	e00f378 <io_assert_failed>

0e00f460 <BKUP_Clear>:
 e00f460:	e3500003 	cmp	r0, #3
 e00f464:	8a000006 	bhi	e00f484 <BKUP_Clear+0x24>
 e00f468:	e1a00100 	lsl	r0, r0, #2
 e00f46c:	e2800442 	add	r0, r0, #1107296256	; 0x42000000
 e00f470:	e2800902 	add	r0, r0, #32768	; 0x8000
 e00f474:	e59030e0 	ldr	r3, [r0, #224]	; 0xe0
 e00f478:	e1c31001 	bic	r1, r3, r1
 e00f47c:	e58010e0 	str	r1, [r0, #224]	; 0xe0
 e00f480:	e12fff1e 	bx	lr
 e00f484:	e30502e0 	movw	r0, #21216	; 0x52e0
 e00f488:	e3400e01 	movt	r0, #3585	; 0xe01
 e00f48c:	e3a0104e 	mov	r1, #78	; 0x4e
 e00f490:	e92d4010 	push	{r4, lr}
 e00f494:	ebffffb7 	bl	e00f378 <io_assert_failed>

0e00f498 <RTIM_GetCount>:
 e00f498:	e3a01a0b 	mov	r1, #45056	; 0xb000
 e00f49c:	e3441200 	movt	r1, #16896	; 0x4200
 e00f4a0:	e3a02cb2 	mov	r2, #45568	; 0xb200
 e00f4a4:	e3442200 	movt	r2, #16896	; 0x4200
 e00f4a8:	e1a03000 	mov	r3, r0
 e00f4ac:	e1500001 	cmp	r0, r1
 e00f4b0:	11500002 	cmpne	r0, r2
 e00f4b4:	0a00005f 	beq	e00f638 <RTIM_GetCount+0x1a0>
 e00f4b8:	e3a01b2d 	mov	r1, #46080	; 0xb400
 e00f4bc:	e3441200 	movt	r1, #16896	; 0x4200
 e00f4c0:	e3a02cb6 	mov	r2, #46592	; 0xb600
 e00f4c4:	e3442200 	movt	r2, #16896	; 0x4200
 e00f4c8:	e1500001 	cmp	r0, r1
 e00f4cc:	11500002 	cmpne	r0, r2
 e00f4d0:	0a000058 	beq	e00f638 <RTIM_GetCount+0x1a0>
 e00f4d4:	e3a01b2e 	mov	r1, #47104	; 0xb800
 e00f4d8:	e3441200 	movt	r1, #16896	; 0x4200
 e00f4dc:	e3a02cba 	mov	r2, #47616	; 0xba00
 e00f4e0:	e3442200 	movt	r2, #16896	; 0x4200
 e00f4e4:	e1500001 	cmp	r0, r1
 e00f4e8:	11500002 	cmpne	r0, r2
 e00f4ec:	0a000051 	beq	e00f638 <RTIM_GetCount+0x1a0>
 e00f4f0:	e3a01b2f 	mov	r1, #48128	; 0xbc00
 e00f4f4:	e3441200 	movt	r1, #16896	; 0x4200
 e00f4f8:	e3a02cbe 	mov	r2, #48640	; 0xbe00
 e00f4fc:	e3442200 	movt	r2, #16896	; 0x4200
 e00f500:	e1500001 	cmp	r0, r1
 e00f504:	11500002 	cmpne	r0, r2
 e00f508:	0a00004a 	beq	e00f638 <RTIM_GetCount+0x1a0>
 e00f50c:	e3a01a0a 	mov	r1, #40960	; 0xa000
 e00f510:	e3441100 	movt	r1, #16640	; 0x4100
 e00f514:	e3a02ca2 	mov	r2, #41472	; 0xa200
 e00f518:	e3442100 	movt	r2, #16640	; 0x4100
 e00f51c:	e1500001 	cmp	r0, r1
 e00f520:	11500002 	cmpne	r0, r2
 e00f524:	0a000043 	beq	e00f638 <RTIM_GetCount+0x1a0>
 e00f528:	e3a01b29 	mov	r1, #41984	; 0xa400
 e00f52c:	e3441100 	movt	r1, #16640	; 0x4100
 e00f530:	e3a02ca6 	mov	r2, #42496	; 0xa600
 e00f534:	e3442100 	movt	r2, #16640	; 0x4100
 e00f538:	e1500001 	cmp	r0, r1
 e00f53c:	11500002 	cmpne	r0, r2
 e00f540:	0a00003c 	beq	e00f638 <RTIM_GetCount+0x1a0>
 e00f544:	e3a01b2a 	mov	r1, #43008	; 0xa800
 e00f548:	e3441100 	movt	r1, #16640	; 0x4100
 e00f54c:	e3a02caa 	mov	r2, #43520	; 0xaa00
 e00f550:	e3442100 	movt	r2, #16640	; 0x4100
 e00f554:	e1500001 	cmp	r0, r1
 e00f558:	11500002 	cmpne	r0, r2
 e00f55c:	0a000035 	beq	e00f638 <RTIM_GetCount+0x1a0>
 e00f560:	e3a01a0b 	mov	r1, #45056	; 0xb000
 e00f564:	e3451200 	movt	r1, #20992	; 0x5200
 e00f568:	e3a02cb2 	mov	r2, #45568	; 0xb200
 e00f56c:	e3452200 	movt	r2, #20992	; 0x5200
 e00f570:	e1500001 	cmp	r0, r1
 e00f574:	11500002 	cmpne	r0, r2
 e00f578:	0a00002e 	beq	e00f638 <RTIM_GetCount+0x1a0>
 e00f57c:	e3a01b2d 	mov	r1, #46080	; 0xb400
 e00f580:	e3451200 	movt	r1, #20992	; 0x5200
 e00f584:	e3a02cb6 	mov	r2, #46592	; 0xb600
 e00f588:	e3452200 	movt	r2, #20992	; 0x5200
 e00f58c:	e1500001 	cmp	r0, r1
 e00f590:	11500002 	cmpne	r0, r2
 e00f594:	0a000027 	beq	e00f638 <RTIM_GetCount+0x1a0>
 e00f598:	e3a01b2e 	mov	r1, #47104	; 0xb800
 e00f59c:	e3451200 	movt	r1, #20992	; 0x5200
 e00f5a0:	e3a02cba 	mov	r2, #47616	; 0xba00
 e00f5a4:	e3452200 	movt	r2, #20992	; 0x5200
 e00f5a8:	e1500001 	cmp	r0, r1
 e00f5ac:	11500002 	cmpne	r0, r2
 e00f5b0:	0a000020 	beq	e00f638 <RTIM_GetCount+0x1a0>
 e00f5b4:	e3a01b2f 	mov	r1, #48128	; 0xbc00
 e00f5b8:	e3451200 	movt	r1, #20992	; 0x5200
 e00f5bc:	e3a02cbe 	mov	r2, #48640	; 0xbe00
 e00f5c0:	e3452200 	movt	r2, #20992	; 0x5200
 e00f5c4:	e1500001 	cmp	r0, r1
 e00f5c8:	11500002 	cmpne	r0, r2
 e00f5cc:	0a000019 	beq	e00f638 <RTIM_GetCount+0x1a0>
 e00f5d0:	e3a01a0a 	mov	r1, #40960	; 0xa000
 e00f5d4:	e3451100 	movt	r1, #20736	; 0x5100
 e00f5d8:	e3a02ca2 	mov	r2, #41472	; 0xa200
 e00f5dc:	e3452100 	movt	r2, #20736	; 0x5100
 e00f5e0:	e1500001 	cmp	r0, r1
 e00f5e4:	11500002 	cmpne	r0, r2
 e00f5e8:	0a000012 	beq	e00f638 <RTIM_GetCount+0x1a0>
 e00f5ec:	e3a01b29 	mov	r1, #41984	; 0xa400
 e00f5f0:	e3451100 	movt	r1, #20736	; 0x5100
 e00f5f4:	e3a02ca6 	mov	r2, #42496	; 0xa600
 e00f5f8:	e3452100 	movt	r2, #20736	; 0x5100
 e00f5fc:	e1500001 	cmp	r0, r1
 e00f600:	11500002 	cmpne	r0, r2
 e00f604:	0a00000b 	beq	e00f638 <RTIM_GetCount+0x1a0>
 e00f608:	e3a01b2a 	mov	r1, #43008	; 0xa800
 e00f60c:	e3451100 	movt	r1, #20736	; 0x5100
 e00f610:	e3a02caa 	mov	r2, #43520	; 0xaa00
 e00f614:	e3452100 	movt	r2, #20736	; 0x5100
 e00f618:	e1500001 	cmp	r0, r1
 e00f61c:	11500002 	cmpne	r0, r2
 e00f620:	0a000004 	beq	e00f638 <RTIM_GetCount+0x1a0>
 e00f624:	e3050348 	movw	r0, #21320	; 0x5348
 e00f628:	e3400e01 	movt	r0, #3585	; 0xe01
 e00f62c:	e3a010f1 	mov	r1, #241	; 0xf1
 e00f630:	e92d4010 	push	{r4, lr}
 e00f634:	ebffff4f 	bl	e00f378 <io_assert_failed>
 e00f638:	e5932014 	ldr	r2, [r3, #20]
 e00f63c:	e5930014 	ldr	r0, [r3, #20]
 e00f640:	e1520000 	cmp	r2, r0
 e00f644:	15930014 	ldrne	r0, [r3, #20]
 e00f648:	e12fff1e 	bx	lr

0e00f64c <pxPortInitialiseStack>:
 e00f64c:	e92d4010 	push	{r4, lr}
 e00f650:	e1a04000 	mov	r4, r0
 e00f654:	e1a03001 	mov	r3, r1
 e00f658:	e3130001 	tst	r3, #1
 e00f65c:	e3a01000 	mov	r1, #0
 e00f660:	e1a00002 	mov	r0, r2
 e00f664:	e5043010 	str	r3, [r4, #-16]
 e00f668:	03a0201f 	moveq	r2, #31
 e00f66c:	13a0203f 	movne	r2, #63	; 0x3f
 e00f670:	e5040048 	str	r0, [r4, #-72]	; 0xffffffb8
 e00f674:	e504200c 	str	r2, [r4, #-12]
 e00f678:	e2440f53 	sub	r0, r4, #332	; 0x14c
 e00f67c:	e3a02f41 	mov	r2, #260	; 0x104
 e00f680:	e5841000 	str	r1, [r4]
 e00f684:	e5041004 	str	r1, [r4, #-4]
 e00f688:	e5041008 	str	r1, [r4, #-8]
 e00f68c:	e5041014 	str	r1, [r4, #-20]	; 0xffffffec
 e00f690:	e3013212 	movw	r3, #4626	; 0x1212
 e00f694:	e3413212 	movt	r3, #4626	; 0x1212
 e00f698:	e5043018 	str	r3, [r4, #-24]	; 0xffffffe8
 e00f69c:	e3013111 	movw	r3, #4369	; 0x1111
 e00f6a0:	e3413111 	movt	r3, #4369	; 0x1111
 e00f6a4:	e504301c 	str	r3, [r4, #-28]	; 0xffffffe4
 e00f6a8:	e3013010 	movw	r3, #4112	; 0x1010
 e00f6ac:	e3413010 	movt	r3, #4112	; 0x1010
 e00f6b0:	e5043020 	str	r3, [r4, #-32]	; 0xffffffe0
 e00f6b4:	e3003909 	movw	r3, #2313	; 0x909
 e00f6b8:	e3403909 	movt	r3, #2313	; 0x909
 e00f6bc:	e5043024 	str	r3, [r4, #-36]	; 0xffffffdc
 e00f6c0:	e3003808 	movw	r3, #2056	; 0x808
 e00f6c4:	e3403808 	movt	r3, #2056	; 0x808
 e00f6c8:	e5043028 	str	r3, [r4, #-40]	; 0xffffffd8
 e00f6cc:	e3003707 	movw	r3, #1799	; 0x707
 e00f6d0:	e3403707 	movt	r3, #1799	; 0x707
 e00f6d4:	e504302c 	str	r3, [r4, #-44]	; 0xffffffd4
 e00f6d8:	e3003606 	movw	r3, #1542	; 0x606
 e00f6dc:	e3403606 	movt	r3, #1542	; 0x606
 e00f6e0:	e5043030 	str	r3, [r4, #-48]	; 0xffffffd0
 e00f6e4:	e3003505 	movw	r3, #1285	; 0x505
 e00f6e8:	e3403505 	movt	r3, #1285	; 0x505
 e00f6ec:	e5043034 	str	r3, [r4, #-52]	; 0xffffffcc
 e00f6f0:	e3003404 	movw	r3, #1028	; 0x404
 e00f6f4:	e3403404 	movt	r3, #1028	; 0x404
 e00f6f8:	e5043038 	str	r3, [r4, #-56]	; 0xffffffc8
 e00f6fc:	e3003303 	movw	r3, #771	; 0x303
 e00f700:	e3403303 	movt	r3, #771	; 0x303
 e00f704:	e504303c 	str	r3, [r4, #-60]	; 0xffffffc4
 e00f708:	e3003202 	movw	r3, #514	; 0x202
 e00f70c:	e3403202 	movt	r3, #514	; 0x202
 e00f710:	e5043040 	str	r3, [r4, #-64]	; 0xffffffc0
 e00f714:	e3003101 	movw	r3, #257	; 0x101
 e00f718:	e3403101 	movt	r3, #257	; 0x101
 e00f71c:	e5043044 	str	r3, [r4, #-68]	; 0xffffffbc
 e00f720:	ebffc720 	bl	e0013a8 <memset>
 e00f724:	e1a00004 	mov	r0, r4
 e00f728:	e3033d4c 	movw	r3, #15692	; 0x3d4c
 e00f72c:	e346300a 	movt	r3, #24586	; 0x600a
 e00f730:	e3a02001 	mov	r2, #1
 e00f734:	e5202150 	str	r2, [r0, #-336]!	; 0xfffffeb0
 e00f738:	e5832000 	str	r2, [r3]
 e00f73c:	e8bd8010 	pop	{r4, pc}

0e00f740 <xPortStartScheduler>:
 e00f740:	e10f3000 	mrs	r3, CPSR
 e00f744:	e203301f 	and	r3, r3, #31
 e00f748:	e3530010 	cmp	r3, #16
 e00f74c:	1a000001 	bne	e00f758 <xPortStartScheduler+0x18>
 e00f750:	e3a00000 	mov	r0, #0
 e00f754:	e12fff1e 	bx	lr
 e00f758:	e92d4010 	push	{r4, lr}
 e00f75c:	f10c0080 	cpsid	i
 e00f760:	f57ff04f 	dsb	sy
 e00f764:	f57ff06f 	isb	sy
 e00f768:	ebffe41d 	bl	e0087e4 <vConfigureIPIInterrupt>
 e00f76c:	ebffe447 	bl	e008890 <vConfigureTickInterrupt>
 e00f770:	ebffc255 	bl	e0000cc <vPortRestoreTaskContext>
 e00f774:	e3a00000 	mov	r0, #0
 e00f778:	e8bd8010 	pop	{r4, pc}

0e00f77c <xPortSpinLockTask>:
 e00f77c:	e3a02001 	mov	r2, #1
 e00f780:	e3033d00 	movw	r3, #15616	; 0x3d00
 e00f784:	e346300a 	movt	r3, #24586	; 0x600a
 e00f788:	e1931f9f 	ldrex	r1, [r3]
 e00f78c:	e3510000 	cmp	r1, #0
 e00f790:	1320f002 	wfene
 e00f794:	01831f92 	strexeq	r1, r2, [r3]
 e00f798:	03510000 	cmpeq	r1, #0
 e00f79c:	1afffff9 	bne	e00f788 <xPortSpinLockTask+0xc>
 e00f7a0:	f57ff05f 	dmb	sy
 e00f7a4:	e12fff1e 	bx	lr

0e00f7a8 <xPortSpinUnLockTask>:
 e00f7a8:	e3a02000 	mov	r2, #0
 e00f7ac:	e3033d00 	movw	r3, #15616	; 0x3d00
 e00f7b0:	e346300a 	movt	r3, #24586	; 0x600a
 e00f7b4:	f57ff05f 	dmb	sy
 e00f7b8:	e5832000 	str	r2, [r3]
 e00f7bc:	f57ff04f 	dsb	sy
 e00f7c0:	e320f004 	sev
 e00f7c4:	e12fff1e 	bx	lr

0e00f7c8 <FreeRTOS_Tick_Handler>:
 e00f7c8:	e92d4010 	push	{r4, lr}
 e00f7cc:	ee103fb0 	mrc	15, 0, r3, cr0, cr0, {5}
 e00f7d0:	e6ef3073 	uxtb	r3, r3
 e00f7d4:	e3530000 	cmp	r3, #0
 e00f7d8:	13a04001 	movne	r4, #1
 e00f7dc:	03a04000 	moveq	r4, #0
 e00f7e0:	1a000005 	bne	e00f7fc <FreeRTOS_Tick_Handler+0x34>
 e00f7e4:	eb00063b 	bl	e0110d8 <xTaskIncrementTick>
 e00f7e8:	e3033d50 	movw	r3, #15696	; 0x3d50
 e00f7ec:	e346300a 	movt	r3, #24586	; 0x600a
 e00f7f0:	e7830104 	str	r0, [r3, r4, lsl #2]
 e00f7f4:	e8bd4010 	pop	{r4, lr}
 e00f7f8:	eaffe43f 	b	e0088fc <vClearTickInterrupt>
 e00f7fc:	eb0001f4 	bl	e00ffd4 <xTaskGetCurrentYieldPending>
 e00f800:	e3033d50 	movw	r3, #15696	; 0x3d50
 e00f804:	e346300a 	movt	r3, #24586	; 0x600a
 e00f808:	e7830104 	str	r0, [r3, r4, lsl #2]
 e00f80c:	e8bd4010 	pop	{r4, lr}
 e00f810:	eaffe439 	b	e0088fc <vClearTickInterrupt>

0e00f814 <ulPortInterruptLock>:
 e00f814:	e10f0000 	mrs	r0, CPSR
 e00f818:	f10c0080 	cpsid	i
 e00f81c:	f57ff04f 	dsb	sy
 e00f820:	f57ff06f 	isb	sy
 e00f824:	e12fff1e 	bx	lr

0e00f828 <ulPortInterruptUnLock>:
 e00f828:	e121f000 	msr	CPSR_c, r0
 e00f82c:	e12fff1e 	bx	lr

0e00f830 <xPortCpuIsInInterrupt>:
 e00f830:	e10f3000 	mrs	r3, CPSR
 e00f834:	e203301f 	and	r3, r3, #31
 e00f838:	e3530010 	cmp	r3, #16
 e00f83c:	0a000004 	beq	e00f854 <xPortCpuIsInInterrupt+0x24>
 e00f840:	e10f0000 	mrs	r0, CPSR
 e00f844:	e200001f 	and	r0, r0, #31
 e00f848:	e250001f 	subs	r0, r0, #31
 e00f84c:	13a00001 	movne	r0, #1
 e00f850:	e12fff1e 	bx	lr
 e00f854:	e3a00000 	mov	r0, #0
 e00f858:	e12fff1e 	bx	lr

0e00f85c <FreeRTOS_IPI_Handler>:
 e00f85c:	ee103fb0 	mrc	15, 0, r3, cr0, cr0, {5}
 e00f860:	e6ef3073 	uxtb	r3, r3
 e00f864:	e2533000 	subs	r3, r3, #0
 e00f868:	13a03001 	movne	r3, #1
 e00f86c:	e3032d50 	movw	r2, #15696	; 0x3d50
 e00f870:	e346200a 	movt	r2, #24586	; 0x600a
 e00f874:	e3a01001 	mov	r1, #1
 e00f878:	e7821103 	str	r1, [r2, r3, lsl #2]
 e00f87c:	e12fff1e 	bx	lr

0e00f880 <ulPortGetCoreId>:
 e00f880:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
 e00f884:	e6ef0070 	uxtb	r0, r0
 e00f888:	e2500000 	subs	r0, r0, #0
 e00f88c:	13a00001 	movne	r0, #1
 e00f890:	e12fff1e 	bx	lr

0e00f894 <FreeRTOS_IPI_CPUHP_Handler>:
 e00f894:	ee103fb0 	mrc	15, 0, r3, cr0, cr0, {5}
 e00f898:	e6ef3073 	uxtb	r3, r3
 e00f89c:	e2533000 	subs	r3, r3, #0
 e00f8a0:	13a03001 	movne	r3, #1
 e00f8a4:	e3032d50 	movw	r2, #15696	; 0x3d50
 e00f8a8:	e346200a 	movt	r2, #24586	; 0x600a
 e00f8ac:	e3a01001 	mov	r1, #1
 e00f8b0:	e7821103 	str	r1, [r2, r3, lsl #2]
 e00f8b4:	e12fff1e 	bx	lr

0e00f8b8 <vPortYieldOtherCore>:
 e00f8b8:	eaffe3ec 	b	e008870 <vConfigureSMPSendIPI>

0e00f8bc <vApplicationMallocFailedHook>:
 e00f8bc:	e92d4010 	push	{r4, lr}
 e00f8c0:	e24dd010 	sub	sp, sp, #16
 e00f8c4:	eb0003e6 	bl	e010864 <xTaskGetSchedulerState>
 e00f8c8:	e3500001 	cmp	r0, #1
 e00f8cc:	030543b0 	movweq	r4, #21424	; 0x53b0
 e00f8d0:	03404e01 	movteq	r4, #3585	; 0xe01
 e00f8d4:	0a000002 	beq	e00f8e4 <vApplicationMallocFailedHook+0x28>
 e00f8d8:	e3a00000 	mov	r0, #0
 e00f8dc:	eb0001d0 	bl	e010024 <pcTaskGetName>
 e00f8e0:	e1a04000 	mov	r4, r0
 e00f8e4:	eb000ecc 	bl	e01341c <xPortGetFreeHeapSize>
 e00f8e8:	e3a02045 	mov	r2, #69	; 0x45
 e00f8ec:	e1a03000 	mov	r3, r0
 e00f8f0:	e58d4004 	str	r4, [sp, #4]
 e00f8f4:	e58d3008 	str	r3, [sp, #8]
 e00f8f8:	e3a00002 	mov	r0, #2
 e00f8fc:	e3051274 	movw	r1, #21108	; 0x5274
 e00f900:	e3401e01 	movt	r1, #3585	; 0xe01
 e00f904:	e30533b8 	movw	r3, #21432	; 0x53b8
 e00f908:	e3403e01 	movt	r3, #3585	; 0xe01
 e00f90c:	e58d1000 	str	r1, [sp]
 e00f910:	e3041084 	movw	r1, #16516	; 0x4084
 e00f914:	e3401e01 	movt	r1, #3585	; 0xe01
 e00f918:	ebffecc5 	bl	e00ac34 <rtk_log_write_nano>
 e00f91c:	e10f3000 	mrs	r3, CPSR
 e00f920:	f10c0080 	cpsid	i
 e00f924:	f57ff04f 	dsb	sy
 e00f928:	f57ff06f 	isb	sy
 e00f92c:	eafffffe 	b	e00f92c <vApplicationMallocFailedHook+0x70>

0e00f930 <vApplicationStackOverflowHook>:
 e00f930:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e00f934:	e3a02045 	mov	r2, #69	; 0x45
 e00f938:	e24dd00c 	sub	sp, sp, #12
 e00f93c:	e3a00002 	mov	r0, #2
 e00f940:	e30533f4 	movw	r3, #21492	; 0x53f4
 e00f944:	e3403e01 	movt	r3, #3585	; 0xe01
 e00f948:	e58d1000 	str	r1, [sp]
 e00f94c:	e3041084 	movw	r1, #16516	; 0x4084
 e00f950:	e3401e01 	movt	r1, #3585	; 0xe01
 e00f954:	ebffecb6 	bl	e00ac34 <rtk_log_write_nano>
 e00f958:	e10f3000 	mrs	r3, CPSR
 e00f95c:	f10c0080 	cpsid	i
 e00f960:	f57ff04f 	dsb	sy
 e00f964:	f57ff06f 	isb	sy
 e00f968:	eafffffe 	b	e00f968 <vApplicationStackOverflowHook+0x38>

0e00f96c <vApplicationGetIdleTaskMemory>:
 e00f96c:	e3a0cb01 	mov	ip, #1024	; 0x400
 e00f970:	e3073d58 	movw	r3, #32088	; 0x7d58
 e00f974:	e346300a 	movt	r3, #24586	; 0x600a
 e00f978:	e5803000 	str	r3, [r0]
 e00f97c:	e3033d58 	movw	r3, #15704	; 0x3d58
 e00f980:	e346300a 	movt	r3, #24586	; 0x600a
 e00f984:	e5813000 	str	r3, [r1]
 e00f988:	e582c000 	str	ip, [r2]
 e00f98c:	e12fff1e 	bx	lr

0e00f990 <vApplicationGetPassiveIdleTaskMemory>:
 e00f990:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e00f994:	e307ced0 	movw	ip, #32464	; 0x7ed0
 e00f998:	e346c00a 	movt	ip, #24586	; 0x600a
 e00f99c:	e3a0ef5e 	mov	lr, #376	; 0x178
 e00f9a0:	e02cc39e 	mla	ip, lr, r3, ip
 e00f9a4:	e580c000 	str	ip, [r0]
 e00f9a8:	e3040d58 	movw	r0, #19800	; 0x4d58
 e00f9ac:	e346000a 	movt	r0, #24586	; 0x600a
 e00f9b0:	e0800603 	add	r0, r0, r3, lsl #12
 e00f9b4:	e3a03b01 	mov	r3, #1024	; 0x400
 e00f9b8:	e5810000 	str	r0, [r1]
 e00f9bc:	e1c230b0 	strh	r3, [r2]
 e00f9c0:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

0e00f9c4 <vApplicationGetTimerTaskMemory>:
 e00f9c4:	e3a0cb02 	mov	ip, #2048	; 0x800
 e00f9c8:	e3083048 	movw	r3, #32840	; 0x8048
 e00f9cc:	e346300a 	movt	r3, #24586	; 0x600a
 e00f9d0:	e5803000 	str	r3, [r0]
 e00f9d4:	e3053d58 	movw	r3, #23896	; 0x5d58
 e00f9d8:	e346300a 	movt	r3, #24586	; 0x600a
 e00f9dc:	e5813000 	str	r3, [r1]
 e00f9e0:	e582c000 	str	ip, [r2]
 e00f9e4:	e12fff1e 	bx	lr

0e00f9e8 <pmu_post_sleep_processing>:
 e00f9e8:	e92d4010 	push	{r4, lr}
 e00f9ec:	e30f33c4 	movw	r3, #62404	; 0xf3c4
 e00f9f0:	e3403e00 	movt	r3, #3584	; 0xe00
 e00f9f4:	e24dd008 	sub	sp, sp, #8
 e00f9f8:	e5900000 	ldr	r0, [r0]
 e00f9fc:	e3a04000 	mov	r4, #0
 e00fa00:	e58d4004 	str	r4, [sp, #4]
 e00fa04:	e12fff33 	blx	r3
 e00fa08:	e3032cf4 	movw	r2, #15604	; 0x3cf4
 e00fa0c:	e346200a 	movt	r2, #24586	; 0x600a
 e00fa10:	e3a03ffa 	mov	r3, #1000	; 0x3e8
 e00fa14:	e5921000 	ldr	r1, [r2]
 e00fa18:	e0800001 	add	r0, r0, r1
 e00fa1c:	e200101f 	and	r1, r0, #31
 e00fa20:	e5821000 	str	r1, [r2]
 e00fa24:	e0830390 	umull	r0, r3, r0, r3
 e00fa28:	e1a007a0 	lsr	r0, r0, #15
 e00fa2c:	e1800883 	orr	r0, r0, r3, lsl #17
 e00fa30:	e58d0004 	str	r0, [sp, #4]
 e00fa34:	e59d0004 	ldr	r0, [sp, #4]
 e00fa38:	eb000189 	bl	e010064 <vTaskStepTick>
 e00fa3c:	e30336e8 	movw	r3, #14056	; 0x36e8
 e00fa40:	e346300a 	movt	r3, #24586	; 0x600a
 e00fa44:	e3a00002 	mov	r0, #2
 e00fa48:	e5834000 	str	r4, [r3]
 e00fa4c:	e28dd008 	add	sp, sp, #8
 e00fa50:	e8bd4010 	pop	{r4, lr}
 e00fa54:	eaffe67b 	b	e009448 <pmu_set_sysactive_time>

0e00fa58 <vPortSuppressTicksAndSleep>:
 e00fa58:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e00fa5c:	e24dd008 	sub	sp, sp, #8
 e00fa60:	ee103fb0 	mrc	15, 0, r3, cr0, cr0, {5}
 e00fa64:	e21340ff 	ands	r4, r3, #255	; 0xff
 e00fa68:	0a000014 	beq	e00fac0 <vPortSuppressTicksAndSleep+0x68>
 e00fa6c:	ee103fb0 	mrc	15, 0, r3, cr0, cr0, {5}
 e00fa70:	e6ef3073 	uxtb	r3, r3
 e00fa74:	e3530000 	cmp	r3, #0
 e00fa78:	1a000001 	bne	e00fa84 <vPortSuppressTicksAndSleep+0x2c>
 e00fa7c:	e28dd008 	add	sp, sp, #8
 e00fa80:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e00fa84:	ebffe697 	bl	e0094e8 <pmu_ready_to_sleep>
 e00fa88:	e3500000 	cmp	r0, #0
 e00fa8c:	1a000037 	bne	e00fb70 <vPortSuppressTicksAndSleep+0x118>
 e00fa90:	e10f3000 	mrs	r3, CPSR
 e00fa94:	f10c0080 	cpsid	i
 e00fa98:	f57ff04f 	dsb	sy
 e00fa9c:	f57ff06f 	isb	sy
 e00faa0:	f57ff04f 	dsb	sy
 e00faa4:	e320f003 	wfi
 e00faa8:	f57ff06f 	isb	sy
 e00faac:	f1080080 	cpsie	i
 e00fab0:	f57ff04f 	dsb	sy
 e00fab4:	f57ff06f 	isb	sy
 e00fab8:	e28dd008 	add	sp, sp, #8
 e00fabc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e00fac0:	e1a05000 	mov	r5, r0
 e00fac4:	e10f3000 	mrs	r3, CPSR
 e00fac8:	f10c0080 	cpsid	i
 e00facc:	f57ff04f 	dsb	sy
 e00fad0:	f57ff06f 	isb	sy
 e00fad4:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
 e00fad8:	e3833002 	orr	r3, r3, #2
 e00fadc:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
 e00fae0:	e3056264 	movw	r6, #21092	; 0x5264
 e00fae4:	e3466009 	movt	r6, #24585	; 0x6009
 e00fae8:	e3a08001 	mov	r8, #1
 e00faec:	e3037d00 	movw	r7, #15616	; 0x3d00
 e00faf0:	e346700a 	movt	r7, #24586	; 0x600a
 e00faf4:	e5864000 	str	r4, [r6]
 e00faf8:	e1973f9f 	ldrex	r3, [r7]
 e00fafc:	e3530000 	cmp	r3, #0
 e00fb00:	1320f002 	wfene
 e00fb04:	01873f98 	strexeq	r3, r8, [r7]
 e00fb08:	03530000 	cmpeq	r3, #0
 e00fb0c:	1afffff9 	bne	e00faf8 <vPortSuppressTicksAndSleep+0xa0>
 e00fb10:	f57ff05f 	dmb	sy
 e00fb14:	eb000332 	bl	e0107e4 <eTaskConfirmSleepModeStatus>
 e00fb18:	f57ff05f 	dmb	sy
 e00fb1c:	e5874000 	str	r4, [r7]
 e00fb20:	f57ff04f 	dsb	sy
 e00fb24:	e320f004 	sev
 e00fb28:	e3500000 	cmp	r0, #0
 e00fb2c:	1a00001e 	bne	e00fbac <vPortSuppressTicksAndSleep+0x154>
 e00fb30:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
 e00fb34:	e3c33002 	bic	r3, r3, #2
 e00fb38:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
 e00fb3c:	e3a03c02 	mov	r3, #512	; 0x200
 e00fb40:	e3443100 	movt	r3, #16640	; 0x4100
 e00fb44:	e5933008 	ldr	r3, [r3, #8]
 e00fb48:	e3130802 	tst	r3, #131072	; 0x20000
 e00fb4c:	0a000000 	beq	e00fb54 <vPortSuppressTicksAndSleep+0xfc>
 e00fb50:	e320f004 	sev
 e00fb54:	e3a03001 	mov	r3, #1
 e00fb58:	e5863000 	str	r3, [r6]
 e00fb5c:	f1080080 	cpsie	i
 e00fb60:	f57ff04f 	dsb	sy
 e00fb64:	f57ff06f 	isb	sy
 e00fb68:	e28dd008 	add	sp, sp, #8
 e00fb6c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e00fb70:	ebffe6c2 	bl	e009680 <pmu_get_sleep_type>
 e00fb74:	e3500000 	cmp	r0, #0
 e00fb78:	0a000015 	beq	e00fbd4 <vPortSuppressTicksAndSleep+0x17c>
 e00fb7c:	e10f3000 	mrs	r3, CPSR
 e00fb80:	f10c0080 	cpsid	i
 e00fb84:	f57ff04f 	dsb	sy
 e00fb88:	f57ff06f 	isb	sy
 e00fb8c:	f57ff04f 	dsb	sy
 e00fb90:	e320f002 	wfe
 e00fb94:	e320f002 	wfe
 e00fb98:	f57ff06f 	isb	sy
 e00fb9c:	f1080080 	cpsie	i
 e00fba0:	f57ff04f 	dsb	sy
 e00fba4:	f57ff06f 	isb	sy
 e00fba8:	eaffffb3 	b	e00fa7c <vPortSuppressTicksAndSleep+0x24>
 e00fbac:	ebffe64d 	bl	e0094e8 <pmu_ready_to_sleep>
 e00fbb0:	e3500000 	cmp	r0, #0
 e00fbb4:	1a00000b 	bne	e00fbe8 <vPortSuppressTicksAndSleep+0x190>
 e00fbb8:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
 e00fbbc:	e3c33002 	bic	r3, r3, #2
 e00fbc0:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
 e00fbc4:	f57ff04f 	dsb	sy
 e00fbc8:	e320f003 	wfi
 e00fbcc:	f57ff06f 	isb	sy
 e00fbd0:	eaffffd9 	b	e00fb3c <vPortSuppressTicksAndSleep+0xe4>
 e00fbd4:	e3a01001 	mov	r1, #1
 e00fbd8:	e1a00001 	mov	r0, r1
 e00fbdc:	ebffe6b6 	bl	e0096bc <pmu_set_secondary_cpu_state>
 e00fbe0:	ef000000 	svc	0x00000000
 e00fbe4:	eaffffa4 	b	e00fa7c <vPortSuppressTicksAndSleep+0x24>
 e00fbe8:	e58d5004 	str	r5, [sp, #4]
 e00fbec:	ebffe6a3 	bl	e009680 <pmu_get_sleep_type>
 e00fbf0:	e3500000 	cmp	r0, #0
 e00fbf4:	0a000019 	beq	e00fc60 <vPortSuppressTicksAndSleep+0x208>
 e00fbf8:	e3a03c02 	mov	r3, #512	; 0x200
 e00fbfc:	e3443100 	movt	r3, #16640	; 0x4100
 e00fc00:	e5933008 	ldr	r3, [r3, #8]
 e00fc04:	e3130802 	tst	r3, #131072	; 0x20000
 e00fc08:	0affffcb 	beq	e00fb3c <vPortSuppressTicksAndSleep+0xe4>
 e00fc0c:	e28d0004 	add	r0, sp, #4
 e00fc10:	ebffe64b 	bl	e009544 <pmu_pre_sleep_processing>
 e00fc14:	ebffe699 	bl	e009680 <pmu_get_sleep_type>
 e00fc18:	e3500000 	cmp	r0, #0
 e00fc1c:	1a000009 	bne	e00fc48 <vPortSuppressTicksAndSleep+0x1f0>
 e00fc20:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
 e00fc24:	e3130001 	tst	r3, #1
 e00fc28:	1a000001 	bne	e00fc34 <vPortSuppressTicksAndSleep+0x1dc>
 e00fc2c:	e3a03001 	mov	r3, #1
 e00fc30:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
 e00fc34:	ec510f1e 	mrrc	15, 1, r0, r1, cr14
 e00fc38:	e30cc350 	movw	ip, #50000	; 0xc350
 e00fc3c:	e09c2000 	adds	r2, ip, r0
 e00fc40:	e2a13000 	adc	r3, r1, #0
 e00fc44:	ec432f3e 	mcrr	15, 3, r2, r3, cr14
 e00fc48:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
 e00fc4c:	e3c33002 	bic	r3, r3, #2
 e00fc50:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
 e00fc54:	e28d0004 	add	r0, sp, #4
 e00fc58:	ebffff62 	bl	e00f9e8 <pmu_post_sleep_processing>
 e00fc5c:	eaffffb6 	b	e00fb3c <vPortSuppressTicksAndSleep+0xe4>
 e00fc60:	e1a00008 	mov	r0, r8
 e00fc64:	ebffe698 	bl	e0096cc <pmu_get_secondary_cpu_state>
 e00fc68:	e3500002 	cmp	r0, #2
 e00fc6c:	0affffb2 	beq	e00fb3c <vPortSuppressTicksAndSleep+0xe4>
 e00fc70:	e1a00008 	mov	r0, r8
 e00fc74:	ebffe694 	bl	e0096cc <pmu_get_secondary_cpu_state>
 e00fc78:	e2501000 	subs	r1, r0, #0
 e00fc7c:	1affffe2 	bne	e00fc0c <vPortSuppressTicksAndSleep+0x1b4>
 e00fc80:	f1080080 	cpsie	i
 e00fc84:	f57ff04f 	dsb	sy
 e00fc88:	f57ff06f 	isb	sy
 e00fc8c:	e1a00008 	mov	r0, r8
 e00fc90:	ebffe218 	bl	e0084f8 <arm_gic_raise_softirq>
 e00fc94:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
 e00fc98:	e3c33002 	bic	r3, r3, #2
 e00fc9c:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
 e00fca0:	e3a00064 	mov	r0, #100	; 0x64
 e00fca4:	e3093250 	movw	r3, #37456	; 0x9250
 e00fca8:	e3403e00 	movt	r3, #3584	; 0xe00
 e00fcac:	e12fff33 	blx	r3
 e00fcb0:	eaffffa1 	b	e00fb3c <vPortSuppressTicksAndSleep+0xe4>

0e00fcb4 <vPortCleanUpTCB>:
 e00fcb4:	e12fff1e 	bx	lr

0e00fcb8 <prvYieldCore>:
 e00fcb8:	e92d4010 	push	{r4, lr}
 e00fcbc:	e1a04000 	mov	r4, r0
 e00fcc0:	ebfffeee 	bl	e00f880 <ulPortGetCoreId>
 e00fcc4:	e1500004 	cmp	r0, r4
 e00fcc8:	1a00000a 	bne	e00fcf8 <prvYieldCore+0x40>
 e00fccc:	e30831c4 	movw	r3, #33220	; 0x81c4
 e00fcd0:	e346300a 	movt	r3, #24586	; 0x600a
 e00fcd4:	e7933100 	ldr	r3, [r3, r0, lsl #2]
 e00fcd8:	e5933058 	ldr	r3, [r3, #88]	; 0x58
 e00fcdc:	e3530000 	cmp	r3, #0
 e00fce0:	0a000007 	beq	e00fd04 <prvYieldCore+0x4c>
 e00fce4:	e308336c 	movw	r3, #33644	; 0x836c
 e00fce8:	e346300a 	movt	r3, #24586	; 0x600a
 e00fcec:	e3a02001 	mov	r2, #1
 e00fcf0:	e7832104 	str	r2, [r3, r4, lsl #2]
 e00fcf4:	e8bd8010 	pop	{r4, pc}
 e00fcf8:	e1a00004 	mov	r0, r4
 e00fcfc:	e8bd4010 	pop	{r4, lr}
 e00fd00:	eafffeec 	b	e00f8b8 <vPortYieldOtherCore>
 e00fd04:	ebfffec9 	bl	e00f830 <xPortCpuIsInInterrupt>
 e00fd08:	e3500000 	cmp	r0, #0
 e00fd0c:	1afffff4 	bne	e00fce4 <prvYieldCore+0x2c>
 e00fd10:	ef000000 	svc	0x00000000
 e00fd14:	e8bd8010 	pop	{r4, pc}

0e00fd18 <prvInitialiseNewTask.constprop.0>:
 e00fd18:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e00fd1c:	e59d4028 	ldr	r4, [sp, #40]	; 0x28
 e00fd20:	e1a09102 	lsl	r9, r2, #2
 e00fd24:	e1a0a001 	mov	sl, r1
 e00fd28:	e1a02009 	mov	r2, r9
 e00fd2c:	e1a06000 	mov	r6, r0
 e00fd30:	e3a010a5 	mov	r1, #165	; 0xa5
 e00fd34:	e5940030 	ldr	r0, [r4, #48]	; 0x30
 e00fd38:	e59d5020 	ldr	r5, [sp, #32]
 e00fd3c:	e59d8024 	ldr	r8, [sp, #36]	; 0x24
 e00fd40:	e1a07003 	mov	r7, r3
 e00fd44:	ebffc597 	bl	e0013a8 <memset>
 e00fd48:	e5942030 	ldr	r2, [r4, #48]	; 0x30
 e00fd4c:	e2499004 	sub	r9, r9, #4
 e00fd50:	e0829009 	add	r9, r2, r9
 e00fd54:	e35a0000 	cmp	sl, #0
 e00fd58:	e3c9903f 	bic	r9, r9, #63	; 0x3f
 e00fd5c:	05c4a03c 	strbeq	sl, [r4, #60]	; 0x3c
 e00fd60:	e5849054 	str	r9, [r4, #84]	; 0x54
 e00fd64:	0a00000b 	beq	e00fd98 <prvInitialiseNewTask.constprop.0+0x80>
 e00fd68:	e24ac001 	sub	ip, sl, #1
 e00fd6c:	e28a3017 	add	r3, sl, #23
 e00fd70:	e284103b 	add	r1, r4, #59	; 0x3b
 e00fd74:	ea000001 	b	e00fd80 <prvInitialiseNewTask.constprop.0+0x68>
 e00fd78:	e15c0003 	cmp	ip, r3
 e00fd7c:	0a000003 	beq	e00fd90 <prvInitialiseNewTask.constprop.0+0x78>
 e00fd80:	e5fce001 	ldrb	lr, [ip, #1]!
 e00fd84:	e5e1e001 	strb	lr, [r1, #1]!
 e00fd88:	e35e0000 	cmp	lr, #0
 e00fd8c:	1afffff9 	bne	e00fd78 <prvInitialiseNewTask.constprop.0+0x60>
 e00fd90:	e3a03000 	mov	r3, #0
 e00fd94:	e5c43053 	strb	r3, [r4, #83]	; 0x53
 e00fd98:	e355000a 	cmp	r5, #10
 e00fd9c:	e3a0a000 	mov	sl, #0
 e00fda0:	23a0500a 	movcs	r5, #10
 e00fda4:	e2840004 	add	r0, r4, #4
 e00fda8:	e584502c 	str	r5, [r4, #44]	; 0x2c
 e00fdac:	e5845064 	str	r5, [r4, #100]	; 0x64
 e00fdb0:	e584a068 	str	sl, [r4, #104]	; 0x68
 e00fdb4:	eb000856 	bl	e011f14 <vListInitialiseItem>
 e00fdb8:	e2840018 	add	r0, r4, #24
 e00fdbc:	eb000854 	bl	e011f14 <vListInitialiseItem>
 e00fdc0:	e265500b 	rsb	r5, r5, #11
 e00fdc4:	e3a020f0 	mov	r2, #240	; 0xf0
 e00fdc8:	e1a0100a 	mov	r1, sl
 e00fdcc:	e584a16c 	str	sl, [r4, #364]	; 0x16c
 e00fdd0:	e284007c 	add	r0, r4, #124	; 0x7c
 e00fdd4:	e5845018 	str	r5, [r4, #24]
 e00fdd8:	e5844010 	str	r4, [r4, #16]
 e00fddc:	e5844024 	str	r4, [r4, #36]	; 0x24
 e00fde0:	e584a058 	str	sl, [r4, #88]	; 0x58
 e00fde4:	e584a06c 	str	sl, [r4, #108]	; 0x6c
 e00fde8:	e584a078 	str	sl, [r4, #120]	; 0x78
 e00fdec:	e584a070 	str	sl, [r4, #112]	; 0x70
 e00fdf0:	e584a074 	str	sl, [r4, #116]	; 0x74
 e00fdf4:	e5c4a170 	strb	sl, [r4, #368]	; 0x170
 e00fdf8:	ebffc56a 	bl	e0013a8 <memset>
 e00fdfc:	e303301c 	movw	r3, #12316	; 0x301c
 e00fe00:	e346300a 	movt	r3, #24586	; 0x600a
 e00fe04:	e2831068 	add	r1, r3, #104	; 0x68
 e00fe08:	e5843080 	str	r3, [r4, #128]	; 0x80
 e00fe0c:	e5841084 	str	r1, [r4, #132]	; 0x84
 e00fe10:	e28330d0 	add	r3, r3, #208	; 0xd0
 e00fe14:	e1a01006 	mov	r1, r6
 e00fe18:	e5843088 	str	r3, [r4, #136]	; 0x88
 e00fe1c:	e1a02007 	mov	r2, r7
 e00fe20:	e1a00009 	mov	r0, r9
 e00fe24:	e5c4a172 	strb	sl, [r4, #370]	; 0x172
 e00fe28:	ebfffe07 	bl	e00f64c <pxPortInitialiseStack>
 e00fe2c:	e3013c34 	movw	r3, #7220	; 0x1c34
 e00fe30:	e3403e01 	movt	r3, #3585	; 0xe01
 e00fe34:	e0466003 	sub	r6, r6, r3
 e00fe38:	e16f6f16 	clz	r6, r6
 e00fe3c:	e158000a 	cmp	r8, sl
 e00fe40:	e1a062a6 	lsr	r6, r6, #5
 e00fe44:	e3e03000 	mvn	r3, #0
 e00fe48:	e5840000 	str	r0, [r4]
 e00fe4c:	e5843034 	str	r3, [r4, #52]	; 0x34
 e00fe50:	e5846038 	str	r6, [r4, #56]	; 0x38
 e00fe54:	15884000 	strne	r4, [r8]
 e00fe58:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

0e00fe5c <prvYieldForTask.isra.0>:
 e00fe5c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e00fe60:	e1a06000 	mov	r6, r0
 e00fe64:	e1a05002 	mov	r5, r2
 e00fe68:	e1a04001 	mov	r4, r1
 e00fe6c:	ebfffe83 	bl	e00f880 <ulPortGetCoreId>
 e00fe70:	e596602c 	ldr	r6, [r6, #44]	; 0x2c
 e00fe74:	e3550000 	cmp	r5, #0
 e00fe78:	e2241001 	eor	r1, r4, #1
 e00fe7c:	e3a0c000 	mov	ip, #0
 e00fe80:	e30821c4 	movw	r2, #33220	; 0x81c4
 e00fe84:	e346200a 	movt	r2, #24586	; 0x600a
 e00fe88:	e308536c 	movw	r5, #33644	; 0x836c
 e00fe8c:	e346500a 	movt	r5, #24586	; 0x600a
 e00fe90:	12866001 	addne	r6, r6, #1
 e00fe94:	e2011001 	and	r1, r1, #1
 e00fe98:	e1a0300c 	mov	r3, ip
 e00fe9c:	e1a0e000 	mov	lr, r0
 e00fea0:	e3e00000 	mvn	r0, #0
 e00fea4:	e15e0003 	cmp	lr, r3
 e00fea8:	13a04000 	movne	r4, #0
 e00feac:	02014001 	andeq	r4, r1, #1
 e00feb0:	e3540000 	cmp	r4, #0
 e00feb4:	1a000013 	bne	e00ff08 <prvYieldForTask.isra.0+0xac>
 e00feb8:	e7924103 	ldr	r4, [r2, r3, lsl #2]
 e00febc:	e5944038 	ldr	r4, [r4, #56]	; 0x38
 e00fec0:	e3540000 	cmp	r4, #0
 e00fec4:	1a00001a 	bne	e00ff34 <prvYieldForTask.isra.0+0xd8>
 e00fec8:	e7927103 	ldr	r7, [r2, r3, lsl #2]
 e00fecc:	e7924103 	ldr	r4, [r2, r3, lsl #2]
 e00fed0:	e5944034 	ldr	r4, [r4, #52]	; 0x34
 e00fed4:	e3540001 	cmp	r4, #1
 e00fed8:	8a00000a 	bhi	e00ff08 <prvYieldForTask.isra.0+0xac>
 e00fedc:	e597402c 	ldr	r4, [r7, #44]	; 0x2c
 e00fee0:	e7958103 	ldr	r8, [r5, r3, lsl #2]
 e00fee4:	e1540006 	cmp	r4, r6
 e00fee8:	a3a07000 	movge	r7, #0
 e00feec:	b3a07001 	movlt	r7, #1
 e00fef0:	e3580000 	cmp	r8, #0
 e00fef4:	13a07000 	movne	r7, #0
 e00fef8:	e3570000 	cmp	r7, #0
 e00fefc:	128cc001 	addne	ip, ip, #1
 e00ff00:	11a06004 	movne	r6, r4
 e00ff04:	11a00003 	movne	r0, r3
 e00ff08:	e3530001 	cmp	r3, #1
 e00ff0c:	e3a03001 	mov	r3, #1
 e00ff10:	1affffe3 	bne	e00fea4 <prvYieldForTask.isra.0+0x48>
 e00ff14:	e25cc000 	subs	ip, ip, #0
 e00ff18:	13a0c001 	movne	ip, #1
 e00ff1c:	e3500001 	cmp	r0, #1
 e00ff20:	83a0c000 	movhi	ip, #0
 e00ff24:	e35c0000 	cmp	ip, #0
 e00ff28:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
 e00ff2c:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 e00ff30:	eaffff60 	b	e00fcb8 <prvYieldCore>
 e00ff34:	e28cc001 	add	ip, ip, #1
 e00ff38:	e1a00003 	mov	r0, r3
 e00ff3c:	eafffff4 	b	e00ff14 <prvYieldForTask.isra.0+0xb8>

0e00ff40 <prvGetExpectedIdleTime>:
 e00ff40:	e30832d4 	movw	r3, #33492	; 0x82d4
 e00ff44:	e346300a 	movt	r3, #24586	; 0x600a
 e00ff48:	e92d4070 	push	{r4, r5, r6, lr}
 e00ff4c:	e5935000 	ldr	r5, [r3]
 e00ff50:	ebfffe2f 	bl	e00f814 <ulPortInterruptLock>
 e00ff54:	e1a04000 	mov	r4, r0
 e00ff58:	ebfffe48 	bl	e00f880 <ulPortGetCoreId>
 e00ff5c:	e30831c4 	movw	r3, #33220	; 0x81c4
 e00ff60:	e346300a 	movt	r3, #24586	; 0x600a
 e00ff64:	e1a02000 	mov	r2, r0
 e00ff68:	e1a00004 	mov	r0, r4
 e00ff6c:	e7934102 	ldr	r4, [r3, r2, lsl #2]
 e00ff70:	ebfffe2c 	bl	e00f828 <ulPortInterruptUnLock>
 e00ff74:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
 e00ff78:	e3530000 	cmp	r3, #0
 e00ff7c:	0a000001 	beq	e00ff88 <prvGetExpectedIdleTime+0x48>
 e00ff80:	e3a00000 	mov	r0, #0
 e00ff84:	e8bd8070 	pop	{r4, r5, r6, pc}
 e00ff88:	e3a00001 	mov	r0, #1
 e00ff8c:	ebffe5d2 	bl	e0096dc <pmu_secondary_cpu_state_is_running>
 e00ff90:	e3500000 	cmp	r0, #0
 e00ff94:	0a000004 	beq	e00ffac <prvGetExpectedIdleTime+0x6c>
 e00ff98:	e30831d8 	movw	r3, #33240	; 0x81d8
 e00ff9c:	e346300a 	movt	r3, #24586	; 0x600a
 e00ffa0:	e5933000 	ldr	r3, [r3]
 e00ffa4:	e3530000 	cmp	r3, #0
 e00ffa8:	1afffff4 	bne	e00ff80 <prvGetExpectedIdleTime+0x40>
 e00ffac:	e3550000 	cmp	r5, #0
 e00ffb0:	1afffff2 	bne	e00ff80 <prvGetExpectedIdleTime+0x40>
 e00ffb4:	e3082308 	movw	r2, #33544	; 0x8308
 e00ffb8:	e346200a 	movt	r2, #24586	; 0x600a
 e00ffbc:	e3083368 	movw	r3, #33640	; 0x8368
 e00ffc0:	e346300a 	movt	r3, #24586	; 0x600a
 e00ffc4:	e5920000 	ldr	r0, [r2]
 e00ffc8:	e5933000 	ldr	r3, [r3]
 e00ffcc:	e0400003 	sub	r0, r0, r3
 e00ffd0:	e8bd8070 	pop	{r4, r5, r6, pc}

0e00ffd4 <xTaskGetCurrentYieldPending>:
 e00ffd4:	e92d4010 	push	{r4, lr}
 e00ffd8:	ebfffe0d 	bl	e00f814 <ulPortInterruptLock>
 e00ffdc:	e1a04000 	mov	r4, r0
 e00ffe0:	ebfffe26 	bl	e00f880 <ulPortGetCoreId>
 e00ffe4:	e308336c 	movw	r3, #33644	; 0x836c
 e00ffe8:	e346300a 	movt	r3, #24586	; 0x600a
 e00ffec:	e1a02000 	mov	r2, r0
 e00fff0:	e1a00004 	mov	r0, r4
 e00fff4:	e7934102 	ldr	r4, [r3, r2, lsl #2]
 e00fff8:	ebfffe0a 	bl	e00f828 <ulPortInterruptUnLock>
 e00fffc:	e1a00004 	mov	r0, r4
 e010000:	e8bd8010 	pop	{r4, pc}

0e010004 <xTaskGetTickCount>:
 e010004:	e3083368 	movw	r3, #33640	; 0x8368
 e010008:	e346300a 	movt	r3, #24586	; 0x600a
 e01000c:	e5930000 	ldr	r0, [r3]
 e010010:	e12fff1e 	bx	lr

0e010014 <xTaskGetTickCountFromISR>:
 e010014:	e3083368 	movw	r3, #33640	; 0x8368
 e010018:	e346300a 	movt	r3, #24586	; 0x600a
 e01001c:	e5930000 	ldr	r0, [r3]
 e010020:	e12fff1e 	bx	lr

0e010024 <pcTaskGetName>:
 e010024:	e92d4010 	push	{r4, lr}
 e010028:	e2504000 	subs	r4, r0, #0
 e01002c:	0a000001 	beq	e010038 <pcTaskGetName+0x14>
 e010030:	e284003c 	add	r0, r4, #60	; 0x3c
 e010034:	e8bd8010 	pop	{r4, pc}
 e010038:	ebfffdf5 	bl	e00f814 <ulPortInterruptLock>
 e01003c:	e1a04000 	mov	r4, r0
 e010040:	ebfffe0e 	bl	e00f880 <ulPortGetCoreId>
 e010044:	e30831c4 	movw	r3, #33220	; 0x81c4
 e010048:	e346300a 	movt	r3, #24586	; 0x600a
 e01004c:	e1a02000 	mov	r2, r0
 e010050:	e1a00004 	mov	r0, r4
 e010054:	e7934102 	ldr	r4, [r3, r2, lsl #2]
 e010058:	ebfffdf2 	bl	e00f828 <ulPortInterruptUnLock>
 e01005c:	e284003c 	add	r0, r4, #60	; 0x3c
 e010060:	e8bd8010 	pop	{r4, pc}

0e010064 <vTaskStepTick>:
 e010064:	e3083368 	movw	r3, #33640	; 0x8368
 e010068:	e346300a 	movt	r3, #24586	; 0x600a
 e01006c:	e5932000 	ldr	r2, [r3]
 e010070:	e0822000 	add	r2, r2, r0
 e010074:	e5832000 	str	r2, [r3]
 e010078:	e12fff1e 	bx	lr

0e01007c <vTaskSwitchContext>:
 e01007c:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e010080:	e1a04000 	mov	r4, r0
 e010084:	ebfffde2 	bl	e00f814 <ulPortInterruptLock>
 e010088:	e1a07000 	mov	r7, r0
 e01008c:	ebfffdba 	bl	e00f77c <xPortSpinLockTask>
 e010090:	e1a00004 	mov	r0, r4
 e010094:	ebffe596 	bl	e0096f4 <pmu_secondary_cpu_state_is_hotplug>
 e010098:	e3500000 	cmp	r0, #0
 e01009c:	1a000114 	bne	e0104f4 <vTaskSwitchContext+0x478>
 e0100a0:	e30832cc 	movw	r3, #33484	; 0x82cc
 e0100a4:	e346300a 	movt	r3, #24586	; 0x600a
 e0100a8:	e5933000 	ldr	r3, [r3]
 e0100ac:	e3530000 	cmp	r3, #0
 e0100b0:	1a000099 	bne	e01031c <vTaskSwitchContext+0x2a0>
 e0100b4:	e308236c 	movw	r2, #33644	; 0x836c
 e0100b8:	e346200a 	movt	r2, #24586	; 0x600a
 e0100bc:	e3a0ca09 	mov	ip, #36864	; 0x9000
 e0100c0:	e344c200 	movt	ip, #16896	; 0x4200
 e0100c4:	e30851c4 	movw	r5, #33220	; 0x81c4
 e0100c8:	e346500a 	movt	r5, #24586	; 0x600a
 e0100cc:	e7823104 	str	r3, [r2, r4, lsl #2]
 e0100d0:	e30812b4 	movw	r1, #33460	; 0x82b4
 e0100d4:	e346100a 	movt	r1, #24586	; 0x600a
 e0100d8:	e30822bc 	movw	r2, #33468	; 0x82bc
 e0100dc:	e346200a 	movt	r2, #24586	; 0x600a
 e0100e0:	e59c0004 	ldr	r0, [ip, #4]
 e0100e4:	e7820103 	str	r0, [r2, r3, lsl #2]
 e0100e8:	e792e103 	ldr	lr, [r2, r3, lsl #2]
 e0100ec:	e7910103 	ldr	r0, [r1, r3, lsl #2]
 e0100f0:	e15e0000 	cmp	lr, r0
 e0100f4:	9a000006 	bls	e010114 <vTaskSwitchContext+0x98>
 e0100f8:	e7926103 	ldr	r6, [r2, r3, lsl #2]
 e0100fc:	e7918103 	ldr	r8, [r1, r3, lsl #2]
 e010100:	e795e103 	ldr	lr, [r5, r3, lsl #2]
 e010104:	e59e0078 	ldr	r0, [lr, #120]	; 0x78
 e010108:	e0400008 	sub	r0, r0, r8
 e01010c:	e0800006 	add	r0, r0, r6
 e010110:	e58e0078 	str	r0, [lr, #120]	; 0x78
 e010114:	e7920103 	ldr	r0, [r2, r3, lsl #2]
 e010118:	e3530001 	cmp	r3, #1
 e01011c:	e7810103 	str	r0, [r1, r3, lsl #2]
 e010120:	e3a03001 	mov	r3, #1
 e010124:	1affffed 	bne	e0100e0 <vTaskSwitchContext+0x64>
 e010128:	ebfffdb9 	bl	e00f814 <ulPortInterruptLock>
 e01012c:	e1a06000 	mov	r6, r0
 e010130:	ebfffdd2 	bl	e00f880 <ulPortGetCoreId>
 e010134:	e1a03000 	mov	r3, r0
 e010138:	e1a00006 	mov	r0, r6
 e01013c:	e7956103 	ldr	r6, [r5, r3, lsl #2]
 e010140:	ebfffdb8 	bl	e00f828 <ulPortInterruptUnLock>
 e010144:	e30a35a5 	movw	r3, #42405	; 0xa5a5
 e010148:	e34a35a5 	movt	r3, #42405	; 0xa5a5
 e01014c:	e5962030 	ldr	r2, [r6, #48]	; 0x30
 e010150:	e5921000 	ldr	r1, [r2]
 e010154:	e1510003 	cmp	r1, r3
 e010158:	1a000002 	bne	e010168 <vTaskSwitchContext+0xec>
 e01015c:	e5923004 	ldr	r3, [r2, #4]
 e010160:	e1530001 	cmp	r3, r1
 e010164:	0a00012d 	beq	e010620 <vTaskSwitchContext+0x5a4>
 e010168:	ebfffda9 	bl	e00f814 <ulPortInterruptLock>
 e01016c:	e1a06000 	mov	r6, r0
 e010170:	ebfffdc2 	bl	e00f880 <ulPortGetCoreId>
 e010174:	e1a03000 	mov	r3, r0
 e010178:	e1a00006 	mov	r0, r6
 e01017c:	e7958103 	ldr	r8, [r5, r3, lsl #2]
 e010180:	ebfffda8 	bl	e00f828 <ulPortInterruptUnLock>
 e010184:	ebfffda2 	bl	e00f814 <ulPortInterruptLock>
 e010188:	e1a06000 	mov	r6, r0
 e01018c:	ebfffdbb 	bl	e00f880 <ulPortGetCoreId>
 e010190:	e1a03000 	mov	r3, r0
 e010194:	e1a00006 	mov	r0, r6
 e010198:	e7956103 	ldr	r6, [r5, r3, lsl #2]
 e01019c:	ebfffda1 	bl	e00f828 <ulPortInterruptUnLock>
 e0101a0:	e286103c 	add	r1, r6, #60	; 0x3c
 e0101a4:	e1a00008 	mov	r0, r8
 e0101a8:	ebfffde0 	bl	e00f930 <vApplicationStackOverflowHook>
 e0101ac:	e30891c0 	movw	r9, #33216	; 0x81c0
 e0101b0:	e346900a 	movt	r9, #24586	; 0x600a
 e0101b4:	e7952104 	ldr	r2, [r5, r4, lsl #2]
 e0101b8:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e0101bc:	e5991000 	ldr	r1, [r9]
 e0101c0:	e5821174 	str	r1, [r2, #372]	; 0x174
 e0101c4:	e5933034 	ldr	r3, [r3, #52]	; 0x34
 e0101c8:	e3530000 	cmp	r3, #0
 e0101cc:	ba000003 	blt	e0101e0 <vTaskSwitchContext+0x164>
 e0101d0:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e0101d4:	e5933034 	ldr	r3, [r3, #52]	; 0x34
 e0101d8:	e3530001 	cmp	r3, #1
 e0101dc:	da0000e9 	ble	e010588 <vTaskSwitchContext+0x50c>
 e0101e0:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e0101e4:	e30861d4 	movw	r6, #33236	; 0x81d4
 e0101e8:	e346600a 	movt	r6, #24586	; 0x600a
 e0101ec:	e5932014 	ldr	r2, [r3, #20]
 e0101f0:	e5963000 	ldr	r3, [r6]
 e0101f4:	e1520003 	cmp	r2, r3
 e0101f8:	0a00010f 	beq	e01063c <vTaskSwitchContext+0x5c0>
 e0101fc:	e30882d4 	movw	r8, #33492	; 0x82d4
 e010200:	e346800a 	movt	r8, #24586	; 0x600a
 e010204:	e30861d8 	movw	r6, #33240	; 0x81d8
 e010208:	e346600a 	movt	r6, #24586	; 0x600a
 e01020c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e010210:	e3e02000 	mvn	r2, #0
 e010214:	e3a01014 	mov	r1, #20
 e010218:	e5832034 	str	r2, [r3, #52]	; 0x34
 e01021c:	e5982000 	ldr	r2, [r8]
 e010220:	e0030291 	mul	r3, r1, r2
 e010224:	e7963003 	ldr	r3, [r6, r3]
 e010228:	e3530000 	cmp	r3, #0
 e01022c:	1a000004 	bne	e010244 <vTaskSwitchContext+0x1c8>
 e010230:	e2422001 	sub	r2, r2, #1
 e010234:	e0030291 	mul	r3, r1, r2
 e010238:	e7963003 	ldr	r3, [r6, r3]
 e01023c:	e3530000 	cmp	r3, #0
 e010240:	0afffffa 	beq	e010230 <vTaskSwitchContext+0x1b4>
 e010244:	e3a00014 	mov	r0, #20
 e010248:	e308e300 	movw	lr, #33536	; 0x8300
 e01024c:	e346e00a 	movt	lr, #24586	; 0x600a
 e010250:	e0000290 	mul	r0, r0, r2
 e010254:	e086c000 	add	ip, r6, r0
 e010258:	e2800008 	add	r0, r0, #8
 e01025c:	e0860000 	add	r0, r6, r0
 e010260:	e59c3004 	ldr	r3, [ip, #4]
 e010264:	ea000003 	b	e010278 <vTaskSwitchContext+0x1fc>
 e010268:	e795a104 	ldr	sl, [r5, r4, lsl #2]
 e01026c:	e79e1104 	ldr	r1, [lr, r4, lsl #2]
 e010270:	e15a0001 	cmp	sl, r1
 e010274:	0a00000a 	beq	e0102a4 <vTaskSwitchContext+0x228>
 e010278:	e5933004 	ldr	r3, [r3, #4]
 e01027c:	e58c3004 	str	r3, [ip, #4]
 e010280:	e1530000 	cmp	r3, r0
 e010284:	05933004 	ldreq	r3, [r3, #4]
 e010288:	058c3004 	streq	r3, [ip, #4]
 e01028c:	e593100c 	ldr	r1, [r3, #12]
 e010290:	e7851104 	str	r1, [r5, r4, lsl #2]
 e010294:	e7951104 	ldr	r1, [r5, r4, lsl #2]
 e010298:	e5911038 	ldr	r1, [r1, #56]	; 0x38
 e01029c:	e3510000 	cmp	r1, #0
 e0102a0:	1afffff0 	bne	e010268 <vTaskSwitchContext+0x1ec>
 e0102a4:	e5882000 	str	r2, [r8]
 e0102a8:	e7950104 	ldr	r0, [r5, r4, lsl #2]
 e0102ac:	e2800004 	add	r0, r0, #4
 e0102b0:	eb00073b 	bl	e011fa4 <uxListRemove>
 e0102b4:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e0102b8:	e5834034 	str	r4, [r3, #52]	; 0x34
 e0102bc:	e5983000 	ldr	r3, [r8]
 e0102c0:	e3530000 	cmp	r3, #0
 e0102c4:	0a000007 	beq	e0102e8 <vTaskSwitchContext+0x26c>
 e0102c8:	e3a01014 	mov	r1, #20
 e0102cc:	ea000001 	b	e0102d8 <vTaskSwitchContext+0x25c>
 e0102d0:	e2533001 	subs	r3, r3, #1
 e0102d4:	0a000003 	beq	e0102e8 <vTaskSwitchContext+0x26c>
 e0102d8:	e0020391 	mul	r2, r1, r3
 e0102dc:	e7962002 	ldr	r2, [r6, r2]
 e0102e0:	e3520000 	cmp	r2, #0
 e0102e4:	0afffff9 	beq	e0102d0 <vTaskSwitchContext+0x254>
 e0102e8:	e5883000 	str	r3, [r8]
 e0102ec:	e3053000 	movw	r3, #20480	; 0x5000
 e0102f0:	e3463009 	movt	r3, #24585	; 0x6009
 e0102f4:	e7951104 	ldr	r1, [r5, r4, lsl #2]
 e0102f8:	e7952104 	ldr	r2, [r5, r4, lsl #2]
 e0102fc:	e5911174 	ldr	r1, [r1, #372]	; 0x174
 e010300:	e282207c 	add	r2, r2, #124	; 0x7c
 e010304:	e5891000 	str	r1, [r9]
 e010308:	e5832000 	str	r2, [r3]
 e01030c:	ebfffd25 	bl	e00f7a8 <xPortSpinUnLockTask>
 e010310:	e1a00007 	mov	r0, r7
 e010314:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 e010318:	eafffd42 	b	e00f828 <ulPortInterruptUnLock>
 e01031c:	e308336c 	movw	r3, #33644	; 0x836c
 e010320:	e346300a 	movt	r3, #24586	; 0x600a
 e010324:	e3a02001 	mov	r2, #1
 e010328:	e7832104 	str	r2, [r3, r4, lsl #2]
 e01032c:	ebfffd3f 	bl	e00f830 <xPortCpuIsInInterrupt>
 e010330:	e3500000 	cmp	r0, #0
 e010334:	1afffff4 	bne	e01030c <vTaskSwitchContext+0x290>
 e010338:	e30851c4 	movw	r5, #33220	; 0x81c4
 e01033c:	e346500a 	movt	r5, #24586	; 0x600a
 e010340:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e010344:	e5933038 	ldr	r3, [r3, #56]	; 0x38
 e010348:	e3530000 	cmp	r3, #0
 e01034c:	1affffee 	bne	e01030c <vTaskSwitchContext+0x290>
 e010350:	e7952104 	ldr	r2, [r5, r4, lsl #2]
 e010354:	e5922034 	ldr	r2, [r2, #52]	; 0x34
 e010358:	e3520000 	cmp	r2, #0
 e01035c:	ba000003 	blt	e010370 <vTaskSwitchContext+0x2f4>
 e010360:	e7952104 	ldr	r2, [r5, r4, lsl #2]
 e010364:	e5922034 	ldr	r2, [r2, #52]	; 0x34
 e010368:	e3520001 	cmp	r2, #1
 e01036c:	daffffe6 	ble	e01030c <vTaskSwitchContext+0x290>
 e010370:	e3a0ca09 	mov	ip, #36864	; 0x9000
 e010374:	e344c200 	movt	ip, #16896	; 0x4200
 e010378:	e30822bc 	movw	r2, #33468	; 0x82bc
 e01037c:	e346200a 	movt	r2, #24586	; 0x600a
 e010380:	e30812b4 	movw	r1, #33460	; 0x82b4
 e010384:	e346100a 	movt	r1, #24586	; 0x600a
 e010388:	e59c0004 	ldr	r0, [ip, #4]
 e01038c:	e7820103 	str	r0, [r2, r3, lsl #2]
 e010390:	e792e103 	ldr	lr, [r2, r3, lsl #2]
 e010394:	e7910103 	ldr	r0, [r1, r3, lsl #2]
 e010398:	e15e0000 	cmp	lr, r0
 e01039c:	9a000006 	bls	e0103bc <vTaskSwitchContext+0x340>
 e0103a0:	e7926103 	ldr	r6, [r2, r3, lsl #2]
 e0103a4:	e7918103 	ldr	r8, [r1, r3, lsl #2]
 e0103a8:	e795e103 	ldr	lr, [r5, r3, lsl #2]
 e0103ac:	e59e0078 	ldr	r0, [lr, #120]	; 0x78
 e0103b0:	e0400008 	sub	r0, r0, r8
 e0103b4:	e0800006 	add	r0, r0, r6
 e0103b8:	e58e0078 	str	r0, [lr, #120]	; 0x78
 e0103bc:	e7920103 	ldr	r0, [r2, r3, lsl #2]
 e0103c0:	e3530001 	cmp	r3, #1
 e0103c4:	e7810103 	str	r0, [r1, r3, lsl #2]
 e0103c8:	e3a03001 	mov	r3, #1
 e0103cc:	1affffed 	bne	e010388 <vTaskSwitchContext+0x30c>
 e0103d0:	ebfffd0f 	bl	e00f814 <ulPortInterruptLock>
 e0103d4:	e1a06000 	mov	r6, r0
 e0103d8:	ebfffd28 	bl	e00f880 <ulPortGetCoreId>
 e0103dc:	e1a03000 	mov	r3, r0
 e0103e0:	e1a00006 	mov	r0, r6
 e0103e4:	e7956103 	ldr	r6, [r5, r3, lsl #2]
 e0103e8:	ebfffd0e 	bl	e00f828 <ulPortInterruptUnLock>
 e0103ec:	e30a35a5 	movw	r3, #42405	; 0xa5a5
 e0103f0:	e34a35a5 	movt	r3, #42405	; 0xa5a5
 e0103f4:	e5962030 	ldr	r2, [r6, #48]	; 0x30
 e0103f8:	e5921000 	ldr	r1, [r2]
 e0103fc:	e1510003 	cmp	r1, r3
 e010400:	1a000002 	bne	e010410 <vTaskSwitchContext+0x394>
 e010404:	e5923004 	ldr	r3, [r2, #4]
 e010408:	e1530001 	cmp	r3, r1
 e01040c:	0a0000d9 	beq	e010778 <vTaskSwitchContext+0x6fc>
 e010410:	ebfffcff 	bl	e00f814 <ulPortInterruptLock>
 e010414:	e1a06000 	mov	r6, r0
 e010418:	ebfffd18 	bl	e00f880 <ulPortGetCoreId>
 e01041c:	e1a03000 	mov	r3, r0
 e010420:	e1a00006 	mov	r0, r6
 e010424:	e7958103 	ldr	r8, [r5, r3, lsl #2]
 e010428:	ebfffcfe 	bl	e00f828 <ulPortInterruptUnLock>
 e01042c:	ebfffcf8 	bl	e00f814 <ulPortInterruptLock>
 e010430:	e1a06000 	mov	r6, r0
 e010434:	ebfffd11 	bl	e00f880 <ulPortGetCoreId>
 e010438:	e1a03000 	mov	r3, r0
 e01043c:	e1a00006 	mov	r0, r6
 e010440:	e7956103 	ldr	r6, [r5, r3, lsl #2]
 e010444:	ebfffcf7 	bl	e00f828 <ulPortInterruptUnLock>
 e010448:	e286103c 	add	r1, r6, #60	; 0x3c
 e01044c:	e1a00008 	mov	r0, r8
 e010450:	ebfffd36 	bl	e00f930 <vApplicationStackOverflowHook>
 e010454:	e30891c0 	movw	r9, #33216	; 0x81c0
 e010458:	e346900a 	movt	r9, #24586	; 0x600a
 e01045c:	e7952104 	ldr	r2, [r5, r4, lsl #2]
 e010460:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e010464:	e5991000 	ldr	r1, [r9]
 e010468:	e5821174 	str	r1, [r2, #372]	; 0x174
 e01046c:	e3e02000 	mvn	r2, #0
 e010470:	e5832034 	str	r2, [r3, #52]	; 0x34
 e010474:	e30861d4 	movw	r6, #33236	; 0x81d4
 e010478:	e346600a 	movt	r6, #24586	; 0x600a
 e01047c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e010480:	e5932014 	ldr	r2, [r3, #20]
 e010484:	e5963000 	ldr	r3, [r6]
 e010488:	e1520003 	cmp	r2, r3
 e01048c:	0a00009f 	beq	e010710 <vTaskSwitchContext+0x694>
 e010490:	e30882d4 	movw	r8, #33492	; 0x82d4
 e010494:	e346800a 	movt	r8, #24586	; 0x600a
 e010498:	e3083300 	movw	r3, #33536	; 0x8300
 e01049c:	e346300a 	movt	r3, #24586	; 0x600a
 e0104a0:	e7933104 	ldr	r3, [r3, r4, lsl #2]
 e0104a4:	e7853104 	str	r3, [r5, r4, lsl #2]
 e0104a8:	e7950104 	ldr	r0, [r5, r4, lsl #2]
 e0104ac:	e2800004 	add	r0, r0, #4
 e0104b0:	eb0006bb 	bl	e011fa4 <uxListRemove>
 e0104b4:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e0104b8:	e5834034 	str	r4, [r3, #52]	; 0x34
 e0104bc:	e5983000 	ldr	r3, [r8]
 e0104c0:	e3530000 	cmp	r3, #0
 e0104c4:	0affff87 	beq	e0102e8 <vTaskSwitchContext+0x26c>
 e0104c8:	e30861d8 	movw	r6, #33240	; 0x81d8
 e0104cc:	e346600a 	movt	r6, #24586	; 0x600a
 e0104d0:	e3a01014 	mov	r1, #20
 e0104d4:	ea000001 	b	e0104e0 <vTaskSwitchContext+0x464>
 e0104d8:	e2533001 	subs	r3, r3, #1
 e0104dc:	0affff81 	beq	e0102e8 <vTaskSwitchContext+0x26c>
 e0104e0:	e0020391 	mul	r2, r1, r3
 e0104e4:	e7962002 	ldr	r2, [r6, r2]
 e0104e8:	e3520000 	cmp	r2, #0
 e0104ec:	0afffff9 	beq	e0104d8 <vTaskSwitchContext+0x45c>
 e0104f0:	eaffff7c 	b	e0102e8 <vTaskSwitchContext+0x26c>
 e0104f4:	e30851c4 	movw	r5, #33220	; 0x81c4
 e0104f8:	e346500a 	movt	r5, #24586	; 0x600a
 e0104fc:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e010500:	e5933034 	ldr	r3, [r3, #52]	; 0x34
 e010504:	e3530000 	cmp	r3, #0
 e010508:	ba000003 	blt	e01051c <vTaskSwitchContext+0x4a0>
 e01050c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e010510:	e5933034 	ldr	r3, [r3, #52]	; 0x34
 e010514:	e3530001 	cmp	r3, #1
 e010518:	da000029 	ble	e0105c4 <vTaskSwitchContext+0x548>
 e01051c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e010520:	e30861d4 	movw	r6, #33236	; 0x81d4
 e010524:	e346600a 	movt	r6, #24586	; 0x600a
 e010528:	e5932014 	ldr	r2, [r3, #20]
 e01052c:	e5963000 	ldr	r3, [r6]
 e010530:	e1520003 	cmp	r2, r3
 e010534:	0a00005d 	beq	e0106b0 <vTaskSwitchContext+0x634>
 e010538:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e01053c:	e3e02000 	mvn	r2, #0
 e010540:	e3a06000 	mov	r6, #0
 e010544:	e5832034 	str	r2, [r3, #52]	; 0x34
 e010548:	e3082300 	movw	r2, #33536	; 0x8300
 e01054c:	e346200a 	movt	r2, #24586	; 0x600a
 e010550:	e308336c 	movw	r3, #33644	; 0x836c
 e010554:	e346300a 	movt	r3, #24586	; 0x600a
 e010558:	e7922104 	ldr	r2, [r2, r4, lsl #2]
 e01055c:	e7852104 	str	r2, [r5, r4, lsl #2]
 e010560:	e7836104 	str	r6, [r3, r4, lsl #2]
 e010564:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e010568:	e5836058 	str	r6, [r3, #88]	; 0x58
 e01056c:	ebffe091 	bl	e0087b8 <vDisableIPIInterrupt>
 e010570:	ebfffc8c 	bl	e00f7a8 <xPortSpinUnLockTask>
 e010574:	e1a00007 	mov	r0, r7
 e010578:	ebfffcaa 	bl	e00f828 <ulPortInterruptUnLock>
 e01057c:	e1a00006 	mov	r0, r6
 e010580:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 e010584:	eaffe235 	b	e008e60 <psci_cpu_off>
 e010588:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e01058c:	e5933034 	ldr	r3, [r3, #52]	; 0x34
 e010590:	e1530004 	cmp	r3, r4
 e010594:	1affff11 	bne	e0101e0 <vTaskSwitchContext+0x164>
 e010598:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e01059c:	e5933034 	ldr	r3, [r3, #52]	; 0x34
 e0105a0:	e3730002 	cmn	r3, #2
 e0105a4:	1a00002e 	bne	e010664 <vTaskSwitchContext+0x5e8>
 e0105a8:	e30831d4 	movw	r3, #33236	; 0x81d4
 e0105ac:	e346300a 	movt	r3, #24586	; 0x600a
 e0105b0:	e5930000 	ldr	r0, [r3]
 e0105b4:	e7951104 	ldr	r1, [r5, r4, lsl #2]
 e0105b8:	e2811004 	add	r1, r1, #4
 e0105bc:	eb000657 	bl	e011f20 <vListInsertEnd>
 e0105c0:	eaffff0d 	b	e0101fc <vTaskSwitchContext+0x180>
 e0105c4:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e0105c8:	e5933034 	ldr	r3, [r3, #52]	; 0x34
 e0105cc:	e3730002 	cmn	r3, #2
 e0105d0:	0a000045 	beq	e0106ec <vTaskSwitchContext+0x670>
 e0105d4:	e7952104 	ldr	r2, [r5, r4, lsl #2]
 e0105d8:	e30832d4 	movw	r3, #33492	; 0x82d4
 e0105dc:	e346300a 	movt	r3, #24586	; 0x600a
 e0105e0:	e592102c 	ldr	r1, [r2, #44]	; 0x2c
 e0105e4:	e3a00014 	mov	r0, #20
 e0105e8:	e5932000 	ldr	r2, [r3]
 e0105ec:	e1510002 	cmp	r1, r2
 e0105f0:	87952104 	ldrhi	r2, [r5, r4, lsl #2]
 e0105f4:	8592202c 	ldrhi	r2, [r2, #44]	; 0x2c
 e0105f8:	85832000 	strhi	r2, [r3]
 e0105fc:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e010600:	e7951104 	ldr	r1, [r5, r4, lsl #2]
 e010604:	e593202c 	ldr	r2, [r3, #44]	; 0x2c
 e010608:	e30831d8 	movw	r3, #33240	; 0x81d8
 e01060c:	e346300a 	movt	r3, #24586	; 0x600a
 e010610:	e2811004 	add	r1, r1, #4
 e010614:	e0203290 	mla	r0, r0, r2, r3
 e010618:	eb000640 	bl	e011f20 <vListInsertEnd>
 e01061c:	eaffffc5 	b	e010538 <vTaskSwitchContext+0x4bc>
 e010620:	e5921008 	ldr	r1, [r2, #8]
 e010624:	e1510003 	cmp	r1, r3
 e010628:	1afffece 	bne	e010168 <vTaskSwitchContext+0xec>
 e01062c:	e592300c 	ldr	r3, [r2, #12]
 e010630:	e1530001 	cmp	r3, r1
 e010634:	1afffecb 	bne	e010168 <vTaskSwitchContext+0xec>
 e010638:	eafffedb 	b	e0101ac <vTaskSwitchContext+0x130>
 e01063c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e010640:	e3e02000 	mvn	r2, #0
 e010644:	e5832034 	str	r2, [r3, #52]	; 0x34
 e010648:	e7950104 	ldr	r0, [r5, r4, lsl #2]
 e01064c:	e2800004 	add	r0, r0, #4
 e010650:	eb000653 	bl	e011fa4 <uxListRemove>
 e010654:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e010658:	e5933034 	ldr	r3, [r3, #52]	; 0x34
 e01065c:	e3730002 	cmn	r3, #2
 e010660:	0a000028 	beq	e010708 <vTaskSwitchContext+0x68c>
 e010664:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e010668:	e30882d4 	movw	r8, #33492	; 0x82d4
 e01066c:	e346800a 	movt	r8, #24586	; 0x600a
 e010670:	e593202c 	ldr	r2, [r3, #44]	; 0x2c
 e010674:	e3a00014 	mov	r0, #20
 e010678:	e5983000 	ldr	r3, [r8]
 e01067c:	e30861d8 	movw	r6, #33240	; 0x81d8
 e010680:	e346600a 	movt	r6, #24586	; 0x600a
 e010684:	e1520003 	cmp	r2, r3
 e010688:	87953104 	ldrhi	r3, [r5, r4, lsl #2]
 e01068c:	8593302c 	ldrhi	r3, [r3, #44]	; 0x2c
 e010690:	85883000 	strhi	r3, [r8]
 e010694:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e010698:	e7951104 	ldr	r1, [r5, r4, lsl #2]
 e01069c:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
 e0106a0:	e2811004 	add	r1, r1, #4
 e0106a4:	e0206390 	mla	r0, r0, r3, r6
 e0106a8:	eb00061c 	bl	e011f20 <vListInsertEnd>
 e0106ac:	eafffed6 	b	e01020c <vTaskSwitchContext+0x190>
 e0106b0:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e0106b4:	e3e02000 	mvn	r2, #0
 e0106b8:	e5832034 	str	r2, [r3, #52]	; 0x34
 e0106bc:	e7950104 	ldr	r0, [r5, r4, lsl #2]
 e0106c0:	e2800004 	add	r0, r0, #4
 e0106c4:	eb000636 	bl	e011fa4 <uxListRemove>
 e0106c8:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e0106cc:	e5933034 	ldr	r3, [r3, #52]	; 0x34
 e0106d0:	e3730002 	cmn	r3, #2
 e0106d4:	1affffbe 	bne	e0105d4 <vTaskSwitchContext+0x558>
 e0106d8:	e5960000 	ldr	r0, [r6]
 e0106dc:	e7951104 	ldr	r1, [r5, r4, lsl #2]
 e0106e0:	e2811004 	add	r1, r1, #4
 e0106e4:	eb00060d 	bl	e011f20 <vListInsertEnd>
 e0106e8:	eaffff92 	b	e010538 <vTaskSwitchContext+0x4bc>
 e0106ec:	e30831d4 	movw	r3, #33236	; 0x81d4
 e0106f0:	e346300a 	movt	r3, #24586	; 0x600a
 e0106f4:	e5930000 	ldr	r0, [r3]
 e0106f8:	e7951104 	ldr	r1, [r5, r4, lsl #2]
 e0106fc:	e2811004 	add	r1, r1, #4
 e010700:	eb000606 	bl	e011f20 <vListInsertEnd>
 e010704:	eaffff8b 	b	e010538 <vTaskSwitchContext+0x4bc>
 e010708:	e5960000 	ldr	r0, [r6]
 e01070c:	eaffffa8 	b	e0105b4 <vTaskSwitchContext+0x538>
 e010710:	e7950104 	ldr	r0, [r5, r4, lsl #2]
 e010714:	e2800004 	add	r0, r0, #4
 e010718:	eb000621 	bl	e011fa4 <uxListRemove>
 e01071c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e010720:	e5933034 	ldr	r3, [r3, #52]	; 0x34
 e010724:	e3730002 	cmn	r3, #2
 e010728:	0a000019 	beq	e010794 <vTaskSwitchContext+0x718>
 e01072c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e010730:	e30882d4 	movw	r8, #33492	; 0x82d4
 e010734:	e346800a 	movt	r8, #24586	; 0x600a
 e010738:	e593202c 	ldr	r2, [r3, #44]	; 0x2c
 e01073c:	e3a00014 	mov	r0, #20
 e010740:	e5983000 	ldr	r3, [r8]
 e010744:	e30861d8 	movw	r6, #33240	; 0x81d8
 e010748:	e346600a 	movt	r6, #24586	; 0x600a
 e01074c:	e1520003 	cmp	r2, r3
 e010750:	87953104 	ldrhi	r3, [r5, r4, lsl #2]
 e010754:	8593302c 	ldrhi	r3, [r3, #44]	; 0x2c
 e010758:	85883000 	strhi	r3, [r8]
 e01075c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e010760:	e7951104 	ldr	r1, [r5, r4, lsl #2]
 e010764:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
 e010768:	e2811004 	add	r1, r1, #4
 e01076c:	e0206390 	mla	r0, r0, r3, r6
 e010770:	eb0005ea 	bl	e011f20 <vListInsertEnd>
 e010774:	eaffff47 	b	e010498 <vTaskSwitchContext+0x41c>
 e010778:	e5921008 	ldr	r1, [r2, #8]
 e01077c:	e1510003 	cmp	r1, r3
 e010780:	1affff22 	bne	e010410 <vTaskSwitchContext+0x394>
 e010784:	e592300c 	ldr	r3, [r2, #12]
 e010788:	e1530001 	cmp	r3, r1
 e01078c:	1affff1f 	bne	e010410 <vTaskSwitchContext+0x394>
 e010790:	eaffff2f 	b	e010454 <vTaskSwitchContext+0x3d8>
 e010794:	e5960000 	ldr	r0, [r6]
 e010798:	e7951104 	ldr	r1, [r5, r4, lsl #2]
 e01079c:	e2811004 	add	r1, r1, #4
 e0107a0:	eb0005de 	bl	e011f20 <vListInsertEnd>
 e0107a4:	eaffff39 	b	e010490 <vTaskSwitchContext+0x414>

0e0107a8 <vTaskInternalSetTimeOutState>:
 e0107a8:	e308230c 	movw	r2, #33548	; 0x830c
 e0107ac:	e346200a 	movt	r2, #24586	; 0x600a
 e0107b0:	e3083368 	movw	r3, #33640	; 0x8368
 e0107b4:	e346300a 	movt	r3, #24586	; 0x600a
 e0107b8:	e5922000 	ldr	r2, [r2]
 e0107bc:	e5933000 	ldr	r3, [r3]
 e0107c0:	e1c020f0 	strd	r2, [r0]
 e0107c4:	e12fff1e 	bx	lr

0e0107c8 <vTaskMissedYield>:
 e0107c8:	e92d4010 	push	{r4, lr}
 e0107cc:	ebfffc2b 	bl	e00f880 <ulPortGetCoreId>
 e0107d0:	e308336c 	movw	r3, #33644	; 0x836c
 e0107d4:	e346300a 	movt	r3, #24586	; 0x600a
 e0107d8:	e3a02001 	mov	r2, #1
 e0107dc:	e7832100 	str	r2, [r3, r0, lsl #2]
 e0107e0:	e8bd8010 	pop	{r4, pc}

0e0107e4 <eTaskConfirmSleepModeStatus>:
 e0107e4:	e3083314 	movw	r3, #33556	; 0x8314
 e0107e8:	e346300a 	movt	r3, #24586	; 0x600a
 e0107ec:	e5933000 	ldr	r3, [r3]
 e0107f0:	e3530000 	cmp	r3, #0
 e0107f4:	0a000001 	beq	e010800 <eTaskConfirmSleepModeStatus+0x1c>
 e0107f8:	e3a00000 	mov	r0, #0
 e0107fc:	e12fff1e 	bx	lr
 e010800:	e92d4010 	push	{r4, lr}
 e010804:	ebfffc02 	bl	e00f814 <ulPortInterruptLock>
 e010808:	e1a04000 	mov	r4, r0
 e01080c:	ebfffc1b 	bl	e00f880 <ulPortGetCoreId>
 e010810:	e308336c 	movw	r3, #33644	; 0x836c
 e010814:	e346300a 	movt	r3, #24586	; 0x600a
 e010818:	e1a02000 	mov	r2, r0
 e01081c:	e1a00004 	mov	r0, r4
 e010820:	e7934102 	ldr	r4, [r3, r2, lsl #2]
 e010824:	ebfffbff 	bl	e00f828 <ulPortInterruptUnLock>
 e010828:	e3540000 	cmp	r4, #0
 e01082c:	0a000001 	beq	e010838 <eTaskConfirmSleepModeStatus+0x54>
 e010830:	e3a00000 	mov	r0, #0
 e010834:	e8bd8010 	pop	{r4, pc}
 e010838:	e30832c4 	movw	r3, #33476	; 0x82c4
 e01083c:	e346300a 	movt	r3, #24586	; 0x600a
 e010840:	e308232c 	movw	r2, #33580	; 0x832c
 e010844:	e346200a 	movt	r2, #24586	; 0x600a
 e010848:	e5933000 	ldr	r3, [r3]
 e01084c:	e5920000 	ldr	r0, [r2]
 e010850:	e2433001 	sub	r3, r3, #1
 e010854:	e1500003 	cmp	r0, r3
 e010858:	13a00001 	movne	r0, #1
 e01085c:	03a00002 	moveq	r0, #2
 e010860:	e8bd8010 	pop	{r4, pc}

0e010864 <xTaskGetSchedulerState>:
 e010864:	e3083328 	movw	r3, #33576	; 0x8328
 e010868:	e346300a 	movt	r3, #24586	; 0x600a
 e01086c:	e92d4070 	push	{r4, r5, r6, lr}
 e010870:	e5933000 	ldr	r3, [r3]
 e010874:	e3530000 	cmp	r3, #0
 e010878:	03a04001 	moveq	r4, #1
 e01087c:	1a000001 	bne	e010888 <xTaskGetSchedulerState+0x24>
 e010880:	e1a00004 	mov	r0, r4
 e010884:	e8bd8070 	pop	{r4, r5, r6, pc}
 e010888:	ebfffbe1 	bl	e00f814 <ulPortInterruptLock>
 e01088c:	e1a05000 	mov	r5, r0
 e010890:	ebfffbb9 	bl	e00f77c <xPortSpinLockTask>
 e010894:	e30832cc 	movw	r3, #33484	; 0x82cc
 e010898:	e346300a 	movt	r3, #24586	; 0x600a
 e01089c:	e5933000 	ldr	r3, [r3]
 e0108a0:	e3530000 	cmp	r3, #0
 e0108a4:	03a04002 	moveq	r4, #2
 e0108a8:	13a04000 	movne	r4, #0
 e0108ac:	ebfffbbd 	bl	e00f7a8 <xPortSpinUnLockTask>
 e0108b0:	e1a00005 	mov	r0, r5
 e0108b4:	ebfffbdb 	bl	e00f828 <ulPortInterruptUnLock>
 e0108b8:	e1a00004 	mov	r0, r4
 e0108bc:	e8bd8070 	pop	{r4, r5, r6, pc}

0e0108c0 <vTaskYieldWithinAPI>:
 e0108c0:	e92d4010 	push	{r4, lr}
 e0108c4:	ebfffbd2 	bl	e00f814 <ulPortInterruptLock>
 e0108c8:	e1a04000 	mov	r4, r0
 e0108cc:	ebfffbeb 	bl	e00f880 <ulPortGetCoreId>
 e0108d0:	e30831c4 	movw	r3, #33220	; 0x81c4
 e0108d4:	e346300a 	movt	r3, #24586	; 0x600a
 e0108d8:	e1a02000 	mov	r2, r0
 e0108dc:	e1a00004 	mov	r0, r4
 e0108e0:	e7934102 	ldr	r4, [r3, r2, lsl #2]
 e0108e4:	ebfffbcf 	bl	e00f828 <ulPortInterruptUnLock>
 e0108e8:	e5943058 	ldr	r3, [r4, #88]	; 0x58
 e0108ec:	e3530000 	cmp	r3, #0
 e0108f0:	1a000001 	bne	e0108fc <vTaskYieldWithinAPI+0x3c>
 e0108f4:	ef000000 	svc	0x00000000
 e0108f8:	e8bd8010 	pop	{r4, pc}
 e0108fc:	ebfffbdf 	bl	e00f880 <ulPortGetCoreId>
 e010900:	e308336c 	movw	r3, #33644	; 0x836c
 e010904:	e346300a 	movt	r3, #24586	; 0x600a
 e010908:	e3a02001 	mov	r2, #1
 e01090c:	e7832100 	str	r2, [r3, r0, lsl #2]
 e010910:	e8bd8010 	pop	{r4, pc}

0e010914 <vTaskEnterCritical>:
 e010914:	e92d4070 	push	{r4, r5, r6, lr}
 e010918:	ebfffbbd 	bl	e00f814 <ulPortInterruptLock>
 e01091c:	ebfffbd7 	bl	e00f880 <ulPortGetCoreId>
 e010920:	e3083328 	movw	r3, #33576	; 0x8328
 e010924:	e346300a 	movt	r3, #24586	; 0x600a
 e010928:	e5933000 	ldr	r3, [r3]
 e01092c:	e3530000 	cmp	r3, #0
 e010930:	08bd8070 	popeq	{r4, r5, r6, pc}
 e010934:	e30851c4 	movw	r5, #33220	; 0x81c4
 e010938:	e346500a 	movt	r5, #24586	; 0x600a
 e01093c:	e1a04000 	mov	r4, r0
 e010940:	e7953100 	ldr	r3, [r5, r0, lsl #2]
 e010944:	e5933058 	ldr	r3, [r3, #88]	; 0x58
 e010948:	e3530000 	cmp	r3, #0
 e01094c:	0a000004 	beq	e010964 <vTaskEnterCritical+0x50>
 e010950:	e7952104 	ldr	r2, [r5, r4, lsl #2]
 e010954:	e5923058 	ldr	r3, [r2, #88]	; 0x58
 e010958:	e2833001 	add	r3, r3, #1
 e01095c:	e5823058 	str	r3, [r2, #88]	; 0x58
 e010960:	e8bd8070 	pop	{r4, r5, r6, pc}
 e010964:	ebfffb84 	bl	e00f77c <xPortSpinLockTask>
 e010968:	eafffff8 	b	e010950 <vTaskEnterCritical+0x3c>

0e01096c <vTaskExitCritical>:
 e01096c:	e92d4010 	push	{r4, lr}
 e010970:	ebfffbc2 	bl	e00f880 <ulPortGetCoreId>
 e010974:	e3083328 	movw	r3, #33576	; 0x8328
 e010978:	e346300a 	movt	r3, #24586	; 0x600a
 e01097c:	e5933000 	ldr	r3, [r3]
 e010980:	e3530000 	cmp	r3, #0
 e010984:	08bd8010 	popeq	{r4, pc}
 e010988:	e30831c4 	movw	r3, #33220	; 0x81c4
 e01098c:	e346300a 	movt	r3, #24586	; 0x600a
 e010990:	e1a04000 	mov	r4, r0
 e010994:	e7932100 	ldr	r2, [r3, r0, lsl #2]
 e010998:	e5922058 	ldr	r2, [r2, #88]	; 0x58
 e01099c:	e3520000 	cmp	r2, #0
 e0109a0:	08bd8010 	popeq	{r4, pc}
 e0109a4:	e7932100 	ldr	r2, [r3, r0, lsl #2]
 e0109a8:	e7931100 	ldr	r1, [r3, r0, lsl #2]
 e0109ac:	e5923058 	ldr	r3, [r2, #88]	; 0x58
 e0109b0:	e2433001 	sub	r3, r3, #1
 e0109b4:	e5823058 	str	r3, [r2, #88]	; 0x58
 e0109b8:	e5913058 	ldr	r3, [r1, #88]	; 0x58
 e0109bc:	e3530000 	cmp	r3, #0
 e0109c0:	18bd8010 	popne	{r4, pc}
 e0109c4:	ebfffb99 	bl	e00f830 <xPortCpuIsInInterrupt>
 e0109c8:	e3500000 	cmp	r0, #0
 e0109cc:	1a00000e 	bne	e010a0c <vTaskExitCritical+0xa0>
 e0109d0:	e308336c 	movw	r3, #33644	; 0x836c
 e0109d4:	e346300a 	movt	r3, #24586	; 0x600a
 e0109d8:	e7933104 	ldr	r3, [r3, r4, lsl #2]
 e0109dc:	e3530000 	cmp	r3, #0
 e0109e0:	0a000004 	beq	e0109f8 <vTaskExitCritical+0x8c>
 e0109e4:	e30832cc 	movw	r3, #33484	; 0x82cc
 e0109e8:	e346300a 	movt	r3, #24586	; 0x600a
 e0109ec:	e5933000 	ldr	r3, [r3]
 e0109f0:	e3530000 	cmp	r3, #0
 e0109f4:	0a000006 	beq	e010a14 <vTaskExitCritical+0xa8>
 e0109f8:	ebfffb6a 	bl	e00f7a8 <xPortSpinUnLockTask>
 e0109fc:	f1080080 	cpsie	i
 e010a00:	f57ff04f 	dsb	sy
 e010a04:	f57ff06f 	isb	sy
 e010a08:	e8bd8010 	pop	{r4, pc}
 e010a0c:	e8bd4010 	pop	{r4, lr}
 e010a10:	eafffb64 	b	e00f7a8 <xPortSpinUnLockTask>
 e010a14:	ebfffb63 	bl	e00f7a8 <xPortSpinUnLockTask>
 e010a18:	ef000000 	svc	0x00000000
 e010a1c:	eafffff6 	b	e0109fc <vTaskExitCritical+0x90>

0e010a20 <prvAddNewTaskToReadyList>:
 e010a20:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e010a24:	e30851c4 	movw	r5, #33220	; 0x81c4
 e010a28:	e346500a 	movt	r5, #24586	; 0x600a
 e010a2c:	e1a06000 	mov	r6, r0
 e010a30:	ebffffb7 	bl	e010914 <vTaskEnterCritical>
 e010a34:	e5957000 	ldr	r7, [r5]
 e010a38:	e3570000 	cmp	r7, #0
 e010a3c:	0a00001b 	beq	e010ab0 <prvAddNewTaskToReadyList+0x90>
 e010a40:	e5953004 	ldr	r3, [r5, #4]
 e010a44:	e3530000 	cmp	r3, #0
 e010a48:	0a000078 	beq	e010c30 <prvAddNewTaskToReadyList+0x210>
 e010a4c:	e5953000 	ldr	r3, [r5]
 e010a50:	e5952000 	ldr	r2, [r5]
 e010a54:	e596102c 	ldr	r1, [r6, #44]	; 0x2c
 e010a58:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
 e010a5c:	e5922034 	ldr	r2, [r2, #52]	; 0x34
 e010a60:	e3520001 	cmp	r2, #1
 e010a64:	83a02000 	movhi	r2, #0
 e010a68:	93a02001 	movls	r2, #1
 e010a6c:	e1510003 	cmp	r1, r3
 e010a70:	33a02000 	movcc	r2, #0
 e010a74:	e3520000 	cmp	r2, #0
 e010a78:	e5952004 	ldr	r2, [r5, #4]
 e010a7c:	01a03001 	moveq	r3, r1
 e010a80:	13a07000 	movne	r7, #0
 e010a84:	e592102c 	ldr	r1, [r2, #44]	; 0x2c
 e010a88:	e5952004 	ldr	r2, [r5, #4]
 e010a8c:	03e07000 	mvneq	r7, #0
 e010a90:	e1530001 	cmp	r3, r1
 e010a94:	e5922034 	ldr	r2, [r2, #52]	; 0x34
 e010a98:	33a03000 	movcc	r3, #0
 e010a9c:	23a03001 	movcs	r3, #1
 e010aa0:	e3520001 	cmp	r2, #1
 e010aa4:	83a03000 	movhi	r3, #0
 e010aa8:	e3530000 	cmp	r3, #0
 e010aac:	13a07001 	movne	r7, #1
 e010ab0:	e30832c4 	movw	r3, #33476	; 0x82c4
 e010ab4:	e346300a 	movt	r3, #24586	; 0x600a
 e010ab8:	e5932000 	ldr	r2, [r3]
 e010abc:	e2822001 	add	r2, r2, #1
 e010ac0:	e5832000 	str	r2, [r3]
 e010ac4:	e5933000 	ldr	r3, [r3]
 e010ac8:	e3530001 	cmp	r3, #1
 e010acc:	0a000030 	beq	e010b94 <prvAddNewTaskToReadyList+0x174>
 e010ad0:	e30822d0 	movw	r2, #33488	; 0x82d0
 e010ad4:	e346200a 	movt	r2, #24586	; 0x600a
 e010ad8:	e2861004 	add	r1, r6, #4
 e010adc:	e5923000 	ldr	r3, [r2]
 e010ae0:	e2833001 	add	r3, r3, #1
 e010ae4:	e5823000 	str	r3, [r2]
 e010ae8:	e3e02000 	mvn	r2, #0
 e010aec:	e5862034 	str	r2, [r6, #52]	; 0x34
 e010af0:	e586305c 	str	r3, [r6, #92]	; 0x5c
 e010af4:	e5963034 	ldr	r3, [r6, #52]	; 0x34
 e010af8:	e3730002 	cmn	r3, #2
 e010afc:	0a00001f 	beq	e010b80 <prvAddNewTaskToReadyList+0x160>
 e010b00:	e30832d4 	movw	r3, #33492	; 0x82d4
 e010b04:	e346300a 	movt	r3, #24586	; 0x600a
 e010b08:	e596202c 	ldr	r2, [r6, #44]	; 0x2c
 e010b0c:	e5930000 	ldr	r0, [r3]
 e010b10:	e1520000 	cmp	r2, r0
 e010b14:	e3a00014 	mov	r0, #20
 e010b18:	85832000 	strhi	r2, [r3]
 e010b1c:	e30831d8 	movw	r3, #33240	; 0x81d8
 e010b20:	e346300a 	movt	r3, #24586	; 0x600a
 e010b24:	e0203290 	mla	r0, r0, r2, r3
 e010b28:	eb0004fc 	bl	e011f20 <vListInsertEnd>
 e010b2c:	e3083328 	movw	r3, #33576	; 0x8328
 e010b30:	e346300a 	movt	r3, #24586	; 0x600a
 e010b34:	e5933000 	ldr	r3, [r3]
 e010b38:	e3530000 	cmp	r3, #0
 e010b3c:	0a000001 	beq	e010b48 <prvAddNewTaskToReadyList+0x128>
 e010b40:	e3570001 	cmp	r7, #1
 e010b44:	9a000001 	bls	e010b50 <prvAddNewTaskToReadyList+0x130>
 e010b48:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 e010b4c:	eaffff86 	b	e01096c <vTaskExitCritical>
 e010b50:	e7953107 	ldr	r3, [r5, r7, lsl #2]
 e010b54:	e3530000 	cmp	r3, #0
 e010b58:	0a000004 	beq	e010b70 <prvAddNewTaskToReadyList+0x150>
 e010b5c:	e7952107 	ldr	r2, [r5, r7, lsl #2]
 e010b60:	e596302c 	ldr	r3, [r6, #44]	; 0x2c
 e010b64:	e592202c 	ldr	r2, [r2, #44]	; 0x2c
 e010b68:	e1520003 	cmp	r2, r3
 e010b6c:	2afffff5 	bcs	e010b48 <prvAddNewTaskToReadyList+0x128>
 e010b70:	e1a00007 	mov	r0, r7
 e010b74:	ebfffc4f 	bl	e00fcb8 <prvYieldCore>
 e010b78:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 e010b7c:	eaffff7a 	b	e01096c <vTaskExitCritical>
 e010b80:	e30831d4 	movw	r3, #33236	; 0x81d4
 e010b84:	e346300a 	movt	r3, #24586	; 0x600a
 e010b88:	e5930000 	ldr	r0, [r3]
 e010b8c:	eb0004e3 	bl	e011f20 <vListInsertEnd>
 e010b90:	eaffffe5 	b	e010b2c <prvAddNewTaskToReadyList+0x10c>
 e010b94:	e30841d8 	movw	r4, #33240	; 0x81d8
 e010b98:	e346400a 	movt	r4, #24586	; 0x600a
 e010b9c:	e28480dc 	add	r8, r4, #220	; 0xdc
 e010ba0:	e1a00004 	mov	r0, r4
 e010ba4:	e2844014 	add	r4, r4, #20
 e010ba8:	eb0004d0 	bl	e011ef0 <vListInitialise>
 e010bac:	e1580004 	cmp	r8, r4
 e010bb0:	1afffffa 	bne	e010ba0 <prvAddNewTaskToReadyList+0x180>
 e010bb4:	e30892d8 	movw	r9, #33496	; 0x82d8
 e010bb8:	e346900a 	movt	r9, #24586	; 0x600a
 e010bbc:	e1a00009 	mov	r0, r9
 e010bc0:	e30882ec 	movw	r8, #33516	; 0x82ec
 e010bc4:	e346800a 	movt	r8, #24586	; 0x600a
 e010bc8:	eb0004c8 	bl	e011ef0 <vListInitialise>
 e010bcc:	e1a00008 	mov	r0, r8
 e010bd0:	eb0004c6 	bl	e011ef0 <vListInitialise>
 e010bd4:	e3084340 	movw	r4, #33600	; 0x8340
 e010bd8:	e346400a 	movt	r4, #24586	; 0x600a
 e010bdc:	e3080314 	movw	r0, #33556	; 0x8314
 e010be0:	e346000a 	movt	r0, #24586	; 0x600a
 e010be4:	eb0004c1 	bl	e011ef0 <vListInitialise>
 e010be8:	e1a00004 	mov	r0, r4
 e010bec:	eb0004bf 	bl	e011ef0 <vListInitialise>
 e010bf0:	e3080354 	movw	r0, #33620	; 0x8354
 e010bf4:	e346000a 	movt	r0, #24586	; 0x600a
 e010bf8:	eb0004bc 	bl	e011ef0 <vListInitialise>
 e010bfc:	e308032c 	movw	r0, #33580	; 0x832c
 e010c00:	e346000a 	movt	r0, #24586	; 0x600a
 e010c04:	eb0004b9 	bl	e011ef0 <vListInitialise>
 e010c08:	e30831cc 	movw	r3, #33228	; 0x81cc
 e010c0c:	e346300a 	movt	r3, #24586	; 0x600a
 e010c10:	e5839000 	str	r9, [r3]
 e010c14:	e30831d0 	movw	r3, #33232	; 0x81d0
 e010c18:	e346300a 	movt	r3, #24586	; 0x600a
 e010c1c:	e5838000 	str	r8, [r3]
 e010c20:	e30831d4 	movw	r3, #33236	; 0x81d4
 e010c24:	e346300a 	movt	r3, #24586	; 0x600a
 e010c28:	e5834000 	str	r4, [r3]
 e010c2c:	eaffffa7 	b	e010ad0 <prvAddNewTaskToReadyList+0xb0>
 e010c30:	e3a07001 	mov	r7, #1
 e010c34:	eaffff9d 	b	e010ab0 <prvAddNewTaskToReadyList+0x90>

0e010c38 <xTaskCreateStatic>:
 e010c38:	e92d4010 	push	{r4, lr}
 e010c3c:	e24dd018 	sub	sp, sp, #24
 e010c40:	e59de024 	ldr	lr, [sp, #36]	; 0x24
 e010c44:	e59d4028 	ldr	r4, [sp, #40]	; 0x28
 e010c48:	e3540000 	cmp	r4, #0
 e010c4c:	135e0000 	cmpne	lr, #0
 e010c50:	03a0c000 	moveq	ip, #0
 e010c54:	13a0c001 	movne	ip, #1
 e010c58:	01a0000c 	moveq	r0, ip
 e010c5c:	1a000001 	bne	e010c68 <xTaskCreateStatic+0x30>
 e010c60:	e28dd018 	add	sp, sp, #24
 e010c64:	e8bd8010 	pop	{r4, pc}
 e010c68:	e59dc020 	ldr	ip, [sp, #32]
 e010c6c:	e584e030 	str	lr, [r4, #48]	; 0x30
 e010c70:	e58dc000 	str	ip, [sp]
 e010c74:	e58d4008 	str	r4, [sp, #8]
 e010c78:	e3a0c002 	mov	ip, #2
 e010c7c:	e5c4c171 	strb	ip, [r4, #369]	; 0x171
 e010c80:	e28dc014 	add	ip, sp, #20
 e010c84:	e58dc004 	str	ip, [sp, #4]
 e010c88:	ebfffc22 	bl	e00fd18 <prvInitialiseNewTask.constprop.0>
 e010c8c:	e1a00004 	mov	r0, r4
 e010c90:	ebffff62 	bl	e010a20 <prvAddNewTaskToReadyList>
 e010c94:	e59d0014 	ldr	r0, [sp, #20]
 e010c98:	e28dd018 	add	sp, sp, #24
 e010c9c:	e8bd8010 	pop	{r4, pc}

0e010ca0 <xTaskCreate>:
 e010ca0:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 e010ca4:	e1a07000 	mov	r7, r0
 e010ca8:	e24dd014 	sub	sp, sp, #20
 e010cac:	e1a00102 	lsl	r0, r2, #2
 e010cb0:	e1a05002 	mov	r5, r2
 e010cb4:	e1a08001 	mov	r8, r1
 e010cb8:	e1a09003 	mov	r9, r3
 e010cbc:	eb00096a 	bl	e01326c <pvPortMalloc>
 e010cc0:	e2504000 	subs	r4, r0, #0
 e010cc4:	03e00000 	mvneq	r0, #0
 e010cc8:	0a000013 	beq	e010d1c <xTaskCreate+0x7c>
 e010ccc:	e3a00f5e 	mov	r0, #376	; 0x178
 e010cd0:	eb000965 	bl	e01326c <pvPortMalloc>
 e010cd4:	e2506000 	subs	r6, r0, #0
 e010cd8:	0a000011 	beq	e010d24 <xTaskCreate+0x84>
 e010cdc:	e3a0c000 	mov	ip, #0
 e010ce0:	e5c6c171 	strb	ip, [r6, #369]	; 0x171
 e010ce4:	e59dc034 	ldr	ip, [sp, #52]	; 0x34
 e010ce8:	e5864030 	str	r4, [r6, #48]	; 0x30
 e010cec:	e58dc004 	str	ip, [sp, #4]
 e010cf0:	e59dc030 	ldr	ip, [sp, #48]	; 0x30
 e010cf4:	e1a03009 	mov	r3, r9
 e010cf8:	e1a02005 	mov	r2, r5
 e010cfc:	e1a01008 	mov	r1, r8
 e010d00:	e1a00007 	mov	r0, r7
 e010d04:	e58dc000 	str	ip, [sp]
 e010d08:	e58d6008 	str	r6, [sp, #8]
 e010d0c:	ebfffc01 	bl	e00fd18 <prvInitialiseNewTask.constprop.0>
 e010d10:	e1a00006 	mov	r0, r6
 e010d14:	ebffff41 	bl	e010a20 <prvAddNewTaskToReadyList>
 e010d18:	e3a00001 	mov	r0, #1
 e010d1c:	e28dd014 	add	sp, sp, #20
 e010d20:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
 e010d24:	e1a00004 	mov	r0, r4
 e010d28:	eb00099d 	bl	e0133a4 <vPortFree>
 e010d2c:	e3e00000 	mvn	r0, #0
 e010d30:	eafffff9 	b	e010d1c <xTaskCreate+0x7c>

0e010d34 <vTaskStartScheduler>:
 e010d34:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 e010d38:	e3086300 	movw	r6, #33536	; 0x8300
 e010d3c:	e346600a 	movt	r6, #24586	; 0x600a
 e010d40:	e24dd03c 	sub	sp, sp, #60	; 0x3c
 e010d44:	e3017c34 	movw	r7, #7220	; 0x1c34
 e010d48:	e3407e01 	movt	r7, #3585	; 0xe01
 e010d4c:	e30851c4 	movw	r5, #33220	; 0x81c4
 e010d50:	e346500a 	movt	r5, #24586	; 0x600a
 e010d54:	eb0007e2 	bl	e012ce4 <xTimerCreateTimerTask>
 e010d58:	e3a04000 	mov	r4, #0
 e010d5c:	e1a09000 	mov	r9, r0
 e010d60:	e3a08049 	mov	r8, #73	; 0x49
 e010d64:	e3590000 	cmp	r9, #0
 e010d68:	0a00002d 	beq	e010e24 <vTaskStartScheduler+0xf0>
 e010d6c:	e3051418 	movw	r1, #21528	; 0x5418
 e010d70:	e3401e01 	movt	r1, #3585	; 0xe01
 e010d74:	e28d0021 	add	r0, sp, #33	; 0x21
 e010d78:	e3a02000 	mov	r2, #0
 e010d7c:	e5cd8020 	strb	r8, [sp, #32]
 e010d80:	e5f13001 	ldrb	r3, [r1, #1]!
 e010d84:	e1a0c002 	mov	ip, r2
 e010d88:	e3530000 	cmp	r3, #0
 e010d8c:	e2822001 	add	r2, r2, #1
 e010d90:	e4c03001 	strb	r3, [r0], #1
 e010d94:	1afffff9 	bne	e010d80 <vTaskStartScheduler+0x4c>
 e010d98:	e28c1038 	add	r1, ip, #56	; 0x38
 e010d9c:	e2822038 	add	r2, r2, #56	; 0x38
 e010da0:	e08d2002 	add	r2, sp, r2
 e010da4:	e08dc001 	add	ip, sp, r1
 e010da8:	e3540000 	cmp	r4, #0
 e010dac:	e2841030 	add	r1, r4, #48	; 0x30
 e010db0:	e28d0010 	add	r0, sp, #16
 e010db4:	e5421018 	strb	r1, [r2, #-24]	; 0xffffffe8
 e010db8:	e58d3010 	str	r3, [sp, #16]
 e010dbc:	e28d2018 	add	r2, sp, #24
 e010dc0:	e28d1014 	add	r1, sp, #20
 e010dc4:	e54c3016 	strb	r3, [ip, #-22]	; 0xffffffea
 e010dc8:	e58d3014 	str	r3, [sp, #20]
 e010dcc:	0a000018 	beq	e010e34 <vTaskStartScheduler+0x100>
 e010dd0:	ebfffaee 	bl	e00f990 <vApplicationGetPassiveIdleTaskMemory>
 e010dd4:	e59d2014 	ldr	r2, [sp, #20]
 e010dd8:	e59d9010 	ldr	r9, [sp, #16]
 e010ddc:	e3590000 	cmp	r9, #0
 e010de0:	13520000 	cmpne	r2, #0
 e010de4:	13a03001 	movne	r3, #1
 e010de8:	03a03000 	moveq	r3, #0
 e010dec:	1a000012 	bne	e010e3c <vTaskStartScheduler+0x108>
 e010df0:	e1a09003 	mov	r9, r3
 e010df4:	e5863000 	str	r3, [r6]
 e010df8:	e7853104 	str	r3, [r5, r4, lsl #2]
 e010dfc:	e2866004 	add	r6, r6, #4
 e010e00:	e7950104 	ldr	r0, [r5, r4, lsl #2]
 e010e04:	e2800004 	add	r0, r0, #4
 e010e08:	eb000465 	bl	e011fa4 <uxListRemove>
 e010e0c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e010e10:	e3540001 	cmp	r4, #1
 e010e14:	e5834034 	str	r4, [r3, #52]	; 0x34
 e010e18:	1a000003 	bne	e010e2c <vTaskStartScheduler+0xf8>
 e010e1c:	e3590001 	cmp	r9, #1
 e010e20:	0a000018 	beq	e010e88 <vTaskStartScheduler+0x154>
 e010e24:	e28dd03c 	add	sp, sp, #60	; 0x3c
 e010e28:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
 e010e2c:	e3a04001 	mov	r4, #1
 e010e30:	eaffffcb 	b	e010d64 <vTaskStartScheduler+0x30>
 e010e34:	ebfffacc 	bl	e00f96c <vApplicationGetIdleTaskMemory>
 e010e38:	eaffffe5 	b	e010dd4 <vTaskStartScheduler+0xa0>
 e010e3c:	e5892030 	str	r2, [r9, #48]	; 0x30
 e010e40:	e3a03000 	mov	r3, #0
 e010e44:	e59d2018 	ldr	r2, [sp, #24]
 e010e48:	e28d1020 	add	r1, sp, #32
 e010e4c:	e3a00002 	mov	r0, #2
 e010e50:	e5c90171 	strb	r0, [r9, #369]	; 0x171
 e010e54:	e58d3000 	str	r3, [sp]
 e010e58:	e28d001c 	add	r0, sp, #28
 e010e5c:	e58d9008 	str	r9, [sp, #8]
 e010e60:	e58d0004 	str	r0, [sp, #4]
 e010e64:	e1a00007 	mov	r0, r7
 e010e68:	ebfffbaa 	bl	e00fd18 <prvInitialiseNewTask.constprop.0>
 e010e6c:	e1a00009 	mov	r0, r9
 e010e70:	ebfffeea 	bl	e010a20 <prvAddNewTaskToReadyList>
 e010e74:	e59d301c 	ldr	r3, [sp, #28]
 e010e78:	e5863000 	str	r3, [r6]
 e010e7c:	e2539000 	subs	r9, r3, #0
 e010e80:	13a09001 	movne	r9, #1
 e010e84:	eaffffdb 	b	e010df8 <vTaskStartScheduler+0xc4>
 e010e88:	ebfffa61 	bl	e00f814 <ulPortInterruptLock>
 e010e8c:	ebfffa60 	bl	e00f814 <ulPortInterruptLock>
 e010e90:	e1a04000 	mov	r4, r0
 e010e94:	ebfffa79 	bl	e00f880 <ulPortGetCoreId>
 e010e98:	e1a03000 	mov	r3, r0
 e010e9c:	e1a00004 	mov	r0, r4
 e010ea0:	e7954103 	ldr	r4, [r5, r3, lsl #2]
 e010ea4:	ebfffa5f 	bl	e00f828 <ulPortInterruptUnLock>
 e010ea8:	e3052000 	movw	r2, #20480	; 0x5000
 e010eac:	e3462009 	movt	r2, #24585	; 0x6009
 e010eb0:	e3083308 	movw	r3, #33544	; 0x8308
 e010eb4:	e346300a 	movt	r3, #24586	; 0x600a
 e010eb8:	e284407c 	add	r4, r4, #124	; 0x7c
 e010ebc:	e3e01000 	mvn	r1, #0
 e010ec0:	e5824000 	str	r4, [r2]
 e010ec4:	e5831000 	str	r1, [r3]
 e010ec8:	e3082328 	movw	r2, #33576	; 0x8328
 e010ecc:	e346200a 	movt	r2, #24586	; 0x600a
 e010ed0:	e3083368 	movw	r3, #33640	; 0x8368
 e010ed4:	e346300a 	movt	r3, #24586	; 0x600a
 e010ed8:	e3a01000 	mov	r1, #0
 e010edc:	e5829000 	str	r9, [r2]
 e010ee0:	e5831000 	str	r1, [r3]
 e010ee4:	ebfffa15 	bl	e00f740 <xPortStartScheduler>
 e010ee8:	e28dd03c 	add	sp, sp, #60	; 0x3c
 e010eec:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}

0e010ef0 <prvAddCurrentTaskToDelayedList>:
 e010ef0:	e3083368 	movw	r3, #33640	; 0x8368
 e010ef4:	e346300a 	movt	r3, #24586	; 0x600a
 e010ef8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e010efc:	e1a06001 	mov	r6, r1
 e010f00:	e5938000 	ldr	r8, [r3]
 e010f04:	e1a05000 	mov	r5, r0
 e010f08:	ebfffa41 	bl	e00f814 <ulPortInterruptLock>
 e010f0c:	e1a04000 	mov	r4, r0
 e010f10:	ebfffa5a 	bl	e00f880 <ulPortGetCoreId>
 e010f14:	e1a03000 	mov	r3, r0
 e010f18:	e1a00004 	mov	r0, r4
 e010f1c:	e30841c4 	movw	r4, #33220	; 0x81c4
 e010f20:	e346400a 	movt	r4, #24586	; 0x600a
 e010f24:	e7947103 	ldr	r7, [r4, r3, lsl #2]
 e010f28:	ebfffa3e 	bl	e00f828 <ulPortInterruptUnLock>
 e010f2c:	e3a03000 	mov	r3, #0
 e010f30:	e5c73172 	strb	r3, [r7, #370]	; 0x172
 e010f34:	ebfffe76 	bl	e010914 <vTaskEnterCritical>
 e010f38:	ebfffa35 	bl	e00f814 <ulPortInterruptLock>
 e010f3c:	e1a07000 	mov	r7, r0
 e010f40:	ebfffa4e 	bl	e00f880 <ulPortGetCoreId>
 e010f44:	e1a03000 	mov	r3, r0
 e010f48:	e1a00007 	mov	r0, r7
 e010f4c:	e7947103 	ldr	r7, [r4, r3, lsl #2]
 e010f50:	ebfffa34 	bl	e00f828 <ulPortInterruptUnLock>
 e010f54:	e5973034 	ldr	r3, [r7, #52]	; 0x34
 e010f58:	e3730003 	cmn	r3, #3
 e010f5c:	0a000049 	beq	e011088 <prvAddCurrentTaskToDelayedList+0x198>
 e010f60:	e2566000 	subs	r6, r6, #0
 e010f64:	13a06001 	movne	r6, #1
 e010f68:	e3750001 	cmn	r5, #1
 e010f6c:	13a06000 	movne	r6, #0
 e010f70:	e3560000 	cmp	r6, #0
 e010f74:	1a000024 	bne	e01100c <prvAddCurrentTaskToDelayedList+0x11c>
 e010f78:	e0985005 	adds	r5, r8, r5
 e010f7c:	23a07001 	movcs	r7, #1
 e010f80:	33a07000 	movcc	r7, #0
 e010f84:	ebfffa22 	bl	e00f814 <ulPortInterruptLock>
 e010f88:	e1a06000 	mov	r6, r0
 e010f8c:	ebfffa3b 	bl	e00f880 <ulPortGetCoreId>
 e010f90:	e1a03000 	mov	r3, r0
 e010f94:	e1a00006 	mov	r0, r6
 e010f98:	e7946103 	ldr	r6, [r4, r3, lsl #2]
 e010f9c:	ebfffa21 	bl	e00f828 <ulPortInterruptUnLock>
 e010fa0:	e3570000 	cmp	r7, #0
 e010fa4:	e5865004 	str	r5, [r6, #4]
 e010fa8:	0a000023 	beq	e01103c <prvAddCurrentTaskToDelayedList+0x14c>
 e010fac:	e30831d0 	movw	r3, #33232	; 0x81d0
 e010fb0:	e346300a 	movt	r3, #24586	; 0x600a
 e010fb4:	e5936000 	ldr	r6, [r3]
 e010fb8:	ebfffa15 	bl	e00f814 <ulPortInterruptLock>
 e010fbc:	e1a05000 	mov	r5, r0
 e010fc0:	ebfffa2e 	bl	e00f880 <ulPortGetCoreId>
 e010fc4:	e1a03000 	mov	r3, r0
 e010fc8:	e1a00005 	mov	r0, r5
 e010fcc:	e7945103 	ldr	r5, [r4, r3, lsl #2]
 e010fd0:	ebfffa14 	bl	e00f828 <ulPortInterruptUnLock>
 e010fd4:	e2851004 	add	r1, r5, #4
 e010fd8:	e1a00006 	mov	r0, r6
 e010fdc:	eb0003da 	bl	e011f4c <vListInsert>
 e010fe0:	ebfffa0b 	bl	e00f814 <ulPortInterruptLock>
 e010fe4:	e1a05000 	mov	r5, r0
 e010fe8:	ebfffa24 	bl	e00f880 <ulPortGetCoreId>
 e010fec:	e1a03000 	mov	r3, r0
 e010ff0:	e1a00005 	mov	r0, r5
 e010ff4:	e7944103 	ldr	r4, [r4, r3, lsl #2]
 e010ff8:	ebfffa0a 	bl	e00f828 <ulPortInterruptUnLock>
 e010ffc:	e3e03001 	mvn	r3, #1
 e011000:	e5843034 	str	r3, [r4, #52]	; 0x34
 e011004:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 e011008:	eafffe57 	b	e01096c <vTaskExitCritical>
 e01100c:	ebfffa00 	bl	e00f814 <ulPortInterruptLock>
 e011010:	e1a05000 	mov	r5, r0
 e011014:	ebfffa19 	bl	e00f880 <ulPortGetCoreId>
 e011018:	e1a03000 	mov	r3, r0
 e01101c:	e1a00005 	mov	r0, r5
 e011020:	e7945103 	ldr	r5, [r4, r3, lsl #2]
 e011024:	ebfff9ff 	bl	e00f828 <ulPortInterruptUnLock>
 e011028:	e2851004 	add	r1, r5, #4
 e01102c:	e308032c 	movw	r0, #33580	; 0x832c
 e011030:	e346000a 	movt	r0, #24586	; 0x600a
 e011034:	eb0003b9 	bl	e011f20 <vListInsertEnd>
 e011038:	eaffffe8 	b	e010fe0 <prvAddCurrentTaskToDelayedList+0xf0>
 e01103c:	e30831cc 	movw	r3, #33228	; 0x81cc
 e011040:	e346300a 	movt	r3, #24586	; 0x600a
 e011044:	e5937000 	ldr	r7, [r3]
 e011048:	ebfff9f1 	bl	e00f814 <ulPortInterruptLock>
 e01104c:	e1a06000 	mov	r6, r0
 e011050:	ebfffa0a 	bl	e00f880 <ulPortGetCoreId>
 e011054:	e1a03000 	mov	r3, r0
 e011058:	e1a00006 	mov	r0, r6
 e01105c:	e7946103 	ldr	r6, [r4, r3, lsl #2]
 e011060:	ebfff9f0 	bl	e00f828 <ulPortInterruptUnLock>
 e011064:	e2861004 	add	r1, r6, #4
 e011068:	e1a00007 	mov	r0, r7
 e01106c:	eb0003b6 	bl	e011f4c <vListInsert>
 e011070:	e3083308 	movw	r3, #33544	; 0x8308
 e011074:	e346300a 	movt	r3, #24586	; 0x600a
 e011078:	e5932000 	ldr	r2, [r3]
 e01107c:	e1520005 	cmp	r2, r5
 e011080:	85835000 	strhi	r5, [r3]
 e011084:	eaffffd5 	b	e010fe0 <prvAddCurrentTaskToDelayedList+0xf0>
 e011088:	ebfff9e1 	bl	e00f814 <ulPortInterruptLock>
 e01108c:	e1a05000 	mov	r5, r0
 e011090:	ebfff9fa 	bl	e00f880 <ulPortGetCoreId>
 e011094:	e1a03000 	mov	r3, r0
 e011098:	e1a00005 	mov	r0, r5
 e01109c:	e7945103 	ldr	r5, [r4, r3, lsl #2]
 e0110a0:	ebfff9e0 	bl	e00f828 <ulPortInterruptUnLock>
 e0110a4:	e5953028 	ldr	r3, [r5, #40]	; 0x28
 e0110a8:	e3530000 	cmp	r3, #0
 e0110ac:	0affffd4 	beq	e011004 <prvAddCurrentTaskToDelayedList+0x114>
 e0110b0:	ebfff9d7 	bl	e00f814 <ulPortInterruptLock>
 e0110b4:	e1a05000 	mov	r5, r0
 e0110b8:	ebfff9f0 	bl	e00f880 <ulPortGetCoreId>
 e0110bc:	e1a03000 	mov	r3, r0
 e0110c0:	e1a00005 	mov	r0, r5
 e0110c4:	e7944103 	ldr	r4, [r4, r3, lsl #2]
 e0110c8:	ebfff9d6 	bl	e00f828 <ulPortInterruptUnLock>
 e0110cc:	e2840018 	add	r0, r4, #24
 e0110d0:	eb0003b3 	bl	e011fa4 <uxListRemove>
 e0110d4:	eaffffca 	b	e011004 <prvAddCurrentTaskToDelayedList+0x114>

0e0110d8 <xTaskIncrementTick>:
 e0110d8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e0110dc:	e24dd014 	sub	sp, sp, #20
 e0110e0:	ebfff9e6 	bl	e00f880 <ulPortGetCoreId>
 e0110e4:	e58d0000 	str	r0, [sp]
 e0110e8:	ebfffe09 	bl	e010914 <vTaskEnterCritical>
 e0110ec:	e30832cc 	movw	r3, #33484	; 0x82cc
 e0110f0:	e346300a 	movt	r3, #24586	; 0x600a
 e0110f4:	e5933000 	ldr	r3, [r3]
 e0110f8:	e3530000 	cmp	r3, #0
 e0110fc:	1a000038 	bne	e0111e4 <xTaskIncrementTick+0x10c>
 e011100:	e3083368 	movw	r3, #33640	; 0x8368
 e011104:	e346300a 	movt	r3, #24586	; 0x600a
 e011108:	e5937000 	ldr	r7, [r3]
 e01110c:	e2877001 	add	r7, r7, #1
 e011110:	e3570000 	cmp	r7, #0
 e011114:	e5837000 	str	r7, [r3]
 e011118:	0a00008a 	beq	e011348 <xTaskIncrementTick+0x270>
 e01111c:	e3083308 	movw	r3, #33544	; 0x8308
 e011120:	e346300a 	movt	r3, #24586	; 0x600a
 e011124:	e58d3008 	str	r3, [sp, #8]
 e011128:	e59d3008 	ldr	r3, [sp, #8]
 e01112c:	e5933000 	ldr	r3, [r3]
 e011130:	e1530007 	cmp	r3, r7
 e011134:	9a000034 	bls	e01120c <xTaskIncrementTick+0x134>
 e011138:	e30851c4 	movw	r5, #33220	; 0x81c4
 e01113c:	e346500a 	movt	r5, #24586	; 0x600a
 e011140:	e30891d8 	movw	r9, #33240	; 0x81d8
 e011144:	e346900a 	movt	r9, #24586	; 0x600a
 e011148:	e308636c 	movw	r6, #33644	; 0x836c
 e01114c:	e346600a 	movt	r6, #24586	; 0x600a
 e011150:	e5953000 	ldr	r3, [r5]
 e011154:	e3a02014 	mov	r2, #20
 e011158:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
 e01115c:	e0030392 	mul	r3, r2, r3
 e011160:	e3a02014 	mov	r2, #20
 e011164:	e7993003 	ldr	r3, [r9, r3]
 e011168:	e3530000 	cmp	r3, #0
 e01116c:	13a03001 	movne	r3, #1
 e011170:	15863000 	strne	r3, [r6]
 e011174:	e5953004 	ldr	r3, [r5, #4]
 e011178:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
 e01117c:	e0030392 	mul	r3, r2, r3
 e011180:	e7993003 	ldr	r3, [r9, r3]
 e011184:	e3530000 	cmp	r3, #0
 e011188:	13a03001 	movne	r3, #1
 e01118c:	15863004 	strne	r3, [r6, #4]
 e011190:	e5963000 	ldr	r3, [r6]
 e011194:	e3530000 	cmp	r3, #0
 e011198:	0a000004 	beq	e0111b0 <xTaskIncrementTick+0xd8>
 e01119c:	e59d3000 	ldr	r3, [sp]
 e0111a0:	e3530000 	cmp	r3, #0
 e0111a4:	0a00007f 	beq	e0113a8 <xTaskIncrementTick+0x2d0>
 e0111a8:	e3a00000 	mov	r0, #0
 e0111ac:	ebfffac1 	bl	e00fcb8 <prvYieldCore>
 e0111b0:	e5964004 	ldr	r4, [r6, #4]
 e0111b4:	e3540000 	cmp	r4, #0
 e0111b8:	0a00000f 	beq	e0111fc <xTaskIncrementTick+0x124>
 e0111bc:	e59d3000 	ldr	r3, [sp]
 e0111c0:	e3530001 	cmp	r3, #1
 e0111c4:	13a04000 	movne	r4, #0
 e0111c8:	0a000079 	beq	e0113b4 <xTaskIncrementTick+0x2dc>
 e0111cc:	e3a00001 	mov	r0, #1
 e0111d0:	ebfffab8 	bl	e00fcb8 <prvYieldCore>
 e0111d4:	ebfffde4 	bl	e01096c <vTaskExitCritical>
 e0111d8:	e1a00004 	mov	r0, r4
 e0111dc:	e28dd014 	add	sp, sp, #20
 e0111e0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e0111e4:	e3083310 	movw	r3, #33552	; 0x8310
 e0111e8:	e346300a 	movt	r3, #24586	; 0x600a
 e0111ec:	e3a04000 	mov	r4, #0
 e0111f0:	e5932000 	ldr	r2, [r3]
 e0111f4:	e2822001 	add	r2, r2, #1
 e0111f8:	e5832000 	str	r2, [r3]
 e0111fc:	ebfffdda 	bl	e01096c <vTaskExitCritical>
 e011200:	e1a00004 	mov	r0, r4
 e011204:	e28dd014 	add	sp, sp, #20
 e011208:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e01120c:	e30841cc 	movw	r4, #33228	; 0x81cc
 e011210:	e346400a 	movt	r4, #24586	; 0x600a
 e011214:	e30851c4 	movw	r5, #33220	; 0x81c4
 e011218:	e346500a 	movt	r5, #24586	; 0x600a
 e01121c:	e30891d8 	movw	r9, #33240	; 0x81d8
 e011220:	e346900a 	movt	r9, #24586	; 0x600a
 e011224:	e308636c 	movw	r6, #33644	; 0x836c
 e011228:	e346600a 	movt	r6, #24586	; 0x600a
 e01122c:	e308a2d4 	movw	sl, #33492	; 0x82d4
 e011230:	e346a00a 	movt	sl, #24586	; 0x600a
 e011234:	e30831d4 	movw	r3, #33236	; 0x81d4
 e011238:	e346300a 	movt	r3, #24586	; 0x600a
 e01123c:	e58d9004 	str	r9, [sp, #4]
 e011240:	e58d300c 	str	r3, [sp, #12]
 e011244:	ea000005 	b	e011260 <xTaskIncrementTick+0x188>
 e011248:	e59d2000 	ldr	r2, [sp]
 e01124c:	e7962102 	ldr	r2, [r6, r2, lsl #2]
 e011250:	e3520000 	cmp	r2, #0
 e011254:	1a000024 	bne	e0112ec <xTaskIncrementTick+0x214>
 e011258:	e3a03001 	mov	r3, #1
 e01125c:	e7863102 	str	r3, [r6, r2, lsl #2]
 e011260:	e5943000 	ldr	r3, [r4]
 e011264:	e5933000 	ldr	r3, [r3]
 e011268:	e3530000 	cmp	r3, #0
 e01126c:	0a00002b 	beq	e011320 <xTaskIncrementTick+0x248>
 e011270:	e3a08014 	mov	r8, #20
 e011274:	e5943000 	ldr	r3, [r4]
 e011278:	e593300c 	ldr	r3, [r3, #12]
 e01127c:	e593900c 	ldr	r9, [r3, #12]
 e011280:	e5992004 	ldr	r2, [r9, #4]
 e011284:	e1570002 	cmp	r7, r2
 e011288:	3a00004e 	bcc	e0113c8 <xTaskIncrementTick+0x2f0>
 e01128c:	e289b004 	add	fp, r9, #4
 e011290:	e1a0000b 	mov	r0, fp
 e011294:	eb000342 	bl	e011fa4 <uxListRemove>
 e011298:	e5993028 	ldr	r3, [r9, #40]	; 0x28
 e01129c:	e3530000 	cmp	r3, #0
 e0112a0:	0a000001 	beq	e0112ac <xTaskIncrementTick+0x1d4>
 e0112a4:	e2890018 	add	r0, r9, #24
 e0112a8:	eb00033d 	bl	e011fa4 <uxListRemove>
 e0112ac:	e5993034 	ldr	r3, [r9, #52]	; 0x34
 e0112b0:	e3730002 	cmn	r3, #2
 e0112b4:	0a00001e 	beq	e011334 <xTaskIncrementTick+0x25c>
 e0112b8:	e599002c 	ldr	r0, [r9, #44]	; 0x2c
 e0112bc:	e59a3000 	ldr	r3, [sl]
 e0112c0:	e1a0100b 	mov	r1, fp
 e0112c4:	e1500003 	cmp	r0, r3
 e0112c8:	e59d3004 	ldr	r3, [sp, #4]
 e0112cc:	858a0000 	strhi	r0, [sl]
 e0112d0:	e0203098 	mla	r0, r8, r0, r3
 e0112d4:	eb000311 	bl	e011f20 <vListInsertEnd>
 e0112d8:	e5952000 	ldr	r2, [r5]
 e0112dc:	e599302c 	ldr	r3, [r9, #44]	; 0x2c
 e0112e0:	e592202c 	ldr	r2, [r2, #44]	; 0x2c
 e0112e4:	e1530002 	cmp	r3, r2
 e0112e8:	2affffd6 	bcs	e011248 <xTaskIncrementTick+0x170>
 e0112ec:	e5952004 	ldr	r2, [r5, #4]
 e0112f0:	e592202c 	ldr	r2, [r2, #44]	; 0x2c
 e0112f4:	e1530002 	cmp	r3, r2
 e0112f8:	3a000004 	bcc	e011310 <xTaskIncrementTick+0x238>
 e0112fc:	e59d3000 	ldr	r3, [sp]
 e011300:	e7963103 	ldr	r3, [r6, r3, lsl #2]
 e011304:	e3530000 	cmp	r3, #0
 e011308:	03a02001 	moveq	r2, #1
 e01130c:	0affffd1 	beq	e011258 <xTaskIncrementTick+0x180>
 e011310:	e5943000 	ldr	r3, [r4]
 e011314:	e5933000 	ldr	r3, [r3]
 e011318:	e3530000 	cmp	r3, #0
 e01131c:	1affffd4 	bne	e011274 <xTaskIncrementTick+0x19c>
 e011320:	e59d2008 	ldr	r2, [sp, #8]
 e011324:	e3e03000 	mvn	r3, #0
 e011328:	e59d9004 	ldr	r9, [sp, #4]
 e01132c:	e5823000 	str	r3, [r2]
 e011330:	eaffff86 	b	e011150 <xTaskIncrementTick+0x78>
 e011334:	e59d300c 	ldr	r3, [sp, #12]
 e011338:	e1a0100b 	mov	r1, fp
 e01133c:	e5930000 	ldr	r0, [r3]
 e011340:	eb0002f6 	bl	e011f20 <vListInsertEnd>
 e011344:	eaffffe3 	b	e0112d8 <xTaskIncrementTick+0x200>
 e011348:	e30841cc 	movw	r4, #33228	; 0x81cc
 e01134c:	e346400a 	movt	r4, #24586	; 0x600a
 e011350:	e30821d0 	movw	r2, #33232	; 0x81d0
 e011354:	e346200a 	movt	r2, #24586	; 0x600a
 e011358:	e5941000 	ldr	r1, [r4]
 e01135c:	e308330c 	movw	r3, #33548	; 0x830c
 e011360:	e346300a 	movt	r3, #24586	; 0x600a
 e011364:	e5920000 	ldr	r0, [r2]
 e011368:	e5840000 	str	r0, [r4]
 e01136c:	e5821000 	str	r1, [r2]
 e011370:	e5932000 	ldr	r2, [r3]
 e011374:	e2822001 	add	r2, r2, #1
 e011378:	e5832000 	str	r2, [r3]
 e01137c:	e5943000 	ldr	r3, [r4]
 e011380:	e5933000 	ldr	r3, [r3]
 e011384:	e3530000 	cmp	r3, #0
 e011388:	1a000012 	bne	e0113d8 <xTaskIncrementTick+0x300>
 e01138c:	e3083308 	movw	r3, #33544	; 0x8308
 e011390:	e346300a 	movt	r3, #24586	; 0x600a
 e011394:	e1a02003 	mov	r2, r3
 e011398:	e58d3008 	str	r3, [sp, #8]
 e01139c:	e3e03000 	mvn	r3, #0
 e0113a0:	e5823000 	str	r3, [r2]
 e0113a4:	eaffff5f 	b	e011128 <xTaskIncrementTick+0x50>
 e0113a8:	e5963004 	ldr	r3, [r6, #4]
 e0113ac:	e3530000 	cmp	r3, #0
 e0113b0:	1a000011 	bne	e0113fc <xTaskIncrementTick+0x324>
 e0113b4:	e3a04001 	mov	r4, #1
 e0113b8:	ebfffd6b 	bl	e01096c <vTaskExitCritical>
 e0113bc:	e1a00004 	mov	r0, r4
 e0113c0:	e28dd014 	add	sp, sp, #20
 e0113c4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e0113c8:	e59d3008 	ldr	r3, [sp, #8]
 e0113cc:	e59d9004 	ldr	r9, [sp, #4]
 e0113d0:	e5832000 	str	r2, [r3]
 e0113d4:	eaffff5d 	b	e011150 <xTaskIncrementTick+0x78>
 e0113d8:	e5943000 	ldr	r3, [r4]
 e0113dc:	e3082308 	movw	r2, #33544	; 0x8308
 e0113e0:	e346200a 	movt	r2, #24586	; 0x600a
 e0113e4:	e593300c 	ldr	r3, [r3, #12]
 e0113e8:	e58d2008 	str	r2, [sp, #8]
 e0113ec:	e593300c 	ldr	r3, [r3, #12]
 e0113f0:	e5933004 	ldr	r3, [r3, #4]
 e0113f4:	e5823000 	str	r3, [r2]
 e0113f8:	eaffff4a 	b	e011128 <xTaskIncrementTick+0x50>
 e0113fc:	e3a04001 	mov	r4, #1
 e011400:	eaffff71 	b	e0111cc <xTaskIncrementTick+0xf4>

0e011404 <xTaskResumeAll.part.0>:
 e011404:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e011408:	e24dd00c 	sub	sp, sp, #12
 e01140c:	ebfffd40 	bl	e010914 <vTaskEnterCritical>
 e011410:	ebfff91a 	bl	e00f880 <ulPortGetCoreId>
 e011414:	e30832cc 	movw	r3, #33484	; 0x82cc
 e011418:	e346300a 	movt	r3, #24586	; 0x600a
 e01141c:	e5932000 	ldr	r2, [r3]
 e011420:	e2422001 	sub	r2, r2, #1
 e011424:	e5832000 	str	r2, [r3]
 e011428:	e5933000 	ldr	r3, [r3]
 e01142c:	e3530000 	cmp	r3, #0
 e011430:	13a04000 	movne	r4, #0
 e011434:	1a000057 	bne	e011598 <xTaskResumeAll.part.0+0x194>
 e011438:	e30832c4 	movw	r3, #33476	; 0x82c4
 e01143c:	e346300a 	movt	r3, #24586	; 0x600a
 e011440:	e5934000 	ldr	r4, [r3]
 e011444:	e3540000 	cmp	r4, #0
 e011448:	0a000052 	beq	e011598 <xTaskResumeAll.part.0+0x194>
 e01144c:	e3086314 	movw	r6, #33556	; 0x8314
 e011450:	e346600a 	movt	r6, #24586	; 0x600a
 e011454:	e1a05000 	mov	r5, r0
 e011458:	e5963000 	ldr	r3, [r6]
 e01145c:	e3530000 	cmp	r3, #0
 e011460:	0308936c 	movweq	r9, #33644	; 0x836c
 e011464:	0346900a 	movteq	r9, #24586	; 0x600a
 e011468:	0a00003b 	beq	e01155c <xTaskResumeAll.part.0+0x158>
 e01146c:	e30881c4 	movw	r8, #33220	; 0x81c4
 e011470:	e346800a 	movt	r8, #24586	; 0x600a
 e011474:	e308936c 	movw	r9, #33644	; 0x836c
 e011478:	e346900a 	movt	r9, #24586	; 0x600a
 e01147c:	e30872d4 	movw	r7, #33492	; 0x82d4
 e011480:	e346700a 	movt	r7, #24586	; 0x600a
 e011484:	e308a1d8 	movw	sl, #33240	; 0x81d8
 e011488:	e346a00a 	movt	sl, #24586	; 0x600a
 e01148c:	e30831d4 	movw	r3, #33236	; 0x81d4
 e011490:	e346300a 	movt	r3, #24586	; 0x600a
 e011494:	e58d3004 	str	r3, [sp, #4]
 e011498:	ea00000e 	b	e0114d8 <xTaskResumeAll.part.0+0xd4>
 e01149c:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
 e0114a0:	e5972000 	ldr	r2, [r7]
 e0114a4:	e1530002 	cmp	r3, r2
 e0114a8:	e020a390 	mla	r0, r0, r3, sl
 e0114ac:	85873000 	strhi	r3, [r7]
 e0114b0:	eb00029a 	bl	e011f20 <vListInsertEnd>
 e0114b4:	e7983105 	ldr	r3, [r8, r5, lsl #2]
 e0114b8:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
 e0114bc:	e3a01001 	mov	r1, #1
 e0114c0:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
 e0114c4:	e1520003 	cmp	r2, r3
 e0114c8:	27891105 	strcs	r1, [r9, r5, lsl #2]
 e0114cc:	e5963000 	ldr	r3, [r6]
 e0114d0:	e3530000 	cmp	r3, #0
 e0114d4:	0a00000f 	beq	e011518 <xTaskResumeAll.part.0+0x114>
 e0114d8:	e596300c 	ldr	r3, [r6, #12]
 e0114dc:	e593400c 	ldr	r4, [r3, #12]
 e0114e0:	e284b004 	add	fp, r4, #4
 e0114e4:	e2840018 	add	r0, r4, #24
 e0114e8:	eb0002ad 	bl	e011fa4 <uxListRemove>
 e0114ec:	e1a0000b 	mov	r0, fp
 e0114f0:	eb0002ab 	bl	e011fa4 <uxListRemove>
 e0114f4:	e5943034 	ldr	r3, [r4, #52]	; 0x34
 e0114f8:	e3a00014 	mov	r0, #20
 e0114fc:	e1a0100b 	mov	r1, fp
 e011500:	e3730002 	cmn	r3, #2
 e011504:	1affffe4 	bne	e01149c <xTaskResumeAll.part.0+0x98>
 e011508:	e59d3004 	ldr	r3, [sp, #4]
 e01150c:	e5930000 	ldr	r0, [r3]
 e011510:	eb000282 	bl	e011f20 <vListInsertEnd>
 e011514:	eaffffe6 	b	e0114b4 <xTaskResumeAll.part.0+0xb0>
 e011518:	e3540000 	cmp	r4, #0
 e01151c:	0a00000e 	beq	e01155c <xTaskResumeAll.part.0+0x158>
 e011520:	e30831cc 	movw	r3, #33228	; 0x81cc
 e011524:	e346300a 	movt	r3, #24586	; 0x600a
 e011528:	e5932000 	ldr	r2, [r3]
 e01152c:	e5922000 	ldr	r2, [r2]
 e011530:	e3520000 	cmp	r2, #0
 e011534:	03083308 	movweq	r3, #33544	; 0x8308
 e011538:	15932000 	ldrne	r2, [r3]
 e01153c:	0346300a 	movteq	r3, #24586	; 0x600a
 e011540:	13083308 	movwne	r3, #33544	; 0x8308
 e011544:	1592200c 	ldrne	r2, [r2, #12]
 e011548:	1346300a 	movtne	r3, #24586	; 0x600a
 e01154c:	03e02000 	mvneq	r2, #0
 e011550:	1592200c 	ldrne	r2, [r2, #12]
 e011554:	15922004 	ldrne	r2, [r2, #4]
 e011558:	e5832000 	str	r2, [r3]
 e01155c:	e3086310 	movw	r6, #33552	; 0x8310
 e011560:	e346600a 	movt	r6, #24586	; 0x600a
 e011564:	e5964000 	ldr	r4, [r6]
 e011568:	e3540000 	cmp	r4, #0
 e01156c:	0a000006 	beq	e01158c <xTaskResumeAll.part.0+0x188>
 e011570:	e3a07001 	mov	r7, #1
 e011574:	ebfffed7 	bl	e0110d8 <xTaskIncrementTick>
 e011578:	e3500000 	cmp	r0, #0
 e01157c:	17897105 	strne	r7, [r9, r5, lsl #2]
 e011580:	e2544001 	subs	r4, r4, #1
 e011584:	1afffffa 	bne	e011574 <xTaskResumeAll.part.0+0x170>
 e011588:	e5864000 	str	r4, [r6]
 e01158c:	e7994105 	ldr	r4, [r9, r5, lsl #2]
 e011590:	e2544000 	subs	r4, r4, #0
 e011594:	13a04001 	movne	r4, #1
 e011598:	ebfffcf3 	bl	e01096c <vTaskExitCritical>
 e01159c:	e1a00004 	mov	r0, r4
 e0115a0:	e28dd00c 	add	sp, sp, #12
 e0115a4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

0e0115a8 <xTaskResumeAll>:
 e0115a8:	e3083328 	movw	r3, #33576	; 0x8328
 e0115ac:	e346300a 	movt	r3, #24586	; 0x600a
 e0115b0:	e5930000 	ldr	r0, [r3]
 e0115b4:	e3500000 	cmp	r0, #0
 e0115b8:	012fff1e 	bxeq	lr
 e0115bc:	eaffff90 	b	e011404 <xTaskResumeAll.part.0>

0e0115c0 <vTaskPlaceOnEventList>:
 e0115c0:	e92d4070 	push	{r4, r5, r6, lr}
 e0115c4:	e1a04001 	mov	r4, r1
 e0115c8:	e1a05000 	mov	r5, r0
 e0115cc:	ebfffcd0 	bl	e010914 <vTaskEnterCritical>
 e0115d0:	ebfff88f 	bl	e00f814 <ulPortInterruptLock>
 e0115d4:	e1a06000 	mov	r6, r0
 e0115d8:	ebfff8a8 	bl	e00f880 <ulPortGetCoreId>
 e0115dc:	e30831c4 	movw	r3, #33220	; 0x81c4
 e0115e0:	e346300a 	movt	r3, #24586	; 0x600a
 e0115e4:	e1a02000 	mov	r2, r0
 e0115e8:	e1a00006 	mov	r0, r6
 e0115ec:	e7936102 	ldr	r6, [r3, r2, lsl #2]
 e0115f0:	ebfff88c 	bl	e00f828 <ulPortInterruptUnLock>
 e0115f4:	e2861018 	add	r1, r6, #24
 e0115f8:	e1a00005 	mov	r0, r5
 e0115fc:	eb000252 	bl	e011f4c <vListInsert>
 e011600:	e1a00004 	mov	r0, r4
 e011604:	e3a01001 	mov	r1, #1
 e011608:	ebfffe38 	bl	e010ef0 <prvAddCurrentTaskToDelayedList>
 e01160c:	e8bd4070 	pop	{r4, r5, r6, lr}
 e011610:	eafffcd5 	b	e01096c <vTaskExitCritical>

0e011614 <vTaskPlaceOnEventListRestricted>:
 e011614:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e011618:	e1a04002 	mov	r4, r2
 e01161c:	e1a05001 	mov	r5, r1
 e011620:	e1a06000 	mov	r6, r0
 e011624:	ebfffcba 	bl	e010914 <vTaskEnterCritical>
 e011628:	ebfff879 	bl	e00f814 <ulPortInterruptLock>
 e01162c:	e1a07000 	mov	r7, r0
 e011630:	ebfff892 	bl	e00f880 <ulPortGetCoreId>
 e011634:	e30831c4 	movw	r3, #33220	; 0x81c4
 e011638:	e346300a 	movt	r3, #24586	; 0x600a
 e01163c:	e1a02000 	mov	r2, r0
 e011640:	e1a00007 	mov	r0, r7
 e011644:	e7937102 	ldr	r7, [r3, r2, lsl #2]
 e011648:	ebfff876 	bl	e00f828 <ulPortInterruptUnLock>
 e01164c:	e1a00006 	mov	r0, r6
 e011650:	e2871018 	add	r1, r7, #24
 e011654:	eb000231 	bl	e011f20 <vListInsertEnd>
 e011658:	e3540000 	cmp	r4, #0
 e01165c:	e1a01004 	mov	r1, r4
 e011660:	01a00005 	moveq	r0, r5
 e011664:	13e00000 	mvnne	r0, #0
 e011668:	ebfffe20 	bl	e010ef0 <prvAddCurrentTaskToDelayedList>
 e01166c:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 e011670:	eafffcbd 	b	e01096c <vTaskExitCritical>

0e011674 <vTaskPlaceRemoveFromEventList>:
 e011674:	e92d4070 	push	{r4, r5, r6, lr}
 e011678:	ebfffca5 	bl	e010914 <vTaskEnterCritical>
 e01167c:	e30841c4 	movw	r4, #33220	; 0x81c4
 e011680:	e346400a 	movt	r4, #24586	; 0x600a
 e011684:	ebfff862 	bl	e00f814 <ulPortInterruptLock>
 e011688:	e1a05000 	mov	r5, r0
 e01168c:	ebfff87b 	bl	e00f880 <ulPortGetCoreId>
 e011690:	e1a03000 	mov	r3, r0
 e011694:	e1a00005 	mov	r0, r5
 e011698:	e7945103 	ldr	r5, [r4, r3, lsl #2]
 e01169c:	ebfff861 	bl	e00f828 <ulPortInterruptUnLock>
 e0116a0:	e2850018 	add	r0, r5, #24
 e0116a4:	eb00023e 	bl	e011fa4 <uxListRemove>
 e0116a8:	ebfff859 	bl	e00f814 <ulPortInterruptLock>
 e0116ac:	e1a05000 	mov	r5, r0
 e0116b0:	ebfff872 	bl	e00f880 <ulPortGetCoreId>
 e0116b4:	e1a03000 	mov	r3, r0
 e0116b8:	e1a00005 	mov	r0, r5
 e0116bc:	e7945103 	ldr	r5, [r4, r3, lsl #2]
 e0116c0:	ebfff858 	bl	e00f828 <ulPortInterruptUnLock>
 e0116c4:	e2850004 	add	r0, r5, #4
 e0116c8:	eb000235 	bl	e011fa4 <uxListRemove>
 e0116cc:	ebfff86b 	bl	e00f880 <ulPortGetCoreId>
 e0116d0:	e1a05000 	mov	r5, r0
 e0116d4:	ebfff84e 	bl	e00f814 <ulPortInterruptLock>
 e0116d8:	e1a06000 	mov	r6, r0
 e0116dc:	ebfff867 	bl	e00f880 <ulPortGetCoreId>
 e0116e0:	e1a03000 	mov	r3, r0
 e0116e4:	e1a00006 	mov	r0, r6
 e0116e8:	e7944103 	ldr	r4, [r4, r3, lsl #2]
 e0116ec:	ebfff84d 	bl	e00f828 <ulPortInterruptUnLock>
 e0116f0:	e5845034 	str	r5, [r4, #52]	; 0x34
 e0116f4:	e8bd4070 	pop	{r4, r5, r6, lr}
 e0116f8:	eafffc9b 	b	e01096c <vTaskExitCritical>

0e0116fc <xTaskRemoveFromEventList>:
 e0116fc:	e92d4070 	push	{r4, r5, r6, lr}
 e011700:	e1a04000 	mov	r4, r0
 e011704:	ebfffc82 	bl	e010914 <vTaskEnterCritical>
 e011708:	e594300c 	ldr	r3, [r4, #12]
 e01170c:	e593400c 	ldr	r4, [r3, #12]
 e011710:	e2845018 	add	r5, r4, #24
 e011714:	e1a00005 	mov	r0, r5
 e011718:	eb000221 	bl	e011fa4 <uxListRemove>
 e01171c:	e30832cc 	movw	r3, #33484	; 0x82cc
 e011720:	e346300a 	movt	r3, #24586	; 0x600a
 e011724:	e5933000 	ldr	r3, [r3]
 e011728:	e3530000 	cmp	r3, #0
 e01172c:	1a000021 	bne	e0117b8 <xTaskRemoveFromEventList+0xbc>
 e011730:	e2845004 	add	r5, r4, #4
 e011734:	e1a00005 	mov	r0, r5
 e011738:	eb000219 	bl	e011fa4 <uxListRemove>
 e01173c:	e5943034 	ldr	r3, [r4, #52]	; 0x34
 e011740:	e3730002 	cmn	r3, #2
 e011744:	0a00002b 	beq	e0117f8 <xTaskRemoveFromEventList+0xfc>
 e011748:	e30832d4 	movw	r3, #33492	; 0x82d4
 e01174c:	e346300a 	movt	r3, #24586	; 0x600a
 e011750:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
 e011754:	e3a00014 	mov	r0, #20
 e011758:	e5931000 	ldr	r1, [r3]
 e01175c:	e1520001 	cmp	r2, r1
 e011760:	85832000 	strhi	r2, [r3]
 e011764:	e30831d8 	movw	r3, #33240	; 0x81d8
 e011768:	e346300a 	movt	r3, #24586	; 0x600a
 e01176c:	e1a01005 	mov	r1, r5
 e011770:	e0203290 	mla	r0, r0, r2, r3
 e011774:	eb0001e9 	bl	e011f20 <vListInsertEnd>
 e011778:	e30831cc 	movw	r3, #33228	; 0x81cc
 e01177c:	e346300a 	movt	r3, #24586	; 0x600a
 e011780:	e5932000 	ldr	r2, [r3]
 e011784:	e5922000 	ldr	r2, [r2]
 e011788:	e3520000 	cmp	r2, #0
 e01178c:	03083308 	movweq	r3, #33544	; 0x8308
 e011790:	15932000 	ldrne	r2, [r3]
 e011794:	0346300a 	movteq	r3, #24586	; 0x600a
 e011798:	13083308 	movwne	r3, #33544	; 0x8308
 e01179c:	1592200c 	ldrne	r2, [r2, #12]
 e0117a0:	1346300a 	movtne	r3, #24586	; 0x600a
 e0117a4:	03e02000 	mvneq	r2, #0
 e0117a8:	1592200c 	ldrne	r2, [r2, #12]
 e0117ac:	15922004 	ldrne	r2, [r2, #4]
 e0117b0:	e5832000 	str	r2, [r3]
 e0117b4:	ea000003 	b	e0117c8 <xTaskRemoveFromEventList+0xcc>
 e0117b8:	e3080314 	movw	r0, #33556	; 0x8314
 e0117bc:	e346000a 	movt	r0, #24586	; 0x600a
 e0117c0:	e1a01005 	mov	r1, r5
 e0117c4:	eb0001d5 	bl	e011f20 <vListInsertEnd>
 e0117c8:	e3a02000 	mov	r2, #0
 e0117cc:	e3a01001 	mov	r1, #1
 e0117d0:	e1a00004 	mov	r0, r4
 e0117d4:	ebfff9a0 	bl	e00fe5c <prvYieldForTask.isra.0>
 e0117d8:	ebfff828 	bl	e00f880 <ulPortGetCoreId>
 e0117dc:	e308336c 	movw	r3, #33644	; 0x836c
 e0117e0:	e346300a 	movt	r3, #24586	; 0x600a
 e0117e4:	e7934100 	ldr	r4, [r3, r0, lsl #2]
 e0117e8:	ebfffc5f 	bl	e01096c <vTaskExitCritical>
 e0117ec:	e2540000 	subs	r0, r4, #0
 e0117f0:	13a00001 	movne	r0, #1
 e0117f4:	e8bd8070 	pop	{r4, r5, r6, pc}
 e0117f8:	e30831d4 	movw	r3, #33236	; 0x81d4
 e0117fc:	e346300a 	movt	r3, #24586	; 0x600a
 e011800:	e1a01005 	mov	r1, r5
 e011804:	e5930000 	ldr	r0, [r3]
 e011808:	eb0001c4 	bl	e011f20 <vListInsertEnd>
 e01180c:	eaffffd9 	b	e011778 <xTaskRemoveFromEventList+0x7c>

0e011810 <xTaskCheckForTimeOut>:
 e011810:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e011814:	e1a04000 	mov	r4, r0
 e011818:	e3086368 	movw	r6, #33640	; 0x8368
 e01181c:	e346600a 	movt	r6, #24586	; 0x600a
 e011820:	e1a07001 	mov	r7, r1
 e011824:	ebfffc3a 	bl	e010914 <vTaskEnterCritical>
 e011828:	e5968000 	ldr	r8, [r6]
 e01182c:	e5949004 	ldr	r9, [r4, #4]
 e011830:	ebfff7f7 	bl	e00f814 <ulPortInterruptLock>
 e011834:	e1a05000 	mov	r5, r0
 e011838:	ebfff810 	bl	e00f880 <ulPortGetCoreId>
 e01183c:	e1a03000 	mov	r3, r0
 e011840:	e1a00005 	mov	r0, r5
 e011844:	e30851c4 	movw	r5, #33220	; 0x81c4
 e011848:	e346500a 	movt	r5, #24586	; 0x600a
 e01184c:	e795a103 	ldr	sl, [r5, r3, lsl #2]
 e011850:	ebfff7f4 	bl	e00f828 <ulPortInterruptUnLock>
 e011854:	e5da0172 	ldrb	r0, [sl, #370]	; 0x172
 e011858:	e3500000 	cmp	r0, #0
 e01185c:	1a00001d 	bne	e0118d8 <xTaskCheckForTimeOut+0xc8>
 e011860:	e5973000 	ldr	r3, [r7]
 e011864:	e3730001 	cmn	r3, #1
 e011868:	01a06000 	moveq	r6, r0
 e01186c:	0a000009 	beq	e011898 <xTaskCheckForTimeOut+0x88>
 e011870:	e308230c 	movw	r2, #33548	; 0x830c
 e011874:	e346200a 	movt	r2, #24586	; 0x600a
 e011878:	e5940000 	ldr	r0, [r4]
 e01187c:	e5921000 	ldr	r1, [r2]
 e011880:	e1500001 	cmp	r0, r1
 e011884:	0a000006 	beq	e0118a4 <xTaskCheckForTimeOut+0x94>
 e011888:	e5941004 	ldr	r1, [r4, #4]
 e01188c:	e1510008 	cmp	r1, r8
 e011890:	93a06001 	movls	r6, #1
 e011894:	8a000002 	bhi	e0118a4 <xTaskCheckForTimeOut+0x94>
 e011898:	ebfffc33 	bl	e01096c <vTaskExitCritical>
 e01189c:	e1a00006 	mov	r0, r6
 e0118a0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e0118a4:	e0481009 	sub	r1, r8, r9
 e0118a8:	e1530001 	cmp	r3, r1
 e0118ac:	80433008 	subhi	r3, r3, r8
 e0118b0:	80839009 	addhi	r9, r3, r9
 e0118b4:	85922000 	ldrhi	r2, [r2]
 e0118b8:	85963000 	ldrhi	r3, [r6]
 e0118bc:	93a03000 	movls	r3, #0
 e0118c0:	85879000 	strhi	r9, [r7]
 e0118c4:	83a06000 	movhi	r6, #0
 e0118c8:	93a06001 	movls	r6, #1
 e0118cc:	81c420f0 	strdhi	r2, [r4]
 e0118d0:	95873000 	strls	r3, [r7]
 e0118d4:	eaffffef 	b	e011898 <xTaskCheckForTimeOut+0x88>
 e0118d8:	ebfff7cd 	bl	e00f814 <ulPortInterruptLock>
 e0118dc:	e1a04000 	mov	r4, r0
 e0118e0:	ebfff7e6 	bl	e00f880 <ulPortGetCoreId>
 e0118e4:	e1a03000 	mov	r3, r0
 e0118e8:	e1a00004 	mov	r0, r4
 e0118ec:	e3a06001 	mov	r6, #1
 e0118f0:	e7954103 	ldr	r4, [r5, r3, lsl #2]
 e0118f4:	ebfff7cb 	bl	e00f828 <ulPortInterruptUnLock>
 e0118f8:	e3a03000 	mov	r3, #0
 e0118fc:	e5c43172 	strb	r3, [r4, #370]	; 0x172
 e011900:	eaffffe4 	b	e011898 <xTaskCheckForTimeOut+0x88>

0e011904 <xTaskPriorityInherit>:
 e011904:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e011908:	e2504000 	subs	r4, r0, #0
 e01190c:	0a00002e 	beq	e0119cc <xTaskPriorityInherit+0xc8>
 e011910:	e594702c 	ldr	r7, [r4, #44]	; 0x2c
 e011914:	e30851c4 	movw	r5, #33220	; 0x81c4
 e011918:	e346500a 	movt	r5, #24586	; 0x600a
 e01191c:	ebfff7bc 	bl	e00f814 <ulPortInterruptLock>
 e011920:	e1a06000 	mov	r6, r0
 e011924:	ebfff7d5 	bl	e00f880 <ulPortGetCoreId>
 e011928:	e1a03000 	mov	r3, r0
 e01192c:	e1a00006 	mov	r0, r6
 e011930:	e7956103 	ldr	r6, [r5, r3, lsl #2]
 e011934:	ebfff7bb 	bl	e00f828 <ulPortInterruptUnLock>
 e011938:	e596302c 	ldr	r3, [r6, #44]	; 0x2c
 e01193c:	e1570003 	cmp	r7, r3
 e011940:	2a000023 	bcs	e0119d4 <xTaskPriorityInherit+0xd0>
 e011944:	e5943018 	ldr	r3, [r4, #24]
 e011948:	e3530000 	cmp	r3, #0
 e01194c:	ba000009 	blt	e011978 <xTaskPriorityInherit+0x74>
 e011950:	ebfff7af 	bl	e00f814 <ulPortInterruptLock>
 e011954:	e1a06000 	mov	r6, r0
 e011958:	ebfff7c8 	bl	e00f880 <ulPortGetCoreId>
 e01195c:	e1a03000 	mov	r3, r0
 e011960:	e1a00006 	mov	r0, r6
 e011964:	e7956103 	ldr	r6, [r5, r3, lsl #2]
 e011968:	ebfff7ae 	bl	e00f828 <ulPortInterruptUnLock>
 e01196c:	e596302c 	ldr	r3, [r6, #44]	; 0x2c
 e011970:	e263300b 	rsb	r3, r3, #11
 e011974:	e5843018 	str	r3, [r4, #24]
 e011978:	ebfffbe5 	bl	e010914 <vTaskEnterCritical>
 e01197c:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
 e011980:	e3a02014 	mov	r2, #20
 e011984:	e30861d8 	movw	r6, #33240	; 0x81d8
 e011988:	e346600a 	movt	r6, #24586	; 0x600a
 e01198c:	e0236392 	mla	r3, r2, r3, r6
 e011990:	e5942014 	ldr	r2, [r4, #20]
 e011994:	e1520003 	cmp	r2, r3
 e011998:	0a00001a 	beq	e011a08 <xTaskPriorityInherit+0x104>
 e01199c:	ebfff79c 	bl	e00f814 <ulPortInterruptLock>
 e0119a0:	e1a06000 	mov	r6, r0
 e0119a4:	ebfff7b5 	bl	e00f880 <ulPortGetCoreId>
 e0119a8:	e1a03000 	mov	r3, r0
 e0119ac:	e1a00006 	mov	r0, r6
 e0119b0:	e7955103 	ldr	r5, [r5, r3, lsl #2]
 e0119b4:	ebfff79b 	bl	e00f828 <ulPortInterruptUnLock>
 e0119b8:	e595302c 	ldr	r3, [r5, #44]	; 0x2c
 e0119bc:	e584302c 	str	r3, [r4, #44]	; 0x2c
 e0119c0:	ebfffbe9 	bl	e01096c <vTaskExitCritical>
 e0119c4:	e3a00001 	mov	r0, #1
 e0119c8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e0119cc:	e1a00004 	mov	r0, r4
 e0119d0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e0119d4:	e5944064 	ldr	r4, [r4, #100]	; 0x64
 e0119d8:	ebfff78d 	bl	e00f814 <ulPortInterruptLock>
 e0119dc:	e1a06000 	mov	r6, r0
 e0119e0:	ebfff7a6 	bl	e00f880 <ulPortGetCoreId>
 e0119e4:	e1a03000 	mov	r3, r0
 e0119e8:	e1a00006 	mov	r0, r6
 e0119ec:	e7955103 	ldr	r5, [r5, r3, lsl #2]
 e0119f0:	ebfff78c 	bl	e00f828 <ulPortInterruptUnLock>
 e0119f4:	e595002c 	ldr	r0, [r5, #44]	; 0x2c
 e0119f8:	e1540000 	cmp	r4, r0
 e0119fc:	23a00000 	movcs	r0, #0
 e011a00:	33a00001 	movcc	r0, #1
 e011a04:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e011a08:	e2848004 	add	r8, r4, #4
 e011a0c:	e1a00008 	mov	r0, r8
 e011a10:	eb000163 	bl	e011fa4 <uxListRemove>
 e011a14:	ebfff77e 	bl	e00f814 <ulPortInterruptLock>
 e011a18:	e1a07000 	mov	r7, r0
 e011a1c:	ebfff797 	bl	e00f880 <ulPortGetCoreId>
 e011a20:	e7955100 	ldr	r5, [r5, r0, lsl #2]
 e011a24:	e1a00007 	mov	r0, r7
 e011a28:	ebfff77e 	bl	e00f828 <ulPortInterruptUnLock>
 e011a2c:	e5942034 	ldr	r2, [r4, #52]	; 0x34
 e011a30:	e595302c 	ldr	r3, [r5, #44]	; 0x2c
 e011a34:	e3720002 	cmn	r2, #2
 e011a38:	e584302c 	str	r3, [r4, #44]	; 0x2c
 e011a3c:	0a000009 	beq	e011a68 <xTaskPriorityInherit+0x164>
 e011a40:	e30822d4 	movw	r2, #33492	; 0x82d4
 e011a44:	e346200a 	movt	r2, #24586	; 0x600a
 e011a48:	e3a00014 	mov	r0, #20
 e011a4c:	e5921000 	ldr	r1, [r2]
 e011a50:	e0206390 	mla	r0, r0, r3, r6
 e011a54:	e1530001 	cmp	r3, r1
 e011a58:	e1a01008 	mov	r1, r8
 e011a5c:	85823000 	strhi	r3, [r2]
 e011a60:	eb00012e 	bl	e011f20 <vListInsertEnd>
 e011a64:	eaffffd5 	b	e0119c0 <xTaskPriorityInherit+0xbc>
 e011a68:	e30831d4 	movw	r3, #33236	; 0x81d4
 e011a6c:	e346300a 	movt	r3, #24586	; 0x600a
 e011a70:	e1a01008 	mov	r1, r8
 e011a74:	e5930000 	ldr	r0, [r3]
 e011a78:	eb000128 	bl	e011f20 <vListInsertEnd>
 e011a7c:	eaffffcf 	b	e0119c0 <xTaskPriorityInherit+0xbc>

0e011a80 <xTaskPriorityDisinherit>:
 e011a80:	e92d4070 	push	{r4, r5, r6, lr}
 e011a84:	e2504000 	subs	r4, r0, #0
 e011a88:	0a000006 	beq	e011aa8 <xTaskPriorityDisinherit+0x28>
 e011a8c:	e5943068 	ldr	r3, [r4, #104]	; 0x68
 e011a90:	e594102c 	ldr	r1, [r4, #44]	; 0x2c
 e011a94:	e5942064 	ldr	r2, [r4, #100]	; 0x64
 e011a98:	e2433001 	sub	r3, r3, #1
 e011a9c:	e1510002 	cmp	r1, r2
 e011aa0:	e5843068 	str	r3, [r4, #104]	; 0x68
 e011aa4:	1a000002 	bne	e011ab4 <xTaskPriorityDisinherit+0x34>
 e011aa8:	e3a05000 	mov	r5, #0
 e011aac:	e1a00005 	mov	r0, r5
 e011ab0:	e8bd8070 	pop	{r4, r5, r6, pc}
 e011ab4:	ebfffb96 	bl	e010914 <vTaskEnterCritical>
 e011ab8:	e5943068 	ldr	r3, [r4, #104]	; 0x68
 e011abc:	e3530000 	cmp	r3, #0
 e011ac0:	13a05000 	movne	r5, #0
 e011ac4:	1a00000a 	bne	e011af4 <xTaskPriorityDisinherit+0x74>
 e011ac8:	e30831cc 	movw	r3, #33228	; 0x81cc
 e011acc:	e346300a 	movt	r3, #24586	; 0x600a
 e011ad0:	e5942014 	ldr	r2, [r4, #20]
 e011ad4:	e5933000 	ldr	r3, [r3]
 e011ad8:	e1520003 	cmp	r2, r3
 e011adc:	0a000007 	beq	e011b00 <xTaskPriorityDisinherit+0x80>
 e011ae0:	e5943064 	ldr	r3, [r4, #100]	; 0x64
 e011ae4:	e3a05001 	mov	r5, #1
 e011ae8:	e263200b 	rsb	r2, r3, #11
 e011aec:	e584302c 	str	r3, [r4, #44]	; 0x2c
 e011af0:	e5842018 	str	r2, [r4, #24]
 e011af4:	ebfffb9c 	bl	e01096c <vTaskExitCritical>
 e011af8:	e1a00005 	mov	r0, r5
 e011afc:	e8bd8070 	pop	{r4, r5, r6, pc}
 e011b00:	e2840004 	add	r0, r4, #4
 e011b04:	eb000126 	bl	e011fa4 <uxListRemove>
 e011b08:	e3500000 	cmp	r0, #0
 e011b0c:	1afffff3 	bne	e011ae0 <xTaskPriorityDisinherit+0x60>
 e011b10:	e308c2d4 	movw	ip, #33492	; 0x82d4
 e011b14:	e346c00a 	movt	ip, #24586	; 0x600a
 e011b18:	e59c3000 	ldr	r3, [ip]
 e011b1c:	e3530000 	cmp	r3, #0
 e011b20:	0a000009 	beq	e011b4c <xTaskPriorityDisinherit+0xcc>
 e011b24:	e30811d8 	movw	r1, #33240	; 0x81d8
 e011b28:	e346100a 	movt	r1, #24586	; 0x600a
 e011b2c:	e3a00014 	mov	r0, #20
 e011b30:	ea000001 	b	e011b3c <xTaskPriorityDisinherit+0xbc>
 e011b34:	e2533001 	subs	r3, r3, #1
 e011b38:	0a000003 	beq	e011b4c <xTaskPriorityDisinherit+0xcc>
 e011b3c:	e0020390 	mul	r2, r0, r3
 e011b40:	e7912002 	ldr	r2, [r1, r2]
 e011b44:	e3520000 	cmp	r2, #0
 e011b48:	0afffff9 	beq	e011b34 <xTaskPriorityDisinherit+0xb4>
 e011b4c:	e58c3000 	str	r3, [ip]
 e011b50:	eaffffe2 	b	e011ae0 <xTaskPriorityDisinherit+0x60>

0e011b54 <vTaskPriorityDisinheritAfterTimeout>:
 e011b54:	e92d4070 	push	{r4, r5, r6, lr}
 e011b58:	e2504000 	subs	r4, r0, #0
 e011b5c:	08bd8070 	popeq	{r4, r5, r6, pc}
 e011b60:	e5943064 	ldr	r3, [r4, #100]	; 0x64
 e011b64:	e594502c 	ldr	r5, [r4, #44]	; 0x2c
 e011b68:	e1510003 	cmp	r1, r3
 e011b6c:	31a01003 	movcc	r1, r3
 e011b70:	e1550001 	cmp	r5, r1
 e011b74:	08bd8070 	popeq	{r4, r5, r6, pc}
 e011b78:	e5943068 	ldr	r3, [r4, #104]	; 0x68
 e011b7c:	e3530001 	cmp	r3, #1
 e011b80:	18bd8070 	popne	{r4, r5, r6, pc}
 e011b84:	e5943018 	ldr	r3, [r4, #24]
 e011b88:	e584102c 	str	r1, [r4, #44]	; 0x2c
 e011b8c:	e3530000 	cmp	r3, #0
 e011b90:	a261100b 	rsbge	r1, r1, #11
 e011b94:	a5841018 	strge	r1, [r4, #24]
 e011b98:	ebfffb5d 	bl	e010914 <vTaskEnterCritical>
 e011b9c:	e30861d8 	movw	r6, #33240	; 0x81d8
 e011ba0:	e346600a 	movt	r6, #24586	; 0x600a
 e011ba4:	e3a02014 	mov	r2, #20
 e011ba8:	e5943014 	ldr	r3, [r4, #20]
 e011bac:	e0256592 	mla	r5, r2, r5, r6
 e011bb0:	e1530005 	cmp	r3, r5
 e011bb4:	0a000001 	beq	e011bc0 <vTaskPriorityDisinheritAfterTimeout+0x6c>
 e011bb8:	e8bd4070 	pop	{r4, r5, r6, lr}
 e011bbc:	eafffb6a 	b	e01096c <vTaskExitCritical>
 e011bc0:	e2845004 	add	r5, r4, #4
 e011bc4:	e1a00005 	mov	r0, r5
 e011bc8:	eb0000f5 	bl	e011fa4 <uxListRemove>
 e011bcc:	e5943034 	ldr	r3, [r4, #52]	; 0x34
 e011bd0:	e3530000 	cmp	r3, #0
 e011bd4:	ba000002 	blt	e011be4 <vTaskPriorityDisinheritAfterTimeout+0x90>
 e011bd8:	e5943034 	ldr	r3, [r4, #52]	; 0x34
 e011bdc:	e3530001 	cmp	r3, #1
 e011be0:	dafffff4 	ble	e011bb8 <vTaskPriorityDisinheritAfterTimeout+0x64>
 e011be4:	e5943034 	ldr	r3, [r4, #52]	; 0x34
 e011be8:	e3730002 	cmn	r3, #2
 e011bec:	0a00000a 	beq	e011c1c <vTaskPriorityDisinheritAfterTimeout+0xc8>
 e011bf0:	e30832d4 	movw	r3, #33492	; 0x82d4
 e011bf4:	e346300a 	movt	r3, #24586	; 0x600a
 e011bf8:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
 e011bfc:	e3a00014 	mov	r0, #20
 e011c00:	e5931000 	ldr	r1, [r3]
 e011c04:	e0206290 	mla	r0, r0, r2, r6
 e011c08:	e1520001 	cmp	r2, r1
 e011c0c:	e1a01005 	mov	r1, r5
 e011c10:	85832000 	strhi	r2, [r3]
 e011c14:	eb0000c1 	bl	e011f20 <vListInsertEnd>
 e011c18:	eaffffe6 	b	e011bb8 <vTaskPriorityDisinheritAfterTimeout+0x64>
 e011c1c:	e30831d4 	movw	r3, #33236	; 0x81d4
 e011c20:	e346300a 	movt	r3, #24586	; 0x600a
 e011c24:	e1a01005 	mov	r1, r5
 e011c28:	e5930000 	ldr	r0, [r3]
 e011c2c:	eb0000bb 	bl	e011f20 <vListInsertEnd>
 e011c30:	eaffffe0 	b	e011bb8 <vTaskPriorityDisinheritAfterTimeout+0x64>

0e011c34 <prvIdleTask>:
 e011c34:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e011c38:	e30852c8 	movw	r5, #33480	; 0x82c8
 e011c3c:	e346500a 	movt	r5, #24586	; 0x600a
 e011c40:	e3087354 	movw	r7, #33620	; 0x8354
 e011c44:	e346700a 	movt	r7, #24586	; 0x600a
 e011c48:	e30862c4 	movw	r6, #33476	; 0x82c4
 e011c4c:	e346600a 	movt	r6, #24586	; 0x600a
 e011c50:	e30881d8 	movw	r8, #33240	; 0x81d8
 e011c54:	e346800a 	movt	r8, #24586	; 0x600a
 e011c58:	e3089328 	movw	r9, #33576	; 0x8328
 e011c5c:	e346900a 	movt	r9, #24586	; 0x600a
 e011c60:	e308a2cc 	movw	sl, #33484	; 0x82cc
 e011c64:	e346a00a 	movt	sl, #24586	; 0x600a
 e011c68:	ea000002 	b	e011c78 <prvIdleTask+0x44>
 e011c6c:	e3530001 	cmp	r3, #1
 e011c70:	0a000037 	beq	e011d54 <prvIdleTask+0x120>
 e011c74:	ebfffb3c 	bl	e01096c <vTaskExitCritical>
 e011c78:	e5953000 	ldr	r3, [r5]
 e011c7c:	e3530000 	cmp	r3, #0
 e011c80:	0a00001d 	beq	e011cfc <prvIdleTask+0xc8>
 e011c84:	ebfffb22 	bl	e010914 <vTaskEnterCritical>
 e011c88:	e5953000 	ldr	r3, [r5]
 e011c8c:	e3530000 	cmp	r3, #0
 e011c90:	0afffff7 	beq	e011c74 <prvIdleTask+0x40>
 e011c94:	e597300c 	ldr	r3, [r7, #12]
 e011c98:	e593400c 	ldr	r4, [r3, #12]
 e011c9c:	e2840004 	add	r0, r4, #4
 e011ca0:	e5943034 	ldr	r3, [r4, #52]	; 0x34
 e011ca4:	e3730001 	cmn	r3, #1
 e011ca8:	1a000012 	bne	e011cf8 <prvIdleTask+0xc4>
 e011cac:	eb0000bc 	bl	e011fa4 <uxListRemove>
 e011cb0:	e5963000 	ldr	r3, [r6]
 e011cb4:	e1a00004 	mov	r0, r4
 e011cb8:	e2433001 	sub	r3, r3, #1
 e011cbc:	e5863000 	str	r3, [r6]
 e011cc0:	e5953000 	ldr	r3, [r5]
 e011cc4:	e2433001 	sub	r3, r3, #1
 e011cc8:	e5853000 	str	r3, [r5]
 e011ccc:	ebfff7f8 	bl	e00fcb4 <vPortCleanUpTCB>
 e011cd0:	e284007c 	add	r0, r4, #124	; 0x7c
 e011cd4:	ebffbde9 	bl	e001480 <_reclaim_reent>
 e011cd8:	e5d43171 	ldrb	r3, [r4, #369]	; 0x171
 e011cdc:	e3530000 	cmp	r3, #0
 e011ce0:	1affffe1 	bne	e011c6c <prvIdleTask+0x38>
 e011ce4:	e5940030 	ldr	r0, [r4, #48]	; 0x30
 e011ce8:	eb0005ad 	bl	e0133a4 <vPortFree>
 e011cec:	e1a00004 	mov	r0, r4
 e011cf0:	eb0005ab 	bl	e0133a4 <vPortFree>
 e011cf4:	eaffffde 	b	e011c74 <prvIdleTask+0x40>
 e011cf8:	ebfffb1b 	bl	e01096c <vTaskExitCritical>
 e011cfc:	e5983000 	ldr	r3, [r8]
 e011d00:	e3530000 	cmp	r3, #0
 e011d04:	0a000000 	beq	e011d0c <prvIdleTask+0xd8>
 e011d08:	ef000000 	svc	0x00000000
 e011d0c:	ebfff6db 	bl	e00f880 <ulPortGetCoreId>
 e011d10:	e3500000 	cmp	r0, #0
 e011d14:	1a000011 	bne	e011d60 <prvIdleTask+0x12c>
 e011d18:	ebfff888 	bl	e00ff40 <prvGetExpectedIdleTime>
 e011d1c:	e3500001 	cmp	r0, #1
 e011d20:	9affffd4 	bls	e011c78 <prvIdleTask+0x44>
 e011d24:	e5993000 	ldr	r3, [r9]
 e011d28:	e3530000 	cmp	r3, #0
 e011d2c:	1a00000e 	bne	e011d6c <prvIdleTask+0x138>
 e011d30:	ebfff882 	bl	e00ff40 <prvGetExpectedIdleTime>
 e011d34:	e3500001 	cmp	r0, #1
 e011d38:	9a000000 	bls	e011d40 <prvIdleTask+0x10c>
 e011d3c:	ebfff745 	bl	e00fa58 <vPortSuppressTicksAndSleep>
 e011d40:	e5993000 	ldr	r3, [r9]
 e011d44:	e3530000 	cmp	r3, #0
 e011d48:	0affffca 	beq	e011c78 <prvIdleTask+0x44>
 e011d4c:	ebfffdac 	bl	e011404 <xTaskResumeAll.part.0>
 e011d50:	eaffffc8 	b	e011c78 <prvIdleTask+0x44>
 e011d54:	e1a00004 	mov	r0, r4
 e011d58:	eb000591 	bl	e0133a4 <vPortFree>
 e011d5c:	eaffffc4 	b	e011c74 <prvIdleTask+0x40>
 e011d60:	e3e00000 	mvn	r0, #0
 e011d64:	ebfff73b 	bl	e00fa58 <vPortSuppressTicksAndSleep>
 e011d68:	eaffffc2 	b	e011c78 <prvIdleTask+0x44>
 e011d6c:	ebfffae8 	bl	e010914 <vTaskEnterCritical>
 e011d70:	e59a3000 	ldr	r3, [sl]
 e011d74:	e2833001 	add	r3, r3, #1
 e011d78:	e58a3000 	str	r3, [sl]
 e011d7c:	ebfffafa 	bl	e01096c <vTaskExitCritical>
 e011d80:	eaffffea 	b	e011d30 <prvIdleTask+0xfc>

0e011d84 <vTaskSuspendAll>:
 e011d84:	e3083328 	movw	r3, #33576	; 0x8328
 e011d88:	e346300a 	movt	r3, #24586	; 0x600a
 e011d8c:	e5933000 	ldr	r3, [r3]
 e011d90:	e3530000 	cmp	r3, #0
 e011d94:	012fff1e 	bxeq	lr
 e011d98:	e92d4010 	push	{r4, lr}
 e011d9c:	ebfffadc 	bl	e010914 <vTaskEnterCritical>
 e011da0:	e30832cc 	movw	r3, #33484	; 0x82cc
 e011da4:	e346300a 	movt	r3, #24586	; 0x600a
 e011da8:	e5932000 	ldr	r2, [r3]
 e011dac:	e2822001 	add	r2, r2, #1
 e011db0:	e5832000 	str	r2, [r3]
 e011db4:	e8bd4010 	pop	{r4, lr}
 e011db8:	eafffaeb 	b	e01096c <vTaskExitCritical>

0e011dbc <vTaskDelay>:
 e011dbc:	e92d4070 	push	{r4, r5, r6, lr}
 e011dc0:	e2504000 	subs	r4, r0, #0
 e011dc4:	0a00000a 	beq	e011df4 <vTaskDelay+0x38>
 e011dc8:	e3085328 	movw	r5, #33576	; 0x8328
 e011dcc:	e346500a 	movt	r5, #24586	; 0x600a
 e011dd0:	e5953000 	ldr	r3, [r5]
 e011dd4:	e3530000 	cmp	r3, #0
 e011dd8:	1a000017 	bne	e011e3c <vTaskDelay+0x80>
 e011ddc:	e3a01000 	mov	r1, #0
 e011de0:	e1a00004 	mov	r0, r4
 e011de4:	ebfffc41 	bl	e010ef0 <prvAddCurrentTaskToDelayedList>
 e011de8:	e5953000 	ldr	r3, [r5]
 e011dec:	e3530000 	cmp	r3, #0
 e011df0:	1a00000d 	bne	e011e2c <vTaskDelay+0x70>
 e011df4:	ebfff686 	bl	e00f814 <ulPortInterruptLock>
 e011df8:	e1a04000 	mov	r4, r0
 e011dfc:	ebfff69f 	bl	e00f880 <ulPortGetCoreId>
 e011e00:	e30831c4 	movw	r3, #33220	; 0x81c4
 e011e04:	e346300a 	movt	r3, #24586	; 0x600a
 e011e08:	e1a02000 	mov	r2, r0
 e011e0c:	e1a00004 	mov	r0, r4
 e011e10:	e7934102 	ldr	r4, [r3, r2, lsl #2]
 e011e14:	ebfff683 	bl	e00f828 <ulPortInterruptUnLock>
 e011e18:	e5943058 	ldr	r3, [r4, #88]	; 0x58
 e011e1c:	e3530000 	cmp	r3, #0
 e011e20:	1a00000d 	bne	e011e5c <vTaskDelay+0xa0>
 e011e24:	ef000000 	svc	0x00000000
 e011e28:	e8bd8070 	pop	{r4, r5, r6, pc}
 e011e2c:	ebfffd74 	bl	e011404 <xTaskResumeAll.part.0>
 e011e30:	e3500000 	cmp	r0, #0
 e011e34:	18bd8070 	popne	{r4, r5, r6, pc}
 e011e38:	eaffffed 	b	e011df4 <vTaskDelay+0x38>
 e011e3c:	ebfffab4 	bl	e010914 <vTaskEnterCritical>
 e011e40:	e30832cc 	movw	r3, #33484	; 0x82cc
 e011e44:	e346300a 	movt	r3, #24586	; 0x600a
 e011e48:	e5932000 	ldr	r2, [r3]
 e011e4c:	e2822001 	add	r2, r2, #1
 e011e50:	e5832000 	str	r2, [r3]
 e011e54:	ebfffac4 	bl	e01096c <vTaskExitCritical>
 e011e58:	eaffffdf 	b	e011ddc <vTaskDelay+0x20>
 e011e5c:	ebfff687 	bl	e00f880 <ulPortGetCoreId>
 e011e60:	e308336c 	movw	r3, #33644	; 0x836c
 e011e64:	e346300a 	movt	r3, #24586	; 0x600a
 e011e68:	e3a02001 	mov	r2, #1
 e011e6c:	e7832100 	str	r2, [r3, r0, lsl #2]
 e011e70:	e8bd8070 	pop	{r4, r5, r6, pc}

0e011e74 <pvTaskIncrementMutexHeldCount>:
 e011e74:	e92d4070 	push	{r4, r5, r6, lr}
 e011e78:	ebfff665 	bl	e00f814 <ulPortInterruptLock>
 e011e7c:	e30841c4 	movw	r4, #33220	; 0x81c4
 e011e80:	e346400a 	movt	r4, #24586	; 0x600a
 e011e84:	e1a05000 	mov	r5, r0
 e011e88:	ebfff67c 	bl	e00f880 <ulPortGetCoreId>
 e011e8c:	e1a03000 	mov	r3, r0
 e011e90:	e1a00005 	mov	r0, r5
 e011e94:	e7945103 	ldr	r5, [r4, r3, lsl #2]
 e011e98:	ebfff662 	bl	e00f828 <ulPortInterruptUnLock>
 e011e9c:	e3550000 	cmp	r5, #0
 e011ea0:	0a000009 	beq	e011ecc <pvTaskIncrementMutexHeldCount+0x58>
 e011ea4:	ebfff65a 	bl	e00f814 <ulPortInterruptLock>
 e011ea8:	e1a05000 	mov	r5, r0
 e011eac:	ebfff673 	bl	e00f880 <ulPortGetCoreId>
 e011eb0:	e1a03000 	mov	r3, r0
 e011eb4:	e1a00005 	mov	r0, r5
 e011eb8:	e7945103 	ldr	r5, [r4, r3, lsl #2]
 e011ebc:	ebfff659 	bl	e00f828 <ulPortInterruptUnLock>
 e011ec0:	e5953068 	ldr	r3, [r5, #104]	; 0x68
 e011ec4:	e2833001 	add	r3, r3, #1
 e011ec8:	e5853068 	str	r3, [r5, #104]	; 0x68
 e011ecc:	ebfff650 	bl	e00f814 <ulPortInterruptLock>
 e011ed0:	e1a05000 	mov	r5, r0
 e011ed4:	ebfff669 	bl	e00f880 <ulPortGetCoreId>
 e011ed8:	e1a03000 	mov	r3, r0
 e011edc:	e1a00005 	mov	r0, r5
 e011ee0:	e7944103 	ldr	r4, [r4, r3, lsl #2]
 e011ee4:	ebfff64f 	bl	e00f828 <ulPortInterruptUnLock>
 e011ee8:	e1a00004 	mov	r0, r4
 e011eec:	e8bd8070 	pop	{r4, r5, r6, pc}

0e011ef0 <vListInitialise>:
 e011ef0:	e2803008 	add	r3, r0, #8
 e011ef4:	e3a02000 	mov	r2, #0
 e011ef8:	e3e01000 	mvn	r1, #0
 e011efc:	e5803004 	str	r3, [r0, #4]
 e011f00:	e5801008 	str	r1, [r0, #8]
 e011f04:	e580300c 	str	r3, [r0, #12]
 e011f08:	e5803010 	str	r3, [r0, #16]
 e011f0c:	e5802000 	str	r2, [r0]
 e011f10:	e12fff1e 	bx	lr

0e011f14 <vListInitialiseItem>:
 e011f14:	e3a03000 	mov	r3, #0
 e011f18:	e5803010 	str	r3, [r0, #16]
 e011f1c:	e12fff1e 	bx	lr

0e011f20 <vListInsertEnd>:
 e011f20:	e5903004 	ldr	r3, [r0, #4]
 e011f24:	e5813004 	str	r3, [r1, #4]
 e011f28:	e5932008 	ldr	r2, [r3, #8]
 e011f2c:	e5812008 	str	r2, [r1, #8]
 e011f30:	e5821004 	str	r1, [r2, #4]
 e011f34:	e5831008 	str	r1, [r3, #8]
 e011f38:	e5810010 	str	r0, [r1, #16]
 e011f3c:	e5903000 	ldr	r3, [r0]
 e011f40:	e2833001 	add	r3, r3, #1
 e011f44:	e5803000 	str	r3, [r0]
 e011f48:	e12fff1e 	bx	lr

0e011f4c <vListInsert>:
 e011f4c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e011f50:	e591e000 	ldr	lr, [r1]
 e011f54:	e37e0001 	cmn	lr, #1
 e011f58:	12803008 	addne	r3, r0, #8
 e011f5c:	0a00000d 	beq	e011f98 <vListInsert+0x4c>
 e011f60:	e1a0c003 	mov	ip, r3
 e011f64:	e5933004 	ldr	r3, [r3, #4]
 e011f68:	e5932000 	ldr	r2, [r3]
 e011f6c:	e152000e 	cmp	r2, lr
 e011f70:	9afffffa 	bls	e011f60 <vListInsert+0x14>
 e011f74:	e5813004 	str	r3, [r1, #4]
 e011f78:	e5831008 	str	r1, [r3, #8]
 e011f7c:	e581c008 	str	ip, [r1, #8]
 e011f80:	e58c1004 	str	r1, [ip, #4]
 e011f84:	e5810010 	str	r0, [r1, #16]
 e011f88:	e5903000 	ldr	r3, [r0]
 e011f8c:	e2833001 	add	r3, r3, #1
 e011f90:	e5803000 	str	r3, [r0]
 e011f94:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
 e011f98:	e590c010 	ldr	ip, [r0, #16]
 e011f9c:	e59c3004 	ldr	r3, [ip, #4]
 e011fa0:	eafffff3 	b	e011f74 <vListInsert+0x28>

0e011fa4 <uxListRemove>:
 e011fa4:	e9900006 	ldmib	r0, {r1, r2}
 e011fa8:	e5903010 	ldr	r3, [r0, #16]
 e011fac:	e5812008 	str	r2, [r1, #8]
 e011fb0:	e5901004 	ldr	r1, [r0, #4]
 e011fb4:	e5821004 	str	r1, [r2, #4]
 e011fb8:	e5932004 	ldr	r2, [r3, #4]
 e011fbc:	e1520000 	cmp	r2, r0
 e011fc0:	05902008 	ldreq	r2, [r0, #8]
 e011fc4:	05832004 	streq	r2, [r3, #4]
 e011fc8:	e3a02000 	mov	r2, #0
 e011fcc:	e5802010 	str	r2, [r0, #16]
 e011fd0:	e5932000 	ldr	r2, [r3]
 e011fd4:	e2422001 	sub	r2, r2, #1
 e011fd8:	e5832000 	str	r2, [r3]
 e011fdc:	e5930000 	ldr	r0, [r3]
 e011fe0:	e12fff1e 	bx	lr

0e011fe4 <prvCopyDataToQueue>:
 e011fe4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e011fe8:	e1a04000 	mov	r4, r0
 e011fec:	e1a05002 	mov	r5, r2
 e011ff0:	e1a07001 	mov	r7, r1
 e011ff4:	ebfffa46 	bl	e010914 <vTaskEnterCritical>
 e011ff8:	e5942040 	ldr	r2, [r4, #64]	; 0x40
 e011ffc:	e5946038 	ldr	r6, [r4, #56]	; 0x38
 e012000:	e3520000 	cmp	r2, #0
 e012004:	1a000008 	bne	e01202c <prvCopyDataToQueue+0x48>
 e012008:	e5947000 	ldr	r7, [r4]
 e01200c:	e2866001 	add	r6, r6, #1
 e012010:	e3570000 	cmp	r7, #0
 e012014:	11a05002 	movne	r5, r2
 e012018:	0a000023 	beq	e0120ac <prvCopyDataToQueue+0xc8>
 e01201c:	e5846038 	str	r6, [r4, #56]	; 0x38
 e012020:	ebfffa51 	bl	e01096c <vTaskExitCritical>
 e012024:	e1a00005 	mov	r0, r5
 e012028:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e01202c:	e1a01007 	mov	r1, r7
 e012030:	e3550000 	cmp	r5, #0
 e012034:	1a00000b 	bne	e012068 <prvCopyDataToQueue+0x84>
 e012038:	e5940004 	ldr	r0, [r4, #4]
 e01203c:	ebffbb5f 	bl	e000dc0 <memcpy>
 e012040:	e5943004 	ldr	r3, [r4, #4]
 e012044:	e5942040 	ldr	r2, [r4, #64]	; 0x40
 e012048:	e2866001 	add	r6, r6, #1
 e01204c:	e0833002 	add	r3, r3, r2
 e012050:	e5942008 	ldr	r2, [r4, #8]
 e012054:	e5843004 	str	r3, [r4, #4]
 e012058:	e1530002 	cmp	r3, r2
 e01205c:	25943000 	ldrcs	r3, [r4]
 e012060:	25843004 	strcs	r3, [r4, #4]
 e012064:	eaffffec 	b	e01201c <prvCopyDataToQueue+0x38>
 e012068:	e594000c 	ldr	r0, [r4, #12]
 e01206c:	ebffbb53 	bl	e000dc0 <memcpy>
 e012070:	e5942040 	ldr	r2, [r4, #64]	; 0x40
 e012074:	e594300c 	ldr	r3, [r4, #12]
 e012078:	e2621000 	rsb	r1, r2, #0
 e01207c:	e0433002 	sub	r3, r3, r2
 e012080:	e5942000 	ldr	r2, [r4]
 e012084:	e584300c 	str	r3, [r4, #12]
 e012088:	e1530002 	cmp	r3, r2
 e01208c:	35943008 	ldrcc	r3, [r4, #8]
 e012090:	30833001 	addcc	r3, r3, r1
 e012094:	3584300c 	strcc	r3, [r4, #12]
 e012098:	e3550002 	cmp	r5, #2
 e01209c:	0a000007 	beq	e0120c0 <prvCopyDataToQueue+0xdc>
 e0120a0:	e2866001 	add	r6, r6, #1
 e0120a4:	e3a05000 	mov	r5, #0
 e0120a8:	eaffffdb 	b	e01201c <prvCopyDataToQueue+0x38>
 e0120ac:	e5940008 	ldr	r0, [r4, #8]
 e0120b0:	ebfffe72 	bl	e011a80 <xTaskPriorityDisinherit>
 e0120b4:	e5847008 	str	r7, [r4, #8]
 e0120b8:	e1a05000 	mov	r5, r0
 e0120bc:	eaffffd6 	b	e01201c <prvCopyDataToQueue+0x38>
 e0120c0:	e3560001 	cmp	r6, #1
 e0120c4:	33a06001 	movcc	r6, #1
 e0120c8:	e3a05000 	mov	r5, #0
 e0120cc:	eaffffd2 	b	e01201c <prvCopyDataToQueue+0x38>

0e0120d0 <prvNotifyQueueSetContainer>:
 e0120d0:	e92d4070 	push	{r4, r5, r6, lr}
 e0120d4:	e5904048 	ldr	r4, [r0, #72]	; 0x48
 e0120d8:	e24dd008 	sub	sp, sp, #8
 e0120dc:	e5942038 	ldr	r2, [r4, #56]	; 0x38
 e0120e0:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
 e0120e4:	e58d0004 	str	r0, [sp, #4]
 e0120e8:	e1520003 	cmp	r2, r3
 e0120ec:	23a05000 	movcs	r5, #0
 e0120f0:	3a000002 	bcc	e012100 <prvNotifyQueueSetContainer+0x30>
 e0120f4:	e1a00005 	mov	r0, r5
 e0120f8:	e28dd008 	add	sp, sp, #8
 e0120fc:	e8bd8070 	pop	{r4, r5, r6, pc}
 e012100:	e5d46045 	ldrb	r6, [r4, #69]	; 0x45
 e012104:	e1a02001 	mov	r2, r1
 e012108:	e1a00004 	mov	r0, r4
 e01210c:	e28d1004 	add	r1, sp, #4
 e012110:	e6af6076 	sxtb	r6, r6
 e012114:	ebffffb2 	bl	e011fe4 <prvCopyDataToQueue>
 e012118:	e3760001 	cmn	r6, #1
 e01211c:	e1a05000 	mov	r5, r0
 e012120:	0a000005 	beq	e01213c <prvNotifyQueueSetContainer+0x6c>
 e012124:	e2866001 	add	r6, r6, #1
 e012128:	e1a00005 	mov	r0, r5
 e01212c:	e6af6076 	sxtb	r6, r6
 e012130:	e5c46045 	strb	r6, [r4, #69]	; 0x45
 e012134:	e28dd008 	add	sp, sp, #8
 e012138:	e8bd8070 	pop	{r4, r5, r6, pc}
 e01213c:	e5943024 	ldr	r3, [r4, #36]	; 0x24
 e012140:	e3530000 	cmp	r3, #0
 e012144:	0affffea 	beq	e0120f4 <prvNotifyQueueSetContainer+0x24>
 e012148:	e2840024 	add	r0, r4, #36	; 0x24
 e01214c:	ebfffd6a 	bl	e0116fc <xTaskRemoveFromEventList>
 e012150:	e3500000 	cmp	r0, #0
 e012154:	13a05001 	movne	r5, #1
 e012158:	eaffffe5 	b	e0120f4 <prvNotifyQueueSetContainer+0x24>

0e01215c <prvUnlockQueue>:
 e01215c:	e92d4070 	push	{r4, r5, r6, lr}
 e012160:	e1a05000 	mov	r5, r0
 e012164:	ebfff9ea 	bl	e010914 <vTaskEnterCritical>
 e012168:	e5d54045 	ldrb	r4, [r5, #69]	; 0x45
 e01216c:	e6af4074 	sxtb	r4, r4
 e012170:	e3540000 	cmp	r4, #0
 e012174:	da000019 	ble	e0121e0 <prvUnlockQueue+0x84>
 e012178:	e2856024 	add	r6, r5, #36	; 0x24
 e01217c:	ea000006 	b	e01219c <prvUnlockQueue+0x40>
 e012180:	ebffffd2 	bl	e0120d0 <prvNotifyQueueSetContainer>
 e012184:	e3500000 	cmp	r0, #0
 e012188:	1a00000f 	bne	e0121cc <prvUnlockQueue+0x70>
 e01218c:	e2444001 	sub	r4, r4, #1
 e012190:	e6af4074 	sxtb	r4, r4
 e012194:	e3540000 	cmp	r4, #0
 e012198:	0a000010 	beq	e0121e0 <prvUnlockQueue+0x84>
 e01219c:	e5953048 	ldr	r3, [r5, #72]	; 0x48
 e0121a0:	e3a01000 	mov	r1, #0
 e0121a4:	e1a00005 	mov	r0, r5
 e0121a8:	e1530001 	cmp	r3, r1
 e0121ac:	1afffff3 	bne	e012180 <prvUnlockQueue+0x24>
 e0121b0:	e5953024 	ldr	r3, [r5, #36]	; 0x24
 e0121b4:	e1a00006 	mov	r0, r6
 e0121b8:	e3530000 	cmp	r3, #0
 e0121bc:	0a000007 	beq	e0121e0 <prvUnlockQueue+0x84>
 e0121c0:	ebfffd4d 	bl	e0116fc <xTaskRemoveFromEventList>
 e0121c4:	e3500000 	cmp	r0, #0
 e0121c8:	0affffef 	beq	e01218c <prvUnlockQueue+0x30>
 e0121cc:	e2444001 	sub	r4, r4, #1
 e0121d0:	ebfff97c 	bl	e0107c8 <vTaskMissedYield>
 e0121d4:	e6af4074 	sxtb	r4, r4
 e0121d8:	e3540000 	cmp	r4, #0
 e0121dc:	1affffee 	bne	e01219c <prvUnlockQueue+0x40>
 e0121e0:	e3e03000 	mvn	r3, #0
 e0121e4:	e5c53045 	strb	r3, [r5, #69]	; 0x45
 e0121e8:	ebfff9df 	bl	e01096c <vTaskExitCritical>
 e0121ec:	ebfff9c8 	bl	e010914 <vTaskEnterCritical>
 e0121f0:	e5d54044 	ldrb	r4, [r5, #68]	; 0x44
 e0121f4:	e6af4074 	sxtb	r4, r4
 e0121f8:	e3540000 	cmp	r4, #0
 e0121fc:	da000011 	ble	e012248 <prvUnlockQueue+0xec>
 e012200:	e2856010 	add	r6, r5, #16
 e012204:	ea000003 	b	e012218 <prvUnlockQueue+0xbc>
 e012208:	e2444001 	sub	r4, r4, #1
 e01220c:	e6af4074 	sxtb	r4, r4
 e012210:	e3540000 	cmp	r4, #0
 e012214:	0a00000b 	beq	e012248 <prvUnlockQueue+0xec>
 e012218:	e5953010 	ldr	r3, [r5, #16]
 e01221c:	e1a00006 	mov	r0, r6
 e012220:	e3530000 	cmp	r3, #0
 e012224:	0a000007 	beq	e012248 <prvUnlockQueue+0xec>
 e012228:	ebfffd33 	bl	e0116fc <xTaskRemoveFromEventList>
 e01222c:	e3500000 	cmp	r0, #0
 e012230:	0afffff4 	beq	e012208 <prvUnlockQueue+0xac>
 e012234:	e2444001 	sub	r4, r4, #1
 e012238:	ebfff962 	bl	e0107c8 <vTaskMissedYield>
 e01223c:	e6af4074 	sxtb	r4, r4
 e012240:	e3540000 	cmp	r4, #0
 e012244:	1afffff3 	bne	e012218 <prvUnlockQueue+0xbc>
 e012248:	e3e03000 	mvn	r3, #0
 e01224c:	e5c53044 	strb	r3, [r5, #68]	; 0x44
 e012250:	e8bd4070 	pop	{r4, r5, r6, lr}
 e012254:	eafff9c4 	b	e01096c <vTaskExitCritical>

0e012258 <xQueueGenericCreateStatic>:
 e012258:	e92d4070 	push	{r4, r5, r6, lr}
 e01225c:	e2534000 	subs	r4, r3, #0
 e012260:	e5dd5010 	ldrb	r5, [sp, #16]
 e012264:	0a00001d 	beq	e0122e0 <xQueueGenericCreateStatic+0x88>
 e012268:	e3510000 	cmp	r1, #0
 e01226c:	01a02004 	moveq	r2, r4
 e012270:	e3a03001 	mov	r3, #1
 e012274:	e584003c 	str	r0, [r4, #60]	; 0x3c
 e012278:	e5842000 	str	r2, [r4]
 e01227c:	e5841040 	str	r1, [r4, #64]	; 0x40
 e012280:	e5c43046 	strb	r3, [r4, #70]	; 0x46
 e012284:	ebfff9a2 	bl	e010914 <vTaskEnterCritical>
 e012288:	e5941040 	ldr	r1, [r4, #64]	; 0x40
 e01228c:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
 e012290:	e5942000 	ldr	r2, [r4]
 e012294:	e3a06000 	mov	r6, #0
 e012298:	e2840010 	add	r0, r4, #16
 e01229c:	e0030193 	mul	r3, r3, r1
 e0122a0:	e5846038 	str	r6, [r4, #56]	; 0x38
 e0122a4:	e0431001 	sub	r1, r3, r1
 e0122a8:	e5842004 	str	r2, [r4, #4]
 e0122ac:	e0823003 	add	r3, r2, r3
 e0122b0:	e0822001 	add	r2, r2, r1
 e0122b4:	e5843008 	str	r3, [r4, #8]
 e0122b8:	e584200c 	str	r2, [r4, #12]
 e0122bc:	e3e03000 	mvn	r3, #0
 e0122c0:	e5c43044 	strb	r3, [r4, #68]	; 0x44
 e0122c4:	e5c43045 	strb	r3, [r4, #69]	; 0x45
 e0122c8:	ebffff08 	bl	e011ef0 <vListInitialise>
 e0122cc:	e2840024 	add	r0, r4, #36	; 0x24
 e0122d0:	ebffff06 	bl	e011ef0 <vListInitialise>
 e0122d4:	ebfff9a4 	bl	e01096c <vTaskExitCritical>
 e0122d8:	e5c45050 	strb	r5, [r4, #80]	; 0x50
 e0122dc:	e5846048 	str	r6, [r4, #72]	; 0x48
 e0122e0:	e1a00004 	mov	r0, r4
 e0122e4:	e8bd8070 	pop	{r4, r5, r6, pc}

0e0122e8 <xQueueGenericCreate>:
 e0122e8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e0122ec:	e1a06000 	mov	r6, r0
 e0122f0:	e1a07002 	mov	r7, r2
 e0122f4:	e2515000 	subs	r5, r1, #0
 e0122f8:	0a000023 	beq	e01238c <xQueueGenericCreate+0xa4>
 e0122fc:	e0000590 	mul	r0, r0, r5
 e012300:	e2800054 	add	r0, r0, #84	; 0x54
 e012304:	eb0003d8 	bl	e01326c <pvPortMalloc>
 e012308:	e2504000 	subs	r4, r0, #0
 e01230c:	0a000024 	beq	e0123a4 <xQueueGenericCreate+0xbc>
 e012310:	e3a03000 	mov	r3, #0
 e012314:	e5c43046 	strb	r3, [r4, #70]	; 0x46
 e012318:	e2843054 	add	r3, r4, #84	; 0x54
 e01231c:	e5843000 	str	r3, [r4]
 e012320:	e5845040 	str	r5, [r4, #64]	; 0x40
 e012324:	e584603c 	str	r6, [r4, #60]	; 0x3c
 e012328:	ebfff979 	bl	e010914 <vTaskEnterCritical>
 e01232c:	e5941040 	ldr	r1, [r4, #64]	; 0x40
 e012330:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
 e012334:	e5942000 	ldr	r2, [r4]
 e012338:	e3a05000 	mov	r5, #0
 e01233c:	e2840010 	add	r0, r4, #16
 e012340:	e0030193 	mul	r3, r3, r1
 e012344:	e5845038 	str	r5, [r4, #56]	; 0x38
 e012348:	e0431001 	sub	r1, r3, r1
 e01234c:	e5842004 	str	r2, [r4, #4]
 e012350:	e0823003 	add	r3, r2, r3
 e012354:	e0822001 	add	r2, r2, r1
 e012358:	e5843008 	str	r3, [r4, #8]
 e01235c:	e584200c 	str	r2, [r4, #12]
 e012360:	e3e03000 	mvn	r3, #0
 e012364:	e5c43044 	strb	r3, [r4, #68]	; 0x44
 e012368:	e5c43045 	strb	r3, [r4, #69]	; 0x45
 e01236c:	ebfffedf 	bl	e011ef0 <vListInitialise>
 e012370:	e2840024 	add	r0, r4, #36	; 0x24
 e012374:	ebfffedd 	bl	e011ef0 <vListInitialise>
 e012378:	ebfff97b 	bl	e01096c <vTaskExitCritical>
 e01237c:	e1a00004 	mov	r0, r4
 e012380:	e5c47050 	strb	r7, [r4, #80]	; 0x50
 e012384:	e5845048 	str	r5, [r4, #72]	; 0x48
 e012388:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e01238c:	e3a00054 	mov	r0, #84	; 0x54
 e012390:	eb0003b5 	bl	e01326c <pvPortMalloc>
 e012394:	e2504000 	subs	r4, r0, #0
 e012398:	15c45046 	strbne	r5, [r4, #70]	; 0x46
 e01239c:	15844000 	strne	r4, [r4]
 e0123a0:	1affffde 	bne	e012320 <xQueueGenericCreate+0x38>
 e0123a4:	e3a04000 	mov	r4, #0
 e0123a8:	e1a00004 	mov	r0, r4
 e0123ac:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0e0123b0 <xQueueGenericSend>:
 e0123b0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e0123b4:	e2437002 	sub	r7, r3, #2
 e0123b8:	e24dd010 	sub	sp, sp, #16
 e0123bc:	e16f7f17 	clz	r7, r7
 e0123c0:	e3a06000 	mov	r6, #0
 e0123c4:	e1a09003 	mov	r9, r3
 e0123c8:	e1a04000 	mov	r4, r0
 e0123cc:	e1a0a001 	mov	sl, r1
 e0123d0:	e1a072a7 	lsr	r7, r7, #5
 e0123d4:	e1a08006 	mov	r8, r6
 e0123d8:	e58d2004 	str	r2, [sp, #4]
 e0123dc:	ea000004 	b	e0123f4 <xQueueGenericSend+0x44>
 e0123e0:	ebfff961 	bl	e01096c <vTaskExitCritical>
 e0123e4:	e1a00004 	mov	r0, r4
 e0123e8:	ebffff5b 	bl	e01215c <prvUnlockQueue>
 e0123ec:	ebfffc6d 	bl	e0115a8 <xTaskResumeAll>
 e0123f0:	e3a06001 	mov	r6, #1
 e0123f4:	ebfff946 	bl	e010914 <vTaskEnterCritical>
 e0123f8:	e5942038 	ldr	r2, [r4, #56]	; 0x38
 e0123fc:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
 e012400:	e1520003 	cmp	r2, r3
 e012404:	21a00007 	movcs	r0, r7
 e012408:	33870001 	orrcc	r0, r7, #1
 e01240c:	e3500000 	cmp	r0, #0
 e012410:	1a000031 	bne	e0124dc <xQueueGenericSend+0x12c>
 e012414:	e59d5004 	ldr	r5, [sp, #4]
 e012418:	e3550000 	cmp	r5, #0
 e01241c:	0a00003f 	beq	e012520 <xQueueGenericSend+0x170>
 e012420:	e3560000 	cmp	r6, #0
 e012424:	0a000027 	beq	e0124c8 <xQueueGenericSend+0x118>
 e012428:	ebfff94f 	bl	e01096c <vTaskExitCritical>
 e01242c:	ebfffe54 	bl	e011d84 <vTaskSuspendAll>
 e012430:	ebfff937 	bl	e010914 <vTaskEnterCritical>
 e012434:	e5d43044 	ldrb	r3, [r4, #68]	; 0x44
 e012438:	e35300ff 	cmp	r3, #255	; 0xff
 e01243c:	05c48044 	strbeq	r8, [r4, #68]	; 0x44
 e012440:	e5d43045 	ldrb	r3, [r4, #69]	; 0x45
 e012444:	e35300ff 	cmp	r3, #255	; 0xff
 e012448:	05c48045 	strbeq	r8, [r4, #69]	; 0x45
 e01244c:	ebfff946 	bl	e01096c <vTaskExitCritical>
 e012450:	e28d1004 	add	r1, sp, #4
 e012454:	e28d0008 	add	r0, sp, #8
 e012458:	ebfffcec 	bl	e011810 <xTaskCheckForTimeOut>
 e01245c:	e3500000 	cmp	r0, #0
 e012460:	1a000032 	bne	e012530 <xQueueGenericSend+0x180>
 e012464:	ebfff92a 	bl	e010914 <vTaskEnterCritical>
 e012468:	e5942038 	ldr	r2, [r4, #56]	; 0x38
 e01246c:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
 e012470:	e1520003 	cmp	r2, r3
 e012474:	1affffd9 	bne	e0123e0 <xQueueGenericSend+0x30>
 e012478:	e2845010 	add	r5, r4, #16
 e01247c:	ebfff93a 	bl	e01096c <vTaskExitCritical>
 e012480:	e59d1004 	ldr	r1, [sp, #4]
 e012484:	e1a00005 	mov	r0, r5
 e012488:	ebfffc4c 	bl	e0115c0 <vTaskPlaceOnEventList>
 e01248c:	ebfff920 	bl	e010914 <vTaskEnterCritical>
 e012490:	e5942038 	ldr	r2, [r4, #56]	; 0x38
 e012494:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
 e012498:	e1520003 	cmp	r2, r3
 e01249c:	0a00000c 	beq	e0124d4 <xQueueGenericSend+0x124>
 e0124a0:	ebfff931 	bl	e01096c <vTaskExitCritical>
 e0124a4:	e1a00005 	mov	r0, r5
 e0124a8:	ebfffc71 	bl	e011674 <vTaskPlaceRemoveFromEventList>
 e0124ac:	e1a00004 	mov	r0, r4
 e0124b0:	ebffff29 	bl	e01215c <prvUnlockQueue>
 e0124b4:	ebfffc3b 	bl	e0115a8 <xTaskResumeAll>
 e0124b8:	e3500000 	cmp	r0, #0
 e0124bc:	1affffcb 	bne	e0123f0 <xQueueGenericSend+0x40>
 e0124c0:	ebfff8fe 	bl	e0108c0 <vTaskYieldWithinAPI>
 e0124c4:	eaffffc9 	b	e0123f0 <xQueueGenericSend+0x40>
 e0124c8:	e28d0008 	add	r0, sp, #8
 e0124cc:	ebfff8b5 	bl	e0107a8 <vTaskInternalSetTimeOutState>
 e0124d0:	eaffffd4 	b	e012428 <xQueueGenericSend+0x78>
 e0124d4:	ebfff924 	bl	e01096c <vTaskExitCritical>
 e0124d8:	eafffff3 	b	e0124ac <xQueueGenericSend+0xfc>
 e0124dc:	e1a0100a 	mov	r1, sl
 e0124e0:	e1a02009 	mov	r2, r9
 e0124e4:	e1a00004 	mov	r0, r4
 e0124e8:	e5945038 	ldr	r5, [r4, #56]	; 0x38
 e0124ec:	ebfffebc 	bl	e011fe4 <prvCopyDataToQueue>
 e0124f0:	e5943048 	ldr	r3, [r4, #72]	; 0x48
 e0124f4:	e3530000 	cmp	r3, #0
 e0124f8:	0a000012 	beq	e012548 <xQueueGenericSend+0x198>
 e0124fc:	e3550000 	cmp	r5, #0
 e012500:	03a07000 	moveq	r7, #0
 e012504:	12077001 	andne	r7, r7, #1
 e012508:	e3570000 	cmp	r7, #0
 e01250c:	0a000014 	beq	e012564 <xQueueGenericSend+0x1b4>
 e012510:	ebfff915 	bl	e01096c <vTaskExitCritical>
 e012514:	e3a00001 	mov	r0, #1
 e012518:	e28dd010 	add	sp, sp, #16
 e01251c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e012520:	ebfff911 	bl	e01096c <vTaskExitCritical>
 e012524:	e1a00005 	mov	r0, r5
 e012528:	e28dd010 	add	sp, sp, #16
 e01252c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e012530:	e1a00004 	mov	r0, r4
 e012534:	ebffff08 	bl	e01215c <prvUnlockQueue>
 e012538:	ebfffc1a 	bl	e0115a8 <xTaskResumeAll>
 e01253c:	e3a00000 	mov	r0, #0
 e012540:	e28dd010 	add	sp, sp, #16
 e012544:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e012548:	e5943024 	ldr	r3, [r4, #36]	; 0x24
 e01254c:	e3530000 	cmp	r3, #0
 e012550:	1a000007 	bne	e012574 <xQueueGenericSend+0x1c4>
 e012554:	e3500000 	cmp	r0, #0
 e012558:	0affffec 	beq	e012510 <xQueueGenericSend+0x160>
 e01255c:	ebfff8d7 	bl	e0108c0 <vTaskYieldWithinAPI>
 e012560:	eaffffea 	b	e012510 <xQueueGenericSend+0x160>
 e012564:	e1a01009 	mov	r1, r9
 e012568:	e1a00004 	mov	r0, r4
 e01256c:	ebfffed7 	bl	e0120d0 <prvNotifyQueueSetContainer>
 e012570:	eafffff7 	b	e012554 <xQueueGenericSend+0x1a4>
 e012574:	e2840024 	add	r0, r4, #36	; 0x24
 e012578:	ebfffc5f 	bl	e0116fc <xTaskRemoveFromEventList>
 e01257c:	e3500000 	cmp	r0, #0
 e012580:	0affffe2 	beq	e012510 <xQueueGenericSend+0x160>
 e012584:	eafffff4 	b	e01255c <xQueueGenericSend+0x1ac>

0e012588 <xQueueGenericSendFromISR>:
 e012588:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e01258c:	e1a04000 	mov	r4, r0
 e012590:	e1a05003 	mov	r5, r3
 e012594:	e1a07002 	mov	r7, r2
 e012598:	e1a08001 	mov	r8, r1
 e01259c:	ebfff8dc 	bl	e010914 <vTaskEnterCritical>
 e0125a0:	e2450002 	sub	r0, r5, #2
 e0125a4:	e16f0f10 	clz	r0, r0
 e0125a8:	e5942038 	ldr	r2, [r4, #56]	; 0x38
 e0125ac:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
 e0125b0:	e1a002a0 	lsr	r0, r0, #5
 e0125b4:	e1520003 	cmp	r2, r3
 e0125b8:	33800001 	orrcc	r0, r0, #1
 e0125bc:	e3500000 	cmp	r0, #0
 e0125c0:	01a05000 	moveq	r5, r0
 e0125c4:	0a00000b 	beq	e0125f8 <xQueueGenericSendFromISR+0x70>
 e0125c8:	e5d46045 	ldrb	r6, [r4, #69]	; 0x45
 e0125cc:	e1a01008 	mov	r1, r8
 e0125d0:	e1a02005 	mov	r2, r5
 e0125d4:	e6af6076 	sxtb	r6, r6
 e0125d8:	e1a00004 	mov	r0, r4
 e0125dc:	ebfffe80 	bl	e011fe4 <prvCopyDataToQueue>
 e0125e0:	e3760001 	cmn	r6, #1
 e0125e4:	0a000006 	beq	e012604 <xQueueGenericSendFromISR+0x7c>
 e0125e8:	e2866001 	add	r6, r6, #1
 e0125ec:	e3a05001 	mov	r5, #1
 e0125f0:	e6af6076 	sxtb	r6, r6
 e0125f4:	e5c46045 	strb	r6, [r4, #69]	; 0x45
 e0125f8:	ebfff8db 	bl	e01096c <vTaskExitCritical>
 e0125fc:	e1a00005 	mov	r0, r5
 e012600:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e012604:	e5943048 	ldr	r3, [r4, #72]	; 0x48
 e012608:	e3530000 	cmp	r3, #0
 e01260c:	0a000007 	beq	e012630 <xQueueGenericSendFromISR+0xa8>
 e012610:	e1a01005 	mov	r1, r5
 e012614:	e1a00004 	mov	r0, r4
 e012618:	ebfffeac 	bl	e0120d0 <prvNotifyQueueSetContainer>
 e01261c:	e3570000 	cmp	r7, #0
 e012620:	13500000 	cmpne	r0, #0
 e012624:	1a000009 	bne	e012650 <xQueueGenericSendFromISR+0xc8>
 e012628:	e3a05001 	mov	r5, #1
 e01262c:	eafffff1 	b	e0125f8 <xQueueGenericSendFromISR+0x70>
 e012630:	e5943024 	ldr	r3, [r4, #36]	; 0x24
 e012634:	e3530000 	cmp	r3, #0
 e012638:	0afffffa 	beq	e012628 <xQueueGenericSendFromISR+0xa0>
 e01263c:	e2840024 	add	r0, r4, #36	; 0x24
 e012640:	ebfffc2d 	bl	e0116fc <xTaskRemoveFromEventList>
 e012644:	e3570000 	cmp	r7, #0
 e012648:	13500000 	cmpne	r0, #0
 e01264c:	0afffff5 	beq	e012628 <xQueueGenericSendFromISR+0xa0>
 e012650:	e3a03001 	mov	r3, #1
 e012654:	e1a05003 	mov	r5, r3
 e012658:	e5873000 	str	r3, [r7]
 e01265c:	eaffffe5 	b	e0125f8 <xQueueGenericSendFromISR+0x70>

0e012660 <xQueueGiveFromISR>:
 e012660:	e92d4070 	push	{r4, r5, r6, lr}
 e012664:	e1a04000 	mov	r4, r0
 e012668:	e1a06001 	mov	r6, r1
 e01266c:	ebfff8a8 	bl	e010914 <vTaskEnterCritical>
 e012670:	e5942038 	ldr	r2, [r4, #56]	; 0x38
 e012674:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
 e012678:	e1530002 	cmp	r3, r2
 e01267c:	93a05000 	movls	r5, #0
 e012680:	9a000009 	bls	e0126ac <xQueueGiveFromISR+0x4c>
 e012684:	e5d43045 	ldrb	r3, [r4, #69]	; 0x45
 e012688:	e2822001 	add	r2, r2, #1
 e01268c:	e35300ff 	cmp	r3, #255	; 0xff
 e012690:	e5842038 	str	r2, [r4, #56]	; 0x38
 e012694:	e6af3073 	sxtb	r3, r3
 e012698:	0a000006 	beq	e0126b8 <xQueueGiveFromISR+0x58>
 e01269c:	e2833001 	add	r3, r3, #1
 e0126a0:	e3a05001 	mov	r5, #1
 e0126a4:	e6af3073 	sxtb	r3, r3
 e0126a8:	e5c43045 	strb	r3, [r4, #69]	; 0x45
 e0126ac:	ebfff8ae 	bl	e01096c <vTaskExitCritical>
 e0126b0:	e1a00005 	mov	r0, r5
 e0126b4:	e8bd8070 	pop	{r4, r5, r6, pc}
 e0126b8:	e5943048 	ldr	r3, [r4, #72]	; 0x48
 e0126bc:	e3530000 	cmp	r3, #0
 e0126c0:	0a000007 	beq	e0126e4 <xQueueGiveFromISR+0x84>
 e0126c4:	e3a01000 	mov	r1, #0
 e0126c8:	e1a00004 	mov	r0, r4
 e0126cc:	ebfffe7f 	bl	e0120d0 <prvNotifyQueueSetContainer>
 e0126d0:	e3560000 	cmp	r6, #0
 e0126d4:	13500000 	cmpne	r0, #0
 e0126d8:	1a000009 	bne	e012704 <xQueueGiveFromISR+0xa4>
 e0126dc:	e3a05001 	mov	r5, #1
 e0126e0:	eafffff1 	b	e0126ac <xQueueGiveFromISR+0x4c>
 e0126e4:	e5943024 	ldr	r3, [r4, #36]	; 0x24
 e0126e8:	e3530000 	cmp	r3, #0
 e0126ec:	0afffffa 	beq	e0126dc <xQueueGiveFromISR+0x7c>
 e0126f0:	e2840024 	add	r0, r4, #36	; 0x24
 e0126f4:	ebfffc00 	bl	e0116fc <xTaskRemoveFromEventList>
 e0126f8:	e3560000 	cmp	r6, #0
 e0126fc:	13500000 	cmpne	r0, #0
 e012700:	0afffff5 	beq	e0126dc <xQueueGiveFromISR+0x7c>
 e012704:	e3a03001 	mov	r3, #1
 e012708:	e1a05003 	mov	r5, r3
 e01270c:	e5863000 	str	r3, [r6]
 e012710:	eaffffe5 	b	e0126ac <xQueueGiveFromISR+0x4c>

0e012714 <xQueueReceive>:
 e012714:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e012718:	e1a04000 	mov	r4, r0
 e01271c:	e24dd010 	sub	sp, sp, #16
 e012720:	e1a07001 	mov	r7, r1
 e012724:	e58d2004 	str	r2, [sp, #4]
 e012728:	ebfff879 	bl	e010914 <vTaskEnterCritical>
 e01272c:	e5945038 	ldr	r5, [r4, #56]	; 0x38
 e012730:	e3550000 	cmp	r5, #0
 e012734:	1a000045 	bne	e012850 <xQueueReceive+0x13c>
 e012738:	e59d3004 	ldr	r3, [sp, #4]
 e01273c:	e3530000 	cmp	r3, #0
 e012740:	0a000037 	beq	e012824 <xQueueReceive+0x110>
 e012744:	e28d0008 	add	r0, sp, #8
 e012748:	e1a06005 	mov	r6, r5
 e01274c:	e2848024 	add	r8, r4, #36	; 0x24
 e012750:	ebfff814 	bl	e0107a8 <vTaskInternalSetTimeOutState>
 e012754:	ebfff884 	bl	e01096c <vTaskExitCritical>
 e012758:	ebfffd89 	bl	e011d84 <vTaskSuspendAll>
 e01275c:	ebfff86c 	bl	e010914 <vTaskEnterCritical>
 e012760:	e5d43044 	ldrb	r3, [r4, #68]	; 0x44
 e012764:	e35300ff 	cmp	r3, #255	; 0xff
 e012768:	05c46044 	strbeq	r6, [r4, #68]	; 0x44
 e01276c:	e5d43045 	ldrb	r3, [r4, #69]	; 0x45
 e012770:	e35300ff 	cmp	r3, #255	; 0xff
 e012774:	05c46045 	strbeq	r6, [r4, #69]	; 0x45
 e012778:	ebfff87b 	bl	e01096c <vTaskExitCritical>
 e01277c:	e28d1004 	add	r1, sp, #4
 e012780:	e28d0008 	add	r0, sp, #8
 e012784:	ebfffc21 	bl	e011810 <xTaskCheckForTimeOut>
 e012788:	e3500000 	cmp	r0, #0
 e01278c:	1a000015 	bne	e0127e8 <xQueueReceive+0xd4>
 e012790:	ebfff85f 	bl	e010914 <vTaskEnterCritical>
 e012794:	e5943038 	ldr	r3, [r4, #56]	; 0x38
 e012798:	e3530000 	cmp	r3, #0
 e01279c:	1a000024 	bne	e012834 <xQueueReceive+0x120>
 e0127a0:	ebfff871 	bl	e01096c <vTaskExitCritical>
 e0127a4:	e59d1004 	ldr	r1, [sp, #4]
 e0127a8:	e1a00008 	mov	r0, r8
 e0127ac:	ebfffb83 	bl	e0115c0 <vTaskPlaceOnEventList>
 e0127b0:	ebfff857 	bl	e010914 <vTaskEnterCritical>
 e0127b4:	e5943038 	ldr	r3, [r4, #56]	; 0x38
 e0127b8:	e3530000 	cmp	r3, #0
 e0127bc:	0a000021 	beq	e012848 <xQueueReceive+0x134>
 e0127c0:	ebfff869 	bl	e01096c <vTaskExitCritical>
 e0127c4:	e1a00008 	mov	r0, r8
 e0127c8:	ebfffba9 	bl	e011674 <vTaskPlaceRemoveFromEventList>
 e0127cc:	e1a00004 	mov	r0, r4
 e0127d0:	ebfffe61 	bl	e01215c <prvUnlockQueue>
 e0127d4:	ebfffb73 	bl	e0115a8 <xTaskResumeAll>
 e0127d8:	e3500000 	cmp	r0, #0
 e0127dc:	1a000009 	bne	e012808 <xQueueReceive+0xf4>
 e0127e0:	ebfff836 	bl	e0108c0 <vTaskYieldWithinAPI>
 e0127e4:	ea000007 	b	e012808 <xQueueReceive+0xf4>
 e0127e8:	e1a00004 	mov	r0, r4
 e0127ec:	ebfffe5a 	bl	e01215c <prvUnlockQueue>
 e0127f0:	ebfffb6c 	bl	e0115a8 <xTaskResumeAll>
 e0127f4:	ebfff846 	bl	e010914 <vTaskEnterCritical>
 e0127f8:	e5943038 	ldr	r3, [r4, #56]	; 0x38
 e0127fc:	e3530000 	cmp	r3, #0
 e012800:	0a000007 	beq	e012824 <xQueueReceive+0x110>
 e012804:	ebfff858 	bl	e01096c <vTaskExitCritical>
 e012808:	ebfff841 	bl	e010914 <vTaskEnterCritical>
 e01280c:	e5945038 	ldr	r5, [r4, #56]	; 0x38
 e012810:	e3550000 	cmp	r5, #0
 e012814:	1a00000d 	bne	e012850 <xQueueReceive+0x13c>
 e012818:	e59d3004 	ldr	r3, [sp, #4]
 e01281c:	e3530000 	cmp	r3, #0
 e012820:	1affffcb 	bne	e012754 <xQueueReceive+0x40>
 e012824:	ebfff850 	bl	e01096c <vTaskExitCritical>
 e012828:	e3a00000 	mov	r0, #0
 e01282c:	e28dd010 	add	sp, sp, #16
 e012830:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e012834:	ebfff84c 	bl	e01096c <vTaskExitCritical>
 e012838:	e1a00004 	mov	r0, r4
 e01283c:	ebfffe46 	bl	e01215c <prvUnlockQueue>
 e012840:	ebfffb58 	bl	e0115a8 <xTaskResumeAll>
 e012844:	eaffffef 	b	e012808 <xQueueReceive+0xf4>
 e012848:	ebfff847 	bl	e01096c <vTaskExitCritical>
 e01284c:	eaffffde 	b	e0127cc <xQueueReceive+0xb8>
 e012850:	ebfff82f 	bl	e010914 <vTaskEnterCritical>
 e012854:	e5942040 	ldr	r2, [r4, #64]	; 0x40
 e012858:	e3520000 	cmp	r2, #0
 e01285c:	0a000008 	beq	e012884 <xQueueReceive+0x170>
 e012860:	e594100c 	ldr	r1, [r4, #12]
 e012864:	e5943008 	ldr	r3, [r4, #8]
 e012868:	e0811002 	add	r1, r1, r2
 e01286c:	e1510003 	cmp	r1, r3
 e012870:	e584100c 	str	r1, [r4, #12]
 e012874:	e1a00007 	mov	r0, r7
 e012878:	25941000 	ldrcs	r1, [r4]
 e01287c:	2584100c 	strcs	r1, [r4, #12]
 e012880:	ebffb94e 	bl	e000dc0 <memcpy>
 e012884:	ebfff838 	bl	e01096c <vTaskExitCritical>
 e012888:	e2455001 	sub	r5, r5, #1
 e01288c:	e5845038 	str	r5, [r4, #56]	; 0x38
 e012890:	e5943010 	ldr	r3, [r4, #16]
 e012894:	e3530000 	cmp	r3, #0
 e012898:	1a000003 	bne	e0128ac <xQueueReceive+0x198>
 e01289c:	ebfff832 	bl	e01096c <vTaskExitCritical>
 e0128a0:	e3a00001 	mov	r0, #1
 e0128a4:	e28dd010 	add	sp, sp, #16
 e0128a8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e0128ac:	e2840010 	add	r0, r4, #16
 e0128b0:	ebfffb91 	bl	e0116fc <xTaskRemoveFromEventList>
 e0128b4:	e3500000 	cmp	r0, #0
 e0128b8:	0afffff7 	beq	e01289c <xQueueReceive+0x188>
 e0128bc:	ebfff7ff 	bl	e0108c0 <vTaskYieldWithinAPI>
 e0128c0:	eafffff5 	b	e01289c <xQueueReceive+0x188>

0e0128c4 <xQueueSemaphoreTake>:
 e0128c4:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 e0128c8:	e1a04000 	mov	r4, r0
 e0128cc:	e24dd014 	sub	sp, sp, #20
 e0128d0:	e3a06000 	mov	r6, #0
 e0128d4:	e1a05006 	mov	r5, r6
 e0128d8:	e58d1004 	str	r1, [sp, #4]
 e0128dc:	ebfff80c 	bl	e010914 <vTaskEnterCritical>
 e0128e0:	e5943038 	ldr	r3, [r4, #56]	; 0x38
 e0128e4:	e1a07006 	mov	r7, r6
 e0128e8:	e3530000 	cmp	r3, #0
 e0128ec:	1a00003a 	bne	e0129dc <xQueueSemaphoreTake+0x118>
 e0128f0:	e59d3004 	ldr	r3, [sp, #4]
 e0128f4:	e3530000 	cmp	r3, #0
 e0128f8:	0a000067 	beq	e012a9c <xQueueSemaphoreTake+0x1d8>
 e0128fc:	e3550000 	cmp	r5, #0
 e012900:	0a000042 	beq	e012a10 <xQueueSemaphoreTake+0x14c>
 e012904:	ebfff818 	bl	e01096c <vTaskExitCritical>
 e012908:	ebfffd1d 	bl	e011d84 <vTaskSuspendAll>
 e01290c:	ebfff800 	bl	e010914 <vTaskEnterCritical>
 e012910:	e5d43044 	ldrb	r3, [r4, #68]	; 0x44
 e012914:	e35300ff 	cmp	r3, #255	; 0xff
 e012918:	05c47044 	strbeq	r7, [r4, #68]	; 0x44
 e01291c:	e5d43045 	ldrb	r3, [r4, #69]	; 0x45
 e012920:	e35300ff 	cmp	r3, #255	; 0xff
 e012924:	05c47045 	strbeq	r7, [r4, #69]	; 0x45
 e012928:	ebfff80f 	bl	e01096c <vTaskExitCritical>
 e01292c:	e28d1004 	add	r1, sp, #4
 e012930:	e28d0008 	add	r0, sp, #8
 e012934:	ebfffbb5 	bl	e011810 <xTaskCheckForTimeOut>
 e012938:	e3500000 	cmp	r0, #0
 e01293c:	1a000019 	bne	e0129a8 <xQueueSemaphoreTake+0xe4>
 e012940:	ebfff7f3 	bl	e010914 <vTaskEnterCritical>
 e012944:	e5943038 	ldr	r3, [r4, #56]	; 0x38
 e012948:	e3530000 	cmp	r3, #0
 e01294c:	1a000032 	bne	e012a1c <xQueueSemaphoreTake+0x158>
 e012950:	ebfff805 	bl	e01096c <vTaskExitCritical>
 e012954:	e5943000 	ldr	r3, [r4]
 e012958:	e3530000 	cmp	r3, #0
 e01295c:	0a000048 	beq	e012a84 <xQueueSemaphoreTake+0x1c0>
 e012960:	e2845024 	add	r5, r4, #36	; 0x24
 e012964:	e59d1004 	ldr	r1, [sp, #4]
 e012968:	e1a00005 	mov	r0, r5
 e01296c:	ebfffb13 	bl	e0115c0 <vTaskPlaceOnEventList>
 e012970:	ebfff7e7 	bl	e010914 <vTaskEnterCritical>
 e012974:	e5943038 	ldr	r3, [r4, #56]	; 0x38
 e012978:	e3530000 	cmp	r3, #0
 e01297c:	0a000031 	beq	e012a48 <xQueueSemaphoreTake+0x184>
 e012980:	ebfff7f9 	bl	e01096c <vTaskExitCritical>
 e012984:	e1a00005 	mov	r0, r5
 e012988:	ebfffb39 	bl	e011674 <vTaskPlaceRemoveFromEventList>
 e01298c:	e1a00004 	mov	r0, r4
 e012990:	ebfffdf1 	bl	e01215c <prvUnlockQueue>
 e012994:	ebfffb03 	bl	e0115a8 <xTaskResumeAll>
 e012998:	e3500000 	cmp	r0, #0
 e01299c:	1a000009 	bne	e0129c8 <xQueueSemaphoreTake+0x104>
 e0129a0:	ebfff7c6 	bl	e0108c0 <vTaskYieldWithinAPI>
 e0129a4:	ea000007 	b	e0129c8 <xQueueSemaphoreTake+0x104>
 e0129a8:	e1a00004 	mov	r0, r4
 e0129ac:	ebfffdea 	bl	e01215c <prvUnlockQueue>
 e0129b0:	ebfffafc 	bl	e0115a8 <xTaskResumeAll>
 e0129b4:	ebfff7d6 	bl	e010914 <vTaskEnterCritical>
 e0129b8:	e5943038 	ldr	r3, [r4, #56]	; 0x38
 e0129bc:	e3530000 	cmp	r3, #0
 e0129c0:	0a00001a 	beq	e012a30 <xQueueSemaphoreTake+0x16c>
 e0129c4:	ebfff7e8 	bl	e01096c <vTaskExitCritical>
 e0129c8:	ebfff7d1 	bl	e010914 <vTaskEnterCritical>
 e0129cc:	e5943038 	ldr	r3, [r4, #56]	; 0x38
 e0129d0:	e3a05001 	mov	r5, #1
 e0129d4:	e3530000 	cmp	r3, #0
 e0129d8:	0affffc4 	beq	e0128f0 <xQueueSemaphoreTake+0x2c>
 e0129dc:	e5942000 	ldr	r2, [r4]
 e0129e0:	e2433001 	sub	r3, r3, #1
 e0129e4:	e3520000 	cmp	r2, #0
 e0129e8:	e5843038 	str	r3, [r4, #56]	; 0x38
 e0129ec:	0a000035 	beq	e012ac8 <xQueueSemaphoreTake+0x204>
 e0129f0:	e5943010 	ldr	r3, [r4, #16]
 e0129f4:	e3530000 	cmp	r3, #0
 e0129f8:	1a00002c 	bne	e012ab0 <xQueueSemaphoreTake+0x1ec>
 e0129fc:	e3a06001 	mov	r6, #1
 e012a00:	ebfff7d9 	bl	e01096c <vTaskExitCritical>
 e012a04:	e1a00006 	mov	r0, r6
 e012a08:	e28dd014 	add	sp, sp, #20
 e012a0c:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
 e012a10:	e28d0008 	add	r0, sp, #8
 e012a14:	ebfff763 	bl	e0107a8 <vTaskInternalSetTimeOutState>
 e012a18:	eaffffb9 	b	e012904 <xQueueSemaphoreTake+0x40>
 e012a1c:	ebfff7d2 	bl	e01096c <vTaskExitCritical>
 e012a20:	e1a00004 	mov	r0, r4
 e012a24:	ebfffdcc 	bl	e01215c <prvUnlockQueue>
 e012a28:	ebfffade 	bl	e0115a8 <xTaskResumeAll>
 e012a2c:	eaffffe5 	b	e0129c8 <xQueueSemaphoreTake+0x104>
 e012a30:	ebfff7cd 	bl	e01096c <vTaskExitCritical>
 e012a34:	e3560000 	cmp	r6, #0
 e012a38:	1a000004 	bne	e012a50 <xQueueSemaphoreTake+0x18c>
 e012a3c:	e1a00006 	mov	r0, r6
 e012a40:	e28dd014 	add	sp, sp, #20
 e012a44:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
 e012a48:	ebfff7c7 	bl	e01096c <vTaskExitCritical>
 e012a4c:	eaffffce 	b	e01298c <xQueueSemaphoreTake+0xc8>
 e012a50:	ebfff7af 	bl	e010914 <vTaskEnterCritical>
 e012a54:	e5941024 	ldr	r1, [r4, #36]	; 0x24
 e012a58:	e5940008 	ldr	r0, [r4, #8]
 e012a5c:	e3510000 	cmp	r1, #0
 e012a60:	e3a06000 	mov	r6, #0
 e012a64:	15943030 	ldrne	r3, [r4, #48]	; 0x30
 e012a68:	15931000 	ldrne	r1, [r3]
 e012a6c:	1261100b 	rsbne	r1, r1, #11
 e012a70:	ebfffc37 	bl	e011b54 <vTaskPriorityDisinheritAfterTimeout>
 e012a74:	ebfff7bc 	bl	e01096c <vTaskExitCritical>
 e012a78:	e1a00006 	mov	r0, r6
 e012a7c:	e28dd014 	add	sp, sp, #20
 e012a80:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
 e012a84:	ebfff7a2 	bl	e010914 <vTaskEnterCritical>
 e012a88:	e5940008 	ldr	r0, [r4, #8]
 e012a8c:	ebfffb9c 	bl	e011904 <xTaskPriorityInherit>
 e012a90:	e1a06000 	mov	r6, r0
 e012a94:	ebfff7b4 	bl	e01096c <vTaskExitCritical>
 e012a98:	eaffffb0 	b	e012960 <xQueueSemaphoreTake+0x9c>
 e012a9c:	e1a06003 	mov	r6, r3
 e012aa0:	ebfff7b1 	bl	e01096c <vTaskExitCritical>
 e012aa4:	e1a00006 	mov	r0, r6
 e012aa8:	e28dd014 	add	sp, sp, #20
 e012aac:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
 e012ab0:	e2840010 	add	r0, r4, #16
 e012ab4:	ebfffb10 	bl	e0116fc <xTaskRemoveFromEventList>
 e012ab8:	e3500000 	cmp	r0, #0
 e012abc:	0affffce 	beq	e0129fc <xQueueSemaphoreTake+0x138>
 e012ac0:	ebfff77e 	bl	e0108c0 <vTaskYieldWithinAPI>
 e012ac4:	eaffffcc 	b	e0129fc <xQueueSemaphoreTake+0x138>
 e012ac8:	ebfffce9 	bl	e011e74 <pvTaskIncrementMutexHeldCount>
 e012acc:	e5840008 	str	r0, [r4, #8]
 e012ad0:	eaffffc6 	b	e0129f0 <xQueueSemaphoreTake+0x12c>

0e012ad4 <xQueueReceiveFromISR>:
 e012ad4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e012ad8:	e1a04000 	mov	r4, r0
 e012adc:	e1a08001 	mov	r8, r1
 e012ae0:	e1a07002 	mov	r7, r2
 e012ae4:	ebfff78a 	bl	e010914 <vTaskEnterCritical>
 e012ae8:	e5945038 	ldr	r5, [r4, #56]	; 0x38
 e012aec:	e3550000 	cmp	r5, #0
 e012af0:	1a000002 	bne	e012b00 <xQueueReceiveFromISR+0x2c>
 e012af4:	ebfff79c 	bl	e01096c <vTaskExitCritical>
 e012af8:	e1a00005 	mov	r0, r5
 e012afc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e012b00:	e5d46044 	ldrb	r6, [r4, #68]	; 0x44
 e012b04:	ebfff782 	bl	e010914 <vTaskEnterCritical>
 e012b08:	e5942040 	ldr	r2, [r4, #64]	; 0x40
 e012b0c:	e6af6076 	sxtb	r6, r6
 e012b10:	e3520000 	cmp	r2, #0
 e012b14:	1a000009 	bne	e012b40 <xQueueReceiveFromISR+0x6c>
 e012b18:	ebfff793 	bl	e01096c <vTaskExitCritical>
 e012b1c:	e2455001 	sub	r5, r5, #1
 e012b20:	e3760001 	cmn	r6, #1
 e012b24:	e5845038 	str	r5, [r4, #56]	; 0x38
 e012b28:	0a00000e 	beq	e012b68 <xQueueReceiveFromISR+0x94>
 e012b2c:	e2866001 	add	r6, r6, #1
 e012b30:	e3a05001 	mov	r5, #1
 e012b34:	e6af6076 	sxtb	r6, r6
 e012b38:	e5c46044 	strb	r6, [r4, #68]	; 0x44
 e012b3c:	eaffffec 	b	e012af4 <xQueueReceiveFromISR+0x20>
 e012b40:	e594100c 	ldr	r1, [r4, #12]
 e012b44:	e5943008 	ldr	r3, [r4, #8]
 e012b48:	e0811002 	add	r1, r1, r2
 e012b4c:	e1510003 	cmp	r1, r3
 e012b50:	e584100c 	str	r1, [r4, #12]
 e012b54:	e1a00008 	mov	r0, r8
 e012b58:	25941000 	ldrcs	r1, [r4]
 e012b5c:	2584100c 	strcs	r1, [r4, #12]
 e012b60:	ebffb896 	bl	e000dc0 <memcpy>
 e012b64:	eaffffeb 	b	e012b18 <xQueueReceiveFromISR+0x44>
 e012b68:	e5943010 	ldr	r3, [r4, #16]
 e012b6c:	e3530000 	cmp	r3, #0
 e012b70:	1a000001 	bne	e012b7c <xQueueReceiveFromISR+0xa8>
 e012b74:	e3a05001 	mov	r5, #1
 e012b78:	eaffffdd 	b	e012af4 <xQueueReceiveFromISR+0x20>
 e012b7c:	e2840010 	add	r0, r4, #16
 e012b80:	ebfffadd 	bl	e0116fc <xTaskRemoveFromEventList>
 e012b84:	e3570000 	cmp	r7, #0
 e012b88:	13500000 	cmpne	r0, #0
 e012b8c:	13a03001 	movne	r3, #1
 e012b90:	11a05003 	movne	r5, r3
 e012b94:	15873000 	strne	r3, [r7]
 e012b98:	0afffff5 	beq	e012b74 <xQueueReceiveFromISR+0xa0>
 e012b9c:	eaffffd4 	b	e012af4 <xQueueReceiveFromISR+0x20>

0e012ba0 <vQueueAddToRegistry>:
 e012ba0:	e308c374 	movw	ip, #33652	; 0x8374
 e012ba4:	e346c00a 	movt	ip, #24586	; 0x600a
 e012ba8:	e3a03000 	mov	r3, #0
 e012bac:	ea000002 	b	e012bbc <vQueueAddToRegistry+0x1c>
 e012bb0:	e2833001 	add	r3, r3, #1
 e012bb4:	e3530008 	cmp	r3, #8
 e012bb8:	012fff1e 	bxeq	lr
 e012bbc:	e79c2183 	ldr	r2, [ip, r3, lsl #3]
 e012bc0:	e3520000 	cmp	r2, #0
 e012bc4:	1afffff9 	bne	e012bb0 <vQueueAddToRegistry+0x10>
 e012bc8:	e08c2183 	add	r2, ip, r3, lsl #3
 e012bcc:	e78c1183 	str	r1, [ip, r3, lsl #3]
 e012bd0:	e5820004 	str	r0, [r2, #4]
 e012bd4:	e12fff1e 	bx	lr

0e012bd8 <vQueueWaitForMessageRestricted>:
 e012bd8:	e92d4070 	push	{r4, r5, r6, lr}
 e012bdc:	e1a04000 	mov	r4, r0
 e012be0:	e1a06001 	mov	r6, r1
 e012be4:	e1a05002 	mov	r5, r2
 e012be8:	ebfff749 	bl	e010914 <vTaskEnterCritical>
 e012bec:	e5d43044 	ldrb	r3, [r4, #68]	; 0x44
 e012bf0:	e35300ff 	cmp	r3, #255	; 0xff
 e012bf4:	03a03000 	moveq	r3, #0
 e012bf8:	05c43044 	strbeq	r3, [r4, #68]	; 0x44
 e012bfc:	e5d43045 	ldrb	r3, [r4, #69]	; 0x45
 e012c00:	e35300ff 	cmp	r3, #255	; 0xff
 e012c04:	03a03000 	moveq	r3, #0
 e012c08:	05c43045 	strbeq	r3, [r4, #69]	; 0x45
 e012c0c:	ebfff756 	bl	e01096c <vTaskExitCritical>
 e012c10:	e5943038 	ldr	r3, [r4, #56]	; 0x38
 e012c14:	e3530000 	cmp	r3, #0
 e012c18:	0a000002 	beq	e012c28 <vQueueWaitForMessageRestricted+0x50>
 e012c1c:	e1a00004 	mov	r0, r4
 e012c20:	e8bd4070 	pop	{r4, r5, r6, lr}
 e012c24:	eafffd4c 	b	e01215c <prvUnlockQueue>
 e012c28:	e2840024 	add	r0, r4, #36	; 0x24
 e012c2c:	e1a02005 	mov	r2, r5
 e012c30:	e1a01006 	mov	r1, r6
 e012c34:	ebfffa76 	bl	e011614 <vTaskPlaceOnEventListRestricted>
 e012c38:	e1a00004 	mov	r0, r4
 e012c3c:	e8bd4070 	pop	{r4, r5, r6, lr}
 e012c40:	eafffd45 	b	e01215c <prvUnlockQueue>

0e012c44 <prvCheckForValidListAndQueue>:
 e012c44:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 e012c48:	e308448c 	movw	r4, #33932	; 0x848c
 e012c4c:	e346400a 	movt	r4, #24586	; 0x600a
 e012c50:	e24dd00c 	sub	sp, sp, #12
 e012c54:	ebfff72e 	bl	e010914 <vTaskEnterCritical>
 e012c58:	e5945000 	ldr	r5, [r4]
 e012c5c:	e3550000 	cmp	r5, #0
 e012c60:	0a000002 	beq	e012c70 <prvCheckForValidListAndQueue+0x2c>
 e012c64:	e28dd00c 	add	sp, sp, #12
 e012c68:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
 e012c6c:	eafff73e 	b	e01096c <vTaskExitCritical>
 e012c70:	e308740c 	movw	r7, #33804	; 0x840c
 e012c74:	e346700a 	movt	r7, #24586	; 0x600a
 e012c78:	e1a00007 	mov	r0, r7
 e012c7c:	e3086420 	movw	r6, #33824	; 0x8420
 e012c80:	e346600a 	movt	r6, #24586	; 0x600a
 e012c84:	ebfffc99 	bl	e011ef0 <vListInitialise>
 e012c88:	e1a00006 	mov	r0, r6
 e012c8c:	ebfffc97 	bl	e011ef0 <vListInitialise>
 e012c90:	e30823b4 	movw	r2, #33716	; 0x83b4
 e012c94:	e346200a 	movt	r2, #24586	; 0x600a
 e012c98:	e58d5000 	str	r5, [sp]
 e012c9c:	e3a01010 	mov	r1, #16
 e012ca0:	e5827000 	str	r7, [r2]
 e012ca4:	e30823b8 	movw	r2, #33720	; 0x83b8
 e012ca8:	e346200a 	movt	r2, #24586	; 0x600a
 e012cac:	e3a00005 	mov	r0, #5
 e012cb0:	e3083438 	movw	r3, #33848	; 0x8438
 e012cb4:	e346300a 	movt	r3, #24586	; 0x600a
 e012cb8:	e5826000 	str	r6, [r2]
 e012cbc:	e30823bc 	movw	r2, #33724	; 0x83bc
 e012cc0:	e346200a 	movt	r2, #24586	; 0x600a
 e012cc4:	ebfffd63 	bl	e012258 <xQueueGenericCreateStatic>
 e012cc8:	e3500000 	cmp	r0, #0
 e012ccc:	e5840000 	str	r0, [r4]
 e012cd0:	0affffe3 	beq	e012c64 <prvCheckForValidListAndQueue+0x20>
 e012cd4:	e3051420 	movw	r1, #21536	; 0x5420
 e012cd8:	e3401e01 	movt	r1, #3585	; 0xe01
 e012cdc:	ebffffaf 	bl	e012ba0 <vQueueAddToRegistry>
 e012ce0:	eaffffdf 	b	e012c64 <prvCheckForValidListAndQueue+0x20>

0e012ce4 <xTimerCreateTimerTask>:
 e012ce4:	e92d4010 	push	{r4, lr}
 e012ce8:	e24dd020 	sub	sp, sp, #32
 e012cec:	ebffffd4 	bl	e012c44 <prvCheckForValidListAndQueue>
 e012cf0:	e308348c 	movw	r3, #33932	; 0x848c
 e012cf4:	e346300a 	movt	r3, #24586	; 0x600a
 e012cf8:	e5930000 	ldr	r0, [r3]
 e012cfc:	e3500000 	cmp	r0, #0
 e012d00:	0a000018 	beq	e012d68 <xTimerCreateTimerTask+0x84>
 e012d04:	e28d201c 	add	r2, sp, #28
 e012d08:	e28d1018 	add	r1, sp, #24
 e012d0c:	e28d0014 	add	r0, sp, #20
 e012d10:	e3a04000 	mov	r4, #0
 e012d14:	e58d4014 	str	r4, [sp, #20]
 e012d18:	e58d4018 	str	r4, [sp, #24]
 e012d1c:	ebfff328 	bl	e00f9c4 <vApplicationGetTimerTaskMemory>
 e012d20:	e59d0018 	ldr	r0, [sp, #24]
 e012d24:	e59dc014 	ldr	ip, [sp, #20]
 e012d28:	e59d201c 	ldr	r2, [sp, #28]
 e012d2c:	e3a0100a 	mov	r1, #10
 e012d30:	e1a03004 	mov	r3, r4
 e012d34:	e98d1001 	stmib	sp, {r0, ip}
 e012d38:	e58d1000 	str	r1, [sp]
 e012d3c:	e3020ea8 	movw	r0, #11944	; 0x2ea8
 e012d40:	e3400e01 	movt	r0, #3585	; 0xe01
 e012d44:	e3051428 	movw	r1, #21544	; 0x5428
 e012d48:	e3401e01 	movt	r1, #3585	; 0xe01
 e012d4c:	ebfff7b9 	bl	e010c38 <xTaskCreateStatic>
 e012d50:	e3082490 	movw	r2, #33936	; 0x8490
 e012d54:	e346200a 	movt	r2, #24586	; 0x600a
 e012d58:	e1a03000 	mov	r3, r0
 e012d5c:	e0500004 	subs	r0, r0, r4
 e012d60:	13a00001 	movne	r0, #1
 e012d64:	e5823000 	str	r3, [r2]
 e012d68:	e28dd020 	add	sp, sp, #32
 e012d6c:	e8bd8010 	pop	{r4, pc}

0e012d70 <xTimerGenericCommand>:
 e012d70:	e92d4010 	push	{r4, lr}
 e012d74:	e308448c 	movw	r4, #33932	; 0x848c
 e012d78:	e346400a 	movt	r4, #24586	; 0x600a
 e012d7c:	e1a0c000 	mov	ip, r0
 e012d80:	e24dd010 	sub	sp, sp, #16
 e012d84:	e5940000 	ldr	r0, [r4]
 e012d88:	e3500000 	cmp	r0, #0
 e012d8c:	0a00000e 	beq	e012dcc <xTimerGenericCommand+0x5c>
 e012d90:	e3510005 	cmp	r1, #5
 e012d94:	e58d2004 	str	r2, [sp, #4]
 e012d98:	e58d1000 	str	r1, [sp]
 e012d9c:	e58dc008 	str	ip, [sp, #8]
 e012da0:	ca00000b 	bgt	e012dd4 <xTimerGenericCommand+0x64>
 e012da4:	ebfff6ae 	bl	e010864 <xTaskGetSchedulerState>
 e012da8:	e3500002 	cmp	r0, #2
 e012dac:	13a03000 	movne	r3, #0
 e012db0:	03a03000 	moveq	r3, #0
 e012db4:	05940000 	ldreq	r0, [r4]
 e012db8:	059d2018 	ldreq	r2, [sp, #24]
 e012dbc:	15940000 	ldrne	r0, [r4]
 e012dc0:	11a02003 	movne	r2, r3
 e012dc4:	e1a0100d 	mov	r1, sp
 e012dc8:	ebfffd78 	bl	e0123b0 <xQueueGenericSend>
 e012dcc:	e28dd010 	add	sp, sp, #16
 e012dd0:	e8bd8010 	pop	{r4, pc}
 e012dd4:	e1a0e003 	mov	lr, r3
 e012dd8:	e1a0200e 	mov	r2, lr
 e012ddc:	e3a03000 	mov	r3, #0
 e012de0:	e1a0100d 	mov	r1, sp
 e012de4:	ebfffde7 	bl	e012588 <xQueueGenericSendFromISR>
 e012de8:	e28dd010 	add	sp, sp, #16
 e012dec:	e8bd8010 	pop	{r4, pc}

0e012df0 <prvSwitchTimerLists>:
 e012df0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e012df4:	e30863b4 	movw	r6, #33716	; 0x83b4
 e012df8:	e346600a 	movt	r6, #24586	; 0x600a
 e012dfc:	e24dd008 	sub	sp, sp, #8
 e012e00:	e3a07000 	mov	r7, #0
 e012e04:	ea00000b 	b	e012e38 <prvSwitchTimerLists+0x48>
 e012e08:	e593300c 	ldr	r3, [r3, #12]
 e012e0c:	e593400c 	ldr	r4, [r3, #12]
 e012e10:	e5938000 	ldr	r8, [r3]
 e012e14:	e2845004 	add	r5, r4, #4
 e012e18:	e1a00005 	mov	r0, r5
 e012e1c:	ebfffc60 	bl	e011fa4 <uxListRemove>
 e012e20:	e5943020 	ldr	r3, [r4, #32]
 e012e24:	e1a00004 	mov	r0, r4
 e012e28:	e12fff33 	blx	r3
 e012e2c:	e5d43028 	ldrb	r3, [r4, #40]	; 0x28
 e012e30:	e3130004 	tst	r3, #4
 e012e34:	1a00000a 	bne	e012e64 <prvSwitchTimerLists+0x74>
 e012e38:	e5963000 	ldr	r3, [r6]
 e012e3c:	e5932000 	ldr	r2, [r3]
 e012e40:	e3520000 	cmp	r2, #0
 e012e44:	1affffef 	bne	e012e08 <prvSwitchTimerLists+0x18>
 e012e48:	e30823b8 	movw	r2, #33720	; 0x83b8
 e012e4c:	e346200a 	movt	r2, #24586	; 0x600a
 e012e50:	e5921000 	ldr	r1, [r2]
 e012e54:	e5861000 	str	r1, [r6]
 e012e58:	e5823000 	str	r3, [r2]
 e012e5c:	e28dd008 	add	sp, sp, #8
 e012e60:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e012e64:	e594c018 	ldr	ip, [r4, #24]
 e012e68:	e3a03000 	mov	r3, #0
 e012e6c:	e088c00c 	add	ip, r8, ip
 e012e70:	e1a01005 	mov	r1, r5
 e012e74:	e1a00004 	mov	r0, r4
 e012e78:	e158000c 	cmp	r8, ip
 e012e7c:	e1a02008 	mov	r2, r8
 e012e80:	2a000004 	bcs	e012e98 <prvSwitchTimerLists+0xa8>
 e012e84:	e5960000 	ldr	r0, [r6]
 e012e88:	e584c004 	str	ip, [r4, #4]
 e012e8c:	e5844010 	str	r4, [r4, #16]
 e012e90:	ebfffc2d 	bl	e011f4c <vListInsert>
 e012e94:	eaffffe7 	b	e012e38 <prvSwitchTimerLists+0x48>
 e012e98:	e1a01003 	mov	r1, r3
 e012e9c:	e58d7000 	str	r7, [sp]
 e012ea0:	ebffffb2 	bl	e012d70 <xTimerGenericCommand>
 e012ea4:	eaffffe3 	b	e012e38 <prvSwitchTimerLists+0x48>

0e012ea8 <prvTimerTask>:
 e012ea8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e012eac:	e30863b4 	movw	r6, #33716	; 0x83b4
 e012eb0:	e346600a 	movt	r6, #24586	; 0x600a
 e012eb4:	e3085434 	movw	r5, #33844	; 0x8434
 e012eb8:	e346500a 	movt	r5, #24586	; 0x600a
 e012ebc:	e30873b8 	movw	r7, #33720	; 0x83b8
 e012ec0:	e346700a 	movt	r7, #24586	; 0x600a
 e012ec4:	e308448c 	movw	r4, #33932	; 0x848c
 e012ec8:	e346400a 	movt	r4, #24586	; 0x600a
 e012ecc:	e24dd01c 	sub	sp, sp, #28
 e012ed0:	e5963000 	ldr	r3, [r6]
 e012ed4:	e593a000 	ldr	sl, [r3]
 e012ed8:	e35a0000 	cmp	sl, #0
 e012edc:	0a000077 	beq	e0130c0 <prvTimerTask+0x218>
 e012ee0:	e593300c 	ldr	r3, [r3, #12]
 e012ee4:	e593a000 	ldr	sl, [r3]
 e012ee8:	ebfffba5 	bl	e011d84 <vTaskSuspendAll>
 e012eec:	ebfff444 	bl	e010004 <xTaskGetTickCount>
 e012ef0:	e5953000 	ldr	r3, [r5]
 e012ef4:	e1a09000 	mov	r9, r0
 e012ef8:	e1500003 	cmp	r0, r3
 e012efc:	3a000075 	bcc	e0130d8 <prvTimerTask+0x230>
 e012f00:	e15a0000 	cmp	sl, r0
 e012f04:	83a02000 	movhi	r2, #0
 e012f08:	e5850000 	str	r0, [r5]
 e012f0c:	8a00007a 	bhi	e0130fc <prvTimerTask+0x254>
 e012f10:	ebfff9a4 	bl	e0115a8 <xTaskResumeAll>
 e012f14:	e5963000 	ldr	r3, [r6]
 e012f18:	e593300c 	ldr	r3, [r3, #12]
 e012f1c:	e593b00c 	ldr	fp, [r3, #12]
 e012f20:	e28b8004 	add	r8, fp, #4
 e012f24:	e1a00008 	mov	r0, r8
 e012f28:	ebfffc1d 	bl	e011fa4 <uxListRemove>
 e012f2c:	e5db3028 	ldrb	r3, [fp, #40]	; 0x28
 e012f30:	e3130004 	tst	r3, #4
 e012f34:	03c33001 	biceq	r3, r3, #1
 e012f38:	05cb3028 	strbeq	r3, [fp, #40]	; 0x28
 e012f3c:	1a000091 	bne	e013188 <prvTimerTask+0x2e0>
 e012f40:	e59b3020 	ldr	r3, [fp, #32]
 e012f44:	e1a0000b 	mov	r0, fp
 e012f48:	e12fff33 	blx	r3
 e012f4c:	e5940000 	ldr	r0, [r4]
 e012f50:	e3a02000 	mov	r2, #0
 e012f54:	e28d1008 	add	r1, sp, #8
 e012f58:	ebfffded 	bl	e012714 <xQueueReceive>
 e012f5c:	e3500000 	cmp	r0, #0
 e012f60:	0affffda 	beq	e012ed0 <prvTimerTask+0x28>
 e012f64:	e59d3008 	ldr	r3, [sp, #8]
 e012f68:	e59d0010 	ldr	r0, [sp, #16]
 e012f6c:	e3530000 	cmp	r3, #0
 e012f70:	ba000023 	blt	e013004 <prvTimerTask+0x15c>
 e012f74:	e59d9010 	ldr	r9, [sp, #16]
 e012f78:	e5993014 	ldr	r3, [r9, #20]
 e012f7c:	e3530000 	cmp	r3, #0
 e012f80:	0a000001 	beq	e012f8c <prvTimerTask+0xe4>
 e012f84:	e2890004 	add	r0, r9, #4
 e012f88:	ebfffc05 	bl	e011fa4 <uxListRemove>
 e012f8c:	ebfff41c 	bl	e010004 <xTaskGetTickCount>
 e012f90:	e5953000 	ldr	r3, [r5]
 e012f94:	e1a0a000 	mov	sl, r0
 e012f98:	e1500003 	cmp	r0, r3
 e012f9c:	3a00005e 	bcc	e01311c <prvTimerTask+0x274>
 e012fa0:	e59d3008 	ldr	r3, [sp, #8]
 e012fa4:	e585a000 	str	sl, [r5]
 e012fa8:	e3530005 	cmp	r3, #5
 e012fac:	0a00005f 	beq	e013130 <prvTimerTask+0x288>
 e012fb0:	ca00003a 	bgt	e0130a0 <prvTimerTask+0x1f8>
 e012fb4:	e3530003 	cmp	r3, #3
 e012fb8:	0a000064 	beq	e013150 <prvTimerTask+0x2a8>
 e012fbc:	e3530004 	cmp	r3, #4
 e012fc0:	1a000016 	bne	e013020 <prvTimerTask+0x178>
 e012fc4:	e59d200c 	ldr	r2, [sp, #12]
 e012fc8:	e5d93028 	ldrb	r3, [r9, #40]	; 0x28
 e012fcc:	e082100a 	add	r1, r2, sl
 e012fd0:	e3833001 	orr	r3, r3, #1
 e012fd4:	e151000a 	cmp	r1, sl
 e012fd8:	e5c93028 	strb	r3, [r9, #40]	; 0x28
 e012fdc:	e5892018 	str	r2, [r9, #24]
 e012fe0:	e5891004 	str	r1, [r9, #4]
 e012fe4:	e5899010 	str	r9, [r9, #16]
 e012fe8:	8a000062 	bhi	e013178 <prvTimerTask+0x2d0>
 e012fec:	e3520000 	cmp	r2, #0
 e012ff0:	0affffd5 	beq	e012f4c <prvTimerTask+0xa4>
 e012ff4:	e5970000 	ldr	r0, [r7]
 e012ff8:	e2891004 	add	r1, r9, #4
 e012ffc:	ebfffbd2 	bl	e011f4c <vListInsert>
 e013000:	eaffffd1 	b	e012f4c <prvTimerTask+0xa4>
 e013004:	e59d300c 	ldr	r3, [sp, #12]
 e013008:	e59d1014 	ldr	r1, [sp, #20]
 e01300c:	e12fff33 	blx	r3
 e013010:	e59d3008 	ldr	r3, [sp, #8]
 e013014:	e3530000 	cmp	r3, #0
 e013018:	baffffcb 	blt	e012f4c <prvTimerTask+0xa4>
 e01301c:	eaffffd4 	b	e012f74 <prvTimerTask+0xcc>
 e013020:	e3530002 	cmp	r3, #2
 e013024:	8affffc8 	bhi	e012f4c <prvTimerTask+0xa4>
 e013028:	e59d300c 	ldr	r3, [sp, #12]
 e01302c:	e5990018 	ldr	r0, [r9, #24]
 e013030:	e5d92028 	ldrb	r2, [r9, #40]	; 0x28
 e013034:	e093c000 	adds	ip, r3, r0
 e013038:	e3822001 	orr	r2, r2, #1
 e01303c:	23a01001 	movcs	r1, #1
 e013040:	33a01000 	movcc	r1, #0
 e013044:	e5c92028 	strb	r2, [r9, #40]	; 0x28
 e013048:	e15c000a 	cmp	ip, sl
 e01304c:	e589c004 	str	ip, [r9, #4]
 e013050:	e5899010 	str	r9, [r9, #16]
 e013054:	8a000041 	bhi	e013160 <prvTimerTask+0x2b8>
 e013058:	e04a3003 	sub	r3, sl, r3
 e01305c:	e1500003 	cmp	r0, r3
 e013060:	8affffe3 	bhi	e012ff4 <prvTimerTask+0x14c>
 e013064:	e5993020 	ldr	r3, [r9, #32]
 e013068:	e1a00009 	mov	r0, r9
 e01306c:	e12fff33 	blx	r3
 e013070:	e5d93028 	ldrb	r3, [r9, #40]	; 0x28
 e013074:	e3130004 	tst	r3, #4
 e013078:	0affffb3 	beq	e012f4c <prvTimerTask+0xa4>
 e01307c:	e5992018 	ldr	r2, [r9, #24]
 e013080:	e59d100c 	ldr	r1, [sp, #12]
 e013084:	e3a03000 	mov	r3, #0
 e013088:	e0812002 	add	r2, r1, r2
 e01308c:	e1a00009 	mov	r0, r9
 e013090:	e1a01003 	mov	r1, r3
 e013094:	e58d3000 	str	r3, [sp]
 e013098:	ebffff34 	bl	e012d70 <xTimerGenericCommand>
 e01309c:	eaffffaa 	b	e012f4c <prvTimerTask+0xa4>
 e0130a0:	e3530008 	cmp	r3, #8
 e0130a4:	0a000029 	beq	e013150 <prvTimerTask+0x2a8>
 e0130a8:	da000002 	ble	e0130b8 <prvTimerTask+0x210>
 e0130ac:	e3530009 	cmp	r3, #9
 e0130b0:	0affffc3 	beq	e012fc4 <prvTimerTask+0x11c>
 e0130b4:	eaffffa4 	b	e012f4c <prvTimerTask+0xa4>
 e0130b8:	1affffda 	bne	e013028 <prvTimerTask+0x180>
 e0130bc:	eaffffa2 	b	e012f4c <prvTimerTask+0xa4>
 e0130c0:	ebfffb2f 	bl	e011d84 <vTaskSuspendAll>
 e0130c4:	ebfff3ce 	bl	e010004 <xTaskGetTickCount>
 e0130c8:	e5953000 	ldr	r3, [r5]
 e0130cc:	e1a09000 	mov	r9, r0
 e0130d0:	e1500003 	cmp	r0, r3
 e0130d4:	2a000003 	bcs	e0130e8 <prvTimerTask+0x240>
 e0130d8:	ebffff44 	bl	e012df0 <prvSwitchTimerLists>
 e0130dc:	e5859000 	str	r9, [r5]
 e0130e0:	ebfff930 	bl	e0115a8 <xTaskResumeAll>
 e0130e4:	eaffff98 	b	e012f4c <prvTimerTask+0xa4>
 e0130e8:	e5973000 	ldr	r3, [r7]
 e0130ec:	e5859000 	str	r9, [r5]
 e0130f0:	e5932000 	ldr	r2, [r3]
 e0130f4:	e16f2f12 	clz	r2, r2
 e0130f8:	e1a022a2 	lsr	r2, r2, #5
 e0130fc:	e5940000 	ldr	r0, [r4]
 e013100:	e04a1009 	sub	r1, sl, r9
 e013104:	ebfffeb3 	bl	e012bd8 <vQueueWaitForMessageRestricted>
 e013108:	ebfff926 	bl	e0115a8 <xTaskResumeAll>
 e01310c:	e3500000 	cmp	r0, #0
 e013110:	1affff8d 	bne	e012f4c <prvTimerTask+0xa4>
 e013114:	ebfff5e9 	bl	e0108c0 <vTaskYieldWithinAPI>
 e013118:	eaffff8b 	b	e012f4c <prvTimerTask+0xa4>
 e01311c:	ebffff33 	bl	e012df0 <prvSwitchTimerLists>
 e013120:	e59d3008 	ldr	r3, [sp, #8]
 e013124:	e585a000 	str	sl, [r5]
 e013128:	e3530005 	cmp	r3, #5
 e01312c:	1affff9f 	bne	e012fb0 <prvTimerTask+0x108>
 e013130:	e5d93028 	ldrb	r3, [r9, #40]	; 0x28
 e013134:	e3130002 	tst	r3, #2
 e013138:	13c33001 	bicne	r3, r3, #1
 e01313c:	15c93028 	strbne	r3, [r9, #40]	; 0x28
 e013140:	1affff81 	bne	e012f4c <prvTimerTask+0xa4>
 e013144:	e1a00009 	mov	r0, r9
 e013148:	eb000095 	bl	e0133a4 <vPortFree>
 e01314c:	eaffff7e 	b	e012f4c <prvTimerTask+0xa4>
 e013150:	e5d93028 	ldrb	r3, [r9, #40]	; 0x28
 e013154:	e3c33001 	bic	r3, r3, #1
 e013158:	e5c93028 	strb	r3, [r9, #40]	; 0x28
 e01315c:	eaffff7a 	b	e012f4c <prvTimerTask+0xa4>
 e013160:	e2211001 	eor	r1, r1, #1
 e013164:	e153000a 	cmp	r3, sl
 e013168:	93a01000 	movls	r1, #0
 e01316c:	82011001 	andhi	r1, r1, #1
 e013170:	e3510000 	cmp	r1, #0
 e013174:	1affffba 	bne	e013064 <prvTimerTask+0x1bc>
 e013178:	e5960000 	ldr	r0, [r6]
 e01317c:	e2891004 	add	r1, r9, #4
 e013180:	ebfffb71 	bl	e011f4c <vListInsert>
 e013184:	eaffff70 	b	e012f4c <prvTimerTask+0xa4>
 e013188:	e59b2018 	ldr	r2, [fp, #24]
 e01318c:	e58bb010 	str	fp, [fp, #16]
 e013190:	e08a3002 	add	r3, sl, r2
 e013194:	e1590003 	cmp	r9, r3
 e013198:	e58b3004 	str	r3, [fp, #4]
 e01319c:	3a000009 	bcc	e0131c8 <prvTimerTask+0x320>
 e0131a0:	e049900a 	sub	r9, r9, sl
 e0131a4:	e1520009 	cmp	r2, r9
 e0131a8:	8a00000a 	bhi	e0131d8 <prvTimerTask+0x330>
 e0131ac:	e3a03000 	mov	r3, #0
 e0131b0:	e1a0200a 	mov	r2, sl
 e0131b4:	e1a01003 	mov	r1, r3
 e0131b8:	e1a0000b 	mov	r0, fp
 e0131bc:	e58d3000 	str	r3, [sp]
 e0131c0:	ebfffeea 	bl	e012d70 <xTimerGenericCommand>
 e0131c4:	eaffff5d 	b	e012f40 <prvTimerTask+0x98>
 e0131c8:	e5960000 	ldr	r0, [r6]
 e0131cc:	e1a01008 	mov	r1, r8
 e0131d0:	ebfffb5d 	bl	e011f4c <vListInsert>
 e0131d4:	eaffff59 	b	e012f40 <prvTimerTask+0x98>
 e0131d8:	e5970000 	ldr	r0, [r7]
 e0131dc:	e1a01008 	mov	r1, r8
 e0131e0:	ebfffb59 	bl	e011f4c <vListInsert>
 e0131e4:	eaffff55 	b	e012f40 <prvTimerTask+0x98>

0e0131e8 <prvInsertBlockIntoFreeList>:
 e0131e8:	e30834ac 	movw	r3, #33964	; 0x84ac
 e0131ec:	e346300a 	movt	r3, #24586	; 0x600a
 e0131f0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e0131f4:	e1a02003 	mov	r2, r3
 e0131f8:	e5933000 	ldr	r3, [r3]
 e0131fc:	e1530000 	cmp	r3, r0
 e013200:	3afffffb 	bcc	e0131f4 <prvInsertBlockIntoFreeList+0xc>
 e013204:	e592c004 	ldr	ip, [r2, #4]
 e013208:	e5901004 	ldr	r1, [r0, #4]
 e01320c:	e082e00c 	add	lr, r2, ip
 e013210:	e150000e 	cmp	r0, lr
 e013214:	0081100c 	addeq	r1, r1, ip
 e013218:	01a00002 	moveq	r0, r2
 e01321c:	e080c001 	add	ip, r0, r1
 e013220:	05821004 	streq	r1, [r2, #4]
 e013224:	e153000c 	cmp	r3, ip
 e013228:	0a000003 	beq	e01323c <prvInsertBlockIntoFreeList+0x54>
 e01322c:	e5803000 	str	r3, [r0]
 e013230:	e1500002 	cmp	r0, r2
 e013234:	15820000 	strne	r0, [r2]
 e013238:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
 e01323c:	e308c494 	movw	ip, #33940	; 0x8494
 e013240:	e346c00a 	movt	ip, #24586	; 0x600a
 e013244:	e59cc000 	ldr	ip, [ip]
 e013248:	e153000c 	cmp	r3, ip
 e01324c:	0afffff6 	beq	e01322c <prvInsertBlockIntoFreeList+0x44>
 e013250:	e5933004 	ldr	r3, [r3, #4]
 e013254:	e0831001 	add	r1, r3, r1
 e013258:	e5801004 	str	r1, [r0, #4]
 e01325c:	e5923000 	ldr	r3, [r2]
 e013260:	e5933000 	ldr	r3, [r3]
 e013264:	e5803000 	str	r3, [r0]
 e013268:	eafffff0 	b	e013230 <prvInsertBlockIntoFreeList+0x48>

0e01326c <pvPortMalloc>:
 e01326c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e013270:	e1a04000 	mov	r4, r0
 e013274:	ebfff5a6 	bl	e010914 <vTaskEnterCritical>
 e013278:	e3083498 	movw	r3, #33944	; 0x8498
 e01327c:	e346300a 	movt	r3, #24586	; 0x600a
 e013280:	e5936000 	ldr	r6, [r3]
 e013284:	e1160004 	tst	r6, r4
 e013288:	1a00003a 	bne	e013378 <pvPortMalloc+0x10c>
 e01328c:	e3540000 	cmp	r4, #0
 e013290:	0a000038 	beq	e013378 <pvPortMalloc+0x10c>
 e013294:	e2842040 	add	r2, r4, #64	; 0x40
 e013298:	e314003f 	tst	r4, #63	; 0x3f
 e01329c:	13c2203f 	bicne	r2, r2, #63	; 0x3f
 e0132a0:	12822040 	addne	r2, r2, #64	; 0x40
 e0132a4:	e3520000 	cmp	r2, #0
 e0132a8:	0a000032 	beq	e013378 <pvPortMalloc+0x10c>
 e0132ac:	e308749c 	movw	r7, #33948	; 0x849c
 e0132b0:	e346700a 	movt	r7, #24586	; 0x600a
 e0132b4:	e5978000 	ldr	r8, [r7]
 e0132b8:	e1580002 	cmp	r8, r2
 e0132bc:	3a00002d 	bcc	e013378 <pvPortMalloc+0x10c>
 e0132c0:	e30834ac 	movw	r3, #33964	; 0x84ac
 e0132c4:	e346300a 	movt	r3, #24586	; 0x600a
 e0132c8:	e1a01003 	mov	r1, r3
 e0132cc:	e5934000 	ldr	r4, [r3]
 e0132d0:	ea000004 	b	e0132e8 <pvPortMalloc+0x7c>
 e0132d4:	e5943000 	ldr	r3, [r4]
 e0132d8:	e3530000 	cmp	r3, #0
 e0132dc:	0a000004 	beq	e0132f4 <pvPortMalloc+0x88>
 e0132e0:	e1a01004 	mov	r1, r4
 e0132e4:	e1a04003 	mov	r4, r3
 e0132e8:	e5943004 	ldr	r3, [r4, #4]
 e0132ec:	e1530002 	cmp	r3, r2
 e0132f0:	3afffff7 	bcc	e0132d4 <pvPortMalloc+0x68>
 e0132f4:	e3083494 	movw	r3, #33940	; 0x8494
 e0132f8:	e346300a 	movt	r3, #24586	; 0x600a
 e0132fc:	e5933000 	ldr	r3, [r3]
 e013300:	e1530004 	cmp	r3, r4
 e013304:	0a00001b 	beq	e013378 <pvPortMalloc+0x10c>
 e013308:	e5943000 	ldr	r3, [r4]
 e01330c:	e5915000 	ldr	r5, [r1]
 e013310:	e5813000 	str	r3, [r1]
 e013314:	e2855040 	add	r5, r5, #64	; 0x40
 e013318:	e5941004 	ldr	r1, [r4, #4]
 e01331c:	e0413002 	sub	r3, r1, r2
 e013320:	e3530080 	cmp	r3, #128	; 0x80
 e013324:	8a000018 	bhi	e01338c <pvPortMalloc+0x120>
 e013328:	e30834a0 	movw	r3, #33952	; 0x84a0
 e01332c:	e346300a 	movt	r3, #24586	; 0x600a
 e013330:	e0488001 	sub	r8, r8, r1
 e013334:	e1866001 	orr	r6, r6, r1
 e013338:	e5932000 	ldr	r2, [r3]
 e01333c:	e5878000 	str	r8, [r7]
 e013340:	e1580002 	cmp	r8, r2
 e013344:	35838000 	strcc	r8, [r3]
 e013348:	e30834a4 	movw	r3, #33956	; 0x84a4
 e01334c:	e346300a 	movt	r3, #24586	; 0x600a
 e013350:	e3a02000 	mov	r2, #0
 e013354:	e8840044 	stm	r4, {r2, r6}
 e013358:	e5932000 	ldr	r2, [r3]
 e01335c:	e2822001 	add	r2, r2, #1
 e013360:	e5832000 	str	r2, [r3]
 e013364:	ebfff580 	bl	e01096c <vTaskExitCritical>
 e013368:	e3550000 	cmp	r5, #0
 e01336c:	0a000002 	beq	e01337c <pvPortMalloc+0x110>
 e013370:	e1a00005 	mov	r0, r5
 e013374:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e013378:	ebfff57b 	bl	e01096c <vTaskExitCritical>
 e01337c:	e3a05000 	mov	r5, #0
 e013380:	ebfff14d 	bl	e00f8bc <vApplicationMallocFailedHook>
 e013384:	e1a00005 	mov	r0, r5
 e013388:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e01338c:	e0840002 	add	r0, r4, r2
 e013390:	e5803004 	str	r3, [r0, #4]
 e013394:	e5842004 	str	r2, [r4, #4]
 e013398:	ebffff92 	bl	e0131e8 <prvInsertBlockIntoFreeList>
 e01339c:	e5941004 	ldr	r1, [r4, #4]
 e0133a0:	eaffffe0 	b	e013328 <pvPortMalloc+0xbc>

0e0133a4 <vPortFree>:
 e0133a4:	e92d4010 	push	{r4, lr}
 e0133a8:	e2504000 	subs	r4, r0, #0
 e0133ac:	08bd8010 	popeq	{r4, pc}
 e0133b0:	e3083498 	movw	r3, #33944	; 0x8498
 e0133b4:	e346300a 	movt	r3, #24586	; 0x600a
 e0133b8:	e514203c 	ldr	r2, [r4, #-60]	; 0xffffffc4
 e0133bc:	e5933000 	ldr	r3, [r3]
 e0133c0:	e1120003 	tst	r2, r3
 e0133c4:	08bd8010 	popeq	{r4, pc}
 e0133c8:	e5141040 	ldr	r1, [r4, #-64]	; 0xffffffc0
 e0133cc:	e3510000 	cmp	r1, #0
 e0133d0:	18bd8010 	popne	{r4, pc}
 e0133d4:	e1c22003 	bic	r2, r2, r3
 e0133d8:	e504203c 	str	r2, [r4, #-60]	; 0xffffffc4
 e0133dc:	ebfff54c 	bl	e010914 <vTaskEnterCritical>
 e0133e0:	e308349c 	movw	r3, #33948	; 0x849c
 e0133e4:	e346300a 	movt	r3, #24586	; 0x600a
 e0133e8:	e514203c 	ldr	r2, [r4, #-60]	; 0xffffffc4
 e0133ec:	e2440040 	sub	r0, r4, #64	; 0x40
 e0133f0:	e5931000 	ldr	r1, [r3]
 e0133f4:	e0822001 	add	r2, r2, r1
 e0133f8:	e5832000 	str	r2, [r3]
 e0133fc:	ebffff79 	bl	e0131e8 <prvInsertBlockIntoFreeList>
 e013400:	e30834a8 	movw	r3, #33960	; 0x84a8
 e013404:	e346300a 	movt	r3, #24586	; 0x600a
 e013408:	e5932000 	ldr	r2, [r3]
 e01340c:	e2822001 	add	r2, r2, #1
 e013410:	e5832000 	str	r2, [r3]
 e013414:	e8bd4010 	pop	{r4, lr}
 e013418:	eafff553 	b	e01096c <vTaskExitCritical>

0e01341c <xPortGetFreeHeapSize>:
 e01341c:	e308349c 	movw	r3, #33948	; 0x849c
 e013420:	e346300a 	movt	r3, #24586	; 0x600a
 e013424:	e5930000 	ldr	r0, [r3]
 e013428:	e12fff1e 	bx	lr

0e01342c <vPortDefineHeapRegions>:
 e01342c:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e013430:	e5909004 	ldr	r9, [r0, #4]
 e013434:	e3590000 	cmp	r9, #0
 e013438:	0a000031 	beq	e013504 <vPortDefineHeapRegions+0xd8>
 e01343c:	e3088494 	movw	r8, #33940	; 0x8494
 e013440:	e346800a 	movt	r8, #24586	; 0x600a
 e013444:	e3a01000 	mov	r1, #0
 e013448:	e30864ac 	movw	r6, #33964	; 0x84ac
 e01344c:	e346600a 	movt	r6, #24586	; 0x600a
 e013450:	e598e000 	ldr	lr, [r8]
 e013454:	e1a04001 	mov	r4, r1
 e013458:	e2807004 	add	r7, r0, #4
 e01345c:	e1a05001 	mov	r5, r1
 e013460:	e7903181 	ldr	r3, [r0, r1, lsl #3]
 e013464:	e283203f 	add	r2, r3, #63	; 0x3f
 e013468:	e313003f 	tst	r3, #63	; 0x3f
 e01346c:	e3c2203f 	bic	r2, r2, #63	; 0x3f
 e013470:	e1a0c003 	mov	ip, r3
 e013474:	e083a009 	add	sl, r3, r9
 e013478:	11a03002 	movne	r3, r2
 e01347c:	11a0c003 	movne	ip, r3
 e013480:	104a9002 	subne	r9, sl, r2
 e013484:	e089200c 	add	r2, r9, ip
 e013488:	e2422040 	sub	r2, r2, #64	; 0x40
 e01348c:	e3c2203f 	bic	r2, r2, #63	; 0x3f
 e013490:	e3510000 	cmp	r1, #0
 e013494:	05861004 	streq	r1, [r6, #4]
 e013498:	e2811001 	add	r1, r1, #1
 e01349c:	05863000 	streq	r3, [r6]
 e0134a0:	e5825004 	str	r5, [r2, #4]
 e0134a4:	e5825000 	str	r5, [r2]
 e0134a8:	e35e0000 	cmp	lr, #0
 e0134ac:	e5832000 	str	r2, [r3]
 e0134b0:	e042c00c 	sub	ip, r2, ip
 e0134b4:	e583c004 	str	ip, [r3, #4]
 e0134b8:	158e3000 	strne	r3, [lr]
 e0134bc:	e1a0e002 	mov	lr, r2
 e0134c0:	e5933004 	ldr	r3, [r3, #4]
 e0134c4:	e7979181 	ldr	r9, [r7, r1, lsl #3]
 e0134c8:	e0844003 	add	r4, r4, r3
 e0134cc:	e3590000 	cmp	r9, #0
 e0134d0:	1affffe2 	bne	e013460 <vPortDefineHeapRegions+0x34>
 e0134d4:	e5882000 	str	r2, [r8]
 e0134d8:	e30814a0 	movw	r1, #33952	; 0x84a0
 e0134dc:	e346100a 	movt	r1, #24586	; 0x600a
 e0134e0:	e308249c 	movw	r2, #33948	; 0x849c
 e0134e4:	e346200a 	movt	r2, #24586	; 0x600a
 e0134e8:	e3083498 	movw	r3, #33944	; 0x8498
 e0134ec:	e346300a 	movt	r3, #24586	; 0x600a
 e0134f0:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
 e0134f4:	e5814000 	str	r4, [r1]
 e0134f8:	e5824000 	str	r4, [r2]
 e0134fc:	e5830000 	str	r0, [r3]
 e013500:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e013504:	e1a04009 	mov	r4, r9
 e013508:	eafffff2 	b	e0134d8 <vPortDefineHeapRegions+0xac>

0e01350c <pvPortReAlloc>:
 e01350c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e013510:	e1a04001 	mov	r4, r1
 e013514:	e2505000 	subs	r5, r0, #0
 e013518:	0a00001e 	beq	e013598 <pvPortReAlloc+0x8c>
 e01351c:	e3510000 	cmp	r1, #0
 e013520:	0a000024 	beq	e0135b8 <pvPortReAlloc+0xac>
 e013524:	e1a00001 	mov	r0, r1
 e013528:	ebffff4f 	bl	e01326c <pvPortMalloc>
 e01352c:	e2506000 	subs	r6, r0, #0
 e013530:	0a000016 	beq	e013590 <pvPortReAlloc+0x84>
 e013534:	e3087498 	movw	r7, #33944	; 0x8498
 e013538:	e346700a 	movt	r7, #24586	; 0x600a
 e01353c:	e515203c 	ldr	r2, [r5, #-60]	; 0xffffffc4
 e013540:	e1a01005 	mov	r1, r5
 e013544:	e5973000 	ldr	r3, [r7]
 e013548:	e1c22003 	bic	r2, r2, r3
 e01354c:	e2422040 	sub	r2, r2, #64	; 0x40
 e013550:	e1520004 	cmp	r2, r4
 e013554:	21a02004 	movcs	r2, r4
 e013558:	ebffb618 	bl	e000dc0 <memcpy>
 e01355c:	ebfffa08 	bl	e011d84 <vTaskSuspendAll>
 e013560:	e308349c 	movw	r3, #33948	; 0x849c
 e013564:	e346300a 	movt	r3, #24586	; 0x600a
 e013568:	e515203c 	ldr	r2, [r5, #-60]	; 0xffffffc4
 e01356c:	e5971000 	ldr	r1, [r7]
 e013570:	e2450040 	sub	r0, r5, #64	; 0x40
 e013574:	e1c22001 	bic	r2, r2, r1
 e013578:	e5931000 	ldr	r1, [r3]
 e01357c:	e505203c 	str	r2, [r5, #-60]	; 0xffffffc4
 e013580:	e0812002 	add	r2, r1, r2
 e013584:	e5832000 	str	r2, [r3]
 e013588:	ebffff16 	bl	e0131e8 <prvInsertBlockIntoFreeList>
 e01358c:	ebfff805 	bl	e0115a8 <xTaskResumeAll>
 e013590:	e1a00006 	mov	r0, r6
 e013594:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e013598:	e3510000 	cmp	r1, #0
 e01359c:	0a000002 	beq	e0135ac <pvPortReAlloc+0xa0>
 e0135a0:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 e0135a4:	e1a00001 	mov	r0, r1
 e0135a8:	eaffff2f 	b	e01326c <pvPortMalloc>
 e0135ac:	e1a06001 	mov	r6, r1
 e0135b0:	e1a00006 	mov	r0, r6
 e0135b4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e0135b8:	e1a06001 	mov	r6, r1
 e0135bc:	ebffff78 	bl	e0133a4 <vPortFree>
 e0135c0:	e1a00006 	mov	r0, r6
 e0135c4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0e0135c8 <SOCPS_PG_Enter>:
 e0135c8:	e3a00022 	mov	r0, #34	; 0x22
 e0135cc:	e3400101 	movt	r0, #257	; 0x101
 e0135d0:	e92d4010 	push	{r4, lr}
 e0135d4:	e3041430 	movw	r1, #17456	; 0x4430
 e0135d8:	e3461009 	movt	r1, #24585	; 0x6009
 e0135dc:	e30962d8 	movw	r6, #37592	; 0x92d8
 e0135e0:	e3406e00 	movt	r6, #3584	; 0xe00
 e0135e4:	e3055430 	movw	r5, #21552	; 0x5430
 e0135e8:	e3405e01 	movt	r5, #3585	; 0xe01
 e0135ec:	e3054454 	movw	r4, #21588	; 0x5454
 e0135f0:	e3404e01 	movt	r4, #3585	; 0xe01
 e0135f4:	ebffd607 	bl	e008e18 <psci_cpu_suspend>
 e0135f8:	e3a00ffa 	mov	r0, #1000	; 0x3e8
 e0135fc:	e12fff36 	blx	r6
 e013600:	e1a03005 	mov	r3, r5
 e013604:	e3a02045 	mov	r2, #69	; 0x45
 e013608:	e1a01004 	mov	r1, r4
 e01360c:	e3a00002 	mov	r0, #2
 e013610:	ebffdd53 	bl	e00ab64 <rtk_log_write>
 e013614:	eafffff7 	b	e0135f8 <SOCPS_PG_Enter+0x30>

0e013618 <cpu_suspend_save>:
 e013618:	e1a03000 	mov	r3, r0
 e01361c:	e30804b4 	movw	r0, #33972	; 0x84b4
 e013620:	e346000a 	movt	r0, #24586	; 0x600a
 e013624:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e013628:	e4803004 	str	r3, [r0], #4
 e01362c:	eb0000e3 	bl	e0139c0 <__cpu_do_suspend_veneer>
 e013630:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
 e013634:	e3130004 	tst	r3, #4
 e013638:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
 e01363c:	ee306f30 	mrc	15, 1, r6, cr0, cr0, {1}
 e013640:	e3a04000 	mov	r4, #0
 e013644:	e1a05004 	mov	r5, r4
 e013648:	e1a03536 	lsr	r3, r6, r5
 e01364c:	e2033007 	and	r3, r3, #7
 e013650:	e2433002 	sub	r3, r3, #2
 e013654:	e3530002 	cmp	r3, #2
 e013658:	8a00001f 	bhi	e0136dc <cpu_suspend_save+0xc4>
 e01365c:	ee404f10 	mcr	15, 2, r4, cr0, cr0, {0}
 e013660:	ee307f10 	mrc	15, 1, r7, cr0, cr0, {0}
 e013664:	e7e9c1d7 	ubfx	ip, r7, #3, #10
 e013668:	e28ce001 	add	lr, ip, #1
 e01366c:	e35c0000 	cmp	ip, #0
 e013670:	0a00001e 	beq	e0136f0 <cpu_suspend_save+0xd8>
 e013674:	e1a0200e 	mov	r2, lr
 e013678:	e3a03000 	mov	r3, #0
 e01367c:	e2831001 	add	r1, r3, #1
 e013680:	e1a020a2 	lsr	r2, r2, #1
 e013684:	e1a00003 	mov	r0, r3
 e013688:	e3520001 	cmp	r2, #1
 e01368c:	e6ef3071 	uxtb	r3, r1
 e013690:	1afffff9 	bne	e01367c <cpu_suspend_save+0x64>
 e013694:	e31e0001 	tst	lr, #1
 e013698:	12803002 	addne	r3, r0, #2
 e01369c:	16ef3073 	uxtbne	r3, r3
 e0136a0:	e3530020 	cmp	r3, #32
 e0136a4:	9263e020 	rsbls	lr, r3, #32
 e0136a8:	8a00000b 	bhi	e0136dc <cpu_suspend_save+0xc4>
 e0136ac:	e2070007 	and	r0, r7, #7
 e0136b0:	e2800004 	add	r0, r0, #4
 e0136b4:	e7ee76d7 	ubfx	r7, r7, #13, #15
 e0136b8:	e1841e1c 	orr	r1, r4, ip, lsl lr
 e0136bc:	e1a03007 	mov	r3, r7
 e0136c0:	e1812013 	orr	r2, r1, r3, lsl r0
 e0136c4:	ee072f5e 	mcr	15, 0, r2, cr7, cr14, {2}
 e0136c8:	e2533001 	subs	r3, r3, #1
 e0136cc:	2afffffb 	bcs	e0136c0 <cpu_suspend_save+0xa8>
 e0136d0:	e25cc001 	subs	ip, ip, #1
 e0136d4:	2afffff7 	bcs	e0136b8 <cpu_suspend_save+0xa0>
 e0136d8:	f57ff05f 	dmb	sy
 e0136dc:	e2855003 	add	r5, r5, #3
 e0136e0:	e2844002 	add	r4, r4, #2
 e0136e4:	e3550015 	cmp	r5, #21
 e0136e8:	1affffd6 	bne	e013648 <cpu_suspend_save+0x30>
 e0136ec:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e0136f0:	e3a0e020 	mov	lr, #32
 e0136f4:	eaffffec 	b	e0136ac <cpu_suspend_save+0x94>

0e0136f8 <SOCPS_Save_GIC>:
 e0136f8:	e3a03a02 	mov	r3, #8192	; 0x2000
 e0136fc:	e34a3010 	movt	r3, #40976	; 0xa010
 e013700:	e5932004 	ldr	r2, [r3, #4]
 e013704:	f57ff05f 	dmb	sy
 e013708:	e308c530 	movw	ip, #34096	; 0x8530
 e01370c:	e346c00a 	movt	ip, #24586	; 0x600a
 e013710:	e3a03a01 	mov	r3, #4096	; 0x1000
 e013714:	e34a3010 	movt	r3, #40976	; 0xa010
 e013718:	e58c2140 	str	r2, [ip, #320]	; 0x140
 e01371c:	e5932100 	ldr	r2, [r3, #256]	; 0x100
 e013720:	f57ff05f 	dmb	sy
 e013724:	e58c2000 	str	r2, [ip]
 e013728:	e5932104 	ldr	r2, [r3, #260]	; 0x104
 e01372c:	f57ff05f 	dmb	sy
 e013730:	e58c2004 	str	r2, [ip, #4]
 e013734:	e5932108 	ldr	r2, [r3, #264]	; 0x108
 e013738:	f57ff05f 	dmb	sy
 e01373c:	e58c2008 	str	r2, [ip, #8]
 e013740:	e593210c 	ldr	r2, [r3, #268]	; 0x10c
 e013744:	f57ff05f 	dmb	sy
 e013748:	e58c200c 	str	r2, [ip, #12]
 e01374c:	e5932300 	ldr	r2, [r3, #768]	; 0x300
 e013750:	f57ff05f 	dmb	sy
 e013754:	e58c2010 	str	r2, [ip, #16]
 e013758:	e5932304 	ldr	r2, [r3, #772]	; 0x304
 e01375c:	f57ff05f 	dmb	sy
 e013760:	e58c2014 	str	r2, [ip, #20]
 e013764:	e5932308 	ldr	r2, [r3, #776]	; 0x308
 e013768:	f57ff05f 	dmb	sy
 e01376c:	e58c2018 	str	r2, [ip, #24]
 e013770:	e593230c 	ldr	r2, [r3, #780]	; 0x30c
 e013774:	f57ff05f 	dmb	sy
 e013778:	e3011be0 	movw	r1, #7136	; 0x1be0
 e01377c:	e34a1010 	movt	r1, #40976	; 0xa010
 e013780:	e28c3020 	add	r3, ip, #32
 e013784:	e28c0040 	add	r0, ip, #64	; 0x40
 e013788:	e041100c 	sub	r1, r1, ip
 e01378c:	e58c201c 	str	r2, [ip, #28]
 e013790:	e7912003 	ldr	r2, [r1, r3]
 e013794:	f57ff05f 	dmb	sy
 e013798:	e4832004 	str	r2, [r3], #4
 e01379c:	e1530000 	cmp	r3, r0
 e0137a0:	1afffffa 	bne	e013790 <SOCPS_Save_GIC+0x98>
 e0137a4:	e59f304c 	ldr	r3, [pc, #76]	; e0137f8 <SOCPS_Save_GIC+0x100>
 e0137a8:	e30117c4 	movw	r1, #6084	; 0x17c4
 e0137ac:	e34a1010 	movt	r1, #40976	; 0xa010
 e0137b0:	e2830080 	add	r0, r3, #128	; 0x80
 e0137b4:	e041100c 	sub	r1, r1, ip
 e0137b8:	e7912003 	ldr	r2, [r1, r3]
 e0137bc:	f57ff05f 	dmb	sy
 e0137c0:	e5a32004 	str	r2, [r3, #4]!
 e0137c4:	e1530000 	cmp	r3, r0
 e0137c8:	1afffffa 	bne	e0137b8 <SOCPS_Save_GIC+0xc0>
 e0137cc:	e59f3028 	ldr	r3, [pc, #40]	; e0137fc <SOCPS_Save_GIC+0x104>
 e0137d0:	e3011344 	movw	r1, #4932	; 0x1344
 e0137d4:	e34a1010 	movt	r1, #40976	; 0xa010
 e0137d8:	e2830080 	add	r0, r3, #128	; 0x80
 e0137dc:	e041100c 	sub	r1, r1, ip
 e0137e0:	e7912003 	ldr	r2, [r1, r3]
 e0137e4:	f57ff05f 	dmb	sy
 e0137e8:	e5a32004 	str	r2, [r3, #4]!
 e0137ec:	e1530000 	cmp	r3, r0
 e0137f0:	1afffffa 	bne	e0137e0 <SOCPS_Save_GIC+0xe8>
 e0137f4:	e12fff1e 	bx	lr
 e0137f8:	600a856c 	.word	0x600a856c
 e0137fc:	600a85ec 	.word	0x600a85ec

0e013800 <SOCPS_Restore_GIC>:
 e013800:	e3081530 	movw	r1, #34096	; 0x8530
 e013804:	e346100a 	movt	r1, #24586	; 0x600a
 e013808:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e01380c:	e5912140 	ldr	r2, [r1, #320]	; 0x140
 e013810:	f57ff05f 	dmb	sy
 e013814:	e3a03a02 	mov	r3, #8192	; 0x2000
 e013818:	e34a3010 	movt	r3, #40976	; 0xa010
 e01381c:	e5832004 	str	r2, [r3, #4]
 e013820:	e5913000 	ldr	r3, [r1]
 e013824:	f57ff05f 	dmb	sy
 e013828:	e3a02a01 	mov	r2, #4096	; 0x1000
 e01382c:	e34a2010 	movt	r2, #40976	; 0xa010
 e013830:	e5823100 	str	r3, [r2, #256]	; 0x100
 e013834:	e5913004 	ldr	r3, [r1, #4]
 e013838:	f57ff05f 	dmb	sy
 e01383c:	e5823104 	str	r3, [r2, #260]	; 0x104
 e013840:	e5913008 	ldr	r3, [r1, #8]
 e013844:	f57ff05f 	dmb	sy
 e013848:	e5823108 	str	r3, [r2, #264]	; 0x108
 e01384c:	e591300c 	ldr	r3, [r1, #12]
 e013850:	f57ff05f 	dmb	sy
 e013854:	e582310c 	str	r3, [r2, #268]	; 0x10c
 e013858:	e5913010 	ldr	r3, [r1, #16]
 e01385c:	f57ff05f 	dmb	sy
 e013860:	e5823300 	str	r3, [r2, #768]	; 0x300
 e013864:	e5913014 	ldr	r3, [r1, #20]
 e013868:	f57ff05f 	dmb	sy
 e01386c:	e5823304 	str	r3, [r2, #772]	; 0x304
 e013870:	e5913018 	ldr	r3, [r1, #24]
 e013874:	f57ff05f 	dmb	sy
 e013878:	e5823308 	str	r3, [r2, #776]	; 0x308
 e01387c:	e591c01c 	ldr	ip, [r1, #28]
 e013880:	f57ff05f 	dmb	sy
 e013884:	e3010bdc 	movw	r0, #7132	; 0x1bdc
 e013888:	e34a0010 	movt	r0, #40976	; 0xa010
 e01388c:	e582c30c 	str	ip, [r2, #780]	; 0x30c
 e013890:	e2813020 	add	r3, r1, #32
 e013894:	e0400001 	sub	r0, r0, r1
 e013898:	e281c040 	add	ip, r1, #64	; 0x40
 e01389c:	e4932004 	ldr	r2, [r3], #4
 e0138a0:	f57ff05f 	dmb	sy
 e0138a4:	e153000c 	cmp	r3, ip
 e0138a8:	e7802003 	str	r2, [r0, r3]
 e0138ac:	1afffffa 	bne	e01389c <SOCPS_Restore_GIC+0x9c>
 e0138b0:	e59f2094 	ldr	r2, [pc, #148]	; e01394c <SOCPS_Restore_GIC+0x14c>
 e0138b4:	e301c7c4 	movw	ip, #6084	; 0x17c4
 e0138b8:	e34ac010 	movt	ip, #40976	; 0xa010
 e0138bc:	e282e080 	add	lr, r2, #128	; 0x80
 e0138c0:	e1a03002 	mov	r3, r2
 e0138c4:	e5b20004 	ldr	r0, [r2, #4]!
 e0138c8:	f57ff05f 	dmb	sy
 e0138cc:	e083300c 	add	r3, r3, ip
 e0138d0:	e0433001 	sub	r3, r3, r1
 e0138d4:	e152000e 	cmp	r2, lr
 e0138d8:	e5830000 	str	r0, [r3]
 e0138dc:	1afffff7 	bne	e0138c0 <SOCPS_Restore_GIC+0xc0>
 e0138e0:	e59f2068 	ldr	r2, [pc, #104]	; e013950 <SOCPS_Restore_GIC+0x150>
 e0138e4:	e301c344 	movw	ip, #4932	; 0x1344
 e0138e8:	e34ac010 	movt	ip, #40976	; 0xa010
 e0138ec:	e282e080 	add	lr, r2, #128	; 0x80
 e0138f0:	e1a03002 	mov	r3, r2
 e0138f4:	e5b20004 	ldr	r0, [r2, #4]!
 e0138f8:	f57ff05f 	dmb	sy
 e0138fc:	e083300c 	add	r3, r3, ip
 e013900:	e0433001 	sub	r3, r3, r1
 e013904:	e152000e 	cmp	r2, lr
 e013908:	e5830000 	str	r0, [r3]
 e01390c:	1afffff7 	bne	e0138f0 <SOCPS_Restore_GIC+0xf0>
 e013910:	e3a02a02 	mov	r2, #8192	; 0x2000
 e013914:	e34a2010 	movt	r2, #40976	; 0xa010
 e013918:	e5923000 	ldr	r3, [r2]
 e01391c:	f57ff05f 	dmb	sy
 e013920:	e3c33e1e 	bic	r3, r3, #480	; 0x1e0
 e013924:	e3c33003 	bic	r3, r3, #3
 e013928:	e3833007 	orr	r3, r3, #7
 e01392c:	f57ff05f 	dmb	sy
 e013930:	e5823000 	str	r3, [r2]
 e013934:	f57ff05f 	dmb	sy
 e013938:	e3a03a01 	mov	r3, #4096	; 0x1000
 e01393c:	e34a3010 	movt	r3, #40976	; 0xa010
 e013940:	e3a02003 	mov	r2, #3
 e013944:	e5832000 	str	r2, [r3]
 e013948:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
 e01394c:	600a856c 	.word	0x600a856c
 e013950:	600a85ec 	.word	0x600a85ec

0e013954 <SOCPS_SleepPG_LIB>:
 e013954:	e92d4010 	push	{r4, lr}
 e013958:	ebffff66 	bl	e0136f8 <SOCPS_Save_GIC>
 e01395c:	e3a00000 	mov	r0, #0
 e013960:	e30315c8 	movw	r1, #13768	; 0x35c8
 e013964:	e3401e01 	movt	r1, #3585	; 0xe01
 e013968:	eb000018 	bl	e0139d0 <__cpu_suspend_veneer>
 e01396c:	e8bd4010 	pop	{r4, lr}
 e013970:	eaffffa2 	b	e013800 <SOCPS_Restore_GIC>

0e013974 <SOCPS_SleepCG_LIB>:
 e013974:	e30326c0 	movw	r2, #14016	; 0x36c0
 e013978:	e346200a 	movt	r2, #24586	; 0x600a
 e01397c:	e92d4010 	push	{r4, lr}
 e013980:	e3a03001 	mov	r3, #1
 e013984:	e5823000 	str	r3, [r2]
 e013988:	f57ff06f 	isb	sy
 e01398c:	e3a01000 	mov	r1, #0
 e013990:	e3a00020 	mov	r0, #32
 e013994:	ebffd807 	bl	e0099b8 <ipc_send_message>
 e013998:	e3a01441 	mov	r1, #1090519040	; 0x41000000
 e01399c:	e3093250 	movw	r3, #37456	; 0x9250
 e0139a0:	e3403e00 	movt	r3, #3584	; 0xe00
 e0139a4:	e591200c 	ldr	r2, [r1, #12]
 e0139a8:	e3a00002 	mov	r0, #2
 e0139ac:	e3c22001 	bic	r2, r2, #1
 e0139b0:	e581200c 	str	r2, [r1, #12]
 e0139b4:	e8bd4010 	pop	{r4, lr}
 e0139b8:	e12fff13 	bx	r3
 e0139bc:	00000000 	andeq	r0, r0, r0

0e0139c0 <__cpu_do_suspend_veneer>:
 e0139c0:	e51ff004 	ldr	pc, [pc, #-4]	; e0139c4 <__cpu_do_suspend_veneer+0x4>
 e0139c4:	60094390 	.word	0x60094390

0e0139c8 <____PutCharacter_veneer>:
 e0139c8:	e51ff004 	ldr	pc, [pc, #-4]	; e0139cc <____PutCharacter_veneer+0x4>
 e0139cc:	60094300 	.word	0x60094300

0e0139d0 <__cpu_suspend_veneer>:
 e0139d0:	e51ff004 	ldr	pc, [pc, #-4]	; e0139d4 <__cpu_suspend_veneer+0x4>
 e0139d4:	60094370 	.word	0x60094370
 e0139d8:	6d6f682f 	.word	0x6d6f682f
 e0139dc:	69712f65 	.word	0x69712f65
 e0139e0:	6568735f 	.word	0x6568735f
 e0139e4:	656a2f6e 	.word	0x656a2f6e
 e0139e8:	63697373 	.word	0x63697373
 e0139ec:	2e362f61 	.word	0x2e362f61
 e0139f0:	6f732f36 	.word	0x6f732f36
 e0139f4:	65637275 	.word	0x65637275
 e0139f8:	69662f73 	.word	0x69662f73
 e0139fc:	61776d72 	.word	0x61776d72
 e013a00:	632f6572 	.word	0x632f6572
 e013a04:	6f706d6f 	.word	0x6f706d6f
 e013a08:	746e656e 	.word	0x746e656e
 e013a0c:	2f736f2f 	.word	0x2f736f2f
 e013a10:	65657266 	.word	0x65657266
 e013a14:	736f7472 	.word	0x736f7472
 e013a18:	6572662f 	.word	0x6572662f
 e013a1c:	6f747265 	.word	0x6f747265
 e013a20:	65685f73 	.word	0x65685f73
 e013a24:	5f357061 	.word	0x5f357061
 e013a28:	666e6f63 	.word	0x666e6f63
 e013a2c:	632e6769 	.word	0x632e6769
 e013a30:	00000000 	.word	0x00000000

0e013a34 <_global_impure_ptr>:
 e013a34:	60095004                                .P.`

0e013a38 <blanks.1>:
 e013a38:	20202020 20202020 20202020 20202020                     

0e013a48 <zeroes.0>:
 e013a48:	30303030 30303030 30303030 30303030     0000000000000000

0e013a58 <_ctype_>:
 e013a58:	20202000 20202020 28282020 20282828     .         ((((( 
 e013a68:	20202020 20202020 20202020 20202020                     
 e013a78:	10108820 10101010 10101010 10101010      ...............
 e013a88:	04040410 04040404 10040404 10101010     ................
 e013a98:	41411010 41414141 01010101 01010101     ..AAAAAA........
 e013aa8:	01010101 01010101 01010101 10101010     ................
 e013ab8:	42421010 42424242 02020202 02020202     ..BBBBBB........
 e013ac8:	02020202 02020202 02020202 10101010     ................
 e013ad8:	00000020 00000000 00000000 00000000      ...............
	...

0e013b60 <p05.0>:
 e013b60:	00000005 00000019 0000007d 00000000     ........}.......

0e013b70 <__mprec_tens>:
 e013b70:	00000000 3ff00000 00000000 40240000     .......?......$@
 e013b80:	00000000 40590000 00000000 408f4000     ......Y@.....@.@
 e013b90:	00000000 40c38800 00000000 40f86a00     .......@.....j.@
 e013ba0:	00000000 412e8480 00000000 416312d0     .......A......cA
 e013bb0:	00000000 4197d784 00000000 41cdcd65     .......A....e..A
 e013bc0:	20000000 4202a05f e8000000 42374876     ... _..B....vH7B
 e013bd0:	a2000000 426d1a94 e5400000 42a2309c     ......mB..@..0.B
 e013be0:	1e900000 42d6bcc4 26340000 430c6bf5     .......B..4&.k.C
 e013bf0:	37e08000 4341c379 85d8a000 43763457     ...7y.AC....W4vC
 e013c00:	674ec800 43abc16d 60913d00 43e158e4     ..Ngm..C.=.`.X.C
 e013c10:	78b58c40 4415af1d d6e2ef50 444b1ae4     @..x...DP.....KD
 e013c20:	064dd592 4480f0cf c7e14af6 44b52d02     ..M....D.J...-.D
 e013c30:	79d99db4 44ea7843                       ...yCx.D

0e013c38 <__mprec_tinytens>:
 e013c38:	97d889bc 3c9cd2b2 d5a8a733 3949f623     .......<3...#.I9
 e013c48:	44f4a73d 32a50ffd cf8c979d 255bba08     =..D...2......[%
 e013c58:	64ac6f43 0ac80628                       Co.d(...

0e013c60 <__mprec_bigtens>:
 e013c60:	37e08000 4341c379 b5056e17 4693b8b5     ...7y.AC.n.....F
 e013c70:	e93ff9f5 4d384f03 f9301d32 5a827748     ..?..O8M2.0.Hw.Z
 e013c80:	7f73bf3c 75154fdd                       <.s..O.u

0e013c88 <blanks.1>:
 e013c88:	20202020 20202020 20202020 20202020                     

0e013c98 <zeroes.0>:
 e013c98:	30303030 30303030 30303030 30303030     0000000000000000
 e013ca8:	20525349 20726f66 65746e69 70757272     ISR for interrup
 e013cb8:	64692074 756c2528 73692029 746f6e20     t id(%lu) is not
 e013cc8:	67657220 65747369 21646572 0000200a      registered!. ..
 e013cd8:	00003052 00003452 65726f43 786c255b     R0..R4..Core[%lx
 e013ce8:	7325205d 30203d20 38302578 000a786c     ] %s = 0x%08lx..
 e013cf8:	65726f43 786c255b 7250205d 6f697665     Core[%lx] Previo
 e013d08:	4d207375 2765646f 50432073 69205253     us Mode's CPSR i
 e013d18:	78302073 6c383025 00000a78 65726f43     s 0x%08lx...Core
 e013d28:	786c255b 7250205d 6f697665 4d207375     [%lx] Previous M
 e013d38:	2765646f 524c2073 20736920 30257830     ode's LR is 0x%0
 e013d48:	0a786c38 00000000 65726f43 786c255b     8lx.....Core[%lx
 e013d58:	7543205d 6e657272 74532074 206b6361     ] Current Stack 
 e013d68:	6e696f50 20726574 7830203d 6c383025     Pointer = 0x%08l
 e013d78:	61202c78 6420646e 20706d75 63617473     x, and dump stac
 e013d88:	6564206b 20687470 6425203d 00000a0d     k depth = %d....
 e013d98:	65726f43 786c255b 255b205d 786c3830     Core[%lx] [%08lx
 e013da8:	7830205d 6c383025 78302078 6c383025     ] 0x%08lx 0x%08l
 e013db8:	78302078 6c383025 78302078 6c383025     x 0x%08lx 0x%08l
 e013dc8:	00000a78 72646441 20737365 7420666f     x...Address of t
 e013dd8:	75206568 6665646e 64656e69 736e6920     he undefined ins
 e013de8:	63757274 6e6f6974 25783020 0a783830     truction 0x%08x.
 e013df8:	00000000 61746144 6f626120 77207472     ....Data abort w
 e013e08:	20687469 61746144 75614620 5320746c     ith Data Fault S
 e013e18:	75746174 65522073 74736967 20207265     tatus Register  
 e013e28:	30257830 000a7838 72646441 20737365     0x%08x..Address 
 e013e38:	4920666f 7274736e 69746375 63206e6f     of Instruction c
 e013e48:	69737561 4420676e 20617461 726f6261     ausing Data abor
 e013e58:	78302074 78383025 0000000a 66657250     t 0x%08x....Pref
 e013e68:	68637465 6f626120 77207472 20687469     etch abort with 
 e013e78:	74736e49 74637572 206e6f69 6c756146     Instruction Faul
 e013e88:	74532074 73757461 67655220 65747369     t Status Registe
 e013e98:	78302072 78383025 0000000a 00003552     r 0x%08x....R5..
 e013ea8:	00003652 00003752 00003852 00003952     R6..R7..R8..R9..
 e013eb8:	00303152 00313152 00003152 00003252     R10.R11.R1..R2..
 e013ec8:	00003352 00323152 0000524c              R3..R12.LR..

0e013ed4 <crash_reg_name>:
 e013ed4:	0e013cdc 0e013ea4 0e013ea8 0e013eac     .<...>...>...>..
 e013ee4:	0e013eb0 0e013eb4 0e013eb8 0e013ebc     .>...>...>...>..
 e013ef4:	0e013cd8 0e013ec0 0e013ec4 0e013ec8     .<...>...>...>..
 e013f04:	0e013ecc 0e013ed0                       .>...>..

0e013f0c <LOG_UART_IDX_FLAG>:
 e013f0c:	00000001 00200000 00020000 0000cb9d     ...... .........
 e013f1c:	00000008 00000000 00100000 00010000     ................
 e013f2c:	000bee33 00000008 00000003 00800000     3...............
 e013f3c:	00080000 002fb8cc 00000008 666e6f43     ....../.....Conf
 e013f4c:	7463696c 20676e69 49435350 72657620     licting PSCI ver
 e013f5c:	6e6f6973 74656420 65746365 000a2e64     sion detected...
 e013f6c:	73757254 20646574 6d20534f 61726769     Trusted OS migra
 e013f7c:	6e6f6974 746f6e20 71657220 65726975     tion not require
 e013f8c:	00000a64 5247494d 5f455441 4f464e49     d...MIGRATE_INFO
 e013f9c:	5059545f 6f6e2045 75732074 726f7070     _TYPE not suppor
 e013fac:	2e646574 0000000a 5247494d 5f455441     ted.....MIGRATE_
 e013fbc:	4f464e49 5059545f 65722045 6e727574     INFO_TYPE return
 e013fcc:	75206465 6f6e6b6e 74206e77 20657079     ed unknown type 
 e013fdc:	29642528 0000000a 5247494d 5f455441     (%d)....MIGRATE_
 e013fec:	4f464e49 5f50555f 20555043 6f706572     INFO_UP_CPU repo
 e013ffc:	64657472 766e6920 64696c61 79687020     rted invalid phy
 e01400c:	61636973 4449206c 78302820 29786c25     sical ID (0x%lx)
 e01401c:	0000000a 73757254 20646574 7220534f     ....Trusted OS r
 e01402c:	64697365 20746e65 70206e6f 69737968     esident on physi
 e01403c:	206c6163 20555043 6c257830 00000a78     cal CPU 0x%lx...

0e01404c <CSWTCH.2>:
 e01404c:	ffffffea ffffffea ffffffea ffffffea     ................
 e01405c:	ffffffea ffffffea ffffffff ffffffea     ................
 e01406c:	ffffffa1 00000000 31757063 776f7020     ........cpu1 pow
 e01407c:	6f207265 000a6666 00000023 6f636553     er off..#...Seco
 e01408c:	7261646e 6f632079 70206572 7265776f     ndary core power
 e01409c:	66666f20 69616620 25203a6c 00000a64      off fail: %d...
 e0140ac:	25555043 6f203a64 00000a6e 3a706d73     CPU%d: on...smp:
 e0140bc:	69724220 6e69676e 70752067 63657320      Bringing up sec
 e0140cc:	61646e6f 43207972 20735550 0a2e2e2e     ondary CPUs ....
 e0140dc:	00000000 25555043 66203a64 656c6961     ....CPU%d: faile
 e0140ec:	6f742064 6f6f6220 25203a74 00000a64     d to boot: %d...
 e0140fc:	47505041 0000000a 57505041 0000000a     APPG....APPW....
 e01410c:	47435041 0000000a 57435041 0000000a     APCG....APCW....
 e01411c:	6e616843 206c656e 666e6f43 7463696c     Channel Conflict
 e01412c:	726f6620 61684320 6c656e6e 756c2520      for Channel %lu
 e01413c:	0a0d2120 00000000 00435049 43504920      !......IPC. IPC
 e01414c:	71655220 74736575 6d695420 74756f65      Request Timeout
 e01415c:	00000a0d 43504920 74654720 6d655320     .... IPC Get Sem
 e01416c:	6f687061 54206572 6f656d69 0a0d7475     aphore Timeout..
 e01417c:	00000000 6d6f682f 69712f65 6568735f     ..../home/qi_she
 e01418c:	656a2f6e 63697373 2e362f61 6f732f36     n/jessica/6.6/so
 e01419c:	65637275 69662f73 61776d72 632f6572     urces/firmware/c
 e0141ac:	6f706d6f 746e656e 636f732f 656d612f     omponent/soc/ame
 e0141bc:	6d736162 2f747261 696c7766 61722f62     basmart/fwlib/ra
 e0141cc:	6f635f6d 6e6f6d6d 656d612f 695f6162     m_common/ameba_i
 e0141dc:	615f6370 632e6970 00000000              pc_api.c....

0e0141e8 <CSWTCH.36>:
 e0141e8:	00000008 00000000 00000000 00000000     ................
 e0141f8:	00000008 00000000 00000000 00000000     ................
 e014208:	00000008                                ....

0e01420c <CSWTCH.37>:
 e01420c:	42008600 42008600 00000000 00000000     ...B...B........
	...
 e01424c:	41000500 41000500 00000000 00000000     ...A...A........
	...
 e01428c:	41000580 41000580 6d6f682f 69712f65     ...A...A/home/qi
 e01429c:	6568735f 656a2f6e 63697373 2e362f61     _shen/jessica/6.
 e0142ac:	6f732f36 65637275 69662f73 61776d72     6/sources/firmwa
 e0142bc:	632f6572 6f706d6f 746e656e 636f732f     re/component/soc
 e0142cc:	656d612f 6d736162 2f747261 696c7766     /amebasmart/fwli
 e0142dc:	61722f62 6f635f6d 6e6f6d6d 656d612f     b/ram_common/ame
 e0142ec:	695f6162 725f6370 632e6d61 00000000     ba_ipc_ram.c....
 e0142fc:	2050544f 64616572 74656720 20776820     OTP read get hw 
 e01430c:	616d6573 69616620 00000a6c 0050544f     sema fail...OTP.
 e01431c:	5f50544f 64616552 61462038 25206c69     OTP_Read8 Fail %
 e01432c:	000a2078 20524d50 64616552 72726520     x ..PMR Read err
 e01433c:	0a21726f 00000000 2050544f 74697277     or!.....OTP writ
 e01434c:	65672065 77682074 6d657320 61662061     e get hw sema fa
 e01435c:	000a6c69 5f50544f 74697257 46203865     il..OTP_Write8 F
 e01436c:	206c6961 0a207825 00000000 2050544f     ail %x .....OTP 
 e01437c:	676f7270 206d6172 6f727265 000a2172     program error!..
 e01438c:	32524d50 61655220 72652064 21726f72     PMR2 Read error!
 e01439c:	0000000a 69676f4c 4d6c6163 52207061     ....LogicalMap R
 e0143ac:	20646165 6f727265 78252072 2078252b     ead error %x+%x 
 e0143bc:	63786520 20646565 696d696c 00000a74      exceed limit...
 e0143cc:	67696c61 6e656d6e 72652074 20726f72     alignment error 
 e0143dc:	25207825 000a2078 69676f4c 4d6c6163     %x %x ..LogicalM
 e0143ec:	57207061 65746972 72726520 2520726f     ap Write error %
 e0143fc:	78252b78 78652020 64656563 6d696c20     x+%x  exceed lim
 e01440c:	000a7469 69676f4c 4d6c6163 52207061     it..LogicalMap R
 e01441c:	20646165 6f727265 68772072 77206e65     ead error when w
 e01442c:	65746972 25204020 000a2078 6477656e     rite @ %x ..newd
 e01443c:	5b617461 3d5d7825 0a782520 00000000     ata[%x]= %x.....
 e01444c:	5f50544f 505f4750 656b6361 6f575f74     OTP_PG_Packet_Wo
 e01445c:	73206472 20657a69 6f727265 253a2072     rd size error :%
 e01446c:	656c2078 78253a6e 00000a20 656b614d     x len:%x ...Make
 e01447c:	72757320 544f2065 6f6c2050 61636967      sure OTP logica
 e01448c:	7261206c 20206165 2078253a 66656420     l area  :%x  def
 e01449c:	64656e69 0000000a 5f50544f 505f4750     ined....OTP_PG_P
 e0144ac:	656b6361 255b2074 25205d78 000a2078     acket [%x] %x ..
 e0144bc:	5f50544f 505f4750 656b6361 6f6e2074     OTP_PG_Packet no
 e0144cc:	6f6e6520 20686775 63617073 78252065      enough space %x
 e0144dc:	00000a20 5f50544f 505f4750 656b6361      ...OTP_PG_Packe
 e0144ec:	79422074 20206574 5d78255b 20782520     t Byte  [%x] %x 
 e0144fc:	0000000a 7478656e 69727720 63206574     ....next write c
 e01450c:	656c6379 73614220 6c252065 6e632078     ycle Base %lx cn
 e01451c:	25207374 0a20786c 00000000 2d73255b     ts %lx .....[%s-
 e01452c:	205d6325 00000000 5d73255b 76656c20     %c] ....[%s] lev
 e01453c:	3d206c65 0a642520 00000000 00474f4c     el = %d.....LOG.
 e01454c:	0000002a 68636143 72612065 20796172     *...Cache array 
 e01455c:	66207369 2c6c6c75 646e6120 70657220     is full, and rep
 e01456c:	6563616c 646c6f20 746e6520 000a7972     lace old entry..
 e01457c:	3830255b 00205d78 255b0a0d 5d783830     [%08x] ...[%08x]
 e01458c:	00000020 78383025 00000020 78323025      ...%08x ...%02x
 e01459c:	00000020 2a2a2a2a 2a2a2a2a 2a2a2a2a      ...************
 e0145ac:	2a2a2a2a 2a2a2a2a 2a2a2a2a 57202a2a     ************** W
 e0145bc:	494e5241 2a20474e 2a2a2a2a 2a2a2a2a     ARNING *********
 e0145cc:	2a2a2a2a 2a2a2a2a 2a2a2a2a 000a2a2a     **************..
 e0145dc:	4e49414d 00000000 61656c50 72206573     MAIN....Please r
 e0145ec:	20646165 20656874 6361433c 43206568     ead the <Cache C
 e0145fc:	69736e6f 6e657473 57207963 206e6568     onsistency When 
 e01460c:	6e697355 4d442067 63203e41 74706168     Using DMA> chapt
 e01461c:	69207265 6874206e 70412065 63696c70     er in the Applic
 e01462c:	6f697461 6f4e5f6e 702e6574 000a6664     ation_Note.pdf..
 e01463c:	65726548 20736920 656d6f73 69726220     Here is some bri
 e01464c:	6f206665 68742066 68632065 65747061     ef of the chapte
 e01465c:	6e612072 61632064 6562206e 6d657220     r and can be rem
 e01466c:	6465766f 206e6920 6e69616d 000a632e     oved in main.c..
 e01467c:	74726f43 412d7865 77203233 206c6c69     Cortex-A32 will 
 e01468c:	6f747561 6974616d 20796c63 66657270     automaticly pref
 e01469c:	68637465 74616420 6f742061 632d4420     etch data to D-c
 e0146ac:	65686361 65766520 6874206e 64612065     ache even the ad
 e0146bc:	73657264 73692073 746f6e20 61657220     dress is not rea
 e0146cc:	72772f64 21657469 0000000a 63614344     d/write!....DCac
 e0146dc:	495f6568 6c61766e 74616469 78302865     he_Invalidate(0x
 e0146ec:	46464646 46464646 7830202c 46464646     FFFFFFFF, 0xFFFF
 e0146fc:	46464646 73692029 6d617320 73612065     FFFF) is same as
 e01470c:	61434420 5f656863 61656c43 766e496e      DCache_CleanInv
 e01471c:	64696c61 28657461 46467830 46464646     alidate(0xFFFFFF
 e01472c:	202c4646 46467830 46464646 20294646     FF, 0xFFFFFFFF) 
 e01473c:	43206e69 0a323341 00000000 61766e49     in CA32.....Inva
 e01474c:	6164696c 62206574 6e612079 64646120     lidate by an add
 e01475c:	73736572 20736920 796c6e6f 72657020     ress is only per
 e01476c:	6d726f66 77206465 206e6568 20656874     formed when the 
 e01477c:	61746164 20736920 20746f6e 74726964     data is not dirt
 e01478c:	6f202c79 65687472 73697772 20612065     y, ortherwise a 
 e01479c:	61656c63 7369206e 72657020 6d726f66     clean is perform
 e0147ac:	0a216465 00000000 65666572 6f742072     ed!.....refer to
 e0147bc:	4d525420 20666f20 32334143 6f626120      TRM of CA32 abo
 e0147cc:	27207475 61746164 65727020 63746566     ut 'data prefetc
 e0147dc:	676e6968 6e612027 49272064 6c61766e     hing' and 'Inval
 e0147ec:	74616469 20676e69 6320726f 6e61656c     idating or clean
 e0147fc:	20676e69 61632061 27656863 00000a2e     ing a cache'....
 e01480c:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
 e01481c:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
 e01482c:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
 e01483c:	2a2a2a2a 2a2a2a2a 000a2a2a 74726f43     **********..Cort
 e01484c:	412d7865 61745320 53207472 64656863     ex-A Start Sched
 e01485c:	72656c75 0000000a 2d2d2d2d 2d2d2d2d     uler....--------
 e01486c:	2d2d2d2d 2d2d2d2d 4554202d 43205453     --------- TEST C
 e01487c:	414d4d4f 4d20444e 2045444f 504c4548     OMMAND MODE HELP
 e01488c:	2d782520 2d2d2d2d 2d2d2d2d 2d2d2d2d      %x-------------
 e01489c:	2d2d2d2d 00000a2d 494e4f4d 00524f54     -----...MONITOR.
 e0148ac:	000a7325 2d2d2d2d 2d2d2d2d 2d2d2d2d     %s..------------
 e0148bc:	2d2d2d2d 4554202d 43205453 414d4d4f     ----- TEST COMMA
 e0148cc:	4d20444e 2045444f 20444e45 2d782520     ND MODE END  %x-
 e0148dc:	2d2d2d2d 2d2d2d2d 2d2d2d2d 2d2d2d2d     ----------------
 e0148ec:	00000a2d 6f626552 6e69746f 2e2e2067     -...Rebooting ..
 e0148fc:	000d0a2e 74726175 6e727562 00000000     ....uartburn....
 e01490c:	00000072 00000061 65707974 00000000     r...a...type....
 e01491c:	00006770 00006763 00746567 6b636f6c     pg..cg..get.lock
 e01492c:	3a746962 20786c25 0000000a 706c7364     bit:%lx ....dslp
 e01493c:	636f6c5f 7469626b 786c253a 0000000a     _lockbit:%lx....
 e01494c:	3830255b 25205d78 20783830 0000000a     [%08x] %08x ....
 e01495c:	6e6f7257 72612067 656d7567 6e20746e     Wrong argument n
 e01496c:	65626d75 0a0d2172 00000000 50495352     umber!......RSIP
 e01497c:	616e6520 64656c62 6143202c 2074276e      enabled, Can't 
 e01498c:	64616552 616c4620 0a2e6873 00000000     Read Flash......
 e01499c:	6e6f7257 6d632067 0a0d2164 00000000     Wrong cmd!......
 e0149ac:	73756665 656d2065 616d206d 636f6c6c     efuse mem malloc
 e0149bc:	69616620 000a206c 70616d77 00000000      fail ..wmap....
 e0149cc:	69727473 6c20676e 74676e65 6c252868     string length(%l
 e0149dc:	73202975 6c756f68 65622064 64646f20     u) should be odd
 e0149ec:	00000a20 73706f4f 7277203a 20657469      ...Oops: write 
 e0149fc:	746e656c 6f6e2068 616d2074 20686374     lenth not match 
 e014a0c:	75706e69 74732074 676e6972 6e656c20     input string len
 e014a1c:	202c6774 6f6f6863 73206573 6c6c616d     tg, choose small
 e014a2c:	6f207265 000a656e 73756665 6d772065     er one..efuse wm
 e014a3c:	77207061 65746972 6e656c20 756c253a     ap write len:%lu
 e014a4c:	7473202c 676e6972 6e656c20 756c253a     , string len:%lu
 e014a5c:	0000000a 70616d72 00000000 73756665     ....rmap....efus
 e014a6c:	6d722065 0a207061 00000000 53554645     e rmap .....EFUS
 e014a7c:	6f4c5f45 61636967 70614d6c 6165525f     E_LogicalMap_Rea
 e014a8c:	61662064 0a206c69 00000000 00000d0a     d fail .........
 e014a9c:	46450d0a 5b455355 6c333025 003a5d78     ..EFUSE[%03lx]:.
 e014aac:	32302520 00000078 77617272 00000000      %02x...rraw....
 e014abc:	73756665 72722065 000a7761 61520d0a     efuse rraw....Ra
 e014acc:	70614d77 3330255b 3a5d786c 00000000     wMap[%03lx]:....
 e014adc:	77617277 00000000 77617277 6c25203a     wraw....wraw: %l
 e014aec:	78252078 00000a20 63746567 00006372     x %x ...getcrc..
 e014afc:	2077656e 20637263 756c6176 73692065     new crc value is
 e014b0c:	25783020 0000786c 73756665 72772065      0x%lx..efuse wr
 e014b1c:	77207761 65746972 6e656c20 756c253a     aw write len:%lu
 e014b2c:	7473202c 676e6972 6e656c20 756c253a     , string len:%lu
 e014b3c:	0000000a 0000003f 4c454809 7e282050     ....?....HELP (~
 e014b4c:	0a20293f 50200909 746e6972 69687420     ?) ... Print thi
 e014b5c:	65682073 6d20706c 61737365 00000a67     s help messag...
 e014b6c:	00005744 20574409 6464413c 73736572     DW...DW <Address
 e014b7c:	654c202c 6874676e 09090a3e 6d754420     , Length>... Dum
 e014b8c:	656d2070 79726f6d 726f7720 726f2064     p memory word or
 e014b9c:	61655220 77482064 726f7720 65722064      Read Hw word re
 e014bac:	74736967 203b7265 2009090a 3c205744     gister; ... DW <
 e014bbc:	72646461 0909203e 6d754420 6e6f2070     addr> .. Dump on
 e014bcc:	6f20796c 7720656e 2064726f 74207461     ly one word at t
 e014bdc:	73206568 20656d61 656d6974 6e75202c     he same time, un
 e014bec:	203a7469 74794234 090a7365 57442009     it: 4Bytes... DW
 e014bfc:	64613c20 203e7264 6e656c3c 4420093e      <addr> <len>. D
 e014c0c:	20706d75 20656874 63657073 65696669     ump the specifie
 e014c1c:	656c2064 6874676e 20666f20 20656874     d length of the 
 e014c2c:	64726f77 6e75202c 203a7469 74794234     word, unit: 4Byt
 e014c3c:	090a7365 57442009 64613c20 203e7264     es... DW <addr> 
 e014c4c:	6e656c3c 2062203e 6d754420 68742070     <len> b  Dump th
 e014c5c:	70732065 66696365 20646569 676e656c     e specified leng
 e014c6c:	6f206874 68742066 79622065 202c6574     th of the byte, 
 e014c7c:	74696e75 4231203a 0a657479 00000000     unit: 1Byte.....
 e014c8c:	00005745 20574509 6464413c 73736572     EW...EW <Address
 e014c9c:	6548202c 090a3e78 72572009 20657469     , Hex>... Write 
 e014cac:	6f6d656d 64207972 64726f77 20726f20     memory dword or 
 e014cbc:	74697257 77482065 6f776420 72206472     Write Hw dword r
 e014ccc:	73696765 20726574 2009090a 206e6143     egister ... Can 
 e014cdc:	74697277 6e6f2065 6f20796c 6420656e     write only one d
 e014cec:	64726f77 20746120 20656874 656d6173     word at the same
 e014cfc:	6d697420 090a2065 78452009 5745203a      time ... Ex: EW
 e014d0c:	64644120 73736572 6c615620 0a206575      Address Value .
 e014d1c:	00000000 4f424552 0000544f 42455209     ....REBOOT...REB
 e014d2c:	20544f4f 2009090a 6574693c 73202c6d     OOT ... <item, s
 e014d3c:	6e697274 3a203e67 09090a20 65746920     tring> : ... ite
 e014d4c:	75203a6d 62747261 206e7275 4e20726f     m: uartburn or N
 e014d5c:	0a20412f 0a200909 00000000 53554645     /A ... .....EFUS
 e014d6c:	00000045 55464509 0a204553 77200909     E....EFUSE ... w
 e014d7c:	2070616d 72646461 6e656c20 74616420     map addr len dat
 e014d8c:	09090a61 616d7220 090a2070 773c2009     a... rmap ... <w
 e014d9c:	2070616d 30307830 38203220 3e353931     map 0x00 2 8195>
 e014dac:	75666520 305b6573 78303d5d 202c3138      efuse[0]=0x81, 
 e014dbc:	73756665 315b2065 78303d5d 090a3539     efuse [1]=0x95..
 e014dcc:	773c2009 2070616d 30467830 31203420     . <wmap 0xF0 4 1
 e014ddc:	33323231 3e343433 78305b20 3d5d3046     1223344> [0xF0]=
 e014dec:	31317830 305b202c 5d314678 3278303d     0x11, [0xF1]=0x2
 e014dfc:	5b202c32 32467830 78303d5d 202c3333     2, [0xF2]=0x33, 
 e014e0c:	4678305b 303d5d33 0a343478 00000000     [0xF3]=0x44.....
 e014e1c:	4b434954 00005350 43495409 2053504b     TICKPS...TICKPS 
 e014e2c:	2009090a 72203a72 61656c65 6f206573     ... r: release o
 e014e3c:	61772073 6f6c656b 0a206b63 61200909     s wakelock ... a
 e014e4c:	6361203a 72697571 736f2065 6b617720     : acquire os wak
 e014e5c:	636f6c65 000a206b 474f4c09 61743c20     elock ...LOG <ta
 e014e6c:	6c202c67 6c657665 090a203e 65532009     g, level> ... Se
 e014e7c:	68742074 6f6c2065 69642067 616c7073     t the log displa
 e014e8c:	656c2079 206c6576 6120666f 646f6d20     y level of a mod
 e014e9c:	20656c75 69646e69 75646976 796c6c61     ule individually
 e014eac:	2009090a 6761743c 6d203a3e 6c75646f     ... <tag>: modul
 e014ebc:	616c2065 2c6c6562 20664920 20656874     e label, If the 
 e014ecc:	20676174 2a207369 6874202c 77207369     tag is *, this w
 e014edc:	206c6c69 65736572 6c612074 6174206c     ill reset all ta
 e014eec:	656c2067 736c6576 63786520 20747065     g levels except 
 e014efc:	736f6874 64612065 20646564 74206f74     those added to t
 e014f0c:	61206568 79617272 2009090a 76656c3c     he array... <lev
 e014f1c:	3a3e6c65 74202c30 206e7275 2066666f     el>:0, turn off 
 e014f2c:	0a676f6c 20090909 2c312020 776c6120     log....   1, alw
 e014f3c:	20737961 73655228 6e656469 6f6c2974     ays (Resident)lo
 e014f4c:	09090a67 20202009 65202c32 726f7272     g....   2, error
 e014f5c:	676f6c20 0909090a 33202020 6177202c      log....   3, wa
 e014f6c:	6e696e72 6f6c2067 09090a67 20202009     rning log....   
 e014f7c:	69202c34 206f666e 0a676f6c 20090909     4, info log.... 
 e014f8c:	2c352020 62656420 6c206775 000a676f       5, debug log..
 e014f9c:	3f535441 00000000 00007325 6e750a0d     ATS?....%s....un
 e014fac:	776f6e6b 6f63206e 6e616d6d 25272064     known command '%
 e014fbc:	00002773 230a0a0d 00000a0d 6c656873     s'.....#....shel
 e014fcc:	61745f6c 00006b73 61657243 4c206574     l_task..Create L
 e014fdc:	5520676f 20545241 6b736154 72724520     og UART Task Err
 e014fec:	000a2121 65737361 65207472 20217272     !!..assert err! 
 e014ffc:	656c6966 7325203a 696c202c 203a656e     file: %s, line: 
 e01500c:	000a6425 6d6f682f 69712f65 6568735f     %d../home/qi_she
 e01501c:	656a2f6e 63697373 2e362f61 6f732f36     n/jessica/6.6/so
 e01502c:	65637275 69662f73 61776d72 632f6572     urces/firmware/c
 e01503c:	6f706d6f 746e656e 636f732f 656d612f     omponent/soc/ame
 e01504c:	6d736162 2f747261 696c7766 70612f62     basmart/fwlib/ap
 e01505c:	726f635f 6c782f65 745f7461 656c6261     _core/xlat_table
 e01506c:	616c782f 61745f74 73656c62 6e6f635f     /xlat_tables_con
 e01507c:	74786574 0000632e 6d6f682f 69712f65     text.c../home/qi
 e01508c:	6568735f 656a2f6e 63697373 2e362f61     _shen/jessica/6.
 e01509c:	6f732f36 65637275 69662f73 61776d72     6/sources/firmwa
 e0150ac:	632f6572 6f706d6f 746e656e 636f732f     re/component/soc
 e0150bc:	656d612f 6d736162 2f747261 696c7766     /amebasmart/fwli
 e0150cc:	70612f62 726f635f 6c782f65 745f7461     b/ap_core/xlat_t
 e0150dc:	656c6261 616c782f 61745f74 73656c62     able/xlat_tables
 e0150ec:	726f635f 00632e65 616d6d0a 64615f70     _core.c..mmap_ad
 e0150fc:	65725f64 6e6f6967 6568635f 29286b63     d_region_check()
 e01510c:	69616620 2e64656c 72726520 2520726f      failed. error %
 e01511c:	00000a64 20746f4e 756f6e65 6d206867     d...Not enough m
 e01512c:	726f6d65 6f742079 70616d20 67657220     emory to map reg
 e01513c:	3a6e6f69 4156200a 2578303a 2020786c     ion:. VA:0x%lx  
 e01514c:	303a4150 6c6c2578 73202078 3a657a69     PA:0x%llx  size:
 e01515c:	7a257830 61202078 3a727474 78257830     0x%zx  attr:0x%x
 e01516c:	0000000a 6d6f682f 69712f65 6568735f     ..../home/qi_she
 e01517c:	656a2f6e 63697373 2e362f61 6f732f36     n/jessica/6.6/so
 e01518c:	65637275 69662f73 61776d72 632f6572     urces/firmware/c
 e01519c:	6f706d6f 746e656e 636f732f 656d612f     omponent/soc/ame
 e0151ac:	6d736162 2f747261 696c7766 70612f62     basmart/fwlib/ap
 e0151bc:	726f635f 6c782f65 745f7461 656c6261     _core/xlat_table
 e0151cc:	616c782f 61745f74 73656c62 6372615f     /xlat_tables_arc
 e0151dc:	00632e68 6d6f682f 69712f65 6568735f     h.c./home/qi_she
 e0151ec:	656a2f6e 63697373 2e362f61 6f732f36     n/jessica/6.6/so
 e0151fc:	65637275 69662f73 61776d72 632f6572     urces/firmware/c
 e01520c:	6f706d6f 746e656e 636f732f 656d612f     omponent/soc/ame
 e01521c:	6d736162 2f747261 2f62696c 5f6d6172     basmart/lib/ram_
 e01522c:	6d6d6f63 612f6e6f 6162656d 6968635f     common/ameba_chi
 e01523c:	666e6970 696c5f6f 00632e62 203a7325     pinfo_lib.c.%s: 
 e01524c:	00000000 3a525245 74654720 636f5320     ....ERR: Get Soc
 e01525c:	6d614e20 61462065 000a6c69 78323025      Name Fail..%02x
 e01526c:	00000000 00304d4b 32334143 00000000     ....KM0.CA32....
 e01527c:	00344d4b 4c207325 56206269 69737265     KM4.%s Lib Versi
 e01528c:	0a3a6e6f 00000000 00006325 33323130     on:.....%c..0123
 e01529c:	37363534 42413938 46454443 00000000     456789ABCDEF....
 e0152ac:	64206f69 65766972 61702072 656d6172     io driver parame
 e0152bc:	73726574 72726520 2021726f 656c6966     ters error! file
 e0152cc:	6d616e5f 25203a65 6c202c73 3a656e69     _name: %s, line:
 e0152dc:	00642520 6d6f682f 69712f65 6568735f      %d./home/qi_she
 e0152ec:	656a2f6e 63697373 2e362f61 6f732f36     n/jessica/6.6/so
 e0152fc:	65637275 69662f73 61776d72 632f6572     urces/firmware/c
 e01530c:	6f706d6f 746e656e 636f732f 656d612f     omponent/soc/ame
 e01531c:	6d736162 2f747261 696c7766 6f722f62     basmart/fwlib/ro
 e01532c:	6f635f6d 6e6f6d6d 656d612f 625f6162     m_common/ameba_b
 e01533c:	756b6361 65725f70 00632e67 6d6f682f     ackup_reg.c./hom
 e01534c:	69712f65 6568735f 656a2f6e 63697373     e/qi_shen/jessic
 e01535c:	2e362f61 6f732f36 65637275 69662f73     a/6.6/sources/fi
 e01536c:	61776d72 632f6572 6f706d6f 746e656e     rmware/component
 e01537c:	636f732f 656d612f 6d736162 2f747261     /soc/amebasmart/
 e01538c:	696c7766 6f722f62 6f635f6d 6e6f6d6d     fwlib/rom_common
 e01539c:	656d612f 745f6162 725f6d69 632e6d6f     /ameba_tim_rom.c
 e0153ac:	00000000 73546f4e 0000006b 6c6c614d     ....NoTsk...Mall
 e0153bc:	6620636f 656c6961 43202e64 3a65726f     oc failed. Core:
 e0153cc:	5d73255b 6154202c 5b3a6b73 2c5d7325     [%s], Task:[%s],
 e0153dc:	72665b20 68206565 20706165 657a6973      [free heap size
 e0153ec:	6425203a 000a0d5d 54530d0a 204b4341     : %d].....STACK 
 e0153fc:	5245564f 574f4c46 54202d20 4e6b7361     OVERFLOW - TaskN
 e01540c:	28656d61 0a297325 0000000d 454c4449     ame(%s).....IDLE
 e01541c:	00000000 51726d54 00000000 20726d54     ....TmrQ....Tmr 
 e01542c:	00637653 6f727245 53202172 6c756f68     Svc.Error! Shoul
 e01543c:	656e2064 20726576 63616572 65682068     d never reach he
 e01544c:	0a216572 00000000 00434d50 7566202c     re!.....PMC., fu
 e01545c:	6974636e 203a6e6f 73736100 69747265     nction: .asserti
 e01546c:	22206e6f 20227325 6c696166 203a6465     on "%s" failed: 
 e01547c:	656c6966 73252220 6c202c22 20656e69     file "%s", line 
 e01548c:	73256425 000a7325 33323130 37363534     %d%s%s..01234567
 e01549c:	42413938 46454443 32313000 36353433     89ABCDEF.0123456
 e0154ac:	61393837 65646362 6e490066 696e6966     789abcdef.Infini
 e0154bc:	4e007974 30004e61 45455200 6d20544e     ty.NaN.0.REENT m
 e0154cc:	6f6c6c61 75732063 65656363 00646564     alloc succeeded.
 e0154dc:	6473732f 626f742f 6f616779 5053502f     /ssd/tobygao/PSP
 e0154ec:	50505553 2d54524f 30323233 3730342f     SUPPORT-3220/407
 e0154fc:	656e2f32 62696c77 312e342d 77656e2f     2/newlib-4.1/new
 e01550c:	2f62696c 6362696c 6474732f 2f62696c     lib/libc/stdlib/
 e01551c:	616f7464 4200632e 6f6c6c61 75732063     dtoa.c.Balloc su
 e01552c:	65656363 00646564 4f500043 00584953     cceeded.C.POSIX.
 e01553c:	732f002e 742f6473 6779626f 502f6f61     ../ssd/tobygao/P
 e01554c:	55535053 524f5050 32332d54 342f3032     SPSUPPORT-3220/4
 e01555c:	2f323730 6c77656e 342d6269 6e2f312e     072/newlib-4.1/n
 e01556c:	696c7765 696c2f62 732f6362 696c6474     ewlib/libc/stdli
 e01557c:	706d2f62 2e636572 4e490063 6e690046     b/mprec.c.INF.in
 e01558c:	414e0066 616e004e 0000006e              f.NAN.nan...

0e015598 <shell_cmd_table>:
 e015598:	0e014b40 00000000 0e00b8c8 0e014b44     @K..........DK..
 e0155a8:	0e014b6c 00000004 0e00bbe0 0e014b70     lK..........pK..
 e0155b8:	0e014c8c 00000002 0e00bb38 0e014c90     .L......8....L..
 e0155c8:	0e014d20 00000004 0e00b980 0e014d28      M..........(M..
 e0155d8:	0e014d68 00000008 0e00be30 0e014d70     hM......0...pM..
 e0155e8:	0e014e1c 00000004 0e00ba04 0e014e24     .N..........$N..
 e0155f8:	0e014548 00000003 0e00c488 0e014e64     HE..........dN..

0e015608 <ipc_LPWHP_table>:
 e015608:	00000001 0e009244 00000000 0e009870     ....D.......p...
 e015618:	00000000 00000001 00000001              ............

0e015624 <ipc_shell_table>:
 e015624:	00000001 0e00c510 00000000 0e009870     ............p...
	...
 e015640:	00000001 0e00c510 00000000 0e009870     ............p...
 e015650:	00000000 00000001 00000000              ............

0e01565c <lib_freertos_smp_git_rev>:
 e01565c:	62696c20 6572665f 6f747265 6d735f73      lib_freertos_sm
 e01566c:	65765f70 63655f72 32363863 38383730     p_ver_ecc8620788
 e01567c:	3230325f 31302f35 2d32322f 353a3331     _2025/01/22-13:5
 e01568c:	36333a32 00000000                       2:36....

0e015694 <lib_pmc_git_rev>:
 e015694:	62696c20 636d705f 7265765f 6363655f      lib_pmc_ver_ecc
 e0156a4:	30323638 5f383837 35323032 2f31302f     8620788_2025/01/
 e0156b4:	312d3232 32353a33 0036333a              22-13:52:36.

Disassembly of section .code:

60094000 <__dram_text_start__>:
60094000:	ea000030 	b	600940c8 <_boot>
60094004:	ea000009 	b	60094030 <FreeRTOS_UndefinedHandler>
60094008:	ea00015e 	b	60094588 <__FreeRTOS_SWI_Handler_veneer>
6009400c:	ea00001f 	b	60094090 <FreeRTOS_PrefetchAbortHandler>
60094010:	ea000012 	b	60094060 <FreeRTOS_DataAbortHandler>
60094014:	eafffffe 	b	60094014 <__dram_text_start__+0x14>
60094018:	ea000156 	b	60094578 <__FreeRTOS_IRQ_Handler_veneer>
6009401c:	eaffffff 	b	60094020 <FreeRTOS_FIQHandler>

60094020 <FreeRTOS_FIQHandler>:
60094020:	e92d500f 	push	{r0, r1, r2, r3, ip, lr}
60094024:	eb00015b 	bl	60094598 <__FIQHandler_veneer>
60094028:	e8bd500f 	pop	{r0, r1, r2, r3, ip, lr}
6009402c:	e25ef004 	subs	pc, lr, #4

60094030 <FreeRTOS_UndefinedHandler>:
60094030:	e92d500f 	push	{r0, r1, r2, r3, ip, lr}
60094034:	e59f0080 	ldr	r0, [pc, #128]	; 600940bc <FreeRTOS_PrefetchAbortHandler+0x2c>
60094038:	e24e1004 	sub	r1, lr, #4
6009403c:	e5801000 	str	r1, [r0]
60094040:	e92d0ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp}
60094044:	e1a0000d 	mov	r0, sp
60094048:	e14f1000 	mrs	r1, SPSR
6009404c:	eb000141 	bl	60094558 <__UndefinedExceptionHandler_veneer>
60094050:	e8bd0ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp}
60094054:	e8bd500f 	pop	{r0, r1, r2, r3, ip, lr}
60094058:	e1b0f00e 	movs	pc, lr
6009405c:	e320f000 	nop	{0}

60094060 <FreeRTOS_DataAbortHandler>:
60094060:	e92d500f 	push	{r0, r1, r2, r3, ip, lr}
60094064:	e59f0054 	ldr	r0, [pc, #84]	; 600940c0 <FreeRTOS_PrefetchAbortHandler+0x30>
60094068:	e24e1008 	sub	r1, lr, #8
6009406c:	e5801000 	str	r1, [r0]
60094070:	e92d0ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp}
60094074:	e1a0000d 	mov	r0, sp
60094078:	e14f1000 	mrs	r1, SPSR
6009407c:	eb00013f 	bl	60094580 <__DataAbortHandler_veneer>
60094080:	e8bd0ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp}
60094084:	e8bd500f 	pop	{r0, r1, r2, r3, ip, lr}
60094088:	e25ef008 	subs	pc, lr, #8
6009408c:	e320f000 	nop	{0}

60094090 <FreeRTOS_PrefetchAbortHandler>:
60094090:	e92d500f 	push	{r0, r1, r2, r3, ip, lr}
60094094:	e59f0028 	ldr	r0, [pc, #40]	; 600940c4 <FreeRTOS_PrefetchAbortHandler+0x34>
60094098:	e24e1004 	sub	r1, lr, #4
6009409c:	e5801000 	str	r1, [r0]
600940a0:	e92d0ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp}
600940a4:	e1a0000d 	mov	r0, sp
600940a8:	e14f1000 	mrs	r1, SPSR
600940ac:	eb00013b 	bl	600945a0 <__PrefetchAbortHandler_veneer>
600940b0:	e8bd0ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp}
600940b4:	e8bd500f 	pop	{r0, r1, r2, r3, ip, lr}
600940b8:	e25ef004 	subs	pc, lr, #4
600940bc:	600a3610 	.word	0x600a3610
600940c0:	600a3608 	.word	0x600a3608
600940c4:	600a360c 	.word	0x600a360c

600940c8 <_boot>:
600940c8:	e59f0274 	ldr	r0, [pc, #628]	; 60094344 <putc_error+0x8>
600940cc:	ee0c0f10 	mcr	15, 0, r0, cr12, cr0, {0}
600940d0:	e3a00000 	mov	r0, #0
600940d4:	ee080f17 	mcr	15, 0, r0, cr8, cr7, {0}
600940d8:	ee070f15 	mcr	15, 0, r0, cr7, cr5, {0}
600940dc:	ee070fd5 	mcr	15, 0, r0, cr7, cr5, {6}
600940e0:	f57ff04f 	dsb	sy
600940e4:	f57ff06f 	isb	sy
600940e8:	eb000060 	bl	60094270 <invalidate_dcache>
600940ec:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
600940f0:	e3c00a02 	bic	r0, r0, #8192	; 0x2000
600940f4:	e3c00007 	bic	r0, r0, #7
600940f8:	e3800002 	orr	r0, r0, #2
600940fc:	e3800b02 	orr	r0, r0, #2048	; 0x800
60094100:	e3c00a01 	bic	r0, r0, #4096	; 0x1000
60094104:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
60094108:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
6009410c:	e20030ff 	and	r3, r0, #255	; 0xff
60094110:	e2833001 	add	r3, r3, #1
60094114:	e10f0000 	mrs	r0, CPSR
60094118:	e3e0101f 	mvn	r1, #31
6009411c:	e0012000 	and	r2, r1, r0
60094120:	e3822011 	orr	r2, r2, #17
60094124:	e129f002 	msr	CPSR_fc, r2
60094128:	e3a00b01 	mov	r0, #1024	; 0x400
6009412c:	e0010390 	mul	r1, r0, r3
60094130:	e59f2210 	ldr	r2, [pc, #528]	; 60094348 <putc_error+0xc>
60094134:	e081d002 	add	sp, r1, r2
60094138:	e10f0000 	mrs	r0, CPSR
6009413c:	e3e0101f 	mvn	r1, #31
60094140:	e0012000 	and	r2, r1, r0
60094144:	e3822012 	orr	r2, r2, #18
60094148:	e129f002 	msr	CPSR_fc, r2
6009414c:	e3a00b01 	mov	r0, #1024	; 0x400
60094150:	e0010390 	mul	r1, r0, r3
60094154:	e59f21f0 	ldr	r2, [pc, #496]	; 6009434c <putc_error+0x10>
60094158:	e081d002 	add	sp, r1, r2
6009415c:	e10f0000 	mrs	r0, CPSR
60094160:	e3e0101f 	mvn	r1, #31
60094164:	e0012000 	and	r2, r1, r0
60094168:	e3822017 	orr	r2, r2, #23
6009416c:	e129f002 	msr	CPSR_fc, r2
60094170:	e3a00b01 	mov	r0, #1024	; 0x400
60094174:	e0010390 	mul	r1, r0, r3
60094178:	e59f21d0 	ldr	r2, [pc, #464]	; 60094350 <putc_error+0x14>
6009417c:	e081d002 	add	sp, r1, r2
60094180:	e10f0000 	mrs	r0, CPSR
60094184:	e3e0101f 	mvn	r1, #31
60094188:	e0012000 	and	r2, r1, r0
6009418c:	e382201b 	orr	r2, r2, #27
60094190:	e129f002 	msr	CPSR_fc, r2
60094194:	e3a00b01 	mov	r0, #1024	; 0x400
60094198:	e0010390 	mul	r1, r0, r3
6009419c:	e59f21b0 	ldr	r2, [pc, #432]	; 60094354 <putc_error+0x18>
600941a0:	e081d002 	add	sp, r1, r2
600941a4:	e10f0000 	mrs	r0, CPSR
600941a8:	e3e0101f 	mvn	r1, #31
600941ac:	e0012000 	and	r2, r1, r0
600941b0:	e382201f 	orr	r2, r2, #31
600941b4:	e129f002 	msr	CPSR_fc, r2
600941b8:	e3a00b01 	mov	r0, #1024	; 0x400
600941bc:	e0010390 	mul	r1, r0, r3
600941c0:	e59f2190 	ldr	r2, [pc, #400]	; 60094358 <putc_error+0x1c>
600941c4:	e081d002 	add	sp, r1, r2
600941c8:	e10f0000 	mrs	r0, CPSR
600941cc:	e3e0101f 	mvn	r1, #31
600941d0:	e0012000 	and	r2, r1, r0
600941d4:	e3822013 	orr	r2, r2, #19
600941d8:	e129f002 	msr	CPSR_fc, r2
600941dc:	e3a00b02 	mov	r0, #2048	; 0x800
600941e0:	e0010390 	mul	r1, r0, r3
600941e4:	e59f2170 	ldr	r2, [pc, #368]	; 6009435c <putc_error+0x20>
600941e8:	e081d002 	add	sp, r1, r2
600941ec:	ee110f30 	mrc	15, 0, r0, cr1, cr0, {1}
600941f0:	e3800040 	orr	r0, r0, #64	; 0x40
600941f4:	e3800001 	orr	r0, r0, #1
600941f8:	ee010f30 	mcr	15, 0, r0, cr1, cr0, {1}
600941fc:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
60094200:	e20000ff 	and	r0, r0, #255	; 0xff
60094204:	e2800001 	add	r0, r0, #1
60094208:	eb0000d4 	bl	60094560 <__setupMMUTable_veneer>
6009420c:	e59f014c 	ldr	r0, [pc, #332]	; 60094360 <putc_error+0x24>
60094210:	ee030f10 	mcr	15, 0, r0, cr3, cr0, {0}
60094214:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
60094218:	e3c00a02 	bic	r0, r0, #8192	; 0x2000
6009421c:	e3c00002 	bic	r0, r0, #2
60094220:	e3800a01 	orr	r0, r0, #4096	; 0x1000
60094224:	e3800004 	orr	r0, r0, #4
60094228:	e3800001 	orr	r0, r0, #1
6009422c:	f57ff04f 	dsb	sy
60094230:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
60094234:	f57ff06f 	isb	sy
60094238:	ee111f50 	mrc	15, 0, r1, cr1, cr0, {2}
6009423c:	e381160f 	orr	r1, r1, #15728640	; 0xf00000
60094240:	ee011f50 	mcr	15, 0, r1, cr1, cr0, {2}
60094244:	eef81a10 	vmrs	r1, fpexc
60094248:	e3811101 	orr	r1, r1, #1073741824	; 0x40000000
6009424c:	eee81a10 	vmsr	fpexc, r1
60094250:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
60094254:	e20030ff 	and	r3, r0, #255	; 0xff
60094258:	e2833001 	add	r3, r3, #1
6009425c:	e3530001 	cmp	r3, #1
60094260:	ca0000c2 	bgt	60094570 <__vPortSecondaryStart_veneer>
60094264:	eb0000bf 	bl	60094568 <__app_start_veneer>
60094268:	ebffffff 	bl	6009426c <exit>

6009426c <exit>:
6009426c:	ea0000c7 	b	60094590 <___exit_veneer>

60094270 <invalidate_dcache>:
60094270:	ee300f30 	mrc	15, 1, r0, cr0, cr0, {1}
60094274:	e2103407 	ands	r3, r0, #117440512	; 0x7000000
60094278:	e1a03c23 	lsr	r3, r3, #24
6009427c:	0a00001a 	beq	600942ec <finished>
60094280:	e3a0a000 	mov	sl, #0

60094284 <loop1>:
60094284:	e08a20aa 	add	r2, sl, sl, lsr #1
60094288:	e1a01230 	lsr	r1, r0, r2
6009428c:	e2011007 	and	r1, r1, #7
60094290:	e3510002 	cmp	r1, #2
60094294:	ba000011 	blt	600942e0 <skip>
60094298:	ee40af10 	mcr	15, 2, sl, cr0, cr0, {0}
6009429c:	f57ff06f 	isb	sy
600942a0:	ee301f10 	mrc	15, 1, r1, cr0, cr0, {0}
600942a4:	e2012007 	and	r2, r1, #7
600942a8:	e2822004 	add	r2, r2, #4
600942ac:	e59f40b0 	ldr	r4, [pc, #176]	; 60094364 <putc_error+0x28>
600942b0:	e01441a1 	ands	r4, r4, r1, lsr #3
600942b4:	e16f5f14 	clz	r5, r4
600942b8:	e59f70a8 	ldr	r7, [pc, #168]	; 60094368 <putc_error+0x2c>
600942bc:	e01776a1 	ands	r7, r7, r1, lsr #13

600942c0 <loop2>:
600942c0:	e1a09004 	mov	r9, r4

600942c4 <loop3>:
600942c4:	e18ab519 	orr	fp, sl, r9, lsl r5
600942c8:	e18bb217 	orr	fp, fp, r7, lsl r2
600942cc:	ee07bf56 	mcr	15, 0, fp, cr7, cr6, {2}
600942d0:	e2599001 	subs	r9, r9, #1
600942d4:	aafffffa 	bge	600942c4 <loop3>
600942d8:	e2577001 	subs	r7, r7, #1
600942dc:	aafffff7 	bge	600942c0 <loop2>

600942e0 <skip>:
600942e0:	e28aa002 	add	sl, sl, #2
600942e4:	e153000a 	cmp	r3, sl
600942e8:	caffffe5 	bgt	60094284 <loop1>

600942ec <finished>:
600942ec:	e3a0a000 	mov	sl, #0
600942f0:	ee40af10 	mcr	15, 2, sl, cr0, cr0, {0}
600942f4:	f57ff04f 	dsb	sy
600942f8:	f57ff06f 	isb	sy
600942fc:	e12fff1e 	bx	lr

60094300 <__PutCharacter>:
60094300:	e59f1064 	ldr	r1, [pc, #100]	; 6009436c <putc_error+0x30>
60094304:	e3510000 	cmp	r1, #0
60094308:	0a00000b 	beq	6009433c <putc_error>
6009430c:	e350000a 	cmp	r0, #10
60094310:	1a000004 	bne	60094328 <__PutCharacter+0x28>
60094314:	e5912014 	ldr	r2, [r1, #20]
60094318:	e3120502 	tst	r2, #8388608	; 0x800000
6009431c:	0afffffc 	beq	60094314 <__PutCharacter+0x14>
60094320:	e3a0200d 	mov	r2, #13
60094324:	e5812068 	str	r2, [r1, #104]	; 0x68
60094328:	e5912014 	ldr	r2, [r1, #20]
6009432c:	e3120502 	tst	r2, #8388608	; 0x800000
60094330:	0afffffc 	beq	60094328 <__PutCharacter+0x28>
60094334:	e5810068 	str	r0, [r1, #104]	; 0x68
60094338:	e12fff1e 	bx	lr

6009433c <putc_error>:
6009433c:	e3e00000 	mvn	r0, #0
60094340:	e12fff1e 	bx	lr
60094344:	60094000 	.word	0x60094000
60094348:	600ab680 	.word	0x600ab680
6009434c:	600abe80 	.word	0x600abe80
60094350:	600ad680 	.word	0x600ad680
60094354:	600ade80 	.word	0x600ade80
60094358:	600ae680 	.word	0x600ae680
6009435c:	600ac680 	.word	0x600ac680
60094360:	55555555 	.word	0x55555555
60094364:	000003ff 	.word	0x000003ff
60094368:	00007fff 	.word	0x00007fff
6009436c:	4200c000 	.word	0x4200c000

60094370 <cpu_suspend>:
60094370:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
60094374:	e1a0500d 	mov	r5, sp
60094378:	e92d0003 	push	{r0, r1}
6009437c:	e1a00005 	mov	r0, r5
60094380:	eb000088 	bl	600945a8 <__cpu_suspend_save_veneer>
60094384:	e8bd8001 	pop	{r0, pc}
60094388:	e320f000 	nop	{0}
6009438c:	e320f000 	nop	{0}

60094390 <cpu_do_suspend>:
60094390:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
60094394:	f1020013 	cps	#19
60094398:	ee1d4f10 	mrc	15, 0, r4, cr13, cr0, {0}
6009439c:	ee1d5f70 	mrc	15, 0, r5, cr13, cr0, {3}
600943a0:	e8a00030 	stmia	r0!, {r4, r5}
600943a4:	ee1c4f10 	mrc	15, 0, r4, cr12, cr0, {0}
600943a8:	ee1a6f12 	mrc	15, 0, r6, cr10, cr2, {0}
600943ac:	ec575f02 	mrrc	15, 0, r5, r7, cr2
600943b0:	ee12bf50 	mrc	15, 0, fp, cr2, cr0, {2}
600943b4:	ee118f10 	mrc	15, 0, r8, cr1, cr0, {0}
600943b8:	ee119f30 	mrc	15, 0, r9, cr1, cr0, {1}
600943bc:	ee11af50 	mrc	15, 0, sl, cr1, cr0, {2}
600943c0:	e8a00ff0 	stmia	r0!, {r4, r5, r6, r7, r8, r9, sl, fp}
600943c4:	f1020012 	cps	#18
600943c8:	e14f2000 	mrs	r2, SPSR
600943cc:	e4802004 	str	r2, [r0], #4
600943d0:	e480d004 	str	sp, [r0], #4
600943d4:	e480e004 	str	lr, [r0], #4
600943d8:	f1020011 	cps	#17
600943dc:	e14f2000 	mrs	r2, SPSR
600943e0:	e4802004 	str	r2, [r0], #4
600943e4:	e480d004 	str	sp, [r0], #4
600943e8:	e480e004 	str	lr, [r0], #4
600943ec:	f1020017 	cps	#23
600943f0:	e14f2000 	mrs	r2, SPSR
600943f4:	e4802004 	str	r2, [r0], #4
600943f8:	e480d004 	str	sp, [r0], #4
600943fc:	e480e004 	str	lr, [r0], #4
60094400:	f102001b 	cps	#27
60094404:	e14f2000 	mrs	r2, SPSR
60094408:	e4802004 	str	r2, [r0], #4
6009440c:	e480d004 	str	sp, [r0], #4
60094410:	e480e004 	str	lr, [r0], #4
60094414:	f1020013 	cps	#19
60094418:	e14f2000 	mrs	r2, SPSR
6009441c:	e4802004 	str	r2, [r0], #4
60094420:	e480d004 	str	sp, [r0], #4
60094424:	e480e004 	str	lr, [r0], #4
60094428:	f102001f 	cps	#31
6009442c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

60094430 <cpu_resume>:
60094430:	e59f10cc 	ldr	r1, [pc, #204]	; 60094504 <cpu_resume+0xd4>
60094434:	e2810004 	add	r0, r1, #4
60094438:	e3a0c000 	mov	ip, #0
6009443c:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
60094440:	ee0dcf30 	mcr	15, 0, ip, cr13, cr0, {1}
60094444:	e8b00030 	ldm	r0!, {r4, r5}
60094448:	ee0d4f10 	mcr	15, 0, r4, cr13, cr0, {0}
6009444c:	ee0d5f70 	mcr	15, 0, r5, cr13, cr0, {3}
60094450:	e8b00ff0 	ldm	r0!, {r4, r5, r6, r7, r8, r9, sl, fp}
60094454:	ee0c4f10 	mcr	15, 0, r4, cr12, cr0, {0}
60094458:	ee08cf17 	mcr	15, 0, ip, cr8, cr7, {0}
6009445c:	ee0a6f12 	mcr	15, 0, r6, cr10, cr2, {0}
60094460:	ec4c1f12 	mcrr	15, 1, r1, ip, cr2
60094464:	ec475f02 	mcrr	15, 0, r5, r7, cr2
60094468:	ee02bf50 	mcr	15, 0, fp, cr2, cr0, {2}
6009446c:	ee019f30 	mcr	15, 0, r9, cr1, cr0, {1}
60094470:	ee01af50 	mcr	15, 0, sl, cr1, cr0, {2}
60094474:	f57ff06f 	isb	sy
60094478:	f57ff04f 	dsb	sy
6009447c:	ee018f10 	mcr	15, 0, r8, cr1, cr0, {0}
60094480:	f1020012 	cps	#18
60094484:	e4902004 	ldr	r2, [r0], #4
60094488:	e490d004 	ldr	sp, [r0], #4
6009448c:	e490e004 	ldr	lr, [r0], #4
60094490:	e16ff002 	msr	SPSR_fsxc, r2
60094494:	f1020011 	cps	#17
60094498:	e4902004 	ldr	r2, [r0], #4
6009449c:	e490d004 	ldr	sp, [r0], #4
600944a0:	e490e004 	ldr	lr, [r0], #4
600944a4:	e16ff002 	msr	SPSR_fsxc, r2
600944a8:	f1020017 	cps	#23
600944ac:	e4902004 	ldr	r2, [r0], #4
600944b0:	e490d004 	ldr	sp, [r0], #4
600944b4:	e490e004 	ldr	lr, [r0], #4
600944b8:	e16ff002 	msr	SPSR_fsxc, r2
600944bc:	f102001b 	cps	#27
600944c0:	e4902004 	ldr	r2, [r0], #4
600944c4:	e490d004 	ldr	sp, [r0], #4
600944c8:	e490e004 	ldr	lr, [r0], #4
600944cc:	e16ff002 	msr	SPSR_fsxc, r2
600944d0:	f1020013 	cps	#19
600944d4:	e4902004 	ldr	r2, [r0], #4
600944d8:	e490d004 	ldr	sp, [r0], #4
600944dc:	e490e004 	ldr	lr, [r0], #4
600944e0:	e16ff002 	msr	SPSR_fsxc, r2
600944e4:	f57ff06f 	isb	sy
600944e8:	f57ff04f 	dsb	sy
600944ec:	f102001f 	cps	#31
600944f0:	e59f100c 	ldr	r1, [pc, #12]	; 60094504 <cpu_resume+0xd4>
600944f4:	e591d000 	ldr	sp, [r1]
600944f8:	f57ff06f 	isb	sy
600944fc:	e3a00000 	mov	r0, #0
60094500:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
60094504:	600a84b4 	.word	0x600a84b4

60094508 <FreeRTOS_IPI_FLASHPG_Handler>:
60094508:	e10f1000 	mrs	r1, CPSR
6009450c:	f10c0080 	cpsid	i
60094510:	f57ff04f 	dsb	sy
60094514:	f57ff06f 	isb	sy
60094518:	e3032d40 	movw	r2, #15680	; 0x3d40
6009451c:	e346200a 	movt	r2, #24586	; 0x600a
60094520:	e5923000 	ldr	r3, [r2]
60094524:	e2833001 	add	r3, r3, #1
60094528:	e5823000 	str	r3, [r2]
6009452c:	f57ff05f 	dmb	sy
60094530:	e5923000 	ldr	r3, [r2]
60094534:	e3530000 	cmp	r3, #0
60094538:	0a000003 	beq	6009454c <FreeRTOS_IPI_FLASHPG_Handler+0x44>
6009453c:	e320f002 	wfe
60094540:	e5923000 	ldr	r3, [r2]
60094544:	e3530000 	cmp	r3, #0
60094548:	1afffffb 	bne	6009453c <FreeRTOS_IPI_FLASHPG_Handler+0x34>
6009454c:	e121f001 	msr	CPSR_c, r1
60094550:	e12fff1e 	bx	lr
60094554:	00000000 	andeq	r0, r0, r0

60094558 <__UndefinedExceptionHandler_veneer>:
60094558:	e51ff004 	ldr	pc, [pc, #-4]	; 6009455c <__UndefinedExceptionHandler_veneer+0x4>
6009455c:	0e008cdc 	.word	0x0e008cdc

60094560 <__setupMMUTable_veneer>:
60094560:	e51ff004 	ldr	pc, [pc, #-4]	; 60094564 <__setupMMUTable_veneer+0x4>
60094564:	0e00ddb8 	.word	0x0e00ddb8

60094568 <__app_start_veneer>:
60094568:	e51ff004 	ldr	pc, [pc, #-4]	; 6009456c <__app_start_veneer+0x4>
6009456c:	0e008a98 	.word	0x0e008a98

60094570 <__vPortSecondaryStart_veneer>:
60094570:	e51ff004 	ldr	pc, [pc, #-4]	; 60094574 <__vPortSecondaryStart_veneer+0x4>
60094574:	0e0090fc 	.word	0x0e0090fc

60094578 <__FreeRTOS_IRQ_Handler_veneer>:
60094578:	e51ff004 	ldr	pc, [pc, #-4]	; 6009457c <__FreeRTOS_IRQ_Handler_veneer+0x4>
6009457c:	0e000120 	.word	0x0e000120

60094580 <__DataAbortHandler_veneer>:
60094580:	e51ff004 	ldr	pc, [pc, #-4]	; 60094584 <__DataAbortHandler_veneer+0x4>
60094584:	0e008d10 	.word	0x0e008d10

60094588 <__FreeRTOS_SWI_Handler_veneer>:
60094588:	e51ff004 	ldr	pc, [pc, #-4]	; 6009458c <__FreeRTOS_SWI_Handler_veneer+0x4>
6009458c:	0e000040 	.word	0x0e000040

60094590 <___exit_veneer>:
60094590:	e51ff004 	ldr	pc, [pc, #-4]	; 60094594 <___exit_veneer+0x4>
60094594:	0e007e90 	.word	0x0e007e90

60094598 <__FIQHandler_veneer>:
60094598:	e51ff004 	ldr	pc, [pc, #-4]	; 6009459c <__FIQHandler_veneer+0x4>
6009459c:	0e008ae4 	.word	0x0e008ae4

600945a0 <__PrefetchAbortHandler_veneer>:
600945a0:	e51ff004 	ldr	pc, [pc, #-4]	; 600945a4 <__PrefetchAbortHandler_veneer+0x4>
600945a4:	0e008d54 	.word	0x0e008d54

600945a8 <__cpu_suspend_save_veneer>:
600945a8:	e51ff004 	ldr	pc, [pc, #-4]	; 600945ac <__cpu_suspend_save_veneer+0x4>
600945ac:	0e013618 	.word	0x0e013618
	...
