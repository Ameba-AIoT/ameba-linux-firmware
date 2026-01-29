
/home/auto_jenkins_wlan5/IOT_ATS/repos/Release_SDK_Linux/Release_Sdk/sources/firmware/amebasmart_gcc_project/project_ap/asdk/image/target_img2.axf:     file format elf32-littlearm


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
 e0002a0:	600a3f00 	.word	0x600a3f00

0e0002a4 <ulPortTaskHasFPUContextConst>:
 e0002a4:	600a430c 	.word	0x600a430c

0e0002a8 <vTaskSwitchContextConst>:
 e0002a8:	0e00df60 	.word	0x0e00df60

0e0002ac <vApplicationIRQHandlerConst>:
 e0002ac:	0e000270 	.word	0x0e000270

0e0002b0 <vApplicationFPUSafeIRQHandlerConst>:
 e0002b0:	0e00a278 	.word	0x0e00a278
 e0002b4:	600a4304 	.word	0x600a4304
 e0002b8:	600a4310 	.word	0x600a4310

0e0002bc <deregister_tm_clones>:
 e0002bc:	e59f0018 	ldr	r0, [pc, #24]	; e0002dc <deregister_tm_clones+0x20>
 e0002c0:	e59f3018 	ldr	r3, [pc, #24]	; e0002e0 <deregister_tm_clones+0x24>
 e0002c4:	e1530000 	cmp	r3, r0
 e0002c8:	012fff1e 	bxeq	lr
 e0002cc:	e59f3010 	ldr	r3, [pc, #16]	; e0002e4 <deregister_tm_clones+0x28>
 e0002d0:	e3530000 	cmp	r3, #0
 e0002d4:	012fff1e 	bxeq	lr
 e0002d8:	e12fff13 	bx	r3
 e0002dc:	600952c0 	.word	0x600952c0
 e0002e0:	600952c0 	.word	0x600952c0
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
 e000314:	600952c0 	.word	0x600952c0
 e000318:	600952c0 	.word	0x600952c0
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
 e000360:	0e015f2c 	.word	0x0e015f2c

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
 e000390:	0e015f2c 	.word	0x0e015f2c

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

0e00050c <__sflush_r>:
 e00050c:	e1d130bc 	ldrh	r3, [r1, #12]
 e000510:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e000514:	e1a05000 	mov	r5, r0
 e000518:	e1d120fc 	ldrsh	r2, [r1, #12]
 e00051c:	e1a04001 	mov	r4, r1
 e000520:	e3130008 	tst	r3, #8
 e000524:	1a000058 	bne	e00068c <__sflush_r+0x180>
 e000528:	e5913004 	ldr	r3, [r1, #4]
 e00052c:	e3822b02 	orr	r2, r2, #2048	; 0x800
 e000530:	e1c120bc 	strh	r2, [r1, #12]
 e000534:	e3530000 	cmp	r3, #0
 e000538:	ca000004 	bgt	e000550 <__sflush_r+0x44>
 e00053c:	e5913040 	ldr	r3, [r1, #64]	; 0x40
 e000540:	e3530000 	cmp	r3, #0
 e000544:	ca000001 	bgt	e000550 <__sflush_r+0x44>
 e000548:	e3a00000 	mov	r0, #0
 e00054c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e000550:	e594802c 	ldr	r8, [r4, #44]	; 0x2c
 e000554:	e3580000 	cmp	r8, #0
 e000558:	0afffffa 	beq	e000548 <__sflush_r+0x3c>
 e00055c:	e2127a01 	ands	r7, r2, #4096	; 0x1000
 e000560:	e5956000 	ldr	r6, [r5]
 e000564:	e3a03000 	mov	r3, #0
 e000568:	e5853000 	str	r3, [r5]
 e00056c:	15940054 	ldrne	r0, [r4, #84]	; 0x54
 e000570:	1a000011 	bne	e0005bc <__sflush_r+0xb0>
 e000574:	e5941020 	ldr	r1, [r4, #32]
 e000578:	e3a03001 	mov	r3, #1
 e00057c:	e1a02007 	mov	r2, r7
 e000580:	e1a00005 	mov	r0, r5
 e000584:	e12fff38 	blx	r8
 e000588:	e3700001 	cmn	r0, #1
 e00058c:	1a00000a 	bne	e0005bc <__sflush_r+0xb0>
 e000590:	e5953000 	ldr	r3, [r5]
 e000594:	e3530000 	cmp	r3, #0
 e000598:	0a000007 	beq	e0005bc <__sflush_r+0xb0>
 e00059c:	e3530016 	cmp	r3, #22
 e0005a0:	1353001d 	cmpne	r3, #29
 e0005a4:	05856000 	streq	r6, [r5]
 e0005a8:	11d430bc 	ldrhne	r3, [r4, #12]
 e0005ac:	0affffe5 	beq	e000548 <__sflush_r+0x3c>
 e0005b0:	e3833040 	orr	r3, r3, #64	; 0x40
 e0005b4:	e1c430bc 	strh	r3, [r4, #12]
 e0005b8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e0005bc:	e1d430bc 	ldrh	r3, [r4, #12]
 e0005c0:	e3130004 	tst	r3, #4
 e0005c4:	0a000005 	beq	e0005e0 <__sflush_r+0xd4>
 e0005c8:	e5943004 	ldr	r3, [r4, #4]
 e0005cc:	e0400003 	sub	r0, r0, r3
 e0005d0:	e5943034 	ldr	r3, [r4, #52]	; 0x34
 e0005d4:	e3530000 	cmp	r3, #0
 e0005d8:	15943040 	ldrne	r3, [r4, #64]	; 0x40
 e0005dc:	10400003 	subne	r0, r0, r3
 e0005e0:	e3a03000 	mov	r3, #0
 e0005e4:	e1a02000 	mov	r2, r0
 e0005e8:	e594702c 	ldr	r7, [r4, #44]	; 0x2c
 e0005ec:	e1a00005 	mov	r0, r5
 e0005f0:	e5941020 	ldr	r1, [r4, #32]
 e0005f4:	e12fff37 	blx	r7
 e0005f8:	e1d430bc 	ldrh	r3, [r4, #12]
 e0005fc:	e3700001 	cmn	r0, #1
 e000600:	1a000006 	bne	e000620 <__sflush_r+0x114>
 e000604:	e5951000 	ldr	r1, [r5]
 e000608:	e351001d 	cmp	r1, #29
 e00060c:	8affffe7 	bhi	e0005b0 <__sflush_r+0xa4>
 e000610:	e59f20e4 	ldr	r2, [pc, #228]	; e0006fc <__sflush_r+0x1f0>
 e000614:	e1e02132 	mvn	r2, r2, lsr r1
 e000618:	e3120001 	tst	r2, #1
 e00061c:	1affffe3 	bne	e0005b0 <__sflush_r+0xa4>
 e000620:	e3c33b02 	bic	r3, r3, #2048	; 0x800
 e000624:	e3a02000 	mov	r2, #0
 e000628:	e5842004 	str	r2, [r4, #4]
 e00062c:	e6bf3073 	sxth	r3, r3
 e000630:	e5942010 	ldr	r2, [r4, #16]
 e000634:	e3130a01 	tst	r3, #4096	; 0x1000
 e000638:	e1c430bc 	strh	r3, [r4, #12]
 e00063c:	e5842000 	str	r2, [r4]
 e000640:	0a000005 	beq	e00065c <__sflush_r+0x150>
 e000644:	e3700001 	cmn	r0, #1
 e000648:	1a000002 	bne	e000658 <__sflush_r+0x14c>
 e00064c:	e5953000 	ldr	r3, [r5]
 e000650:	e3530000 	cmp	r3, #0
 e000654:	1a000000 	bne	e00065c <__sflush_r+0x150>
 e000658:	e5840054 	str	r0, [r4, #84]	; 0x54
 e00065c:	e5941034 	ldr	r1, [r4, #52]	; 0x34
 e000660:	e5856000 	str	r6, [r5]
 e000664:	e3510000 	cmp	r1, #0
 e000668:	0affffb6 	beq	e000548 <__sflush_r+0x3c>
 e00066c:	e2843044 	add	r3, r4, #68	; 0x44
 e000670:	e1510003 	cmp	r1, r3
 e000674:	0a000001 	beq	e000680 <__sflush_r+0x174>
 e000678:	e1a00005 	mov	r0, r5
 e00067c:	eb00340e 	bl	e00d6bc <__wrap__free_r>
 e000680:	e3a00000 	mov	r0, #0
 e000684:	e5840034 	str	r0, [r4, #52]	; 0x34
 e000688:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e00068c:	e5917010 	ldr	r7, [r1, #16]
 e000690:	e3570000 	cmp	r7, #0
 e000694:	0affffab 	beq	e000548 <__sflush_r+0x3c>
 e000698:	e3130003 	tst	r3, #3
 e00069c:	e5916000 	ldr	r6, [r1]
 e0006a0:	13a03000 	movne	r3, #0
 e0006a4:	e5817000 	str	r7, [r1]
 e0006a8:	e0466007 	sub	r6, r6, r7
 e0006ac:	05913014 	ldreq	r3, [r1, #20]
 e0006b0:	e5813008 	str	r3, [r1, #8]
 e0006b4:	e3560000 	cmp	r6, #0
 e0006b8:	daffffa2 	ble	e000548 <__sflush_r+0x3c>
 e0006bc:	e5948028 	ldr	r8, [r4, #40]	; 0x28
 e0006c0:	e1a03006 	mov	r3, r6
 e0006c4:	e5941020 	ldr	r1, [r4, #32]
 e0006c8:	e1a02007 	mov	r2, r7
 e0006cc:	e1a00005 	mov	r0, r5
 e0006d0:	e12fff38 	blx	r8
 e0006d4:	e3500000 	cmp	r0, #0
 e0006d8:	ca000004 	bgt	e0006f0 <__sflush_r+0x1e4>
 e0006dc:	e1d430bc 	ldrh	r3, [r4, #12]
 e0006e0:	e3e00000 	mvn	r0, #0
 e0006e4:	e3833040 	orr	r3, r3, #64	; 0x40
 e0006e8:	e1c430bc 	strh	r3, [r4, #12]
 e0006ec:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e0006f0:	e0877000 	add	r7, r7, r0
 e0006f4:	e0466000 	sub	r6, r6, r0
 e0006f8:	eaffffed 	b	e0006b4 <__sflush_r+0x1a8>
 e0006fc:	20400001 	.word	0x20400001

0e000700 <_fflush_r>:
 e000700:	e5913010 	ldr	r3, [r1, #16]
 e000704:	e92d4070 	push	{r4, r5, r6, lr}
 e000708:	e3530000 	cmp	r3, #0
 e00070c:	1a000002 	bne	e00071c <_fflush_r+0x1c>
 e000710:	e3a05000 	mov	r5, #0
 e000714:	e1a00005 	mov	r0, r5
 e000718:	e8bd8070 	pop	{r4, r5, r6, pc}
 e00071c:	e1a05000 	mov	r5, r0
 e000720:	e1a04001 	mov	r4, r1
 e000724:	e3500000 	cmp	r0, #0
 e000728:	0a000003 	beq	e00073c <_fflush_r+0x3c>
 e00072c:	e5903018 	ldr	r3, [r0, #24]
 e000730:	e3530000 	cmp	r3, #0
 e000734:	1a000000 	bne	e00073c <_fflush_r+0x3c>
 e000738:	eb000098 	bl	e0009a0 <__sinit>
 e00073c:	e1d430fc 	ldrsh	r3, [r4, #12]
 e000740:	e3530000 	cmp	r3, #0
 e000744:	0afffff1 	beq	e000710 <_fflush_r+0x10>
 e000748:	e5942064 	ldr	r2, [r4, #100]	; 0x64
 e00074c:	e3120001 	tst	r2, #1
 e000750:	1a000003 	bne	e000764 <_fflush_r+0x64>
 e000754:	e3130c02 	tst	r3, #512	; 0x200
 e000758:	1a000001 	bne	e000764 <_fflush_r+0x64>
 e00075c:	e5940058 	ldr	r0, [r4, #88]	; 0x58
 e000760:	eb00015c 	bl	e000cd8 <__retarget_lock_acquire_recursive>
 e000764:	e1a00005 	mov	r0, r5
 e000768:	e1a01004 	mov	r1, r4
 e00076c:	ebffff66 	bl	e00050c <__sflush_r>
 e000770:	e5943064 	ldr	r3, [r4, #100]	; 0x64
 e000774:	e1a05000 	mov	r5, r0
 e000778:	e3130001 	tst	r3, #1
 e00077c:	1affffe4 	bne	e000714 <_fflush_r+0x14>
 e000780:	e1d430bc 	ldrh	r3, [r4, #12]
 e000784:	e3130c02 	tst	r3, #512	; 0x200
 e000788:	1affffe1 	bne	e000714 <_fflush_r+0x14>
 e00078c:	e5940058 	ldr	r0, [r4, #88]	; 0x58
 e000790:	eb000156 	bl	e000cf0 <__retarget_lock_release_recursive>
 e000794:	eaffffde 	b	e000714 <_fflush_r+0x14>

0e000798 <fflush>:
 e000798:	e2501000 	subs	r1, r0, #0
 e00079c:	1a000003 	bne	e0007b0 <fflush+0x18>
 e0007a0:	e59f3014 	ldr	r3, [pc, #20]	; e0007bc <fflush+0x24>
 e0007a4:	e59f1014 	ldr	r1, [pc, #20]	; e0007c0 <fflush+0x28>
 e0007a8:	e5930000 	ldr	r0, [r3]
 e0007ac:	ea00010e 	b	e000bec <_fwalk_reent>
 e0007b0:	e59f300c 	ldr	r3, [pc, #12]	; e0007c4 <fflush+0x2c>
 e0007b4:	e5930000 	ldr	r0, [r3]
 e0007b8:	eaffffd0 	b	e000700 <_fflush_r>
 e0007bc:	0e0140ec 	.word	0x0e0140ec
 e0007c0:	0e000700 	.word	0x0e000700
 e0007c4:	60095000 	.word	0x60095000

0e0007c8 <std>:
 e0007c8:	e92d4010 	push	{r4, lr}
 e0007cc:	e3a03000 	mov	r3, #0
 e0007d0:	e1a04000 	mov	r4, r0
 e0007d4:	e5803000 	str	r3, [r0]
 e0007d8:	e280005c 	add	r0, r0, #92	; 0x5c
 e0007dc:	e5003058 	str	r3, [r0, #-88]	; 0xffffffa8
 e0007e0:	e5003054 	str	r3, [r0, #-84]	; 0xffffffac
 e0007e4:	e14015b0 	strh	r1, [r0, #-80]	; 0xffffffb0
 e0007e8:	e1a01003 	mov	r1, r3
 e0007ec:	e5803008 	str	r3, [r0, #8]
 e0007f0:	e14024be 	strh	r2, [r0, #-78]	; 0xffffffb2
 e0007f4:	e3a02008 	mov	r2, #8
 e0007f8:	e500304c 	str	r3, [r0, #-76]	; 0xffffffb4
 e0007fc:	e5003048 	str	r3, [r0, #-72]	; 0xffffffb8
 e000800:	e5003044 	str	r3, [r0, #-68]	; 0xffffffbc
 e000804:	eb0031d5 	bl	e00cf60 <__wrap_memset>
 e000808:	e59f3028 	ldr	r3, [pc, #40]	; e000838 <std+0x70>
 e00080c:	e5843024 	str	r3, [r4, #36]	; 0x24
 e000810:	e2840058 	add	r0, r4, #88	; 0x58
 e000814:	e59f3020 	ldr	r3, [pc, #32]	; e00083c <std+0x74>
 e000818:	e5843028 	str	r3, [r4, #40]	; 0x28
 e00081c:	e59f301c 	ldr	r3, [pc, #28]	; e000840 <std+0x78>
 e000820:	e584302c 	str	r3, [r4, #44]	; 0x2c
 e000824:	e59f3018 	ldr	r3, [pc, #24]	; e000844 <std+0x7c>
 e000828:	e5844020 	str	r4, [r4, #32]
 e00082c:	e5843030 	str	r3, [r4, #48]	; 0x30
 e000830:	e8bd4010 	pop	{r4, lr}
 e000834:	ea000123 	b	e000cc8 <__retarget_lock_init_recursive>
 e000838:	0e000ea0 	.word	0x0e000ea0
 e00083c:	0e000ed8 	.word	0x0e000ed8
 e000840:	0e000f2c 	.word	0x0e000f2c
 e000844:	0e000f5c 	.word	0x0e000f5c

0e000848 <_cleanup_r>:
 e000848:	e5901004 	ldr	r1, [r0, #4]
 e00084c:	e59f3050 	ldr	r3, [pc, #80]	; e0008a4 <_cleanup_r+0x5c>
 e000850:	e92d4010 	push	{r4, lr}
 e000854:	e1a04000 	mov	r4, r0
 e000858:	e1510003 	cmp	r1, r3
 e00085c:	0a000000 	beq	e000864 <_cleanup_r+0x1c>
 e000860:	eb000671 	bl	e00222c <_fclose_r>
 e000864:	e5941008 	ldr	r1, [r4, #8]
 e000868:	e59f3038 	ldr	r3, [pc, #56]	; e0008a8 <_cleanup_r+0x60>
 e00086c:	e1510003 	cmp	r1, r3
 e000870:	0a000001 	beq	e00087c <_cleanup_r+0x34>
 e000874:	e1a00004 	mov	r0, r4
 e000878:	eb00066b 	bl	e00222c <_fclose_r>
 e00087c:	e594100c 	ldr	r1, [r4, #12]
 e000880:	e59f3024 	ldr	r3, [pc, #36]	; e0008ac <_cleanup_r+0x64>
 e000884:	e1510003 	cmp	r1, r3
 e000888:	0a000001 	beq	e000894 <_cleanup_r+0x4c>
 e00088c:	e1a00004 	mov	r0, r4
 e000890:	eb000665 	bl	e00222c <_fclose_r>
 e000894:	e1a00004 	mov	r0, r4
 e000898:	e59f1010 	ldr	r1, [pc, #16]	; e0008b0 <_cleanup_r+0x68>
 e00089c:	e8bd4010 	pop	{r4, lr}
 e0008a0:	ea0000d1 	b	e000bec <_fwalk_reent>
 e0008a4:	600a301c 	.word	0x600a301c
 e0008a8:	600a3084 	.word	0x600a3084
 e0008ac:	600a30ec 	.word	0x600a30ec
 e0008b0:	0e00222c 	.word	0x0e00222c

0e0008b4 <__fp_lock>:
 e0008b4:	e5903064 	ldr	r3, [r0, #100]	; 0x64
 e0008b8:	e3130001 	tst	r3, #1
 e0008bc:	1a000007 	bne	e0008e0 <__fp_lock+0x2c>
 e0008c0:	e1d030bc 	ldrh	r3, [r0, #12]
 e0008c4:	e3130c02 	tst	r3, #512	; 0x200
 e0008c8:	1a000004 	bne	e0008e0 <__fp_lock+0x2c>
 e0008cc:	e5900058 	ldr	r0, [r0, #88]	; 0x58
 e0008d0:	e92d4010 	push	{r4, lr}
 e0008d4:	eb0000ff 	bl	e000cd8 <__retarget_lock_acquire_recursive>
 e0008d8:	e3a00000 	mov	r0, #0
 e0008dc:	e8bd8010 	pop	{r4, pc}
 e0008e0:	e3a00000 	mov	r0, #0
 e0008e4:	e12fff1e 	bx	lr

0e0008e8 <__fp_unlock>:
 e0008e8:	e5903064 	ldr	r3, [r0, #100]	; 0x64
 e0008ec:	e3130001 	tst	r3, #1
 e0008f0:	1a000007 	bne	e000914 <__fp_unlock+0x2c>
 e0008f4:	e1d030bc 	ldrh	r3, [r0, #12]
 e0008f8:	e3130c02 	tst	r3, #512	; 0x200
 e0008fc:	1a000004 	bne	e000914 <__fp_unlock+0x2c>
 e000900:	e5900058 	ldr	r0, [r0, #88]	; 0x58
 e000904:	e92d4010 	push	{r4, lr}
 e000908:	eb0000f8 	bl	e000cf0 <__retarget_lock_release_recursive>
 e00090c:	e3a00000 	mov	r0, #0
 e000910:	e8bd8010 	pop	{r4, pc}
 e000914:	e3a00000 	mov	r0, #0
 e000918:	e12fff1e 	bx	lr

0e00091c <__sfmoreglue>:
 e00091c:	e92d4070 	push	{r4, r5, r6, lr}
 e000920:	e3a02068 	mov	r2, #104	; 0x68
 e000924:	e2415001 	sub	r5, r1, #1
 e000928:	e1a06001 	mov	r6, r1
 e00092c:	e0050592 	mul	r5, r2, r5
 e000930:	e2851074 	add	r1, r5, #116	; 0x74
 e000934:	eb00335b 	bl	e00d6a8 <__wrap__malloc_r>
 e000938:	e2504000 	subs	r4, r0, #0
 e00093c:	0a000005 	beq	e000958 <__sfmoreglue+0x3c>
 e000940:	e3a01000 	mov	r1, #0
 e000944:	e284000c 	add	r0, r4, #12
 e000948:	e2852068 	add	r2, r5, #104	; 0x68
 e00094c:	e8840042 	stm	r4, {r1, r6}
 e000950:	e5840008 	str	r0, [r4, #8]
 e000954:	eb003181 	bl	e00cf60 <__wrap_memset>
 e000958:	e1a00004 	mov	r0, r4
 e00095c:	e8bd8070 	pop	{r4, r5, r6, pc}

0e000960 <_cleanup>:
 e000960:	e59f3004 	ldr	r3, [pc, #4]	; e00096c <_cleanup+0xc>
 e000964:	e5930000 	ldr	r0, [r3]
 e000968:	eaffffb6 	b	e000848 <_cleanup_r>
 e00096c:	0e0140ec 	.word	0x0e0140ec

0e000970 <__sfp_lock_acquire>:
 e000970:	e59f0000 	ldr	r0, [pc]	; e000978 <__sfp_lock_acquire+0x8>
 e000974:	ea0000d7 	b	e000cd8 <__retarget_lock_acquire_recursive>
 e000978:	600a315b 	.word	0x600a315b

0e00097c <__sfp_lock_release>:
 e00097c:	e59f0000 	ldr	r0, [pc]	; e000984 <__sfp_lock_release+0x8>
 e000980:	ea0000da 	b	e000cf0 <__retarget_lock_release_recursive>
 e000984:	600a315b 	.word	0x600a315b

0e000988 <__sinit_lock_acquire>:
 e000988:	e59f0000 	ldr	r0, [pc]	; e000990 <__sinit_lock_acquire+0x8>
 e00098c:	ea0000d1 	b	e000cd8 <__retarget_lock_acquire_recursive>
 e000990:	600a315c 	.word	0x600a315c

0e000994 <__sinit_lock_release>:
 e000994:	e59f0000 	ldr	r0, [pc]	; e00099c <__sinit_lock_release+0x8>
 e000998:	ea0000d4 	b	e000cf0 <__retarget_lock_release_recursive>
 e00099c:	600a315c 	.word	0x600a315c

0e0009a0 <__sinit>:
 e0009a0:	e92d4070 	push	{r4, r5, r6, lr}
 e0009a4:	e1a04000 	mov	r4, r0
 e0009a8:	ebfffff6 	bl	e000988 <__sinit_lock_acquire>
 e0009ac:	e5943018 	ldr	r3, [r4, #24]
 e0009b0:	e3530000 	cmp	r3, #0
 e0009b4:	0a000001 	beq	e0009c0 <__sinit+0x20>
 e0009b8:	e8bd4070 	pop	{r4, r5, r6, lr}
 e0009bc:	eafffff4 	b	e000994 <__sinit_lock_release>
 e0009c0:	e58430d8 	str	r3, [r4, #216]	; 0xd8
 e0009c4:	e58430dc 	str	r3, [r4, #220]	; 0xdc
 e0009c8:	e58430e0 	str	r3, [r4, #224]	; 0xe0
 e0009cc:	e59f3078 	ldr	r3, [pc, #120]	; e000a4c <__sinit+0xac>
 e0009d0:	e59f0078 	ldr	r0, [pc, #120]	; e000a50 <__sinit+0xb0>
 e0009d4:	e59f2078 	ldr	r2, [pc, #120]	; e000a54 <__sinit+0xb4>
 e0009d8:	e5842028 	str	r2, [r4, #40]	; 0x28
 e0009dc:	e2806068 	add	r6, r0, #104	; 0x68
 e0009e0:	e5933000 	ldr	r3, [r3]
 e0009e4:	e28050d0 	add	r5, r0, #208	; 0xd0
 e0009e8:	e1530004 	cmp	r3, r4
 e0009ec:	03a02001 	moveq	r2, #1
 e0009f0:	05832018 	streq	r2, [r3, #24]
 e0009f4:	e5902020 	ldr	r2, [r0, #32]
 e0009f8:	e5840004 	str	r0, [r4, #4]
 e0009fc:	e3520000 	cmp	r2, #0
 e000a00:	e5846008 	str	r6, [r4, #8]
 e000a04:	e584500c 	str	r5, [r4, #12]
 e000a08:	1a00000c 	bne	e000a40 <__sinit+0xa0>
 e000a0c:	e58300e0 	str	r0, [r3, #224]	; 0xe0
 e000a10:	e3a01003 	mov	r1, #3
 e000a14:	e58310dc 	str	r1, [r3, #220]	; 0xdc
 e000a18:	e3a01004 	mov	r1, #4
 e000a1c:	ebffff69 	bl	e0007c8 <std>
 e000a20:	e3a02001 	mov	r2, #1
 e000a24:	e3a01009 	mov	r1, #9
 e000a28:	e1a00006 	mov	r0, r6
 e000a2c:	ebffff65 	bl	e0007c8 <std>
 e000a30:	e3a02002 	mov	r2, #2
 e000a34:	e3a01012 	mov	r1, #18
 e000a38:	e1a00005 	mov	r0, r5
 e000a3c:	ebffff61 	bl	e0007c8 <std>
 e000a40:	e3a03001 	mov	r3, #1
 e000a44:	e5843018 	str	r3, [r4, #24]
 e000a48:	eaffffda 	b	e0009b8 <__sinit+0x18>
 e000a4c:	0e0140ec 	.word	0x0e0140ec
 e000a50:	600a301c 	.word	0x600a301c
 e000a54:	0e000848 	.word	0x0e000848

0e000a58 <__sfp>:
 e000a58:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e000a5c:	e1a07000 	mov	r7, r0
 e000a60:	ebffffc2 	bl	e000970 <__sfp_lock_acquire>
 e000a64:	e59f30d0 	ldr	r3, [pc, #208]	; e000b3c <__sfp+0xe4>
 e000a68:	e5936000 	ldr	r6, [r3]
 e000a6c:	e5963018 	ldr	r3, [r6, #24]
 e000a70:	e3530000 	cmp	r3, #0
 e000a74:	1a000001 	bne	e000a80 <__sfp+0x28>
 e000a78:	e1a00006 	mov	r0, r6
 e000a7c:	ebffffc7 	bl	e0009a0 <__sinit>
 e000a80:	e28660d8 	add	r6, r6, #216	; 0xd8
 e000a84:	e9960018 	ldmib	r6, {r3, r4}
 e000a88:	e2533001 	subs	r3, r3, #1
 e000a8c:	5a000004 	bpl	e000aa4 <__sfp+0x4c>
 e000a90:	e5963000 	ldr	r3, [r6]
 e000a94:	e3530000 	cmp	r3, #0
 e000a98:	0a00001c 	beq	e000b10 <__sfp+0xb8>
 e000a9c:	e5966000 	ldr	r6, [r6]
 e000aa0:	eafffff7 	b	e000a84 <__sfp+0x2c>
 e000aa4:	e1d450fc 	ldrsh	r5, [r4, #12]
 e000aa8:	e3550000 	cmp	r5, #0
 e000aac:	1a000015 	bne	e000b08 <__sfp+0xb0>
 e000ab0:	e59f3088 	ldr	r3, [pc, #136]	; e000b40 <__sfp+0xe8>
 e000ab4:	e2840058 	add	r0, r4, #88	; 0x58
 e000ab8:	e584300c 	str	r3, [r4, #12]
 e000abc:	e5845064 	str	r5, [r4, #100]	; 0x64
 e000ac0:	eb000080 	bl	e000cc8 <__retarget_lock_init_recursive>
 e000ac4:	ebffffac 	bl	e00097c <__sfp_lock_release>
 e000ac8:	e3a02008 	mov	r2, #8
 e000acc:	e1a01005 	mov	r1, r5
 e000ad0:	e284005c 	add	r0, r4, #92	; 0x5c
 e000ad4:	e5845000 	str	r5, [r4]
 e000ad8:	e5845008 	str	r5, [r4, #8]
 e000adc:	e5845004 	str	r5, [r4, #4]
 e000ae0:	e5845010 	str	r5, [r4, #16]
 e000ae4:	e5845014 	str	r5, [r4, #20]
 e000ae8:	e5845018 	str	r5, [r4, #24]
 e000aec:	eb00311b 	bl	e00cf60 <__wrap_memset>
 e000af0:	e5845034 	str	r5, [r4, #52]	; 0x34
 e000af4:	e5845038 	str	r5, [r4, #56]	; 0x38
 e000af8:	e5845048 	str	r5, [r4, #72]	; 0x48
 e000afc:	e584504c 	str	r5, [r4, #76]	; 0x4c
 e000b00:	e1a00004 	mov	r0, r4
 e000b04:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e000b08:	e2844068 	add	r4, r4, #104	; 0x68
 e000b0c:	eaffffdd 	b	e000a88 <__sfp+0x30>
 e000b10:	e3a01004 	mov	r1, #4
 e000b14:	e1a00007 	mov	r0, r7
 e000b18:	ebffff7f 	bl	e00091c <__sfmoreglue>
 e000b1c:	e1a04000 	mov	r4, r0
 e000b20:	e3500000 	cmp	r0, #0
 e000b24:	e5860000 	str	r0, [r6]
 e000b28:	1affffdb 	bne	e000a9c <__sfp+0x44>
 e000b2c:	ebffff92 	bl	e00097c <__sfp_lock_release>
 e000b30:	e3a0300c 	mov	r3, #12
 e000b34:	e5873000 	str	r3, [r7]
 e000b38:	eafffff0 	b	e000b00 <__sfp+0xa8>
 e000b3c:	0e0140ec 	.word	0x0e0140ec
 e000b40:	ffff0001 	.word	0xffff0001

0e000b44 <__fp_lock_all>:
 e000b44:	e92d4010 	push	{r4, lr}
 e000b48:	ebffff88 	bl	e000970 <__sfp_lock_acquire>
 e000b4c:	e59f300c 	ldr	r3, [pc, #12]	; e000b60 <__fp_lock_all+0x1c>
 e000b50:	e8bd4010 	pop	{r4, lr}
 e000b54:	e59f1008 	ldr	r1, [pc, #8]	; e000b64 <__fp_lock_all+0x20>
 e000b58:	e5930000 	ldr	r0, [r3]
 e000b5c:	ea00000a 	b	e000b8c <_fwalk>
 e000b60:	60095000 	.word	0x60095000
 e000b64:	0e0008b4 	.word	0x0e0008b4

0e000b68 <__fp_unlock_all>:
 e000b68:	e59f3014 	ldr	r3, [pc, #20]	; e000b84 <__fp_unlock_all+0x1c>
 e000b6c:	e92d4010 	push	{r4, lr}
 e000b70:	e59f1010 	ldr	r1, [pc, #16]	; e000b88 <__fp_unlock_all+0x20>
 e000b74:	e5930000 	ldr	r0, [r3]
 e000b78:	eb000003 	bl	e000b8c <_fwalk>
 e000b7c:	e8bd4010 	pop	{r4, lr}
 e000b80:	eaffff7d 	b	e00097c <__sfp_lock_release>
 e000b84:	60095000 	.word	0x60095000
 e000b88:	0e0008e8 	.word	0x0e0008e8

0e000b8c <_fwalk>:
 e000b8c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e000b90:	e1a07001 	mov	r7, r1
 e000b94:	e28040d8 	add	r4, r0, #216	; 0xd8
 e000b98:	e3a06000 	mov	r6, #0
 e000b9c:	e5945008 	ldr	r5, [r4, #8]
 e000ba0:	e5948004 	ldr	r8, [r4, #4]
 e000ba4:	e2588001 	subs	r8, r8, #1
 e000ba8:	5a000004 	bpl	e000bc0 <_fwalk+0x34>
 e000bac:	e5944000 	ldr	r4, [r4]
 e000bb0:	e3540000 	cmp	r4, #0
 e000bb4:	1afffff8 	bne	e000b9c <_fwalk+0x10>
 e000bb8:	e1a00006 	mov	r0, r6
 e000bbc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e000bc0:	e1d530bc 	ldrh	r3, [r5, #12]
 e000bc4:	e3530001 	cmp	r3, #1
 e000bc8:	9a000005 	bls	e000be4 <_fwalk+0x58>
 e000bcc:	e1d530fe 	ldrsh	r3, [r5, #14]
 e000bd0:	e3730001 	cmn	r3, #1
 e000bd4:	0a000002 	beq	e000be4 <_fwalk+0x58>
 e000bd8:	e1a00005 	mov	r0, r5
 e000bdc:	e12fff37 	blx	r7
 e000be0:	e1866000 	orr	r6, r6, r0
 e000be4:	e2855068 	add	r5, r5, #104	; 0x68
 e000be8:	eaffffed 	b	e000ba4 <_fwalk+0x18>

0e000bec <_fwalk_reent>:
 e000bec:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e000bf0:	e1a06000 	mov	r6, r0
 e000bf4:	e1a08001 	mov	r8, r1
 e000bf8:	e28040d8 	add	r4, r0, #216	; 0xd8
 e000bfc:	e3a07000 	mov	r7, #0
 e000c00:	e5945008 	ldr	r5, [r4, #8]
 e000c04:	e5949004 	ldr	r9, [r4, #4]
 e000c08:	e2599001 	subs	r9, r9, #1
 e000c0c:	5a000004 	bpl	e000c24 <_fwalk_reent+0x38>
 e000c10:	e5944000 	ldr	r4, [r4]
 e000c14:	e3540000 	cmp	r4, #0
 e000c18:	1afffff8 	bne	e000c00 <_fwalk_reent+0x14>
 e000c1c:	e1a00007 	mov	r0, r7
 e000c20:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e000c24:	e1d530bc 	ldrh	r3, [r5, #12]
 e000c28:	e3530001 	cmp	r3, #1
 e000c2c:	9a000006 	bls	e000c4c <_fwalk_reent+0x60>
 e000c30:	e1d530fe 	ldrsh	r3, [r5, #14]
 e000c34:	e3730001 	cmn	r3, #1
 e000c38:	0a000003 	beq	e000c4c <_fwalk_reent+0x60>
 e000c3c:	e1a01005 	mov	r1, r5
 e000c40:	e1a00006 	mov	r0, r6
 e000c44:	e12fff38 	blx	r8
 e000c48:	e1877000 	orr	r7, r7, r0
 e000c4c:	e2855068 	add	r5, r5, #104	; 0x68
 e000c50:	eaffffec 	b	e000c08 <_fwalk_reent+0x1c>

0e000c54 <__libc_init_array>:
 e000c54:	e92d4070 	push	{r4, r5, r6, lr}
 e000c58:	e3a06000 	mov	r6, #0
 e000c5c:	e59f5050 	ldr	r5, [pc, #80]	; e000cb4 <__libc_init_array+0x60>
 e000c60:	e59f4050 	ldr	r4, [pc, #80]	; e000cb8 <__libc_init_array+0x64>
 e000c64:	e0444005 	sub	r4, r4, r5
 e000c68:	e1a04144 	asr	r4, r4, #2
 e000c6c:	e1560004 	cmp	r6, r4
 e000c70:	1a00000b 	bne	e000ca4 <__libc_init_array+0x50>
 e000c74:	e59f5040 	ldr	r5, [pc, #64]	; e000cbc <__libc_init_array+0x68>
 e000c78:	e3a06000 	mov	r6, #0
 e000c7c:	e59f403c 	ldr	r4, [pc, #60]	; e000cc0 <__libc_init_array+0x6c>
 e000c80:	eb0025b7 	bl	e00a364 <_init>
 e000c84:	e0444005 	sub	r4, r4, r5
 e000c88:	e1a04144 	asr	r4, r4, #2
 e000c8c:	e1560004 	cmp	r6, r4
 e000c90:	08bd8070 	popeq	{r4, r5, r6, pc}
 e000c94:	e4953004 	ldr	r3, [r5], #4
 e000c98:	e2866001 	add	r6, r6, #1
 e000c9c:	e12fff33 	blx	r3
 e000ca0:	eafffff9 	b	e000c8c <__libc_init_array+0x38>
 e000ca4:	e4953004 	ldr	r3, [r5], #4
 e000ca8:	e2866001 	add	r6, r6, #1
 e000cac:	e12fff33 	blx	r3
 e000cb0:	eaffffed 	b	e000c6c <__libc_init_array+0x18>
 e000cb4:	0e015fe8 	.word	0x0e015fe8
 e000cb8:	0e015fe8 	.word	0x0e015fe8
 e000cbc:	0e015fe8 	.word	0x0e015fe8
 e000cc0:	0e015fec 	.word	0x0e015fec

0e000cc4 <__retarget_lock_init>:
 e000cc4:	e12fff1e 	bx	lr

0e000cc8 <__retarget_lock_init_recursive>:
 e000cc8:	e12fff1e 	bx	lr

0e000ccc <__retarget_lock_close>:
 e000ccc:	e12fff1e 	bx	lr

0e000cd0 <__retarget_lock_close_recursive>:
 e000cd0:	e12fff1e 	bx	lr

0e000cd4 <__retarget_lock_acquire>:
 e000cd4:	e12fff1e 	bx	lr

0e000cd8 <__retarget_lock_acquire_recursive>:
 e000cd8:	e12fff1e 	bx	lr

0e000cdc <__retarget_lock_try_acquire>:
 e000cdc:	e3a00001 	mov	r0, #1
 e000ce0:	e12fff1e 	bx	lr

0e000ce4 <__retarget_lock_try_acquire_recursive>:
 e000ce4:	e3a00001 	mov	r0, #1
 e000ce8:	e12fff1e 	bx	lr

0e000cec <__retarget_lock_release>:
 e000cec:	e12fff1e 	bx	lr

0e000cf0 <__retarget_lock_release_recursive>:
 e000cf0:	e12fff1e 	bx	lr

0e000cf4 <cleanup_glue>:
 e000cf4:	e92d4070 	push	{r4, r5, r6, lr}
 e000cf8:	e1a04001 	mov	r4, r1
 e000cfc:	e5911000 	ldr	r1, [r1]
 e000d00:	e1a05000 	mov	r5, r0
 e000d04:	e3510000 	cmp	r1, #0
 e000d08:	0a000000 	beq	e000d10 <cleanup_glue+0x1c>
 e000d0c:	ebfffff8 	bl	e000cf4 <cleanup_glue>
 e000d10:	e1a01004 	mov	r1, r4
 e000d14:	e1a00005 	mov	r0, r5
 e000d18:	e8bd4070 	pop	{r4, r5, r6, lr}
 e000d1c:	ea003266 	b	e00d6bc <__wrap__free_r>

0e000d20 <_reclaim_reent>:
 e000d20:	e59f3174 	ldr	r3, [pc, #372]	; e000e9c <_reclaim_reent+0x17c>
 e000d24:	e5933000 	ldr	r3, [r3]
 e000d28:	e1530000 	cmp	r3, r0
 e000d2c:	012fff1e 	bxeq	lr
 e000d30:	e5903024 	ldr	r3, [r0, #36]	; 0x24
 e000d34:	e92d4070 	push	{r4, r5, r6, lr}
 e000d38:	e1a04000 	mov	r4, r0
 e000d3c:	e3530000 	cmp	r3, #0
 e000d40:	0a000009 	beq	e000d6c <_reclaim_reent+0x4c>
 e000d44:	e593300c 	ldr	r3, [r3, #12]
 e000d48:	e3530000 	cmp	r3, #0
 e000d4c:	13a05000 	movne	r5, #0
 e000d50:	1a000045 	bne	e000e6c <_reclaim_reent+0x14c>
 e000d54:	e5943024 	ldr	r3, [r4, #36]	; 0x24
 e000d58:	e5931000 	ldr	r1, [r3]
 e000d5c:	e3510000 	cmp	r1, #0
 e000d60:	0a000001 	beq	e000d6c <_reclaim_reent+0x4c>
 e000d64:	e1a00004 	mov	r0, r4
 e000d68:	eb003253 	bl	e00d6bc <__wrap__free_r>
 e000d6c:	e5941014 	ldr	r1, [r4, #20]
 e000d70:	e3510000 	cmp	r1, #0
 e000d74:	0a000001 	beq	e000d80 <_reclaim_reent+0x60>
 e000d78:	e1a00004 	mov	r0, r4
 e000d7c:	eb00324e 	bl	e00d6bc <__wrap__free_r>
 e000d80:	e5941024 	ldr	r1, [r4, #36]	; 0x24
 e000d84:	e3510000 	cmp	r1, #0
 e000d88:	0a000001 	beq	e000d94 <_reclaim_reent+0x74>
 e000d8c:	e1a00004 	mov	r0, r4
 e000d90:	eb003249 	bl	e00d6bc <__wrap__free_r>
 e000d94:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 e000d98:	e3510000 	cmp	r1, #0
 e000d9c:	0a000001 	beq	e000da8 <_reclaim_reent+0x88>
 e000da0:	e1a00004 	mov	r0, r4
 e000da4:	eb003244 	bl	e00d6bc <__wrap__free_r>
 e000da8:	e594103c 	ldr	r1, [r4, #60]	; 0x3c
 e000dac:	e3510000 	cmp	r1, #0
 e000db0:	0a000001 	beq	e000dbc <_reclaim_reent+0x9c>
 e000db4:	e1a00004 	mov	r0, r4
 e000db8:	eb00323f 	bl	e00d6bc <__wrap__free_r>
 e000dbc:	e5941040 	ldr	r1, [r4, #64]	; 0x40
 e000dc0:	e3510000 	cmp	r1, #0
 e000dc4:	0a000001 	beq	e000dd0 <_reclaim_reent+0xb0>
 e000dc8:	e1a00004 	mov	r0, r4
 e000dcc:	eb00323a 	bl	e00d6bc <__wrap__free_r>
 e000dd0:	e59410ec 	ldr	r1, [r4, #236]	; 0xec
 e000dd4:	e3510000 	cmp	r1, #0
 e000dd8:	0a000001 	beq	e000de4 <_reclaim_reent+0xc4>
 e000ddc:	e1a00004 	mov	r0, r4
 e000de0:	eb003235 	bl	e00d6bc <__wrap__free_r>
 e000de4:	e59410e8 	ldr	r1, [r4, #232]	; 0xe8
 e000de8:	e3510000 	cmp	r1, #0
 e000dec:	0a000001 	beq	e000df8 <_reclaim_reent+0xd8>
 e000df0:	e1a00004 	mov	r0, r4
 e000df4:	eb003230 	bl	e00d6bc <__wrap__free_r>
 e000df8:	e5943048 	ldr	r3, [r4, #72]	; 0x48
 e000dfc:	e3530000 	cmp	r3, #0
 e000e00:	0a000004 	beq	e000e18 <_reclaim_reent+0xf8>
 e000e04:	e5931088 	ldr	r1, [r3, #136]	; 0x88
 e000e08:	e3510000 	cmp	r1, #0
 e000e0c:	0a000001 	beq	e000e18 <_reclaim_reent+0xf8>
 e000e10:	e1a00004 	mov	r0, r4
 e000e14:	eb003228 	bl	e00d6bc <__wrap__free_r>
 e000e18:	e5941034 	ldr	r1, [r4, #52]	; 0x34
 e000e1c:	e3510000 	cmp	r1, #0
 e000e20:	0a000001 	beq	e000e2c <_reclaim_reent+0x10c>
 e000e24:	e1a00004 	mov	r0, r4
 e000e28:	eb003223 	bl	e00d6bc <__wrap__free_r>
 e000e2c:	e5943018 	ldr	r3, [r4, #24]
 e000e30:	e3530000 	cmp	r3, #0
 e000e34:	08bd8070 	popeq	{r4, r5, r6, pc}
 e000e38:	e5943028 	ldr	r3, [r4, #40]	; 0x28
 e000e3c:	e1a00004 	mov	r0, r4
 e000e40:	e12fff33 	blx	r3
 e000e44:	e59410d8 	ldr	r1, [r4, #216]	; 0xd8
 e000e48:	e3510000 	cmp	r1, #0
 e000e4c:	08bd8070 	popeq	{r4, r5, r6, pc}
 e000e50:	e1a00004 	mov	r0, r4
 e000e54:	e8bd4070 	pop	{r4, r5, r6, lr}
 e000e58:	eaffffa5 	b	e000cf4 <cleanup_glue>
 e000e5c:	e7911005 	ldr	r1, [r1, r5]
 e000e60:	e3510000 	cmp	r1, #0
 e000e64:	1a000007 	bne	e000e88 <_reclaim_reent+0x168>
 e000e68:	e2855004 	add	r5, r5, #4
 e000e6c:	e5943024 	ldr	r3, [r4, #36]	; 0x24
 e000e70:	e3550080 	cmp	r5, #128	; 0x80
 e000e74:	e593100c 	ldr	r1, [r3, #12]
 e000e78:	1afffff7 	bne	e000e5c <_reclaim_reent+0x13c>
 e000e7c:	e1a00004 	mov	r0, r4
 e000e80:	eb00320d 	bl	e00d6bc <__wrap__free_r>
 e000e84:	eaffffb2 	b	e000d54 <_reclaim_reent+0x34>
 e000e88:	e5916000 	ldr	r6, [r1]
 e000e8c:	e1a00004 	mov	r0, r4
 e000e90:	eb003209 	bl	e00d6bc <__wrap__free_r>
 e000e94:	e1a01006 	mov	r1, r6
 e000e98:	eafffff0 	b	e000e60 <_reclaim_reent+0x140>
 e000e9c:	60095000 	.word	0x60095000

0e000ea0 <__sread>:
 e000ea0:	e92d4010 	push	{r4, lr}
 e000ea4:	e1a04001 	mov	r4, r1
 e000ea8:	e1d110fe 	ldrsh	r1, [r1, #14]
 e000eac:	eb000919 	bl	e003318 <_read_r>
 e000eb0:	e3500000 	cmp	r0, #0
 e000eb4:	a5943054 	ldrge	r3, [r4, #84]	; 0x54
 e000eb8:	b1d430bc 	ldrhlt	r3, [r4, #12]
 e000ebc:	a0833000 	addge	r3, r3, r0
 e000ec0:	a5843054 	strge	r3, [r4, #84]	; 0x54
 e000ec4:	b3c33a01 	biclt	r3, r3, #4096	; 0x1000
 e000ec8:	b1c430bc 	strhlt	r3, [r4, #12]
 e000ecc:	e8bd8010 	pop	{r4, pc}

0e000ed0 <__seofread>:
 e000ed0:	e3a00000 	mov	r0, #0
 e000ed4:	e12fff1e 	bx	lr

0e000ed8 <__swrite>:
 e000ed8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e000edc:	e1a07003 	mov	r7, r3
 e000ee0:	e1d130bc 	ldrh	r3, [r1, #12]
 e000ee4:	e1a05000 	mov	r5, r0
 e000ee8:	e1a04001 	mov	r4, r1
 e000eec:	e1a06002 	mov	r6, r2
 e000ef0:	e3130c01 	tst	r3, #256	; 0x100
 e000ef4:	0a000003 	beq	e000f08 <__swrite+0x30>
 e000ef8:	e1d110fe 	ldrsh	r1, [r1, #14]
 e000efc:	e3a03002 	mov	r3, #2
 e000f00:	e3a02000 	mov	r2, #0
 e000f04:	eb00055d 	bl	e002480 <_lseek_r>
 e000f08:	e1d430bc 	ldrh	r3, [r4, #12]
 e000f0c:	e1a02006 	mov	r2, r6
 e000f10:	e1d410fe 	ldrsh	r1, [r4, #14]
 e000f14:	e1a00005 	mov	r0, r5
 e000f18:	e3c33a01 	bic	r3, r3, #4096	; 0x1000
 e000f1c:	e1c430bc 	strh	r3, [r4, #12]
 e000f20:	e1a03007 	mov	r3, r7
 e000f24:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 e000f28:	ea000042 	b	e001038 <_write_r>

0e000f2c <__sseek>:
 e000f2c:	e92d4010 	push	{r4, lr}
 e000f30:	e1a04001 	mov	r4, r1
 e000f34:	e1d110fe 	ldrsh	r1, [r1, #14]
 e000f38:	eb000550 	bl	e002480 <_lseek_r>
 e000f3c:	e3700001 	cmn	r0, #1
 e000f40:	e1d430bc 	ldrh	r3, [r4, #12]
 e000f44:	15840054 	strne	r0, [r4, #84]	; 0x54
 e000f48:	03c33a01 	biceq	r3, r3, #4096	; 0x1000
 e000f4c:	13833a01 	orrne	r3, r3, #4096	; 0x1000
 e000f50:	01c430bc 	strheq	r3, [r4, #12]
 e000f54:	11c430bc 	strhne	r3, [r4, #12]
 e000f58:	e8bd8010 	pop	{r4, pc}

0e000f5c <__sclose>:
 e000f5c:	e1d110fe 	ldrsh	r1, [r1, #14]
 e000f60:	ea00005c 	b	e0010d8 <_close_r>

0e000f64 <strncpy>:
 e000f64:	e1803001 	orr	r3, r0, r1
 e000f68:	e3520003 	cmp	r2, #3
 e000f6c:	e92d4070 	push	{r4, r5, r6, lr}
 e000f70:	93a0e000 	movls	lr, #0
 e000f74:	e7e13053 	ubfx	r3, r3, #0, #2
 e000f78:	83a0e001 	movhi	lr, #1
 e000f7c:	e3530000 	cmp	r3, #0
 e000f80:	13a0e000 	movne	lr, #0
 e000f84:	e35e0000 	cmp	lr, #0
 e000f88:	01a03000 	moveq	r3, r0
 e000f8c:	0a00000e 	beq	e000fcc <strncpy+0x68>
 e000f90:	e59f606c 	ldr	r6, [pc, #108]	; e001004 <strncpy+0xa0>
 e000f94:	e1a0c001 	mov	ip, r1
 e000f98:	e59f5068 	ldr	r5, [pc, #104]	; e001008 <strncpy+0xa4>
 e000f9c:	e1a03000 	mov	r3, r0
 e000fa0:	e1a0100c 	mov	r1, ip
 e000fa4:	e49c4004 	ldr	r4, [ip], #4
 e000fa8:	e084e006 	add	lr, r4, r6
 e000fac:	e1cee004 	bic	lr, lr, r4
 e000fb0:	e11e0005 	tst	lr, r5
 e000fb4:	1a000004 	bne	e000fcc <strncpy+0x68>
 e000fb8:	e2422004 	sub	r2, r2, #4
 e000fbc:	e1a0100c 	mov	r1, ip
 e000fc0:	e3520003 	cmp	r2, #3
 e000fc4:	e4834004 	str	r4, [r3], #4
 e000fc8:	8afffff4 	bhi	e000fa0 <strncpy+0x3c>
 e000fcc:	e2411001 	sub	r1, r1, #1
 e000fd0:	e3520000 	cmp	r2, #0
 e000fd4:	0a000004 	beq	e000fec <strncpy+0x88>
 e000fd8:	e5f1c001 	ldrb	ip, [r1, #1]!
 e000fdc:	e2422001 	sub	r2, r2, #1
 e000fe0:	e4c3c001 	strb	ip, [r3], #1
 e000fe4:	e35c0000 	cmp	ip, #0
 e000fe8:	1afffff8 	bne	e000fd0 <strncpy+0x6c>
 e000fec:	e0832002 	add	r2, r3, r2
 e000ff0:	e3a01000 	mov	r1, #0
 e000ff4:	e1520003 	cmp	r2, r3
 e000ff8:	08bd8070 	popeq	{r4, r5, r6, pc}
 e000ffc:	e4c31001 	strb	r1, [r3], #1
 e001000:	eafffffb 	b	e000ff4 <strncpy+0x90>
 e001004:	fefefeff 	.word	0xfefefeff
 e001008:	80808080 	.word	0x80808080

0e00100c <vprintf>:
 e00100c:	e1a03001 	mov	r3, r1
 e001010:	e59f100c 	ldr	r1, [pc, #12]	; e001024 <vprintf+0x18>
 e001014:	e1a02000 	mov	r2, r0
 e001018:	e5910000 	ldr	r0, [r1]
 e00101c:	e5901008 	ldr	r1, [r0, #8]
 e001020:	ea000d08 	b	e004448 <_vfprintf_r>
 e001024:	60095000 	.word	0x60095000

0e001028 <_vprintf_r>:
 e001028:	e1a03002 	mov	r3, r2
 e00102c:	e1a02001 	mov	r2, r1
 e001030:	e5901008 	ldr	r1, [r0, #8]
 e001034:	ea000d03 	b	e004448 <_vfprintf_r>

0e001038 <_write_r>:
 e001038:	e92d4070 	push	{r4, r5, r6, lr}
 e00103c:	e1a04000 	mov	r4, r0
 e001040:	e59f502c 	ldr	r5, [pc, #44]	; e001074 <_write_r+0x3c>
 e001044:	e1a00001 	mov	r0, r1
 e001048:	e1a01002 	mov	r1, r2
 e00104c:	e3a02000 	mov	r2, #0
 e001050:	e5852000 	str	r2, [r5]
 e001054:	e1a02003 	mov	r2, r3
 e001058:	eb0023b5 	bl	e009f34 <_write>
 e00105c:	e3700001 	cmn	r0, #1
 e001060:	18bd8070 	popne	{r4, r5, r6, pc}
 e001064:	e5953000 	ldr	r3, [r5]
 e001068:	e3530000 	cmp	r3, #0
 e00106c:	15843000 	strne	r3, [r4]
 e001070:	e8bd8070 	pop	{r4, r5, r6, pc}
 e001074:	600a3160 	.word	0x600a3160

0e001078 <__assert_func>:
 e001078:	e92d401f 	push	{r0, r1, r2, r3, r4, lr}
 e00107c:	e1a0c002 	mov	ip, r2
 e001080:	e1a02003 	mov	r2, r3
 e001084:	e59f302c 	ldr	r3, [pc, #44]	; e0010b8 <__assert_func+0x40>
 e001088:	e35c0000 	cmp	ip, #0
 e00108c:	e1a0e000 	mov	lr, r0
 e001090:	e5933000 	ldr	r3, [r3]
 e001094:	e593000c 	ldr	r0, [r3, #12]
 e001098:	059f301c 	ldreq	r3, [pc, #28]	; e0010bc <__assert_func+0x44>
 e00109c:	159f301c 	ldrne	r3, [pc, #28]	; e0010c0 <__assert_func+0x48>
 e0010a0:	01a0c003 	moveq	ip, r3
 e0010a4:	e88d100a 	stm	sp, {r1, r3, ip}
 e0010a8:	e59f1014 	ldr	r1, [pc, #20]	; e0010c4 <__assert_func+0x4c>
 e0010ac:	e1a0300e 	mov	r3, lr
 e0010b0:	eb0004b9 	bl	e00239c <fiprintf>
 e0010b4:	eb00153f 	bl	e0065b8 <abort>
 e0010b8:	60095000 	.word	0x60095000
 e0010bc:	0e015dcf 	.word	0x0e015dcf
 e0010c0:	0e015d94 	.word	0x0e015d94
 e0010c4:	0e015da1 	.word	0x0e015da1

0e0010c8 <__assert>:
 e0010c8:	e1a03002 	mov	r3, r2
 e0010cc:	e92d4010 	push	{r4, lr}
 e0010d0:	e3a02000 	mov	r2, #0
 e0010d4:	ebffffe7 	bl	e001078 <__assert_func>

0e0010d8 <_close_r>:
 e0010d8:	e92d4070 	push	{r4, r5, r6, lr}
 e0010dc:	e1a04000 	mov	r4, r0
 e0010e0:	e59f5024 	ldr	r5, [pc, #36]	; e00110c <_close_r+0x34>
 e0010e4:	e1a00001 	mov	r0, r1
 e0010e8:	e3a03000 	mov	r3, #0
 e0010ec:	e5853000 	str	r3, [r5]
 e0010f0:	eb00239b 	bl	e009f64 <_close>
 e0010f4:	e3700001 	cmn	r0, #1
 e0010f8:	18bd8070 	popne	{r4, r5, r6, pc}
 e0010fc:	e5953000 	ldr	r3, [r5]
 e001100:	e3530000 	cmp	r3, #0
 e001104:	15843000 	strne	r3, [r4]
 e001108:	e8bd8070 	pop	{r4, r5, r6, pc}
 e00110c:	600a3160 	.word	0x600a3160

0e001110 <quorem>:
 e001110:	e5903010 	ldr	r3, [r0, #16]
 e001114:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e001118:	e5914010 	ldr	r4, [r1, #16]
 e00111c:	e24dd014 	sub	sp, sp, #20
 e001120:	e1530004 	cmp	r3, r4
 e001124:	b3a00000 	movlt	r0, #0
 e001128:	ba00004d 	blt	e001264 <quorem+0x154>
 e00112c:	e2444001 	sub	r4, r4, #1
 e001130:	e2806014 	add	r6, r0, #20
 e001134:	e2818014 	add	r8, r1, #20
 e001138:	e1a0a001 	mov	sl, r1
 e00113c:	e0863104 	add	r3, r6, r4, lsl #2
 e001140:	e58d3004 	str	r3, [sp, #4]
 e001144:	e7963104 	ldr	r3, [r6, r4, lsl #2]
 e001148:	e1a07000 	mov	r7, r0
 e00114c:	e7981104 	ldr	r1, [r8, r4, lsl #2]
 e001150:	e1a0b104 	lsl	fp, r4, #2
 e001154:	e1a00003 	mov	r0, r3
 e001158:	e58d3008 	str	r3, [sp, #8]
 e00115c:	e2811001 	add	r1, r1, #1
 e001160:	e58d100c 	str	r1, [sp, #12]
 e001164:	eb0017fe 	bl	e007164 <__udivsi3>
 e001168:	e59d3008 	ldr	r3, [sp, #8]
 e00116c:	e59d100c 	ldr	r1, [sp, #12]
 e001170:	e0889104 	add	r9, r8, r4, lsl #2
 e001174:	e1a05000 	mov	r5, r0
 e001178:	e1530001 	cmp	r3, r1
 e00117c:	3a00001c 	bcc	e0011f4 <quorem+0xe4>
 e001180:	e3a0c000 	mov	ip, #0
 e001184:	e1a01008 	mov	r1, r8
 e001188:	e1a00006 	mov	r0, r6
 e00118c:	e1a0e00c 	mov	lr, ip
 e001190:	e4912004 	ldr	r2, [r1], #4
 e001194:	e1590001 	cmp	r9, r1
 e001198:	e6ff3072 	uxth	r3, r2
 e00119c:	e1a02822 	lsr	r2, r2, #16
 e0011a0:	e023c395 	mla	r3, r5, r3, ip
 e0011a4:	e1a0c823 	lsr	ip, r3, #16
 e0011a8:	e6ff3073 	uxth	r3, r3
 e0011ac:	e04e3003 	sub	r3, lr, r3
 e0011b0:	e590e000 	ldr	lr, [r0]
 e0011b4:	e022c295 	mla	r2, r5, r2, ip
 e0011b8:	e6f3307e 	uxtah	r3, r3, lr
 e0011bc:	e1a0c822 	lsr	ip, r2, #16
 e0011c0:	e6ff2072 	uxth	r2, r2
 e0011c4:	e062282e 	rsb	r2, r2, lr, lsr #16
 e0011c8:	e0822843 	add	r2, r2, r3, asr #16
 e0011cc:	e6ff3073 	uxth	r3, r3
 e0011d0:	e1833802 	orr	r3, r3, r2, lsl #16
 e0011d4:	e1a0e842 	asr	lr, r2, #16
 e0011d8:	e4803004 	str	r3, [r0], #4
 e0011dc:	2affffeb 	bcs	e001190 <quorem+0x80>
 e0011e0:	e796300b 	ldr	r3, [r6, fp]
 e0011e4:	e3530000 	cmp	r3, #0
 e0011e8:	059d3004 	ldreq	r3, [sp, #4]
 e0011ec:	02433004 	subeq	r3, r3, #4
 e0011f0:	0a000022 	beq	e001280 <quorem+0x170>
 e0011f4:	e1a0100a 	mov	r1, sl
 e0011f8:	e1a00007 	mov	r0, r7
 e0011fc:	eb0006e4 	bl	e002d94 <__mcmp>
 e001200:	e3500000 	cmp	r0, #0
 e001204:	ba000015 	blt	e001260 <quorem+0x150>
 e001208:	e2855001 	add	r5, r5, #1
 e00120c:	e1a00006 	mov	r0, r6
 e001210:	e3a0c000 	mov	ip, #0
 e001214:	e4981004 	ldr	r1, [r8], #4
 e001218:	e590e000 	ldr	lr, [r0]
 e00121c:	e1590008 	cmp	r9, r8
 e001220:	e6ff3071 	uxth	r3, r1
 e001224:	e1a02821 	lsr	r2, r1, #16
 e001228:	e04c3003 	sub	r3, ip, r3
 e00122c:	e062282e 	rsb	r2, r2, lr, lsr #16
 e001230:	e6f3307e 	uxtah	r3, r3, lr
 e001234:	e0822843 	add	r2, r2, r3, asr #16
 e001238:	e6ff3073 	uxth	r3, r3
 e00123c:	e1833802 	orr	r3, r3, r2, lsl #16
 e001240:	e1a0c842 	asr	ip, r2, #16
 e001244:	e4803004 	str	r3, [r0], #4
 e001248:	2afffff1 	bcs	e001214 <quorem+0x104>
 e00124c:	e7962104 	ldr	r2, [r6, r4, lsl #2]
 e001250:	e0863104 	add	r3, r6, r4, lsl #2
 e001254:	e3520000 	cmp	r2, #0
 e001258:	02433004 	subeq	r3, r3, #4
 e00125c:	0a000011 	beq	e0012a8 <quorem+0x198>
 e001260:	e1a00005 	mov	r0, r5
 e001264:	e28dd014 	add	sp, sp, #20
 e001268:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00126c:	e5922000 	ldr	r2, [r2]
 e001270:	e2433004 	sub	r3, r3, #4
 e001274:	e3520000 	cmp	r2, #0
 e001278:	1a000003 	bne	e00128c <quorem+0x17c>
 e00127c:	e2444001 	sub	r4, r4, #1
 e001280:	e1a02003 	mov	r2, r3
 e001284:	e1560003 	cmp	r6, r3
 e001288:	3afffff7 	bcc	e00126c <quorem+0x15c>
 e00128c:	e5874010 	str	r4, [r7, #16]
 e001290:	eaffffd7 	b	e0011f4 <quorem+0xe4>
 e001294:	e5922000 	ldr	r2, [r2]
 e001298:	e2433004 	sub	r3, r3, #4
 e00129c:	e3520000 	cmp	r2, #0
 e0012a0:	1a000003 	bne	e0012b4 <quorem+0x1a4>
 e0012a4:	e2444001 	sub	r4, r4, #1
 e0012a8:	e1a02003 	mov	r2, r3
 e0012ac:	e1560003 	cmp	r6, r3
 e0012b0:	3afffff7 	bcc	e001294 <quorem+0x184>
 e0012b4:	e5874010 	str	r4, [r7, #16]
 e0012b8:	eaffffe8 	b	e001260 <quorem+0x150>

0e0012bc <_dtoa_r>:
 e0012bc:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e0012c0:	ec576b10 	vmov	r6, r7, d0
 e0012c4:	e5908024 	ldr	r8, [r0, #36]	; 0x24
 e0012c8:	ed2d8b02 	vpush	{d8}
 e0012cc:	e24dd044 	sub	sp, sp, #68	; 0x44
 e0012d0:	e1a05000 	mov	r5, r0
 e0012d4:	e3580000 	cmp	r8, #0
 e0012d8:	e59d4070 	ldr	r4, [sp, #112]	; 0x70
 e0012dc:	e58d101c 	str	r1, [sp, #28]
 e0012e0:	e58d2024 	str	r2, [sp, #36]	; 0x24
 e0012e4:	e58d3030 	str	r3, [sp, #48]	; 0x30
 e0012e8:	ed8d0b02 	vstr	d0, [sp, #8]
 e0012ec:	1a00000b 	bne	e001320 <_dtoa_r+0x64>
 e0012f0:	e3a00010 	mov	r0, #16
 e0012f4:	eb0030ea 	bl	e00d6a4 <__wrap_malloc>
 e0012f8:	e3500000 	cmp	r0, #0
 e0012fc:	e1a02000 	mov	r2, r0
 e001300:	03a010ea 	moveq	r1, #234	; 0xea
 e001304:	e5850024 	str	r0, [r5, #36]	; 0x24
 e001308:	059f33c0 	ldreq	r3, [pc, #960]	; e0016d0 <_dtoa_r+0x414>
 e00130c:	0a0000d3 	beq	e001660 <_dtoa_r+0x3a4>
 e001310:	e5808004 	str	r8, [r0, #4]
 e001314:	e5808008 	str	r8, [r0, #8]
 e001318:	e5808000 	str	r8, [r0]
 e00131c:	e580800c 	str	r8, [r0, #12]
 e001320:	e5953024 	ldr	r3, [r5, #36]	; 0x24
 e001324:	e5931000 	ldr	r1, [r3]
 e001328:	e3510000 	cmp	r1, #0
 e00132c:	0a000009 	beq	e001358 <_dtoa_r+0x9c>
 e001330:	e5932004 	ldr	r2, [r3, #4]
 e001334:	e3a03001 	mov	r3, #1
 e001338:	e5812004 	str	r2, [r1, #4]
 e00133c:	e1a00005 	mov	r0, r5
 e001340:	e1a03213 	lsl	r3, r3, r2
 e001344:	e5813008 	str	r3, [r1, #8]
 e001348:	eb0004ac 	bl	e002600 <_Bfree>
 e00134c:	e5953024 	ldr	r3, [r5, #36]	; 0x24
 e001350:	e3a02000 	mov	r2, #0
 e001354:	e5832000 	str	r2, [r3]
 e001358:	e2573000 	subs	r3, r7, #0
 e00135c:	b3c33102 	biclt	r3, r3, #-2147483648	; 0x80000000
 e001360:	b58d300c 	strlt	r3, [sp, #12]
 e001364:	a3a03000 	movge	r3, #0
 e001368:	b3a02001 	movlt	r2, #1
 e00136c:	a5843000 	strge	r3, [r4]
 e001370:	b5842000 	strlt	r2, [r4]
 e001374:	e59f3358 	ldr	r3, [pc, #856]	; e0016d4 <_dtoa_r+0x418>
 e001378:	e59d400c 	ldr	r4, [sp, #12]
 e00137c:	e1d33004 	bics	r3, r3, r4
 e001380:	1a000011 	bne	e0013cc <_dtoa_r+0x110>
 e001384:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
 e001388:	e302370f 	movw	r3, #9999	; 0x270f
 e00138c:	e5823000 	str	r3, [r2]
 e001390:	e7f33054 	ubfx	r3, r4, #0, #20
 e001394:	e1933006 	orrs	r3, r3, r6
 e001398:	0a00039c 	beq	e002210 <_dtoa_r+0xf54>
 e00139c:	e59d3074 	ldr	r3, [sp, #116]	; 0x74
 e0013a0:	e3530000 	cmp	r3, #0
 e0013a4:	e59f332c 	ldr	r3, [pc, #812]	; e0016d8 <_dtoa_r+0x41c>
 e0013a8:	e58d3004 	str	r3, [sp, #4]
 e0013ac:	0a000002 	beq	e0013bc <_dtoa_r+0x100>
 e0013b0:	e2833003 	add	r3, r3, #3
 e0013b4:	e59d2074 	ldr	r2, [sp, #116]	; 0x74
 e0013b8:	e5823000 	str	r3, [r2]
 e0013bc:	e59d0004 	ldr	r0, [sp, #4]
 e0013c0:	e28dd044 	add	sp, sp, #68	; 0x44
 e0013c4:	ecbd8b02 	vpop	{d8}
 e0013c8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e0013cc:	ed9d8b02 	vldr	d8, [sp, #8]
 e0013d0:	eeb58b40 	vcmp.f64	d8, #0.0
 e0013d4:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e0013d8:	1a00000a 	bne	e001408 <_dtoa_r+0x14c>
 e0013dc:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
 e0013e0:	e3a03001 	mov	r3, #1
 e0013e4:	e5823000 	str	r3, [r2]
 e0013e8:	e59d3074 	ldr	r3, [sp, #116]	; 0x74
 e0013ec:	e3530000 	cmp	r3, #0
 e0013f0:	059f32e4 	ldreq	r3, [pc, #740]	; e0016dc <_dtoa_r+0x420>
 e0013f4:	159f02e4 	ldrne	r0, [pc, #740]	; e0016e0 <_dtoa_r+0x424>
 e0013f8:	15830000 	strne	r0, [r3]
 e0013fc:	12403001 	subne	r3, r0, #1
 e001400:	e58d3004 	str	r3, [sp, #4]
 e001404:	eaffffec 	b	e0013bc <_dtoa_r+0x100>
 e001408:	e28d103c 	add	r1, sp, #60	; 0x3c
 e00140c:	eeb00b48 	vmov.f64	d0, d8
 e001410:	e28d2038 	add	r2, sp, #56	; 0x38
 e001414:	e1a00005 	mov	r0, r5
 e001418:	eb00071c 	bl	e003090 <__d2b>
 e00141c:	e7ea1a54 	ubfx	r1, r4, #20, #11
 e001420:	e1a0b000 	mov	fp, r0
 e001424:	e3510000 	cmp	r1, #0
 e001428:	e59d0038 	ldr	r0, [sp, #56]	; 0x38
 e00142c:	0a000047 	beq	e001550 <_dtoa_r+0x294>
 e001430:	ee18ca90 	vmov	ip, s17
 e001434:	ec532b18 	vmov	r2, r3, d8
 e001438:	e2411fff 	sub	r1, r1, #1020	; 0x3fc
 e00143c:	e3a06000 	mov	r6, #0
 e001440:	e2411003 	sub	r1, r1, #3
 e001444:	e7f3c05c 	ubfx	ip, ip, #0, #20
 e001448:	e38c35ff 	orr	r3, ip, #1069547520	; 0x3fc00000
 e00144c:	e3833603 	orr	r3, r3, #3145728	; 0x300000
 e001450:	ec432b31 	vmov	d17, r2, r3
 e001454:	eef70b08 	vmov.f64	d16, #120	; 0x3fc00000  1.5
 e001458:	eddf2b96 	vldr	d18, [pc, #600]	; e0016b8 <_dtoa_r+0x3fc>
 e00145c:	ee071a90 	vmov	s15, r1
 e001460:	ee710be0 	vsub.f64	d16, d17, d16
 e001464:	eddf1b95 	vldr	d17, [pc, #596]	; e0016c0 <_dtoa_r+0x404>
 e001468:	eddf3b96 	vldr	d19, [pc, #600]	; e0016c8 <_dtoa_r+0x40c>
 e00146c:	ee401ba2 	vmla.f64	d17, d16, d18
 e001470:	eef82be7 	vcvt.f64.s32	d18, s15
 e001474:	eef00b61 	vmov.f64	d16, d17
 e001478:	ee420ba3 	vmla.f64	d16, d18, d19
 e00147c:	eef50bc0 	vcmpe.f64	d16, #0.0
 e001480:	eefd7be0 	vcvt.s32.f64	s15, d16
 e001484:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e001488:	ee17aa90 	vmov	sl, s15
 e00148c:	5a000003 	bpl	e0014a0 <_dtoa_r+0x1e4>
 e001490:	eef81be7 	vcvt.f64.s32	d17, s15
 e001494:	eef41b60 	vcmp.f64	d17, d16
 e001498:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e00149c:	124aa001 	subne	sl, sl, #1
 e0014a0:	e35a0016 	cmp	sl, #22
 e0014a4:	83a03001 	movhi	r3, #1
 e0014a8:	8a000006 	bhi	e0014c8 <_dtoa_r+0x20c>
 e0014ac:	e59f3238 	ldr	r3, [pc, #568]	; e0016ec <_dtoa_r+0x430>
 e0014b0:	e083318a 	add	r3, r3, sl, lsl #3
 e0014b4:	edd30b00 	vldr	d16, [r3]
 e0014b8:	e3a03000 	mov	r3, #0
 e0014bc:	eeb48be0 	vcmpe.f64	d8, d16
 e0014c0:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e0014c4:	424aa001 	submi	sl, sl, #1
 e0014c8:	e0401001 	sub	r1, r0, r1
 e0014cc:	e58d302c 	str	r3, [sp, #44]	; 0x2c
 e0014d0:	e2513001 	subs	r3, r1, #1
 e0014d4:	e58d3014 	str	r3, [sp, #20]
 e0014d8:	42613001 	rsbmi	r3, r1, #1
 e0014dc:	53a03000 	movpl	r3, #0
 e0014e0:	458d3010 	strmi	r3, [sp, #16]
 e0014e4:	43a03000 	movmi	r3, #0
 e0014e8:	558d3010 	strpl	r3, [sp, #16]
 e0014ec:	458d3014 	strmi	r3, [sp, #20]
 e0014f0:	e35a0000 	cmp	sl, #0
 e0014f4:	ba000029 	blt	e0015a0 <_dtoa_r+0x2e4>
 e0014f8:	e59d3014 	ldr	r3, [sp, #20]
 e0014fc:	e3a09000 	mov	r9, #0
 e001500:	e58da028 	str	sl, [sp, #40]	; 0x28
 e001504:	e083300a 	add	r3, r3, sl
 e001508:	e58d3014 	str	r3, [sp, #20]
 e00150c:	e59d301c 	ldr	r3, [sp, #28]
 e001510:	e3530009 	cmp	r3, #9
 e001514:	8a000055 	bhi	e001670 <_dtoa_r+0x3b4>
 e001518:	e3530005 	cmp	r3, #5
 e00151c:	c2433004 	subgt	r3, r3, #4
 e001520:	c58d301c 	strgt	r3, [sp, #28]
 e001524:	c3a04000 	movgt	r4, #0
 e001528:	d3a04001 	movle	r4, #1
 e00152c:	e59d301c 	ldr	r3, [sp, #28]
 e001530:	e2433002 	sub	r3, r3, #2
 e001534:	e3530003 	cmp	r3, #3
 e001538:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
 e00153c:	ea000055 	b	e001698 <_dtoa_r+0x3dc>
 e001540:	0e0015bc 	.word	0x0e0015bc
 e001544:	0e0015fc 	.word	0x0e0015fc
 e001548:	0e0015f4 	.word	0x0e0015f4
 e00154c:	0e001668 	.word	0x0e001668
 e001550:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
 e001554:	e0801001 	add	r1, r0, r1
 e001558:	e2813e43 	add	r3, r1, #1072	; 0x430
 e00155c:	e2833002 	add	r3, r3, #2
 e001560:	e3530020 	cmp	r3, #32
 e001564:	c2812e41 	addgt	r2, r1, #1040	; 0x410
 e001568:	c2633040 	rsbgt	r3, r3, #64	; 0x40
 e00156c:	c2822002 	addgt	r2, r2, #2
 e001570:	d2633020 	rsble	r3, r3, #32
 e001574:	e2411001 	sub	r1, r1, #1
 e001578:	c1a06236 	lsrgt	r6, r6, r2
 e00157c:	c1863314 	orrgt	r3, r6, r4, lsl r3
 e001580:	d1a03316 	lslle	r3, r6, r3
 e001584:	ee073a90 	vmov	s15, r3
 e001588:	e3a06001 	mov	r6, #1
 e00158c:	eeb87b67 	vcvt.f64.u32	d7, s15
 e001590:	ee17ca90 	vmov	ip, s15
 e001594:	ec532b17 	vmov	r2, r3, d7
 e001598:	e24c361f 	sub	r3, ip, #32505856	; 0x1f00000
 e00159c:	eaffffab 	b	e001450 <_dtoa_r+0x194>
 e0015a0:	e59d3010 	ldr	r3, [sp, #16]
 e0015a4:	e26a9000 	rsb	r9, sl, #0
 e0015a8:	e043300a 	sub	r3, r3, sl
 e0015ac:	e58d3010 	str	r3, [sp, #16]
 e0015b0:	e3a03000 	mov	r3, #0
 e0015b4:	e58d3028 	str	r3, [sp, #40]	; 0x28
 e0015b8:	eaffffd3 	b	e00150c <_dtoa_r+0x250>
 e0015bc:	e3a03000 	mov	r3, #0
 e0015c0:	e58d3018 	str	r3, [sp, #24]
 e0015c4:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e0015c8:	e3530000 	cmp	r3, #0
 e0015cc:	c59d3024 	ldrgt	r3, [sp, #36]	; 0x24
 e0015d0:	c58d3020 	strgt	r3, [sp, #32]
 e0015d4:	c1a08003 	movgt	r8, r3
 e0015d8:	ca000010 	bgt	e001620 <_dtoa_r+0x364>
 e0015dc:	e3a03001 	mov	r3, #1
 e0015e0:	e58d3020 	str	r3, [sp, #32]
 e0015e4:	e1a08003 	mov	r8, r3
 e0015e8:	e1a02003 	mov	r2, r3
 e0015ec:	e58d2024 	str	r2, [sp, #36]	; 0x24
 e0015f0:	ea00000a 	b	e001620 <_dtoa_r+0x364>
 e0015f4:	e3a03001 	mov	r3, #1
 e0015f8:	eafffff0 	b	e0015c0 <_dtoa_r+0x304>
 e0015fc:	e3a03000 	mov	r3, #0
 e001600:	e58d3018 	str	r3, [sp, #24]
 e001604:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e001608:	e08a3003 	add	r3, sl, r3
 e00160c:	e58d3020 	str	r3, [sp, #32]
 e001610:	e2838001 	add	r8, r3, #1
 e001614:	e3580001 	cmp	r8, #1
 e001618:	a1a03008 	movge	r3, r8
 e00161c:	b3a03001 	movlt	r3, #1
 e001620:	e5950024 	ldr	r0, [r5, #36]	; 0x24
 e001624:	e3a02000 	mov	r2, #0
 e001628:	e5802004 	str	r2, [r0, #4]
 e00162c:	e3a02004 	mov	r2, #4
 e001630:	e282c014 	add	ip, r2, #20
 e001634:	e5901004 	ldr	r1, [r0, #4]
 e001638:	e15c0003 	cmp	ip, r3
 e00163c:	9a000018 	bls	e0016a4 <_dtoa_r+0x3e8>
 e001640:	e1a00005 	mov	r0, r5
 e001644:	eb0003b4 	bl	e00251c <_Balloc>
 e001648:	e2503000 	subs	r3, r0, #0
 e00164c:	e58d3004 	str	r3, [sp, #4]
 e001650:	1a000028 	bne	e0016f8 <_dtoa_r+0x43c>
 e001654:	e59f3094 	ldr	r3, [pc, #148]	; e0016f0 <_dtoa_r+0x434>
 e001658:	e1a02000 	mov	r2, r0
 e00165c:	e30011aa 	movw	r1, #426	; 0x1aa
 e001660:	e59f007c 	ldr	r0, [pc, #124]	; e0016e4 <_dtoa_r+0x428>
 e001664:	ebfffe83 	bl	e001078 <__assert_func>
 e001668:	e3a03001 	mov	r3, #1
 e00166c:	eaffffe3 	b	e001600 <_dtoa_r+0x344>
 e001670:	e3a04001 	mov	r4, #1
 e001674:	e3a03000 	mov	r3, #0
 e001678:	e58d4018 	str	r4, [sp, #24]
 e00167c:	e58d301c 	str	r3, [sp, #28]
 e001680:	e3e03000 	mvn	r3, #0
 e001684:	e3a02000 	mov	r2, #0
 e001688:	e1a08003 	mov	r8, r3
 e00168c:	e58d3020 	str	r3, [sp, #32]
 e001690:	e3a03012 	mov	r3, #18
 e001694:	eaffffd4 	b	e0015ec <_dtoa_r+0x330>
 e001698:	e3a03001 	mov	r3, #1
 e00169c:	e58d3018 	str	r3, [sp, #24]
 e0016a0:	eafffff6 	b	e001680 <_dtoa_r+0x3c4>
 e0016a4:	e2811001 	add	r1, r1, #1
 e0016a8:	e1a02082 	lsl	r2, r2, #1
 e0016ac:	e5801004 	str	r1, [r0, #4]
 e0016b0:	eaffffde 	b	e001630 <_dtoa_r+0x374>
 e0016b4:	e320f000 	nop	{0}
 e0016b8:	636f4361 	.word	0x636f4361
 e0016bc:	3fd287a7 	.word	0x3fd287a7
 e0016c0:	8b60c8b3 	.word	0x8b60c8b3
 e0016c4:	3fc68a28 	.word	0x3fc68a28
 e0016c8:	509f79fb 	.word	0x509f79fb
 e0016cc:	3fd34413 	.word	0x3fd34413
 e0016d0:	0e015ddf 	.word	0x0e015ddf
 e0016d4:	7ff00000 	.word	0x7ff00000
 e0016d8:	0e015dd9 	.word	0x0e015dd9
 e0016dc:	0e015ddd 	.word	0x0e015ddd
 e0016e0:	0e015dde 	.word	0x0e015dde
 e0016e4:	0e015df6 	.word	0x0e015df6
 e0016e8:	0e0142f8 	.word	0x0e0142f8
 e0016ec:	0e014208 	.word	0x0e014208
 e0016f0:	0e015e6a 	.word	0x0e015e6a
 e0016f4:	0e015dd0 	.word	0x0e015dd0
 e0016f8:	e5953024 	ldr	r3, [r5, #36]	; 0x24
 e0016fc:	e358000e 	cmp	r8, #14
 e001700:	83a04000 	movhi	r4, #0
 e001704:	92044001 	andls	r4, r4, #1
 e001708:	e59d2004 	ldr	r2, [sp, #4]
 e00170c:	e3540000 	cmp	r4, #0
 e001710:	e5832000 	str	r2, [r3]
 e001714:	0a00003c 	beq	e00180c <_dtoa_r+0x550>
 e001718:	e35a0000 	cmp	sl, #0
 e00171c:	da000063 	ble	e0018b0 <_dtoa_r+0x5f4>
 e001720:	e31a0c01 	tst	sl, #256	; 0x100
 e001724:	e51f2040 	ldr	r2, [pc, #-64]	; e0016ec <_dtoa_r+0x430>
 e001728:	e20a300f 	and	r3, sl, #15
 e00172c:	e51f104c 	ldr	r1, [pc, #-76]	; e0016e8 <_dtoa_r+0x42c>
 e001730:	e0823183 	add	r3, r2, r3, lsl #3
 e001734:	151f2054 	ldrne	r2, [pc, #-84]	; e0016e8 <_dtoa_r+0x42c>
 e001738:	03a02002 	moveq	r2, #2
 e00173c:	edd30b00 	vldr	d16, [r3]
 e001740:	e1a0324a 	asr	r3, sl, #4
 e001744:	1dd21b08 	vldrne	d17, [r2, #32]
 e001748:	1203300f 	andne	r3, r3, #15
 e00174c:	13a02003 	movne	r2, #3
 e001750:	1ec81b21 	vdivne.f64	d17, d8, d17
 e001754:	1dcd1b02 	vstrne	d17, [sp, #8]
 e001758:	e3530000 	cmp	r3, #0
 e00175c:	1a00004c 	bne	e001894 <_dtoa_r+0x5d8>
 e001760:	eddd1b02 	vldr	d17, [sp, #8]
 e001764:	eec10ba0 	vdiv.f64	d16, d17, d16
 e001768:	edcd0b02 	vstr	d16, [sp, #8]
 e00176c:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
 e001770:	e3530000 	cmp	r3, #0
 e001774:	0a000067 	beq	e001918 <_dtoa_r+0x65c>
 e001778:	eddd0b02 	vldr	d16, [sp, #8]
 e00177c:	eef71b00 	vmov.f64	d17, #112	; 0x3f800000  1.0
 e001780:	eef40be1 	vcmpe.f64	d16, d17
 e001784:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e001788:	5a000062 	bpl	e001918 <_dtoa_r+0x65c>
 e00178c:	e3580000 	cmp	r8, #0
 e001790:	0a000060 	beq	e001918 <_dtoa_r+0x65c>
 e001794:	e59d3020 	ldr	r3, [sp, #32]
 e001798:	e3530000 	cmp	r3, #0
 e00179c:	da000019 	ble	e001808 <_dtoa_r+0x54c>
 e0017a0:	eef21b04 	vmov.f64	d17, #36	; 0x41200000  10.0
 e0017a4:	e24a1001 	sub	r1, sl, #1
 e0017a8:	e2822001 	add	r2, r2, #1
 e0017ac:	e1a00003 	mov	r0, r3
 e0017b0:	ee600ba1 	vmul.f64	d16, d16, d17
 e0017b4:	edcd0b02 	vstr	d16, [sp, #8]
 e0017b8:	ee072a90 	vmov	s15, r2
 e0017bc:	eddd0b02 	vldr	d16, [sp, #8]
 e0017c0:	e3500000 	cmp	r0, #0
 e0017c4:	eef81be7 	vcvt.f64.s32	d17, s15
 e0017c8:	eeb17b0c 	vmov.f64	d7, #28	; 0x40e00000  7.0
 e0017cc:	ee017ba0 	vmla.f64	d7, d17, d16
 e0017d0:	ee17ca90 	vmov	ip, s15
 e0017d4:	ec532b17 	vmov	r2, r3, d7
 e0017d8:	e24c350d 	sub	r3, ip, #54525952	; 0x3400000
 e0017dc:	1a000050 	bne	e001924 <_dtoa_r+0x668>
 e0017e0:	eef11b04 	vmov.f64	d17, #20	; 0x40a00000  5.0
 e0017e4:	ee700be1 	vsub.f64	d16, d16, d17
 e0017e8:	ec432b31 	vmov	d17, r2, r3
 e0017ec:	eef40be1 	vcmpe.f64	d16, d17
 e0017f0:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e0017f4:	ca0001ab 	bgt	e001ea8 <_dtoa_r+0xbec>
 e0017f8:	eef11b61 	vneg.f64	d17, d17
 e0017fc:	eef40be1 	vcmpe.f64	d16, d17
 e001800:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e001804:	4a0001a4 	bmi	e001e9c <_dtoa_r+0xbe0>
 e001808:	ed8d8b02 	vstr	d8, [sp, #8]
 e00180c:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
 e001810:	e35a000e 	cmp	sl, #14
 e001814:	e1e04003 	mvn	r4, r3
 e001818:	e1a04fa4 	lsr	r4, r4, #31
 e00181c:	c3a04000 	movgt	r4, #0
 e001820:	e3540000 	cmp	r4, #0
 e001824:	0a0000b2 	beq	e001af4 <_dtoa_r+0x838>
 e001828:	e51f3144 	ldr	r3, [pc, #-324]	; e0016ec <_dtoa_r+0x430>
 e00182c:	e3580000 	cmp	r8, #0
 e001830:	e59d2024 	ldr	r2, [sp, #36]	; 0x24
 e001834:	e083318a 	add	r3, r3, sl, lsl #3
 e001838:	edd31b00 	vldr	d17, [r3]
 e00183c:	c3a03000 	movgt	r3, #0
 e001840:	d3a03001 	movle	r3, #1
 e001844:	e0133fa2 	ands	r3, r3, r2, lsr #31
 e001848:	059d7004 	ldreq	r7, [sp, #4]
 e00184c:	0ef23b04 	vmoveq.f64	d19, #36	; 0x41200000  10.0
 e001850:	0ddd0b02 	vldreq	d16, [sp, #8]
 e001854:	0a000086 	beq	e001a74 <_dtoa_r+0x7b8>
 e001858:	e3580000 	cmp	r8, #0
 e00185c:	1a00018e 	bne	e001e9c <_dtoa_r+0xbe0>
 e001860:	eef10b04 	vmov.f64	d16, #20	; 0x40a00000  5.0
 e001864:	e1a04008 	mov	r4, r8
 e001868:	e1a06008 	mov	r6, r8
 e00186c:	ee611ba0 	vmul.f64	d17, d17, d16
 e001870:	eddd0b02 	vldr	d16, [sp, #8]
 e001874:	eef41be0 	vcmpe.f64	d17, d16
 e001878:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e00187c:	aa00015d 	bge	e001df8 <_dtoa_r+0xb3c>
 e001880:	e59d7004 	ldr	r7, [sp, #4]
 e001884:	e3a03031 	mov	r3, #49	; 0x31
 e001888:	e28aa001 	add	sl, sl, #1
 e00188c:	e4c73001 	strb	r3, [r7], #1
 e001890:	ea00015b 	b	e001e04 <_dtoa_r+0xb48>
 e001894:	e3130001 	tst	r3, #1
 e001898:	e2811008 	add	r1, r1, #8
 e00189c:	12822001 	addne	r2, r2, #1
 e0018a0:	e1a030c3 	asr	r3, r3, #1
 e0018a4:	1d511b02 	vldrne	d17, [r1, #-8]
 e0018a8:	1e600ba1 	vmulne.f64	d16, d16, d17
 e0018ac:	eaffffa9 	b	e001758 <_dtoa_r+0x49c>
 e0018b0:	03a02002 	moveq	r2, #2
 e0018b4:	0affffac 	beq	e00176c <_dtoa_r+0x4b0>
 e0018b8:	e26a3000 	rsb	r3, sl, #0
 e0018bc:	e51f21d8 	ldr	r2, [pc, #-472]	; e0016ec <_dtoa_r+0x430>
 e0018c0:	e203100f 	and	r1, r3, #15
 e0018c4:	e3a00000 	mov	r0, #0
 e0018c8:	e1a03243 	asr	r3, r3, #4
 e0018cc:	e0822181 	add	r2, r2, r1, lsl #3
 e0018d0:	e51f11f0 	ldr	r1, [pc, #-496]	; e0016e8 <_dtoa_r+0x42c>
 e0018d4:	edd20b00 	vldr	d16, [r2]
 e0018d8:	e3a02002 	mov	r2, #2
 e0018dc:	ee680b20 	vmul.f64	d16, d8, d16
 e0018e0:	edcd0b02 	vstr	d16, [sp, #8]
 e0018e4:	e3530000 	cmp	r3, #0
 e0018e8:	1a000002 	bne	e0018f8 <_dtoa_r+0x63c>
 e0018ec:	e3500000 	cmp	r0, #0
 e0018f0:	1dcd0b02 	vstrne	d16, [sp, #8]
 e0018f4:	eaffff9c 	b	e00176c <_dtoa_r+0x4b0>
 e0018f8:	e3130001 	tst	r3, #1
 e0018fc:	e2811008 	add	r1, r1, #8
 e001900:	12822001 	addne	r2, r2, #1
 e001904:	11a00004 	movne	r0, r4
 e001908:	e1a030c3 	asr	r3, r3, #1
 e00190c:	1d511b02 	vldrne	d17, [r1, #-8]
 e001910:	1e600ba1 	vmulne.f64	d16, d16, d17
 e001914:	eafffff2 	b	e0018e4 <_dtoa_r+0x628>
 e001918:	e1a0100a 	mov	r1, sl
 e00191c:	e1a00008 	mov	r0, r8
 e001920:	eaffffa4 	b	e0017b8 <_dtoa_r+0x4fc>
 e001924:	ec432b31 	vmov	d17, r2, r3
 e001928:	e51f3244 	ldr	r3, [pc, #-580]	; e0016ec <_dtoa_r+0x430>
 e00192c:	e0833180 	add	r3, r3, r0, lsl #3
 e001930:	ed533b02 	vldr	d19, [r3, #-8]
 e001934:	e59d3018 	ldr	r3, [sp, #24]
 e001938:	e3530000 	cmp	r3, #0
 e00193c:	e59d3004 	ldr	r3, [sp, #4]
 e001940:	e0834000 	add	r4, r3, r0
 e001944:	0a000017 	beq	e0019a8 <_dtoa_r+0x6ec>
 e001948:	eef64b00 	vmov.f64	d20, #96	; 0x3f000000  0.5
 e00194c:	e1a07003 	mov	r7, r3
 e001950:	eec42ba3 	vdiv.f64	d18, d20, d19
 e001954:	eef73b00 	vmov.f64	d19, #112	; 0x3f800000  1.0
 e001958:	ee721be1 	vsub.f64	d17, d18, d17
 e00195c:	eef22b04 	vmov.f64	d18, #36	; 0x41200000  10.0
 e001960:	eefd7be0 	vcvt.s32.f64	s15, d16
 e001964:	eef84be7 	vcvt.f64.s32	d20, s15
 e001968:	ee173a90 	vmov	r3, s15
 e00196c:	ee700be4 	vsub.f64	d16, d16, d20
 e001970:	e2833030 	add	r3, r3, #48	; 0x30
 e001974:	e4c73001 	strb	r3, [r7], #1
 e001978:	eef40be1 	vcmpe.f64	d16, d17
 e00197c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e001980:	4a000022 	bmi	e001a10 <_dtoa_r+0x754>
 e001984:	ee734be0 	vsub.f64	d20, d19, d16
 e001988:	eef44be1 	vcmpe.f64	d20, d17
 e00198c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e001990:	4a000023 	bmi	e001a24 <_dtoa_r+0x768>
 e001994:	e1570004 	cmp	r7, r4
 e001998:	0affff9a 	beq	e001808 <_dtoa_r+0x54c>
 e00199c:	ee611ba2 	vmul.f64	d17, d17, d18
 e0019a0:	ee600ba2 	vmul.f64	d16, d16, d18
 e0019a4:	eaffffed 	b	e001960 <_dtoa_r+0x6a4>
 e0019a8:	ee611ba3 	vmul.f64	d17, d17, d19
 e0019ac:	e59d7004 	ldr	r7, [sp, #4]
 e0019b0:	e1a02004 	mov	r2, r4
 e0019b4:	eef22b04 	vmov.f64	d18, #36	; 0x41200000  10.0
 e0019b8:	eefd7be0 	vcvt.s32.f64	s15, d16
 e0019bc:	ee173a90 	vmov	r3, s15
 e0019c0:	eef83be7 	vcvt.f64.s32	d19, s15
 e0019c4:	e2833030 	add	r3, r3, #48	; 0x30
 e0019c8:	e4c73001 	strb	r3, [r7], #1
 e0019cc:	ee700be3 	vsub.f64	d16, d16, d19
 e0019d0:	e1570004 	cmp	r7, r4
 e0019d4:	1a00000f 	bne	e001a18 <_dtoa_r+0x75c>
 e0019d8:	eef62b00 	vmov.f64	d18, #96	; 0x3f000000  0.5
 e0019dc:	ee713ba2 	vadd.f64	d19, d17, d18
 e0019e0:	eef40be3 	vcmpe.f64	d16, d19
 e0019e4:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e0019e8:	ca00000d 	bgt	e001a24 <_dtoa_r+0x768>
 e0019ec:	ee721be1 	vsub.f64	d17, d18, d17
 e0019f0:	eef40be1 	vcmpe.f64	d16, d17
 e0019f4:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e0019f8:	5affff82 	bpl	e001808 <_dtoa_r+0x54c>
 e0019fc:	e1a07002 	mov	r7, r2
 e001a00:	e2422001 	sub	r2, r2, #1
 e001a04:	e5573001 	ldrb	r3, [r7, #-1]
 e001a08:	e3530030 	cmp	r3, #48	; 0x30
 e001a0c:	0afffffa 	beq	e0019fc <_dtoa_r+0x740>
 e001a10:	e1a0a001 	mov	sl, r1
 e001a14:	ea00002a 	b	e001ac4 <_dtoa_r+0x808>
 e001a18:	ee600ba2 	vmul.f64	d16, d16, d18
 e001a1c:	eaffffe5 	b	e0019b8 <_dtoa_r+0x6fc>
 e001a20:	e1a0100a 	mov	r1, sl
 e001a24:	e1a03007 	mov	r3, r7
 e001a28:	e1a07003 	mov	r7, r3
 e001a2c:	e5732001 	ldrb	r2, [r3, #-1]!
 e001a30:	e3520039 	cmp	r2, #57	; 0x39
 e001a34:	1a000006 	bne	e001a54 <_dtoa_r+0x798>
 e001a38:	e59d2004 	ldr	r2, [sp, #4]
 e001a3c:	e1520003 	cmp	r2, r3
 e001a40:	1afffff8 	bne	e001a28 <_dtoa_r+0x76c>
 e001a44:	e59d0004 	ldr	r0, [sp, #4]
 e001a48:	e2811001 	add	r1, r1, #1
 e001a4c:	e3a02030 	mov	r2, #48	; 0x30
 e001a50:	e5c02000 	strb	r2, [r0]
 e001a54:	e5d32000 	ldrb	r2, [r3]
 e001a58:	e2822001 	add	r2, r2, #1
 e001a5c:	e5c32000 	strb	r2, [r3]
 e001a60:	eaffffea 	b	e001a10 <_dtoa_r+0x754>
 e001a64:	ee600ba3 	vmul.f64	d16, d16, d19
 e001a68:	eef50b40 	vcmp.f64	d16, #0.0
 e001a6c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e001a70:	0a000013 	beq	e001ac4 <_dtoa_r+0x808>
 e001a74:	eec02ba1 	vdiv.f64	d18, d16, d17
 e001a78:	eefd7be2 	vcvt.s32.f64	s15, d18
 e001a7c:	ee173a90 	vmov	r3, s15
 e001a80:	eef82be7 	vcvt.f64.s32	d18, s15
 e001a84:	e2832030 	add	r2, r3, #48	; 0x30
 e001a88:	e4c72001 	strb	r2, [r7], #1
 e001a8c:	e59d2004 	ldr	r2, [sp, #4]
 e001a90:	ee420be1 	vmls.f64	d16, d18, d17
 e001a94:	e0472002 	sub	r2, r7, r2
 e001a98:	e1580002 	cmp	r8, r2
 e001a9c:	1afffff0 	bne	e001a64 <_dtoa_r+0x7a8>
 e001aa0:	ee700ba0 	vadd.f64	d16, d16, d16
 e001aa4:	eef40be1 	vcmpe.f64	d16, d17
 e001aa8:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e001aac:	caffffdb 	bgt	e001a20 <_dtoa_r+0x764>
 e001ab0:	eef40b61 	vcmp.f64	d16, d17
 e001ab4:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e001ab8:	1a000001 	bne	e001ac4 <_dtoa_r+0x808>
 e001abc:	e3130001 	tst	r3, #1
 e001ac0:	1affffd6 	bne	e001a20 <_dtoa_r+0x764>
 e001ac4:	e1a0100b 	mov	r1, fp
 e001ac8:	e1a00005 	mov	r0, r5
 e001acc:	eb0002cb 	bl	e002600 <_Bfree>
 e001ad0:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
 e001ad4:	e3a03000 	mov	r3, #0
 e001ad8:	e5c73000 	strb	r3, [r7]
 e001adc:	e28a3001 	add	r3, sl, #1
 e001ae0:	e5823000 	str	r3, [r2]
 e001ae4:	e59d3074 	ldr	r3, [sp, #116]	; 0x74
 e001ae8:	e3530000 	cmp	r3, #0
 e001aec:	15837000 	strne	r7, [r3]
 e001af0:	eafffe31 	b	e0013bc <_dtoa_r+0x100>
 e001af4:	e59d2018 	ldr	r2, [sp, #24]
 e001af8:	e3520000 	cmp	r2, #0
 e001afc:	01a04009 	moveq	r4, r9
 e001b00:	059d7010 	ldreq	r7, [sp, #16]
 e001b04:	059d6018 	ldreq	r6, [sp, #24]
 e001b08:	0a000013 	beq	e001b5c <_dtoa_r+0x8a0>
 e001b0c:	e59d201c 	ldr	r2, [sp, #28]
 e001b10:	e3520001 	cmp	r2, #1
 e001b14:	ca0000ca 	bgt	e001e44 <_dtoa_r+0xb88>
 e001b18:	e3560000 	cmp	r6, #0
 e001b1c:	e59d7010 	ldr	r7, [sp, #16]
 e001b20:	12833e43 	addne	r3, r3, #1072	; 0x430
 e001b24:	e1a04009 	mov	r4, r9
 e001b28:	12833003 	addne	r3, r3, #3
 e001b2c:	059d3038 	ldreq	r3, [sp, #56]	; 0x38
 e001b30:	02633036 	rsbeq	r3, r3, #54	; 0x36
 e001b34:	e59d2010 	ldr	r2, [sp, #16]
 e001b38:	e3a01001 	mov	r1, #1
 e001b3c:	e1a00005 	mov	r0, r5
 e001b40:	e0822003 	add	r2, r2, r3
 e001b44:	e58d2010 	str	r2, [sp, #16]
 e001b48:	e59d2014 	ldr	r2, [sp, #20]
 e001b4c:	e0823003 	add	r3, r2, r3
 e001b50:	e58d3014 	str	r3, [sp, #20]
 e001b54:	eb000378 	bl	e00293c <__i2b>
 e001b58:	e1a06000 	mov	r6, r0
 e001b5c:	e59d3014 	ldr	r3, [sp, #20]
 e001b60:	e3570000 	cmp	r7, #0
 e001b64:	c3530000 	cmpgt	r3, #0
 e001b68:	da000008 	ble	e001b90 <_dtoa_r+0x8d4>
 e001b6c:	e1570003 	cmp	r7, r3
 e001b70:	e59d2010 	ldr	r2, [sp, #16]
 e001b74:	b1a03007 	movlt	r3, r7
 e001b78:	e0422003 	sub	r2, r2, r3
 e001b7c:	e58d2010 	str	r2, [sp, #16]
 e001b80:	e59d2014 	ldr	r2, [sp, #20]
 e001b84:	e0477003 	sub	r7, r7, r3
 e001b88:	e0423003 	sub	r3, r2, r3
 e001b8c:	e58d3014 	str	r3, [sp, #20]
 e001b90:	e3590000 	cmp	r9, #0
 e001b94:	0a000019 	beq	e001c00 <_dtoa_r+0x944>
 e001b98:	e59d3018 	ldr	r3, [sp, #24]
 e001b9c:	e3530000 	cmp	r3, #0
 e001ba0:	0a0000b6 	beq	e001e80 <_dtoa_r+0xbc4>
 e001ba4:	e3540000 	cmp	r4, #0
 e001ba8:	da00000e 	ble	e001be8 <_dtoa_r+0x92c>
 e001bac:	e1a01006 	mov	r1, r6
 e001bb0:	e1a02004 	mov	r2, r4
 e001bb4:	e1a00005 	mov	r0, r5
 e001bb8:	eb0003e2 	bl	e002b48 <__pow5mult>
 e001bbc:	e1a0200b 	mov	r2, fp
 e001bc0:	e1a01000 	mov	r1, r0
 e001bc4:	e1a06000 	mov	r6, r0
 e001bc8:	e1a00005 	mov	r0, r5
 e001bcc:	eb00036a 	bl	e00297c <__multiply>
 e001bd0:	e1a0100b 	mov	r1, fp
 e001bd4:	e58d0034 	str	r0, [sp, #52]	; 0x34
 e001bd8:	e1a00005 	mov	r0, r5
 e001bdc:	eb000287 	bl	e002600 <_Bfree>
 e001be0:	e59d3034 	ldr	r3, [sp, #52]	; 0x34
 e001be4:	e1a0b003 	mov	fp, r3
 e001be8:	e0592004 	subs	r2, r9, r4
 e001bec:	0a000003 	beq	e001c00 <_dtoa_r+0x944>
 e001bf0:	e1a0100b 	mov	r1, fp
 e001bf4:	e1a00005 	mov	r0, r5
 e001bf8:	eb0003d2 	bl	e002b48 <__pow5mult>
 e001bfc:	e1a0b000 	mov	fp, r0
 e001c00:	e3a01001 	mov	r1, #1
 e001c04:	e1a00005 	mov	r0, r5
 e001c08:	eb00034b 	bl	e00293c <__i2b>
 e001c0c:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
 e001c10:	e1a04000 	mov	r4, r0
 e001c14:	e3530000 	cmp	r3, #0
 e001c18:	da00009a 	ble	e001e88 <_dtoa_r+0xbcc>
 e001c1c:	e1a02003 	mov	r2, r3
 e001c20:	e1a01000 	mov	r1, r0
 e001c24:	e1a00005 	mov	r0, r5
 e001c28:	eb0003c6 	bl	e002b48 <__pow5mult>
 e001c2c:	e59d301c 	ldr	r3, [sp, #28]
 e001c30:	e1a04000 	mov	r4, r0
 e001c34:	e3530001 	cmp	r3, #1
 e001c38:	c3a09000 	movgt	r9, #0
 e001c3c:	ca000018 	bgt	e001ca4 <_dtoa_r+0x9e8>
 e001c40:	e59d3008 	ldr	r3, [sp, #8]
 e001c44:	e3530000 	cmp	r3, #0
 e001c48:	1a000091 	bne	e001e94 <_dtoa_r+0xbd8>
 e001c4c:	e59d300c 	ldr	r3, [sp, #12]
 e001c50:	e7f33053 	ubfx	r3, r3, #0, #20
 e001c54:	e3530000 	cmp	r3, #0
 e001c58:	159d9008 	ldrne	r9, [sp, #8]
 e001c5c:	1a00000c 	bne	e001c94 <_dtoa_r+0x9d8>
 e001c60:	e59d300c 	ldr	r3, [sp, #12]
 e001c64:	e3c39102 	bic	r9, r3, #-2147483648	; 0x80000000
 e001c68:	e1a09a29 	lsr	r9, r9, #20
 e001c6c:	e1a09a09 	lsl	r9, r9, #20
 e001c70:	e3590000 	cmp	r9, #0
 e001c74:	0a000006 	beq	e001c94 <_dtoa_r+0x9d8>
 e001c78:	e59d3010 	ldr	r3, [sp, #16]
 e001c7c:	e3a09001 	mov	r9, #1
 e001c80:	e2833001 	add	r3, r3, #1
 e001c84:	e58d3010 	str	r3, [sp, #16]
 e001c88:	e59d3014 	ldr	r3, [sp, #20]
 e001c8c:	e2833001 	add	r3, r3, #1
 e001c90:	e58d3014 	str	r3, [sp, #20]
 e001c94:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
 e001c98:	e3530000 	cmp	r3, #0
 e001c9c:	03a00001 	moveq	r0, #1
 e001ca0:	0a000004 	beq	e001cb8 <_dtoa_r+0x9fc>
 e001ca4:	e5943010 	ldr	r3, [r4, #16]
 e001ca8:	e0843103 	add	r3, r4, r3, lsl #2
 e001cac:	e5930010 	ldr	r0, [r3, #16]
 e001cb0:	eb0002e4 	bl	e002848 <__hi0bits>
 e001cb4:	e2600020 	rsb	r0, r0, #32
 e001cb8:	e59d3014 	ldr	r3, [sp, #20]
 e001cbc:	e0830000 	add	r0, r3, r0
 e001cc0:	e210001f 	ands	r0, r0, #31
 e001cc4:	0a000005 	beq	e001ce0 <_dtoa_r+0xa24>
 e001cc8:	e2603020 	rsb	r3, r0, #32
 e001ccc:	e3530004 	cmp	r3, #4
 e001cd0:	c260001c 	rsbgt	r0, r0, #28
 e001cd4:	ca000002 	bgt	e001ce4 <_dtoa_r+0xa28>
 e001cd8:	0a000008 	beq	e001d00 <_dtoa_r+0xa44>
 e001cdc:	e1a00003 	mov	r0, r3
 e001ce0:	e280001c 	add	r0, r0, #28
 e001ce4:	e59d3010 	ldr	r3, [sp, #16]
 e001ce8:	e0877000 	add	r7, r7, r0
 e001cec:	e0833000 	add	r3, r3, r0
 e001cf0:	e58d3010 	str	r3, [sp, #16]
 e001cf4:	e59d3014 	ldr	r3, [sp, #20]
 e001cf8:	e0833000 	add	r3, r3, r0
 e001cfc:	e58d3014 	str	r3, [sp, #20]
 e001d00:	e59d3010 	ldr	r3, [sp, #16]
 e001d04:	e3530000 	cmp	r3, #0
 e001d08:	da000004 	ble	e001d20 <_dtoa_r+0xa64>
 e001d0c:	e1a0100b 	mov	r1, fp
 e001d10:	e1a02003 	mov	r2, r3
 e001d14:	e1a00005 	mov	r0, r5
 e001d18:	eb0003d2 	bl	e002c68 <__lshift>
 e001d1c:	e1a0b000 	mov	fp, r0
 e001d20:	e59d3014 	ldr	r3, [sp, #20]
 e001d24:	e3530000 	cmp	r3, #0
 e001d28:	da000004 	ble	e001d40 <_dtoa_r+0xa84>
 e001d2c:	e1a01004 	mov	r1, r4
 e001d30:	e1a02003 	mov	r2, r3
 e001d34:	e1a00005 	mov	r0, r5
 e001d38:	eb0003ca 	bl	e002c68 <__lshift>
 e001d3c:	e1a04000 	mov	r4, r0
 e001d40:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
 e001d44:	e3530000 	cmp	r3, #0
 e001d48:	0a000015 	beq	e001da4 <_dtoa_r+0xae8>
 e001d4c:	e1a01004 	mov	r1, r4
 e001d50:	e1a0000b 	mov	r0, fp
 e001d54:	eb00040e 	bl	e002d94 <__mcmp>
 e001d58:	e3500000 	cmp	r0, #0
 e001d5c:	aa000010 	bge	e001da4 <_dtoa_r+0xae8>
 e001d60:	e3a03000 	mov	r3, #0
 e001d64:	e1a0100b 	mov	r1, fp
 e001d68:	e3a0200a 	mov	r2, #10
 e001d6c:	e1a00005 	mov	r0, r5
 e001d70:	eb000241 	bl	e00267c <__multadd>
 e001d74:	e59d3018 	ldr	r3, [sp, #24]
 e001d78:	e24aa001 	sub	sl, sl, #1
 e001d7c:	e1a0b000 	mov	fp, r0
 e001d80:	e3530000 	cmp	r3, #0
 e001d84:	0a000005 	beq	e001da0 <_dtoa_r+0xae4>
 e001d88:	e1a01006 	mov	r1, r6
 e001d8c:	e3a03000 	mov	r3, #0
 e001d90:	e3a0200a 	mov	r2, #10
 e001d94:	e1a00005 	mov	r0, r5
 e001d98:	eb000237 	bl	e00267c <__multadd>
 e001d9c:	e1a06000 	mov	r6, r0
 e001da0:	e59d8020 	ldr	r8, [sp, #32]
 e001da4:	e59d201c 	ldr	r2, [sp, #28]
 e001da8:	e3580000 	cmp	r8, #0
 e001dac:	d3a03001 	movle	r3, #1
 e001db0:	c3a03000 	movgt	r3, #0
 e001db4:	e3520002 	cmp	r2, #2
 e001db8:	d3a03000 	movle	r3, #0
 e001dbc:	e3530000 	cmp	r3, #0
 e001dc0:	0a00003c 	beq	e001eb8 <_dtoa_r+0xbfc>
 e001dc4:	e3580000 	cmp	r8, #0
 e001dc8:	1a00000a 	bne	e001df8 <_dtoa_r+0xb3c>
 e001dcc:	e1a01004 	mov	r1, r4
 e001dd0:	e1a03008 	mov	r3, r8
 e001dd4:	e3a02005 	mov	r2, #5
 e001dd8:	e1a00005 	mov	r0, r5
 e001ddc:	eb000226 	bl	e00267c <__multadd>
 e001de0:	e1a01000 	mov	r1, r0
 e001de4:	e1a04000 	mov	r4, r0
 e001de8:	e1a0000b 	mov	r0, fp
 e001dec:	eb0003e8 	bl	e002d94 <__mcmp>
 e001df0:	e3500000 	cmp	r0, #0
 e001df4:	cafffea1 	bgt	e001880 <_dtoa_r+0x5c4>
 e001df8:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e001dfc:	e59d7004 	ldr	r7, [sp, #4]
 e001e00:	e1e0a003 	mvn	sl, r3
 e001e04:	e3a08000 	mov	r8, #0
 e001e08:	e1a01004 	mov	r1, r4
 e001e0c:	e1a00005 	mov	r0, r5
 e001e10:	eb0001fa 	bl	e002600 <_Bfree>
 e001e14:	e3560000 	cmp	r6, #0
 e001e18:	0affff29 	beq	e001ac4 <_dtoa_r+0x808>
 e001e1c:	e3580000 	cmp	r8, #0
 e001e20:	11580006 	cmpne	r8, r6
 e001e24:	0a000002 	beq	e001e34 <_dtoa_r+0xb78>
 e001e28:	e1a01008 	mov	r1, r8
 e001e2c:	e1a00005 	mov	r0, r5
 e001e30:	eb0001f2 	bl	e002600 <_Bfree>
 e001e34:	e1a01006 	mov	r1, r6
 e001e38:	e1a00005 	mov	r0, r5
 e001e3c:	eb0001ef 	bl	e002600 <_Bfree>
 e001e40:	eaffff1f 	b	e001ac4 <_dtoa_r+0x808>
 e001e44:	e2483001 	sub	r3, r8, #1
 e001e48:	e1590003 	cmp	r9, r3
 e001e4c:	b0439009 	sublt	r9, r3, r9
 e001e50:	a0494003 	subge	r4, r9, r3
 e001e54:	b59d2028 	ldrlt	r2, [sp, #40]	; 0x28
 e001e58:	b0822009 	addlt	r2, r2, r9
 e001e5c:	b1a09003 	movlt	r9, r3
 e001e60:	b58d2028 	strlt	r2, [sp, #40]	; 0x28
 e001e64:	e3580000 	cmp	r8, #0
 e001e68:	a1a03008 	movge	r3, r8
 e001e6c:	b59d3010 	ldrlt	r3, [sp, #16]
 e001e70:	a59d7010 	ldrge	r7, [sp, #16]
 e001e74:	b0437008 	sublt	r7, r3, r8
 e001e78:	b3a03000 	movlt	r3, #0
 e001e7c:	eaffff2c 	b	e001b34 <_dtoa_r+0x878>
 e001e80:	e1a02009 	mov	r2, r9
 e001e84:	eaffff59 	b	e001bf0 <_dtoa_r+0x934>
 e001e88:	e59d301c 	ldr	r3, [sp, #28]
 e001e8c:	e3530001 	cmp	r3, #1
 e001e90:	daffff6a 	ble	e001c40 <_dtoa_r+0x984>
 e001e94:	e3a09000 	mov	r9, #0
 e001e98:	eaffff7d 	b	e001c94 <_dtoa_r+0x9d8>
 e001e9c:	e3a04000 	mov	r4, #0
 e001ea0:	e1a06004 	mov	r6, r4
 e001ea4:	eaffffd3 	b	e001df8 <_dtoa_r+0xb3c>
 e001ea8:	e1a0a001 	mov	sl, r1
 e001eac:	e1a04000 	mov	r4, r0
 e001eb0:	e1a06000 	mov	r6, r0
 e001eb4:	eafffe71 	b	e001880 <_dtoa_r+0x5c4>
 e001eb8:	e59d3018 	ldr	r3, [sp, #24]
 e001ebc:	e3530000 	cmp	r3, #0
 e001ec0:	0a0000a3 	beq	e002154 <_dtoa_r+0xe98>
 e001ec4:	e3570000 	cmp	r7, #0
 e001ec8:	da000004 	ble	e001ee0 <_dtoa_r+0xc24>
 e001ecc:	e1a01006 	mov	r1, r6
 e001ed0:	e1a02007 	mov	r2, r7
 e001ed4:	e1a00005 	mov	r0, r5
 e001ed8:	eb000362 	bl	e002c68 <__lshift>
 e001edc:	e1a06000 	mov	r6, r0
 e001ee0:	e3590000 	cmp	r9, #0
 e001ee4:	01a00006 	moveq	r0, r6
 e001ee8:	0a000012 	beq	e001f38 <_dtoa_r+0xc7c>
 e001eec:	e5961004 	ldr	r1, [r6, #4]
 e001ef0:	e1a00005 	mov	r0, r5
 e001ef4:	eb000188 	bl	e00251c <_Balloc>
 e001ef8:	e2507000 	subs	r7, r0, #0
 e001efc:	1a000003 	bne	e001f10 <_dtoa_r+0xc54>
 e001f00:	e51f3818 	ldr	r3, [pc, #-2072]	; e0016f0 <_dtoa_r+0x434>
 e001f04:	e1a02007 	mov	r2, r7
 e001f08:	e30012ea 	movw	r1, #746	; 0x2ea
 e001f0c:	eafffdd3 	b	e001660 <_dtoa_r+0x3a4>
 e001f10:	e5962010 	ldr	r2, [r6, #16]
 e001f14:	e286100c 	add	r1, r6, #12
 e001f18:	e287000c 	add	r0, r7, #12
 e001f1c:	e2822002 	add	r2, r2, #2
 e001f20:	e1a02102 	lsl	r2, r2, #2
 e001f24:	eb002c10 	bl	e00cf6c <__wrap_memcpy>
 e001f28:	e3a02001 	mov	r2, #1
 e001f2c:	e1a01007 	mov	r1, r7
 e001f30:	e1a00005 	mov	r0, r5
 e001f34:	eb00034b 	bl	e002c68 <__lshift>
 e001f38:	e59d3004 	ldr	r3, [sp, #4]
 e001f3c:	e2833001 	add	r3, r3, #1
 e001f40:	e58d3010 	str	r3, [sp, #16]
 e001f44:	e59d3004 	ldr	r3, [sp, #4]
 e001f48:	e0833008 	add	r3, r3, r8
 e001f4c:	e58d3028 	str	r3, [sp, #40]	; 0x28
 e001f50:	e59d3008 	ldr	r3, [sp, #8]
 e001f54:	e1a08006 	mov	r8, r6
 e001f58:	e1a06000 	mov	r6, r0
 e001f5c:	e2033001 	and	r3, r3, #1
 e001f60:	e58d3024 	str	r3, [sp, #36]	; 0x24
 e001f64:	e59d3010 	ldr	r3, [sp, #16]
 e001f68:	e1a01004 	mov	r1, r4
 e001f6c:	e1a0000b 	mov	r0, fp
 e001f70:	e2433001 	sub	r3, r3, #1
 e001f74:	e58d3008 	str	r3, [sp, #8]
 e001f78:	ebfffc64 	bl	e001110 <quorem>
 e001f7c:	e1a01008 	mov	r1, r8
 e001f80:	e58d0014 	str	r0, [sp, #20]
 e001f84:	e2809030 	add	r9, r0, #48	; 0x30
 e001f88:	e1a0000b 	mov	r0, fp
 e001f8c:	eb000380 	bl	e002d94 <__mcmp>
 e001f90:	e1a02006 	mov	r2, r6
 e001f94:	e58d0020 	str	r0, [sp, #32]
 e001f98:	e1a01004 	mov	r1, r4
 e001f9c:	e1a00005 	mov	r0, r5
 e001fa0:	eb000391 	bl	e002dec <__mdiff>
 e001fa4:	e590200c 	ldr	r2, [r0, #12]
 e001fa8:	e1a07000 	mov	r7, r0
 e001fac:	e3520000 	cmp	r2, #0
 e001fb0:	159d2018 	ldrne	r2, [sp, #24]
 e001fb4:	1a000003 	bne	e001fc8 <_dtoa_r+0xd0c>
 e001fb8:	e1a01000 	mov	r1, r0
 e001fbc:	e1a0000b 	mov	r0, fp
 e001fc0:	eb000373 	bl	e002d94 <__mcmp>
 e001fc4:	e1a02000 	mov	r2, r0
 e001fc8:	e1a01007 	mov	r1, r7
 e001fcc:	e1a00005 	mov	r0, r5
 e001fd0:	e58d202c 	str	r2, [sp, #44]	; 0x2c
 e001fd4:	eb000189 	bl	e002600 <_Bfree>
 e001fd8:	e59d301c 	ldr	r3, [sp, #28]
 e001fdc:	e59d202c 	ldr	r2, [sp, #44]	; 0x2c
 e001fe0:	e59d7010 	ldr	r7, [sp, #16]
 e001fe4:	e1831002 	orr	r1, r3, r2
 e001fe8:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e001fec:	e1913003 	orrs	r3, r1, r3
 e001ff0:	1a000009 	bne	e00201c <_dtoa_r+0xd60>
 e001ff4:	e3590039 	cmp	r9, #57	; 0x39
 e001ff8:	0a000020 	beq	e002080 <_dtoa_r+0xdc4>
 e001ffc:	e59d3020 	ldr	r3, [sp, #32]
 e002000:	e3530000 	cmp	r3, #0
 e002004:	da000001 	ble	e002010 <_dtoa_r+0xd54>
 e002008:	e59d3014 	ldr	r3, [sp, #20]
 e00200c:	e2839031 	add	r9, r3, #49	; 0x31
 e002010:	e59d3008 	ldr	r3, [sp, #8]
 e002014:	e5c39000 	strb	r9, [r3]
 e002018:	eaffff7a 	b	e001e08 <_dtoa_r+0xb4c>
 e00201c:	e59d3020 	ldr	r3, [sp, #32]
 e002020:	e3530000 	cmp	r3, #0
 e002024:	ba000005 	blt	e002040 <_dtoa_r+0xd84>
 e002028:	e59d1020 	ldr	r1, [sp, #32]
 e00202c:	e59d301c 	ldr	r3, [sp, #28]
 e002030:	e1833001 	orr	r3, r3, r1
 e002034:	e59d1024 	ldr	r1, [sp, #36]	; 0x24
 e002038:	e1933001 	orrs	r3, r3, r1
 e00203c:	1a00001b 	bne	e0020b0 <_dtoa_r+0xdf4>
 e002040:	e3520000 	cmp	r2, #0
 e002044:	dafffff1 	ble	e002010 <_dtoa_r+0xd54>
 e002048:	e1a0100b 	mov	r1, fp
 e00204c:	e3a02001 	mov	r2, #1
 e002050:	e1a00005 	mov	r0, r5
 e002054:	eb000303 	bl	e002c68 <__lshift>
 e002058:	e1a01004 	mov	r1, r4
 e00205c:	e1a0b000 	mov	fp, r0
 e002060:	eb00034b 	bl	e002d94 <__mcmp>
 e002064:	e3500000 	cmp	r0, #0
 e002068:	ca000002 	bgt	e002078 <_dtoa_r+0xdbc>
 e00206c:	1affffe7 	bne	e002010 <_dtoa_r+0xd54>
 e002070:	e3190001 	tst	r9, #1
 e002074:	0affffe5 	beq	e002010 <_dtoa_r+0xd54>
 e002078:	e3590039 	cmp	r9, #57	; 0x39
 e00207c:	1affffe1 	bne	e002008 <_dtoa_r+0xd4c>
 e002080:	e59d2008 	ldr	r2, [sp, #8]
 e002084:	e3a03039 	mov	r3, #57	; 0x39
 e002088:	e5c23000 	strb	r3, [r2]
 e00208c:	e1a03007 	mov	r3, r7
 e002090:	e1a07003 	mov	r7, r3
 e002094:	e2433001 	sub	r3, r3, #1
 e002098:	e5572001 	ldrb	r2, [r7, #-1]
 e00209c:	e3520039 	cmp	r2, #57	; 0x39
 e0020a0:	0a000054 	beq	e0021f8 <_dtoa_r+0xf3c>
 e0020a4:	e2822001 	add	r2, r2, #1
 e0020a8:	e5c32000 	strb	r2, [r3]
 e0020ac:	eaffff55 	b	e001e08 <_dtoa_r+0xb4c>
 e0020b0:	e3520000 	cmp	r2, #0
 e0020b4:	da000005 	ble	e0020d0 <_dtoa_r+0xe14>
 e0020b8:	e3590039 	cmp	r9, #57	; 0x39
 e0020bc:	12893001 	addne	r3, r9, #1
 e0020c0:	159d2008 	ldrne	r2, [sp, #8]
 e0020c4:	0affffed 	beq	e002080 <_dtoa_r+0xdc4>
 e0020c8:	e5c23000 	strb	r3, [r2]
 e0020cc:	eaffff4d 	b	e001e08 <_dtoa_r+0xb4c>
 e0020d0:	e59d3010 	ldr	r3, [sp, #16]
 e0020d4:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
 e0020d8:	e5439001 	strb	r9, [r3, #-1]
 e0020dc:	e1530002 	cmp	r3, r2
 e0020e0:	0a000032 	beq	e0021b0 <_dtoa_r+0xef4>
 e0020e4:	e1a0100b 	mov	r1, fp
 e0020e8:	e3a03000 	mov	r3, #0
 e0020ec:	e3a0200a 	mov	r2, #10
 e0020f0:	e1a00005 	mov	r0, r5
 e0020f4:	eb000160 	bl	e00267c <__multadd>
 e0020f8:	e3a03000 	mov	r3, #0
 e0020fc:	e1a0b000 	mov	fp, r0
 e002100:	e3a0200a 	mov	r2, #10
 e002104:	e1a01008 	mov	r1, r8
 e002108:	e1a00005 	mov	r0, r5
 e00210c:	e1580006 	cmp	r8, r6
 e002110:	1a000006 	bne	e002130 <_dtoa_r+0xe74>
 e002114:	eb000158 	bl	e00267c <__multadd>
 e002118:	e1a08000 	mov	r8, r0
 e00211c:	e1a06000 	mov	r6, r0
 e002120:	e59d3010 	ldr	r3, [sp, #16]
 e002124:	e2833001 	add	r3, r3, #1
 e002128:	e58d3010 	str	r3, [sp, #16]
 e00212c:	eaffff8c 	b	e001f64 <_dtoa_r+0xca8>
 e002130:	eb000151 	bl	e00267c <__multadd>
 e002134:	e1a01006 	mov	r1, r6
 e002138:	e1a08000 	mov	r8, r0
 e00213c:	e3a03000 	mov	r3, #0
 e002140:	e3a0200a 	mov	r2, #10
 e002144:	e1a00005 	mov	r0, r5
 e002148:	eb00014b 	bl	e00267c <__multadd>
 e00214c:	e1a06000 	mov	r6, r0
 e002150:	eafffff2 	b	e002120 <_dtoa_r+0xe64>
 e002154:	e59d7004 	ldr	r7, [sp, #4]
 e002158:	e1a01004 	mov	r1, r4
 e00215c:	e1a0000b 	mov	r0, fp
 e002160:	ebfffbea 	bl	e001110 <quorem>
 e002164:	e59d3004 	ldr	r3, [sp, #4]
 e002168:	e2809030 	add	r9, r0, #48	; 0x30
 e00216c:	e4c79001 	strb	r9, [r7], #1
 e002170:	e0472003 	sub	r2, r7, r3
 e002174:	e1580002 	cmp	r8, r2
 e002178:	da000006 	ble	e002198 <_dtoa_r+0xedc>
 e00217c:	e1a0100b 	mov	r1, fp
 e002180:	e3a03000 	mov	r3, #0
 e002184:	e3a0200a 	mov	r2, #10
 e002188:	e1a00005 	mov	r0, r5
 e00218c:	eb00013a 	bl	e00267c <__multadd>
 e002190:	e1a0b000 	mov	fp, r0
 e002194:	eaffffef 	b	e002158 <_dtoa_r+0xe9c>
 e002198:	e3580000 	cmp	r8, #0
 e00219c:	e59d3004 	ldr	r3, [sp, #4]
 e0021a0:	c1a07008 	movgt	r7, r8
 e0021a4:	d3a07001 	movle	r7, #1
 e0021a8:	e0837007 	add	r7, r3, r7
 e0021ac:	e3a08000 	mov	r8, #0
 e0021b0:	e1a0100b 	mov	r1, fp
 e0021b4:	e3a02001 	mov	r2, #1
 e0021b8:	e1a00005 	mov	r0, r5
 e0021bc:	eb0002a9 	bl	e002c68 <__lshift>
 e0021c0:	e1a01004 	mov	r1, r4
 e0021c4:	e1a0b000 	mov	fp, r0
 e0021c8:	eb0002f1 	bl	e002d94 <__mcmp>
 e0021cc:	e3500000 	cmp	r0, #0
 e0021d0:	caffffad 	bgt	e00208c <_dtoa_r+0xdd0>
 e0021d4:	1a000001 	bne	e0021e0 <_dtoa_r+0xf24>
 e0021d8:	e3190001 	tst	r9, #1
 e0021dc:	1affffaa 	bne	e00208c <_dtoa_r+0xdd0>
 e0021e0:	e1a03007 	mov	r3, r7
 e0021e4:	e5772001 	ldrb	r2, [r7, #-1]!
 e0021e8:	e3520030 	cmp	r2, #48	; 0x30
 e0021ec:	0afffffb 	beq	e0021e0 <_dtoa_r+0xf24>
 e0021f0:	e1a07003 	mov	r7, r3
 e0021f4:	eaffff03 	b	e001e08 <_dtoa_r+0xb4c>
 e0021f8:	e59d2004 	ldr	r2, [sp, #4]
 e0021fc:	e1520003 	cmp	r2, r3
 e002200:	1affffa2 	bne	e002090 <_dtoa_r+0xdd4>
 e002204:	e28aa001 	add	sl, sl, #1
 e002208:	e3a03031 	mov	r3, #49	; 0x31
 e00220c:	eaffffad 	b	e0020c8 <_dtoa_r+0xe0c>
 e002210:	e59d3074 	ldr	r3, [sp, #116]	; 0x74
 e002214:	e3530000 	cmp	r3, #0
 e002218:	e51f3b2c 	ldr	r3, [pc, #-2860]	; e0016f4 <_dtoa_r+0x438>
 e00221c:	e58d3004 	str	r3, [sp, #4]
 e002220:	12833008 	addne	r3, r3, #8
 e002224:	1afffc62 	bne	e0013b4 <_dtoa_r+0xf8>
 e002228:	eafffc63 	b	e0013bc <_dtoa_r+0x100>

0e00222c <_fclose_r>:
 e00222c:	e92d4070 	push	{r4, r5, r6, lr}
 e002230:	e2514000 	subs	r4, r1, #0
 e002234:	1a000002 	bne	e002244 <_fclose_r+0x18>
 e002238:	e3a06000 	mov	r6, #0
 e00223c:	e1a00006 	mov	r0, r6
 e002240:	e8bd8070 	pop	{r4, r5, r6, pc}
 e002244:	e1a05000 	mov	r5, r0
 e002248:	e3500000 	cmp	r0, #0
 e00224c:	0a000003 	beq	e002260 <_fclose_r+0x34>
 e002250:	e5903018 	ldr	r3, [r0, #24]
 e002254:	e3530000 	cmp	r3, #0
 e002258:	1a000000 	bne	e002260 <_fclose_r+0x34>
 e00225c:	ebfff9cf 	bl	e0009a0 <__sinit>
 e002260:	e5943064 	ldr	r3, [r4, #100]	; 0x64
 e002264:	e3130001 	tst	r3, #1
 e002268:	1a000004 	bne	e002280 <_fclose_r+0x54>
 e00226c:	e1d430bc 	ldrh	r3, [r4, #12]
 e002270:	e3130c02 	tst	r3, #512	; 0x200
 e002274:	1a000001 	bne	e002280 <_fclose_r+0x54>
 e002278:	e5940058 	ldr	r0, [r4, #88]	; 0x58
 e00227c:	ebfffa95 	bl	e000cd8 <__retarget_lock_acquire_recursive>
 e002280:	e1d430fc 	ldrsh	r3, [r4, #12]
 e002284:	e3530000 	cmp	r3, #0
 e002288:	1a000005 	bne	e0022a4 <_fclose_r+0x78>
 e00228c:	e5940064 	ldr	r0, [r4, #100]	; 0x64
 e002290:	e2106001 	ands	r6, r0, #1
 e002294:	1affffe7 	bne	e002238 <_fclose_r+0xc>
 e002298:	e5940058 	ldr	r0, [r4, #88]	; 0x58
 e00229c:	ebfffa93 	bl	e000cf0 <__retarget_lock_release_recursive>
 e0022a0:	eaffffe5 	b	e00223c <_fclose_r+0x10>
 e0022a4:	e1a01004 	mov	r1, r4
 e0022a8:	e1a00005 	mov	r0, r5
 e0022ac:	ebfff896 	bl	e00050c <__sflush_r>
 e0022b0:	e5943030 	ldr	r3, [r4, #48]	; 0x30
 e0022b4:	e1a06000 	mov	r6, r0
 e0022b8:	e3530000 	cmp	r3, #0
 e0022bc:	0a000004 	beq	e0022d4 <_fclose_r+0xa8>
 e0022c0:	e5941020 	ldr	r1, [r4, #32]
 e0022c4:	e1a00005 	mov	r0, r5
 e0022c8:	e12fff33 	blx	r3
 e0022cc:	e3500000 	cmp	r0, #0
 e0022d0:	b3e06000 	mvnlt	r6, #0
 e0022d4:	e1d430bc 	ldrh	r3, [r4, #12]
 e0022d8:	e3130080 	tst	r3, #128	; 0x80
 e0022dc:	0a000002 	beq	e0022ec <_fclose_r+0xc0>
 e0022e0:	e5941010 	ldr	r1, [r4, #16]
 e0022e4:	e1a00005 	mov	r0, r5
 e0022e8:	eb002cf3 	bl	e00d6bc <__wrap__free_r>
 e0022ec:	e5941034 	ldr	r1, [r4, #52]	; 0x34
 e0022f0:	e3510000 	cmp	r1, #0
 e0022f4:	0a000006 	beq	e002314 <_fclose_r+0xe8>
 e0022f8:	e2843044 	add	r3, r4, #68	; 0x44
 e0022fc:	e1510003 	cmp	r1, r3
 e002300:	0a000001 	beq	e00230c <_fclose_r+0xe0>
 e002304:	e1a00005 	mov	r0, r5
 e002308:	eb002ceb 	bl	e00d6bc <__wrap__free_r>
 e00230c:	e3a03000 	mov	r3, #0
 e002310:	e5843034 	str	r3, [r4, #52]	; 0x34
 e002314:	e5941048 	ldr	r1, [r4, #72]	; 0x48
 e002318:	e3510000 	cmp	r1, #0
 e00231c:	0a000003 	beq	e002330 <_fclose_r+0x104>
 e002320:	e1a00005 	mov	r0, r5
 e002324:	eb002ce4 	bl	e00d6bc <__wrap__free_r>
 e002328:	e3a03000 	mov	r3, #0
 e00232c:	e5843048 	str	r3, [r4, #72]	; 0x48
 e002330:	ebfff98e 	bl	e000970 <__sfp_lock_acquire>
 e002334:	e3a03000 	mov	r3, #0
 e002338:	e1c430bc 	strh	r3, [r4, #12]
 e00233c:	e5943064 	ldr	r3, [r4, #100]	; 0x64
 e002340:	e3130001 	tst	r3, #1
 e002344:	1a000001 	bne	e002350 <_fclose_r+0x124>
 e002348:	e5940058 	ldr	r0, [r4, #88]	; 0x58
 e00234c:	ebfffa67 	bl	e000cf0 <__retarget_lock_release_recursive>
 e002350:	e5940058 	ldr	r0, [r4, #88]	; 0x58
 e002354:	ebfffa5d 	bl	e000cd0 <__retarget_lock_close_recursive>
 e002358:	ebfff987 	bl	e00097c <__sfp_lock_release>
 e00235c:	eaffffb6 	b	e00223c <_fclose_r+0x10>

0e002360 <fclose>:
 e002360:	e59f3008 	ldr	r3, [pc, #8]	; e002370 <fclose+0x10>
 e002364:	e1a01000 	mov	r1, r0
 e002368:	e5930000 	ldr	r0, [r3]
 e00236c:	eaffffae 	b	e00222c <_fclose_r>
 e002370:	60095000 	.word	0x60095000

0e002374 <_fiprintf_r>:
 e002374:	e92d000c 	push	{r2, r3}
 e002378:	e92d4007 	push	{r0, r1, r2, lr}
 e00237c:	e59d2010 	ldr	r2, [sp, #16]
 e002380:	e28d3014 	add	r3, sp, #20
 e002384:	e58d3004 	str	r3, [sp, #4]
 e002388:	eb000442 	bl	e003498 <_vfiprintf_r>
 e00238c:	e28dd00c 	add	sp, sp, #12
 e002390:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 e002394:	e28dd008 	add	sp, sp, #8
 e002398:	e12fff1e 	bx	lr

0e00239c <fiprintf>:
 e00239c:	e92d000e 	push	{r1, r2, r3}
 e0023a0:	e92d4003 	push	{r0, r1, lr}
 e0023a4:	e1a01000 	mov	r1, r0
 e0023a8:	e59f0020 	ldr	r0, [pc, #32]	; e0023d0 <fiprintf+0x34>
 e0023ac:	e28d3010 	add	r3, sp, #16
 e0023b0:	e59d200c 	ldr	r2, [sp, #12]
 e0023b4:	e58d3004 	str	r3, [sp, #4]
 e0023b8:	e5900000 	ldr	r0, [r0]
 e0023bc:	eb000435 	bl	e003498 <_vfiprintf_r>
 e0023c0:	e28dd008 	add	sp, sp, #8
 e0023c4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 e0023c8:	e28dd00c 	add	sp, sp, #12
 e0023cc:	e12fff1e 	bx	lr
 e0023d0:	60095000 	.word	0x60095000

0e0023d4 <__localeconv_l>:
 e0023d4:	e28000f0 	add	r0, r0, #240	; 0xf0
 e0023d8:	e12fff1e 	bx	lr

0e0023dc <_localeconv_r>:
 e0023dc:	e59f0000 	ldr	r0, [pc]	; e0023e4 <_localeconv_r+0x8>
 e0023e0:	e12fff1e 	bx	lr
 e0023e4:	600951e4 	.word	0x600951e4

0e0023e8 <localeconv>:
 e0023e8:	e59f0000 	ldr	r0, [pc]	; e0023f0 <localeconv+0x8>
 e0023ec:	e12fff1e 	bx	lr
 e0023f0:	600951e4 	.word	0x600951e4

0e0023f4 <_setlocale_r>:
 e0023f4:	e92d4010 	push	{r4, lr}
 e0023f8:	e2524000 	subs	r4, r2, #0
 e0023fc:	1a000001 	bne	e002408 <_setlocale_r+0x14>
 e002400:	e59f0044 	ldr	r0, [pc, #68]	; e00244c <_setlocale_r+0x58>
 e002404:	e8bd8010 	pop	{r4, pc}
 e002408:	e59f1040 	ldr	r1, [pc, #64]	; e002450 <_setlocale_r+0x5c>
 e00240c:	e1a00004 	mov	r0, r4
 e002410:	eb002ae1 	bl	e00cf9c <__wrap_strcmp>
 e002414:	e3500000 	cmp	r0, #0
 e002418:	0afffff8 	beq	e002400 <_setlocale_r+0xc>
 e00241c:	e59f1028 	ldr	r1, [pc, #40]	; e00244c <_setlocale_r+0x58>
 e002420:	e1a00004 	mov	r0, r4
 e002424:	eb002adc 	bl	e00cf9c <__wrap_strcmp>
 e002428:	e3500000 	cmp	r0, #0
 e00242c:	0afffff3 	beq	e002400 <_setlocale_r+0xc>
 e002430:	e59f101c 	ldr	r1, [pc, #28]	; e002454 <_setlocale_r+0x60>
 e002434:	e1a00004 	mov	r0, r4
 e002438:	eb002ad7 	bl	e00cf9c <__wrap_strcmp>
 e00243c:	e3500000 	cmp	r0, #0
 e002440:	0affffee 	beq	e002400 <_setlocale_r+0xc>
 e002444:	e3a00000 	mov	r0, #0
 e002448:	e8bd8010 	pop	{r4, pc}
 e00244c:	0e015e7b 	.word	0x0e015e7b
 e002450:	0e015e7d 	.word	0x0e015e7d
 e002454:	0e015dcf 	.word	0x0e015dcf

0e002458 <__locale_mb_cur_max>:
 e002458:	e59f3004 	ldr	r3, [pc, #4]	; e002464 <__locale_mb_cur_max+0xc>
 e00245c:	e5d30128 	ldrb	r0, [r3, #296]	; 0x128
 e002460:	e12fff1e 	bx	lr
 e002464:	600950f4 	.word	0x600950f4

0e002468 <setlocale>:
 e002468:	e59f300c 	ldr	r3, [pc, #12]	; e00247c <setlocale+0x14>
 e00246c:	e1a02001 	mov	r2, r1
 e002470:	e1a01000 	mov	r1, r0
 e002474:	e5930000 	ldr	r0, [r3]
 e002478:	eaffffdd 	b	e0023f4 <_setlocale_r>
 e00247c:	60095000 	.word	0x60095000

0e002480 <_lseek_r>:
 e002480:	e92d4070 	push	{r4, r5, r6, lr}
 e002484:	e1a04000 	mov	r4, r0
 e002488:	e59f502c 	ldr	r5, [pc, #44]	; e0024bc <_lseek_r+0x3c>
 e00248c:	e1a00001 	mov	r0, r1
 e002490:	e1a01002 	mov	r1, r2
 e002494:	e3a02000 	mov	r2, #0
 e002498:	e5852000 	str	r2, [r5]
 e00249c:	e1a02003 	mov	r2, r3
 e0024a0:	eb001eb3 	bl	e009f74 <_lseek>
 e0024a4:	e3700001 	cmn	r0, #1
 e0024a8:	18bd8070 	popne	{r4, r5, r6, pc}
 e0024ac:	e5953000 	ldr	r3, [r5]
 e0024b0:	e3530000 	cmp	r3, #0
 e0024b4:	15843000 	strne	r3, [r4]
 e0024b8:	e8bd8070 	pop	{r4, r5, r6, pc}
 e0024bc:	600a3160 	.word	0x600a3160

0e0024c0 <_mbtowc_r>:
 e0024c0:	e59fc010 	ldr	ip, [pc, #16]	; e0024d8 <_mbtowc_r+0x18>
 e0024c4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e0024c8:	e59ce0e4 	ldr	lr, [ip, #228]	; 0xe4
 e0024cc:	e1a0c00e 	mov	ip, lr
 e0024d0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 e0024d4:	e12fff1c 	bx	ip
 e0024d8:	600950f4 	.word	0x600950f4

0e0024dc <__ascii_mbtowc>:
 e0024dc:	e3510000 	cmp	r1, #0
 e0024e0:	e24dd008 	sub	sp, sp, #8
 e0024e4:	028d1004 	addeq	r1, sp, #4
 e0024e8:	e3520000 	cmp	r2, #0
 e0024ec:	01a00002 	moveq	r0, r2
 e0024f0:	0a000007 	beq	e002514 <__ascii_mbtowc+0x38>
 e0024f4:	e3530000 	cmp	r3, #0
 e0024f8:	03e00001 	mvneq	r0, #1
 e0024fc:	0a000004 	beq	e002514 <__ascii_mbtowc+0x38>
 e002500:	e5d23000 	ldrb	r3, [r2]
 e002504:	e5813000 	str	r3, [r1]
 e002508:	e5d22000 	ldrb	r2, [r2]
 e00250c:	e2520000 	subs	r0, r2, #0
 e002510:	13a00001 	movne	r0, #1
 e002514:	e28dd008 	add	sp, sp, #8
 e002518:	e12fff1e 	bx	lr

0e00251c <_Balloc>:
 e00251c:	e92d4070 	push	{r4, r5, r6, lr}
 e002520:	e1a04000 	mov	r4, r0
 e002524:	e5906024 	ldr	r6, [r0, #36]	; 0x24
 e002528:	e1a05001 	mov	r5, r1
 e00252c:	e3560000 	cmp	r6, #0
 e002530:	1a00000d 	bne	e00256c <_Balloc+0x50>
 e002534:	e3a00010 	mov	r0, #16
 e002538:	eb002c59 	bl	e00d6a4 <__wrap_malloc>
 e00253c:	e1a02000 	mov	r2, r0
 e002540:	e3500000 	cmp	r0, #0
 e002544:	e5840024 	str	r0, [r4, #36]	; 0x24
 e002548:	1a000003 	bne	e00255c <_Balloc+0x40>
 e00254c:	e59f30a4 	ldr	r3, [pc, #164]	; e0025f8 <_Balloc+0xdc>
 e002550:	e3a01066 	mov	r1, #102	; 0x66
 e002554:	e59f00a0 	ldr	r0, [pc, #160]	; e0025fc <_Balloc+0xe0>
 e002558:	ebfffac6 	bl	e001078 <__assert_func>
 e00255c:	e5806004 	str	r6, [r0, #4]
 e002560:	e5806008 	str	r6, [r0, #8]
 e002564:	e5806000 	str	r6, [r0]
 e002568:	e580600c 	str	r6, [r0, #12]
 e00256c:	e5946024 	ldr	r6, [r4, #36]	; 0x24
 e002570:	e596300c 	ldr	r3, [r6, #12]
 e002574:	e3530000 	cmp	r3, #0
 e002578:	0a000013 	beq	e0025cc <_Balloc+0xb0>
 e00257c:	e5943024 	ldr	r3, [r4, #36]	; 0x24
 e002580:	e593300c 	ldr	r3, [r3, #12]
 e002584:	e7930105 	ldr	r0, [r3, r5, lsl #2]
 e002588:	e3500000 	cmp	r0, #0
 e00258c:	15902000 	ldrne	r2, [r0]
 e002590:	17832105 	strne	r2, [r3, r5, lsl #2]
 e002594:	1a000008 	bne	e0025bc <_Balloc+0xa0>
 e002598:	e3a01001 	mov	r1, #1
 e00259c:	e1a00004 	mov	r0, r4
 e0025a0:	e1a06511 	lsl	r6, r1, r5
 e0025a4:	e2862005 	add	r2, r6, #5
 e0025a8:	e1a02102 	lsl	r2, r2, #2
 e0025ac:	eb002c44 	bl	e00d6c4 <__wrap__calloc_r>
 e0025b0:	e3500000 	cmp	r0, #0
 e0025b4:	0a00000d 	beq	e0025f0 <_Balloc+0xd4>
 e0025b8:	e9800060 	stmib	r0, {r5, r6}
 e0025bc:	e3a03000 	mov	r3, #0
 e0025c0:	e5803010 	str	r3, [r0, #16]
 e0025c4:	e580300c 	str	r3, [r0, #12]
 e0025c8:	e8bd8070 	pop	{r4, r5, r6, pc}
 e0025cc:	e3a02021 	mov	r2, #33	; 0x21
 e0025d0:	e3a01004 	mov	r1, #4
 e0025d4:	e1a00004 	mov	r0, r4
 e0025d8:	eb002c39 	bl	e00d6c4 <__wrap__calloc_r>
 e0025dc:	e5943024 	ldr	r3, [r4, #36]	; 0x24
 e0025e0:	e586000c 	str	r0, [r6, #12]
 e0025e4:	e593300c 	ldr	r3, [r3, #12]
 e0025e8:	e3530000 	cmp	r3, #0
 e0025ec:	1affffe2 	bne	e00257c <_Balloc+0x60>
 e0025f0:	e3a00000 	mov	r0, #0
 e0025f4:	e8bd8070 	pop	{r4, r5, r6, pc}
 e0025f8:	0e015ddf 	.word	0x0e015ddf
 e0025fc:	0e015e85 	.word	0x0e015e85

0e002600 <_Bfree>:
 e002600:	e92d4070 	push	{r4, r5, r6, lr}
 e002604:	e1a05000 	mov	r5, r0
 e002608:	e5906024 	ldr	r6, [r0, #36]	; 0x24
 e00260c:	e1a04001 	mov	r4, r1
 e002610:	e3560000 	cmp	r6, #0
 e002614:	1a00000d 	bne	e002650 <_Bfree+0x50>
 e002618:	e3a00010 	mov	r0, #16
 e00261c:	eb002c20 	bl	e00d6a4 <__wrap_malloc>
 e002620:	e1a02000 	mov	r2, r0
 e002624:	e3500000 	cmp	r0, #0
 e002628:	e5850024 	str	r0, [r5, #36]	; 0x24
 e00262c:	1a000003 	bne	e002640 <_Bfree+0x40>
 e002630:	e59f303c 	ldr	r3, [pc, #60]	; e002674 <_Bfree+0x74>
 e002634:	e3a0108a 	mov	r1, #138	; 0x8a
 e002638:	e59f0038 	ldr	r0, [pc, #56]	; e002678 <_Bfree+0x78>
 e00263c:	ebfffa8d 	bl	e001078 <__assert_func>
 e002640:	e5806004 	str	r6, [r0, #4]
 e002644:	e5806008 	str	r6, [r0, #8]
 e002648:	e5806000 	str	r6, [r0]
 e00264c:	e580600c 	str	r6, [r0, #12]
 e002650:	e3540000 	cmp	r4, #0
 e002654:	08bd8070 	popeq	{r4, r5, r6, pc}
 e002658:	e5953024 	ldr	r3, [r5, #36]	; 0x24
 e00265c:	e5942004 	ldr	r2, [r4, #4]
 e002660:	e593300c 	ldr	r3, [r3, #12]
 e002664:	e7931102 	ldr	r1, [r3, r2, lsl #2]
 e002668:	e5841000 	str	r1, [r4]
 e00266c:	e7834102 	str	r4, [r3, r2, lsl #2]
 e002670:	e8bd8070 	pop	{r4, r5, r6, pc}
 e002674:	0e015ddf 	.word	0x0e015ddf
 e002678:	0e015e85 	.word	0x0e015e85

0e00267c <__multadd>:
 e00267c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e002680:	e281c014 	add	ip, r1, #20
 e002684:	e5915010 	ldr	r5, [r1, #16]
 e002688:	e1a07000 	mov	r7, r0
 e00268c:	e1a04001 	mov	r4, r1
 e002690:	e1a06003 	mov	r6, r3
 e002694:	e3a00000 	mov	r0, #0
 e002698:	e59c3000 	ldr	r3, [ip]
 e00269c:	e2800001 	add	r0, r0, #1
 e0026a0:	e1550000 	cmp	r5, r0
 e0026a4:	e6ff1073 	uxth	r1, r3
 e0026a8:	e1a0e823 	lsr	lr, r3, #16
 e0026ac:	e0216192 	mla	r1, r2, r1, r6
 e0026b0:	e1a03821 	lsr	r3, r1, #16
 e0026b4:	e6ff1071 	uxth	r1, r1
 e0026b8:	e0233e92 	mla	r3, r2, lr, r3
 e0026bc:	e0811803 	add	r1, r1, r3, lsl #16
 e0026c0:	e1a06823 	lsr	r6, r3, #16
 e0026c4:	e48c1004 	str	r1, [ip], #4
 e0026c8:	cafffff2 	bgt	e002698 <__multadd+0x1c>
 e0026cc:	e3560000 	cmp	r6, #0
 e0026d0:	0a00001b 	beq	e002744 <__multadd+0xc8>
 e0026d4:	e5943008 	ldr	r3, [r4, #8]
 e0026d8:	e1530005 	cmp	r3, r5
 e0026dc:	ca000014 	bgt	e002734 <__multadd+0xb8>
 e0026e0:	e5941004 	ldr	r1, [r4, #4]
 e0026e4:	e1a00007 	mov	r0, r7
 e0026e8:	e2811001 	add	r1, r1, #1
 e0026ec:	ebffff8a 	bl	e00251c <_Balloc>
 e0026f0:	e2508000 	subs	r8, r0, #0
 e0026f4:	1a000004 	bne	e00270c <__multadd+0x90>
 e0026f8:	e59f304c 	ldr	r3, [pc, #76]	; e00274c <__multadd+0xd0>
 e0026fc:	e1a02008 	mov	r2, r8
 e002700:	e59f0048 	ldr	r0, [pc, #72]	; e002750 <__multadd+0xd4>
 e002704:	e3a010b5 	mov	r1, #181	; 0xb5
 e002708:	ebfffa5a 	bl	e001078 <__assert_func>
 e00270c:	e5942010 	ldr	r2, [r4, #16]
 e002710:	e284100c 	add	r1, r4, #12
 e002714:	e288000c 	add	r0, r8, #12
 e002718:	e2822002 	add	r2, r2, #2
 e00271c:	e1a02102 	lsl	r2, r2, #2
 e002720:	eb002a11 	bl	e00cf6c <__wrap_memcpy>
 e002724:	e1a01004 	mov	r1, r4
 e002728:	e1a04008 	mov	r4, r8
 e00272c:	e1a00007 	mov	r0, r7
 e002730:	ebffffb2 	bl	e002600 <_Bfree>
 e002734:	e0843105 	add	r3, r4, r5, lsl #2
 e002738:	e2855001 	add	r5, r5, #1
 e00273c:	e5836014 	str	r6, [r3, #20]
 e002740:	e5845010 	str	r5, [r4, #16]
 e002744:	e1a00004 	mov	r0, r4
 e002748:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e00274c:	0e015e6a 	.word	0x0e015e6a
 e002750:	0e015e85 	.word	0x0e015e85

0e002754 <__s2b>:
 e002754:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e002758:	e1a05002 	mov	r5, r2
 e00275c:	e59f20d8 	ldr	r2, [pc, #216]	; e00283c <__s2b+0xe8>
 e002760:	e1a07003 	mov	r7, r3
 e002764:	e2833008 	add	r3, r3, #8
 e002768:	e1a04001 	mov	r4, r1
 e00276c:	e1a06000 	mov	r6, r0
 e002770:	e0c12293 	smull	r2, r1, r3, r2
 e002774:	e1a03fc3 	asr	r3, r3, #31
 e002778:	e3a02001 	mov	r2, #1
 e00277c:	e06330c1 	rsb	r3, r3, r1, asr #1
 e002780:	e3a01000 	mov	r1, #0
 e002784:	e1520003 	cmp	r2, r3
 e002788:	ba000008 	blt	e0027b0 <__s2b+0x5c>
 e00278c:	e1a00006 	mov	r0, r6
 e002790:	ebffff61 	bl	e00251c <_Balloc>
 e002794:	e3500000 	cmp	r0, #0
 e002798:	1a000007 	bne	e0027bc <__s2b+0x68>
 e00279c:	e1a02000 	mov	r2, r0
 e0027a0:	e59f3098 	ldr	r3, [pc, #152]	; e002840 <__s2b+0xec>
 e0027a4:	e59f0098 	ldr	r0, [pc, #152]	; e002844 <__s2b+0xf0>
 e0027a8:	e3a010ce 	mov	r1, #206	; 0xce
 e0027ac:	ebfffa31 	bl	e001078 <__assert_func>
 e0027b0:	e1a02082 	lsl	r2, r2, #1
 e0027b4:	e2811001 	add	r1, r1, #1
 e0027b8:	eafffff1 	b	e002784 <__s2b+0x30>
 e0027bc:	e59d3020 	ldr	r3, [sp, #32]
 e0027c0:	e3550009 	cmp	r5, #9
 e0027c4:	e5803014 	str	r3, [r0, #20]
 e0027c8:	d284400a 	addle	r4, r4, #10
 e0027cc:	e3a03001 	mov	r3, #1
 e0027d0:	d3a05009 	movle	r5, #9
 e0027d4:	e5803010 	str	r3, [r0, #16]
 e0027d8:	da00000c 	ble	e002810 <__s2b+0xbc>
 e0027dc:	e2849009 	add	r9, r4, #9
 e0027e0:	e0844005 	add	r4, r4, r5
 e0027e4:	e1a08009 	mov	r8, r9
 e0027e8:	e4d83001 	ldrb	r3, [r8], #1
 e0027ec:	e1a01000 	mov	r1, r0
 e0027f0:	e3a0200a 	mov	r2, #10
 e0027f4:	e1a00006 	mov	r0, r6
 e0027f8:	e2433030 	sub	r3, r3, #48	; 0x30
 e0027fc:	ebffff9e 	bl	e00267c <__multadd>
 e002800:	e1580004 	cmp	r8, r4
 e002804:	1afffff7 	bne	e0027e8 <__s2b+0x94>
 e002808:	e2454008 	sub	r4, r5, #8
 e00280c:	e0894004 	add	r4, r9, r4
 e002810:	e0455004 	sub	r5, r5, r4
 e002814:	e0843005 	add	r3, r4, r5
 e002818:	e1530007 	cmp	r3, r7
 e00281c:	a8bd87f0 	popge	{r4, r5, r6, r7, r8, r9, sl, pc}
 e002820:	e4d43001 	ldrb	r3, [r4], #1
 e002824:	e1a01000 	mov	r1, r0
 e002828:	e3a0200a 	mov	r2, #10
 e00282c:	e1a00006 	mov	r0, r6
 e002830:	e2433030 	sub	r3, r3, #48	; 0x30
 e002834:	ebffff90 	bl	e00267c <__multadd>
 e002838:	eafffff5 	b	e002814 <__s2b+0xc0>
 e00283c:	38e38e39 	.word	0x38e38e39
 e002840:	0e015e6a 	.word	0x0e015e6a
 e002844:	0e015e85 	.word	0x0e015e85

0e002848 <__hi0bits>:
 e002848:	e1a02820 	lsr	r2, r0, #16
 e00284c:	e1a03000 	mov	r3, r0
 e002850:	e1a02802 	lsl	r2, r2, #16
 e002854:	e3520000 	cmp	r2, #0
 e002858:	01a03800 	lsleq	r3, r0, #16
 e00285c:	13a00000 	movne	r0, #0
 e002860:	03a00010 	moveq	r0, #16
 e002864:	e31304ff 	tst	r3, #-16777216	; 0xff000000
 e002868:	01a03403 	lsleq	r3, r3, #8
 e00286c:	02800008 	addeq	r0, r0, #8
 e002870:	e313020f 	tst	r3, #-268435456	; 0xf0000000
 e002874:	01a03203 	lsleq	r3, r3, #4
 e002878:	02800004 	addeq	r0, r0, #4
 e00287c:	e3130103 	tst	r3, #-1073741824	; 0xc0000000
 e002880:	01a03103 	lsleq	r3, r3, #2
 e002884:	02800002 	addeq	r0, r0, #2
 e002888:	e3530000 	cmp	r3, #0
 e00288c:	b12fff1e 	bxlt	lr
 e002890:	e3130101 	tst	r3, #1073741824	; 0x40000000
 e002894:	12800001 	addne	r0, r0, #1
 e002898:	03a00020 	moveq	r0, #32
 e00289c:	e12fff1e 	bx	lr

0e0028a0 <__lo0bits>:
 e0028a0:	e5903000 	ldr	r3, [r0]
 e0028a4:	e1a02000 	mov	r2, r0
 e0028a8:	e2130007 	ands	r0, r3, #7
 e0028ac:	0a000009 	beq	e0028d8 <__lo0bits+0x38>
 e0028b0:	e3130001 	tst	r3, #1
 e0028b4:	1a00001c 	bne	e00292c <__lo0bits+0x8c>
 e0028b8:	e3130002 	tst	r3, #2
 e0028bc:	11a030a3 	lsrne	r3, r3, #1
 e0028c0:	13a00001 	movne	r0, #1
 e0028c4:	01a03123 	lsreq	r3, r3, #2
 e0028c8:	15823000 	strne	r3, [r2]
 e0028cc:	03a00002 	moveq	r0, #2
 e0028d0:	05823000 	streq	r3, [r2]
 e0028d4:	e12fff1e 	bx	lr
 e0028d8:	e6ff1073 	uxth	r1, r3
 e0028dc:	e3510000 	cmp	r1, #0
 e0028e0:	01a03823 	lsreq	r3, r3, #16
 e0028e4:	03a00010 	moveq	r0, #16
 e0028e8:	e6ef1073 	uxtb	r1, r3
 e0028ec:	e3510000 	cmp	r1, #0
 e0028f0:	01a03423 	lsreq	r3, r3, #8
 e0028f4:	02800008 	addeq	r0, r0, #8
 e0028f8:	e313000f 	tst	r3, #15
 e0028fc:	01a03223 	lsreq	r3, r3, #4
 e002900:	02800004 	addeq	r0, r0, #4
 e002904:	e3130003 	tst	r3, #3
 e002908:	01a03123 	lsreq	r3, r3, #2
 e00290c:	02800002 	addeq	r0, r0, #2
 e002910:	e3130001 	tst	r3, #1
 e002914:	1a000002 	bne	e002924 <__lo0bits+0x84>
 e002918:	e2800001 	add	r0, r0, #1
 e00291c:	e1b030a3 	lsrs	r3, r3, #1
 e002920:	0a000003 	beq	e002934 <__lo0bits+0x94>
 e002924:	e5823000 	str	r3, [r2]
 e002928:	e12fff1e 	bx	lr
 e00292c:	e3a00000 	mov	r0, #0
 e002930:	e12fff1e 	bx	lr
 e002934:	e3a00020 	mov	r0, #32
 e002938:	e12fff1e 	bx	lr

0e00293c <__i2b>:
 e00293c:	e92d4010 	push	{r4, lr}
 e002940:	e1a04001 	mov	r4, r1
 e002944:	e3a01001 	mov	r1, #1
 e002948:	ebfffef3 	bl	e00251c <_Balloc>
 e00294c:	e2502000 	subs	r2, r0, #0
 e002950:	1a000003 	bne	e002964 <__i2b+0x28>
 e002954:	e59f3018 	ldr	r3, [pc, #24]	; e002974 <__i2b+0x38>
 e002958:	e3a01d05 	mov	r1, #320	; 0x140
 e00295c:	e59f0014 	ldr	r0, [pc, #20]	; e002978 <__i2b+0x3c>
 e002960:	ebfff9c4 	bl	e001078 <__assert_func>
 e002964:	e3a03001 	mov	r3, #1
 e002968:	e5824014 	str	r4, [r2, #20]
 e00296c:	e5823010 	str	r3, [r2, #16]
 e002970:	e8bd8010 	pop	{r4, pc}
 e002974:	0e015e6a 	.word	0x0e015e6a
 e002978:	0e015e85 	.word	0x0e015e85

0e00297c <__multiply>:
 e00297c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e002980:	e1a06002 	mov	r6, r2
 e002984:	e5912010 	ldr	r2, [r1, #16]
 e002988:	e1a04001 	mov	r4, r1
 e00298c:	e24dd014 	sub	sp, sp, #20
 e002990:	e5963010 	ldr	r3, [r6, #16]
 e002994:	e1520003 	cmp	r2, r3
 e002998:	b1a03001 	movlt	r3, r1
 e00299c:	b1a04006 	movlt	r4, r6
 e0029a0:	b1a06003 	movlt	r6, r3
 e0029a4:	e5949010 	ldr	r9, [r4, #16]
 e0029a8:	e5967010 	ldr	r7, [r6, #16]
 e0029ac:	e5943008 	ldr	r3, [r4, #8]
 e0029b0:	e5941004 	ldr	r1, [r4, #4]
 e0029b4:	e0895007 	add	r5, r9, r7
 e0029b8:	e1530005 	cmp	r3, r5
 e0029bc:	b2811001 	addlt	r1, r1, #1
 e0029c0:	ebfffed5 	bl	e00251c <_Balloc>
 e0029c4:	e3500000 	cmp	r0, #0
 e0029c8:	1a000004 	bne	e0029e0 <__multiply+0x64>
 e0029cc:	e1a02000 	mov	r2, r0
 e0029d0:	e59f3168 	ldr	r3, [pc, #360]	; e002b40 <__multiply+0x1c4>
 e0029d4:	e59f0168 	ldr	r0, [pc, #360]	; e002b44 <__multiply+0x1c8>
 e0029d8:	e300115d 	movw	r1, #349	; 0x15d
 e0029dc:	ebfff9a5 	bl	e001078 <__assert_func>
 e0029e0:	e280c014 	add	ip, r0, #20
 e0029e4:	e3a02000 	mov	r2, #0
 e0029e8:	e08c8105 	add	r8, ip, r5, lsl #2
 e0029ec:	e1a0300c 	mov	r3, ip
 e0029f0:	e1530008 	cmp	r3, r8
 e0029f4:	3a000018 	bcc	e002a5c <__multiply+0xe0>
 e0029f8:	e284e014 	add	lr, r4, #20
 e0029fc:	e2863014 	add	r3, r6, #20
 e002a00:	e08ee109 	add	lr, lr, r9, lsl #2
 e002a04:	e0832107 	add	r2, r3, r7, lsl #2
 e002a08:	e58d2008 	str	r2, [sp, #8]
 e002a0c:	e04e2004 	sub	r2, lr, r4
 e002a10:	e2422015 	sub	r2, r2, #21
 e002a14:	e2841015 	add	r1, r4, #21
 e002a18:	e3c22003 	bic	r2, r2, #3
 e002a1c:	e15e0001 	cmp	lr, r1
 e002a20:	e2822004 	add	r2, r2, #4
 e002a24:	33a02004 	movcc	r2, #4
 e002a28:	e58d2004 	str	r2, [sp, #4]
 e002a2c:	e59d2008 	ldr	r2, [sp, #8]
 e002a30:	e58d300c 	str	r3, [sp, #12]
 e002a34:	e1520003 	cmp	r2, r3
 e002a38:	8a000009 	bhi	e002a64 <__multiply+0xe8>
 e002a3c:	e3550000 	cmp	r5, #0
 e002a40:	da000002 	ble	e002a50 <__multiply+0xd4>
 e002a44:	e5383004 	ldr	r3, [r8, #-4]!
 e002a48:	e3530000 	cmp	r3, #0
 e002a4c:	0a000039 	beq	e002b38 <__multiply+0x1bc>
 e002a50:	e5805010 	str	r5, [r0, #16]
 e002a54:	e28dd014 	add	sp, sp, #20
 e002a58:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e002a5c:	e4832004 	str	r2, [r3], #4
 e002a60:	eaffffe2 	b	e0029f0 <__multiply+0x74>
 e002a64:	e1d3a0b0 	ldrh	sl, [r3]
 e002a68:	e35a0000 	cmp	sl, #0
 e002a6c:	0a000015 	beq	e002ac8 <__multiply+0x14c>
 e002a70:	e2847014 	add	r7, r4, #20
 e002a74:	e1a0900c 	mov	r9, ip
 e002a78:	e3a06000 	mov	r6, #0
 e002a7c:	e4972004 	ldr	r2, [r7], #4
 e002a80:	e5991000 	ldr	r1, [r9]
 e002a84:	e15e0007 	cmp	lr, r7
 e002a88:	e6ffb072 	uxth	fp, r2
 e002a8c:	e1a02822 	lsr	r2, r2, #16
 e002a90:	e6ff1071 	uxth	r1, r1
 e002a94:	e0211b9a 	mla	r1, sl, fp, r1
 e002a98:	e0811006 	add	r1, r1, r6
 e002a9c:	e5996000 	ldr	r6, [r9]
 e002aa0:	e1a06826 	lsr	r6, r6, #16
 e002aa4:	e022629a 	mla	r2, sl, r2, r6
 e002aa8:	e0822821 	add	r2, r2, r1, lsr #16
 e002aac:	e6ff1071 	uxth	r1, r1
 e002ab0:	e1811802 	orr	r1, r1, r2, lsl #16
 e002ab4:	e1a06822 	lsr	r6, r2, #16
 e002ab8:	e4891004 	str	r1, [r9], #4
 e002abc:	8affffee 	bhi	e002a7c <__multiply+0x100>
 e002ac0:	e59d2004 	ldr	r2, [sp, #4]
 e002ac4:	e78c6002 	str	r6, [ip, r2]
 e002ac8:	e59d200c 	ldr	r2, [sp, #12]
 e002acc:	e2833004 	add	r3, r3, #4
 e002ad0:	e1d290b2 	ldrh	r9, [r2, #2]
 e002ad4:	e3590000 	cmp	r9, #0
 e002ad8:	0a000014 	beq	e002b30 <__multiply+0x1b4>
 e002adc:	e59c1000 	ldr	r1, [ip]
 e002ae0:	e2846014 	add	r6, r4, #20
 e002ae4:	e1a0700c 	mov	r7, ip
 e002ae8:	e3a0a000 	mov	sl, #0
 e002aec:	e1d6b0b0 	ldrh	fp, [r6]
 e002af0:	e6ff1071 	uxth	r1, r1
 e002af4:	e1d720b2 	ldrh	r2, [r7, #2]
 e002af8:	e0222b99 	mla	r2, r9, fp, r2
 e002afc:	e082a00a 	add	sl, r2, sl
 e002b00:	e181180a 	orr	r1, r1, sl, lsl #16
 e002b04:	e4871004 	str	r1, [r7], #4
 e002b08:	e4962004 	ldr	r2, [r6], #4
 e002b0c:	e1d710b0 	ldrh	r1, [r7]
 e002b10:	e15e0006 	cmp	lr, r6
 e002b14:	e1a02822 	lsr	r2, r2, #16
 e002b18:	e0211299 	mla	r1, r9, r2, r1
 e002b1c:	e081182a 	add	r1, r1, sl, lsr #16
 e002b20:	e1a0a821 	lsr	sl, r1, #16
 e002b24:	8afffff0 	bhi	e002aec <__multiply+0x170>
 e002b28:	e59d2004 	ldr	r2, [sp, #4]
 e002b2c:	e78c1002 	str	r1, [ip, r2]
 e002b30:	e28cc004 	add	ip, ip, #4
 e002b34:	eaffffbc 	b	e002a2c <__multiply+0xb0>
 e002b38:	e2455001 	sub	r5, r5, #1
 e002b3c:	eaffffbe 	b	e002a3c <__multiply+0xc0>
 e002b40:	0e015e6a 	.word	0x0e015e6a
 e002b44:	0e015e85 	.word	0x0e015e85

0e002b48 <__pow5mult>:
 e002b48:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e002b4c:	e1a05002 	mov	r5, r2
 e002b50:	e2122003 	ands	r2, r2, #3
 e002b54:	e1a06000 	mov	r6, r0
 e002b58:	01a07001 	moveq	r7, r1
 e002b5c:	0a000005 	beq	e002b78 <__pow5mult+0x30>
 e002b60:	e59fc0f4 	ldr	ip, [pc, #244]	; e002c5c <__pow5mult+0x114>
 e002b64:	e2422001 	sub	r2, r2, #1
 e002b68:	e3a03000 	mov	r3, #0
 e002b6c:	e79c2102 	ldr	r2, [ip, r2, lsl #2]
 e002b70:	ebfffec1 	bl	e00267c <__multadd>
 e002b74:	e1a07000 	mov	r7, r0
 e002b78:	e1b05145 	asrs	r5, r5, #2
 e002b7c:	0a000034 	beq	e002c54 <__pow5mult+0x10c>
 e002b80:	e5964024 	ldr	r4, [r6, #36]	; 0x24
 e002b84:	e3540000 	cmp	r4, #0
 e002b88:	1a00000d 	bne	e002bc4 <__pow5mult+0x7c>
 e002b8c:	e3a00010 	mov	r0, #16
 e002b90:	eb002ac3 	bl	e00d6a4 <__wrap_malloc>
 e002b94:	e1a02000 	mov	r2, r0
 e002b98:	e3500000 	cmp	r0, #0
 e002b9c:	e5860024 	str	r0, [r6, #36]	; 0x24
 e002ba0:	1a000003 	bne	e002bb4 <__pow5mult+0x6c>
 e002ba4:	e59f30b4 	ldr	r3, [pc, #180]	; e002c60 <__pow5mult+0x118>
 e002ba8:	e30011ae 	movw	r1, #430	; 0x1ae
 e002bac:	e59f00b0 	ldr	r0, [pc, #176]	; e002c64 <__pow5mult+0x11c>
 e002bb0:	ebfff930 	bl	e001078 <__assert_func>
 e002bb4:	e5804004 	str	r4, [r0, #4]
 e002bb8:	e5804008 	str	r4, [r0, #8]
 e002bbc:	e5804000 	str	r4, [r0]
 e002bc0:	e580400c 	str	r4, [r0, #12]
 e002bc4:	e5968024 	ldr	r8, [r6, #36]	; 0x24
 e002bc8:	e5984008 	ldr	r4, [r8, #8]
 e002bcc:	e3540000 	cmp	r4, #0
 e002bd0:	1a000006 	bne	e002bf0 <__pow5mult+0xa8>
 e002bd4:	e1a00006 	mov	r0, r6
 e002bd8:	e3001271 	movw	r1, #625	; 0x271
 e002bdc:	ebffff56 	bl	e00293c <__i2b>
 e002be0:	e1a04000 	mov	r4, r0
 e002be4:	e3a03000 	mov	r3, #0
 e002be8:	e5880008 	str	r0, [r8, #8]
 e002bec:	e5803000 	str	r3, [r0]
 e002bf0:	e3a09000 	mov	r9, #0
 e002bf4:	e3150001 	tst	r5, #1
 e002bf8:	0a000008 	beq	e002c20 <__pow5mult+0xd8>
 e002bfc:	e1a01007 	mov	r1, r7
 e002c00:	e1a02004 	mov	r2, r4
 e002c04:	e1a00006 	mov	r0, r6
 e002c08:	ebffff5b 	bl	e00297c <__multiply>
 e002c0c:	e1a08000 	mov	r8, r0
 e002c10:	e1a01007 	mov	r1, r7
 e002c14:	e1a07008 	mov	r7, r8
 e002c18:	e1a00006 	mov	r0, r6
 e002c1c:	ebfffe77 	bl	e002600 <_Bfree>
 e002c20:	e1b050c5 	asrs	r5, r5, #1
 e002c24:	0a00000a 	beq	e002c54 <__pow5mult+0x10c>
 e002c28:	e5940000 	ldr	r0, [r4]
 e002c2c:	e3500000 	cmp	r0, #0
 e002c30:	1a000005 	bne	e002c4c <__pow5mult+0x104>
 e002c34:	e1a02004 	mov	r2, r4
 e002c38:	e1a01004 	mov	r1, r4
 e002c3c:	e1a00006 	mov	r0, r6
 e002c40:	ebffff4d 	bl	e00297c <__multiply>
 e002c44:	e5840000 	str	r0, [r4]
 e002c48:	e5809000 	str	r9, [r0]
 e002c4c:	e1a04000 	mov	r4, r0
 e002c50:	eaffffe7 	b	e002bf4 <__pow5mult+0xac>
 e002c54:	e1a00007 	mov	r0, r7
 e002c58:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e002c5c:	0e0141f8 	.word	0x0e0141f8
 e002c60:	0e015ddf 	.word	0x0e015ddf
 e002c64:	0e015e85 	.word	0x0e015e85

0e002c68 <__lshift>:
 e002c68:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e002c6c:	e1a04001 	mov	r4, r1
 e002c70:	e5911004 	ldr	r1, [r1, #4]
 e002c74:	e1a07000 	mov	r7, r0
 e002c78:	e1a09002 	mov	r9, r2
 e002c7c:	e5948010 	ldr	r8, [r4, #16]
 e002c80:	e1a0a2c2 	asr	sl, r2, #5
 e002c84:	e5943008 	ldr	r3, [r4, #8]
 e002c88:	e08882c2 	add	r8, r8, r2, asr #5
 e002c8c:	e2886001 	add	r6, r8, #1
 e002c90:	e1530006 	cmp	r3, r6
 e002c94:	ba000008 	blt	e002cbc <__lshift+0x54>
 e002c98:	e1a00007 	mov	r0, r7
 e002c9c:	ebfffe1e 	bl	e00251c <_Balloc>
 e002ca0:	e2505000 	subs	r5, r0, #0
 e002ca4:	1a000007 	bne	e002cc8 <__lshift+0x60>
 e002ca8:	e59f30dc 	ldr	r3, [pc, #220]	; e002d8c <__lshift+0x124>
 e002cac:	e1a02005 	mov	r2, r5
 e002cb0:	e59f00d8 	ldr	r0, [pc, #216]	; e002d90 <__lshift+0x128>
 e002cb4:	e30011d9 	movw	r1, #473	; 0x1d9
 e002cb8:	ebfff8ee 	bl	e001078 <__assert_func>
 e002cbc:	e2811001 	add	r1, r1, #1
 e002cc0:	e1a03083 	lsl	r3, r3, #1
 e002cc4:	eafffff1 	b	e002c90 <__lshift+0x28>
 e002cc8:	e3a03000 	mov	r3, #0
 e002ccc:	e2851014 	add	r1, r5, #20
 e002cd0:	e2852010 	add	r2, r5, #16
 e002cd4:	e1a00003 	mov	r0, r3
 e002cd8:	e153000a 	cmp	r3, sl
 e002cdc:	ba000021 	blt	e002d68 <__lshift+0x100>
 e002ce0:	e5940010 	ldr	r0, [r4, #16]
 e002ce4:	e1caafca 	bic	sl, sl, sl, asr #31
 e002ce8:	e2843014 	add	r3, r4, #20
 e002cec:	e219901f 	ands	r9, r9, #31
 e002cf0:	e081110a 	add	r1, r1, sl, lsl #2
 e002cf4:	e0830100 	add	r0, r3, r0, lsl #2
 e002cf8:	0a00001d 	beq	e002d74 <__lshift+0x10c>
 e002cfc:	e2692020 	rsb	r2, r9, #32
 e002d00:	e1a0a001 	mov	sl, r1
 e002d04:	e3a0c000 	mov	ip, #0
 e002d08:	e593e000 	ldr	lr, [r3]
 e002d0c:	e18cc91e 	orr	ip, ip, lr, lsl r9
 e002d10:	e48ac004 	str	ip, [sl], #4
 e002d14:	e493c004 	ldr	ip, [r3], #4
 e002d18:	e1500003 	cmp	r0, r3
 e002d1c:	e1a0c23c 	lsr	ip, ip, r2
 e002d20:	8afffff8 	bhi	e002d08 <__lshift+0xa0>
 e002d24:	e0403004 	sub	r3, r0, r4
 e002d28:	e2842015 	add	r2, r4, #21
 e002d2c:	e2433015 	sub	r3, r3, #21
 e002d30:	e1500002 	cmp	r0, r2
 e002d34:	e3c33003 	bic	r3, r3, #3
 e002d38:	e2833004 	add	r3, r3, #4
 e002d3c:	33a03004 	movcc	r3, #4
 e002d40:	e35c0000 	cmp	ip, #0
 e002d44:	12886002 	addne	r6, r8, #2
 e002d48:	e781c003 	str	ip, [r1, r3]
 e002d4c:	e1a00007 	mov	r0, r7
 e002d50:	e2466001 	sub	r6, r6, #1
 e002d54:	e1a01004 	mov	r1, r4
 e002d58:	e5856010 	str	r6, [r5, #16]
 e002d5c:	ebfffe27 	bl	e002600 <_Bfree>
 e002d60:	e1a00005 	mov	r0, r5
 e002d64:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e002d68:	e2833001 	add	r3, r3, #1
 e002d6c:	e5a20004 	str	r0, [r2, #4]!
 e002d70:	eaffffd8 	b	e002cd8 <__lshift+0x70>
 e002d74:	e2411004 	sub	r1, r1, #4
 e002d78:	e4932004 	ldr	r2, [r3], #4
 e002d7c:	e5a12004 	str	r2, [r1, #4]!
 e002d80:	e1500003 	cmp	r0, r3
 e002d84:	8afffffb 	bhi	e002d78 <__lshift+0x110>
 e002d88:	eaffffef 	b	e002d4c <__lshift+0xe4>
 e002d8c:	0e015e6a 	.word	0x0e015e6a
 e002d90:	0e015e85 	.word	0x0e015e85

0e002d94 <__mcmp>:
 e002d94:	e5912010 	ldr	r2, [r1, #16]
 e002d98:	e1a03000 	mov	r3, r0
 e002d9c:	e5900010 	ldr	r0, [r0, #16]
 e002da0:	e0500002 	subs	r0, r0, r2
 e002da4:	112fff1e 	bxne	lr
 e002da8:	e2833014 	add	r3, r3, #20
 e002dac:	e2811014 	add	r1, r1, #20
 e002db0:	e083c102 	add	ip, r3, r2, lsl #2
 e002db4:	e0811102 	add	r1, r1, r2, lsl #2
 e002db8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e002dbc:	e53ce004 	ldr	lr, [ip, #-4]!
 e002dc0:	e5312004 	ldr	r2, [r1, #-4]!
 e002dc4:	e15e0002 	cmp	lr, r2
 e002dc8:	0a000002 	beq	e002dd8 <__mcmp+0x44>
 e002dcc:	3a000004 	bcc	e002de4 <__mcmp+0x50>
 e002dd0:	e3a00001 	mov	r0, #1
 e002dd4:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
 e002dd8:	e153000c 	cmp	r3, ip
 e002ddc:	3afffff6 	bcc	e002dbc <__mcmp+0x28>
 e002de0:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
 e002de4:	e3e00000 	mvn	r0, #0
 e002de8:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

0e002dec <__mdiff>:
 e002dec:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e002df0:	e1a04001 	mov	r4, r1
 e002df4:	e1a06000 	mov	r6, r0
 e002df8:	e1a01002 	mov	r1, r2
 e002dfc:	e1a00004 	mov	r0, r4
 e002e00:	e1a08002 	mov	r8, r2
 e002e04:	ebffffe2 	bl	e002d94 <__mcmp>
 e002e08:	e2505000 	subs	r5, r0, #0
 e002e0c:	1a00000b 	bne	e002e40 <__mdiff+0x54>
 e002e10:	e1a01005 	mov	r1, r5
 e002e14:	e1a00006 	mov	r0, r6
 e002e18:	ebfffdbf 	bl	e00251c <_Balloc>
 e002e1c:	e2502000 	subs	r2, r0, #0
 e002e20:	13a03001 	movne	r3, #1
 e002e24:	03001232 	movweq	r1, #562	; 0x232
 e002e28:	059f3138 	ldreq	r3, [pc, #312]	; e002f68 <__mdiff+0x17c>
 e002e2c:	15823010 	strne	r3, [r2, #16]
 e002e30:	15825014 	strne	r5, [r2, #20]
 e002e34:	1a00003e 	bne	e002f34 <__mdiff+0x148>
 e002e38:	e59f012c 	ldr	r0, [pc, #300]	; e002f6c <__mdiff+0x180>
 e002e3c:	ebfff88d 	bl	e001078 <__assert_func>
 e002e40:	a1a03008 	movge	r3, r8
 e002e44:	a1a08004 	movge	r8, r4
 e002e48:	e1a00006 	mov	r0, r6
 e002e4c:	a1a04003 	movge	r4, r3
 e002e50:	a3a05000 	movge	r5, #0
 e002e54:	b3a05001 	movlt	r5, #1
 e002e58:	e5981004 	ldr	r1, [r8, #4]
 e002e5c:	ebfffdae 	bl	e00251c <_Balloc>
 e002e60:	e2502000 	subs	r2, r0, #0
 e002e64:	059f30fc 	ldreq	r3, [pc, #252]	; e002f68 <__mdiff+0x17c>
 e002e68:	03a01d09 	moveq	r1, #576	; 0x240
 e002e6c:	0afffff1 	beq	e002e38 <__mdiff+0x4c>
 e002e70:	e594e010 	ldr	lr, [r4, #16]
 e002e74:	e2880014 	add	r0, r8, #20
 e002e78:	e582500c 	str	r5, [r2, #12]
 e002e7c:	e284a014 	add	sl, r4, #20
 e002e80:	e5985010 	ldr	r5, [r8, #16]
 e002e84:	e2827014 	add	r7, r2, #20
 e002e88:	e08ae10e 	add	lr, sl, lr, lsl #2
 e002e8c:	e288c010 	add	ip, r8, #16
 e002e90:	e1a0b007 	mov	fp, r7
 e002e94:	e3a01000 	mov	r1, #0
 e002e98:	e0806105 	add	r6, r0, r5, lsl #2
 e002e9c:	e49a8004 	ldr	r8, [sl], #4
 e002ea0:	e5bc3004 	ldr	r3, [ip, #4]!
 e002ea4:	e15e000a 	cmp	lr, sl
 e002ea8:	e6ff9078 	uxth	r9, r8
 e002eac:	e1a08828 	lsr	r8, r8, #16
 e002eb0:	e6f11073 	uxtah	r1, r1, r3
 e002eb4:	e0683823 	rsb	r3, r8, r3, lsr #16
 e002eb8:	e0419009 	sub	r9, r1, r9
 e002ebc:	e0833849 	add	r3, r3, r9, asr #16
 e002ec0:	e6ff9079 	uxth	r9, r9
 e002ec4:	e1a01843 	asr	r1, r3, #16
 e002ec8:	e1893803 	orr	r3, r9, r3, lsl #16
 e002ecc:	e48b3004 	str	r3, [fp], #4
 e002ed0:	8afffff1 	bhi	e002e9c <__mdiff+0xb0>
 e002ed4:	e04e3004 	sub	r3, lr, r4
 e002ed8:	e2844015 	add	r4, r4, #21
 e002edc:	e2433015 	sub	r3, r3, #21
 e002ee0:	e15e0004 	cmp	lr, r4
 e002ee4:	e3c33003 	bic	r3, r3, #3
 e002ee8:	e2833004 	add	r3, r3, #4
 e002eec:	33a03004 	movcc	r3, #4
 e002ef0:	e0800003 	add	r0, r0, r3
 e002ef4:	e0873003 	add	r3, r7, r3
 e002ef8:	e1a07003 	mov	r7, r3
 e002efc:	e1a04000 	mov	r4, r0
 e002f00:	e1540006 	cmp	r4, r6
 e002f04:	3a00000c 	bcc	e002f3c <__mdiff+0x150>
 e002f08:	e2861003 	add	r1, r6, #3
 e002f0c:	e0411000 	sub	r1, r1, r0
 e002f10:	e2400003 	sub	r0, r0, #3
 e002f14:	e1560000 	cmp	r6, r0
 e002f18:	e3c11003 	bic	r1, r1, #3
 e002f1c:	33a01000 	movcc	r1, #0
 e002f20:	e0831001 	add	r1, r3, r1
 e002f24:	e5313004 	ldr	r3, [r1, #-4]!
 e002f28:	e3530000 	cmp	r3, #0
 e002f2c:	0a00000b 	beq	e002f60 <__mdiff+0x174>
 e002f30:	e5825010 	str	r5, [r2, #16]
 e002f34:	e1a00002 	mov	r0, r2
 e002f38:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e002f3c:	e4948004 	ldr	r8, [r4], #4
 e002f40:	e6f1c078 	uxtah	ip, r1, r8
 e002f44:	e1a0e84c 	asr	lr, ip, #16
 e002f48:	e6ffc07c 	uxth	ip, ip
 e002f4c:	e08ee828 	add	lr, lr, r8, lsr #16
 e002f50:	e18cc80e 	orr	ip, ip, lr, lsl #16
 e002f54:	e1a0184e 	asr	r1, lr, #16
 e002f58:	e487c004 	str	ip, [r7], #4
 e002f5c:	eaffffe7 	b	e002f00 <__mdiff+0x114>
 e002f60:	e2455001 	sub	r5, r5, #1
 e002f64:	eaffffee 	b	e002f24 <__mdiff+0x138>
 e002f68:	0e015e6a 	.word	0x0e015e6a
 e002f6c:	0e015e85 	.word	0x0e015e85

0e002f70 <__ulp>:
 e002f70:	e24dd008 	sub	sp, sp, #8
 e002f74:	e59f1060 	ldr	r1, [pc, #96]	; e002fdc <__ulp+0x6c>
 e002f78:	ed8d0b00 	vstr	d0, [sp]
 e002f7c:	e59d3004 	ldr	r3, [sp, #4]
 e002f80:	e0011003 	and	r1, r1, r3
 e002f84:	e241150d 	sub	r1, r1, #54525952	; 0x3400000
 e002f88:	e3510000 	cmp	r1, #0
 e002f8c:	c3a02000 	movgt	r2, #0
 e002f90:	c1a03001 	movgt	r3, r1
 e002f94:	ca00000d 	bgt	e002fd0 <__ulp+0x60>
 e002f98:	e2611000 	rsb	r1, r1, #0
 e002f9c:	e3a03000 	mov	r3, #0
 e002fa0:	e3510505 	cmp	r1, #20971520	; 0x1400000
 e002fa4:	e3a02000 	mov	r2, #0
 e002fa8:	e1a00a41 	asr	r0, r1, #20
 e002fac:	b3a01702 	movlt	r1, #524288	; 0x80000
 e002fb0:	b1a03051 	asrlt	r3, r1, r0
 e002fb4:	ba000005 	blt	e002fd0 <__ulp+0x60>
 e002fb8:	e2401014 	sub	r1, r0, #20
 e002fbc:	e351001e 	cmp	r1, #30
 e002fc0:	d3a00102 	movle	r0, #-2147483648	; 0x80000000
 e002fc4:	c3a01001 	movgt	r1, #1
 e002fc8:	d1a01130 	lsrle	r1, r0, r1
 e002fcc:	e1a02001 	mov	r2, r1
 e002fd0:	ec432b10 	vmov	d0, r2, r3
 e002fd4:	e28dd008 	add	sp, sp, #8
 e002fd8:	e12fff1e 	bx	lr
 e002fdc:	7ff00000 	.word	0x7ff00000

0e002fe0 <__b2d>:
 e002fe0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e002fe4:	e2807014 	add	r7, r0, #20
 e002fe8:	e5904010 	ldr	r4, [r0, #16]
 e002fec:	e0874104 	add	r4, r7, r4, lsl #2
 e002ff0:	e2446004 	sub	r6, r4, #4
 e002ff4:	e5145004 	ldr	r5, [r4, #-4]
 e002ff8:	e1a00005 	mov	r0, r5
 e002ffc:	ebfffe11 	bl	e002848 <__hi0bits>
 e003000:	e59fc084 	ldr	ip, [pc, #132]	; e00308c <__b2d+0xac>
 e003004:	e2603020 	rsb	r3, r0, #32
 e003008:	e350000a 	cmp	r0, #10
 e00300c:	e5813000 	str	r3, [r1]
 e003010:	ca000009 	bgt	e00303c <__b2d+0x5c>
 e003014:	e1570006 	cmp	r7, r6
 e003018:	e260e00b 	rsb	lr, r0, #11
 e00301c:	23a01000 	movcs	r1, #0
 e003020:	e2800015 	add	r0, r0, #21
 e003024:	e18c3e35 	orr	r3, ip, r5, lsr lr
 e003028:	35141008 	ldrcc	r1, [r4, #-8]
 e00302c:	e1a01e31 	lsr	r1, r1, lr
 e003030:	e1812015 	orr	r2, r1, r5, lsl r0
 e003034:	ec432b10 	vmov	d0, r2, r3
 e003038:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e00303c:	e1570006 	cmp	r7, r6
 e003040:	32446008 	subcc	r6, r4, #8
 e003044:	23a01000 	movcs	r1, #0
 e003048:	35141008 	ldrcc	r1, [r4, #-8]
 e00304c:	e250000b 	subs	r0, r0, #11
 e003050:	0a00000a 	beq	e003080 <__b2d+0xa0>
 e003054:	e1560007 	cmp	r6, r7
 e003058:	e260e020 	rsb	lr, r0, #32
 e00305c:	93a0c000 	movls	ip, #0
 e003060:	e1a03e31 	lsr	r3, r1, lr
 e003064:	8516c004 	ldrhi	ip, [r6, #-4]
 e003068:	e1835015 	orr	r5, r3, r5, lsl r0
 e00306c:	e38535ff 	orr	r3, r5, #1069547520	; 0x3fc00000
 e003070:	e3833603 	orr	r3, r3, #3145728	; 0x300000
 e003074:	e1a0ce3c 	lsr	ip, ip, lr
 e003078:	e18c2011 	orr	r2, ip, r1, lsl r0
 e00307c:	eaffffec 	b	e003034 <__b2d+0x54>
 e003080:	e185300c 	orr	r3, r5, ip
 e003084:	e1a02001 	mov	r2, r1
 e003088:	eaffffe9 	b	e003034 <__b2d+0x54>
 e00308c:	3ff00000 	.word	0x3ff00000

0e003090 <__d2b>:
 e003090:	e92d43f7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
 e003094:	e1a09001 	mov	r9, r1
 e003098:	e3a01001 	mov	r1, #1
 e00309c:	ec576b10 	vmov	r6, r7, d0
 e0030a0:	e1a08002 	mov	r8, r2
 e0030a4:	ebfffd1c 	bl	e00251c <_Balloc>
 e0030a8:	e2504000 	subs	r4, r0, #0
 e0030ac:	1a000004 	bne	e0030c4 <__d2b+0x34>
 e0030b0:	e59f30e0 	ldr	r3, [pc, #224]	; e003198 <__d2b+0x108>
 e0030b4:	e1a02004 	mov	r2, r4
 e0030b8:	e59f00dc 	ldr	r0, [pc, #220]	; e00319c <__d2b+0x10c>
 e0030bc:	e300130a 	movw	r1, #778	; 0x30a
 e0030c0:	ebfff7ec 	bl	e001078 <__assert_func>
 e0030c4:	e7ea5a57 	ubfx	r5, r7, #20, #11
 e0030c8:	e7f33057 	ubfx	r3, r7, #0, #20
 e0030cc:	e3550000 	cmp	r5, #0
 e0030d0:	13833601 	orrne	r3, r3, #1048576	; 0x100000
 e0030d4:	e3560000 	cmp	r6, #0
 e0030d8:	e58d3004 	str	r3, [sp, #4]
 e0030dc:	0a00001c 	beq	e003154 <__d2b+0xc4>
 e0030e0:	e1a0000d 	mov	r0, sp
 e0030e4:	e58d6000 	str	r6, [sp]
 e0030e8:	ebfffdec 	bl	e0028a0 <__lo0bits>
 e0030ec:	e3500000 	cmp	r0, #0
 e0030f0:	e59d3000 	ldr	r3, [sp]
 e0030f4:	12601020 	rsbne	r1, r0, #32
 e0030f8:	05843014 	streq	r3, [r4, #20]
 e0030fc:	159d2004 	ldrne	r2, [sp, #4]
 e003100:	11833112 	orrne	r3, r3, r2, lsl r1
 e003104:	15843014 	strne	r3, [r4, #20]
 e003108:	11a02032 	lsrne	r2, r2, r0
 e00310c:	158d2004 	strne	r2, [sp, #4]
 e003110:	e59d3004 	ldr	r3, [sp, #4]
 e003114:	e5843018 	str	r3, [r4, #24]
 e003118:	e3530000 	cmp	r3, #0
 e00311c:	13a01002 	movne	r1, #2
 e003120:	03a01001 	moveq	r1, #1
 e003124:	e5841010 	str	r1, [r4, #16]
 e003128:	e3550000 	cmp	r5, #0
 e00312c:	0a000010 	beq	e003174 <__d2b+0xe4>
 e003130:	e2455e43 	sub	r5, r5, #1072	; 0x430
 e003134:	e2455003 	sub	r5, r5, #3
 e003138:	e0855000 	add	r5, r5, r0
 e00313c:	e2600035 	rsb	r0, r0, #53	; 0x35
 e003140:	e5895000 	str	r5, [r9]
 e003144:	e5880000 	str	r0, [r8]
 e003148:	e1a00004 	mov	r0, r4
 e00314c:	e28dd00c 	add	sp, sp, #12
 e003150:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
 e003154:	e28d0004 	add	r0, sp, #4
 e003158:	ebfffdd0 	bl	e0028a0 <__lo0bits>
 e00315c:	e59d3004 	ldr	r3, [sp, #4]
 e003160:	e3a01001 	mov	r1, #1
 e003164:	e2800020 	add	r0, r0, #32
 e003168:	e5843014 	str	r3, [r4, #20]
 e00316c:	e5841010 	str	r1, [r4, #16]
 e003170:	eaffffec 	b	e003128 <__d2b+0x98>
 e003174:	e0843101 	add	r3, r4, r1, lsl #2
 e003178:	e2400e43 	sub	r0, r0, #1072	; 0x430
 e00317c:	e2400002 	sub	r0, r0, #2
 e003180:	e5890000 	str	r0, [r9]
 e003184:	e5930010 	ldr	r0, [r3, #16]
 e003188:	ebfffdae 	bl	e002848 <__hi0bits>
 e00318c:	e0601281 	rsb	r1, r0, r1, lsl #5
 e003190:	e5881000 	str	r1, [r8]
 e003194:	eaffffeb 	b	e003148 <__d2b+0xb8>
 e003198:	0e015e6a 	.word	0x0e015e6a
 e00319c:	0e015e85 	.word	0x0e015e85

0e0031a0 <__ratio>:
 e0031a0:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e0031a4:	e1a09000 	mov	r9, r0
 e0031a8:	e1a08001 	mov	r8, r1
 e0031ac:	e1a0100d 	mov	r1, sp
 e0031b0:	ebffff8a 	bl	e002fe0 <__b2d>
 e0031b4:	e28d1004 	add	r1, sp, #4
 e0031b8:	e1a00008 	mov	r0, r8
 e0031bc:	ec554b10 	vmov	r4, r5, d0
 e0031c0:	ee10aa10 	vmov	sl, s0
 e0031c4:	ebffff85 	bl	e002fe0 <__b2d>
 e0031c8:	e5993010 	ldr	r3, [r9, #16]
 e0031cc:	ec576b10 	vmov	r6, r7, d0
 e0031d0:	e5982010 	ldr	r2, [r8, #16]
 e0031d4:	ee100a10 	vmov	r0, s0
 e0031d8:	e0432002 	sub	r2, r3, r2
 e0031dc:	e89d1008 	ldm	sp, {r3, ip}
 e0031e0:	e043300c 	sub	r3, r3, ip
 e0031e4:	e0833282 	add	r3, r3, r2, lsl #5
 e0031e8:	e3530000 	cmp	r3, #0
 e0031ec:	d0633603 	rsble	r3, r3, r3, lsl #12
 e0031f0:	c1a02005 	movgt	r2, r5
 e0031f4:	d1a02007 	movle	r2, r7
 e0031f8:	c1a01007 	movgt	r1, r7
 e0031fc:	c082ba03 	addgt	fp, r2, r3, lsl #20
 e003200:	d1a0b005 	movle	fp, r5
 e003204:	d0821a03 	addle	r1, r2, r3, lsl #20
 e003208:	ec4bab30 	vmov	d16, sl, fp
 e00320c:	ec410b31 	vmov	d17, r0, r1
 e003210:	ee800ba1 	vdiv.f64	d0, d16, d17
 e003214:	e28dd00c 	add	sp, sp, #12
 e003218:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

0e00321c <_mprec_log10>:
 e00321c:	e3500017 	cmp	r0, #23
 e003220:	ceb70b00 	vmovgt.f64	d0, #112	; 0x3f800000  1.0
 e003224:	cef20b04 	vmovgt.f64	d16, #36	; 0x41200000  10.0
 e003228:	ca000003 	bgt	e00323c <_mprec_log10+0x20>
 e00322c:	e59f3018 	ldr	r3, [pc, #24]	; e00324c <_mprec_log10+0x30>
 e003230:	e0830180 	add	r0, r3, r0, lsl #3
 e003234:	ed900b04 	vldr	d0, [r0, #16]
 e003238:	e12fff1e 	bx	lr
 e00323c:	e2500001 	subs	r0, r0, #1
 e003240:	ee200b20 	vmul.f64	d0, d0, d16
 e003244:	1afffffc 	bne	e00323c <_mprec_log10+0x20>
 e003248:	e12fff1e 	bx	lr
 e00324c:	0e0141f8 	.word	0x0e0141f8

0e003250 <__copybits>:
 e003250:	e2411001 	sub	r1, r1, #1
 e003254:	e592c010 	ldr	ip, [r2, #16]
 e003258:	e2823014 	add	r3, r2, #20
 e00325c:	e92d4010 	push	{r4, lr}
 e003260:	e1a012c1 	asr	r1, r1, #5
 e003264:	e2811001 	add	r1, r1, #1
 e003268:	e083c10c 	add	ip, r3, ip, lsl #2
 e00326c:	e240e004 	sub	lr, r0, #4
 e003270:	e0801101 	add	r1, r0, r1, lsl #2
 e003274:	e153000c 	cmp	r3, ip
 e003278:	3a00000b 	bcc	e0032ac <__copybits+0x5c>
 e00327c:	e04c3002 	sub	r3, ip, r2
 e003280:	e2822011 	add	r2, r2, #17
 e003284:	e2433011 	sub	r3, r3, #17
 e003288:	e152000c 	cmp	r2, ip
 e00328c:	e3c33003 	bic	r3, r3, #3
 e003290:	83a03000 	movhi	r3, #0
 e003294:	e0800003 	add	r0, r0, r3
 e003298:	e3a03000 	mov	r3, #0
 e00329c:	e1500001 	cmp	r0, r1
 e0032a0:	28bd8010 	popcs	{r4, pc}
 e0032a4:	e4803004 	str	r3, [r0], #4
 e0032a8:	eafffffb 	b	e00329c <__copybits+0x4c>
 e0032ac:	e4934004 	ldr	r4, [r3], #4
 e0032b0:	e5ae4004 	str	r4, [lr, #4]!
 e0032b4:	eaffffee 	b	e003274 <__copybits+0x24>

0e0032b8 <__any_on>:
 e0032b8:	e2802014 	add	r2, r0, #20
 e0032bc:	e5900010 	ldr	r0, [r0, #16]
 e0032c0:	e1a032c1 	asr	r3, r1, #5
 e0032c4:	e1500003 	cmp	r0, r3
 e0032c8:	ba00000b 	blt	e0032fc <__any_on+0x44>
 e0032cc:	da000005 	ble	e0032e8 <__any_on+0x30>
 e0032d0:	e211101f 	ands	r1, r1, #31
 e0032d4:	0a000003 	beq	e0032e8 <__any_on+0x30>
 e0032d8:	e7920103 	ldr	r0, [r2, r3, lsl #2]
 e0032dc:	e1a0c130 	lsr	ip, r0, r1
 e0032e0:	e150011c 	cmp	r0, ip, lsl r1
 e0032e4:	1a000009 	bne	e003310 <__any_on+0x58>
 e0032e8:	e0823103 	add	r3, r2, r3, lsl #2
 e0032ec:	e1530002 	cmp	r3, r2
 e0032f0:	8a000003 	bhi	e003304 <__any_on+0x4c>
 e0032f4:	e3a00000 	mov	r0, #0
 e0032f8:	e12fff1e 	bx	lr
 e0032fc:	e1a03000 	mov	r3, r0
 e003300:	eafffff8 	b	e0032e8 <__any_on+0x30>
 e003304:	e5331004 	ldr	r1, [r3, #-4]!
 e003308:	e3510000 	cmp	r1, #0
 e00330c:	0afffff6 	beq	e0032ec <__any_on+0x34>
 e003310:	e3a00001 	mov	r0, #1
 e003314:	e12fff1e 	bx	lr

0e003318 <_read_r>:
 e003318:	e92d4070 	push	{r4, r5, r6, lr}
 e00331c:	e1a04000 	mov	r4, r0
 e003320:	e59f502c 	ldr	r5, [pc, #44]	; e003354 <_read_r+0x3c>
 e003324:	e1a00001 	mov	r0, r1
 e003328:	e1a01002 	mov	r1, r2
 e00332c:	e3a02000 	mov	r2, #0
 e003330:	e5852000 	str	r2, [r5]
 e003334:	e1a02003 	mov	r2, r3
 e003338:	eb001af2 	bl	e009f08 <_read>
 e00333c:	e3700001 	cmn	r0, #1
 e003340:	18bd8070 	popne	{r4, r5, r6, pc}
 e003344:	e5953000 	ldr	r3, [r5]
 e003348:	e3530000 	cmp	r3, #0
 e00334c:	15843000 	strne	r3, [r4]
 e003350:	e8bd8070 	pop	{r4, r5, r6, pc}
 e003354:	600a3160 	.word	0x600a3160

0e003358 <frexp>:
 e003358:	ee101a90 	vmov	r1, s1
 e00335c:	e3a02000 	mov	r2, #0
 e003360:	e5802000 	str	r2, [r0]
 e003364:	e59f207c 	ldr	r2, [pc, #124]	; e0033e8 <frexp+0x90>
 e003368:	e3c13102 	bic	r3, r1, #-2147483648	; 0x80000000
 e00336c:	e1530002 	cmp	r3, r2
 e003370:	c12fff1e 	bxgt	lr
 e003374:	ee102a10 	vmov	r2, s0
 e003378:	e1932002 	orrs	r2, r3, r2
 e00337c:	012fff1e 	bxeq	lr
 e003380:	e59f2064 	ldr	r2, [pc, #100]	; e0033ec <frexp+0x94>
 e003384:	e0022001 	and	r2, r2, r1
 e003388:	e3520000 	cmp	r2, #0
 e00338c:	1a000005 	bne	e0033a8 <frexp+0x50>
 e003390:	eddf0b12 	vldr	d16, [pc, #72]	; e0033e0 <frexp+0x88>
 e003394:	e3e02035 	mvn	r2, #53	; 0x35
 e003398:	e5802000 	str	r2, [r0]
 e00339c:	ee200b20 	vmul.f64	d0, d0, d16
 e0033a0:	ee101a90 	vmov	r1, s1
 e0033a4:	e3c13102 	bic	r3, r1, #-2147483648	; 0x80000000
 e0033a8:	e1a03a43 	asr	r3, r3, #20
 e0033ac:	e5902000 	ldr	r2, [r0]
 e0033b0:	e2433fff 	sub	r3, r3, #1020	; 0x3fc
 e0033b4:	e3c1147f 	bic	r1, r1, #2130706432	; 0x7f000000
 e0033b8:	e2433002 	sub	r3, r3, #2
 e0033bc:	e3c1160f 	bic	r1, r1, #15728640	; 0xf00000
 e0033c0:	e0823003 	add	r3, r2, r3
 e0033c4:	e5803000 	str	r3, [r0]
 e0033c8:	ec532b10 	vmov	r2, r3, d0
 e0033cc:	e38135ff 	orr	r3, r1, #1069547520	; 0x3fc00000
 e0033d0:	e3833602 	orr	r3, r3, #2097152	; 0x200000
 e0033d4:	ec432b10 	vmov	d0, r2, r3
 e0033d8:	e12fff1e 	bx	lr
 e0033dc:	e320f000 	nop	{0}
 e0033e0:	00000000 	.word	0x00000000
 e0033e4:	43500000 	.word	0x43500000
 e0033e8:	7fefffff 	.word	0x7fefffff
 e0033ec:	7ff00000 	.word	0x7ff00000

0e0033f0 <__sprint_r>:
 e0033f0:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e0033f4:	e1a04002 	mov	r4, r2
 e0033f8:	e5923008 	ldr	r3, [r2, #8]
 e0033fc:	e3530000 	cmp	r3, #0
 e003400:	1a000002 	bne	e003410 <__sprint_r+0x20>
 e003404:	e1a00003 	mov	r0, r3
 e003408:	e5823004 	str	r3, [r2, #4]
 e00340c:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e003410:	e5913064 	ldr	r3, [r1, #100]	; 0x64
 e003414:	e1a07001 	mov	r7, r1
 e003418:	e3130a02 	tst	r3, #8192	; 0x2000
 e00341c:	0a00001b 	beq	e003490 <__sprint_r+0xa0>
 e003420:	e5925000 	ldr	r5, [r2]
 e003424:	e1a08000 	mov	r8, r0
 e003428:	e2855008 	add	r5, r5, #8
 e00342c:	e5156004 	ldr	r6, [r5, #-4]
 e003430:	e3a09000 	mov	r9, #0
 e003434:	e515b008 	ldr	fp, [r5, #-8]
 e003438:	e1a0a126 	lsr	sl, r6, #2
 e00343c:	e15a0009 	cmp	sl, r9
 e003440:	ca00000a 	bgt	e003470 <__sprint_r+0x80>
 e003444:	e5940008 	ldr	r0, [r4, #8]
 e003448:	e3c66003 	bic	r6, r6, #3
 e00344c:	e2855008 	add	r5, r5, #8
 e003450:	e0400006 	sub	r0, r0, r6
 e003454:	e5840008 	str	r0, [r4, #8]
 e003458:	e3500000 	cmp	r0, #0
 e00345c:	1afffff2 	bne	e00342c <__sprint_r+0x3c>
 e003460:	e3a03000 	mov	r3, #0
 e003464:	e5843008 	str	r3, [r4, #8]
 e003468:	e5843004 	str	r3, [r4, #4]
 e00346c:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e003470:	e79b1109 	ldr	r1, [fp, r9, lsl #2]
 e003474:	e1a02007 	mov	r2, r7
 e003478:	e1a00008 	mov	r0, r8
 e00347c:	eb000c8c 	bl	e0066b4 <_fputwc_r>
 e003480:	e3700001 	cmn	r0, #1
 e003484:	0afffff5 	beq	e003460 <__sprint_r+0x70>
 e003488:	e2899001 	add	r9, r9, #1
 e00348c:	eaffffea 	b	e00343c <__sprint_r+0x4c>
 e003490:	eb000cbc 	bl	e006788 <__sfvwrite_r>
 e003494:	eafffff1 	b	e003460 <__sprint_r+0x70>

0e003498 <_vfiprintf_r>:
 e003498:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e00349c:	e1a08001 	mov	r8, r1
 e0034a0:	e1a04003 	mov	r4, r3
 e0034a4:	e24dd0ec 	sub	sp, sp, #236	; 0xec
 e0034a8:	e1a05003 	mov	r5, r3
 e0034ac:	e2509000 	subs	r9, r0, #0
 e0034b0:	e58d2008 	str	r2, [sp, #8]
 e0034b4:	0a000003 	beq	e0034c8 <_vfiprintf_r+0x30>
 e0034b8:	e5993018 	ldr	r3, [r9, #24]
 e0034bc:	e3530000 	cmp	r3, #0
 e0034c0:	1a000000 	bne	e0034c8 <_vfiprintf_r+0x30>
 e0034c4:	ebfff535 	bl	e0009a0 <__sinit>
 e0034c8:	e5983064 	ldr	r3, [r8, #100]	; 0x64
 e0034cc:	e3130001 	tst	r3, #1
 e0034d0:	1a000004 	bne	e0034e8 <_vfiprintf_r+0x50>
 e0034d4:	e1d830bc 	ldrh	r3, [r8, #12]
 e0034d8:	e3130c02 	tst	r3, #512	; 0x200
 e0034dc:	1a000001 	bne	e0034e8 <_vfiprintf_r+0x50>
 e0034e0:	e5980058 	ldr	r0, [r8, #88]	; 0x58
 e0034e4:	ebfff5fb 	bl	e000cd8 <__retarget_lock_acquire_recursive>
 e0034e8:	e1d830fc 	ldrsh	r3, [r8, #12]
 e0034ec:	e3130a02 	tst	r3, #8192	; 0x2000
 e0034f0:	1a000004 	bne	e003508 <_vfiprintf_r+0x70>
 e0034f4:	e3833a02 	orr	r3, r3, #8192	; 0x2000
 e0034f8:	e1c830bc 	strh	r3, [r8, #12]
 e0034fc:	e5983064 	ldr	r3, [r8, #100]	; 0x64
 e003500:	e3c33a02 	bic	r3, r3, #8192	; 0x2000
 e003504:	e5883064 	str	r3, [r8, #100]	; 0x64
 e003508:	e1d830bc 	ldrh	r3, [r8, #12]
 e00350c:	e3130008 	tst	r3, #8
 e003510:	0a000002 	beq	e003520 <_vfiprintf_r+0x88>
 e003514:	e5983010 	ldr	r3, [r8, #16]
 e003518:	e3530000 	cmp	r3, #0
 e00351c:	1a000012 	bne	e00356c <_vfiprintf_r+0xd4>
 e003520:	e1a01008 	mov	r1, r8
 e003524:	e1a00009 	mov	r0, r9
 e003528:	eb000bd6 	bl	e006488 <__swsetup_r>
 e00352c:	e3500000 	cmp	r0, #0
 e003530:	0a00000d 	beq	e00356c <_vfiprintf_r+0xd4>
 e003534:	e5983064 	ldr	r3, [r8, #100]	; 0x64
 e003538:	e3130001 	tst	r3, #1
 e00353c:	0a000004 	beq	e003554 <_vfiprintf_r+0xbc>
 e003540:	e3e03000 	mvn	r3, #0
 e003544:	e58d300c 	str	r3, [sp, #12]
 e003548:	e59d000c 	ldr	r0, [sp, #12]
 e00354c:	e28dd0ec 	add	sp, sp, #236	; 0xec
 e003550:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e003554:	e1d830bc 	ldrh	r3, [r8, #12]
 e003558:	e3130c02 	tst	r3, #512	; 0x200
 e00355c:	1afffff7 	bne	e003540 <_vfiprintf_r+0xa8>
 e003560:	e5980058 	ldr	r0, [r8, #88]	; 0x58
 e003564:	ebfff5e1 	bl	e000cf0 <__retarget_lock_release_recursive>
 e003568:	eafffff4 	b	e003540 <_vfiprintf_r+0xa8>
 e00356c:	e1d830bc 	ldrh	r3, [r8, #12]
 e003570:	e203201a 	and	r2, r3, #26
 e003574:	e352000a 	cmp	r2, #10
 e003578:	1a000010 	bne	e0035c0 <_vfiprintf_r+0x128>
 e00357c:	e1d820fe 	ldrsh	r2, [r8, #14]
 e003580:	e3520000 	cmp	r2, #0
 e003584:	ba00000d 	blt	e0035c0 <_vfiprintf_r+0x128>
 e003588:	e5982064 	ldr	r2, [r8, #100]	; 0x64
 e00358c:	e3120001 	tst	r2, #1
 e003590:	1a000003 	bne	e0035a4 <_vfiprintf_r+0x10c>
 e003594:	e3130c02 	tst	r3, #512	; 0x200
 e003598:	1a000001 	bne	e0035a4 <_vfiprintf_r+0x10c>
 e00359c:	e5980058 	ldr	r0, [r8, #88]	; 0x58
 e0035a0:	ebfff5d2 	bl	e000cf0 <__retarget_lock_release_recursive>
 e0035a4:	e59d2008 	ldr	r2, [sp, #8]
 e0035a8:	e1a03004 	mov	r3, r4
 e0035ac:	e1a01008 	mov	r1, r8
 e0035b0:	e1a00009 	mov	r0, r9
 e0035b4:	e28dd0ec 	add	sp, sp, #236	; 0xec
 e0035b8:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e0035bc:	ea00036d 	b	e004378 <__sbprintf>
 e0035c0:	e3a03000 	mov	r3, #0
 e0035c4:	e28d7044 	add	r7, sp, #68	; 0x44
 e0035c8:	e58d3040 	str	r3, [sp, #64]	; 0x40
 e0035cc:	e58d7038 	str	r7, [sp, #56]	; 0x38
 e0035d0:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e0035d4:	e58d3018 	str	r3, [sp, #24]
 e0035d8:	e58d301c 	str	r3, [sp, #28]
 e0035dc:	e58d3020 	str	r3, [sp, #32]
 e0035e0:	e58d3024 	str	r3, [sp, #36]	; 0x24
 e0035e4:	e58d300c 	str	r3, [sp, #12]
 e0035e8:	e59d2008 	ldr	r2, [sp, #8]
 e0035ec:	e5d23000 	ldrb	r3, [r2]
 e0035f0:	e1a04002 	mov	r4, r2
 e0035f4:	e2822001 	add	r2, r2, #1
 e0035f8:	e3530000 	cmp	r3, #0
 e0035fc:	13530025 	cmpne	r3, #37	; 0x25
 e003600:	1afffff9 	bne	e0035ec <_vfiprintf_r+0x154>
 e003604:	e59d3008 	ldr	r3, [sp, #8]
 e003608:	e0546003 	subs	r6, r4, r3
 e00360c:	0a000013 	beq	e003660 <_vfiprintf_r+0x1c8>
 e003610:	e8870048 	stm	r7, {r3, r6}
 e003614:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
 e003618:	e0833006 	add	r3, r3, r6
 e00361c:	e58d3040 	str	r3, [sp, #64]	; 0x40
 e003620:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
 e003624:	e2833001 	add	r3, r3, #1
 e003628:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e00362c:	e3530007 	cmp	r3, #7
 e003630:	d2877008 	addle	r7, r7, #8
 e003634:	da000006 	ble	e003654 <_vfiprintf_r+0x1bc>
 e003638:	e28d2038 	add	r2, sp, #56	; 0x38
 e00363c:	e1a01008 	mov	r1, r8
 e003640:	e1a00009 	mov	r0, r9
 e003644:	ebffff69 	bl	e0033f0 <__sprint_r>
 e003648:	e3500000 	cmp	r0, #0
 e00364c:	1a0002cc 	bne	e004184 <_vfiprintf_r+0xcec>
 e003650:	e28d7044 	add	r7, sp, #68	; 0x44
 e003654:	e59d300c 	ldr	r3, [sp, #12]
 e003658:	e0833006 	add	r3, r3, r6
 e00365c:	e58d300c 	str	r3, [sp, #12]
 e003660:	e5d43000 	ldrb	r3, [r4]
 e003664:	e3530000 	cmp	r3, #0
 e003668:	0a0002e1 	beq	e0041f4 <_vfiprintf_r+0xd5c>
 e00366c:	e3a03000 	mov	r3, #0
 e003670:	e2842001 	add	r2, r4, #1
 e003674:	e1a04003 	mov	r4, r3
 e003678:	e3e01000 	mvn	r1, #0
 e00367c:	e5cd3033 	strb	r3, [sp, #51]	; 0x33
 e003680:	e58d1004 	str	r1, [sp, #4]
 e003684:	e58d3010 	str	r3, [sp, #16]
 e003688:	e4d23001 	ldrb	r3, [r2], #1
 e00368c:	e58d2008 	str	r2, [sp, #8]
 e003690:	e2432020 	sub	r2, r3, #32
 e003694:	e352005a 	cmp	r2, #90	; 0x5a
 e003698:	979ff102 	ldrls	pc, [pc, r2, lsl #2]
 e00369c:	ea000250 	b	e003fe4 <_vfiprintf_r+0xb4c>
 e0036a0:	0e0038a8 	.word	0x0e0038a8
 e0036a4:	0e003fe4 	.word	0x0e003fe4
 e0036a8:	0e003fe4 	.word	0x0e003fe4
 e0036ac:	0e0038c0 	.word	0x0e0038c0
 e0036b0:	0e003fe4 	.word	0x0e003fe4
 e0036b4:	0e003fe4 	.word	0x0e003fe4
 e0036b8:	0e003fe4 	.word	0x0e003fe4
 e0036bc:	0e003858 	.word	0x0e003858
 e0036c0:	0e003fe4 	.word	0x0e003fe4
 e0036c4:	0e003fe4 	.word	0x0e003fe4
 e0036c8:	0e0038c8 	.word	0x0e0038c8
 e0036cc:	0e0038e8 	.word	0x0e0038e8
 e0036d0:	0e003fe4 	.word	0x0e003fe4
 e0036d4:	0e0038e0 	.word	0x0e0038e0
 e0036d8:	0e0038f0 	.word	0x0e0038f0
 e0036dc:	0e003fe4 	.word	0x0e003fe4
 e0036e0:	0e003944 	.word	0x0e003944
 e0036e4:	0e00394c 	.word	0x0e00394c
 e0036e8:	0e00394c 	.word	0x0e00394c
 e0036ec:	0e00394c 	.word	0x0e00394c
 e0036f0:	0e00394c 	.word	0x0e00394c
 e0036f4:	0e00394c 	.word	0x0e00394c
 e0036f8:	0e00394c 	.word	0x0e00394c
 e0036fc:	0e00394c 	.word	0x0e00394c
 e003700:	0e00394c 	.word	0x0e00394c
 e003704:	0e00394c 	.word	0x0e00394c
 e003708:	0e003fe4 	.word	0x0e003fe4
 e00370c:	0e003fe4 	.word	0x0e003fe4
 e003710:	0e003fe4 	.word	0x0e003fe4
 e003714:	0e003fe4 	.word	0x0e003fe4
 e003718:	0e003fe4 	.word	0x0e003fe4
 e00371c:	0e003fe4 	.word	0x0e003fe4
 e003720:	0e003fe4 	.word	0x0e003fe4
 e003724:	0e003fe4 	.word	0x0e003fe4
 e003728:	0e003fe4 	.word	0x0e003fe4
 e00372c:	0e0039cc 	.word	0x0e0039cc
 e003730:	0e0039f4 	.word	0x0e0039f4
 e003734:	0e003fe4 	.word	0x0e003fe4
 e003738:	0e003fe4 	.word	0x0e003fe4
 e00373c:	0e003fe4 	.word	0x0e003fe4
 e003740:	0e003fe4 	.word	0x0e003fe4
 e003744:	0e003fe4 	.word	0x0e003fe4
 e003748:	0e003fe4 	.word	0x0e003fe4
 e00374c:	0e003fe4 	.word	0x0e003fe4
 e003750:	0e003fe4 	.word	0x0e003fe4
 e003754:	0e003fe4 	.word	0x0e003fe4
 e003758:	0e003fe4 	.word	0x0e003fe4
 e00375c:	0e003b54 	.word	0x0e003b54
 e003760:	0e003fe4 	.word	0x0e003fe4
 e003764:	0e003fe4 	.word	0x0e003fe4
 e003768:	0e003fe4 	.word	0x0e003fe4
 e00376c:	0e003be4 	.word	0x0e003be4
 e003770:	0e003fe4 	.word	0x0e003fe4
 e003774:	0e003ed0 	.word	0x0e003ed0
 e003778:	0e003fe4 	.word	0x0e003fe4
 e00377c:	0e003fe4 	.word	0x0e003fe4
 e003780:	0e003f2c 	.word	0x0e003f2c
 e003784:	0e003fe4 	.word	0x0e003fe4
 e003788:	0e003fe4 	.word	0x0e003fe4
 e00378c:	0e003fe4 	.word	0x0e003fe4
 e003790:	0e003fe4 	.word	0x0e003fe4
 e003794:	0e003fe4 	.word	0x0e003fe4
 e003798:	0e003fe4 	.word	0x0e003fe4
 e00379c:	0e003fe4 	.word	0x0e003fe4
 e0037a0:	0e003fe4 	.word	0x0e003fe4
 e0037a4:	0e003fe4 	.word	0x0e003fe4
 e0037a8:	0e003fe4 	.word	0x0e003fe4
 e0037ac:	0e0039cc 	.word	0x0e0039cc
 e0037b0:	0e0039f8 	.word	0x0e0039f8
 e0037b4:	0e003fe4 	.word	0x0e003fe4
 e0037b8:	0e003fe4 	.word	0x0e003fe4
 e0037bc:	0e003fe4 	.word	0x0e003fe4
 e0037c0:	0e003980 	.word	0x0e003980
 e0037c4:	0e0039f8 	.word	0x0e0039f8
 e0037c8:	0e0039c4 	.word	0x0e0039c4
 e0037cc:	0e003fe4 	.word	0x0e003fe4
 e0037d0:	0e0039a4 	.word	0x0e0039a4
 e0037d4:	0e003fe4 	.word	0x0e003fe4
 e0037d8:	0e003ae8 	.word	0x0e003ae8
 e0037dc:	0e003b58 	.word	0x0e003b58
 e0037e0:	0e003bbc 	.word	0x0e003bbc
 e0037e4:	0e0039c4 	.word	0x0e0039c4
 e0037e8:	0e003fe4 	.word	0x0e003fe4
 e0037ec:	0e003be4 	.word	0x0e003be4
 e0037f0:	0e0038a0 	.word	0x0e0038a0
 e0037f4:	0e003ed4 	.word	0x0e003ed4
 e0037f8:	0e003fe4 	.word	0x0e003fe4
 e0037fc:	0e003fe4 	.word	0x0e003fe4
 e003800:	0e00380c 	.word	0x0e00380c
 e003804:	0e003fe4 	.word	0x0e003fe4
 e003808:	0e0038a0 	.word	0x0e0038a0
 e00380c:	e59f2b38 	ldr	r2, [pc, #2872]	; e00434c <_vfiprintf_r+0xeb4>
 e003810:	e58d2018 	str	r2, [sp, #24]
 e003814:	e2142020 	ands	r2, r4, #32
 e003818:	0a0001c5 	beq	e003f34 <_vfiprintf_r+0xa9c>
 e00381c:	e2855007 	add	r5, r5, #7
 e003820:	e3c52007 	bic	r2, r5, #7
 e003824:	e1a0a002 	mov	sl, r2
 e003828:	e5926004 	ldr	r6, [r2, #4]
 e00382c:	e49a5008 	ldr	r5, [sl], #8
 e003830:	e1952006 	orrs	r2, r5, r6
 e003834:	12042001 	andne	r2, r4, #1
 e003838:	03a02000 	moveq	r2, #0
 e00383c:	e3520000 	cmp	r2, #0
 e003840:	15cd3035 	strbne	r3, [sp, #53]	; 0x35
 e003844:	13844002 	orrne	r4, r4, #2
 e003848:	13a02030 	movne	r2, #48	; 0x30
 e00384c:	e3c44b01 	bic	r4, r4, #1024	; 0x400
 e003850:	15cd2034 	strbne	r2, [sp, #52]	; 0x34
 e003854:	ea0000e0 	b	e003bdc <_vfiprintf_r+0x744>
 e003858:	e1a00009 	mov	r0, r9
 e00385c:	ebfffade 	bl	e0023dc <_localeconv_r>
 e003860:	e5903004 	ldr	r3, [r0, #4]
 e003864:	e58d3024 	str	r3, [sp, #36]	; 0x24
 e003868:	e1a00003 	mov	r0, r3
 e00386c:	eb0025c7 	bl	e00cf90 <__wrap_strlen>
 e003870:	e58d0020 	str	r0, [sp, #32]
 e003874:	e1a00009 	mov	r0, r9
 e003878:	ebfffad7 	bl	e0023dc <_localeconv_r>
 e00387c:	e5903008 	ldr	r3, [r0, #8]
 e003880:	e58d301c 	str	r3, [sp, #28]
 e003884:	e1cd21dc 	ldrd	r2, [sp, #28]
 e003888:	e3530000 	cmp	r3, #0
 e00388c:	13520000 	cmpne	r2, #0
 e003890:	0a000002 	beq	e0038a0 <_vfiprintf_r+0x408>
 e003894:	e5d23000 	ldrb	r3, [r2]
 e003898:	e3530000 	cmp	r3, #0
 e00389c:	13844b01 	orrne	r4, r4, #1024	; 0x400
 e0038a0:	e59d2008 	ldr	r2, [sp, #8]
 e0038a4:	eaffff77 	b	e003688 <_vfiprintf_r+0x1f0>
 e0038a8:	e5dd3033 	ldrb	r3, [sp, #51]	; 0x33
 e0038ac:	e3530000 	cmp	r3, #0
 e0038b0:	03a03020 	moveq	r3, #32
 e0038b4:	1afffff9 	bne	e0038a0 <_vfiprintf_r+0x408>
 e0038b8:	e5cd3033 	strb	r3, [sp, #51]	; 0x33
 e0038bc:	eafffff7 	b	e0038a0 <_vfiprintf_r+0x408>
 e0038c0:	e3844001 	orr	r4, r4, #1
 e0038c4:	eafffff5 	b	e0038a0 <_vfiprintf_r+0x408>
 e0038c8:	e4953004 	ldr	r3, [r5], #4
 e0038cc:	e58d3010 	str	r3, [sp, #16]
 e0038d0:	e3530000 	cmp	r3, #0
 e0038d4:	aafffff1 	bge	e0038a0 <_vfiprintf_r+0x408>
 e0038d8:	e2633000 	rsb	r3, r3, #0
 e0038dc:	e58d3010 	str	r3, [sp, #16]
 e0038e0:	e3844004 	orr	r4, r4, #4
 e0038e4:	eaffffed 	b	e0038a0 <_vfiprintf_r+0x408>
 e0038e8:	e3a0302b 	mov	r3, #43	; 0x2b
 e0038ec:	eafffff1 	b	e0038b8 <_vfiprintf_r+0x420>
 e0038f0:	e59d2008 	ldr	r2, [sp, #8]
 e0038f4:	e4d23001 	ldrb	r3, [r2], #1
 e0038f8:	e353002a 	cmp	r3, #42	; 0x2a
 e0038fc:	1a00000d 	bne	e003938 <_vfiprintf_r+0x4a0>
 e003900:	e4950004 	ldr	r0, [r5], #4
 e003904:	e58d2008 	str	r2, [sp, #8]
 e003908:	e1803fc0 	orr	r3, r0, r0, asr #31
 e00390c:	e58d3004 	str	r3, [sp, #4]
 e003910:	eaffffe2 	b	e0038a0 <_vfiprintf_r+0x408>
 e003914:	e59d3004 	ldr	r3, [sp, #4]
 e003918:	e3a0000a 	mov	r0, #10
 e00391c:	e0231390 	mla	r3, r0, r3, r1
 e003920:	e58d3004 	str	r3, [sp, #4]
 e003924:	e4d23001 	ldrb	r3, [r2], #1
 e003928:	e2431030 	sub	r1, r3, #48	; 0x30
 e00392c:	e3510009 	cmp	r1, #9
 e003930:	9afffff7 	bls	e003914 <_vfiprintf_r+0x47c>
 e003934:	eaffff54 	b	e00368c <_vfiprintf_r+0x1f4>
 e003938:	e3a01000 	mov	r1, #0
 e00393c:	e58d1004 	str	r1, [sp, #4]
 e003940:	eafffff8 	b	e003928 <_vfiprintf_r+0x490>
 e003944:	e3844080 	orr	r4, r4, #128	; 0x80
 e003948:	eaffffd4 	b	e0038a0 <_vfiprintf_r+0x408>
 e00394c:	e59d2008 	ldr	r2, [sp, #8]
 e003950:	e3a01000 	mov	r1, #0
 e003954:	e58d1010 	str	r1, [sp, #16]
 e003958:	e59d1010 	ldr	r1, [sp, #16]
 e00395c:	e2433030 	sub	r3, r3, #48	; 0x30
 e003960:	e3a0000a 	mov	r0, #10
 e003964:	e0233190 	mla	r3, r0, r1, r3
 e003968:	e58d3010 	str	r3, [sp, #16]
 e00396c:	e4d23001 	ldrb	r3, [r2], #1
 e003970:	e2431030 	sub	r1, r3, #48	; 0x30
 e003974:	e3510009 	cmp	r1, #9
 e003978:	9afffff6 	bls	e003958 <_vfiprintf_r+0x4c0>
 e00397c:	eaffff42 	b	e00368c <_vfiprintf_r+0x1f4>
 e003980:	e59d3008 	ldr	r3, [sp, #8]
 e003984:	e5d33000 	ldrb	r3, [r3]
 e003988:	e3530068 	cmp	r3, #104	; 0x68
 e00398c:	03844c02 	orreq	r4, r4, #512	; 0x200
 e003990:	13844040 	orrne	r4, r4, #64	; 0x40
 e003994:	059d3008 	ldreq	r3, [sp, #8]
 e003998:	02833001 	addeq	r3, r3, #1
 e00399c:	058d3008 	streq	r3, [sp, #8]
 e0039a0:	eaffffbe 	b	e0038a0 <_vfiprintf_r+0x408>
 e0039a4:	e59d3008 	ldr	r3, [sp, #8]
 e0039a8:	e5d33000 	ldrb	r3, [r3]
 e0039ac:	e353006c 	cmp	r3, #108	; 0x6c
 e0039b0:	13844010 	orrne	r4, r4, #16
 e0039b4:	059d3008 	ldreq	r3, [sp, #8]
 e0039b8:	02833001 	addeq	r3, r3, #1
 e0039bc:	058d3008 	streq	r3, [sp, #8]
 e0039c0:	1affffb6 	bne	e0038a0 <_vfiprintf_r+0x408>
 e0039c4:	e3844020 	orr	r4, r4, #32
 e0039c8:	eaffffb4 	b	e0038a0 <_vfiprintf_r+0x408>
 e0039cc:	e1a0a005 	mov	sl, r5
 e0039d0:	e3a0b000 	mov	fp, #0
 e0039d4:	e5cdb033 	strb	fp, [sp, #51]	; 0x33
 e0039d8:	e49a3004 	ldr	r3, [sl], #4
 e0039dc:	e5cd3084 	strb	r3, [sp, #132]	; 0x84
 e0039e0:	e3a03001 	mov	r3, #1
 e0039e4:	e1a0600b 	mov	r6, fp
 e0039e8:	e58d3004 	str	r3, [sp, #4]
 e0039ec:	e28db084 	add	fp, sp, #132	; 0x84
 e0039f0:	ea000090 	b	e003c38 <_vfiprintf_r+0x7a0>
 e0039f4:	e3844010 	orr	r4, r4, #16
 e0039f8:	e3140020 	tst	r4, #32
 e0039fc:	0a000029 	beq	e003aa8 <_vfiprintf_r+0x610>
 e003a00:	e2855007 	add	r5, r5, #7
 e003a04:	e3c53007 	bic	r3, r5, #7
 e003a08:	e1a0a003 	mov	sl, r3
 e003a0c:	e5936004 	ldr	r6, [r3, #4]
 e003a10:	e49a5008 	ldr	r5, [sl], #8
 e003a14:	e3560000 	cmp	r6, #0
 e003a18:	aa000202 	bge	e004228 <_vfiprintf_r+0xd90>
 e003a1c:	e2755000 	rsbs	r5, r5, #0
 e003a20:	e3a0302d 	mov	r3, #45	; 0x2d
 e003a24:	e2e66000 	rsc	r6, r6, #0
 e003a28:	e5cd3033 	strb	r3, [sp, #51]	; 0x33
 e003a2c:	e3a03001 	mov	r3, #1
 e003a30:	e59d2004 	ldr	r2, [sp, #4]
 e003a34:	e3720001 	cmn	r2, #1
 e003a38:	11a01004 	movne	r1, r4
 e003a3c:	1a000149 	bne	e003f68 <_vfiprintf_r+0xad0>
 e003a40:	e3530001 	cmp	r3, #1
 e003a44:	0a0001fc 	beq	e00423c <_vfiprintf_r+0xda4>
 e003a48:	e28db0e8 	add	fp, sp, #232	; 0xe8
 e003a4c:	e3530002 	cmp	r3, #2
 e003a50:	0a000156 	beq	e003fb0 <_vfiprintf_r+0xb18>
 e003a54:	e2053007 	and	r3, r5, #7
 e003a58:	e1a051a5 	lsr	r5, r5, #3
 e003a5c:	e1855e86 	orr	r5, r5, r6, lsl #29
 e003a60:	e1a061a6 	lsr	r6, r6, #3
 e003a64:	e1a0200b 	mov	r2, fp
 e003a68:	e2833030 	add	r3, r3, #48	; 0x30
 e003a6c:	e1951006 	orrs	r1, r5, r6
 e003a70:	e56b3001 	strb	r3, [fp, #-1]!
 e003a74:	1afffff6 	bne	e003a54 <_vfiprintf_r+0x5bc>
 e003a78:	e3530030 	cmp	r3, #48	; 0x30
 e003a7c:	03a01000 	moveq	r1, #0
 e003a80:	12041001 	andne	r1, r4, #1
 e003a84:	e3510000 	cmp	r1, #0
 e003a88:	13a03030 	movne	r3, #48	; 0x30
 e003a8c:	154b3001 	strbne	r3, [fp, #-1]
 e003a90:	1242b002 	subne	fp, r2, #2
 e003a94:	e28d30e8 	add	r3, sp, #232	; 0xe8
 e003a98:	e59d6004 	ldr	r6, [sp, #4]
 e003a9c:	e043300b 	sub	r3, r3, fp
 e003aa0:	e58d3004 	str	r3, [sp, #4]
 e003aa4:	ea000063 	b	e003c38 <_vfiprintf_r+0x7a0>
 e003aa8:	e1a0a005 	mov	sl, r5
 e003aac:	e3140010 	tst	r4, #16
 e003ab0:	e49a6004 	ldr	r6, [sl], #4
 e003ab4:	0a000002 	beq	e003ac4 <_vfiprintf_r+0x62c>
 e003ab8:	e1a05006 	mov	r5, r6
 e003abc:	e1a06fc6 	asr	r6, r6, #31
 e003ac0:	eaffffd3 	b	e003a14 <_vfiprintf_r+0x57c>
 e003ac4:	e3140040 	tst	r4, #64	; 0x40
 e003ac8:	16bf5076 	sxthne	r5, r6
 e003acc:	17a067d6 	sbfxne	r6, r6, #15, #1
 e003ad0:	1affffcf 	bne	e003a14 <_vfiprintf_r+0x57c>
 e003ad4:	e3140c02 	tst	r4, #512	; 0x200
 e003ad8:	16af5076 	sxtbne	r5, r6
 e003adc:	17a063d6 	sbfxne	r6, r6, #7, #1
 e003ae0:	1affffcb 	bne	e003a14 <_vfiprintf_r+0x57c>
 e003ae4:	eafffff3 	b	e003ab8 <_vfiprintf_r+0x620>
 e003ae8:	e285a004 	add	sl, r5, #4
 e003aec:	e3140020 	tst	r4, #32
 e003af0:	0a000006 	beq	e003b10 <_vfiprintf_r+0x678>
 e003af4:	e5953000 	ldr	r3, [r5]
 e003af8:	e59d200c 	ldr	r2, [sp, #12]
 e003afc:	e59d100c 	ldr	r1, [sp, #12]
 e003b00:	e1a02fc2 	asr	r2, r2, #31
 e003b04:	e8830006 	stm	r3, {r1, r2}
 e003b08:	e1a0500a 	mov	r5, sl
 e003b0c:	eafffeb5 	b	e0035e8 <_vfiprintf_r+0x150>
 e003b10:	e3140010 	tst	r4, #16
 e003b14:	0a000003 	beq	e003b28 <_vfiprintf_r+0x690>
 e003b18:	e5953000 	ldr	r3, [r5]
 e003b1c:	e59d200c 	ldr	r2, [sp, #12]
 e003b20:	e5832000 	str	r2, [r3]
 e003b24:	eafffff7 	b	e003b08 <_vfiprintf_r+0x670>
 e003b28:	e3140040 	tst	r4, #64	; 0x40
 e003b2c:	15953000 	ldrne	r3, [r5]
 e003b30:	159d200c 	ldrne	r2, [sp, #12]
 e003b34:	11c320b0 	strhne	r2, [r3]
 e003b38:	1afffff2 	bne	e003b08 <_vfiprintf_r+0x670>
 e003b3c:	e3140c02 	tst	r4, #512	; 0x200
 e003b40:	15953000 	ldrne	r3, [r5]
 e003b44:	159d200c 	ldrne	r2, [sp, #12]
 e003b48:	15c32000 	strbne	r2, [r3]
 e003b4c:	1affffed 	bne	e003b08 <_vfiprintf_r+0x670>
 e003b50:	eafffff0 	b	e003b18 <_vfiprintf_r+0x680>
 e003b54:	e3844010 	orr	r4, r4, #16
 e003b58:	e2143020 	ands	r3, r4, #32
 e003b5c:	0a000009 	beq	e003b88 <_vfiprintf_r+0x6f0>
 e003b60:	e2855007 	add	r5, r5, #7
 e003b64:	e3c53007 	bic	r3, r5, #7
 e003b68:	e1a0a003 	mov	sl, r3
 e003b6c:	e5936004 	ldr	r6, [r3, #4]
 e003b70:	e49a5008 	ldr	r5, [sl], #8
 e003b74:	e3c44b01 	bic	r4, r4, #1024	; 0x400
 e003b78:	e3a03000 	mov	r3, #0
 e003b7c:	e3a02000 	mov	r2, #0
 e003b80:	e5cd2033 	strb	r2, [sp, #51]	; 0x33
 e003b84:	eaffffa9 	b	e003a30 <_vfiprintf_r+0x598>
 e003b88:	e1a0a005 	mov	sl, r5
 e003b8c:	e2146010 	ands	r6, r4, #16
 e003b90:	e49a5004 	ldr	r5, [sl], #4
 e003b94:	0a000001 	beq	e003ba0 <_vfiprintf_r+0x708>
 e003b98:	e1a06003 	mov	r6, r3
 e003b9c:	eafffff4 	b	e003b74 <_vfiprintf_r+0x6dc>
 e003ba0:	e2143040 	ands	r3, r4, #64	; 0x40
 e003ba4:	16ff5075 	uxthne	r5, r5
 e003ba8:	1afffff1 	bne	e003b74 <_vfiprintf_r+0x6dc>
 e003bac:	e2146c02 	ands	r6, r4, #512	; 0x200
 e003bb0:	0affffef 	beq	e003b74 <_vfiprintf_r+0x6dc>
 e003bb4:	e6ef5075 	uxtb	r5, r5
 e003bb8:	eafffff6 	b	e003b98 <_vfiprintf_r+0x700>
 e003bbc:	e1a0a005 	mov	sl, r5
 e003bc0:	e3073830 	movw	r3, #30768	; 0x7830
 e003bc4:	e3a06000 	mov	r6, #0
 e003bc8:	e1cd33b4 	strh	r3, [sp, #52]	; 0x34
 e003bcc:	e3844002 	orr	r4, r4, #2
 e003bd0:	e59f3774 	ldr	r3, [pc, #1908]	; e00434c <_vfiprintf_r+0xeb4>
 e003bd4:	e49a5004 	ldr	r5, [sl], #4
 e003bd8:	e58d3018 	str	r3, [sp, #24]
 e003bdc:	e3a03002 	mov	r3, #2
 e003be0:	eaffffe5 	b	e003b7c <_vfiprintf_r+0x6e4>
 e003be4:	e1a0a005 	mov	sl, r5
 e003be8:	e59d3004 	ldr	r3, [sp, #4]
 e003bec:	e3a05000 	mov	r5, #0
 e003bf0:	e5cd5033 	strb	r5, [sp, #51]	; 0x33
 e003bf4:	e3730001 	cmn	r3, #1
 e003bf8:	e49ab004 	ldr	fp, [sl], #4
 e003bfc:	0a000009 	beq	e003c28 <_vfiprintf_r+0x790>
 e003c00:	e1a02003 	mov	r2, r3
 e003c04:	e1a01005 	mov	r1, r5
 e003c08:	e1a0000b 	mov	r0, fp
 e003c0c:	eb0024d9 	bl	e00cf78 <__wrap_memchr>
 e003c10:	e2503000 	subs	r3, r0, #0
 e003c14:	1043300b 	subne	r3, r3, fp
 e003c18:	158d3004 	strne	r3, [sp, #4]
 e003c1c:	1a000004 	bne	e003c34 <_vfiprintf_r+0x79c>
 e003c20:	e1a06003 	mov	r6, r3
 e003c24:	ea000003 	b	e003c38 <_vfiprintf_r+0x7a0>
 e003c28:	e1a0000b 	mov	r0, fp
 e003c2c:	eb0024d7 	bl	e00cf90 <__wrap_strlen>
 e003c30:	e58d0004 	str	r0, [sp, #4]
 e003c34:	e1a06005 	mov	r6, r5
 e003c38:	e59d3004 	ldr	r3, [sp, #4]
 e003c3c:	e1560003 	cmp	r6, r3
 e003c40:	a1a03006 	movge	r3, r6
 e003c44:	e58d3014 	str	r3, [sp, #20]
 e003c48:	e5dd3033 	ldrb	r3, [sp, #51]	; 0x33
 e003c4c:	e3530000 	cmp	r3, #0
 e003c50:	159d3014 	ldrne	r3, [sp, #20]
 e003c54:	12833001 	addne	r3, r3, #1
 e003c58:	158d3014 	strne	r3, [sp, #20]
 e003c5c:	e2143002 	ands	r3, r4, #2
 e003c60:	e58d3028 	str	r3, [sp, #40]	; 0x28
 e003c64:	159d3014 	ldrne	r3, [sp, #20]
 e003c68:	12833002 	addne	r3, r3, #2
 e003c6c:	158d3014 	strne	r3, [sp, #20]
 e003c70:	e2143084 	ands	r3, r4, #132	; 0x84
 e003c74:	e58d302c 	str	r3, [sp, #44]	; 0x2c
 e003c78:	1a00001a 	bne	e003ce8 <_vfiprintf_r+0x850>
 e003c7c:	e59d3010 	ldr	r3, [sp, #16]
 e003c80:	e59d2014 	ldr	r2, [sp, #20]
 e003c84:	e0435002 	sub	r5, r3, r2
 e003c88:	e3550000 	cmp	r5, #0
 e003c8c:	da000015 	ble	e003ce8 <_vfiprintf_r+0x850>
 e003c90:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
 e003c94:	e2871008 	add	r1, r7, #8
 e003c98:	e59f06b0 	ldr	r0, [pc, #1712]	; e004350 <_vfiprintf_r+0xeb8>
 e003c9c:	e3550010 	cmp	r5, #16
 e003ca0:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
 e003ca4:	e2833001 	add	r3, r3, #1
 e003ca8:	e5870000 	str	r0, [r7]
 e003cac:	ca0000d3 	bgt	e004000 <_vfiprintf_r+0xb68>
 e003cb0:	e3530007 	cmp	r3, #7
 e003cb4:	e5875004 	str	r5, [r7, #4]
 e003cb8:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e003cbc:	e0855002 	add	r5, r5, r2
 e003cc0:	d1a07001 	movle	r7, r1
 e003cc4:	e58d5040 	str	r5, [sp, #64]	; 0x40
 e003cc8:	da000006 	ble	e003ce8 <_vfiprintf_r+0x850>
 e003ccc:	e28d2038 	add	r2, sp, #56	; 0x38
 e003cd0:	e1a01008 	mov	r1, r8
 e003cd4:	e1a00009 	mov	r0, r9
 e003cd8:	ebfffdc4 	bl	e0033f0 <__sprint_r>
 e003cdc:	e3500000 	cmp	r0, #0
 e003ce0:	1a000127 	bne	e004184 <_vfiprintf_r+0xcec>
 e003ce4:	e28d7044 	add	r7, sp, #68	; 0x44
 e003ce8:	e5dd3033 	ldrb	r3, [sp, #51]	; 0x33
 e003cec:	e3530000 	cmp	r3, #0
 e003cf0:	0a000013 	beq	e003d44 <_vfiprintf_r+0x8ac>
 e003cf4:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
 e003cf8:	e28d2033 	add	r2, sp, #51	; 0x33
 e003cfc:	e5872000 	str	r2, [r7]
 e003d00:	e3a02001 	mov	r2, #1
 e003d04:	e2833001 	add	r3, r3, #1
 e003d08:	e5872004 	str	r2, [r7, #4]
 e003d0c:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
 e003d10:	e3530007 	cmp	r3, #7
 e003d14:	d2877008 	addle	r7, r7, #8
 e003d18:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e003d1c:	e2822001 	add	r2, r2, #1
 e003d20:	e58d2040 	str	r2, [sp, #64]	; 0x40
 e003d24:	da000006 	ble	e003d44 <_vfiprintf_r+0x8ac>
 e003d28:	e28d2038 	add	r2, sp, #56	; 0x38
 e003d2c:	e1a01008 	mov	r1, r8
 e003d30:	e1a00009 	mov	r0, r9
 e003d34:	ebfffdad 	bl	e0033f0 <__sprint_r>
 e003d38:	e3500000 	cmp	r0, #0
 e003d3c:	1a000110 	bne	e004184 <_vfiprintf_r+0xcec>
 e003d40:	e28d7044 	add	r7, sp, #68	; 0x44
 e003d44:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
 e003d48:	e3530000 	cmp	r3, #0
 e003d4c:	0a000013 	beq	e003da0 <_vfiprintf_r+0x908>
 e003d50:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
 e003d54:	e28d2034 	add	r2, sp, #52	; 0x34
 e003d58:	e5872000 	str	r2, [r7]
 e003d5c:	e3a02002 	mov	r2, #2
 e003d60:	e2833001 	add	r3, r3, #1
 e003d64:	e5872004 	str	r2, [r7, #4]
 e003d68:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
 e003d6c:	e3530007 	cmp	r3, #7
 e003d70:	d2877008 	addle	r7, r7, #8
 e003d74:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e003d78:	e2822002 	add	r2, r2, #2
 e003d7c:	e58d2040 	str	r2, [sp, #64]	; 0x40
 e003d80:	da000006 	ble	e003da0 <_vfiprintf_r+0x908>
 e003d84:	e28d2038 	add	r2, sp, #56	; 0x38
 e003d88:	e1a01008 	mov	r1, r8
 e003d8c:	e1a00009 	mov	r0, r9
 e003d90:	ebfffd96 	bl	e0033f0 <__sprint_r>
 e003d94:	e3500000 	cmp	r0, #0
 e003d98:	1a0000f9 	bne	e004184 <_vfiprintf_r+0xcec>
 e003d9c:	e28d7044 	add	r7, sp, #68	; 0x44
 e003da0:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
 e003da4:	e3530080 	cmp	r3, #128	; 0x80
 e003da8:	1a00001a 	bne	e003e18 <_vfiprintf_r+0x980>
 e003dac:	e59d3010 	ldr	r3, [sp, #16]
 e003db0:	e59d2014 	ldr	r2, [sp, #20]
 e003db4:	e0435002 	sub	r5, r3, r2
 e003db8:	e3550000 	cmp	r5, #0
 e003dbc:	da000015 	ble	e003e18 <_vfiprintf_r+0x980>
 e003dc0:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
 e003dc4:	e2871008 	add	r1, r7, #8
 e003dc8:	e59f0584 	ldr	r0, [pc, #1412]	; e004354 <_vfiprintf_r+0xebc>
 e003dcc:	e3550010 	cmp	r5, #16
 e003dd0:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
 e003dd4:	e2833001 	add	r3, r3, #1
 e003dd8:	e5870000 	str	r0, [r7]
 e003ddc:	ca000098 	bgt	e004044 <_vfiprintf_r+0xbac>
 e003de0:	e3530007 	cmp	r3, #7
 e003de4:	e5875004 	str	r5, [r7, #4]
 e003de8:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e003dec:	e0855002 	add	r5, r5, r2
 e003df0:	d1a07001 	movle	r7, r1
 e003df4:	e58d5040 	str	r5, [sp, #64]	; 0x40
 e003df8:	da000006 	ble	e003e18 <_vfiprintf_r+0x980>
 e003dfc:	e28d2038 	add	r2, sp, #56	; 0x38
 e003e00:	e1a01008 	mov	r1, r8
 e003e04:	e1a00009 	mov	r0, r9
 e003e08:	ebfffd78 	bl	e0033f0 <__sprint_r>
 e003e0c:	e3500000 	cmp	r0, #0
 e003e10:	1a0000db 	bne	e004184 <_vfiprintf_r+0xcec>
 e003e14:	e28d7044 	add	r7, sp, #68	; 0x44
 e003e18:	e59d3004 	ldr	r3, [sp, #4]
 e003e1c:	e0466003 	sub	r6, r6, r3
 e003e20:	e3560000 	cmp	r6, #0
 e003e24:	c59f5528 	ldrgt	r5, [pc, #1320]	; e004354 <_vfiprintf_r+0xebc>
 e003e28:	ca0000a6 	bgt	e0040c8 <_vfiprintf_r+0xc30>
 e003e2c:	e59d3004 	ldr	r3, [sp, #4]
 e003e30:	e59d0040 	ldr	r0, [sp, #64]	; 0x40
 e003e34:	e5873004 	str	r3, [r7, #4]
 e003e38:	e0800003 	add	r0, r0, r3
 e003e3c:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
 e003e40:	e587b000 	str	fp, [r7]
 e003e44:	e2833001 	add	r3, r3, #1
 e003e48:	e58d0040 	str	r0, [sp, #64]	; 0x40
 e003e4c:	e3530007 	cmp	r3, #7
 e003e50:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e003e54:	d2877008 	addle	r7, r7, #8
 e003e58:	da000006 	ble	e003e78 <_vfiprintf_r+0x9e0>
 e003e5c:	e28d2038 	add	r2, sp, #56	; 0x38
 e003e60:	e1a01008 	mov	r1, r8
 e003e64:	e1a00009 	mov	r0, r9
 e003e68:	ebfffd60 	bl	e0033f0 <__sprint_r>
 e003e6c:	e3500000 	cmp	r0, #0
 e003e70:	1a0000c3 	bne	e004184 <_vfiprintf_r+0xcec>
 e003e74:	e28d7044 	add	r7, sp, #68	; 0x44
 e003e78:	e3140004 	tst	r4, #4
 e003e7c:	1a0000a7 	bne	e004120 <_vfiprintf_r+0xc88>
 e003e80:	e59d300c 	ldr	r3, [sp, #12]
 e003e84:	e59d2010 	ldr	r2, [sp, #16]
 e003e88:	e59d1014 	ldr	r1, [sp, #20]
 e003e8c:	e1520001 	cmp	r2, r1
 e003e90:	a0833002 	addge	r3, r3, r2
 e003e94:	b0833001 	addlt	r3, r3, r1
 e003e98:	e58d300c 	str	r3, [sp, #12]
 e003e9c:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
 e003ea0:	e3530000 	cmp	r3, #0
 e003ea4:	0a000005 	beq	e003ec0 <_vfiprintf_r+0xa28>
 e003ea8:	e28d2038 	add	r2, sp, #56	; 0x38
 e003eac:	e1a01008 	mov	r1, r8
 e003eb0:	e1a00009 	mov	r0, r9
 e003eb4:	ebfffd4d 	bl	e0033f0 <__sprint_r>
 e003eb8:	e3500000 	cmp	r0, #0
 e003ebc:	1a0000b0 	bne	e004184 <_vfiprintf_r+0xcec>
 e003ec0:	e3a03000 	mov	r3, #0
 e003ec4:	e28d7044 	add	r7, sp, #68	; 0x44
 e003ec8:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e003ecc:	eaffff0d 	b	e003b08 <_vfiprintf_r+0x670>
 e003ed0:	e3844010 	orr	r4, r4, #16
 e003ed4:	e2143020 	ands	r3, r4, #32
 e003ed8:	0a000006 	beq	e003ef8 <_vfiprintf_r+0xa60>
 e003edc:	e2855007 	add	r5, r5, #7
 e003ee0:	e3c53007 	bic	r3, r5, #7
 e003ee4:	e1a0a003 	mov	sl, r3
 e003ee8:	e5936004 	ldr	r6, [r3, #4]
 e003eec:	e49a5008 	ldr	r5, [sl], #8
 e003ef0:	e3a03001 	mov	r3, #1
 e003ef4:	eaffff20 	b	e003b7c <_vfiprintf_r+0x6e4>
 e003ef8:	e1a0a005 	mov	sl, r5
 e003efc:	e2146010 	ands	r6, r4, #16
 e003f00:	e49a5004 	ldr	r5, [sl], #4
 e003f04:	0a000001 	beq	e003f10 <_vfiprintf_r+0xa78>
 e003f08:	e1a06003 	mov	r6, r3
 e003f0c:	eafffff7 	b	e003ef0 <_vfiprintf_r+0xa58>
 e003f10:	e2143040 	ands	r3, r4, #64	; 0x40
 e003f14:	16ff5075 	uxthne	r5, r5
 e003f18:	1afffff4 	bne	e003ef0 <_vfiprintf_r+0xa58>
 e003f1c:	e2146c02 	ands	r6, r4, #512	; 0x200
 e003f20:	0afffff2 	beq	e003ef0 <_vfiprintf_r+0xa58>
 e003f24:	e6ef5075 	uxtb	r5, r5
 e003f28:	eafffff6 	b	e003f08 <_vfiprintf_r+0xa70>
 e003f2c:	e59f2424 	ldr	r2, [pc, #1060]	; e004358 <_vfiprintf_r+0xec0>
 e003f30:	eafffe36 	b	e003810 <_vfiprintf_r+0x378>
 e003f34:	e1a0a005 	mov	sl, r5
 e003f38:	e2146010 	ands	r6, r4, #16
 e003f3c:	e49a5004 	ldr	r5, [sl], #4
 e003f40:	0a000001 	beq	e003f4c <_vfiprintf_r+0xab4>
 e003f44:	e1a06002 	mov	r6, r2
 e003f48:	eafffe38 	b	e003830 <_vfiprintf_r+0x398>
 e003f4c:	e2142040 	ands	r2, r4, #64	; 0x40
 e003f50:	16ff5075 	uxthne	r5, r5
 e003f54:	1afffe35 	bne	e003830 <_vfiprintf_r+0x398>
 e003f58:	e2146c02 	ands	r6, r4, #512	; 0x200
 e003f5c:	0afffe33 	beq	e003830 <_vfiprintf_r+0x398>
 e003f60:	e6ef5075 	uxtb	r5, r5
 e003f64:	eafffff6 	b	e003f44 <_vfiprintf_r+0xaac>
 e003f68:	e59d0004 	ldr	r0, [sp, #4]
 e003f6c:	e1852006 	orr	r2, r5, r6
 e003f70:	e3c44080 	bic	r4, r4, #128	; 0x80
 e003f74:	e3520000 	cmp	r2, #0
 e003f78:	03500000 	cmpeq	r0, #0
 e003f7c:	13a02001 	movne	r2, #1
 e003f80:	03a02000 	moveq	r2, #0
 e003f84:	1afffead 	bne	e003a40 <_vfiprintf_r+0x5a8>
 e003f88:	e3530000 	cmp	r3, #0
 e003f8c:	1a000011 	bne	e003fd8 <_vfiprintf_r+0xb40>
 e003f90:	e2112001 	ands	r2, r1, #1
 e003f94:	e58d2004 	str	r2, [sp, #4]
 e003f98:	0a00000f 	beq	e003fdc <_vfiprintf_r+0xb44>
 e003f9c:	e3a02030 	mov	r2, #48	; 0x30
 e003fa0:	e58d3004 	str	r3, [sp, #4]
 e003fa4:	e5cd20e7 	strb	r2, [sp, #231]	; 0xe7
 e003fa8:	e28db0e7 	add	fp, sp, #231	; 0xe7
 e003fac:	eafffeb8 	b	e003a94 <_vfiprintf_r+0x5fc>
 e003fb0:	e205300f 	and	r3, r5, #15
 e003fb4:	e59d2018 	ldr	r2, [sp, #24]
 e003fb8:	e1a05225 	lsr	r5, r5, #4
 e003fbc:	e1855e06 	orr	r5, r5, r6, lsl #28
 e003fc0:	e1a06226 	lsr	r6, r6, #4
 e003fc4:	e7d23003 	ldrb	r3, [r2, r3]
 e003fc8:	e56b3001 	strb	r3, [fp, #-1]!
 e003fcc:	e1953006 	orrs	r3, r5, r6
 e003fd0:	1afffff6 	bne	e003fb0 <_vfiprintf_r+0xb18>
 e003fd4:	eafffeae 	b	e003a94 <_vfiprintf_r+0x5fc>
 e003fd8:	e58d2004 	str	r2, [sp, #4]
 e003fdc:	e28db0e8 	add	fp, sp, #232	; 0xe8
 e003fe0:	eafffeab 	b	e003a94 <_vfiprintf_r+0x5fc>
 e003fe4:	e3530000 	cmp	r3, #0
 e003fe8:	0a000081 	beq	e0041f4 <_vfiprintf_r+0xd5c>
 e003fec:	e3a0b000 	mov	fp, #0
 e003ff0:	e1a0a005 	mov	sl, r5
 e003ff4:	e5cd3084 	strb	r3, [sp, #132]	; 0x84
 e003ff8:	e5cdb033 	strb	fp, [sp, #51]	; 0x33
 e003ffc:	eafffe77 	b	e0039e0 <_vfiprintf_r+0x548>
 e004000:	e3a00010 	mov	r0, #16
 e004004:	e3530007 	cmp	r3, #7
 e004008:	e0822000 	add	r2, r2, r0
 e00400c:	e5870004 	str	r0, [r7, #4]
 e004010:	e58d2040 	str	r2, [sp, #64]	; 0x40
 e004014:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e004018:	da000006 	ble	e004038 <_vfiprintf_r+0xba0>
 e00401c:	e28d2038 	add	r2, sp, #56	; 0x38
 e004020:	e1a01008 	mov	r1, r8
 e004024:	e1a00009 	mov	r0, r9
 e004028:	ebfffcf0 	bl	e0033f0 <__sprint_r>
 e00402c:	e3500000 	cmp	r0, #0
 e004030:	1a000053 	bne	e004184 <_vfiprintf_r+0xcec>
 e004034:	e28d1044 	add	r1, sp, #68	; 0x44
 e004038:	e2455010 	sub	r5, r5, #16
 e00403c:	e1a07001 	mov	r7, r1
 e004040:	eaffff12 	b	e003c90 <_vfiprintf_r+0x7f8>
 e004044:	e3a00010 	mov	r0, #16
 e004048:	e3530007 	cmp	r3, #7
 e00404c:	e0822000 	add	r2, r2, r0
 e004050:	e5870004 	str	r0, [r7, #4]
 e004054:	e58d2040 	str	r2, [sp, #64]	; 0x40
 e004058:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e00405c:	da000006 	ble	e00407c <_vfiprintf_r+0xbe4>
 e004060:	e28d2038 	add	r2, sp, #56	; 0x38
 e004064:	e1a01008 	mov	r1, r8
 e004068:	e1a00009 	mov	r0, r9
 e00406c:	ebfffcdf 	bl	e0033f0 <__sprint_r>
 e004070:	e3500000 	cmp	r0, #0
 e004074:	1a000042 	bne	e004184 <_vfiprintf_r+0xcec>
 e004078:	e28d1044 	add	r1, sp, #68	; 0x44
 e00407c:	e2455010 	sub	r5, r5, #16
 e004080:	e1a07001 	mov	r7, r1
 e004084:	eaffff4d 	b	e003dc0 <_vfiprintf_r+0x928>
 e004088:	e3a00010 	mov	r0, #16
 e00408c:	e3530007 	cmp	r3, #7
 e004090:	e0811000 	add	r1, r1, r0
 e004094:	e5870004 	str	r0, [r7, #4]
 e004098:	e58d1040 	str	r1, [sp, #64]	; 0x40
 e00409c:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e0040a0:	da000006 	ble	e0040c0 <_vfiprintf_r+0xc28>
 e0040a4:	e28d2038 	add	r2, sp, #56	; 0x38
 e0040a8:	e1a01008 	mov	r1, r8
 e0040ac:	e1a00009 	mov	r0, r9
 e0040b0:	ebfffcce 	bl	e0033f0 <__sprint_r>
 e0040b4:	e3500000 	cmp	r0, #0
 e0040b8:	1a000031 	bne	e004184 <_vfiprintf_r+0xcec>
 e0040bc:	e28d2044 	add	r2, sp, #68	; 0x44
 e0040c0:	e2466010 	sub	r6, r6, #16
 e0040c4:	e1a07002 	mov	r7, r2
 e0040c8:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
 e0040cc:	e2872008 	add	r2, r7, #8
 e0040d0:	e59d1040 	ldr	r1, [sp, #64]	; 0x40
 e0040d4:	e3560010 	cmp	r6, #16
 e0040d8:	e2833001 	add	r3, r3, #1
 e0040dc:	e5875000 	str	r5, [r7]
 e0040e0:	caffffe8 	bgt	e004088 <_vfiprintf_r+0xbf0>
 e0040e4:	e3530007 	cmp	r3, #7
 e0040e8:	e0861001 	add	r1, r6, r1
 e0040ec:	e5876004 	str	r6, [r7, #4]
 e0040f0:	d1a07002 	movle	r7, r2
 e0040f4:	e58d1040 	str	r1, [sp, #64]	; 0x40
 e0040f8:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e0040fc:	daffff4a 	ble	e003e2c <_vfiprintf_r+0x994>
 e004100:	e28d2038 	add	r2, sp, #56	; 0x38
 e004104:	e1a01008 	mov	r1, r8
 e004108:	e1a00009 	mov	r0, r9
 e00410c:	ebfffcb7 	bl	e0033f0 <__sprint_r>
 e004110:	e3500000 	cmp	r0, #0
 e004114:	1a00001a 	bne	e004184 <_vfiprintf_r+0xcec>
 e004118:	e28d7044 	add	r7, sp, #68	; 0x44
 e00411c:	eaffff42 	b	e003e2c <_vfiprintf_r+0x994>
 e004120:	e59d3010 	ldr	r3, [sp, #16]
 e004124:	e59d2014 	ldr	r2, [sp, #20]
 e004128:	e0434002 	sub	r4, r3, r2
 e00412c:	e3540000 	cmp	r4, #0
 e004130:	c3a06010 	movgt	r6, #16
 e004134:	c59f5214 	ldrgt	r5, [pc, #532]	; e004350 <_vfiprintf_r+0xeb8>
 e004138:	daffff50 	ble	e003e80 <_vfiprintf_r+0x9e8>
 e00413c:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
 e004140:	e3540010 	cmp	r4, #16
 e004144:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
 e004148:	e2833001 	add	r3, r3, #1
 e00414c:	e5875000 	str	r5, [r7]
 e004150:	ca000017 	bgt	e0041b4 <_vfiprintf_r+0xd1c>
 e004154:	e5874004 	str	r4, [r7, #4]
 e004158:	e3530007 	cmp	r3, #7
 e00415c:	e0844002 	add	r4, r4, r2
 e004160:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e004164:	e58d4040 	str	r4, [sp, #64]	; 0x40
 e004168:	daffff44 	ble	e003e80 <_vfiprintf_r+0x9e8>
 e00416c:	e28d2038 	add	r2, sp, #56	; 0x38
 e004170:	e1a01008 	mov	r1, r8
 e004174:	e1a00009 	mov	r0, r9
 e004178:	ebfffc9c 	bl	e0033f0 <__sprint_r>
 e00417c:	e3500000 	cmp	r0, #0
 e004180:	0affff3e 	beq	e003e80 <_vfiprintf_r+0x9e8>
 e004184:	e5983064 	ldr	r3, [r8, #100]	; 0x64
 e004188:	e3130001 	tst	r3, #1
 e00418c:	1a000004 	bne	e0041a4 <_vfiprintf_r+0xd0c>
 e004190:	e1d830bc 	ldrh	r3, [r8, #12]
 e004194:	e3130c02 	tst	r3, #512	; 0x200
 e004198:	1a000001 	bne	e0041a4 <_vfiprintf_r+0xd0c>
 e00419c:	e5980058 	ldr	r0, [r8, #88]	; 0x58
 e0041a0:	ebfff2d2 	bl	e000cf0 <__retarget_lock_release_recursive>
 e0041a4:	e1d830bc 	ldrh	r3, [r8, #12]
 e0041a8:	e3130040 	tst	r3, #64	; 0x40
 e0041ac:	0afffce5 	beq	e003548 <_vfiprintf_r+0xb0>
 e0041b0:	eafffce2 	b	e003540 <_vfiprintf_r+0xa8>
 e0041b4:	e3530007 	cmp	r3, #7
 e0041b8:	e2822010 	add	r2, r2, #16
 e0041bc:	e5876004 	str	r6, [r7, #4]
 e0041c0:	d2877008 	addle	r7, r7, #8
 e0041c4:	e58d2040 	str	r2, [sp, #64]	; 0x40
 e0041c8:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e0041cc:	da000006 	ble	e0041ec <_vfiprintf_r+0xd54>
 e0041d0:	e28d2038 	add	r2, sp, #56	; 0x38
 e0041d4:	e1a01008 	mov	r1, r8
 e0041d8:	e1a00009 	mov	r0, r9
 e0041dc:	ebfffc83 	bl	e0033f0 <__sprint_r>
 e0041e0:	e3500000 	cmp	r0, #0
 e0041e4:	1affffe6 	bne	e004184 <_vfiprintf_r+0xcec>
 e0041e8:	e28d7044 	add	r7, sp, #68	; 0x44
 e0041ec:	e2444010 	sub	r4, r4, #16
 e0041f0:	eaffffd1 	b	e00413c <_vfiprintf_r+0xca4>
 e0041f4:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
 e0041f8:	e3530000 	cmp	r3, #0
 e0041fc:	1a000002 	bne	e00420c <_vfiprintf_r+0xd74>
 e004200:	e3a03000 	mov	r3, #0
 e004204:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e004208:	eaffffdd 	b	e004184 <_vfiprintf_r+0xcec>
 e00420c:	e28d2038 	add	r2, sp, #56	; 0x38
 e004210:	e1a01008 	mov	r1, r8
 e004214:	e1a00009 	mov	r0, r9
 e004218:	ebfffc74 	bl	e0033f0 <__sprint_r>
 e00421c:	e3500000 	cmp	r0, #0
 e004220:	0afffff6 	beq	e004200 <_vfiprintf_r+0xd68>
 e004224:	eaffffd6 	b	e004184 <_vfiprintf_r+0xcec>
 e004228:	e59d3004 	ldr	r3, [sp, #4]
 e00422c:	e3730001 	cmn	r3, #1
 e004230:	11a01004 	movne	r1, r4
 e004234:	13a03001 	movne	r3, #1
 e004238:	1affff4a 	bne	e003f68 <_vfiprintf_r+0xad0>
 e00423c:	e355000a 	cmp	r5, #10
 e004240:	e2d63000 	sbcs	r3, r6, #0
 e004244:	32855030 	addcc	r5, r5, #48	; 0x30
 e004248:	35cd50e7 	strbcc	r5, [sp, #231]	; 0xe7
 e00424c:	3affff55 	bcc	e003fa8 <_vfiprintf_r+0xb10>
 e004250:	e3a03000 	mov	r3, #0
 e004254:	e58d3014 	str	r3, [sp, #20]
 e004258:	e28d30e8 	add	r3, sp, #232	; 0xe8
 e00425c:	e58d3028 	str	r3, [sp, #40]	; 0x28
 e004260:	e2043b01 	and	r3, r4, #1024	; 0x400
 e004264:	e58d302c 	str	r3, [sp, #44]	; 0x2c
 e004268:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
 e00426c:	e3a0200a 	mov	r2, #10
 e004270:	e1a00005 	mov	r0, r5
 e004274:	e1a01006 	mov	r1, r6
 e004278:	e243b001 	sub	fp, r3, #1
 e00427c:	e3a03000 	mov	r3, #0
 e004280:	ebfff043 	bl	e000394 <__aeabi_uldivmod>
 e004284:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
 e004288:	e2822030 	add	r2, r2, #48	; 0x30
 e00428c:	e5432001 	strb	r2, [r3, #-1]
 e004290:	e59d3014 	ldr	r3, [sp, #20]
 e004294:	e2833001 	add	r3, r3, #1
 e004298:	e58d3014 	str	r3, [sp, #20]
 e00429c:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
 e0042a0:	e3530000 	cmp	r3, #0
 e0042a4:	0a00001c 	beq	e00431c <_vfiprintf_r+0xe84>
 e0042a8:	e59d301c 	ldr	r3, [sp, #28]
 e0042ac:	e355000a 	cmp	r5, #10
 e0042b0:	e59d1014 	ldr	r1, [sp, #20]
 e0042b4:	e5d32000 	ldrb	r2, [r3]
 e0042b8:	e2d63000 	sbcs	r3, r6, #0
 e0042bc:	23a03001 	movcs	r3, #1
 e0042c0:	33a03000 	movcc	r3, #0
 e0042c4:	e35200ff 	cmp	r2, #255	; 0xff
 e0042c8:	03a03000 	moveq	r3, #0
 e0042cc:	12033001 	andne	r3, r3, #1
 e0042d0:	e1520001 	cmp	r2, r1
 e0042d4:	13a03000 	movne	r3, #0
 e0042d8:	02033001 	andeq	r3, r3, #1
 e0042dc:	e3530000 	cmp	r3, #0
 e0042e0:	0a00000d 	beq	e00431c <_vfiprintf_r+0xe84>
 e0042e4:	e59d3020 	ldr	r3, [sp, #32]
 e0042e8:	e59d1024 	ldr	r1, [sp, #36]	; 0x24
 e0042ec:	e04bb003 	sub	fp, fp, r3
 e0042f0:	e1a02003 	mov	r2, r3
 e0042f4:	e1a0000b 	mov	r0, fp
 e0042f8:	eb003ce9 	bl	e0136a4 <__wrap_strncpy>
 e0042fc:	e59d301c 	ldr	r3, [sp, #28]
 e004300:	e5d33001 	ldrb	r3, [r3, #1]
 e004304:	e3530000 	cmp	r3, #0
 e004308:	159d301c 	ldrne	r3, [sp, #28]
 e00430c:	12833001 	addne	r3, r3, #1
 e004310:	158d301c 	strne	r3, [sp, #28]
 e004314:	13a03000 	movne	r3, #0
 e004318:	e58d3014 	str	r3, [sp, #20]
 e00431c:	e3a03000 	mov	r3, #0
 e004320:	e3a0200a 	mov	r2, #10
 e004324:	e1a00005 	mov	r0, r5
 e004328:	e1a01006 	mov	r1, r6
 e00432c:	ebfff018 	bl	e000394 <__aeabi_uldivmod>
 e004330:	e355000a 	cmp	r5, #10
 e004334:	e2d63000 	sbcs	r3, r6, #0
 e004338:	3afffdd5 	bcc	e003a94 <_vfiprintf_r+0x5fc>
 e00433c:	e1a05000 	mov	r5, r0
 e004340:	e1a06001 	mov	r6, r1
 e004344:	e58db028 	str	fp, [sp, #40]	; 0x28
 e004348:	eaffffc6 	b	e004268 <_vfiprintf_r+0xdd0>
 e00434c:	0e015f0b 	.word	0x0e015f0b
 e004350:	0e014320 	.word	0x0e014320
 e004354:	0e014330 	.word	0x0e014330
 e004358:	0e015efa 	.word	0x0e015efa

0e00435c <vfiprintf>:
 e00435c:	e1a03002 	mov	r3, r2
 e004360:	e1a02001 	mov	r2, r1
 e004364:	e1a01000 	mov	r1, r0
 e004368:	e59f0004 	ldr	r0, [pc, #4]	; e004374 <vfiprintf+0x18>
 e00436c:	e5900000 	ldr	r0, [r0]
 e004370:	eafffc48 	b	e003498 <_vfiprintf_r>
 e004374:	60095000 	.word	0x60095000

0e004378 <__sbprintf>:
 e004378:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e00437c:	e1a08003 	mov	r8, r3
 e004380:	e1d130bc 	ldrh	r3, [r1, #12]
 e004384:	e24dde46 	sub	sp, sp, #1120	; 0x460
 e004388:	e1a05002 	mov	r5, r2
 e00438c:	e24dd008 	sub	sp, sp, #8
 e004390:	e3c33002 	bic	r3, r3, #2
 e004394:	e1a0700d 	mov	r7, sp
 e004398:	e1a06000 	mov	r6, r0
 e00439c:	e28d0058 	add	r0, sp, #88	; 0x58
 e0043a0:	e1a04001 	mov	r4, r1
 e0043a4:	e1c730bc 	strh	r3, [r7, #12]
 e0043a8:	e5913064 	ldr	r3, [r1, #100]	; 0x64
 e0043ac:	e58d3064 	str	r3, [sp, #100]	; 0x64
 e0043b0:	e1d130be 	ldrh	r3, [r1, #14]
 e0043b4:	e1c730be 	strh	r3, [r7, #14]
 e0043b8:	e5913020 	ldr	r3, [r1, #32]
 e0043bc:	e58d3020 	str	r3, [sp, #32]
 e0043c0:	e5913028 	ldr	r3, [r1, #40]	; 0x28
 e0043c4:	e58d3028 	str	r3, [sp, #40]	; 0x28
 e0043c8:	e28d3068 	add	r3, sp, #104	; 0x68
 e0043cc:	e58d3000 	str	r3, [sp]
 e0043d0:	e58d3010 	str	r3, [sp, #16]
 e0043d4:	e3a03b01 	mov	r3, #1024	; 0x400
 e0043d8:	e58d3008 	str	r3, [sp, #8]
 e0043dc:	e58d3014 	str	r3, [sp, #20]
 e0043e0:	e3a03000 	mov	r3, #0
 e0043e4:	e58d3018 	str	r3, [sp, #24]
 e0043e8:	ebfff236 	bl	e000cc8 <__retarget_lock_init_recursive>
 e0043ec:	e1a02005 	mov	r2, r5
 e0043f0:	e1a03008 	mov	r3, r8
 e0043f4:	e1a01007 	mov	r1, r7
 e0043f8:	e1a00006 	mov	r0, r6
 e0043fc:	ebfffc25 	bl	e003498 <_vfiprintf_r>
 e004400:	e2505000 	subs	r5, r0, #0
 e004404:	ba000004 	blt	e00441c <__sbprintf+0xa4>
 e004408:	e1a01007 	mov	r1, r7
 e00440c:	e1a00006 	mov	r0, r6
 e004410:	ebfff0ba 	bl	e000700 <_fflush_r>
 e004414:	e3500000 	cmp	r0, #0
 e004418:	13e05000 	mvnne	r5, #0
 e00441c:	e1dd30bc 	ldrh	r3, [sp, #12]
 e004420:	e59d0058 	ldr	r0, [sp, #88]	; 0x58
 e004424:	e3130040 	tst	r3, #64	; 0x40
 e004428:	11d430bc 	ldrhne	r3, [r4, #12]
 e00442c:	13833040 	orrne	r3, r3, #64	; 0x40
 e004430:	11c430bc 	strhne	r3, [r4, #12]
 e004434:	ebfff225 	bl	e000cd0 <__retarget_lock_close_recursive>
 e004438:	e1a00005 	mov	r0, r5
 e00443c:	e28dde46 	add	sp, sp, #1120	; 0x460
 e004440:	e28dd008 	add	sp, sp, #8
 e004444:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0e004448 <_vfprintf_r>:
 e004448:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e00444c:	e1a07000 	mov	r7, r0
 e004450:	e1a05001 	mov	r5, r1
 e004454:	ed2d8b04 	vpush	{d8-d9}
 e004458:	e24ddf4b 	sub	sp, sp, #300	; 0x12c
 e00445c:	e1a0a002 	mov	sl, r2
 e004460:	e1a04003 	mov	r4, r3
 e004464:	e1a08003 	mov	r8, r3
 e004468:	ebfff7db 	bl	e0023dc <_localeconv_r>
 e00446c:	e5903000 	ldr	r3, [r0]
 e004470:	e58d3040 	str	r3, [sp, #64]	; 0x40
 e004474:	e1a00003 	mov	r0, r3
 e004478:	eb0022c4 	bl	e00cf90 <__wrap_strlen>
 e00447c:	e3570000 	cmp	r7, #0
 e004480:	e58d0028 	str	r0, [sp, #40]	; 0x28
 e004484:	0a000004 	beq	e00449c <_vfprintf_r+0x54>
 e004488:	e5973018 	ldr	r3, [r7, #24]
 e00448c:	e3530000 	cmp	r3, #0
 e004490:	1a000001 	bne	e00449c <_vfprintf_r+0x54>
 e004494:	e1a00007 	mov	r0, r7
 e004498:	ebfff140 	bl	e0009a0 <__sinit>
 e00449c:	e5953064 	ldr	r3, [r5, #100]	; 0x64
 e0044a0:	e3130001 	tst	r3, #1
 e0044a4:	1a000004 	bne	e0044bc <_vfprintf_r+0x74>
 e0044a8:	e1d530bc 	ldrh	r3, [r5, #12]
 e0044ac:	e3130c02 	tst	r3, #512	; 0x200
 e0044b0:	1a000001 	bne	e0044bc <_vfprintf_r+0x74>
 e0044b4:	e5950058 	ldr	r0, [r5, #88]	; 0x58
 e0044b8:	ebfff206 	bl	e000cd8 <__retarget_lock_acquire_recursive>
 e0044bc:	e1d530fc 	ldrsh	r3, [r5, #12]
 e0044c0:	e3130a02 	tst	r3, #8192	; 0x2000
 e0044c4:	1a000004 	bne	e0044dc <_vfprintf_r+0x94>
 e0044c8:	e3833a02 	orr	r3, r3, #8192	; 0x2000
 e0044cc:	e1c530bc 	strh	r3, [r5, #12]
 e0044d0:	e5953064 	ldr	r3, [r5, #100]	; 0x64
 e0044d4:	e3c33a02 	bic	r3, r3, #8192	; 0x2000
 e0044d8:	e5853064 	str	r3, [r5, #100]	; 0x64
 e0044dc:	e1d530bc 	ldrh	r3, [r5, #12]
 e0044e0:	e3130008 	tst	r3, #8
 e0044e4:	0a000002 	beq	e0044f4 <_vfprintf_r+0xac>
 e0044e8:	e5953010 	ldr	r3, [r5, #16]
 e0044ec:	e3530000 	cmp	r3, #0
 e0044f0:	1a000013 	bne	e004544 <_vfprintf_r+0xfc>
 e0044f4:	e1a01005 	mov	r1, r5
 e0044f8:	e1a00007 	mov	r0, r7
 e0044fc:	eb0007e1 	bl	e006488 <__swsetup_r>
 e004500:	e3500000 	cmp	r0, #0
 e004504:	0a00000e 	beq	e004544 <_vfprintf_r+0xfc>
 e004508:	e5953064 	ldr	r3, [r5, #100]	; 0x64
 e00450c:	e3130001 	tst	r3, #1
 e004510:	0a000005 	beq	e00452c <_vfprintf_r+0xe4>
 e004514:	e3e03000 	mvn	r3, #0
 e004518:	e58d302c 	str	r3, [sp, #44]	; 0x2c
 e00451c:	e59d002c 	ldr	r0, [sp, #44]	; 0x2c
 e004520:	e28ddf4b 	add	sp, sp, #300	; 0x12c
 e004524:	ecbd8b04 	vpop	{d8-d9}
 e004528:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00452c:	e1d530bc 	ldrh	r3, [r5, #12]
 e004530:	e3130c02 	tst	r3, #512	; 0x200
 e004534:	1afffff6 	bne	e004514 <_vfprintf_r+0xcc>
 e004538:	e5950058 	ldr	r0, [r5, #88]	; 0x58
 e00453c:	ebfff1eb 	bl	e000cf0 <__retarget_lock_release_recursive>
 e004540:	eafffff3 	b	e004514 <_vfprintf_r+0xcc>
 e004544:	e1d530bc 	ldrh	r3, [r5, #12]
 e004548:	e203201a 	and	r2, r3, #26
 e00454c:	e352000a 	cmp	r2, #10
 e004550:	1a000011 	bne	e00459c <_vfprintf_r+0x154>
 e004554:	e1d520fe 	ldrsh	r2, [r5, #14]
 e004558:	e3520000 	cmp	r2, #0
 e00455c:	ba00000e 	blt	e00459c <_vfprintf_r+0x154>
 e004560:	e5952064 	ldr	r2, [r5, #100]	; 0x64
 e004564:	e3120001 	tst	r2, #1
 e004568:	1a000003 	bne	e00457c <_vfprintf_r+0x134>
 e00456c:	e3130c02 	tst	r3, #512	; 0x200
 e004570:	1a000001 	bne	e00457c <_vfprintf_r+0x134>
 e004574:	e5950058 	ldr	r0, [r5, #88]	; 0x58
 e004578:	ebfff1dc 	bl	e000cf0 <__retarget_lock_release_recursive>
 e00457c:	e1a03004 	mov	r3, r4
 e004580:	e1a0200a 	mov	r2, sl
 e004584:	e1a01005 	mov	r1, r5
 e004588:	e1a00007 	mov	r0, r7
 e00458c:	e28ddf4b 	add	sp, sp, #300	; 0x12c
 e004590:	ecbd8b04 	vpop	{d8-d9}
 e004594:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e004598:	ea000775 	b	e006374 <__sbprintf>
 e00459c:	f2808e30 	vmov.i64	d8, #0x0000000000000000
 e0045a0:	e3a03000 	mov	r3, #0
 e0045a4:	e28d4084 	add	r4, sp, #132	; 0x84
 e0045a8:	e58d3080 	str	r3, [sp, #128]	; 0x80
 e0045ac:	e58d4078 	str	r4, [sp, #120]	; 0x78
 e0045b0:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e0045b4:	e58d300c 	str	r3, [sp, #12]
 e0045b8:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 e0045bc:	e58d3048 	str	r3, [sp, #72]	; 0x48
 e0045c0:	e58d3020 	str	r3, [sp, #32]
 e0045c4:	e58d3038 	str	r3, [sp, #56]	; 0x38
 e0045c8:	e58d3044 	str	r3, [sp, #68]	; 0x44
 e0045cc:	e58d302c 	str	r3, [sp, #44]	; 0x2c
 e0045d0:	e1a0200a 	mov	r2, sl
 e0045d4:	e5d23000 	ldrb	r3, [r2]
 e0045d8:	e1a06002 	mov	r6, r2
 e0045dc:	e2822001 	add	r2, r2, #1
 e0045e0:	e3530000 	cmp	r3, #0
 e0045e4:	13530025 	cmpne	r3, #37	; 0x25
 e0045e8:	1afffff9 	bne	e0045d4 <_vfprintf_r+0x18c>
 e0045ec:	e056900a 	subs	r9, r6, sl
 e0045f0:	0a000014 	beq	e004648 <_vfprintf_r+0x200>
 e0045f4:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
 e0045f8:	e584a000 	str	sl, [r4]
 e0045fc:	e0833009 	add	r3, r3, r9
 e004600:	e58d3080 	str	r3, [sp, #128]	; 0x80
 e004604:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e004608:	e5849004 	str	r9, [r4, #4]
 e00460c:	e2833001 	add	r3, r3, #1
 e004610:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e004614:	e3530007 	cmp	r3, #7
 e004618:	d2844008 	addle	r4, r4, #8
 e00461c:	da000006 	ble	e00463c <_vfprintf_r+0x1f4>
 e004620:	e28d2078 	add	r2, sp, #120	; 0x78
 e004624:	e1a01005 	mov	r1, r5
 e004628:	e1a00007 	mov	r0, r7
 e00462c:	ebfffb6f 	bl	e0033f0 <__sprint_r>
 e004630:	e3500000 	cmp	r0, #0
 e004634:	1a00015f 	bne	e004bb8 <_vfprintf_r+0x770>
 e004638:	e28d4084 	add	r4, sp, #132	; 0x84
 e00463c:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
 e004640:	e0833009 	add	r3, r3, r9
 e004644:	e58d302c 	str	r3, [sp, #44]	; 0x2c
 e004648:	e5d63000 	ldrb	r3, [r6]
 e00464c:	e3530000 	cmp	r3, #0
 e004650:	0a0006e9 	beq	e0061fc <_vfprintf_r+0x1db4>
 e004654:	e3a02000 	mov	r2, #0
 e004658:	e2863001 	add	r3, r6, #1
 e00465c:	e1a0b002 	mov	fp, r2
 e004660:	e3e06000 	mvn	r6, #0
 e004664:	e3a0900a 	mov	r9, #10
 e004668:	e1a01006 	mov	r1, r6
 e00466c:	e5cd205b 	strb	r2, [sp, #91]	; 0x5b
 e004670:	e58d2030 	str	r2, [sp, #48]	; 0x30
 e004674:	e4d32001 	ldrb	r2, [r3], #1
 e004678:	e58d2010 	str	r2, [sp, #16]
 e00467c:	e58d3024 	str	r3, [sp, #36]	; 0x24
 e004680:	e59d3010 	ldr	r3, [sp, #16]
 e004684:	e2433020 	sub	r3, r3, #32
 e004688:	e353005a 	cmp	r3, #90	; 0x5a
 e00468c:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
 e004690:	ea0003ff 	b	e005694 <_vfprintf_r+0x124c>
 e004694:	0e004858 	.word	0x0e004858
 e004698:	0e005694 	.word	0x0e005694
 e00469c:	0e005694 	.word	0x0e005694
 e0046a0:	0e004870 	.word	0x0e004870
 e0046a4:	0e005694 	.word	0x0e005694
 e0046a8:	0e005694 	.word	0x0e005694
 e0046ac:	0e005694 	.word	0x0e005694
 e0046b0:	0e004800 	.word	0x0e004800
 e0046b4:	0e005694 	.word	0x0e005694
 e0046b8:	0e005694 	.word	0x0e005694
 e0046bc:	0e004878 	.word	0x0e004878
 e0046c0:	0e004898 	.word	0x0e004898
 e0046c4:	0e005694 	.word	0x0e005694
 e0046c8:	0e004890 	.word	0x0e004890
 e0046cc:	0e0048a0 	.word	0x0e0048a0
 e0046d0:	0e005694 	.word	0x0e005694
 e0046d4:	0e0048f0 	.word	0x0e0048f0
 e0046d8:	0e0048f8 	.word	0x0e0048f8
 e0046dc:	0e0048f8 	.word	0x0e0048f8
 e0046e0:	0e0048f8 	.word	0x0e0048f8
 e0046e4:	0e0048f8 	.word	0x0e0048f8
 e0046e8:	0e0048f8 	.word	0x0e0048f8
 e0046ec:	0e0048f8 	.word	0x0e0048f8
 e0046f0:	0e0048f8 	.word	0x0e0048f8
 e0046f4:	0e0048f8 	.word	0x0e0048f8
 e0046f8:	0e0048f8 	.word	0x0e0048f8
 e0046fc:	0e005694 	.word	0x0e005694
 e004700:	0e005694 	.word	0x0e005694
 e004704:	0e005694 	.word	0x0e005694
 e004708:	0e005694 	.word	0x0e005694
 e00470c:	0e005694 	.word	0x0e005694
 e004710:	0e005694 	.word	0x0e005694
 e004714:	0e005694 	.word	0x0e005694
 e004718:	0e004abc 	.word	0x0e004abc
 e00471c:	0e005694 	.word	0x0e005694
 e004720:	0e004984 	.word	0x0e004984
 e004724:	0e0049c0 	.word	0x0e0049c0
 e004728:	0e004abc 	.word	0x0e004abc
 e00472c:	0e004abc 	.word	0x0e004abc
 e004730:	0e004abc 	.word	0x0e004abc
 e004734:	0e005694 	.word	0x0e005694
 e004738:	0e005694 	.word	0x0e005694
 e00473c:	0e005694 	.word	0x0e005694
 e004740:	0e005694 	.word	0x0e005694
 e004744:	0e004930 	.word	0x0e004930
 e004748:	0e005694 	.word	0x0e005694
 e00474c:	0e005694 	.word	0x0e005694
 e004750:	0e005408 	.word	0x0e005408
 e004754:	0e005694 	.word	0x0e005694
 e004758:	0e005694 	.word	0x0e005694
 e00475c:	0e005694 	.word	0x0e005694
 e004760:	0e0054ac 	.word	0x0e0054ac
 e004764:	0e005694 	.word	0x0e005694
 e004768:	0e00551c 	.word	0x0e00551c
 e00476c:	0e005694 	.word	0x0e005694
 e004770:	0e005694 	.word	0x0e005694
 e004774:	0e005580 	.word	0x0e005580
 e004778:	0e005694 	.word	0x0e005694
 e00477c:	0e005694 	.word	0x0e005694
 e004780:	0e005694 	.word	0x0e005694
 e004784:	0e005694 	.word	0x0e005694
 e004788:	0e005694 	.word	0x0e005694
 e00478c:	0e005694 	.word	0x0e005694
 e004790:	0e005694 	.word	0x0e005694
 e004794:	0e005694 	.word	0x0e005694
 e004798:	0e004abc 	.word	0x0e004abc
 e00479c:	0e005694 	.word	0x0e005694
 e0047a0:	0e004984 	.word	0x0e004984
 e0047a4:	0e0049c4 	.word	0x0e0049c4
 e0047a8:	0e004abc 	.word	0x0e004abc
 e0047ac:	0e004abc 	.word	0x0e004abc
 e0047b0:	0e004abc 	.word	0x0e004abc
 e0047b4:	0e004938 	.word	0x0e004938
 e0047b8:	0e0049c4 	.word	0x0e0049c4
 e0047bc:	0e00497c 	.word	0x0e00497c
 e0047c0:	0e005694 	.word	0x0e005694
 e0047c4:	0e00495c 	.word	0x0e00495c
 e0047c8:	0e005694 	.word	0x0e005694
 e0047cc:	0e005394 	.word	0x0e005394
 e0047d0:	0e00540c 	.word	0x0e00540c
 e0047d4:	0e005478 	.word	0x0e005478
 e0047d8:	0e00497c 	.word	0x0e00497c
 e0047dc:	0e005694 	.word	0x0e005694
 e0047e0:	0e0054ac 	.word	0x0e0054ac
 e0047e4:	0e004850 	.word	0x0e004850
 e0047e8:	0e005520 	.word	0x0e005520
 e0047ec:	0e005694 	.word	0x0e005694
 e0047f0:	0e005694 	.word	0x0e005694
 e0047f4:	0e0055dc 	.word	0x0e0055dc
 e0047f8:	0e005694 	.word	0x0e005694
 e0047fc:	0e004850 	.word	0x0e004850
 e004800:	e1a00007 	mov	r0, r7
 e004804:	ebfff6f4 	bl	e0023dc <_localeconv_r>
 e004808:	e5903004 	ldr	r3, [r0, #4]
 e00480c:	e58d3044 	str	r3, [sp, #68]	; 0x44
 e004810:	e1a00003 	mov	r0, r3
 e004814:	eb0021dd 	bl	e00cf90 <__wrap_strlen>
 e004818:	e58d0038 	str	r0, [sp, #56]	; 0x38
 e00481c:	e1a00007 	mov	r0, r7
 e004820:	ebfff6ed 	bl	e0023dc <_localeconv_r>
 e004824:	e5903008 	ldr	r3, [r0, #8]
 e004828:	e58d3020 	str	r3, [sp, #32]
 e00482c:	e3e01000 	mvn	r1, #0
 e004830:	e59d3038 	ldr	r3, [sp, #56]	; 0x38
 e004834:	e59d2020 	ldr	r2, [sp, #32]
 e004838:	e3530000 	cmp	r3, #0
 e00483c:	13520000 	cmpne	r2, #0
 e004840:	0a000002 	beq	e004850 <_vfprintf_r+0x408>
 e004844:	e5d23000 	ldrb	r3, [r2]
 e004848:	e3530000 	cmp	r3, #0
 e00484c:	138bbb01 	orrne	fp, fp, #1024	; 0x400
 e004850:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e004854:	eaffff86 	b	e004674 <_vfprintf_r+0x22c>
 e004858:	e5dd305b 	ldrb	r3, [sp, #91]	; 0x5b
 e00485c:	e3530000 	cmp	r3, #0
 e004860:	03a03020 	moveq	r3, #32
 e004864:	1afffff9 	bne	e004850 <_vfprintf_r+0x408>
 e004868:	e5cd305b 	strb	r3, [sp, #91]	; 0x5b
 e00486c:	eafffff7 	b	e004850 <_vfprintf_r+0x408>
 e004870:	e38bb001 	orr	fp, fp, #1
 e004874:	eafffff5 	b	e004850 <_vfprintf_r+0x408>
 e004878:	e4983004 	ldr	r3, [r8], #4
 e00487c:	e58d3030 	str	r3, [sp, #48]	; 0x30
 e004880:	e3530000 	cmp	r3, #0
 e004884:	aafffff1 	bge	e004850 <_vfprintf_r+0x408>
 e004888:	e2633000 	rsb	r3, r3, #0
 e00488c:	e58d3030 	str	r3, [sp, #48]	; 0x30
 e004890:	e38bb004 	orr	fp, fp, #4
 e004894:	eaffffed 	b	e004850 <_vfprintf_r+0x408>
 e004898:	e3a0302b 	mov	r3, #43	; 0x2b
 e00489c:	eafffff1 	b	e004868 <_vfprintf_r+0x420>
 e0048a0:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e0048a4:	e4d32001 	ldrb	r2, [r3], #1
 e0048a8:	e58d2010 	str	r2, [sp, #16]
 e0048ac:	e352002a 	cmp	r2, #42	; 0x2a
 e0048b0:	1a00000c 	bne	e0048e8 <_vfprintf_r+0x4a0>
 e0048b4:	e4986004 	ldr	r6, [r8], #4
 e0048b8:	e58d3024 	str	r3, [sp, #36]	; 0x24
 e0048bc:	e1560001 	cmp	r6, r1
 e0048c0:	b1a06001 	movlt	r6, r1
 e0048c4:	eaffffe1 	b	e004850 <_vfprintf_r+0x408>
 e0048c8:	e0262699 	mla	r6, r9, r6, r2
 e0048cc:	e4d32001 	ldrb	r2, [r3], #1
 e0048d0:	e58d2010 	str	r2, [sp, #16]
 e0048d4:	e59d2010 	ldr	r2, [sp, #16]
 e0048d8:	e2422030 	sub	r2, r2, #48	; 0x30
 e0048dc:	e3520009 	cmp	r2, #9
 e0048e0:	9afffff8 	bls	e0048c8 <_vfprintf_r+0x480>
 e0048e4:	eaffff64 	b	e00467c <_vfprintf_r+0x234>
 e0048e8:	e3a06000 	mov	r6, #0
 e0048ec:	eafffff8 	b	e0048d4 <_vfprintf_r+0x48c>
 e0048f0:	e38bb080 	orr	fp, fp, #128	; 0x80
 e0048f4:	eaffffd5 	b	e004850 <_vfprintf_r+0x408>
 e0048f8:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e0048fc:	e3a02000 	mov	r2, #0
 e004900:	e58d2030 	str	r2, [sp, #48]	; 0x30
 e004904:	e59d2010 	ldr	r2, [sp, #16]
 e004908:	e59d0030 	ldr	r0, [sp, #48]	; 0x30
 e00490c:	e2422030 	sub	r2, r2, #48	; 0x30
 e004910:	e0222099 	mla	r2, r9, r0, r2
 e004914:	e58d2030 	str	r2, [sp, #48]	; 0x30
 e004918:	e4d32001 	ldrb	r2, [r3], #1
 e00491c:	e58d2010 	str	r2, [sp, #16]
 e004920:	e2422030 	sub	r2, r2, #48	; 0x30
 e004924:	e3520009 	cmp	r2, #9
 e004928:	9afffff5 	bls	e004904 <_vfprintf_r+0x4bc>
 e00492c:	eaffff52 	b	e00467c <_vfprintf_r+0x234>
 e004930:	e38bb008 	orr	fp, fp, #8
 e004934:	eaffffc5 	b	e004850 <_vfprintf_r+0x408>
 e004938:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e00493c:	e5d33000 	ldrb	r3, [r3]
 e004940:	e3530068 	cmp	r3, #104	; 0x68
 e004944:	038bbc02 	orreq	fp, fp, #512	; 0x200
 e004948:	138bb040 	orrne	fp, fp, #64	; 0x40
 e00494c:	059d3024 	ldreq	r3, [sp, #36]	; 0x24
 e004950:	02833001 	addeq	r3, r3, #1
 e004954:	058d3024 	streq	r3, [sp, #36]	; 0x24
 e004958:	eaffffbc 	b	e004850 <_vfprintf_r+0x408>
 e00495c:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e004960:	e5d33000 	ldrb	r3, [r3]
 e004964:	e353006c 	cmp	r3, #108	; 0x6c
 e004968:	138bb010 	orrne	fp, fp, #16
 e00496c:	059d3024 	ldreq	r3, [sp, #36]	; 0x24
 e004970:	02833001 	addeq	r3, r3, #1
 e004974:	058d3024 	streq	r3, [sp, #36]	; 0x24
 e004978:	1affffb4 	bne	e004850 <_vfprintf_r+0x408>
 e00497c:	e38bb020 	orr	fp, fp, #32
 e004980:	eaffffb2 	b	e004850 <_vfprintf_r+0x408>
 e004984:	e1a02008 	mov	r2, r8
 e004988:	e3a00000 	mov	r0, #0
 e00498c:	e5cd005b 	strb	r0, [sp, #91]	; 0x5b
 e004990:	e4923004 	ldr	r3, [r2], #4
 e004994:	e58d2014 	str	r2, [sp, #20]
 e004998:	e5cd30c4 	strb	r3, [sp, #196]	; 0xc4
 e00499c:	e3a06001 	mov	r6, #1
 e0049a0:	e1a09000 	mov	r9, r0
 e0049a4:	e1a03000 	mov	r3, r0
 e0049a8:	e1a08000 	mov	r8, r0
 e0049ac:	e28da0c4 	add	sl, sp, #196	; 0xc4
 e0049b0:	e58d0008 	str	r0, [sp, #8]
 e0049b4:	e58d0018 	str	r0, [sp, #24]
 e0049b8:	e58d001c 	str	r0, [sp, #28]
 e0049bc:	ea000180 	b	e004fc4 <_vfprintf_r+0xb7c>
 e0049c0:	e38bb010 	orr	fp, fp, #16
 e0049c4:	e31b0020 	tst	fp, #32
 e0049c8:	0a00002a 	beq	e004a78 <_vfprintf_r+0x630>
 e0049cc:	e2888007 	add	r8, r8, #7
 e0049d0:	e3c83007 	bic	r3, r8, #7
 e0049d4:	e1a02003 	mov	r2, r3
 e0049d8:	e5939004 	ldr	r9, [r3, #4]
 e0049dc:	e4928008 	ldr	r8, [r2], #8
 e0049e0:	e58d2014 	str	r2, [sp, #20]
 e0049e4:	e3590000 	cmp	r9, #0
 e0049e8:	aa000610 	bge	e006230 <_vfprintf_r+0x1de8>
 e0049ec:	e2788000 	rsbs	r8, r8, #0
 e0049f0:	e3a0302d 	mov	r3, #45	; 0x2d
 e0049f4:	e2e99000 	rsc	r9, r9, #0
 e0049f8:	e5cd305b 	strb	r3, [sp, #91]	; 0x5b
 e0049fc:	e3a03001 	mov	r3, #1
 e004a00:	e3760001 	cmn	r6, #1
 e004a04:	11a0100b 	movne	r1, fp
 e004a08:	1a000303 	bne	e00561c <_vfprintf_r+0x11d4>
 e004a0c:	e3530001 	cmp	r3, #1
 e004a10:	0a00060a 	beq	e006240 <_vfprintf_r+0x1df8>
 e004a14:	e28daf4a 	add	sl, sp, #296	; 0x128
 e004a18:	e3530002 	cmp	r3, #2
 e004a1c:	0a00030f 	beq	e005660 <_vfprintf_r+0x1218>
 e004a20:	e2083007 	and	r3, r8, #7
 e004a24:	e1a081a8 	lsr	r8, r8, #3
 e004a28:	e1888e89 	orr	r8, r8, r9, lsl #29
 e004a2c:	e1a091a9 	lsr	r9, r9, #3
 e004a30:	e1a0200a 	mov	r2, sl
 e004a34:	e2833030 	add	r3, r3, #48	; 0x30
 e004a38:	e1981009 	orrs	r1, r8, r9
 e004a3c:	e56a3001 	strb	r3, [sl, #-1]!
 e004a40:	1afffff6 	bne	e004a20 <_vfprintf_r+0x5d8>
 e004a44:	e3530030 	cmp	r3, #48	; 0x30
 e004a48:	03a01000 	moveq	r1, #0
 e004a4c:	120b1001 	andne	r1, fp, #1
 e004a50:	e3510000 	cmp	r1, #0
 e004a54:	13a03030 	movne	r3, #48	; 0x30
 e004a58:	154a3001 	strbne	r3, [sl, #-1]
 e004a5c:	1242a002 	subne	sl, r2, #2
 e004a60:	e28d3f4a 	add	r3, sp, #296	; 0x128
 e004a64:	e1a09006 	mov	r9, r6
 e004a68:	e043600a 	sub	r6, r3, sl
 e004a6c:	e3a03000 	mov	r3, #0
 e004a70:	e58d3008 	str	r3, [sp, #8]
 e004a74:	ea000028 	b	e004b1c <_vfprintf_r+0x6d4>
 e004a78:	e1a03008 	mov	r3, r8
 e004a7c:	e31b0010 	tst	fp, #16
 e004a80:	e4939004 	ldr	r9, [r3], #4
 e004a84:	e58d3014 	str	r3, [sp, #20]
 e004a88:	0a000002 	beq	e004a98 <_vfprintf_r+0x650>
 e004a8c:	e1a08009 	mov	r8, r9
 e004a90:	e1a09fc9 	asr	r9, r9, #31
 e004a94:	eaffffd2 	b	e0049e4 <_vfprintf_r+0x59c>
 e004a98:	e31b0040 	tst	fp, #64	; 0x40
 e004a9c:	16bf8079 	sxthne	r8, r9
 e004aa0:	17a097d9 	sbfxne	r9, r9, #15, #1
 e004aa4:	1affffce 	bne	e0049e4 <_vfprintf_r+0x59c>
 e004aa8:	e31b0c02 	tst	fp, #512	; 0x200
 e004aac:	16af8079 	sxtbne	r8, r9
 e004ab0:	17a093d9 	sbfxne	r9, r9, #7, #1
 e004ab4:	1affffca 	bne	e0049e4 <_vfprintf_r+0x59c>
 e004ab8:	eafffff3 	b	e004a8c <_vfprintf_r+0x644>
 e004abc:	e2888007 	add	r8, r8, #7
 e004ac0:	eddf0bec 	vldr	d16, [pc, #944]	; e004e78 <_vfprintf_r+0xa30>
 e004ac4:	e3c83007 	bic	r3, r8, #7
 e004ac8:	ecb38b02 	vldmia	r3!, {d8}
 e004acc:	eef01bc8 	vabs.f64	d17, d8
 e004ad0:	e58d3014 	str	r3, [sp, #20]
 e004ad4:	eef41b60 	vcmp.f64	d17, d16
 e004ad8:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e004adc:	da000012 	ble	e004b2c <_vfprintf_r+0x6e4>
 e004ae0:	eeb58bc0 	vcmpe.f64	d8, #0.0
 e004ae4:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e004ae8:	43a0302d 	movmi	r3, #45	; 0x2d
 e004aec:	45cd305b 	strbmi	r3, [sp, #91]	; 0x5b
 e004af0:	e59f2388 	ldr	r2, [pc, #904]	; e004e80 <_vfprintf_r+0xa38>
 e004af4:	e59f0388 	ldr	r0, [pc, #904]	; e004e84 <_vfprintf_r+0xa3c>
 e004af8:	e59d3010 	ldr	r3, [sp, #16]
 e004afc:	e3cbb080 	bic	fp, fp, #128	; 0x80
 e004b00:	e3a06003 	mov	r6, #3
 e004b04:	e3530047 	cmp	r3, #71	; 0x47
 e004b08:	e3a03000 	mov	r3, #0
 e004b0c:	d1a0a002 	movle	sl, r2
 e004b10:	c1a0a000 	movgt	sl, r0
 e004b14:	e1a09003 	mov	r9, r3
 e004b18:	e58d3008 	str	r3, [sp, #8]
 e004b1c:	e1a08003 	mov	r8, r3
 e004b20:	e58d3018 	str	r3, [sp, #24]
 e004b24:	e58d301c 	str	r3, [sp, #28]
 e004b28:	ea000125 	b	e004fc4 <_vfprintf_r+0xb7c>
 e004b2c:	eeb48b48 	vcmp.f64	d8, d8
 e004b30:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e004b34:	7a000006 	bvc	e004b54 <_vfprintf_r+0x70c>
 e004b38:	ee183a90 	vmov	r3, s17
 e004b3c:	e59f2344 	ldr	r2, [pc, #836]	; e004e88 <_vfprintf_r+0xa40>
 e004b40:	e59f0344 	ldr	r0, [pc, #836]	; e004e8c <_vfprintf_r+0xa44>
 e004b44:	e3530000 	cmp	r3, #0
 e004b48:	b3a0302d 	movlt	r3, #45	; 0x2d
 e004b4c:	b5cd305b 	strblt	r3, [sp, #91]	; 0x5b
 e004b50:	eaffffe8 	b	e004af8 <_vfprintf_r+0x6b0>
 e004b54:	e59d3010 	ldr	r3, [sp, #16]
 e004b58:	e3c39020 	bic	r9, r3, #32
 e004b5c:	e3590041 	cmp	r9, #65	; 0x41
 e004b60:	1a000020 	bne	e004be8 <_vfprintf_r+0x7a0>
 e004b64:	e3a03030 	mov	r3, #48	; 0x30
 e004b68:	e5cd305c 	strb	r3, [sp, #92]	; 0x5c
 e004b6c:	e59d3010 	ldr	r3, [sp, #16]
 e004b70:	e38bb002 	orr	fp, fp, #2
 e004b74:	e3530061 	cmp	r3, #97	; 0x61
 e004b78:	03a03078 	moveq	r3, #120	; 0x78
 e004b7c:	13a03058 	movne	r3, #88	; 0x58
 e004b80:	e3560063 	cmp	r6, #99	; 0x63
 e004b84:	e5cd305d 	strb	r3, [sp, #93]	; 0x5d
 e004b88:	d28da0c4 	addle	sl, sp, #196	; 0xc4
 e004b8c:	d3a03000 	movle	r3, #0
 e004b90:	d58d3008 	strle	r3, [sp, #8]
 e004b94:	da00001b 	ble	e004c08 <_vfprintf_r+0x7c0>
 e004b98:	e2861001 	add	r1, r6, #1
 e004b9c:	e1a00007 	mov	r0, r7
 e004ba0:	eb0022c0 	bl	e00d6a8 <__wrap__malloc_r>
 e004ba4:	e250a000 	subs	sl, r0, #0
 e004ba8:	1a00006e 	bne	e004d68 <_vfprintf_r+0x920>
 e004bac:	e1d530bc 	ldrh	r3, [r5, #12]
 e004bb0:	e3833040 	orr	r3, r3, #64	; 0x40
 e004bb4:	e1c530bc 	strh	r3, [r5, #12]
 e004bb8:	e5953064 	ldr	r3, [r5, #100]	; 0x64
 e004bbc:	e3130001 	tst	r3, #1
 e004bc0:	1a000004 	bne	e004bd8 <_vfprintf_r+0x790>
 e004bc4:	e1d530bc 	ldrh	r3, [r5, #12]
 e004bc8:	e3130c02 	tst	r3, #512	; 0x200
 e004bcc:	1a000001 	bne	e004bd8 <_vfprintf_r+0x790>
 e004bd0:	e5950058 	ldr	r0, [r5, #88]	; 0x58
 e004bd4:	ebfff045 	bl	e000cf0 <__retarget_lock_release_recursive>
 e004bd8:	e1d530bc 	ldrh	r3, [r5, #12]
 e004bdc:	e3130040 	tst	r3, #64	; 0x40
 e004be0:	0afffe4d 	beq	e00451c <_vfprintf_r+0xd4>
 e004be4:	eafffe4a 	b	e004514 <_vfprintf_r+0xcc>
 e004be8:	e3760001 	cmn	r6, #1
 e004bec:	e3a03000 	mov	r3, #0
 e004bf0:	03a06006 	moveq	r6, #6
 e004bf4:	e58d3008 	str	r3, [sp, #8]
 e004bf8:	0a000002 	beq	e004c08 <_vfprintf_r+0x7c0>
 e004bfc:	e1560003 	cmp	r6, r3
 e004c00:	03590047 	cmpeq	r9, #71	; 0x47
 e004c04:	03a06001 	moveq	r6, #1
 e004c08:	e38b3c01 	orr	r3, fp, #256	; 0x100
 e004c0c:	e58d3034 	str	r3, [sp, #52]	; 0x34
 e004c10:	ee183a90 	vmov	r3, s17
 e004c14:	e3530000 	cmp	r3, #0
 e004c18:	b3a0302d 	movlt	r3, #45	; 0x2d
 e004c1c:	a3a03000 	movge	r3, #0
 e004c20:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e004c24:	beb19b48 	vneglt.f64	d9, d8
 e004c28:	aeb09b48 	vmovge.f64	d9, d8
 e004c2c:	e3590041 	cmp	r9, #65	; 0x41
 e004c30:	1a00005d 	bne	e004dac <_vfprintf_r+0x964>
 e004c34:	e28d0060 	add	r0, sp, #96	; 0x60
 e004c38:	eeb00b49 	vmov.f64	d0, d9
 e004c3c:	ebfff9c5 	bl	e003358 <frexp>
 e004c40:	eef40b00 	vmov.f64	d16, #64	; 0x3e000000  0.125
 e004c44:	e59d2010 	ldr	r2, [sp, #16]
 e004c48:	e2460001 	sub	r0, r6, #1
 e004c4c:	ee200b20 	vmul.f64	d0, d0, d16
 e004c50:	e59f1244 	ldr	r1, [pc, #580]	; e004e9c <_vfprintf_r+0xa54>
 e004c54:	eef30b00 	vmov.f64	d16, #48	; 0x41800000  16.0
 e004c58:	eeb50b40 	vcmp.f64	d0, #0.0
 e004c5c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e004c60:	03a03001 	moveq	r3, #1
 e004c64:	058d3060 	streq	r3, [sp, #96]	; 0x60
 e004c68:	e59f3228 	ldr	r3, [pc, #552]	; e004e98 <_vfprintf_r+0xa50>
 e004c6c:	e3520061 	cmp	r2, #97	; 0x61
 e004c70:	11a01003 	movne	r1, r3
 e004c74:	e1a0300a 	mov	r3, sl
 e004c78:	ee200b20 	vmul.f64	d0, d0, d16
 e004c7c:	e3700001 	cmn	r0, #1
 e004c80:	eefd7bc0 	vcvt.s32.f64	s15, d0
 e004c84:	ee17ca90 	vmov	ip, s15
 e004c88:	eef81be7 	vcvt.f64.s32	d17, s15
 e004c8c:	e7d1200c 	ldrb	r2, [r1, ip]
 e004c90:	ee300b61 	vsub.f64	d0, d0, d17
 e004c94:	e4c32001 	strb	r2, [r3], #1
 e004c98:	e1a02000 	mov	r2, r0
 e004c9c:	0a000003 	beq	e004cb0 <_vfprintf_r+0x868>
 e004ca0:	eeb50b40 	vcmp.f64	d0, #0.0
 e004ca4:	e2400001 	sub	r0, r0, #1
 e004ca8:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e004cac:	1afffff1 	bne	e004c78 <_vfprintf_r+0x830>
 e004cb0:	eef60b00 	vmov.f64	d16, #96	; 0x3f000000  0.5
 e004cb4:	eeb40be0 	vcmpe.f64	d0, d16
 e004cb8:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e004cbc:	ca000004 	bgt	e004cd4 <_vfprintf_r+0x88c>
 e004cc0:	eeb40b60 	vcmp.f64	d0, d16
 e004cc4:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e004cc8:	1a000033 	bne	e004d9c <_vfprintf_r+0x954>
 e004ccc:	e31c0001 	tst	ip, #1
 e004cd0:	0a000031 	beq	e004d9c <_vfprintf_r+0x954>
 e004cd4:	e5d1c00f 	ldrb	ip, [r1, #15]
 e004cd8:	e3a0e030 	mov	lr, #48	; 0x30
 e004cdc:	e58d3070 	str	r3, [sp, #112]	; 0x70
 e004ce0:	e59d0070 	ldr	r0, [sp, #112]	; 0x70
 e004ce4:	e2402001 	sub	r2, r0, #1
 e004ce8:	e58d2070 	str	r2, [sp, #112]	; 0x70
 e004cec:	e5502001 	ldrb	r2, [r0, #-1]
 e004cf0:	e152000c 	cmp	r2, ip
 e004cf4:	0a00001d 	beq	e004d70 <_vfprintf_r+0x928>
 e004cf8:	e3520039 	cmp	r2, #57	; 0x39
 e004cfc:	12822001 	addne	r2, r2, #1
 e004d00:	05d1200a 	ldrbeq	r2, [r1, #10]
 e004d04:	16ef2072 	uxtbne	r2, r2
 e004d08:	e5402001 	strb	r2, [r0, #-1]
 e004d0c:	e043300a 	sub	r3, r3, sl
 e004d10:	e59d8060 	ldr	r8, [sp, #96]	; 0x60
 e004d14:	e3590047 	cmp	r9, #71	; 0x47
 e004d18:	e58d300c 	str	r3, [sp, #12]
 e004d1c:	1a000061 	bne	e004ea8 <_vfprintf_r+0xa60>
 e004d20:	e3780003 	cmn	r8, #3
 e004d24:	a3a03000 	movge	r3, #0
 e004d28:	b3a03001 	movlt	r3, #1
 e004d2c:	e1580006 	cmp	r8, r6
 e004d30:	c3833001 	orrgt	r3, r3, #1
 e004d34:	e3530000 	cmp	r3, #0
 e004d38:	159d3010 	ldrne	r3, [sp, #16]
 e004d3c:	12433002 	subne	r3, r3, #2
 e004d40:	158d3010 	strne	r3, [sp, #16]
 e004d44:	1a000059 	bne	e004eb0 <_vfprintf_r+0xa68>
 e004d48:	e59d300c 	ldr	r3, [sp, #12]
 e004d4c:	e1580003 	cmp	r8, r3
 e004d50:	ba000176 	blt	e005330 <_vfprintf_r+0xee8>
 e004d54:	e31b0001 	tst	fp, #1
 e004d58:	159d3028 	ldrne	r3, [sp, #40]	; 0x28
 e004d5c:	10886003 	addne	r6, r8, r3
 e004d60:	01a06008 	moveq	r6, r8
 e004d64:	ea000177 	b	e005348 <_vfprintf_r+0xf00>
 e004d68:	e58da008 	str	sl, [sp, #8]
 e004d6c:	eaffffa5 	b	e004c08 <_vfprintf_r+0x7c0>
 e004d70:	e540e001 	strb	lr, [r0, #-1]
 e004d74:	eaffffd9 	b	e004ce0 <_vfprintf_r+0x898>
 e004d78:	e4c1e001 	strb	lr, [r1], #1
 e004d7c:	e04c0001 	sub	r0, ip, r1
 e004d80:	e3500000 	cmp	r0, #0
 e004d84:	aafffffb 	bge	e004d78 <_vfprintf_r+0x930>
 e004d88:	e3720001 	cmn	r2, #1
 e004d8c:	a2822001 	addge	r2, r2, #1
 e004d90:	b3a02000 	movlt	r2, #0
 e004d94:	e0833002 	add	r3, r3, r2
 e004d98:	eaffffdb 	b	e004d0c <_vfprintf_r+0x8c4>
 e004d9c:	e1a01003 	mov	r1, r3
 e004da0:	e083c002 	add	ip, r3, r2
 e004da4:	e3a0e030 	mov	lr, #48	; 0x30
 e004da8:	eafffff3 	b	e004d7c <_vfprintf_r+0x934>
 e004dac:	e3590046 	cmp	r9, #70	; 0x46
 e004db0:	01a08006 	moveq	r8, r6
 e004db4:	03a01003 	moveq	r1, #3
 e004db8:	0a000003 	beq	e004dcc <_vfprintf_r+0x984>
 e004dbc:	e3590045 	cmp	r9, #69	; 0x45
 e004dc0:	e3a01002 	mov	r1, #2
 e004dc4:	02868001 	addeq	r8, r6, #1
 e004dc8:	11a08006 	movne	r8, r6
 e004dcc:	e28d3070 	add	r3, sp, #112	; 0x70
 e004dd0:	eeb00b49 	vmov.f64	d0, d9
 e004dd4:	e58d3004 	str	r3, [sp, #4]
 e004dd8:	e1a02008 	mov	r2, r8
 e004ddc:	e28d3064 	add	r3, sp, #100	; 0x64
 e004de0:	e1a00007 	mov	r0, r7
 e004de4:	e58d3000 	str	r3, [sp]
 e004de8:	e28d3060 	add	r3, sp, #96	; 0x60
 e004dec:	ebfff132 	bl	e0012bc <_dtoa_r>
 e004df0:	e3590047 	cmp	r9, #71	; 0x47
 e004df4:	e1a0a000 	mov	sl, r0
 e004df8:	1a000003 	bne	e004e0c <_vfprintf_r+0x9c4>
 e004dfc:	e31b0001 	tst	fp, #1
 e004e00:	1a000001 	bne	e004e0c <_vfprintf_r+0x9c4>
 e004e04:	e59d3070 	ldr	r3, [sp, #112]	; 0x70
 e004e08:	eaffffbf 	b	e004d0c <_vfprintf_r+0x8c4>
 e004e0c:	e08a3008 	add	r3, sl, r8
 e004e10:	e3590046 	cmp	r9, #70	; 0x46
 e004e14:	1a00000c 	bne	e004e4c <_vfprintf_r+0xa04>
 e004e18:	eeb59b40 	vcmp.f64	d9, #0.0
 e004e1c:	e5da1000 	ldrb	r1, [sl]
 e004e20:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e004e24:	13a02001 	movne	r2, #1
 e004e28:	03a02000 	moveq	r2, #0
 e004e2c:	e3510030 	cmp	r1, #48	; 0x30
 e004e30:	13a02000 	movne	r2, #0
 e004e34:	02022001 	andeq	r2, r2, #1
 e004e38:	e3520000 	cmp	r2, #0
 e004e3c:	12688001 	rsbne	r8, r8, #1
 e004e40:	158d8060 	strne	r8, [sp, #96]	; 0x60
 e004e44:	e59d2060 	ldr	r2, [sp, #96]	; 0x60
 e004e48:	e0833002 	add	r3, r3, r2
 e004e4c:	eeb59b40 	vcmp.f64	d9, #0.0
 e004e50:	e3a01030 	mov	r1, #48	; 0x30
 e004e54:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e004e58:	058d3070 	streq	r3, [sp, #112]	; 0x70
 e004e5c:	e59d2070 	ldr	r2, [sp, #112]	; 0x70
 e004e60:	e1530002 	cmp	r3, r2
 e004e64:	9affffe6 	bls	e004e04 <_vfprintf_r+0x9bc>
 e004e68:	e2820001 	add	r0, r2, #1
 e004e6c:	e58d0070 	str	r0, [sp, #112]	; 0x70
 e004e70:	e5c21000 	strb	r1, [r2]
 e004e74:	eafffff8 	b	e004e5c <_vfprintf_r+0xa14>
 e004e78:	ffffffff 	.word	0xffffffff
 e004e7c:	7fefffff 	.word	0x7fefffff
 e004e80:	0e015f1c 	.word	0x0e015f1c
 e004e84:	0e015f20 	.word	0x0e015f20
 e004e88:	0e015f24 	.word	0x0e015f24
 e004e8c:	0e015f28 	.word	0x0e015f28
 e004e90:	66666667 	.word	0x66666667
 e004e94:	0e014340 	.word	0x0e014340
 e004e98:	0e015efa 	.word	0x0e015efa
 e004e9c:	0e015f0b 	.word	0x0e015f0b
 e004ea0:	0e015ddd 	.word	0x0e015ddd
 e004ea4:	0e014350 	.word	0x0e014350
 e004ea8:	e3590046 	cmp	r9, #70	; 0x46
 e004eac:	0a0000f8 	beq	e005294 <_vfprintf_r+0xe4c>
 e004eb0:	e59d3010 	ldr	r3, [sp, #16]
 e004eb4:	e2486001 	sub	r6, r8, #1
 e004eb8:	e58d6060 	str	r6, [sp, #96]	; 0x60
 e004ebc:	e3c32020 	bic	r2, r3, #32
 e004ec0:	e5dd3010 	ldrb	r3, [sp, #16]
 e004ec4:	e3520041 	cmp	r2, #65	; 0x41
 e004ec8:	0283300f 	addeq	r3, r3, #15
 e004ecc:	06ef3073 	uxtbeq	r3, r3
 e004ed0:	e3560000 	cmp	r6, #0
 e004ed4:	b2686001 	rsblt	r6, r8, #1
 e004ed8:	e5cd3068 	strb	r3, [sp, #104]	; 0x68
 e004edc:	b3a0302d 	movlt	r3, #45	; 0x2d
 e004ee0:	a3a0302b 	movge	r3, #43	; 0x2b
 e004ee4:	e3560009 	cmp	r6, #9
 e004ee8:	e5cd3069 	strb	r3, [sp, #105]	; 0x69
 e004eec:	da0000e0 	ble	e005274 <_vfprintf_r+0xe2c>
 e004ef0:	e28d9077 	add	r9, sp, #119	; 0x77
 e004ef4:	e1a00006 	mov	r0, r6
 e004ef8:	e3a0100a 	mov	r1, #10
 e004efc:	eb000901 	bl	e007308 <__aeabi_idivmod>
 e004f00:	e51f2078 	ldr	r2, [pc, #-120]	; e004e90 <_vfprintf_r+0xa48>
 e004f04:	e1a08009 	mov	r8, r9
 e004f08:	e2811030 	add	r1, r1, #48	; 0x30
 e004f0c:	e1a03006 	mov	r3, r6
 e004f10:	e2499001 	sub	r9, r9, #1
 e004f14:	e3530063 	cmp	r3, #99	; 0x63
 e004f18:	e5481001 	strb	r1, [r8, #-1]
 e004f1c:	e0c21296 	smull	r1, r2, r6, r2
 e004f20:	e1a06fc6 	asr	r6, r6, #31
 e004f24:	e0666142 	rsb	r6, r6, r2, asr #2
 e004f28:	cafffff1 	bgt	e004ef4 <_vfprintf_r+0xaac>
 e004f2c:	e2483002 	sub	r3, r8, #2
 e004f30:	e28d006a 	add	r0, sp, #106	; 0x6a
 e004f34:	e1a02003 	mov	r2, r3
 e004f38:	e28d1077 	add	r1, sp, #119	; 0x77
 e004f3c:	e2866030 	add	r6, r6, #48	; 0x30
 e004f40:	e5496001 	strb	r6, [r9, #-1]
 e004f44:	e1520001 	cmp	r2, r1
 e004f48:	3a0000c6 	bcc	e005268 <_vfprintf_r+0xe20>
 e004f4c:	e1530001 	cmp	r3, r1
 e004f50:	e28d2079 	add	r2, sp, #121	; 0x79
 e004f54:	90428008 	subls	r8, r2, r8
 e004f58:	83a08000 	movhi	r8, #0
 e004f5c:	e28d306a 	add	r3, sp, #106	; 0x6a
 e004f60:	e0838008 	add	r8, r3, r8
 e004f64:	e59d200c 	ldr	r2, [sp, #12]
 e004f68:	e28d3068 	add	r3, sp, #104	; 0x68
 e004f6c:	e0483003 	sub	r3, r8, r3
 e004f70:	e58d3048 	str	r3, [sp, #72]	; 0x48
 e004f74:	e0836002 	add	r6, r3, r2
 e004f78:	e3520001 	cmp	r2, #1
 e004f7c:	ca000001 	bgt	e004f88 <_vfprintf_r+0xb40>
 e004f80:	e31b0001 	tst	fp, #1
 e004f84:	0a000001 	beq	e004f90 <_vfprintf_r+0xb48>
 e004f88:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
 e004f8c:	e0866003 	add	r6, r6, r3
 e004f90:	e3cb3b01 	bic	r3, fp, #1024	; 0x400
 e004f94:	e3833c01 	orr	r3, r3, #256	; 0x100
 e004f98:	e58d3034 	str	r3, [sp, #52]	; 0x34
 e004f9c:	e3a03000 	mov	r3, #0
 e004fa0:	e58d3018 	str	r3, [sp, #24]
 e004fa4:	e1a08003 	mov	r8, r3
 e004fa8:	e58d301c 	str	r3, [sp, #28]
 e004fac:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
 e004fb0:	e3a09000 	mov	r9, #0
 e004fb4:	e59db034 	ldr	fp, [sp, #52]	; 0x34
 e004fb8:	e3530000 	cmp	r3, #0
 e004fbc:	13a0302d 	movne	r3, #45	; 0x2d
 e004fc0:	15cd305b 	strbne	r3, [sp, #91]	; 0x5b
 e004fc4:	e1590006 	cmp	r9, r6
 e004fc8:	a1a03009 	movge	r3, r9
 e004fcc:	b1a03006 	movlt	r3, r6
 e004fd0:	e58d3034 	str	r3, [sp, #52]	; 0x34
 e004fd4:	e5dd305b 	ldrb	r3, [sp, #91]	; 0x5b
 e004fd8:	e3530000 	cmp	r3, #0
 e004fdc:	159d3034 	ldrne	r3, [sp, #52]	; 0x34
 e004fe0:	12833001 	addne	r3, r3, #1
 e004fe4:	158d3034 	strne	r3, [sp, #52]	; 0x34
 e004fe8:	e21b3002 	ands	r3, fp, #2
 e004fec:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e004ff0:	159d3034 	ldrne	r3, [sp, #52]	; 0x34
 e004ff4:	12833002 	addne	r3, r3, #2
 e004ff8:	158d3034 	strne	r3, [sp, #52]	; 0x34
 e004ffc:	e21b3084 	ands	r3, fp, #132	; 0x84
 e005000:	e58d3050 	str	r3, [sp, #80]	; 0x50
 e005004:	1a00001a 	bne	e005074 <_vfprintf_r+0xc2c>
 e005008:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
 e00500c:	e59d2034 	ldr	r2, [sp, #52]	; 0x34
 e005010:	e0433002 	sub	r3, r3, r2
 e005014:	e3530000 	cmp	r3, #0
 e005018:	da000015 	ble	e005074 <_vfprintf_r+0xc2c>
 e00501c:	e59d207c 	ldr	r2, [sp, #124]	; 0x7c
 e005020:	e2840008 	add	r0, r4, #8
 e005024:	e51fc198 	ldr	ip, [pc, #-408]	; e004e94 <_vfprintf_r+0xa4c>
 e005028:	e3530010 	cmp	r3, #16
 e00502c:	e59d1080 	ldr	r1, [sp, #128]	; 0x80
 e005030:	e2822001 	add	r2, r2, #1
 e005034:	e584c000 	str	ip, [r4]
 e005038:	ca00019f 	bgt	e0056bc <_vfprintf_r+0x1274>
 e00503c:	e3520007 	cmp	r2, #7
 e005040:	e0811003 	add	r1, r1, r3
 e005044:	e5843004 	str	r3, [r4, #4]
 e005048:	d1a04000 	movle	r4, r0
 e00504c:	e58d1080 	str	r1, [sp, #128]	; 0x80
 e005050:	e58d207c 	str	r2, [sp, #124]	; 0x7c
 e005054:	da000006 	ble	e005074 <_vfprintf_r+0xc2c>
 e005058:	e28d2078 	add	r2, sp, #120	; 0x78
 e00505c:	e1a01005 	mov	r1, r5
 e005060:	e1a00007 	mov	r0, r7
 e005064:	ebfff8e1 	bl	e0033f0 <__sprint_r>
 e005068:	e3500000 	cmp	r0, #0
 e00506c:	1a000447 	bne	e006190 <_vfprintf_r+0x1d48>
 e005070:	e28d4084 	add	r4, sp, #132	; 0x84
 e005074:	e5dd305b 	ldrb	r3, [sp, #91]	; 0x5b
 e005078:	e3530000 	cmp	r3, #0
 e00507c:	0a000013 	beq	e0050d0 <_vfprintf_r+0xc88>
 e005080:	e28d305b 	add	r3, sp, #91	; 0x5b
 e005084:	e5843000 	str	r3, [r4]
 e005088:	e3a03001 	mov	r3, #1
 e00508c:	e5843004 	str	r3, [r4, #4]
 e005090:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
 e005094:	e2833001 	add	r3, r3, #1
 e005098:	e58d3080 	str	r3, [sp, #128]	; 0x80
 e00509c:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e0050a0:	e2833001 	add	r3, r3, #1
 e0050a4:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e0050a8:	e3530007 	cmp	r3, #7
 e0050ac:	d2844008 	addle	r4, r4, #8
 e0050b0:	da000006 	ble	e0050d0 <_vfprintf_r+0xc88>
 e0050b4:	e28d2078 	add	r2, sp, #120	; 0x78
 e0050b8:	e1a01005 	mov	r1, r5
 e0050bc:	e1a00007 	mov	r0, r7
 e0050c0:	ebfff8ca 	bl	e0033f0 <__sprint_r>
 e0050c4:	e3500000 	cmp	r0, #0
 e0050c8:	1a000430 	bne	e006190 <_vfprintf_r+0x1d48>
 e0050cc:	e28d4084 	add	r4, sp, #132	; 0x84
 e0050d0:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
 e0050d4:	e3530000 	cmp	r3, #0
 e0050d8:	0a000013 	beq	e00512c <_vfprintf_r+0xce4>
 e0050dc:	e28d305c 	add	r3, sp, #92	; 0x5c
 e0050e0:	e5843000 	str	r3, [r4]
 e0050e4:	e3a03002 	mov	r3, #2
 e0050e8:	e5843004 	str	r3, [r4, #4]
 e0050ec:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
 e0050f0:	e2833002 	add	r3, r3, #2
 e0050f4:	e58d3080 	str	r3, [sp, #128]	; 0x80
 e0050f8:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e0050fc:	e2833001 	add	r3, r3, #1
 e005100:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e005104:	e3530007 	cmp	r3, #7
 e005108:	d2844008 	addle	r4, r4, #8
 e00510c:	da000006 	ble	e00512c <_vfprintf_r+0xce4>
 e005110:	e28d2078 	add	r2, sp, #120	; 0x78
 e005114:	e1a01005 	mov	r1, r5
 e005118:	e1a00007 	mov	r0, r7
 e00511c:	ebfff8b3 	bl	e0033f0 <__sprint_r>
 e005120:	e3500000 	cmp	r0, #0
 e005124:	1a000419 	bne	e006190 <_vfprintf_r+0x1d48>
 e005128:	e28d4084 	add	r4, sp, #132	; 0x84
 e00512c:	e59d3050 	ldr	r3, [sp, #80]	; 0x50
 e005130:	e3530080 	cmp	r3, #128	; 0x80
 e005134:	1a00001d 	bne	e0051b0 <_vfprintf_r+0xd68>
 e005138:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
 e00513c:	e59d2034 	ldr	r2, [sp, #52]	; 0x34
 e005140:	e0433002 	sub	r3, r3, r2
 e005144:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e005148:	e3530000 	cmp	r3, #0
 e00514c:	da000017 	ble	e0051b0 <_vfprintf_r+0xd68>
 e005150:	e59d003c 	ldr	r0, [sp, #60]	; 0x3c
 e005154:	e2841008 	add	r1, r4, #8
 e005158:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e00515c:	e3500010 	cmp	r0, #16
 e005160:	e51f02c4 	ldr	r0, [pc, #-708]	; e004ea4 <_vfprintf_r+0xa5c>
 e005164:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
 e005168:	e2833001 	add	r3, r3, #1
 e00516c:	e5840000 	str	r0, [r4]
 e005170:	ca000164 	bgt	e005708 <_vfprintf_r+0x12c0>
 e005174:	e59d003c 	ldr	r0, [sp, #60]	; 0x3c
 e005178:	e3530007 	cmp	r3, #7
 e00517c:	e5840004 	str	r0, [r4, #4]
 e005180:	d1a04001 	movle	r4, r1
 e005184:	e0802002 	add	r2, r0, r2
 e005188:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e00518c:	e58d2080 	str	r2, [sp, #128]	; 0x80
 e005190:	da000006 	ble	e0051b0 <_vfprintf_r+0xd68>
 e005194:	e28d2078 	add	r2, sp, #120	; 0x78
 e005198:	e1a01005 	mov	r1, r5
 e00519c:	e1a00007 	mov	r0, r7
 e0051a0:	ebfff892 	bl	e0033f0 <__sprint_r>
 e0051a4:	e3500000 	cmp	r0, #0
 e0051a8:	1a0003f8 	bne	e006190 <_vfprintf_r+0x1d48>
 e0051ac:	e28d4084 	add	r4, sp, #132	; 0x84
 e0051b0:	e0499006 	sub	r9, r9, r6
 e0051b4:	e3590000 	cmp	r9, #0
 e0051b8:	da000015 	ble	e005214 <_vfprintf_r+0xdcc>
 e0051bc:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e0051c0:	e2841008 	add	r1, r4, #8
 e0051c4:	e51f0328 	ldr	r0, [pc, #-808]	; e004ea4 <_vfprintf_r+0xa5c>
 e0051c8:	e3590010 	cmp	r9, #16
 e0051cc:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
 e0051d0:	e2833001 	add	r3, r3, #1
 e0051d4:	e5840000 	str	r0, [r4]
 e0051d8:	ca00015d 	bgt	e005754 <_vfprintf_r+0x130c>
 e0051dc:	e3530007 	cmp	r3, #7
 e0051e0:	e5849004 	str	r9, [r4, #4]
 e0051e4:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e0051e8:	e0899002 	add	r9, r9, r2
 e0051ec:	d1a04001 	movle	r4, r1
 e0051f0:	e58d9080 	str	r9, [sp, #128]	; 0x80
 e0051f4:	da000006 	ble	e005214 <_vfprintf_r+0xdcc>
 e0051f8:	e28d2078 	add	r2, sp, #120	; 0x78
 e0051fc:	e1a01005 	mov	r1, r5
 e005200:	e1a00007 	mov	r0, r7
 e005204:	ebfff879 	bl	e0033f0 <__sprint_r>
 e005208:	e3500000 	cmp	r0, #0
 e00520c:	1a0003df 	bne	e006190 <_vfprintf_r+0x1d48>
 e005210:	e28d4084 	add	r4, sp, #132	; 0x84
 e005214:	e59d0080 	ldr	r0, [sp, #128]	; 0x80
 e005218:	e31b0c01 	tst	fp, #256	; 0x100
 e00521c:	1a00015d 	bne	e005798 <_vfprintf_r+0x1350>
 e005220:	e0860000 	add	r0, r6, r0
 e005224:	e584a000 	str	sl, [r4]
 e005228:	e5846004 	str	r6, [r4, #4]
 e00522c:	e58d0080 	str	r0, [sp, #128]	; 0x80
 e005230:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e005234:	e2833001 	add	r3, r3, #1
 e005238:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e00523c:	e3530007 	cmp	r3, #7
 e005240:	d2844008 	addle	r4, r4, #8
 e005244:	da00018c 	ble	e00587c <_vfprintf_r+0x1434>
 e005248:	e28d2078 	add	r2, sp, #120	; 0x78
 e00524c:	e1a01005 	mov	r1, r5
 e005250:	e1a00007 	mov	r0, r7
 e005254:	ebfff865 	bl	e0033f0 <__sprint_r>
 e005258:	e3500000 	cmp	r0, #0
 e00525c:	1a0003cb 	bne	e006190 <_vfprintf_r+0x1d48>
 e005260:	e28d4084 	add	r4, sp, #132	; 0x84
 e005264:	ea000184 	b	e00587c <_vfprintf_r+0x1434>
 e005268:	e4d2c001 	ldrb	ip, [r2], #1
 e00526c:	e4c0c001 	strb	ip, [r0], #1
 e005270:	eaffff33 	b	e004f44 <_vfprintf_r+0xafc>
 e005274:	e3520041 	cmp	r2, #65	; 0x41
 e005278:	e2866030 	add	r6, r6, #48	; 0x30
 e00527c:	128d806b 	addne	r8, sp, #107	; 0x6b
 e005280:	028d806a 	addeq	r8, sp, #106	; 0x6a
 e005284:	13a03030 	movne	r3, #48	; 0x30
 e005288:	15cd306a 	strbne	r3, [sp, #106]	; 0x6a
 e00528c:	e4c86001 	strb	r6, [r8], #1
 e005290:	eaffff33 	b	e004f64 <_vfprintf_r+0xb1c>
 e005294:	e20b3001 	and	r3, fp, #1
 e005298:	e3580000 	cmp	r8, #0
 e00529c:	e1833006 	orr	r3, r3, r6
 e0052a0:	da000005 	ble	e0052bc <_vfprintf_r+0xe74>
 e0052a4:	e3530000 	cmp	r3, #0
 e0052a8:	159d3028 	ldrne	r3, [sp, #40]	; 0x28
 e0052ac:	10883003 	addne	r3, r8, r3
 e0052b0:	1a000008 	bne	e0052d8 <_vfprintf_r+0xe90>
 e0052b4:	e1a06008 	mov	r6, r8
 e0052b8:	ea000007 	b	e0052dc <_vfprintf_r+0xe94>
 e0052bc:	e3530000 	cmp	r3, #0
 e0052c0:	03a03066 	moveq	r3, #102	; 0x66
 e0052c4:	03a06001 	moveq	r6, #1
 e0052c8:	058d3010 	streq	r3, [sp, #16]
 e0052cc:	0a000004 	beq	e0052e4 <_vfprintf_r+0xe9c>
 e0052d0:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
 e0052d4:	e2833001 	add	r3, r3, #1
 e0052d8:	e0866003 	add	r6, r6, r3
 e0052dc:	e3a03066 	mov	r3, #102	; 0x66
 e0052e0:	e58d3010 	str	r3, [sp, #16]
 e0052e4:	e21b3b01 	ands	r3, fp, #1024	; 0x400
 e0052e8:	e58d301c 	str	r3, [sp, #28]
 e0052ec:	059d301c 	ldreq	r3, [sp, #28]
 e0052f0:	058d3018 	streq	r3, [sp, #24]
 e0052f4:	0affff2c 	beq	e004fac <_vfprintf_r+0xb64>
 e0052f8:	e3a03000 	mov	r3, #0
 e0052fc:	e3580000 	cmp	r8, #0
 e005300:	e58d3018 	str	r3, [sp, #24]
 e005304:	e58d301c 	str	r3, [sp, #28]
 e005308:	daffff27 	ble	e004fac <_vfprintf_r+0xb64>
 e00530c:	e59d3020 	ldr	r3, [sp, #32]
 e005310:	e5d33000 	ldrb	r3, [r3]
 e005314:	e35300ff 	cmp	r3, #255	; 0xff
 e005318:	1a00000c 	bne	e005350 <_vfprintf_r+0xf08>
 e00531c:	e1cd21d8 	ldrd	r2, [sp, #24]
 e005320:	e0833002 	add	r3, r3, r2
 e005324:	e59d2038 	ldr	r2, [sp, #56]	; 0x38
 e005328:	e0266392 	mla	r6, r2, r3, r6
 e00532c:	eaffff1e 	b	e004fac <_vfprintf_r+0xb64>
 e005330:	e59d300c 	ldr	r3, [sp, #12]
 e005334:	e3580000 	cmp	r8, #0
 e005338:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
 e00533c:	e0836002 	add	r6, r3, r2
 e005340:	d2683001 	rsble	r3, r8, #1
 e005344:	d0866003 	addle	r6, r6, r3
 e005348:	e3a03067 	mov	r3, #103	; 0x67
 e00534c:	eaffffe3 	b	e0052e0 <_vfprintf_r+0xe98>
 e005350:	e1530008 	cmp	r3, r8
 e005354:	aafffff0 	bge	e00531c <_vfprintf_r+0xed4>
 e005358:	e0488003 	sub	r8, r8, r3
 e00535c:	e59d3020 	ldr	r3, [sp, #32]
 e005360:	e5d33001 	ldrb	r3, [r3, #1]
 e005364:	e3530000 	cmp	r3, #0
 e005368:	059d3018 	ldreq	r3, [sp, #24]
 e00536c:	02833001 	addeq	r3, r3, #1
 e005370:	058d3018 	streq	r3, [sp, #24]
 e005374:	0affffe4 	beq	e00530c <_vfprintf_r+0xec4>
 e005378:	e59d301c 	ldr	r3, [sp, #28]
 e00537c:	e2833001 	add	r3, r3, #1
 e005380:	e58d301c 	str	r3, [sp, #28]
 e005384:	e59d3020 	ldr	r3, [sp, #32]
 e005388:	e2833001 	add	r3, r3, #1
 e00538c:	e58d3020 	str	r3, [sp, #32]
 e005390:	eaffffdd 	b	e00530c <_vfprintf_r+0xec4>
 e005394:	e2883004 	add	r3, r8, #4
 e005398:	e31b0020 	tst	fp, #32
 e00539c:	e58d3014 	str	r3, [sp, #20]
 e0053a0:	0a000007 	beq	e0053c4 <_vfprintf_r+0xf7c>
 e0053a4:	e5983000 	ldr	r3, [r8]
 e0053a8:	e59d202c 	ldr	r2, [sp, #44]	; 0x2c
 e0053ac:	e59d102c 	ldr	r1, [sp, #44]	; 0x2c
 e0053b0:	e1a02fc2 	asr	r2, r2, #31
 e0053b4:	e8830006 	stm	r3, {r1, r2}
 e0053b8:	e59d8014 	ldr	r8, [sp, #20]
 e0053bc:	e59da024 	ldr	sl, [sp, #36]	; 0x24
 e0053c0:	eafffc82 	b	e0045d0 <_vfprintf_r+0x188>
 e0053c4:	e31b0010 	tst	fp, #16
 e0053c8:	0a000003 	beq	e0053dc <_vfprintf_r+0xf94>
 e0053cc:	e5983000 	ldr	r3, [r8]
 e0053d0:	e59d202c 	ldr	r2, [sp, #44]	; 0x2c
 e0053d4:	e5832000 	str	r2, [r3]
 e0053d8:	eafffff6 	b	e0053b8 <_vfprintf_r+0xf70>
 e0053dc:	e31b0040 	tst	fp, #64	; 0x40
 e0053e0:	15983000 	ldrne	r3, [r8]
 e0053e4:	159d202c 	ldrne	r2, [sp, #44]	; 0x2c
 e0053e8:	11c320b0 	strhne	r2, [r3]
 e0053ec:	1afffff1 	bne	e0053b8 <_vfprintf_r+0xf70>
 e0053f0:	e31b0c02 	tst	fp, #512	; 0x200
 e0053f4:	15983000 	ldrne	r3, [r8]
 e0053f8:	159d202c 	ldrne	r2, [sp, #44]	; 0x2c
 e0053fc:	15c32000 	strbne	r2, [r3]
 e005400:	1affffec 	bne	e0053b8 <_vfprintf_r+0xf70>
 e005404:	eafffff0 	b	e0053cc <_vfprintf_r+0xf84>
 e005408:	e38bb010 	orr	fp, fp, #16
 e00540c:	e21b3020 	ands	r3, fp, #32
 e005410:	0a00000a 	beq	e005440 <_vfprintf_r+0xff8>
 e005414:	e2888007 	add	r8, r8, #7
 e005418:	e3c83007 	bic	r3, r8, #7
 e00541c:	e1a02003 	mov	r2, r3
 e005420:	e5939004 	ldr	r9, [r3, #4]
 e005424:	e4928008 	ldr	r8, [r2], #8
 e005428:	e58d2014 	str	r2, [sp, #20]
 e00542c:	e3cbbb01 	bic	fp, fp, #1024	; 0x400
 e005430:	e3a03000 	mov	r3, #0
 e005434:	e3a02000 	mov	r2, #0
 e005438:	e5cd205b 	strb	r2, [sp, #91]	; 0x5b
 e00543c:	eafffd6f 	b	e004a00 <_vfprintf_r+0x5b8>
 e005440:	e1a02008 	mov	r2, r8
 e005444:	e21b9010 	ands	r9, fp, #16
 e005448:	e4928004 	ldr	r8, [r2], #4
 e00544c:	e58d2014 	str	r2, [sp, #20]
 e005450:	0a000001 	beq	e00545c <_vfprintf_r+0x1014>
 e005454:	e1a09003 	mov	r9, r3
 e005458:	eafffff3 	b	e00542c <_vfprintf_r+0xfe4>
 e00545c:	e21b3040 	ands	r3, fp, #64	; 0x40
 e005460:	16ff8078 	uxthne	r8, r8
 e005464:	1afffff0 	bne	e00542c <_vfprintf_r+0xfe4>
 e005468:	e21b9c02 	ands	r9, fp, #512	; 0x200
 e00546c:	0affffee 	beq	e00542c <_vfprintf_r+0xfe4>
 e005470:	e6ef8078 	uxtb	r8, r8
 e005474:	eafffff6 	b	e005454 <_vfprintf_r+0x100c>
 e005478:	e1a03008 	mov	r3, r8
 e00547c:	e3a02078 	mov	r2, #120	; 0x78
 e005480:	e3a09000 	mov	r9, #0
 e005484:	e38bb002 	orr	fp, fp, #2
 e005488:	e58d2010 	str	r2, [sp, #16]
 e00548c:	e4938004 	ldr	r8, [r3], #4
 e005490:	e58d3014 	str	r3, [sp, #20]
 e005494:	e3073830 	movw	r3, #30768	; 0x7830
 e005498:	e1cd35bc 	strh	r3, [sp, #92]	; 0x5c
 e00549c:	e51f3608 	ldr	r3, [pc, #-1544]	; e004e9c <_vfprintf_r+0xa54>
 e0054a0:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 e0054a4:	e3a03002 	mov	r3, #2
 e0054a8:	eaffffe1 	b	e005434 <_vfprintf_r+0xfec>
 e0054ac:	e1a03008 	mov	r3, r8
 e0054b0:	e3760001 	cmn	r6, #1
 e0054b4:	e3a08000 	mov	r8, #0
 e0054b8:	e5cd805b 	strb	r8, [sp, #91]	; 0x5b
 e0054bc:	e493a004 	ldr	sl, [r3], #4
 e0054c0:	e58d3014 	str	r3, [sp, #20]
 e0054c4:	0a00000d 	beq	e005500 <_vfprintf_r+0x10b8>
 e0054c8:	e1a02006 	mov	r2, r6
 e0054cc:	e1a01008 	mov	r1, r8
 e0054d0:	e1a0000a 	mov	r0, sl
 e0054d4:	eb001ea7 	bl	e00cf78 <__wrap_memchr>
 e0054d8:	e2503000 	subs	r3, r0, #0
 e0054dc:	e58d3008 	str	r3, [sp, #8]
 e0054e0:	0a000073 	beq	e0056b4 <_vfprintf_r+0x126c>
 e0054e4:	e043600a 	sub	r6, r3, sl
 e0054e8:	e1a09008 	mov	r9, r8
 e0054ec:	e1a03008 	mov	r3, r8
 e0054f0:	e58d8008 	str	r8, [sp, #8]
 e0054f4:	e58d8018 	str	r8, [sp, #24]
 e0054f8:	e58d801c 	str	r8, [sp, #28]
 e0054fc:	eafffeb0 	b	e004fc4 <_vfprintf_r+0xb7c>
 e005500:	e1a0000a 	mov	r0, sl
 e005504:	e1a09008 	mov	r9, r8
 e005508:	eb001ea0 	bl	e00cf90 <__wrap_strlen>
 e00550c:	e1a06000 	mov	r6, r0
 e005510:	e58d8008 	str	r8, [sp, #8]
 e005514:	e1a03009 	mov	r3, r9
 e005518:	eafffd7f 	b	e004b1c <_vfprintf_r+0x6d4>
 e00551c:	e38bb010 	orr	fp, fp, #16
 e005520:	e21b3020 	ands	r3, fp, #32
 e005524:	0a000007 	beq	e005548 <_vfprintf_r+0x1100>
 e005528:	e2888007 	add	r8, r8, #7
 e00552c:	e3c83007 	bic	r3, r8, #7
 e005530:	e1a02003 	mov	r2, r3
 e005534:	e5939004 	ldr	r9, [r3, #4]
 e005538:	e4928008 	ldr	r8, [r2], #8
 e00553c:	e58d2014 	str	r2, [sp, #20]
 e005540:	e3a03001 	mov	r3, #1
 e005544:	eaffffba 	b	e005434 <_vfprintf_r+0xfec>
 e005548:	e1a02008 	mov	r2, r8
 e00554c:	e21b9010 	ands	r9, fp, #16
 e005550:	e4928004 	ldr	r8, [r2], #4
 e005554:	e58d2014 	str	r2, [sp, #20]
 e005558:	0a000001 	beq	e005564 <_vfprintf_r+0x111c>
 e00555c:	e1a09003 	mov	r9, r3
 e005560:	eafffff6 	b	e005540 <_vfprintf_r+0x10f8>
 e005564:	e21b3040 	ands	r3, fp, #64	; 0x40
 e005568:	16ff8078 	uxthne	r8, r8
 e00556c:	1afffff3 	bne	e005540 <_vfprintf_r+0x10f8>
 e005570:	e21b9c02 	ands	r9, fp, #512	; 0x200
 e005574:	0afffff1 	beq	e005540 <_vfprintf_r+0x10f8>
 e005578:	e6ef8078 	uxtb	r8, r8
 e00557c:	eafffff6 	b	e00555c <_vfprintf_r+0x1114>
 e005580:	e51f36f0 	ldr	r3, [pc, #-1776]	; e004e98 <_vfprintf_r+0xa50>
 e005584:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 e005588:	e21b3020 	ands	r3, fp, #32
 e00558c:	0a000014 	beq	e0055e4 <_vfprintf_r+0x119c>
 e005590:	e2888007 	add	r8, r8, #7
 e005594:	e3c83007 	bic	r3, r8, #7
 e005598:	e1a02003 	mov	r2, r3
 e00559c:	e5939004 	ldr	r9, [r3, #4]
 e0055a0:	e4928008 	ldr	r8, [r2], #8
 e0055a4:	e58d2014 	str	r2, [sp, #20]
 e0055a8:	e1983009 	orrs	r3, r8, r9
 e0055ac:	03a03000 	moveq	r3, #0
 e0055b0:	120b3001 	andne	r3, fp, #1
 e0055b4:	e3530000 	cmp	r3, #0
 e0055b8:	0a000004 	beq	e0055d0 <_vfprintf_r+0x1188>
 e0055bc:	e3a03030 	mov	r3, #48	; 0x30
 e0055c0:	e38bb002 	orr	fp, fp, #2
 e0055c4:	e5cd305c 	strb	r3, [sp, #92]	; 0x5c
 e0055c8:	e59d3010 	ldr	r3, [sp, #16]
 e0055cc:	e5cd305d 	strb	r3, [sp, #93]	; 0x5d
 e0055d0:	e3cbbb01 	bic	fp, fp, #1024	; 0x400
 e0055d4:	e3a03002 	mov	r3, #2
 e0055d8:	eaffff95 	b	e005434 <_vfprintf_r+0xfec>
 e0055dc:	e51f3748 	ldr	r3, [pc, #-1864]	; e004e9c <_vfprintf_r+0xa54>
 e0055e0:	eaffffe7 	b	e005584 <_vfprintf_r+0x113c>
 e0055e4:	e1a02008 	mov	r2, r8
 e0055e8:	e21b9010 	ands	r9, fp, #16
 e0055ec:	e4928004 	ldr	r8, [r2], #4
 e0055f0:	e58d2014 	str	r2, [sp, #20]
 e0055f4:	0a000001 	beq	e005600 <_vfprintf_r+0x11b8>
 e0055f8:	e1a09003 	mov	r9, r3
 e0055fc:	eaffffe9 	b	e0055a8 <_vfprintf_r+0x1160>
 e005600:	e21b3040 	ands	r3, fp, #64	; 0x40
 e005604:	16ff8078 	uxthne	r8, r8
 e005608:	1affffe6 	bne	e0055a8 <_vfprintf_r+0x1160>
 e00560c:	e21b9c02 	ands	r9, fp, #512	; 0x200
 e005610:	0affffe4 	beq	e0055a8 <_vfprintf_r+0x1160>
 e005614:	e6ef8078 	uxtb	r8, r8
 e005618:	eafffff6 	b	e0055f8 <_vfprintf_r+0x11b0>
 e00561c:	e1882009 	orr	r2, r8, r9
 e005620:	e3cbb080 	bic	fp, fp, #128	; 0x80
 e005624:	e3520000 	cmp	r2, #0
 e005628:	03560000 	cmpeq	r6, #0
 e00562c:	13a02001 	movne	r2, #1
 e005630:	03a02000 	moveq	r2, #0
 e005634:	1afffcf4 	bne	e004a0c <_vfprintf_r+0x5c4>
 e005638:	e3530000 	cmp	r3, #0
 e00563c:	1a000011 	bne	e005688 <_vfprintf_r+0x1240>
 e005640:	e2116001 	ands	r6, r1, #1
 e005644:	0a000010 	beq	e00568c <_vfprintf_r+0x1244>
 e005648:	e1a06003 	mov	r6, r3
 e00564c:	e3a02030 	mov	r2, #48	; 0x30
 e005650:	e5cd2127 	strb	r2, [sp, #295]	; 0x127
 e005654:	e28daf49 	add	sl, sp, #292	; 0x124
 e005658:	e28aa003 	add	sl, sl, #3
 e00565c:	eafffcff 	b	e004a60 <_vfprintf_r+0x618>
 e005660:	e208300f 	and	r3, r8, #15
 e005664:	e59d204c 	ldr	r2, [sp, #76]	; 0x4c
 e005668:	e1a08228 	lsr	r8, r8, #4
 e00566c:	e1888e09 	orr	r8, r8, r9, lsl #28
 e005670:	e1a09229 	lsr	r9, r9, #4
 e005674:	e7d23003 	ldrb	r3, [r2, r3]
 e005678:	e56a3001 	strb	r3, [sl, #-1]!
 e00567c:	e1983009 	orrs	r3, r8, r9
 e005680:	1afffff6 	bne	e005660 <_vfprintf_r+0x1218>
 e005684:	eafffcf5 	b	e004a60 <_vfprintf_r+0x618>
 e005688:	e1a06002 	mov	r6, r2
 e00568c:	e28daf4a 	add	sl, sp, #296	; 0x128
 e005690:	eafffcf2 	b	e004a60 <_vfprintf_r+0x618>
 e005694:	e59d3010 	ldr	r3, [sp, #16]
 e005698:	e3530000 	cmp	r3, #0
 e00569c:	0a0002d6 	beq	e0061fc <_vfprintf_r+0x1db4>
 e0056a0:	e3a00000 	mov	r0, #0
 e0056a4:	e5cd30c4 	strb	r3, [sp, #196]	; 0xc4
 e0056a8:	e5cd005b 	strb	r0, [sp, #91]	; 0x5b
 e0056ac:	e58d8014 	str	r8, [sp, #20]
 e0056b0:	eafffcb9 	b	e00499c <_vfprintf_r+0x554>
 e0056b4:	e59d9008 	ldr	r9, [sp, #8]
 e0056b8:	eaffff95 	b	e005514 <_vfprintf_r+0x10cc>
 e0056bc:	e3a0c010 	mov	ip, #16
 e0056c0:	e3520007 	cmp	r2, #7
 e0056c4:	e081100c 	add	r1, r1, ip
 e0056c8:	e584c004 	str	ip, [r4, #4]
 e0056cc:	e58d1080 	str	r1, [sp, #128]	; 0x80
 e0056d0:	e58d207c 	str	r2, [sp, #124]	; 0x7c
 e0056d4:	da000008 	ble	e0056fc <_vfprintf_r+0x12b4>
 e0056d8:	e28d2078 	add	r2, sp, #120	; 0x78
 e0056dc:	e1a01005 	mov	r1, r5
 e0056e0:	e1a00007 	mov	r0, r7
 e0056e4:	e58d3054 	str	r3, [sp, #84]	; 0x54
 e0056e8:	ebfff740 	bl	e0033f0 <__sprint_r>
 e0056ec:	e3500000 	cmp	r0, #0
 e0056f0:	1a0002a6 	bne	e006190 <_vfprintf_r+0x1d48>
 e0056f4:	e59d3054 	ldr	r3, [sp, #84]	; 0x54
 e0056f8:	e28d0084 	add	r0, sp, #132	; 0x84
 e0056fc:	e2433010 	sub	r3, r3, #16
 e005700:	e1a04000 	mov	r4, r0
 e005704:	eafffe44 	b	e00501c <_vfprintf_r+0xbd4>
 e005708:	e3a00010 	mov	r0, #16
 e00570c:	e3530007 	cmp	r3, #7
 e005710:	e0822000 	add	r2, r2, r0
 e005714:	e5840004 	str	r0, [r4, #4]
 e005718:	e58d2080 	str	r2, [sp, #128]	; 0x80
 e00571c:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e005720:	da000006 	ble	e005740 <_vfprintf_r+0x12f8>
 e005724:	e28d2078 	add	r2, sp, #120	; 0x78
 e005728:	e1a01005 	mov	r1, r5
 e00572c:	e1a00007 	mov	r0, r7
 e005730:	ebfff72e 	bl	e0033f0 <__sprint_r>
 e005734:	e3500000 	cmp	r0, #0
 e005738:	1a000294 	bne	e006190 <_vfprintf_r+0x1d48>
 e00573c:	e28d1084 	add	r1, sp, #132	; 0x84
 e005740:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
 e005744:	e1a04001 	mov	r4, r1
 e005748:	e2433010 	sub	r3, r3, #16
 e00574c:	e58d303c 	str	r3, [sp, #60]	; 0x3c
 e005750:	eafffe7e 	b	e005150 <_vfprintf_r+0xd08>
 e005754:	e3a00010 	mov	r0, #16
 e005758:	e3530007 	cmp	r3, #7
 e00575c:	e0822000 	add	r2, r2, r0
 e005760:	e5840004 	str	r0, [r4, #4]
 e005764:	e58d2080 	str	r2, [sp, #128]	; 0x80
 e005768:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e00576c:	da000006 	ble	e00578c <_vfprintf_r+0x1344>
 e005770:	e28d2078 	add	r2, sp, #120	; 0x78
 e005774:	e1a01005 	mov	r1, r5
 e005778:	e1a00007 	mov	r0, r7
 e00577c:	ebfff71b 	bl	e0033f0 <__sprint_r>
 e005780:	e3500000 	cmp	r0, #0
 e005784:	1a000281 	bne	e006190 <_vfprintf_r+0x1d48>
 e005788:	e28d1084 	add	r1, sp, #132	; 0x84
 e00578c:	e2499010 	sub	r9, r9, #16
 e005790:	e1a04001 	mov	r4, r1
 e005794:	eafffe88 	b	e0051bc <_vfprintf_r+0xd74>
 e005798:	e59d3010 	ldr	r3, [sp, #16]
 e00579c:	e3530065 	cmp	r3, #101	; 0x65
 e0057a0:	da0001e2 	ble	e005f30 <_vfprintf_r+0x1ae8>
 e0057a4:	eeb58b40 	vcmp.f64	d8, #0.0
 e0057a8:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e0057ac:	1a00006a 	bne	e00595c <_vfprintf_r+0x1514>
 e0057b0:	e51f3918 	ldr	r3, [pc, #-2328]	; e004ea0 <_vfprintf_r+0xa58>
 e0057b4:	e5843000 	str	r3, [r4]
 e0057b8:	e3a03001 	mov	r3, #1
 e0057bc:	e0800003 	add	r0, r0, r3
 e0057c0:	e5843004 	str	r3, [r4, #4]
 e0057c4:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e0057c8:	e58d0080 	str	r0, [sp, #128]	; 0x80
 e0057cc:	e2833001 	add	r3, r3, #1
 e0057d0:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e0057d4:	e3530007 	cmp	r3, #7
 e0057d8:	d2844008 	addle	r4, r4, #8
 e0057dc:	da000006 	ble	e0057fc <_vfprintf_r+0x13b4>
 e0057e0:	e28d2078 	add	r2, sp, #120	; 0x78
 e0057e4:	e1a01005 	mov	r1, r5
 e0057e8:	e1a00007 	mov	r0, r7
 e0057ec:	ebfff6ff 	bl	e0033f0 <__sprint_r>
 e0057f0:	e3500000 	cmp	r0, #0
 e0057f4:	1a000265 	bne	e006190 <_vfprintf_r+0x1d48>
 e0057f8:	e28d4084 	add	r4, sp, #132	; 0x84
 e0057fc:	e59d3060 	ldr	r3, [sp, #96]	; 0x60
 e005800:	e59d200c 	ldr	r2, [sp, #12]
 e005804:	e1530002 	cmp	r3, r2
 e005808:	ba000001 	blt	e005814 <_vfprintf_r+0x13cc>
 e00580c:	e31b0001 	tst	fp, #1
 e005810:	0a000019 	beq	e00587c <_vfprintf_r+0x1434>
 e005814:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
 e005818:	e5843000 	str	r3, [r4]
 e00581c:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
 e005820:	e5843004 	str	r3, [r4, #4]
 e005824:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
 e005828:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
 e00582c:	e0833002 	add	r3, r3, r2
 e005830:	e58d3080 	str	r3, [sp, #128]	; 0x80
 e005834:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e005838:	e2833001 	add	r3, r3, #1
 e00583c:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e005840:	e3530007 	cmp	r3, #7
 e005844:	d2844008 	addle	r4, r4, #8
 e005848:	da000006 	ble	e005868 <_vfprintf_r+0x1420>
 e00584c:	e28d2078 	add	r2, sp, #120	; 0x78
 e005850:	e1a01005 	mov	r1, r5
 e005854:	e1a00007 	mov	r0, r7
 e005858:	ebfff6e4 	bl	e0033f0 <__sprint_r>
 e00585c:	e3500000 	cmp	r0, #0
 e005860:	1a00024a 	bne	e006190 <_vfprintf_r+0x1d48>
 e005864:	e28d4084 	add	r4, sp, #132	; 0x84
 e005868:	e59d300c 	ldr	r3, [sp, #12]
 e00586c:	e2436001 	sub	r6, r3, #1
 e005870:	e3560000 	cmp	r6, #0
 e005874:	c3a08010 	movgt	r8, #16
 e005878:	ca000027 	bgt	e00591c <_vfprintf_r+0x14d4>
 e00587c:	e31b0004 	tst	fp, #4
 e005880:	1a000229 	bne	e00612c <_vfprintf_r+0x1ce4>
 e005884:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
 e005888:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
 e00588c:	e59d1034 	ldr	r1, [sp, #52]	; 0x34
 e005890:	e1520001 	cmp	r2, r1
 e005894:	a0833002 	addge	r3, r3, r2
 e005898:	b0833001 	addlt	r3, r3, r1
 e00589c:	e58d302c 	str	r3, [sp, #44]	; 0x2c
 e0058a0:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
 e0058a4:	e3530000 	cmp	r3, #0
 e0058a8:	0a000005 	beq	e0058c4 <_vfprintf_r+0x147c>
 e0058ac:	e28d2078 	add	r2, sp, #120	; 0x78
 e0058b0:	e1a01005 	mov	r1, r5
 e0058b4:	e1a00007 	mov	r0, r7
 e0058b8:	ebfff6cc 	bl	e0033f0 <__sprint_r>
 e0058bc:	e3500000 	cmp	r0, #0
 e0058c0:	1a000232 	bne	e006190 <_vfprintf_r+0x1d48>
 e0058c4:	e3a03000 	mov	r3, #0
 e0058c8:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e0058cc:	e59d3008 	ldr	r3, [sp, #8]
 e0058d0:	e3530000 	cmp	r3, #0
 e0058d4:	1a000244 	bne	e0061ec <_vfprintf_r+0x1da4>
 e0058d8:	e28d4084 	add	r4, sp, #132	; 0x84
 e0058dc:	eafffeb5 	b	e0053b8 <_vfprintf_r+0xf70>
 e0058e0:	e2822010 	add	r2, r2, #16
 e0058e4:	e3530007 	cmp	r3, #7
 e0058e8:	e5848004 	str	r8, [r4, #4]
 e0058ec:	e58d2080 	str	r2, [sp, #128]	; 0x80
 e0058f0:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e0058f4:	da000006 	ble	e005914 <_vfprintf_r+0x14cc>
 e0058f8:	e28d2078 	add	r2, sp, #120	; 0x78
 e0058fc:	e1a01005 	mov	r1, r5
 e005900:	e1a00007 	mov	r0, r7
 e005904:	ebfff6b9 	bl	e0033f0 <__sprint_r>
 e005908:	e3500000 	cmp	r0, #0
 e00590c:	1a00021f 	bne	e006190 <_vfprintf_r+0x1d48>
 e005910:	e28d1084 	add	r1, sp, #132	; 0x84
 e005914:	e2466010 	sub	r6, r6, #16
 e005918:	e1a04001 	mov	r4, r1
 e00591c:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e005920:	e2841008 	add	r1, r4, #8
 e005924:	e51f0a88 	ldr	r0, [pc, #-2696]	; e004ea4 <_vfprintf_r+0xa5c>
 e005928:	e3560010 	cmp	r6, #16
 e00592c:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
 e005930:	e2833001 	add	r3, r3, #1
 e005934:	e5840000 	str	r0, [r4]
 e005938:	caffffe8 	bgt	e0058e0 <_vfprintf_r+0x1498>
 e00593c:	e5846004 	str	r6, [r4, #4]
 e005940:	e0866002 	add	r6, r6, r2
 e005944:	e58d6080 	str	r6, [sp, #128]	; 0x80
 e005948:	e3530007 	cmp	r3, #7
 e00594c:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e005950:	d1a04001 	movle	r4, r1
 e005954:	daffffc8 	ble	e00587c <_vfprintf_r+0x1434>
 e005958:	eafffe3a 	b	e005248 <_vfprintf_r+0xe00>
 e00595c:	e59d3060 	ldr	r3, [sp, #96]	; 0x60
 e005960:	e3530000 	cmp	r3, #0
 e005964:	ca00005f 	bgt	e005ae8 <_vfprintf_r+0x16a0>
 e005968:	e51f3ad0 	ldr	r3, [pc, #-2768]	; e004ea0 <_vfprintf_r+0xa58>
 e00596c:	e5843000 	str	r3, [r4]
 e005970:	e3a03001 	mov	r3, #1
 e005974:	e0800003 	add	r0, r0, r3
 e005978:	e5843004 	str	r3, [r4, #4]
 e00597c:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e005980:	e58d0080 	str	r0, [sp, #128]	; 0x80
 e005984:	e2833001 	add	r3, r3, #1
 e005988:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e00598c:	e3530007 	cmp	r3, #7
 e005990:	d2844008 	addle	r4, r4, #8
 e005994:	da000006 	ble	e0059b4 <_vfprintf_r+0x156c>
 e005998:	e28d2078 	add	r2, sp, #120	; 0x78
 e00599c:	e1a01005 	mov	r1, r5
 e0059a0:	e1a00007 	mov	r0, r7
 e0059a4:	ebfff691 	bl	e0033f0 <__sprint_r>
 e0059a8:	e3500000 	cmp	r0, #0
 e0059ac:	1a0001f7 	bne	e006190 <_vfprintf_r+0x1d48>
 e0059b0:	e28d4084 	add	r4, sp, #132	; 0x84
 e0059b4:	e59d100c 	ldr	r1, [sp, #12]
 e0059b8:	e59d2060 	ldr	r2, [sp, #96]	; 0x60
 e0059bc:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
 e0059c0:	e1812002 	orr	r2, r1, r2
 e0059c4:	e20b1001 	and	r1, fp, #1
 e0059c8:	e1922001 	orrs	r2, r2, r1
 e0059cc:	0affffaa 	beq	e00587c <_vfprintf_r+0x1434>
 e0059d0:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
 e0059d4:	e5842000 	str	r2, [r4]
 e0059d8:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
 e0059dc:	e5842004 	str	r2, [r4, #4]
 e0059e0:	e0823003 	add	r3, r2, r3
 e0059e4:	e58d3080 	str	r3, [sp, #128]	; 0x80
 e0059e8:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e0059ec:	e2833001 	add	r3, r3, #1
 e0059f0:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e0059f4:	e3530007 	cmp	r3, #7
 e0059f8:	d2844008 	addle	r4, r4, #8
 e0059fc:	da000006 	ble	e005a1c <_vfprintf_r+0x15d4>
 e005a00:	e28d2078 	add	r2, sp, #120	; 0x78
 e005a04:	e1a01005 	mov	r1, r5
 e005a08:	e1a00007 	mov	r0, r7
 e005a0c:	ebfff677 	bl	e0033f0 <__sprint_r>
 e005a10:	e3500000 	cmp	r0, #0
 e005a14:	1a0001dd 	bne	e006190 <_vfprintf_r+0x1d48>
 e005a18:	e28d4084 	add	r4, sp, #132	; 0x84
 e005a1c:	e59d6060 	ldr	r6, [sp, #96]	; 0x60
 e005a20:	e3560000 	cmp	r6, #0
 e005a24:	b2666000 	rsblt	r6, r6, #0
 e005a28:	b1a02004 	movlt	r2, r4
 e005a2c:	b3a08010 	movlt	r8, #16
 e005a30:	ba000016 	blt	e005a90 <_vfprintf_r+0x1648>
 e005a34:	e59d300c 	ldr	r3, [sp, #12]
 e005a38:	e59d200c 	ldr	r2, [sp, #12]
 e005a3c:	e5843004 	str	r3, [r4, #4]
 e005a40:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
 e005a44:	e584a000 	str	sl, [r4]
 e005a48:	e0833002 	add	r3, r3, r2
 e005a4c:	e58d3080 	str	r3, [sp, #128]	; 0x80
 e005a50:	eafffdf6 	b	e005230 <_vfprintf_r+0xde8>
 e005a54:	e2811010 	add	r1, r1, #16
 e005a58:	e3530007 	cmp	r3, #7
 e005a5c:	e5828004 	str	r8, [r2, #4]
 e005a60:	e58d1080 	str	r1, [sp, #128]	; 0x80
 e005a64:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e005a68:	da000006 	ble	e005a88 <_vfprintf_r+0x1640>
 e005a6c:	e28d2078 	add	r2, sp, #120	; 0x78
 e005a70:	e1a01005 	mov	r1, r5
 e005a74:	e1a00007 	mov	r0, r7
 e005a78:	ebfff65c 	bl	e0033f0 <__sprint_r>
 e005a7c:	e3500000 	cmp	r0, #0
 e005a80:	1a0001c2 	bne	e006190 <_vfprintf_r+0x1d48>
 e005a84:	e28d4084 	add	r4, sp, #132	; 0x84
 e005a88:	e2466010 	sub	r6, r6, #16
 e005a8c:	e1a02004 	mov	r2, r4
 e005a90:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e005a94:	e2844008 	add	r4, r4, #8
 e005a98:	e51f0bfc 	ldr	r0, [pc, #-3068]	; e004ea4 <_vfprintf_r+0xa5c>
 e005a9c:	e3560010 	cmp	r6, #16
 e005aa0:	e59d1080 	ldr	r1, [sp, #128]	; 0x80
 e005aa4:	e2833001 	add	r3, r3, #1
 e005aa8:	e5820000 	str	r0, [r2]
 e005aac:	caffffe8 	bgt	e005a54 <_vfprintf_r+0x160c>
 e005ab0:	e5826004 	str	r6, [r2, #4]
 e005ab4:	e3530007 	cmp	r3, #7
 e005ab8:	e0866001 	add	r6, r6, r1
 e005abc:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e005ac0:	e58d6080 	str	r6, [sp, #128]	; 0x80
 e005ac4:	daffffda 	ble	e005a34 <_vfprintf_r+0x15ec>
 e005ac8:	e28d2078 	add	r2, sp, #120	; 0x78
 e005acc:	e1a01005 	mov	r1, r5
 e005ad0:	e1a00007 	mov	r0, r7
 e005ad4:	ebfff645 	bl	e0033f0 <__sprint_r>
 e005ad8:	e3500000 	cmp	r0, #0
 e005adc:	1a0001ab 	bne	e006190 <_vfprintf_r+0x1d48>
 e005ae0:	e28d4084 	add	r4, sp, #132	; 0x84
 e005ae4:	eaffffd2 	b	e005a34 <_vfprintf_r+0x15ec>
 e005ae8:	e59d300c 	ldr	r3, [sp, #12]
 e005aec:	e1580003 	cmp	r8, r3
 e005af0:	b1a09008 	movlt	r9, r8
 e005af4:	a1a09003 	movge	r9, r3
 e005af8:	e3590000 	cmp	r9, #0
 e005afc:	da000010 	ble	e005b44 <_vfprintf_r+0x16fc>
 e005b00:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e005b04:	e0890000 	add	r0, r9, r0
 e005b08:	e584a000 	str	sl, [r4]
 e005b0c:	e2833001 	add	r3, r3, #1
 e005b10:	e5849004 	str	r9, [r4, #4]
 e005b14:	e3530007 	cmp	r3, #7
 e005b18:	e58d0080 	str	r0, [sp, #128]	; 0x80
 e005b1c:	d2844008 	addle	r4, r4, #8
 e005b20:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e005b24:	da000006 	ble	e005b44 <_vfprintf_r+0x16fc>
 e005b28:	e28d2078 	add	r2, sp, #120	; 0x78
 e005b2c:	e1a01005 	mov	r1, r5
 e005b30:	e1a00007 	mov	r0, r7
 e005b34:	ebfff62d 	bl	e0033f0 <__sprint_r>
 e005b38:	e3500000 	cmp	r0, #0
 e005b3c:	1a000193 	bne	e006190 <_vfprintf_r+0x1d48>
 e005b40:	e28d4084 	add	r4, sp, #132	; 0x84
 e005b44:	e3590000 	cmp	r9, #0
 e005b48:	a0486009 	subge	r6, r8, r9
 e005b4c:	b1a06008 	movlt	r6, r8
 e005b50:	e3560000 	cmp	r6, #0
 e005b54:	c3a09010 	movgt	r9, #16
 e005b58:	ca000063 	bgt	e005cec <_vfprintf_r+0x18a4>
 e005b5c:	e08a8008 	add	r8, sl, r8
 e005b60:	e31b0b01 	tst	fp, #1024	; 0x400
 e005b64:	0a000007 	beq	e005b88 <_vfprintf_r+0x1740>
 e005b68:	e1cd21d8 	ldrd	r2, [sp, #24]
 e005b6c:	e3520000 	cmp	r2, #0
 e005b70:	d3530000 	cmple	r3, #0
 e005b74:	ca000073 	bgt	e005d48 <_vfprintf_r+0x1900>
 e005b78:	e59d300c 	ldr	r3, [sp, #12]
 e005b7c:	e08a3003 	add	r3, sl, r3
 e005b80:	e1580003 	cmp	r8, r3
 e005b84:	21a08003 	movcs	r8, r3
 e005b88:	e59d3060 	ldr	r3, [sp, #96]	; 0x60
 e005b8c:	e59d200c 	ldr	r2, [sp, #12]
 e005b90:	e1530002 	cmp	r3, r2
 e005b94:	ba000001 	blt	e005ba0 <_vfprintf_r+0x1758>
 e005b98:	e31b0001 	tst	fp, #1
 e005b9c:	0a000014 	beq	e005bf4 <_vfprintf_r+0x17ac>
 e005ba0:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
 e005ba4:	e5843000 	str	r3, [r4]
 e005ba8:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
 e005bac:	e5843004 	str	r3, [r4, #4]
 e005bb0:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
 e005bb4:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
 e005bb8:	e0833002 	add	r3, r3, r2
 e005bbc:	e58d3080 	str	r3, [sp, #128]	; 0x80
 e005bc0:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e005bc4:	e2833001 	add	r3, r3, #1
 e005bc8:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e005bcc:	e3530007 	cmp	r3, #7
 e005bd0:	d2844008 	addle	r4, r4, #8
 e005bd4:	da000006 	ble	e005bf4 <_vfprintf_r+0x17ac>
 e005bd8:	e28d2078 	add	r2, sp, #120	; 0x78
 e005bdc:	e1a01005 	mov	r1, r5
 e005be0:	e1a00007 	mov	r0, r7
 e005be4:	ebfff601 	bl	e0033f0 <__sprint_r>
 e005be8:	e3500000 	cmp	r0, #0
 e005bec:	1a000167 	bne	e006190 <_vfprintf_r+0x1d48>
 e005bf0:	e28d4084 	add	r4, sp, #132	; 0x84
 e005bf4:	e59d300c 	ldr	r3, [sp, #12]
 e005bf8:	e59d6060 	ldr	r6, [sp, #96]	; 0x60
 e005bfc:	e08a2003 	add	r2, sl, r3
 e005c00:	e0436006 	sub	r6, r3, r6
 e005c04:	e0422008 	sub	r2, r2, r8
 e005c08:	e1560002 	cmp	r6, r2
 e005c0c:	a1a06002 	movge	r6, r2
 e005c10:	e3560000 	cmp	r6, #0
 e005c14:	da000011 	ble	e005c60 <_vfprintf_r+0x1818>
 e005c18:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
 e005c1c:	e5848000 	str	r8, [r4]
 e005c20:	e0863003 	add	r3, r6, r3
 e005c24:	e58d3080 	str	r3, [sp, #128]	; 0x80
 e005c28:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e005c2c:	e5846004 	str	r6, [r4, #4]
 e005c30:	e2833001 	add	r3, r3, #1
 e005c34:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e005c38:	e3530007 	cmp	r3, #7
 e005c3c:	d2844008 	addle	r4, r4, #8
 e005c40:	da000006 	ble	e005c60 <_vfprintf_r+0x1818>
 e005c44:	e28d2078 	add	r2, sp, #120	; 0x78
 e005c48:	e1a01005 	mov	r1, r5
 e005c4c:	e1a00007 	mov	r0, r7
 e005c50:	ebfff5e6 	bl	e0033f0 <__sprint_r>
 e005c54:	e3500000 	cmp	r0, #0
 e005c58:	1a00014c 	bne	e006190 <_vfprintf_r+0x1d48>
 e005c5c:	e28d4084 	add	r4, sp, #132	; 0x84
 e005c60:	e59d8060 	ldr	r8, [sp, #96]	; 0x60
 e005c64:	e3560000 	cmp	r6, #0
 e005c68:	e59d300c 	ldr	r3, [sp, #12]
 e005c6c:	e0438008 	sub	r8, r3, r8
 e005c70:	a0488006 	subge	r8, r8, r6
 e005c74:	e3580000 	cmp	r8, #0
 e005c78:	c3a06010 	movgt	r6, #16
 e005c7c:	dafffefe 	ble	e00587c <_vfprintf_r+0x1434>
 e005c80:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e005c84:	e2841008 	add	r1, r4, #8
 e005c88:	e51f0dec 	ldr	r0, [pc, #-3564]	; e004ea4 <_vfprintf_r+0xa5c>
 e005c8c:	e3580010 	cmp	r8, #16
 e005c90:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
 e005c94:	e2833001 	add	r3, r3, #1
 e005c98:	e5840000 	str	r0, [r4]
 e005c9c:	ca000093 	bgt	e005ef0 <_vfprintf_r+0x1aa8>
 e005ca0:	e5848004 	str	r8, [r4, #4]
 e005ca4:	e0888002 	add	r8, r8, r2
 e005ca8:	e58d8080 	str	r8, [sp, #128]	; 0x80
 e005cac:	eaffff25 	b	e005948 <_vfprintf_r+0x1500>
 e005cb0:	e2822010 	add	r2, r2, #16
 e005cb4:	e3530007 	cmp	r3, #7
 e005cb8:	e5849004 	str	r9, [r4, #4]
 e005cbc:	e58d2080 	str	r2, [sp, #128]	; 0x80
 e005cc0:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e005cc4:	da000006 	ble	e005ce4 <_vfprintf_r+0x189c>
 e005cc8:	e28d2078 	add	r2, sp, #120	; 0x78
 e005ccc:	e1a01005 	mov	r1, r5
 e005cd0:	e1a00007 	mov	r0, r7
 e005cd4:	ebfff5c5 	bl	e0033f0 <__sprint_r>
 e005cd8:	e3500000 	cmp	r0, #0
 e005cdc:	1a00012b 	bne	e006190 <_vfprintf_r+0x1d48>
 e005ce0:	e28d1084 	add	r1, sp, #132	; 0x84
 e005ce4:	e2466010 	sub	r6, r6, #16
 e005ce8:	e1a04001 	mov	r4, r1
 e005cec:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e005cf0:	e2841008 	add	r1, r4, #8
 e005cf4:	e51f0e58 	ldr	r0, [pc, #-3672]	; e004ea4 <_vfprintf_r+0xa5c>
 e005cf8:	e3560010 	cmp	r6, #16
 e005cfc:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
 e005d00:	e2833001 	add	r3, r3, #1
 e005d04:	e5840000 	str	r0, [r4]
 e005d08:	caffffe8 	bgt	e005cb0 <_vfprintf_r+0x1868>
 e005d0c:	e3530007 	cmp	r3, #7
 e005d10:	e5846004 	str	r6, [r4, #4]
 e005d14:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e005d18:	e0866002 	add	r6, r6, r2
 e005d1c:	d1a04001 	movle	r4, r1
 e005d20:	e58d6080 	str	r6, [sp, #128]	; 0x80
 e005d24:	daffff8c 	ble	e005b5c <_vfprintf_r+0x1714>
 e005d28:	e28d2078 	add	r2, sp, #120	; 0x78
 e005d2c:	e1a01005 	mov	r1, r5
 e005d30:	e1a00007 	mov	r0, r7
 e005d34:	ebfff5ad 	bl	e0033f0 <__sprint_r>
 e005d38:	e3500000 	cmp	r0, #0
 e005d3c:	1a000113 	bne	e006190 <_vfprintf_r+0x1d48>
 e005d40:	e28d4084 	add	r4, sp, #132	; 0x84
 e005d44:	eaffff84 	b	e005b5c <_vfprintf_r+0x1714>
 e005d48:	e59d3018 	ldr	r3, [sp, #24]
 e005d4c:	e59d2038 	ldr	r2, [sp, #56]	; 0x38
 e005d50:	e3530000 	cmp	r3, #0
 e005d54:	12433001 	subne	r3, r3, #1
 e005d58:	158d3018 	strne	r3, [sp, #24]
 e005d5c:	059d3020 	ldreq	r3, [sp, #32]
 e005d60:	02433001 	subeq	r3, r3, #1
 e005d64:	058d3020 	streq	r3, [sp, #32]
 e005d68:	059d301c 	ldreq	r3, [sp, #28]
 e005d6c:	02433001 	subeq	r3, r3, #1
 e005d70:	058d301c 	streq	r3, [sp, #28]
 e005d74:	e59d3044 	ldr	r3, [sp, #68]	; 0x44
 e005d78:	e5843000 	str	r3, [r4]
 e005d7c:	e59d3038 	ldr	r3, [sp, #56]	; 0x38
 e005d80:	e5843004 	str	r3, [r4, #4]
 e005d84:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
 e005d88:	e0833002 	add	r3, r3, r2
 e005d8c:	e58d3080 	str	r3, [sp, #128]	; 0x80
 e005d90:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e005d94:	e2833001 	add	r3, r3, #1
 e005d98:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e005d9c:	e3530007 	cmp	r3, #7
 e005da0:	d2844008 	addle	r4, r4, #8
 e005da4:	da000006 	ble	e005dc4 <_vfprintf_r+0x197c>
 e005da8:	e28d2078 	add	r2, sp, #120	; 0x78
 e005dac:	e1a01005 	mov	r1, r5
 e005db0:	e1a00007 	mov	r0, r7
 e005db4:	ebfff58d 	bl	e0033f0 <__sprint_r>
 e005db8:	e3500000 	cmp	r0, #0
 e005dbc:	1a0000f3 	bne	e006190 <_vfprintf_r+0x1d48>
 e005dc0:	e28d4084 	add	r4, sp, #132	; 0x84
 e005dc4:	e59d300c 	ldr	r3, [sp, #12]
 e005dc8:	e59d2020 	ldr	r2, [sp, #32]
 e005dcc:	e08a9003 	add	r9, sl, r3
 e005dd0:	e0493008 	sub	r3, r9, r8
 e005dd4:	e5d29000 	ldrb	r9, [r2]
 e005dd8:	e1590003 	cmp	r9, r3
 e005ddc:	a1a09003 	movge	r9, r3
 e005de0:	e3590000 	cmp	r9, #0
 e005de4:	da000010 	ble	e005e2c <_vfprintf_r+0x19e4>
 e005de8:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
 e005dec:	e1c480f0 	strd	r8, [r4]
 e005df0:	e0893003 	add	r3, r9, r3
 e005df4:	e58d3080 	str	r3, [sp, #128]	; 0x80
 e005df8:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e005dfc:	e2833001 	add	r3, r3, #1
 e005e00:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e005e04:	e3530007 	cmp	r3, #7
 e005e08:	d2844008 	addle	r4, r4, #8
 e005e0c:	da000006 	ble	e005e2c <_vfprintf_r+0x19e4>
 e005e10:	e28d2078 	add	r2, sp, #120	; 0x78
 e005e14:	e1a01005 	mov	r1, r5
 e005e18:	e1a00007 	mov	r0, r7
 e005e1c:	ebfff573 	bl	e0033f0 <__sprint_r>
 e005e20:	e3500000 	cmp	r0, #0
 e005e24:	1a0000d9 	bne	e006190 <_vfprintf_r+0x1d48>
 e005e28:	e28d4084 	add	r4, sp, #132	; 0x84
 e005e2c:	e59d3020 	ldr	r3, [sp, #32]
 e005e30:	e3590000 	cmp	r9, #0
 e005e34:	e5d36000 	ldrb	r6, [r3]
 e005e38:	a0466009 	subge	r6, r6, r9
 e005e3c:	e3560000 	cmp	r6, #0
 e005e40:	da000015 	ble	e005e9c <_vfprintf_r+0x1a54>
 e005e44:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e005e48:	e2841008 	add	r1, r4, #8
 e005e4c:	e51f0fb0 	ldr	r0, [pc, #-4016]	; e004ea4 <_vfprintf_r+0xa5c>
 e005e50:	e3560010 	cmp	r6, #16
 e005e54:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
 e005e58:	e2833001 	add	r3, r3, #1
 e005e5c:	e5840000 	str	r0, [r4]
 e005e60:	ca000011 	bgt	e005eac <_vfprintf_r+0x1a64>
 e005e64:	e3530007 	cmp	r3, #7
 e005e68:	e5846004 	str	r6, [r4, #4]
 e005e6c:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e005e70:	e0866002 	add	r6, r6, r2
 e005e74:	d1a04001 	movle	r4, r1
 e005e78:	e58d6080 	str	r6, [sp, #128]	; 0x80
 e005e7c:	da000006 	ble	e005e9c <_vfprintf_r+0x1a54>
 e005e80:	e28d2078 	add	r2, sp, #120	; 0x78
 e005e84:	e1a01005 	mov	r1, r5
 e005e88:	e1a00007 	mov	r0, r7
 e005e8c:	ebfff557 	bl	e0033f0 <__sprint_r>
 e005e90:	e3500000 	cmp	r0, #0
 e005e94:	1a0000bd 	bne	e006190 <_vfprintf_r+0x1d48>
 e005e98:	e28d4084 	add	r4, sp, #132	; 0x84
 e005e9c:	e59d3020 	ldr	r3, [sp, #32]
 e005ea0:	e5d33000 	ldrb	r3, [r3]
 e005ea4:	e0888003 	add	r8, r8, r3
 e005ea8:	eaffff2e 	b	e005b68 <_vfprintf_r+0x1720>
 e005eac:	e3a00010 	mov	r0, #16
 e005eb0:	e3530007 	cmp	r3, #7
 e005eb4:	e0822000 	add	r2, r2, r0
 e005eb8:	e5840004 	str	r0, [r4, #4]
 e005ebc:	e58d2080 	str	r2, [sp, #128]	; 0x80
 e005ec0:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e005ec4:	da000006 	ble	e005ee4 <_vfprintf_r+0x1a9c>
 e005ec8:	e28d2078 	add	r2, sp, #120	; 0x78
 e005ecc:	e1a01005 	mov	r1, r5
 e005ed0:	e1a00007 	mov	r0, r7
 e005ed4:	ebfff545 	bl	e0033f0 <__sprint_r>
 e005ed8:	e3500000 	cmp	r0, #0
 e005edc:	1a0000ab 	bne	e006190 <_vfprintf_r+0x1d48>
 e005ee0:	e28d1084 	add	r1, sp, #132	; 0x84
 e005ee4:	e2466010 	sub	r6, r6, #16
 e005ee8:	e1a04001 	mov	r4, r1
 e005eec:	eaffffd4 	b	e005e44 <_vfprintf_r+0x19fc>
 e005ef0:	e2822010 	add	r2, r2, #16
 e005ef4:	e3530007 	cmp	r3, #7
 e005ef8:	e5846004 	str	r6, [r4, #4]
 e005efc:	e58d2080 	str	r2, [sp, #128]	; 0x80
 e005f00:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e005f04:	da000006 	ble	e005f24 <_vfprintf_r+0x1adc>
 e005f08:	e28d2078 	add	r2, sp, #120	; 0x78
 e005f0c:	e1a01005 	mov	r1, r5
 e005f10:	e1a00007 	mov	r0, r7
 e005f14:	ebfff535 	bl	e0033f0 <__sprint_r>
 e005f18:	e3500000 	cmp	r0, #0
 e005f1c:	1a00009b 	bne	e006190 <_vfprintf_r+0x1d48>
 e005f20:	e28d1084 	add	r1, sp, #132	; 0x84
 e005f24:	e2488010 	sub	r8, r8, #16
 e005f28:	e1a04001 	mov	r4, r1
 e005f2c:	eaffff53 	b	e005c80 <_vfprintf_r+0x1838>
 e005f30:	e59d207c 	ldr	r2, [sp, #124]	; 0x7c
 e005f34:	e2800001 	add	r0, r0, #1
 e005f38:	e59d100c 	ldr	r1, [sp, #12]
 e005f3c:	e2843008 	add	r3, r4, #8
 e005f40:	e2822001 	add	r2, r2, #1
 e005f44:	e3510001 	cmp	r1, #1
 e005f48:	ca000001 	bgt	e005f54 <_vfprintf_r+0x1b0c>
 e005f4c:	e31b0001 	tst	fp, #1
 e005f50:	0a00006d 	beq	e00610c <_vfprintf_r+0x1cc4>
 e005f54:	e3a01001 	mov	r1, #1
 e005f58:	e3520007 	cmp	r2, #7
 e005f5c:	e584a000 	str	sl, [r4]
 e005f60:	e5841004 	str	r1, [r4, #4]
 e005f64:	e58d0080 	str	r0, [sp, #128]	; 0x80
 e005f68:	e58d207c 	str	r2, [sp, #124]	; 0x7c
 e005f6c:	da000006 	ble	e005f8c <_vfprintf_r+0x1b44>
 e005f70:	e28d2078 	add	r2, sp, #120	; 0x78
 e005f74:	e1a01005 	mov	r1, r5
 e005f78:	e1a00007 	mov	r0, r7
 e005f7c:	ebfff51b 	bl	e0033f0 <__sprint_r>
 e005f80:	e3500000 	cmp	r0, #0
 e005f84:	1a000081 	bne	e006190 <_vfprintf_r+0x1d48>
 e005f88:	e28d3084 	add	r3, sp, #132	; 0x84
 e005f8c:	e59d2040 	ldr	r2, [sp, #64]	; 0x40
 e005f90:	e5832000 	str	r2, [r3]
 e005f94:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
 e005f98:	e5832004 	str	r2, [r3, #4]
 e005f9c:	e59d1028 	ldr	r1, [sp, #40]	; 0x28
 e005fa0:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
 e005fa4:	e0822001 	add	r2, r2, r1
 e005fa8:	e58d2080 	str	r2, [sp, #128]	; 0x80
 e005fac:	e59d207c 	ldr	r2, [sp, #124]	; 0x7c
 e005fb0:	e2822001 	add	r2, r2, #1
 e005fb4:	e58d207c 	str	r2, [sp, #124]	; 0x7c
 e005fb8:	e3520007 	cmp	r2, #7
 e005fbc:	d2833008 	addle	r3, r3, #8
 e005fc0:	da000006 	ble	e005fe0 <_vfprintf_r+0x1b98>
 e005fc4:	e28d2078 	add	r2, sp, #120	; 0x78
 e005fc8:	e1a01005 	mov	r1, r5
 e005fcc:	e1a00007 	mov	r0, r7
 e005fd0:	ebfff506 	bl	e0033f0 <__sprint_r>
 e005fd4:	e3500000 	cmp	r0, #0
 e005fd8:	1a00006c 	bne	e006190 <_vfprintf_r+0x1d48>
 e005fdc:	e28d3084 	add	r3, sp, #132	; 0x84
 e005fe0:	eeb58b40 	vcmp.f64	d8, #0.0
 e005fe4:	e59d200c 	ldr	r2, [sp, #12]
 e005fe8:	e2424001 	sub	r4, r2, #1
 e005fec:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 e005ff0:	0a000022 	beq	e006080 <_vfprintf_r+0x1c38>
 e005ff4:	e59d107c 	ldr	r1, [sp, #124]	; 0x7c
 e005ff8:	e28a0001 	add	r0, sl, #1
 e005ffc:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
 e006000:	e2811001 	add	r1, r1, #1
 e006004:	e8830011 	stm	r3, {r0, r4}
 e006008:	e59d000c 	ldr	r0, [sp, #12]
 e00600c:	e2422001 	sub	r2, r2, #1
 e006010:	e3510007 	cmp	r1, #7
 e006014:	e58d107c 	str	r1, [sp, #124]	; 0x7c
 e006018:	e0822000 	add	r2, r2, r0
 e00601c:	d2833008 	addle	r3, r3, #8
 e006020:	e58d2080 	str	r2, [sp, #128]	; 0x80
 e006024:	da000006 	ble	e006044 <_vfprintf_r+0x1bfc>
 e006028:	e28d2078 	add	r2, sp, #120	; 0x78
 e00602c:	e1a01005 	mov	r1, r5
 e006030:	e1a00007 	mov	r0, r7
 e006034:	ebfff4ed 	bl	e0033f0 <__sprint_r>
 e006038:	e3500000 	cmp	r0, #0
 e00603c:	1a000053 	bne	e006190 <_vfprintf_r+0x1d48>
 e006040:	e28d3084 	add	r3, sp, #132	; 0x84
 e006044:	e28d2068 	add	r2, sp, #104	; 0x68
 e006048:	e5832000 	str	r2, [r3]
 e00604c:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
 e006050:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 e006054:	e5832004 	str	r2, [r3, #4]
 e006058:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
 e00605c:	e0822001 	add	r2, r2, r1
 e006060:	e58d2080 	str	r2, [sp, #128]	; 0x80
 e006064:	e59d207c 	ldr	r2, [sp, #124]	; 0x7c
 e006068:	e2822001 	add	r2, r2, #1
 e00606c:	e58d207c 	str	r2, [sp, #124]	; 0x7c
 e006070:	e3520007 	cmp	r2, #7
 e006074:	d2834008 	addle	r4, r3, #8
 e006078:	dafffdff 	ble	e00587c <_vfprintf_r+0x1434>
 e00607c:	eafffc71 	b	e005248 <_vfprintf_r+0xe00>
 e006080:	e3540000 	cmp	r4, #0
 e006084:	c3a06010 	movgt	r6, #16
 e006088:	daffffed 	ble	e006044 <_vfprintf_r+0x1bfc>
 e00608c:	e59d207c 	ldr	r2, [sp, #124]	; 0x7c
 e006090:	e2830008 	add	r0, r3, #8
 e006094:	e59fc2b4 	ldr	ip, [pc, #692]	; e006350 <_vfprintf_r+0x1f08>
 e006098:	e3540010 	cmp	r4, #16
 e00609c:	e59d1080 	ldr	r1, [sp, #128]	; 0x80
 e0060a0:	e2822001 	add	r2, r2, #1
 e0060a4:	e583c000 	str	ip, [r3]
 e0060a8:	ca000007 	bgt	e0060cc <_vfprintf_r+0x1c84>
 e0060ac:	e3520007 	cmp	r2, #7
 e0060b0:	e5834004 	str	r4, [r3, #4]
 e0060b4:	e58d207c 	str	r2, [sp, #124]	; 0x7c
 e0060b8:	e0844001 	add	r4, r4, r1
 e0060bc:	d1a03000 	movle	r3, r0
 e0060c0:	e58d4080 	str	r4, [sp, #128]	; 0x80
 e0060c4:	daffffde 	ble	e006044 <_vfprintf_r+0x1bfc>
 e0060c8:	eaffffd6 	b	e006028 <_vfprintf_r+0x1be0>
 e0060cc:	e2811010 	add	r1, r1, #16
 e0060d0:	e3520007 	cmp	r2, #7
 e0060d4:	e5836004 	str	r6, [r3, #4]
 e0060d8:	e58d1080 	str	r1, [sp, #128]	; 0x80
 e0060dc:	e58d207c 	str	r2, [sp, #124]	; 0x7c
 e0060e0:	da000006 	ble	e006100 <_vfprintf_r+0x1cb8>
 e0060e4:	e28d2078 	add	r2, sp, #120	; 0x78
 e0060e8:	e1a01005 	mov	r1, r5
 e0060ec:	e1a00007 	mov	r0, r7
 e0060f0:	ebfff4be 	bl	e0033f0 <__sprint_r>
 e0060f4:	e3500000 	cmp	r0, #0
 e0060f8:	1a000024 	bne	e006190 <_vfprintf_r+0x1d48>
 e0060fc:	e28d0084 	add	r0, sp, #132	; 0x84
 e006100:	e2444010 	sub	r4, r4, #16
 e006104:	e1a03000 	mov	r3, r0
 e006108:	eaffffdf 	b	e00608c <_vfprintf_r+0x1c44>
 e00610c:	e3a01001 	mov	r1, #1
 e006110:	e3520007 	cmp	r2, #7
 e006114:	e584a000 	str	sl, [r4]
 e006118:	e5841004 	str	r1, [r4, #4]
 e00611c:	e58d0080 	str	r0, [sp, #128]	; 0x80
 e006120:	e58d207c 	str	r2, [sp, #124]	; 0x7c
 e006124:	daffffc6 	ble	e006044 <_vfprintf_r+0x1bfc>
 e006128:	eaffffbe 	b	e006028 <_vfprintf_r+0x1be0>
 e00612c:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
 e006130:	e59d2034 	ldr	r2, [sp, #52]	; 0x34
 e006134:	e0436002 	sub	r6, r3, r2
 e006138:	e3560000 	cmp	r6, #0
 e00613c:	c3a09010 	movgt	r9, #16
 e006140:	c59f820c 	ldrgt	r8, [pc, #524]	; e006354 <_vfprintf_r+0x1f0c>
 e006144:	dafffdce 	ble	e005884 <_vfprintf_r+0x143c>
 e006148:	e59d307c 	ldr	r3, [sp, #124]	; 0x7c
 e00614c:	e3560010 	cmp	r6, #16
 e006150:	e59d2080 	ldr	r2, [sp, #128]	; 0x80
 e006154:	e2833001 	add	r3, r3, #1
 e006158:	e5848000 	str	r8, [r4]
 e00615c:	ca000012 	bgt	e0061ac <_vfprintf_r+0x1d64>
 e006160:	e5846004 	str	r6, [r4, #4]
 e006164:	e3530007 	cmp	r3, #7
 e006168:	e0866002 	add	r6, r6, r2
 e00616c:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e006170:	e58d6080 	str	r6, [sp, #128]	; 0x80
 e006174:	dafffdc2 	ble	e005884 <_vfprintf_r+0x143c>
 e006178:	e28d2078 	add	r2, sp, #120	; 0x78
 e00617c:	e1a01005 	mov	r1, r5
 e006180:	e1a00007 	mov	r0, r7
 e006184:	ebfff499 	bl	e0033f0 <__sprint_r>
 e006188:	e3500000 	cmp	r0, #0
 e00618c:	0afffdbc 	beq	e005884 <_vfprintf_r+0x143c>
 e006190:	e59d3008 	ldr	r3, [sp, #8]
 e006194:	e3530000 	cmp	r3, #0
 e006198:	0afffa86 	beq	e004bb8 <_vfprintf_r+0x770>
 e00619c:	e1a01003 	mov	r1, r3
 e0061a0:	e1a00007 	mov	r0, r7
 e0061a4:	eb001d44 	bl	e00d6bc <__wrap__free_r>
 e0061a8:	eafffa82 	b	e004bb8 <_vfprintf_r+0x770>
 e0061ac:	e3530007 	cmp	r3, #7
 e0061b0:	e2822010 	add	r2, r2, #16
 e0061b4:	e5849004 	str	r9, [r4, #4]
 e0061b8:	d2844008 	addle	r4, r4, #8
 e0061bc:	e58d2080 	str	r2, [sp, #128]	; 0x80
 e0061c0:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e0061c4:	da000006 	ble	e0061e4 <_vfprintf_r+0x1d9c>
 e0061c8:	e28d2078 	add	r2, sp, #120	; 0x78
 e0061cc:	e1a01005 	mov	r1, r5
 e0061d0:	e1a00007 	mov	r0, r7
 e0061d4:	ebfff485 	bl	e0033f0 <__sprint_r>
 e0061d8:	e3500000 	cmp	r0, #0
 e0061dc:	1affffeb 	bne	e006190 <_vfprintf_r+0x1d48>
 e0061e0:	e28d4084 	add	r4, sp, #132	; 0x84
 e0061e4:	e2466010 	sub	r6, r6, #16
 e0061e8:	eaffffd6 	b	e006148 <_vfprintf_r+0x1d00>
 e0061ec:	e59d1008 	ldr	r1, [sp, #8]
 e0061f0:	e1a00007 	mov	r0, r7
 e0061f4:	eb001d30 	bl	e00d6bc <__wrap__free_r>
 e0061f8:	eafffdb6 	b	e0058d8 <_vfprintf_r+0x1490>
 e0061fc:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
 e006200:	e3530000 	cmp	r3, #0
 e006204:	1a000002 	bne	e006214 <_vfprintf_r+0x1dcc>
 e006208:	e3a03000 	mov	r3, #0
 e00620c:	e58d307c 	str	r3, [sp, #124]	; 0x7c
 e006210:	eafffa68 	b	e004bb8 <_vfprintf_r+0x770>
 e006214:	e28d2078 	add	r2, sp, #120	; 0x78
 e006218:	e1a01005 	mov	r1, r5
 e00621c:	e1a00007 	mov	r0, r7
 e006220:	ebfff472 	bl	e0033f0 <__sprint_r>
 e006224:	e3500000 	cmp	r0, #0
 e006228:	0afffff6 	beq	e006208 <_vfprintf_r+0x1dc0>
 e00622c:	eafffa61 	b	e004bb8 <_vfprintf_r+0x770>
 e006230:	e3760001 	cmn	r6, #1
 e006234:	11a0100b 	movne	r1, fp
 e006238:	13a03001 	movne	r3, #1
 e00623c:	1afffcf6 	bne	e00561c <_vfprintf_r+0x11d4>
 e006240:	e358000a 	cmp	r8, #10
 e006244:	e2d93000 	sbcs	r3, r9, #0
 e006248:	32888030 	addcc	r8, r8, #48	; 0x30
 e00624c:	35cd8127 	strbcc	r8, [sp, #295]	; 0x127
 e006250:	3afffcff 	bcc	e005654 <_vfprintf_r+0x120c>
 e006254:	e3a03000 	mov	r3, #0
 e006258:	e58d300c 	str	r3, [sp, #12]
 e00625c:	e28d3f4a 	add	r3, sp, #296	; 0x128
 e006260:	e58d3008 	str	r3, [sp, #8]
 e006264:	e20b3b01 	and	r3, fp, #1024	; 0x400
 e006268:	e58d3018 	str	r3, [sp, #24]
 e00626c:	e59d3008 	ldr	r3, [sp, #8]
 e006270:	e3a0200a 	mov	r2, #10
 e006274:	e1a00008 	mov	r0, r8
 e006278:	e1a01009 	mov	r1, r9
 e00627c:	e243a001 	sub	sl, r3, #1
 e006280:	e3a03000 	mov	r3, #0
 e006284:	ebffe842 	bl	e000394 <__aeabi_uldivmod>
 e006288:	e59d3008 	ldr	r3, [sp, #8]
 e00628c:	e2822030 	add	r2, r2, #48	; 0x30
 e006290:	e5432001 	strb	r2, [r3, #-1]
 e006294:	e59d300c 	ldr	r3, [sp, #12]
 e006298:	e2833001 	add	r3, r3, #1
 e00629c:	e58d300c 	str	r3, [sp, #12]
 e0062a0:	e59d3018 	ldr	r3, [sp, #24]
 e0062a4:	e3530000 	cmp	r3, #0
 e0062a8:	0a00001c 	beq	e006320 <_vfprintf_r+0x1ed8>
 e0062ac:	e59d3020 	ldr	r3, [sp, #32]
 e0062b0:	e358000a 	cmp	r8, #10
 e0062b4:	e59d100c 	ldr	r1, [sp, #12]
 e0062b8:	e5d32000 	ldrb	r2, [r3]
 e0062bc:	e2d93000 	sbcs	r3, r9, #0
 e0062c0:	23a03001 	movcs	r3, #1
 e0062c4:	33a03000 	movcc	r3, #0
 e0062c8:	e35200ff 	cmp	r2, #255	; 0xff
 e0062cc:	03a03000 	moveq	r3, #0
 e0062d0:	12033001 	andne	r3, r3, #1
 e0062d4:	e1520001 	cmp	r2, r1
 e0062d8:	13a03000 	movne	r3, #0
 e0062dc:	02033001 	andeq	r3, r3, #1
 e0062e0:	e3530000 	cmp	r3, #0
 e0062e4:	0a00000d 	beq	e006320 <_vfprintf_r+0x1ed8>
 e0062e8:	e59d3038 	ldr	r3, [sp, #56]	; 0x38
 e0062ec:	e59d1044 	ldr	r1, [sp, #68]	; 0x44
 e0062f0:	e04aa003 	sub	sl, sl, r3
 e0062f4:	e1a02003 	mov	r2, r3
 e0062f8:	e1a0000a 	mov	r0, sl
 e0062fc:	eb0034e8 	bl	e0136a4 <__wrap_strncpy>
 e006300:	e59d3020 	ldr	r3, [sp, #32]
 e006304:	e5d33001 	ldrb	r3, [r3, #1]
 e006308:	e3530000 	cmp	r3, #0
 e00630c:	159d3020 	ldrne	r3, [sp, #32]
 e006310:	12833001 	addne	r3, r3, #1
 e006314:	158d3020 	strne	r3, [sp, #32]
 e006318:	13a03000 	movne	r3, #0
 e00631c:	e58d300c 	str	r3, [sp, #12]
 e006320:	e3a03000 	mov	r3, #0
 e006324:	e3a0200a 	mov	r2, #10
 e006328:	e1a00008 	mov	r0, r8
 e00632c:	e1a01009 	mov	r1, r9
 e006330:	ebffe817 	bl	e000394 <__aeabi_uldivmod>
 e006334:	e358000a 	cmp	r8, #10
 e006338:	e2d93000 	sbcs	r3, r9, #0
 e00633c:	3afff9c7 	bcc	e004a60 <_vfprintf_r+0x618>
 e006340:	e1a08000 	mov	r8, r0
 e006344:	e1a09001 	mov	r9, r1
 e006348:	e58da008 	str	sl, [sp, #8]
 e00634c:	eaffffc6 	b	e00626c <_vfprintf_r+0x1e24>
 e006350:	0e014350 	.word	0x0e014350
 e006354:	0e014340 	.word	0x0e014340

0e006358 <vfprintf>:
 e006358:	e1a03002 	mov	r3, r2
 e00635c:	e1a02001 	mov	r2, r1
 e006360:	e1a01000 	mov	r1, r0
 e006364:	e59f0004 	ldr	r0, [pc, #4]	; e006370 <vfprintf+0x18>
 e006368:	e5900000 	ldr	r0, [r0]
 e00636c:	eafff835 	b	e004448 <_vfprintf_r>
 e006370:	60095000 	.word	0x60095000

0e006374 <__sbprintf>:
 e006374:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e006378:	e1a08003 	mov	r8, r3
 e00637c:	e1d130bc 	ldrh	r3, [r1, #12]
 e006380:	e24dde46 	sub	sp, sp, #1120	; 0x460
 e006384:	e1a05002 	mov	r5, r2
 e006388:	e24dd008 	sub	sp, sp, #8
 e00638c:	e3c33002 	bic	r3, r3, #2
 e006390:	e1a0700d 	mov	r7, sp
 e006394:	e1a06000 	mov	r6, r0
 e006398:	e28d0058 	add	r0, sp, #88	; 0x58
 e00639c:	e1a04001 	mov	r4, r1
 e0063a0:	e1c730bc 	strh	r3, [r7, #12]
 e0063a4:	e5913064 	ldr	r3, [r1, #100]	; 0x64
 e0063a8:	e58d3064 	str	r3, [sp, #100]	; 0x64
 e0063ac:	e1d130be 	ldrh	r3, [r1, #14]
 e0063b0:	e1c730be 	strh	r3, [r7, #14]
 e0063b4:	e5913020 	ldr	r3, [r1, #32]
 e0063b8:	e58d3020 	str	r3, [sp, #32]
 e0063bc:	e5913028 	ldr	r3, [r1, #40]	; 0x28
 e0063c0:	e58d3028 	str	r3, [sp, #40]	; 0x28
 e0063c4:	e28d3068 	add	r3, sp, #104	; 0x68
 e0063c8:	e58d3000 	str	r3, [sp]
 e0063cc:	e58d3010 	str	r3, [sp, #16]
 e0063d0:	e3a03b01 	mov	r3, #1024	; 0x400
 e0063d4:	e58d3008 	str	r3, [sp, #8]
 e0063d8:	e58d3014 	str	r3, [sp, #20]
 e0063dc:	e3a03000 	mov	r3, #0
 e0063e0:	e58d3018 	str	r3, [sp, #24]
 e0063e4:	ebffea37 	bl	e000cc8 <__retarget_lock_init_recursive>
 e0063e8:	e1a02005 	mov	r2, r5
 e0063ec:	e1a03008 	mov	r3, r8
 e0063f0:	e1a01007 	mov	r1, r7
 e0063f4:	e1a00006 	mov	r0, r6
 e0063f8:	ebfff812 	bl	e004448 <_vfprintf_r>
 e0063fc:	e2505000 	subs	r5, r0, #0
 e006400:	ba000004 	blt	e006418 <__sbprintf+0xa4>
 e006404:	e1a01007 	mov	r1, r7
 e006408:	e1a00006 	mov	r0, r6
 e00640c:	ebffe8bb 	bl	e000700 <_fflush_r>
 e006410:	e3500000 	cmp	r0, #0
 e006414:	13e05000 	mvnne	r5, #0
 e006418:	e1dd30bc 	ldrh	r3, [sp, #12]
 e00641c:	e59d0058 	ldr	r0, [sp, #88]	; 0x58
 e006420:	e3130040 	tst	r3, #64	; 0x40
 e006424:	11d430bc 	ldrhne	r3, [r4, #12]
 e006428:	13833040 	orrne	r3, r3, #64	; 0x40
 e00642c:	11c430bc 	strhne	r3, [r4, #12]
 e006430:	ebffea26 	bl	e000cd0 <__retarget_lock_close_recursive>
 e006434:	e1a00005 	mov	r0, r5
 e006438:	e28dde46 	add	sp, sp, #1120	; 0x460
 e00643c:	e28dd008 	add	sp, sp, #8
 e006440:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0e006444 <_wctomb_r>:
 e006444:	e59fc010 	ldr	ip, [pc, #16]	; e00645c <_wctomb_r+0x18>
 e006448:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e00644c:	e59ce0e0 	ldr	lr, [ip, #224]	; 0xe0
 e006450:	e1a0c00e 	mov	ip, lr
 e006454:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 e006458:	e12fff1c 	bx	ip
 e00645c:	600950f4 	.word	0x600950f4

0e006460 <__ascii_wctomb>:
 e006460:	e1a03000 	mov	r3, r0
 e006464:	e2510000 	subs	r0, r1, #0
 e006468:	012fff1e 	bxeq	lr
 e00646c:	e35200ff 	cmp	r2, #255	; 0xff
 e006470:	95c02000 	strbls	r2, [r0]
 e006474:	83a0208a 	movhi	r2, #138	; 0x8a
 e006478:	85832000 	strhi	r2, [r3]
 e00647c:	83e00000 	mvnhi	r0, #0
 e006480:	93a00001 	movls	r0, #1
 e006484:	e12fff1e 	bx	lr

0e006488 <__swsetup_r>:
 e006488:	e59f3124 	ldr	r3, [pc, #292]	; e0065b4 <__swsetup_r+0x12c>
 e00648c:	e92d4070 	push	{r4, r5, r6, lr}
 e006490:	e1a05000 	mov	r5, r0
 e006494:	e1a04001 	mov	r4, r1
 e006498:	e5930000 	ldr	r0, [r3]
 e00649c:	e3500000 	cmp	r0, #0
 e0064a0:	0a000003 	beq	e0064b4 <__swsetup_r+0x2c>
 e0064a4:	e5903018 	ldr	r3, [r0, #24]
 e0064a8:	e3530000 	cmp	r3, #0
 e0064ac:	1a000000 	bne	e0064b4 <__swsetup_r+0x2c>
 e0064b0:	ebffe93a 	bl	e0009a0 <__sinit>
 e0064b4:	e1d430bc 	ldrh	r3, [r4, #12]
 e0064b8:	e1d420fc 	ldrsh	r2, [r4, #12]
 e0064bc:	e3130008 	tst	r3, #8
 e0064c0:	1a000019 	bne	e00652c <__swsetup_r+0xa4>
 e0064c4:	e3130010 	tst	r3, #16
 e0064c8:	03a03009 	moveq	r3, #9
 e0064cc:	05853000 	streq	r3, [r5]
 e0064d0:	0a00002d 	beq	e00658c <__swsetup_r+0x104>
 e0064d4:	e3130004 	tst	r3, #4
 e0064d8:	0a000010 	beq	e006520 <__swsetup_r+0x98>
 e0064dc:	e5941034 	ldr	r1, [r4, #52]	; 0x34
 e0064e0:	e3510000 	cmp	r1, #0
 e0064e4:	0a000006 	beq	e006504 <__swsetup_r+0x7c>
 e0064e8:	e2843044 	add	r3, r4, #68	; 0x44
 e0064ec:	e1510003 	cmp	r1, r3
 e0064f0:	0a000001 	beq	e0064fc <__swsetup_r+0x74>
 e0064f4:	e1a00005 	mov	r0, r5
 e0064f8:	eb001c6f 	bl	e00d6bc <__wrap__free_r>
 e0064fc:	e3a03000 	mov	r3, #0
 e006500:	e5843034 	str	r3, [r4, #52]	; 0x34
 e006504:	e1d430bc 	ldrh	r3, [r4, #12]
 e006508:	e3c33024 	bic	r3, r3, #36	; 0x24
 e00650c:	e1c430bc 	strh	r3, [r4, #12]
 e006510:	e3a03000 	mov	r3, #0
 e006514:	e5843004 	str	r3, [r4, #4]
 e006518:	e5943010 	ldr	r3, [r4, #16]
 e00651c:	e5843000 	str	r3, [r4]
 e006520:	e1d430bc 	ldrh	r3, [r4, #12]
 e006524:	e3833008 	orr	r3, r3, #8
 e006528:	e1c430bc 	strh	r3, [r4, #12]
 e00652c:	e5943010 	ldr	r3, [r4, #16]
 e006530:	e3530000 	cmp	r3, #0
 e006534:	1a000006 	bne	e006554 <__swsetup_r+0xcc>
 e006538:	e1d430bc 	ldrh	r3, [r4, #12]
 e00653c:	e2033d0a 	and	r3, r3, #640	; 0x280
 e006540:	e3530c02 	cmp	r3, #512	; 0x200
 e006544:	0a000002 	beq	e006554 <__swsetup_r+0xcc>
 e006548:	e1a01004 	mov	r1, r4
 e00654c:	e1a00005 	mov	r0, r5
 e006550:	eb0001ba 	bl	e006c40 <__smakebuf_r>
 e006554:	e1d400bc 	ldrh	r0, [r4, #12]
 e006558:	e1d420fc 	ldrsh	r2, [r4, #12]
 e00655c:	e2103001 	ands	r3, r0, #1
 e006560:	0a00000d 	beq	e00659c <__swsetup_r+0x114>
 e006564:	e3a03000 	mov	r3, #0
 e006568:	e5843008 	str	r3, [r4, #8]
 e00656c:	e5943014 	ldr	r3, [r4, #20]
 e006570:	e2633000 	rsb	r3, r3, #0
 e006574:	e5843018 	str	r3, [r4, #24]
 e006578:	e5943010 	ldr	r3, [r4, #16]
 e00657c:	e3530000 	cmp	r3, #0
 e006580:	1a000009 	bne	e0065ac <__swsetup_r+0x124>
 e006584:	e2100080 	ands	r0, r0, #128	; 0x80
 e006588:	08bd8070 	popeq	{r4, r5, r6, pc}
 e00658c:	e3823040 	orr	r3, r2, #64	; 0x40
 e006590:	e3e00000 	mvn	r0, #0
 e006594:	e1c430bc 	strh	r3, [r4, #12]
 e006598:	e8bd8070 	pop	{r4, r5, r6, pc}
 e00659c:	e3100002 	tst	r0, #2
 e0065a0:	05943014 	ldreq	r3, [r4, #20]
 e0065a4:	e5843008 	str	r3, [r4, #8]
 e0065a8:	eafffff2 	b	e006578 <__swsetup_r+0xf0>
 e0065ac:	e3a00000 	mov	r0, #0
 e0065b0:	e8bd8070 	pop	{r4, r5, r6, pc}
 e0065b4:	60095000 	.word	0x60095000

0e0065b8 <abort>:
 e0065b8:	e3a00006 	mov	r0, #6
 e0065bc:	e92d4010 	push	{r4, lr}
 e0065c0:	eb000242 	bl	e006ed0 <raise>
 e0065c4:	e3a00001 	mov	r0, #1
 e0065c8:	eb000356 	bl	e007328 <_exit>

0e0065cc <__fputwc>:
 e0065cc:	e92d43f7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
 e0065d0:	e1a08000 	mov	r8, r0
 e0065d4:	e1a06001 	mov	r6, r1
 e0065d8:	e1a05002 	mov	r5, r2
 e0065dc:	ebffef9d 	bl	e002458 <__locale_mb_cur_max>
 e0065e0:	e3500001 	cmp	r0, #1
 e0065e4:	1a000004 	bne	e0065fc <__fputwc+0x30>
 e0065e8:	e2463001 	sub	r3, r6, #1
 e0065ec:	e35300fe 	cmp	r3, #254	; 0xfe
 e0065f0:	95cd6004 	strbls	r6, [sp, #4]
 e0065f4:	91a04000 	movls	r4, r0
 e0065f8:	9a00000e 	bls	e006638 <__fputwc+0x6c>
 e0065fc:	e285305c 	add	r3, r5, #92	; 0x5c
 e006600:	e1a02006 	mov	r2, r6
 e006604:	e28d1004 	add	r1, sp, #4
 e006608:	e1a00008 	mov	r0, r8
 e00660c:	eb00029f 	bl	e007090 <_wcrtomb_r>
 e006610:	e1a04000 	mov	r4, r0
 e006614:	e3700001 	cmn	r0, #1
 e006618:	1a000006 	bne	e006638 <__fputwc+0x6c>
 e00661c:	e1d530bc 	ldrh	r3, [r5, #12]
 e006620:	e1a06000 	mov	r6, r0
 e006624:	e3833040 	orr	r3, r3, #64	; 0x40
 e006628:	e1c530bc 	strh	r3, [r5, #12]
 e00662c:	e1a00006 	mov	r0, r6
 e006630:	e28dd00c 	add	sp, sp, #12
 e006634:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
 e006638:	e3a07000 	mov	r7, #0
 e00663c:	e28d9004 	add	r9, sp, #4
 e006640:	e1570004 	cmp	r7, r4
 e006644:	0afffff8 	beq	e00662c <__fputwc+0x60>
 e006648:	e5953008 	ldr	r3, [r5, #8]
 e00664c:	e7d71009 	ldrb	r1, [r7, r9]
 e006650:	e2433001 	sub	r3, r3, #1
 e006654:	e5853008 	str	r3, [r5, #8]
 e006658:	e3530000 	cmp	r3, #0
 e00665c:	aa000007 	bge	e006680 <__fputwc+0xb4>
 e006660:	e5952018 	ldr	r2, [r5, #24]
 e006664:	e1530002 	cmp	r3, r2
 e006668:	b3a03000 	movlt	r3, #0
 e00666c:	a3a03001 	movge	r3, #1
 e006670:	e351000a 	cmp	r1, #10
 e006674:	03a03000 	moveq	r3, #0
 e006678:	e3530000 	cmp	r3, #0
 e00667c:	0a000005 	beq	e006698 <__fputwc+0xcc>
 e006680:	e5953000 	ldr	r3, [r5]
 e006684:	e2832001 	add	r2, r3, #1
 e006688:	e5852000 	str	r2, [r5]
 e00668c:	e5c31000 	strb	r1, [r3]
 e006690:	e2877001 	add	r7, r7, #1
 e006694:	eaffffe9 	b	e006640 <__fputwc+0x74>
 e006698:	e1a02005 	mov	r2, r5
 e00669c:	e1a00008 	mov	r0, r8
 e0066a0:	eb00022e 	bl	e006f60 <__swbuf_r>
 e0066a4:	e3700001 	cmn	r0, #1
 e0066a8:	1afffff8 	bne	e006690 <__fputwc+0xc4>
 e0066ac:	e1a06000 	mov	r6, r0
 e0066b0:	eaffffdd 	b	e00662c <__fputwc+0x60>

0e0066b4 <_fputwc_r>:
 e0066b4:	e5923064 	ldr	r3, [r2, #100]	; 0x64
 e0066b8:	e92d4070 	push	{r4, r5, r6, lr}
 e0066bc:	e1a05000 	mov	r5, r0
 e0066c0:	e1a06001 	mov	r6, r1
 e0066c4:	e1a04002 	mov	r4, r2
 e0066c8:	e3130001 	tst	r3, #1
 e0066cc:	1a000004 	bne	e0066e4 <_fputwc_r+0x30>
 e0066d0:	e1d230bc 	ldrh	r3, [r2, #12]
 e0066d4:	e3130c02 	tst	r3, #512	; 0x200
 e0066d8:	1a000001 	bne	e0066e4 <_fputwc_r+0x30>
 e0066dc:	e5920058 	ldr	r0, [r2, #88]	; 0x58
 e0066e0:	ebffe97c 	bl	e000cd8 <__retarget_lock_acquire_recursive>
 e0066e4:	e1d430fc 	ldrsh	r3, [r4, #12]
 e0066e8:	e3130a02 	tst	r3, #8192	; 0x2000
 e0066ec:	1a000004 	bne	e006704 <_fputwc_r+0x50>
 e0066f0:	e3833a02 	orr	r3, r3, #8192	; 0x2000
 e0066f4:	e1c430bc 	strh	r3, [r4, #12]
 e0066f8:	e5943064 	ldr	r3, [r4, #100]	; 0x64
 e0066fc:	e3833a02 	orr	r3, r3, #8192	; 0x2000
 e006700:	e5843064 	str	r3, [r4, #100]	; 0x64
 e006704:	e1a00005 	mov	r0, r5
 e006708:	e1a02004 	mov	r2, r4
 e00670c:	e1a01006 	mov	r1, r6
 e006710:	ebffffad 	bl	e0065cc <__fputwc>
 e006714:	e5943064 	ldr	r3, [r4, #100]	; 0x64
 e006718:	e1a05000 	mov	r5, r0
 e00671c:	e3130001 	tst	r3, #1
 e006720:	1a000004 	bne	e006738 <_fputwc_r+0x84>
 e006724:	e1d430bc 	ldrh	r3, [r4, #12]
 e006728:	e3130c02 	tst	r3, #512	; 0x200
 e00672c:	1a000001 	bne	e006738 <_fputwc_r+0x84>
 e006730:	e5940058 	ldr	r0, [r4, #88]	; 0x58
 e006734:	ebffe96d 	bl	e000cf0 <__retarget_lock_release_recursive>
 e006738:	e1a00005 	mov	r0, r5
 e00673c:	e8bd8070 	pop	{r4, r5, r6, pc}

0e006740 <fputwc>:
 e006740:	e59f303c 	ldr	r3, [pc, #60]	; e006784 <fputwc+0x44>
 e006744:	e92d4070 	push	{r4, r5, r6, lr}
 e006748:	e1a05000 	mov	r5, r0
 e00674c:	e1a06001 	mov	r6, r1
 e006750:	e5934000 	ldr	r4, [r3]
 e006754:	e3540000 	cmp	r4, #0
 e006758:	0a000004 	beq	e006770 <fputwc+0x30>
 e00675c:	e5943018 	ldr	r3, [r4, #24]
 e006760:	e3530000 	cmp	r3, #0
 e006764:	1a000001 	bne	e006770 <fputwc+0x30>
 e006768:	e1a00004 	mov	r0, r4
 e00676c:	ebffe88b 	bl	e0009a0 <__sinit>
 e006770:	e1a02006 	mov	r2, r6
 e006774:	e1a01005 	mov	r1, r5
 e006778:	e1a00004 	mov	r0, r4
 e00677c:	e8bd4070 	pop	{r4, r5, r6, lr}
 e006780:	eaffffcb 	b	e0066b4 <_fputwc_r>
 e006784:	60095000 	.word	0x60095000

0e006788 <__sfvwrite_r>:
 e006788:	e5923008 	ldr	r3, [r2, #8]
 e00678c:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e006790:	e3530000 	cmp	r3, #0
 e006794:	1a000002 	bne	e0067a4 <__sfvwrite_r+0x1c>
 e006798:	e3a00000 	mov	r0, #0
 e00679c:	e28dd00c 	add	sp, sp, #12
 e0067a0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e0067a4:	e1d130bc 	ldrh	r3, [r1, #12]
 e0067a8:	e1a07000 	mov	r7, r0
 e0067ac:	e1a04001 	mov	r4, r1
 e0067b0:	e1a09002 	mov	r9, r2
 e0067b4:	e3130008 	tst	r3, #8
 e0067b8:	0a00000d 	beq	e0067f4 <__sfvwrite_r+0x6c>
 e0067bc:	e5913010 	ldr	r3, [r1, #16]
 e0067c0:	e3530000 	cmp	r3, #0
 e0067c4:	0a00000a 	beq	e0067f4 <__sfvwrite_r+0x6c>
 e0067c8:	e1d4a0bc 	ldrh	sl, [r4, #12]
 e0067cc:	e5998000 	ldr	r8, [r9]
 e0067d0:	e21a5002 	ands	r5, sl, #2
 e0067d4:	1a000024 	bne	e00686c <__sfvwrite_r+0xe4>
 e0067d8:	e21aa001 	ands	sl, sl, #1
 e0067dc:	11a00005 	movne	r0, r5
 e0067e0:	11a0b005 	movne	fp, r5
 e0067e4:	11a0a005 	movne	sl, r5
 e0067e8:	1a0000a6 	bne	e006a88 <__sfvwrite_r+0x300>
 e0067ec:	e1a0600a 	mov	r6, sl
 e0067f0:	ea000024 	b	e006888 <__sfvwrite_r+0x100>
 e0067f4:	e1a01004 	mov	r1, r4
 e0067f8:	e1a00007 	mov	r0, r7
 e0067fc:	ebffff21 	bl	e006488 <__swsetup_r>
 e006800:	e3500000 	cmp	r0, #0
 e006804:	0affffef 	beq	e0067c8 <__sfvwrite_r+0x40>
 e006808:	e3e00000 	mvn	r0, #0
 e00680c:	eaffffe2 	b	e00679c <__sfvwrite_r+0x14>
 e006810:	e598a000 	ldr	sl, [r8]
 e006814:	e2888008 	add	r8, r8, #8
 e006818:	e5185004 	ldr	r5, [r8, #-4]
 e00681c:	e3550000 	cmp	r5, #0
 e006820:	0afffffa 	beq	e006810 <__sfvwrite_r+0x88>
 e006824:	e1550006 	cmp	r5, r6
 e006828:	e594b028 	ldr	fp, [r4, #40]	; 0x28
 e00682c:	31a03005 	movcc	r3, r5
 e006830:	21a03006 	movcs	r3, r6
 e006834:	e5941020 	ldr	r1, [r4, #32]
 e006838:	e1a0200a 	mov	r2, sl
 e00683c:	e1a00007 	mov	r0, r7
 e006840:	e12fff3b 	blx	fp
 e006844:	e3500000 	cmp	r0, #0
 e006848:	da00002c 	ble	e006900 <__sfvwrite_r+0x178>
 e00684c:	e5993008 	ldr	r3, [r9, #8]
 e006850:	e08aa000 	add	sl, sl, r0
 e006854:	e0455000 	sub	r5, r5, r0
 e006858:	e0430000 	sub	r0, r3, r0
 e00685c:	e5890008 	str	r0, [r9, #8]
 e006860:	e3500000 	cmp	r0, #0
 e006864:	1affffec 	bne	e00681c <__sfvwrite_r+0x94>
 e006868:	eaffffca 	b	e006798 <__sfvwrite_r+0x10>
 e00686c:	e3a0a000 	mov	sl, #0
 e006870:	e59f6340 	ldr	r6, [pc, #832]	; e006bb8 <__sfvwrite_r+0x430>
 e006874:	e1a0500a 	mov	r5, sl
 e006878:	eaffffe7 	b	e00681c <__sfvwrite_r+0x94>
 e00687c:	e598a000 	ldr	sl, [r8]
 e006880:	e2888008 	add	r8, r8, #8
 e006884:	e5186004 	ldr	r6, [r8, #-4]
 e006888:	e3560000 	cmp	r6, #0
 e00688c:	0afffffa 	beq	e00687c <__sfvwrite_r+0xf4>
 e006890:	e1d430bc 	ldrh	r3, [r4, #12]
 e006894:	e5940000 	ldr	r0, [r4]
 e006898:	e5942008 	ldr	r2, [r4, #8]
 e00689c:	e3130c02 	tst	r3, #512	; 0x200
 e0068a0:	0a00004c 	beq	e0069d8 <__sfvwrite_r+0x250>
 e0068a4:	e1520006 	cmp	r2, r6
 e0068a8:	8a000028 	bhi	e006950 <__sfvwrite_r+0x1c8>
 e0068ac:	e3130d12 	tst	r3, #1152	; 0x480
 e0068b0:	0a000026 	beq	e006950 <__sfvwrite_r+0x1c8>
 e0068b4:	e5945014 	ldr	r5, [r4, #20]
 e0068b8:	e5941010 	ldr	r1, [r4, #16]
 e0068bc:	e0855085 	add	r5, r5, r5, lsl #1
 e0068c0:	e040b001 	sub	fp, r0, r1
 e0068c4:	e28b2001 	add	r2, fp, #1
 e0068c8:	e0855fa5 	add	r5, r5, r5, lsr #31
 e0068cc:	e0822006 	add	r2, r2, r6
 e0068d0:	e1a050c5 	asr	r5, r5, #1
 e0068d4:	e1550002 	cmp	r5, r2
 e0068d8:	31a05002 	movcc	r5, r2
 e0068dc:	e3130b01 	tst	r3, #1024	; 0x400
 e0068e0:	0a000030 	beq	e0069a8 <__sfvwrite_r+0x220>
 e0068e4:	e1a01005 	mov	r1, r5
 e0068e8:	e1a00007 	mov	r0, r7
 e0068ec:	eb001b6d 	bl	e00d6a8 <__wrap__malloc_r>
 e0068f0:	e2503000 	subs	r3, r0, #0
 e0068f4:	1a000005 	bne	e006910 <__sfvwrite_r+0x188>
 e0068f8:	e3a0300c 	mov	r3, #12
 e0068fc:	e5873000 	str	r3, [r7]
 e006900:	e1d430bc 	ldrh	r3, [r4, #12]
 e006904:	e3833040 	orr	r3, r3, #64	; 0x40
 e006908:	e1c430bc 	strh	r3, [r4, #12]
 e00690c:	eaffffbd 	b	e006808 <__sfvwrite_r+0x80>
 e006910:	e1a0200b 	mov	r2, fp
 e006914:	e5941010 	ldr	r1, [r4, #16]
 e006918:	e58d3004 	str	r3, [sp, #4]
 e00691c:	eb001992 	bl	e00cf6c <__wrap_memcpy>
 e006920:	e1d420bc 	ldrh	r2, [r4, #12]
 e006924:	e59d3004 	ldr	r3, [sp, #4]
 e006928:	e3c22d12 	bic	r2, r2, #1152	; 0x480
 e00692c:	e3822080 	orr	r2, r2, #128	; 0x80
 e006930:	e1c420bc 	strh	r2, [r4, #12]
 e006934:	e1a02006 	mov	r2, r6
 e006938:	e5843010 	str	r3, [r4, #16]
 e00693c:	e5845014 	str	r5, [r4, #20]
 e006940:	e083300b 	add	r3, r3, fp
 e006944:	e045500b 	sub	r5, r5, fp
 e006948:	e5843000 	str	r3, [r4]
 e00694c:	e5845008 	str	r5, [r4, #8]
 e006950:	e1520006 	cmp	r2, r6
 e006954:	e5940000 	ldr	r0, [r4]
 e006958:	21a02006 	movcs	r2, r6
 e00695c:	e1a0100a 	mov	r1, sl
 e006960:	e58d2004 	str	r2, [sp, #4]
 e006964:	eb001986 	bl	e00cf84 <__wrap_memmove>
 e006968:	e5943008 	ldr	r3, [r4, #8]
 e00696c:	e1a05006 	mov	r5, r6
 e006970:	e59d2004 	ldr	r2, [sp, #4]
 e006974:	e0433002 	sub	r3, r3, r2
 e006978:	e5843008 	str	r3, [r4, #8]
 e00697c:	e5943000 	ldr	r3, [r4]
 e006980:	e0832002 	add	r2, r3, r2
 e006984:	e5842000 	str	r2, [r4]
 e006988:	e5990008 	ldr	r0, [r9, #8]
 e00698c:	e08aa005 	add	sl, sl, r5
 e006990:	e0466005 	sub	r6, r6, r5
 e006994:	e0405005 	sub	r5, r0, r5
 e006998:	e5895008 	str	r5, [r9, #8]
 e00699c:	e3550000 	cmp	r5, #0
 e0069a0:	1affffb8 	bne	e006888 <__sfvwrite_r+0x100>
 e0069a4:	eaffff7b 	b	e006798 <__sfvwrite_r+0x10>
 e0069a8:	e1a02005 	mov	r2, r5
 e0069ac:	e1a00007 	mov	r0, r7
 e0069b0:	eb001b3e 	bl	e00d6b0 <__wrap__realloc_r>
 e0069b4:	e2503000 	subs	r3, r0, #0
 e0069b8:	1affffdd 	bne	e006934 <__sfvwrite_r+0x1ac>
 e0069bc:	e5941010 	ldr	r1, [r4, #16]
 e0069c0:	e1a00007 	mov	r0, r7
 e0069c4:	eb001b3c 	bl	e00d6bc <__wrap__free_r>
 e0069c8:	e1d430bc 	ldrh	r3, [r4, #12]
 e0069cc:	e3c33080 	bic	r3, r3, #128	; 0x80
 e0069d0:	e1c430bc 	strh	r3, [r4, #12]
 e0069d4:	eaffffc7 	b	e0068f8 <__sfvwrite_r+0x170>
 e0069d8:	e5943010 	ldr	r3, [r4, #16]
 e0069dc:	e1530000 	cmp	r3, r0
 e0069e0:	3a000002 	bcc	e0069f0 <__sfvwrite_r+0x268>
 e0069e4:	e5945014 	ldr	r5, [r4, #20]
 e0069e8:	e1550006 	cmp	r5, r6
 e0069ec:	9a000013 	bls	e006a40 <__sfvwrite_r+0x2b8>
 e0069f0:	e1520006 	cmp	r2, r6
 e0069f4:	e1a0100a 	mov	r1, sl
 e0069f8:	31a05002 	movcc	r5, r2
 e0069fc:	21a05006 	movcs	r5, r6
 e006a00:	e1a02005 	mov	r2, r5
 e006a04:	eb00195e 	bl	e00cf84 <__wrap_memmove>
 e006a08:	e5943008 	ldr	r3, [r4, #8]
 e006a0c:	e5942000 	ldr	r2, [r4]
 e006a10:	e0433005 	sub	r3, r3, r5
 e006a14:	e5843008 	str	r3, [r4, #8]
 e006a18:	e0822005 	add	r2, r2, r5
 e006a1c:	e3530000 	cmp	r3, #0
 e006a20:	e5842000 	str	r2, [r4]
 e006a24:	1affffd7 	bne	e006988 <__sfvwrite_r+0x200>
 e006a28:	e1a01004 	mov	r1, r4
 e006a2c:	e1a00007 	mov	r0, r7
 e006a30:	ebffe732 	bl	e000700 <_fflush_r>
 e006a34:	e3500000 	cmp	r0, #0
 e006a38:	0affffd2 	beq	e006988 <__sfvwrite_r+0x200>
 e006a3c:	eaffffaf 	b	e006900 <__sfvwrite_r+0x178>
 e006a40:	e376010a 	cmn	r6, #-2147483646	; 0x80000002
 e006a44:	e1a01005 	mov	r1, r5
 e006a48:	91a00006 	movls	r0, r6
 e006a4c:	83e00102 	mvnhi	r0, #-2147483648	; 0x80000000
 e006a50:	eb0001f5 	bl	e00722c <__divsi3>
 e006a54:	e594b028 	ldr	fp, [r4, #40]	; 0x28
 e006a58:	e0030095 	mul	r3, r5, r0
 e006a5c:	e5941020 	ldr	r1, [r4, #32]
 e006a60:	e1a0200a 	mov	r2, sl
 e006a64:	e1a00007 	mov	r0, r7
 e006a68:	e12fff3b 	blx	fp
 e006a6c:	e2505000 	subs	r5, r0, #0
 e006a70:	caffffc4 	bgt	e006988 <__sfvwrite_r+0x200>
 e006a74:	eaffffa1 	b	e006900 <__sfvwrite_r+0x178>
 e006a78:	e598b000 	ldr	fp, [r8]
 e006a7c:	e3a00000 	mov	r0, #0
 e006a80:	e598a004 	ldr	sl, [r8, #4]
 e006a84:	e2888008 	add	r8, r8, #8
 e006a88:	e35a0000 	cmp	sl, #0
 e006a8c:	0afffff9 	beq	e006a78 <__sfvwrite_r+0x2f0>
 e006a90:	e3500000 	cmp	r0, #0
 e006a94:	1a000007 	bne	e006ab8 <__sfvwrite_r+0x330>
 e006a98:	e1a0200a 	mov	r2, sl
 e006a9c:	e3a0100a 	mov	r1, #10
 e006aa0:	e1a0000b 	mov	r0, fp
 e006aa4:	eb001933 	bl	e00cf78 <__wrap_memchr>
 e006aa8:	e2505000 	subs	r5, r0, #0
 e006aac:	12855001 	addne	r5, r5, #1
 e006ab0:	028a5001 	addeq	r5, sl, #1
 e006ab4:	1045500b 	subne	r5, r5, fp
 e006ab8:	e5941010 	ldr	r1, [r4, #16]
 e006abc:	e155000a 	cmp	r5, sl
 e006ac0:	e5943014 	ldr	r3, [r4, #20]
 e006ac4:	31a02005 	movcc	r2, r5
 e006ac8:	e5946008 	ldr	r6, [r4, #8]
 e006acc:	21a0200a 	movcs	r2, sl
 e006ad0:	e5940000 	ldr	r0, [r4]
 e006ad4:	e0836006 	add	r6, r3, r6
 e006ad8:	e1500001 	cmp	r0, r1
 e006adc:	93a01000 	movls	r1, #0
 e006ae0:	83a01001 	movhi	r1, #1
 e006ae4:	e1520006 	cmp	r2, r6
 e006ae8:	d3a01000 	movle	r1, #0
 e006aec:	e3510000 	cmp	r1, #0
 e006af0:	0a00001a 	beq	e006b60 <__sfvwrite_r+0x3d8>
 e006af4:	e1a02006 	mov	r2, r6
 e006af8:	e1a0100b 	mov	r1, fp
 e006afc:	eb001920 	bl	e00cf84 <__wrap_memmove>
 e006b00:	e5943000 	ldr	r3, [r4]
 e006b04:	e1a01004 	mov	r1, r4
 e006b08:	e1a00007 	mov	r0, r7
 e006b0c:	e0833006 	add	r3, r3, r6
 e006b10:	e5843000 	str	r3, [r4]
 e006b14:	ebffe6f9 	bl	e000700 <_fflush_r>
 e006b18:	e3500000 	cmp	r0, #0
 e006b1c:	1affff77 	bne	e006900 <__sfvwrite_r+0x178>
 e006b20:	e0555006 	subs	r5, r5, r6
 e006b24:	13a00001 	movne	r0, #1
 e006b28:	1a000004 	bne	e006b40 <__sfvwrite_r+0x3b8>
 e006b2c:	e1a01004 	mov	r1, r4
 e006b30:	e1a00007 	mov	r0, r7
 e006b34:	ebffe6f1 	bl	e000700 <_fflush_r>
 e006b38:	e3500000 	cmp	r0, #0
 e006b3c:	1affff6f 	bne	e006900 <__sfvwrite_r+0x178>
 e006b40:	e5992008 	ldr	r2, [r9, #8]
 e006b44:	e08bb006 	add	fp, fp, r6
 e006b48:	e04aa006 	sub	sl, sl, r6
 e006b4c:	e0426006 	sub	r6, r2, r6
 e006b50:	e5896008 	str	r6, [r9, #8]
 e006b54:	e3560000 	cmp	r6, #0
 e006b58:	1affffca 	bne	e006a88 <__sfvwrite_r+0x300>
 e006b5c:	eaffff0d 	b	e006798 <__sfvwrite_r+0x10>
 e006b60:	e1530002 	cmp	r3, r2
 e006b64:	ca000007 	bgt	e006b88 <__sfvwrite_r+0x400>
 e006b68:	e5946028 	ldr	r6, [r4, #40]	; 0x28
 e006b6c:	e1a0200b 	mov	r2, fp
 e006b70:	e5941020 	ldr	r1, [r4, #32]
 e006b74:	e1a00007 	mov	r0, r7
 e006b78:	e12fff36 	blx	r6
 e006b7c:	e2506000 	subs	r6, r0, #0
 e006b80:	caffffe6 	bgt	e006b20 <__sfvwrite_r+0x398>
 e006b84:	eaffff5d 	b	e006900 <__sfvwrite_r+0x178>
 e006b88:	e1a0100b 	mov	r1, fp
 e006b8c:	e58d2004 	str	r2, [sp, #4]
 e006b90:	eb0018fb 	bl	e00cf84 <__wrap_memmove>
 e006b94:	e59d2004 	ldr	r2, [sp, #4]
 e006b98:	e5943008 	ldr	r3, [r4, #8]
 e006b9c:	e1a06002 	mov	r6, r2
 e006ba0:	e0433002 	sub	r3, r3, r2
 e006ba4:	e5843008 	str	r3, [r4, #8]
 e006ba8:	e5943000 	ldr	r3, [r4]
 e006bac:	e0833002 	add	r3, r3, r2
 e006bb0:	e5843000 	str	r3, [r4]
 e006bb4:	eaffffd9 	b	e006b20 <__sfvwrite_r+0x398>
 e006bb8:	7ffffc00 	.word	0x7ffffc00

0e006bbc <__swhatbuf_r>:
 e006bbc:	e92d4070 	push	{r4, r5, r6, lr}
 e006bc0:	e1a06001 	mov	r6, r1
 e006bc4:	e1d110fe 	ldrsh	r1, [r1, #14]
 e006bc8:	e24dd058 	sub	sp, sp, #88	; 0x58
 e006bcc:	e1a04002 	mov	r4, r2
 e006bd0:	e1a05003 	mov	r5, r3
 e006bd4:	e3510000 	cmp	r1, #0
 e006bd8:	aa00000a 	bge	e006c08 <__swhatbuf_r+0x4c>
 e006bdc:	e1d610fc 	ldrsh	r1, [r6, #12]
 e006be0:	e3a03000 	mov	r3, #0
 e006be4:	e5853000 	str	r3, [r5]
 e006be8:	e2110080 	ands	r0, r1, #128	; 0x80
 e006bec:	13a02040 	movne	r2, #64	; 0x40
 e006bf0:	11a00003 	movne	r0, r3
 e006bf4:	15842000 	strne	r2, [r4]
 e006bf8:	03a03b01 	moveq	r3, #1024	; 0x400
 e006bfc:	05843000 	streq	r3, [r4]
 e006c00:	e28dd058 	add	sp, sp, #88	; 0x58
 e006c04:	e8bd8070 	pop	{r4, r5, r6, pc}
 e006c08:	e1a0200d 	mov	r2, sp
 e006c0c:	eb000137 	bl	e0070f0 <_fstat_r>
 e006c10:	e3500000 	cmp	r0, #0
 e006c14:	bafffff0 	blt	e006bdc <__swhatbuf_r+0x20>
 e006c18:	e59d2004 	ldr	r2, [sp, #4]
 e006c1c:	e3a03b01 	mov	r3, #1024	; 0x400
 e006c20:	e3a00b02 	mov	r0, #2048	; 0x800
 e006c24:	e2022a0f 	and	r2, r2, #61440	; 0xf000
 e006c28:	e2422a02 	sub	r2, r2, #8192	; 0x2000
 e006c2c:	e16f2f12 	clz	r2, r2
 e006c30:	e1a022a2 	lsr	r2, r2, #5
 e006c34:	e5852000 	str	r2, [r5]
 e006c38:	e5843000 	str	r3, [r4]
 e006c3c:	eaffffef 	b	e006c00 <__swhatbuf_r+0x44>

0e006c40 <__smakebuf_r>:
 e006c40:	e1d130bc 	ldrh	r3, [r1, #12]
 e006c44:	e92d4073 	push	{r0, r1, r4, r5, r6, lr}
 e006c48:	e1a04001 	mov	r4, r1
 e006c4c:	e3130002 	tst	r3, #2
 e006c50:	0a000006 	beq	e006c70 <__smakebuf_r+0x30>
 e006c54:	e2843047 	add	r3, r4, #71	; 0x47
 e006c58:	e5843000 	str	r3, [r4]
 e006c5c:	e5843010 	str	r3, [r4, #16]
 e006c60:	e3a03001 	mov	r3, #1
 e006c64:	e5843014 	str	r3, [r4, #20]
 e006c68:	e28dd008 	add	sp, sp, #8
 e006c6c:	e8bd8070 	pop	{r4, r5, r6, pc}
 e006c70:	e28d3004 	add	r3, sp, #4
 e006c74:	e1a05000 	mov	r5, r0
 e006c78:	e1a0200d 	mov	r2, sp
 e006c7c:	ebffffce 	bl	e006bbc <__swhatbuf_r>
 e006c80:	e59d1000 	ldr	r1, [sp]
 e006c84:	e1a06000 	mov	r6, r0
 e006c88:	e1a00005 	mov	r0, r5
 e006c8c:	eb001a85 	bl	e00d6a8 <__wrap__malloc_r>
 e006c90:	e2503000 	subs	r3, r0, #0
 e006c94:	1a000006 	bne	e006cb4 <__smakebuf_r+0x74>
 e006c98:	e1d430fc 	ldrsh	r3, [r4, #12]
 e006c9c:	e3130c02 	tst	r3, #512	; 0x200
 e006ca0:	1afffff0 	bne	e006c68 <__smakebuf_r+0x28>
 e006ca4:	e3c33003 	bic	r3, r3, #3
 e006ca8:	e3833002 	orr	r3, r3, #2
 e006cac:	e1c430bc 	strh	r3, [r4, #12]
 e006cb0:	eaffffe7 	b	e006c54 <__smakebuf_r+0x14>
 e006cb4:	e59f2058 	ldr	r2, [pc, #88]	; e006d14 <__smakebuf_r+0xd4>
 e006cb8:	e5852028 	str	r2, [r5, #40]	; 0x28
 e006cbc:	e5843000 	str	r3, [r4]
 e006cc0:	e5843010 	str	r3, [r4, #16]
 e006cc4:	e59d3000 	ldr	r3, [sp]
 e006cc8:	e1d420bc 	ldrh	r2, [r4, #12]
 e006ccc:	e5843014 	str	r3, [r4, #20]
 e006cd0:	e59d3004 	ldr	r3, [sp, #4]
 e006cd4:	e3822080 	orr	r2, r2, #128	; 0x80
 e006cd8:	e1c420bc 	strh	r2, [r4, #12]
 e006cdc:	e3530000 	cmp	r3, #0
 e006ce0:	0a000007 	beq	e006d04 <__smakebuf_r+0xc4>
 e006ce4:	e1d410fe 	ldrsh	r1, [r4, #14]
 e006ce8:	e1a00005 	mov	r0, r5
 e006cec:	eb00010e 	bl	e00712c <_isatty_r>
 e006cf0:	e3500000 	cmp	r0, #0
 e006cf4:	11d430bc 	ldrhne	r3, [r4, #12]
 e006cf8:	13c33003 	bicne	r3, r3, #3
 e006cfc:	13833001 	orrne	r3, r3, #1
 e006d00:	11c430bc 	strhne	r3, [r4, #12]
 e006d04:	e1d400bc 	ldrh	r0, [r4, #12]
 e006d08:	e1800006 	orr	r0, r0, r6
 e006d0c:	e1c400bc 	strh	r0, [r4, #12]
 e006d10:	eaffffd4 	b	e006c68 <__smakebuf_r+0x28>
 e006d14:	0e000848 	.word	0x0e000848

0e006d18 <_init_signal_r>:
 e006d18:	e92d4070 	push	{r4, r5, r6, lr}
 e006d1c:	e5905044 	ldr	r5, [r0, #68]	; 0x44
 e006d20:	e3550000 	cmp	r5, #0
 e006d24:	1a00000a 	bne	e006d54 <_init_signal_r+0x3c>
 e006d28:	e1a04000 	mov	r4, r0
 e006d2c:	e3a01080 	mov	r1, #128	; 0x80
 e006d30:	eb001a5c 	bl	e00d6a8 <__wrap__malloc_r>
 e006d34:	e3500000 	cmp	r0, #0
 e006d38:	e5840044 	str	r0, [r4, #68]	; 0x44
 e006d3c:	0a000006 	beq	e006d5c <_init_signal_r+0x44>
 e006d40:	e2403004 	sub	r3, r0, #4
 e006d44:	e280007c 	add	r0, r0, #124	; 0x7c
 e006d48:	e5a35004 	str	r5, [r3, #4]!
 e006d4c:	e1530000 	cmp	r3, r0
 e006d50:	1afffffc 	bne	e006d48 <_init_signal_r+0x30>
 e006d54:	e3a00000 	mov	r0, #0
 e006d58:	e8bd8070 	pop	{r4, r5, r6, pc}
 e006d5c:	e3e00000 	mvn	r0, #0
 e006d60:	e8bd8070 	pop	{r4, r5, r6, pc}

0e006d64 <_signal_r>:
 e006d64:	e351001f 	cmp	r1, #31
 e006d68:	e92d4070 	push	{r4, r5, r6, lr}
 e006d6c:	83a03016 	movhi	r3, #22
 e006d70:	e1a04000 	mov	r4, r0
 e006d74:	85803000 	strhi	r3, [r0]
 e006d78:	8a00000b 	bhi	e006dac <_signal_r+0x48>
 e006d7c:	e5903044 	ldr	r3, [r0, #68]	; 0x44
 e006d80:	e1a05001 	mov	r5, r1
 e006d84:	e1a06002 	mov	r6, r2
 e006d88:	e3530000 	cmp	r3, #0
 e006d8c:	0a000003 	beq	e006da0 <_signal_r+0x3c>
 e006d90:	e5943044 	ldr	r3, [r4, #68]	; 0x44
 e006d94:	e7930105 	ldr	r0, [r3, r5, lsl #2]
 e006d98:	e7836105 	str	r6, [r3, r5, lsl #2]
 e006d9c:	e8bd8070 	pop	{r4, r5, r6, pc}
 e006da0:	ebffffdc 	bl	e006d18 <_init_signal_r>
 e006da4:	e3500000 	cmp	r0, #0
 e006da8:	0afffff8 	beq	e006d90 <_signal_r+0x2c>
 e006dac:	e3e00000 	mvn	r0, #0
 e006db0:	e8bd8070 	pop	{r4, r5, r6, pc}

0e006db4 <_raise_r>:
 e006db4:	e92d4070 	push	{r4, r5, r6, lr}
 e006db8:	e351001f 	cmp	r1, #31
 e006dbc:	e1a04000 	mov	r4, r0
 e006dc0:	9a000003 	bls	e006dd4 <_raise_r+0x20>
 e006dc4:	e3a03016 	mov	r3, #22
 e006dc8:	e5803000 	str	r3, [r0]
 e006dcc:	e3e00000 	mvn	r0, #0
 e006dd0:	e8bd8070 	pop	{r4, r5, r6, pc}
 e006dd4:	e5902044 	ldr	r2, [r0, #68]	; 0x44
 e006dd8:	e1a05001 	mov	r5, r1
 e006ddc:	e3520000 	cmp	r2, #0
 e006de0:	0a000002 	beq	e006df0 <_raise_r+0x3c>
 e006de4:	e7923101 	ldr	r3, [r2, r1, lsl #2]
 e006de8:	e3530000 	cmp	r3, #0
 e006dec:	1a000006 	bne	e006e0c <_raise_r+0x58>
 e006df0:	e1a00004 	mov	r0, r4
 e006df4:	eb000058 	bl	e006f5c <_getpid_r>
 e006df8:	e1a02005 	mov	r2, r5
 e006dfc:	e1a01000 	mov	r1, r0
 e006e00:	e1a00004 	mov	r0, r4
 e006e04:	e8bd4070 	pop	{r4, r5, r6, lr}
 e006e08:	ea000044 	b	e006f20 <_kill_r>
 e006e0c:	e3530001 	cmp	r3, #1
 e006e10:	0a000009 	beq	e006e3c <_raise_r+0x88>
 e006e14:	e3730001 	cmn	r3, #1
 e006e18:	1a000003 	bne	e006e2c <_raise_r+0x78>
 e006e1c:	e3a03016 	mov	r3, #22
 e006e20:	e5803000 	str	r3, [r0]
 e006e24:	e3a00001 	mov	r0, #1
 e006e28:	e8bd8070 	pop	{r4, r5, r6, pc}
 e006e2c:	e3a04000 	mov	r4, #0
 e006e30:	e1a00001 	mov	r0, r1
 e006e34:	e7824101 	str	r4, [r2, r1, lsl #2]
 e006e38:	e12fff33 	blx	r3
 e006e3c:	e3a00000 	mov	r0, #0
 e006e40:	e8bd8070 	pop	{r4, r5, r6, pc}

0e006e44 <__sigtramp_r>:
 e006e44:	e351001f 	cmp	r1, #31
 e006e48:	9a000001 	bls	e006e54 <__sigtramp_r+0x10>
 e006e4c:	e3e00000 	mvn	r0, #0
 e006e50:	e12fff1e 	bx	lr
 e006e54:	e5903044 	ldr	r3, [r0, #68]	; 0x44
 e006e58:	e92d4070 	push	{r4, r5, r6, lr}
 e006e5c:	e1a04000 	mov	r4, r0
 e006e60:	e1a05001 	mov	r5, r1
 e006e64:	e3530000 	cmp	r3, #0
 e006e68:	0a000005 	beq	e006e84 <__sigtramp_r+0x40>
 e006e6c:	e5942044 	ldr	r2, [r4, #68]	; 0x44
 e006e70:	e7923105 	ldr	r3, [r2, r5, lsl #2]
 e006e74:	e3530000 	cmp	r3, #0
 e006e78:	1a000006 	bne	e006e98 <__sigtramp_r+0x54>
 e006e7c:	e3a00001 	mov	r0, #1
 e006e80:	e8bd8070 	pop	{r4, r5, r6, pc}
 e006e84:	ebffffa3 	bl	e006d18 <_init_signal_r>
 e006e88:	e3500000 	cmp	r0, #0
 e006e8c:	0afffff6 	beq	e006e6c <__sigtramp_r+0x28>
 e006e90:	e3e00000 	mvn	r0, #0
 e006e94:	e8bd8070 	pop	{r4, r5, r6, pc}
 e006e98:	e3730001 	cmn	r3, #1
 e006e9c:	0a000007 	beq	e006ec0 <__sigtramp_r+0x7c>
 e006ea0:	e3530001 	cmp	r3, #1
 e006ea4:	0a000007 	beq	e006ec8 <__sigtramp_r+0x84>
 e006ea8:	e3a04000 	mov	r4, #0
 e006eac:	e1a00005 	mov	r0, r5
 e006eb0:	e7824105 	str	r4, [r2, r5, lsl #2]
 e006eb4:	e12fff33 	blx	r3
 e006eb8:	e1a00004 	mov	r0, r4
 e006ebc:	e8bd8070 	pop	{r4, r5, r6, pc}
 e006ec0:	e3a00002 	mov	r0, #2
 e006ec4:	e8bd8070 	pop	{r4, r5, r6, pc}
 e006ec8:	e3a00003 	mov	r0, #3
 e006ecc:	e8bd8070 	pop	{r4, r5, r6, pc}

0e006ed0 <raise>:
 e006ed0:	e59f3008 	ldr	r3, [pc, #8]	; e006ee0 <raise+0x10>
 e006ed4:	e1a01000 	mov	r1, r0
 e006ed8:	e5930000 	ldr	r0, [r3]
 e006edc:	eaffffb4 	b	e006db4 <_raise_r>
 e006ee0:	60095000 	.word	0x60095000

0e006ee4 <signal>:
 e006ee4:	e59f300c 	ldr	r3, [pc, #12]	; e006ef8 <signal+0x14>
 e006ee8:	e1a02001 	mov	r2, r1
 e006eec:	e1a01000 	mov	r1, r0
 e006ef0:	e5930000 	ldr	r0, [r3]
 e006ef4:	eaffff9a 	b	e006d64 <_signal_r>
 e006ef8:	60095000 	.word	0x60095000

0e006efc <_init_signal>:
 e006efc:	e59f3004 	ldr	r3, [pc, #4]	; e006f08 <_init_signal+0xc>
 e006f00:	e5930000 	ldr	r0, [r3]
 e006f04:	eaffff83 	b	e006d18 <_init_signal_r>
 e006f08:	60095000 	.word	0x60095000

0e006f0c <__sigtramp>:
 e006f0c:	e59f3008 	ldr	r3, [pc, #8]	; e006f1c <__sigtramp+0x10>
 e006f10:	e1a01000 	mov	r1, r0
 e006f14:	e5930000 	ldr	r0, [r3]
 e006f18:	eaffffc9 	b	e006e44 <__sigtramp_r>
 e006f1c:	60095000 	.word	0x60095000

0e006f20 <_kill_r>:
 e006f20:	e92d4070 	push	{r4, r5, r6, lr}
 e006f24:	e1a04000 	mov	r4, r0
 e006f28:	e59f5028 	ldr	r5, [pc, #40]	; e006f58 <_kill_r+0x38>
 e006f2c:	e1a00001 	mov	r0, r1
 e006f30:	e1a01002 	mov	r1, r2
 e006f34:	e3a03000 	mov	r3, #0
 e006f38:	e5853000 	str	r3, [r5]
 e006f3c:	eb000c18 	bl	e009fa4 <_kill>
 e006f40:	e3700001 	cmn	r0, #1
 e006f44:	18bd8070 	popne	{r4, r5, r6, pc}
 e006f48:	e5953000 	ldr	r3, [r5]
 e006f4c:	e3530000 	cmp	r3, #0
 e006f50:	15843000 	strne	r3, [r4]
 e006f54:	e8bd8070 	pop	{r4, r5, r6, pc}
 e006f58:	600a3160 	.word	0x600a3160

0e006f5c <_getpid_r>:
 e006f5c:	ea000c0e 	b	e009f9c <_getpid>

0e006f60 <__swbuf_r>:
 e006f60:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e006f64:	e1a06001 	mov	r6, r1
 e006f68:	e1a04002 	mov	r4, r2
 e006f6c:	e2505000 	subs	r5, r0, #0
 e006f70:	0a000003 	beq	e006f84 <__swbuf_r+0x24>
 e006f74:	e5953018 	ldr	r3, [r5, #24]
 e006f78:	e3530000 	cmp	r3, #0
 e006f7c:	1a000000 	bne	e006f84 <__swbuf_r+0x24>
 e006f80:	ebffe686 	bl	e0009a0 <__sinit>
 e006f84:	e5943018 	ldr	r3, [r4, #24]
 e006f88:	e5843008 	str	r3, [r4, #8]
 e006f8c:	e1d430bc 	ldrh	r3, [r4, #12]
 e006f90:	e3130008 	tst	r3, #8
 e006f94:	0a00002a 	beq	e007044 <__swbuf_r+0xe4>
 e006f98:	e5943010 	ldr	r3, [r4, #16]
 e006f9c:	e3530000 	cmp	r3, #0
 e006fa0:	0a000027 	beq	e007044 <__swbuf_r+0xe4>
 e006fa4:	e1d430fc 	ldrsh	r3, [r4, #12]
 e006fa8:	e6ef6076 	uxtb	r6, r6
 e006fac:	e1a07006 	mov	r7, r6
 e006fb0:	e3130a02 	tst	r3, #8192	; 0x2000
 e006fb4:	0a000029 	beq	e007060 <__swbuf_r+0x100>
 e006fb8:	e5943010 	ldr	r3, [r4, #16]
 e006fbc:	e5940000 	ldr	r0, [r4]
 e006fc0:	e0400003 	sub	r0, r0, r3
 e006fc4:	e5943014 	ldr	r3, [r4, #20]
 e006fc8:	e1530000 	cmp	r3, r0
 e006fcc:	ca000004 	bgt	e006fe4 <__swbuf_r+0x84>
 e006fd0:	e1a01004 	mov	r1, r4
 e006fd4:	e1a00005 	mov	r0, r5
 e006fd8:	ebffe5c8 	bl	e000700 <_fflush_r>
 e006fdc:	e3500000 	cmp	r0, #0
 e006fe0:	1a00001c 	bne	e007058 <__swbuf_r+0xf8>
 e006fe4:	e5943008 	ldr	r3, [r4, #8]
 e006fe8:	e2800001 	add	r0, r0, #1
 e006fec:	e2433001 	sub	r3, r3, #1
 e006ff0:	e5843008 	str	r3, [r4, #8]
 e006ff4:	e5943000 	ldr	r3, [r4]
 e006ff8:	e2832001 	add	r2, r3, #1
 e006ffc:	e5842000 	str	r2, [r4]
 e007000:	e5c36000 	strb	r6, [r3]
 e007004:	e5943014 	ldr	r3, [r4, #20]
 e007008:	e1530000 	cmp	r3, r0
 e00700c:	0a000005 	beq	e007028 <__swbuf_r+0xc8>
 e007010:	e1d430bc 	ldrh	r3, [r4, #12]
 e007014:	e356000a 	cmp	r6, #10
 e007018:	13a03000 	movne	r3, #0
 e00701c:	02033001 	andeq	r3, r3, #1
 e007020:	e3530000 	cmp	r3, #0
 e007024:	0a000004 	beq	e00703c <__swbuf_r+0xdc>
 e007028:	e1a01004 	mov	r1, r4
 e00702c:	e1a00005 	mov	r0, r5
 e007030:	ebffe5b2 	bl	e000700 <_fflush_r>
 e007034:	e3500000 	cmp	r0, #0
 e007038:	1a000006 	bne	e007058 <__swbuf_r+0xf8>
 e00703c:	e1a00007 	mov	r0, r7
 e007040:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e007044:	e1a01004 	mov	r1, r4
 e007048:	e1a00005 	mov	r0, r5
 e00704c:	ebfffd0d 	bl	e006488 <__swsetup_r>
 e007050:	e3500000 	cmp	r0, #0
 e007054:	0affffd2 	beq	e006fa4 <__swbuf_r+0x44>
 e007058:	e3e07000 	mvn	r7, #0
 e00705c:	eafffff6 	b	e00703c <__swbuf_r+0xdc>
 e007060:	e3833a02 	orr	r3, r3, #8192	; 0x2000
 e007064:	e1c430bc 	strh	r3, [r4, #12]
 e007068:	e5943064 	ldr	r3, [r4, #100]	; 0x64
 e00706c:	e3c33a02 	bic	r3, r3, #8192	; 0x2000
 e007070:	e5843064 	str	r3, [r4, #100]	; 0x64
 e007074:	eaffffcf 	b	e006fb8 <__swbuf_r+0x58>

0e007078 <__swbuf>:
 e007078:	e59f300c 	ldr	r3, [pc, #12]	; e00708c <__swbuf+0x14>
 e00707c:	e1a02001 	mov	r2, r1
 e007080:	e1a01000 	mov	r1, r0
 e007084:	e5930000 	ldr	r0, [r3]
 e007088:	eaffffb4 	b	e006f60 <__swbuf_r>
 e00708c:	60095000 	.word	0x60095000

0e007090 <_wcrtomb_r>:
 e007090:	e59fc038 	ldr	ip, [pc, #56]	; e0070d0 <_wcrtomb_r+0x40>
 e007094:	e92d407f 	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 e007098:	e1a05003 	mov	r5, r3
 e00709c:	e1a04000 	mov	r4, r0
 e0070a0:	e59c60e0 	ldr	r6, [ip, #224]	; 0xe0
 e0070a4:	e251c000 	subs	ip, r1, #0
 e0070a8:	01a0200c 	moveq	r2, ip
 e0070ac:	028d1004 	addeq	r1, sp, #4
 e0070b0:	e12fff36 	blx	r6
 e0070b4:	e3700001 	cmn	r0, #1
 e0070b8:	03a03000 	moveq	r3, #0
 e0070bc:	05853000 	streq	r3, [r5]
 e0070c0:	03a0308a 	moveq	r3, #138	; 0x8a
 e0070c4:	05843000 	streq	r3, [r4]
 e0070c8:	e28dd010 	add	sp, sp, #16
 e0070cc:	e8bd8070 	pop	{r4, r5, r6, pc}
 e0070d0:	600950f4 	.word	0x600950f4

0e0070d4 <wcrtomb>:
 e0070d4:	e1a03002 	mov	r3, r2
 e0070d8:	e1a02001 	mov	r2, r1
 e0070dc:	e1a01000 	mov	r1, r0
 e0070e0:	e59f0004 	ldr	r0, [pc, #4]	; e0070ec <wcrtomb+0x18>
 e0070e4:	e5900000 	ldr	r0, [r0]
 e0070e8:	eaffffe8 	b	e007090 <_wcrtomb_r>
 e0070ec:	60095000 	.word	0x60095000

0e0070f0 <_fstat_r>:
 e0070f0:	e92d4070 	push	{r4, r5, r6, lr}
 e0070f4:	e1a04000 	mov	r4, r0
 e0070f8:	e59f5028 	ldr	r5, [pc, #40]	; e007128 <_fstat_r+0x38>
 e0070fc:	e1a00001 	mov	r0, r1
 e007100:	e1a01002 	mov	r1, r2
 e007104:	e3a03000 	mov	r3, #0
 e007108:	e5853000 	str	r3, [r5]
 e00710c:	eb000b9e 	bl	e009f8c <_fstat>
 e007110:	e3700001 	cmn	r0, #1
 e007114:	18bd8070 	popne	{r4, r5, r6, pc}
 e007118:	e5953000 	ldr	r3, [r5]
 e00711c:	e3530000 	cmp	r3, #0
 e007120:	15843000 	strne	r3, [r4]
 e007124:	e8bd8070 	pop	{r4, r5, r6, pc}
 e007128:	600a3160 	.word	0x600a3160

0e00712c <_isatty_r>:
 e00712c:	e92d4070 	push	{r4, r5, r6, lr}
 e007130:	e1a04000 	mov	r4, r0
 e007134:	e59f5024 	ldr	r5, [pc, #36]	; e007160 <_isatty_r+0x34>
 e007138:	e1a00001 	mov	r0, r1
 e00713c:	e3a03000 	mov	r3, #0
 e007140:	e5853000 	str	r3, [r5]
 e007144:	eb000b88 	bl	e009f6c <_isatty>
 e007148:	e3700001 	cmn	r0, #1
 e00714c:	18bd8070 	popne	{r4, r5, r6, pc}
 e007150:	e5953000 	ldr	r3, [r5]
 e007154:	e3530000 	cmp	r3, #0
 e007158:	15843000 	strne	r3, [r4]
 e00715c:	e8bd8070 	pop	{r4, r5, r6, pc}
 e007160:	600a3160 	.word	0x600a3160

0e007164 <__udivsi3>:
 e007164:	e2512001 	subs	r2, r1, #1
 e007168:	012fff1e 	bxeq	lr
 e00716c:	3a000023 	bcc	e007200 <__udivsi3+0x9c>
 e007170:	e1500001 	cmp	r0, r1
 e007174:	9a00001a 	bls	e0071e4 <__udivsi3+0x80>
 e007178:	e1110002 	tst	r1, r2
 e00717c:	0a00001b 	beq	e0071f0 <__udivsi3+0x8c>
 e007180:	e16f3f11 	clz	r3, r1
 e007184:	e16f2f10 	clz	r2, r0
 e007188:	e0432002 	sub	r2, r3, r2
 e00718c:	e3a03001 	mov	r3, #1
 e007190:	e1a01211 	lsl	r1, r1, r2
 e007194:	e1a03213 	lsl	r3, r3, r2
 e007198:	e3a02000 	mov	r2, #0
 e00719c:	e1500001 	cmp	r0, r1
 e0071a0:	20400001 	subcs	r0, r0, r1
 e0071a4:	21822003 	orrcs	r2, r2, r3
 e0071a8:	e15000a1 	cmp	r0, r1, lsr #1
 e0071ac:	204000a1 	subcs	r0, r0, r1, lsr #1
 e0071b0:	218220a3 	orrcs	r2, r2, r3, lsr #1
 e0071b4:	e1500121 	cmp	r0, r1, lsr #2
 e0071b8:	20400121 	subcs	r0, r0, r1, lsr #2
 e0071bc:	21822123 	orrcs	r2, r2, r3, lsr #2
 e0071c0:	e15001a1 	cmp	r0, r1, lsr #3
 e0071c4:	204001a1 	subcs	r0, r0, r1, lsr #3
 e0071c8:	218221a3 	orrcs	r2, r2, r3, lsr #3
 e0071cc:	e3500000 	cmp	r0, #0
 e0071d0:	11b03223 	lsrsne	r3, r3, #4
 e0071d4:	11a01221 	lsrne	r1, r1, #4
 e0071d8:	1affffef 	bne	e00719c <__udivsi3+0x38>
 e0071dc:	e1a00002 	mov	r0, r2
 e0071e0:	e12fff1e 	bx	lr
 e0071e4:	03a00001 	moveq	r0, #1
 e0071e8:	13a00000 	movne	r0, #0
 e0071ec:	e12fff1e 	bx	lr
 e0071f0:	e16f2f11 	clz	r2, r1
 e0071f4:	e262201f 	rsb	r2, r2, #31
 e0071f8:	e1a00230 	lsr	r0, r0, r2
 e0071fc:	e12fff1e 	bx	lr
 e007200:	e3500000 	cmp	r0, #0
 e007204:	13e00000 	mvnne	r0, #0
 e007208:	eaffe4be 	b	e000508 <__aeabi_idiv0>

0e00720c <__aeabi_uidivmod>:
 e00720c:	e3510000 	cmp	r1, #0
 e007210:	0afffffa 	beq	e007200 <__udivsi3+0x9c>
 e007214:	e92d4003 	push	{r0, r1, lr}
 e007218:	ebffffd1 	bl	e007164 <__udivsi3>
 e00721c:	e8bd4006 	pop	{r1, r2, lr}
 e007220:	e0030092 	mul	r3, r2, r0
 e007224:	e0411003 	sub	r1, r1, r3
 e007228:	e12fff1e 	bx	lr

0e00722c <__divsi3>:
 e00722c:	e3510000 	cmp	r1, #0
 e007230:	0a000030 	beq	e0072f8 <.divsi3_skip_div0_test+0xc4>

0e007234 <.divsi3_skip_div0_test>:
 e007234:	e020c001 	eor	ip, r0, r1
 e007238:	42611000 	rsbmi	r1, r1, #0
 e00723c:	e2512001 	subs	r2, r1, #1
 e007240:	0a00001f 	beq	e0072c4 <.divsi3_skip_div0_test+0x90>
 e007244:	e1b03000 	movs	r3, r0
 e007248:	42603000 	rsbmi	r3, r0, #0
 e00724c:	e1530001 	cmp	r3, r1
 e007250:	9a00001e 	bls	e0072d0 <.divsi3_skip_div0_test+0x9c>
 e007254:	e1110002 	tst	r1, r2
 e007258:	0a000020 	beq	e0072e0 <.divsi3_skip_div0_test+0xac>
 e00725c:	e16f2f11 	clz	r2, r1
 e007260:	e16f0f13 	clz	r0, r3
 e007264:	e0420000 	sub	r0, r2, r0
 e007268:	e3a02001 	mov	r2, #1
 e00726c:	e1a01011 	lsl	r1, r1, r0
 e007270:	e1a02012 	lsl	r2, r2, r0
 e007274:	e3a00000 	mov	r0, #0
 e007278:	e1530001 	cmp	r3, r1
 e00727c:	20433001 	subcs	r3, r3, r1
 e007280:	21800002 	orrcs	r0, r0, r2
 e007284:	e15300a1 	cmp	r3, r1, lsr #1
 e007288:	204330a1 	subcs	r3, r3, r1, lsr #1
 e00728c:	218000a2 	orrcs	r0, r0, r2, lsr #1
 e007290:	e1530121 	cmp	r3, r1, lsr #2
 e007294:	20433121 	subcs	r3, r3, r1, lsr #2
 e007298:	21800122 	orrcs	r0, r0, r2, lsr #2
 e00729c:	e15301a1 	cmp	r3, r1, lsr #3
 e0072a0:	204331a1 	subcs	r3, r3, r1, lsr #3
 e0072a4:	218001a2 	orrcs	r0, r0, r2, lsr #3
 e0072a8:	e3530000 	cmp	r3, #0
 e0072ac:	11b02222 	lsrsne	r2, r2, #4
 e0072b0:	11a01221 	lsrne	r1, r1, #4
 e0072b4:	1affffef 	bne	e007278 <.divsi3_skip_div0_test+0x44>
 e0072b8:	e35c0000 	cmp	ip, #0
 e0072bc:	42600000 	rsbmi	r0, r0, #0
 e0072c0:	e12fff1e 	bx	lr
 e0072c4:	e13c0000 	teq	ip, r0
 e0072c8:	42600000 	rsbmi	r0, r0, #0
 e0072cc:	e12fff1e 	bx	lr
 e0072d0:	33a00000 	movcc	r0, #0
 e0072d4:	01a00fcc 	asreq	r0, ip, #31
 e0072d8:	03800001 	orreq	r0, r0, #1
 e0072dc:	e12fff1e 	bx	lr
 e0072e0:	e16f2f11 	clz	r2, r1
 e0072e4:	e262201f 	rsb	r2, r2, #31
 e0072e8:	e35c0000 	cmp	ip, #0
 e0072ec:	e1a00233 	lsr	r0, r3, r2
 e0072f0:	42600000 	rsbmi	r0, r0, #0
 e0072f4:	e12fff1e 	bx	lr
 e0072f8:	e3500000 	cmp	r0, #0
 e0072fc:	c3e00102 	mvngt	r0, #-2147483648	; 0x80000000
 e007300:	b3a00102 	movlt	r0, #-2147483648	; 0x80000000
 e007304:	eaffe47f 	b	e000508 <__aeabi_idiv0>

0e007308 <__aeabi_idivmod>:
 e007308:	e3510000 	cmp	r1, #0
 e00730c:	0afffff9 	beq	e0072f8 <.divsi3_skip_div0_test+0xc4>
 e007310:	e92d4003 	push	{r0, r1, lr}
 e007314:	ebffffc6 	bl	e007234 <.divsi3_skip_div0_test>
 e007318:	e8bd4006 	pop	{r1, r2, lr}
 e00731c:	e0030092 	mul	r3, r2, r0
 e007320:	e0411003 	sub	r1, r1, r3
 e007324:	e12fff1e 	bx	lr

0e007328 <_exit>:
 e007328:	eafffffe 	b	e007328 <_exit>

0e00732c <CmdRamHelp>:
 e00732c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e007330:	e3055f8c 	movw	r5, #24460	; 0x5f8c
 e007334:	e3405e01 	movt	r5, #3585	; 0xe01
 e007338:	e24dd008 	sub	sp, sp, #8
 e00733c:	e3054f2c 	movw	r4, #24364	; 0x5f2c
 e007340:	e3404e01 	movt	r4, #3585	; 0xe01
 e007344:	e0455004 	sub	r5, r5, r4
 e007348:	e3a02041 	mov	r2, #65	; 0x41
 e00734c:	e1a05225 	lsr	r5, r5, #4
 e007350:	e3a00001 	mov	r0, #1
 e007354:	e58d5000 	str	r5, [sp]
 e007358:	e3043360 	movw	r3, #17248	; 0x4360
 e00735c:	e3403e01 	movt	r3, #3585	; 0xe01
 e007360:	e30413a0 	movw	r1, #17312	; 0x43a0
 e007364:	e3401e01 	movt	r1, #3585	; 0xe01
 e007368:	eb000982 	bl	e009978 <rtk_log_write_nano>
 e00736c:	e3550000 	cmp	r5, #0
 e007370:	0a000010 	beq	e0073b8 <CmdRamHelp+0x8c>
 e007374:	e30473a8 	movw	r7, #17320	; 0x43a8
 e007378:	e3407e01 	movt	r7, #3585	; 0xe01
 e00737c:	e30463ac 	movw	r6, #17324	; 0x43ac
 e007380:	e3406e01 	movt	r6, #3585	; 0xe01
 e007384:	e0848205 	add	r8, r4, r5, lsl #4
 e007388:	e594c00c 	ldr	ip, [r4, #12]
 e00738c:	e1a03007 	mov	r3, r7
 e007390:	e2844010 	add	r4, r4, #16
 e007394:	e3a02041 	mov	r2, #65	; 0x41
 e007398:	e1a01006 	mov	r1, r6
 e00739c:	e3a00001 	mov	r0, #1
 e0073a0:	e35c0000 	cmp	ip, #0
 e0073a4:	0a000001 	beq	e0073b0 <CmdRamHelp+0x84>
 e0073a8:	e58dc000 	str	ip, [sp]
 e0073ac:	eb000971 	bl	e009978 <rtk_log_write_nano>
 e0073b0:	e1540008 	cmp	r4, r8
 e0073b4:	1afffff3 	bne	e007388 <CmdRamHelp+0x5c>
 e0073b8:	e3a00001 	mov	r0, #1
 e0073bc:	e3a02041 	mov	r2, #65	; 0x41
 e0073c0:	e58d5000 	str	r5, [sp]
 e0073c4:	e30433b0 	movw	r3, #17328	; 0x43b0
 e0073c8:	e3403e01 	movt	r3, #3585	; 0xe01
 e0073cc:	e30413a0 	movw	r1, #17312	; 0x43a0
 e0073d0:	e3401e01 	movt	r1, #3585	; 0xe01
 e0073d4:	eb000967 	bl	e009978 <rtk_log_write_nano>
 e0073d8:	e3a00001 	mov	r0, #1
 e0073dc:	e28dd008 	add	sp, sp, #8
 e0073e0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0e0073e4 <cmd_reboot>:
 e0073e4:	e92d4070 	push	{r4, r5, r6, lr}
 e0073e8:	e3a02041 	mov	r2, #65	; 0x41
 e0073ec:	e1a04000 	mov	r4, r0
 e0073f0:	e1a05001 	mov	r5, r1
 e0073f4:	e3a00001 	mov	r0, #1
 e0073f8:	e30433f0 	movw	r3, #17392	; 0x43f0
 e0073fc:	e3403e01 	movt	r3, #3585	; 0xe01
 e007400:	e30413a0 	movw	r1, #17312	; 0x43a0
 e007404:	e3401e01 	movt	r1, #3585	; 0xe01
 e007408:	eb00095a 	bl	e009978 <rtk_log_write_nano>
 e00740c:	e3540000 	cmp	r4, #0
 e007410:	1a000002 	bne	e007420 <cmd_reboot+0x3c>
 e007414:	eb0008eb 	bl	e0097c8 <System_Reset>
 e007418:	e3a00001 	mov	r0, #1
 e00741c:	e8bd8070 	pop	{r4, r5, r6, pc}
 e007420:	e5950000 	ldr	r0, [r5]
 e007424:	e3041400 	movw	r1, #17408	; 0x4400
 e007428:	e3401e01 	movt	r1, #3585	; 0xe01
 e00742c:	e30c3af4 	movw	r3, #51956	; 0xcaf4
 e007430:	e3403e00 	movt	r3, #3584	; 0xe00
 e007434:	e12fff33 	blx	r3
 e007438:	e2504000 	subs	r4, r0, #0
 e00743c:	1afffff4 	bne	e007414 <cmd_reboot+0x30>
 e007440:	e1a01004 	mov	r1, r4
 e007444:	e3033758 	movw	r3, #14168	; 0x3758
 e007448:	e3403e01 	movt	r3, #3585	; 0xe01
 e00744c:	e12fff33 	blx	r3
 e007450:	e3a01c02 	mov	r1, #512	; 0x200
 e007454:	e1a00004 	mov	r0, r4
 e007458:	e3033720 	movw	r3, #14112	; 0x3720
 e00745c:	e3403e01 	movt	r3, #3585	; 0xe01
 e007460:	e12fff33 	blx	r3
 e007464:	eaffffea 	b	e007414 <cmd_reboot+0x30>

0e007468 <CmdTickPS>:
 e007468:	e92d4030 	push	{r4, r5, lr}
 e00746c:	e1a05001 	mov	r5, r1
 e007470:	e24dd00c 	sub	sp, sp, #12
 e007474:	e304140c 	movw	r1, #17420	; 0x440c
 e007478:	e3401e01 	movt	r1, #3585	; 0xe01
 e00747c:	e5950000 	ldr	r0, [r5]
 e007480:	e30c4af4 	movw	r4, #51956	; 0xcaf4
 e007484:	e3404e00 	movt	r4, #3584	; 0xe00
 e007488:	e12fff34 	blx	r4
 e00748c:	e3500000 	cmp	r0, #0
 e007490:	0a000014 	beq	e0074e8 <CmdTickPS+0x80>
 e007494:	e5950000 	ldr	r0, [r5]
 e007498:	e3041410 	movw	r1, #17424	; 0x4410
 e00749c:	e3401e01 	movt	r1, #3585	; 0xe01
 e0074a0:	e12fff34 	blx	r4
 e0074a4:	e3500000 	cmp	r0, #0
 e0074a8:	0a000039 	beq	e007594 <CmdTickPS+0x12c>
 e0074ac:	e5950000 	ldr	r0, [r5]
 e0074b0:	e3041414 	movw	r1, #17428	; 0x4414
 e0074b4:	e3401e01 	movt	r1, #3585	; 0xe01
 e0074b8:	e12fff34 	blx	r4
 e0074bc:	e3500000 	cmp	r0, #0
 e0074c0:	0a000021 	beq	e00754c <CmdTickPS+0xe4>
 e0074c4:	e5950000 	ldr	r0, [r5]
 e0074c8:	e3041424 	movw	r1, #17444	; 0x4424
 e0074cc:	e3401e01 	movt	r1, #3585	; 0xe01
 e0074d0:	e12fff34 	blx	r4
 e0074d4:	e3500000 	cmp	r0, #0
 e0074d8:	0a000004 	beq	e0074f0 <CmdTickPS+0x88>
 e0074dc:	e3a00001 	mov	r0, #1
 e0074e0:	e28dd00c 	add	sp, sp, #12
 e0074e4:	e8bd8030 	pop	{r4, r5, pc}
 e0074e8:	eb000ed7 	bl	e00b04c <pmu_release_wakelock>
 e0074ec:	eaffffe8 	b	e007494 <CmdTickPS+0x2c>
 e0074f0:	eb000ee0 	bl	e00b078 <pmu_get_wakelock_status>
 e0074f4:	e3a02041 	mov	r2, #65	; 0x41
 e0074f8:	e1a03000 	mov	r3, r0
 e0074fc:	e30413a0 	movw	r1, #17312	; 0x43a0
 e007500:	e3401e01 	movt	r1, #3585	; 0xe01
 e007504:	e58d3000 	str	r3, [sp]
 e007508:	e3a00001 	mov	r0, #1
 e00750c:	e3043428 	movw	r3, #17448	; 0x4428
 e007510:	e3403e01 	movt	r3, #3585	; 0xe01
 e007514:	eb000917 	bl	e009978 <rtk_log_write_nano>
 e007518:	eb000eeb 	bl	e00b0cc <pmu_get_deepwakelock_status>
 e00751c:	e3a02041 	mov	r2, #65	; 0x41
 e007520:	e1a0c000 	mov	ip, r0
 e007524:	e3043438 	movw	r3, #17464	; 0x4438
 e007528:	e3403e01 	movt	r3, #3585	; 0xe01
 e00752c:	e3a00001 	mov	r0, #1
 e007530:	e58dc000 	str	ip, [sp]
 e007534:	e30413a0 	movw	r1, #17312	; 0x43a0
 e007538:	e3401e01 	movt	r1, #3585	; 0xe01
 e00753c:	eb00090d 	bl	e009978 <rtk_log_write_nano>
 e007540:	e3a00001 	mov	r0, #1
 e007544:	e28dd00c 	add	sp, sp, #12
 e007548:	e8bd8030 	pop	{r4, r5, pc}
 e00754c:	e5950004 	ldr	r0, [r5, #4]
 e007550:	e304141c 	movw	r1, #17436	; 0x441c
 e007554:	e3401e01 	movt	r1, #3585	; 0xe01
 e007558:	e12fff34 	blx	r4
 e00755c:	e3500000 	cmp	r0, #0
 e007560:	0a000008 	beq	e007588 <CmdTickPS+0x120>
 e007564:	e5950004 	ldr	r0, [r5, #4]
 e007568:	e3041420 	movw	r1, #17440	; 0x4420
 e00756c:	e3401e01 	movt	r1, #3585	; 0xe01
 e007570:	e12fff34 	blx	r4
 e007574:	e3500000 	cmp	r0, #0
 e007578:	1a000002 	bne	e007588 <CmdTickPS+0x120>
 e00757c:	e3a00001 	mov	r0, #1
 e007580:	eb000ec0 	bl	e00b088 <pmu_set_sleep_type>
 e007584:	eaffffce 	b	e0074c4 <CmdTickPS+0x5c>
 e007588:	e3a00000 	mov	r0, #0
 e00758c:	eb000ebd 	bl	e00b088 <pmu_set_sleep_type>
 e007590:	eaffffcb 	b	e0074c4 <CmdTickPS+0x5c>
 e007594:	eb000ea1 	bl	e00b020 <pmu_acquire_wakelock>
 e007598:	eaffffc3 	b	e0074ac <CmdTickPS+0x44>

0e00759c <cmd_write_word>:
 e00759c:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 e0075a0:	e1a07001 	mov	r7, r1
 e0075a4:	e24dd00c 	sub	sp, sp, #12
 e0075a8:	e3a02010 	mov	r2, #16
 e0075ac:	e5970000 	ldr	r0, [r7]
 e0075b0:	e3a01000 	mov	r1, #0
 e0075b4:	e30c6cf8 	movw	r6, #52472	; 0xccf8
 e0075b8:	e3406e00 	movt	r6, #3584	; 0xe00
 e0075bc:	e12fff36 	blx	r6
 e0075c0:	e3c05003 	bic	r5, r0, #3
 e0075c4:	e1a04000 	mov	r4, r0
 e0075c8:	e3a02010 	mov	r2, #16
 e0075cc:	e5970004 	ldr	r0, [r7, #4]
 e0075d0:	e3a01000 	mov	r1, #0
 e0075d4:	e12fff36 	blx	r6
 e0075d8:	e3a02041 	mov	r2, #65	; 0x41
 e0075dc:	e1a06000 	mov	r6, r0
 e0075e0:	e58d0004 	str	r0, [sp, #4]
 e0075e4:	e58d5000 	str	r5, [sp]
 e0075e8:	e3a00001 	mov	r0, #1
 e0075ec:	e304344c 	movw	r3, #17484	; 0x444c
 e0075f0:	e3403e01 	movt	r3, #3585	; 0xe01
 e0075f4:	e30413ac 	movw	r1, #17324	; 0x43ac
 e0075f8:	e3401e01 	movt	r1, #3585	; 0xe01
 e0075fc:	eb0008dd 	bl	e009978 <rtk_log_write_nano>
 e007600:	e5856000 	str	r6, [r5]
 e007604:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
 e007608:	e3130004 	tst	r3, #4
 e00760c:	0a000009 	beq	e007638 <cmd_write_word+0x9c>
 e007610:	e3c5303f 	bic	r3, r5, #63	; 0x3f
 e007614:	e3c4003f 	bic	r0, r4, #63	; 0x3f
 e007618:	e2833040 	add	r3, r3, #64	; 0x40
 e00761c:	e1500003 	cmp	r0, r3
 e007620:	2a000003 	bcs	e007634 <cmd_write_word+0x98>
 e007624:	ee070f3a 	mcr	15, 0, r0, cr7, cr10, {1}
 e007628:	e2800040 	add	r0, r0, #64	; 0x40
 e00762c:	e1530000 	cmp	r3, r0
 e007630:	8afffffb 	bhi	e007624 <cmd_write_word+0x88>
 e007634:	f57ff05f 	dmb	sy
 e007638:	e3a00000 	mov	r0, #0
 e00763c:	e28dd00c 	add	sp, sp, #12
 e007640:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}

0e007644 <cmd_dump_word>:
 e007644:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e007648:	e3033700 	movw	r3, #14080	; 0x3700
 e00764c:	e3403e01 	movt	r3, #3585	; 0xe01
 e007650:	e1a04000 	mov	r4, r0
 e007654:	e1a05001 	mov	r5, r1
 e007658:	e12fff33 	blx	r3
 e00765c:	e2443001 	sub	r3, r4, #1
 e007660:	e3530002 	cmp	r3, #2
 e007664:	8a000057 	bhi	e0077c8 <cmd_dump_word+0x184>
 e007668:	e1a06000 	mov	r6, r0
 e00766c:	e3540003 	cmp	r4, #3
 e007670:	0a000023 	beq	e007704 <cmd_dump_word+0xc0>
 e007674:	e3540001 	cmp	r4, #1
 e007678:	1a00005b 	bne	e0077ec <cmd_dump_word+0x1a8>
 e00767c:	e3a02010 	mov	r2, #16
 e007680:	e3a01000 	mov	r1, #0
 e007684:	e5950000 	ldr	r0, [r5]
 e007688:	e30c3cf8 	movw	r3, #52472	; 0xccf8
 e00768c:	e3403e00 	movt	r3, #3584	; 0xe00
 e007690:	e12fff33 	blx	r3
 e007694:	e1a03000 	mov	r3, r0
 e007698:	e3c00003 	bic	r0, r0, #3
 e00769c:	e2562000 	subs	r2, r6, #0
 e0076a0:	e280133e 	add	r1, r0, #-134217728	; 0xf8000000
 e0076a4:	13a02001 	movne	r2, #1
 e0076a8:	e371037e 	cmn	r1, #-134217727	; 0xf8000001
 e0076ac:	83a02000 	movhi	r2, #0
 e0076b0:	e3520000 	cmp	r2, #0
 e0076b4:	1a00006d 	bne	e007870 <cmd_dump_word+0x22c>
 e0076b8:	ee112f10 	mrc	15, 0, r2, cr1, cr0, {0}
 e0076bc:	e3120004 	tst	r2, #4
 e0076c0:	0a00000b 	beq	e0076f4 <cmd_dump_word+0xb0>
 e0076c4:	e0802104 	add	r2, r0, r4, lsl #2
 e0076c8:	e2422001 	sub	r2, r2, #1
 e0076cc:	e3c2203f 	bic	r2, r2, #63	; 0x3f
 e0076d0:	e3c3303f 	bic	r3, r3, #63	; 0x3f
 e0076d4:	e2822040 	add	r2, r2, #64	; 0x40
 e0076d8:	e1530002 	cmp	r3, r2
 e0076dc:	2a000003 	bcs	e0076f0 <cmd_dump_word+0xac>
 e0076e0:	ee073f3e 	mcr	15, 0, r3, cr7, cr14, {1}
 e0076e4:	e2833040 	add	r3, r3, #64	; 0x40
 e0076e8:	e1520003 	cmp	r2, r3
 e0076ec:	8afffffb 	bhi	e0076e0 <cmd_dump_word+0x9c>
 e0076f0:	f57ff05f 	dmb	sy
 e0076f4:	e1a01004 	mov	r1, r4
 e0076f8:	eb0008d2 	bl	e009a48 <rtk_log_memory_dump_word>
 e0076fc:	e3a00001 	mov	r0, #1
 e007700:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e007704:	e5953008 	ldr	r3, [r5, #8]
 e007708:	e3a0200a 	mov	r2, #10
 e00770c:	e3a01000 	mov	r1, #0
 e007710:	e5d37000 	ldrb	r7, [r3]
 e007714:	e5950004 	ldr	r0, [r5, #4]
 e007718:	e30c8cf8 	movw	r8, #52472	; 0xccf8
 e00771c:	e3408e00 	movt	r8, #3584	; 0xe00
 e007720:	e12fff38 	blx	r8
 e007724:	e3a02010 	mov	r2, #16
 e007728:	e3a01000 	mov	r1, #0
 e00772c:	e1a04000 	mov	r4, r0
 e007730:	e5950000 	ldr	r0, [r5]
 e007734:	e12fff38 	blx	r8
 e007738:	e20770df 	and	r7, r7, #223	; 0xdf
 e00773c:	e1a03000 	mov	r3, r0
 e007740:	e3c00003 	bic	r0, r0, #3
 e007744:	e2562000 	subs	r2, r6, #0
 e007748:	e2477042 	sub	r7, r7, #66	; 0x42
 e00774c:	e280133e 	add	r1, r0, #-134217728	; 0xf8000000
 e007750:	13a02001 	movne	r2, #1
 e007754:	e16f7f17 	clz	r7, r7
 e007758:	e371037e 	cmn	r1, #-134217727	; 0xf8000001
 e00775c:	83a02000 	movhi	r2, #0
 e007760:	e1a072a7 	lsr	r7, r7, #5
 e007764:	e3520000 	cmp	r2, #0
 e007768:	1a000040 	bne	e007870 <cmd_dump_word+0x22c>
 e00776c:	e2545000 	subs	r5, r4, #0
 e007770:	13a05001 	movne	r5, #1
 e007774:	e1150007 	tst	r5, r7
 e007778:	0a000031 	beq	e007844 <cmd_dump_word+0x200>
 e00777c:	ee112f10 	mrc	15, 0, r2, cr1, cr0, {0}
 e007780:	e3120004 	tst	r2, #4
 e007784:	0a00000b 	beq	e0077b8 <cmd_dump_word+0x174>
 e007788:	e2442001 	sub	r2, r4, #1
 e00778c:	e0822000 	add	r2, r2, r0
 e007790:	e3c2203f 	bic	r2, r2, #63	; 0x3f
 e007794:	e3c3303f 	bic	r3, r3, #63	; 0x3f
 e007798:	e2822040 	add	r2, r2, #64	; 0x40
 e00779c:	e1530002 	cmp	r3, r2
 e0077a0:	2a000003 	bcs	e0077b4 <cmd_dump_word+0x170>
 e0077a4:	ee073f3e 	mcr	15, 0, r3, cr7, cr14, {1}
 e0077a8:	e2833040 	add	r3, r3, #64	; 0x40
 e0077ac:	e1520003 	cmp	r2, r3
 e0077b0:	8afffffb 	bhi	e0077a4 <cmd_dump_word+0x160>
 e0077b4:	f57ff05f 	dmb	sy
 e0077b8:	e1a01004 	mov	r1, r4
 e0077bc:	eb0008d4 	bl	e009b14 <rtk_log_memory_dump_byte>
 e0077c0:	e3a00001 	mov	r0, #1
 e0077c4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e0077c8:	e3a02045 	mov	r2, #69	; 0x45
 e0077cc:	e3a00002 	mov	r0, #2
 e0077d0:	e304345c 	movw	r3, #17500	; 0x445c
 e0077d4:	e3403e01 	movt	r3, #3585	; 0xe01
 e0077d8:	e30413a0 	movw	r1, #17312	; 0x43a0
 e0077dc:	e3401e01 	movt	r1, #3585	; 0xe01
 e0077e0:	eb000864 	bl	e009978 <rtk_log_write_nano>
 e0077e4:	e3a00000 	mov	r0, #0
 e0077e8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e0077ec:	e3a0200a 	mov	r2, #10
 e0077f0:	e3a01000 	mov	r1, #0
 e0077f4:	e5950004 	ldr	r0, [r5, #4]
 e0077f8:	e30c7cf8 	movw	r7, #52472	; 0xccf8
 e0077fc:	e3407e00 	movt	r7, #3584	; 0xe00
 e007800:	e12fff37 	blx	r7
 e007804:	e3a02010 	mov	r2, #16
 e007808:	e3a01000 	mov	r1, #0
 e00780c:	e1a04000 	mov	r4, r0
 e007810:	e5950000 	ldr	r0, [r5]
 e007814:	e12fff37 	blx	r7
 e007818:	e1a03000 	mov	r3, r0
 e00781c:	e3c00003 	bic	r0, r0, #3
 e007820:	e2562000 	subs	r2, r6, #0
 e007824:	e280133e 	add	r1, r0, #-134217728	; 0xf8000000
 e007828:	13a02001 	movne	r2, #1
 e00782c:	e371037e 	cmn	r1, #-134217727	; 0xf8000001
 e007830:	83a02000 	movhi	r2, #0
 e007834:	e3520000 	cmp	r2, #0
 e007838:	1a00000c 	bne	e007870 <cmd_dump_word+0x22c>
 e00783c:	e2545000 	subs	r5, r4, #0
 e007840:	13a05001 	movne	r5, #1
 e007844:	e3550000 	cmp	r5, #0
 e007848:	1affff9a 	bne	e0076b8 <cmd_dump_word+0x74>
 e00784c:	e3a02045 	mov	r2, #69	; 0x45
 e007850:	e3a00002 	mov	r0, #2
 e007854:	e304349c 	movw	r3, #17564	; 0x449c
 e007858:	e3403e01 	movt	r3, #3585	; 0xe01
 e00785c:	e30413a0 	movw	r1, #17312	; 0x43a0
 e007860:	e3401e01 	movt	r1, #3585	; 0xe01
 e007864:	eb000843 	bl	e009978 <rtk_log_write_nano>
 e007868:	e1a00005 	mov	r0, r5
 e00786c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e007870:	e3a02045 	mov	r2, #69	; 0x45
 e007874:	e3a00002 	mov	r0, #2
 e007878:	e3043478 	movw	r3, #17528	; 0x4478
 e00787c:	e3403e01 	movt	r3, #3585	; 0xe01
 e007880:	e30413a0 	movw	r1, #17312	; 0x43a0
 e007884:	e3401e01 	movt	r1, #3585	; 0xe01
 e007888:	eb00083a 	bl	e009978 <rtk_log_write_nano>
 e00788c:	e3a00001 	mov	r0, #1
 e007890:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0e007894 <cmd_efuse_protect>:
 e007894:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e007898:	e1a03000 	mov	r3, r0
 e00789c:	e24dd01c 	sub	sp, sp, #28
 e0078a0:	e3a00b02 	mov	r0, #2048	; 0x800
 e0078a4:	e1a08001 	mov	r8, r1
 e0078a8:	e58d300c 	str	r3, [sp, #12]
 e0078ac:	eb0016bf 	bl	e00d3b0 <rtos_mem_zmalloc>
 e0078b0:	e2505000 	subs	r5, r0, #0
 e0078b4:	0a00014e 	beq	e007df4 <cmd_efuse_protect+0x560>
 e0078b8:	e5980000 	ldr	r0, [r8]
 e0078bc:	e30414c4 	movw	r1, #17604	; 0x44c4
 e0078c0:	e3401e01 	movt	r1, #3585	; 0xe01
 e0078c4:	e30c9af4 	movw	r9, #51956	; 0xcaf4
 e0078c8:	e3409e00 	movt	r9, #3584	; 0xe00
 e0078cc:	e12fff39 	blx	r9
 e0078d0:	e2506000 	subs	r6, r0, #0
 e0078d4:	1a000030 	bne	e00799c <cmd_efuse_protect+0x108>
 e0078d8:	e59d300c 	ldr	r3, [sp, #12]
 e0078dc:	e3530002 	cmp	r3, #2
 e0078e0:	8a00010b 	bhi	e007d14 <cmd_efuse_protect+0x480>
 e0078e4:	e3a02b01 	mov	r2, #1024	; 0x400
 e0078e8:	e1a01006 	mov	r1, r6
 e0078ec:	e1a00005 	mov	r0, r5
 e0078f0:	eb0005e5 	bl	e00908c <OTP_LogicalMap_Read>
 e0078f4:	e3700001 	cmn	r0, #1
 e0078f8:	0a000182 	beq	e007f08 <cmd_efuse_protect+0x674>
 e0078fc:	e3a0ab01 	mov	sl, #1024	; 0x400
 e007900:	e30434f0 	movw	r3, #17648	; 0x44f0
 e007904:	e3403e01 	movt	r3, #3585	; 0xe01
 e007908:	e304b3ac 	movw	fp, #17324	; 0x43ac
 e00790c:	e340be01 	movt	fp, #3585	; 0xe01
 e007910:	e2457001 	sub	r7, r5, #1
 e007914:	e58d5010 	str	r5, [sp, #16]
 e007918:	e3a04000 	mov	r4, #0
 e00791c:	e1a0500b 	mov	r5, fp
 e007920:	e1a0b003 	mov	fp, r3
 e007924:	ea000009 	b	e007950 <cmd_efuse_protect+0xbc>
 e007928:	e5f73001 	ldrb	r3, [r7, #1]!
 e00792c:	e58d3000 	str	r3, [sp]
 e007930:	e3a02049 	mov	r2, #73	; 0x49
 e007934:	e1a01005 	mov	r1, r5
 e007938:	e3a00004 	mov	r0, #4
 e00793c:	e3043500 	movw	r3, #17664	; 0x4500
 e007940:	e3403e01 	movt	r3, #3585	; 0xe01
 e007944:	eb0007d7 	bl	e0098a8 <rtk_log_write>
 e007948:	e154000a 	cmp	r4, sl
 e00794c:	0a00000a 	beq	e00797c <cmd_efuse_protect+0xe8>
 e007950:	e314000f 	tst	r4, #15
 e007954:	e0862004 	add	r2, r6, r4
 e007958:	e2844001 	add	r4, r4, #1
 e00795c:	1afffff1 	bne	e007928 <cmd_efuse_protect+0x94>
 e007960:	e58d2000 	str	r2, [sp]
 e007964:	e1a0300b 	mov	r3, fp
 e007968:	e3a02049 	mov	r2, #73	; 0x49
 e00796c:	e1a01005 	mov	r1, r5
 e007970:	e3a00004 	mov	r0, #4
 e007974:	eb0007cb 	bl	e0098a8 <rtk_log_write>
 e007978:	eaffffea 	b	e007928 <cmd_efuse_protect+0x94>
 e00797c:	e59d5010 	ldr	r5, [sp, #16]
 e007980:	e30434cc 	movw	r3, #17612	; 0x44cc
 e007984:	e3403e01 	movt	r3, #3585	; 0xe01
 e007988:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00798c:	e3401e01 	movt	r1, #3585	; 0xe01
 e007990:	e3a02049 	mov	r2, #73	; 0x49
 e007994:	e3a00004 	mov	r0, #4
 e007998:	eb0007c2 	bl	e0098a8 <rtk_log_write>
 e00799c:	e5980000 	ldr	r0, [r8]
 e0079a0:	e3041508 	movw	r1, #17672	; 0x4508
 e0079a4:	e3401e01 	movt	r1, #3585	; 0xe01
 e0079a8:	e12fff39 	blx	r9
 e0079ac:	e2504000 	subs	r4, r0, #0
 e0079b0:	1a0000bb 	bne	e007ca4 <cmd_efuse_protect+0x410>
 e0079b4:	e59d300c 	ldr	r3, [sp, #12]
 e0079b8:	e3530003 	cmp	r3, #3
 e0079bc:	9a0000ac 	bls	e007c74 <cmd_efuse_protect+0x3e0>
 e0079c0:	e1a01004 	mov	r1, r4
 e0079c4:	e3a02010 	mov	r2, #16
 e0079c8:	e5980004 	ldr	r0, [r8, #4]
 e0079cc:	e30c7cf8 	movw	r7, #52472	; 0xccf8
 e0079d0:	e3407e00 	movt	r7, #3584	; 0xe00
 e0079d4:	e12fff37 	blx	r7
 e0079d8:	e1a01004 	mov	r1, r4
 e0079dc:	e3a02010 	mov	r2, #16
 e0079e0:	e58d0014 	str	r0, [sp, #20]
 e0079e4:	e5980008 	ldr	r0, [r8, #8]
 e0079e8:	e12fff37 	blx	r7
 e0079ec:	e598400c 	ldr	r4, [r8, #12]
 e0079f0:	e1a0b000 	mov	fp, r0
 e0079f4:	e30c3be8 	movw	r3, #52200	; 0xcbe8
 e0079f8:	e3403e00 	movt	r3, #3584	; 0xe00
 e0079fc:	e1a00004 	mov	r0, r4
 e007a00:	e12fff33 	blx	r3
 e007a04:	e3100001 	tst	r0, #1
 e007a08:	e1a06000 	mov	r6, r0
 e007a0c:	13a02057 	movne	r2, #87	; 0x57
 e007a10:	13a00003 	movne	r0, #3
 e007a14:	158d6000 	strne	r6, [sp]
 e007a18:	1a000134 	bne	e007ef0 <cmd_efuse_protect+0x65c>
 e007a1c:	e1a030a6 	lsr	r3, r6, #1
 e007a20:	e1a0a003 	mov	sl, r3
 e007a24:	e15b0003 	cmp	fp, r3
 e007a28:	e58d3010 	str	r3, [sp, #16]
 e007a2c:	1a0000ce 	bne	e007d6c <cmd_efuse_protect+0x4d8>
 e007a30:	e3c66001 	bic	r6, r6, #1
 e007a34:	e58d6004 	str	r6, [sp, #4]
 e007a38:	e59d6010 	ldr	r6, [sp, #16]
 e007a3c:	e3a02049 	mov	r2, #73	; 0x49
 e007a40:	e3a00004 	mov	r0, #4
 e007a44:	e58d6000 	str	r6, [sp]
 e007a48:	e3043588 	movw	r3, #17800	; 0x4588
 e007a4c:	e3403e01 	movt	r3, #3585	; 0xe01
 e007a50:	e30413a0 	movw	r1, #17312	; 0x43a0
 e007a54:	e3401e01 	movt	r1, #3585	; 0xe01
 e007a58:	eb000792 	bl	e0098a8 <rtk_log_write>
 e007a5c:	e3560000 	cmp	r6, #0
 e007a60:	0a00000a 	beq	e007a90 <cmd_efuse_protect+0x1fc>
 e007a64:	e59d3010 	ldr	r3, [sp, #16]
 e007a68:	e30c6eb4 	movw	r6, #52916	; 0xceb4
 e007a6c:	e3406e00 	movt	r6, #3584	; 0xe00
 e007a70:	e245a001 	sub	sl, r5, #1
 e007a74:	e084b083 	add	fp, r4, r3, lsl #1
 e007a78:	e5d41001 	ldrb	r1, [r4, #1]
 e007a7c:	e4d40002 	ldrb	r0, [r4], #2
 e007a80:	e12fff36 	blx	r6
 e007a84:	e154000b 	cmp	r4, fp
 e007a88:	e5ea0001 	strb	r0, [sl, #1]!
 e007a8c:	1afffff9 	bne	e007a78 <cmd_efuse_protect+0x1e4>
 e007a90:	e59d1010 	ldr	r1, [sp, #16]
 e007a94:	e59d0014 	ldr	r0, [sp, #20]
 e007a98:	e1a02005 	mov	r2, r5
 e007a9c:	eb0005e7 	bl	e009240 <OTP_LogicalMap_Write>
 e007aa0:	e3700001 	cmn	r0, #1
 e007aa4:	0a000117 	beq	e007f08 <cmd_efuse_protect+0x674>
 e007aa8:	e5980000 	ldr	r0, [r8]
 e007aac:	e30415b4 	movw	r1, #17844	; 0x45b4
 e007ab0:	e3401e01 	movt	r1, #3585	; 0xe01
 e007ab4:	e12fff39 	blx	r9
 e007ab8:	e3500000 	cmp	r0, #0
 e007abc:	0a0000b8 	beq	e007da4 <cmd_efuse_protect+0x510>
 e007ac0:	e5980000 	ldr	r0, [r8]
 e007ac4:	e30415e4 	movw	r1, #17892	; 0x45e4
 e007ac8:	e3401e01 	movt	r1, #3585	; 0xe01
 e007acc:	e12fff39 	blx	r9
 e007ad0:	e2504000 	subs	r4, r0, #0
 e007ad4:	1a0000d1 	bne	e007e20 <cmd_efuse_protect+0x58c>
 e007ad8:	e59d300c 	ldr	r3, [sp, #12]
 e007adc:	e3530003 	cmp	r3, #3
 e007ae0:	9a000063 	bls	e007c74 <cmd_efuse_protect+0x3e0>
 e007ae4:	e1a01004 	mov	r1, r4
 e007ae8:	e3a02010 	mov	r2, #16
 e007aec:	e5980004 	ldr	r0, [r8, #4]
 e007af0:	e30c6cf8 	movw	r6, #52472	; 0xccf8
 e007af4:	e3406e00 	movt	r6, #3584	; 0xe00
 e007af8:	e12fff36 	blx	r6
 e007afc:	e1a01004 	mov	r1, r4
 e007b00:	e3a02010 	mov	r2, #16
 e007b04:	e58d0010 	str	r0, [sp, #16]
 e007b08:	e5980008 	ldr	r0, [r8, #8]
 e007b0c:	e12fff36 	blx	r6
 e007b10:	e598700c 	ldr	r7, [r8, #12]
 e007b14:	e1a06000 	mov	r6, r0
 e007b18:	e30c3be8 	movw	r3, #52200	; 0xcbe8
 e007b1c:	e3403e00 	movt	r3, #3584	; 0xe00
 e007b20:	e1a00007 	mov	r0, r7
 e007b24:	e12fff33 	blx	r3
 e007b28:	e1a04000 	mov	r4, r0
 e007b2c:	e3100001 	tst	r0, #1
 e007b30:	1a0000eb 	bne	e007ee4 <cmd_efuse_protect+0x650>
 e007b34:	e1a030a0 	lsr	r3, r0, #1
 e007b38:	e1a0a003 	mov	sl, r3
 e007b3c:	e1560003 	cmp	r6, r3
 e007b40:	e58d300c 	str	r3, [sp, #12]
 e007b44:	0a00000a 	beq	e007b74 <cmd_efuse_protect+0x2e0>
 e007b48:	e3a02057 	mov	r2, #87	; 0x57
 e007b4c:	e3a00003 	mov	r0, #3
 e007b50:	e3043544 	movw	r3, #17732	; 0x4544
 e007b54:	e3403e01 	movt	r3, #3585	; 0xe01
 e007b58:	e30413a0 	movw	r1, #17312	; 0x43a0
 e007b5c:	e3401e01 	movt	r1, #3585	; 0xe01
 e007b60:	eb000750 	bl	e0098a8 <rtk_log_write>
 e007b64:	e15a0006 	cmp	sl, r6
 e007b68:	e1a0300a 	mov	r3, sl
 e007b6c:	21a03006 	movcs	r3, r6
 e007b70:	e58d300c 	str	r3, [sp, #12]
 e007b74:	e3c44001 	bic	r4, r4, #1
 e007b78:	e58d4004 	str	r4, [sp, #4]
 e007b7c:	e59d400c 	ldr	r4, [sp, #12]
 e007b80:	e3a02049 	mov	r2, #73	; 0x49
 e007b84:	e3a00004 	mov	r0, #4
 e007b88:	e58d4000 	str	r4, [sp]
 e007b8c:	e30435f4 	movw	r3, #17908	; 0x45f4
 e007b90:	e3403e01 	movt	r3, #3585	; 0xe01
 e007b94:	e30413a0 	movw	r1, #17312	; 0x43a0
 e007b98:	e3401e01 	movt	r1, #3585	; 0xe01
 e007b9c:	eb000741 	bl	e0098a8 <rtk_log_write>
 e007ba0:	e1a03004 	mov	r3, r4
 e007ba4:	e3540000 	cmp	r4, #0
 e007ba8:	0a00009c 	beq	e007e20 <cmd_efuse_protect+0x58c>
 e007bac:	e245b001 	sub	fp, r5, #1
 e007bb0:	e30c6eb4 	movw	r6, #52916	; 0xceb4
 e007bb4:	e3406e00 	movt	r6, #3584	; 0xe00
 e007bb8:	e1a0400b 	mov	r4, fp
 e007bbc:	e087a083 	add	sl, r7, r3, lsl #1
 e007bc0:	e58db014 	str	fp, [sp, #20]
 e007bc4:	e5d71001 	ldrb	r1, [r7, #1]
 e007bc8:	e4d70002 	ldrb	r0, [r7], #2
 e007bcc:	e12fff36 	blx	r6
 e007bd0:	e157000a 	cmp	r7, sl
 e007bd4:	e5eb0001 	strb	r0, [fp, #1]!
 e007bd8:	1afffff9 	bne	e007bc4 <cmd_efuse_protect+0x330>
 e007bdc:	e59d200c 	ldr	r2, [sp, #12]
 e007be0:	e59d3014 	ldr	r3, [sp, #20]
 e007be4:	e265b001 	rsb	fp, r5, #1
 e007be8:	e0833002 	add	r3, r3, r2
 e007bec:	e59d2010 	ldr	r2, [sp, #16]
 e007bf0:	e3047620 	movw	r7, #17952	; 0x4620
 e007bf4:	e3407e01 	movt	r7, #3585	; 0xe01
 e007bf8:	e304a3ac 	movw	sl, #17324	; 0x43ac
 e007bfc:	e340ae01 	movt	sl, #3585	; 0xe01
 e007c00:	e58d800c 	str	r8, [sp, #12]
 e007c04:	e08bb002 	add	fp, fp, r2
 e007c08:	e1a08007 	mov	r8, r7
 e007c0c:	e1a07003 	mov	r7, r3
 e007c10:	ea000001 	b	e007c1c <cmd_efuse_protect+0x388>
 e007c14:	e1570004 	cmp	r7, r4
 e007c18:	0a00007f 	beq	e007e1c <cmd_efuse_protect+0x588>
 e007c1c:	e08b6004 	add	r6, fp, r4
 e007c20:	e5f42001 	ldrb	r2, [r4, #1]!
 e007c24:	e1a03008 	mov	r3, r8
 e007c28:	e1a0100a 	mov	r1, sl
 e007c2c:	e3a00004 	mov	r0, #4
 e007c30:	e58d2004 	str	r2, [sp, #4]
 e007c34:	e58d6000 	str	r6, [sp]
 e007c38:	e3a02049 	mov	r2, #73	; 0x49
 e007c3c:	eb000719 	bl	e0098a8 <rtk_log_write>
 e007c40:	e5d41000 	ldrb	r1, [r4]
 e007c44:	e1a00006 	mov	r0, r6
 e007c48:	eb00047f 	bl	e008e4c <OTP_Write8>
 e007c4c:	e3700001 	cmn	r0, #1
 e007c50:	1affffef 	bne	e007c14 <cmd_efuse_protect+0x380>
 e007c54:	e3a02045 	mov	r2, #69	; 0x45
 e007c58:	e3a00002 	mov	r0, #2
 e007c5c:	e3043630 	movw	r3, #17968	; 0x4630
 e007c60:	e3403e01 	movt	r3, #3585	; 0xe01
 e007c64:	e30413a0 	movw	r1, #17312	; 0x43a0
 e007c68:	e3401e01 	movt	r1, #3585	; 0xe01
 e007c6c:	eb00070d 	bl	e0098a8 <rtk_log_write>
 e007c70:	ea000006 	b	e007c90 <cmd_efuse_protect+0x3fc>
 e007c74:	e3043510 	movw	r3, #17680	; 0x4510
 e007c78:	e3403e01 	movt	r3, #3585	; 0xe01
 e007c7c:	e30413a0 	movw	r1, #17312	; 0x43a0
 e007c80:	e3401e01 	movt	r1, #3585	; 0xe01
 e007c84:	e3a02045 	mov	r2, #69	; 0x45
 e007c88:	e3a00002 	mov	r0, #2
 e007c8c:	eb000705 	bl	e0098a8 <rtk_log_write>
 e007c90:	e1a00005 	mov	r0, r5
 e007c94:	eb0015db 	bl	e00d408 <rtos_mem_free>
 e007c98:	e3a00000 	mov	r0, #0
 e007c9c:	e28dd01c 	add	sp, sp, #28
 e007ca0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e007ca4:	e5980000 	ldr	r0, [r8]
 e007ca8:	e30415b4 	movw	r1, #17844	; 0x45b4
 e007cac:	e3401e01 	movt	r1, #3585	; 0xe01
 e007cb0:	e12fff39 	blx	r9
 e007cb4:	e2504000 	subs	r4, r0, #0
 e007cb8:	1affff80 	bne	e007ac0 <cmd_efuse_protect+0x22c>
 e007cbc:	e59d300c 	ldr	r3, [sp, #12]
 e007cc0:	e3530002 	cmp	r3, #2
 e007cc4:	93a06b02 	movls	r6, #2048	; 0x800
 e007cc8:	8a000033 	bhi	e007d9c <cmd_efuse_protect+0x508>
 e007ccc:	e1a07004 	mov	r7, r4
 e007cd0:	ea000001 	b	e007cdc <cmd_efuse_protect+0x448>
 e007cd4:	e1570006 	cmp	r7, r6
 e007cd8:	2a000060 	bcs	e007e60 <cmd_efuse_protect+0x5cc>
 e007cdc:	e0851007 	add	r1, r5, r7
 e007ce0:	e1a00007 	mov	r0, r7
 e007ce4:	eb000452 	bl	e008e34 <OTP_Read8>
 e007ce8:	e2877001 	add	r7, r7, #1
 e007cec:	e3700001 	cmn	r0, #1
 e007cf0:	1afffff7 	bne	e007cd4 <cmd_efuse_protect+0x440>
 e007cf4:	e3a02045 	mov	r2, #69	; 0x45
 e007cf8:	e3a00002 	mov	r0, #2
 e007cfc:	e30435bc 	movw	r3, #17852	; 0x45bc
 e007d00:	e3403e01 	movt	r3, #3585	; 0xe01
 e007d04:	e30413a0 	movw	r1, #17312	; 0x43a0
 e007d08:	e3401e01 	movt	r1, #3585	; 0xe01
 e007d0c:	eb0006e5 	bl	e0098a8 <rtk_log_write>
 e007d10:	eaffffde 	b	e007c90 <cmd_efuse_protect+0x3fc>
 e007d14:	e1a01006 	mov	r1, r6
 e007d18:	e3a02010 	mov	r2, #16
 e007d1c:	e5980004 	ldr	r0, [r8, #4]
 e007d20:	e30c7cf8 	movw	r7, #52472	; 0xccf8
 e007d24:	e3407e00 	movt	r7, #3584	; 0xe00
 e007d28:	e12fff37 	blx	r7
 e007d2c:	e1a01006 	mov	r1, r6
 e007d30:	e3a02010 	mov	r2, #16
 e007d34:	e1a06000 	mov	r6, r0
 e007d38:	e5980008 	ldr	r0, [r8, #8]
 e007d3c:	e12fff37 	blx	r7
 e007d40:	e1a01006 	mov	r1, r6
 e007d44:	e1a02000 	mov	r2, r0
 e007d48:	e1a0a000 	mov	sl, r0
 e007d4c:	e1a00005 	mov	r0, r5
 e007d50:	eb0004cd 	bl	e00908c <OTP_LogicalMap_Read>
 e007d54:	e3700001 	cmn	r0, #1
 e007d58:	0a00006a 	beq	e007f08 <cmd_efuse_protect+0x674>
 e007d5c:	e086300a 	add	r3, r6, sl
 e007d60:	e1560003 	cmp	r6, r3
 e007d64:	3afffee5 	bcc	e007900 <cmd_efuse_protect+0x6c>
 e007d68:	eaffff04 	b	e007980 <cmd_efuse_protect+0xec>
 e007d6c:	e3a02057 	mov	r2, #87	; 0x57
 e007d70:	e3a00003 	mov	r0, #3
 e007d74:	e3043544 	movw	r3, #17732	; 0x4544
 e007d78:	e3403e01 	movt	r3, #3585	; 0xe01
 e007d7c:	e30413a0 	movw	r1, #17312	; 0x43a0
 e007d80:	e3401e01 	movt	r1, #3585	; 0xe01
 e007d84:	eb0006c7 	bl	e0098a8 <rtk_log_write>
 e007d88:	e15a000b 	cmp	sl, fp
 e007d8c:	e1a0300a 	mov	r3, sl
 e007d90:	21a0300b 	movcs	r3, fp
 e007d94:	e58d3010 	str	r3, [sp, #16]
 e007d98:	eaffff24 	b	e007a30 <cmd_efuse_protect+0x19c>
 e007d9c:	e30c7cf8 	movw	r7, #52472	; 0xccf8
 e007da0:	e3407e00 	movt	r7, #3584	; 0xe00
 e007da4:	e3a02010 	mov	r2, #16
 e007da8:	e3a01000 	mov	r1, #0
 e007dac:	e5980004 	ldr	r0, [r8, #4]
 e007db0:	e12fff37 	blx	r7
 e007db4:	e3a02010 	mov	r2, #16
 e007db8:	e1a04000 	mov	r4, r0
 e007dbc:	e3a01000 	mov	r1, #0
 e007dc0:	e5980008 	ldr	r0, [r8, #8]
 e007dc4:	e12fff37 	blx	r7
 e007dc8:	e0846000 	add	r6, r4, r0
 e007dcc:	e1540006 	cmp	r4, r6
 e007dd0:	3affffbd 	bcc	e007ccc <cmd_efuse_protect+0x438>
 e007dd4:	e3a02049 	mov	r2, #73	; 0x49
 e007dd8:	e3a00004 	mov	r0, #4
 e007ddc:	e30434cc 	movw	r3, #17612	; 0x44cc
 e007de0:	e3403e01 	movt	r3, #3585	; 0xe01
 e007de4:	e30413ac 	movw	r1, #17324	; 0x43ac
 e007de8:	e3401e01 	movt	r1, #3585	; 0xe01
 e007dec:	eb0006ad 	bl	e0098a8 <rtk_log_write>
 e007df0:	eaffff32 	b	e007ac0 <cmd_efuse_protect+0x22c>
 e007df4:	e3a02045 	mov	r2, #69	; 0x45
 e007df8:	e3a00002 	mov	r0, #2
 e007dfc:	e30434ac 	movw	r3, #17580	; 0x44ac
 e007e00:	e3403e01 	movt	r3, #3585	; 0xe01
 e007e04:	e30413a0 	movw	r1, #17312	; 0x43a0
 e007e08:	e3401e01 	movt	r1, #3585	; 0xe01
 e007e0c:	eb0006d9 	bl	e009978 <rtk_log_write_nano>
 e007e10:	e3a00000 	mov	r0, #0
 e007e14:	e28dd01c 	add	sp, sp, #28
 e007e18:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e007e1c:	e59d800c 	ldr	r8, [sp, #12]
 e007e20:	e5980000 	ldr	r0, [r8]
 e007e24:	e30415ec 	movw	r1, #17900	; 0x45ec
 e007e28:	e3401e01 	movt	r1, #3585	; 0xe01
 e007e2c:	e12fff39 	blx	r9
 e007e30:	e3500000 	cmp	r0, #0
 e007e34:	1affff95 	bne	e007c90 <cmd_efuse_protect+0x3fc>
 e007e38:	eb0003e4 	bl	e008dd0 <OTPGetCRC>
 e007e3c:	e3a02049 	mov	r2, #73	; 0x49
 e007e40:	e58d0000 	str	r0, [sp]
 e007e44:	e3043644 	movw	r3, #17988	; 0x4644
 e007e48:	e3403e01 	movt	r3, #3585	; 0xe01
 e007e4c:	e3a00004 	mov	r0, #4
 e007e50:	e30413a0 	movw	r1, #17312	; 0x43a0
 e007e54:	e3401e01 	movt	r1, #3585	; 0xe01
 e007e58:	eb000692 	bl	e0098a8 <rtk_log_write>
 e007e5c:	eaffff8b 	b	e007c90 <cmd_efuse_protect+0x3fc>
 e007e60:	e085a004 	add	sl, r5, r4
 e007e64:	e30435d0 	movw	r3, #17872	; 0x45d0
 e007e68:	e3403e01 	movt	r3, #3585	; 0xe01
 e007e6c:	e304b3ac 	movw	fp, #17324	; 0x43ac
 e007e70:	e340be01 	movt	fp, #3585	; 0xe01
 e007e74:	e58d5010 	str	r5, [sp, #16]
 e007e78:	e1a0700a 	mov	r7, sl
 e007e7c:	e1a0500b 	mov	r5, fp
 e007e80:	e1a0b003 	mov	fp, r3
 e007e84:	ea00000a 	b	e007eb4 <cmd_efuse_protect+0x620>
 e007e88:	e4d73001 	ldrb	r3, [r7], #1
 e007e8c:	e58d3000 	str	r3, [sp]
 e007e90:	e3a02049 	mov	r2, #73	; 0x49
 e007e94:	e1a01005 	mov	r1, r5
 e007e98:	e2844001 	add	r4, r4, #1
 e007e9c:	e3a00004 	mov	r0, #4
 e007ea0:	e3043500 	movw	r3, #17664	; 0x4500
 e007ea4:	e3403e01 	movt	r3, #3585	; 0xe01
 e007ea8:	eb00067e 	bl	e0098a8 <rtk_log_write>
 e007eac:	e1540006 	cmp	r4, r6
 e007eb0:	2a000009 	bcs	e007edc <cmd_efuse_protect+0x648>
 e007eb4:	e047300a 	sub	r3, r7, sl
 e007eb8:	e313000f 	tst	r3, #15
 e007ebc:	1afffff1 	bne	e007e88 <cmd_efuse_protect+0x5f4>
 e007ec0:	e1a0300b 	mov	r3, fp
 e007ec4:	e3a02049 	mov	r2, #73	; 0x49
 e007ec8:	e1a01005 	mov	r1, r5
 e007ecc:	e3a00004 	mov	r0, #4
 e007ed0:	e58d4000 	str	r4, [sp]
 e007ed4:	eb000673 	bl	e0098a8 <rtk_log_write>
 e007ed8:	eaffffea 	b	e007e88 <cmd_efuse_protect+0x5f4>
 e007edc:	e59d5010 	ldr	r5, [sp, #16]
 e007ee0:	eaffffbb 	b	e007dd4 <cmd_efuse_protect+0x540>
 e007ee4:	e3a02057 	mov	r2, #87	; 0x57
 e007ee8:	e3a00003 	mov	r0, #3
 e007eec:	e58d4000 	str	r4, [sp]
 e007ef0:	e3043520 	movw	r3, #17696	; 0x4520
 e007ef4:	e3403e01 	movt	r3, #3585	; 0xe01
 e007ef8:	e30413a0 	movw	r1, #17312	; 0x43a0
 e007efc:	e3401e01 	movt	r1, #3585	; 0xe01
 e007f00:	eb000668 	bl	e0098a8 <rtk_log_write>
 e007f04:	eaffff61 	b	e007c90 <cmd_efuse_protect+0x3fc>
 e007f08:	e3a02045 	mov	r2, #69	; 0x45
 e007f0c:	e3a00002 	mov	r0, #2
 e007f10:	e30434d0 	movw	r3, #17616	; 0x44d0
 e007f14:	e3403e01 	movt	r3, #3585	; 0xe01
 e007f18:	e30413a0 	movw	r1, #17312	; 0x43a0
 e007f1c:	e3401e01 	movt	r1, #3585	; 0xe01
 e007f20:	eb000660 	bl	e0098a8 <rtk_log_write>
 e007f24:	eaffff59 	b	e007c90 <cmd_efuse_protect+0x3fc>

0e007f28 <cmd_rom_table>:
 e007f28:	e1a02000 	mov	r2, r0
 e007f2c:	e3053f2c 	movw	r3, #24364	; 0x5f2c
 e007f30:	e3403e01 	movt	r3, #3585	; 0xe01
 e007f34:	e3a00006 	mov	r0, #6
 e007f38:	e5823000 	str	r3, [r2]
 e007f3c:	e12fff1e 	bx	lr

0e007f40 <shell_loguratRx_ipc_int>:
 e007f40:	e92d4010 	push	{r4, lr}
 e007f44:	e3034228 	movw	r4, #12840	; 0x3228
 e007f48:	e346400a 	movt	r4, #24586	; 0x600a
 e007f4c:	e3a01000 	mov	r1, #0
 e007f50:	e3a00001 	mov	r0, #1
 e007f54:	eb000211 	bl	e0087a0 <ipc_get_message>
 e007f58:	e5901004 	ldr	r1, [r0, #4]
 e007f5c:	e5940008 	ldr	r0, [r4, #8]
 e007f60:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
 e007f64:	e3130004 	tst	r3, #4
 e007f68:	0a00000a 	beq	e007f98 <shell_loguratRx_ipc_int+0x58>
 e007f6c:	e281207f 	add	r2, r1, #127	; 0x7f
 e007f70:	e3c2203f 	bic	r2, r2, #63	; 0x3f
 e007f74:	e3c1303f 	bic	r3, r1, #63	; 0x3f
 e007f78:	e2822040 	add	r2, r2, #64	; 0x40
 e007f7c:	e1530002 	cmp	r3, r2
 e007f80:	2a000003 	bcs	e007f94 <shell_loguratRx_ipc_int+0x54>
 e007f84:	ee073f36 	mcr	15, 0, r3, cr7, cr6, {1}
 e007f88:	e2833040 	add	r3, r3, #64	; 0x40
 e007f8c:	e1520003 	cmp	r2, r3
 e007f90:	8afffffb 	bhi	e007f84 <shell_loguratRx_ipc_int+0x44>
 e007f94:	f57ff05f 	dmb	sy
 e007f98:	e3a02080 	mov	r2, #128	; 0x80
 e007f9c:	e30c3794 	movw	r3, #51092	; 0xc794
 e007fa0:	e3403e00 	movt	r3, #3584	; 0xe00
 e007fa4:	e12fff33 	blx	r3
 e007fa8:	e3a03001 	mov	r3, #1
 e007fac:	e5c43004 	strb	r3, [r4, #4]
 e007fb0:	e5943020 	ldr	r3, [r4, #32]
 e007fb4:	e3530000 	cmp	r3, #0
 e007fb8:	08bd8010 	popeq	{r4, pc}
 e007fbc:	e594301c 	ldr	r3, [r4, #28]
 e007fc0:	e8bd4010 	pop	{r4, lr}
 e007fc4:	e12fff13 	bx	r3

0e007fc8 <shell_task_ram>:
 e007fc8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e007fcc:	e3034228 	movw	r4, #12840	; 0x3228
 e007fd0:	e346400a 	movt	r4, #24586	; 0x600a
 e007fd4:	e24dd02c 	sub	sp, sp, #44	; 0x2c
 e007fd8:	e3a00b01 	mov	r0, #1024	; 0x400
 e007fdc:	e5943008 	ldr	r3, [r4, #8]
 e007fe0:	e3037164 	movw	r7, #12644	; 0x3164
 e007fe4:	e346700a 	movt	r7, #24586	; 0x600a
 e007fe8:	e30c8c80 	movw	r8, #52352	; 0xcc80
 e007fec:	e3408e00 	movt	r8, #3584	; 0xe00
 e007ff0:	e58d3014 	str	r3, [sp, #20]
 e007ff4:	e283b001 	add	fp, r3, #1
 e007ff8:	e3a03001 	mov	r3, #1
 e007ffc:	e5843020 	str	r3, [r4, #32]
 e008000:	e5c43006 	strb	r3, [r4, #6]
 e008004:	eb00157f 	bl	e00d608 <rtos_create_secure_context>
 e008008:	e30831f0 	movw	r3, #33264	; 0x81f0
 e00800c:	e3403e00 	movt	r3, #3584	; 0xe00
 e008010:	e58d3018 	str	r3, [sp, #24]
 e008014:	e3043990 	movw	r3, #18832	; 0x4990
 e008018:	e3403e01 	movt	r3, #3585	; 0xe01
 e00801c:	e58d301c 	str	r3, [sp, #28]
 e008020:	e30433ac 	movw	r3, #17324	; 0x43ac
 e008024:	e3403e01 	movt	r3, #3585	; 0xe01
 e008028:	e58d3020 	str	r3, [sp, #32]
 e00802c:	e30439a8 	movw	r3, #18856	; 0x49a8
 e008030:	e3403e01 	movt	r3, #3585	; 0xe01
 e008034:	e58d3024 	str	r3, [sp, #36]	; 0x24
 e008038:	e5970000 	ldr	r0, [r7]
 e00803c:	e3e01000 	mvn	r1, #0
 e008040:	eb001501 	bl	e00d44c <rtos_sema_take>
 e008044:	e5d43004 	ldrb	r3, [r4, #4]
 e008048:	e3530000 	cmp	r3, #0
 e00804c:	0afffff9 	beq	e008038 <shell_task_ram+0x70>
 e008050:	e1a0000b 	mov	r0, fp
 e008054:	eb00006e 	bl	e008214 <shell_get_argc>
 e008058:	e1a09000 	mov	r9, r0
 e00805c:	e1a0000b 	mov	r0, fp
 e008060:	e58d900c 	str	r9, [sp, #12]
 e008064:	eb000085 	bl	e008280 <shell_get_argv>
 e008068:	e594a010 	ldr	sl, [r4, #16]
 e00806c:	e5945014 	ldr	r5, [r4, #20]
 e008070:	e5906000 	ldr	r6, [r0]
 e008074:	e3550000 	cmp	r5, #0
 e008078:	13a09000 	movne	r9, #0
 e00807c:	e58d0010 	str	r0, [sp, #16]
 e008080:	1a000002 	bne	e008090 <shell_task_ram+0xc8>
 e008084:	ea000019 	b	e0080f0 <shell_task_ram+0x128>
 e008088:	e1550009 	cmp	r5, r9
 e00808c:	0a000017 	beq	e0080f0 <shell_task_ram+0x128>
 e008090:	e79a1209 	ldr	r1, [sl, r9, lsl #4]
 e008094:	e1a00006 	mov	r0, r6
 e008098:	e12fff38 	blx	r8
 e00809c:	e08a1209 	add	r1, sl, r9, lsl #4
 e0080a0:	e3500000 	cmp	r0, #0
 e0080a4:	e2899001 	add	r9, r9, #1
 e0080a8:	1afffff6 	bne	e008088 <shell_task_ram+0xc0>
 e0080ac:	e5913008 	ldr	r3, [r1, #8]
 e0080b0:	e3530000 	cmp	r3, #0
 e0080b4:	0a00000d 	beq	e0080f0 <shell_task_ram+0x128>
 e0080b8:	e59d200c 	ldr	r2, [sp, #12]
 e0080bc:	e2420001 	sub	r0, r2, #1
 e0080c0:	e59d2010 	ldr	r2, [sp, #16]
 e0080c4:	e6ff0070 	uxth	r0, r0
 e0080c8:	e2821004 	add	r1, r2, #4
 e0080cc:	e12fff33 	blx	r3
 e0080d0:	e59d3018 	ldr	r3, [sp, #24]
 e0080d4:	e59d0014 	ldr	r0, [sp, #20]
 e0080d8:	e3a02000 	mov	r2, #0
 e0080dc:	e3a01080 	mov	r1, #128	; 0x80
 e0080e0:	e12fff33 	blx	r3
 e0080e4:	e3a03000 	mov	r3, #0
 e0080e8:	e5c43004 	strb	r3, [r4, #4]
 e0080ec:	eaffffd1 	b	e008038 <shell_task_ram+0x70>
 e0080f0:	e59d5020 	ldr	r5, [sp, #32]
 e0080f4:	e59d301c 	ldr	r3, [sp, #28]
 e0080f8:	e1a01005 	mov	r1, r5
 e0080fc:	e3a02045 	mov	r2, #69	; 0x45
 e008100:	e3a00002 	mov	r0, #2
 e008104:	e58db000 	str	fp, [sp]
 e008108:	eb00061a 	bl	e009978 <rtk_log_write_nano>
 e00810c:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e008110:	e3a02045 	mov	r2, #69	; 0x45
 e008114:	e1a01005 	mov	r1, r5
 e008118:	e3a00002 	mov	r0, #2
 e00811c:	eb000615 	bl	e009978 <rtk_log_write_nano>
 e008120:	eaffffea 	b	e0080d0 <shell_task_ram+0x108>

0e008124 <shell_give_sema>:
 e008124:	e3033228 	movw	r3, #12840	; 0x3228
 e008128:	e346300a 	movt	r3, #24586	; 0x600a
 e00812c:	e5933020 	ldr	r3, [r3, #32]
 e008130:	e3530000 	cmp	r3, #0
 e008134:	012fff1e 	bxeq	lr
 e008138:	e3033164 	movw	r3, #12644	; 0x3164
 e00813c:	e346300a 	movt	r3, #24586	; 0x600a
 e008140:	e5930000 	ldr	r0, [r3]
 e008144:	ea0014e9 	b	e00d4f0 <rtos_sema_give>

0e008148 <shell_init_ram>:
 e008148:	e92d4010 	push	{r4, lr}
 e00814c:	e3032228 	movw	r2, #12840	; 0x3228
 e008150:	e346200a 	movt	r2, #24586	; 0x600a
 e008154:	e24dd008 	sub	sp, sp, #8
 e008158:	e3050f2c 	movw	r0, #24364	; 0x5f2c
 e00815c:	e3400e01 	movt	r0, #3585	; 0xe01
 e008160:	e3053f8c 	movw	r3, #24460	; 0x5f8c
 e008164:	e3403e01 	movt	r3, #3585	; 0xe01
 e008168:	e0431000 	sub	r1, r3, r0
 e00816c:	e5820010 	str	r0, [r2, #16]
 e008170:	e3a04000 	mov	r4, #0
 e008174:	e3030164 	movw	r0, #12644	; 0x3164
 e008178:	e346000a 	movt	r0, #24586	; 0x600a
 e00817c:	e3a03001 	mov	r3, #1
 e008180:	e1a01221 	lsr	r1, r1, #4
 e008184:	e5821014 	str	r1, [r2, #20]
 e008188:	e5c24004 	strb	r4, [r2, #4]
 e00818c:	e3081124 	movw	r1, #33060	; 0x8124
 e008190:	e3401e00 	movt	r1, #3584	; 0xe00
 e008194:	e5c23005 	strb	r3, [r2, #5]
 e008198:	e582101c 	str	r1, [r2, #28]
 e00819c:	eb00149c 	bl	e00d414 <rtos_sema_create_binary>
 e0081a0:	e3a02002 	mov	r2, #2
 e0081a4:	e300180c 	movw	r1, #2060	; 0x80c
 e0081a8:	e58d2004 	str	r2, [sp, #4]
 e0081ac:	e58d1000 	str	r1, [sp]
 e0081b0:	e1a03004 	mov	r3, r4
 e0081b4:	e1a00004 	mov	r0, r4
 e0081b8:	e3072fc8 	movw	r2, #32712	; 0x7fc8
 e0081bc:	e3402e00 	movt	r2, #3584	; 0xe00
 e0081c0:	e30419b0 	movw	r1, #18864	; 0x49b0
 e0081c4:	e3401e01 	movt	r1, #3585	; 0xe01
 e0081c8:	eb0014fc 	bl	e00d5c0 <rtos_task_create>
 e0081cc:	e1500004 	cmp	r0, r4
 e0081d0:	1a000001 	bne	e0081dc <shell_init_ram+0x94>
 e0081d4:	e28dd008 	add	sp, sp, #8
 e0081d8:	e8bd8010 	pop	{r4, pc}
 e0081dc:	e30409bc 	movw	r0, #18876	; 0x49bc
 e0081e0:	e3400e01 	movt	r0, #3585	; 0xe01
 e0081e4:	e28dd008 	add	sp, sp, #8
 e0081e8:	e8bd4010 	pop	{r4, lr}
 e0081ec:	ea002cf4 	b	e0135c4 <DiagPrintf>

0e0081f0 <shell_array_init>:
 e0081f0:	e3510000 	cmp	r1, #0
 e0081f4:	012fff1e 	bxeq	lr
 e0081f8:	e2411001 	sub	r1, r1, #1
 e0081fc:	e2403001 	sub	r3, r0, #1
 e008200:	e6e00071 	uxtab	r0, r0, r1
 e008204:	e5e32001 	strb	r2, [r3, #1]!
 e008208:	e1530000 	cmp	r3, r0
 e00820c:	1afffffc 	bne	e008204 <shell_array_init+0x14>
 e008210:	e12fff1e 	bx	lr

0e008214 <shell_get_argc>:
 e008214:	e1a03000 	mov	r3, r0
 e008218:	e5d00000 	ldrb	r0, [r0]
 e00821c:	e3500000 	cmp	r0, #0
 e008220:	012fff1e 	bxeq	lr
 e008224:	e3a02000 	mov	r2, #0
 e008228:	ea000001 	b	e008234 <shell_get_argc+0x20>
 e00822c:	e3500000 	cmp	r0, #0
 e008230:	0a00000d 	beq	e00826c <shell_get_argc+0x58>
 e008234:	e3500020 	cmp	r0, #32
 e008238:	05d30001 	ldrbeq	r0, [r3, #1]
 e00823c:	02833001 	addeq	r3, r3, #1
 e008240:	0afffff9 	beq	e00822c <shell_get_argc+0x18>
 e008244:	e5d30000 	ldrb	r0, [r3]
 e008248:	e2822001 	add	r2, r2, #1
 e00824c:	e31000df 	tst	r0, #223	; 0xdf
 e008250:	e6ff2072 	uxth	r2, r2
 e008254:	0afffff4 	beq	e00822c <shell_get_argc+0x18>
 e008258:	e5f30001 	ldrb	r0, [r3, #1]!
 e00825c:	e31000df 	tst	r0, #223	; 0xdf
 e008260:	1afffffc 	bne	e008258 <shell_get_argc+0x44>
 e008264:	e3500000 	cmp	r0, #0
 e008268:	1afffff1 	bne	e008234 <shell_get_argc+0x20>
 e00826c:	e352000f 	cmp	r2, #15
 e008270:	31a00002 	movcc	r0, r2
 e008274:	23a0000f 	movcs	r0, #15
 e008278:	e6ef0070 	uxtb	r0, r0
 e00827c:	e12fff1e 	bx	lr

0e008280 <shell_get_argv>:
 e008280:	e59f3080 	ldr	r3, [pc, #128]	; e008308 <shell_get_argv+0x88>
 e008284:	e3a01000 	mov	r1, #0
 e008288:	e2832001 	add	r2, r3, #1
 e00828c:	e283c040 	add	ip, r3, #64	; 0x40
 e008290:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e008294:	e5e31001 	strb	r1, [r3, #1]!
 e008298:	e153000c 	cmp	r3, ip
 e00829c:	1afffffc 	bne	e008294 <shell_get_argv+0x14>
 e0082a0:	e59fe064 	ldr	lr, [pc, #100]	; e00830c <shell_get_argv+0x8c>
 e0082a4:	e3a0c000 	mov	ip, #0
 e0082a8:	e5d03000 	ldrb	r3, [r0]
 e0082ac:	e3530000 	cmp	r3, #0
 e0082b0:	0a000011 	beq	e0082fc <shell_get_argv+0x7c>
 e0082b4:	e4820004 	str	r0, [r2], #4
 e0082b8:	e5d03000 	ldrb	r3, [r0]
 e0082bc:	e31300df 	tst	r3, #223	; 0xdf
 e0082c0:	0a000002 	beq	e0082d0 <shell_get_argv+0x50>
 e0082c4:	e5f03001 	ldrb	r3, [r0, #1]!
 e0082c8:	e31300df 	tst	r3, #223	; 0xdf
 e0082cc:	1afffffc 	bne	e0082c4 <shell_get_argv+0x44>
 e0082d0:	e1a03000 	mov	r3, r0
 e0082d4:	e4c3c001 	strb	ip, [r3], #1
 e0082d8:	e5d01001 	ldrb	r1, [r0, #1]
 e0082dc:	e1a00003 	mov	r0, r3
 e0082e0:	e3510020 	cmp	r1, #32
 e0082e4:	1a000002 	bne	e0082f4 <shell_get_argv+0x74>
 e0082e8:	e5f03001 	ldrb	r3, [r0, #1]!
 e0082ec:	e3530020 	cmp	r3, #32
 e0082f0:	0afffffc 	beq	e0082e8 <shell_get_argv+0x68>
 e0082f4:	e15e0002 	cmp	lr, r2
 e0082f8:	1affffea 	bne	e0082a8 <shell_get_argv+0x28>
 e0082fc:	e3030168 	movw	r0, #12648	; 0x3168
 e008300:	e346000a 	movt	r0, #24586	; 0x600a
 e008304:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
 e008308:	600a3167 	.word	0x600a3167
 e00830c:	600a31a8 	.word	0x600a31a8

0e008310 <shell_init_rom>:
 e008310:	e92d4030 	push	{r4, r5, lr}
 e008314:	e303e1a8 	movw	lr, #12712	; 0x31a8
 e008318:	e346e00a 	movt	lr, #24586	; 0x600a
 e00831c:	e24dd00c 	sub	sp, sp, #12
 e008320:	e1a05000 	mov	r5, r0
 e008324:	e1a0300e 	mov	r3, lr
 e008328:	e28ec07f 	add	ip, lr, #127	; 0x7f
 e00832c:	e3a02000 	mov	r2, #0
 e008330:	e5ce2000 	strb	r2, [lr]
 e008334:	e5e32001 	strb	r2, [r3, #1]!
 e008338:	e153000c 	cmp	r3, ip
 e00833c:	1afffffc 	bne	e008334 <shell_init_rom+0x24>
 e008340:	e303324c 	movw	r3, #12876	; 0x324c
 e008344:	e346300a 	movt	r3, #24586	; 0x600a
 e008348:	e283c07f 	add	ip, r3, #127	; 0x7f
 e00834c:	e5c32000 	strb	r2, [r3]
 e008350:	e3a02000 	mov	r2, #0
 e008354:	e5e32001 	strb	r2, [r3, #1]!
 e008358:	e153000c 	cmp	r3, ip
 e00835c:	1afffffc 	bne	e008354 <shell_init_rom+0x44>
 e008360:	e3034228 	movw	r4, #12840	; 0x3228
 e008364:	e346400a 	movt	r4, #24586	; 0x600a
 e008368:	e30335c4 	movw	r3, #13764	; 0x35c4
 e00836c:	e3403e01 	movt	r3, #3585	; 0xe01
 e008370:	e5c42000 	strb	r2, [r4]
 e008374:	e3550000 	cmp	r5, #0
 e008378:	e5c42001 	strb	r2, [r4, #1]
 e00837c:	e5c42002 	strb	r2, [r4, #2]
 e008380:	e5c42003 	strb	r2, [r4, #3]
 e008384:	e5c42006 	strb	r2, [r4, #6]
 e008388:	e584e008 	str	lr, [r4, #8]
 e00838c:	e584300c 	str	r3, [r4, #12]
 e008390:	0a000007 	beq	e0083b4 <shell_init_rom+0xa4>
 e008394:	e5841010 	str	r1, [r4, #16]
 e008398:	e5845014 	str	r5, [r4, #20]
 e00839c:	e3a03000 	mov	r3, #0
 e0083a0:	e5843020 	str	r3, [r4, #32]
 e0083a4:	e5c43004 	strb	r3, [r4, #4]
 e0083a8:	e5c43005 	strb	r3, [r4, #5]
 e0083ac:	e28dd00c 	add	sp, sp, #12
 e0083b0:	e8bd8030 	pop	{r4, r5, pc}
 e0083b4:	e28d0004 	add	r0, sp, #4
 e0083b8:	e3073f28 	movw	r3, #32552	; 0x7f28
 e0083bc:	e3403e00 	movt	r3, #3584	; 0xe00
 e0083c0:	e58d5004 	str	r5, [sp, #4]
 e0083c4:	e12fff33 	blx	r3
 e0083c8:	e59d3004 	ldr	r3, [sp, #4]
 e0083cc:	e5843010 	str	r3, [r4, #16]
 e0083d0:	e5840014 	str	r0, [r4, #20]
 e0083d4:	eafffff0 	b	e00839c <shell_init_rom+0x8c>

0e0083d8 <ipc_table_init>:
 e0083d8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e0083dc:	e3053fe0 	movw	r3, #24544	; 0x5fe0
 e0083e0:	e3403e01 	movt	r3, #3585	; 0xe01
 e0083e4:	e3054f8c 	movw	r4, #24460	; 0x5f8c
 e0083e8:	e3404e01 	movt	r4, #3585	; 0xe01
 e0083ec:	e0433004 	sub	r3, r3, r4
 e0083f0:	e3042925 	movw	r2, #18725	; 0x4925
 e0083f4:	e3422492 	movt	r2, #9362	; 0x2492
 e0083f8:	e1a07123 	lsr	r7, r3, #2
 e0083fc:	e24dd00c 	sub	sp, sp, #12
 e008400:	e353001b 	cmp	r3, #27
 e008404:	e0872792 	umull	r2, r7, r2, r7
 e008408:	9a00003b 	bls	e0084fc <ipc_table_init+0x124>
 e00840c:	e3a0ac86 	mov	sl, #34304	; 0x8600
 e008410:	e344a200 	movt	sl, #16896	; 0x4200
 e008414:	e30499d8 	movw	r9, #18904	; 0x49d8
 e008418:	e3409e01 	movt	r9, #3585	; 0xe01
 e00841c:	e3048a00 	movw	r8, #18944	; 0x4a00
 e008420:	e3408e01 	movt	r8, #3585	; 0xe01
 e008424:	e1a06000 	mov	r6, r0
 e008428:	e3a05000 	mov	r5, #0
 e00842c:	ea000014 	b	e008484 <ipc_table_init+0xac>
 e008430:	e3a01c05 	mov	r1, #1280	; 0x500
 e008434:	e3441100 	movt	r1, #16640	; 0x4100
 e008438:	e1560001 	cmp	r6, r1
 e00843c:	0a00001c 	beq	e0084b4 <ipc_table_init+0xdc>
 e008440:	e3520000 	cmp	r2, #0
 e008444:	13530020 	cmpne	r3, #32
 e008448:	1a000000 	bne	e008450 <ipc_table_init+0x78>
 e00844c:	e28bb008 	add	fp, fp, #8
 e008450:	e1a00006 	mov	r0, r6
 e008454:	eb00016e 	bl	e008a14 <IPC_IERGet>
 e008458:	e3a03001 	mov	r3, #1
 e00845c:	e0103b13 	ands	r3, r0, r3, lsl fp
 e008460:	1a00002d 	bne	e00851c <ipc_table_init+0x144>
 e008464:	e1c420dc 	ldrd	r2, [r4, #12]
 e008468:	e6ef107b 	uxtb	r1, fp
 e00846c:	e1a00006 	mov	r0, r6
 e008470:	eb000183 	bl	e008a84 <IPC_INTUserHandler>
 e008474:	e2855001 	add	r5, r5, #1
 e008478:	e284401c 	add	r4, r4, #28
 e00847c:	e1570005 	cmp	r7, r5
 e008480:	9a00001d 	bls	e0084fc <ipc_table_init+0x124>
 e008484:	e5943014 	ldr	r3, [r4, #20]
 e008488:	e594b018 	ldr	fp, [r4, #24]
 e00848c:	e3c32010 	bic	r2, r3, #16
 e008490:	e3530021 	cmp	r3, #33	; 0x21
 e008494:	13530000 	cmpne	r3, #0
 e008498:	0affffe4 	beq	e008430 <ipc_table_init+0x58>
 e00849c:	e3520001 	cmp	r2, #1
 e0084a0:	1a000017 	bne	e008504 <ipc_table_init+0x12c>
 e0084a4:	e3a02d16 	mov	r2, #1408	; 0x580
 e0084a8:	e3442100 	movt	r2, #16640	; 0x4100
 e0084ac:	e1560002 	cmp	r6, r2
 e0084b0:	1affffe6 	bne	e008450 <ipc_table_init+0x78>
 e0084b4:	e3530010 	cmp	r3, #16
 e0084b8:	13530001 	cmpne	r3, #1
 e0084bc:	93a03018 	movls	r3, #24
 e0084c0:	83a03010 	movhi	r3, #16
 e0084c4:	e1a00006 	mov	r0, r6
 e0084c8:	e08bb003 	add	fp, fp, r3
 e0084cc:	eb000150 	bl	e008a14 <IPC_IERGet>
 e0084d0:	e3a03001 	mov	r3, #1
 e0084d4:	e0103b13 	ands	r3, r0, r3, lsl fp
 e0084d8:	1a00000f 	bne	e00851c <ipc_table_init+0x144>
 e0084dc:	e1c420d4 	ldrd	r2, [r4, #4]
 e0084e0:	e6ef107b 	uxtb	r1, fp
 e0084e4:	e1a00006 	mov	r0, r6
 e0084e8:	e2855001 	add	r5, r5, #1
 e0084ec:	eb000164 	bl	e008a84 <IPC_INTUserHandler>
 e0084f0:	e284401c 	add	r4, r4, #28
 e0084f4:	e1570005 	cmp	r7, r5
 e0084f8:	8affffe1 	bhi	e008484 <ipc_table_init+0xac>
 e0084fc:	e28dd00c 	add	sp, sp, #12
 e008500:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e008504:	e2432010 	sub	r2, r3, #16
 e008508:	e3d22010 	bics	r2, r2, #16
 e00850c:	1affffd8 	bne	e008474 <ipc_table_init+0x9c>
 e008510:	e156000a 	cmp	r6, sl
 e008514:	1affffcc 	bne	e00844c <ipc_table_init+0x74>
 e008518:	eaffffe5 	b	e0084b4 <ipc_table_init+0xdc>
 e00851c:	e1a03009 	mov	r3, r9
 e008520:	e3a02045 	mov	r2, #69	; 0x45
 e008524:	e1a01008 	mov	r1, r8
 e008528:	e3a00002 	mov	r0, #2
 e00852c:	e58db000 	str	fp, [sp]
 e008530:	eb0004dc 	bl	e0098a8 <rtk_log_write>
 e008534:	eaffffce 	b	e008474 <ipc_table_init+0x9c>

0e008538 <IPC_TXHandler>:
 e008538:	e3a03902 	mov	r3, #32768	; 0x8000
 e00853c:	e3443200 	movt	r3, #16896	; 0x4200
 e008540:	e92d4010 	push	{r4, lr}
 e008544:	e1a04002 	mov	r4, r2
 e008548:	e593027c 	ldr	r0, [r3, #636]	; 0x27c
 e00854c:	e7e10350 	ubfx	r0, r0, #6, #2
 e008550:	eb000159 	bl	e008abc <IPC_GetDevById>
 e008554:	e3a02000 	mov	r2, #0
 e008558:	e6ef1074 	uxtb	r1, r4
 e00855c:	eb000124 	bl	e0089f4 <IPC_INTConfig>
 e008560:	e30332cc 	movw	r3, #13004	; 0x32cc
 e008564:	e346300a 	movt	r3, #24586	; 0x600a
 e008568:	e7930104 	ldr	r0, [r3, r4, lsl #2]
 e00856c:	e3500000 	cmp	r0, #0
 e008570:	08bd8010 	popeq	{r4, pc}
 e008574:	e8bd4010 	pop	{r4, lr}
 e008578:	ea0013dc 	b	e00d4f0 <rtos_sema_give>

0e00857c <IPC_wait_idle>:
 e00857c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e008580:	e1a04000 	mov	r4, r0
 e008584:	e1a05001 	mov	r5, r1
 e008588:	eb0009ca 	bl	e00acb8 <CPU_InInterrupt>
 e00858c:	e3500000 	cmp	r0, #0
 e008590:	1a000015 	bne	e0085ec <IPC_wait_idle+0x70>
 e008594:	e3033398 	movw	r3, #13208	; 0x3398
 e008598:	e346300a 	movt	r3, #24586	; 0x600a
 e00859c:	e7933105 	ldr	r3, [r3, r5, lsl #2]
 e0085a0:	e3530000 	cmp	r3, #0
 e0085a4:	0a000010 	beq	e0085ec <IPC_wait_idle+0x70>
 e0085a8:	e30362cc 	movw	r6, #13004	; 0x32cc
 e0085ac:	e346600a 	movt	r6, #24586	; 0x600a
 e0085b0:	e7963105 	ldr	r3, [r6, r5, lsl #2]
 e0085b4:	e3530000 	cmp	r3, #0
 e0085b8:	0a000020 	beq	e008640 <IPC_wait_idle+0xc4>
 e0085bc:	e6ef7075 	uxtb	r7, r5
 e0085c0:	e3a02001 	mov	r2, #1
 e0085c4:	e1a01007 	mov	r1, r7
 e0085c8:	e1a00004 	mov	r0, r4
 e0085cc:	eb000108 	bl	e0089f4 <IPC_INTConfig>
 e0085d0:	e7960105 	ldr	r0, [r6, r5, lsl #2]
 e0085d4:	e3e01000 	mvn	r1, #0
 e0085d8:	eb00139b 	bl	e00d44c <rtos_sema_take>
 e0085dc:	e3500000 	cmp	r0, #0
 e0085e0:	1a000019 	bne	e00864c <IPC_wait_idle+0xd0>
 e0085e4:	e3a00000 	mov	r0, #0
 e0085e8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e0085ec:	e3a02001 	mov	r2, #1
 e0085f0:	e3093680 	movw	r3, #38528	; 0x9680
 e0085f4:	e3403098 	movt	r3, #152	; 0x98
 e0085f8:	e1a01512 	lsl	r1, r2, r5
 e0085fc:	ea000001 	b	e008608 <IPC_wait_idle+0x8c>
 e008600:	e2533001 	subs	r3, r3, #1
 e008604:	0a000004 	beq	e00861c <IPC_wait_idle+0xa0>
 e008608:	e5942000 	ldr	r2, [r4]
 e00860c:	e1120001 	tst	r2, r1
 e008610:	1afffffa 	bne	e008600 <IPC_wait_idle+0x84>
 e008614:	e3a00000 	mov	r0, #0
 e008618:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e00861c:	e3a02045 	mov	r2, #69	; 0x45
 e008620:	e3a00002 	mov	r0, #2
 e008624:	e3043a04 	movw	r3, #18948	; 0x4a04
 e008628:	e3403e01 	movt	r3, #3585	; 0xe01
 e00862c:	e3041a00 	movw	r1, #18944	; 0x4a00
 e008630:	e3401e01 	movt	r1, #3585	; 0xe01
 e008634:	eb0004cf 	bl	e009978 <rtk_log_write_nano>
 e008638:	e3a00002 	mov	r0, #2
 e00863c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e008640:	e0860105 	add	r0, r6, r5, lsl #2
 e008644:	eb001372 	bl	e00d414 <rtos_sema_create_binary>
 e008648:	eaffffdb 	b	e0085bc <IPC_wait_idle+0x40>
 e00864c:	e3a02045 	mov	r2, #69	; 0x45
 e008650:	e3a00002 	mov	r0, #2
 e008654:	e3043a1c 	movw	r3, #18972	; 0x4a1c
 e008658:	e3403e01 	movt	r3, #3585	; 0xe01
 e00865c:	e3041a00 	movw	r1, #18944	; 0x4a00
 e008660:	e3401e01 	movt	r1, #3585	; 0xe01
 e008664:	eb0004c3 	bl	e009978 <rtk_log_write_nano>
 e008668:	e1a00004 	mov	r0, r4
 e00866c:	e3a02000 	mov	r2, #0
 e008670:	e1a01007 	mov	r1, r7
 e008674:	eb0000de 	bl	e0089f4 <IPC_INTConfig>
 e008678:	e3a00003 	mov	r0, #3
 e00867c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0e008680 <ipc_send_message>:
 e008680:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e008684:	e3d03011 	bics	r3, r0, #17
 e008688:	e1a05000 	mov	r5, r0
 e00868c:	e1a04001 	mov	r4, r1
 e008690:	e1a08002 	mov	r8, r2
 e008694:	0a000002 	beq	e0086a4 <ipc_send_message+0x24>
 e008698:	e2403020 	sub	r3, r0, #32
 e00869c:	e3530001 	cmp	r3, #1
 e0086a0:	8a00003a 	bhi	e008790 <ipc_send_message+0x110>
 e0086a4:	e3540007 	cmp	r4, #7
 e0086a8:	8a000034 	bhi	e008780 <ipc_send_message+0x100>
 e0086ac:	e3550021 	cmp	r5, #33	; 0x21
 e0086b0:	83a06000 	movhi	r6, #0
 e0086b4:	93043af0 	movwls	r3, #19184	; 0x4af0
 e0086b8:	93042acc 	movwls	r2, #19148	; 0x4acc
 e0086bc:	93403e01 	movtls	r3, #3585	; 0xe01
 e0086c0:	93402e01 	movtls	r2, #3585	; 0xe01
 e0086c4:	81a01004 	movhi	r1, r4
 e0086c8:	97936105 	ldrls	r6, [r3, r5, lsl #2]
 e0086cc:	97d21005 	ldrbls	r1, [r2, r5]
 e0086d0:	e3a09001 	mov	r9, #1
 e0086d4:	90811004 	addls	r1, r1, r4
 e0086d8:	e5963000 	ldr	r3, [r6]
 e0086dc:	e1a07119 	lsl	r7, r9, r1
 e0086e0:	e1130007 	tst	r3, r7
 e0086e4:	1a00001f 	bne	e008768 <ipc_send_message+0xe8>
 e0086e8:	e3580000 	cmp	r8, #0
 e0086ec:	0a00001a 	beq	e00875c <ipc_send_message+0xdc>
 e0086f0:	e7e30255 	ubfx	r0, r5, #4, #4
 e0086f4:	e205500f 	and	r5, r5, #15
 e0086f8:	e0855080 	add	r5, r5, r0, lsl #1
 e0086fc:	e30f0d00 	movw	r0, #64768	; 0xfd00
 e008700:	e3420301 	movt	r0, #8961	; 0x2301
 e008704:	e0844185 	add	r4, r4, r5, lsl #3
 e008708:	e1a01008 	mov	r1, r8
 e00870c:	e0804204 	add	r4, r0, r4, lsl #4
 e008710:	e3a02010 	mov	r2, #16
 e008714:	e1a00004 	mov	r0, r4
 e008718:	e30c3794 	movw	r3, #51092	; 0xc794
 e00871c:	e3403e00 	movt	r3, #3584	; 0xe00
 e008720:	e12fff33 	blx	r3
 e008724:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
 e008728:	e3130004 	tst	r3, #4
 e00872c:	0a00000a 	beq	e00875c <ipc_send_message+0xdc>
 e008730:	e284300f 	add	r3, r4, #15
 e008734:	e3c3303f 	bic	r3, r3, #63	; 0x3f
 e008738:	e3c4003f 	bic	r0, r4, #63	; 0x3f
 e00873c:	e2833040 	add	r3, r3, #64	; 0x40
 e008740:	e1500003 	cmp	r0, r3
 e008744:	2a000003 	bcs	e008758 <ipc_send_message+0xd8>
 e008748:	ee070f3a 	mcr	15, 0, r0, cr7, cr10, {1}
 e00874c:	e2800040 	add	r0, r0, #64	; 0x40
 e008750:	e1530000 	cmp	r3, r0
 e008754:	8afffffb 	bhi	e008748 <ipc_send_message+0xc8>
 e008758:	f57ff05f 	dmb	sy
 e00875c:	e3a00000 	mov	r0, #0
 e008760:	e5867000 	str	r7, [r6]
 e008764:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e008768:	e1a00006 	mov	r0, r6
 e00876c:	ebffff82 	bl	e00857c <IPC_wait_idle>
 e008770:	e3500000 	cmp	r0, #0
 e008774:	0affffdb 	beq	e0086e8 <ipc_send_message+0x68>
 e008778:	e1a00009 	mov	r0, r9
 e00877c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e008780:	e3040a3c 	movw	r0, #19004	; 0x4a3c
 e008784:	e3400e01 	movt	r0, #3585	; 0xe01
 e008788:	e3a010b6 	mov	r1, #182	; 0xb6
 e00878c:	eb002bb6 	bl	e01366c <io_assert_failed>
 e008790:	e3040a3c 	movw	r0, #19004	; 0x4a3c
 e008794:	e3400e01 	movt	r0, #3585	; 0xe01
 e008798:	e3a010b5 	mov	r1, #181	; 0xb5
 e00879c:	eb002bb2 	bl	e01366c <io_assert_failed>

0e0087a0 <ipc_get_message>:
 e0087a0:	e200300f 	and	r3, r0, #15
 e0087a4:	e7e30250 	ubfx	r0, r0, #4, #4
 e0087a8:	e0833080 	add	r3, r3, r0, lsl #1
 e0087ac:	e30f0d00 	movw	r0, #64768	; 0xfd00
 e0087b0:	e3420301 	movt	r0, #8961	; 0x2301
 e0087b4:	e0811183 	add	r1, r1, r3, lsl #3
 e0087b8:	e0800201 	add	r0, r0, r1, lsl #4
 e0087bc:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
 e0087c0:	e3130004 	tst	r3, #4
 e0087c4:	012fff1e 	bxeq	lr
 e0087c8:	e280200f 	add	r2, r0, #15
 e0087cc:	e3c2203f 	bic	r2, r2, #63	; 0x3f
 e0087d0:	e3c0303f 	bic	r3, r0, #63	; 0x3f
 e0087d4:	e2822040 	add	r2, r2, #64	; 0x40
 e0087d8:	e1530002 	cmp	r3, r2
 e0087dc:	2a000003 	bcs	e0087f0 <ipc_get_message+0x50>
 e0087e0:	ee073f36 	mcr	15, 0, r3, cr7, cr6, {1}
 e0087e4:	e2833040 	add	r3, r3, #64	; 0x40
 e0087e8:	e1520003 	cmp	r2, r3
 e0087ec:	8afffffb 	bhi	e0087e0 <ipc_get_message+0x40>
 e0087f0:	f57ff05f 	dmb	sy
 e0087f4:	e12fff1e 	bx	lr

0e0087f8 <IPC_patch_function>:
 e0087f8:	e3032310 	movw	r2, #13072	; 0x3310
 e0087fc:	e346200a 	movt	r2, #24586	; 0x600a
 e008800:	e3033314 	movw	r3, #13076	; 0x3314
 e008804:	e346300a 	movt	r3, #24586	; 0x600a
 e008808:	e5820000 	str	r0, [r2]
 e00880c:	e5831000 	str	r1, [r3]
 e008810:	e12fff1e 	bx	lr

0e008814 <IPC_SEMTake>:
 e008814:	e350000f 	cmp	r0, #15
 e008818:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e00881c:	8a000049 	bhi	e008948 <IPC_SEMTake+0x134>
 e008820:	e3033310 	movw	r3, #13072	; 0x3310
 e008824:	e346300a 	movt	r3, #24586	; 0x600a
 e008828:	e1a08000 	mov	r8, r0
 e00882c:	e1a04001 	mov	r4, r1
 e008830:	e5933000 	ldr	r3, [r3]
 e008834:	e3530000 	cmp	r3, #0
 e008838:	0a000001 	beq	e008844 <IPC_SEMTake+0x30>
 e00883c:	e3a00009 	mov	r0, #9
 e008840:	e12fff33 	blx	r3
 e008844:	e30236b0 	movw	r3, #9904	; 0x26b0
 e008848:	e3403e01 	movt	r3, #3585	; 0xe01
 e00884c:	e12fff33 	blx	r3
 e008850:	e3500002 	cmp	r0, #2
 e008854:	9a000020 	bls	e0088dc <IPC_SEMTake+0xc8>
 e008858:	e30250f0 	movw	r5, #8432	; 0x20f0
 e00885c:	e3415080 	movt	r5, #4224	; 0x1080
 e008860:	e0885005 	add	r5, r8, r5
 e008864:	e1a05105 	lsl	r5, r5, #2
 e008868:	e5953000 	ldr	r3, [r5]
 e00886c:	e3530000 	cmp	r3, #0
 e008870:	0a000032 	beq	e008940 <IPC_SEMTake+0x12c>
 e008874:	e3540000 	cmp	r4, #0
 e008878:	0a00000e 	beq	e0088b8 <IPC_SEMTake+0xa4>
 e00887c:	e303630c 	movw	r6, #13068	; 0x330c
 e008880:	e346600a 	movt	r6, #24586	; 0x600a
 e008884:	ea000002 	b	e008894 <IPC_SEMTake+0x80>
 e008888:	e5953000 	ldr	r3, [r5]
 e00888c:	e3530000 	cmp	r3, #0
 e008890:	0a00002a 	beq	e008940 <IPC_SEMTake+0x12c>
 e008894:	e5963000 	ldr	r3, [r6]
 e008898:	e3530000 	cmp	r3, #0
 e00889c:	0a000001 	beq	e0088a8 <IPC_SEMTake+0x94>
 e0088a0:	e3a00001 	mov	r0, #1
 e0088a4:	e12fff33 	blx	r3
 e0088a8:	e3740001 	cmn	r4, #1
 e0088ac:	0afffff5 	beq	e008888 <IPC_SEMTake+0x74>
 e0088b0:	e2544001 	subs	r4, r4, #1
 e0088b4:	1afffff3 	bne	e008888 <IPC_SEMTake+0x74>
 e0088b8:	e3033314 	movw	r3, #13076	; 0x3314
 e0088bc:	e346300a 	movt	r3, #24586	; 0x600a
 e0088c0:	e5933000 	ldr	r3, [r3]
 e0088c4:	e3530000 	cmp	r3, #0
 e0088c8:	0a000001 	beq	e0088d4 <IPC_SEMTake+0xc0>
 e0088cc:	e3a00009 	mov	r0, #9
 e0088d0:	e12fff33 	blx	r3
 e0088d4:	e3a00000 	mov	r0, #0
 e0088d8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e0088dc:	e3a03001 	mov	r3, #1
 e0088e0:	e3a06c82 	mov	r6, #33280	; 0x8200
 e0088e4:	e3446200 	movt	r6, #16896	; 0x4200
 e0088e8:	e303730c 	movw	r7, #13068	; 0x330c
 e0088ec:	e346700a 	movt	r7, #24586	; 0x600a
 e0088f0:	e1a08813 	lsl	r8, r3, r8
 e0088f4:	ea000008 	b	e00891c <IPC_SEMTake+0x108>
 e0088f8:	e3540000 	cmp	r4, #0
 e0088fc:	0affffed 	beq	e0088b8 <IPC_SEMTake+0xa4>
 e008900:	e5973000 	ldr	r3, [r7]
 e008904:	e3530000 	cmp	r3, #0
 e008908:	0a000001 	beq	e008914 <IPC_SEMTake+0x100>
 e00890c:	e3a00001 	mov	r0, #1
 e008910:	e12fff33 	blx	r3
 e008914:	e2544001 	subs	r4, r4, #1
 e008918:	0affffe6 	beq	e0088b8 <IPC_SEMTake+0xa4>
 e00891c:	e1d63fb4 	ldrh	r3, [r6, #244]	; 0xf4
 e008920:	e1130008 	tst	r3, r8
 e008924:	e6ff3073 	uxth	r3, r3
 e008928:	1afffff2 	bne	e0088f8 <IPC_SEMTake+0xe4>
 e00892c:	e1833008 	orr	r3, r3, r8
 e008930:	e3a00001 	mov	r0, #1
 e008934:	e6ff3073 	uxth	r3, r3
 e008938:	e1c63fb4 	strh	r3, [r6, #244]	; 0xf4
 e00893c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e008940:	e3a00001 	mov	r0, #1
 e008944:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e008948:	e3040a3c 	movw	r0, #19004	; 0x4a3c
 e00894c:	e3400e01 	movt	r0, #3585	; 0xe01
 e008950:	e3001116 	movw	r1, #278	; 0x116
 e008954:	eb002b44 	bl	e01366c <io_assert_failed>

0e008958 <IPC_SEMFree>:
 e008958:	e350000f 	cmp	r0, #15
 e00895c:	e92d4010 	push	{r4, lr}
 e008960:	8a00001b 	bhi	e0089d4 <IPC_SEMFree+0x7c>
 e008964:	e30236b0 	movw	r3, #9904	; 0x26b0
 e008968:	e3403e01 	movt	r3, #3585	; 0xe01
 e00896c:	e1a04000 	mov	r4, r0
 e008970:	e12fff33 	blx	r3
 e008974:	e3500002 	cmp	r0, #2
 e008978:	8a00000e 	bhi	e0089b8 <IPC_SEMFree+0x60>
 e00897c:	e3a03c82 	mov	r3, #33280	; 0x8200
 e008980:	e3443200 	movt	r3, #16896	; 0x4200
 e008984:	e3a02001 	mov	r2, #1
 e008988:	e1d30fb4 	ldrh	r0, [r3, #244]	; 0xf4
 e00898c:	e1c04412 	bic	r4, r0, r2, lsl r4
 e008990:	e1c34fb4 	strh	r4, [r3, #244]	; 0xf4
 e008994:	e3033314 	movw	r3, #13076	; 0x3314
 e008998:	e346300a 	movt	r3, #24586	; 0x600a
 e00899c:	e5933000 	ldr	r3, [r3]
 e0089a0:	e3530000 	cmp	r3, #0
 e0089a4:	0a000001 	beq	e0089b0 <IPC_SEMFree+0x58>
 e0089a8:	e3a00009 	mov	r0, #9
 e0089ac:	e12fff33 	blx	r3
 e0089b0:	e3a00001 	mov	r0, #1
 e0089b4:	e8bd8010 	pop	{r4, pc}
 e0089b8:	e30230f0 	movw	r3, #8432	; 0x20f0
 e0089bc:	e3413080 	movt	r3, #4224	; 0x1080
 e0089c0:	e0843003 	add	r3, r4, r3
 e0089c4:	e3a02001 	mov	r2, #1
 e0089c8:	e1a03103 	lsl	r3, r3, #2
 e0089cc:	e5832000 	str	r2, [r3]
 e0089d0:	eaffffef 	b	e008994 <IPC_SEMFree+0x3c>
 e0089d4:	e3040a3c 	movw	r0, #19004	; 0x4a3c
 e0089d8:	e3400e01 	movt	r0, #3585	; 0xe01
 e0089dc:	e3a01f57 	mov	r1, #348	; 0x15c
 e0089e0:	eb002b21 	bl	e01366c <io_assert_failed>

0e0089e4 <IPC_SEMDelayStub>:
 e0089e4:	e303330c 	movw	r3, #13068	; 0x330c
 e0089e8:	e346300a 	movt	r3, #24586	; 0x600a
 e0089ec:	e5830000 	str	r0, [r3]
 e0089f0:	e12fff1e 	bx	lr

0e0089f4 <IPC_INTConfig>:
 e0089f4:	e3a03001 	mov	r3, #1
 e0089f8:	e3520001 	cmp	r2, #1
 e0089fc:	e1a03113 	lsl	r3, r3, r1
 e008a00:	e590100c 	ldr	r1, [r0, #12]
 e008a04:	01813003 	orreq	r3, r1, r3
 e008a08:	11c13003 	bicne	r3, r1, r3
 e008a0c:	e580300c 	str	r3, [r0, #12]
 e008a10:	e12fff1e 	bx	lr

0e008a14 <IPC_IERGet>:
 e008a14:	e590000c 	ldr	r0, [r0, #12]
 e008a18:	e12fff1e 	bx	lr

0e008a1c <IPC_INTHandler>:
 e008a1c:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e008a20:	e3039398 	movw	r9, #13208	; 0x3398
 e008a24:	e346900a 	movt	r9, #24586	; 0x600a
 e008a28:	e5906008 	ldr	r6, [r0, #8]
 e008a2c:	e303a318 	movw	sl, #13080	; 0x3318
 e008a30:	e346a00a 	movt	sl, #24586	; 0x600a
 e008a34:	e1a08000 	mov	r8, r0
 e008a38:	e3a04000 	mov	r4, #0
 e008a3c:	e3a07001 	mov	r7, #1
 e008a40:	e1a05417 	lsl	r5, r7, r4
 e008a44:	e1150006 	tst	r5, r6
 e008a48:	0a000008 	beq	e008a70 <IPC_INTHandler+0x54>
 e008a4c:	e7993104 	ldr	r3, [r9, r4, lsl #2]
 e008a50:	e1a02004 	mov	r2, r4
 e008a54:	e3530000 	cmp	r3, #0
 e008a58:	e1a01006 	mov	r1, r6
 e008a5c:	05885008 	streq	r5, [r8, #8]
 e008a60:	0a000002 	beq	e008a70 <IPC_INTHandler+0x54>
 e008a64:	e79a0104 	ldr	r0, [sl, r4, lsl #2]
 e008a68:	e12fff33 	blx	r3
 e008a6c:	e5885008 	str	r5, [r8, #8]
 e008a70:	e2844001 	add	r4, r4, #1
 e008a74:	e3540020 	cmp	r4, #32
 e008a78:	1afffff0 	bne	e008a40 <IPC_INTHandler+0x24>
 e008a7c:	e3a00000 	mov	r0, #0
 e008a80:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

0e008a84 <IPC_INTUserHandler>:
 e008a84:	e3520000 	cmp	r2, #0
 e008a88:	012fff1e 	bxeq	lr
 e008a8c:	e303c398 	movw	ip, #13208	; 0x3398
 e008a90:	e346c00a 	movt	ip, #24586	; 0x600a
 e008a94:	e351000f 	cmp	r1, #15
 e008a98:	e78c2101 	str	r2, [ip, r1, lsl #2]
 e008a9c:	e3032318 	movw	r2, #13080	; 0x3318
 e008aa0:	e346200a 	movt	r2, #24586	; 0x600a
 e008aa4:	e7823101 	str	r3, [r2, r1, lsl #2]
 e008aa8:	83a02001 	movhi	r2, #1
 e008aac:	8590300c 	ldrhi	r3, [r0, #12]
 e008ab0:	81831112 	orrhi	r1, r3, r2, lsl r1
 e008ab4:	8580100c 	strhi	r1, [r0, #12]
 e008ab8:	e12fff1e 	bx	lr

0e008abc <IPC_GetDevById>:
 e008abc:	e3500002 	cmp	r0, #2
 e008ac0:	8a00000c 	bhi	e008af8 <IPC_GetDevById+0x3c>
 e008ac4:	e1a03000 	mov	r3, r0
 e008ac8:	e3500001 	cmp	r0, #1
 e008acc:	0a000006 	beq	e008aec <IPC_GetDevById+0x30>
 e008ad0:	e3530002 	cmp	r3, #2
 e008ad4:	e3a02c86 	mov	r2, #34304	; 0x8600
 e008ad8:	e3442200 	movt	r2, #16896	; 0x4200
 e008adc:	e3a00d16 	mov	r0, #1408	; 0x580
 e008ae0:	e3440100 	movt	r0, #16640	; 0x4100
 e008ae4:	11a00002 	movne	r0, r2
 e008ae8:	e12fff1e 	bx	lr
 e008aec:	e3a00c05 	mov	r0, #1280	; 0x500
 e008af0:	e3440100 	movt	r0, #16640	; 0x4100
 e008af4:	e12fff1e 	bx	lr
 e008af8:	e3040b78 	movw	r0, #19320	; 0x4b78
 e008afc:	e3400e01 	movt	r0, #3585	; 0xe01
 e008b00:	e3a010bb 	mov	r1, #187	; 0xbb
 e008b04:	e92d4010 	push	{r4, lr}
 e008b08:	eb002ad7 	bl	e01366c <io_assert_failed>

0e008b0c <OTP_Read8.part.0>:
 e008b0c:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 e008b10:	e3045c08 	movw	r5, #19464	; 0x4c08
 e008b14:	e3405e01 	movt	r5, #3585	; 0xe01
 e008b18:	e3044c24 	movw	r4, #19492	; 0x4c24
 e008b1c:	e3404e01 	movt	r4, #3585	; 0xe01
 e008b20:	e24dd00c 	sub	sp, sp, #12
 e008b24:	e1a08000 	mov	r8, r0
 e008b28:	e1a09001 	mov	r9, r1
 e008b2c:	ea000000 	b	e008b34 <OTP_Read8.part.0+0x28>
 e008b30:	eb000390 	bl	e009978 <rtk_log_write_nano>
 e008b34:	e3a01ffa 	mov	r1, #1000	; 0x3e8
 e008b38:	e3a00002 	mov	r0, #2
 e008b3c:	ebffff34 	bl	e008814 <IPC_SEMTake>
 e008b40:	e1a0c000 	mov	ip, r0
 e008b44:	e1a03005 	mov	r3, r5
 e008b48:	e3a02045 	mov	r2, #69	; 0x45
 e008b4c:	e1a01004 	mov	r1, r4
 e008b50:	e3a00002 	mov	r0, #2
 e008b54:	e35c0001 	cmp	ip, #1
 e008b58:	1afffff4 	bne	e008b30 <OTP_Read8.part.0+0x24>
 e008b5c:	e3a03902 	mov	r3, #32768	; 0x8000
 e008b60:	e3443200 	movt	r3, #16896	; 0x4200
 e008b64:	e3a05442 	mov	r5, #1107296256	; 0x42000000
 e008b68:	e5932000 	ldr	r2, [r3]
 e008b6c:	e3120001 	tst	r2, #1
 e008b70:	05932000 	ldreq	r2, [r3]
 e008b74:	03822001 	orreq	r2, r2, #1
 e008b78:	05832000 	streq	r2, [r3]
 e008b7c:	e1a03408 	lsl	r3, r8, #8
 e008b80:	e5952014 	ldr	r2, [r5, #20]
 e008b84:	e3c224ff 	bic	r2, r2, #-16777216	; 0xff000000
 e008b88:	e5852014 	str	r2, [r5, #20]
 e008b8c:	e5853008 	str	r3, [r5, #8]
 e008b90:	e5953008 	ldr	r3, [r5, #8]
 e008b94:	e3530000 	cmp	r3, #0
 e008b98:	ba00000f 	blt	e008bdc <OTP_Read8.part.0+0xd0>
 e008b9c:	e30a6b38 	movw	r6, #43832	; 0xab38
 e008ba0:	e3406e00 	movt	r6, #3584	; 0xe00
 e008ba4:	e3a04000 	mov	r4, #0
 e008ba8:	e3047e20 	movw	r7, #20000	; 0x4e20
 e008bac:	ea000001 	b	e008bb8 <OTP_Read8.part.0+0xac>
 e008bb0:	e1540007 	cmp	r4, r7
 e008bb4:	0a000015 	beq	e008c10 <OTP_Read8.part.0+0x104>
 e008bb8:	e3a00005 	mov	r0, #5
 e008bbc:	e12fff36 	blx	r6
 e008bc0:	e5953008 	ldr	r3, [r5, #8]
 e008bc4:	e2844001 	add	r4, r4, #1
 e008bc8:	e3530000 	cmp	r3, #0
 e008bcc:	aafffff7 	bge	e008bb0 <OTP_Read8.part.0+0xa4>
 e008bd0:	e3043e20 	movw	r3, #20000	; 0x4e20
 e008bd4:	e1540003 	cmp	r4, r3
 e008bd8:	0a00000c 	beq	e008c10 <OTP_Read8.part.0+0x104>
 e008bdc:	e3a03442 	mov	r3, #1107296256	; 0x42000000
 e008be0:	e3a04000 	mov	r4, #0
 e008be4:	e5933008 	ldr	r3, [r3, #8]
 e008be8:	e5c93000 	strb	r3, [r9]
 e008bec:	e3a02442 	mov	r2, #1107296256	; 0x42000000
 e008bf0:	e3a00002 	mov	r0, #2
 e008bf4:	e5923014 	ldr	r3, [r2, #20]
 e008bf8:	e3c334ff 	bic	r3, r3, #-16777216	; 0xff000000
 e008bfc:	e5823014 	str	r3, [r2, #20]
 e008c00:	ebffff54 	bl	e008958 <IPC_SEMFree>
 e008c04:	e1a00004 	mov	r0, r4
 e008c08:	e28dd00c 	add	sp, sp, #12
 e008c0c:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
 e008c10:	e3e04000 	mvn	r4, #0
 e008c14:	e3a02045 	mov	r2, #69	; 0x45
 e008c18:	e5c94000 	strb	r4, [r9]
 e008c1c:	e3a00002 	mov	r0, #2
 e008c20:	e58d8000 	str	r8, [sp]
 e008c24:	e3043c28 	movw	r3, #19496	; 0x4c28
 e008c28:	e3403e01 	movt	r3, #3585	; 0xe01
 e008c2c:	e3041c24 	movw	r1, #19492	; 0x4c24
 e008c30:	e3401e01 	movt	r1, #3585	; 0xe01
 e008c34:	eb00034f 	bl	e009978 <rtk_log_write_nano>
 e008c38:	eaffffeb 	b	e008bec <OTP_Read8.part.0+0xe0>

0e008c3c <OTP_Read32.isra.0>:
 e008c3c:	e92d4070 	push	{r4, r5, r6, lr}
 e008c40:	e3a03000 	mov	r3, #0
 e008c44:	e24dd008 	sub	sp, sp, #8
 e008c48:	e1a06001 	mov	r6, r1
 e008c4c:	e1a04000 	mov	r4, r0
 e008c50:	e1a05003 	mov	r5, r3
 e008c54:	e5813000 	str	r3, [r1]
 e008c58:	e1a00004 	mov	r0, r4
 e008c5c:	e28d1007 	add	r1, sp, #7
 e008c60:	e3540b02 	cmp	r4, #2048	; 0x800
 e008c64:	2a00000a 	bcs	e008c94 <OTP_Read32.isra.0+0x58>
 e008c68:	ebffffa7 	bl	e008b0c <OTP_Read8.part.0>
 e008c6c:	e3700001 	cmn	r0, #1
 e008c70:	0a000007 	beq	e008c94 <OTP_Read32.isra.0+0x58>
 e008c74:	e5963000 	ldr	r3, [r6]
 e008c78:	e5dd2007 	ldrb	r2, [sp, #7]
 e008c7c:	e2844001 	add	r4, r4, #1
 e008c80:	e1833512 	orr	r3, r3, r2, lsl r5
 e008c84:	e2855008 	add	r5, r5, #8
 e008c88:	e3550020 	cmp	r5, #32
 e008c8c:	e5863000 	str	r3, [r6]
 e008c90:	1afffff0 	bne	e008c58 <OTP_Read32.isra.0+0x1c>
 e008c94:	e28dd008 	add	sp, sp, #8
 e008c98:	e8bd8070 	pop	{r4, r5, r6, pc}

0e008c9c <OTP_ProgramMarginRead8.part.0>:
 e008c9c:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 e008ca0:	e3045c08 	movw	r5, #19464	; 0x4c08
 e008ca4:	e3405e01 	movt	r5, #3585	; 0xe01
 e008ca8:	e3044c24 	movw	r4, #19492	; 0x4c24
 e008cac:	e3404e01 	movt	r4, #3585	; 0xe01
 e008cb0:	e24dd00c 	sub	sp, sp, #12
 e008cb4:	e1a08000 	mov	r8, r0
 e008cb8:	e1a09001 	mov	r9, r1
 e008cbc:	ea000000 	b	e008cc4 <OTP_ProgramMarginRead8.part.0+0x28>
 e008cc0:	eb00032c 	bl	e009978 <rtk_log_write_nano>
 e008cc4:	e3a01ffa 	mov	r1, #1000	; 0x3e8
 e008cc8:	e3a00002 	mov	r0, #2
 e008ccc:	ebfffed0 	bl	e008814 <IPC_SEMTake>
 e008cd0:	e1a0c000 	mov	ip, r0
 e008cd4:	e1a03005 	mov	r3, r5
 e008cd8:	e3a02045 	mov	r2, #69	; 0x45
 e008cdc:	e1a01004 	mov	r1, r4
 e008ce0:	e3a00002 	mov	r0, #2
 e008ce4:	e35c0001 	cmp	ip, #1
 e008ce8:	1afffff4 	bne	e008cc0 <OTP_ProgramMarginRead8.part.0+0x24>
 e008cec:	e3a03902 	mov	r3, #32768	; 0x8000
 e008cf0:	e3443200 	movt	r3, #16896	; 0x4200
 e008cf4:	e3a05442 	mov	r5, #1107296256	; 0x42000000
 e008cf8:	e5932000 	ldr	r2, [r3]
 e008cfc:	e3120001 	tst	r2, #1
 e008d00:	05932000 	ldreq	r2, [r3]
 e008d04:	03822001 	orreq	r2, r2, #1
 e008d08:	05832000 	streq	r2, [r3]
 e008d0c:	e1a03408 	lsl	r3, r8, #8
 e008d10:	e5952014 	ldr	r2, [r5, #20]
 e008d14:	e3833601 	orr	r3, r3, #1048576	; 0x100000
 e008d18:	e3c224ff 	bic	r2, r2, #-16777216	; 0xff000000
 e008d1c:	e5852014 	str	r2, [r5, #20]
 e008d20:	e5853008 	str	r3, [r5, #8]
 e008d24:	e5953008 	ldr	r3, [r5, #8]
 e008d28:	e3530000 	cmp	r3, #0
 e008d2c:	ba00000f 	blt	e008d70 <OTP_ProgramMarginRead8.part.0+0xd4>
 e008d30:	e30a6b38 	movw	r6, #43832	; 0xab38
 e008d34:	e3406e00 	movt	r6, #3584	; 0xe00
 e008d38:	e3a04000 	mov	r4, #0
 e008d3c:	e3047e20 	movw	r7, #20000	; 0x4e20
 e008d40:	ea000001 	b	e008d4c <OTP_ProgramMarginRead8.part.0+0xb0>
 e008d44:	e1540007 	cmp	r4, r7
 e008d48:	0a000015 	beq	e008da4 <OTP_ProgramMarginRead8.part.0+0x108>
 e008d4c:	e3a00005 	mov	r0, #5
 e008d50:	e12fff36 	blx	r6
 e008d54:	e5953008 	ldr	r3, [r5, #8]
 e008d58:	e2844001 	add	r4, r4, #1
 e008d5c:	e3530000 	cmp	r3, #0
 e008d60:	aafffff7 	bge	e008d44 <OTP_ProgramMarginRead8.part.0+0xa8>
 e008d64:	e3043e20 	movw	r3, #20000	; 0x4e20
 e008d68:	e1540003 	cmp	r4, r3
 e008d6c:	0a00000c 	beq	e008da4 <OTP_ProgramMarginRead8.part.0+0x108>
 e008d70:	e3a03442 	mov	r3, #1107296256	; 0x42000000
 e008d74:	e3a04000 	mov	r4, #0
 e008d78:	e5933008 	ldr	r3, [r3, #8]
 e008d7c:	e5c93000 	strb	r3, [r9]
 e008d80:	e3a02442 	mov	r2, #1107296256	; 0x42000000
 e008d84:	e3a00002 	mov	r0, #2
 e008d88:	e5923014 	ldr	r3, [r2, #20]
 e008d8c:	e3c334ff 	bic	r3, r3, #-16777216	; 0xff000000
 e008d90:	e5823014 	str	r3, [r2, #20]
 e008d94:	ebfffeef 	bl	e008958 <IPC_SEMFree>
 e008d98:	e1a00004 	mov	r0, r4
 e008d9c:	e28dd00c 	add	sp, sp, #12
 e008da0:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
 e008da4:	e3e04000 	mvn	r4, #0
 e008da8:	e3a02045 	mov	r2, #69	; 0x45
 e008dac:	e5c94000 	strb	r4, [r9]
 e008db0:	e3a00002 	mov	r0, #2
 e008db4:	e58d8000 	str	r8, [sp]
 e008db8:	e3043c28 	movw	r3, #19496	; 0x4c28
 e008dbc:	e3403e01 	movt	r3, #3585	; 0xe01
 e008dc0:	e3041c24 	movw	r1, #19492	; 0x4c24
 e008dc4:	e3401e01 	movt	r1, #3585	; 0xe01
 e008dc8:	eb0002ea 	bl	e009978 <rtk_log_write_nano>
 e008dcc:	eaffffeb 	b	e008d80 <OTP_ProgramMarginRead8.part.0+0xe4>

0e008dd0 <OTPGetCRC>:
 e008dd0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e008dd4:	e3a05442 	mov	r5, #1107296256	; 0x42000000
 e008dd8:	e3a03101 	mov	r3, #1073741824	; 0x40000000
 e008ddc:	e5853034 	str	r3, [r5, #52]	; 0x34
 e008de0:	e5954000 	ldr	r4, [r5]
 e008de4:	e2144002 	ands	r4, r4, #2
 e008de8:	1a00000b 	bne	e008e1c <OTPGetCRC+0x4c>
 e008dec:	e30a6b38 	movw	r6, #43832	; 0xab38
 e008df0:	e3406e00 	movt	r6, #3584	; 0xe00
 e008df4:	e3047e20 	movw	r7, #20000	; 0x4e20
 e008df8:	e3a00001 	mov	r0, #1
 e008dfc:	e12fff36 	blx	r6
 e008e00:	e5953000 	ldr	r3, [r5]
 e008e04:	e2844001 	add	r4, r4, #1
 e008e08:	e0542007 	subs	r2, r4, r7
 e008e0c:	e2233002 	eor	r3, r3, #2
 e008e10:	13a02001 	movne	r2, #1
 e008e14:	e01230a3 	ands	r3, r2, r3, lsr #1
 e008e18:	1afffff6 	bne	e008df8 <OTPGetCRC+0x28>
 e008e1c:	e3a03442 	mov	r3, #1107296256	; 0x42000000
 e008e20:	e3e02101 	mvn	r2, #1073741824	; 0x40000000
 e008e24:	e5930030 	ldr	r0, [r3, #48]	; 0x30
 e008e28:	e5832034 	str	r2, [r3, #52]	; 0x34
 e008e2c:	e1a00820 	lsr	r0, r0, #16
 e008e30:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0e008e34 <OTP_Read8>:
 e008e34:	e3500b02 	cmp	r0, #2048	; 0x800
 e008e38:	2a000000 	bcs	e008e40 <OTP_Read8+0xc>
 e008e3c:	eaffff32 	b	e008b0c <OTP_Read8.part.0>
 e008e40:	e3e00000 	mvn	r0, #0
 e008e44:	e5c10000 	strb	r0, [r1]
 e008e48:	e12fff1e 	bx	lr

0e008e4c <OTP_Write8>:
 e008e4c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e008e50:	e3500b02 	cmp	r0, #2048	; 0x800
 e008e54:	e24dd024 	sub	sp, sp, #36	; 0x24
 e008e58:	23e03000 	mvncs	r3, #0
 e008e5c:	e1cd00f8 	strd	r0, [sp, #8]
 e008e60:	25cd301f 	strbcs	r3, [sp, #31]
 e008e64:	2a00007f 	bcs	e009068 <OTP_Write8+0x21c>
 e008e68:	e28d101f 	add	r1, sp, #31
 e008e6c:	ebffff8a 	bl	e008c9c <OTP_ProgramMarginRead8.part.0>
 e008e70:	e3700001 	cmn	r0, #1
 e008e74:	0a00007b 	beq	e009068 <OTP_Write8+0x21c>
 e008e78:	e59d2008 	ldr	r2, [sp, #8]
 e008e7c:	e5dd301f 	ldrb	r3, [sp, #31]
 e008e80:	e59d900c 	ldr	r9, [sp, #12]
 e008e84:	e3a0b902 	mov	fp, #32768	; 0x8000
 e008e88:	e344b200 	movt	fp, #16896	; 0x4200
 e008e8c:	e3048c50 	movw	r8, #19536	; 0x4c50
 e008e90:	e3408e01 	movt	r8, #3585	; 0xe01
 e008e94:	e3047c24 	movw	r7, #19492	; 0x4c24
 e008e98:	e3407e01 	movt	r7, #3585	; 0xe01
 e008e9c:	e1a02402 	lsl	r2, r2, #8
 e008ea0:	e58d2014 	str	r2, [sp, #20]
 e008ea4:	e3a02002 	mov	r2, #2
 e008ea8:	e58d2010 	str	r2, [sp, #16]
 e008eac:	e1e03003 	mvn	r3, r3
 e008eb0:	e1839009 	orr	r9, r3, r9
 e008eb4:	e6ef9079 	uxtb	r9, r9
 e008eb8:	e35900ff 	cmp	r9, #255	; 0xff
 e008ebc:	1a000001 	bne	e008ec8 <OTP_Write8+0x7c>
 e008ec0:	ea000030 	b	e008f88 <OTP_Write8+0x13c>
 e008ec4:	eb0002ab 	bl	e009978 <rtk_log_write_nano>
 e008ec8:	e3a01ffa 	mov	r1, #1000	; 0x3e8
 e008ecc:	e3a00002 	mov	r0, #2
 e008ed0:	ebfffe4f 	bl	e008814 <IPC_SEMTake>
 e008ed4:	e1a0c000 	mov	ip, r0
 e008ed8:	e1a03008 	mov	r3, r8
 e008edc:	e3a02045 	mov	r2, #69	; 0x45
 e008ee0:	e1a01007 	mov	r1, r7
 e008ee4:	e3a00002 	mov	r0, #2
 e008ee8:	e35c0001 	cmp	ip, #1
 e008eec:	1afffff4 	bne	e008ec4 <OTP_Write8+0x78>
 e008ef0:	e59b3000 	ldr	r3, [fp]
 e008ef4:	e3a04442 	mov	r4, #1107296256	; 0x42000000
 e008ef8:	e3130001 	tst	r3, #1
 e008efc:	059b3000 	ldreq	r3, [fp]
 e008f00:	03833001 	orreq	r3, r3, #1
 e008f04:	058b3000 	streq	r3, [fp]
 e008f08:	e59d3014 	ldr	r3, [sp, #20]
 e008f0c:	e5942014 	ldr	r2, [r4, #20]
 e008f10:	e1893003 	orr	r3, r9, r3
 e008f14:	e3833102 	orr	r3, r3, #-2147483648	; 0x80000000
 e008f18:	e3822469 	orr	r2, r2, #1761607680	; 0x69000000
 e008f1c:	e5842014 	str	r2, [r4, #20]
 e008f20:	e5843008 	str	r3, [r4, #8]
 e008f24:	e5943008 	ldr	r3, [r4, #8]
 e008f28:	e3530000 	cmp	r3, #0
 e008f2c:	b3a0a000 	movlt	sl, #0
 e008f30:	b30a5b38 	movwlt	r5, #43832	; 0xab38
 e008f34:	b3046e20 	movwlt	r6, #20000	; 0x4e20
 e008f38:	b3405e00 	movtlt	r5, #3584	; 0xe00
 e008f3c:	ba000002 	blt	e008f4c <OTP_Write8+0x100>
 e008f40:	ea00000a 	b	e008f70 <OTP_Write8+0x124>
 e008f44:	e15a0006 	cmp	sl, r6
 e008f48:	0a000021 	beq	e008fd4 <OTP_Write8+0x188>
 e008f4c:	e3a00005 	mov	r0, #5
 e008f50:	e12fff35 	blx	r5
 e008f54:	e5943008 	ldr	r3, [r4, #8]
 e008f58:	e28aa001 	add	sl, sl, #1
 e008f5c:	e3530000 	cmp	r3, #0
 e008f60:	bafffff7 	blt	e008f44 <OTP_Write8+0xf8>
 e008f64:	e3042e20 	movw	r2, #20000	; 0x4e20
 e008f68:	e15a0002 	cmp	sl, r2
 e008f6c:	0a000018 	beq	e008fd4 <OTP_Write8+0x188>
 e008f70:	e3a02442 	mov	r2, #1107296256	; 0x42000000
 e008f74:	e3a00002 	mov	r0, #2
 e008f78:	e5923014 	ldr	r3, [r2, #20]
 e008f7c:	e3c334ff 	bic	r3, r3, #-16777216	; 0xff000000
 e008f80:	e5823014 	str	r3, [r2, #20]
 e008f84:	ebfffe73 	bl	e008958 <IPC_SEMFree>
 e008f88:	e59d0008 	ldr	r0, [sp, #8]
 e008f8c:	e28d101f 	add	r1, sp, #31
 e008f90:	ebffff41 	bl	e008c9c <OTP_ProgramMarginRead8.part.0>
 e008f94:	e3700001 	cmn	r0, #1
 e008f98:	0a000027 	beq	e00903c <OTP_Write8+0x1f0>
 e008f9c:	e5dd301f 	ldrb	r3, [sp, #31]
 e008fa0:	e59d200c 	ldr	r2, [sp, #12]
 e008fa4:	e1530002 	cmp	r3, r2
 e008fa8:	0a00002c 	beq	e009060 <OTP_Write8+0x214>
 e008fac:	e59d2010 	ldr	r2, [sp, #16]
 e008fb0:	e3520001 	cmp	r2, #1
 e008fb4:	1a000003 	bne	e008fc8 <OTP_Write8+0x17c>
 e008fb8:	e3e04000 	mvn	r4, #0
 e008fbc:	e1a00004 	mov	r0, r4
 e008fc0:	e28dd024 	add	sp, sp, #36	; 0x24
 e008fc4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e008fc8:	e3a02001 	mov	r2, #1
 e008fcc:	e58d2010 	str	r2, [sp, #16]
 e008fd0:	eaffffb5 	b	e008eac <OTP_Write8+0x60>
 e008fd4:	e59d3008 	ldr	r3, [sp, #8]
 e008fd8:	e58d3000 	str	r3, [sp]
 e008fdc:	e3a02045 	mov	r2, #69	; 0x45
 e008fe0:	e3a00002 	mov	r0, #2
 e008fe4:	e3043c6c 	movw	r3, #19564	; 0x4c6c
 e008fe8:	e3403e01 	movt	r3, #3585	; 0xe01
 e008fec:	e3041c24 	movw	r1, #19492	; 0x4c24
 e008ff0:	e3401e01 	movt	r1, #3585	; 0xe01
 e008ff4:	eb00025f 	bl	e009978 <rtk_log_write_nano>
 e008ff8:	e3a02442 	mov	r2, #1107296256	; 0x42000000
 e008ffc:	e3a00002 	mov	r0, #2
 e009000:	e3e04000 	mvn	r4, #0
 e009004:	e5923014 	ldr	r3, [r2, #20]
 e009008:	e3c334ff 	bic	r3, r3, #-16777216	; 0xff000000
 e00900c:	e5823014 	str	r3, [r2, #20]
 e009010:	ebfffe50 	bl	e008958 <IPC_SEMFree>
 e009014:	e3a02045 	mov	r2, #69	; 0x45
 e009018:	e3a00002 	mov	r0, #2
 e00901c:	e3043c84 	movw	r3, #19588	; 0x4c84
 e009020:	e3403e01 	movt	r3, #3585	; 0xe01
 e009024:	e3041c24 	movw	r1, #19492	; 0x4c24
 e009028:	e3401e01 	movt	r1, #3585	; 0xe01
 e00902c:	eb000251 	bl	e009978 <rtk_log_write_nano>
 e009030:	e1a00004 	mov	r0, r4
 e009034:	e28dd024 	add	sp, sp, #36	; 0x24
 e009038:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00903c:	e1a04000 	mov	r4, r0
 e009040:	e3a02045 	mov	r2, #69	; 0x45
 e009044:	e3a00002 	mov	r0, #2
 e009048:	e3043c98 	movw	r3, #19608	; 0x4c98
 e00904c:	e3403e01 	movt	r3, #3585	; 0xe01
 e009050:	e3041c24 	movw	r1, #19492	; 0x4c24
 e009054:	e3401e01 	movt	r1, #3585	; 0xe01
 e009058:	eb000246 	bl	e009978 <rtk_log_write_nano>
 e00905c:	eaffffd6 	b	e008fbc <OTP_Write8+0x170>
 e009060:	e3a04000 	mov	r4, #0
 e009064:	eaffffd4 	b	e008fbc <OTP_Write8+0x170>
 e009068:	e3a02045 	mov	r2, #69	; 0x45
 e00906c:	e3a00002 	mov	r0, #2
 e009070:	e3043c3c 	movw	r3, #19516	; 0x4c3c
 e009074:	e3403e01 	movt	r3, #3585	; 0xe01
 e009078:	e3041c24 	movw	r1, #19492	; 0x4c24
 e00907c:	e3401e01 	movt	r1, #3585	; 0xe01
 e009080:	e3e04000 	mvn	r4, #0
 e009084:	eb00023b 	bl	e009978 <rtk_log_write_nano>
 e009088:	eaffffcb 	b	e008fbc <OTP_Write8+0x170>

0e00908c <OTP_LogicalMap_Read>:
 e00908c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e009090:	e0817002 	add	r7, r1, r2
 e009094:	e24dd01c 	sub	sp, sp, #28
 e009098:	e1a06001 	mov	r6, r1
 e00909c:	e3570b01 	cmp	r7, #1024	; 0x400
 e0090a0:	e58d0008 	str	r0, [sp, #8]
 e0090a4:	8a000059 	bhi	e009210 <OTP_LogicalMap_Read+0x184>
 e0090a8:	e59d3008 	ldr	r3, [sp, #8]
 e0090ac:	e3a04000 	mov	r4, #0
 e0090b0:	e0433001 	sub	r3, r3, r1
 e0090b4:	e3a010ff 	mov	r1, #255	; 0xff
 e0090b8:	e58d300c 	str	r3, [sp, #12]
 e0090bc:	e30c3630 	movw	r3, #50736	; 0xc630
 e0090c0:	e3403e00 	movt	r3, #3584	; 0xe00
 e0090c4:	e3048cd8 	movw	r8, #19672	; 0x4cd8
 e0090c8:	e3408e01 	movt	r8, #3585	; 0xe01
 e0090cc:	e12fff33 	blx	r3
 e0090d0:	ea00000c 	b	e009108 <OTP_LogicalMap_Read+0x7c>
 e0090d4:	e3520002 	cmp	r2, #2
 e0090d8:	1a000006 	bne	e0090f8 <OTP_LogicalMap_Read+0x6c>
 e0090dc:	e7e39c53 	ubfx	r9, r3, #24, #4
 e0090e0:	e7e32653 	ubfx	r2, r3, #12, #4
 e0090e4:	e1a09109 	lsl	r9, r9, #2
 e0090e8:	e2899004 	add	r9, r9, #4
 e0090ec:	e3520007 	cmp	r2, #7
 e0090f0:	0a00002e 	beq	e0091b0 <OTP_LogicalMap_Read+0x124>
 e0090f4:	e0844009 	add	r4, r4, r9
 e0090f8:	e3140003 	tst	r4, #3
 e0090fc:	1a00001d 	bne	e009178 <OTP_LogicalMap_Read+0xec>
 e009100:	e3540f7f 	cmp	r4, #508	; 0x1fc
 e009104:	8a000026 	bhi	e0091a4 <OTP_LogicalMap_Read+0x118>
 e009108:	e28d1014 	add	r1, sp, #20
 e00910c:	e1a00004 	mov	r0, r4
 e009110:	ebfffec9 	bl	e008c3c <OTP_Read32.isra.0>
 e009114:	e59d3014 	ldr	r3, [sp, #20]
 e009118:	e3730001 	cmn	r3, #1
 e00911c:	0a000020 	beq	e0091a4 <OTP_LogicalMap_Read+0x118>
 e009120:	e1a02e23 	lsr	r2, r3, #28
 e009124:	e2844004 	add	r4, r4, #4
 e009128:	e3520001 	cmp	r2, #1
 e00912c:	1affffe8 	bne	e0090d4 <OTP_LogicalMap_Read+0x48>
 e009130:	e7e32653 	ubfx	r2, r3, #12, #4
 e009134:	e3520007 	cmp	r2, #7
 e009138:	1affffee 	bne	e0090f8 <OTP_LogicalMap_Read+0x6c>
 e00913c:	e7eb2053 	ubfx	r2, r3, #0, #12
 e009140:	e1570002 	cmp	r7, r2
 e009144:	83a01001 	movhi	r1, #1
 e009148:	93a01000 	movls	r1, #0
 e00914c:	e1560002 	cmp	r6, r2
 e009150:	83a01000 	movhi	r1, #0
 e009154:	e7e73853 	ubfx	r3, r3, #16, #8
 e009158:	e3510000 	cmp	r1, #0
 e00915c:	e5cd3013 	strb	r3, [sp, #19]
 e009160:	0affffe4 	beq	e0090f8 <OTP_LogicalMap_Read+0x6c>
 e009164:	e59d1008 	ldr	r1, [sp, #8]
 e009168:	e0422006 	sub	r2, r2, r6
 e00916c:	e3140003 	tst	r4, #3
 e009170:	e7c13002 	strb	r3, [r1, r2]
 e009174:	0affffe1 	beq	e009100 <OTP_LogicalMap_Read+0x74>
 e009178:	e59d0014 	ldr	r0, [sp, #20]
 e00917c:	e58d0004 	str	r0, [sp, #4]
 e009180:	e1a03008 	mov	r3, r8
 e009184:	e3a02045 	mov	r2, #69	; 0x45
 e009188:	e3a00002 	mov	r0, #2
 e00918c:	e3041c24 	movw	r1, #19492	; 0x4c24
 e009190:	e3401e01 	movt	r1, #3585	; 0xe01
 e009194:	e58d4000 	str	r4, [sp]
 e009198:	eb0001f6 	bl	e009978 <rtk_log_write_nano>
 e00919c:	e3540f7f 	cmp	r4, #508	; 0x1fc
 e0091a0:	9affffd8 	bls	e009108 <OTP_LogicalMap_Read+0x7c>
 e0091a4:	e3a00000 	mov	r0, #0
 e0091a8:	e28dd01c 	add	sp, sp, #28
 e0091ac:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e0091b0:	e7eb5053 	ubfx	r5, r3, #0, #12
 e0091b4:	e085a009 	add	sl, r5, r9
 e0091b8:	e1a0b004 	mov	fp, r4
 e0091bc:	e35b0b02 	cmp	fp, #2048	; 0x800
 e0091c0:	e1a0000b 	mov	r0, fp
 e0091c4:	23e03000 	mvncs	r3, #0
 e0091c8:	e28d1013 	add	r1, sp, #19
 e0091cc:	25cd3013 	strbcs	r3, [sp, #19]
 e0091d0:	2a000000 	bcs	e0091d8 <OTP_LogicalMap_Read+0x14c>
 e0091d4:	ebfffe4c 	bl	e008b0c <OTP_Read8.part.0>
 e0091d8:	e1560005 	cmp	r6, r5
 e0091dc:	93a03001 	movls	r3, #1
 e0091e0:	83a03000 	movhi	r3, #0
 e0091e4:	e1570005 	cmp	r7, r5
 e0091e8:	93a03000 	movls	r3, #0
 e0091ec:	e3530000 	cmp	r3, #0
 e0091f0:	e28bb001 	add	fp, fp, #1
 e0091f4:	159d200c 	ldrne	r2, [sp, #12]
 e0091f8:	15dd3013 	ldrbne	r3, [sp, #19]
 e0091fc:	17c23005 	strbne	r3, [r2, r5]
 e009200:	e2855001 	add	r5, r5, #1
 e009204:	e155000a 	cmp	r5, sl
 e009208:	1affffeb 	bne	e0091bc <OTP_LogicalMap_Read+0x130>
 e00920c:	eaffffb8 	b	e0090f4 <OTP_LogicalMap_Read+0x68>
 e009210:	e1a03002 	mov	r3, r2
 e009214:	e3a00002 	mov	r0, #2
 e009218:	e58d3004 	str	r3, [sp, #4]
 e00921c:	e58d1000 	str	r1, [sp]
 e009220:	e3a02045 	mov	r2, #69	; 0x45
 e009224:	e3043cac 	movw	r3, #19628	; 0x4cac
 e009228:	e3403e01 	movt	r3, #3585	; 0xe01
 e00922c:	e3041c24 	movw	r1, #19492	; 0x4c24
 e009230:	e3401e01 	movt	r1, #3585	; 0xe01
 e009234:	eb0001cf 	bl	e009978 <rtk_log_write_nano>
 e009238:	e3e00000 	mvn	r0, #0
 e00923c:	eaffffd9 	b	e0091a8 <OTP_LogicalMap_Read+0x11c>

0e009240 <OTP_LogicalMap_Write>:
 e009240:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e009244:	e1a03000 	mov	r3, r0
 e009248:	e24dd044 	sub	sp, sp, #68	; 0x44
 e00924c:	e0810000 	add	r0, r1, r0
 e009250:	e3500b01 	cmp	r0, #1024	; 0x400
 e009254:	e58d2014 	str	r2, [sp, #20]
 e009258:	8a00013f 	bhi	e00975c <OTP_LogicalMap_Write+0x51c>
 e00925c:	e3c3200f 	bic	r2, r3, #15
 e009260:	e1a04001 	mov	r4, r1
 e009264:	e203300f 	and	r3, r3, #15
 e009268:	e3510000 	cmp	r1, #0
 e00926c:	e58d2010 	str	r2, [sp, #16]
 e009270:	e58d3008 	str	r3, [sp, #8]
 e009274:	da000135 	ble	e009750 <OTP_LogicalMap_Write+0x510>
 e009278:	e304bc24 	movw	fp, #19492	; 0x4c24
 e00927c:	e340be01 	movt	fp, #3585	; 0xe01
 e009280:	e3043d44 	movw	r3, #19780	; 0x4d44
 e009284:	e3403e01 	movt	r3, #3585	; 0xe01
 e009288:	e58d300c 	str	r3, [sp, #12]
 e00928c:	e3043dec 	movw	r3, #19948	; 0x4dec
 e009290:	e3403e01 	movt	r3, #3585	; 0xe01
 e009294:	e58d3020 	str	r3, [sp, #32]
 e009298:	e59d5008 	ldr	r5, [sp, #8]
 e00929c:	e3a02010 	mov	r2, #16
 e0092a0:	e0843005 	add	r3, r4, r5
 e0092a4:	e3530010 	cmp	r3, #16
 e0092a8:	e59d1010 	ldr	r1, [sp, #16]
 e0092ac:	e28d0030 	add	r0, sp, #48	; 0x30
 e0092b0:	31a04003 	movcc	r4, r3
 e0092b4:	21a04002 	movcs	r4, r2
 e0092b8:	e58d3018 	str	r3, [sp, #24]
 e0092bc:	ebffff72 	bl	e00908c <OTP_LogicalMap_Read>
 e0092c0:	e3700001 	cmn	r0, #1
 e0092c4:	e58d001c 	str	r0, [sp, #28]
 e0092c8:	0a000102 	beq	e0096d8 <OTP_LogicalMap_Write+0x498>
 e0092cc:	e1540005 	cmp	r4, r5
 e0092d0:	9a00008b 	bls	e009504 <OTP_LogicalMap_Write+0x2c4>
 e0092d4:	e59d3008 	ldr	r3, [sp, #8]
 e0092d8:	e59d2014 	ldr	r2, [sp, #20]
 e0092dc:	e3a07000 	mov	r7, #0
 e0092e0:	e2435001 	sub	r5, r3, #1
 e0092e4:	e0426003 	sub	r6, r2, r3
 e0092e8:	e28d1030 	add	r1, sp, #48	; 0x30
 e0092ec:	e0866004 	add	r6, r6, r4
 e0092f0:	e0815005 	add	r5, r1, r5
 e0092f4:	e1a04002 	mov	r4, r2
 e0092f8:	e1a0a007 	mov	sl, r7
 e0092fc:	e1a08007 	mov	r8, r7
 e009300:	e0439002 	sub	r9, r3, r2
 e009304:	e0893004 	add	r3, r9, r4
 e009308:	e5f52001 	ldrb	r2, [r5, #1]!
 e00930c:	e4d40001 	ldrb	r0, [r4], #1
 e009310:	e1a0c123 	lsr	ip, r3, #2
 e009314:	e1520000 	cmp	r2, r0
 e009318:	0a00000c 	beq	e009350 <OTP_LogicalMap_Write+0x110>
 e00931c:	e3a02001 	mov	r2, #1
 e009320:	e1a01002 	mov	r1, r2
 e009324:	e18aa312 	orr	sl, sl, r2, lsl r3
 e009328:	e58d0004 	str	r0, [sp, #4]
 e00932c:	e58d3000 	str	r3, [sp]
 e009330:	e1877c11 	orr	r7, r7, r1, lsl ip
 e009334:	e0888001 	add	r8, r8, r1
 e009338:	e5c50000 	strb	r0, [r5]
 e00933c:	e59d300c 	ldr	r3, [sp, #12]
 e009340:	e3a02049 	mov	r2, #73	; 0x49
 e009344:	e1a0100b 	mov	r1, fp
 e009348:	e3a00004 	mov	r0, #4
 e00934c:	eb000189 	bl	e009978 <rtk_log_write_nano>
 e009350:	e1560004 	cmp	r6, r4
 e009354:	1affffea 	bne	e009304 <OTP_LogicalMap_Write+0xc4>
 e009358:	e3580000 	cmp	r8, #0
 e00935c:	0a000068 	beq	e009504 <OTP_LogicalMap_Write+0x2c4>
 e009360:	e59d3008 	ldr	r3, [sp, #8]
 e009364:	e3a02000 	mov	r2, #0
 e009368:	e3a01010 	mov	r1, #16
 e00936c:	e1a03123 	lsr	r3, r3, #2
 e009370:	e1a00337 	lsr	r0, r7, r3
 e009374:	e3100001 	tst	r0, #1
 e009378:	0a000005 	beq	e009394 <OTP_LogicalMap_Write+0x154>
 e00937c:	e1510003 	cmp	r1, r3
 e009380:	21a01003 	movcs	r1, r3
 e009384:	e1520003 	cmp	r2, r3
 e009388:	31a02003 	movcc	r2, r3
 e00938c:	e6ef1071 	uxtb	r1, r1
 e009390:	e6ef2072 	uxtb	r2, r2
 e009394:	e2833001 	add	r3, r3, #1
 e009398:	e3530004 	cmp	r3, #4
 e00939c:	1afffff3 	bne	e009370 <OTP_LogicalMap_Write+0x130>
 e0093a0:	e0422001 	sub	r2, r2, r1
 e0093a4:	e2823002 	add	r3, r2, #2
 e0093a8:	e1580003 	cmp	r8, r3
 e0093ac:	9a00006c 	bls	e009564 <OTP_LogicalMap_Write+0x324>
 e0093b0:	e1a09101 	lsl	r9, r1, #2
 e0093b4:	e2822001 	add	r2, r2, #1
 e0093b8:	e59d3010 	ldr	r3, [sp, #16]
 e0093bc:	e6ef9079 	uxtb	r9, r9
 e0093c0:	e1a04102 	lsl	r4, r2, #2
 e0093c4:	e0896003 	add	r6, r9, r3
 e0093c8:	e6ef4074 	uxtb	r4, r4
 e0093cc:	e28d3030 	add	r3, sp, #48	; 0x30
 e0093d0:	e3540010 	cmp	r4, #16
 e0093d4:	e0839009 	add	r9, r3, r9
 e0093d8:	e6ff6076 	uxth	r6, r6
 e0093dc:	8a0000b2 	bhi	e0096ac <OTP_LogicalMap_Write+0x46c>
 e0093e0:	e3560b01 	cmp	r6, #1024	; 0x400
 e0093e4:	8a0000c7 	bhi	e009708 <OTP_LogicalMap_Write+0x4c8>
 e0093e8:	e3540000 	cmp	r4, #0
 e0093ec:	0a00000f 	beq	e009430 <OTP_LogicalMap_Write+0x1f0>
 e0093f0:	e2495001 	sub	r5, r9, #1
 e0093f4:	e304adb0 	movw	sl, #19888	; 0x4db0
 e0093f8:	e340ae01 	movt	sl, #3585	; 0xe01
 e0093fc:	e0858004 	add	r8, r5, r4
 e009400:	e2697001 	rsb	r7, r9, #1
 e009404:	e0873005 	add	r3, r7, r5
 e009408:	e58d3000 	str	r3, [sp]
 e00940c:	e1a0100b 	mov	r1, fp
 e009410:	e5f52001 	ldrb	r2, [r5, #1]!
 e009414:	e58d2004 	str	r2, [sp, #4]
 e009418:	e1a0300a 	mov	r3, sl
 e00941c:	e3a02049 	mov	r2, #73	; 0x49
 e009420:	e3a00004 	mov	r0, #4
 e009424:	eb000153 	bl	e009978 <rtk_log_write_nano>
 e009428:	e1580005 	cmp	r8, r5
 e00942c:	1afffff4 	bne	e009404 <OTP_LogicalMap_Write+0x1c4>
 e009430:	e3a05000 	mov	r5, #0
 e009434:	e28d702c 	add	r7, sp, #44	; 0x2c
 e009438:	ea000004 	b	e009450 <OTP_LogicalMap_Write+0x210>
 e00943c:	e3520003 	cmp	r2, #3
 e009440:	02855008 	addeq	r5, r5, #8
 e009444:	11a05001 	movne	r5, r1
 e009448:	e3550f7f 	cmp	r5, #508	; 0x1fc
 e00944c:	8a00000e 	bhi	e00948c <OTP_LogicalMap_Write+0x24c>
 e009450:	e1a01007 	mov	r1, r7
 e009454:	e1a00005 	mov	r0, r5
 e009458:	ebfffdf7 	bl	e008c3c <OTP_Read32.isra.0>
 e00945c:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
 e009460:	e2851004 	add	r1, r5, #4
 e009464:	e3730001 	cmn	r3, #1
 e009468:	e1a02e23 	lsr	r2, r3, #28
 e00946c:	0a000006 	beq	e00948c <OTP_LogicalMap_Write+0x24c>
 e009470:	e3520002 	cmp	r2, #2
 e009474:	1afffff0 	bne	e00943c <OTP_LogicalMap_Write+0x1fc>
 e009478:	e7e33c53 	ubfx	r3, r3, #24, #4
 e00947c:	e2833001 	add	r3, r3, #1
 e009480:	e0815103 	add	r5, r1, r3, lsl #2
 e009484:	e3550f7f 	cmp	r5, #508	; 0x1fc
 e009488:	9afffff0 	bls	e009450 <OTP_LogicalMap_Write+0x210>
 e00948c:	e0852004 	add	r2, r5, r4
 e009490:	e30031fd 	movw	r3, #509	; 0x1fd
 e009494:	e1520003 	cmp	r2, r3
 e009498:	8a0000a2 	bhi	e009728 <OTP_LogicalMap_Write+0x4e8>
 e00949c:	e6ef1076 	uxtb	r1, r6
 e0094a0:	e1a00005 	mov	r0, r5
 e0094a4:	ebfffe68 	bl	e008e4c <OTP_Write8>
 e0094a8:	e7e31456 	ubfx	r1, r6, #8, #4
 e0094ac:	e3811070 	orr	r1, r1, #112	; 0x70
 e0094b0:	e2850001 	add	r0, r5, #1
 e0094b4:	ebfffe64 	bl	e008e4c <OTP_Write8>
 e0094b8:	e1a01144 	asr	r1, r4, #2
 e0094bc:	e2411001 	sub	r1, r1, #1
 e0094c0:	e3811020 	orr	r1, r1, #32
 e0094c4:	e2850003 	add	r0, r5, #3
 e0094c8:	e6ef1071 	uxtb	r1, r1
 e0094cc:	ebfffe5e 	bl	e008e4c <OTP_Write8>
 e0094d0:	e3540000 	cmp	r4, #0
 e0094d4:	12496001 	subne	r6, r9, #1
 e0094d8:	12699005 	rsbne	r9, r9, #5
 e0094dc:	10895005 	addne	r5, r9, r5
 e0094e0:	10864004 	addne	r4, r6, r4
 e0094e4:	0a000004 	beq	e0094fc <OTP_LogicalMap_Write+0x2bc>
 e0094e8:	e0850006 	add	r0, r5, r6
 e0094ec:	e5f61001 	ldrb	r1, [r6, #1]!
 e0094f0:	ebfffe55 	bl	e008e4c <OTP_Write8>
 e0094f4:	e1560004 	cmp	r6, r4
 e0094f8:	1afffffa 	bne	e0094e8 <OTP_LogicalMap_Write+0x2a8>
 e0094fc:	e3a03000 	mov	r3, #0
 e009500:	e58d301c 	str	r3, [sp, #28]
 e009504:	e59d3018 	ldr	r3, [sp, #24]
 e009508:	e59de014 	ldr	lr, [sp, #20]
 e00950c:	e2434010 	sub	r4, r3, #16
 e009510:	e59d3008 	ldr	r3, [sp, #8]
 e009514:	e3a02049 	mov	r2, #73	; 0x49
 e009518:	e263c010 	rsb	ip, r3, #16
 e00951c:	e59d3010 	ldr	r3, [sp, #16]
 e009520:	e1a0100b 	mov	r1, fp
 e009524:	e2833010 	add	r3, r3, #16
 e009528:	e3a00004 	mov	r0, #4
 e00952c:	e58d3010 	str	r3, [sp, #16]
 e009530:	e88d0018 	stm	sp, {r3, r4}
 e009534:	e3043e0c 	movw	r3, #19980	; 0x4e0c
 e009538:	e3403e01 	movt	r3, #3585	; 0xe01
 e00953c:	e08ec00c 	add	ip, lr, ip
 e009540:	e58dc014 	str	ip, [sp, #20]
 e009544:	e3a0c000 	mov	ip, #0
 e009548:	e58dc008 	str	ip, [sp, #8]
 e00954c:	eb000109 	bl	e009978 <rtk_log_write_nano>
 e009550:	e3540000 	cmp	r4, #0
 e009554:	caffff4f 	bgt	e009298 <OTP_LogicalMap_Write+0x58>
 e009558:	e59d001c 	ldr	r0, [sp, #28]
 e00955c:	e28dd044 	add	sp, sp, #68	; 0x44
 e009560:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e009564:	e3043dc8 	movw	r3, #19912	; 0x4dc8
 e009568:	e3403e01 	movt	r3, #3585	; 0xe01
 e00956c:	e1dd51b0 	ldrh	r5, [sp, #16]
 e009570:	e59d701c 	ldr	r7, [sp, #28]
 e009574:	e28d8030 	add	r8, sp, #48	; 0x30
 e009578:	e3a06000 	mov	r6, #0
 e00957c:	e58d3024 	str	r3, [sp, #36]	; 0x24
 e009580:	ea000005 	b	e00959c <OTP_LogicalMap_Write+0x35c>
 e009584:	e2855001 	add	r5, r5, #1
 e009588:	e2866001 	add	r6, r6, #1
 e00958c:	e6ff5075 	uxth	r5, r5
 e009590:	e2888001 	add	r8, r8, #1
 e009594:	e3560010 	cmp	r6, #16
 e009598:	0a000041 	beq	e0096a4 <OTP_LogicalMap_Write+0x464>
 e00959c:	e3a03001 	mov	r3, #1
 e0095a0:	e01a3613 	ands	r3, sl, r3, lsl r6
 e0095a4:	0afffff6 	beq	e009584 <OTP_LogicalMap_Write+0x344>
 e0095a8:	e5d89000 	ldrb	r9, [r8]
 e0095ac:	e3550b01 	cmp	r5, #1024	; 0x400
 e0095b0:	8a000033 	bhi	e009684 <OTP_LogicalMap_Write+0x444>
 e0095b4:	e59d3020 	ldr	r3, [sp, #32]
 e0095b8:	e3a02049 	mov	r2, #73	; 0x49
 e0095bc:	e1a0100b 	mov	r1, fp
 e0095c0:	e3a00004 	mov	r0, #4
 e0095c4:	e88d0220 	stm	sp, {r5, r9}
 e0095c8:	e3a04000 	mov	r4, #0
 e0095cc:	e28d702c 	add	r7, sp, #44	; 0x2c
 e0095d0:	eb0000e8 	bl	e009978 <rtk_log_write_nano>
 e0095d4:	ea000004 	b	e0095ec <OTP_LogicalMap_Write+0x3ac>
 e0095d8:	e3520003 	cmp	r2, #3
 e0095dc:	02844008 	addeq	r4, r4, #8
 e0095e0:	11a04001 	movne	r4, r1
 e0095e4:	e3540f7f 	cmp	r4, #508	; 0x1fc
 e0095e8:	8a00000e 	bhi	e009628 <OTP_LogicalMap_Write+0x3e8>
 e0095ec:	e1a01007 	mov	r1, r7
 e0095f0:	e1a00004 	mov	r0, r4
 e0095f4:	ebfffd90 	bl	e008c3c <OTP_Read32.isra.0>
 e0095f8:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
 e0095fc:	e2841004 	add	r1, r4, #4
 e009600:	e3730001 	cmn	r3, #1
 e009604:	e1a02e23 	lsr	r2, r3, #28
 e009608:	0a00000e 	beq	e009648 <OTP_LogicalMap_Write+0x408>
 e00960c:	e3520002 	cmp	r2, #2
 e009610:	1afffff0 	bne	e0095d8 <OTP_LogicalMap_Write+0x398>
 e009614:	e7e30c53 	ubfx	r0, r3, #24, #4
 e009618:	e2800001 	add	r0, r0, #1
 e00961c:	e0814100 	add	r4, r1, r0, lsl #2
 e009620:	e3540f7f 	cmp	r4, #508	; 0x1fc
 e009624:	9afffff0 	bls	e0095ec <OTP_LogicalMap_Write+0x3ac>
 e009628:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e00962c:	e3a02045 	mov	r2, #69	; 0x45
 e009630:	e1a0100b 	mov	r1, fp
 e009634:	e3a00002 	mov	r0, #2
 e009638:	e58d4000 	str	r4, [sp]
 e00963c:	e3e07000 	mvn	r7, #0
 e009640:	eb0000cc 	bl	e009978 <rtk_log_write_nano>
 e009644:	eaffffce 	b	e009584 <OTP_LogicalMap_Write+0x344>
 e009648:	e6ef1075 	uxtb	r1, r5
 e00964c:	e1a00004 	mov	r0, r4
 e009650:	ebfffdfd 	bl	e008e4c <OTP_Write8>
 e009654:	e7e31455 	ubfx	r1, r5, #8, #4
 e009658:	e3811070 	orr	r1, r1, #112	; 0x70
 e00965c:	e2840001 	add	r0, r4, #1
 e009660:	ebfffdf9 	bl	e008e4c <OTP_Write8>
 e009664:	e1a01009 	mov	r1, r9
 e009668:	e2840002 	add	r0, r4, #2
 e00966c:	ebfffdf6 	bl	e008e4c <OTP_Write8>
 e009670:	e2840003 	add	r0, r4, #3
 e009674:	e3a0101f 	mov	r1, #31
 e009678:	e3a07000 	mov	r7, #0
 e00967c:	ebfffdf2 	bl	e008e4c <OTP_Write8>
 e009680:	eaffffbf 	b	e009584 <OTP_LogicalMap_Write+0x344>
 e009684:	e3a02045 	mov	r2, #69	; 0x45
 e009688:	e1a0100b 	mov	r1, fp
 e00968c:	e3a00002 	mov	r0, #2
 e009690:	e58d5000 	str	r5, [sp]
 e009694:	e3043d84 	movw	r3, #19844	; 0x4d84
 e009698:	e3403e01 	movt	r3, #3585	; 0xe01
 e00969c:	eb0000b5 	bl	e009978 <rtk_log_write_nano>
 e0096a0:	eaffffc3 	b	e0095b4 <OTP_LogicalMap_Write+0x374>
 e0096a4:	e58d701c 	str	r7, [sp, #28]
 e0096a8:	eaffff95 	b	e009504 <OTP_LogicalMap_Write+0x2c4>
 e0096ac:	e3a02045 	mov	r2, #69	; 0x45
 e0096b0:	e1a0100b 	mov	r1, fp
 e0096b4:	e3a00002 	mov	r0, #2
 e0096b8:	e58d4004 	str	r4, [sp, #4]
 e0096bc:	e58d6000 	str	r6, [sp]
 e0096c0:	e3043d58 	movw	r3, #19800	; 0x4d58
 e0096c4:	e3403e01 	movt	r3, #3585	; 0xe01
 e0096c8:	eb0000aa 	bl	e009978 <rtk_log_write_nano>
 e0096cc:	e3e03000 	mvn	r3, #0
 e0096d0:	e58d301c 	str	r3, [sp, #28]
 e0096d4:	eaffff8a 	b	e009504 <OTP_LogicalMap_Write+0x2c4>
 e0096d8:	e59d3010 	ldr	r3, [sp, #16]
 e0096dc:	e58d3000 	str	r3, [sp]
 e0096e0:	e3a02045 	mov	r2, #69	; 0x45
 e0096e4:	e3a00002 	mov	r0, #2
 e0096e8:	e3043d1c 	movw	r3, #19740	; 0x4d1c
 e0096ec:	e3403e01 	movt	r3, #3585	; 0xe01
 e0096f0:	e3041c24 	movw	r1, #19492	; 0x4c24
 e0096f4:	e3401e01 	movt	r1, #3585	; 0xe01
 e0096f8:	eb00009e 	bl	e009978 <rtk_log_write_nano>
 e0096fc:	e59d001c 	ldr	r0, [sp, #28]
 e009700:	e28dd044 	add	sp, sp, #68	; 0x44
 e009704:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e009708:	e3a02045 	mov	r2, #69	; 0x45
 e00970c:	e1a0100b 	mov	r1, fp
 e009710:	e3a00002 	mov	r0, #2
 e009714:	e58d6000 	str	r6, [sp]
 e009718:	e3043d84 	movw	r3, #19844	; 0x4d84
 e00971c:	e3403e01 	movt	r3, #3585	; 0xe01
 e009720:	eb000094 	bl	e009978 <rtk_log_write_nano>
 e009724:	eaffff2f 	b	e0093e8 <OTP_LogicalMap_Write+0x1a8>
 e009728:	e3a02045 	mov	r2, #69	; 0x45
 e00972c:	e1a0100b 	mov	r1, fp
 e009730:	e3a00002 	mov	r0, #2
 e009734:	e58d5000 	str	r5, [sp]
 e009738:	e3043dc8 	movw	r3, #19912	; 0x4dc8
 e00973c:	e3403e01 	movt	r3, #3585	; 0xe01
 e009740:	eb00008c 	bl	e009978 <rtk_log_write_nano>
 e009744:	e3e03000 	mvn	r3, #0
 e009748:	e58d301c 	str	r3, [sp, #28]
 e00974c:	eaffff6c 	b	e009504 <OTP_LogicalMap_Write+0x2c4>
 e009750:	e3a03000 	mov	r3, #0
 e009754:	e58d301c 	str	r3, [sp, #28]
 e009758:	eaffff7e 	b	e009558 <OTP_LogicalMap_Write+0x318>
 e00975c:	e58d1004 	str	r1, [sp, #4]
 e009760:	e58d3000 	str	r3, [sp]
 e009764:	e3a02045 	mov	r2, #69	; 0x45
 e009768:	e3a00002 	mov	r0, #2
 e00976c:	e3043cf0 	movw	r3, #19696	; 0x4cf0
 e009770:	e3403e01 	movt	r3, #3585	; 0xe01
 e009774:	e3041c24 	movw	r1, #19492	; 0x4c24
 e009778:	e3401e01 	movt	r1, #3585	; 0xe01
 e00977c:	e3e0c000 	mvn	ip, #0
 e009780:	e58dc01c 	str	ip, [sp, #28]
 e009784:	eb00007b 	bl	e009978 <rtk_log_write_nano>
 e009788:	eaffff72 	b	e009558 <OTP_LogicalMap_Write+0x318>

0e00978c <PLL_GetHBUSClk>:
 e00978c:	e3a03b22 	mov	r3, #34816	; 0x8800
 e009790:	e3443200 	movt	r3, #16896	; 0x4200
 e009794:	e3a01902 	mov	r1, #32768	; 0x8000
 e009798:	e3441200 	movt	r1, #16896	; 0x4200
 e00979c:	e5933044 	ldr	r3, [r3, #68]	; 0x44
 e0097a0:	e3a02c5a 	mov	r2, #23040	; 0x5a00
 e0097a4:	e3402262 	movt	r2, #610	; 0x262
 e0097a8:	e7e532d3 	ubfx	r3, r3, #5, #6
 e0097ac:	e5910228 	ldr	r0, [r1, #552]	; 0x228
 e0097b0:	e2833002 	add	r3, r3, #2
 e0097b4:	e7e30650 	ubfx	r0, r0, #12, #4
 e0097b8:	e0030392 	mul	r3, r2, r3
 e0097bc:	e2800001 	add	r0, r0, #1
 e0097c0:	e730f013 	udiv	r0, r3, r0
 e0097c4:	e12fff1e 	bx	lr

0e0097c8 <System_Reset>:
 e0097c8:	e3a03902 	mov	r3, #32768	; 0x8000
 e0097cc:	e3443200 	movt	r3, #16896	; 0x4200
 e0097d0:	e593227c 	ldr	r2, [r3, #636]	; 0x27c
 e0097d4:	e7e12352 	ubfx	r2, r2, #6, #2
 e0097d8:	e3520003 	cmp	r2, #3
 e0097dc:	012fff1e 	bxeq	lr
 e0097e0:	e3a01202 	mov	r1, #536870912	; 0x20000000
 e0097e4:	e3090696 	movw	r0, #38550	; 0x9696
 e0097e8:	e3490696 	movt	r0, #38550	; 0x9696
 e0097ec:	e1a02211 	lsl	r2, r1, r2
 e0097f0:	e583023c 	str	r0, [r3, #572]	; 0x23c
 e0097f4:	e3061969 	movw	r1, #26985	; 0x6969
 e0097f8:	e3461969 	movt	r1, #26985	; 0x6969
 e0097fc:	e5832238 	str	r2, [r3, #568]	; 0x238
 e009800:	e583123c 	str	r1, [r3, #572]	; 0x23c
 e009804:	eafffffe 	b	e009804 <System_Reset+0x3c>

0e009808 <rtk_log_level_get>:
 e009808:	e3033480 	movw	r3, #13440	; 0x3480
 e00980c:	e346300a 	movt	r3, #24586	; 0x600a
 e009810:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e009814:	e1a06000 	mov	r6, r0
 e009818:	e5932000 	ldr	r2, [r3]
 e00981c:	e3520003 	cmp	r2, #3
 e009820:	9a000016 	bls	e009880 <rtk_log_level_get+0x78>
 e009824:	e3500000 	cmp	r0, #0
 e009828:	13a08004 	movne	r8, #4
 e00982c:	0a000018 	beq	e009894 <rtk_log_level_get+0x8c>
 e009830:	e30c7af4 	movw	r7, #51956	; 0xcaf4
 e009834:	e3407e00 	movt	r7, #3584	; 0xe00
 e009838:	e59f5064 	ldr	r5, [pc, #100]	; e0098a4 <rtk_log_level_get+0x9c>
 e00983c:	e3a04000 	mov	r4, #0
 e009840:	ea000003 	b	e009854 <rtk_log_level_get+0x4c>
 e009844:	e2844001 	add	r4, r4, #1
 e009848:	e285500b 	add	r5, r5, #11
 e00984c:	e1580004 	cmp	r8, r4
 e009850:	9a00000f 	bls	e009894 <rtk_log_level_get+0x8c>
 e009854:	e1a00005 	mov	r0, r5
 e009858:	e1a01006 	mov	r1, r6
 e00985c:	e12fff37 	blx	r7
 e009860:	e3500000 	cmp	r0, #0
 e009864:	1afffff6 	bne	e009844 <rtk_log_level_get+0x3c>
 e009868:	e3a0200b 	mov	r2, #11
 e00986c:	e3033484 	movw	r3, #13444	; 0x3484
 e009870:	e346300a 	movt	r3, #24586	; 0x600a
 e009874:	e0040492 	mul	r4, r2, r4
 e009878:	e7d30004 	ldrb	r0, [r3, r4]
 e00987c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e009880:	e5938000 	ldr	r8, [r3]
 e009884:	e3500000 	cmp	r0, #0
 e009888:	0a000001 	beq	e009894 <rtk_log_level_get+0x8c>
 e00988c:	e3580000 	cmp	r8, #0
 e009890:	1affffe6 	bne	e009830 <rtk_log_level_get+0x28>
 e009894:	e3053260 	movw	r3, #21088	; 0x5260
 e009898:	e3463009 	movt	r3, #24585	; 0x6009
 e00989c:	e5d30000 	ldrb	r0, [r3]
 e0098a0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e0098a4:	600a3485 	.word	0x600a3485

0e0098a8 <rtk_log_write>:
 e0098a8:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 e0098ac:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 e0098b0:	e2514000 	subs	r4, r1, #0
 e0098b4:	e24dd008 	sub	sp, sp, #8
 e0098b8:	0a000005 	beq	e0098d4 <rtk_log_write+0x2c>
 e0098bc:	e1a05000 	mov	r5, r0
 e0098c0:	e1a00004 	mov	r0, r4
 e0098c4:	e1a06002 	mov	r6, r2
 e0098c8:	ebffffce 	bl	e009808 <rtk_log_level_get>
 e0098cc:	e1500005 	cmp	r0, r5
 e0098d0:	2a000003 	bcs	e0098e4 <rtk_log_write+0x3c>
 e0098d4:	e28dd008 	add	sp, sp, #8
 e0098d8:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
 e0098dc:	e28dd004 	add	sp, sp, #4
 e0098e0:	e12fff1e 	bx	lr
 e0098e4:	e10f7000 	mrs	r7, CPSR
 e0098e8:	f10c0080 	cpsid	i
 e0098ec:	f57ff04f 	dsb	sy
 e0098f0:	f57ff06f 	isb	sy
 e0098f4:	e3a03001 	mov	r3, #1
 e0098f8:	e3035440 	movw	r5, #13376	; 0x3440
 e0098fc:	e346500a 	movt	r5, #24586	; 0x600a
 e009900:	e1952f9f 	ldrex	r2, [r5]
 e009904:	e3520000 	cmp	r2, #0
 e009908:	1320f002 	wfene
 e00990c:	01852f93 	strexeq	r2, r3, [r5]
 e009910:	03520000 	cmpeq	r2, #0
 e009914:	1afffff9 	bne	e009900 <rtk_log_write+0x58>
 e009918:	f57ff05f 	dmb	sy
 e00991c:	e5d43000 	ldrb	r3, [r4]
 e009920:	e3530023 	cmp	r3, #35	; 0x23
 e009924:	1a00000d 	bne	e009960 <rtk_log_write+0xb8>
 e009928:	e28d1020 	add	r1, sp, #32
 e00992c:	e59d001c 	ldr	r0, [sp, #28]
 e009930:	e58d1004 	str	r1, [sp, #4]
 e009934:	eb00236e 	bl	e0126f4 <DiagVprintf>
 e009938:	e3a03000 	mov	r3, #0
 e00993c:	f57ff05f 	dmb	sy
 e009940:	e5853000 	str	r3, [r5]
 e009944:	f57ff04f 	dsb	sy
 e009948:	e320f004 	sev
 e00994c:	e121f007 	msr	CPSR_c, r7
 e009950:	e28dd008 	add	sp, sp, #8
 e009954:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
 e009958:	e28dd004 	add	sp, sp, #4
 e00995c:	e12fff1e 	bx	lr
 e009960:	e1a02006 	mov	r2, r6
 e009964:	e1a01004 	mov	r1, r4
 e009968:	e3040e34 	movw	r0, #20020	; 0x4e34
 e00996c:	e3400e01 	movt	r0, #3585	; 0xe01
 e009970:	eb002713 	bl	e0135c4 <DiagPrintf>
 e009974:	eaffffeb 	b	e009928 <rtk_log_write+0x80>

0e009978 <rtk_log_write_nano>:
 e009978:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 e00997c:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 e009980:	e2514000 	subs	r4, r1, #0
 e009984:	e24dd008 	sub	sp, sp, #8
 e009988:	0a000005 	beq	e0099a4 <rtk_log_write_nano+0x2c>
 e00998c:	e1a05000 	mov	r5, r0
 e009990:	e1a00004 	mov	r0, r4
 e009994:	e1a06002 	mov	r6, r2
 e009998:	ebffff9a 	bl	e009808 <rtk_log_level_get>
 e00999c:	e1500005 	cmp	r0, r5
 e0099a0:	2a000003 	bcs	e0099b4 <rtk_log_write_nano+0x3c>
 e0099a4:	e28dd008 	add	sp, sp, #8
 e0099a8:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
 e0099ac:	e28dd004 	add	sp, sp, #4
 e0099b0:	e12fff1e 	bx	lr
 e0099b4:	e10f7000 	mrs	r7, CPSR
 e0099b8:	f10c0080 	cpsid	i
 e0099bc:	f57ff04f 	dsb	sy
 e0099c0:	f57ff06f 	isb	sy
 e0099c4:	e3a03001 	mov	r3, #1
 e0099c8:	e3035440 	movw	r5, #13376	; 0x3440
 e0099cc:	e346500a 	movt	r5, #24586	; 0x600a
 e0099d0:	e1952f9f 	ldrex	r2, [r5]
 e0099d4:	e3520000 	cmp	r2, #0
 e0099d8:	1320f002 	wfene
 e0099dc:	01852f93 	strexeq	r2, r3, [r5]
 e0099e0:	03520000 	cmpeq	r2, #0
 e0099e4:	1afffff9 	bne	e0099d0 <rtk_log_write_nano+0x58>
 e0099e8:	f57ff05f 	dmb	sy
 e0099ec:	e5d43000 	ldrb	r3, [r4]
 e0099f0:	e3530023 	cmp	r3, #35	; 0x23
 e0099f4:	1a00000d 	bne	e009a30 <rtk_log_write_nano+0xb8>
 e0099f8:	e28d1020 	add	r1, sp, #32
 e0099fc:	e59d001c 	ldr	r0, [sp, #28]
 e009a00:	e58d1004 	str	r1, [sp, #4]
 e009a04:	eb002566 	bl	e012fa4 <DiagVprintfNano>
 e009a08:	e3a03000 	mov	r3, #0
 e009a0c:	f57ff05f 	dmb	sy
 e009a10:	e5853000 	str	r3, [r5]
 e009a14:	f57ff04f 	dsb	sy
 e009a18:	e320f004 	sev
 e009a1c:	e121f007 	msr	CPSR_c, r7
 e009a20:	e28dd008 	add	sp, sp, #8
 e009a24:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
 e009a28:	e28dd004 	add	sp, sp, #4
 e009a2c:	e12fff1e 	bx	lr
 e009a30:	e1a02006 	mov	r2, r6
 e009a34:	e1a01004 	mov	r1, r4
 e009a38:	e3040e34 	movw	r0, #20020	; 0x4e34
 e009a3c:	e3400e01 	movt	r0, #3585	; 0xe01
 e009a40:	eb0026ea 	bl	e0135f0 <DiagPrintfNano>
 e009a44:	eaffffeb 	b	e0099f8 <rtk_log_write_nano+0x80>

0e009a48 <rtk_log_memory_dump_word>:
 e009a48:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 e009a4c:	e2517000 	subs	r7, r1, #0
 e009a50:	e24dd00c 	sub	sp, sp, #12
 e009a54:	0a000025 	beq	e009af0 <rtk_log_memory_dump_word+0xa8>
 e009a58:	e3049e48 	movw	r9, #20040	; 0x4e48
 e009a5c:	e3409e01 	movt	r9, #3585	; 0xe01
 e009a60:	e30463ac 	movw	r6, #17324	; 0x43ac
 e009a64:	e3406e01 	movt	r6, #3585	; 0xe01
 e009a68:	e1a08000 	mov	r8, r0
 e009a6c:	e1a05000 	mov	r5, r0
 e009a70:	e3a04000 	mov	r4, #0
 e009a74:	ea00000a 	b	e009aa4 <rtk_log_memory_dump_word+0x5c>
 e009a78:	e4953004 	ldr	r3, [r5], #4
 e009a7c:	e3a00001 	mov	r0, #1
 e009a80:	e0844000 	add	r4, r4, r0
 e009a84:	e58d3000 	str	r3, [sp]
 e009a88:	e3a02041 	mov	r2, #65	; 0x41
 e009a8c:	e1a01006 	mov	r1, r6
 e009a90:	e3043e54 	movw	r3, #20052	; 0x4e54
 e009a94:	e3403e01 	movt	r3, #3585	; 0xe01
 e009a98:	ebffffb6 	bl	e009978 <rtk_log_write_nano>
 e009a9c:	e1540007 	cmp	r4, r7
 e009aa0:	0a000012 	beq	e009af0 <rtk_log_memory_dump_word+0xa8>
 e009aa4:	e3540000 	cmp	r4, #0
 e009aa8:	0a000008 	beq	e009ad0 <rtk_log_memory_dump_word+0x88>
 e009aac:	e3140007 	tst	r4, #7
 e009ab0:	1afffff0 	bne	e009a78 <rtk_log_memory_dump_word+0x30>
 e009ab4:	e1a03009 	mov	r3, r9
 e009ab8:	e3a02041 	mov	r2, #65	; 0x41
 e009abc:	e1a01006 	mov	r1, r6
 e009ac0:	e3a00001 	mov	r0, #1
 e009ac4:	e58d5000 	str	r5, [sp]
 e009ac8:	ebffffaa 	bl	e009978 <rtk_log_write_nano>
 e009acc:	eaffffe9 	b	e009a78 <rtk_log_memory_dump_word+0x30>
 e009ad0:	e3a02041 	mov	r2, #65	; 0x41
 e009ad4:	e1a01006 	mov	r1, r6
 e009ad8:	e3a00001 	mov	r0, #1
 e009adc:	e58d8000 	str	r8, [sp]
 e009ae0:	e3043e40 	movw	r3, #20032	; 0x4e40
 e009ae4:	e3403e01 	movt	r3, #3585	; 0xe01
 e009ae8:	ebffffa2 	bl	e009978 <rtk_log_write_nano>
 e009aec:	eaffffe1 	b	e009a78 <rtk_log_memory_dump_word+0x30>
 e009af0:	e3a02041 	mov	r2, #65	; 0x41
 e009af4:	e3a00001 	mov	r0, #1
 e009af8:	e3043e78 	movw	r3, #20088	; 0x4e78
 e009afc:	e3403e01 	movt	r3, #3585	; 0xe01
 e009b00:	e30413ac 	movw	r1, #17324	; 0x43ac
 e009b04:	e3401e01 	movt	r1, #3585	; 0xe01
 e009b08:	e28dd00c 	add	sp, sp, #12
 e009b0c:	e8bd43f0 	pop	{r4, r5, r6, r7, r8, r9, lr}
 e009b10:	eaffff98 	b	e009978 <rtk_log_write_nano>

0e009b14 <rtk_log_memory_dump_byte>:
 e009b14:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 e009b18:	e2517000 	subs	r7, r1, #0
 e009b1c:	e24dd00c 	sub	sp, sp, #12
 e009b20:	0a000025 	beq	e009bbc <rtk_log_memory_dump_byte+0xa8>
 e009b24:	e3049e48 	movw	r9, #20040	; 0x4e48
 e009b28:	e3409e01 	movt	r9, #3585	; 0xe01
 e009b2c:	e30463ac 	movw	r6, #17324	; 0x43ac
 e009b30:	e3406e01 	movt	r6, #3585	; 0xe01
 e009b34:	e1a08000 	mov	r8, r0
 e009b38:	e1a05000 	mov	r5, r0
 e009b3c:	e3a04000 	mov	r4, #0
 e009b40:	ea00000a 	b	e009b70 <rtk_log_memory_dump_byte+0x5c>
 e009b44:	e4d53001 	ldrb	r3, [r5], #1
 e009b48:	e3a00001 	mov	r0, #1
 e009b4c:	e0844000 	add	r4, r4, r0
 e009b50:	e58d3000 	str	r3, [sp]
 e009b54:	e3a02041 	mov	r2, #65	; 0x41
 e009b58:	e1a01006 	mov	r1, r6
 e009b5c:	e3043e5c 	movw	r3, #20060	; 0x4e5c
 e009b60:	e3403e01 	movt	r3, #3585	; 0xe01
 e009b64:	ebffff83 	bl	e009978 <rtk_log_write_nano>
 e009b68:	e1540007 	cmp	r4, r7
 e009b6c:	0a000012 	beq	e009bbc <rtk_log_memory_dump_byte+0xa8>
 e009b70:	e3540000 	cmp	r4, #0
 e009b74:	0a000008 	beq	e009b9c <rtk_log_memory_dump_byte+0x88>
 e009b78:	e3140007 	tst	r4, #7
 e009b7c:	1afffff0 	bne	e009b44 <rtk_log_memory_dump_byte+0x30>
 e009b80:	e1a03009 	mov	r3, r9
 e009b84:	e3a02041 	mov	r2, #65	; 0x41
 e009b88:	e1a01006 	mov	r1, r6
 e009b8c:	e3a00001 	mov	r0, #1
 e009b90:	e58d5000 	str	r5, [sp]
 e009b94:	ebffff77 	bl	e009978 <rtk_log_write_nano>
 e009b98:	eaffffe9 	b	e009b44 <rtk_log_memory_dump_byte+0x30>
 e009b9c:	e3a02041 	mov	r2, #65	; 0x41
 e009ba0:	e1a01006 	mov	r1, r6
 e009ba4:	e3a00001 	mov	r0, #1
 e009ba8:	e58d8000 	str	r8, [sp]
 e009bac:	e3043e40 	movw	r3, #20032	; 0x4e40
 e009bb0:	e3403e01 	movt	r3, #3585	; 0xe01
 e009bb4:	ebffff6f 	bl	e009978 <rtk_log_write_nano>
 e009bb8:	eaffffe1 	b	e009b44 <rtk_log_memory_dump_byte+0x30>
 e009bbc:	e3a02041 	mov	r2, #65	; 0x41
 e009bc0:	e3a00001 	mov	r0, #1
 e009bc4:	e3043e78 	movw	r3, #20088	; 0x4e78
 e009bc8:	e3403e01 	movt	r3, #3585	; 0xe01
 e009bcc:	e30413ac 	movw	r1, #17324	; 0x43ac
 e009bd0:	e3401e01 	movt	r1, #3585	; 0xe01
 e009bd4:	e28dd00c 	add	sp, sp, #12
 e009bd8:	e8bd43f0 	pop	{r4, r5, r6, r7, r8, r9, lr}
 e009bdc:	eaffff65 	b	e009978 <rtk_log_write_nano>

0e009be0 <vAssertCalled>:
 e009be0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e009be4:	e1a04000 	mov	r4, r0
 e009be8:	e24dd00c 	sub	sp, sp, #12
 e009bec:	e1a05001 	mov	r5, r1
 e009bf0:	eb000dbf 	bl	e00d2f4 <__rtos_critical_enter_os>
 e009bf4:	e3043e64 	movw	r3, #20068	; 0x4e64
 e009bf8:	e3403e01 	movt	r3, #3585	; 0xe01
 e009bfc:	e30413ac 	movw	r1, #17324	; 0x43ac
 e009c00:	e3401e01 	movt	r1, #3585	; 0xe01
 e009c04:	e3a02045 	mov	r2, #69	; 0x45
 e009c08:	e3a00002 	mov	r0, #2
 e009c0c:	e58d5004 	str	r5, [sp, #4]
 e009c10:	e58d4000 	str	r4, [sp]
 e009c14:	ebffff57 	bl	e009978 <rtk_log_write_nano>
 e009c18:	eafffffe 	b	e009c18 <vAssertCalled+0x38>

0e009c1c <gic_cpu_init>:
 e009c1c:	f57ff05f 	dmb	sy
 e009c20:	e3a00a01 	mov	r0, #4096	; 0x1000
 e009c24:	e34a0010 	movt	r0, #40976	; 0xa010
 e009c28:	e3e0c000 	mvn	ip, #0
 e009c2c:	e580c380 	str	ip, [r0, #896]	; 0x380
 e009c30:	f57ff05f 	dmb	sy
 e009c34:	e3a03000 	mov	r3, #0
 e009c38:	e34f3fff 	movt	r3, #65535	; 0xffff
 e009c3c:	e5803180 	str	r3, [r0, #384]	; 0x180
 e009c40:	f57ff05f 	dmb	sy
 e009c44:	e30f3fff 	movw	r3, #65535	; 0xffff
 e009c48:	e5803100 	str	r3, [r0, #256]	; 0x100
 e009c4c:	f57ff05f 	dmb	sy
 e009c50:	e3a03b05 	mov	r3, #5120	; 0x1400
 e009c54:	e34a3010 	movt	r3, #40976	; 0xa010
 e009c58:	e30a10a0 	movw	r1, #41120	; 0xa0a0
 e009c5c:	e34a10a0 	movt	r1, #41120	; 0xa0a0
 e009c60:	e3012420 	movw	r2, #5152	; 0x1420
 e009c64:	e34a2010 	movt	r2, #40976	; 0xa010
 e009c68:	e580c080 	str	ip, [r0, #128]	; 0x80
 e009c6c:	f57ff05f 	dmb	sy
 e009c70:	e4831004 	str	r1, [r3], #4
 e009c74:	e1530002 	cmp	r3, r2
 e009c78:	1afffffb 	bne	e009c6c <gic_cpu_init+0x50>
 e009c7c:	f57ff05f 	dmb	sy
 e009c80:	e3a02a02 	mov	r2, #8192	; 0x2000
 e009c84:	e34a2010 	movt	r2, #40976	; 0xa010
 e009c88:	e3a030ff 	mov	r3, #255	; 0xff
 e009c8c:	e5823004 	str	r3, [r2, #4]
 e009c90:	e5923000 	ldr	r3, [r2]
 e009c94:	f57ff05f 	dmb	sy
 e009c98:	e3c33e1e 	bic	r3, r3, #480	; 0x1e0
 e009c9c:	e3c33003 	bic	r3, r3, #3
 e009ca0:	e3833007 	orr	r3, r3, #7
 e009ca4:	f57ff05f 	dmb	sy
 e009ca8:	e5823000 	str	r3, [r2]
 e009cac:	e12fff1e 	bx	lr

0e009cb0 <arm_gic_irq_enable>:
 e009cb0:	e200201f 	and	r2, r0, #31
 e009cb4:	e3a03001 	mov	r3, #1
 e009cb8:	e1a03213 	lsl	r3, r3, r2
 e009cbc:	f57ff05f 	dmb	sy
 e009cc0:	e3a02c11 	mov	r2, #4352	; 0x1100
 e009cc4:	e34a2010 	movt	r2, #40976	; 0xa010
 e009cc8:	e1a002a0 	lsr	r0, r0, #5
 e009ccc:	e7823100 	str	r3, [r2, r0, lsl #2]
 e009cd0:	e12fff1e 	bx	lr

0e009cd4 <arm_gic_irq_disable>:
 e009cd4:	e200201f 	and	r2, r0, #31
 e009cd8:	e3a03001 	mov	r3, #1
 e009cdc:	e1a03213 	lsl	r3, r3, r2
 e009ce0:	f57ff05f 	dmb	sy
 e009ce4:	e3a02d46 	mov	r2, #4480	; 0x1180
 e009ce8:	e34a2010 	movt	r2, #40976	; 0xa010
 e009cec:	e1a002a0 	lsr	r0, r0, #5
 e009cf0:	e7823100 	str	r3, [r2, r0, lsl #2]
 e009cf4:	e12fff1e 	bx	lr

0e009cf8 <arm_gic_irq_set_priority>:
 e009cf8:	e6ef3071 	uxtb	r3, r1
 e009cfc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e009d00:	f57ff05f 	dmb	sy
 e009d04:	e3a0eb05 	mov	lr, #5120	; 0x1400
 e009d08:	e34ae010 	movt	lr, #40976	; 0xa010
 e009d0c:	e1a0c220 	lsr	ip, r0, #4
 e009d10:	e200100f 	and	r1, r0, #15
 e009d14:	e7c0300e 	strb	r3, [r0, lr]
 e009d18:	e3a03b07 	mov	r3, #7168	; 0x1c00
 e009d1c:	e34a3010 	movt	r3, #40976	; 0xa010
 e009d20:	e083010c 	add	r0, r3, ip, lsl #2
 e009d24:	e1a01081 	lsl	r1, r1, #1
 e009d28:	e793310c 	ldr	r3, [r3, ip, lsl #2]
 e009d2c:	f57ff05f 	dmb	sy
 e009d30:	e3a0c003 	mov	ip, #3
 e009d34:	e3120001 	tst	r2, #1
 e009d38:	13a02002 	movne	r2, #2
 e009d3c:	e1c3311c 	bic	r3, r3, ip, lsl r1
 e009d40:	11833112 	orrne	r3, r3, r2, lsl r1
 e009d44:	f57ff05f 	dmb	sy
 e009d48:	e5803000 	str	r3, [r0]
 e009d4c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

0e009d50 <arm_gic_get_active>:
 e009d50:	e3a03a02 	mov	r3, #8192	; 0x2000
 e009d54:	e34a3010 	movt	r3, #40976	; 0xa010
 e009d58:	e593000c 	ldr	r0, [r3, #12]
 e009d5c:	f57ff05f 	dmb	sy
 e009d60:	e7e90050 	ubfx	r0, r0, #0, #10
 e009d64:	e12fff1e 	bx	lr

0e009d68 <arm_gic_clear_pending_irq>:
 e009d68:	e200201f 	and	r2, r0, #31
 e009d6c:	e3a03001 	mov	r3, #1
 e009d70:	e1a03213 	lsl	r3, r3, r2
 e009d74:	f57ff05f 	dmb	sy
 e009d78:	e3a02d4a 	mov	r2, #4736	; 0x1280
 e009d7c:	e34a2010 	movt	r2, #40976	; 0xa010
 e009d80:	e1a002a0 	lsr	r0, r0, #5
 e009d84:	e7823100 	str	r3, [r2, r0, lsl #2]
 e009d88:	e12fff1e 	bx	lr

0e009d8c <arm_gic_eoi>:
 e009d8c:	f57ff05f 	dmb	sy
 e009d90:	e3a03a02 	mov	r3, #8192	; 0x2000
 e009d94:	e34a3010 	movt	r3, #40976	; 0xa010
 e009d98:	e5830010 	str	r0, [r3, #16]
 e009d9c:	e12fff1e 	bx	lr

0e009da0 <arm_gic_raise_softirq>:
 e009da0:	e3500007 	cmp	r0, #7
 e009da4:	9351000f 	cmpls	r1, #15
 e009da8:	812fff1e 	bxhi	lr
 e009dac:	e2800010 	add	r0, r0, #16
 e009db0:	e3a03001 	mov	r3, #1
 e009db4:	e1811013 	orr	r1, r1, r3, lsl r0
 e009db8:	f57ff05f 	dmb	sy
 e009dbc:	e3a03a01 	mov	r3, #4096	; 0x1000
 e009dc0:	e34a3010 	movt	r3, #40976	; 0xa010
 e009dc4:	e5831f00 	str	r1, [r3, #3840]	; 0xf00
 e009dc8:	e12fff1e 	bx	lr

0e009dcc <arm_gic_init_secondary>:
 e009dcc:	e92d4010 	push	{r4, lr}
 e009dd0:	ebffff91 	bl	e009c1c <gic_cpu_init>
 e009dd4:	e3a00000 	mov	r0, #0
 e009dd8:	e8bd8010 	pop	{r4, pc}

0e009ddc <arm_gic_init>:
 e009ddc:	e3a01a01 	mov	r1, #4096	; 0x1000
 e009de0:	e34a1010 	movt	r1, #40976	; 0xa010
 e009de4:	e92d4010 	push	{r4, lr}
 e009de8:	e5912004 	ldr	r2, [r1, #4]
 e009dec:	f57ff05f 	dmb	sy
 e009df0:	e202201f 	and	r2, r2, #31
 e009df4:	e2822001 	add	r2, r2, #1
 e009df8:	e1a02282 	lsl	r2, r2, #5
 e009dfc:	e3520080 	cmp	r2, #128	; 0x80
 e009e00:	31a03002 	movcc	r3, r2
 e009e04:	23a03080 	movcs	r3, #128	; 0x80
 e009e08:	f57ff05f 	dmb	sy
 e009e0c:	e3a00000 	mov	r0, #0
 e009e10:	e3520020 	cmp	r2, #32
 e009e14:	e5810000 	str	r0, [r1]
 e009e18:	0a000032 	beq	e009ee8 <arm_gic_init+0x10c>
 e009e1c:	e3a00b06 	mov	r0, #6144	; 0x1800
 e009e20:	e34a0010 	movt	r0, #40976	; 0xa010
 e009e24:	e3001101 	movw	r1, #257	; 0x101
 e009e28:	e3401101 	movt	r1, #257	; 0x101
 e009e2c:	e3a02020 	mov	r2, #32
 e009e30:	f57ff05f 	dmb	sy
 e009e34:	e7821000 	str	r1, [r2, r0]
 e009e38:	e2822004 	add	r2, r2, #4
 e009e3c:	e1530002 	cmp	r3, r2
 e009e40:	8afffffa 	bhi	e009e30 <arm_gic_init+0x54>
 e009e44:	e3a01b07 	mov	r1, #7168	; 0x1c00
 e009e48:	e34a1010 	movt	r1, #40976	; 0xa010
 e009e4c:	e3a02020 	mov	r2, #32
 e009e50:	e3a00000 	mov	r0, #0
 e009e54:	f57ff05f 	dmb	sy
 e009e58:	e7810122 	str	r0, [r1, r2, lsr #2]
 e009e5c:	e2822010 	add	r2, r2, #16
 e009e60:	e1530002 	cmp	r3, r2
 e009e64:	8afffffa 	bhi	e009e54 <arm_gic_init+0x78>
 e009e68:	e3a00b05 	mov	r0, #5120	; 0x1400
 e009e6c:	e34a0010 	movt	r0, #40976	; 0xa010
 e009e70:	e30a10a0 	movw	r1, #41120	; 0xa0a0
 e009e74:	e34a10a0 	movt	r1, #41120	; 0xa0a0
 e009e78:	e3a02020 	mov	r2, #32
 e009e7c:	f57ff05f 	dmb	sy
 e009e80:	e7821000 	str	r1, [r2, r0]
 e009e84:	e2822004 	add	r2, r2, #4
 e009e88:	e1530002 	cmp	r3, r2
 e009e8c:	8afffffa 	bhi	e009e7c <arm_gic_init+0xa0>
 e009e90:	e3a01d42 	mov	r1, #4224	; 0x1080
 e009e94:	e34a1010 	movt	r1, #40976	; 0xa010
 e009e98:	e3a02020 	mov	r2, #32
 e009e9c:	e3e00000 	mvn	r0, #0
 e009ea0:	f57ff05f 	dmb	sy
 e009ea4:	e78101a2 	str	r0, [r1, r2, lsr #3]
 e009ea8:	e2822020 	add	r2, r2, #32
 e009eac:	e1530002 	cmp	r3, r2
 e009eb0:	8afffffa 	bhi	e009ea0 <arm_gic_init+0xc4>
 e009eb4:	e3a0cd4e 	mov	ip, #4992	; 0x1380
 e009eb8:	e34ac010 	movt	ip, #40976	; 0xa010
 e009ebc:	e3a00d46 	mov	r0, #4480	; 0x1180
 e009ec0:	e34a0010 	movt	r0, #40976	; 0xa010
 e009ec4:	e3a02020 	mov	r2, #32
 e009ec8:	e3e01000 	mvn	r1, #0
 e009ecc:	f57ff05f 	dmb	sy
 e009ed0:	e78c11a2 	str	r1, [ip, r2, lsr #3]
 e009ed4:	f57ff05f 	dmb	sy
 e009ed8:	e78011a2 	str	r1, [r0, r2, lsr #3]
 e009edc:	e2822020 	add	r2, r2, #32
 e009ee0:	e1530002 	cmp	r3, r2
 e009ee4:	8afffff8 	bhi	e009ecc <arm_gic_init+0xf0>
 e009ee8:	f57ff05f 	dmb	sy
 e009eec:	e3a03a01 	mov	r3, #4096	; 0x1000
 e009ef0:	e34a3010 	movt	r3, #40976	; 0xa010
 e009ef4:	e3a02003 	mov	r2, #3
 e009ef8:	e5832000 	str	r2, [r3]
 e009efc:	ebffff46 	bl	e009c1c <gic_cpu_init>
 e009f00:	e3a00000 	mov	r0, #0
 e009f04:	e8bd8010 	pop	{r4, pc}

0e009f08 <_read>:
 e009f08:	e2520000 	subs	r0, r2, #0
 e009f0c:	da000006 	ble	e009f2c <_read+0x24>
 e009f10:	e2411001 	sub	r1, r1, #1
 e009f14:	e081c000 	add	ip, r1, r0
 e009f18:	e3a03000 	mov	r3, #0
 e009f1c:	e5e13001 	strb	r3, [r1, #1]!
 e009f20:	e151000c 	cmp	r1, ip
 e009f24:	1afffffc 	bne	e009f1c <_read+0x14>
 e009f28:	e12fff1e 	bx	lr
 e009f2c:	e3a00000 	mov	r0, #0
 e009f30:	e12fff1e 	bx	lr

0e009f34 <_write>:
 e009f34:	e92d4070 	push	{r4, r5, r6, lr}
 e009f38:	e2526000 	subs	r6, r2, #0
 e009f3c:	da000006 	ble	e009f5c <_write+0x28>
 e009f40:	e2414001 	sub	r4, r1, #1
 e009f44:	e0845006 	add	r5, r4, r6
 e009f48:	e5f41001 	ldrb	r1, [r4, #1]!
 e009f4c:	e1a00001 	mov	r0, r1
 e009f50:	eb00283e 	bl	e014050 <____PutCharacter_veneer>
 e009f54:	e1540005 	cmp	r4, r5
 e009f58:	1afffffa 	bne	e009f48 <_write+0x14>
 e009f5c:	e1a00006 	mov	r0, r6
 e009f60:	e8bd8070 	pop	{r4, r5, r6, pc}

0e009f64 <_close>:
 e009f64:	e3a00000 	mov	r0, #0
 e009f68:	e12fff1e 	bx	lr

0e009f6c <_isatty>:
 e009f6c:	e3a00001 	mov	r0, #1
 e009f70:	e12fff1e 	bx	lr

0e009f74 <_lseek>:
 e009f74:	e3033160 	movw	r3, #12640	; 0x3160
 e009f78:	e346300a 	movt	r3, #24586	; 0x600a
 e009f7c:	e3a0201d 	mov	r2, #29
 e009f80:	e3e00000 	mvn	r0, #0
 e009f84:	e5832000 	str	r2, [r3]
 e009f88:	e12fff1e 	bx	lr

0e009f8c <_fstat>:
 e009f8c:	e3a03a02 	mov	r3, #8192	; 0x2000
 e009f90:	e3a00000 	mov	r0, #0
 e009f94:	e5813004 	str	r3, [r1, #4]
 e009f98:	e12fff1e 	bx	lr

0e009f9c <_getpid>:
 e009f9c:	e3a00001 	mov	r0, #1
 e009fa0:	e12fff1e 	bx	lr

0e009fa4 <_kill>:
 e009fa4:	e3500001 	cmp	r0, #1
 e009fa8:	0a000001 	beq	e009fb4 <_kill+0x10>
 e009fac:	e3a00000 	mov	r0, #0
 e009fb0:	e12fff1e 	bx	lr
 e009fb4:	e1a00001 	mov	r0, r1
 e009fb8:	e92d4010 	push	{r4, lr}
 e009fbc:	ebfff4d9 	bl	e007328 <_exit>
 e009fc0:	e3a00000 	mov	r0, #0
 e009fc4:	e8bd8010 	pop	{r4, pc}

0e009fc8 <vGetGenericTimerFreq>:
 e009fc8:	e92d4010 	push	{r4, lr}
 e009fcc:	e30336ec 	movw	r3, #14060	; 0x36ec
 e009fd0:	e3403e01 	movt	r3, #3585	; 0xe01
 e009fd4:	e12fff33 	blx	r3
 e009fd8:	e3500001 	cmp	r0, #1
 e009fdc:	0a000005 	beq	e009ff8 <vGetGenericTimerFreq+0x30>
 e009fe0:	e309378c 	movw	r3, #38796	; 0x978c
 e009fe4:	e3403e00 	movt	r3, #3584	; 0xe00
 e009fe8:	e12fff33 	blx	r3
 e009fec:	e3a01000 	mov	r1, #0
 e009ff0:	e1a000a0 	lsr	r0, r0, #1
 e009ff4:	e8bd8010 	pop	{r4, pc}
 e009ff8:	e3a01000 	mov	r1, #0
 e009ffc:	e30b0c20 	movw	r0, #48160	; 0xbc20
 e00a000:	e34000be 	movt	r0, #190	; 0xbe
 e00a004:	e8bd8010 	pop	{r4, pc}

0e00a008 <prvSetupHardware>:
 e00a008:	e92d4010 	push	{r4, lr}
 e00a00c:	eb002027 	bl	e0120b0 <ulPortInterruptLock>
 e00a010:	e30336ec 	movw	r3, #14060	; 0x36ec
 e00a014:	e3403e01 	movt	r3, #3585	; 0xe01
 e00a018:	e12fff33 	blx	r3
 e00a01c:	e3500001 	cmp	r0, #1
 e00a020:	0a000010 	beq	e00a068 <prvSetupHardware+0x60>
 e00a024:	e309378c 	movw	r3, #38796	; 0x978c
 e00a028:	e3403e00 	movt	r3, #3584	; 0xe00
 e00a02c:	e12fff33 	blx	r3
 e00a030:	e3a02000 	mov	r2, #0
 e00a034:	e1a000a0 	lsr	r0, r0, #1
 e00a038:	e30334b0 	movw	r3, #13488	; 0x34b0
 e00a03c:	e346300a 	movt	r3, #24586	; 0x600a
 e00a040:	e8830005 	stm	r3, {r0, r2}
 e00a044:	ebffff64 	bl	e009ddc <arm_gic_init>
 e00a048:	eb0001eb 	bl	e00a7fc <psci_init>
 e00a04c:	eb000284 	bl	e00aa64 <smp_init>
 e00a050:	e3a03c82 	mov	r3, #33280	; 0x8200
 e00a054:	e3443200 	movt	r3, #16896	; 0x4200
 e00a058:	e5d32066 	ldrb	r2, [r3, #102]	; 0x66
 e00a05c:	e3822002 	orr	r2, r2, #2
 e00a060:	e5c32066 	strb	r2, [r3, #102]	; 0x66
 e00a064:	e8bd8010 	pop	{r4, pc}
 e00a068:	e30b0c20 	movw	r0, #48160	; 0xbc20
 e00a06c:	e34000be 	movt	r0, #190	; 0xbe
 e00a070:	e3a02000 	mov	r2, #0
 e00a074:	eaffffef 	b	e00a038 <prvSetupHardware+0x30>

0e00a078 <prvSetupHardwareSecondary>:
 e00a078:	e92d4010 	push	{r4, lr}
 e00a07c:	eb00200b 	bl	e0120b0 <ulPortInterruptLock>
 e00a080:	e8bd4010 	pop	{r4, lr}
 e00a084:	eaffff50 	b	e009dcc <arm_gic_init_secondary>

0e00a088 <vDisableIPIInterrupt>:
 e00a088:	e30334b8 	movw	r3, #13496	; 0x34b8
 e00a08c:	e346300a 	movt	r3, #24586	; 0x600a
 e00a090:	e92d4010 	push	{r4, lr}
 e00a094:	e3a02000 	mov	r2, #0
 e00a098:	e3a00001 	mov	r0, #1
 e00a09c:	e5832008 	str	r2, [r3, #8]
 e00a0a0:	e583200c 	str	r2, [r3, #12]
 e00a0a4:	ebffff0a 	bl	e009cd4 <arm_gic_irq_disable>
 e00a0a8:	e8bd4010 	pop	{r4, lr}
 e00a0ac:	e3a00001 	mov	r0, #1
 e00a0b0:	eaffff2c 	b	e009d68 <arm_gic_clear_pending_irq>

0e00a0b4 <vConfigureIPIInterrupt>:
 e00a0b4:	e92d4070 	push	{r4, r5, r6, lr}
 e00a0b8:	e30344b8 	movw	r4, #13496	; 0x34b8
 e00a0bc:	e346400a 	movt	r4, #24586	; 0x600a
 e00a0c0:	e3a05000 	mov	r5, #0
 e00a0c4:	e1a02005 	mov	r2, r5
 e00a0c8:	e3a010a0 	mov	r1, #160	; 0xa0
 e00a0cc:	e1a00005 	mov	r0, r5
 e00a0d0:	e30230f8 	movw	r3, #8440	; 0x20f8
 e00a0d4:	e3403e01 	movt	r3, #3585	; 0xe01
 e00a0d8:	e5843000 	str	r3, [r4]
 e00a0dc:	e5845004 	str	r5, [r4, #4]
 e00a0e0:	ebffff04 	bl	e009cf8 <arm_gic_irq_set_priority>
 e00a0e4:	e1a00005 	mov	r0, r5
 e00a0e8:	ebfffef0 	bl	e009cb0 <arm_gic_irq_enable>
 e00a0ec:	e1a02005 	mov	r2, r5
 e00a0f0:	e3a010a0 	mov	r1, #160	; 0xa0
 e00a0f4:	e3a00001 	mov	r0, #1
 e00a0f8:	e3023130 	movw	r3, #8496	; 0x2130
 e00a0fc:	e3403e01 	movt	r3, #3585	; 0xe01
 e00a100:	e5843008 	str	r3, [r4, #8]
 e00a104:	e584500c 	str	r5, [r4, #12]
 e00a108:	ebfffefa 	bl	e009cf8 <arm_gic_irq_set_priority>
 e00a10c:	e3a00001 	mov	r0, #1
 e00a110:	ebfffee6 	bl	e009cb0 <arm_gic_irq_enable>
 e00a114:	e3a00002 	mov	r0, #2
 e00a118:	e1a02005 	mov	r2, r5
 e00a11c:	e3a010a0 	mov	r1, #160	; 0xa0
 e00a120:	e3043508 	movw	r3, #17672	; 0x4508
 e00a124:	e3463009 	movt	r3, #24585	; 0x6009
 e00a128:	e5843010 	str	r3, [r4, #16]
 e00a12c:	e5845014 	str	r5, [r4, #20]
 e00a130:	ebfffef0 	bl	e009cf8 <arm_gic_irq_set_priority>
 e00a134:	e8bd4070 	pop	{r4, r5, r6, lr}
 e00a138:	e3a00002 	mov	r0, #2
 e00a13c:	eafffedb 	b	e009cb0 <arm_gic_irq_enable>

0e00a140 <vConfigureSMPSendIPI>:
 e00a140:	e92d4010 	push	{r4, lr}
 e00a144:	e1a04000 	mov	r4, r0
 e00a148:	eb0003e7 	bl	e00b0ec <pmu_get_secondary_cpu_state>
 e00a14c:	e2501000 	subs	r1, r0, #0
 e00a150:	18bd8010 	popne	{r4, pc}
 e00a154:	e1a00004 	mov	r0, r4
 e00a158:	e8bd4010 	pop	{r4, lr}
 e00a15c:	eaffff0f 	b	e009da0 <arm_gic_raise_softirq>

0e00a160 <vConfigureTickInterrupt>:
 e00a160:	e30334b8 	movw	r3, #13496	; 0x34b8
 e00a164:	e346300a 	movt	r3, #24586	; 0x600a
 e00a168:	e92d4370 	push	{r4, r5, r6, r8, r9, lr}
 e00a16c:	e3022064 	movw	r2, #8292	; 0x2064
 e00a170:	e3402e01 	movt	r2, #3585	; 0xe01
 e00a174:	e3a06000 	mov	r6, #0
 e00a178:	e58320d8 	str	r2, [r3, #216]	; 0xd8
 e00a17c:	e58360dc 	str	r6, [r3, #220]	; 0xdc
 e00a180:	ec598f1e 	mrrc	15, 1, r8, r9, cr14
 e00a184:	e30334b0 	movw	r3, #13488	; 0x34b0
 e00a188:	e346300a 	movt	r3, #24586	; 0x600a
 e00a18c:	e3a02ffa 	mov	r2, #1000	; 0x3e8
 e00a190:	e1c300d0 	ldrd	r0, [r3]
 e00a194:	e3a03000 	mov	r3, #0
 e00a198:	ebffd87d 	bl	e000394 <__aeabi_uldivmod>
 e00a19c:	e0902008 	adds	r2, r0, r8
 e00a1a0:	e0a13009 	adc	r3, r1, r9
 e00a1a4:	ec432f3e 	mcrr	15, 3, r2, r3, cr14
 e00a1a8:	e3a03001 	mov	r3, #1
 e00a1ac:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
 e00a1b0:	e3a0001b 	mov	r0, #27
 e00a1b4:	e1a02006 	mov	r2, r6
 e00a1b8:	e3a010e0 	mov	r1, #224	; 0xe0
 e00a1bc:	ebfffecd 	bl	e009cf8 <arm_gic_irq_set_priority>
 e00a1c0:	e8bd4370 	pop	{r4, r5, r6, r8, r9, lr}
 e00a1c4:	e3a0001b 	mov	r0, #27
 e00a1c8:	eafffeb8 	b	e009cb0 <arm_gic_irq_enable>

0e00a1cc <vClearTickInterrupt>:
 e00a1cc:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e00a1d0:	e24dd008 	sub	sp, sp, #8
 e00a1d4:	ec532f3e 	mrrc	15, 3, r2, r3, cr14
 e00a1d8:	e1a00002 	mov	r0, r2
 e00a1dc:	e1a01003 	mov	r1, r3
 e00a1e0:	e1a05002 	mov	r5, r2
 e00a1e4:	e1a0a003 	mov	sl, r3
 e00a1e8:	ec532f1e 	mrrc	15, 1, r2, r3, cr14
 e00a1ec:	e1520000 	cmp	r2, r0
 e00a1f0:	e0d33001 	sbcs	r3, r3, r1
 e00a1f4:	e1cd00f0 	strd	r0, [sp]
 e00a1f8:	3a000015 	bcc	e00a254 <vClearTickInterrupt+0x88>
 e00a1fc:	ec598f1e 	mrrc	15, 1, r8, r9, cr14
 e00a200:	e30334b0 	movw	r3, #13488	; 0x34b0
 e00a204:	e346300a 	movt	r3, #24586	; 0x600a
 e00a208:	e3a02ffa 	mov	r2, #1000	; 0x3e8
 e00a20c:	e1c300d0 	ldrd	r0, [r3]
 e00a210:	e3a03000 	mov	r3, #0
 e00a214:	ebffd85e 	bl	e000394 <__aeabi_uldivmod>
 e00a218:	e1a04001 	mov	r4, r1
 e00a21c:	e1a02000 	mov	r2, r0
 e00a220:	e0580005 	subs	r0, r8, r5
 e00a224:	e0c9100a 	sbc	r1, r9, sl
 e00a228:	e1a03004 	mov	r3, r4
 e00a22c:	e1a06002 	mov	r6, r2
 e00a230:	ebffd857 	bl	e000394 <__aeabi_uldivmod>
 e00a234:	e0244490 	mla	r4, r0, r4, r4
 e00a238:	e2800001 	add	r0, r0, #1
 e00a23c:	e59d1004 	ldr	r1, [sp, #4]
 e00a240:	e0860690 	umull	r0, r6, r0, r6
 e00a244:	e0844006 	add	r4, r4, r6
 e00a248:	e0902005 	adds	r2, r0, r5
 e00a24c:	e0a43001 	adc	r3, r4, r1
 e00a250:	ec432f3e 	mcrr	15, 3, r2, r3, cr14
 e00a254:	e28dd008 	add	sp, sp, #8
 e00a258:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

0e00a25c <vRegisterIRQHandler>:
 e00a25c:	e350007f 	cmp	r0, #127	; 0x7f
 e00a260:	930334b8 	movwls	r3, #13496	; 0x34b8
 e00a264:	9346300a 	movtls	r3, #24586	; 0x600a
 e00a268:	9083c180 	addls	ip, r3, r0, lsl #3
 e00a26c:	97831180 	strls	r1, [r3, r0, lsl #3]
 e00a270:	958c2004 	strls	r2, [ip, #4]
 e00a274:	e12fff1e 	bx	lr

0e00a278 <vApplicationFPUSafeIRQHandler>:
 e00a278:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e00a27c:	eb001fa6 	bl	e01211c <ulPortGetCoreId>
 e00a280:	e3a05a02 	mov	r5, #8192	; 0x2000
 e00a284:	e34a5010 	movt	r5, #40976	; 0xa010
 e00a288:	e3048304 	movw	r8, #17156	; 0x4304
 e00a28c:	e346800a 	movt	r8, #24586	; 0x600a
 e00a290:	e30364b8 	movw	r6, #13496	; 0x34b8
 e00a294:	e346600a 	movt	r6, #24586	; 0x600a
 e00a298:	e1a07000 	mov	r7, r0
 e00a29c:	ebfffeab 	bl	e009d50 <arm_gic_get_active>
 e00a2a0:	e7e94050 	ubfx	r4, r0, #0, #10
 e00a2a4:	e30033ff 	movw	r3, #1023	; 0x3ff
 e00a2a8:	e1540003 	cmp	r4, r3
 e00a2ac:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
 e00a2b0:	e3100d0e 	tst	r0, #896	; 0x380
 e00a2b4:	18bd87f0 	popne	{r4, r5, r6, r7, r8, r9, sl, pc}
 e00a2b8:	e5959004 	ldr	r9, [r5, #4]
 e00a2bc:	e5953014 	ldr	r3, [r5, #20]
 e00a2c0:	e5853004 	str	r3, [r5, #4]
 e00a2c4:	f57ff04f 	dsb	sy
 e00a2c8:	f57ff06f 	isb	sy
 e00a2cc:	e7983107 	ldr	r3, [r8, r7, lsl #2]
 e00a2d0:	e353000f 	cmp	r3, #15
 e00a2d4:	8a000002 	bhi	e00a2e4 <vApplicationFPUSafeIRQHandler+0x6c>
 e00a2d8:	f1080080 	cpsie	i
 e00a2dc:	f57ff04f 	dsb	sy
 e00a2e0:	f57ff06f 	isb	sy
 e00a2e4:	e7963184 	ldr	r3, [r6, r4, lsl #3]
 e00a2e8:	e0862184 	add	r2, r6, r4, lsl #3
 e00a2ec:	e3530000 	cmp	r3, #0
 e00a2f0:	0a000008 	beq	e00a318 <vApplicationFPUSafeIRQHandler+0xa0>
 e00a2f4:	e5920004 	ldr	r0, [r2, #4]
 e00a2f8:	e12fff33 	blx	r3
 e00a2fc:	f10c0080 	cpsid	i
 e00a300:	f57ff04f 	dsb	sy
 e00a304:	f57ff06f 	isb	sy
 e00a308:	e1a00004 	mov	r0, r4
 e00a30c:	ebfffe9e 	bl	e009d8c <arm_gic_eoi>
 e00a310:	e5859004 	str	r9, [r5, #4]
 e00a314:	eaffffe0 	b	e00a29c <vApplicationFPUSafeIRQHandler+0x24>
 e00a318:	e3040e7c 	movw	r0, #20092	; 0x4e7c
 e00a31c:	e3400e01 	movt	r0, #3585	; 0xe01
 e00a320:	e1a01004 	mov	r1, r4
 e00a324:	eb000ce9 	bl	e00d6d0 <__wrap_printf>
 e00a328:	eafffffe 	b	e00a328 <vApplicationFPUSafeIRQHandler+0xb0>

0e00a32c <irq_enable>:
 e00a32c:	e2800020 	add	r0, r0, #32
 e00a330:	eafffe5e 	b	e009cb0 <arm_gic_irq_enable>

0e00a334 <irq_register>:
 e00a334:	e92d4070 	push	{r4, r5, r6, lr}
 e00a338:	e2814020 	add	r4, r1, #32
 e00a33c:	e1a05003 	mov	r5, r3
 e00a340:	e1a01000 	mov	r1, r0
 e00a344:	e1a00004 	mov	r0, r4
 e00a348:	ebffffc3 	bl	e00a25c <vRegisterIRQHandler>
 e00a34c:	e1a00004 	mov	r0, r4
 e00a350:	e3a02000 	mov	r2, #0
 e00a354:	e1a01005 	mov	r1, r5
 e00a358:	ebfffe66 	bl	e009cf8 <arm_gic_irq_set_priority>
 e00a35c:	e3a00001 	mov	r0, #1
 e00a360:	e8bd8070 	pop	{r4, r5, r6, pc}

0e00a364 <_init>:
 e00a364:	e12fff1e 	bx	lr

0e00a368 <app_start>:
 e00a368:	e3033b88 	movw	r3, #15240	; 0x3b88
 e00a36c:	e346300a 	movt	r3, #24586	; 0x600a
 e00a370:	e92d4010 	push	{r4, lr}
 e00a374:	e3e02000 	mvn	r2, #0
 e00a378:	e5832000 	str	r2, [r3]
 e00a37c:	eb000c09 	bl	e00d3a8 <rtos_mem_init>
 e00a380:	ebffda33 	bl	e000c54 <__libc_init_array>
 e00a384:	ebffff1f 	bl	e00a008 <prvSetupHardware>
 e00a388:	e3a03902 	mov	r3, #32768	; 0x8000
 e00a38c:	e3443200 	movt	r3, #16896	; 0x4200
 e00a390:	e3a02074 	mov	r2, #116	; 0x74
 e00a394:	e3080ac0 	movw	r0, #35520	; 0x8ac0
 e00a398:	e346000a 	movt	r0, #24586	; 0x600a
 e00a39c:	e5931270 	ldr	r1, [r3, #624]	; 0x270
 e00a3a0:	e30c3794 	movw	r3, #51092	; 0xc794
 e00a3a4:	e3403e00 	movt	r3, #3584	; 0xe00
 e00a3a8:	e12fff33 	blx	r3
 e00a3ac:	e8bd4010 	pop	{r4, lr}
 e00a3b0:	ea000d4e 	b	e00d8f0 <main>

0e00a3b4 <FIQHandler>:
 e00a3b4:	eafffffe 	b	e00a3b4 <FIQHandler>

0e00a3b8 <Crash_GetExStack>:
 e00a3b8:	e10fc000 	mrs	ip, CPSR
 e00a3bc:	e200001f 	and	r0, r0, #31
 e00a3c0:	e2400010 	sub	r0, r0, #16
 e00a3c4:	e350000b 	cmp	r0, #11
 e00a3c8:	979ff100 	ldrls	pc, [pc, r0, lsl #2]
 e00a3cc:	ea00000b 	b	e00a400 <Crash_GetExStack+0x48>
 e00a3d0:	0e00a424 	.word	0x0e00a424
 e00a3d4:	0e00a400 	.word	0x0e00a400
 e00a3d8:	0e00a42c 	.word	0x0e00a42c
 e00a3dc:	0e00a434 	.word	0x0e00a434
 e00a3e0:	0e00a400 	.word	0x0e00a400
 e00a3e4:	0e00a400 	.word	0x0e00a400
 e00a3e8:	0e00a400 	.word	0x0e00a400
 e00a3ec:	0e00a43c 	.word	0x0e00a43c
 e00a3f0:	0e00a400 	.word	0x0e00a400
 e00a3f4:	0e00a400 	.word	0x0e00a400
 e00a3f8:	0e00a400 	.word	0x0e00a400
 e00a3fc:	0e00a444 	.word	0x0e00a444
 e00a400:	f102001f 	cps	#31
 e00a404:	e1a0000d 	mov	r0, sp
 e00a408:	e1a0300e 	mov	r3, lr
 e00a40c:	e129f00c 	msr	CPSR_fc, ip
 e00a410:	f57ff04f 	dsb	sy
 e00a414:	f57ff06f 	isb	sy
 e00a418:	e5810000 	str	r0, [r1]
 e00a41c:	e5823000 	str	r3, [r2]
 e00a420:	e12fff1e 	bx	lr
 e00a424:	f1020010 	cps	#16
 e00a428:	eafffff5 	b	e00a404 <Crash_GetExStack+0x4c>
 e00a42c:	f1020012 	cps	#18
 e00a430:	eafffff3 	b	e00a404 <Crash_GetExStack+0x4c>
 e00a434:	f1020013 	cps	#19
 e00a438:	eafffff1 	b	e00a404 <Crash_GetExStack+0x4c>
 e00a43c:	f1020017 	cps	#23
 e00a440:	eaffffef 	b	e00a404 <Crash_GetExStack+0x4c>
 e00a444:	f102001b 	cps	#27
 e00a448:	eaffffed 	b	e00a404 <Crash_GetExStack+0x4c>

0e00a44c <Crash_DumpReg>:
 e00a44c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e00a450:	e59f7160 	ldr	r7, [pc, #352]	; e00a5b8 <Crash_DumpReg+0x16c>
 e00a454:	e1a06000 	mov	r6, r0
 e00a458:	e24dd01c 	sub	sp, sp, #28
 e00a45c:	e1a08001 	mov	r8, r1
 e00a460:	e304aeb4 	movw	sl, #20148	; 0x4eb4
 e00a464:	e340ae01 	movt	sl, #3585	; 0xe01
 e00a468:	eb001f2b 	bl	e01211c <ulPortGetCoreId>
 e00a46c:	e286901c 	add	r9, r6, #28
 e00a470:	e3042eac 	movw	r2, #20140	; 0x4eac
 e00a474:	e3402e01 	movt	r2, #3585	; 0xe01
 e00a478:	e1a05000 	mov	r5, r0
 e00a47c:	e1a04007 	mov	r4, r7
 e00a480:	e287b014 	add	fp, r7, #20
 e00a484:	ea000000 	b	e00a48c <Crash_DumpReg+0x40>
 e00a488:	e5b42004 	ldr	r2, [r4, #4]!
 e00a48c:	e5b93004 	ldr	r3, [r9, #4]!
 e00a490:	e1a01005 	mov	r1, r5
 e00a494:	e1a0000a 	mov	r0, sl
 e00a498:	eb000c8c 	bl	e00d6d0 <__wrap_printf>
 e00a49c:	e154000b 	cmp	r4, fp
 e00a4a0:	1afffff8 	bne	e00a488 <Crash_DumpReg+0x3c>
 e00a4a4:	e3042eb0 	movw	r2, #20144	; 0x4eb0
 e00a4a8:	e3402e01 	movt	r2, #3585	; 0xe01
 e00a4ac:	e3049eb4 	movw	r9, #20148	; 0x4eb4
 e00a4b0:	e3409e01 	movt	r9, #3585	; 0xe01
 e00a4b4:	e59f4100 	ldr	r4, [pc, #256]	; e00a5bc <Crash_DumpReg+0x170>
 e00a4b8:	e2466004 	sub	r6, r6, #4
 e00a4bc:	ea000000 	b	e00a4c4 <Crash_DumpReg+0x78>
 e00a4c0:	e4942004 	ldr	r2, [r4], #4
 e00a4c4:	e5b63004 	ldr	r3, [r6, #4]!
 e00a4c8:	e1a01005 	mov	r1, r5
 e00a4cc:	e1a00009 	mov	r0, r9
 e00a4d0:	eb000c7e 	bl	e00d6d0 <__wrap_printf>
 e00a4d4:	e1540007 	cmp	r4, r7
 e00a4d8:	1afffff8 	bne	e00a4c0 <Crash_DumpReg+0x74>
 e00a4dc:	e1a02008 	mov	r2, r8
 e00a4e0:	e1a01005 	mov	r1, r5
 e00a4e4:	e3040ecc 	movw	r0, #20172	; 0x4ecc
 e00a4e8:	e3400e01 	movt	r0, #3585	; 0xe01
 e00a4ec:	eb000c77 	bl	e00d6d0 <__wrap_printf>
 e00a4f0:	e1a00008 	mov	r0, r8
 e00a4f4:	e28d2014 	add	r2, sp, #20
 e00a4f8:	e28d1010 	add	r1, sp, #16
 e00a4fc:	ebffffad 	bl	e00a3b8 <Crash_GetExStack>
 e00a500:	e59d2014 	ldr	r2, [sp, #20]
 e00a504:	e1a01005 	mov	r1, r5
 e00a508:	e3040ef8 	movw	r0, #20216	; 0x4ef8
 e00a50c:	e3400e01 	movt	r0, #3585	; 0xe01
 e00a510:	eb000c6e 	bl	e00d6d0 <__wrap_printf>
 e00a514:	e59d8010 	ldr	r8, [sp, #16]
 e00a518:	e3040f24 	movw	r0, #20260	; 0x4f24
 e00a51c:	e3400e01 	movt	r0, #3585	; 0xe01
 e00a520:	e3a03080 	mov	r3, #128	; 0x80
 e00a524:	e1a02008 	mov	r2, r8
 e00a528:	e1a01005 	mov	r1, r5
 e00a52c:	e3046f6c 	movw	r6, #20332	; 0x4f6c
 e00a530:	e3406e01 	movt	r6, #3585	; 0xe01
 e00a534:	e2887c02 	add	r7, r8, #512	; 0x200
 e00a538:	e1a04008 	mov	r4, r8
 e00a53c:	eb000c63 	bl	e00d6d0 <__wrap_printf>
 e00a540:	e594200c 	ldr	r2, [r4, #12]
 e00a544:	e5943000 	ldr	r3, [r4]
 e00a548:	e58d2008 	str	r2, [sp, #8]
 e00a54c:	e1a01005 	mov	r1, r5
 e00a550:	e594c008 	ldr	ip, [r4, #8]
 e00a554:	e58dc004 	str	ip, [sp, #4]
 e00a558:	e1a02004 	mov	r2, r4
 e00a55c:	e594c004 	ldr	ip, [r4, #4]
 e00a560:	e1a00006 	mov	r0, r6
 e00a564:	e2844010 	add	r4, r4, #16
 e00a568:	e58dc000 	str	ip, [sp]
 e00a56c:	eb000c57 	bl	e00d6d0 <__wrap_printf>
 e00a570:	e1570004 	cmp	r7, r4
 e00a574:	1afffff1 	bne	e00a540 <Crash_DumpReg+0xf4>
 e00a578:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
 e00a57c:	e3130004 	tst	r3, #4
 e00a580:	0a00000a 	beq	e00a5b0 <Crash_DumpReg+0x164>
 e00a584:	e288307f 	add	r3, r8, #127	; 0x7f
 e00a588:	e3c3303f 	bic	r3, r3, #63	; 0x3f
 e00a58c:	e3c8803f 	bic	r8, r8, #63	; 0x3f
 e00a590:	e2833040 	add	r3, r3, #64	; 0x40
 e00a594:	e1580003 	cmp	r8, r3
 e00a598:	2a000003 	bcs	e00a5ac <Crash_DumpReg+0x160>
 e00a59c:	ee078f3a 	mcr	15, 0, r8, cr7, cr10, {1}
 e00a5a0:	e2888040 	add	r8, r8, #64	; 0x40
 e00a5a4:	e1530008 	cmp	r3, r8
 e00a5a8:	8afffffb 	bhi	e00a59c <Crash_DumpReg+0x150>
 e00a5ac:	f57ff05f 	dmb	sy
 e00a5b0:	e28dd01c 	add	sp, sp, #28
 e00a5b4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00a5b8:	0e0150c8 	.word	0x0e0150c8
 e00a5bc:	0e0150ac 	.word	0x0e0150ac

0e00a5c0 <UndefinedExceptionHandler>:
 e00a5c0:	e30338c0 	movw	r3, #14528	; 0x38c0
 e00a5c4:	e346300a 	movt	r3, #24586	; 0x600a
 e00a5c8:	e92d4070 	push	{r4, r5, r6, lr}
 e00a5cc:	e1a05001 	mov	r5, r1
 e00a5d0:	e1a04000 	mov	r4, r0
 e00a5d4:	e5931000 	ldr	r1, [r3]
 e00a5d8:	e3040fa0 	movw	r0, #20384	; 0x4fa0
 e00a5dc:	e3400e01 	movt	r0, #3585	; 0xe01
 e00a5e0:	eb000c3a 	bl	e00d6d0 <__wrap_printf>
 e00a5e4:	e1a01005 	mov	r1, r5
 e00a5e8:	e1a00004 	mov	r0, r4
 e00a5ec:	ebffff96 	bl	e00a44c <Crash_DumpReg>
 e00a5f0:	eafffffe 	b	e00a5f0 <UndefinedExceptionHandler+0x30>

0e00a5f4 <DataAbortHandler>:
 e00a5f4:	e92d4070 	push	{r4, r5, r6, lr}
 e00a5f8:	e1a04000 	mov	r4, r0
 e00a5fc:	e1a05001 	mov	r5, r1
 e00a600:	ee151f10 	mrc	15, 0, r1, cr5, cr0, {0}
 e00a604:	e3040fd0 	movw	r0, #20432	; 0x4fd0
 e00a608:	e3400e01 	movt	r0, #3585	; 0xe01
 e00a60c:	eb000c2f 	bl	e00d6d0 <__wrap_printf>
 e00a610:	e30338b8 	movw	r3, #14520	; 0x38b8
 e00a614:	e346300a 	movt	r3, #24586	; 0x600a
 e00a618:	e3050004 	movw	r0, #20484	; 0x5004
 e00a61c:	e3400e01 	movt	r0, #3585	; 0xe01
 e00a620:	e5931000 	ldr	r1, [r3]
 e00a624:	eb000c29 	bl	e00d6d0 <__wrap_printf>
 e00a628:	e1a01005 	mov	r1, r5
 e00a62c:	e1a00004 	mov	r0, r4
 e00a630:	ebffff85 	bl	e00a44c <Crash_DumpReg>
 e00a634:	eafffffe 	b	e00a634 <DataAbortHandler+0x40>

0e00a638 <PrefetchAbortHandler>:
 e00a638:	e92d4070 	push	{r4, r5, r6, lr}
 e00a63c:	e1a04000 	mov	r4, r0
 e00a640:	e1a05001 	mov	r5, r1
 e00a644:	ee151f30 	mrc	15, 0, r1, cr5, cr0, {1}
 e00a648:	e3050038 	movw	r0, #20536	; 0x5038
 e00a64c:	e3400e01 	movt	r0, #3585	; 0xe01
 e00a650:	eb000c1e 	bl	e00d6d0 <__wrap_printf>
 e00a654:	e30338bc 	movw	r3, #14524	; 0x38bc
 e00a658:	e346300a 	movt	r3, #24586	; 0x600a
 e00a65c:	e3050004 	movw	r0, #20484	; 0x5004
 e00a660:	e3400e01 	movt	r0, #3585	; 0xe01
 e00a664:	e5931000 	ldr	r1, [r3]
 e00a668:	eb000c18 	bl	e00d6d0 <__wrap_printf>
 e00a66c:	e1a01005 	mov	r1, r5
 e00a670:	e1a00004 	mov	r0, r4
 e00a674:	ebffff74 	bl	e00a44c <Crash_DumpReg>
 e00a678:	eafffffe 	b	e00a678 <PrefetchAbortHandler+0x40>

0e00a67c <LOGUART_PutChar>:
 e00a67c:	e3a03902 	mov	r3, #32768	; 0x8000
 e00a680:	e3443200 	movt	r3, #16896	; 0x4200
 e00a684:	e92d4070 	push	{r4, r5, r6, lr}
 e00a688:	e3a0c014 	mov	ip, #20
 e00a68c:	e593527c 	ldr	r5, [r3, #636]	; 0x27c
 e00a690:	e30560e0 	movw	r6, #20704	; 0x50e0
 e00a694:	e3406e01 	movt	r6, #3585	; 0xe01
 e00a698:	e7e15355 	ubfx	r5, r5, #6, #2
 e00a69c:	e3a0e903 	mov	lr, #49152	; 0xc000
 e00a6a0:	e344e200 	movt	lr, #16896	; 0x4200
 e00a6a4:	e02c659c 	mla	ip, ip, r5, r6
 e00a6a8:	e3a03000 	mov	r3, #0
 e00a6ac:	e59c400c 	ldr	r4, [ip, #12]
 e00a6b0:	ea000003 	b	e00a6c4 <LOGUART_PutChar+0x48>
 e00a6b4:	e59e1014 	ldr	r1, [lr, #20]
 e00a6b8:	e59c2004 	ldr	r2, [ip, #4]
 e00a6bc:	e1110002 	tst	r1, r2
 e00a6c0:	1a000002 	bne	e00a6d0 <LOGUART_PutChar+0x54>
 e00a6c4:	e2833001 	add	r3, r3, #1
 e00a6c8:	e1540003 	cmp	r4, r3
 e00a6cc:	8afffff8 	bhi	e00a6b4 <LOGUART_PutChar+0x38>
 e00a6d0:	e3a03014 	mov	r3, #20
 e00a6d4:	e350000a 	cmp	r0, #10
 e00a6d8:	03a0200d 	moveq	r2, #13
 e00a6dc:	e0050593 	mul	r5, r3, r5
 e00a6e0:	e7963005 	ldr	r3, [r6, r5]
 e00a6e4:	e1a03103 	lsl	r3, r3, #2
 e00a6e8:	e2833442 	add	r3, r3, #1107296256	; 0x42000000
 e00a6ec:	e2833903 	add	r3, r3, #49152	; 0xc000
 e00a6f0:	e583005c 	str	r0, [r3, #92]	; 0x5c
 e00a6f4:	0583205c 	streq	r2, [r3, #92]	; 0x5c
 e00a6f8:	e8bd8070 	pop	{r4, r5, r6, pc}

0e00a6fc <psci_cpu_suspend>:
 e00a6fc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e00a700:	e1a0e000 	mov	lr, r0
 e00a704:	e24dd02c 	sub	sp, sp, #44	; 0x2c
 e00a708:	e3a03000 	mov	r3, #0
 e00a70c:	e1a02001 	mov	r2, r1
 e00a710:	e28dc018 	add	ip, sp, #24
 e00a714:	e3a00361 	mov	r0, #-2080374783	; 0x84000001
 e00a718:	e1a0100e 	mov	r1, lr
 e00a71c:	e58d3014 	str	r3, [sp, #20]
 e00a720:	e58dc010 	str	ip, [sp, #16]
 e00a724:	e58d300c 	str	r3, [sp, #12]
 e00a728:	e58d3008 	str	r3, [sp, #8]
 e00a72c:	e58d3004 	str	r3, [sp, #4]
 e00a730:	e58d3000 	str	r3, [sp]
 e00a734:	ebffd639 	bl	e000020 <__arm_smccc_smc>
 e00a738:	e59d0018 	ldr	r0, [sp, #24]
 e00a73c:	e28dd02c 	add	sp, sp, #44	; 0x2c
 e00a740:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

0e00a744 <psci_cpu_off>:
 e00a744:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e00a748:	e3a03000 	mov	r3, #0
 e00a74c:	e24dd02c 	sub	sp, sp, #44	; 0x2c
 e00a750:	e1a02003 	mov	r2, r3
 e00a754:	e1a01000 	mov	r1, r0
 e00a758:	e28dc018 	add	ip, sp, #24
 e00a75c:	e3a003a1 	mov	r0, #-2080374782	; 0x84000002
 e00a760:	e58d3014 	str	r3, [sp, #20]
 e00a764:	e58d300c 	str	r3, [sp, #12]
 e00a768:	e58d3008 	str	r3, [sp, #8]
 e00a76c:	e58d3004 	str	r3, [sp, #4]
 e00a770:	e58d3000 	str	r3, [sp]
 e00a774:	e58dc010 	str	ip, [sp, #16]
 e00a778:	ebffd628 	bl	e000020 <__arm_smccc_smc>
 e00a77c:	e59d3018 	ldr	r3, [sp, #24]
 e00a780:	e2833009 	add	r3, r3, #9
 e00a784:	e3530009 	cmp	r3, #9
 e00a788:	93052220 	movwls	r2, #21024	; 0x5220
 e00a78c:	93402e01 	movtls	r2, #3585	; 0xe01
 e00a790:	83e00015 	mvnhi	r0, #21
 e00a794:	97920103 	ldrls	r0, [r2, r3, lsl #2]
 e00a798:	e28dd02c 	add	sp, sp, #44	; 0x2c
 e00a79c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

0e00a7a0 <psci_cpu_on>:
 e00a7a0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e00a7a4:	e3a03000 	mov	r3, #0
 e00a7a8:	e24dd02c 	sub	sp, sp, #44	; 0x2c
 e00a7ac:	e1a02001 	mov	r2, r1
 e00a7b0:	e28dc018 	add	ip, sp, #24
 e00a7b4:	e1a01000 	mov	r1, r0
 e00a7b8:	e58d3014 	str	r3, [sp, #20]
 e00a7bc:	e3a003e1 	mov	r0, #-2080374781	; 0x84000003
 e00a7c0:	e58d300c 	str	r3, [sp, #12]
 e00a7c4:	e58d3008 	str	r3, [sp, #8]
 e00a7c8:	e58d3004 	str	r3, [sp, #4]
 e00a7cc:	e58d3000 	str	r3, [sp]
 e00a7d0:	e58dc010 	str	ip, [sp, #16]
 e00a7d4:	ebffd611 	bl	e000020 <__arm_smccc_smc>
 e00a7d8:	e59d3018 	ldr	r3, [sp, #24]
 e00a7dc:	e2833009 	add	r3, r3, #9
 e00a7e0:	e3530009 	cmp	r3, #9
 e00a7e4:	93052220 	movwls	r2, #21024	; 0x5220
 e00a7e8:	93402e01 	movtls	r2, #3585	; 0xe01
 e00a7ec:	83e00015 	mvnhi	r0, #21
 e00a7f0:	97920103 	ldrls	r0, [r2, r3, lsl #2]
 e00a7f4:	e28dd02c 	add	sp, sp, #44	; 0x2c
 e00a7f8:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

0e00a7fc <psci_init>:
 e00a7fc:	e92d4030 	push	{r4, r5, lr}
 e00a800:	e3a04000 	mov	r4, #0
 e00a804:	e24dd02c 	sub	sp, sp, #44	; 0x2c
 e00a808:	e1a03004 	mov	r3, r4
 e00a80c:	e1a02004 	mov	r2, r4
 e00a810:	e28d5018 	add	r5, sp, #24
 e00a814:	e1a01004 	mov	r1, r4
 e00a818:	e3a00321 	mov	r0, #-2080374784	; 0x84000000
 e00a81c:	e58d4014 	str	r4, [sp, #20]
 e00a820:	e1cd40fc 	strd	r4, [sp, #12]
 e00a824:	e58d4008 	str	r4, [sp, #8]
 e00a828:	e58d4004 	str	r4, [sp, #4]
 e00a82c:	e58d4000 	str	r4, [sp]
 e00a830:	ebffd5fa 	bl	e000020 <__arm_smccc_smc>
 e00a834:	e59d2018 	ldr	r2, [sp, #24]
 e00a838:	e30f3ffe 	movw	r3, #65534	; 0xfffe
 e00a83c:	e0033002 	and	r3, r3, r2
 e00a840:	e1933822 	orrs	r3, r3, r2, lsr #16
 e00a844:	0a00003d 	beq	e00a940 <psci_init+0x144>
 e00a848:	e1a01004 	mov	r1, r4
 e00a84c:	e1a03004 	mov	r3, r4
 e00a850:	e1a02004 	mov	r2, r4
 e00a854:	e3a00006 	mov	r0, #6
 e00a858:	e3480400 	movt	r0, #33792	; 0x8400
 e00a85c:	e58d4014 	str	r4, [sp, #20]
 e00a860:	e1cd40fc 	strd	r4, [sp, #12]
 e00a864:	e58d4008 	str	r4, [sp, #8]
 e00a868:	e58d4004 	str	r4, [sp, #4]
 e00a86c:	e58d4000 	str	r4, [sp]
 e00a870:	ebffd5ea 	bl	e000020 <__arm_smccc_smc>
 e00a874:	e59d1018 	ldr	r1, [sp, #24]
 e00a878:	e3510002 	cmp	r1, #2
 e00a87c:	0a000023 	beq	e00a910 <psci_init+0x114>
 e00a880:	e3710001 	cmn	r1, #1
 e00a884:	0a000027 	beq	e00a928 <psci_init+0x12c>
 e00a888:	e3510001 	cmp	r1, #1
 e00a88c:	8a000013 	bhi	e00a8e0 <psci_init+0xe4>
 e00a890:	e1a01004 	mov	r1, r4
 e00a894:	e1cd40fc 	strd	r4, [sp, #12]
 e00a898:	e1a03004 	mov	r3, r4
 e00a89c:	e1a02004 	mov	r2, r4
 e00a8a0:	e3a00007 	mov	r0, #7
 e00a8a4:	e3480400 	movt	r0, #33792	; 0x8400
 e00a8a8:	e58d4014 	str	r4, [sp, #20]
 e00a8ac:	e58d4008 	str	r4, [sp, #8]
 e00a8b0:	e58d4004 	str	r4, [sp, #4]
 e00a8b4:	e58d4000 	str	r4, [sp]
 e00a8b8:	ebffd5d8 	bl	e000020 <__arm_smccc_smc>
 e00a8bc:	e59d1018 	ldr	r1, [sp, #24]
 e00a8c0:	e21154ff 	ands	r5, r1, #-16777216	; 0xff000000
 e00a8c4:	1a00000b 	bne	e00a8f8 <psci_init+0xfc>
 e00a8c8:	e30501f4 	movw	r0, #20980	; 0x51f4
 e00a8cc:	e3400e01 	movt	r0, #3585	; 0xe01
 e00a8d0:	eb000b7e 	bl	e00d6d0 <__wrap_printf>
 e00a8d4:	e1a00005 	mov	r0, r5
 e00a8d8:	e28dd02c 	add	sp, sp, #44	; 0x2c
 e00a8dc:	e8bd8030 	pop	{r4, r5, pc}
 e00a8e0:	e3050188 	movw	r0, #20872	; 0x5188
 e00a8e4:	e3400e01 	movt	r0, #3585	; 0xe01
 e00a8e8:	eb000b78 	bl	e00d6d0 <__wrap_printf>
 e00a8ec:	e1a00004 	mov	r0, r4
 e00a8f0:	e28dd02c 	add	sp, sp, #44	; 0x2c
 e00a8f4:	e8bd8030 	pop	{r4, r5, pc}
 e00a8f8:	e30501b8 	movw	r0, #20920	; 0x51b8
 e00a8fc:	e3400e01 	movt	r0, #3585	; 0xe01
 e00a900:	eb000b72 	bl	e00d6d0 <__wrap_printf>
 e00a904:	e1a00004 	mov	r0, r4
 e00a908:	e28dd02c 	add	sp, sp, #44	; 0x2c
 e00a90c:	e8bd8030 	pop	{r4, r5, pc}
 e00a910:	e3050140 	movw	r0, #20800	; 0x5140
 e00a914:	e3400e01 	movt	r0, #3585	; 0xe01
 e00a918:	eb000b6c 	bl	e00d6d0 <__wrap_printf>
 e00a91c:	e1a00004 	mov	r0, r4
 e00a920:	e28dd02c 	add	sp, sp, #44	; 0x2c
 e00a924:	e8bd8030 	pop	{r4, r5, pc}
 e00a928:	e3050164 	movw	r0, #20836	; 0x5164
 e00a92c:	e3400e01 	movt	r0, #3585	; 0xe01
 e00a930:	eb000b66 	bl	e00d6d0 <__wrap_printf>
 e00a934:	e1a00004 	mov	r0, r4
 e00a938:	e28dd02c 	add	sp, sp, #44	; 0x2c
 e00a93c:	e8bd8030 	pop	{r4, r5, pc}
 e00a940:	e305011c 	movw	r0, #20764	; 0x511c
 e00a944:	e3400e01 	movt	r0, #3585	; 0xe01
 e00a948:	eb000b60 	bl	e00d6d0 <__wrap_printf>
 e00a94c:	e3e00015 	mvn	r0, #21
 e00a950:	eaffffe0 	b	e00a8d8 <psci_init+0xdc>

0e00a954 <rtk_core1_power_on>:
 e00a954:	e92d4070 	push	{r4, r5, r6, lr}
 e00a958:	e3a04441 	mov	r4, #1090519040	; 0x41000000
 e00a95c:	e5943004 	ldr	r3, [r4, #4]
 e00a960:	e3130030 	tst	r3, #48	; 0x30
 e00a964:	08bd8070 	popeq	{r4, r5, r6, pc}
 e00a968:	e3a06c02 	mov	r6, #512	; 0x200
 e00a96c:	e3446100 	movt	r6, #16640	; 0x4100
 e00a970:	e3a00032 	mov	r0, #50	; 0x32
 e00a974:	e30a5b38 	movw	r5, #43832	; 0xab38
 e00a978:	e3405e00 	movt	r5, #3584	; 0xe00
 e00a97c:	e5963004 	ldr	r3, [r6, #4]
 e00a980:	e3c33022 	bic	r3, r3, #34	; 0x22
 e00a984:	e5863004 	str	r3, [r6, #4]
 e00a988:	e5943004 	ldr	r3, [r4, #4]
 e00a98c:	e3833020 	orr	r3, r3, #32
 e00a990:	e5843004 	str	r3, [r4, #4]
 e00a994:	e12fff35 	blx	r5
 e00a998:	e5943000 	ldr	r3, [r4]
 e00a99c:	e3a00032 	mov	r0, #50	; 0x32
 e00a9a0:	e3833030 	orr	r3, r3, #48	; 0x30
 e00a9a4:	e5843000 	str	r3, [r4]
 e00a9a8:	e12fff35 	blx	r5
 e00a9ac:	e5943000 	ldr	r3, [r4]
 e00a9b0:	e3a00f7d 	mov	r0, #500	; 0x1f4
 e00a9b4:	e38330c0 	orr	r3, r3, #192	; 0xc0
 e00a9b8:	e5843000 	str	r3, [r4]
 e00a9bc:	e12fff35 	blx	r5
 e00a9c0:	e5943004 	ldr	r3, [r4, #4]
 e00a9c4:	e3a00032 	mov	r0, #50	; 0x32
 e00a9c8:	e3c33030 	bic	r3, r3, #48	; 0x30
 e00a9cc:	e5843004 	str	r3, [r4, #4]
 e00a9d0:	e12fff35 	blx	r5
 e00a9d4:	e5963004 	ldr	r3, [r6, #4]
 e00a9d8:	e3833022 	orr	r3, r3, #34	; 0x22
 e00a9dc:	e5863004 	str	r3, [r6, #4]
 e00a9e0:	e8bd8070 	pop	{r4, r5, r6, pc}

0e00a9e4 <vPortSecondaryStart>:
 e00a9e4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e00a9e8:	e24dd00c 	sub	sp, sp, #12
 e00a9ec:	eb001dca 	bl	e01211c <ulPortGetCoreId>
 e00a9f0:	eb0001bd 	bl	e00b0ec <pmu_get_secondary_cpu_state>
 e00a9f4:	e3500000 	cmp	r0, #0
 e00a9f8:	0a000012 	beq	e00aa48 <vPortSecondaryStart+0x64>
 e00a9fc:	eb001dc6 	bl	e01211c <ulPortGetCoreId>
 e00aa00:	e3a02049 	mov	r2, #73	; 0x49
 e00aa04:	e1a03000 	mov	r3, r0
 e00aa08:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00aa0c:	e3401e01 	movt	r1, #3585	; 0xe01
 e00aa10:	e3a00004 	mov	r0, #4
 e00aa14:	e58d3000 	str	r3, [sp]
 e00aa18:	e305327c 	movw	r3, #21116	; 0x527c
 e00aa1c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00aa20:	ebfffbd4 	bl	e009978 <rtk_log_write_nano>
 e00aa24:	ebfffd93 	bl	e00a078 <prvSetupHardwareSecondary>
 e00aa28:	ebfffda1 	bl	e00a0b4 <vConfigureIPIInterrupt>
 e00aa2c:	ebfffdcb 	bl	e00a160 <vConfigureTickInterrupt>
 e00aa30:	e3a01000 	mov	r1, #0
 e00aa34:	e3a00001 	mov	r0, #1
 e00aa38:	eb0001a7 	bl	e00b0dc <pmu_set_secondary_cpu_state>
 e00aa3c:	e28dd00c 	add	sp, sp, #12
 e00aa40:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 e00aa44:	eaffd5a0 	b	e0000cc <vPortRestoreTaskContext>
 e00aa48:	eb000ad1 	bl	e00d594 <rtos_sched_get_state>
 e00aa4c:	e3500001 	cmp	r0, #1
 e00aa50:	1affffe9 	bne	e00a9fc <vPortSecondaryStart+0x18>
 e00aa54:	eb000ace 	bl	e00d594 <rtos_sched_get_state>
 e00aa58:	e3500001 	cmp	r0, #1
 e00aa5c:	0afffff9 	beq	e00aa48 <vPortSecondaryStart+0x64>
 e00aa60:	eaffffe5 	b	e00a9fc <vPortSecondaryStart+0x18>

0e00aa64 <smp_init>:
 e00aa64:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 e00aa68:	e3a02049 	mov	r2, #73	; 0x49
 e00aa6c:	e24dd00c 	sub	sp, sp, #12
 e00aa70:	e3a00004 	mov	r0, #4
 e00aa74:	e3053288 	movw	r3, #21128	; 0x5288
 e00aa78:	e3403e01 	movt	r3, #3585	; 0xe01
 e00aa7c:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00aa80:	e3401e01 	movt	r1, #3585	; 0xe01
 e00aa84:	ebfffbbb 	bl	e009978 <rtk_log_write_nano>
 e00aa88:	e30336ec 	movw	r3, #14060	; 0x36ec
 e00aa8c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00aa90:	e12fff33 	blx	r3
 e00aa94:	e3500003 	cmp	r0, #3
 e00aa98:	0a000004 	beq	e00aab0 <smp_init+0x4c>
 e00aa9c:	ebffffac 	bl	e00a954 <rtk_core1_power_on>
 e00aaa0:	e30a3b38 	movw	r3, #43832	; 0xab38
 e00aaa4:	e3403e00 	movt	r3, #3584	; 0xe00
 e00aaa8:	e3a00032 	mov	r0, #50	; 0x32
 e00aaac:	e12fff33 	blx	r3
 e00aab0:	e30450c8 	movw	r5, #16584	; 0x40c8
 e00aab4:	e3465009 	movt	r5, #24585	; 0x6009
 e00aab8:	e30572b0 	movw	r7, #21168	; 0x52b0
 e00aabc:	e3407e01 	movt	r7, #3585	; 0xe01
 e00aac0:	e30463ac 	movw	r6, #17324	; 0x43ac
 e00aac4:	e3406e01 	movt	r6, #3585	; 0xe01
 e00aac8:	e3a04000 	mov	r4, #0
 e00aacc:	eb001d92 	bl	e01211c <ulPortGetCoreId>
 e00aad0:	e1a01005 	mov	r1, r5
 e00aad4:	e1500004 	cmp	r0, r4
 e00aad8:	0a000010 	beq	e00ab20 <smp_init+0xbc>
 e00aadc:	e1a00004 	mov	r0, r4
 e00aae0:	ebffff2e 	bl	e00a7a0 <psci_cpu_on>
 e00aae4:	e3500000 	cmp	r0, #0
 e00aae8:	ba000004 	blt	e00ab00 <smp_init+0x9c>
 e00aaec:	e3540001 	cmp	r4, #1
 e00aaf0:	e3a04001 	mov	r4, #1
 e00aaf4:	1afffff4 	bne	e00aacc <smp_init+0x68>
 e00aaf8:	e28dd00c 	add	sp, sp, #12
 e00aafc:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
 e00ab00:	e58d0004 	str	r0, [sp, #4]
 e00ab04:	e1a03007 	mov	r3, r7
 e00ab08:	e3a02045 	mov	r2, #69	; 0x45
 e00ab0c:	e1a01006 	mov	r1, r6
 e00ab10:	e3a00002 	mov	r0, #2
 e00ab14:	e58d4000 	str	r4, [sp]
 e00ab18:	ebfffb96 	bl	e009978 <rtk_log_write_nano>
 e00ab1c:	eafffff2 	b	e00aaec <smp_init+0x88>
 e00ab20:	e3a01000 	mov	r1, #0
 e00ab24:	eb00016c 	bl	e00b0dc <pmu_set_secondary_cpu_state>
 e00ab28:	eaffffef 	b	e00aaec <smp_init+0x88>

0e00ab2c <SOCPS_LPWAP_ipc_int>:
 e00ab2c:	e3a01001 	mov	r1, #1
 e00ab30:	e1a00001 	mov	r0, r1
 e00ab34:	eafff719 	b	e0087a0 <ipc_get_message>

0e00ab38 <DelayUs>:
 e00ab38:	e92d4370 	push	{r4, r5, r6, r8, r9, lr}
 e00ab3c:	e30336ec 	movw	r3, #14060	; 0x36ec
 e00ab40:	e3403e01 	movt	r3, #3585	; 0xe01
 e00ab44:	e1a06000 	mov	r6, r0
 e00ab48:	e12fff33 	blx	r3
 e00ab4c:	e3500003 	cmp	r0, #3
 e00ab50:	0a000017 	beq	e00abb4 <DelayUs+0x7c>
 e00ab54:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
 e00ab58:	e3130001 	tst	r3, #1
 e00ab5c:	0a000014 	beq	e00abb4 <DelayUs+0x7c>
 e00ab60:	ec598f1e 	mrrc	15, 1, r8, r9, cr14
 e00ab64:	ebfffd17 	bl	e009fc8 <vGetGenericTimerFreq>
 e00ab68:	e0830096 	umull	r0, r3, r6, r0
 e00ab6c:	e3042240 	movw	r2, #16960	; 0x4240
 e00ab70:	e340200f 	movt	r2, #15
 e00ab74:	e1a04008 	mov	r4, r8
 e00ab78:	e0213196 	mla	r1, r6, r1, r3
 e00ab7c:	e3a03000 	mov	r3, #0
 e00ab80:	ebffd603 	bl	e000394 <__aeabi_uldivmod>
 e00ab84:	e0900008 	adds	r0, r0, r8
 e00ab88:	e0a11009 	adc	r1, r1, r9
 e00ab8c:	ec532f1e 	mrrc	15, 1, r2, r3, cr14
 e00ab90:	e1520000 	cmp	r2, r0
 e00ab94:	e0d33001 	sbcs	r3, r3, r1
 e00ab98:	28bd8370 	popcs	{r4, r5, r6, r8, r9, pc}
 e00ab9c:	e320f000 	nop	{0}
 e00aba0:	ec532f1e 	mrrc	15, 1, r2, r3, cr14
 e00aba4:	e1520000 	cmp	r2, r0
 e00aba8:	e0d33001 	sbcs	r3, r3, r1
 e00abac:	3afffffa 	bcc	e00ab9c <DelayUs+0x64>
 e00abb0:	e8bd8370 	pop	{r4, r5, r6, r8, r9, pc}
 e00abb4:	e3a03001 	mov	r3, #1
 e00abb8:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
 e00abbc:	eaffffe7 	b	e00ab60 <DelayUs+0x28>

0e00abc0 <DelayMs>:
 e00abc0:	e3a02ffa 	mov	r2, #1000	; 0x3e8
 e00abc4:	e30a3b38 	movw	r3, #43832	; 0xab38
 e00abc8:	e3403e00 	movt	r3, #3584	; 0xe00
 e00abcc:	e0000092 	mul	r0, r2, r0
 e00abd0:	e12fff13 	bx	r3

0e00abd4 <SOCPS_SleepPG>:
 e00abd4:	e92d4010 	push	{r4, lr}
 e00abd8:	eb000041 	bl	e00ace4 <pmu_exec_sleep_hook_funs>
 e00abdc:	e3500009 	cmp	r0, #9
 e00abe0:	0a000001 	beq	e00abec <SOCPS_SleepPG+0x18>
 e00abe4:	e8bd4010 	pop	{r4, lr}
 e00abe8:	ea00004f 	b	e00ad2c <pmu_exec_wakeup_hook_funs>
 e00abec:	e3a02049 	mov	r2, #73	; 0x49
 e00abf0:	e1a04000 	mov	r4, r0
 e00abf4:	e30532cc 	movw	r3, #21196	; 0x52cc
 e00abf8:	e3403e01 	movt	r3, #3585	; 0xe01
 e00abfc:	e3a00004 	mov	r0, #4
 e00ac00:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00ac04:	e3401e01 	movt	r1, #3585	; 0xe01
 e00ac08:	ebfffb5a 	bl	e009978 <rtk_log_write_nano>
 e00ac0c:	eb0024ef 	bl	e013fd0 <SOCPS_SleepPG_LIB>
 e00ac10:	e3a02049 	mov	r2, #73	; 0x49
 e00ac14:	e3a00004 	mov	r0, #4
 e00ac18:	e30532d4 	movw	r3, #21204	; 0x52d4
 e00ac1c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00ac20:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00ac24:	e3401e01 	movt	r1, #3585	; 0xe01
 e00ac28:	ebfffb52 	bl	e009978 <rtk_log_write_nano>
 e00ac2c:	e1a00004 	mov	r0, r4
 e00ac30:	eb00003d 	bl	e00ad2c <pmu_exec_wakeup_hook_funs>
 e00ac34:	ebffff8a 	bl	e00aa64 <smp_init>
 e00ac38:	e3a01002 	mov	r1, #2
 e00ac3c:	e3a00001 	mov	r0, #1
 e00ac40:	eb000125 	bl	e00b0dc <pmu_set_secondary_cpu_state>
 e00ac44:	e3a03c82 	mov	r3, #33280	; 0x8200
 e00ac48:	e3443200 	movt	r3, #16896	; 0x4200
 e00ac4c:	e5d32066 	ldrb	r2, [r3, #102]	; 0x66
 e00ac50:	e3822002 	orr	r2, r2, #2
 e00ac54:	e5c32066 	strb	r2, [r3, #102]	; 0x66
 e00ac58:	e8bd8010 	pop	{r4, pc}

0e00ac5c <SOCPS_SleepCG>:
 e00ac5c:	e92d4010 	push	{r4, lr}
 e00ac60:	eb00001f 	bl	e00ace4 <pmu_exec_sleep_hook_funs>
 e00ac64:	e3500009 	cmp	r0, #9
 e00ac68:	1a000010 	bne	e00acb0 <SOCPS_SleepCG+0x54>
 e00ac6c:	e3a02049 	mov	r2, #73	; 0x49
 e00ac70:	e1a04000 	mov	r4, r0
 e00ac74:	e30532dc 	movw	r3, #21212	; 0x52dc
 e00ac78:	e3403e01 	movt	r3, #3585	; 0xe01
 e00ac7c:	e3a00004 	mov	r0, #4
 e00ac80:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00ac84:	e3401e01 	movt	r1, #3585	; 0xe01
 e00ac88:	ebfffb3a 	bl	e009978 <rtk_log_write_nano>
 e00ac8c:	eb0024dc 	bl	e014004 <SOCPS_SleepCG_LIB>
 e00ac90:	e3a00004 	mov	r0, #4
 e00ac94:	e3a02049 	mov	r2, #73	; 0x49
 e00ac98:	e30532e4 	movw	r3, #21220	; 0x52e4
 e00ac9c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00aca0:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00aca4:	e3401e01 	movt	r1, #3585	; 0xe01
 e00aca8:	ebfffb32 	bl	e009978 <rtk_log_write_nano>
 e00acac:	e1a00004 	mov	r0, r4
 e00acb0:	e8bd4010 	pop	{r4, lr}
 e00acb4:	ea00001c 	b	e00ad2c <pmu_exec_wakeup_hook_funs>

0e00acb8 <CPU_InInterrupt>:
 e00acb8:	e10f3000 	mrs	r3, CPSR
 e00acbc:	e203301f 	and	r3, r3, #31
 e00acc0:	e3530010 	cmp	r3, #16
 e00acc4:	0a000004 	beq	e00acdc <CPU_InInterrupt+0x24>
 e00acc8:	e10f0000 	mrs	r0, CPSR
 e00accc:	e200001f 	and	r0, r0, #31
 e00acd0:	e250001f 	subs	r0, r0, #31
 e00acd4:	13a00001 	movne	r0, #1
 e00acd8:	e12fff1e 	bx	lr
 e00acdc:	e3a00000 	mov	r0, #0
 e00ace0:	e12fff1e 	bx	lr

0e00ace4 <pmu_exec_sleep_hook_funs>:
 e00ace4:	e92d4070 	push	{r4, r5, r6, lr}
 e00ace8:	e30348d0 	movw	r4, #14544	; 0x38d0
 e00acec:	e346400a 	movt	r4, #24586	; 0x600a
 e00acf0:	e3a05000 	mov	r5, #0
 e00acf4:	e5943004 	ldr	r3, [r4, #4]
 e00acf8:	e3a00000 	mov	r0, #0
 e00acfc:	e1530000 	cmp	r3, r0
 e00ad00:	0a000003 	beq	e00ad14 <pmu_exec_sleep_hook_funs+0x30>
 e00ad04:	e5941008 	ldr	r1, [r4, #8]
 e00ad08:	e12fff33 	blx	r3
 e00ad0c:	e3500000 	cmp	r0, #0
 e00ad10:	0a000003 	beq	e00ad24 <pmu_exec_sleep_hook_funs+0x40>
 e00ad14:	e2855001 	add	r5, r5, #1
 e00ad18:	e2844014 	add	r4, r4, #20
 e00ad1c:	e3550009 	cmp	r5, #9
 e00ad20:	1afffff3 	bne	e00acf4 <pmu_exec_sleep_hook_funs+0x10>
 e00ad24:	e1a00005 	mov	r0, r5
 e00ad28:	e8bd8070 	pop	{r4, r5, r6, pc}

0e00ad2c <pmu_exec_wakeup_hook_funs>:
 e00ad2c:	e92d4070 	push	{r4, r5, r6, lr}
 e00ad30:	e2506000 	subs	r6, r0, #0
 e00ad34:	08bd8070 	popeq	{r4, r5, r6, pc}
 e00ad38:	e30348d0 	movw	r4, #14544	; 0x38d0
 e00ad3c:	e346400a 	movt	r4, #24586	; 0x600a
 e00ad40:	e3a05000 	mov	r5, #0
 e00ad44:	e594300c 	ldr	r3, [r4, #12]
 e00ad48:	e3a00000 	mov	r0, #0
 e00ad4c:	e2855001 	add	r5, r5, #1
 e00ad50:	e1530000 	cmp	r3, r0
 e00ad54:	0a000001 	beq	e00ad60 <pmu_exec_wakeup_hook_funs+0x34>
 e00ad58:	e5941010 	ldr	r1, [r4, #16]
 e00ad5c:	e12fff33 	blx	r3
 e00ad60:	e2844014 	add	r4, r4, #20
 e00ad64:	e1560005 	cmp	r6, r5
 e00ad68:	1afffff5 	bne	e00ad44 <pmu_exec_wakeup_hook_funs+0x18>
 e00ad6c:	e8bd8070 	pop	{r4, r5, r6, pc}

0e00ad70 <pmu_set_sysactive_time>:
 e00ad70:	e30329c8 	movw	r2, #14792	; 0x39c8
 e00ad74:	e346200a 	movt	r2, #24586	; 0x600a
 e00ad78:	e92d4070 	push	{r4, r5, r6, lr}
 e00ad7c:	e30339cc 	movw	r3, #14796	; 0x39cc
 e00ad80:	e346300a 	movt	r3, #24586	; 0x600a
 e00ad84:	e5925000 	ldr	r5, [r2]
 e00ad88:	e5934000 	ldr	r4, [r3]
 e00ad8c:	e3550000 	cmp	r5, #0
 e00ad90:	1a00001b 	bne	e00ae04 <pmu_set_sysactive_time+0x94>
 e00ad94:	e1500004 	cmp	r0, r4
 e00ad98:	21a04000 	movcs	r4, r0
 e00ad9c:	e3540000 	cmp	r4, #0
 e00ada0:	e5835000 	str	r5, [r3]
 e00ada4:	1a000001 	bne	e00adb0 <pmu_set_sysactive_time+0x40>
 e00ada8:	e1a00005 	mov	r0, r5
 e00adac:	e8bd8070 	pop	{r4, r5, r6, pc}
 e00adb0:	eb000a2b 	bl	e00d664 <rtos_time_get_current_system_time_ms>
 e00adb4:	e3700001 	cmn	r0, #1
 e00adb8:	1a00001c 	bne	e00ae30 <pmu_set_sysactive_time+0xc0>
 e00adbc:	e0804004 	add	r4, r0, r4
 e00adc0:	eb000a2f 	bl	e00d684 <rtos_time_get_current_pended_time_ms>
 e00adc4:	e3700001 	cmn	r0, #1
 e00adc8:	1a000016 	bne	e00ae28 <pmu_set_sysactive_time+0xb8>
 e00adcc:	e30339c4 	movw	r3, #14788	; 0x39c4
 e00add0:	e346300a 	movt	r3, #24586	; 0x600a
 e00add4:	e0840000 	add	r0, r4, r0
 e00add8:	e5932000 	ldr	r2, [r3]
 e00addc:	e1520000 	cmp	r2, r0
 e00ade0:	3a00000c 	bcc	e00ae18 <pmu_set_sysactive_time+0xa8>
 e00ade4:	e0421000 	sub	r1, r2, r0
 e00ade8:	e371010a 	cmn	r1, #-2147483646	; 0x80000002
 e00adec:	8a000001 	bhi	e00adf8 <pmu_set_sysactive_time+0x88>
 e00adf0:	e1520000 	cmp	r2, r0
 e00adf4:	1affffeb 	bne	e00ada8 <pmu_set_sysactive_time+0x38>
 e00adf8:	e5830000 	str	r0, [r3]
 e00adfc:	e1a00005 	mov	r0, r5
 e00ae00:	e8bd8070 	pop	{r4, r5, r6, pc}
 e00ae04:	e3a05001 	mov	r5, #1
 e00ae08:	e1500004 	cmp	r0, r4
 e00ae0c:	9affffe5 	bls	e00ada8 <pmu_set_sysactive_time+0x38>
 e00ae10:	e5830000 	str	r0, [r3]
 e00ae14:	eafffff8 	b	e00adfc <pmu_set_sysactive_time+0x8c>
 e00ae18:	e0402002 	sub	r2, r0, r2
 e00ae1c:	e372010a 	cmn	r2, #-2147483646	; 0x80000002
 e00ae20:	9afffff4 	bls	e00adf8 <pmu_set_sysactive_time+0x88>
 e00ae24:	eaffffdf 	b	e00ada8 <pmu_set_sysactive_time+0x38>
 e00ae28:	eb000a15 	bl	e00d684 <rtos_time_get_current_pended_time_ms>
 e00ae2c:	eaffffe6 	b	e00adcc <pmu_set_sysactive_time+0x5c>
 e00ae30:	eb000a0b 	bl	e00d664 <rtos_time_get_current_system_time_ms>
 e00ae34:	e0804004 	add	r4, r0, r4
 e00ae38:	eb000a11 	bl	e00d684 <rtos_time_get_current_pended_time_ms>
 e00ae3c:	e3700001 	cmn	r0, #1
 e00ae40:	0affffe1 	beq	e00adcc <pmu_set_sysactive_time+0x5c>
 e00ae44:	eafffff7 	b	e00ae28 <pmu_set_sysactive_time+0xb8>

0e00ae48 <pmu_yield_os_check>:
 e00ae48:	e3053268 	movw	r3, #21096	; 0x5268
 e00ae4c:	e3463009 	movt	r3, #24585	; 0x6009
 e00ae50:	e5930000 	ldr	r0, [r3]
 e00ae54:	e12fff1e 	bx	lr

0e00ae58 <pmu_ready_to_sleep>:
 e00ae58:	e92d4010 	push	{r4, lr}
 e00ae5c:	eb000a00 	bl	e00d664 <rtos_time_get_current_system_time_ms>
 e00ae60:	e30339c4 	movw	r3, #14788	; 0x39c4
 e00ae64:	e346300a 	movt	r3, #24586	; 0x600a
 e00ae68:	e5933000 	ldr	r3, [r3]
 e00ae6c:	e1530000 	cmp	r3, r0
 e00ae70:	2a000008 	bcs	e00ae98 <pmu_ready_to_sleep+0x40>
 e00ae74:	e0400003 	sub	r0, r0, r3
 e00ae78:	e370010a 	cmn	r0, #-2147483646	; 0x80000002
 e00ae7c:	8a00000a 	bhi	e00aeac <pmu_ready_to_sleep+0x54>
 e00ae80:	e305326c 	movw	r3, #21100	; 0x526c
 e00ae84:	e3463009 	movt	r3, #24585	; 0x6009
 e00ae88:	e5930000 	ldr	r0, [r3]
 e00ae8c:	e16f0f10 	clz	r0, r0
 e00ae90:	e1a002a0 	lsr	r0, r0, #5
 e00ae94:	e8bd8010 	pop	{r4, pc}
 e00ae98:	e0432000 	sub	r2, r3, r0
 e00ae9c:	e372010a 	cmn	r2, #-2147483646	; 0x80000002
 e00aea0:	8afffff6 	bhi	e00ae80 <pmu_ready_to_sleep+0x28>
 e00aea4:	e1530000 	cmp	r3, r0
 e00aea8:	9afffff4 	bls	e00ae80 <pmu_ready_to_sleep+0x28>
 e00aeac:	e3a00000 	mov	r0, #0
 e00aeb0:	e8bd8010 	pop	{r4, pc}

0e00aeb4 <pmu_pre_sleep_processing>:
 e00aeb4:	e92d4070 	push	{r4, r5, r6, lr}
 e00aeb8:	e1a05000 	mov	r5, r0
 e00aebc:	eb000bdb 	bl	e00de30 <xTaskGetTickCount>
 e00aec0:	e30338cc 	movw	r3, #14540	; 0x38cc
 e00aec4:	e346300a 	movt	r3, #24586	; 0x600a
 e00aec8:	e30349d4 	movw	r4, #14804	; 0x39d4
 e00aecc:	e346400a 	movt	r4, #24586	; 0x600a
 e00aed0:	e5933000 	ldr	r3, [r3]
 e00aed4:	e30369d0 	movw	r6, #14800	; 0x39d0
 e00aed8:	e346600a 	movt	r6, #24586	; 0x600a
 e00aedc:	e5942000 	ldr	r2, [r4]
 e00aee0:	e1500003 	cmp	r0, r3
 e00aee4:	3a000004 	bcc	e00aefc <pmu_pre_sleep_processing+0x48>
 e00aee8:	e3053264 	movw	r3, #21092	; 0x5264
 e00aeec:	e3463009 	movt	r3, #24585	; 0x6009
 e00aef0:	e5933000 	ldr	r3, [r3]
 e00aef4:	e3530000 	cmp	r3, #0
 e00aef8:	0a000026 	beq	e00af98 <pmu_pre_sleep_processing+0xe4>
 e00aefc:	e5963000 	ldr	r3, [r6]
 e00af00:	e1530002 	cmp	r3, r2
 e00af04:	8a00002e 	bhi	e00afc4 <pmu_pre_sleep_processing+0x110>
 e00af08:	e30339a0 	movw	r3, #14752	; 0x39a0
 e00af0c:	e346300a 	movt	r3, #24586	; 0x600a
 e00af10:	e3a01000 	mov	r1, #0
 e00af14:	e5832004 	str	r2, [r3, #4]
 e00af18:	e5831008 	str	r1, [r3, #8]
 e00af1c:	e30349c0 	movw	r4, #14784	; 0x39c0
 e00af20:	e346400a 	movt	r4, #24586	; 0x600a
 e00af24:	e5942000 	ldr	r2, [r4]
 e00af28:	e5832000 	str	r2, [r3]
 e00af2c:	ee112f10 	mrc	15, 0, r2, cr1, cr0, {0}
 e00af30:	e3120004 	tst	r2, #4
 e00af34:	0a00000a 	beq	e00af64 <pmu_pre_sleep_processing+0xb0>
 e00af38:	e59f20dc 	ldr	r2, [pc, #220]	; e00b01c <pmu_pre_sleep_processing+0x168>
 e00af3c:	e3c3303f 	bic	r3, r3, #63	; 0x3f
 e00af40:	e3c2203f 	bic	r2, r2, #63	; 0x3f
 e00af44:	e2822040 	add	r2, r2, #64	; 0x40
 e00af48:	e1530002 	cmp	r3, r2
 e00af4c:	2a000003 	bcs	e00af60 <pmu_pre_sleep_processing+0xac>
 e00af50:	ee073f3e 	mcr	15, 0, r3, cr7, cr14, {1}
 e00af54:	e2833040 	add	r3, r3, #64	; 0x40
 e00af58:	e1520003 	cmp	r2, r3
 e00af5c:	8afffffb 	bhi	e00af50 <pmu_pre_sleep_processing+0x9c>
 e00af60:	f57ff05f 	dmb	sy
 e00af64:	e30336a8 	movw	r3, #13992	; 0x36a8
 e00af68:	e3403e01 	movt	r3, #3585	; 0xe01
 e00af6c:	e12fff33 	blx	r3
 e00af70:	e30339c8 	movw	r3, #14792	; 0x39c8
 e00af74:	e346300a 	movt	r3, #24586	; 0x600a
 e00af78:	e5941000 	ldr	r1, [r4]
 e00af7c:	e3a02001 	mov	r2, #1
 e00af80:	e5850000 	str	r0, [r5]
 e00af84:	e1510002 	cmp	r1, r2
 e00af88:	e5832000 	str	r2, [r3]
 e00af8c:	0a00000a 	beq	e00afbc <pmu_pre_sleep_processing+0x108>
 e00af90:	e8bd4070 	pop	{r4, r5, r6, lr}
 e00af94:	eaffff0e 	b	e00abd4 <SOCPS_SleepPG>
 e00af98:	e5963000 	ldr	r3, [r6]
 e00af9c:	e1520003 	cmp	r2, r3
 e00afa0:	3a000012 	bcc	e00aff0 <pmu_pre_sleep_processing+0x13c>
 e00afa4:	e30339a0 	movw	r3, #14752	; 0x39a0
 e00afa8:	e346300a 	movt	r3, #24586	; 0x600a
 e00afac:	e3a01001 	mov	r1, #1
 e00afb0:	e5832004 	str	r2, [r3, #4]
 e00afb4:	e5831008 	str	r1, [r3, #8]
 e00afb8:	eaffffd7 	b	e00af1c <pmu_pre_sleep_processing+0x68>
 e00afbc:	e8bd4070 	pop	{r4, r5, r6, lr}
 e00afc0:	eaffff25 	b	e00ac5c <SOCPS_SleepCG>
 e00afc4:	e30c374c 	movw	r3, #51020	; 0xc74c
 e00afc8:	e3403e00 	movt	r3, #3584	; 0xe00
 e00afcc:	e12fff33 	blx	r3
 e00afd0:	e5962000 	ldr	r2, [r6]
 e00afd4:	e5943000 	ldr	r3, [r4]
 e00afd8:	e2822001 	add	r2, r2, #1
 e00afdc:	e0422003 	sub	r2, r2, r3
 e00afe0:	e731f210 	udiv	r1, r0, r2
 e00afe4:	e0600291 	mls	r0, r1, r2, r0
 e00afe8:	e0802003 	add	r2, r0, r3
 e00afec:	eaffffc5 	b	e00af08 <pmu_pre_sleep_processing+0x54>
 e00aff0:	e30c374c 	movw	r3, #51020	; 0xc74c
 e00aff4:	e3403e00 	movt	r3, #3584	; 0xe00
 e00aff8:	e12fff33 	blx	r3
 e00affc:	e5962000 	ldr	r2, [r6]
 e00b000:	e5943000 	ldr	r3, [r4]
 e00b004:	e2822001 	add	r2, r2, #1
 e00b008:	e0422003 	sub	r2, r2, r3
 e00b00c:	e731f210 	udiv	r1, r0, r2
 e00b010:	e0600291 	mls	r0, r1, r2, r0
 e00b014:	e0802003 	add	r2, r0, r3
 e00b018:	eaffffe1 	b	e00afa4 <pmu_pre_sleep_processing+0xf0>
 e00b01c:	600a39bf 	.word	0x600a39bf

0e00b020 <pmu_acquire_wakelock>:
 e00b020:	e92d4010 	push	{r4, lr}
 e00b024:	e1a04000 	mov	r4, r0
 e00b028:	eb001c20 	bl	e0120b0 <ulPortInterruptLock>
 e00b02c:	e305326c 	movw	r3, #21100	; 0x526c
 e00b030:	e3463009 	movt	r3, #24585	; 0x6009
 e00b034:	e3a01001 	mov	r1, #1
 e00b038:	e5932000 	ldr	r2, [r3]
 e00b03c:	e1822411 	orr	r2, r2, r1, lsl r4
 e00b040:	e5832000 	str	r2, [r3]
 e00b044:	e8bd4010 	pop	{r4, lr}
 e00b048:	ea001c1d 	b	e0120c4 <ulPortInterruptUnLock>

0e00b04c <pmu_release_wakelock>:
 e00b04c:	e92d4010 	push	{r4, lr}
 e00b050:	e1a04000 	mov	r4, r0
 e00b054:	eb001c15 	bl	e0120b0 <ulPortInterruptLock>
 e00b058:	e305326c 	movw	r3, #21100	; 0x526c
 e00b05c:	e3463009 	movt	r3, #24585	; 0x6009
 e00b060:	e3a01001 	mov	r1, #1
 e00b064:	e5932000 	ldr	r2, [r3]
 e00b068:	e1c22411 	bic	r2, r2, r1, lsl r4
 e00b06c:	e5832000 	str	r2, [r3]
 e00b070:	e8bd4010 	pop	{r4, lr}
 e00b074:	ea001c12 	b	e0120c4 <ulPortInterruptUnLock>

0e00b078 <pmu_get_wakelock_status>:
 e00b078:	e305326c 	movw	r3, #21100	; 0x526c
 e00b07c:	e3463009 	movt	r3, #24585	; 0x6009
 e00b080:	e5930000 	ldr	r0, [r3]
 e00b084:	e12fff1e 	bx	lr

0e00b088 <pmu_set_sleep_type>:
 e00b088:	e30339c0 	movw	r3, #14784	; 0x39c0
 e00b08c:	e346300a 	movt	r3, #24586	; 0x600a
 e00b090:	e1a02000 	mov	r2, r0
 e00b094:	e3a00000 	mov	r0, #0
 e00b098:	e5832000 	str	r2, [r3]
 e00b09c:	e12fff1e 	bx	lr

0e00b0a0 <pmu_get_sleep_type>:
 e00b0a0:	e30339c0 	movw	r3, #14784	; 0x39c0
 e00b0a4:	e346300a 	movt	r3, #24586	; 0x600a
 e00b0a8:	e5930000 	ldr	r0, [r3]
 e00b0ac:	e12fff1e 	bx	lr

0e00b0b0 <pmu_acquire_deepwakelock>:
 e00b0b0:	e3053264 	movw	r3, #21092	; 0x5264
 e00b0b4:	e3463009 	movt	r3, #24585	; 0x6009
 e00b0b8:	e3a01001 	mov	r1, #1
 e00b0bc:	e5932000 	ldr	r2, [r3]
 e00b0c0:	e1822011 	orr	r2, r2, r1, lsl r0
 e00b0c4:	e5832000 	str	r2, [r3]
 e00b0c8:	e12fff1e 	bx	lr

0e00b0cc <pmu_get_deepwakelock_status>:
 e00b0cc:	e3053264 	movw	r3, #21092	; 0x5264
 e00b0d0:	e3463009 	movt	r3, #24585	; 0x6009
 e00b0d4:	e5930000 	ldr	r0, [r3]
 e00b0d8:	e12fff1e 	bx	lr

0e00b0dc <pmu_set_secondary_cpu_state>:
 e00b0dc:	e30338c4 	movw	r3, #14532	; 0x38c4
 e00b0e0:	e346300a 	movt	r3, #24586	; 0x600a
 e00b0e4:	e7831100 	str	r1, [r3, r0, lsl #2]
 e00b0e8:	e12fff1e 	bx	lr

0e00b0ec <pmu_get_secondary_cpu_state>:
 e00b0ec:	e30338c4 	movw	r3, #14532	; 0x38c4
 e00b0f0:	e346300a 	movt	r3, #24586	; 0x600a
 e00b0f4:	e7930100 	ldr	r0, [r3, r0, lsl #2]
 e00b0f8:	e12fff1e 	bx	lr

0e00b0fc <pmu_secondary_cpu_state_is_running>:
 e00b0fc:	e30338c4 	movw	r3, #14532	; 0x38c4
 e00b100:	e346300a 	movt	r3, #24586	; 0x600a
 e00b104:	e7930100 	ldr	r0, [r3, r0, lsl #2]
 e00b108:	e16f0f10 	clz	r0, r0
 e00b10c:	e1a002a0 	lsr	r0, r0, #5
 e00b110:	e12fff1e 	bx	lr

0e00b114 <pmu_secondary_cpu_state_is_hotplug>:
 e00b114:	e30338c4 	movw	r3, #14532	; 0x38c4
 e00b118:	e346300a 	movt	r3, #24586	; 0x600a
 e00b11c:	e7930100 	ldr	r0, [r3, r0, lsl #2]
 e00b120:	e2400001 	sub	r0, r0, #1
 e00b124:	e16f0f10 	clz	r0, r0
 e00b128:	e1a002a0 	lsr	r0, r0, #5
 e00b12c:	e12fff1e 	bx	lr

0e00b130 <mmap_add_region>:
 e00b130:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e00b134:	e3a0e101 	mov	lr, #1073741824	; 0x40000000
 e00b138:	e24dd01c 	sub	sp, sp, #28
 e00b13c:	e1cd00f0 	strd	r0, [sp]
 e00b140:	e59dc020 	ldr	ip, [sp, #32]
 e00b144:	e1a0100d 	mov	r1, sp
 e00b148:	e3050270 	movw	r0, #21104	; 0x5270
 e00b14c:	e3460009 	movt	r0, #24585	; 0x6009
 e00b150:	e58de014 	str	lr, [sp, #20]
 e00b154:	e1cd20f8 	strd	r2, [sp, #8]
 e00b158:	e58dc010 	str	ip, [sp, #16]
 e00b15c:	eb0001ae 	bl	e00b81c <mmap_add_region_ctx>
 e00b160:	e28dd01c 	add	sp, sp, #28
 e00b164:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

0e00b168 <init_xlat_tables>:
 e00b168:	e92d4010 	push	{r4, lr}
 e00b16c:	e3054270 	movw	r4, #21104	; 0x5270
 e00b170:	e3464009 	movt	r4, #24585	; 0x6009
 e00b174:	e24dd008 	sub	sp, sp, #8
 e00b178:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
 e00b17c:	e3730001 	cmn	r3, #1
 e00b180:	0a00000c 	beq	e00b1b8 <init_xlat_tables+0x50>
 e00b184:	e3a00060 	mov	r0, #96	; 0x60
 e00b188:	e305c30c 	movw	ip, #21260	; 0x530c
 e00b18c:	e340ce01 	movt	ip, #3585	; 0xe01
 e00b190:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00b194:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b198:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00b19c:	e3401e01 	movt	r1, #3585	; 0xe01
 e00b1a0:	e58d0004 	str	r0, [sp, #4]
 e00b1a4:	e3a02049 	mov	r2, #73	; 0x49
 e00b1a8:	e3a00004 	mov	r0, #4
 e00b1ac:	e58dc000 	str	ip, [sp]
 e00b1b0:	ebfff9bc 	bl	e0098a8 <rtk_log_write>
 e00b1b4:	eafffffe 	b	e00b1b4 <init_xlat_tables+0x4c>
 e00b1b8:	eb0003ca 	bl	e00c0e8 <xlat_arch_current_el>
 e00b1bc:	e3500001 	cmp	r0, #1
 e00b1c0:	0a000010 	beq	e00b208 <init_xlat_tables+0xa0>
 e00b1c4:	e3500002 	cmp	r0, #2
 e00b1c8:	0a00000e 	beq	e00b208 <init_xlat_tables+0xa0>
 e00b1cc:	e3500003 	cmp	r0, #3
 e00b1d0:	0a00000c 	beq	e00b208 <init_xlat_tables+0xa0>
 e00b1d4:	e3a00069 	mov	r0, #105	; 0x69
 e00b1d8:	e305c30c 	movw	ip, #21260	; 0x530c
 e00b1dc:	e340ce01 	movt	ip, #3585	; 0xe01
 e00b1e0:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00b1e4:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b1e8:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00b1ec:	e3401e01 	movt	r1, #3585	; 0xe01
 e00b1f0:	e58d0004 	str	r0, [sp, #4]
 e00b1f4:	e3a02049 	mov	r2, #73	; 0x49
 e00b1f8:	e3a00004 	mov	r0, #4
 e00b1fc:	e58dc000 	str	ip, [sp]
 e00b200:	ebfff9a8 	bl	e0098a8 <rtk_log_write>
 e00b204:	eafffffe 	b	e00b204 <init_xlat_tables+0x9c>
 e00b208:	e584003c 	str	r0, [r4, #60]	; 0x3c
 e00b20c:	e3050270 	movw	r0, #21104	; 0x5270
 e00b210:	e3460009 	movt	r0, #24585	; 0x6009
 e00b214:	e28dd008 	add	sp, sp, #8
 e00b218:	e8bd4010 	pop	{r4, lr}
 e00b21c:	ea000295 	b	e00bc78 <init_xlat_tables_ctx>

0e00b220 <enable_mmu_svc_mon>:
 e00b220:	e92d4010 	push	{r4, lr}
 e00b224:	e3053270 	movw	r3, #21104	; 0x5270
 e00b228:	e3463009 	movt	r3, #24585	; 0x6009
 e00b22c:	e24dd010 	sub	sp, sp, #16
 e00b230:	e1a04000 	mov	r4, r0
 e00b234:	e593c008 	ldr	ip, [r3, #8]
 e00b238:	e1c300d0 	ldrd	r0, [r3]
 e00b23c:	e5932020 	ldr	r2, [r3, #32]
 e00b240:	e1cd00f0 	strd	r0, [sp]
 e00b244:	e3a03001 	mov	r3, #1
 e00b248:	e1a01004 	mov	r1, r4
 e00b24c:	e58dc008 	str	ip, [sp, #8]
 e00b250:	e58d300c 	str	r3, [sp, #12]
 e00b254:	e30309d8 	movw	r0, #14808	; 0x39d8
 e00b258:	e346000a 	movt	r0, #24586	; 0x600a
 e00b25c:	eb0003fb 	bl	e00c250 <setup_mmu_cfg>
 e00b260:	e1a00004 	mov	r0, r4
 e00b264:	e28dd010 	add	sp, sp, #16
 e00b268:	e8bd4010 	pop	{r4, lr}
 e00b26c:	ea0004c7 	b	e00c590 <enable_mmu_direct_svc_mon>

0e00b270 <xlat_desc>:
 e00b270:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 e00b274:	e1a04001 	mov	r4, r1
 e00b278:	e24dd00c 	sub	sp, sp, #12
 e00b27c:	e3e01008 	mvn	r1, #8
 e00b280:	e3e0c000 	mvn	ip, #0
 e00b284:	e59de020 	ldr	lr, [sp, #32]
 e00b288:	e0010e91 	mul	r1, r1, lr
 e00b28c:	e2811027 	add	r1, r1, #39	; 0x27
 e00b290:	e1d2111c 	bics	r1, r2, ip, lsl r1
 e00b294:	1a00002a 	bne	e00b344 <xlat_desc+0xd4>
 e00b298:	e35e0003 	cmp	lr, #3
 e00b29c:	03a05003 	moveq	r5, #3
 e00b2a0:	13a05001 	movne	r5, #1
 e00b2a4:	e094c004 	adds	ip, r4, r4
 e00b2a8:	e590003c 	ldr	r0, [r0, #60]	; 0x3c
 e00b2ac:	e3140008 	tst	r4, #8
 e00b2b0:	e20cc020 	and	ip, ip, #32
 e00b2b4:	03822080 	orreq	r2, r2, #128	; 0x80
 e00b2b8:	e185500c 	orr	r5, r5, ip
 e00b2bc:	e1855002 	orr	r5, r5, r2
 e00b2c0:	e1816003 	orr	r6, r1, r3
 e00b2c4:	e3500001 	cmp	r0, #1
 e00b2c8:	0a000010 	beq	e00b310 <xlat_desc+0xa0>
 e00b2cc:	e2403002 	sub	r3, r0, #2
 e00b2d0:	e3530001 	cmp	r3, #1
 e00b2d4:	8a000034 	bhi	e00b3ac <xlat_desc+0x13c>
 e00b2d8:	e3855d11 	orr	r5, r5, #1088	; 0x440
 e00b2dc:	e1a01006 	mov	r1, r6
 e00b2e0:	e2147007 	ands	r7, r4, #7
 e00b2e4:	0a00000f 	beq	e00b328 <xlat_desc+0xb8>
 e00b2e8:	e3140028 	tst	r4, #40	; 0x28
 e00b2ec:	1a000042 	bne	e00b3fc <xlat_desc+0x18c>
 e00b2f0:	e3570002 	cmp	r7, #2
 e00b2f4:	0a000039 	beq	e00b3e0 <xlat_desc+0x170>
 e00b2f8:	e3570001 	cmp	r7, #1
 e00b2fc:	03855f82 	orreq	r5, r5, #520	; 0x208
 e00b300:	1a00001c 	bne	e00b378 <xlat_desc+0x108>
 e00b304:	e1a00005 	mov	r0, r5
 e00b308:	e28dd00c 	add	sp, sp, #12
 e00b30c:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
 e00b310:	e3140040 	tst	r4, #64	; 0x40
 e00b314:	03855b01 	orreq	r5, r5, #1024	; 0x400
 e00b318:	01a01006 	moveq	r1, r6
 e00b31c:	1affffed 	bne	e00b2d8 <xlat_desc+0x68>
 e00b320:	e2147007 	ands	r7, r4, #7
 e00b324:	1affffef 	bne	e00b2e8 <xlat_desc+0x78>
 e00b328:	eb000355 	bl	e00c084 <xlat_arch_regime_get_xn_desc>
 e00b32c:	e1855000 	orr	r5, r5, r0
 e00b330:	e3855f81 	orr	r5, r5, #516	; 0x204
 e00b334:	e1861001 	orr	r1, r6, r1
 e00b338:	e1a00005 	mov	r0, r5
 e00b33c:	e28dd00c 	add	sp, sp, #12
 e00b340:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
 e00b344:	e3a00084 	mov	r0, #132	; 0x84
 e00b348:	e305c3ac 	movw	ip, #21420	; 0x53ac
 e00b34c:	e340ce01 	movt	ip, #3585	; 0xe01
 e00b350:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00b354:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b358:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00b35c:	e3401e01 	movt	r1, #3585	; 0xe01
 e00b360:	e58d0004 	str	r0, [sp, #4]
 e00b364:	e3a02049 	mov	r2, #73	; 0x49
 e00b368:	e3a00004 	mov	r0, #4
 e00b36c:	e58dc000 	str	ip, [sp]
 e00b370:	ebfff94c 	bl	e0098a8 <rtk_log_write>
 e00b374:	eafffffe 	b	e00b374 <xlat_desc+0x104>
 e00b378:	e3a000ee 	mov	r0, #238	; 0xee
 e00b37c:	e305c3ac 	movw	ip, #21420	; 0x53ac
 e00b380:	e340ce01 	movt	ip, #3585	; 0xe01
 e00b384:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00b388:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b38c:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00b390:	e3401e01 	movt	r1, #3585	; 0xe01
 e00b394:	e58d0004 	str	r0, [sp, #4]
 e00b398:	e3a02049 	mov	r2, #73	; 0x49
 e00b39c:	e3a00004 	mov	r0, #4
 e00b3a0:	e58dc000 	str	ip, [sp]
 e00b3a4:	ebfff93f 	bl	e0098a8 <rtk_log_write>
 e00b3a8:	eafffffe 	b	e00b3a8 <xlat_desc+0x138>
 e00b3ac:	e3a000a6 	mov	r0, #166	; 0xa6
 e00b3b0:	e305c3ac 	movw	ip, #21420	; 0x53ac
 e00b3b4:	e340ce01 	movt	ip, #3585	; 0xe01
 e00b3b8:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00b3bc:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b3c0:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00b3c4:	e3401e01 	movt	r1, #3585	; 0xe01
 e00b3c8:	e58d0004 	str	r0, [sp, #4]
 e00b3cc:	e3a02049 	mov	r2, #73	; 0x49
 e00b3d0:	e3a00004 	mov	r0, #4
 e00b3d4:	e58dc000 	str	ip, [sp]
 e00b3d8:	ebfff932 	bl	e0098a8 <rtk_log_write>
 e00b3dc:	eafffffe 	b	e00b3dc <xlat_desc+0x16c>
 e00b3e0:	e2044d06 	and	r4, r4, #384	; 0x180
 e00b3e4:	e3540d06 	cmp	r4, #384	; 0x180
 e00b3e8:	0affffc5 	beq	e00b304 <xlat_desc+0x94>
 e00b3ec:	e3540c01 	cmp	r4, #256	; 0x100
 e00b3f0:	03855c02 	orreq	r5, r5, #512	; 0x200
 e00b3f4:	13855c03 	orrne	r5, r5, #768	; 0x300
 e00b3f8:	eaffffc1 	b	e00b304 <xlat_desc+0x94>
 e00b3fc:	eb000320 	bl	e00c084 <xlat_arch_regime_get_xn_desc>
 e00b400:	e1855000 	orr	r5, r5, r0
 e00b404:	e1861001 	orr	r1, r6, r1
 e00b408:	eaffffb8 	b	e00b2f0 <xlat_desc+0x80>

0e00b40c <xlat_tables_map_region>:
 e00b40c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e00b410:	e1a04002 	mov	r4, r2
 e00b414:	e24dd02c 	sub	sp, sp, #44	; 0x2c
 e00b418:	e5902034 	ldr	r2, [r0, #52]	; 0x34
 e00b41c:	e59d7054 	ldr	r7, [sp, #84]	; 0x54
 e00b420:	e1520007 	cmp	r2, r7
 e00b424:	93570003 	cmpls	r7, #3
 e00b428:	9a00000c 	bls	e00b460 <xlat_tables_map_region+0x54>
 e00b42c:	e3000251 	movw	r0, #593	; 0x251
 e00b430:	e305c3ac 	movw	ip, #21420	; 0x53ac
 e00b434:	e340ce01 	movt	ip, #3585	; 0xe01
 e00b438:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00b43c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b440:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00b444:	e3401e01 	movt	r1, #3585	; 0xe01
 e00b448:	e58d0004 	str	r0, [sp, #4]
 e00b44c:	e3a02049 	mov	r2, #73	; 0x49
 e00b450:	e3a00004 	mov	r0, #4
 e00b454:	e58dc000 	str	ip, [sp]
 e00b458:	ebfff912 	bl	e0098a8 <rtk_log_write>
 e00b45c:	eafffffe 	b	e00b45c <xlat_tables_map_region+0x50>
 e00b460:	e3e02008 	mvn	r2, #8
 e00b464:	e1a05001 	mov	r5, r1
 e00b468:	e0020792 	mul	r2, r2, r7
 e00b46c:	e5911008 	ldr	r1, [r1, #8]
 e00b470:	e1a06000 	mov	r6, r0
 e00b474:	e2820027 	add	r0, r2, #39	; 0x27
 e00b478:	e595200c 	ldr	r2, [r5, #12]
 e00b47c:	e1510004 	cmp	r1, r4
 e00b480:	e0812002 	add	r2, r1, r2
 e00b484:	e2422001 	sub	r2, r2, #1
 e00b488:	e58d2010 	str	r2, [sp, #16]
 e00b48c:	e3a02001 	mov	r2, #1
 e00b490:	93a08000 	movls	r8, #0
 e00b494:	e1a02012 	lsl	r2, r2, r0
 e00b498:	e58d0014 	str	r0, [sp, #20]
 e00b49c:	e58d200c 	str	r2, [sp, #12]
 e00b4a0:	8a000059 	bhi	e00b60c <xlat_tables_map_region+0x200>
 e00b4a4:	e083b188 	add	fp, r3, r8, lsl #3
 e00b4a8:	e59d300c 	ldr	r3, [sp, #12]
 e00b4ac:	e3a0aa0f 	mov	sl, #61440	; 0xf000
 e00b4b0:	e34fafff 	movt	sl, #65535	; 0xffff
 e00b4b4:	e2433001 	sub	r3, r3, #1
 e00b4b8:	e0849003 	add	r9, r4, r3
 e00b4bc:	e58d301c 	str	r3, [sp, #28]
 e00b4c0:	e2873001 	add	r3, r7, #1
 e00b4c4:	e58d3018 	str	r3, [sp, #24]
 e00b4c8:	e59d3050 	ldr	r3, [sp, #80]	; 0x50
 e00b4cc:	e1580003 	cmp	r8, r3
 e00b4d0:	2a0000b8 	bcs	e00b7b8 <xlat_tables_map_region+0x3ac>
 e00b4d4:	e5953008 	ldr	r3, [r5, #8]
 e00b4d8:	e595200c 	ldr	r2, [r5, #12]
 e00b4dc:	e1530004 	cmp	r3, r4
 e00b4e0:	e0832002 	add	r2, r3, r2
 e00b4e4:	e2422001 	sub	r2, r2, #1
 e00b4e8:	83a00000 	movhi	r0, #0
 e00b4ec:	93a00001 	movls	r0, #1
 e00b4f0:	e59b1000 	ldr	r1, [fp]
 e00b4f4:	e1520009 	cmp	r2, r9
 e00b4f8:	33a00000 	movcc	r0, #0
 e00b4fc:	e3500000 	cmp	r0, #0
 e00b500:	e2010003 	and	r0, r1, #3
 e00b504:	1a000019 	bne	e00b570 <xlat_tables_map_region+0x164>
 e00b508:	e1530009 	cmp	r3, r9
 e00b50c:	83a03000 	movhi	r3, #0
 e00b510:	93a03001 	movls	r3, #1
 e00b514:	e1520004 	cmp	r2, r4
 e00b518:	23833001 	orrcs	r3, r3, #1
 e00b51c:	e3530000 	cmp	r3, #0
 e00b520:	0a00002f 	beq	e00b5e4 <xlat_tables_map_region+0x1d8>
 e00b524:	e3570003 	cmp	r7, #3
 e00b528:	0a00003f 	beq	e00b62c <xlat_tables_map_region+0x220>
 e00b52c:	e3500000 	cmp	r0, #0
 e00b530:	0a00004a 	beq	e00b660 <xlat_tables_map_region+0x254>
 e00b534:	e3500003 	cmp	r0, #3
 e00b538:	0a00008a 	beq	e00b768 <xlat_tables_map_region+0x35c>
 e00b53c:	e300022f 	movw	r0, #559	; 0x22f
 e00b540:	e305c3ac 	movw	ip, #21420	; 0x53ac
 e00b544:	e340ce01 	movt	ip, #3585	; 0xe01
 e00b548:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00b54c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b550:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00b554:	e3401e01 	movt	r1, #3585	; 0xe01
 e00b558:	e58d0004 	str	r0, [sp, #4]
 e00b55c:	e3a02049 	mov	r2, #73	; 0x49
 e00b560:	e3a00004 	mov	r0, #4
 e00b564:	e58dc000 	str	ip, [sp]
 e00b568:	ebfff8ce 	bl	e0098a8 <rtk_log_write>
 e00b56c:	eafffffe 	b	e00b56c <xlat_tables_map_region+0x160>
 e00b570:	e5952000 	ldr	r2, [r5]
 e00b574:	e595c004 	ldr	ip, [r5, #4]
 e00b578:	e0523003 	subs	r3, r2, r3
 e00b57c:	e2ccc000 	sbc	ip, ip, #0
 e00b580:	e0932004 	adds	r2, r3, r4
 e00b584:	e2ac3000 	adc	r3, ip, #0
 e00b588:	e3570003 	cmp	r7, #3
 e00b58c:	0a000064 	beq	e00b724 <xlat_tables_map_region+0x318>
 e00b590:	e3500003 	cmp	r0, #3
 e00b594:	0a000073 	beq	e00b768 <xlat_tables_map_region+0x35c>
 e00b598:	e3500000 	cmp	r0, #0
 e00b59c:	1a000051 	bne	e00b6e8 <xlat_tables_map_region+0x2dc>
 e00b5a0:	e59d101c 	ldr	r1, [sp, #28]
 e00b5a4:	e1120001 	tst	r2, r1
 e00b5a8:	13a01001 	movne	r1, #1
 e00b5ac:	03a01000 	moveq	r1, #0
 e00b5b0:	e3570000 	cmp	r7, #0
 e00b5b4:	03811001 	orreq	r1, r1, #1
 e00b5b8:	e3510000 	cmp	r1, #0
 e00b5bc:	1a000027 	bne	e00b660 <xlat_tables_map_region+0x254>
 e00b5c0:	e5951014 	ldr	r1, [r5, #20]
 e00b5c4:	e59d0014 	ldr	r0, [sp, #20]
 e00b5c8:	e1b01031 	lsrs	r1, r1, r0
 e00b5cc:	0a000023 	beq	e00b660 <xlat_tables_map_region+0x254>
 e00b5d0:	e58d7000 	str	r7, [sp]
 e00b5d4:	e1a00006 	mov	r0, r6
 e00b5d8:	e5951010 	ldr	r1, [r5, #16]
 e00b5dc:	ebffff23 	bl	e00b270 <xlat_desc>
 e00b5e0:	e1cb00f0 	strd	r0, [fp]
 e00b5e4:	e59d300c 	ldr	r3, [sp, #12]
 e00b5e8:	e59d2010 	ldr	r2, [sp, #16]
 e00b5ec:	e0844003 	add	r4, r4, r3
 e00b5f0:	e2888001 	add	r8, r8, #1
 e00b5f4:	e28bb008 	add	fp, fp, #8
 e00b5f8:	e1520004 	cmp	r2, r4
 e00b5fc:	e0833009 	add	r3, r3, r9
 e00b600:	9a000083 	bls	e00b814 <xlat_tables_map_region+0x408>
 e00b604:	e1a09003 	mov	r9, r3
 e00b608:	eaffffae 	b	e00b4c8 <xlat_tables_map_region+0xbc>
 e00b60c:	e59d200c 	ldr	r2, [sp, #12]
 e00b610:	e2622000 	rsb	r2, r2, #0
 e00b614:	e0011002 	and	r1, r1, r2
 e00b618:	e59d2014 	ldr	r2, [sp, #20]
 e00b61c:	e0418004 	sub	r8, r1, r4
 e00b620:	e1a04001 	mov	r4, r1
 e00b624:	e1a08238 	lsr	r8, r8, r2
 e00b628:	eaffff9d 	b	e00b4a4 <xlat_tables_map_region+0x98>
 e00b62c:	e3a00f89 	mov	r0, #548	; 0x224
 e00b630:	e305c3ac 	movw	ip, #21420	; 0x53ac
 e00b634:	e340ce01 	movt	ip, #3585	; 0xe01
 e00b638:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00b63c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b640:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00b644:	e3401e01 	movt	r1, #3585	; 0xe01
 e00b648:	e58d0004 	str	r0, [sp, #4]
 e00b64c:	e3a02049 	mov	r2, #73	; 0x49
 e00b650:	e3a00004 	mov	r0, #4
 e00b654:	e58dc000 	str	ip, [sp]
 e00b658:	ebfff892 	bl	e0098a8 <rtk_log_write>
 e00b65c:	eafffffe 	b	e00b65c <xlat_tables_map_region+0x250>
 e00b660:	e596201c 	ldr	r2, [r6, #28]
 e00b664:	e5963018 	ldr	r3, [r6, #24]
 e00b668:	e1520003 	cmp	r2, r3
 e00b66c:	aa000053 	bge	e00b7c0 <xlat_tables_map_region+0x3b4>
 e00b670:	e5963014 	ldr	r3, [r6, #20]
 e00b674:	e0933602 	adds	r3, r3, r2, lsl #12
 e00b678:	e2822001 	add	r2, r2, #1
 e00b67c:	e586201c 	str	r2, [r6, #28]
 e00b680:	e1a02004 	mov	r2, r4
 e00b684:	0a000014 	beq	e00b6dc <xlat_tables_map_region+0x2d0>
 e00b688:	e3830003 	orr	r0, r3, #3
 e00b68c:	e58b0000 	str	r0, [fp]
 e00b690:	e3a00000 	mov	r0, #0
 e00b694:	e58b0004 	str	r0, [fp, #4]
 e00b698:	e59d0018 	ldr	r0, [sp, #24]
 e00b69c:	e1a01005 	mov	r1, r5
 e00b6a0:	e58d0004 	str	r0, [sp, #4]
 e00b6a4:	e3a00c02 	mov	r0, #512	; 0x200
 e00b6a8:	e58d0000 	str	r0, [sp]
 e00b6ac:	e1a00006 	mov	r0, r6
 e00b6b0:	e58d3024 	str	r3, [sp, #36]	; 0x24
 e00b6b4:	ebffff54 	bl	e00b40c <xlat_tables_map_region>
 e00b6b8:	e58d0020 	str	r0, [sp, #32]
 e00b6bc:	eb000266 	bl	e00c05c <is_dcache_enabled>
 e00b6c0:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e00b6c4:	e3500000 	cmp	r0, #0
 e00b6c8:	1a00004d 	bne	e00b804 <xlat_tables_map_region+0x3f8>
 e00b6cc:	e59d3020 	ldr	r3, [sp, #32]
 e00b6d0:	e1530009 	cmp	r3, r9
 e00b6d4:	0affffc2 	beq	e00b5e4 <xlat_tables_map_region+0x1d8>
 e00b6d8:	e1a02003 	mov	r2, r3
 e00b6dc:	e1a00002 	mov	r0, r2
 e00b6e0:	e28dd02c 	add	sp, sp, #44	; 0x2c
 e00b6e4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00b6e8:	e3500001 	cmp	r0, #1
 e00b6ec:	0affffbc 	beq	e00b5e4 <xlat_tables_map_region+0x1d8>
 e00b6f0:	e300020f 	movw	r0, #527	; 0x20f
 e00b6f4:	e305c3ac 	movw	ip, #21420	; 0x53ac
 e00b6f8:	e340ce01 	movt	ip, #3585	; 0xe01
 e00b6fc:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00b700:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b704:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00b708:	e3401e01 	movt	r1, #3585	; 0xe01
 e00b70c:	e58d0004 	str	r0, [sp, #4]
 e00b710:	e3a02049 	mov	r2, #73	; 0x49
 e00b714:	e3a00004 	mov	r0, #4
 e00b718:	e58dc000 	str	ip, [sp]
 e00b71c:	ebfff861 	bl	e0098a8 <rtk_log_write>
 e00b720:	eafffffe 	b	e00b720 <xlat_tables_map_region+0x314>
 e00b724:	e3500003 	cmp	r0, #3
 e00b728:	0affffad 	beq	e00b5e4 <xlat_tables_map_region+0x1d8>
 e00b72c:	e3500000 	cmp	r0, #0
 e00b730:	0affffa6 	beq	e00b5d0 <xlat_tables_map_region+0x1c4>
 e00b734:	e30001e7 	movw	r0, #487	; 0x1e7
 e00b738:	e305c3ac 	movw	ip, #21420	; 0x53ac
 e00b73c:	e340ce01 	movt	ip, #3585	; 0xe01
 e00b740:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00b744:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b748:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00b74c:	e3401e01 	movt	r1, #3585	; 0xe01
 e00b750:	e58d0004 	str	r0, [sp, #4]
 e00b754:	e3a02049 	mov	r2, #73	; 0x49
 e00b758:	e3a00004 	mov	r0, #4
 e00b75c:	e58dc000 	str	ip, [sp]
 e00b760:	ebfff850 	bl	e0098a8 <rtk_log_write>
 e00b764:	eafffffe 	b	e00b764 <xlat_tables_map_region+0x358>
 e00b768:	e59d2018 	ldr	r2, [sp, #24]
 e00b76c:	e001300a 	and	r3, r1, sl
 e00b770:	e58d2004 	str	r2, [sp, #4]
 e00b774:	e1a01005 	mov	r1, r5
 e00b778:	e3a02c02 	mov	r2, #512	; 0x200
 e00b77c:	e1a00006 	mov	r0, r6
 e00b780:	e58d2000 	str	r2, [sp]
 e00b784:	e1a02004 	mov	r2, r4
 e00b788:	e58d3024 	str	r3, [sp, #36]	; 0x24
 e00b78c:	ebffff1e 	bl	e00b40c <xlat_tables_map_region>
 e00b790:	e58d0020 	str	r0, [sp, #32]
 e00b794:	eb000230 	bl	e00c05c <is_dcache_enabled>
 e00b798:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
 e00b79c:	e3500000 	cmp	r0, #0
 e00b7a0:	1a000013 	bne	e00b7f4 <xlat_tables_map_region+0x3e8>
 e00b7a4:	e59d3020 	ldr	r3, [sp, #32]
 e00b7a8:	e1530009 	cmp	r3, r9
 e00b7ac:	0affff8c 	beq	e00b5e4 <xlat_tables_map_region+0x1d8>
 e00b7b0:	e59d2020 	ldr	r2, [sp, #32]
 e00b7b4:	eaffffc8 	b	e00b6dc <xlat_tables_map_region+0x2d0>
 e00b7b8:	e2442001 	sub	r2, r4, #1
 e00b7bc:	eaffffc6 	b	e00b6dc <xlat_tables_map_region+0x2d0>
 e00b7c0:	e3a00072 	mov	r0, #114	; 0x72
 e00b7c4:	e305c3ac 	movw	ip, #21420	; 0x53ac
 e00b7c8:	e340ce01 	movt	ip, #3585	; 0xe01
 e00b7cc:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00b7d0:	e3403e01 	movt	r3, #3585	; 0xe01
 e00b7d4:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00b7d8:	e3401e01 	movt	r1, #3585	; 0xe01
 e00b7dc:	e58d0004 	str	r0, [sp, #4]
 e00b7e0:	e3a02049 	mov	r2, #73	; 0x49
 e00b7e4:	e3a00004 	mov	r0, #4
 e00b7e8:	e58dc000 	str	ip, [sp]
 e00b7ec:	ebfff82d 	bl	e0098a8 <rtk_log_write>
 e00b7f0:	eafffffe 	b	e00b7f0 <xlat_tables_map_region+0x3e4>
 e00b7f4:	e1a00003 	mov	r0, r3
 e00b7f8:	e3a01a01 	mov	r1, #4096	; 0x1000
 e00b7fc:	eb00037c 	bl	e00c5f4 <clean_dcache_range>
 e00b800:	eaffffe7 	b	e00b7a4 <xlat_tables_map_region+0x398>
 e00b804:	e1a00003 	mov	r0, r3
 e00b808:	e3a01a01 	mov	r1, #4096	; 0x1000
 e00b80c:	eb000378 	bl	e00c5f4 <clean_dcache_range>
 e00b810:	eaffffad 	b	e00b6cc <xlat_tables_map_region+0x2c0>
 e00b814:	e1a02009 	mov	r2, r9
 e00b818:	eaffffaf 	b	e00b6dc <xlat_tables_map_region+0x2d0>

0e00b81c <mmap_add_region_ctx>:
 e00b81c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e00b820:	e24dd034 	sub	sp, sp, #52	; 0x34
 e00b824:	e591a00c 	ldr	sl, [r1, #12]
 e00b828:	e1cd00fc 	strd	r0, [sp, #12]
 e00b82c:	e35a0000 	cmp	sl, #0
 e00b830:	0a0000ec 	beq	e00bbe8 <mmap_add_region_ctx+0x3cc>
 e00b834:	e5d03038 	ldrb	r3, [r0, #56]	; 0x38
 e00b838:	e3530000 	cmp	r3, #0
 e00b83c:	1a00008b 	bne	e00ba70 <mmap_add_region_ctx+0x254>
 e00b840:	e59d1010 	ldr	r1, [sp, #16]
 e00b844:	e8911100 	ldm	r1, {r8, ip}
 e00b848:	e5912014 	ldr	r2, [r1, #20]
 e00b84c:	e7eb3058 	ubfx	r3, r8, #0, #12
 e00b850:	e3933000 	orrs	r3, r3, #0
 e00b854:	1a0000ff 	bne	e00bc58 <mmap_add_region_ctx+0x43c>
 e00b858:	e5916008 	ldr	r6, [r1, #8]
 e00b85c:	e18a3006 	orr	r3, sl, r6
 e00b860:	e7eb3053 	ubfx	r3, r3, #0, #12
 e00b864:	e3530000 	cmp	r3, #0
 e00b868:	1a0000fa 	bne	e00bc58 <mmap_add_region_ctx+0x43c>
 e00b86c:	e3520101 	cmp	r2, #1073741824	; 0x40000000
 e00b870:	13520602 	cmpne	r2, #2097152	; 0x200000
 e00b874:	13a03001 	movne	r3, #1
 e00b878:	03a03000 	moveq	r3, #0
 e00b87c:	e3520a01 	cmp	r2, #4096	; 0x1000
 e00b880:	03a03000 	moveq	r3, #0
 e00b884:	12033001 	andne	r3, r3, #1
 e00b888:	e3530000 	cmp	r3, #0
 e00b88c:	1a0000f1 	bne	e00bc58 <mmap_add_region_ctx+0x43c>
 e00b890:	e2583001 	subs	r3, r8, #1
 e00b894:	e2cc2000 	sbc	r2, ip, #0
 e00b898:	e093100a 	adds	r1, r3, sl
 e00b89c:	e2a20000 	adc	r0, r2, #0
 e00b8a0:	e1510008 	cmp	r1, r8
 e00b8a4:	e0d0300c 	sbcs	r3, r0, ip
 e00b8a8:	e08a3006 	add	r3, sl, r6
 e00b8ac:	e1a02003 	mov	r2, r3
 e00b8b0:	e58d301c 	str	r3, [sp, #28]
 e00b8b4:	e2425001 	sub	r5, r2, #1
 e00b8b8:	33a03001 	movcc	r3, #1
 e00b8bc:	23a03000 	movcs	r3, #0
 e00b8c0:	e1560005 	cmp	r6, r5
 e00b8c4:	83833001 	orrhi	r3, r3, #1
 e00b8c8:	e3530000 	cmp	r3, #0
 e00b8cc:	e58d1008 	str	r1, [sp, #8]
 e00b8d0:	e58d002c 	str	r0, [sp, #44]	; 0x2c
 e00b8d4:	1a0000e1 	bne	e00bc60 <mmap_add_region_ctx+0x444>
 e00b8d8:	e59d200c 	ldr	r2, [sp, #12]
 e00b8dc:	e5923008 	ldr	r3, [r2, #8]
 e00b8e0:	e1550003 	cmp	r5, r3
 e00b8e4:	8a0000dd 	bhi	e00bc60 <mmap_add_region_ctx+0x444>
 e00b8e8:	e5923000 	ldr	r3, [r2]
 e00b8ec:	e1530001 	cmp	r3, r1
 e00b8f0:	e5923004 	ldr	r3, [r2, #4]
 e00b8f4:	e0d33000 	sbcs	r3, r3, r0
 e00b8f8:	3a0000d8 	bcc	e00bc60 <mmap_add_region_ctx+0x444>
 e00b8fc:	e592100c 	ldr	r1, [r2, #12]
 e00b900:	e5923010 	ldr	r3, [r2, #16]
 e00b904:	e3a02018 	mov	r2, #24
 e00b908:	e58d1014 	str	r1, [sp, #20]
 e00b90c:	e0231392 	mla	r3, r2, r3, r1
 e00b910:	e58d3018 	str	r3, [sp, #24]
 e00b914:	e513300c 	ldr	r3, [r3, #-12]
 e00b918:	e3530000 	cmp	r3, #0
 e00b91c:	1a0000d3 	bne	e00bc70 <mmap_add_region_ctx+0x454>
 e00b920:	e591b00c 	ldr	fp, [r1, #12]
 e00b924:	e5913008 	ldr	r3, [r1, #8]
 e00b928:	e35b0000 	cmp	fp, #0
 e00b92c:	e58d3020 	str	r3, [sp, #32]
 e00b930:	0a0000cc 	beq	e00bc68 <mmap_add_region_ctx+0x44c>
 e00b934:	e0819002 	add	r9, r1, r2
 e00b938:	e1a03009 	mov	r3, r9
 e00b93c:	e1a0100b 	mov	r1, fp
 e00b940:	e58db024 	str	fp, [sp, #36]	; 0x24
 e00b944:	e58d9028 	str	r9, [sp, #40]	; 0x28
 e00b948:	e1a0b000 	mov	fp, r0
 e00b94c:	e1a0900c 	mov	r9, ip
 e00b950:	ea00001f 	b	e00b9d4 <mmap_add_region_ctx+0x1b8>
 e00b954:	e1550000 	cmp	r5, r0
 e00b958:	33a04000 	movcc	r4, #0
 e00b95c:	23a04001 	movcs	r4, #1
 e00b960:	e1560002 	cmp	r6, r2
 e00b964:	83a04000 	movhi	r4, #0
 e00b968:	e3540000 	cmp	r4, #0
 e00b96c:	1a000024 	bne	e00ba04 <mmap_add_region_ctx+0x1e8>
 e00b970:	e2511001 	subs	r1, r1, #1
 e00b974:	e2c44000 	sbc	r4, r4, #0
 e00b978:	e09cc00e 	adds	ip, ip, lr
 e00b97c:	e0a74004 	adc	r4, r7, r4
 e00b980:	e15c0008 	cmp	ip, r8
 e00b984:	e59dc008 	ldr	ip, [sp, #8]
 e00b988:	e0d41009 	sbcs	r1, r4, r9
 e00b98c:	33a01001 	movcc	r1, #1
 e00b990:	23a01000 	movcs	r1, #0
 e00b994:	e15c000e 	cmp	ip, lr
 e00b998:	e0dbc007 	sbcs	ip, fp, r7
 e00b99c:	33811001 	orrcc	r1, r1, #1
 e00b9a0:	e1560000 	cmp	r6, r0
 e00b9a4:	93a00000 	movls	r0, #0
 e00b9a8:	83a00001 	movhi	r0, #1
 e00b9ac:	e1550002 	cmp	r5, r2
 e00b9b0:	33800001 	orrcc	r0, r0, #1
 e00b9b4:	e3500000 	cmp	r0, #0
 e00b9b8:	0a00001b 	beq	e00ba2c <mmap_add_region_ctx+0x210>
 e00b9bc:	e3510000 	cmp	r1, #0
 e00b9c0:	0a000019 	beq	e00ba2c <mmap_add_region_ctx+0x210>
 e00b9c4:	e593100c 	ldr	r1, [r3, #12]
 e00b9c8:	e2833018 	add	r3, r3, #24
 e00b9cc:	e3510000 	cmp	r1, #0
 e00b9d0:	0a000033 	beq	e00baa4 <mmap_add_region_ctx+0x288>
 e00b9d4:	e5132010 	ldr	r2, [r3, #-16]
 e00b9d8:	e241c001 	sub	ip, r1, #1
 e00b9dc:	e08c0002 	add	r0, ip, r2
 e00b9e0:	e1550000 	cmp	r5, r0
 e00b9e4:	83a04000 	movhi	r4, #0
 e00b9e8:	93a04001 	movls	r4, #1
 e00b9ec:	e1560002 	cmp	r6, r2
 e00b9f0:	33a04000 	movcc	r4, #0
 e00b9f4:	e513e018 	ldr	lr, [r3, #-24]	; 0xffffffe8
 e00b9f8:	e5137014 	ldr	r7, [r3, #-20]	; 0xffffffec
 e00b9fc:	e3540000 	cmp	r4, #0
 e00ba00:	0affffd3 	beq	e00b954 <mmap_add_region_ctx+0x138>
 e00ba04:	e052e00e 	subs	lr, r2, lr
 e00ba08:	e2e77000 	rsc	r7, r7, #0
 e00ba0c:	e056c008 	subs	ip, r6, r8
 e00ba10:	e2e90000 	rsc	r0, r9, #0
 e00ba14:	e1570000 	cmp	r7, r0
 e00ba18:	015e000c 	cmpeq	lr, ip
 e00ba1c:	1a000002 	bne	e00ba2c <mmap_add_region_ctx+0x210>
 e00ba20:	e15a0001 	cmp	sl, r1
 e00ba24:	01560002 	cmpeq	r6, r2
 e00ba28:	1affffe5 	bne	e00b9c4 <mmap_add_region_ctx+0x1a8>
 e00ba2c:	e3e01000 	mvn	r1, #0
 e00ba30:	e3050448 	movw	r0, #21576	; 0x5448
 e00ba34:	e3400e01 	movt	r0, #3585	; 0xe01
 e00ba38:	eb000724 	bl	e00d6d0 <__wrap_printf>
 e00ba3c:	e3a00fce 	mov	r0, #824	; 0x338
 e00ba40:	e305c3ac 	movw	ip, #21420	; 0x53ac
 e00ba44:	e340ce01 	movt	ip, #3585	; 0xe01
 e00ba48:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00ba4c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00ba50:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00ba54:	e3401e01 	movt	r1, #3585	; 0xe01
 e00ba58:	e58d0004 	str	r0, [sp, #4]
 e00ba5c:	e3a02049 	mov	r2, #73	; 0x49
 e00ba60:	e3a00004 	mov	r0, #4
 e00ba64:	e58dc000 	str	ip, [sp]
 e00ba68:	ebfff78e 	bl	e0098a8 <rtk_log_write>
 e00ba6c:	eafffffe 	b	e00ba6c <mmap_add_region_ctx+0x250>
 e00ba70:	e3000333 	movw	r0, #819	; 0x333
 e00ba74:	e305c3ac 	movw	ip, #21420	; 0x53ac
 e00ba78:	e340ce01 	movt	ip, #3585	; 0xe01
 e00ba7c:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00ba80:	e3403e01 	movt	r3, #3585	; 0xe01
 e00ba84:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00ba88:	e3401e01 	movt	r1, #3585	; 0xe01
 e00ba8c:	e58d0004 	str	r0, [sp, #4]
 e00ba90:	e3a02049 	mov	r2, #73	; 0x49
 e00ba94:	e3a00004 	mov	r0, #4
 e00ba98:	e58dc000 	str	ip, [sp]
 e00ba9c:	ebfff781 	bl	e0098a8 <rtk_log_write>
 e00baa0:	eafffffe 	b	e00baa0 <mmap_add_region_ctx+0x284>
 e00baa4:	e59db024 	ldr	fp, [sp, #36]	; 0x24
 e00baa8:	e59d3020 	ldr	r3, [sp, #32]
 e00baac:	e59d9028 	ldr	r9, [sp, #40]	; 0x28
 e00bab0:	e08b3003 	add	r3, fp, r3
 e00bab4:	e2432001 	sub	r2, r3, #1
 e00bab8:	e1550002 	cmp	r5, r2
 e00babc:	e59d4014 	ldr	r4, [sp, #20]
 e00bac0:	93a02001 	movls	r2, #1
 e00bac4:	9a00000b 	bls	e00baf8 <mmap_add_region_ctx+0x2dc>
 e00bac8:	e594b024 	ldr	fp, [r4, #36]	; 0x24
 e00bacc:	e5943020 	ldr	r3, [r4, #32]
 e00bad0:	e25b2000 	subs	r2, fp, #0
 e00bad4:	e08b3003 	add	r3, fp, r3
 e00bad8:	13a02001 	movne	r2, #1
 e00badc:	e2430001 	sub	r0, r3, #1
 e00bae0:	e1500005 	cmp	r0, r5
 e00bae4:	23a01000 	movcs	r1, #0
 e00bae8:	32021001 	andcc	r1, r2, #1
 e00baec:	e2844018 	add	r4, r4, #24
 e00baf0:	e3510000 	cmp	r1, #0
 e00baf4:	1afffff3 	bne	e00bac8 <mmap_add_region_ctx+0x2ac>
 e00baf8:	e59d101c 	ldr	r1, [sp, #28]
 e00bafc:	e15a000b 	cmp	sl, fp
 e00bb00:	e0410003 	sub	r0, r1, r3
 e00bb04:	e16f0f10 	clz	r0, r0
 e00bb08:	e1a002a0 	lsr	r0, r0, #5
 e00bb0c:	93a00000 	movls	r0, #0
 e00bb10:	e1120000 	tst	r2, r0
 e00bb14:	0a00000b 	beq	e00bb48 <mmap_add_region_ctx+0x32c>
 e00bb18:	e2844018 	add	r4, r4, #24
 e00bb1c:	e1c420d8 	ldrd	r2, [r4, #8]
 e00bb20:	e3530000 	cmp	r3, #0
 e00bb24:	115a0003 	cmpne	sl, r3
 e00bb28:	e0832002 	add	r2, r3, r2
 e00bb2c:	83a03001 	movhi	r3, #1
 e00bb30:	93a03000 	movls	r3, #0
 e00bb34:	e1520001 	cmp	r2, r1
 e00bb38:	13a03000 	movne	r3, #0
 e00bb3c:	02033001 	andeq	r3, r3, #1
 e00bb40:	e3530000 	cmp	r3, #0
 e00bb44:	1afffff3 	bne	e00bb18 <mmap_add_region_ctx+0x2fc>
 e00bb48:	e59d3014 	ldr	r3, [sp, #20]
 e00bb4c:	e59d2018 	ldr	r2, [sp, #24]
 e00bb50:	e1530002 	cmp	r3, r2
 e00bb54:	359d1018 	ldrcc	r1, [sp, #24]
 e00bb58:	3a000003 	bcc	e00bb6c <mmap_add_region_ctx+0x350>
 e00bb5c:	ea000023 	b	e00bbf0 <mmap_add_region_ctx+0x3d4>
 e00bb60:	e1590001 	cmp	r9, r1
 e00bb64:	2a000021 	bcs	e00bbf0 <mmap_add_region_ctx+0x3d4>
 e00bb68:	e2899018 	add	r9, r9, #24
 e00bb6c:	e599300c 	ldr	r3, [r9, #12]
 e00bb70:	e3530000 	cmp	r3, #0
 e00bb74:	1afffff9 	bne	e00bb60 <mmap_add_region_ctx+0x344>
 e00bb78:	e58d9014 	str	r9, [sp, #20]
 e00bb7c:	e59d3014 	ldr	r3, [sp, #20]
 e00bb80:	e1a01004 	mov	r1, r4
 e00bb84:	e0432004 	sub	r2, r3, r4
 e00bb88:	e2840018 	add	r0, r4, #24
 e00bb8c:	eb0004fc 	bl	e00cf84 <__wrap_memmove>
 e00bb90:	e59d3018 	ldr	r3, [sp, #24]
 e00bb94:	e593300c 	ldr	r3, [r3, #12]
 e00bb98:	e3530000 	cmp	r3, #0
 e00bb9c:	1a000020 	bne	e00bc24 <mmap_add_region_ctx+0x408>
 e00bba0:	e59dc010 	ldr	ip, [sp, #16]
 e00bba4:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 e00bba8:	e8a4000f 	stmia	r4!, {r0, r1, r2, r3}
 e00bbac:	e59d200c 	ldr	r2, [sp, #12]
 e00bbb0:	e89c0003 	ldm	ip, {r0, r1}
 e00bbb4:	e8840003 	stm	r4, {r0, r1}
 e00bbb8:	e59d1008 	ldr	r1, [sp, #8]
 e00bbbc:	e5923028 	ldr	r3, [r2, #40]	; 0x28
 e00bbc0:	e59d002c 	ldr	r0, [sp, #44]	; 0x2c
 e00bbc4:	e1530001 	cmp	r3, r1
 e00bbc8:	e592302c 	ldr	r3, [r2, #44]	; 0x2c
 e00bbcc:	e0d33000 	sbcs	r3, r3, r0
 e00bbd0:	35821028 	strcc	r1, [r2, #40]	; 0x28
 e00bbd4:	3582002c 	strcc	r0, [r2, #44]	; 0x2c
 e00bbd8:	e59d200c 	ldr	r2, [sp, #12]
 e00bbdc:	e5923030 	ldr	r3, [r2, #48]	; 0x30
 e00bbe0:	e1530005 	cmp	r3, r5
 e00bbe4:	35825030 	strcc	r5, [r2, #48]	; 0x30
 e00bbe8:	e28dd034 	add	sp, sp, #52	; 0x34
 e00bbec:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00bbf0:	e300336b 	movw	r3, #875	; 0x36b
 e00bbf4:	e30513ac 	movw	r1, #21420	; 0x53ac
 e00bbf8:	e3401e01 	movt	r1, #3585	; 0xe01
 e00bbfc:	e58d3004 	str	r3, [sp, #4]
 e00bc00:	e58d1000 	str	r1, [sp]
 e00bc04:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00bc08:	e3403e01 	movt	r3, #3585	; 0xe01
 e00bc0c:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00bc10:	e3401e01 	movt	r1, #3585	; 0xe01
 e00bc14:	e3a02049 	mov	r2, #73	; 0x49
 e00bc18:	e3a00004 	mov	r0, #4
 e00bc1c:	ebfff721 	bl	e0098a8 <rtk_log_write>
 e00bc20:	eafffffe 	b	e00bc20 <mmap_add_region_ctx+0x404>
 e00bc24:	e3000377 	movw	r0, #887	; 0x377
 e00bc28:	e305c3ac 	movw	ip, #21420	; 0x53ac
 e00bc2c:	e340ce01 	movt	ip, #3585	; 0xe01
 e00bc30:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00bc34:	e3403e01 	movt	r3, #3585	; 0xe01
 e00bc38:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00bc3c:	e3401e01 	movt	r1, #3585	; 0xe01
 e00bc40:	e58d0004 	str	r0, [sp, #4]
 e00bc44:	e3a02049 	mov	r2, #73	; 0x49
 e00bc48:	e3a00004 	mov	r0, #4
 e00bc4c:	e58dc000 	str	ip, [sp]
 e00bc50:	ebfff714 	bl	e0098a8 <rtk_log_write>
 e00bc54:	eafffffe 	b	e00bc54 <mmap_add_region_ctx+0x438>
 e00bc58:	e3e01015 	mvn	r1, #21
 e00bc5c:	eaffff73 	b	e00ba30 <mmap_add_region_ctx+0x214>
 e00bc60:	e3e01021 	mvn	r1, #33	; 0x21
 e00bc64:	eaffff71 	b	e00ba30 <mmap_add_region_ctx+0x214>
 e00bc68:	e59d4014 	ldr	r4, [sp, #20]
 e00bc6c:	eaffffc2 	b	e00bb7c <mmap_add_region_ctx+0x360>
 e00bc70:	e3e0100b 	mvn	r1, #11
 e00bc74:	eaffff6d 	b	e00ba30 <mmap_add_region_ctx+0x214>

0e00bc78 <init_xlat_tables_ctx>:
 e00bc78:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e00bc7c:	e2504000 	subs	r4, r0, #0
 e00bc80:	e24dd018 	sub	sp, sp, #24
 e00bc84:	0a00007b 	beq	e00be78 <init_xlat_tables_ctx+0x200>
 e00bc88:	e5d43038 	ldrb	r3, [r4, #56]	; 0x38
 e00bc8c:	e3530000 	cmp	r3, #0
 e00bc90:	1a00005e 	bne	e00be10 <init_xlat_tables_ctx+0x198>
 e00bc94:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
 e00bc98:	e2433001 	sub	r3, r3, #1
 e00bc9c:	e3530002 	cmp	r3, #2
 e00bca0:	9a00000c 	bls	e00bcd8 <init_xlat_tables_ctx+0x60>
 e00bca4:	e30004d7 	movw	r0, #1239	; 0x4d7
 e00bca8:	e305c3ac 	movw	ip, #21420	; 0x53ac
 e00bcac:	e340ce01 	movt	ip, #3585	; 0xe01
 e00bcb0:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00bcb4:	e3403e01 	movt	r3, #3585	; 0xe01
 e00bcb8:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00bcbc:	e3401e01 	movt	r1, #3585	; 0xe01
 e00bcc0:	e58d0004 	str	r0, [sp, #4]
 e00bcc4:	e3a02049 	mov	r2, #73	; 0x49
 e00bcc8:	e3a00004 	mov	r0, #4
 e00bccc:	e58dc000 	str	ip, [sp]
 e00bcd0:	ebfff6f4 	bl	e0098a8 <rtk_log_write>
 e00bcd4:	eafffffe 	b	e00bcd4 <init_xlat_tables_ctx+0x5c>
 e00bcd8:	eb000121 	bl	e00c164 <is_mmu_enabled_ctx>
 e00bcdc:	e3500000 	cmp	r0, #0
 e00bce0:	1a000057 	bne	e00be44 <init_xlat_tables_ctx+0x1cc>
 e00bce4:	e5946008 	ldr	r6, [r4, #8]
 e00bce8:	e594500c 	ldr	r5, [r4, #12]
 e00bcec:	eb0000d8 	bl	e00c054 <xlat_get_min_virt_addr_space_size>
 e00bcf0:	e2403001 	sub	r3, r0, #1
 e00bcf4:	e1560003 	cmp	r6, r3
 e00bcf8:	3a000078 	bcc	e00bee0 <init_xlat_tables_ctx+0x268>
 e00bcfc:	e5942008 	ldr	r2, [r4, #8]
 e00bd00:	e2823001 	add	r3, r2, #1
 e00bd04:	e0136002 	ands	r6, r3, r2
 e00bd08:	1a000067 	bne	e00beac <init_xlat_tables_ctx+0x234>
 e00bd0c:	e1a00005 	mov	r0, r5
 e00bd10:	eb0000ca 	bl	e00c040 <xlat_mmap_print>
 e00bd14:	e5942024 	ldr	r2, [r4, #36]	; 0x24
 e00bd18:	e3520000 	cmp	r2, #0
 e00bd1c:	0a000008 	beq	e00bd44 <init_xlat_tables_ctx+0xcc>
 e00bd20:	f2c00010 	vmov.i32	d16, #0	; 0x00000000
 e00bd24:	e1a03006 	mov	r3, r6
 e00bd28:	e5942020 	ldr	r2, [r4, #32]
 e00bd2c:	e0822183 	add	r2, r2, r3, lsl #3
 e00bd30:	e2833001 	add	r3, r3, #1
 e00bd34:	edc20b00 	vstr	d16, [r2]
 e00bd38:	e5942024 	ldr	r2, [r4, #36]	; 0x24
 e00bd3c:	e1520003 	cmp	r2, r3
 e00bd40:	8afffff8 	bhi	e00bd28 <init_xlat_tables_ctx+0xb0>
 e00bd44:	e5943018 	ldr	r3, [r4, #24]
 e00bd48:	e3530000 	cmp	r3, #0
 e00bd4c:	da00000e 	ble	e00bd8c <init_xlat_tables_ctx+0x114>
 e00bd50:	f2c00010 	vmov.i32	d16, #0	; 0x00000000
 e00bd54:	e3a00000 	mov	r0, #0
 e00bd58:	e1a01600 	lsl	r1, r0, #12
 e00bd5c:	e3a02000 	mov	r2, #0
 e00bd60:	e5943014 	ldr	r3, [r4, #20]
 e00bd64:	e0833001 	add	r3, r3, r1
 e00bd68:	e0833182 	add	r3, r3, r2, lsl #3
 e00bd6c:	e2822001 	add	r2, r2, #1
 e00bd70:	e3520c02 	cmp	r2, #512	; 0x200
 e00bd74:	edc30b00 	vstr	d16, [r3]
 e00bd78:	1afffff8 	bne	e00bd60 <init_xlat_tables_ctx+0xe8>
 e00bd7c:	e5943018 	ldr	r3, [r4, #24]
 e00bd80:	e2800001 	add	r0, r0, #1
 e00bd84:	e1530000 	cmp	r3, r0
 e00bd88:	cafffff2 	bgt	e00bd58 <init_xlat_tables_ctx+0xe0>
 e00bd8c:	e595300c 	ldr	r3, [r5, #12]
 e00bd90:	e3530000 	cmp	r3, #0
 e00bd94:	1a00000a 	bne	e00bdc4 <init_xlat_tables_ctx+0x14c>
 e00bd98:	ea00005d 	b	e00bf14 <init_xlat_tables_ctx+0x29c>
 e00bd9c:	e5950008 	ldr	r0, [r5, #8]
 e00bda0:	e595200c 	ldr	r2, [r5, #12]
 e00bda4:	e0803002 	add	r3, r0, r2
 e00bda8:	e2433001 	sub	r3, r3, #1
 e00bdac:	e1530006 	cmp	r3, r6
 e00bdb0:	1a000075 	bne	e00bf8c <init_xlat_tables_ctx+0x314>
 e00bdb4:	e5953024 	ldr	r3, [r5, #36]	; 0x24
 e00bdb8:	e2855018 	add	r5, r5, #24
 e00bdbc:	e3530000 	cmp	r3, #0
 e00bdc0:	0a000053 	beq	e00bf14 <init_xlat_tables_ctx+0x29c>
 e00bdc4:	e5942034 	ldr	r2, [r4, #52]	; 0x34
 e00bdc8:	e5940024 	ldr	r0, [r4, #36]	; 0x24
 e00bdcc:	e5943020 	ldr	r3, [r4, #32]
 e00bdd0:	e1a01005 	mov	r1, r5
 e00bdd4:	e58d2004 	str	r2, [sp, #4]
 e00bdd8:	e58d0000 	str	r0, [sp]
 e00bddc:	e3a02000 	mov	r2, #0
 e00bde0:	e1a00004 	mov	r0, r4
 e00bde4:	ebfffd88 	bl	e00b40c <xlat_tables_map_region>
 e00bde8:	e5947020 	ldr	r7, [r4, #32]
 e00bdec:	e5948024 	ldr	r8, [r4, #36]	; 0x24
 e00bdf0:	e1a06000 	mov	r6, r0
 e00bdf4:	eb000098 	bl	e00c05c <is_dcache_enabled>
 e00bdf8:	e3500000 	cmp	r0, #0
 e00bdfc:	0affffe6 	beq	e00bd9c <init_xlat_tables_ctx+0x124>
 e00be00:	e1a01188 	lsl	r1, r8, #3
 e00be04:	e1a00007 	mov	r0, r7
 e00be08:	eb0001f9 	bl	e00c5f4 <clean_dcache_range>
 e00be0c:	eaffffe2 	b	e00bd9c <init_xlat_tables_ctx+0x124>
 e00be10:	e30004d6 	movw	r0, #1238	; 0x4d6
 e00be14:	e305c3ac 	movw	ip, #21420	; 0x53ac
 e00be18:	e340ce01 	movt	ip, #3585	; 0xe01
 e00be1c:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00be20:	e3403e01 	movt	r3, #3585	; 0xe01
 e00be24:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00be28:	e3401e01 	movt	r1, #3585	; 0xe01
 e00be2c:	e58d0004 	str	r0, [sp, #4]
 e00be30:	e3a02049 	mov	r2, #73	; 0x49
 e00be34:	e3a00004 	mov	r0, #4
 e00be38:	e58dc000 	str	ip, [sp]
 e00be3c:	ebfff699 	bl	e0098a8 <rtk_log_write>
 e00be40:	eafffffe 	b	e00be40 <init_xlat_tables_ctx+0x1c8>
 e00be44:	e30004da 	movw	r0, #1242	; 0x4da
 e00be48:	e305c3ac 	movw	ip, #21420	; 0x53ac
 e00be4c:	e340ce01 	movt	ip, #3585	; 0xe01
 e00be50:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00be54:	e3403e01 	movt	r3, #3585	; 0xe01
 e00be58:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00be5c:	e3401e01 	movt	r1, #3585	; 0xe01
 e00be60:	e58d0004 	str	r0, [sp, #4]
 e00be64:	e3a02049 	mov	r2, #73	; 0x49
 e00be68:	e3a00004 	mov	r0, #4
 e00be6c:	e58dc000 	str	ip, [sp]
 e00be70:	ebfff68c 	bl	e0098a8 <rtk_log_write>
 e00be74:	eafffffe 	b	e00be74 <init_xlat_tables_ctx+0x1fc>
 e00be78:	e30004d5 	movw	r0, #1237	; 0x4d5
 e00be7c:	e305c3ac 	movw	ip, #21420	; 0x53ac
 e00be80:	e340ce01 	movt	ip, #3585	; 0xe01
 e00be84:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00be88:	e3403e01 	movt	r3, #3585	; 0xe01
 e00be8c:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00be90:	e3401e01 	movt	r1, #3585	; 0xe01
 e00be94:	e58d0004 	str	r0, [sp, #4]
 e00be98:	e3a02049 	mov	r2, #73	; 0x49
 e00be9c:	e3a00004 	mov	r0, #4
 e00bea0:	e58dc000 	str	ip, [sp]
 e00bea4:	ebfff67f 	bl	e0098a8 <rtk_log_write>
 e00bea8:	eafffffe 	b	e00bea8 <init_xlat_tables_ctx+0x230>
 e00beac:	e30004e1 	movw	r0, #1249	; 0x4e1
 e00beb0:	e305c3ac 	movw	ip, #21420	; 0x53ac
 e00beb4:	e340ce01 	movt	ip, #3585	; 0xe01
 e00beb8:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00bebc:	e3403e01 	movt	r3, #3585	; 0xe01
 e00bec0:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00bec4:	e3401e01 	movt	r1, #3585	; 0xe01
 e00bec8:	e58d0004 	str	r0, [sp, #4]
 e00becc:	e3a02049 	mov	r2, #73	; 0x49
 e00bed0:	e3a00004 	mov	r0, #4
 e00bed4:	e58dc000 	str	ip, [sp]
 e00bed8:	ebfff672 	bl	e0098a8 <rtk_log_write>
 e00bedc:	eafffffe 	b	e00bedc <init_xlat_tables_ctx+0x264>
 e00bee0:	e30004de 	movw	r0, #1246	; 0x4de
 e00bee4:	e305c3ac 	movw	ip, #21420	; 0x53ac
 e00bee8:	e340ce01 	movt	ip, #3585	; 0xe01
 e00beec:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00bef0:	e3403e01 	movt	r3, #3585	; 0xe01
 e00bef4:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00bef8:	e3401e01 	movt	r1, #3585	; 0xe01
 e00befc:	e58d0004 	str	r0, [sp, #4]
 e00bf00:	e3a02049 	mov	r2, #73	; 0x49
 e00bf04:	e3a00004 	mov	r0, #4
 e00bf08:	e58dc000 	str	ip, [sp]
 e00bf0c:	ebfff665 	bl	e0098a8 <rtk_log_write>
 e00bf10:	eafffffe 	b	e00bf10 <init_xlat_tables_ctx+0x298>
 e00bf14:	e5946000 	ldr	r6, [r4]
 e00bf18:	e5945004 	ldr	r5, [r4, #4]
 e00bf1c:	eb000049 	bl	e00c048 <xlat_arch_get_max_supported_pa>
 e00bf20:	e1500006 	cmp	r0, r6
 e00bf24:	e0d13005 	sbcs	r3, r1, r5
 e00bf28:	3a000024 	bcc	e00bfc0 <init_xlat_tables_ctx+0x348>
 e00bf2c:	e5942030 	ldr	r2, [r4, #48]	; 0x30
 e00bf30:	e5943008 	ldr	r3, [r4, #8]
 e00bf34:	e1520003 	cmp	r2, r3
 e00bf38:	8a000033 	bhi	e00c00c <init_xlat_tables_ctx+0x394>
 e00bf3c:	e5941028 	ldr	r1, [r4, #40]	; 0x28
 e00bf40:	e5940000 	ldr	r0, [r4]
 e00bf44:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
 e00bf48:	e5942004 	ldr	r2, [r4, #4]
 e00bf4c:	e1500001 	cmp	r0, r1
 e00bf50:	e0d23003 	sbcs	r3, r2, r3
 e00bf54:	2a000026 	bcs	e00bff4 <init_xlat_tables_ctx+0x37c>
 e00bf58:	e3000508 	movw	r0, #1288	; 0x508
 e00bf5c:	e305c3ac 	movw	ip, #21420	; 0x53ac
 e00bf60:	e340ce01 	movt	ip, #3585	; 0xe01
 e00bf64:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00bf68:	e3403e01 	movt	r3, #3585	; 0xe01
 e00bf6c:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00bf70:	e3401e01 	movt	r1, #3585	; 0xe01
 e00bf74:	e58d0004 	str	r0, [sp, #4]
 e00bf78:	e3a02049 	mov	r2, #73	; 0x49
 e00bf7c:	e3a00004 	mov	r0, #4
 e00bf80:	e58dc000 	str	ip, [sp]
 e00bf84:	ebfff647 	bl	e0098a8 <rtk_log_write>
 e00bf88:	eafffffe 	b	e00bf88 <init_xlat_tables_ctx+0x310>
 e00bf8c:	e5953010 	ldr	r3, [r5, #16]
 e00bf90:	e1cd21f0 	strd	r2, [sp, #16]
 e00bf94:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00bf98:	e3401e01 	movt	r1, #3585	; 0xe01
 e00bf9c:	e1c540d0 	ldrd	r4, [r5]
 e00bfa0:	e3053474 	movw	r3, #21620	; 0x5474
 e00bfa4:	e3403e01 	movt	r3, #3585	; 0xe01
 e00bfa8:	e58d0000 	str	r0, [sp]
 e00bfac:	e3a02049 	mov	r2, #73	; 0x49
 e00bfb0:	e3a00004 	mov	r0, #4
 e00bfb4:	e1cd40f8 	strd	r4, [sp, #8]
 e00bfb8:	ebfff63a 	bl	e0098a8 <rtk_log_write>
 e00bfbc:	eafffffe 	b	e00bfbc <init_xlat_tables_ctx+0x344>
 e00bfc0:	e3000506 	movw	r0, #1286	; 0x506
 e00bfc4:	e305c3ac 	movw	ip, #21420	; 0x53ac
 e00bfc8:	e340ce01 	movt	ip, #3585	; 0xe01
 e00bfcc:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00bfd0:	e3403e01 	movt	r3, #3585	; 0xe01
 e00bfd4:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00bfd8:	e3401e01 	movt	r1, #3585	; 0xe01
 e00bfdc:	e58d0004 	str	r0, [sp, #4]
 e00bfe0:	e3a02049 	mov	r2, #73	; 0x49
 e00bfe4:	e3a00004 	mov	r0, #4
 e00bfe8:	e58dc000 	str	ip, [sp]
 e00bfec:	ebfff62d 	bl	e0098a8 <rtk_log_write>
 e00bff0:	eafffffe 	b	e00bff0 <init_xlat_tables_ctx+0x378>
 e00bff4:	e3a03001 	mov	r3, #1
 e00bff8:	e1a00004 	mov	r0, r4
 e00bffc:	e5c43038 	strb	r3, [r4, #56]	; 0x38
 e00c000:	e28dd018 	add	sp, sp, #24
 e00c004:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 e00c008:	ea00000d 	b	e00c044 <xlat_tables_print>
 e00c00c:	e3000507 	movw	r0, #1287	; 0x507
 e00c010:	e305c3ac 	movw	ip, #21420	; 0x53ac
 e00c014:	e340ce01 	movt	ip, #3585	; 0xe01
 e00c018:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00c01c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c020:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00c024:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c028:	e58d0004 	str	r0, [sp, #4]
 e00c02c:	e3a02049 	mov	r2, #73	; 0x49
 e00c030:	e3a00004 	mov	r0, #4
 e00c034:	e58dc000 	str	ip, [sp]
 e00c038:	ebfff61a 	bl	e0098a8 <rtk_log_write>
 e00c03c:	eafffffe 	b	e00c03c <init_xlat_tables_ctx+0x3c4>

0e00c040 <xlat_mmap_print>:
 e00c040:	e12fff1e 	bx	lr

0e00c044 <xlat_tables_print>:
 e00c044:	e12fff1e 	bx	lr

0e00c048 <xlat_arch_get_max_supported_pa>:
 e00c048:	e3a010ff 	mov	r1, #255	; 0xff
 e00c04c:	e3e00000 	mvn	r0, #0
 e00c050:	e12fff1e 	bx	lr

0e00c054 <xlat_get_min_virt_addr_space_size>:
 e00c054:	e3a00402 	mov	r0, #33554432	; 0x2000000
 e00c058:	e12fff1e 	bx	lr

0e00c05c <is_dcache_enabled>:
 e00c05c:	e10f3000 	mrs	r3, CPSR
 e00c060:	e203301f 	and	r3, r3, #31
 e00c064:	e353001a 	cmp	r3, #26
 e00c068:	0a000002 	beq	e00c078 <is_dcache_enabled+0x1c>
 e00c06c:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
 e00c070:	e7e00150 	ubfx	r0, r0, #2, #1
 e00c074:	e12fff1e 	bx	lr
 e00c078:	ee910f10 	mrc	15, 4, r0, cr1, cr0, {0}
 e00c07c:	e7e00150 	ubfx	r0, r0, #2, #1
 e00c080:	e12fff1e 	bx	lr

0e00c084 <xlat_arch_regime_get_xn_desc>:
 e00c084:	e3500001 	cmp	r0, #1
 e00c088:	0a000013 	beq	e00c0dc <xlat_arch_regime_get_xn_desc+0x58>
 e00c08c:	e3500002 	cmp	r0, #2
 e00c090:	0a00000e 	beq	e00c0d0 <xlat_arch_regime_get_xn_desc+0x4c>
 e00c094:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e00c098:	e3a00056 	mov	r0, #86	; 0x56
 e00c09c:	e24dd00c 	sub	sp, sp, #12
 e00c0a0:	e305c4c4 	movw	ip, #21700	; 0x54c4
 e00c0a4:	e340ce01 	movt	ip, #3585	; 0xe01
 e00c0a8:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00c0ac:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c0b0:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00c0b4:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c0b8:	e58d0004 	str	r0, [sp, #4]
 e00c0bc:	e3a02049 	mov	r2, #73	; 0x49
 e00c0c0:	e3a00004 	mov	r0, #4
 e00c0c4:	e58dc000 	str	ip, [sp]
 e00c0c8:	ebfff5f6 	bl	e0098a8 <rtk_log_write>
 e00c0cc:	eafffffe 	b	e00c0cc <xlat_arch_regime_get_xn_desc+0x48>
 e00c0d0:	e3a00000 	mov	r0, #0
 e00c0d4:	e3a01501 	mov	r1, #4194304	; 0x400000
 e00c0d8:	e12fff1e 	bx	lr
 e00c0dc:	e3a00000 	mov	r0, #0
 e00c0e0:	e3a01606 	mov	r1, #6291456	; 0x600000
 e00c0e4:	e12fff1e 	bx	lr

0e00c0e8 <xlat_arch_current_el>:
 e00c0e8:	e10f3000 	mrs	r3, CPSR
 e00c0ec:	e203301f 	and	r3, r3, #31
 e00c0f0:	e353001a 	cmp	r3, #26
 e00c0f4:	0a000018 	beq	e00c15c <xlat_arch_current_el+0x74>
 e00c0f8:	e10f3000 	mrs	r3, CPSR
 e00c0fc:	e203301f 	and	r3, r3, #31
 e00c100:	e3530013 	cmp	r3, #19
 e00c104:	0a000012 	beq	e00c154 <xlat_arch_current_el+0x6c>
 e00c108:	e10f3000 	mrs	r3, CPSR
 e00c10c:	e203301f 	and	r3, r3, #31
 e00c110:	e3530016 	cmp	r3, #22
 e00c114:	0a00000e 	beq	e00c154 <xlat_arch_current_el+0x6c>
 e00c118:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e00c11c:	e3a0008a 	mov	r0, #138	; 0x8a
 e00c120:	e24dd00c 	sub	sp, sp, #12
 e00c124:	e305c4c4 	movw	ip, #21700	; 0x54c4
 e00c128:	e340ce01 	movt	ip, #3585	; 0xe01
 e00c12c:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00c130:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c134:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00c138:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c13c:	e58d0004 	str	r0, [sp, #4]
 e00c140:	e3a02049 	mov	r2, #73	; 0x49
 e00c144:	e3a00004 	mov	r0, #4
 e00c148:	e58dc000 	str	ip, [sp]
 e00c14c:	ebfff5d5 	bl	e0098a8 <rtk_log_write>
 e00c150:	eafffffe 	b	e00c150 <xlat_arch_current_el+0x68>
 e00c154:	e3a00001 	mov	r0, #1
 e00c158:	e12fff1e 	bx	lr
 e00c15c:	e3a00002 	mov	r0, #2
 e00c160:	e12fff1e 	bx	lr

0e00c164 <is_mmu_enabled_ctx>:
 e00c164:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e00c168:	e590303c 	ldr	r3, [r0, #60]	; 0x3c
 e00c16c:	e24dd00c 	sub	sp, sp, #12
 e00c170:	e3530001 	cmp	r3, #1
 e00c174:	0a00001e 	beq	e00c1f4 <is_mmu_enabled_ctx+0x90>
 e00c178:	e3530002 	cmp	r3, #2
 e00c17c:	0a00000c 	beq	e00c1b4 <is_mmu_enabled_ctx+0x50>
 e00c180:	e3a00042 	mov	r0, #66	; 0x42
 e00c184:	e305c4c4 	movw	ip, #21700	; 0x54c4
 e00c188:	e340ce01 	movt	ip, #3585	; 0xe01
 e00c18c:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00c190:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c194:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00c198:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c19c:	e58d0004 	str	r0, [sp, #4]
 e00c1a0:	e3a02049 	mov	r2, #73	; 0x49
 e00c1a4:	e3a00004 	mov	r0, #4
 e00c1a8:	e58dc000 	str	ip, [sp]
 e00c1ac:	ebfff5bd 	bl	e0098a8 <rtk_log_write>
 e00c1b0:	eafffffe 	b	e00c1b0 <is_mmu_enabled_ctx+0x4c>
 e00c1b4:	ebffffcb 	bl	e00c0e8 <xlat_arch_current_el>
 e00c1b8:	e3500002 	cmp	r0, #2
 e00c1bc:	0a00001c 	beq	e00c234 <is_mmu_enabled_ctx+0xd0>
 e00c1c0:	e3a00043 	mov	r0, #67	; 0x43
 e00c1c4:	e305c4c4 	movw	ip, #21700	; 0x54c4
 e00c1c8:	e340ce01 	movt	ip, #3585	; 0xe01
 e00c1cc:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00c1d0:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c1d4:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00c1d8:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c1dc:	e58d0004 	str	r0, [sp, #4]
 e00c1e0:	e3a02049 	mov	r2, #73	; 0x49
 e00c1e4:	e3a00004 	mov	r0, #4
 e00c1e8:	e58dc000 	str	ip, [sp]
 e00c1ec:	ebfff5ad 	bl	e0098a8 <rtk_log_write>
 e00c1f0:	eafffffe 	b	e00c1f0 <is_mmu_enabled_ctx+0x8c>
 e00c1f4:	ebffffbb 	bl	e00c0e8 <xlat_arch_current_el>
 e00c1f8:	e3500001 	cmp	r0, #1
 e00c1fc:	0a000010 	beq	e00c244 <is_mmu_enabled_ctx+0xe0>
 e00c200:	e3a0003f 	mov	r0, #63	; 0x3f
 e00c204:	e305c4c4 	movw	ip, #21700	; 0x54c4
 e00c208:	e340ce01 	movt	ip, #3585	; 0xe01
 e00c20c:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00c210:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c214:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00c218:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c21c:	e58d0004 	str	r0, [sp, #4]
 e00c220:	e3a02049 	mov	r2, #73	; 0x49
 e00c224:	e3a00004 	mov	r0, #4
 e00c228:	e58dc000 	str	ip, [sp]
 e00c22c:	ebfff59d 	bl	e0098a8 <rtk_log_write>
 e00c230:	eafffffe 	b	e00c230 <is_mmu_enabled_ctx+0xcc>
 e00c234:	ee910f10 	mrc	15, 4, r0, cr1, cr0, {0}
 e00c238:	e2000001 	and	r0, r0, #1
 e00c23c:	e28dd00c 	add	sp, sp, #12
 e00c240:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
 e00c244:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
 e00c248:	e2000001 	and	r0, r0, #1
 e00c24c:	eafffffa 	b	e00c23c <is_mmu_enabled_ctx+0xd8>

0e00c250 <setup_mmu_cfg>:
 e00c250:	e92d4070 	push	{r4, r5, r6, lr}
 e00c254:	e1a04000 	mov	r4, r0
 e00c258:	e24dd010 	sub	sp, sp, #16
 e00c25c:	e1a05001 	mov	r5, r1
 e00c260:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
 e00c264:	e3530001 	cmp	r3, #1
 e00c268:	0a000030 	beq	e00c330 <setup_mmu_cfg+0xe0>
 e00c26c:	e3530002 	cmp	r3, #2
 e00c270:	1a000021 	bne	e00c2fc <setup_mmu_cfg+0xac>
 e00c274:	e10f3000 	mrs	r3, CPSR
 e00c278:	e203301f 	and	r3, r3, #31
 e00c27c:	e353001a 	cmp	r3, #26
 e00c280:	03a06c35 	moveq	r6, #13568	; 0x3500
 e00c284:	03486080 	movteq	r6, #32896	; 0x8080
 e00c288:	1a000033 	bne	e00c35c <setup_mmu_cfg+0x10c>
 e00c28c:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
 e00c290:	e3730001 	cmn	r3, #1
 e00c294:	0a00000a 	beq	e00c2c4 <setup_mmu_cfg+0x74>
 e00c298:	e2830001 	add	r0, r3, #1
 e00c29c:	e3500402 	cmp	r0, #33554432	; 0x2000000
 e00c2a0:	3a000047 	bcc	e00c3c4 <setup_mmu_cfg+0x174>
 e00c2a4:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
 e00c2a8:	e0131000 	ands	r1, r3, r0
 e00c2ac:	1a000051 	bne	e00c3f8 <setup_mmu_cfg+0x1a8>
 e00c2b0:	e58d200c 	str	r2, [sp, #12]
 e00c2b4:	ebffd045 	bl	e0003d0 <__ctzdi2>
 e00c2b8:	e59d200c 	ldr	r2, [sp, #12]
 e00c2bc:	e2603020 	rsb	r3, r0, #32
 e00c2c0:	e1866003 	orr	r6, r6, r3
 e00c2c4:	e3150002 	tst	r5, #2
 e00c2c8:	03866c35 	orreq	r6, r6, #13568	; 0x3500
 e00c2cc:	ee103fd2 	mrc	15, 0, r3, cr0, cr2, {6}
 e00c2d0:	e28f1f56 	add	r1, pc, #344	; 0x158
 e00c2d4:	e1c100d0 	ldrd	r0, [r1]
 e00c2d8:	e3130a0f 	tst	r3, #61440	; 0xf000
 e00c2dc:	13822001 	orrne	r2, r2, #1
 e00c2e0:	e3a03000 	mov	r3, #0
 e00c2e4:	e1c400f0 	strd	r0, [r4]
 e00c2e8:	e5846008 	str	r6, [r4, #8]
 e00c2ec:	e584300c 	str	r3, [r4, #12]
 e00c2f0:	e1c421f0 	strd	r2, [r4, #16]
 e00c2f4:	e28dd010 	add	sp, sp, #16
 e00c2f8:	e8bd8070 	pop	{r4, r5, r6, pc}
 e00c2fc:	e3a000ba 	mov	r0, #186	; 0xba
 e00c300:	e305c4c4 	movw	ip, #21700	; 0x54c4
 e00c304:	e340ce01 	movt	ip, #3585	; 0xe01
 e00c308:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00c30c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c310:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00c314:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c318:	e58d0004 	str	r0, [sp, #4]
 e00c31c:	e3a02049 	mov	r2, #73	; 0x49
 e00c320:	e3a00004 	mov	r0, #4
 e00c324:	e58dc000 	str	ip, [sp]
 e00c328:	ebfff55e 	bl	e0098a8 <rtk_log_write>
 e00c32c:	eafffffe 	b	e00c32c <setup_mmu_cfg+0xdc>
 e00c330:	e10f3000 	mrs	r3, CPSR
 e00c334:	e203301f 	and	r3, r3, #31
 e00c338:	e3530013 	cmp	r3, #19
 e00c33c:	0a000003 	beq	e00c350 <setup_mmu_cfg+0x100>
 e00c340:	e10f3000 	mrs	r3, CPSR
 e00c344:	e203301f 	and	r3, r3, #31
 e00c348:	e3530016 	cmp	r3, #22
 e00c34c:	1a00000f 	bne	e00c390 <setup_mmu_cfg+0x140>
 e00c350:	e3a06000 	mov	r6, #0
 e00c354:	e3486080 	movt	r6, #32896	; 0x8080
 e00c358:	eaffffcb 	b	e00c28c <setup_mmu_cfg+0x3c>
 e00c35c:	e3a000bb 	mov	r0, #187	; 0xbb
 e00c360:	e305c4c4 	movw	ip, #21700	; 0x54c4
 e00c364:	e340ce01 	movt	ip, #3585	; 0xe01
 e00c368:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00c36c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c370:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00c374:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c378:	e58d0004 	str	r0, [sp, #4]
 e00c37c:	e3a02049 	mov	r2, #73	; 0x49
 e00c380:	e3a00004 	mov	r0, #4
 e00c384:	e58dc000 	str	ip, [sp]
 e00c388:	ebfff546 	bl	e0098a8 <rtk_log_write>
 e00c38c:	eafffffe 	b	e00c38c <setup_mmu_cfg+0x13c>
 e00c390:	e3a000b3 	mov	r0, #179	; 0xb3
 e00c394:	e305c4c4 	movw	ip, #21700	; 0x54c4
 e00c398:	e340ce01 	movt	ip, #3585	; 0xe01
 e00c39c:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00c3a0:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c3a4:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00c3a8:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c3ac:	e58d0004 	str	r0, [sp, #4]
 e00c3b0:	e3a02049 	mov	r2, #73	; 0x49
 e00c3b4:	e3a00004 	mov	r0, #4
 e00c3b8:	e58dc000 	str	ip, [sp]
 e00c3bc:	ebfff539 	bl	e0098a8 <rtk_log_write>
 e00c3c0:	eafffffe 	b	e00c3c0 <setup_mmu_cfg+0x170>
 e00c3c4:	e3a000ce 	mov	r0, #206	; 0xce
 e00c3c8:	e305c4c4 	movw	ip, #21700	; 0x54c4
 e00c3cc:	e340ce01 	movt	ip, #3585	; 0xe01
 e00c3d0:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00c3d4:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c3d8:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00c3dc:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c3e0:	e58d0004 	str	r0, [sp, #4]
 e00c3e4:	e3a02049 	mov	r2, #73	; 0x49
 e00c3e8:	e3a00004 	mov	r0, #4
 e00c3ec:	e58dc000 	str	ip, [sp]
 e00c3f0:	ebfff52c 	bl	e0098a8 <rtk_log_write>
 e00c3f4:	eafffffe 	b	e00c3f4 <setup_mmu_cfg+0x1a4>
 e00c3f8:	e3a000d2 	mov	r0, #210	; 0xd2
 e00c3fc:	e305c4c4 	movw	ip, #21700	; 0x54c4
 e00c400:	e340ce01 	movt	ip, #3585	; 0xe01
 e00c404:	e30532ec 	movw	r3, #21228	; 0x52ec
 e00c408:	e3403e01 	movt	r3, #3585	; 0xe01
 e00c40c:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00c410:	e3401e01 	movt	r1, #3585	; 0xe01
 e00c414:	e58d0004 	str	r0, [sp, #4]
 e00c418:	e3a02049 	mov	r2, #73	; 0x49
 e00c41c:	e3a00004 	mov	r0, #4
 e00c420:	e58dc000 	str	ip, [sp]
 e00c424:	ebfff51f 	bl	e0098a8 <rtk_log_write>
 e00c428:	eafffffe 	b	e00c428 <setup_mmu_cfg+0x1d8>
 e00c42c:	e320f000 	nop	{0}
 e00c430:	004404ff 	.word	0x004404ff
 e00c434:	00000000 	.word	0x00000000

0e00c438 <setupMMUTable>:
 e00c438:	e3500001 	cmp	r0, #1
 e00c43c:	0a000001 	beq	e00c448 <setupMMUTable+0x10>
 e00c440:	e3a00000 	mov	r0, #0
 e00c444:	eafffb75 	b	e00b220 <enable_mmu_svc_mon>
 e00c448:	e92d4010 	push	{r4, lr}
 e00c44c:	e3082cf4 	movw	r2, #36084	; 0x8cf4
 e00c450:	e346200a 	movt	r2, #24586	; 0x600a
 e00c454:	e24dd008 	sub	sp, sp, #8
 e00c458:	e3030000 	movw	r0, #12288	; 0x3000
 e00c45c:	e346000a 	movt	r0, #24586	; 0x600a
 e00c460:	e0422000 	sub	r2, r2, r0
 e00c464:	e3a01000 	mov	r1, #0
 e00c468:	eb000070 	bl	e00c630 <_memset>
 e00c46c:	e3a03302 	mov	r3, #134217728	; 0x8000000
 e00c470:	e1a02003 	mov	r2, r3
 e00c474:	e3a04012 	mov	r4, #18
 e00c478:	e3a00302 	mov	r0, #134217728	; 0x8000000
 e00c47c:	e3a01000 	mov	r1, #0
 e00c480:	e58d4000 	str	r4, [sp]
 e00c484:	ebfffb29 	bl	e00b130 <mmap_add_region>
 e00c488:	e3a03202 	mov	r3, #536870912	; 0x20000000
 e00c48c:	e1a02003 	mov	r2, r3
 e00c490:	e3a0c01a 	mov	ip, #26
 e00c494:	e3a00202 	mov	r0, #536870912	; 0x20000000
 e00c498:	e3a01000 	mov	r1, #0
 e00c49c:	e58dc000 	str	ip, [sp]
 e00c4a0:	ebfffb22 	bl	e00b130 <mmap_add_region>
 e00c4a4:	e3a0c018 	mov	ip, #24
 e00c4a8:	e3a00101 	mov	r0, #1073741824	; 0x40000000
 e00c4ac:	e58dc000 	str	ip, [sp]
 e00c4b0:	e3a01000 	mov	r1, #0
 e00c4b4:	e3a03202 	mov	r3, #536870912	; 0x20000000
 e00c4b8:	e3a02101 	mov	r2, #1073741824	; 0x40000000
 e00c4bc:	ebfffb1b 	bl	e00b130 <mmap_add_region>
 e00c4c0:	e3042000 	movw	r2, #16384	; 0x4000
 e00c4c4:	e3462009 	movt	r2, #24585	; 0x6009
 e00c4c8:	e3053000 	movw	r3, #20480	; 0x5000
 e00c4cc:	e3463009 	movt	r3, #24585	; 0x6009
 e00c4d0:	e0433002 	sub	r3, r3, r2
 e00c4d4:	e1a00002 	mov	r0, r2
 e00c4d8:	e1a01fc2 	asr	r1, r2, #31
 e00c4dc:	e58d4000 	str	r4, [sp]
 e00c4e0:	ebfffb12 	bl	e00b130 <mmap_add_region>
 e00c4e4:	e3002000 	movw	r2, #0
 e00c4e8:	e346200b 	movt	r2, #24587	; 0x600b
 e00c4ec:	e3013000 	movw	r3, #4096	; 0x1000
 e00c4f0:	e346300b 	movt	r3, #24587	; 0x600b
 e00c4f4:	e3a01019 	mov	r1, #25
 e00c4f8:	e0433002 	sub	r3, r3, r2
 e00c4fc:	e58d1000 	str	r1, [sp]
 e00c500:	e1a00002 	mov	r0, r2
 e00c504:	e1a01fc2 	asr	r1, r2, #31
 e00c508:	ebfffb08 	bl	e00b130 <mmap_add_region>
 e00c50c:	e3003000 	movw	r3, #0
 e00c510:	e3403000 	movt	r3, #0
 e00c514:	e3530000 	cmp	r3, #0
 e00c518:	0a000008 	beq	e00c540 <setupMMUTable+0x108>
 e00c51c:	e30f3fff 	movw	r3, #65535	; 0xffff
 e00c520:	e3463fff 	movt	r3, #28671	; 0x6fff
 e00c524:	e2432020 	sub	r2, r3, #32
 e00c528:	e59f105c 	ldr	r1, [pc, #92]	; e00c58c <setupMMUTable+0x154>
 e00c52c:	e1a00002 	mov	r0, r2
 e00c530:	e0413003 	sub	r3, r1, r3
 e00c534:	e58d4000 	str	r4, [sp]
 e00c538:	e1a01fc2 	asr	r1, r2, #31
 e00c53c:	ebfffafb 	bl	e00b130 <mmap_add_region>
 e00c540:	e3a0c01a 	mov	ip, #26
 e00c544:	e3a03202 	mov	r3, #536870912	; 0x20000000
 e00c548:	e58dc000 	str	ip, [sp]
 e00c54c:	e3a02206 	mov	r2, #1610612736	; 0x60000000
 e00c550:	e3a00206 	mov	r0, #1610612736	; 0x60000000
 e00c554:	e3a01000 	mov	r1, #0
 e00c558:	ebfffaf4 	bl	e00b130 <mmap_add_region>
 e00c55c:	e3a03102 	mov	r3, #-2147483648	; 0x80000000
 e00c560:	e3a0c018 	mov	ip, #24
 e00c564:	e1a02003 	mov	r2, r3
 e00c568:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
 e00c56c:	e3a01000 	mov	r1, #0
 e00c570:	e58dc000 	str	ip, [sp]
 e00c574:	ebfffaed 	bl	e00b130 <mmap_add_region>
 e00c578:	ebfffafa 	bl	e00b168 <init_xlat_tables>
 e00c57c:	e3a00000 	mov	r0, #0
 e00c580:	e28dd008 	add	sp, sp, #8
 e00c584:	e8bd4010 	pop	{r4, lr}
 e00c588:	eafffb24 	b	e00b220 <enable_mmu_svc_mon>
 e00c58c:	7000001f 	.word	0x7000001f

0e00c590 <enable_mmu_direct_svc_mon>:
 e00c590:	ee080f17 	mcr	15, 0, r0, cr8, cr7, {0}
 e00c594:	e1a03000 	mov	r3, r0
 e00c598:	e59f004c 	ldr	r0, [pc, #76]	; e00c5ec <enable_mmu_direct_svc_mon+0x5c>
 e00c59c:	e5901000 	ldr	r1, [r0]
 e00c5a0:	ee0a1f12 	mcr	15, 0, r1, cr10, cr2, {0}
 e00c5a4:	e5902008 	ldr	r2, [r0, #8]
 e00c5a8:	ee022f50 	mcr	15, 0, r2, cr2, cr0, {2}
 e00c5ac:	e5901010 	ldr	r1, [r0, #16]
 e00c5b0:	e5902014 	ldr	r2, [r0, #20]
 e00c5b4:	ec421f02 	mcrr	15, 0, r1, r2, cr2
 e00c5b8:	e3a01000 	mov	r1, #0
 e00c5bc:	e3a02000 	mov	r2, #0
 e00c5c0:	ec421f12 	mcrr	15, 1, r1, r2, cr2
 e00c5c4:	f57ff04b 	dsb	ish
 e00c5c8:	f57ff06f 	isb	sy
 e00c5cc:	ee111f10 	mrc	15, 0, r1, cr1, cr0, {0}
 e00c5d0:	e59f2018 	ldr	r2, [pc, #24]	; e00c5f0 <enable_mmu_direct_svc_mon+0x60>
 e00c5d4:	e1811002 	orr	r1, r1, r2
 e00c5d8:	e3130001 	tst	r3, #1
 e00c5dc:	13c11004 	bicne	r1, r1, #4
 e00c5e0:	ee011f10 	mcr	15, 0, r1, cr1, cr0, {0}
 e00c5e4:	f57ff06f 	isb	sy
 e00c5e8:	e12fff1e 	bx	lr
 e00c5ec:	600a39d8 	.word	0x600a39d8
 e00c5f0:	00080005 	.word	0x00080005

0e00c5f4 <clean_dcache_range>:
 e00c5f4:	e3510000 	cmp	r1, #0
 e00c5f8:	0a00000b 	beq	e00c62c <exit_loop_cmvac>
 e00c5fc:	ee103f30 	mrc	15, 0, r3, cr0, cr0, {1}
 e00c600:	e7e33853 	ubfx	r3, r3, #16, #4
 e00c604:	e3a02004 	mov	r2, #4
 e00c608:	e1a02312 	lsl	r2, r2, r3
 e00c60c:	e0801001 	add	r1, r0, r1
 e00c610:	e2423001 	sub	r3, r2, #1
 e00c614:	e1c00003 	bic	r0, r0, r3

0e00c618 <loop_cmvac>:
 e00c618:	ee070f3a 	mcr	15, 0, r0, cr7, cr10, {1}
 e00c61c:	e0800002 	add	r0, r0, r2
 e00c620:	e1500001 	cmp	r0, r1
 e00c624:	3afffffb 	bcc	e00c618 <loop_cmvac>
 e00c628:	f57ff04f 	dsb	sy

0e00c62c <exit_loop_cmvac>:
 e00c62c:	e12fff1e 	bx	lr

0e00c630 <_memset>:
 e00c630:	e3100003 	tst	r0, #3
 e00c634:	0a00003f 	beq	e00c738 <_memset+0x108>
 e00c638:	e3520000 	cmp	r2, #0
 e00c63c:	e242c001 	sub	ip, r2, #1
 e00c640:	012fff1e 	bxeq	lr
 e00c644:	e6ef2071 	uxtb	r2, r1
 e00c648:	e1a03000 	mov	r3, r0
 e00c64c:	ea000002 	b	e00c65c <_memset+0x2c>
 e00c650:	e24cc001 	sub	ip, ip, #1
 e00c654:	e37c0001 	cmn	ip, #1
 e00c658:	012fff1e 	bxeq	lr
 e00c65c:	e4c32001 	strb	r2, [r3], #1
 e00c660:	e3130003 	tst	r3, #3
 e00c664:	1afffff9 	bne	e00c650 <_memset+0x20>
 e00c668:	e35c0003 	cmp	ip, #3
 e00c66c:	9a000027 	bls	e00c710 <_memset+0xe0>
 e00c670:	e92d4030 	push	{r4, r5, lr}
 e00c674:	e6efe071 	uxtb	lr, r1
 e00c678:	e35c000f 	cmp	ip, #15
 e00c67c:	e18ee40e 	orr	lr, lr, lr, lsl #8
 e00c680:	e18ee80e 	orr	lr, lr, lr, lsl #16
 e00c684:	9a00002e 	bls	e00c744 <_memset+0x114>
 e00c688:	e24c2010 	sub	r2, ip, #16
 e00c68c:	e3c2400f 	bic	r4, r2, #15
 e00c690:	e2835020 	add	r5, r3, #32
 e00c694:	e0855004 	add	r5, r5, r4
 e00c698:	e1a04222 	lsr	r4, r2, #4
 e00c69c:	e2832010 	add	r2, r3, #16
 e00c6a0:	e502e010 	str	lr, [r2, #-16]
 e00c6a4:	e502e00c 	str	lr, [r2, #-12]
 e00c6a8:	e502e008 	str	lr, [r2, #-8]
 e00c6ac:	e502e004 	str	lr, [r2, #-4]
 e00c6b0:	e2822010 	add	r2, r2, #16
 e00c6b4:	e1520005 	cmp	r2, r5
 e00c6b8:	1afffff8 	bne	e00c6a0 <_memset+0x70>
 e00c6bc:	e2842001 	add	r2, r4, #1
 e00c6c0:	e31c000c 	tst	ip, #12
 e00c6c4:	e0832202 	add	r2, r3, r2, lsl #4
 e00c6c8:	e20cc00f 	and	ip, ip, #15
 e00c6cc:	0a000017 	beq	e00c730 <_memset+0x100>
 e00c6d0:	e24c3004 	sub	r3, ip, #4
 e00c6d4:	e3c33003 	bic	r3, r3, #3
 e00c6d8:	e2833004 	add	r3, r3, #4
 e00c6dc:	e0823003 	add	r3, r2, r3
 e00c6e0:	e482e004 	str	lr, [r2], #4
 e00c6e4:	e1530002 	cmp	r3, r2
 e00c6e8:	1afffffc 	bne	e00c6e0 <_memset+0xb0>
 e00c6ec:	e20cc003 	and	ip, ip, #3
 e00c6f0:	e35c0000 	cmp	ip, #0
 e00c6f4:	08bd8030 	popeq	{r4, r5, pc}
 e00c6f8:	e6ef2071 	uxtb	r2, r1
 e00c6fc:	e083c00c 	add	ip, r3, ip
 e00c700:	e4c32001 	strb	r2, [r3], #1
 e00c704:	e15c0003 	cmp	ip, r3
 e00c708:	1afffffc 	bne	e00c700 <_memset+0xd0>
 e00c70c:	e8bd8030 	pop	{r4, r5, pc}
 e00c710:	e35c0000 	cmp	ip, #0
 e00c714:	012fff1e 	bxeq	lr
 e00c718:	e6ef2071 	uxtb	r2, r1
 e00c71c:	e083c00c 	add	ip, r3, ip
 e00c720:	e4c32001 	strb	r2, [r3], #1
 e00c724:	e15c0003 	cmp	ip, r3
 e00c728:	1afffffc 	bne	e00c720 <_memset+0xf0>
 e00c72c:	e12fff1e 	bx	lr
 e00c730:	e1a03002 	mov	r3, r2
 e00c734:	eaffffed 	b	e00c6f0 <_memset+0xc0>
 e00c738:	e1a03000 	mov	r3, r0
 e00c73c:	e1a0c002 	mov	ip, r2
 e00c740:	eaffffc8 	b	e00c668 <_memset+0x38>
 e00c744:	e1a02003 	mov	r2, r3
 e00c748:	eaffffe0 	b	e00c6d0 <_memset+0xa0>

0e00c74c <_rand>:
 e00c74c:	e3a01a09 	mov	r1, #36864	; 0x9000
 e00c750:	e3441100 	movt	r1, #16640	; 0x4100
 e00c754:	e3a00001 	mov	r0, #1
 e00c758:	e3a03001 	mov	r3, #1
 e00c75c:	e3403001 	movt	r3, #1
 e00c760:	ea000001 	b	e00c76c <_rand+0x20>
 e00c764:	e2533001 	subs	r3, r3, #1
 e00c768:	0a000007 	beq	e00c78c <_rand+0x40>
 e00c76c:	e591200c 	ldr	r2, [r1, #12]
 e00c770:	e352000f 	cmp	r2, #15
 e00c774:	05810038 	streq	r0, [r1, #56]	; 0x38
 e00c778:	0afffff9 	beq	e00c764 <_rand+0x18>
 e00c77c:	e3520000 	cmp	r2, #0
 e00c780:	0afffff7 	beq	e00c764 <_rand+0x18>
 e00c784:	e5910010 	ldr	r0, [r1, #16]
 e00c788:	e12fff1e 	bx	lr
 e00c78c:	e5810038 	str	r0, [r1, #56]	; 0x38
 e00c790:	eafffff0 	b	e00c758 <_rand+0xc>

0e00c794 <_memcpy>:
 e00c794:	e352000f 	cmp	r2, #15
 e00c798:	9a000037 	bls	e00c87c <_memcpy+0xe8>
 e00c79c:	e1803001 	orr	r3, r0, r1
 e00c7a0:	e3130003 	tst	r3, #3
 e00c7a4:	1a000040 	bne	e00c8ac <_memcpy+0x118>
 e00c7a8:	e2423010 	sub	r3, r2, #16
 e00c7ac:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 e00c7b0:	e3c3c00f 	bic	ip, r3, #15
 e00c7b4:	e2814020 	add	r4, r1, #32
 e00c7b8:	e2816010 	add	r6, r1, #16
 e00c7bc:	e2807010 	add	r7, r0, #16
 e00c7c0:	e084400c 	add	r4, r4, ip
 e00c7c4:	e1a05223 	lsr	r5, r3, #4
 e00c7c8:	e516300c 	ldr	r3, [r6, #-12]
 e00c7cc:	e516e010 	ldr	lr, [r6, #-16]
 e00c7d0:	e516c008 	ldr	ip, [r6, #-8]
 e00c7d4:	e507300c 	str	r3, [r7, #-12]
 e00c7d8:	e2866010 	add	r6, r6, #16
 e00c7dc:	e5163014 	ldr	r3, [r6, #-20]	; 0xffffffec
 e00c7e0:	e507e010 	str	lr, [r7, #-16]
 e00c7e4:	e507c008 	str	ip, [r7, #-8]
 e00c7e8:	e5073004 	str	r3, [r7, #-4]
 e00c7ec:	e1560004 	cmp	r6, r4
 e00c7f0:	e2877010 	add	r7, r7, #16
 e00c7f4:	1afffff3 	bne	e00c7c8 <_memcpy+0x34>
 e00c7f8:	e2853001 	add	r3, r5, #1
 e00c7fc:	e312000c 	tst	r2, #12
 e00c800:	e1a03203 	lsl	r3, r3, #4
 e00c804:	e202e00f 	and	lr, r2, #15
 e00c808:	e0811003 	add	r1, r1, r3
 e00c80c:	01a0200e 	moveq	r2, lr
 e00c810:	e0803003 	add	r3, r0, r3
 e00c814:	0a00000d 	beq	e00c850 <_memcpy+0xbc>
 e00c818:	e2435004 	sub	r5, r3, #4
 e00c81c:	e1a04001 	mov	r4, r1
 e00c820:	e494c004 	ldr	ip, [r4], #4
 e00c824:	e5a5c004 	str	ip, [r5, #4]!
 e00c828:	e04ec004 	sub	ip, lr, r4
 e00c82c:	e081c00c 	add	ip, r1, ip
 e00c830:	e35c0003 	cmp	ip, #3
 e00c834:	8afffff9 	bhi	e00c820 <_memcpy+0x8c>
 e00c838:	e24ec004 	sub	ip, lr, #4
 e00c83c:	e3ccc003 	bic	ip, ip, #3
 e00c840:	e28cc004 	add	ip, ip, #4
 e00c844:	e2022003 	and	r2, r2, #3
 e00c848:	e083300c 	add	r3, r3, ip
 e00c84c:	e081100c 	add	r1, r1, ip
 e00c850:	e3520000 	cmp	r2, #0
 e00c854:	e242c001 	sub	ip, r2, #1
 e00c858:	08bd80f0 	popeq	{r4, r5, r6, r7, pc}
 e00c85c:	e28cc001 	add	ip, ip, #1
 e00c860:	e2433001 	sub	r3, r3, #1
 e00c864:	e081c00c 	add	ip, r1, ip
 e00c868:	e4d12001 	ldrb	r2, [r1], #1
 e00c86c:	e5e32001 	strb	r2, [r3, #1]!
 e00c870:	e151000c 	cmp	r1, ip
 e00c874:	1afffffb 	bne	e00c868 <_memcpy+0xd4>
 e00c878:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
 e00c87c:	e3520000 	cmp	r2, #0
 e00c880:	e1a03000 	mov	r3, r0
 e00c884:	e242c001 	sub	ip, r2, #1
 e00c888:	012fff1e 	bxeq	lr
 e00c88c:	e28cc001 	add	ip, ip, #1
 e00c890:	e2433001 	sub	r3, r3, #1
 e00c894:	e081c00c 	add	ip, r1, ip
 e00c898:	e4d12001 	ldrb	r2, [r1], #1
 e00c89c:	e5e32001 	strb	r2, [r3, #1]!
 e00c8a0:	e151000c 	cmp	r1, ip
 e00c8a4:	1afffffb 	bne	e00c898 <_memcpy+0x104>
 e00c8a8:	e12fff1e 	bx	lr
 e00c8ac:	e242c001 	sub	ip, r2, #1
 e00c8b0:	e1a03000 	mov	r3, r0
 e00c8b4:	eafffff4 	b	e00c88c <_memcpy+0xf8>

0e00c8b8 <_memchr>:
 e00c8b8:	e6ef1071 	uxtb	r1, r1
 e00c8bc:	e3100003 	tst	r0, #3
 e00c8c0:	0a000032 	beq	e00c990 <_memchr+0xd8>
 e00c8c4:	e1a03000 	mov	r3, r0
 e00c8c8:	e242c001 	sub	ip, r2, #1
 e00c8cc:	e3520000 	cmp	r2, #0
 e00c8d0:	1a000002 	bne	e00c8e0 <_memchr+0x28>
 e00c8d4:	ea000017 	b	e00c938 <_memchr+0x80>
 e00c8d8:	e25cc001 	subs	ip, ip, #1
 e00c8dc:	3a000015 	bcc	e00c938 <_memchr+0x80>
 e00c8e0:	e1a00003 	mov	r0, r3
 e00c8e4:	e4d32001 	ldrb	r2, [r3], #1
 e00c8e8:	e1520001 	cmp	r2, r1
 e00c8ec:	012fff1e 	bxeq	lr
 e00c8f0:	e3130003 	tst	r3, #3
 e00c8f4:	e1a00003 	mov	r0, r3
 e00c8f8:	1afffff6 	bne	e00c8d8 <_memchr+0x20>
 e00c8fc:	e35c0003 	cmp	ip, #3
 e00c900:	e92d4070 	push	{r4, r5, r6, lr}
 e00c904:	8a00000d 	bhi	e00c940 <_memchr+0x88>
 e00c908:	e35c0000 	cmp	ip, #0
 e00c90c:	0a000007 	beq	e00c930 <_memchr+0x78>
 e00c910:	e1a02000 	mov	r2, r0
 e00c914:	e080300c 	add	r3, r0, ip
 e00c918:	e1a00002 	mov	r0, r2
 e00c91c:	e4d2c001 	ldrb	ip, [r2], #1
 e00c920:	e15c0001 	cmp	ip, r1
 e00c924:	08bd8070 	popeq	{r4, r5, r6, pc}
 e00c928:	e1520003 	cmp	r2, r3
 e00c92c:	1afffff9 	bne	e00c918 <_memchr+0x60>
 e00c930:	e3a00000 	mov	r0, #0
 e00c934:	e8bd8070 	pop	{r4, r5, r6, pc}
 e00c938:	e3a00000 	mov	r0, #0
 e00c93c:	e12fff1e 	bx	lr
 e00c940:	e1814401 	orr	r4, r1, r1, lsl #8
 e00c944:	e30f6eff 	movw	r6, #65279	; 0xfeff
 e00c948:	e34f6efe 	movt	r6, #65278	; 0xfefe
 e00c94c:	e3085080 	movw	r5, #32896	; 0x8080
 e00c950:	e3485080 	movt	r5, #32896	; 0x8080
 e00c954:	e1844804 	orr	r4, r4, r4, lsl #16
 e00c958:	e1a02000 	mov	r2, r0
 e00c95c:	e1a00002 	mov	r0, r2
 e00c960:	e2822004 	add	r2, r2, #4
 e00c964:	e5903000 	ldr	r3, [r0]
 e00c968:	e0233004 	eor	r3, r3, r4
 e00c96c:	e083e006 	add	lr, r3, r6
 e00c970:	e1ce3003 	bic	r3, lr, r3
 e00c974:	e1130005 	tst	r3, r5
 e00c978:	1affffe4 	bne	e00c910 <_memchr+0x58>
 e00c97c:	e24cc004 	sub	ip, ip, #4
 e00c980:	e1a00002 	mov	r0, r2
 e00c984:	e35c0003 	cmp	ip, #3
 e00c988:	8afffff3 	bhi	e00c95c <_memchr+0xa4>
 e00c98c:	eaffffdd 	b	e00c908 <_memchr+0x50>
 e00c990:	e1a0c002 	mov	ip, r2
 e00c994:	eaffffd8 	b	e00c8fc <_memchr+0x44>

0e00c998 <_memmove>:
 e00c998:	e1500001 	cmp	r0, r1
 e00c99c:	9a00000b 	bls	e00c9d0 <_memmove+0x38>
 e00c9a0:	e0813002 	add	r3, r1, r2
 e00c9a4:	e1530000 	cmp	r3, r0
 e00c9a8:	9a000008 	bls	e00c9d0 <_memmove+0x38>
 e00c9ac:	e3520000 	cmp	r2, #0
 e00c9b0:	e080c002 	add	ip, r0, r2
 e00c9b4:	012fff1e 	bxeq	lr
 e00c9b8:	e1a0200c 	mov	r2, ip
 e00c9bc:	e573c001 	ldrb	ip, [r3, #-1]!
 e00c9c0:	e562c001 	strb	ip, [r2, #-1]!
 e00c9c4:	e1510003 	cmp	r1, r3
 e00c9c8:	1afffffb 	bne	e00c9bc <_memmove+0x24>
 e00c9cc:	e12fff1e 	bx	lr
 e00c9d0:	e352000f 	cmp	r2, #15
 e00c9d4:	8a00000b 	bhi	e00ca08 <_memmove+0x70>
 e00c9d8:	e3520000 	cmp	r2, #0
 e00c9dc:	e1a03000 	mov	r3, r0
 e00c9e0:	e242c001 	sub	ip, r2, #1
 e00c9e4:	012fff1e 	bxeq	lr
 e00c9e8:	e28cc001 	add	ip, ip, #1
 e00c9ec:	e2433001 	sub	r3, r3, #1
 e00c9f0:	e081c00c 	add	ip, r1, ip
 e00c9f4:	e4d12001 	ldrb	r2, [r1], #1
 e00c9f8:	e5e32001 	strb	r2, [r3, #1]!
 e00c9fc:	e151000c 	cmp	r1, ip
 e00ca00:	1afffffb 	bne	e00c9f4 <_memmove+0x5c>
 e00ca04:	e12fff1e 	bx	lr
 e00ca08:	e1803001 	orr	r3, r0, r1
 e00ca0c:	e3130003 	tst	r3, #3
 e00ca10:	1a000034 	bne	e00cae8 <_memmove+0x150>
 e00ca14:	e2423010 	sub	r3, r2, #16
 e00ca18:	e92d4030 	push	{r4, r5, lr}
 e00ca1c:	e281c020 	add	ip, r1, #32
 e00ca20:	e3c3e00f 	bic	lr, r3, #15
 e00ca24:	e08cc00e 	add	ip, ip, lr
 e00ca28:	e2814010 	add	r4, r1, #16
 e00ca2c:	e2805010 	add	r5, r0, #16
 e00ca30:	e1a0e223 	lsr	lr, r3, #4
 e00ca34:	e5143010 	ldr	r3, [r4, #-16]
 e00ca38:	e5053010 	str	r3, [r5, #-16]
 e00ca3c:	e2844010 	add	r4, r4, #16
 e00ca40:	e514301c 	ldr	r3, [r4, #-28]	; 0xffffffe4
 e00ca44:	e505300c 	str	r3, [r5, #-12]
 e00ca48:	e2855010 	add	r5, r5, #16
 e00ca4c:	e5143018 	ldr	r3, [r4, #-24]	; 0xffffffe8
 e00ca50:	e5053018 	str	r3, [r5, #-24]	; 0xffffffe8
 e00ca54:	e5143014 	ldr	r3, [r4, #-20]	; 0xffffffec
 e00ca58:	e5053014 	str	r3, [r5, #-20]	; 0xffffffec
 e00ca5c:	e154000c 	cmp	r4, ip
 e00ca60:	1afffff3 	bne	e00ca34 <_memmove+0x9c>
 e00ca64:	e28e3001 	add	r3, lr, #1
 e00ca68:	e312000c 	tst	r2, #12
 e00ca6c:	e1a03203 	lsl	r3, r3, #4
 e00ca70:	e202e00f 	and	lr, r2, #15
 e00ca74:	e0811003 	add	r1, r1, r3
 e00ca78:	01a0200e 	moveq	r2, lr
 e00ca7c:	e0803003 	add	r3, r0, r3
 e00ca80:	0a00000d 	beq	e00cabc <_memmove+0x124>
 e00ca84:	e2435004 	sub	r5, r3, #4
 e00ca88:	e1a04001 	mov	r4, r1
 e00ca8c:	e494c004 	ldr	ip, [r4], #4
 e00ca90:	e5a5c004 	str	ip, [r5, #4]!
 e00ca94:	e04ec004 	sub	ip, lr, r4
 e00ca98:	e081c00c 	add	ip, r1, ip
 e00ca9c:	e35c0003 	cmp	ip, #3
 e00caa0:	8afffff9 	bhi	e00ca8c <_memmove+0xf4>
 e00caa4:	e24ec004 	sub	ip, lr, #4
 e00caa8:	e3ccc003 	bic	ip, ip, #3
 e00caac:	e28cc004 	add	ip, ip, #4
 e00cab0:	e2022003 	and	r2, r2, #3
 e00cab4:	e083300c 	add	r3, r3, ip
 e00cab8:	e081100c 	add	r1, r1, ip
 e00cabc:	e3520000 	cmp	r2, #0
 e00cac0:	e242c001 	sub	ip, r2, #1
 e00cac4:	08bd8030 	popeq	{r4, r5, pc}
 e00cac8:	e28cc001 	add	ip, ip, #1
 e00cacc:	e2433001 	sub	r3, r3, #1
 e00cad0:	e081c00c 	add	ip, r1, ip
 e00cad4:	e4d12001 	ldrb	r2, [r1], #1
 e00cad8:	e5e32001 	strb	r2, [r3, #1]!
 e00cadc:	e151000c 	cmp	r1, ip
 e00cae0:	1afffffb 	bne	e00cad4 <_memmove+0x13c>
 e00cae4:	e8bd8030 	pop	{r4, r5, pc}
 e00cae8:	e242c001 	sub	ip, r2, #1
 e00caec:	e1a03000 	mov	r3, r0
 e00caf0:	eaffffbc 	b	e00c9e8 <_memmove+0x50>

0e00caf4 <_strcmp>:
 e00caf4:	e1803001 	orr	r3, r0, r1
 e00caf8:	e3130003 	tst	r3, #3
 e00cafc:	0a000005 	beq	e00cb18 <_strcmp+0x24>
 e00cb00:	e5d03000 	ldrb	r3, [r0]
 e00cb04:	e5d12000 	ldrb	r2, [r1]
 e00cb08:	e3530000 	cmp	r3, #0
 e00cb0c:	1a00001d 	bne	e00cb88 <_strcmp+0x94>
 e00cb10:	e0430002 	sub	r0, r3, r2
 e00cb14:	e12fff1e 	bx	lr
 e00cb18:	e5903000 	ldr	r3, [r0]
 e00cb1c:	e5912000 	ldr	r2, [r1]
 e00cb20:	e1530002 	cmp	r3, r2
 e00cb24:	1afffff5 	bne	e00cb00 <_strcmp+0xc>
 e00cb28:	e92d4030 	push	{r4, r5, lr}
 e00cb2c:	e281c004 	add	ip, r1, #4
 e00cb30:	e30f5eff 	movw	r5, #65279	; 0xfeff
 e00cb34:	e34f5efe 	movt	r5, #65278	; 0xfefe
 e00cb38:	e3084080 	movw	r4, #32896	; 0x8080
 e00cb3c:	e3484080 	movt	r4, #32896	; 0x8080
 e00cb40:	e280e004 	add	lr, r0, #4
 e00cb44:	ea000004 	b	e00cb5c <_strcmp+0x68>
 e00cb48:	e59c2000 	ldr	r2, [ip]
 e00cb4c:	e49e3004 	ldr	r3, [lr], #4
 e00cb50:	e28cc004 	add	ip, ip, #4
 e00cb54:	e1530002 	cmp	r3, r2
 e00cb58:	1a00000f 	bne	e00cb9c <_strcmp+0xa8>
 e00cb5c:	e0832005 	add	r2, r3, r5
 e00cb60:	e1c23003 	bic	r3, r2, r3
 e00cb64:	e1a0100c 	mov	r1, ip
 e00cb68:	e1a0000e 	mov	r0, lr
 e00cb6c:	e1130004 	tst	r3, r4
 e00cb70:	0afffff4 	beq	e00cb48 <_strcmp+0x54>
 e00cb74:	e3a00000 	mov	r0, #0
 e00cb78:	e8bd8030 	pop	{r4, r5, pc}
 e00cb7c:	e5f03001 	ldrb	r3, [r0, #1]!
 e00cb80:	e3530000 	cmp	r3, #0
 e00cb84:	0a000015 	beq	e00cbe0 <_strcmp+0xec>
 e00cb88:	e1a0c001 	mov	ip, r1
 e00cb8c:	e4d12001 	ldrb	r2, [r1], #1
 e00cb90:	e1520003 	cmp	r2, r3
 e00cb94:	0afffff8 	beq	e00cb7c <_strcmp+0x88>
 e00cb98:	eaffffdc 	b	e00cb10 <_strcmp+0x1c>
 e00cb9c:	e5d03000 	ldrb	r3, [r0]
 e00cba0:	e5d12000 	ldrb	r2, [r1]
 e00cba4:	e3530000 	cmp	r3, #0
 e00cba8:	1a000003 	bne	e00cbbc <_strcmp+0xc8>
 e00cbac:	ea000006 	b	e00cbcc <_strcmp+0xd8>
 e00cbb0:	e5f03001 	ldrb	r3, [r0, #1]!
 e00cbb4:	e3530000 	cmp	r3, #0
 e00cbb8:	0a000005 	beq	e00cbd4 <_strcmp+0xe0>
 e00cbbc:	e1a0c001 	mov	ip, r1
 e00cbc0:	e4d12001 	ldrb	r2, [r1], #1
 e00cbc4:	e1520003 	cmp	r2, r3
 e00cbc8:	0afffff8 	beq	e00cbb0 <_strcmp+0xbc>
 e00cbcc:	e0430002 	sub	r0, r3, r2
 e00cbd0:	e8bd8030 	pop	{r4, r5, pc}
 e00cbd4:	e5dc2001 	ldrb	r2, [ip, #1]
 e00cbd8:	e0430002 	sub	r0, r3, r2
 e00cbdc:	e8bd8030 	pop	{r4, r5, pc}
 e00cbe0:	e5dc2001 	ldrb	r2, [ip, #1]
 e00cbe4:	eaffffc9 	b	e00cb10 <_strcmp+0x1c>

0e00cbe8 <_strlen>:
 e00cbe8:	e3100003 	tst	r0, #3
 e00cbec:	0a00000b 	beq	e00cc20 <_strlen+0x38>
 e00cbf0:	e1a03000 	mov	r3, r0
 e00cbf4:	ea000001 	b	e00cc00 <_strlen+0x18>
 e00cbf8:	e3130003 	tst	r3, #3
 e00cbfc:	0a000008 	beq	e00cc24 <_strlen+0x3c>
 e00cc00:	e1a01003 	mov	r1, r3
 e00cc04:	e2833001 	add	r3, r3, #1
 e00cc08:	e1a02003 	mov	r2, r3
 e00cc0c:	e5d1c000 	ldrb	ip, [r1]
 e00cc10:	e35c0000 	cmp	ip, #0
 e00cc14:	1afffff7 	bne	e00cbf8 <_strlen+0x10>
 e00cc18:	e0410000 	sub	r0, r1, r0
 e00cc1c:	e12fff1e 	bx	lr
 e00cc20:	e1a02000 	mov	r2, r0
 e00cc24:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e00cc28:	e30feeff 	movw	lr, #65279	; 0xfeff
 e00cc2c:	e34feefe 	movt	lr, #65278	; 0xfefe
 e00cc30:	e5921000 	ldr	r1, [r2]
 e00cc34:	e308c080 	movw	ip, #32896	; 0x8080
 e00cc38:	e348c080 	movt	ip, #32896	; 0x8080
 e00cc3c:	e081300e 	add	r3, r1, lr
 e00cc40:	e1c33001 	bic	r3, r3, r1
 e00cc44:	e113000c 	tst	r3, ip
 e00cc48:	1a000004 	bne	e00cc60 <_strlen+0x78>
 e00cc4c:	e5b21004 	ldr	r1, [r2, #4]!
 e00cc50:	e081300e 	add	r3, r1, lr
 e00cc54:	e1c33001 	bic	r3, r3, r1
 e00cc58:	e113000c 	tst	r3, ip
 e00cc5c:	0afffffa 	beq	e00cc4c <_strlen+0x64>
 e00cc60:	e5d23000 	ldrb	r3, [r2]
 e00cc64:	e3530000 	cmp	r3, #0
 e00cc68:	0a000002 	beq	e00cc78 <_strlen+0x90>
 e00cc6c:	e5f23001 	ldrb	r3, [r2, #1]!
 e00cc70:	e3530000 	cmp	r3, #0
 e00cc74:	1afffffc 	bne	e00cc6c <_strlen+0x84>
 e00cc78:	e0420000 	sub	r0, r2, r0
 e00cc7c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

0e00cc80 <_stricmp>:
 e00cc80:	e4d03001 	ldrb	r3, [r0], #1
 e00cc84:	e4d12001 	ldrb	r2, [r1], #1
 e00cc88:	e1530002 	cmp	r3, r2
 e00cc8c:	0a000013 	beq	e00cce0 <_stricmp+0x60>
 e00cc90:	e383c020 	orr	ip, r3, #32
 e00cc94:	e92d4010 	push	{r4, lr}
 e00cc98:	e24ce061 	sub	lr, ip, #97	; 0x61
 e00cc9c:	e35e0019 	cmp	lr, #25
 e00cca0:	8a00000c 	bhi	e00ccd8 <_stricmp+0x58>
 e00cca4:	e3824020 	orr	r4, r2, #32
 e00cca8:	e15c0004 	cmp	ip, r4
 e00ccac:	1a000009 	bne	e00ccd8 <_stricmp+0x58>
 e00ccb0:	e3530000 	cmp	r3, #0
 e00ccb4:	0a00000d 	beq	e00ccf0 <_stricmp+0x70>
 e00ccb8:	e4d03001 	ldrb	r3, [r0], #1
 e00ccbc:	e4d12001 	ldrb	r2, [r1], #1
 e00ccc0:	e1530002 	cmp	r3, r2
 e00ccc4:	0afffff9 	beq	e00ccb0 <_stricmp+0x30>
 e00ccc8:	e383c020 	orr	ip, r3, #32
 e00cccc:	e24ce061 	sub	lr, ip, #97	; 0x61
 e00ccd0:	e35e0019 	cmp	lr, #25
 e00ccd4:	9afffff2 	bls	e00cca4 <_stricmp+0x24>
 e00ccd8:	e3a00001 	mov	r0, #1
 e00ccdc:	e8bd8010 	pop	{r4, pc}
 e00cce0:	e3530000 	cmp	r3, #0
 e00cce4:	1affffe5 	bne	e00cc80 <_stricmp>
 e00cce8:	e1a00003 	mov	r0, r3
 e00ccec:	e12fff1e 	bx	lr
 e00ccf0:	e1a00003 	mov	r0, r3
 e00ccf4:	e8bd8010 	pop	{r4, pc}

0e00ccf8 <_strtoul>:
 e00ccf8:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e00ccfc:	e1a0c000 	mov	ip, r0
 e00cd00:	e1a04000 	mov	r4, r0
 e00cd04:	e1a06001 	mov	r6, r1
 e00cd08:	e1a05002 	mov	r5, r2
 e00cd0c:	e1a0200c 	mov	r2, ip
 e00cd10:	e4dc3001 	ldrb	r3, [ip], #1
 e00cd14:	e243e009 	sub	lr, r3, #9
 e00cd18:	e3530020 	cmp	r3, #32
 e00cd1c:	0afffffa 	beq	e00cd0c <_strtoul+0x14>
 e00cd20:	e353002c 	cmp	r3, #44	; 0x2c
 e00cd24:	135e0004 	cmpne	lr, #4
 e00cd28:	93a0e001 	movls	lr, #1
 e00cd2c:	83a0e000 	movhi	lr, #0
 e00cd30:	9afffff5 	bls	e00cd0c <_strtoul+0x14>
 e00cd34:	e353002d 	cmp	r3, #45	; 0x2d
 e00cd38:	0a000047 	beq	e00ce5c <_strtoul+0x164>
 e00cd3c:	e353002b 	cmp	r3, #43	; 0x2b
 e00cd40:	0282c002 	addeq	ip, r2, #2
 e00cd44:	05d23001 	ldrbeq	r3, [r2, #1]
 e00cd48:	e3d52010 	bics	r2, r5, #16
 e00cd4c:	0a000032 	beq	e00ce1c <_strtoul+0x124>
 e00cd50:	e3e07000 	mvn	r7, #0
 e00cd54:	e1a09005 	mov	r9, r5
 e00cd58:	e737f517 	udiv	r7, r7, r5
 e00cd5c:	e0080795 	mul	r8, r5, r7
 e00cd60:	e1e08008 	mvn	r8, r8
 e00cd64:	e3a01000 	mov	r1, #0
 e00cd68:	e1a00001 	mov	r0, r1
 e00cd6c:	ea000009 	b	e00cd98 <_strtoul+0xa0>
 e00cd70:	e0402007 	sub	r2, r0, r7
 e00cd74:	e16f2f12 	clz	r2, r2
 e00cd78:	e1530008 	cmp	r3, r8
 e00cd7c:	e1a022a2 	lsr	r2, r2, #5
 e00cd80:	d3a02000 	movle	r2, #0
 e00cd84:	e3520000 	cmp	r2, #0
 e00cd88:	1a000017 	bne	e00cdec <_strtoul+0xf4>
 e00cd8c:	e0203099 	mla	r0, r9, r0, r3
 e00cd90:	e3a01001 	mov	r1, #1
 e00cd94:	e4dc3001 	ldrb	r3, [ip], #1
 e00cd98:	e2432030 	sub	r2, r3, #48	; 0x30
 e00cd9c:	e6efa072 	uxtb	sl, r2
 e00cda0:	e35a0009 	cmp	sl, #9
 e00cda4:	91a03002 	movls	r3, r2
 e00cda8:	9a000008 	bls	e00cdd0 <_strtoul+0xd8>
 e00cdac:	e3c32020 	bic	r2, r3, #32
 e00cdb0:	e2422041 	sub	r2, r2, #65	; 0x41
 e00cdb4:	e243a041 	sub	sl, r3, #65	; 0x41
 e00cdb8:	e3520019 	cmp	r2, #25
 e00cdbc:	8a00000c 	bhi	e00cdf4 <_strtoul+0xfc>
 e00cdc0:	e35a001a 	cmp	sl, #26
 e00cdc4:	33a02037 	movcc	r2, #55	; 0x37
 e00cdc8:	23a02057 	movcs	r2, #87	; 0x57
 e00cdcc:	e0433002 	sub	r3, r3, r2
 e00cdd0:	e1550003 	cmp	r5, r3
 e00cdd4:	da000006 	ble	e00cdf4 <_strtoul+0xfc>
 e00cdd8:	e1500007 	cmp	r0, r7
 e00cddc:	93a02000 	movls	r2, #0
 e00cde0:	83a02001 	movhi	r2, #1
 e00cde4:	e1922fa1 	orrs	r2, r2, r1, lsr #31
 e00cde8:	0affffe0 	beq	e00cd70 <_strtoul+0x78>
 e00cdec:	e3e01000 	mvn	r1, #0
 e00cdf0:	eaffffe7 	b	e00cd94 <_strtoul+0x9c>
 e00cdf4:	e3710001 	cmn	r1, #1
 e00cdf8:	0a000011 	beq	e00ce44 <_strtoul+0x14c>
 e00cdfc:	e35e0000 	cmp	lr, #0
 e00ce00:	12600000 	rsbne	r0, r0, #0
 e00ce04:	e3560000 	cmp	r6, #0
 e00ce08:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
 e00ce0c:	e3510000 	cmp	r1, #0
 e00ce10:	1a00000e 	bne	e00ce50 <_strtoul+0x158>
 e00ce14:	e5864000 	str	r4, [r6]
 e00ce18:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e00ce1c:	e3530030 	cmp	r3, #48	; 0x30
 e00ce20:	0a000011 	beq	e00ce6c <_strtoul+0x174>
 e00ce24:	e3550000 	cmp	r5, #0
 e00ce28:	1affffc8 	bne	e00cd50 <_strtoul+0x58>
 e00ce2c:	e3a0500a 	mov	r5, #10
 e00ce30:	e3097999 	movw	r7, #39321	; 0x9999
 e00ce34:	e3417999 	movt	r7, #6553	; 0x1999
 e00ce38:	e3a08005 	mov	r8, #5
 e00ce3c:	e1a09005 	mov	r9, r5
 e00ce40:	eaffffc7 	b	e00cd64 <_strtoul+0x6c>
 e00ce44:	e3560000 	cmp	r6, #0
 e00ce48:	e1a00001 	mov	r0, r1
 e00ce4c:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
 e00ce50:	e24c4001 	sub	r4, ip, #1
 e00ce54:	e5864000 	str	r4, [r6]
 e00ce58:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e00ce5c:	e5d23001 	ldrb	r3, [r2, #1]
 e00ce60:	e282c002 	add	ip, r2, #2
 e00ce64:	e3a0e001 	mov	lr, #1
 e00ce68:	eaffffb6 	b	e00cd48 <_strtoul+0x50>
 e00ce6c:	e5dc2000 	ldrb	r2, [ip]
 e00ce70:	e20220df 	and	r2, r2, #223	; 0xdf
 e00ce74:	e3520058 	cmp	r2, #88	; 0x58
 e00ce78:	1a000006 	bne	e00ce98 <_strtoul+0x1a0>
 e00ce7c:	e3a05010 	mov	r5, #16
 e00ce80:	e5dc3001 	ldrb	r3, [ip, #1]
 e00ce84:	e3a0800f 	mov	r8, #15
 e00ce88:	e28cc002 	add	ip, ip, #2
 e00ce8c:	e1a09005 	mov	r9, r5
 e00ce90:	e3e0720f 	mvn	r7, #-268435456	; 0xf0000000
 e00ce94:	eaffffb2 	b	e00cd64 <_strtoul+0x6c>
 e00ce98:	e3550000 	cmp	r5, #0
 e00ce9c:	1affffab 	bne	e00cd50 <_strtoul+0x58>
 e00cea0:	e3a05008 	mov	r5, #8
 e00cea4:	e3a08007 	mov	r8, #7
 e00cea8:	e1a09005 	mov	r9, r5
 e00ceac:	e3e0720e 	mvn	r7, #-536870912	; 0xe0000000
 e00ceb0:	eaffffab 	b	e00cd64 <_strtoul+0x6c>

0e00ceb4 <_2char2hex>:
 e00ceb4:	e2403030 	sub	r3, r0, #48	; 0x30
 e00ceb8:	e6ef2073 	uxtb	r2, r3
 e00cebc:	e3520009 	cmp	r2, #9
 e00cec0:	97a30053 	sbfxls	r0, r3, #0, #4
 e00cec4:	91a00200 	lslls	r0, r0, #4
 e00cec8:	9a000008 	bls	e00cef0 <_2char2hex+0x3c>
 e00cecc:	e2403061 	sub	r3, r0, #97	; 0x61
 e00ced0:	e3530005 	cmp	r3, #5
 e00ced4:	9a000013 	bls	e00cf28 <_2char2hex+0x74>
 e00ced8:	e2403041 	sub	r3, r0, #65	; 0x41
 e00cedc:	e3530005 	cmp	r3, #5
 e00cee0:	92400037 	subls	r0, r0, #55	; 0x37
 e00cee4:	83e0000f 	mvnhi	r0, #15
 e00cee8:	97a33050 	sbfxls	r3, r0, #0, #4
 e00ceec:	91a00203 	lslls	r0, r3, #4
 e00cef0:	e2413030 	sub	r3, r1, #48	; 0x30
 e00cef4:	e6ef2073 	uxtb	r2, r3
 e00cef8:	e3520009 	cmp	r2, #9
 e00cefc:	9a000010 	bls	e00cf44 <_2char2hex+0x90>
 e00cf00:	e2413061 	sub	r3, r1, #97	; 0x61
 e00cf04:	e3530005 	cmp	r3, #5
 e00cf08:	9a000010 	bls	e00cf50 <_2char2hex+0x9c>
 e00cf0c:	e2413041 	sub	r3, r1, #65	; 0x41
 e00cf10:	e3530005 	cmp	r3, #5
 e00cf14:	92411037 	subls	r1, r1, #55	; 0x37
 e00cf18:	91800001 	orrls	r0, r0, r1
 e00cf1c:	96ef0070 	uxtbls	r0, r0
 e00cf20:	83a000ff 	movhi	r0, #255	; 0xff
 e00cf24:	e12fff1e 	bx	lr
 e00cf28:	e2403057 	sub	r3, r0, #87	; 0x57
 e00cf2c:	e7a33053 	sbfx	r3, r3, #0, #4
 e00cf30:	e1a00203 	lsl	r0, r3, #4
 e00cf34:	e2413030 	sub	r3, r1, #48	; 0x30
 e00cf38:	e6ef2073 	uxtb	r2, r3
 e00cf3c:	e3520009 	cmp	r2, #9
 e00cf40:	8affffee 	bhi	e00cf00 <_2char2hex+0x4c>
 e00cf44:	e1800003 	orr	r0, r0, r3
 e00cf48:	e6ef0070 	uxtb	r0, r0
 e00cf4c:	e12fff1e 	bx	lr
 e00cf50:	e2411057 	sub	r1, r1, #87	; 0x57
 e00cf54:	e1800001 	orr	r0, r0, r1
 e00cf58:	e6ef0070 	uxtb	r0, r0
 e00cf5c:	e12fff1e 	bx	lr

0e00cf60 <__wrap_memset>:
 e00cf60:	e30c3630 	movw	r3, #50736	; 0xc630
 e00cf64:	e3403e00 	movt	r3, #3584	; 0xe00
 e00cf68:	e12fff13 	bx	r3

0e00cf6c <__wrap_memcpy>:
 e00cf6c:	e30c3794 	movw	r3, #51092	; 0xc794
 e00cf70:	e3403e00 	movt	r3, #3584	; 0xe00
 e00cf74:	e12fff13 	bx	r3

0e00cf78 <__wrap_memchr>:
 e00cf78:	e30c38b8 	movw	r3, #51384	; 0xc8b8
 e00cf7c:	e3403e00 	movt	r3, #3584	; 0xe00
 e00cf80:	e12fff13 	bx	r3

0e00cf84 <__wrap_memmove>:
 e00cf84:	e30c3998 	movw	r3, #51608	; 0xc998
 e00cf88:	e3403e00 	movt	r3, #3584	; 0xe00
 e00cf8c:	e12fff13 	bx	r3

0e00cf90 <__wrap_strlen>:
 e00cf90:	e30c3be8 	movw	r3, #52200	; 0xcbe8
 e00cf94:	e3403e00 	movt	r3, #3584	; 0xe00
 e00cf98:	e12fff13 	bx	r3

0e00cf9c <__wrap_strcmp>:
 e00cf9c:	e30c3af4 	movw	r3, #51956	; 0xcaf4
 e00cfa0:	e3403e00 	movt	r3, #3584	; 0xe00
 e00cfa4:	e12fff13 	bx	r3

0e00cfa8 <os_heap_init>:
 e00cfa8:	e92d4800 	push	{fp, lr}
 e00cfac:	e28db004 	add	fp, sp, #4
 e00cfb0:	e30f3000 	movw	r3, #61440	; 0xf000
 e00cfb4:	e3403074 	movt	r3, #116	; 0x74
 e00cfb8:	e1a01003 	mov	r1, r3
 e00cfbc:	e3010000 	movw	r0, #4096	; 0x1000
 e00cfc0:	e346000b 	movt	r0, #24587	; 0x600b
 e00cfc4:	eb000025 	bl	e00d060 <os_heap_add>
 e00cfc8:	e3033bc8 	movw	r3, #15304	; 0x3bc8
 e00cfcc:	e346300a 	movt	r3, #24586	; 0x600a
 e00cfd0:	e5d33000 	ldrb	r3, [r3]
 e00cfd4:	e3530000 	cmp	r3, #0
 e00cfd8:	0a000000 	beq	e00cfe0 <os_heap_init+0x38>
 e00cfdc:	eb000004 	bl	e00cff4 <os_heap_sort>
 e00cfe0:	e3030b98 	movw	r0, #15256	; 0x3b98
 e00cfe4:	e346000a 	movt	r0, #24586	; 0x600a
 e00cfe8:	eb001292 	bl	e011a38 <vPortDefineHeapRegions>
 e00cfec:	e320f000 	nop	{0}
 e00cff0:	e8bd8800 	pop	{fp, pc}

0e00cff4 <os_heap_sort>:
 e00cff4:	e3033bc8 	movw	r3, #15304	; 0x3bc8
 e00cff8:	e346300a 	movt	r3, #24586	; 0x600a
 e00cffc:	e92d4070 	push	{r4, r5, r6, lr}
 e00d000:	e5d35000 	ldrb	r5, [r3]
 e00d004:	e2455001 	sub	r5, r5, #1
 e00d008:	e3550000 	cmp	r5, #0
 e00d00c:	d8bd8070 	pople	{r4, r5, r6, pc}
 e00d010:	e3036b98 	movw	r6, #15256	; 0x3b98
 e00d014:	e346600a 	movt	r6, #24586	; 0x600a
 e00d018:	e086e185 	add	lr, r6, r5, lsl #3
 e00d01c:	e1a03006 	mov	r3, r6
 e00d020:	e5931008 	ldr	r1, [r3, #8]
 e00d024:	e593c000 	ldr	ip, [r3]
 e00d028:	e2832008 	add	r2, r3, #8
 e00d02c:	e15c0001 	cmp	ip, r1
 e00d030:	85934004 	ldrhi	r4, [r3, #4]
 e00d034:	81c200d0 	ldrdhi	r0, [r2]
 e00d038:	81c300f0 	strdhi	r0, [r3]
 e00d03c:	8583c008 	strhi	ip, [r3, #8]
 e00d040:	8583400c 	strhi	r4, [r3, #12]
 e00d044:	e1a03002 	mov	r3, r2
 e00d048:	e152000e 	cmp	r2, lr
 e00d04c:	1afffff3 	bne	e00d020 <os_heap_sort+0x2c>
 e00d050:	e24ee008 	sub	lr, lr, #8
 e00d054:	e2555001 	subs	r5, r5, #1
 e00d058:	1affffef 	bne	e00d01c <os_heap_sort+0x28>
 e00d05c:	e8bd8070 	pop	{r4, r5, r6, pc}

0e00d060 <os_heap_add>:
 e00d060:	e3033bc8 	movw	r3, #15304	; 0x3bc8
 e00d064:	e346300a 	movt	r3, #24586	; 0x600a
 e00d068:	e92d4010 	push	{r4, lr}
 e00d06c:	e5d32000 	ldrb	r2, [r3]
 e00d070:	e3520005 	cmp	r2, #5
 e00d074:	8a000011 	bhi	e00d0c0 <os_heap_add+0x60>
 e00d078:	e3510000 	cmp	r1, #0
 e00d07c:	1a000001 	bne	e00d088 <os_heap_add+0x28>
 e00d080:	e1a00001 	mov	r0, r1
 e00d084:	e8bd8010 	pop	{r4, pc}
 e00d088:	e303cb98 	movw	ip, #15256	; 0x3b98
 e00d08c:	e346c00a 	movt	ip, #24586	; 0x600a
 e00d090:	e303ebcc 	movw	lr, #15308	; 0x3bcc
 e00d094:	e346e00a 	movt	lr, #24586	; 0x600a
 e00d098:	e78c0182 	str	r0, [ip, r2, lsl #3]
 e00d09c:	e08cc182 	add	ip, ip, r2, lsl #3
 e00d0a0:	e2822001 	add	r2, r2, #1
 e00d0a4:	e5c32000 	strb	r2, [r3]
 e00d0a8:	e59e3000 	ldr	r3, [lr]
 e00d0ac:	e58c1004 	str	r1, [ip, #4]
 e00d0b0:	e3a00001 	mov	r0, #1
 e00d0b4:	e0831001 	add	r1, r3, r1
 e00d0b8:	e58e1000 	str	r1, [lr]
 e00d0bc:	e8bd8010 	pop	{r4, pc}
 e00d0c0:	e3040068 	movw	r0, #16488	; 0x4068
 e00d0c4:	e3400e01 	movt	r0, #3585	; 0xe01
 e00d0c8:	e3a01026 	mov	r1, #38	; 0x26
 e00d0cc:	eb001966 	bl	e01366c <io_assert_failed>

0e00d0d0 <rtos_critical_is_in_interrupt>:
 e00d0d0:	e10f3000 	mrs	r3, CPSR
 e00d0d4:	e203301f 	and	r3, r3, #31
 e00d0d8:	e3530010 	cmp	r3, #16
 e00d0dc:	0a000004 	beq	e00d0f4 <rtos_critical_is_in_interrupt+0x24>
 e00d0e0:	e10f0000 	mrs	r0, CPSR
 e00d0e4:	e200001f 	and	r0, r0, #31
 e00d0e8:	e250001f 	subs	r0, r0, #31
 e00d0ec:	13a00001 	movne	r0, #1
 e00d0f0:	e12fff1e 	bx	lr
 e00d0f4:	e3a00000 	mov	r0, #0
 e00d0f8:	e12fff1e 	bx	lr

0e00d0fc <GetComponentCriticalNesting>:
 e00d0fc:	e1a00080 	lsl	r0, r0, #1
 e00d100:	e3033ea8 	movw	r3, #16040	; 0x3ea8
 e00d104:	e346300a 	movt	r3, #24586	; 0x600a
 e00d108:	e19300b0 	ldrh	r0, [r3, r0]
 e00d10c:	e12fff1e 	bx	lr

0e00d110 <rtos_critical_enter>:
 e00d110:	e92d4030 	push	{r4, r5, lr}
 e00d114:	e3500009 	cmp	r0, #9
 e00d118:	e24dd00c 	sub	sp, sp, #12
 e00d11c:	e1a04000 	mov	r4, r0
 e00d120:	8a000025 	bhi	e00d1bc <rtos_critical_enter+0xac>
 e00d124:	eb0013e1 	bl	e0120b0 <ulPortInterruptLock>
 e00d128:	eb0013fb 	bl	e01211c <ulPortGetCoreId>
 e00d12c:	e3a0300a 	mov	r3, #10
 e00d130:	e3035e80 	movw	r5, #16000	; 0x3e80
 e00d134:	e346500a 	movt	r5, #24586	; 0x600a
 e00d138:	e0204093 	mla	r0, r3, r0, r4
 e00d13c:	e1a00080 	lsl	r0, r0, #1
 e00d140:	e19530b0 	ldrh	r3, [r5, r0]
 e00d144:	e3530000 	cmp	r3, #0
 e00d148:	1a00000a 	bne	e00d178 <rtos_critical_enter+0x68>
 e00d14c:	e3033c00 	movw	r3, #15360	; 0x3c00
 e00d150:	e346300a 	movt	r3, #24586	; 0x600a
 e00d154:	e0833304 	add	r3, r3, r4, lsl #6
 e00d158:	e3a02001 	mov	r2, #1
 e00d15c:	e1931f9f 	ldrex	r1, [r3]
 e00d160:	e3510000 	cmp	r1, #0
 e00d164:	1320f002 	wfene
 e00d168:	01831f92 	strexeq	r1, r2, [r3]
 e00d16c:	03510000 	cmpeq	r1, #0
 e00d170:	1afffff9 	bne	e00d15c <rtos_critical_enter+0x4c>
 e00d174:	f57ff05f 	dmb	sy
 e00d178:	eb0013e7 	bl	e01211c <ulPortGetCoreId>
 e00d17c:	e3a0300a 	mov	r3, #10
 e00d180:	e0244093 	mla	r4, r3, r0, r4
 e00d184:	e1a04084 	lsl	r4, r4, #1
 e00d188:	e19530b4 	ldrh	r3, [r5, r4]
 e00d18c:	e2833001 	add	r3, r3, #1
 e00d190:	e6ff3073 	uxth	r3, r3
 e00d194:	e18530b4 	strh	r3, [r5, r4]
 e00d198:	eb0013df 	bl	e01211c <ulPortGetCoreId>
 e00d19c:	e3033ea8 	movw	r3, #16040	; 0x3ea8
 e00d1a0:	e346300a 	movt	r3, #24586	; 0x600a
 e00d1a4:	e1a00080 	lsl	r0, r0, #1
 e00d1a8:	e19320b0 	ldrh	r2, [r3, r0]
 e00d1ac:	e2822001 	add	r2, r2, #1
 e00d1b0:	e18320b0 	strh	r2, [r3, r0]
 e00d1b4:	e28dd00c 	add	sp, sp, #12
 e00d1b8:	e8bd8030 	pop	{r4, r5, pc}
 e00d1bc:	e3a02045 	mov	r2, #69	; 0x45
 e00d1c0:	e3050590 	movw	r0, #21904	; 0x5590
 e00d1c4:	e3400e01 	movt	r0, #3585	; 0xe01
 e00d1c8:	e3053560 	movw	r3, #21856	; 0x5560
 e00d1cc:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d1d0:	e58d0000 	str	r0, [sp]
 e00d1d4:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00d1d8:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d1dc:	e3a00002 	mov	r0, #2
 e00d1e0:	ebfff1e4 	bl	e009978 <rtk_log_write_nano>
 e00d1e4:	eaffffce 	b	e00d124 <rtos_critical_enter+0x14>

0e00d1e8 <rtos_critical_exit>:
 e00d1e8:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 e00d1ec:	e3500009 	cmp	r0, #9
 e00d1f0:	e24dd00c 	sub	sp, sp, #12
 e00d1f4:	e1a04000 	mov	r4, r0
 e00d1f8:	8a000025 	bhi	e00d294 <rtos_critical_exit+0xac>
 e00d1fc:	eb0013c6 	bl	e01211c <ulPortGetCoreId>
 e00d200:	e3035ea8 	movw	r5, #16040	; 0x3ea8
 e00d204:	e346500a 	movt	r5, #24586	; 0x600a
 e00d208:	e1a00080 	lsl	r0, r0, #1
 e00d20c:	e3a0700a 	mov	r7, #10
 e00d210:	e3036e80 	movw	r6, #16000	; 0x3e80
 e00d214:	e346600a 	movt	r6, #24586	; 0x600a
 e00d218:	e19530b0 	ldrh	r3, [r5, r0]
 e00d21c:	e2433001 	sub	r3, r3, #1
 e00d220:	e18530b0 	strh	r3, [r5, r0]
 e00d224:	eb0013bc 	bl	e01211c <ulPortGetCoreId>
 e00d228:	e0234097 	mla	r3, r7, r0, r4
 e00d22c:	e1a03083 	lsl	r3, r3, #1
 e00d230:	e19620b3 	ldrh	r2, [r6, r3]
 e00d234:	e2422001 	sub	r2, r2, #1
 e00d238:	e6ff2072 	uxth	r2, r2
 e00d23c:	e18620b3 	strh	r2, [r6, r3]
 e00d240:	eb0013b5 	bl	e01211c <ulPortGetCoreId>
 e00d244:	e0204097 	mla	r0, r7, r0, r4
 e00d248:	e1a00080 	lsl	r0, r0, #1
 e00d24c:	e19630b0 	ldrh	r3, [r6, r0]
 e00d250:	e6ff3073 	uxth	r3, r3
 e00d254:	e3530000 	cmp	r3, #0
 e00d258:	1a000006 	bne	e00d278 <rtos_critical_exit+0x90>
 e00d25c:	e3030c00 	movw	r0, #15360	; 0x3c00
 e00d260:	e346000a 	movt	r0, #24586	; 0x600a
 e00d264:	e0800304 	add	r0, r0, r4, lsl #6
 e00d268:	f57ff05f 	dmb	sy
 e00d26c:	e5803000 	str	r3, [r0]
 e00d270:	f57ff04f 	dsb	sy
 e00d274:	e320f004 	sev
 e00d278:	eb0013a7 	bl	e01211c <ulPortGetCoreId>
 e00d27c:	e1a00080 	lsl	r0, r0, #1
 e00d280:	e19530b0 	ldrh	r3, [r5, r0]
 e00d284:	e3530000 	cmp	r3, #0
 e00d288:	0a00000c 	beq	e00d2c0 <rtos_critical_exit+0xd8>
 e00d28c:	e28dd00c 	add	sp, sp, #12
 e00d290:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
 e00d294:	e3a02045 	mov	r2, #69	; 0x45
 e00d298:	e305057c 	movw	r0, #21884	; 0x557c
 e00d29c:	e3400e01 	movt	r0, #3585	; 0xe01
 e00d2a0:	e3053560 	movw	r3, #21856	; 0x5560
 e00d2a4:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d2a8:	e58d0000 	str	r0, [sp]
 e00d2ac:	e30413ac 	movw	r1, #17324	; 0x43ac
 e00d2b0:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d2b4:	e3a00002 	mov	r0, #2
 e00d2b8:	ebfff1ae 	bl	e009978 <rtk_log_write_nano>
 e00d2bc:	eaffffce 	b	e00d1fc <rtos_critical_exit+0x14>
 e00d2c0:	eb0000b3 	bl	e00d594 <rtos_sched_get_state>
 e00d2c4:	e3500001 	cmp	r0, #1
 e00d2c8:	1a000004 	bne	e00d2e0 <rtos_critical_exit+0xf8>
 e00d2cc:	f1080080 	cpsie	i
 e00d2d0:	f57ff04f 	dsb	sy
 e00d2d4:	f57ff06f 	isb	sy
 e00d2d8:	e28dd00c 	add	sp, sp, #12
 e00d2dc:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
 e00d2e0:	eb00138d 	bl	e01211c <ulPortGetCoreId>
 e00d2e4:	eb00055e 	bl	e00e864 <GetOSCriticalNesting>
 e00d2e8:	e3500000 	cmp	r0, #0
 e00d2ec:	1affffe6 	bne	e00d28c <rtos_critical_exit+0xa4>
 e00d2f0:	eafffff5 	b	e00d2cc <rtos_critical_exit+0xe4>

0e00d2f4 <__rtos_critical_enter_os>:
 e00d2f4:	e10f3000 	mrs	r3, CPSR
 e00d2f8:	e203301f 	and	r3, r3, #31
 e00d2fc:	e3530010 	cmp	r3, #16
 e00d300:	0a000011 	beq	e00d34c <__rtos_critical_enter_os+0x58>
 e00d304:	e10f3000 	mrs	r3, CPSR
 e00d308:	e203301f 	and	r3, r3, #31
 e00d30c:	e353001f 	cmp	r3, #31
 e00d310:	0a00000d 	beq	e00d34c <__rtos_critical_enter_os+0x58>
 e00d314:	e92d4070 	push	{r4, r5, r6, lr}
 e00d318:	eb00137f 	bl	e01211c <ulPortGetCoreId>
 e00d31c:	e3034ea8 	movw	r4, #16040	; 0x3ea8
 e00d320:	e346400a 	movt	r4, #24586	; 0x600a
 e00d324:	e1a00080 	lsl	r0, r0, #1
 e00d328:	e19430b0 	ldrh	r3, [r4, r0]
 e00d32c:	e3530000 	cmp	r3, #0
 e00d330:	0a000006 	beq	e00d350 <__rtos_critical_enter_os+0x5c>
 e00d334:	eb001378 	bl	e01211c <ulPortGetCoreId>
 e00d338:	e1a00080 	lsl	r0, r0, #1
 e00d33c:	e19430b0 	ldrh	r3, [r4, r0]
 e00d340:	e2833001 	add	r3, r3, #1
 e00d344:	e18430b0 	strh	r3, [r4, r0]
 e00d348:	e8bd8070 	pop	{r4, r5, r6, pc}
 e00d34c:	ea00052e 	b	e00e80c <vTaskEnterCritical>
 e00d350:	eb001371 	bl	e01211c <ulPortGetCoreId>
 e00d354:	e1a05000 	mov	r5, r0
 e00d358:	eb001354 	bl	e0120b0 <ulPortInterruptLock>
 e00d35c:	e3033eac 	movw	r3, #16044	; 0x3eac
 e00d360:	e346300a 	movt	r3, #24586	; 0x600a
 e00d364:	e7830105 	str	r0, [r3, r5, lsl #2]
 e00d368:	eb00132a 	bl	e012018 <xPortSpinLockTask>
 e00d36c:	eafffff0 	b	e00d334 <__rtos_critical_enter_os+0x40>

0e00d370 <rtos_get_critical_state>:
 e00d370:	e92d4010 	push	{r4, lr}
 e00d374:	eb001368 	bl	e01211c <ulPortGetCoreId>
 e00d378:	e3032ea8 	movw	r2, #16040	; 0x3ea8
 e00d37c:	e346200a 	movt	r2, #24586	; 0x600a
 e00d380:	e1a03080 	lsl	r3, r0, #1
 e00d384:	e19230b3 	ldrh	r3, [r2, r3]
 e00d388:	e3530000 	cmp	r3, #0
 e00d38c:	0a000001 	beq	e00d398 <rtos_get_critical_state+0x28>
 e00d390:	e3a00001 	mov	r0, #1
 e00d394:	e8bd8010 	pop	{r4, pc}
 e00d398:	eb000531 	bl	e00e864 <GetOSCriticalNesting>
 e00d39c:	e2500000 	subs	r0, r0, #0
 e00d3a0:	13a00001 	movne	r0, #1
 e00d3a4:	e8bd8010 	pop	{r4, pc}

0e00d3a8 <rtos_mem_init>:
 e00d3a8:	eafffefe 	b	e00cfa8 <os_heap_init>

0e00d3ac <rtos_mem_malloc>:
 e00d3ac:	ea001227 	b	e011c50 <pvPortMalloc>

0e00d3b0 <rtos_mem_zmalloc>:
 e00d3b0:	e92d4070 	push	{r4, r5, r6, lr}
 e00d3b4:	e1a05000 	mov	r5, r0
 e00d3b8:	eb001224 	bl	e011c50 <pvPortMalloc>
 e00d3bc:	e2504000 	subs	r4, r0, #0
 e00d3c0:	0a000002 	beq	e00d3d0 <rtos_mem_zmalloc+0x20>
 e00d3c4:	e1a02005 	mov	r2, r5
 e00d3c8:	e3a01000 	mov	r1, #0
 e00d3cc:	ebfffee3 	bl	e00cf60 <__wrap_memset>
 e00d3d0:	e1a00004 	mov	r0, r4
 e00d3d4:	e8bd8070 	pop	{r4, r5, r6, pc}

0e00d3d8 <rtos_mem_calloc>:
 e00d3d8:	e92d4070 	push	{r4, r5, r6, lr}
 e00d3dc:	e0050091 	mul	r5, r1, r0
 e00d3e0:	e1a00005 	mov	r0, r5
 e00d3e4:	eb001219 	bl	e011c50 <pvPortMalloc>
 e00d3e8:	e2504000 	subs	r4, r0, #0
 e00d3ec:	0a000002 	beq	e00d3fc <rtos_mem_calloc+0x24>
 e00d3f0:	e1a02005 	mov	r2, r5
 e00d3f4:	e3a01000 	mov	r1, #0
 e00d3f8:	ebfffed8 	bl	e00cf60 <__wrap_memset>
 e00d3fc:	e1a00004 	mov	r0, r4
 e00d400:	e8bd8070 	pop	{r4, r5, r6, pc}

0e00d404 <rtos_mem_realloc>:
 e00d404:	ea001284 	b	e011e1c <pvPortReAlloc>

0e00d408 <rtos_mem_free>:
 e00d408:	e3500000 	cmp	r0, #0
 e00d40c:	012fff1e 	bxeq	lr
 e00d410:	ea001153 	b	e011964 <vPortFree>

0e00d414 <rtos_sema_create_binary>:
 e00d414:	e92d4010 	push	{r4, lr}
 e00d418:	e2504000 	subs	r4, r0, #0
 e00d41c:	0a000008 	beq	e00d444 <rtos_sema_create_binary+0x30>
 e00d420:	e3a02003 	mov	r2, #3
 e00d424:	e3a01000 	mov	r1, #0
 e00d428:	e3a00001 	mov	r0, #1
 e00d42c:	eb000cbe 	bl	e01072c <xQueueGenericCreate>
 e00d430:	e16f3f10 	clz	r3, r0
 e00d434:	e5840000 	str	r0, [r4]
 e00d438:	e1a032a3 	lsr	r3, r3, #5
 e00d43c:	e2630000 	rsb	r0, r3, #0
 e00d440:	e8bd8010 	pop	{r4, pc}
 e00d444:	e3e00000 	mvn	r0, #0
 e00d448:	e8bd8010 	pop	{r4, pc}

0e00d44c <rtos_sema_take>:
 e00d44c:	e92d4070 	push	{r4, r5, r6, lr}
 e00d450:	e3a06000 	mov	r6, #0
 e00d454:	e24dd008 	sub	sp, sp, #8
 e00d458:	e1a04000 	mov	r4, r0
 e00d45c:	e1a05001 	mov	r5, r1
 e00d460:	e58d6004 	str	r6, [sp, #4]
 e00d464:	ebffff19 	bl	e00d0d0 <rtos_critical_is_in_interrupt>
 e00d468:	e1500006 	cmp	r0, r6
 e00d46c:	0a00000b 	beq	e00d4a0 <rtos_sema_take+0x54>
 e00d470:	e1a00004 	mov	r0, r4
 e00d474:	e28d2004 	add	r2, sp, #4
 e00d478:	e1a01006 	mov	r1, r6
 e00d47c:	eb000f16 	bl	e0110dc <xQueueReceiveFromISR>
 e00d480:	e1a04000 	mov	r4, r0
 e00d484:	e3500001 	cmp	r0, #1
 e00d488:	1a000016 	bne	e00d4e8 <rtos_sema_take+0x9c>
 e00d48c:	e59d0004 	ldr	r0, [sp, #4]
 e00d490:	e1500006 	cmp	r0, r6
 e00d494:	1a00000b 	bne	e00d4c8 <rtos_sema_take+0x7c>
 e00d498:	e28dd008 	add	sp, sp, #8
 e00d49c:	e8bd8070 	pop	{r4, r5, r6, pc}
 e00d4a0:	ebfff668 	bl	e00ae48 <pmu_yield_os_check>
 e00d4a4:	e3500000 	cmp	r0, #0
 e00d4a8:	11a01005 	movne	r1, r5
 e00d4ac:	03a01000 	moveq	r1, #0
 e00d4b0:	e1a00004 	mov	r0, r4
 e00d4b4:	eb000e6d 	bl	e010e70 <xQueueSemaphoreTake>
 e00d4b8:	e2500001 	subs	r0, r0, #1
 e00d4bc:	13e00000 	mvnne	r0, #0
 e00d4c0:	e28dd008 	add	sp, sp, #8
 e00d4c4:	e8bd8070 	pop	{r4, r5, r6, pc}
 e00d4c8:	eb001313 	bl	e01211c <ulPortGetCoreId>
 e00d4cc:	e3043310 	movw	r3, #17168	; 0x4310
 e00d4d0:	e346300a 	movt	r3, #24586	; 0x600a
 e00d4d4:	e1a02000 	mov	r2, r0
 e00d4d8:	e1a00006 	mov	r0, r6
 e00d4dc:	e7834102 	str	r4, [r3, r2, lsl #2]
 e00d4e0:	e28dd008 	add	sp, sp, #8
 e00d4e4:	e8bd8070 	pop	{r4, r5, r6, pc}
 e00d4e8:	e3e00000 	mvn	r0, #0
 e00d4ec:	eaffffe9 	b	e00d498 <rtos_sema_take+0x4c>

0e00d4f0 <rtos_sema_give>:
 e00d4f0:	e92d4010 	push	{r4, lr}
 e00d4f4:	e3a03000 	mov	r3, #0
 e00d4f8:	e24dd008 	sub	sp, sp, #8
 e00d4fc:	e1a04000 	mov	r4, r0
 e00d500:	e58d3004 	str	r3, [sp, #4]
 e00d504:	ebfffef1 	bl	e00d0d0 <rtos_critical_is_in_interrupt>
 e00d508:	e2503000 	subs	r3, r0, #0
 e00d50c:	0a00000a 	beq	e00d53c <rtos_sema_give+0x4c>
 e00d510:	e1a00004 	mov	r0, r4
 e00d514:	e28d1004 	add	r1, sp, #4
 e00d518:	eb000d8d 	bl	e010b54 <xQueueGiveFromISR>
 e00d51c:	e59d3004 	ldr	r3, [sp, #4]
 e00d520:	e1a04000 	mov	r4, r0
 e00d524:	e3530000 	cmp	r3, #0
 e00d528:	1a00000c 	bne	e00d560 <rtos_sema_give+0x70>
 e00d52c:	e2540001 	subs	r0, r4, #1
 e00d530:	13e00000 	mvnne	r0, #0
 e00d534:	e28dd008 	add	sp, sp, #8
 e00d538:	e8bd8010 	pop	{r4, pc}
 e00d53c:	e1a02003 	mov	r2, r3
 e00d540:	e1a01003 	mov	r1, r3
 e00d544:	e1a00004 	mov	r0, r4
 e00d548:	eb000c9f 	bl	e0107cc <xQueueGenericSend>
 e00d54c:	e1a04000 	mov	r4, r0
 e00d550:	e2540001 	subs	r0, r4, #1
 e00d554:	13e00000 	mvnne	r0, #0
 e00d558:	e28dd008 	add	sp, sp, #8
 e00d55c:	e8bd8010 	pop	{r4, pc}
 e00d560:	eb0012ed 	bl	e01211c <ulPortGetCoreId>
 e00d564:	e3043310 	movw	r3, #17168	; 0x4310
 e00d568:	e346300a 	movt	r3, #24586	; 0x600a
 e00d56c:	e3a02001 	mov	r2, #1
 e00d570:	e7832100 	str	r2, [r3, r0, lsl #2]
 e00d574:	e2540001 	subs	r0, r4, #1
 e00d578:	13e00000 	mvnne	r0, #0
 e00d57c:	e28dd008 	add	sp, sp, #8
 e00d580:	e8bd8010 	pop	{r4, pc}

0e00d584 <rtos_sched_start>:
 e00d584:	e92d4010 	push	{r4, lr}
 e00d588:	eb0005bb 	bl	e00ec7c <vTaskStartScheduler>
 e00d58c:	e3a00000 	mov	r0, #0
 e00d590:	e8bd8010 	pop	{r4, pc}

0e00d594 <rtos_sched_get_state>:
 e00d594:	e92d4010 	push	{r4, lr}
 e00d598:	eb00046f 	bl	e00e75c <xTaskGetSchedulerState>
 e00d59c:	e3500001 	cmp	r0, #1
 e00d5a0:	08bd8010 	popeq	{r4, pc}
 e00d5a4:	eb00046c 	bl	e00e75c <xTaskGetSchedulerState>
 e00d5a8:	e3500000 	cmp	r0, #0
 e00d5ac:	08bd8010 	popeq	{r4, pc}
 e00d5b0:	eb000469 	bl	e00e75c <xTaskGetSchedulerState>
 e00d5b4:	e3500002 	cmp	r0, #2
 e00d5b8:	13e00000 	mvnne	r0, #0
 e00d5bc:	e8bd8010 	pop	{r4, pc}

0e00d5c0 <rtos_task_create>:
 e00d5c0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e00d5c4:	e1a0c002 	mov	ip, r2
 e00d5c8:	e24dd00c 	sub	sp, sp, #12
 e00d5cc:	e59de010 	ldr	lr, [sp, #16]
 e00d5d0:	e58d0004 	str	r0, [sp, #4]
 e00d5d4:	e1a0000c 	mov	r0, ip
 e00d5d8:	e1ddc1b4 	ldrh	ip, [sp, #20]
 e00d5dc:	e7ef215e 	ubfx	r2, lr, #2, #16
 e00d5e0:	e58dc000 	str	ip, [sp]
 e00d5e4:	eb000604 	bl	e00edfc <xTaskCreate>
 e00d5e8:	e2500001 	subs	r0, r0, #1
 e00d5ec:	13e00000 	mvnne	r0, #0
 e00d5f0:	e28dd00c 	add	sp, sp, #12
 e00d5f4:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

0e00d5f8 <rtos_task_delete>:
 e00d5f8:	e92d4010 	push	{r4, lr}
 e00d5fc:	eb000623 	bl	e00ee90 <vTaskDelete>
 e00d600:	e3a00000 	mov	r0, #0
 e00d604:	e8bd8010 	pop	{r4, pc}

0e00d608 <rtos_create_secure_context>:
 e00d608:	e12fff1e 	bx	lr

0e00d60c <rtos_time_delay_ms>:
 e00d60c:	e92d4010 	push	{r4, lr}
 e00d610:	e1a04000 	mov	r4, r0
 e00d614:	ebfff60b 	bl	e00ae48 <pmu_yield_os_check>
 e00d618:	e3500000 	cmp	r0, #0
 e00d61c:	0a000002 	beq	e00d62c <rtos_time_delay_ms+0x20>
 e00d620:	eb00044d 	bl	e00e75c <xTaskGetSchedulerState>
 e00d624:	e3500002 	cmp	r0, #2
 e00d628:	0a000004 	beq	e00d640 <rtos_time_delay_ms+0x34>
 e00d62c:	e1a00004 	mov	r0, r4
 e00d630:	e30a3bc0 	movw	r3, #43968	; 0xabc0
 e00d634:	e3403e00 	movt	r3, #3584	; 0xe00
 e00d638:	e8bd4010 	pop	{r4, lr}
 e00d63c:	e12fff13 	bx	r3
 e00d640:	ebfffea2 	bl	e00d0d0 <rtos_critical_is_in_interrupt>
 e00d644:	e3500000 	cmp	r0, #0
 e00d648:	1afffff7 	bne	e00d62c <rtos_time_delay_ms+0x20>
 e00d64c:	ebffff47 	bl	e00d370 <rtos_get_critical_state>
 e00d650:	e3500000 	cmp	r0, #0
 e00d654:	1afffff4 	bne	e00d62c <rtos_time_delay_ms+0x20>
 e00d658:	e1a00004 	mov	r0, r4
 e00d65c:	e8bd4010 	pop	{r4, lr}
 e00d660:	ea000a83 	b	e010074 <vTaskDelay>

0e00d664 <rtos_time_get_current_system_time_ms>:
 e00d664:	e92d4010 	push	{r4, lr}
 e00d668:	ebfffe98 	bl	e00d0d0 <rtos_critical_is_in_interrupt>
 e00d66c:	e3500000 	cmp	r0, #0
 e00d670:	0a000001 	beq	e00d67c <rtos_time_get_current_system_time_ms+0x18>
 e00d674:	e8bd4010 	pop	{r4, lr}
 e00d678:	ea0001f4 	b	e00de50 <xTaskGetTickCountFromISR>
 e00d67c:	e8bd4010 	pop	{r4, lr}
 e00d680:	ea0001ea 	b	e00de30 <xTaskGetTickCount>

0e00d684 <rtos_time_get_current_pended_time_ms>:
 e00d684:	e92d4010 	push	{r4, lr}
 e00d688:	ebfffe90 	bl	e00d0d0 <rtos_critical_is_in_interrupt>
 e00d68c:	e3500000 	cmp	r0, #0
 e00d690:	0a000001 	beq	e00d69c <rtos_time_get_current_pended_time_ms+0x18>
 e00d694:	e8bd4010 	pop	{r4, lr}
 e00d698:	ea0001f0 	b	e00de60 <xTaskGetPendedTicksFromISR>
 e00d69c:	e8bd4010 	pop	{r4, lr}
 e00d6a0:	ea0001e6 	b	e00de40 <xTaskGetPendedTicks>

0e00d6a4 <__wrap_malloc>:
 e00d6a4:	eaffff40 	b	e00d3ac <rtos_mem_malloc>

0e00d6a8 <__wrap__malloc_r>:
 e00d6a8:	e1a00001 	mov	r0, r1
 e00d6ac:	eaffff3e 	b	e00d3ac <rtos_mem_malloc>

0e00d6b0 <__wrap__realloc_r>:
 e00d6b0:	e1a00001 	mov	r0, r1
 e00d6b4:	e1a01002 	mov	r1, r2
 e00d6b8:	eaffff51 	b	e00d404 <rtos_mem_realloc>

0e00d6bc <__wrap__free_r>:
 e00d6bc:	e1a00001 	mov	r0, r1
 e00d6c0:	eaffff50 	b	e00d408 <rtos_mem_free>

0e00d6c4 <__wrap__calloc_r>:
 e00d6c4:	e1a00001 	mov	r0, r1
 e00d6c8:	e1a01002 	mov	r1, r2
 e00d6cc:	eaffff41 	b	e00d3d8 <rtos_mem_calloc>

0e00d6d0 <__wrap_printf>:
 e00d6d0:	e92d000f 	push	{r0, r1, r2, r3}
 e00d6d4:	e92d4070 	push	{r4, r5, r6, lr}
 e00d6d8:	e24dd008 	sub	sp, sp, #8
 e00d6dc:	e10f6000 	mrs	r6, CPSR
 e00d6e0:	f10c0080 	cpsid	i
 e00d6e4:	f57ff04f 	dsb	sy
 e00d6e8:	f57ff06f 	isb	sy
 e00d6ec:	e3a03001 	mov	r3, #1
 e00d6f0:	e3034ec0 	movw	r4, #16064	; 0x3ec0
 e00d6f4:	e346400a 	movt	r4, #24586	; 0x600a
 e00d6f8:	e1942f9f 	ldrex	r2, [r4]
 e00d6fc:	e3520000 	cmp	r2, #0
 e00d700:	1320f002 	wfene
 e00d704:	01842f93 	strexeq	r2, r3, [r4]
 e00d708:	03520000 	cmpeq	r2, #0
 e00d70c:	1afffff9 	bne	e00d6f8 <__wrap_printf+0x28>
 e00d710:	f57ff05f 	dmb	sy
 e00d714:	e28d301c 	add	r3, sp, #28
 e00d718:	e58d3004 	str	r3, [sp, #4]
 e00d71c:	ebfff565 	bl	e00acb8 <CPU_InInterrupt>
 e00d720:	e59d1004 	ldr	r1, [sp, #4]
 e00d724:	e3500000 	cmp	r0, #0
 e00d728:	e59d0018 	ldr	r0, [sp, #24]
 e00d72c:	0a00000c 	beq	e00d764 <__wrap_printf+0x94>
 e00d730:	eb0013ef 	bl	e0126f4 <DiagVprintf>
 e00d734:	e1a05000 	mov	r5, r0
 e00d738:	e3a03000 	mov	r3, #0
 e00d73c:	f57ff05f 	dmb	sy
 e00d740:	e5843000 	str	r3, [r4]
 e00d744:	f57ff04f 	dsb	sy
 e00d748:	e320f004 	sev
 e00d74c:	e121f006 	msr	CPSR_c, r6
 e00d750:	e1a00005 	mov	r0, r5
 e00d754:	e28dd008 	add	sp, sp, #8
 e00d758:	e8bd4070 	pop	{r4, r5, r6, lr}
 e00d75c:	e28dd010 	add	sp, sp, #16
 e00d760:	e12fff1e 	bx	lr
 e00d764:	ebffce28 	bl	e00100c <vprintf>
 e00d768:	e3053000 	movw	r3, #20480	; 0x5000
 e00d76c:	e3463009 	movt	r3, #24585	; 0x6009
 e00d770:	e1a05000 	mov	r5, r0
 e00d774:	e5933000 	ldr	r3, [r3]
 e00d778:	e5930008 	ldr	r0, [r3, #8]
 e00d77c:	ebffcc05 	bl	e000798 <fflush>
 e00d780:	eaffffec 	b	e00d738 <__wrap_printf+0x68>

0e00d784 <fs_init_thread>:
 e00d784:	e3a00000 	mov	r0, #0
 e00d788:	eaffff9a 	b	e00d5f8 <rtos_task_delete>

0e00d78c <app_uart_rx_pin_wake_int_handler>:
 e00d78c:	e92d4010 	push	{r4, lr}
 e00d790:	e3a01000 	mov	r1, #0
 e00d794:	e5900014 	ldr	r0, [r0, #20]
 e00d798:	e3033a20 	movw	r3, #14880	; 0x3a20
 e00d79c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d7a0:	e12fff33 	blx	r3
 e00d7a4:	e3010388 	movw	r0, #5000	; 0x1388
 e00d7a8:	ebfff570 	bl	e00ad70 <pmu_set_sysactive_time>
 e00d7ac:	e3a00000 	mov	r0, #0
 e00d7b0:	e8bd8010 	pop	{r4, pc}

0e00d7b4 <app_pre_example>:
 e00d7b4:	e12fff1e 	bx	lr

0e00d7b8 <app_example>:
 e00d7b8:	e12fff1e 	bx	lr

0e00d7bc <app_filesystem_init>:
 e00d7bc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e00d7c0:	e3a03000 	mov	r3, #0
 e00d7c4:	e24dd00c 	sub	sp, sp, #12
 e00d7c8:	e3a0c005 	mov	ip, #5
 e00d7cc:	e3a00a01 	mov	r0, #4096	; 0x1000
 e00d7d0:	e30d2784 	movw	r2, #55172	; 0xd784
 e00d7d4:	e3402e00 	movt	r2, #3584	; 0xe00
 e00d7d8:	e88d1001 	stm	sp, {r0, ip}
 e00d7dc:	e30515a4 	movw	r1, #21924	; 0x55a4
 e00d7e0:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d7e4:	e1a00003 	mov	r0, r3
 e00d7e8:	ebffff74 	bl	e00d5c0 <rtos_task_create>
 e00d7ec:	e28dd00c 	add	sp, sp, #12
 e00d7f0:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

0e00d7f4 <app_uart_rx_pin_wake_init>:
 e00d7f4:	e92d4030 	push	{r4, r5, lr}
 e00d7f8:	f2c00010 	vmov.i32	d16, #0	; 0x00000000
 e00d7fc:	e24dd024 	sub	sp, sp, #36	; 0x24
 e00d800:	e3a04037 	mov	r4, #55	; 0x37
 e00d804:	e1a00004 	mov	r0, r4
 e00d808:	edcd0b05 	vstr	d16, [sp, #20]
 e00d80c:	e3a01000 	mov	r1, #0
 e00d810:	e3033a20 	movw	r3, #14880	; 0x3a20
 e00d814:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d818:	e3a02002 	mov	r2, #2
 e00d81c:	e3a05001 	mov	r5, #1
 e00d820:	e58d2008 	str	r2, [sp, #8]
 e00d824:	e58d200c 	str	r2, [sp, #12]
 e00d828:	e58d5010 	str	r5, [sp, #16]
 e00d82c:	e58d401c 	str	r4, [sp, #28]
 e00d830:	e12fff33 	blx	r3
 e00d834:	e59d001c 	ldr	r0, [sp, #28]
 e00d838:	e3a01000 	mov	r1, #0
 e00d83c:	e3033bb4 	movw	r3, #15284	; 0x3bb4
 e00d840:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d844:	e12fff33 	blx	r3
 e00d848:	e5dd100c 	ldrb	r1, [sp, #12]
 e00d84c:	e5dd001c 	ldrb	r0, [sp, #28]
 e00d850:	e3033944 	movw	r3, #14660	; 0x3944
 e00d854:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d858:	e12fff33 	blx	r3
 e00d85c:	e59d0018 	ldr	r0, [sp, #24]
 e00d860:	e1cd21d0 	ldrd	r2, [sp, #16]
 e00d864:	e1a01005 	mov	r1, r5
 e00d868:	e58d0000 	str	r0, [sp]
 e00d86c:	e3035978 	movw	r5, #14712	; 0x3978
 e00d870:	e3405e01 	movt	r5, #3585	; 0xe01
 e00d874:	e59d001c 	ldr	r0, [sp, #28]
 e00d878:	e12fff35 	blx	r5
 e00d87c:	e3a0100a 	mov	r1, #10
 e00d880:	e3a03003 	mov	r3, #3
 e00d884:	e3a02b35 	mov	r2, #54272	; 0xd400
 e00d888:	e3442200 	movt	r2, #16896	; 0x4200
 e00d88c:	e3030a58 	movw	r0, #14936	; 0x3a58
 e00d890:	e3400e01 	movt	r0, #3585	; 0xe01
 e00d894:	e30a5334 	movw	r5, #41780	; 0xa334
 e00d898:	e3405e00 	movt	r5, #3584	; 0xe00
 e00d89c:	e12fff35 	blx	r5
 e00d8a0:	e3a0000a 	mov	r0, #10
 e00d8a4:	e30a332c 	movw	r3, #41772	; 0xa32c
 e00d8a8:	e3403e00 	movt	r3, #3584	; 0xe00
 e00d8ac:	e12fff33 	blx	r3
 e00d8b0:	e28d2008 	add	r2, sp, #8
 e00d8b4:	e1a00004 	mov	r0, r4
 e00d8b8:	e30d178c 	movw	r1, #55180	; 0xd78c
 e00d8bc:	e3401e00 	movt	r1, #3584	; 0xe00
 e00d8c0:	e3033be8 	movw	r3, #15336	; 0x3be8
 e00d8c4:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d8c8:	e12fff33 	blx	r3
 e00d8cc:	e28dd024 	add	sp, sp, #36	; 0x24
 e00d8d0:	e8bd8030 	pop	{r4, r5, pc}

0e00d8d4 <app_pmu_init>:
 e00d8d4:	e92d4010 	push	{r4, lr}
 e00d8d8:	e3a00000 	mov	r0, #0
 e00d8dc:	ebfff5e9 	bl	e00b088 <pmu_set_sleep_type>
 e00d8e0:	e3a00000 	mov	r0, #0
 e00d8e4:	ebfff5f1 	bl	e00b0b0 <pmu_acquire_deepwakelock>
 e00d8e8:	e8bd4010 	pop	{r4, lr}
 e00d8ec:	eaffffc0 	b	e00d7f4 <app_uart_rx_pin_wake_init>

0e00d8f0 <main>:
 e00d8f0:	e92d4010 	push	{r4, lr}
 e00d8f4:	e3a02057 	mov	r2, #87	; 0x57
 e00d8f8:	e3a00003 	mov	r0, #3
 e00d8fc:	e30535b4 	movw	r3, #21940	; 0x55b4
 e00d900:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d904:	e30515f0 	movw	r1, #22000	; 0x55f0
 e00d908:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d90c:	ebffefe5 	bl	e0098a8 <rtk_log_write>
 e00d910:	e3a02045 	mov	r2, #69	; 0x45
 e00d914:	e3a00002 	mov	r0, #2
 e00d918:	e30535f8 	movw	r3, #22008	; 0x55f8
 e00d91c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d920:	e30515f0 	movw	r1, #22000	; 0x55f0
 e00d924:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d928:	ebffefde 	bl	e0098a8 <rtk_log_write>
 e00d92c:	e3a02045 	mov	r2, #69	; 0x45
 e00d930:	e3a00002 	mov	r0, #2
 e00d934:	e3053650 	movw	r3, #22096	; 0x5650
 e00d938:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d93c:	e30515f0 	movw	r1, #22000	; 0x55f0
 e00d940:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d944:	ebffefd7 	bl	e0098a8 <rtk_log_write>
 e00d948:	e3a02045 	mov	r2, #69	; 0x45
 e00d94c:	e3a00002 	mov	r0, #2
 e00d950:	e3053690 	movw	r3, #22160	; 0x5690
 e00d954:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d958:	e30515f0 	movw	r1, #22000	; 0x55f0
 e00d95c:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d960:	ebffefd0 	bl	e0098a8 <rtk_log_write>
 e00d964:	e3a02045 	mov	r2, #69	; 0x45
 e00d968:	e3a00002 	mov	r0, #2
 e00d96c:	e30536ec 	movw	r3, #22252	; 0x56ec
 e00d970:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d974:	e30515f0 	movw	r1, #22000	; 0x55f0
 e00d978:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d97c:	ebffefc9 	bl	e0098a8 <rtk_log_write>
 e00d980:	e3a02045 	mov	r2, #69	; 0x45
 e00d984:	e3a00002 	mov	r0, #2
 e00d988:	e305375c 	movw	r3, #22364	; 0x575c
 e00d98c:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d990:	e30515f0 	movw	r1, #22000	; 0x55f0
 e00d994:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d998:	ebffefc2 	bl	e0098a8 <rtk_log_write>
 e00d99c:	e3a02045 	mov	r2, #69	; 0x45
 e00d9a0:	e3a00002 	mov	r0, #2
 e00d9a4:	e30537c8 	movw	r3, #22472	; 0x57c8
 e00d9a8:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d9ac:	e30515f0 	movw	r1, #22000	; 0x55f0
 e00d9b0:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d9b4:	ebffefbb 	bl	e0098a8 <rtk_log_write>
 e00d9b8:	e3a02057 	mov	r2, #87	; 0x57
 e00d9bc:	e3a00003 	mov	r0, #3
 e00d9c0:	e3053820 	movw	r3, #22560	; 0x5820
 e00d9c4:	e3403e01 	movt	r3, #3585	; 0xe01
 e00d9c8:	e30515f0 	movw	r1, #22000	; 0x55f0
 e00d9cc:	e3401e01 	movt	r1, #3585	; 0xe01
 e00d9d0:	ebffefb4 	bl	e0098a8 <rtk_log_write>
 e00d9d4:	e30a4334 	movw	r4, #41780	; 0xa334
 e00d9d8:	e3404e00 	movt	r4, #3584	; 0xe00
 e00d9dc:	e3a01018 	mov	r1, #24
 e00d9e0:	e3a030a0 	mov	r3, #160	; 0xa0
 e00d9e4:	e3a02d16 	mov	r2, #1408	; 0x580
 e00d9e8:	e3442100 	movt	r2, #16640	; 0x4100
 e00d9ec:	e3080a1c 	movw	r0, #35356	; 0x8a1c
 e00d9f0:	e3400e00 	movt	r0, #3584	; 0xe00
 e00d9f4:	e12fff34 	blx	r4
 e00d9f8:	e3a00018 	mov	r0, #24
 e00d9fc:	e30a332c 	movw	r3, #41772	; 0xa32c
 e00da00:	e3403e00 	movt	r3, #3584	; 0xe00
 e00da04:	e12fff33 	blx	r3
 e00da08:	e3a00d16 	mov	r0, #1408	; 0x580
 e00da0c:	e3440100 	movt	r0, #16640	; 0x4100
 e00da10:	ebffea70 	bl	e0083d8 <ipc_table_init>
 e00da14:	ebffffae 	bl	e00d8d4 <app_pmu_init>
 e00da18:	ebffff67 	bl	e00d7bc <app_filesystem_init>
 e00da1c:	ebffff64 	bl	e00d7b4 <app_pre_example>
 e00da20:	e3a01000 	mov	r1, #0
 e00da24:	e1a00001 	mov	r0, r1
 e00da28:	e3083310 	movw	r3, #33552	; 0x8310
 e00da2c:	e3403e00 	movt	r3, #3584	; 0xe00
 e00da30:	e12fff33 	blx	r3
 e00da34:	ebffe9c3 	bl	e008148 <shell_init_ram>
 e00da38:	ebffff5e 	bl	e00d7b8 <app_example>
 e00da3c:	e30d11e8 	movw	r1, #53736	; 0xd1e8
 e00da40:	e3401e00 	movt	r1, #3584	; 0xe00
 e00da44:	e30d0110 	movw	r0, #53520	; 0xd110
 e00da48:	e3400e00 	movt	r0, #3584	; 0xe00
 e00da4c:	ebffeb69 	bl	e0087f8 <IPC_patch_function>
 e00da50:	e30d060c 	movw	r0, #54796	; 0xd60c
 e00da54:	e3400e00 	movt	r0, #3584	; 0xe00
 e00da58:	ebffebe1 	bl	e0089e4 <IPC_SEMDelayStub>
 e00da5c:	e3a02049 	mov	r2, #73	; 0x49
 e00da60:	e3a00004 	mov	r0, #4
 e00da64:	e305385c 	movw	r3, #22620	; 0x585c
 e00da68:	e3403e01 	movt	r3, #3585	; 0xe01
 e00da6c:	e30515f0 	movw	r1, #22000	; 0x55f0
 e00da70:	e3401e01 	movt	r1, #3585	; 0xe01
 e00da74:	ebffef8b 	bl	e0098a8 <rtk_log_write>
 e00da78:	ebfffec1 	bl	e00d584 <rtos_sched_start>
 e00da7c:	eafffffe 	b	e00da7c <main+0x18c>

0e00da80 <prvDeleteTCB>:
 e00da80:	e92d4010 	push	{r4, lr}
 e00da84:	e1a04000 	mov	r4, r0
 e00da88:	eb001298 	bl	e0124f0 <vPortCleanUpTCB>
 e00da8c:	e284007c 	add	r0, r4, #124	; 0x7c
 e00da90:	ebffcca2 	bl	e000d20 <_reclaim_reent>
 e00da94:	e5d43171 	ldrb	r3, [r4, #369]	; 0x171
 e00da98:	e3530000 	cmp	r3, #0
 e00da9c:	0a000008 	beq	e00dac4 <prvDeleteTCB+0x44>
 e00daa0:	e3530001 	cmp	r3, #1
 e00daa4:	0a00000b 	beq	e00dad8 <prvDeleteTCB+0x58>
 e00daa8:	e3530002 	cmp	r3, #2
 e00daac:	08bd8010 	popeq	{r4, pc}
 e00dab0:	e3050878 	movw	r0, #22648	; 0x5878
 e00dab4:	e3400e01 	movt	r0, #3585	; 0xe01
 e00dab8:	e8bd4010 	pop	{r4, lr}
 e00dabc:	e30110f7 	movw	r1, #4343	; 0x10f7
 e00dac0:	eafff046 	b	e009be0 <vAssertCalled>
 e00dac4:	e5940030 	ldr	r0, [r4, #48]	; 0x30
 e00dac8:	eb000fa5 	bl	e011964 <vPortFree>
 e00dacc:	e1a00004 	mov	r0, r4
 e00dad0:	e8bd4010 	pop	{r4, lr}
 e00dad4:	ea000fa2 	b	e011964 <vPortFree>
 e00dad8:	e1a00004 	mov	r0, r4
 e00dadc:	e8bd4010 	pop	{r4, lr}
 e00dae0:	ea000f9f 	b	e011964 <vPortFree>

0e00dae4 <prvYieldCore>:
 e00dae4:	e92d4010 	push	{r4, lr}
 e00dae8:	e1a04000 	mov	r4, r0
 e00daec:	eb00118a 	bl	e01211c <ulPortGetCoreId>
 e00daf0:	e1500004 	cmp	r0, r4
 e00daf4:	1a00000a 	bne	e00db24 <prvYieldCore+0x40>
 e00daf8:	e3033f00 	movw	r3, #16128	; 0x3f00
 e00dafc:	e346300a 	movt	r3, #24586	; 0x600a
 e00db00:	e7933100 	ldr	r3, [r3, r0, lsl #2]
 e00db04:	e5933058 	ldr	r3, [r3, #88]	; 0x58
 e00db08:	e3530000 	cmp	r3, #0
 e00db0c:	0a000007 	beq	e00db30 <prvYieldCore+0x4c>
 e00db10:	e30430a8 	movw	r3, #16552	; 0x40a8
 e00db14:	e346300a 	movt	r3, #24586	; 0x600a
 e00db18:	e3a02001 	mov	r2, #1
 e00db1c:	e7832104 	str	r2, [r3, r4, lsl #2]
 e00db20:	e8bd8010 	pop	{r4, pc}
 e00db24:	e1a00004 	mov	r0, r4
 e00db28:	e8bd4010 	pop	{r4, lr}
 e00db2c:	ea001188 	b	e012154 <vPortYieldOtherCore>
 e00db30:	eb001165 	bl	e0120cc <xPortCpuIsInInterrupt>
 e00db34:	e3500000 	cmp	r0, #0
 e00db38:	1afffff4 	bne	e00db10 <prvYieldCore+0x2c>
 e00db3c:	ef000000 	svc	0x00000000
 e00db40:	e8bd8010 	pop	{r4, pc}

0e00db44 <prvInitialiseNewTask.constprop.0>:
 e00db44:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e00db48:	e59d4028 	ldr	r4, [sp, #40]	; 0x28
 e00db4c:	e1a09102 	lsl	r9, r2, #2
 e00db50:	e1a0a001 	mov	sl, r1
 e00db54:	e1a02009 	mov	r2, r9
 e00db58:	e1a06000 	mov	r6, r0
 e00db5c:	e3a010a5 	mov	r1, #165	; 0xa5
 e00db60:	e5940030 	ldr	r0, [r4, #48]	; 0x30
 e00db64:	e59d5020 	ldr	r5, [sp, #32]
 e00db68:	e59d8024 	ldr	r8, [sp, #36]	; 0x24
 e00db6c:	e1a07003 	mov	r7, r3
 e00db70:	ebfffcfa 	bl	e00cf60 <__wrap_memset>
 e00db74:	e5942030 	ldr	r2, [r4, #48]	; 0x30
 e00db78:	e2499004 	sub	r9, r9, #4
 e00db7c:	e0829009 	add	r9, r2, r9
 e00db80:	e35a0000 	cmp	sl, #0
 e00db84:	e3c9903f 	bic	r9, r9, #63	; 0x3f
 e00db88:	05c4a03c 	strbeq	sl, [r4, #60]	; 0x3c
 e00db8c:	e5849054 	str	r9, [r4, #84]	; 0x54
 e00db90:	0a00000b 	beq	e00dbc4 <prvInitialiseNewTask.constprop.0+0x80>
 e00db94:	e24ac001 	sub	ip, sl, #1
 e00db98:	e28a3017 	add	r3, sl, #23
 e00db9c:	e284103b 	add	r1, r4, #59	; 0x3b
 e00dba0:	ea000001 	b	e00dbac <prvInitialiseNewTask.constprop.0+0x68>
 e00dba4:	e15c0003 	cmp	ip, r3
 e00dba8:	0a000003 	beq	e00dbbc <prvInitialiseNewTask.constprop.0+0x78>
 e00dbac:	e5fce001 	ldrb	lr, [ip, #1]!
 e00dbb0:	e5e1e001 	strb	lr, [r1, #1]!
 e00dbb4:	e35e0000 	cmp	lr, #0
 e00dbb8:	1afffff9 	bne	e00dba4 <prvInitialiseNewTask.constprop.0+0x60>
 e00dbbc:	e3a03000 	mov	r3, #0
 e00dbc0:	e5c43053 	strb	r3, [r4, #83]	; 0x53
 e00dbc4:	e355000a 	cmp	r5, #10
 e00dbc8:	e3a0a000 	mov	sl, #0
 e00dbcc:	23a0500a 	movcs	r5, #10
 e00dbd0:	e2840004 	add	r0, r4, #4
 e00dbd4:	e584502c 	str	r5, [r4, #44]	; 0x2c
 e00dbd8:	e5845064 	str	r5, [r4, #100]	; 0x64
 e00dbdc:	e584a068 	str	sl, [r4, #104]	; 0x68
 e00dbe0:	eb000979 	bl	e0101cc <vListInitialiseItem>
 e00dbe4:	e2840018 	add	r0, r4, #24
 e00dbe8:	eb000977 	bl	e0101cc <vListInitialiseItem>
 e00dbec:	e265500b 	rsb	r5, r5, #11
 e00dbf0:	e3a020f0 	mov	r2, #240	; 0xf0
 e00dbf4:	e1a0100a 	mov	r1, sl
 e00dbf8:	e584a16c 	str	sl, [r4, #364]	; 0x16c
 e00dbfc:	e284007c 	add	r0, r4, #124	; 0x7c
 e00dc00:	e5845018 	str	r5, [r4, #24]
 e00dc04:	e5844010 	str	r4, [r4, #16]
 e00dc08:	e5844024 	str	r4, [r4, #36]	; 0x24
 e00dc0c:	e584a058 	str	sl, [r4, #88]	; 0x58
 e00dc10:	e584a06c 	str	sl, [r4, #108]	; 0x6c
 e00dc14:	e584a078 	str	sl, [r4, #120]	; 0x78
 e00dc18:	e584a070 	str	sl, [r4, #112]	; 0x70
 e00dc1c:	e584a074 	str	sl, [r4, #116]	; 0x74
 e00dc20:	e5c4a170 	strb	sl, [r4, #368]	; 0x170
 e00dc24:	ebfffccd 	bl	e00cf60 <__wrap_memset>
 e00dc28:	e303301c 	movw	r3, #12316	; 0x301c
 e00dc2c:	e346300a 	movt	r3, #24586	; 0x600a
 e00dc30:	e2831068 	add	r1, r3, #104	; 0x68
 e00dc34:	e5843080 	str	r3, [r4, #128]	; 0x80
 e00dc38:	e5841084 	str	r1, [r4, #132]	; 0x84
 e00dc3c:	e28330d0 	add	r3, r3, #208	; 0xd0
 e00dc40:	e1a01006 	mov	r1, r6
 e00dc44:	e5843088 	str	r3, [r4, #136]	; 0x88
 e00dc48:	e1a02007 	mov	r2, r7
 e00dc4c:	e1a00009 	mov	r0, r9
 e00dc50:	e5c4a172 	strb	sl, [r4, #370]	; 0x172
 e00dc54:	eb00109f 	bl	e011ed8 <pxPortInitialiseStack>
 e00dc58:	e30f3f24 	movw	r3, #65316	; 0xff24
 e00dc5c:	e3403e00 	movt	r3, #3584	; 0xe00
 e00dc60:	e0466003 	sub	r6, r6, r3
 e00dc64:	e16f6f16 	clz	r6, r6
 e00dc68:	e158000a 	cmp	r8, sl
 e00dc6c:	e1a062a6 	lsr	r6, r6, #5
 e00dc70:	e3e03000 	mvn	r3, #0
 e00dc74:	e5840000 	str	r0, [r4]
 e00dc78:	e5843034 	str	r3, [r4, #52]	; 0x34
 e00dc7c:	e5846038 	str	r6, [r4, #56]	; 0x38
 e00dc80:	15884000 	strne	r4, [r8]
 e00dc84:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

0e00dc88 <prvYieldForTask.isra.0>:
 e00dc88:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e00dc8c:	e1a06000 	mov	r6, r0
 e00dc90:	e1a05002 	mov	r5, r2
 e00dc94:	e1a04001 	mov	r4, r1
 e00dc98:	eb00111f 	bl	e01211c <ulPortGetCoreId>
 e00dc9c:	e596602c 	ldr	r6, [r6, #44]	; 0x2c
 e00dca0:	e3550000 	cmp	r5, #0
 e00dca4:	e2241001 	eor	r1, r4, #1
 e00dca8:	e3a0c000 	mov	ip, #0
 e00dcac:	e3032f00 	movw	r2, #16128	; 0x3f00
 e00dcb0:	e346200a 	movt	r2, #24586	; 0x600a
 e00dcb4:	e30450a8 	movw	r5, #16552	; 0x40a8
 e00dcb8:	e346500a 	movt	r5, #24586	; 0x600a
 e00dcbc:	12866001 	addne	r6, r6, #1
 e00dcc0:	e2011001 	and	r1, r1, #1
 e00dcc4:	e1a0300c 	mov	r3, ip
 e00dcc8:	e1a0e000 	mov	lr, r0
 e00dccc:	e3e00000 	mvn	r0, #0
 e00dcd0:	e15e0003 	cmp	lr, r3
 e00dcd4:	13a04000 	movne	r4, #0
 e00dcd8:	02014001 	andeq	r4, r1, #1
 e00dcdc:	e3540000 	cmp	r4, #0
 e00dce0:	1a000013 	bne	e00dd34 <prvYieldForTask.isra.0+0xac>
 e00dce4:	e7924103 	ldr	r4, [r2, r3, lsl #2]
 e00dce8:	e5944038 	ldr	r4, [r4, #56]	; 0x38
 e00dcec:	e3540000 	cmp	r4, #0
 e00dcf0:	1a00001a 	bne	e00dd60 <prvYieldForTask.isra.0+0xd8>
 e00dcf4:	e7927103 	ldr	r7, [r2, r3, lsl #2]
 e00dcf8:	e7924103 	ldr	r4, [r2, r3, lsl #2]
 e00dcfc:	e5944034 	ldr	r4, [r4, #52]	; 0x34
 e00dd00:	e3540001 	cmp	r4, #1
 e00dd04:	8a00000a 	bhi	e00dd34 <prvYieldForTask.isra.0+0xac>
 e00dd08:	e597402c 	ldr	r4, [r7, #44]	; 0x2c
 e00dd0c:	e7958103 	ldr	r8, [r5, r3, lsl #2]
 e00dd10:	e1540006 	cmp	r4, r6
 e00dd14:	a3a07000 	movge	r7, #0
 e00dd18:	b3a07001 	movlt	r7, #1
 e00dd1c:	e3580000 	cmp	r8, #0
 e00dd20:	13a07000 	movne	r7, #0
 e00dd24:	e3570000 	cmp	r7, #0
 e00dd28:	128cc001 	addne	ip, ip, #1
 e00dd2c:	11a06004 	movne	r6, r4
 e00dd30:	11a00003 	movne	r0, r3
 e00dd34:	e3530001 	cmp	r3, #1
 e00dd38:	e3a03001 	mov	r3, #1
 e00dd3c:	1affffe3 	bne	e00dcd0 <prvYieldForTask.isra.0+0x48>
 e00dd40:	e25cc000 	subs	ip, ip, #0
 e00dd44:	13a0c001 	movne	ip, #1
 e00dd48:	e3500001 	cmp	r0, #1
 e00dd4c:	83a0c000 	movhi	ip, #0
 e00dd50:	e35c0000 	cmp	ip, #0
 e00dd54:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
 e00dd58:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 e00dd5c:	eaffff60 	b	e00dae4 <prvYieldCore>
 e00dd60:	e28cc001 	add	ip, ip, #1
 e00dd64:	e1a00003 	mov	r0, r3
 e00dd68:	eafffff4 	b	e00dd40 <prvYieldForTask.isra.0+0xb8>

0e00dd6c <prvGetExpectedIdleTime>:
 e00dd6c:	e3043010 	movw	r3, #16400	; 0x4010
 e00dd70:	e346300a 	movt	r3, #24586	; 0x600a
 e00dd74:	e92d4070 	push	{r4, r5, r6, lr}
 e00dd78:	e5935000 	ldr	r5, [r3]
 e00dd7c:	eb0010cb 	bl	e0120b0 <ulPortInterruptLock>
 e00dd80:	e1a04000 	mov	r4, r0
 e00dd84:	eb0010e4 	bl	e01211c <ulPortGetCoreId>
 e00dd88:	e3033f00 	movw	r3, #16128	; 0x3f00
 e00dd8c:	e346300a 	movt	r3, #24586	; 0x600a
 e00dd90:	e1a02000 	mov	r2, r0
 e00dd94:	e1a00004 	mov	r0, r4
 e00dd98:	e7934102 	ldr	r4, [r3, r2, lsl #2]
 e00dd9c:	eb0010c8 	bl	e0120c4 <ulPortInterruptUnLock>
 e00dda0:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
 e00dda4:	e3530000 	cmp	r3, #0
 e00dda8:	0a000001 	beq	e00ddb4 <prvGetExpectedIdleTime+0x48>
 e00ddac:	e3a00000 	mov	r0, #0
 e00ddb0:	e8bd8070 	pop	{r4, r5, r6, pc}
 e00ddb4:	e3a00001 	mov	r0, #1
 e00ddb8:	ebfff4cf 	bl	e00b0fc <pmu_secondary_cpu_state_is_running>
 e00ddbc:	e3500000 	cmp	r0, #0
 e00ddc0:	0a000004 	beq	e00ddd8 <prvGetExpectedIdleTime+0x6c>
 e00ddc4:	e3033f14 	movw	r3, #16148	; 0x3f14
 e00ddc8:	e346300a 	movt	r3, #24586	; 0x600a
 e00ddcc:	e5933000 	ldr	r3, [r3]
 e00ddd0:	e3530000 	cmp	r3, #0
 e00ddd4:	1afffff4 	bne	e00ddac <prvGetExpectedIdleTime+0x40>
 e00ddd8:	e3550000 	cmp	r5, #0
 e00dddc:	1afffff2 	bne	e00ddac <prvGetExpectedIdleTime+0x40>
 e00dde0:	e3042044 	movw	r2, #16452	; 0x4044
 e00dde4:	e346200a 	movt	r2, #24586	; 0x600a
 e00dde8:	e30430a4 	movw	r3, #16548	; 0x40a4
 e00ddec:	e346300a 	movt	r3, #24586	; 0x600a
 e00ddf0:	e5920000 	ldr	r0, [r2]
 e00ddf4:	e5933000 	ldr	r3, [r3]
 e00ddf8:	e0400003 	sub	r0, r0, r3
 e00ddfc:	e8bd8070 	pop	{r4, r5, r6, pc}

0e00de00 <xTaskGetCurrentYieldPending>:
 e00de00:	e92d4010 	push	{r4, lr}
 e00de04:	eb0010a9 	bl	e0120b0 <ulPortInterruptLock>
 e00de08:	e1a04000 	mov	r4, r0
 e00de0c:	eb0010c2 	bl	e01211c <ulPortGetCoreId>
 e00de10:	e30430a8 	movw	r3, #16552	; 0x40a8
 e00de14:	e346300a 	movt	r3, #24586	; 0x600a
 e00de18:	e1a02000 	mov	r2, r0
 e00de1c:	e1a00004 	mov	r0, r4
 e00de20:	e7934102 	ldr	r4, [r3, r2, lsl #2]
 e00de24:	eb0010a6 	bl	e0120c4 <ulPortInterruptUnLock>
 e00de28:	e1a00004 	mov	r0, r4
 e00de2c:	e8bd8010 	pop	{r4, pc}

0e00de30 <xTaskGetTickCount>:
 e00de30:	e30430a4 	movw	r3, #16548	; 0x40a4
 e00de34:	e346300a 	movt	r3, #24586	; 0x600a
 e00de38:	e5930000 	ldr	r0, [r3]
 e00de3c:	e12fff1e 	bx	lr

0e00de40 <xTaskGetPendedTicks>:
 e00de40:	e304304c 	movw	r3, #16460	; 0x404c
 e00de44:	e346300a 	movt	r3, #24586	; 0x600a
 e00de48:	e5930000 	ldr	r0, [r3]
 e00de4c:	e12fff1e 	bx	lr

0e00de50 <xTaskGetTickCountFromISR>:
 e00de50:	e30430a4 	movw	r3, #16548	; 0x40a4
 e00de54:	e346300a 	movt	r3, #24586	; 0x600a
 e00de58:	e5930000 	ldr	r0, [r3]
 e00de5c:	e12fff1e 	bx	lr

0e00de60 <xTaskGetPendedTicksFromISR>:
 e00de60:	e304304c 	movw	r3, #16460	; 0x404c
 e00de64:	e346300a 	movt	r3, #24586	; 0x600a
 e00de68:	e5930000 	ldr	r0, [r3]
 e00de6c:	e12fff1e 	bx	lr

0e00de70 <pcTaskGetName>:
 e00de70:	e92d4010 	push	{r4, lr}
 e00de74:	e2504000 	subs	r4, r0, #0
 e00de78:	0a000001 	beq	e00de84 <pcTaskGetName+0x14>
 e00de7c:	e284003c 	add	r0, r4, #60	; 0x3c
 e00de80:	e8bd8010 	pop	{r4, pc}
 e00de84:	eb001089 	bl	e0120b0 <ulPortInterruptLock>
 e00de88:	e1a04000 	mov	r4, r0
 e00de8c:	eb0010a2 	bl	e01211c <ulPortGetCoreId>
 e00de90:	e3033f00 	movw	r3, #16128	; 0x3f00
 e00de94:	e346300a 	movt	r3, #24586	; 0x600a
 e00de98:	e1a02000 	mov	r2, r0
 e00de9c:	e1a00004 	mov	r0, r4
 e00dea0:	e7934102 	ldr	r4, [r3, r2, lsl #2]
 e00dea4:	eb001086 	bl	e0120c4 <ulPortInterruptUnLock>
 e00dea8:	e3540000 	cmp	r4, #0
 e00deac:	1afffff2 	bne	e00de7c <pcTaskGetName+0xc>
 e00deb0:	e3001a54 	movw	r1, #2644	; 0xa54
 e00deb4:	e3050878 	movw	r0, #22648	; 0x5878
 e00deb8:	e3400e01 	movt	r0, #3585	; 0xe01
 e00debc:	ebffef47 	bl	e009be0 <vAssertCalled>
 e00dec0:	e284003c 	add	r0, r4, #60	; 0x3c
 e00dec4:	e8bd8010 	pop	{r4, pc}

0e00dec8 <vTaskCompTick>:
 e00dec8:	e3500001 	cmp	r0, #1
 e00decc:	9a000012 	bls	e00df1c <vTaskCompTick+0x54>
 e00ded0:	e30420a4 	movw	r2, #16548	; 0x40a4
 e00ded4:	e346200a 	movt	r2, #24586	; 0x600a
 e00ded8:	e5923000 	ldr	r3, [r2]
 e00dedc:	e5921000 	ldr	r1, [r2]
 e00dee0:	e0833000 	add	r3, r3, r0
 e00dee4:	e1530001 	cmp	r3, r1
 e00dee8:	e5923000 	ldr	r3, [r2]
 e00deec:	9a000008 	bls	e00df14 <vTaskCompTick+0x4c>
 e00def0:	e2433001 	sub	r3, r3, #1
 e00def4:	e304104c 	movw	r1, #16460	; 0x404c
 e00def8:	e346100a 	movt	r1, #24586	; 0x600a
 e00defc:	e0830000 	add	r0, r3, r0
 e00df00:	e5820000 	str	r0, [r2]
 e00df04:	e5913000 	ldr	r3, [r1]
 e00df08:	e2833001 	add	r3, r3, #1
 e00df0c:	e5813000 	str	r3, [r1]
 e00df10:	e12fff1e 	bx	lr
 e00df14:	e3730001 	cmn	r3, #1
 e00df18:	1a000005 	bne	e00df34 <vTaskCompTick+0x6c>
 e00df1c:	e304304c 	movw	r3, #16460	; 0x404c
 e00df20:	e346300a 	movt	r3, #24586	; 0x600a
 e00df24:	e5932000 	ldr	r2, [r3]
 e00df28:	e0820000 	add	r0, r2, r0
 e00df2c:	e5830000 	str	r0, [r3]
 e00df30:	e12fff1e 	bx	lr
 e00df34:	e304104c 	movw	r1, #16460	; 0x404c
 e00df38:	e346100a 	movt	r1, #24586	; 0x600a
 e00df3c:	e5923000 	ldr	r3, [r2]
 e00df40:	e591c000 	ldr	ip, [r1]
 e00df44:	e083300c 	add	r3, r3, ip
 e00df48:	e2833002 	add	r3, r3, #2
 e00df4c:	e0830000 	add	r0, r3, r0
 e00df50:	e3e03001 	mvn	r3, #1
 e00df54:	e5810000 	str	r0, [r1]
 e00df58:	e5823000 	str	r3, [r2]
 e00df5c:	e12fff1e 	bx	lr

0e00df60 <vTaskSwitchContext>:
 e00df60:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e00df64:	e1a04000 	mov	r4, r0
 e00df68:	eb001050 	bl	e0120b0 <ulPortInterruptLock>
 e00df6c:	e1a08000 	mov	r8, r0
 e00df70:	eb001028 	bl	e012018 <xPortSpinLockTask>
 e00df74:	e1a00004 	mov	r0, r4
 e00df78:	ebfff465 	bl	e00b114 <pmu_secondary_cpu_state_is_hotplug>
 e00df7c:	e3500000 	cmp	r0, #0
 e00df80:	1a000114 	bne	e00e3d8 <vTaskSwitchContext+0x478>
 e00df84:	e3043008 	movw	r3, #16392	; 0x4008
 e00df88:	e346300a 	movt	r3, #24586	; 0x600a
 e00df8c:	e5936000 	ldr	r6, [r3]
 e00df90:	e3560000 	cmp	r6, #0
 e00df94:	1a00009a 	bne	e00e204 <vTaskSwitchContext+0x2a4>
 e00df98:	e3035f00 	movw	r5, #16128	; 0x3f00
 e00df9c:	e346500a 	movt	r5, #24586	; 0x600a
 e00dfa0:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00dfa4:	e5933058 	ldr	r3, [r3, #88]	; 0x58
 e00dfa8:	e3530000 	cmp	r3, #0
 e00dfac:	1a000187 	bne	e00e5d0 <vTaskSwitchContext+0x670>
 e00dfb0:	e30430a8 	movw	r3, #16552	; 0x40a8
 e00dfb4:	e346300a 	movt	r3, #24586	; 0x600a
 e00dfb8:	e3a02000 	mov	r2, #0
 e00dfbc:	e3a00a09 	mov	r0, #36864	; 0x9000
 e00dfc0:	e3440200 	movt	r0, #16896	; 0x4200
 e00dfc4:	e7832104 	str	r2, [r3, r4, lsl #2]
 e00dfc8:	e3033ff8 	movw	r3, #16376	; 0x3ff8
 e00dfcc:	e346300a 	movt	r3, #24586	; 0x600a
 e00dfd0:	e3032ff0 	movw	r2, #16368	; 0x3ff0
 e00dfd4:	e346200a 	movt	r2, #24586	; 0x600a
 e00dfd8:	e5901004 	ldr	r1, [r0, #4]
 e00dfdc:	e7831106 	str	r1, [r3, r6, lsl #2]
 e00dfe0:	e793c106 	ldr	ip, [r3, r6, lsl #2]
 e00dfe4:	e7921106 	ldr	r1, [r2, r6, lsl #2]
 e00dfe8:	e15c0001 	cmp	ip, r1
 e00dfec:	9a000006 	bls	e00e00c <vTaskSwitchContext+0xac>
 e00dff0:	e793e106 	ldr	lr, [r3, r6, lsl #2]
 e00dff4:	e7927106 	ldr	r7, [r2, r6, lsl #2]
 e00dff8:	e795c106 	ldr	ip, [r5, r6, lsl #2]
 e00dffc:	e59c1078 	ldr	r1, [ip, #120]	; 0x78
 e00e000:	e0411007 	sub	r1, r1, r7
 e00e004:	e081100e 	add	r1, r1, lr
 e00e008:	e58c1078 	str	r1, [ip, #120]	; 0x78
 e00e00c:	e7931106 	ldr	r1, [r3, r6, lsl #2]
 e00e010:	e3560001 	cmp	r6, #1
 e00e014:	e7821106 	str	r1, [r2, r6, lsl #2]
 e00e018:	e3a06001 	mov	r6, #1
 e00e01c:	1affffed 	bne	e00dfd8 <vTaskSwitchContext+0x78>
 e00e020:	eb001022 	bl	e0120b0 <ulPortInterruptLock>
 e00e024:	e1a06000 	mov	r6, r0
 e00e028:	eb00103b 	bl	e01211c <ulPortGetCoreId>
 e00e02c:	e1a03000 	mov	r3, r0
 e00e030:	e1a00006 	mov	r0, r6
 e00e034:	e7956103 	ldr	r6, [r5, r3, lsl #2]
 e00e038:	eb001021 	bl	e0120c4 <ulPortInterruptUnLock>
 e00e03c:	e30a35a5 	movw	r3, #42405	; 0xa5a5
 e00e040:	e34a35a5 	movt	r3, #42405	; 0xa5a5
 e00e044:	e5962030 	ldr	r2, [r6, #48]	; 0x30
 e00e048:	e5921000 	ldr	r1, [r2]
 e00e04c:	e1510003 	cmp	r1, r3
 e00e050:	1a000002 	bne	e00e060 <vTaskSwitchContext+0x100>
 e00e054:	e5923004 	ldr	r3, [r2, #4]
 e00e058:	e1530001 	cmp	r3, r1
 e00e05c:	0a000128 	beq	e00e504 <vTaskSwitchContext+0x5a4>
 e00e060:	eb001012 	bl	e0120b0 <ulPortInterruptLock>
 e00e064:	e1a06000 	mov	r6, r0
 e00e068:	eb00102b 	bl	e01211c <ulPortGetCoreId>
 e00e06c:	e1a03000 	mov	r3, r0
 e00e070:	e1a00006 	mov	r0, r6
 e00e074:	e7957103 	ldr	r7, [r5, r3, lsl #2]
 e00e078:	eb001011 	bl	e0120c4 <ulPortInterruptUnLock>
 e00e07c:	eb00100b 	bl	e0120b0 <ulPortInterruptLock>
 e00e080:	e1a06000 	mov	r6, r0
 e00e084:	eb001024 	bl	e01211c <ulPortGetCoreId>
 e00e088:	e1a03000 	mov	r3, r0
 e00e08c:	e1a00006 	mov	r0, r6
 e00e090:	e7956103 	ldr	r6, [r5, r3, lsl #2]
 e00e094:	eb00100a 	bl	e0120c4 <ulPortInterruptUnLock>
 e00e098:	e286103c 	add	r1, r6, #60	; 0x3c
 e00e09c:	e1a00007 	mov	r0, r7
 e00e0a0:	eb00102c 	bl	e012158 <vApplicationStackOverflowHook>
 e00e0a4:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e0a8:	e5933034 	ldr	r3, [r3, #52]	; 0x34
 e00e0ac:	e3530000 	cmp	r3, #0
 e00e0b0:	ba000003 	blt	e00e0c4 <vTaskSwitchContext+0x164>
 e00e0b4:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e0b8:	e5933034 	ldr	r3, [r3, #52]	; 0x34
 e00e0bc:	e3530001 	cmp	r3, #1
 e00e0c0:	da0000e9 	ble	e00e46c <vTaskSwitchContext+0x50c>
 e00e0c4:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e0c8:	e3036f10 	movw	r6, #16144	; 0x3f10
 e00e0cc:	e346600a 	movt	r6, #24586	; 0x600a
 e00e0d0:	e5932014 	ldr	r2, [r3, #20]
 e00e0d4:	e5963000 	ldr	r3, [r6]
 e00e0d8:	e1520003 	cmp	r2, r3
 e00e0dc:	0a00010f 	beq	e00e520 <vTaskSwitchContext+0x5c0>
 e00e0e0:	e3049010 	movw	r9, #16400	; 0x4010
 e00e0e4:	e346900a 	movt	r9, #24586	; 0x600a
 e00e0e8:	e3037f14 	movw	r7, #16148	; 0x3f14
 e00e0ec:	e346700a 	movt	r7, #24586	; 0x600a
 e00e0f0:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e0f4:	e3e02000 	mvn	r2, #0
 e00e0f8:	e3a0a014 	mov	sl, #20
 e00e0fc:	e5832034 	str	r2, [r3, #52]	; 0x34
 e00e100:	e5996000 	ldr	r6, [r9]
 e00e104:	e003069a 	mul	r3, sl, r6
 e00e108:	e7973003 	ldr	r3, [r7, r3]
 e00e10c:	e3530000 	cmp	r3, #0
 e00e110:	1a000008 	bne	e00e138 <vTaskSwitchContext+0x1d8>
 e00e114:	e305b878 	movw	fp, #22648	; 0x5878
 e00e118:	e340be01 	movt	fp, #3585	; 0xe01
 e00e11c:	e3560000 	cmp	r6, #0
 e00e120:	e2466001 	sub	r6, r6, #1
 e00e124:	0a0000a7 	beq	e00e3c8 <vTaskSwitchContext+0x468>
 e00e128:	e003069a 	mul	r3, sl, r6
 e00e12c:	e7973003 	ldr	r3, [r7, r3]
 e00e130:	e3530000 	cmp	r3, #0
 e00e134:	0afffff8 	beq	e00e11c <vTaskSwitchContext+0x1bc>
 e00e138:	e3a01014 	mov	r1, #20
 e00e13c:	e304c03c 	movw	ip, #16444	; 0x403c
 e00e140:	e346c00a 	movt	ip, #24586	; 0x600a
 e00e144:	e0010691 	mul	r1, r1, r6
 e00e148:	e0870001 	add	r0, r7, r1
 e00e14c:	e2811008 	add	r1, r1, #8
 e00e150:	e0871001 	add	r1, r7, r1
 e00e154:	e5903004 	ldr	r3, [r0, #4]
 e00e158:	ea000003 	b	e00e16c <vTaskSwitchContext+0x20c>
 e00e15c:	e795e104 	ldr	lr, [r5, r4, lsl #2]
 e00e160:	e79c2104 	ldr	r2, [ip, r4, lsl #2]
 e00e164:	e15e0002 	cmp	lr, r2
 e00e168:	0a00000a 	beq	e00e198 <vTaskSwitchContext+0x238>
 e00e16c:	e5933004 	ldr	r3, [r3, #4]
 e00e170:	e5803004 	str	r3, [r0, #4]
 e00e174:	e1530001 	cmp	r3, r1
 e00e178:	05933004 	ldreq	r3, [r3, #4]
 e00e17c:	05803004 	streq	r3, [r0, #4]
 e00e180:	e593200c 	ldr	r2, [r3, #12]
 e00e184:	e7852104 	str	r2, [r5, r4, lsl #2]
 e00e188:	e7952104 	ldr	r2, [r5, r4, lsl #2]
 e00e18c:	e5922038 	ldr	r2, [r2, #56]	; 0x38
 e00e190:	e3520000 	cmp	r2, #0
 e00e194:	1afffff0 	bne	e00e15c <vTaskSwitchContext+0x1fc>
 e00e198:	e5896000 	str	r6, [r9]
 e00e19c:	e7950104 	ldr	r0, [r5, r4, lsl #2]
 e00e1a0:	e2800004 	add	r0, r0, #4
 e00e1a4:	eb00082c 	bl	e01025c <uxListRemove>
 e00e1a8:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e1ac:	e5834034 	str	r4, [r3, #52]	; 0x34
 e00e1b0:	e5993000 	ldr	r3, [r9]
 e00e1b4:	e3530000 	cmp	r3, #0
 e00e1b8:	0a000007 	beq	e00e1dc <vTaskSwitchContext+0x27c>
 e00e1bc:	e3a01014 	mov	r1, #20
 e00e1c0:	ea000001 	b	e00e1cc <vTaskSwitchContext+0x26c>
 e00e1c4:	e2533001 	subs	r3, r3, #1
 e00e1c8:	0a000003 	beq	e00e1dc <vTaskSwitchContext+0x27c>
 e00e1cc:	e0020391 	mul	r2, r1, r3
 e00e1d0:	e7972002 	ldr	r2, [r7, r2]
 e00e1d4:	e3520000 	cmp	r2, #0
 e00e1d8:	0afffff9 	beq	e00e1c4 <vTaskSwitchContext+0x264>
 e00e1dc:	e5893000 	str	r3, [r9]
 e00e1e0:	e3053000 	movw	r3, #20480	; 0x5000
 e00e1e4:	e3463009 	movt	r3, #24585	; 0x6009
 e00e1e8:	e7952104 	ldr	r2, [r5, r4, lsl #2]
 e00e1ec:	e282207c 	add	r2, r2, #124	; 0x7c
 e00e1f0:	e5832000 	str	r2, [r3]
 e00e1f4:	eb000f92 	bl	e012044 <xPortSpinUnLockTask>
 e00e1f8:	e1a00008 	mov	r0, r8
 e00e1fc:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e00e200:	ea000faf 	b	e0120c4 <ulPortInterruptUnLock>
 e00e204:	e30430a8 	movw	r3, #16552	; 0x40a8
 e00e208:	e346300a 	movt	r3, #24586	; 0x600a
 e00e20c:	e3a02001 	mov	r2, #1
 e00e210:	e7832104 	str	r2, [r3, r4, lsl #2]
 e00e214:	eb000fac 	bl	e0120cc <xPortCpuIsInInterrupt>
 e00e218:	e3500000 	cmp	r0, #0
 e00e21c:	1afffff4 	bne	e00e1f4 <vTaskSwitchContext+0x294>
 e00e220:	e3035f00 	movw	r5, #16128	; 0x3f00
 e00e224:	e346500a 	movt	r5, #24586	; 0x600a
 e00e228:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e22c:	e5931038 	ldr	r1, [r3, #56]	; 0x38
 e00e230:	e3510000 	cmp	r1, #0
 e00e234:	1affffee 	bne	e00e1f4 <vTaskSwitchContext+0x294>
 e00e238:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e23c:	e5933034 	ldr	r3, [r3, #52]	; 0x34
 e00e240:	e3530000 	cmp	r3, #0
 e00e244:	ba000003 	blt	e00e258 <vTaskSwitchContext+0x2f8>
 e00e248:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e24c:	e5933034 	ldr	r3, [r3, #52]	; 0x34
 e00e250:	e3530001 	cmp	r3, #1
 e00e254:	daffffe6 	ble	e00e1f4 <vTaskSwitchContext+0x294>
 e00e258:	e3a0ca09 	mov	ip, #36864	; 0x9000
 e00e25c:	e344c200 	movt	ip, #16896	; 0x4200
 e00e260:	e3033ff8 	movw	r3, #16376	; 0x3ff8
 e00e264:	e346300a 	movt	r3, #24586	; 0x600a
 e00e268:	e3032ff0 	movw	r2, #16368	; 0x3ff0
 e00e26c:	e346200a 	movt	r2, #24586	; 0x600a
 e00e270:	e59c0004 	ldr	r0, [ip, #4]
 e00e274:	e7830101 	str	r0, [r3, r1, lsl #2]
 e00e278:	e793e101 	ldr	lr, [r3, r1, lsl #2]
 e00e27c:	e7920101 	ldr	r0, [r2, r1, lsl #2]
 e00e280:	e15e0000 	cmp	lr, r0
 e00e284:	9a000006 	bls	e00e2a4 <vTaskSwitchContext+0x344>
 e00e288:	e7936101 	ldr	r6, [r3, r1, lsl #2]
 e00e28c:	e7927101 	ldr	r7, [r2, r1, lsl #2]
 e00e290:	e795e101 	ldr	lr, [r5, r1, lsl #2]
 e00e294:	e59e0078 	ldr	r0, [lr, #120]	; 0x78
 e00e298:	e0400007 	sub	r0, r0, r7
 e00e29c:	e0800006 	add	r0, r0, r6
 e00e2a0:	e58e0078 	str	r0, [lr, #120]	; 0x78
 e00e2a4:	e7930101 	ldr	r0, [r3, r1, lsl #2]
 e00e2a8:	e3510001 	cmp	r1, #1
 e00e2ac:	e7820101 	str	r0, [r2, r1, lsl #2]
 e00e2b0:	e3a01001 	mov	r1, #1
 e00e2b4:	1affffed 	bne	e00e270 <vTaskSwitchContext+0x310>
 e00e2b8:	eb000f7c 	bl	e0120b0 <ulPortInterruptLock>
 e00e2bc:	e1a06000 	mov	r6, r0
 e00e2c0:	eb000f95 	bl	e01211c <ulPortGetCoreId>
 e00e2c4:	e1a03000 	mov	r3, r0
 e00e2c8:	e1a00006 	mov	r0, r6
 e00e2cc:	e7956103 	ldr	r6, [r5, r3, lsl #2]
 e00e2d0:	eb000f7b 	bl	e0120c4 <ulPortInterruptUnLock>
 e00e2d4:	e30a35a5 	movw	r3, #42405	; 0xa5a5
 e00e2d8:	e34a35a5 	movt	r3, #42405	; 0xa5a5
 e00e2dc:	e5962030 	ldr	r2, [r6, #48]	; 0x30
 e00e2e0:	e5921000 	ldr	r1, [r2]
 e00e2e4:	e1510003 	cmp	r1, r3
 e00e2e8:	1a000002 	bne	e00e2f8 <vTaskSwitchContext+0x398>
 e00e2ec:	e5923004 	ldr	r3, [r2, #4]
 e00e2f0:	e1530001 	cmp	r3, r1
 e00e2f4:	0a0000dd 	beq	e00e670 <vTaskSwitchContext+0x710>
 e00e2f8:	eb000f6c 	bl	e0120b0 <ulPortInterruptLock>
 e00e2fc:	e1a06000 	mov	r6, r0
 e00e300:	eb000f85 	bl	e01211c <ulPortGetCoreId>
 e00e304:	e1a03000 	mov	r3, r0
 e00e308:	e1a00006 	mov	r0, r6
 e00e30c:	e7957103 	ldr	r7, [r5, r3, lsl #2]
 e00e310:	eb000f6b 	bl	e0120c4 <ulPortInterruptUnLock>
 e00e314:	eb000f65 	bl	e0120b0 <ulPortInterruptLock>
 e00e318:	e1a06000 	mov	r6, r0
 e00e31c:	eb000f7e 	bl	e01211c <ulPortGetCoreId>
 e00e320:	e1a03000 	mov	r3, r0
 e00e324:	e1a00006 	mov	r0, r6
 e00e328:	e7956103 	ldr	r6, [r5, r3, lsl #2]
 e00e32c:	eb000f64 	bl	e0120c4 <ulPortInterruptUnLock>
 e00e330:	e286103c 	add	r1, r6, #60	; 0x3c
 e00e334:	e1a00007 	mov	r0, r7
 e00e338:	eb000f86 	bl	e012158 <vApplicationStackOverflowHook>
 e00e33c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e340:	e3e02000 	mvn	r2, #0
 e00e344:	e3036f10 	movw	r6, #16144	; 0x3f10
 e00e348:	e346600a 	movt	r6, #24586	; 0x600a
 e00e34c:	e5832034 	str	r2, [r3, #52]	; 0x34
 e00e350:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e354:	e5932014 	ldr	r2, [r3, #20]
 e00e358:	e5963000 	ldr	r3, [r6]
 e00e35c:	e1520003 	cmp	r2, r3
 e00e360:	0a0000a8 	beq	e00e608 <vTaskSwitchContext+0x6a8>
 e00e364:	e3049010 	movw	r9, #16400	; 0x4010
 e00e368:	e346900a 	movt	r9, #24586	; 0x600a
 e00e36c:	e304303c 	movw	r3, #16444	; 0x403c
 e00e370:	e346300a 	movt	r3, #24586	; 0x600a
 e00e374:	e7933104 	ldr	r3, [r3, r4, lsl #2]
 e00e378:	e7853104 	str	r3, [r5, r4, lsl #2]
 e00e37c:	e7950104 	ldr	r0, [r5, r4, lsl #2]
 e00e380:	e2800004 	add	r0, r0, #4
 e00e384:	eb0007b4 	bl	e01025c <uxListRemove>
 e00e388:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e38c:	e5834034 	str	r4, [r3, #52]	; 0x34
 e00e390:	e5993000 	ldr	r3, [r9]
 e00e394:	e3530000 	cmp	r3, #0
 e00e398:	0affff8f 	beq	e00e1dc <vTaskSwitchContext+0x27c>
 e00e39c:	e3037f14 	movw	r7, #16148	; 0x3f14
 e00e3a0:	e346700a 	movt	r7, #24586	; 0x600a
 e00e3a4:	e3a01014 	mov	r1, #20
 e00e3a8:	ea000001 	b	e00e3b4 <vTaskSwitchContext+0x454>
 e00e3ac:	e2533001 	subs	r3, r3, #1
 e00e3b0:	0affff89 	beq	e00e1dc <vTaskSwitchContext+0x27c>
 e00e3b4:	e0020391 	mul	r2, r1, r3
 e00e3b8:	e7972002 	ldr	r2, [r7, r2]
 e00e3bc:	e3520000 	cmp	r2, #0
 e00e3c0:	0afffff9 	beq	e00e3ac <vTaskSwitchContext+0x44c>
 e00e3c4:	eaffff84 	b	e00e1dc <vTaskSwitchContext+0x27c>
 e00e3c8:	e1a0000b 	mov	r0, fp
 e00e3cc:	e3001d88 	movw	r1, #3464	; 0xd88
 e00e3d0:	ebffee02 	bl	e009be0 <vAssertCalled>
 e00e3d4:	eaffff53 	b	e00e128 <vTaskSwitchContext+0x1c8>
 e00e3d8:	e3035f00 	movw	r5, #16128	; 0x3f00
 e00e3dc:	e346500a 	movt	r5, #24586	; 0x600a
 e00e3e0:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e3e4:	e5933034 	ldr	r3, [r3, #52]	; 0x34
 e00e3e8:	e3530000 	cmp	r3, #0
 e00e3ec:	ba000003 	blt	e00e400 <vTaskSwitchContext+0x4a0>
 e00e3f0:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e3f4:	e5933034 	ldr	r3, [r3, #52]	; 0x34
 e00e3f8:	e3530001 	cmp	r3, #1
 e00e3fc:	da000029 	ble	e00e4a8 <vTaskSwitchContext+0x548>
 e00e400:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e404:	e3036f10 	movw	r6, #16144	; 0x3f10
 e00e408:	e346600a 	movt	r6, #24586	; 0x600a
 e00e40c:	e5932014 	ldr	r2, [r3, #20]
 e00e410:	e5963000 	ldr	r3, [r6]
 e00e414:	e1520003 	cmp	r2, r3
 e00e418:	0a00005d 	beq	e00e594 <vTaskSwitchContext+0x634>
 e00e41c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e420:	e3e02000 	mvn	r2, #0
 e00e424:	e3a06000 	mov	r6, #0
 e00e428:	e5832034 	str	r2, [r3, #52]	; 0x34
 e00e42c:	e304203c 	movw	r2, #16444	; 0x403c
 e00e430:	e346200a 	movt	r2, #24586	; 0x600a
 e00e434:	e30430a8 	movw	r3, #16552	; 0x40a8
 e00e438:	e346300a 	movt	r3, #24586	; 0x600a
 e00e43c:	e7922104 	ldr	r2, [r2, r4, lsl #2]
 e00e440:	e7852104 	str	r2, [r5, r4, lsl #2]
 e00e444:	e7836104 	str	r6, [r3, r4, lsl #2]
 e00e448:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e44c:	e5836058 	str	r6, [r3, #88]	; 0x58
 e00e450:	ebffef0c 	bl	e00a088 <vDisableIPIInterrupt>
 e00e454:	eb000efa 	bl	e012044 <xPortSpinUnLockTask>
 e00e458:	e1a00008 	mov	r0, r8
 e00e45c:	eb000f18 	bl	e0120c4 <ulPortInterruptUnLock>
 e00e460:	e1a00006 	mov	r0, r6
 e00e464:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e00e468:	eafff0b5 	b	e00a744 <psci_cpu_off>
 e00e46c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e470:	e5933034 	ldr	r3, [r3, #52]	; 0x34
 e00e474:	e1530004 	cmp	r3, r4
 e00e478:	1affff11 	bne	e00e0c4 <vTaskSwitchContext+0x164>
 e00e47c:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e480:	e5933034 	ldr	r3, [r3, #52]	; 0x34
 e00e484:	e3730002 	cmn	r3, #2
 e00e488:	1a00002e 	bne	e00e548 <vTaskSwitchContext+0x5e8>
 e00e48c:	e3033f10 	movw	r3, #16144	; 0x3f10
 e00e490:	e346300a 	movt	r3, #24586	; 0x600a
 e00e494:	e5930000 	ldr	r0, [r3]
 e00e498:	e7951104 	ldr	r1, [r5, r4, lsl #2]
 e00e49c:	e2811004 	add	r1, r1, #4
 e00e4a0:	eb00074c 	bl	e0101d8 <vListInsertEnd>
 e00e4a4:	eaffff0d 	b	e00e0e0 <vTaskSwitchContext+0x180>
 e00e4a8:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e4ac:	e5933034 	ldr	r3, [r3, #52]	; 0x34
 e00e4b0:	e3730002 	cmn	r3, #2
 e00e4b4:	0a00004a 	beq	e00e5e4 <vTaskSwitchContext+0x684>
 e00e4b8:	e7952104 	ldr	r2, [r5, r4, lsl #2]
 e00e4bc:	e3043010 	movw	r3, #16400	; 0x4010
 e00e4c0:	e346300a 	movt	r3, #24586	; 0x600a
 e00e4c4:	e592102c 	ldr	r1, [r2, #44]	; 0x2c
 e00e4c8:	e3a00014 	mov	r0, #20
 e00e4cc:	e5932000 	ldr	r2, [r3]
 e00e4d0:	e1510002 	cmp	r1, r2
 e00e4d4:	87952104 	ldrhi	r2, [r5, r4, lsl #2]
 e00e4d8:	8592202c 	ldrhi	r2, [r2, #44]	; 0x2c
 e00e4dc:	85832000 	strhi	r2, [r3]
 e00e4e0:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e4e4:	e7951104 	ldr	r1, [r5, r4, lsl #2]
 e00e4e8:	e593202c 	ldr	r2, [r3, #44]	; 0x2c
 e00e4ec:	e3033f14 	movw	r3, #16148	; 0x3f14
 e00e4f0:	e346300a 	movt	r3, #24586	; 0x600a
 e00e4f4:	e2811004 	add	r1, r1, #4
 e00e4f8:	e0203290 	mla	r0, r0, r2, r3
 e00e4fc:	eb000735 	bl	e0101d8 <vListInsertEnd>
 e00e500:	eaffffc5 	b	e00e41c <vTaskSwitchContext+0x4bc>
 e00e504:	e5921008 	ldr	r1, [r2, #8]
 e00e508:	e1510003 	cmp	r1, r3
 e00e50c:	1afffed3 	bne	e00e060 <vTaskSwitchContext+0x100>
 e00e510:	e592300c 	ldr	r3, [r2, #12]
 e00e514:	e1530001 	cmp	r3, r1
 e00e518:	1afffed0 	bne	e00e060 <vTaskSwitchContext+0x100>
 e00e51c:	eafffee0 	b	e00e0a4 <vTaskSwitchContext+0x144>
 e00e520:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e524:	e3e02000 	mvn	r2, #0
 e00e528:	e5832034 	str	r2, [r3, #52]	; 0x34
 e00e52c:	e7950104 	ldr	r0, [r5, r4, lsl #2]
 e00e530:	e2800004 	add	r0, r0, #4
 e00e534:	eb000748 	bl	e01025c <uxListRemove>
 e00e538:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e53c:	e5933034 	ldr	r3, [r3, #52]	; 0x34
 e00e540:	e3730002 	cmn	r3, #2
 e00e544:	0a00002d 	beq	e00e600 <vTaskSwitchContext+0x6a0>
 e00e548:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e54c:	e3049010 	movw	r9, #16400	; 0x4010
 e00e550:	e346900a 	movt	r9, #24586	; 0x600a
 e00e554:	e593202c 	ldr	r2, [r3, #44]	; 0x2c
 e00e558:	e3a00014 	mov	r0, #20
 e00e55c:	e5993000 	ldr	r3, [r9]
 e00e560:	e3037f14 	movw	r7, #16148	; 0x3f14
 e00e564:	e346700a 	movt	r7, #24586	; 0x600a
 e00e568:	e1520003 	cmp	r2, r3
 e00e56c:	87953104 	ldrhi	r3, [r5, r4, lsl #2]
 e00e570:	8593302c 	ldrhi	r3, [r3, #44]	; 0x2c
 e00e574:	85893000 	strhi	r3, [r9]
 e00e578:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e57c:	e7951104 	ldr	r1, [r5, r4, lsl #2]
 e00e580:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
 e00e584:	e2811004 	add	r1, r1, #4
 e00e588:	e0207390 	mla	r0, r0, r3, r7
 e00e58c:	eb000711 	bl	e0101d8 <vListInsertEnd>
 e00e590:	eafffed6 	b	e00e0f0 <vTaskSwitchContext+0x190>
 e00e594:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e598:	e3e02000 	mvn	r2, #0
 e00e59c:	e5832034 	str	r2, [r3, #52]	; 0x34
 e00e5a0:	e7950104 	ldr	r0, [r5, r4, lsl #2]
 e00e5a4:	e2800004 	add	r0, r0, #4
 e00e5a8:	eb00072b 	bl	e01025c <uxListRemove>
 e00e5ac:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e5b0:	e5933034 	ldr	r3, [r3, #52]	; 0x34
 e00e5b4:	e3730002 	cmn	r3, #2
 e00e5b8:	1affffbe 	bne	e00e4b8 <vTaskSwitchContext+0x558>
 e00e5bc:	e5960000 	ldr	r0, [r6]
 e00e5c0:	e7951104 	ldr	r1, [r5, r4, lsl #2]
 e00e5c4:	e2811004 	add	r1, r1, #4
 e00e5c8:	eb000702 	bl	e0101d8 <vListInsertEnd>
 e00e5cc:	eaffff92 	b	e00e41c <vTaskSwitchContext+0x4bc>
 e00e5d0:	e3001d57 	movw	r1, #3415	; 0xd57
 e00e5d4:	e3050878 	movw	r0, #22648	; 0x5878
 e00e5d8:	e3400e01 	movt	r0, #3585	; 0xe01
 e00e5dc:	ebffed7f 	bl	e009be0 <vAssertCalled>
 e00e5e0:	eafffe72 	b	e00dfb0 <vTaskSwitchContext+0x50>
 e00e5e4:	e3033f10 	movw	r3, #16144	; 0x3f10
 e00e5e8:	e346300a 	movt	r3, #24586	; 0x600a
 e00e5ec:	e5930000 	ldr	r0, [r3]
 e00e5f0:	e7951104 	ldr	r1, [r5, r4, lsl #2]
 e00e5f4:	e2811004 	add	r1, r1, #4
 e00e5f8:	eb0006f6 	bl	e0101d8 <vListInsertEnd>
 e00e5fc:	eaffff86 	b	e00e41c <vTaskSwitchContext+0x4bc>
 e00e600:	e5960000 	ldr	r0, [r6]
 e00e604:	eaffffa3 	b	e00e498 <vTaskSwitchContext+0x538>
 e00e608:	e7950104 	ldr	r0, [r5, r4, lsl #2]
 e00e60c:	e2800004 	add	r0, r0, #4
 e00e610:	eb000711 	bl	e01025c <uxListRemove>
 e00e614:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e618:	e5933034 	ldr	r3, [r3, #52]	; 0x34
 e00e61c:	e3730002 	cmn	r3, #2
 e00e620:	0a000019 	beq	e00e68c <vTaskSwitchContext+0x72c>
 e00e624:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e628:	e3049010 	movw	r9, #16400	; 0x4010
 e00e62c:	e346900a 	movt	r9, #24586	; 0x600a
 e00e630:	e593202c 	ldr	r2, [r3, #44]	; 0x2c
 e00e634:	e3a00014 	mov	r0, #20
 e00e638:	e5993000 	ldr	r3, [r9]
 e00e63c:	e3037f14 	movw	r7, #16148	; 0x3f14
 e00e640:	e346700a 	movt	r7, #24586	; 0x600a
 e00e644:	e1520003 	cmp	r2, r3
 e00e648:	87953104 	ldrhi	r3, [r5, r4, lsl #2]
 e00e64c:	8593302c 	ldrhi	r3, [r3, #44]	; 0x2c
 e00e650:	85893000 	strhi	r3, [r9]
 e00e654:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e658:	e7951104 	ldr	r1, [r5, r4, lsl #2]
 e00e65c:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
 e00e660:	e2811004 	add	r1, r1, #4
 e00e664:	e0207390 	mla	r0, r0, r3, r7
 e00e668:	eb0006da 	bl	e0101d8 <vListInsertEnd>
 e00e66c:	eaffff3e 	b	e00e36c <vTaskSwitchContext+0x40c>
 e00e670:	e5921008 	ldr	r1, [r2, #8]
 e00e674:	e1510003 	cmp	r1, r3
 e00e678:	1affff1e 	bne	e00e2f8 <vTaskSwitchContext+0x398>
 e00e67c:	e592300c 	ldr	r3, [r2, #12]
 e00e680:	e1530001 	cmp	r3, r1
 e00e684:	1affff1b 	bne	e00e2f8 <vTaskSwitchContext+0x398>
 e00e688:	eaffff2b 	b	e00e33c <vTaskSwitchContext+0x3dc>
 e00e68c:	e5960000 	ldr	r0, [r6]
 e00e690:	e7951104 	ldr	r1, [r5, r4, lsl #2]
 e00e694:	e2811004 	add	r1, r1, #4
 e00e698:	eb0006ce 	bl	e0101d8 <vListInsertEnd>
 e00e69c:	eaffff30 	b	e00e364 <vTaskSwitchContext+0x404>

0e00e6a0 <vTaskInternalSetTimeOutState>:
 e00e6a0:	e3042048 	movw	r2, #16456	; 0x4048
 e00e6a4:	e346200a 	movt	r2, #24586	; 0x600a
 e00e6a8:	e30430a4 	movw	r3, #16548	; 0x40a4
 e00e6ac:	e346300a 	movt	r3, #24586	; 0x600a
 e00e6b0:	e5922000 	ldr	r2, [r2]
 e00e6b4:	e5933000 	ldr	r3, [r3]
 e00e6b8:	e1c020f0 	strd	r2, [r0]
 e00e6bc:	e12fff1e 	bx	lr

0e00e6c0 <vTaskMissedYield>:
 e00e6c0:	e92d4010 	push	{r4, lr}
 e00e6c4:	eb000e94 	bl	e01211c <ulPortGetCoreId>
 e00e6c8:	e30430a8 	movw	r3, #16552	; 0x40a8
 e00e6cc:	e346300a 	movt	r3, #24586	; 0x600a
 e00e6d0:	e3a02001 	mov	r2, #1
 e00e6d4:	e7832100 	str	r2, [r3, r0, lsl #2]
 e00e6d8:	e8bd8010 	pop	{r4, pc}

0e00e6dc <eTaskConfirmSleepModeStatus>:
 e00e6dc:	e3043050 	movw	r3, #16464	; 0x4050
 e00e6e0:	e346300a 	movt	r3, #24586	; 0x600a
 e00e6e4:	e5933000 	ldr	r3, [r3]
 e00e6e8:	e3530000 	cmp	r3, #0
 e00e6ec:	0a000001 	beq	e00e6f8 <eTaskConfirmSleepModeStatus+0x1c>
 e00e6f0:	e3a00000 	mov	r0, #0
 e00e6f4:	e12fff1e 	bx	lr
 e00e6f8:	e92d4010 	push	{r4, lr}
 e00e6fc:	eb000e6b 	bl	e0120b0 <ulPortInterruptLock>
 e00e700:	e1a04000 	mov	r4, r0
 e00e704:	eb000e84 	bl	e01211c <ulPortGetCoreId>
 e00e708:	e30430a8 	movw	r3, #16552	; 0x40a8
 e00e70c:	e346300a 	movt	r3, #24586	; 0x600a
 e00e710:	e1a02000 	mov	r2, r0
 e00e714:	e1a00004 	mov	r0, r4
 e00e718:	e7934102 	ldr	r4, [r3, r2, lsl #2]
 e00e71c:	eb000e68 	bl	e0120c4 <ulPortInterruptUnLock>
 e00e720:	e3540000 	cmp	r4, #0
 e00e724:	0a000001 	beq	e00e730 <eTaskConfirmSleepModeStatus+0x54>
 e00e728:	e3a00000 	mov	r0, #0
 e00e72c:	e8bd8010 	pop	{r4, pc}
 e00e730:	e3043000 	movw	r3, #16384	; 0x4000
 e00e734:	e346300a 	movt	r3, #24586	; 0x600a
 e00e738:	e3042068 	movw	r2, #16488	; 0x4068
 e00e73c:	e346200a 	movt	r2, #24586	; 0x600a
 e00e740:	e5933000 	ldr	r3, [r3]
 e00e744:	e5920000 	ldr	r0, [r2]
 e00e748:	e2433001 	sub	r3, r3, #1
 e00e74c:	e1500003 	cmp	r0, r3
 e00e750:	13a00001 	movne	r0, #1
 e00e754:	03a00002 	moveq	r0, #2
 e00e758:	e8bd8010 	pop	{r4, pc}

0e00e75c <xTaskGetSchedulerState>:
 e00e75c:	e3043064 	movw	r3, #16484	; 0x4064
 e00e760:	e346300a 	movt	r3, #24586	; 0x600a
 e00e764:	e92d4070 	push	{r4, r5, r6, lr}
 e00e768:	e5933000 	ldr	r3, [r3]
 e00e76c:	e3530000 	cmp	r3, #0
 e00e770:	03a04001 	moveq	r4, #1
 e00e774:	1a000001 	bne	e00e780 <xTaskGetSchedulerState+0x24>
 e00e778:	e1a00004 	mov	r0, r4
 e00e77c:	e8bd8070 	pop	{r4, r5, r6, pc}
 e00e780:	eb000e4a 	bl	e0120b0 <ulPortInterruptLock>
 e00e784:	e1a05000 	mov	r5, r0
 e00e788:	eb000e22 	bl	e012018 <xPortSpinLockTask>
 e00e78c:	e3043008 	movw	r3, #16392	; 0x4008
 e00e790:	e346300a 	movt	r3, #24586	; 0x600a
 e00e794:	e5933000 	ldr	r3, [r3]
 e00e798:	e3530000 	cmp	r3, #0
 e00e79c:	03a04002 	moveq	r4, #2
 e00e7a0:	13a04000 	movne	r4, #0
 e00e7a4:	eb000e26 	bl	e012044 <xPortSpinUnLockTask>
 e00e7a8:	e1a00005 	mov	r0, r5
 e00e7ac:	eb000e44 	bl	e0120c4 <ulPortInterruptUnLock>
 e00e7b0:	e1a00004 	mov	r0, r4
 e00e7b4:	e8bd8070 	pop	{r4, r5, r6, pc}

0e00e7b8 <vTaskYieldWithinAPI>:
 e00e7b8:	e92d4010 	push	{r4, lr}
 e00e7bc:	eb000e3b 	bl	e0120b0 <ulPortInterruptLock>
 e00e7c0:	e1a04000 	mov	r4, r0
 e00e7c4:	eb000e54 	bl	e01211c <ulPortGetCoreId>
 e00e7c8:	e3033f00 	movw	r3, #16128	; 0x3f00
 e00e7cc:	e346300a 	movt	r3, #24586	; 0x600a
 e00e7d0:	e1a02000 	mov	r2, r0
 e00e7d4:	e1a00004 	mov	r0, r4
 e00e7d8:	e7934102 	ldr	r4, [r3, r2, lsl #2]
 e00e7dc:	eb000e38 	bl	e0120c4 <ulPortInterruptUnLock>
 e00e7e0:	e5943058 	ldr	r3, [r4, #88]	; 0x58
 e00e7e4:	e3530000 	cmp	r3, #0
 e00e7e8:	1a000001 	bne	e00e7f4 <vTaskYieldWithinAPI+0x3c>
 e00e7ec:	ef000000 	svc	0x00000000
 e00e7f0:	e8bd8010 	pop	{r4, pc}
 e00e7f4:	eb000e48 	bl	e01211c <ulPortGetCoreId>
 e00e7f8:	e30430a8 	movw	r3, #16552	; 0x40a8
 e00e7fc:	e346300a 	movt	r3, #24586	; 0x600a
 e00e800:	e3a02001 	mov	r2, #1
 e00e804:	e7832100 	str	r2, [r3, r0, lsl #2]
 e00e808:	e8bd8010 	pop	{r4, pc}

0e00e80c <vTaskEnterCritical>:
 e00e80c:	e92d4070 	push	{r4, r5, r6, lr}
 e00e810:	eb000e26 	bl	e0120b0 <ulPortInterruptLock>
 e00e814:	eb000e40 	bl	e01211c <ulPortGetCoreId>
 e00e818:	e3043064 	movw	r3, #16484	; 0x4064
 e00e81c:	e346300a 	movt	r3, #24586	; 0x600a
 e00e820:	e5933000 	ldr	r3, [r3]
 e00e824:	e3530000 	cmp	r3, #0
 e00e828:	08bd8070 	popeq	{r4, r5, r6, pc}
 e00e82c:	e3035f00 	movw	r5, #16128	; 0x3f00
 e00e830:	e346500a 	movt	r5, #24586	; 0x600a
 e00e834:	e1a04000 	mov	r4, r0
 e00e838:	e7953100 	ldr	r3, [r5, r0, lsl #2]
 e00e83c:	e5933058 	ldr	r3, [r3, #88]	; 0x58
 e00e840:	e3530000 	cmp	r3, #0
 e00e844:	0a000004 	beq	e00e85c <vTaskEnterCritical+0x50>
 e00e848:	e7952104 	ldr	r2, [r5, r4, lsl #2]
 e00e84c:	e5923058 	ldr	r3, [r2, #88]	; 0x58
 e00e850:	e2833001 	add	r3, r3, #1
 e00e854:	e5823058 	str	r3, [r2, #88]	; 0x58
 e00e858:	e8bd8070 	pop	{r4, r5, r6, pc}
 e00e85c:	eb000ded 	bl	e012018 <xPortSpinLockTask>
 e00e860:	eafffff8 	b	e00e848 <vTaskEnterCritical+0x3c>

0e00e864 <GetOSCriticalNesting>:
 e00e864:	e3033f00 	movw	r3, #16128	; 0x3f00
 e00e868:	e346300a 	movt	r3, #24586	; 0x600a
 e00e86c:	e7933100 	ldr	r3, [r3, r0, lsl #2]
 e00e870:	e5930058 	ldr	r0, [r3, #88]	; 0x58
 e00e874:	e12fff1e 	bx	lr

0e00e878 <vTaskExitCritical>:
 e00e878:	e92d4070 	push	{r4, r5, r6, lr}
 e00e87c:	eb000e26 	bl	e01211c <ulPortGetCoreId>
 e00e880:	e3043064 	movw	r3, #16484	; 0x4064
 e00e884:	e346300a 	movt	r3, #24586	; 0x600a
 e00e888:	e5933000 	ldr	r3, [r3]
 e00e88c:	e3530000 	cmp	r3, #0
 e00e890:	08bd8070 	popeq	{r4, r5, r6, pc}
 e00e894:	e3035f00 	movw	r5, #16128	; 0x3f00
 e00e898:	e346500a 	movt	r5, #24586	; 0x600a
 e00e89c:	e1a04000 	mov	r4, r0
 e00e8a0:	e7953100 	ldr	r3, [r5, r0, lsl #2]
 e00e8a4:	e5933058 	ldr	r3, [r3, #88]	; 0x58
 e00e8a8:	e3530000 	cmp	r3, #0
 e00e8ac:	0a000021 	beq	e00e938 <vTaskExitCritical+0xc0>
 e00e8b0:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00e8b4:	e5933058 	ldr	r3, [r3, #88]	; 0x58
 e00e8b8:	e3530000 	cmp	r3, #0
 e00e8bc:	08bd8070 	popeq	{r4, r5, r6, pc}
 e00e8c0:	e7952104 	ldr	r2, [r5, r4, lsl #2]
 e00e8c4:	e7951104 	ldr	r1, [r5, r4, lsl #2]
 e00e8c8:	e5923058 	ldr	r3, [r2, #88]	; 0x58
 e00e8cc:	e2433001 	sub	r3, r3, #1
 e00e8d0:	e5823058 	str	r3, [r2, #88]	; 0x58
 e00e8d4:	e5913058 	ldr	r3, [r1, #88]	; 0x58
 e00e8d8:	e3530000 	cmp	r3, #0
 e00e8dc:	18bd8070 	popne	{r4, r5, r6, pc}
 e00e8e0:	eb000df9 	bl	e0120cc <xPortCpuIsInInterrupt>
 e00e8e4:	e3500000 	cmp	r0, #0
 e00e8e8:	1a000017 	bne	e00e94c <vTaskExitCritical+0xd4>
 e00e8ec:	e30430a8 	movw	r3, #16552	; 0x40a8
 e00e8f0:	e346300a 	movt	r3, #24586	; 0x600a
 e00e8f4:	e7933104 	ldr	r3, [r3, r4, lsl #2]
 e00e8f8:	e3530000 	cmp	r3, #0
 e00e8fc:	0a000004 	beq	e00e914 <vTaskExitCritical+0x9c>
 e00e900:	e3043008 	movw	r3, #16392	; 0x4008
 e00e904:	e346300a 	movt	r3, #24586	; 0x600a
 e00e908:	e5933000 	ldr	r3, [r3]
 e00e90c:	e3530000 	cmp	r3, #0
 e00e910:	0a00000f 	beq	e00e954 <vTaskExitCritical+0xdc>
 e00e914:	eb000dca 	bl	e012044 <xPortSpinUnLockTask>
 e00e918:	e1a00004 	mov	r0, r4
 e00e91c:	ebfff9f6 	bl	e00d0fc <GetComponentCriticalNesting>
 e00e920:	e3500000 	cmp	r0, #0
 e00e924:	18bd8070 	popne	{r4, r5, r6, pc}
 e00e928:	f1080080 	cpsie	i
 e00e92c:	f57ff04f 	dsb	sy
 e00e930:	f57ff06f 	isb	sy
 e00e934:	e8bd8070 	pop	{r4, r5, r6, pc}
 e00e938:	e3050878 	movw	r0, #22648	; 0x5878
 e00e93c:	e3400e01 	movt	r0, #3585	; 0xe01
 e00e940:	e3011288 	movw	r1, #4744	; 0x1288
 e00e944:	ebffeca5 	bl	e009be0 <vAssertCalled>
 e00e948:	eaffffd8 	b	e00e8b0 <vTaskExitCritical+0x38>
 e00e94c:	e8bd4070 	pop	{r4, r5, r6, lr}
 e00e950:	ea000dbb 	b	e012044 <xPortSpinUnLockTask>
 e00e954:	eb000dba 	bl	e012044 <xPortSpinUnLockTask>
 e00e958:	ef000000 	svc	0x00000000
 e00e95c:	eaffffed 	b	e00e918 <vTaskExitCritical+0xa0>

0e00e960 <prvAddNewTaskToReadyList>:
 e00e960:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e00e964:	e3035f00 	movw	r5, #16128	; 0x3f00
 e00e968:	e346500a 	movt	r5, #24586	; 0x600a
 e00e96c:	e1a06000 	mov	r6, r0
 e00e970:	ebffffa5 	bl	e00e80c <vTaskEnterCritical>
 e00e974:	e5957000 	ldr	r7, [r5]
 e00e978:	e3570000 	cmp	r7, #0
 e00e97c:	0a00001b 	beq	e00e9f0 <prvAddNewTaskToReadyList+0x90>
 e00e980:	e5953004 	ldr	r3, [r5, #4]
 e00e984:	e3530000 	cmp	r3, #0
 e00e988:	0a000078 	beq	e00eb70 <prvAddNewTaskToReadyList+0x210>
 e00e98c:	e5953000 	ldr	r3, [r5]
 e00e990:	e5952000 	ldr	r2, [r5]
 e00e994:	e596102c 	ldr	r1, [r6, #44]	; 0x2c
 e00e998:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
 e00e99c:	e5922034 	ldr	r2, [r2, #52]	; 0x34
 e00e9a0:	e3520001 	cmp	r2, #1
 e00e9a4:	83a02000 	movhi	r2, #0
 e00e9a8:	93a02001 	movls	r2, #1
 e00e9ac:	e1510003 	cmp	r1, r3
 e00e9b0:	33a02000 	movcc	r2, #0
 e00e9b4:	e3520000 	cmp	r2, #0
 e00e9b8:	e5952004 	ldr	r2, [r5, #4]
 e00e9bc:	01a03001 	moveq	r3, r1
 e00e9c0:	13a07000 	movne	r7, #0
 e00e9c4:	e592102c 	ldr	r1, [r2, #44]	; 0x2c
 e00e9c8:	e5952004 	ldr	r2, [r5, #4]
 e00e9cc:	03e07000 	mvneq	r7, #0
 e00e9d0:	e1530001 	cmp	r3, r1
 e00e9d4:	e5922034 	ldr	r2, [r2, #52]	; 0x34
 e00e9d8:	33a03000 	movcc	r3, #0
 e00e9dc:	23a03001 	movcs	r3, #1
 e00e9e0:	e3520001 	cmp	r2, #1
 e00e9e4:	83a03000 	movhi	r3, #0
 e00e9e8:	e3530000 	cmp	r3, #0
 e00e9ec:	13a07001 	movne	r7, #1
 e00e9f0:	e3043000 	movw	r3, #16384	; 0x4000
 e00e9f4:	e346300a 	movt	r3, #24586	; 0x600a
 e00e9f8:	e5932000 	ldr	r2, [r3]
 e00e9fc:	e2822001 	add	r2, r2, #1
 e00ea00:	e5832000 	str	r2, [r3]
 e00ea04:	e5933000 	ldr	r3, [r3]
 e00ea08:	e3530001 	cmp	r3, #1
 e00ea0c:	0a000030 	beq	e00ead4 <prvAddNewTaskToReadyList+0x174>
 e00ea10:	e304200c 	movw	r2, #16396	; 0x400c
 e00ea14:	e346200a 	movt	r2, #24586	; 0x600a
 e00ea18:	e2861004 	add	r1, r6, #4
 e00ea1c:	e5923000 	ldr	r3, [r2]
 e00ea20:	e2833001 	add	r3, r3, #1
 e00ea24:	e5823000 	str	r3, [r2]
 e00ea28:	e3e02000 	mvn	r2, #0
 e00ea2c:	e5862034 	str	r2, [r6, #52]	; 0x34
 e00ea30:	e586305c 	str	r3, [r6, #92]	; 0x5c
 e00ea34:	e5963034 	ldr	r3, [r6, #52]	; 0x34
 e00ea38:	e3730002 	cmn	r3, #2
 e00ea3c:	0a00001f 	beq	e00eac0 <prvAddNewTaskToReadyList+0x160>
 e00ea40:	e3043010 	movw	r3, #16400	; 0x4010
 e00ea44:	e346300a 	movt	r3, #24586	; 0x600a
 e00ea48:	e596202c 	ldr	r2, [r6, #44]	; 0x2c
 e00ea4c:	e5930000 	ldr	r0, [r3]
 e00ea50:	e1520000 	cmp	r2, r0
 e00ea54:	e3a00014 	mov	r0, #20
 e00ea58:	85832000 	strhi	r2, [r3]
 e00ea5c:	e3033f14 	movw	r3, #16148	; 0x3f14
 e00ea60:	e346300a 	movt	r3, #24586	; 0x600a
 e00ea64:	e0203290 	mla	r0, r0, r2, r3
 e00ea68:	eb0005da 	bl	e0101d8 <vListInsertEnd>
 e00ea6c:	e3043064 	movw	r3, #16484	; 0x4064
 e00ea70:	e346300a 	movt	r3, #24586	; 0x600a
 e00ea74:	e5933000 	ldr	r3, [r3]
 e00ea78:	e3530000 	cmp	r3, #0
 e00ea7c:	0a000001 	beq	e00ea88 <prvAddNewTaskToReadyList+0x128>
 e00ea80:	e3570001 	cmp	r7, #1
 e00ea84:	9a000001 	bls	e00ea90 <prvAddNewTaskToReadyList+0x130>
 e00ea88:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 e00ea8c:	eaffff79 	b	e00e878 <vTaskExitCritical>
 e00ea90:	e7953107 	ldr	r3, [r5, r7, lsl #2]
 e00ea94:	e3530000 	cmp	r3, #0
 e00ea98:	0a000004 	beq	e00eab0 <prvAddNewTaskToReadyList+0x150>
 e00ea9c:	e7952107 	ldr	r2, [r5, r7, lsl #2]
 e00eaa0:	e596302c 	ldr	r3, [r6, #44]	; 0x2c
 e00eaa4:	e592202c 	ldr	r2, [r2, #44]	; 0x2c
 e00eaa8:	e1520003 	cmp	r2, r3
 e00eaac:	2afffff5 	bcs	e00ea88 <prvAddNewTaskToReadyList+0x128>
 e00eab0:	e1a00007 	mov	r0, r7
 e00eab4:	ebfffc0a 	bl	e00dae4 <prvYieldCore>
 e00eab8:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 e00eabc:	eaffff6d 	b	e00e878 <vTaskExitCritical>
 e00eac0:	e3033f10 	movw	r3, #16144	; 0x3f10
 e00eac4:	e346300a 	movt	r3, #24586	; 0x600a
 e00eac8:	e5930000 	ldr	r0, [r3]
 e00eacc:	eb0005c1 	bl	e0101d8 <vListInsertEnd>
 e00ead0:	eaffffe5 	b	e00ea6c <prvAddNewTaskToReadyList+0x10c>
 e00ead4:	e3034f14 	movw	r4, #16148	; 0x3f14
 e00ead8:	e346400a 	movt	r4, #24586	; 0x600a
 e00eadc:	e28480dc 	add	r8, r4, #220	; 0xdc
 e00eae0:	e1a00004 	mov	r0, r4
 e00eae4:	e2844014 	add	r4, r4, #20
 e00eae8:	eb0005ae 	bl	e0101a8 <vListInitialise>
 e00eaec:	e1580004 	cmp	r8, r4
 e00eaf0:	1afffffa 	bne	e00eae0 <prvAddNewTaskToReadyList+0x180>
 e00eaf4:	e3049014 	movw	r9, #16404	; 0x4014
 e00eaf8:	e346900a 	movt	r9, #24586	; 0x600a
 e00eafc:	e1a00009 	mov	r0, r9
 e00eb00:	e3048028 	movw	r8, #16424	; 0x4028
 e00eb04:	e346800a 	movt	r8, #24586	; 0x600a
 e00eb08:	eb0005a6 	bl	e0101a8 <vListInitialise>
 e00eb0c:	e1a00008 	mov	r0, r8
 e00eb10:	eb0005a4 	bl	e0101a8 <vListInitialise>
 e00eb14:	e304407c 	movw	r4, #16508	; 0x407c
 e00eb18:	e346400a 	movt	r4, #24586	; 0x600a
 e00eb1c:	e3040050 	movw	r0, #16464	; 0x4050
 e00eb20:	e346000a 	movt	r0, #24586	; 0x600a
 e00eb24:	eb00059f 	bl	e0101a8 <vListInitialise>
 e00eb28:	e1a00004 	mov	r0, r4
 e00eb2c:	eb00059d 	bl	e0101a8 <vListInitialise>
 e00eb30:	e3040090 	movw	r0, #16528	; 0x4090
 e00eb34:	e346000a 	movt	r0, #24586	; 0x600a
 e00eb38:	eb00059a 	bl	e0101a8 <vListInitialise>
 e00eb3c:	e3040068 	movw	r0, #16488	; 0x4068
 e00eb40:	e346000a 	movt	r0, #24586	; 0x600a
 e00eb44:	eb000597 	bl	e0101a8 <vListInitialise>
 e00eb48:	e3033f08 	movw	r3, #16136	; 0x3f08
 e00eb4c:	e346300a 	movt	r3, #24586	; 0x600a
 e00eb50:	e5839000 	str	r9, [r3]
 e00eb54:	e3033f0c 	movw	r3, #16140	; 0x3f0c
 e00eb58:	e346300a 	movt	r3, #24586	; 0x600a
 e00eb5c:	e5838000 	str	r8, [r3]
 e00eb60:	e3033f10 	movw	r3, #16144	; 0x3f10
 e00eb64:	e346300a 	movt	r3, #24586	; 0x600a
 e00eb68:	e5834000 	str	r4, [r3]
 e00eb6c:	eaffffa7 	b	e00ea10 <prvAddNewTaskToReadyList+0xb0>
 e00eb70:	e3a07001 	mov	r7, #1
 e00eb74:	eaffff9d 	b	e00e9f0 <prvAddNewTaskToReadyList+0x90>

0e00eb78 <xTaskCreateStatic>:
 e00eb78:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e00eb7c:	e1a04000 	mov	r4, r0
 e00eb80:	e24dd01c 	sub	sp, sp, #28
 e00eb84:	e1a09001 	mov	r9, r1
 e00eb88:	e1a07002 	mov	r7, r2
 e00eb8c:	e59d8044 	ldr	r8, [sp, #68]	; 0x44
 e00eb90:	e59d6048 	ldr	r6, [sp, #72]	; 0x48
 e00eb94:	e3580000 	cmp	r8, #0
 e00eb98:	e1a05003 	mov	r5, r3
 e00eb9c:	13a0b001 	movne	fp, #1
 e00eba0:	03a0b000 	moveq	fp, #0
 e00eba4:	0a00002f 	beq	e00ec68 <xTaskCreateStatic+0xf0>
 e00eba8:	e3560000 	cmp	r6, #0
 e00ebac:	13a0a001 	movne	sl, #1
 e00ebb0:	03a0a000 	moveq	sl, #0
 e00ebb4:	0a00001c 	beq	e00ec2c <xTaskCreateStatic+0xb4>
 e00ebb8:	e3a03f5e 	mov	r3, #376	; 0x178
 e00ebbc:	e58d3014 	str	r3, [sp, #20]
 e00ebc0:	e59d3014 	ldr	r3, [sp, #20]
 e00ebc4:	e3530f5e 	cmp	r3, #376	; 0x178
 e00ebc8:	1a000021 	bne	e00ec54 <xTaskCreateStatic+0xdc>
 e00ebcc:	e59d3014 	ldr	r3, [sp, #20]
 e00ebd0:	e11b000a 	tst	fp, sl
 e00ebd4:	1a000002 	bne	e00ebe4 <xTaskCreateStatic+0x6c>
 e00ebd8:	e3a00000 	mov	r0, #0
 e00ebdc:	e28dd01c 	add	sp, sp, #28
 e00ebe0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00ebe4:	e59dc040 	ldr	ip, [sp, #64]	; 0x40
 e00ebe8:	e5868030 	str	r8, [r6, #48]	; 0x30
 e00ebec:	e1a03005 	mov	r3, r5
 e00ebf0:	e58dc000 	str	ip, [sp]
 e00ebf4:	e1a02007 	mov	r2, r7
 e00ebf8:	e1a01009 	mov	r1, r9
 e00ebfc:	e1a00004 	mov	r0, r4
 e00ec00:	e58d6008 	str	r6, [sp, #8]
 e00ec04:	e3a0c002 	mov	ip, #2
 e00ec08:	e5c6c171 	strb	ip, [r6, #369]	; 0x171
 e00ec0c:	e28dc010 	add	ip, sp, #16
 e00ec10:	e58dc004 	str	ip, [sp, #4]
 e00ec14:	ebfffbca 	bl	e00db44 <prvInitialiseNewTask.constprop.0>
 e00ec18:	e1a00006 	mov	r0, r6
 e00ec1c:	ebffff4f 	bl	e00e960 <prvAddNewTaskToReadyList>
 e00ec20:	e59d0010 	ldr	r0, [sp, #16]
 e00ec24:	e28dd01c 	add	sp, sp, #28
 e00ec28:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00ec2c:	e3001376 	movw	r1, #886	; 0x376
 e00ec30:	e3050878 	movw	r0, #22648	; 0x5878
 e00ec34:	e3400e01 	movt	r0, #3585	; 0xe01
 e00ec38:	ebffebe8 	bl	e009be0 <vAssertCalled>
 e00ec3c:	e3a03f5e 	mov	r3, #376	; 0x178
 e00ec40:	e58d3014 	str	r3, [sp, #20]
 e00ec44:	e59d3014 	ldr	r3, [sp, #20]
 e00ec48:	e3530f5e 	cmp	r3, #376	; 0x178
 e00ec4c:	059d3014 	ldreq	r3, [sp, #20]
 e00ec50:	0affffe0 	beq	e00ebd8 <xTaskCreateStatic+0x60>
 e00ec54:	e300137e 	movw	r1, #894	; 0x37e
 e00ec58:	e3050878 	movw	r0, #22648	; 0x5878
 e00ec5c:	e3400e01 	movt	r0, #3585	; 0xe01
 e00ec60:	ebffebde 	bl	e009be0 <vAssertCalled>
 e00ec64:	eaffffd8 	b	e00ebcc <xTaskCreateStatic+0x54>
 e00ec68:	e3050878 	movw	r0, #22648	; 0x5878
 e00ec6c:	e3400e01 	movt	r0, #3585	; 0xe01
 e00ec70:	e3001375 	movw	r1, #885	; 0x375
 e00ec74:	ebffebd9 	bl	e009be0 <vAssertCalled>
 e00ec78:	eaffffca 	b	e00eba8 <xTaskCreateStatic+0x30>

0e00ec7c <vTaskStartScheduler>:
 e00ec7c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e00ec80:	e304603c 	movw	r6, #16444	; 0x403c
 e00ec84:	e346600a 	movt	r6, #24586	; 0x600a
 e00ec88:	e24dd03c 	sub	sp, sp, #60	; 0x3c
 e00ec8c:	e30f7f24 	movw	r7, #65316	; 0xff24
 e00ec90:	e3407e00 	movt	r7, #3584	; 0xe00
 e00ec94:	e3035f00 	movw	r5, #16128	; 0x3f00
 e00ec98:	e346500a 	movt	r5, #24586	; 0x600a
 e00ec9c:	eb0009a6 	bl	e01133c <xTimerCreateTimerTask>
 e00eca0:	e3a04000 	mov	r4, #0
 e00eca4:	e1a0a000 	mov	sl, r0
 e00eca8:	e3a08049 	mov	r8, #73	; 0x49
 e00ecac:	e35a0000 	cmp	sl, #0
 e00ecb0:	0a000032 	beq	e00ed80 <vTaskStartScheduler+0x104>
 e00ecb4:	e3051908 	movw	r1, #22792	; 0x5908
 e00ecb8:	e3401e01 	movt	r1, #3585	; 0xe01
 e00ecbc:	e28d0021 	add	r0, sp, #33	; 0x21
 e00ecc0:	e3a02000 	mov	r2, #0
 e00ecc4:	e5cd8020 	strb	r8, [sp, #32]
 e00ecc8:	e5f13001 	ldrb	r3, [r1, #1]!
 e00eccc:	e1a0c002 	mov	ip, r2
 e00ecd0:	e3530000 	cmp	r3, #0
 e00ecd4:	e2822001 	add	r2, r2, #1
 e00ecd8:	e4c03001 	strb	r3, [r0], #1
 e00ecdc:	1afffff9 	bne	e00ecc8 <vTaskStartScheduler+0x4c>
 e00ece0:	e28c1038 	add	r1, ip, #56	; 0x38
 e00ece4:	e2822038 	add	r2, r2, #56	; 0x38
 e00ece8:	e08d2002 	add	r2, sp, r2
 e00ecec:	e08dc001 	add	ip, sp, r1
 e00ecf0:	e3540000 	cmp	r4, #0
 e00ecf4:	e2841030 	add	r1, r4, #48	; 0x30
 e00ecf8:	e28d0014 	add	r0, sp, #20
 e00ecfc:	e5421018 	strb	r1, [r2, #-24]	; 0xffffffe8
 e00ed00:	e58d3014 	str	r3, [sp, #20]
 e00ed04:	e28d201c 	add	r2, sp, #28
 e00ed08:	e28d1018 	add	r1, sp, #24
 e00ed0c:	e54c3016 	strb	r3, [ip, #-22]	; 0xffffffea
 e00ed10:	e58d3018 	str	r3, [sp, #24]
 e00ed14:	0a00001d 	beq	e00ed90 <vTaskStartScheduler+0x114>
 e00ed18:	eb000d26 	bl	e0121b8 <vApplicationGetPassiveIdleTaskMemory>
 e00ed1c:	e59d1014 	ldr	r1, [sp, #20]
 e00ed20:	e59d2018 	ldr	r2, [sp, #24]
 e00ed24:	e3a0b000 	mov	fp, #0
 e00ed28:	e1a0300b 	mov	r3, fp
 e00ed2c:	e58d1008 	str	r1, [sp, #8]
 e00ed30:	e58d2004 	str	r2, [sp, #4]
 e00ed34:	e28d1020 	add	r1, sp, #32
 e00ed38:	e59d201c 	ldr	r2, [sp, #28]
 e00ed3c:	e1a00007 	mov	r0, r7
 e00ed40:	e58db000 	str	fp, [sp]
 e00ed44:	ebffff8b 	bl	e00eb78 <xTaskCreateStatic>
 e00ed48:	e7850104 	str	r0, [r5, r4, lsl #2]
 e00ed4c:	e1a09000 	mov	r9, r0
 e00ed50:	e4860004 	str	r0, [r6], #4
 e00ed54:	e7950104 	ldr	r0, [r5, r4, lsl #2]
 e00ed58:	e059a00b 	subs	sl, r9, fp
 e00ed5c:	e2800004 	add	r0, r0, #4
 e00ed60:	13a0a001 	movne	sl, #1
 e00ed64:	eb00053c 	bl	e01025c <uxListRemove>
 e00ed68:	e7953104 	ldr	r3, [r5, r4, lsl #2]
 e00ed6c:	e3540001 	cmp	r4, #1
 e00ed70:	e5834034 	str	r4, [r3, #52]	; 0x34
 e00ed74:	1a000003 	bne	e00ed88 <vTaskStartScheduler+0x10c>
 e00ed78:	e159000b 	cmp	r9, fp
 e00ed7c:	1a000005 	bne	e00ed98 <vTaskStartScheduler+0x11c>
 e00ed80:	e28dd03c 	add	sp, sp, #60	; 0x3c
 e00ed84:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00ed88:	e3a04001 	mov	r4, #1
 e00ed8c:	eaffffc6 	b	e00ecac <vTaskStartScheduler+0x30>
 e00ed90:	eb000cff 	bl	e012194 <vApplicationGetIdleTaskMemory>
 e00ed94:	eaffffe0 	b	e00ed1c <vTaskStartScheduler+0xa0>
 e00ed98:	eb000cc4 	bl	e0120b0 <ulPortInterruptLock>
 e00ed9c:	eb000cc3 	bl	e0120b0 <ulPortInterruptLock>
 e00eda0:	e1a06000 	mov	r6, r0
 e00eda4:	eb000cdc 	bl	e01211c <ulPortGetCoreId>
 e00eda8:	e1a03000 	mov	r3, r0
 e00edac:	e1a00006 	mov	r0, r6
 e00edb0:	e7955103 	ldr	r5, [r5, r3, lsl #2]
 e00edb4:	eb000cc2 	bl	e0120c4 <ulPortInterruptUnLock>
 e00edb8:	e3053000 	movw	r3, #20480	; 0x5000
 e00edbc:	e3463009 	movt	r3, #24585	; 0x6009
 e00edc0:	e285507c 	add	r5, r5, #124	; 0x7c
 e00edc4:	e3041044 	movw	r1, #16452	; 0x4044
 e00edc8:	e346100a 	movt	r1, #24586	; 0x600a
 e00edcc:	e5835000 	str	r5, [r3]
 e00edd0:	e3042064 	movw	r2, #16484	; 0x4064
 e00edd4:	e346200a 	movt	r2, #24586	; 0x600a
 e00edd8:	e30430a4 	movw	r3, #16548	; 0x40a4
 e00eddc:	e346300a 	movt	r3, #24586	; 0x600a
 e00ede0:	e3e00000 	mvn	r0, #0
 e00ede4:	e5810000 	str	r0, [r1]
 e00ede8:	e5824000 	str	r4, [r2]
 e00edec:	e583b000 	str	fp, [r3]
 e00edf0:	eb000c75 	bl	e011fcc <xPortStartScheduler>
 e00edf4:	e28dd03c 	add	sp, sp, #60	; 0x3c
 e00edf8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

0e00edfc <xTaskCreate>:
 e00edfc:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 e00ee00:	e1a07000 	mov	r7, r0
 e00ee04:	e24dd014 	sub	sp, sp, #20
 e00ee08:	e1a00102 	lsl	r0, r2, #2
 e00ee0c:	e1a05002 	mov	r5, r2
 e00ee10:	e1a08001 	mov	r8, r1
 e00ee14:	e1a09003 	mov	r9, r3
 e00ee18:	eb000b8c 	bl	e011c50 <pvPortMalloc>
 e00ee1c:	e2504000 	subs	r4, r0, #0
 e00ee20:	03e00000 	mvneq	r0, #0
 e00ee24:	0a000013 	beq	e00ee78 <xTaskCreate+0x7c>
 e00ee28:	e3a00f5e 	mov	r0, #376	; 0x178
 e00ee2c:	eb000b87 	bl	e011c50 <pvPortMalloc>
 e00ee30:	e2506000 	subs	r6, r0, #0
 e00ee34:	0a000011 	beq	e00ee80 <xTaskCreate+0x84>
 e00ee38:	e3a0c000 	mov	ip, #0
 e00ee3c:	e5c6c171 	strb	ip, [r6, #369]	; 0x171
 e00ee40:	e59dc034 	ldr	ip, [sp, #52]	; 0x34
 e00ee44:	e5864030 	str	r4, [r6, #48]	; 0x30
 e00ee48:	e58dc004 	str	ip, [sp, #4]
 e00ee4c:	e59dc030 	ldr	ip, [sp, #48]	; 0x30
 e00ee50:	e1a03009 	mov	r3, r9
 e00ee54:	e1a02005 	mov	r2, r5
 e00ee58:	e1a01008 	mov	r1, r8
 e00ee5c:	e1a00007 	mov	r0, r7
 e00ee60:	e58dc000 	str	ip, [sp]
 e00ee64:	e58d6008 	str	r6, [sp, #8]
 e00ee68:	ebfffb35 	bl	e00db44 <prvInitialiseNewTask.constprop.0>
 e00ee6c:	e1a00006 	mov	r0, r6
 e00ee70:	ebfffeba 	bl	e00e960 <prvAddNewTaskToReadyList>
 e00ee74:	e3a00001 	mov	r0, #1
 e00ee78:	e28dd014 	add	sp, sp, #20
 e00ee7c:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
 e00ee80:	e1a00004 	mov	r0, r4
 e00ee84:	eb000ab6 	bl	e011964 <vPortFree>
 e00ee88:	e3e00000 	mvn	r0, #0
 e00ee8c:	eafffff9 	b	e00ee78 <xTaskCreate+0x7c>

0e00ee90 <vTaskDelete>:
 e00ee90:	e92d4070 	push	{r4, r5, r6, lr}
 e00ee94:	e1a04000 	mov	r4, r0
 e00ee98:	ebfffe5b 	bl	e00e80c <vTaskEnterCritical>
 e00ee9c:	e3540000 	cmp	r4, #0
 e00eea0:	0a00005b 	beq	e00f014 <vTaskDelete+0x184>
 e00eea4:	e5943014 	ldr	r3, [r4, #20]
 e00eea8:	e5945034 	ldr	r5, [r4, #52]	; 0x34
 e00eeac:	e3530000 	cmp	r3, #0
 e00eeb0:	0a000013 	beq	e00ef04 <vTaskDelete+0x74>
 e00eeb4:	e2840004 	add	r0, r4, #4
 e00eeb8:	eb0004e7 	bl	e01025c <uxListRemove>
 e00eebc:	e3500000 	cmp	r0, #0
 e00eec0:	1a00000f 	bne	e00ef04 <vTaskDelete+0x74>
 e00eec4:	e304c010 	movw	ip, #16400	; 0x4010
 e00eec8:	e346c00a 	movt	ip, #24586	; 0x600a
 e00eecc:	e59c3000 	ldr	r3, [ip]
 e00eed0:	e3530000 	cmp	r3, #0
 e00eed4:	0a000009 	beq	e00ef00 <vTaskDelete+0x70>
 e00eed8:	e3031f14 	movw	r1, #16148	; 0x3f14
 e00eedc:	e346100a 	movt	r1, #24586	; 0x600a
 e00eee0:	e3a00014 	mov	r0, #20
 e00eee4:	ea000001 	b	e00eef0 <vTaskDelete+0x60>
 e00eee8:	e2533001 	subs	r3, r3, #1
 e00eeec:	0a000003 	beq	e00ef00 <vTaskDelete+0x70>
 e00eef0:	e0020390 	mul	r2, r0, r3
 e00eef4:	e7912002 	ldr	r2, [r1, r2]
 e00eef8:	e3520000 	cmp	r2, #0
 e00eefc:	0afffff9 	beq	e00eee8 <vTaskDelete+0x58>
 e00ef00:	e58c3000 	str	r3, [ip]
 e00ef04:	e5943028 	ldr	r3, [r4, #40]	; 0x28
 e00ef08:	e3530000 	cmp	r3, #0
 e00ef0c:	0a000001 	beq	e00ef18 <vTaskDelete+0x88>
 e00ef10:	e2840018 	add	r0, r4, #24
 e00ef14:	eb0004d0 	bl	e01025c <uxListRemove>
 e00ef18:	e304300c 	movw	r3, #16396	; 0x400c
 e00ef1c:	e346300a 	movt	r3, #24586	; 0x600a
 e00ef20:	e3750001 	cmn	r5, #1
 e00ef24:	e5932000 	ldr	r2, [r3]
 e00ef28:	e2822001 	add	r2, r2, #1
 e00ef2c:	e5832000 	str	r2, [r3]
 e00ef30:	0a000011 	beq	e00ef7c <vTaskDelete+0xec>
 e00ef34:	e2841004 	add	r1, r4, #4
 e00ef38:	e3040090 	movw	r0, #16528	; 0x4090
 e00ef3c:	e346000a 	movt	r0, #24586	; 0x600a
 e00ef40:	eb0004a4 	bl	e0101d8 <vListInsertEnd>
 e00ef44:	e3043004 	movw	r3, #16388	; 0x4004
 e00ef48:	e346300a 	movt	r3, #24586	; 0x600a
 e00ef4c:	e3042064 	movw	r2, #16484	; 0x4064
 e00ef50:	e346200a 	movt	r2, #24586	; 0x600a
 e00ef54:	e5931000 	ldr	r1, [r3]
 e00ef58:	e2811001 	add	r1, r1, #1
 e00ef5c:	e5831000 	str	r1, [r3]
 e00ef60:	e5923000 	ldr	r3, [r2]
 e00ef64:	e3530000 	cmp	r3, #0
 e00ef68:	0a000001 	beq	e00ef74 <vTaskDelete+0xe4>
 e00ef6c:	e3550001 	cmp	r5, #1
 e00ef70:	9a00001c 	bls	e00efe8 <vTaskDelete+0x158>
 e00ef74:	e8bd4070 	pop	{r4, r5, r6, lr}
 e00ef78:	eafffe3e 	b	e00e878 <vTaskExitCritical>
 e00ef7c:	e3043000 	movw	r3, #16384	; 0x4000
 e00ef80:	e346300a 	movt	r3, #24586	; 0x600a
 e00ef84:	e1a00004 	mov	r0, r4
 e00ef88:	e5932000 	ldr	r2, [r3]
 e00ef8c:	e2422001 	sub	r2, r2, #1
 e00ef90:	e5832000 	str	r2, [r3]
 e00ef94:	ebfffab9 	bl	e00da80 <prvDeleteTCB>
 e00ef98:	e3033f08 	movw	r3, #16136	; 0x3f08
 e00ef9c:	e346300a 	movt	r3, #24586	; 0x600a
 e00efa0:	e5932000 	ldr	r2, [r3]
 e00efa4:	e5922000 	ldr	r2, [r2]
 e00efa8:	e3520000 	cmp	r2, #0
 e00efac:	03043044 	movweq	r3, #16452	; 0x4044
 e00efb0:	15932000 	ldrne	r2, [r3]
 e00efb4:	0346300a 	movteq	r3, #24586	; 0x600a
 e00efb8:	13043044 	movwne	r3, #16452	; 0x4044
 e00efbc:	1592200c 	ldrne	r2, [r2, #12]
 e00efc0:	1346300a 	movtne	r3, #24586	; 0x600a
 e00efc4:	05835000 	streq	r5, [r3]
 e00efc8:	1592200c 	ldrne	r2, [r2, #12]
 e00efcc:	15922004 	ldrne	r2, [r2, #4]
 e00efd0:	15832000 	strne	r2, [r3]
 e00efd4:	e3043064 	movw	r3, #16484	; 0x4064
 e00efd8:	e346300a 	movt	r3, #24586	; 0x600a
 e00efdc:	e8bd4070 	pop	{r4, r5, r6, lr}
 e00efe0:	e5933000 	ldr	r3, [r3]
 e00efe4:	eafffe23 	b	e00e878 <vTaskExitCritical>
 e00efe8:	e3e03002 	mvn	r3, #2
 e00efec:	e5843034 	str	r3, [r4, #52]	; 0x34
 e00eff0:	eb000c49 	bl	e01211c <ulPortGetCoreId>
 e00eff4:	e3033f00 	movw	r3, #16128	; 0x3f00
 e00eff8:	e346300a 	movt	r3, #24586	; 0x600a
 e00effc:	e7933100 	ldr	r3, [r3, r0, lsl #2]
 e00f000:	e1530004 	cmp	r3, r4
 e00f004:	0a00000c 	beq	e00f03c <vTaskDelete+0x1ac>
 e00f008:	e1a00005 	mov	r0, r5
 e00f00c:	ebfffab4 	bl	e00dae4 <prvYieldCore>
 e00f010:	eaffffd7 	b	e00ef74 <vTaskDelete+0xe4>
 e00f014:	eb000c25 	bl	e0120b0 <ulPortInterruptLock>
 e00f018:	e1a04000 	mov	r4, r0
 e00f01c:	eb000c3e 	bl	e01211c <ulPortGetCoreId>
 e00f020:	e3033f00 	movw	r3, #16128	; 0x3f00
 e00f024:	e346300a 	movt	r3, #24586	; 0x600a
 e00f028:	e1a02000 	mov	r2, r0
 e00f02c:	e1a00004 	mov	r0, r4
 e00f030:	e7934102 	ldr	r4, [r3, r2, lsl #2]
 e00f034:	eb000c22 	bl	e0120c4 <ulPortInterruptUnLock>
 e00f038:	eaffff99 	b	e00eea4 <vTaskDelete+0x14>
 e00f03c:	ebfffe0d 	bl	e00e878 <vTaskExitCritical>
 e00f040:	ef000000 	svc	0x00000000
 e00f044:	eaffffca 	b	e00ef74 <vTaskDelete+0xe4>

0e00f048 <prvAddCurrentTaskToDelayedList>:
 e00f048:	e30430a4 	movw	r3, #16548	; 0x40a4
 e00f04c:	e346300a 	movt	r3, #24586	; 0x600a
 e00f050:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e00f054:	e1a06001 	mov	r6, r1
 e00f058:	e5938000 	ldr	r8, [r3]
 e00f05c:	e1a05000 	mov	r5, r0
 e00f060:	eb000c12 	bl	e0120b0 <ulPortInterruptLock>
 e00f064:	e1a04000 	mov	r4, r0
 e00f068:	eb000c2b 	bl	e01211c <ulPortGetCoreId>
 e00f06c:	e1a03000 	mov	r3, r0
 e00f070:	e1a00004 	mov	r0, r4
 e00f074:	e3034f00 	movw	r4, #16128	; 0x3f00
 e00f078:	e346400a 	movt	r4, #24586	; 0x600a
 e00f07c:	e7947103 	ldr	r7, [r4, r3, lsl #2]
 e00f080:	eb000c0f 	bl	e0120c4 <ulPortInterruptUnLock>
 e00f084:	e3a03000 	mov	r3, #0
 e00f088:	e5c73172 	strb	r3, [r7, #370]	; 0x172
 e00f08c:	ebfffdde 	bl	e00e80c <vTaskEnterCritical>
 e00f090:	eb000c06 	bl	e0120b0 <ulPortInterruptLock>
 e00f094:	e1a07000 	mov	r7, r0
 e00f098:	eb000c1f 	bl	e01211c <ulPortGetCoreId>
 e00f09c:	e1a03000 	mov	r3, r0
 e00f0a0:	e1a00007 	mov	r0, r7
 e00f0a4:	e7947103 	ldr	r7, [r4, r3, lsl #2]
 e00f0a8:	eb000c05 	bl	e0120c4 <ulPortInterruptUnLock>
 e00f0ac:	e5973034 	ldr	r3, [r7, #52]	; 0x34
 e00f0b0:	e3730003 	cmn	r3, #3
 e00f0b4:	0a000049 	beq	e00f1e0 <prvAddCurrentTaskToDelayedList+0x198>
 e00f0b8:	e2566000 	subs	r6, r6, #0
 e00f0bc:	13a06001 	movne	r6, #1
 e00f0c0:	e3750001 	cmn	r5, #1
 e00f0c4:	13a06000 	movne	r6, #0
 e00f0c8:	e3560000 	cmp	r6, #0
 e00f0cc:	1a000024 	bne	e00f164 <prvAddCurrentTaskToDelayedList+0x11c>
 e00f0d0:	e0985005 	adds	r5, r8, r5
 e00f0d4:	23a07001 	movcs	r7, #1
 e00f0d8:	33a07000 	movcc	r7, #0
 e00f0dc:	eb000bf3 	bl	e0120b0 <ulPortInterruptLock>
 e00f0e0:	e1a06000 	mov	r6, r0
 e00f0e4:	eb000c0c 	bl	e01211c <ulPortGetCoreId>
 e00f0e8:	e1a03000 	mov	r3, r0
 e00f0ec:	e1a00006 	mov	r0, r6
 e00f0f0:	e7946103 	ldr	r6, [r4, r3, lsl #2]
 e00f0f4:	eb000bf2 	bl	e0120c4 <ulPortInterruptUnLock>
 e00f0f8:	e3570000 	cmp	r7, #0
 e00f0fc:	e5865004 	str	r5, [r6, #4]
 e00f100:	0a000023 	beq	e00f194 <prvAddCurrentTaskToDelayedList+0x14c>
 e00f104:	e3033f0c 	movw	r3, #16140	; 0x3f0c
 e00f108:	e346300a 	movt	r3, #24586	; 0x600a
 e00f10c:	e5936000 	ldr	r6, [r3]
 e00f110:	eb000be6 	bl	e0120b0 <ulPortInterruptLock>
 e00f114:	e1a05000 	mov	r5, r0
 e00f118:	eb000bff 	bl	e01211c <ulPortGetCoreId>
 e00f11c:	e1a03000 	mov	r3, r0
 e00f120:	e1a00005 	mov	r0, r5
 e00f124:	e7945103 	ldr	r5, [r4, r3, lsl #2]
 e00f128:	eb000be5 	bl	e0120c4 <ulPortInterruptUnLock>
 e00f12c:	e2851004 	add	r1, r5, #4
 e00f130:	e1a00006 	mov	r0, r6
 e00f134:	eb000432 	bl	e010204 <vListInsert>
 e00f138:	eb000bdc 	bl	e0120b0 <ulPortInterruptLock>
 e00f13c:	e1a05000 	mov	r5, r0
 e00f140:	eb000bf5 	bl	e01211c <ulPortGetCoreId>
 e00f144:	e1a03000 	mov	r3, r0
 e00f148:	e1a00005 	mov	r0, r5
 e00f14c:	e7944103 	ldr	r4, [r4, r3, lsl #2]
 e00f150:	eb000bdb 	bl	e0120c4 <ulPortInterruptUnLock>
 e00f154:	e3e03001 	mvn	r3, #1
 e00f158:	e5843034 	str	r3, [r4, #52]	; 0x34
 e00f15c:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 e00f160:	eafffdc4 	b	e00e878 <vTaskExitCritical>
 e00f164:	eb000bd1 	bl	e0120b0 <ulPortInterruptLock>
 e00f168:	e1a05000 	mov	r5, r0
 e00f16c:	eb000bea 	bl	e01211c <ulPortGetCoreId>
 e00f170:	e1a03000 	mov	r3, r0
 e00f174:	e1a00005 	mov	r0, r5
 e00f178:	e7945103 	ldr	r5, [r4, r3, lsl #2]
 e00f17c:	eb000bd0 	bl	e0120c4 <ulPortInterruptUnLock>
 e00f180:	e2851004 	add	r1, r5, #4
 e00f184:	e3040068 	movw	r0, #16488	; 0x4068
 e00f188:	e346000a 	movt	r0, #24586	; 0x600a
 e00f18c:	eb000411 	bl	e0101d8 <vListInsertEnd>
 e00f190:	eaffffe8 	b	e00f138 <prvAddCurrentTaskToDelayedList+0xf0>
 e00f194:	e3033f08 	movw	r3, #16136	; 0x3f08
 e00f198:	e346300a 	movt	r3, #24586	; 0x600a
 e00f19c:	e5937000 	ldr	r7, [r3]
 e00f1a0:	eb000bc2 	bl	e0120b0 <ulPortInterruptLock>
 e00f1a4:	e1a06000 	mov	r6, r0
 e00f1a8:	eb000bdb 	bl	e01211c <ulPortGetCoreId>
 e00f1ac:	e1a03000 	mov	r3, r0
 e00f1b0:	e1a00006 	mov	r0, r6
 e00f1b4:	e7946103 	ldr	r6, [r4, r3, lsl #2]
 e00f1b8:	eb000bc1 	bl	e0120c4 <ulPortInterruptUnLock>
 e00f1bc:	e2861004 	add	r1, r6, #4
 e00f1c0:	e1a00007 	mov	r0, r7
 e00f1c4:	eb00040e 	bl	e010204 <vListInsert>
 e00f1c8:	e3043044 	movw	r3, #16452	; 0x4044
 e00f1cc:	e346300a 	movt	r3, #24586	; 0x600a
 e00f1d0:	e5932000 	ldr	r2, [r3]
 e00f1d4:	e1520005 	cmp	r2, r5
 e00f1d8:	85835000 	strhi	r5, [r3]
 e00f1dc:	eaffffd5 	b	e00f138 <prvAddCurrentTaskToDelayedList+0xf0>
 e00f1e0:	eb000bb2 	bl	e0120b0 <ulPortInterruptLock>
 e00f1e4:	e1a05000 	mov	r5, r0
 e00f1e8:	eb000bcb 	bl	e01211c <ulPortGetCoreId>
 e00f1ec:	e1a03000 	mov	r3, r0
 e00f1f0:	e1a00005 	mov	r0, r5
 e00f1f4:	e7945103 	ldr	r5, [r4, r3, lsl #2]
 e00f1f8:	eb000bb1 	bl	e0120c4 <ulPortInterruptUnLock>
 e00f1fc:	e5953028 	ldr	r3, [r5, #40]	; 0x28
 e00f200:	e3530000 	cmp	r3, #0
 e00f204:	0affffd4 	beq	e00f15c <prvAddCurrentTaskToDelayedList+0x114>
 e00f208:	eb000ba8 	bl	e0120b0 <ulPortInterruptLock>
 e00f20c:	e1a05000 	mov	r5, r0
 e00f210:	eb000bc1 	bl	e01211c <ulPortGetCoreId>
 e00f214:	e1a03000 	mov	r3, r0
 e00f218:	e1a00005 	mov	r0, r5
 e00f21c:	e7944103 	ldr	r4, [r4, r3, lsl #2]
 e00f220:	eb000ba7 	bl	e0120c4 <ulPortInterruptUnLock>
 e00f224:	e2840018 	add	r0, r4, #24
 e00f228:	eb00040b 	bl	e01025c <uxListRemove>
 e00f22c:	eaffffca 	b	e00f15c <prvAddCurrentTaskToDelayedList+0x114>

0e00f230 <xTaskIncrementTick>:
 e00f230:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e00f234:	e24dd014 	sub	sp, sp, #20
 e00f238:	eb000bb7 	bl	e01211c <ulPortGetCoreId>
 e00f23c:	e58d0000 	str	r0, [sp]
 e00f240:	ebfffd71 	bl	e00e80c <vTaskEnterCritical>
 e00f244:	e3043008 	movw	r3, #16392	; 0x4008
 e00f248:	e346300a 	movt	r3, #24586	; 0x600a
 e00f24c:	e5933000 	ldr	r3, [r3]
 e00f250:	e3530000 	cmp	r3, #0
 e00f254:	1a000038 	bne	e00f33c <xTaskIncrementTick+0x10c>
 e00f258:	e30430a4 	movw	r3, #16548	; 0x40a4
 e00f25c:	e346300a 	movt	r3, #24586	; 0x600a
 e00f260:	e5937000 	ldr	r7, [r3]
 e00f264:	e2877001 	add	r7, r7, #1
 e00f268:	e3570000 	cmp	r7, #0
 e00f26c:	e5837000 	str	r7, [r3]
 e00f270:	0a00003b 	beq	e00f364 <xTaskIncrementTick+0x134>
 e00f274:	e3043044 	movw	r3, #16452	; 0x4044
 e00f278:	e346300a 	movt	r3, #24586	; 0x600a
 e00f27c:	e58d3008 	str	r3, [sp, #8]
 e00f280:	e59d3008 	ldr	r3, [sp, #8]
 e00f284:	e5933000 	ldr	r3, [r3]
 e00f288:	e1530007 	cmp	r3, r7
 e00f28c:	9a000053 	bls	e00f3e0 <xTaskIncrementTick+0x1b0>
 e00f290:	e3035f00 	movw	r5, #16128	; 0x3f00
 e00f294:	e346500a 	movt	r5, #24586	; 0x600a
 e00f298:	e3039f14 	movw	r9, #16148	; 0x3f14
 e00f29c:	e346900a 	movt	r9, #24586	; 0x600a
 e00f2a0:	e30460a8 	movw	r6, #16552	; 0x40a8
 e00f2a4:	e346600a 	movt	r6, #24586	; 0x600a
 e00f2a8:	e5953000 	ldr	r3, [r5]
 e00f2ac:	e3a02014 	mov	r2, #20
 e00f2b0:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
 e00f2b4:	e0030392 	mul	r3, r2, r3
 e00f2b8:	e3a02014 	mov	r2, #20
 e00f2bc:	e7993003 	ldr	r3, [r9, r3]
 e00f2c0:	e3530000 	cmp	r3, #0
 e00f2c4:	13a03001 	movne	r3, #1
 e00f2c8:	15863000 	strne	r3, [r6]
 e00f2cc:	e5953004 	ldr	r3, [r5, #4]
 e00f2d0:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
 e00f2d4:	e0030392 	mul	r3, r2, r3
 e00f2d8:	e7993003 	ldr	r3, [r9, r3]
 e00f2dc:	e3530000 	cmp	r3, #0
 e00f2e0:	13a03001 	movne	r3, #1
 e00f2e4:	15863004 	strne	r3, [r6, #4]
 e00f2e8:	e5963000 	ldr	r3, [r6]
 e00f2ec:	e3530000 	cmp	r3, #0
 e00f2f0:	0a000004 	beq	e00f308 <xTaskIncrementTick+0xd8>
 e00f2f4:	e59d3000 	ldr	r3, [sp]
 e00f2f8:	e3530000 	cmp	r3, #0
 e00f2fc:	0a00008f 	beq	e00f540 <xTaskIncrementTick+0x310>
 e00f300:	e3a00000 	mov	r0, #0
 e00f304:	ebfff9f6 	bl	e00dae4 <prvYieldCore>
 e00f308:	e5964004 	ldr	r4, [r6, #4]
 e00f30c:	e3540000 	cmp	r4, #0
 e00f310:	0a00000f 	beq	e00f354 <xTaskIncrementTick+0x124>
 e00f314:	e59d3000 	ldr	r3, [sp]
 e00f318:	e3530001 	cmp	r3, #1
 e00f31c:	13a04000 	movne	r4, #0
 e00f320:	0a000089 	beq	e00f54c <xTaskIncrementTick+0x31c>
 e00f324:	e3a00001 	mov	r0, #1
 e00f328:	ebfff9ed 	bl	e00dae4 <prvYieldCore>
 e00f32c:	ebfffd51 	bl	e00e878 <vTaskExitCritical>
 e00f330:	e1a00004 	mov	r0, r4
 e00f334:	e28dd014 	add	sp, sp, #20
 e00f338:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00f33c:	e304304c 	movw	r3, #16460	; 0x404c
 e00f340:	e346300a 	movt	r3, #24586	; 0x600a
 e00f344:	e3a04000 	mov	r4, #0
 e00f348:	e5932000 	ldr	r2, [r3]
 e00f34c:	e2822001 	add	r2, r2, #1
 e00f350:	e5832000 	str	r2, [r3]
 e00f354:	ebfffd47 	bl	e00e878 <vTaskExitCritical>
 e00f358:	e1a00004 	mov	r0, r4
 e00f35c:	e28dd014 	add	sp, sp, #20
 e00f360:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00f364:	e3034f08 	movw	r4, #16136	; 0x3f08
 e00f368:	e346400a 	movt	r4, #24586	; 0x600a
 e00f36c:	e5943000 	ldr	r3, [r4]
 e00f370:	e5933000 	ldr	r3, [r3]
 e00f374:	e3530000 	cmp	r3, #0
 e00f378:	1a00007e 	bne	e00f578 <xTaskIncrementTick+0x348>
 e00f37c:	e3032f0c 	movw	r2, #16140	; 0x3f0c
 e00f380:	e346200a 	movt	r2, #24586	; 0x600a
 e00f384:	e5941000 	ldr	r1, [r4]
 e00f388:	e3043048 	movw	r3, #16456	; 0x4048
 e00f38c:	e346300a 	movt	r3, #24586	; 0x600a
 e00f390:	e5920000 	ldr	r0, [r2]
 e00f394:	e5840000 	str	r0, [r4]
 e00f398:	e5821000 	str	r1, [r2]
 e00f39c:	e5932000 	ldr	r2, [r3]
 e00f3a0:	e2822001 	add	r2, r2, #1
 e00f3a4:	e5832000 	str	r2, [r3]
 e00f3a8:	e5943000 	ldr	r3, [r4]
 e00f3ac:	e5933000 	ldr	r3, [r3]
 e00f3b0:	e3530000 	cmp	r3, #0
 e00f3b4:	1a000058 	bne	e00f51c <xTaskIncrementTick+0x2ec>
 e00f3b8:	e3043044 	movw	r3, #16452	; 0x4044
 e00f3bc:	e346300a 	movt	r3, #24586	; 0x600a
 e00f3c0:	e1a02003 	mov	r2, r3
 e00f3c4:	e58d3008 	str	r3, [sp, #8]
 e00f3c8:	e3e03000 	mvn	r3, #0
 e00f3cc:	e5823000 	str	r3, [r2]
 e00f3d0:	e59d3008 	ldr	r3, [sp, #8]
 e00f3d4:	e5933000 	ldr	r3, [r3]
 e00f3d8:	e1530007 	cmp	r3, r7
 e00f3dc:	8affffab 	bhi	e00f290 <xTaskIncrementTick+0x60>
 e00f3e0:	e3034f08 	movw	r4, #16136	; 0x3f08
 e00f3e4:	e346400a 	movt	r4, #24586	; 0x600a
 e00f3e8:	e3035f00 	movw	r5, #16128	; 0x3f00
 e00f3ec:	e346500a 	movt	r5, #24586	; 0x600a
 e00f3f0:	e3039f14 	movw	r9, #16148	; 0x3f14
 e00f3f4:	e346900a 	movt	r9, #24586	; 0x600a
 e00f3f8:	e30460a8 	movw	r6, #16552	; 0x40a8
 e00f3fc:	e346600a 	movt	r6, #24586	; 0x600a
 e00f400:	e304a010 	movw	sl, #16400	; 0x4010
 e00f404:	e346a00a 	movt	sl, #24586	; 0x600a
 e00f408:	e3033f10 	movw	r3, #16144	; 0x3f10
 e00f40c:	e346300a 	movt	r3, #24586	; 0x600a
 e00f410:	e58d9004 	str	r9, [sp, #4]
 e00f414:	e58d300c 	str	r3, [sp, #12]
 e00f418:	ea000005 	b	e00f434 <xTaskIncrementTick+0x204>
 e00f41c:	e59d2000 	ldr	r2, [sp]
 e00f420:	e7962102 	ldr	r2, [r6, r2, lsl #2]
 e00f424:	e3520000 	cmp	r2, #0
 e00f428:	1a000024 	bne	e00f4c0 <xTaskIncrementTick+0x290>
 e00f42c:	e3a03001 	mov	r3, #1
 e00f430:	e7863102 	str	r3, [r6, r2, lsl #2]
 e00f434:	e5943000 	ldr	r3, [r4]
 e00f438:	e5933000 	ldr	r3, [r3]
 e00f43c:	e3530000 	cmp	r3, #0
 e00f440:	0a00002b 	beq	e00f4f4 <xTaskIncrementTick+0x2c4>
 e00f444:	e3a08014 	mov	r8, #20
 e00f448:	e5943000 	ldr	r3, [r4]
 e00f44c:	e593300c 	ldr	r3, [r3, #12]
 e00f450:	e593900c 	ldr	r9, [r3, #12]
 e00f454:	e5992004 	ldr	r2, [r9, #4]
 e00f458:	e1570002 	cmp	r7, r2
 e00f45c:	3a00003f 	bcc	e00f560 <xTaskIncrementTick+0x330>
 e00f460:	e289b004 	add	fp, r9, #4
 e00f464:	e1a0000b 	mov	r0, fp
 e00f468:	eb00037b 	bl	e01025c <uxListRemove>
 e00f46c:	e5993028 	ldr	r3, [r9, #40]	; 0x28
 e00f470:	e3530000 	cmp	r3, #0
 e00f474:	0a000001 	beq	e00f480 <xTaskIncrementTick+0x250>
 e00f478:	e2890018 	add	r0, r9, #24
 e00f47c:	eb000376 	bl	e01025c <uxListRemove>
 e00f480:	e5993034 	ldr	r3, [r9, #52]	; 0x34
 e00f484:	e3730002 	cmn	r3, #2
 e00f488:	0a00001e 	beq	e00f508 <xTaskIncrementTick+0x2d8>
 e00f48c:	e599002c 	ldr	r0, [r9, #44]	; 0x2c
 e00f490:	e59a3000 	ldr	r3, [sl]
 e00f494:	e1a0100b 	mov	r1, fp
 e00f498:	e1500003 	cmp	r0, r3
 e00f49c:	e59d3004 	ldr	r3, [sp, #4]
 e00f4a0:	858a0000 	strhi	r0, [sl]
 e00f4a4:	e0203098 	mla	r0, r8, r0, r3
 e00f4a8:	eb00034a 	bl	e0101d8 <vListInsertEnd>
 e00f4ac:	e5952000 	ldr	r2, [r5]
 e00f4b0:	e599302c 	ldr	r3, [r9, #44]	; 0x2c
 e00f4b4:	e592202c 	ldr	r2, [r2, #44]	; 0x2c
 e00f4b8:	e1530002 	cmp	r3, r2
 e00f4bc:	2affffd6 	bcs	e00f41c <xTaskIncrementTick+0x1ec>
 e00f4c0:	e5952004 	ldr	r2, [r5, #4]
 e00f4c4:	e592202c 	ldr	r2, [r2, #44]	; 0x2c
 e00f4c8:	e1530002 	cmp	r3, r2
 e00f4cc:	3a000004 	bcc	e00f4e4 <xTaskIncrementTick+0x2b4>
 e00f4d0:	e59d3000 	ldr	r3, [sp]
 e00f4d4:	e7963103 	ldr	r3, [r6, r3, lsl #2]
 e00f4d8:	e3530000 	cmp	r3, #0
 e00f4dc:	03a02001 	moveq	r2, #1
 e00f4e0:	0affffd1 	beq	e00f42c <xTaskIncrementTick+0x1fc>
 e00f4e4:	e5943000 	ldr	r3, [r4]
 e00f4e8:	e5933000 	ldr	r3, [r3]
 e00f4ec:	e3530000 	cmp	r3, #0
 e00f4f0:	1affffd4 	bne	e00f448 <xTaskIncrementTick+0x218>
 e00f4f4:	e59d2008 	ldr	r2, [sp, #8]
 e00f4f8:	e3e03000 	mvn	r3, #0
 e00f4fc:	e59d9004 	ldr	r9, [sp, #4]
 e00f500:	e5823000 	str	r3, [r2]
 e00f504:	eaffff67 	b	e00f2a8 <xTaskIncrementTick+0x78>
 e00f508:	e59d300c 	ldr	r3, [sp, #12]
 e00f50c:	e1a0100b 	mov	r1, fp
 e00f510:	e5930000 	ldr	r0, [r3]
 e00f514:	eb00032f 	bl	e0101d8 <vListInsertEnd>
 e00f518:	eaffffe3 	b	e00f4ac <xTaskIncrementTick+0x27c>
 e00f51c:	e5943000 	ldr	r3, [r4]
 e00f520:	e3042044 	movw	r2, #16452	; 0x4044
 e00f524:	e346200a 	movt	r2, #24586	; 0x600a
 e00f528:	e593300c 	ldr	r3, [r3, #12]
 e00f52c:	e58d2008 	str	r2, [sp, #8]
 e00f530:	e593300c 	ldr	r3, [r3, #12]
 e00f534:	e5933004 	ldr	r3, [r3, #4]
 e00f538:	e5823000 	str	r3, [r2]
 e00f53c:	eaffff4f 	b	e00f280 <xTaskIncrementTick+0x50>
 e00f540:	e5963004 	ldr	r3, [r6, #4]
 e00f544:	e3530000 	cmp	r3, #0
 e00f548:	1a000008 	bne	e00f570 <xTaskIncrementTick+0x340>
 e00f54c:	e3a04001 	mov	r4, #1
 e00f550:	ebfffcc8 	bl	e00e878 <vTaskExitCritical>
 e00f554:	e1a00004 	mov	r0, r4
 e00f558:	e28dd014 	add	sp, sp, #20
 e00f55c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00f560:	e59d3008 	ldr	r3, [sp, #8]
 e00f564:	e59d9004 	ldr	r9, [sp, #4]
 e00f568:	e5832000 	str	r2, [r3]
 e00f56c:	eaffff4d 	b	e00f2a8 <xTaskIncrementTick+0x78>
 e00f570:	e3a04001 	mov	r4, #1
 e00f574:	eaffff6a 	b	e00f324 <xTaskIncrementTick+0xf4>
 e00f578:	e3050878 	movw	r0, #22648	; 0x5878
 e00f57c:	e3400e01 	movt	r0, #3585	; 0xe01
 e00f580:	e3001bdd 	movw	r1, #3037	; 0xbdd
 e00f584:	ebffe995 	bl	e009be0 <vAssertCalled>
 e00f588:	eaffff7b 	b	e00f37c <xTaskIncrementTick+0x14c>

0e00f58c <xTaskResumeAll.part.0>:
 e00f58c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e00f590:	e3044008 	movw	r4, #16392	; 0x4008
 e00f594:	e346400a 	movt	r4, #24586	; 0x600a
 e00f598:	e24dd00c 	sub	sp, sp, #12
 e00f59c:	ebfffc9a 	bl	e00e80c <vTaskEnterCritical>
 e00f5a0:	eb000add 	bl	e01211c <ulPortGetCoreId>
 e00f5a4:	e5943000 	ldr	r3, [r4]
 e00f5a8:	e1a05000 	mov	r5, r0
 e00f5ac:	e3530000 	cmp	r3, #0
 e00f5b0:	0a000061 	beq	e00f73c <xTaskResumeAll.part.0+0x1b0>
 e00f5b4:	e5943000 	ldr	r3, [r4]
 e00f5b8:	e2433001 	sub	r3, r3, #1
 e00f5bc:	e5843000 	str	r3, [r4]
 e00f5c0:	e5943000 	ldr	r3, [r4]
 e00f5c4:	e3530000 	cmp	r3, #0
 e00f5c8:	13a04000 	movne	r4, #0
 e00f5cc:	1a000056 	bne	e00f72c <xTaskResumeAll.part.0+0x1a0>
 e00f5d0:	e3043000 	movw	r3, #16384	; 0x4000
 e00f5d4:	e346300a 	movt	r3, #24586	; 0x600a
 e00f5d8:	e5934000 	ldr	r4, [r3]
 e00f5dc:	e3540000 	cmp	r4, #0
 e00f5e0:	0a000051 	beq	e00f72c <xTaskResumeAll.part.0+0x1a0>
 e00f5e4:	e3046050 	movw	r6, #16464	; 0x4050
 e00f5e8:	e346600a 	movt	r6, #24586	; 0x600a
 e00f5ec:	e5963000 	ldr	r3, [r6]
 e00f5f0:	e3530000 	cmp	r3, #0
 e00f5f4:	030490a8 	movweq	r9, #16552	; 0x40a8
 e00f5f8:	0346900a 	movteq	r9, #24586	; 0x600a
 e00f5fc:	0a00003b 	beq	e00f6f0 <xTaskResumeAll.part.0+0x164>
 e00f600:	e3038f00 	movw	r8, #16128	; 0x3f00
 e00f604:	e346800a 	movt	r8, #24586	; 0x600a
 e00f608:	e30490a8 	movw	r9, #16552	; 0x40a8
 e00f60c:	e346900a 	movt	r9, #24586	; 0x600a
 e00f610:	e3047010 	movw	r7, #16400	; 0x4010
 e00f614:	e346700a 	movt	r7, #24586	; 0x600a
 e00f618:	e303af14 	movw	sl, #16148	; 0x3f14
 e00f61c:	e346a00a 	movt	sl, #24586	; 0x600a
 e00f620:	e3033f10 	movw	r3, #16144	; 0x3f10
 e00f624:	e346300a 	movt	r3, #24586	; 0x600a
 e00f628:	e58d3004 	str	r3, [sp, #4]
 e00f62c:	ea00000e 	b	e00f66c <xTaskResumeAll.part.0+0xe0>
 e00f630:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
 e00f634:	e5972000 	ldr	r2, [r7]
 e00f638:	e1530002 	cmp	r3, r2
 e00f63c:	e020a390 	mla	r0, r0, r3, sl
 e00f640:	85873000 	strhi	r3, [r7]
 e00f644:	eb0002e3 	bl	e0101d8 <vListInsertEnd>
 e00f648:	e7983105 	ldr	r3, [r8, r5, lsl #2]
 e00f64c:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
 e00f650:	e3a01001 	mov	r1, #1
 e00f654:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
 e00f658:	e1520003 	cmp	r2, r3
 e00f65c:	27891105 	strcs	r1, [r9, r5, lsl #2]
 e00f660:	e5963000 	ldr	r3, [r6]
 e00f664:	e3530000 	cmp	r3, #0
 e00f668:	0a00000f 	beq	e00f6ac <xTaskResumeAll.part.0+0x120>
 e00f66c:	e596300c 	ldr	r3, [r6, #12]
 e00f670:	e593400c 	ldr	r4, [r3, #12]
 e00f674:	e284b004 	add	fp, r4, #4
 e00f678:	e2840018 	add	r0, r4, #24
 e00f67c:	eb0002f6 	bl	e01025c <uxListRemove>
 e00f680:	e1a0000b 	mov	r0, fp
 e00f684:	eb0002f4 	bl	e01025c <uxListRemove>
 e00f688:	e5943034 	ldr	r3, [r4, #52]	; 0x34
 e00f68c:	e3a00014 	mov	r0, #20
 e00f690:	e1a0100b 	mov	r1, fp
 e00f694:	e3730002 	cmn	r3, #2
 e00f698:	1affffe4 	bne	e00f630 <xTaskResumeAll.part.0+0xa4>
 e00f69c:	e59d3004 	ldr	r3, [sp, #4]
 e00f6a0:	e5930000 	ldr	r0, [r3]
 e00f6a4:	eb0002cb 	bl	e0101d8 <vListInsertEnd>
 e00f6a8:	eaffffe6 	b	e00f648 <xTaskResumeAll.part.0+0xbc>
 e00f6ac:	e3540000 	cmp	r4, #0
 e00f6b0:	0a00000e 	beq	e00f6f0 <xTaskResumeAll.part.0+0x164>
 e00f6b4:	e3033f08 	movw	r3, #16136	; 0x3f08
 e00f6b8:	e346300a 	movt	r3, #24586	; 0x600a
 e00f6bc:	e5932000 	ldr	r2, [r3]
 e00f6c0:	e5922000 	ldr	r2, [r2]
 e00f6c4:	e3520000 	cmp	r2, #0
 e00f6c8:	03043044 	movweq	r3, #16452	; 0x4044
 e00f6cc:	15932000 	ldrne	r2, [r3]
 e00f6d0:	0346300a 	movteq	r3, #24586	; 0x600a
 e00f6d4:	13043044 	movwne	r3, #16452	; 0x4044
 e00f6d8:	1592200c 	ldrne	r2, [r2, #12]
 e00f6dc:	1346300a 	movtne	r3, #24586	; 0x600a
 e00f6e0:	03e02000 	mvneq	r2, #0
 e00f6e4:	1592200c 	ldrne	r2, [r2, #12]
 e00f6e8:	15922004 	ldrne	r2, [r2, #4]
 e00f6ec:	e5832000 	str	r2, [r3]
 e00f6f0:	e304604c 	movw	r6, #16460	; 0x404c
 e00f6f4:	e346600a 	movt	r6, #24586	; 0x600a
 e00f6f8:	e5964000 	ldr	r4, [r6]
 e00f6fc:	e3540000 	cmp	r4, #0
 e00f700:	0a000006 	beq	e00f720 <xTaskResumeAll.part.0+0x194>
 e00f704:	e3a07001 	mov	r7, #1
 e00f708:	ebfffec8 	bl	e00f230 <xTaskIncrementTick>
 e00f70c:	e3500000 	cmp	r0, #0
 e00f710:	17897105 	strne	r7, [r9, r5, lsl #2]
 e00f714:	e2544001 	subs	r4, r4, #1
 e00f718:	1afffffa 	bne	e00f708 <xTaskResumeAll.part.0+0x17c>
 e00f71c:	e5864000 	str	r4, [r6]
 e00f720:	e7994105 	ldr	r4, [r9, r5, lsl #2]
 e00f724:	e2544000 	subs	r4, r4, #0
 e00f728:	13a04001 	movne	r4, #1
 e00f72c:	ebfffc51 	bl	e00e878 <vTaskExitCritical>
 e00f730:	e1a00004 	mov	r0, r4
 e00f734:	e28dd00c 	add	sp, sp, #12
 e00f738:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e00f73c:	e3a01e99 	mov	r1, #2448	; 0x990
 e00f740:	e3050878 	movw	r0, #22648	; 0x5878
 e00f744:	e3400e01 	movt	r0, #3585	; 0xe01
 e00f748:	ebffe924 	bl	e009be0 <vAssertCalled>
 e00f74c:	eaffff98 	b	e00f5b4 <xTaskResumeAll.part.0+0x28>

0e00f750 <xTaskResumeAll>:
 e00f750:	e3043064 	movw	r3, #16484	; 0x4064
 e00f754:	e346300a 	movt	r3, #24586	; 0x600a
 e00f758:	e5930000 	ldr	r0, [r3]
 e00f75c:	e3500000 	cmp	r0, #0
 e00f760:	012fff1e 	bxeq	lr
 e00f764:	eaffff88 	b	e00f58c <xTaskResumeAll.part.0>

0e00f768 <vTaskPlaceOnEventList>:
 e00f768:	e92d4070 	push	{r4, r5, r6, lr}
 e00f76c:	e1a05001 	mov	r5, r1
 e00f770:	e2504000 	subs	r4, r0, #0
 e00f774:	0a000011 	beq	e00f7c0 <vTaskPlaceOnEventList+0x58>
 e00f778:	ebfffc23 	bl	e00e80c <vTaskEnterCritical>
 e00f77c:	eb000a4b 	bl	e0120b0 <ulPortInterruptLock>
 e00f780:	e1a06000 	mov	r6, r0
 e00f784:	eb000a64 	bl	e01211c <ulPortGetCoreId>
 e00f788:	e3033f00 	movw	r3, #16128	; 0x3f00
 e00f78c:	e346300a 	movt	r3, #24586	; 0x600a
 e00f790:	e1a02000 	mov	r2, r0
 e00f794:	e1a00006 	mov	r0, r6
 e00f798:	e7936102 	ldr	r6, [r3, r2, lsl #2]
 e00f79c:	eb000a48 	bl	e0120c4 <ulPortInterruptUnLock>
 e00f7a0:	e2861018 	add	r1, r6, #24
 e00f7a4:	e1a00004 	mov	r0, r4
 e00f7a8:	eb000295 	bl	e010204 <vListInsert>
 e00f7ac:	e1a00005 	mov	r0, r5
 e00f7b0:	e3a01001 	mov	r1, #1
 e00f7b4:	ebfffe23 	bl	e00f048 <prvAddCurrentTaskToDelayedList>
 e00f7b8:	e8bd4070 	pop	{r4, r5, r6, lr}
 e00f7bc:	eafffc2d 	b	e00e878 <vTaskExitCritical>
 e00f7c0:	e3050878 	movw	r0, #22648	; 0x5878
 e00f7c4:	e3400e01 	movt	r0, #3585	; 0xe01
 e00f7c8:	e3001da2 	movw	r1, #3490	; 0xda2
 e00f7cc:	ebffe903 	bl	e009be0 <vAssertCalled>
 e00f7d0:	eaffffe8 	b	e00f778 <vTaskPlaceOnEventList+0x10>

0e00f7d4 <vTaskPlaceOnEventListRestricted>:
 e00f7d4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e00f7d8:	e1a06001 	mov	r6, r1
 e00f7dc:	e1a04002 	mov	r4, r2
 e00f7e0:	e2505000 	subs	r5, r0, #0
 e00f7e4:	0a000013 	beq	e00f838 <vTaskPlaceOnEventListRestricted+0x64>
 e00f7e8:	ebfffc07 	bl	e00e80c <vTaskEnterCritical>
 e00f7ec:	eb000a2f 	bl	e0120b0 <ulPortInterruptLock>
 e00f7f0:	e1a07000 	mov	r7, r0
 e00f7f4:	eb000a48 	bl	e01211c <ulPortGetCoreId>
 e00f7f8:	e3033f00 	movw	r3, #16128	; 0x3f00
 e00f7fc:	e346300a 	movt	r3, #24586	; 0x600a
 e00f800:	e1a02000 	mov	r2, r0
 e00f804:	e1a00007 	mov	r0, r7
 e00f808:	e7937102 	ldr	r7, [r3, r2, lsl #2]
 e00f80c:	eb000a2c 	bl	e0120c4 <ulPortInterruptUnLock>
 e00f810:	e1a00005 	mov	r0, r5
 e00f814:	e2871018 	add	r1, r7, #24
 e00f818:	eb00026e 	bl	e0101d8 <vListInsertEnd>
 e00f81c:	e3540000 	cmp	r4, #0
 e00f820:	e1a01004 	mov	r1, r4
 e00f824:	01a00006 	moveq	r0, r6
 e00f828:	13e00000 	mvnne	r0, #0
 e00f82c:	ebfffe05 	bl	e00f048 <prvAddCurrentTaskToDelayedList>
 e00f830:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 e00f834:	eafffc0f 	b	e00e878 <vTaskExitCritical>
 e00f838:	e3050878 	movw	r0, #22648	; 0x5878
 e00f83c:	e3400e01 	movt	r0, #3585	; 0xe01
 e00f840:	e3001dd5 	movw	r1, #3541	; 0xdd5
 e00f844:	ebffe8e5 	bl	e009be0 <vAssertCalled>
 e00f848:	eaffffe6 	b	e00f7e8 <vTaskPlaceOnEventListRestricted+0x14>

0e00f84c <vTaskPlaceRemoveFromEventList>:
 e00f84c:	e92d4070 	push	{r4, r5, r6, lr}
 e00f850:	ebfffbed 	bl	e00e80c <vTaskEnterCritical>
 e00f854:	e3034f00 	movw	r4, #16128	; 0x3f00
 e00f858:	e346400a 	movt	r4, #24586	; 0x600a
 e00f85c:	eb000a13 	bl	e0120b0 <ulPortInterruptLock>
 e00f860:	e1a05000 	mov	r5, r0
 e00f864:	eb000a2c 	bl	e01211c <ulPortGetCoreId>
 e00f868:	e1a03000 	mov	r3, r0
 e00f86c:	e1a00005 	mov	r0, r5
 e00f870:	e7945103 	ldr	r5, [r4, r3, lsl #2]
 e00f874:	eb000a12 	bl	e0120c4 <ulPortInterruptUnLock>
 e00f878:	e2850018 	add	r0, r5, #24
 e00f87c:	eb000276 	bl	e01025c <uxListRemove>
 e00f880:	eb000a0a 	bl	e0120b0 <ulPortInterruptLock>
 e00f884:	e1a05000 	mov	r5, r0
 e00f888:	eb000a23 	bl	e01211c <ulPortGetCoreId>
 e00f88c:	e1a03000 	mov	r3, r0
 e00f890:	e1a00005 	mov	r0, r5
 e00f894:	e7945103 	ldr	r5, [r4, r3, lsl #2]
 e00f898:	eb000a09 	bl	e0120c4 <ulPortInterruptUnLock>
 e00f89c:	e2850004 	add	r0, r5, #4
 e00f8a0:	eb00026d 	bl	e01025c <uxListRemove>
 e00f8a4:	eb000a1c 	bl	e01211c <ulPortGetCoreId>
 e00f8a8:	e1a05000 	mov	r5, r0
 e00f8ac:	eb0009ff 	bl	e0120b0 <ulPortInterruptLock>
 e00f8b0:	e1a06000 	mov	r6, r0
 e00f8b4:	eb000a18 	bl	e01211c <ulPortGetCoreId>
 e00f8b8:	e1a03000 	mov	r3, r0
 e00f8bc:	e1a00006 	mov	r0, r6
 e00f8c0:	e7944103 	ldr	r4, [r4, r3, lsl #2]
 e00f8c4:	eb0009fe 	bl	e0120c4 <ulPortInterruptUnLock>
 e00f8c8:	e5845034 	str	r5, [r4, #52]	; 0x34
 e00f8cc:	e8bd4070 	pop	{r4, r5, r6, lr}
 e00f8d0:	eafffbe8 	b	e00e878 <vTaskExitCritical>

0e00f8d4 <xTaskRemoveFromEventList>:
 e00f8d4:	e92d4070 	push	{r4, r5, r6, lr}
 e00f8d8:	e1a04000 	mov	r4, r0
 e00f8dc:	ebfffbca 	bl	e00e80c <vTaskEnterCritical>
 e00f8e0:	e594300c 	ldr	r3, [r4, #12]
 e00f8e4:	e593400c 	ldr	r4, [r3, #12]
 e00f8e8:	e3540000 	cmp	r4, #0
 e00f8ec:	0a00003f 	beq	e00f9f0 <xTaskRemoveFromEventList+0x11c>
 e00f8f0:	e2845018 	add	r5, r4, #24
 e00f8f4:	e1a00005 	mov	r0, r5
 e00f8f8:	eb000257 	bl	e01025c <uxListRemove>
 e00f8fc:	e3043008 	movw	r3, #16392	; 0x4008
 e00f900:	e346300a 	movt	r3, #24586	; 0x600a
 e00f904:	e5933000 	ldr	r3, [r3]
 e00f908:	e3530000 	cmp	r3, #0
 e00f90c:	1a000021 	bne	e00f998 <xTaskRemoveFromEventList+0xc4>
 e00f910:	e2845004 	add	r5, r4, #4
 e00f914:	e1a00005 	mov	r0, r5
 e00f918:	eb00024f 	bl	e01025c <uxListRemove>
 e00f91c:	e5943034 	ldr	r3, [r4, #52]	; 0x34
 e00f920:	e3730002 	cmn	r3, #2
 e00f924:	0a00002b 	beq	e00f9d8 <xTaskRemoveFromEventList+0x104>
 e00f928:	e3043010 	movw	r3, #16400	; 0x4010
 e00f92c:	e346300a 	movt	r3, #24586	; 0x600a
 e00f930:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
 e00f934:	e3a00014 	mov	r0, #20
 e00f938:	e5931000 	ldr	r1, [r3]
 e00f93c:	e1520001 	cmp	r2, r1
 e00f940:	85832000 	strhi	r2, [r3]
 e00f944:	e3033f14 	movw	r3, #16148	; 0x3f14
 e00f948:	e346300a 	movt	r3, #24586	; 0x600a
 e00f94c:	e1a01005 	mov	r1, r5
 e00f950:	e0203290 	mla	r0, r0, r2, r3
 e00f954:	eb00021f 	bl	e0101d8 <vListInsertEnd>
 e00f958:	e3033f08 	movw	r3, #16136	; 0x3f08
 e00f95c:	e346300a 	movt	r3, #24586	; 0x600a
 e00f960:	e5932000 	ldr	r2, [r3]
 e00f964:	e5922000 	ldr	r2, [r2]
 e00f968:	e3520000 	cmp	r2, #0
 e00f96c:	03043044 	movweq	r3, #16452	; 0x4044
 e00f970:	15932000 	ldrne	r2, [r3]
 e00f974:	0346300a 	movteq	r3, #24586	; 0x600a
 e00f978:	13043044 	movwne	r3, #16452	; 0x4044
 e00f97c:	1592200c 	ldrne	r2, [r2, #12]
 e00f980:	1346300a 	movtne	r3, #24586	; 0x600a
 e00f984:	03e02000 	mvneq	r2, #0
 e00f988:	1592200c 	ldrne	r2, [r2, #12]
 e00f98c:	15922004 	ldrne	r2, [r2, #4]
 e00f990:	e5832000 	str	r2, [r3]
 e00f994:	ea000003 	b	e00f9a8 <xTaskRemoveFromEventList+0xd4>
 e00f998:	e3040050 	movw	r0, #16464	; 0x4050
 e00f99c:	e346000a 	movt	r0, #24586	; 0x600a
 e00f9a0:	e1a01005 	mov	r1, r5
 e00f9a4:	eb00020b 	bl	e0101d8 <vListInsertEnd>
 e00f9a8:	e3a02000 	mov	r2, #0
 e00f9ac:	e3a01001 	mov	r1, #1
 e00f9b0:	e1a00004 	mov	r0, r4
 e00f9b4:	ebfff8b3 	bl	e00dc88 <prvYieldForTask.isra.0>
 e00f9b8:	eb0009d7 	bl	e01211c <ulPortGetCoreId>
 e00f9bc:	e30430a8 	movw	r3, #16552	; 0x40a8
 e00f9c0:	e346300a 	movt	r3, #24586	; 0x600a
 e00f9c4:	e7934100 	ldr	r4, [r3, r0, lsl #2]
 e00f9c8:	ebfffbaa 	bl	e00e878 <vTaskExitCritical>
 e00f9cc:	e2540000 	subs	r0, r4, #0
 e00f9d0:	13a00001 	movne	r0, #1
 e00f9d4:	e8bd8070 	pop	{r4, r5, r6, pc}
 e00f9d8:	e3033f10 	movw	r3, #16144	; 0x3f10
 e00f9dc:	e346300a 	movt	r3, #24586	; 0x600a
 e00f9e0:	e1a01005 	mov	r1, r5
 e00f9e4:	e5930000 	ldr	r0, [r3]
 e00f9e8:	eb0001fa 	bl	e0101d8 <vListInsertEnd>
 e00f9ec:	eaffffd9 	b	e00f958 <xTaskRemoveFromEventList+0x84>
 e00f9f0:	e3050878 	movw	r0, #22648	; 0x5878
 e00f9f4:	e3400e01 	movt	r0, #3585	; 0xe01
 e00f9f8:	e3001e1e 	movw	r1, #3614	; 0xe1e
 e00f9fc:	ebffe877 	bl	e009be0 <vAssertCalled>
 e00fa00:	eaffffba 	b	e00f8f0 <xTaskRemoveFromEventList+0x1c>

0e00fa04 <xTaskCheckForTimeOut>:
 e00fa04:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e00fa08:	e1a05001 	mov	r5, r1
 e00fa0c:	e2504000 	subs	r4, r0, #0
 e00fa10:	0a000040 	beq	e00fb18 <xTaskCheckForTimeOut+0x114>
 e00fa14:	e3550000 	cmp	r5, #0
 e00fa18:	0a000039 	beq	e00fb04 <xTaskCheckForTimeOut+0x100>
 e00fa1c:	e30470a4 	movw	r7, #16548	; 0x40a4
 e00fa20:	e346700a 	movt	r7, #24586	; 0x600a
 e00fa24:	ebfffb78 	bl	e00e80c <vTaskEnterCritical>
 e00fa28:	e5949004 	ldr	r9, [r4, #4]
 e00fa2c:	e5978000 	ldr	r8, [r7]
 e00fa30:	eb00099e 	bl	e0120b0 <ulPortInterruptLock>
 e00fa34:	e1a06000 	mov	r6, r0
 e00fa38:	eb0009b7 	bl	e01211c <ulPortGetCoreId>
 e00fa3c:	e1a03000 	mov	r3, r0
 e00fa40:	e1a00006 	mov	r0, r6
 e00fa44:	e3036f00 	movw	r6, #16128	; 0x3f00
 e00fa48:	e346600a 	movt	r6, #24586	; 0x600a
 e00fa4c:	e796a103 	ldr	sl, [r6, r3, lsl #2]
 e00fa50:	eb00099b 	bl	e0120c4 <ulPortInterruptUnLock>
 e00fa54:	e5da0172 	ldrb	r0, [sl, #370]	; 0x172
 e00fa58:	e3500000 	cmp	r0, #0
 e00fa5c:	1a00001d 	bne	e00fad8 <xTaskCheckForTimeOut+0xd4>
 e00fa60:	e5953000 	ldr	r3, [r5]
 e00fa64:	e3730001 	cmn	r3, #1
 e00fa68:	01a07000 	moveq	r7, r0
 e00fa6c:	0a000009 	beq	e00fa98 <xTaskCheckForTimeOut+0x94>
 e00fa70:	e3042048 	movw	r2, #16456	; 0x4048
 e00fa74:	e346200a 	movt	r2, #24586	; 0x600a
 e00fa78:	e5940000 	ldr	r0, [r4]
 e00fa7c:	e5921000 	ldr	r1, [r2]
 e00fa80:	e1500001 	cmp	r0, r1
 e00fa84:	0a000006 	beq	e00faa4 <xTaskCheckForTimeOut+0xa0>
 e00fa88:	e5941004 	ldr	r1, [r4, #4]
 e00fa8c:	e1510008 	cmp	r1, r8
 e00fa90:	93a07001 	movls	r7, #1
 e00fa94:	8a000002 	bhi	e00faa4 <xTaskCheckForTimeOut+0xa0>
 e00fa98:	ebfffb76 	bl	e00e878 <vTaskExitCritical>
 e00fa9c:	e1a00007 	mov	r0, r7
 e00faa0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e00faa4:	e0481009 	sub	r1, r8, r9
 e00faa8:	e1530001 	cmp	r3, r1
 e00faac:	80433008 	subhi	r3, r3, r8
 e00fab0:	80839009 	addhi	r9, r3, r9
 e00fab4:	85922000 	ldrhi	r2, [r2]
 e00fab8:	85973000 	ldrhi	r3, [r7]
 e00fabc:	93a03000 	movls	r3, #0
 e00fac0:	85859000 	strhi	r9, [r5]
 e00fac4:	83a07000 	movhi	r7, #0
 e00fac8:	93a07001 	movls	r7, #1
 e00facc:	81c420f0 	strdhi	r2, [r4]
 e00fad0:	95853000 	strls	r3, [r5]
 e00fad4:	eaffffef 	b	e00fa98 <xTaskCheckForTimeOut+0x94>
 e00fad8:	eb000974 	bl	e0120b0 <ulPortInterruptLock>
 e00fadc:	e1a04000 	mov	r4, r0
 e00fae0:	eb00098d 	bl	e01211c <ulPortGetCoreId>
 e00fae4:	e1a03000 	mov	r3, r0
 e00fae8:	e1a00004 	mov	r0, r4
 e00faec:	e3a07001 	mov	r7, #1
 e00faf0:	e7964103 	ldr	r4, [r6, r3, lsl #2]
 e00faf4:	eb000972 	bl	e0120c4 <ulPortInterruptUnLock>
 e00faf8:	e3a03000 	mov	r3, #0
 e00fafc:	e5c43172 	strb	r3, [r4, #370]	; 0x172
 e00fb00:	eaffffe4 	b	e00fa98 <xTaskCheckForTimeOut+0x94>
 e00fb04:	e3050878 	movw	r0, #22648	; 0x5878
 e00fb08:	e3400e01 	movt	r0, #3585	; 0xe01
 e00fb0c:	e3001e7e 	movw	r1, #3710	; 0xe7e
 e00fb10:	ebffe832 	bl	e009be0 <vAssertCalled>
 e00fb14:	eaffffc0 	b	e00fa1c <xTaskCheckForTimeOut+0x18>
 e00fb18:	e3050878 	movw	r0, #22648	; 0x5878
 e00fb1c:	e3400e01 	movt	r0, #3585	; 0xe01
 e00fb20:	e3001e7d 	movw	r1, #3709	; 0xe7d
 e00fb24:	ebffe82d 	bl	e009be0 <vAssertCalled>
 e00fb28:	eaffffb9 	b	e00fa14 <xTaskCheckForTimeOut+0x10>

0e00fb2c <xTaskPriorityInherit>:
 e00fb2c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e00fb30:	e2504000 	subs	r4, r0, #0
 e00fb34:	0a00002e 	beq	e00fbf4 <xTaskPriorityInherit+0xc8>
 e00fb38:	e594702c 	ldr	r7, [r4, #44]	; 0x2c
 e00fb3c:	e3035f00 	movw	r5, #16128	; 0x3f00
 e00fb40:	e346500a 	movt	r5, #24586	; 0x600a
 e00fb44:	eb000959 	bl	e0120b0 <ulPortInterruptLock>
 e00fb48:	e1a06000 	mov	r6, r0
 e00fb4c:	eb000972 	bl	e01211c <ulPortGetCoreId>
 e00fb50:	e1a03000 	mov	r3, r0
 e00fb54:	e1a00006 	mov	r0, r6
 e00fb58:	e7956103 	ldr	r6, [r5, r3, lsl #2]
 e00fb5c:	eb000958 	bl	e0120c4 <ulPortInterruptUnLock>
 e00fb60:	e596302c 	ldr	r3, [r6, #44]	; 0x2c
 e00fb64:	e1570003 	cmp	r7, r3
 e00fb68:	2a000023 	bcs	e00fbfc <xTaskPriorityInherit+0xd0>
 e00fb6c:	e5943018 	ldr	r3, [r4, #24]
 e00fb70:	e3530000 	cmp	r3, #0
 e00fb74:	ba000009 	blt	e00fba0 <xTaskPriorityInherit+0x74>
 e00fb78:	eb00094c 	bl	e0120b0 <ulPortInterruptLock>
 e00fb7c:	e1a06000 	mov	r6, r0
 e00fb80:	eb000965 	bl	e01211c <ulPortGetCoreId>
 e00fb84:	e1a03000 	mov	r3, r0
 e00fb88:	e1a00006 	mov	r0, r6
 e00fb8c:	e7956103 	ldr	r6, [r5, r3, lsl #2]
 e00fb90:	eb00094b 	bl	e0120c4 <ulPortInterruptUnLock>
 e00fb94:	e596302c 	ldr	r3, [r6, #44]	; 0x2c
 e00fb98:	e263300b 	rsb	r3, r3, #11
 e00fb9c:	e5843018 	str	r3, [r4, #24]
 e00fba0:	ebfffb19 	bl	e00e80c <vTaskEnterCritical>
 e00fba4:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
 e00fba8:	e3a02014 	mov	r2, #20
 e00fbac:	e3036f14 	movw	r6, #16148	; 0x3f14
 e00fbb0:	e346600a 	movt	r6, #24586	; 0x600a
 e00fbb4:	e0236392 	mla	r3, r2, r3, r6
 e00fbb8:	e5942014 	ldr	r2, [r4, #20]
 e00fbbc:	e1520003 	cmp	r2, r3
 e00fbc0:	0a00001a 	beq	e00fc30 <xTaskPriorityInherit+0x104>
 e00fbc4:	eb000939 	bl	e0120b0 <ulPortInterruptLock>
 e00fbc8:	e1a06000 	mov	r6, r0
 e00fbcc:	eb000952 	bl	e01211c <ulPortGetCoreId>
 e00fbd0:	e1a03000 	mov	r3, r0
 e00fbd4:	e1a00006 	mov	r0, r6
 e00fbd8:	e7955103 	ldr	r5, [r5, r3, lsl #2]
 e00fbdc:	eb000938 	bl	e0120c4 <ulPortInterruptUnLock>
 e00fbe0:	e595302c 	ldr	r3, [r5, #44]	; 0x2c
 e00fbe4:	e584302c 	str	r3, [r4, #44]	; 0x2c
 e00fbe8:	ebfffb22 	bl	e00e878 <vTaskExitCritical>
 e00fbec:	e3a00001 	mov	r0, #1
 e00fbf0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e00fbf4:	e1a00004 	mov	r0, r4
 e00fbf8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e00fbfc:	e5944064 	ldr	r4, [r4, #100]	; 0x64
 e00fc00:	eb00092a 	bl	e0120b0 <ulPortInterruptLock>
 e00fc04:	e1a06000 	mov	r6, r0
 e00fc08:	eb000943 	bl	e01211c <ulPortGetCoreId>
 e00fc0c:	e1a03000 	mov	r3, r0
 e00fc10:	e1a00006 	mov	r0, r6
 e00fc14:	e7955103 	ldr	r5, [r5, r3, lsl #2]
 e00fc18:	eb000929 	bl	e0120c4 <ulPortInterruptUnLock>
 e00fc1c:	e595002c 	ldr	r0, [r5, #44]	; 0x2c
 e00fc20:	e1540000 	cmp	r4, r0
 e00fc24:	23a00000 	movcs	r0, #0
 e00fc28:	33a00001 	movcc	r0, #1
 e00fc2c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e00fc30:	e2848004 	add	r8, r4, #4
 e00fc34:	e1a00008 	mov	r0, r8
 e00fc38:	eb000187 	bl	e01025c <uxListRemove>
 e00fc3c:	eb00091b 	bl	e0120b0 <ulPortInterruptLock>
 e00fc40:	e1a07000 	mov	r7, r0
 e00fc44:	eb000934 	bl	e01211c <ulPortGetCoreId>
 e00fc48:	e7955100 	ldr	r5, [r5, r0, lsl #2]
 e00fc4c:	e1a00007 	mov	r0, r7
 e00fc50:	eb00091b 	bl	e0120c4 <ulPortInterruptUnLock>
 e00fc54:	e5942034 	ldr	r2, [r4, #52]	; 0x34
 e00fc58:	e595302c 	ldr	r3, [r5, #44]	; 0x2c
 e00fc5c:	e3720002 	cmn	r2, #2
 e00fc60:	e584302c 	str	r3, [r4, #44]	; 0x2c
 e00fc64:	0a000009 	beq	e00fc90 <xTaskPriorityInherit+0x164>
 e00fc68:	e3042010 	movw	r2, #16400	; 0x4010
 e00fc6c:	e346200a 	movt	r2, #24586	; 0x600a
 e00fc70:	e3a00014 	mov	r0, #20
 e00fc74:	e5921000 	ldr	r1, [r2]
 e00fc78:	e0206390 	mla	r0, r0, r3, r6
 e00fc7c:	e1530001 	cmp	r3, r1
 e00fc80:	e1a01008 	mov	r1, r8
 e00fc84:	85823000 	strhi	r3, [r2]
 e00fc88:	eb000152 	bl	e0101d8 <vListInsertEnd>
 e00fc8c:	eaffffd5 	b	e00fbe8 <xTaskPriorityInherit+0xbc>
 e00fc90:	e3033f10 	movw	r3, #16144	; 0x3f10
 e00fc94:	e346300a 	movt	r3, #24586	; 0x600a
 e00fc98:	e1a01008 	mov	r1, r8
 e00fc9c:	e5930000 	ldr	r0, [r3]
 e00fca0:	eb00014c 	bl	e0101d8 <vListInsertEnd>
 e00fca4:	eaffffcf 	b	e00fbe8 <xTaskPriorityInherit+0xbc>

0e00fca8 <xTaskPriorityDisinherit>:
 e00fca8:	e92d4070 	push	{r4, r5, r6, lr}
 e00fcac:	e2504000 	subs	r4, r0, #0
 e00fcb0:	0a000013 	beq	e00fd04 <xTaskPriorityDisinherit+0x5c>
 e00fcb4:	eb0008fd 	bl	e0120b0 <ulPortInterruptLock>
 e00fcb8:	e1a05000 	mov	r5, r0
 e00fcbc:	eb000916 	bl	e01211c <ulPortGetCoreId>
 e00fcc0:	e3033f00 	movw	r3, #16128	; 0x3f00
 e00fcc4:	e346300a 	movt	r3, #24586	; 0x600a
 e00fcc8:	e1a02000 	mov	r2, r0
 e00fccc:	e1a00005 	mov	r0, r5
 e00fcd0:	e7935102 	ldr	r5, [r3, r2, lsl #2]
 e00fcd4:	eb0008fa 	bl	e0120c4 <ulPortInterruptUnLock>
 e00fcd8:	e1540005 	cmp	r4, r5
 e00fcdc:	1a00001e 	bne	e00fd5c <xTaskPriorityDisinherit+0xb4>
 e00fce0:	e5943068 	ldr	r3, [r4, #104]	; 0x68
 e00fce4:	e3530000 	cmp	r3, #0
 e00fce8:	0a000020 	beq	e00fd70 <xTaskPriorityDisinherit+0xc8>
 e00fcec:	e594102c 	ldr	r1, [r4, #44]	; 0x2c
 e00fcf0:	e5942064 	ldr	r2, [r4, #100]	; 0x64
 e00fcf4:	e2433001 	sub	r3, r3, #1
 e00fcf8:	e1510002 	cmp	r1, r2
 e00fcfc:	e5843068 	str	r3, [r4, #104]	; 0x68
 e00fd00:	1a000002 	bne	e00fd10 <xTaskPriorityDisinherit+0x68>
 e00fd04:	e3a05000 	mov	r5, #0
 e00fd08:	e1a00005 	mov	r0, r5
 e00fd0c:	e8bd8070 	pop	{r4, r5, r6, pc}
 e00fd10:	ebfffabd 	bl	e00e80c <vTaskEnterCritical>
 e00fd14:	e5943068 	ldr	r3, [r4, #104]	; 0x68
 e00fd18:	e3530000 	cmp	r3, #0
 e00fd1c:	13a05000 	movne	r5, #0
 e00fd20:	1a00000a 	bne	e00fd50 <xTaskPriorityDisinherit+0xa8>
 e00fd24:	e3033f08 	movw	r3, #16136	; 0x3f08
 e00fd28:	e346300a 	movt	r3, #24586	; 0x600a
 e00fd2c:	e5942014 	ldr	r2, [r4, #20]
 e00fd30:	e5933000 	ldr	r3, [r3]
 e00fd34:	e1520003 	cmp	r2, r3
 e00fd38:	0a000012 	beq	e00fd88 <xTaskPriorityDisinherit+0xe0>
 e00fd3c:	e5943064 	ldr	r3, [r4, #100]	; 0x64
 e00fd40:	e3a05001 	mov	r5, #1
 e00fd44:	e263200b 	rsb	r2, r3, #11
 e00fd48:	e584302c 	str	r3, [r4, #44]	; 0x2c
 e00fd4c:	e5842018 	str	r2, [r4, #24]
 e00fd50:	ebfffac8 	bl	e00e878 <vTaskExitCritical>
 e00fd54:	e1a00005 	mov	r0, r5
 e00fd58:	e8bd8070 	pop	{r4, r5, r6, pc}
 e00fd5c:	e3050878 	movw	r0, #22648	; 0x5878
 e00fd60:	e3400e01 	movt	r0, #3585	; 0xe01
 e00fd64:	e30111a8 	movw	r1, #4520	; 0x11a8
 e00fd68:	ebffe79c 	bl	e009be0 <vAssertCalled>
 e00fd6c:	eaffffdb 	b	e00fce0 <xTaskPriorityDisinherit+0x38>
 e00fd70:	e30111a9 	movw	r1, #4521	; 0x11a9
 e00fd74:	e3050878 	movw	r0, #22648	; 0x5878
 e00fd78:	e3400e01 	movt	r0, #3585	; 0xe01
 e00fd7c:	ebffe797 	bl	e009be0 <vAssertCalled>
 e00fd80:	e5943068 	ldr	r3, [r4, #104]	; 0x68
 e00fd84:	eaffffd8 	b	e00fcec <xTaskPriorityDisinherit+0x44>
 e00fd88:	e2840004 	add	r0, r4, #4
 e00fd8c:	eb000132 	bl	e01025c <uxListRemove>
 e00fd90:	e3500000 	cmp	r0, #0
 e00fd94:	1affffe8 	bne	e00fd3c <xTaskPriorityDisinherit+0x94>
 e00fd98:	e304c010 	movw	ip, #16400	; 0x4010
 e00fd9c:	e346c00a 	movt	ip, #24586	; 0x600a
 e00fda0:	e59c3000 	ldr	r3, [ip]
 e00fda4:	e3530000 	cmp	r3, #0
 e00fda8:	0a000009 	beq	e00fdd4 <xTaskPriorityDisinherit+0x12c>
 e00fdac:	e3031f14 	movw	r1, #16148	; 0x3f14
 e00fdb0:	e346100a 	movt	r1, #24586	; 0x600a
 e00fdb4:	e3a00014 	mov	r0, #20
 e00fdb8:	ea000001 	b	e00fdc4 <xTaskPriorityDisinherit+0x11c>
 e00fdbc:	e2533001 	subs	r3, r3, #1
 e00fdc0:	0a000003 	beq	e00fdd4 <xTaskPriorityDisinherit+0x12c>
 e00fdc4:	e0020390 	mul	r2, r0, r3
 e00fdc8:	e7912002 	ldr	r2, [r1, r2]
 e00fdcc:	e3520000 	cmp	r2, #0
 e00fdd0:	0afffff9 	beq	e00fdbc <xTaskPriorityDisinherit+0x114>
 e00fdd4:	e58c3000 	str	r3, [ip]
 e00fdd8:	eaffffd7 	b	e00fd3c <xTaskPriorityDisinherit+0x94>

0e00fddc <vTaskPriorityDisinheritAfterTimeout>:
 e00fddc:	e92d4070 	push	{r4, r5, r6, lr}
 e00fde0:	e2504000 	subs	r4, r0, #0
 e00fde4:	08bd8070 	popeq	{r4, r5, r6, pc}
 e00fde8:	e5943068 	ldr	r3, [r4, #104]	; 0x68
 e00fdec:	e1a05001 	mov	r5, r1
 e00fdf0:	e3530000 	cmp	r3, #0
 e00fdf4:	0a000023 	beq	e00fe88 <vTaskPriorityDisinheritAfterTimeout+0xac>
 e00fdf8:	e5941064 	ldr	r1, [r4, #100]	; 0x64
 e00fdfc:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
 e00fe00:	e1550001 	cmp	r5, r1
 e00fe04:	31a05001 	movcc	r5, r1
 e00fe08:	e1530005 	cmp	r3, r5
 e00fe0c:	08bd8070 	popeq	{r4, r5, r6, pc}
 e00fe10:	e5943068 	ldr	r3, [r4, #104]	; 0x68
 e00fe14:	e3530001 	cmp	r3, #1
 e00fe18:	18bd8070 	popne	{r4, r5, r6, pc}
 e00fe1c:	eb0008a3 	bl	e0120b0 <ulPortInterruptLock>
 e00fe20:	e1a06000 	mov	r6, r0
 e00fe24:	eb0008bc 	bl	e01211c <ulPortGetCoreId>
 e00fe28:	e3033f00 	movw	r3, #16128	; 0x3f00
 e00fe2c:	e346300a 	movt	r3, #24586	; 0x600a
 e00fe30:	e1a02000 	mov	r2, r0
 e00fe34:	e1a00006 	mov	r0, r6
 e00fe38:	e7936102 	ldr	r6, [r3, r2, lsl #2]
 e00fe3c:	eb0008a0 	bl	e0120c4 <ulPortInterruptUnLock>
 e00fe40:	e1540006 	cmp	r4, r6
 e00fe44:	0a00002b 	beq	e00fef8 <vTaskPriorityDisinheritAfterTimeout+0x11c>
 e00fe48:	e5943018 	ldr	r3, [r4, #24]
 e00fe4c:	e594602c 	ldr	r6, [r4, #44]	; 0x2c
 e00fe50:	e3530000 	cmp	r3, #0
 e00fe54:	e584502c 	str	r5, [r4, #44]	; 0x2c
 e00fe58:	a265500b 	rsbge	r5, r5, #11
 e00fe5c:	a5845018 	strge	r5, [r4, #24]
 e00fe60:	ebfffa69 	bl	e00e80c <vTaskEnterCritical>
 e00fe64:	e3035f14 	movw	r5, #16148	; 0x3f14
 e00fe68:	e346500a 	movt	r5, #24586	; 0x600a
 e00fe6c:	e3a02014 	mov	r2, #20
 e00fe70:	e5943014 	ldr	r3, [r4, #20]
 e00fe74:	e0265692 	mla	r6, r2, r6, r5
 e00fe78:	e1530006 	cmp	r3, r6
 e00fe7c:	0a000006 	beq	e00fe9c <vTaskPriorityDisinheritAfterTimeout+0xc0>
 e00fe80:	e8bd4070 	pop	{r4, r5, r6, lr}
 e00fe84:	eafffa7b 	b	e00e878 <vTaskExitCritical>
 e00fe88:	e3050878 	movw	r0, #22648	; 0x5878
 e00fe8c:	e3400e01 	movt	r0, #3585	; 0xe01
 e00fe90:	e30111f5 	movw	r1, #4597	; 0x11f5
 e00fe94:	ebffe751 	bl	e009be0 <vAssertCalled>
 e00fe98:	eaffffd6 	b	e00fdf8 <vTaskPriorityDisinheritAfterTimeout+0x1c>
 e00fe9c:	e2846004 	add	r6, r4, #4
 e00fea0:	e1a00006 	mov	r0, r6
 e00fea4:	eb0000ec 	bl	e01025c <uxListRemove>
 e00fea8:	e5943034 	ldr	r3, [r4, #52]	; 0x34
 e00feac:	e3530000 	cmp	r3, #0
 e00feb0:	ba000002 	blt	e00fec0 <vTaskPriorityDisinheritAfterTimeout+0xe4>
 e00feb4:	e5943034 	ldr	r3, [r4, #52]	; 0x34
 e00feb8:	e3530001 	cmp	r3, #1
 e00febc:	daffffef 	ble	e00fe80 <vTaskPriorityDisinheritAfterTimeout+0xa4>
 e00fec0:	e5943034 	ldr	r3, [r4, #52]	; 0x34
 e00fec4:	e3730002 	cmn	r3, #2
 e00fec8:	0a00000f 	beq	e00ff0c <vTaskPriorityDisinheritAfterTimeout+0x130>
 e00fecc:	e3043010 	movw	r3, #16400	; 0x4010
 e00fed0:	e346300a 	movt	r3, #24586	; 0x600a
 e00fed4:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
 e00fed8:	e3a00014 	mov	r0, #20
 e00fedc:	e5931000 	ldr	r1, [r3]
 e00fee0:	e0205290 	mla	r0, r0, r2, r5
 e00fee4:	e1520001 	cmp	r2, r1
 e00fee8:	e1a01006 	mov	r1, r6
 e00feec:	85832000 	strhi	r2, [r3]
 e00fef0:	eb0000b8 	bl	e0101d8 <vListInsertEnd>
 e00fef4:	eaffffe1 	b	e00fe80 <vTaskPriorityDisinheritAfterTimeout+0xa4>
 e00fef8:	e3050878 	movw	r0, #22648	; 0x5878
 e00fefc:	e3400e01 	movt	r0, #3585	; 0xe01
 e00ff00:	e301120b 	movw	r1, #4619	; 0x120b
 e00ff04:	ebffe735 	bl	e009be0 <vAssertCalled>
 e00ff08:	eaffffce 	b	e00fe48 <vTaskPriorityDisinheritAfterTimeout+0x6c>
 e00ff0c:	e3033f10 	movw	r3, #16144	; 0x3f10
 e00ff10:	e346300a 	movt	r3, #24586	; 0x600a
 e00ff14:	e1a01006 	mov	r1, r6
 e00ff18:	e5930000 	ldr	r0, [r3]
 e00ff1c:	eb0000ad 	bl	e0101d8 <vListInsertEnd>
 e00ff20:	eaffffd6 	b	e00fe80 <vTaskPriorityDisinheritAfterTimeout+0xa4>

0e00ff24 <prvIdleTask>:
 e00ff24:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e00ff28:	e3044004 	movw	r4, #16388	; 0x4004
 e00ff2c:	e346400a 	movt	r4, #24586	; 0x600a
 e00ff30:	e3047090 	movw	r7, #16528	; 0x4090
 e00ff34:	e346700a 	movt	r7, #24586	; 0x600a
 e00ff38:	e3046000 	movw	r6, #16384	; 0x4000
 e00ff3c:	e346600a 	movt	r6, #24586	; 0x600a
 e00ff40:	e3038f14 	movw	r8, #16148	; 0x3f14
 e00ff44:	e346800a 	movt	r8, #24586	; 0x600a
 e00ff48:	e3049064 	movw	r9, #16484	; 0x4064
 e00ff4c:	e346900a 	movt	r9, #24586	; 0x600a
 e00ff50:	e304a008 	movw	sl, #16392	; 0x4008
 e00ff54:	e346a00a 	movt	sl, #24586	; 0x600a
 e00ff58:	ea000013 	b	e00ffac <prvIdleTask+0x88>
 e00ff5c:	ebfffa2a 	bl	e00e80c <vTaskEnterCritical>
 e00ff60:	e5943000 	ldr	r3, [r4]
 e00ff64:	e3530000 	cmp	r3, #0
 e00ff68:	0a00000e 	beq	e00ffa8 <prvIdleTask+0x84>
 e00ff6c:	e597300c 	ldr	r3, [r7, #12]
 e00ff70:	e593500c 	ldr	r5, [r3, #12]
 e00ff74:	e2850004 	add	r0, r5, #4
 e00ff78:	e5953034 	ldr	r3, [r5, #52]	; 0x34
 e00ff7c:	e3730001 	cmn	r3, #1
 e00ff80:	1a000022 	bne	e010010 <prvIdleTask+0xec>
 e00ff84:	eb0000b4 	bl	e01025c <uxListRemove>
 e00ff88:	e5963000 	ldr	r3, [r6]
 e00ff8c:	e1a00005 	mov	r0, r5
 e00ff90:	e2433001 	sub	r3, r3, #1
 e00ff94:	e5863000 	str	r3, [r6]
 e00ff98:	e5943000 	ldr	r3, [r4]
 e00ff9c:	e2433001 	sub	r3, r3, #1
 e00ffa0:	e5843000 	str	r3, [r4]
 e00ffa4:	ebfff6b5 	bl	e00da80 <prvDeleteTCB>
 e00ffa8:	ebfffa32 	bl	e00e878 <vTaskExitCritical>
 e00ffac:	e5943000 	ldr	r3, [r4]
 e00ffb0:	e3530000 	cmp	r3, #0
 e00ffb4:	1affffe8 	bne	e00ff5c <prvIdleTask+0x38>
 e00ffb8:	e5983000 	ldr	r3, [r8]
 e00ffbc:	e3530000 	cmp	r3, #0
 e00ffc0:	0a000000 	beq	e00ffc8 <prvIdleTask+0xa4>
 e00ffc4:	ef000000 	svc	0x00000000
 e00ffc8:	eb000853 	bl	e01211c <ulPortGetCoreId>
 e00ffcc:	e3500000 	cmp	r0, #0
 e00ffd0:	1a000010 	bne	e010018 <prvIdleTask+0xf4>
 e00ffd4:	ebfff764 	bl	e00dd6c <prvGetExpectedIdleTime>
 e00ffd8:	e3500001 	cmp	r0, #1
 e00ffdc:	9afffff2 	bls	e00ffac <prvIdleTask+0x88>
 e00ffe0:	e5993000 	ldr	r3, [r9]
 e00ffe4:	e3530000 	cmp	r3, #0
 e00ffe8:	1a00000d 	bne	e010024 <prvIdleTask+0x100>
 e00ffec:	ebfff75e 	bl	e00dd6c <prvGetExpectedIdleTime>
 e00fff0:	e3500001 	cmp	r0, #1
 e00fff4:	9a000000 	bls	e00fffc <prvIdleTask+0xd8>
 e00fff8:	eb0008a0 	bl	e012280 <vPortSuppressTicksAndSleep>
 e00fffc:	e5993000 	ldr	r3, [r9]
 e010000:	e3530000 	cmp	r3, #0
 e010004:	0affffe8 	beq	e00ffac <prvIdleTask+0x88>
 e010008:	ebfffd5f 	bl	e00f58c <xTaskResumeAll.part.0>
 e01000c:	eaffffe6 	b	e00ffac <prvIdleTask+0x88>
 e010010:	ebfffa18 	bl	e00e878 <vTaskExitCritical>
 e010014:	eaffffe7 	b	e00ffb8 <prvIdleTask+0x94>
 e010018:	e3e00000 	mvn	r0, #0
 e01001c:	eb000897 	bl	e012280 <vPortSuppressTicksAndSleep>
 e010020:	eaffffe1 	b	e00ffac <prvIdleTask+0x88>
 e010024:	ebfff9f8 	bl	e00e80c <vTaskEnterCritical>
 e010028:	e59a3000 	ldr	r3, [sl]
 e01002c:	e2833001 	add	r3, r3, #1
 e010030:	e58a3000 	str	r3, [sl]
 e010034:	ebfffa0f 	bl	e00e878 <vTaskExitCritical>
 e010038:	eaffffeb 	b	e00ffec <prvIdleTask+0xc8>

0e01003c <vTaskSuspendAll>:
 e01003c:	e3043064 	movw	r3, #16484	; 0x4064
 e010040:	e346300a 	movt	r3, #24586	; 0x600a
 e010044:	e5933000 	ldr	r3, [r3]
 e010048:	e3530000 	cmp	r3, #0
 e01004c:	012fff1e 	bxeq	lr
 e010050:	e92d4010 	push	{r4, lr}
 e010054:	ebfff9ec 	bl	e00e80c <vTaskEnterCritical>
 e010058:	e3043008 	movw	r3, #16392	; 0x4008
 e01005c:	e346300a 	movt	r3, #24586	; 0x600a
 e010060:	e5932000 	ldr	r2, [r3]
 e010064:	e2822001 	add	r2, r2, #1
 e010068:	e5832000 	str	r2, [r3]
 e01006c:	e8bd4010 	pop	{r4, lr}
 e010070:	eafffa00 	b	e00e878 <vTaskExitCritical>

0e010074 <vTaskDelay>:
 e010074:	e92d4070 	push	{r4, r5, r6, lr}
 e010078:	e2504000 	subs	r4, r0, #0
 e01007c:	0a00000a 	beq	e0100ac <vTaskDelay+0x38>
 e010080:	e3045064 	movw	r5, #16484	; 0x4064
 e010084:	e346500a 	movt	r5, #24586	; 0x600a
 e010088:	e5953000 	ldr	r3, [r5]
 e01008c:	e3530000 	cmp	r3, #0
 e010090:	1a000017 	bne	e0100f4 <vTaskDelay+0x80>
 e010094:	e3a01000 	mov	r1, #0
 e010098:	e1a00004 	mov	r0, r4
 e01009c:	ebfffbe9 	bl	e00f048 <prvAddCurrentTaskToDelayedList>
 e0100a0:	e5953000 	ldr	r3, [r5]
 e0100a4:	e3530000 	cmp	r3, #0
 e0100a8:	1a00000d 	bne	e0100e4 <vTaskDelay+0x70>
 e0100ac:	eb0007ff 	bl	e0120b0 <ulPortInterruptLock>
 e0100b0:	e1a04000 	mov	r4, r0
 e0100b4:	eb000818 	bl	e01211c <ulPortGetCoreId>
 e0100b8:	e3033f00 	movw	r3, #16128	; 0x3f00
 e0100bc:	e346300a 	movt	r3, #24586	; 0x600a
 e0100c0:	e1a02000 	mov	r2, r0
 e0100c4:	e1a00004 	mov	r0, r4
 e0100c8:	e7934102 	ldr	r4, [r3, r2, lsl #2]
 e0100cc:	eb0007fc 	bl	e0120c4 <ulPortInterruptUnLock>
 e0100d0:	e5943058 	ldr	r3, [r4, #88]	; 0x58
 e0100d4:	e3530000 	cmp	r3, #0
 e0100d8:	1a00000d 	bne	e010114 <vTaskDelay+0xa0>
 e0100dc:	ef000000 	svc	0x00000000
 e0100e0:	e8bd8070 	pop	{r4, r5, r6, pc}
 e0100e4:	ebfffd28 	bl	e00f58c <xTaskResumeAll.part.0>
 e0100e8:	e3500000 	cmp	r0, #0
 e0100ec:	18bd8070 	popne	{r4, r5, r6, pc}
 e0100f0:	eaffffed 	b	e0100ac <vTaskDelay+0x38>
 e0100f4:	ebfff9c4 	bl	e00e80c <vTaskEnterCritical>
 e0100f8:	e3043008 	movw	r3, #16392	; 0x4008
 e0100fc:	e346300a 	movt	r3, #24586	; 0x600a
 e010100:	e5932000 	ldr	r2, [r3]
 e010104:	e2822001 	add	r2, r2, #1
 e010108:	e5832000 	str	r2, [r3]
 e01010c:	ebfff9d9 	bl	e00e878 <vTaskExitCritical>
 e010110:	eaffffdf 	b	e010094 <vTaskDelay+0x20>
 e010114:	eb000800 	bl	e01211c <ulPortGetCoreId>
 e010118:	e30430a8 	movw	r3, #16552	; 0x40a8
 e01011c:	e346300a 	movt	r3, #24586	; 0x600a
 e010120:	e3a02001 	mov	r2, #1
 e010124:	e7832100 	str	r2, [r3, r0, lsl #2]
 e010128:	e8bd8070 	pop	{r4, r5, r6, pc}

0e01012c <pvTaskIncrementMutexHeldCount>:
 e01012c:	e92d4070 	push	{r4, r5, r6, lr}
 e010130:	eb0007de 	bl	e0120b0 <ulPortInterruptLock>
 e010134:	e3034f00 	movw	r4, #16128	; 0x3f00
 e010138:	e346400a 	movt	r4, #24586	; 0x600a
 e01013c:	e1a05000 	mov	r5, r0
 e010140:	eb0007f5 	bl	e01211c <ulPortGetCoreId>
 e010144:	e1a03000 	mov	r3, r0
 e010148:	e1a00005 	mov	r0, r5
 e01014c:	e7945103 	ldr	r5, [r4, r3, lsl #2]
 e010150:	eb0007db 	bl	e0120c4 <ulPortInterruptUnLock>
 e010154:	e3550000 	cmp	r5, #0
 e010158:	0a000009 	beq	e010184 <pvTaskIncrementMutexHeldCount+0x58>
 e01015c:	eb0007d3 	bl	e0120b0 <ulPortInterruptLock>
 e010160:	e1a05000 	mov	r5, r0
 e010164:	eb0007ec 	bl	e01211c <ulPortGetCoreId>
 e010168:	e1a03000 	mov	r3, r0
 e01016c:	e1a00005 	mov	r0, r5
 e010170:	e7945103 	ldr	r5, [r4, r3, lsl #2]
 e010174:	eb0007d2 	bl	e0120c4 <ulPortInterruptUnLock>
 e010178:	e5953068 	ldr	r3, [r5, #104]	; 0x68
 e01017c:	e2833001 	add	r3, r3, #1
 e010180:	e5853068 	str	r3, [r5, #104]	; 0x68
 e010184:	eb0007c9 	bl	e0120b0 <ulPortInterruptLock>
 e010188:	e1a05000 	mov	r5, r0
 e01018c:	eb0007e2 	bl	e01211c <ulPortGetCoreId>
 e010190:	e1a03000 	mov	r3, r0
 e010194:	e1a00005 	mov	r0, r5
 e010198:	e7944103 	ldr	r4, [r4, r3, lsl #2]
 e01019c:	eb0007c8 	bl	e0120c4 <ulPortInterruptUnLock>
 e0101a0:	e1a00004 	mov	r0, r4
 e0101a4:	e8bd8070 	pop	{r4, r5, r6, pc}

0e0101a8 <vListInitialise>:
 e0101a8:	e2803008 	add	r3, r0, #8
 e0101ac:	e3a02000 	mov	r2, #0
 e0101b0:	e3e01000 	mvn	r1, #0
 e0101b4:	e5803004 	str	r3, [r0, #4]
 e0101b8:	e5801008 	str	r1, [r0, #8]
 e0101bc:	e580300c 	str	r3, [r0, #12]
 e0101c0:	e5803010 	str	r3, [r0, #16]
 e0101c4:	e5802000 	str	r2, [r0]
 e0101c8:	e12fff1e 	bx	lr

0e0101cc <vListInitialiseItem>:
 e0101cc:	e3a03000 	mov	r3, #0
 e0101d0:	e5803010 	str	r3, [r0, #16]
 e0101d4:	e12fff1e 	bx	lr

0e0101d8 <vListInsertEnd>:
 e0101d8:	e5903004 	ldr	r3, [r0, #4]
 e0101dc:	e5813004 	str	r3, [r1, #4]
 e0101e0:	e5932008 	ldr	r2, [r3, #8]
 e0101e4:	e5812008 	str	r2, [r1, #8]
 e0101e8:	e5821004 	str	r1, [r2, #4]
 e0101ec:	e5831008 	str	r1, [r3, #8]
 e0101f0:	e5810010 	str	r0, [r1, #16]
 e0101f4:	e5903000 	ldr	r3, [r0]
 e0101f8:	e2833001 	add	r3, r3, #1
 e0101fc:	e5803000 	str	r3, [r0]
 e010200:	e12fff1e 	bx	lr

0e010204 <vListInsert>:
 e010204:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e010208:	e591e000 	ldr	lr, [r1]
 e01020c:	e37e0001 	cmn	lr, #1
 e010210:	12803008 	addne	r3, r0, #8
 e010214:	0a00000d 	beq	e010250 <vListInsert+0x4c>
 e010218:	e1a0c003 	mov	ip, r3
 e01021c:	e5933004 	ldr	r3, [r3, #4]
 e010220:	e5932000 	ldr	r2, [r3]
 e010224:	e152000e 	cmp	r2, lr
 e010228:	9afffffa 	bls	e010218 <vListInsert+0x14>
 e01022c:	e5813004 	str	r3, [r1, #4]
 e010230:	e5831008 	str	r1, [r3, #8]
 e010234:	e581c008 	str	ip, [r1, #8]
 e010238:	e58c1004 	str	r1, [ip, #4]
 e01023c:	e5810010 	str	r0, [r1, #16]
 e010240:	e5903000 	ldr	r3, [r0]
 e010244:	e2833001 	add	r3, r3, #1
 e010248:	e5803000 	str	r3, [r0]
 e01024c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
 e010250:	e590c010 	ldr	ip, [r0, #16]
 e010254:	e59c3004 	ldr	r3, [ip, #4]
 e010258:	eafffff3 	b	e01022c <vListInsert+0x28>

0e01025c <uxListRemove>:
 e01025c:	e9900006 	ldmib	r0, {r1, r2}
 e010260:	e5903010 	ldr	r3, [r0, #16]
 e010264:	e5812008 	str	r2, [r1, #8]
 e010268:	e5901004 	ldr	r1, [r0, #4]
 e01026c:	e5821004 	str	r1, [r2, #4]
 e010270:	e5932004 	ldr	r2, [r3, #4]
 e010274:	e1520000 	cmp	r2, r0
 e010278:	05902008 	ldreq	r2, [r0, #8]
 e01027c:	05832004 	streq	r2, [r3, #4]
 e010280:	e3a02000 	mov	r2, #0
 e010284:	e5802010 	str	r2, [r0, #16]
 e010288:	e5932000 	ldr	r2, [r3]
 e01028c:	e2422001 	sub	r2, r2, #1
 e010290:	e5832000 	str	r2, [r3]
 e010294:	e5930000 	ldr	r0, [r3]
 e010298:	e12fff1e 	bx	lr

0e01029c <prvCopyDataToQueue>:
 e01029c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e0102a0:	e1a04000 	mov	r4, r0
 e0102a4:	e1a05002 	mov	r5, r2
 e0102a8:	e1a07001 	mov	r7, r1
 e0102ac:	ebfff956 	bl	e00e80c <vTaskEnterCritical>
 e0102b0:	e5942040 	ldr	r2, [r4, #64]	; 0x40
 e0102b4:	e5946038 	ldr	r6, [r4, #56]	; 0x38
 e0102b8:	e3520000 	cmp	r2, #0
 e0102bc:	1a000008 	bne	e0102e4 <prvCopyDataToQueue+0x48>
 e0102c0:	e5947000 	ldr	r7, [r4]
 e0102c4:	e2866001 	add	r6, r6, #1
 e0102c8:	e3570000 	cmp	r7, #0
 e0102cc:	11a05002 	movne	r5, r2
 e0102d0:	0a000023 	beq	e010364 <prvCopyDataToQueue+0xc8>
 e0102d4:	e5846038 	str	r6, [r4, #56]	; 0x38
 e0102d8:	ebfff966 	bl	e00e878 <vTaskExitCritical>
 e0102dc:	e1a00005 	mov	r0, r5
 e0102e0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e0102e4:	e1a01007 	mov	r1, r7
 e0102e8:	e3550000 	cmp	r5, #0
 e0102ec:	1a00000b 	bne	e010320 <prvCopyDataToQueue+0x84>
 e0102f0:	e5940004 	ldr	r0, [r4, #4]
 e0102f4:	ebfff31c 	bl	e00cf6c <__wrap_memcpy>
 e0102f8:	e5943004 	ldr	r3, [r4, #4]
 e0102fc:	e5942040 	ldr	r2, [r4, #64]	; 0x40
 e010300:	e2866001 	add	r6, r6, #1
 e010304:	e0833002 	add	r3, r3, r2
 e010308:	e5942008 	ldr	r2, [r4, #8]
 e01030c:	e5843004 	str	r3, [r4, #4]
 e010310:	e1530002 	cmp	r3, r2
 e010314:	25943000 	ldrcs	r3, [r4]
 e010318:	25843004 	strcs	r3, [r4, #4]
 e01031c:	eaffffec 	b	e0102d4 <prvCopyDataToQueue+0x38>
 e010320:	e594000c 	ldr	r0, [r4, #12]
 e010324:	ebfff310 	bl	e00cf6c <__wrap_memcpy>
 e010328:	e5942040 	ldr	r2, [r4, #64]	; 0x40
 e01032c:	e594300c 	ldr	r3, [r4, #12]
 e010330:	e2621000 	rsb	r1, r2, #0
 e010334:	e0433002 	sub	r3, r3, r2
 e010338:	e5942000 	ldr	r2, [r4]
 e01033c:	e584300c 	str	r3, [r4, #12]
 e010340:	e1530002 	cmp	r3, r2
 e010344:	35943008 	ldrcc	r3, [r4, #8]
 e010348:	30833001 	addcc	r3, r3, r1
 e01034c:	3584300c 	strcc	r3, [r4, #12]
 e010350:	e3550002 	cmp	r5, #2
 e010354:	0a000007 	beq	e010378 <prvCopyDataToQueue+0xdc>
 e010358:	e2866001 	add	r6, r6, #1
 e01035c:	e3a05000 	mov	r5, #0
 e010360:	eaffffdb 	b	e0102d4 <prvCopyDataToQueue+0x38>
 e010364:	e5940008 	ldr	r0, [r4, #8]
 e010368:	ebfffe4e 	bl	e00fca8 <xTaskPriorityDisinherit>
 e01036c:	e5847008 	str	r7, [r4, #8]
 e010370:	e1a05000 	mov	r5, r0
 e010374:	eaffffd6 	b	e0102d4 <prvCopyDataToQueue+0x38>
 e010378:	e3560001 	cmp	r6, #1
 e01037c:	33a06001 	movcc	r6, #1
 e010380:	e3a05000 	mov	r5, #0
 e010384:	eaffffd2 	b	e0102d4 <prvCopyDataToQueue+0x38>

0e010388 <prvNotifyQueueSetContainer>:
 e010388:	e92d4070 	push	{r4, r5, r6, lr}
 e01038c:	e1a05001 	mov	r5, r1
 e010390:	e24dd008 	sub	sp, sp, #8
 e010394:	e5904048 	ldr	r4, [r0, #72]	; 0x48
 e010398:	e58d0004 	str	r0, [sp, #4]
 e01039c:	e3540000 	cmp	r4, #0
 e0103a0:	0a000021 	beq	e01042c <prvNotifyQueueSetContainer+0xa4>
 e0103a4:	e5942038 	ldr	r2, [r4, #56]	; 0x38
 e0103a8:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
 e0103ac:	e1520003 	cmp	r2, r3
 e0103b0:	2a000025 	bcs	e01044c <prvNotifyQueueSetContainer+0xc4>
 e0103b4:	e5942038 	ldr	r2, [r4, #56]	; 0x38
 e0103b8:	e1530002 	cmp	r3, r2
 e0103bc:	93a05000 	movls	r5, #0
 e0103c0:	8a000002 	bhi	e0103d0 <prvNotifyQueueSetContainer+0x48>
 e0103c4:	e1a00005 	mov	r0, r5
 e0103c8:	e28dd008 	add	sp, sp, #8
 e0103cc:	e8bd8070 	pop	{r4, r5, r6, pc}
 e0103d0:	e5d46045 	ldrb	r6, [r4, #69]	; 0x45
 e0103d4:	e1a02005 	mov	r2, r5
 e0103d8:	e28d1004 	add	r1, sp, #4
 e0103dc:	e1a00004 	mov	r0, r4
 e0103e0:	e6af6076 	sxtb	r6, r6
 e0103e4:	ebffffac 	bl	e01029c <prvCopyDataToQueue>
 e0103e8:	e3760001 	cmn	r6, #1
 e0103ec:	e1a05000 	mov	r5, r0
 e0103f0:	0a000005 	beq	e01040c <prvNotifyQueueSetContainer+0x84>
 e0103f4:	e2866001 	add	r6, r6, #1
 e0103f8:	e1a00005 	mov	r0, r5
 e0103fc:	e6af6076 	sxtb	r6, r6
 e010400:	e5c46045 	strb	r6, [r4, #69]	; 0x45
 e010404:	e28dd008 	add	sp, sp, #8
 e010408:	e8bd8070 	pop	{r4, r5, r6, pc}
 e01040c:	e5943024 	ldr	r3, [r4, #36]	; 0x24
 e010410:	e3530000 	cmp	r3, #0
 e010414:	0affffea 	beq	e0103c4 <prvNotifyQueueSetContainer+0x3c>
 e010418:	e2840024 	add	r0, r4, #36	; 0x24
 e01041c:	ebfffd2c 	bl	e00f8d4 <xTaskRemoveFromEventList>
 e010420:	e3500000 	cmp	r0, #0
 e010424:	13a05001 	movne	r5, #1
 e010428:	eaffffe5 	b	e0103c4 <prvNotifyQueueSetContainer+0x3c>
 e01042c:	e3050910 	movw	r0, #22800	; 0x5910
 e010430:	e3400e01 	movt	r0, #3585	; 0xe01
 e010434:	e30019eb 	movw	r1, #2539	; 0x9eb
 e010438:	ebffe5e8 	bl	e009be0 <vAssertCalled>
 e01043c:	e5942038 	ldr	r2, [r4, #56]	; 0x38
 e010440:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
 e010444:	e1520003 	cmp	r2, r3
 e010448:	3affffd9 	bcc	e0103b4 <prvNotifyQueueSetContainer+0x2c>
 e01044c:	e30019ec 	movw	r1, #2540	; 0x9ec
 e010450:	e3050910 	movw	r0, #22800	; 0x5910
 e010454:	e3400e01 	movt	r0, #3585	; 0xe01
 e010458:	ebffe5e0 	bl	e009be0 <vAssertCalled>
 e01045c:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
 e010460:	eaffffd3 	b	e0103b4 <prvNotifyQueueSetContainer+0x2c>

0e010464 <prvUnlockQueue>:
 e010464:	e92d4070 	push	{r4, r5, r6, lr}
 e010468:	e1a05000 	mov	r5, r0
 e01046c:	ebfff8e6 	bl	e00e80c <vTaskEnterCritical>
 e010470:	e5d54045 	ldrb	r4, [r5, #69]	; 0x45
 e010474:	e6af4074 	sxtb	r4, r4
 e010478:	e3540000 	cmp	r4, #0
 e01047c:	da000019 	ble	e0104e8 <prvUnlockQueue+0x84>
 e010480:	e2856024 	add	r6, r5, #36	; 0x24
 e010484:	ea000006 	b	e0104a4 <prvUnlockQueue+0x40>
 e010488:	ebffffbe 	bl	e010388 <prvNotifyQueueSetContainer>
 e01048c:	e3500000 	cmp	r0, #0
 e010490:	1a00000f 	bne	e0104d4 <prvUnlockQueue+0x70>
 e010494:	e2444001 	sub	r4, r4, #1
 e010498:	e6af4074 	sxtb	r4, r4
 e01049c:	e3540000 	cmp	r4, #0
 e0104a0:	0a000010 	beq	e0104e8 <prvUnlockQueue+0x84>
 e0104a4:	e5953048 	ldr	r3, [r5, #72]	; 0x48
 e0104a8:	e3a01000 	mov	r1, #0
 e0104ac:	e1a00005 	mov	r0, r5
 e0104b0:	e1530001 	cmp	r3, r1
 e0104b4:	1afffff3 	bne	e010488 <prvUnlockQueue+0x24>
 e0104b8:	e5953024 	ldr	r3, [r5, #36]	; 0x24
 e0104bc:	e1a00006 	mov	r0, r6
 e0104c0:	e3530000 	cmp	r3, #0
 e0104c4:	0a000007 	beq	e0104e8 <prvUnlockQueue+0x84>
 e0104c8:	ebfffd01 	bl	e00f8d4 <xTaskRemoveFromEventList>
 e0104cc:	e3500000 	cmp	r0, #0
 e0104d0:	0affffef 	beq	e010494 <prvUnlockQueue+0x30>
 e0104d4:	e2444001 	sub	r4, r4, #1
 e0104d8:	ebfff878 	bl	e00e6c0 <vTaskMissedYield>
 e0104dc:	e6af4074 	sxtb	r4, r4
 e0104e0:	e3540000 	cmp	r4, #0
 e0104e4:	1affffee 	bne	e0104a4 <prvUnlockQueue+0x40>
 e0104e8:	e3e03000 	mvn	r3, #0
 e0104ec:	e5c53045 	strb	r3, [r5, #69]	; 0x45
 e0104f0:	ebfff8e0 	bl	e00e878 <vTaskExitCritical>
 e0104f4:	ebfff8c4 	bl	e00e80c <vTaskEnterCritical>
 e0104f8:	e5d54044 	ldrb	r4, [r5, #68]	; 0x44
 e0104fc:	e6af4074 	sxtb	r4, r4
 e010500:	e3540000 	cmp	r4, #0
 e010504:	da000011 	ble	e010550 <prvUnlockQueue+0xec>
 e010508:	e2856010 	add	r6, r5, #16
 e01050c:	ea000003 	b	e010520 <prvUnlockQueue+0xbc>
 e010510:	e2444001 	sub	r4, r4, #1
 e010514:	e6af4074 	sxtb	r4, r4
 e010518:	e3540000 	cmp	r4, #0
 e01051c:	0a00000b 	beq	e010550 <prvUnlockQueue+0xec>
 e010520:	e5953010 	ldr	r3, [r5, #16]
 e010524:	e1a00006 	mov	r0, r6
 e010528:	e3530000 	cmp	r3, #0
 e01052c:	0a000007 	beq	e010550 <prvUnlockQueue+0xec>
 e010530:	ebfffce7 	bl	e00f8d4 <xTaskRemoveFromEventList>
 e010534:	e3500000 	cmp	r0, #0
 e010538:	0afffff4 	beq	e010510 <prvUnlockQueue+0xac>
 e01053c:	e2444001 	sub	r4, r4, #1
 e010540:	ebfff85e 	bl	e00e6c0 <vTaskMissedYield>
 e010544:	e6af4074 	sxtb	r4, r4
 e010548:	e3540000 	cmp	r4, #0
 e01054c:	1afffff3 	bne	e010520 <prvUnlockQueue+0xbc>
 e010550:	e3e03000 	mvn	r3, #0
 e010554:	e5c53044 	strb	r3, [r5, #68]	; 0x44
 e010558:	e8bd4070 	pop	{r4, r5, r6, lr}
 e01055c:	eafff8c5 	b	e00e878 <vTaskExitCritical>

0e010560 <xQueueGenericReset>:
 e010560:	e92d4070 	push	{r4, r5, r6, lr}
 e010564:	e1a05001 	mov	r5, r1
 e010568:	e2504000 	subs	r4, r0, #0
 e01056c:	0a000022 	beq	e0105fc <xQueueGenericReset+0x9c>
 e010570:	ebfff8a5 	bl	e00e80c <vTaskEnterCritical>
 e010574:	e5941040 	ldr	r1, [r4, #64]	; 0x40
 e010578:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
 e01057c:	e5942000 	ldr	r2, [r4]
 e010580:	e5842004 	str	r2, [r4, #4]
 e010584:	e3550000 	cmp	r5, #0
 e010588:	e0030193 	mul	r3, r3, r1
 e01058c:	e0431001 	sub	r1, r3, r1
 e010590:	e0823003 	add	r3, r2, r3
 e010594:	e0822001 	add	r2, r2, r1
 e010598:	e5843008 	str	r3, [r4, #8]
 e01059c:	e3e01000 	mvn	r1, #0
 e0105a0:	e3a03000 	mov	r3, #0
 e0105a4:	e584200c 	str	r2, [r4, #12]
 e0105a8:	e5843038 	str	r3, [r4, #56]	; 0x38
 e0105ac:	e5c41044 	strb	r1, [r4, #68]	; 0x44
 e0105b0:	e5c41045 	strb	r1, [r4, #69]	; 0x45
 e0105b4:	1a00000b 	bne	e0105e8 <xQueueGenericReset+0x88>
 e0105b8:	e5943010 	ldr	r3, [r4, #16]
 e0105bc:	e3530000 	cmp	r3, #0
 e0105c0:	1a000002 	bne	e0105d0 <xQueueGenericReset+0x70>
 e0105c4:	ebfff8ab 	bl	e00e878 <vTaskExitCritical>
 e0105c8:	e3a00001 	mov	r0, #1
 e0105cc:	e8bd8070 	pop	{r4, r5, r6, pc}
 e0105d0:	e2840010 	add	r0, r4, #16
 e0105d4:	ebfffcbe 	bl	e00f8d4 <xTaskRemoveFromEventList>
 e0105d8:	e3500000 	cmp	r0, #0
 e0105dc:	0afffff8 	beq	e0105c4 <xQueueGenericReset+0x64>
 e0105e0:	ebfff874 	bl	e00e7b8 <vTaskYieldWithinAPI>
 e0105e4:	eafffff6 	b	e0105c4 <xQueueGenericReset+0x64>
 e0105e8:	e2840010 	add	r0, r4, #16
 e0105ec:	ebfffeed 	bl	e0101a8 <vListInitialise>
 e0105f0:	e2840024 	add	r0, r4, #36	; 0x24
 e0105f4:	ebfffeeb 	bl	e0101a8 <vListInitialise>
 e0105f8:	eafffff1 	b	e0105c4 <xQueueGenericReset+0x64>
 e0105fc:	e3050910 	movw	r0, #22800	; 0x5910
 e010600:	e3400e01 	movt	r0, #3585	; 0xe01
 e010604:	e3001103 	movw	r1, #259	; 0x103
 e010608:	ebffe574 	bl	e009be0 <vAssertCalled>
 e01060c:	eaffffd7 	b	e010570 <xQueueGenericReset+0x10>

0e010610 <xQueueGenericCreateStatic>:
 e010610:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e010614:	e1a06001 	mov	r6, r1
 e010618:	e24dd008 	sub	sp, sp, #8
 e01061c:	e1a05002 	mov	r5, r2
 e010620:	e1a04003 	mov	r4, r3
 e010624:	e5dd7020 	ldrb	r7, [sp, #32]
 e010628:	e2508000 	subs	r8, r0, #0
 e01062c:	0a000024 	beq	e0106c4 <xQueueGenericCreateStatic+0xb4>
 e010630:	e3540000 	cmp	r4, #0
 e010634:	0a000028 	beq	e0106dc <xQueueGenericCreateStatic+0xcc>
 e010638:	e2563000 	subs	r3, r6, #0
 e01063c:	13a03001 	movne	r3, #1
 e010640:	e3550000 	cmp	r5, #0
 e010644:	03833001 	orreq	r3, r3, #1
 e010648:	e3530000 	cmp	r3, #0
 e01064c:	0a000027 	beq	e0106f0 <xQueueGenericCreateStatic+0xe0>
 e010650:	e16f3f16 	clz	r3, r6
 e010654:	e1a032a3 	lsr	r3, r3, #5
 e010658:	e3550000 	cmp	r5, #0
 e01065c:	13833001 	orrne	r3, r3, #1
 e010660:	e3530000 	cmp	r3, #0
 e010664:	0a000026 	beq	e010704 <xQueueGenericCreateStatic+0xf4>
 e010668:	e3a03054 	mov	r3, #84	; 0x54
 e01066c:	e58d3004 	str	r3, [sp, #4]
 e010670:	e59d3004 	ldr	r3, [sp, #4]
 e010674:	e3530054 	cmp	r3, #84	; 0x54
 e010678:	1a000026 	bne	e010718 <xQueueGenericCreateStatic+0x108>
 e01067c:	e59d3004 	ldr	r3, [sp, #4]
 e010680:	e3540000 	cmp	r4, #0
 e010684:	0a00000b 	beq	e0106b8 <xQueueGenericCreateStatic+0xa8>
 e010688:	e3560000 	cmp	r6, #0
 e01068c:	01a05004 	moveq	r5, r4
 e010690:	e3a01001 	mov	r1, #1
 e010694:	e1a00004 	mov	r0, r4
 e010698:	e584803c 	str	r8, [r4, #60]	; 0x3c
 e01069c:	e5845000 	str	r5, [r4]
 e0106a0:	e5846040 	str	r6, [r4, #64]	; 0x40
 e0106a4:	e5c41046 	strb	r1, [r4, #70]	; 0x46
 e0106a8:	ebffffac 	bl	e010560 <xQueueGenericReset>
 e0106ac:	e3a03000 	mov	r3, #0
 e0106b0:	e5c47050 	strb	r7, [r4, #80]	; 0x50
 e0106b4:	e5843048 	str	r3, [r4, #72]	; 0x48
 e0106b8:	e1a00004 	mov	r0, r4
 e0106bc:	e28dd008 	add	sp, sp, #8
 e0106c0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e0106c4:	e3a01f4d 	mov	r1, #308	; 0x134
 e0106c8:	e3050910 	movw	r0, #22800	; 0x5910
 e0106cc:	e3400e01 	movt	r0, #3585	; 0xe01
 e0106d0:	ebffe542 	bl	e009be0 <vAssertCalled>
 e0106d4:	e3540000 	cmp	r4, #0
 e0106d8:	1affffd6 	bne	e010638 <xQueueGenericCreateStatic+0x28>
 e0106dc:	e3a01f4e 	mov	r1, #312	; 0x138
 e0106e0:	e3050910 	movw	r0, #22800	; 0x5910
 e0106e4:	e3400e01 	movt	r0, #3585	; 0xe01
 e0106e8:	ebffe53c 	bl	e009be0 <vAssertCalled>
 e0106ec:	eaffffd1 	b	e010638 <xQueueGenericCreateStatic+0x28>
 e0106f0:	e3a01f4f 	mov	r1, #316	; 0x13c
 e0106f4:	e3050910 	movw	r0, #22800	; 0x5910
 e0106f8:	e3400e01 	movt	r0, #3585	; 0xe01
 e0106fc:	ebffe537 	bl	e009be0 <vAssertCalled>
 e010700:	eaffffd8 	b	e010668 <xQueueGenericCreateStatic+0x58>
 e010704:	e3050910 	movw	r0, #22800	; 0x5910
 e010708:	e3400e01 	movt	r0, #3585	; 0xe01
 e01070c:	e300113d 	movw	r1, #317	; 0x13d
 e010710:	ebffe532 	bl	e009be0 <vAssertCalled>
 e010714:	eaffffd3 	b	e010668 <xQueueGenericCreateStatic+0x58>
 e010718:	e3050910 	movw	r0, #22800	; 0x5910
 e01071c:	e3400e01 	movt	r0, #3585	; 0xe01
 e010720:	e3001145 	movw	r1, #325	; 0x145
 e010724:	ebffe52d 	bl	e009be0 <vAssertCalled>
 e010728:	eaffffd3 	b	e01067c <xQueueGenericCreateStatic+0x6c>

0e01072c <xQueueGenericCreate>:
 e01072c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e010730:	e1a05001 	mov	r5, r1
 e010734:	e1a07002 	mov	r7, r2
 e010738:	e2506000 	subs	r6, r0, #0
 e01073c:	0a00001d 	beq	e0107b8 <xQueueGenericCreate+0x8c>
 e010740:	e3550000 	cmp	r5, #0
 e010744:	0a000012 	beq	e010794 <xQueueGenericCreate+0x68>
 e010748:	e0000695 	mul	r0, r5, r6
 e01074c:	e2800054 	add	r0, r0, #84	; 0x54
 e010750:	eb00053e 	bl	e011c50 <pvPortMalloc>
 e010754:	e2504000 	subs	r4, r0, #0
 e010758:	0a000013 	beq	e0107ac <xQueueGenericCreate+0x80>
 e01075c:	e3a03000 	mov	r3, #0
 e010760:	e5c43046 	strb	r3, [r4, #70]	; 0x46
 e010764:	e2843054 	add	r3, r4, #84	; 0x54
 e010768:	e5843000 	str	r3, [r4]
 e01076c:	e3a01001 	mov	r1, #1
 e010770:	e1a00004 	mov	r0, r4
 e010774:	e584603c 	str	r6, [r4, #60]	; 0x3c
 e010778:	e5845040 	str	r5, [r4, #64]	; 0x40
 e01077c:	ebffff77 	bl	e010560 <xQueueGenericReset>
 e010780:	e3a03000 	mov	r3, #0
 e010784:	e1a00004 	mov	r0, r4
 e010788:	e5c47050 	strb	r7, [r4, #80]	; 0x50
 e01078c:	e5843048 	str	r3, [r4, #72]	; 0x48
 e010790:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e010794:	e3a00054 	mov	r0, #84	; 0x54
 e010798:	eb00052c 	bl	e011c50 <pvPortMalloc>
 e01079c:	e2504000 	subs	r4, r0, #0
 e0107a0:	15c45046 	strbne	r5, [r4, #70]	; 0x46
 e0107a4:	15844000 	strne	r4, [r4]
 e0107a8:	1affffef 	bne	e01076c <xQueueGenericCreate+0x40>
 e0107ac:	e3a04000 	mov	r4, #0
 e0107b0:	e1a00004 	mov	r0, r4
 e0107b4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e0107b8:	e3050910 	movw	r0, #22800	; 0x5910
 e0107bc:	e3400e01 	movt	r0, #3585	; 0xe01
 e0107c0:	e300116e 	movw	r1, #366	; 0x16e
 e0107c4:	ebffe505 	bl	e009be0 <vAssertCalled>
 e0107c8:	eaffffdc 	b	e010740 <xQueueGenericCreate+0x14>

0e0107cc <xQueueGenericSend>:
 e0107cc:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 e0107d0:	e1a09001 	mov	r9, r1
 e0107d4:	e24dd014 	sub	sp, sp, #20
 e0107d8:	e1a08003 	mov	r8, r3
 e0107dc:	e2504000 	subs	r4, r0, #0
 e0107e0:	e58d2004 	str	r2, [sp, #4]
 e0107e4:	0a000078 	beq	e0109cc <xQueueGenericSend+0x200>
 e0107e8:	e3590000 	cmp	r9, #0
 e0107ec:	0a00007c 	beq	e0109e4 <xQueueGenericSend+0x218>
 e0107f0:	e3580002 	cmp	r8, #2
 e0107f4:	13a06000 	movne	r6, #0
 e0107f8:	11a07006 	movne	r7, r6
 e0107fc:	1a000005 	bne	e010818 <xQueueGenericSend+0x4c>
 e010800:	ea00005c 	b	e010978 <xQueueGenericSend+0x1ac>
 e010804:	ebfff81b 	bl	e00e878 <vTaskExitCritical>
 e010808:	e1a00004 	mov	r0, r4
 e01080c:	ebffff14 	bl	e010464 <prvUnlockQueue>
 e010810:	ebfffbce 	bl	e00f750 <xTaskResumeAll>
 e010814:	e3a06001 	mov	r6, #1
 e010818:	ebfff7fb 	bl	e00e80c <vTaskEnterCritical>
 e01081c:	e594c038 	ldr	ip, [r4, #56]	; 0x38
 e010820:	e594003c 	ldr	r0, [r4, #60]	; 0x3c
 e010824:	e15c0000 	cmp	ip, r0
 e010828:	3a000031 	bcc	e0108f4 <xQueueGenericSend+0x128>
 e01082c:	e59d5004 	ldr	r5, [sp, #4]
 e010830:	e3550000 	cmp	r5, #0
 e010834:	0a00003f 	beq	e010938 <xQueueGenericSend+0x16c>
 e010838:	e3560000 	cmp	r6, #0
 e01083c:	0a000027 	beq	e0108e0 <xQueueGenericSend+0x114>
 e010840:	ebfff80c 	bl	e00e878 <vTaskExitCritical>
 e010844:	ebfffdfc 	bl	e01003c <vTaskSuspendAll>
 e010848:	ebfff7ef 	bl	e00e80c <vTaskEnterCritical>
 e01084c:	e5d43044 	ldrb	r3, [r4, #68]	; 0x44
 e010850:	e35300ff 	cmp	r3, #255	; 0xff
 e010854:	05c47044 	strbeq	r7, [r4, #68]	; 0x44
 e010858:	e5d43045 	ldrb	r3, [r4, #69]	; 0x45
 e01085c:	e35300ff 	cmp	r3, #255	; 0xff
 e010860:	05c47045 	strbeq	r7, [r4, #69]	; 0x45
 e010864:	ebfff803 	bl	e00e878 <vTaskExitCritical>
 e010868:	e28d1004 	add	r1, sp, #4
 e01086c:	e28d0008 	add	r0, sp, #8
 e010870:	ebfffc63 	bl	e00fa04 <xTaskCheckForTimeOut>
 e010874:	e3500000 	cmp	r0, #0
 e010878:	1a000032 	bne	e010948 <xQueueGenericSend+0x17c>
 e01087c:	ebfff7e2 	bl	e00e80c <vTaskEnterCritical>
 e010880:	e5942038 	ldr	r2, [r4, #56]	; 0x38
 e010884:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
 e010888:	e1520003 	cmp	r2, r3
 e01088c:	1affffdc 	bne	e010804 <xQueueGenericSend+0x38>
 e010890:	e2845010 	add	r5, r4, #16
 e010894:	ebfff7f7 	bl	e00e878 <vTaskExitCritical>
 e010898:	e59d1004 	ldr	r1, [sp, #4]
 e01089c:	e1a00005 	mov	r0, r5
 e0108a0:	ebfffbb0 	bl	e00f768 <vTaskPlaceOnEventList>
 e0108a4:	ebfff7d8 	bl	e00e80c <vTaskEnterCritical>
 e0108a8:	e5942038 	ldr	r2, [r4, #56]	; 0x38
 e0108ac:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
 e0108b0:	e1520003 	cmp	r2, r3
 e0108b4:	0a00000c 	beq	e0108ec <xQueueGenericSend+0x120>
 e0108b8:	ebfff7ee 	bl	e00e878 <vTaskExitCritical>
 e0108bc:	e1a00005 	mov	r0, r5
 e0108c0:	ebfffbe1 	bl	e00f84c <vTaskPlaceRemoveFromEventList>
 e0108c4:	e1a00004 	mov	r0, r4
 e0108c8:	ebfffee5 	bl	e010464 <prvUnlockQueue>
 e0108cc:	ebfffb9f 	bl	e00f750 <xTaskResumeAll>
 e0108d0:	e3500000 	cmp	r0, #0
 e0108d4:	1affffce 	bne	e010814 <xQueueGenericSend+0x48>
 e0108d8:	ebfff7b6 	bl	e00e7b8 <vTaskYieldWithinAPI>
 e0108dc:	eaffffcc 	b	e010814 <xQueueGenericSend+0x48>
 e0108e0:	e28d0008 	add	r0, sp, #8
 e0108e4:	ebfff76d 	bl	e00e6a0 <vTaskInternalSetTimeOutState>
 e0108e8:	eaffffd4 	b	e010840 <xQueueGenericSend+0x74>
 e0108ec:	ebfff7e1 	bl	e00e878 <vTaskExitCritical>
 e0108f0:	eafffff3 	b	e0108c4 <xQueueGenericSend+0xf8>
 e0108f4:	e1a02008 	mov	r2, r8
 e0108f8:	e1a01009 	mov	r1, r9
 e0108fc:	e1a00004 	mov	r0, r4
 e010900:	e5943038 	ldr	r3, [r4, #56]	; 0x38
 e010904:	ebfffe64 	bl	e01029c <prvCopyDataToQueue>
 e010908:	e5943048 	ldr	r3, [r4, #72]	; 0x48
 e01090c:	e3530000 	cmp	r3, #0
 e010910:	1a000027 	bne	e0109b4 <xQueueGenericSend+0x1e8>
 e010914:	e5943024 	ldr	r3, [r4, #36]	; 0x24
 e010918:	e3530000 	cmp	r3, #0
 e01091c:	1a00000f 	bne	e010960 <xQueueGenericSend+0x194>
 e010920:	e3500000 	cmp	r0, #0
 e010924:	1a000011 	bne	e010970 <xQueueGenericSend+0x1a4>
 e010928:	ebfff7d2 	bl	e00e878 <vTaskExitCritical>
 e01092c:	e3a00001 	mov	r0, #1
 e010930:	e28dd014 	add	sp, sp, #20
 e010934:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
 e010938:	ebfff7ce 	bl	e00e878 <vTaskExitCritical>
 e01093c:	e1a00005 	mov	r0, r5
 e010940:	e28dd014 	add	sp, sp, #20
 e010944:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
 e010948:	e1a00004 	mov	r0, r4
 e01094c:	ebfffec4 	bl	e010464 <prvUnlockQueue>
 e010950:	ebfffb7e 	bl	e00f750 <xTaskResumeAll>
 e010954:	e3a00000 	mov	r0, #0
 e010958:	e28dd014 	add	sp, sp, #20
 e01095c:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
 e010960:	e2840024 	add	r0, r4, #36	; 0x24
 e010964:	ebfffbda 	bl	e00f8d4 <xTaskRemoveFromEventList>
 e010968:	e3500000 	cmp	r0, #0
 e01096c:	0affffed 	beq	e010928 <xQueueGenericSend+0x15c>
 e010970:	ebfff790 	bl	e00e7b8 <vTaskYieldWithinAPI>
 e010974:	eaffffeb 	b	e010928 <xQueueGenericSend+0x15c>
 e010978:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
 e01097c:	e3530001 	cmp	r3, #1
 e010980:	1a00001f 	bne	e010a04 <xQueueGenericSend+0x238>
 e010984:	ebfff7a0 	bl	e00e80c <vTaskEnterCritical>
 e010988:	e3a02002 	mov	r2, #2
 e01098c:	e1a01009 	mov	r1, r9
 e010990:	e1a00004 	mov	r0, r4
 e010994:	e5943038 	ldr	r3, [r4, #56]	; 0x38
 e010998:	e5945038 	ldr	r5, [r4, #56]	; 0x38
 e01099c:	ebfffe3e 	bl	e01029c <prvCopyDataToQueue>
 e0109a0:	e5943048 	ldr	r3, [r4, #72]	; 0x48
 e0109a4:	e3530000 	cmp	r3, #0
 e0109a8:	0affffd9 	beq	e010914 <xQueueGenericSend+0x148>
 e0109ac:	e3550000 	cmp	r5, #0
 e0109b0:	1affffdc 	bne	e010928 <xQueueGenericSend+0x15c>
 e0109b4:	e1a01008 	mov	r1, r8
 e0109b8:	e1a00004 	mov	r0, r4
 e0109bc:	ebfffe71 	bl	e010388 <prvNotifyQueueSetContainer>
 e0109c0:	e3500000 	cmp	r0, #0
 e0109c4:	0affffd7 	beq	e010928 <xQueueGenericSend+0x15c>
 e0109c8:	eaffffe8 	b	e010970 <xQueueGenericSend+0x1a4>
 e0109cc:	e3050910 	movw	r0, #22800	; 0x5910
 e0109d0:	e3400e01 	movt	r0, #3585	; 0xe01
 e0109d4:	e30012c6 	movw	r1, #710	; 0x2c6
 e0109d8:	ebffe480 	bl	e009be0 <vAssertCalled>
 e0109dc:	e3590000 	cmp	r9, #0
 e0109e0:	1affff82 	bne	e0107f0 <xQueueGenericSend+0x24>
 e0109e4:	e5943040 	ldr	r3, [r4, #64]	; 0x40
 e0109e8:	e3530000 	cmp	r3, #0
 e0109ec:	0affff7f 	beq	e0107f0 <xQueueGenericSend+0x24>
 e0109f0:	e3050910 	movw	r0, #22800	; 0x5910
 e0109f4:	e3400e01 	movt	r0, #3585	; 0xe01
 e0109f8:	e30012c7 	movw	r1, #711	; 0x2c7
 e0109fc:	ebffe477 	bl	e009be0 <vAssertCalled>
 e010a00:	eaffff7a 	b	e0107f0 <xQueueGenericSend+0x24>
 e010a04:	e3a01fb2 	mov	r1, #712	; 0x2c8
 e010a08:	e3050910 	movw	r0, #22800	; 0x5910
 e010a0c:	e3400e01 	movt	r0, #3585	; 0xe01
 e010a10:	ebffe472 	bl	e009be0 <vAssertCalled>
 e010a14:	eaffffda 	b	e010984 <xQueueGenericSend+0x1b8>

0e010a18 <xQueueGenericSendFromISR>:
 e010a18:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e010a1c:	e1a06001 	mov	r6, r1
 e010a20:	e1a07002 	mov	r7, r2
 e010a24:	e1a05003 	mov	r5, r3
 e010a28:	e2504000 	subs	r4, r0, #0
 e010a2c:	0a000023 	beq	e010ac0 <xQueueGenericSendFromISR+0xa8>
 e010a30:	e3560000 	cmp	r6, #0
 e010a34:	0a000027 	beq	e010ad8 <xQueueGenericSendFromISR+0xc0>
 e010a38:	e3550002 	cmp	r5, #2
 e010a3c:	0a00002d 	beq	e010af8 <xQueueGenericSendFromISR+0xe0>
 e010a40:	ebfff771 	bl	e00e80c <vTaskEnterCritical>
 e010a44:	e5942038 	ldr	r2, [r4, #56]	; 0x38
 e010a48:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
 e010a4c:	e1520003 	cmp	r2, r3
 e010a50:	23a05000 	movcs	r5, #0
 e010a54:	2a00000b 	bcs	e010a88 <xQueueGenericSendFromISR+0x70>
 e010a58:	e5d43045 	ldrb	r3, [r4, #69]	; 0x45
 e010a5c:	e1a01006 	mov	r1, r6
 e010a60:	e1a02005 	mov	r2, r5
 e010a64:	e6af6073 	sxtb	r6, r3
 e010a68:	e1a00004 	mov	r0, r4
 e010a6c:	ebfffe0a 	bl	e01029c <prvCopyDataToQueue>
 e010a70:	e3760001 	cmn	r6, #1
 e010a74:	0a000006 	beq	e010a94 <xQueueGenericSendFromISR+0x7c>
 e010a78:	e2866001 	add	r6, r6, #1
 e010a7c:	e3a05001 	mov	r5, #1
 e010a80:	e6af6076 	sxtb	r6, r6
 e010a84:	e5c46045 	strb	r6, [r4, #69]	; 0x45
 e010a88:	ebfff77a 	bl	e00e878 <vTaskExitCritical>
 e010a8c:	e1a00005 	mov	r0, r5
 e010a90:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e010a94:	e5943048 	ldr	r3, [r4, #72]	; 0x48
 e010a98:	e3530000 	cmp	r3, #0
 e010a9c:	0a00001b 	beq	e010b10 <xQueueGenericSendFromISR+0xf8>
 e010aa0:	e1a01005 	mov	r1, r5
 e010aa4:	e1a00004 	mov	r0, r4
 e010aa8:	ebfffe36 	bl	e010388 <prvNotifyQueueSetContainer>
 e010aac:	e3570000 	cmp	r7, #0
 e010ab0:	13500000 	cmpne	r0, #0
 e010ab4:	1a00001d 	bne	e010b30 <xQueueGenericSendFromISR+0x118>
 e010ab8:	e3a05001 	mov	r5, #1
 e010abc:	eafffff1 	b	e010a88 <xQueueGenericSendFromISR+0x70>
 e010ac0:	e3a01fdd 	mov	r1, #884	; 0x374
 e010ac4:	e3050910 	movw	r0, #22800	; 0x5910
 e010ac8:	e3400e01 	movt	r0, #3585	; 0xe01
 e010acc:	ebffe443 	bl	e009be0 <vAssertCalled>
 e010ad0:	e3560000 	cmp	r6, #0
 e010ad4:	1affffd7 	bne	e010a38 <xQueueGenericSendFromISR+0x20>
 e010ad8:	e5943040 	ldr	r3, [r4, #64]	; 0x40
 e010adc:	e3530000 	cmp	r3, #0
 e010ae0:	0affffd4 	beq	e010a38 <xQueueGenericSendFromISR+0x20>
 e010ae4:	e3001375 	movw	r1, #885	; 0x375
 e010ae8:	e3050910 	movw	r0, #22800	; 0x5910
 e010aec:	e3400e01 	movt	r0, #3585	; 0xe01
 e010af0:	ebffe43a 	bl	e009be0 <vAssertCalled>
 e010af4:	eaffffcf 	b	e010a38 <xQueueGenericSendFromISR+0x20>
 e010af8:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
 e010afc:	e3530001 	cmp	r3, #1
 e010b00:	1a00000e 	bne	e010b40 <xQueueGenericSendFromISR+0x128>
 e010b04:	ebfff740 	bl	e00e80c <vTaskEnterCritical>
 e010b08:	e5943038 	ldr	r3, [r4, #56]	; 0x38
 e010b0c:	eaffffd1 	b	e010a58 <xQueueGenericSendFromISR+0x40>
 e010b10:	e5943024 	ldr	r3, [r4, #36]	; 0x24
 e010b14:	e3530000 	cmp	r3, #0
 e010b18:	0affffe6 	beq	e010ab8 <xQueueGenericSendFromISR+0xa0>
 e010b1c:	e2840024 	add	r0, r4, #36	; 0x24
 e010b20:	ebfffb6b 	bl	e00f8d4 <xTaskRemoveFromEventList>
 e010b24:	e3570000 	cmp	r7, #0
 e010b28:	13500000 	cmpne	r0, #0
 e010b2c:	0affffe1 	beq	e010ab8 <xQueueGenericSendFromISR+0xa0>
 e010b30:	e3a03001 	mov	r3, #1
 e010b34:	e1a05003 	mov	r5, r3
 e010b38:	e5873000 	str	r3, [r7]
 e010b3c:	eaffffd1 	b	e010a88 <xQueueGenericSendFromISR+0x70>
 e010b40:	e3001376 	movw	r1, #886	; 0x376
 e010b44:	e3050910 	movw	r0, #22800	; 0x5910
 e010b48:	e3400e01 	movt	r0, #3585	; 0xe01
 e010b4c:	ebffe423 	bl	e009be0 <vAssertCalled>
 e010b50:	eaffffeb 	b	e010b04 <xQueueGenericSendFromISR+0xec>

0e010b54 <xQueueGiveFromISR>:
 e010b54:	e92d4070 	push	{r4, r5, r6, lr}
 e010b58:	e1a05001 	mov	r5, r1
 e010b5c:	e2504000 	subs	r4, r0, #0
 e010b60:	0a000023 	beq	e010bf4 <xQueueGiveFromISR+0xa0>
 e010b64:	e5943040 	ldr	r3, [r4, #64]	; 0x40
 e010b68:	e3530000 	cmp	r3, #0
 e010b6c:	1a000027 	bne	e010c10 <xQueueGiveFromISR+0xbc>
 e010b70:	e5943000 	ldr	r3, [r4]
 e010b74:	e3530000 	cmp	r3, #0
 e010b78:	0a00002b 	beq	e010c2c <xQueueGiveFromISR+0xd8>
 e010b7c:	ebfff722 	bl	e00e80c <vTaskEnterCritical>
 e010b80:	e5942038 	ldr	r2, [r4, #56]	; 0x38
 e010b84:	e594303c 	ldr	r3, [r4, #60]	; 0x3c
 e010b88:	e1530002 	cmp	r3, r2
 e010b8c:	93a06000 	movls	r6, #0
 e010b90:	9a000009 	bls	e010bbc <xQueueGiveFromISR+0x68>
 e010b94:	e5d43045 	ldrb	r3, [r4, #69]	; 0x45
 e010b98:	e2822001 	add	r2, r2, #1
 e010b9c:	e35300ff 	cmp	r3, #255	; 0xff
 e010ba0:	e5842038 	str	r2, [r4, #56]	; 0x38
 e010ba4:	e6af3073 	sxtb	r3, r3
 e010ba8:	0a000006 	beq	e010bc8 <xQueueGiveFromISR+0x74>
 e010bac:	e2833001 	add	r3, r3, #1
 e010bb0:	e3a06001 	mov	r6, #1
 e010bb4:	e6af3073 	sxtb	r3, r3
 e010bb8:	e5c43045 	strb	r3, [r4, #69]	; 0x45
 e010bbc:	ebfff72d 	bl	e00e878 <vTaskExitCritical>
 e010bc0:	e1a00006 	mov	r0, r6
 e010bc4:	e8bd8070 	pop	{r4, r5, r6, pc}
 e010bc8:	e5943048 	ldr	r3, [r4, #72]	; 0x48
 e010bcc:	e3530000 	cmp	r3, #0
 e010bd0:	0a00001d 	beq	e010c4c <xQueueGiveFromISR+0xf8>
 e010bd4:	e3a01000 	mov	r1, #0
 e010bd8:	e1a00004 	mov	r0, r4
 e010bdc:	ebfffde9 	bl	e010388 <prvNotifyQueueSetContainer>
 e010be0:	e3550000 	cmp	r5, #0
 e010be4:	13500000 	cmpne	r0, #0
 e010be8:	1a00001f 	bne	e010c6c <xQueueGiveFromISR+0x118>
 e010bec:	e3a06001 	mov	r6, #1
 e010bf0:	eafffff1 	b	e010bbc <xQueueGiveFromISR+0x68>
 e010bf4:	e3050910 	movw	r0, #22800	; 0x5910
 e010bf8:	e3400e01 	movt	r0, #3585	; 0xe01
 e010bfc:	e30013f3 	movw	r1, #1011	; 0x3f3
 e010c00:	ebffe3f6 	bl	e009be0 <vAssertCalled>
 e010c04:	e5943040 	ldr	r3, [r4, #64]	; 0x40
 e010c08:	e3530000 	cmp	r3, #0
 e010c0c:	0affffd7 	beq	e010b70 <xQueueGiveFromISR+0x1c>
 e010c10:	e3050910 	movw	r0, #22800	; 0x5910
 e010c14:	e3400e01 	movt	r0, #3585	; 0xe01
 e010c18:	e30013f7 	movw	r1, #1015	; 0x3f7
 e010c1c:	ebffe3ef 	bl	e009be0 <vAssertCalled>
 e010c20:	e5943000 	ldr	r3, [r4]
 e010c24:	e3530000 	cmp	r3, #0
 e010c28:	1affffd3 	bne	e010b7c <xQueueGiveFromISR+0x28>
 e010c2c:	e5943008 	ldr	r3, [r4, #8]
 e010c30:	e3530000 	cmp	r3, #0
 e010c34:	0affffd0 	beq	e010b7c <xQueueGiveFromISR+0x28>
 e010c38:	e3a01fff 	mov	r1, #1020	; 0x3fc
 e010c3c:	e3050910 	movw	r0, #22800	; 0x5910
 e010c40:	e3400e01 	movt	r0, #3585	; 0xe01
 e010c44:	ebffe3e5 	bl	e009be0 <vAssertCalled>
 e010c48:	eaffffcb 	b	e010b7c <xQueueGiveFromISR+0x28>
 e010c4c:	e5943024 	ldr	r3, [r4, #36]	; 0x24
 e010c50:	e3530000 	cmp	r3, #0
 e010c54:	0affffe4 	beq	e010bec <xQueueGiveFromISR+0x98>
 e010c58:	e2840024 	add	r0, r4, #36	; 0x24
 e010c5c:	ebfffb1c 	bl	e00f8d4 <xTaskRemoveFromEventList>
 e010c60:	e3550000 	cmp	r5, #0
 e010c64:	13500000 	cmpne	r0, #0
 e010c68:	0affffdf 	beq	e010bec <xQueueGiveFromISR+0x98>
 e010c6c:	e3a03001 	mov	r3, #1
 e010c70:	e1a06003 	mov	r6, r3
 e010c74:	e5853000 	str	r3, [r5]
 e010c78:	eaffffcf 	b	e010bbc <xQueueGiveFromISR+0x68>

0e010c7c <xQueueReceive>:
 e010c7c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e010c80:	e1a06001 	mov	r6, r1
 e010c84:	e24dd010 	sub	sp, sp, #16
 e010c88:	e2504000 	subs	r4, r0, #0
 e010c8c:	e58d2004 	str	r2, [sp, #4]
 e010c90:	0a000062 	beq	e010e20 <xQueueReceive+0x1a4>
 e010c94:	e3560000 	cmp	r6, #0
 e010c98:	0a000066 	beq	e010e38 <xQueueReceive+0x1bc>
 e010c9c:	ebfff6da 	bl	e00e80c <vTaskEnterCritical>
 e010ca0:	e5945038 	ldr	r5, [r4, #56]	; 0x38
 e010ca4:	e3550000 	cmp	r5, #0
 e010ca8:	1a000045 	bne	e010dc4 <xQueueReceive+0x148>
 e010cac:	e59d3004 	ldr	r3, [sp, #4]
 e010cb0:	e3530000 	cmp	r3, #0
 e010cb4:	0a000037 	beq	e010d98 <xQueueReceive+0x11c>
 e010cb8:	e28d0008 	add	r0, sp, #8
 e010cbc:	e1a07005 	mov	r7, r5
 e010cc0:	e2848024 	add	r8, r4, #36	; 0x24
 e010cc4:	ebfff675 	bl	e00e6a0 <vTaskInternalSetTimeOutState>
 e010cc8:	ebfff6ea 	bl	e00e878 <vTaskExitCritical>
 e010ccc:	ebfffcda 	bl	e01003c <vTaskSuspendAll>
 e010cd0:	ebfff6cd 	bl	e00e80c <vTaskEnterCritical>
 e010cd4:	e5d43044 	ldrb	r3, [r4, #68]	; 0x44
 e010cd8:	e35300ff 	cmp	r3, #255	; 0xff
 e010cdc:	05c47044 	strbeq	r7, [r4, #68]	; 0x44
 e010ce0:	e5d43045 	ldrb	r3, [r4, #69]	; 0x45
 e010ce4:	e35300ff 	cmp	r3, #255	; 0xff
 e010ce8:	05c47045 	strbeq	r7, [r4, #69]	; 0x45
 e010cec:	ebfff6e1 	bl	e00e878 <vTaskExitCritical>
 e010cf0:	e28d1004 	add	r1, sp, #4
 e010cf4:	e28d0008 	add	r0, sp, #8
 e010cf8:	ebfffb41 	bl	e00fa04 <xTaskCheckForTimeOut>
 e010cfc:	e3500000 	cmp	r0, #0
 e010d00:	1a000015 	bne	e010d5c <xQueueReceive+0xe0>
 e010d04:	ebfff6c0 	bl	e00e80c <vTaskEnterCritical>
 e010d08:	e5943038 	ldr	r3, [r4, #56]	; 0x38
 e010d0c:	e3530000 	cmp	r3, #0
 e010d10:	1a000024 	bne	e010da8 <xQueueReceive+0x12c>
 e010d14:	ebfff6d7 	bl	e00e878 <vTaskExitCritical>
 e010d18:	e59d1004 	ldr	r1, [sp, #4]
 e010d1c:	e1a00008 	mov	r0, r8
 e010d20:	ebfffa90 	bl	e00f768 <vTaskPlaceOnEventList>
 e010d24:	ebfff6b8 	bl	e00e80c <vTaskEnterCritical>
 e010d28:	e5943038 	ldr	r3, [r4, #56]	; 0x38
 e010d2c:	e3530000 	cmp	r3, #0
 e010d30:	0a000021 	beq	e010dbc <xQueueReceive+0x140>
 e010d34:	ebfff6cf 	bl	e00e878 <vTaskExitCritical>
 e010d38:	e1a00008 	mov	r0, r8
 e010d3c:	ebfffac2 	bl	e00f84c <vTaskPlaceRemoveFromEventList>
 e010d40:	e1a00004 	mov	r0, r4
 e010d44:	ebfffdc6 	bl	e010464 <prvUnlockQueue>
 e010d48:	ebfffa80 	bl	e00f750 <xTaskResumeAll>
 e010d4c:	e3500000 	cmp	r0, #0
 e010d50:	1a000009 	bne	e010d7c <xQueueReceive+0x100>
 e010d54:	ebfff697 	bl	e00e7b8 <vTaskYieldWithinAPI>
 e010d58:	ea000007 	b	e010d7c <xQueueReceive+0x100>
 e010d5c:	e1a00004 	mov	r0, r4
 e010d60:	ebfffdbf 	bl	e010464 <prvUnlockQueue>
 e010d64:	ebfffa79 	bl	e00f750 <xTaskResumeAll>
 e010d68:	ebfff6a7 	bl	e00e80c <vTaskEnterCritical>
 e010d6c:	e5943038 	ldr	r3, [r4, #56]	; 0x38
 e010d70:	e3530000 	cmp	r3, #0
 e010d74:	0a000007 	beq	e010d98 <xQueueReceive+0x11c>
 e010d78:	ebfff6be 	bl	e00e878 <vTaskExitCritical>
 e010d7c:	ebfff6a2 	bl	e00e80c <vTaskEnterCritical>
 e010d80:	e5945038 	ldr	r5, [r4, #56]	; 0x38
 e010d84:	e3550000 	cmp	r5, #0
 e010d88:	1a00000d 	bne	e010dc4 <xQueueReceive+0x148>
 e010d8c:	e59d3004 	ldr	r3, [sp, #4]
 e010d90:	e3530000 	cmp	r3, #0
 e010d94:	1affffcb 	bne	e010cc8 <xQueueReceive+0x4c>
 e010d98:	ebfff6b6 	bl	e00e878 <vTaskExitCritical>
 e010d9c:	e3a00000 	mov	r0, #0
 e010da0:	e28dd010 	add	sp, sp, #16
 e010da4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e010da8:	ebfff6b2 	bl	e00e878 <vTaskExitCritical>
 e010dac:	e1a00004 	mov	r0, r4
 e010db0:	ebfffdab 	bl	e010464 <prvUnlockQueue>
 e010db4:	ebfffa65 	bl	e00f750 <xTaskResumeAll>
 e010db8:	eaffffef 	b	e010d7c <xQueueReceive+0x100>
 e010dbc:	ebfff6ad 	bl	e00e878 <vTaskExitCritical>
 e010dc0:	eaffffde 	b	e010d40 <xQueueReceive+0xc4>
 e010dc4:	ebfff690 	bl	e00e80c <vTaskEnterCritical>
 e010dc8:	e5942040 	ldr	r2, [r4, #64]	; 0x40
 e010dcc:	e3520000 	cmp	r2, #0
 e010dd0:	0a000008 	beq	e010df8 <xQueueReceive+0x17c>
 e010dd4:	e594100c 	ldr	r1, [r4, #12]
 e010dd8:	e5943008 	ldr	r3, [r4, #8]
 e010ddc:	e0811002 	add	r1, r1, r2
 e010de0:	e1510003 	cmp	r1, r3
 e010de4:	e584100c 	str	r1, [r4, #12]
 e010de8:	e1a00006 	mov	r0, r6
 e010dec:	25941000 	ldrcs	r1, [r4]
 e010df0:	2584100c 	strcs	r1, [r4, #12]
 e010df4:	ebfff05c 	bl	e00cf6c <__wrap_memcpy>
 e010df8:	ebfff69e 	bl	e00e878 <vTaskExitCritical>
 e010dfc:	e2455001 	sub	r5, r5, #1
 e010e00:	e5845038 	str	r5, [r4, #56]	; 0x38
 e010e04:	e5943010 	ldr	r3, [r4, #16]
 e010e08:	e3530000 	cmp	r3, #0
 e010e0c:	1a000011 	bne	e010e58 <xQueueReceive+0x1dc>
 e010e10:	ebfff698 	bl	e00e878 <vTaskExitCritical>
 e010e14:	e3a00001 	mov	r0, #1
 e010e18:	e28dd010 	add	sp, sp, #16
 e010e1c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e010e20:	e3050910 	movw	r0, #22800	; 0x5910
 e010e24:	e3400e01 	movt	r0, #3585	; 0xe01
 e010e28:	e3001476 	movw	r1, #1142	; 0x476
 e010e2c:	ebffe36b 	bl	e009be0 <vAssertCalled>
 e010e30:	e3560000 	cmp	r6, #0
 e010e34:	1affff98 	bne	e010c9c <xQueueReceive+0x20>
 e010e38:	e5943040 	ldr	r3, [r4, #64]	; 0x40
 e010e3c:	e3530000 	cmp	r3, #0
 e010e40:	0affff95 	beq	e010c9c <xQueueReceive+0x20>
 e010e44:	e3050910 	movw	r0, #22800	; 0x5910
 e010e48:	e3400e01 	movt	r0, #3585	; 0xe01
 e010e4c:	e300147a 	movw	r1, #1146	; 0x47a
 e010e50:	ebffe362 	bl	e009be0 <vAssertCalled>
 e010e54:	eaffff90 	b	e010c9c <xQueueReceive+0x20>
 e010e58:	e2840010 	add	r0, r4, #16
 e010e5c:	ebfffa9c 	bl	e00f8d4 <xTaskRemoveFromEventList>
 e010e60:	e3500000 	cmp	r0, #0
 e010e64:	0affffe9 	beq	e010e10 <xQueueReceive+0x194>
 e010e68:	ebfff652 	bl	e00e7b8 <vTaskYieldWithinAPI>
 e010e6c:	eaffffe7 	b	e010e10 <xQueueReceive+0x194>

0e010e70 <xQueueSemaphoreTake>:
 e010e70:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 e010e74:	e2504000 	subs	r4, r0, #0
 e010e78:	e24dd014 	sub	sp, sp, #20
 e010e7c:	e58d1004 	str	r1, [sp, #4]
 e010e80:	0a00007b 	beq	e011074 <xQueueSemaphoreTake+0x204>
 e010e84:	e5943040 	ldr	r3, [r4, #64]	; 0x40
 e010e88:	e3530000 	cmp	r3, #0
 e010e8c:	1a00007f 	bne	e011090 <xQueueSemaphoreTake+0x220>
 e010e90:	ebfff65d 	bl	e00e80c <vTaskEnterCritical>
 e010e94:	e5943038 	ldr	r3, [r4, #56]	; 0x38
 e010e98:	e3a06000 	mov	r6, #0
 e010e9c:	e1a05006 	mov	r5, r6
 e010ea0:	e1a07006 	mov	r7, r6
 e010ea4:	e3530000 	cmp	r3, #0
 e010ea8:	1a00003a 	bne	e010f98 <xQueueSemaphoreTake+0x128>
 e010eac:	e59d3004 	ldr	r3, [sp, #4]
 e010eb0:	e3530000 	cmp	r3, #0
 e010eb4:	0a000067 	beq	e011058 <xQueueSemaphoreTake+0x1e8>
 e010eb8:	e3550000 	cmp	r5, #0
 e010ebc:	0a000042 	beq	e010fcc <xQueueSemaphoreTake+0x15c>
 e010ec0:	ebfff66c 	bl	e00e878 <vTaskExitCritical>
 e010ec4:	ebfffc5c 	bl	e01003c <vTaskSuspendAll>
 e010ec8:	ebfff64f 	bl	e00e80c <vTaskEnterCritical>
 e010ecc:	e5d43044 	ldrb	r3, [r4, #68]	; 0x44
 e010ed0:	e35300ff 	cmp	r3, #255	; 0xff
 e010ed4:	05c47044 	strbeq	r7, [r4, #68]	; 0x44
 e010ed8:	e5d43045 	ldrb	r3, [r4, #69]	; 0x45
 e010edc:	e35300ff 	cmp	r3, #255	; 0xff
 e010ee0:	05c47045 	strbeq	r7, [r4, #69]	; 0x45
 e010ee4:	ebfff663 	bl	e00e878 <vTaskExitCritical>
 e010ee8:	e28d1004 	add	r1, sp, #4
 e010eec:	e28d0008 	add	r0, sp, #8
 e010ef0:	ebfffac3 	bl	e00fa04 <xTaskCheckForTimeOut>
 e010ef4:	e3500000 	cmp	r0, #0
 e010ef8:	1a000019 	bne	e010f64 <xQueueSemaphoreTake+0xf4>
 e010efc:	ebfff642 	bl	e00e80c <vTaskEnterCritical>
 e010f00:	e5943038 	ldr	r3, [r4, #56]	; 0x38
 e010f04:	e3530000 	cmp	r3, #0
 e010f08:	1a000032 	bne	e010fd8 <xQueueSemaphoreTake+0x168>
 e010f0c:	ebfff659 	bl	e00e878 <vTaskExitCritical>
 e010f10:	e5943000 	ldr	r3, [r4]
 e010f14:	e3530000 	cmp	r3, #0
 e010f18:	0a000048 	beq	e011040 <xQueueSemaphoreTake+0x1d0>
 e010f1c:	e2845024 	add	r5, r4, #36	; 0x24
 e010f20:	e59d1004 	ldr	r1, [sp, #4]
 e010f24:	e1a00005 	mov	r0, r5
 e010f28:	ebfffa0e 	bl	e00f768 <vTaskPlaceOnEventList>
 e010f2c:	ebfff636 	bl	e00e80c <vTaskEnterCritical>
 e010f30:	e5943038 	ldr	r3, [r4, #56]	; 0x38
 e010f34:	e3530000 	cmp	r3, #0
 e010f38:	0a000031 	beq	e011004 <xQueueSemaphoreTake+0x194>
 e010f3c:	ebfff64d 	bl	e00e878 <vTaskExitCritical>
 e010f40:	e1a00005 	mov	r0, r5
 e010f44:	ebfffa40 	bl	e00f84c <vTaskPlaceRemoveFromEventList>
 e010f48:	e1a00004 	mov	r0, r4
 e010f4c:	ebfffd44 	bl	e010464 <prvUnlockQueue>
 e010f50:	ebfff9fe 	bl	e00f750 <xTaskResumeAll>
 e010f54:	e3500000 	cmp	r0, #0
 e010f58:	1a000009 	bne	e010f84 <xQueueSemaphoreTake+0x114>
 e010f5c:	ebfff615 	bl	e00e7b8 <vTaskYieldWithinAPI>
 e010f60:	ea000007 	b	e010f84 <xQueueSemaphoreTake+0x114>
 e010f64:	e1a00004 	mov	r0, r4
 e010f68:	ebfffd3d 	bl	e010464 <prvUnlockQueue>
 e010f6c:	ebfff9f7 	bl	e00f750 <xTaskResumeAll>
 e010f70:	ebfff625 	bl	e00e80c <vTaskEnterCritical>
 e010f74:	e5943038 	ldr	r3, [r4, #56]	; 0x38
 e010f78:	e3530000 	cmp	r3, #0
 e010f7c:	0a00001a 	beq	e010fec <xQueueSemaphoreTake+0x17c>
 e010f80:	ebfff63c 	bl	e00e878 <vTaskExitCritical>
 e010f84:	ebfff620 	bl	e00e80c <vTaskEnterCritical>
 e010f88:	e5943038 	ldr	r3, [r4, #56]	; 0x38
 e010f8c:	e3a05001 	mov	r5, #1
 e010f90:	e3530000 	cmp	r3, #0
 e010f94:	0affffc4 	beq	e010eac <xQueueSemaphoreTake+0x3c>
 e010f98:	e5942000 	ldr	r2, [r4]
 e010f9c:	e2433001 	sub	r3, r3, #1
 e010fa0:	e3520000 	cmp	r2, #0
 e010fa4:	e5843038 	str	r3, [r4, #56]	; 0x38
 e010fa8:	0a000043 	beq	e0110bc <xQueueSemaphoreTake+0x24c>
 e010fac:	e5943010 	ldr	r3, [r4, #16]
 e010fb0:	e3530000 	cmp	r3, #0
 e010fb4:	1a00003a 	bne	e0110a4 <xQueueSemaphoreTake+0x234>
 e010fb8:	e3a06001 	mov	r6, #1
 e010fbc:	ebfff62d 	bl	e00e878 <vTaskExitCritical>
 e010fc0:	e1a00006 	mov	r0, r6
 e010fc4:	e28dd014 	add	sp, sp, #20
 e010fc8:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
 e010fcc:	e28d0008 	add	r0, sp, #8
 e010fd0:	ebfff5b2 	bl	e00e6a0 <vTaskInternalSetTimeOutState>
 e010fd4:	eaffffb9 	b	e010ec0 <xQueueSemaphoreTake+0x50>
 e010fd8:	ebfff626 	bl	e00e878 <vTaskExitCritical>
 e010fdc:	e1a00004 	mov	r0, r4
 e010fe0:	ebfffd1f 	bl	e010464 <prvUnlockQueue>
 e010fe4:	ebfff9d9 	bl	e00f750 <xTaskResumeAll>
 e010fe8:	eaffffe5 	b	e010f84 <xQueueSemaphoreTake+0x114>
 e010fec:	ebfff621 	bl	e00e878 <vTaskExitCritical>
 e010ff0:	e3560000 	cmp	r6, #0
 e010ff4:	1a000004 	bne	e01100c <xQueueSemaphoreTake+0x19c>
 e010ff8:	e1a00006 	mov	r0, r6
 e010ffc:	e28dd014 	add	sp, sp, #20
 e011000:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
 e011004:	ebfff61b 	bl	e00e878 <vTaskExitCritical>
 e011008:	eaffffce 	b	e010f48 <xQueueSemaphoreTake+0xd8>
 e01100c:	ebfff5fe 	bl	e00e80c <vTaskEnterCritical>
 e011010:	e5941024 	ldr	r1, [r4, #36]	; 0x24
 e011014:	e5940008 	ldr	r0, [r4, #8]
 e011018:	e3510000 	cmp	r1, #0
 e01101c:	e3a06000 	mov	r6, #0
 e011020:	15943030 	ldrne	r3, [r4, #48]	; 0x30
 e011024:	15931000 	ldrne	r1, [r3]
 e011028:	1261100b 	rsbne	r1, r1, #11
 e01102c:	ebfffb6a 	bl	e00fddc <vTaskPriorityDisinheritAfterTimeout>
 e011030:	ebfff610 	bl	e00e878 <vTaskExitCritical>
 e011034:	e1a00006 	mov	r0, r6
 e011038:	e28dd014 	add	sp, sp, #20
 e01103c:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
 e011040:	ebfff5f1 	bl	e00e80c <vTaskEnterCritical>
 e011044:	e5940008 	ldr	r0, [r4, #8]
 e011048:	ebfffab7 	bl	e00fb2c <xTaskPriorityInherit>
 e01104c:	e1a06000 	mov	r6, r0
 e011050:	ebfff608 	bl	e00e878 <vTaskExitCritical>
 e011054:	eaffffb0 	b	e010f1c <xQueueSemaphoreTake+0xac>
 e011058:	e3560000 	cmp	r6, #0
 e01105c:	1a000019 	bne	e0110c8 <xQueueSemaphoreTake+0x258>
 e011060:	e3a06000 	mov	r6, #0
 e011064:	ebfff603 	bl	e00e878 <vTaskExitCritical>
 e011068:	e1a00006 	mov	r0, r6
 e01106c:	e28dd014 	add	sp, sp, #20
 e011070:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
 e011074:	e3a01e4f 	mov	r1, #1264	; 0x4f0
 e011078:	e3050910 	movw	r0, #22800	; 0x5910
 e01107c:	e3400e01 	movt	r0, #3585	; 0xe01
 e011080:	ebffe2d6 	bl	e009be0 <vAssertCalled>
 e011084:	e5943040 	ldr	r3, [r4, #64]	; 0x40
 e011088:	e3530000 	cmp	r3, #0
 e01108c:	0affff7f 	beq	e010e90 <xQueueSemaphoreTake+0x20>
 e011090:	e3050910 	movw	r0, #22800	; 0x5910
 e011094:	e3400e01 	movt	r0, #3585	; 0xe01
 e011098:	e30014f4 	movw	r1, #1268	; 0x4f4
 e01109c:	ebffe2cf 	bl	e009be0 <vAssertCalled>
 e0110a0:	eaffff7a 	b	e010e90 <xQueueSemaphoreTake+0x20>
 e0110a4:	e2840010 	add	r0, r4, #16
 e0110a8:	ebfffa09 	bl	e00f8d4 <xTaskRemoveFromEventList>
 e0110ac:	e3500000 	cmp	r0, #0
 e0110b0:	0affffc0 	beq	e010fb8 <xQueueSemaphoreTake+0x148>
 e0110b4:	ebfff5bf 	bl	e00e7b8 <vTaskYieldWithinAPI>
 e0110b8:	eaffffbe 	b	e010fb8 <xQueueSemaphoreTake+0x148>
 e0110bc:	ebfffc1a 	bl	e01012c <pvTaskIncrementMutexHeldCount>
 e0110c0:	e5840008 	str	r0, [r4, #8]
 e0110c4:	eaffffb8 	b	e010fac <xQueueSemaphoreTake+0x13c>
 e0110c8:	e3050910 	movw	r0, #22800	; 0x5910
 e0110cc:	e3400e01 	movt	r0, #3585	; 0xe01
 e0110d0:	e3001533 	movw	r1, #1331	; 0x533
 e0110d4:	ebffe2c1 	bl	e009be0 <vAssertCalled>
 e0110d8:	eaffffe0 	b	e011060 <xQueueSemaphoreTake+0x1f0>

0e0110dc <xQueueReceiveFromISR>:
 e0110dc:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e0110e0:	e1a06001 	mov	r6, r1
 e0110e4:	e1a08002 	mov	r8, r2
 e0110e8:	e2504000 	subs	r4, r0, #0
 e0110ec:	0a000027 	beq	e011190 <xQueueReceiveFromISR+0xb4>
 e0110f0:	e3560000 	cmp	r6, #0
 e0110f4:	0a00002b 	beq	e0111a8 <xQueueReceiveFromISR+0xcc>
 e0110f8:	ebfff5c3 	bl	e00e80c <vTaskEnterCritical>
 e0110fc:	e5945038 	ldr	r5, [r4, #56]	; 0x38
 e011100:	e3550000 	cmp	r5, #0
 e011104:	1a000002 	bne	e011114 <xQueueReceiveFromISR+0x38>
 e011108:	ebfff5da 	bl	e00e878 <vTaskExitCritical>
 e01110c:	e1a00005 	mov	r0, r5
 e011110:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e011114:	e5d47044 	ldrb	r7, [r4, #68]	; 0x44
 e011118:	ebfff5bb 	bl	e00e80c <vTaskEnterCritical>
 e01111c:	e5942040 	ldr	r2, [r4, #64]	; 0x40
 e011120:	e6af7077 	sxtb	r7, r7
 e011124:	e3520000 	cmp	r2, #0
 e011128:	1a000009 	bne	e011154 <xQueueReceiveFromISR+0x78>
 e01112c:	ebfff5d1 	bl	e00e878 <vTaskExitCritical>
 e011130:	e2455001 	sub	r5, r5, #1
 e011134:	e3770001 	cmn	r7, #1
 e011138:	e5845038 	str	r5, [r4, #56]	; 0x38
 e01113c:	0a00000e 	beq	e01117c <xQueueReceiveFromISR+0xa0>
 e011140:	e2877001 	add	r7, r7, #1
 e011144:	e3a05001 	mov	r5, #1
 e011148:	e6af7077 	sxtb	r7, r7
 e01114c:	e5c47044 	strb	r7, [r4, #68]	; 0x44
 e011150:	eaffffec 	b	e011108 <xQueueReceiveFromISR+0x2c>
 e011154:	e594100c 	ldr	r1, [r4, #12]
 e011158:	e5943008 	ldr	r3, [r4, #8]
 e01115c:	e0811002 	add	r1, r1, r2
 e011160:	e1510003 	cmp	r1, r3
 e011164:	e584100c 	str	r1, [r4, #12]
 e011168:	e1a00006 	mov	r0, r6
 e01116c:	25941000 	ldrcs	r1, [r4]
 e011170:	2584100c 	strcs	r1, [r4, #12]
 e011174:	ebffef7c 	bl	e00cf6c <__wrap_memcpy>
 e011178:	eaffffeb 	b	e01112c <xQueueReceiveFromISR+0x50>
 e01117c:	e5943010 	ldr	r3, [r4, #16]
 e011180:	e3530000 	cmp	r3, #0
 e011184:	1a00000f 	bne	e0111c8 <xQueueReceiveFromISR+0xec>
 e011188:	e3a05001 	mov	r5, #1
 e01118c:	eaffffdd 	b	e011108 <xQueueReceiveFromISR+0x2c>
 e011190:	e3050910 	movw	r0, #22800	; 0x5910
 e011194:	e3400e01 	movt	r0, #3585	; 0xe01
 e011198:	e3001625 	movw	r1, #1573	; 0x625
 e01119c:	ebffe28f 	bl	e009be0 <vAssertCalled>
 e0111a0:	e3560000 	cmp	r6, #0
 e0111a4:	1affffd3 	bne	e0110f8 <xQueueReceiveFromISR+0x1c>
 e0111a8:	e5943040 	ldr	r3, [r4, #64]	; 0x40
 e0111ac:	e3530000 	cmp	r3, #0
 e0111b0:	0affffd0 	beq	e0110f8 <xQueueReceiveFromISR+0x1c>
 e0111b4:	e3050910 	movw	r0, #22800	; 0x5910
 e0111b8:	e3400e01 	movt	r0, #3585	; 0xe01
 e0111bc:	e3001626 	movw	r1, #1574	; 0x626
 e0111c0:	ebffe286 	bl	e009be0 <vAssertCalled>
 e0111c4:	eaffffcb 	b	e0110f8 <xQueueReceiveFromISR+0x1c>
 e0111c8:	e2840010 	add	r0, r4, #16
 e0111cc:	ebfff9c0 	bl	e00f8d4 <xTaskRemoveFromEventList>
 e0111d0:	e3580000 	cmp	r8, #0
 e0111d4:	13500000 	cmpne	r0, #0
 e0111d8:	13a03001 	movne	r3, #1
 e0111dc:	11a05003 	movne	r5, r3
 e0111e0:	15883000 	strne	r3, [r8]
 e0111e4:	0affffe7 	beq	e011188 <xQueueReceiveFromISR+0xac>
 e0111e8:	eaffffc6 	b	e011108 <xQueueReceiveFromISR+0x2c>

0e0111ec <vQueueAddToRegistry>:
 e0111ec:	e304c0b0 	movw	ip, #16560	; 0x40b0
 e0111f0:	e346c00a 	movt	ip, #24586	; 0x600a
 e0111f4:	e3a03000 	mov	r3, #0
 e0111f8:	ea000002 	b	e011208 <vQueueAddToRegistry+0x1c>
 e0111fc:	e2833001 	add	r3, r3, #1
 e011200:	e3530008 	cmp	r3, #8
 e011204:	012fff1e 	bxeq	lr
 e011208:	e79c2183 	ldr	r2, [ip, r3, lsl #3]
 e01120c:	e3520000 	cmp	r2, #0
 e011210:	1afffff9 	bne	e0111fc <vQueueAddToRegistry+0x10>
 e011214:	e08c2183 	add	r2, ip, r3, lsl #3
 e011218:	e78c1183 	str	r1, [ip, r3, lsl #3]
 e01121c:	e5820004 	str	r0, [r2, #4]
 e011220:	e12fff1e 	bx	lr

0e011224 <vQueueWaitForMessageRestricted>:
 e011224:	e92d4070 	push	{r4, r5, r6, lr}
 e011228:	e1a04000 	mov	r4, r0
 e01122c:	e1a06001 	mov	r6, r1
 e011230:	e1a05002 	mov	r5, r2
 e011234:	ebfff574 	bl	e00e80c <vTaskEnterCritical>
 e011238:	e5d43044 	ldrb	r3, [r4, #68]	; 0x44
 e01123c:	e35300ff 	cmp	r3, #255	; 0xff
 e011240:	03a03000 	moveq	r3, #0
 e011244:	05c43044 	strbeq	r3, [r4, #68]	; 0x44
 e011248:	e5d43045 	ldrb	r3, [r4, #69]	; 0x45
 e01124c:	e35300ff 	cmp	r3, #255	; 0xff
 e011250:	03a03000 	moveq	r3, #0
 e011254:	05c43045 	strbeq	r3, [r4, #69]	; 0x45
 e011258:	ebfff586 	bl	e00e878 <vTaskExitCritical>
 e01125c:	ebfff56a 	bl	e00e80c <vTaskEnterCritical>
 e011260:	e5943038 	ldr	r3, [r4, #56]	; 0x38
 e011264:	e3530000 	cmp	r3, #0
 e011268:	0a000003 	beq	e01127c <vQueueWaitForMessageRestricted+0x58>
 e01126c:	ebfff581 	bl	e00e878 <vTaskExitCritical>
 e011270:	e1a00004 	mov	r0, r4
 e011274:	e8bd4070 	pop	{r4, r5, r6, lr}
 e011278:	eafffc79 	b	e010464 <prvUnlockQueue>
 e01127c:	e2840024 	add	r0, r4, #36	; 0x24
 e011280:	e1a02005 	mov	r2, r5
 e011284:	e1a01006 	mov	r1, r6
 e011288:	ebfff951 	bl	e00f7d4 <vTaskPlaceOnEventListRestricted>
 e01128c:	ebfff579 	bl	e00e878 <vTaskExitCritical>
 e011290:	e1a00004 	mov	r0, r4
 e011294:	e8bd4070 	pop	{r4, r5, r6, lr}
 e011298:	eafffc71 	b	e010464 <prvUnlockQueue>

0e01129c <prvCheckForValidListAndQueue>:
 e01129c:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 e0112a0:	e3044268 	movw	r4, #17000	; 0x4268
 e0112a4:	e346400a 	movt	r4, #24586	; 0x600a
 e0112a8:	e24dd00c 	sub	sp, sp, #12
 e0112ac:	ebfff556 	bl	e00e80c <vTaskEnterCritical>
 e0112b0:	e5945000 	ldr	r5, [r4]
 e0112b4:	e3550000 	cmp	r5, #0
 e0112b8:	0a000002 	beq	e0112c8 <prvCheckForValidListAndQueue+0x2c>
 e0112bc:	e28dd00c 	add	sp, sp, #12
 e0112c0:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
 e0112c4:	eafff56b 	b	e00e878 <vTaskExitCritical>
 e0112c8:	e30471e8 	movw	r7, #16872	; 0x41e8
 e0112cc:	e346700a 	movt	r7, #24586	; 0x600a
 e0112d0:	e1a00007 	mov	r0, r7
 e0112d4:	e30461fc 	movw	r6, #16892	; 0x41fc
 e0112d8:	e346600a 	movt	r6, #24586	; 0x600a
 e0112dc:	ebfffbb1 	bl	e0101a8 <vListInitialise>
 e0112e0:	e1a00006 	mov	r0, r6
 e0112e4:	ebfffbaf 	bl	e0101a8 <vListInitialise>
 e0112e8:	e30420f0 	movw	r2, #16624	; 0x40f0
 e0112ec:	e346200a 	movt	r2, #24586	; 0x600a
 e0112f0:	e58d5000 	str	r5, [sp]
 e0112f4:	e3a01010 	mov	r1, #16
 e0112f8:	e5827000 	str	r7, [r2]
 e0112fc:	e30420f4 	movw	r2, #16628	; 0x40f4
 e011300:	e346200a 	movt	r2, #24586	; 0x600a
 e011304:	e3a0000f 	mov	r0, #15
 e011308:	e3043214 	movw	r3, #16916	; 0x4214
 e01130c:	e346300a 	movt	r3, #24586	; 0x600a
 e011310:	e5826000 	str	r6, [r2]
 e011314:	e30420f8 	movw	r2, #16632	; 0x40f8
 e011318:	e346200a 	movt	r2, #24586	; 0x600a
 e01131c:	ebfffcbb 	bl	e010610 <xQueueGenericCreateStatic>
 e011320:	e3500000 	cmp	r0, #0
 e011324:	e5840000 	str	r0, [r4]
 e011328:	0affffe3 	beq	e0112bc <prvCheckForValidListAndQueue+0x20>
 e01132c:	e30519a0 	movw	r1, #22944	; 0x59a0
 e011330:	e3401e01 	movt	r1, #3585	; 0xe01
 e011334:	ebffffac 	bl	e0111ec <vQueueAddToRegistry>
 e011338:	eaffffdf 	b	e0112bc <prvCheckForValidListAndQueue+0x20>

0e01133c <xTimerCreateTimerTask>:
 e01133c:	e92d4010 	push	{r4, lr}
 e011340:	e24dd020 	sub	sp, sp, #32
 e011344:	ebffffd4 	bl	e01129c <prvCheckForValidListAndQueue>
 e011348:	e3043268 	movw	r3, #17000	; 0x4268
 e01134c:	e346300a 	movt	r3, #24586	; 0x600a
 e011350:	e5933000 	ldr	r3, [r3]
 e011354:	e3530000 	cmp	r3, #0
 e011358:	0a00001a 	beq	e0113c8 <xTimerCreateTimerTask+0x8c>
 e01135c:	e28d201c 	add	r2, sp, #28
 e011360:	e28d1018 	add	r1, sp, #24
 e011364:	e28d0014 	add	r0, sp, #20
 e011368:	e3a04000 	mov	r4, #0
 e01136c:	e58d4014 	str	r4, [sp, #20]
 e011370:	e58d4018 	str	r4, [sp, #24]
 e011374:	eb00039c 	bl	e0121ec <vApplicationGetTimerTaskMemory>
 e011378:	e59d0018 	ldr	r0, [sp, #24]
 e01137c:	e59dc014 	ldr	ip, [sp, #20]
 e011380:	e3a0100a 	mov	r1, #10
 e011384:	e1a03004 	mov	r3, r4
 e011388:	e98d1001 	stmib	sp, {r0, ip}
 e01138c:	e58d1000 	str	r1, [sp]
 e011390:	e59d201c 	ldr	r2, [sp, #28]
 e011394:	e30519a8 	movw	r1, #22952	; 0x59a8
 e011398:	e3401e01 	movt	r1, #3585	; 0xe01
 e01139c:	e3010558 	movw	r0, #5464	; 0x1558
 e0113a0:	e3400e01 	movt	r0, #3585	; 0xe01
 e0113a4:	ebfff5f3 	bl	e00eb78 <xTaskCreateStatic>
 e0113a8:	e304326c 	movw	r3, #17004	; 0x426c
 e0113ac:	e346300a 	movt	r3, #24586	; 0x600a
 e0113b0:	e1500004 	cmp	r0, r4
 e0113b4:	e5830000 	str	r0, [r3]
 e0113b8:	13a00001 	movne	r0, #1
 e0113bc:	0a000001 	beq	e0113c8 <xTimerCreateTimerTask+0x8c>
 e0113c0:	e28dd020 	add	sp, sp, #32
 e0113c4:	e8bd8010 	pop	{r4, pc}
 e0113c8:	e300110d 	movw	r1, #269	; 0x10d
 e0113cc:	e30509b0 	movw	r0, #22960	; 0x59b0
 e0113d0:	e3400e01 	movt	r0, #3585	; 0xe01
 e0113d4:	ebffe201 	bl	e009be0 <vAssertCalled>
 e0113d8:	e3a00000 	mov	r0, #0
 e0113dc:	e28dd020 	add	sp, sp, #32
 e0113e0:	e8bd8010 	pop	{r4, pc}

0e0113e4 <xTimerGenericCommand>:
 e0113e4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e0113e8:	e1a05001 	mov	r5, r1
 e0113ec:	e24dd010 	sub	sp, sp, #16
 e0113f0:	e1a07002 	mov	r7, r2
 e0113f4:	e1a08003 	mov	r8, r3
 e0113f8:	e2504000 	subs	r4, r0, #0
 e0113fc:	0a00001b 	beq	e011470 <xTimerGenericCommand+0x8c>
 e011400:	e3046268 	movw	r6, #17000	; 0x4268
 e011404:	e346600a 	movt	r6, #24586	; 0x600a
 e011408:	e5960000 	ldr	r0, [r6]
 e01140c:	e3500000 	cmp	r0, #0
 e011410:	0a00000e 	beq	e011450 <xTimerGenericCommand+0x6c>
 e011414:	e3550005 	cmp	r5, #5
 e011418:	e58d7004 	str	r7, [sp, #4]
 e01141c:	e58d5000 	str	r5, [sp]
 e011420:	e58d4008 	str	r4, [sp, #8]
 e011424:	ca00000b 	bgt	e011458 <xTimerGenericCommand+0x74>
 e011428:	ebfff4cb 	bl	e00e75c <xTaskGetSchedulerState>
 e01142c:	e3500002 	cmp	r0, #2
 e011430:	13a03000 	movne	r3, #0
 e011434:	03a03000 	moveq	r3, #0
 e011438:	05960000 	ldreq	r0, [r6]
 e01143c:	059d2028 	ldreq	r2, [sp, #40]	; 0x28
 e011440:	15960000 	ldrne	r0, [r6]
 e011444:	11a02003 	movne	r2, r3
 e011448:	e1a0100d 	mov	r1, sp
 e01144c:	ebfffcde 	bl	e0107cc <xQueueGenericSend>
 e011450:	e28dd010 	add	sp, sp, #16
 e011454:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e011458:	e3a03000 	mov	r3, #0
 e01145c:	e1a02008 	mov	r2, r8
 e011460:	e1a0100d 	mov	r1, sp
 e011464:	ebfffd6b 	bl	e010a18 <xQueueGenericSendFromISR>
 e011468:	e28dd010 	add	sp, sp, #16
 e01146c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e011470:	e300117b 	movw	r1, #379	; 0x17b
 e011474:	e30509b0 	movw	r0, #22960	; 0x59b0
 e011478:	e3400e01 	movt	r0, #3585	; 0xe01
 e01147c:	ebffe1d7 	bl	e009be0 <vAssertCalled>
 e011480:	eaffffde 	b	e011400 <xTimerGenericCommand+0x1c>

0e011484 <prvSwitchTimerLists>:
 e011484:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 e011488:	e30460f0 	movw	r6, #16624	; 0x40f0
 e01148c:	e346600a 	movt	r6, #24586	; 0x600a
 e011490:	e30579b0 	movw	r7, #22960	; 0x59b0
 e011494:	e3407e01 	movt	r7, #3585	; 0xe01
 e011498:	e24dd00c 	sub	sp, sp, #12
 e01149c:	e3a08000 	mov	r8, #0
 e0114a0:	ea00000b 	b	e0114d4 <prvSwitchTimerLists+0x50>
 e0114a4:	e593300c 	ldr	r3, [r3, #12]
 e0114a8:	e593400c 	ldr	r4, [r3, #12]
 e0114ac:	e5939000 	ldr	r9, [r3]
 e0114b0:	e2845004 	add	r5, r4, #4
 e0114b4:	e1a00005 	mov	r0, r5
 e0114b8:	ebfffb67 	bl	e01025c <uxListRemove>
 e0114bc:	e5943020 	ldr	r3, [r4, #32]
 e0114c0:	e1a00004 	mov	r0, r4
 e0114c4:	e12fff33 	blx	r3
 e0114c8:	e5d43028 	ldrb	r3, [r4, #40]	; 0x28
 e0114cc:	e3130004 	tst	r3, #4
 e0114d0:	1a00000a 	bne	e011500 <prvSwitchTimerLists+0x7c>
 e0114d4:	e5963000 	ldr	r3, [r6]
 e0114d8:	e5932000 	ldr	r2, [r3]
 e0114dc:	e3520000 	cmp	r2, #0
 e0114e0:	1affffef 	bne	e0114a4 <prvSwitchTimerLists+0x20>
 e0114e4:	e30420f4 	movw	r2, #16628	; 0x40f4
 e0114e8:	e346200a 	movt	r2, #24586	; 0x600a
 e0114ec:	e5921000 	ldr	r1, [r2]
 e0114f0:	e5861000 	str	r1, [r6]
 e0114f4:	e5823000 	str	r3, [r2]
 e0114f8:	e28dd00c 	add	sp, sp, #12
 e0114fc:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
 e011500:	e594c018 	ldr	ip, [r4, #24]
 e011504:	e3a03000 	mov	r3, #0
 e011508:	e089c00c 	add	ip, r9, ip
 e01150c:	e1a00004 	mov	r0, r4
 e011510:	e1a01005 	mov	r1, r5
 e011514:	e159000c 	cmp	r9, ip
 e011518:	e1a02009 	mov	r2, r9
 e01151c:	2a000004 	bcs	e011534 <prvSwitchTimerLists+0xb0>
 e011520:	e5960000 	ldr	r0, [r6]
 e011524:	e584c004 	str	ip, [r4, #4]
 e011528:	e5844010 	str	r4, [r4, #16]
 e01152c:	ebfffb34 	bl	e010204 <vListInsert>
 e011530:	eaffffe7 	b	e0114d4 <prvSwitchTimerLists+0x50>
 e011534:	e1a01003 	mov	r1, r3
 e011538:	e58d8000 	str	r8, [sp]
 e01153c:	ebffffa8 	bl	e0113e4 <xTimerGenericCommand>
 e011540:	e3500000 	cmp	r0, #0
 e011544:	1affffe2 	bne	e0114d4 <prvSwitchTimerLists+0x50>
 e011548:	e1a00007 	mov	r0, r7
 e01154c:	e3001342 	movw	r1, #834	; 0x342
 e011550:	ebffe1a2 	bl	e009be0 <vAssertCalled>
 e011554:	eaffffde 	b	e0114d4 <prvSwitchTimerLists+0x50>

0e011558 <prvTimerTask>:
 e011558:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e01155c:	e30460f0 	movw	r6, #16624	; 0x40f0
 e011560:	e346600a 	movt	r6, #24586	; 0x600a
 e011564:	e24dd024 	sub	sp, sp, #36	; 0x24
 e011568:	e3045210 	movw	r5, #16912	; 0x4210
 e01156c:	e346500a 	movt	r5, #24586	; 0x600a
 e011570:	e30470f4 	movw	r7, #16628	; 0x40f4
 e011574:	e346700a 	movt	r7, #24586	; 0x600a
 e011578:	e3044268 	movw	r4, #17000	; 0x4268
 e01157c:	e346400a 	movt	r4, #24586	; 0x600a
 e011580:	e30539b0 	movw	r3, #22960	; 0x59b0
 e011584:	e3403e01 	movt	r3, #3585	; 0xe01
 e011588:	e58d300c 	str	r3, [sp, #12]
 e01158c:	e5963000 	ldr	r3, [r6]
 e011590:	e5939000 	ldr	r9, [r3]
 e011594:	e3590000 	cmp	r9, #0
 e011598:	0a000084 	beq	e0117b0 <prvTimerTask+0x258>
 e01159c:	e593300c 	ldr	r3, [r3, #12]
 e0115a0:	e5939000 	ldr	r9, [r3]
 e0115a4:	ebfffaa4 	bl	e01003c <vTaskSuspendAll>
 e0115a8:	ebfff220 	bl	e00de30 <xTaskGetTickCount>
 e0115ac:	e5953000 	ldr	r3, [r5]
 e0115b0:	e1a0a000 	mov	sl, r0
 e0115b4:	e1500003 	cmp	r0, r3
 e0115b8:	3a000082 	bcc	e0117c8 <prvTimerTask+0x270>
 e0115bc:	e1590000 	cmp	r9, r0
 e0115c0:	83a02000 	movhi	r2, #0
 e0115c4:	e5850000 	str	r0, [r5]
 e0115c8:	8a000087 	bhi	e0117ec <prvTimerTask+0x294>
 e0115cc:	ebfff85f 	bl	e00f750 <xTaskResumeAll>
 e0115d0:	e5963000 	ldr	r3, [r6]
 e0115d4:	e593300c 	ldr	r3, [r3, #12]
 e0115d8:	e593b00c 	ldr	fp, [r3, #12]
 e0115dc:	e28b8004 	add	r8, fp, #4
 e0115e0:	e1a00008 	mov	r0, r8
 e0115e4:	ebfffb1c 	bl	e01025c <uxListRemove>
 e0115e8:	e5db3028 	ldrb	r3, [fp, #40]	; 0x28
 e0115ec:	e3130004 	tst	r3, #4
 e0115f0:	03c33001 	biceq	r3, r3, #1
 e0115f4:	05cb3028 	strbeq	r3, [fp, #40]	; 0x28
 e0115f8:	1a00008c 	bne	e011830 <prvTimerTask+0x2d8>
 e0115fc:	e59b3020 	ldr	r3, [fp, #32]
 e011600:	e1a0000b 	mov	r0, fp
 e011604:	e12fff33 	blx	r3
 e011608:	e5940000 	ldr	r0, [r4]
 e01160c:	e3a02000 	mov	r2, #0
 e011610:	e28d1010 	add	r1, sp, #16
 e011614:	ebfffd98 	bl	e010c7c <xQueueReceive>
 e011618:	e3500000 	cmp	r0, #0
 e01161c:	0affffda 	beq	e01158c <prvTimerTask+0x34>
 e011620:	e59d3010 	ldr	r3, [sp, #16]
 e011624:	e59d0018 	ldr	r0, [sp, #24]
 e011628:	e3530000 	cmp	r3, #0
 e01162c:	ba000058 	blt	e011794 <prvTimerTask+0x23c>
 e011630:	e59da018 	ldr	sl, [sp, #24]
 e011634:	e59a3014 	ldr	r3, [sl, #20]
 e011638:	e3530000 	cmp	r3, #0
 e01163c:	0a000001 	beq	e011648 <prvTimerTask+0xf0>
 e011640:	e28a0004 	add	r0, sl, #4
 e011644:	ebfffb04 	bl	e01025c <uxListRemove>
 e011648:	ebfff1f8 	bl	e00de30 <xTaskGetTickCount>
 e01164c:	e5953000 	ldr	r3, [r5]
 e011650:	e1a0b000 	mov	fp, r0
 e011654:	e1500003 	cmp	r0, r3
 e011658:	3a00006b 	bcc	e01180c <prvTimerTask+0x2b4>
 e01165c:	e59d3010 	ldr	r3, [sp, #16]
 e011660:	e585b000 	str	fp, [r5]
 e011664:	e3530009 	cmp	r3, #9
 e011668:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
 e01166c:	eaffffe5 	b	e011608 <prvTimerTask+0xb0>
 e011670:	0e011698 	.word	0x0e011698
 e011674:	0e011698 	.word	0x0e011698
 e011678:	0e011698 	.word	0x0e011698
 e01167c:	0e011764 	.word	0x0e011764
 e011680:	0e011724 	.word	0x0e011724
 e011684:	0e011774 	.word	0x0e011774
 e011688:	0e011698 	.word	0x0e011698
 e01168c:	0e011698 	.word	0x0e011698
 e011690:	0e011764 	.word	0x0e011764
 e011694:	0e011724 	.word	0x0e011724
 e011698:	e59d3014 	ldr	r3, [sp, #20]
 e01169c:	e59a1018 	ldr	r1, [sl, #24]
 e0116a0:	e5da2028 	ldrb	r2, [sl, #40]	; 0x28
 e0116a4:	e0930001 	adds	r0, r3, r1
 e0116a8:	e3822001 	orr	r2, r2, #1
 e0116ac:	e58a0004 	str	r0, [sl, #4]
 e0116b0:	e5ca2028 	strb	r2, [sl, #40]	; 0x28
 e0116b4:	e58aa010 	str	sl, [sl, #16]
 e0116b8:	23a02001 	movcs	r2, #1
 e0116bc:	33a02000 	movcc	r2, #0
 e0116c0:	e150000b 	cmp	r0, fp
 e0116c4:	8a000052 	bhi	e011814 <prvTimerTask+0x2bc>
 e0116c8:	e04b3003 	sub	r3, fp, r3
 e0116cc:	e1510003 	cmp	r1, r3
 e0116d0:	8a000076 	bhi	e0118b0 <prvTimerTask+0x358>
 e0116d4:	e59a3020 	ldr	r3, [sl, #32]
 e0116d8:	e1a0000a 	mov	r0, sl
 e0116dc:	e12fff33 	blx	r3
 e0116e0:	e5da3028 	ldrb	r3, [sl, #40]	; 0x28
 e0116e4:	e3130004 	tst	r3, #4
 e0116e8:	0affffc6 	beq	e011608 <prvTimerTask+0xb0>
 e0116ec:	e59a2018 	ldr	r2, [sl, #24]
 e0116f0:	e59d1014 	ldr	r1, [sp, #20]
 e0116f4:	e3a03000 	mov	r3, #0
 e0116f8:	e0812002 	add	r2, r1, r2
 e0116fc:	e1a0000a 	mov	r0, sl
 e011700:	e1a01003 	mov	r1, r3
 e011704:	e58d3000 	str	r3, [sp]
 e011708:	ebffff35 	bl	e0113e4 <xTimerGenericCommand>
 e01170c:	e3500000 	cmp	r0, #0
 e011710:	1affffbc 	bne	e011608 <prvTimerTask+0xb0>
 e011714:	e59d000c 	ldr	r0, [sp, #12]
 e011718:	e3a01fb7 	mov	r1, #732	; 0x2dc
 e01171c:	ebffe12f 	bl	e009be0 <vAssertCalled>
 e011720:	eaffffb8 	b	e011608 <prvTimerTask+0xb0>
 e011724:	e5da2028 	ldrb	r2, [sl, #40]	; 0x28
 e011728:	e59d3014 	ldr	r3, [sp, #20]
 e01172c:	e3822001 	orr	r2, r2, #1
 e011730:	e3530000 	cmp	r3, #0
 e011734:	e5ca2028 	strb	r2, [sl, #40]	; 0x28
 e011738:	e58a3018 	str	r3, [sl, #24]
 e01173c:	0a000050 	beq	e011884 <prvTimerTask+0x32c>
 e011740:	e083300b 	add	r3, r3, fp
 e011744:	e153000b 	cmp	r3, fp
 e011748:	e58a3004 	str	r3, [sl, #4]
 e01174c:	e58aa010 	str	sl, [sl, #16]
 e011750:	9a000056 	bls	e0118b0 <prvTimerTask+0x358>
 e011754:	e5960000 	ldr	r0, [r6]
 e011758:	e28a1004 	add	r1, sl, #4
 e01175c:	ebfffaa8 	bl	e010204 <vListInsert>
 e011760:	eaffffa8 	b	e011608 <prvTimerTask+0xb0>
 e011764:	e5da3028 	ldrb	r3, [sl, #40]	; 0x28
 e011768:	e3c33001 	bic	r3, r3, #1
 e01176c:	e5ca3028 	strb	r3, [sl, #40]	; 0x28
 e011770:	eaffffa4 	b	e011608 <prvTimerTask+0xb0>
 e011774:	e5da3028 	ldrb	r3, [sl, #40]	; 0x28
 e011778:	e3130002 	tst	r3, #2
 e01177c:	13c33001 	bicne	r3, r3, #1
 e011780:	15ca3028 	strbne	r3, [sl, #40]	; 0x28
 e011784:	1affff9f 	bne	e011608 <prvTimerTask+0xb0>
 e011788:	e1a0000a 	mov	r0, sl
 e01178c:	eb000074 	bl	e011964 <vPortFree>
 e011790:	eaffff9c 	b	e011608 <prvTimerTask+0xb0>
 e011794:	e59d3014 	ldr	r3, [sp, #20]
 e011798:	e59d101c 	ldr	r1, [sp, #28]
 e01179c:	e12fff33 	blx	r3
 e0117a0:	e59d3010 	ldr	r3, [sp, #16]
 e0117a4:	e3530000 	cmp	r3, #0
 e0117a8:	baffff96 	blt	e011608 <prvTimerTask+0xb0>
 e0117ac:	eaffff9f 	b	e011630 <prvTimerTask+0xd8>
 e0117b0:	ebfffa21 	bl	e01003c <vTaskSuspendAll>
 e0117b4:	ebfff19d 	bl	e00de30 <xTaskGetTickCount>
 e0117b8:	e5953000 	ldr	r3, [r5]
 e0117bc:	e1a0a000 	mov	sl, r0
 e0117c0:	e1500003 	cmp	r0, r3
 e0117c4:	2a000003 	bcs	e0117d8 <prvTimerTask+0x280>
 e0117c8:	ebffff2d 	bl	e011484 <prvSwitchTimerLists>
 e0117cc:	e585a000 	str	sl, [r5]
 e0117d0:	ebfff7de 	bl	e00f750 <xTaskResumeAll>
 e0117d4:	eaffff8b 	b	e011608 <prvTimerTask+0xb0>
 e0117d8:	e5973000 	ldr	r3, [r7]
 e0117dc:	e585a000 	str	sl, [r5]
 e0117e0:	e5932000 	ldr	r2, [r3]
 e0117e4:	e16f2f12 	clz	r2, r2
 e0117e8:	e1a022a2 	lsr	r2, r2, #5
 e0117ec:	e5940000 	ldr	r0, [r4]
 e0117f0:	e049100a 	sub	r1, r9, sl
 e0117f4:	ebfffe8a 	bl	e011224 <vQueueWaitForMessageRestricted>
 e0117f8:	ebfff7d4 	bl	e00f750 <xTaskResumeAll>
 e0117fc:	e3500000 	cmp	r0, #0
 e011800:	1affff80 	bne	e011608 <prvTimerTask+0xb0>
 e011804:	ebfff3eb 	bl	e00e7b8 <vTaskYieldWithinAPI>
 e011808:	eaffff7e 	b	e011608 <prvTimerTask+0xb0>
 e01180c:	ebffff1c 	bl	e011484 <prvSwitchTimerLists>
 e011810:	eaffff91 	b	e01165c <prvTimerTask+0x104>
 e011814:	e2222001 	eor	r2, r2, #1
 e011818:	e153000b 	cmp	r3, fp
 e01181c:	93a02000 	movls	r2, #0
 e011820:	82022001 	andhi	r2, r2, #1
 e011824:	e3520000 	cmp	r2, #0
 e011828:	1affffa9 	bne	e0116d4 <prvTimerTask+0x17c>
 e01182c:	eaffffc8 	b	e011754 <prvTimerTask+0x1fc>
 e011830:	e59b0018 	ldr	r0, [fp, #24]
 e011834:	e58bb010 	str	fp, [fp, #16]
 e011838:	e0893000 	add	r3, r9, r0
 e01183c:	e15a0003 	cmp	sl, r3
 e011840:	e58b3004 	str	r3, [fp, #4]
 e011844:	3a00001d 	bcc	e0118c0 <prvTimerTask+0x368>
 e011848:	e04aa009 	sub	sl, sl, r9
 e01184c:	e150000a 	cmp	r0, sl
 e011850:	8a00001e 	bhi	e0118d0 <prvTimerTask+0x378>
 e011854:	e3a03000 	mov	r3, #0
 e011858:	e1a02009 	mov	r2, r9
 e01185c:	e1a01003 	mov	r1, r3
 e011860:	e1a0000b 	mov	r0, fp
 e011864:	e58d3000 	str	r3, [sp]
 e011868:	ebfffedd 	bl	e0113e4 <xTimerGenericCommand>
 e01186c:	e3500000 	cmp	r0, #0
 e011870:	1affff61 	bne	e0115fc <prvTimerTask+0xa4>
 e011874:	e59d000c 	ldr	r0, [sp, #12]
 e011878:	e3a01f79 	mov	r1, #484	; 0x1e4
 e01187c:	ebffe0d7 	bl	e009be0 <vAssertCalled>
 e011880:	eaffff5d 	b	e0115fc <prvTimerTask+0xa4>
 e011884:	e59d000c 	ldr	r0, [sp, #12]
 e011888:	e3a01e2f 	mov	r1, #752	; 0x2f0
 e01188c:	ebffe0d3 	bl	e009be0 <vAssertCalled>
 e011890:	e59a3018 	ldr	r3, [sl, #24]
 e011894:	e58aa010 	str	sl, [sl, #16]
 e011898:	e083200b 	add	r2, r3, fp
 e01189c:	e152000b 	cmp	r2, fp
 e0118a0:	e58a2004 	str	r2, [sl, #4]
 e0118a4:	8affffaa 	bhi	e011754 <prvTimerTask+0x1fc>
 e0118a8:	e3530000 	cmp	r3, #0
 e0118ac:	0affff55 	beq	e011608 <prvTimerTask+0xb0>
 e0118b0:	e5970000 	ldr	r0, [r7]
 e0118b4:	e28a1004 	add	r1, sl, #4
 e0118b8:	ebfffa51 	bl	e010204 <vListInsert>
 e0118bc:	eaffff51 	b	e011608 <prvTimerTask+0xb0>
 e0118c0:	e5960000 	ldr	r0, [r6]
 e0118c4:	e1a01008 	mov	r1, r8
 e0118c8:	ebfffa4d 	bl	e010204 <vListInsert>
 e0118cc:	eaffff4a 	b	e0115fc <prvTimerTask+0xa4>
 e0118d0:	e5970000 	ldr	r0, [r7]
 e0118d4:	e1a01008 	mov	r1, r8
 e0118d8:	ebfffa49 	bl	e010204 <vListInsert>
 e0118dc:	eaffff46 	b	e0115fc <prvTimerTask+0xa4>

0e0118e0 <prvInsertBlockIntoFreeList>:
 e0118e0:	e3043288 	movw	r3, #17032	; 0x4288
 e0118e4:	e346300a 	movt	r3, #24586	; 0x600a
 e0118e8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e0118ec:	e1a02003 	mov	r2, r3
 e0118f0:	e5933000 	ldr	r3, [r3]
 e0118f4:	e1530000 	cmp	r3, r0
 e0118f8:	3afffffb 	bcc	e0118ec <prvInsertBlockIntoFreeList+0xc>
 e0118fc:	e592c004 	ldr	ip, [r2, #4]
 e011900:	e5901004 	ldr	r1, [r0, #4]
 e011904:	e082e00c 	add	lr, r2, ip
 e011908:	e150000e 	cmp	r0, lr
 e01190c:	0081100c 	addeq	r1, r1, ip
 e011910:	01a00002 	moveq	r0, r2
 e011914:	e080c001 	add	ip, r0, r1
 e011918:	05821004 	streq	r1, [r2, #4]
 e01191c:	e153000c 	cmp	r3, ip
 e011920:	0a000003 	beq	e011934 <prvInsertBlockIntoFreeList+0x54>
 e011924:	e5803000 	str	r3, [r0]
 e011928:	e1500002 	cmp	r0, r2
 e01192c:	15820000 	strne	r0, [r2]
 e011930:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
 e011934:	e304c270 	movw	ip, #17008	; 0x4270
 e011938:	e346c00a 	movt	ip, #24586	; 0x600a
 e01193c:	e59cc000 	ldr	ip, [ip]
 e011940:	e153000c 	cmp	r3, ip
 e011944:	0afffff6 	beq	e011924 <prvInsertBlockIntoFreeList+0x44>
 e011948:	e5933004 	ldr	r3, [r3, #4]
 e01194c:	e0831001 	add	r1, r3, r1
 e011950:	e5801004 	str	r1, [r0, #4]
 e011954:	e5923000 	ldr	r3, [r2]
 e011958:	e5933000 	ldr	r3, [r3]
 e01195c:	e5803000 	str	r3, [r0]
 e011960:	eafffff0 	b	e011928 <prvInsertBlockIntoFreeList+0x48>

0e011964 <vPortFree>:
 e011964:	e92d4070 	push	{r4, r5, r6, lr}
 e011968:	e2504000 	subs	r4, r0, #0
 e01196c:	08bd8070 	popeq	{r4, r5, r6, pc}
 e011970:	e3045274 	movw	r5, #17012	; 0x4274
 e011974:	e346500a 	movt	r5, #24586	; 0x600a
 e011978:	e514303c 	ldr	r3, [r4, #-60]	; 0xffffffc4
 e01197c:	e5952000 	ldr	r2, [r5]
 e011980:	e1130002 	tst	r3, r2
 e011984:	0a00001f 	beq	e011a08 <vPortFree+0xa4>
 e011988:	e5141040 	ldr	r1, [r4, #-64]	; 0xffffffc0
 e01198c:	e3510000 	cmp	r1, #0
 e011990:	0a00000a 	beq	e0119c0 <vPortFree+0x5c>
 e011994:	e30012cd 	movw	r1, #717	; 0x2cd
 e011998:	e3050a44 	movw	r0, #23108	; 0x5a44
 e01199c:	e3400e01 	movt	r0, #3585	; 0xe01
 e0119a0:	ebffe08e 	bl	e009be0 <vAssertCalled>
 e0119a4:	e514303c 	ldr	r3, [r4, #-60]	; 0xffffffc4
 e0119a8:	e5952000 	ldr	r2, [r5]
 e0119ac:	e1130002 	tst	r3, r2
 e0119b0:	08bd8070 	popeq	{r4, r5, r6, pc}
 e0119b4:	e5141040 	ldr	r1, [r4, #-64]	; 0xffffffc0
 e0119b8:	e3510000 	cmp	r1, #0
 e0119bc:	18bd8070 	popne	{r4, r5, r6, pc}
 e0119c0:	e1c33002 	bic	r3, r3, r2
 e0119c4:	e504303c 	str	r3, [r4, #-60]	; 0xffffffc4
 e0119c8:	ebfff38f 	bl	e00e80c <vTaskEnterCritical>
 e0119cc:	e3043278 	movw	r3, #17016	; 0x4278
 e0119d0:	e346300a 	movt	r3, #24586	; 0x600a
 e0119d4:	e514203c 	ldr	r2, [r4, #-60]	; 0xffffffc4
 e0119d8:	e2440040 	sub	r0, r4, #64	; 0x40
 e0119dc:	e5931000 	ldr	r1, [r3]
 e0119e0:	e0822001 	add	r2, r2, r1
 e0119e4:	e5832000 	str	r2, [r3]
 e0119e8:	ebffffbc 	bl	e0118e0 <prvInsertBlockIntoFreeList>
 e0119ec:	e3043284 	movw	r3, #17028	; 0x4284
 e0119f0:	e346300a 	movt	r3, #24586	; 0x600a
 e0119f4:	e5932000 	ldr	r2, [r3]
 e0119f8:	e2822001 	add	r2, r2, #1
 e0119fc:	e5832000 	str	r2, [r3]
 e011a00:	e8bd4070 	pop	{r4, r5, r6, lr}
 e011a04:	eafff39b 	b	e00e878 <vTaskExitCritical>
 e011a08:	e3a01fb3 	mov	r1, #716	; 0x2cc
 e011a0c:	e3050a44 	movw	r0, #23108	; 0x5a44
 e011a10:	e3400e01 	movt	r0, #3585	; 0xe01
 e011a14:	ebffe071 	bl	e009be0 <vAssertCalled>
 e011a18:	e5143040 	ldr	r3, [r4, #-64]	; 0xffffffc0
 e011a1c:	e3530000 	cmp	r3, #0
 e011a20:	1affffdb 	bne	e011994 <vPortFree+0x30>
 e011a24:	e514303c 	ldr	r3, [r4, #-60]	; 0xffffffc4
 e011a28:	e5952000 	ldr	r2, [r5]
 e011a2c:	e1130002 	tst	r3, r2
 e011a30:	08bd8070 	popeq	{r4, r5, r6, pc}
 e011a34:	eaffffe1 	b	e0119c0 <vPortFree+0x5c>

0e011a38 <vPortDefineHeapRegions>:
 e011a38:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e011a3c:	e3049270 	movw	r9, #17008	; 0x4270
 e011a40:	e346900a 	movt	r9, #24586	; 0x600a
 e011a44:	e24dd00c 	sub	sp, sp, #12
 e011a48:	e1a06000 	mov	r6, r0
 e011a4c:	e5993000 	ldr	r3, [r9]
 e011a50:	e3530000 	cmp	r3, #0
 e011a54:	1a00004c 	bne	e011b8c <vPortDefineHeapRegions+0x154>
 e011a58:	e5902004 	ldr	r2, [r0, #4]
 e011a5c:	e3520000 	cmp	r2, #0
 e011a60:	0a000051 	beq	e011bac <vPortDefineHeapRegions+0x174>
 e011a64:	e3a07000 	mov	r7, #0
 e011a68:	e305ba44 	movw	fp, #23108	; 0x5a44
 e011a6c:	e340be01 	movt	fp, #3585	; 0xe01
 e011a70:	e304a288 	movw	sl, #17032	; 0x4288
 e011a74:	e346a00a 	movt	sl, #24586	; 0x600a
 e011a78:	e2866008 	add	r6, r6, #8
 e011a7c:	e1a08007 	mov	r8, r7
 e011a80:	ea000014 	b	e011ad8 <vPortDefineHeapRegions+0xa0>
 e011a84:	e1a01003 	mov	r1, r3
 e011a88:	e88a0090 	stm	sl, {r4, r7}
 e011a8c:	e0823005 	add	r3, r2, r5
 e011a90:	e2433040 	sub	r3, r3, #64	; 0x40
 e011a94:	e3c3303f 	bic	r3, r3, #63	; 0x3f
 e011a98:	e3a00000 	mov	r0, #0
 e011a9c:	e1510000 	cmp	r1, r0
 e011aa0:	e5830004 	str	r0, [r3, #4]
 e011aa4:	e5830000 	str	r0, [r3]
 e011aa8:	e0432005 	sub	r2, r3, r5
 e011aac:	e5843000 	str	r3, [r4]
 e011ab0:	e5842004 	str	r2, [r4, #4]
 e011ab4:	15814000 	strne	r4, [r1]
 e011ab8:	e2866008 	add	r6, r6, #8
 e011abc:	e5162004 	ldr	r2, [r6, #-4]
 e011ac0:	e5941004 	ldr	r1, [r4, #4]
 e011ac4:	e2877001 	add	r7, r7, #1
 e011ac8:	e0888001 	add	r8, r8, r1
 e011acc:	e3520000 	cmp	r2, #0
 e011ad0:	e5893000 	str	r3, [r9]
 e011ad4:	0a000017 	beq	e011b38 <vPortDefineHeapRegions+0x100>
 e011ad8:	e5164008 	ldr	r4, [r6, #-8]
 e011adc:	e1a05004 	mov	r5, r4
 e011ae0:	e314003f 	tst	r4, #63	; 0x3f
 e011ae4:	0a000005 	beq	e011b00 <vPortDefineHeapRegions+0xc8>
 e011ae8:	e284103f 	add	r1, r4, #63	; 0x3f
 e011aec:	e3c1103f 	bic	r1, r1, #63	; 0x3f
 e011af0:	e0822004 	add	r2, r2, r4
 e011af4:	e0422001 	sub	r2, r2, r1
 e011af8:	e1a04001 	mov	r4, r1
 e011afc:	e1a05001 	mov	r5, r1
 e011b00:	e3570000 	cmp	r7, #0
 e011b04:	0affffde 	beq	e011a84 <vPortDefineHeapRegions+0x4c>
 e011b08:	e3530000 	cmp	r3, #0
 e011b0c:	0a000017 	beq	e011b70 <vPortDefineHeapRegions+0x138>
 e011b10:	e1530005 	cmp	r3, r5
 e011b14:	31a01003 	movcc	r1, r3
 e011b18:	3affffdb 	bcc	e011a8c <vPortDefineHeapRegions+0x54>
 e011b1c:	e3a01fda 	mov	r1, #872	; 0x368
 e011b20:	e1a0000b 	mov	r0, fp
 e011b24:	e58d2004 	str	r2, [sp, #4]
 e011b28:	ebffe02c 	bl	e009be0 <vAssertCalled>
 e011b2c:	e5991000 	ldr	r1, [r9]
 e011b30:	e59d2004 	ldr	r2, [sp, #4]
 e011b34:	eaffffd4 	b	e011a8c <vPortDefineHeapRegions+0x54>
 e011b38:	e304227c 	movw	r2, #17020	; 0x427c
 e011b3c:	e346200a 	movt	r2, #24586	; 0x600a
 e011b40:	e3043278 	movw	r3, #17016	; 0x4278
 e011b44:	e346300a 	movt	r3, #24586	; 0x600a
 e011b48:	e3580000 	cmp	r8, #0
 e011b4c:	e5828000 	str	r8, [r2]
 e011b50:	e5838000 	str	r8, [r3]
 e011b54:	0a00001b 	beq	e011bc8 <vPortDefineHeapRegions+0x190>
 e011b58:	e3043274 	movw	r3, #17012	; 0x4274
 e011b5c:	e346300a 	movt	r3, #24586	; 0x600a
 e011b60:	e3a02102 	mov	r2, #-2147483648	; 0x80000000
 e011b64:	e5832000 	str	r2, [r3]
 e011b68:	e28dd00c 	add	sp, sp, #12
 e011b6c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e011b70:	e1a0000b 	mov	r0, fp
 e011b74:	e3001365 	movw	r1, #869	; 0x365
 e011b78:	e58d2004 	str	r2, [sp, #4]
 e011b7c:	ebffe017 	bl	e009be0 <vAssertCalled>
 e011b80:	e5993000 	ldr	r3, [r9]
 e011b84:	e59d2004 	ldr	r2, [sp, #4]
 e011b88:	eaffffe0 	b	e011b10 <vPortDefineHeapRegions+0xd8>
 e011b8c:	e3001342 	movw	r1, #834	; 0x342
 e011b90:	e3050a44 	movw	r0, #23108	; 0x5a44
 e011b94:	e3400e01 	movt	r0, #3585	; 0xe01
 e011b98:	ebffe010 	bl	e009be0 <vAssertCalled>
 e011b9c:	e5962004 	ldr	r2, [r6, #4]
 e011ba0:	e3520000 	cmp	r2, #0
 e011ba4:	15993000 	ldrne	r3, [r9]
 e011ba8:	1affffad 	bne	e011a64 <vPortDefineHeapRegions+0x2c>
 e011bac:	e304227c 	movw	r2, #17020	; 0x427c
 e011bb0:	e346200a 	movt	r2, #24586	; 0x600a
 e011bb4:	e3043278 	movw	r3, #17016	; 0x4278
 e011bb8:	e346300a 	movt	r3, #24586	; 0x600a
 e011bbc:	e3a01000 	mov	r1, #0
 e011bc0:	e5821000 	str	r1, [r2]
 e011bc4:	e5831000 	str	r1, [r3]
 e011bc8:	e3050a44 	movw	r0, #23108	; 0x5a44
 e011bcc:	e3400e01 	movt	r0, #3585	; 0xe01
 e011bd0:	e30013a7 	movw	r1, #935	; 0x3a7
 e011bd4:	ebffe001 	bl	e009be0 <vAssertCalled>
 e011bd8:	eaffffde 	b	e011b58 <vPortDefineHeapRegions+0x120>

0e011bdc <vApplicationMallocFailedHook>:
 e011bdc:	e92d4030 	push	{r4, r5, lr}
 e011be0:	e1a05000 	mov	r5, r0
 e011be4:	e24dd014 	sub	sp, sp, #20
 e011be8:	ebfff2db 	bl	e00e75c <xTaskGetSchedulerState>
 e011bec:	e3500001 	cmp	r0, #1
 e011bf0:	03054ae8 	movweq	r4, #23272	; 0x5ae8
 e011bf4:	03404e01 	movteq	r4, #3585	; 0xe01
 e011bf8:	0a000002 	beq	e011c08 <vApplicationMallocFailedHook+0x2c>
 e011bfc:	e3a00000 	mov	r0, #0
 e011c00:	ebfff09a 	bl	e00de70 <pcTaskGetName>
 e011c04:	e1a04000 	mov	r4, r0
 e011c08:	ebfff2ff 	bl	e00e80c <vTaskEnterCritical>
 e011c0c:	e3043278 	movw	r3, #17016	; 0x4278
 e011c10:	e346300a 	movt	r3, #24586	; 0x600a
 e011c14:	e305cb40 	movw	ip, #23360	; 0x5b40
 e011c18:	e340ce01 	movt	ip, #3585	; 0xe01
 e011c1c:	e5932000 	ldr	r2, [r3]
 e011c20:	e58d2008 	str	r2, [sp, #8]
 e011c24:	e3053af0 	movw	r3, #23280	; 0x5af0
 e011c28:	e3403e01 	movt	r3, #3585	; 0xe01
 e011c2c:	e30413ac 	movw	r1, #17324	; 0x43ac
 e011c30:	e3401e01 	movt	r1, #3585	; 0xe01
 e011c34:	e3a02045 	mov	r2, #69	; 0x45
 e011c38:	e3a00002 	mov	r0, #2
 e011c3c:	e58d500c 	str	r5, [sp, #12]
 e011c40:	e58d4004 	str	r4, [sp, #4]
 e011c44:	e58dc000 	str	ip, [sp]
 e011c48:	ebffdf4a 	bl	e009978 <rtk_log_write_nano>
 e011c4c:	eafffffe 	b	e011c4c <vApplicationMallocFailedHook+0x70>

0e011c50 <pvPortMalloc>:
 e011c50:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e011c54:	e3047270 	movw	r7, #17008	; 0x4270
 e011c58:	e346700a 	movt	r7, #24586	; 0x600a
 e011c5c:	e1a04000 	mov	r4, r0
 e011c60:	e5973000 	ldr	r3, [r7]
 e011c64:	e3530000 	cmp	r3, #0
 e011c68:	0a000054 	beq	e011dc0 <pvPortMalloc+0x170>
 e011c6c:	e3046274 	movw	r6, #17012	; 0x4274
 e011c70:	e346600a 	movt	r6, #24586	; 0x600a
 e011c74:	ebfff2e4 	bl	e00e80c <vTaskEnterCritical>
 e011c78:	e5963000 	ldr	r3, [r6]
 e011c7c:	e1140003 	tst	r4, r3
 e011c80:	1a00004b 	bne	e011db4 <pvPortMalloc+0x164>
 e011c84:	e2443001 	sub	r3, r4, #1
 e011c88:	e3730042 	cmn	r3, #66	; 0x42
 e011c8c:	8a000047 	bhi	e011db0 <pvPortMalloc+0x160>
 e011c90:	e2844040 	add	r4, r4, #64	; 0x40
 e011c94:	e314003f 	tst	r4, #63	; 0x3f
 e011c98:	1a00003f 	bne	e011d9c <pvPortMalloc+0x14c>
 e011c9c:	e3049278 	movw	r9, #17016	; 0x4278
 e011ca0:	e346900a 	movt	r9, #24586	; 0x600a
 e011ca4:	e5993000 	ldr	r3, [r9]
 e011ca8:	e1530004 	cmp	r3, r4
 e011cac:	3a000040 	bcc	e011db4 <pvPortMalloc+0x164>
 e011cb0:	e3043288 	movw	r3, #17032	; 0x4288
 e011cb4:	e346300a 	movt	r3, #24586	; 0x600a
 e011cb8:	e1a08003 	mov	r8, r3
 e011cbc:	e5935000 	ldr	r5, [r3]
 e011cc0:	ea000004 	b	e011cd8 <pvPortMalloc+0x88>
 e011cc4:	e5953000 	ldr	r3, [r5]
 e011cc8:	e3530000 	cmp	r3, #0
 e011ccc:	0a000004 	beq	e011ce4 <pvPortMalloc+0x94>
 e011cd0:	e1a08005 	mov	r8, r5
 e011cd4:	e1a05003 	mov	r5, r3
 e011cd8:	e5953004 	ldr	r3, [r5, #4]
 e011cdc:	e1530004 	cmp	r3, r4
 e011ce0:	3afffff7 	bcc	e011cc4 <pvPortMalloc+0x74>
 e011ce4:	e5973000 	ldr	r3, [r7]
 e011ce8:	e1530005 	cmp	r3, r5
 e011cec:	0a000030 	beq	e011db4 <pvPortMalloc+0x164>
 e011cf0:	e5953000 	ldr	r3, [r5]
 e011cf4:	e5987000 	ldr	r7, [r8]
 e011cf8:	e5883000 	str	r3, [r8]
 e011cfc:	e2877040 	add	r7, r7, #64	; 0x40
 e011d00:	e5953004 	ldr	r3, [r5, #4]
 e011d04:	e1530004 	cmp	r3, r4
 e011d08:	3a000036 	bcc	e011de8 <pvPortMalloc+0x198>
 e011d0c:	e0432004 	sub	r2, r3, r4
 e011d10:	e3520080 	cmp	r2, #128	; 0x80
 e011d14:	9a000008 	bls	e011d3c <pvPortMalloc+0xec>
 e011d18:	e085a004 	add	sl, r5, r4
 e011d1c:	e31a003f 	tst	sl, #63	; 0x3f
 e011d20:	1a000036 	bne	e011e00 <pvPortMalloc+0x1b0>
 e011d24:	e58a2004 	str	r2, [sl, #4]
 e011d28:	e5854004 	str	r4, [r5, #4]
 e011d2c:	e5983000 	ldr	r3, [r8]
 e011d30:	e58a3000 	str	r3, [sl]
 e011d34:	e588a000 	str	sl, [r8]
 e011d38:	e5953004 	ldr	r3, [r5, #4]
 e011d3c:	e304127c 	movw	r1, #17020	; 0x427c
 e011d40:	e346100a 	movt	r1, #24586	; 0x600a
 e011d44:	e5992000 	ldr	r2, [r9]
 e011d48:	e5910000 	ldr	r0, [r1]
 e011d4c:	e0422003 	sub	r2, r2, r3
 e011d50:	e1520000 	cmp	r2, r0
 e011d54:	e5892000 	str	r2, [r9]
 e011d58:	35812000 	strcc	r2, [r1]
 e011d5c:	e5962000 	ldr	r2, [r6]
 e011d60:	e3a01000 	mov	r1, #0
 e011d64:	e1823003 	orr	r3, r2, r3
 e011d68:	e3042280 	movw	r2, #17024	; 0x4280
 e011d6c:	e346200a 	movt	r2, #24586	; 0x600a
 e011d70:	e885000a 	stm	r5, {r1, r3}
 e011d74:	e5923000 	ldr	r3, [r2]
 e011d78:	e2833001 	add	r3, r3, #1
 e011d7c:	e5823000 	str	r3, [r2]
 e011d80:	ebfff2bc 	bl	e00e878 <vTaskExitCritical>
 e011d84:	e3570000 	cmp	r7, #0
 e011d88:	0a00000a 	beq	e011db8 <pvPortMalloc+0x168>
 e011d8c:	e317003f 	tst	r7, #63	; 0x3f
 e011d90:	1a00000f 	bne	e011dd4 <pvPortMalloc+0x184>
 e011d94:	e1a00007 	mov	r0, r7
 e011d98:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e011d9c:	e3c4303f 	bic	r3, r4, #63	; 0x3f
 e011da0:	e2833040 	add	r3, r3, #64	; 0x40
 e011da4:	e1530004 	cmp	r3, r4
 e011da8:	81a04003 	movhi	r4, r3
 e011dac:	8affffba 	bhi	e011c9c <pvPortMalloc+0x4c>
 e011db0:	e3a04000 	mov	r4, #0
 e011db4:	ebfff2af 	bl	e00e878 <vTaskExitCritical>
 e011db8:	e1a00004 	mov	r0, r4
 e011dbc:	ebffff86 	bl	e011bdc <vApplicationMallocFailedHook>
 e011dc0:	e3050a44 	movw	r0, #23108	; 0x5a44
 e011dc4:	e3400e01 	movt	r0, #3585	; 0xe01
 e011dc8:	e300114e 	movw	r1, #334	; 0x14e
 e011dcc:	ebffdf83 	bl	e009be0 <vAssertCalled>
 e011dd0:	eaffffa5 	b	e011c6c <pvPortMalloc+0x1c>
 e011dd4:	e30011cd 	movw	r1, #461	; 0x1cd
 e011dd8:	e3050a44 	movw	r0, #23108	; 0x5a44
 e011ddc:	e3400e01 	movt	r0, #3585	; 0xe01
 e011de0:	ebffdf7e 	bl	e009be0 <vAssertCalled>
 e011de4:	eaffffea 	b	e011d94 <pvPortMalloc+0x144>
 e011de8:	e300118e 	movw	r1, #398	; 0x18e
 e011dec:	e3050a44 	movw	r0, #23108	; 0x5a44
 e011df0:	e3400e01 	movt	r0, #3585	; 0xe01
 e011df4:	ebffdf79 	bl	e009be0 <vAssertCalled>
 e011df8:	e5953004 	ldr	r3, [r5, #4]
 e011dfc:	eaffffc2 	b	e011d0c <pvPortMalloc+0xbc>
 e011e00:	e3001196 	movw	r1, #406	; 0x196
 e011e04:	e3050a44 	movw	r0, #23108	; 0x5a44
 e011e08:	e3400e01 	movt	r0, #3585	; 0xe01
 e011e0c:	ebffdf73 	bl	e009be0 <vAssertCalled>
 e011e10:	e5952004 	ldr	r2, [r5, #4]
 e011e14:	e0422004 	sub	r2, r2, r4
 e011e18:	eaffffc1 	b	e011d24 <pvPortMalloc+0xd4>

0e011e1c <pvPortReAlloc>:
 e011e1c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e011e20:	e1a04001 	mov	r4, r1
 e011e24:	e2505000 	subs	r5, r0, #0
 e011e28:	0a00001e 	beq	e011ea8 <pvPortReAlloc+0x8c>
 e011e2c:	e3510000 	cmp	r1, #0
 e011e30:	0a000024 	beq	e011ec8 <pvPortReAlloc+0xac>
 e011e34:	e1a00001 	mov	r0, r1
 e011e38:	ebffff84 	bl	e011c50 <pvPortMalloc>
 e011e3c:	e2506000 	subs	r6, r0, #0
 e011e40:	0a000016 	beq	e011ea0 <pvPortReAlloc+0x84>
 e011e44:	e3047274 	movw	r7, #17012	; 0x4274
 e011e48:	e346700a 	movt	r7, #24586	; 0x600a
 e011e4c:	e515203c 	ldr	r2, [r5, #-60]	; 0xffffffc4
 e011e50:	e1a01005 	mov	r1, r5
 e011e54:	e5973000 	ldr	r3, [r7]
 e011e58:	e1c22003 	bic	r2, r2, r3
 e011e5c:	e2422040 	sub	r2, r2, #64	; 0x40
 e011e60:	e1520004 	cmp	r2, r4
 e011e64:	21a02004 	movcs	r2, r4
 e011e68:	ebffec3f 	bl	e00cf6c <__wrap_memcpy>
 e011e6c:	ebfff266 	bl	e00e80c <vTaskEnterCritical>
 e011e70:	e3043278 	movw	r3, #17016	; 0x4278
 e011e74:	e346300a 	movt	r3, #24586	; 0x600a
 e011e78:	e515203c 	ldr	r2, [r5, #-60]	; 0xffffffc4
 e011e7c:	e5971000 	ldr	r1, [r7]
 e011e80:	e2450040 	sub	r0, r5, #64	; 0x40
 e011e84:	e1c22001 	bic	r2, r2, r1
 e011e88:	e5931000 	ldr	r1, [r3]
 e011e8c:	e505203c 	str	r2, [r5, #-60]	; 0xffffffc4
 e011e90:	e0812002 	add	r2, r1, r2
 e011e94:	e5832000 	str	r2, [r3]
 e011e98:	ebfffe90 	bl	e0118e0 <prvInsertBlockIntoFreeList>
 e011e9c:	ebfff275 	bl	e00e878 <vTaskExitCritical>
 e011ea0:	e1a00006 	mov	r0, r6
 e011ea4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e011ea8:	e3510000 	cmp	r1, #0
 e011eac:	0a000002 	beq	e011ebc <pvPortReAlloc+0xa0>
 e011eb0:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 e011eb4:	e1a00001 	mov	r0, r1
 e011eb8:	eaffff64 	b	e011c50 <pvPortMalloc>
 e011ebc:	e1a06001 	mov	r6, r1
 e011ec0:	e1a00006 	mov	r0, r6
 e011ec4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e011ec8:	e1a06001 	mov	r6, r1
 e011ecc:	ebfffea4 	bl	e011964 <vPortFree>
 e011ed0:	e1a00006 	mov	r0, r6
 e011ed4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0e011ed8 <pxPortInitialiseStack>:
 e011ed8:	e92d4010 	push	{r4, lr}
 e011edc:	e1a04000 	mov	r4, r0
 e011ee0:	e1a03001 	mov	r3, r1
 e011ee4:	e3130001 	tst	r3, #1
 e011ee8:	e3a01000 	mov	r1, #0
 e011eec:	e1a00002 	mov	r0, r2
 e011ef0:	e5043010 	str	r3, [r4, #-16]
 e011ef4:	03a0201f 	moveq	r2, #31
 e011ef8:	13a0203f 	movne	r2, #63	; 0x3f
 e011efc:	e5040048 	str	r0, [r4, #-72]	; 0xffffffb8
 e011f00:	e504200c 	str	r2, [r4, #-12]
 e011f04:	e2440f53 	sub	r0, r4, #332	; 0x14c
 e011f08:	e3a02f41 	mov	r2, #260	; 0x104
 e011f0c:	e5841000 	str	r1, [r4]
 e011f10:	e5041004 	str	r1, [r4, #-4]
 e011f14:	e5041008 	str	r1, [r4, #-8]
 e011f18:	e5041014 	str	r1, [r4, #-20]	; 0xffffffec
 e011f1c:	e3013212 	movw	r3, #4626	; 0x1212
 e011f20:	e3413212 	movt	r3, #4626	; 0x1212
 e011f24:	e5043018 	str	r3, [r4, #-24]	; 0xffffffe8
 e011f28:	e3013111 	movw	r3, #4369	; 0x1111
 e011f2c:	e3413111 	movt	r3, #4369	; 0x1111
 e011f30:	e504301c 	str	r3, [r4, #-28]	; 0xffffffe4
 e011f34:	e3013010 	movw	r3, #4112	; 0x1010
 e011f38:	e3413010 	movt	r3, #4112	; 0x1010
 e011f3c:	e5043020 	str	r3, [r4, #-32]	; 0xffffffe0
 e011f40:	e3003909 	movw	r3, #2313	; 0x909
 e011f44:	e3403909 	movt	r3, #2313	; 0x909
 e011f48:	e5043024 	str	r3, [r4, #-36]	; 0xffffffdc
 e011f4c:	e3003808 	movw	r3, #2056	; 0x808
 e011f50:	e3403808 	movt	r3, #2056	; 0x808
 e011f54:	e5043028 	str	r3, [r4, #-40]	; 0xffffffd8
 e011f58:	e3003707 	movw	r3, #1799	; 0x707
 e011f5c:	e3403707 	movt	r3, #1799	; 0x707
 e011f60:	e504302c 	str	r3, [r4, #-44]	; 0xffffffd4
 e011f64:	e3003606 	movw	r3, #1542	; 0x606
 e011f68:	e3403606 	movt	r3, #1542	; 0x606
 e011f6c:	e5043030 	str	r3, [r4, #-48]	; 0xffffffd0
 e011f70:	e3003505 	movw	r3, #1285	; 0x505
 e011f74:	e3403505 	movt	r3, #1285	; 0x505
 e011f78:	e5043034 	str	r3, [r4, #-52]	; 0xffffffcc
 e011f7c:	e3003404 	movw	r3, #1028	; 0x404
 e011f80:	e3403404 	movt	r3, #1028	; 0x404
 e011f84:	e5043038 	str	r3, [r4, #-56]	; 0xffffffc8
 e011f88:	e3003303 	movw	r3, #771	; 0x303
 e011f8c:	e3403303 	movt	r3, #771	; 0x303
 e011f90:	e504303c 	str	r3, [r4, #-60]	; 0xffffffc4
 e011f94:	e3003202 	movw	r3, #514	; 0x202
 e011f98:	e3403202 	movt	r3, #514	; 0x202
 e011f9c:	e5043040 	str	r3, [r4, #-64]	; 0xffffffc0
 e011fa0:	e3003101 	movw	r3, #257	; 0x101
 e011fa4:	e3403101 	movt	r3, #257	; 0x101
 e011fa8:	e5043044 	str	r3, [r4, #-68]	; 0xffffffbc
 e011fac:	ebffebeb 	bl	e00cf60 <__wrap_memset>
 e011fb0:	e1a00004 	mov	r0, r4
 e011fb4:	e304330c 	movw	r3, #17164	; 0x430c
 e011fb8:	e346300a 	movt	r3, #24586	; 0x600a
 e011fbc:	e3a02001 	mov	r2, #1
 e011fc0:	e5202150 	str	r2, [r0, #-336]!	; 0xfffffeb0
 e011fc4:	e5832000 	str	r2, [r3]
 e011fc8:	e8bd8010 	pop	{r4, pc}

0e011fcc <xPortStartScheduler>:
 e011fcc:	e92d4010 	push	{r4, lr}
 e011fd0:	e10f3000 	mrs	r3, CPSR
 e011fd4:	e203301f 	and	r3, r3, #31
 e011fd8:	e3530010 	cmp	r3, #16
 e011fdc:	0a000007 	beq	e012000 <xPortStartScheduler+0x34>
 e011fe0:	f10c0080 	cpsid	i
 e011fe4:	f57ff04f 	dsb	sy
 e011fe8:	f57ff06f 	isb	sy
 e011fec:	ebffe030 	bl	e00a0b4 <vConfigureIPIInterrupt>
 e011ff0:	ebffe05a 	bl	e00a160 <vConfigureTickInterrupt>
 e011ff4:	ebffb834 	bl	e0000cc <vPortRestoreTaskContext>
 e011ff8:	e3a00000 	mov	r0, #0
 e011ffc:	e8bd8010 	pop	{r4, pc}
 e012000:	e300112b 	movw	r1, #299	; 0x12b
 e012004:	e3050b48 	movw	r0, #23368	; 0x5b48
 e012008:	e3400e01 	movt	r0, #3585	; 0xe01
 e01200c:	ebffdef3 	bl	e009be0 <vAssertCalled>
 e012010:	e3a00000 	mov	r0, #0
 e012014:	e8bd8010 	pop	{r4, pc}

0e012018 <xPortSpinLockTask>:
 e012018:	e3a02001 	mov	r2, #1
 e01201c:	e30432c0 	movw	r3, #17088	; 0x42c0
 e012020:	e346300a 	movt	r3, #24586	; 0x600a
 e012024:	e1931f9f 	ldrex	r1, [r3]
 e012028:	e3510000 	cmp	r1, #0
 e01202c:	1320f002 	wfene
 e012030:	01831f92 	strexeq	r1, r2, [r3]
 e012034:	03510000 	cmpeq	r1, #0
 e012038:	1afffff9 	bne	e012024 <xPortSpinLockTask+0xc>
 e01203c:	f57ff05f 	dmb	sy
 e012040:	e12fff1e 	bx	lr

0e012044 <xPortSpinUnLockTask>:
 e012044:	e3a02000 	mov	r2, #0
 e012048:	e30432c0 	movw	r3, #17088	; 0x42c0
 e01204c:	e346300a 	movt	r3, #24586	; 0x600a
 e012050:	f57ff05f 	dmb	sy
 e012054:	e5832000 	str	r2, [r3]
 e012058:	f57ff04f 	dsb	sy
 e01205c:	e320f004 	sev
 e012060:	e12fff1e 	bx	lr

0e012064 <FreeRTOS_Tick_Handler>:
 e012064:	e92d4010 	push	{r4, lr}
 e012068:	ee103fb0 	mrc	15, 0, r3, cr0, cr0, {5}
 e01206c:	e6ef3073 	uxtb	r3, r3
 e012070:	e3530000 	cmp	r3, #0
 e012074:	13a04001 	movne	r4, #1
 e012078:	03a04000 	moveq	r4, #0
 e01207c:	1a000005 	bne	e012098 <FreeRTOS_Tick_Handler+0x34>
 e012080:	ebfff46a 	bl	e00f230 <xTaskIncrementTick>
 e012084:	e3043310 	movw	r3, #17168	; 0x4310
 e012088:	e346300a 	movt	r3, #24586	; 0x600a
 e01208c:	e7830104 	str	r0, [r3, r4, lsl #2]
 e012090:	e8bd4010 	pop	{r4, lr}
 e012094:	eaffe04c 	b	e00a1cc <vClearTickInterrupt>
 e012098:	ebffef58 	bl	e00de00 <xTaskGetCurrentYieldPending>
 e01209c:	e3043310 	movw	r3, #17168	; 0x4310
 e0120a0:	e346300a 	movt	r3, #24586	; 0x600a
 e0120a4:	e7830104 	str	r0, [r3, r4, lsl #2]
 e0120a8:	e8bd4010 	pop	{r4, lr}
 e0120ac:	eaffe046 	b	e00a1cc <vClearTickInterrupt>

0e0120b0 <ulPortInterruptLock>:
 e0120b0:	e10f0000 	mrs	r0, CPSR
 e0120b4:	f10c0080 	cpsid	i
 e0120b8:	f57ff04f 	dsb	sy
 e0120bc:	f57ff06f 	isb	sy
 e0120c0:	e12fff1e 	bx	lr

0e0120c4 <ulPortInterruptUnLock>:
 e0120c4:	e121f000 	msr	CPSR_c, r0
 e0120c8:	e12fff1e 	bx	lr

0e0120cc <xPortCpuIsInInterrupt>:
 e0120cc:	e10f3000 	mrs	r3, CPSR
 e0120d0:	e203301f 	and	r3, r3, #31
 e0120d4:	e3530010 	cmp	r3, #16
 e0120d8:	0a000004 	beq	e0120f0 <xPortCpuIsInInterrupt+0x24>
 e0120dc:	e10f0000 	mrs	r0, CPSR
 e0120e0:	e200001f 	and	r0, r0, #31
 e0120e4:	e250001f 	subs	r0, r0, #31
 e0120e8:	13a00001 	movne	r0, #1
 e0120ec:	e12fff1e 	bx	lr
 e0120f0:	e3a00000 	mov	r0, #0
 e0120f4:	e12fff1e 	bx	lr

0e0120f8 <FreeRTOS_IPI_Handler>:
 e0120f8:	ee103fb0 	mrc	15, 0, r3, cr0, cr0, {5}
 e0120fc:	e6ef3073 	uxtb	r3, r3
 e012100:	e2533000 	subs	r3, r3, #0
 e012104:	13a03001 	movne	r3, #1
 e012108:	e3042310 	movw	r2, #17168	; 0x4310
 e01210c:	e346200a 	movt	r2, #24586	; 0x600a
 e012110:	e3a01001 	mov	r1, #1
 e012114:	e7821103 	str	r1, [r2, r3, lsl #2]
 e012118:	e12fff1e 	bx	lr

0e01211c <ulPortGetCoreId>:
 e01211c:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
 e012120:	e6ef0070 	uxtb	r0, r0
 e012124:	e2500000 	subs	r0, r0, #0
 e012128:	13a00001 	movne	r0, #1
 e01212c:	e12fff1e 	bx	lr

0e012130 <FreeRTOS_IPI_CPUHP_Handler>:
 e012130:	ee103fb0 	mrc	15, 0, r3, cr0, cr0, {5}
 e012134:	e6ef3073 	uxtb	r3, r3
 e012138:	e2533000 	subs	r3, r3, #0
 e01213c:	13a03001 	movne	r3, #1
 e012140:	e3042310 	movw	r2, #17168	; 0x4310
 e012144:	e346200a 	movt	r2, #24586	; 0x600a
 e012148:	e3a01001 	mov	r1, #1
 e01214c:	e7821103 	str	r1, [r2, r3, lsl #2]
 e012150:	e12fff1e 	bx	lr

0e012154 <vPortYieldOtherCore>:
 e012154:	eaffdff9 	b	e00a140 <vConfigureSMPSendIPI>

0e012158 <vApplicationStackOverflowHook>:
 e012158:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e01215c:	e3a02045 	mov	r2, #69	; 0x45
 e012160:	e24dd00c 	sub	sp, sp, #12
 e012164:	e3a00002 	mov	r0, #2
 e012168:	e3053bf0 	movw	r3, #23536	; 0x5bf0
 e01216c:	e3403e01 	movt	r3, #3585	; 0xe01
 e012170:	e58d1000 	str	r1, [sp]
 e012174:	e30413ac 	movw	r1, #17324	; 0x43ac
 e012178:	e3401e01 	movt	r1, #3585	; 0xe01
 e01217c:	ebffddfd 	bl	e009978 <rtk_log_write_nano>
 e012180:	e10f3000 	mrs	r3, CPSR
 e012184:	f10c0080 	cpsid	i
 e012188:	f57ff04f 	dsb	sy
 e01218c:	f57ff06f 	isb	sy
 e012190:	eafffffe 	b	e012190 <vApplicationStackOverflowHook+0x38>

0e012194 <vApplicationGetIdleTaskMemory>:
 e012194:	e3a0cb01 	mov	ip, #1024	; 0x400
 e012198:	e3083318 	movw	r3, #33560	; 0x8318
 e01219c:	e346300a 	movt	r3, #24586	; 0x600a
 e0121a0:	e5803000 	str	r3, [r0]
 e0121a4:	e3043318 	movw	r3, #17176	; 0x4318
 e0121a8:	e346300a 	movt	r3, #24586	; 0x600a
 e0121ac:	e5813000 	str	r3, [r1]
 e0121b0:	e582c000 	str	ip, [r2]
 e0121b4:	e12fff1e 	bx	lr

0e0121b8 <vApplicationGetPassiveIdleTaskMemory>:
 e0121b8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e0121bc:	e308c490 	movw	ip, #33936	; 0x8490
 e0121c0:	e346c00a 	movt	ip, #24586	; 0x600a
 e0121c4:	e3a0ef5e 	mov	lr, #376	; 0x178
 e0121c8:	e02cc39e 	mla	ip, lr, r3, ip
 e0121cc:	e580c000 	str	ip, [r0]
 e0121d0:	e3050318 	movw	r0, #21272	; 0x5318
 e0121d4:	e346000a 	movt	r0, #24586	; 0x600a
 e0121d8:	e0800603 	add	r0, r0, r3, lsl #12
 e0121dc:	e3a03b01 	mov	r3, #1024	; 0x400
 e0121e0:	e5810000 	str	r0, [r1]
 e0121e4:	e1c230b0 	strh	r3, [r2]
 e0121e8:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

0e0121ec <vApplicationGetTimerTaskMemory>:
 e0121ec:	e3a0cb02 	mov	ip, #2048	; 0x800
 e0121f0:	e3083608 	movw	r3, #34312	; 0x8608
 e0121f4:	e346300a 	movt	r3, #24586	; 0x600a
 e0121f8:	e5803000 	str	r3, [r0]
 e0121fc:	e3063318 	movw	r3, #25368	; 0x6318
 e012200:	e346300a 	movt	r3, #24586	; 0x600a
 e012204:	e5813000 	str	r3, [r1]
 e012208:	e582c000 	str	ip, [r2]
 e01220c:	e12fff1e 	bx	lr

0e012210 <pmu_post_sleep_processing>:
 e012210:	e92d4010 	push	{r4, lr}
 e012214:	e30336bc 	movw	r3, #14012	; 0x36bc
 e012218:	e3403e01 	movt	r3, #3585	; 0xe01
 e01221c:	e24dd008 	sub	sp, sp, #8
 e012220:	e5900000 	ldr	r0, [r0]
 e012224:	e3a04000 	mov	r4, #0
 e012228:	e58d4004 	str	r4, [sp, #4]
 e01222c:	e12fff33 	blx	r3
 e012230:	e3042290 	movw	r2, #17040	; 0x4290
 e012234:	e346200a 	movt	r2, #24586	; 0x600a
 e012238:	e3a03ffa 	mov	r3, #1000	; 0x3e8
 e01223c:	e5921000 	ldr	r1, [r2]
 e012240:	e0800001 	add	r0, r0, r1
 e012244:	e200101f 	and	r1, r0, #31
 e012248:	e5821000 	str	r1, [r2]
 e01224c:	e0830390 	umull	r0, r3, r0, r3
 e012250:	e1a007a0 	lsr	r0, r0, #15
 e012254:	e1800883 	orr	r0, r0, r3, lsl #17
 e012258:	e58d0004 	str	r0, [sp, #4]
 e01225c:	e59d0004 	ldr	r0, [sp, #4]
 e012260:	ebffef18 	bl	e00dec8 <vTaskCompTick>
 e012264:	e30339c8 	movw	r3, #14792	; 0x39c8
 e012268:	e346300a 	movt	r3, #24586	; 0x600a
 e01226c:	e1a00004 	mov	r0, r4
 e012270:	e5834000 	str	r4, [r3]
 e012274:	e28dd008 	add	sp, sp, #8
 e012278:	e8bd4010 	pop	{r4, lr}
 e01227c:	eaffe2bb 	b	e00ad70 <pmu_set_sysactive_time>

0e012280 <vPortSuppressTicksAndSleep>:
 e012280:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 e012284:	e24dd00c 	sub	sp, sp, #12
 e012288:	ee103fb0 	mrc	15, 0, r3, cr0, cr0, {5}
 e01228c:	e21340ff 	ands	r4, r3, #255	; 0xff
 e012290:	0a000014 	beq	e0122e8 <vPortSuppressTicksAndSleep+0x68>
 e012294:	ee103fb0 	mrc	15, 0, r3, cr0, cr0, {5}
 e012298:	e6ef3073 	uxtb	r3, r3
 e01229c:	e3530000 	cmp	r3, #0
 e0122a0:	1a000001 	bne	e0122ac <vPortSuppressTicksAndSleep+0x2c>
 e0122a4:	e28dd00c 	add	sp, sp, #12
 e0122a8:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
 e0122ac:	ebffe2e9 	bl	e00ae58 <pmu_ready_to_sleep>
 e0122b0:	e3500000 	cmp	r0, #0
 e0122b4:	1a000037 	bne	e012398 <vPortSuppressTicksAndSleep+0x118>
 e0122b8:	e10f3000 	mrs	r3, CPSR
 e0122bc:	f10c0080 	cpsid	i
 e0122c0:	f57ff04f 	dsb	sy
 e0122c4:	f57ff06f 	isb	sy
 e0122c8:	f57ff04f 	dsb	sy
 e0122cc:	e320f003 	wfi
 e0122d0:	f57ff06f 	isb	sy
 e0122d4:	f1080080 	cpsie	i
 e0122d8:	f57ff04f 	dsb	sy
 e0122dc:	f57ff06f 	isb	sy
 e0122e0:	e28dd00c 	add	sp, sp, #12
 e0122e4:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
 e0122e8:	e1a05000 	mov	r5, r0
 e0122ec:	e10f3000 	mrs	r3, CPSR
 e0122f0:	f10c0080 	cpsid	i
 e0122f4:	f57ff04f 	dsb	sy
 e0122f8:	f57ff06f 	isb	sy
 e0122fc:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
 e012300:	e3833002 	orr	r3, r3, #2
 e012304:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
 e012308:	e3056268 	movw	r6, #21096	; 0x5268
 e01230c:	e3466009 	movt	r6, #24585	; 0x6009
 e012310:	e3a08001 	mov	r8, #1
 e012314:	e30472c0 	movw	r7, #17088	; 0x42c0
 e012318:	e346700a 	movt	r7, #24586	; 0x600a
 e01231c:	e5864000 	str	r4, [r6]
 e012320:	e1973f9f 	ldrex	r3, [r7]
 e012324:	e3530000 	cmp	r3, #0
 e012328:	1320f002 	wfene
 e01232c:	01873f98 	strexeq	r3, r8, [r7]
 e012330:	03530000 	cmpeq	r3, #0
 e012334:	1afffff9 	bne	e012320 <vPortSuppressTicksAndSleep+0xa0>
 e012338:	f57ff05f 	dmb	sy
 e01233c:	ebfff0e6 	bl	e00e6dc <eTaskConfirmSleepModeStatus>
 e012340:	f57ff05f 	dmb	sy
 e012344:	e5874000 	str	r4, [r7]
 e012348:	f57ff04f 	dsb	sy
 e01234c:	e320f004 	sev
 e012350:	e3500000 	cmp	r0, #0
 e012354:	1a00001e 	bne	e0123d4 <vPortSuppressTicksAndSleep+0x154>
 e012358:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
 e01235c:	e3c33002 	bic	r3, r3, #2
 e012360:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
 e012364:	e3a03c02 	mov	r3, #512	; 0x200
 e012368:	e3443100 	movt	r3, #16640	; 0x4100
 e01236c:	e5933008 	ldr	r3, [r3, #8]
 e012370:	e3130802 	tst	r3, #131072	; 0x20000
 e012374:	0a000000 	beq	e01237c <vPortSuppressTicksAndSleep+0xfc>
 e012378:	e320f004 	sev
 e01237c:	e3a03001 	mov	r3, #1
 e012380:	e5863000 	str	r3, [r6]
 e012384:	f1080080 	cpsie	i
 e012388:	f57ff04f 	dsb	sy
 e01238c:	f57ff06f 	isb	sy
 e012390:	e28dd00c 	add	sp, sp, #12
 e012394:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
 e012398:	ebffe340 	bl	e00b0a0 <pmu_get_sleep_type>
 e01239c:	e3500000 	cmp	r0, #0
 e0123a0:	0a000015 	beq	e0123fc <vPortSuppressTicksAndSleep+0x17c>
 e0123a4:	e10f3000 	mrs	r3, CPSR
 e0123a8:	f10c0080 	cpsid	i
 e0123ac:	f57ff04f 	dsb	sy
 e0123b0:	f57ff06f 	isb	sy
 e0123b4:	f57ff04f 	dsb	sy
 e0123b8:	e320f002 	wfe
 e0123bc:	e320f002 	wfe
 e0123c0:	f57ff06f 	isb	sy
 e0123c4:	f1080080 	cpsie	i
 e0123c8:	f57ff04f 	dsb	sy
 e0123cc:	f57ff06f 	isb	sy
 e0123d0:	eaffffb3 	b	e0122a4 <vPortSuppressTicksAndSleep+0x24>
 e0123d4:	ebffe29f 	bl	e00ae58 <pmu_ready_to_sleep>
 e0123d8:	e3500000 	cmp	r0, #0
 e0123dc:	1a00000b 	bne	e012410 <vPortSuppressTicksAndSleep+0x190>
 e0123e0:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
 e0123e4:	e3c33002 	bic	r3, r3, #2
 e0123e8:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
 e0123ec:	f57ff04f 	dsb	sy
 e0123f0:	e320f003 	wfi
 e0123f4:	f57ff06f 	isb	sy
 e0123f8:	eaffffd9 	b	e012364 <vPortSuppressTicksAndSleep+0xe4>
 e0123fc:	e3a01001 	mov	r1, #1
 e012400:	e1a00001 	mov	r0, r1
 e012404:	ebffe334 	bl	e00b0dc <pmu_set_secondary_cpu_state>
 e012408:	ef000000 	svc	0x00000000
 e01240c:	eaffffa4 	b	e0122a4 <vPortSuppressTicksAndSleep+0x24>
 e012410:	e58d5004 	str	r5, [sp, #4]
 e012414:	ebffe321 	bl	e00b0a0 <pmu_get_sleep_type>
 e012418:	e3500000 	cmp	r0, #0
 e01241c:	0a00001e 	beq	e01249c <vPortSuppressTicksAndSleep+0x21c>
 e012420:	e3a03c02 	mov	r3, #512	; 0x200
 e012424:	e3443100 	movt	r3, #16640	; 0x4100
 e012428:	e5933008 	ldr	r3, [r3, #8]
 e01242c:	e3130802 	tst	r3, #131072	; 0x20000
 e012430:	0affffcb 	beq	e012364 <vPortSuppressTicksAndSleep+0xe4>
 e012434:	e28d0004 	add	r0, sp, #4
 e012438:	ebffe29d 	bl	e00aeb4 <pmu_pre_sleep_processing>
 e01243c:	ebffe317 	bl	e00b0a0 <pmu_get_sleep_type>
 e012440:	e3500000 	cmp	r0, #0
 e012444:	1a00000e 	bne	e012484 <vPortSuppressTicksAndSleep+0x204>
 e012448:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
 e01244c:	e3130001 	tst	r3, #1
 e012450:	1a000001 	bne	e01245c <vPortSuppressTicksAndSleep+0x1dc>
 e012454:	e3a03001 	mov	r3, #1
 e012458:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
 e01245c:	ec598f1e 	mrrc	15, 1, r8, r9, cr14
 e012460:	e30334b0 	movw	r3, #13488	; 0x34b0
 e012464:	e346300a 	movt	r3, #24586	; 0x600a
 e012468:	e3a02ffa 	mov	r2, #1000	; 0x3e8
 e01246c:	e1c300d0 	ldrd	r0, [r3]
 e012470:	e3a03000 	mov	r3, #0
 e012474:	ebffb7c6 	bl	e000394 <__aeabi_uldivmod>
 e012478:	e0902008 	adds	r2, r0, r8
 e01247c:	e0a13009 	adc	r3, r1, r9
 e012480:	ec432f3e 	mcrr	15, 3, r2, r3, cr14
 e012484:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
 e012488:	e3c33002 	bic	r3, r3, #2
 e01248c:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
 e012490:	e28d0004 	add	r0, sp, #4
 e012494:	ebffff5d 	bl	e012210 <pmu_post_sleep_processing>
 e012498:	eaffffb1 	b	e012364 <vPortSuppressTicksAndSleep+0xe4>
 e01249c:	e1a00008 	mov	r0, r8
 e0124a0:	ebffe311 	bl	e00b0ec <pmu_get_secondary_cpu_state>
 e0124a4:	e3500002 	cmp	r0, #2
 e0124a8:	0affffad 	beq	e012364 <vPortSuppressTicksAndSleep+0xe4>
 e0124ac:	e1a00008 	mov	r0, r8
 e0124b0:	ebffe30d 	bl	e00b0ec <pmu_get_secondary_cpu_state>
 e0124b4:	e2501000 	subs	r1, r0, #0
 e0124b8:	1affffdd 	bne	e012434 <vPortSuppressTicksAndSleep+0x1b4>
 e0124bc:	f1080080 	cpsie	i
 e0124c0:	f57ff04f 	dsb	sy
 e0124c4:	f57ff06f 	isb	sy
 e0124c8:	e1a00008 	mov	r0, r8
 e0124cc:	ebffde33 	bl	e009da0 <arm_gic_raise_softirq>
 e0124d0:	ee1e3f33 	mrc	15, 0, r3, cr14, cr3, {1}
 e0124d4:	e3c33002 	bic	r3, r3, #2
 e0124d8:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
 e0124dc:	e3a00064 	mov	r0, #100	; 0x64
 e0124e0:	e30a3b38 	movw	r3, #43832	; 0xab38
 e0124e4:	e3403e00 	movt	r3, #3584	; 0xe00
 e0124e8:	e12fff33 	blx	r3
 e0124ec:	eaffff9c 	b	e012364 <vPortSuppressTicksAndSleep+0xe4>

0e0124f0 <vPortCleanUpTCB>:
 e0124f0:	e12fff1e 	bx	lr

0e0124f4 <print_unsigned_num>:
 e0124f4:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e0124f8:	e1a06000 	mov	r6, r0
 e0124fc:	e24dd024 	sub	sp, sp, #36	; 0x24
 e012500:	e28da00c 	add	sl, sp, #12
 e012504:	e1a05001 	mov	r5, r1
 e012508:	e59d704c 	ldr	r7, [sp, #76]	; 0x4c
 e01250c:	e1a08002 	mov	r8, r2
 e012510:	e1a0b003 	mov	fp, r3
 e012514:	e1a0900a 	mov	r9, sl
 e012518:	e3a04000 	mov	r4, #0
 e01251c:	ea00000b 	b	e012550 <print_unsigned_num+0x5c>
 e012520:	e28c3057 	add	r3, ip, #87	; 0x57
 e012524:	e3570001 	cmp	r7, #1
 e012528:	e6ef3073 	uxtb	r3, r3
 e01252c:	0a000012 	beq	e01257c <print_unsigned_num+0x88>
 e012530:	e1560008 	cmp	r6, r8
 e012534:	e2842001 	add	r2, r4, #1
 e012538:	e1a06000 	mov	r6, r0
 e01253c:	e4c93001 	strb	r3, [r9], #1
 e012540:	e2d50000 	sbcs	r0, r5, #0
 e012544:	e1a05001 	mov	r5, r1
 e012548:	3a00000e 	bcc	e012588 <print_unsigned_num+0x94>
 e01254c:	e1a04002 	mov	r4, r2
 e012550:	e1a00006 	mov	r0, r6
 e012554:	e1a01005 	mov	r1, r5
 e012558:	e1a02008 	mov	r2, r8
 e01255c:	e3a03000 	mov	r3, #0
 e012560:	ebffb78b 	bl	e000394 <__aeabi_uldivmod>
 e012564:	e6efc072 	uxtb	ip, r2
 e012568:	e28c3030 	add	r3, ip, #48	; 0x30
 e01256c:	e3520009 	cmp	r2, #9
 e012570:	8affffea 	bhi	e012520 <print_unsigned_num+0x2c>
 e012574:	e6ef3073 	uxtb	r3, r3
 e012578:	eaffffec 	b	e012530 <print_unsigned_num+0x3c>
 e01257c:	e28c3037 	add	r3, ip, #55	; 0x37
 e012580:	e6ef3073 	uxtb	r3, r3
 e012584:	eaffffe9 	b	e012530 <print_unsigned_num+0x3c>
 e012588:	e1a07002 	mov	r7, r2
 e01258c:	e59d2050 	ldr	r2, [sp, #80]	; 0x50
 e012590:	e3520000 	cmp	r2, #0
 e012594:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
 e012598:	0a000010 	beq	e0125e0 <print_unsigned_num+0xec>
 e01259c:	e2422001 	sub	r2, r2, #1
 e0125a0:	e35b0030 	cmp	fp, #48	; 0x30
 e0125a4:	e58d2048 	str	r2, [sp, #72]	; 0x48
 e0125a8:	1a000035 	bne	e012684 <print_unsigned_num+0x190>
 e0125ac:	e3a0002d 	mov	r0, #45	; 0x2d
 e0125b0:	e30a567c 	movw	r5, #42620	; 0xa67c
 e0125b4:	e3405e00 	movt	r5, #3584	; 0xe00
 e0125b8:	e58d3004 	str	r3, [sp, #4]
 e0125bc:	e12fff35 	blx	r5
 e0125c0:	e59d3048 	ldr	r3, [sp, #72]	; 0x48
 e0125c4:	e3530000 	cmp	r3, #0
 e0125c8:	e59d3004 	ldr	r3, [sp, #4]
 e0125cc:	da000021 	ble	e012658 <print_unsigned_num+0x164>
 e0125d0:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
 e0125d4:	e1570002 	cmp	r7, r2
 e0125d8:	ba00000a 	blt	e012608 <print_unsigned_num+0x114>
 e0125dc:	ea00001b 	b	e012650 <print_unsigned_num+0x15c>
 e0125e0:	e3520000 	cmp	r2, #0
 e0125e4:	d30a567c 	movwle	r5, #42620	; 0xa67c
 e0125e8:	d3405e00 	movtle	r5, #3584	; 0xe00
 e0125ec:	da000019 	ble	e012658 <print_unsigned_num+0x164>
 e0125f0:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 e0125f4:	e30a567c 	movw	r5, #42620	; 0xa67c
 e0125f8:	e3405e00 	movt	r5, #3584	; 0xe00
 e0125fc:	e59d2050 	ldr	r2, [sp, #80]	; 0x50
 e012600:	e1510007 	cmp	r1, r7
 e012604:	da00000d 	ble	e012640 <print_unsigned_num+0x14c>
 e012608:	e59d6048 	ldr	r6, [sp, #72]	; 0x48
 e01260c:	e1a08003 	mov	r8, r3
 e012610:	e1a0000b 	mov	r0, fp
 e012614:	e2466001 	sub	r6, r6, #1
 e012618:	e12fff35 	blx	r5
 e01261c:	e1570006 	cmp	r7, r6
 e012620:	1afffffa 	bne	e012610 <print_unsigned_num+0x11c>
 e012624:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 e012628:	e1e02007 	mvn	r2, r7
 e01262c:	e0822001 	add	r2, r2, r1
 e012630:	e59d1050 	ldr	r1, [sp, #80]	; 0x50
 e012634:	e1a03008 	mov	r3, r8
 e012638:	e2811001 	add	r1, r1, #1
 e01263c:	e0822001 	add	r2, r2, r1
 e012640:	e59d1050 	ldr	r1, [sp, #80]	; 0x50
 e012644:	e58d2050 	str	r2, [sp, #80]	; 0x50
 e012648:	e3510000 	cmp	r1, #0
 e01264c:	0a000001 	beq	e012658 <print_unsigned_num+0x164>
 e012650:	e31b00df 	tst	fp, #223	; 0xdf
 e012654:	0a000010 	beq	e01269c <print_unsigned_num+0x1a8>
 e012658:	e08a4004 	add	r4, sl, r4
 e01265c:	e1a00003 	mov	r0, r3
 e012660:	ea000000 	b	e012668 <print_unsigned_num+0x174>
 e012664:	e5740001 	ldrb	r0, [r4, #-1]!
 e012668:	e12fff35 	blx	r5
 e01266c:	e15a0004 	cmp	sl, r4
 e012670:	1afffffb 	bne	e012664 <print_unsigned_num+0x170>
 e012674:	e59d3050 	ldr	r3, [sp, #80]	; 0x50
 e012678:	e0830007 	add	r0, r3, r7
 e01267c:	e28dd024 	add	sp, sp, #36	; 0x24
 e012680:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e012684:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
 e012688:	e3520000 	cmp	r2, #0
 e01268c:	d30a567c 	movwle	r5, #42620	; 0xa67c
 e012690:	d3405e00 	movtle	r5, #3584	; 0xe00
 e012694:	caffffd5 	bgt	e0125f0 <print_unsigned_num+0xfc>
 e012698:	eaffffec 	b	e012650 <print_unsigned_num+0x15c>
 e01269c:	e3a0002d 	mov	r0, #45	; 0x2d
 e0126a0:	e58d3004 	str	r3, [sp, #4]
 e0126a4:	e12fff35 	blx	r5
 e0126a8:	e59d3004 	ldr	r3, [sp, #4]
 e0126ac:	eaffffe9 	b	e012658 <print_unsigned_num+0x164>

0e0126b0 <SYSCFG_RLVersion>:
 e0126b0:	e30532b0 	movw	r3, #21168	; 0x52b0
 e0126b4:	e3463009 	movt	r3, #24585	; 0x6009
 e0126b8:	e5d30000 	ldrb	r0, [r3]
 e0126bc:	e35000ff 	cmp	r0, #255	; 0xff
 e0126c0:	112fff1e 	bxne	lr
 e0126c4:	e3a02902 	mov	r2, #32768	; 0x8000
 e0126c8:	e3442200 	movt	r2, #16896	; 0x4200
 e0126cc:	e5920274 	ldr	r0, [r2, #628]	; 0x274
 e0126d0:	e3c0020f 	bic	r0, r0, #-268435456	; 0xf0000000
 e0126d4:	e380120a 	orr	r1, r0, #-1610612736	; 0xa0000000
 e0126d8:	e5821274 	str	r1, [r2, #628]	; 0x274
 e0126dc:	e5921274 	ldr	r1, [r2, #628]	; 0x274
 e0126e0:	e5820274 	str	r0, [r2, #628]	; 0x274
 e0126e4:	e7e32851 	ubfx	r2, r1, #16, #4
 e0126e8:	e1a00002 	mov	r0, r2
 e0126ec:	e5c32000 	strb	r2, [r3]
 e0126f0:	e12fff1e 	bx	lr

0e0126f4 <DiagVprintf>:
 e0126f4:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e0126f8:	e1a04000 	mov	r4, r0
 e0126fc:	e5d00000 	ldrb	r0, [r0]
 e012700:	e24dd02c 	sub	sp, sp, #44	; 0x2c
 e012704:	e3500000 	cmp	r0, #0
 e012708:	0a00021d 	beq	e012f84 <DiagVprintf+0x890>
 e01270c:	e3a03000 	mov	r3, #0
 e012710:	e1a09001 	mov	r9, r1
 e012714:	e1a06003 	mov	r6, r3
 e012718:	e3a0a00a 	mov	sl, #10
 e01271c:	e58d3014 	str	r3, [sp, #20]
 e012720:	ea000006 	b	e012740 <DiagVprintf+0x4c>
 e012724:	e30a567c 	movw	r5, #42620	; 0xa67c
 e012728:	e3405e00 	movt	r5, #3584	; 0xe00
 e01272c:	e2866001 	add	r6, r6, #1
 e012730:	e12fff35 	blx	r5
 e012734:	e5d40000 	ldrb	r0, [r4]
 e012738:	e3500000 	cmp	r0, #0
 e01273c:	0a000086 	beq	e01295c <DiagVprintf+0x268>
 e012740:	e2844001 	add	r4, r4, #1
 e012744:	e3500025 	cmp	r0, #37	; 0x25
 e012748:	1afffff5 	bne	e012724 <DiagVprintf+0x30>
 e01274c:	e3a0b000 	mov	fp, #0
 e012750:	e1a0700b 	mov	r7, fp
 e012754:	e1a0800b 	mov	r8, fp
 e012758:	e1a0000b 	mov	r0, fp
 e01275c:	e5d43000 	ldrb	r3, [r4]
 e012760:	e353007a 	cmp	r3, #122	; 0x7a
 e012764:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
 e012768:	ea00007a 	b	e012958 <DiagVprintf+0x264>
 e01276c:	0e0129ac 	.word	0x0e0129ac
 e012770:	0e012958 	.word	0x0e012958
 e012774:	0e012958 	.word	0x0e012958
 e012778:	0e012958 	.word	0x0e012958
 e01277c:	0e012958 	.word	0x0e012958
 e012780:	0e012958 	.word	0x0e012958
 e012784:	0e012958 	.word	0x0e012958
 e012788:	0e012958 	.word	0x0e012958
 e01278c:	0e012958 	.word	0x0e012958
 e012790:	0e012958 	.word	0x0e012958
 e012794:	0e012958 	.word	0x0e012958
 e012798:	0e012958 	.word	0x0e012958
 e01279c:	0e012958 	.word	0x0e012958
 e0127a0:	0e012958 	.word	0x0e012958
 e0127a4:	0e012958 	.word	0x0e012958
 e0127a8:	0e012958 	.word	0x0e012958
 e0127ac:	0e012958 	.word	0x0e012958
 e0127b0:	0e012958 	.word	0x0e012958
 e0127b4:	0e012958 	.word	0x0e012958
 e0127b8:	0e012958 	.word	0x0e012958
 e0127bc:	0e012958 	.word	0x0e012958
 e0127c0:	0e012958 	.word	0x0e012958
 e0127c4:	0e012958 	.word	0x0e012958
 e0127c8:	0e012958 	.word	0x0e012958
 e0127cc:	0e012958 	.word	0x0e012958
 e0127d0:	0e012958 	.word	0x0e012958
 e0127d4:	0e012958 	.word	0x0e012958
 e0127d8:	0e012958 	.word	0x0e012958
 e0127dc:	0e012958 	.word	0x0e012958
 e0127e0:	0e012958 	.word	0x0e012958
 e0127e4:	0e012958 	.word	0x0e012958
 e0127e8:	0e012958 	.word	0x0e012958
 e0127ec:	0e0129e4 	.word	0x0e0129e4
 e0127f0:	0e012958 	.word	0x0e012958
 e0127f4:	0e012958 	.word	0x0e012958
 e0127f8:	0e012958 	.word	0x0e012958
 e0127fc:	0e012958 	.word	0x0e012958
 e012800:	0e012cd4 	.word	0x0e012cd4
 e012804:	0e012958 	.word	0x0e012958
 e012808:	0e012958 	.word	0x0e012958
 e01280c:	0e012958 	.word	0x0e012958
 e012810:	0e012958 	.word	0x0e012958
 e012814:	0e012958 	.word	0x0e012958
 e012818:	0e012958 	.word	0x0e012958
 e01281c:	0e012958 	.word	0x0e012958
 e012820:	0e012cc8 	.word	0x0e012cc8
 e012824:	0e012958 	.word	0x0e012958
 e012828:	0e012958 	.word	0x0e012958
 e01282c:	0e0129e4 	.word	0x0e0129e4
 e012830:	0e0129b4 	.word	0x0e0129b4
 e012834:	0e0129b4 	.word	0x0e0129b4
 e012838:	0e0129b4 	.word	0x0e0129b4
 e01283c:	0e0129b4 	.word	0x0e0129b4
 e012840:	0e0129b4 	.word	0x0e0129b4
 e012844:	0e0129b4 	.word	0x0e0129b4
 e012848:	0e0129b4 	.word	0x0e0129b4
 e01284c:	0e0129b4 	.word	0x0e0129b4
 e012850:	0e0129b4 	.word	0x0e0129b4
 e012854:	0e012958 	.word	0x0e012958
 e012858:	0e012958 	.word	0x0e012958
 e01285c:	0e012958 	.word	0x0e012958
 e012860:	0e012958 	.word	0x0e012958
 e012864:	0e012958 	.word	0x0e012958
 e012868:	0e012958 	.word	0x0e012958
 e01286c:	0e012958 	.word	0x0e012958
 e012870:	0e012958 	.word	0x0e012958
 e012874:	0e012bac 	.word	0x0e012bac
 e012878:	0e012b30 	.word	0x0e012b30
 e01287c:	0e012958 	.word	0x0e012958
 e012880:	0e012958 	.word	0x0e012958
 e012884:	0e012958 	.word	0x0e012958
 e012888:	0e012958 	.word	0x0e012958
 e01288c:	0e012958 	.word	0x0e012958
 e012890:	0e012958 	.word	0x0e012958
 e012894:	0e012958 	.word	0x0e012958
 e012898:	0e012958 	.word	0x0e012958
 e01289c:	0e012b24 	.word	0x0e012b24
 e0128a0:	0e012958 	.word	0x0e012958
 e0128a4:	0e012958 	.word	0x0e012958
 e0128a8:	0e012a9c 	.word	0x0e012a9c
 e0128ac:	0e012958 	.word	0x0e012958
 e0128b0:	0e012958 	.word	0x0e012958
 e0128b4:	0e012958 	.word	0x0e012958
 e0128b8:	0e012958 	.word	0x0e012958
 e0128bc:	0e012958 	.word	0x0e012958
 e0128c0:	0e012958 	.word	0x0e012958
 e0128c4:	0e012958 	.word	0x0e012958
 e0128c8:	0e012958 	.word	0x0e012958
 e0128cc:	0e012c34 	.word	0x0e012c34
 e0128d0:	0e012958 	.word	0x0e012958
 e0128d4:	0e012958 	.word	0x0e012958
 e0128d8:	0e012958 	.word	0x0e012958
 e0128dc:	0e012958 	.word	0x0e012958
 e0128e0:	0e012958 	.word	0x0e012958
 e0128e4:	0e012958 	.word	0x0e012958
 e0128e8:	0e012958 	.word	0x0e012958
 e0128ec:	0e012958 	.word	0x0e012958
 e0128f0:	0e012958 	.word	0x0e012958
 e0128f4:	0e012bac 	.word	0x0e012bac
 e0128f8:	0e012b30 	.word	0x0e012b30
 e0128fc:	0e0129fc 	.word	0x0e0129fc
 e012900:	0e012958 	.word	0x0e012958
 e012904:	0e012958 	.word	0x0e012958
 e012908:	0e012958 	.word	0x0e012958
 e01290c:	0e012958 	.word	0x0e012958
 e012910:	0e0129fc 	.word	0x0e0129fc
 e012914:	0e012958 	.word	0x0e012958
 e012918:	0e012958 	.word	0x0e012958
 e01291c:	0e012b24 	.word	0x0e012b24
 e012920:	0e012958 	.word	0x0e012958
 e012924:	0e012958 	.word	0x0e012958
 e012928:	0e012a9c 	.word	0x0e012a9c
 e01292c:	0e012d90 	.word	0x0e012d90
 e012930:	0e012958 	.word	0x0e012958
 e012934:	0e012958 	.word	0x0e012958
 e012938:	0e012cf0 	.word	0x0e012cf0
 e01293c:	0e012958 	.word	0x0e012958
 e012940:	0e012968 	.word	0x0e012968
 e012944:	0e012958 	.word	0x0e012958
 e012948:	0e012958 	.word	0x0e012958
 e01294c:	0e012c3c 	.word	0x0e012c3c
 e012950:	0e012958 	.word	0x0e012958
 e012954:	0e012b28 	.word	0x0e012b28
 e012958:	e3e06000 	mvn	r6, #0
 e01295c:	e1a00006 	mov	r0, r6
 e012960:	e28dd02c 	add	sp, sp, #44	; 0x2c
 e012964:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e012968:	e3500001 	cmp	r0, #1
 e01296c:	c2899007 	addgt	r9, r9, #7
 e012970:	c3c99007 	bicgt	r9, r9, #7
 e012974:	d4990004 	ldrle	r0, [r9], #4
 e012978:	d3a01000 	movle	r1, #0
 e01297c:	c5991004 	ldrgt	r1, [r9, #4]
 e012980:	c4990008 	ldrgt	r0, [r9], #8
 e012984:	e35b0000 	cmp	fp, #0
 e012988:	1a00012f 	bne	e012e4c <DiagVprintf+0x758>
 e01298c:	e58db008 	str	fp, [sp, #8]
 e012990:	e59d2014 	ldr	r2, [sp, #20]
 e012994:	e58d2004 	str	r2, [sp, #4]
 e012998:	e1a03008 	mov	r3, r8
 e01299c:	e3a0200a 	mov	r2, #10
 e0129a0:	e58d7000 	str	r7, [sp]
 e0129a4:	ebfffed2 	bl	e0124f4 <print_unsigned_num>
 e0129a8:	e0866000 	add	r6, r6, r0
 e0129ac:	e2844001 	add	r4, r4, #1
 e0129b0:	eaffff5f 	b	e012734 <DiagVprintf+0x40>
 e0129b4:	e3a08020 	mov	r8, #32
 e0129b8:	e3a07000 	mov	r7, #0
 e0129bc:	ea000003 	b	e0129d0 <DiagVprintf+0x2dc>
 e0129c0:	e5f43001 	ldrb	r3, [r4, #1]!
 e0129c4:	e2427030 	sub	r7, r2, #48	; 0x30
 e0129c8:	e3530000 	cmp	r3, #0
 e0129cc:	0affffe2 	beq	e01295c <DiagVprintf+0x268>
 e0129d0:	e022379a 	mla	r2, sl, r7, r3
 e0129d4:	e2433030 	sub	r3, r3, #48	; 0x30
 e0129d8:	e3530009 	cmp	r3, #9
 e0129dc:	9afffff7 	bls	e0129c0 <DiagVprintf+0x2cc>
 e0129e0:	eaffff5d 	b	e01275c <DiagVprintf+0x68>
 e0129e4:	e2844001 	add	r4, r4, #1
 e0129e8:	e1a08003 	mov	r8, r3
 e0129ec:	e5d43000 	ldrb	r3, [r4]
 e0129f0:	e3530000 	cmp	r3, #0
 e0129f4:	1affffef 	bne	e0129b8 <DiagVprintf+0x2c4>
 e0129f8:	eaffffd7 	b	e01295c <DiagVprintf+0x268>
 e0129fc:	e3500001 	cmp	r0, #1
 e012a00:	c2899007 	addgt	r9, r9, #7
 e012a04:	c3c99007 	bicgt	r9, r9, #7
 e012a08:	d5990000 	ldrle	r0, [r9]
 e012a0c:	d2892004 	addle	r2, r9, #4
 e012a10:	c5991004 	ldrgt	r1, [r9, #4]
 e012a14:	d1a01fc0 	asrle	r1, r0, #31
 e012a18:	d1a09002 	movle	r9, r2
 e012a1c:	c4990008 	ldrgt	r0, [r9], #8
 e012a20:	e3510000 	cmp	r1, #0
 e012a24:	a3a02000 	movge	r2, #0
 e012a28:	ba000128 	blt	e012ed0 <DiagVprintf+0x7dc>
 e012a2c:	e35b0000 	cmp	fp, #0
 e012a30:	e58d2008 	str	r2, [sp, #8]
 e012a34:	0affffd5 	beq	e012990 <DiagVprintf+0x29c>
 e012a38:	e59d3014 	ldr	r3, [sp, #20]
 e012a3c:	e58d3004 	str	r3, [sp, #4]
 e012a40:	e3a0200a 	mov	r2, #10
 e012a44:	e3a03000 	mov	r3, #0
 e012a48:	e58d3000 	str	r3, [sp]
 e012a4c:	e1a03008 	mov	r3, r8
 e012a50:	ebfffea7 	bl	e0124f4 <print_unsigned_num>
 e012a54:	e1570000 	cmp	r7, r0
 e012a58:	d3a03000 	movle	r3, #0
 e012a5c:	c3a03001 	movgt	r3, #1
 e012a60:	e3580020 	cmp	r8, #32
 e012a64:	13a03000 	movne	r3, #0
 e012a68:	e3530000 	cmp	r3, #0
 e012a6c:	0affffcd 	beq	e0129a8 <DiagVprintf+0x2b4>
 e012a70:	e0478000 	sub	r8, r7, r0
 e012a74:	e3580000 	cmp	r8, #0
 e012a78:	da00013f 	ble	e012f7c <DiagVprintf+0x888>
 e012a7c:	e30a567c 	movw	r5, #42620	; 0xa67c
 e012a80:	e3405e00 	movt	r5, #3584	; 0xe00
 e012a84:	e3a00020 	mov	r0, #32
 e012a88:	e12fff35 	blx	r5
 e012a8c:	e2588001 	subs	r8, r8, #1
 e012a90:	1afffffb 	bne	e012a84 <DiagVprintf+0x390>
 e012a94:	e1a00007 	mov	r0, r7
 e012a98:	eaffffc2 	b	e0129a8 <DiagVprintf+0x2b4>
 e012a9c:	e3500001 	cmp	r0, #1
 e012aa0:	c2899007 	addgt	r9, r9, #7
 e012aa4:	c3c99007 	bicgt	r9, r9, #7
 e012aa8:	d4990004 	ldrle	r0, [r9], #4
 e012aac:	d3a01000 	movle	r1, #0
 e012ab0:	c5991004 	ldrgt	r1, [r9, #4]
 e012ab4:	c4990008 	ldrgt	r0, [r9], #8
 e012ab8:	e35b0000 	cmp	fp, #0
 e012abc:	0a0000cf 	beq	e012e00 <DiagVprintf+0x70c>
 e012ac0:	e59d3014 	ldr	r3, [sp, #20]
 e012ac4:	e58d3004 	str	r3, [sp, #4]
 e012ac8:	e3a02008 	mov	r2, #8
 e012acc:	e3a03000 	mov	r3, #0
 e012ad0:	e58d3008 	str	r3, [sp, #8]
 e012ad4:	e58d3000 	str	r3, [sp]
 e012ad8:	e1a03008 	mov	r3, r8
 e012adc:	ebfffe84 	bl	e0124f4 <print_unsigned_num>
 e012ae0:	e1570000 	cmp	r7, r0
 e012ae4:	d3a03000 	movle	r3, #0
 e012ae8:	c3a03001 	movgt	r3, #1
 e012aec:	e3580020 	cmp	r8, #32
 e012af0:	13a03000 	movne	r3, #0
 e012af4:	e3530000 	cmp	r3, #0
 e012af8:	0affffaa 	beq	e0129a8 <DiagVprintf+0x2b4>
 e012afc:	e0478000 	sub	r8, r7, r0
 e012b00:	e3580000 	cmp	r8, #0
 e012b04:	da00011c 	ble	e012f7c <DiagVprintf+0x888>
 e012b08:	e30a567c 	movw	r5, #42620	; 0xa67c
 e012b0c:	e3405e00 	movt	r5, #3584	; 0xe00
 e012b10:	e3a00020 	mov	r0, #32
 e012b14:	e12fff35 	blx	r5
 e012b18:	e2588001 	subs	r8, r8, #1
 e012b1c:	1afffffb 	bne	e012b10 <DiagVprintf+0x41c>
 e012b20:	eaffffdb 	b	e012a94 <DiagVprintf+0x3a0>
 e012b24:	e2800001 	add	r0, r0, #1
 e012b28:	e2844001 	add	r4, r4, #1
 e012b2c:	eaffff0a 	b	e01275c <DiagVprintf+0x68>
 e012b30:	e3570001 	cmp	r7, #1
 e012b34:	e4993004 	ldr	r3, [r9], #4
 e012b38:	d3a02000 	movle	r2, #0
 e012b3c:	c3a02001 	movgt	r2, #1
 e012b40:	e35b0000 	cmp	fp, #0
 e012b44:	13a01000 	movne	r1, #0
 e012b48:	02021001 	andeq	r1, r2, #1
 e012b4c:	e6ef3073 	uxtb	r3, r3
 e012b50:	e3510000 	cmp	r1, #0
 e012b54:	e58d3018 	str	r3, [sp, #24]
 e012b58:	1a0000e0 	bne	e012ee0 <DiagVprintf+0x7ec>
 e012b5c:	e59d0018 	ldr	r0, [sp, #24]
 e012b60:	e30a567c 	movw	r5, #42620	; 0xa67c
 e012b64:	e3405e00 	movt	r5, #3584	; 0xe00
 e012b68:	e58d201c 	str	r2, [sp, #28]
 e012b6c:	e12fff35 	blx	r5
 e012b70:	e59d201c 	ldr	r2, [sp, #28]
 e012b74:	e2863001 	add	r3, r6, #1
 e012b78:	e35b0000 	cmp	fp, #0
 e012b7c:	03a02000 	moveq	r2, #0
 e012b80:	12022001 	andne	r2, r2, #1
 e012b84:	e3520000 	cmp	r2, #0
 e012b88:	01a06003 	moveq	r6, r3
 e012b8c:	0affff86 	beq	e0129ac <DiagVprintf+0x2b8>
 e012b90:	e247b001 	sub	fp, r7, #1
 e012b94:	e1a00008 	mov	r0, r8
 e012b98:	e12fff35 	blx	r5
 e012b9c:	e25bb001 	subs	fp, fp, #1
 e012ba0:	1afffffb 	bne	e012b94 <DiagVprintf+0x4a0>
 e012ba4:	e0866007 	add	r6, r6, r7
 e012ba8:	eaffff7f 	b	e0129ac <DiagVprintf+0x2b8>
 e012bac:	e3500001 	cmp	r0, #1
 e012bb0:	c2899007 	addgt	r9, r9, #7
 e012bb4:	c3c99007 	bicgt	r9, r9, #7
 e012bb8:	d4990004 	ldrle	r0, [r9], #4
 e012bbc:	d3a01000 	movle	r1, #0
 e012bc0:	c5991004 	ldrgt	r1, [r9, #4]
 e012bc4:	c4990008 	ldrgt	r0, [r9], #8
 e012bc8:	e35b0000 	cmp	fp, #0
 e012bcc:	0a0000b7 	beq	e012eb0 <DiagVprintf+0x7bc>
 e012bd0:	e59d3014 	ldr	r3, [sp, #20]
 e012bd4:	e58d3004 	str	r3, [sp, #4]
 e012bd8:	e3a02002 	mov	r2, #2
 e012bdc:	e3a03000 	mov	r3, #0
 e012be0:	e58d3008 	str	r3, [sp, #8]
 e012be4:	e58d3000 	str	r3, [sp]
 e012be8:	e1a03008 	mov	r3, r8
 e012bec:	ebfffe40 	bl	e0124f4 <print_unsigned_num>
 e012bf0:	e1570000 	cmp	r7, r0
 e012bf4:	d3a03000 	movle	r3, #0
 e012bf8:	c3a03001 	movgt	r3, #1
 e012bfc:	e3580020 	cmp	r8, #32
 e012c00:	13a03000 	movne	r3, #0
 e012c04:	e3530000 	cmp	r3, #0
 e012c08:	0affff66 	beq	e0129a8 <DiagVprintf+0x2b4>
 e012c0c:	e0478000 	sub	r8, r7, r0
 e012c10:	e3580000 	cmp	r8, #0
 e012c14:	da0000d8 	ble	e012f7c <DiagVprintf+0x888>
 e012c18:	e30a567c 	movw	r5, #42620	; 0xa67c
 e012c1c:	e3405e00 	movt	r5, #3584	; 0xe00
 e012c20:	e3a00020 	mov	r0, #32
 e012c24:	e12fff35 	blx	r5
 e012c28:	e2588001 	subs	r8, r8, #1
 e012c2c:	1afffffb 	bne	e012c20 <DiagVprintf+0x52c>
 e012c30:	eaffff97 	b	e012a94 <DiagVprintf+0x3a0>
 e012c34:	e3a03001 	mov	r3, #1
 e012c38:	e58d3014 	str	r3, [sp, #20]
 e012c3c:	e3500001 	cmp	r0, #1
 e012c40:	c2899007 	addgt	r9, r9, #7
 e012c44:	c3c99007 	bicgt	r9, r9, #7
 e012c48:	d4990004 	ldrle	r0, [r9], #4
 e012c4c:	d3a01000 	movle	r1, #0
 e012c50:	c5991004 	ldrgt	r1, [r9, #4]
 e012c54:	c4990008 	ldrgt	r0, [r9], #8
 e012c58:	e35b0000 	cmp	fp, #0
 e012c5c:	0a00005f 	beq	e012de0 <DiagVprintf+0x6ec>
 e012c60:	e59d3014 	ldr	r3, [sp, #20]
 e012c64:	e58d3004 	str	r3, [sp, #4]
 e012c68:	e3a02010 	mov	r2, #16
 e012c6c:	e3a03000 	mov	r3, #0
 e012c70:	e58d3008 	str	r3, [sp, #8]
 e012c74:	e58d3000 	str	r3, [sp]
 e012c78:	e1a03008 	mov	r3, r8
 e012c7c:	ebfffe1c 	bl	e0124f4 <print_unsigned_num>
 e012c80:	e1570000 	cmp	r7, r0
 e012c84:	d3a03000 	movle	r3, #0
 e012c88:	c3a03001 	movgt	r3, #1
 e012c8c:	e3580020 	cmp	r8, #32
 e012c90:	13a03000 	movne	r3, #0
 e012c94:	e3530000 	cmp	r3, #0
 e012c98:	0affff42 	beq	e0129a8 <DiagVprintf+0x2b4>
 e012c9c:	e0478000 	sub	r8, r7, r0
 e012ca0:	e3580000 	cmp	r8, #0
 e012ca4:	da0000b4 	ble	e012f7c <DiagVprintf+0x888>
 e012ca8:	e30a567c 	movw	r5, #42620	; 0xa67c
 e012cac:	e3405e00 	movt	r5, #3584	; 0xe00
 e012cb0:	e3a00020 	mov	r0, #32
 e012cb4:	e12fff35 	blx	r5
 e012cb8:	e2588001 	subs	r8, r8, #1
 e012cbc:	1afffffb 	bne	e012cb0 <DiagVprintf+0x5bc>
 e012cc0:	e1a00007 	mov	r0, r7
 e012cc4:	eaffff37 	b	e0129a8 <DiagVprintf+0x2b4>
 e012cc8:	e2844001 	add	r4, r4, #1
 e012ccc:	e28bb001 	add	fp, fp, #1
 e012cd0:	eafffea1 	b	e01275c <DiagVprintf+0x68>
 e012cd4:	e3a00025 	mov	r0, #37	; 0x25
 e012cd8:	e30a567c 	movw	r5, #42620	; 0xa67c
 e012cdc:	e3405e00 	movt	r5, #3584	; 0xe00
 e012ce0:	e2866001 	add	r6, r6, #1
 e012ce4:	e2844001 	add	r4, r4, #1
 e012ce8:	e12fff35 	blx	r5
 e012cec:	eafffe90 	b	e012734 <DiagVprintf+0x40>
 e012cf0:	e1a03009 	mov	r3, r9
 e012cf4:	e4932004 	ldr	r2, [r3], #4
 e012cf8:	e58d3018 	str	r3, [sp, #24]
 e012cfc:	e5d20000 	ldrb	r0, [r2]
 e012d00:	e3500000 	cmp	r0, #0
 e012d04:	0a0000a0 	beq	e012f8c <DiagVprintf+0x898>
 e012d08:	e1a0c002 	mov	ip, r2
 e012d0c:	e2629001 	rsb	r9, r2, #1
 e012d10:	e089100c 	add	r1, r9, ip
 e012d14:	e5fc3001 	ldrb	r3, [ip, #1]!
 e012d18:	e3530000 	cmp	r3, #0
 e012d1c:	1afffffb 	bne	e012d10 <DiagVprintf+0x61c>
 e012d20:	e58d101c 	str	r1, [sp, #28]
 e012d24:	e35b0000 	cmp	fp, #0
 e012d28:	0a00003c 	beq	e012e20 <DiagVprintf+0x72c>
 e012d2c:	e3520000 	cmp	r2, #0
 e012d30:	0a000099 	beq	e012f9c <DiagVprintf+0x8a8>
 e012d34:	e3500000 	cmp	r0, #0
 e012d38:	0a00000d 	beq	e012d74 <DiagVprintf+0x680>
 e012d3c:	e30a567c 	movw	r5, #42620	; 0xa67c
 e012d40:	e3405e00 	movt	r5, #3584	; 0xe00
 e012d44:	e58d4020 	str	r4, [sp, #32]
 e012d48:	e2629001 	rsb	r9, r2, #1
 e012d4c:	e1a04002 	mov	r4, r2
 e012d50:	e12fff35 	blx	r5
 e012d54:	e084c009 	add	ip, r4, r9
 e012d58:	e5f40001 	ldrb	r0, [r4, #1]!
 e012d5c:	e3500000 	cmp	r0, #0
 e012d60:	1afffffa 	bne	e012d50 <DiagVprintf+0x65c>
 e012d64:	e59d4020 	ldr	r4, [sp, #32]
 e012d68:	e086600c 	add	r6, r6, ip
 e012d6c:	e35b0000 	cmp	fp, #0
 e012d70:	0a000003 	beq	e012d84 <DiagVprintf+0x690>
 e012d74:	e59d301c 	ldr	r3, [sp, #28]
 e012d78:	e0477003 	sub	r7, r7, r3
 e012d7c:	e3570000 	cmp	r7, #0
 e012d80:	ca000073 	bgt	e012f54 <DiagVprintf+0x860>
 e012d84:	e59d9018 	ldr	r9, [sp, #24]
 e012d88:	e2844001 	add	r4, r4, #1
 e012d8c:	eafffe68 	b	e012734 <DiagVprintf+0x40>
 e012d90:	e35b0000 	cmp	fp, #0
 e012d94:	e4990004 	ldr	r0, [r9], #4
 e012d98:	e3a01000 	mov	r1, #0
 e012d9c:	13a03001 	movne	r3, #1
 e012da0:	03a02008 	moveq	r2, #8
 e012da4:	03a03001 	moveq	r3, #1
 e012da8:	158d3004 	strne	r3, [sp, #4]
 e012dac:	01cd20f0 	strdeq	r2, [sp]
 e012db0:	01a0100b 	moveq	r1, fp
 e012db4:	e3a03030 	mov	r3, #48	; 0x30
 e012db8:	e3a02010 	mov	r2, #16
 e012dbc:	158d1008 	strne	r1, [sp, #8]
 e012dc0:	158d1000 	strne	r1, [sp]
 e012dc4:	058db008 	streq	fp, [sp, #8]
 e012dc8:	ebfffdc9 	bl	e0124f4 <print_unsigned_num>
 e012dcc:	e2844001 	add	r4, r4, #1
 e012dd0:	e3a03001 	mov	r3, #1
 e012dd4:	e0866000 	add	r6, r6, r0
 e012dd8:	e58d3014 	str	r3, [sp, #20]
 e012ddc:	eafffe54 	b	e012734 <DiagVprintf+0x40>
 e012de0:	e59d2014 	ldr	r2, [sp, #20]
 e012de4:	e58d2004 	str	r2, [sp, #4]
 e012de8:	e1a03008 	mov	r3, r8
 e012dec:	e3a02010 	mov	r2, #16
 e012df0:	e58db008 	str	fp, [sp, #8]
 e012df4:	e58d7000 	str	r7, [sp]
 e012df8:	ebfffdbd 	bl	e0124f4 <print_unsigned_num>
 e012dfc:	eafffee9 	b	e0129a8 <DiagVprintf+0x2b4>
 e012e00:	e59d2014 	ldr	r2, [sp, #20]
 e012e04:	e58d2004 	str	r2, [sp, #4]
 e012e08:	e1a03008 	mov	r3, r8
 e012e0c:	e3a02008 	mov	r2, #8
 e012e10:	e58db008 	str	fp, [sp, #8]
 e012e14:	e58d7000 	str	r7, [sp]
 e012e18:	ebfffdb5 	bl	e0124f4 <print_unsigned_num>
 e012e1c:	eafffee1 	b	e0129a8 <DiagVprintf+0x2b4>
 e012e20:	e59d301c 	ldr	r3, [sp, #28]
 e012e24:	e0473003 	sub	r3, r7, r3
 e012e28:	e3530000 	cmp	r3, #0
 e012e2c:	e58d3020 	str	r3, [sp, #32]
 e012e30:	ca000035 	bgt	e012f0c <DiagVprintf+0x818>
 e012e34:	e3520000 	cmp	r2, #0
 e012e38:	0a000055 	beq	e012f94 <DiagVprintf+0x8a0>
 e012e3c:	e5d20000 	ldrb	r0, [r2]
 e012e40:	e3500000 	cmp	r0, #0
 e012e44:	1affffbc 	bne	e012d3c <DiagVprintf+0x648>
 e012e48:	eaffffcd 	b	e012d84 <DiagVprintf+0x690>
 e012e4c:	e59d3014 	ldr	r3, [sp, #20]
 e012e50:	e58d3004 	str	r3, [sp, #4]
 e012e54:	e3a0200a 	mov	r2, #10
 e012e58:	e3a03000 	mov	r3, #0
 e012e5c:	e58d3008 	str	r3, [sp, #8]
 e012e60:	e58d3000 	str	r3, [sp]
 e012e64:	e1a03008 	mov	r3, r8
 e012e68:	ebfffda1 	bl	e0124f4 <print_unsigned_num>
 e012e6c:	e1570000 	cmp	r7, r0
 e012e70:	d3a03000 	movle	r3, #0
 e012e74:	c3a03001 	movgt	r3, #1
 e012e78:	e3580020 	cmp	r8, #32
 e012e7c:	13a03000 	movne	r3, #0
 e012e80:	e3530000 	cmp	r3, #0
 e012e84:	0afffec7 	beq	e0129a8 <DiagVprintf+0x2b4>
 e012e88:	e0478000 	sub	r8, r7, r0
 e012e8c:	e3580000 	cmp	r8, #0
 e012e90:	da000039 	ble	e012f7c <DiagVprintf+0x888>
 e012e94:	e30a567c 	movw	r5, #42620	; 0xa67c
 e012e98:	e3405e00 	movt	r5, #3584	; 0xe00
 e012e9c:	e3a00020 	mov	r0, #32
 e012ea0:	e12fff35 	blx	r5
 e012ea4:	e2588001 	subs	r8, r8, #1
 e012ea8:	1afffffb 	bne	e012e9c <DiagVprintf+0x7a8>
 e012eac:	eafffef8 	b	e012a94 <DiagVprintf+0x3a0>
 e012eb0:	e59d2014 	ldr	r2, [sp, #20]
 e012eb4:	e58d2004 	str	r2, [sp, #4]
 e012eb8:	e1a03008 	mov	r3, r8
 e012ebc:	e3a02002 	mov	r2, #2
 e012ec0:	e58db008 	str	fp, [sp, #8]
 e012ec4:	e58d7000 	str	r7, [sp]
 e012ec8:	ebfffd89 	bl	e0124f4 <print_unsigned_num>
 e012ecc:	eafffeb5 	b	e0129a8 <DiagVprintf+0x2b4>
 e012ed0:	e2700000 	rsbs	r0, r0, #0
 e012ed4:	e2e11000 	rsc	r1, r1, #0
 e012ed8:	e3a02001 	mov	r2, #1
 e012edc:	eafffed2 	b	e012a2c <DiagVprintf+0x338>
 e012ee0:	e30a567c 	movw	r5, #42620	; 0xa67c
 e012ee4:	e3405e00 	movt	r5, #3584	; 0xe00
 e012ee8:	e247b001 	sub	fp, r7, #1
 e012eec:	e1a00008 	mov	r0, r8
 e012ef0:	e12fff35 	blx	r5
 e012ef4:	e25bb001 	subs	fp, fp, #1
 e012ef8:	1afffffb 	bne	e012eec <DiagVprintf+0x7f8>
 e012efc:	e59d0018 	ldr	r0, [sp, #24]
 e012f00:	e0866007 	add	r6, r6, r7
 e012f04:	e12fff35 	blx	r5
 e012f08:	eafffea7 	b	e0129ac <DiagVprintf+0x2b8>
 e012f0c:	e1a09003 	mov	r9, r3
 e012f10:	e1a03004 	mov	r3, r4
 e012f14:	e30a567c 	movw	r5, #42620	; 0xa67c
 e012f18:	e3405e00 	movt	r5, #3584	; 0xe00
 e012f1c:	e1a04008 	mov	r4, r8
 e012f20:	e1a08003 	mov	r8, r3
 e012f24:	e58d2024 	str	r2, [sp, #36]	; 0x24
 e012f28:	e1a00004 	mov	r0, r4
 e012f2c:	e12fff35 	blx	r5
 e012f30:	e2599001 	subs	r9, r9, #1
 e012f34:	1afffffb 	bne	e012f28 <DiagVprintf+0x834>
 e012f38:	e1a03008 	mov	r3, r8
 e012f3c:	e1a08004 	mov	r8, r4
 e012f40:	e1a04003 	mov	r4, r3
 e012f44:	e59d3020 	ldr	r3, [sp, #32]
 e012f48:	e59d2024 	ldr	r2, [sp, #36]	; 0x24
 e012f4c:	e0866003 	add	r6, r6, r3
 e012f50:	eaffffb7 	b	e012e34 <DiagVprintf+0x740>
 e012f54:	e30a567c 	movw	r5, #42620	; 0xa67c
 e012f58:	e3405e00 	movt	r5, #3584	; 0xe00
 e012f5c:	e1a0b007 	mov	fp, r7
 e012f60:	e1a00008 	mov	r0, r8
 e012f64:	e12fff35 	blx	r5
 e012f68:	e25bb001 	subs	fp, fp, #1
 e012f6c:	1afffffb 	bne	e012f60 <DiagVprintf+0x86c>
 e012f70:	e59d9018 	ldr	r9, [sp, #24]
 e012f74:	e0866007 	add	r6, r6, r7
 e012f78:	eafffe8b 	b	e0129ac <DiagVprintf+0x2b8>
 e012f7c:	e1a07000 	mov	r7, r0
 e012f80:	eafffec3 	b	e012a94 <DiagVprintf+0x3a0>
 e012f84:	e1a06000 	mov	r6, r0
 e012f88:	eafffe73 	b	e01295c <DiagVprintf+0x268>
 e012f8c:	e58d001c 	str	r0, [sp, #28]
 e012f90:	eaffff63 	b	e012d24 <DiagVprintf+0x630>
 e012f94:	e2466001 	sub	r6, r6, #1
 e012f98:	eaffff79 	b	e012d84 <DiagVprintf+0x690>
 e012f9c:	e2466001 	sub	r6, r6, #1
 e012fa0:	eaffff73 	b	e012d74 <DiagVprintf+0x680>

0e012fa4 <DiagVprintfNano>:
 e012fa4:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 e012fa8:	e1a04000 	mov	r4, r0
 e012fac:	e5d00000 	ldrb	r0, [r0]
 e012fb0:	e24dd02c 	sub	sp, sp, #44	; 0x2c
 e012fb4:	e3500000 	cmp	r0, #0
 e012fb8:	0a00017d 	beq	e0135b4 <DiagVprintfNano+0x610>
 e012fbc:	e30a667c 	movw	r6, #42620	; 0xa67c
 e012fc0:	e3406e00 	movt	r6, #3584	; 0xe00
 e012fc4:	e30c3ccd 	movw	r3, #52429	; 0xcccd
 e012fc8:	e34c3ccc 	movt	r3, #52428	; 0xcccc
 e012fcc:	e1a08001 	mov	r8, r1
 e012fd0:	e3a07000 	mov	r7, #0
 e012fd4:	e58d3004 	str	r3, [sp, #4]
 e012fd8:	ea000004 	b	e012ff0 <DiagVprintfNano+0x4c>
 e012fdc:	e2877001 	add	r7, r7, #1
 e012fe0:	e12fff36 	blx	r6
 e012fe4:	e5d40000 	ldrb	r0, [r4]
 e012fe8:	e3500000 	cmp	r0, #0
 e012fec:	0a000069 	beq	e013198 <DiagVprintfNano+0x1f4>
 e012ff0:	e2844001 	add	r4, r4, #1
 e012ff4:	e3500025 	cmp	r0, #37	; 0x25
 e012ff8:	1afffff7 	bne	e012fdc <DiagVprintfNano+0x38>
 e012ffc:	e5d42000 	ldrb	r2, [r4]
 e013000:	e3a05000 	mov	r5, #0
 e013004:	e1a03005 	mov	r3, r5
 e013008:	e3a0000a 	mov	r0, #10
 e01300c:	e3520000 	cmp	r2, #0
 e013010:	0a000075 	beq	e0131ec <DiagVprintfNano+0x248>
 e013014:	e2421020 	sub	r1, r2, #32
 e013018:	e6efc071 	uxtb	ip, r1
 e01301c:	e35c0058 	cmp	ip, #88	; 0x58
 e013020:	8a00005b 	bhi	e013194 <DiagVprintfNano+0x1f0>
 e013024:	e3510058 	cmp	r1, #88	; 0x58
 e013028:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 e01302c:	ea000058 	b	e013194 <DiagVprintfNano+0x1f0>
 e013030:	0e0131a4 	.word	0x0e0131a4
 e013034:	0e013194 	.word	0x0e013194
 e013038:	0e013194 	.word	0x0e013194
 e01303c:	0e013194 	.word	0x0e013194
 e013040:	0e013194 	.word	0x0e013194
 e013044:	0e0133e8 	.word	0x0e0133e8
 e013048:	0e013194 	.word	0x0e013194
 e01304c:	0e013194 	.word	0x0e013194
 e013050:	0e013194 	.word	0x0e013194
 e013054:	0e013194 	.word	0x0e013194
 e013058:	0e013194 	.word	0x0e013194
 e01305c:	0e013194 	.word	0x0e013194
 e013060:	0e013194 	.word	0x0e013194
 e013064:	0e013194 	.word	0x0e013194
 e013068:	0e013194 	.word	0x0e013194
 e01306c:	0e013194 	.word	0x0e013194
 e013070:	0e0131a4 	.word	0x0e0131a4
 e013074:	0e0131f4 	.word	0x0e0131f4
 e013078:	0e0131f4 	.word	0x0e0131f4
 e01307c:	0e0131f4 	.word	0x0e0131f4
 e013080:	0e0131f4 	.word	0x0e0131f4
 e013084:	0e0131f4 	.word	0x0e0131f4
 e013088:	0e0131f4 	.word	0x0e0131f4
 e01308c:	0e0131f4 	.word	0x0e0131f4
 e013090:	0e0131f4 	.word	0x0e0131f4
 e013094:	0e0131f4 	.word	0x0e0131f4
 e013098:	0e013194 	.word	0x0e013194
 e01309c:	0e013194 	.word	0x0e013194
 e0130a0:	0e013194 	.word	0x0e013194
 e0130a4:	0e013194 	.word	0x0e013194
 e0130a8:	0e013194 	.word	0x0e013194
 e0130ac:	0e013194 	.word	0x0e013194
 e0130b0:	0e013194 	.word	0x0e013194
 e0130b4:	0e013194 	.word	0x0e013194
 e0130b8:	0e013194 	.word	0x0e013194
 e0130bc:	0e01330c 	.word	0x0e01330c
 e0130c0:	0e013194 	.word	0x0e013194
 e0130c4:	0e013194 	.word	0x0e013194
 e0130c8:	0e013194 	.word	0x0e013194
 e0130cc:	0e013194 	.word	0x0e013194
 e0130d0:	0e013194 	.word	0x0e013194
 e0130d4:	0e013194 	.word	0x0e013194
 e0130d8:	0e013194 	.word	0x0e013194
 e0130dc:	0e013194 	.word	0x0e013194
 e0130e0:	0e013194 	.word	0x0e013194
 e0130e4:	0e013194 	.word	0x0e013194
 e0130e8:	0e013194 	.word	0x0e013194
 e0130ec:	0e013194 	.word	0x0e013194
 e0130f0:	0e013194 	.word	0x0e013194
 e0130f4:	0e013194 	.word	0x0e013194
 e0130f8:	0e013194 	.word	0x0e013194
 e0130fc:	0e013194 	.word	0x0e013194
 e013100:	0e013194 	.word	0x0e013194
 e013104:	0e013194 	.word	0x0e013194
 e013108:	0e013194 	.word	0x0e013194
 e01310c:	0e013194 	.word	0x0e013194
 e013110:	0e013194 	.word	0x0e013194
 e013114:	0e013194 	.word	0x0e013194
 e013118:	0e013194 	.word	0x0e013194
 e01311c:	0e013194 	.word	0x0e013194
 e013120:	0e013194 	.word	0x0e013194
 e013124:	0e013194 	.word	0x0e013194
 e013128:	0e013194 	.word	0x0e013194
 e01312c:	0e013194 	.word	0x0e013194
 e013130:	0e013194 	.word	0x0e013194
 e013134:	0e013194 	.word	0x0e013194
 e013138:	0e013194 	.word	0x0e013194
 e01313c:	0e01330c 	.word	0x0e01330c
 e013140:	0e0131fc 	.word	0x0e0131fc
 e013144:	0e013194 	.word	0x0e013194
 e013148:	0e013194 	.word	0x0e013194
 e01314c:	0e013194 	.word	0x0e013194
 e013150:	0e013194 	.word	0x0e013194
 e013154:	0e0131fc 	.word	0x0e0131fc
 e013158:	0e013194 	.word	0x0e013194
 e01315c:	0e013194 	.word	0x0e013194
 e013160:	0e013194 	.word	0x0e013194
 e013164:	0e013194 	.word	0x0e013194
 e013168:	0e013194 	.word	0x0e013194
 e01316c:	0e013194 	.word	0x0e013194
 e013170:	0e013194 	.word	0x0e013194
 e013174:	0e013194 	.word	0x0e013194
 e013178:	0e013194 	.word	0x0e013194
 e01317c:	0e0134b8 	.word	0x0e0134b8
 e013180:	0e013194 	.word	0x0e013194
 e013184:	0e0133fc 	.word	0x0e0133fc
 e013188:	0e013194 	.word	0x0e013194
 e01318c:	0e013194 	.word	0x0e013194
 e013190:	0e013330 	.word	0x0e013330
 e013194:	e3e07000 	mvn	r7, #0
 e013198:	e1a00007 	mov	r0, r7
 e01319c:	e28dd02c 	add	sp, sp, #44	; 0x2c
 e0131a0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 e0131a4:	e2844001 	add	r4, r4, #1
 e0131a8:	e1a03002 	mov	r3, r2
 e0131ac:	e5d42000 	ldrb	r2, [r4]
 e0131b0:	e3520000 	cmp	r2, #0
 e0131b4:	0afffff7 	beq	e013198 <DiagVprintfNano+0x1f4>
 e0131b8:	e3a05000 	mov	r5, #0
 e0131bc:	ea000003 	b	e0131d0 <DiagVprintfNano+0x22c>
 e0131c0:	e5f42001 	ldrb	r2, [r4, #1]!
 e0131c4:	e2415030 	sub	r5, r1, #48	; 0x30
 e0131c8:	e3520000 	cmp	r2, #0
 e0131cc:	0afffff1 	beq	e013198 <DiagVprintfNano+0x1f4>
 e0131d0:	e0212590 	mla	r1, r0, r5, r2
 e0131d4:	e2422030 	sub	r2, r2, #48	; 0x30
 e0131d8:	e3520009 	cmp	r2, #9
 e0131dc:	9afffff7 	bls	e0131c0 <DiagVprintfNano+0x21c>
 e0131e0:	e5d42000 	ldrb	r2, [r4]
 e0131e4:	e3520000 	cmp	r2, #0
 e0131e8:	1affff89 	bne	e013014 <DiagVprintfNano+0x70>
 e0131ec:	e2844001 	add	r4, r4, #1
 e0131f0:	eaffff7b 	b	e012fe4 <DiagVprintfNano+0x40>
 e0131f4:	e3a03020 	mov	r3, #32
 e0131f8:	eaffffee 	b	e0131b8 <DiagVprintfNano+0x214>
 e0131fc:	e1a01008 	mov	r1, r8
 e013200:	e28da01c 	add	sl, sp, #28
 e013204:	e59dc004 	ldr	ip, [sp, #4]
 e013208:	e4912004 	ldr	r2, [r1], #4
 e01320c:	e58d100c 	str	r1, [sp, #12]
 e013210:	e3520000 	cmp	r2, #0
 e013214:	b3a01001 	movlt	r1, #1
 e013218:	a3a01000 	movge	r1, #0
 e01321c:	b2622000 	rsblt	r2, r2, #0
 e013220:	e58d1008 	str	r1, [sp, #8]
 e013224:	e3a0b000 	mov	fp, #0
 e013228:	e1a0100a 	mov	r1, sl
 e01322c:	e3a0000a 	mov	r0, #10
 e013230:	e08e829c 	umull	r8, lr, ip, r2
 e013234:	e3520009 	cmp	r2, #9
 e013238:	e1a0800b 	mov	r8, fp
 e01323c:	e1a0e1ae 	lsr	lr, lr, #3
 e013240:	e28bb001 	add	fp, fp, #1
 e013244:	e0692e90 	mls	r9, r0, lr, r2
 e013248:	e1a0200e 	mov	r2, lr
 e01324c:	e2899030 	add	r9, r9, #48	; 0x30
 e013250:	e6ef9079 	uxtb	r9, r9
 e013254:	e4c19001 	strb	r9, [r1], #1
 e013258:	8afffff4 	bhi	e013230 <DiagVprintfNano+0x28c>
 e01325c:	e59d2008 	ldr	r2, [sp, #8]
 e013260:	e3520000 	cmp	r2, #0
 e013264:	1a0000ae 	bne	e013524 <DiagVprintfNano+0x580>
 e013268:	e3550000 	cmp	r5, #0
 e01326c:	da000018 	ble	e0132d4 <DiagVprintfNano+0x330>
 e013270:	e155000b 	cmp	r5, fp
 e013274:	da000016 	ble	e0132d4 <DiagVprintfNano+0x330>
 e013278:	e58d4014 	str	r4, [sp, #20]
 e01327c:	e1a04003 	mov	r4, r3
 e013280:	e58d5010 	str	r5, [sp, #16]
 e013284:	e2455001 	sub	r5, r5, #1
 e013288:	e1a00004 	mov	r0, r4
 e01328c:	e12fff36 	blx	r6
 e013290:	e15b0005 	cmp	fp, r5
 e013294:	1afffffa 	bne	e013284 <DiagVprintfNano+0x2e0>
 e013298:	e59d1008 	ldr	r1, [sp, #8]
 e01329c:	e59d5010 	ldr	r5, [sp, #16]
 e0132a0:	e1e0200b 	mvn	r2, fp
 e0132a4:	e0822005 	add	r2, r2, r5
 e0132a8:	e3510000 	cmp	r1, #0
 e0132ac:	e2811001 	add	r1, r1, #1
 e0132b0:	e1a03004 	mov	r3, r4
 e0132b4:	e0822001 	add	r2, r2, r1
 e0132b8:	e59d4014 	ldr	r4, [sp, #20]
 e0132bc:	e58d2008 	str	r2, [sp, #8]
 e0132c0:	0a000003 	beq	e0132d4 <DiagVprintfNano+0x330>
 e0132c4:	e31300df 	tst	r3, #223	; 0xdf
 e0132c8:	1a000001 	bne	e0132d4 <DiagVprintfNano+0x330>
 e0132cc:	e3a0002d 	mov	r0, #45	; 0x2d
 e0132d0:	e12fff36 	blx	r6
 e0132d4:	e08a5008 	add	r5, sl, r8
 e0132d8:	e1a00009 	mov	r0, r9
 e0132dc:	ea000000 	b	e0132e4 <DiagVprintfNano+0x340>
 e0132e0:	e5750001 	ldrb	r0, [r5, #-1]!
 e0132e4:	e12fff36 	blx	r6
 e0132e8:	e15a0005 	cmp	sl, r5
 e0132ec:	1afffffb 	bne	e0132e0 <DiagVprintfNano+0x33c>
 e0132f0:	e59d3008 	ldr	r3, [sp, #8]
 e0132f4:	e2877001 	add	r7, r7, #1
 e0132f8:	e0877008 	add	r7, r7, r8
 e0132fc:	e0837007 	add	r7, r3, r7
 e013300:	e59d800c 	ldr	r8, [sp, #12]
 e013304:	e2844001 	add	r4, r4, #1
 e013308:	eaffff35 	b	e012fe4 <DiagVprintfNano+0x40>
 e01330c:	e4989004 	ldr	r9, [r8], #4
 e013310:	e3550001 	cmp	r5, #1
 e013314:	e6ef9079 	uxtb	r9, r9
 e013318:	ca000091 	bgt	e013564 <DiagVprintfNano+0x5c0>
 e01331c:	e1a00009 	mov	r0, r9
 e013320:	e2877001 	add	r7, r7, #1
 e013324:	e2844001 	add	r4, r4, #1
 e013328:	e12fff36 	blx	r6
 e01332c:	eaffff2c 	b	e012fe4 <DiagVprintfNano+0x40>
 e013330:	e1a02008 	mov	r2, r8
 e013334:	e28da01c 	add	sl, sp, #28
 e013338:	e1a0000a 	mov	r0, sl
 e01333c:	e4921004 	ldr	r1, [r2], #4
 e013340:	e3a09000 	mov	r9, #0
 e013344:	e58d2008 	str	r2, [sp, #8]
 e013348:	ea000000 	b	e013350 <DiagVprintfNano+0x3ac>
 e01334c:	e1a09008 	mov	r9, r8
 e013350:	e201200f 	and	r2, r1, #15
 e013354:	e3520009 	cmp	r2, #9
 e013358:	e282b057 	add	fp, r2, #87	; 0x57
 e01335c:	9282b030 	addls	fp, r2, #48	; 0x30
 e013360:	e1a02221 	lsr	r2, r1, #4
 e013364:	e351000f 	cmp	r1, #15
 e013368:	e2898001 	add	r8, r9, #1
 e01336c:	e1a01002 	mov	r1, r2
 e013370:	e4c0b001 	strb	fp, [r0], #1
 e013374:	8afffff4 	bhi	e01334c <DiagVprintfNano+0x3a8>
 e013378:	e3550000 	cmp	r5, #0
 e01337c:	da000074 	ble	e013554 <DiagVprintfNano+0x5b0>
 e013380:	e1550008 	cmp	r5, r8
 e013384:	da000072 	ble	e013554 <DiagVprintfNano+0x5b0>
 e013388:	e58d4010 	str	r4, [sp, #16]
 e01338c:	e1a04003 	mov	r4, r3
 e013390:	e58d500c 	str	r5, [sp, #12]
 e013394:	e2455001 	sub	r5, r5, #1
 e013398:	e1a00004 	mov	r0, r4
 e01339c:	e12fff36 	blx	r6
 e0133a0:	e1580005 	cmp	r8, r5
 e0133a4:	1afffffa 	bne	e013394 <DiagVprintfNano+0x3f0>
 e0133a8:	e59d500c 	ldr	r5, [sp, #12]
 e0133ac:	e59d4010 	ldr	r4, [sp, #16]
 e0133b0:	e0458008 	sub	r8, r5, r8
 e0133b4:	e08a5009 	add	r5, sl, r9
 e0133b8:	e1a0000b 	mov	r0, fp
 e0133bc:	ea000000 	b	e0133c4 <DiagVprintfNano+0x420>
 e0133c0:	e5750001 	ldrb	r0, [r5, #-1]!
 e0133c4:	e12fff36 	blx	r6
 e0133c8:	e155000a 	cmp	r5, sl
 e0133cc:	1afffffb 	bne	e0133c0 <DiagVprintfNano+0x41c>
 e0133d0:	e2877001 	add	r7, r7, #1
 e0133d4:	e0877009 	add	r7, r7, r9
 e0133d8:	e0887007 	add	r7, r8, r7
 e0133dc:	e2844001 	add	r4, r4, #1
 e0133e0:	e59d8008 	ldr	r8, [sp, #8]
 e0133e4:	eafffefe 	b	e012fe4 <DiagVprintfNano+0x40>
 e0133e8:	e3a00025 	mov	r0, #37	; 0x25
 e0133ec:	e2877001 	add	r7, r7, #1
 e0133f0:	e2844001 	add	r4, r4, #1
 e0133f4:	e12fff36 	blx	r6
 e0133f8:	eafffef9 	b	e012fe4 <DiagVprintfNano+0x40>
 e0133fc:	e1a02008 	mov	r2, r8
 e013400:	e28da01c 	add	sl, sp, #28
 e013404:	e1a0000a 	mov	r0, sl
 e013408:	e4921004 	ldr	r1, [r2], #4
 e01340c:	e58d2008 	str	r2, [sp, #8]
 e013410:	e59d2004 	ldr	r2, [sp, #4]
 e013414:	e3a08000 	mov	r8, #0
 e013418:	e3a0c00a 	mov	ip, #10
 e01341c:	e08e9192 	umull	r9, lr, r2, r1
 e013420:	e3510009 	cmp	r1, #9
 e013424:	e1a0b008 	mov	fp, r8
 e013428:	e1a0e1ae 	lsr	lr, lr, #3
 e01342c:	e2888001 	add	r8, r8, #1
 e013430:	e0691e9c 	mls	r9, ip, lr, r1
 e013434:	e1a0100e 	mov	r1, lr
 e013438:	e2899030 	add	r9, r9, #48	; 0x30
 e01343c:	e6ef9079 	uxtb	r9, r9
 e013440:	e4c09001 	strb	r9, [r0], #1
 e013444:	8afffff4 	bhi	e01341c <DiagVprintfNano+0x478>
 e013448:	e3550000 	cmp	r5, #0
 e01344c:	da000042 	ble	e01355c <DiagVprintfNano+0x5b8>
 e013450:	e1550008 	cmp	r5, r8
 e013454:	da000040 	ble	e01355c <DiagVprintfNano+0x5b8>
 e013458:	e58d4010 	str	r4, [sp, #16]
 e01345c:	e1a04003 	mov	r4, r3
 e013460:	e58d500c 	str	r5, [sp, #12]
 e013464:	e2455001 	sub	r5, r5, #1
 e013468:	e1a00004 	mov	r0, r4
 e01346c:	e12fff36 	blx	r6
 e013470:	e1580005 	cmp	r8, r5
 e013474:	1afffffa 	bne	e013464 <DiagVprintfNano+0x4c0>
 e013478:	e59d500c 	ldr	r5, [sp, #12]
 e01347c:	e59d4010 	ldr	r4, [sp, #16]
 e013480:	e0458008 	sub	r8, r5, r8
 e013484:	e08a500b 	add	r5, sl, fp
 e013488:	e1a00009 	mov	r0, r9
 e01348c:	ea000000 	b	e013494 <DiagVprintfNano+0x4f0>
 e013490:	e5750001 	ldrb	r0, [r5, #-1]!
 e013494:	e12fff36 	blx	r6
 e013498:	e15a0005 	cmp	sl, r5
 e01349c:	1afffffb 	bne	e013490 <DiagVprintfNano+0x4ec>
 e0134a0:	e2877001 	add	r7, r7, #1
 e0134a4:	e087700b 	add	r7, r7, fp
 e0134a8:	e0887007 	add	r7, r8, r7
 e0134ac:	e2844001 	add	r4, r4, #1
 e0134b0:	e59d8008 	ldr	r8, [sp, #8]
 e0134b4:	eafffeca 	b	e012fe4 <DiagVprintfNano+0x40>
 e0134b8:	e4989004 	ldr	r9, [r8], #4
 e0134bc:	e5d92000 	ldrb	r2, [r9]
 e0134c0:	e3520000 	cmp	r2, #0
 e0134c4:	0a000006 	beq	e0134e4 <DiagVprintfNano+0x540>
 e0134c8:	e1a02009 	mov	r2, r9
 e0134cc:	e269a001 	rsb	sl, r9, #1
 e0134d0:	e08a0002 	add	r0, sl, r2
 e0134d4:	e5f21001 	ldrb	r1, [r2, #1]!
 e0134d8:	e3510000 	cmp	r1, #0
 e0134dc:	1afffffb 	bne	e0134d0 <DiagVprintfNano+0x52c>
 e0134e0:	e0455000 	sub	r5, r5, r0
 e0134e4:	e3550000 	cmp	r5, #0
 e0134e8:	ca000026 	bgt	e013588 <DiagVprintfNano+0x5e4>
 e0134ec:	e3590000 	cmp	r9, #0
 e0134f0:	0a000031 	beq	e0135bc <DiagVprintfNano+0x618>
 e0134f4:	e5d90000 	ldrb	r0, [r9]
 e0134f8:	e3500000 	cmp	r0, #0
 e0134fc:	0affff3a 	beq	e0131ec <DiagVprintfNano+0x248>
 e013500:	e269a001 	rsb	sl, r9, #1
 e013504:	e12fff36 	blx	r6
 e013508:	e089300a 	add	r3, r9, sl
 e01350c:	e5f90001 	ldrb	r0, [r9, #1]!
 e013510:	e3500000 	cmp	r0, #0
 e013514:	1afffffa 	bne	e013504 <DiagVprintfNano+0x560>
 e013518:	e0877003 	add	r7, r7, r3
 e01351c:	e2844001 	add	r4, r4, #1
 e013520:	eafffeaf 	b	e012fe4 <DiagVprintfNano+0x40>
 e013524:	e2455001 	sub	r5, r5, #1
 e013528:	e3530030 	cmp	r3, #48	; 0x30
 e01352c:	1a00001d 	bne	e0135a8 <DiagVprintfNano+0x604>
 e013530:	e3a0002d 	mov	r0, #45	; 0x2d
 e013534:	e58d3010 	str	r3, [sp, #16]
 e013538:	e12fff36 	blx	r6
 e01353c:	e59d3010 	ldr	r3, [sp, #16]
 e013540:	e3550000 	cmp	r5, #0
 e013544:	daffff62 	ble	e0132d4 <DiagVprintfNano+0x330>
 e013548:	e15b0005 	cmp	fp, r5
 e01354c:	baffff49 	blt	e013278 <DiagVprintfNano+0x2d4>
 e013550:	eaffff5b 	b	e0132c4 <DiagVprintfNano+0x320>
 e013554:	e3a08000 	mov	r8, #0
 e013558:	eaffff95 	b	e0133b4 <DiagVprintfNano+0x410>
 e01355c:	e3a08000 	mov	r8, #0
 e013560:	eaffffc7 	b	e013484 <DiagVprintfNano+0x4e0>
 e013564:	e245a001 	sub	sl, r5, #1
 e013568:	e1a0b003 	mov	fp, r3
 e01356c:	e1a0000b 	mov	r0, fp
 e013570:	e12fff36 	blx	r6
 e013574:	e25aa001 	subs	sl, sl, #1
 e013578:	1afffffb 	bne	e01356c <DiagVprintfNano+0x5c8>
 e01357c:	e2477001 	sub	r7, r7, #1
 e013580:	e0857007 	add	r7, r5, r7
 e013584:	eaffff64 	b	e01331c <DiagVprintfNano+0x378>
 e013588:	e1a0a005 	mov	sl, r5
 e01358c:	e1a0b003 	mov	fp, r3
 e013590:	e1a0000b 	mov	r0, fp
 e013594:	e12fff36 	blx	r6
 e013598:	e25aa001 	subs	sl, sl, #1
 e01359c:	1afffffb 	bne	e013590 <DiagVprintfNano+0x5ec>
 e0135a0:	e0877005 	add	r7, r7, r5
 e0135a4:	eaffffd0 	b	e0134ec <DiagVprintfNano+0x548>
 e0135a8:	e3550000 	cmp	r5, #0
 e0135ac:	caffffe5 	bgt	e013548 <DiagVprintfNano+0x5a4>
 e0135b0:	eaffff43 	b	e0132c4 <DiagVprintfNano+0x320>
 e0135b4:	e1a07000 	mov	r7, r0
 e0135b8:	eafffef6 	b	e013198 <DiagVprintfNano+0x1f4>
 e0135bc:	e2477001 	sub	r7, r7, #1
 e0135c0:	eaffff09 	b	e0131ec <DiagVprintfNano+0x248>

0e0135c4 <DiagPrintf>:
 e0135c4:	e92d000f 	push	{r0, r1, r2, r3}
 e0135c8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e0135cc:	e24dd00c 	sub	sp, sp, #12
 e0135d0:	e28d1014 	add	r1, sp, #20
 e0135d4:	e59d0010 	ldr	r0, [sp, #16]
 e0135d8:	e58d1004 	str	r1, [sp, #4]
 e0135dc:	ebfffc44 	bl	e0126f4 <DiagVprintf>
 e0135e0:	e28dd00c 	add	sp, sp, #12
 e0135e4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 e0135e8:	e28dd010 	add	sp, sp, #16
 e0135ec:	e12fff1e 	bx	lr

0e0135f0 <DiagPrintfNano>:
 e0135f0:	e92d000f 	push	{r0, r1, r2, r3}
 e0135f4:	e92d4030 	push	{r4, r5, lr}
 e0135f8:	e24dd00c 	sub	sp, sp, #12
 e0135fc:	e10f5000 	mrs	r5, CPSR
 e013600:	f10c0080 	cpsid	i
 e013604:	f57ff04f 	dsb	sy
 e013608:	f57ff06f 	isb	sy
 e01360c:	e3a03001 	mov	r3, #1
 e013610:	e3084780 	movw	r4, #34688	; 0x8780
 e013614:	e346400a 	movt	r4, #24586	; 0x600a
 e013618:	e1942f9f 	ldrex	r2, [r4]
 e01361c:	e3520000 	cmp	r2, #0
 e013620:	1320f002 	wfene
 e013624:	01842f93 	strexeq	r2, r3, [r4]
 e013628:	03520000 	cmpeq	r2, #0
 e01362c:	1afffff9 	bne	e013618 <DiagPrintfNano+0x28>
 e013630:	f57ff05f 	dmb	sy
 e013634:	e28d101c 	add	r1, sp, #28
 e013638:	e59d0018 	ldr	r0, [sp, #24]
 e01363c:	e58d1004 	str	r1, [sp, #4]
 e013640:	ebfffe57 	bl	e012fa4 <DiagVprintfNano>
 e013644:	e3a03000 	mov	r3, #0
 e013648:	f57ff05f 	dmb	sy
 e01364c:	e5843000 	str	r3, [r4]
 e013650:	f57ff04f 	dsb	sy
 e013654:	e320f004 	sev
 e013658:	e121f005 	msr	CPSR_c, r5
 e01365c:	e28dd00c 	add	sp, sp, #12
 e013660:	e8bd4030 	pop	{r4, r5, lr}
 e013664:	e28dd010 	add	sp, sp, #16
 e013668:	e12fff1e 	bx	lr

0e01366c <io_assert_failed>:
 e01366c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e013670:	e1a0c000 	mov	ip, r0
 e013674:	e24dd00c 	sub	sp, sp, #12
 e013678:	e1a00001 	mov	r0, r1
 e01367c:	e3053c14 	movw	r3, #23572	; 0x5c14
 e013680:	e3403e01 	movt	r3, #3585	; 0xe01
 e013684:	e30413ac 	movw	r1, #17324	; 0x43ac
 e013688:	e3401e01 	movt	r1, #3585	; 0xe01
 e01368c:	e58d0004 	str	r0, [sp, #4]
 e013690:	e3a02045 	mov	r2, #69	; 0x45
 e013694:	e3a00002 	mov	r0, #2
 e013698:	e58dc000 	str	ip, [sp]
 e01369c:	ebffd8b5 	bl	e009978 <rtk_log_write_nano>
 e0136a0:	eafffffe 	b	e0136a0 <io_assert_failed+0x34>

0e0136a4 <__wrap_strncpy>:
 e0136a4:	eaffb62e 	b	e000f64 <strncpy>

0e0136a8 <SYSTIMER_TickGet>:
 e0136a8:	e3a00a0b 	mov	r0, #45056	; 0xb000
 e0136ac:	e3440200 	movt	r0, #16896	; 0x4200
 e0136b0:	e3033790 	movw	r3, #14224	; 0x3790
 e0136b4:	e3403e01 	movt	r3, #3585	; 0xe01
 e0136b8:	e12fff13 	bx	r3

0e0136bc <SYSTIMER_GetPassTick>:
 e0136bc:	e92d4010 	push	{r4, lr}
 e0136c0:	e3033790 	movw	r3, #14224	; 0x3790
 e0136c4:	e3403e01 	movt	r3, #3585	; 0xe01
 e0136c8:	e1a04000 	mov	r4, r0
 e0136cc:	e3a00a0b 	mov	r0, #45056	; 0xb000
 e0136d0:	e3440200 	movt	r0, #16896	; 0x4200
 e0136d4:	e12fff33 	blx	r3
 e0136d8:	e1500004 	cmp	r0, r4
 e0136dc:	30444000 	subcc	r4, r4, r0
 e0136e0:	20400004 	subcs	r0, r0, r4
 e0136e4:	31e00004 	mvncc	r0, r4
 e0136e8:	e8bd8010 	pop	{r4, pc}

0e0136ec <SYSCFG_CHIPType_Get>:
 e0136ec:	e3a03902 	mov	r3, #32768	; 0x8000
 e0136f0:	e3443200 	movt	r3, #16896	; 0x4200
 e0136f4:	e593027c 	ldr	r0, [r3, #636]	; 0x27c
 e0136f8:	e7e10450 	ubfx	r0, r0, #8, #2
 e0136fc:	e12fff1e 	bx	lr

0e013700 <SYSCFG_OTP_RSIPEn>:
 e013700:	e3a03442 	mov	r3, #1107296256	; 0x42000000
 e013704:	e5932100 	ldr	r2, [r3, #256]	; 0x100
 e013708:	e5930368 	ldr	r0, [r3, #872]	; 0x368
 e01370c:	e3120302 	tst	r2, #134217728	; 0x8000000
 e013710:	02200004 	eoreq	r0, r0, #4
 e013714:	07e00150 	ubfxeq	r0, r0, #2, #1
 e013718:	13a00001 	movne	r0, #1
 e01371c:	e12fff1e 	bx	lr

0e013720 <BKUP_Set>:
 e013720:	e3500003 	cmp	r0, #3
 e013724:	8a000006 	bhi	e013744 <BKUP_Set+0x24>
 e013728:	e1a00100 	lsl	r0, r0, #2
 e01372c:	e2800442 	add	r0, r0, #1107296256	; 0x42000000
 e013730:	e2800902 	add	r0, r0, #32768	; 0x8000
 e013734:	e59030e0 	ldr	r3, [r0, #224]	; 0xe0
 e013738:	e1831001 	orr	r1, r3, r1
 e01373c:	e58010e0 	str	r1, [r0, #224]	; 0xe0
 e013740:	e12fff1e 	bx	lr
 e013744:	e3050c48 	movw	r0, #23624	; 0x5c48
 e013748:	e3400e01 	movt	r0, #3585	; 0xe01
 e01374c:	e3a0103e 	mov	r1, #62	; 0x3e
 e013750:	e92d4010 	push	{r4, lr}
 e013754:	ebffffc4 	bl	e01366c <io_assert_failed>

0e013758 <BKUP_Clear>:
 e013758:	e3500003 	cmp	r0, #3
 e01375c:	8a000006 	bhi	e01377c <BKUP_Clear+0x24>
 e013760:	e1a00100 	lsl	r0, r0, #2
 e013764:	e2800442 	add	r0, r0, #1107296256	; 0x42000000
 e013768:	e2800902 	add	r0, r0, #32768	; 0x8000
 e01376c:	e59030e0 	ldr	r3, [r0, #224]	; 0xe0
 e013770:	e1c31001 	bic	r1, r3, r1
 e013774:	e58010e0 	str	r1, [r0, #224]	; 0xe0
 e013778:	e12fff1e 	bx	lr
 e01377c:	e3050c48 	movw	r0, #23624	; 0x5c48
 e013780:	e3400e01 	movt	r0, #3585	; 0xe01
 e013784:	e3a0104e 	mov	r1, #78	; 0x4e
 e013788:	e92d4010 	push	{r4, lr}
 e01378c:	ebffffb6 	bl	e01366c <io_assert_failed>

0e013790 <RTIM_GetCount>:
 e013790:	e3a01a0b 	mov	r1, #45056	; 0xb000
 e013794:	e3441200 	movt	r1, #16896	; 0x4200
 e013798:	e3a02cb2 	mov	r2, #45568	; 0xb200
 e01379c:	e3442200 	movt	r2, #16896	; 0x4200
 e0137a0:	e1a03000 	mov	r3, r0
 e0137a4:	e1500001 	cmp	r0, r1
 e0137a8:	11500002 	cmpne	r0, r2
 e0137ac:	0a00005f 	beq	e013930 <RTIM_GetCount+0x1a0>
 e0137b0:	e3a01b2d 	mov	r1, #46080	; 0xb400
 e0137b4:	e3441200 	movt	r1, #16896	; 0x4200
 e0137b8:	e3a02cb6 	mov	r2, #46592	; 0xb600
 e0137bc:	e3442200 	movt	r2, #16896	; 0x4200
 e0137c0:	e1500001 	cmp	r0, r1
 e0137c4:	11500002 	cmpne	r0, r2
 e0137c8:	0a000058 	beq	e013930 <RTIM_GetCount+0x1a0>
 e0137cc:	e3a01b2e 	mov	r1, #47104	; 0xb800
 e0137d0:	e3441200 	movt	r1, #16896	; 0x4200
 e0137d4:	e3a02cba 	mov	r2, #47616	; 0xba00
 e0137d8:	e3442200 	movt	r2, #16896	; 0x4200
 e0137dc:	e1500001 	cmp	r0, r1
 e0137e0:	11500002 	cmpne	r0, r2
 e0137e4:	0a000051 	beq	e013930 <RTIM_GetCount+0x1a0>
 e0137e8:	e3a01b2f 	mov	r1, #48128	; 0xbc00
 e0137ec:	e3441200 	movt	r1, #16896	; 0x4200
 e0137f0:	e3a02cbe 	mov	r2, #48640	; 0xbe00
 e0137f4:	e3442200 	movt	r2, #16896	; 0x4200
 e0137f8:	e1500001 	cmp	r0, r1
 e0137fc:	11500002 	cmpne	r0, r2
 e013800:	0a00004a 	beq	e013930 <RTIM_GetCount+0x1a0>
 e013804:	e3a01a0a 	mov	r1, #40960	; 0xa000
 e013808:	e3441100 	movt	r1, #16640	; 0x4100
 e01380c:	e3a02ca2 	mov	r2, #41472	; 0xa200
 e013810:	e3442100 	movt	r2, #16640	; 0x4100
 e013814:	e1500001 	cmp	r0, r1
 e013818:	11500002 	cmpne	r0, r2
 e01381c:	0a000043 	beq	e013930 <RTIM_GetCount+0x1a0>
 e013820:	e3a01b29 	mov	r1, #41984	; 0xa400
 e013824:	e3441100 	movt	r1, #16640	; 0x4100
 e013828:	e3a02ca6 	mov	r2, #42496	; 0xa600
 e01382c:	e3442100 	movt	r2, #16640	; 0x4100
 e013830:	e1500001 	cmp	r0, r1
 e013834:	11500002 	cmpne	r0, r2
 e013838:	0a00003c 	beq	e013930 <RTIM_GetCount+0x1a0>
 e01383c:	e3a01b2a 	mov	r1, #43008	; 0xa800
 e013840:	e3441100 	movt	r1, #16640	; 0x4100
 e013844:	e3a02caa 	mov	r2, #43520	; 0xaa00
 e013848:	e3442100 	movt	r2, #16640	; 0x4100
 e01384c:	e1500001 	cmp	r0, r1
 e013850:	11500002 	cmpne	r0, r2
 e013854:	0a000035 	beq	e013930 <RTIM_GetCount+0x1a0>
 e013858:	e3a01a0b 	mov	r1, #45056	; 0xb000
 e01385c:	e3451200 	movt	r1, #20992	; 0x5200
 e013860:	e3a02cb2 	mov	r2, #45568	; 0xb200
 e013864:	e3452200 	movt	r2, #20992	; 0x5200
 e013868:	e1500001 	cmp	r0, r1
 e01386c:	11500002 	cmpne	r0, r2
 e013870:	0a00002e 	beq	e013930 <RTIM_GetCount+0x1a0>
 e013874:	e3a01b2d 	mov	r1, #46080	; 0xb400
 e013878:	e3451200 	movt	r1, #20992	; 0x5200
 e01387c:	e3a02cb6 	mov	r2, #46592	; 0xb600
 e013880:	e3452200 	movt	r2, #20992	; 0x5200
 e013884:	e1500001 	cmp	r0, r1
 e013888:	11500002 	cmpne	r0, r2
 e01388c:	0a000027 	beq	e013930 <RTIM_GetCount+0x1a0>
 e013890:	e3a01b2e 	mov	r1, #47104	; 0xb800
 e013894:	e3451200 	movt	r1, #20992	; 0x5200
 e013898:	e3a02cba 	mov	r2, #47616	; 0xba00
 e01389c:	e3452200 	movt	r2, #20992	; 0x5200
 e0138a0:	e1500001 	cmp	r0, r1
 e0138a4:	11500002 	cmpne	r0, r2
 e0138a8:	0a000020 	beq	e013930 <RTIM_GetCount+0x1a0>
 e0138ac:	e3a01b2f 	mov	r1, #48128	; 0xbc00
 e0138b0:	e3451200 	movt	r1, #20992	; 0x5200
 e0138b4:	e3a02cbe 	mov	r2, #48640	; 0xbe00
 e0138b8:	e3452200 	movt	r2, #20992	; 0x5200
 e0138bc:	e1500001 	cmp	r0, r1
 e0138c0:	11500002 	cmpne	r0, r2
 e0138c4:	0a000019 	beq	e013930 <RTIM_GetCount+0x1a0>
 e0138c8:	e3a01a0a 	mov	r1, #40960	; 0xa000
 e0138cc:	e3451100 	movt	r1, #20736	; 0x5100
 e0138d0:	e3a02ca2 	mov	r2, #41472	; 0xa200
 e0138d4:	e3452100 	movt	r2, #20736	; 0x5100
 e0138d8:	e1500001 	cmp	r0, r1
 e0138dc:	11500002 	cmpne	r0, r2
 e0138e0:	0a000012 	beq	e013930 <RTIM_GetCount+0x1a0>
 e0138e4:	e3a01b29 	mov	r1, #41984	; 0xa400
 e0138e8:	e3451100 	movt	r1, #20736	; 0x5100
 e0138ec:	e3a02ca6 	mov	r2, #42496	; 0xa600
 e0138f0:	e3452100 	movt	r2, #20736	; 0x5100
 e0138f4:	e1500001 	cmp	r0, r1
 e0138f8:	11500002 	cmpne	r0, r2
 e0138fc:	0a00000b 	beq	e013930 <RTIM_GetCount+0x1a0>
 e013900:	e3a01b2a 	mov	r1, #43008	; 0xa800
 e013904:	e3451100 	movt	r1, #20736	; 0x5100
 e013908:	e3a02caa 	mov	r2, #43520	; 0xaa00
 e01390c:	e3452100 	movt	r2, #20736	; 0x5100
 e013910:	e1500001 	cmp	r0, r1
 e013914:	11500002 	cmpne	r0, r2
 e013918:	0a000004 	beq	e013930 <RTIM_GetCount+0x1a0>
 e01391c:	e3050cdc 	movw	r0, #23772	; 0x5cdc
 e013920:	e3400e01 	movt	r0, #3585	; 0xe01
 e013924:	e3a010f1 	mov	r1, #241	; 0xf1
 e013928:	e92d4010 	push	{r4, lr}
 e01392c:	ebffff4e 	bl	e01366c <io_assert_failed>
 e013930:	e5932014 	ldr	r2, [r3, #20]
 e013934:	e5930014 	ldr	r0, [r3, #20]
 e013938:	e1520000 	cmp	r2, r0
 e01393c:	15930014 	ldrne	r0, [r3, #20]
 e013940:	e12fff1e 	bx	lr

0e013944 <PAD_PullCtrl>:
 e013944:	e3a03c8a 	mov	r3, #35328	; 0x8a00
 e013948:	e3443200 	movt	r3, #16896	; 0x4200
 e01394c:	e3510001 	cmp	r1, #1
 e013950:	e7933100 	ldr	r3, [r3, r0, lsl #2]
 e013954:	e3c33c03 	bic	r3, r3, #768	; 0x300
 e013958:	03833c02 	orreq	r3, r3, #512	; 0x200
 e01395c:	0a000001 	beq	e013968 <PAD_PullCtrl+0x24>
 e013960:	e3510002 	cmp	r1, #2
 e013964:	03833c01 	orreq	r3, r3, #256	; 0x100
 e013968:	e3a02c8a 	mov	r2, #35328	; 0x8a00
 e01396c:	e3442200 	movt	r2, #16896	; 0x4200
 e013970:	e7823100 	str	r3, [r2, r0, lsl #2]
 e013974:	e12fff1e 	bx	lr

0e013978 <GPIO_INTMode>:
 e013978:	e3510001 	cmp	r1, #1
 e01397c:	e305c2b4 	movw	ip, #21172	; 0x52b4
 e013980:	e346c009 	movt	ip, #24585	; 0x6009
 e013984:	e7e112d0 	ubfx	r1, r0, #5, #2
 e013988:	e92d4010 	push	{r4, lr}
 e01398c:	e200001f 	and	r0, r0, #31
 e013990:	e79c1101 	ldr	r1, [ip, r1, lsl #2]
 e013994:	e3a0c001 	mov	ip, #1
 e013998:	e1a0c01c 	lsl	ip, ip, r0
 e01399c:	e1e0e00c 	mvn	lr, ip
 e0139a0:	1591c030 	ldrne	ip, [r1, #48]	; 0x30
 e0139a4:	100cc00e 	andne	ip, ip, lr
 e0139a8:	0a000001 	beq	e0139b4 <GPIO_INTMode+0x3c>
 e0139ac:	e581c030 	str	ip, [r1, #48]	; 0x30
 e0139b0:	e8bd8010 	pop	{r4, pc}
 e0139b4:	e3520002 	cmp	r2, #2
 e0139b8:	0a000014 	beq	e013a10 <GPIO_INTMode+0x98>
 e0139bc:	e5914068 	ldr	r4, [r1, #104]	; 0x68
 e0139c0:	e004400e 	and	r4, r4, lr
 e0139c4:	e5814068 	str	r4, [r1, #104]	; 0x68
 e0139c8:	e5914038 	ldr	r4, [r1, #56]	; 0x38
 e0139cc:	e004400e 	and	r4, r4, lr
 e0139d0:	e1842012 	orr	r2, r4, r2, lsl r0
 e0139d4:	e5812038 	str	r2, [r1, #56]	; 0x38
 e0139d8:	e591203c 	ldr	r2, [r1, #60]	; 0x3c
 e0139dc:	e002200e 	and	r2, r2, lr
 e0139e0:	e1823013 	orr	r3, r2, r3, lsl r0
 e0139e4:	e581303c 	str	r3, [r1, #60]	; 0x3c
 e0139e8:	e5913048 	ldr	r3, [r1, #72]	; 0x48
 e0139ec:	e59d2008 	ldr	r2, [sp, #8]
 e0139f0:	e00ee003 	and	lr, lr, r3
 e0139f4:	e3520001 	cmp	r2, #1
 e0139f8:	018ee00c 	orreq	lr, lr, ip
 e0139fc:	e581e048 	str	lr, [r1, #72]	; 0x48
 e013a00:	e5913030 	ldr	r3, [r1, #48]	; 0x30
 e013a04:	e183c00c 	orr	ip, r3, ip
 e013a08:	e581c030 	str	ip, [r1, #48]	; 0x30
 e013a0c:	e8bd8010 	pop	{r4, pc}
 e013a10:	e5913068 	ldr	r3, [r1, #104]	; 0x68
 e013a14:	e183300c 	orr	r3, r3, ip
 e013a18:	e5813068 	str	r3, [r1, #104]	; 0x68
 e013a1c:	eafffff1 	b	e0139e8 <GPIO_INTMode+0x70>

0e013a20 <GPIO_INTConfig>:
 e013a20:	e7e1c2d0 	ubfx	ip, r0, #5, #2
 e013a24:	e30522b4 	movw	r2, #21172	; 0x52b4
 e013a28:	e3462009 	movt	r2, #24585	; 0x6009
 e013a2c:	e3a03001 	mov	r3, #1
 e013a30:	e200001f 	and	r0, r0, #31
 e013a34:	e792210c 	ldr	r2, [r2, ip, lsl #2]
 e013a38:	e1a00013 	lsl	r0, r3, r0
 e013a3c:	e3510000 	cmp	r1, #0
 e013a40:	e582004c 	str	r0, [r2, #76]	; 0x4c
 e013a44:	e5923034 	ldr	r3, [r2, #52]	; 0x34
 e013a48:	01800003 	orreq	r0, r0, r3
 e013a4c:	11c30000 	bicne	r0, r3, r0
 e013a50:	e5820034 	str	r0, [r2, #52]	; 0x34
 e013a54:	e12fff1e 	bx	lr

0e013a58 <GPIO_INTHandler>:
 e013a58:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 e013a5c:	e3a03a0d 	mov	r3, #53248	; 0xd000
 e013a60:	e3443200 	movt	r3, #16896	; 0x4200
 e013a64:	e5906050 	ldr	r6, [r0, #80]	; 0x50
 e013a68:	e5905040 	ldr	r5, [r0, #64]	; 0x40
 e013a6c:	e1500003 	cmp	r0, r3
 e013a70:	e580504c 	str	r5, [r0, #76]	; 0x4c
 e013a74:	0a000037 	beq	e013b58 <GPIO_INTHandler+0x100>
 e013a78:	e3a03b35 	mov	r3, #54272	; 0xd400
 e013a7c:	e3443200 	movt	r3, #16896	; 0x4200
 e013a80:	e1500003 	cmp	r0, r3
 e013a84:	0a000019 	beq	e013af0 <GPIO_INTHandler+0x98>
 e013a88:	e3a09002 	mov	r9, #2
 e013a8c:	e3409040 	movt	r9, #64	; 0x40
 e013a90:	e3087a40 	movw	r7, #35392	; 0x8a40
 e013a94:	e346700a 	movt	r7, #24586	; 0x600a
 e013a98:	e30889c0 	movw	r8, #35264	; 0x89c0
 e013a9c:	e346800a 	movt	r8, #24586	; 0x600a
 e013aa0:	e3a04000 	mov	r4, #0
 e013aa4:	e1a03435 	lsr	r3, r5, r4
 e013aa8:	e3130001 	tst	r3, #1
 e013aac:	0a00000a 	beq	e013adc <GPIO_INTHandler+0x84>
 e013ab0:	e7973104 	ldr	r3, [r7, r4, lsl #2]
 e013ab4:	e1a00436 	lsr	r0, r6, r4
 e013ab8:	e3530000 	cmp	r3, #0
 e013abc:	0a000006 	beq	e013adc <GPIO_INTHandler+0x84>
 e013ac0:	e3100001 	tst	r0, #1
 e013ac4:	e1a02804 	lsl	r2, r4, #16
 e013ac8:	e1821009 	orr	r1, r2, r9
 e013acc:	13821501 	orrne	r1, r2, #4194304	; 0x400000
 e013ad0:	e7980104 	ldr	r0, [r8, r4, lsl #2]
 e013ad4:	13811001 	orrne	r1, r1, #1
 e013ad8:	e12fff33 	blx	r3
 e013adc:	e2844001 	add	r4, r4, #1
 e013ae0:	e3540020 	cmp	r4, #32
 e013ae4:	1affffee 	bne	e013aa4 <GPIO_INTHandler+0x4c>
 e013ae8:	e3a00000 	mov	r0, #0
 e013aec:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e013af0:	e3a09002 	mov	r9, #2
 e013af4:	e3409020 	movt	r9, #32
 e013af8:	e3087940 	movw	r7, #35136	; 0x8940
 e013afc:	e346700a 	movt	r7, #24586	; 0x600a
 e013b00:	e30888c0 	movw	r8, #35008	; 0x88c0
 e013b04:	e346800a 	movt	r8, #24586	; 0x600a
 e013b08:	e3a04000 	mov	r4, #0
 e013b0c:	e1a03435 	lsr	r3, r5, r4
 e013b10:	e3130001 	tst	r3, #1
 e013b14:	0a00000a 	beq	e013b44 <GPIO_INTHandler+0xec>
 e013b18:	e7973104 	ldr	r3, [r7, r4, lsl #2]
 e013b1c:	e1a00436 	lsr	r0, r6, r4
 e013b20:	e3530000 	cmp	r3, #0
 e013b24:	0a000006 	beq	e013b44 <GPIO_INTHandler+0xec>
 e013b28:	e3100001 	tst	r0, #1
 e013b2c:	e1a02804 	lsl	r2, r4, #16
 e013b30:	e1821009 	orr	r1, r2, r9
 e013b34:	13821602 	orrne	r1, r2, #2097152	; 0x200000
 e013b38:	e7980104 	ldr	r0, [r8, r4, lsl #2]
 e013b3c:	13811001 	orrne	r1, r1, #1
 e013b40:	e12fff33 	blx	r3
 e013b44:	e2844001 	add	r4, r4, #1
 e013b48:	e3540020 	cmp	r4, #32
 e013b4c:	1affffee 	bne	e013b0c <GPIO_INTHandler+0xb4>
 e013b50:	e3a00000 	mov	r0, #0
 e013b54:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
 e013b58:	e3087840 	movw	r7, #34880	; 0x8840
 e013b5c:	e346700a 	movt	r7, #24586	; 0x600a
 e013b60:	e30887c0 	movw	r8, #34752	; 0x87c0
 e013b64:	e346800a 	movt	r8, #24586	; 0x600a
 e013b68:	e3a04000 	mov	r4, #0
 e013b6c:	e1a03435 	lsr	r3, r5, r4
 e013b70:	e3130001 	tst	r3, #1
 e013b74:	0a000009 	beq	e013ba0 <GPIO_INTHandler+0x148>
 e013b78:	e7973104 	ldr	r3, [r7, r4, lsl #2]
 e013b7c:	e1a00436 	lsr	r0, r6, r4
 e013b80:	e3530000 	cmp	r3, #0
 e013b84:	0a000005 	beq	e013ba0 <GPIO_INTHandler+0x148>
 e013b88:	e1a02804 	lsl	r2, r4, #16
 e013b8c:	e3100001 	tst	r0, #1
 e013b90:	e3821002 	orr	r1, r2, #2
 e013b94:	e7980104 	ldr	r0, [r8, r4, lsl #2]
 e013b98:	13821001 	orrne	r1, r2, #1
 e013b9c:	e12fff33 	blx	r3
 e013ba0:	e2844001 	add	r4, r4, #1
 e013ba4:	e3540020 	cmp	r4, #32
 e013ba8:	1affffef 	bne	e013b6c <GPIO_INTHandler+0x114>
 e013bac:	e3a00000 	mov	r0, #0
 e013bb0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

0e013bb4 <GPIO_Direction>:
 e013bb4:	e7e1c2d0 	ubfx	ip, r0, #5, #2
 e013bb8:	e30522b4 	movw	r2, #21172	; 0x52b4
 e013bbc:	e3462009 	movt	r2, #24585	; 0x6009
 e013bc0:	e3a03001 	mov	r3, #1
 e013bc4:	e200001f 	and	r0, r0, #31
 e013bc8:	e792210c 	ldr	r2, [r2, ip, lsl #2]
 e013bcc:	e1a00013 	lsl	r0, r3, r0
 e013bd0:	e3510000 	cmp	r1, #0
 e013bd4:	e5923004 	ldr	r3, [r2, #4]
 e013bd8:	01c30000 	biceq	r0, r3, r0
 e013bdc:	11830000 	orrne	r0, r3, r0
 e013be0:	e5820004 	str	r0, [r2, #4]
 e013be4:	e12fff1e 	bx	lr

0e013be8 <GPIO_UserRegIrq>:
 e013be8:	e7e132d0 	ubfx	r3, r0, #5, #2
 e013bec:	e3530000 	cmp	r3, #0
 e013bf0:	e200001f 	and	r0, r0, #31
 e013bf4:	1a000006 	bne	e013c14 <GPIO_UserRegIrq+0x2c>
 e013bf8:	e308c840 	movw	ip, #34880	; 0x8840
 e013bfc:	e346c00a 	movt	ip, #24586	; 0x600a
 e013c00:	e30837c0 	movw	r3, #34752	; 0x87c0
 e013c04:	e346300a 	movt	r3, #24586	; 0x600a
 e013c08:	e78c1100 	str	r1, [ip, r0, lsl #2]
 e013c0c:	e7832100 	str	r2, [r3, r0, lsl #2]
 e013c10:	e12fff1e 	bx	lr
 e013c14:	e3530001 	cmp	r3, #1
 e013c18:	0308c940 	movweq	ip, #35136	; 0x8940
 e013c1c:	030838c0 	movweq	r3, #35008	; 0x88c0
 e013c20:	1308ca40 	movwne	ip, #35392	; 0x8a40
 e013c24:	130839c0 	movwne	r3, #35264	; 0x89c0
 e013c28:	0346c00a 	movteq	ip, #24586	; 0x600a
 e013c2c:	0346300a 	movteq	r3, #24586	; 0x600a
 e013c30:	1346c00a 	movtne	ip, #24586	; 0x600a
 e013c34:	1346300a 	movtne	r3, #24586	; 0x600a
 e013c38:	e78c1100 	str	r1, [ip, r0, lsl #2]
 e013c3c:	e7832100 	str	r2, [r3, r0, lsl #2]
 e013c40:	e12fff1e 	bx	lr

0e013c44 <SOCPS_PG_Enter>:
 e013c44:	e3a00022 	mov	r0, #34	; 0x22
 e013c48:	e3400101 	movt	r0, #257	; 0x101
 e013c4c:	e92d4010 	push	{r4, lr}
 e013c50:	e3041430 	movw	r1, #17456	; 0x4430
 e013c54:	e3461009 	movt	r1, #24585	; 0x6009
 e013c58:	e30a6bc0 	movw	r6, #43968	; 0xabc0
 e013c5c:	e3406e00 	movt	r6, #3584	; 0xe00
 e013c60:	e3055d6c 	movw	r5, #23916	; 0x5d6c
 e013c64:	e3405e01 	movt	r5, #3585	; 0xe01
 e013c68:	e3054d90 	movw	r4, #23952	; 0x5d90
 e013c6c:	e3404e01 	movt	r4, #3585	; 0xe01
 e013c70:	ebffdaa1 	bl	e00a6fc <psci_cpu_suspend>
 e013c74:	e3a00ffa 	mov	r0, #1000	; 0x3e8
 e013c78:	e12fff36 	blx	r6
 e013c7c:	e1a03005 	mov	r3, r5
 e013c80:	e3a02045 	mov	r2, #69	; 0x45
 e013c84:	e1a01004 	mov	r1, r4
 e013c88:	e3a00002 	mov	r0, #2
 e013c8c:	ebffd705 	bl	e0098a8 <rtk_log_write>
 e013c90:	eafffff7 	b	e013c74 <SOCPS_PG_Enter+0x30>

0e013c94 <cpu_suspend_save>:
 e013c94:	e1a03000 	mov	r3, r0
 e013c98:	e3080b34 	movw	r0, #35636	; 0x8b34
 e013c9c:	e346000a 	movt	r0, #24586	; 0x600a
 e013ca0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 e013ca4:	e4803004 	str	r3, [r0], #4
 e013ca8:	eb0000ea 	bl	e014058 <__cpu_do_suspend_veneer>
 e013cac:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
 e013cb0:	e3130004 	tst	r3, #4
 e013cb4:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
 e013cb8:	ee306f30 	mrc	15, 1, r6, cr0, cr0, {1}
 e013cbc:	e3a04000 	mov	r4, #0
 e013cc0:	e1a05004 	mov	r5, r4
 e013cc4:	e1a03536 	lsr	r3, r6, r5
 e013cc8:	e2033007 	and	r3, r3, #7
 e013ccc:	e2433002 	sub	r3, r3, #2
 e013cd0:	e3530002 	cmp	r3, #2
 e013cd4:	8a00001f 	bhi	e013d58 <cpu_suspend_save+0xc4>
 e013cd8:	ee404f10 	mcr	15, 2, r4, cr0, cr0, {0}
 e013cdc:	ee307f10 	mrc	15, 1, r7, cr0, cr0, {0}
 e013ce0:	e7e9c1d7 	ubfx	ip, r7, #3, #10
 e013ce4:	e28ce001 	add	lr, ip, #1
 e013ce8:	e35c0000 	cmp	ip, #0
 e013cec:	0a00001e 	beq	e013d6c <cpu_suspend_save+0xd8>
 e013cf0:	e1a0200e 	mov	r2, lr
 e013cf4:	e3a03000 	mov	r3, #0
 e013cf8:	e2831001 	add	r1, r3, #1
 e013cfc:	e1a020a2 	lsr	r2, r2, #1
 e013d00:	e1a00003 	mov	r0, r3
 e013d04:	e3520001 	cmp	r2, #1
 e013d08:	e6ef3071 	uxtb	r3, r1
 e013d0c:	1afffff9 	bne	e013cf8 <cpu_suspend_save+0x64>
 e013d10:	e31e0001 	tst	lr, #1
 e013d14:	12803002 	addne	r3, r0, #2
 e013d18:	16ef3073 	uxtbne	r3, r3
 e013d1c:	e3530020 	cmp	r3, #32
 e013d20:	9263e020 	rsbls	lr, r3, #32
 e013d24:	8a00000b 	bhi	e013d58 <cpu_suspend_save+0xc4>
 e013d28:	e2070007 	and	r0, r7, #7
 e013d2c:	e2800004 	add	r0, r0, #4
 e013d30:	e7ee76d7 	ubfx	r7, r7, #13, #15
 e013d34:	e1841e1c 	orr	r1, r4, ip, lsl lr
 e013d38:	e1a03007 	mov	r3, r7
 e013d3c:	e1812013 	orr	r2, r1, r3, lsl r0
 e013d40:	ee072f5e 	mcr	15, 0, r2, cr7, cr14, {2}
 e013d44:	e2533001 	subs	r3, r3, #1
 e013d48:	2afffffb 	bcs	e013d3c <cpu_suspend_save+0xa8>
 e013d4c:	e25cc001 	subs	ip, ip, #1
 e013d50:	2afffff7 	bcs	e013d34 <cpu_suspend_save+0xa0>
 e013d54:	f57ff05f 	dmb	sy
 e013d58:	e2855003 	add	r5, r5, #3
 e013d5c:	e2844002 	add	r4, r4, #2
 e013d60:	e3550015 	cmp	r5, #21
 e013d64:	1affffd6 	bne	e013cc4 <cpu_suspend_save+0x30>
 e013d68:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 e013d6c:	e3a0e020 	mov	lr, #32
 e013d70:	eaffffec 	b	e013d28 <cpu_suspend_save+0x94>

0e013d74 <SOCPS_Save_GIC>:
 e013d74:	e3a03a02 	mov	r3, #8192	; 0x2000
 e013d78:	e34a3010 	movt	r3, #40976	; 0xa010
 e013d7c:	e5932004 	ldr	r2, [r3, #4]
 e013d80:	f57ff05f 	dmb	sy
 e013d84:	e308cbb0 	movw	ip, #35760	; 0x8bb0
 e013d88:	e346c00a 	movt	ip, #24586	; 0x600a
 e013d8c:	e3a03a01 	mov	r3, #4096	; 0x1000
 e013d90:	e34a3010 	movt	r3, #40976	; 0xa010
 e013d94:	e58c2140 	str	r2, [ip, #320]	; 0x140
 e013d98:	e5932100 	ldr	r2, [r3, #256]	; 0x100
 e013d9c:	f57ff05f 	dmb	sy
 e013da0:	e58c2000 	str	r2, [ip]
 e013da4:	e5932104 	ldr	r2, [r3, #260]	; 0x104
 e013da8:	f57ff05f 	dmb	sy
 e013dac:	e58c2004 	str	r2, [ip, #4]
 e013db0:	e5932108 	ldr	r2, [r3, #264]	; 0x108
 e013db4:	f57ff05f 	dmb	sy
 e013db8:	e58c2008 	str	r2, [ip, #8]
 e013dbc:	e593210c 	ldr	r2, [r3, #268]	; 0x10c
 e013dc0:	f57ff05f 	dmb	sy
 e013dc4:	e58c200c 	str	r2, [ip, #12]
 e013dc8:	e5932300 	ldr	r2, [r3, #768]	; 0x300
 e013dcc:	f57ff05f 	dmb	sy
 e013dd0:	e58c2010 	str	r2, [ip, #16]
 e013dd4:	e5932304 	ldr	r2, [r3, #772]	; 0x304
 e013dd8:	f57ff05f 	dmb	sy
 e013ddc:	e58c2014 	str	r2, [ip, #20]
 e013de0:	e5932308 	ldr	r2, [r3, #776]	; 0x308
 e013de4:	f57ff05f 	dmb	sy
 e013de8:	e58c2018 	str	r2, [ip, #24]
 e013dec:	e593230c 	ldr	r2, [r3, #780]	; 0x30c
 e013df0:	f57ff05f 	dmb	sy
 e013df4:	e3011be0 	movw	r1, #7136	; 0x1be0
 e013df8:	e34a1010 	movt	r1, #40976	; 0xa010
 e013dfc:	e28c3020 	add	r3, ip, #32
 e013e00:	e28c0040 	add	r0, ip, #64	; 0x40
 e013e04:	e041100c 	sub	r1, r1, ip
 e013e08:	e58c201c 	str	r2, [ip, #28]
 e013e0c:	e7912003 	ldr	r2, [r1, r3]
 e013e10:	f57ff05f 	dmb	sy
 e013e14:	e4832004 	str	r2, [r3], #4
 e013e18:	e1530000 	cmp	r3, r0
 e013e1c:	1afffffa 	bne	e013e0c <SOCPS_Save_GIC+0x98>
 e013e20:	e59f304c 	ldr	r3, [pc, #76]	; e013e74 <SOCPS_Save_GIC+0x100>
 e013e24:	e30117c4 	movw	r1, #6084	; 0x17c4
 e013e28:	e34a1010 	movt	r1, #40976	; 0xa010
 e013e2c:	e2830080 	add	r0, r3, #128	; 0x80
 e013e30:	e041100c 	sub	r1, r1, ip
 e013e34:	e7912003 	ldr	r2, [r1, r3]
 e013e38:	f57ff05f 	dmb	sy
 e013e3c:	e5a32004 	str	r2, [r3, #4]!
 e013e40:	e1530000 	cmp	r3, r0
 e013e44:	1afffffa 	bne	e013e34 <SOCPS_Save_GIC+0xc0>
 e013e48:	e59f3028 	ldr	r3, [pc, #40]	; e013e78 <SOCPS_Save_GIC+0x104>
 e013e4c:	e3011344 	movw	r1, #4932	; 0x1344
 e013e50:	e34a1010 	movt	r1, #40976	; 0xa010
 e013e54:	e2830080 	add	r0, r3, #128	; 0x80
 e013e58:	e041100c 	sub	r1, r1, ip
 e013e5c:	e7912003 	ldr	r2, [r1, r3]
 e013e60:	f57ff05f 	dmb	sy
 e013e64:	e5a32004 	str	r2, [r3, #4]!
 e013e68:	e1530000 	cmp	r3, r0
 e013e6c:	1afffffa 	bne	e013e5c <SOCPS_Save_GIC+0xe8>
 e013e70:	e12fff1e 	bx	lr
 e013e74:	600a8bec 	.word	0x600a8bec
 e013e78:	600a8c6c 	.word	0x600a8c6c

0e013e7c <SOCPS_Restore_GIC>:
 e013e7c:	e3081bb0 	movw	r1, #35760	; 0x8bb0
 e013e80:	e346100a 	movt	r1, #24586	; 0x600a
 e013e84:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 e013e88:	e5912140 	ldr	r2, [r1, #320]	; 0x140
 e013e8c:	f57ff05f 	dmb	sy
 e013e90:	e3a03a02 	mov	r3, #8192	; 0x2000
 e013e94:	e34a3010 	movt	r3, #40976	; 0xa010
 e013e98:	e5832004 	str	r2, [r3, #4]
 e013e9c:	e5913000 	ldr	r3, [r1]
 e013ea0:	f57ff05f 	dmb	sy
 e013ea4:	e3a02a01 	mov	r2, #4096	; 0x1000
 e013ea8:	e34a2010 	movt	r2, #40976	; 0xa010
 e013eac:	e5823100 	str	r3, [r2, #256]	; 0x100
 e013eb0:	e5913004 	ldr	r3, [r1, #4]
 e013eb4:	f57ff05f 	dmb	sy
 e013eb8:	e5823104 	str	r3, [r2, #260]	; 0x104
 e013ebc:	e5913008 	ldr	r3, [r1, #8]
 e013ec0:	f57ff05f 	dmb	sy
 e013ec4:	e5823108 	str	r3, [r2, #264]	; 0x108
 e013ec8:	e591300c 	ldr	r3, [r1, #12]
 e013ecc:	f57ff05f 	dmb	sy
 e013ed0:	e582310c 	str	r3, [r2, #268]	; 0x10c
 e013ed4:	e5913010 	ldr	r3, [r1, #16]
 e013ed8:	f57ff05f 	dmb	sy
 e013edc:	e5823300 	str	r3, [r2, #768]	; 0x300
 e013ee0:	e5913014 	ldr	r3, [r1, #20]
 e013ee4:	f57ff05f 	dmb	sy
 e013ee8:	e5823304 	str	r3, [r2, #772]	; 0x304
 e013eec:	e5913018 	ldr	r3, [r1, #24]
 e013ef0:	f57ff05f 	dmb	sy
 e013ef4:	e5823308 	str	r3, [r2, #776]	; 0x308
 e013ef8:	e591c01c 	ldr	ip, [r1, #28]
 e013efc:	f57ff05f 	dmb	sy
 e013f00:	e3010bdc 	movw	r0, #7132	; 0x1bdc
 e013f04:	e34a0010 	movt	r0, #40976	; 0xa010
 e013f08:	e582c30c 	str	ip, [r2, #780]	; 0x30c
 e013f0c:	e2813020 	add	r3, r1, #32
 e013f10:	e0400001 	sub	r0, r0, r1
 e013f14:	e281c040 	add	ip, r1, #64	; 0x40
 e013f18:	e4932004 	ldr	r2, [r3], #4
 e013f1c:	f57ff05f 	dmb	sy
 e013f20:	e153000c 	cmp	r3, ip
 e013f24:	e7802003 	str	r2, [r0, r3]
 e013f28:	1afffffa 	bne	e013f18 <SOCPS_Restore_GIC+0x9c>
 e013f2c:	e59f2094 	ldr	r2, [pc, #148]	; e013fc8 <SOCPS_Restore_GIC+0x14c>
 e013f30:	e301c7c4 	movw	ip, #6084	; 0x17c4
 e013f34:	e34ac010 	movt	ip, #40976	; 0xa010
 e013f38:	e282e080 	add	lr, r2, #128	; 0x80
 e013f3c:	e1a03002 	mov	r3, r2
 e013f40:	e5b20004 	ldr	r0, [r2, #4]!
 e013f44:	f57ff05f 	dmb	sy
 e013f48:	e083300c 	add	r3, r3, ip
 e013f4c:	e0433001 	sub	r3, r3, r1
 e013f50:	e152000e 	cmp	r2, lr
 e013f54:	e5830000 	str	r0, [r3]
 e013f58:	1afffff7 	bne	e013f3c <SOCPS_Restore_GIC+0xc0>
 e013f5c:	e59f2068 	ldr	r2, [pc, #104]	; e013fcc <SOCPS_Restore_GIC+0x150>
 e013f60:	e301c344 	movw	ip, #4932	; 0x1344
 e013f64:	e34ac010 	movt	ip, #40976	; 0xa010
 e013f68:	e282e080 	add	lr, r2, #128	; 0x80
 e013f6c:	e1a03002 	mov	r3, r2
 e013f70:	e5b20004 	ldr	r0, [r2, #4]!
 e013f74:	f57ff05f 	dmb	sy
 e013f78:	e083300c 	add	r3, r3, ip
 e013f7c:	e0433001 	sub	r3, r3, r1
 e013f80:	e152000e 	cmp	r2, lr
 e013f84:	e5830000 	str	r0, [r3]
 e013f88:	1afffff7 	bne	e013f6c <SOCPS_Restore_GIC+0xf0>
 e013f8c:	e3a02a02 	mov	r2, #8192	; 0x2000
 e013f90:	e34a2010 	movt	r2, #40976	; 0xa010
 e013f94:	e5923000 	ldr	r3, [r2]
 e013f98:	f57ff05f 	dmb	sy
 e013f9c:	e3c33e1e 	bic	r3, r3, #480	; 0x1e0
 e013fa0:	e3c33003 	bic	r3, r3, #3
 e013fa4:	e3833007 	orr	r3, r3, #7
 e013fa8:	f57ff05f 	dmb	sy
 e013fac:	e5823000 	str	r3, [r2]
 e013fb0:	f57ff05f 	dmb	sy
 e013fb4:	e3a03a01 	mov	r3, #4096	; 0x1000
 e013fb8:	e34a3010 	movt	r3, #40976	; 0xa010
 e013fbc:	e3a02003 	mov	r2, #3
 e013fc0:	e5832000 	str	r2, [r3]
 e013fc4:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
 e013fc8:	600a8bec 	.word	0x600a8bec
 e013fcc:	600a8c6c 	.word	0x600a8c6c

0e013fd0 <SOCPS_SleepPG_LIB>:
 e013fd0:	e92d4010 	push	{r4, lr}
 e013fd4:	ebffff66 	bl	e013d74 <SOCPS_Save_GIC>
 e013fd8:	e3a01000 	mov	r1, #0
 e013fdc:	e3a00020 	mov	r0, #32
 e013fe0:	e30329a0 	movw	r2, #14752	; 0x39a0
 e013fe4:	e346200a 	movt	r2, #24586	; 0x600a
 e013fe8:	ebffd1a4 	bl	e008680 <ipc_send_message>
 e013fec:	e3a00000 	mov	r0, #0
 e013ff0:	e3031c44 	movw	r1, #15428	; 0x3c44
 e013ff4:	e3401e01 	movt	r1, #3585	; 0xe01
 e013ff8:	eb000018 	bl	e014060 <__cpu_suspend_veneer>
 e013ffc:	e8bd4010 	pop	{r4, lr}
 e014000:	eaffff9d 	b	e013e7c <SOCPS_Restore_GIC>

0e014004 <SOCPS_SleepCG_LIB>:
 e014004:	e30329a0 	movw	r2, #14752	; 0x39a0
 e014008:	e346200a 	movt	r2, #24586	; 0x600a
 e01400c:	e92d4010 	push	{r4, lr}
 e014010:	e3a03001 	mov	r3, #1
 e014014:	e5823000 	str	r3, [r2]
 e014018:	f57ff06f 	isb	sy
 e01401c:	e3a01000 	mov	r1, #0
 e014020:	e3a00020 	mov	r0, #32
 e014024:	ebffd195 	bl	e008680 <ipc_send_message>
 e014028:	e3a01441 	mov	r1, #1090519040	; 0x41000000
 e01402c:	e30a3b38 	movw	r3, #43832	; 0xab38
 e014030:	e3403e00 	movt	r3, #3584	; 0xe00
 e014034:	e591200c 	ldr	r2, [r1, #12]
 e014038:	e3a00002 	mov	r0, #2
 e01403c:	e3c22001 	bic	r2, r2, #1
 e014040:	e581200c 	str	r2, [r1, #12]
 e014044:	e8bd4010 	pop	{r4, lr}
 e014048:	e12fff13 	bx	r3
 e01404c:	00000000 	andeq	r0, r0, r0

0e014050 <____PutCharacter_veneer>:
 e014050:	e51ff004 	ldr	pc, [pc, #-4]	; e014054 <____PutCharacter_veneer+0x4>
 e014054:	60094300 	.word	0x60094300

0e014058 <__cpu_do_suspend_veneer>:
 e014058:	e51ff004 	ldr	pc, [pc, #-4]	; e01405c <__cpu_do_suspend_veneer+0x4>
 e01405c:	60094390 	.word	0x60094390

0e014060 <__cpu_suspend_veneer>:
 e014060:	e51ff004 	ldr	pc, [pc, #-4]	; e014064 <__cpu_suspend_veneer+0x4>
 e014064:	60094370 	.word	0x60094370
 e014068:	6d6f682f 	.word	0x6d6f682f
 e01406c:	75612f65 	.word	0x75612f65
 e014070:	6a5f6f74 	.word	0x6a5f6f74
 e014074:	696b6e65 	.word	0x696b6e65
 e014078:	775f736e 	.word	0x775f736e
 e01407c:	356e616c 	.word	0x356e616c
 e014080:	544f492f 	.word	0x544f492f
 e014084:	5354415f 	.word	0x5354415f
 e014088:	7065722f 	.word	0x7065722f
 e01408c:	522f736f 	.word	0x522f736f
 e014090:	61656c65 	.word	0x61656c65
 e014094:	535f6573 	.word	0x535f6573
 e014098:	4c5f4b44 	.word	0x4c5f4b44
 e01409c:	78756e69 	.word	0x78756e69
 e0140a0:	6c65522f 	.word	0x6c65522f
 e0140a4:	65736165 	.word	0x65736165
 e0140a8:	6b64535f 	.word	0x6b64535f
 e0140ac:	756f732f 	.word	0x756f732f
 e0140b0:	73656372 	.word	0x73656372
 e0140b4:	7269662f 	.word	0x7269662f
 e0140b8:	7261776d 	.word	0x7261776d
 e0140bc:	6f632f65 	.word	0x6f632f65
 e0140c0:	6e6f706d 	.word	0x6e6f706d
 e0140c4:	2f746e65 	.word	0x2f746e65
 e0140c8:	662f736f 	.word	0x662f736f
 e0140cc:	72656572 	.word	0x72656572
 e0140d0:	2f736f74 	.word	0x2f736f74
 e0140d4:	65657266 	.word	0x65657266
 e0140d8:	736f7472 	.word	0x736f7472
 e0140dc:	6165685f 	.word	0x6165685f
 e0140e0:	635f3570 	.word	0x635f3570
 e0140e4:	69666e6f 	.word	0x69666e6f
 e0140e8:	00632e67 	.word	0x00632e67

0e0140ec <_global_impure_ptr>:
 e0140ec:	60095004                                .P.`

0e0140f0 <_ctype_>:
 e0140f0:	20202000 20202020 28282020 20282828     .         ((((( 
 e014100:	20202020 20202020 20202020 20202020                     
 e014110:	10108820 10101010 10101010 10101010      ...............
 e014120:	04040410 04040404 10040404 10101010     ................
 e014130:	41411010 41414141 01010101 01010101     ..AAAAAA........
 e014140:	01010101 01010101 01010101 10101010     ................
 e014150:	42421010 42424242 02020202 02020202     ..BBBBBB........
 e014160:	02020202 02020202 02020202 10101010     ................
 e014170:	00000020 00000000 00000000 00000000      ...............
	...

0e0141f8 <p05.0>:
 e0141f8:	00000005 00000019 0000007d 00000000     ........}.......

0e014208 <__mprec_tens>:
 e014208:	00000000 3ff00000 00000000 40240000     .......?......$@
 e014218:	00000000 40590000 00000000 408f4000     ......Y@.....@.@
 e014228:	00000000 40c38800 00000000 40f86a00     .......@.....j.@
 e014238:	00000000 412e8480 00000000 416312d0     .......A......cA
 e014248:	00000000 4197d784 00000000 41cdcd65     .......A....e..A
 e014258:	20000000 4202a05f e8000000 42374876     ... _..B....vH7B
 e014268:	a2000000 426d1a94 e5400000 42a2309c     ......mB..@..0.B
 e014278:	1e900000 42d6bcc4 26340000 430c6bf5     .......B..4&.k.C
 e014288:	37e08000 4341c379 85d8a000 43763457     ...7y.AC....W4vC
 e014298:	674ec800 43abc16d 60913d00 43e158e4     ..Ngm..C.=.`.X.C
 e0142a8:	78b58c40 4415af1d d6e2ef50 444b1ae4     @..x...DP.....KD
 e0142b8:	064dd592 4480f0cf c7e14af6 44b52d02     ..M....D.J...-.D
 e0142c8:	79d99db4 44ea7843                       ...yCx.D

0e0142d0 <__mprec_tinytens>:
 e0142d0:	97d889bc 3c9cd2b2 d5a8a733 3949f623     .......<3...#.I9
 e0142e0:	44f4a73d 32a50ffd cf8c979d 255bba08     =..D...2......[%
 e0142f0:	64ac6f43 0ac80628                       Co.d(...

0e0142f8 <__mprec_bigtens>:
 e0142f8:	37e08000 4341c379 b5056e17 4693b8b5     ...7y.AC.n.....F
 e014308:	e93ff9f5 4d384f03 f9301d32 5a827748     ..?..O8M2.0.Hw.Z
 e014318:	7f73bf3c 75154fdd                       <.s..O.u

0e014320 <blanks.1>:
 e014320:	20202020 20202020 20202020 20202020                     

0e014330 <zeroes.0>:
 e014330:	30303030 30303030 30303030 30303030     0000000000000000

0e014340 <blanks.1>:
 e014340:	20202020 20202020 20202020 20202020                     

0e014350 <zeroes.0>:
 e014350:	30303030 30303030 30303030 30303030     0000000000000000
 e014360:	2d2d2d2d 2d2d2d2d 2d2d2d2d 2d2d2d2d     ----------------
 e014370:	4554202d 43205453 414d4d4f 4d20444e     - TEST COMMAND M
 e014380:	2045444f 504c4548 2d782520 2d2d2d2d     ODE HELP %x-----
 e014390:	2d2d2d2d 2d2d2d2d 2d2d2d2d 00000a2d     -------------...
 e0143a0:	494e4f4d 00524f54 000a7325 00000023     MONITOR.%s..#...
 e0143b0:	2d2d2d2d 2d2d2d2d 2d2d2d2d 2d2d2d2d     ----------------
 e0143c0:	4554202d 43205453 414d4d4f 4d20444e     - TEST COMMAND M
 e0143d0:	2045444f 20444e45 2d782520 2d2d2d2d     ODE END  %x-----
 e0143e0:	2d2d2d2d 2d2d2d2d 2d2d2d2d 00000a2d     -------------...
 e0143f0:	6f626552 6e69746f 2e2e2067 000d0a2e     Rebooting ......
 e014400:	74726175 6e727562 00000000 00000072     uartburn....r...
 e014410:	00000061 65707974 00000000 00006770     a...type....pg..
 e014420:	00006763 00746567 6b636f6c 3a746962     cg..get.lockbit:
 e014430:	20786c25 0000000a 706c7364 636f6c5f     %lx ....dslp_loc
 e014440:	7469626b 786c253a 0000000a 3830255b     kbit:%lx....[%08
 e014450:	25205d78 20783830 0000000a 6e6f7257     x] %08x ....Wron
 e014460:	72612067 656d7567 6e20746e 65626d75     g argument numbe
 e014470:	0a0d2172 00000000 50495352 616e6520     r!......RSIP ena
 e014480:	64656c62 6143202c 2074276e 64616552     bled, Can't Read
 e014490:	616c4620 0a2e6873 00000000 6e6f7257      Flash......Wron
 e0144a0:	6d632067 0a0d2164 00000000 73756665     g cmd!......efus
 e0144b0:	656d2065 616d206d 636f6c6c 69616620     e mem malloc fai
 e0144c0:	000a206c 70616d72 00000000 00000d0a     l ..rmap........
 e0144d0:	53554645 6f4c5f45 61636967 70614d6c     EFUSE_LogicalMap
 e0144e0:	6165525f 61662064 0a206c69 00000000     _Read fail .....
 e0144f0:	46450d0a 5b455355 6c333025 003a5d78     ..EFUSE[%03lx]:.
 e014500:	32302520 00000078 70616d77 00000000      %02x...wmap....
 e014510:	61766e49 2064696c 63677261 000a202e     Invalid argc. ..
 e014520:	69727473 6c20676e 74676e65 6c252868     string length(%l
 e014530:	73202975 6c756f68 65622064 64646f20     u) should be odd
 e014540:	00000a20 73706f4f 7277203a 20657469      ...Oops: write 
 e014550:	746e656c 6f6e2068 616d2074 20686374     lenth not match 
 e014560:	75706e69 74732074 676e6972 6e656c20     input string len
 e014570:	202c6774 6f6f6863 73206573 6c6c616d     tg, choose small
 e014580:	6f207265 000a656e 73756665 6d772065     er one..efuse wm
 e014590:	77207061 65746972 6e656c20 756c253a     ap write len:%lu
 e0145a0:	7473202c 676e6972 6e656c20 756c253a     , string len:%lu
 e0145b0:	0000000a 77617272 00000000 5f50544f     ....rraw....OTP_
 e0145c0:	64616552 61662038 0a206c69 00000000     Read8 fail .....
 e0145d0:	61520d0a 70614d77 3330255b 3a5d786c     ..RawMap[%03lx]:
 e0145e0:	00000000 77617277 00000000 43544547     ....wraw....GETC
 e0145f0:	00004352 73756665 72772065 77207761     RC..efuse wraw w
 e014600:	65746972 6e656c20 756c253a 7473202c     rite len:%lu, st
 e014610:	676e6972 6e656c20 756c253a 0000000a     ring len:%lu....
 e014620:	77617277 6c25203a 78252078 00000a20     wraw: %lx %x ...
 e014630:	5f50544f 74697257 66203865 206c6961     OTP_Write8 fail 
 e014640:	0000000a 2077656e 20637263 756c6176     ....new crc valu
 e014650:	73692065 25783020 0000786c 0000003f     e is 0x%lx..?...
 e014660:	4c454809 7e282050 0a20293f 50200909     .HELP (~?) ... P
 e014670:	746e6972 69687420 65682073 6d20706c     rint this help m
 e014680:	61737365 00000a67 00005744 20574409     essag...DW...DW 
 e014690:	6464413c 73736572 654c202c 6874676e     <Address, Length
 e0146a0:	09090a3e 6d754420 656d2070 79726f6d     >... Dump memory
 e0146b0:	726f7720 726f2064 61655220 77482064      word or Read Hw
 e0146c0:	726f7720 65722064 74736967 203b7265      word register; 
 e0146d0:	2009090a 3c205744 72646461 0909203e     ... DW <addr> ..
 e0146e0:	6d754420 6e6f2070 6f20796c 7720656e      Dump only one w
 e0146f0:	2064726f 74207461 73206568 20656d61     ord at the same 
 e014700:	656d6974 6e75202c 203a7469 74794234     time, unit: 4Byt
 e014710:	090a7365 57442009 64613c20 203e7264     es... DW <addr> 
 e014720:	6e656c3c 4420093e 20706d75 20656874     <len>. Dump the 
 e014730:	63657073 65696669 656c2064 6874676e     specified length
 e014740:	20666f20 20656874 64726f77 6e75202c      of the word, un
 e014750:	203a7469 74794234 090a7365 57442009     it: 4Bytes... DW
 e014760:	64613c20 203e7264 6e656c3c 2062203e      <addr> <len> b 
 e014770:	6d754420 68742070 70732065 66696365      Dump the specif
 e014780:	20646569 676e656c 6f206874 68742066     ied length of th
 e014790:	79622065 202c6574 74696e75 4231203a     e byte, unit: 1B
 e0147a0:	0a657479 00000000 00005745 20574509     yte.....EW...EW 
 e0147b0:	6464413c 73736572 6548202c 090a3e78     <Address, Hex>..
 e0147c0:	72572009 20657469 6f6d656d 64207972     . Write memory d
 e0147d0:	64726f77 20726f20 74697257 77482065     word or Write Hw
 e0147e0:	6f776420 72206472 73696765 20726574      dword register 
 e0147f0:	2009090a 206e6143 74697277 6e6f2065     ... Can write on
 e014800:	6f20796c 6420656e 64726f77 20746120     ly one dword at 
 e014810:	20656874 656d6173 6d697420 090a2065     the same time ..
 e014820:	78452009 5745203a 64644120 73736572     . Ex: EW Address
 e014830:	6c615620 0a206575 00000000 4f424552      Value .....REBO
 e014840:	0000544f 42455209 20544f4f 2009090a     OT...REBOOT ... 
 e014850:	6574693c 73202c6d 6e697274 3a203e67     <item, string> :
 e014860:	09090a20 65746920 75203a6d 62747261      ... item: uartb
 e014870:	206e7275 4e20726f 0a20412f 0a200909     urn or N/A ... .
 e014880:	00000000 53554645 00000045 55464509     ....EFUSE....EFU
 e014890:	0a204553 77200909 2070616d 72646461     SE ... wmap addr
 e0148a0:	78656828 656c2029 6568286e 64202978     (hex) len(hex) d
 e0148b0:	28617461 29786568 2009090a 70616d72     ata(hex)... rmap
 e0148c0:	09090a20 6d773c20 30207061 20303078      ... <wmap 0x00 
 e0148d0:	20327830 35393138 6665203e 5b657375     0x2 8195> efuse[
 e0148e0:	303d5d30 2c313878 75666520 5b206573     0]=0x81, efuse [
 e0148f0:	303d5d31 0a353978 3c200909 70616d77     1]=0x95... <wmap
 e014900:	46783020 78302030 31312034 33333232      0xF0 0x4 112233
 e014910:	203e3434 4678305b 303d5d30 2c313178     44> [0xF0]=0x11,
 e014920:	78305b20 3d5d3146 32327830 305b202c      [0xF1]=0x22, [0
 e014930:	5d324678 3378303d 5b202c33 33467830     xF2]=0x33, [0xF3
 e014940:	78303d5d 000a3434 4b434954 00005350     ]=0x44..TICKPS..
 e014950:	43495409 2053504b 2009090a 72203a72     .TICKPS ... r: r
 e014960:	61656c65 6f206573 61772073 6f6c656b     elease os wakelo
 e014970:	0a206b63 61200909 6361203a 72697571     ck ... a: acquir
 e014980:	736f2065 6b617720 636f6c65 000a206b     e os wakelock ..
 e014990:	6e750a0d 776f6e6b 6f63206e 6e616d6d     ..unknown comman
 e0149a0:	25272064 00002773 230a0a0d 00000a0d     d '%s'.....#....
 e0149b0:	6c656873 61745f6c 00006b73 61657243     shell_task..Crea
 e0149c0:	4c206574 5520676f 20545241 6b736154     te Log UART Task
 e0149d0:	72724520 000a2121 6e616843 206c656e      Err!!..Channel 
 e0149e0:	666e6f43 7463696c 726f6620 61684320     Conflict for Cha
 e0149f0:	6c656e6e 756c2520 0a0d2120 00000000     nnel %lu !......
 e014a00:	00435049 43504920 71655220 74736575     IPC. IPC Request
 e014a10:	6d695420 74756f65 00000a0d 43504920      Timeout.... IPC
 e014a20:	74654720 6d655320 6f687061 54206572      Get Semaphore T
 e014a30:	6f656d69 0a0d7475 00000000 6d6f682f     imeout....../hom
 e014a40:	75612f65 6a5f6f74 696b6e65 775f736e     e/auto_jenkins_w
 e014a50:	356e616c 544f492f 5354415f 7065722f     lan5/IOT_ATS/rep
 e014a60:	522f736f 61656c65 535f6573 4c5f4b44     os/Release_SDK_L
 e014a70:	78756e69 6c65522f 65736165 6b64535f     inux/Release_Sdk
 e014a80:	756f732f 73656372 7269662f 7261776d     /sources/firmwar
 e014a90:	6f632f65 6e6f706d 2f746e65 2f636f73     e/component/soc/
 e014aa0:	62656d61 616d7361 662f7472 62696c77     amebasmart/fwlib
 e014ab0:	6d61722f 6d6f635f 2f6e6f6d 62656d61     /ram_common/ameb
 e014ac0:	70695f61 70615f63 00632e69              a_ipc_api.c.

0e014acc <CSWTCH.42>:
 e014acc:	00000008 00000000 00000000 00000000     ................
 e014adc:	00000008 00000000 00000000 00000000     ................
 e014aec:	00000008                                ....

0e014af0 <CSWTCH.43>:
 e014af0:	42008600 42008600 00000000 00000000     ...B...B........
	...
 e014b30:	41000500 41000500 00000000 00000000     ...A...A........
	...
 e014b70:	41000580 41000580 6d6f682f 75612f65     ...A...A/home/au
 e014b80:	6a5f6f74 696b6e65 775f736e 356e616c     to_jenkins_wlan5
 e014b90:	544f492f 5354415f 7065722f 522f736f     /IOT_ATS/repos/R
 e014ba0:	61656c65 535f6573 4c5f4b44 78756e69     elease_SDK_Linux
 e014bb0:	6c65522f 65736165 6b64535f 756f732f     /Release_Sdk/sou
 e014bc0:	73656372 7269662f 7261776d 6f632f65     rces/firmware/co
 e014bd0:	6e6f706d 2f746e65 2f636f73 62656d61     mponent/soc/ameb
 e014be0:	616d7361 662f7472 62696c77 6d61722f     asmart/fwlib/ram
 e014bf0:	6d6f635f 2f6e6f6d 62656d61 70695f61     _common/ameba_ip
 e014c00:	61725f63 00632e6d 2050544f 64616572     c_ram.c.OTP read
 e014c10:	74656720 20776820 616d6573 69616620      get hw sema fai
 e014c20:	00000a6c 0050544f 5f50544f 64616552     l...OTP.OTP_Read
 e014c30:	61462038 25206c69 000a2078 20524d50     8 Fail %x ..PMR 
 e014c40:	64616552 72726520 0a21726f 00000000     Read error!.....
 e014c50:	2050544f 74697277 65672065 77682074     OTP write get hw
 e014c60:	6d657320 61662061 000a6c69 5f50544f      sema fail..OTP_
 e014c70:	74697257 46203865 206c6961 0a207825     Write8 Fail %x .
 e014c80:	00000000 2050544f 676f7270 206d6172     ....OTP program 
 e014c90:	6f727265 000a2172 32524d50 61655220     error!..PMR2 Rea
 e014ca0:	72652064 21726f72 0000000a 69676f4c     d error!....Logi
 e014cb0:	4d6c6163 52207061 20646165 6f727265     calMap Read erro
 e014cc0:	78252072 2078252b 63786520 20646565     r %x+%x  exceed 
 e014cd0:	696d696c 00000a74 67696c61 6e656d6e     limit...alignmen
 e014ce0:	72652074 20726f72 25207825 000a2078     t error %x %x ..
 e014cf0:	69676f4c 4d6c6163 57207061 65746972     LogicalMap Write
 e014d00:	72726520 2520726f 78252b78 78652020      error %x+%x  ex
 e014d10:	64656563 6d696c20 000a7469 69676f4c     ceed limit..Logi
 e014d20:	4d6c6163 52207061 20646165 6f727265     calMap Read erro
 e014d30:	68772072 77206e65 65746972 25204020     r when write @ %
 e014d40:	000a2078 6477656e 5b617461 3d5d7825     x ..newdata[%x]=
 e014d50:	0a782520 00000000 5f50544f 505f4750      %x.....OTP_PG_P
 e014d60:	656b6361 6f575f74 73206472 20657a69     acket_Word size 
 e014d70:	6f727265 253a2072 656c2078 78253a6e     error :%x len:%x
 e014d80:	00000a20 656b614d 72757320 544f2065      ...Make sure OT
 e014d90:	6f6c2050 61636967 7261206c 20206165     P logical area  
 e014da0:	2078253a 66656420 64656e69 0000000a     :%x  defined....
 e014db0:	5f50544f 505f4750 656b6361 255b2074     OTP_PG_Packet [%
 e014dc0:	25205d78 000a2078 5f50544f 505f4750     x] %x ..OTP_PG_P
 e014dd0:	656b6361 6f6e2074 6f6e6520 20686775     acket no enough 
 e014de0:	63617073 78252065 00000a20 5f50544f     space %x ...OTP_
 e014df0:	505f4750 656b6361 79422074 20206574     PG_Packet Byte  
 e014e00:	5d78255b 20782520 0000000a 7478656e     [%x] %x ....next
 e014e10:	69727720 63206574 656c6379 73614220      write cycle Bas
 e014e20:	6c252065 6e632078 25207374 0a20786c     e %lx cnts %lx .
 e014e30:	00000000 2d73255b 205d6325 00000000     ....[%s-%c] ....
 e014e40:	3830255b 00205d78 255b0a0d 5d783830     [%08x] ...[%08x]
 e014e50:	00000020 78383025 00000020 78323025      ...%08x ...%02x
 e014e60:	00000020 65737341 45207472 726f7272      ...Assert Error
 e014e70:	73252021 0d75253a 0000000a 20525349     ! %s:%u.....ISR 
 e014e80:	20726f66 65746e69 70757272 64692074     for interrupt id
 e014e90:	756c2528 73692029 746f6e20 67657220     (%lu) is not reg
 e014ea0:	65747369 21646572 0000200a 00003052     istered!. ..R0..
 e014eb0:	00003452 65726f43 786c255b 7325205d     R4..Core[%lx] %s
 e014ec0:	30203d20 38302578 000a786c 65726f43      = 0x%08lx..Core
 e014ed0:	786c255b 7250205d 6f697665 4d207375     [%lx] Previous M
 e014ee0:	2765646f 50432073 69205253 78302073     ode's CPSR is 0x
 e014ef0:	6c383025 00000a78 65726f43 786c255b     %08lx...Core[%lx
 e014f00:	7250205d 6f697665 4d207375 2765646f     ] Previous Mode'
 e014f10:	524c2073 20736920 30257830 0a786c38     s LR is 0x%08lx.
 e014f20:	00000000 65726f43 786c255b 7543205d     ....Core[%lx] Cu
 e014f30:	6e657272 74532074 206b6361 6e696f50     rrent Stack Poin
 e014f40:	20726574 7830203d 6c383025 61202c78     ter = 0x%08lx, a
 e014f50:	6420646e 20706d75 63617473 6564206b     nd dump stack de
 e014f60:	20687470 6425203d 00000a0d 65726f43     pth = %d....Core
 e014f70:	786c255b 255b205d 786c3830 7830205d     [%lx] [%08lx] 0x
 e014f80:	6c383025 78302078 6c383025 78302078     %08lx 0x%08lx 0x
 e014f90:	6c383025 78302078 6c383025 00000a78     %08lx 0x%08lx...
 e014fa0:	72646441 20737365 7420666f 75206568     Address of the u
 e014fb0:	6665646e 64656e69 736e6920 63757274     ndefined instruc
 e014fc0:	6e6f6974 25783020 0a783830 00000000     tion 0x%08x.....
 e014fd0:	61746144 6f626120 77207472 20687469     Data abort with 
 e014fe0:	61746144 75614620 5320746c 75746174     Data Fault Statu
 e014ff0:	65522073 74736967 20207265 30257830     s Register  0x%0
 e015000:	000a7838 72646441 20737365 4920666f     8x..Address of I
 e015010:	7274736e 69746375 63206e6f 69737561     nstruction causi
 e015020:	4420676e 20617461 726f6261 78302074     ng Data abort 0x
 e015030:	78383025 0000000a 66657250 68637465     %08x....Prefetch
 e015040:	6f626120 77207472 20687469 74736e49      abort with Inst
 e015050:	74637572 206e6f69 6c756146 74532074     ruction Fault St
 e015060:	73757461 67655220 65747369 78302072     atus Register 0x
 e015070:	78383025 0000000a 00003552 00003652     %08x....R5..R6..
 e015080:	00003752 00003852 00003952 00303152     R7..R8..R9..R10.
 e015090:	00313152 00003152 00003252 00003352     R11.R1..R2..R3..
 e0150a0:	00323152 0000524c                       R12.LR..

0e0150a8 <crash_reg_name>:
 e0150a8:	0e014eb0 0e015078 0e01507c 0e015080     .N..xP..|P...P..
 e0150b8:	0e015084 0e015088 0e01508c 0e015090     .P...P...P...P..
 e0150c8:	0e014eac 0e015094 0e015098 0e01509c     .N...P...P...P..
 e0150d8:	0e0150a0 0e0150a4                       .P...P..

0e0150e0 <LOG_UART_IDX_FLAG>:
 e0150e0:	00000001 00200000 00020000 0000cb9d     ...... .........
 e0150f0:	00000008 00000000 00100000 00010000     ................
 e015100:	000bee33 00000008 00000003 00800000     3...............
 e015110:	00080000 002fb8cc 00000008 666e6f43     ....../.....Conf
 e015120:	7463696c 20676e69 49435350 72657620     licting PSCI ver
 e015130:	6e6f6973 74656420 65746365 000a2e64     sion detected...
 e015140:	73757254 20646574 6d20534f 61726769     Trusted OS migra
 e015150:	6e6f6974 746f6e20 71657220 65726975     tion not require
 e015160:	00000a64 5247494d 5f455441 4f464e49     d...MIGRATE_INFO
 e015170:	5059545f 6f6e2045 75732074 726f7070     _TYPE not suppor
 e015180:	2e646574 0000000a 5247494d 5f455441     ted.....MIGRATE_
 e015190:	4f464e49 5059545f 65722045 6e727574     INFO_TYPE return
 e0151a0:	75206465 6f6e6b6e 74206e77 20657079     ed unknown type 
 e0151b0:	29642528 0000000a 5247494d 5f455441     (%d)....MIGRATE_
 e0151c0:	4f464e49 5f50555f 20555043 6f706572     INFO_UP_CPU repo
 e0151d0:	64657472 766e6920 64696c61 79687020     rted invalid phy
 e0151e0:	61636973 4449206c 78302820 29786c25     sical ID (0x%lx)
 e0151f0:	0000000a 73757254 20646574 7220534f     ....Trusted OS r
 e015200:	64697365 20746e65 70206e6f 69737968     esident on physi
 e015210:	206c6163 20555043 6c257830 00000a78     cal CPU 0x%lx...

0e015220 <CSWTCH.2>:
 e015220:	ffffffea ffffffea ffffffea ffffffea     ................
 e015230:	ffffffea ffffffea ffffffff ffffffea     ................
 e015240:	ffffffa1 00000000 31757063 776f7020     ........cpu1 pow
 e015250:	6f207265 000a6666 6f636553 7261646e     er off..Secondar
 e015260:	6f632079 70206572 7265776f 66666f20     y core power off
 e015270:	69616620 25203a6c 00000a64 25555043      fail: %d...CPU%
 e015280:	6f203a64 00000a6e 3a706d73 69724220     d: on...smp: Bri
 e015290:	6e69676e 70752067 63657320 61646e6f     nging up seconda
 e0152a0:	43207972 20735550 0a2e2e2e 00000000     ry CPUs ........
 e0152b0:	25555043 66203a64 656c6961 6f742064     CPU%d: failed to
 e0152c0:	6f6f6220 25203a74 00000a64 47505041      boot: %d...APPG
 e0152d0:	0000000a 57505041 0000000a 47435041     ....APPW....APCG
 e0152e0:	0000000a 57435041 0000000a 65737361     ....APCW....asse
 e0152f0:	65207472 20217272 656c6966 7325203a     rt err! file: %s
 e015300:	696c202c 203a656e 000a6425 6d6f682f     , line: %d../hom
 e015310:	75612f65 6a5f6f74 696b6e65 775f736e     e/auto_jenkins_w
 e015320:	356e616c 544f492f 5354415f 7065722f     lan5/IOT_ATS/rep
 e015330:	522f736f 61656c65 535f6573 4c5f4b44     os/Release_SDK_L
 e015340:	78756e69 6c65522f 65736165 6b64535f     inux/Release_Sdk
 e015350:	756f732f 73656372 7269662f 7261776d     /sources/firmwar
 e015360:	6f632f65 6e6f706d 2f746e65 2f636f73     e/component/soc/
 e015370:	62656d61 616d7361 662f7472 62696c77     amebasmart/fwlib
 e015380:	5f70612f 65726f63 616c782f 61745f74     /ap_core/xlat_ta
 e015390:	2f656c62 74616c78 6261745f 5f73656c     ble/xlat_tables_
 e0153a0:	746e6f63 2e747865 00000063 6d6f682f     context.c.../hom
 e0153b0:	75612f65 6a5f6f74 696b6e65 775f736e     e/auto_jenkins_w
 e0153c0:	356e616c 544f492f 5354415f 7065722f     lan5/IOT_ATS/rep
 e0153d0:	522f736f 61656c65 535f6573 4c5f4b44     os/Release_SDK_L
 e0153e0:	78756e69 6c65522f 65736165 6b64535f     inux/Release_Sdk
 e0153f0:	756f732f 73656372 7269662f 7261776d     /sources/firmwar
 e015400:	6f632f65 6e6f706d 2f746e65 2f636f73     e/component/soc/
 e015410:	62656d61 616d7361 662f7472 62696c77     amebasmart/fwlib
 e015420:	5f70612f 65726f63 616c782f 61745f74     /ap_core/xlat_ta
 e015430:	2f656c62 74616c78 6261745f 5f73656c     ble/xlat_tables_
 e015440:	65726f63 0000632e 616d6d0a 64615f70     core.c...mmap_ad
 e015450:	65725f64 6e6f6967 6568635f 29286b63     d_region_check()
 e015460:	69616620 2e64656c 72726520 2520726f      failed. error %
 e015470:	00000a64 20746f4e 756f6e65 6d206867     d...Not enough m
 e015480:	726f6d65 6f742079 70616d20 67657220     emory to map reg
 e015490:	3a6e6f69 4156200a 2578303a 2020786c     ion:. VA:0x%lx  
 e0154a0:	303a4150 6c6c2578 73202078 3a657a69     PA:0x%llx  size:
 e0154b0:	7a257830 61202078 3a727474 78257830     0x%zx  attr:0x%x
 e0154c0:	0000000a 6d6f682f 75612f65 6a5f6f74     ..../home/auto_j
 e0154d0:	696b6e65 775f736e 356e616c 544f492f     enkins_wlan5/IOT
 e0154e0:	5354415f 7065722f 522f736f 61656c65     _ATS/repos/Relea
 e0154f0:	535f6573 4c5f4b44 78756e69 6c65522f     se_SDK_Linux/Rel
 e015500:	65736165 6b64535f 756f732f 73656372     ease_Sdk/sources
 e015510:	7269662f 7261776d 6f632f65 6e6f706d     /firmware/compon
 e015520:	2f746e65 2f636f73 62656d61 616d7361     ent/soc/amebasma
 e015530:	662f7472 62696c77 5f70612f 65726f63     rt/fwlib/ap_core
 e015540:	616c782f 61745f74 2f656c62 74616c78     /xlat_table/xlat
 e015550:	6261745f 5f73656c 68637261 0000632e     _tables_arch.c..
 e015560:	5d73255b 6d6f6320 656e6f70 695f746e     [%s] component_i
 e015570:	6e692064 696c6176 000a0d64              d invalid...

0e01557c <__func__.0>:
 e01557c:	736f7472 6972635f 61636974 78655f6c     rtos_critical_ex
 e01558c:	00007469                                it..

0e015590 <__func__.1>:
 e015590:	736f7472 6972635f 61636974 6e655f6c     rtos_critical_en
 e0155a0:	00726574 695f7366 5f74696e 65726874     ter.fs_init_thre
 e0155b0:	00006461 2a2a2a2a 2a2a2a2a 2a2a2a2a     ad..************
 e0155c0:	2a2a2a2a 2a2a2a2a 2a2a2a2a 57202a2a     ************** W
 e0155d0:	494e5241 2a20474e 2a2a2a2a 2a2a2a2a     ARNING *********
 e0155e0:	2a2a2a2a 2a2a2a2a 2a2a2a2a 000a2a2a     **************..
 e0155f0:	4e49414d 00000000 61656c50 72206573     MAIN....Please r
 e015600:	20646165 20656874 6361433c 43206568     ead the <Cache C
 e015610:	69736e6f 6e657473 57207963 206e6568     onsistency When 
 e015620:	6e697355 4d442067 63203e41 74706168     Using DMA> chapt
 e015630:	69207265 6874206e 70412065 63696c70     er in the Applic
 e015640:	6f697461 6f4e5f6e 702e6574 000a6664     ation_Note.pdf..
 e015650:	65726548 20736920 656d6f73 69726220     Here is some bri
 e015660:	6f206665 68742066 68632065 65747061     ef of the chapte
 e015670:	6e612072 61632064 6562206e 6d657220     r and can be rem
 e015680:	6465766f 206e6920 6e69616d 000a632e     oved in main.c..
 e015690:	74726f43 412d7865 77203233 206c6c69     Cortex-A32 will 
 e0156a0:	6f747561 6974616d 20796c63 66657270     automaticly pref
 e0156b0:	68637465 74616420 6f742061 632d4420     etch data to D-c
 e0156c0:	65686361 65766520 6874206e 64612065     ache even the ad
 e0156d0:	73657264 73692073 746f6e20 61657220     dress is not rea
 e0156e0:	72772f64 21657469 0000000a 63614344     d/write!....DCac
 e0156f0:	495f6568 6c61766e 74616469 78302865     he_Invalidate(0x
 e015700:	46464646 46464646 7830202c 46464646     FFFFFFFF, 0xFFFF
 e015710:	46464646 73692029 6d617320 73612065     FFFF) is same as
 e015720:	61434420 5f656863 61656c43 766e496e      DCache_CleanInv
 e015730:	64696c61 28657461 46467830 46464646     alidate(0xFFFFFF
 e015740:	202c4646 46467830 46464646 20294646     FF, 0xFFFFFFFF) 
 e015750:	43206e69 0a323341 00000000 61766e49     in CA32.....Inva
 e015760:	6164696c 62206574 6e612079 64646120     lidate by an add
 e015770:	73736572 20736920 796c6e6f 72657020     ress is only per
 e015780:	6d726f66 77206465 206e6568 20656874     formed when the 
 e015790:	61746164 20736920 20746f6e 74726964     data is not dirt
 e0157a0:	6f202c79 65687472 73697772 20612065     y, ortherwise a 
 e0157b0:	61656c63 7369206e 72657020 6d726f66     clean is perform
 e0157c0:	0a216465 00000000 65666572 6f742072     ed!.....refer to
 e0157d0:	4d525420 20666f20 32334143 6f626120      TRM of CA32 abo
 e0157e0:	27207475 61746164 65727020 63746566     ut 'data prefetc
 e0157f0:	676e6968 6e612027 49272064 6c61766e     hing' and 'Inval
 e015800:	74616469 20676e69 6320726f 6e61656c     idating or clean
 e015810:	20676e69 61632061 27656863 00000a2e     ing a cache'....
 e015820:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
 e015830:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
 e015840:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
 e015850:	2a2a2a2a 2a2a2a2a 000a2a2a 74726f43     **********..Cort
 e015860:	412d7865 61745320 53207472 64656863     ex-A Start Sched
 e015870:	72656c75 0000000a 6d6f682f 75612f65     uler..../home/au
 e015880:	6a5f6f74 696b6e65 775f736e 356e616c     to_jenkins_wlan5
 e015890:	544f492f 5354415f 7065722f 522f736f     /IOT_ATS/repos/R
 e0158a0:	61656c65 535f6573 4c5f4b44 78756e69     elease_SDK_Linux
 e0158b0:	6c65522f 65736165 6b64535f 756f732f     /Release_Sdk/sou
 e0158c0:	73656372 7269662f 7261776d 6f632f65     rces/firmware/co
 e0158d0:	6e6f706d 2f746e65 662f736f 72656572     mponent/os/freer
 e0158e0:	2f736f74 65657266 736f7472 3031765f     tos/freertos_v10
 e0158f0:	312e322e 706d735f 756f532f 2f656372     .2.1_smp/Source/
 e015900:	6b736174 00632e73 454c4449 00000000     tasks.c.IDLE....
 e015910:	6d6f682f 75612f65 6a5f6f74 696b6e65     /home/auto_jenki
 e015920:	775f736e 356e616c 544f492f 5354415f     ns_wlan5/IOT_ATS
 e015930:	7065722f 522f736f 61656c65 535f6573     /repos/Release_S
 e015940:	4c5f4b44 78756e69 6c65522f 65736165     DK_Linux/Release
 e015950:	6b64535f 756f732f 73656372 7269662f     _Sdk/sources/fir
 e015960:	7261776d 6f632f65 6e6f706d 2f746e65     mware/component/
 e015970:	662f736f 72656572 2f736f74 65657266     os/freertos/free
 e015980:	736f7472 3031765f 312e322e 706d735f     rtos_v10.2.1_smp
 e015990:	756f532f 2f656372 75657571 00632e65     /Source/queue.c.
 e0159a0:	51726d54 00000000 20726d54 00637653     TmrQ....Tmr Svc.
 e0159b0:	6d6f682f 75612f65 6a5f6f74 696b6e65     /home/auto_jenki
 e0159c0:	775f736e 356e616c 544f492f 5354415f     ns_wlan5/IOT_ATS
 e0159d0:	7065722f 522f736f 61656c65 535f6573     /repos/Release_S
 e0159e0:	4c5f4b44 78756e69 6c65522f 65736165     DK_Linux/Release
 e0159f0:	6b64535f 756f732f 73656372 7269662f     _Sdk/sources/fir
 e015a00:	7261776d 6f632f65 6e6f706d 2f746e65     mware/component/
 e015a10:	662f736f 72656572 2f736f74 65657266     os/freertos/free
 e015a20:	736f7472 3031765f 312e322e 706d735f     rtos_v10.2.1_smp
 e015a30:	756f532f 2f656372 656d6974 632e7372     /Source/timers.c
 e015a40:	00000000 6d6f682f 75612f65 6a5f6f74     ..../home/auto_j
 e015a50:	696b6e65 775f736e 356e616c 544f492f     enkins_wlan5/IOT
 e015a60:	5354415f 7065722f 522f736f 61656c65     _ATS/repos/Relea
 e015a70:	535f6573 4c5f4b44 78756e69 6c65522f     se_SDK_Linux/Rel
 e015a80:	65736165 6b64535f 756f732f 73656372     ease_Sdk/sources
 e015a90:	7269662f 7261776d 6f632f65 6e6f706d     /firmware/compon
 e015aa0:	2f746e65 662f736f 72656572 2f736f74     ent/os/freertos/
 e015ab0:	65657266 736f7472 3031765f 312e322e     freertos_v10.2.1
 e015ac0:	706d735f 756f532f 2f656372 74726f70     _smp/Source/port
 e015ad0:	656c6261 6d654d2f 676e614d 6165682f     able/MemMang/hea
 e015ae0:	2e355f70 00000063 73546f4e 0000006b     p_5.c...NoTsk...
 e015af0:	6c6c614d 6620636f 656c6961 43202e64     Malloc failed. C
 e015b00:	3a65726f 5d73255b 6154202c 5b3a6b73     ore:[%s], Task:[
 e015b10:	2c5d7325 72665b20 68206565 20706165     %s], [free heap 
 e015b20:	657a6973 6425203a 785b205d 746e6157     size: %d] [xWant
 e015b30:	69536465 253a657a 0a0d5d64 00000000     edSize:%d]......
 e015b40:	32334143 00000000 6d6f682f 75612f65     CA32..../home/au
 e015b50:	6a5f6f74 696b6e65 775f736e 356e616c     to_jenkins_wlan5
 e015b60:	544f492f 5354415f 7065722f 522f736f     /IOT_ATS/repos/R
 e015b70:	61656c65 535f6573 4c5f4b44 78756e69     elease_SDK_Linux
 e015b80:	6c65522f 65736165 6b64535f 756f732f     /Release_Sdk/sou
 e015b90:	73656372 7269662f 7261776d 6f632f65     rces/firmware/co
 e015ba0:	6e6f706d 2f746e65 662f736f 72656572     mponent/os/freer
 e015bb0:	2f736f74 65657266 736f7472 3031765f     tos/freertos_v10
 e015bc0:	312e322e 706d735f 756f532f 2f656372     .2.1_smp/Source/
 e015bd0:	74726f70 656c6261 4343472f 4d52412f     portable/GCC/ARM
 e015be0:	3341435f 6f702f32 632e7472 00000000     _CA32/port.c....
 e015bf0:	54530d0a 204b4341 5245564f 574f4c46     ..STACK OVERFLOW
 e015c00:	54202d20 4e6b7361 28656d61 0a297325      - TaskName(%s).
 e015c10:	0000000d 64206f69 65766972 61702072     ....io driver pa
 e015c20:	656d6172 73726574 72726520 2021726f     rameters error! 
 e015c30:	656c6966 6d616e5f 25203a65 6c202c73     file_name: %s, l
 e015c40:	3a656e69 00642520 6d6f682f 75612f65     ine: %d./home/au
 e015c50:	6a5f6f74 696b6e65 775f736e 356e616c     to_jenkins_wlan5
 e015c60:	544f492f 5354415f 7065722f 522f736f     /IOT_ATS/repos/R
 e015c70:	61656c65 535f6573 4c5f4b44 78756e69     elease_SDK_Linux
 e015c80:	6c65522f 65736165 6b64535f 756f732f     /Release_Sdk/sou
 e015c90:	73656372 7269662f 7261776d 6f632f65     rces/firmware/co
 e015ca0:	6e6f706d 2f746e65 2f636f73 62656d61     mponent/soc/ameb
 e015cb0:	616d7361 662f7472 62696c77 6d6f722f     asmart/fwlib/rom
 e015cc0:	6d6f635f 2f6e6f6d 62656d61 61625f61     _common/ameba_ba
 e015cd0:	70756b63 6765725f 0000632e 6d6f682f     ckup_reg.c../hom
 e015ce0:	75612f65 6a5f6f74 696b6e65 775f736e     e/auto_jenkins_w
 e015cf0:	356e616c 544f492f 5354415f 7065722f     lan5/IOT_ATS/rep
 e015d00:	522f736f 61656c65 535f6573 4c5f4b44     os/Release_SDK_L
 e015d10:	78756e69 6c65522f 65736165 6b64535f     inux/Release_Sdk
 e015d20:	756f732f 73656372 7269662f 7261776d     /sources/firmwar
 e015d30:	6f632f65 6e6f706d 2f746e65 2f636f73     e/component/soc/
 e015d40:	62656d61 616d7361 662f7472 62696c77     amebasmart/fwlib
 e015d50:	6d6f722f 6d6f635f 2f6e6f6d 62656d61     /rom_common/ameb
 e015d60:	69745f61 6f725f6d 00632e6d 6f727245     a_tim_rom.c.Erro
 e015d70:	53202172 6c756f68 656e2064 20726576     r! Should never 
 e015d80:	63616572 65682068 0a216572 00000000     reach here!.....
 e015d90:	00434d50 7566202c 6974636e 203a6e6f     PMC., function: 
 e015da0:	73736100 69747265 22206e6f 20227325     .assertion "%s" 
 e015db0:	6c696166 203a6465 656c6966 73252220     failed: file "%s
 e015dc0:	6c202c22 20656e69 73256425 000a7325     ", line %d%s%s..
 e015dd0:	69666e49 7974696e 4e614e00 52003000     Infinity.NaN.0.R
 e015de0:	544e4545 6c616d20 20636f6c 63637573     EENT malloc succ
 e015df0:	65646565 682f0064 2f656d6f 6b6e656a     eeded./home/jenk
 e015e00:	2f736e69 6b726f77 726f772f 6170736b     ins/work/workspa
 e015e10:	722f6563 2d6b6473 656c6572 2d657361     ce/rsdk-release-
 e015e20:	776f6c66 6975622f 622f646c 646c6975     flow/build/build
 e015e30:	6473612d 30312d6b 77656e2d 2d62696c     -asdk-10-newlib-
 e015e40:	33323534 77656e2f 2d62696c 2f312e34     4523/newlib-4.1/
 e015e50:	6c77656e 6c2f6269 2f636269 6c647473     newlib/libc/stdl
 e015e60:	642f6269 2e616f74 61420063 636f6c6c     ib/dtoa.c.Balloc
 e015e70:	63757320 64656563 43006465 534f5000      succeeded.C.POS
 e015e80:	2e005849 6f682f00 6a2f656d 696b6e65     IX.../home/jenki
 e015e90:	772f736e 2f6b726f 6b726f77 63617073     ns/work/workspac
 e015ea0:	73722f65 722d6b64 61656c65 662d6573     e/rsdk-release-f
 e015eb0:	2f776f6c 6c697562 75622f64 2d646c69     low/build/build-
 e015ec0:	6b647361 2d30312d 6c77656e 342d6269     asdk-10-newlib-4
 e015ed0:	2f333235 6c77656e 342d6269 6e2f312e     523/newlib-4.1/n
 e015ee0:	696c7765 696c2f62 732f6362 696c6474     ewlib/libc/stdli
 e015ef0:	706d2f62 2e636572 31300063 35343332     b/mprec.c.012345
 e015f00:	39383736 44434241 30004645 34333231     6789ABCDEF.01234
 e015f10:	38373635 63626139 00666564 00464e49     56789abcdef.INF.
 e015f20:	00666e69 004e414e 006e616e              inf.NAN.nan.

0e015f2c <shell_cmd_table>:
 e015f2c:	0e01465c 00000000 0e00732c 0e014660     \F......,s..`F..
 e015f3c:	0e014688 00000004 0e007644 0e01468c     .F......Dv...F..
 e015f4c:	0e0147a8 00000002 0e00759c 0e0147ac     .G.......u...G..
 e015f5c:	0e01483c 00000004 0e0073e4 0e014844     <H.......s..DH..
 e015f6c:	0e014884 00000008 0e007894 0e01488c     .H.......x...H..
 e015f7c:	0e014948 00000004 0e007468 0e014950     HI......ht..PI..

0e015f8c <ipc_shell_table>:
 e015f8c:	00000001 0e007f40 00000000 0e008538     ....@.......8...
	...
 e015fa8:	00000001 0e007f40 00000000 0e008538     ....@.......8...
 e015fb8:	00000000 00000001 00000000              ............

0e015fc4 <ipc_LPWHP_table>:
 e015fc4:	00000001 0e00ab2c 00000000 0e008538     ....,.......8...
 e015fd4:	00000000 00000001 00000001              ............

Disassembly of section .code:

60094000 <__dram_text_start__>:
60094000:	ea000030 	b	600940c8 <_boot>
60094004:	ea000009 	b	60094030 <FreeRTOS_UndefinedHandler>
60094008:	ea000154 	b	60094560 <__FreeRTOS_SWI_Handler_veneer>
6009400c:	ea00001f 	b	60094090 <FreeRTOS_PrefetchAbortHandler>
60094010:	ea000012 	b	60094060 <FreeRTOS_DataAbortHandler>
60094014:	eafffffe 	b	60094014 <__dram_text_start__+0x14>
60094018:	ea00015c 	b	60094590 <__FreeRTOS_IRQ_Handler_veneer>
6009401c:	eaffffff 	b	60094020 <FreeRTOS_FIQHandler>

60094020 <FreeRTOS_FIQHandler>:
60094020:	e92d500f 	push	{r0, r1, r2, r3, ip, lr}
60094024:	eb000155 	bl	60094580 <__FIQHandler_veneer>
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
6009404c:	eb000149 	bl	60094578 <__UndefinedExceptionHandler_veneer>
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
6009407c:	eb000147 	bl	600945a0 <__DataAbortHandler_veneer>
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
600940ac:	eb00012d 	bl	60094568 <__PrefetchAbortHandler_veneer>
600940b0:	e8bd0ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp}
600940b4:	e8bd500f 	pop	{r0, r1, r2, r3, ip, lr}
600940b8:	e25ef004 	subs	pc, lr, #4
600940bc:	600a38c0 	.word	0x600a38c0
600940c0:	600a38b8 	.word	0x600a38b8
600940c4:	600a38bc 	.word	0x600a38bc

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
60094208:	eb0000de 	bl	60094588 <__setupMMUTable_veneer>
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
60094260:	ca0000d0 	bgt	600945a8 <__vPortSecondaryStart_veneer>
60094264:	eb0000cb 	bl	60094598 <__app_start_veneer>
60094268:	ebffffff 	bl	6009426c <exit>

6009426c <exit>:
6009426c:	ea0000bf 	b	60094570 <___exit_veneer>

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
60094348:	600abd00 	.word	0x600abd00
6009434c:	600ac500 	.word	0x600ac500
60094350:	600add00 	.word	0x600add00
60094354:	600ae500 	.word	0x600ae500
60094358:	600aed00 	.word	0x600aed00
6009435c:	600acd00 	.word	0x600acd00
60094360:	55555555 	.word	0x55555555
60094364:	000003ff 	.word	0x000003ff
60094368:	00007fff 	.word	0x00007fff
6009436c:	4200c000 	.word	0x4200c000

60094370 <cpu_suspend>:
60094370:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
60094374:	e1a0500d 	mov	r5, sp
60094378:	e92d0003 	push	{r0, r1}
6009437c:	e1a00005 	mov	r0, r5
60094380:	eb000074 	bl	60094558 <__cpu_suspend_save_veneer>
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
60094504:	600a8b34 	.word	0x600a8b34

60094508 <FreeRTOS_IPI_FLASHPG_Handler>:
60094508:	e10f1000 	mrs	r1, CPSR
6009450c:	f10c0080 	cpsid	i
60094510:	f57ff04f 	dsb	sy
60094514:	f57ff06f 	isb	sy
60094518:	e3042300 	movw	r2, #17152	; 0x4300
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

60094558 <__cpu_suspend_save_veneer>:
60094558:	e51ff004 	ldr	pc, [pc, #-4]	; 6009455c <__cpu_suspend_save_veneer+0x4>
6009455c:	0e013c94 	.word	0x0e013c94

60094560 <__FreeRTOS_SWI_Handler_veneer>:
60094560:	e51ff004 	ldr	pc, [pc, #-4]	; 60094564 <__FreeRTOS_SWI_Handler_veneer+0x4>
60094564:	0e000040 	.word	0x0e000040

60094568 <__PrefetchAbortHandler_veneer>:
60094568:	e51ff004 	ldr	pc, [pc, #-4]	; 6009456c <__PrefetchAbortHandler_veneer+0x4>
6009456c:	0e00a638 	.word	0x0e00a638

60094570 <___exit_veneer>:
60094570:	e51ff004 	ldr	pc, [pc, #-4]	; 60094574 <___exit_veneer+0x4>
60094574:	0e007328 	.word	0x0e007328

60094578 <__UndefinedExceptionHandler_veneer>:
60094578:	e51ff004 	ldr	pc, [pc, #-4]	; 6009457c <__UndefinedExceptionHandler_veneer+0x4>
6009457c:	0e00a5c0 	.word	0x0e00a5c0

60094580 <__FIQHandler_veneer>:
60094580:	e51ff004 	ldr	pc, [pc, #-4]	; 60094584 <__FIQHandler_veneer+0x4>
60094584:	0e00a3b4 	.word	0x0e00a3b4

60094588 <__setupMMUTable_veneer>:
60094588:	e51ff004 	ldr	pc, [pc, #-4]	; 6009458c <__setupMMUTable_veneer+0x4>
6009458c:	0e00c438 	.word	0x0e00c438

60094590 <__FreeRTOS_IRQ_Handler_veneer>:
60094590:	e51ff004 	ldr	pc, [pc, #-4]	; 60094594 <__FreeRTOS_IRQ_Handler_veneer+0x4>
60094594:	0e000120 	.word	0x0e000120

60094598 <__app_start_veneer>:
60094598:	e51ff004 	ldr	pc, [pc, #-4]	; 6009459c <__app_start_veneer+0x4>
6009459c:	0e00a368 	.word	0x0e00a368

600945a0 <__DataAbortHandler_veneer>:
600945a0:	e51ff004 	ldr	pc, [pc, #-4]	; 600945a4 <__DataAbortHandler_veneer+0x4>
600945a4:	0e00a5f4 	.word	0x0e00a5f4

600945a8 <__vPortSecondaryStart_veneer>:
600945a8:	e51ff004 	ldr	pc, [pc, #-4]	; 600945ac <__vPortSecondaryStart_veneer+0x4>
600945ac:	0e00a9e4 	.word	0x0e00a9e4
	...
