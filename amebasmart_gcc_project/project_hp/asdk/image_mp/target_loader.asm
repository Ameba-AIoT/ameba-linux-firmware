
/home/auto_jenkins_wlan5/IOT_ATS/repos/Release_SDK_Linux/Release_Sdk/sources/firmware/amebasmart_gcc_project/project_hp/asdk/image_mp/target_loader.axf:     file format elf32-littlearm


Disassembly of section .ram_image1.text:

30003050 <BOOT_SectionInit>:
30003050:	4800      	ldr	r0, [pc, #0]	; (30003054 <BOOT_SectionInit+0x4>)
30003052:	4770      	bx	lr
30003054:	60000020 	.word	0x60000020

30003058 <BOOT_NsStart>:
30003058:	b570      	push	{r4, r5, r6, lr}
3000305a:	4c23      	ldr	r4, [pc, #140]	; (300030e8 <BOOT_NsStart+0x90>)
3000305c:	4605      	mov	r5, r0
3000305e:	f384 8808 	msr	MSP, r4
30003062:	f44f 5280 	mov.w	r2, #4096	; 0x1000
30003066:	2100      	movs	r1, #0
30003068:	4620      	mov	r0, r4
3000306a:	4e20      	ldr	r6, [pc, #128]	; (300030ec <BOOT_NsStart+0x94>)
3000306c:	47b0      	blx	r6
3000306e:	4a20      	ldr	r2, [pc, #128]	; (300030f0 <BOOT_NsStart+0x98>)
30003070:	6953      	ldr	r3, [r2, #20]
30003072:	03d9      	lsls	r1, r3, #15
30003074:	d50b      	bpl.n	3000308e <BOOT_NsStart+0x36>
30003076:	f3bf 8f4f 	dsb	sy
3000307a:	f8c2 4270 	str.w	r4, [r2, #624]	; 0x270
3000307e:	3420      	adds	r4, #32
30003080:	f1b4 2f30 	cmp.w	r4, #805318656	; 0x30003000
30003084:	d1f9      	bne.n	3000307a <BOOT_NsStart+0x22>
30003086:	f3bf 8f4f 	dsb	sy
3000308a:	f3bf 8f6f 	isb	sy
3000308e:	f04f 2330 	mov.w	r3, #805318656	; 0x30003000
30003092:	f383 8808 	msr	MSP, r3
30003096:	f44f 5280 	mov.w	r2, #4096	; 0x1000
3000309a:	2100      	movs	r1, #0
3000309c:	4815      	ldr	r0, [pc, #84]	; (300030f4 <BOOT_NsStart+0x9c>)
3000309e:	47b0      	blx	r6
300030a0:	4a13      	ldr	r2, [pc, #76]	; (300030f0 <BOOT_NsStart+0x98>)
300030a2:	6953      	ldr	r3, [r2, #20]
300030a4:	03db      	lsls	r3, r3, #15
300030a6:	d50c      	bpl.n	300030c2 <BOOT_NsStart+0x6a>
300030a8:	f3bf 8f4f 	dsb	sy
300030ac:	4b11      	ldr	r3, [pc, #68]	; (300030f4 <BOOT_NsStart+0x9c>)
300030ae:	490e      	ldr	r1, [pc, #56]	; (300030e8 <BOOT_NsStart+0x90>)
300030b0:	f8c2 3270 	str.w	r3, [r2, #624]	; 0x270
300030b4:	3320      	adds	r3, #32
300030b6:	428b      	cmp	r3, r1
300030b8:	d1fa      	bne.n	300030b0 <BOOT_NsStart+0x58>
300030ba:	f3bf 8f4f 	dsb	sy
300030be:	f3bf 8f6f 	isb	sy
300030c2:	f025 0501 	bic.w	r5, r5, #1
300030c6:	086d      	lsrs	r5, r5, #1
300030c8:	006d      	lsls	r5, r5, #1
300030ca:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
300030ce:	ed2d 8b10 	vpush	{d8-d15}
300030d2:	ec9f 0a20 	vscclrm	{s0-s31, VPR}
300030d6:	e89f 9fdf 	clrm	{r0, r1, r2, r3, r4, r6, r7, r8, r9, sl, fp, ip, APSR}
300030da:	47ac      	blxns	r5
300030dc:	ecbd 8b10 	vpop	{d8-d15}
300030e0:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
300030e4:	bd70      	pop	{r4, r5, r6, pc}
300030e6:	bf00      	nop
300030e8:	30002000 	.word	0x30002000
300030ec:	00012be5 	.word	0x00012be5
300030f0:	e000ed00 	.word	0xe000ed00
300030f4:	30001000 	.word	0x30001000

300030f8 <BOOT_RccConfig>:
300030f8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
300030fc:	4c2f      	ldr	r4, [pc, #188]	; (300031bc <BOOT_RccConfig+0xc4>)
300030fe:	b090      	sub	sp, #64	; 0x40
30003100:	4f2f      	ldr	r7, [pc, #188]	; (300031c0 <BOOT_RccConfig+0xc8>)
30003102:	466d      	mov	r5, sp
30003104:	f10d 0c20 	add.w	ip, sp, #32
30003108:	683e      	ldr	r6, [r7, #0]
3000310a:	f10d 0e30 	add.w	lr, sp, #48	; 0x30
3000310e:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
30003112:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
30003116:	f104 0310 	add.w	r3, r4, #16
3000311a:	2400      	movs	r4, #0
3000311c:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
3000311e:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
30003122:	1c72      	adds	r2, r6, #1
30003124:	e9cd 4404 	strd	r4, r4, [sp, #16]
30003128:	e9cd 4406 	strd	r4, r4, [sp, #24]
3000312c:	e9cd 440c 	strd	r4, r4, [sp, #48]	; 0x30
30003130:	e9cd 440e 	strd	r4, r4, [sp, #56]	; 0x38
30003134:	d03f      	beq.n	300031b6 <BOOT_RccConfig+0xbe>
30003136:	463a      	mov	r2, r7
30003138:	6891      	ldr	r1, [r2, #8]
3000313a:	0fb3      	lsrs	r3, r6, #30
3000313c:	a810      	add	r0, sp, #64	; 0x40
3000313e:	2901      	cmp	r1, #1
30003140:	eb00 0383 	add.w	r3, r0, r3, lsl #2
30003144:	d10e      	bne.n	30003164 <BOOT_RccConfig+0x6c>
30003146:	f853 0c30 	ldr.w	r0, [r3, #-48]
3000314a:	6854      	ldr	r4, [r2, #4]
3000314c:	4330      	orrs	r0, r6
3000314e:	ae10      	add	r6, sp, #64	; 0x40
30003150:	0fa1      	lsrs	r1, r4, #30
30003152:	f843 0c30 	str.w	r0, [r3, #-48]
30003156:	eb06 0181 	add.w	r1, r6, r1, lsl #2
3000315a:	f851 3c10 	ldr.w	r3, [r1, #-16]
3000315e:	4323      	orrs	r3, r4
30003160:	f841 3c10 	str.w	r3, [r1, #-16]
30003164:	f852 6f0c 	ldr.w	r6, [r2, #12]!
30003168:	1c73      	adds	r3, r6, #1
3000316a:	d1e5      	bne.n	30003138 <BOOT_RccConfig+0x40>
3000316c:	9b0c      	ldr	r3, [sp, #48]	; 0x30
3000316e:	9c04      	ldr	r4, [sp, #16]
30003170:	af0d      	add	r7, sp, #52	; 0x34
30003172:	ae05      	add	r6, sp, #20
30003174:	4a13      	ldr	r2, [pc, #76]	; (300031c4 <BOOT_RccConfig+0xcc>)
30003176:	f85c 0b04 	ldr.w	r0, [ip], #4
3000317a:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
3000317e:	f855 1b04 	ldr.w	r1, [r5], #4
30003182:	f024 4440 	bic.w	r4, r4, #3221225472	; 0xc0000000
30003186:	f850 8002 	ldr.w	r8, [r0, r2]
3000318a:	45e6      	cmp	lr, ip
3000318c:	ea43 0308 	orr.w	r3, r3, r8
30003190:	5083      	str	r3, [r0, r2]
30003192:	588b      	ldr	r3, [r1, r2]
30003194:	ea44 0403 	orr.w	r4, r4, r3
30003198:	508c      	str	r4, [r1, r2]
3000319a:	d004      	beq.n	300031a6 <BOOT_RccConfig+0xae>
3000319c:	f857 3b04 	ldr.w	r3, [r7], #4
300031a0:	f856 4b04 	ldr.w	r4, [r6], #4
300031a4:	e7e7      	b.n	30003176 <BOOT_RccConfig+0x7e>
300031a6:	200a      	movs	r0, #10
300031a8:	4b07      	ldr	r3, [pc, #28]	; (300031c8 <BOOT_RccConfig+0xd0>)
300031aa:	4798      	blx	r3
300031ac:	4b07      	ldr	r3, [pc, #28]	; (300031cc <BOOT_RccConfig+0xd4>)
300031ae:	b010      	add	sp, #64	; 0x40
300031b0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
300031b4:	4718      	bx	r3
300031b6:	4623      	mov	r3, r4
300031b8:	e7da      	b.n	30003170 <BOOT_RccConfig+0x78>
300031ba:	bf00      	nop
300031bc:	3000bbb0 	.word	0x3000bbb0
300031c0:	3000e0e4 	.word	0x3000e0e4
300031c4:	42008000 	.word	0x42008000
300031c8:	00009b2d 	.word	0x00009b2d
300031cc:	300087c5 	.word	0x300087c5

300031d0 <BOOT_CACHEWRR_Set>:
300031d0:	4b14      	ldr	r3, [pc, #80]	; (30003224 <BOOT_CACHEWRR_Set+0x54>)
300031d2:	b430      	push	{r4, r5}
300031d4:	681a      	ldr	r2, [r3, #0]
300031d6:	2a01      	cmp	r2, #1
300031d8:	d10f      	bne.n	300031fa <BOOT_CACHEWRR_Set+0x2a>
300031da:	f04f 20e0 	mov.w	r0, #3758153728	; 0xe000e000
300031de:	685d      	ldr	r5, [r3, #4]
300031e0:	689c      	ldr	r4, [r3, #8]
300031e2:	6882      	ldr	r2, [r0, #8]
300031e4:	4910      	ldr	r1, [pc, #64]	; (30003228 <BOOT_CACHEWRR_Set+0x58>)
300031e6:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
300031ea:	ea42 3205 	orr.w	r2, r2, r5, lsl #12
300031ee:	6082      	str	r2, [r0, #8]
300031f0:	f8c1 40a0 	str.w	r4, [r1, #160]	; 0xa0
300031f4:	68da      	ldr	r2, [r3, #12]
300031f6:	f8c1 20a4 	str.w	r2, [r1, #164]	; 0xa4
300031fa:	691a      	ldr	r2, [r3, #16]
300031fc:	2a01      	cmp	r2, #1
300031fe:	d10f      	bne.n	30003220 <BOOT_CACHEWRR_Set+0x50>
30003200:	f04f 21e0 	mov.w	r1, #3758153728	; 0xe000e000
30003204:	695d      	ldr	r5, [r3, #20]
30003206:	4a08      	ldr	r2, [pc, #32]	; (30003228 <BOOT_CACHEWRR_Set+0x58>)
30003208:	e9d3 4006 	ldrd	r4, r0, [r3, #24]
3000320c:	688b      	ldr	r3, [r1, #8]
3000320e:	f423 1340 	bic.w	r3, r3, #3145728	; 0x300000
30003212:	ea43 5305 	orr.w	r3, r3, r5, lsl #20
30003216:	608b      	str	r3, [r1, #8]
30003218:	f8c2 40a8 	str.w	r4, [r2, #168]	; 0xa8
3000321c:	f8c2 00ac 	str.w	r0, [r2, #172]	; 0xac
30003220:	bc30      	pop	{r4, r5}
30003222:	4770      	bx	lr
30003224:	3000e0c0 	.word	0x3000e0c0
30003228:	e0042000 	.word	0xe0042000

3000322c <BOOT_TCMSet>:
3000322c:	2300      	movs	r3, #0
3000322e:	b5f0      	push	{r4, r5, r6, r7, lr}
30003230:	4db3      	ldr	r5, [pc, #716]	; (30003500 <BOOT_TCMSet+0x2d4>)
30003232:	461c      	mov	r4, r3
30003234:	f855 2023 	ldr.w	r2, [r5, r3, lsl #2]
30003238:	3307      	adds	r3, #7
3000323a:	4282      	cmp	r2, r0
3000323c:	d03c      	beq.n	300032b8 <BOOT_TCMSet+0x8c>
3000323e:	3401      	adds	r4, #1
30003240:	2c07      	cmp	r4, #7
30003242:	d1f7      	bne.n	30003234 <BOOT_TCMSet+0x8>
30003244:	f3bf 8f4f 	dsb	sy
30003248:	f3bf 8f6f 	isb	sy
3000324c:	48ad      	ldr	r0, [pc, #692]	; (30003504 <BOOT_TCMSet+0x2d8>)
3000324e:	2200      	movs	r2, #0
30003250:	f8c0 2250 	str.w	r2, [r0, #592]	; 0x250
30003254:	f3bf 8f4f 	dsb	sy
30003258:	f3bf 8f6f 	isb	sy
3000325c:	6943      	ldr	r3, [r0, #20]
3000325e:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
30003262:	6143      	str	r3, [r0, #20]
30003264:	f3bf 8f4f 	dsb	sy
30003268:	f3bf 8f6f 	isb	sy
3000326c:	f8c0 2084 	str.w	r2, [r0, #132]	; 0x84
30003270:	f3bf 8f4f 	dsb	sy
30003274:	f8d0 5080 	ldr.w	r5, [r0, #128]	; 0x80
30003278:	f643 76e0 	movw	r6, #16352	; 0x3fe0
3000327c:	f3c5 344e 	ubfx	r4, r5, #13, #15
30003280:	f3c5 05c9 	ubfx	r5, r5, #3, #10
30003284:	0164      	lsls	r4, r4, #5
30003286:	ea04 0106 	and.w	r1, r4, r6
3000328a:	462b      	mov	r3, r5
3000328c:	ea41 7283 	orr.w	r2, r1, r3, lsl #30
30003290:	3b01      	subs	r3, #1
30003292:	1c5f      	adds	r7, r3, #1
30003294:	f8c0 2260 	str.w	r2, [r0, #608]	; 0x260
30003298:	d1f8      	bne.n	3000328c <BOOT_TCMSet+0x60>
3000329a:	3c20      	subs	r4, #32
3000329c:	f114 0f20 	cmn.w	r4, #32
300032a0:	d1f1      	bne.n	30003286 <BOOT_TCMSet+0x5a>
300032a2:	f3bf 8f4f 	dsb	sy
300032a6:	6943      	ldr	r3, [r0, #20]
300032a8:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
300032ac:	6143      	str	r3, [r0, #20]
300032ae:	f3bf 8f4f 	dsb	sy
300032b2:	f3bf 8f6f 	isb	sy
300032b6:	bdf0      	pop	{r4, r5, r6, r7, pc}
300032b8:	2c00      	cmp	r4, #0
300032ba:	d0c3      	beq.n	30003244 <BOOT_TCMSet+0x18>
300032bc:	f3bf 8f4f 	dsb	sy
300032c0:	f3bf 8f6f 	isb	sy
300032c4:	4890      	ldr	r0, [pc, #576]	; (30003508 <BOOT_TCMSet+0x2dc>)
300032c6:	2300      	movs	r3, #0
300032c8:	f8c0 3250 	str.w	r3, [r0, #592]	; 0x250
300032cc:	f3bf 8f4f 	dsb	sy
300032d0:	f3bf 8f6f 	isb	sy
300032d4:	6942      	ldr	r2, [r0, #20]
300032d6:	03d2      	lsls	r2, r2, #15
300032d8:	d520      	bpl.n	3000331c <BOOT_TCMSet+0xf0>
300032da:	f8c0 3084 	str.w	r3, [r0, #132]	; 0x84
300032de:	f3bf 8f4f 	dsb	sy
300032e2:	f8d0 3080 	ldr.w	r3, [r0, #128]	; 0x80
300032e6:	f643 76e0 	movw	r6, #16352	; 0x3fe0
300032ea:	f3c3 0ec9 	ubfx	lr, r3, #3, #10
300032ee:	f3c3 334e 	ubfx	r3, r3, #13, #15
300032f2:	ea4f 1c43 	mov.w	ip, r3, lsl #5
300032f6:	ea0c 0106 	and.w	r1, ip, r6
300032fa:	4673      	mov	r3, lr
300032fc:	ea41 7283 	orr.w	r2, r1, r3, lsl #30
30003300:	3b01      	subs	r3, #1
30003302:	1c5f      	adds	r7, r3, #1
30003304:	f8c0 2274 	str.w	r2, [r0, #628]	; 0x274
30003308:	d1f8      	bne.n	300032fc <BOOT_TCMSet+0xd0>
3000330a:	f1ac 0c20 	sub.w	ip, ip, #32
3000330e:	f11c 0f20 	cmn.w	ip, #32
30003312:	d1f0      	bne.n	300032f6 <BOOT_TCMSet+0xca>
30003314:	f3bf 8f4f 	dsb	sy
30003318:	f3bf 8f6f 	isb	sy
3000331c:	f3bf 8f4f 	dsb	sy
30003320:	f3bf 8f6f 	isb	sy
30003324:	4878      	ldr	r0, [pc, #480]	; (30003508 <BOOT_TCMSet+0x2dc>)
30003326:	2200      	movs	r2, #0
30003328:	6943      	ldr	r3, [r0, #20]
3000332a:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
3000332e:	6143      	str	r3, [r0, #20]
30003330:	f8c0 2250 	str.w	r2, [r0, #592]	; 0x250
30003334:	f3bf 8f4f 	dsb	sy
30003338:	f3bf 8f6f 	isb	sy
3000333c:	f8c0 2084 	str.w	r2, [r0, #132]	; 0x84
30003340:	f3bf 8f4f 	dsb	sy
30003344:	6943      	ldr	r3, [r0, #20]
30003346:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
3000334a:	6143      	str	r3, [r0, #20]
3000334c:	f3bf 8f4f 	dsb	sy
30003350:	f8d0 3080 	ldr.w	r3, [r0, #128]	; 0x80
30003354:	f643 7ee0 	movw	lr, #16352	; 0x3fe0
30003358:	f3c3 06c9 	ubfx	r6, r3, #3, #10
3000335c:	f3c3 334e 	ubfx	r3, r3, #13, #15
30003360:	ea4f 1c43 	mov.w	ip, r3, lsl #5
30003364:	ea0c 010e 	and.w	r1, ip, lr
30003368:	4633      	mov	r3, r6
3000336a:	ea41 7283 	orr.w	r2, r1, r3, lsl #30
3000336e:	3b01      	subs	r3, #1
30003370:	f8c0 2274 	str.w	r2, [r0, #628]	; 0x274
30003374:	1c5a      	adds	r2, r3, #1
30003376:	d1f8      	bne.n	3000336a <BOOT_TCMSet+0x13e>
30003378:	f1ac 0c20 	sub.w	ip, ip, #32
3000337c:	f11c 0f20 	cmn.w	ip, #32
30003380:	d1f0      	bne.n	30003364 <BOOT_TCMSet+0x138>
30003382:	f3bf 8f4f 	dsb	sy
30003386:	f3bf 8f6f 	isb	sy
3000338a:	f04f 4082 	mov.w	r0, #1090519040	; 0x41000000
3000338e:	ebc4 02c4 	rsb	r2, r4, r4, lsl #3
30003392:	00e3      	lsls	r3, r4, #3
30003394:	6b41      	ldr	r1, [r0, #52]	; 0x34
30003396:	eb05 0282 	add.w	r2, r5, r2, lsl #2
3000339a:	f441 5180 	orr.w	r1, r1, #4096	; 0x1000
3000339e:	6341      	str	r1, [r0, #52]	; 0x34
300033a0:	6911      	ldr	r1, [r2, #16]
300033a2:	2903      	cmp	r1, #3
300033a4:	d00f      	beq.n	300033c6 <BOOT_TCMSet+0x19a>
300033a6:	f04f 26e0 	mov.w	r6, #3758153728	; 0xe000e000
300033aa:	4858      	ldr	r0, [pc, #352]	; (3000350c <BOOT_TCMSet+0x2e0>)
300033ac:	f04f 0c00 	mov.w	ip, #0
300033b0:	4f57      	ldr	r7, [pc, #348]	; (30003510 <BOOT_TCMSet+0x2e4>)
300033b2:	68b2      	ldr	r2, [r6, #8]
300033b4:	f422 1240 	bic.w	r2, r2, #3145728	; 0x300000
300033b8:	ea42 5201 	orr.w	r2, r2, r1, lsl #20
300033bc:	60b2      	str	r2, [r6, #8]
300033be:	f8c0 c0a8 	str.w	ip, [r0, #168]	; 0xa8
300033c2:	f8c0 70ac 	str.w	r7, [r0, #172]	; 0xac
300033c6:	1b1a      	subs	r2, r3, r4
300033c8:	eb05 0282 	add.w	r2, r5, r2, lsl #2
300033cc:	68d1      	ldr	r1, [r2, #12]
300033ce:	2903      	cmp	r1, #3
300033d0:	d00f      	beq.n	300033f2 <BOOT_TCMSet+0x1c6>
300033d2:	f04f 26e0 	mov.w	r6, #3758153728	; 0xe000e000
300033d6:	484d      	ldr	r0, [pc, #308]	; (3000350c <BOOT_TCMSet+0x2e0>)
300033d8:	f04f 0c00 	mov.w	ip, #0
300033dc:	4f4c      	ldr	r7, [pc, #304]	; (30003510 <BOOT_TCMSet+0x2e4>)
300033de:	68b2      	ldr	r2, [r6, #8]
300033e0:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
300033e4:	ea42 3201 	orr.w	r2, r2, r1, lsl #12
300033e8:	60b2      	str	r2, [r6, #8]
300033ea:	f8c0 c0a0 	str.w	ip, [r0, #160]	; 0xa0
300033ee:	f8c0 70a4 	str.w	r7, [r0, #164]	; 0xa4
300033f2:	1b1a      	subs	r2, r3, r4
300033f4:	4945      	ldr	r1, [pc, #276]	; (3000350c <BOOT_TCMSet+0x2e0>)
300033f6:	eb05 0282 	add.w	r2, r5, r2, lsl #2
300033fa:	6950      	ldr	r0, [r2, #20]
300033fc:	6608      	str	r0, [r1, #96]	; 0x60
300033fe:	6990      	ldr	r0, [r2, #24]
30003400:	6648      	str	r0, [r1, #100]	; 0x64
30003402:	6852      	ldr	r2, [r2, #4]
30003404:	2a01      	cmp	r2, #1
30003406:	d04b      	beq.n	300034a0 <BOOT_TCMSet+0x274>
30003408:	1b1b      	subs	r3, r3, r4
3000340a:	eb05 0583 	add.w	r5, r5, r3, lsl #2
3000340e:	68ab      	ldr	r3, [r5, #8]
30003410:	2b01      	cmp	r3, #1
30003412:	f47f af50 	bne.w	300032b6 <BOOT_TCMSet+0x8a>
30003416:	483b      	ldr	r0, [pc, #236]	; (30003504 <BOOT_TCMSet+0x2d8>)
30003418:	2300      	movs	r3, #0
3000341a:	f8c0 3084 	str.w	r3, [r0, #132]	; 0x84
3000341e:	f3bf 8f4f 	dsb	sy
30003422:	f8d0 5080 	ldr.w	r5, [r0, #128]	; 0x80
30003426:	f643 76e0 	movw	r6, #16352	; 0x3fe0
3000342a:	f3c5 344e 	ubfx	r4, r5, #13, #15
3000342e:	f3c5 05c9 	ubfx	r5, r5, #3, #10
30003432:	0164      	lsls	r4, r4, #5
30003434:	ea04 0106 	and.w	r1, r4, r6
30003438:	462b      	mov	r3, r5
3000343a:	ea41 7283 	orr.w	r2, r1, r3, lsl #30
3000343e:	3b01      	subs	r3, #1
30003440:	1c5f      	adds	r7, r3, #1
30003442:	f8c0 2260 	str.w	r2, [r0, #608]	; 0x260
30003446:	d1f8      	bne.n	3000343a <BOOT_TCMSet+0x20e>
30003448:	3c20      	subs	r4, #32
3000344a:	f114 0f20 	cmn.w	r4, #32
3000344e:	d1f1      	bne.n	30003434 <BOOT_TCMSet+0x208>
30003450:	f3bf 8f4f 	dsb	sy
30003454:	6943      	ldr	r3, [r0, #20]
30003456:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
3000345a:	6143      	str	r3, [r0, #20]
3000345c:	f3bf 8f4f 	dsb	sy
30003460:	f3bf 8f6f 	isb	sy
30003464:	4828      	ldr	r0, [pc, #160]	; (30003508 <BOOT_TCMSet+0x2dc>)
30003466:	2300      	movs	r3, #0
30003468:	f8c0 3084 	str.w	r3, [r0, #132]	; 0x84
3000346c:	f3bf 8f4f 	dsb	sy
30003470:	f8d0 5080 	ldr.w	r5, [r0, #128]	; 0x80
30003474:	f643 76e0 	movw	r6, #16352	; 0x3fe0
30003478:	f3c5 344e 	ubfx	r4, r5, #13, #15
3000347c:	f3c5 05c9 	ubfx	r5, r5, #3, #10
30003480:	0164      	lsls	r4, r4, #5
30003482:	ea04 0106 	and.w	r1, r4, r6
30003486:	462b      	mov	r3, r5
30003488:	ea41 7283 	orr.w	r2, r1, r3, lsl #30
3000348c:	3b01      	subs	r3, #1
3000348e:	f8c0 2260 	str.w	r2, [r0, #608]	; 0x260
30003492:	1c5a      	adds	r2, r3, #1
30003494:	d1f8      	bne.n	30003488 <BOOT_TCMSet+0x25c>
30003496:	3c20      	subs	r4, #32
30003498:	f114 0f20 	cmn.w	r4, #32
3000349c:	d1f1      	bne.n	30003482 <BOOT_TCMSet+0x256>
3000349e:	e700      	b.n	300032a2 <BOOT_TCMSet+0x76>
300034a0:	f3bf 8f4f 	dsb	sy
300034a4:	f3bf 8f6f 	isb	sy
300034a8:	4a16      	ldr	r2, [pc, #88]	; (30003504 <BOOT_TCMSet+0x2d8>)
300034aa:	2000      	movs	r0, #0
300034ac:	f8c2 0250 	str.w	r0, [r2, #592]	; 0x250
300034b0:	f3bf 8f4f 	dsb	sy
300034b4:	f3bf 8f6f 	isb	sy
300034b8:	6951      	ldr	r1, [r2, #20]
300034ba:	f441 3100 	orr.w	r1, r1, #131072	; 0x20000
300034be:	6151      	str	r1, [r2, #20]
300034c0:	f3bf 8f4f 	dsb	sy
300034c4:	f3bf 8f6f 	isb	sy
300034c8:	f3bf 8f4f 	dsb	sy
300034cc:	f3bf 8f6f 	isb	sy
300034d0:	f5a2 3200 	sub.w	r2, r2, #131072	; 0x20000
300034d4:	f8c2 0250 	str.w	r0, [r2, #592]	; 0x250
300034d8:	f3bf 8f4f 	dsb	sy
300034dc:	f3bf 8f6f 	isb	sy
300034e0:	6951      	ldr	r1, [r2, #20]
300034e2:	f441 3100 	orr.w	r1, r1, #131072	; 0x20000
300034e6:	6151      	str	r1, [r2, #20]
300034e8:	f3bf 8f4f 	dsb	sy
300034ec:	f3bf 8f6f 	isb	sy
300034f0:	1b1b      	subs	r3, r3, r4
300034f2:	eb05 0583 	add.w	r5, r5, r3, lsl #2
300034f6:	68ab      	ldr	r3, [r5, #8]
300034f8:	2b01      	cmp	r3, #1
300034fa:	f47f aedc 	bne.w	300032b6 <BOOT_TCMSet+0x8a>
300034fe:	e78a      	b.n	30003416 <BOOT_TCMSet+0x1ea>
30003500:	3000dffc 	.word	0x3000dffc
30003504:	e002ed00 	.word	0xe002ed00
30003508:	e000ed00 	.word	0xe000ed00
3000350c:	e0042000 	.word	0xe0042000
30003510:	ffff0000 	.word	0xffff0000

30003514 <BOOT_GRstConfig>:
30003514:	b538      	push	{r3, r4, r5, lr}
30003516:	4d0a      	ldr	r5, [pc, #40]	; (30003540 <BOOT_GRstConfig+0x2c>)
30003518:	f241 040a 	movw	r4, #4106	; 0x100a
3000351c:	2028      	movs	r0, #40	; 0x28
3000351e:	4a09      	ldr	r2, [pc, #36]	; (30003544 <BOOT_GRstConfig+0x30>)
30003520:	882b      	ldrh	r3, [r5, #0]
30003522:	b29b      	uxth	r3, r3
30003524:	431c      	orrs	r4, r3
30003526:	802c      	strh	r4, [r5, #0]
30003528:	4790      	blx	r2
3000352a:	88ab      	ldrh	r3, [r5, #4]
3000352c:	b29b      	uxth	r3, r3
3000352e:	ea23 0304 	bic.w	r3, r3, r4
30003532:	80ab      	strh	r3, [r5, #4]
30003534:	886b      	ldrh	r3, [r5, #2]
30003536:	b29b      	uxth	r3, r3
30003538:	431c      	orrs	r4, r3
3000353a:	806c      	strh	r4, [r5, #2]
3000353c:	bd38      	pop	{r3, r4, r5, pc}
3000353e:	bf00      	nop
30003540:	42008200 	.word	0x42008200
30003544:	00009b2d 	.word	0x00009b2d

30003548 <BOOT_DDR_LCDC_HPR>:
30003548:	4a04      	ldr	r2, [pc, #16]	; (3000355c <BOOT_DDR_LCDC_HPR+0x14>)
3000354a:	f8d2 3290 	ldr.w	r3, [r2, #656]	; 0x290
3000354e:	f423 6340 	bic.w	r3, r3, #3072	; 0xc00
30003552:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
30003556:	f8c2 3290 	str.w	r3, [r2, #656]	; 0x290
3000355a:	4770      	bx	lr
3000355c:	42008000 	.word	0x42008000

30003560 <BOOT_DDR_Init>:
30003560:	f04f 4382 	mov.w	r3, #1090519040	; 0x41000000
30003564:	b530      	push	{r4, r5, lr}
30003566:	4d15      	ldr	r5, [pc, #84]	; (300035bc <BOOT_DDR_Init+0x5c>)
30003568:	b099      	sub	sp, #100	; 0x64
3000356a:	6b1c      	ldr	r4, [r3, #48]	; 0x30
3000356c:	47a8      	blx	r5
3000356e:	2803      	cmp	r0, #3
30003570:	d11e      	bne.n	300035b0 <BOOT_DDR_Init+0x50>
30003572:	f044 74c0 	orr.w	r4, r4, #25165824	; 0x1800000
30003576:	4a12      	ldr	r2, [pc, #72]	; (300035c0 <BOOT_DDR_Init+0x60>)
30003578:	f04f 4382 	mov.w	r3, #1090519040	; 0x41000000
3000357c:	4911      	ldr	r1, [pc, #68]	; (300035c4 <BOOT_DDR_Init+0x64>)
3000357e:	a801      	add	r0, sp, #4
30003580:	631c      	str	r4, [r3, #48]	; 0x30
30003582:	f8d2 3204 	ldr.w	r3, [r2, #516]	; 0x204
30003586:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
3000358a:	f8c2 3204 	str.w	r3, [r2, #516]	; 0x204
3000358e:	4788      	blx	r1
30003590:	a801      	add	r0, sp, #4
30003592:	4b0d      	ldr	r3, [pc, #52]	; (300035c8 <BOOT_DDR_Init+0x68>)
30003594:	4798      	blx	r3
30003596:	4b0d      	ldr	r3, [pc, #52]	; (300035cc <BOOT_DDR_Init+0x6c>)
30003598:	4798      	blx	r3
3000359a:	4b0d      	ldr	r3, [pc, #52]	; (300035d0 <BOOT_DDR_Init+0x70>)
3000359c:	4798      	blx	r3
3000359e:	4b0d      	ldr	r3, [pc, #52]	; (300035d4 <BOOT_DDR_Init+0x74>)
300035a0:	4798      	blx	r3
300035a2:	2101      	movs	r1, #1
300035a4:	f240 10ff 	movw	r0, #511	; 0x1ff
300035a8:	4b0b      	ldr	r3, [pc, #44]	; (300035d8 <BOOT_DDR_Init+0x78>)
300035aa:	4798      	blx	r3
300035ac:	b019      	add	sp, #100	; 0x64
300035ae:	bd30      	pop	{r4, r5, pc}
300035b0:	47a8      	blx	r5
300035b2:	2802      	cmp	r0, #2
300035b4:	d0dd      	beq.n	30003572 <BOOT_DDR_Init+0x12>
300035b6:	f044 7480 	orr.w	r4, r4, #16777216	; 0x1000000
300035ba:	e7dc      	b.n	30003576 <BOOT_DDR_Init+0x16>
300035bc:	0000c0f9 	.word	0x0000c0f9
300035c0:	42008000 	.word	0x42008000
300035c4:	3000663d 	.word	0x3000663d
300035c8:	30006bb5 	.word	0x30006bb5
300035cc:	300080e9 	.word	0x300080e9
300035d0:	30006c85 	.word	0x30006c85
300035d4:	30006c89 	.word	0x30006c89
300035d8:	30008055 	.word	0x30008055

300035dc <BOOT_PSRAM_Init>:
300035dc:	b510      	push	{r4, lr}
300035de:	b088      	sub	sp, #32
300035e0:	4b1e      	ldr	r3, [pc, #120]	; (3000365c <BOOT_PSRAM_Init+0x80>)
300035e2:	a801      	add	r0, sp, #4
300035e4:	4798      	blx	r3
300035e6:	a801      	add	r0, sp, #4
300035e8:	4b1d      	ldr	r3, [pc, #116]	; (30003660 <BOOT_PSRAM_Init+0x84>)
300035ea:	4798      	blx	r3
300035ec:	4b1d      	ldr	r3, [pc, #116]	; (30003664 <BOOT_PSRAM_Init+0x88>)
300035ee:	4798      	blx	r3
300035f0:	4b1d      	ldr	r3, [pc, #116]	; (30003668 <BOOT_PSRAM_Init+0x8c>)
300035f2:	4798      	blx	r3
300035f4:	2801      	cmp	r0, #1
300035f6:	d01c      	beq.n	30003632 <BOOT_PSRAM_Init+0x56>
300035f8:	4b1c      	ldr	r3, [pc, #112]	; (3000366c <BOOT_PSRAM_Init+0x90>)
300035fa:	2249      	movs	r2, #73	; 0x49
300035fc:	491c      	ldr	r1, [pc, #112]	; (30003670 <BOOT_PSRAM_Init+0x94>)
300035fe:	2004      	movs	r0, #4
30003600:	f005 fea4 	bl	3000934c <rtk_log_write>
30003604:	4b1b      	ldr	r3, [pc, #108]	; (30003674 <BOOT_PSRAM_Init+0x98>)
30003606:	4798      	blx	r3
30003608:	4b1b      	ldr	r3, [pc, #108]	; (30003678 <BOOT_PSRAM_Init+0x9c>)
3000360a:	f8d3 3268 	ldr.w	r3, [r3, #616]	; 0x268
3000360e:	009b      	lsls	r3, r3, #2
30003610:	d516      	bpl.n	30003640 <BOOT_PSRAM_Init+0x64>
30003612:	4a1a      	ldr	r2, [pc, #104]	; (3000367c <BOOT_PSRAM_Init+0xa0>)
30003614:	4b1a      	ldr	r3, [pc, #104]	; (30003680 <BOOT_PSRAM_Init+0xa4>)
30003616:	6812      	ldr	r2, [r2, #0]
30003618:	605a      	str	r2, [r3, #4]
3000361a:	4a1a      	ldr	r2, [pc, #104]	; (30003684 <BOOT_PSRAM_Init+0xa8>)
3000361c:	f04f 0c20 	mov.w	ip, #32
30003620:	2101      	movs	r1, #1
30003622:	4b19      	ldr	r3, [pc, #100]	; (30003688 <BOOT_PSRAM_Init+0xac>)
30003624:	6952      	ldr	r2, [r2, #20]
30003626:	4608      	mov	r0, r1
30003628:	fbbc f2f2 	udiv	r2, ip, r2
3000362c:	4798      	blx	r3
3000362e:	b008      	add	sp, #32
30003630:	bd10      	pop	{r4, pc}
30003632:	4b16      	ldr	r3, [pc, #88]	; (3000368c <BOOT_PSRAM_Init+0xb0>)
30003634:	4798      	blx	r3
30003636:	4b10      	ldr	r3, [pc, #64]	; (30003678 <BOOT_PSRAM_Init+0x9c>)
30003638:	f8d3 3268 	ldr.w	r3, [r3, #616]	; 0x268
3000363c:	009b      	lsls	r3, r3, #2
3000363e:	d4e8      	bmi.n	30003612 <BOOT_PSRAM_Init+0x36>
30003640:	4c13      	ldr	r4, [pc, #76]	; (30003690 <BOOT_PSRAM_Init+0xb4>)
30003642:	47a0      	blx	r4
30003644:	b930      	cbnz	r0, 30003654 <BOOT_PSRAM_Init+0x78>
30003646:	4b13      	ldr	r3, [pc, #76]	; (30003694 <BOOT_PSRAM_Init+0xb8>)
30003648:	4798      	blx	r3
3000364a:	4a0d      	ldr	r2, [pc, #52]	; (30003680 <BOOT_PSRAM_Init+0xa4>)
3000364c:	4b0b      	ldr	r3, [pc, #44]	; (3000367c <BOOT_PSRAM_Init+0xa0>)
3000364e:	6852      	ldr	r2, [r2, #4]
30003650:	601a      	str	r2, [r3, #0]
30003652:	e7e2      	b.n	3000361a <BOOT_PSRAM_Init+0x3e>
30003654:	47a0      	blx	r4
30003656:	2801      	cmp	r0, #1
30003658:	d1df      	bne.n	3000361a <BOOT_PSRAM_Init+0x3e>
3000365a:	e7f4      	b.n	30003646 <BOOT_PSRAM_Init+0x6a>
3000365c:	30008275 	.word	0x30008275
30003660:	30008295 	.word	0x30008295
30003664:	300082fd 	.word	0x300082fd
30003668:	3000a149 	.word	0x3000a149
3000366c:	3000b888 	.word	0x3000b888
30003670:	3000b894 	.word	0x3000b894
30003674:	300085a1 	.word	0x300085a1
30003678:	42008000 	.word	0x42008000
3000367c:	3000e2ec 	.word	0x3000e2ec
30003680:	41002000 	.word	0x41002000
30003684:	3000eaac 	.word	0x3000eaac
30003688:	30008779 	.word	0x30008779
3000368c:	300084c9 	.word	0x300084c9
30003690:	0000c0f9 	.word	0x0000c0f9
30003694:	300085dd 	.word	0x300085dd

30003698 <BOOT_WakeFromPG>:
30003698:	b538      	push	{r3, r4, r5, lr}
3000369a:	4c49      	ldr	r4, [pc, #292]	; (300037c0 <BOOT_WakeFromPG+0x128>)
3000369c:	f000 fed0 	bl	30004440 <BOOT_RAM_TZCfg>
300036a0:	69a3      	ldr	r3, [r4, #24]
300036a2:	b10b      	cbz	r3, 300036a8 <BOOT_WakeFromPG+0x10>
300036a4:	4a47      	ldr	r2, [pc, #284]	; (300037c4 <BOOT_WakeFromPG+0x12c>)
300036a6:	6093      	str	r3, [r2, #8]
300036a8:	4b47      	ldr	r3, [pc, #284]	; (300037c8 <BOOT_WakeFromPG+0x130>)
300036aa:	f06f 0c1a 	mvn.w	ip, #26
300036ae:	4847      	ldr	r0, [pc, #284]	; (300037cc <BOOT_WakeFromPG+0x134>)
300036b0:	f103 0e50 	add.w	lr, r3, #80	; 0x50
300036b4:	ebac 0c04 	sub.w	ip, ip, r4
300036b8:	eb0c 0203 	add.w	r2, ip, r3
300036bc:	f813 1f01 	ldrb.w	r1, [r3, #1]!
300036c0:	4402      	add	r2, r0
300036c2:	4573      	cmp	r3, lr
300036c4:	f882 1300 	strb.w	r1, [r2, #768]	; 0x300
300036c8:	d1f6      	bne.n	300036b8 <BOOT_WakeFromPG+0x20>
300036ca:	6822      	ldr	r2, [r4, #0]
300036cc:	4b3d      	ldr	r3, [pc, #244]	; (300037c4 <BOOT_WakeFromPG+0x12c>)
300036ce:	f422 7280 	bic.w	r2, r2, #256	; 0x100
300036d2:	e9d4 5101 	ldrd	r5, r1, [r4, #4]
300036d6:	6002      	str	r2, [r0, #0]
300036d8:	6045      	str	r5, [r0, #4]
300036da:	6081      	str	r1, [r0, #8]
300036dc:	6a59      	ldr	r1, [r3, #36]	; 0x24
300036de:	4a3c      	ldr	r2, [pc, #240]	; (300037d0 <BOOT_WakeFromPG+0x138>)
300036e0:	f441 2170 	orr.w	r1, r1, #983040	; 0xf0000
300036e4:	4d3b      	ldr	r5, [pc, #236]	; (300037d4 <BOOT_WakeFromPG+0x13c>)
300036e6:	6259      	str	r1, [r3, #36]	; 0x24
300036e8:	6a51      	ldr	r1, [r2, #36]	; 0x24
300036ea:	f441 21e0 	orr.w	r1, r1, #458752	; 0x70000
300036ee:	6251      	str	r1, [r2, #36]	; 0x24
300036f0:	f8d3 1088 	ldr.w	r1, [r3, #136]	; 0x88
300036f4:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
300036f8:	f8c3 1088 	str.w	r1, [r3, #136]	; 0x88
300036fc:	f8d2 1088 	ldr.w	r1, [r2, #136]	; 0x88
30003700:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
30003704:	f8c2 1088 	str.w	r1, [r2, #136]	; 0x88
30003708:	f8d3 208c 	ldr.w	r2, [r3, #140]	; 0x8c
3000370c:	f442 6240 	orr.w	r2, r2, #3072	; 0xc00
30003710:	f8c3 208c 	str.w	r2, [r3, #140]	; 0x8c
30003714:	f7ff fd5c 	bl	300031d0 <BOOT_CACHEWRR_Set>
30003718:	4b2f      	ldr	r3, [pc, #188]	; (300037d8 <BOOT_WakeFromPG+0x140>)
3000371a:	6818      	ldr	r0, [r3, #0]
3000371c:	f7ff fd86 	bl	3000322c <BOOT_TCMSet>
30003720:	2201      	movs	r2, #1
30003722:	492e      	ldr	r1, [pc, #184]	; (300037dc <BOOT_WakeFromPG+0x144>)
30003724:	f04f 2040 	mov.w	r0, #1073758208	; 0x40004000
30003728:	47a8      	blx	r5
3000372a:	4b2d      	ldr	r3, [pc, #180]	; (300037e0 <BOOT_WakeFromPG+0x148>)
3000372c:	4798      	blx	r3
3000372e:	4b2d      	ldr	r3, [pc, #180]	; (300037e4 <BOOT_WakeFromPG+0x14c>)
30003730:	4798      	blx	r3
30003732:	2801      	cmp	r0, #1
30003734:	4604      	mov	r4, r0
30003736:	d026      	beq.n	30003786 <BOOT_WakeFromPG+0xee>
30003738:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
3000373c:	2201      	movs	r2, #1
3000373e:	f04f 4188 	mov.w	r1, #1140850688	; 0x44000000
30003742:	47a8      	blx	r5
30003744:	4a28      	ldr	r2, [pc, #160]	; (300037e8 <BOOT_WakeFromPG+0x150>)
30003746:	f8d2 32fc 	ldr.w	r3, [r2, #764]	; 0x2fc
3000374a:	f043 0302 	orr.w	r3, r3, #2
3000374e:	f8c2 32fc 	str.w	r3, [r2, #764]	; 0x2fc
30003752:	f7ff ff43 	bl	300035dc <BOOT_PSRAM_Init>
30003756:	2096      	movs	r0, #150	; 0x96
30003758:	4b24      	ldr	r3, [pc, #144]	; (300037ec <BOOT_WakeFromPG+0x154>)
3000375a:	4798      	blx	r3
3000375c:	4b24      	ldr	r3, [pc, #144]	; (300037f0 <BOOT_WakeFromPG+0x158>)
3000375e:	2000      	movs	r0, #0
30003760:	4a1b      	ldr	r2, [pc, #108]	; (300037d0 <BOOT_WakeFromPG+0x138>)
30003762:	689c      	ldr	r4, [r3, #8]
30003764:	685b      	ldr	r3, [r3, #4]
30003766:	6063      	str	r3, [r4, #4]
30003768:	6094      	str	r4, [r2, #8]
3000376a:	f005 fd9d 	bl	300092a8 <Fault_Hanlder_Redirect>
3000376e:	4b21      	ldr	r3, [pc, #132]	; (300037f4 <BOOT_WakeFromPG+0x15c>)
30003770:	f383 8888 	msr	MSP_NS, r3
30003774:	f5a3 6300 	sub.w	r3, r3, #2048	; 0x800
30003778:	f383 8809 	msr	PSP, r3
3000377c:	6860      	ldr	r0, [r4, #4]
3000377e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
30003782:	f7ff bc69 	b.w	30003058 <BOOT_NsStart>
30003786:	4b1c      	ldr	r3, [pc, #112]	; (300037f8 <BOOT_WakeFromPG+0x160>)
30003788:	2004      	movs	r0, #4
3000378a:	491c      	ldr	r1, [pc, #112]	; (300037fc <BOOT_WakeFromPG+0x164>)
3000378c:	2249      	movs	r2, #73	; 0x49
3000378e:	f005 fddd 	bl	3000934c <rtk_log_write>
30003792:	4622      	mov	r2, r4
30003794:	491a      	ldr	r1, [pc, #104]	; (30003800 <BOOT_WakeFromPG+0x168>)
30003796:	f04f 4082 	mov.w	r0, #1090519040	; 0x41000000
3000379a:	47a8      	blx	r5
3000379c:	4622      	mov	r2, r4
3000379e:	4919      	ldr	r1, [pc, #100]	; (30003804 <BOOT_WakeFromPG+0x16c>)
300037a0:	f04f 4081 	mov.w	r0, #1082130432	; 0x40800000
300037a4:	47a8      	blx	r5
300037a6:	f7ff fedb 	bl	30003560 <BOOT_DDR_Init>
300037aa:	4a0f      	ldr	r2, [pc, #60]	; (300037e8 <BOOT_WakeFromPG+0x150>)
300037ac:	f8d2 3290 	ldr.w	r3, [r2, #656]	; 0x290
300037b0:	f423 6340 	bic.w	r3, r3, #3072	; 0xc00
300037b4:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
300037b8:	f8c2 3290 	str.w	r3, [r2, #656]	; 0x290
300037bc:	e7ce      	b.n	3000375c <BOOT_WakeFromPG+0xc4>
300037be:	bf00      	nop
300037c0:	3000e280 	.word	0x3000e280
300037c4:	e000ed00 	.word	0xe000ed00
300037c8:	3000e29b 	.word	0x3000e29b
300037cc:	e000e100 	.word	0xe000e100
300037d0:	e002ed00 	.word	0xe002ed00
300037d4:	0000b479 	.word	0x0000b479
300037d8:	3000eb10 	.word	0x3000eb10
300037dc:	40001000 	.word	0x40001000
300037e0:	0000d835 	.word	0x0000d835
300037e4:	30009fa9 	.word	0x30009fa9
300037e8:	42008000 	.word	0x42008000
300037ec:	00009b2d 	.word	0x00009b2d
300037f0:	60000020 	.word	0x60000020
300037f4:	2001c000 	.word	0x2001c000
300037f8:	3000b89c 	.word	0x3000b89c
300037fc:	3000b894 	.word	0x3000b894
30003800:	40080000 	.word	0x40080000
30003804:	40040000 	.word	0x40040000

30003808 <BOOT_SCBConfig_HP>:
30003808:	4b0e      	ldr	r3, [pc, #56]	; (30003844 <BOOT_SCBConfig_HP+0x3c>)
3000380a:	4a0f      	ldr	r2, [pc, #60]	; (30003848 <BOOT_SCBConfig_HP+0x40>)
3000380c:	6a59      	ldr	r1, [r3, #36]	; 0x24
3000380e:	f441 2170 	orr.w	r1, r1, #983040	; 0xf0000
30003812:	6259      	str	r1, [r3, #36]	; 0x24
30003814:	6a51      	ldr	r1, [r2, #36]	; 0x24
30003816:	f441 21e0 	orr.w	r1, r1, #458752	; 0x70000
3000381a:	6251      	str	r1, [r2, #36]	; 0x24
3000381c:	f8d3 1088 	ldr.w	r1, [r3, #136]	; 0x88
30003820:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
30003824:	f8c3 1088 	str.w	r1, [r3, #136]	; 0x88
30003828:	f8d2 1088 	ldr.w	r1, [r2, #136]	; 0x88
3000382c:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
30003830:	f8c2 1088 	str.w	r1, [r2, #136]	; 0x88
30003834:	f8d3 208c 	ldr.w	r2, [r3, #140]	; 0x8c
30003838:	f442 6240 	orr.w	r2, r2, #3072	; 0xc00
3000383c:	f8c3 208c 	str.w	r2, [r3, #140]	; 0x8c
30003840:	4770      	bx	lr
30003842:	bf00      	nop
30003844:	e000ed00 	.word	0xe000ed00
30003848:	e002ed00 	.word	0xe002ed00

3000384c <BOOT_SCBVTORBackup_HP>:
3000384c:	4a02      	ldr	r2, [pc, #8]	; (30003858 <BOOT_SCBVTORBackup_HP+0xc>)
3000384e:	4b03      	ldr	r3, [pc, #12]	; (3000385c <BOOT_SCBVTORBackup_HP+0x10>)
30003850:	6892      	ldr	r2, [r2, #8]
30003852:	619a      	str	r2, [r3, #24]
30003854:	4770      	bx	lr
30003856:	bf00      	nop
30003858:	e000ed00 	.word	0xe000ed00
3000385c:	3000e280 	.word	0x3000e280

30003860 <BOOT_SCBVTORReFill_HP>:
30003860:	4a02      	ldr	r2, [pc, #8]	; (3000386c <BOOT_SCBVTORReFill_HP+0xc>)
30003862:	4b03      	ldr	r3, [pc, #12]	; (30003870 <BOOT_SCBVTORReFill_HP+0x10>)
30003864:	6992      	ldr	r2, [r2, #24]
30003866:	609a      	str	r2, [r3, #8]
30003868:	4770      	bx	lr
3000386a:	bf00      	nop
3000386c:	3000e280 	.word	0x3000e280
30003870:	e000ed00 	.word	0xe000ed00

30003874 <BOOT_NVICBackup_HP>:
30003874:	491a      	ldr	r1, [pc, #104]	; (300038e0 <BOOT_NVICBackup_HP+0x6c>)
30003876:	f06f 001a 	mvn.w	r0, #26
3000387a:	b410      	push	{r4}
3000387c:	4c19      	ldr	r4, [pc, #100]	; (300038e4 <BOOT_NVICBackup_HP+0x70>)
3000387e:	680a      	ldr	r2, [r1, #0]
30003880:	f104 031b 	add.w	r3, r4, #27
30003884:	1b00      	subs	r0, r0, r4
30003886:	6022      	str	r2, [r4, #0]
30003888:	f104 0c6b 	add.w	ip, r4, #107	; 0x6b
3000388c:	684a      	ldr	r2, [r1, #4]
3000388e:	6062      	str	r2, [r4, #4]
30003890:	688a      	ldr	r2, [r1, #8]
30003892:	60a2      	str	r2, [r4, #8]
30003894:	18c2      	adds	r2, r0, r3
30003896:	440a      	add	r2, r1
30003898:	f892 2300 	ldrb.w	r2, [r2, #768]	; 0x300
3000389c:	f803 2f01 	strb.w	r2, [r3, #1]!
300038a0:	4563      	cmp	r3, ip
300038a2:	d1f7      	bne.n	30003894 <BOOT_NVICBackup_HP+0x20>
300038a4:	4b10      	ldr	r3, [pc, #64]	; (300038e8 <BOOT_NVICBackup_HP+0x74>)
300038a6:	695b      	ldr	r3, [r3, #20]
300038a8:	03db      	lsls	r3, r3, #15
300038aa:	d512      	bpl.n	300038d2 <BOOT_NVICBackup_HP+0x5e>
300038ac:	f014 011f 	ands.w	r1, r4, #31
300038b0:	4b0c      	ldr	r3, [pc, #48]	; (300038e4 <BOOT_NVICBackup_HP+0x70>)
300038b2:	d111      	bne.n	300038d8 <BOOT_NVICBackup_HP+0x64>
300038b4:	216c      	movs	r1, #108	; 0x6c
300038b6:	f3bf 8f4f 	dsb	sy
300038ba:	480b      	ldr	r0, [pc, #44]	; (300038e8 <BOOT_NVICBackup_HP+0x74>)
300038bc:	4419      	add	r1, r3
300038be:	f8c0 3270 	str.w	r3, [r0, #624]	; 0x270
300038c2:	3320      	adds	r3, #32
300038c4:	1aca      	subs	r2, r1, r3
300038c6:	2a00      	cmp	r2, #0
300038c8:	dcf9      	bgt.n	300038be <BOOT_NVICBackup_HP+0x4a>
300038ca:	f3bf 8f4f 	dsb	sy
300038ce:	f3bf 8f6f 	isb	sy
300038d2:	f85d 4b04 	ldr.w	r4, [sp], #4
300038d6:	4770      	bx	lr
300038d8:	f024 031f 	bic.w	r3, r4, #31
300038dc:	316c      	adds	r1, #108	; 0x6c
300038de:	e7ea      	b.n	300038b6 <BOOT_NVICBackup_HP+0x42>
300038e0:	e000e100 	.word	0xe000e100
300038e4:	3000e280 	.word	0x3000e280
300038e8:	e000ed00 	.word	0xe000ed00

300038ec <BOOT_NVICReFill_HP>:
300038ec:	b510      	push	{r4, lr}
300038ee:	f06f 0c1a 	mvn.w	ip, #26
300038f2:	4c0d      	ldr	r4, [pc, #52]	; (30003928 <BOOT_NVICReFill_HP+0x3c>)
300038f4:	480d      	ldr	r0, [pc, #52]	; (3000392c <BOOT_NVICReFill_HP+0x40>)
300038f6:	f104 031b 	add.w	r3, r4, #27
300038fa:	f104 0e6b 	add.w	lr, r4, #107	; 0x6b
300038fe:	ebac 0c04 	sub.w	ip, ip, r4
30003902:	eb0c 0203 	add.w	r2, ip, r3
30003906:	f813 1f01 	ldrb.w	r1, [r3, #1]!
3000390a:	4402      	add	r2, r0
3000390c:	4573      	cmp	r3, lr
3000390e:	f882 1300 	strb.w	r1, [r2, #768]	; 0x300
30003912:	d1f6      	bne.n	30003902 <BOOT_NVICReFill_HP+0x16>
30003914:	e9d4 3100 	ldrd	r3, r1, [r4]
30003918:	68a2      	ldr	r2, [r4, #8]
3000391a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
3000391e:	6003      	str	r3, [r0, #0]
30003920:	6041      	str	r1, [r0, #4]
30003922:	6082      	str	r2, [r0, #8]
30003924:	bd10      	pop	{r4, pc}
30003926:	bf00      	nop
30003928:	3000e280 	.word	0x3000e280
3000392c:	e000e100 	.word	0xe000e100

30003930 <BOOT_LoadImages>:
30003930:	b510      	push	{r4, lr}
30003932:	4b07      	ldr	r3, [pc, #28]	; (30003950 <BOOT_LoadImages+0x20>)
30003934:	b082      	sub	sp, #8
30003936:	4798      	blx	r3
30003938:	4604      	mov	r4, r0
3000393a:	4b06      	ldr	r3, [pc, #24]	; (30003954 <BOOT_LoadImages+0x24>)
3000393c:	2004      	movs	r0, #4
3000393e:	3401      	adds	r4, #1
30003940:	2249      	movs	r2, #73	; 0x49
30003942:	4905      	ldr	r1, [pc, #20]	; (30003958 <BOOT_LoadImages+0x28>)
30003944:	9400      	str	r4, [sp, #0]
30003946:	f005 fd01 	bl	3000934c <rtk_log_write>
3000394a:	2001      	movs	r0, #1
3000394c:	b002      	add	sp, #8
3000394e:	bd10      	pop	{r4, pc}
30003950:	300055c5 	.word	0x300055c5
30003954:	3000b8ac 	.word	0x3000b8ac
30003958:	3000b894 	.word	0x3000b894

3000395c <BOOT_ReasonSet>:
3000395c:	b570      	push	{r4, r5, r6, lr}
3000395e:	4e7a      	ldr	r6, [pc, #488]	; (30003b48 <BOOT_ReasonSet+0x1ec>)
30003960:	b082      	sub	sp, #8
30003962:	2004      	movs	r0, #4
30003964:	4b79      	ldr	r3, [pc, #484]	; (30003b4c <BOOT_ReasonSet+0x1f0>)
30003966:	6a34      	ldr	r4, [r6, #32]
30003968:	2249      	movs	r2, #73	; 0x49
3000396a:	4979      	ldr	r1, [pc, #484]	; (30003b50 <BOOT_ReasonSet+0x1f4>)
3000396c:	f024 457f 	bic.w	r5, r4, #4278190080	; 0xff000000
30003970:	6235      	str	r5, [r6, #32]
30003972:	f8c6 5264 	str.w	r5, [r6, #612]	; 0x264
30003976:	9500      	str	r5, [sp, #0]
30003978:	f005 fce8 	bl	3000934c <rtk_log_write>
3000397c:	0220      	lsls	r0, r4, #8
3000397e:	f100 80d9 	bmi.w	30003b34 <BOOT_ReasonSet+0x1d8>
30003982:	0261      	lsls	r1, r4, #9
30003984:	f100 80cd 	bmi.w	30003b22 <BOOT_ReasonSet+0x1c6>
30003988:	02a2      	lsls	r2, r4, #10
3000398a:	f100 80c1 	bmi.w	30003b10 <BOOT_ReasonSet+0x1b4>
3000398e:	02e3      	lsls	r3, r4, #11
30003990:	f100 80b5 	bmi.w	30003afe <BOOT_ReasonSet+0x1a2>
30003994:	0366      	lsls	r6, r4, #13
30003996:	f100 80a9 	bmi.w	30003aec <BOOT_ReasonSet+0x190>
3000399a:	03a0      	lsls	r0, r4, #14
3000399c:	f100 809d 	bmi.w	30003ada <BOOT_ReasonSet+0x17e>
300039a0:	03e1      	lsls	r1, r4, #15
300039a2:	f100 8091 	bmi.w	30003ac8 <BOOT_ReasonSet+0x16c>
300039a6:	0422      	lsls	r2, r4, #16
300039a8:	f100 8085 	bmi.w	30003ab6 <BOOT_ReasonSet+0x15a>
300039ac:	0463      	lsls	r3, r4, #17
300039ae:	d479      	bmi.n	30003aa4 <BOOT_ReasonSet+0x148>
300039b0:	04a6      	lsls	r6, r4, #18
300039b2:	d46e      	bmi.n	30003a92 <BOOT_ReasonSet+0x136>
300039b4:	04e0      	lsls	r0, r4, #19
300039b6:	d463      	bmi.n	30003a80 <BOOT_ReasonSet+0x124>
300039b8:	0521      	lsls	r1, r4, #20
300039ba:	d458      	bmi.n	30003a6e <BOOT_ReasonSet+0x112>
300039bc:	0562      	lsls	r2, r4, #21
300039be:	d44d      	bmi.n	30003a5c <BOOT_ReasonSet+0x100>
300039c0:	05a3      	lsls	r3, r4, #22
300039c2:	d442      	bmi.n	30003a4a <BOOT_ReasonSet+0xee>
300039c4:	05e6      	lsls	r6, r4, #23
300039c6:	d437      	bmi.n	30003a38 <BOOT_ReasonSet+0xdc>
300039c8:	0620      	lsls	r0, r4, #24
300039ca:	d42c      	bmi.n	30003a26 <BOOT_ReasonSet+0xca>
300039cc:	06a1      	lsls	r1, r4, #26
300039ce:	d421      	bmi.n	30003a14 <BOOT_ReasonSet+0xb8>
300039d0:	06e2      	lsls	r2, r4, #27
300039d2:	d416      	bmi.n	30003a02 <BOOT_ReasonSet+0xa6>
300039d4:	0723      	lsls	r3, r4, #28
300039d6:	d40b      	bmi.n	300039f0 <BOOT_ReasonSet+0x94>
300039d8:	b945      	cbnz	r5, 300039ec <BOOT_ReasonSet+0x90>
300039da:	4b5e      	ldr	r3, [pc, #376]	; (30003b54 <BOOT_ReasonSet+0x1f8>)
300039dc:	2249      	movs	r2, #73	; 0x49
300039de:	495e      	ldr	r1, [pc, #376]	; (30003b58 <BOOT_ReasonSet+0x1fc>)
300039e0:	2004      	movs	r0, #4
300039e2:	b002      	add	sp, #8
300039e4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
300039e8:	f005 bcd8 	b.w	3000939c <rtk_log_write_nano>
300039ec:	4b5b      	ldr	r3, [pc, #364]	; (30003b5c <BOOT_ReasonSet+0x200>)
300039ee:	e7f5      	b.n	300039dc <BOOT_ReasonSet+0x80>
300039f0:	485b      	ldr	r0, [pc, #364]	; (30003b60 <BOOT_ReasonSet+0x204>)
300039f2:	2249      	movs	r2, #73	; 0x49
300039f4:	4b5b      	ldr	r3, [pc, #364]	; (30003b64 <BOOT_ReasonSet+0x208>)
300039f6:	9000      	str	r0, [sp, #0]
300039f8:	2004      	movs	r0, #4
300039fa:	4957      	ldr	r1, [pc, #348]	; (30003b58 <BOOT_ReasonSet+0x1fc>)
300039fc:	f005 fcce 	bl	3000939c <rtk_log_write_nano>
30003a00:	e7ea      	b.n	300039d8 <BOOT_ReasonSet+0x7c>
30003a02:	4959      	ldr	r1, [pc, #356]	; (30003b68 <BOOT_ReasonSet+0x20c>)
30003a04:	2249      	movs	r2, #73	; 0x49
30003a06:	4b57      	ldr	r3, [pc, #348]	; (30003b64 <BOOT_ReasonSet+0x208>)
30003a08:	2004      	movs	r0, #4
30003a0a:	9100      	str	r1, [sp, #0]
30003a0c:	4952      	ldr	r1, [pc, #328]	; (30003b58 <BOOT_ReasonSet+0x1fc>)
30003a0e:	f005 fcc5 	bl	3000939c <rtk_log_write_nano>
30003a12:	e7df      	b.n	300039d4 <BOOT_ReasonSet+0x78>
30003a14:	4955      	ldr	r1, [pc, #340]	; (30003b6c <BOOT_ReasonSet+0x210>)
30003a16:	2249      	movs	r2, #73	; 0x49
30003a18:	4b52      	ldr	r3, [pc, #328]	; (30003b64 <BOOT_ReasonSet+0x208>)
30003a1a:	2004      	movs	r0, #4
30003a1c:	9100      	str	r1, [sp, #0]
30003a1e:	494e      	ldr	r1, [pc, #312]	; (30003b58 <BOOT_ReasonSet+0x1fc>)
30003a20:	f005 fcbc 	bl	3000939c <rtk_log_write_nano>
30003a24:	e7d4      	b.n	300039d0 <BOOT_ReasonSet+0x74>
30003a26:	4952      	ldr	r1, [pc, #328]	; (30003b70 <BOOT_ReasonSet+0x214>)
30003a28:	2249      	movs	r2, #73	; 0x49
30003a2a:	4b4e      	ldr	r3, [pc, #312]	; (30003b64 <BOOT_ReasonSet+0x208>)
30003a2c:	2004      	movs	r0, #4
30003a2e:	9100      	str	r1, [sp, #0]
30003a30:	4949      	ldr	r1, [pc, #292]	; (30003b58 <BOOT_ReasonSet+0x1fc>)
30003a32:	f005 fcb3 	bl	3000939c <rtk_log_write_nano>
30003a36:	e7c9      	b.n	300039cc <BOOT_ReasonSet+0x70>
30003a38:	494e      	ldr	r1, [pc, #312]	; (30003b74 <BOOT_ReasonSet+0x218>)
30003a3a:	2249      	movs	r2, #73	; 0x49
30003a3c:	4b49      	ldr	r3, [pc, #292]	; (30003b64 <BOOT_ReasonSet+0x208>)
30003a3e:	2004      	movs	r0, #4
30003a40:	9100      	str	r1, [sp, #0]
30003a42:	4945      	ldr	r1, [pc, #276]	; (30003b58 <BOOT_ReasonSet+0x1fc>)
30003a44:	f005 fcaa 	bl	3000939c <rtk_log_write_nano>
30003a48:	e7be      	b.n	300039c8 <BOOT_ReasonSet+0x6c>
30003a4a:	494b      	ldr	r1, [pc, #300]	; (30003b78 <BOOT_ReasonSet+0x21c>)
30003a4c:	2249      	movs	r2, #73	; 0x49
30003a4e:	4b45      	ldr	r3, [pc, #276]	; (30003b64 <BOOT_ReasonSet+0x208>)
30003a50:	2004      	movs	r0, #4
30003a52:	9100      	str	r1, [sp, #0]
30003a54:	4940      	ldr	r1, [pc, #256]	; (30003b58 <BOOT_ReasonSet+0x1fc>)
30003a56:	f005 fca1 	bl	3000939c <rtk_log_write_nano>
30003a5a:	e7b3      	b.n	300039c4 <BOOT_ReasonSet+0x68>
30003a5c:	4947      	ldr	r1, [pc, #284]	; (30003b7c <BOOT_ReasonSet+0x220>)
30003a5e:	2249      	movs	r2, #73	; 0x49
30003a60:	4b40      	ldr	r3, [pc, #256]	; (30003b64 <BOOT_ReasonSet+0x208>)
30003a62:	2004      	movs	r0, #4
30003a64:	9100      	str	r1, [sp, #0]
30003a66:	493c      	ldr	r1, [pc, #240]	; (30003b58 <BOOT_ReasonSet+0x1fc>)
30003a68:	f005 fc98 	bl	3000939c <rtk_log_write_nano>
30003a6c:	e7a8      	b.n	300039c0 <BOOT_ReasonSet+0x64>
30003a6e:	4944      	ldr	r1, [pc, #272]	; (30003b80 <BOOT_ReasonSet+0x224>)
30003a70:	2249      	movs	r2, #73	; 0x49
30003a72:	4b3c      	ldr	r3, [pc, #240]	; (30003b64 <BOOT_ReasonSet+0x208>)
30003a74:	2004      	movs	r0, #4
30003a76:	9100      	str	r1, [sp, #0]
30003a78:	4937      	ldr	r1, [pc, #220]	; (30003b58 <BOOT_ReasonSet+0x1fc>)
30003a7a:	f005 fc8f 	bl	3000939c <rtk_log_write_nano>
30003a7e:	e79d      	b.n	300039bc <BOOT_ReasonSet+0x60>
30003a80:	4940      	ldr	r1, [pc, #256]	; (30003b84 <BOOT_ReasonSet+0x228>)
30003a82:	2249      	movs	r2, #73	; 0x49
30003a84:	4b37      	ldr	r3, [pc, #220]	; (30003b64 <BOOT_ReasonSet+0x208>)
30003a86:	2004      	movs	r0, #4
30003a88:	9100      	str	r1, [sp, #0]
30003a8a:	4933      	ldr	r1, [pc, #204]	; (30003b58 <BOOT_ReasonSet+0x1fc>)
30003a8c:	f005 fc86 	bl	3000939c <rtk_log_write_nano>
30003a90:	e792      	b.n	300039b8 <BOOT_ReasonSet+0x5c>
30003a92:	493d      	ldr	r1, [pc, #244]	; (30003b88 <BOOT_ReasonSet+0x22c>)
30003a94:	2249      	movs	r2, #73	; 0x49
30003a96:	4b33      	ldr	r3, [pc, #204]	; (30003b64 <BOOT_ReasonSet+0x208>)
30003a98:	2004      	movs	r0, #4
30003a9a:	9100      	str	r1, [sp, #0]
30003a9c:	492e      	ldr	r1, [pc, #184]	; (30003b58 <BOOT_ReasonSet+0x1fc>)
30003a9e:	f005 fc7d 	bl	3000939c <rtk_log_write_nano>
30003aa2:	e787      	b.n	300039b4 <BOOT_ReasonSet+0x58>
30003aa4:	4939      	ldr	r1, [pc, #228]	; (30003b8c <BOOT_ReasonSet+0x230>)
30003aa6:	2249      	movs	r2, #73	; 0x49
30003aa8:	4b2e      	ldr	r3, [pc, #184]	; (30003b64 <BOOT_ReasonSet+0x208>)
30003aaa:	2004      	movs	r0, #4
30003aac:	9100      	str	r1, [sp, #0]
30003aae:	492a      	ldr	r1, [pc, #168]	; (30003b58 <BOOT_ReasonSet+0x1fc>)
30003ab0:	f005 fc74 	bl	3000939c <rtk_log_write_nano>
30003ab4:	e77c      	b.n	300039b0 <BOOT_ReasonSet+0x54>
30003ab6:	4936      	ldr	r1, [pc, #216]	; (30003b90 <BOOT_ReasonSet+0x234>)
30003ab8:	2249      	movs	r2, #73	; 0x49
30003aba:	4b2a      	ldr	r3, [pc, #168]	; (30003b64 <BOOT_ReasonSet+0x208>)
30003abc:	2004      	movs	r0, #4
30003abe:	9100      	str	r1, [sp, #0]
30003ac0:	4925      	ldr	r1, [pc, #148]	; (30003b58 <BOOT_ReasonSet+0x1fc>)
30003ac2:	f005 fc6b 	bl	3000939c <rtk_log_write_nano>
30003ac6:	e771      	b.n	300039ac <BOOT_ReasonSet+0x50>
30003ac8:	4932      	ldr	r1, [pc, #200]	; (30003b94 <BOOT_ReasonSet+0x238>)
30003aca:	2249      	movs	r2, #73	; 0x49
30003acc:	4b25      	ldr	r3, [pc, #148]	; (30003b64 <BOOT_ReasonSet+0x208>)
30003ace:	2004      	movs	r0, #4
30003ad0:	9100      	str	r1, [sp, #0]
30003ad2:	4921      	ldr	r1, [pc, #132]	; (30003b58 <BOOT_ReasonSet+0x1fc>)
30003ad4:	f005 fc62 	bl	3000939c <rtk_log_write_nano>
30003ad8:	e765      	b.n	300039a6 <BOOT_ReasonSet+0x4a>
30003ada:	492f      	ldr	r1, [pc, #188]	; (30003b98 <BOOT_ReasonSet+0x23c>)
30003adc:	2249      	movs	r2, #73	; 0x49
30003ade:	4b21      	ldr	r3, [pc, #132]	; (30003b64 <BOOT_ReasonSet+0x208>)
30003ae0:	2004      	movs	r0, #4
30003ae2:	9100      	str	r1, [sp, #0]
30003ae4:	491c      	ldr	r1, [pc, #112]	; (30003b58 <BOOT_ReasonSet+0x1fc>)
30003ae6:	f005 fc59 	bl	3000939c <rtk_log_write_nano>
30003aea:	e759      	b.n	300039a0 <BOOT_ReasonSet+0x44>
30003aec:	492b      	ldr	r1, [pc, #172]	; (30003b9c <BOOT_ReasonSet+0x240>)
30003aee:	2249      	movs	r2, #73	; 0x49
30003af0:	4b1c      	ldr	r3, [pc, #112]	; (30003b64 <BOOT_ReasonSet+0x208>)
30003af2:	2004      	movs	r0, #4
30003af4:	9100      	str	r1, [sp, #0]
30003af6:	4918      	ldr	r1, [pc, #96]	; (30003b58 <BOOT_ReasonSet+0x1fc>)
30003af8:	f005 fc50 	bl	3000939c <rtk_log_write_nano>
30003afc:	e74d      	b.n	3000399a <BOOT_ReasonSet+0x3e>
30003afe:	4928      	ldr	r1, [pc, #160]	; (30003ba0 <BOOT_ReasonSet+0x244>)
30003b00:	2249      	movs	r2, #73	; 0x49
30003b02:	4b18      	ldr	r3, [pc, #96]	; (30003b64 <BOOT_ReasonSet+0x208>)
30003b04:	2004      	movs	r0, #4
30003b06:	9100      	str	r1, [sp, #0]
30003b08:	4913      	ldr	r1, [pc, #76]	; (30003b58 <BOOT_ReasonSet+0x1fc>)
30003b0a:	f005 fc47 	bl	3000939c <rtk_log_write_nano>
30003b0e:	e741      	b.n	30003994 <BOOT_ReasonSet+0x38>
30003b10:	4924      	ldr	r1, [pc, #144]	; (30003ba4 <BOOT_ReasonSet+0x248>)
30003b12:	2249      	movs	r2, #73	; 0x49
30003b14:	4b13      	ldr	r3, [pc, #76]	; (30003b64 <BOOT_ReasonSet+0x208>)
30003b16:	2004      	movs	r0, #4
30003b18:	9100      	str	r1, [sp, #0]
30003b1a:	490f      	ldr	r1, [pc, #60]	; (30003b58 <BOOT_ReasonSet+0x1fc>)
30003b1c:	f005 fc3e 	bl	3000939c <rtk_log_write_nano>
30003b20:	e735      	b.n	3000398e <BOOT_ReasonSet+0x32>
30003b22:	4921      	ldr	r1, [pc, #132]	; (30003ba8 <BOOT_ReasonSet+0x24c>)
30003b24:	2249      	movs	r2, #73	; 0x49
30003b26:	4b0f      	ldr	r3, [pc, #60]	; (30003b64 <BOOT_ReasonSet+0x208>)
30003b28:	2004      	movs	r0, #4
30003b2a:	9100      	str	r1, [sp, #0]
30003b2c:	490a      	ldr	r1, [pc, #40]	; (30003b58 <BOOT_ReasonSet+0x1fc>)
30003b2e:	f005 fc35 	bl	3000939c <rtk_log_write_nano>
30003b32:	e729      	b.n	30003988 <BOOT_ReasonSet+0x2c>
30003b34:	491d      	ldr	r1, [pc, #116]	; (30003bac <BOOT_ReasonSet+0x250>)
30003b36:	2249      	movs	r2, #73	; 0x49
30003b38:	4b0a      	ldr	r3, [pc, #40]	; (30003b64 <BOOT_ReasonSet+0x208>)
30003b3a:	2004      	movs	r0, #4
30003b3c:	9100      	str	r1, [sp, #0]
30003b3e:	4906      	ldr	r1, [pc, #24]	; (30003b58 <BOOT_ReasonSet+0x1fc>)
30003b40:	f005 fc2c 	bl	3000939c <rtk_log_write_nano>
30003b44:	e71d      	b.n	30003982 <BOOT_ReasonSet+0x26>
30003b46:	bf00      	nop
30003b48:	42008000 	.word	0x42008000
30003b4c:	3000b8c4 	.word	0x3000b8c4
30003b50:	3000b894 	.word	0x3000b894
30003b54:	3000b9ac 	.word	0x3000b9ac
30003b58:	3000b8e0 	.word	0x3000b8e0
30003b5c:	3000b890 	.word	0x3000b890
30003b60:	3000b9a8 	.word	0x3000b9a8
30003b64:	3000b8dc 	.word	0x3000b8dc
30003b68:	3000b9a4 	.word	0x3000b9a4
30003b6c:	3000b99c 	.word	0x3000b99c
30003b70:	3000b994 	.word	0x3000b994
30003b74:	3000b98c 	.word	0x3000b98c
30003b78:	3000b984 	.word	0x3000b984
30003b7c:	3000b97c 	.word	0x3000b97c
30003b80:	3000b974 	.word	0x3000b974
30003b84:	3000b96c 	.word	0x3000b96c
30003b88:	3000b964 	.word	0x3000b964
30003b8c:	3000b95c 	.word	0x3000b95c
30003b90:	3000b954 	.word	0x3000b954
30003b94:	3000b944 	.word	0x3000b944
30003b98:	3000b934 	.word	0x3000b934
30003b9c:	3000b924 	.word	0x3000b924
30003ba0:	3000b914 	.word	0x3000b914
30003ba4:	3000b904 	.word	0x3000b904
30003ba8:	3000b8f4 	.word	0x3000b8f4
30003bac:	3000b8e4 	.word	0x3000b8e4

30003bb0 <BOOT_Enable_KM0>:
30003bb0:	b510      	push	{r4, lr}
30003bb2:	4c12      	ldr	r4, [pc, #72]	; (30003bfc <BOOT_Enable_KM0+0x4c>)
30003bb4:	47a0      	blx	r4
30003bb6:	b110      	cbz	r0, 30003bbe <BOOT_Enable_KM0+0xe>
30003bb8:	4b11      	ldr	r3, [pc, #68]	; (30003c00 <BOOT_Enable_KM0+0x50>)
30003bba:	4798      	blx	r3
30003bbc:	b1a8      	cbz	r0, 30003bea <BOOT_Enable_KM0+0x3a>
30003bbe:	47a0      	blx	r4
30003bc0:	b940      	cbnz	r0, 30003bd4 <BOOT_Enable_KM0+0x24>
30003bc2:	4a10      	ldr	r2, [pc, #64]	; (30003c04 <BOOT_Enable_KM0+0x54>)
30003bc4:	f8d2 3268 	ldr.w	r3, [r2, #616]	; 0x268
30003bc8:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
30003bcc:	f8c2 3268 	str.w	r3, [r2, #616]	; 0x268
30003bd0:	bf40      	sev
30003bd2:	bd10      	pop	{r4, pc}
30003bd4:	4b0a      	ldr	r3, [pc, #40]	; (30003c00 <BOOT_Enable_KM0+0x50>)
30003bd6:	4798      	blx	r3
30003bd8:	2800      	cmp	r0, #0
30003bda:	d0f2      	beq.n	30003bc2 <BOOT_Enable_KM0+0x12>
30003bdc:	4b0a      	ldr	r3, [pc, #40]	; (30003c08 <BOOT_Enable_KM0+0x58>)
30003bde:	2249      	movs	r2, #73	; 0x49
30003be0:	490a      	ldr	r1, [pc, #40]	; (30003c0c <BOOT_Enable_KM0+0x5c>)
30003be2:	2004      	movs	r0, #4
30003be4:	f005 fbb2 	bl	3000934c <rtk_log_write>
30003be8:	e7eb      	b.n	30003bc2 <BOOT_Enable_KM0+0x12>
30003bea:	4b09      	ldr	r3, [pc, #36]	; (30003c10 <BOOT_Enable_KM0+0x60>)
30003bec:	2249      	movs	r2, #73	; 0x49
30003bee:	4907      	ldr	r1, [pc, #28]	; (30003c0c <BOOT_Enable_KM0+0x5c>)
30003bf0:	2004      	movs	r0, #4
30003bf2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
30003bf6:	f005 bba9 	b.w	3000934c <rtk_log_write>
30003bfa:	bf00      	nop
30003bfc:	0000c09d 	.word	0x0000c09d
30003c00:	0000c0ad 	.word	0x0000c0ad
30003c04:	42008000 	.word	0x42008000
30003c08:	3000b9e4 	.word	0x3000b9e4
30003c0c:	3000b894 	.word	0x3000b894
30003c10:	3000b9c0 	.word	0x3000b9c0

30003c14 <BOOT_AP_Clk_Get>:
30003c14:	4a06      	ldr	r2, [pc, #24]	; (30003c30 <BOOT_AP_Clk_Get+0x1c>)
30003c16:	6913      	ldr	r3, [r2, #16]
30003c18:	2b00      	cmp	r3, #0
30003c1a:	db03      	blt.n	30003c24 <BOOT_AP_Clk_Get+0x10>
30003c1c:	6810      	ldr	r0, [r2, #0]
30003c1e:	fbb0 f0f3 	udiv	r0, r0, r3
30003c22:	4770      	bx	lr
30003c24:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
30003c28:	6850      	ldr	r0, [r2, #4]
30003c2a:	fbb0 f0f3 	udiv	r0, r0, r3
30003c2e:	4770      	bx	lr
30003c30:	3000e180 	.word	0x3000e180

30003c34 <BOOT_SOC_ClkSet>:
30003c34:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30003c38:	4f76      	ldr	r7, [pc, #472]	; (30003e14 <BOOT_SOC_ClkSet+0x1e0>)
30003c3a:	b083      	sub	sp, #12
30003c3c:	693b      	ldr	r3, [r7, #16]
30003c3e:	683a      	ldr	r2, [r7, #0]
30003c40:	2b00      	cmp	r3, #0
30003c42:	f2c0 8097 	blt.w	30003d74 <BOOT_SOC_ClkSet+0x140>
30003c46:	fbb2 f8f3 	udiv	r8, r2, r3
30003c4a:	4b73      	ldr	r3, [pc, #460]	; (30003e18 <BOOT_SOC_ClkSet+0x1e4>)
30003c4c:	68f9      	ldr	r1, [r7, #12]
30003c4e:	fba3 0302 	umull	r0, r3, r3, r2
30003c52:	09de      	lsrs	r6, r3, #7
30003c54:	095d      	lsrs	r5, r3, #5
30003c56:	099b      	lsrs	r3, r3, #6
30003c58:	3e01      	subs	r6, #1
30003c5a:	3d01      	subs	r5, #1
30003c5c:	1e5c      	subs	r4, r3, #1
30003c5e:	fbb2 f9f1 	udiv	r9, r2, r1
30003c62:	4a6e      	ldr	r2, [pc, #440]	; (30003e1c <BOOT_SOC_ClkSet+0x1e8>)
30003c64:	4790      	blx	r2
30003c66:	2801      	cmp	r0, #1
30003c68:	f000 8081 	beq.w	30003d6e <BOOT_SOC_ClkSet+0x13a>
30003c6c:	f8d7 a008 	ldr.w	sl, [r7, #8]
30003c70:	f1ba 0f03 	cmp.w	sl, #3
30003c74:	f000 8098 	beq.w	30003da8 <BOOT_SOC_ClkSet+0x174>
30003c78:	4b69      	ldr	r3, [pc, #420]	; (30003e20 <BOOT_SOC_ClkSet+0x1ec>)
30003c7a:	2201      	movs	r2, #1
30003c7c:	f1b9 0ffa 	cmp.w	r9, #250	; 0xfa
30003c80:	f883 210c 	strb.w	r2, [r3, #268]	; 0x10c
30003c84:	f200 80bb 	bhi.w	30003dfe <BOOT_SOC_ClkSet+0x1ca>
30003c88:	f8df a1d8 	ldr.w	sl, [pc, #472]	; 30003e64 <BOOT_SOC_ClkSet+0x230>
30003c8c:	f89a 3000 	ldrb.w	r3, [sl]
30003c90:	2b01      	cmp	r3, #1
30003c92:	d103      	bne.n	30003c9c <BOOT_SOC_ClkSet+0x68>
30003c94:	f5b8 7f66 	cmp.w	r8, #920	; 0x398
30003c98:	f200 80a3 	bhi.w	30003de2 <BOOT_SOC_ClkSet+0x1ae>
30003c9c:	2001      	movs	r0, #1
30003c9e:	f8df b1c8 	ldr.w	fp, [pc, #456]	; 30003e68 <BOOT_SOC_ClkSet+0x234>
30003ca2:	f004 fd9d 	bl	300087e0 <CLK_SWITCH_XTAL>
30003ca6:	6838      	ldr	r0, [r7, #0]
30003ca8:	4b5e      	ldr	r3, [pc, #376]	; (30003e24 <BOOT_SOC_ClkSet+0x1f0>)
30003caa:	0236      	lsls	r6, r6, #8
30003cac:	fb0b f000 	mul.w	r0, fp, r0
30003cb0:	032d      	lsls	r5, r5, #12
30003cb2:	4798      	blx	r3
30003cb4:	495c      	ldr	r1, [pc, #368]	; (30003e28 <BOOT_SOC_ClkSet+0x1f4>)
30003cb6:	68fa      	ldr	r2, [r7, #12]
30003cb8:	0523      	lsls	r3, r4, #20
30003cba:	485c      	ldr	r0, [pc, #368]	; (30003e2c <BOOT_SOC_ClkSet+0x1f8>)
30003cbc:	f406 66e0 	and.w	r6, r6, #1792	; 0x700
30003cc0:	f8d1 4228 	ldr.w	r4, [r1, #552]	; 0x228
30003cc4:	3a01      	subs	r2, #1
30003cc6:	b2ad      	uxth	r5, r5
30003cc8:	f403 03e0 	and.w	r3, r3, #7340032	; 0x700000
30003ccc:	4020      	ands	r0, r4
30003cce:	f002 0207 	and.w	r2, r2, #7
30003cd2:	4302      	orrs	r2, r0
30003cd4:	2000      	movs	r0, #0
30003cd6:	4316      	orrs	r6, r2
30003cd8:	4335      	orrs	r5, r6
30003cda:	432b      	orrs	r3, r5
30003cdc:	f8c1 3228 	str.w	r3, [r1, #552]	; 0x228
30003ce0:	f004 fd7e 	bl	300087e0 <CLK_SWITCH_XTAL>
30003ce4:	f89a 3000 	ldrb.w	r3, [sl]
30003ce8:	2b00      	cmp	r3, #0
30003cea:	d040      	beq.n	30003d6e <BOOT_SOC_ClkSet+0x13a>
30003cec:	693b      	ldr	r3, [r7, #16]
30003cee:	2b00      	cmp	r3, #0
30003cf0:	db46      	blt.n	30003d80 <BOOT_SOC_ClkSet+0x14c>
30003cf2:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
30003cf6:	6913      	ldr	r3, [r2, #16]
30003cf8:	f043 030c 	orr.w	r3, r3, #12
30003cfc:	6113      	str	r3, [r2, #16]
30003cfe:	2200      	movs	r2, #0
30003d00:	4b47      	ldr	r3, [pc, #284]	; (30003e20 <BOOT_SOC_ClkSet+0x1ec>)
30003d02:	f883 210d 	strb.w	r2, [r3, #269]	; 0x10d
30003d06:	f04f 4182 	mov.w	r1, #1090519040	; 0x41000000
30003d0a:	693b      	ldr	r3, [r7, #16]
30003d0c:	690a      	ldr	r2, [r1, #16]
30003d0e:	3b01      	subs	r3, #1
30003d10:	f022 0203 	bic.w	r2, r2, #3
30003d14:	f003 0303 	and.w	r3, r3, #3
30003d18:	4313      	orrs	r3, r2
30003d1a:	4a43      	ldr	r2, [pc, #268]	; (30003e28 <BOOT_SOC_ClkSet+0x1f4>)
30003d1c:	610b      	str	r3, [r1, #16]
30003d1e:	f8d2 3224 	ldr.w	r3, [r2, #548]	; 0x224
30003d22:	079b      	lsls	r3, r3, #30
30003d24:	d139      	bne.n	30003d9a <BOOT_SOC_ClkSet+0x166>
30003d26:	2404      	movs	r4, #4
30003d28:	4b41      	ldr	r3, [pc, #260]	; (30003e30 <BOOT_SOC_ClkSet+0x1fc>)
30003d2a:	2249      	movs	r2, #73	; 0x49
30003d2c:	4941      	ldr	r1, [pc, #260]	; (30003e34 <BOOT_SOC_ClkSet+0x200>)
30003d2e:	2004      	movs	r0, #4
30003d30:	f8cd 9000 	str.w	r9, [sp]
30003d34:	f005 fb0a 	bl	3000934c <rtk_log_write>
30003d38:	4b3f      	ldr	r3, [pc, #252]	; (30003e38 <BOOT_SOC_ClkSet+0x204>)
30003d3a:	2249      	movs	r2, #73	; 0x49
30003d3c:	493d      	ldr	r1, [pc, #244]	; (30003e34 <BOOT_SOC_ClkSet+0x200>)
30003d3e:	2004      	movs	r0, #4
30003d40:	f8cd 8000 	str.w	r8, [sp]
30003d44:	f005 fb02 	bl	3000934c <rtk_log_write>
30003d48:	493a      	ldr	r1, [pc, #232]	; (30003e34 <BOOT_SOC_ClkSet+0x200>)
30003d4a:	2249      	movs	r2, #73	; 0x49
30003d4c:	4b3b      	ldr	r3, [pc, #236]	; (30003e3c <BOOT_SOC_ClkSet+0x208>)
30003d4e:	2004      	movs	r0, #4
30003d50:	9400      	str	r4, [sp, #0]
30003d52:	f005 fafb 	bl	3000934c <rtk_log_write>
30003d56:	4b3a      	ldr	r3, [pc, #232]	; (30003e40 <BOOT_SOC_ClkSet+0x20c>)
30003d58:	2000      	movs	r0, #0
30003d5a:	4798      	blx	r3
30003d5c:	4601      	mov	r1, r0
30003d5e:	4b39      	ldr	r3, [pc, #228]	; (30003e44 <BOOT_SOC_ClkSet+0x210>)
30003d60:	2000      	movs	r0, #0
30003d62:	f021 01ff 	bic.w	r1, r1, #255	; 0xff
30003d66:	b003      	add	sp, #12
30003d68:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30003d6c:	4718      	bx	r3
30003d6e:	b003      	add	sp, #12
30003d70:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30003d74:	f023 4800 	bic.w	r8, r3, #2147483648	; 0x80000000
30003d78:	687b      	ldr	r3, [r7, #4]
30003d7a:	fbb3 f8f8 	udiv	r8, r3, r8
30003d7e:	e764      	b.n	30003c4a <BOOT_SOC_ClkSet+0x16>
30003d80:	6878      	ldr	r0, [r7, #4]
30003d82:	4b31      	ldr	r3, [pc, #196]	; (30003e48 <BOOT_SOC_ClkSet+0x214>)
30003d84:	fb0b f000 	mul.w	r0, fp, r0
30003d88:	4798      	blx	r3
30003d8a:	4b30      	ldr	r3, [pc, #192]	; (30003e4c <BOOT_SOC_ClkSet+0x218>)
30003d8c:	2001      	movs	r0, #1
30003d8e:	4798      	blx	r3
30003d90:	4b23      	ldr	r3, [pc, #140]	; (30003e20 <BOOT_SOC_ClkSet+0x1ec>)
30003d92:	2201      	movs	r2, #1
30003d94:	f883 210d 	strb.w	r2, [r3, #269]	; 0x10d
30003d98:	e7b5      	b.n	30003d06 <BOOT_SOC_ClkSet+0xd2>
30003d9a:	4c2d      	ldr	r4, [pc, #180]	; (30003e50 <BOOT_SOC_ClkSet+0x21c>)
30003d9c:	4b2d      	ldr	r3, [pc, #180]	; (30003e54 <BOOT_SOC_ClkSet+0x220>)
30003d9e:	4798      	blx	r3
30003da0:	fba4 3400 	umull	r3, r4, r4, r0
30003da4:	0ca4      	lsrs	r4, r4, #18
30003da6:	e7bf      	b.n	30003d28 <BOOT_SOC_ClkSet+0xf4>
30003da8:	4b2b      	ldr	r3, [pc, #172]	; (30003e58 <BOOT_SOC_ClkSet+0x224>)
30003daa:	2001      	movs	r0, #1
30003dac:	4798      	blx	r3
30003dae:	4b1c      	ldr	r3, [pc, #112]	; (30003e20 <BOOT_SOC_ClkSet+0x1ec>)
30003db0:	f5b9 7fa7 	cmp.w	r9, #334	; 0x14e
30003db4:	f883 a10c 	strb.w	sl, [r3, #268]	; 0x10c
30003db8:	d226      	bcs.n	30003e08 <BOOT_SOC_ClkSet+0x1d4>
30003dba:	f8df a0a8 	ldr.w	sl, [pc, #168]	; 30003e64 <BOOT_SOC_ClkSet+0x230>
30003dbe:	f89a 3000 	ldrb.w	r3, [sl]
30003dc2:	2b01      	cmp	r3, #1
30003dc4:	f47f af6a 	bne.w	30003c9c <BOOT_SOC_ClkSet+0x68>
30003dc8:	4b24      	ldr	r3, [pc, #144]	; (30003e5c <BOOT_SOC_ClkSet+0x228>)
30003dca:	4798      	blx	r3
30003dcc:	2802      	cmp	r0, #2
30003dce:	d00d      	beq.n	30003dec <BOOT_SOC_ClkSet+0x1b8>
30003dd0:	f5b8 6fa5 	cmp.w	r8, #1320	; 0x528
30003dd4:	f67f af62 	bls.w	30003c9c <BOOT_SOC_ClkSet+0x68>
30003dd8:	f240 11fb 	movw	r1, #507	; 0x1fb
30003ddc:	4820      	ldr	r0, [pc, #128]	; (30003e60 <BOOT_SOC_ClkSet+0x22c>)
30003dde:	f007 f8e7 	bl	3000afb0 <io_assert_failed>
30003de2:	f240 2102 	movw	r1, #514	; 0x202
30003de6:	481e      	ldr	r0, [pc, #120]	; (30003e60 <BOOT_SOC_ClkSet+0x22c>)
30003de8:	f007 f8e2 	bl	3000afb0 <io_assert_failed>
30003dec:	f5b8 6f96 	cmp.w	r8, #1200	; 0x4b0
30003df0:	f67f af54 	bls.w	30003c9c <BOOT_SOC_ClkSet+0x68>
30003df4:	f240 11f9 	movw	r1, #505	; 0x1f9
30003df8:	4819      	ldr	r0, [pc, #100]	; (30003e60 <BOOT_SOC_ClkSet+0x22c>)
30003dfa:	f007 f8d9 	bl	3000afb0 <io_assert_failed>
30003dfe:	f44f 7100 	mov.w	r1, #512	; 0x200
30003e02:	4817      	ldr	r0, [pc, #92]	; (30003e60 <BOOT_SOC_ClkSet+0x22c>)
30003e04:	f007 f8d4 	bl	3000afb0 <io_assert_failed>
30003e08:	f44f 71fb 	mov.w	r1, #502	; 0x1f6
30003e0c:	4814      	ldr	r0, [pc, #80]	; (30003e60 <BOOT_SOC_ClkSet+0x22c>)
30003e0e:	f007 f8cf 	bl	3000afb0 <io_assert_failed>
30003e12:	bf00      	nop
30003e14:	3000e180 	.word	0x3000e180
30003e18:	51eb851f 	.word	0x51eb851f
30003e1c:	0000c0f9 	.word	0x0000c0f9
30003e20:	23020000 	.word	0x23020000
30003e24:	30008eb1 	.word	0x30008eb1
30003e28:	42008000 	.word	0x42008000
30003e2c:	ff8f08f8 	.word	0xff8f08f8
30003e30:	3000ba88 	.word	0x3000ba88
30003e34:	3000b894 	.word	0x3000b894
30003e38:	3000ba9c 	.word	0x3000ba9c
30003e3c:	3000bab0 	.word	0x3000bab0
30003e40:	00009979 	.word	0x00009979
30003e44:	0000994d 	.word	0x0000994d
30003e48:	30008f31 	.word	0x30008f31
30003e4c:	30008f6d 	.word	0x30008f6d
30003e50:	431bde83 	.word	0x431bde83
30003e54:	000099f5 	.word	0x000099f5
30003e58:	30008a75 	.word	0x30008a75
30003e5c:	30009fa9 	.word	0x30009fa9
30003e60:	3000b9fc 	.word	0x3000b9fc
30003e64:	3000dffa 	.word	0x3000dffa
30003e68:	000f4240 	.word	0x000f4240

30003e6c <BOOT_Disable_AP>:
30003e6c:	f04f 4382 	mov.w	r3, #1090519040	; 0x41000000
30003e70:	4906      	ldr	r1, [pc, #24]	; (30003e8c <BOOT_Disable_AP+0x20>)
30003e72:	685a      	ldr	r2, [r3, #4]
30003e74:	f042 0202 	orr.w	r2, r2, #2
30003e78:	605a      	str	r2, [r3, #4]
30003e7a:	685a      	ldr	r2, [r3, #4]
30003e7c:	f042 0230 	orr.w	r2, r2, #48	; 0x30
30003e80:	605a      	str	r2, [r3, #4]
30003e82:	6f8b      	ldr	r3, [r1, #120]	; 0x78
30003e84:	f043 0303 	orr.w	r3, r3, #3
30003e88:	678b      	str	r3, [r1, #120]	; 0x78
30003e8a:	4770      	bx	lr
30003e8c:	41000200 	.word	0x41000200

30003e90 <BOOT_Enable_AP>:
30003e90:	b538      	push	{r3, r4, r5, lr}
30003e92:	f04f 4482 	mov.w	r4, #1090519040	; 0x41000000
30003e96:	2201      	movs	r2, #1
30003e98:	2104      	movs	r1, #4
30003e9a:	481e      	ldr	r0, [pc, #120]	; (30003f14 <BOOT_Enable_AP+0x84>)
30003e9c:	4b1e      	ldr	r3, [pc, #120]	; (30003f18 <BOOT_Enable_AP+0x88>)
30003e9e:	4798      	blx	r3
30003ea0:	6863      	ldr	r3, [r4, #4]
30003ea2:	4d1e      	ldr	r5, [pc, #120]	; (30003f1c <BOOT_Enable_AP+0x8c>)
30003ea4:	2032      	movs	r0, #50	; 0x32
30003ea6:	f043 0302 	orr.w	r3, r3, #2
30003eaa:	6063      	str	r3, [r4, #4]
30003eac:	6863      	ldr	r3, [r4, #4]
30003eae:	f043 0330 	orr.w	r3, r3, #48	; 0x30
30003eb2:	6063      	str	r3, [r4, #4]
30003eb4:	6823      	ldr	r3, [r4, #0]
30003eb6:	f043 0302 	orr.w	r3, r3, #2
30003eba:	6023      	str	r3, [r4, #0]
30003ebc:	47a8      	blx	r5
30003ebe:	6823      	ldr	r3, [r4, #0]
30003ec0:	2032      	movs	r0, #50	; 0x32
30003ec2:	f043 0304 	orr.w	r3, r3, #4
30003ec6:	6023      	str	r3, [r4, #0]
30003ec8:	6823      	ldr	r3, [r4, #0]
30003eca:	f043 0301 	orr.w	r3, r3, #1
30003ece:	6023      	str	r3, [r4, #0]
30003ed0:	6823      	ldr	r3, [r4, #0]
30003ed2:	f043 0310 	orr.w	r3, r3, #16
30003ed6:	6023      	str	r3, [r4, #0]
30003ed8:	47a8      	blx	r5
30003eda:	6823      	ldr	r3, [r4, #0]
30003edc:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
30003ee0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
30003ee4:	6023      	str	r3, [r4, #0]
30003ee6:	47a8      	blx	r5
30003ee8:	6862      	ldr	r2, [r4, #4]
30003eea:	490d      	ldr	r1, [pc, #52]	; (30003f20 <BOOT_Enable_AP+0x90>)
30003eec:	f022 0210 	bic.w	r2, r2, #16
30003ef0:	4b0c      	ldr	r3, [pc, #48]	; (30003f24 <BOOT_Enable_AP+0x94>)
30003ef2:	6062      	str	r2, [r4, #4]
30003ef4:	6862      	ldr	r2, [r4, #4]
30003ef6:	f022 0202 	bic.w	r2, r2, #2
30003efa:	6062      	str	r2, [r4, #4]
30003efc:	68e2      	ldr	r2, [r4, #12]
30003efe:	f042 0201 	orr.w	r2, r2, #1
30003f02:	60e2      	str	r2, [r4, #12]
30003f04:	68a2      	ldr	r2, [r4, #8]
30003f06:	f042 0201 	orr.w	r2, r2, #1
30003f0a:	60a2      	str	r2, [r4, #8]
30003f0c:	684a      	ldr	r2, [r1, #4]
30003f0e:	4313      	orrs	r3, r2
30003f10:	604b      	str	r3, [r1, #4]
30003f12:	bd38      	pop	{r3, r4, r5, pc}
30003f14:	4200c000 	.word	0x4200c000
30003f18:	0000aab9 	.word	0x0000aab9
30003f1c:	00009b2d 	.word	0x00009b2d
30003f20:	41000200 	.word	0x41000200
30003f24:	01001111 	.word	0x01001111

30003f28 <BOOT_Share_Memory_Patch>:
30003f28:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
30003f2c:	481a      	ldr	r0, [pc, #104]	; (30003f98 <BOOT_Share_Memory_Patch+0x70>)
30003f2e:	491b      	ldr	r1, [pc, #108]	; (30003f9c <BOOT_Share_Memory_Patch+0x74>)
30003f30:	b410      	push	{r4}
30003f32:	6b13      	ldr	r3, [r2, #48]	; 0x30
30003f34:	f04f 5408 	mov.w	r4, #570425344	; 0x22000000
30003f38:	f443 23c0 	orr.w	r3, r3, #393216	; 0x60000
30003f3c:	6313      	str	r3, [r2, #48]	; 0x30
30003f3e:	6823      	ldr	r3, [r4, #0]
30003f40:	6804      	ldr	r4, [r0, #0]
30003f42:	f500 3000 	add.w	r0, r0, #131072	; 0x20000
30003f46:	6809      	ldr	r1, [r1, #0]
30003f48:	4423      	add	r3, r4
30003f4a:	6804      	ldr	r4, [r0, #0]
30003f4c:	f500 205e 	add.w	r0, r0, #909312	; 0xde000
30003f50:	440b      	add	r3, r1
30003f52:	4913      	ldr	r1, [pc, #76]	; (30003fa0 <BOOT_Share_Memory_Patch+0x78>)
30003f54:	4423      	add	r3, r4
30003f56:	6809      	ldr	r1, [r1, #0]
30003f58:	6844      	ldr	r4, [r0, #4]
30003f5a:	f04f 5000 	mov.w	r0, #536870912	; 0x20000000
30003f5e:	440b      	add	r3, r1
30003f60:	6b11      	ldr	r1, [r2, #48]	; 0x30
30003f62:	f421 21c0 	bic.w	r1, r1, #393216	; 0x60000
30003f66:	4423      	add	r3, r4
30003f68:	6311      	str	r1, [r2, #48]	; 0x30
30003f6a:	4a0e      	ldr	r2, [pc, #56]	; (30003fa4 <BOOT_Share_Memory_Patch+0x7c>)
30003f6c:	6804      	ldr	r4, [r0, #0]
30003f6e:	f500 3000 	add.w	r0, r0, #131072	; 0x20000
30003f72:	6812      	ldr	r2, [r2, #0]
30003f74:	4423      	add	r3, r4
30003f76:	490c      	ldr	r1, [pc, #48]	; (30003fa8 <BOOT_Share_Memory_Patch+0x80>)
30003f78:	6804      	ldr	r4, [r0, #0]
30003f7a:	4413      	add	r3, r2
30003f7c:	6809      	ldr	r1, [r1, #0]
30003f7e:	f04f 520c 	mov.w	r2, #587202560	; 0x23000000
30003f82:	480a      	ldr	r0, [pc, #40]	; (30003fac <BOOT_Share_Memory_Patch+0x84>)
30003f84:	4423      	add	r3, r4
30003f86:	f85d 4b04 	ldr.w	r4, [sp], #4
30003f8a:	6812      	ldr	r2, [r2, #0]
30003f8c:	440b      	add	r3, r1
30003f8e:	6800      	ldr	r0, [r0, #0]
30003f90:	4413      	add	r3, r2
30003f92:	4418      	add	r0, r3
30003f94:	4770      	bx	lr
30003f96:	bf00      	nop
30003f98:	2200c000 	.word	0x2200c000
30003f9c:	22018000 	.word	0x22018000
30003fa0:	22100000 	.word	0x22100000
30003fa4:	20010000 	.word	0x20010000
30003fa8:	20030000 	.word	0x20030000
30003fac:	23010000 	.word	0x23010000

30003fb0 <BOOT_Log_Init>:
30003fb0:	4b10      	ldr	r3, [pc, #64]	; (30003ff4 <BOOT_Log_Init+0x44>)
30003fb2:	b510      	push	{r4, lr}
30003fb4:	781b      	ldrb	r3, [r3, #0]
30003fb6:	b93b      	cbnz	r3, 30003fc8 <BOOT_Log_Init+0x18>
30003fb8:	4c0f      	ldr	r4, [pc, #60]	; (30003ff8 <BOOT_Log_Init+0x48>)
30003fba:	4623      	mov	r3, r4
30003fbc:	2201      	movs	r2, #1
30003fbe:	2102      	movs	r1, #2
30003fc0:	480e      	ldr	r0, [pc, #56]	; (30003ffc <BOOT_Log_Init+0x4c>)
30003fc2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
30003fc6:	4718      	bx	r3
30003fc8:	4b0d      	ldr	r3, [pc, #52]	; (30004000 <BOOT_Log_Init+0x50>)
30003fca:	4798      	blx	r3
30003fcc:	3802      	subs	r0, #2
30003fce:	2801      	cmp	r0, #1
30003fd0:	d9f2      	bls.n	30003fb8 <BOOT_Log_Init+0x8>
30003fd2:	4b0c      	ldr	r3, [pc, #48]	; (30004004 <BOOT_Log_Init+0x54>)
30003fd4:	4798      	blx	r3
30003fd6:	4c08      	ldr	r4, [pc, #32]	; (30003ff8 <BOOT_Log_Init+0x48>)
30003fd8:	2200      	movs	r2, #0
30003fda:	2101      	movs	r1, #1
30003fdc:	4807      	ldr	r0, [pc, #28]	; (30003ffc <BOOT_Log_Init+0x4c>)
30003fde:	47a0      	blx	r4
30003fe0:	2101      	movs	r1, #1
30003fe2:	4806      	ldr	r0, [pc, #24]	; (30003ffc <BOOT_Log_Init+0x4c>)
30003fe4:	4b08      	ldr	r3, [pc, #32]	; (30004008 <BOOT_Log_Init+0x58>)
30003fe6:	4798      	blx	r3
30003fe8:	2201      	movs	r2, #1
30003fea:	4804      	ldr	r0, [pc, #16]	; (30003ffc <BOOT_Log_Init+0x4c>)
30003fec:	4611      	mov	r1, r2
30003fee:	47a0      	blx	r4
30003ff0:	e7e3      	b.n	30003fba <BOOT_Log_Init+0xa>
30003ff2:	bf00      	nop
30003ff4:	3000eb0c 	.word	0x3000eb0c
30003ff8:	0000aab9 	.word	0x0000aab9
30003ffc:	4200c000 	.word	0x4200c000
30004000:	0000c0f9 	.word	0x0000c0f9
30004004:	3000a2dd 	.word	0x3000a2dd
30004008:	0000aaa5 	.word	0x0000aaa5

3000400c <BOOT_Image1>:
3000400c:	4879      	ldr	r0, [pc, #484]	; (300041f4 <BOOT_Image1+0x1e8>)
3000400e:	2100      	movs	r1, #0
30004010:	4a79      	ldr	r2, [pc, #484]	; (300041f8 <BOOT_Image1+0x1ec>)
30004012:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
30004016:	1a12      	subs	r2, r2, r0
30004018:	b082      	sub	sp, #8
3000401a:	4c78      	ldr	r4, [pc, #480]	; (300041fc <BOOT_Image1+0x1f0>)
3000401c:	47a0      	blx	r4
3000401e:	f7ff fc9d 	bl	3000395c <BOOT_ReasonSet>
30004022:	f004 ffd3 	bl	30008fcc <BOOT_Reason>
30004026:	2800      	cmp	r0, #0
30004028:	f000 80dd 	beq.w	300041e6 <BOOT_Image1+0x1da>
3000402c:	f007 fa36 	bl	3000b49c <BOOT_VerCheck>
30004030:	4b73      	ldr	r3, [pc, #460]	; (30004200 <BOOT_Image1+0x1f4>)
30004032:	4798      	blx	r3
30004034:	b920      	cbnz	r0, 30004040 <BOOT_Image1+0x34>
30004036:	4a73      	ldr	r2, [pc, #460]	; (30004204 <BOOT_Image1+0x1f8>)
30004038:	6893      	ldr	r3, [r2, #8]
3000403a:	f043 0302 	orr.w	r3, r3, #2
3000403e:	6093      	str	r3, [r2, #8]
30004040:	4d71      	ldr	r5, [pc, #452]	; (30004208 <BOOT_Image1+0x1fc>)
30004042:	4b72      	ldr	r3, [pc, #456]	; (3000420c <BOOT_Image1+0x200>)
30004044:	4798      	blx	r3
30004046:	782c      	ldrb	r4, [r5, #0]
30004048:	2c00      	cmp	r4, #0
3000404a:	f000 80a7 	beq.w	3000419c <BOOT_Image1+0x190>
3000404e:	2000      	movs	r0, #0
30004050:	4b6f      	ldr	r3, [pc, #444]	; (30004210 <BOOT_Image1+0x204>)
30004052:	4798      	blx	r3
30004054:	4b6f      	ldr	r3, [pc, #444]	; (30004214 <BOOT_Image1+0x208>)
30004056:	2001      	movs	r0, #1
30004058:	4798      	blx	r3
3000405a:	4f6f      	ldr	r7, [pc, #444]	; (30004218 <BOOT_Image1+0x20c>)
3000405c:	f7ff fdea 	bl	30003c34 <BOOT_SOC_ClkSet>
30004060:	f241 060a 	movw	r6, #4106	; 0x100a
30004064:	2028      	movs	r0, #40	; 0x28
30004066:	883b      	ldrh	r3, [r7, #0]
30004068:	4c6c      	ldr	r4, [pc, #432]	; (3000421c <BOOT_Image1+0x210>)
3000406a:	b29b      	uxth	r3, r3
3000406c:	431e      	orrs	r6, r3
3000406e:	4b6c      	ldr	r3, [pc, #432]	; (30004220 <BOOT_Image1+0x214>)
30004070:	803e      	strh	r6, [r7, #0]
30004072:	4798      	blx	r3
30004074:	88bb      	ldrh	r3, [r7, #4]
30004076:	b29b      	uxth	r3, r3
30004078:	ea23 0306 	bic.w	r3, r3, r6
3000407c:	80bb      	strh	r3, [r7, #4]
3000407e:	887b      	ldrh	r3, [r7, #2]
30004080:	b29b      	uxth	r3, r3
30004082:	431e      	orrs	r6, r3
30004084:	807e      	strh	r6, [r7, #2]
30004086:	47a0      	blx	r4
30004088:	2802      	cmp	r0, #2
3000408a:	4e66      	ldr	r6, [pc, #408]	; (30004224 <BOOT_Image1+0x218>)
3000408c:	f000 8094 	beq.w	300041b8 <BOOT_Image1+0x1ac>
30004090:	f8d6 325c 	ldr.w	r3, [r6, #604]	; 0x25c
30004094:	2701      	movs	r7, #1
30004096:	4a64      	ldr	r2, [pc, #400]	; (30004228 <BOOT_Image1+0x21c>)
30004098:	f04f 4082 	mov.w	r0, #1090519040	; 0x41000000
3000409c:	f023 0330 	bic.w	r3, r3, #48	; 0x30
300040a0:	4962      	ldr	r1, [pc, #392]	; (3000422c <BOOT_Image1+0x220>)
300040a2:	f8df 81cc 	ldr.w	r8, [pc, #460]	; 30004270 <BOOT_Image1+0x264>
300040a6:	f8c6 325c 	str.w	r3, [r6, #604]	; 0x25c
300040aa:	f882 710e 	strb.w	r7, [r2, #270]	; 0x10e
300040ae:	463a      	mov	r2, r7
300040b0:	47c0      	blx	r8
300040b2:	463a      	mov	r2, r7
300040b4:	495e      	ldr	r1, [pc, #376]	; (30004230 <BOOT_Image1+0x224>)
300040b6:	f04f 4081 	mov.w	r0, #1082130432	; 0x40800000
300040ba:	47c0      	blx	r8
300040bc:	f8d6 32fc 	ldr.w	r3, [r6, #764]	; 0x2fc
300040c0:	f043 0303 	orr.w	r3, r3, #3
300040c4:	f8c6 32fc 	str.w	r3, [r6, #764]	; 0x2fc
300040c8:	4a56      	ldr	r2, [pc, #344]	; (30004224 <BOOT_Image1+0x218>)
300040ca:	f8d2 325c 	ldr.w	r3, [r2, #604]	; 0x25c
300040ce:	f023 0303 	bic.w	r3, r3, #3
300040d2:	f043 0302 	orr.w	r3, r3, #2
300040d6:	f8c2 325c 	str.w	r3, [r2, #604]	; 0x25c
300040da:	f7ff ff69 	bl	30003fb0 <BOOT_Log_Init>
300040de:	f3ef 8108 	mrs	r1, MSP
300040e2:	4b54      	ldr	r3, [pc, #336]	; (30004234 <BOOT_Image1+0x228>)
300040e4:	2249      	movs	r2, #73	; 0x49
300040e6:	2004      	movs	r0, #4
300040e8:	9100      	str	r1, [sp, #0]
300040ea:	4953      	ldr	r1, [pc, #332]	; (30004238 <BOOT_Image1+0x22c>)
300040ec:	f005 f92e 	bl	3000934c <rtk_log_write>
300040f0:	4952      	ldr	r1, [pc, #328]	; (3000423c <BOOT_Image1+0x230>)
300040f2:	4a53      	ldr	r2, [pc, #332]	; (30004240 <BOOT_Image1+0x234>)
300040f4:	2004      	movs	r0, #4
300040f6:	4b53      	ldr	r3, [pc, #332]	; (30004244 <BOOT_Image1+0x238>)
300040f8:	4e53      	ldr	r6, [pc, #332]	; (30004248 <BOOT_Image1+0x23c>)
300040fa:	e9cd 2100 	strd	r2, r1, [sp]
300040fe:	2249      	movs	r2, #73	; 0x49
30004100:	494d      	ldr	r1, [pc, #308]	; (30004238 <BOOT_Image1+0x22c>)
30004102:	f005 f923 	bl	3000934c <rtk_log_write>
30004106:	4951      	ldr	r1, [pc, #324]	; (3000424c <BOOT_Image1+0x240>)
30004108:	e841 f100 	tt	r1, r1
3000410c:	f3c1 5180 	ubfx	r1, r1, #22, #1
30004110:	2249      	movs	r2, #73	; 0x49
30004112:	2004      	movs	r0, #4
30004114:	4b4e      	ldr	r3, [pc, #312]	; (30004250 <BOOT_Image1+0x244>)
30004116:	9100      	str	r1, [sp, #0]
30004118:	4947      	ldr	r1, [pc, #284]	; (30004238 <BOOT_Image1+0x22c>)
3000411a:	f005 f917 	bl	3000934c <rtk_log_write>
3000411e:	4b4d      	ldr	r3, [pc, #308]	; (30004254 <BOOT_Image1+0x248>)
30004120:	681b      	ldr	r3, [r3, #0]
30004122:	4798      	blx	r3
30004124:	f7fe ffe8 	bl	300030f8 <BOOT_RccConfig>
30004128:	f7ff f852 	bl	300031d0 <BOOT_CACHEWRR_Set>
3000412c:	4b4a      	ldr	r3, [pc, #296]	; (30004258 <BOOT_Image1+0x24c>)
3000412e:	6818      	ldr	r0, [r3, #0]
30004130:	f7ff f87c 	bl	3000322c <BOOT_TCMSet>
30004134:	4b49      	ldr	r3, [pc, #292]	; (3000425c <BOOT_Image1+0x250>)
30004136:	695b      	ldr	r3, [r3, #20]
30004138:	03db      	lsls	r3, r3, #15
3000413a:	d512      	bpl.n	30004162 <BOOT_Image1+0x156>
3000413c:	f016 011f 	ands.w	r1, r6, #31
30004140:	d136      	bne.n	300041b0 <BOOT_Image1+0x1a4>
30004142:	4633      	mov	r3, r6
30004144:	2174      	movs	r1, #116	; 0x74
30004146:	f3bf 8f4f 	dsb	sy
3000414a:	4844      	ldr	r0, [pc, #272]	; (3000425c <BOOT_Image1+0x250>)
3000414c:	4419      	add	r1, r3
3000414e:	f8c0 3268 	str.w	r3, [r0, #616]	; 0x268
30004152:	3320      	adds	r3, #32
30004154:	1aca      	subs	r2, r1, r3
30004156:	2a00      	cmp	r2, #0
30004158:	dcf9      	bgt.n	3000414e <BOOT_Image1+0x142>
3000415a:	f3bf 8f4f 	dsb	sy
3000415e:	f3bf 8f6f 	isb	sy
30004162:	4a30      	ldr	r2, [pc, #192]	; (30004224 <BOOT_Image1+0x218>)
30004164:	4b30      	ldr	r3, [pc, #192]	; (30004228 <BOOT_Image1+0x21c>)
30004166:	f8c2 6270 	str.w	r6, [r2, #624]	; 0x270
3000416a:	2200      	movs	r2, #0
3000416c:	f8c3 2108 	str.w	r2, [r3, #264]	; 0x108
30004170:	f001 fed4 	bl	30005f1c <flash_highspeed_setup>
30004174:	47a0      	blx	r4
30004176:	2802      	cmp	r0, #2
30004178:	f000 8109 	beq.w	3000438e <BOOT_Image1+0x382>
3000417c:	782b      	ldrb	r3, [r5, #0]
3000417e:	2b00      	cmp	r3, #0
30004180:	d078      	beq.n	30004274 <BOOT_Image1+0x268>
30004182:	4e37      	ldr	r6, [pc, #220]	; (30004260 <BOOT_Image1+0x254>)
30004184:	4d37      	ldr	r5, [pc, #220]	; (30004264 <BOOT_Image1+0x258>)
30004186:	4c2c      	ldr	r4, [pc, #176]	; (30004238 <BOOT_Image1+0x22c>)
30004188:	462b      	mov	r3, r5
3000418a:	2245      	movs	r2, #69	; 0x45
3000418c:	4621      	mov	r1, r4
3000418e:	2002      	movs	r0, #2
30004190:	f005 f8dc 	bl	3000934c <rtk_log_write>
30004194:	f241 3088 	movw	r0, #5000	; 0x1388
30004198:	47b0      	blx	r6
3000419a:	e7f5      	b.n	30004188 <BOOT_Image1+0x17c>
3000419c:	4b1d      	ldr	r3, [pc, #116]	; (30004214 <BOOT_Image1+0x208>)
3000419e:	2001      	movs	r0, #1
300041a0:	4798      	blx	r3
300041a2:	4620      	mov	r0, r4
300041a4:	4b30      	ldr	r3, [pc, #192]	; (30004268 <BOOT_Image1+0x25c>)
300041a6:	4798      	blx	r3
300041a8:	4b30      	ldr	r3, [pc, #192]	; (3000426c <BOOT_Image1+0x260>)
300041aa:	2001      	movs	r0, #1
300041ac:	4798      	blx	r3
300041ae:	e754      	b.n	3000405a <BOOT_Image1+0x4e>
300041b0:	f026 031f 	bic.w	r3, r6, #31
300041b4:	3174      	adds	r1, #116	; 0x74
300041b6:	e7c6      	b.n	30004146 <BOOT_Image1+0x13a>
300041b8:	f8d6 325c 	ldr.w	r3, [r6, #604]	; 0x25c
300041bc:	2201      	movs	r2, #1
300041be:	f04f 4188 	mov.w	r1, #1140850688	; 0x44000000
300041c2:	f423 7398 	bic.w	r3, r3, #304	; 0x130
300041c6:	f8c6 325c 	str.w	r3, [r6, #604]	; 0x25c
300041ca:	4b17      	ldr	r3, [pc, #92]	; (30004228 <BOOT_Image1+0x21c>)
300041cc:	f883 010e 	strb.w	r0, [r3, #270]	; 0x10e
300041d0:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
300041d4:	4b26      	ldr	r3, [pc, #152]	; (30004270 <BOOT_Image1+0x264>)
300041d6:	4798      	blx	r3
300041d8:	f8d6 32fc 	ldr.w	r3, [r6, #764]	; 0x2fc
300041dc:	f043 0302 	orr.w	r3, r3, #2
300041e0:	f8c6 32fc 	str.w	r3, [r6, #764]	; 0x2fc
300041e4:	e770      	b.n	300040c8 <BOOT_Image1+0xbc>
300041e6:	4601      	mov	r1, r0
300041e8:	f44f 7200 	mov.w	r2, #512	; 0x200
300041ec:	480e      	ldr	r0, [pc, #56]	; (30004228 <BOOT_Image1+0x21c>)
300041ee:	47a0      	blx	r4
300041f0:	e71c      	b.n	3000402c <BOOT_Image1+0x20>
300041f2:	bf00      	nop
300041f4:	3000e280 	.word	0x3000e280
300041f8:	3000eb88 	.word	0x3000eb88
300041fc:	00012be5 	.word	0x00012be5
30004200:	0000c179 	.word	0x0000c179
30004204:	2001c00c 	.word	0x2001c00c
30004208:	3000eb0d 	.word	0x3000eb0d
3000420c:	30008b91 	.word	0x30008b91
30004210:	30008909 	.word	0x30008909
30004214:	30008829 	.word	0x30008829
30004218:	42008200 	.word	0x42008200
3000421c:	30009fa9 	.word	0x30009fa9
30004220:	00009b2d 	.word	0x00009b2d
30004224:	42008000 	.word	0x42008000
30004228:	23020000 	.word	0x23020000
3000422c:	40080000 	.word	0x40080000
30004230:	40040000 	.word	0x40040000
30004234:	3000bac4 	.word	0x3000bac4
30004238:	3000b894 	.word	0x3000b894
3000423c:	3000baf0 	.word	0x3000baf0
30004240:	3000bafc 	.word	0x3000bafc
30004244:	3000badc 	.word	0x3000badc
30004248:	2001c01c 	.word	0x2001c01c
3000424c:	3000400d 	.word	0x3000400d
30004250:	3000bb08 	.word	0x3000bb08
30004254:	00033000 	.word	0x00033000
30004258:	3000eb10 	.word	0x3000eb10
3000425c:	e000ed00 	.word	0xe000ed00
30004260:	00009be5 	.word	0x00009be5
30004264:	3000bb40 	.word	0x3000bb40
30004268:	30008a55 	.word	0x30008a55
3000426c:	300089c5 	.word	0x300089c5
30004270:	0000b479 	.word	0x0000b479
30004274:	4b5b      	ldr	r3, [pc, #364]	; (300043e4 <BOOT_Image1+0x3d8>)
30004276:	4798      	blx	r3
30004278:	2801      	cmp	r0, #1
3000427a:	f04f 0249 	mov.w	r2, #73	; 0x49
3000427e:	495a      	ldr	r1, [pc, #360]	; (300043e8 <BOOT_Image1+0x3dc>)
30004280:	bf08      	it	eq
30004282:	4b5a      	ldreq	r3, [pc, #360]	; (300043ec <BOOT_Image1+0x3e0>)
30004284:	f04f 0004 	mov.w	r0, #4
30004288:	bf18      	it	ne
3000428a:	4b59      	ldrne	r3, [pc, #356]	; (300043f0 <BOOT_Image1+0x3e4>)
3000428c:	f005 f85e 	bl	3000934c <rtk_log_write>
30004290:	f7ff f966 	bl	30003560 <BOOT_DDR_Init>
30004294:	4a57      	ldr	r2, [pc, #348]	; (300043f4 <BOOT_Image1+0x3e8>)
30004296:	f8d2 3290 	ldr.w	r3, [r2, #656]	; 0x290
3000429a:	f423 6340 	bic.w	r3, r3, #3072	; 0xc00
3000429e:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
300042a2:	f8c2 3290 	str.w	r3, [r2, #656]	; 0x290
300042a6:	4b53      	ldr	r3, [pc, #332]	; (300043f4 <BOOT_Image1+0x3e8>)
300042a8:	2400      	movs	r4, #0
300042aa:	f8c3 42d0 	str.w	r4, [r3, #720]	; 0x2d0
300042ae:	f8c3 42d4 	str.w	r4, [r3, #724]	; 0x2d4
300042b2:	f8c3 42d8 	str.w	r4, [r3, #728]	; 0x2d8
300042b6:	f8c3 40d0 	str.w	r4, [r3, #208]	; 0xd0
300042ba:	f7ff fe35 	bl	30003f28 <BOOT_Share_Memory_Patch>
300042be:	4b4e      	ldr	r3, [pc, #312]	; (300043f8 <BOOT_Image1+0x3ec>)
300042c0:	4798      	blx	r3
300042c2:	1c45      	adds	r5, r0, #1
300042c4:	4b4d      	ldr	r3, [pc, #308]	; (300043fc <BOOT_Image1+0x3f0>)
300042c6:	2004      	movs	r0, #4
300042c8:	4947      	ldr	r1, [pc, #284]	; (300043e8 <BOOT_Image1+0x3dc>)
300042ca:	2249      	movs	r2, #73	; 0x49
300042cc:	9500      	str	r5, [sp, #0]
300042ce:	f005 f83d 	bl	3000934c <rtk_log_write>
300042d2:	f000 f8b5 	bl	30004440 <BOOT_RAM_TZCfg>
300042d6:	4622      	mov	r2, r4
300042d8:	2101      	movs	r1, #1
300042da:	4849      	ldr	r0, [pc, #292]	; (30004400 <BOOT_Image1+0x3f4>)
300042dc:	4b49      	ldr	r3, [pc, #292]	; (30004404 <BOOT_Image1+0x3f8>)
300042de:	4798      	blx	r3
300042e0:	4b49      	ldr	r3, [pc, #292]	; (30004408 <BOOT_Image1+0x3fc>)
300042e2:	2008      	movs	r0, #8
300042e4:	4798      	blx	r3
300042e6:	f7ff fc63 	bl	30003bb0 <BOOT_Enable_KM0>
300042ea:	4b48      	ldr	r3, [pc, #288]	; (3000440c <BOOT_Image1+0x400>)
300042ec:	781b      	ldrb	r3, [r3, #0]
300042ee:	2b00      	cmp	r3, #0
300042f0:	d067      	beq.n	300043c2 <BOOT_Image1+0x3b6>
300042f2:	f7ff fdcd 	bl	30003e90 <BOOT_Enable_AP>
300042f6:	4a46      	ldr	r2, [pc, #280]	; (30004410 <BOOT_Image1+0x404>)
300042f8:	f892 3066 	ldrb.w	r3, [r2, #102]	; 0x66
300042fc:	f043 0306 	orr.w	r3, r3, #6
30004300:	f882 3066 	strb.w	r3, [r2, #102]	; 0x66
30004304:	4942      	ldr	r1, [pc, #264]	; (30004410 <BOOT_Image1+0x404>)
30004306:	2000      	movs	r0, #0
30004308:	4a42      	ldr	r2, [pc, #264]	; (30004414 <BOOT_Image1+0x408>)
3000430a:	f891 306a 	ldrb.w	r3, [r1, #106]	; 0x6a
3000430e:	4c42      	ldr	r4, [pc, #264]	; (30004418 <BOOT_Image1+0x40c>)
30004310:	f043 0380 	orr.w	r3, r3, #128	; 0x80
30004314:	f881 306a 	strb.w	r3, [r1, #106]	; 0x6a
30004318:	6895      	ldr	r5, [r2, #8]
3000431a:	6813      	ldr	r3, [r2, #0]
3000431c:	606b      	str	r3, [r5, #4]
3000431e:	60a5      	str	r5, [r4, #8]
30004320:	f004 ffc2 	bl	300092a8 <Fault_Hanlder_Redirect>
30004324:	4b3d      	ldr	r3, [pc, #244]	; (3000441c <BOOT_Image1+0x410>)
30004326:	493e      	ldr	r1, [pc, #248]	; (30004420 <BOOT_Image1+0x414>)
30004328:	6a5a      	ldr	r2, [r3, #36]	; 0x24
3000432a:	f442 2270 	orr.w	r2, r2, #983040	; 0xf0000
3000432e:	625a      	str	r2, [r3, #36]	; 0x24
30004330:	6a62      	ldr	r2, [r4, #36]	; 0x24
30004332:	f442 22e0 	orr.w	r2, r2, #458752	; 0x70000
30004336:	6262      	str	r2, [r4, #36]	; 0x24
30004338:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
3000433c:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
30004340:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
30004344:	f8d4 2088 	ldr.w	r2, [r4, #136]	; 0x88
30004348:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
3000434c:	f8c4 2088 	str.w	r2, [r4, #136]	; 0x88
30004350:	f8d3 208c 	ldr.w	r2, [r3, #140]	; 0x8c
30004354:	f442 6240 	orr.w	r2, r2, #3072	; 0xc00
30004358:	f8c3 208c 	str.w	r2, [r3, #140]	; 0x8c
3000435c:	689b      	ldr	r3, [r3, #8]
3000435e:	618b      	str	r3, [r1, #24]
30004360:	f7ff fa88 	bl	30003874 <BOOT_NVICBackup_HP>
30004364:	4b2f      	ldr	r3, [pc, #188]	; (30004424 <BOOT_Image1+0x418>)
30004366:	f383 8888 	msr	MSP_NS, r3
3000436a:	f5a3 6300 	sub.w	r3, r3, #2048	; 0x800
3000436e:	f383 8809 	msr	PSP, r3
30004372:	6869      	ldr	r1, [r5, #4]
30004374:	2004      	movs	r0, #4
30004376:	4b2c      	ldr	r3, [pc, #176]	; (30004428 <BOOT_Image1+0x41c>)
30004378:	2249      	movs	r2, #73	; 0x49
3000437a:	9100      	str	r1, [sp, #0]
3000437c:	491a      	ldr	r1, [pc, #104]	; (300043e8 <BOOT_Image1+0x3dc>)
3000437e:	f004 ffe5 	bl	3000934c <rtk_log_write>
30004382:	6868      	ldr	r0, [r5, #4]
30004384:	b002      	add	sp, #8
30004386:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
3000438a:	f7fe be65 	b.w	30003058 <BOOT_NsStart>
3000438e:	2004      	movs	r0, #4
30004390:	2249      	movs	r2, #73	; 0x49
30004392:	4915      	ldr	r1, [pc, #84]	; (300043e8 <BOOT_Image1+0x3dc>)
30004394:	4b25      	ldr	r3, [pc, #148]	; (3000442c <BOOT_Image1+0x420>)
30004396:	f004 ffd9 	bl	3000934c <rtk_log_write>
3000439a:	4b25      	ldr	r3, [pc, #148]	; (30004430 <BOOT_Image1+0x424>)
3000439c:	4798      	blx	r3
3000439e:	f7ff f91d 	bl	300035dc <BOOT_PSRAM_Init>
300043a2:	7828      	ldrb	r0, [r5, #0]
300043a4:	2800      	cmp	r0, #0
300043a6:	f47f af7e 	bne.w	300042a6 <BOOT_Image1+0x29a>
300043aa:	4b22      	ldr	r3, [pc, #136]	; (30004434 <BOOT_Image1+0x428>)
300043ac:	4798      	blx	r3
300043ae:	2800      	cmp	r0, #0
300043b0:	f43f af79 	beq.w	300042a6 <BOOT_Image1+0x29a>
300043b4:	4b20      	ldr	r3, [pc, #128]	; (30004438 <BOOT_Image1+0x42c>)
300043b6:	2257      	movs	r2, #87	; 0x57
300043b8:	490b      	ldr	r1, [pc, #44]	; (300043e8 <BOOT_Image1+0x3dc>)
300043ba:	2003      	movs	r0, #3
300043bc:	f004 ffc6 	bl	3000934c <rtk_log_write>
300043c0:	e771      	b.n	300042a6 <BOOT_Image1+0x29a>
300043c2:	f04f 4382 	mov.w	r3, #1090519040	; 0x41000000
300043c6:	491d      	ldr	r1, [pc, #116]	; (3000443c <BOOT_Image1+0x430>)
300043c8:	685a      	ldr	r2, [r3, #4]
300043ca:	f042 0202 	orr.w	r2, r2, #2
300043ce:	605a      	str	r2, [r3, #4]
300043d0:	685a      	ldr	r2, [r3, #4]
300043d2:	f042 0230 	orr.w	r2, r2, #48	; 0x30
300043d6:	605a      	str	r2, [r3, #4]
300043d8:	6f8b      	ldr	r3, [r1, #120]	; 0x78
300043da:	f043 0303 	orr.w	r3, r3, #3
300043de:	678b      	str	r3, [r1, #120]	; 0x78
300043e0:	e790      	b.n	30004304 <BOOT_Image1+0x2f8>
300043e2:	bf00      	nop
300043e4:	30009ffd 	.word	0x30009ffd
300043e8:	3000b894 	.word	0x3000b894
300043ec:	3000bb78 	.word	0x3000bb78
300043f0:	3000bb84 	.word	0x3000bb84
300043f4:	42008000 	.word	0x42008000
300043f8:	300055c5 	.word	0x300055c5
300043fc:	3000b8ac 	.word	0x3000b8ac
30004400:	4200c000 	.word	0x4200c000
30004404:	3000a28d 	.word	0x3000a28d
30004408:	0000e1d9 	.word	0x0000e1d9
3000440c:	3000dffa 	.word	0x3000dffa
30004410:	42008200 	.word	0x42008200
30004414:	60000020 	.word	0x60000020
30004418:	e002ed00 	.word	0xe002ed00
3000441c:	e000ed00 	.word	0xe000ed00
30004420:	3000e280 	.word	0x3000e280
30004424:	2001c000 	.word	0x2001c000
30004428:	3000bb90 	.word	0x3000bb90
3000442c:	3000bb20 	.word	0x3000bb20
30004430:	30008111 	.word	0x30008111
30004434:	30008929 	.word	0x30008929
30004438:	3000bb30 	.word	0x3000bb30
3000443c:	41000200 	.word	0x41000200

30004440 <BOOT_RAM_TZCfg>:
30004440:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30004444:	4862      	ldr	r0, [pc, #392]	; (300045d0 <BOOT_RAM_TZCfg+0x190>)
30004446:	b087      	sub	sp, #28
30004448:	4c62      	ldr	r4, [pc, #392]	; (300045d4 <BOOT_RAM_TZCfg+0x194>)
3000444a:	4b63      	ldr	r3, [pc, #396]	; (300045d8 <BOOT_RAM_TZCfg+0x198>)
3000444c:	f10d 0a10 	add.w	sl, sp, #16
30004450:	4962      	ldr	r1, [pc, #392]	; (300045dc <BOOT_RAM_TZCfg+0x19c>)
30004452:	f024 4270 	bic.w	r2, r4, #4026531840	; 0xf0000000
30004456:	f10d 0b08 	add.w	fp, sp, #8
3000445a:	f8df 91b0 	ldr.w	r9, [pc, #432]	; 3000460c <BOOT_RAM_TZCfg+0x1cc>
3000445e:	e9cd 0303 	strd	r0, r3, [sp, #12]
30004462:	485f      	ldr	r0, [pc, #380]	; (300045e0 <BOOT_RAM_TZCfg+0x1a0>)
30004464:	e9cd 2101 	strd	r2, r1, [sp, #4]
30004468:	9005      	str	r0, [sp, #20]
3000446a:	f85a 5b04 	ldr.w	r5, [sl], #4
3000446e:	2400      	movs	r4, #0
30004470:	f85b 6b04 	ldr.w	r6, [fp], #4
30004474:	2701      	movs	r7, #1
30004476:	3504      	adds	r5, #4
30004478:	e00a      	b.n	30004490 <BOOT_RAM_TZCfg+0x50>
3000447a:	f8c8 3004 	str.w	r3, [r8, #4]
3000447e:	6c32      	ldr	r2, [r6, #64]	; 0x40
30004480:	fa07 f304 	lsl.w	r3, r7, r4
30004484:	3401      	adds	r4, #1
30004486:	350c      	adds	r5, #12
30004488:	4313      	orrs	r3, r2
3000448a:	2c08      	cmp	r4, #8
3000448c:	6433      	str	r3, [r6, #64]	; 0x40
3000448e:	d017      	beq.n	300044c0 <BOOT_RAM_TZCfg+0x80>
30004490:	f855 3c04 	ldr.w	r3, [r5, #-4]
30004494:	eb06 08c4 	add.w	r8, r6, r4, lsl #3
30004498:	f023 4270 	bic.w	r2, r3, #4026531840	; 0xf0000000
3000449c:	3301      	adds	r3, #1
3000449e:	d00f      	beq.n	300044c0 <BOOT_RAM_TZCfg+0x80>
300044a0:	f846 2034 	str.w	r2, [r6, r4, lsl #3]
300044a4:	682b      	ldr	r3, [r5, #0]
300044a6:	454b      	cmp	r3, r9
300044a8:	f023 4370 	bic.w	r3, r3, #4026531840	; 0xf0000000
300044ac:	d1e5      	bne.n	3000447a <BOOT_RAM_TZCfg+0x3a>
300044ae:	4b4d      	ldr	r3, [pc, #308]	; (300045e4 <BOOT_RAM_TZCfg+0x1a4>)
300044b0:	4798      	blx	r3
300044b2:	3801      	subs	r0, #1
300044b4:	4949      	ldr	r1, [pc, #292]	; (300045dc <BOOT_RAM_TZCfg+0x19c>)
300044b6:	f020 4070 	bic.w	r0, r0, #4026531840	; 0xf0000000
300044ba:	f8c8 0004 	str.w	r0, [r8, #4]
300044be:	e7de      	b.n	3000447e <BOOT_RAM_TZCfg+0x3e>
300044c0:	428e      	cmp	r6, r1
300044c2:	d074      	beq.n	300045ae <BOOT_RAM_TZCfg+0x16e>
300044c4:	2301      	movs	r3, #1
300044c6:	6473      	str	r3, [r6, #68]	; 0x44
300044c8:	ab04      	add	r3, sp, #16
300044ca:	459b      	cmp	fp, r3
300044cc:	d1cd      	bne.n	3000446a <BOOT_RAM_TZCfg+0x2a>
300044ce:	4b46      	ldr	r3, [pc, #280]	; (300045e8 <BOOT_RAM_TZCfg+0x1a8>)
300044d0:	f46f 3100 	mvn.w	r1, #131072	; 0x20000
300044d4:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
300044d8:	4844      	ldr	r0, [pc, #272]	; (300045ec <BOOT_RAM_TZCfg+0x1ac>)
300044da:	6019      	str	r1, [r3, #0]
300044dc:	2501      	movs	r5, #1
300044de:	605a      	str	r2, [r3, #4]
300044e0:	2100      	movs	r1, #0
300044e2:	4a43      	ldr	r2, [pc, #268]	; (300045f0 <BOOT_RAM_TZCfg+0x1b0>)
300044e4:	4c43      	ldr	r4, [pc, #268]	; (300045f4 <BOOT_RAM_TZCfg+0x1b4>)
300044e6:	f8c0 5398 	str.w	r5, [r0, #920]	; 0x398
300044ea:	6813      	ldr	r3, [r2, #0]
300044ec:	3301      	adds	r3, #1
300044ee:	d019      	beq.n	30004524 <BOOT_RAM_TZCfg+0xe4>
300044f0:	f8c4 10d8 	str.w	r1, [r4, #216]	; 0xd8
300044f4:	320c      	adds	r2, #12
300044f6:	f852 3c0c 	ldr.w	r3, [r2, #-12]
300044fa:	3101      	adds	r1, #1
300044fc:	f023 031f 	bic.w	r3, r3, #31
30004500:	2908      	cmp	r1, #8
30004502:	f8c4 30dc 	str.w	r3, [r4, #220]	; 0xdc
30004506:	e952 0302 	ldrd	r0, r3, [r2, #-8]
3000450a:	ea4f 0343 	mov.w	r3, r3, lsl #1
3000450e:	f020 001f 	bic.w	r0, r0, #31
30004512:	f003 0302 	and.w	r3, r3, #2
30004516:	ea43 0300 	orr.w	r3, r3, r0
3000451a:	f043 0301 	orr.w	r3, r3, #1
3000451e:	f8c4 30e0 	str.w	r3, [r4, #224]	; 0xe0
30004522:	d1e2      	bne.n	300044ea <BOOT_RAM_TZCfg+0xaa>
30004524:	4833      	ldr	r0, [pc, #204]	; (300045f4 <BOOT_RAM_TZCfg+0x1b4>)
30004526:	2201      	movs	r2, #1
30004528:	4b33      	ldr	r3, [pc, #204]	; (300045f8 <BOOT_RAM_TZCfg+0x1b8>)
3000452a:	f8c0 20d0 	str.w	r2, [r0, #208]	; 0xd0
3000452e:	f8d3 3268 	ldr.w	r3, [r3, #616]	; 0x268
30004532:	f013 5300 	ands.w	r3, r3, #536870912	; 0x20000000
30004536:	d11e      	bne.n	30004576 <BOOT_RAM_TZCfg+0x136>
30004538:	f8c0 3084 	str.w	r3, [r0, #132]	; 0x84
3000453c:	f3bf 8f4f 	dsb	sy
30004540:	f8d0 5080 	ldr.w	r5, [r0, #128]	; 0x80
30004544:	f643 76e0 	movw	r6, #16352	; 0x3fe0
30004548:	f3c5 344e 	ubfx	r4, r5, #13, #15
3000454c:	f3c5 05c9 	ubfx	r5, r5, #3, #10
30004550:	0164      	lsls	r4, r4, #5
30004552:	ea04 0106 	and.w	r1, r4, r6
30004556:	462b      	mov	r3, r5
30004558:	ea41 7283 	orr.w	r2, r1, r3, lsl #30
3000455c:	3b01      	subs	r3, #1
3000455e:	f8c0 2274 	str.w	r2, [r0, #628]	; 0x274
30004562:	1c5a      	adds	r2, r3, #1
30004564:	d1f8      	bne.n	30004558 <BOOT_RAM_TZCfg+0x118>
30004566:	3c20      	subs	r4, #32
30004568:	f114 0f20 	cmn.w	r4, #32
3000456c:	d1f1      	bne.n	30004552 <BOOT_RAM_TZCfg+0x112>
3000456e:	f3bf 8f4f 	dsb	sy
30004572:	f3bf 8f6f 	isb	sy
30004576:	4b1f      	ldr	r3, [pc, #124]	; (300045f4 <BOOT_RAM_TZCfg+0x1b4>)
30004578:	f649 75f7 	movw	r5, #40951	; 0x9ff7
3000457c:	491f      	ldr	r1, [pc, #124]	; (300045fc <BOOT_RAM_TZCfg+0x1bc>)
3000457e:	691c      	ldr	r4, [r3, #16]
30004580:	4a1f      	ldr	r2, [pc, #124]	; (30004600 <BOOT_RAM_TZCfg+0x1c0>)
30004582:	f044 0408 	orr.w	r4, r4, #8
30004586:	611c      	str	r4, [r3, #16]
30004588:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
3000458c:	68d8      	ldr	r0, [r3, #12]
3000458e:	4028      	ands	r0, r5
30004590:	4301      	orrs	r1, r0
30004592:	60d9      	str	r1, [r3, #12]
30004594:	f46f 0180 	mvn.w	r1, #4194304	; 0x400000
30004598:	f06f 03c0 	mvn.w	r3, #192	; 0xc0
3000459c:	f8c2 4280 	str.w	r4, [r2, #640]	; 0x280
300045a0:	f8c2 1284 	str.w	r1, [r2, #644]	; 0x284
300045a4:	f8c2 3288 	str.w	r3, [r2, #648]	; 0x288
300045a8:	b007      	add	sp, #28
300045aa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
300045ae:	4b15      	ldr	r3, [pc, #84]	; (30004604 <BOOT_RAM_TZCfg+0x1c4>)
300045b0:	781b      	ldrb	r3, [r3, #0]
300045b2:	2b00      	cmp	r3, #0
300045b4:	d188      	bne.n	300044c8 <BOOT_RAM_TZCfg+0x88>
300045b6:	9b01      	ldr	r3, [sp, #4]
300045b8:	638b      	str	r3, [r1, #56]	; 0x38
300045ba:	4b13      	ldr	r3, [pc, #76]	; (30004608 <BOOT_RAM_TZCfg+0x1c8>)
300045bc:	f023 4370 	bic.w	r3, r3, #4026531840	; 0xf0000000
300045c0:	63cb      	str	r3, [r1, #60]	; 0x3c
300045c2:	6c0b      	ldr	r3, [r1, #64]	; 0x40
300045c4:	f043 0380 	orr.w	r3, r3, #128	; 0x80
300045c8:	640b      	str	r3, [r1, #64]	; 0x40
300045ca:	2301      	movs	r3, #1
300045cc:	644b      	str	r3, [r1, #68]	; 0x44
300045ce:	e77b      	b.n	300044c8 <BOOT_RAM_TZCfg+0x88>
300045d0:	51001200 	.word	0x51001200
300045d4:	70180000 	.word	0x70180000
300045d8:	3000c7bc 	.word	0x3000c7bc
300045dc:	51001a00 	.word	0x51001a00
300045e0:	3000c81c 	.word	0x3000c81c
300045e4:	3000a081 	.word	0x3000a081
300045e8:	51001b00 	.word	0x51001b00
300045ec:	500e0000 	.word	0x500e0000
300045f0:	3000c87c 	.word	0x3000c87c
300045f4:	e000ed00 	.word	0xe000ed00
300045f8:	42008000 	.word	0x42008000
300045fc:	05fa6000 	.word	0x05fa6000
30004600:	e000e100 	.word	0xe000e100
30004604:	3000dffa 	.word	0x3000dffa
30004608:	704fffff 	.word	0x704fffff
3000460c:	607fffff 	.word	0x607fffff

30004610 <BOOT_SbootEn_Check>:
30004610:	b570      	push	{r4, r5, r6, lr}
30004612:	4b1d      	ldr	r3, [pc, #116]	; (30004688 <BOOT_SbootEn_Check+0x78>)
30004614:	4604      	mov	r4, r0
30004616:	4798      	blx	r3
30004618:	b1c0      	cbz	r0, 3000464c <BOOT_SbootEn_Check+0x3c>
3000461a:	4b1c      	ldr	r3, [pc, #112]	; (3000468c <BOOT_SbootEn_Check+0x7c>)
3000461c:	4798      	blx	r3
3000461e:	4d1c      	ldr	r5, [pc, #112]	; (30004690 <BOOT_SbootEn_Check+0x80>)
30004620:	2320      	movs	r3, #32
30004622:	4e1c      	ldr	r6, [pc, #112]	; (30004694 <BOOT_SbootEn_Check+0x84>)
30004624:	f000 011f 	and.w	r1, r0, #31
30004628:	f04f 0c01 	mov.w	ip, #1
3000462c:	5d8a      	ldrb	r2, [r1, r6]
3000462e:	3b01      	subs	r3, #1
30004630:	1c48      	adds	r0, r1, #1
30004632:	b2d2      	uxtb	r2, r2
30004634:	2aff      	cmp	r2, #255	; 0xff
30004636:	5462      	strb	r2, [r4, r1]
30004638:	f000 011f 	and.w	r1, r0, #31
3000463c:	bf18      	it	ne
3000463e:	f885 c000 	strbne.w	ip, [r5]
30004642:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
30004646:	d1f1      	bne.n	3000462c <BOOT_SbootEn_Check+0x1c>
30004648:	7828      	ldrb	r0, [r5, #0]
3000464a:	bd70      	pop	{r4, r5, r6, pc}
3000464c:	4b12      	ldr	r3, [pc, #72]	; (30004698 <BOOT_SbootEn_Check+0x88>)
3000464e:	4798      	blx	r3
30004650:	b910      	cbnz	r0, 30004658 <BOOT_SbootEn_Check+0x48>
30004652:	4b0f      	ldr	r3, [pc, #60]	; (30004690 <BOOT_SbootEn_Check+0x80>)
30004654:	7818      	ldrb	r0, [r3, #0]
30004656:	bd70      	pop	{r4, r5, r6, pc}
30004658:	2201      	movs	r2, #1
3000465a:	4d0d      	ldr	r5, [pc, #52]	; (30004690 <BOOT_SbootEn_Check+0x80>)
3000465c:	4b0b      	ldr	r3, [pc, #44]	; (3000468c <BOOT_SbootEn_Check+0x7c>)
3000465e:	702a      	strb	r2, [r5, #0]
30004660:	4798      	blx	r3
30004662:	4e0e      	ldr	r6, [pc, #56]	; (3000469c <BOOT_SbootEn_Check+0x8c>)
30004664:	2320      	movs	r3, #32
30004666:	f000 021f 	and.w	r2, r0, #31
3000466a:	6831      	ldr	r1, [r6, #0]
3000466c:	3b01      	subs	r3, #1
3000466e:	1c50      	adds	r0, r2, #1
30004670:	f101 4184 	add.w	r1, r1, #1107296256	; 0x42000000
30004674:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
30004678:	5c89      	ldrb	r1, [r1, r2]
3000467a:	54a1      	strb	r1, [r4, r2]
3000467c:	f000 021f 	and.w	r2, r0, #31
30004680:	d1f3      	bne.n	3000466a <BOOT_SbootEn_Check+0x5a>
30004682:	7828      	ldrb	r0, [r5, #0]
30004684:	e7e1      	b.n	3000464a <BOOT_SbootEn_Check+0x3a>
30004686:	bf00      	nop
30004688:	0000c2a1 	.word	0x0000c2a1
3000468c:	0000ea4d 	.word	0x0000ea4d
30004690:	3000e2f0 	.word	0x3000e2f0
30004694:	42000720 	.word	0x42000720
30004698:	0000c149 	.word	0x0000c149
3000469c:	3000e0e0 	.word	0x3000e0e0

300046a0 <BOOT_LoadRDPImg>:
300046a0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
300046a4:	4b49      	ldr	r3, [pc, #292]	; (300047cc <BOOT_LoadRDPImg+0x12c>)
300046a6:	b0d9      	sub	sp, #356	; 0x164
300046a8:	468b      	mov	fp, r1
300046aa:	4690      	mov	r8, r2
300046ac:	4605      	mov	r5, r0
300046ae:	2400      	movs	r4, #0
300046b0:	2202      	movs	r2, #2
300046b2:	e893 0003 	ldmia.w	r3, {r0, r1}
300046b6:	ab06      	add	r3, sp, #24
300046b8:	e883 0003 	stmia.w	r3, {r0, r1}
300046bc:	4641      	mov	r1, r8
300046be:	4658      	mov	r0, fp
300046c0:	9400      	str	r4, [sp, #0]
300046c2:	f000 fc5f 	bl	30004f84 <BOOT_LoadSubImage>
300046c6:	2801      	cmp	r0, #1
300046c8:	d06f      	beq.n	300047aa <BOOT_LoadRDPImg+0x10a>
300046ca:	4b41      	ldr	r3, [pc, #260]	; (300047d0 <BOOT_LoadRDPImg+0x130>)
300046cc:	4620      	mov	r0, r4
300046ce:	4798      	blx	r3
300046d0:	2101      	movs	r1, #1
300046d2:	4b40      	ldr	r3, [pc, #256]	; (300047d4 <BOOT_LoadRDPImg+0x134>)
300046d4:	4620      	mov	r0, r4
300046d6:	4798      	blx	r3
300046d8:	4b3f      	ldr	r3, [pc, #252]	; (300047d8 <BOOT_LoadRDPImg+0x138>)
300046da:	2120      	movs	r1, #32
300046dc:	a810      	add	r0, sp, #64	; 0x40
300046de:	f8df a110 	ldr.w	sl, [pc, #272]	; 300047f0 <BOOT_LoadRDPImg+0x150>
300046e2:	af08      	add	r7, sp, #32
300046e4:	9404      	str	r4, [sp, #16]
300046e6:	4798      	blx	r3
300046e8:	f105 0120 	add.w	r1, r5, #32
300046ec:	2210      	movs	r2, #16
300046ee:	a80c      	add	r0, sp, #48	; 0x30
300046f0:	f8df 9100 	ldr.w	r9, [pc, #256]	; 300047f4 <BOOT_LoadRDPImg+0x154>
300046f4:	47d0      	blx	sl
300046f6:	ab06      	add	r3, sp, #24
300046f8:	9305      	str	r3, [sp, #20]
300046fa:	2210      	movs	r2, #16
300046fc:	4641      	mov	r1, r8
300046fe:	a818      	add	r0, sp, #96	; 0x60
30004700:	f000 fb72 	bl	30004de8 <BOOT_ImgCopy>
30004704:	2310      	movs	r3, #16
30004706:	aa0c      	add	r2, sp, #48	; 0x30
30004708:	a818      	add	r0, sp, #96	; 0x60
3000470a:	4619      	mov	r1, r3
3000470c:	9700      	str	r7, [sp, #0]
3000470e:	47c8      	blx	r9
30004710:	683b      	ldr	r3, [r7, #0]
30004712:	4a32      	ldr	r2, [pc, #200]	; (300047dc <BOOT_LoadRDPImg+0x13c>)
30004714:	4293      	cmp	r3, r2
30004716:	d14c      	bne.n	300047b2 <BOOT_LoadRDPImg+0x112>
30004718:	9905      	ldr	r1, [sp, #20]
3000471a:	687b      	ldr	r3, [r7, #4]
3000471c:	f851 2b04 	ldr.w	r2, [r1], #4
30004720:	9105      	str	r1, [sp, #20]
30004722:	492f      	ldr	r1, [pc, #188]	; (300047e0 <BOOT_LoadRDPImg+0x140>)
30004724:	428b      	cmp	r3, r1
30004726:	d144      	bne.n	300047b2 <BOOT_LoadRDPImg+0x112>
30004728:	9200      	str	r2, [sp, #0]
3000472a:	2004      	movs	r0, #4
3000472c:	68fe      	ldr	r6, [r7, #12]
3000472e:	2249      	movs	r2, #73	; 0x49
30004730:	4b2c      	ldr	r3, [pc, #176]	; (300047e4 <BOOT_LoadRDPImg+0x144>)
30004732:	3e20      	subs	r6, #32
30004734:	492c      	ldr	r1, [pc, #176]	; (300047e8 <BOOT_LoadRDPImg+0x148>)
30004736:	9601      	str	r6, [sp, #4]
30004738:	68bd      	ldr	r5, [r7, #8]
3000473a:	3520      	adds	r5, #32
3000473c:	9502      	str	r5, [sp, #8]
3000473e:	f004 fe05 	bl	3000934c <rtk_log_write>
30004742:	f1bb 0f00 	cmp.w	fp, #0
30004746:	d006      	beq.n	30004756 <BOOT_LoadRDPImg+0xb6>
30004748:	9a04      	ldr	r2, [sp, #16]
3000474a:	f10b 0304 	add.w	r3, fp, #4
3000474e:	f84b 6032 	str.w	r6, [fp, r2, lsl #3]
30004752:	f843 5032 	str.w	r5, [r3, r2, lsl #3]
30004756:	b1dd      	cbz	r5, 30004790 <BOOT_LoadRDPImg+0xf0>
30004758:	f5b5 7f80 	cmp.w	r5, #256	; 0x100
3000475c:	462c      	mov	r4, r5
3000475e:	4641      	mov	r1, r8
30004760:	a818      	add	r0, sp, #96	; 0x60
30004762:	bf28      	it	cs
30004764:	f44f 7480 	movcs.w	r4, #256	; 0x100
30004768:	4622      	mov	r2, r4
3000476a:	44a0      	add	r8, r4
3000476c:	f000 fb3c 	bl	30004de8 <BOOT_ImgCopy>
30004770:	2310      	movs	r3, #16
30004772:	aa0c      	add	r2, sp, #48	; 0x30
30004774:	4621      	mov	r1, r4
30004776:	9600      	str	r6, [sp, #0]
30004778:	a818      	add	r0, sp, #96	; 0x60
3000477a:	47c8      	blx	r9
3000477c:	ab18      	add	r3, sp, #96	; 0x60
3000477e:	f1a4 0110 	sub.w	r1, r4, #16
30004782:	2210      	movs	r2, #16
30004784:	a80c      	add	r0, sp, #48	; 0x30
30004786:	4426      	add	r6, r4
30004788:	4419      	add	r1, r3
3000478a:	47d0      	blx	sl
3000478c:	1b2d      	subs	r5, r5, r4
3000478e:	d1e3      	bne.n	30004758 <BOOT_LoadRDPImg+0xb8>
30004790:	9b04      	ldr	r3, [sp, #16]
30004792:	b13b      	cbz	r3, 300047a4 <BOOT_LoadRDPImg+0x104>
30004794:	2100      	movs	r1, #0
30004796:	4b0f      	ldr	r3, [pc, #60]	; (300047d4 <BOOT_LoadRDPImg+0x134>)
30004798:	4608      	mov	r0, r1
3000479a:	4798      	blx	r3
3000479c:	2002      	movs	r0, #2
3000479e:	b059      	add	sp, #356	; 0x164
300047a0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
300047a4:	2301      	movs	r3, #1
300047a6:	9304      	str	r3, [sp, #16]
300047a8:	e7a7      	b.n	300046fa <BOOT_LoadRDPImg+0x5a>
300047aa:	2002      	movs	r0, #2
300047ac:	b059      	add	sp, #356	; 0x164
300047ae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
300047b2:	9b04      	ldr	r3, [sp, #16]
300047b4:	aa06      	add	r2, sp, #24
300047b6:	2002      	movs	r0, #2
300047b8:	490b      	ldr	r1, [pc, #44]	; (300047e8 <BOOT_LoadRDPImg+0x148>)
300047ba:	f852 4023 	ldr.w	r4, [r2, r3, lsl #2]
300047be:	2245      	movs	r2, #69	; 0x45
300047c0:	4b0a      	ldr	r3, [pc, #40]	; (300047ec <BOOT_LoadRDPImg+0x14c>)
300047c2:	9400      	str	r4, [sp, #0]
300047c4:	f004 fdc2 	bl	3000934c <rtk_log_write>
300047c8:	2000      	movs	r0, #0
300047ca:	e7e8      	b.n	3000479e <BOOT_LoadRDPImg+0xfe>
300047cc:	3000bcb0 	.word	0x3000bcb0
300047d0:	00002429 	.word	0x00002429
300047d4:	00002479 	.word	0x00002479
300047d8:	00004641 	.word	0x00004641
300047dc:	35393138 	.word	0x35393138
300047e0:	31313738 	.word	0x31313738
300047e4:	3000bc0c 	.word	0x3000bc0c
300047e8:	3000b894 	.word	0x3000b894
300047ec:	3000bc00 	.word	0x3000bc00
300047f0:	00012a1d 	.word	0x00012a1d
300047f4:	000046f5 	.word	0x000046f5

300047f8 <_BOOT_Validate_ImgHash>:
300047f8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
300047fc:	f5ad 7d51 	sub.w	sp, sp, #836	; 0x344
30004800:	4605      	mov	r5, r0
30004802:	4690      	mov	r8, r2
30004804:	461c      	mov	r4, r3
30004806:	9103      	str	r1, [sp, #12]
30004808:	2100      	movs	r1, #0
3000480a:	22e0      	movs	r2, #224	; 0xe0
3000480c:	4b8a      	ldr	r3, [pc, #552]	; (30004a38 <_BOOT_Validate_ImgHash+0x240>)
3000480e:	a818      	add	r0, sp, #96	; 0x60
30004810:	f88d 101f 	strb.w	r1, [sp, #31]
30004814:	4798      	blx	r3
30004816:	4628      	mov	r0, r5
30004818:	f10d 021f 	add.w	r2, sp, #31
3000481c:	f10d 011e 	add.w	r1, sp, #30
30004820:	f007 f826 	bl	3000b870 <__SBOOT_GetMdType_veneer>
30004824:	9001      	str	r0, [sp, #4]
30004826:	2800      	cmp	r0, #0
30004828:	d166      	bne.n	300048f8 <_BOOT_Validate_ImgHash+0x100>
3000482a:	f89d 301f 	ldrb.w	r3, [sp, #31]
3000482e:	2b00      	cmp	r3, #0
30004830:	d067      	beq.n	30004902 <_BOOT_Validate_ImgHash+0x10a>
30004832:	2101      	movs	r1, #1
30004834:	4605      	mov	r5, r0
30004836:	4b81      	ldr	r3, [pc, #516]	; (30004a3c <_BOOT_Validate_ImgHash+0x244>)
30004838:	4608      	mov	r0, r1
3000483a:	4798      	blx	r3
3000483c:	4629      	mov	r1, r5
3000483e:	ab18      	add	r3, sp, #96	; 0x60
30004840:	2220      	movs	r2, #32
30004842:	f89d 001e 	ldrb.w	r0, [sp, #30]
30004846:	4d7e      	ldr	r5, [pc, #504]	; (30004a40 <_BOOT_Validate_ImgHash+0x248>)
30004848:	47a8      	blx	r5
3000484a:	2800      	cmp	r0, #0
3000484c:	f040 808b 	bne.w	30004966 <_BOOT_Validate_ImgHash+0x16e>
30004850:	b32c      	cbz	r4, 3000489e <_BOOT_Validate_ImgHash+0xa6>
30004852:	aad0      	add	r2, sp, #832	; 0x340
30004854:	1e63      	subs	r3, r4, #1
30004856:	ae50      	add	r6, sp, #320	; 0x140
30004858:	f8df a1fc 	ldr.w	sl, [pc, #508]	; 30004a58 <_BOOT_Validate_ImgHash+0x260>
3000485c:	f012 0218 	ands.w	r2, r2, #24
30004860:	b2db      	uxtb	r3, r3
30004862:	f026 091f 	bic.w	r9, r6, #31
30004866:	4d77      	ldr	r5, [pc, #476]	; (30004a44 <_BOOT_Validate_ImgHash+0x24c>)
30004868:	9204      	str	r2, [sp, #16]
3000486a:	f108 0208 	add.w	r2, r8, #8
3000486e:	bf08      	it	eq
30004870:	46b1      	moveq	r9, r6
30004872:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
30004876:	9302      	str	r3, [sp, #8]
30004878:	e9d8 b700 	ldrd	fp, r7, [r8]
3000487c:	f10b 4278 	add.w	r2, fp, #4160749568	; 0xf8000000
30004880:	f1b2 6f00 	cmp.w	r2, #134217728	; 0x8000000
30004884:	f0c0 80a7 	bcc.w	300049d6 <_BOOT_Validate_ImgHash+0x1de>
30004888:	4639      	mov	r1, r7
3000488a:	4658      	mov	r0, fp
3000488c:	aa18      	add	r2, sp, #96	; 0x60
3000488e:	47d0      	blx	sl
30004890:	2800      	cmp	r0, #0
30004892:	d168      	bne.n	30004966 <_BOOT_Validate_ImgHash+0x16e>
30004894:	f108 0808 	add.w	r8, r8, #8
30004898:	9b02      	ldr	r3, [sp, #8]
3000489a:	4543      	cmp	r3, r8
3000489c:	d1ec      	bne.n	30004878 <_BOOT_Validate_ImgHash+0x80>
3000489e:	ac08      	add	r4, sp, #32
300048a0:	a918      	add	r1, sp, #96	; 0x60
300048a2:	4b69      	ldr	r3, [pc, #420]	; (30004a48 <_BOOT_Validate_ImgHash+0x250>)
300048a4:	4620      	mov	r0, r4
300048a6:	4798      	blx	r3
300048a8:	4601      	mov	r1, r0
300048aa:	2800      	cmp	r0, #0
300048ac:	d15b      	bne.n	30004966 <_BOOT_Validate_ImgHash+0x16e>
300048ae:	2001      	movs	r0, #1
300048b0:	4b62      	ldr	r3, [pc, #392]	; (30004a3c <_BOOT_Validate_ImgHash+0x244>)
300048b2:	4798      	blx	r3
300048b4:	f89d 501e 	ldrb.w	r5, [sp, #30]
300048b8:	4b64      	ldr	r3, [pc, #400]	; (30004a4c <_BOOT_Validate_ImgHash+0x254>)
300048ba:	4798      	blx	r3
300048bc:	fbb0 f3f5 	udiv	r3, r0, r5
300048c0:	fb03 0315 	mls	r3, r3, r5, r0
300048c4:	b2db      	uxtb	r3, r3
300048c6:	b1bd      	cbz	r5, 300048f8 <_BOOT_Validate_ImgHash+0x100>
300048c8:	2000      	movs	r0, #0
300048ca:	9f03      	ldr	r7, [sp, #12]
300048cc:	4606      	mov	r6, r0
300048ce:	1c5a      	adds	r2, r3, #1
300048d0:	5cf9      	ldrb	r1, [r7, r3]
300048d2:	5ce3      	ldrb	r3, [r4, r3]
300048d4:	3001      	adds	r0, #1
300048d6:	b2d2      	uxtb	r2, r2
300048d8:	404b      	eors	r3, r1
300048da:	431e      	orrs	r6, r3
300048dc:	fbb2 f3f5 	udiv	r3, r2, r5
300048e0:	fb05 2213 	mls	r2, r5, r3, r2
300048e4:	b2d3      	uxtb	r3, r2
300048e6:	b2c2      	uxtb	r2, r0
300048e8:	4295      	cmp	r5, r2
300048ea:	d8f0      	bhi.n	300048ce <_BOOT_Validate_ImgHash+0xd6>
300048ec:	2e00      	cmp	r6, #0
300048ee:	9b01      	ldr	r3, [sp, #4]
300048f0:	bf18      	it	ne
300048f2:	f06f 0306 	mvnne.w	r3, #6
300048f6:	9301      	str	r3, [sp, #4]
300048f8:	9801      	ldr	r0, [sp, #4]
300048fa:	f50d 7d51 	add.w	sp, sp, #836	; 0x344
300048fe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30004902:	a918      	add	r1, sp, #96	; 0x60
30004904:	f89d 001e 	ldrb.w	r0, [sp, #30]
30004908:	4b51      	ldr	r3, [pc, #324]	; (30004a50 <_BOOT_Validate_ImgHash+0x258>)
3000490a:	4798      	blx	r3
3000490c:	bb58      	cbnz	r0, 30004966 <_BOOT_Validate_ImgHash+0x16e>
3000490e:	b31c      	cbz	r4, 30004958 <_BOOT_Validate_ImgHash+0x160>
30004910:	aad0      	add	r2, sp, #832	; 0x340
30004912:	1e63      	subs	r3, r4, #1
30004914:	ae50      	add	r6, sp, #320	; 0x140
30004916:	f8df a144 	ldr.w	sl, [pc, #324]	; 30004a5c <_BOOT_Validate_ImgHash+0x264>
3000491a:	f012 0218 	ands.w	r2, r2, #24
3000491e:	b2db      	uxtb	r3, r3
30004920:	f026 091f 	bic.w	r9, r6, #31
30004924:	4d47      	ldr	r5, [pc, #284]	; (30004a44 <_BOOT_Validate_ImgHash+0x24c>)
30004926:	9204      	str	r2, [sp, #16]
30004928:	f108 0208 	add.w	r2, r8, #8
3000492c:	bf08      	it	eq
3000492e:	46b1      	moveq	r9, r6
30004930:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
30004934:	9302      	str	r3, [sp, #8]
30004936:	e9d8 b700 	ldrd	fp, r7, [r8]
3000493a:	f10b 4278 	add.w	r2, fp, #4160749568	; 0xf8000000
3000493e:	f1b2 6f00 	cmp.w	r2, #134217728	; 0x8000000
30004942:	d318      	bcc.n	30004976 <_BOOT_Validate_ImgHash+0x17e>
30004944:	4639      	mov	r1, r7
30004946:	4658      	mov	r0, fp
30004948:	aa18      	add	r2, sp, #96	; 0x60
3000494a:	47d0      	blx	sl
3000494c:	b958      	cbnz	r0, 30004966 <_BOOT_Validate_ImgHash+0x16e>
3000494e:	f108 0808 	add.w	r8, r8, #8
30004952:	9b02      	ldr	r3, [sp, #8]
30004954:	4543      	cmp	r3, r8
30004956:	d1ee      	bne.n	30004936 <_BOOT_Validate_ImgHash+0x13e>
30004958:	ac08      	add	r4, sp, #32
3000495a:	a918      	add	r1, sp, #96	; 0x60
3000495c:	4b3d      	ldr	r3, [pc, #244]	; (30004a54 <_BOOT_Validate_ImgHash+0x25c>)
3000495e:	4620      	mov	r0, r4
30004960:	4798      	blx	r3
30004962:	2800      	cmp	r0, #0
30004964:	d0a6      	beq.n	300048b4 <_BOOT_Validate_ImgHash+0xbc>
30004966:	f06f 030a 	mvn.w	r3, #10
3000496a:	9301      	str	r3, [sp, #4]
3000496c:	9801      	ldr	r0, [sp, #4]
3000496e:	f50d 7d51 	add.w	sp, sp, #836	; 0x344
30004972:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30004976:	2f00      	cmp	r7, #0
30004978:	d0e9      	beq.n	3000494e <_BOOT_Validate_ImgHash+0x156>
3000497a:	9c04      	ldr	r4, [sp, #16]
3000497c:	f8cd 8014 	str.w	r8, [sp, #20]
30004980:	f5b7 7f00 	cmp.w	r7, #512	; 0x200
30004984:	46b8      	mov	r8, r7
30004986:	4659      	mov	r1, fp
30004988:	4630      	mov	r0, r6
3000498a:	bf28      	it	cs
3000498c:	f44f 7800 	movcs.w	r8, #512	; 0x200
30004990:	4642      	mov	r2, r8
30004992:	f000 fa29 	bl	30004de8 <BOOT_ImgCopy>
30004996:	696a      	ldr	r2, [r5, #20]
30004998:	03d3      	lsls	r3, r2, #15
3000499a:	d50f      	bpl.n	300049bc <_BOOT_Validate_ImgHash+0x1c4>
3000499c:	eb08 0004 	add.w	r0, r8, r4
300049a0:	f3bf 8f4f 	dsb	sy
300049a4:	4448      	add	r0, r9
300049a6:	464a      	mov	r2, r9
300049a8:	f8c5 2270 	str.w	r2, [r5, #624]	; 0x270
300049ac:	3220      	adds	r2, #32
300049ae:	1a83      	subs	r3, r0, r2
300049b0:	2b00      	cmp	r3, #0
300049b2:	dcf9      	bgt.n	300049a8 <_BOOT_Validate_ImgHash+0x1b0>
300049b4:	f3bf 8f4f 	dsb	sy
300049b8:	f3bf 8f6f 	isb	sy
300049bc:	aa18      	add	r2, sp, #96	; 0x60
300049be:	4641      	mov	r1, r8
300049c0:	4630      	mov	r0, r6
300049c2:	47d0      	blx	sl
300049c4:	2800      	cmp	r0, #0
300049c6:	d1ce      	bne.n	30004966 <_BOOT_Validate_ImgHash+0x16e>
300049c8:	ebb7 0708 	subs.w	r7, r7, r8
300049cc:	44c3      	add	fp, r8
300049ce:	d1d7      	bne.n	30004980 <_BOOT_Validate_ImgHash+0x188>
300049d0:	f8dd 8014 	ldr.w	r8, [sp, #20]
300049d4:	e7bb      	b.n	3000494e <_BOOT_Validate_ImgHash+0x156>
300049d6:	2f00      	cmp	r7, #0
300049d8:	f43f af5c 	beq.w	30004894 <_BOOT_Validate_ImgHash+0x9c>
300049dc:	9c04      	ldr	r4, [sp, #16]
300049de:	f8cd 8014 	str.w	r8, [sp, #20]
300049e2:	f5b7 7f00 	cmp.w	r7, #512	; 0x200
300049e6:	46b8      	mov	r8, r7
300049e8:	4659      	mov	r1, fp
300049ea:	4630      	mov	r0, r6
300049ec:	bf28      	it	cs
300049ee:	f44f 7800 	movcs.w	r8, #512	; 0x200
300049f2:	4642      	mov	r2, r8
300049f4:	f000 f9f8 	bl	30004de8 <BOOT_ImgCopy>
300049f8:	696a      	ldr	r2, [r5, #20]
300049fa:	03d2      	lsls	r2, r2, #15
300049fc:	d50f      	bpl.n	30004a1e <_BOOT_Validate_ImgHash+0x226>
300049fe:	eb08 0004 	add.w	r0, r8, r4
30004a02:	f3bf 8f4f 	dsb	sy
30004a06:	4448      	add	r0, r9
30004a08:	464a      	mov	r2, r9
30004a0a:	f8c5 2270 	str.w	r2, [r5, #624]	; 0x270
30004a0e:	3220      	adds	r2, #32
30004a10:	1a83      	subs	r3, r0, r2
30004a12:	2b00      	cmp	r3, #0
30004a14:	dcf9      	bgt.n	30004a0a <_BOOT_Validate_ImgHash+0x212>
30004a16:	f3bf 8f4f 	dsb	sy
30004a1a:	f3bf 8f6f 	isb	sy
30004a1e:	aa18      	add	r2, sp, #96	; 0x60
30004a20:	4641      	mov	r1, r8
30004a22:	4630      	mov	r0, r6
30004a24:	47d0      	blx	sl
30004a26:	2800      	cmp	r0, #0
30004a28:	d19d      	bne.n	30004966 <_BOOT_Validate_ImgHash+0x16e>
30004a2a:	ebb7 0708 	subs.w	r7, r7, r8
30004a2e:	44c3      	add	fp, r8
30004a30:	d1d7      	bne.n	300049e2 <_BOOT_Validate_ImgHash+0x1ea>
30004a32:	f8dd 8014 	ldr.w	r8, [sp, #20]
30004a36:	e72d      	b.n	30004894 <_BOOT_Validate_ImgHash+0x9c>
30004a38:	00012be5 	.word	0x00012be5
30004a3c:	000024dd 	.word	0x000024dd
30004a40:	3000b165 	.word	0x3000b165
30004a44:	e000ed00 	.word	0xe000ed00
30004a48:	00005bb9 	.word	0x00005bb9
30004a4c:	0000ea4d 	.word	0x0000ea4d
30004a50:	00004ffd 	.word	0x00004ffd
30004a54:	000053f1 	.word	0x000053f1
30004a58:	00005b4d 	.word	0x00005b4d
30004a5c:	00005385 	.word	0x00005385

30004a60 <BOOT_Validate_ImgHash>:
30004a60:	b530      	push	{r4, r5, lr}
30004a62:	b085      	sub	sp, #20
30004a64:	4d0a      	ldr	r5, [pc, #40]	; (30004a90 <BOOT_Validate_ImgHash+0x30>)
30004a66:	4604      	mov	r4, r0
30004a68:	9301      	str	r3, [sp, #4]
30004a6a:	e9cd 2102 	strd	r2, r1, [sp, #8]
30004a6e:	47a8      	blx	r5
30004a70:	9903      	ldr	r1, [sp, #12]
30004a72:	e9dd 3201 	ldrd	r3, r2, [sp, #4]
30004a76:	b128      	cbz	r0, 30004a84 <BOOT_Validate_ImgHash+0x24>
30004a78:	4620      	mov	r0, r4
30004a7a:	b005      	add	sp, #20
30004a7c:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
30004a80:	f006 befa 	b.w	3000b878 <__SBOOT_Validate_ImgHash_veneer>
30004a84:	4620      	mov	r0, r4
30004a86:	b005      	add	sp, #20
30004a88:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
30004a8c:	f7ff beb4 	b.w	300047f8 <_BOOT_Validate_ImgHash>
30004a90:	3000a5bd 	.word	0x3000a5bd

30004a94 <BOOT_SignatureCheck>:
30004a94:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
30004a98:	4616      	mov	r6, r2
30004a9a:	b089      	sub	sp, #36	; 0x24
30004a9c:	4a77      	ldr	r2, [pc, #476]	; (30004c7c <BOOT_SignatureCheck+0x1e8>)
30004a9e:	4698      	mov	r8, r3
30004aa0:	4b77      	ldr	r3, [pc, #476]	; (30004c80 <BOOT_SignatureCheck+0x1ec>)
30004aa2:	4607      	mov	r7, r0
30004aa4:	460d      	mov	r5, r1
30004aa6:	7814      	ldrb	r4, [r2, #0]
30004aa8:	f10d 0c20 	add.w	ip, sp, #32
30004aac:	f8dd 9040 	ldr.w	r9, [sp, #64]	; 0x40
30004ab0:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
30004ab2:	e90c 000f 	stmdb	ip, {r0, r1, r2, r3}
30004ab6:	b91c      	cbnz	r4, 30004ac0 <BOOT_SignatureCheck+0x2c>
30004ab8:	2001      	movs	r0, #1
30004aba:	b009      	add	sp, #36	; 0x24
30004abc:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
30004ac0:	4b70      	ldr	r3, [pc, #448]	; (30004c84 <BOOT_SignatureCheck+0x1f0>)
30004ac2:	2000      	movs	r0, #0
30004ac4:	4798      	blx	r3
30004ac6:	7cfb      	ldrb	r3, [r7, #19]
30004ac8:	7cba      	ldrb	r2, [r7, #18]
30004aca:	f10d 010f 	add.w	r1, sp, #15
30004ace:	f10d 000e 	add.w	r0, sp, #14
30004ad2:	f006 fec9 	bl	3000b868 <__SBOOT_Validate_Algorithm_veneer>
30004ad6:	bb00      	cbnz	r0, 30004b1a <BOOT_SignatureCheck+0x86>
30004ad8:	f8d8 101c 	ldr.w	r1, [r8, #28]
30004adc:	2900      	cmp	r1, #0
30004ade:	f000 80cb 	beq.w	30004c78 <BOOT_SignatureCheck+0x1e4>
30004ae2:	4604      	mov	r4, r0
30004ae4:	e002      	b.n	30004aec <BOOT_SignatureCheck+0x58>
30004ae6:	b2d4      	uxtb	r4, r2
30004ae8:	428c      	cmp	r4, r1
30004aea:	d208      	bcs.n	30004afe <BOOT_SignatureCheck+0x6a>
30004aec:	eb04 03c4 	add.w	r3, r4, r4, lsl #3
30004af0:	1c62      	adds	r2, r4, #1
30004af2:	eb08 0383 	add.w	r3, r8, r3, lsl #2
30004af6:	f8d3 30b0 	ldr.w	r3, [r3, #176]	; 0xb0
30004afa:	454b      	cmp	r3, r9
30004afc:	d1f3      	bne.n	30004ae6 <BOOT_SignatureCheck+0x52>
30004afe:	2224      	movs	r2, #36	; 0x24
30004b00:	23b4      	movs	r3, #180	; 0xb4
30004b02:	fb12 3204 	smlabb	r2, r2, r4, r3
30004b06:	4442      	add	r2, r8
30004b08:	f107 0870 	add.w	r8, r7, #112	; 0x70
30004b0c:	f89d 000e 	ldrb.w	r0, [sp, #14]
30004b10:	4641      	mov	r1, r8
30004b12:	f006 fea5 	bl	3000b860 <__SBOOT_Validate_PubKey_veneer>
30004b16:	2800      	cmp	r0, #0
30004b18:	d078      	beq.n	30004c0c <BOOT_SignatureCheck+0x178>
30004b1a:	7c7a      	ldrb	r2, [r7, #17]
30004b1c:	a908      	add	r1, sp, #32
30004b1e:	9001      	str	r0, [sp, #4]
30004b20:	2002      	movs	r0, #2
30004b22:	eb01 0282 	add.w	r2, r1, r2, lsl #2
30004b26:	4b58      	ldr	r3, [pc, #352]	; (30004c88 <BOOT_SignatureCheck+0x1f4>)
30004b28:	4958      	ldr	r1, [pc, #352]	; (30004c8c <BOOT_SignatureCheck+0x1f8>)
30004b2a:	f852 2c10 	ldr.w	r2, [r2, #-16]
30004b2e:	9200      	str	r2, [sp, #0]
30004b30:	2245      	movs	r2, #69	; 0x45
30004b32:	f004 fc0b 	bl	3000934c <rtk_log_write>
30004b36:	2e00      	cmp	r6, #0
30004b38:	d044      	beq.n	30004bc4 <BOOT_SignatureCheck+0x130>
30004b3a:	f106 39ff 	add.w	r9, r6, #4294967295	; 0xffffffff
30004b3e:	f04f 0800 	mov.w	r8, #0
30004b42:	4e53      	ldr	r6, [pc, #332]	; (30004c90 <BOOT_SignatureCheck+0x1fc>)
30004b44:	1d2f      	adds	r7, r5, #4
30004b46:	fa5f f389 	uxtb.w	r3, r9
30004b4a:	f105 0908 	add.w	r9, r5, #8
30004b4e:	4c51      	ldr	r4, [pc, #324]	; (30004c94 <BOOT_SignatureCheck+0x200>)
30004b50:	eb09 09c3 	add.w	r9, r9, r3, lsl #3
30004b54:	e003      	b.n	30004b5e <BOOT_SignatureCheck+0xca>
30004b56:	3508      	adds	r5, #8
30004b58:	3708      	adds	r7, #8
30004b5a:	45a9      	cmp	r9, r5
30004b5c:	d032      	beq.n	30004bc4 <BOOT_SignatureCheck+0x130>
30004b5e:	f857 0c04 	ldr.w	r0, [r7, #-4]
30004b62:	f100 4378 	add.w	r3, r0, #4160749568	; 0xf8000000
30004b66:	f1b3 6f00 	cmp.w	r3, #134217728	; 0x8000000
30004b6a:	d3f4      	bcc.n	30004b56 <BOOT_SignatureCheck+0xc2>
30004b6c:	2100      	movs	r1, #0
30004b6e:	686a      	ldr	r2, [r5, #4]
30004b70:	47b0      	blx	r6
30004b72:	6963      	ldr	r3, [r4, #20]
30004b74:	03d9      	lsls	r1, r3, #15
30004b76:	d5ee      	bpl.n	30004b56 <BOOT_SignatureCheck+0xc2>
30004b78:	f857 2c04 	ldr.w	r2, [r7, #-4]
30004b7c:	686b      	ldr	r3, [r5, #4]
30004b7e:	ea02 0103 	and.w	r1, r2, r3
30004b82:	3101      	adds	r1, #1
30004b84:	d022      	beq.n	30004bcc <BOOT_SignatureCheck+0x138>
30004b86:	f012 011f 	ands.w	r1, r2, #31
30004b8a:	d002      	beq.n	30004b92 <BOOT_SignatureCheck+0xfe>
30004b8c:	440b      	add	r3, r1
30004b8e:	f022 021f 	bic.w	r2, r2, #31
30004b92:	f3bf 8f4f 	dsb	sy
30004b96:	2b00      	cmp	r3, #0
30004b98:	dd0c      	ble.n	30004bb4 <BOOT_SignatureCheck+0x120>
30004b9a:	1e59      	subs	r1, r3, #1
30004b9c:	f102 0320 	add.w	r3, r2, #32
30004ba0:	f021 011f 	bic.w	r1, r1, #31
30004ba4:	4419      	add	r1, r3
30004ba6:	428b      	cmp	r3, r1
30004ba8:	f8c4 2270 	str.w	r2, [r4, #624]	; 0x270
30004bac:	461a      	mov	r2, r3
30004bae:	f103 0320 	add.w	r3, r3, #32
30004bb2:	d1f8      	bne.n	30004ba6 <BOOT_SignatureCheck+0x112>
30004bb4:	f3bf 8f4f 	dsb	sy
30004bb8:	f3bf 8f6f 	isb	sy
30004bbc:	3508      	adds	r5, #8
30004bbe:	3708      	adds	r7, #8
30004bc0:	45a9      	cmp	r9, r5
30004bc2:	d1cc      	bne.n	30004b5e <BOOT_SignatureCheck+0xca>
30004bc4:	2000      	movs	r0, #0
30004bc6:	b009      	add	sp, #36	; 0x24
30004bc8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
30004bcc:	f8c4 8084 	str.w	r8, [r4, #132]	; 0x84
30004bd0:	f3bf 8f4f 	dsb	sy
30004bd4:	f8d4 3080 	ldr.w	r3, [r4, #128]	; 0x80
30004bd8:	f643 7ee0 	movw	lr, #16352	; 0x3fe0
30004bdc:	f3c3 304e 	ubfx	r0, r3, #13, #15
30004be0:	f3c3 0cc9 	ubfx	ip, r3, #3, #10
30004be4:	0140      	lsls	r0, r0, #5
30004be6:	ea00 010e 	and.w	r1, r0, lr
30004bea:	4663      	mov	r3, ip
30004bec:	ea41 7283 	orr.w	r2, r1, r3, lsl #30
30004bf0:	3b01      	subs	r3, #1
30004bf2:	f8c4 2274 	str.w	r2, [r4, #628]	; 0x274
30004bf6:	1c5a      	adds	r2, r3, #1
30004bf8:	d1f8      	bne.n	30004bec <BOOT_SignatureCheck+0x158>
30004bfa:	3820      	subs	r0, #32
30004bfc:	f110 0f20 	cmn.w	r0, #32
30004c00:	d1f1      	bne.n	30004be6 <BOOT_SignatureCheck+0x152>
30004c02:	f3bf 8f4f 	dsb	sy
30004c06:	f3bf 8f6f 	isb	sy
30004c0a:	e7d7      	b.n	30004bbc <BOOT_SignatureCheck+0x128>
30004c0c:	f507 7380 	add.w	r3, r7, #256	; 0x100
30004c10:	4642      	mov	r2, r8
30004c12:	f89d 100f 	ldrb.w	r1, [sp, #15]
30004c16:	9301      	str	r3, [sp, #4]
30004c18:	f44f 7380 	mov.w	r3, #256	; 0x100
30004c1c:	f89d 000e 	ldrb.w	r0, [sp, #14]
30004c20:	9300      	str	r3, [sp, #0]
30004c22:	463b      	mov	r3, r7
30004c24:	f006 fe18 	bl	3000b858 <__SBOOT_Validate_Signature_veneer>
30004c28:	2800      	cmp	r0, #0
30004c2a:	f47f af76 	bne.w	30004b1a <BOOT_SignatureCheck+0x86>
30004c2e:	f107 0830 	add.w	r8, r7, #48	; 0x30
30004c32:	4b19      	ldr	r3, [pc, #100]	; (30004c98 <BOOT_SignatureCheck+0x204>)
30004c34:	f89d 400f 	ldrb.w	r4, [sp, #15]
30004c38:	4798      	blx	r3
30004c3a:	4641      	mov	r1, r8
30004c3c:	b1b0      	cbz	r0, 30004c6c <BOOT_SignatureCheck+0x1d8>
30004c3e:	4620      	mov	r0, r4
30004c40:	4633      	mov	r3, r6
30004c42:	462a      	mov	r2, r5
30004c44:	f006 fe18 	bl	3000b878 <__SBOOT_Validate_ImgHash_veneer>
30004c48:	2800      	cmp	r0, #0
30004c4a:	f47f af66 	bne.w	30004b1a <BOOT_SignatureCheck+0x86>
30004c4e:	7c7c      	ldrb	r4, [r7, #17]
30004c50:	a808      	add	r0, sp, #32
30004c52:	4b12      	ldr	r3, [pc, #72]	; (30004c9c <BOOT_SignatureCheck+0x208>)
30004c54:	2249      	movs	r2, #73	; 0x49
30004c56:	eb00 0484 	add.w	r4, r0, r4, lsl #2
30004c5a:	490c      	ldr	r1, [pc, #48]	; (30004c8c <BOOT_SignatureCheck+0x1f8>)
30004c5c:	2004      	movs	r0, #4
30004c5e:	f854 4c10 	ldr.w	r4, [r4, #-16]
30004c62:	9400      	str	r4, [sp, #0]
30004c64:	f004 fb72 	bl	3000934c <rtk_log_write>
30004c68:	2001      	movs	r0, #1
30004c6a:	e726      	b.n	30004aba <BOOT_SignatureCheck+0x26>
30004c6c:	4620      	mov	r0, r4
30004c6e:	4633      	mov	r3, r6
30004c70:	462a      	mov	r2, r5
30004c72:	f7ff fdc1 	bl	300047f8 <_BOOT_Validate_ImgHash>
30004c76:	e7e7      	b.n	30004c48 <BOOT_SignatureCheck+0x1b4>
30004c78:	22b4      	movs	r2, #180	; 0xb4
30004c7a:	e744      	b.n	30004b06 <BOOT_SignatureCheck+0x72>
30004c7c:	3000e2f0 	.word	0x3000e2f0
30004c80:	3000bcb8 	.word	0x3000bcb8
30004c84:	00002451 	.word	0x00002451
30004c88:	3000bc2c 	.word	0x3000bc2c
30004c8c:	3000b894 	.word	0x3000b894
30004c90:	00012be5 	.word	0x00012be5
30004c94:	e000ed00 	.word	0xe000ed00
30004c98:	3000a5bd 	.word	0x3000a5bd
30004c9c:	3000bc1c 	.word	0x3000bc1c

30004ca0 <BOOT_CertificateCheck>:
30004ca0:	b5f0      	push	{r4, r5, r6, r7, lr}
30004ca2:	b08d      	sub	sp, #52	; 0x34
30004ca4:	4604      	mov	r4, r0
30004ca6:	460e      	mov	r6, r1
30004ca8:	a804      	add	r0, sp, #16
30004caa:	f7ff fcb1 	bl	30004610 <BOOT_SbootEn_Check>
30004cae:	b910      	cbnz	r0, 30004cb6 <BOOT_CertificateCheck+0x16>
30004cb0:	2001      	movs	r0, #1
30004cb2:	b00d      	add	sp, #52	; 0x34
30004cb4:	bdf0      	pop	{r4, r5, r6, r7, pc}
30004cb6:	4b1a      	ldr	r3, [pc, #104]	; (30004d20 <BOOT_CertificateCheck+0x80>)
30004cb8:	2000      	movs	r0, #0
30004cba:	4798      	blx	r3
30004cbc:	7ce3      	ldrb	r3, [r4, #19]
30004cbe:	7ca2      	ldrb	r2, [r4, #18]
30004cc0:	f10d 010f 	add.w	r1, sp, #15
30004cc4:	f10d 000e 	add.w	r0, sp, #14
30004cc8:	f006 fdce 	bl	3000b868 <__SBOOT_Validate_Algorithm_veneer>
30004ccc:	4605      	mov	r5, r0
30004cce:	b948      	cbnz	r0, 30004ce4 <BOOT_CertificateCheck+0x44>
30004cd0:	f104 0720 	add.w	r7, r4, #32
30004cd4:	aa04      	add	r2, sp, #16
30004cd6:	f89d 000e 	ldrb.w	r0, [sp, #14]
30004cda:	4639      	mov	r1, r7
30004cdc:	f006 fdc0 	bl	3000b860 <__SBOOT_Validate_PubKey_veneer>
30004ce0:	4605      	mov	r5, r0
30004ce2:	b148      	cbz	r0, 30004cf8 <BOOT_CertificateCheck+0x58>
30004ce4:	4b0f      	ldr	r3, [pc, #60]	; (30004d24 <BOOT_CertificateCheck+0x84>)
30004ce6:	2245      	movs	r2, #69	; 0x45
30004ce8:	490f      	ldr	r1, [pc, #60]	; (30004d28 <BOOT_CertificateCheck+0x88>)
30004cea:	2002      	movs	r0, #2
30004cec:	9500      	str	r5, [sp, #0]
30004cee:	f004 fb2d 	bl	3000934c <rtk_log_write>
30004cf2:	2000      	movs	r0, #0
30004cf4:	b00d      	add	sp, #52	; 0x34
30004cf6:	bdf0      	pop	{r4, r5, r6, r7, pc}
30004cf8:	490c      	ldr	r1, [pc, #48]	; (30004d2c <BOOT_CertificateCheck+0x8c>)
30004cfa:	eb06 06c6 	add.w	r6, r6, r6, lsl #3
30004cfe:	69a0      	ldr	r0, [r4, #24]
30004d00:	4623      	mov	r3, r4
30004d02:	eb01 1606 	add.w	r6, r1, r6, lsl #4
30004d06:	463a      	mov	r2, r7
30004d08:	9000      	str	r0, [sp, #0]
30004d0a:	f89d 100f 	ldrb.w	r1, [sp, #15]
30004d0e:	f89d 000e 	ldrb.w	r0, [sp, #14]
30004d12:	9601      	str	r6, [sp, #4]
30004d14:	f006 fda0 	bl	3000b858 <__SBOOT_Validate_Signature_veneer>
30004d18:	4605      	mov	r5, r0
30004d1a:	2800      	cmp	r0, #0
30004d1c:	d0c8      	beq.n	30004cb0 <BOOT_CertificateCheck+0x10>
30004d1e:	e7e1      	b.n	30004ce4 <BOOT_CertificateCheck+0x44>
30004d20:	00002451 	.word	0x00002451
30004d24:	3000bc48 	.word	0x3000bc48
30004d28:	3000b894 	.word	0x3000b894
30004d2c:	3000e8f4 	.word	0x3000e8f4

30004d30 <BOOT_Extract_SignatureCheck>:
30004d30:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
30004d34:	b08c      	sub	sp, #48	; 0x30
30004d36:	4604      	mov	r4, r0
30004d38:	460e      	mov	r6, r1
30004d3a:	4617      	mov	r7, r2
30004d3c:	a804      	add	r0, sp, #16
30004d3e:	f7ff fc67 	bl	30004610 <BOOT_SbootEn_Check>
30004d42:	b918      	cbnz	r0, 30004d4c <BOOT_Extract_SignatureCheck+0x1c>
30004d44:	2001      	movs	r0, #1
30004d46:	b00c      	add	sp, #48	; 0x30
30004d48:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
30004d4c:	4b22      	ldr	r3, [pc, #136]	; (30004dd8 <BOOT_Extract_SignatureCheck+0xa8>)
30004d4e:	2000      	movs	r0, #0
30004d50:	4798      	blx	r3
30004d52:	7ce3      	ldrb	r3, [r4, #19]
30004d54:	7ca2      	ldrb	r2, [r4, #18]
30004d56:	f10d 010f 	add.w	r1, sp, #15
30004d5a:	f10d 000e 	add.w	r0, sp, #14
30004d5e:	f006 fd83 	bl	3000b868 <__SBOOT_Validate_Algorithm_veneer>
30004d62:	4605      	mov	r5, r0
30004d64:	b948      	cbnz	r0, 30004d7a <BOOT_Extract_SignatureCheck+0x4a>
30004d66:	f104 0870 	add.w	r8, r4, #112	; 0x70
30004d6a:	aa04      	add	r2, sp, #16
30004d6c:	f89d 000e 	ldrb.w	r0, [sp, #14]
30004d70:	4641      	mov	r1, r8
30004d72:	f006 fd75 	bl	3000b860 <__SBOOT_Validate_PubKey_veneer>
30004d76:	4605      	mov	r5, r0
30004d78:	b150      	cbz	r0, 30004d90 <BOOT_Extract_SignatureCheck+0x60>
30004d7a:	4b18      	ldr	r3, [pc, #96]	; (30004ddc <BOOT_Extract_SignatureCheck+0xac>)
30004d7c:	2245      	movs	r2, #69	; 0x45
30004d7e:	4918      	ldr	r1, [pc, #96]	; (30004de0 <BOOT_Extract_SignatureCheck+0xb0>)
30004d80:	2002      	movs	r0, #2
30004d82:	9500      	str	r5, [sp, #0]
30004d84:	f004 fae2 	bl	3000934c <rtk_log_write>
30004d88:	2000      	movs	r0, #0
30004d8a:	b00c      	add	sp, #48	; 0x30
30004d8c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
30004d90:	f504 7380 	add.w	r3, r4, #256	; 0x100
30004d94:	4642      	mov	r2, r8
30004d96:	f89d 100f 	ldrb.w	r1, [sp, #15]
30004d9a:	9301      	str	r3, [sp, #4]
30004d9c:	f44f 7380 	mov.w	r3, #256	; 0x100
30004da0:	f89d 000e 	ldrb.w	r0, [sp, #14]
30004da4:	9300      	str	r3, [sp, #0]
30004da6:	4623      	mov	r3, r4
30004da8:	f006 fd56 	bl	3000b858 <__SBOOT_Validate_Signature_veneer>
30004dac:	4605      	mov	r5, r0
30004dae:	2800      	cmp	r0, #0
30004db0:	d1e3      	bne.n	30004d7a <BOOT_Extract_SignatureCheck+0x4a>
30004db2:	463b      	mov	r3, r7
30004db4:	4632      	mov	r2, r6
30004db6:	f104 0130 	add.w	r1, r4, #48	; 0x30
30004dba:	f89d 000f 	ldrb.w	r0, [sp, #15]
30004dbe:	f006 fd5b 	bl	3000b878 <__SBOOT_Validate_ImgHash_veneer>
30004dc2:	4605      	mov	r5, r0
30004dc4:	2800      	cmp	r0, #0
30004dc6:	d1d8      	bne.n	30004d7a <BOOT_Extract_SignatureCheck+0x4a>
30004dc8:	2004      	movs	r0, #4
30004dca:	4b06      	ldr	r3, [pc, #24]	; (30004de4 <BOOT_Extract_SignatureCheck+0xb4>)
30004dcc:	2249      	movs	r2, #73	; 0x49
30004dce:	4904      	ldr	r1, [pc, #16]	; (30004de0 <BOOT_Extract_SignatureCheck+0xb0>)
30004dd0:	f004 fabc 	bl	3000934c <rtk_log_write>
30004dd4:	2001      	movs	r0, #1
30004dd6:	e7b6      	b.n	30004d46 <BOOT_Extract_SignatureCheck+0x16>
30004dd8:	00002451 	.word	0x00002451
30004ddc:	3000bc88 	.word	0x3000bc88
30004de0:	3000b894 	.word	0x3000b894
30004de4:	3000bc6c 	.word	0x3000bc6c

30004de8 <BOOT_ImgCopy>:
30004de8:	b510      	push	{r4, lr}
30004dea:	b082      	sub	sp, #8
30004dec:	4b09      	ldr	r3, [pc, #36]	; (30004e14 <BOOT_ImgCopy+0x2c>)
30004dee:	4604      	mov	r4, r0
30004df0:	e9cd 2100 	strd	r2, r1, [sp]
30004df4:	4798      	blx	r3
30004df6:	e9dd 2100 	ldrd	r2, r1, [sp]
30004dfa:	b128      	cbz	r0, 30004e08 <BOOT_ImgCopy+0x20>
30004dfc:	4620      	mov	r0, r4
30004dfe:	4b06      	ldr	r3, [pc, #24]	; (30004e18 <BOOT_ImgCopy+0x30>)
30004e00:	b002      	add	sp, #8
30004e02:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
30004e06:	4718      	bx	r3
30004e08:	4620      	mov	r0, r4
30004e0a:	b002      	add	sp, #8
30004e0c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
30004e10:	f001 bb3a 	b.w	30006488 <NandImgCopy>
30004e14:	3000a5bd 	.word	0x3000a5bd
30004e18:	00012a1d 	.word	0x00012a1d

30004e1c <BOOT_OTA_SlotSelect>:
30004e1c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30004e20:	4f4b      	ldr	r7, [pc, #300]	; (30004f50 <BOOT_OTA_SlotSelect+0x134>)
30004e22:	4d4c      	ldr	r5, [pc, #304]	; (30004f54 <BOOT_OTA_SlotSelect+0x138>)
30004e24:	4c4c      	ldr	r4, [pc, #304]	; (30004f58 <BOOT_OTA_SlotSelect+0x13c>)
30004e26:	463e      	mov	r6, r7
30004e28:	f8df 9148 	ldr.w	r9, [pc, #328]	; 30004f74 <BOOT_OTA_SlotSelect+0x158>
30004e2c:	f8df 8148 	ldr.w	r8, [pc, #328]	; 30004f78 <BOOT_OTA_SlotSelect+0x15c>
30004e30:	f8df a148 	ldr.w	sl, [pc, #328]	; 30004f7c <BOOT_OTA_SlotSelect+0x160>
30004e34:	f8df b148 	ldr.w	fp, [pc, #328]	; 30004f80 <BOOT_OTA_SlotSelect+0x164>
30004e38:	ed2d 8b02 	vpush	{d8}
30004e3c:	ed9f 8b42 	vldr	d8, [pc, #264]	; 30004f48 <BOOT_OTA_SlotSelect+0x12c>
30004e40:	b083      	sub	sp, #12
30004e42:	f855 1b04 	ldr.w	r1, [r5], #4
30004e46:	9101      	str	r1, [sp, #4]
30004e48:	47d0      	blx	sl
30004e4a:	9901      	ldr	r1, [sp, #4]
30004e4c:	f44f 72b2 	mov.w	r2, #356	; 0x164
30004e50:	2800      	cmp	r0, #0
30004e52:	d041      	beq.n	30004ed8 <BOOT_OTA_SlotSelect+0xbc>
30004e54:	4620      	mov	r0, r4
30004e56:	4b41      	ldr	r3, [pc, #260]	; (30004f5c <BOOT_OTA_SlotSelect+0x140>)
30004e58:	4798      	blx	r3
30004e5a:	2208      	movs	r2, #8
30004e5c:	4659      	mov	r1, fp
30004e5e:	4620      	mov	r0, r4
30004e60:	4b3f      	ldr	r3, [pc, #252]	; (30004f60 <BOOT_OTA_SlotSelect+0x144>)
30004e62:	4798      	blx	r3
30004e64:	2800      	cmp	r0, #0
30004e66:	d03b      	beq.n	30004ee0 <BOOT_OTA_SlotSelect+0xc4>
30004e68:	ed86 8b00 	vstr	d8, [r6]
30004e6c:	4b3d      	ldr	r3, [pc, #244]	; (30004f64 <BOOT_OTA_SlotSelect+0x148>)
30004e6e:	f504 74b2 	add.w	r4, r4, #356	; 0x164
30004e72:	3608      	adds	r6, #8
30004e74:	f509 79c8 	add.w	r9, r9, #400	; 0x190
30004e78:	42ab      	cmp	r3, r5
30004e7a:	f108 0890 	add.w	r8, r8, #144	; 0x90
30004e7e:	d1e0      	bne.n	30004e42 <BOOT_OTA_SlotSelect+0x26>
30004e80:	4b39      	ldr	r3, [pc, #228]	; (30004f68 <BOOT_OTA_SlotSelect+0x14c>)
30004e82:	4798      	blx	r3
30004e84:	b178      	cbz	r0, 30004ea6 <BOOT_OTA_SlotSelect+0x8a>
30004e86:	4b39      	ldr	r3, [pc, #228]	; (30004f6c <BOOT_OTA_SlotSelect+0x150>)
30004e88:	2100      	movs	r1, #0
30004e8a:	2401      	movs	r4, #1
30004e8c:	f8b3 006e 	ldrh.w	r0, [r3, #110]	; 0x6e
30004e90:	460b      	mov	r3, r1
30004e92:	b280      	uxth	r0, r0
30004e94:	fa04 f203 	lsl.w	r2, r4, r3
30004e98:	3301      	adds	r3, #1
30004e9a:	4202      	tst	r2, r0
30004e9c:	bf08      	it	eq
30004e9e:	3101      	addeq	r1, #1
30004ea0:	2b10      	cmp	r3, #16
30004ea2:	d1f7      	bne.n	30004e94 <BOOT_OTA_SlotSelect+0x78>
30004ea4:	0408      	lsls	r0, r1, #16
30004ea6:	e9d7 2300 	ldrd	r2, r3, [r7]
30004eaa:	e9d7 4102 	ldrd	r4, r1, [r7, #8]
30004eae:	4282      	cmp	r2, r0
30004eb0:	f173 0500 	sbcs.w	r5, r3, #0
30004eb4:	db32      	blt.n	30004f1c <BOOT_OTA_SlotSelect+0x100>
30004eb6:	4284      	cmp	r4, r0
30004eb8:	f171 0000 	sbcs.w	r0, r1, #0
30004ebc:	da3e      	bge.n	30004f3c <BOOT_OTA_SlotSelect+0x120>
30004ebe:	482c      	ldr	r0, [pc, #176]	; (30004f70 <BOOT_OTA_SlotSelect+0x154>)
30004ec0:	2501      	movs	r5, #1
30004ec2:	7005      	strb	r5, [r0, #0]
30004ec4:	42a2      	cmp	r2, r4
30004ec6:	418b      	sbcs	r3, r1
30004ec8:	bfb4      	ite	lt
30004eca:	2001      	movlt	r0, #1
30004ecc:	2000      	movge	r0, #0
30004ece:	b003      	add	sp, #12
30004ed0:	ecbd 8b02 	vpop	{d8}
30004ed4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30004ed8:	4620      	mov	r0, r4
30004eda:	f001 fad5 	bl	30006488 <NandImgCopy>
30004ede:	e7bc      	b.n	30004e5a <BOOT_OTA_SlotSelect+0x3e>
30004ee0:	f855 1c04 	ldr.w	r1, [r5, #-4]
30004ee4:	69a3      	ldr	r3, [r4, #24]
30004ee6:	4419      	add	r1, r3
30004ee8:	9101      	str	r1, [sp, #4]
30004eea:	47d0      	blx	sl
30004eec:	9901      	ldr	r1, [sp, #4]
30004eee:	2290      	movs	r2, #144	; 0x90
30004ef0:	b9e0      	cbnz	r0, 30004f2c <BOOT_OTA_SlotSelect+0x110>
30004ef2:	4640      	mov	r0, r8
30004ef4:	f001 fac8 	bl	30006488 <NandImgCopy>
30004ef8:	6869      	ldr	r1, [r5, #4]
30004efa:	9101      	str	r1, [sp, #4]
30004efc:	47d0      	blx	sl
30004efe:	9901      	ldr	r1, [sp, #4]
30004f00:	f44f 72c8 	mov.w	r2, #400	; 0x190
30004f04:	b1b0      	cbz	r0, 30004f34 <BOOT_OTA_SlotSelect+0x118>
30004f06:	4648      	mov	r0, r9
30004f08:	4b14      	ldr	r3, [pc, #80]	; (30004f5c <BOOT_OTA_SlotSelect+0x140>)
30004f0a:	4798      	blx	r3
30004f0c:	8aa2      	ldrh	r2, [r4, #20]
30004f0e:	8ae3      	ldrh	r3, [r4, #22]
30004f10:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
30004f14:	6033      	str	r3, [r6, #0]
30004f16:	2300      	movs	r3, #0
30004f18:	6073      	str	r3, [r6, #4]
30004f1a:	e7a7      	b.n	30004e6c <BOOT_OTA_SlotSelect+0x50>
30004f1c:	4284      	cmp	r4, r0
30004f1e:	f171 0000 	sbcs.w	r0, r1, #0
30004f22:	dacc      	bge.n	30004ebe <BOOT_OTA_SlotSelect+0xa2>
30004f24:	4812      	ldr	r0, [pc, #72]	; (30004f70 <BOOT_OTA_SlotSelect+0x154>)
30004f26:	2500      	movs	r5, #0
30004f28:	7005      	strb	r5, [r0, #0]
30004f2a:	e7cb      	b.n	30004ec4 <BOOT_OTA_SlotSelect+0xa8>
30004f2c:	4640      	mov	r0, r8
30004f2e:	4b0b      	ldr	r3, [pc, #44]	; (30004f5c <BOOT_OTA_SlotSelect+0x140>)
30004f30:	4798      	blx	r3
30004f32:	e7e1      	b.n	30004ef8 <BOOT_OTA_SlotSelect+0xdc>
30004f34:	4648      	mov	r0, r9
30004f36:	f001 faa7 	bl	30006488 <NandImgCopy>
30004f3a:	e7e7      	b.n	30004f0c <BOOT_OTA_SlotSelect+0xf0>
30004f3c:	480c      	ldr	r0, [pc, #48]	; (30004f70 <BOOT_OTA_SlotSelect+0x154>)
30004f3e:	2502      	movs	r5, #2
30004f40:	7005      	strb	r5, [r0, #0]
30004f42:	e7bf      	b.n	30004ec4 <BOOT_OTA_SlotSelect+0xa8>
30004f44:	f3af 8000 	nop.w
30004f48:	ffffffff 	.word	0xffffffff
30004f4c:	ffffffff 	.word	0xffffffff
30004f50:	3000ea88 	.word	0x3000ea88
30004f54:	3000e8dc 	.word	0x3000e8dc
30004f58:	3000e2f4 	.word	0x3000e2f4
30004f5c:	00012a1d 	.word	0x00012a1d
30004f60:	000129bd 	.word	0x000129bd
30004f64:	3000e8e4 	.word	0x3000e8e4
30004f68:	0000c21d 	.word	0x0000c21d
30004f6c:	42000300 	.word	0x42000300
30004f70:	3000ea84 	.word	0x3000ea84
30004f74:	3000e5bc 	.word	0x3000e5bc
30004f78:	3000e8f4 	.word	0x3000e8f4
30004f7c:	3000a5bd 	.word	0x3000a5bd
30004f80:	3000bf34 	.word	0x3000bf34

30004f84 <BOOT_LoadSubImage>:
30004f84:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30004f88:	b08f      	sub	sp, #60	; 0x3c
30004f8a:	469a      	mov	sl, r3
30004f8c:	f89d 3060 	ldrb.w	r3, [sp, #96]	; 0x60
30004f90:	9305      	str	r3, [sp, #20]
30004f92:	2a00      	cmp	r2, #0
30004f94:	d03d      	beq.n	30005012 <BOOT_LoadSubImage+0x8e>
30004f96:	460f      	mov	r7, r1
30004f98:	4691      	mov	r9, r2
30004f9a:	2600      	movs	r6, #0
30004f9c:	4605      	mov	r5, r0
30004f9e:	4b57      	ldr	r3, [pc, #348]	; (300050fc <BOOT_LoadSubImage+0x178>)
30004fa0:	4798      	blx	r3
30004fa2:	2220      	movs	r2, #32
30004fa4:	4639      	mov	r1, r7
30004fa6:	2800      	cmp	r0, #0
30004fa8:	d037      	beq.n	3000501a <BOOT_LoadSubImage+0x96>
30004faa:	4b55      	ldr	r3, [pc, #340]	; (30005100 <BOOT_LoadSubImage+0x17c>)
30004fac:	a806      	add	r0, sp, #24
30004fae:	4798      	blx	r3
30004fb0:	9b06      	ldr	r3, [sp, #24]
30004fb2:	4a54      	ldr	r2, [pc, #336]	; (30005104 <BOOT_LoadSubImage+0x180>)
30004fb4:	4293      	cmp	r3, r2
30004fb6:	d137      	bne.n	30005028 <BOOT_LoadSubImage+0xa4>
30004fb8:	f102 427b 	add.w	r2, r2, #4211081216	; 0xfb000000
30004fbc:	9b07      	ldr	r3, [sp, #28]
30004fbe:	f502 0278 	add.w	r2, r2, #16252928	; 0xf80000
30004fc2:	f502 62c0 	add.w	r2, r2, #1536	; 0x600
30004fc6:	4293      	cmp	r3, r2
30004fc8:	d12e      	bne.n	30005028 <BOOT_LoadSubImage+0xa4>
30004fca:	9a09      	ldr	r2, [sp, #36]	; 0x24
30004fcc:	4b4e      	ldr	r3, [pc, #312]	; (30005108 <BOOT_LoadSubImage+0x184>)
30004fce:	9c08      	ldr	r4, [sp, #32]
30004fd0:	f1a2 0820 	sub.w	r8, r2, #32
30004fd4:	4413      	add	r3, r2
30004fd6:	3420      	adds	r4, #32
30004fd8:	f1b3 6f00 	cmp.w	r3, #134217728	; 0x8000000
30004fdc:	d301      	bcc.n	30004fe2 <BOOT_LoadSubImage+0x5e>
30004fde:	2c20      	cmp	r4, #32
30004fe0:	d829      	bhi.n	30005036 <BOOT_LoadSubImage+0xb2>
30004fe2:	2c20      	cmp	r4, #32
30004fe4:	bf08      	it	eq
30004fe6:	46b8      	moveq	r8, r7
30004fe8:	b17d      	cbz	r5, 3000500a <BOOT_LoadSubImage+0x86>
30004fea:	1d2b      	adds	r3, r5, #4
30004fec:	f845 8036 	str.w	r8, [r5, r6, lsl #3]
30004ff0:	2249      	movs	r2, #73	; 0x49
30004ff2:	4946      	ldr	r1, [pc, #280]	; (3000510c <BOOT_LoadSubImage+0x188>)
30004ff4:	2004      	movs	r0, #4
30004ff6:	e9cd 8401 	strd	r8, r4, [sp, #4]
30004ffa:	f843 4036 	str.w	r4, [r3, r6, lsl #3]
30004ffe:	f85a 3026 	ldr.w	r3, [sl, r6, lsl #2]
30005002:	9300      	str	r3, [sp, #0]
30005004:	4b42      	ldr	r3, [pc, #264]	; (30005110 <BOOT_LoadSubImage+0x18c>)
30005006:	f004 f9a1 	bl	3000934c <rtk_log_write>
3000500a:	3601      	adds	r6, #1
3000500c:	4427      	add	r7, r4
3000500e:	454e      	cmp	r6, r9
30005010:	d1c5      	bne.n	30004f9e <BOOT_LoadSubImage+0x1a>
30005012:	2001      	movs	r0, #1
30005014:	b00f      	add	sp, #60	; 0x3c
30005016:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
3000501a:	a806      	add	r0, sp, #24
3000501c:	f001 fa34 	bl	30006488 <NandImgCopy>
30005020:	9b06      	ldr	r3, [sp, #24]
30005022:	4a38      	ldr	r2, [pc, #224]	; (30005104 <BOOT_LoadSubImage+0x180>)
30005024:	4293      	cmp	r3, r2
30005026:	d0c7      	beq.n	30004fb8 <BOOT_LoadSubImage+0x34>
30005028:	9b05      	ldr	r3, [sp, #20]
3000502a:	2b01      	cmp	r3, #1
3000502c:	d059      	beq.n	300050e2 <BOOT_LoadSubImage+0x15e>
3000502e:	2000      	movs	r0, #0
30005030:	b00f      	add	sp, #60	; 0x3c
30005032:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30005036:	4b31      	ldr	r3, [pc, #196]	; (300050fc <BOOT_LoadSubImage+0x178>)
30005038:	4798      	blx	r3
3000503a:	4622      	mov	r2, r4
3000503c:	4639      	mov	r1, r7
3000503e:	b330      	cbz	r0, 3000508e <BOOT_LoadSubImage+0x10a>
30005040:	4640      	mov	r0, r8
30005042:	4b2f      	ldr	r3, [pc, #188]	; (30005100 <BOOT_LoadSubImage+0x17c>)
30005044:	4798      	blx	r3
30005046:	4933      	ldr	r1, [pc, #204]	; (30005114 <BOOT_LoadSubImage+0x190>)
30005048:	694b      	ldr	r3, [r1, #20]
3000504a:	03db      	lsls	r3, r3, #15
3000504c:	d5cc      	bpl.n	30004fe8 <BOOT_LoadSubImage+0x64>
3000504e:	ea08 0304 	and.w	r3, r8, r4
30005052:	3301      	adds	r3, #1
30005054:	d023      	beq.n	3000509e <BOOT_LoadSubImage+0x11a>
30005056:	f018 031f 	ands.w	r3, r8, #31
3000505a:	d11c      	bne.n	30005096 <BOOT_LoadSubImage+0x112>
3000505c:	4623      	mov	r3, r4
3000505e:	4642      	mov	r2, r8
30005060:	f3bf 8f4f 	dsb	sy
30005064:	2b00      	cmp	r3, #0
30005066:	dd0d      	ble.n	30005084 <BOOT_LoadSubImage+0x100>
30005068:	1e59      	subs	r1, r3, #1
3000506a:	f102 0320 	add.w	r3, r2, #32
3000506e:	4829      	ldr	r0, [pc, #164]	; (30005114 <BOOT_LoadSubImage+0x190>)
30005070:	f021 011f 	bic.w	r1, r1, #31
30005074:	4419      	add	r1, r3
30005076:	428b      	cmp	r3, r1
30005078:	f8c0 2270 	str.w	r2, [r0, #624]	; 0x270
3000507c:	461a      	mov	r2, r3
3000507e:	f103 0320 	add.w	r3, r3, #32
30005082:	d1f8      	bne.n	30005076 <BOOT_LoadSubImage+0xf2>
30005084:	f3bf 8f4f 	dsb	sy
30005088:	f3bf 8f6f 	isb	sy
3000508c:	e7ac      	b.n	30004fe8 <BOOT_LoadSubImage+0x64>
3000508e:	4640      	mov	r0, r8
30005090:	f001 f9fa 	bl	30006488 <NandImgCopy>
30005094:	e7d7      	b.n	30005046 <BOOT_LoadSubImage+0xc2>
30005096:	4423      	add	r3, r4
30005098:	f028 021f 	bic.w	r2, r8, #31
3000509c:	e7e0      	b.n	30005060 <BOOT_LoadSubImage+0xdc>
3000509e:	2300      	movs	r3, #0
300050a0:	f8c1 3084 	str.w	r3, [r1, #132]	; 0x84
300050a4:	f3bf 8f4f 	dsb	sy
300050a8:	f8d1 3080 	ldr.w	r3, [r1, #128]	; 0x80
300050ac:	f643 7be0 	movw	fp, #16352	; 0x3fe0
300050b0:	f3c3 3c4e 	ubfx	ip, r3, #13, #15
300050b4:	f3c3 0ec9 	ubfx	lr, r3, #3, #10
300050b8:	ea4f 1c4c 	mov.w	ip, ip, lsl #5
300050bc:	ea0c 000b 	and.w	r0, ip, fp
300050c0:	4673      	mov	r3, lr
300050c2:	ea40 7283 	orr.w	r2, r0, r3, lsl #30
300050c6:	3b01      	subs	r3, #1
300050c8:	f8c1 2274 	str.w	r2, [r1, #628]	; 0x274
300050cc:	d2f9      	bcs.n	300050c2 <BOOT_LoadSubImage+0x13e>
300050ce:	f1ac 0c20 	sub.w	ip, ip, #32
300050d2:	f11c 0f20 	cmn.w	ip, #32
300050d6:	d1f1      	bne.n	300050bc <BOOT_LoadSubImage+0x138>
300050d8:	f3bf 8f4f 	dsb	sy
300050dc:	f3bf 8f6f 	isb	sy
300050e0:	e782      	b.n	30004fe8 <BOOT_LoadSubImage+0x64>
300050e2:	f85a 4026 	ldr.w	r4, [sl, r6, lsl #2]
300050e6:	2249      	movs	r2, #73	; 0x49
300050e8:	4b0b      	ldr	r3, [pc, #44]	; (30005118 <BOOT_LoadSubImage+0x194>)
300050ea:	2004      	movs	r0, #4
300050ec:	4907      	ldr	r1, [pc, #28]	; (3000510c <BOOT_LoadSubImage+0x188>)
300050ee:	9400      	str	r4, [sp, #0]
300050f0:	f004 f92c 	bl	3000934c <rtk_log_write>
300050f4:	2000      	movs	r0, #0
300050f6:	b00f      	add	sp, #60	; 0x3c
300050f8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
300050fc:	3000a5bd 	.word	0x3000a5bd
30005100:	00012a1d 	.word	0x00012a1d
30005104:	35393138 	.word	0x35393138
30005108:	f7ffffe0 	.word	0xf7ffffe0
3000510c:	3000b894 	.word	0x3000b894
30005110:	3000bc0c 	.word	0x3000bc0c
30005114:	e000ed00 	.word	0xe000ed00
30005118:	3000bc00 	.word	0x3000bc00

3000511c <BOOT_RSIPIvSet>:
3000511c:	b530      	push	{r4, r5, lr}
3000511e:	2300      	movs	r3, #0
30005120:	b083      	sub	sp, #12
30005122:	4a09      	ldr	r2, [pc, #36]	; (30005148 <BOOT_RSIPIvSet+0x2c>)
30005124:	4605      	mov	r5, r0
30005126:	460c      	mov	r4, r1
30005128:	e9cd 3300 	strd	r3, r3, [sp]
3000512c:	4790      	blx	r2
3000512e:	b148      	cbz	r0, 30005144 <BOOT_RSIPIvSet+0x28>
30005130:	f105 0120 	add.w	r1, r5, #32
30005134:	4b05      	ldr	r3, [pc, #20]	; (3000514c <BOOT_RSIPIvSet+0x30>)
30005136:	2208      	movs	r2, #8
30005138:	4668      	mov	r0, sp
3000513a:	4798      	blx	r3
3000513c:	4669      	mov	r1, sp
3000513e:	b2e0      	uxtb	r0, r4
30005140:	4b03      	ldr	r3, [pc, #12]	; (30005150 <BOOT_RSIPIvSet+0x34>)
30005142:	4798      	blx	r3
30005144:	b003      	add	sp, #12
30005146:	bd30      	pop	{r4, r5, pc}
30005148:	0000c129 	.word	0x0000c129
3000514c:	00012a1d 	.word	0x00012a1d
30005150:	3000a3ad 	.word	0x3000a3ad

30005154 <BOOT_OTFCheck>:
30005154:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
30005158:	4d1c      	ldr	r5, [pc, #112]	; (300051cc <BOOT_OTFCheck+0x78>)
3000515a:	b082      	sub	sp, #8
3000515c:	4604      	mov	r4, r0
3000515e:	4688      	mov	r8, r1
30005160:	4617      	mov	r7, r2
30005162:	461e      	mov	r6, r3
30005164:	47a8      	blx	r5
30005166:	b148      	cbz	r0, 3000517c <BOOT_OTFCheck+0x28>
30005168:	f104 4378 	add.w	r3, r4, #4160749568	; 0xf8000000
3000516c:	f1b3 6f00 	cmp.w	r3, #134217728	; 0x8000000
30005170:	d204      	bcs.n	3000517c <BOOT_OTFCheck+0x28>
30005172:	f108 4378 	add.w	r3, r8, #4160749568	; 0xf8000000
30005176:	f1b3 6f00 	cmp.w	r3, #134217728	; 0x8000000
3000517a:	d302      	bcc.n	30005182 <BOOT_OTFCheck+0x2e>
3000517c:	b002      	add	sp, #8
3000517e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
30005182:	4b13      	ldr	r3, [pc, #76]	; (300051d0 <BOOT_OTFCheck+0x7c>)
30005184:	2249      	movs	r2, #73	; 0x49
30005186:	4913      	ldr	r1, [pc, #76]	; (300051d4 <BOOT_OTFCheck+0x80>)
30005188:	2004      	movs	r0, #4
3000518a:	f004 f8df 	bl	3000934c <rtk_log_write>
3000518e:	4b12      	ldr	r3, [pc, #72]	; (300051d8 <BOOT_OTFCheck+0x84>)
30005190:	4798      	blx	r3
30005192:	4603      	mov	r3, r0
30005194:	b150      	cbz	r0, 300051ac <BOOT_OTFCheck+0x58>
30005196:	2801      	cmp	r0, #1
30005198:	d009      	beq.n	300051ae <BOOT_OTFCheck+0x5a>
3000519a:	4b10      	ldr	r3, [pc, #64]	; (300051dc <BOOT_OTFCheck+0x88>)
3000519c:	2245      	movs	r2, #69	; 0x45
3000519e:	490d      	ldr	r1, [pc, #52]	; (300051d4 <BOOT_OTFCheck+0x80>)
300051a0:	2002      	movs	r0, #2
300051a2:	b002      	add	sp, #8
300051a4:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
300051a8:	f004 b8d0 	b.w	3000934c <rtk_log_write>
300051ac:	2302      	movs	r3, #2
300051ae:	4630      	mov	r0, r6
300051b0:	4621      	mov	r1, r4
300051b2:	9301      	str	r3, [sp, #4]
300051b4:	4642      	mov	r2, r8
300051b6:	2301      	movs	r3, #1
300051b8:	4c09      	ldr	r4, [pc, #36]	; (300051e0 <BOOT_OTFCheck+0x8c>)
300051ba:	9700      	str	r7, [sp, #0]
300051bc:	47a0      	blx	r4
300051be:	2001      	movs	r0, #1
300051c0:	4b08      	ldr	r3, [pc, #32]	; (300051e4 <BOOT_OTFCheck+0x90>)
300051c2:	b002      	add	sp, #8
300051c4:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
300051c8:	4718      	bx	r3
300051ca:	bf00      	nop
300051cc:	0000c129 	.word	0x0000c129
300051d0:	3000bd3c 	.word	0x3000bd3c
300051d4:	3000b894 	.word	0x3000b894
300051d8:	0000c245 	.word	0x0000c245
300051dc:	3000bd4c 	.word	0x3000bd4c
300051e0:	3000b43d 	.word	0x3000b43d
300051e4:	3000a3c9 	.word	0x3000a3c9

300051e8 <BOOT_OTA_Region_Init>:
300051e8:	b510      	push	{r4, lr}
300051ea:	4c0a      	ldr	r4, [pc, #40]	; (30005214 <BOOT_OTA_Region_Init+0x2c>)
300051ec:	2200      	movs	r2, #0
300051ee:	2002      	movs	r0, #2
300051f0:	4621      	mov	r1, r4
300051f2:	f004 f965 	bl	300094c0 <flash_get_layout_info>
300051f6:	2200      	movs	r2, #0
300051f8:	1d21      	adds	r1, r4, #4
300051fa:	2003      	movs	r0, #3
300051fc:	f004 f960 	bl	300094c0 <flash_get_layout_info>
30005200:	e9d4 2300 	ldrd	r2, r3, [r4]
30005204:	f502 5280 	add.w	r2, r2, #4096	; 0x1000
30005208:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
3000520c:	e9c4 2302 	strd	r2, r3, [r4, #8]
30005210:	bd10      	pop	{r4, pc}
30005212:	bf00      	nop
30005214:	3000e8dc 	.word	0x3000e8dc

30005218 <BOOT_OTA_RDP>:
30005218:	b510      	push	{r4, lr}
3000521a:	4b16      	ldr	r3, [pc, #88]	; (30005274 <BOOT_OTA_RDP+0x5c>)
3000521c:	4696      	mov	lr, r2
3000521e:	3202      	adds	r2, #2
30005220:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
30005224:	f502 5280 	add.w	r2, r2, #4096	; 0x1000
30005228:	b169      	cbz	r1, 30005246 <BOOT_OTA_RDP+0x2e>
3000522a:	f101 3cff 	add.w	ip, r1, #4294967295	; 0xffffffff
3000522e:	4603      	mov	r3, r0
30005230:	fa5f f48c 	uxtb.w	r4, ip
30005234:	f100 0c08 	add.w	ip, r0, #8
30005238:	eb0c 0cc4 	add.w	ip, ip, r4, lsl #3
3000523c:	685c      	ldr	r4, [r3, #4]
3000523e:	3308      	adds	r3, #8
30005240:	4563      	cmp	r3, ip
30005242:	4422      	add	r2, r4
30005244:	d1fa      	bne.n	3000523c <BOOT_OTA_RDP+0x24>
30005246:	eb00 01c1 	add.w	r1, r0, r1, lsl #3
3000524a:	4b0b      	ldr	r3, [pc, #44]	; (30005278 <BOOT_OTA_RDP+0x60>)
3000524c:	f44f 70c8 	mov.w	r0, #400	; 0x190
30005250:	fb00 300e 	mla	r0, r0, lr, r3
30005254:	f7ff fa24 	bl	300046a0 <BOOT_LoadRDPImg>
30005258:	b100      	cbz	r0, 3000525c <BOOT_OTA_RDP+0x44>
3000525a:	bd10      	pop	{r4, pc}
3000525c:	4b07      	ldr	r3, [pc, #28]	; (3000527c <BOOT_OTA_RDP+0x64>)
3000525e:	2245      	movs	r2, #69	; 0x45
30005260:	4907      	ldr	r1, [pc, #28]	; (30005280 <BOOT_OTA_RDP+0x68>)
30005262:	2002      	movs	r0, #2
30005264:	4c07      	ldr	r4, [pc, #28]	; (30005284 <BOOT_OTA_RDP+0x6c>)
30005266:	f004 f871 	bl	3000934c <rtk_log_write>
3000526a:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
3000526e:	47a0      	blx	r4
30005270:	e7fb      	b.n	3000526a <BOOT_OTA_RDP+0x52>
30005272:	bf00      	nop
30005274:	3000e8dc 	.word	0x3000e8dc
30005278:	3000e5bc 	.word	0x3000e5bc
3000527c:	3000bd60 	.word	0x3000bd60
30005280:	3000b894 	.word	0x3000b894
30005284:	00009be5 	.word	0x00009be5

30005288 <BOOT_OTA_AP>:
30005288:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
3000528c:	3202      	adds	r2, #2
3000528e:	b087      	sub	sp, #28
30005290:	4c26      	ldr	r4, [pc, #152]	; (3000532c <BOOT_OTA_AP+0xa4>)
30005292:	4607      	mov	r7, r0
30005294:	4b26      	ldr	r3, [pc, #152]	; (30005330 <BOOT_OTA_AP+0xa8>)
30005296:	ad02      	add	r5, sp, #8
30005298:	f854 4022 	ldr.w	r4, [r4, r2, lsl #2]
3000529c:	460e      	mov	r6, r1
3000529e:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
300052a0:	f504 5480 	add.w	r4, r4, #4096	; 0x1000
300052a4:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
300052a8:	b16e      	cbz	r6, 300052c6 <BOOT_OTA_AP+0x3e>
300052aa:	f106 3cff 	add.w	ip, r6, #4294967295	; 0xffffffff
300052ae:	463b      	mov	r3, r7
300052b0:	fa5f f28c 	uxtb.w	r2, ip
300052b4:	f107 0c08 	add.w	ip, r7, #8
300052b8:	eb0c 0cc2 	add.w	ip, ip, r2, lsl #3
300052bc:	685a      	ldr	r2, [r3, #4]
300052be:	3308      	adds	r3, #8
300052c0:	4563      	cmp	r3, ip
300052c2:	4414      	add	r4, r2
300052c4:	d1fa      	bne.n	300052bc <BOOT_OTA_AP+0x34>
300052c6:	f8df 8084 	ldr.w	r8, [pc, #132]	; 3000534c <BOOT_OTA_AP+0xc4>
300052ca:	4623      	mov	r3, r4
300052cc:	4a19      	ldr	r2, [pc, #100]	; (30005334 <BOOT_OTA_AP+0xac>)
300052ce:	2003      	movs	r0, #3
300052d0:	4641      	mov	r1, r8
300052d2:	f8df 907c 	ldr.w	r9, [pc, #124]	; 30005350 <BOOT_OTA_AP+0xc8>
300052d6:	47c8      	blx	r9
300052d8:	2101      	movs	r1, #1
300052da:	2003      	movs	r0, #3
300052dc:	4b16      	ldr	r3, [pc, #88]	; (30005338 <BOOT_OTA_AP+0xb0>)
300052de:	4798      	blx	r3
300052e0:	2201      	movs	r2, #1
300052e2:	4914      	ldr	r1, [pc, #80]	; (30005334 <BOOT_OTA_AP+0xac>)
300052e4:	2303      	movs	r3, #3
300052e6:	4640      	mov	r0, r8
300052e8:	f7ff ff34 	bl	30005154 <BOOT_OTFCheck>
300052ec:	4b13      	ldr	r3, [pc, #76]	; (3000533c <BOOT_OTA_AP+0xb4>)
300052ee:	4798      	blx	r3
300052f0:	2800      	cmp	r0, #0
300052f2:	bf14      	ite	ne
300052f4:	4641      	movne	r1, r8
300052f6:	4621      	moveq	r1, r4
300052f8:	2401      	movs	r4, #1
300052fa:	462b      	mov	r3, r5
300052fc:	eb07 00c6 	add.w	r0, r7, r6, lsl #3
30005300:	2204      	movs	r2, #4
30005302:	9400      	str	r4, [sp, #0]
30005304:	f7ff fe3e 	bl	30004f84 <BOOT_LoadSubImage>
30005308:	42a0      	cmp	r0, r4
3000530a:	d103      	bne.n	30005314 <BOOT_OTA_AP+0x8c>
3000530c:	2004      	movs	r0, #4
3000530e:	b007      	add	sp, #28
30005310:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
30005314:	4b0a      	ldr	r3, [pc, #40]	; (30005340 <BOOT_OTA_AP+0xb8>)
30005316:	2245      	movs	r2, #69	; 0x45
30005318:	490a      	ldr	r1, [pc, #40]	; (30005344 <BOOT_OTA_AP+0xbc>)
3000531a:	2002      	movs	r0, #2
3000531c:	4c0a      	ldr	r4, [pc, #40]	; (30005348 <BOOT_OTA_AP+0xc0>)
3000531e:	f004 f815 	bl	3000934c <rtk_log_write>
30005322:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
30005326:	47a0      	blx	r4
30005328:	e7fb      	b.n	30005322 <BOOT_OTA_AP+0x9a>
3000532a:	bf00      	nop
3000532c:	3000e8dc 	.word	0x3000e8dc
30005330:	3000bf00 	.word	0x3000bf00
30005334:	0fffffe0 	.word	0x0fffffe0
30005338:	3000a421 	.word	0x3000a421
3000533c:	3000a5bd 	.word	0x3000a5bd
30005340:	3000bd7c 	.word	0x3000bd7c
30005344:	3000b894 	.word	0x3000b894
30005348:	00009be5 	.word	0x00009be5
3000534c:	0e000000 	.word	0x0e000000
30005350:	3000a3e1 	.word	0x3000a3e1

30005354 <BOOT_OTA_LoadIMG2>:
30005354:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30005358:	4b7e      	ldr	r3, [pc, #504]	; (30005554 <BOOT_OTA_LoadIMG2+0x200>)
3000535a:	b08f      	sub	sp, #60	; 0x3c
3000535c:	4605      	mov	r5, r0
3000535e:	f8df 8254 	ldr.w	r8, [pc, #596]	; 300055b4 <BOOT_OTA_LoadIMG2+0x260>
30005362:	ae08      	add	r6, sp, #32
30005364:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
30005368:	330c      	adds	r3, #12
3000536a:	e886 0007 	stmia.w	r6, {r0, r1, r2}
3000536e:	2200      	movs	r2, #0
30005370:	e9cd 2206 	strd	r2, r2, [sp, #24]
30005374:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
30005378:	ab0b      	add	r3, sp, #44	; 0x2c
3000537a:	e883 0007 	stmia.w	r3, {r0, r1, r2}
3000537e:	f44f 73c8 	mov.w	r3, #400	; 0x190
30005382:	1caa      	adds	r2, r5, #2
30005384:	4974      	ldr	r1, [pc, #464]	; (30005558 <BOOT_OTA_LoadIMG2+0x204>)
30005386:	fb03 f305 	mul.w	r3, r3, r5
3000538a:	f851 4022 	ldr.w	r4, [r1, r2, lsl #2]
3000538e:	461f      	mov	r7, r3
30005390:	9205      	str	r2, [sp, #20]
30005392:	9304      	str	r3, [sp, #16]
30005394:	47c0      	blx	r8
30005396:	b148      	cbz	r0, 300053ac <BOOT_OTA_LoadIMG2+0x58>
30005398:	4970      	ldr	r1, [pc, #448]	; (3000555c <BOOT_OTA_LoadIMG2+0x208>)
3000539a:	2208      	movs	r2, #8
3000539c:	4b70      	ldr	r3, [pc, #448]	; (30005560 <BOOT_OTA_LoadIMG2+0x20c>)
3000539e:	a806      	add	r0, sp, #24
300053a0:	4439      	add	r1, r7
300053a2:	4798      	blx	r3
300053a4:	a906      	add	r1, sp, #24
300053a6:	2001      	movs	r0, #1
300053a8:	4b6e      	ldr	r3, [pc, #440]	; (30005564 <BOOT_OTA_LoadIMG2+0x210>)
300053aa:	4798      	blx	r3
300053ac:	f8df b208 	ldr.w	fp, [pc, #520]	; 300055b8 <BOOT_OTA_LoadIMG2+0x264>
300053b0:	f504 5480 	add.w	r4, r4, #4096	; 0x1000
300053b4:	4a6c      	ldr	r2, [pc, #432]	; (30005568 <BOOT_OTA_LoadIMG2+0x214>)
300053b6:	2000      	movs	r0, #0
300053b8:	4623      	mov	r3, r4
300053ba:	4659      	mov	r1, fp
300053bc:	4f6b      	ldr	r7, [pc, #428]	; (3000556c <BOOT_OTA_LoadIMG2+0x218>)
300053be:	f04f 0801 	mov.w	r8, #1
300053c2:	47b8      	blx	r7
300053c4:	2101      	movs	r1, #1
300053c6:	2000      	movs	r0, #0
300053c8:	4b69      	ldr	r3, [pc, #420]	; (30005570 <BOOT_OTA_LoadIMG2+0x21c>)
300053ca:	4798      	blx	r3
300053cc:	2301      	movs	r3, #1
300053ce:	4966      	ldr	r1, [pc, #408]	; (30005568 <BOOT_OTA_LoadIMG2+0x214>)
300053d0:	4658      	mov	r0, fp
300053d2:	461a      	mov	r2, r3
300053d4:	f8df 91e4 	ldr.w	r9, [pc, #484]	; 300055bc <BOOT_OTA_LoadIMG2+0x268>
300053d8:	f7ff febc 	bl	30005154 <BOOT_OTFCheck>
300053dc:	47c8      	blx	r9
300053de:	2800      	cmp	r0, #0
300053e0:	bf0c      	ite	eq
300053e2:	46a2      	moveq	sl, r4
300053e4:	46da      	movne	sl, fp
300053e6:	4633      	mov	r3, r6
300053e8:	2203      	movs	r2, #3
300053ea:	4651      	mov	r1, sl
300053ec:	4861      	ldr	r0, [pc, #388]	; (30005574 <BOOT_OTA_LoadIMG2+0x220>)
300053ee:	f8cd 8000 	str.w	r8, [sp]
300053f2:	f7ff fdc7 	bl	30004f84 <BOOT_LoadSubImage>
300053f6:	b918      	cbnz	r0, 30005400 <BOOT_OTA_LoadIMG2+0xac>
300053f8:	2000      	movs	r0, #0
300053fa:	b00f      	add	sp, #60	; 0x3c
300053fc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30005400:	4e5c      	ldr	r6, [pc, #368]	; (30005574 <BOOT_OTA_LoadIMG2+0x220>)
30005402:	47c8      	blx	r9
30005404:	2800      	cmp	r0, #0
30005406:	bf08      	it	eq
30005408:	46a3      	moveq	fp, r4
3000540a:	4640      	mov	r0, r8
3000540c:	6872      	ldr	r2, [r6, #4]
3000540e:	68f3      	ldr	r3, [r6, #12]
30005410:	f8c6 b000 	str.w	fp, [r6]
30005414:	4413      	add	r3, r2
30005416:	6972      	ldr	r2, [r6, #20]
30005418:	f8df b1a4 	ldr.w	fp, [pc, #420]	; 300055c0 <BOOT_OTA_LoadIMG2+0x26c>
3000541c:	441a      	add	r2, r3
3000541e:	4b56      	ldr	r3, [pc, #344]	; (30005578 <BOOT_OTA_LoadIMG2+0x224>)
30005420:	eb0a 0102 	add.w	r1, sl, r2
30005424:	61b1      	str	r1, [r6, #24]
30005426:	1e51      	subs	r1, r2, #1
30005428:	400b      	ands	r3, r1
3000542a:	4659      	mov	r1, fp
3000542c:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
30005430:	441c      	add	r4, r3
30005432:	1a9b      	subs	r3, r3, r2
30005434:	4a51      	ldr	r2, [pc, #324]	; (3000557c <BOOT_OTA_LoadIMG2+0x228>)
30005436:	61f3      	str	r3, [r6, #28]
30005438:	4623      	mov	r3, r4
3000543a:	47b8      	blx	r7
3000543c:	4641      	mov	r1, r8
3000543e:	4640      	mov	r0, r8
30005440:	4b4b      	ldr	r3, [pc, #300]	; (30005570 <BOOT_OTA_LoadIMG2+0x21c>)
30005442:	4798      	blx	r3
30005444:	2302      	movs	r3, #2
30005446:	4642      	mov	r2, r8
30005448:	494c      	ldr	r1, [pc, #304]	; (3000557c <BOOT_OTA_LoadIMG2+0x228>)
3000544a:	4658      	mov	r0, fp
3000544c:	f7ff fe82 	bl	30005154 <BOOT_OTFCheck>
30005450:	47c8      	blx	r9
30005452:	ab0b      	add	r3, sp, #44	; 0x2c
30005454:	2800      	cmp	r0, #0
30005456:	bf0c      	ite	eq
30005458:	4621      	moveq	r1, r4
3000545a:	4659      	movne	r1, fp
3000545c:	2203      	movs	r2, #3
3000545e:	f106 0020 	add.w	r0, r6, #32
30005462:	f8cd 8000 	str.w	r8, [sp]
30005466:	f7ff fd8d 	bl	30004f84 <BOOT_LoadSubImage>
3000546a:	2800      	cmp	r0, #0
3000546c:	d0c4      	beq.n	300053f8 <BOOT_OTA_LoadIMG2+0xa4>
3000546e:	47c8      	blx	r9
30005470:	4f43      	ldr	r7, [pc, #268]	; (30005580 <BOOT_OTA_LoadIMG2+0x22c>)
30005472:	2800      	cmp	r0, #0
30005474:	bf08      	it	eq
30005476:	46a3      	moveq	fp, r4
30005478:	9b04      	ldr	r3, [sp, #16]
3000547a:	f8c6 b020 	str.w	fp, [r6, #32]
3000547e:	441f      	add	r7, r3
30005480:	4b40      	ldr	r3, [pc, #256]	; (30005584 <BOOT_OTA_LoadIMG2+0x230>)
30005482:	4798      	blx	r3
30005484:	4540      	cmp	r0, r8
30005486:	d036      	beq.n	300054f6 <BOOT_OTA_LoadIMG2+0x1a2>
30005488:	4b3f      	ldr	r3, [pc, #252]	; (30005588 <BOOT_OTA_LoadIMG2+0x234>)
3000548a:	781b      	ldrb	r3, [r3, #0]
3000548c:	bb43      	cbnz	r3, 300054e0 <BOOT_OTA_LoadIMG2+0x18c>
3000548e:	2207      	movs	r2, #7
30005490:	f44f 71b2 	mov.w	r1, #356	; 0x164
30005494:	2400      	movs	r4, #0
30005496:	4b3d      	ldr	r3, [pc, #244]	; (3000558c <BOOT_OTA_LoadIMG2+0x238>)
30005498:	4638      	mov	r0, r7
3000549a:	9400      	str	r4, [sp, #0]
3000549c:	fb01 3305 	mla	r3, r1, r5, r3
300054a0:	4934      	ldr	r1, [pc, #208]	; (30005574 <BOOT_OTA_LoadIMG2+0x220>)
300054a2:	f7ff faf7 	bl	30004a94 <BOOT_SignatureCheck>
300054a6:	3501      	adds	r5, #1
300054a8:	4604      	mov	r4, r0
300054aa:	b958      	cbnz	r0, 300054c4 <BOOT_OTA_LoadIMG2+0x170>
300054ac:	4938      	ldr	r1, [pc, #224]	; (30005590 <BOOT_OTA_LoadIMG2+0x23c>)
300054ae:	2249      	movs	r2, #73	; 0x49
300054b0:	4b38      	ldr	r3, [pc, #224]	; (30005594 <BOOT_OTA_LoadIMG2+0x240>)
300054b2:	9500      	str	r5, [sp, #0]
300054b4:	e9cd 1001 	strd	r1, r0, [sp, #4]
300054b8:	2004      	movs	r0, #4
300054ba:	4937      	ldr	r1, [pc, #220]	; (30005598 <BOOT_OTA_LoadIMG2+0x244>)
300054bc:	f003 ff46 	bl	3000934c <rtk_log_write>
300054c0:	4620      	mov	r0, r4
300054c2:	e79a      	b.n	300053fa <BOOT_OTA_LoadIMG2+0xa6>
300054c4:	4935      	ldr	r1, [pc, #212]	; (3000559c <BOOT_OTA_LoadIMG2+0x248>)
300054c6:	2249      	movs	r2, #73	; 0x49
300054c8:	4b32      	ldr	r3, [pc, #200]	; (30005594 <BOOT_OTA_LoadIMG2+0x240>)
300054ca:	9500      	str	r5, [sp, #0]
300054cc:	e9cd 1001 	strd	r1, r0, [sp, #4]
300054d0:	4931      	ldr	r1, [pc, #196]	; (30005598 <BOOT_OTA_LoadIMG2+0x244>)
300054d2:	2004      	movs	r0, #4
300054d4:	f003 ff3a 	bl	3000934c <rtk_log_write>
300054d8:	2001      	movs	r0, #1
300054da:	b00f      	add	sp, #60	; 0x3c
300054dc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
300054e0:	2107      	movs	r1, #7
300054e2:	460c      	mov	r4, r1
300054e4:	462a      	mov	r2, r5
300054e6:	4823      	ldr	r0, [pc, #140]	; (30005574 <BOOT_OTA_LoadIMG2+0x220>)
300054e8:	f7ff fece 	bl	30005288 <BOOT_OTA_AP>
300054ec:	4404      	add	r4, r0
300054ee:	2c0d      	cmp	r4, #13
300054f0:	d82b      	bhi.n	3000554a <BOOT_OTA_LoadIMG2+0x1f6>
300054f2:	b2e2      	uxtb	r2, r4
300054f4:	e7cc      	b.n	30005490 <BOOT_OTA_LoadIMG2+0x13c>
300054f6:	4b2a      	ldr	r3, [pc, #168]	; (300055a0 <BOOT_OTA_LoadIMG2+0x24c>)
300054f8:	2249      	movs	r2, #73	; 0x49
300054fa:	4927      	ldr	r1, [pc, #156]	; (30005598 <BOOT_OTA_LoadIMG2+0x244>)
300054fc:	2004      	movs	r0, #4
300054fe:	f003 ff25 	bl	3000934c <rtk_log_write>
30005502:	4b15      	ldr	r3, [pc, #84]	; (30005558 <BOOT_OTA_LoadIMG2+0x204>)
30005504:	9a05      	ldr	r2, [sp, #20]
30005506:	f106 0138 	add.w	r1, r6, #56	; 0x38
3000550a:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
3000550e:	f502 5280 	add.w	r2, r2, #4096	; 0x1000
30005512:	6873      	ldr	r3, [r6, #4]
30005514:	3608      	adds	r6, #8
30005516:	428e      	cmp	r6, r1
30005518:	441a      	add	r2, r3
3000551a:	d1fa      	bne.n	30005512 <BOOT_OTA_LoadIMG2+0x1be>
3000551c:	4921      	ldr	r1, [pc, #132]	; (300055a4 <BOOT_OTA_LoadIMG2+0x250>)
3000551e:	4638      	mov	r0, r7
30005520:	f7ff f8be 	bl	300046a0 <BOOT_LoadRDPImg>
30005524:	b130      	cbz	r0, 30005534 <BOOT_OTA_LoadIMG2+0x1e0>
30005526:	4b18      	ldr	r3, [pc, #96]	; (30005588 <BOOT_OTA_LoadIMG2+0x234>)
30005528:	1dc4      	adds	r4, r0, #7
3000552a:	781b      	ldrb	r3, [r3, #0]
3000552c:	2b00      	cmp	r3, #0
3000552e:	d0de      	beq.n	300054ee <BOOT_OTA_LoadIMG2+0x19a>
30005530:	b2e1      	uxtb	r1, r4
30005532:	e7d7      	b.n	300054e4 <BOOT_OTA_LoadIMG2+0x190>
30005534:	4b1c      	ldr	r3, [pc, #112]	; (300055a8 <BOOT_OTA_LoadIMG2+0x254>)
30005536:	2245      	movs	r2, #69	; 0x45
30005538:	4917      	ldr	r1, [pc, #92]	; (30005598 <BOOT_OTA_LoadIMG2+0x244>)
3000553a:	2002      	movs	r0, #2
3000553c:	4c1b      	ldr	r4, [pc, #108]	; (300055ac <BOOT_OTA_LoadIMG2+0x258>)
3000553e:	f003 ff05 	bl	3000934c <rtk_log_write>
30005542:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
30005546:	47a0      	blx	r4
30005548:	e7fb      	b.n	30005542 <BOOT_OTA_LoadIMG2+0x1ee>
3000554a:	f44f 719a 	mov.w	r1, #308	; 0x134
3000554e:	4818      	ldr	r0, [pc, #96]	; (300055b0 <BOOT_OTA_LoadIMG2+0x25c>)
30005550:	f005 fd2e 	bl	3000afb0 <io_assert_failed>
30005554:	3000bf10 	.word	0x3000bf10
30005558:	3000e8dc 	.word	0x3000e8dc
3000555c:	3000e5dc 	.word	0x3000e5dc
30005560:	00012a1d 	.word	0x00012a1d
30005564:	3000a3ad 	.word	0x3000a3ad
30005568:	0cffffe0 	.word	0x0cffffe0
3000556c:	3000a3e1 	.word	0x3000a3e1
30005570:	3000a421 	.word	0x3000a421
30005574:	3000ea14 	.word	0x3000ea14
30005578:	fffff000 	.word	0xfffff000
3000557c:	0dffffe0 	.word	0x0dffffe0
30005580:	3000e5bc 	.word	0x3000e5bc
30005584:	0000c109 	.word	0x0000c109
30005588:	3000dffa 	.word	0x3000dffa
3000558c:	3000e2f4 	.word	0x3000e2f4
30005590:	3000bdc0 	.word	0x3000bdc0
30005594:	3000bd9c 	.word	0x3000bd9c
30005598:	3000b894 	.word	0x3000b894
3000559c:	3000bdb8 	.word	0x3000bdb8
300055a0:	3000bd94 	.word	0x3000bd94
300055a4:	3000ea4c 	.word	0x3000ea4c
300055a8:	3000bd60 	.word	0x3000bd60
300055ac:	00009be5 	.word	0x00009be5
300055b0:	3000be78 	.word	0x3000be78
300055b4:	0000c129 	.word	0x0000c129
300055b8:	0c000000 	.word	0x0c000000
300055bc:	3000a5bd 	.word	0x3000a5bd
300055c0:	0d000000 	.word	0x0d000000

300055c4 <BOOT_OTA_IMG2>:
300055c4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
300055c8:	4c4c      	ldr	r4, [pc, #304]	; (300056fc <BOOT_OTA_IMG2+0x138>)
300055ca:	b084      	sub	sp, #16
300055cc:	2200      	movs	r2, #0
300055ce:	2002      	movs	r0, #2
300055d0:	4621      	mov	r1, r4
300055d2:	4d4b      	ldr	r5, [pc, #300]	; (30005700 <BOOT_OTA_IMG2+0x13c>)
300055d4:	f003 ff74 	bl	300094c0 <flash_get_layout_info>
300055d8:	2200      	movs	r2, #0
300055da:	1d21      	adds	r1, r4, #4
300055dc:	2003      	movs	r0, #3
300055de:	f003 ff6f 	bl	300094c0 <flash_get_layout_info>
300055e2:	e9d4 2300 	ldrd	r2, r3, [r4]
300055e6:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
300055ea:	f502 5280 	add.w	r2, r2, #4096	; 0x1000
300055ee:	e9c4 2302 	strd	r2, r3, [r4, #8]
300055f2:	f7ff fc13 	bl	30004e1c <BOOT_OTA_SlotSelect>
300055f6:	782b      	ldrb	r3, [r5, #0]
300055f8:	b373      	cbz	r3, 30005658 <BOOT_OTA_IMG2+0x94>
300055fa:	f04f 0a00 	mov.w	sl, #0
300055fe:	4604      	mov	r4, r0
30005600:	4f40      	ldr	r7, [pc, #256]	; (30005704 <BOOT_OTA_IMG2+0x140>)
30005602:	f44f 76b2 	mov.w	r6, #356	; 0x164
30005606:	f8df 911c 	ldr.w	r9, [pc, #284]	; 30005724 <BOOT_OTA_IMG2+0x160>
3000560a:	46d0      	mov	r8, sl
3000560c:	4621      	mov	r1, r4
3000560e:	fb06 7004 	mla	r0, r6, r4, r7
30005612:	f7ff fb45 	bl	30004ca0 <BOOT_CertificateCheck>
30005616:	2801      	cmp	r0, #1
30005618:	d043      	beq.n	300056a2 <BOOT_OTA_IMG2+0xde>
3000561a:	f10a 0a01 	add.w	sl, sl, #1
3000561e:	782b      	ldrb	r3, [r5, #0]
30005620:	3401      	adds	r4, #1
30005622:	fa5f fa8a 	uxtb.w	sl, sl
30005626:	f004 0401 	and.w	r4, r4, #1
3000562a:	4553      	cmp	r3, sl
3000562c:	d8ee      	bhi.n	3000560c <BOOT_OTA_IMG2+0x48>
3000562e:	459a      	cmp	sl, r3
30005630:	d012      	beq.n	30005658 <BOOT_OTA_IMG2+0x94>
30005632:	4935      	ldr	r1, [pc, #212]	; (30005708 <BOOT_OTA_IMG2+0x144>)
30005634:	1c60      	adds	r0, r4, #1
30005636:	4b35      	ldr	r3, [pc, #212]	; (3000570c <BOOT_OTA_IMG2+0x148>)
30005638:	2249      	movs	r2, #73	; 0x49
3000563a:	f851 1034 	ldr.w	r1, [r1, r4, lsl #3]
3000563e:	9000      	str	r0, [sp, #0]
30005640:	b28d      	uxth	r5, r1
30005642:	0c08      	lsrs	r0, r1, #16
30005644:	4932      	ldr	r1, [pc, #200]	; (30005710 <BOOT_OTA_IMG2+0x14c>)
30005646:	9502      	str	r5, [sp, #8]
30005648:	9001      	str	r0, [sp, #4]
3000564a:	2004      	movs	r0, #4
3000564c:	f003 fe7e 	bl	3000934c <rtk_log_write>
30005650:	4620      	mov	r0, r4
30005652:	b004      	add	sp, #16
30005654:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
30005658:	4b2e      	ldr	r3, [pc, #184]	; (30005714 <BOOT_OTA_IMG2+0x150>)
3000565a:	2245      	movs	r2, #69	; 0x45
3000565c:	492c      	ldr	r1, [pc, #176]	; (30005710 <BOOT_OTA_IMG2+0x14c>)
3000565e:	2002      	movs	r0, #2
30005660:	f003 fe74 	bl	3000934c <rtk_log_write>
30005664:	4b2c      	ldr	r3, [pc, #176]	; (30005718 <BOOT_OTA_IMG2+0x154>)
30005666:	f383 8808 	msr	MSP, r3
3000566a:	f641 727c 	movw	r2, #8060	; 0x1f7c
3000566e:	4b2b      	ldr	r3, [pc, #172]	; (3000571c <BOOT_OTA_IMG2+0x158>)
30005670:	2100      	movs	r1, #0
30005672:	482b      	ldr	r0, [pc, #172]	; (30005720 <BOOT_OTA_IMG2+0x15c>)
30005674:	4798      	blx	r3
30005676:	4a2b      	ldr	r2, [pc, #172]	; (30005724 <BOOT_OTA_IMG2+0x160>)
30005678:	6953      	ldr	r3, [r2, #20]
3000567a:	03db      	lsls	r3, r3, #15
3000567c:	d50c      	bpl.n	30005698 <BOOT_OTA_IMG2+0xd4>
3000567e:	f3bf 8f4f 	dsb	sy
30005682:	4b27      	ldr	r3, [pc, #156]	; (30005720 <BOOT_OTA_IMG2+0x15c>)
30005684:	4928      	ldr	r1, [pc, #160]	; (30005728 <BOOT_OTA_IMG2+0x164>)
30005686:	f8c2 3270 	str.w	r3, [r2, #624]	; 0x270
3000568a:	3320      	adds	r3, #32
3000568c:	428b      	cmp	r3, r1
3000568e:	d1fa      	bne.n	30005686 <BOOT_OTA_IMG2+0xc2>
30005690:	f3bf 8f4f 	dsb	sy
30005694:	f3bf 8f6f 	isb	sy
30005698:	4c24      	ldr	r4, [pc, #144]	; (3000572c <BOOT_OTA_IMG2+0x168>)
3000569a:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
3000569e:	47a0      	blx	r4
300056a0:	e7fb      	b.n	3000569a <BOOT_OTA_IMG2+0xd6>
300056a2:	4620      	mov	r0, r4
300056a4:	f7ff fe56 	bl	30005354 <BOOT_OTA_LoadIMG2>
300056a8:	2801      	cmp	r0, #1
300056aa:	d103      	bne.n	300056b4 <BOOT_OTA_IMG2+0xf0>
300056ac:	782b      	ldrb	r3, [r5, #0]
300056ae:	459a      	cmp	sl, r3
300056b0:	d1bf      	bne.n	30005632 <BOOT_OTA_IMG2+0x6e>
300056b2:	e7d1      	b.n	30005658 <BOOT_OTA_IMG2+0x94>
300056b4:	f8d9 3014 	ldr.w	r3, [r9, #20]
300056b8:	03d9      	lsls	r1, r3, #15
300056ba:	d5ae      	bpl.n	3000561a <BOOT_OTA_IMG2+0x56>
300056bc:	f8c9 8084 	str.w	r8, [r9, #132]	; 0x84
300056c0:	f3bf 8f4f 	dsb	sy
300056c4:	f8d9 3080 	ldr.w	r3, [r9, #128]	; 0x80
300056c8:	f643 7ee0 	movw	lr, #16352	; 0x3fe0
300056cc:	f3c3 304e 	ubfx	r0, r3, #13, #15
300056d0:	f3c3 0cc9 	ubfx	ip, r3, #3, #10
300056d4:	0140      	lsls	r0, r0, #5
300056d6:	ea00 010e 	and.w	r1, r0, lr
300056da:	4663      	mov	r3, ip
300056dc:	ea41 7283 	orr.w	r2, r1, r3, lsl #30
300056e0:	3b01      	subs	r3, #1
300056e2:	f8c9 2274 	str.w	r2, [r9, #628]	; 0x274
300056e6:	1c5a      	adds	r2, r3, #1
300056e8:	d1f8      	bne.n	300056dc <BOOT_OTA_IMG2+0x118>
300056ea:	3820      	subs	r0, #32
300056ec:	f110 0f20 	cmn.w	r0, #32
300056f0:	d1f1      	bne.n	300056d6 <BOOT_OTA_IMG2+0x112>
300056f2:	f3bf 8f4f 	dsb	sy
300056f6:	f3bf 8f6f 	isb	sy
300056fa:	e78e      	b.n	3000561a <BOOT_OTA_IMG2+0x56>
300056fc:	3000e8dc 	.word	0x3000e8dc
30005700:	3000ea84 	.word	0x3000ea84
30005704:	3000e2f4 	.word	0x3000e2f4
30005708:	3000ea88 	.word	0x3000ea88
3000570c:	3000bdc8 	.word	0x3000bdc8
30005710:	3000b894 	.word	0x3000b894
30005714:	3000bdf4 	.word	0x3000bdf4
30005718:	30002ffc 	.word	0x30002ffc
3000571c:	00012be5 	.word	0x00012be5
30005720:	30001000 	.word	0x30001000
30005724:	e000ed00 	.word	0xe000ed00
30005728:	30002f80 	.word	0x30002f80
3000572c:	00009be5 	.word	0x00009be5

30005730 <BOOT_OTA_AP_Linux>:
30005730:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30005734:	4b46      	ldr	r3, [pc, #280]	; (30005850 <BOOT_OTA_AP_Linux+0x120>)
30005736:	4605      	mov	r5, r0
30005738:	f8df 9138 	ldr.w	r9, [pc, #312]	; 30005874 <BOOT_OTA_AP_Linux+0x144>
3000573c:	ed2d 8b02 	vpush	{d8}
30005740:	b0eb      	sub	sp, #428	; 0x1ac
30005742:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
30005746:	af03      	add	r7, sp, #12
30005748:	f899 3000 	ldrb.w	r3, [r9]
3000574c:	e887 0007 	stmia.w	r7, {r0, r1, r2}
30005750:	2b00      	cmp	r3, #0
30005752:	d072      	beq.n	3000583a <BOOT_OTA_AP_Linux+0x10a>
30005754:	4b3f      	ldr	r3, [pc, #252]	; (30005854 <BOOT_OTA_AP_Linux+0x124>)
30005756:	f44f 72b2 	mov.w	r2, #356	; 0x164
3000575a:	2600      	movs	r6, #0
3000575c:	f8df b118 	ldr.w	fp, [pc, #280]	; 30005878 <BOOT_OTA_AP_Linux+0x148>
30005760:	fb02 3305 	mla	r3, r2, r5, r3
30005764:	f8df 8114 	ldr.w	r8, [pc, #276]	; 3000587c <BOOT_OTA_AP_Linux+0x14c>
30005768:	4c3b      	ldr	r4, [pc, #236]	; (30005858 <BOOT_OTA_AP_Linux+0x128>)
3000576a:	ee08 3a10 	vmov	s16, r3
3000576e:	e017      	b.n	300057a0 <BOOT_OTA_AP_Linux+0x70>
30005770:	a806      	add	r0, sp, #24
30005772:	4b3a      	ldr	r3, [pc, #232]	; (3000585c <BOOT_OTA_AP_Linux+0x12c>)
30005774:	4798      	blx	r3
30005776:	2301      	movs	r3, #1
30005778:	f50a 5180 	add.w	r1, sl, #4096	; 0x1000
3000577c:	2203      	movs	r2, #3
3000577e:	4640      	mov	r0, r8
30005780:	9300      	str	r3, [sp, #0]
30005782:	463b      	mov	r3, r7
30005784:	f7ff fbfe 	bl	30004f84 <BOOT_LoadSubImage>
30005788:	2801      	cmp	r0, #1
3000578a:	f105 0501 	add.w	r5, r5, #1
3000578e:	d015      	beq.n	300057bc <BOOT_OTA_AP_Linux+0x8c>
30005790:	3601      	adds	r6, #1
30005792:	f899 3000 	ldrb.w	r3, [r9]
30005796:	f005 0501 	and.w	r5, r5, #1
3000579a:	b2f6      	uxtb	r6, r6
3000579c:	42b3      	cmp	r3, r6
3000579e:	d944      	bls.n	3000582a <BOOT_OTA_AP_Linux+0xfa>
300057a0:	1d2b      	adds	r3, r5, #4
300057a2:	f85b a023 	ldr.w	sl, [fp, r3, lsl #2]
300057a6:	4b2e      	ldr	r3, [pc, #184]	; (30005860 <BOOT_OTA_AP_Linux+0x130>)
300057a8:	4798      	blx	r3
300057aa:	f44f 72c8 	mov.w	r2, #400	; 0x190
300057ae:	4651      	mov	r1, sl
300057b0:	2800      	cmp	r0, #0
300057b2:	d1dd      	bne.n	30005770 <BOOT_OTA_AP_Linux+0x40>
300057b4:	a806      	add	r0, sp, #24
300057b6:	f000 fe67 	bl	30006488 <NandImgCopy>
300057ba:	e7dc      	b.n	30005776 <BOOT_OTA_AP_Linux+0x46>
300057bc:	2302      	movs	r3, #2
300057be:	2203      	movs	r2, #3
300057c0:	4641      	mov	r1, r8
300057c2:	a806      	add	r0, sp, #24
300057c4:	9300      	str	r3, [sp, #0]
300057c6:	ee18 3a10 	vmov	r3, s16
300057ca:	f7ff f963 	bl	30004a94 <BOOT_SignatureCheck>
300057ce:	2801      	cmp	r0, #1
300057d0:	d022      	beq.n	30005818 <BOOT_OTA_AP_Linux+0xe8>
300057d2:	6963      	ldr	r3, [r4, #20]
300057d4:	03db      	lsls	r3, r3, #15
300057d6:	d5db      	bpl.n	30005790 <BOOT_OTA_AP_Linux+0x60>
300057d8:	2300      	movs	r3, #0
300057da:	f8c4 3084 	str.w	r3, [r4, #132]	; 0x84
300057de:	f3bf 8f4f 	dsb	sy
300057e2:	f8d4 3080 	ldr.w	r3, [r4, #128]	; 0x80
300057e6:	f643 7ee0 	movw	lr, #16352	; 0x3fe0
300057ea:	f3c3 304e 	ubfx	r0, r3, #13, #15
300057ee:	f3c3 0cc9 	ubfx	ip, r3, #3, #10
300057f2:	0140      	lsls	r0, r0, #5
300057f4:	ea00 010e 	and.w	r1, r0, lr
300057f8:	4663      	mov	r3, ip
300057fa:	ea41 7283 	orr.w	r2, r1, r3, lsl #30
300057fe:	3b01      	subs	r3, #1
30005800:	f8c4 2274 	str.w	r2, [r4, #628]	; 0x274
30005804:	d2f9      	bcs.n	300057fa <BOOT_OTA_AP_Linux+0xca>
30005806:	3820      	subs	r0, #32
30005808:	f110 0f20 	cmn.w	r0, #32
3000580c:	d1f2      	bne.n	300057f4 <BOOT_OTA_AP_Linux+0xc4>
3000580e:	f3bf 8f4f 	dsb	sy
30005812:	f3bf 8f6f 	isb	sy
30005816:	e7bb      	b.n	30005790 <BOOT_OTA_AP_Linux+0x60>
30005818:	4b12      	ldr	r3, [pc, #72]	; (30005864 <BOOT_OTA_AP_Linux+0x134>)
3000581a:	2249      	movs	r2, #73	; 0x49
3000581c:	4912      	ldr	r1, [pc, #72]	; (30005868 <BOOT_OTA_AP_Linux+0x138>)
3000581e:	2004      	movs	r0, #4
30005820:	9500      	str	r5, [sp, #0]
30005822:	f003 fd93 	bl	3000934c <rtk_log_write>
30005826:	f899 3000 	ldrb.w	r3, [r9]
3000582a:	429e      	cmp	r6, r3
3000582c:	d005      	beq.n	3000583a <BOOT_OTA_AP_Linux+0x10a>
3000582e:	2000      	movs	r0, #0
30005830:	b06b      	add	sp, #428	; 0x1ac
30005832:	ecbd 8b02 	vpop	{d8}
30005836:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
3000583a:	4b0c      	ldr	r3, [pc, #48]	; (3000586c <BOOT_OTA_AP_Linux+0x13c>)
3000583c:	2245      	movs	r2, #69	; 0x45
3000583e:	490a      	ldr	r1, [pc, #40]	; (30005868 <BOOT_OTA_AP_Linux+0x138>)
30005840:	2002      	movs	r0, #2
30005842:	4c0b      	ldr	r4, [pc, #44]	; (30005870 <BOOT_OTA_AP_Linux+0x140>)
30005844:	f003 fd82 	bl	3000934c <rtk_log_write>
30005848:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
3000584c:	47a0      	blx	r4
3000584e:	e7fb      	b.n	30005848 <BOOT_OTA_AP_Linux+0x118>
30005850:	3000bf28 	.word	0x3000bf28
30005854:	3000e2f4 	.word	0x3000e2f4
30005858:	e000ed00 	.word	0xe000ed00
3000585c:	00012a1d 	.word	0x00012a1d
30005860:	3000a5bd 	.word	0x3000a5bd
30005864:	3000be24 	.word	0x3000be24
30005868:	3000b894 	.word	0x3000b894
3000586c:	3000bd7c 	.word	0x3000bd7c
30005870:	00009be5 	.word	0x00009be5
30005874:	3000ea84 	.word	0x3000ea84
30005878:	3000e8dc 	.word	0x3000e8dc
3000587c:	3000ea14 	.word	0x3000ea14

30005880 <FLASH_ClockDiv>:
30005880:	2200      	movs	r2, #0
30005882:	2180      	movs	r1, #128	; 0x80
30005884:	b538      	push	{r3, r4, r5, lr}
30005886:	4605      	mov	r5, r0
30005888:	4c1e      	ldr	r4, [pc, #120]	; (30005904 <FLASH_ClockDiv+0x84>)
3000588a:	4610      	mov	r0, r2
3000588c:	47a0      	blx	r4
3000588e:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
30005892:	022d      	lsls	r5, r5, #8
30005894:	230a      	movs	r3, #10
30005896:	6c11      	ldr	r1, [r2, #64]	; 0x40
30005898:	f405 6570 	and.w	r5, r5, #3840	; 0xf00
3000589c:	f421 5140 	bic.w	r1, r1, #12288	; 0x3000
300058a0:	6411      	str	r1, [r2, #64]	; 0x40
300058a2:	6c11      	ldr	r1, [r2, #64]	; 0x40
300058a4:	f421 6170 	bic.w	r1, r1, #3840	; 0xf00
300058a8:	430d      	orrs	r5, r1
300058aa:	4917      	ldr	r1, [pc, #92]	; (30005908 <FLASH_ClockDiv+0x88>)
300058ac:	6415      	str	r5, [r2, #64]	; 0x40
300058ae:	e001      	b.n	300058b4 <FLASH_ClockDiv+0x34>
300058b0:	2a00      	cmp	r2, #0
300058b2:	db02      	blt.n	300058ba <FLASH_ClockDiv+0x3a>
300058b4:	3b01      	subs	r3, #1
300058b6:	6c0a      	ldr	r2, [r1, #64]	; 0x40
300058b8:	d1fa      	bne.n	300058b0 <FLASH_ClockDiv+0x30>
300058ba:	230a      	movs	r3, #10
300058bc:	4912      	ldr	r1, [pc, #72]	; (30005908 <FLASH_ClockDiv+0x88>)
300058be:	e000      	b.n	300058c2 <FLASH_ClockDiv+0x42>
300058c0:	b11b      	cbz	r3, 300058ca <FLASH_ClockDiv+0x4a>
300058c2:	6c0a      	ldr	r2, [r1, #64]	; 0x40
300058c4:	3b01      	subs	r3, #1
300058c6:	0092      	lsls	r2, r2, #2
300058c8:	d5fa      	bpl.n	300058c0 <FLASH_ClockDiv+0x40>
300058ca:	f04f 4182 	mov.w	r1, #1090519040	; 0x41000000
300058ce:	220a      	movs	r2, #10
300058d0:	6c0b      	ldr	r3, [r1, #64]	; 0x40
300058d2:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
300058d6:	640b      	str	r3, [r1, #64]	; 0x40
300058d8:	6c0b      	ldr	r3, [r1, #64]	; 0x40
300058da:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
300058de:	640b      	str	r3, [r1, #64]	; 0x40
300058e0:	e000      	b.n	300058e4 <FLASH_ClockDiv+0x64>
300058e2:	b12a      	cbz	r2, 300058f0 <FLASH_ClockDiv+0x70>
300058e4:	6c0b      	ldr	r3, [r1, #64]	; 0x40
300058e6:	3a01      	subs	r2, #1
300058e8:	f003 0303 	and.w	r3, r3, #3
300058ec:	2b03      	cmp	r3, #3
300058ee:	d1f8      	bne.n	300058e2 <FLASH_ClockDiv+0x62>
300058f0:	2201      	movs	r2, #1
300058f2:	2180      	movs	r1, #128	; 0x80
300058f4:	f44f 7080 	mov.w	r0, #256	; 0x100
300058f8:	47a0      	blx	r4
300058fa:	2003      	movs	r0, #3
300058fc:	4b03      	ldr	r3, [pc, #12]	; (3000590c <FLASH_ClockDiv+0x8c>)
300058fe:	4798      	blx	r3
30005900:	2001      	movs	r0, #1
30005902:	bd38      	pop	{r3, r4, r5, pc}
30005904:	0000b479 	.word	0x0000b479
30005908:	42008800 	.word	0x42008800
3000590c:	0000b569 	.word	0x0000b569

30005910 <FLASH_CalibrationPhaseIdx>:
30005910:	2200      	movs	r2, #0
30005912:	2180      	movs	r1, #128	; 0x80
30005914:	b538      	push	{r3, r4, r5, lr}
30005916:	4604      	mov	r4, r0
30005918:	4d1a      	ldr	r5, [pc, #104]	; (30005984 <FLASH_CalibrationPhaseIdx+0x74>)
3000591a:	4610      	mov	r0, r2
3000591c:	47a8      	blx	r5
3000591e:	f04f 4182 	mov.w	r1, #1090519040	; 0x41000000
30005922:	230a      	movs	r3, #10
30005924:	6c0a      	ldr	r2, [r1, #64]	; 0x40
30005926:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
3000592a:	640a      	str	r2, [r1, #64]	; 0x40
3000592c:	6c0a      	ldr	r2, [r1, #64]	; 0x40
3000592e:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
30005932:	640a      	str	r2, [r1, #64]	; 0x40
30005934:	e000      	b.n	30005938 <FLASH_CalibrationPhaseIdx+0x28>
30005936:	b11b      	cbz	r3, 30005940 <FLASH_CalibrationPhaseIdx+0x30>
30005938:	6c0a      	ldr	r2, [r1, #64]	; 0x40
3000593a:	3b01      	subs	r3, #1
3000593c:	0792      	lsls	r2, r2, #30
3000593e:	d1fa      	bne.n	30005936 <FLASH_CalibrationPhaseIdx+0x26>
30005940:	f04f 4182 	mov.w	r1, #1090519040	; 0x41000000
30005944:	00a4      	lsls	r4, r4, #2
30005946:	220a      	movs	r2, #10
30005948:	6c0b      	ldr	r3, [r1, #64]	; 0x40
3000594a:	f004 047c 	and.w	r4, r4, #124	; 0x7c
3000594e:	f023 037c 	bic.w	r3, r3, #124	; 0x7c
30005952:	431c      	orrs	r4, r3
30005954:	640c      	str	r4, [r1, #64]	; 0x40
30005956:	6c0b      	ldr	r3, [r1, #64]	; 0x40
30005958:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
3000595c:	640b      	str	r3, [r1, #64]	; 0x40
3000595e:	6c0b      	ldr	r3, [r1, #64]	; 0x40
30005960:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
30005964:	640b      	str	r3, [r1, #64]	; 0x40
30005966:	e000      	b.n	3000596a <FLASH_CalibrationPhaseIdx+0x5a>
30005968:	b12a      	cbz	r2, 30005976 <FLASH_CalibrationPhaseIdx+0x66>
3000596a:	6c0b      	ldr	r3, [r1, #64]	; 0x40
3000596c:	3a01      	subs	r2, #1
3000596e:	f003 0303 	and.w	r3, r3, #3
30005972:	2b03      	cmp	r3, #3
30005974:	d1f8      	bne.n	30005968 <FLASH_CalibrationPhaseIdx+0x58>
30005976:	2000      	movs	r0, #0
30005978:	2201      	movs	r2, #1
3000597a:	2180      	movs	r1, #128	; 0x80
3000597c:	47a8      	blx	r5
3000597e:	2001      	movs	r0, #1
30005980:	bd38      	pop	{r3, r4, r5, pc}
30005982:	bf00      	nop
30005984:	0000b479 	.word	0x0000b479

30005988 <FLASH_CalibrationNewCmd>:
30005988:	f04f 4382 	mov.w	r3, #1090519040	; 0x41000000
3000598c:	2801      	cmp	r0, #1
3000598e:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
30005992:	f04f 0001 	mov.w	r0, #1
30005996:	6c1b      	ldr	r3, [r3, #64]	; 0x40
30005998:	bf0c      	ite	eq
3000599a:	f443 4300 	orreq.w	r3, r3, #32768	; 0x8000
3000599e:	f423 4300 	bicne.w	r3, r3, #32768	; 0x8000
300059a2:	6413      	str	r3, [r2, #64]	; 0x40
300059a4:	4770      	bx	lr
300059a6:	bf00      	nop

300059a8 <FLASH_CalibrationNew>:
300059a8:	0052      	lsls	r2, r2, #1
300059aa:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
300059ae:	3201      	adds	r2, #1
300059b0:	b087      	sub	sp, #28
300059b2:	461f      	mov	r7, r3
300059b4:	4b4d      	ldr	r3, [pc, #308]	; (30005aec <FLASH_CalibrationNew+0x144>)
300059b6:	9101      	str	r1, [sp, #4]
300059b8:	fa5f f882 	uxtb.w	r8, r2
300059bc:	f89d 4040 	ldrb.w	r4, [sp, #64]	; 0x40
300059c0:	f89d a044 	ldrb.w	sl, [sp, #68]	; 0x44
300059c4:	9003      	str	r0, [sp, #12]
300059c6:	4798      	blx	r3
300059c8:	9901      	ldr	r1, [sp, #4]
300059ca:	2800      	cmp	r0, #0
300059cc:	d07f      	beq.n	30005ace <FLASH_CalibrationNew+0x126>
300059ce:	4848      	ldr	r0, [pc, #288]	; (30005af0 <FLASH_CalibrationNew+0x148>)
300059d0:	4a48      	ldr	r2, [pc, #288]	; (30005af4 <FLASH_CalibrationNew+0x14c>)
300059d2:	4790      	blx	r2
300059d4:	4b46      	ldr	r3, [pc, #280]	; (30005af0 <FLASH_CalibrationNew+0x148>)
300059d6:	f04f 4088 	mov.w	r0, #1140850688	; 0x44000000
300059da:	0322      	lsls	r2, r4, #12
300059dc:	f04f 4182 	mov.w	r1, #1090519040	; 0x41000000
300059e0:	795c      	ldrb	r4, [r3, #5]
300059e2:	45d0      	cmp	r8, sl
300059e4:	b292      	uxth	r2, r2
300059e6:	6144      	str	r4, [r0, #20]
300059e8:	f8d0 411c 	ldr.w	r4, [r0, #284]	; 0x11c
300059ec:	f424 4470 	bic.w	r4, r4, #61440	; 0xf000
300059f0:	ea42 0204 	orr.w	r2, r2, r4
300059f4:	f8c0 211c 	str.w	r2, [r0, #284]	; 0x11c
300059f8:	6c0a      	ldr	r2, [r1, #64]	; 0x40
300059fa:	f422 4200 	bic.w	r2, r2, #32768	; 0x8000
300059fe:	640a      	str	r2, [r1, #64]	; 0x40
30005a00:	6c0a      	ldr	r2, [r1, #64]	; 0x40
30005a02:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
30005a06:	640a      	str	r2, [r1, #64]	; 0x40
30005a08:	d36e      	bcc.n	30005ae8 <FLASH_CalibrationNew+0x140>
30005a0a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
30005a0e:	2500      	movs	r5, #0
30005a10:	f8df b0f4 	ldr.w	fp, [pc, #244]	; 30005b08 <FLASH_CalibrationNew+0x160>
30005a14:	f04f 6400 	mov.w	r4, #134217728	; 0x8000000
30005a18:	4e37      	ldr	r6, [pc, #220]	; (30005af8 <FLASH_CalibrationNew+0x150>)
30005a1a:	f8df 90f0 	ldr.w	r9, [pc, #240]	; 30005b0c <FLASH_CalibrationNew+0x164>
30005a1e:	9302      	str	r3, [sp, #8]
30005a20:	9301      	str	r3, [sp, #4]
30005a22:	e00e      	b.n	30005a42 <FLASH_CalibrationNew+0x9a>
30005a24:	9b01      	ldr	r3, [sp, #4]
30005a26:	443d      	add	r5, r7
30005a28:	f8cd a008 	str.w	sl, [sp, #8]
30005a2c:	3301      	adds	r3, #1
30005a2e:	d102      	bne.n	30005a36 <FLASH_CalibrationNew+0x8e>
30005a30:	2501      	movs	r5, #1
30005a32:	f8cd a004 	str.w	sl, [sp, #4]
30005a36:	eb07 030a 	add.w	r3, r7, sl
30005a3a:	fa5f fa83 	uxtb.w	sl, r3
30005a3e:	45d0      	cmp	r8, sl
30005a40:	d33c      	bcc.n	30005abc <FLASH_CalibrationNew+0x114>
30005a42:	4650      	mov	r0, sl
30005a44:	f7ff ff64 	bl	30005910 <FLASH_CalibrationPhaseIdx>
30005a48:	6972      	ldr	r2, [r6, #20]
30005a4a:	03d3      	lsls	r3, r2, #15
30005a4c:	d507      	bpl.n	30005a5e <FLASH_CalibrationNew+0xb6>
30005a4e:	f3bf 8f4f 	dsb	sy
30005a52:	f8c6 425c 	str.w	r4, [r6, #604]	; 0x25c
30005a56:	f3bf 8f4f 	dsb	sy
30005a5a:	f3bf 8f6f 	isb	sy
30005a5e:	47d8      	blx	fp
30005a60:	6821      	ldr	r1, [r4, #0]
30005a62:	2208      	movs	r2, #8
30005a64:	a804      	add	r0, sp, #16
30005a66:	9104      	str	r1, [sp, #16]
30005a68:	6861      	ldr	r1, [r4, #4]
30005a6a:	4b24      	ldr	r3, [pc, #144]	; (30005afc <FLASH_CalibrationNew+0x154>)
30005a6c:	9105      	str	r1, [sp, #20]
30005a6e:	4649      	mov	r1, r9
30005a70:	4798      	blx	r3
30005a72:	2800      	cmp	r0, #0
30005a74:	d0d6      	beq.n	30005a24 <FLASH_CalibrationNew+0x7c>
30005a76:	2d00      	cmp	r5, #0
30005a78:	dddd      	ble.n	30005a36 <FLASH_CalibrationNew+0x8e>
30005a7a:	9b02      	ldr	r3, [sp, #8]
30005a7c:	9903      	ldr	r1, [sp, #12]
30005a7e:	061a      	lsls	r2, r3, #24
30005a80:	9b01      	ldr	r3, [sp, #4]
30005a82:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
30005a86:	eb03 0365 	add.w	r3, r3, r5, asr #1
30005a8a:	4315      	orrs	r5, r2
30005a8c:	f881 3061 	strb.w	r3, [r1, #97]	; 0x61
30005a90:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
30005a94:	4c16      	ldr	r4, [pc, #88]	; (30005af0 <FLASH_CalibrationNew+0x148>)
30005a96:	6c13      	ldr	r3, [r2, #64]	; 0x40
30005a98:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
30005a9c:	6413      	str	r3, [r2, #64]	; 0x40
30005a9e:	f04f 4388 	mov.w	r3, #1140850688	; 0x44000000
30005aa2:	79a2      	ldrb	r2, [r4, #6]
30005aa4:	615a      	str	r2, [r3, #20]
30005aa6:	4b11      	ldr	r3, [pc, #68]	; (30005aec <FLASH_CalibrationNew+0x144>)
30005aa8:	4798      	blx	r3
30005aaa:	b1a0      	cbz	r0, 30005ad6 <FLASH_CalibrationNew+0x12e>
30005aac:	4620      	mov	r0, r4
30005aae:	7921      	ldrb	r1, [r4, #4]
30005ab0:	4b10      	ldr	r3, [pc, #64]	; (30005af4 <FLASH_CalibrationNew+0x14c>)
30005ab2:	4798      	blx	r3
30005ab4:	4628      	mov	r0, r5
30005ab6:	b007      	add	sp, #28
30005ab8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30005abc:	2d00      	cmp	r5, #0
30005abe:	dcdc      	bgt.n	30005a7a <FLASH_CalibrationNew+0xd2>
30005ac0:	9b02      	ldr	r3, [sp, #8]
30005ac2:	9a01      	ldr	r2, [sp, #4]
30005ac4:	061b      	lsls	r3, r3, #24
30005ac6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
30005aca:	431d      	orrs	r5, r3
30005acc:	e7e0      	b.n	30005a90 <FLASH_CalibrationNew+0xe8>
30005ace:	4808      	ldr	r0, [pc, #32]	; (30005af0 <FLASH_CalibrationNew+0x148>)
30005ad0:	4a0b      	ldr	r2, [pc, #44]	; (30005b00 <FLASH_CalibrationNew+0x158>)
30005ad2:	4790      	blx	r2
30005ad4:	e77e      	b.n	300059d4 <FLASH_CalibrationNew+0x2c>
30005ad6:	4b06      	ldr	r3, [pc, #24]	; (30005af0 <FLASH_CalibrationNew+0x148>)
30005ad8:	7919      	ldrb	r1, [r3, #4]
30005ada:	4618      	mov	r0, r3
30005adc:	4b08      	ldr	r3, [pc, #32]	; (30005b00 <FLASH_CalibrationNew+0x158>)
30005ade:	4798      	blx	r3
30005ae0:	4628      	mov	r0, r5
30005ae2:	b007      	add	sp, #28
30005ae4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30005ae8:	4d06      	ldr	r5, [pc, #24]	; (30005b04 <FLASH_CalibrationNew+0x15c>)
30005aea:	e7d1      	b.n	30005a90 <FLASH_CalibrationNew+0xe8>
30005aec:	3000a5bd 	.word	0x3000a5bd
30005af0:	2001c01c 	.word	0x2001c01c
30005af4:	00009c99 	.word	0x00009c99
30005af8:	e000ed00 	.word	0xe000ed00
30005afc:	000129bd 	.word	0x000129bd
30005b00:	0000b7e9 	.word	0x0000b7e9
30005b04:	ffff0000 	.word	0xffff0000
30005b08:	3000a449 	.word	0x3000a449
30005b0c:	00054060 	.word	0x00054060

30005b10 <FLASH_Calibration>:
30005b10:	f04f 4388 	mov.w	r3, #1140850688	; 0x44000000
30005b14:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30005b18:	695c      	ldr	r4, [r3, #20]
30005b1a:	b087      	sub	sp, #28
30005b1c:	4616      	mov	r6, r2
30005b1e:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
30005b22:	9403      	str	r4, [sp, #12]
30005b24:	f8d3 311c 	ldr.w	r3, [r3, #284]	; 0x11c
30005b28:	9101      	str	r1, [sp, #4]
30005b2a:	9304      	str	r3, [sp, #16]
30005b2c:	9005      	str	r0, [sp, #20]
30005b2e:	6c13      	ldr	r3, [r2, #64]	; 0x40
30005b30:	7944      	ldrb	r4, [r0, #5]
30005b32:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
30005b36:	6413      	str	r3, [r2, #64]	; 0x40
30005b38:	4b38      	ldr	r3, [pc, #224]	; (30005c1c <FLASH_Calibration+0x10c>)
30005b3a:	4798      	blx	r3
30005b3c:	9901      	ldr	r1, [sp, #4]
30005b3e:	2800      	cmp	r0, #0
30005b40:	d057      	beq.n	30005bf2 <FLASH_Calibration+0xe2>
30005b42:	4837      	ldr	r0, [pc, #220]	; (30005c20 <FLASH_Calibration+0x110>)
30005b44:	f04f 4a88 	mov.w	sl, #1140850688	; 0x44000000
30005b48:	4b36      	ldr	r3, [pc, #216]	; (30005c24 <FLASH_Calibration+0x114>)
30005b4a:	4798      	blx	r3
30005b4c:	f8ca 4014 	str.w	r4, [sl, #20]
30005b50:	eb16 0644 	adds.w	r6, r6, r4, lsl #1
30005b54:	d057      	beq.n	30005c06 <FLASH_Calibration+0xf6>
30005b56:	2700      	movs	r7, #0
30005b58:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
30005b5c:	f8df 80d0 	ldr.w	r8, [pc, #208]	; 30005c30 <FLASH_Calibration+0x120>
30005b60:	f04f 6400 	mov.w	r4, #134217728	; 0x8000000
30005b64:	f8df 90cc 	ldr.w	r9, [pc, #204]	; 30005c34 <FLASH_Calibration+0x124>
30005b68:	46bb      	mov	fp, r7
30005b6a:	4d2f      	ldr	r5, [pc, #188]	; (30005c28 <FLASH_Calibration+0x118>)
30005b6c:	9302      	str	r3, [sp, #8]
30005b6e:	9701      	str	r7, [sp, #4]
30005b70:	f8da 111c 	ldr.w	r1, [sl, #284]	; 0x11c
30005b74:	ea4f 330b 	mov.w	r3, fp, lsl #12
30005b78:	f421 4170 	bic.w	r1, r1, #61440	; 0xf000
30005b7c:	b29b      	uxth	r3, r3
30005b7e:	430b      	orrs	r3, r1
30005b80:	f8ca 311c 	str.w	r3, [sl, #284]	; 0x11c
30005b84:	696b      	ldr	r3, [r5, #20]
30005b86:	03db      	lsls	r3, r3, #15
30005b88:	d507      	bpl.n	30005b9a <FLASH_Calibration+0x8a>
30005b8a:	f3bf 8f4f 	dsb	sy
30005b8e:	f8c5 425c 	str.w	r4, [r5, #604]	; 0x25c
30005b92:	f3bf 8f4f 	dsb	sy
30005b96:	f3bf 8f6f 	isb	sy
30005b9a:	47c0      	blx	r8
30005b9c:	6823      	ldr	r3, [r4, #0]
30005b9e:	f8d9 1000 	ldr.w	r1, [r9]
30005ba2:	4299      	cmp	r1, r3
30005ba4:	d108      	bne.n	30005bb8 <FLASH_Calibration+0xa8>
30005ba6:	9b02      	ldr	r3, [sp, #8]
30005ba8:	3701      	adds	r7, #1
30005baa:	3301      	adds	r3, #1
30005bac:	f04f 0301 	mov.w	r3, #1
30005bb0:	bf08      	it	eq
30005bb2:	f8cd b008 	streq.w	fp, [sp, #8]
30005bb6:	9301      	str	r3, [sp, #4]
30005bb8:	f10b 0b01 	add.w	fp, fp, #1
30005bbc:	45b3      	cmp	fp, r6
30005bbe:	d1d7      	bne.n	30005b70 <FLASH_Calibration+0x60>
30005bc0:	2f00      	cmp	r7, #0
30005bc2:	dd04      	ble.n	30005bce <FLASH_Calibration+0xbe>
30005bc4:	9b02      	ldr	r3, [sp, #8]
30005bc6:	eb03 0767 	add.w	r7, r3, r7, asr #1
30005bca:	9b05      	ldr	r3, [sp, #20]
30005bcc:	775f      	strb	r7, [r3, #29]
30005bce:	4b13      	ldr	r3, [pc, #76]	; (30005c1c <FLASH_Calibration+0x10c>)
30005bd0:	4798      	blx	r3
30005bd2:	b1e8      	cbz	r0, 30005c10 <FLASH_Calibration+0x100>
30005bd4:	4812      	ldr	r0, [pc, #72]	; (30005c20 <FLASH_Calibration+0x110>)
30005bd6:	4b13      	ldr	r3, [pc, #76]	; (30005c24 <FLASH_Calibration+0x114>)
30005bd8:	7901      	ldrb	r1, [r0, #4]
30005bda:	4798      	blx	r3
30005bdc:	9a03      	ldr	r2, [sp, #12]
30005bde:	f04f 4388 	mov.w	r3, #1140850688	; 0x44000000
30005be2:	9801      	ldr	r0, [sp, #4]
30005be4:	615a      	str	r2, [r3, #20]
30005be6:	9a04      	ldr	r2, [sp, #16]
30005be8:	f8c3 211c 	str.w	r2, [r3, #284]	; 0x11c
30005bec:	b007      	add	sp, #28
30005bee:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30005bf2:	480b      	ldr	r0, [pc, #44]	; (30005c20 <FLASH_Calibration+0x110>)
30005bf4:	f04f 4a88 	mov.w	sl, #1140850688	; 0x44000000
30005bf8:	4b0c      	ldr	r3, [pc, #48]	; (30005c2c <FLASH_Calibration+0x11c>)
30005bfa:	4798      	blx	r3
30005bfc:	f8ca 4014 	str.w	r4, [sl, #20]
30005c00:	eb16 0644 	adds.w	r6, r6, r4, lsl #1
30005c04:	d1a7      	bne.n	30005b56 <FLASH_Calibration+0x46>
30005c06:	4b05      	ldr	r3, [pc, #20]	; (30005c1c <FLASH_Calibration+0x10c>)
30005c08:	9601      	str	r6, [sp, #4]
30005c0a:	4798      	blx	r3
30005c0c:	2800      	cmp	r0, #0
30005c0e:	d1e1      	bne.n	30005bd4 <FLASH_Calibration+0xc4>
30005c10:	4803      	ldr	r0, [pc, #12]	; (30005c20 <FLASH_Calibration+0x110>)
30005c12:	4b06      	ldr	r3, [pc, #24]	; (30005c2c <FLASH_Calibration+0x11c>)
30005c14:	7901      	ldrb	r1, [r0, #4]
30005c16:	4798      	blx	r3
30005c18:	e7e0      	b.n	30005bdc <FLASH_Calibration+0xcc>
30005c1a:	bf00      	nop
30005c1c:	3000a5bd 	.word	0x3000a5bd
30005c20:	2001c01c 	.word	0x2001c01c
30005c24:	00009c99 	.word	0x00009c99
30005c28:	e000ed00 	.word	0xe000ed00
30005c2c:	0000b7e9 	.word	0x0000b7e9
30005c30:	3000a449 	.word	0x3000a449
30005c34:	00054060 	.word	0x00054060

30005c38 <_flash_calibration_highspeed>:
30005c38:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30005c3c:	f04f 0800 	mov.w	r8, #0
30005c40:	b087      	sub	sp, #28
30005c42:	4683      	mov	fp, r0
30005c44:	460e      	mov	r6, r1
30005c46:	4647      	mov	r7, r8
30005c48:	4644      	mov	r4, r8
30005c4a:	4d28      	ldr	r5, [pc, #160]	; (30005cec <_flash_calibration_highspeed+0xb4>)
30005c4c:	f04f 0a01 	mov.w	sl, #1
30005c50:	46c1      	mov	r9, r8
30005c52:	fa5f fc84 	uxtb.w	ip, r4
30005c56:	2301      	movs	r3, #1
30005c58:	4632      	mov	r2, r6
30005c5a:	4659      	mov	r1, fp
30005c5c:	4628      	mov	r0, r5
30005c5e:	e9cd ca00 	strd	ip, sl, [sp]
30005c62:	f7ff fea1 	bl	300059a8 <FLASH_CalibrationNew>
30005c66:	eb04 0384 	add.w	r3, r4, r4, lsl #2
30005c6a:	3401      	adds	r4, #1
30005c6c:	b2c2      	uxtb	r2, r0
30005c6e:	005b      	lsls	r3, r3, #1
30005c70:	b12a      	cbz	r2, 30005c7e <_flash_calibration_highspeed+0x46>
30005c72:	f3c0 4207 	ubfx	r2, r0, #16, #8
30005c76:	eb03 6810 	add.w	r8, r3, r0, lsr #24
30005c7a:	b907      	cbnz	r7, 30005c7e <_flash_calibration_highspeed+0x46>
30005c7c:	18d7      	adds	r7, r2, r3
30005c7e:	2c05      	cmp	r4, #5
30005c80:	f885 9061 	strb.w	r9, [r5, #97]	; 0x61
30005c84:	d1e5      	bne.n	30005c52 <_flash_calibration_highspeed+0x1a>
30005c86:	b927      	cbnz	r7, 30005c92 <_flash_calibration_highspeed+0x5a>
30005c88:	4638      	mov	r0, r7
30005c8a:	776f      	strb	r7, [r5, #29]
30005c8c:	b007      	add	sp, #28
30005c8e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30005c92:	eb07 0208 	add.w	r2, r7, r8
30005c96:	4b16      	ldr	r3, [pc, #88]	; (30005cf0 <_flash_calibration_highspeed+0xb8>)
30005c98:	0852      	lsrs	r2, r2, #1
30005c9a:	fba3 1602 	umull	r1, r6, r3, r2
30005c9e:	08f6      	lsrs	r6, r6, #3
30005ca0:	eb06 0686 	add.w	r6, r6, r6, lsl #2
30005ca4:	ebb2 0646 	subs.w	r6, r2, r6, lsl #1
30005ca8:	d107      	bne.n	30005cba <_flash_calibration_highspeed+0x82>
30005caa:	3201      	adds	r2, #1
30005cac:	fba3 1302 	umull	r1, r3, r3, r2
30005cb0:	08de      	lsrs	r6, r3, #3
30005cb2:	eb06 0686 	add.w	r6, r6, r6, lsl #2
30005cb6:	eba2 0646 	sub.w	r6, r2, r6, lsl #1
30005cba:	4c0d      	ldr	r4, [pc, #52]	; (30005cf0 <_flash_calibration_highspeed+0xb8>)
30005cbc:	2004      	movs	r0, #4
30005cbe:	9202      	str	r2, [sp, #8]
30005cc0:	fba4 2402 	umull	r2, r4, r4, r2
30005cc4:	4b0b      	ldr	r3, [pc, #44]	; (30005cf4 <_flash_calibration_highspeed+0xbc>)
30005cc6:	2249      	movs	r2, #73	; 0x49
30005cc8:	490b      	ldr	r1, [pc, #44]	; (30005cf8 <_flash_calibration_highspeed+0xc0>)
30005cca:	08e4      	lsrs	r4, r4, #3
30005ccc:	f8cd 8004 	str.w	r8, [sp, #4]
30005cd0:	9604      	str	r6, [sp, #16]
30005cd2:	9403      	str	r4, [sp, #12]
30005cd4:	b2e4      	uxtb	r4, r4
30005cd6:	9700      	str	r7, [sp, #0]
30005cd8:	f003 fb38 	bl	3000934c <rtk_log_write>
30005cdc:	2001      	movs	r0, #1
30005cde:	f885 6061 	strb.w	r6, [r5, #97]	; 0x61
30005ce2:	772c      	strb	r4, [r5, #28]
30005ce4:	776c      	strb	r4, [r5, #29]
30005ce6:	b007      	add	sp, #28
30005ce8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30005cec:	2001c01c 	.word	0x2001c01c
30005cf0:	cccccccd 	.word	0xcccccccd
30005cf4:	3000bf50 	.word	0x3000bf50
30005cf8:	3000c1b0 	.word	0x3000c1b0

30005cfc <flash_calibration_highspeed>:
30005cfc:	b570      	push	{r4, r5, r6, lr}
30005cfe:	4d1c      	ldr	r5, [pc, #112]	; (30005d70 <flash_calibration_highspeed+0x74>)
30005d00:	2300      	movs	r3, #0
30005d02:	4604      	mov	r4, r0
30005d04:	b082      	sub	sp, #8
30005d06:	792e      	ldrb	r6, [r5, #4]
30005d08:	f885 3060 	strb.w	r3, [r5, #96]	; 0x60
30005d0c:	f7ff fdb8 	bl	30005880 <FLASH_ClockDiv>
30005d10:	4621      	mov	r1, r4
30005d12:	4630      	mov	r0, r6
30005d14:	f7ff ff90 	bl	30005c38 <_flash_calibration_highspeed>
30005d18:	b1e8      	cbz	r0, 30005d56 <flash_calibration_highspeed+0x5a>
30005d1a:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
30005d1e:	f895 0061 	ldrb.w	r0, [r5, #97]	; 0x61
30005d22:	6c13      	ldr	r3, [r2, #64]	; 0x40
30005d24:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
30005d28:	6413      	str	r3, [r2, #64]	; 0x40
30005d2a:	f7ff fdf1 	bl	30005910 <FLASH_CalibrationPhaseIdx>
30005d2e:	4b11      	ldr	r3, [pc, #68]	; (30005d74 <flash_calibration_highspeed+0x78>)
30005d30:	4798      	blx	r3
30005d32:	b960      	cbnz	r0, 30005d4e <flash_calibration_highspeed+0x52>
30005d34:	4630      	mov	r0, r6
30005d36:	4b10      	ldr	r3, [pc, #64]	; (30005d78 <flash_calibration_highspeed+0x7c>)
30005d38:	4798      	blx	r3
30005d3a:	2004      	movs	r0, #4
30005d3c:	4b0f      	ldr	r3, [pc, #60]	; (30005d7c <flash_calibration_highspeed+0x80>)
30005d3e:	2249      	movs	r2, #73	; 0x49
30005d40:	490f      	ldr	r1, [pc, #60]	; (30005d80 <flash_calibration_highspeed+0x84>)
30005d42:	9400      	str	r4, [sp, #0]
30005d44:	f003 fb02 	bl	3000934c <rtk_log_write>
30005d48:	2000      	movs	r0, #0
30005d4a:	b002      	add	sp, #8
30005d4c:	bd70      	pop	{r4, r5, r6, pc}
30005d4e:	4630      	mov	r0, r6
30005d50:	4b0c      	ldr	r3, [pc, #48]	; (30005d84 <flash_calibration_highspeed+0x88>)
30005d52:	4798      	blx	r3
30005d54:	e7f1      	b.n	30005d3a <flash_calibration_highspeed+0x3e>
30005d56:	2001      	movs	r0, #1
30005d58:	4b0b      	ldr	r3, [pc, #44]	; (30005d88 <flash_calibration_highspeed+0x8c>)
30005d5a:	4798      	blx	r3
30005d5c:	2002      	movs	r0, #2
30005d5e:	4b0b      	ldr	r3, [pc, #44]	; (30005d8c <flash_calibration_highspeed+0x90>)
30005d60:	2245      	movs	r2, #69	; 0x45
30005d62:	4907      	ldr	r1, [pc, #28]	; (30005d80 <flash_calibration_highspeed+0x84>)
30005d64:	9400      	str	r4, [sp, #0]
30005d66:	f003 faf1 	bl	3000934c <rtk_log_write>
30005d6a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
30005d6e:	e7ec      	b.n	30005d4a <flash_calibration_highspeed+0x4e>
30005d70:	2001c01c 	.word	0x2001c01c
30005d74:	3000a5bd 	.word	0x3000a5bd
30005d78:	0000c045 	.word	0x0000c045
30005d7c:	3000bfa4 	.word	0x3000bfa4
30005d80:	3000c1b0 	.word	0x3000c1b0
30005d84:	0000a53d 	.word	0x0000a53d
30005d88:	0000b569 	.word	0x0000b569
30005d8c:	3000bfbc 	.word	0x3000bfbc

30005d90 <flash_rx_mode_switch>:
30005d90:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30005d94:	2300      	movs	r3, #0
30005d96:	b08b      	sub	sp, #44	; 0x2c
30005d98:	4d51      	ldr	r5, [pc, #324]	; (30005ee0 <flash_rx_mode_switch+0x150>)
30005d9a:	4606      	mov	r6, r0
30005d9c:	ac05      	add	r4, sp, #20
30005d9e:	f88d 300b 	strb.w	r3, [sp, #11]
30005da2:	2e04      	cmp	r6, #4
30005da4:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
30005da6:	c40f      	stmia	r4!, {r0, r1, r2, r3}
30005da8:	682b      	ldr	r3, [r5, #0]
30005daa:	6023      	str	r3, [r4, #0]
30005dac:	d877      	bhi.n	30005e9e <flash_rx_mode_switch+0x10e>
30005dae:	b270      	sxtb	r0, r6
30005db0:	ab05      	add	r3, sp, #20
30005db2:	4f4c      	ldr	r7, [pc, #304]	; (30005ee4 <flash_rx_mode_switch+0x154>)
30005db4:	f1c0 0404 	rsb	r4, r0, #4
30005db8:	f1c0 0022 	rsb	r0, r0, #34	; 0x22
30005dbc:	f8df b150 	ldr.w	fp, [pc, #336]	; 30005f10 <flash_rx_mode_switch+0x180>
30005dc0:	fa4f f884 	sxtb.w	r8, r4
30005dc4:	fa47 f580 	sxtab	r5, r7, r0
30005dc8:	b2e4      	uxtb	r4, r4
30005dca:	f8df a148 	ldr.w	sl, [pc, #328]	; 30005f14 <flash_rx_mode_switch+0x184>
30005dce:	eb03 0888 	add.w	r8, r3, r8, lsl #2
30005dd2:	f8df 9144 	ldr.w	r9, [pc, #324]	; 30005f18 <flash_rx_mode_switch+0x188>
30005dd6:	e033      	b.n	30005e40 <flash_rx_mode_switch+0xb0>
30005dd8:	2c04      	cmp	r4, #4
30005dda:	d039      	beq.n	30005e50 <flash_rx_mode_switch+0xc0>
30005ddc:	2c02      	cmp	r4, #2
30005dde:	d037      	beq.n	30005e50 <flash_rx_mode_switch+0xc0>
30005de0:	683b      	ldr	r3, [r7, #0]
30005de2:	2b03      	cmp	r3, #3
30005de4:	d03a      	beq.n	30005e5c <flash_rx_mode_switch+0xcc>
30005de6:	2300      	movs	r3, #0
30005de8:	4620      	mov	r0, r4
30005dea:	777b      	strb	r3, [r7, #29]
30005dec:	4b3e      	ldr	r3, [pc, #248]	; (30005ee8 <flash_rx_mode_switch+0x158>)
30005dee:	4798      	blx	r3
30005df0:	4b3e      	ldr	r3, [pc, #248]	; (30005eec <flash_rx_mode_switch+0x15c>)
30005df2:	695a      	ldr	r2, [r3, #20]
30005df4:	03d2      	lsls	r2, r2, #15
30005df6:	d509      	bpl.n	30005e0c <flash_rx_mode_switch+0x7c>
30005df8:	f3bf 8f4f 	dsb	sy
30005dfc:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
30005e00:	f8c3 225c 	str.w	r2, [r3, #604]	; 0x25c
30005e04:	f3bf 8f4f 	dsb	sy
30005e08:	f3bf 8f6f 	isb	sy
30005e0c:	47d0      	blx	sl
30005e0e:	f04f 6300 	mov.w	r3, #134217728	; 0x8000000
30005e12:	4937      	ldr	r1, [pc, #220]	; (30005ef0 <flash_rx_mode_switch+0x160>)
30005e14:	a803      	add	r0, sp, #12
30005e16:	681a      	ldr	r2, [r3, #0]
30005e18:	9203      	str	r2, [sp, #12]
30005e1a:	2208      	movs	r2, #8
30005e1c:	685b      	ldr	r3, [r3, #4]
30005e1e:	9304      	str	r3, [sp, #16]
30005e20:	47c8      	blx	r9
30005e22:	2800      	cmp	r0, #0
30005e24:	d042      	beq.n	30005eac <flash_rx_mode_switch+0x11c>
30005e26:	f897 3060 	ldrb.w	r3, [r7, #96]	; 0x60
30005e2a:	bb6b      	cbnz	r3, 30005e88 <flash_rx_mode_switch+0xf8>
30005e2c:	1e62      	subs	r2, r4, #1
30005e2e:	f1c4 0305 	rsb	r3, r4, #5
30005e32:	f1a8 0804 	sub.w	r8, r8, #4
30005e36:	3d01      	subs	r5, #1
30005e38:	b2d4      	uxtb	r4, r2
30005e3a:	b2db      	uxtb	r3, r3
30005e3c:	2cff      	cmp	r4, #255	; 0xff
30005e3e:	d02d      	beq.n	30005e9c <flash_rx_mode_switch+0x10c>
30005e40:	47d8      	blx	fp
30005e42:	2800      	cmp	r0, #0
30005e44:	d1c8      	bne.n	30005dd8 <flash_rx_mode_switch+0x48>
30005e46:	7778      	strb	r0, [r7, #29]
30005e48:	4620      	mov	r0, r4
30005e4a:	4b2a      	ldr	r3, [pc, #168]	; (30005ef4 <flash_rx_mode_switch+0x164>)
30005e4c:	4798      	blx	r3
30005e4e:	e7cf      	b.n	30005df0 <flash_rx_mode_switch+0x60>
30005e50:	2301      	movs	r3, #1
30005e52:	f887 3063 	strb.w	r3, [r7, #99]	; 0x63
30005e56:	683b      	ldr	r3, [r7, #0]
30005e58:	2b03      	cmp	r3, #3
30005e5a:	d1c4      	bne.n	30005de6 <flash_rx_mode_switch+0x56>
30005e5c:	f10d 020b 	add.w	r2, sp, #11
30005e60:	2101      	movs	r1, #1
30005e62:	2085      	movs	r0, #133	; 0x85
30005e64:	4b24      	ldr	r3, [pc, #144]	; (30005ef8 <flash_rx_mode_switch+0x168>)
30005e66:	4798      	blx	r3
30005e68:	f89d 300b 	ldrb.w	r3, [sp, #11]
30005e6c:	7829      	ldrb	r1, [r5, #0]
30005e6e:	f10d 020b 	add.w	r2, sp, #11
30005e72:	f003 030f 	and.w	r3, r3, #15
30005e76:	2081      	movs	r0, #129	; 0x81
30005e78:	ea43 1301 	orr.w	r3, r3, r1, lsl #4
30005e7c:	2101      	movs	r1, #1
30005e7e:	f88d 300b 	strb.w	r3, [sp, #11]
30005e82:	4b1e      	ldr	r3, [pc, #120]	; (30005efc <flash_rx_mode_switch+0x16c>)
30005e84:	4798      	blx	r3
30005e86:	e7ae      	b.n	30005de6 <flash_rx_mode_switch+0x56>
30005e88:	f8d8 3000 	ldr.w	r3, [r8]
30005e8c:	2249      	movs	r2, #73	; 0x49
30005e8e:	491c      	ldr	r1, [pc, #112]	; (30005f00 <flash_rx_mode_switch+0x170>)
30005e90:	2004      	movs	r0, #4
30005e92:	9300      	str	r3, [sp, #0]
30005e94:	4b1b      	ldr	r3, [pc, #108]	; (30005f04 <flash_rx_mode_switch+0x174>)
30005e96:	f003 fa59 	bl	3000934c <rtk_log_write>
30005e9a:	e7c7      	b.n	30005e2c <flash_rx_mode_switch+0x9c>
30005e9c:	461e      	mov	r6, r3
30005e9e:	2e05      	cmp	r6, #5
30005ea0:	d015      	beq.n	30005ece <flash_rx_mode_switch+0x13e>
30005ea2:	2600      	movs	r6, #0
30005ea4:	4630      	mov	r0, r6
30005ea6:	b00b      	add	sp, #44	; 0x2c
30005ea8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30005eac:	ab0a      	add	r3, sp, #40	; 0x28
30005eae:	4606      	mov	r6, r0
30005eb0:	2249      	movs	r2, #73	; 0x49
30005eb2:	4913      	ldr	r1, [pc, #76]	; (30005f00 <flash_rx_mode_switch+0x170>)
30005eb4:	eb03 0484 	add.w	r4, r3, r4, lsl #2
30005eb8:	4b13      	ldr	r3, [pc, #76]	; (30005f08 <flash_rx_mode_switch+0x178>)
30005eba:	f854 0c14 	ldr.w	r0, [r4, #-20]
30005ebe:	9000      	str	r0, [sp, #0]
30005ec0:	2004      	movs	r0, #4
30005ec2:	f003 fa43 	bl	3000934c <rtk_log_write>
30005ec6:	4630      	mov	r0, r6
30005ec8:	b00b      	add	sp, #44	; 0x2c
30005eca:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30005ece:	4b0f      	ldr	r3, [pc, #60]	; (30005f0c <flash_rx_mode_switch+0x17c>)
30005ed0:	2245      	movs	r2, #69	; 0x45
30005ed2:	490b      	ldr	r1, [pc, #44]	; (30005f00 <flash_rx_mode_switch+0x170>)
30005ed4:	2002      	movs	r0, #2
30005ed6:	f04f 36ff 	mov.w	r6, #4294967295	; 0xffffffff
30005eda:	f003 fa37 	bl	3000934c <rtk_log_write>
30005ede:	e7e1      	b.n	30005ea4 <flash_rx_mode_switch+0x114>
30005ee0:	3000c184 	.word	0x3000c184
30005ee4:	2001c01c 	.word	0x2001c01c
30005ee8:	0000a53d 	.word	0x0000a53d
30005eec:	e000ed00 	.word	0xe000ed00
30005ef0:	00054060 	.word	0x00054060
30005ef4:	0000c045 	.word	0x0000c045
30005ef8:	00009db5 	.word	0x00009db5
30005efc:	0000a149 	.word	0x0000a149
30005f00:	3000c1b0 	.word	0x3000c1b0
30005f04:	3000bfe4 	.word	0x3000bfe4
30005f08:	3000bfd4 	.word	0x3000bfd4
30005f0c:	3000bffc 	.word	0x3000bffc
30005f10:	3000a5bd 	.word	0x3000a5bd
30005f14:	3000a449 	.word	0x3000a449
30005f18:	000129bd 	.word	0x000129bd

30005f1c <flash_highspeed_setup>:
30005f1c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
30005f20:	4b87      	ldr	r3, [pc, #540]	; (30006140 <flash_highspeed_setup+0x224>)
30005f22:	b087      	sub	sp, #28
30005f24:	4798      	blx	r3
30005f26:	4a87      	ldr	r2, [pc, #540]	; (30006144 <flash_highspeed_setup+0x228>)
30005f28:	2400      	movs	r4, #0
30005f2a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
30005f2e:	8812      	ldrh	r2, [r2, #0]
30005f30:	421a      	tst	r2, r3
30005f32:	d104      	bne.n	30005f3e <flash_highspeed_setup+0x22>
30005f34:	3401      	adds	r4, #1
30005f36:	085b      	lsrs	r3, r3, #1
30005f38:	b2e4      	uxtb	r4, r4
30005f3a:	2c10      	cmp	r4, #16
30005f3c:	d1f8      	bne.n	30005f30 <flash_highspeed_setup+0x14>
30005f3e:	4982      	ldr	r1, [pc, #520]	; (30006148 <flash_highspeed_setup+0x22c>)
30005f40:	2300      	movs	r3, #0
30005f42:	f44f 4200 	mov.w	r2, #32768	; 0x8000
30005f46:	8809      	ldrh	r1, [r1, #0]
30005f48:	4211      	tst	r1, r2
30005f4a:	d104      	bne.n	30005f56 <flash_highspeed_setup+0x3a>
30005f4c:	3301      	adds	r3, #1
30005f4e:	0852      	lsrs	r2, r2, #1
30005f50:	b2db      	uxtb	r3, r3
30005f52:	2b10      	cmp	r3, #16
30005f54:	d1f8      	bne.n	30005f48 <flash_highspeed_setup+0x2c>
30005f56:	2b06      	cmp	r3, #6
30005f58:	497c      	ldr	r1, [pc, #496]	; (3000614c <flash_highspeed_setup+0x230>)
30005f5a:	4d7d      	ldr	r5, [pc, #500]	; (30006150 <flash_highspeed_setup+0x234>)
30005f5c:	bf28      	it	cs
30005f5e:	2306      	movcs	r3, #6
30005f60:	4401      	add	r1, r0
30005f62:	f1c3 0209 	rsb	r2, r3, #9
30005f66:	fba5 3501 	umull	r3, r5, r5, r1
30005f6a:	4b7a      	ldr	r3, [pc, #488]	; (30006154 <flash_highspeed_setup+0x238>)
30005f6c:	0eed      	lsrs	r5, r5, #27
30005f6e:	497a      	ldr	r1, [pc, #488]	; (30006158 <flash_highspeed_setup+0x23c>)
30005f70:	b2d2      	uxtb	r2, r2
30005f72:	3d01      	subs	r5, #1
30005f74:	b2ed      	uxtb	r5, r5
30005f76:	4295      	cmp	r5, r2
30005f78:	bf38      	it	cc
30005f7a:	4615      	movcc	r5, r2
30005f7c:	1c6a      	adds	r2, r5, #1
30005f7e:	fbb0 f0f2 	udiv	r0, r0, r2
30005f82:	2249      	movs	r2, #73	; 0x49
30005f84:	9000      	str	r0, [sp, #0]
30005f86:	2004      	movs	r0, #4
30005f88:	f003 f9e0 	bl	3000934c <rtk_log_write>
30005f8c:	b672      	cpsid	i
30005f8e:	f04f 4288 	mov.w	r2, #1140850688	; 0x44000000
30005f92:	f8df 91fc 	ldr.w	r9, [pc, #508]	; 30006190 <flash_highspeed_setup+0x274>
30005f96:	4e71      	ldr	r6, [pc, #452]	; (3000615c <flash_highspeed_setup+0x240>)
30005f98:	6813      	ldr	r3, [r2, #0]
30005f9a:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
30005f9e:	6013      	str	r3, [r2, #0]
30005fa0:	47c8      	blx	r9
30005fa2:	2800      	cmp	r0, #0
30005fa4:	d05c      	beq.n	30006060 <flash_highspeed_setup+0x144>
30005fa6:	2103      	movs	r1, #3
30005fa8:	aa05      	add	r2, sp, #20
30005faa:	f896 0055 	ldrb.w	r0, [r6, #85]	; 0x55
30005fae:	4f6c      	ldr	r7, [pc, #432]	; (30006160 <flash_highspeed_setup+0x244>)
30005fb0:	47b8      	blx	r7
30005fb2:	f89d 3016 	ldrb.w	r3, [sp, #22]
30005fb6:	2201      	movs	r2, #1
30005fb8:	4967      	ldr	r1, [pc, #412]	; (30006158 <flash_highspeed_setup+0x23c>)
30005fba:	9302      	str	r3, [sp, #8]
30005fbc:	3b11      	subs	r3, #17
30005fbe:	2004      	movs	r0, #4
30005fc0:	fa02 f303 	lsl.w	r3, r2, r3
30005fc4:	2249      	movs	r2, #73	; 0x49
30005fc6:	9303      	str	r3, [sp, #12]
30005fc8:	f89d 3015 	ldrb.w	r3, [sp, #21]
30005fcc:	9301      	str	r3, [sp, #4]
30005fce:	f89d 3014 	ldrb.w	r3, [sp, #20]
30005fd2:	9300      	str	r3, [sp, #0]
30005fd4:	4b63      	ldr	r3, [pc, #396]	; (30006164 <flash_highspeed_setup+0x248>)
30005fd6:	f003 f9b9 	bl	3000934c <rtk_log_write>
30005fda:	f89d 8015 	ldrb.w	r8, [sp, #21]
30005fde:	f89d 3016 	ldrb.w	r3, [sp, #22]
30005fe2:	ea4f 2808 	mov.w	r8, r8, lsl #8
30005fe6:	ea48 4803 	orr.w	r8, r8, r3, lsl #16
30005fea:	f89d 3014 	ldrb.w	r3, [sp, #20]
30005fee:	ea48 0803 	orr.w	r8, r8, r3
30005ff2:	47c8      	blx	r9
30005ff4:	4a5c      	ldr	r2, [pc, #368]	; (30006168 <flash_highspeed_setup+0x24c>)
30005ff6:	4b5d      	ldr	r3, [pc, #372]	; (3000616c <flash_highspeed_setup+0x250>)
30005ff8:	2800      	cmp	r0, #0
30005ffa:	bf08      	it	eq
30005ffc:	4613      	moveq	r3, r2
30005ffe:	7a1a      	ldrb	r2, [r3, #8]
30006000:	2aff      	cmp	r2, #255	; 0xff
30006002:	d111      	bne.n	30006028 <flash_highspeed_setup+0x10c>
30006004:	4b5a      	ldr	r3, [pc, #360]	; (30006170 <flash_highspeed_setup+0x254>)
30006006:	2200      	movs	r2, #0
30006008:	601a      	str	r2, [r3, #0]
3000600a:	4953      	ldr	r1, [pc, #332]	; (30006158 <flash_highspeed_setup+0x23c>)
3000600c:	2003      	movs	r0, #3
3000600e:	4b59      	ldr	r3, [pc, #356]	; (30006174 <flash_highspeed_setup+0x258>)
30006010:	2257      	movs	r2, #87	; 0x57
30006012:	f003 f99b 	bl	3000934c <rtk_log_write>
30006016:	f240 212e 	movw	r1, #558	; 0x22e
3000601a:	4857      	ldr	r0, [pc, #348]	; (30006178 <flash_highspeed_setup+0x25c>)
3000601c:	f004 ffc8 	bl	3000afb0 <io_assert_failed>
30006020:	7f1a      	ldrb	r2, [r3, #28]
30006022:	3314      	adds	r3, #20
30006024:	2aff      	cmp	r2, #255	; 0xff
30006026:	d0ed      	beq.n	30006004 <flash_highspeed_setup+0xe8>
30006028:	e9d3 1200 	ldrd	r1, r2, [r3]
3000602c:	ea08 0202 	and.w	r2, r8, r2
30006030:	428a      	cmp	r2, r1
30006032:	d1f5      	bne.n	30006020 <flash_highspeed_setup+0x104>
30006034:	f8df 8138 	ldr.w	r8, [pc, #312]	; 30006170 <flash_highspeed_setup+0x254>
30006038:	f8c8 3000 	str.w	r3, [r8]
3000603c:	2b00      	cmp	r3, #0
3000603e:	d0e4      	beq.n	3000600a <flash_highspeed_setup+0xee>
30006040:	7a1a      	ldrb	r2, [r3, #8]
30006042:	2a05      	cmp	r2, #5
30006044:	f200 80a6 	bhi.w	30006194 <flash_highspeed_setup+0x278>
30006048:	3a01      	subs	r2, #1
3000604a:	4844      	ldr	r0, [pc, #272]	; (3000615c <flash_highspeed_setup+0x240>)
3000604c:	2a04      	cmp	r2, #4
3000604e:	f200 8152 	bhi.w	300062f6 <flash_highspeed_setup+0x3da>
30006052:	e8df f012 	tbh	[pc, r2, lsl #1]
30006056:	0107      	.short	0x0107
30006058:	00ff0104 	.word	0x00ff0104
3000605c:	00f600fc 	.word	0x00f600fc
30006060:	ab05      	add	r3, sp, #20
30006062:	4602      	mov	r2, r0
30006064:	4601      	mov	r1, r0
30006066:	4f45      	ldr	r7, [pc, #276]	; (3000617c <flash_highspeed_setup+0x260>)
30006068:	9300      	str	r3, [sp, #0]
3000606a:	2302      	movs	r3, #2
3000606c:	f896 0055 	ldrb.w	r0, [r6, #85]	; 0x55
30006070:	47b8      	blx	r7
30006072:	f89d 3015 	ldrb.w	r3, [sp, #21]
30006076:	2249      	movs	r2, #73	; 0x49
30006078:	4937      	ldr	r1, [pc, #220]	; (30006158 <flash_highspeed_setup+0x23c>)
3000607a:	9301      	str	r3, [sp, #4]
3000607c:	2004      	movs	r0, #4
3000607e:	f89d 3014 	ldrb.w	r3, [sp, #20]
30006082:	9300      	str	r3, [sp, #0]
30006084:	4b3e      	ldr	r3, [pc, #248]	; (30006180 <flash_highspeed_setup+0x264>)
30006086:	f003 f961 	bl	3000934c <rtk_log_write>
3000608a:	f89d 7015 	ldrb.w	r7, [sp, #21]
3000608e:	f89d 3016 	ldrb.w	r3, [sp, #22]
30006092:	023f      	lsls	r7, r7, #8
30006094:	ea47 4703 	orr.w	r7, r7, r3, lsl #16
30006098:	f89d 3014 	ldrb.w	r3, [sp, #20]
3000609c:	431f      	orrs	r7, r3
3000609e:	47c8      	blx	r9
300060a0:	4a31      	ldr	r2, [pc, #196]	; (30006168 <flash_highspeed_setup+0x24c>)
300060a2:	4b32      	ldr	r3, [pc, #200]	; (3000616c <flash_highspeed_setup+0x250>)
300060a4:	2800      	cmp	r0, #0
300060a6:	bf08      	it	eq
300060a8:	4613      	moveq	r3, r2
300060aa:	7a1a      	ldrb	r2, [r3, #8]
300060ac:	2aff      	cmp	r2, #255	; 0xff
300060ae:	d111      	bne.n	300060d4 <flash_highspeed_setup+0x1b8>
300060b0:	4b2f      	ldr	r3, [pc, #188]	; (30006170 <flash_highspeed_setup+0x254>)
300060b2:	2200      	movs	r2, #0
300060b4:	601a      	str	r2, [r3, #0]
300060b6:	4928      	ldr	r1, [pc, #160]	; (30006158 <flash_highspeed_setup+0x23c>)
300060b8:	2003      	movs	r0, #3
300060ba:	4b2e      	ldr	r3, [pc, #184]	; (30006174 <flash_highspeed_setup+0x258>)
300060bc:	2257      	movs	r2, #87	; 0x57
300060be:	f003 f945 	bl	3000934c <rtk_log_write>
300060c2:	f240 216e 	movw	r1, #622	; 0x26e
300060c6:	482c      	ldr	r0, [pc, #176]	; (30006178 <flash_highspeed_setup+0x25c>)
300060c8:	f004 ff72 	bl	3000afb0 <io_assert_failed>
300060cc:	7f1a      	ldrb	r2, [r3, #28]
300060ce:	3314      	adds	r3, #20
300060d0:	2aff      	cmp	r2, #255	; 0xff
300060d2:	d0ed      	beq.n	300060b0 <flash_highspeed_setup+0x194>
300060d4:	e9d3 1200 	ldrd	r1, r2, [r3]
300060d8:	403a      	ands	r2, r7
300060da:	428a      	cmp	r2, r1
300060dc:	d1f6      	bne.n	300060cc <flash_highspeed_setup+0x1b0>
300060de:	4a24      	ldr	r2, [pc, #144]	; (30006170 <flash_highspeed_setup+0x254>)
300060e0:	6013      	str	r3, [r2, #0]
300060e2:	2b00      	cmp	r3, #0
300060e4:	d0e7      	beq.n	300060b6 <flash_highspeed_setup+0x19a>
300060e6:	7a1a      	ldrb	r2, [r3, #8]
300060e8:	2a04      	cmp	r2, #4
300060ea:	d821      	bhi.n	30006130 <flash_highspeed_setup+0x214>
300060ec:	2a04      	cmp	r2, #4
300060ee:	d807      	bhi.n	30006100 <flash_highspeed_setup+0x1e4>
300060f0:	e8df f002 	tbb	[pc, r2]
300060f4:	069fa303 	.word	0x069fa303
300060f8:	9b          	.byte	0x9b
300060f9:	00          	.byte	0x00
300060fa:	4818      	ldr	r0, [pc, #96]	; (3000615c <flash_highspeed_setup+0x240>)
300060fc:	4b21      	ldr	r3, [pc, #132]	; (30006184 <flash_highspeed_setup+0x268>)
300060fe:	4798      	blx	r3
30006100:	68f3      	ldr	r3, [r6, #12]
30006102:	2b00      	cmp	r3, #0
30006104:	f040 80c0 	bne.w	30006288 <flash_highspeed_setup+0x36c>
30006108:	4e1f      	ldr	r6, [pc, #124]	; (30006188 <flash_highspeed_setup+0x26c>)
3000610a:	20a0      	movs	r0, #160	; 0xa0
3000610c:	47b0      	blx	r6
3000610e:	2800      	cmp	r0, #0
30006110:	f040 80b2 	bne.w	30006278 <flash_highspeed_setup+0x35c>
30006114:	4620      	mov	r0, r4
30006116:	f7ff fe3b 	bl	30005d90 <flash_rx_mode_switch>
3000611a:	4b1c      	ldr	r3, [pc, #112]	; (3000618c <flash_highspeed_setup+0x270>)
3000611c:	4798      	blx	r3
3000611e:	2801      	cmp	r0, #1
30006120:	d002      	beq.n	30006128 <flash_highspeed_setup+0x20c>
30006122:	4628      	mov	r0, r5
30006124:	f7ff fdea 	bl	30005cfc <flash_calibration_highspeed>
30006128:	b662      	cpsie	i
3000612a:	b007      	add	sp, #28
3000612c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
30006130:	2afe      	cmp	r2, #254	; 0xfe
30006132:	d1e5      	bne.n	30006100 <flash_highspeed_setup+0x1e4>
30006134:	691b      	ldr	r3, [r3, #16]
30006136:	2b00      	cmp	r3, #0
30006138:	f000 80d3 	beq.w	300062e2 <flash_highspeed_setup+0x3c6>
3000613c:	4798      	blx	r3
3000613e:	e7df      	b.n	30006100 <flash_highspeed_setup+0x1e4>
30006140:	30008e69 	.word	0x30008e69
30006144:	3000ca48 	.word	0x3000ca48
30006148:	3000ca4a 	.word	0x3000ca4a
3000614c:	0c65d3ff 	.word	0x0c65d3ff
30006150:	a530e8a5 	.word	0xa530e8a5
30006154:	3000c01c 	.word	0x3000c01c
30006158:	3000c1b0 	.word	0x3000c1b0
3000615c:	2001c01c 	.word	0x2001c01c
30006160:	00009db5 	.word	0x00009db5
30006164:	3000c030 	.word	0x3000c030
30006168:	3000ca4c 	.word	0x3000ca4c
3000616c:	3000c930 	.word	0x3000c930
30006170:	3000ea9c 	.word	0x3000ea9c
30006174:	3000c058 	.word	0x3000c058
30006178:	3000c07c 	.word	0x3000c07c
3000617c:	0000b8c1 	.word	0x0000b8c1
30006180:	3000c138 	.word	0x3000c138
30006184:	0000bfcd 	.word	0x0000bfcd
30006188:	0000b991 	.word	0x0000b991
3000618c:	0000c0f9 	.word	0x0000c0f9
30006190:	3000a5bd 	.word	0x3000a5bd
30006194:	2afe      	cmp	r2, #254	; 0xfe
30006196:	d104      	bne.n	300061a2 <flash_highspeed_setup+0x286>
30006198:	691b      	ldr	r3, [r3, #16]
3000619a:	2b00      	cmp	r3, #0
3000619c:	f000 80a6 	beq.w	300062ec <flash_highspeed_setup+0x3d0>
300061a0:	4798      	blx	r3
300061a2:	4b56      	ldr	r3, [pc, #344]	; (300062fc <flash_highspeed_setup+0x3e0>)
300061a4:	4798      	blx	r3
300061a6:	b110      	cbz	r0, 300061ae <flash_highspeed_setup+0x292>
300061a8:	2304      	movs	r3, #4
300061aa:	f886 3062 	strb.w	r3, [r6, #98]	; 0x62
300061ae:	68f2      	ldr	r2, [r6, #12]
300061b0:	2101      	movs	r1, #1
300061b2:	f8d8 3000 	ldr.w	r3, [r8]
300061b6:	9204      	str	r2, [sp, #16]
300061b8:	2200      	movs	r2, #0
300061ba:	f896 0056 	ldrb.w	r0, [r6, #86]	; 0x56
300061be:	9205      	str	r2, [sp, #20]
300061c0:	aa05      	add	r2, sp, #20
300061c2:	f8d3 800c 	ldr.w	r8, [r3, #12]
300061c6:	47b8      	blx	r7
300061c8:	69b3      	ldr	r3, [r6, #24]
300061ca:	2b00      	cmp	r3, #0
300061cc:	d169      	bne.n	300062a2 <flash_highspeed_setup+0x386>
300061ce:	4b4c      	ldr	r3, [pc, #304]	; (30006300 <flash_highspeed_setup+0x3e4>)
300061d0:	781b      	ldrb	r3, [r3, #0]
300061d2:	2b00      	cmp	r3, #0
300061d4:	d16d      	bne.n	300062b2 <flash_highspeed_setup+0x396>
300061d6:	2701      	movs	r7, #1
300061d8:	9b05      	ldr	r3, [sp, #20]
300061da:	a805      	add	r0, sp, #20
300061dc:	463a      	mov	r2, r7
300061de:	a904      	add	r1, sp, #16
300061e0:	ea03 0308 	and.w	r3, r3, r8
300061e4:	9305      	str	r3, [sp, #20]
300061e6:	4b47      	ldr	r3, [pc, #284]	; (30006304 <flash_highspeed_setup+0x3e8>)
300061e8:	4798      	blx	r3
300061ea:	2800      	cmp	r0, #0
300061ec:	d092      	beq.n	30006114 <flash_highspeed_setup+0x1f8>
300061ee:	f896 3059 	ldrb.w	r3, [r6, #89]	; 0x59
300061f2:	aa04      	add	r2, sp, #16
300061f4:	f896 0058 	ldrb.w	r0, [r6, #88]	; 0x58
300061f8:	b19b      	cbz	r3, 30006222 <flash_highspeed_setup+0x306>
300061fa:	2101      	movs	r1, #1
300061fc:	4f42      	ldr	r7, [pc, #264]	; (30006308 <flash_highspeed_setup+0x3ec>)
300061fe:	47b8      	blx	r7
30006200:	f10d 0211 	add.w	r2, sp, #17
30006204:	f896 0059 	ldrb.w	r0, [r6, #89]	; 0x59
30006208:	2101      	movs	r1, #1
3000620a:	47b8      	blx	r7
3000620c:	4b3f      	ldr	r3, [pc, #252]	; (3000630c <flash_highspeed_setup+0x3f0>)
3000620e:	e9dd 1204 	ldrd	r1, r2, [sp, #16]
30006212:	e9cd 2100 	strd	r2, r1, [sp]
30006216:	2004      	movs	r0, #4
30006218:	2249      	movs	r2, #73	; 0x49
3000621a:	493d      	ldr	r1, [pc, #244]	; (30006310 <flash_highspeed_setup+0x3f4>)
3000621c:	f003 f896 	bl	3000934c <rtk_log_write>
30006220:	e778      	b.n	30006114 <flash_highspeed_setup+0x1f8>
30006222:	4639      	mov	r1, r7
30006224:	4b38      	ldr	r3, [pc, #224]	; (30006308 <flash_highspeed_setup+0x3ec>)
30006226:	4798      	blx	r3
30006228:	e7f0      	b.n	3000620c <flash_highspeed_setup+0x2f0>
3000622a:	483a      	ldr	r0, [pc, #232]	; (30006314 <flash_highspeed_setup+0x3f8>)
3000622c:	4b3a      	ldr	r3, [pc, #232]	; (30006318 <flash_highspeed_setup+0x3fc>)
3000622e:	4798      	blx	r3
30006230:	e766      	b.n	30006100 <flash_highspeed_setup+0x1e4>
30006232:	4838      	ldr	r0, [pc, #224]	; (30006314 <flash_highspeed_setup+0x3f8>)
30006234:	4b39      	ldr	r3, [pc, #228]	; (3000631c <flash_highspeed_setup+0x400>)
30006236:	4798      	blx	r3
30006238:	e762      	b.n	30006100 <flash_highspeed_setup+0x1e4>
3000623a:	4836      	ldr	r0, [pc, #216]	; (30006314 <flash_highspeed_setup+0x3f8>)
3000623c:	4b38      	ldr	r3, [pc, #224]	; (30006320 <flash_highspeed_setup+0x404>)
3000623e:	4798      	blx	r3
30006240:	e75e      	b.n	30006100 <flash_highspeed_setup+0x1e4>
30006242:	4b38      	ldr	r3, [pc, #224]	; (30006324 <flash_highspeed_setup+0x408>)
30006244:	4798      	blx	r3
30006246:	4b2e      	ldr	r3, [pc, #184]	; (30006300 <flash_highspeed_setup+0x3e4>)
30006248:	2201      	movs	r2, #1
3000624a:	701a      	strb	r2, [r3, #0]
3000624c:	e7a9      	b.n	300061a2 <flash_highspeed_setup+0x286>
3000624e:	4b36      	ldr	r3, [pc, #216]	; (30006328 <flash_highspeed_setup+0x40c>)
30006250:	4798      	blx	r3
30006252:	e7a6      	b.n	300061a2 <flash_highspeed_setup+0x286>
30006254:	4b33      	ldr	r3, [pc, #204]	; (30006324 <flash_highspeed_setup+0x408>)
30006256:	4798      	blx	r3
30006258:	2300      	movs	r3, #0
3000625a:	60f3      	str	r3, [r6, #12]
3000625c:	e7a1      	b.n	300061a2 <flash_highspeed_setup+0x286>
3000625e:	4b31      	ldr	r3, [pc, #196]	; (30006324 <flash_highspeed_setup+0x408>)
30006260:	4798      	blx	r3
30006262:	e79e      	b.n	300061a2 <flash_highspeed_setup+0x286>
30006264:	4b31      	ldr	r3, [pc, #196]	; (3000632c <flash_highspeed_setup+0x410>)
30006266:	4798      	blx	r3
30006268:	f89d 3014 	ldrb.w	r3, [sp, #20]
3000626c:	2bc8      	cmp	r3, #200	; 0xc8
3000626e:	d02b      	beq.n	300062c8 <flash_highspeed_setup+0x3ac>
30006270:	2331      	movs	r3, #49	; 0x31
30006272:	f886 3059 	strb.w	r3, [r6, #89]	; 0x59
30006276:	e794      	b.n	300061a2 <flash_highspeed_setup+0x286>
30006278:	2100      	movs	r1, #0
3000627a:	4b2d      	ldr	r3, [pc, #180]	; (30006330 <flash_highspeed_setup+0x414>)
3000627c:	20a0      	movs	r0, #160	; 0xa0
3000627e:	4798      	blx	r3
30006280:	2100      	movs	r1, #0
30006282:	22a0      	movs	r2, #160	; 0xa0
30006284:	4b2b      	ldr	r3, [pc, #172]	; (30006334 <flash_highspeed_setup+0x418>)
30006286:	e7c4      	b.n	30006212 <flash_highspeed_setup+0x2f6>
30006288:	20b0      	movs	r0, #176	; 0xb0
3000628a:	4e2b      	ldr	r6, [pc, #172]	; (30006338 <flash_highspeed_setup+0x41c>)
3000628c:	47b0      	blx	r6
3000628e:	f040 0101 	orr.w	r1, r0, #1
30006292:	b2c9      	uxtb	r1, r1
30006294:	4281      	cmp	r1, r0
30006296:	f43f af38 	beq.w	3000610a <flash_highspeed_setup+0x1ee>
3000629a:	20b0      	movs	r0, #176	; 0xb0
3000629c:	4b24      	ldr	r3, [pc, #144]	; (30006330 <flash_highspeed_setup+0x414>)
3000629e:	4798      	blx	r3
300062a0:	e733      	b.n	3000610a <flash_highspeed_setup+0x1ee>
300062a2:	f10d 0215 	add.w	r2, sp, #21
300062a6:	2101      	movs	r1, #1
300062a8:	f896 0057 	ldrb.w	r0, [r6, #87]	; 0x57
300062ac:	47b8      	blx	r7
300062ae:	2702      	movs	r7, #2
300062b0:	e792      	b.n	300061d8 <flash_highspeed_setup+0x2bc>
300062b2:	f10d 0215 	add.w	r2, sp, #21
300062b6:	2102      	movs	r1, #2
300062b8:	2015      	movs	r0, #21
300062ba:	47b8      	blx	r7
300062bc:	9b04      	ldr	r3, [sp, #16]
300062be:	2703      	movs	r7, #3
300062c0:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
300062c4:	9304      	str	r3, [sp, #16]
300062c6:	e787      	b.n	300061d8 <flash_highspeed_setup+0x2bc>
300062c8:	f89d 3015 	ldrb.w	r3, [sp, #21]
300062cc:	2b40      	cmp	r3, #64	; 0x40
300062ce:	d002      	beq.n	300062d6 <flash_highspeed_setup+0x3ba>
300062d0:	2b65      	cmp	r3, #101	; 0x65
300062d2:	f47f af66 	bne.w	300061a2 <flash_highspeed_setup+0x286>
300062d6:	f89d 3016 	ldrb.w	r3, [sp, #22]
300062da:	2b15      	cmp	r3, #21
300062dc:	f67f af61 	bls.w	300061a2 <flash_highspeed_setup+0x286>
300062e0:	e7c6      	b.n	30006270 <flash_highspeed_setup+0x354>
300062e2:	f44f 7120 	mov.w	r1, #640	; 0x280
300062e6:	4815      	ldr	r0, [pc, #84]	; (3000633c <flash_highspeed_setup+0x420>)
300062e8:	f004 fe62 	bl	3000afb0 <io_assert_failed>
300062ec:	f44f 7115 	mov.w	r1, #596	; 0x254
300062f0:	4812      	ldr	r0, [pc, #72]	; (3000633c <flash_highspeed_setup+0x420>)
300062f2:	f004 fe5d 	bl	3000afb0 <io_assert_failed>
300062f6:	4b12      	ldr	r3, [pc, #72]	; (30006340 <flash_highspeed_setup+0x424>)
300062f8:	4798      	blx	r3
300062fa:	e752      	b.n	300061a2 <flash_highspeed_setup+0x286>
300062fc:	0000c1d9 	.word	0x0000c1d9
30006300:	3000ea98 	.word	0x3000ea98
30006304:	000129bd 	.word	0x000129bd
30006308:	0000a149 	.word	0x0000a149
3000630c:	3000c10c 	.word	0x3000c10c
30006310:	3000c1b0 	.word	0x3000c1b0
30006314:	2001c01c 	.word	0x2001c01c
30006318:	0000be71 	.word	0x0000be71
3000631c:	0000bee9 	.word	0x0000bee9
30006320:	0000bf59 	.word	0x0000bf59
30006324:	0000a3c5 	.word	0x0000a3c5
30006328:	0000a345 	.word	0x0000a345
3000632c:	0000a441 	.word	0x0000a441
30006330:	0000bd0d 	.word	0x0000bd0d
30006334:	3000c148 	.word	0x3000c148
30006338:	0000b991 	.word	0x0000b991
3000633c:	3000c07c 	.word	0x3000c07c
30006340:	0000a4c1 	.word	0x0000a4c1

30006344 <NAND_CHECK_IS_BAD_BLOCK>:
30006344:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
30006348:	4e24      	ldr	r6, [pc, #144]	; (300063dc <NAND_CHECK_IS_BAD_BLOCK+0x98>)
3000634a:	0907      	lsrs	r7, r0, #4
3000634c:	0045      	lsls	r5, r0, #1
3000634e:	b085      	sub	sp, #20
30006350:	f856 3027 	ldr.w	r3, [r6, r7, lsl #2]
30006354:	f005 051e 	and.w	r5, r5, #30
30006358:	40eb      	lsrs	r3, r5
3000635a:	f003 0303 	and.w	r3, r3, #3
3000635e:	2b02      	cmp	r3, #2
30006360:	d02c      	beq.n	300063bc <NAND_CHECK_IS_BAD_BLOCK+0x78>
30006362:	2b01      	cmp	r3, #1
30006364:	d026      	beq.n	300063b4 <NAND_CHECK_IS_BAD_BLOCK+0x70>
30006366:	4b1e      	ldr	r3, [pc, #120]	; (300063e0 <NAND_CHECK_IS_BAD_BLOCK+0x9c>)
30006368:	f04f 0801 	mov.w	r8, #1
3000636c:	2204      	movs	r2, #4
3000636e:	4604      	mov	r4, r0
30006370:	f893 106c 	ldrb.w	r1, [r3, #108]	; 0x6c
30006374:	0180      	lsls	r0, r0, #6
30006376:	ab03      	add	r3, sp, #12
30006378:	f8df 9070 	ldr.w	r9, [pc, #112]	; 300063ec <NAND_CHECK_IS_BAD_BLOCK+0xa8>
3000637c:	fa08 f101 	lsl.w	r1, r8, r1
30006380:	47c8      	blx	r9
30006382:	f89d 300c 	ldrb.w	r3, [sp, #12]
30006386:	f89d 200d 	ldrb.w	r2, [sp, #13]
3000638a:	4013      	ands	r3, r2
3000638c:	2bff      	cmp	r3, #255	; 0xff
3000638e:	d019      	beq.n	300063c4 <NAND_CHECK_IS_BAD_BLOCK+0x80>
30006390:	2002      	movs	r0, #2
30006392:	f856 2027 	ldr.w	r2, [r6, r7, lsl #2]
30006396:	4b13      	ldr	r3, [pc, #76]	; (300063e4 <NAND_CHECK_IS_BAD_BLOCK+0xa0>)
30006398:	fa00 f505 	lsl.w	r5, r0, r5
3000639c:	4912      	ldr	r1, [pc, #72]	; (300063e8 <NAND_CHECK_IS_BAD_BLOCK+0xa4>)
3000639e:	9400      	str	r4, [sp, #0]
300063a0:	432a      	orrs	r2, r5
300063a2:	f846 2027 	str.w	r2, [r6, r7, lsl #2]
300063a6:	2245      	movs	r2, #69	; 0x45
300063a8:	f002 ffd0 	bl	3000934c <rtk_log_write>
300063ac:	4640      	mov	r0, r8
300063ae:	b005      	add	sp, #20
300063b0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
300063b4:	2000      	movs	r0, #0
300063b6:	b005      	add	sp, #20
300063b8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
300063bc:	2001      	movs	r0, #1
300063be:	b005      	add	sp, #20
300063c0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
300063c4:	f856 3027 	ldr.w	r3, [r6, r7, lsl #2]
300063c8:	fa08 f005 	lsl.w	r0, r8, r5
300063cc:	4303      	orrs	r3, r0
300063ce:	2000      	movs	r0, #0
300063d0:	f846 3027 	str.w	r3, [r6, r7, lsl #2]
300063d4:	b005      	add	sp, #20
300063d6:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
300063da:	bf00      	nop
300063dc:	3000eaa0 	.word	0x3000eaa0
300063e0:	2001c01c 	.word	0x2001c01c
300063e4:	3000c198 	.word	0x3000c198
300063e8:	3000c1ac 	.word	0x3000c1ac
300063ec:	3000a58d 	.word	0x3000a58d

300063f0 <Nand_Get_NandAddr>:
300063f0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
300063f4:	4f10      	ldr	r7, [pc, #64]	; (30006438 <Nand_Get_NandAddr+0x48>)
300063f6:	f101 4678 	add.w	r6, r1, #4160749568	; 0xf8000000
300063fa:	f100 4078 	add.w	r0, r0, #4160749568	; 0xf8000000
300063fe:	f897 506c 	ldrb.w	r5, [r7, #108]	; 0x6c
30006402:	40e8      	lsrs	r0, r5
30006404:	fa26 f505 	lsr.w	r5, r6, r5
30006408:	09ad      	lsrs	r5, r5, #6
3000640a:	ebb5 1f90 	cmp.w	r5, r0, lsr #6
3000640e:	d90f      	bls.n	30006430 <Nand_Get_NandAddr+0x40>
30006410:	0984      	lsrs	r4, r0, #6
30006412:	f04f 0840 	mov.w	r8, #64	; 0x40
30006416:	4620      	mov	r0, r4
30006418:	3401      	adds	r4, #1
3000641a:	f7ff ff93 	bl	30006344 <NAND_CHECK_IS_BAD_BLOCK>
3000641e:	b128      	cbz	r0, 3000642c <Nand_Get_NandAddr+0x3c>
30006420:	f897 306c 	ldrb.w	r3, [r7, #108]	; 0x6c
30006424:	3501      	adds	r5, #1
30006426:	fa08 f303 	lsl.w	r3, r8, r3
3000642a:	441e      	add	r6, r3
3000642c:	42a5      	cmp	r5, r4
3000642e:	d8f2      	bhi.n	30006416 <Nand_Get_NandAddr+0x26>
30006430:	4630      	mov	r0, r6
30006432:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
30006436:	bf00      	nop
30006438:	2001c01c 	.word	0x2001c01c

3000643c <Nand_L2P_Table>:
3000643c:	b530      	push	{r4, r5, lr}
3000643e:	b085      	sub	sp, #20
30006440:	f04f 6300 	mov.w	r3, #134217728	; 0x8000000
30006444:	4605      	mov	r5, r0
30006446:	aa03      	add	r2, sp, #12
30006448:	a902      	add	r1, sp, #8
3000644a:	e9cd 3302 	strd	r3, r3, [sp, #8]
3000644e:	f003 f86d 	bl	3000952c <flash_get_layout_info_by_addr>
30006452:	4629      	mov	r1, r5
30006454:	9802      	ldr	r0, [sp, #8]
30006456:	f7ff ffcb 	bl	300063f0 <Nand_Get_NandAddr>
3000645a:	9b03      	ldr	r3, [sp, #12]
3000645c:	4604      	mov	r4, r0
3000645e:	f103 4378 	add.w	r3, r3, #4160749568	; 0xf8000000
30006462:	4283      	cmp	r3, r0
30006464:	d302      	bcc.n	3000646c <Nand_L2P_Table+0x30>
30006466:	4620      	mov	r0, r4
30006468:	b005      	add	sp, #20
3000646a:	bd30      	pop	{r4, r5, pc}
3000646c:	4b04      	ldr	r3, [pc, #16]	; (30006480 <Nand_L2P_Table+0x44>)
3000646e:	2245      	movs	r2, #69	; 0x45
30006470:	4904      	ldr	r1, [pc, #16]	; (30006484 <Nand_L2P_Table+0x48>)
30006472:	2002      	movs	r0, #2
30006474:	9500      	str	r5, [sp, #0]
30006476:	f002 ff69 	bl	3000934c <rtk_log_write>
3000647a:	4620      	mov	r0, r4
3000647c:	b005      	add	sp, #20
3000647e:	bd30      	pop	{r4, r5, pc}
30006480:	3000c1b8 	.word	0x3000c1b8
30006484:	3000c1ac 	.word	0x3000c1ac

30006488 <NandImgCopy>:
30006488:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
3000648c:	4617      	mov	r7, r2
3000648e:	4603      	mov	r3, r0
30006490:	b08b      	sub	sp, #44	; 0x2c
30006492:	f8df 910c 	ldr.w	r9, [pc, #268]	; 300065a0 <NandImgCopy+0x118>
30006496:	f107 38ff 	add.w	r8, r7, #4294967295	; 0xffffffff
3000649a:	4608      	mov	r0, r1
3000649c:	9309      	str	r3, [sp, #36]	; 0x24
3000649e:	f7ff ffcd 	bl	3000643c <Nand_L2P_Table>
300064a2:	f899 606c 	ldrb.w	r6, [r9, #108]	; 0x6c
300064a6:	4480      	add	r8, r0
300064a8:	fa20 f406 	lsr.w	r4, r0, r6
300064ac:	fa28 f806 	lsr.w	r8, r8, r6
300064b0:	eba8 0804 	sub.w	r8, r8, r4
300064b4:	f1b8 3fff 	cmp.w	r8, #4294967295	; 0xffffffff
300064b8:	d057      	beq.n	3000656a <NandImgCopy+0xe2>
300064ba:	463b      	mov	r3, r7
300064bc:	f04f 0a00 	mov.w	sl, #0
300064c0:	4647      	mov	r7, r8
300064c2:	4605      	mov	r5, r0
300064c4:	f04f 0b40 	mov.w	fp, #64	; 0x40
300064c8:	4698      	mov	r8, r3
300064ca:	f8cd a020 	str.w	sl, [sp, #32]
300064ce:	e022      	b.n	30006516 <NandImgCopy+0x8e>
300064d0:	f1c2 0320 	rsb	r3, r2, #32
300064d4:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
300064d8:	40d9      	lsrs	r1, r3
300064da:	9b09      	ldr	r3, [sp, #36]	; 0x24
300064dc:	4029      	ands	r1, r5
300064de:	4453      	add	r3, sl
300064e0:	b387      	cbz	r7, 30006544 <NandImgCopy+0xbc>
300064e2:	2601      	movs	r6, #1
300064e4:	4620      	mov	r0, r4
300064e6:	fa06 f202 	lsl.w	r2, r6, r2
300064ea:	4e2a      	ldr	r6, [pc, #168]	; (30006594 <NandImgCopy+0x10c>)
300064ec:	9205      	str	r2, [sp, #20]
300064ee:	1a52      	subs	r2, r2, r1
300064f0:	e9cd 2106 	strd	r2, r1, [sp, #24]
300064f4:	47b0      	blx	r6
300064f6:	f010 0f70 	tst.w	r0, #112	; 0x70
300064fa:	9b05      	ldr	r3, [sp, #20]
300064fc:	e9dd 2106 	ldrd	r2, r1, [sp, #24]
30006500:	d136      	bne.n	30006570 <NandImgCopy+0xe8>
30006502:	eba8 0803 	sub.w	r8, r8, r3
30006506:	4415      	add	r5, r2
30006508:	4492      	add	sl, r2
3000650a:	4488      	add	r8, r1
3000650c:	f899 606c 	ldrb.w	r6, [r9, #108]	; 0x6c
30006510:	3f01      	subs	r7, #1
30006512:	fa25 f406 	lsr.w	r4, r5, r6
30006516:	9b08      	ldr	r3, [sp, #32]
30006518:	4632      	mov	r2, r6
3000651a:	09a6      	lsrs	r6, r4, #6
3000651c:	ebb3 1f94 	cmp.w	r3, r4, lsr #6
30006520:	d8d6      	bhi.n	300064d0 <NandImgCopy+0x48>
30006522:	e005      	b.n	30006530 <NandImgCopy+0xa8>
30006524:	f899 306c 	ldrb.w	r3, [r9, #108]	; 0x6c
30006528:	3440      	adds	r4, #64	; 0x40
3000652a:	fa0b f303 	lsl.w	r3, fp, r3
3000652e:	441d      	add	r5, r3
30006530:	4630      	mov	r0, r6
30006532:	3601      	adds	r6, #1
30006534:	f7ff ff06 	bl	30006344 <NAND_CHECK_IS_BAD_BLOCK>
30006538:	2800      	cmp	r0, #0
3000653a:	d1f3      	bne.n	30006524 <NandImgCopy+0x9c>
3000653c:	f899 206c 	ldrb.w	r2, [r9, #108]	; 0x6c
30006540:	9608      	str	r6, [sp, #32]
30006542:	e7c5      	b.n	300064d0 <NandImgCopy+0x48>
30006544:	4642      	mov	r2, r8
30006546:	4620      	mov	r0, r4
30006548:	4d12      	ldr	r5, [pc, #72]	; (30006594 <NandImgCopy+0x10c>)
3000654a:	47a8      	blx	r5
3000654c:	f010 0f70 	tst.w	r0, #112	; 0x70
30006550:	d00b      	beq.n	3000656a <NandImgCopy+0xe2>
30006552:	09a1      	lsrs	r1, r4, #6
30006554:	f004 043f 	and.w	r4, r4, #63	; 0x3f
30006558:	4b0f      	ldr	r3, [pc, #60]	; (30006598 <NandImgCopy+0x110>)
3000655a:	2249      	movs	r2, #73	; 0x49
3000655c:	9400      	str	r4, [sp, #0]
3000655e:	e9cd 1001 	strd	r1, r0, [sp, #4]
30006562:	490e      	ldr	r1, [pc, #56]	; (3000659c <NandImgCopy+0x114>)
30006564:	2004      	movs	r0, #4
30006566:	f002 fef1 	bl	3000934c <rtk_log_write>
3000656a:	b00b      	add	sp, #44	; 0x2c
3000656c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30006570:	1ac9      	subs	r1, r1, r3
30006572:	09a3      	lsrs	r3, r4, #6
30006574:	f004 043f 	and.w	r4, r4, #63	; 0x3f
30006578:	4492      	add	sl, r2
3000657a:	4488      	add	r8, r1
3000657c:	4415      	add	r5, r2
3000657e:	9002      	str	r0, [sp, #8]
30006580:	2249      	movs	r2, #73	; 0x49
30006582:	9301      	str	r3, [sp, #4]
30006584:	2004      	movs	r0, #4
30006586:	4b04      	ldr	r3, [pc, #16]	; (30006598 <NandImgCopy+0x110>)
30006588:	4904      	ldr	r1, [pc, #16]	; (3000659c <NandImgCopy+0x114>)
3000658a:	9400      	str	r4, [sp, #0]
3000658c:	f002 fede 	bl	3000934c <rtk_log_write>
30006590:	e7bc      	b.n	3000650c <NandImgCopy+0x84>
30006592:	bf00      	nop
30006594:	3000a58d 	.word	0x3000a58d
30006598:	3000c1e4 	.word	0x3000c1e4
3000659c:	3000c1ac 	.word	0x3000c1ac
300065a0:	2001c01c 	.word	0x2001c01c

300065a4 <DDR_PHY_ChipInfo.part.0>:
300065a4:	4b1a      	ldr	r3, [pc, #104]	; (30006610 <DDR_PHY_ChipInfo.part.0+0x6c>)
300065a6:	b570      	push	{r4, r5, r6, lr}
300065a8:	4798      	blx	r3
300065aa:	3807      	subs	r0, #7
300065ac:	280a      	cmp	r0, #10
300065ae:	d816      	bhi.n	300065de <DDR_PHY_ChipInfo.part.0+0x3a>
300065b0:	e8df f000 	tbb	[pc, r0]
300065b4:	2924150b 	.word	0x2924150b
300065b8:	06101515 	.word	0x06101515
300065bc:	0610      	.short	0x0610
300065be:	0b          	.byte	0x0b
300065bf:	00          	.byte	0x00
300065c0:	2305      	movs	r3, #5
300065c2:	4a14      	ldr	r2, [pc, #80]	; (30006614 <DDR_PHY_ChipInfo.part.0+0x70>)
300065c4:	4618      	mov	r0, r3
300065c6:	7013      	strb	r3, [r2, #0]
300065c8:	bd70      	pop	{r4, r5, r6, pc}
300065ca:	2303      	movs	r3, #3
300065cc:	4a11      	ldr	r2, [pc, #68]	; (30006614 <DDR_PHY_ChipInfo.part.0+0x70>)
300065ce:	4618      	mov	r0, r3
300065d0:	7013      	strb	r3, [r2, #0]
300065d2:	bd70      	pop	{r4, r5, r6, pc}
300065d4:	2304      	movs	r3, #4
300065d6:	4a0f      	ldr	r2, [pc, #60]	; (30006614 <DDR_PHY_ChipInfo.part.0+0x70>)
300065d8:	4618      	mov	r0, r3
300065da:	7013      	strb	r3, [r2, #0]
300065dc:	bd70      	pop	{r4, r5, r6, pc}
300065de:	2414      	movs	r4, #20
300065e0:	4e0d      	ldr	r6, [pc, #52]	; (30006618 <DDR_PHY_ChipInfo.part.0+0x74>)
300065e2:	4d0e      	ldr	r5, [pc, #56]	; (3000661c <DDR_PHY_ChipInfo.part.0+0x78>)
300065e4:	4633      	mov	r3, r6
300065e6:	2245      	movs	r2, #69	; 0x45
300065e8:	4629      	mov	r1, r5
300065ea:	2002      	movs	r0, #2
300065ec:	f002 feae 	bl	3000934c <rtk_log_write>
300065f0:	3c01      	subs	r4, #1
300065f2:	d1f7      	bne.n	300065e4 <DDR_PHY_ChipInfo.part.0+0x40>
300065f4:	4b07      	ldr	r3, [pc, #28]	; (30006614 <DDR_PHY_ChipInfo.part.0+0x70>)
300065f6:	4620      	mov	r0, r4
300065f8:	701c      	strb	r4, [r3, #0]
300065fa:	bd70      	pop	{r4, r5, r6, pc}
300065fc:	2301      	movs	r3, #1
300065fe:	4a05      	ldr	r2, [pc, #20]	; (30006614 <DDR_PHY_ChipInfo.part.0+0x70>)
30006600:	4618      	mov	r0, r3
30006602:	7013      	strb	r3, [r2, #0]
30006604:	bd70      	pop	{r4, r5, r6, pc}
30006606:	2302      	movs	r3, #2
30006608:	4a02      	ldr	r2, [pc, #8]	; (30006614 <DDR_PHY_ChipInfo.part.0+0x70>)
3000660a:	4618      	mov	r0, r3
3000660c:	7013      	strb	r3, [r2, #0]
3000660e:	bd70      	pop	{r4, r5, r6, pc}
30006610:	30009f49 	.word	0x30009f49
30006614:	3000dba0 	.word	0x3000dba0
30006618:	3000c21c 	.word	0x3000c21c
3000661c:	3000c238 	.word	0x3000c238

30006620 <DDR_PHY_ChipInfo_ddrtype>:
30006620:	b510      	push	{r4, lr}
30006622:	4c04      	ldr	r4, [pc, #16]	; (30006634 <DDR_PHY_ChipInfo_ddrtype+0x14>)
30006624:	7820      	ldrb	r0, [r4, #0]
30006626:	b100      	cbz	r0, 3000662a <DDR_PHY_ChipInfo_ddrtype+0xa>
30006628:	bd10      	pop	{r4, pc}
3000662a:	4b03      	ldr	r3, [pc, #12]	; (30006638 <DDR_PHY_ChipInfo_ddrtype+0x18>)
3000662c:	4798      	blx	r3
3000662e:	7020      	strb	r0, [r4, #0]
30006630:	bd10      	pop	{r4, pc}
30006632:	bf00      	nop
30006634:	3000eaa8 	.word	0x3000eaa8
30006638:	30009ffd 	.word	0x30009ffd

3000663c <DDR_PHY_StructInit>:
3000663c:	f240 2315 	movw	r3, #533	; 0x215
30006640:	6583      	str	r3, [r0, #88]	; 0x58
30006642:	4770      	bx	lr

30006644 <DDR_PHY_DLL_CLK_DIV>:
30006644:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
30006646:	4d70      	ldr	r5, [pc, #448]	; (30006808 <DDR_PHY_DLL_CLK_DIV+0x1c4>)
30006648:	4c70      	ldr	r4, [pc, #448]	; (3000680c <DDR_PHY_DLL_CLK_DIV+0x1c8>)
3000664a:	fba5 3200 	umull	r3, r2, r5, r0
3000664e:	2365      	movs	r3, #101	; 0x65
30006650:	eb00 0e04 	add.w	lr, r0, r4
30006654:	0952      	lsrs	r2, r2, #5
30006656:	fb00 f303 	mul.w	r3, r0, r3
3000665a:	486d      	ldr	r0, [pc, #436]	; (30006810 <DDR_PHY_DLL_CLK_DIV+0x1cc>)
3000665c:	f1a2 0c03 	sub.w	ip, r2, #3
30006660:	6a47      	ldr	r7, [r0, #36]	; 0x24
30006662:	eb0c 018c 	add.w	r1, ip, ip, lsl #2
30006666:	ea4f 2c0c 	mov.w	ip, ip, lsl #8
3000666a:	ebae 0ec1 	sub.w	lr, lr, r1, lsl #3
3000666e:	fa1f fc8c 	uxth.w	ip, ip
30006672:	ea4f 2ece 	mov.w	lr, lr, lsl #11
30006676:	fba5 1e0e 	umull	r1, lr, r5, lr
3000667a:	4966      	ldr	r1, [pc, #408]	; (30006814 <DDR_PHY_DLL_CLK_DIV+0x1d0>)
3000667c:	fba1 6103 	umull	r6, r1, r1, r3
30006680:	4e65      	ldr	r6, [pc, #404]	; (30006818 <DDR_PHY_DLL_CLK_DIV+0x1d4>)
30006682:	0a09      	lsrs	r1, r1, #8
30006684:	1a52      	subs	r2, r2, r1
30006686:	3903      	subs	r1, #3
30006688:	02d2      	lsls	r2, r2, #11
3000668a:	eb02 125e 	add.w	r2, r2, lr, lsr #5
3000668e:	ea06 2ece 	and.w	lr, r6, lr, lsl #11
30006692:	4e62      	ldr	r6, [pc, #392]	; (3000681c <DDR_PHY_DLL_CLK_DIV+0x1d8>)
30006694:	403e      	ands	r6, r7
30006696:	ea4e 0606 	orr.w	r6, lr, r6
3000669a:	6246      	str	r6, [r0, #36]	; 0x24
3000669c:	4e60      	ldr	r6, [pc, #384]	; (30006820 <DDR_PHY_DLL_CLK_DIV+0x1dc>)
3000669e:	fba6 6303 	umull	r6, r3, r6, r3
300066a2:	eb04 1353 	add.w	r3, r4, r3, lsr #5
300066a6:	6a84      	ldr	r4, [r0, #40]	; 0x28
300066a8:	f424 447f 	bic.w	r4, r4, #65280	; 0xff00
300066ac:	ea4c 0404 	orr.w	r4, ip, r4
300066b0:	6284      	str	r4, [r0, #40]	; 0x28
300066b2:	eb01 0481 	add.w	r4, r1, r1, lsl #2
300066b6:	b2c9      	uxtb	r1, r1
300066b8:	eba3 03c4 	sub.w	r3, r3, r4, lsl #3
300066bc:	02db      	lsls	r3, r3, #11
300066be:	fba5 4303 	umull	r4, r3, r5, r3
300066c2:	6a45      	ldr	r5, [r0, #36]	; 0x24
300066c4:	4c57      	ldr	r4, [pc, #348]	; (30006824 <DDR_PHY_DLL_CLK_DIV+0x1e0>)
300066c6:	eba2 1253 	sub.w	r2, r2, r3, lsr #5
300066ca:	f3c3 134a 	ubfx	r3, r3, #5, #11
300066ce:	402c      	ands	r4, r5
300066d0:	4d55      	ldr	r5, [pc, #340]	; (30006828 <DDR_PHY_DLL_CLK_DIV+0x1e4>)
300066d2:	eb02 1242 	add.w	r2, r2, r2, lsl #5
300066d6:	4323      	orrs	r3, r4
300066d8:	02d2      	lsls	r2, r2, #11
300066da:	6243      	str	r3, [r0, #36]	; 0x24
300066dc:	6a84      	ldr	r4, [r0, #40]	; 0x28
300066de:	fba5 3202 	umull	r3, r2, r5, r2
300066e2:	4b52      	ldr	r3, [pc, #328]	; (3000682c <DDR_PHY_DLL_CLK_DIV+0x1e8>)
300066e4:	f024 04ff 	bic.w	r4, r4, #255	; 0xff
300066e8:	4321      	orrs	r1, r4
300066ea:	2401      	movs	r4, #1
300066ec:	6281      	str	r1, [r0, #40]	; 0x28
300066ee:	6a01      	ldr	r1, [r0, #32]
300066f0:	400b      	ands	r3, r1
300066f2:	494f      	ldr	r1, [pc, #316]	; (30006830 <DDR_PHY_DLL_CLK_DIV+0x1ec>)
300066f4:	ea43 3292 	orr.w	r2, r3, r2, lsr #14
300066f8:	6202      	str	r2, [r0, #32]
300066fa:	6784      	str	r4, [r0, #120]	; 0x78
300066fc:	7808      	ldrb	r0, [r1, #0]
300066fe:	28ff      	cmp	r0, #255	; 0xff
30006700:	d075      	beq.n	300067ee <DDR_PHY_DLL_CLK_DIV+0x1aa>
30006702:	4c4c      	ldr	r4, [pc, #304]	; (30006834 <DDR_PHY_DLL_CLK_DIV+0x1f0>)
30006704:	0145      	lsls	r5, r0, #5
30006706:	4b42      	ldr	r3, [pc, #264]	; (30006810 <DDR_PHY_DLL_CLK_DIV+0x1cc>)
30006708:	eb04 1040 	add.w	r0, r4, r0, lsl #5
3000670c:	5962      	ldr	r2, [r4, r5]
3000670e:	4e4a      	ldr	r6, [pc, #296]	; (30006838 <DDR_PHY_DLL_CLK_DIV+0x1f4>)
30006710:	611a      	str	r2, [r3, #16]
30006712:	6842      	ldr	r2, [r0, #4]
30006714:	615a      	str	r2, [r3, #20]
30006716:	6882      	ldr	r2, [r0, #8]
30006718:	f8c3 2098 	str.w	r2, [r3, #152]	; 0x98
3000671c:	e9d0 1203 	ldrd	r1, r2, [r0, #12]
30006720:	f8c3 10a0 	str.w	r1, [r3, #160]	; 0xa0
30006724:	609a      	str	r2, [r3, #8]
30006726:	f8d3 209c 	ldr.w	r2, [r3, #156]	; 0x9c
3000672a:	f022 52f8 	bic.w	r2, r2, #520093696	; 0x1f000000
3000672e:	f8c3 209c 	str.w	r2, [r3, #156]	; 0x9c
30006732:	7830      	ldrb	r0, [r6, #0]
30006734:	2800      	cmp	r0, #0
30006736:	d056      	beq.n	300067e6 <DDR_PHY_DLL_CLK_DIV+0x1a2>
30006738:	2801      	cmp	r0, #1
3000673a:	442c      	add	r4, r5
3000673c:	4b34      	ldr	r3, [pc, #208]	; (30006810 <DDR_PHY_DLL_CLK_DIV+0x1cc>)
3000673e:	d037      	beq.n	300067b0 <DDR_PHY_DLL_CLK_DIV+0x16c>
30006740:	2222      	movs	r2, #34	; 0x22
30006742:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
30006746:	6962      	ldr	r2, [r4, #20]
30006748:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
3000674c:	e9d4 1206 	ldrd	r1, r2, [r4, #24]
30006750:	f8c3 1084 	str.w	r1, [r3, #132]	; 0x84
30006754:	f8c3 2094 	str.w	r2, [r3, #148]	; 0x94
30006758:	f8d3 2084 	ldr.w	r2, [r3, #132]	; 0x84
3000675c:	4937      	ldr	r1, [pc, #220]	; (3000683c <DDR_PHY_DLL_CLK_DIV+0x1f8>)
3000675e:	f422 427f 	bic.w	r2, r2, #65280	; 0xff00
30006762:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
30006766:	f8d1 3268 	ldr.w	r3, [r1, #616]	; 0x268
3000676a:	009b      	lsls	r3, r3, #2
3000676c:	d516      	bpl.n	3000679c <DDR_PHY_DLL_CLK_DIV+0x158>
3000676e:	2800      	cmp	r0, #0
30006770:	d044      	beq.n	300067fc <DDR_PHY_DLL_CLK_DIV+0x1b8>
30006772:	4b27      	ldr	r3, [pc, #156]	; (30006810 <DDR_PHY_DLL_CLK_DIV+0x1cc>)
30006774:	4a32      	ldr	r2, [pc, #200]	; (30006840 <DDR_PHY_DLL_CLK_DIV+0x1fc>)
30006776:	601a      	str	r2, [r3, #0]
30006778:	4b25      	ldr	r3, [pc, #148]	; (30006810 <DDR_PHY_DLL_CLK_DIV+0x1cc>)
3000677a:	f8d3 2084 	ldr.w	r2, [r3, #132]	; 0x84
3000677e:	f422 2270 	bic.w	r2, r2, #983040	; 0xf0000
30006782:	f442 2240 	orr.w	r2, r2, #786432	; 0xc0000
30006786:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
3000678a:	699a      	ldr	r2, [r3, #24]
3000678c:	f422 1260 	bic.w	r2, r2, #3670016	; 0x380000
30006790:	619a      	str	r2, [r3, #24]
30006792:	699a      	ldr	r2, [r3, #24]
30006794:	f042 5280 	orr.w	r2, r2, #268435456	; 0x10000000
30006798:	619a      	str	r2, [r3, #24]
3000679a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
3000679c:	b920      	cbnz	r0, 300067a8 <DDR_PHY_DLL_CLK_DIV+0x164>
3000679e:	4b29      	ldr	r3, [pc, #164]	; (30006844 <DDR_PHY_DLL_CLK_DIV+0x200>)
300067a0:	4798      	blx	r3
300067a2:	2801      	cmp	r0, #1
300067a4:	7030      	strb	r0, [r6, #0]
300067a6:	d025      	beq.n	300067f4 <DDR_PHY_DLL_CLK_DIV+0x1b0>
300067a8:	4b19      	ldr	r3, [pc, #100]	; (30006810 <DDR_PHY_DLL_CLK_DIV+0x1cc>)
300067aa:	4a27      	ldr	r2, [pc, #156]	; (30006848 <DDR_PHY_DLL_CLK_DIV+0x204>)
300067ac:	601a      	str	r2, [r3, #0]
300067ae:	e7e3      	b.n	30006778 <DDR_PHY_DLL_CLK_DIV+0x134>
300067b0:	2233      	movs	r2, #51	; 0x33
300067b2:	6965      	ldr	r5, [r4, #20]
300067b4:	4921      	ldr	r1, [pc, #132]	; (3000683c <DDR_PHY_DLL_CLK_DIV+0x1f8>)
300067b6:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
300067ba:	f8c3 5080 	str.w	r5, [r3, #128]	; 0x80
300067be:	e9d4 0206 	ldrd	r0, r2, [r4, #24]
300067c2:	f8c3 0084 	str.w	r0, [r3, #132]	; 0x84
300067c6:	f8c3 2094 	str.w	r2, [r3, #148]	; 0x94
300067ca:	f8d3 2084 	ldr.w	r2, [r3, #132]	; 0x84
300067ce:	f422 427f 	bic.w	r2, r2, #65280	; 0xff00
300067d2:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
300067d6:	f8d1 3268 	ldr.w	r3, [r1, #616]	; 0x268
300067da:	009a      	lsls	r2, r3, #2
300067dc:	d50a      	bpl.n	300067f4 <DDR_PHY_DLL_CLK_DIV+0x1b0>
300067de:	4b0c      	ldr	r3, [pc, #48]	; (30006810 <DDR_PHY_DLL_CLK_DIV+0x1cc>)
300067e0:	4a1a      	ldr	r2, [pc, #104]	; (3000684c <DDR_PHY_DLL_CLK_DIV+0x208>)
300067e2:	601a      	str	r2, [r3, #0]
300067e4:	e7c8      	b.n	30006778 <DDR_PHY_DLL_CLK_DIV+0x134>
300067e6:	4b17      	ldr	r3, [pc, #92]	; (30006844 <DDR_PHY_DLL_CLK_DIV+0x200>)
300067e8:	4798      	blx	r3
300067ea:	7030      	strb	r0, [r6, #0]
300067ec:	e7a4      	b.n	30006738 <DDR_PHY_DLL_CLK_DIV+0xf4>
300067ee:	f7ff fed9 	bl	300065a4 <DDR_PHY_ChipInfo.part.0>
300067f2:	e786      	b.n	30006702 <DDR_PHY_DLL_CLK_DIV+0xbe>
300067f4:	4b06      	ldr	r3, [pc, #24]	; (30006810 <DDR_PHY_DLL_CLK_DIV+0x1cc>)
300067f6:	4a16      	ldr	r2, [pc, #88]	; (30006850 <DDR_PHY_DLL_CLK_DIV+0x20c>)
300067f8:	601a      	str	r2, [r3, #0]
300067fa:	e7bd      	b.n	30006778 <DDR_PHY_DLL_CLK_DIV+0x134>
300067fc:	4b11      	ldr	r3, [pc, #68]	; (30006844 <DDR_PHY_DLL_CLK_DIV+0x200>)
300067fe:	4798      	blx	r3
30006800:	2801      	cmp	r0, #1
30006802:	7030      	strb	r0, [r6, #0]
30006804:	d1b5      	bne.n	30006772 <DDR_PHY_DLL_CLK_DIV+0x12e>
30006806:	e7ea      	b.n	300067de <DDR_PHY_DLL_CLK_DIV+0x19a>
30006808:	cccccccd 	.word	0xcccccccd
3000680c:	001fff88 	.word	0x001fff88
30006810:	41011000 	.word	0x41011000
30006814:	10624dd3 	.word	0x10624dd3
30006818:	07ff0000 	.word	0x07ff0000
3000681c:	f800ffff 	.word	0xf800ffff
30006820:	51eb851f 	.word	0x51eb851f
30006824:	fffff800 	.word	0xfffff800
30006828:	d1b71759 	.word	0xd1b71759
3000682c:	fff80000 	.word	0xfff80000
30006830:	3000dba0 	.word	0x3000dba0
30006834:	3000c240 	.word	0x3000c240
30006838:	3000eaa8 	.word	0x3000eaa8
3000683c:	42008000 	.word	0x42008000
30006840:	4c000821 	.word	0x4c000821
30006844:	30009ffd 	.word	0x30009ffd
30006848:	40000021 	.word	0x40000021
3000684c:	4c000903 	.word	0x4c000903
30006850:	40000103 	.word	0x40000103

30006854 <DDR_PHY_CRT_Init>:
30006854:	4a32      	ldr	r2, [pc, #200]	; (30006920 <DDR_PHY_CRT_Init+0xcc>)
30006856:	2005      	movs	r0, #5
30006858:	b538      	push	{r3, r4, r5, lr}
3000685a:	f8d2 325c 	ldr.w	r3, [r2, #604]	; 0x25c
3000685e:	4c31      	ldr	r4, [pc, #196]	; (30006924 <DDR_PHY_CRT_Init+0xd0>)
30006860:	f443 7380 	orr.w	r3, r3, #256	; 0x100
30006864:	4d30      	ldr	r5, [pc, #192]	; (30006928 <DDR_PHY_CRT_Init+0xd4>)
30006866:	f8c2 325c 	str.w	r3, [r2, #604]	; 0x25c
3000686a:	f8d4 308c 	ldr.w	r3, [r4, #140]	; 0x8c
3000686e:	f043 0301 	orr.w	r3, r3, #1
30006872:	f8c4 308c 	str.w	r3, [r4, #140]	; 0x8c
30006876:	f8d4 308c 	ldr.w	r3, [r4, #140]	; 0x8c
3000687a:	f043 0330 	orr.w	r3, r3, #48	; 0x30
3000687e:	f8c4 308c 	str.w	r3, [r4, #140]	; 0x8c
30006882:	68e3      	ldr	r3, [r4, #12]
30006884:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
30006888:	60e3      	str	r3, [r4, #12]
3000688a:	f8d4 308c 	ldr.w	r3, [r4, #140]	; 0x8c
3000688e:	f043 0302 	orr.w	r3, r3, #2
30006892:	f8c4 308c 	str.w	r3, [r4, #140]	; 0x8c
30006896:	f8d4 308c 	ldr.w	r3, [r4, #140]	; 0x8c
3000689a:	f023 0308 	bic.w	r3, r3, #8
3000689e:	f8c4 308c 	str.w	r3, [r4, #140]	; 0x8c
300068a2:	f8d4 308c 	ldr.w	r3, [r4, #140]	; 0x8c
300068a6:	f043 0304 	orr.w	r3, r3, #4
300068aa:	f8c4 308c 	str.w	r3, [r4, #140]	; 0x8c
300068ae:	47a8      	blx	r5
300068b0:	f8d4 308c 	ldr.w	r3, [r4, #140]	; 0x8c
300068b4:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
300068b8:	f043 0308 	orr.w	r3, r3, #8
300068bc:	f8c4 308c 	str.w	r3, [r4, #140]	; 0x8c
300068c0:	6aa3      	ldr	r3, [r4, #40]	; 0x28
300068c2:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
300068c6:	62a3      	str	r3, [r4, #40]	; 0x28
300068c8:	47a8      	blx	r5
300068ca:	6aa2      	ldr	r2, [r4, #40]	; 0x28
300068cc:	f641 73ff 	movw	r3, #8191	; 0x1fff
300068d0:	4916      	ldr	r1, [pc, #88]	; (3000692c <DDR_PHY_CRT_Init+0xd8>)
300068d2:	f022 6280 	bic.w	r2, r2, #67108864	; 0x4000000
300068d6:	62a2      	str	r2, [r4, #40]	; 0x28
300068d8:	69e2      	ldr	r2, [r4, #28]
300068da:	f042 0202 	orr.w	r2, r2, #2
300068de:	61e2      	str	r2, [r4, #28]
300068e0:	69e2      	ldr	r2, [r4, #28]
300068e2:	f042 0208 	orr.w	r2, r2, #8
300068e6:	61e2      	str	r2, [r4, #28]
300068e8:	68a2      	ldr	r2, [r4, #8]
300068ea:	f042 4200 	orr.w	r2, r2, #2147483648	; 0x80000000
300068ee:	60a2      	str	r2, [r4, #8]
300068f0:	6862      	ldr	r2, [r4, #4]
300068f2:	4313      	orrs	r3, r2
300068f4:	6063      	str	r3, [r4, #4]
300068f6:	68a3      	ldr	r3, [r4, #8]
300068f8:	f443 23e0 	orr.w	r3, r3, #458752	; 0x70000
300068fc:	60a3      	str	r3, [r4, #8]
300068fe:	f8c4 1240 	str.w	r1, [r4, #576]	; 0x240
30006902:	f8d4 3238 	ldr.w	r3, [r4, #568]	; 0x238
30006906:	f023 0303 	bic.w	r3, r3, #3
3000690a:	f043 0302 	orr.w	r3, r3, #2
3000690e:	f8c4 3238 	str.w	r3, [r4, #568]	; 0x238
30006912:	f8d4 3238 	ldr.w	r3, [r4, #568]	; 0x238
30006916:	f443 23c0 	orr.w	r3, r3, #393216	; 0x60000
3000691a:	f8c4 3238 	str.w	r3, [r4, #568]	; 0x238
3000691e:	bd38      	pop	{r3, r4, r5, pc}
30006920:	42008000 	.word	0x42008000
30006924:	41011000 	.word	0x41011000
30006928:	00009b2d 	.word	0x00009b2d
3000692c:	90161f00 	.word	0x90161f00

30006930 <DDR_PHY_R240_ZQ_CAL>:
30006930:	b538      	push	{r3, r4, r5, lr}
30006932:	4b1e      	ldr	r3, [pc, #120]	; (300069ac <DDR_PHY_R240_ZQ_CAL+0x7c>)
30006934:	7818      	ldrb	r0, [r3, #0]
30006936:	28ff      	cmp	r0, #255	; 0xff
30006938:	d034      	beq.n	300069a4 <DDR_PHY_R240_ZQ_CAL+0x74>
3000693a:	4a1d      	ldr	r2, [pc, #116]	; (300069b0 <DDR_PHY_R240_ZQ_CAL+0x80>)
3000693c:	eb00 0080 	add.w	r0, r0, r0, lsl #2
30006940:	4b1c      	ldr	r3, [pc, #112]	; (300069b4 <DDR_PHY_R240_ZQ_CAL+0x84>)
30006942:	2400      	movs	r4, #0
30006944:	eb02 0180 	add.w	r1, r2, r0, lsl #2
30006948:	f852 5020 	ldr.w	r5, [r2, r0, lsl #2]
3000694c:	f8d3 014c 	ldr.w	r0, [r3, #332]	; 0x14c
30006950:	7c0a      	ldrb	r2, [r1, #16]
30006952:	f020 003e 	bic.w	r0, r0, #62	; 0x3e
30006956:	0052      	lsls	r2, r2, #1
30006958:	f002 023e 	and.w	r2, r2, #62	; 0x3e
3000695c:	4302      	orrs	r2, r0
3000695e:	6848      	ldr	r0, [r1, #4]
30006960:	f8c3 214c 	str.w	r2, [r3, #332]	; 0x14c
30006964:	f8c3 5180 	str.w	r5, [r3, #384]	; 0x180
30006968:	4a13      	ldr	r2, [pc, #76]	; (300069b8 <DDR_PHY_R240_ZQ_CAL+0x88>)
3000696a:	f8c3 4184 	str.w	r4, [r3, #388]	; 0x184
3000696e:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
30006972:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
30006976:	e9d1 0102 	ldrd	r0, r1, [r1, #8]
3000697a:	f8c3 0190 	str.w	r0, [r3, #400]	; 0x190
3000697e:	f8c3 2194 	str.w	r2, [r3, #404]	; 0x194
30006982:	f8c3 1198 	str.w	r1, [r3, #408]	; 0x198
30006986:	f8c3 219c 	str.w	r2, [r3, #412]	; 0x19c
3000698a:	f8d3 2130 	ldr.w	r2, [r3, #304]	; 0x130
3000698e:	f042 6200 	orr.w	r2, r2, #134217728	; 0x8000000
30006992:	f8c3 2130 	str.w	r2, [r3, #304]	; 0x130
30006996:	f8d3 2130 	ldr.w	r2, [r3, #304]	; 0x130
3000699a:	f022 6200 	bic.w	r2, r2, #134217728	; 0x8000000
3000699e:	f8c3 2130 	str.w	r2, [r3, #304]	; 0x130
300069a2:	bd38      	pop	{r3, r4, r5, pc}
300069a4:	f7ff fdfe 	bl	300065a4 <DDR_PHY_ChipInfo.part.0>
300069a8:	e7c7      	b.n	3000693a <DDR_PHY_R240_ZQ_CAL+0xa>
300069aa:	bf00      	nop
300069ac:	3000dba0 	.word	0x3000dba0
300069b0:	3000c300 	.word	0x3000c300
300069b4:	41011000 	.word	0x41011000
300069b8:	00262626 	.word	0x00262626

300069bc <DDR_PHY_ZQ_SET_SEL>:
300069bc:	b410      	push	{r4}
300069be:	4b25      	ldr	r3, [pc, #148]	; (30006a54 <DDR_PHY_ZQ_SET_SEL+0x98>)
300069c0:	f04f 3011 	mov.w	r0, #286331153	; 0x11111111
300069c4:	4a24      	ldr	r2, [pc, #144]	; (30006a58 <DDR_PHY_ZQ_SET_SEL+0x9c>)
300069c6:	4c25      	ldr	r4, [pc, #148]	; (30006a5c <DDR_PHY_ZQ_SET_SEL+0xa0>)
300069c8:	4925      	ldr	r1, [pc, #148]	; (30006a60 <DDR_PHY_ZQ_SET_SEL+0xa4>)
300069ca:	f8c3 21c0 	str.w	r2, [r3, #448]	; 0x1c0
300069ce:	f8c3 21c4 	str.w	r2, [r3, #452]	; 0x1c4
300069d2:	f8c3 21c8 	str.w	r2, [r3, #456]	; 0x1c8
300069d6:	f8c3 21cc 	str.w	r2, [r3, #460]	; 0x1cc
300069da:	f8c3 41d0 	str.w	r4, [r3, #464]	; 0x1d0
300069de:	f8c3 41d4 	str.w	r4, [r3, #468]	; 0x1d4
300069e2:	f64f 74ff 	movw	r4, #65535	; 0xffff
300069e6:	f8c3 21d8 	str.w	r2, [r3, #472]	; 0x1d8
300069ea:	f8c3 21dc 	str.w	r2, [r3, #476]	; 0x1dc
300069ee:	2200      	movs	r2, #0
300069f0:	f8c3 01e0 	str.w	r0, [r3, #480]	; 0x1e0
300069f4:	f8c3 01e4 	str.w	r0, [r3, #484]	; 0x1e4
300069f8:	f8c3 11e8 	str.w	r1, [r3, #488]	; 0x1e8
300069fc:	f8c3 11ec 	str.w	r1, [r3, #492]	; 0x1ec
30006a00:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
30006a04:	f8c3 21f0 	str.w	r2, [r3, #496]	; 0x1f0
30006a08:	f8c3 2204 	str.w	r2, [r3, #516]	; 0x204
30006a0c:	f8c3 2208 	str.w	r2, [r3, #520]	; 0x208
30006a10:	f8c3 220c 	str.w	r2, [r3, #524]	; 0x20c
30006a14:	f8c3 2210 	str.w	r2, [r3, #528]	; 0x210
30006a18:	f8c3 2214 	str.w	r2, [r3, #532]	; 0x214
30006a1c:	f8c3 2218 	str.w	r2, [r3, #536]	; 0x218
30006a20:	f8c3 221c 	str.w	r2, [r3, #540]	; 0x21c
30006a24:	f8c3 2220 	str.w	r2, [r3, #544]	; 0x220
30006a28:	f8c3 4224 	str.w	r4, [r3, #548]	; 0x224
30006a2c:	f8c3 1228 	str.w	r1, [r3, #552]	; 0x228
30006a30:	f8c3 122c 	str.w	r1, [r3, #556]	; 0x22c
30006a34:	f8c3 1230 	str.w	r1, [r3, #560]	; 0x230
30006a38:	f8c3 1234 	str.w	r1, [r3, #564]	; 0x234
30006a3c:	f8c3 1328 	str.w	r1, [r3, #808]	; 0x328
30006a40:	f8c3 132c 	str.w	r1, [r3, #812]	; 0x32c
30006a44:	f8c3 1330 	str.w	r1, [r3, #816]	; 0x330
30006a48:	f8c3 1334 	str.w	r1, [r3, #820]	; 0x334
30006a4c:	f85d 4b04 	ldr.w	r4, [sp], #4
30006a50:	4770      	bx	lr
30006a52:	bf00      	nop
30006a54:	41011000 	.word	0x41011000
30006a58:	ffff1111 	.word	0xffff1111
30006a5c:	ffff3333 	.word	0xffff3333
30006a60:	ffff0000 	.word	0xffff0000

30006a64 <DDR_PHY_DELAY_TAP_SET>:
30006a64:	b510      	push	{r4, lr}
30006a66:	4b15      	ldr	r3, [pc, #84]	; (30006abc <DDR_PHY_DELAY_TAP_SET+0x58>)
30006a68:	f04f 3288 	mov.w	r2, #2290649224	; 0x88888888
30006a6c:	4914      	ldr	r1, [pc, #80]	; (30006ac0 <DDR_PHY_DELAY_TAP_SET+0x5c>)
30006a6e:	4c15      	ldr	r4, [pc, #84]	; (30006ac4 <DDR_PHY_DELAY_TAP_SET+0x60>)
30006a70:	f8c3 2100 	str.w	r2, [r3, #256]	; 0x100
30006a74:	f8c3 2104 	str.w	r2, [r3, #260]	; 0x104
30006a78:	f8c3 2108 	str.w	r2, [r3, #264]	; 0x108
30006a7c:	f8c3 110c 	str.w	r1, [r3, #268]	; 0x10c
30006a80:	f8c3 2110 	str.w	r2, [r3, #272]	; 0x110
30006a84:	7820      	ldrb	r0, [r4, #0]
30006a86:	b1a0      	cbz	r0, 30006ab2 <DDR_PHY_DELAY_TAP_SET+0x4e>
30006a88:	2801      	cmp	r0, #1
30006a8a:	4b0c      	ldr	r3, [pc, #48]	; (30006abc <DDR_PHY_DELAY_TAP_SET+0x58>)
30006a8c:	f04f 3188 	mov.w	r1, #2290649224	; 0x88888888
30006a90:	bf0c      	ite	eq
30006a92:	4a0d      	ldreq	r2, [pc, #52]	; (30006ac8 <DDR_PHY_DELAY_TAP_SET+0x64>)
30006a94:	4a0d      	ldrne	r2, [pc, #52]	; (30006acc <DDR_PHY_DELAY_TAP_SET+0x68>)
30006a96:	f8c3 2154 	str.w	r2, [r3, #340]	; 0x154
30006a9a:	f640 0288 	movw	r2, #2184	; 0x888
30006a9e:	4b07      	ldr	r3, [pc, #28]	; (30006abc <DDR_PHY_DELAY_TAP_SET+0x58>)
30006aa0:	f8c3 1480 	str.w	r1, [r3, #1152]	; 0x480
30006aa4:	f8c3 1484 	str.w	r1, [r3, #1156]	; 0x484
30006aa8:	f8c3 2488 	str.w	r2, [r3, #1160]	; 0x488
30006aac:	f8c3 248c 	str.w	r2, [r3, #1164]	; 0x48c
30006ab0:	bd10      	pop	{r4, pc}
30006ab2:	4b07      	ldr	r3, [pc, #28]	; (30006ad0 <DDR_PHY_DELAY_TAP_SET+0x6c>)
30006ab4:	4798      	blx	r3
30006ab6:	7020      	strb	r0, [r4, #0]
30006ab8:	e7e6      	b.n	30006a88 <DDR_PHY_DELAY_TAP_SET+0x24>
30006aba:	bf00      	nop
30006abc:	41011000 	.word	0x41011000
30006ac0:	20888888 	.word	0x20888888
30006ac4:	3000eaa8 	.word	0x3000eaa8
30006ac8:	7c033333 	.word	0x7c033333
30006acc:	7c011111 	.word	0x7c011111
30006ad0:	30009ffd 	.word	0x30009ffd

30006ad4 <DDR_PHY_READ_CTRL>:
30006ad4:	4b10      	ldr	r3, [pc, #64]	; (30006b18 <DDR_PHY_READ_CTRL+0x44>)
30006ad6:	b510      	push	{r4, lr}
30006ad8:	7818      	ldrb	r0, [r3, #0]
30006ada:	28ff      	cmp	r0, #255	; 0xff
30006adc:	d019      	beq.n	30006b12 <DDR_PHY_READ_CTRL+0x3e>
30006ade:	4a0f      	ldr	r2, [pc, #60]	; (30006b1c <DDR_PHY_READ_CTRL+0x48>)
30006ae0:	eb00 0080 	add.w	r0, r0, r0, lsl #2
30006ae4:	4b0e      	ldr	r3, [pc, #56]	; (30006b20 <DDR_PHY_READ_CTRL+0x4c>)
30006ae6:	2108      	movs	r1, #8
30006ae8:	eb02 0080 	add.w	r0, r2, r0, lsl #2
30006aec:	22fe      	movs	r2, #254	; 0xfe
30006aee:	7c44      	ldrb	r4, [r0, #17]
30006af0:	f8c3 45f8 	str.w	r4, [r3, #1528]	; 0x5f8
30006af4:	7c84      	ldrb	r4, [r0, #18]
30006af6:	7cc0      	ldrb	r0, [r0, #19]
30006af8:	f8c3 45fc 	str.w	r4, [r3, #1532]	; 0x5fc
30006afc:	f8c3 0170 	str.w	r0, [r3, #368]	; 0x170
30006b00:	f8c3 1408 	str.w	r1, [r3, #1032]	; 0x408
30006b04:	f8c3 140c 	str.w	r1, [r3, #1036]	; 0x40c
30006b08:	f8c3 2418 	str.w	r2, [r3, #1048]	; 0x418
30006b0c:	f8c3 241c 	str.w	r2, [r3, #1052]	; 0x41c
30006b10:	bd10      	pop	{r4, pc}
30006b12:	f7ff fd47 	bl	300065a4 <DDR_PHY_ChipInfo.part.0>
30006b16:	e7e2      	b.n	30006ade <DDR_PHY_READ_CTRL+0xa>
30006b18:	3000dba0 	.word	0x3000dba0
30006b1c:	3000c300 	.word	0x3000c300
30006b20:	41011000 	.word	0x41011000

30006b24 <DDR_PHY_READ_LEVELING>:
30006b24:	b508      	push	{r3, lr}
30006b26:	4b21      	ldr	r3, [pc, #132]	; (30006bac <DDR_PHY_READ_LEVELING+0x88>)
30006b28:	7818      	ldrb	r0, [r3, #0]
30006b2a:	28ff      	cmp	r0, #255	; 0xff
30006b2c:	d03b      	beq.n	30006ba6 <DDR_PHY_READ_LEVELING+0x82>
30006b2e:	4b20      	ldr	r3, [pc, #128]	; (30006bb0 <DDR_PHY_READ_LEVELING+0x8c>)
30006b30:	b1e8      	cbz	r0, 30006b6e <DDR_PHY_READ_LEVELING+0x4a>
30006b32:	f04f 3112 	mov.w	r1, #303174162	; 0x12121212
30006b36:	f04f 3011 	mov.w	r0, #286331153	; 0x11111111
30006b3a:	220f      	movs	r2, #15
30006b3c:	f8c3 1440 	str.w	r1, [r3, #1088]	; 0x440
30006b40:	f8c3 1448 	str.w	r1, [r3, #1096]	; 0x448
30006b44:	f8c3 0444 	str.w	r0, [r3, #1092]	; 0x444
30006b48:	f8c3 044c 	str.w	r0, [r3, #1100]	; 0x44c
30006b4c:	f8c3 0458 	str.w	r0, [r3, #1112]	; 0x458
30006b50:	f8c3 0460 	str.w	r0, [r3, #1120]	; 0x460
30006b54:	f8c3 145c 	str.w	r1, [r3, #1116]	; 0x45c
30006b58:	f8c3 1464 	str.w	r1, [r3, #1124]	; 0x464
30006b5c:	f8c3 2450 	str.w	r2, [r3, #1104]	; 0x450
30006b60:	f8c3 2454 	str.w	r2, [r3, #1108]	; 0x454
30006b64:	f8c3 2468 	str.w	r2, [r3, #1128]	; 0x468
30006b68:	f8c3 246c 	str.w	r2, [r3, #1132]	; 0x46c
30006b6c:	bd08      	pop	{r3, pc}
30006b6e:	f04f 3210 	mov.w	r2, #269488144	; 0x10101010
30006b72:	2110      	movs	r1, #16
30006b74:	f8c3 2440 	str.w	r2, [r3, #1088]	; 0x440
30006b78:	f8c3 2448 	str.w	r2, [r3, #1096]	; 0x448
30006b7c:	f8c3 2458 	str.w	r2, [r3, #1112]	; 0x458
30006b80:	f8c3 2460 	str.w	r2, [r3, #1120]	; 0x460
30006b84:	f8c3 2444 	str.w	r2, [r3, #1092]	; 0x444
30006b88:	f8c3 244c 	str.w	r2, [r3, #1100]	; 0x44c
30006b8c:	f8c3 245c 	str.w	r2, [r3, #1116]	; 0x45c
30006b90:	f8c3 2464 	str.w	r2, [r3, #1124]	; 0x464
30006b94:	f8c3 1450 	str.w	r1, [r3, #1104]	; 0x450
30006b98:	f8c3 1454 	str.w	r1, [r3, #1108]	; 0x454
30006b9c:	f8c3 1468 	str.w	r1, [r3, #1128]	; 0x468
30006ba0:	f8c3 146c 	str.w	r1, [r3, #1132]	; 0x46c
30006ba4:	bd08      	pop	{r3, pc}
30006ba6:	f7ff fcfd 	bl	300065a4 <DDR_PHY_ChipInfo.part.0>
30006baa:	e7c0      	b.n	30006b2e <DDR_PHY_READ_LEVELING+0xa>
30006bac:	3000dba0 	.word	0x3000dba0
30006bb0:	41011000 	.word	0x41011000

30006bb4 <DDR_PHY_Init>:
30006bb4:	b510      	push	{r4, lr}
30006bb6:	6d80      	ldr	r0, [r0, #88]	; 0x58
30006bb8:	4c2f      	ldr	r4, [pc, #188]	; (30006c78 <DDR_PHY_Init+0xc4>)
30006bba:	f7ff fd43 	bl	30006644 <DDR_PHY_DLL_CLK_DIV>
30006bbe:	f7ff fe49 	bl	30006854 <DDR_PHY_CRT_Init>
30006bc2:	f7ff feb5 	bl	30006930 <DDR_PHY_R240_ZQ_CAL>
30006bc6:	f7ff fef9 	bl	300069bc <DDR_PHY_ZQ_SET_SEL>
30006bca:	f04f 1211 	mov.w	r2, #1114129	; 0x110011
30006bce:	2300      	movs	r3, #0
30006bd0:	f44f 5180 	mov.w	r1, #4096	; 0x1000
30006bd4:	4829      	ldr	r0, [pc, #164]	; (30006c7c <DDR_PHY_Init+0xc8>)
30006bd6:	f8c4 24f0 	str.w	r2, [r4, #1264]	; 0x4f0
30006bda:	f8c4 24f4 	str.w	r2, [r4, #1268]	; 0x4f4
30006bde:	f8c4 34e8 	str.w	r3, [r4, #1256]	; 0x4e8
30006be2:	f8c4 34ec 	str.w	r3, [r4, #1260]	; 0x4ec
30006be6:	f8c4 017c 	str.w	r0, [r4, #380]	; 0x17c
30006bea:	f8c4 12a4 	str.w	r1, [r4, #676]	; 0x2a4
30006bee:	f7ff ff39 	bl	30006a64 <DDR_PHY_DELAY_TAP_SET>
30006bf2:	f7ff ff6f 	bl	30006ad4 <DDR_PHY_READ_CTRL>
30006bf6:	f04f 3322 	mov.w	r3, #572662306	; 0x22222222
30006bfa:	4a21      	ldr	r2, [pc, #132]	; (30006c80 <DDR_PHY_Init+0xcc>)
30006bfc:	f8c4 2178 	str.w	r2, [r4, #376]	; 0x178
30006c00:	f8c4 3420 	str.w	r3, [r4, #1056]	; 0x420
30006c04:	f8c4 3424 	str.w	r3, [r4, #1060]	; 0x424
30006c08:	f8c4 3430 	str.w	r3, [r4, #1072]	; 0x430
30006c0c:	f8c4 3434 	str.w	r3, [r4, #1076]	; 0x434
30006c10:	f7ff ff88 	bl	30006b24 <DDR_PHY_READ_LEVELING>
30006c14:	f8d4 31f8 	ldr.w	r3, [r4, #504]	; 0x1f8
30006c18:	f04f 31d8 	mov.w	r1, #3638089944	; 0xd8d8d8d8
30006c1c:	f04f 328c 	mov.w	r2, #2358021260	; 0x8c8c8c8c
30006c20:	f423 437e 	bic.w	r3, r3, #65024	; 0xfe00
30006c24:	f443 4364 	orr.w	r3, r3, #58368	; 0xe400
30006c28:	f8c4 31f8 	str.w	r3, [r4, #504]	; 0x1f8
30006c2c:	f8c4 11fc 	str.w	r1, [r4, #508]	; 0x1fc
30006c30:	f8d4 32d0 	ldr.w	r3, [r4, #720]	; 0x2d0
30006c34:	f043 032f 	orr.w	r3, r3, #47	; 0x2f
30006c38:	f8c4 32d0 	str.w	r3, [r4, #720]	; 0x2d0
30006c3c:	f8c4 21fc 	str.w	r2, [r4, #508]	; 0x1fc
30006c40:	f8d4 323c 	ldr.w	r3, [r4, #572]	; 0x23c
30006c44:	f043 0303 	orr.w	r3, r3, #3
30006c48:	f8c4 323c 	str.w	r3, [r4, #572]	; 0x23c
30006c4c:	f8d4 323c 	ldr.w	r3, [r4, #572]	; 0x23c
30006c50:	f043 030c 	orr.w	r3, r3, #12
30006c54:	f8c4 323c 	str.w	r3, [r4, #572]	; 0x23c
30006c58:	f8d4 3238 	ldr.w	r3, [r4, #568]	; 0x238
30006c5c:	f023 0303 	bic.w	r3, r3, #3
30006c60:	f8c4 3238 	str.w	r3, [r4, #568]	; 0x238
30006c64:	f8d4 3238 	ldr.w	r3, [r4, #568]	; 0x238
30006c68:	f423 537c 	bic.w	r3, r3, #16128	; 0x3f00
30006c6c:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
30006c70:	f8c4 3238 	str.w	r3, [r4, #568]	; 0x238
30006c74:	bd10      	pop	{r4, pc}
30006c76:	bf00      	nop
30006c78:	41011000 	.word	0x41011000
30006c7c:	00045500 	.word	0x00045500
30006c80:	11117777 	.word	0x11117777

30006c84 <DDR_PHY_CAL>:
30006c84:	4770      	bx	lr
30006c86:	bf00      	nop

30006c88 <DDR_PHY_AutoGating>:
30006c88:	4a0c      	ldr	r2, [pc, #48]	; (30006cbc <DDR_PHY_AutoGating+0x34>)
30006c8a:	2032      	movs	r0, #50	; 0x32
30006c8c:	490c      	ldr	r1, [pc, #48]	; (30006cc0 <DDR_PHY_AutoGating+0x38>)
30006c8e:	b508      	push	{r3, lr}
30006c90:	6893      	ldr	r3, [r2, #8]
30006c92:	f023 5300 	bic.w	r3, r3, #536870912	; 0x20000000
30006c96:	6093      	str	r3, [r2, #8]
30006c98:	f8d2 30ac 	ldr.w	r3, [r2, #172]	; 0xac
30006c9c:	f023 033c 	bic.w	r3, r3, #60	; 0x3c
30006ca0:	f043 0314 	orr.w	r3, r3, #20
30006ca4:	f8c2 30ac 	str.w	r3, [r2, #172]	; 0xac
30006ca8:	4788      	blx	r1
30006caa:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
30006cae:	f8d2 31e0 	ldr.w	r3, [r2, #480]	; 0x1e0
30006cb2:	f043 0303 	orr.w	r3, r3, #3
30006cb6:	f8c2 31e0 	str.w	r3, [r2, #480]	; 0x1e0
30006cba:	bd08      	pop	{r3, pc}
30006cbc:	41011000 	.word	0x41011000
30006cc0:	00009b2d 	.word	0x00009b2d

30006cc4 <ddr_init_index>:
30006cc4:	b570      	push	{r4, r5, r6, lr}
30006cc6:	4b0f      	ldr	r3, [pc, #60]	; (30006d04 <ddr_init_index+0x40>)
30006cc8:	4798      	blx	r3
30006cca:	4604      	mov	r4, r0
30006ccc:	4b0e      	ldr	r3, [pc, #56]	; (30006d08 <ddr_init_index+0x44>)
30006cce:	4798      	blx	r3
30006cd0:	2c03      	cmp	r4, #3
30006cd2:	d014      	beq.n	30006cfe <ddr_init_index+0x3a>
30006cd4:	2c01      	cmp	r4, #1
30006cd6:	d00c      	beq.n	30006cf2 <ddr_init_index+0x2e>
30006cd8:	4e0c      	ldr	r6, [pc, #48]	; (30006d0c <ddr_init_index+0x48>)
30006cda:	4d0d      	ldr	r5, [pc, #52]	; (30006d10 <ddr_init_index+0x4c>)
30006cdc:	4c0d      	ldr	r4, [pc, #52]	; (30006d14 <ddr_init_index+0x50>)
30006cde:	462b      	mov	r3, r5
30006ce0:	2245      	movs	r2, #69	; 0x45
30006ce2:	4621      	mov	r1, r4
30006ce4:	2002      	movs	r0, #2
30006ce6:	f002 fb31 	bl	3000934c <rtk_log_write>
30006cea:	f242 7010 	movw	r0, #10000	; 0x2710
30006cee:	47b0      	blx	r6
30006cf0:	e7f5      	b.n	30006cde <ddr_init_index+0x1a>
30006cf2:	2802      	cmp	r0, #2
30006cf4:	d003      	beq.n	30006cfe <ddr_init_index+0x3a>
30006cf6:	2803      	cmp	r0, #3
30006cf8:	d1ee      	bne.n	30006cd8 <ddr_init_index+0x14>
30006cfa:	2000      	movs	r0, #0
30006cfc:	bd70      	pop	{r4, r5, r6, pc}
30006cfe:	4620      	mov	r0, r4
30006d00:	bd70      	pop	{r4, r5, r6, pc}
30006d02:	bf00      	nop
30006d04:	30006621 	.word	0x30006621
30006d08:	3000a049 	.word	0x3000a049
30006d0c:	00009be5 	.word	0x00009be5
30006d10:	3000c378 	.word	0x3000c378
30006d14:	3000c394 	.word	0x3000c394

30006d18 <rxi316_perf_tune>:
30006d18:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30006d1c:	4606      	mov	r6, r0
30006d1e:	6800      	ldr	r0, [r0, #0]
30006d20:	b0c3      	sub	sp, #268	; 0x10c
30006d22:	7985      	ldrb	r5, [r0, #6]
30006d24:	2d00      	cmp	r5, #0
30006d26:	f000 8332 	beq.w	3000738e <rxi316_perf_tune+0x676>
30006d2a:	2d01      	cmp	r5, #1
30006d2c:	d003      	beq.n	30006d36 <rxi316_perf_tune+0x1e>
30006d2e:	2d03      	cmp	r5, #3
30006d30:	bf14      	ite	ne
30006d32:	2502      	movne	r5, #2
30006d34:	2500      	moveq	r5, #0
30006d36:	68f3      	ldr	r3, [r6, #12]
30006d38:	2420      	movs	r4, #32
30006d3a:	f04f 0a00 	mov.w	sl, #0
30006d3e:	4684      	mov	ip, r0
30006d40:	685b      	ldr	r3, [r3, #4]
30006d42:	46a3      	mov	fp, r4
30006d44:	4627      	mov	r7, r4
30006d46:	46a0      	mov	r8, r4
30006d48:	7859      	ldrb	r1, [r3, #1]
30006d4a:	46a1      	mov	r9, r4
30006d4c:	781a      	ldrb	r2, [r3, #0]
30006d4e:	9123      	str	r1, [sp, #140]	; 0x8c
30006d50:	7899      	ldrb	r1, [r3, #2]
30006d52:	9124      	str	r1, [sp, #144]	; 0x90
30006d54:	78d9      	ldrb	r1, [r3, #3]
30006d56:	9125      	str	r1, [sp, #148]	; 0x94
30006d58:	7919      	ldrb	r1, [r3, #4]
30006d5a:	9126      	str	r1, [sp, #152]	; 0x98
30006d5c:	7959      	ldrb	r1, [r3, #5]
30006d5e:	9127      	str	r1, [sp, #156]	; 0x9c
30006d60:	7999      	ldrb	r1, [r3, #6]
30006d62:	9128      	str	r1, [sp, #160]	; 0xa0
30006d64:	79d9      	ldrb	r1, [r3, #7]
30006d66:	9129      	str	r1, [sp, #164]	; 0xa4
30006d68:	7a19      	ldrb	r1, [r3, #8]
30006d6a:	912a      	str	r1, [sp, #168]	; 0xa8
30006d6c:	7a59      	ldrb	r1, [r3, #9]
30006d6e:	912b      	str	r1, [sp, #172]	; 0xac
30006d70:	7a99      	ldrb	r1, [r3, #10]
30006d72:	912c      	str	r1, [sp, #176]	; 0xb0
30006d74:	7ad9      	ldrb	r1, [r3, #11]
30006d76:	912d      	str	r1, [sp, #180]	; 0xb4
30006d78:	7b19      	ldrb	r1, [r3, #12]
30006d7a:	912e      	str	r1, [sp, #184]	; 0xb8
30006d7c:	7b59      	ldrb	r1, [r3, #13]
30006d7e:	912f      	str	r1, [sp, #188]	; 0xbc
30006d80:	7b99      	ldrb	r1, [r3, #14]
30006d82:	9130      	str	r1, [sp, #192]	; 0xc0
30006d84:	7bd9      	ldrb	r1, [r3, #15]
30006d86:	9131      	str	r1, [sp, #196]	; 0xc4
30006d88:	7c19      	ldrb	r1, [r3, #16]
30006d8a:	941d      	str	r4, [sp, #116]	; 0x74
30006d8c:	9132      	str	r1, [sp, #200]	; 0xc8
30006d8e:	7c59      	ldrb	r1, [r3, #17]
30006d90:	9133      	str	r1, [sp, #204]	; 0xcc
30006d92:	7c99      	ldrb	r1, [r3, #18]
30006d94:	9134      	str	r1, [sp, #208]	; 0xd0
30006d96:	7cd9      	ldrb	r1, [r3, #19]
30006d98:	9135      	str	r1, [sp, #212]	; 0xd4
30006d9a:	7d19      	ldrb	r1, [r3, #20]
30006d9c:	9136      	str	r1, [sp, #216]	; 0xd8
30006d9e:	7d59      	ldrb	r1, [r3, #21]
30006da0:	9137      	str	r1, [sp, #220]	; 0xdc
30006da2:	7d99      	ldrb	r1, [r3, #22]
30006da4:	9138      	str	r1, [sp, #224]	; 0xe0
30006da6:	7dd9      	ldrb	r1, [r3, #23]
30006da8:	9139      	str	r1, [sp, #228]	; 0xe4
30006daa:	7e19      	ldrb	r1, [r3, #24]
30006dac:	913a      	str	r1, [sp, #232]	; 0xe8
30006dae:	7e59      	ldrb	r1, [r3, #25]
30006db0:	913b      	str	r1, [sp, #236]	; 0xec
30006db2:	7e99      	ldrb	r1, [r3, #26]
30006db4:	913c      	str	r1, [sp, #240]	; 0xf0
30006db6:	7ed9      	ldrb	r1, [r3, #27]
30006db8:	913d      	str	r1, [sp, #244]	; 0xf4
30006dba:	7f19      	ldrb	r1, [r3, #28]
30006dbc:	913e      	str	r1, [sp, #248]	; 0xf8
30006dbe:	7f59      	ldrb	r1, [r3, #29]
30006dc0:	913f      	str	r1, [sp, #252]	; 0xfc
30006dc2:	7f99      	ldrb	r1, [r3, #30]
30006dc4:	7fdb      	ldrb	r3, [r3, #31]
30006dc6:	9140      	str	r1, [sp, #256]	; 0x100
30006dc8:	4651      	mov	r1, sl
30006dca:	9341      	str	r3, [sp, #260]	; 0x104
30006dcc:	4653      	mov	r3, sl
30006dce:	9409      	str	r4, [sp, #36]	; 0x24
30006dd0:	941c      	str	r4, [sp, #112]	; 0x70
30006dd2:	941b      	str	r4, [sp, #108]	; 0x6c
30006dd4:	940a      	str	r4, [sp, #40]	; 0x28
30006dd6:	e9cd 4405 	strd	r4, r4, [sp, #20]
30006dda:	e9cd 4403 	strd	r4, r4, [sp, #12]
30006dde:	e9cd 4401 	strd	r4, r4, [sp, #4]
30006de2:	e9cd 4407 	strd	r4, r4, [sp, #28]
30006de6:	e9cd 4419 	strd	r4, r4, [sp, #100]	; 0x64
30006dea:	e9cd 4417 	strd	r4, r4, [sp, #92]	; 0x5c
30006dee:	e9cd 4415 	strd	r4, r4, [sp, #84]	; 0x54
30006df2:	e9cd 4413 	strd	r4, r4, [sp, #76]	; 0x4c
30006df6:	e9cd 4411 	strd	r4, r4, [sp, #68]	; 0x44
30006dfa:	e9cd 440f 	strd	r4, r4, [sp, #60]	; 0x3c
30006dfe:	e9cd 440d 	strd	r4, r4, [sp, #52]	; 0x34
30006e02:	e9cd 440b 	strd	r4, r4, [sp, #44]	; 0x2c
30006e06:	b94a      	cbnz	r2, 30006e1c <rxi316_perf_tune+0x104>
30006e08:	3101      	adds	r1, #1
30006e0a:	4699      	mov	r9, r3
30006e0c:	3301      	adds	r3, #1
30006e0e:	2b20      	cmp	r3, #32
30006e10:	d069      	beq.n	30006ee6 <rxi316_perf_tune+0x1ce>
30006e12:	aa22      	add	r2, sp, #136	; 0x88
30006e14:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
30006e18:	2a00      	cmp	r2, #0
30006e1a:	d0f5      	beq.n	30006e08 <rxi316_perf_tune+0xf0>
30006e1c:	2a01      	cmp	r2, #1
30006e1e:	d05d      	beq.n	30006edc <rxi316_perf_tune+0x1c4>
30006e20:	2a02      	cmp	r2, #2
30006e22:	d06e      	beq.n	30006f02 <rxi316_perf_tune+0x1ea>
30006e24:	2a03      	cmp	r2, #3
30006e26:	d06f      	beq.n	30006f08 <rxi316_perf_tune+0x1f0>
30006e28:	2a04      	cmp	r2, #4
30006e2a:	d070      	beq.n	30006f0e <rxi316_perf_tune+0x1f6>
30006e2c:	2a05      	cmp	r2, #5
30006e2e:	d071      	beq.n	30006f14 <rxi316_perf_tune+0x1fc>
30006e30:	2a06      	cmp	r2, #6
30006e32:	d072      	beq.n	30006f1a <rxi316_perf_tune+0x202>
30006e34:	2a07      	cmp	r2, #7
30006e36:	f000 82ac 	beq.w	30007392 <rxi316_perf_tune+0x67a>
30006e3a:	2a08      	cmp	r2, #8
30006e3c:	f000 837e 	beq.w	3000753c <rxi316_perf_tune+0x824>
30006e40:	2a09      	cmp	r2, #9
30006e42:	f000 8383 	beq.w	3000754c <rxi316_perf_tune+0x834>
30006e46:	2a0a      	cmp	r2, #10
30006e48:	f000 838a 	beq.w	30007560 <rxi316_perf_tune+0x848>
30006e4c:	2a0b      	cmp	r2, #11
30006e4e:	f000 8383 	beq.w	30007558 <rxi316_perf_tune+0x840>
30006e52:	2a0c      	cmp	r2, #12
30006e54:	f000 8388 	beq.w	30007568 <rxi316_perf_tune+0x850>
30006e58:	2a0d      	cmp	r2, #13
30006e5a:	f000 838d 	beq.w	30007578 <rxi316_perf_tune+0x860>
30006e5e:	2a0e      	cmp	r2, #14
30006e60:	f000 8386 	beq.w	30007570 <rxi316_perf_tune+0x858>
30006e64:	2a0f      	cmp	r2, #15
30006e66:	f000 838b 	beq.w	30007580 <rxi316_perf_tune+0x868>
30006e6a:	2a10      	cmp	r2, #16
30006e6c:	f000 838c 	beq.w	30007588 <rxi316_perf_tune+0x870>
30006e70:	2a11      	cmp	r2, #17
30006e72:	f000 838b 	beq.w	3000758c <rxi316_perf_tune+0x874>
30006e76:	2a12      	cmp	r2, #18
30006e78:	f000 838a 	beq.w	30007590 <rxi316_perf_tune+0x878>
30006e7c:	2a13      	cmp	r2, #19
30006e7e:	f000 838b 	beq.w	30007598 <rxi316_perf_tune+0x880>
30006e82:	2a14      	cmp	r2, #20
30006e84:	f000 8386 	beq.w	30007594 <rxi316_perf_tune+0x87c>
30006e88:	2a15      	cmp	r2, #21
30006e8a:	f000 838d 	beq.w	300075a8 <rxi316_perf_tune+0x890>
30006e8e:	2a16      	cmp	r2, #22
30006e90:	f000 8388 	beq.w	300075a4 <rxi316_perf_tune+0x88c>
30006e94:	2a17      	cmp	r2, #23
30006e96:	f000 8397 	beq.w	300075c8 <rxi316_perf_tune+0x8b0>
30006e9a:	2a18      	cmp	r2, #24
30006e9c:	f000 8392 	beq.w	300075c4 <rxi316_perf_tune+0x8ac>
30006ea0:	2a19      	cmp	r2, #25
30006ea2:	f000 838d 	beq.w	300075c0 <rxi316_perf_tune+0x8a8>
30006ea6:	2a1a      	cmp	r2, #26
30006ea8:	f000 8388 	beq.w	300075bc <rxi316_perf_tune+0x8a4>
30006eac:	2a1b      	cmp	r2, #27
30006eae:	f000 8383 	beq.w	300075b8 <rxi316_perf_tune+0x8a0>
30006eb2:	2a1c      	cmp	r2, #28
30006eb4:	f000 837e 	beq.w	300075b4 <rxi316_perf_tune+0x89c>
30006eb8:	2a1d      	cmp	r2, #29
30006eba:	f000 8379 	beq.w	300075b0 <rxi316_perf_tune+0x898>
30006ebe:	2a1e      	cmp	r2, #30
30006ec0:	f000 8374 	beq.w	300075ac <rxi316_perf_tune+0x894>
30006ec4:	2a1f      	cmp	r2, #31
30006ec6:	f000 836b 	beq.w	300075a0 <rxi316_perf_tune+0x888>
30006eca:	2a20      	cmp	r2, #32
30006ecc:	f000 8366 	beq.w	3000759c <rxi316_perf_tune+0x884>
30006ed0:	9809      	ldr	r0, [sp, #36]	; 0x24
30006ed2:	2a21      	cmp	r2, #33	; 0x21
30006ed4:	bf08      	it	eq
30006ed6:	4618      	moveq	r0, r3
30006ed8:	9009      	str	r0, [sp, #36]	; 0x24
30006eda:	e797      	b.n	30006e0c <rxi316_perf_tune+0xf4>
30006edc:	4698      	mov	r8, r3
30006ede:	3301      	adds	r3, #1
30006ee0:	3101      	adds	r1, #1
30006ee2:	2b20      	cmp	r3, #32
30006ee4:	d195      	bne.n	30006e12 <rxi316_perf_tune+0xfa>
30006ee6:	f89c 2002 	ldrb.w	r2, [ip, #2]
30006eea:	f8dc 3008 	ldr.w	r3, [ip, #8]
30006eee:	b1ba      	cbz	r2, 30006f20 <rxi316_perf_tune+0x208>
30006ef0:	2a01      	cmp	r2, #1
30006ef2:	f000 832e 	beq.w	30007552 <rxi316_perf_tune+0x83a>
30006ef6:	2a03      	cmp	r2, #3
30006ef8:	bf0c      	ite	eq
30006efa:	2204      	moveq	r2, #4
30006efc:	2203      	movne	r2, #3
30006efe:	921e      	str	r2, [sp, #120]	; 0x78
30006f00:	e010      	b.n	30006f24 <rxi316_perf_tune+0x20c>
30006f02:	3101      	adds	r1, #1
30006f04:	461f      	mov	r7, r3
30006f06:	e781      	b.n	30006e0c <rxi316_perf_tune+0xf4>
30006f08:	3101      	adds	r1, #1
30006f0a:	469b      	mov	fp, r3
30006f0c:	e77e      	b.n	30006e0c <rxi316_perf_tune+0xf4>
30006f0e:	3101      	adds	r1, #1
30006f10:	9301      	str	r3, [sp, #4]
30006f12:	e77b      	b.n	30006e0c <rxi316_perf_tune+0xf4>
30006f14:	3101      	adds	r1, #1
30006f16:	9302      	str	r3, [sp, #8]
30006f18:	e778      	b.n	30006e0c <rxi316_perf_tune+0xf4>
30006f1a:	3101      	adds	r1, #1
30006f1c:	9303      	str	r3, [sp, #12]
30006f1e:	e775      	b.n	30006e0c <rxi316_perf_tune+0xf4>
30006f20:	2201      	movs	r2, #1
30006f22:	921e      	str	r2, [sp, #120]	; 0x78
30006f24:	3b02      	subs	r3, #2
30006f26:	428b      	cmp	r3, r1
30006f28:	d005      	beq.n	30006f36 <rxi316_perf_tune+0x21e>
30006f2a:	4bab      	ldr	r3, [pc, #684]	; (300071d8 <rxi316_perf_tune+0x4c0>)
30006f2c:	2245      	movs	r2, #69	; 0x45
30006f2e:	49ab      	ldr	r1, [pc, #684]	; (300071dc <rxi316_perf_tune+0x4c4>)
30006f30:	2002      	movs	r0, #2
30006f32:	f002 fa0b 	bl	3000934c <rtk_log_write>
30006f36:	9b1e      	ldr	r3, [sp, #120]	; 0x78
30006f38:	459a      	cmp	sl, r3
30006f3a:	d005      	beq.n	30006f48 <rxi316_perf_tune+0x230>
30006f3c:	4ba8      	ldr	r3, [pc, #672]	; (300071e0 <rxi316_perf_tune+0x4c8>)
30006f3e:	2245      	movs	r2, #69	; 0x45
30006f40:	49a6      	ldr	r1, [pc, #664]	; (300071dc <rxi316_perf_tune+0x4c4>)
30006f42:	2002      	movs	r0, #2
30006f44:	f002 fa02 	bl	3000934c <rtk_log_write>
30006f48:	9b0a      	ldr	r3, [sp, #40]	; 0x28
30006f4a:	2b20      	cmp	r3, #32
30006f4c:	f000 82ef 	beq.w	3000752e <rxi316_perf_tune+0x816>
30006f50:	1b5a      	subs	r2, r3, r5
30006f52:	3a05      	subs	r2, #5
30006f54:	f002 030f 	and.w	r3, r2, #15
30006f58:	930a      	str	r3, [sp, #40]	; 0x28
30006f5a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
30006f5c:	2b20      	cmp	r3, #32
30006f5e:	f000 82e4 	beq.w	3000752a <rxi316_perf_tune+0x812>
30006f62:	1b5a      	subs	r2, r3, r5
30006f64:	3a06      	subs	r2, #6
30006f66:	0112      	lsls	r2, r2, #4
30006f68:	b2d2      	uxtb	r2, r2
30006f6a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
30006f6c:	2b20      	cmp	r3, #32
30006f6e:	f000 82d8 	beq.w	30007522 <rxi316_perf_tune+0x80a>
30006f72:	1b5b      	subs	r3, r3, r5
30006f74:	3b07      	subs	r3, #7
30006f76:	021b      	lsls	r3, r3, #8
30006f78:	f403 6370 	and.w	r3, r3, #3840	; 0xf00
30006f7c:	930b      	str	r3, [sp, #44]	; 0x2c
30006f7e:	9b0d      	ldr	r3, [sp, #52]	; 0x34
30006f80:	2b20      	cmp	r3, #32
30006f82:	f000 8209 	beq.w	30007398 <rxi316_perf_tune+0x680>
30006f86:	1b5b      	subs	r3, r3, r5
30006f88:	3b08      	subs	r3, #8
30006f8a:	031b      	lsls	r3, r3, #12
30006f8c:	b29b      	uxth	r3, r3
30006f8e:	930c      	str	r3, [sp, #48]	; 0x30
30006f90:	9b0e      	ldr	r3, [sp, #56]	; 0x38
30006f92:	2b20      	cmp	r3, #32
30006f94:	f000 8207 	beq.w	300073a6 <rxi316_perf_tune+0x68e>
30006f98:	1b5b      	subs	r3, r3, r5
30006f9a:	3b09      	subs	r3, #9
30006f9c:	041b      	lsls	r3, r3, #16
30006f9e:	f403 2370 	and.w	r3, r3, #983040	; 0xf0000
30006fa2:	930d      	str	r3, [sp, #52]	; 0x34
30006fa4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
30006fa6:	2b20      	cmp	r3, #32
30006fa8:	f000 8204 	beq.w	300073b4 <rxi316_perf_tune+0x69c>
30006fac:	1b5b      	subs	r3, r3, r5
30006fae:	3b0a      	subs	r3, #10
30006fb0:	051b      	lsls	r3, r3, #20
30006fb2:	f403 0370 	and.w	r3, r3, #15728640	; 0xf00000
30006fb6:	930e      	str	r3, [sp, #56]	; 0x38
30006fb8:	9b10      	ldr	r3, [sp, #64]	; 0x40
30006fba:	2b20      	cmp	r3, #32
30006fbc:	f000 8201 	beq.w	300073c2 <rxi316_perf_tune+0x6aa>
30006fc0:	1b5b      	subs	r3, r3, r5
30006fc2:	3b0b      	subs	r3, #11
30006fc4:	061b      	lsls	r3, r3, #24
30006fc6:	f003 6370 	and.w	r3, r3, #251658240	; 0xf000000
30006fca:	930f      	str	r3, [sp, #60]	; 0x3c
30006fcc:	9b11      	ldr	r3, [sp, #68]	; 0x44
30006fce:	2b20      	cmp	r3, #32
30006fd0:	f000 81fe 	beq.w	300073d0 <rxi316_perf_tune+0x6b8>
30006fd4:	1b5b      	subs	r3, r3, r5
30006fd6:	3b0c      	subs	r3, #12
30006fd8:	071b      	lsls	r3, r3, #28
30006fda:	9310      	str	r3, [sp, #64]	; 0x40
30006fdc:	9b12      	ldr	r3, [sp, #72]	; 0x48
30006fde:	2b20      	cmp	r3, #32
30006fe0:	f000 81fd 	beq.w	300073de <rxi316_perf_tune+0x6c6>
30006fe4:	1b5b      	subs	r3, r3, r5
30006fe6:	3b0d      	subs	r3, #13
30006fe8:	f003 030f 	and.w	r3, r3, #15
30006fec:	9311      	str	r3, [sp, #68]	; 0x44
30006fee:	9b13      	ldr	r3, [sp, #76]	; 0x4c
30006ff0:	2b20      	cmp	r3, #32
30006ff2:	f000 81fa 	beq.w	300073ea <rxi316_perf_tune+0x6d2>
30006ff6:	1b5b      	subs	r3, r3, r5
30006ff8:	3b0e      	subs	r3, #14
30006ffa:	011b      	lsls	r3, r3, #4
30006ffc:	b2db      	uxtb	r3, r3
30006ffe:	9312      	str	r3, [sp, #72]	; 0x48
30007000:	9b14      	ldr	r3, [sp, #80]	; 0x50
30007002:	2b20      	cmp	r3, #32
30007004:	f000 81f7 	beq.w	300073f6 <rxi316_perf_tune+0x6de>
30007008:	1b5b      	subs	r3, r3, r5
3000700a:	3b0f      	subs	r3, #15
3000700c:	021b      	lsls	r3, r3, #8
3000700e:	f403 6370 	and.w	r3, r3, #3840	; 0xf00
30007012:	9313      	str	r3, [sp, #76]	; 0x4c
30007014:	9b15      	ldr	r3, [sp, #84]	; 0x54
30007016:	2b20      	cmp	r3, #32
30007018:	f000 81f4 	beq.w	30007404 <rxi316_perf_tune+0x6ec>
3000701c:	1b5b      	subs	r3, r3, r5
3000701e:	031b      	lsls	r3, r3, #12
30007020:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
30007024:	9321      	str	r3, [sp, #132]	; 0x84
30007026:	9b16      	ldr	r3, [sp, #88]	; 0x58
30007028:	2b20      	cmp	r3, #32
3000702a:	f000 81f2 	beq.w	30007412 <rxi316_perf_tune+0x6fa>
3000702e:	1b5b      	subs	r3, r3, r5
30007030:	3b11      	subs	r3, #17
30007032:	041b      	lsls	r3, r3, #16
30007034:	f403 2370 	and.w	r3, r3, #983040	; 0xf0000
30007038:	9320      	str	r3, [sp, #128]	; 0x80
3000703a:	9b17      	ldr	r3, [sp, #92]	; 0x5c
3000703c:	2b20      	cmp	r3, #32
3000703e:	f000 81ef 	beq.w	30007420 <rxi316_perf_tune+0x708>
30007042:	1b5b      	subs	r3, r3, r5
30007044:	3b12      	subs	r3, #18
30007046:	051b      	lsls	r3, r3, #20
30007048:	f403 0370 	and.w	r3, r3, #15728640	; 0xf00000
3000704c:	931f      	str	r3, [sp, #124]	; 0x7c
3000704e:	9b18      	ldr	r3, [sp, #96]	; 0x60
30007050:	2b20      	cmp	r3, #32
30007052:	f000 81ec 	beq.w	3000742e <rxi316_perf_tune+0x716>
30007056:	1b5b      	subs	r3, r3, r5
30007058:	3b13      	subs	r3, #19
3000705a:	061b      	lsls	r3, r3, #24
3000705c:	f003 6370 	and.w	r3, r3, #251658240	; 0xf000000
30007060:	931e      	str	r3, [sp, #120]	; 0x78
30007062:	9b19      	ldr	r3, [sp, #100]	; 0x64
30007064:	2b20      	cmp	r3, #32
30007066:	f000 81e9 	beq.w	3000743c <rxi316_perf_tune+0x724>
3000706a:	1b5b      	subs	r3, r3, r5
3000706c:	3b14      	subs	r3, #20
3000706e:	071b      	lsls	r3, r3, #28
30007070:	9319      	str	r3, [sp, #100]	; 0x64
30007072:	9b1a      	ldr	r3, [sp, #104]	; 0x68
30007074:	2b20      	cmp	r3, #32
30007076:	f000 81e8 	beq.w	3000744a <rxi316_perf_tune+0x732>
3000707a:	1b5b      	subs	r3, r3, r5
3000707c:	3b15      	subs	r3, #21
3000707e:	f003 030f 	and.w	r3, r3, #15
30007082:	9318      	str	r3, [sp, #96]	; 0x60
30007084:	9b07      	ldr	r3, [sp, #28]
30007086:	2b20      	cmp	r3, #32
30007088:	f000 81e5 	beq.w	30007456 <rxi316_perf_tune+0x73e>
3000708c:	1b5b      	subs	r3, r3, r5
3000708e:	3b02      	subs	r3, #2
30007090:	f003 031f 	and.w	r3, r3, #31
30007094:	9317      	str	r3, [sp, #92]	; 0x5c
30007096:	9b08      	ldr	r3, [sp, #32]
30007098:	2b20      	cmp	r3, #32
3000709a:	f000 81e2 	beq.w	30007462 <rxi316_perf_tune+0x74a>
3000709e:	1b5b      	subs	r3, r3, r5
300070a0:	3b02      	subs	r3, #2
300070a2:	015b      	lsls	r3, r3, #5
300070a4:	f403 7378 	and.w	r3, r3, #992	; 0x3e0
300070a8:	9316      	str	r3, [sp, #88]	; 0x58
300070aa:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
300070ac:	2b20      	cmp	r3, #32
300070ae:	f000 81df 	beq.w	30007470 <rxi316_perf_tune+0x758>
300070b2:	1b5b      	subs	r3, r3, r5
300070b4:	f1b9 0f20 	cmp.w	r9, #32
300070b8:	f1a3 0302 	sub.w	r3, r3, #2
300070bc:	ea4f 2383 	mov.w	r3, r3, lsl #10
300070c0:	f403 43f8 	and.w	r3, r3, #31744	; 0x7c00
300070c4:	9315      	str	r3, [sp, #84]	; 0x54
300070c6:	f000 81da 	beq.w	3000747e <rxi316_perf_tune+0x766>
300070ca:	eba9 0105 	sub.w	r1, r9, r5
300070ce:	f1b8 0f20 	cmp.w	r8, #32
300070d2:	f1a1 0102 	sub.w	r1, r1, #2
300070d6:	f001 030f 	and.w	r3, r1, #15
300070da:	9314      	str	r3, [sp, #80]	; 0x50
300070dc:	f000 81d5 	beq.w	3000748a <rxi316_perf_tune+0x772>
300070e0:	eba8 0105 	sub.w	r1, r8, r5
300070e4:	2f20      	cmp	r7, #32
300070e6:	f1a1 0103 	sub.w	r1, r1, #3
300070ea:	ea4f 1101 	mov.w	r1, r1, lsl #4
300070ee:	b2c9      	uxtb	r1, r1
300070f0:	f000 81d0 	beq.w	30007494 <rxi316_perf_tune+0x77c>
300070f4:	1b7b      	subs	r3, r7, r5
300070f6:	f1bb 0f20 	cmp.w	fp, #32
300070fa:	f1a3 0304 	sub.w	r3, r3, #4
300070fe:	ea4f 2303 	mov.w	r3, r3, lsl #8
30007102:	f403 6370 	and.w	r3, r3, #3840	; 0xf00
30007106:	9308      	str	r3, [sp, #32]
30007108:	f000 81cb 	beq.w	300074a2 <rxi316_perf_tune+0x78a>
3000710c:	ebab 0305 	sub.w	r3, fp, r5
30007110:	3b05      	subs	r3, #5
30007112:	031b      	lsls	r3, r3, #12
30007114:	b29b      	uxth	r3, r3
30007116:	9307      	str	r3, [sp, #28]
30007118:	9b01      	ldr	r3, [sp, #4]
3000711a:	2b20      	cmp	r3, #32
3000711c:	f000 81c8 	beq.w	300074b0 <rxi316_perf_tune+0x798>
30007120:	eba3 0c05 	sub.w	ip, r3, r5
30007124:	9b02      	ldr	r3, [sp, #8]
30007126:	f1ac 0c06 	sub.w	ip, ip, #6
3000712a:	2b20      	cmp	r3, #32
3000712c:	ea4f 4c0c 	mov.w	ip, ip, lsl #16
30007130:	f40c 2c70 	and.w	ip, ip, #983040	; 0xf0000
30007134:	f000 81c2 	beq.w	300074bc <rxi316_perf_tune+0x7a4>
30007138:	eba3 0e05 	sub.w	lr, r3, r5
3000713c:	9b03      	ldr	r3, [sp, #12]
3000713e:	f1ae 0e07 	sub.w	lr, lr, #7
30007142:	2b20      	cmp	r3, #32
30007144:	ea4f 5e0e 	mov.w	lr, lr, lsl #20
30007148:	f40e 0e70 	and.w	lr, lr, #15728640	; 0xf00000
3000714c:	f000 81bc 	beq.w	300074c8 <rxi316_perf_tune+0x7b0>
30007150:	eba3 0805 	sub.w	r8, r3, r5
30007154:	9b04      	ldr	r3, [sp, #16]
30007156:	f1a8 0808 	sub.w	r8, r8, #8
3000715a:	2b20      	cmp	r3, #32
3000715c:	ea4f 6808 	mov.w	r8, r8, lsl #24
30007160:	f008 6870 	and.w	r8, r8, #251658240	; 0xf000000
30007164:	f000 81b6 	beq.w	300074d4 <rxi316_perf_tune+0x7bc>
30007168:	1b5b      	subs	r3, r3, r5
3000716a:	3b09      	subs	r3, #9
3000716c:	071b      	lsls	r3, r3, #28
3000716e:	9302      	str	r3, [sp, #8]
30007170:	9b05      	ldr	r3, [sp, #20]
30007172:	2b20      	cmp	r3, #32
30007174:	f000 81b5 	beq.w	300074e2 <rxi316_perf_tune+0x7ca>
30007178:	eba3 0905 	sub.w	r9, r3, r5
3000717c:	9b06      	ldr	r3, [sp, #24]
3000717e:	f1a9 090a 	sub.w	r9, r9, #10
30007182:	2b20      	cmp	r3, #32
30007184:	f009 090f 	and.w	r9, r9, #15
30007188:	f000 81b1 	beq.w	300074ee <rxi316_perf_tune+0x7d6>
3000718c:	1b58      	subs	r0, r3, r5
3000718e:	9b1c      	ldr	r3, [sp, #112]	; 0x70
30007190:	380b      	subs	r0, #11
30007192:	2b20      	cmp	r3, #32
30007194:	ea4f 1000 	mov.w	r0, r0, lsl #4
30007198:	b2c0      	uxtb	r0, r0
3000719a:	f000 81ad 	beq.w	300074f8 <rxi316_perf_tune+0x7e0>
3000719e:	eba3 0b05 	sub.w	fp, r3, r5
300071a2:	9b09      	ldr	r3, [sp, #36]	; 0x24
300071a4:	f1ab 0b02 	sub.w	fp, fp, #2
300071a8:	2b20      	cmp	r3, #32
300071aa:	f00b 0b1f 	and.w	fp, fp, #31
300071ae:	f000 81a9 	beq.w	30007504 <rxi316_perf_tune+0x7ec>
300071b2:	eba3 0a05 	sub.w	sl, r3, r5
300071b6:	9b1d      	ldr	r3, [sp, #116]	; 0x74
300071b8:	f1aa 0a02 	sub.w	sl, sl, #2
300071bc:	2b20      	cmp	r3, #32
300071be:	f00a 0a1f 	and.w	sl, sl, #31
300071c2:	f000 81a5 	beq.w	30007510 <rxi316_perf_tune+0x7f8>
300071c6:	1b5f      	subs	r7, r3, r5
300071c8:	2c20      	cmp	r4, #32
300071ca:	f1a7 0702 	sub.w	r7, r7, #2
300071ce:	f007 071f 	and.w	r7, r7, #31
300071d2:	f000 81a2 	beq.w	3000751a <rxi316_perf_tune+0x802>
300071d6:	e005      	b.n	300071e4 <rxi316_perf_tune+0x4cc>
300071d8:	3000c398 	.word	0x3000c398
300071dc:	3000c394 	.word	0x3000c394
300071e0:	3000c3d4 	.word	0x3000c3d4
300071e4:	1b63      	subs	r3, r4, r5
300071e6:	3b02      	subs	r3, #2
300071e8:	015b      	lsls	r3, r3, #5
300071ea:	f403 7378 	and.w	r3, r3, #992	; 0x3e0
300071ee:	9301      	str	r3, [sp, #4]
300071f0:	9c0a      	ldr	r4, [sp, #40]	; 0x28
300071f2:	ea40 0009 	orr.w	r0, r0, r9
300071f6:	4314      	orrs	r4, r2
300071f8:	4622      	mov	r2, r4
300071fa:	e9dd 4511 	ldrd	r4, r5, [sp, #68]	; 0x44
300071fe:	432c      	orrs	r4, r5
30007200:	9d14      	ldr	r5, [sp, #80]	; 0x50
30007202:	4329      	orrs	r1, r5
30007204:	e9dd 5316 	ldrd	r5, r3, [sp, #88]	; 0x58
30007208:	431d      	orrs	r5, r3
3000720a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
3000720c:	431a      	orrs	r2, r3
3000720e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
30007210:	431c      	orrs	r4, r3
30007212:	9b08      	ldr	r3, [sp, #32]
30007214:	4319      	orrs	r1, r3
30007216:	9b15      	ldr	r3, [sp, #84]	; 0x54
30007218:	431d      	orrs	r5, r3
3000721a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
3000721c:	431a      	orrs	r2, r3
3000721e:	9b21      	ldr	r3, [sp, #132]	; 0x84
30007220:	431c      	orrs	r4, r3
30007222:	9b07      	ldr	r3, [sp, #28]
30007224:	4319      	orrs	r1, r3
30007226:	9b0d      	ldr	r3, [sp, #52]	; 0x34
30007228:	431a      	orrs	r2, r3
3000722a:	9b20      	ldr	r3, [sp, #128]	; 0x80
3000722c:	ea41 010c 	orr.w	r1, r1, ip
30007230:	431c      	orrs	r4, r3
30007232:	9b01      	ldr	r3, [sp, #4]
30007234:	ea41 010e 	orr.w	r1, r1, lr
30007238:	431f      	orrs	r7, r3
3000723a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
3000723c:	ea41 0108 	orr.w	r1, r1, r8
30007240:	431a      	orrs	r2, r3
30007242:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
30007244:	431c      	orrs	r4, r3
30007246:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
30007248:	431a      	orrs	r2, r3
3000724a:	9b1e      	ldr	r3, [sp, #120]	; 0x78
3000724c:	4323      	orrs	r3, r4
3000724e:	9c10      	ldr	r4, [sp, #64]	; 0x40
30007250:	4322      	orrs	r2, r4
30007252:	9c19      	ldr	r4, [sp, #100]	; 0x64
30007254:	4323      	orrs	r3, r4
30007256:	9c02      	ldr	r4, [sp, #8]
30007258:	430c      	orrs	r4, r1
3000725a:	49ba      	ldr	r1, [pc, #744]	; (30007544 <rxi316_perf_tune+0x82c>)
3000725c:	f8c1 2400 	str.w	r2, [r1, #1024]	; 0x400
30007260:	f8c1 3404 	str.w	r3, [r1, #1028]	; 0x404
30007264:	9b18      	ldr	r3, [sp, #96]	; 0x60
30007266:	f8c1 3408 	str.w	r3, [r1, #1032]	; 0x408
3000726a:	f8c1 540c 	str.w	r5, [r1, #1036]	; 0x40c
3000726e:	f8c1 4410 	str.w	r4, [r1, #1040]	; 0x410
30007272:	f8c1 0414 	str.w	r0, [r1, #1044]	; 0x414
30007276:	f8c1 b418 	str.w	fp, [r1, #1048]	; 0x418
3000727a:	f8c1 a41c 	str.w	sl, [r1, #1052]	; 0x41c
3000727e:	f8c1 7420 	str.w	r7, [r1, #1056]	; 0x420
30007282:	68f3      	ldr	r3, [r6, #12]
30007284:	689a      	ldr	r2, [r3, #8]
30007286:	e9d2 3200 	ldrd	r3, r2, [r2]
3000728a:	f003 0301 	and.w	r3, r3, #1
3000728e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
30007292:	f8c1 3460 	str.w	r3, [r1, #1120]	; 0x460
30007296:	68f3      	ldr	r3, [r6, #12]
30007298:	689a      	ldr	r2, [r3, #8]
3000729a:	7a13      	ldrb	r3, [r2, #8]
3000729c:	6950      	ldr	r0, [r2, #20]
3000729e:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
300072a2:	e9d2 0203 	ldrd	r0, r2, [r2, #12]
300072a6:	0200      	lsls	r0, r0, #8
300072a8:	0412      	lsls	r2, r2, #16
300072aa:	b280      	uxth	r0, r0
300072ac:	f402 027f 	and.w	r2, r2, #16711680	; 0xff0000
300072b0:	4303      	orrs	r3, r0
300072b2:	4313      	orrs	r3, r2
300072b4:	f8c1 3464 	str.w	r3, [r1, #1124]	; 0x464
300072b8:	68f3      	ldr	r3, [r6, #12]
300072ba:	6898      	ldr	r0, [r3, #8]
300072bc:	e9d0 3207 	ldrd	r3, r2, [r0, #28]
300072c0:	7e00      	ldrb	r0, [r0, #24]
300072c2:	021b      	lsls	r3, r3, #8
300072c4:	0412      	lsls	r2, r2, #16
300072c6:	b29b      	uxth	r3, r3
300072c8:	f402 027f 	and.w	r2, r2, #16711680	; 0xff0000
300072cc:	4313      	orrs	r3, r2
300072ce:	4303      	orrs	r3, r0
300072d0:	f8c1 3468 	str.w	r3, [r1, #1128]	; 0x468
300072d4:	68f3      	ldr	r3, [r6, #12]
300072d6:	689a      	ldr	r2, [r3, #8]
300072d8:	e9d2 2309 	ldrd	r2, r3, [r2, #36]	; 0x24
300072dc:	041b      	lsls	r3, r3, #16
300072de:	f002 023f 	and.w	r2, r2, #63	; 0x3f
300072e2:	f403 2370 	and.w	r3, r3, #983040	; 0xf0000
300072e6:	4313      	orrs	r3, r2
300072e8:	f8c1 3480 	str.w	r3, [r1, #1152]	; 0x480
300072ec:	6833      	ldr	r3, [r6, #0]
300072ee:	781b      	ldrb	r3, [r3, #0]
300072f0:	2b03      	cmp	r3, #3
300072f2:	f000 811f 	beq.w	30007534 <rxi316_perf_tune+0x81c>
300072f6:	68f3      	ldr	r3, [r6, #12]
300072f8:	6899      	ldr	r1, [r3, #8]
300072fa:	6b0b      	ldr	r3, [r1, #48]	; 0x30
300072fc:	005b      	lsls	r3, r3, #1
300072fe:	f003 0302 	and.w	r3, r3, #2
30007302:	6b8a      	ldr	r2, [r1, #56]	; 0x38
30007304:	6ac8      	ldr	r0, [r1, #44]	; 0x2c
30007306:	0412      	lsls	r2, r2, #16
30007308:	6b49      	ldr	r1, [r1, #52]	; 0x34
3000730a:	f000 0001 	and.w	r0, r0, #1
3000730e:	f402 2270 	and.w	r2, r2, #983040	; 0xf0000
30007312:	0209      	lsls	r1, r1, #8
30007314:	431a      	orrs	r2, r3
30007316:	f401 6170 	and.w	r1, r1, #3840	; 0xf00
3000731a:	4b8a      	ldr	r3, [pc, #552]	; (30007544 <rxi316_perf_tune+0x82c>)
3000731c:	4302      	orrs	r2, r0
3000731e:	488a      	ldr	r0, [pc, #552]	; (30007548 <rxi316_perf_tune+0x830>)
30007320:	430a      	orrs	r2, r1
30007322:	4310      	orrs	r0, r2
30007324:	f8c3 0484 	str.w	r0, [r3, #1156]	; 0x484
30007328:	68f2      	ldr	r2, [r6, #12]
3000732a:	6892      	ldr	r2, [r2, #8]
3000732c:	6bd2      	ldr	r2, [r2, #60]	; 0x3c
3000732e:	f8c3 2488 	str.w	r2, [r3, #1160]	; 0x488
30007332:	68f2      	ldr	r2, [r6, #12]
30007334:	6892      	ldr	r2, [r2, #8]
30007336:	6c12      	ldr	r2, [r2, #64]	; 0x40
30007338:	f8c3 248c 	str.w	r2, [r3, #1164]	; 0x48c
3000733c:	68f2      	ldr	r2, [r6, #12]
3000733e:	6892      	ldr	r2, [r2, #8]
30007340:	6c52      	ldr	r2, [r2, #68]	; 0x44
30007342:	f8c3 2490 	str.w	r2, [r3, #1168]	; 0x490
30007346:	68f2      	ldr	r2, [r6, #12]
30007348:	6892      	ldr	r2, [r2, #8]
3000734a:	6c92      	ldr	r2, [r2, #72]	; 0x48
3000734c:	f8c3 2494 	str.w	r2, [r3, #1172]	; 0x494
30007350:	68f2      	ldr	r2, [r6, #12]
30007352:	6892      	ldr	r2, [r2, #8]
30007354:	6cd2      	ldr	r2, [r2, #76]	; 0x4c
30007356:	f8c3 2498 	str.w	r2, [r3, #1176]	; 0x498
3000735a:	68f2      	ldr	r2, [r6, #12]
3000735c:	6892      	ldr	r2, [r2, #8]
3000735e:	6d12      	ldr	r2, [r2, #80]	; 0x50
30007360:	f002 020f 	and.w	r2, r2, #15
30007364:	f8c3 24a0 	str.w	r2, [r3, #1184]	; 0x4a0
30007368:	f8d3 2470 	ldr.w	r2, [r3, #1136]	; 0x470
3000736c:	f022 023f 	bic.w	r2, r2, #63	; 0x3f
30007370:	f042 0204 	orr.w	r2, r2, #4
30007374:	f8c3 2470 	str.w	r2, [r3, #1136]	; 0x470
30007378:	f8d3 2474 	ldr.w	r2, [r3, #1140]	; 0x474
3000737c:	f422 4270 	bic.w	r2, r2, #61440	; 0xf000
30007380:	f442 4280 	orr.w	r2, r2, #16384	; 0x4000
30007384:	f8c3 2474 	str.w	r2, [r3, #1140]	; 0x474
30007388:	b043      	add	sp, #268	; 0x10c
3000738a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
3000738e:	2502      	movs	r5, #2
30007390:	e4d1      	b.n	30006d36 <rxi316_perf_tune+0x1e>
30007392:	3101      	adds	r1, #1
30007394:	9304      	str	r3, [sp, #16]
30007396:	e539      	b.n	30006e0c <rxi316_perf_tune+0xf4>
30007398:	f44f 4370 	mov.w	r3, #61440	; 0xf000
3000739c:	930c      	str	r3, [sp, #48]	; 0x30
3000739e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
300073a0:	2b20      	cmp	r3, #32
300073a2:	f47f adf9 	bne.w	30006f98 <rxi316_perf_tune+0x280>
300073a6:	f44f 2370 	mov.w	r3, #983040	; 0xf0000
300073aa:	930d      	str	r3, [sp, #52]	; 0x34
300073ac:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
300073ae:	2b20      	cmp	r3, #32
300073b0:	f47f adfc 	bne.w	30006fac <rxi316_perf_tune+0x294>
300073b4:	f44f 0370 	mov.w	r3, #15728640	; 0xf00000
300073b8:	930e      	str	r3, [sp, #56]	; 0x38
300073ba:	9b10      	ldr	r3, [sp, #64]	; 0x40
300073bc:	2b20      	cmp	r3, #32
300073be:	f47f adff 	bne.w	30006fc0 <rxi316_perf_tune+0x2a8>
300073c2:	f04f 6370 	mov.w	r3, #251658240	; 0xf000000
300073c6:	930f      	str	r3, [sp, #60]	; 0x3c
300073c8:	9b11      	ldr	r3, [sp, #68]	; 0x44
300073ca:	2b20      	cmp	r3, #32
300073cc:	f47f ae02 	bne.w	30006fd4 <rxi316_perf_tune+0x2bc>
300073d0:	f04f 4370 	mov.w	r3, #4026531840	; 0xf0000000
300073d4:	9310      	str	r3, [sp, #64]	; 0x40
300073d6:	9b12      	ldr	r3, [sp, #72]	; 0x48
300073d8:	2b20      	cmp	r3, #32
300073da:	f47f ae03 	bne.w	30006fe4 <rxi316_perf_tune+0x2cc>
300073de:	230f      	movs	r3, #15
300073e0:	9311      	str	r3, [sp, #68]	; 0x44
300073e2:	9b13      	ldr	r3, [sp, #76]	; 0x4c
300073e4:	2b20      	cmp	r3, #32
300073e6:	f47f ae06 	bne.w	30006ff6 <rxi316_perf_tune+0x2de>
300073ea:	23f0      	movs	r3, #240	; 0xf0
300073ec:	9312      	str	r3, [sp, #72]	; 0x48
300073ee:	9b14      	ldr	r3, [sp, #80]	; 0x50
300073f0:	2b20      	cmp	r3, #32
300073f2:	f47f ae09 	bne.w	30007008 <rxi316_perf_tune+0x2f0>
300073f6:	f44f 6370 	mov.w	r3, #3840	; 0xf00
300073fa:	9313      	str	r3, [sp, #76]	; 0x4c
300073fc:	9b15      	ldr	r3, [sp, #84]	; 0x54
300073fe:	2b20      	cmp	r3, #32
30007400:	f47f ae0c 	bne.w	3000701c <rxi316_perf_tune+0x304>
30007404:	f44f 4370 	mov.w	r3, #61440	; 0xf000
30007408:	9321      	str	r3, [sp, #132]	; 0x84
3000740a:	9b16      	ldr	r3, [sp, #88]	; 0x58
3000740c:	2b20      	cmp	r3, #32
3000740e:	f47f ae0e 	bne.w	3000702e <rxi316_perf_tune+0x316>
30007412:	f44f 2370 	mov.w	r3, #983040	; 0xf0000
30007416:	9320      	str	r3, [sp, #128]	; 0x80
30007418:	9b17      	ldr	r3, [sp, #92]	; 0x5c
3000741a:	2b20      	cmp	r3, #32
3000741c:	f47f ae11 	bne.w	30007042 <rxi316_perf_tune+0x32a>
30007420:	f44f 0370 	mov.w	r3, #15728640	; 0xf00000
30007424:	931f      	str	r3, [sp, #124]	; 0x7c
30007426:	9b18      	ldr	r3, [sp, #96]	; 0x60
30007428:	2b20      	cmp	r3, #32
3000742a:	f47f ae14 	bne.w	30007056 <rxi316_perf_tune+0x33e>
3000742e:	f04f 6370 	mov.w	r3, #251658240	; 0xf000000
30007432:	931e      	str	r3, [sp, #120]	; 0x78
30007434:	9b19      	ldr	r3, [sp, #100]	; 0x64
30007436:	2b20      	cmp	r3, #32
30007438:	f47f ae17 	bne.w	3000706a <rxi316_perf_tune+0x352>
3000743c:	f04f 4370 	mov.w	r3, #4026531840	; 0xf0000000
30007440:	9319      	str	r3, [sp, #100]	; 0x64
30007442:	9b1a      	ldr	r3, [sp, #104]	; 0x68
30007444:	2b20      	cmp	r3, #32
30007446:	f47f ae18 	bne.w	3000707a <rxi316_perf_tune+0x362>
3000744a:	230f      	movs	r3, #15
3000744c:	9318      	str	r3, [sp, #96]	; 0x60
3000744e:	9b07      	ldr	r3, [sp, #28]
30007450:	2b20      	cmp	r3, #32
30007452:	f47f ae1b 	bne.w	3000708c <rxi316_perf_tune+0x374>
30007456:	231f      	movs	r3, #31
30007458:	9317      	str	r3, [sp, #92]	; 0x5c
3000745a:	9b08      	ldr	r3, [sp, #32]
3000745c:	2b20      	cmp	r3, #32
3000745e:	f47f ae1e 	bne.w	3000709e <rxi316_perf_tune+0x386>
30007462:	f44f 7378 	mov.w	r3, #992	; 0x3e0
30007466:	9316      	str	r3, [sp, #88]	; 0x58
30007468:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
3000746a:	2b20      	cmp	r3, #32
3000746c:	f47f ae21 	bne.w	300070b2 <rxi316_perf_tune+0x39a>
30007470:	f44f 43f8 	mov.w	r3, #31744	; 0x7c00
30007474:	f1b9 0f20 	cmp.w	r9, #32
30007478:	9315      	str	r3, [sp, #84]	; 0x54
3000747a:	f47f ae26 	bne.w	300070ca <rxi316_perf_tune+0x3b2>
3000747e:	230f      	movs	r3, #15
30007480:	f1b8 0f20 	cmp.w	r8, #32
30007484:	9314      	str	r3, [sp, #80]	; 0x50
30007486:	f47f ae2b 	bne.w	300070e0 <rxi316_perf_tune+0x3c8>
3000748a:	2f20      	cmp	r7, #32
3000748c:	f04f 01f0 	mov.w	r1, #240	; 0xf0
30007490:	f47f ae30 	bne.w	300070f4 <rxi316_perf_tune+0x3dc>
30007494:	f44f 6370 	mov.w	r3, #3840	; 0xf00
30007498:	f1bb 0f20 	cmp.w	fp, #32
3000749c:	9308      	str	r3, [sp, #32]
3000749e:	f47f ae35 	bne.w	3000710c <rxi316_perf_tune+0x3f4>
300074a2:	f44f 4370 	mov.w	r3, #61440	; 0xf000
300074a6:	9307      	str	r3, [sp, #28]
300074a8:	9b01      	ldr	r3, [sp, #4]
300074aa:	2b20      	cmp	r3, #32
300074ac:	f47f ae38 	bne.w	30007120 <rxi316_perf_tune+0x408>
300074b0:	9b02      	ldr	r3, [sp, #8]
300074b2:	f44f 2c70 	mov.w	ip, #983040	; 0xf0000
300074b6:	2b20      	cmp	r3, #32
300074b8:	f47f ae3e 	bne.w	30007138 <rxi316_perf_tune+0x420>
300074bc:	9b03      	ldr	r3, [sp, #12]
300074be:	f44f 0e70 	mov.w	lr, #15728640	; 0xf00000
300074c2:	2b20      	cmp	r3, #32
300074c4:	f47f ae44 	bne.w	30007150 <rxi316_perf_tune+0x438>
300074c8:	9b04      	ldr	r3, [sp, #16]
300074ca:	f04f 6870 	mov.w	r8, #251658240	; 0xf000000
300074ce:	2b20      	cmp	r3, #32
300074d0:	f47f ae4a 	bne.w	30007168 <rxi316_perf_tune+0x450>
300074d4:	f04f 4370 	mov.w	r3, #4026531840	; 0xf0000000
300074d8:	9302      	str	r3, [sp, #8]
300074da:	9b05      	ldr	r3, [sp, #20]
300074dc:	2b20      	cmp	r3, #32
300074de:	f47f ae4b 	bne.w	30007178 <rxi316_perf_tune+0x460>
300074e2:	9b06      	ldr	r3, [sp, #24]
300074e4:	f04f 090f 	mov.w	r9, #15
300074e8:	2b20      	cmp	r3, #32
300074ea:	f47f ae4f 	bne.w	3000718c <rxi316_perf_tune+0x474>
300074ee:	9b1c      	ldr	r3, [sp, #112]	; 0x70
300074f0:	20f0      	movs	r0, #240	; 0xf0
300074f2:	2b20      	cmp	r3, #32
300074f4:	f47f ae53 	bne.w	3000719e <rxi316_perf_tune+0x486>
300074f8:	9b09      	ldr	r3, [sp, #36]	; 0x24
300074fa:	f04f 0b1f 	mov.w	fp, #31
300074fe:	2b20      	cmp	r3, #32
30007500:	f47f ae57 	bne.w	300071b2 <rxi316_perf_tune+0x49a>
30007504:	9b1d      	ldr	r3, [sp, #116]	; 0x74
30007506:	f04f 0a1f 	mov.w	sl, #31
3000750a:	2b20      	cmp	r3, #32
3000750c:	f47f ae5b 	bne.w	300071c6 <rxi316_perf_tune+0x4ae>
30007510:	2c20      	cmp	r4, #32
30007512:	f04f 071f 	mov.w	r7, #31
30007516:	f47f ae65 	bne.w	300071e4 <rxi316_perf_tune+0x4cc>
3000751a:	f44f 7378 	mov.w	r3, #992	; 0x3e0
3000751e:	9301      	str	r3, [sp, #4]
30007520:	e666      	b.n	300071f0 <rxi316_perf_tune+0x4d8>
30007522:	f44f 6370 	mov.w	r3, #3840	; 0xf00
30007526:	930b      	str	r3, [sp, #44]	; 0x2c
30007528:	e529      	b.n	30006f7e <rxi316_perf_tune+0x266>
3000752a:	22f0      	movs	r2, #240	; 0xf0
3000752c:	e51d      	b.n	30006f6a <rxi316_perf_tune+0x252>
3000752e:	230f      	movs	r3, #15
30007530:	930a      	str	r3, [sp, #40]	; 0x28
30007532:	e512      	b.n	30006f5a <rxi316_perf_tune+0x242>
30007534:	68f2      	ldr	r2, [r6, #12]
30007536:	2302      	movs	r3, #2
30007538:	6891      	ldr	r1, [r2, #8]
3000753a:	e6e2      	b.n	30007302 <rxi316_perf_tune+0x5ea>
3000753c:	3101      	adds	r1, #1
3000753e:	9305      	str	r3, [sp, #20]
30007540:	e464      	b.n	30006e0c <rxi316_perf_tune+0xf4>
30007542:	bf00      	nop
30007544:	41100000 	.word	0x41100000
30007548:	40000008 	.word	0x40000008
3000754c:	3101      	adds	r1, #1
3000754e:	9306      	str	r3, [sp, #24]
30007550:	e45c      	b.n	30006e0c <rxi316_perf_tune+0xf4>
30007552:	2202      	movs	r2, #2
30007554:	921e      	str	r2, [sp, #120]	; 0x78
30007556:	e4e5      	b.n	30006f24 <rxi316_perf_tune+0x20c>
30007558:	f10a 0a01 	add.w	sl, sl, #1
3000755c:	9308      	str	r3, [sp, #32]
3000755e:	e455      	b.n	30006e0c <rxi316_perf_tune+0xf4>
30007560:	f10a 0a01 	add.w	sl, sl, #1
30007564:	9307      	str	r3, [sp, #28]
30007566:	e451      	b.n	30006e0c <rxi316_perf_tune+0xf4>
30007568:	f10a 0a01 	add.w	sl, sl, #1
3000756c:	931b      	str	r3, [sp, #108]	; 0x6c
3000756e:	e44d      	b.n	30006e0c <rxi316_perf_tune+0xf4>
30007570:	f10a 0a01 	add.w	sl, sl, #1
30007574:	461c      	mov	r4, r3
30007576:	e449      	b.n	30006e0c <rxi316_perf_tune+0xf4>
30007578:	f10a 0a01 	add.w	sl, sl, #1
3000757c:	931d      	str	r3, [sp, #116]	; 0x74
3000757e:	e445      	b.n	30006e0c <rxi316_perf_tune+0xf4>
30007580:	f10a 0a01 	add.w	sl, sl, #1
30007584:	931c      	str	r3, [sp, #112]	; 0x70
30007586:	e441      	b.n	30006e0c <rxi316_perf_tune+0xf4>
30007588:	930a      	str	r3, [sp, #40]	; 0x28
3000758a:	e43f      	b.n	30006e0c <rxi316_perf_tune+0xf4>
3000758c:	930b      	str	r3, [sp, #44]	; 0x2c
3000758e:	e43d      	b.n	30006e0c <rxi316_perf_tune+0xf4>
30007590:	930c      	str	r3, [sp, #48]	; 0x30
30007592:	e43b      	b.n	30006e0c <rxi316_perf_tune+0xf4>
30007594:	930e      	str	r3, [sp, #56]	; 0x38
30007596:	e439      	b.n	30006e0c <rxi316_perf_tune+0xf4>
30007598:	930d      	str	r3, [sp, #52]	; 0x34
3000759a:	e437      	b.n	30006e0c <rxi316_perf_tune+0xf4>
3000759c:	931a      	str	r3, [sp, #104]	; 0x68
3000759e:	e435      	b.n	30006e0c <rxi316_perf_tune+0xf4>
300075a0:	9319      	str	r3, [sp, #100]	; 0x64
300075a2:	e433      	b.n	30006e0c <rxi316_perf_tune+0xf4>
300075a4:	9310      	str	r3, [sp, #64]	; 0x40
300075a6:	e431      	b.n	30006e0c <rxi316_perf_tune+0xf4>
300075a8:	930f      	str	r3, [sp, #60]	; 0x3c
300075aa:	e42f      	b.n	30006e0c <rxi316_perf_tune+0xf4>
300075ac:	9318      	str	r3, [sp, #96]	; 0x60
300075ae:	e42d      	b.n	30006e0c <rxi316_perf_tune+0xf4>
300075b0:	9317      	str	r3, [sp, #92]	; 0x5c
300075b2:	e42b      	b.n	30006e0c <rxi316_perf_tune+0xf4>
300075b4:	9316      	str	r3, [sp, #88]	; 0x58
300075b6:	e429      	b.n	30006e0c <rxi316_perf_tune+0xf4>
300075b8:	9315      	str	r3, [sp, #84]	; 0x54
300075ba:	e427      	b.n	30006e0c <rxi316_perf_tune+0xf4>
300075bc:	9314      	str	r3, [sp, #80]	; 0x50
300075be:	e425      	b.n	30006e0c <rxi316_perf_tune+0xf4>
300075c0:	9313      	str	r3, [sp, #76]	; 0x4c
300075c2:	e423      	b.n	30006e0c <rxi316_perf_tune+0xf4>
300075c4:	9312      	str	r3, [sp, #72]	; 0x48
300075c6:	e421      	b.n	30006e0c <rxi316_perf_tune+0xf4>
300075c8:	9311      	str	r3, [sp, #68]	; 0x44
300075ca:	e41f      	b.n	30006e0c <rxi316_perf_tune+0xf4>

300075cc <rxi316_dram_init>:
300075cc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
300075d0:	4604      	mov	r4, r0
300075d2:	b08f      	sub	sp, #60	; 0x3c
300075d4:	4b10      	ldr	r3, [pc, #64]	; (30007618 <rxi316_dram_init+0x4c>)
300075d6:	4798      	blx	r3
300075d8:	f894 b014 	ldrb.w	fp, [r4, #20]
300075dc:	2101      	movs	r1, #1
300075de:	900c      	str	r0, [sp, #48]	; 0x30
300075e0:	fa01 f30b 	lsl.w	r3, r1, fp
300075e4:	9303      	str	r3, [sp, #12]
300075e6:	6823      	ldr	r3, [r4, #0]
300075e8:	78da      	ldrb	r2, [r3, #3]
300075ea:	6923      	ldr	r3, [r4, #16]
300075ec:	fa03 f30b 	lsl.w	r3, r3, fp
300075f0:	b1a2      	cbz	r2, 3000761c <rxi316_dram_init+0x50>
300075f2:	428a      	cmp	r2, r1
300075f4:	f000 8477 	beq.w	30007ee6 <rxi316_dram_init+0x91a>
300075f8:	2a02      	cmp	r2, #2
300075fa:	bf0b      	itete	eq
300075fc:	2206      	moveq	r2, #6
300075fe:	220a      	movne	r2, #10
30007600:	2540      	moveq	r5, #64	; 0x40
30007602:	2580      	movne	r5, #128	; 0x80
30007604:	9207      	str	r2, [sp, #28]
30007606:	bf0c      	ite	eq
30007608:	2204      	moveq	r2, #4
3000760a:	2208      	movne	r2, #8
3000760c:	9208      	str	r2, [sp, #32]
3000760e:	bf0c      	ite	eq
30007610:	2208      	moveq	r2, #8
30007612:	2210      	movne	r2, #16
30007614:	9202      	str	r2, [sp, #8]
30007616:	e007      	b.n	30007628 <rxi316_dram_init+0x5c>
30007618:	30006621 	.word	0x30006621
3000761c:	2203      	movs	r2, #3
3000761e:	25c0      	movs	r5, #192	; 0xc0
30007620:	9108      	str	r1, [sp, #32]
30007622:	9207      	str	r2, [sp, #28]
30007624:	2202      	movs	r2, #2
30007626:	9202      	str	r2, [sp, #8]
30007628:	6860      	ldr	r0, [r4, #4]
3000762a:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
3000762e:	4ac0      	ldr	r2, [pc, #768]	; (30007930 <rxi316_dram_init+0x364>)
30007630:	6806      	ldr	r6, [r0, #0]
30007632:	960d      	str	r6, [sp, #52]	; 0x34
30007634:	6846      	ldr	r6, [r0, #4]
30007636:	6880      	ldr	r0, [r0, #8]
30007638:	9609      	str	r6, [sp, #36]	; 0x24
3000763a:	9004      	str	r0, [sp, #16]
3000763c:	f8c2 1230 	str.w	r1, [r2, #560]	; 0x230
30007640:	6820      	ldr	r0, [r4, #0]
30007642:	7981      	ldrb	r1, [r0, #6]
30007644:	6882      	ldr	r2, [r0, #8]
30007646:	b129      	cbz	r1, 30007654 <rxi316_dram_init+0x88>
30007648:	2901      	cmp	r1, #1
3000764a:	f000 8444 	beq.w	30007ed6 <rxi316_dram_init+0x90a>
3000764e:	2903      	cmp	r1, #3
30007650:	f000 8453 	beq.w	30007efa <rxi316_dram_init+0x92e>
30007654:	3a06      	subs	r2, #6
30007656:	7881      	ldrb	r1, [r0, #2]
30007658:	f002 020f 	and.w	r2, r2, #15
3000765c:	7940      	ldrb	r0, [r0, #5]
3000765e:	0109      	lsls	r1, r1, #4
30007660:	0280      	lsls	r0, r0, #10
30007662:	f001 0130 	and.w	r1, r1, #48	; 0x30
30007666:	f400 6040 	and.w	r0, r0, #3072	; 0xc00
3000766a:	4301      	orrs	r1, r0
3000766c:	430d      	orrs	r5, r1
3000766e:	432a      	orrs	r2, r5
30007670:	4daf      	ldr	r5, [pc, #700]	; (30007930 <rxi316_dram_init+0x364>)
30007672:	f8c5 2224 	str.w	r2, [r5, #548]	; 0x224
30007676:	68e2      	ldr	r2, [r4, #12]
30007678:	6812      	ldr	r2, [r2, #0]
3000767a:	f892 206c 	ldrb.w	r2, [r2, #108]	; 0x6c
3000767e:	f002 0207 	and.w	r2, r2, #7
30007682:	f8c5 2228 	str.w	r2, [r5, #552]	; 0x228
30007686:	68e2      	ldr	r2, [r4, #12]
30007688:	6811      	ldr	r1, [r2, #0]
3000768a:	6822      	ldr	r2, [r4, #0]
3000768c:	6848      	ldr	r0, [r1, #4]
3000768e:	7817      	ldrb	r7, [r2, #0]
30007690:	688a      	ldr	r2, [r1, #8]
30007692:	9005      	str	r0, [sp, #20]
30007694:	0300      	lsls	r0, r0, #12
30007696:	0412      	lsls	r2, r2, #16
30007698:	9701      	str	r7, [sp, #4]
3000769a:	f400 5080 	and.w	r0, r0, #4096	; 0x1000
3000769e:	f007 070f 	and.w	r7, r7, #15
300076a2:	f402 3280 	and.w	r2, r2, #65536	; 0x10000
300076a6:	4302      	orrs	r2, r0
300076a8:	68c8      	ldr	r0, [r1, #12]
300076aa:	0440      	lsls	r0, r0, #17
300076ac:	433a      	orrs	r2, r7
300076ae:	f400 3600 	and.w	r6, r0, #131072	; 0x20000
300076b2:	6908      	ldr	r0, [r1, #16]
300076b4:	0480      	lsls	r0, r0, #18
300076b6:	4332      	orrs	r2, r6
300076b8:	f400 2080 	and.w	r0, r0, #262144	; 0x40000
300076bc:	4310      	orrs	r0, r2
300076be:	694a      	ldr	r2, [r1, #20]
300076c0:	04d2      	lsls	r2, r2, #19
300076c2:	f402 2200 	and.w	r2, r2, #524288	; 0x80000
300076c6:	4310      	orrs	r0, r2
300076c8:	698a      	ldr	r2, [r1, #24]
300076ca:	0552      	lsls	r2, r2, #21
300076cc:	f402 1200 	and.w	r2, r2, #2097152	; 0x200000
300076d0:	4310      	orrs	r0, r2
300076d2:	69ca      	ldr	r2, [r1, #28]
300076d4:	0592      	lsls	r2, r2, #22
300076d6:	f402 0280 	and.w	r2, r2, #4194304	; 0x400000
300076da:	4310      	orrs	r0, r2
300076dc:	6a8a      	ldr	r2, [r1, #40]	; 0x28
300076de:	0612      	lsls	r2, r2, #24
300076e0:	f002 7240 	and.w	r2, r2, #50331648	; 0x3000000
300076e4:	4302      	orrs	r2, r0
300076e6:	e9d1 1008 	ldrd	r1, r0, [r1, #32]
300076ea:	06c0      	lsls	r0, r0, #27
300076ec:	0789      	lsls	r1, r1, #30
300076ee:	f000 6000 	and.w	r0, r0, #134217728	; 0x8000000
300076f2:	f001 4180 	and.w	r1, r1, #1073741824	; 0x40000000
300076f6:	4310      	orrs	r0, r2
300076f8:	9a03      	ldr	r2, [sp, #12]
300076fa:	0212      	lsls	r2, r2, #8
300076fc:	4308      	orrs	r0, r1
300076fe:	f402 62e0 	and.w	r2, r2, #1792	; 0x700
30007702:	4310      	orrs	r0, r2
30007704:	6068      	str	r0, [r5, #4]
30007706:	6822      	ldr	r2, [r4, #0]
30007708:	7992      	ldrb	r2, [r2, #6]
3000770a:	2a00      	cmp	r2, #0
3000770c:	f040 831d 	bne.w	30007d4a <rxi316_dram_init+0x77e>
30007710:	686a      	ldr	r2, [r5, #4]
30007712:	f042 0210 	orr.w	r2, r2, #16
30007716:	606a      	str	r2, [r5, #4]
30007718:	68e2      	ldr	r2, [r4, #12]
3000771a:	9803      	ldr	r0, [sp, #12]
3000771c:	6812      	ldr	r2, [r2, #0]
3000771e:	6861      	ldr	r1, [r4, #4]
30007720:	f100 3aff 	add.w	sl, r0, #4294967295	; 0xffffffff
30007724:	6ad0      	ldr	r0, [r2, #44]	; 0x2c
30007726:	f8d1 e010 	ldr.w	lr, [r1, #16]
3000772a:	9006      	str	r0, [sp, #24]
3000772c:	6b10      	ldr	r0, [r2, #48]	; 0x30
3000772e:	fa2e f80b 	lsr.w	r8, lr, fp
30007732:	6949      	ldr	r1, [r1, #20]
30007734:	ea1e 0f0a 	tst.w	lr, sl
30007738:	900a      	str	r0, [sp, #40]	; 0x28
3000773a:	fa21 fe0b 	lsr.w	lr, r1, fp
3000773e:	bf18      	it	ne
30007740:	f108 0801 	addne.w	r8, r8, #1
30007744:	ea11 0f0a 	tst.w	r1, sl
30007748:	990a      	ldr	r1, [sp, #40]	; 0x28
3000774a:	ea4f 3808 	mov.w	r8, r8, lsl #12
3000774e:	ea4f 0141 	mov.w	r1, r1, lsl #1
30007752:	bf18      	it	ne
30007754:	f10e 0e01 	addne.w	lr, lr, #1
30007758:	f408 38f8 	and.w	r8, r8, #126976	; 0x1f000
3000775c:	f001 0102 	and.w	r1, r1, #2
30007760:	ea4f 5e0e 	mov.w	lr, lr, lsl #20
30007764:	e9d2 9c0d 	ldrd	r9, ip, [r2, #52]	; 0x34
30007768:	e9d2 5011 	ldrd	r5, r0, [r2, #68]	; 0x44
3000776c:	ea4f 0989 	mov.w	r9, r9, lsl #2
30007770:	f00e 7ef8 	and.w	lr, lr, #32505856	; 0x1f00000
30007774:	900b      	str	r0, [sp, #44]	; 0x2c
30007776:	ea4f 0ccc 	mov.w	ip, ip, lsl #3
3000777a:	9806      	ldr	r0, [sp, #24]
3000777c:	f009 0904 	and.w	r9, r9, #4
30007780:	f00c 0c08 	and.w	ip, ip, #8
30007784:	01ad      	lsls	r5, r5, #6
30007786:	f000 0001 	and.w	r0, r0, #1
3000778a:	ea41 0109 	orr.w	r1, r1, r9
3000778e:	f005 0540 	and.w	r5, r5, #64	; 0x40
30007792:	4301      	orrs	r1, r0
30007794:	e9d2 760f 	ldrd	r7, r6, [r2, #60]	; 0x3c
30007798:	ea41 0c0c 	orr.w	ip, r1, ip
3000779c:	990b      	ldr	r1, [sp, #44]	; 0x2c
3000779e:	013f      	lsls	r7, r7, #4
300077a0:	0176      	lsls	r6, r6, #5
300077a2:	f007 0710 	and.w	r7, r7, #16
300077a6:	0208      	lsls	r0, r1, #8
300077a8:	f006 0620 	and.w	r6, r6, #32
300077ac:	6cd1      	ldr	r1, [r2, #76]	; 0x4c
300077ae:	ea4c 0707 	orr.w	r7, ip, r7
300077b2:	f400 6070 	and.w	r0, r0, #3840	; 0xf00
300077b6:	06c9      	lsls	r1, r1, #27
300077b8:	4337      	orrs	r7, r6
300077ba:	f001 6100 	and.w	r1, r1, #134217728	; 0x8000000
300077be:	432f      	orrs	r7, r5
300077c0:	e9d2 6214 	ldrd	r6, r2, [r2, #80]	; 0x50
300077c4:	4307      	orrs	r7, r0
300077c6:	0736      	lsls	r6, r6, #28
300077c8:	430f      	orrs	r7, r1
300077ca:	0752      	lsls	r2, r2, #29
300077cc:	f006 5680 	and.w	r6, r6, #268435456	; 0x10000000
300077d0:	f002 5200 	and.w	r2, r2, #536870912	; 0x20000000
300077d4:	433e      	orrs	r6, r7
300077d6:	4316      	orrs	r6, r2
300077d8:	4a55      	ldr	r2, [pc, #340]	; (30007930 <rxi316_dram_init+0x364>)
300077da:	ea46 0608 	orr.w	r6, r6, r8
300077de:	ea46 060e 	orr.w	r6, r6, lr
300077e2:	6096      	str	r6, [r2, #8]
300077e4:	6862      	ldr	r2, [r4, #4]
300077e6:	6990      	ldr	r0, [r2, #24]
300077e8:	9a02      	ldr	r2, [sp, #8]
300077ea:	2a10      	cmp	r2, #16
300077ec:	6822      	ldr	r2, [r4, #0]
300077ee:	7811      	ldrb	r1, [r2, #0]
300077f0:	f000 8327 	beq.w	30007e42 <rxi316_dram_init+0x876>
300077f4:	9e02      	ldr	r6, [sp, #8]
300077f6:	7915      	ldrb	r5, [r2, #4]
300077f8:	2e08      	cmp	r6, #8
300077fa:	f000 82b4 	beq.w	30007d66 <rxi316_dram_init+0x79a>
300077fe:	9d02      	ldr	r5, [sp, #8]
30007800:	2d04      	cmp	r5, #4
30007802:	f000 83ad 	beq.w	30007f60 <rxi316_dram_init+0x994>
30007806:	f1a1 0602 	sub.w	r6, r1, #2
3000780a:	9d02      	ldr	r5, [sp, #8]
3000780c:	fab6 f686 	clz	r6, r6
30007810:	0976      	lsrs	r6, r6, #5
30007812:	2909      	cmp	r1, #9
30007814:	bf14      	ite	ne
30007816:	4637      	movne	r7, r6
30007818:	f046 0701 	orreq.w	r7, r6, #1
3000781c:	2d02      	cmp	r5, #2
3000781e:	bf08      	it	eq
30007820:	4338      	orreq	r0, r7
30007822:	7915      	ldrb	r5, [r2, #4]
30007824:	2f00      	cmp	r7, #0
30007826:	f040 82ac 	bne.w	30007d82 <rxi316_dram_init+0x7b6>
3000782a:	2903      	cmp	r1, #3
3000782c:	f000 8368 	beq.w	30007f00 <rxi316_dram_init+0x934>
30007830:	2600      	movs	r6, #0
30007832:	f44f 5180 	mov.w	r1, #4096	; 0x1000
30007836:	4637      	mov	r7, r6
30007838:	433e      	orrs	r6, r7
3000783a:	4f3d      	ldr	r7, [pc, #244]	; (30007930 <rxi316_dram_init+0x364>)
3000783c:	430e      	orrs	r6, r1
3000783e:	4306      	orrs	r6, r0
30007840:	ea46 05c5 	orr.w	r5, r6, r5, lsl #3
30007844:	637d      	str	r5, [r7, #52]	; 0x34
30007846:	6862      	ldr	r2, [r4, #4]
30007848:	9904      	ldr	r1, [sp, #16]
3000784a:	69d2      	ldr	r2, [r2, #28]
3000784c:	ea42 02c1 	orr.w	r2, r2, r1, lsl #3
30007850:	63ba      	str	r2, [r7, #56]	; 0x38
30007852:	6822      	ldr	r2, [r4, #0]
30007854:	7810      	ldrb	r0, [r2, #0]
30007856:	6862      	ldr	r2, [r4, #4]
30007858:	2803      	cmp	r0, #3
3000785a:	6a11      	ldr	r1, [r2, #32]
3000785c:	f000 82e4 	beq.w	30007e28 <rxi316_dram_init+0x85c>
30007860:	2809      	cmp	r0, #9
30007862:	f000 8306 	beq.w	30007e72 <rxi316_dram_init+0x8a6>
30007866:	4832      	ldr	r0, [pc, #200]	; (30007930 <rxi316_dram_init+0x364>)
30007868:	63c1      	str	r1, [r0, #60]	; 0x3c
3000786a:	6862      	ldr	r2, [r4, #4]
3000786c:	6a52      	ldr	r2, [r2, #36]	; 0x24
3000786e:	6402      	str	r2, [r0, #64]	; 0x40
30007870:	6860      	ldr	r0, [r4, #4]
30007872:	68c5      	ldr	r5, [r0, #12]
30007874:	6802      	ldr	r2, [r0, #0]
30007876:	6841      	ldr	r1, [r0, #4]
30007878:	442a      	add	r2, r5
3000787a:	6880      	ldr	r0, [r0, #8]
3000787c:	4429      	add	r1, r5
3000787e:	ea1a 0f02 	tst.w	sl, r2
30007882:	fa22 f20b 	lsr.w	r2, r2, fp
30007886:	fa21 f60b 	lsr.w	r6, r1, fp
3000788a:	fa20 f50b 	lsr.w	r5, r0, fp
3000788e:	bf18      	it	ne
30007890:	3201      	addne	r2, #1
30007892:	ea1a 0f01 	tst.w	sl, r1
30007896:	6821      	ldr	r1, [r4, #0]
30007898:	bf18      	it	ne
3000789a:	3601      	addne	r6, #1
3000789c:	ea1a 0f00 	tst.w	sl, r0
300078a0:	7808      	ldrb	r0, [r1, #0]
300078a2:	bf18      	it	ne
300078a4:	3501      	addne	r5, #1
300078a6:	68a1      	ldr	r1, [r4, #8]
300078a8:	3802      	subs	r0, #2
300078aa:	6dcf      	ldr	r7, [r1, #92]	; 0x5c
300078ac:	2801      	cmp	r0, #1
300078ae:	f240 82b4 	bls.w	30007e1a <rxi316_dram_init+0x84e>
300078b2:	698f      	ldr	r7, [r1, #24]
300078b4:	fbb7 f0f3 	udiv	r0, r7, r3
300078b8:	fb03 7710 	mls	r7, r3, r0, r7
300078bc:	b107      	cbz	r7, 300078c0 <rxi316_dram_init+0x2f4>
300078be:	3001      	adds	r0, #1
300078c0:	6a4f      	ldr	r7, [r1, #36]	; 0x24
300078c2:	fbb7 f1f3 	udiv	r1, r7, r3
300078c6:	fb03 7711 	mls	r7, r3, r1, r7
300078ca:	b107      	cbz	r7, 300078ce <rxi316_dram_init+0x302>
300078cc:	3101      	adds	r1, #1
300078ce:	0176      	lsls	r6, r6, #5
300078d0:	f002 021f 	and.w	r2, r2, #31
300078d4:	02ad      	lsls	r5, r5, #10
300078d6:	f406 7678 	and.w	r6, r6, #992	; 0x3e0
300078da:	0500      	lsls	r0, r0, #20
300078dc:	f405 45f8 	and.w	r5, r5, #31744	; 0x7c00
300078e0:	4316      	orrs	r6, r2
300078e2:	f000 70f8 	and.w	r0, r0, #32505856	; 0x1f00000
300078e6:	4a12      	ldr	r2, [pc, #72]	; (30007930 <rxi316_dram_init+0x364>)
300078e8:	432e      	orrs	r6, r5
300078ea:	4306      	orrs	r6, r0
300078ec:	0648      	lsls	r0, r1, #25
300078ee:	f000 5078 	and.w	r0, r0, #1040187392	; 0x3e000000
300078f2:	4330      	orrs	r0, r6
300078f4:	6310      	str	r0, [r2, #48]	; 0x30
300078f6:	68a0      	ldr	r0, [r4, #8]
300078f8:	6802      	ldr	r2, [r0, #0]
300078fa:	fbb2 f1f3 	udiv	r1, r2, r3
300078fe:	fb03 2211 	mls	r2, r3, r1, r2
30007902:	2a00      	cmp	r2, #0
30007904:	f000 8287 	beq.w	30007e16 <rxi316_dram_init+0x84a>
30007908:	f101 0901 	add.w	r9, r1, #1
3000790c:	6842      	ldr	r2, [r0, #4]
3000790e:	fbb2 f0f3 	udiv	r0, r2, r3
30007912:	fb03 2210 	mls	r2, r3, r0, r2
30007916:	2a00      	cmp	r2, #0
30007918:	f000 827b 	beq.w	30007e12 <rxi316_dram_init+0x846>
3000791c:	38c7      	subs	r0, #199	; 0xc7
3000791e:	68e2      	ldr	r2, [r4, #12]
30007920:	6811      	ldr	r1, [r2, #0]
30007922:	4a04      	ldr	r2, [pc, #16]	; (30007934 <rxi316_dram_init+0x368>)
30007924:	ea02 2000 	and.w	r0, r2, r0, lsl #8
30007928:	e9d1 2117 	ldrd	r2, r1, [r1, #92]	; 0x5c
3000792c:	900a      	str	r0, [sp, #40]	; 0x28
3000792e:	e003      	b.n	30007938 <rxi316_dram_init+0x36c>
30007930:	41100000 	.word	0x41100000
30007934:	00ffff00 	.word	0x00ffff00
30007938:	0712      	lsls	r2, r2, #28
3000793a:	ea40 7141 	orr.w	r1, r0, r1, lsl #29
3000793e:	f002 5280 	and.w	r2, r2, #268435456	; 0x10000000
30007942:	430a      	orrs	r2, r1
30007944:	fa5f f189 	uxtb.w	r1, r9
30007948:	430a      	orrs	r2, r1
3000794a:	49c2      	ldr	r1, [pc, #776]	; (30007c54 <rxi316_dram_init+0x688>)
3000794c:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
30007950:	610a      	str	r2, [r1, #16]
30007952:	68a5      	ldr	r5, [r4, #8]
30007954:	692a      	ldr	r2, [r5, #16]
30007956:	fbb2 fcf3 	udiv	ip, r2, r3
3000795a:	fb03 221c 	mls	r2, r3, ip, r2
3000795e:	2a00      	cmp	r2, #0
30007960:	f000 8254 	beq.w	30007e0c <rxi316_dram_init+0x840>
30007964:	f10c 0201 	add.w	r2, ip, #1
30007968:	9206      	str	r2, [sp, #24]
3000796a:	69aa      	ldr	r2, [r5, #24]
3000796c:	fbb2 f0f3 	udiv	r0, r2, r3
30007970:	fb03 2210 	mls	r2, r3, r0, r2
30007974:	b102      	cbz	r2, 30007978 <rxi316_dram_init+0x3ac>
30007976:	3001      	adds	r0, #1
30007978:	68ea      	ldr	r2, [r5, #12]
3000797a:	fbb2 f1f3 	udiv	r1, r2, r3
3000797e:	fb03 2211 	mls	r2, r3, r1, r2
30007982:	9104      	str	r1, [sp, #16]
30007984:	b10a      	cbz	r2, 3000798a <rxi316_dram_init+0x3be>
30007986:	3101      	adds	r1, #1
30007988:	9104      	str	r1, [sp, #16]
3000798a:	6822      	ldr	r2, [r4, #0]
3000798c:	7816      	ldrb	r6, [r2, #0]
3000798e:	2e09      	cmp	r6, #9
30007990:	f000 826b 	beq.w	30007e6a <rxi316_dram_init+0x89e>
30007994:	6a6a      	ldr	r2, [r5, #36]	; 0x24
30007996:	2e02      	cmp	r6, #2
30007998:	fbb2 f1f3 	udiv	r1, r2, r3
3000799c:	fb03 2211 	mls	r2, r3, r1, r2
300079a0:	f000 828b 	beq.w	30007eba <rxi316_dram_init+0x8ee>
300079a4:	b102      	cbz	r2, 300079a8 <rxi316_dram_init+0x3dc>
300079a6:	3101      	adds	r1, #1
300079a8:	68e2      	ldr	r2, [r4, #12]
300079aa:	0349      	lsls	r1, r1, #13
300079ac:	6d2d      	ldr	r5, [r5, #80]	; 0x50
300079ae:	6812      	ldr	r2, [r2, #0]
300079b0:	f401 31f0 	and.w	r1, r1, #122880	; 0x1e000
300079b4:	fa25 f60b 	lsr.w	r6, r5, fp
300079b8:	ea15 0f0a 	tst.w	r5, sl
300079bc:	6e52      	ldr	r2, [r2, #100]	; 0x64
300079be:	bf18      	it	ne
300079c0:	3601      	addne	r6, #1
300079c2:	05d2      	lsls	r2, r2, #23
300079c4:	f402 0200 	and.w	r2, r2, #8388608	; 0x800000
300079c8:	ea42 6606 	orr.w	r6, r2, r6, lsl #24
300079cc:	9a06      	ldr	r2, [sp, #24]
300079ce:	0112      	lsls	r2, r2, #4
300079d0:	f402 72f8 	and.w	r2, r2, #496	; 0x1f0
300079d4:	4332      	orrs	r2, r6
300079d6:	0246      	lsls	r6, r0, #9
300079d8:	f406 56f0 	and.w	r6, r6, #7680	; 0x1e00
300079dc:	4316      	orrs	r6, r2
300079de:	9a04      	ldr	r2, [sp, #16]
300079e0:	f002 020f 	and.w	r2, r2, #15
300079e4:	4316      	orrs	r6, r2
300079e6:	4a9b      	ldr	r2, [pc, #620]	; (30007c54 <rxi316_dram_init+0x688>)
300079e8:	4331      	orrs	r1, r6
300079ea:	f441 11a0 	orr.w	r1, r1, #1310720	; 0x140000
300079ee:	6151      	str	r1, [r2, #20]
300079f0:	68a7      	ldr	r7, [r4, #8]
300079f2:	697a      	ldr	r2, [r7, #20]
300079f4:	fbb2 fef3 	udiv	lr, r2, r3
300079f8:	fb03 221e 	mls	r2, r3, lr, r2
300079fc:	b10a      	cbz	r2, 30007a02 <rxi316_dram_init+0x436>
300079fe:	f10e 0e01 	add.w	lr, lr, #1
30007a02:	6939      	ldr	r1, [r7, #16]
30007a04:	fbb1 f2f3 	udiv	r2, r1, r3
30007a08:	fb03 1112 	mls	r1, r3, r2, r1
30007a0c:	b101      	cbz	r1, 30007a10 <rxi316_dram_init+0x444>
30007a0e:	3201      	adds	r2, #1
30007a10:	68fd      	ldr	r5, [r7, #12]
30007a12:	fbb5 f1f3 	udiv	r1, r5, r3
30007a16:	fb03 5511 	mls	r5, r3, r1, r5
30007a1a:	b105      	cbz	r5, 30007a1e <rxi316_dram_init+0x452>
30007a1c:	3101      	adds	r1, #1
30007a1e:	6b3d      	ldr	r5, [r7, #48]	; 0x30
30007a20:	fbb5 f6f3 	udiv	r6, r5, r3
30007a24:	fb03 5516 	mls	r5, r3, r6, r5
30007a28:	b105      	cbz	r5, 30007a2c <rxi316_dram_init+0x460>
30007a2a:	3601      	adds	r6, #1
30007a2c:	4411      	add	r1, r2
30007a2e:	68bd      	ldr	r5, [r7, #8]
30007a30:	42b1      	cmp	r1, r6
30007a32:	460a      	mov	r2, r1
30007a34:	bf38      	it	cc
30007a36:	4632      	movcc	r2, r6
30007a38:	920b      	str	r2, [sp, #44]	; 0x2c
30007a3a:	fbb5 f2f3 	udiv	r2, r5, r3
30007a3e:	fb03 5512 	mls	r5, r3, r2, r5
30007a42:	b905      	cbnz	r5, 30007a46 <rxi316_dram_init+0x47a>
30007a44:	3a01      	subs	r2, #1
30007a46:	6afd      	ldr	r5, [r7, #44]	; 0x2c
30007a48:	ea15 0f0a 	tst.w	r5, sl
30007a4c:	fa25 fc0b 	lsr.w	ip, r5, fp
30007a50:	69fd      	ldr	r5, [r7, #28]
30007a52:	bf18      	it	ne
30007a54:	f10c 0c01 	addne.w	ip, ip, #1
30007a58:	fa25 f60b 	lsr.w	r6, r5, fp
30007a5c:	ea15 0f0a 	tst.w	r5, sl
30007a60:	9d01      	ldr	r5, [sp, #4]
30007a62:	bf18      	it	ne
30007a64:	3601      	addne	r6, #1
30007a66:	2d09      	cmp	r5, #9
30007a68:	f000 81fa 	beq.w	30007e60 <rxi316_dram_init+0x894>
30007a6c:	9d01      	ldr	r5, [sp, #4]
30007a6e:	2d02      	cmp	r5, #2
30007a70:	f000 822b 	beq.w	30007eca <rxi316_dram_init+0x8fe>
30007a74:	2d03      	cmp	r5, #3
30007a76:	f000 829b 	beq.w	30007fb0 <rxi316_dram_init+0x9e4>
30007a7a:	9d09      	ldr	r5, [sp, #36]	; 0x24
30007a7c:	9902      	ldr	r1, [sp, #8]
30007a7e:	440d      	add	r5, r1
30007a80:	46a8      	mov	r8, r5
30007a82:	fa28 f50b 	lsr.w	r5, r8, fp
30007a86:	ea18 0f0a 	tst.w	r8, sl
30007a8a:	f8d7 8040 	ldr.w	r8, [r7, #64]	; 0x40
30007a8e:	bf18      	it	ne
30007a90:	3501      	addne	r5, #1
30007a92:	fbb8 f7f3 	udiv	r7, r8, r3
30007a96:	fb03 8817 	mls	r8, r3, r7, r8
30007a9a:	f1b8 0f00 	cmp.w	r8, #0
30007a9e:	d000      	beq.n	30007aa2 <rxi316_dram_init+0x4d6>
30007aa0:	3701      	adds	r7, #1
30007aa2:	990b      	ldr	r1, [sp, #44]	; 0x2c
30007aa4:	f00e 0e0f 	and.w	lr, lr, #15
30007aa8:	ea4f 3c8c 	mov.w	ip, ip, lsl #14
30007aac:	0109      	lsls	r1, r1, #4
30007aae:	f40c 3ce0 	and.w	ip, ip, #114688	; 0x1c000
30007ab2:	063f      	lsls	r7, r7, #24
30007ab4:	f401 717c 	and.w	r1, r1, #1008	; 0x3f0
30007ab8:	f007 57f8 	and.w	r7, r7, #520093696	; 0x1f000000
30007abc:	ea41 0e0e 	orr.w	lr, r1, lr
30007ac0:	0291      	lsls	r1, r2, #10
30007ac2:	f401 5170 	and.w	r1, r1, #15360	; 0x3c00
30007ac6:	ea4e 0e01 	orr.w	lr, lr, r1
30007aca:	0471      	lsls	r1, r6, #17
30007acc:	ea4e 0c0c 	orr.w	ip, lr, ip
30007ad0:	f401 2160 	and.w	r1, r1, #917504	; 0xe0000
30007ad4:	ea4c 0c01 	orr.w	ip, ip, r1
30007ad8:	0529      	lsls	r1, r5, #20
30007ada:	f401 0170 	and.w	r1, r1, #15728640	; 0xf00000
30007ade:	ea4c 0c01 	orr.w	ip, ip, r1
30007ae2:	495c      	ldr	r1, [pc, #368]	; (30007c54 <rxi316_dram_init+0x688>)
30007ae4:	ea4c 0707 	orr.w	r7, ip, r7
30007ae8:	618f      	str	r7, [r1, #24]
30007aea:	6821      	ldr	r1, [r4, #0]
30007aec:	780f      	ldrb	r7, [r1, #0]
30007aee:	2f02      	cmp	r7, #2
30007af0:	f000 815e 	beq.w	30007db0 <rxi316_dram_init+0x7e4>
30007af4:	2f09      	cmp	r7, #9
30007af6:	f000 815b 	beq.w	30007db0 <rxi316_dram_init+0x7e4>
30007afa:	68e1      	ldr	r1, [r4, #12]
30007afc:	2f03      	cmp	r7, #3
30007afe:	6809      	ldr	r1, [r1, #0]
30007b00:	6e89      	ldr	r1, [r1, #104]	; 0x68
30007b02:	f001 010f 	and.w	r1, r1, #15
30007b06:	9109      	str	r1, [sp, #36]	; 0x24
30007b08:	68a1      	ldr	r1, [r4, #8]
30007b0a:	f000 81a7 	beq.w	30007e5c <rxi316_dram_init+0x890>
30007b0e:	6a0f      	ldr	r7, [r1, #32]
30007b10:	ea17 0f0a 	tst.w	r7, sl
30007b14:	fa27 f10b 	lsr.w	r1, r7, fp
30007b18:	d000      	beq.n	30007b1c <rxi316_dram_init+0x550>
30007b1a:	3101      	adds	r1, #1
30007b1c:	9f01      	ldr	r7, [sp, #4]
30007b1e:	2f02      	cmp	r7, #2
30007b20:	f000 815c 	beq.w	30007ddc <rxi316_dram_init+0x810>
30007b24:	9f01      	ldr	r7, [sp, #4]
30007b26:	2f03      	cmp	r7, #3
30007b28:	f000 81a5 	beq.w	30007e76 <rxi316_dram_init+0x8aa>
30007b2c:	9f01      	ldr	r7, [sp, #4]
30007b2e:	2f09      	cmp	r7, #9
30007b30:	f000 822e 	beq.w	30007f90 <rxi316_dram_init+0x9c4>
30007b34:	f04f 0e00 	mov.w	lr, #0
30007b38:	46f0      	mov	r8, lr
30007b3a:	f8cd e004 	str.w	lr, [sp, #4]
30007b3e:	9f06      	ldr	r7, [sp, #24]
30007b40:	0109      	lsls	r1, r1, #4
30007b42:	ea4f 1c57 	mov.w	ip, r7, lsr #5
30007b46:	9f09      	ldr	r7, [sp, #36]	; 0x24
30007b48:	b2c9      	uxtb	r1, r1
30007b4a:	4339      	orrs	r1, r7
30007b4c:	9f01      	ldr	r7, [sp, #4]
30007b4e:	4339      	orrs	r1, r7
30007b50:	4f40      	ldr	r7, [pc, #256]	; (30007c54 <rxi316_dram_init+0x688>)
30007b52:	ea41 0108 	orr.w	r1, r1, r8
30007b56:	ea41 010e 	orr.w	r1, r1, lr
30007b5a:	61f9      	str	r1, [r7, #28]
30007b5c:	68a7      	ldr	r7, [r4, #8]
30007b5e:	6c3c      	ldr	r4, [r7, #64]	; 0x40
30007b60:	fbb4 f1f3 	udiv	r1, r4, r3
30007b64:	fb03 4311 	mls	r3, r3, r1, r4
30007b68:	b103      	cbz	r3, 30007b6c <rxi316_dram_init+0x5a0>
30007b6a:	3101      	adds	r1, #1
30007b6c:	6b7c      	ldr	r4, [r7, #52]	; 0x34
30007b6e:	094b      	lsrs	r3, r1, #5
30007b70:	ea4f 2119 	mov.w	r1, r9, lsr #8
30007b74:	f8d7 903c 	ldr.w	r9, [r7, #60]	; 0x3c
30007b78:	ea14 0f0a 	tst.w	r4, sl
30007b7c:	fa24 f80b 	lsr.w	r8, r4, fp
30007b80:	6bbc      	ldr	r4, [r7, #56]	; 0x38
30007b82:	ea4f 1212 	mov.w	r2, r2, lsr #4
30007b86:	bf18      	it	ne
30007b88:	f108 0801 	addne.w	r8, r8, #1
30007b8c:	9301      	str	r3, [sp, #4]
30007b8e:	ea14 0f0a 	tst.w	r4, sl
30007b92:	fa24 fe0b 	lsr.w	lr, r4, fp
30007b96:	9b02      	ldr	r3, [sp, #8]
30007b98:	fa29 f40b 	lsr.w	r4, r9, fp
30007b9c:	bf18      	it	ne
30007b9e:	f10e 0e01 	addne.w	lr, lr, #1
30007ba2:	6aff      	ldr	r7, [r7, #44]	; 0x2c
30007ba4:	ea19 0f0a 	tst.w	r9, sl
30007ba8:	fa23 f90b 	lsr.w	r9, r3, fp
30007bac:	ea4f 06d6 	mov.w	r6, r6, lsr #3
30007bb0:	bf18      	it	ne
30007bb2:	3401      	addne	r4, #1
30007bb4:	45b9      	cmp	r9, r7
30007bb6:	ea4f 1515 	mov.w	r5, r5, lsr #4
30007bba:	ea4f 1010 	mov.w	r0, r0, lsr #4
30007bbe:	f240 80f5 	bls.w	30007dac <rxi316_dram_init+0x7e0>
30007bc2:	eba9 0707 	sub.w	r7, r9, r7
30007bc6:	fa27 f40b 	lsr.w	r4, r7, fp
30007bca:	ea17 070a 	ands.w	r7, r7, sl
30007bce:	d001      	beq.n	30007bd4 <rxi316_dram_init+0x608>
30007bd0:	3401      	adds	r4, #1
30007bd2:	2700      	movs	r7, #0
30007bd4:	9b05      	ldr	r3, [sp, #20]
30007bd6:	b10b      	cbz	r3, 30007bdc <rxi316_dram_init+0x610>
30007bd8:	073b      	lsls	r3, r7, #28
30007bda:	9305      	str	r3, [sp, #20]
30007bdc:	ea4f 0c8c 	mov.w	ip, ip, lsl #2
30007be0:	9b01      	ldr	r3, [sp, #4]
30007be2:	0289      	lsls	r1, r1, #10
30007be4:	02c0      	lsls	r0, r0, #11
30007be6:	f00c 0c04 	and.w	ip, ip, #4
30007bea:	f401 6180 	and.w	r1, r1, #1024	; 0x400
30007bee:	01d2      	lsls	r2, r2, #7
30007bf0:	f400 6000 	and.w	r0, r0, #2048	; 0x800
30007bf4:	0236      	lsls	r6, r6, #8
30007bf6:	ea4c 0c01 	orr.w	ip, ip, r1
30007bfa:	b2d2      	uxtb	r2, r2
30007bfc:	026d      	lsls	r5, r5, #9
30007bfe:	f406 7680 	and.w	r6, r6, #256	; 0x100
30007c02:	ea4c 0c00 	orr.w	ip, ip, r0
30007c06:	00df      	lsls	r7, r3, #3
30007c08:	f405 7500 	and.w	r5, r5, #512	; 0x200
30007c0c:	ea4f 3888 	mov.w	r8, r8, lsl #14
30007c10:	ea4c 0202 	orr.w	r2, ip, r2
30007c14:	f007 0708 	and.w	r7, r7, #8
30007c18:	ea4f 4e4e 	mov.w	lr, lr, lsl #17
30007c1c:	f408 38e0 	and.w	r8, r8, #114688	; 0x1c000
30007c20:	4332      	orrs	r2, r6
30007c22:	0524      	lsls	r4, r4, #20
30007c24:	f40e 2e60 	and.w	lr, lr, #917504	; 0xe0000
30007c28:	490a      	ldr	r1, [pc, #40]	; (30007c54 <rxi316_dram_init+0x688>)
30007c2a:	ea42 0305 	orr.w	r3, r2, r5
30007c2e:	f404 0470 	and.w	r4, r4, #15728640	; 0xf00000
30007c32:	9a05      	ldr	r2, [sp, #20]
30007c34:	433b      	orrs	r3, r7
30007c36:	ea43 0308 	orr.w	r3, r3, r8
30007c3a:	ea43 030e 	orr.w	r3, r3, lr
30007c3e:	4323      	orrs	r3, r4
30007c40:	4313      	orrs	r3, r2
30007c42:	9a04      	ldr	r2, [sp, #16]
30007c44:	f3c2 1200 	ubfx	r2, r2, #4, #1
30007c48:	620b      	str	r3, [r1, #32]
30007c4a:	f8c1 2090 	str.w	r2, [r1, #144]	; 0x90
30007c4e:	9b03      	ldr	r3, [sp, #12]
30007c50:	e002      	b.n	30007c58 <rxi316_dram_init+0x68c>
30007c52:	bf00      	nop
30007c54:	41100000 	.word	0x41100000
30007c58:	2b01      	cmp	r3, #1
30007c5a:	d002      	beq.n	30007c62 <rxi316_dram_init+0x696>
30007c5c:	9b08      	ldr	r3, [sp, #32]
30007c5e:	3303      	adds	r3, #3
30007c60:	9307      	str	r3, [sp, #28]
30007c62:	4bb4      	ldr	r3, [pc, #720]	; (30007f34 <rxi316_dram_init+0x968>)
30007c64:	f64f 71ff 	movw	r1, #65535	; 0xffff
30007c68:	9a07      	ldr	r2, [sp, #28]
30007c6a:	f8c3 2094 	str.w	r2, [r3, #148]	; 0x94
30007c6e:	f44f 62e0 	mov.w	r2, #1792	; 0x700
30007c72:	f8c3 10cc 	str.w	r1, [r3, #204]	; 0xcc
30007c76:	60da      	str	r2, [r3, #12]
30007c78:	f8d3 2100 	ldr.w	r2, [r3, #256]	; 0x100
30007c7c:	430a      	orrs	r2, r1
30007c7e:	49ae      	ldr	r1, [pc, #696]	; (30007f38 <rxi316_dram_init+0x96c>)
30007c80:	f8c3 2100 	str.w	r2, [r3, #256]	; 0x100
30007c84:	f8d1 2268 	ldr.w	r2, [r1, #616]	; 0x268
30007c88:	0096      	lsls	r6, r2, #2
30007c8a:	f140 8089 	bpl.w	30007da0 <rxi316_dram_init+0x7d4>
30007c8e:	f04f 4200 	mov.w	r2, #2147483648	; 0x80000000
30007c92:	4ca8      	ldr	r4, [pc, #672]	; (30007f34 <rxi316_dram_init+0x968>)
30007c94:	601a      	str	r2, [r3, #0]
30007c96:	691a      	ldr	r2, [r3, #16]
30007c98:	f042 5280 	orr.w	r2, r2, #268435456	; 0x10000000
30007c9c:	611a      	str	r2, [r3, #16]
30007c9e:	f8d1 32fc 	ldr.w	r3, [r1, #764]	; 0x2fc
30007ca2:	f043 0303 	orr.w	r3, r3, #3
30007ca6:	f8c1 32fc 	str.w	r3, [r1, #764]	; 0x2fc
30007caa:	f44f 0160 	mov.w	r1, #14680064	; 0xe00000
30007cae:	9b0c      	ldr	r3, [sp, #48]	; 0x30
30007cb0:	2b01      	cmp	r3, #1
30007cb2:	4ba2      	ldr	r3, [pc, #648]	; (30007f3c <rxi316_dram_init+0x970>)
30007cb4:	bf0c      	ite	eq
30007cb6:	4aa2      	ldreq	r2, [pc, #648]	; (30007f40 <rxi316_dram_init+0x974>)
30007cb8:	4aa2      	ldrne	r2, [pc, #648]	; (30007f44 <rxi316_dram_init+0x978>)
30007cba:	601a      	str	r2, [r3, #0]
30007cbc:	2203      	movs	r2, #3
30007cbe:	68e0      	ldr	r0, [r4, #12]
30007cc0:	4ba1      	ldr	r3, [pc, #644]	; (30007f48 <rxi316_dram_init+0x97c>)
30007cc2:	4003      	ands	r3, r0
30007cc4:	60e3      	str	r3, [r4, #12]
30007cc6:	2308      	movs	r3, #8
30007cc8:	62a1      	str	r1, [r4, #40]	; 0x28
30007cca:	62e2      	str	r2, [r4, #44]	; 0x2c
30007ccc:	6023      	str	r3, [r4, #0]
30007cce:	6823      	ldr	r3, [r4, #0]
30007cd0:	071d      	lsls	r5, r3, #28
30007cd2:	d5fc      	bpl.n	30007cce <rxi316_dram_init+0x702>
30007cd4:	4b9d      	ldr	r3, [pc, #628]	; (30007f4c <rxi316_dram_init+0x980>)
30007cd6:	2001      	movs	r0, #1
30007cd8:	4798      	blx	r3
30007cda:	68e2      	ldr	r2, [r4, #12]
30007cdc:	4b9a      	ldr	r3, [pc, #616]	; (30007f48 <rxi316_dram_init+0x97c>)
30007cde:	f44f 1100 	mov.w	r1, #2097152	; 0x200000
30007ce2:	4013      	ands	r3, r2
30007ce4:	2203      	movs	r2, #3
30007ce6:	60e3      	str	r3, [r4, #12]
30007ce8:	2308      	movs	r3, #8
30007cea:	62a1      	str	r1, [r4, #40]	; 0x28
30007cec:	62e2      	str	r2, [r4, #44]	; 0x2c
30007cee:	4a91      	ldr	r2, [pc, #580]	; (30007f34 <rxi316_dram_init+0x968>)
30007cf0:	6023      	str	r3, [r4, #0]
30007cf2:	6813      	ldr	r3, [r2, #0]
30007cf4:	071c      	lsls	r4, r3, #28
30007cf6:	d5fc      	bpl.n	30007cf2 <rxi316_dram_init+0x726>
30007cf8:	68d0      	ldr	r0, [r2, #12]
30007cfa:	f04f 7190 	mov.w	r1, #18874368	; 0x1200000
30007cfe:	4b92      	ldr	r3, [pc, #584]	; (30007f48 <rxi316_dram_init+0x97c>)
30007d00:	4003      	ands	r3, r0
30007d02:	2008      	movs	r0, #8
30007d04:	60d3      	str	r3, [r2, #12]
30007d06:	6291      	str	r1, [r2, #40]	; 0x28
30007d08:	6ad3      	ldr	r3, [r2, #44]	; 0x2c
30007d0a:	498a      	ldr	r1, [pc, #552]	; (30007f34 <rxi316_dram_init+0x968>)
30007d0c:	f023 0302 	bic.w	r3, r3, #2
30007d10:	62d3      	str	r3, [r2, #44]	; 0x2c
30007d12:	6010      	str	r0, [r2, #0]
30007d14:	680b      	ldr	r3, [r1, #0]
30007d16:	0718      	lsls	r0, r3, #28
30007d18:	d5fc      	bpl.n	30007d14 <rxi316_dram_init+0x748>
30007d1a:	4a86      	ldr	r2, [pc, #536]	; (30007f34 <rxi316_dram_init+0x968>)
30007d1c:	f44f 63c0 	mov.w	r3, #1536	; 0x600
30007d20:	f04f 4100 	mov.w	r1, #2147483648	; 0x80000000
30007d24:	60d3      	str	r3, [r2, #12]
30007d26:	980a      	ldr	r0, [sp, #40]	; 0x28
30007d28:	6913      	ldr	r3, [r2, #16]
30007d2a:	4318      	orrs	r0, r3
30007d2c:	6110      	str	r0, [r2, #16]
30007d2e:	6913      	ldr	r3, [r2, #16]
30007d30:	f023 5380 	bic.w	r3, r3, #268435456	; 0x10000000
30007d34:	6113      	str	r3, [r2, #16]
30007d36:	6011      	str	r1, [r2, #0]
30007d38:	68d3      	ldr	r3, [r2, #12]
30007d3a:	f3c3 030a 	ubfx	r3, r3, #0, #11
30007d3e:	f5b3 6fc0 	cmp.w	r3, #1536	; 0x600
30007d42:	d1f9      	bne.n	30007d38 <rxi316_dram_init+0x76c>
30007d44:	b00f      	add	sp, #60	; 0x3c
30007d46:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30007d4a:	2a01      	cmp	r2, #1
30007d4c:	f000 80c6 	beq.w	30007edc <rxi316_dram_init+0x910>
30007d50:	2a02      	cmp	r2, #2
30007d52:	f000 8138 	beq.w	30007fc6 <rxi316_dram_init+0x9fa>
30007d56:	2a03      	cmp	r2, #3
30007d58:	f47f acde 	bne.w	30007718 <rxi316_dram_init+0x14c>
30007d5c:	686a      	ldr	r2, [r5, #4]
30007d5e:	f042 0280 	orr.w	r2, r2, #128	; 0x80
30007d62:	606a      	str	r2, [r5, #4]
30007d64:	e4d8      	b.n	30007718 <rxi316_dram_init+0x14c>
30007d66:	f1a1 0602 	sub.w	r6, r1, #2
30007d6a:	2909      	cmp	r1, #9
30007d6c:	fab6 f686 	clz	r6, r6
30007d70:	ea4f 1656 	mov.w	r6, r6, lsr #5
30007d74:	d002      	beq.n	30007d7c <rxi316_dram_init+0x7b0>
30007d76:	2e00      	cmp	r6, #0
30007d78:	f43f ad57 	beq.w	3000782a <rxi316_dram_init+0x25e>
30007d7c:	2503      	movs	r5, #3
30007d7e:	4328      	orrs	r0, r5
30007d80:	7915      	ldrb	r5, [r2, #4]
30007d82:	68a2      	ldr	r2, [r4, #8]
30007d84:	9f09      	ldr	r7, [sp, #36]	; 0x24
30007d86:	6dd2      	ldr	r2, [r2, #92]	; 0x5c
30007d88:	013f      	lsls	r7, r7, #4
30007d8a:	2e00      	cmp	r6, #0
30007d8c:	f000 80c0 	beq.w	30007f10 <rxi316_dram_init+0x944>
30007d90:	1e91      	subs	r1, r2, #2
30007d92:	2906      	cmp	r1, #6
30007d94:	f200 809c 	bhi.w	30007ed0 <rxi316_dram_init+0x904>
30007d98:	1e56      	subs	r6, r2, #1
30007d9a:	2100      	movs	r1, #0
30007d9c:	0276      	lsls	r6, r6, #9
30007d9e:	e54b      	b.n	30007838 <rxi316_dram_init+0x26c>
30007da0:	2201      	movs	r2, #1
30007da2:	601a      	str	r2, [r3, #0]
30007da4:	681a      	ldr	r2, [r3, #0]
30007da6:	07d2      	lsls	r2, r2, #31
30007da8:	d5fc      	bpl.n	30007da4 <rxi316_dram_init+0x7d8>
30007daa:	e7b6      	b.n	30007d1a <rxi316_dram_init+0x74e>
30007dac:	2701      	movs	r7, #1
30007dae:	e711      	b.n	30007bd4 <rxi316_dram_init+0x608>
30007db0:	68a1      	ldr	r1, [r4, #8]
30007db2:	2f03      	cmp	r7, #3
30007db4:	f8d1 c020 	ldr.w	ip, [r1, #32]
30007db8:	d04e      	beq.n	30007e58 <rxi316_dram_init+0x88c>
30007dba:	2f02      	cmp	r7, #2
30007dbc:	f040 810e 	bne.w	30007fdc <rxi316_dram_init+0xa10>
30007dc0:	fbbc f1f3 	udiv	r1, ip, r3
30007dc4:	fb03 cc11 	mls	ip, r3, r1, ip
30007dc8:	f1bc 0f00 	cmp.w	ip, #0
30007dcc:	f000 8093 	beq.w	30007ef6 <rxi316_dram_init+0x92a>
30007dd0:	9709      	str	r7, [sp, #36]	; 0x24
30007dd2:	3101      	adds	r1, #1
30007dd4:	9f01      	ldr	r7, [sp, #4]
30007dd6:	2f02      	cmp	r7, #2
30007dd8:	f47f aea4 	bne.w	30007b24 <rxi316_dram_init+0x558>
30007ddc:	4f5c      	ldr	r7, [pc, #368]	; (30007f50 <rxi316_dram_init+0x984>)
30007dde:	f04f 0e00 	mov.w	lr, #0
30007de2:	f8df 8170 	ldr.w	r8, [pc, #368]	; 30007f54 <rxi316_dram_init+0x988>
30007de6:	fbb7 f7f3 	udiv	r7, r7, r3
30007dea:	fbb8 f8f3 	udiv	r8, r8, r3
30007dee:	09ff      	lsrs	r7, r7, #7
30007df0:	ea4f 2898 	mov.w	r8, r8, lsr #10
30007df4:	3701      	adds	r7, #1
30007df6:	f108 0c01 	add.w	ip, r8, #1
30007dfa:	f8df 815c 	ldr.w	r8, [pc, #348]	; 30007f58 <rxi316_dram_init+0x98c>
30007dfe:	023f      	lsls	r7, r7, #8
30007e00:	ea08 380c 	and.w	r8, r8, ip, lsl #12
30007e04:	f407 6770 	and.w	r7, r7, #3840	; 0xf00
30007e08:	9701      	str	r7, [sp, #4]
30007e0a:	e698      	b.n	30007b3e <rxi316_dram_init+0x572>
30007e0c:	f8cd c018 	str.w	ip, [sp, #24]
30007e10:	e5ab      	b.n	3000796a <rxi316_dram_init+0x39e>
30007e12:	38c8      	subs	r0, #200	; 0xc8
30007e14:	e583      	b.n	3000791e <rxi316_dram_init+0x352>
30007e16:	4689      	mov	r9, r1
30007e18:	e578      	b.n	3000790c <rxi316_dram_init+0x340>
30007e1a:	ea1a 0f07 	tst.w	sl, r7
30007e1e:	fa27 f00b 	lsr.w	r0, r7, fp
30007e22:	f43f ad4d 	beq.w	300078c0 <rxi316_dram_init+0x2f4>
30007e26:	e54a      	b.n	300078be <rxi316_dram_init+0x2f2>
30007e28:	9a0d      	ldr	r2, [sp, #52]	; 0x34
30007e2a:	1f50      	subs	r0, r2, #5
30007e2c:	00c0      	lsls	r0, r0, #3
30007e2e:	68e2      	ldr	r2, [r4, #12]
30007e30:	6812      	ldr	r2, [r2, #0]
30007e32:	6b92      	ldr	r2, [r2, #56]	; 0x38
30007e34:	fab2 f282 	clz	r2, r2
30007e38:	0952      	lsrs	r2, r2, #5
30007e3a:	ea41 2142 	orr.w	r1, r1, r2, lsl #9
30007e3e:	4301      	orrs	r1, r0
30007e40:	e511      	b.n	30007866 <rxi316_dram_init+0x29a>
30007e42:	f1a1 0602 	sub.w	r6, r1, #2
30007e46:	2909      	cmp	r1, #9
30007e48:	fab6 f686 	clz	r6, r6
30007e4c:	ea4f 1656 	mov.w	r6, r6, lsr #5
30007e50:	f000 80b7 	beq.w	30007fc2 <rxi316_dram_init+0x9f6>
30007e54:	4637      	mov	r7, r6
30007e56:	e4e4      	b.n	30007822 <rxi316_dram_init+0x256>
30007e58:	2702      	movs	r7, #2
30007e5a:	9709      	str	r7, [sp, #36]	; 0x24
30007e5c:	6a09      	ldr	r1, [r1, #32]
30007e5e:	e65d      	b.n	30007b1c <rxi316_dram_init+0x550>
30007e60:	e9dd 1508 	ldrd	r1, r5, [sp, #32]
30007e64:	440d      	add	r5, r1
30007e66:	46a8      	mov	r8, r5
30007e68:	e60b      	b.n	30007a82 <rxi316_dram_init+0x4b6>
30007e6a:	9a08      	ldr	r2, [sp, #32]
30007e6c:	fa22 f10b 	lsr.w	r1, r2, fp
30007e70:	e59a      	b.n	300079a8 <rxi316_dram_init+0x3dc>
30007e72:	2000      	movs	r0, #0
30007e74:	e7db      	b.n	30007e2e <rxi316_dram_init+0x862>
30007e76:	f242 7710 	movw	r7, #10000	; 0x2710
30007e7a:	f8df 80e0 	ldr.w	r8, [pc, #224]	; 30007f5c <rxi316_dram_init+0x990>
30007e7e:	f8df e0d4 	ldr.w	lr, [pc, #212]	; 30007f54 <rxi316_dram_init+0x988>
30007e82:	fbb7 f7f3 	udiv	r7, r7, r3
30007e86:	444f      	add	r7, r9
30007e88:	fbb8 f8f3 	udiv	r8, r8, r3
30007e8c:	fbbe fef3 	udiv	lr, lr, r3
30007e90:	09ff      	lsrs	r7, r7, #7
30007e92:	ea4f 2898 	mov.w	r8, r8, lsr #10
30007e96:	3701      	adds	r7, #1
30007e98:	ea4f 2e9e 	mov.w	lr, lr, lsr #10
30007e9c:	f108 0c01 	add.w	ip, r8, #1
30007ea0:	f8df 80b4 	ldr.w	r8, [pc, #180]	; 30007f58 <rxi316_dram_init+0x98c>
30007ea4:	023f      	lsls	r7, r7, #8
30007ea6:	f10e 0e01 	add.w	lr, lr, #1
30007eaa:	ea08 380c 	and.w	r8, r8, ip, lsl #12
30007eae:	f407 6770 	and.w	r7, r7, #3840	; 0xf00
30007eb2:	ea4f 5e8e 	mov.w	lr, lr, lsl #22
30007eb6:	9701      	str	r7, [sp, #4]
30007eb8:	e641      	b.n	30007b3e <rxi316_dram_init+0x572>
30007eba:	9e08      	ldr	r6, [sp, #32]
30007ebc:	3e02      	subs	r6, #2
30007ebe:	fa26 f60b 	lsr.w	r6, r6, fp
30007ec2:	b102      	cbz	r2, 30007ec6 <rxi316_dram_init+0x8fa>
30007ec4:	3101      	adds	r1, #1
30007ec6:	4431      	add	r1, r6
30007ec8:	e56e      	b.n	300079a8 <rxi316_dram_init+0x3dc>
30007eca:	f8dd 801c 	ldr.w	r8, [sp, #28]
30007ece:	e5d8      	b.n	30007a82 <rxi316_dram_init+0x4b6>
30007ed0:	2100      	movs	r1, #0
30007ed2:	460e      	mov	r6, r1
30007ed4:	e4b0      	b.n	30007838 <rxi316_dram_init+0x26c>
30007ed6:	3a07      	subs	r2, #7
30007ed8:	f7ff bbbd 	b.w	30007656 <rxi316_dram_init+0x8a>
30007edc:	686a      	ldr	r2, [r5, #4]
30007ede:	f042 0220 	orr.w	r2, r2, #32
30007ee2:	606a      	str	r2, [r5, #4]
30007ee4:	e418      	b.n	30007718 <rxi316_dram_init+0x14c>
30007ee6:	2204      	movs	r2, #4
30007ee8:	2102      	movs	r1, #2
30007eea:	2500      	movs	r5, #0
30007eec:	9202      	str	r2, [sp, #8]
30007eee:	e9cd 2107 	strd	r2, r1, [sp, #28]
30007ef2:	f7ff bb99 	b.w	30007628 <rxi316_dram_init+0x5c>
30007ef6:	9709      	str	r7, [sp, #36]	; 0x24
30007ef8:	e610      	b.n	30007b1c <rxi316_dram_init+0x550>
30007efa:	3a08      	subs	r2, #8
30007efc:	f7ff bbab 	b.w	30007656 <rxi316_dram_init+0x8a>
30007f00:	9a09      	ldr	r2, [sp, #36]	; 0x24
30007f02:	2a04      	cmp	r2, #4
30007f04:	d909      	bls.n	30007f1a <rxi316_dram_init+0x94e>
30007f06:	2a0b      	cmp	r2, #11
30007f08:	d874      	bhi.n	30007ff4 <rxi316_dram_init+0xa28>
30007f0a:	1f17      	subs	r7, r2, #4
30007f0c:	013f      	lsls	r7, r7, #4
30007f0e:	e005      	b.n	30007f1c <rxi316_dram_init+0x950>
30007f10:	2903      	cmp	r1, #3
30007f12:	d005      	beq.n	30007f20 <rxi316_dram_init+0x954>
30007f14:	f44f 5180 	mov.w	r1, #4096	; 0x1000
30007f18:	e48e      	b.n	30007838 <rxi316_dram_init+0x26c>
30007f1a:	2710      	movs	r7, #16
30007f1c:	68a2      	ldr	r2, [r4, #8]
30007f1e:	6dd2      	ldr	r2, [r2, #92]	; 0x5c
30007f20:	2a04      	cmp	r2, #4
30007f22:	d956      	bls.n	30007fd2 <rxi316_dram_init+0xa06>
30007f24:	1f51      	subs	r1, r2, #5
30007f26:	2903      	cmp	r1, #3
30007f28:	d85b      	bhi.n	30007fe2 <rxi316_dram_init+0xa16>
30007f2a:	1f16      	subs	r6, r2, #4
30007f2c:	f44f 5180 	mov.w	r1, #4096	; 0x1000
30007f30:	0276      	lsls	r6, r6, #9
30007f32:	e481      	b.n	30007838 <rxi316_dram_init+0x26c>
30007f34:	41100000 	.word	0x41100000
30007f38:	42008000 	.word	0x42008000
30007f3c:	41011000 	.word	0x41011000
30007f40:	44000103 	.word	0x44000103
30007f44:	44000021 	.word	0x44000021
30007f48:	fff8fffc 	.word	0xfff8fffc
30007f4c:	00009b2d 	.word	0x00009b2d
30007f50:	00061a80 	.word	0x00061a80
30007f54:	0bebc200 	.word	0x0bebc200
30007f58:	003ff000 	.word	0x003ff000
30007f5c:	1dcd6500 	.word	0x1dcd6500
30007f60:	f1a1 0c09 	sub.w	ip, r1, #9
30007f64:	f1a1 0602 	sub.w	r6, r1, #2
30007f68:	1e8d      	subs	r5, r1, #2
30007f6a:	fabc fc8c 	clz	ip, ip
30007f6e:	fab6 f686 	clz	r6, r6
30007f72:	2d01      	cmp	r5, #1
30007f74:	ea4f 1c5c 	mov.w	ip, ip, lsr #5
30007f78:	ea4f 1656 	mov.w	r6, r6, lsr #5
30007f7c:	ea4c 0706 	orr.w	r7, ip, r6
30007f80:	d903      	bls.n	30007f8a <rxi316_dram_init+0x9be>
30007f82:	f1bc 0f00 	cmp.w	ip, #0
30007f86:	f43f ac4c 	beq.w	30007822 <rxi316_dram_init+0x256>
30007f8a:	f040 0002 	orr.w	r0, r0, #2
30007f8e:	e448      	b.n	30007822 <rxi316_dram_init+0x256>
30007f90:	4f1e      	ldr	r7, [pc, #120]	; (3000800c <rxi316_dram_init+0xa40>)
30007f92:	f04f 0e00 	mov.w	lr, #0
30007f96:	fbb7 f8f3 	udiv	r8, r7, r3
30007f9a:	ea4f 2898 	mov.w	r8, r8, lsr #10
30007f9e:	f8cd e004 	str.w	lr, [sp, #4]
30007fa2:	f108 0701 	add.w	r7, r8, #1
30007fa6:	f8df 8068 	ldr.w	r8, [pc, #104]	; 30008010 <rxi316_dram_init+0xa44>
30007faa:	ea08 3807 	and.w	r8, r8, r7, lsl #12
30007fae:	e5c6      	b.n	30007b3e <rxi316_dram_init+0x572>
30007fb0:	9909      	ldr	r1, [sp, #36]	; 0x24
30007fb2:	f101 0802 	add.w	r8, r1, #2
30007fb6:	990d      	ldr	r1, [sp, #52]	; 0x34
30007fb8:	eba8 0801 	sub.w	r8, r8, r1
30007fbc:	9908      	ldr	r1, [sp, #32]
30007fbe:	4488      	add	r8, r1
30007fc0:	e55f      	b.n	30007a82 <rxi316_dram_init+0x4b6>
30007fc2:	2504      	movs	r5, #4
30007fc4:	e6db      	b.n	30007d7e <rxi316_dram_init+0x7b2>
30007fc6:	686a      	ldr	r2, [r5, #4]
30007fc8:	f042 0240 	orr.w	r2, r2, #64	; 0x40
30007fcc:	606a      	str	r2, [r5, #4]
30007fce:	f7ff bba3 	b.w	30007718 <rxi316_dram_init+0x14c>
30007fd2:	f44f 5180 	mov.w	r1, #4096	; 0x1000
30007fd6:	f44f 7600 	mov.w	r6, #512	; 0x200
30007fda:	e42d      	b.n	30007838 <rxi316_dram_init+0x26c>
30007fdc:	2702      	movs	r7, #2
30007fde:	9709      	str	r7, [sp, #36]	; 0x24
30007fe0:	e595      	b.n	30007b0e <rxi316_dram_init+0x542>
30007fe2:	f1a2 0109 	sub.w	r1, r2, #9
30007fe6:	2905      	cmp	r1, #5
30007fe8:	d80b      	bhi.n	30008002 <rxi316_dram_init+0xa36>
30007fea:	0856      	lsrs	r6, r2, #1
30007fec:	f44f 5180 	mov.w	r1, #4096	; 0x1000
30007ff0:	0276      	lsls	r6, r6, #9
30007ff2:	e421      	b.n	30007838 <rxi316_dram_init+0x26c>
30007ff4:	9a09      	ldr	r2, [sp, #36]	; 0x24
30007ff6:	f040 0004 	orr.w	r0, r0, #4
30007ffa:	f1a2 070c 	sub.w	r7, r2, #12
30007ffe:	013f      	lsls	r7, r7, #4
30008000:	e78c      	b.n	30007f1c <rxi316_dram_init+0x950>
30008002:	f44f 5180 	mov.w	r1, #4096	; 0x1000
30008006:	2600      	movs	r6, #0
30008008:	e416      	b.n	30007838 <rxi316_dram_init+0x26c>
3000800a:	bf00      	nop
3000800c:	0bebc200 	.word	0x0bebc200
30008010:	003ff000 	.word	0x003ff000

30008014 <rxi316_ftend_init>:
30008014:	2300      	movs	r3, #0
30008016:	b510      	push	{r4, lr}
30008018:	4c0c      	ldr	r4, [pc, #48]	; (3000804c <rxi316_ftend_init+0x38>)
3000801a:	f8c4 3818 	str.w	r3, [r4, #2072]	; 0x818
3000801e:	f8c4 3858 	str.w	r3, [r4, #2136]	; 0x858
30008022:	f8c4 3898 	str.w	r3, [r4, #2200]	; 0x898
30008026:	f7fe fe4d 	bl	30006cc4 <ddr_init_index>
3000802a:	4a09      	ldr	r2, [pc, #36]	; (30008050 <rxi316_ftend_init+0x3c>)
3000802c:	f8d4 3104 	ldr.w	r3, [r4, #260]	; 0x104
30008030:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
30008034:	f023 02ff 	bic.w	r2, r3, #255	; 0xff
30008038:	68cb      	ldr	r3, [r1, #12]
3000803a:	689b      	ldr	r3, [r3, #8]
3000803c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
3000803e:	3301      	adds	r3, #1
30008040:	b2db      	uxtb	r3, r3
30008042:	4313      	orrs	r3, r2
30008044:	f8c4 3104 	str.w	r3, [r4, #260]	; 0x104
30008048:	bd10      	pop	{r4, pc}
3000804a:	bf00      	nop
3000804c:	41101000 	.word	0x41101000
30008050:	3000de38 	.word	0x3000de38

30008054 <rxi316_DynSre_init>:
30008054:	b538      	push	{r3, r4, r5, lr}
30008056:	4b20      	ldr	r3, [pc, #128]	; (300080d8 <rxi316_DynSre_init+0x84>)
30008058:	4604      	mov	r4, r0
3000805a:	460d      	mov	r5, r1
3000805c:	4798      	blx	r3
3000805e:	2802      	cmp	r0, #2
30008060:	d91c      	bls.n	3000809c <rxi316_DynSre_init+0x48>
30008062:	4b1e      	ldr	r3, [pc, #120]	; (300080dc <rxi316_DynSre_init+0x88>)
30008064:	691b      	ldr	r3, [r3, #16]
30008066:	f3c3 230f 	ubfx	r3, r3, #8, #16
3000806a:	3b46      	subs	r3, #70	; 0x46
3000806c:	42a3      	cmp	r3, r4
3000806e:	d92d      	bls.n	300080cc <rxi316_DynSre_init+0x78>
30008070:	2d01      	cmp	r5, #1
30008072:	d017      	beq.n	300080a4 <rxi316_DynSre_init+0x50>
30008074:	4a19      	ldr	r2, [pc, #100]	; (300080dc <rxi316_DynSre_init+0x88>)
30008076:	6893      	ldr	r3, [r2, #8]
30008078:	f023 0380 	bic.w	r3, r3, #128	; 0x80
3000807c:	6093      	str	r3, [r2, #8]
3000807e:	4b17      	ldr	r3, [pc, #92]	; (300080dc <rxi316_DynSre_init+0x88>)
30008080:	f44f 1200 	mov.w	r2, #2097152	; 0x200000
30008084:	f04f 4100 	mov.w	r1, #2147483648	; 0x80000000
30008088:	625a      	str	r2, [r3, #36]	; 0x24
3000808a:	629a      	str	r2, [r3, #40]	; 0x28
3000808c:	69da      	ldr	r2, [r3, #28]
3000808e:	f422 6270 	bic.w	r2, r2, #3840	; 0xf00
30008092:	f442 7200 	orr.w	r2, r2, #512	; 0x200
30008096:	61da      	str	r2, [r3, #28]
30008098:	6019      	str	r1, [r3, #0]
3000809a:	bd38      	pop	{r3, r4, r5, pc}
3000809c:	2d01      	cmp	r5, #1
3000809e:	f04f 0400 	mov.w	r4, #0
300080a2:	d1e7      	bne.n	30008074 <rxi316_DynSre_init+0x20>
300080a4:	4b0d      	ldr	r3, [pc, #52]	; (300080dc <rxi316_DynSre_init+0x88>)
300080a6:	f64f 70fe 	movw	r0, #65534	; 0xfffe
300080aa:	4a0d      	ldr	r2, [pc, #52]	; (300080e0 <rxi316_DynSre_init+0x8c>)
300080ac:	f8d3 1100 	ldr.w	r1, [r3, #256]	; 0x100
300080b0:	4004      	ands	r4, r0
300080b2:	400a      	ands	r2, r1
300080b4:	f8c3 2100 	str.w	r2, [r3, #256]	; 0x100
300080b8:	f8d3 0100 	ldr.w	r0, [r3, #256]	; 0x100
300080bc:	4304      	orrs	r4, r0
300080be:	f8c3 4100 	str.w	r4, [r3, #256]	; 0x100
300080c2:	689a      	ldr	r2, [r3, #8]
300080c4:	f042 0280 	orr.w	r2, r2, #128	; 0x80
300080c8:	609a      	str	r2, [r3, #8]
300080ca:	e7d8      	b.n	3000807e <rxi316_DynSre_init+0x2a>
300080cc:	f240 410e 	movw	r1, #1038	; 0x40e
300080d0:	4804      	ldr	r0, [pc, #16]	; (300080e4 <rxi316_DynSre_init+0x90>)
300080d2:	f002 ff6d 	bl	3000afb0 <io_assert_failed>
300080d6:	bf00      	nop
300080d8:	3000a605 	.word	0x3000a605
300080dc:	41100000 	.word	0x41100000
300080e0:	ffff0000 	.word	0xffff0000
300080e4:	3000c410 	.word	0x3000c410

300080e8 <ddr_init>:
300080e8:	b500      	push	{lr}
300080ea:	b083      	sub	sp, #12
300080ec:	f7fe fdea 	bl	30006cc4 <ddr_init_index>
300080f0:	4b06      	ldr	r3, [pc, #24]	; (3000810c <ddr_init+0x24>)
300080f2:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
300080f6:	9001      	str	r0, [sp, #4]
300080f8:	f7fe fe0e 	bl	30006d18 <rxi316_perf_tune>
300080fc:	9801      	ldr	r0, [sp, #4]
300080fe:	f7ff fa65 	bl	300075cc <rxi316_dram_init>
30008102:	b003      	add	sp, #12
30008104:	f85d eb04 	ldr.w	lr, [sp], #4
30008108:	f7ff bf84 	b.w	30008014 <rxi316_ftend_init>
3000810c:	3000de38 	.word	0x3000de38

30008110 <PSRAM_INFO_Update>:
30008110:	4b49      	ldr	r3, [pc, #292]	; (30008238 <PSRAM_INFO_Update+0x128>)
30008112:	494a      	ldr	r1, [pc, #296]	; (3000823c <PSRAM_INFO_Update+0x12c>)
30008114:	4a4a      	ldr	r2, [pc, #296]	; (30008240 <PSRAM_INFO_Update+0x130>)
30008116:	b530      	push	{r4, r5, lr}
30008118:	f8d3 3228 	ldr.w	r3, [r3, #552]	; 0x228
3000811c:	b083      	sub	sp, #12
3000811e:	680d      	ldr	r5, [r1, #0]
30008120:	f3c3 2302 	ubfx	r3, r3, #8, #3
30008124:	4c47      	ldr	r4, [pc, #284]	; (30008244 <PSRAM_INFO_Update+0x134>)
30008126:	fb02 f505 	mul.w	r5, r2, r5
3000812a:	3301      	adds	r3, #1
3000812c:	fbb5 f5f3 	udiv	r5, r5, r3
30008130:	086a      	lsrs	r2, r5, #1
30008132:	4b45      	ldr	r3, [pc, #276]	; (30008248 <PSRAM_INFO_Update+0x138>)
30008134:	60e2      	str	r2, [r4, #12]
30008136:	4798      	blx	r3
30008138:	4b44      	ldr	r3, [pc, #272]	; (3000824c <PSRAM_INFO_Update+0x13c>)
3000813a:	6020      	str	r0, [r4, #0]
3000813c:	4798      	blx	r3
3000813e:	4b44      	ldr	r3, [pc, #272]	; (30008250 <PSRAM_INFO_Update+0x140>)
30008140:	220a      	movs	r2, #10
30008142:	60a0      	str	r0, [r4, #8]
30008144:	6122      	str	r2, [r4, #16]
30008146:	2220      	movs	r2, #32
30008148:	fbb3 f3f5 	udiv	r3, r3, r5
3000814c:	6163      	str	r3, [r4, #20]
3000814e:	fbb2 f3f3 	udiv	r3, r2, r3
30008152:	6822      	ldr	r2, [r4, #0]
30008154:	6223      	str	r3, [r4, #32]
30008156:	2a01      	cmp	r2, #1
30008158:	68e3      	ldr	r3, [r4, #12]
3000815a:	4a3e      	ldr	r2, [pc, #248]	; (30008254 <PSRAM_INFO_Update+0x144>)
3000815c:	d01d      	beq.n	3000819a <PSRAM_INFO_Update+0x8a>
3000815e:	4293      	cmp	r3, r2
30008160:	d810      	bhi.n	30008184 <PSRAM_INFO_Update+0x74>
30008162:	2304      	movs	r3, #4
30008164:	2208      	movs	r2, #8
30008166:	4618      	mov	r0, r3
30008168:	e9c4 3206 	strd	r3, r2, [r4, #24]
3000816c:	493a      	ldr	r1, [pc, #232]	; (30008258 <PSRAM_INFO_Update+0x148>)
3000816e:	2249      	movs	r2, #73	; 0x49
30008170:	4b3a      	ldr	r3, [pc, #232]	; (3000825c <PSRAM_INFO_Update+0x14c>)
30008172:	f881 0110 	strb.w	r0, [r1, #272]	; 0x110
30008176:	2004      	movs	r0, #4
30008178:	4939      	ldr	r1, [pc, #228]	; (30008260 <PSRAM_INFO_Update+0x150>)
3000817a:	9500      	str	r5, [sp, #0]
3000817c:	f001 f8e6 	bl	3000934c <rtk_log_write>
30008180:	b003      	add	sp, #12
30008182:	bd30      	pop	{r4, r5, pc}
30008184:	4a37      	ldr	r2, [pc, #220]	; (30008264 <PSRAM_INFO_Update+0x154>)
30008186:	4293      	cmp	r3, r2
30008188:	d918      	bls.n	300081bc <PSRAM_INFO_Update+0xac>
3000818a:	4a37      	ldr	r2, [pc, #220]	; (30008268 <PSRAM_INFO_Update+0x158>)
3000818c:	4293      	cmp	r3, r2
3000818e:	d827      	bhi.n	300081e0 <PSRAM_INFO_Update+0xd0>
30008190:	2306      	movs	r3, #6
30008192:	4618      	mov	r0, r3
30008194:	e9c4 3306 	strd	r3, r3, [r4, #24]
30008198:	e7e8      	b.n	3000816c <PSRAM_INFO_Update+0x5c>
3000819a:	4293      	cmp	r3, r2
3000819c:	d908      	bls.n	300081b0 <PSRAM_INFO_Update+0xa0>
3000819e:	4a31      	ldr	r2, [pc, #196]	; (30008264 <PSRAM_INFO_Update+0x154>)
300081a0:	4293      	cmp	r3, r2
300081a2:	d811      	bhi.n	300081c8 <PSRAM_INFO_Update+0xb8>
300081a4:	2305      	movs	r3, #5
300081a6:	220f      	movs	r2, #15
300081a8:	4618      	mov	r0, r3
300081aa:	e9c4 3206 	strd	r3, r2, [r4, #24]
300081ae:	e7dd      	b.n	3000816c <PSRAM_INFO_Update+0x5c>
300081b0:	2304      	movs	r3, #4
300081b2:	220f      	movs	r2, #15
300081b4:	4618      	mov	r0, r3
300081b6:	e9c4 3206 	strd	r3, r2, [r4, #24]
300081ba:	e7d7      	b.n	3000816c <PSRAM_INFO_Update+0x5c>
300081bc:	2305      	movs	r3, #5
300081be:	2208      	movs	r2, #8
300081c0:	4618      	mov	r0, r3
300081c2:	e9c4 3206 	strd	r3, r2, [r4, #24]
300081c6:	e7d1      	b.n	3000816c <PSRAM_INFO_Update+0x5c>
300081c8:	4a27      	ldr	r2, [pc, #156]	; (30008268 <PSRAM_INFO_Update+0x158>)
300081ca:	4293      	cmp	r3, r2
300081cc:	d918      	bls.n	30008200 <PSRAM_INFO_Update+0xf0>
300081ce:	4a27      	ldr	r2, [pc, #156]	; (3000826c <PSRAM_INFO_Update+0x15c>)
300081d0:	4293      	cmp	r3, r2
300081d2:	d821      	bhi.n	30008218 <PSRAM_INFO_Update+0x108>
300081d4:	2307      	movs	r3, #7
300081d6:	2214      	movs	r2, #20
300081d8:	4618      	mov	r0, r3
300081da:	e9c4 3206 	strd	r3, r2, [r4, #24]
300081de:	e7c5      	b.n	3000816c <PSRAM_INFO_Update+0x5c>
300081e0:	4a22      	ldr	r2, [pc, #136]	; (3000826c <PSRAM_INFO_Update+0x15c>)
300081e2:	4293      	cmp	r3, r2
300081e4:	d912      	bls.n	3000820c <PSRAM_INFO_Update+0xfc>
300081e6:	4a22      	ldr	r2, [pc, #136]	; (30008270 <PSRAM_INFO_Update+0x160>)
300081e8:	4293      	cmp	r3, r2
300081ea:	bf8c      	ite	hi
300081ec:	2300      	movhi	r3, #0
300081ee:	2301      	movls	r3, #1
300081f0:	2804      	cmp	r0, #4
300081f2:	d100      	bne.n	300081f6 <PSRAM_INFO_Update+0xe6>
300081f4:	b953      	cbnz	r3, 3000820c <PSRAM_INFO_Update+0xfc>
300081f6:	2803      	cmp	r0, #3
300081f8:	d100      	bne.n	300081fc <PSRAM_INFO_Update+0xec>
300081fa:	b9b3      	cbnz	r3, 3000822a <PSRAM_INFO_Update+0x11a>
300081fc:	7e20      	ldrb	r0, [r4, #24]
300081fe:	e7b5      	b.n	3000816c <PSRAM_INFO_Update+0x5c>
30008200:	2306      	movs	r3, #6
30008202:	2212      	movs	r2, #18
30008204:	4618      	mov	r0, r3
30008206:	e9c4 3206 	strd	r3, r2, [r4, #24]
3000820a:	e7af      	b.n	3000816c <PSRAM_INFO_Update+0x5c>
3000820c:	2307      	movs	r3, #7
3000820e:	2206      	movs	r2, #6
30008210:	4618      	mov	r0, r3
30008212:	e9c4 3206 	strd	r3, r2, [r4, #24]
30008216:	e7a9      	b.n	3000816c <PSRAM_INFO_Update+0x5c>
30008218:	4a15      	ldr	r2, [pc, #84]	; (30008270 <PSRAM_INFO_Update+0x160>)
3000821a:	4293      	cmp	r3, r2
3000821c:	d8ee      	bhi.n	300081fc <PSRAM_INFO_Update+0xec>
3000821e:	2308      	movs	r3, #8
30008220:	221c      	movs	r2, #28
30008222:	4618      	mov	r0, r3
30008224:	e9c4 3206 	strd	r3, r2, [r4, #24]
30008228:	e7a0      	b.n	3000816c <PSRAM_INFO_Update+0x5c>
3000822a:	230a      	movs	r3, #10
3000822c:	2206      	movs	r2, #6
3000822e:	4618      	mov	r0, r3
30008230:	e9c4 3206 	strd	r3, r2, [r4, #24]
30008234:	e79a      	b.n	3000816c <PSRAM_INFO_Update+0x5c>
30008236:	bf00      	nop
30008238:	42008000 	.word	0x42008000
3000823c:	3000e180 	.word	0x3000e180
30008240:	000f4240 	.word	0x000f4240
30008244:	3000eaac 	.word	0x3000eaac
30008248:	3000a149 	.word	0x3000a149
3000824c:	3000a049 	.word	0x3000a049
30008250:	3b9aca00 	.word	0x3b9aca00
30008254:	0632ea00 	.word	0x0632ea00
30008258:	23020000 	.word	0x23020000
3000825c:	3000c4a8 	.word	0x3000c4a8
30008260:	3000c4c4 	.word	0x3000c4c4
30008264:	07ed6b40 	.word	0x07ed6b40
30008268:	09e4f580 	.word	0x09e4f580
3000826c:	0bebc200 	.word	0x0bebc200
30008270:	0ee6b280 	.word	0x0ee6b280

30008274 <PSRAM_PHY_StructInit>:
30008274:	2203      	movs	r2, #3
30008276:	2301      	movs	r3, #1
30008278:	210a      	movs	r1, #10
3000827a:	b410      	push	{r4}
3000827c:	e9c0 2202 	strd	r2, r2, [r0, #8]
30008280:	2402      	movs	r4, #2
30008282:	2207      	movs	r2, #7
30008284:	e9c0 3400 	strd	r3, r4, [r0]
30008288:	e9c0 1304 	strd	r1, r3, [r0, #16]
3000828c:	f85d 4b04 	ldr.w	r4, [sp], #4
30008290:	6182      	str	r2, [r0, #24]
30008292:	4770      	bx	lr

30008294 <PSRAM_PHY_Init>:
30008294:	b538      	push	{r3, r4, r5, lr}
30008296:	4604      	mov	r4, r0
30008298:	6903      	ldr	r3, [r0, #16]
3000829a:	4d14      	ldr	r5, [pc, #80]	; (300082ec <PSRAM_PHY_Init+0x58>)
3000829c:	f003 031f 	and.w	r3, r3, #31
300082a0:	4913      	ldr	r1, [pc, #76]	; (300082f0 <PSRAM_PHY_Init+0x5c>)
300082a2:	e9d0 0200 	ldrd	r0, r2, [r0]
300082a6:	0612      	lsls	r2, r2, #24
300082a8:	ea43 7300 	orr.w	r3, r3, r0, lsl #28
300082ac:	f002 62e0 	and.w	r2, r2, #117440512	; 0x7000000
300082b0:	4313      	orrs	r3, r2
300082b2:	68a2      	ldr	r2, [r4, #8]
300082b4:	0412      	lsls	r2, r2, #16
300082b6:	f402 2270 	and.w	r2, r2, #983040	; 0xf0000
300082ba:	4313      	orrs	r3, r2
300082bc:	68e2      	ldr	r2, [r4, #12]
300082be:	0212      	lsls	r2, r2, #8
300082c0:	f402 6270 	and.w	r2, r2, #3840	; 0xf00
300082c4:	4313      	orrs	r3, r2
300082c6:	606b      	str	r3, [r5, #4]
300082c8:	4788      	blx	r1
300082ca:	2801      	cmp	r0, #1
300082cc:	e9d4 3105 	ldrd	r3, r1, [r4, #20]
300082d0:	bf08      	it	eq
300082d2:	4a08      	ldreq	r2, [pc, #32]	; (300082f4 <PSRAM_PHY_Init+0x60>)
300082d4:	ea4f 1303 	mov.w	r3, r3, lsl #4
300082d8:	f001 010f 	and.w	r1, r1, #15
300082dc:	bf18      	it	ne
300082de:	4a06      	ldrne	r2, [pc, #24]	; (300082f8 <PSRAM_PHY_Init+0x64>)
300082e0:	b2db      	uxtb	r3, r3
300082e2:	430b      	orrs	r3, r1
300082e4:	431a      	orrs	r2, r3
300082e6:	61aa      	str	r2, [r5, #24]
300082e8:	bd38      	pop	{r3, r4, r5, pc}
300082ea:	bf00      	nop
300082ec:	41002000 	.word	0x41002000
300082f0:	3000a149 	.word	0x3000a149
300082f4:	80000e00 	.word	0x80000e00
300082f8:	80000f00 	.word	0x80000f00

300082fc <PSRAM_CTRL_Init>:
300082fc:	b470      	push	{r4, r5, r6}
300082fe:	4b4c      	ldr	r3, [pc, #304]	; (30008430 <PSRAM_CTRL_Init+0x134>)
30008300:	2400      	movs	r4, #0
30008302:	4a4c      	ldr	r2, [pc, #304]	; (30008434 <PSRAM_CTRL_Init+0x138>)
30008304:	f24d 0101 	movw	r1, #53249	; 0xd001
30008308:	609c      	str	r4, [r3, #8]
3000830a:	2001      	movs	r0, #1
3000830c:	601a      	str	r2, [r3, #0]
3000830e:	4a4a      	ldr	r2, [pc, #296]	; (30008438 <PSRAM_CTRL_Init+0x13c>)
30008310:	6158      	str	r0, [r3, #20]
30008312:	f8c3 1120 	str.w	r1, [r3, #288]	; 0x120
30008316:	6811      	ldr	r1, [r2, #0]
30008318:	2902      	cmp	r1, #2
3000831a:	d04a      	beq.n	300083b2 <PSRAM_CTRL_Init+0xb6>
3000831c:	6954      	ldr	r4, [r2, #20]
3000831e:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
30008322:	69d0      	ldr	r0, [r2, #28]
30008324:	6915      	ldr	r5, [r2, #16]
30008326:	fbb0 f0f4 	udiv	r0, r0, r4
3000832a:	fbb1 f1f4 	udiv	r1, r1, r4
3000832e:	6994      	ldr	r4, [r2, #24]
30008330:	f005 020f 	and.w	r2, r5, #15
30008334:	f241 5551 	movw	r5, #5457	; 0x1551
30008338:	f442 628e 	orr.w	r2, r2, #1136	; 0x470
3000833c:	f8c3 5110 	str.w	r5, [r3, #272]	; 0x110
30008340:	f8c3 2134 	str.w	r2, [r3, #308]	; 0x134
30008344:	094a      	lsrs	r2, r1, #5
30008346:	0181      	lsls	r1, r0, #6
30008348:	f000 003f 	and.w	r0, r0, #63	; 0x3f
3000834c:	4d3b      	ldr	r5, [pc, #236]	; (3000843c <PSRAM_CTRL_Init+0x140>)
3000834e:	f401 617c 	and.w	r1, r1, #4032	; 0xfc0
30008352:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
30008356:	00a2      	lsls	r2, r4, #2
30008358:	4301      	orrs	r1, r0
3000835a:	f24a 00a0 	movw	r0, #41120	; 0xa0a0
3000835e:	3a01      	subs	r2, #1
30008360:	430d      	orrs	r5, r1
30008362:	f242 0120 	movw	r1, #8224	; 0x2020
30008366:	f3c2 020b 	ubfx	r2, r2, #0, #12
3000836a:	f8c3 5138 	str.w	r5, [r3, #312]	; 0x138
3000836e:	f8c3 10e0 	str.w	r1, [r3, #224]	; 0xe0
30008372:	f44f 2180 	mov.w	r1, #262144	; 0x40000
30008376:	f8c3 00f4 	str.w	r0, [r3, #244]	; 0xf4
3000837a:	f06f 4000 	mvn.w	r0, #2147483648	; 0x80000000
3000837e:	f8c3 111c 	str.w	r1, [r3, #284]	; 0x11c
30008382:	f442 2184 	orr.w	r1, r2, #270336	; 0x42000
30008386:	4420      	add	r0, r4
30008388:	f8c3 1118 	str.w	r1, [r3, #280]	; 0x118
3000838c:	f640 71fe 	movw	r1, #4094	; 0xffe
30008390:	f8d3 511c 	ldr.w	r5, [r3, #284]	; 0x11c
30008394:	ea01 0140 	and.w	r1, r1, r0, lsl #1
30008398:	432a      	orrs	r2, r5
3000839a:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
3000839e:	f8c3 211c 	str.w	r2, [r3, #284]	; 0x11c
300083a2:	f8c3 113c 	str.w	r1, [r3, #316]	; 0x13c
300083a6:	4a22      	ldr	r2, [pc, #136]	; (30008430 <PSRAM_CTRL_Init+0x134>)
300083a8:	6a93      	ldr	r3, [r2, #40]	; 0x28
300083aa:	061b      	lsls	r3, r3, #24
300083ac:	d5fc      	bpl.n	300083a8 <PSRAM_CTRL_Init+0xac>
300083ae:	bc70      	pop	{r4, r5, r6}
300083b0:	4770      	bx	lr
300083b2:	6955      	ldr	r5, [r2, #20]
300083b4:	207d      	movs	r0, #125	; 0x7d
300083b6:	69d1      	ldr	r1, [r2, #28]
300083b8:	26a0      	movs	r6, #160	; 0xa0
300083ba:	6914      	ldr	r4, [r2, #16]
300083bc:	6992      	ldr	r2, [r2, #24]
300083be:	f004 040f 	and.w	r4, r4, #15
300083c2:	0092      	lsls	r2, r2, #2
300083c4:	fbb1 f1f5 	udiv	r1, r1, r5
300083c8:	fbb0 f5f5 	udiv	r5, r0, r5
300083cc:	f245 5051 	movw	r0, #21841	; 0x5551
300083d0:	f8c3 0110 	str.w	r0, [r3, #272]	; 0x110
300083d4:	f001 003f 	and.w	r0, r1, #63	; 0x3f
300083d8:	0189      	lsls	r1, r1, #6
300083da:	ea40 6005 	orr.w	r0, r0, r5, lsl #24
300083de:	f641 4570 	movw	r5, #7280	; 0x1c70
300083e2:	f401 617c 	and.w	r1, r1, #4032	; 0xfc0
300083e6:	4325      	orrs	r5, r4
300083e8:	2420      	movs	r4, #32
300083ea:	4308      	orrs	r0, r1
300083ec:	1e51      	subs	r1, r2, #1
300083ee:	f8c3 5134 	str.w	r5, [r3, #308]	; 0x134
300083f2:	3a02      	subs	r2, #2
300083f4:	f440 1080 	orr.w	r0, r0, #1048576	; 0x100000
300083f8:	f3c1 010b 	ubfx	r1, r1, #0, #12
300083fc:	f3c2 020b 	ubfx	r2, r2, #0, #12
30008400:	f8c3 0138 	str.w	r0, [r3, #312]	; 0x138
30008404:	f44f 20a0 	mov.w	r0, #327680	; 0x50000
30008408:	f8c3 60e0 	str.w	r6, [r3, #224]	; 0xe0
3000840c:	f8c3 40f4 	str.w	r4, [r3, #244]	; 0xf4
30008410:	f8c3 011c 	str.w	r0, [r3, #284]	; 0x11c
30008414:	f441 20a2 	orr.w	r0, r1, #331776	; 0x51000
30008418:	f8c3 0118 	str.w	r0, [r3, #280]	; 0x118
3000841c:	f8d3 011c 	ldr.w	r0, [r3, #284]	; 0x11c
30008420:	4301      	orrs	r1, r0
30008422:	f441 4100 	orr.w	r1, r1, #32768	; 0x8000
30008426:	f8c3 111c 	str.w	r1, [r3, #284]	; 0x11c
3000842a:	f8c3 213c 	str.w	r2, [r3, #316]	; 0x13c
3000842e:	e7ba      	b.n	300083a6 <PSRAM_CTRL_Init+0xaa>
30008430:	41012000 	.word	0x41012000
30008434:	00bfe000 	.word	0x00bfe000
30008438:	3000eaac 	.word	0x3000eaac
3000843c:	00107000 	.word	0x00107000

30008440 <PSRAM_REG_Write>:
30008440:	b430      	push	{r4, r5}
30008442:	4c20      	ldr	r4, [pc, #128]	; (300084c4 <PSRAM_REG_Write+0x84>)
30008444:	6aa3      	ldr	r3, [r4, #40]	; 0x28
30008446:	f013 0301 	ands.w	r3, r3, #1
3000844a:	d1fb      	bne.n	30008444 <PSRAM_REG_Write+0x4>
3000844c:	6825      	ldr	r5, [r4, #0]
3000844e:	f045 4500 	orr.w	r5, r5, #2147483648	; 0x80000000
30008452:	6025      	str	r5, [r4, #0]
30008454:	60a3      	str	r3, [r4, #8]
30008456:	6825      	ldr	r5, [r4, #0]
30008458:	f425 7540 	bic.w	r5, r5, #768	; 0x300
3000845c:	6025      	str	r5, [r4, #0]
3000845e:	6063      	str	r3, [r4, #4]
30008460:	f021 437f 	bic.w	r3, r1, #4278190080	; 0xff000000
30008464:	f8c4 3130 	str.w	r3, [r4, #304]	; 0x130
30008468:	23c0      	movs	r3, #192	; 0xc0
3000846a:	f884 3060 	strb.w	r3, [r4, #96]	; 0x60
3000846e:	f884 3060 	strb.w	r3, [r4, #96]	; 0x60
30008472:	0e03      	lsrs	r3, r0, #24
30008474:	f884 3060 	strb.w	r3, [r4, #96]	; 0x60
30008478:	f3c0 4307 	ubfx	r3, r0, #16, #8
3000847c:	f884 3060 	strb.w	r3, [r4, #96]	; 0x60
30008480:	f3c0 2307 	ubfx	r3, r0, #8, #8
30008484:	b2c0      	uxtb	r0, r0
30008486:	f884 3060 	strb.w	r3, [r4, #96]	; 0x60
3000848a:	f884 0060 	strb.w	r0, [r4, #96]	; 0x60
3000848e:	b141      	cbz	r1, 300084a2 <PSRAM_REG_Write+0x62>
30008490:	3a01      	subs	r2, #1
30008492:	480c      	ldr	r0, [pc, #48]	; (300084c4 <PSRAM_REG_Write+0x84>)
30008494:	4411      	add	r1, r2
30008496:	f812 3f01 	ldrb.w	r3, [r2, #1]!
3000849a:	428a      	cmp	r2, r1
3000849c:	f880 3060 	strb.w	r3, [r0, #96]	; 0x60
300084a0:	d1f9      	bne.n	30008496 <PSRAM_REG_Write+0x56>
300084a2:	4a08      	ldr	r2, [pc, #32]	; (300084c4 <PSRAM_REG_Write+0x84>)
300084a4:	2301      	movs	r3, #1
300084a6:	6093      	str	r3, [r2, #8]
300084a8:	6893      	ldr	r3, [r2, #8]
300084aa:	07d9      	lsls	r1, r3, #31
300084ac:	d4fc      	bmi.n	300084a8 <PSRAM_REG_Write+0x68>
300084ae:	4a05      	ldr	r2, [pc, #20]	; (300084c4 <PSRAM_REG_Write+0x84>)
300084b0:	6a93      	ldr	r3, [r2, #40]	; 0x28
300084b2:	07db      	lsls	r3, r3, #31
300084b4:	d4fc      	bmi.n	300084b0 <PSRAM_REG_Write+0x70>
300084b6:	6813      	ldr	r3, [r2, #0]
300084b8:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
300084bc:	6013      	str	r3, [r2, #0]
300084be:	bc30      	pop	{r4, r5}
300084c0:	4770      	bx	lr
300084c2:	bf00      	nop
300084c4:	41012000 	.word	0x41012000

300084c8 <PSRAM_APM_DEVIC_Init>:
300084c8:	4b12      	ldr	r3, [pc, #72]	; (30008514 <PSRAM_APM_DEVIC_Init+0x4c>)
300084ca:	2102      	movs	r1, #2
300084cc:	2000      	movs	r0, #0
300084ce:	b530      	push	{r4, r5, lr}
300084d0:	4c11      	ldr	r4, [pc, #68]	; (30008518 <PSRAM_APM_DEVIC_Init+0x50>)
300084d2:	b083      	sub	sp, #12
300084d4:	699d      	ldr	r5, [r3, #24]
300084d6:	466a      	mov	r2, sp
300084d8:	eb04 0c05 	add.w	ip, r4, r5
300084dc:	1eeb      	subs	r3, r5, #3
300084de:	4c0f      	ldr	r4, [pc, #60]	; (3000851c <PSRAM_APM_DEVIC_Init+0x54>)
300084e0:	408b      	lsls	r3, r1
300084e2:	f81c cc03 	ldrb.w	ip, [ip, #-3]
300084e6:	f003 031c 	and.w	r3, r3, #28
300084ea:	ea4f 1c4c 	mov.w	ip, ip, lsl #5
300084ee:	f043 0320 	orr.w	r3, r3, #32
300084f2:	fa5f fc8c 	uxtb.w	ip, ip
300084f6:	f88d 3000 	strb.w	r3, [sp]
300084fa:	f88d c004 	strb.w	ip, [sp, #4]
300084fe:	f88d 3001 	strb.w	r3, [sp, #1]
30008502:	f88d c005 	strb.w	ip, [sp, #5]
30008506:	47a0      	blx	r4
30008508:	aa01      	add	r2, sp, #4
3000850a:	2102      	movs	r1, #2
3000850c:	2004      	movs	r0, #4
3000850e:	47a0      	blx	r4
30008510:	b003      	add	sp, #12
30008512:	bd30      	pop	{r4, r5, pc}
30008514:	3000eaac 	.word	0x3000eaac
30008518:	3000dfd0 	.word	0x3000dfd0
3000851c:	30008441 	.word	0x30008441

30008520 <PSRAM_WB_REG_Write>:
30008520:	b430      	push	{r4, r5}
30008522:	4c1e      	ldr	r4, [pc, #120]	; (3000859c <PSRAM_WB_REG_Write+0x7c>)
30008524:	6aa3      	ldr	r3, [r4, #40]	; 0x28
30008526:	f013 0301 	ands.w	r3, r3, #1
3000852a:	d1fb      	bne.n	30008524 <PSRAM_WB_REG_Write+0x4>
3000852c:	6825      	ldr	r5, [r4, #0]
3000852e:	b2c0      	uxtb	r0, r0
30008530:	f045 4500 	orr.w	r5, r5, #2147483648	; 0x80000000
30008534:	6025      	str	r5, [r4, #0]
30008536:	60a3      	str	r3, [r4, #8]
30008538:	6825      	ldr	r5, [r4, #0]
3000853a:	f425 7540 	bic.w	r5, r5, #768	; 0x300
3000853e:	6025      	str	r5, [r4, #0]
30008540:	f021 457f 	bic.w	r5, r1, #4278190080	; 0xff000000
30008544:	6063      	str	r3, [r4, #4]
30008546:	f8c4 5130 	str.w	r5, [r4, #304]	; 0x130
3000854a:	2560      	movs	r5, #96	; 0x60
3000854c:	f884 5060 	strb.w	r5, [r4, #96]	; 0x60
30008550:	2501      	movs	r5, #1
30008552:	f884 3060 	strb.w	r3, [r4, #96]	; 0x60
30008556:	f884 5060 	strb.w	r5, [r4, #96]	; 0x60
3000855a:	f884 3060 	strb.w	r3, [r4, #96]	; 0x60
3000855e:	f884 3060 	strb.w	r3, [r4, #96]	; 0x60
30008562:	f884 0060 	strb.w	r0, [r4, #96]	; 0x60
30008566:	b141      	cbz	r1, 3000857a <PSRAM_WB_REG_Write+0x5a>
30008568:	3a01      	subs	r2, #1
3000856a:	480c      	ldr	r0, [pc, #48]	; (3000859c <PSRAM_WB_REG_Write+0x7c>)
3000856c:	4411      	add	r1, r2
3000856e:	f812 3f01 	ldrb.w	r3, [r2, #1]!
30008572:	428a      	cmp	r2, r1
30008574:	f880 3060 	strb.w	r3, [r0, #96]	; 0x60
30008578:	d1f9      	bne.n	3000856e <PSRAM_WB_REG_Write+0x4e>
3000857a:	4a08      	ldr	r2, [pc, #32]	; (3000859c <PSRAM_WB_REG_Write+0x7c>)
3000857c:	2301      	movs	r3, #1
3000857e:	6093      	str	r3, [r2, #8]
30008580:	6893      	ldr	r3, [r2, #8]
30008582:	07d9      	lsls	r1, r3, #31
30008584:	d4fc      	bmi.n	30008580 <PSRAM_WB_REG_Write+0x60>
30008586:	4a05      	ldr	r2, [pc, #20]	; (3000859c <PSRAM_WB_REG_Write+0x7c>)
30008588:	6a93      	ldr	r3, [r2, #40]	; 0x28
3000858a:	07db      	lsls	r3, r3, #31
3000858c:	d4fc      	bmi.n	30008588 <PSRAM_WB_REG_Write+0x68>
3000858e:	6813      	ldr	r3, [r2, #0]
30008590:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
30008594:	6013      	str	r3, [r2, #0]
30008596:	bc30      	pop	{r4, r5}
30008598:	4770      	bx	lr
3000859a:	bf00      	nop
3000859c:	41012000 	.word	0x41012000

300085a0 <PSRAM_WB_DEVIC_Init>:
300085a0:	490b      	ldr	r1, [pc, #44]	; (300085d0 <PSRAM_WB_DEVIC_Init+0x30>)
300085a2:	4b0c      	ldr	r3, [pc, #48]	; (300085d4 <PSRAM_WB_DEVIC_Init+0x34>)
300085a4:	b510      	push	{r4, lr}
300085a6:	6988      	ldr	r0, [r1, #24]
300085a8:	b082      	sub	sp, #8
300085aa:	248f      	movs	r4, #143	; 0x8f
300085ac:	2102      	movs	r1, #2
300085ae:	4403      	add	r3, r0
300085b0:	aa01      	add	r2, sp, #4
300085b2:	f88d 4004 	strb.w	r4, [sp, #4]
300085b6:	2000      	movs	r0, #0
300085b8:	f813 3c03 	ldrb.w	r3, [r3, #-3]
300085bc:	4c06      	ldr	r4, [pc, #24]	; (300085d8 <PSRAM_WB_DEVIC_Init+0x38>)
300085be:	011b      	lsls	r3, r3, #4
300085c0:	f043 030c 	orr.w	r3, r3, #12
300085c4:	f88d 3005 	strb.w	r3, [sp, #5]
300085c8:	47a0      	blx	r4
300085ca:	b002      	add	sp, #8
300085cc:	bd10      	pop	{r4, pc}
300085ce:	bf00      	nop
300085d0:	3000eaac 	.word	0x3000eaac
300085d4:	3000dff0 	.word	0x3000dff0
300085d8:	30008521 	.word	0x30008521

300085dc <PSRAM_calibration>:
300085dc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
300085e0:	f8df 9190 	ldr.w	r9, [pc, #400]	; 30008774 <PSRAM_calibration+0x198>
300085e4:	b093      	sub	sp, #76	; 0x4c
300085e6:	4a5c      	ldr	r2, [pc, #368]	; (30008758 <PSRAM_calibration+0x17c>)
300085e8:	2700      	movs	r7, #0
300085ea:	f8d9 3004 	ldr.w	r3, [r9, #4]
300085ee:	4c5b      	ldr	r4, [pc, #364]	; (3000875c <PSRAM_calibration+0x180>)
300085f0:	930a      	str	r3, [sp, #40]	; 0x28
300085f2:	4013      	ands	r3, r2
300085f4:	2204      	movs	r2, #4
300085f6:	4d5a      	ldr	r5, [pc, #360]	; (30008760 <PSRAM_calibration+0x184>)
300085f8:	930b      	str	r3, [sp, #44]	; 0x2c
300085fa:	e9cd 770c 	strd	r7, r7, [sp, #48]	; 0x30
300085fe:	e9cd 770e 	strd	r7, r7, [sp, #56]	; 0x38
30008602:	e9cd 7710 	strd	r7, r7, [sp, #64]	; 0x40
30008606:	f8d9 3000 	ldr.w	r3, [r9]
3000860a:	f023 0301 	bic.w	r3, r3, #1
3000860e:	f8c9 3000 	str.w	r3, [r9]
30008612:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
30008616:	9209      	str	r2, [sp, #36]	; 0x24
30008618:	2201      	movs	r2, #1
3000861a:	461e      	mov	r6, r3
3000861c:	469b      	mov	fp, r3
3000861e:	9306      	str	r3, [sp, #24]
30008620:	9205      	str	r2, [sp, #20]
30008622:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
30008624:	9a05      	ldr	r2, [sp, #20]
30008626:	9704      	str	r7, [sp, #16]
30008628:	2700      	movs	r7, #0
3000862a:	ea43 7a02 	orr.w	sl, r3, r2, lsl #28
3000862e:	46b8      	mov	r8, r7
30008630:	e9cd 6b07 	strd	r6, fp, [sp, #28]
30008634:	f04f 3bff 	mov.w	fp, #4294967295	; 0xffffffff
30008638:	465e      	mov	r6, fp
3000863a:	ea4a 0208 	orr.w	r2, sl, r8
3000863e:	4849      	ldr	r0, [pc, #292]	; (30008764 <PSRAM_calibration+0x188>)
30008640:	a90c      	add	r1, sp, #48	; 0x30
30008642:	f8c9 2004 	str.w	r2, [r9, #4]
30008646:	f04f 42c0 	mov.w	r2, #1610612736	; 0x60000000
3000864a:	f850 3b04 	ldr.w	r3, [r0], #4
3000864e:	6013      	str	r3, [r2, #0]
30008650:	6963      	ldr	r3, [r4, #20]
30008652:	03db      	lsls	r3, r3, #15
30008654:	d507      	bpl.n	30008666 <PSRAM_calibration+0x8a>
30008656:	f3bf 8f4f 	dsb	sy
3000865a:	f8c4 2270 	str.w	r2, [r4, #624]	; 0x270
3000865e:	f3bf 8f4f 	dsb	sy
30008662:	f3bf 8f6f 	isb	sy
30008666:	6813      	ldr	r3, [r2, #0]
30008668:	f502 22a0 	add.w	r2, r2, #327680	; 0x50000
3000866c:	42aa      	cmp	r2, r5
3000866e:	f841 3b04 	str.w	r3, [r1], #4
30008672:	d1ea      	bne.n	3000864a <PSRAM_calibration+0x6e>
30008674:	2218      	movs	r2, #24
30008676:	493b      	ldr	r1, [pc, #236]	; (30008764 <PSRAM_calibration+0x188>)
30008678:	a80c      	add	r0, sp, #48	; 0x30
3000867a:	4b3b      	ldr	r3, [pc, #236]	; (30008768 <PSRAM_calibration+0x18c>)
3000867c:	4798      	blx	r3
3000867e:	b9b0      	cbnz	r0, 300086ae <PSRAM_calibration+0xd2>
30008680:	f1b6 3fff 	cmp.w	r6, #4294967295	; 0xffffffff
30008684:	bf08      	it	eq
30008686:	4646      	moveq	r6, r8
30008688:	f1b8 0f1f 	cmp.w	r8, #31
3000868c:	eb06 0b07 	add.w	fp, r6, r7
30008690:	f107 0701 	add.w	r7, r7, #1
30008694:	d102      	bne.n	3000869c <PSRAM_calibration+0xc0>
30008696:	9b04      	ldr	r3, [sp, #16]
30008698:	429f      	cmp	r7, r3
3000869a:	dc1d      	bgt.n	300086d8 <PSRAM_calibration+0xfc>
3000869c:	f108 0801 	add.w	r8, r8, #1
300086a0:	f1b8 0f20 	cmp.w	r8, #32
300086a4:	d1c9      	bne.n	3000863a <PSRAM_calibration+0x5e>
300086a6:	9f04      	ldr	r7, [sp, #16]
300086a8:	e9dd 6b07 	ldrd	r6, fp, [sp, #28]
300086ac:	e016      	b.n	300086dc <PSRAM_calibration+0x100>
300086ae:	1c73      	adds	r3, r6, #1
300086b0:	d0f4      	beq.n	3000869c <PSRAM_calibration+0xc0>
300086b2:	9b04      	ldr	r3, [sp, #16]
300086b4:	42bb      	cmp	r3, r7
300086b6:	da0a      	bge.n	300086ce <PSRAM_calibration+0xf2>
300086b8:	9b05      	ldr	r3, [sp, #20]
300086ba:	f8cd b020 	str.w	fp, [sp, #32]
300086be:	f04f 3bff 	mov.w	fp, #4294967295	; 0xffffffff
300086c2:	9704      	str	r7, [sp, #16]
300086c4:	2700      	movs	r7, #0
300086c6:	9607      	str	r6, [sp, #28]
300086c8:	465e      	mov	r6, fp
300086ca:	9306      	str	r3, [sp, #24]
300086cc:	e7e6      	b.n	3000869c <PSRAM_calibration+0xc0>
300086ce:	f04f 3bff 	mov.w	fp, #4294967295	; 0xffffffff
300086d2:	2700      	movs	r7, #0
300086d4:	465e      	mov	r6, fp
300086d6:	e7e1      	b.n	3000869c <PSRAM_calibration+0xc0>
300086d8:	9b05      	ldr	r3, [sp, #20]
300086da:	9306      	str	r3, [sp, #24]
300086dc:	9b05      	ldr	r3, [sp, #20]
300086de:	005b      	lsls	r3, r3, #1
300086e0:	9305      	str	r3, [sp, #20]
300086e2:	9b09      	ldr	r3, [sp, #36]	; 0x24
300086e4:	3b01      	subs	r3, #1
300086e6:	9309      	str	r3, [sp, #36]	; 0x24
300086e8:	d19b      	bne.n	30008622 <PSRAM_calibration+0x46>
300086ea:	9b06      	ldr	r3, [sp, #24]
300086ec:	2249      	movs	r2, #73	; 0x49
300086ee:	491f      	ldr	r1, [pc, #124]	; (3000876c <PSRAM_calibration+0x190>)
300086f0:	2004      	movs	r0, #4
300086f2:	e9cd 7302 	strd	r7, r3, [sp, #8]
300086f6:	e9cd 6b00 	strd	r6, fp, [sp]
300086fa:	4b1d      	ldr	r3, [pc, #116]	; (30008770 <PSRAM_calibration+0x194>)
300086fc:	f000 fe26 	bl	3000934c <rtk_log_write>
30008700:	2f08      	cmp	r7, #8
30008702:	dd24      	ble.n	3000874e <PSRAM_calibration+0x172>
30008704:	ebbb 0306 	subs.w	r3, fp, r6
30008708:	9806      	ldr	r0, [sp, #24]
3000870a:	bf48      	it	mi
3000870c:	3301      	addmi	r3, #1
3000870e:	eb1b 0606 	adds.w	r6, fp, r6
30008712:	ea4f 0363 	mov.w	r3, r3, asr #1
30008716:	bf48      	it	mi
30008718:	3601      	addmi	r6, #1
3000871a:	1e9a      	subs	r2, r3, #2
3000871c:	9b0a      	ldr	r3, [sp, #40]	; 0x28
3000871e:	f003 617f 	and.w	r1, r3, #267386880	; 0xff00000
30008722:	0414      	lsls	r4, r2, #16
30008724:	f3c6 0344 	ubfx	r3, r6, #1, #5
30008728:	0212      	lsls	r2, r2, #8
3000872a:	ea41 7100 	orr.w	r1, r1, r0, lsl #28
3000872e:	f404 2470 	and.w	r4, r4, #983040	; 0xf0000
30008732:	f402 6270 	and.w	r2, r2, #3840	; 0xf00
30008736:	2001      	movs	r0, #1
30008738:	430b      	orrs	r3, r1
3000873a:	490e      	ldr	r1, [pc, #56]	; (30008774 <PSRAM_calibration+0x198>)
3000873c:	4323      	orrs	r3, r4
3000873e:	4313      	orrs	r3, r2
30008740:	604b      	str	r3, [r1, #4]
30008742:	680b      	ldr	r3, [r1, #0]
30008744:	4303      	orrs	r3, r0
30008746:	600b      	str	r3, [r1, #0]
30008748:	b013      	add	sp, #76	; 0x4c
3000874a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
3000874e:	9809      	ldr	r0, [sp, #36]	; 0x24
30008750:	b013      	add	sp, #76	; 0x4c
30008752:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30008756:	bf00      	nop
30008758:	0fffffe0 	.word	0x0fffffe0
3000875c:	e000ed00 	.word	0xe000ed00
30008760:	601e0000 	.word	0x601e0000
30008764:	3000dfd8 	.word	0x3000dfd8
30008768:	000129bd 	.word	0x000129bd
3000876c:	3000c4c4 	.word	0x3000c4c4
30008770:	3000c4cc 	.word	0x3000c4cc
30008774:	41002000 	.word	0x41002000

30008778 <PSRAM_AutoGating>:
30008778:	b1c0      	cbz	r0, 300087ac <PSRAM_AutoGating+0x34>
3000877a:	f04f 4382 	mov.w	r3, #1090519040	; 0x41000000
3000877e:	4810      	ldr	r0, [pc, #64]	; (300087c0 <PSRAM_AutoGating+0x48>)
30008780:	f3c1 0108 	ubfx	r1, r1, #0, #9
30008784:	0252      	lsls	r2, r2, #9
30008786:	b410      	push	{r4}
30008788:	f8d3 41e4 	ldr.w	r4, [r3, #484]	; 0x1e4
3000878c:	f402 5278 	and.w	r2, r2, #15872	; 0x3e00
30008790:	4020      	ands	r0, r4
30008792:	4301      	orrs	r1, r0
30008794:	430a      	orrs	r2, r1
30008796:	f8c3 21e4 	str.w	r2, [r3, #484]	; 0x1e4
3000879a:	f8d3 21e0 	ldr.w	r2, [r3, #480]	; 0x1e0
3000879e:	f042 0201 	orr.w	r2, r2, #1
300087a2:	f8c3 21e0 	str.w	r2, [r3, #480]	; 0x1e0
300087a6:	f85d 4b04 	ldr.w	r4, [sp], #4
300087aa:	4770      	bx	lr
300087ac:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
300087b0:	f8d2 31e0 	ldr.w	r3, [r2, #480]	; 0x1e0
300087b4:	f023 0301 	bic.w	r3, r3, #1
300087b8:	f8c2 31e0 	str.w	r3, [r2, #480]	; 0x1e0
300087bc:	4770      	bx	lr
300087be:	bf00      	nop
300087c0:	ffffc000 	.word	0xffffc000

300087c4 <SDM32K_Enable>:
300087c4:	4b04      	ldr	r3, [pc, #16]	; (300087d8 <SDM32K_Enable+0x14>)
300087c6:	f44f 11f0 	mov.w	r1, #1966080	; 0x1e0000
300087ca:	4a04      	ldr	r2, [pc, #16]	; (300087dc <SDM32K_Enable+0x18>)
300087cc:	61d9      	str	r1, [r3, #28]
300087ce:	6819      	ldr	r1, [r3, #0]
300087d0:	430a      	orrs	r2, r1
300087d2:	601a      	str	r2, [r3, #0]
300087d4:	4770      	bx	lr
300087d6:	bf00      	nop
300087d8:	42008e00 	.word	0x42008e00
300087dc:	c0060000 	.word	0xc0060000

300087e0 <CLK_SWITCH_XTAL>:
300087e0:	b508      	push	{r3, lr}
300087e2:	2801      	cmp	r0, #1
300087e4:	4b0a      	ldr	r3, [pc, #40]	; (30008810 <CLK_SWITCH_XTAL+0x30>)
300087e6:	f8d3 2224 	ldr.w	r2, [r3, #548]	; 0x224
300087ea:	d00d      	beq.n	30008808 <CLK_SWITCH_XTAL+0x28>
300087ec:	4b09      	ldr	r3, [pc, #36]	; (30008814 <CLK_SWITCH_XTAL+0x34>)
300087ee:	4313      	orrs	r3, r2
300087f0:	4907      	ldr	r1, [pc, #28]	; (30008810 <CLK_SWITCH_XTAL+0x30>)
300087f2:	4a09      	ldr	r2, [pc, #36]	; (30008818 <CLK_SWITCH_XTAL+0x38>)
300087f4:	f8c1 3224 	str.w	r3, [r1, #548]	; 0x224
300087f8:	4790      	blx	r2
300087fa:	4a08      	ldr	r2, [pc, #32]	; (3000881c <CLK_SWITCH_XTAL+0x3c>)
300087fc:	4b08      	ldr	r3, [pc, #32]	; (30008820 <CLK_SWITCH_XTAL+0x40>)
300087fe:	fba2 2000 	umull	r2, r0, r2, r0
30008802:	0c80      	lsrs	r0, r0, #18
30008804:	6018      	str	r0, [r3, #0]
30008806:	bd08      	pop	{r3, pc}
30008808:	4b06      	ldr	r3, [pc, #24]	; (30008824 <CLK_SWITCH_XTAL+0x44>)
3000880a:	4013      	ands	r3, r2
3000880c:	e7f0      	b.n	300087f0 <CLK_SWITCH_XTAL+0x10>
3000880e:	bf00      	nop
30008810:	42008000 	.word	0x42008000
30008814:	80000500 	.word	0x80000500
30008818:	3000a30d 	.word	0x3000a30d
3000881c:	431bde83 	.word	0x431bde83
30008820:	2001c700 	.word	0x2001c700
30008824:	7ffffaff 	.word	0x7ffffaff

30008828 <SWR_MEM>:
30008828:	2801      	cmp	r0, #1
3000882a:	d00e      	beq.n	3000884a <SWR_MEM+0x22>
3000882c:	4b31      	ldr	r3, [pc, #196]	; (300088f4 <SWR_MEM+0xcc>)
3000882e:	2000      	movs	r0, #0
30008830:	f8d3 20c0 	ldr.w	r2, [r3, #192]	; 0xc0
30008834:	f022 0201 	bic.w	r2, r2, #1
30008838:	f8c3 20c0 	str.w	r2, [r3, #192]	; 0xc0
3000883c:	f8d3 20c0 	ldr.w	r2, [r3, #192]	; 0xc0
30008840:	f022 0202 	bic.w	r2, r2, #2
30008844:	f8c3 20c0 	str.w	r2, [r3, #192]	; 0xc0
30008848:	4770      	bx	lr
3000884a:	b510      	push	{r4, lr}
3000884c:	4c29      	ldr	r4, [pc, #164]	; (300088f4 <SWR_MEM+0xcc>)
3000884e:	4a2a      	ldr	r2, [pc, #168]	; (300088f8 <SWR_MEM+0xd0>)
30008850:	f8d4 30e4 	ldr.w	r3, [r4, #228]	; 0xe4
30008854:	f423 5340 	bic.w	r3, r3, #12288	; 0x3000
30008858:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
3000885c:	f8c4 30e4 	str.w	r3, [r4, #228]	; 0xe4
30008860:	f8d4 30d0 	ldr.w	r3, [r4, #208]	; 0xd0
30008864:	f023 0330 	bic.w	r3, r3, #48	; 0x30
30008868:	f8c4 30d0 	str.w	r3, [r4, #208]	; 0xd0
3000886c:	f8d4 30d8 	ldr.w	r3, [r4, #216]	; 0xd8
30008870:	f023 0303 	bic.w	r3, r3, #3
30008874:	f8c4 30d8 	str.w	r3, [r4, #216]	; 0xd8
30008878:	f8d4 30d0 	ldr.w	r3, [r4, #208]	; 0xd0
3000887c:	f023 7370 	bic.w	r3, r3, #62914560	; 0x3c00000
30008880:	f8c4 30d0 	str.w	r3, [r4, #208]	; 0xd0
30008884:	4790      	blx	r2
30008886:	2803      	cmp	r0, #3
30008888:	f8d4 30d8 	ldr.w	r3, [r4, #216]	; 0xd8
3000888c:	d026      	beq.n	300088dc <SWR_MEM+0xb4>
3000888e:	f043 0303 	orr.w	r3, r3, #3
30008892:	f8c4 30d8 	str.w	r3, [r4, #216]	; 0xd8
30008896:	f8d4 30d0 	ldr.w	r3, [r4, #208]	; 0xd0
3000889a:	f043 7340 	orr.w	r3, r3, #50331648	; 0x3000000
3000889e:	f8c4 30d0 	str.w	r3, [r4, #208]	; 0xd0
300088a2:	4c14      	ldr	r4, [pc, #80]	; (300088f4 <SWR_MEM+0xcc>)
300088a4:	4b15      	ldr	r3, [pc, #84]	; (300088fc <SWR_MEM+0xd4>)
300088a6:	4798      	blx	r3
300088a8:	f8d4 30c0 	ldr.w	r3, [r4, #192]	; 0xc0
300088ac:	4a14      	ldr	r2, [pc, #80]	; (30008900 <SWR_MEM+0xd8>)
300088ae:	f44f 7096 	mov.w	r0, #300	; 0x12c
300088b2:	f043 0302 	orr.w	r3, r3, #2
300088b6:	f8c4 30c0 	str.w	r3, [r4, #192]	; 0xc0
300088ba:	4790      	blx	r2
300088bc:	f8d4 20c0 	ldr.w	r2, [r4, #192]	; 0xc0
300088c0:	4b10      	ldr	r3, [pc, #64]	; (30008904 <SWR_MEM+0xdc>)
300088c2:	f042 0201 	orr.w	r2, r2, #1
300088c6:	f8c4 20c0 	str.w	r2, [r4, #192]	; 0xc0
300088ca:	e001      	b.n	300088d0 <SWR_MEM+0xa8>
300088cc:	3b01      	subs	r3, #1
300088ce:	d00e      	beq.n	300088ee <SWR_MEM+0xc6>
300088d0:	f8d4 20c0 	ldr.w	r2, [r4, #192]	; 0xc0
300088d4:	03d2      	lsls	r2, r2, #15
300088d6:	d5f9      	bpl.n	300088cc <SWR_MEM+0xa4>
300088d8:	2000      	movs	r0, #0
300088da:	bd10      	pop	{r4, pc}
300088dc:	f8c4 30d8 	str.w	r3, [r4, #216]	; 0xd8
300088e0:	f8d4 30d0 	ldr.w	r3, [r4, #208]	; 0xd0
300088e4:	f443 0340 	orr.w	r3, r3, #12582912	; 0xc00000
300088e8:	f8c4 30d0 	str.w	r3, [r4, #208]	; 0xd0
300088ec:	e7d9      	b.n	300088a2 <SWR_MEM+0x7a>
300088ee:	2001      	movs	r0, #1
300088f0:	bd10      	pop	{r4, pc}
300088f2:	bf00      	nop
300088f4:	42008800 	.word	0x42008800
300088f8:	30009ffd 	.word	0x30009ffd
300088fc:	30008bd9 	.word	0x30008bd9
30008900:	00009b2d 	.word	0x00009b2d
30008904:	000186a0 	.word	0x000186a0

30008908 <SWR_MEM_Manual>:
30008908:	4a06      	ldr	r2, [pc, #24]	; (30008924 <SWR_MEM_Manual+0x1c>)
3000890a:	f8d2 30c0 	ldr.w	r3, [r2, #192]	; 0xc0
3000890e:	b120      	cbz	r0, 3000891a <SWR_MEM_Manual+0x12>
30008910:	f443 2300 	orr.w	r3, r3, #524288	; 0x80000
30008914:	f8c2 30c0 	str.w	r3, [r2, #192]	; 0xc0
30008918:	4770      	bx	lr
3000891a:	f423 2300 	bic.w	r3, r3, #524288	; 0x80000
3000891e:	f8c2 30c0 	str.w	r3, [r2, #192]	; 0xc0
30008922:	4770      	bx	lr
30008924:	42008800 	.word	0x42008800

30008928 <SWR_MEM_Mode_Set>:
30008928:	2801      	cmp	r0, #1
3000892a:	b538      	push	{r3, r4, r5, lr}
3000892c:	d83f      	bhi.n	300089ae <SWR_MEM_Mode_Set+0x86>
3000892e:	d015      	beq.n	3000895c <SWR_MEM_Mode_Set+0x34>
30008930:	4921      	ldr	r1, [pc, #132]	; (300089b8 <SWR_MEM_Mode_Set+0x90>)
30008932:	f8d1 30c0 	ldr.w	r3, [r1, #192]	; 0xc0
30008936:	0358      	lsls	r0, r3, #13
30008938:	d50e      	bpl.n	30008958 <SWR_MEM_Mode_Set+0x30>
3000893a:	f8d1 20d0 	ldr.w	r2, [r1, #208]	; 0xd0
3000893e:	f242 7310 	movw	r3, #10000	; 0x2710
30008942:	f022 0240 	bic.w	r2, r2, #64	; 0x40
30008946:	f8c1 20d0 	str.w	r2, [r1, #208]	; 0xd0
3000894a:	e001      	b.n	30008950 <SWR_MEM_Mode_Set+0x28>
3000894c:	3b01      	subs	r3, #1
3000894e:	d02c      	beq.n	300089aa <SWR_MEM_Mode_Set+0x82>
30008950:	f8d1 20c0 	ldr.w	r2, [r1, #192]	; 0xc0
30008954:	0352      	lsls	r2, r2, #13
30008956:	d4f9      	bmi.n	3000894c <SWR_MEM_Mode_Set+0x24>
30008958:	2000      	movs	r0, #0
3000895a:	bd38      	pop	{r3, r4, r5, pc}
3000895c:	4c16      	ldr	r4, [pc, #88]	; (300089b8 <SWR_MEM_Mode_Set+0x90>)
3000895e:	f8d4 30c0 	ldr.w	r3, [r4, #192]	; 0xc0
30008962:	035b      	lsls	r3, r3, #13
30008964:	d4f8      	bmi.n	30008958 <SWR_MEM_Mode_Set+0x30>
30008966:	f8d4 30d4 	ldr.w	r3, [r4, #212]	; 0xd4
3000896a:	2064      	movs	r0, #100	; 0x64
3000896c:	4d13      	ldr	r5, [pc, #76]	; (300089bc <SWR_MEM_Mode_Set+0x94>)
3000896e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
30008972:	f8c4 30d4 	str.w	r3, [r4, #212]	; 0xd4
30008976:	47a8      	blx	r5
30008978:	f8d4 30d0 	ldr.w	r3, [r4, #208]	; 0xd0
3000897c:	2064      	movs	r0, #100	; 0x64
3000897e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
30008982:	f8c4 30d0 	str.w	r3, [r4, #208]	; 0xd0
30008986:	47a8      	blx	r5
30008988:	f8d4 20d4 	ldr.w	r2, [r4, #212]	; 0xd4
3000898c:	f242 7310 	movw	r3, #10000	; 0x2710
30008990:	f422 7280 	bic.w	r2, r2, #256	; 0x100
30008994:	f8c4 20d4 	str.w	r2, [r4, #212]	; 0xd4
30008998:	e001      	b.n	3000899e <SWR_MEM_Mode_Set+0x76>
3000899a:	3b01      	subs	r3, #1
3000899c:	d005      	beq.n	300089aa <SWR_MEM_Mode_Set+0x82>
3000899e:	f8d4 20c0 	ldr.w	r2, [r4, #192]	; 0xc0
300089a2:	0355      	lsls	r5, r2, #13
300089a4:	d5f9      	bpl.n	3000899a <SWR_MEM_Mode_Set+0x72>
300089a6:	2000      	movs	r0, #0
300089a8:	e7d7      	b.n	3000895a <SWR_MEM_Mode_Set+0x32>
300089aa:	2001      	movs	r0, #1
300089ac:	bd38      	pop	{r3, r4, r5, pc}
300089ae:	217a      	movs	r1, #122	; 0x7a
300089b0:	4803      	ldr	r0, [pc, #12]	; (300089c0 <SWR_MEM_Mode_Set+0x98>)
300089b2:	f002 fafd 	bl	3000afb0 <io_assert_failed>
300089b6:	bf00      	nop
300089b8:	42008800 	.word	0x42008800
300089bc:	00009b2d 	.word	0x00009b2d
300089c0:	3000c504 	.word	0x3000c504

300089c4 <SWR_AUDIO>:
300089c4:	2801      	cmp	r0, #1
300089c6:	d00e      	beq.n	300089e6 <SWR_AUDIO+0x22>
300089c8:	4b1e      	ldr	r3, [pc, #120]	; (30008a44 <SWR_AUDIO+0x80>)
300089ca:	2000      	movs	r0, #0
300089cc:	f8d3 2080 	ldr.w	r2, [r3, #128]	; 0x80
300089d0:	f022 0201 	bic.w	r2, r2, #1
300089d4:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
300089d8:	f8d3 2080 	ldr.w	r2, [r3, #128]	; 0x80
300089dc:	f022 0202 	bic.w	r2, r2, #2
300089e0:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
300089e4:	4770      	bx	lr
300089e6:	b510      	push	{r4, lr}
300089e8:	4c16      	ldr	r4, [pc, #88]	; (30008a44 <SWR_AUDIO+0x80>)
300089ea:	4b17      	ldr	r3, [pc, #92]	; (30008a48 <SWR_AUDIO+0x84>)
300089ec:	4798      	blx	r3
300089ee:	f8d4 30a4 	ldr.w	r3, [r4, #164]	; 0xa4
300089f2:	4a16      	ldr	r2, [pc, #88]	; (30008a4c <SWR_AUDIO+0x88>)
300089f4:	f44f 7096 	mov.w	r0, #300	; 0x12c
300089f8:	f423 5340 	bic.w	r3, r3, #12288	; 0x3000
300089fc:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
30008a00:	f8c4 30a4 	str.w	r3, [r4, #164]	; 0xa4
30008a04:	f8d4 3090 	ldr.w	r3, [r4, #144]	; 0x90
30008a08:	f023 0330 	bic.w	r3, r3, #48	; 0x30
30008a0c:	f8c4 3090 	str.w	r3, [r4, #144]	; 0x90
30008a10:	f8d4 3080 	ldr.w	r3, [r4, #128]	; 0x80
30008a14:	f043 0302 	orr.w	r3, r3, #2
30008a18:	f8c4 3080 	str.w	r3, [r4, #128]	; 0x80
30008a1c:	4790      	blx	r2
30008a1e:	f8d4 2080 	ldr.w	r2, [r4, #128]	; 0x80
30008a22:	4b0b      	ldr	r3, [pc, #44]	; (30008a50 <SWR_AUDIO+0x8c>)
30008a24:	f042 0201 	orr.w	r2, r2, #1
30008a28:	f8c4 2080 	str.w	r2, [r4, #128]	; 0x80
30008a2c:	e001      	b.n	30008a32 <SWR_AUDIO+0x6e>
30008a2e:	3b01      	subs	r3, #1
30008a30:	d005      	beq.n	30008a3e <SWR_AUDIO+0x7a>
30008a32:	f8d4 2080 	ldr.w	r2, [r4, #128]	; 0x80
30008a36:	03d2      	lsls	r2, r2, #15
30008a38:	d5f9      	bpl.n	30008a2e <SWR_AUDIO+0x6a>
30008a3a:	2000      	movs	r0, #0
30008a3c:	bd10      	pop	{r4, pc}
30008a3e:	2001      	movs	r0, #1
30008a40:	bd10      	pop	{r4, pc}
30008a42:	bf00      	nop
30008a44:	42008800 	.word	0x42008800
30008a48:	30008d35 	.word	0x30008d35
30008a4c:	00009b2d 	.word	0x00009b2d
30008a50:	000186a0 	.word	0x000186a0

30008a54 <SWR_AUDIO_Manual>:
30008a54:	4a06      	ldr	r2, [pc, #24]	; (30008a70 <SWR_AUDIO_Manual+0x1c>)
30008a56:	f8d2 3080 	ldr.w	r3, [r2, #128]	; 0x80
30008a5a:	b120      	cbz	r0, 30008a66 <SWR_AUDIO_Manual+0x12>
30008a5c:	f443 2300 	orr.w	r3, r3, #524288	; 0x80000
30008a60:	f8c2 3080 	str.w	r3, [r2, #128]	; 0x80
30008a64:	4770      	bx	lr
30008a66:	f423 2300 	bic.w	r3, r3, #524288	; 0x80000
30008a6a:	f8c2 3080 	str.w	r3, [r2, #128]	; 0x80
30008a6e:	4770      	bx	lr
30008a70:	42008800 	.word	0x42008800

30008a74 <SWR_BST_MODE_Set>:
30008a74:	4a06      	ldr	r2, [pc, #24]	; (30008a90 <SWR_BST_MODE_Set+0x1c>)
30008a76:	6813      	ldr	r3, [r2, #0]
30008a78:	b118      	cbz	r0, 30008a82 <SWR_BST_MODE_Set+0xe>
30008a7a:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
30008a7e:	6013      	str	r3, [r2, #0]
30008a80:	4770      	bx	lr
30008a82:	f423 1340 	bic.w	r3, r3, #3145728	; 0x300000
30008a86:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
30008a8a:	6013      	str	r3, [r2, #0]
30008a8c:	4770      	bx	lr
30008a8e:	bf00      	nop
30008a90:	42008100 	.word	0x42008100

30008a94 <OTP_Read8>:
30008a94:	f5b0 6f00 	cmp.w	r0, #2048	; 0x800
30008a98:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
30008a9c:	4689      	mov	r9, r1
30008a9e:	b083      	sub	sp, #12
30008aa0:	d260      	bcs.n	30008b64 <OTP_Read8+0xd0>
30008aa2:	4b33      	ldr	r3, [pc, #204]	; (30008b70 <OTP_Read8+0xdc>)
30008aa4:	4680      	mov	r8, r0
30008aa6:	4a33      	ldr	r2, [pc, #204]	; (30008b74 <OTP_Read8+0xe0>)
30008aa8:	e843 f300 	tt	r3, r3
30008aac:	f413 0f80 	tst.w	r3, #4194304	; 0x400000
30008ab0:	4d31      	ldr	r5, [pc, #196]	; (30008b78 <OTP_Read8+0xe4>)
30008ab2:	4e32      	ldr	r6, [pc, #200]	; (30008b7c <OTP_Read8+0xe8>)
30008ab4:	bf18      	it	ne
30008ab6:	4615      	movne	r5, r2
30008ab8:	4c31      	ldr	r4, [pc, #196]	; (30008b80 <OTP_Read8+0xec>)
30008aba:	e001      	b.n	30008ac0 <OTP_Read8+0x2c>
30008abc:	f000 fc6e 	bl	3000939c <rtk_log_write_nano>
30008ac0:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
30008ac4:	2002      	movs	r0, #2
30008ac6:	f000 fa89 	bl	30008fdc <IPC_SEMTake>
30008aca:	2801      	cmp	r0, #1
30008acc:	4633      	mov	r3, r6
30008ace:	f04f 0245 	mov.w	r2, #69	; 0x45
30008ad2:	4621      	mov	r1, r4
30008ad4:	f04f 0002 	mov.w	r0, #2
30008ad8:	d1f0      	bne.n	30008abc <OTP_Read8+0x28>
30008ada:	4b2a      	ldr	r3, [pc, #168]	; (30008b84 <OTP_Read8+0xf0>)
30008adc:	681a      	ldr	r2, [r3, #0]
30008ade:	07d2      	lsls	r2, r2, #31
30008ae0:	d52d      	bpl.n	30008b3e <OTP_Read8+0xaa>
30008ae2:	f04f 4284 	mov.w	r2, #1107296256	; 0x42000000
30008ae6:	6953      	ldr	r3, [r2, #20]
30008ae8:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
30008aec:	6153      	str	r3, [r2, #20]
30008aee:	ea4f 2308 	mov.w	r3, r8, lsl #8
30008af2:	602b      	str	r3, [r5, #0]
30008af4:	682b      	ldr	r3, [r5, #0]
30008af6:	2b00      	cmp	r3, #0
30008af8:	db10      	blt.n	30008b1c <OTP_Read8+0x88>
30008afa:	2400      	movs	r4, #0
30008afc:	4e22      	ldr	r6, [pc, #136]	; (30008b88 <OTP_Read8+0xf4>)
30008afe:	f644 6720 	movw	r7, #20000	; 0x4e20
30008b02:	e001      	b.n	30008b08 <OTP_Read8+0x74>
30008b04:	42bc      	cmp	r4, r7
30008b06:	d01f      	beq.n	30008b48 <OTP_Read8+0xb4>
30008b08:	2005      	movs	r0, #5
30008b0a:	3401      	adds	r4, #1
30008b0c:	47b0      	blx	r6
30008b0e:	682b      	ldr	r3, [r5, #0]
30008b10:	2b00      	cmp	r3, #0
30008b12:	daf7      	bge.n	30008b04 <OTP_Read8+0x70>
30008b14:	f644 6320 	movw	r3, #20000	; 0x4e20
30008b18:	429c      	cmp	r4, r3
30008b1a:	d015      	beq.n	30008b48 <OTP_Read8+0xb4>
30008b1c:	682b      	ldr	r3, [r5, #0]
30008b1e:	2400      	movs	r4, #0
30008b20:	f889 3000 	strb.w	r3, [r9]
30008b24:	f04f 4284 	mov.w	r2, #1107296256	; 0x42000000
30008b28:	2002      	movs	r0, #2
30008b2a:	6953      	ldr	r3, [r2, #20]
30008b2c:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
30008b30:	6153      	str	r3, [r2, #20]
30008b32:	f000 faa7 	bl	30009084 <IPC_SEMFree>
30008b36:	4620      	mov	r0, r4
30008b38:	b003      	add	sp, #12
30008b3a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
30008b3e:	681a      	ldr	r2, [r3, #0]
30008b40:	f042 0201 	orr.w	r2, r2, #1
30008b44:	601a      	str	r2, [r3, #0]
30008b46:	e7cc      	b.n	30008ae2 <OTP_Read8+0x4e>
30008b48:	21ff      	movs	r1, #255	; 0xff
30008b4a:	f8cd 8000 	str.w	r8, [sp]
30008b4e:	4b0f      	ldr	r3, [pc, #60]	; (30008b8c <OTP_Read8+0xf8>)
30008b50:	2245      	movs	r2, #69	; 0x45
30008b52:	f889 1000 	strb.w	r1, [r9]
30008b56:	2002      	movs	r0, #2
30008b58:	4909      	ldr	r1, [pc, #36]	; (30008b80 <OTP_Read8+0xec>)
30008b5a:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
30008b5e:	f000 fc1d 	bl	3000939c <rtk_log_write_nano>
30008b62:	e7df      	b.n	30008b24 <OTP_Read8+0x90>
30008b64:	23ff      	movs	r3, #255	; 0xff
30008b66:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
30008b6a:	700b      	strb	r3, [r1, #0]
30008b6c:	e7e3      	b.n	30008b36 <OTP_Read8+0xa2>
30008b6e:	bf00      	nop
30008b70:	3000aba9 	.word	0x3000aba9
30008b74:	5200000c 	.word	0x5200000c
30008b78:	42000008 	.word	0x42000008
30008b7c:	3000c590 	.word	0x3000c590
30008b80:	3000c5ac 	.word	0x3000c5ac
30008b84:	42008000 	.word	0x42008000
30008b88:	00009b2d 	.word	0x00009b2d
30008b8c:	3000c5b0 	.word	0x3000c5b0

30008b90 <SWR_Calib_DCore>:
30008b90:	4b0f      	ldr	r3, [pc, #60]	; (30008bd0 <SWR_Calib_DCore+0x40>)
30008b92:	f240 3231 	movw	r2, #817	; 0x331
30008b96:	490f      	ldr	r1, [pc, #60]	; (30008bd4 <SWR_Calib_DCore+0x44>)
30008b98:	6d18      	ldr	r0, [r3, #80]	; 0x50
30008b9a:	4001      	ands	r1, r0
30008b9c:	430a      	orrs	r2, r1
30008b9e:	651a      	str	r2, [r3, #80]	; 0x50
30008ba0:	6c1a      	ldr	r2, [r3, #64]	; 0x40
30008ba2:	f442 22c0 	orr.w	r2, r2, #393216	; 0x60000
30008ba6:	641a      	str	r2, [r3, #64]	; 0x40
30008ba8:	f8d3 2084 	ldr.w	r2, [r3, #132]	; 0x84
30008bac:	f042 0201 	orr.w	r2, r2, #1
30008bb0:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
30008bb4:	f8d3 2090 	ldr.w	r2, [r3, #144]	; 0x90
30008bb8:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
30008bbc:	f8c3 2090 	str.w	r2, [r3, #144]	; 0x90
30008bc0:	685a      	ldr	r2, [r3, #4]
30008bc2:	f022 02ff 	bic.w	r2, r2, #255	; 0xff
30008bc6:	f042 0204 	orr.w	r2, r2, #4
30008bca:	605a      	str	r2, [r3, #4]
30008bcc:	4770      	bx	lr
30008bce:	bf00      	nop
30008bd0:	42008100 	.word	0x42008100
30008bd4:	fffffccc 	.word	0xfffffccc

30008bd8 <SWR_Calib_MEM>:
30008bd8:	4b51      	ldr	r3, [pc, #324]	; (30008d20 <SWR_Calib_MEM+0x148>)
30008bda:	f240 3231 	movw	r2, #817	; 0x331
30008bde:	4951      	ldr	r1, [pc, #324]	; (30008d24 <SWR_Calib_MEM+0x14c>)
30008be0:	f04f 0c00 	mov.w	ip, #0
30008be4:	b510      	push	{r4, lr}
30008be6:	f8d3 00e0 	ldr.w	r0, [r3, #224]	; 0xe0
30008bea:	b082      	sub	sp, #8
30008bec:	4001      	ands	r1, r0
30008bee:	f240 70e4 	movw	r0, #2020	; 0x7e4
30008bf2:	430a      	orrs	r2, r1
30008bf4:	f10d 0107 	add.w	r1, sp, #7
30008bf8:	f8c3 20e0 	str.w	r2, [r3, #224]	; 0xe0
30008bfc:	f8d3 20d0 	ldr.w	r2, [r3, #208]	; 0xd0
30008c00:	f442 22c0 	orr.w	r2, r2, #393216	; 0x60000
30008c04:	f8c3 20d0 	str.w	r2, [r3, #208]	; 0xd0
30008c08:	f8d3 20f8 	ldr.w	r2, [r3, #248]	; 0xf8
30008c0c:	f042 0201 	orr.w	r2, r2, #1
30008c10:	f8c3 20f8 	str.w	r2, [r3, #248]	; 0xf8
30008c14:	f8d3 20fc 	ldr.w	r2, [r3, #252]	; 0xfc
30008c18:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
30008c1c:	f8c3 20fc 	str.w	r2, [r3, #252]	; 0xfc
30008c20:	f88d c007 	strb.w	ip, [sp, #7]
30008c24:	f7ff ff36 	bl	30008a94 <OTP_Read8>
30008c28:	f89d 3007 	ldrb.w	r3, [sp, #7]
30008c2c:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
30008c30:	2af0      	cmp	r2, #240	; 0xf0
30008c32:	d156      	bne.n	30008ce2 <SWR_Calib_MEM+0x10a>
30008c34:	f003 030f 	and.w	r3, r3, #15
30008c38:	2b0f      	cmp	r3, #15
30008c3a:	d04e      	beq.n	30008cda <SWR_Calib_MEM+0x102>
30008c3c:	2302      	movs	r3, #2
30008c3e:	4c3a      	ldr	r4, [pc, #232]	; (30008d28 <SWR_Calib_MEM+0x150>)
30008c40:	f10d 0106 	add.w	r1, sp, #6
30008c44:	f240 70e4 	movw	r0, #2020	; 0x7e4
30008c48:	7023      	strb	r3, [r4, #0]
30008c4a:	f7ff ff23 	bl	30008a94 <OTP_Read8>
30008c4e:	7822      	ldrb	r2, [r4, #0]
30008c50:	f89d 3006 	ldrb.w	r3, [sp, #6]
30008c54:	2a03      	cmp	r2, #3
30008c56:	d05a      	beq.n	30008d0e <SWR_Calib_MEM+0x136>
30008c58:	2a02      	cmp	r2, #2
30008c5a:	bf0c      	ite	eq
30008c5c:	f003 030f 	andeq.w	r3, r3, #15
30008c60:	2300      	movne	r3, #0
30008c62:	492f      	ldr	r1, [pc, #188]	; (30008d20 <SWR_Calib_MEM+0x148>)
30008c64:	4831      	ldr	r0, [pc, #196]	; (30008d2c <SWR_Calib_MEM+0x154>)
30008c66:	f8d1 20d0 	ldr.w	r2, [r1, #208]	; 0xd0
30008c6a:	f022 020f 	bic.w	r2, r2, #15
30008c6e:	4313      	orrs	r3, r2
30008c70:	f8c1 30d0 	str.w	r3, [r1, #208]	; 0xd0
30008c74:	6c83      	ldr	r3, [r0, #72]	; 0x48
30008c76:	f3c3 1382 	ubfx	r3, r3, #6, #3
30008c7a:	2b07      	cmp	r3, #7
30008c7c:	d03a      	beq.n	30008cf4 <SWR_Calib_MEM+0x11c>
30008c7e:	2300      	movs	r3, #0
30008c80:	f10d 0107 	add.w	r1, sp, #7
30008c84:	f240 70e5 	movw	r0, #2021	; 0x7e5
30008c88:	f88d 3007 	strb.w	r3, [sp, #7]
30008c8c:	f7ff ff02 	bl	30008a94 <OTP_Read8>
30008c90:	f89d 3007 	ldrb.w	r3, [sp, #7]
30008c94:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
30008c98:	2af0      	cmp	r2, #240	; 0xf0
30008c9a:	d124      	bne.n	30008ce6 <SWR_Calib_MEM+0x10e>
30008c9c:	f003 030f 	and.w	r3, r3, #15
30008ca0:	2b0f      	cmp	r3, #15
30008ca2:	d022      	beq.n	30008cea <SWR_Calib_MEM+0x112>
30008ca4:	2302      	movs	r3, #2
30008ca6:	4c22      	ldr	r4, [pc, #136]	; (30008d30 <SWR_Calib_MEM+0x158>)
30008ca8:	f10d 0107 	add.w	r1, sp, #7
30008cac:	f240 70e5 	movw	r0, #2021	; 0x7e5
30008cb0:	7023      	strb	r3, [r4, #0]
30008cb2:	f7ff feef 	bl	30008a94 <OTP_Read8>
30008cb6:	7822      	ldrb	r2, [r4, #0]
30008cb8:	f89d 3007 	ldrb.w	r3, [sp, #7]
30008cbc:	2a03      	cmp	r2, #3
30008cbe:	d028      	beq.n	30008d12 <SWR_Calib_MEM+0x13a>
30008cc0:	2a02      	cmp	r2, #2
30008cc2:	d029      	beq.n	30008d18 <SWR_Calib_MEM+0x140>
30008cc4:	2300      	movs	r3, #0
30008cc6:	4916      	ldr	r1, [pc, #88]	; (30008d20 <SWR_Calib_MEM+0x148>)
30008cc8:	f8d1 20d0 	ldr.w	r2, [r1, #208]	; 0xd0
30008ccc:	f022 7270 	bic.w	r2, r2, #62914560	; 0x3c00000
30008cd0:	4313      	orrs	r3, r2
30008cd2:	f8c1 30d0 	str.w	r3, [r1, #208]	; 0xd0
30008cd6:	b002      	add	sp, #8
30008cd8:	bd10      	pop	{r4, pc}
30008cda:	4b13      	ldr	r3, [pc, #76]	; (30008d28 <SWR_Calib_MEM+0x150>)
30008cdc:	2201      	movs	r2, #1
30008cde:	701a      	strb	r2, [r3, #0]
30008ce0:	e7cd      	b.n	30008c7e <SWR_Calib_MEM+0xa6>
30008ce2:	2303      	movs	r3, #3
30008ce4:	e7ab      	b.n	30008c3e <SWR_Calib_MEM+0x66>
30008ce6:	2303      	movs	r3, #3
30008ce8:	e7dd      	b.n	30008ca6 <SWR_Calib_MEM+0xce>
30008cea:	4b11      	ldr	r3, [pc, #68]	; (30008d30 <SWR_Calib_MEM+0x158>)
30008cec:	2201      	movs	r2, #1
30008cee:	701a      	strb	r2, [r3, #0]
30008cf0:	b002      	add	sp, #8
30008cf2:	bd10      	pop	{r4, pc}
30008cf4:	6c83      	ldr	r3, [r0, #72]	; 0x48
30008cf6:	f413 6f60 	tst.w	r3, #3584	; 0xe00
30008cfa:	d1c0      	bne.n	30008c7e <SWR_Calib_MEM+0xa6>
30008cfc:	f8d1 30e4 	ldr.w	r3, [r1, #228]	; 0xe4
30008d00:	f423 73e0 	bic.w	r3, r3, #448	; 0x1c0
30008d04:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
30008d08:	f8c1 30e4 	str.w	r3, [r1, #228]	; 0xe4
30008d0c:	e7b7      	b.n	30008c7e <SWR_Calib_MEM+0xa6>
30008d0e:	091b      	lsrs	r3, r3, #4
30008d10:	e7a7      	b.n	30008c62 <SWR_Calib_MEM+0x8a>
30008d12:	091b      	lsrs	r3, r3, #4
30008d14:	059b      	lsls	r3, r3, #22
30008d16:	e7d6      	b.n	30008cc6 <SWR_Calib_MEM+0xee>
30008d18:	f003 030f 	and.w	r3, r3, #15
30008d1c:	059b      	lsls	r3, r3, #22
30008d1e:	e7d2      	b.n	30008cc6 <SWR_Calib_MEM+0xee>
30008d20:	42008800 	.word	0x42008800
30008d24:	fffffccc 	.word	0xfffffccc
30008d28:	3000dff8 	.word	0x3000dff8
30008d2c:	42008100 	.word	0x42008100
30008d30:	3000dff7 	.word	0x3000dff7

30008d34 <SWR_Calib_AUD>:
30008d34:	4b48      	ldr	r3, [pc, #288]	; (30008e58 <SWR_Calib_AUD+0x124>)
30008d36:	f240 3231 	movw	r2, #817	; 0x331
30008d3a:	4948      	ldr	r1, [pc, #288]	; (30008e5c <SWR_Calib_AUD+0x128>)
30008d3c:	f04f 0c00 	mov.w	ip, #0
30008d40:	b510      	push	{r4, lr}
30008d42:	f8d3 00a0 	ldr.w	r0, [r3, #160]	; 0xa0
30008d46:	b082      	sub	sp, #8
30008d48:	4001      	ands	r1, r0
30008d4a:	f240 70e6 	movw	r0, #2022	; 0x7e6
30008d4e:	430a      	orrs	r2, r1
30008d50:	f10d 0107 	add.w	r1, sp, #7
30008d54:	f8c3 20a0 	str.w	r2, [r3, #160]	; 0xa0
30008d58:	f8d3 2090 	ldr.w	r2, [r3, #144]	; 0x90
30008d5c:	f442 22c0 	orr.w	r2, r2, #393216	; 0x60000
30008d60:	f8c3 2090 	str.w	r2, [r3, #144]	; 0x90
30008d64:	f8d3 20b8 	ldr.w	r2, [r3, #184]	; 0xb8
30008d68:	f042 0201 	orr.w	r2, r2, #1
30008d6c:	f8c3 20b8 	str.w	r2, [r3, #184]	; 0xb8
30008d70:	f8d3 20bc 	ldr.w	r2, [r3, #188]	; 0xbc
30008d74:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
30008d78:	f8c3 20bc 	str.w	r2, [r3, #188]	; 0xbc
30008d7c:	f88d c007 	strb.w	ip, [sp, #7]
30008d80:	f7ff fe88 	bl	30008a94 <OTP_Read8>
30008d84:	f89d 3007 	ldrb.w	r3, [sp, #7]
30008d88:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
30008d8c:	2af0      	cmp	r2, #240	; 0xf0
30008d8e:	d150      	bne.n	30008e32 <SWR_Calib_AUD+0xfe>
30008d90:	f003 030f 	and.w	r3, r3, #15
30008d94:	2b0f      	cmp	r3, #15
30008d96:	d048      	beq.n	30008e2a <SWR_Calib_AUD+0xf6>
30008d98:	2302      	movs	r3, #2
30008d9a:	4c31      	ldr	r4, [pc, #196]	; (30008e60 <SWR_Calib_AUD+0x12c>)
30008d9c:	f10d 0106 	add.w	r1, sp, #6
30008da0:	f240 70e6 	movw	r0, #2022	; 0x7e6
30008da4:	7023      	strb	r3, [r4, #0]
30008da6:	f7ff fe75 	bl	30008a94 <OTP_Read8>
30008daa:	7822      	ldrb	r2, [r4, #0]
30008dac:	f89d 3006 	ldrb.w	r3, [sp, #6]
30008db0:	2a03      	cmp	r2, #3
30008db2:	d047      	beq.n	30008e44 <SWR_Calib_AUD+0x110>
30008db4:	2a02      	cmp	r2, #2
30008db6:	bf0c      	ite	eq
30008db8:	f003 030f 	andeq.w	r3, r3, #15
30008dbc:	2300      	movne	r3, #0
30008dbe:	4926      	ldr	r1, [pc, #152]	; (30008e58 <SWR_Calib_AUD+0x124>)
30008dc0:	f8d1 2090 	ldr.w	r2, [r1, #144]	; 0x90
30008dc4:	f022 020f 	bic.w	r2, r2, #15
30008dc8:	4313      	orrs	r3, r2
30008dca:	f8c1 3090 	str.w	r3, [r1, #144]	; 0x90
30008dce:	2300      	movs	r3, #0
30008dd0:	f10d 0107 	add.w	r1, sp, #7
30008dd4:	f240 70e7 	movw	r0, #2023	; 0x7e7
30008dd8:	f88d 3007 	strb.w	r3, [sp, #7]
30008ddc:	f7ff fe5a 	bl	30008a94 <OTP_Read8>
30008de0:	f89d 3007 	ldrb.w	r3, [sp, #7]
30008de4:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
30008de8:	2af0      	cmp	r2, #240	; 0xf0
30008dea:	d124      	bne.n	30008e36 <SWR_Calib_AUD+0x102>
30008dec:	f003 030f 	and.w	r3, r3, #15
30008df0:	2b0f      	cmp	r3, #15
30008df2:	d022      	beq.n	30008e3a <SWR_Calib_AUD+0x106>
30008df4:	2302      	movs	r3, #2
30008df6:	4c1b      	ldr	r4, [pc, #108]	; (30008e64 <SWR_Calib_AUD+0x130>)
30008df8:	f10d 0107 	add.w	r1, sp, #7
30008dfc:	f240 70e7 	movw	r0, #2023	; 0x7e7
30008e00:	7023      	strb	r3, [r4, #0]
30008e02:	f7ff fe47 	bl	30008a94 <OTP_Read8>
30008e06:	7822      	ldrb	r2, [r4, #0]
30008e08:	f89d 3007 	ldrb.w	r3, [sp, #7]
30008e0c:	2a03      	cmp	r2, #3
30008e0e:	d01b      	beq.n	30008e48 <SWR_Calib_AUD+0x114>
30008e10:	2a02      	cmp	r2, #2
30008e12:	d01c      	beq.n	30008e4e <SWR_Calib_AUD+0x11a>
30008e14:	2300      	movs	r3, #0
30008e16:	4910      	ldr	r1, [pc, #64]	; (30008e58 <SWR_Calib_AUD+0x124>)
30008e18:	f8d1 2090 	ldr.w	r2, [r1, #144]	; 0x90
30008e1c:	f022 7270 	bic.w	r2, r2, #62914560	; 0x3c00000
30008e20:	4313      	orrs	r3, r2
30008e22:	f8c1 3090 	str.w	r3, [r1, #144]	; 0x90
30008e26:	b002      	add	sp, #8
30008e28:	bd10      	pop	{r4, pc}
30008e2a:	4b0d      	ldr	r3, [pc, #52]	; (30008e60 <SWR_Calib_AUD+0x12c>)
30008e2c:	2201      	movs	r2, #1
30008e2e:	701a      	strb	r2, [r3, #0]
30008e30:	e7cd      	b.n	30008dce <SWR_Calib_AUD+0x9a>
30008e32:	2303      	movs	r3, #3
30008e34:	e7b1      	b.n	30008d9a <SWR_Calib_AUD+0x66>
30008e36:	2303      	movs	r3, #3
30008e38:	e7dd      	b.n	30008df6 <SWR_Calib_AUD+0xc2>
30008e3a:	4b0a      	ldr	r3, [pc, #40]	; (30008e64 <SWR_Calib_AUD+0x130>)
30008e3c:	2201      	movs	r2, #1
30008e3e:	701a      	strb	r2, [r3, #0]
30008e40:	b002      	add	sp, #8
30008e42:	bd10      	pop	{r4, pc}
30008e44:	091b      	lsrs	r3, r3, #4
30008e46:	e7ba      	b.n	30008dbe <SWR_Calib_AUD+0x8a>
30008e48:	091b      	lsrs	r3, r3, #4
30008e4a:	059b      	lsls	r3, r3, #22
30008e4c:	e7e3      	b.n	30008e16 <SWR_Calib_AUD+0xe2>
30008e4e:	f003 030f 	and.w	r3, r3, #15
30008e52:	059b      	lsls	r3, r3, #22
30008e54:	e7df      	b.n	30008e16 <SWR_Calib_AUD+0xe2>
30008e56:	bf00      	nop
30008e58:	42008800 	.word	0x42008800
30008e5c:	fffffccc 	.word	0xfffffccc
30008e60:	3000dff6 	.word	0x3000dff6
30008e64:	3000dff5 	.word	0x3000dff5

30008e68 <PLL_NP_ClkGet>:
30008e68:	b538      	push	{r3, r4, r5, lr}
30008e6a:	4b0f      	ldr	r3, [pc, #60]	; (30008ea8 <PLL_NP_ClkGet+0x40>)
30008e6c:	4798      	blx	r3
30008e6e:	4b0f      	ldr	r3, [pc, #60]	; (30008eac <PLL_NP_ClkGet+0x44>)
30008e70:	6c59      	ldr	r1, [r3, #68]	; 0x44
30008e72:	6cda      	ldr	r2, [r3, #76]	; 0x4c
30008e74:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
30008e76:	f3c1 1145 	ubfx	r1, r1, #5, #6
30008e7a:	f3c2 4c02 	ubfx	ip, r2, #16, #3
30008e7e:	0cdb      	lsrs	r3, r3, #19
30008e80:	3102      	adds	r1, #2
30008e82:	fba3 4300 	umull	r4, r3, r3, r0
30008e86:	461d      	mov	r5, r3
30008e88:	ea54 355f 	orrs.w	r5, r4, pc, lsr #13
30008e8c:	46a6      	mov	lr, r4
30008e8e:	462c      	mov	r4, r5
30008e90:	fbe0 e40c 	umlal	lr, r4, r0, ip
30008e94:	4672      	mov	r2, lr
30008e96:	4623      	mov	r3, r4
30008e98:	ea52 03df 	orrs.w	r3, r2, pc, lsr #3
30008e9c:	4614      	mov	r4, r2
30008e9e:	fbe1 4300 	umlal	r4, r3, r1, r0
30008ea2:	4620      	mov	r0, r4
30008ea4:	bd38      	pop	{r3, r4, r5, pc}
30008ea6:	bf00      	nop
30008ea8:	000099f5 	.word	0x000099f5
30008eac:	42008800 	.word	0x42008800

30008eb0 <PLL_NP_ClkSet>:
30008eb0:	b570      	push	{r4, r5, r6, lr}
30008eb2:	4604      	mov	r4, r0
30008eb4:	4b1b      	ldr	r3, [pc, #108]	; (30008f24 <PLL_NP_ClkSet+0x74>)
30008eb6:	4798      	blx	r3
30008eb8:	4d1b      	ldr	r5, [pc, #108]	; (30008f28 <PLL_NP_ClkSet+0x78>)
30008eba:	08c2      	lsrs	r2, r0, #3
30008ebc:	fbb4 f3f0 	udiv	r3, r4, r0
30008ec0:	fb00 4c13 	mls	ip, r0, r3, r4
30008ec4:	1e9c      	subs	r4, r3, #2
30008ec6:	6c6b      	ldr	r3, [r5, #68]	; 0x44
30008ec8:	0164      	lsls	r4, r4, #5
30008eca:	f423 63fc 	bic.w	r3, r3, #2016	; 0x7e0
30008ece:	f404 64fc 	and.w	r4, r4, #2016	; 0x7e0
30008ed2:	431c      	orrs	r4, r3
30008ed4:	fbbc f3f2 	udiv	r3, ip, r2
30008ed8:	646c      	str	r4, [r5, #68]	; 0x44
30008eda:	041c      	lsls	r4, r3, #16
30008edc:	fb02 c013 	mls	r0, r2, r3, ip
30008ee0:	2300      	movs	r3, #0
30008ee2:	6cee      	ldr	r6, [r5, #76]	; 0x4c
30008ee4:	f404 24e0 	and.w	r4, r4, #458752	; 0x70000
30008ee8:	4619      	mov	r1, r3
30008eea:	fa1f fc86 	uxth.w	ip, r6
30008eee:	4e0f      	ldr	r6, [pc, #60]	; (30008f2c <PLL_NP_ClkSet+0x7c>)
30008ef0:	ea50 314f 	orrs.w	r1, r0, pc, lsl #13
30008ef4:	ea44 040c 	orr.w	r4, r4, ip
30008ef8:	f002 fb28 	bl	3000b54c <__aeabi_uldivmod>
30008efc:	4603      	mov	r3, r0
30008efe:	2001      	movs	r0, #1
30008f00:	ea44 44c3 	orr.w	r4, r4, r3, lsl #19
30008f04:	64ec      	str	r4, [r5, #76]	; 0x4c
30008f06:	47b0      	blx	r6
30008f08:	6c6b      	ldr	r3, [r5, #68]	; 0x44
30008f0a:	203c      	movs	r0, #60	; 0x3c
30008f0c:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
30008f10:	646b      	str	r3, [r5, #68]	; 0x44
30008f12:	6c6b      	ldr	r3, [r5, #68]	; 0x44
30008f14:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
30008f18:	646b      	str	r3, [r5, #68]	; 0x44
30008f1a:	4633      	mov	r3, r6
30008f1c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
30008f20:	4718      	bx	r3
30008f22:	bf00      	nop
30008f24:	000099f5 	.word	0x000099f5
30008f28:	42008800 	.word	0x42008800
30008f2c:	00009b2d 	.word	0x00009b2d

30008f30 <PLL_AP_ClkSet>:
30008f30:	b510      	push	{r4, lr}
30008f32:	4604      	mov	r4, r0
30008f34:	4b0a      	ldr	r3, [pc, #40]	; (30008f60 <PLL_AP_ClkSet+0x30>)
30008f36:	4798      	blx	r3
30008f38:	fbb4 f0f0 	udiv	r0, r4, r0
30008f3c:	f1a0 0319 	sub.w	r3, r0, #25
30008f40:	2b0f      	cmp	r3, #15
30008f42:	d808      	bhi.n	30008f56 <PLL_AP_ClkSet+0x26>
30008f44:	4a07      	ldr	r2, [pc, #28]	; (30008f64 <PLL_AP_ClkSet+0x34>)
30008f46:	3802      	subs	r0, #2
30008f48:	6953      	ldr	r3, [r2, #20]
30008f4a:	b2c0      	uxtb	r0, r0
30008f4c:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
30008f50:	4318      	orrs	r0, r3
30008f52:	6150      	str	r0, [r2, #20]
30008f54:	bd10      	pop	{r4, pc}
30008f56:	f240 1191 	movw	r1, #401	; 0x191
30008f5a:	4803      	ldr	r0, [pc, #12]	; (30008f68 <PLL_AP_ClkSet+0x38>)
30008f5c:	f002 f828 	bl	3000afb0 <io_assert_failed>
30008f60:	000099f5 	.word	0x000099f5
30008f64:	41000300 	.word	0x41000300
30008f68:	3000c5c4 	.word	0x3000c5c4

30008f6c <PLL_AP>:
30008f6c:	2801      	cmp	r0, #1
30008f6e:	b538      	push	{r3, r4, r5, lr}
30008f70:	d009      	beq.n	30008f86 <PLL_AP+0x1a>
30008f72:	4b13      	ldr	r3, [pc, #76]	; (30008fc0 <PLL_AP+0x54>)
30008f74:	681a      	ldr	r2, [r3, #0]
30008f76:	f022 0209 	bic.w	r2, r2, #9
30008f7a:	601a      	str	r2, [r3, #0]
30008f7c:	681a      	ldr	r2, [r3, #0]
30008f7e:	f022 0206 	bic.w	r2, r2, #6
30008f82:	601a      	str	r2, [r3, #0]
30008f84:	bd38      	pop	{r3, r4, r5, pc}
30008f86:	4b0f      	ldr	r3, [pc, #60]	; (30008fc4 <PLL_AP+0x58>)
30008f88:	6f9a      	ldr	r2, [r3, #120]	; 0x78
30008f8a:	f012 0f05 	tst.w	r2, #5
30008f8e:	d00f      	beq.n	30008fb0 <PLL_AP+0x44>
30008f90:	4d0d      	ldr	r5, [pc, #52]	; (30008fc8 <PLL_AP+0x5c>)
30008f92:	4c0b      	ldr	r4, [pc, #44]	; (30008fc0 <PLL_AP+0x54>)
30008f94:	2001      	movs	r0, #1
30008f96:	6823      	ldr	r3, [r4, #0]
30008f98:	f043 0306 	orr.w	r3, r3, #6
30008f9c:	6023      	str	r3, [r4, #0]
30008f9e:	47a8      	blx	r5
30008fa0:	6823      	ldr	r3, [r4, #0]
30008fa2:	f043 0309 	orr.w	r3, r3, #9
30008fa6:	6023      	str	r3, [r4, #0]
30008fa8:	6863      	ldr	r3, [r4, #4]
30008faa:	2b00      	cmp	r3, #0
30008fac:	dafc      	bge.n	30008fa8 <PLL_AP+0x3c>
30008fae:	bd38      	pop	{r3, r4, r5, pc}
30008fb0:	6f9a      	ldr	r2, [r3, #120]	; 0x78
30008fb2:	20a0      	movs	r0, #160	; 0xa0
30008fb4:	4d04      	ldr	r5, [pc, #16]	; (30008fc8 <PLL_AP+0x5c>)
30008fb6:	f042 0207 	orr.w	r2, r2, #7
30008fba:	679a      	str	r2, [r3, #120]	; 0x78
30008fbc:	47a8      	blx	r5
30008fbe:	e7e8      	b.n	30008f92 <PLL_AP+0x26>
30008fc0:	41000300 	.word	0x41000300
30008fc4:	42008800 	.word	0x42008800
30008fc8:	00009b2d 	.word	0x00009b2d

30008fcc <BOOT_Reason>:
30008fcc:	4b02      	ldr	r3, [pc, #8]	; (30008fd8 <BOOT_Reason+0xc>)
30008fce:	f8b3 0064 	ldrh.w	r0, [r3, #100]	; 0x64
30008fd2:	b280      	uxth	r0, r0
30008fd4:	4770      	bx	lr
30008fd6:	bf00      	nop
30008fd8:	42008200 	.word	0x42008200

30008fdc <IPC_SEMTake>:
30008fdc:	280f      	cmp	r0, #15
30008fde:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
30008fe2:	d83e      	bhi.n	30009062 <IPC_SEMTake+0x86>
30008fe4:	4b21      	ldr	r3, [pc, #132]	; (3000906c <IPC_SEMTake+0x90>)
30008fe6:	4680      	mov	r8, r0
30008fe8:	460c      	mov	r4, r1
30008fea:	681b      	ldr	r3, [r3, #0]
30008fec:	b10b      	cbz	r3, 30008ff2 <IPC_SEMTake+0x16>
30008fee:	2009      	movs	r0, #9
30008ff0:	4798      	blx	r3
30008ff2:	4b1f      	ldr	r3, [pc, #124]	; (30009070 <IPC_SEMTake+0x94>)
30008ff4:	4798      	blx	r3
30008ff6:	2802      	cmp	r0, #2
30008ff8:	d914      	bls.n	30009024 <IPC_SEMTake+0x48>
30008ffa:	4d1e      	ldr	r5, [pc, #120]	; (30009074 <IPC_SEMTake+0x98>)
30008ffc:	4445      	add	r5, r8
30008ffe:	00ad      	lsls	r5, r5, #2
30009000:	682b      	ldr	r3, [r5, #0]
30009002:	b35b      	cbz	r3, 3000905c <IPC_SEMTake+0x80>
30009004:	b15c      	cbz	r4, 3000901e <IPC_SEMTake+0x42>
30009006:	4e1c      	ldr	r6, [pc, #112]	; (30009078 <IPC_SEMTake+0x9c>)
30009008:	e001      	b.n	3000900e <IPC_SEMTake+0x32>
3000900a:	682b      	ldr	r3, [r5, #0]
3000900c:	b333      	cbz	r3, 3000905c <IPC_SEMTake+0x80>
3000900e:	6833      	ldr	r3, [r6, #0]
30009010:	b10b      	cbz	r3, 30009016 <IPC_SEMTake+0x3a>
30009012:	2001      	movs	r0, #1
30009014:	4798      	blx	r3
30009016:	1c63      	adds	r3, r4, #1
30009018:	d0f7      	beq.n	3000900a <IPC_SEMTake+0x2e>
3000901a:	3c01      	subs	r4, #1
3000901c:	d1f5      	bne.n	3000900a <IPC_SEMTake+0x2e>
3000901e:	2000      	movs	r0, #0
30009020:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
30009024:	2201      	movs	r2, #1
30009026:	4e15      	ldr	r6, [pc, #84]	; (3000907c <IPC_SEMTake+0xa0>)
30009028:	4f13      	ldr	r7, [pc, #76]	; (30009078 <IPC_SEMTake+0x9c>)
3000902a:	fa02 f808 	lsl.w	r8, r2, r8
3000902e:	e007      	b.n	30009040 <IPC_SEMTake+0x64>
30009030:	2c00      	cmp	r4, #0
30009032:	d0f4      	beq.n	3000901e <IPC_SEMTake+0x42>
30009034:	683b      	ldr	r3, [r7, #0]
30009036:	b10b      	cbz	r3, 3000903c <IPC_SEMTake+0x60>
30009038:	2001      	movs	r0, #1
3000903a:	4798      	blx	r3
3000903c:	3c01      	subs	r4, #1
3000903e:	d0ee      	beq.n	3000901e <IPC_SEMTake+0x42>
30009040:	f8b6 30f4 	ldrh.w	r3, [r6, #244]	; 0xf4
30009044:	b29b      	uxth	r3, r3
30009046:	ea13 0f08 	tst.w	r3, r8
3000904a:	d1f1      	bne.n	30009030 <IPC_SEMTake+0x54>
3000904c:	ea43 0308 	orr.w	r3, r3, r8
30009050:	2001      	movs	r0, #1
30009052:	b29b      	uxth	r3, r3
30009054:	f8a6 30f4 	strh.w	r3, [r6, #244]	; 0xf4
30009058:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
3000905c:	2001      	movs	r0, #1
3000905e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
30009062:	f44f 718b 	mov.w	r1, #278	; 0x116
30009066:	4806      	ldr	r0, [pc, #24]	; (30009080 <IPC_SEMTake+0xa4>)
30009068:	f001 ffa2 	bl	3000afb0 <io_assert_failed>
3000906c:	3000ead4 	.word	0x3000ead4
30009070:	3000a605 	.word	0x3000a605
30009074:	108020f0 	.word	0x108020f0
30009078:	3000ead0 	.word	0x3000ead0
3000907c:	42008200 	.word	0x42008200
30009080:	3000c650 	.word	0x3000c650

30009084 <IPC_SEMFree>:
30009084:	280f      	cmp	r0, #15
30009086:	b510      	push	{r4, lr}
30009088:	d81b      	bhi.n	300090c2 <IPC_SEMFree+0x3e>
3000908a:	4b10      	ldr	r3, [pc, #64]	; (300090cc <IPC_SEMFree+0x48>)
3000908c:	4604      	mov	r4, r0
3000908e:	4798      	blx	r3
30009090:	2802      	cmp	r0, #2
30009092:	d810      	bhi.n	300090b6 <IPC_SEMFree+0x32>
30009094:	4a0e      	ldr	r2, [pc, #56]	; (300090d0 <IPC_SEMFree+0x4c>)
30009096:	2001      	movs	r0, #1
30009098:	f8b2 30f4 	ldrh.w	r3, [r2, #244]	; 0xf4
3000909c:	40a0      	lsls	r0, r4
3000909e:	b29c      	uxth	r4, r3
300090a0:	ea24 0400 	bic.w	r4, r4, r0
300090a4:	f8a2 40f4 	strh.w	r4, [r2, #244]	; 0xf4
300090a8:	4b0a      	ldr	r3, [pc, #40]	; (300090d4 <IPC_SEMFree+0x50>)
300090aa:	681b      	ldr	r3, [r3, #0]
300090ac:	b10b      	cbz	r3, 300090b2 <IPC_SEMFree+0x2e>
300090ae:	2009      	movs	r0, #9
300090b0:	4798      	blx	r3
300090b2:	2001      	movs	r0, #1
300090b4:	bd10      	pop	{r4, pc}
300090b6:	4b08      	ldr	r3, [pc, #32]	; (300090d8 <IPC_SEMFree+0x54>)
300090b8:	2201      	movs	r2, #1
300090ba:	4423      	add	r3, r4
300090bc:	009b      	lsls	r3, r3, #2
300090be:	601a      	str	r2, [r3, #0]
300090c0:	e7f2      	b.n	300090a8 <IPC_SEMFree+0x24>
300090c2:	f44f 71ac 	mov.w	r1, #344	; 0x158
300090c6:	4805      	ldr	r0, [pc, #20]	; (300090dc <IPC_SEMFree+0x58>)
300090c8:	f001 ff72 	bl	3000afb0 <io_assert_failed>
300090cc:	3000a605 	.word	0x3000a605
300090d0:	42008200 	.word	0x42008200
300090d4:	3000ead8 	.word	0x3000ead8
300090d8:	108020f0 	.word	0x108020f0
300090dc:	3000c650 	.word	0x3000c650

300090e0 <HANDLER_SecureFault>:
300090e0:	f3ef 8088 	mrs	r0, MSP_NS
300090e4:	f3ef 8189 	mrs	r1, PSP_NS
300090e8:	4672      	mov	r2, lr
300090ea:	f3ef 8388 	mrs	r3, MSP_NS
300090ee:	e923 0ff0 	stmdb	r3!, {r4, r5, r6, r7, r8, r9, sl, fp}
300090f2:	f04f 0304 	mov.w	r3, #4
300090f6:	f000 b831 	b.w	3000915c <Fault_Handler>
300090fa:	4770      	bx	lr

300090fc <HANDLER_MemFault>:
300090fc:	f3ef 8008 	mrs	r0, MSP
30009100:	f3ef 8109 	mrs	r1, PSP
30009104:	4672      	mov	r2, lr
30009106:	f04f 0303 	mov.w	r3, #3
3000910a:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
3000910e:	f000 b825 	b.w	3000915c <Fault_Handler>
30009112:	4770      	bx	lr

30009114 <HANDLER_BusFault>:
30009114:	f3ef 8008 	mrs	r0, MSP
30009118:	f3ef 8109 	mrs	r1, PSP
3000911c:	4672      	mov	r2, lr
3000911e:	f04f 0302 	mov.w	r3, #2
30009122:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
30009126:	f000 b819 	b.w	3000915c <Fault_Handler>
3000912a:	4770      	bx	lr

3000912c <HANDLER_UsageFault>:
3000912c:	f3ef 8008 	mrs	r0, MSP
30009130:	f3ef 8109 	mrs	r1, PSP
30009134:	4672      	mov	r2, lr
30009136:	f04f 0301 	mov.w	r3, #1
3000913a:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
3000913e:	f000 b80d 	b.w	3000915c <Fault_Handler>
30009142:	4770      	bx	lr

30009144 <HANDLER_HardFault>:
30009144:	f3ef 8008 	mrs	r0, MSP
30009148:	f3ef 8109 	mrs	r1, PSP
3000914c:	4672      	mov	r2, lr
3000914e:	f04f 0300 	mov.w	r3, #0
30009152:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
30009156:	f000 b801 	b.w	3000915c <Fault_Handler>
3000915a:	4770      	bx	lr

3000915c <Fault_Handler>:
3000915c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
30009160:	b095      	sub	sp, #84	; 0x54
30009162:	4614      	mov	r4, r2
30009164:	4605      	mov	r5, r0
30009166:	2244      	movs	r2, #68	; 0x44
30009168:	460e      	mov	r6, r1
3000916a:	a803      	add	r0, sp, #12
3000916c:	2100      	movs	r1, #0
3000916e:	461f      	mov	r7, r3
30009170:	f002 fb6e 	bl	3000b850 <____wrap_memset_veneer>
30009174:	07e2      	lsls	r2, r4, #31
30009176:	f004 0340 	and.w	r3, r4, #64	; 0x40
3000917a:	d554      	bpl.n	30009226 <Fault_Handler+0xca>
3000917c:	2b00      	cmp	r3, #0
3000917e:	d05b      	beq.n	30009238 <Fault_Handler+0xdc>
30009180:	f004 000c 	and.w	r0, r4, #12
30009184:	f04f 0800 	mov.w	r8, #0
30009188:	f1a0 000c 	sub.w	r0, r0, #12
3000918c:	fab0 f080 	clz	r0, r0
30009190:	0940      	lsrs	r0, r0, #5
30009192:	f1a5 0c24 	sub.w	ip, r5, #36	; 0x24
30009196:	ab04      	add	r3, sp, #16
30009198:	1f29      	subs	r1, r5, #4
3000919a:	9403      	str	r4, [sp, #12]
3000919c:	f85c 2f04 	ldr.w	r2, [ip, #4]!
300091a0:	458c      	cmp	ip, r1
300091a2:	f843 2b04 	str.w	r2, [r3], #4
300091a6:	d1f9      	bne.n	3000919c <Fault_Handler+0x40>
300091a8:	2800      	cmp	r0, #0
300091aa:	bf14      	ite	ne
300091ac:	4631      	movne	r1, r6
300091ae:	4629      	moveq	r1, r5
300091b0:	f10d 0e30 	add.w	lr, sp, #48	; 0x30
300091b4:	f1a1 0c04 	sub.w	ip, r1, #4
300091b8:	f101 021c 	add.w	r2, r1, #28
300091bc:	f85c 3f04 	ldr.w	r3, [ip, #4]!
300091c0:	4594      	cmp	ip, r2
300091c2:	f84e 3b04 	str.w	r3, [lr], #4
300091c6:	d1f9      	bne.n	300091bc <Fault_Handler+0x60>
300091c8:	aa03      	add	r2, sp, #12
300091ca:	6bc8      	ldr	r0, [r1, #60]	; 0x3c
300091cc:	f000 fba6 	bl	3000991c <crash_dump>
300091d0:	2f04      	cmp	r7, #4
300091d2:	d042      	beq.n	3000925a <Fault_Handler+0xfe>
300091d4:	f1b8 0f00 	cmp.w	r8, #0
300091d8:	d136      	bne.n	30009248 <Fault_Handler+0xec>
300091da:	f8df 80c8 	ldr.w	r8, [pc, #200]	; 300092a4 <Fault_Handler+0x148>
300091de:	2241      	movs	r2, #65	; 0x41
300091e0:	4b28      	ldr	r3, [pc, #160]	; (30009284 <Fault_Handler+0x128>)
300091e2:	f8d8 0024 	ldr.w	r0, [r8, #36]	; 0x24
300091e6:	4928      	ldr	r1, [pc, #160]	; (30009288 <Fault_Handler+0x12c>)
300091e8:	9000      	str	r0, [sp, #0]
300091ea:	2001      	movs	r0, #1
300091ec:	f000 f8ae 	bl	3000934c <rtk_log_write>
300091f0:	f8d8 300c 	ldr.w	r3, [r8, #12]
300091f4:	2241      	movs	r2, #65	; 0x41
300091f6:	4924      	ldr	r1, [pc, #144]	; (30009288 <Fault_Handler+0x12c>)
300091f8:	9300      	str	r3, [sp, #0]
300091fa:	2001      	movs	r0, #1
300091fc:	4b23      	ldr	r3, [pc, #140]	; (3000928c <Fault_Handler+0x130>)
300091fe:	f000 f8a5 	bl	3000934c <rtk_log_write>
30009202:	f3ef 8314 	mrs	r3, CONTROL
30009206:	2241      	movs	r2, #65	; 0x41
30009208:	9300      	str	r3, [sp, #0]
3000920a:	491f      	ldr	r1, [pc, #124]	; (30009288 <Fault_Handler+0x12c>)
3000920c:	2001      	movs	r0, #1
3000920e:	4b20      	ldr	r3, [pc, #128]	; (30009290 <Fault_Handler+0x134>)
30009210:	f000 f89c 	bl	3000934c <rtk_log_write>
30009214:	463b      	mov	r3, r7
30009216:	4622      	mov	r2, r4
30009218:	4631      	mov	r1, r6
3000921a:	4628      	mov	r0, r5
3000921c:	f002 fb30 	bl	3000b880 <__INT_HardFault_C_veneer>
30009220:	b015      	add	sp, #84	; 0x54
30009222:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
30009226:	2b00      	cmp	r3, #0
30009228:	d0aa      	beq.n	30009180 <Fault_Handler+0x24>
3000922a:	4b1a      	ldr	r3, [pc, #104]	; (30009294 <Fault_Handler+0x138>)
3000922c:	2241      	movs	r2, #65	; 0x41
3000922e:	4916      	ldr	r1, [pc, #88]	; (30009288 <Fault_Handler+0x12c>)
30009230:	2001      	movs	r0, #1
30009232:	f000 f88b 	bl	3000934c <rtk_log_write>
30009236:	e7fe      	b.n	30009236 <Fault_Handler+0xda>
30009238:	f3ef 8894 	mrs	r8, CONTROL_NS
3000923c:	f014 0008 	ands.w	r0, r4, #8
30009240:	d0a7      	beq.n	30009192 <Fault_Handler+0x36>
30009242:	f3c8 0040 	ubfx	r0, r8, #1, #1
30009246:	e7a4      	b.n	30009192 <Fault_Handler+0x36>
30009248:	4b13      	ldr	r3, [pc, #76]	; (30009298 <Fault_Handler+0x13c>)
3000924a:	2241      	movs	r2, #65	; 0x41
3000924c:	490e      	ldr	r1, [pc, #56]	; (30009288 <Fault_Handler+0x12c>)
3000924e:	2001      	movs	r0, #1
30009250:	f8cd 8000 	str.w	r8, [sp]
30009254:	f000 f87a 	bl	3000934c <rtk_log_write>
30009258:	e7bf      	b.n	300091da <Fault_Handler+0x7e>
3000925a:	f8df 9048 	ldr.w	r9, [pc, #72]	; 300092a4 <Fault_Handler+0x148>
3000925e:	2241      	movs	r2, #65	; 0x41
30009260:	4b0e      	ldr	r3, [pc, #56]	; (3000929c <Fault_Handler+0x140>)
30009262:	f8d9 00e4 	ldr.w	r0, [r9, #228]	; 0xe4
30009266:	4908      	ldr	r1, [pc, #32]	; (30009288 <Fault_Handler+0x12c>)
30009268:	9000      	str	r0, [sp, #0]
3000926a:	2001      	movs	r0, #1
3000926c:	f000 f86e 	bl	3000934c <rtk_log_write>
30009270:	f8d9 30e8 	ldr.w	r3, [r9, #232]	; 0xe8
30009274:	2241      	movs	r2, #65	; 0x41
30009276:	4904      	ldr	r1, [pc, #16]	; (30009288 <Fault_Handler+0x12c>)
30009278:	9300      	str	r3, [sp, #0]
3000927a:	2001      	movs	r0, #1
3000927c:	4b08      	ldr	r3, [pc, #32]	; (300092a0 <Fault_Handler+0x144>)
3000927e:	f000 f865 	bl	3000934c <rtk_log_write>
30009282:	e7a7      	b.n	300091d4 <Fault_Handler+0x78>
30009284:	3000c774 	.word	0x3000c774
30009288:	3000c72c 	.word	0x3000c72c
3000928c:	3000c788 	.word	0x3000c788
30009290:	3000c79c 	.word	0x3000c79c
30009294:	3000c6e0 	.word	0x3000c6e0
30009298:	3000c75c 	.word	0x3000c75c
3000929c:	3000c734 	.word	0x3000c734
300092a0:	3000c748 	.word	0x3000c748
300092a4:	e000ed00 	.word	0xe000ed00

300092a8 <Fault_Hanlder_Redirect>:
300092a8:	4b08      	ldr	r3, [pc, #32]	; (300092cc <Fault_Hanlder_Redirect+0x24>)
300092aa:	4909      	ldr	r1, [pc, #36]	; (300092d0 <Fault_Hanlder_Redirect+0x28>)
300092ac:	4a09      	ldr	r2, [pc, #36]	; (300092d4 <Fault_Hanlder_Redirect+0x2c>)
300092ae:	b410      	push	{r4}
300092b0:	6008      	str	r0, [r1, #0]
300092b2:	4c09      	ldr	r4, [pc, #36]	; (300092d8 <Fault_Hanlder_Redirect+0x30>)
300092b4:	60da      	str	r2, [r3, #12]
300092b6:	4809      	ldr	r0, [pc, #36]	; (300092dc <Fault_Hanlder_Redirect+0x34>)
300092b8:	4909      	ldr	r1, [pc, #36]	; (300092e0 <Fault_Hanlder_Redirect+0x38>)
300092ba:	4a0a      	ldr	r2, [pc, #40]	; (300092e4 <Fault_Hanlder_Redirect+0x3c>)
300092bc:	e9c3 4004 	strd	r4, r0, [r3, #16]
300092c0:	e9c3 1206 	strd	r1, r2, [r3, #24]
300092c4:	f85d 4b04 	ldr.w	r4, [sp], #4
300092c8:	4770      	bx	lr
300092ca:	bf00      	nop
300092cc:	30000000 	.word	0x30000000
300092d0:	3000eb14 	.word	0x3000eb14
300092d4:	30009145 	.word	0x30009145
300092d8:	300090fd 	.word	0x300090fd
300092dc:	30009115 	.word	0x30009115
300092e0:	3000912d 	.word	0x3000912d
300092e4:	300090e1 	.word	0x300090e1

300092e8 <rtk_log_level_get>:
300092e8:	4b13      	ldr	r3, [pc, #76]	; (30009338 <rtk_log_level_get+0x50>)
300092ea:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
300092ee:	681a      	ldr	r2, [r3, #0]
300092f0:	4606      	mov	r6, r0
300092f2:	2a03      	cmp	r2, #3
300092f4:	d917      	bls.n	30009326 <rtk_log_level_get+0x3e>
300092f6:	b1d0      	cbz	r0, 3000932e <rtk_log_level_get+0x46>
300092f8:	2704      	movs	r7, #4
300092fa:	4d10      	ldr	r5, [pc, #64]	; (3000933c <rtk_log_level_get+0x54>)
300092fc:	2400      	movs	r4, #0
300092fe:	f8df 8048 	ldr.w	r8, [pc, #72]	; 30009348 <rtk_log_level_get+0x60>
30009302:	e002      	b.n	3000930a <rtk_log_level_get+0x22>
30009304:	3401      	adds	r4, #1
30009306:	42a7      	cmp	r7, r4
30009308:	d911      	bls.n	3000932e <rtk_log_level_get+0x46>
3000930a:	4628      	mov	r0, r5
3000930c:	4631      	mov	r1, r6
3000930e:	350b      	adds	r5, #11
30009310:	47c0      	blx	r8
30009312:	2800      	cmp	r0, #0
30009314:	d1f6      	bne.n	30009304 <rtk_log_level_get+0x1c>
30009316:	eb04 0284 	add.w	r2, r4, r4, lsl #2
3000931a:	4b09      	ldr	r3, [pc, #36]	; (30009340 <rtk_log_level_get+0x58>)
3000931c:	eb04 0442 	add.w	r4, r4, r2, lsl #1
30009320:	5d18      	ldrb	r0, [r3, r4]
30009322:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
30009326:	681f      	ldr	r7, [r3, #0]
30009328:	b108      	cbz	r0, 3000932e <rtk_log_level_get+0x46>
3000932a:	2f00      	cmp	r7, #0
3000932c:	d1e5      	bne.n	300092fa <rtk_log_level_get+0x12>
3000932e:	4b05      	ldr	r3, [pc, #20]	; (30009344 <rtk_log_level_get+0x5c>)
30009330:	7818      	ldrb	r0, [r3, #0]
30009332:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
30009336:	bf00      	nop
30009338:	3000eadc 	.word	0x3000eadc
3000933c:	3000eae1 	.word	0x3000eae1
30009340:	3000eae0 	.word	0x3000eae0
30009344:	3000dff9 	.word	0x3000dff9
30009348:	00012c89 	.word	0x00012c89

3000934c <rtk_log_write>:
3000934c:	b1b9      	cbz	r1, 3000937e <rtk_log_write+0x32>
3000934e:	b408      	push	{r3}
30009350:	b570      	push	{r4, r5, r6, lr}
30009352:	4605      	mov	r5, r0
30009354:	b083      	sub	sp, #12
30009356:	4608      	mov	r0, r1
30009358:	460c      	mov	r4, r1
3000935a:	4616      	mov	r6, r2
3000935c:	f7ff ffc4 	bl	300092e8 <rtk_log_level_get>
30009360:	42a8      	cmp	r0, r5
30009362:	d307      	bcc.n	30009374 <rtk_log_write+0x28>
30009364:	7823      	ldrb	r3, [r4, #0]
30009366:	2b23      	cmp	r3, #35	; 0x23
30009368:	d10a      	bne.n	30009380 <rtk_log_write+0x34>
3000936a:	a908      	add	r1, sp, #32
3000936c:	9807      	ldr	r0, [sp, #28]
3000936e:	9101      	str	r1, [sp, #4]
30009370:	f001 f95a 	bl	3000a628 <DiagVprintf>
30009374:	b003      	add	sp, #12
30009376:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
3000937a:	b001      	add	sp, #4
3000937c:	4770      	bx	lr
3000937e:	4770      	bx	lr
30009380:	4621      	mov	r1, r4
30009382:	4632      	mov	r2, r6
30009384:	4804      	ldr	r0, [pc, #16]	; (30009398 <rtk_log_write+0x4c>)
30009386:	f001 fc0f 	bl	3000aba8 <DiagPrintf>
3000938a:	a908      	add	r1, sp, #32
3000938c:	9807      	ldr	r0, [sp, #28]
3000938e:	9101      	str	r1, [sp, #4]
30009390:	f001 f94a 	bl	3000a628 <DiagVprintf>
30009394:	e7ee      	b.n	30009374 <rtk_log_write+0x28>
30009396:	bf00      	nop
30009398:	3000c7b0 	.word	0x3000c7b0

3000939c <rtk_log_write_nano>:
3000939c:	b1b9      	cbz	r1, 300093ce <rtk_log_write_nano+0x32>
3000939e:	b408      	push	{r3}
300093a0:	b570      	push	{r4, r5, r6, lr}
300093a2:	4605      	mov	r5, r0
300093a4:	b083      	sub	sp, #12
300093a6:	4608      	mov	r0, r1
300093a8:	460c      	mov	r4, r1
300093aa:	4616      	mov	r6, r2
300093ac:	f7ff ff9c 	bl	300092e8 <rtk_log_level_get>
300093b0:	42a8      	cmp	r0, r5
300093b2:	d307      	bcc.n	300093c4 <rtk_log_write_nano+0x28>
300093b4:	7823      	ldrb	r3, [r4, #0]
300093b6:	2b23      	cmp	r3, #35	; 0x23
300093b8:	d10a      	bne.n	300093d0 <rtk_log_write_nano+0x34>
300093ba:	a908      	add	r1, sp, #32
300093bc:	9807      	ldr	r0, [sp, #28]
300093be:	9101      	str	r1, [sp, #4]
300093c0:	f001 fc00 	bl	3000abc4 <DiagVprintfNano>
300093c4:	b003      	add	sp, #12
300093c6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
300093ca:	b001      	add	sp, #4
300093cc:	4770      	bx	lr
300093ce:	4770      	bx	lr
300093d0:	4621      	mov	r1, r4
300093d2:	4632      	mov	r2, r6
300093d4:	4804      	ldr	r0, [pc, #16]	; (300093e8 <rtk_log_write_nano+0x4c>)
300093d6:	f001 fddd 	bl	3000af94 <DiagPrintfNano>
300093da:	a908      	add	r1, sp, #32
300093dc:	9807      	ldr	r0, [sp, #28]
300093de:	9101      	str	r1, [sp, #4]
300093e0:	f001 fbf0 	bl	3000abc4 <DiagVprintfNano>
300093e4:	e7ee      	b.n	300093c4 <rtk_log_write_nano+0x28>
300093e6:	bf00      	nop
300093e8:	3000c7b0 	.word	0x3000c7b0

300093ec <flash_init_userdef>:
300093ec:	4b14      	ldr	r3, [pc, #80]	; (30009440 <flash_init_userdef+0x54>)
300093ee:	2201      	movs	r2, #1
300093f0:	2140      	movs	r1, #64	; 0x40
300093f2:	f44f 6000 	mov.w	r0, #2048	; 0x800
300093f6:	b430      	push	{r4, r5}
300093f8:	e9c3 1203 	strd	r1, r2, [r3, #12]
300093fc:	2502      	movs	r5, #2
300093fe:	2400      	movs	r4, #0
30009400:	f640 0104 	movw	r1, #2052	; 0x804
30009404:	601a      	str	r2, [r3, #0]
30009406:	22bb      	movs	r2, #187	; 0xbb
30009408:	83d8      	strh	r0, [r3, #30]
3000940a:	8419      	strh	r1, [r3, #32]
3000940c:	203b      	movs	r0, #59	; 0x3b
3000940e:	21eb      	movs	r1, #235	; 0xeb
30009410:	629a      	str	r2, [r3, #40]	; 0x28
30009412:	4a0c      	ldr	r2, [pc, #48]	; (30009444 <flash_init_userdef+0x58>)
30009414:	6258      	str	r0, [r3, #36]	; 0x24
30009416:	6319      	str	r1, [r3, #48]	; 0x30
30009418:	f64a 3120 	movw	r1, #43808	; 0xab20
3000941c:	655a      	str	r2, [r3, #84]	; 0x54
3000941e:	22b9      	movs	r2, #185	; 0xb9
30009420:	4809      	ldr	r0, [pc, #36]	; (30009448 <flash_init_userdef+0x5c>)
30009422:	f8a3 105c 	strh.w	r1, [r3, #92]	; 0x5c
30009426:	6598      	str	r0, [r3, #88]	; 0x58
30009428:	f883 205e 	strb.w	r2, [r3, #94]	; 0x5e
3000942c:	e9c3 5405 	strd	r5, r4, [r3, #20]
30009430:	2406      	movs	r4, #6
30009432:	f883 4022 	strb.w	r4, [r3, #34]	; 0x22
30009436:	246b      	movs	r4, #107	; 0x6b
30009438:	62dc      	str	r4, [r3, #44]	; 0x2c
3000943a:	bc30      	pop	{r4, r5}
3000943c:	4770      	bx	lr
3000943e:	bf00      	nop
30009440:	2001c01c 	.word	0x2001c01c
30009444:	00059f06 	.word	0x00059f06
30009448:	d8600001 	.word	0xd8600001

3000944c <nand_init_userdef>:
3000944c:	4b18      	ldr	r3, [pc, #96]	; (300094b0 <nand_init_userdef+0x64>)
3000944e:	2001      	movs	r0, #1
30009450:	2200      	movs	r2, #0
30009452:	2102      	movs	r1, #2
30009454:	b410      	push	{r4}
30009456:	6018      	str	r0, [r3, #0]
30009458:	f640 0408 	movw	r4, #2056	; 0x808
3000945c:	6159      	str	r1, [r3, #20]
3000945e:	83dc      	strh	r4, [r3, #30]
30009460:	f44f 6400 	mov.w	r4, #2048	; 0x800
30009464:	f8a3 1062 	strh.w	r1, [r3, #98]	; 0x62
30009468:	841c      	strh	r4, [r3, #32]
3000946a:	246b      	movs	r4, #107	; 0x6b
3000946c:	619a      	str	r2, [r3, #24]
3000946e:	62dc      	str	r4, [r3, #44]	; 0x2c
30009470:	4c10      	ldr	r4, [pc, #64]	; (300094b4 <nand_init_userdef+0x68>)
30009472:	775a      	strb	r2, [r3, #29]
30009474:	f883 2022 	strb.w	r2, [r3, #34]	; 0x22
30009478:	629a      	str	r2, [r3, #40]	; 0x28
3000947a:	631a      	str	r2, [r3, #48]	; 0x30
3000947c:	f883 2061 	strb.w	r2, [r3, #97]	; 0x61
30009480:	65da      	str	r2, [r3, #92]	; 0x5c
30009482:	e9c3 0003 	strd	r0, r0, [r3, #12]
30009486:	203b      	movs	r0, #59	; 0x3b
30009488:	6258      	str	r0, [r3, #36]	; 0x24
3000948a:	200b      	movs	r0, #11
3000948c:	e9c3 1211 	strd	r1, r2, [r3, #68]	; 0x44
30009490:	6698      	str	r0, [r3, #104]	; 0x68
30009492:	2008      	movs	r0, #8
30009494:	4908      	ldr	r1, [pc, #32]	; (300094b8 <nand_init_userdef+0x6c>)
30009496:	64d8      	str	r0, [r3, #76]	; 0x4c
30009498:	f241 0013 	movw	r0, #4115	; 0x1013
3000949c:	6599      	str	r1, [r3, #88]	; 0x58
3000949e:	4907      	ldr	r1, [pc, #28]	; (300094bc <nand_init_userdef+0x70>)
300094a0:	f8a3 006e 	strh.w	r0, [r3, #110]	; 0x6e
300094a4:	6719      	str	r1, [r3, #112]	; 0x70
300094a6:	e9c3 2414 	strd	r2, r4, [r3, #80]	; 0x50
300094aa:	f85d 4b04 	ldr.w	r4, [sp], #4
300094ae:	4770      	bx	lr
300094b0:	2001c01c 	.word	0x2001c01c
300094b4:	000f9f06 	.word	0x000f9f06
300094b8:	d800001f 	.word	0xd800001f
300094bc:	10300804 	.word	0x10300804

300094c0 <flash_get_layout_info>:
300094c0:	b570      	push	{r4, r5, r6, lr}
300094c2:	4b15      	ldr	r3, [pc, #84]	; (30009518 <flash_get_layout_info+0x58>)
300094c4:	b082      	sub	sp, #8
300094c6:	4615      	mov	r5, r2
300094c8:	4604      	mov	r4, r0
300094ca:	460e      	mov	r6, r1
300094cc:	4798      	blx	r3
300094ce:	4b13      	ldr	r3, [pc, #76]	; (3000951c <flash_get_layout_info+0x5c>)
300094d0:	4a13      	ldr	r2, [pc, #76]	; (30009520 <flash_get_layout_info+0x60>)
300094d2:	2800      	cmp	r0, #0
300094d4:	bf14      	ite	ne
300094d6:	469c      	movne	ip, r3
300094d8:	4694      	moveq	ip, r2
300094da:	f8dc 3000 	ldr.w	r3, [ip]
300094de:	2bff      	cmp	r3, #255	; 0xff
300094e0:	d104      	bne.n	300094ec <flash_get_layout_info+0x2c>
300094e2:	e00f      	b.n	30009504 <flash_get_layout_info+0x44>
300094e4:	f85c 3f0c 	ldr.w	r3, [ip, #12]!
300094e8:	2bff      	cmp	r3, #255	; 0xff
300094ea:	d00b      	beq.n	30009504 <flash_get_layout_info+0x44>
300094ec:	429c      	cmp	r4, r3
300094ee:	d1f9      	bne.n	300094e4 <flash_get_layout_info+0x24>
300094f0:	b116      	cbz	r6, 300094f8 <flash_get_layout_info+0x38>
300094f2:	f8dc 3004 	ldr.w	r3, [ip, #4]
300094f6:	6033      	str	r3, [r6, #0]
300094f8:	b15d      	cbz	r5, 30009512 <flash_get_layout_info+0x52>
300094fa:	f8dc 3008 	ldr.w	r3, [ip, #8]
300094fe:	602b      	str	r3, [r5, #0]
30009500:	b002      	add	sp, #8
30009502:	bd70      	pop	{r4, r5, r6, pc}
30009504:	4b07      	ldr	r3, [pc, #28]	; (30009524 <flash_get_layout_info+0x64>)
30009506:	2245      	movs	r2, #69	; 0x45
30009508:	4907      	ldr	r1, [pc, #28]	; (30009528 <flash_get_layout_info+0x68>)
3000950a:	2002      	movs	r0, #2
3000950c:	9400      	str	r4, [sp, #0]
3000950e:	f7ff ff1d 	bl	3000934c <rtk_log_write>
30009512:	b002      	add	sp, #8
30009514:	bd70      	pop	{r4, r5, r6, pc}
30009516:	bf00      	nop
30009518:	3000a5bd 	.word	0x3000a5bd
3000951c:	3000e200 	.word	0x3000e200
30009520:	3000e194 	.word	0x3000e194
30009524:	3000c8dc 	.word	0x3000c8dc
30009528:	3000c1b0 	.word	0x3000c1b0

3000952c <flash_get_layout_info_by_addr>:
3000952c:	b5f0      	push	{r4, r5, r6, r7, lr}
3000952e:	4b13      	ldr	r3, [pc, #76]	; (3000957c <flash_get_layout_info_by_addr+0x50>)
30009530:	b083      	sub	sp, #12
30009532:	4616      	mov	r6, r2
30009534:	4605      	mov	r5, r0
30009536:	460f      	mov	r7, r1
30009538:	4798      	blx	r3
3000953a:	4a11      	ldr	r2, [pc, #68]	; (30009580 <flash_get_layout_info_by_addr+0x54>)
3000953c:	4b11      	ldr	r3, [pc, #68]	; (30009584 <flash_get_layout_info_by_addr+0x58>)
3000953e:	2800      	cmp	r0, #0
30009540:	bf08      	it	eq
30009542:	4613      	moveq	r3, r2
30009544:	681a      	ldr	r2, [r3, #0]
30009546:	2aff      	cmp	r2, #255	; 0xff
30009548:	d009      	beq.n	3000955e <flash_get_layout_info_by_addr+0x32>
3000954a:	685c      	ldr	r4, [r3, #4]
3000954c:	42ac      	cmp	r4, r5
3000954e:	d802      	bhi.n	30009556 <flash_get_layout_info_by_addr+0x2a>
30009550:	689a      	ldr	r2, [r3, #8]
30009552:	42aa      	cmp	r2, r5
30009554:	d20c      	bcs.n	30009570 <flash_get_layout_info_by_addr+0x44>
30009556:	f853 4f0c 	ldr.w	r4, [r3, #12]!
3000955a:	2cff      	cmp	r4, #255	; 0xff
3000955c:	d1f5      	bne.n	3000954a <flash_get_layout_info_by_addr+0x1e>
3000955e:	4b0a      	ldr	r3, [pc, #40]	; (30009588 <flash_get_layout_info_by_addr+0x5c>)
30009560:	2245      	movs	r2, #69	; 0x45
30009562:	490a      	ldr	r1, [pc, #40]	; (3000958c <flash_get_layout_info_by_addr+0x60>)
30009564:	2002      	movs	r0, #2
30009566:	9500      	str	r5, [sp, #0]
30009568:	f7ff fef0 	bl	3000934c <rtk_log_write>
3000956c:	b003      	add	sp, #12
3000956e:	bdf0      	pop	{r4, r5, r6, r7, pc}
30009570:	603c      	str	r4, [r7, #0]
30009572:	689b      	ldr	r3, [r3, #8]
30009574:	6033      	str	r3, [r6, #0]
30009576:	b003      	add	sp, #12
30009578:	bdf0      	pop	{r4, r5, r6, r7, pc}
3000957a:	bf00      	nop
3000957c:	3000a5bd 	.word	0x3000a5bd
30009580:	3000e194 	.word	0x3000e194
30009584:	3000e200 	.word	0x3000e200
30009588:	3000c904 	.word	0x3000c904
3000958c:	3000c1b0 	.word	0x3000c1b0

30009590 <TaskExitError>:
30009590:	b672      	cpsid	i
30009592:	e7fe      	b.n	30009592 <TaskExitError+0x2>

30009594 <thumb_backtrace_from_stack>:
30009594:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30009598:	b085      	sub	sp, #20
3000959a:	4b7d      	ldr	r3, [pc, #500]	; (30009790 <thumb_backtrace_from_stack+0x1fc>)
3000959c:	9203      	str	r2, [sp, #12]
3000959e:	f023 0301 	bic.w	r3, r3, #1
300095a2:	680a      	ldr	r2, [r1, #0]
300095a4:	f022 0901 	bic.w	r9, r2, #1
300095a8:	4599      	cmp	r9, r3
300095aa:	e9cd 3001 	strd	r3, r0, [sp, #4]
300095ae:	f000 80e3 	beq.w	30009778 <thumb_backtrace_from_stack+0x1e4>
300095b2:	6803      	ldr	r3, [r0, #0]
300095b4:	460e      	mov	r6, r1
300095b6:	2502      	movs	r5, #2
300095b8:	f8df e200 	ldr.w	lr, [pc, #512]	; 300097bc <thumb_backtrace_from_stack+0x228>
300095bc:	4a75      	ldr	r2, [pc, #468]	; (30009794 <thumb_backtrace_from_stack+0x200>)
300095be:	9300      	str	r3, [sp, #0]
300095c0:	eba9 0405 	sub.w	r4, r9, r5
300095c4:	f834 1c02 	ldrh.w	r1, [r4, #-2]
300095c8:	8820      	ldrh	r0, [r4, #0]
300095ca:	0acb      	lsrs	r3, r1, #11
300095cc:	f400 477f 	and.w	r7, r0, #65280	; 0xff00
300095d0:	3b1d      	subs	r3, #29
300095d2:	2b02      	cmp	r3, #2
300095d4:	d93a      	bls.n	3000964c <thumb_backtrace_from_stack+0xb8>
300095d6:	f5b7 4f35 	cmp.w	r7, #46336	; 0xb500
300095da:	f000 80b3 	beq.w	30009744 <thumb_backtrace_from_stack+0x1b0>
300095de:	f5b7 4f34 	cmp.w	r7, #46080	; 0xb400
300095e2:	d179      	bne.n	300096d8 <thumb_backtrace_from_stack+0x144>
300095e4:	b2c0      	uxtb	r0, r0
300095e6:	f001 ffc9 	bl	3000b57c <__popcountsi2>
300095ea:	1ca3      	adds	r3, r4, #2
300095ec:	4683      	mov	fp, r0
300095ee:	4599      	cmp	r9, r3
300095f0:	d325      	bcc.n	3000963e <thumb_backtrace_from_stack+0xaa>
300095f2:	f04f 0a00 	mov.w	sl, #0
300095f6:	2502      	movs	r5, #2
300095f8:	f8df 81c0 	ldr.w	r8, [pc, #448]	; 300097bc <thumb_backtrace_from_stack+0x228>
300095fc:	4f65      	ldr	r7, [pc, #404]	; (30009794 <thumb_backtrace_from_stack+0x200>)
300095fe:	46ac      	mov	ip, r5
30009600:	8818      	ldrh	r0, [r3, #0]
30009602:	44a4      	add	ip, r4
30009604:	0ac3      	lsrs	r3, r0, #11
30009606:	f8bc 2002 	ldrh.w	r2, [ip, #2]
3000960a:	3b1d      	subs	r3, #29
3000960c:	2b02      	cmp	r3, #2
3000960e:	d970      	bls.n	300096f2 <thumb_backtrace_from_stack+0x15e>
30009610:	f400 437f 	and.w	r3, r0, #65280	; 0xff00
30009614:	f5b3 4f35 	cmp.w	r3, #46336	; 0xb500
30009618:	f000 80a6 	beq.w	30009768 <thumb_backtrace_from_stack+0x1d4>
3000961c:	f020 037f 	bic.w	r3, r0, #127	; 0x7f
30009620:	f24b 0280 	movw	r2, #45184	; 0xb080
30009624:	4293      	cmp	r3, r2
30009626:	d102      	bne.n	3000962e <thumb_backtrace_from_stack+0x9a>
30009628:	f000 007f 	and.w	r0, r0, #127	; 0x7f
3000962c:	4483      	add	fp, r0
3000962e:	3502      	adds	r5, #2
30009630:	1963      	adds	r3, r4, r5
30009632:	46ac      	mov	ip, r5
30009634:	454b      	cmp	r3, r9
30009636:	d9e3      	bls.n	30009600 <thumb_backtrace_from_stack+0x6c>
30009638:	f1ba 0f00 	cmp.w	sl, #0
3000963c:	d117      	bne.n	3000966e <thumb_backtrace_from_stack+0xda>
3000963e:	9b03      	ldr	r3, [sp, #12]
30009640:	6819      	ldr	r1, [r3, #0]
30009642:	2900      	cmp	r1, #0
30009644:	f000 809e 	beq.w	30009784 <thumb_backtrace_from_stack+0x1f0>
30009648:	460b      	mov	r3, r1
3000964a:	e016      	b.n	3000967a <thumb_backtrace_from_stack+0xe6>
3000964c:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
30009650:	ea00 030e 	and.w	r3, r0, lr
30009654:	4293      	cmp	r3, r2
30009656:	d13e      	bne.n	300096d6 <thumb_backtrace_from_stack+0x142>
30009658:	f3c0 000b 	ubfx	r0, r0, #0, #12
3000965c:	f04f 0a01 	mov.w	sl, #1
30009660:	f001 ff8c 	bl	3000b57c <__popcountsi2>
30009664:	1ca3      	adds	r3, r4, #2
30009666:	f100 0b01 	add.w	fp, r0, #1
3000966a:	4599      	cmp	r9, r3
3000966c:	d2c3      	bcs.n	300095f6 <thumb_backtrace_from_stack+0x62>
3000966e:	ebab 010a 	sub.w	r1, fp, sl
30009672:	9b00      	ldr	r3, [sp, #0]
30009674:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
30009678:	4619      	mov	r1, r3
3000967a:	9a00      	ldr	r2, [sp, #0]
3000967c:	f023 0301 	bic.w	r3, r3, #1
30009680:	eb02 008b 	add.w	r0, r2, fp, lsl #2
30009684:	9a02      	ldr	r2, [sp, #8]
30009686:	6010      	str	r0, [r2, #0]
30009688:	9a01      	ldr	r2, [sp, #4]
3000968a:	429a      	cmp	r2, r3
3000968c:	d078      	beq.n	30009780 <thumb_backtrace_from_stack+0x1ec>
3000968e:	f833 2c02 	ldrh.w	r2, [r3, #-2]
30009692:	f402 427f 	and.w	r2, r2, #65280	; 0xff00
30009696:	f5b2 4f8e 	cmp.w	r2, #18176	; 0x4700
3000969a:	d016      	beq.n	300096ca <thumb_backtrace_from_stack+0x136>
3000969c:	f853 2c04 	ldr.w	r2, [r3, #-4]
300096a0:	483d      	ldr	r0, [pc, #244]	; (30009798 <thumb_backtrace_from_stack+0x204>)
300096a2:	4c3e      	ldr	r4, [pc, #248]	; (3000979c <thumb_backtrace_from_stack+0x208>)
300096a4:	4010      	ands	r0, r2
300096a6:	42a0      	cmp	r0, r4
300096a8:	d063      	beq.n	30009772 <thumb_backtrace_from_stack+0x1de>
300096aa:	f002 407e 	and.w	r0, r2, #4261412864	; 0xfe000000
300096ae:	f1b0 4f7a 	cmp.w	r0, #4194304000	; 0xfa000000
300096b2:	d05e      	beq.n	30009772 <thumb_backtrace_from_stack+0x1de>
300096b4:	483a      	ldr	r0, [pc, #232]	; (300097a0 <thumb_backtrace_from_stack+0x20c>)
300096b6:	4002      	ands	r2, r0
300096b8:	483a      	ldr	r0, [pc, #232]	; (300097a4 <thumb_backtrace_from_stack+0x210>)
300096ba:	4282      	cmp	r2, r0
300096bc:	d059      	beq.n	30009772 <thumb_backtrace_from_stack+0x1de>
300096be:	f833 3c04 	ldrh.w	r3, [r3, #-4]
300096c2:	0adb      	lsrs	r3, r3, #11
300096c4:	3b1d      	subs	r3, #29
300096c6:	2b02      	cmp	r3, #2
300096c8:	d953      	bls.n	30009772 <thumb_backtrace_from_stack+0x1de>
300096ca:	3902      	subs	r1, #2
300096cc:	2000      	movs	r0, #0
300096ce:	6031      	str	r1, [r6, #0]
300096d0:	b005      	add	sp, #20
300096d2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
300096d6:	3502      	adds	r5, #2
300096d8:	3502      	adds	r5, #2
300096da:	f5b5 5f00 	cmp.w	r5, #8192	; 0x2000
300096de:	f6ff af6f 	blt.w	300095c0 <thumb_backtrace_from_stack+0x2c>
300096e2:	1ca3      	adds	r3, r4, #2
300096e4:	4599      	cmp	r9, r3
300096e6:	d34f      	bcc.n	30009788 <thumb_backtrace_from_stack+0x1f4>
300096e8:	f04f 0a00 	mov.w	sl, #0
300096ec:	f04f 3bff 	mov.w	fp, #4294967295	; 0xffffffff
300096f0:	e781      	b.n	300095f6 <thumb_backtrace_from_stack+0x62>
300096f2:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
300096f6:	3502      	adds	r5, #2
300096f8:	ea00 0308 	and.w	r3, r0, r8
300096fc:	42bb      	cmp	r3, r7
300096fe:	d02d      	beq.n	3000975c <thumb_backtrace_from_stack+0x1c8>
30009700:	4b29      	ldr	r3, [pc, #164]	; (300097a8 <thumb_backtrace_from_stack+0x214>)
30009702:	4a2a      	ldr	r2, [pc, #168]	; (300097ac <thumb_backtrace_from_stack+0x218>)
30009704:	4003      	ands	r3, r0
30009706:	4293      	cmp	r3, r2
30009708:	d009      	beq.n	3000971e <thumb_backtrace_from_stack+0x18a>
3000970a:	4b29      	ldr	r3, [pc, #164]	; (300097b0 <thumb_backtrace_from_stack+0x21c>)
3000970c:	4a29      	ldr	r2, [pc, #164]	; (300097b4 <thumb_backtrace_from_stack+0x220>)
3000970e:	4003      	ands	r3, r0
30009710:	4293      	cmp	r3, r2
30009712:	d002      	beq.n	3000971a <thumb_backtrace_from_stack+0x186>
30009714:	4a28      	ldr	r2, [pc, #160]	; (300097b8 <thumb_backtrace_from_stack+0x224>)
30009716:	4293      	cmp	r3, r2
30009718:	d189      	bne.n	3000962e <thumb_backtrace_from_stack+0x9a>
3000971a:	b2c0      	uxtb	r0, r0
3000971c:	e786      	b.n	3000962c <thumb_backtrace_from_stack+0x98>
3000971e:	0d83      	lsrs	r3, r0, #22
30009720:	f3c0 11c0 	ubfx	r1, r0, #7, #1
30009724:	0ac2      	lsrs	r2, r0, #11
30009726:	f000 007f 	and.w	r0, r0, #127	; 0x7f
3000972a:	f003 0310 	and.w	r3, r3, #16
3000972e:	f002 020e 	and.w	r2, r2, #14
30009732:	3080      	adds	r0, #128	; 0x80
30009734:	f1c3 031e 	rsb	r3, r3, #30
30009738:	430a      	orrs	r2, r1
3000973a:	1a9b      	subs	r3, r3, r2
3000973c:	4098      	lsls	r0, r3
3000973e:	f53f af76 	bmi.w	3000962e <thumb_backtrace_from_stack+0x9a>
30009742:	e773      	b.n	3000962c <thumb_backtrace_from_stack+0x98>
30009744:	b2c0      	uxtb	r0, r0
30009746:	f04f 0a01 	mov.w	sl, #1
3000974a:	f001 ff17 	bl	3000b57c <__popcountsi2>
3000974e:	1ca3      	adds	r3, r4, #2
30009750:	f100 0b01 	add.w	fp, r0, #1
30009754:	4599      	cmp	r9, r3
30009756:	f4bf af4e 	bcs.w	300095f6 <thumb_backtrace_from_stack+0x62>
3000975a:	e788      	b.n	3000966e <thumb_backtrace_from_stack+0xda>
3000975c:	f3c0 000b 	ubfx	r0, r0, #0, #12
30009760:	f001 ff0c 	bl	3000b57c <__popcountsi2>
30009764:	3001      	adds	r0, #1
30009766:	e761      	b.n	3000962c <thumb_backtrace_from_stack+0x98>
30009768:	b2c0      	uxtb	r0, r0
3000976a:	f001 ff07 	bl	3000b57c <__popcountsi2>
3000976e:	3001      	adds	r0, #1
30009770:	e75c      	b.n	3000962c <thumb_backtrace_from_stack+0x98>
30009772:	3904      	subs	r1, #4
30009774:	2000      	movs	r0, #0
30009776:	e7aa      	b.n	300096ce <thumb_backtrace_from_stack+0x13a>
30009778:	2001      	movs	r0, #1
3000977a:	b005      	add	sp, #20
3000977c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30009780:	2001      	movs	r0, #1
30009782:	e7a4      	b.n	300096ce <thumb_backtrace_from_stack+0x13a>
30009784:	468a      	mov	sl, r1
30009786:	e772      	b.n	3000966e <thumb_backtrace_from_stack+0xda>
30009788:	f04f 3bff 	mov.w	fp, #4294967295	; 0xffffffff
3000978c:	e757      	b.n	3000963e <thumb_backtrace_from_stack+0xaa>
3000978e:	bf00      	nop
30009790:	30009591 	.word	0x30009591
30009794:	e92d4000 	.word	0xe92d4000
30009798:	0ffffff0 	.word	0x0ffffff0
3000979c:	012fff10 	.word	0x012fff10
300097a0:	f800d000 	.word	0xf800d000
300097a4:	f000c000 	.word	0xf000c000
300097a8:	fbff8f00 	.word	0xfbff8f00
300097ac:	f1ad0d00 	.word	0xf1ad0d00
300097b0:	ffbf0f00 	.word	0xffbf0f00
300097b4:	ed2d0b00 	.word	0xed2d0b00
300097b8:	ed2d0a00 	.word	0xed2d0a00
300097bc:	fffff000 	.word	0xfffff000

300097c0 <do_stack_backtrace>:
300097c0:	b570      	push	{r4, r5, r6, lr}
300097c2:	4d22      	ldr	r5, [pc, #136]	; (3000984c <do_stack_backtrace+0x8c>)
300097c4:	b084      	sub	sp, #16
300097c6:	682b      	ldr	r3, [r5, #0]
300097c8:	b90b      	cbnz	r3, 300097ce <do_stack_backtrace+0xe>
300097ca:	2308      	movs	r3, #8
300097cc:	602b      	str	r3, [r5, #0]
300097ce:	2800      	cmp	r0, #0
300097d0:	d032      	beq.n	30009838 <do_stack_backtrace+0x78>
300097d2:	2900      	cmp	r1, #0
300097d4:	d030      	beq.n	30009838 <do_stack_backtrace+0x78>
300097d6:	9001      	str	r0, [sp, #4]
300097d8:	06d2      	lsls	r2, r2, #27
300097da:	69cc      	ldr	r4, [r1, #28]
300097dc:	694b      	ldr	r3, [r1, #20]
300097de:	4602      	mov	r2, r0
300097e0:	bf4c      	ite	mi
300097e2:	3120      	addmi	r1, #32
300097e4:	3168      	addpl	r1, #104	; 0x68
300097e6:	f3c4 0408 	ubfx	r4, r4, #0, #9
300097ea:	4819      	ldr	r0, [pc, #100]	; (30009850 <do_stack_backtrace+0x90>)
300097ec:	9303      	str	r3, [sp, #12]
300097ee:	9102      	str	r1, [sp, #8]
300097f0:	f001 fbd0 	bl	3000af94 <DiagPrintfNano>
300097f4:	9b01      	ldr	r3, [sp, #4]
300097f6:	4a17      	ldr	r2, [pc, #92]	; (30009854 <do_stack_backtrace+0x94>)
300097f8:	4917      	ldr	r1, [pc, #92]	; (30009858 <do_stack_backtrace+0x98>)
300097fa:	4818      	ldr	r0, [pc, #96]	; (3000985c <do_stack_backtrace+0x9c>)
300097fc:	f001 fbca 	bl	3000af94 <DiagPrintfNano>
30009800:	b9ac      	cbnz	r4, 3000982e <do_stack_backtrace+0x6e>
30009802:	682b      	ldr	r3, [r5, #0]
30009804:	b1b3      	cbz	r3, 30009834 <do_stack_backtrace+0x74>
30009806:	4e16      	ldr	r6, [pc, #88]	; (30009860 <do_stack_backtrace+0xa0>)
30009808:	e007      	b.n	3000981a <do_stack_backtrace+0x5a>
3000980a:	9901      	ldr	r1, [sp, #4]
3000980c:	f021 0101 	bic.w	r1, r1, #1
30009810:	f001 fbc0 	bl	3000af94 <DiagPrintfNano>
30009814:	682b      	ldr	r3, [r5, #0]
30009816:	42a3      	cmp	r3, r4
30009818:	d90c      	bls.n	30009834 <do_stack_backtrace+0x74>
3000981a:	aa03      	add	r2, sp, #12
3000981c:	a901      	add	r1, sp, #4
3000981e:	a802      	add	r0, sp, #8
30009820:	3401      	adds	r4, #1
30009822:	f7ff feb7 	bl	30009594 <thumb_backtrace_from_stack>
30009826:	4603      	mov	r3, r0
30009828:	4630      	mov	r0, r6
3000982a:	2b00      	cmp	r3, #0
3000982c:	d0ed      	beq.n	3000980a <do_stack_backtrace+0x4a>
3000982e:	480d      	ldr	r0, [pc, #52]	; (30009864 <do_stack_backtrace+0xa4>)
30009830:	f001 fbb0 	bl	3000af94 <DiagPrintfNano>
30009834:	b004      	add	sp, #16
30009836:	bd70      	pop	{r4, r5, r6, pc}
30009838:	4669      	mov	r1, sp
3000983a:	9102      	str	r1, [sp, #8]
3000983c:	4678      	mov	r0, pc
3000983e:	9001      	str	r0, [sp, #4]
30009840:	4673      	mov	r3, lr
30009842:	9303      	str	r3, [sp, #12]
30009844:	f3ef 8303 	mrs	r3, PSR
30009848:	e7c6      	b.n	300097d8 <do_stack_backtrace+0x18>
3000984a:	bf00      	nop
3000984c:	3000e26c 	.word	0x3000e26c
30009850:	3000cad8 	.word	0x3000cad8
30009854:	3000cb18 	.word	0x3000cb18
30009858:	3000cba0 	.word	0x3000cba0
3000985c:	3000cbd4 	.word	0x3000cbd4
30009860:	3000cc18 	.word	0x3000cc18
30009864:	3000b890 	.word	0x3000b890

30009868 <crash_dump_memory>:
30009868:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
3000986c:	460e      	mov	r6, r1
3000986e:	4680      	mov	r8, r0
30009870:	4b21      	ldr	r3, [pc, #132]	; (300098f8 <crash_dump_memory+0x90>)
30009872:	f1a6 0080 	sub.w	r0, r6, #128	; 0x80
30009876:	4a21      	ldr	r2, [pc, #132]	; (300098fc <crash_dump_memory+0x94>)
30009878:	f8d3 127c 	ldr.w	r1, [r3, #636]	; 0x27c
3000987c:	4644      	mov	r4, r8
3000987e:	f5b0 5f7e 	cmp.w	r0, #16256	; 0x3f80
30009882:	4b1f      	ldr	r3, [pc, #124]	; (30009900 <crash_dump_memory+0x98>)
30009884:	481f      	ldr	r0, [pc, #124]	; (30009904 <crash_dump_memory+0x9c>)
30009886:	bf88      	it	hi
30009888:	2680      	movhi	r6, #128	; 0x80
3000988a:	f011 0fc0 	tst.w	r1, #192	; 0xc0
3000988e:	4f1e      	ldr	r7, [pc, #120]	; (30009908 <crash_dump_memory+0xa0>)
30009890:	bf14      	ite	ne
30009892:	4611      	movne	r1, r2
30009894:	4619      	moveq	r1, r3
30009896:	f001 fb7d 	bl	3000af94 <DiagPrintfNano>
3000989a:	4632      	mov	r2, r6
3000989c:	4641      	mov	r1, r8
3000989e:	481b      	ldr	r0, [pc, #108]	; (3000990c <crash_dump_memory+0xa4>)
300098a0:	f001 fb78 	bl	3000af94 <DiagPrintfNano>
300098a4:	f8df 906c 	ldr.w	r9, [pc, #108]	; 30009914 <crash_dump_memory+0xac>
300098a8:	2300      	movs	r3, #0
300098aa:	f8df a06c 	ldr.w	sl, [pc, #108]	; 30009918 <crash_dump_memory+0xb0>
300098ae:	e007      	b.n	300098c0 <crash_dump_memory+0x58>
300098b0:	6821      	ldr	r1, [r4, #0]
300098b2:	4638      	mov	r0, r7
300098b4:	f001 fb6e 	bl	3000af94 <DiagPrintfNano>
300098b8:	42ae      	cmp	r6, r5
300098ba:	d00f      	beq.n	300098dc <crash_dump_memory+0x74>
300098bc:	3404      	adds	r4, #4
300098be:	462b      	mov	r3, r5
300098c0:	1c5d      	adds	r5, r3, #1
300098c2:	b183      	cbz	r3, 300098e6 <crash_dump_memory+0x7e>
300098c4:	079b      	lsls	r3, r3, #30
300098c6:	d1f3      	bne.n	300098b0 <crash_dump_memory+0x48>
300098c8:	4621      	mov	r1, r4
300098ca:	4648      	mov	r0, r9
300098cc:	f001 fb62 	bl	3000af94 <DiagPrintfNano>
300098d0:	6821      	ldr	r1, [r4, #0]
300098d2:	4638      	mov	r0, r7
300098d4:	f001 fb5e 	bl	3000af94 <DiagPrintfNano>
300098d8:	42ae      	cmp	r6, r5
300098da:	d1ef      	bne.n	300098bc <crash_dump_memory+0x54>
300098dc:	480c      	ldr	r0, [pc, #48]	; (30009910 <crash_dump_memory+0xa8>)
300098de:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
300098e2:	f001 bb57 	b.w	3000af94 <DiagPrintfNano>
300098e6:	4641      	mov	r1, r8
300098e8:	4650      	mov	r0, sl
300098ea:	f001 fb53 	bl	3000af94 <DiagPrintfNano>
300098ee:	6821      	ldr	r1, [r4, #0]
300098f0:	4638      	mov	r0, r7
300098f2:	f001 fb4f 	bl	3000af94 <DiagPrintfNano>
300098f6:	e7e1      	b.n	300098bc <crash_dump_memory+0x54>
300098f8:	42008000 	.word	0x42008000
300098fc:	3000cc20 	.word	0x3000cc20
30009900:	3000cc24 	.word	0x3000cc24
30009904:	3000cc28 	.word	0x3000cc28
30009908:	3000cc94 	.word	0x3000cc94
3000990c:	3000cc4c 	.word	0x3000cc4c
30009910:	3000b890 	.word	0x3000b890
30009914:	3000cc9c 	.word	0x3000cc9c
30009918:	3000cc88 	.word	0x3000cc88

3000991c <crash_dump>:
3000991c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30009920:	4c62      	ldr	r4, [pc, #392]	; (30009aac <crash_dump+0x190>)
30009922:	4615      	mov	r5, r2
30009924:	468a      	mov	sl, r1
30009926:	f04f 23e0 	mov.w	r3, #3758153728	; 0xe000e000
3000992a:	4861      	ldr	r0, [pc, #388]	; (30009ab0 <crash_dump+0x194>)
3000992c:	ed2d 8b02 	vpush	{d8}
30009930:	e9d2 2109 	ldrd	r2, r1, [r2, #36]	; 0x24
30009934:	b083      	sub	sp, #12
30009936:	e9c4 2100 	strd	r2, r1, [r4]
3000993a:	6aea      	ldr	r2, [r5, #44]	; 0x2c
3000993c:	60a2      	str	r2, [r4, #8]
3000993e:	6b2a      	ldr	r2, [r5, #48]	; 0x30
30009940:	60e2      	str	r2, [r4, #12]
30009942:	686a      	ldr	r2, [r5, #4]
30009944:	6122      	str	r2, [r4, #16]
30009946:	68aa      	ldr	r2, [r5, #8]
30009948:	6162      	str	r2, [r4, #20]
3000994a:	68ea      	ldr	r2, [r5, #12]
3000994c:	61a2      	str	r2, [r4, #24]
3000994e:	692a      	ldr	r2, [r5, #16]
30009950:	61e2      	str	r2, [r4, #28]
30009952:	696a      	ldr	r2, [r5, #20]
30009954:	6222      	str	r2, [r4, #32]
30009956:	69aa      	ldr	r2, [r5, #24]
30009958:	6262      	str	r2, [r4, #36]	; 0x24
3000995a:	69ea      	ldr	r2, [r5, #28]
3000995c:	62a2      	str	r2, [r4, #40]	; 0x28
3000995e:	6a2a      	ldr	r2, [r5, #32]
30009960:	62e2      	str	r2, [r4, #44]	; 0x2c
30009962:	6b6a      	ldr	r2, [r5, #52]	; 0x34
30009964:	6322      	str	r2, [r4, #48]	; 0x30
30009966:	6baa      	ldr	r2, [r5, #56]	; 0x38
30009968:	6362      	str	r2, [r4, #52]	; 0x34
3000996a:	6bea      	ldr	r2, [r5, #60]	; 0x3c
3000996c:	63a2      	str	r2, [r4, #56]	; 0x38
3000996e:	6c2a      	ldr	r2, [r5, #64]	; 0x40
30009970:	63e2      	str	r2, [r4, #60]	; 0x3c
30009972:	682a      	ldr	r2, [r5, #0]
30009974:	6422      	str	r2, [r4, #64]	; 0x40
30009976:	f8d3 2d24 	ldr.w	r2, [r3, #3364]	; 0xd24
3000997a:	6462      	str	r2, [r4, #68]	; 0x44
3000997c:	4a4d      	ldr	r2, [pc, #308]	; (30009ab4 <crash_dump+0x198>)
3000997e:	f892 1028 	ldrb.w	r1, [r2, #40]	; 0x28
30009982:	f884 1048 	strb.w	r1, [r4, #72]	; 0x48
30009986:	f8d3 1d34 	ldr.w	r1, [r3, #3380]	; 0xd34
3000998a:	64e1      	str	r1, [r4, #76]	; 0x4c
3000998c:	f892 1029 	ldrb.w	r1, [r2, #41]	; 0x29
30009990:	f884 1050 	strb.w	r1, [r4, #80]	; 0x50
30009994:	f8d3 1d38 	ldr.w	r1, [r3, #3384]	; 0xd38
30009998:	6561      	str	r1, [r4, #84]	; 0x54
3000999a:	8d51      	ldrh	r1, [r2, #42]	; 0x2a
3000999c:	f8a4 1058 	strh.w	r1, [r4, #88]	; 0x58
300099a0:	f8d3 1d2c 	ldr.w	r1, [r3, #3372]	; 0xd2c
300099a4:	65e1      	str	r1, [r4, #92]	; 0x5c
300099a6:	8e11      	ldrh	r1, [r2, #48]	; 0x30
300099a8:	8f92      	ldrh	r2, [r2, #60]	; 0x3c
300099aa:	b289      	uxth	r1, r1
300099ac:	b292      	uxth	r2, r2
300099ae:	6621      	str	r1, [r4, #96]	; 0x60
300099b0:	6662      	str	r2, [r4, #100]	; 0x64
300099b2:	f8d3 2de4 	ldr.w	r2, [r3, #3556]	; 0xde4
300099b6:	66a2      	str	r2, [r4, #104]	; 0x68
300099b8:	f8d3 3de8 	ldr.w	r3, [r3, #3560]	; 0xde8
300099bc:	66e3      	str	r3, [r4, #108]	; 0x6c
300099be:	f001 fae9 	bl	3000af94 <DiagPrintfNano>
300099c2:	4b3d      	ldr	r3, [pc, #244]	; (30009ab8 <crash_dump+0x19c>)
300099c4:	681b      	ldr	r3, [r3, #0]
300099c6:	2b00      	cmp	r3, #0
300099c8:	d06b      	beq.n	30009aa2 <crash_dump+0x186>
300099ca:	4651      	mov	r1, sl
300099cc:	4628      	mov	r0, r5
300099ce:	4798      	blx	r3
300099d0:	ee08 0a10 	vmov	s16, r0
300099d4:	4835      	ldr	r0, [pc, #212]	; (30009aac <crash_dump+0x190>)
300099d6:	46a8      	mov	r8, r5
300099d8:	f000 f88e 	bl	30009af8 <fault_diagnosis>
300099dc:	4837      	ldr	r0, [pc, #220]	; (30009abc <crash_dump+0x1a0>)
300099de:	f001 fad9 	bl	3000af94 <DiagPrintfNano>
300099e2:	6ba9      	ldr	r1, [r5, #56]	; 0x38
300099e4:	4836      	ldr	r0, [pc, #216]	; (30009ac0 <crash_dump+0x1a4>)
300099e6:	462e      	mov	r6, r5
300099e8:	f001 fad4 	bl	3000af94 <DiagPrintfNano>
300099ec:	6be9      	ldr	r1, [r5, #60]	; 0x3c
300099ee:	4835      	ldr	r0, [pc, #212]	; (30009ac4 <crash_dump+0x1a8>)
300099f0:	f001 fad0 	bl	3000af94 <DiagPrintfNano>
300099f4:	6c29      	ldr	r1, [r5, #64]	; 0x40
300099f6:	4834      	ldr	r0, [pc, #208]	; (30009ac8 <crash_dump+0x1ac>)
300099f8:	f001 facc 	bl	3000af94 <DiagPrintfNano>
300099fc:	f858 1b20 	ldr.w	r1, [r8], #32
30009a00:	4832      	ldr	r0, [pc, #200]	; (30009acc <crash_dump+0x1b0>)
30009a02:	f001 fac7 	bl	3000af94 <DiagPrintfNano>
30009a06:	4647      	mov	r7, r8
30009a08:	f105 0330 	add.w	r3, r5, #48	; 0x30
30009a0c:	f8df b0d0 	ldr.w	fp, [pc, #208]	; 30009ae0 <crash_dump+0x1c4>
30009a10:	f857 2f04 	ldr.w	r2, [r7, #4]!
30009a14:	f8cd 8004 	str.w	r8, [sp, #4]
30009a18:	46a8      	mov	r8, r5
30009a1a:	461d      	mov	r5, r3
30009a1c:	492c      	ldr	r1, [pc, #176]	; (30009ad0 <crash_dump+0x1b4>)
30009a1e:	4658      	mov	r0, fp
30009a20:	f8df 90d0 	ldr.w	r9, [pc, #208]	; 30009af4 <crash_dump+0x1d8>
30009a24:	f001 fab6 	bl	3000af94 <DiagPrintfNano>
30009a28:	42af      	cmp	r7, r5
30009a2a:	d008      	beq.n	30009a3e <crash_dump+0x122>
30009a2c:	f857 2f04 	ldr.w	r2, [r7, #4]!
30009a30:	4658      	mov	r0, fp
30009a32:	f859 1b04 	ldr.w	r1, [r9], #4
30009a36:	f001 faad 	bl	3000af94 <DiagPrintfNano>
30009a3a:	42af      	cmp	r7, r5
30009a3c:	d1f6      	bne.n	30009a2c <crash_dump+0x110>
30009a3e:	4645      	mov	r5, r8
30009a40:	4f24      	ldr	r7, [pc, #144]	; (30009ad4 <crash_dump+0x1b8>)
30009a42:	f8dd 8004 	ldr.w	r8, [sp, #4]
30009a46:	4924      	ldr	r1, [pc, #144]	; (30009ad8 <crash_dump+0x1bc>)
30009a48:	f8df 9094 	ldr.w	r9, [pc, #148]	; 30009ae0 <crash_dump+0x1c4>
30009a4c:	e001      	b.n	30009a52 <crash_dump+0x136>
30009a4e:	f857 1b04 	ldr.w	r1, [r7], #4
30009a52:	f856 2f04 	ldr.w	r2, [r6, #4]!
30009a56:	4648      	mov	r0, r9
30009a58:	f001 fa9c 	bl	3000af94 <DiagPrintfNano>
30009a5c:	4546      	cmp	r6, r8
30009a5e:	d1f6      	bne.n	30009a4e <crash_dump+0x132>
30009a60:	6b6a      	ldr	r2, [r5, #52]	; 0x34
30009a62:	491e      	ldr	r1, [pc, #120]	; (30009adc <crash_dump+0x1c0>)
30009a64:	481e      	ldr	r0, [pc, #120]	; (30009ae0 <crash_dump+0x1c4>)
30009a66:	f001 fa95 	bl	3000af94 <DiagPrintfNano>
30009a6a:	ee18 1a10 	vmov	r1, s16
30009a6e:	4650      	mov	r0, sl
30009a70:	f7ff fefa 	bl	30009868 <crash_dump_memory>
30009a74:	481b      	ldr	r0, [pc, #108]	; (30009ae4 <crash_dump+0x1c8>)
30009a76:	f001 fa8d 	bl	3000af94 <DiagPrintfNano>
30009a7a:	6c22      	ldr	r2, [r4, #64]	; 0x40
30009a7c:	4651      	mov	r1, sl
30009a7e:	6ba0      	ldr	r0, [r4, #56]	; 0x38
30009a80:	f7ff fe9e 	bl	300097c0 <do_stack_backtrace>
30009a84:	4818      	ldr	r0, [pc, #96]	; (30009ae8 <crash_dump+0x1cc>)
30009a86:	f001 fa85 	bl	3000af94 <DiagPrintfNano>
30009a8a:	4818      	ldr	r0, [pc, #96]	; (30009aec <crash_dump+0x1d0>)
30009a8c:	f001 fa82 	bl	3000af94 <DiagPrintfNano>
30009a90:	4817      	ldr	r0, [pc, #92]	; (30009af0 <crash_dump+0x1d4>)
30009a92:	f001 fa7f 	bl	3000af94 <DiagPrintfNano>
30009a96:	2000      	movs	r0, #0
30009a98:	b003      	add	sp, #12
30009a9a:	ecbd 8b02 	vpop	{d8}
30009a9e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30009aa2:	2380      	movs	r3, #128	; 0x80
30009aa4:	ee08 3a10 	vmov	s16, r3
30009aa8:	e794      	b.n	300099d4 <crash_dump+0xb8>
30009aaa:	bf00      	nop
30009aac:	3000eb18 	.word	0x3000eb18
30009ab0:	3000ccb0 	.word	0x3000ccb0
30009ab4:	e000ed00 	.word	0xe000ed00
30009ab8:	3000eb14 	.word	0x3000eb14
30009abc:	3000ccd4 	.word	0x3000ccd4
30009ac0:	3000ccfc 	.word	0x3000ccfc
30009ac4:	3000cd0c 	.word	0x3000cd0c
30009ac8:	3000cd1c 	.word	0x3000cd1c
30009acc:	3000cd2c 	.word	0x3000cd2c
30009ad0:	3000cca8 	.word	0x3000cca8
30009ad4:	3000ce04 	.word	0x3000ce04
30009ad8:	3000ccac 	.word	0x3000ccac
30009adc:	3000cd4c 	.word	0x3000cd4c
30009ae0:	3000cd3c 	.word	0x3000cd3c
30009ae4:	3000cd50 	.word	0x3000cd50
30009ae8:	3000cd74 	.word	0x3000cd74
30009aec:	3000cda0 	.word	0x3000cda0
30009af0:	3000cdcc 	.word	0x3000cdcc
30009af4:	3000ce24 	.word	0x3000ce24

30009af8 <fault_diagnosis>:
30009af8:	b510      	push	{r4, lr}
30009afa:	4604      	mov	r4, r0
30009afc:	4888      	ldr	r0, [pc, #544]	; (30009d20 <fault_diagnosis+0x228>)
30009afe:	6ba1      	ldr	r1, [r4, #56]	; 0x38
30009b00:	f001 fa48 	bl	3000af94 <DiagPrintfNano>
30009b04:	f894 305c 	ldrb.w	r3, [r4, #92]	; 0x5c
30009b08:	079b      	lsls	r3, r3, #30
30009b0a:	f100 808a 	bmi.w	30009c22 <fault_diagnosis+0x12a>
30009b0e:	6ea1      	ldr	r1, [r4, #104]	; 0x68
30009b10:	b1e1      	cbz	r1, 30009b4c <fault_diagnosis+0x54>
30009b12:	f894 3068 	ldrb.w	r3, [r4, #104]	; 0x68
30009b16:	07d8      	lsls	r0, r3, #31
30009b18:	f100 8094 	bmi.w	30009c44 <fault_diagnosis+0x14c>
30009b1c:	079a      	lsls	r2, r3, #30
30009b1e:	f100 809a 	bmi.w	30009c56 <fault_diagnosis+0x15e>
30009b22:	0758      	lsls	r0, r3, #29
30009b24:	f100 80a1 	bmi.w	30009c6a <fault_diagnosis+0x172>
30009b28:	0719      	lsls	r1, r3, #28
30009b2a:	f100 80a8 	bmi.w	30009c7e <fault_diagnosis+0x186>
30009b2e:	06da      	lsls	r2, r3, #27
30009b30:	f100 80af 	bmi.w	30009c92 <fault_diagnosis+0x19a>
30009b34:	0698      	lsls	r0, r3, #26
30009b36:	f100 80b6 	bmi.w	30009ca6 <fault_diagnosis+0x1ae>
30009b3a:	0619      	lsls	r1, r3, #24
30009b3c:	f100 80bd 	bmi.w	30009cba <fault_diagnosis+0x1c2>
30009b40:	065a      	lsls	r2, r3, #25
30009b42:	d503      	bpl.n	30009b4c <fault_diagnosis+0x54>
30009b44:	f013 0f28 	tst.w	r3, #40	; 0x28
30009b48:	f040 8186 	bne.w	30009e58 <fault_diagnosis+0x360>
30009b4c:	f894 1048 	ldrb.w	r1, [r4, #72]	; 0x48
30009b50:	b199      	cbz	r1, 30009b7a <fault_diagnosis+0x82>
30009b52:	07cb      	lsls	r3, r1, #31
30009b54:	f100 80b9 	bmi.w	30009cca <fault_diagnosis+0x1d2>
30009b58:	0788      	lsls	r0, r1, #30
30009b5a:	f100 80bf 	bmi.w	30009cdc <fault_diagnosis+0x1e4>
30009b5e:	070a      	lsls	r2, r1, #28
30009b60:	f100 80c5 	bmi.w	30009cee <fault_diagnosis+0x1f6>
30009b64:	06cb      	lsls	r3, r1, #27
30009b66:	f100 80cb 	bmi.w	30009d00 <fault_diagnosis+0x208>
30009b6a:	0688      	lsls	r0, r1, #26
30009b6c:	f100 80d1 	bmi.w	30009d12 <fault_diagnosis+0x21a>
30009b70:	060a      	lsls	r2, r1, #24
30009b72:	d502      	bpl.n	30009b7a <fault_diagnosis+0x82>
30009b74:	078b      	lsls	r3, r1, #30
30009b76:	f040 8194 	bne.w	30009ea2 <fault_diagnosis+0x3aa>
30009b7a:	f894 1050 	ldrb.w	r1, [r4, #80]	; 0x50
30009b7e:	b1b1      	cbz	r1, 30009bae <fault_diagnosis+0xb6>
30009b80:	07c8      	lsls	r0, r1, #31
30009b82:	f100 80f7 	bmi.w	30009d74 <fault_diagnosis+0x27c>
30009b86:	078a      	lsls	r2, r1, #30
30009b88:	f100 80fd 	bmi.w	30009d86 <fault_diagnosis+0x28e>
30009b8c:	074b      	lsls	r3, r1, #29
30009b8e:	f100 8103 	bmi.w	30009d98 <fault_diagnosis+0x2a0>
30009b92:	0708      	lsls	r0, r1, #28
30009b94:	f100 8109 	bmi.w	30009daa <fault_diagnosis+0x2b2>
30009b98:	06ca      	lsls	r2, r1, #27
30009b9a:	f100 810f 	bmi.w	30009dbc <fault_diagnosis+0x2c4>
30009b9e:	068b      	lsls	r3, r1, #26
30009ba0:	f100 8115 	bmi.w	30009dce <fault_diagnosis+0x2d6>
30009ba4:	0608      	lsls	r0, r1, #24
30009ba6:	d502      	bpl.n	30009bae <fault_diagnosis+0xb6>
30009ba8:	0789      	lsls	r1, r1, #30
30009baa:	f100 8180 	bmi.w	30009eae <fault_diagnosis+0x3b6>
30009bae:	f8b4 1058 	ldrh.w	r1, [r4, #88]	; 0x58
30009bb2:	b1b9      	cbz	r1, 30009be4 <fault_diagnosis+0xec>
30009bb4:	f894 3058 	ldrb.w	r3, [r4, #88]	; 0x58
30009bb8:	07da      	lsls	r2, r3, #31
30009bba:	f100 810f 	bmi.w	30009ddc <fault_diagnosis+0x2e4>
30009bbe:	0798      	lsls	r0, r3, #30
30009bc0:	f100 8115 	bmi.w	30009dee <fault_diagnosis+0x2f6>
30009bc4:	0759      	lsls	r1, r3, #29
30009bc6:	f100 811d 	bmi.w	30009e04 <fault_diagnosis+0x30c>
30009bca:	071a      	lsls	r2, r3, #28
30009bcc:	f100 8125 	bmi.w	30009e1a <fault_diagnosis+0x322>
30009bd0:	06db      	lsls	r3, r3, #27
30009bd2:	f100 812d 	bmi.w	30009e30 <fault_diagnosis+0x338>
30009bd6:	f894 3059 	ldrb.w	r3, [r4, #89]	; 0x59
30009bda:	07d8      	lsls	r0, r3, #31
30009bdc:	f100 8133 	bmi.w	30009e46 <fault_diagnosis+0x34e>
30009be0:	0799      	lsls	r1, r3, #30
30009be2:	d424      	bmi.n	30009c2e <fault_diagnosis+0x136>
30009be4:	f994 305f 	ldrsb.w	r3, [r4, #95]	; 0x5f
30009be8:	2b00      	cmp	r3, #0
30009bea:	db00      	blt.n	30009bee <fault_diagnosis+0xf6>
30009bec:	bd10      	pop	{r4, pc}
30009bee:	6e21      	ldr	r1, [r4, #96]	; 0x60
30009bf0:	2900      	cmp	r1, #0
30009bf2:	d0fb      	beq.n	30009bec <fault_diagnosis+0xf4>
30009bf4:	f894 3060 	ldrb.w	r3, [r4, #96]	; 0x60
30009bf8:	07da      	lsls	r2, r3, #31
30009bfa:	f100 8143 	bmi.w	30009e84 <fault_diagnosis+0x38c>
30009bfe:	0798      	lsls	r0, r3, #30
30009c00:	f100 8138 	bmi.w	30009e74 <fault_diagnosis+0x37c>
30009c04:	0759      	lsls	r1, r3, #29
30009c06:	f100 812d 	bmi.w	30009e64 <fault_diagnosis+0x36c>
30009c0a:	071a      	lsls	r2, r3, #28
30009c0c:	f100 8141 	bmi.w	30009e92 <fault_diagnosis+0x39a>
30009c10:	06db      	lsls	r3, r3, #27
30009c12:	d5eb      	bpl.n	30009bec <fault_diagnosis+0xf4>
30009c14:	6e21      	ldr	r1, [r4, #96]	; 0x60
30009c16:	4a43      	ldr	r2, [pc, #268]	; (30009d24 <fault_diagnosis+0x22c>)
30009c18:	4843      	ldr	r0, [pc, #268]	; (30009d28 <fault_diagnosis+0x230>)
30009c1a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
30009c1e:	f001 b9b9 	b.w	3000af94 <DiagPrintfNano>
30009c22:	4a42      	ldr	r2, [pc, #264]	; (30009d2c <fault_diagnosis+0x234>)
30009c24:	6de1      	ldr	r1, [r4, #92]	; 0x5c
30009c26:	4842      	ldr	r0, [pc, #264]	; (30009d30 <fault_diagnosis+0x238>)
30009c28:	f001 f9b4 	bl	3000af94 <DiagPrintfNano>
30009c2c:	e76f      	b.n	30009b0e <fault_diagnosis+0x16>
30009c2e:	4a41      	ldr	r2, [pc, #260]	; (30009d34 <fault_diagnosis+0x23c>)
30009c30:	f8b4 1058 	ldrh.w	r1, [r4, #88]	; 0x58
30009c34:	4840      	ldr	r0, [pc, #256]	; (30009d38 <fault_diagnosis+0x240>)
30009c36:	f001 f9ad 	bl	3000af94 <DiagPrintfNano>
30009c3a:	f994 305f 	ldrsb.w	r3, [r4, #95]	; 0x5f
30009c3e:	2b00      	cmp	r3, #0
30009c40:	dad4      	bge.n	30009bec <fault_diagnosis+0xf4>
30009c42:	e7d4      	b.n	30009bee <fault_diagnosis+0xf6>
30009c44:	4a3d      	ldr	r2, [pc, #244]	; (30009d3c <fault_diagnosis+0x244>)
30009c46:	483e      	ldr	r0, [pc, #248]	; (30009d40 <fault_diagnosis+0x248>)
30009c48:	f001 f9a4 	bl	3000af94 <DiagPrintfNano>
30009c4c:	f894 3068 	ldrb.w	r3, [r4, #104]	; 0x68
30009c50:	079a      	lsls	r2, r3, #30
30009c52:	f57f af66 	bpl.w	30009b22 <fault_diagnosis+0x2a>
30009c56:	4a3b      	ldr	r2, [pc, #236]	; (30009d44 <fault_diagnosis+0x24c>)
30009c58:	6ea1      	ldr	r1, [r4, #104]	; 0x68
30009c5a:	4839      	ldr	r0, [pc, #228]	; (30009d40 <fault_diagnosis+0x248>)
30009c5c:	f001 f99a 	bl	3000af94 <DiagPrintfNano>
30009c60:	f894 3068 	ldrb.w	r3, [r4, #104]	; 0x68
30009c64:	0758      	lsls	r0, r3, #29
30009c66:	f57f af5f 	bpl.w	30009b28 <fault_diagnosis+0x30>
30009c6a:	6ea1      	ldr	r1, [r4, #104]	; 0x68
30009c6c:	4a36      	ldr	r2, [pc, #216]	; (30009d48 <fault_diagnosis+0x250>)
30009c6e:	4834      	ldr	r0, [pc, #208]	; (30009d40 <fault_diagnosis+0x248>)
30009c70:	f001 f990 	bl	3000af94 <DiagPrintfNano>
30009c74:	f894 3068 	ldrb.w	r3, [r4, #104]	; 0x68
30009c78:	0719      	lsls	r1, r3, #28
30009c7a:	f57f af58 	bpl.w	30009b2e <fault_diagnosis+0x36>
30009c7e:	4a33      	ldr	r2, [pc, #204]	; (30009d4c <fault_diagnosis+0x254>)
30009c80:	6ea1      	ldr	r1, [r4, #104]	; 0x68
30009c82:	482f      	ldr	r0, [pc, #188]	; (30009d40 <fault_diagnosis+0x248>)
30009c84:	f001 f986 	bl	3000af94 <DiagPrintfNano>
30009c88:	f894 3068 	ldrb.w	r3, [r4, #104]	; 0x68
30009c8c:	06da      	lsls	r2, r3, #27
30009c8e:	f57f af51 	bpl.w	30009b34 <fault_diagnosis+0x3c>
30009c92:	4a2f      	ldr	r2, [pc, #188]	; (30009d50 <fault_diagnosis+0x258>)
30009c94:	6ea1      	ldr	r1, [r4, #104]	; 0x68
30009c96:	482a      	ldr	r0, [pc, #168]	; (30009d40 <fault_diagnosis+0x248>)
30009c98:	f001 f97c 	bl	3000af94 <DiagPrintfNano>
30009c9c:	f894 3068 	ldrb.w	r3, [r4, #104]	; 0x68
30009ca0:	0698      	lsls	r0, r3, #26
30009ca2:	f57f af4a 	bpl.w	30009b3a <fault_diagnosis+0x42>
30009ca6:	6ea1      	ldr	r1, [r4, #104]	; 0x68
30009ca8:	4a2a      	ldr	r2, [pc, #168]	; (30009d54 <fault_diagnosis+0x25c>)
30009caa:	4825      	ldr	r0, [pc, #148]	; (30009d40 <fault_diagnosis+0x248>)
30009cac:	f001 f972 	bl	3000af94 <DiagPrintfNano>
30009cb0:	f894 3068 	ldrb.w	r3, [r4, #104]	; 0x68
30009cb4:	0619      	lsls	r1, r3, #24
30009cb6:	f57f af43 	bpl.w	30009b40 <fault_diagnosis+0x48>
30009cba:	4a27      	ldr	r2, [pc, #156]	; (30009d58 <fault_diagnosis+0x260>)
30009cbc:	6ea1      	ldr	r1, [r4, #104]	; 0x68
30009cbe:	4820      	ldr	r0, [pc, #128]	; (30009d40 <fault_diagnosis+0x248>)
30009cc0:	f001 f968 	bl	3000af94 <DiagPrintfNano>
30009cc4:	f894 3068 	ldrb.w	r3, [r4, #104]	; 0x68
30009cc8:	e73a      	b.n	30009b40 <fault_diagnosis+0x48>
30009cca:	4a24      	ldr	r2, [pc, #144]	; (30009d5c <fault_diagnosis+0x264>)
30009ccc:	4824      	ldr	r0, [pc, #144]	; (30009d60 <fault_diagnosis+0x268>)
30009cce:	f001 f961 	bl	3000af94 <DiagPrintfNano>
30009cd2:	f894 1048 	ldrb.w	r1, [r4, #72]	; 0x48
30009cd6:	0788      	lsls	r0, r1, #30
30009cd8:	f57f af41 	bpl.w	30009b5e <fault_diagnosis+0x66>
30009cdc:	4a21      	ldr	r2, [pc, #132]	; (30009d64 <fault_diagnosis+0x26c>)
30009cde:	4820      	ldr	r0, [pc, #128]	; (30009d60 <fault_diagnosis+0x268>)
30009ce0:	f001 f958 	bl	3000af94 <DiagPrintfNano>
30009ce4:	f894 1048 	ldrb.w	r1, [r4, #72]	; 0x48
30009ce8:	070a      	lsls	r2, r1, #28
30009cea:	f57f af3b 	bpl.w	30009b64 <fault_diagnosis+0x6c>
30009cee:	4a1e      	ldr	r2, [pc, #120]	; (30009d68 <fault_diagnosis+0x270>)
30009cf0:	481b      	ldr	r0, [pc, #108]	; (30009d60 <fault_diagnosis+0x268>)
30009cf2:	f001 f94f 	bl	3000af94 <DiagPrintfNano>
30009cf6:	f894 1048 	ldrb.w	r1, [r4, #72]	; 0x48
30009cfa:	06cb      	lsls	r3, r1, #27
30009cfc:	f57f af35 	bpl.w	30009b6a <fault_diagnosis+0x72>
30009d00:	4a1a      	ldr	r2, [pc, #104]	; (30009d6c <fault_diagnosis+0x274>)
30009d02:	4817      	ldr	r0, [pc, #92]	; (30009d60 <fault_diagnosis+0x268>)
30009d04:	f001 f946 	bl	3000af94 <DiagPrintfNano>
30009d08:	f894 1048 	ldrb.w	r1, [r4, #72]	; 0x48
30009d0c:	0688      	lsls	r0, r1, #26
30009d0e:	f57f af2f 	bpl.w	30009b70 <fault_diagnosis+0x78>
30009d12:	4a17      	ldr	r2, [pc, #92]	; (30009d70 <fault_diagnosis+0x278>)
30009d14:	4812      	ldr	r0, [pc, #72]	; (30009d60 <fault_diagnosis+0x268>)
30009d16:	f001 f93d 	bl	3000af94 <DiagPrintfNano>
30009d1a:	f894 1048 	ldrb.w	r1, [r4, #72]	; 0x48
30009d1e:	e727      	b.n	30009b70 <fault_diagnosis+0x78>
30009d20:	3000ce34 	.word	0x3000ce34
30009d24:	3000d6c8 	.word	0x3000d6c8
30009d28:	3000d620 	.word	0x3000d620
30009d2c:	3000ce50 	.word	0x3000ce50
30009d30:	3000ce7c 	.word	0x3000ce7c
30009d34:	3000d584 	.word	0x3000d584
30009d38:	3000d3c8 	.word	0x3000d3c8
30009d3c:	3000ce94 	.word	0x3000ce94
30009d40:	3000cec4 	.word	0x3000cec4
30009d44:	3000cedc 	.word	0x3000cedc
30009d48:	3000cf14 	.word	0x3000cf14
30009d4c:	3000cf4c 	.word	0x3000cf4c
30009d50:	3000cf84 	.word	0x3000cf84
30009d54:	3000cfb4 	.word	0x3000cfb4
30009d58:	3000cff0 	.word	0x3000cff0
30009d5c:	3000d060 	.word	0x3000d060
30009d60:	3000d0a4 	.word	0x3000d0a4
30009d64:	3000d0bc 	.word	0x3000d0bc
30009d68:	3000d0f8 	.word	0x3000d0f8
30009d6c:	3000d130 	.word	0x3000d130
30009d70:	3000d164 	.word	0x3000d164
30009d74:	4a51      	ldr	r2, [pc, #324]	; (30009ebc <fault_diagnosis+0x3c4>)
30009d76:	4852      	ldr	r0, [pc, #328]	; (30009ec0 <fault_diagnosis+0x3c8>)
30009d78:	f001 f90c 	bl	3000af94 <DiagPrintfNano>
30009d7c:	f894 1050 	ldrb.w	r1, [r4, #80]	; 0x50
30009d80:	078a      	lsls	r2, r1, #30
30009d82:	f57f af03 	bpl.w	30009b8c <fault_diagnosis+0x94>
30009d86:	4a4f      	ldr	r2, [pc, #316]	; (30009ec4 <fault_diagnosis+0x3cc>)
30009d88:	484d      	ldr	r0, [pc, #308]	; (30009ec0 <fault_diagnosis+0x3c8>)
30009d8a:	f001 f903 	bl	3000af94 <DiagPrintfNano>
30009d8e:	f894 1050 	ldrb.w	r1, [r4, #80]	; 0x50
30009d92:	074b      	lsls	r3, r1, #29
30009d94:	f57f aefd 	bpl.w	30009b92 <fault_diagnosis+0x9a>
30009d98:	4a4b      	ldr	r2, [pc, #300]	; (30009ec8 <fault_diagnosis+0x3d0>)
30009d9a:	4849      	ldr	r0, [pc, #292]	; (30009ec0 <fault_diagnosis+0x3c8>)
30009d9c:	f001 f8fa 	bl	3000af94 <DiagPrintfNano>
30009da0:	f894 1050 	ldrb.w	r1, [r4, #80]	; 0x50
30009da4:	0708      	lsls	r0, r1, #28
30009da6:	f57f aef7 	bpl.w	30009b98 <fault_diagnosis+0xa0>
30009daa:	4a48      	ldr	r2, [pc, #288]	; (30009ecc <fault_diagnosis+0x3d4>)
30009dac:	4844      	ldr	r0, [pc, #272]	; (30009ec0 <fault_diagnosis+0x3c8>)
30009dae:	f001 f8f1 	bl	3000af94 <DiagPrintfNano>
30009db2:	f894 1050 	ldrb.w	r1, [r4, #80]	; 0x50
30009db6:	06ca      	lsls	r2, r1, #27
30009db8:	f57f aef1 	bpl.w	30009b9e <fault_diagnosis+0xa6>
30009dbc:	4a44      	ldr	r2, [pc, #272]	; (30009ed0 <fault_diagnosis+0x3d8>)
30009dbe:	4840      	ldr	r0, [pc, #256]	; (30009ec0 <fault_diagnosis+0x3c8>)
30009dc0:	f001 f8e8 	bl	3000af94 <DiagPrintfNano>
30009dc4:	f894 1050 	ldrb.w	r1, [r4, #80]	; 0x50
30009dc8:	068b      	lsls	r3, r1, #26
30009dca:	f57f aeeb 	bpl.w	30009ba4 <fault_diagnosis+0xac>
30009dce:	4a41      	ldr	r2, [pc, #260]	; (30009ed4 <fault_diagnosis+0x3dc>)
30009dd0:	483b      	ldr	r0, [pc, #236]	; (30009ec0 <fault_diagnosis+0x3c8>)
30009dd2:	f001 f8df 	bl	3000af94 <DiagPrintfNano>
30009dd6:	f894 1050 	ldrb.w	r1, [r4, #80]	; 0x50
30009dda:	e6e3      	b.n	30009ba4 <fault_diagnosis+0xac>
30009ddc:	4a3e      	ldr	r2, [pc, #248]	; (30009ed8 <fault_diagnosis+0x3e0>)
30009dde:	483f      	ldr	r0, [pc, #252]	; (30009edc <fault_diagnosis+0x3e4>)
30009de0:	f001 f8d8 	bl	3000af94 <DiagPrintfNano>
30009de4:	f894 3058 	ldrb.w	r3, [r4, #88]	; 0x58
30009de8:	0798      	lsls	r0, r3, #30
30009dea:	f57f aeeb 	bpl.w	30009bc4 <fault_diagnosis+0xcc>
30009dee:	f8b4 1058 	ldrh.w	r1, [r4, #88]	; 0x58
30009df2:	4a3b      	ldr	r2, [pc, #236]	; (30009ee0 <fault_diagnosis+0x3e8>)
30009df4:	4839      	ldr	r0, [pc, #228]	; (30009edc <fault_diagnosis+0x3e4>)
30009df6:	f001 f8cd 	bl	3000af94 <DiagPrintfNano>
30009dfa:	f894 3058 	ldrb.w	r3, [r4, #88]	; 0x58
30009dfe:	0759      	lsls	r1, r3, #29
30009e00:	f57f aee3 	bpl.w	30009bca <fault_diagnosis+0xd2>
30009e04:	4a37      	ldr	r2, [pc, #220]	; (30009ee4 <fault_diagnosis+0x3ec>)
30009e06:	f8b4 1058 	ldrh.w	r1, [r4, #88]	; 0x58
30009e0a:	4834      	ldr	r0, [pc, #208]	; (30009edc <fault_diagnosis+0x3e4>)
30009e0c:	f001 f8c2 	bl	3000af94 <DiagPrintfNano>
30009e10:	f894 3058 	ldrb.w	r3, [r4, #88]	; 0x58
30009e14:	071a      	lsls	r2, r3, #28
30009e16:	f57f aedb 	bpl.w	30009bd0 <fault_diagnosis+0xd8>
30009e1a:	4a33      	ldr	r2, [pc, #204]	; (30009ee8 <fault_diagnosis+0x3f0>)
30009e1c:	f8b4 1058 	ldrh.w	r1, [r4, #88]	; 0x58
30009e20:	482e      	ldr	r0, [pc, #184]	; (30009edc <fault_diagnosis+0x3e4>)
30009e22:	f001 f8b7 	bl	3000af94 <DiagPrintfNano>
30009e26:	f894 3058 	ldrb.w	r3, [r4, #88]	; 0x58
30009e2a:	06db      	lsls	r3, r3, #27
30009e2c:	f57f aed3 	bpl.w	30009bd6 <fault_diagnosis+0xde>
30009e30:	4a2e      	ldr	r2, [pc, #184]	; (30009eec <fault_diagnosis+0x3f4>)
30009e32:	f8b4 1058 	ldrh.w	r1, [r4, #88]	; 0x58
30009e36:	4829      	ldr	r0, [pc, #164]	; (30009edc <fault_diagnosis+0x3e4>)
30009e38:	f001 f8ac 	bl	3000af94 <DiagPrintfNano>
30009e3c:	f894 3059 	ldrb.w	r3, [r4, #89]	; 0x59
30009e40:	07d8      	lsls	r0, r3, #31
30009e42:	f57f aecd 	bpl.w	30009be0 <fault_diagnosis+0xe8>
30009e46:	4a2a      	ldr	r2, [pc, #168]	; (30009ef0 <fault_diagnosis+0x3f8>)
30009e48:	f8b4 1058 	ldrh.w	r1, [r4, #88]	; 0x58
30009e4c:	4823      	ldr	r0, [pc, #140]	; (30009edc <fault_diagnosis+0x3e4>)
30009e4e:	f001 f8a1 	bl	3000af94 <DiagPrintfNano>
30009e52:	f894 3059 	ldrb.w	r3, [r4, #89]	; 0x59
30009e56:	e6c3      	b.n	30009be0 <fault_diagnosis+0xe8>
30009e58:	4a26      	ldr	r2, [pc, #152]	; (30009ef4 <fault_diagnosis+0x3fc>)
30009e5a:	6ee1      	ldr	r1, [r4, #108]	; 0x6c
30009e5c:	4826      	ldr	r0, [pc, #152]	; (30009ef8 <fault_diagnosis+0x400>)
30009e5e:	f001 f899 	bl	3000af94 <DiagPrintfNano>
30009e62:	e673      	b.n	30009b4c <fault_diagnosis+0x54>
30009e64:	4a25      	ldr	r2, [pc, #148]	; (30009efc <fault_diagnosis+0x404>)
30009e66:	6e21      	ldr	r1, [r4, #96]	; 0x60
30009e68:	4825      	ldr	r0, [pc, #148]	; (30009f00 <fault_diagnosis+0x408>)
30009e6a:	f001 f893 	bl	3000af94 <DiagPrintfNano>
30009e6e:	f894 3060 	ldrb.w	r3, [r4, #96]	; 0x60
30009e72:	e6ca      	b.n	30009c0a <fault_diagnosis+0x112>
30009e74:	4a23      	ldr	r2, [pc, #140]	; (30009f04 <fault_diagnosis+0x40c>)
30009e76:	6e21      	ldr	r1, [r4, #96]	; 0x60
30009e78:	4821      	ldr	r0, [pc, #132]	; (30009f00 <fault_diagnosis+0x408>)
30009e7a:	f001 f88b 	bl	3000af94 <DiagPrintfNano>
30009e7e:	f894 3060 	ldrb.w	r3, [r4, #96]	; 0x60
30009e82:	e6bf      	b.n	30009c04 <fault_diagnosis+0x10c>
30009e84:	4a20      	ldr	r2, [pc, #128]	; (30009f08 <fault_diagnosis+0x410>)
30009e86:	481e      	ldr	r0, [pc, #120]	; (30009f00 <fault_diagnosis+0x408>)
30009e88:	f001 f884 	bl	3000af94 <DiagPrintfNano>
30009e8c:	f894 3060 	ldrb.w	r3, [r4, #96]	; 0x60
30009e90:	e6b5      	b.n	30009bfe <fault_diagnosis+0x106>
30009e92:	4a1e      	ldr	r2, [pc, #120]	; (30009f0c <fault_diagnosis+0x414>)
30009e94:	6e21      	ldr	r1, [r4, #96]	; 0x60
30009e96:	481a      	ldr	r0, [pc, #104]	; (30009f00 <fault_diagnosis+0x408>)
30009e98:	f001 f87c 	bl	3000af94 <DiagPrintfNano>
30009e9c:	f894 3060 	ldrb.w	r3, [r4, #96]	; 0x60
30009ea0:	e6b6      	b.n	30009c10 <fault_diagnosis+0x118>
30009ea2:	4a1b      	ldr	r2, [pc, #108]	; (30009f10 <fault_diagnosis+0x418>)
30009ea4:	6ce1      	ldr	r1, [r4, #76]	; 0x4c
30009ea6:	481b      	ldr	r0, [pc, #108]	; (30009f14 <fault_diagnosis+0x41c>)
30009ea8:	f001 f874 	bl	3000af94 <DiagPrintfNano>
30009eac:	e665      	b.n	30009b7a <fault_diagnosis+0x82>
30009eae:	4a1a      	ldr	r2, [pc, #104]	; (30009f18 <fault_diagnosis+0x420>)
30009eb0:	6d61      	ldr	r1, [r4, #84]	; 0x54
30009eb2:	481a      	ldr	r0, [pc, #104]	; (30009f1c <fault_diagnosis+0x424>)
30009eb4:	f001 f86e 	bl	3000af94 <DiagPrintfNano>
30009eb8:	e679      	b.n	30009bae <fault_diagnosis+0xb6>
30009eba:	bf00      	nop
30009ebc:	3000d1f8 	.word	0x3000d1f8
30009ec0:	3000d22c 	.word	0x3000d22c
30009ec4:	3000d244 	.word	0x3000d244
30009ec8:	3000d27c 	.word	0x3000d27c
30009ecc:	3000d2b4 	.word	0x3000d2b4
30009ed0:	3000d2dc 	.word	0x3000d2dc
30009ed4:	3000d304 	.word	0x3000d304
30009ed8:	3000d380 	.word	0x3000d380
30009edc:	3000d3c8 	.word	0x3000d3c8
30009ee0:	3000d3e0 	.word	0x3000d3e0
30009ee4:	3000d42c 	.word	0x3000d42c
30009ee8:	3000d48c 	.word	0x3000d48c
30009eec:	3000d4d4 	.word	0x3000d4d4
30009ef0:	3000d530 	.word	0x3000d530
30009ef4:	3000d020 	.word	0x3000d020
30009ef8:	3000d048 	.word	0x3000d048
30009efc:	3000d66c 	.word	0x3000d66c
30009f00:	3000d620 	.word	0x3000d620
30009f04:	3000d638 	.word	0x3000d638
30009f08:	3000d5f0 	.word	0x3000d5f0
30009f0c:	3000d698 	.word	0x3000d698
30009f10:	3000d1b0 	.word	0x3000d1b0
30009f14:	3000d1e0 	.word	0x3000d1e0
30009f18:	3000d344 	.word	0x3000d344
30009f1c:	3000d368 	.word	0x3000d368

30009f20 <ChipInfo_Invalid>:
30009f20:	4e06      	ldr	r6, [pc, #24]	; (30009f3c <ChipInfo_Invalid+0x1c>)
30009f22:	4d07      	ldr	r5, [pc, #28]	; (30009f40 <ChipInfo_Invalid+0x20>)
30009f24:	4c07      	ldr	r4, [pc, #28]	; (30009f44 <ChipInfo_Invalid+0x24>)
30009f26:	b508      	push	{r3, lr}
30009f28:	462b      	mov	r3, r5
30009f2a:	2245      	movs	r2, #69	; 0x45
30009f2c:	4621      	mov	r1, r4
30009f2e:	2002      	movs	r0, #2
30009f30:	f7ff fa0c 	bl	3000934c <rtk_log_write>
30009f34:	f242 7010 	movw	r0, #10000	; 0x2710
30009f38:	47b0      	blx	r6
30009f3a:	e7f5      	b.n	30009f28 <ChipInfo_Invalid+0x8>
30009f3c:	00009be5 	.word	0x00009be5
30009f40:	3000d6f8 	.word	0x3000d6f8
30009f44:	3000d718 	.word	0x3000d718

30009f48 <ChipInfo_Get>:
30009f48:	b570      	push	{r4, r5, r6, lr}
30009f4a:	4c12      	ldr	r4, [pc, #72]	; (30009f94 <ChipInfo_Get+0x4c>)
30009f4c:	7820      	ldrb	r0, [r4, #0]
30009f4e:	28ff      	cmp	r0, #255	; 0xff
30009f50:	d107      	bne.n	30009f62 <ChipInfo_Get+0x1a>
30009f52:	4d11      	ldr	r5, [pc, #68]	; (30009f98 <ChipInfo_Get+0x50>)
30009f54:	f895 310f 	ldrb.w	r3, [r5, #271]	; 0x10f
30009f58:	b123      	cbz	r3, 30009f64 <ChipInfo_Get+0x1c>
30009f5a:	f895 010f 	ldrb.w	r0, [r5, #271]	; 0x10f
30009f5e:	b2c0      	uxtb	r0, r0
30009f60:	7020      	strb	r0, [r4, #0]
30009f62:	bd70      	pop	{r4, r5, r6, pc}
30009f64:	4621      	mov	r1, r4
30009f66:	f240 70ff 	movw	r0, #2047	; 0x7ff
30009f6a:	f7fe fd93 	bl	30008a94 <OTP_Read8>
30009f6e:	7820      	ldrb	r0, [r4, #0]
30009f70:	28ff      	cmp	r0, #255	; 0xff
30009f72:	d002      	beq.n	30009f7a <ChipInfo_Get+0x32>
30009f74:	f885 010f 	strb.w	r0, [r5, #271]	; 0x10f
30009f78:	bd70      	pop	{r4, r5, r6, pc}
30009f7a:	4e08      	ldr	r6, [pc, #32]	; (30009f9c <ChipInfo_Get+0x54>)
30009f7c:	4d08      	ldr	r5, [pc, #32]	; (30009fa0 <ChipInfo_Get+0x58>)
30009f7e:	4c09      	ldr	r4, [pc, #36]	; (30009fa4 <ChipInfo_Get+0x5c>)
30009f80:	462b      	mov	r3, r5
30009f82:	2257      	movs	r2, #87	; 0x57
30009f84:	4621      	mov	r1, r4
30009f86:	2003      	movs	r0, #3
30009f88:	f7ff f9e0 	bl	3000934c <rtk_log_write>
30009f8c:	f242 7010 	movw	r0, #10000	; 0x2710
30009f90:	47b0      	blx	r6
30009f92:	e7f5      	b.n	30009f80 <ChipInfo_Get+0x38>
30009f94:	3000e270 	.word	0x3000e270
30009f98:	23020000 	.word	0x23020000
30009f9c:	00009be5 	.word	0x00009be5
30009fa0:	3000d724 	.word	0x3000d724
30009fa4:	3000d718 	.word	0x3000d718

30009fa8 <ChipInfo_MemoryType>:
30009fa8:	b510      	push	{r4, lr}
30009faa:	4c11      	ldr	r4, [pc, #68]	; (30009ff0 <ChipInfo_MemoryType+0x48>)
30009fac:	47a0      	blx	r4
30009fae:	2802      	cmp	r0, #2
30009fb0:	d019      	beq.n	30009fe6 <ChipInfo_MemoryType+0x3e>
30009fb2:	47a0      	blx	r4
30009fb4:	2803      	cmp	r0, #3
30009fb6:	d016      	beq.n	30009fe6 <ChipInfo_MemoryType+0x3e>
30009fb8:	4c0e      	ldr	r4, [pc, #56]	; (30009ff4 <ChipInfo_MemoryType+0x4c>)
30009fba:	4b0f      	ldr	r3, [pc, #60]	; (30009ff8 <ChipInfo_MemoryType+0x50>)
30009fbc:	4798      	blx	r3
30009fbe:	2100      	movs	r1, #0
30009fc0:	2306      	movs	r3, #6
30009fc2:	4622      	mov	r2, r4
30009fc4:	e004      	b.n	30009fd0 <ChipInfo_MemoryType+0x28>
30009fc6:	7a13      	ldrb	r3, [r2, #8]
30009fc8:	3101      	adds	r1, #1
30009fca:	3206      	adds	r2, #6
30009fcc:	2bff      	cmp	r3, #255	; 0xff
30009fce:	d00c      	beq.n	30009fea <ChipInfo_MemoryType+0x42>
30009fd0:	4298      	cmp	r0, r3
30009fd2:	d1f8      	bne.n	30009fc6 <ChipInfo_MemoryType+0x1e>
30009fd4:	eb01 0141 	add.w	r1, r1, r1, lsl #1
30009fd8:	eb04 0141 	add.w	r1, r4, r1, lsl #1
30009fdc:	78cb      	ldrb	r3, [r1, #3]
30009fde:	2b02      	cmp	r3, #2
30009fe0:	d001      	beq.n	30009fe6 <ChipInfo_MemoryType+0x3e>
30009fe2:	2001      	movs	r0, #1
30009fe4:	bd10      	pop	{r4, pc}
30009fe6:	2002      	movs	r0, #2
30009fe8:	bd10      	pop	{r4, pc}
30009fea:	f7ff ff99 	bl	30009f20 <ChipInfo_Invalid>
30009fee:	bf00      	nop
30009ff0:	0000c0f9 	.word	0x0000c0f9
30009ff4:	3000d7e4 	.word	0x3000d7e4
30009ff8:	30009f49 	.word	0x30009f49

30009ffc <ChipInfo_DDRType>:
30009ffc:	b510      	push	{r4, lr}
30009ffe:	4b0f      	ldr	r3, [pc, #60]	; (3000a03c <ChipInfo_DDRType+0x40>)
3000a000:	4798      	blx	r3
3000a002:	4b0f      	ldr	r3, [pc, #60]	; (3000a040 <ChipInfo_DDRType+0x44>)
3000a004:	4604      	mov	r4, r0
3000a006:	4798      	blx	r3
3000a008:	2801      	cmp	r0, #1
3000a00a:	d112      	bne.n	3000a032 <ChipInfo_DDRType+0x36>
3000a00c:	480d      	ldr	r0, [pc, #52]	; (3000a044 <ChipInfo_DDRType+0x48>)
3000a00e:	2100      	movs	r1, #0
3000a010:	2206      	movs	r2, #6
3000a012:	4603      	mov	r3, r0
3000a014:	e003      	b.n	3000a01e <ChipInfo_DDRType+0x22>
3000a016:	789a      	ldrb	r2, [r3, #2]
3000a018:	3101      	adds	r1, #1
3000a01a:	2aff      	cmp	r2, #255	; 0xff
3000a01c:	d00b      	beq.n	3000a036 <ChipInfo_DDRType+0x3a>
3000a01e:	4294      	cmp	r4, r2
3000a020:	f103 0306 	add.w	r3, r3, #6
3000a024:	d1f7      	bne.n	3000a016 <ChipInfo_DDRType+0x1a>
3000a026:	eb01 0141 	add.w	r1, r1, r1, lsl #1
3000a02a:	eb00 0141 	add.w	r1, r0, r1, lsl #1
3000a02e:	78c8      	ldrb	r0, [r1, #3]
3000a030:	bd10      	pop	{r4, pc}
3000a032:	20ff      	movs	r0, #255	; 0xff
3000a034:	bd10      	pop	{r4, pc}
3000a036:	2000      	movs	r0, #0
3000a038:	bd10      	pop	{r4, pc}
3000a03a:	bf00      	nop
3000a03c:	30009f49 	.word	0x30009f49
3000a040:	30009fa9 	.word	0x30009fa9
3000a044:	3000d7e4 	.word	0x3000d7e4

3000a048 <ChipInfo_MemorySize>:
3000a048:	b510      	push	{r4, lr}
3000a04a:	4c0b      	ldr	r4, [pc, #44]	; (3000a078 <ChipInfo_MemorySize+0x30>)
3000a04c:	4b0b      	ldr	r3, [pc, #44]	; (3000a07c <ChipInfo_MemorySize+0x34>)
3000a04e:	4798      	blx	r3
3000a050:	2100      	movs	r1, #0
3000a052:	2306      	movs	r3, #6
3000a054:	4622      	mov	r2, r4
3000a056:	e004      	b.n	3000a062 <ChipInfo_MemorySize+0x1a>
3000a058:	7a13      	ldrb	r3, [r2, #8]
3000a05a:	3101      	adds	r1, #1
3000a05c:	3206      	adds	r2, #6
3000a05e:	2bff      	cmp	r3, #255	; 0xff
3000a060:	d007      	beq.n	3000a072 <ChipInfo_MemorySize+0x2a>
3000a062:	4298      	cmp	r0, r3
3000a064:	d1f8      	bne.n	3000a058 <ChipInfo_MemorySize+0x10>
3000a066:	eb01 0141 	add.w	r1, r1, r1, lsl #1
3000a06a:	eb04 0141 	add.w	r1, r4, r1, lsl #1
3000a06e:	7908      	ldrb	r0, [r1, #4]
3000a070:	bd10      	pop	{r4, pc}
3000a072:	f7ff ff55 	bl	30009f20 <ChipInfo_Invalid>
3000a076:	bf00      	nop
3000a078:	3000d7e4 	.word	0x3000d7e4
3000a07c:	30009f49 	.word	0x30009f49

3000a080 <ChipInfo_PsramBoundary>:
3000a080:	b530      	push	{r4, r5, lr}
3000a082:	4c27      	ldr	r4, [pc, #156]	; (3000a120 <ChipInfo_PsramBoundary+0xa0>)
3000a084:	b083      	sub	sp, #12
3000a086:	4b27      	ldr	r3, [pc, #156]	; (3000a124 <ChipInfo_PsramBoundary+0xa4>)
3000a088:	4798      	blx	r3
3000a08a:	2100      	movs	r1, #0
3000a08c:	2306      	movs	r3, #6
3000a08e:	4622      	mov	r2, r4
3000a090:	e004      	b.n	3000a09c <ChipInfo_PsramBoundary+0x1c>
3000a092:	7a13      	ldrb	r3, [r2, #8]
3000a094:	3101      	adds	r1, #1
3000a096:	3206      	adds	r2, #6
3000a098:	2bff      	cmp	r3, #255	; 0xff
3000a09a:	d03e      	beq.n	3000a11a <ChipInfo_PsramBoundary+0x9a>
3000a09c:	4283      	cmp	r3, r0
3000a09e:	d1f8      	bne.n	3000a092 <ChipInfo_PsramBoundary+0x12>
3000a0a0:	eb01 0141 	add.w	r1, r1, r1, lsl #1
3000a0a4:	4b20      	ldr	r3, [pc, #128]	; (3000a128 <ChipInfo_PsramBoundary+0xa8>)
3000a0a6:	4d21      	ldr	r5, [pc, #132]	; (3000a12c <ChipInfo_PsramBoundary+0xac>)
3000a0a8:	eb04 0141 	add.w	r1, r4, r1, lsl #1
3000a0ac:	790c      	ldrb	r4, [r1, #4]
3000a0ae:	4798      	blx	r3
3000a0b0:	2802      	cmp	r0, #2
3000a0b2:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
3000a0b6:	b2db      	uxtb	r3, r3
3000a0b8:	d018      	beq.n	3000a0ec <ChipInfo_PsramBoundary+0x6c>
3000a0ba:	2b03      	cmp	r3, #3
3000a0bc:	d80c      	bhi.n	3000a0d8 <ChipInfo_PsramBoundary+0x58>
3000a0be:	4a1c      	ldr	r2, [pc, #112]	; (3000a130 <ChipInfo_PsramBoundary+0xb0>)
3000a0c0:	f852 4023 	ldr.w	r4, [r2, r3, lsl #2]
3000a0c4:	42ac      	cmp	r4, r5
3000a0c6:	d004      	beq.n	3000a0d2 <ChipInfo_PsramBoundary+0x52>
3000a0c8:	4b1a      	ldr	r3, [pc, #104]	; (3000a134 <ChipInfo_PsramBoundary+0xb4>)
3000a0ca:	f8d3 3268 	ldr.w	r3, [r3, #616]	; 0x268
3000a0ce:	009b      	lsls	r3, r3, #2
3000a0d0:	d512      	bpl.n	3000a0f8 <ChipInfo_PsramBoundary+0x78>
3000a0d2:	4620      	mov	r0, r4
3000a0d4:	b003      	add	sp, #12
3000a0d6:	bd30      	pop	{r4, r5, pc}
3000a0d8:	4b17      	ldr	r3, [pc, #92]	; (3000a138 <ChipInfo_PsramBoundary+0xb8>)
3000a0da:	2245      	movs	r2, #69	; 0x45
3000a0dc:	4917      	ldr	r1, [pc, #92]	; (3000a13c <ChipInfo_PsramBoundary+0xbc>)
3000a0de:	2002      	movs	r0, #2
3000a0e0:	f7ff f934 	bl	3000934c <rtk_log_write>
3000a0e4:	4c11      	ldr	r4, [pc, #68]	; (3000a12c <ChipInfo_PsramBoundary+0xac>)
3000a0e6:	4620      	mov	r0, r4
3000a0e8:	b003      	add	sp, #12
3000a0ea:	bd30      	pop	{r4, r5, pc}
3000a0ec:	2b03      	cmp	r3, #3
3000a0ee:	d80e      	bhi.n	3000a10e <ChipInfo_PsramBoundary+0x8e>
3000a0f0:	4a13      	ldr	r2, [pc, #76]	; (3000a140 <ChipInfo_PsramBoundary+0xc0>)
3000a0f2:	f852 4023 	ldr.w	r4, [r2, r3, lsl #2]
3000a0f6:	e7e5      	b.n	3000a0c4 <ChipInfo_PsramBoundary+0x44>
3000a0f8:	4b12      	ldr	r3, [pc, #72]	; (3000a144 <ChipInfo_PsramBoundary+0xc4>)
3000a0fa:	2257      	movs	r2, #87	; 0x57
3000a0fc:	490f      	ldr	r1, [pc, #60]	; (3000a13c <ChipInfo_PsramBoundary+0xbc>)
3000a0fe:	2003      	movs	r0, #3
3000a100:	e9cd 5400 	strd	r5, r4, [sp]
3000a104:	f7ff f922 	bl	3000934c <rtk_log_write>
3000a108:	4620      	mov	r0, r4
3000a10a:	b003      	add	sp, #12
3000a10c:	bd30      	pop	{r4, r5, pc}
3000a10e:	4b0a      	ldr	r3, [pc, #40]	; (3000a138 <ChipInfo_PsramBoundary+0xb8>)
3000a110:	2245      	movs	r2, #69	; 0x45
3000a112:	490a      	ldr	r1, [pc, #40]	; (3000a13c <ChipInfo_PsramBoundary+0xbc>)
3000a114:	f7ff f91a 	bl	3000934c <rtk_log_write>
3000a118:	e7e4      	b.n	3000a0e4 <ChipInfo_PsramBoundary+0x64>
3000a11a:	f7ff ff01 	bl	30009f20 <ChipInfo_Invalid>
3000a11e:	bf00      	nop
3000a120:	3000d7e4 	.word	0x3000d7e4
3000a124:	30009f49 	.word	0x30009f49
3000a128:	30009fa9 	.word	0x30009fa9
3000a12c:	60800000 	.word	0x60800000
3000a130:	3000d7d4 	.word	0x3000d7d4
3000a134:	42008000 	.word	0x42008000
3000a138:	3000d748 	.word	0x3000d748
3000a13c:	3000d718 	.word	0x3000d718
3000a140:	3000d7c4 	.word	0x3000d7c4
3000a144:	3000d768 	.word	0x3000d768

3000a148 <ChipInfo_MemoryVendor>:
3000a148:	b510      	push	{r4, lr}
3000a14a:	4c0f      	ldr	r4, [pc, #60]	; (3000a188 <ChipInfo_MemoryVendor+0x40>)
3000a14c:	47a0      	blx	r4
3000a14e:	2803      	cmp	r0, #3
3000a150:	d016      	beq.n	3000a180 <ChipInfo_MemoryVendor+0x38>
3000a152:	47a0      	blx	r4
3000a154:	2802      	cmp	r0, #2
3000a156:	d012      	beq.n	3000a17e <ChipInfo_MemoryVendor+0x36>
3000a158:	4c0c      	ldr	r4, [pc, #48]	; (3000a18c <ChipInfo_MemoryVendor+0x44>)
3000a15a:	4b0d      	ldr	r3, [pc, #52]	; (3000a190 <ChipInfo_MemoryVendor+0x48>)
3000a15c:	4798      	blx	r3
3000a15e:	2100      	movs	r1, #0
3000a160:	2306      	movs	r3, #6
3000a162:	4622      	mov	r2, r4
3000a164:	e004      	b.n	3000a170 <ChipInfo_MemoryVendor+0x28>
3000a166:	7a13      	ldrb	r3, [r2, #8]
3000a168:	3101      	adds	r1, #1
3000a16a:	3206      	adds	r2, #6
3000a16c:	2bff      	cmp	r3, #255	; 0xff
3000a16e:	d009      	beq.n	3000a184 <ChipInfo_MemoryVendor+0x3c>
3000a170:	4298      	cmp	r0, r3
3000a172:	d1f8      	bne.n	3000a166 <ChipInfo_MemoryVendor+0x1e>
3000a174:	eb01 0141 	add.w	r1, r1, r1, lsl #1
3000a178:	eb04 0141 	add.w	r1, r4, r1, lsl #1
3000a17c:	7948      	ldrb	r0, [r1, #5]
3000a17e:	bd10      	pop	{r4, pc}
3000a180:	2001      	movs	r0, #1
3000a182:	bd10      	pop	{r4, pc}
3000a184:	f7ff fecc 	bl	30009f20 <ChipInfo_Invalid>
3000a188:	0000c0f9 	.word	0x0000c0f9
3000a18c:	3000d7e4 	.word	0x3000d7e4
3000a190:	30009f49 	.word	0x30009f49

3000a194 <print_unsigned_num>:
3000a194:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
3000a198:	b089      	sub	sp, #36	; 0x24
3000a19a:	4606      	mov	r6, r0
3000a19c:	460d      	mov	r5, r1
3000a19e:	4690      	mov	r8, r2
3000a1a0:	f10d 0a0c 	add.w	sl, sp, #12
3000a1a4:	469b      	mov	fp, r3
3000a1a6:	2400      	movs	r4, #0
3000a1a8:	9f13      	ldr	r7, [sp, #76]	; 0x4c
3000a1aa:	46d1      	mov	r9, sl
3000a1ac:	e00f      	b.n	3000a1ce <print_unsigned_num+0x3a>
3000a1ae:	f10c 0357 	add.w	r3, ip, #87	; 0x57
3000a1b2:	2f01      	cmp	r7, #1
3000a1b4:	b2db      	uxtb	r3, r3
3000a1b6:	d018      	beq.n	3000a1ea <print_unsigned_num+0x56>
3000a1b8:	4546      	cmp	r6, r8
3000a1ba:	4606      	mov	r6, r0
3000a1bc:	f104 0201 	add.w	r2, r4, #1
3000a1c0:	f809 3b01 	strb.w	r3, [r9], #1
3000a1c4:	f175 0000 	sbcs.w	r0, r5, #0
3000a1c8:	460d      	mov	r5, r1
3000a1ca:	d312      	bcc.n	3000a1f2 <print_unsigned_num+0x5e>
3000a1cc:	4614      	mov	r4, r2
3000a1ce:	4630      	mov	r0, r6
3000a1d0:	4629      	mov	r1, r5
3000a1d2:	4642      	mov	r2, r8
3000a1d4:	2300      	movs	r3, #0
3000a1d6:	f001 f9b9 	bl	3000b54c <__aeabi_uldivmod>
3000a1da:	2a09      	cmp	r2, #9
3000a1dc:	fa5f fc82 	uxtb.w	ip, r2
3000a1e0:	f10c 0330 	add.w	r3, ip, #48	; 0x30
3000a1e4:	d8e3      	bhi.n	3000a1ae <print_unsigned_num+0x1a>
3000a1e6:	b2db      	uxtb	r3, r3
3000a1e8:	e7e6      	b.n	3000a1b8 <print_unsigned_num+0x24>
3000a1ea:	f10c 0337 	add.w	r3, ip, #55	; 0x37
3000a1ee:	b2db      	uxtb	r3, r3
3000a1f0:	e7e2      	b.n	3000a1b8 <print_unsigned_num+0x24>
3000a1f2:	4617      	mov	r7, r2
3000a1f4:	9a14      	ldr	r2, [sp, #80]	; 0x50
3000a1f6:	b192      	cbz	r2, 3000a21e <print_unsigned_num+0x8a>
3000a1f8:	9a12      	ldr	r2, [sp, #72]	; 0x48
3000a1fa:	f1bb 0f30 	cmp.w	fp, #48	; 0x30
3000a1fe:	f102 32ff 	add.w	r2, r2, #4294967295	; 0xffffffff
3000a202:	9212      	str	r2, [sp, #72]	; 0x48
3000a204:	d136      	bne.n	3000a274 <print_unsigned_num+0xe0>
3000a206:	202d      	movs	r0, #45	; 0x2d
3000a208:	4d1f      	ldr	r5, [pc, #124]	; (3000a288 <print_unsigned_num+0xf4>)
3000a20a:	9301      	str	r3, [sp, #4]
3000a20c:	47a8      	blx	r5
3000a20e:	9b12      	ldr	r3, [sp, #72]	; 0x48
3000a210:	2b00      	cmp	r3, #0
3000a212:	9b01      	ldr	r3, [sp, #4]
3000a214:	dd1f      	ble.n	3000a256 <print_unsigned_num+0xc2>
3000a216:	9a12      	ldr	r2, [sp, #72]	; 0x48
3000a218:	4297      	cmp	r7, r2
3000a21a:	db08      	blt.n	3000a22e <print_unsigned_num+0x9a>
3000a21c:	e018      	b.n	3000a250 <print_unsigned_num+0xbc>
3000a21e:	9a12      	ldr	r2, [sp, #72]	; 0x48
3000a220:	2a00      	cmp	r2, #0
3000a222:	dd25      	ble.n	3000a270 <print_unsigned_num+0xdc>
3000a224:	9912      	ldr	r1, [sp, #72]	; 0x48
3000a226:	9a14      	ldr	r2, [sp, #80]	; 0x50
3000a228:	42b9      	cmp	r1, r7
3000a22a:	4d17      	ldr	r5, [pc, #92]	; (3000a288 <print_unsigned_num+0xf4>)
3000a22c:	dd0d      	ble.n	3000a24a <print_unsigned_num+0xb6>
3000a22e:	9e12      	ldr	r6, [sp, #72]	; 0x48
3000a230:	4698      	mov	r8, r3
3000a232:	3e01      	subs	r6, #1
3000a234:	4658      	mov	r0, fp
3000a236:	47a8      	blx	r5
3000a238:	42b7      	cmp	r7, r6
3000a23a:	d1fa      	bne.n	3000a232 <print_unsigned_num+0x9e>
3000a23c:	9912      	ldr	r1, [sp, #72]	; 0x48
3000a23e:	43fa      	mvns	r2, r7
3000a240:	4643      	mov	r3, r8
3000a242:	440a      	add	r2, r1
3000a244:	9914      	ldr	r1, [sp, #80]	; 0x50
3000a246:	3101      	adds	r1, #1
3000a248:	440a      	add	r2, r1
3000a24a:	9914      	ldr	r1, [sp, #80]	; 0x50
3000a24c:	9214      	str	r2, [sp, #80]	; 0x50
3000a24e:	b111      	cbz	r1, 3000a256 <print_unsigned_num+0xc2>
3000a250:	f01b 0fdf 	tst.w	fp, #223	; 0xdf
3000a254:	d013      	beq.n	3000a27e <print_unsigned_num+0xea>
3000a256:	4454      	add	r4, sl
3000a258:	4618      	mov	r0, r3
3000a25a:	e001      	b.n	3000a260 <print_unsigned_num+0xcc>
3000a25c:	f814 0d01 	ldrb.w	r0, [r4, #-1]!
3000a260:	47a8      	blx	r5
3000a262:	45a2      	cmp	sl, r4
3000a264:	d1fa      	bne.n	3000a25c <print_unsigned_num+0xc8>
3000a266:	9b14      	ldr	r3, [sp, #80]	; 0x50
3000a268:	19d8      	adds	r0, r3, r7
3000a26a:	b009      	add	sp, #36	; 0x24
3000a26c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
3000a270:	4d05      	ldr	r5, [pc, #20]	; (3000a288 <print_unsigned_num+0xf4>)
3000a272:	e7f0      	b.n	3000a256 <print_unsigned_num+0xc2>
3000a274:	9a12      	ldr	r2, [sp, #72]	; 0x48
3000a276:	2a00      	cmp	r2, #0
3000a278:	dcd4      	bgt.n	3000a224 <print_unsigned_num+0x90>
3000a27a:	4d03      	ldr	r5, [pc, #12]	; (3000a288 <print_unsigned_num+0xf4>)
3000a27c:	e7e8      	b.n	3000a250 <print_unsigned_num+0xbc>
3000a27e:	202d      	movs	r0, #45	; 0x2d
3000a280:	9301      	str	r3, [sp, #4]
3000a282:	47a8      	blx	r5
3000a284:	9b01      	ldr	r3, [sp, #4]
3000a286:	e7e6      	b.n	3000a256 <print_unsigned_num+0xc2>
3000a288:	0000abb5 	.word	0x0000abb5

3000a28c <LOGUART_INTConfig>:
3000a28c:	b570      	push	{r4, r5, r6, lr}
3000a28e:	460c      	mov	r4, r1
3000a290:	4b10      	ldr	r3, [pc, #64]	; (3000a2d4 <LOGUART_INTConfig+0x48>)
3000a292:	4615      	mov	r5, r2
3000a294:	4798      	blx	r3
3000a296:	f404 63e0 	and.w	r3, r4, #1792	; 0x700
3000a29a:	f404 62a0 	and.w	r2, r4, #1280	; 0x500
3000a29e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
3000a2a2:	bf18      	it	ne
3000a2a4:	f5b2 7f80 	cmpne.w	r2, #256	; 0x100
3000a2a8:	d002      	beq.n	3000a2b0 <LOGUART_INTConfig+0x24>
3000a2aa:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
3000a2ae:	d101      	bne.n	3000a2b4 <LOGUART_INTConfig+0x28>
3000a2b0:	f420 60e0 	bic.w	r0, r0, #1792	; 0x700
3000a2b4:	2d01      	cmp	r5, #1
3000a2b6:	d007      	beq.n	3000a2c8 <LOGUART_INTConfig+0x3c>
3000a2b8:	f424 64e0 	bic.w	r4, r4, #1792	; 0x700
3000a2bc:	4b06      	ldr	r3, [pc, #24]	; (3000a2d8 <LOGUART_INTConfig+0x4c>)
3000a2be:	ea20 0004 	bic.w	r0, r0, r4
3000a2c2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
3000a2c6:	4718      	bx	r3
3000a2c8:	4320      	orrs	r0, r4
3000a2ca:	4b03      	ldr	r3, [pc, #12]	; (3000a2d8 <LOGUART_INTConfig+0x4c>)
3000a2cc:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
3000a2d0:	4718      	bx	r3
3000a2d2:	bf00      	nop
3000a2d4:	0000ac55 	.word	0x0000ac55
3000a2d8:	0000ac61 	.word	0x0000ac61

3000a2dc <LOGUART_WaitTxComplete>:
3000a2dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
3000a2de:	4c07      	ldr	r4, [pc, #28]	; (3000a2fc <LOGUART_WaitTxComplete+0x20>)
3000a2e0:	4d07      	ldr	r5, [pc, #28]	; (3000a300 <LOGUART_WaitTxComplete+0x24>)
3000a2e2:	6963      	ldr	r3, [r4, #20]
3000a2e4:	4e07      	ldr	r6, [pc, #28]	; (3000a304 <LOGUART_WaitTxComplete+0x28>)
3000a2e6:	402b      	ands	r3, r5
3000a2e8:	42b3      	cmp	r3, r6
3000a2ea:	d006      	beq.n	3000a2fa <LOGUART_WaitTxComplete+0x1e>
3000a2ec:	4f06      	ldr	r7, [pc, #24]	; (3000a308 <LOGUART_WaitTxComplete+0x2c>)
3000a2ee:	2001      	movs	r0, #1
3000a2f0:	47b8      	blx	r7
3000a2f2:	6963      	ldr	r3, [r4, #20]
3000a2f4:	402b      	ands	r3, r5
3000a2f6:	42b3      	cmp	r3, r6
3000a2f8:	d1f9      	bne.n	3000a2ee <LOGUART_WaitTxComplete+0x12>
3000a2fa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
3000a2fc:	4200c000 	.word	0x4200c000
3000a300:	000f0140 	.word	0x000f0140
3000a304:	000f0040 	.word	0x000f0040
3000a308:	00009b2d 	.word	0x00009b2d

3000a30c <CPU_ClkGet>:
3000a30c:	b570      	push	{r4, r5, r6, lr}
3000a30e:	4d1e      	ldr	r5, [pc, #120]	; (3000a388 <CPU_ClkGet+0x7c>)
3000a310:	4b1e      	ldr	r3, [pc, #120]	; (3000a38c <CPU_ClkGet+0x80>)
3000a312:	f8d5 6224 	ldr.w	r6, [r5, #548]	; 0x224
3000a316:	f8d5 427c 	ldr.w	r4, [r5, #636]	; 0x27c
3000a31a:	f3c4 1481 	ubfx	r4, r4, #6, #2
3000a31e:	4798      	blx	r3
3000a320:	b92c      	cbnz	r4, 3000a32e <CPU_ClkGet+0x22>
3000a322:	2801      	cmp	r0, #1
3000a324:	d007      	beq.n	3000a336 <CPU_ClkGet+0x2a>
3000a326:	07b2      	lsls	r2, r6, #30
3000a328:	d407      	bmi.n	3000a33a <CPU_ClkGet+0x2e>
3000a32a:	4819      	ldr	r0, [pc, #100]	; (3000a390 <CPU_ClkGet+0x84>)
3000a32c:	bd70      	pop	{r4, r5, r6, pc}
3000a32e:	2c01      	cmp	r4, #1
3000a330:	d007      	beq.n	3000a342 <CPU_ClkGet+0x36>
3000a332:	2000      	movs	r0, #0
3000a334:	bd70      	pop	{r4, r5, r6, pc}
3000a336:	4817      	ldr	r0, [pc, #92]	; (3000a394 <CPU_ClkGet+0x88>)
3000a338:	bd70      	pop	{r4, r5, r6, pc}
3000a33a:	4b17      	ldr	r3, [pc, #92]	; (3000a398 <CPU_ClkGet+0x8c>)
3000a33c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
3000a340:	4718      	bx	r3
3000a342:	2801      	cmp	r0, #1
3000a344:	d011      	beq.n	3000a36a <CPU_ClkGet+0x5e>
3000a346:	05f3      	lsls	r3, r6, #23
3000a348:	d51c      	bpl.n	3000a384 <CPU_ClkGet+0x78>
3000a34a:	4914      	ldr	r1, [pc, #80]	; (3000a39c <CPU_ClkGet+0x90>)
3000a34c:	f8d5 3228 	ldr.w	r3, [r5, #552]	; 0x228
3000a350:	6c48      	ldr	r0, [r1, #68]	; 0x44
3000a352:	4a13      	ldr	r2, [pc, #76]	; (3000a3a0 <CPU_ClkGet+0x94>)
3000a354:	f003 0307 	and.w	r3, r3, #7
3000a358:	f3c0 1045 	ubfx	r0, r0, #5, #6
3000a35c:	3301      	adds	r3, #1
3000a35e:	3002      	adds	r0, #2
3000a360:	fb02 f000 	mul.w	r0, r2, r0
3000a364:	fbb0 f0f3 	udiv	r0, r0, r3
3000a368:	bd70      	pop	{r4, r5, r6, pc}
3000a36a:	f8d5 326c 	ldr.w	r3, [r5, #620]	; 0x26c
3000a36e:	f413 0f7f 	tst.w	r3, #16711680	; 0xff0000
3000a372:	f3c3 4007 	ubfx	r0, r3, #16, #8
3000a376:	d003      	beq.n	3000a380 <CPU_ClkGet+0x74>
3000a378:	4b0a      	ldr	r3, [pc, #40]	; (3000a3a4 <CPU_ClkGet+0x98>)
3000a37a:	fb03 f000 	mul.w	r0, r3, r0
3000a37e:	bd70      	pop	{r4, r5, r6, pc}
3000a380:	4809      	ldr	r0, [pc, #36]	; (3000a3a8 <CPU_ClkGet+0x9c>)
3000a382:	bd70      	pop	{r4, r5, r6, pc}
3000a384:	4806      	ldr	r0, [pc, #24]	; (3000a3a0 <CPU_ClkGet+0x94>)
3000a386:	bd70      	pop	{r4, r5, r6, pc}
3000a388:	42008000 	.word	0x42008000
3000a38c:	0000c0f9 	.word	0x0000c0f9
3000a390:	003d0900 	.word	0x003d0900
3000a394:	01312d00 	.word	0x01312d00
3000a398:	000099f5 	.word	0x000099f5
3000a39c:	42008800 	.word	0x42008800
3000a3a0:	02625a00 	.word	0x02625a00
3000a3a4:	000f4240 	.word	0x000f4240
3000a3a8:	02faf080 	.word	0x02faf080

3000a3ac <RSIP_IV_Set>:
3000a3ac:	4b05      	ldr	r3, [pc, #20]	; (3000a3c4 <RSIP_IV_Set+0x18>)
3000a3ae:	eb03 00c0 	add.w	r0, r3, r0, lsl #3
3000a3b2:	680b      	ldr	r3, [r1, #0]
3000a3b4:	ba1b      	rev	r3, r3
3000a3b6:	f8c0 3084 	str.w	r3, [r0, #132]	; 0x84
3000a3ba:	684b      	ldr	r3, [r1, #4]
3000a3bc:	ba1b      	rev	r3, r3
3000a3be:	f8c0 3080 	str.w	r3, [r0, #128]	; 0x80
3000a3c2:	4770      	bx	lr
3000a3c4:	42008c00 	.word	0x42008c00

3000a3c8 <RSIP_OTF_Cmd>:
3000a3c8:	4a04      	ldr	r2, [pc, #16]	; (3000a3dc <RSIP_OTF_Cmd+0x14>)
3000a3ca:	2801      	cmp	r0, #1
3000a3cc:	6953      	ldr	r3, [r2, #20]
3000a3ce:	bf0c      	ite	eq
3000a3d0:	f443 7380 	orreq.w	r3, r3, #256	; 0x100
3000a3d4:	f423 7380 	bicne.w	r3, r3, #256	; 0x100
3000a3d8:	6153      	str	r3, [r2, #20]
3000a3da:	4770      	bx	lr
3000a3dc:	42008c00 	.word	0x42008c00

3000a3e0 <RSIP_MMU_Config>:
3000a3e0:	eb00 0040 	add.w	r0, r0, r0, lsl #1
3000a3e4:	311f      	adds	r1, #31
3000a3e6:	321f      	adds	r2, #31
3000a3e8:	331f      	adds	r3, #31
3000a3ea:	0080      	lsls	r0, r0, #2
3000a3ec:	0949      	lsrs	r1, r1, #5
3000a3ee:	0952      	lsrs	r2, r2, #5
3000a3f0:	095b      	lsrs	r3, r3, #5
3000a3f2:	0249      	lsls	r1, r1, #9
3000a3f4:	0252      	lsls	r2, r2, #9
3000a3f6:	025b      	lsls	r3, r3, #9
3000a3f8:	b410      	push	{r4}
3000a3fa:	4c08      	ldr	r4, [pc, #32]	; (3000a41c <RSIP_MMU_Config+0x3c>)
3000a3fc:	4404      	add	r4, r0
3000a3fe:	f8d4 0108 	ldr.w	r0, [r4, #264]	; 0x108
3000a402:	f020 0001 	bic.w	r0, r0, #1
3000a406:	f8c4 0108 	str.w	r0, [r4, #264]	; 0x108
3000a40a:	f8c4 1100 	str.w	r1, [r4, #256]	; 0x100
3000a40e:	f8c4 2104 	str.w	r2, [r4, #260]	; 0x104
3000a412:	f8c4 3108 	str.w	r3, [r4, #264]	; 0x108
3000a416:	f85d 4b04 	ldr.w	r4, [sp], #4
3000a41a:	4770      	bx	lr
3000a41c:	42008c00 	.word	0x42008c00

3000a420 <RSIP_MMU_Cmd>:
3000a420:	eb00 0040 	add.w	r0, r0, r0, lsl #1
3000a424:	4b07      	ldr	r3, [pc, #28]	; (3000a444 <RSIP_MMU_Cmd+0x24>)
3000a426:	0080      	lsls	r0, r0, #2
3000a428:	4403      	add	r3, r0
3000a42a:	f8d3 2108 	ldr.w	r2, [r3, #264]	; 0x108
3000a42e:	b121      	cbz	r1, 3000a43a <RSIP_MMU_Cmd+0x1a>
3000a430:	f042 0201 	orr.w	r2, r2, #1
3000a434:	f8c3 2108 	str.w	r2, [r3, #264]	; 0x108
3000a438:	4770      	bx	lr
3000a43a:	f022 0201 	bic.w	r2, r2, #1
3000a43e:	f8c3 2108 	str.w	r2, [r3, #264]	; 0x108
3000a442:	4770      	bx	lr
3000a444:	42008c00 	.word	0x42008c00

3000a448 <RSIP_MMU_Cache_Clean>:
3000a448:	4a02      	ldr	r2, [pc, #8]	; (3000a454 <RSIP_MMU_Cache_Clean+0xc>)
3000a44a:	6993      	ldr	r3, [r2, #24]
3000a44c:	f043 0304 	orr.w	r3, r3, #4
3000a450:	6193      	str	r3, [r2, #24]
3000a452:	4770      	bx	lr
3000a454:	42008c00 	.word	0x42008c00

3000a458 <NAND_RxData>:
3000a458:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
3000a45c:	460c      	mov	r4, r1
3000a45e:	4616      	mov	r6, r2
3000a460:	461f      	mov	r7, r3
3000a462:	2800      	cmp	r0, #0
3000a464:	f000 8087 	beq.w	3000a576 <NAND_RxData+0x11e>
3000a468:	4605      	mov	r5, r0
3000a46a:	f8df 9118 	ldr.w	r9, [pc, #280]	; 3000a584 <NAND_RxData+0x12c>
3000a46e:	2000      	movs	r0, #0
3000a470:	f8df 8114 	ldr.w	r8, [pc, #276]	; 3000a588 <NAND_RxData+0x130>
3000a474:	47c0      	blx	r8
3000a476:	f04f 4388 	mov.w	r3, #1140850688	; 0x44000000
3000a47a:	f026 427f 	bic.w	r2, r6, #4278190080	; 0xff000000
3000a47e:	2000      	movs	r0, #0
3000a480:	6819      	ldr	r1, [r3, #0]
3000a482:	f041 4100 	orr.w	r1, r1, #2147483648	; 0x80000000
3000a486:	6019      	str	r1, [r3, #0]
3000a488:	6819      	ldr	r1, [r3, #0]
3000a48a:	f441 7140 	orr.w	r1, r1, #768	; 0x300
3000a48e:	6019      	str	r1, [r3, #0]
3000a490:	605a      	str	r2, [r3, #4]
3000a492:	f8c3 0130 	str.w	r0, [r3, #304]	; 0x130
3000a496:	f899 c062 	ldrb.w	ip, [r9, #98]	; 0x62
3000a49a:	f8d3 1118 	ldr.w	r1, [r3, #280]	; 0x118
3000a49e:	ea4f 420c 	mov.w	r2, ip, lsl #16
3000a4a2:	f1bc 0f03 	cmp.w	ip, #3
3000a4a6:	f421 2170 	bic.w	r1, r1, #983040	; 0xf0000
3000a4aa:	f402 2270 	and.w	r2, r2, #983040	; 0xf0000
3000a4ae:	ea42 0201 	orr.w	r2, r2, r1
3000a4b2:	f8c3 2118 	str.w	r2, [r3, #280]	; 0x118
3000a4b6:	f04f 0201 	mov.w	r2, #1
3000a4ba:	611a      	str	r2, [r3, #16]
3000a4bc:	f04f 4288 	mov.w	r2, #1140850688	; 0x44000000
3000a4c0:	f883 5060 	strb.w	r5, [r3, #96]	; 0x60
3000a4c4:	bf08      	it	eq
3000a4c6:	f883 0060 	strbeq.w	r0, [r3, #96]	; 0x60
3000a4ca:	f3c4 2307 	ubfx	r3, r4, #8, #8
3000a4ce:	b2e4      	uxtb	r4, r4
3000a4d0:	f882 3060 	strb.w	r3, [r2, #96]	; 0x60
3000a4d4:	2301      	movs	r3, #1
3000a4d6:	f882 4060 	strb.w	r4, [r2, #96]	; 0x60
3000a4da:	f017 0403 	ands.w	r4, r7, #3
3000a4de:	6093      	str	r3, [r2, #8]
3000a4e0:	d137      	bne.n	3000a552 <NAND_RxData+0xfa>
3000a4e2:	463b      	mov	r3, r7
3000a4e4:	f04f 4e88 	mov.w	lr, #1140850688	; 0x44000000
3000a4e8:	42b4      	cmp	r4, r6
3000a4ea:	d216      	bcs.n	3000a51a <NAND_RxData+0xc2>
3000a4ec:	f8de 2024 	ldr.w	r2, [lr, #36]	; 0x24
3000a4f0:	f012 0f3c 	tst.w	r2, #60	; 0x3c
3000a4f4:	f3c2 0583 	ubfx	r5, r2, #2, #4
3000a4f8:	d00c      	beq.n	3000a514 <NAND_RxData+0xbc>
3000a4fa:	00ad      	lsls	r5, r5, #2
3000a4fc:	1f19      	subs	r1, r3, #4
3000a4fe:	f1a5 0c04 	sub.w	ip, r5, #4
3000a502:	449c      	add	ip, r3
3000a504:	f8de 0060 	ldr.w	r0, [lr, #96]	; 0x60
3000a508:	f841 0f04 	str.w	r0, [r1, #4]!
3000a50c:	458c      	cmp	ip, r1
3000a50e:	d1f9      	bne.n	3000a504 <NAND_RxData+0xac>
3000a510:	442b      	add	r3, r5
3000a512:	442c      	add	r4, r5
3000a514:	1b32      	subs	r2, r6, r4
3000a516:	2a03      	cmp	r2, #3
3000a518:	d8e6      	bhi.n	3000a4e8 <NAND_RxData+0x90>
3000a51a:	1e63      	subs	r3, r4, #1
3000a51c:	f04f 4288 	mov.w	r2, #1140850688	; 0x44000000
3000a520:	441f      	add	r7, r3
3000a522:	e002      	b.n	3000a52a <NAND_RxData+0xd2>
3000a524:	6a93      	ldr	r3, [r2, #40]	; 0x28
3000a526:	071b      	lsls	r3, r3, #28
3000a528:	d40d      	bmi.n	3000a546 <NAND_RxData+0xee>
3000a52a:	42b4      	cmp	r4, r6
3000a52c:	d3fa      	bcc.n	3000a524 <NAND_RxData+0xcc>
3000a52e:	2004      	movs	r0, #4
3000a530:	47c0      	blx	r8
3000a532:	2000      	movs	r0, #0
3000a534:	47c0      	blx	r8
3000a536:	f04f 4288 	mov.w	r2, #1140850688	; 0x44000000
3000a53a:	6813      	ldr	r3, [r2, #0]
3000a53c:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
3000a540:	6013      	str	r3, [r2, #0]
3000a542:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
3000a546:	f892 3060 	ldrb.w	r3, [r2, #96]	; 0x60
3000a54a:	3401      	adds	r4, #1
3000a54c:	f807 3f01 	strb.w	r3, [r7, #1]!
3000a550:	e7eb      	b.n	3000a52a <NAND_RxData+0xd2>
3000a552:	f1c4 0004 	rsb	r0, r4, #4
3000a556:	463b      	mov	r3, r7
3000a558:	2400      	movs	r4, #0
3000a55a:	e009      	b.n	3000a570 <NAND_RxData+0x118>
3000a55c:	6a91      	ldr	r1, [r2, #40]	; 0x28
3000a55e:	0709      	lsls	r1, r1, #28
3000a560:	d504      	bpl.n	3000a56c <NAND_RxData+0x114>
3000a562:	f892 1060 	ldrb.w	r1, [r2, #96]	; 0x60
3000a566:	3401      	adds	r4, #1
3000a568:	7019      	strb	r1, [r3, #0]
3000a56a:	193b      	adds	r3, r7, r4
3000a56c:	42a0      	cmp	r0, r4
3000a56e:	d007      	beq.n	3000a580 <NAND_RxData+0x128>
3000a570:	42b4      	cmp	r4, r6
3000a572:	d3f3      	bcc.n	3000a55c <NAND_RxData+0x104>
3000a574:	e7d1      	b.n	3000a51a <NAND_RxData+0xc2>
3000a576:	f8df 900c 	ldr.w	r9, [pc, #12]	; 3000a584 <NAND_RxData+0x12c>
3000a57a:	f899 5008 	ldrb.w	r5, [r9, #8]
3000a57e:	e776      	b.n	3000a46e <NAND_RxData+0x16>
3000a580:	4604      	mov	r4, r0
3000a582:	e7af      	b.n	3000a4e4 <NAND_RxData+0x8c>
3000a584:	2001c01c 	.word	0x2001c01c
3000a588:	0000b9c1 	.word	0x0000b9c1

3000a58c <NAND_Page_Read>:
3000a58c:	b530      	push	{r4, r5, lr}
3000a58e:	b085      	sub	sp, #20
3000a590:	4c07      	ldr	r4, [pc, #28]	; (3000a5b0 <NAND_Page_Read+0x24>)
3000a592:	4d08      	ldr	r5, [pc, #32]	; (3000a5b4 <NAND_Page_Read+0x28>)
3000a594:	9301      	str	r3, [sp, #4]
3000a596:	e9cd 2102 	strd	r2, r1, [sp, #8]
3000a59a:	47a0      	blx	r4
3000a59c:	4604      	mov	r4, r0
3000a59e:	9903      	ldr	r1, [sp, #12]
3000a5a0:	7a28      	ldrb	r0, [r5, #8]
3000a5a2:	4d05      	ldr	r5, [pc, #20]	; (3000a5b8 <NAND_Page_Read+0x2c>)
3000a5a4:	e9dd 3201 	ldrd	r3, r2, [sp, #4]
3000a5a8:	47a8      	blx	r5
3000a5aa:	4620      	mov	r0, r4
3000a5ac:	b005      	add	sp, #20
3000a5ae:	bd30      	pop	{r4, r5, pc}
3000a5b0:	0000bd85 	.word	0x0000bd85
3000a5b4:	2001c01c 	.word	0x2001c01c
3000a5b8:	3000a459 	.word	0x3000a459

3000a5bc <SYSCFG_BootFromNor>:
3000a5bc:	4b0e      	ldr	r3, [pc, #56]	; (3000a5f8 <SYSCFG_BootFromNor+0x3c>)
3000a5be:	b510      	push	{r4, lr}
3000a5c0:	f8d3 227c 	ldr.w	r2, [r3, #636]	; 0x27c
3000a5c4:	f8d3 3280 	ldr.w	r3, [r3, #640]	; 0x280
3000a5c8:	0392      	lsls	r2, r2, #14
3000a5ca:	d50a      	bpl.n	3000a5e2 <SYSCFG_BootFromNor+0x26>
3000a5cc:	f003 4370 	and.w	r3, r3, #4026531840	; 0xf0000000
3000a5d0:	f1b3 4f60 	cmp.w	r3, #3758096384	; 0xe0000000
3000a5d4:	d105      	bne.n	3000a5e2 <SYSCFG_BootFromNor+0x26>
3000a5d6:	4b09      	ldr	r3, [pc, #36]	; (3000a5fc <SYSCFG_BootFromNor+0x40>)
3000a5d8:	4798      	blx	r3
3000a5da:	3800      	subs	r0, #0
3000a5dc:	bf18      	it	ne
3000a5de:	2001      	movne	r0, #1
3000a5e0:	bd10      	pop	{r4, pc}
3000a5e2:	4c07      	ldr	r4, [pc, #28]	; (3000a600 <SYSCFG_BootFromNor+0x44>)
3000a5e4:	47a0      	blx	r4
3000a5e6:	2802      	cmp	r0, #2
3000a5e8:	d004      	beq.n	3000a5f4 <SYSCFG_BootFromNor+0x38>
3000a5ea:	47a0      	blx	r4
3000a5ec:	2801      	cmp	r0, #1
3000a5ee:	d1f2      	bne.n	3000a5d6 <SYSCFG_BootFromNor+0x1a>
3000a5f0:	2000      	movs	r0, #0
3000a5f2:	bd10      	pop	{r4, pc}
3000a5f4:	2001      	movs	r0, #1
3000a5f6:	bd10      	pop	{r4, pc}
3000a5f8:	42008000 	.word	0x42008000
3000a5fc:	0000c0bd 	.word	0x0000c0bd
3000a600:	0000c1a9 	.word	0x0000c1a9

3000a604 <SYSCFG_RLVersion>:
3000a604:	4b07      	ldr	r3, [pc, #28]	; (3000a624 <SYSCFG_RLVersion+0x20>)
3000a606:	f8d3 2274 	ldr.w	r2, [r3, #628]	; 0x274
3000a60a:	f022 4270 	bic.w	r2, r2, #4026531840	; 0xf0000000
3000a60e:	f042 4120 	orr.w	r1, r2, #2684354560	; 0xa0000000
3000a612:	f8c3 1274 	str.w	r1, [r3, #628]	; 0x274
3000a616:	f8d3 0274 	ldr.w	r0, [r3, #628]	; 0x274
3000a61a:	f8c3 2274 	str.w	r2, [r3, #628]	; 0x274
3000a61e:	f3c0 4003 	ubfx	r0, r0, #16, #4
3000a622:	4770      	bx	lr
3000a624:	42008000 	.word	0x42008000

3000a628 <DiagVprintf>:
3000a628:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
3000a62c:	4604      	mov	r4, r0
3000a62e:	7800      	ldrb	r0, [r0, #0]
3000a630:	b089      	sub	sp, #36	; 0x24
3000a632:	2800      	cmp	r0, #0
3000a634:	f000 82ab 	beq.w	3000ab8e <DiagVprintf+0x566>
3000a638:	f04f 0a00 	mov.w	sl, #0
3000a63c:	4688      	mov	r8, r1
3000a63e:	4f89      	ldr	r7, [pc, #548]	; (3000a864 <DiagVprintf+0x23c>)
3000a640:	4655      	mov	r5, sl
3000a642:	f8cd a010 	str.w	sl, [sp, #16]
3000a646:	e005      	b.n	3000a654 <DiagVprintf+0x2c>
3000a648:	3501      	adds	r5, #1
3000a64a:	47b8      	blx	r7
3000a64c:	7820      	ldrb	r0, [r4, #0]
3000a64e:	2800      	cmp	r0, #0
3000a650:	f000 808b 	beq.w	3000a76a <DiagVprintf+0x142>
3000a654:	2825      	cmp	r0, #37	; 0x25
3000a656:	f104 0401 	add.w	r4, r4, #1
3000a65a:	d1f5      	bne.n	3000a648 <DiagVprintf+0x20>
3000a65c:	f04f 0a00 	mov.w	sl, #0
3000a660:	4656      	mov	r6, sl
3000a662:	46d1      	mov	r9, sl
3000a664:	46d4      	mov	ip, sl
3000a666:	7823      	ldrb	r3, [r4, #0]
3000a668:	2b7a      	cmp	r3, #122	; 0x7a
3000a66a:	d87c      	bhi.n	3000a766 <DiagVprintf+0x13e>
3000a66c:	e8df f013 	tbh	[pc, r3, lsl #1]
3000a670:	007b00af 	.word	0x007b00af
3000a674:	007b007b 	.word	0x007b007b
3000a678:	007b007b 	.word	0x007b007b
3000a67c:	007b007b 	.word	0x007b007b
3000a680:	007b007b 	.word	0x007b007b
3000a684:	007b007b 	.word	0x007b007b
3000a688:	007b007b 	.word	0x007b007b
3000a68c:	007b007b 	.word	0x007b007b
3000a690:	007b007b 	.word	0x007b007b
3000a694:	007b007b 	.word	0x007b007b
3000a698:	007b007b 	.word	0x007b007b
3000a69c:	007b007b 	.word	0x007b007b
3000a6a0:	007b007b 	.word	0x007b007b
3000a6a4:	007b007b 	.word	0x007b007b
3000a6a8:	007b007b 	.word	0x007b007b
3000a6ac:	007b007b 	.word	0x007b007b
3000a6b0:	007b00c4 	.word	0x007b00c4
3000a6b4:	007b007b 	.word	0x007b007b
3000a6b8:	01af007b 	.word	0x01af007b
3000a6bc:	007b007b 	.word	0x007b007b
3000a6c0:	007b007b 	.word	0x007b007b
3000a6c4:	007b007b 	.word	0x007b007b
3000a6c8:	01ab007b 	.word	0x01ab007b
3000a6cc:	007b007b 	.word	0x007b007b
3000a6d0:	00b100c4 	.word	0x00b100c4
3000a6d4:	00b100b1 	.word	0x00b100b1
3000a6d8:	00b100b1 	.word	0x00b100b1
3000a6dc:	00b100b1 	.word	0x00b100b1
3000a6e0:	00b100b1 	.word	0x00b100b1
3000a6e4:	007b007b 	.word	0x007b007b
3000a6e8:	007b007b 	.word	0x007b007b
3000a6ec:	007b007b 	.word	0x007b007b
3000a6f0:	007b007b 	.word	0x007b007b
3000a6f4:	012c014f 	.word	0x012c014f
3000a6f8:	007b007b 	.word	0x007b007b
3000a6fc:	007b007b 	.word	0x007b007b
3000a700:	007b007b 	.word	0x007b007b
3000a704:	007b007b 	.word	0x007b007b
3000a708:	007b0128 	.word	0x007b0128
3000a70c:	00fc007b 	.word	0x00fc007b
3000a710:	007b007b 	.word	0x007b007b
3000a714:	007b007b 	.word	0x007b007b
3000a718:	007b007b 	.word	0x007b007b
3000a71c:	007b007b 	.word	0x007b007b
3000a720:	007b0081 	.word	0x007b0081
3000a724:	007b007b 	.word	0x007b007b
3000a728:	007b007b 	.word	0x007b007b
3000a72c:	007b007b 	.word	0x007b007b
3000a730:	007b007b 	.word	0x007b007b
3000a734:	012c014f 	.word	0x012c014f
3000a738:	007b00ca 	.word	0x007b00ca
3000a73c:	007b007b 	.word	0x007b007b
3000a740:	00ca007b 	.word	0x00ca007b
3000a744:	007b007b 	.word	0x007b007b
3000a748:	007b0128 	.word	0x007b0128
3000a74c:	00fc007b 	.word	0x00fc007b
3000a750:	007b01e6 	.word	0x007b01e6
3000a754:	01b4007b 	.word	0x01b4007b
3000a758:	017d007b 	.word	0x017d007b
3000a75c:	007b007b 	.word	0x007b007b
3000a760:	007b0083 	.word	0x007b0083
3000a764:	012a      	.short	0x012a
3000a766:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
3000a76a:	4628      	mov	r0, r5
3000a76c:	b009      	add	sp, #36	; 0x24
3000a76e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
3000a772:	2301      	movs	r3, #1
3000a774:	9304      	str	r3, [sp, #16]
3000a776:	f1bc 0f01 	cmp.w	ip, #1
3000a77a:	f340 81d4 	ble.w	3000ab26 <DiagVprintf+0x4fe>
3000a77e:	f108 0807 	add.w	r8, r8, #7
3000a782:	f028 0807 	bic.w	r8, r8, #7
3000a786:	f8d8 1004 	ldr.w	r1, [r8, #4]
3000a78a:	f858 0b08 	ldr.w	r0, [r8], #8
3000a78e:	f1ba 0f00 	cmp.w	sl, #0
3000a792:	f000 8168 	beq.w	3000aa66 <DiagVprintf+0x43e>
3000a796:	2300      	movs	r3, #0
3000a798:	2210      	movs	r2, #16
3000a79a:	9302      	str	r3, [sp, #8]
3000a79c:	9b04      	ldr	r3, [sp, #16]
3000a79e:	9301      	str	r3, [sp, #4]
3000a7a0:	2300      	movs	r3, #0
3000a7a2:	9300      	str	r3, [sp, #0]
3000a7a4:	464b      	mov	r3, r9
3000a7a6:	f7ff fcf5 	bl	3000a194 <print_unsigned_num>
3000a7aa:	4286      	cmp	r6, r0
3000a7ac:	dd0e      	ble.n	3000a7cc <DiagVprintf+0x1a4>
3000a7ae:	f1b9 0f20 	cmp.w	r9, #32
3000a7b2:	d10b      	bne.n	3000a7cc <DiagVprintf+0x1a4>
3000a7b4:	eba6 0900 	sub.w	r9, r6, r0
3000a7b8:	f1b9 0f00 	cmp.w	r9, #0
3000a7bc:	f340 81e4 	ble.w	3000ab88 <DiagVprintf+0x560>
3000a7c0:	2020      	movs	r0, #32
3000a7c2:	47b8      	blx	r7
3000a7c4:	f1b9 0901 	subs.w	r9, r9, #1
3000a7c8:	d1fa      	bne.n	3000a7c0 <DiagVprintf+0x198>
3000a7ca:	4630      	mov	r0, r6
3000a7cc:	4405      	add	r5, r0
3000a7ce:	3401      	adds	r4, #1
3000a7d0:	e73c      	b.n	3000a64c <DiagVprintf+0x24>
3000a7d2:	f04f 0920 	mov.w	r9, #32
3000a7d6:	2600      	movs	r6, #0
3000a7d8:	e005      	b.n	3000a7e6 <DiagVprintf+0x1be>
3000a7da:	f814 3f01 	ldrb.w	r3, [r4, #1]!
3000a7de:	f1a2 0630 	sub.w	r6, r2, #48	; 0x30
3000a7e2:	2b00      	cmp	r3, #0
3000a7e4:	d0c1      	beq.n	3000a76a <DiagVprintf+0x142>
3000a7e6:	f1a3 0130 	sub.w	r1, r3, #48	; 0x30
3000a7ea:	eb06 0286 	add.w	r2, r6, r6, lsl #2
3000a7ee:	2909      	cmp	r1, #9
3000a7f0:	eb03 0242 	add.w	r2, r3, r2, lsl #1
3000a7f4:	d9f1      	bls.n	3000a7da <DiagVprintf+0x1b2>
3000a7f6:	e736      	b.n	3000a666 <DiagVprintf+0x3e>
3000a7f8:	3401      	adds	r4, #1
3000a7fa:	4699      	mov	r9, r3
3000a7fc:	7823      	ldrb	r3, [r4, #0]
3000a7fe:	2b00      	cmp	r3, #0
3000a800:	d1e9      	bne.n	3000a7d6 <DiagVprintf+0x1ae>
3000a802:	e7b2      	b.n	3000a76a <DiagVprintf+0x142>
3000a804:	f1bc 0f01 	cmp.w	ip, #1
3000a808:	f340 8186 	ble.w	3000ab18 <DiagVprintf+0x4f0>
3000a80c:	f108 0807 	add.w	r8, r8, #7
3000a810:	f028 0807 	bic.w	r8, r8, #7
3000a814:	f8d8 1004 	ldr.w	r1, [r8, #4]
3000a818:	f858 0b08 	ldr.w	r0, [r8], #8
3000a81c:	2900      	cmp	r1, #0
3000a81e:	f2c0 8189 	blt.w	3000ab34 <DiagVprintf+0x50c>
3000a822:	2200      	movs	r2, #0
3000a824:	9202      	str	r2, [sp, #8]
3000a826:	f1ba 0f00 	cmp.w	sl, #0
3000a82a:	f000 816c 	beq.w	3000ab06 <DiagVprintf+0x4de>
3000a82e:	9b04      	ldr	r3, [sp, #16]
3000a830:	220a      	movs	r2, #10
3000a832:	9301      	str	r3, [sp, #4]
3000a834:	2300      	movs	r3, #0
3000a836:	9300      	str	r3, [sp, #0]
3000a838:	464b      	mov	r3, r9
3000a83a:	f7ff fcab 	bl	3000a194 <print_unsigned_num>
3000a83e:	4286      	cmp	r6, r0
3000a840:	ddc4      	ble.n	3000a7cc <DiagVprintf+0x1a4>
3000a842:	f1b9 0f20 	cmp.w	r9, #32
3000a846:	d1c1      	bne.n	3000a7cc <DiagVprintf+0x1a4>
3000a848:	eba6 0900 	sub.w	r9, r6, r0
3000a84c:	f1b9 0f00 	cmp.w	r9, #0
3000a850:	f340 819a 	ble.w	3000ab88 <DiagVprintf+0x560>
3000a854:	2020      	movs	r0, #32
3000a856:	47b8      	blx	r7
3000a858:	f1b9 0901 	subs.w	r9, r9, #1
3000a85c:	d1fa      	bne.n	3000a854 <DiagVprintf+0x22c>
3000a85e:	4630      	mov	r0, r6
3000a860:	e7b4      	b.n	3000a7cc <DiagVprintf+0x1a4>
3000a862:	bf00      	nop
3000a864:	0000abb5 	.word	0x0000abb5
3000a868:	f1bc 0f01 	cmp.w	ip, #1
3000a86c:	f340 811e 	ble.w	3000aaac <DiagVprintf+0x484>
3000a870:	f108 0807 	add.w	r8, r8, #7
3000a874:	f028 0807 	bic.w	r8, r8, #7
3000a878:	f8d8 1004 	ldr.w	r1, [r8, #4]
3000a87c:	f858 0b08 	ldr.w	r0, [r8], #8
3000a880:	f1ba 0f00 	cmp.w	sl, #0
3000a884:	f000 8119 	beq.w	3000aaba <DiagVprintf+0x492>
3000a888:	2300      	movs	r3, #0
3000a88a:	2208      	movs	r2, #8
3000a88c:	9302      	str	r3, [sp, #8]
3000a88e:	9b04      	ldr	r3, [sp, #16]
3000a890:	9301      	str	r3, [sp, #4]
3000a892:	2300      	movs	r3, #0
3000a894:	9300      	str	r3, [sp, #0]
3000a896:	464b      	mov	r3, r9
3000a898:	f7ff fc7c 	bl	3000a194 <print_unsigned_num>
3000a89c:	4286      	cmp	r6, r0
3000a89e:	dd95      	ble.n	3000a7cc <DiagVprintf+0x1a4>
3000a8a0:	f1b9 0f20 	cmp.w	r9, #32
3000a8a4:	d192      	bne.n	3000a7cc <DiagVprintf+0x1a4>
3000a8a6:	eba6 0900 	sub.w	r9, r6, r0
3000a8aa:	f1b9 0f00 	cmp.w	r9, #0
3000a8ae:	f340 816b 	ble.w	3000ab88 <DiagVprintf+0x560>
3000a8b2:	2020      	movs	r0, #32
3000a8b4:	47b8      	blx	r7
3000a8b6:	f1b9 0901 	subs.w	r9, r9, #1
3000a8ba:	d1fa      	bne.n	3000a8b2 <DiagVprintf+0x28a>
3000a8bc:	4630      	mov	r0, r6
3000a8be:	e785      	b.n	3000a7cc <DiagVprintf+0x1a4>
3000a8c0:	f10c 0c01 	add.w	ip, ip, #1
3000a8c4:	3401      	adds	r4, #1
3000a8c6:	e6ce      	b.n	3000a666 <DiagVprintf+0x3e>
3000a8c8:	2e01      	cmp	r6, #1
3000a8ca:	f858 1b04 	ldr.w	r1, [r8], #4
3000a8ce:	bfd4      	ite	le
3000a8d0:	2200      	movle	r2, #0
3000a8d2:	2201      	movgt	r2, #1
3000a8d4:	fa5f fb81 	uxtb.w	fp, r1
3000a8d8:	f1ba 0f00 	cmp.w	sl, #0
3000a8dc:	d102      	bne.n	3000a8e4 <DiagVprintf+0x2bc>
3000a8de:	2a00      	cmp	r2, #0
3000a8e0:	f040 812e 	bne.w	3000ab40 <DiagVprintf+0x518>
3000a8e4:	4658      	mov	r0, fp
3000a8e6:	9205      	str	r2, [sp, #20]
3000a8e8:	47b8      	blx	r7
3000a8ea:	1c69      	adds	r1, r5, #1
3000a8ec:	f1ba 0f00 	cmp.w	sl, #0
3000a8f0:	f000 811d 	beq.w	3000ab2e <DiagVprintf+0x506>
3000a8f4:	9a05      	ldr	r2, [sp, #20]
3000a8f6:	2a00      	cmp	r2, #0
3000a8f8:	f000 8119 	beq.w	3000ab2e <DiagVprintf+0x506>
3000a8fc:	f106 3bff 	add.w	fp, r6, #4294967295	; 0xffffffff
3000a900:	4648      	mov	r0, r9
3000a902:	47b8      	blx	r7
3000a904:	f1bb 0b01 	subs.w	fp, fp, #1
3000a908:	d1fa      	bne.n	3000a900 <DiagVprintf+0x2d8>
3000a90a:	4435      	add	r5, r6
3000a90c:	e75f      	b.n	3000a7ce <DiagVprintf+0x1a6>
3000a90e:	f1bc 0f01 	cmp.w	ip, #1
3000a912:	f340 80dd 	ble.w	3000aad0 <DiagVprintf+0x4a8>
3000a916:	f108 0807 	add.w	r8, r8, #7
3000a91a:	f028 0807 	bic.w	r8, r8, #7
3000a91e:	f8d8 1004 	ldr.w	r1, [r8, #4]
3000a922:	f858 0b08 	ldr.w	r0, [r8], #8
3000a926:	f1ba 0f00 	cmp.w	sl, #0
3000a92a:	f000 80d8 	beq.w	3000aade <DiagVprintf+0x4b6>
3000a92e:	2300      	movs	r3, #0
3000a930:	2202      	movs	r2, #2
3000a932:	9302      	str	r3, [sp, #8]
3000a934:	9b04      	ldr	r3, [sp, #16]
3000a936:	9301      	str	r3, [sp, #4]
3000a938:	2300      	movs	r3, #0
3000a93a:	9300      	str	r3, [sp, #0]
3000a93c:	464b      	mov	r3, r9
3000a93e:	f7ff fc29 	bl	3000a194 <print_unsigned_num>
3000a942:	4286      	cmp	r6, r0
3000a944:	f77f af42 	ble.w	3000a7cc <DiagVprintf+0x1a4>
3000a948:	f1b9 0f20 	cmp.w	r9, #32
3000a94c:	f47f af3e 	bne.w	3000a7cc <DiagVprintf+0x1a4>
3000a950:	eba6 0900 	sub.w	r9, r6, r0
3000a954:	f1b9 0f00 	cmp.w	r9, #0
3000a958:	f340 8116 	ble.w	3000ab88 <DiagVprintf+0x560>
3000a95c:	2020      	movs	r0, #32
3000a95e:	47b8      	blx	r7
3000a960:	f1b9 0901 	subs.w	r9, r9, #1
3000a964:	d1fa      	bne.n	3000a95c <DiagVprintf+0x334>
3000a966:	4630      	mov	r0, r6
3000a968:	e730      	b.n	3000a7cc <DiagVprintf+0x1a4>
3000a96a:	f1bc 0f01 	cmp.w	ip, #1
3000a96e:	f340 80c1 	ble.w	3000aaf4 <DiagVprintf+0x4cc>
3000a972:	f108 0807 	add.w	r8, r8, #7
3000a976:	f028 0807 	bic.w	r8, r8, #7
3000a97a:	f8d8 1004 	ldr.w	r1, [r8, #4]
3000a97e:	f858 0b08 	ldr.w	r0, [r8], #8
3000a982:	f1ba 0f00 	cmp.w	sl, #0
3000a986:	f000 80bc 	beq.w	3000ab02 <DiagVprintf+0x4da>
3000a98a:	2300      	movs	r3, #0
3000a98c:	220a      	movs	r2, #10
3000a98e:	9302      	str	r3, [sp, #8]
3000a990:	9b04      	ldr	r3, [sp, #16]
3000a992:	9301      	str	r3, [sp, #4]
3000a994:	2300      	movs	r3, #0
3000a996:	9300      	str	r3, [sp, #0]
3000a998:	464b      	mov	r3, r9
3000a99a:	f7ff fbfb 	bl	3000a194 <print_unsigned_num>
3000a99e:	4286      	cmp	r6, r0
3000a9a0:	f77f af14 	ble.w	3000a7cc <DiagVprintf+0x1a4>
3000a9a4:	f1b9 0f20 	cmp.w	r9, #32
3000a9a8:	f47f af10 	bne.w	3000a7cc <DiagVprintf+0x1a4>
3000a9ac:	eba6 0900 	sub.w	r9, r6, r0
3000a9b0:	f1b9 0f00 	cmp.w	r9, #0
3000a9b4:	f340 80e8 	ble.w	3000ab88 <DiagVprintf+0x560>
3000a9b8:	2020      	movs	r0, #32
3000a9ba:	47b8      	blx	r7
3000a9bc:	f1b9 0901 	subs.w	r9, r9, #1
3000a9c0:	d1fa      	bne.n	3000a9b8 <DiagVprintf+0x390>
3000a9c2:	4630      	mov	r0, r6
3000a9c4:	e702      	b.n	3000a7cc <DiagVprintf+0x1a4>
3000a9c6:	3401      	adds	r4, #1
3000a9c8:	f10a 0a01 	add.w	sl, sl, #1
3000a9cc:	e64b      	b.n	3000a666 <DiagVprintf+0x3e>
3000a9ce:	2025      	movs	r0, #37	; 0x25
3000a9d0:	3501      	adds	r5, #1
3000a9d2:	3401      	adds	r4, #1
3000a9d4:	47b8      	blx	r7
3000a9d6:	e639      	b.n	3000a64c <DiagVprintf+0x24>
3000a9d8:	4643      	mov	r3, r8
3000a9da:	f853 2b04 	ldr.w	r2, [r3], #4
3000a9de:	7810      	ldrb	r0, [r2, #0]
3000a9e0:	9305      	str	r3, [sp, #20]
3000a9e2:	2800      	cmp	r0, #0
3000a9e4:	f000 80d5 	beq.w	3000ab92 <DiagVprintf+0x56a>
3000a9e8:	4694      	mov	ip, r2
3000a9ea:	f1c2 0801 	rsb	r8, r2, #1
3000a9ee:	eb08 010c 	add.w	r1, r8, ip
3000a9f2:	f81c 3f01 	ldrb.w	r3, [ip, #1]!
3000a9f6:	2b00      	cmp	r3, #0
3000a9f8:	d1f9      	bne.n	3000a9ee <DiagVprintf+0x3c6>
3000a9fa:	9106      	str	r1, [sp, #24]
3000a9fc:	f1ba 0f00 	cmp.w	sl, #0
3000aa00:	d03c      	beq.n	3000aa7c <DiagVprintf+0x454>
3000aa02:	2a00      	cmp	r2, #0
3000aa04:	f000 80cb 	beq.w	3000ab9e <DiagVprintf+0x576>
3000aa08:	b168      	cbz	r0, 3000aa26 <DiagVprintf+0x3fe>
3000aa0a:	4693      	mov	fp, r2
3000aa0c:	f1c2 0801 	rsb	r8, r2, #1
3000aa10:	47b8      	blx	r7
3000aa12:	eb0b 0c08 	add.w	ip, fp, r8
3000aa16:	f81b 0f01 	ldrb.w	r0, [fp, #1]!
3000aa1a:	2800      	cmp	r0, #0
3000aa1c:	d1f8      	bne.n	3000aa10 <DiagVprintf+0x3e8>
3000aa1e:	4465      	add	r5, ip
3000aa20:	f1ba 0f00 	cmp.w	sl, #0
3000aa24:	d006      	beq.n	3000aa34 <DiagVprintf+0x40c>
3000aa26:	9b06      	ldr	r3, [sp, #24]
3000aa28:	eba6 0b03 	sub.w	fp, r6, r3
3000aa2c:	f1bb 0f00 	cmp.w	fp, #0
3000aa30:	f300 80a1 	bgt.w	3000ab76 <DiagVprintf+0x54e>
3000aa34:	f8dd 8014 	ldr.w	r8, [sp, #20]
3000aa38:	3401      	adds	r4, #1
3000aa3a:	e607      	b.n	3000a64c <DiagVprintf+0x24>
3000aa3c:	f858 0b04 	ldr.w	r0, [r8], #4
3000aa40:	f1ba 0f00 	cmp.w	sl, #0
3000aa44:	d127      	bne.n	3000aa96 <DiagVprintf+0x46e>
3000aa46:	2308      	movs	r3, #8
3000aa48:	2201      	movs	r2, #1
3000aa4a:	4651      	mov	r1, sl
3000aa4c:	f8cd a008 	str.w	sl, [sp, #8]
3000aa50:	e9cd 3200 	strd	r3, r2, [sp]
3000aa54:	2330      	movs	r3, #48	; 0x30
3000aa56:	2210      	movs	r2, #16
3000aa58:	f7ff fb9c 	bl	3000a194 <print_unsigned_num>
3000aa5c:	2301      	movs	r3, #1
3000aa5e:	4405      	add	r5, r0
3000aa60:	3401      	adds	r4, #1
3000aa62:	9304      	str	r3, [sp, #16]
3000aa64:	e5f2      	b.n	3000a64c <DiagVprintf+0x24>
3000aa66:	9a04      	ldr	r2, [sp, #16]
3000aa68:	464b      	mov	r3, r9
3000aa6a:	f8cd a008 	str.w	sl, [sp, #8]
3000aa6e:	9201      	str	r2, [sp, #4]
3000aa70:	2210      	movs	r2, #16
3000aa72:	9600      	str	r6, [sp, #0]
3000aa74:	f7ff fb8e 	bl	3000a194 <print_unsigned_num>
3000aa78:	4405      	add	r5, r0
3000aa7a:	e6a8      	b.n	3000a7ce <DiagVprintf+0x1a6>
3000aa7c:	9b06      	ldr	r3, [sp, #24]
3000aa7e:	eba6 0803 	sub.w	r8, r6, r3
3000aa82:	f1b8 0f00 	cmp.w	r8, #0
3000aa86:	dc66      	bgt.n	3000ab56 <DiagVprintf+0x52e>
3000aa88:	2a00      	cmp	r2, #0
3000aa8a:	f000 808a 	beq.w	3000aba2 <DiagVprintf+0x57a>
3000aa8e:	7810      	ldrb	r0, [r2, #0]
3000aa90:	2800      	cmp	r0, #0
3000aa92:	d1ba      	bne.n	3000aa0a <DiagVprintf+0x3e2>
3000aa94:	e7ce      	b.n	3000aa34 <DiagVprintf+0x40c>
3000aa96:	2300      	movs	r3, #0
3000aa98:	2210      	movs	r2, #16
3000aa9a:	2100      	movs	r1, #0
3000aa9c:	9302      	str	r3, [sp, #8]
3000aa9e:	9300      	str	r3, [sp, #0]
3000aaa0:	2301      	movs	r3, #1
3000aaa2:	9301      	str	r3, [sp, #4]
3000aaa4:	2330      	movs	r3, #48	; 0x30
3000aaa6:	f7ff fb75 	bl	3000a194 <print_unsigned_num>
3000aaaa:	e7d7      	b.n	3000aa5c <DiagVprintf+0x434>
3000aaac:	f858 0b04 	ldr.w	r0, [r8], #4
3000aab0:	2100      	movs	r1, #0
3000aab2:	f1ba 0f00 	cmp.w	sl, #0
3000aab6:	f47f aee7 	bne.w	3000a888 <DiagVprintf+0x260>
3000aaba:	9a04      	ldr	r2, [sp, #16]
3000aabc:	464b      	mov	r3, r9
3000aabe:	f8cd a008 	str.w	sl, [sp, #8]
3000aac2:	9201      	str	r2, [sp, #4]
3000aac4:	2208      	movs	r2, #8
3000aac6:	9600      	str	r6, [sp, #0]
3000aac8:	f7ff fb64 	bl	3000a194 <print_unsigned_num>
3000aacc:	4405      	add	r5, r0
3000aace:	e67e      	b.n	3000a7ce <DiagVprintf+0x1a6>
3000aad0:	f858 0b04 	ldr.w	r0, [r8], #4
3000aad4:	2100      	movs	r1, #0
3000aad6:	f1ba 0f00 	cmp.w	sl, #0
3000aada:	f47f af28 	bne.w	3000a92e <DiagVprintf+0x306>
3000aade:	9a04      	ldr	r2, [sp, #16]
3000aae0:	464b      	mov	r3, r9
3000aae2:	f8cd a008 	str.w	sl, [sp, #8]
3000aae6:	9201      	str	r2, [sp, #4]
3000aae8:	2202      	movs	r2, #2
3000aaea:	9600      	str	r6, [sp, #0]
3000aaec:	f7ff fb52 	bl	3000a194 <print_unsigned_num>
3000aaf0:	4405      	add	r5, r0
3000aaf2:	e66c      	b.n	3000a7ce <DiagVprintf+0x1a6>
3000aaf4:	f858 0b04 	ldr.w	r0, [r8], #4
3000aaf8:	2100      	movs	r1, #0
3000aafa:	f1ba 0f00 	cmp.w	sl, #0
3000aafe:	f47f af44 	bne.w	3000a98a <DiagVprintf+0x362>
3000ab02:	f8cd a008 	str.w	sl, [sp, #8]
3000ab06:	9a04      	ldr	r2, [sp, #16]
3000ab08:	464b      	mov	r3, r9
3000ab0a:	9600      	str	r6, [sp, #0]
3000ab0c:	9201      	str	r2, [sp, #4]
3000ab0e:	220a      	movs	r2, #10
3000ab10:	f7ff fb40 	bl	3000a194 <print_unsigned_num>
3000ab14:	4405      	add	r5, r0
3000ab16:	e65a      	b.n	3000a7ce <DiagVprintf+0x1a6>
3000ab18:	f8d8 0000 	ldr.w	r0, [r8]
3000ab1c:	f108 0204 	add.w	r2, r8, #4
3000ab20:	17c1      	asrs	r1, r0, #31
3000ab22:	4690      	mov	r8, r2
3000ab24:	e67a      	b.n	3000a81c <DiagVprintf+0x1f4>
3000ab26:	f858 0b04 	ldr.w	r0, [r8], #4
3000ab2a:	2100      	movs	r1, #0
3000ab2c:	e62f      	b.n	3000a78e <DiagVprintf+0x166>
3000ab2e:	460d      	mov	r5, r1
3000ab30:	3401      	adds	r4, #1
3000ab32:	e58b      	b.n	3000a64c <DiagVprintf+0x24>
3000ab34:	4240      	negs	r0, r0
3000ab36:	f04f 0201 	mov.w	r2, #1
3000ab3a:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
3000ab3e:	e671      	b.n	3000a824 <DiagVprintf+0x1fc>
3000ab40:	f106 3aff 	add.w	sl, r6, #4294967295	; 0xffffffff
3000ab44:	4648      	mov	r0, r9
3000ab46:	47b8      	blx	r7
3000ab48:	f1ba 0a01 	subs.w	sl, sl, #1
3000ab4c:	d1fa      	bne.n	3000ab44 <DiagVprintf+0x51c>
3000ab4e:	4658      	mov	r0, fp
3000ab50:	4435      	add	r5, r6
3000ab52:	47b8      	blx	r7
3000ab54:	e63b      	b.n	3000a7ce <DiagVprintf+0x1a6>
3000ab56:	4623      	mov	r3, r4
3000ab58:	46c3      	mov	fp, r8
3000ab5a:	464c      	mov	r4, r9
3000ab5c:	9207      	str	r2, [sp, #28]
3000ab5e:	4699      	mov	r9, r3
3000ab60:	4620      	mov	r0, r4
3000ab62:	47b8      	blx	r7
3000ab64:	f1bb 0b01 	subs.w	fp, fp, #1
3000ab68:	d1fa      	bne.n	3000ab60 <DiagVprintf+0x538>
3000ab6a:	464b      	mov	r3, r9
3000ab6c:	9a07      	ldr	r2, [sp, #28]
3000ab6e:	46a1      	mov	r9, r4
3000ab70:	4445      	add	r5, r8
3000ab72:	461c      	mov	r4, r3
3000ab74:	e788      	b.n	3000aa88 <DiagVprintf+0x460>
3000ab76:	465e      	mov	r6, fp
3000ab78:	4648      	mov	r0, r9
3000ab7a:	47b8      	blx	r7
3000ab7c:	3e01      	subs	r6, #1
3000ab7e:	d1fb      	bne.n	3000ab78 <DiagVprintf+0x550>
3000ab80:	445d      	add	r5, fp
3000ab82:	f8dd 8014 	ldr.w	r8, [sp, #20]
3000ab86:	e622      	b.n	3000a7ce <DiagVprintf+0x1a6>
3000ab88:	4606      	mov	r6, r0
3000ab8a:	4630      	mov	r0, r6
3000ab8c:	e61e      	b.n	3000a7cc <DiagVprintf+0x1a4>
3000ab8e:	4605      	mov	r5, r0
3000ab90:	e5eb      	b.n	3000a76a <DiagVprintf+0x142>
3000ab92:	9006      	str	r0, [sp, #24]
3000ab94:	f1ba 0f00 	cmp.w	sl, #0
3000ab98:	f47f af33 	bne.w	3000aa02 <DiagVprintf+0x3da>
3000ab9c:	e76e      	b.n	3000aa7c <DiagVprintf+0x454>
3000ab9e:	3d01      	subs	r5, #1
3000aba0:	e741      	b.n	3000aa26 <DiagVprintf+0x3fe>
3000aba2:	3d01      	subs	r5, #1
3000aba4:	e746      	b.n	3000aa34 <DiagVprintf+0x40c>
3000aba6:	bf00      	nop

3000aba8 <DiagPrintf>:
3000aba8:	b40f      	push	{r0, r1, r2, r3}
3000abaa:	b500      	push	{lr}
3000abac:	b083      	sub	sp, #12
3000abae:	a904      	add	r1, sp, #16
3000abb0:	f851 0b04 	ldr.w	r0, [r1], #4
3000abb4:	9101      	str	r1, [sp, #4]
3000abb6:	f7ff fd37 	bl	3000a628 <DiagVprintf>
3000abba:	b003      	add	sp, #12
3000abbc:	f85d eb04 	ldr.w	lr, [sp], #4
3000abc0:	b004      	add	sp, #16
3000abc2:	4770      	bx	lr

3000abc4 <DiagVprintfNano>:
3000abc4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
3000abc8:	4604      	mov	r4, r0
3000abca:	7800      	ldrb	r0, [r0, #0]
3000abcc:	b089      	sub	sp, #36	; 0x24
3000abce:	2800      	cmp	r0, #0
3000abd0:	f000 81d9 	beq.w	3000af86 <DiagVprintfNano+0x3c2>
3000abd4:	468b      	mov	fp, r1
3000abd6:	f04f 0800 	mov.w	r8, #0
3000abda:	4fa4      	ldr	r7, [pc, #656]	; (3000ae6c <DiagVprintfNano+0x2a8>)
3000abdc:	e005      	b.n	3000abea <DiagVprintfNano+0x26>
3000abde:	f108 0801 	add.w	r8, r8, #1
3000abe2:	47b8      	blx	r7
3000abe4:	7820      	ldrb	r0, [r4, #0]
3000abe6:	2800      	cmp	r0, #0
3000abe8:	d06d      	beq.n	3000acc6 <DiagVprintfNano+0x102>
3000abea:	2825      	cmp	r0, #37	; 0x25
3000abec:	f104 0401 	add.w	r4, r4, #1
3000abf0:	d1f5      	bne.n	3000abde <DiagVprintfNano+0x1a>
3000abf2:	2500      	movs	r5, #0
3000abf4:	7821      	ldrb	r1, [r4, #0]
3000abf6:	462a      	mov	r2, r5
3000abf8:	2900      	cmp	r1, #0
3000abfa:	f000 8081 	beq.w	3000ad00 <DiagVprintfNano+0x13c>
3000abfe:	f1a1 0320 	sub.w	r3, r1, #32
3000ac02:	b2d8      	uxtb	r0, r3
3000ac04:	2858      	cmp	r0, #88	; 0x58
3000ac06:	d85c      	bhi.n	3000acc2 <DiagVprintfNano+0xfe>
3000ac08:	2b58      	cmp	r3, #88	; 0x58
3000ac0a:	d85a      	bhi.n	3000acc2 <DiagVprintfNano+0xfe>
3000ac0c:	e8df f013 	tbh	[pc, r3, lsl #1]
3000ac10:	0059005f 	.word	0x0059005f
3000ac14:	00590059 	.word	0x00590059
3000ac18:	01270059 	.word	0x01270059
3000ac1c:	00590059 	.word	0x00590059
3000ac20:	00590059 	.word	0x00590059
3000ac24:	00590059 	.word	0x00590059
3000ac28:	00590059 	.word	0x00590059
3000ac2c:	00590059 	.word	0x00590059
3000ac30:	007a005f 	.word	0x007a005f
3000ac34:	007a007a 	.word	0x007a007a
3000ac38:	007a007a 	.word	0x007a007a
3000ac3c:	007a007a 	.word	0x007a007a
3000ac40:	007a007a 	.word	0x007a007a
3000ac44:	00590059 	.word	0x00590059
3000ac48:	00590059 	.word	0x00590059
3000ac4c:	00590059 	.word	0x00590059
3000ac50:	00590059 	.word	0x00590059
3000ac54:	00db0059 	.word	0x00db0059
3000ac58:	00590059 	.word	0x00590059
3000ac5c:	00590059 	.word	0x00590059
3000ac60:	00590059 	.word	0x00590059
3000ac64:	00590059 	.word	0x00590059
3000ac68:	00590059 	.word	0x00590059
3000ac6c:	00590059 	.word	0x00590059
3000ac70:	00590059 	.word	0x00590059
3000ac74:	00590059 	.word	0x00590059
3000ac78:	00590059 	.word	0x00590059
3000ac7c:	00590059 	.word	0x00590059
3000ac80:	00590059 	.word	0x00590059
3000ac84:	00590059 	.word	0x00590059
3000ac88:	00590059 	.word	0x00590059
3000ac8c:	00590059 	.word	0x00590059
3000ac90:	00590059 	.word	0x00590059
3000ac94:	00db0059 	.word	0x00db0059
3000ac98:	0059007c 	.word	0x0059007c
3000ac9c:	00590059 	.word	0x00590059
3000aca0:	007c0059 	.word	0x007c0059
3000aca4:	00590059 	.word	0x00590059
3000aca8:	00590059 	.word	0x00590059
3000acac:	00590059 	.word	0x00590059
3000acb0:	00590059 	.word	0x00590059
3000acb4:	01720059 	.word	0x01720059
3000acb8:	01320059 	.word	0x01320059
3000acbc:	00590059 	.word	0x00590059
3000acc0:	00e8      	.short	0x00e8
3000acc2:	f04f 38ff 	mov.w	r8, #4294967295	; 0xffffffff
3000acc6:	4640      	mov	r0, r8
3000acc8:	b009      	add	sp, #36	; 0x24
3000acca:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
3000acce:	3401      	adds	r4, #1
3000acd0:	460a      	mov	r2, r1
3000acd2:	7821      	ldrb	r1, [r4, #0]
3000acd4:	2900      	cmp	r1, #0
3000acd6:	d0f6      	beq.n	3000acc6 <DiagVprintfNano+0x102>
3000acd8:	2500      	movs	r5, #0
3000acda:	e005      	b.n	3000ace8 <DiagVprintfNano+0x124>
3000acdc:	f814 1f01 	ldrb.w	r1, [r4, #1]!
3000ace0:	f1a3 0530 	sub.w	r5, r3, #48	; 0x30
3000ace4:	2900      	cmp	r1, #0
3000ace6:	d0ee      	beq.n	3000acc6 <DiagVprintfNano+0x102>
3000ace8:	f1a1 0030 	sub.w	r0, r1, #48	; 0x30
3000acec:	eb05 0385 	add.w	r3, r5, r5, lsl #2
3000acf0:	2809      	cmp	r0, #9
3000acf2:	eb01 0343 	add.w	r3, r1, r3, lsl #1
3000acf6:	d9f1      	bls.n	3000acdc <DiagVprintfNano+0x118>
3000acf8:	7821      	ldrb	r1, [r4, #0]
3000acfa:	2900      	cmp	r1, #0
3000acfc:	f47f af7f 	bne.w	3000abfe <DiagVprintfNano+0x3a>
3000ad00:	3401      	adds	r4, #1
3000ad02:	e76f      	b.n	3000abe4 <DiagVprintfNano+0x20>
3000ad04:	2220      	movs	r2, #32
3000ad06:	e7e7      	b.n	3000acd8 <DiagVprintfNano+0x114>
3000ad08:	4659      	mov	r1, fp
3000ad0a:	f851 3b04 	ldr.w	r3, [r1], #4
3000ad0e:	2b00      	cmp	r3, #0
3000ad10:	9101      	str	r1, [sp, #4]
3000ad12:	f2c0 8116 	blt.w	3000af42 <DiagVprintfNano+0x37e>
3000ad16:	2100      	movs	r1, #0
3000ad18:	9100      	str	r1, [sp, #0]
3000ad1a:	f10d 0914 	add.w	r9, sp, #20
3000ad1e:	f04f 0b00 	mov.w	fp, #0
3000ad22:	f8df c14c 	ldr.w	ip, [pc, #332]	; 3000ae70 <DiagVprintfNano+0x2ac>
3000ad26:	4649      	mov	r1, r9
3000ad28:	fbac 0e03 	umull	r0, lr, ip, r3
3000ad2c:	4618      	mov	r0, r3
3000ad2e:	46da      	mov	sl, fp
3000ad30:	f10b 0b01 	add.w	fp, fp, #1
3000ad34:	ea4f 0ede 	mov.w	lr, lr, lsr #3
3000ad38:	2809      	cmp	r0, #9
3000ad3a:	eb0e 068e 	add.w	r6, lr, lr, lsl #2
3000ad3e:	eba3 0646 	sub.w	r6, r3, r6, lsl #1
3000ad42:	4673      	mov	r3, lr
3000ad44:	f106 0630 	add.w	r6, r6, #48	; 0x30
3000ad48:	b2f6      	uxtb	r6, r6
3000ad4a:	f801 6b01 	strb.w	r6, [r1], #1
3000ad4e:	d8eb      	bhi.n	3000ad28 <DiagVprintfNano+0x164>
3000ad50:	9b00      	ldr	r3, [sp, #0]
3000ad52:	2b00      	cmp	r3, #0
3000ad54:	f000 810c 	beq.w	3000af70 <DiagVprintfNano+0x3ac>
3000ad58:	2a30      	cmp	r2, #48	; 0x30
3000ad5a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
3000ad5e:	f040 810e 	bne.w	3000af7e <DiagVprintfNano+0x3ba>
3000ad62:	202d      	movs	r0, #45	; 0x2d
3000ad64:	9202      	str	r2, [sp, #8]
3000ad66:	47b8      	blx	r7
3000ad68:	2d00      	cmp	r5, #0
3000ad6a:	9a02      	ldr	r2, [sp, #8]
3000ad6c:	dd19      	ble.n	3000ada2 <DiagVprintfNano+0x1de>
3000ad6e:	45ab      	cmp	fp, r5
3000ad70:	da12      	bge.n	3000ad98 <DiagVprintfNano+0x1d4>
3000ad72:	9403      	str	r4, [sp, #12]
3000ad74:	4614      	mov	r4, r2
3000ad76:	9502      	str	r5, [sp, #8]
3000ad78:	3d01      	subs	r5, #1
3000ad7a:	4620      	mov	r0, r4
3000ad7c:	47b8      	blx	r7
3000ad7e:	45ab      	cmp	fp, r5
3000ad80:	d1fa      	bne.n	3000ad78 <DiagVprintfNano+0x1b4>
3000ad82:	9800      	ldr	r0, [sp, #0]
3000ad84:	ea6f 030b 	mvn.w	r3, fp
3000ad88:	9d02      	ldr	r5, [sp, #8]
3000ad8a:	4622      	mov	r2, r4
3000ad8c:	1c41      	adds	r1, r0, #1
3000ad8e:	9c03      	ldr	r4, [sp, #12]
3000ad90:	442b      	add	r3, r5
3000ad92:	440b      	add	r3, r1
3000ad94:	9300      	str	r3, [sp, #0]
3000ad96:	b120      	cbz	r0, 3000ada2 <DiagVprintfNano+0x1de>
3000ad98:	f012 0fdf 	tst.w	r2, #223	; 0xdf
3000ad9c:	d101      	bne.n	3000ada2 <DiagVprintfNano+0x1de>
3000ad9e:	202d      	movs	r0, #45	; 0x2d
3000ada0:	47b8      	blx	r7
3000ada2:	eb09 050a 	add.w	r5, r9, sl
3000ada6:	4630      	mov	r0, r6
3000ada8:	e001      	b.n	3000adae <DiagVprintfNano+0x1ea>
3000adaa:	f815 0d01 	ldrb.w	r0, [r5, #-1]!
3000adae:	47b8      	blx	r7
3000adb0:	45a9      	cmp	r9, r5
3000adb2:	d1fa      	bne.n	3000adaa <DiagVprintfNano+0x1e6>
3000adb4:	f108 0801 	add.w	r8, r8, #1
3000adb8:	3401      	adds	r4, #1
3000adba:	44d0      	add	r8, sl
3000adbc:	e9dd 3b00 	ldrd	r3, fp, [sp]
3000adc0:	4443      	add	r3, r8
3000adc2:	4698      	mov	r8, r3
3000adc4:	e70e      	b.n	3000abe4 <DiagVprintfNano+0x20>
3000adc6:	f85b 3b04 	ldr.w	r3, [fp], #4
3000adca:	2d01      	cmp	r5, #1
3000adcc:	fa5f f983 	uxtb.w	r9, r3
3000add0:	f300 80bb 	bgt.w	3000af4a <DiagVprintfNano+0x386>
3000add4:	4648      	mov	r0, r9
3000add6:	f108 0801 	add.w	r8, r8, #1
3000adda:	3401      	adds	r4, #1
3000addc:	47b8      	blx	r7
3000adde:	e701      	b.n	3000abe4 <DiagVprintfNano+0x20>
3000ade0:	4659      	mov	r1, fp
3000ade2:	f10d 0914 	add.w	r9, sp, #20
3000ade6:	2600      	movs	r6, #0
3000ade8:	f851 3b04 	ldr.w	r3, [r1], #4
3000adec:	4648      	mov	r0, r9
3000adee:	9100      	str	r1, [sp, #0]
3000adf0:	e000      	b.n	3000adf4 <DiagVprintfNano+0x230>
3000adf2:	465e      	mov	r6, fp
3000adf4:	f003 010f 	and.w	r1, r3, #15
3000adf8:	f106 0b01 	add.w	fp, r6, #1
3000adfc:	2909      	cmp	r1, #9
3000adfe:	f101 0a57 	add.w	sl, r1, #87	; 0x57
3000ae02:	bf98      	it	ls
3000ae04:	f101 0a30 	addls.w	sl, r1, #48	; 0x30
3000ae08:	0919      	lsrs	r1, r3, #4
3000ae0a:	2b0f      	cmp	r3, #15
3000ae0c:	f800 ab01 	strb.w	sl, [r0], #1
3000ae10:	460b      	mov	r3, r1
3000ae12:	d8ee      	bhi.n	3000adf2 <DiagVprintfNano+0x22e>
3000ae14:	2d00      	cmp	r5, #0
3000ae16:	f340 808f 	ble.w	3000af38 <DiagVprintfNano+0x374>
3000ae1a:	455d      	cmp	r5, fp
3000ae1c:	f340 808c 	ble.w	3000af38 <DiagVprintfNano+0x374>
3000ae20:	9402      	str	r4, [sp, #8]
3000ae22:	4614      	mov	r4, r2
3000ae24:	9501      	str	r5, [sp, #4]
3000ae26:	3d01      	subs	r5, #1
3000ae28:	4620      	mov	r0, r4
3000ae2a:	47b8      	blx	r7
3000ae2c:	45ab      	cmp	fp, r5
3000ae2e:	d1fa      	bne.n	3000ae26 <DiagVprintfNano+0x262>
3000ae30:	e9dd 5401 	ldrd	r5, r4, [sp, #4]
3000ae34:	eba5 030b 	sub.w	r3, r5, fp
3000ae38:	9301      	str	r3, [sp, #4]
3000ae3a:	eb09 0506 	add.w	r5, r9, r6
3000ae3e:	4650      	mov	r0, sl
3000ae40:	e001      	b.n	3000ae46 <DiagVprintfNano+0x282>
3000ae42:	f815 0d01 	ldrb.w	r0, [r5, #-1]!
3000ae46:	47b8      	blx	r7
3000ae48:	454d      	cmp	r5, r9
3000ae4a:	d1fa      	bne.n	3000ae42 <DiagVprintfNano+0x27e>
3000ae4c:	f108 0801 	add.w	r8, r8, #1
3000ae50:	3401      	adds	r4, #1
3000ae52:	44b0      	add	r8, r6
3000ae54:	e9dd b300 	ldrd	fp, r3, [sp]
3000ae58:	4443      	add	r3, r8
3000ae5a:	4698      	mov	r8, r3
3000ae5c:	e6c2      	b.n	3000abe4 <DiagVprintfNano+0x20>
3000ae5e:	2025      	movs	r0, #37	; 0x25
3000ae60:	f108 0801 	add.w	r8, r8, #1
3000ae64:	3401      	adds	r4, #1
3000ae66:	47b8      	blx	r7
3000ae68:	e6bc      	b.n	3000abe4 <DiagVprintfNano+0x20>
3000ae6a:	bf00      	nop
3000ae6c:	0000abb5 	.word	0x0000abb5
3000ae70:	cccccccd 	.word	0xcccccccd
3000ae74:	4659      	mov	r1, fp
3000ae76:	f10d 0914 	add.w	r9, sp, #20
3000ae7a:	f04f 0b00 	mov.w	fp, #0
3000ae7e:	f8df c110 	ldr.w	ip, [pc, #272]	; 3000af90 <DiagVprintfNano+0x3cc>
3000ae82:	f851 3b04 	ldr.w	r3, [r1], #4
3000ae86:	9100      	str	r1, [sp, #0]
3000ae88:	4649      	mov	r1, r9
3000ae8a:	fbac 0e03 	umull	r0, lr, ip, r3
3000ae8e:	4618      	mov	r0, r3
3000ae90:	46da      	mov	sl, fp
3000ae92:	f10b 0b01 	add.w	fp, fp, #1
3000ae96:	ea4f 0ede 	mov.w	lr, lr, lsr #3
3000ae9a:	2809      	cmp	r0, #9
3000ae9c:	eb0e 068e 	add.w	r6, lr, lr, lsl #2
3000aea0:	eba3 0646 	sub.w	r6, r3, r6, lsl #1
3000aea4:	4673      	mov	r3, lr
3000aea6:	f106 0630 	add.w	r6, r6, #48	; 0x30
3000aeaa:	b2f6      	uxtb	r6, r6
3000aeac:	f801 6b01 	strb.w	r6, [r1], #1
3000aeb0:	d8eb      	bhi.n	3000ae8a <DiagVprintfNano+0x2c6>
3000aeb2:	2d00      	cmp	r5, #0
3000aeb4:	dd43      	ble.n	3000af3e <DiagVprintfNano+0x37a>
3000aeb6:	455d      	cmp	r5, fp
3000aeb8:	dd41      	ble.n	3000af3e <DiagVprintfNano+0x37a>
3000aeba:	9402      	str	r4, [sp, #8]
3000aebc:	4614      	mov	r4, r2
3000aebe:	9501      	str	r5, [sp, #4]
3000aec0:	3d01      	subs	r5, #1
3000aec2:	4620      	mov	r0, r4
3000aec4:	47b8      	blx	r7
3000aec6:	45ab      	cmp	fp, r5
3000aec8:	d1fa      	bne.n	3000aec0 <DiagVprintfNano+0x2fc>
3000aeca:	e9dd 5401 	ldrd	r5, r4, [sp, #4]
3000aece:	eba5 050b 	sub.w	r5, r5, fp
3000aed2:	eb09 0b0a 	add.w	fp, r9, sl
3000aed6:	4630      	mov	r0, r6
3000aed8:	e001      	b.n	3000aede <DiagVprintfNano+0x31a>
3000aeda:	f81b 0d01 	ldrb.w	r0, [fp, #-1]!
3000aede:	47b8      	blx	r7
3000aee0:	45d9      	cmp	r9, fp
3000aee2:	d1fa      	bne.n	3000aeda <DiagVprintfNano+0x316>
3000aee4:	f108 0801 	add.w	r8, r8, #1
3000aee8:	f8dd b000 	ldr.w	fp, [sp]
3000aeec:	3401      	adds	r4, #1
3000aeee:	44d0      	add	r8, sl
3000aef0:	44a8      	add	r8, r5
3000aef2:	e677      	b.n	3000abe4 <DiagVprintfNano+0x20>
3000aef4:	f85b 6b04 	ldr.w	r6, [fp], #4
3000aef8:	7833      	ldrb	r3, [r6, #0]
3000aefa:	b14b      	cbz	r3, 3000af10 <DiagVprintfNano+0x34c>
3000aefc:	4633      	mov	r3, r6
3000aefe:	f1c6 0901 	rsb	r9, r6, #1
3000af02:	eb09 0003 	add.w	r0, r9, r3
3000af06:	f813 1f01 	ldrb.w	r1, [r3, #1]!
3000af0a:	2900      	cmp	r1, #0
3000af0c:	d1f9      	bne.n	3000af02 <DiagVprintfNano+0x33e>
3000af0e:	1a2d      	subs	r5, r5, r0
3000af10:	2d00      	cmp	r5, #0
3000af12:	dc24      	bgt.n	3000af5e <DiagVprintfNano+0x39a>
3000af14:	2e00      	cmp	r6, #0
3000af16:	d038      	beq.n	3000af8a <DiagVprintfNano+0x3c6>
3000af18:	7830      	ldrb	r0, [r6, #0]
3000af1a:	2800      	cmp	r0, #0
3000af1c:	f43f aef0 	beq.w	3000ad00 <DiagVprintfNano+0x13c>
3000af20:	f1c6 0901 	rsb	r9, r6, #1
3000af24:	47b8      	blx	r7
3000af26:	eb06 0309 	add.w	r3, r6, r9
3000af2a:	f816 0f01 	ldrb.w	r0, [r6, #1]!
3000af2e:	2800      	cmp	r0, #0
3000af30:	d1f8      	bne.n	3000af24 <DiagVprintfNano+0x360>
3000af32:	4498      	add	r8, r3
3000af34:	3401      	adds	r4, #1
3000af36:	e655      	b.n	3000abe4 <DiagVprintfNano+0x20>
3000af38:	2300      	movs	r3, #0
3000af3a:	9301      	str	r3, [sp, #4]
3000af3c:	e77d      	b.n	3000ae3a <DiagVprintfNano+0x276>
3000af3e:	2500      	movs	r5, #0
3000af40:	e7c7      	b.n	3000aed2 <DiagVprintfNano+0x30e>
3000af42:	2101      	movs	r1, #1
3000af44:	425b      	negs	r3, r3
3000af46:	9100      	str	r1, [sp, #0]
3000af48:	e6e7      	b.n	3000ad1a <DiagVprintfNano+0x156>
3000af4a:	1e6e      	subs	r6, r5, #1
3000af4c:	4692      	mov	sl, r2
3000af4e:	4650      	mov	r0, sl
3000af50:	47b8      	blx	r7
3000af52:	3e01      	subs	r6, #1
3000af54:	d1fb      	bne.n	3000af4e <DiagVprintfNano+0x38a>
3000af56:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
3000af5a:	44a8      	add	r8, r5
3000af5c:	e73a      	b.n	3000add4 <DiagVprintfNano+0x210>
3000af5e:	46a9      	mov	r9, r5
3000af60:	4692      	mov	sl, r2
3000af62:	4650      	mov	r0, sl
3000af64:	47b8      	blx	r7
3000af66:	f1b9 0901 	subs.w	r9, r9, #1
3000af6a:	d1fa      	bne.n	3000af62 <DiagVprintfNano+0x39e>
3000af6c:	44a8      	add	r8, r5
3000af6e:	e7d1      	b.n	3000af14 <DiagVprintfNano+0x350>
3000af70:	2d00      	cmp	r5, #0
3000af72:	f77f af16 	ble.w	3000ada2 <DiagVprintfNano+0x1de>
3000af76:	455d      	cmp	r5, fp
3000af78:	f73f aefb 	bgt.w	3000ad72 <DiagVprintfNano+0x1ae>
3000af7c:	e711      	b.n	3000ada2 <DiagVprintfNano+0x1de>
3000af7e:	2d00      	cmp	r5, #0
3000af80:	f73f aef5 	bgt.w	3000ad6e <DiagVprintfNano+0x1aa>
3000af84:	e708      	b.n	3000ad98 <DiagVprintfNano+0x1d4>
3000af86:	4680      	mov	r8, r0
3000af88:	e69d      	b.n	3000acc6 <DiagVprintfNano+0x102>
3000af8a:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
3000af8e:	e6b7      	b.n	3000ad00 <DiagVprintfNano+0x13c>
3000af90:	cccccccd 	.word	0xcccccccd

3000af94 <DiagPrintfNano>:
3000af94:	b40f      	push	{r0, r1, r2, r3}
3000af96:	b500      	push	{lr}
3000af98:	b083      	sub	sp, #12
3000af9a:	a904      	add	r1, sp, #16
3000af9c:	f851 0b04 	ldr.w	r0, [r1], #4
3000afa0:	9101      	str	r1, [sp, #4]
3000afa2:	f7ff fe0f 	bl	3000abc4 <DiagVprintfNano>
3000afa6:	b003      	add	sp, #12
3000afa8:	f85d eb04 	ldr.w	lr, [sp], #4
3000afac:	b004      	add	sp, #16
3000afae:	4770      	bx	lr

3000afb0 <io_assert_failed>:
3000afb0:	460c      	mov	r4, r1
3000afb2:	4b05      	ldr	r3, [pc, #20]	; (3000afc8 <io_assert_failed+0x18>)
3000afb4:	2245      	movs	r2, #69	; 0x45
3000afb6:	4905      	ldr	r1, [pc, #20]	; (3000afcc <io_assert_failed+0x1c>)
3000afb8:	b500      	push	{lr}
3000afba:	b083      	sub	sp, #12
3000afbc:	e9cd 0400 	strd	r0, r4, [sp]
3000afc0:	2002      	movs	r0, #2
3000afc2:	f7fe f9eb 	bl	3000939c <rtk_log_write_nano>
3000afc6:	e7fe      	b.n	3000afc6 <io_assert_failed+0x16>
3000afc8:	3000d8b4 	.word	0x3000d8b4
3000afcc:	3000b8e0 	.word	0x3000b8e0

3000afd0 <CRYPTO_SetSecurityModeAD>:
3000afd0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
3000afd4:	b082      	sub	sp, #8
3000afd6:	e9dd 7609 	ldrd	r7, r6, [sp, #36]	; 0x24
3000afda:	2800      	cmp	r0, #0
3000afdc:	f000 80ab 	beq.w	3000b136 <CRYPTO_SetSecurityModeAD+0x166>
3000afe0:	4698      	mov	r8, r3
3000afe2:	7803      	ldrb	r3, [r0, #0]
3000afe4:	4604      	mov	r4, r0
3000afe6:	2b01      	cmp	r3, #1
3000afe8:	f040 80a9 	bne.w	3000b13e <CRYPTO_SetSecurityModeAD+0x16e>
3000afec:	4615      	mov	r5, r2
3000afee:	2200      	movs	r2, #0
3000aff0:	6041      	str	r1, [r0, #4]
3000aff2:	8102      	strh	r2, [r0, #8]
3000aff4:	1c4a      	adds	r2, r1, #1
3000aff6:	d009      	beq.n	3000b00c <CRYPTO_SetSecurityModeAD+0x3c>
3000aff8:	f001 0230 	and.w	r2, r1, #48	; 0x30
3000affc:	f081 0180 	eor.w	r1, r1, #128	; 0x80
3000b000:	2a20      	cmp	r2, #32
3000b002:	f3c1 11c0 	ubfx	r1, r1, #7, #1
3000b006:	bf08      	it	eq
3000b008:	7203      	strbeq	r3, [r0, #8]
3000b00a:	7241      	strb	r1, [r0, #9]
3000b00c:	1c6b      	adds	r3, r5, #1
3000b00e:	60e5      	str	r5, [r4, #12]
3000b010:	d069      	beq.n	3000b0e6 <CRYPTO_SetSecurityModeAD+0x116>
3000b012:	f005 0303 	and.w	r3, r5, #3
3000b016:	f3c5 0280 	ubfx	r2, r5, #2, #1
3000b01a:	7422      	strb	r2, [r4, #16]
3000b01c:	f1a3 0202 	sub.w	r2, r3, #2
3000b020:	2b01      	cmp	r3, #1
3000b022:	fab2 f282 	clz	r2, r2
3000b026:	ea4f 1252 	mov.w	r2, r2, lsr #5
3000b02a:	7462      	strb	r2, [r4, #17]
3000b02c:	fab3 f283 	clz	r2, r3
3000b030:	ea4f 1252 	mov.w	r2, r2, lsr #5
3000b034:	74a2      	strb	r2, [r4, #18]
3000b036:	bf0c      	ite	eq
3000b038:	2201      	moveq	r2, #1
3000b03a:	2200      	movne	r2, #0
3000b03c:	74e2      	strb	r2, [r4, #19]
3000b03e:	d03f      	beq.n	3000b0c0 <CRYPTO_SetSecurityModeAD+0xf0>
3000b040:	2200      	movs	r2, #0
3000b042:	7522      	strb	r2, [r4, #20]
3000b044:	2b00      	cmp	r3, #0
3000b046:	d149      	bne.n	3000b0dc <CRYPTO_SetSecurityModeAD+0x10c>
3000b048:	2314      	movs	r3, #20
3000b04a:	62a3      	str	r3, [r4, #40]	; 0x28
3000b04c:	9b08      	ldr	r3, [sp, #32]
3000b04e:	6226      	str	r6, [r4, #32]
3000b050:	e9c4 3811 	strd	r3, r8, [r4, #68]	; 0x44
3000b054:	2e00      	cmp	r6, #0
3000b056:	d03e      	beq.n	3000b0d6 <CRYPTO_SetSecurityModeAD+0x106>
3000b058:	7d23      	ldrb	r3, [r4, #20]
3000b05a:	f104 0064 	add.w	r0, r4, #100	; 0x64
3000b05e:	2b30      	cmp	r3, #48	; 0x30
3000b060:	65e0      	str	r0, [r4, #92]	; 0x5c
3000b062:	d04b      	beq.n	3000b0fc <CRYPTO_SetSecurityModeAD+0x12c>
3000b064:	2b40      	cmp	r3, #64	; 0x40
3000b066:	d049      	beq.n	3000b0fc <CRYPTO_SetSecurityModeAD+0x12c>
3000b068:	f104 03a4 	add.w	r3, r4, #164	; 0xa4
3000b06c:	2240      	movs	r2, #64	; 0x40
3000b06e:	2136      	movs	r1, #54	; 0x36
3000b070:	f8df 80ec 	ldr.w	r8, [pc, #236]	; 3000b160 <CRYPTO_SetSecurityModeAD+0x190>
3000b074:	6623      	str	r3, [r4, #96]	; 0x60
3000b076:	47c0      	blx	r8
3000b078:	2240      	movs	r2, #64	; 0x40
3000b07a:	215c      	movs	r1, #92	; 0x5c
3000b07c:	6e20      	ldr	r0, [r4, #96]	; 0x60
3000b07e:	47c0      	blx	r8
3000b080:	4b33      	ldr	r3, [pc, #204]	; (3000b150 <CRYPTO_SetSecurityModeAD+0x180>)
3000b082:	681b      	ldr	r3, [r3, #0]
3000b084:	b993      	cbnz	r3, 3000b0ac <CRYPTO_SetSecurityModeAD+0xdc>
3000b086:	2f00      	cmp	r7, #0
3000b088:	d05d      	beq.n	3000b146 <CRYPTO_SetSecurityModeAD+0x176>
3000b08a:	6267      	str	r7, [r4, #36]	; 0x24
3000b08c:	e000      	b.n	3000b090 <CRYPTO_SetSecurityModeAD+0xc0>
3000b08e:	6a67      	ldr	r7, [r4, #36]	; 0x24
3000b090:	6de1      	ldr	r1, [r4, #92]	; 0x5c
3000b092:	5cfa      	ldrb	r2, [r7, r3]
3000b094:	5cc8      	ldrb	r0, [r1, r3]
3000b096:	4042      	eors	r2, r0
3000b098:	54ca      	strb	r2, [r1, r3]
3000b09a:	6e21      	ldr	r1, [r4, #96]	; 0x60
3000b09c:	6a62      	ldr	r2, [r4, #36]	; 0x24
3000b09e:	5cc8      	ldrb	r0, [r1, r3]
3000b0a0:	5cd2      	ldrb	r2, [r2, r3]
3000b0a2:	4042      	eors	r2, r0
3000b0a4:	54ca      	strb	r2, [r1, r3]
3000b0a6:	3301      	adds	r3, #1
3000b0a8:	429e      	cmp	r6, r3
3000b0aa:	d1f0      	bne.n	3000b08e <CRYPTO_SetSecurityModeAD+0xbe>
3000b0ac:	3501      	adds	r5, #1
3000b0ae:	d003      	beq.n	3000b0b8 <CRYPTO_SetSecurityModeAD+0xe8>
3000b0b0:	2201      	movs	r2, #1
3000b0b2:	2300      	movs	r3, #0
3000b0b4:	85a2      	strh	r2, [r4, #44]	; 0x2c
3000b0b6:	6323      	str	r3, [r4, #48]	; 0x30
3000b0b8:	2000      	movs	r0, #0
3000b0ba:	b002      	add	sp, #8
3000b0bc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
3000b0c0:	f005 03f0 	and.w	r3, r5, #240	; 0xf0
3000b0c4:	2b40      	cmp	r3, #64	; 0x40
3000b0c6:	d033      	beq.n	3000b130 <CRYPTO_SetSecurityModeAD+0x160>
3000b0c8:	d813      	bhi.n	3000b0f2 <CRYPTO_SetSecurityModeAD+0x122>
3000b0ca:	2b10      	cmp	r3, #16
3000b0cc:	d023      	beq.n	3000b116 <CRYPTO_SetSecurityModeAD+0x146>
3000b0ce:	2b20      	cmp	r3, #32
3000b0d0:	d124      	bne.n	3000b11c <CRYPTO_SetSecurityModeAD+0x14c>
3000b0d2:	7523      	strb	r3, [r4, #20]
3000b0d4:	e00b      	b.n	3000b0ee <CRYPTO_SetSecurityModeAD+0x11e>
3000b0d6:	e9c4 6617 	strd	r6, r6, [r4, #92]	; 0x5c
3000b0da:	e7e7      	b.n	3000b0ac <CRYPTO_SetSecurityModeAD+0xdc>
3000b0dc:	2b02      	cmp	r3, #2
3000b0de:	d105      	bne.n	3000b0ec <CRYPTO_SetSecurityModeAD+0x11c>
3000b0e0:	2310      	movs	r3, #16
3000b0e2:	62a3      	str	r3, [r4, #40]	; 0x28
3000b0e4:	e7b2      	b.n	3000b04c <CRYPTO_SetSecurityModeAD+0x7c>
3000b0e6:	2300      	movs	r3, #0
3000b0e8:	6123      	str	r3, [r4, #16]
3000b0ea:	7523      	strb	r3, [r4, #20]
3000b0ec:	2300      	movs	r3, #0
3000b0ee:	62a3      	str	r3, [r4, #40]	; 0x28
3000b0f0:	e7ac      	b.n	3000b04c <CRYPTO_SetSecurityModeAD+0x7c>
3000b0f2:	2b80      	cmp	r3, #128	; 0x80
3000b0f4:	d112      	bne.n	3000b11c <CRYPTO_SetSecurityModeAD+0x14c>
3000b0f6:	2340      	movs	r3, #64	; 0x40
3000b0f8:	7523      	strb	r3, [r4, #20]
3000b0fa:	e7f8      	b.n	3000b0ee <CRYPTO_SetSecurityModeAD+0x11e>
3000b0fc:	f104 03e4 	add.w	r3, r4, #228	; 0xe4
3000b100:	2280      	movs	r2, #128	; 0x80
3000b102:	2136      	movs	r1, #54	; 0x36
3000b104:	f8df 8058 	ldr.w	r8, [pc, #88]	; 3000b160 <CRYPTO_SetSecurityModeAD+0x190>
3000b108:	6623      	str	r3, [r4, #96]	; 0x60
3000b10a:	47c0      	blx	r8
3000b10c:	2280      	movs	r2, #128	; 0x80
3000b10e:	215c      	movs	r1, #92	; 0x5c
3000b110:	6e20      	ldr	r0, [r4, #96]	; 0x60
3000b112:	47c0      	blx	r8
3000b114:	e7b4      	b.n	3000b080 <CRYPTO_SetSecurityModeAD+0xb0>
3000b116:	231c      	movs	r3, #28
3000b118:	7523      	strb	r3, [r4, #20]
3000b11a:	e7e8      	b.n	3000b0ee <CRYPTO_SetSecurityModeAD+0x11e>
3000b11c:	4b0d      	ldr	r3, [pc, #52]	; (3000b154 <CRYPTO_SetSecurityModeAD+0x184>)
3000b11e:	2245      	movs	r2, #69	; 0x45
3000b120:	490d      	ldr	r1, [pc, #52]	; (3000b158 <CRYPTO_SetSecurityModeAD+0x188>)
3000b122:	2002      	movs	r0, #2
3000b124:	9500      	str	r5, [sp, #0]
3000b126:	f7fe f911 	bl	3000934c <rtk_log_write>
3000b12a:	2300      	movs	r3, #0
3000b12c:	7523      	strb	r3, [r4, #20]
3000b12e:	e7de      	b.n	3000b0ee <CRYPTO_SetSecurityModeAD+0x11e>
3000b130:	2330      	movs	r3, #48	; 0x30
3000b132:	7523      	strb	r3, [r4, #20]
3000b134:	e7db      	b.n	3000b0ee <CRYPTO_SetSecurityModeAD+0x11e>
3000b136:	21d9      	movs	r1, #217	; 0xd9
3000b138:	4808      	ldr	r0, [pc, #32]	; (3000b15c <CRYPTO_SetSecurityModeAD+0x18c>)
3000b13a:	f7ff ff39 	bl	3000afb0 <io_assert_failed>
3000b13e:	21da      	movs	r1, #218	; 0xda
3000b140:	4806      	ldr	r0, [pc, #24]	; (3000b15c <CRYPTO_SetSecurityModeAD+0x18c>)
3000b142:	f7ff ff35 	bl	3000afb0 <io_assert_failed>
3000b146:	f240 1135 	movw	r1, #309	; 0x135
3000b14a:	4804      	ldr	r0, [pc, #16]	; (3000b15c <CRYPTO_SetSecurityModeAD+0x18c>)
3000b14c:	f7ff ff30 	bl	3000afb0 <io_assert_failed>
3000b150:	2001c200 	.word	0x2001c200
3000b154:	3000d978 	.word	0x3000d978
3000b158:	3000d878 	.word	0x3000d878
3000b15c:	3000d8e8 	.word	0x3000d8e8
3000b160:	00012be5 	.word	0x00012be5

3000b164 <rtl_crypto_hmac_sha2_init>:
3000b164:	b570      	push	{r4, r5, r6, lr}
3000b166:	4c94      	ldr	r4, [pc, #592]	; (3000b3b8 <rtl_crypto_hmac_sha2_init+0x254>)
3000b168:	460d      	mov	r5, r1
3000b16a:	e844 f400 	tt	r4, r4
3000b16e:	4611      	mov	r1, r2
3000b170:	f414 0f80 	tst.w	r4, #4194304	; 0x400000
3000b174:	4a91      	ldr	r2, [pc, #580]	; (3000b3bc <rtl_crypto_hmac_sha2_init+0x258>)
3000b176:	461c      	mov	r4, r3
3000b178:	4b91      	ldr	r3, [pc, #580]	; (3000b3c0 <rtl_crypto_hmac_sha2_init+0x25c>)
3000b17a:	b084      	sub	sp, #16
3000b17c:	bf18      	it	ne
3000b17e:	4613      	movne	r3, r2
3000b180:	6b5b      	ldr	r3, [r3, #52]	; 0x34
3000b182:	2b00      	cmp	r3, #0
3000b184:	db05      	blt.n	3000b192 <rtl_crypto_hmac_sha2_init+0x2e>
3000b186:	2d00      	cmp	r5, #0
3000b188:	f000 8109 	beq.w	3000b39e <rtl_crypto_hmac_sha2_init+0x23a>
3000b18c:	07ae      	lsls	r6, r5, #30
3000b18e:	f040 8103 	bne.w	3000b398 <rtl_crypto_hmac_sha2_init+0x234>
3000b192:	2820      	cmp	r0, #32
3000b194:	bf18      	it	ne
3000b196:	281c      	cmpne	r0, #28
3000b198:	bf0c      	ite	eq
3000b19a:	2301      	moveq	r3, #1
3000b19c:	2300      	movne	r3, #0
3000b19e:	d02e      	beq.n	3000b1fe <rtl_crypto_hmac_sha2_init+0x9a>
3000b1a0:	2840      	cmp	r0, #64	; 0x40
3000b1a2:	bf18      	it	ne
3000b1a4:	2830      	cmpne	r0, #48	; 0x30
3000b1a6:	d102      	bne.n	3000b1ae <rtl_crypto_hmac_sha2_init+0x4a>
3000b1a8:	2980      	cmp	r1, #128	; 0x80
3000b1aa:	f200 8100 	bhi.w	3000b3ae <rtl_crypto_hmac_sha2_init+0x24a>
3000b1ae:	4e85      	ldr	r6, [pc, #532]	; (3000b3c4 <rtl_crypto_hmac_sha2_init+0x260>)
3000b1b0:	7832      	ldrb	r2, [r6, #0]
3000b1b2:	2a01      	cmp	r2, #1
3000b1b4:	f040 80f6 	bne.w	3000b3a4 <rtl_crypto_hmac_sha2_init+0x240>
3000b1b8:	2830      	cmp	r0, #48	; 0x30
3000b1ba:	f000 80b4 	beq.w	3000b326 <rtl_crypto_hmac_sha2_init+0x1c2>
3000b1be:	d825      	bhi.n	3000b20c <rtl_crypto_hmac_sha2_init+0xa8>
3000b1c0:	281c      	cmp	r0, #28
3000b1c2:	f000 8091 	beq.w	3000b2e8 <rtl_crypto_hmac_sha2_init+0x184>
3000b1c6:	2b00      	cmp	r3, #0
3000b1c8:	d075      	beq.n	3000b2b6 <rtl_crypto_hmac_sha2_init+0x152>
3000b1ca:	2c00      	cmp	r4, #0
3000b1cc:	d078      	beq.n	3000b2c0 <rtl_crypto_hmac_sha2_init+0x15c>
3000b1ce:	4a7e      	ldr	r2, [pc, #504]	; (3000b3c8 <rtl_crypto_hmac_sha2_init+0x264>)
3000b1d0:	4b7e      	ldr	r3, [pc, #504]	; (3000b3cc <rtl_crypto_hmac_sha2_init+0x268>)
3000b1d2:	487f      	ldr	r0, [pc, #508]	; (3000b3d0 <rtl_crypto_hmac_sha2_init+0x26c>)
3000b1d4:	f8df c218 	ldr.w	ip, [pc, #536]	; 3000b3f0 <rtl_crypto_hmac_sha2_init+0x28c>
3000b1d8:	e9c4 2302 	strd	r2, r3, [r4, #8]
3000b1dc:	4b7d      	ldr	r3, [pc, #500]	; (3000b3d4 <rtl_crypto_hmac_sha2_init+0x270>)
3000b1de:	2225      	movs	r2, #37	; 0x25
3000b1e0:	e9c4 0304 	strd	r0, r3, [r4, #16]
3000b1e4:	4b7c      	ldr	r3, [pc, #496]	; (3000b3d8 <rtl_crypto_hmac_sha2_init+0x274>)
3000b1e6:	e9c4 c306 	strd	ip, r3, [r4, #24]
3000b1ea:	4b7c      	ldr	r3, [pc, #496]	; (3000b3dc <rtl_crypto_hmac_sha2_init+0x278>)
3000b1ec:	6223      	str	r3, [r4, #32]
3000b1ee:	f103 5374 	add.w	r3, r3, #1023410176	; 0x3d000000
3000b1f2:	f5a3 0323 	sub.w	r3, r3, #10682368	; 0xa30000
3000b1f6:	f6a3 4392 	subw	r3, r3, #3218	; 0xc92
3000b1fa:	6263      	str	r3, [r4, #36]	; 0x24
3000b1fc:	e044      	b.n	3000b288 <rtl_crypto_hmac_sha2_init+0x124>
3000b1fe:	2940      	cmp	r1, #64	; 0x40
3000b200:	d9d5      	bls.n	3000b1ae <rtl_crypto_hmac_sha2_init+0x4a>
3000b202:	f240 1163 	movw	r1, #355	; 0x163
3000b206:	4876      	ldr	r0, [pc, #472]	; (3000b3e0 <rtl_crypto_hmac_sha2_init+0x27c>)
3000b208:	f7ff fed2 	bl	3000afb0 <io_assert_failed>
3000b20c:	2840      	cmp	r0, #64	; 0x40
3000b20e:	d152      	bne.n	3000b2b6 <rtl_crypto_hmac_sha2_init+0x152>
3000b210:	2c00      	cmp	r4, #0
3000b212:	d067      	beq.n	3000b2e4 <rtl_crypto_hmac_sha2_init+0x180>
3000b214:	4b6c      	ldr	r3, [pc, #432]	; (3000b3c8 <rtl_crypto_hmac_sha2_init+0x264>)
3000b216:	4a73      	ldr	r2, [pc, #460]	; (3000b3e4 <rtl_crypto_hmac_sha2_init+0x280>)
3000b218:	4873      	ldr	r0, [pc, #460]	; (3000b3e8 <rtl_crypto_hmac_sha2_init+0x284>)
3000b21a:	f8df e21c 	ldr.w	lr, [pc, #540]	; 3000b438 <rtl_crypto_hmac_sha2_init+0x2d4>
3000b21e:	e9c4 3202 	strd	r3, r2, [r4, #8]
3000b222:	f103 53d6 	add.w	r3, r3, #448790528	; 0x1ac00000
3000b226:	4a71      	ldr	r2, [pc, #452]	; (3000b3ec <rtl_crypto_hmac_sha2_init+0x288>)
3000b228:	f503 4340 	add.w	r3, r3, #49152	; 0xc000
3000b22c:	33d4      	adds	r3, #212	; 0xd4
3000b22e:	6163      	str	r3, [r4, #20]
3000b230:	f103 535a 	add.w	r3, r3, #914358272	; 0x36800000
3000b234:	f503 13e8 	add.w	r3, r3, #1900544	; 0x1d0000
3000b238:	f203 734a 	addw	r3, r3, #1866	; 0x74a
3000b23c:	6123      	str	r3, [r4, #16]
3000b23e:	4b64      	ldr	r3, [pc, #400]	; (3000b3d0 <rtl_crypto_hmac_sha2_init+0x26c>)
3000b240:	e9c4 3006 	strd	r3, r0, [r4, #24]
3000b244:	f103 530a 	add.w	r3, r3, #578813952	; 0x22800000
3000b248:	f503 1339 	add.w	r3, r3, #3031040	; 0x2e4000
3000b24c:	f203 337f 	addw	r3, r3, #895	; 0x37f
3000b250:	6263      	str	r3, [r4, #36]	; 0x24
3000b252:	4b60      	ldr	r3, [pc, #384]	; (3000b3d4 <rtl_crypto_hmac_sha2_init+0x270>)
3000b254:	6223      	str	r3, [r4, #32]
3000b256:	f103 6309 	add.w	r3, r3, #143654912	; 0x8900000
3000b25a:	f503 23d1 	add.w	r3, r3, #428032	; 0x68800
3000b25e:	f203 5397 	addw	r3, r3, #1431	; 0x597
3000b262:	62e3      	str	r3, [r4, #44]	; 0x2c
3000b264:	4b62      	ldr	r3, [pc, #392]	; (3000b3f0 <rtl_crypto_hmac_sha2_init+0x28c>)
3000b266:	62a3      	str	r3, [r4, #40]	; 0x28
3000b268:	f103 435a 	add.w	r3, r3, #3657433088	; 0xda000000
3000b26c:	f503 1340 	add.w	r3, r3, #3145728	; 0x300000
3000b270:	f503 53cd 	add.w	r3, r3, #6560	; 0x19a0
3000b274:	6363      	str	r3, [r4, #52]	; 0x34
3000b276:	4b58      	ldr	r3, [pc, #352]	; (3000b3d8 <rtl_crypto_hmac_sha2_init+0x274>)
3000b278:	6323      	str	r3, [r4, #48]	; 0x30
3000b27a:	4b58      	ldr	r3, [pc, #352]	; (3000b3dc <rtl_crypto_hmac_sha2_init+0x278>)
3000b27c:	e9c4 3e0e 	strd	r3, lr, [r4, #56]	; 0x38
3000b280:	4b5c      	ldr	r3, [pc, #368]	; (3000b3f4 <rtl_crypto_hmac_sha2_init+0x290>)
3000b282:	e9c4 3210 	strd	r3, r2, [r4, #64]	; 0x40
3000b286:	2285      	movs	r2, #133	; 0x85
3000b288:	2300      	movs	r3, #0
3000b28a:	9102      	str	r1, [sp, #8]
3000b28c:	9501      	str	r5, [sp, #4]
3000b28e:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
3000b292:	9300      	str	r3, [sp, #0]
3000b294:	4d58      	ldr	r5, [pc, #352]	; (3000b3f8 <rtl_crypto_hmac_sha2_init+0x294>)
3000b296:	484b      	ldr	r0, [pc, #300]	; (3000b3c4 <rtl_crypto_hmac_sha2_init+0x260>)
3000b298:	f886 3034 	strb.w	r3, [r6, #52]	; 0x34
3000b29c:	f886 3040 	strb.w	r3, [r6, #64]	; 0x40
3000b2a0:	47a8      	blx	r5
3000b2a2:	4605      	mov	r5, r0
3000b2a4:	4b55      	ldr	r3, [pc, #340]	; (3000b3fc <rtl_crypto_hmac_sha2_init+0x298>)
3000b2a6:	4620      	mov	r0, r4
3000b2a8:	4798      	blx	r3
3000b2aa:	2301      	movs	r3, #1
3000b2ac:	4628      	mov	r0, r5
3000b2ae:	f884 304b 	strb.w	r3, [r4, #75]	; 0x4b
3000b2b2:	b004      	add	sp, #16
3000b2b4:	bd70      	pop	{r4, r5, r6, pc}
3000b2b6:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
3000b2ba:	4628      	mov	r0, r5
3000b2bc:	b004      	add	sp, #16
3000b2be:	bd70      	pop	{r4, r5, r6, pc}
3000b2c0:	2225      	movs	r2, #37	; 0x25
3000b2c2:	2300      	movs	r3, #0
3000b2c4:	9102      	str	r1, [sp, #8]
3000b2c6:	4c4c      	ldr	r4, [pc, #304]	; (3000b3f8 <rtl_crypto_hmac_sha2_init+0x294>)
3000b2c8:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
3000b2cc:	483d      	ldr	r0, [pc, #244]	; (3000b3c4 <rtl_crypto_hmac_sha2_init+0x260>)
3000b2ce:	f886 3034 	strb.w	r3, [r6, #52]	; 0x34
3000b2d2:	f886 3040 	strb.w	r3, [r6, #64]	; 0x40
3000b2d6:	e9cd 3500 	strd	r3, r5, [sp]
3000b2da:	47a0      	blx	r4
3000b2dc:	4605      	mov	r5, r0
3000b2de:	4628      	mov	r0, r5
3000b2e0:	b004      	add	sp, #16
3000b2e2:	bd70      	pop	{r4, r5, r6, pc}
3000b2e4:	2285      	movs	r2, #133	; 0x85
3000b2e6:	e7ec      	b.n	3000b2c2 <rtl_crypto_hmac_sha2_init+0x15e>
3000b2e8:	2c00      	cmp	r4, #0
3000b2ea:	d051      	beq.n	3000b390 <rtl_crypto_hmac_sha2_init+0x22c>
3000b2ec:	4b44      	ldr	r3, [pc, #272]	; (3000b400 <rtl_crypto_hmac_sha2_init+0x29c>)
3000b2ee:	f8df e128 	ldr.w	lr, [pc, #296]	; 3000b418 <rtl_crypto_hmac_sha2_init+0x2b4>
3000b2f2:	4a44      	ldr	r2, [pc, #272]	; (3000b404 <rtl_crypto_hmac_sha2_init+0x2a0>)
3000b2f4:	4844      	ldr	r0, [pc, #272]	; (3000b408 <rtl_crypto_hmac_sha2_init+0x2a4>)
3000b2f6:	e9c4 e302 	strd	lr, r3, [r4, #8]
3000b2fa:	f103 4379 	add.w	r3, r3, #4177526784	; 0xf9000000
3000b2fe:	f503 0374 	add.w	r3, r3, #15990784	; 0xf40000
3000b302:	f503 6301 	add.w	r3, r3, #2064	; 0x810
3000b306:	6123      	str	r3, [r4, #16]
3000b308:	4b40      	ldr	r3, [pc, #256]	; (3000b40c <rtl_crypto_hmac_sha2_init+0x2a8>)
3000b30a:	e9c4 2305 	strd	r2, r3, [r4, #20]
3000b30e:	f103 43d1 	add.w	r3, r3, #1753219072	; 0x68800000
3000b312:	2215      	movs	r2, #21
3000b314:	f503 13c0 	add.w	r3, r3, #1572864	; 0x180000
3000b318:	f503 631e 	add.w	r3, r3, #2528	; 0x9e0
3000b31c:	61e3      	str	r3, [r4, #28]
3000b31e:	4b3c      	ldr	r3, [pc, #240]	; (3000b410 <rtl_crypto_hmac_sha2_init+0x2ac>)
3000b320:	e9c4 0308 	strd	r0, r3, [r4, #32]
3000b324:	e7b0      	b.n	3000b288 <rtl_crypto_hmac_sha2_init+0x124>
3000b326:	2c00      	cmp	r4, #0
3000b328:	d034      	beq.n	3000b394 <rtl_crypto_hmac_sha2_init+0x230>
3000b32a:	4b3a      	ldr	r3, [pc, #232]	; (3000b414 <rtl_crypto_hmac_sha2_init+0x2b0>)
3000b32c:	483a      	ldr	r0, [pc, #232]	; (3000b418 <rtl_crypto_hmac_sha2_init+0x2b4>)
3000b32e:	f8df e0d4 	ldr.w	lr, [pc, #212]	; 3000b404 <rtl_crypto_hmac_sha2_init+0x2a0>
3000b332:	4a36      	ldr	r2, [pc, #216]	; (3000b40c <rtl_crypto_hmac_sha2_init+0x2a8>)
3000b334:	f8df c0d0 	ldr.w	ip, [pc, #208]	; 3000b408 <rtl_crypto_hmac_sha2_init+0x2a4>
3000b338:	e9c4 3002 	strd	r3, r0, [r4, #8]
3000b33c:	f103 43d6 	add.w	r3, r3, #1795162112	; 0x6b000000
3000b340:	f5a3 137b 	sub.w	r3, r3, #4112384	; 0x3ec000
3000b344:	f6a3 0356 	subw	r3, r3, #2134	; 0x856
3000b348:	6163      	str	r3, [r4, #20]
3000b34a:	4b34      	ldr	r3, [pc, #208]	; (3000b41c <rtl_crypto_hmac_sha2_init+0x2b8>)
3000b34c:	6123      	str	r3, [r4, #16]
3000b34e:	f103 434e 	add.w	r3, r3, #3456106496	; 0xce000000
3000b352:	f5a3 1325 	sub.w	r3, r3, #2703360	; 0x294000
3000b356:	f6a3 4313 	subw	r3, r3, #3091	; 0xc13
3000b35a:	61e3      	str	r3, [r4, #28]
3000b35c:	4b30      	ldr	r3, [pc, #192]	; (3000b420 <rtl_crypto_hmac_sha2_init+0x2bc>)
3000b35e:	61a3      	str	r3, [r4, #24]
3000b360:	4b30      	ldr	r3, [pc, #192]	; (3000b424 <rtl_crypto_hmac_sha2_init+0x2c0>)
3000b362:	e9c4 3e08 	strd	r3, lr, [r4, #32]
3000b366:	4b30      	ldr	r3, [pc, #192]	; (3000b428 <rtl_crypto_hmac_sha2_init+0x2c4>)
3000b368:	f8df e0a4 	ldr.w	lr, [pc, #164]	; 3000b410 <rtl_crypto_hmac_sha2_init+0x2ac>
3000b36c:	e9c4 320a 	strd	r3, r2, [r4, #40]	; 0x28
3000b370:	f103 7392 	add.w	r3, r3, #19136512	; 0x1240000
3000b374:	2245      	movs	r2, #69	; 0x45
3000b376:	f503 436e 	add.w	r3, r3, #60928	; 0xee00
3000b37a:	33aa      	adds	r3, #170	; 0xaa
3000b37c:	6363      	str	r3, [r4, #52]	; 0x34
3000b37e:	4b2b      	ldr	r3, [pc, #172]	; (3000b42c <rtl_crypto_hmac_sha2_init+0x2c8>)
3000b380:	6323      	str	r3, [r4, #48]	; 0x30
3000b382:	4b2b      	ldr	r3, [pc, #172]	; (3000b430 <rtl_crypto_hmac_sha2_init+0x2cc>)
3000b384:	e9c4 3c0e 	strd	r3, ip, [r4, #56]	; 0x38
3000b388:	4b2a      	ldr	r3, [pc, #168]	; (3000b434 <rtl_crypto_hmac_sha2_init+0x2d0>)
3000b38a:	e9c4 3e10 	strd	r3, lr, [r4, #64]	; 0x40
3000b38e:	e77b      	b.n	3000b288 <rtl_crypto_hmac_sha2_init+0x124>
3000b390:	2215      	movs	r2, #21
3000b392:	e796      	b.n	3000b2c2 <rtl_crypto_hmac_sha2_init+0x15e>
3000b394:	2245      	movs	r2, #69	; 0x45
3000b396:	e794      	b.n	3000b2c2 <rtl_crypto_hmac_sha2_init+0x15e>
3000b398:	f06f 0505 	mvn.w	r5, #5
3000b39c:	e78d      	b.n	3000b2ba <rtl_crypto_hmac_sha2_init+0x156>
3000b39e:	f06f 0503 	mvn.w	r5, #3
3000b3a2:	e78a      	b.n	3000b2ba <rtl_crypto_hmac_sha2_init+0x156>
3000b3a4:	f240 1169 	movw	r1, #361	; 0x169
3000b3a8:	480d      	ldr	r0, [pc, #52]	; (3000b3e0 <rtl_crypto_hmac_sha2_init+0x27c>)
3000b3aa:	f7ff fe01 	bl	3000afb0 <io_assert_failed>
3000b3ae:	f44f 71b3 	mov.w	r1, #358	; 0x166
3000b3b2:	480b      	ldr	r0, [pc, #44]	; (3000b3e0 <rtl_crypto_hmac_sha2_init+0x27c>)
3000b3b4:	f7ff fdfc 	bl	3000afb0 <io_assert_failed>
3000b3b8:	3000aba9 	.word	0x3000aba9
3000b3bc:	500c8000 	.word	0x500c8000
3000b3c0:	400c8000 	.word	0x400c8000
3000b3c4:	2001c460 	.word	0x2001c460
3000b3c8:	6a09e667 	.word	0x6a09e667
3000b3cc:	bb67ae85 	.word	0xbb67ae85
3000b3d0:	3c6ef372 	.word	0x3c6ef372
3000b3d4:	a54ff53a 	.word	0xa54ff53a
3000b3d8:	9b05688c 	.word	0x9b05688c
3000b3dc:	1f83d9ab 	.word	0x1f83d9ab
3000b3e0:	3000d8e8 	.word	0x3000d8e8
3000b3e4:	f3bcc908 	.word	0xf3bcc908
3000b3e8:	fe94f82b 	.word	0xfe94f82b
3000b3ec:	137e2179 	.word	0x137e2179
3000b3f0:	510e527f 	.word	0x510e527f
3000b3f4:	5be0cd19 	.word	0x5be0cd19
3000b3f8:	3000afd1 	.word	0x3000afd1
3000b3fc:	00004c99 	.word	0x00004c99
3000b400:	367cd507 	.word	0x367cd507
3000b404:	f70e5939 	.word	0xf70e5939
3000b408:	64f98fa7 	.word	0x64f98fa7
3000b40c:	ffc00b31 	.word	0xffc00b31
3000b410:	befa4fa4 	.word	0xbefa4fa4
3000b414:	cbbb9d5d 	.word	0xcbbb9d5d
3000b418:	c1059ed8 	.word	0xc1059ed8
3000b41c:	629a292a 	.word	0x629a292a
3000b420:	9159015a 	.word	0x9159015a
3000b424:	152fecd8 	.word	0x152fecd8
3000b428:	67332667 	.word	0x67332667
3000b42c:	8eb44a87 	.word	0x8eb44a87
3000b430:	db0c2e0d 	.word	0xdb0c2e0d
3000b434:	47b5481d 	.word	0x47b5481d
3000b438:	fb41bd6b 	.word	0xfb41bd6b

3000b43c <RSIP_OTF_Enable>:
3000b43c:	b1c3      	cbz	r3, 3000b470 <RSIP_OTF_Enable+0x34>
3000b43e:	b510      	push	{r4, lr}
3000b440:	9b02      	ldr	r3, [sp, #8]
3000b442:	2b07      	cmp	r3, #7
3000b444:	d81c      	bhi.n	3000b480 <RSIP_OTF_Enable+0x44>
3000b446:	9b03      	ldr	r3, [sp, #12]
3000b448:	3b01      	subs	r3, #1
3000b44a:	2b01      	cmp	r3, #1
3000b44c:	d81d      	bhi.n	3000b48a <RSIP_OTF_Enable+0x4e>
3000b44e:	4b11      	ldr	r3, [pc, #68]	; (3000b494 <RSIP_OTF_Enable+0x58>)
3000b450:	9c03      	ldr	r4, [sp, #12]
3000b452:	eb03 00c0 	add.w	r0, r3, r0, lsl #3
3000b456:	ea42 0244 	orr.w	r2, r2, r4, lsl #1
3000b45a:	9c02      	ldr	r4, [sp, #8]
3000b45c:	6c43      	ldr	r3, [r0, #68]	; 0x44
3000b45e:	4321      	orrs	r1, r4
3000b460:	f042 0201 	orr.w	r2, r2, #1
3000b464:	f023 0301 	bic.w	r3, r3, #1
3000b468:	6443      	str	r3, [r0, #68]	; 0x44
3000b46a:	6401      	str	r1, [r0, #64]	; 0x40
3000b46c:	6442      	str	r2, [r0, #68]	; 0x44
3000b46e:	bd10      	pop	{r4, pc}
3000b470:	4b08      	ldr	r3, [pc, #32]	; (3000b494 <RSIP_OTF_Enable+0x58>)
3000b472:	eb03 00c0 	add.w	r0, r3, r0, lsl #3
3000b476:	6c43      	ldr	r3, [r0, #68]	; 0x44
3000b478:	f023 0301 	bic.w	r3, r3, #1
3000b47c:	6443      	str	r3, [r0, #68]	; 0x44
3000b47e:	4770      	bx	lr
3000b480:	f240 3157 	movw	r1, #855	; 0x357
3000b484:	4804      	ldr	r0, [pc, #16]	; (3000b498 <RSIP_OTF_Enable+0x5c>)
3000b486:	f7ff fd93 	bl	3000afb0 <io_assert_failed>
3000b48a:	f44f 7156 	mov.w	r1, #856	; 0x358
3000b48e:	4802      	ldr	r0, [pc, #8]	; (3000b498 <RSIP_OTF_Enable+0x5c>)
3000b490:	f7ff fd8e 	bl	3000afb0 <io_assert_failed>
3000b494:	42008c00 	.word	0x42008c00
3000b498:	3000d8e8 	.word	0x3000d8e8

3000b49c <BOOT_VerCheck>:
3000b49c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
3000b4a0:	4b20      	ldr	r3, [pc, #128]	; (3000b524 <BOOT_VerCheck+0x88>)
3000b4a2:	4798      	blx	r3
3000b4a4:	b108      	cbz	r0, 3000b4aa <BOOT_VerCheck+0xe>
3000b4a6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
3000b4aa:	2503      	movs	r5, #3
3000b4ac:	4c1e      	ldr	r4, [pc, #120]	; (3000b528 <BOOT_VerCheck+0x8c>)
3000b4ae:	4b1f      	ldr	r3, [pc, #124]	; (3000b52c <BOOT_VerCheck+0x90>)
3000b4b0:	2257      	movs	r2, #87	; 0x57
3000b4b2:	4621      	mov	r1, r4
3000b4b4:	4628      	mov	r0, r5
3000b4b6:	4e1e      	ldr	r6, [pc, #120]	; (3000b530 <BOOT_VerCheck+0x94>)
3000b4b8:	f8df 808c 	ldr.w	r8, [pc, #140]	; 3000b548 <BOOT_VerCheck+0xac>
3000b4bc:	4f1d      	ldr	r7, [pc, #116]	; (3000b534 <BOOT_VerCheck+0x98>)
3000b4be:	f7fd ff45 	bl	3000934c <rtk_log_write>
3000b4c2:	2257      	movs	r2, #87	; 0x57
3000b4c4:	4621      	mov	r1, r4
3000b4c6:	2003      	movs	r0, #3
3000b4c8:	4633      	mov	r3, r6
3000b4ca:	f7fd ff3f 	bl	3000934c <rtk_log_write>
3000b4ce:	4643      	mov	r3, r8
3000b4d0:	2257      	movs	r2, #87	; 0x57
3000b4d2:	4621      	mov	r1, r4
3000b4d4:	2003      	movs	r0, #3
3000b4d6:	f7fd ff39 	bl	3000934c <rtk_log_write>
3000b4da:	463b      	mov	r3, r7
3000b4dc:	2257      	movs	r2, #87	; 0x57
3000b4de:	4621      	mov	r1, r4
3000b4e0:	2003      	movs	r0, #3
3000b4e2:	f7fd ff33 	bl	3000934c <rtk_log_write>
3000b4e6:	2257      	movs	r2, #87	; 0x57
3000b4e8:	4621      	mov	r1, r4
3000b4ea:	2003      	movs	r0, #3
3000b4ec:	4b12      	ldr	r3, [pc, #72]	; (3000b538 <BOOT_VerCheck+0x9c>)
3000b4ee:	f7fd ff2d 	bl	3000934c <rtk_log_write>
3000b4f2:	4633      	mov	r3, r6
3000b4f4:	2257      	movs	r2, #87	; 0x57
3000b4f6:	4621      	mov	r1, r4
3000b4f8:	2003      	movs	r0, #3
3000b4fa:	f7fd ff27 	bl	3000934c <rtk_log_write>
3000b4fe:	4b0f      	ldr	r3, [pc, #60]	; (3000b53c <BOOT_VerCheck+0xa0>)
3000b500:	2257      	movs	r2, #87	; 0x57
3000b502:	4621      	mov	r1, r4
3000b504:	2003      	movs	r0, #3
3000b506:	f7fd ff21 	bl	3000934c <rtk_log_write>
3000b50a:	3d01      	subs	r5, #1
3000b50c:	d1d9      	bne.n	3000b4c2 <BOOT_VerCheck+0x26>
3000b50e:	4906      	ldr	r1, [pc, #24]	; (3000b528 <BOOT_VerCheck+0x8c>)
3000b510:	2003      	movs	r0, #3
3000b512:	4b0b      	ldr	r3, [pc, #44]	; (3000b540 <BOOT_VerCheck+0xa4>)
3000b514:	2257      	movs	r2, #87	; 0x57
3000b516:	f7fd ff19 	bl	3000934c <rtk_log_write>
3000b51a:	2121      	movs	r1, #33	; 0x21
3000b51c:	4809      	ldr	r0, [pc, #36]	; (3000b544 <BOOT_VerCheck+0xa8>)
3000b51e:	f7ff fd47 	bl	3000afb0 <io_assert_failed>
3000b522:	bf00      	nop
3000b524:	3000a605 	.word	0x3000a605
3000b528:	3000b894 	.word	0x3000b894
3000b52c:	3000d99c 	.word	0x3000d99c
3000b530:	3000d9d8 	.word	0x3000d9d8
3000b534:	3000da50 	.word	0x3000da50
3000b538:	3000da8c 	.word	0x3000da8c
3000b53c:	3000dac8 	.word	0x3000dac8
3000b540:	3000b890 	.word	0x3000b890
3000b544:	3000db04 	.word	0x3000db04
3000b548:	3000da14 	.word	0x3000da14

3000b54c <__aeabi_uldivmod>:
3000b54c:	b953      	cbnz	r3, 3000b564 <__aeabi_uldivmod+0x18>
3000b54e:	b94a      	cbnz	r2, 3000b564 <__aeabi_uldivmod+0x18>
3000b550:	2900      	cmp	r1, #0
3000b552:	bf08      	it	eq
3000b554:	2800      	cmpeq	r0, #0
3000b556:	bf1c      	itt	ne
3000b558:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
3000b55c:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
3000b560:	f000 b974 	b.w	3000b84c <__aeabi_idiv0>
3000b564:	f1ad 0c08 	sub.w	ip, sp, #8
3000b568:	e96d ce04 	strd	ip, lr, [sp, #-16]!
3000b56c:	f000 f819 	bl	3000b5a2 <__udivmoddi4>
3000b570:	f8dd e004 	ldr.w	lr, [sp, #4]
3000b574:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
3000b578:	b004      	add	sp, #16
3000b57a:	4770      	bx	lr

3000b57c <__popcountsi2>:
3000b57c:	0843      	lsrs	r3, r0, #1
3000b57e:	f003 3355 	and.w	r3, r3, #1431655765	; 0x55555555
3000b582:	1ac0      	subs	r0, r0, r3
3000b584:	f000 3333 	and.w	r3, r0, #858993459	; 0x33333333
3000b588:	0880      	lsrs	r0, r0, #2
3000b58a:	f000 3033 	and.w	r0, r0, #858993459	; 0x33333333
3000b58e:	4418      	add	r0, r3
3000b590:	f04f 3301 	mov.w	r3, #16843009	; 0x1010101
3000b594:	eb00 1010 	add.w	r0, r0, r0, lsr #4
3000b598:	f000 300f 	and.w	r0, r0, #252645135	; 0xf0f0f0f
3000b59c:	4358      	muls	r0, r3
3000b59e:	0e00      	lsrs	r0, r0, #24
3000b5a0:	4770      	bx	lr

3000b5a2 <__udivmoddi4>:
3000b5a2:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
3000b5a6:	9e09      	ldr	r6, [sp, #36]	; 0x24
3000b5a8:	4688      	mov	r8, r1
3000b5aa:	468e      	mov	lr, r1
3000b5ac:	4615      	mov	r5, r2
3000b5ae:	4604      	mov	r4, r0
3000b5b0:	4619      	mov	r1, r3
3000b5b2:	2b00      	cmp	r3, #0
3000b5b4:	f040 80c6 	bne.w	3000b744 <__udivmoddi4+0x1a2>
3000b5b8:	4542      	cmp	r2, r8
3000b5ba:	fab2 f782 	clz	r7, r2
3000b5be:	d946      	bls.n	3000b64e <__udivmoddi4+0xac>
3000b5c0:	b14f      	cbz	r7, 3000b5d6 <__udivmoddi4+0x34>
3000b5c2:	f1c7 0c20 	rsb	ip, r7, #32
3000b5c6:	fa08 f307 	lsl.w	r3, r8, r7
3000b5ca:	40bd      	lsls	r5, r7
3000b5cc:	40bc      	lsls	r4, r7
3000b5ce:	fa20 fc0c 	lsr.w	ip, r0, ip
3000b5d2:	ea4c 0e03 	orr.w	lr, ip, r3
3000b5d6:	ea4f 4815 	mov.w	r8, r5, lsr #16
3000b5da:	fa1f fc85 	uxth.w	ip, r5
3000b5de:	0c22      	lsrs	r2, r4, #16
3000b5e0:	fbbe f9f8 	udiv	r9, lr, r8
3000b5e4:	fb08 e319 	mls	r3, r8, r9, lr
3000b5e8:	fb09 fa0c 	mul.w	sl, r9, ip
3000b5ec:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
3000b5f0:	459a      	cmp	sl, r3
3000b5f2:	d928      	bls.n	3000b646 <__udivmoddi4+0xa4>
3000b5f4:	18eb      	adds	r3, r5, r3
3000b5f6:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
3000b5fa:	d204      	bcs.n	3000b606 <__udivmoddi4+0x64>
3000b5fc:	459a      	cmp	sl, r3
3000b5fe:	d902      	bls.n	3000b606 <__udivmoddi4+0x64>
3000b600:	f1a9 0002 	sub.w	r0, r9, #2
3000b604:	442b      	add	r3, r5
3000b606:	eba3 030a 	sub.w	r3, r3, sl
3000b60a:	b2a4      	uxth	r4, r4
3000b60c:	fbb3 f2f8 	udiv	r2, r3, r8
3000b610:	fb08 3312 	mls	r3, r8, r2, r3
3000b614:	fb02 fc0c 	mul.w	ip, r2, ip
3000b618:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
3000b61c:	45a4      	cmp	ip, r4
3000b61e:	d914      	bls.n	3000b64a <__udivmoddi4+0xa8>
3000b620:	192c      	adds	r4, r5, r4
3000b622:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
3000b626:	d203      	bcs.n	3000b630 <__udivmoddi4+0x8e>
3000b628:	45a4      	cmp	ip, r4
3000b62a:	d901      	bls.n	3000b630 <__udivmoddi4+0x8e>
3000b62c:	1e93      	subs	r3, r2, #2
3000b62e:	442c      	add	r4, r5
3000b630:	eba4 040c 	sub.w	r4, r4, ip
3000b634:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
3000b638:	b11e      	cbz	r6, 3000b642 <__udivmoddi4+0xa0>
3000b63a:	40fc      	lsrs	r4, r7
3000b63c:	2300      	movs	r3, #0
3000b63e:	6034      	str	r4, [r6, #0]
3000b640:	6073      	str	r3, [r6, #4]
3000b642:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
3000b646:	4648      	mov	r0, r9
3000b648:	e7dd      	b.n	3000b606 <__udivmoddi4+0x64>
3000b64a:	4613      	mov	r3, r2
3000b64c:	e7f0      	b.n	3000b630 <__udivmoddi4+0x8e>
3000b64e:	b902      	cbnz	r2, 3000b652 <__udivmoddi4+0xb0>
3000b650:	deff      	udf	#255	; 0xff
3000b652:	bb8f      	cbnz	r7, 3000b6b8 <__udivmoddi4+0x116>
3000b654:	eba8 0302 	sub.w	r3, r8, r2
3000b658:	2101      	movs	r1, #1
3000b65a:	ea4f 4e15 	mov.w	lr, r5, lsr #16
3000b65e:	b2aa      	uxth	r2, r5
3000b660:	0c20      	lsrs	r0, r4, #16
3000b662:	fbb3 fcfe 	udiv	ip, r3, lr
3000b666:	fb0e 331c 	mls	r3, lr, ip, r3
3000b66a:	fb0c f802 	mul.w	r8, ip, r2
3000b66e:	ea40 4303 	orr.w	r3, r0, r3, lsl #16
3000b672:	4598      	cmp	r8, r3
3000b674:	d962      	bls.n	3000b73c <__udivmoddi4+0x19a>
3000b676:	18eb      	adds	r3, r5, r3
3000b678:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
3000b67c:	d204      	bcs.n	3000b688 <__udivmoddi4+0xe6>
3000b67e:	4598      	cmp	r8, r3
3000b680:	d902      	bls.n	3000b688 <__udivmoddi4+0xe6>
3000b682:	f1ac 0002 	sub.w	r0, ip, #2
3000b686:	442b      	add	r3, r5
3000b688:	eba3 0308 	sub.w	r3, r3, r8
3000b68c:	b2a4      	uxth	r4, r4
3000b68e:	fbb3 fcfe 	udiv	ip, r3, lr
3000b692:	fb0e 331c 	mls	r3, lr, ip, r3
3000b696:	fb0c f202 	mul.w	r2, ip, r2
3000b69a:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
3000b69e:	42a2      	cmp	r2, r4
3000b6a0:	d94e      	bls.n	3000b740 <__udivmoddi4+0x19e>
3000b6a2:	192c      	adds	r4, r5, r4
3000b6a4:	f10c 33ff 	add.w	r3, ip, #4294967295	; 0xffffffff
3000b6a8:	d204      	bcs.n	3000b6b4 <__udivmoddi4+0x112>
3000b6aa:	42a2      	cmp	r2, r4
3000b6ac:	d902      	bls.n	3000b6b4 <__udivmoddi4+0x112>
3000b6ae:	f1ac 0302 	sub.w	r3, ip, #2
3000b6b2:	442c      	add	r4, r5
3000b6b4:	1aa4      	subs	r4, r4, r2
3000b6b6:	e7bd      	b.n	3000b634 <__udivmoddi4+0x92>
3000b6b8:	f1c7 0c20 	rsb	ip, r7, #32
3000b6bc:	40bd      	lsls	r5, r7
3000b6be:	fa08 f307 	lsl.w	r3, r8, r7
3000b6c2:	40bc      	lsls	r4, r7
3000b6c4:	fa28 f90c 	lsr.w	r9, r8, ip
3000b6c8:	ea4f 4e15 	mov.w	lr, r5, lsr #16
3000b6cc:	fa20 fc0c 	lsr.w	ip, r0, ip
3000b6d0:	ea4c 0203 	orr.w	r2, ip, r3
3000b6d4:	b2ab      	uxth	r3, r5
3000b6d6:	fbb9 fcfe 	udiv	ip, r9, lr
3000b6da:	0c11      	lsrs	r1, r2, #16
3000b6dc:	fb0e 901c 	mls	r0, lr, ip, r9
3000b6e0:	fb0c f803 	mul.w	r8, ip, r3
3000b6e4:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
3000b6e8:	4580      	cmp	r8, r0
3000b6ea:	d923      	bls.n	3000b734 <__udivmoddi4+0x192>
3000b6ec:	1828      	adds	r0, r5, r0
3000b6ee:	f10c 31ff 	add.w	r1, ip, #4294967295	; 0xffffffff
3000b6f2:	d204      	bcs.n	3000b6fe <__udivmoddi4+0x15c>
3000b6f4:	4580      	cmp	r8, r0
3000b6f6:	d902      	bls.n	3000b6fe <__udivmoddi4+0x15c>
3000b6f8:	f1ac 0102 	sub.w	r1, ip, #2
3000b6fc:	4428      	add	r0, r5
3000b6fe:	eba0 0008 	sub.w	r0, r0, r8
3000b702:	b292      	uxth	r2, r2
3000b704:	fbb0 fcfe 	udiv	ip, r0, lr
3000b708:	fb0e 001c 	mls	r0, lr, ip, r0
3000b70c:	fb0c f803 	mul.w	r8, ip, r3
3000b710:	ea42 4300 	orr.w	r3, r2, r0, lsl #16
3000b714:	4598      	cmp	r8, r3
3000b716:	d90f      	bls.n	3000b738 <__udivmoddi4+0x196>
3000b718:	18eb      	adds	r3, r5, r3
3000b71a:	f10c 32ff 	add.w	r2, ip, #4294967295	; 0xffffffff
3000b71e:	d204      	bcs.n	3000b72a <__udivmoddi4+0x188>
3000b720:	4598      	cmp	r8, r3
3000b722:	d902      	bls.n	3000b72a <__udivmoddi4+0x188>
3000b724:	f1ac 0202 	sub.w	r2, ip, #2
3000b728:	442b      	add	r3, r5
3000b72a:	eba3 0308 	sub.w	r3, r3, r8
3000b72e:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
3000b732:	e792      	b.n	3000b65a <__udivmoddi4+0xb8>
3000b734:	4661      	mov	r1, ip
3000b736:	e7e2      	b.n	3000b6fe <__udivmoddi4+0x15c>
3000b738:	4662      	mov	r2, ip
3000b73a:	e7f6      	b.n	3000b72a <__udivmoddi4+0x188>
3000b73c:	4660      	mov	r0, ip
3000b73e:	e7a3      	b.n	3000b688 <__udivmoddi4+0xe6>
3000b740:	4663      	mov	r3, ip
3000b742:	e7b7      	b.n	3000b6b4 <__udivmoddi4+0x112>
3000b744:	4543      	cmp	r3, r8
3000b746:	d905      	bls.n	3000b754 <__udivmoddi4+0x1b2>
3000b748:	b10e      	cbz	r6, 3000b74e <__udivmoddi4+0x1ac>
3000b74a:	e9c6 0800 	strd	r0, r8, [r6]
3000b74e:	2100      	movs	r1, #0
3000b750:	4608      	mov	r0, r1
3000b752:	e776      	b.n	3000b642 <__udivmoddi4+0xa0>
3000b754:	fab3 fc83 	clz	ip, r3
3000b758:	f1bc 0f00 	cmp.w	ip, #0
3000b75c:	d110      	bne.n	3000b780 <__udivmoddi4+0x1de>
3000b75e:	4543      	cmp	r3, r8
3000b760:	d301      	bcc.n	3000b766 <__udivmoddi4+0x1c4>
3000b762:	4282      	cmp	r2, r0
3000b764:	d80a      	bhi.n	3000b77c <__udivmoddi4+0x1da>
3000b766:	1a84      	subs	r4, r0, r2
3000b768:	eb68 0303 	sbc.w	r3, r8, r3
3000b76c:	2001      	movs	r0, #1
3000b76e:	469e      	mov	lr, r3
3000b770:	2e00      	cmp	r6, #0
3000b772:	d068      	beq.n	3000b846 <__udivmoddi4+0x2a4>
3000b774:	e9c6 4e00 	strd	r4, lr, [r6]
3000b778:	2100      	movs	r1, #0
3000b77a:	e762      	b.n	3000b642 <__udivmoddi4+0xa0>
3000b77c:	4660      	mov	r0, ip
3000b77e:	e7f7      	b.n	3000b770 <__udivmoddi4+0x1ce>
3000b780:	f1cc 0e20 	rsb	lr, ip, #32
3000b784:	fa03 f30c 	lsl.w	r3, r3, ip
3000b788:	fa02 f50c 	lsl.w	r5, r2, ip
3000b78c:	fa00 f70c 	lsl.w	r7, r0, ip
3000b790:	fa22 f40e 	lsr.w	r4, r2, lr
3000b794:	fa28 fb0e 	lsr.w	fp, r8, lr
3000b798:	fa20 f10e 	lsr.w	r1, r0, lr
3000b79c:	431c      	orrs	r4, r3
3000b79e:	fa08 f30c 	lsl.w	r3, r8, ip
3000b7a2:	ea4f 4914 	mov.w	r9, r4, lsr #16
3000b7a6:	4319      	orrs	r1, r3
3000b7a8:	b2a3      	uxth	r3, r4
3000b7aa:	0c0a      	lsrs	r2, r1, #16
3000b7ac:	fbbb f8f9 	udiv	r8, fp, r9
3000b7b0:	fb09 bb18 	mls	fp, r9, r8, fp
3000b7b4:	fb08 fa03 	mul.w	sl, r8, r3
3000b7b8:	ea42 420b 	orr.w	r2, r2, fp, lsl #16
3000b7bc:	4592      	cmp	sl, r2
3000b7be:	d93e      	bls.n	3000b83e <__udivmoddi4+0x29c>
3000b7c0:	18a2      	adds	r2, r4, r2
3000b7c2:	f108 30ff 	add.w	r0, r8, #4294967295	; 0xffffffff
3000b7c6:	d204      	bcs.n	3000b7d2 <__udivmoddi4+0x230>
3000b7c8:	4592      	cmp	sl, r2
3000b7ca:	d902      	bls.n	3000b7d2 <__udivmoddi4+0x230>
3000b7cc:	f1a8 0002 	sub.w	r0, r8, #2
3000b7d0:	4422      	add	r2, r4
3000b7d2:	eba2 020a 	sub.w	r2, r2, sl
3000b7d6:	b289      	uxth	r1, r1
3000b7d8:	fbb2 f8f9 	udiv	r8, r2, r9
3000b7dc:	fb09 2218 	mls	r2, r9, r8, r2
3000b7e0:	fb08 f303 	mul.w	r3, r8, r3
3000b7e4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
3000b7e8:	4293      	cmp	r3, r2
3000b7ea:	d92a      	bls.n	3000b842 <__udivmoddi4+0x2a0>
3000b7ec:	18a2      	adds	r2, r4, r2
3000b7ee:	f108 31ff 	add.w	r1, r8, #4294967295	; 0xffffffff
3000b7f2:	d204      	bcs.n	3000b7fe <__udivmoddi4+0x25c>
3000b7f4:	4293      	cmp	r3, r2
3000b7f6:	d902      	bls.n	3000b7fe <__udivmoddi4+0x25c>
3000b7f8:	f1a8 0102 	sub.w	r1, r8, #2
3000b7fc:	4422      	add	r2, r4
3000b7fe:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
3000b802:	1ad2      	subs	r2, r2, r3
3000b804:	fba0 9805 	umull	r9, r8, r0, r5
3000b808:	4542      	cmp	r2, r8
3000b80a:	464b      	mov	r3, r9
3000b80c:	4641      	mov	r1, r8
3000b80e:	d302      	bcc.n	3000b816 <__udivmoddi4+0x274>
3000b810:	d106      	bne.n	3000b820 <__udivmoddi4+0x27e>
3000b812:	454f      	cmp	r7, r9
3000b814:	d204      	bcs.n	3000b820 <__udivmoddi4+0x27e>
3000b816:	3801      	subs	r0, #1
3000b818:	ebb9 0305 	subs.w	r3, r9, r5
3000b81c:	eb68 0104 	sbc.w	r1, r8, r4
3000b820:	b18e      	cbz	r6, 3000b846 <__udivmoddi4+0x2a4>
3000b822:	1afc      	subs	r4, r7, r3
3000b824:	eb62 0701 	sbc.w	r7, r2, r1
3000b828:	fa07 fe0e 	lsl.w	lr, r7, lr
3000b82c:	fa24 f30c 	lsr.w	r3, r4, ip
3000b830:	fa27 f70c 	lsr.w	r7, r7, ip
3000b834:	ea4e 0303 	orr.w	r3, lr, r3
3000b838:	e9c6 3700 	strd	r3, r7, [r6]
3000b83c:	e79c      	b.n	3000b778 <__udivmoddi4+0x1d6>
3000b83e:	4640      	mov	r0, r8
3000b840:	e7c7      	b.n	3000b7d2 <__udivmoddi4+0x230>
3000b842:	4641      	mov	r1, r8
3000b844:	e7db      	b.n	3000b7fe <__udivmoddi4+0x25c>
3000b846:	4631      	mov	r1, r6
3000b848:	e6fb      	b.n	3000b642 <__udivmoddi4+0xa0>
	...

3000b84c <__aeabi_idiv0>:
3000b84c:	4770      	bx	lr
3000b84e:	bf00      	nop

3000b850 <____wrap_memset_veneer>:
3000b850:	f85f f000 	ldr.w	pc, [pc]	; 3000b854 <____wrap_memset_veneer+0x4>
3000b854:	00012efd 	.word	0x00012efd

3000b858 <__SBOOT_Validate_Signature_veneer>:
3000b858:	f85f f000 	ldr.w	pc, [pc]	; 3000b85c <__SBOOT_Validate_Signature_veneer+0x4>
3000b85c:	00003431 	.word	0x00003431

3000b860 <__SBOOT_Validate_PubKey_veneer>:
3000b860:	f85f f000 	ldr.w	pc, [pc]	; 3000b864 <__SBOOT_Validate_PubKey_veneer+0x4>
3000b864:	00003495 	.word	0x00003495

3000b868 <__SBOOT_Validate_Algorithm_veneer>:
3000b868:	f85f f000 	ldr.w	pc, [pc]	; 3000b86c <__SBOOT_Validate_Algorithm_veneer+0x4>
3000b86c:	000033ed 	.word	0x000033ed

3000b870 <__SBOOT_GetMdType_veneer>:
3000b870:	f85f f000 	ldr.w	pc, [pc]	; 3000b874 <__SBOOT_GetMdType_veneer+0x4>
3000b874:	0000319d 	.word	0x0000319d

3000b878 <__SBOOT_Validate_ImgHash_veneer>:
3000b878:	f85f f000 	ldr.w	pc, [pc]	; 3000b87c <__SBOOT_Validate_ImgHash_veneer+0x4>
3000b87c:	00003541 	.word	0x00003541

3000b880 <__INT_HardFault_C_veneer>:
3000b880:	f85f f000 	ldr.w	pc, [pc]	; 3000b884 <__INT_HardFault_C_veneer+0x4>
3000b884:	0000d8ed 	.word	0x0000d8ed
3000b888:	74696e49 	.word	0x74696e49
3000b88c:	0d425720 	.word	0x0d425720
3000b890:	0000000a 	.word	0x0000000a
3000b894:	544f4f42 	.word	0x544f4f42
3000b898:	00000000 	.word	0x00000000
3000b89c:	6e496552 	.word	0x6e496552
3000b8a0:	44207469 	.word	0x44207469
3000b8a4:	0a0d5244 	.word	0x0a0d5244
3000b8a8:	00000000 	.word	0x00000000
3000b8ac:	32474d49 	.word	0x32474d49
3000b8b0:	4f4f4220 	.word	0x4f4f4220
3000b8b4:	72662054 	.word	0x72662054
3000b8b8:	4f206d6f 	.word	0x4f206d6f
3000b8bc:	25204154 	.word	0x25204154
3000b8c0:	00000a64 	.word	0x00000a64
3000b8c4:	20344d4b 	.word	0x20344d4b
3000b8c8:	544f4f42 	.word	0x544f4f42
3000b8cc:	41455220 	.word	0x41455220
3000b8d0:	204e4f53 	.word	0x204e4f53
3000b8d4:	203a7825 	.word	0x203a7825
3000b8d8:	00000000 	.word	0x00000000
3000b8dc:	00207325 	.word	0x00207325
3000b8e0:	00000023 	.word	0x00000023
3000b8e4:	54454447 	.word	0x54454447
3000b8e8:	44565f31 	.word	0x44565f31
3000b8ec:	505f3831 	.word	0x505f3831
3000b8f0:	0000534f 	.word	0x0000534f
3000b8f4:	54454447 	.word	0x54454447
3000b8f8:	44565f31 	.word	0x44565f31
3000b8fc:	4e5f3831 	.word	0x4e5f3831
3000b900:	00004745 	.word	0x00004745
3000b904:	54454447 	.word	0x54454447
3000b908:	3044565f 	.word	0x3044565f
3000b90c:	4f505f39 	.word	0x4f505f39
3000b910:	00000053 	.word	0x00000053
3000b914:	54454447 	.word	0x54454447
3000b918:	3044565f 	.word	0x3044565f
3000b91c:	454e5f39 	.word	0x454e5f39
3000b920:	00000047 	.word	0x00000047
3000b924:	575f5041 	.word	0x575f5041
3000b928:	324d5241 	.word	0x324d5241
3000b92c:	49524550 	.word	0x49524550
3000b930:	00000000 	.word	0x00000000
3000b934:	5f344d4b 	.word	0x5f344d4b
3000b938:	4d524157 	.word	0x4d524157
3000b93c:	52455032 	.word	0x52455032
3000b940:	00000049 	.word	0x00000049
3000b944:	5f304d4b 	.word	0x5f304d4b
3000b948:	4d524157 	.word	0x4d524157
3000b94c:	52455032 	.word	0x52455032
3000b950:	00000049 	.word	0x00000049
3000b954:	34474457 	.word	0x34474457
3000b958:	00000000 	.word	0x00000000
3000b95c:	33474457 	.word	0x33474457
3000b960:	00000000 	.word	0x00000000
3000b964:	32474457 	.word	0x32474457
3000b968:	00000000 	.word	0x00000000
3000b96c:	31474457 	.word	0x31474457
3000b970:	00000000 	.word	0x00000000
3000b974:	47445749 	.word	0x47445749
3000b978:	00000000 	.word	0x00000000
3000b97c:	59535041 	.word	0x59535041
3000b980:	00000053 	.word	0x00000053
3000b984:	5953504e 	.word	0x5953504e
3000b988:	00000053 	.word	0x00000053
3000b98c:	5953504c 	.word	0x5953504c
3000b990:	00000053 	.word	0x00000053
3000b994:	504c5344 	.word	0x504c5344
3000b998:	00000000 	.word	0x00000000
3000b99c:	5f524f42 	.word	0x5f524f42
3000b9a0:	00434341 	.word	0x00434341
3000b9a4:	00524f42 	.word	0x00524f42
3000b9a8:	004d4854 	.word	0x004d4854
3000b9ac:	74696e49 	.word	0x74696e49
3000b9b0:	206c6169 	.word	0x206c6169
3000b9b4:	65776f50 	.word	0x65776f50
3000b9b8:	6e6f2072 	.word	0x6e6f2072
3000b9bc:	0000000a 	.word	0x0000000a
3000b9c0:	61736944 	.word	0x61736944
3000b9c4:	20656c62 	.word	0x20656c62
3000b9c8:	20304d4b 	.word	0x20304d4b
3000b9cc:	746f6f42 	.word	0x746f6f42
3000b9d0:	6e692020 	.word	0x6e692020
3000b9d4:	73655420 	.word	0x73655420
3000b9d8:	6f6d2074 	.word	0x6f6d2074
3000b9dc:	0a0d6564 	.word	0x0a0d6564
3000b9e0:	00000000 	.word	0x00000000
3000b9e4:	61707942 	.word	0x61707942
3000b9e8:	4f207373 	.word	0x4f207373
3000b9ec:	61205054 	.word	0x61205054
3000b9f0:	6c6f7475 	.word	0x6c6f7475
3000b9f4:	0d64616f 	.word	0x0d64616f
3000b9f8:	0000000a 	.word	0x0000000a
3000b9fc:	6d6f682f 	.word	0x6d6f682f
3000ba00:	75612f65 	.word	0x75612f65
3000ba04:	6a5f6f74 	.word	0x6a5f6f74
3000ba08:	696b6e65 	.word	0x696b6e65
3000ba0c:	775f736e 	.word	0x775f736e
3000ba10:	356e616c 	.word	0x356e616c
3000ba14:	544f492f 	.word	0x544f492f
3000ba18:	5354415f 	.word	0x5354415f
3000ba1c:	7065722f 	.word	0x7065722f
3000ba20:	522f736f 	.word	0x522f736f
3000ba24:	61656c65 	.word	0x61656c65
3000ba28:	535f6573 	.word	0x535f6573
3000ba2c:	4c5f4b44 	.word	0x4c5f4b44
3000ba30:	78756e69 	.word	0x78756e69
3000ba34:	6c65522f 	.word	0x6c65522f
3000ba38:	65736165 	.word	0x65736165
3000ba3c:	6b64535f 	.word	0x6b64535f
3000ba40:	756f732f 	.word	0x756f732f
3000ba44:	73656372 	.word	0x73656372
3000ba48:	7269662f 	.word	0x7269662f
3000ba4c:	7261776d 	.word	0x7261776d
3000ba50:	6f632f65 	.word	0x6f632f65
3000ba54:	6e6f706d 	.word	0x6e6f706d
3000ba58:	2f746e65 	.word	0x2f746e65
3000ba5c:	2f636f73 	.word	0x2f636f73
3000ba60:	62656d61 	.word	0x62656d61
3000ba64:	616d7361 	.word	0x616d7361
3000ba68:	622f7472 	.word	0x622f7472
3000ba6c:	6c746f6f 	.word	0x6c746f6f
3000ba70:	6564616f 	.word	0x6564616f
3000ba74:	6f622f72 	.word	0x6f622f72
3000ba78:	6f6c746f 	.word	0x6f6c746f
3000ba7c:	72656461 	.word	0x72656461
3000ba80:	2e70685f 	.word	0x2e70685f
3000ba84:	00000063 	.word	0x00000063
3000ba88:	4620504e 	.word	0x4620504e
3000ba8c:	20716572 	.word	0x20716572
3000ba90:	20756c25 	.word	0x20756c25
3000ba94:	0a7a484d 	.word	0x0a7a484d
3000ba98:	00000000 	.word	0x00000000
3000ba9c:	46205041 	.word	0x46205041
3000baa0:	20716572 	.word	0x20716572
3000baa4:	20756c25 	.word	0x20756c25
3000baa8:	0a7a484d 	.word	0x0a7a484d
3000baac:	00000000 	.word	0x00000000
3000bab0:	4620504c 	.word	0x4620504c
3000bab4:	20716572 	.word	0x20716572
3000bab8:	20756c25 	.word	0x20756c25
3000babc:	0a7a484d 	.word	0x0a7a484d
3000bac0:	00000000 	.word	0x00000000
3000bac4:	31474d49 	.word	0x31474d49
3000bac8:	544e4520 	.word	0x544e4520
3000bacc:	4d205245 	.word	0x4d205245
3000bad0:	5b3a5053 	.word	0x5b3a5053
3000bad4:	78383025 	.word	0x78383025
3000bad8:	00000a5d 	.word	0x00000a5d
3000badc:	6c697542 	.word	0x6c697542
3000bae0:	69542064 	.word	0x69542064
3000bae4:	203a656d 	.word	0x203a656d
3000bae8:	25207325 	.word	0x25207325
3000baec:	00000a73 	.word	0x00000a73
3000baf0:	313a3031 	.word	0x313a3031
3000baf4:	34313a31 	.word	0x34313a31
3000baf8:	00000000 	.word	0x00000000
3000bafc:	20706553 	.word	0x20706553
3000bb00:	32203820 	.word	0x32203820
3000bb04:	00353230 	.word	0x00353230
3000bb08:	31474d49 	.word	0x31474d49
3000bb0c:	43455320 	.word	0x43455320
3000bb10:	20455255 	.word	0x20455255
3000bb14:	54415453 	.word	0x54415453
3000bb18:	25203a45 	.word	0x25203a45
3000bb1c:	00000a64 	.word	0x00000a64
3000bb20:	74696e49 	.word	0x74696e49
3000bb24:	52535020 	.word	0x52535020
3000bb28:	0a0d4d41 	.word	0x0a0d4d41
3000bb2c:	00000000 	.word	0x00000000
3000bb30:	20746573 	.word	0x20746573
3000bb34:	206d6670 	.word	0x206d6670
3000bb38:	6c696166 	.word	0x6c696166
3000bb3c:	00000a0d 	.word	0x00000a0d
3000bb40:	4f525245 	.word	0x4f525245
3000bb44:	20212152 	.word	0x20212152
3000bb48:	756f6853 	.word	0x756f6853
3000bb4c:	4e20646c 	.word	0x4e20646c
3000bb50:	6520746f 	.word	0x6520746f
3000bb54:	6c62616e 	.word	0x6c62616e
3000bb58:	654d2065 	.word	0x654d2065
3000bb5c:	7277536d 	.word	0x7277536d
3000bb60:	6c6e4f5f 	.word	0x6c6e4f5f
3000bb64:	6e692079 	.word	0x6e692079
3000bb68:	52444420 	.word	0x52444420
3000bb6c:	69684320 	.word	0x69684320
3000bb70:	21212170 	.word	0x21212170
3000bb74:	00000a0d 	.word	0x00000a0d
3000bb78:	74696e49 	.word	0x74696e49
3000bb7c:	52444420 	.word	0x52444420
3000bb80:	000a0d32 	.word	0x000a0d32
3000bb84:	74696e49 	.word	0x74696e49
3000bb88:	52444420 	.word	0x52444420
3000bb8c:	000a0d33 	.word	0x000a0d33
3000bb90:	72617453 	.word	0x72617453
3000bb94:	6f4e2074 	.word	0x6f4e2074
3000bb98:	6365536e 	.word	0x6365536e
3000bb9c:	20657275 	.word	0x20657275
3000bba0:	78302040 	.word	0x78302040
3000bba4:	2e207825 	.word	0x2e207825
3000bba8:	0a0d2e2e 	.word	0x0a0d2e2e
3000bbac:	00000000 	.word	0x00000000
3000bbb0:	00000208 	.word	0x00000208
3000bbb4:	0000020c 	.word	0x0000020c
3000bbb8:	00000210 	.word	0x00000210
3000bbbc:	00000008 	.word	0x00000008
3000bbc0:	00000214 	.word	0x00000214
3000bbc4:	00000218 	.word	0x00000218
3000bbc8:	0000021c 	.word	0x0000021c
3000bbcc:	0000000c 	.word	0x0000000c
3000bbd0:	20344d4b 	.word	0x20344d4b
3000bbd4:	33474d49 	.word	0x33474d49
3000bbd8:	00000000 	.word	0x00000000
3000bbdc:	20344d4b 	.word	0x20344d4b
3000bbe0:	0043534e 	.word	0x0043534e
3000bbe4:	31474d49 	.word	0x31474d49
3000bbe8:	00000000 	.word	0x00000000
3000bbec:	32474d49 	.word	0x32474d49
3000bbf0:	00000000 	.word	0x00000000
3000bbf4:	42205041 	.word	0x42205041
3000bbf8:	4626314c 	.word	0x4626314c
3000bbfc:	00005049 	.word	0x00005049
3000bc00:	49207325 	.word	0x49207325
3000bc04:	6c61766e 	.word	0x6c61766e
3000bc08:	000a6469 	.word	0x000a6469
3000bc0c:	255b7325 	.word	0x255b7325
3000bc10:	3a783830 	.word	0x3a783830
3000bc14:	0a5d7825 	.word	0x0a5d7825
3000bc18:	00000000 	.word	0x00000000
3000bc1c:	56207325 	.word	0x56207325
3000bc20:	46495245 	.word	0x46495245
3000bc24:	41502059 	.word	0x41502059
3000bc28:	000a5353 	.word	0x000a5353
3000bc2c:	56207325 	.word	0x56207325
3000bc30:	46495245 	.word	0x46495245
3000bc34:	41462059 	.word	0x41462059
3000bc38:	202c4c49 	.word	0x202c4c49
3000bc3c:	20746572 	.word	0x20746572
3000bc40:	6425203d 	.word	0x6425203d
3000bc44:	0000000a 	.word	0x0000000a
3000bc48:	74726543 	.word	0x74726543
3000bc4c:	63696669 	.word	0x63696669
3000bc50:	20657461 	.word	0x20657461
3000bc54:	49524556 	.word	0x49524556
3000bc58:	46205946 	.word	0x46205946
3000bc5c:	2c4c4941 	.word	0x2c4c4941
3000bc60:	74657220 	.word	0x74657220
3000bc64:	25203d20 	.word	0x25203d20
3000bc68:	00000a64 	.word	0x00000a64
3000bc6c:	706d6f43 	.word	0x706d6f43
3000bc70:	73736572 	.word	0x73736572
3000bc74:	49206465 	.word	0x49206465
3000bc78:	5620676d 	.word	0x5620676d
3000bc7c:	46495245 	.word	0x46495245
3000bc80:	41502059 	.word	0x41502059
3000bc84:	000a5353 	.word	0x000a5353
3000bc88:	706d6f43 	.word	0x706d6f43
3000bc8c:	73736572 	.word	0x73736572
3000bc90:	49206465 	.word	0x49206465
3000bc94:	5620676d 	.word	0x5620676d
3000bc98:	46495245 	.word	0x46495245
3000bc9c:	41462059 	.word	0x41462059
3000bca0:	202c4c49 	.word	0x202c4c49
3000bca4:	20746572 	.word	0x20746572
3000bca8:	6425203d 	.word	0x6425203d
3000bcac:	0000000a 	.word	0x0000000a
3000bcb0:	3000bbd0 	.word	0x3000bbd0
3000bcb4:	3000bbdc 	.word	0x3000bbdc
3000bcb8:	3000bbe4 	.word	0x3000bbe4
3000bcbc:	3000bbec 	.word	0x3000bbec
3000bcc0:	3000bbd4 	.word	0x3000bbd4
3000bcc4:	3000bbf4 	.word	0x3000bbf4
3000bcc8:	20304d4b 	.word	0x20304d4b
3000bccc:	20504958 	.word	0x20504958
3000bcd0:	00474d49 	.word	0x00474d49
3000bcd4:	20304d4b 	.word	0x20304d4b
3000bcd8:	4d415253 	.word	0x4d415253
3000bcdc:	00000000 	.word	0x00000000
3000bce0:	20304d4b 	.word	0x20304d4b
3000bce4:	4d415244 	.word	0x4d415244
3000bce8:	00000000 	.word	0x00000000
3000bcec:	20344d4b 	.word	0x20344d4b
3000bcf0:	20504958 	.word	0x20504958
3000bcf4:	00474d49 	.word	0x00474d49
3000bcf8:	20344d4b 	.word	0x20344d4b
3000bcfc:	4d415253 	.word	0x4d415253
3000bd00:	00000000 	.word	0x00000000
3000bd04:	20344d4b 	.word	0x20344d4b
3000bd08:	4d415244 	.word	0x4d415244
3000bd0c:	00000000 	.word	0x00000000
3000bd10:	58205041 	.word	0x58205041
3000bd14:	49205049 	.word	0x49205049
3000bd18:	0000474d 	.word	0x0000474d
3000bd1c:	42205041 	.word	0x42205041
3000bd20:	5320314c 	.word	0x5320314c
3000bd24:	004d4152 	.word	0x004d4152
3000bd28:	42205041 	.word	0x42205041
3000bd2c:	4420314c 	.word	0x4420314c
3000bd30:	004d4152 	.word	0x004d4152
3000bd34:	46205041 	.word	0x46205041
3000bd38:	00005049 	.word	0x00005049
3000bd3c:	32474d49 	.word	0x32474d49
3000bd40:	46544f20 	.word	0x46544f20
3000bd44:	0a4e4520 	.word	0x0a4e4520
3000bd48:	00000000 	.word	0x00000000
3000bd4c:	2046544f 	.word	0x2046544f
3000bd50:	65646f4d 	.word	0x65646f4d
3000bd54:	72726520 	.word	0x72726520
3000bd58:	0a0d726f 	.word	0x0a0d726f
3000bd5c:	00000000 	.word	0x00000000
3000bd60:	6c696146 	.word	0x6c696146
3000bd64:	206f7420 	.word	0x206f7420
3000bd68:	64616f6c 	.word	0x64616f6c
3000bd6c:	50445220 	.word	0x50445220
3000bd70:	616d6920 	.word	0x616d6920
3000bd74:	0a216567 	.word	0x0a216567
3000bd78:	00000000 	.word	0x00000000
3000bd7c:	6c696146 	.word	0x6c696146
3000bd80:	206f7420 	.word	0x206f7420
3000bd84:	64616f6c 	.word	0x64616f6c
3000bd88:	20504120 	.word	0x20504120
3000bd8c:	67616d69 	.word	0x67616d69
3000bd90:	000a2165 	.word	0x000a2165
3000bd94:	20504452 	.word	0x20504452
3000bd98:	000a4e45 	.word	0x000a4e45
3000bd9c:	32474d49 	.word	0x32474d49
3000bda0:	41544f28 	.word	0x41544f28
3000bda4:	20296425 	.word	0x20296425
3000bda8:	202c7325 	.word	0x202c7325
3000bdac:	3a746572 	.word	0x3a746572
3000bdb0:	0a642520 	.word	0x0a642520
3000bdb4:	00000000 	.word	0x00000000
3000bdb8:	494c4156 	.word	0x494c4156
3000bdbc:	00000044 	.word	0x00000044
3000bdc0:	41564e49 	.word	0x41564e49
3000bdc4:	0044494c 	.word	0x0044494c
3000bdc8:	32474d49 	.word	0x32474d49
3000bdcc:	4f4f4220 	.word	0x4f4f4220
3000bdd0:	72662054 	.word	0x72662054
3000bdd4:	4f206d6f 	.word	0x4f206d6f
3000bdd8:	25204154 	.word	0x25204154
3000bddc:	56202c64 	.word	0x56202c64
3000bde0:	69737265 	.word	0x69737265
3000bde4:	203a6e6f 	.word	0x203a6e6f
3000bde8:	2e646c25 	.word	0x2e646c25
3000bdec:	20646c25 	.word	0x20646c25
3000bdf0:	0000000a 	.word	0x0000000a
3000bdf4:	2041544f 	.word	0x2041544f
3000bdf8:	74726543 	.word	0x74726543
3000bdfc:	63696669 	.word	0x63696669
3000be00:	20657461 	.word	0x20657461
3000be04:	4d492026 	.word	0x4d492026
3000be08:	69203247 	.word	0x69203247
3000be0c:	6c61766e 	.word	0x6c61766e
3000be10:	202c6469 	.word	0x202c6469
3000be14:	544f4f42 	.word	0x544f4f42
3000be18:	49414620 	.word	0x49414620
3000be1c:	0a21214c 	.word	0x0a21214c
3000be20:	00000000 	.word	0x00000000
3000be24:	42205041 	.word	0x42205041
3000be28:	20544f4f 	.word	0x20544f4f
3000be2c:	6d6f7266 	.word	0x6d6f7266
3000be30:	41544f20 	.word	0x41544f20
3000be34:	0a642520 	.word	0x0a642520
3000be38:	00000000 	.word	0x00000000
3000be3c:	72747845 	.word	0x72747845
3000be40:	20746361 	.word	0x20746361
3000be44:	6d6f7266 	.word	0x6d6f7266
3000be48:	25783020 	.word	0x25783020
3000be4c:	6f742078 	.word	0x6f742078
3000be50:	65764f20 	.word	0x65764f20
3000be54:	64697272 	.word	0x64697272
3000be58:	78302065 	.word	0x78302065
3000be5c:	202c7825 	.word	0x202c7825
3000be60:	706d6f43 	.word	0x706d6f43
3000be64:	73736572 	.word	0x73736572
3000be68:	6e654c20 	.word	0x6e654c20
3000be6c:	20736920 	.word	0x20736920
3000be70:	78257830 	.word	0x78257830
3000be74:	0000000a 	.word	0x0000000a
3000be78:	6d6f682f 	.word	0x6d6f682f
3000be7c:	75612f65 	.word	0x75612f65
3000be80:	6a5f6f74 	.word	0x6a5f6f74
3000be84:	696b6e65 	.word	0x696b6e65
3000be88:	775f736e 	.word	0x775f736e
3000be8c:	356e616c 	.word	0x356e616c
3000be90:	544f492f 	.word	0x544f492f
3000be94:	5354415f 	.word	0x5354415f
3000be98:	7065722f 	.word	0x7065722f
3000be9c:	522f736f 	.word	0x522f736f
3000bea0:	61656c65 	.word	0x61656c65
3000bea4:	535f6573 	.word	0x535f6573
3000bea8:	4c5f4b44 	.word	0x4c5f4b44
3000beac:	78756e69 	.word	0x78756e69
3000beb0:	6c65522f 	.word	0x6c65522f
3000beb4:	65736165 	.word	0x65736165
3000beb8:	6b64535f 	.word	0x6b64535f
3000bebc:	756f732f 	.word	0x756f732f
3000bec0:	73656372 	.word	0x73656372
3000bec4:	7269662f 	.word	0x7269662f
3000bec8:	7261776d 	.word	0x7261776d
3000becc:	6f632f65 	.word	0x6f632f65
3000bed0:	6e6f706d 	.word	0x6e6f706d
3000bed4:	2f746e65 	.word	0x2f746e65
3000bed8:	2f636f73 	.word	0x2f636f73
3000bedc:	62656d61 	.word	0x62656d61
3000bee0:	616d7361 	.word	0x616d7361
3000bee4:	622f7472 	.word	0x622f7472
3000bee8:	6c746f6f 	.word	0x6c746f6f
3000beec:	6564616f 	.word	0x6564616f
3000bef0:	6f622f72 	.word	0x6f622f72
3000bef4:	6f5f746f 	.word	0x6f5f746f
3000bef8:	685f6174 	.word	0x685f6174
3000befc:	00632e70 	.word	0x00632e70
3000bf00:	3000bd10 	.word	0x3000bd10
3000bf04:	3000bd1c 	.word	0x3000bd1c
3000bf08:	3000bd28 	.word	0x3000bd28
3000bf0c:	3000bd34 	.word	0x3000bd34
3000bf10:	3000bcc8 	.word	0x3000bcc8
3000bf14:	3000bcd4 	.word	0x3000bcd4
3000bf18:	3000bce0 	.word	0x3000bce0
3000bf1c:	3000bcec 	.word	0x3000bcec
3000bf20:	3000bcf8 	.word	0x3000bcf8
3000bf24:	3000bd04 	.word	0x3000bd04
3000bf28:	3000bd1c 	.word	0x3000bd1c
3000bf2c:	3000bd28 	.word	0x3000bd28
3000bf30:	3000bd34 	.word	0x3000bd34

3000bf34 <ImagePattern>:
3000bf34:	35393138 31313738 004f4931 00004f32     819587111IO.2O..
3000bf44:	004f4932 00004f34 004f4934 72617473     2IO.4O..4IO.star
3000bf54:	64695f74 64253a78 6e65202c 64695f64     t_idx:%d, end_id
3000bf64:	64253a78 696d202c 656c6464 7864695f     x:%d, middle_idx
3000bf74:	2c64253a 6e696620 705f6c61 65736168     :%d, final_phase
3000bf84:	7864695f 2c64253a 6e696620 735f6c61     _idx:%d, final_s
3000bf94:	74666968 7864695f 2064253a 0000000a     hift_idx:%d ....
3000bfa4:	53414c46 41432048 5b42494c 78257830     FLASH CALIB[0x%x
3000bfb4:	5d4b4f20 0000000a 53414c46 41432048      OK]....FLASH CA
3000bfc4:	5b42494c 78257830 49414620 000a5d4c     LIB[0x%x FAIL]..
3000bfd4:	73616c46 65522068 25206461 00000a73     Flash Read %s...
3000bfe4:	73616c46 65522068 25206461 46202c73     Flash Read %s, F
3000bff4:	0a4c4941 00000000 73616c46 77532068     AIL.....Flash Sw
3000c004:	68637469 61655220 6f4d2064 46206564     itch Read Mode F
3000c014:	0a4c4941 00000000 43495053 4b4c4320     AIL.....SPIC CLK
3000c024:	6425203a 0a7a4820 00000000 73616c46     : %d Hz.....Flas
3000c034:	44492068 7825203a 2d78252d 28207825     h ID: %x-%x-%x (
3000c044:	61706143 79746963 6425203a 69622d4d     Capacity: %dM-bi
3000c054:	000a2974 73696854 616c6620 74206873     t)..This flash t
3000c064:	20657079 6e207369 7320746f 6f707075     ype is not suppo
3000c074:	64657472 00000a21 6d6f682f 75612f65     rted!.../home/au
3000c084:	6a5f6f74 696b6e65 775f736e 356e616c     to_jenkins_wlan5
3000c094:	544f492f 5354415f 7065722f 522f736f     /IOT_ATS/repos/R
3000c0a4:	61656c65 535f6573 4c5f4b44 78756e69     elease_SDK_Linux
3000c0b4:	6c65522f 65736165 6b64535f 756f732f     /Release_Sdk/sou
3000c0c4:	73656372 7269662f 7261776d 6f632f65     rces/firmware/co
3000c0d4:	6e6f706d 2f746e65 2f636f73 62656d61     mponent/soc/ameb
3000c0e4:	616d7361 662f7472 62696c77 6d61722f     asmart/fwlib/ram
3000c0f4:	2f70685f 62656d61 6c665f61 63687361     _hp/ameba_flashc
3000c104:	632e6b6c 00000000 73616c46 74732068     lk.c....Flash st
3000c114:	73757461 67657220 65747369 68632072     atus register ch
3000c124:	65676e61 78303a64 2d207825 7830203e     anged:0x%x -> 0x
3000c134:	000a7825 444e414e 3a444920 2d782520     %x..NAND ID: %x-
3000c144:	000a7825 73616c46 6c612068 6c62206c     %x..Flash all bl
3000c154:	206b636f 6f6c6e75 64656b63 6546202e     ock unlocked. Fe
3000c164:	72757461 65722065 78302067 78323025     ature reg 0x%02x
3000c174:	74657320 206f7420 30257830 000a7832      set to 0x%02x..
3000c184:	3000bf3c 3000bf40 3000bf44 3000bf48     <..0@..0D..0H..0
3000c194:	3000bf4c 206b6c42 6c257830 73692078     L..0Blk 0x%lx is
3000c1a4:	21424220 0000000a 444e414e 53414c46      BB!....NANDFLAS
3000c1b4:	00000048 646e614e 64644120 78302072     H...Nand Addr 0x
3000c1c4:	72207825 6f696765 6142206e 6c422064     %x region Bad Bl
3000c1d4:	206b636f 206f6f74 6863756d 0000000a     ock too much....
3000c1e4:	64616552 67615020 78302065 20786c25     Read Page 0x%lx 
3000c1f4:	4220666f 6b636f6c 25783020 614d2078     of Block 0x%x Ma
3000c204:	61462079 202c6c69 74617473 30207375     y Fail, status 0
3000c214:	21782578 0000000a 4d415244 20736920     x%x!....DRAM is 
3000c224:	20746f6e 696c6143 69617262 0a0d6e6f     not Calibraion..
3000c234:	00000000 50524444 00005948              ....DDRPHY..

3000c240 <ddrphy_tx_scan>:
3000c240:	00000000 00080000 00080808 00000000     ................
3000c250:	20000000 33333333 000c0022 00000000     ... 3333".......
3000c260:	0e0e001a 00170e0e 12171717 00000012     ................
3000c270:	20000fc1 22222222 000c0012 34000000     ... """".......4
3000c280:	0f0f0016 00180f0f 0e181818 0000000e     ................
3000c290:	200003c1 22222222 000c0012 34000000     ... """".......4
3000c2a0:	0f0f001b 00180f0f 13181818 00000013     ................
3000c2b0:	20000fc1 22222222 000c0012 34000000     ... """".......4
3000c2c0:	1110001b 00191111 13191919 00000013     ................
3000c2d0:	20000ffd 22222222 000c0012 34000000     ... """".......4
3000c2e0:	1313001c 001c1313 121c1c1c 00000012     ................
3000c2f0:	20000ffd 22222222 000c0012 34000000     ... """".......4

3000c300 <ddrphy_zq_rx_scan>:
	...
3000c308:	26262626 26262626 0303030f 0e141414     &&&&&&&&........
3000c318:	140e0e0e 26243c34 261c3029 0303030f     ....4<$&)0.&....
3000c328:	090b0a0a 0a0a0909 2615231e 2613201b     .........#.&. .&
3000c338:	04020204 0b0f0c0c 0c0b0b0b 26233a30     ............0:#&
3000c348:	26182722 04020205 0e141414 140e0e0e     "'.&............
3000c358:	26243c34 261b2f28 0303030f 0a0c0c0c     4<$&(/.&........
3000c368:	0c0a0a0a 2616251f 2614221d 04020205     .....%.&.".&....
3000c378:	20524444 657a6953 20736920 20746f6e     DDR Size is not 
3000c388:	666e6f63 72756769 000a6465 00524444     configured..DDR.
3000c398:	415b203e 20524444 414d4552 52452050     > [ADDR REMAP ER
3000c3a8:	5d524f52 6f63203a 725f756c 70616d65     ROR]: colu_remap
3000c3b8:	7469625f 3d212073 61726420 6f635f6d     _bits != dram_co
3000c3c8:	625f756c 21737469 000a2121 415b203e     lu_bits!!!..> [A
3000c3d8:	20524444 414d4552 52452050 5d524f52     DDR REMAP ERROR]
3000c3e8:	6162203a 725f6b6e 70616d65 7469625f     : bank_remap_bit
3000c3f8:	3d212073 61726420 61625f6d 625f6b6e     s != dram_bank_b
3000c408:	21737469 000a2121 6d6f682f 75612f65     its!!!../home/au
3000c418:	6a5f6f74 696b6e65 775f736e 356e616c     to_jenkins_wlan5
3000c428:	544f492f 5354415f 7065722f 522f736f     /IOT_ATS/repos/R
3000c438:	61656c65 535f6573 4c5f4b44 78756e69     elease_SDK_Linux
3000c448:	6c65522f 65736165 6b64535f 756f732f     /Release_Sdk/sou
3000c458:	73656372 7269662f 7261776d 6f632f65     rces/firmware/co
3000c468:	6e6f706d 2f746e65 2f636f73 62656d61     mponent/soc/ameb
3000c478:	616d7361 662f7472 62696c77 6d61722f     asmart/fwlib/ram
3000c488:	2f70685f 62656d61 78725f61 36313369     _hp/ameba_rxi316
3000c498:	6172645f 6e695f6d 632e7469 00000000     _dram_init.c....
3000c4a8:	41525350 7443204d 43206c72 203a4b4c     PSRAM Ctrl CLK: 
3000c4b8:	20756c25 0a207a48 00000000 41525350     %lu Hz .....PSRA
3000c4c8:	0000004d 4e6c6143 206e696d 7825203d     M...CalNmin = %x
3000c4d8:	6c614320 78616d4e 25203d20 69572078      CalNmax = %x Wi
3000c4e8:	776f646e 657a6953 25203d20 68702078     ndowSize = %x ph
3000c4f8:	3a657361 20782520 0000000a 6d6f682f     ase: %x ..../hom
3000c508:	75612f65 6a5f6f74 696b6e65 775f736e     e/auto_jenkins_w
3000c518:	356e616c 544f492f 5354415f 7065722f     lan5/IOT_ATS/rep
3000c528:	522f736f 61656c65 535f6573 4c5f4b44     os/Release_SDK_L
3000c538:	78756e69 6c65522f 65736165 6b64535f     inux/Release_Sdk
3000c548:	756f732f 73656372 7269662f 7261776d     /sources/firmwar
3000c558:	6f632f65 6e6f706d 2f746e65 2f636f73     e/component/soc/
3000c568:	62656d61 616d7361 662f7472 62696c77     amebasmart/fwlib
3000c578:	6d61722f 6d6f635f 2f6e6f6d 62656d61     /ram_common/ameb
3000c588:	77735f61 00632e72 2050544f 64616572     a_swr.c.OTP read
3000c598:	74656720 20776820 616d6573 69616620      get hw sema fai
3000c5a8:	00000a6c 0050544f 5f50544f 64616552     l...OTP.OTP_Read
3000c5b8:	61462038 25206c69 000a2078 6d6f682f     8 Fail %x ../hom
3000c5c8:	75612f65 6a5f6f74 696b6e65 775f736e     e/auto_jenkins_w
3000c5d8:	356e616c 544f492f 5354415f 7065722f     lan5/IOT_ATS/rep
3000c5e8:	522f736f 61656c65 535f6573 4c5f4b44     os/Release_SDK_L
3000c5f8:	78756e69 6c65522f 65736165 6b64535f     inux/Release_Sdk
3000c608:	756f732f 73656372 7269662f 7261776d     /sources/firmwar
3000c618:	6f632f65 6e6f706d 2f746e65 2f636f73     e/component/soc/
3000c628:	62656d61 616d7361 662f7472 62696c77     amebasmart/fwlib
3000c638:	6d61722f 6d6f635f 2f6e6f6d 62656d61     /ram_common/ameb
3000c648:	6c705f61 00632e6c 6d6f682f 75612f65     a_pll.c./home/au
3000c658:	6a5f6f74 696b6e65 775f736e 356e616c     to_jenkins_wlan5
3000c668:	544f492f 5354415f 7065722f 522f736f     /IOT_ATS/repos/R
3000c678:	61656c65 535f6573 4c5f4b44 78756e69     elease_SDK_Linux
3000c688:	6c65522f 65736165 6b64535f 756f732f     /Release_Sdk/sou
3000c698:	73656372 7269662f 7261776d 6f632f65     rces/firmware/co
3000c6a8:	6e6f706d 2f746e65 2f636f73 62656d61     mponent/soc/ameb
3000c6b8:	616d7361 662f7472 62696c77 6d61722f     asmart/fwlib/ram
3000c6c8:	6d6f635f 2f6e6f6d 62656d61 70695f61     _common/ameba_ip
3000c6d8:	70615f63 00632e69 6e6f4e0a 6365532d     c_api.c..Non-Sec
3000c6e8:	20657275 6c726f77 61632064 746f6e6e     ure world cannot
3000c6f8:	6d756420 65722070 74736967 20737265      dump registers 
3000c708:	756f6261 78652074 74706563 206e6f69     about exception 
3000c718:	6d6f7266 63657320 20657275 6c726f77     from secure worl
3000c728:	000a2164 4c554146 00000054 52534653     d!..FAULT...SFSR
3000c738:	203d2020 30257830 0d786c38 0000000a       = 0x%08lx.....
3000c748:	52414653 203d2020 30257830 0d786c38     SFAR  = 0x%08lx.
3000c758:	0000000a 544e4f43 5f4c4f52 3d20534e     ....CONTROL_NS =
3000c768:	25783020 586c3830 00000a0d 53434853      0x%08lX....SHCS
3000c778:	203d2052 30257830 0d786c38 0000000a     R = 0x%08lx.....
3000c788:	43524941 203d2052 30257830 0d786c38     AIRCR = 0x%08lx.
3000c798:	0000000a 544e4f43 204c4f52 7830203d     ....CONTROL = 0x
3000c7a8:	6c383025 000a0d78 2d73255b 205d6325     %08lx...[%s-%c] 
3000c7b8:	00000000                                ....

3000c7bc <mpc1_config>:
3000c7bc:	00000000 7017ffff 00000000 70500000     .......p......Pp
3000c7cc:	607fffff 00000000 ffffffff ffffffff     ...`............
3000c7dc:	00000000 ffffffff ffffffff 00000000     ................
3000c7ec:	ffffffff ffffffff 00000000 ffffffff     ................
3000c7fc:	ffffffff 00000000 ffffffff ffffffff     ................
3000c80c:	00000000 ffffffff ffffffff 00000000     ................

3000c81c <mpc2_config>:
3000c81c:	00014000 0001efff 00000000 00020000     .@..............
3000c82c:	0003ffff 00000000 ffffffff ffffffff     ................
3000c83c:	00000000 ffffffff ffffffff 00000000     ................
3000c84c:	ffffffff ffffffff 00000000 ffffffff     ................
3000c85c:	ffffffff 00000000 ffffffff ffffffff     ................
3000c86c:	00000000 ffffffff ffffffff 00000000     ................

3000c87c <sau_config>:
3000c87c:	0001e000 00053fff 00000000 08000000     .....?..........
3000c88c:	09ffffff 00000000 0c000000 ffffffff     ................
3000c89c:	00000000 ffffffff ffffffff 00000000     ................
3000c8ac:	ffffffff ffffffff 00000000 ffffffff     ................
3000c8bc:	ffffffff 00000000 ffffffff ffffffff     ................
3000c8cc:	00000000 ffffffff ffffffff 00000000     ................
3000c8dc:	73616c66 65675f68 616c5f74 74756f79     flash_get_layout
3000c8ec:	666e695f 7962206f 70797420 64252065     _info by type %d
3000c8fc:	69614620 00000a6c 73616c66 65675f68      Fail...flash_ge
3000c90c:	616c5f74 74756f79 666e695f 7962206f     t_layout_info by
3000c91c:	64646120 78302072 46207825 0a6c6961      addr 0x%x Fail.
3000c92c:	00000000                                ....

3000c930 <Flash_AVL>:
3000c930:	000000ef 000000ff 00000000 000043fc     .............C..
3000c940:	00000000 000000a1 000000ff 00000000     ................
3000c950:	0000fffc 00000000 0000000b 000000ff     ................
3000c960:	00000000 000043fc 00000000 0000000e     .....C..........
3000c970:	000000ff 00000000 000043fc 00000000     .........C......
3000c980:	000000c8 000000ff 00000001 000043fc     .............C..
3000c990:	00000000 000028c2 0000ffff 00000005     .....(..........
3000c9a0:	000200fc 00000000 000000c2 000000ff     ................
3000c9b0:	00000002 000000fc 00000000 00000068     ............h...
3000c9c0:	000000ff 00000002 000000fc 00000000     ................
3000c9d0:	00000051 000000ff 00000002 000000fc     Q...............
3000c9e0:	00000000 0000001c 000000ff 00000003     ................
3000c9f0:	000000fc 00000000 00000020 000000ff     ........ .......
3000ca00:	00000004 000000fc 00000000 00000085     ................
3000ca10:	000000ff 00000000 000043fc 00000000     .........C......
3000ca20:	00000000 000000ff 000000fe ffffffff     ................
3000ca30:	300093ed 000000ff ffffffff 000000ff     ...0............
3000ca40:	ffffffff 00000000                       ........

3000ca48 <Flash_ReadMode>:
3000ca48:	                                         ..

3000ca4a <Flash_Speed>:
3000ca4a:	                                         ..

3000ca4c <NAND_AVL>:
3000ca4c:	000000ef 000000ff 00000000 ffffffff     ................
3000ca5c:	00000000 000000c8 000000ff 00000001     ................
3000ca6c:	ffffffff 00000000 000000e5 000000ff     ................
3000ca7c:	00000001 ffffffff 00000000 000000c2     ................
3000ca8c:	000000ff 00000002 ffffffff 00000000     ................
3000ca9c:	0000002c 000000ff 00000004 ffffffff     ,...............
	...
3000cab4:	000000ff 000000fe ffffffff 3000944d     ............M..0
3000cac4:	000000ff ffffffff 000000ff ffffffff     ................
3000cad4:	00000000 72617453 74732074 206b6361     ....Start stack 
3000cae4:	6b636162 63617274 20676e69 20726f66     backtracing for 
3000caf4:	30207073 38302578 70202c78 78302063     sp 0x%08x, pc 0x
3000cb04:	78383025 726c202c 25783020 0a783830     %08x, lr 0x%08x.
3000cb14:	00000000 6d6f682f 75612f65 6a5f6f74     ..../home/auto_j
3000cb24:	696b6e65 775f736e 356e616c 544f492f     enkins_wlan5/IOT
3000cb34:	5354415f 7065722f 522f736f 61656c65     _ATS/repos/Relea
3000cb44:	535f6573 4c5f4b44 78756e69 6c65522f     se_SDK_Linux/Rel
3000cb54:	65736165 6b64535f 756f732f 73656372     ease_Sdk/sources
3000cb64:	7269662f 7261776d 6d612f65 73616265     /firmware/amebas
3000cb74:	7472616d 6363675f 6f72705f 7463656a     mart_gcc_project
3000cb84:	6f72702f 7463656a 2f70685f 6b647361     /project_hp/asdk
3000cb94:	616d692f 6d5f6567 00000070 74706f2f     /image_mp.../opt
3000cba4:	6b74722f 6f6f742d 6168636c 612f6e69     /rtk-toolchain/a
3000cbb4:	2d6b6473 332e3031 342d312e 2f343533     sdk-10.3.1-4354/
3000cbc4:	756e696c 656e2f78 62696c77 00000000     linux/newlib....
3000cbd4:	622f7325 612f6e69 6e2d6d72 2d656e6f     %s/bin/arm-none-
3000cbe4:	69626165 6464612d 696c3272 2d20656e     eabi-addr2line -
3000cbf4:	73252065 7261742f 5f746567 32676d69     e %s/target_img2
3000cc04:	6678612e 66612d20 20436970 30257830     .axf -afpiC 0x%0
3000cc14:	00007838 25783020 00783830 00344d4b     8x.. 0x%08x.KM4.
3000cc24:	00304d4b 3d3d3d3d 3d3d3d3d 73253d3d     KM0.==========%s
3000cc34:	61745320 44206b63 20706d75 3d3d3d3d      Stack Dump ====
3000cc44:	3d3d3d3d 000a3d3d 72727543 20746e65     ======..Current 
3000cc54:	63617453 6f50206b 65746e69 203d2072     Stack Pointer = 
3000cc64:	30257830 202c7838 20646e61 706d7564     0x%08x, and dump
3000cc74:	61747320 64206b63 68747065 25203d20      stack depth = %
3000cc84:	000a0d75 2578305b 5d783830 00000020     u...[0x%08x] ...
3000cc94:	78383025 00000020 305b0a0d 38302578     %08x .....[0x%08
3000cca4:	00205d78 00003052 00003452 3d3d3d0a     x] .R0..R4...===
3000ccb4:	3d3d3d3d 203d3d3d 73617243 75442068     ======= Crash Du
3000ccc4:	3d20706d 3d3d3d3d 3d3d3d3d 00000a3d     mp ==========...
3000ccd4:	3d3d3d3d 3d3d3d3d 52203d3d 73696765     ========== Regis
3000cce4:	20726574 706d7544 3d3d3d20 3d3d3d3d     ter Dump =======
3000ccf4:	0a3d3d3d 00000000 4c20205b 30205d52     ===.....[  LR] 0
3000cd04:	38302578 00000a78 5020205b 30205d43     x%08x...[  PC] 0
3000cd14:	38302578 00000a78 5350785b 30205d52     x%08x...[xPSR] 0
3000cd24:	38302578 00000a78 4358455b 30205d52     x%08x...[EXCR] 0
3000cd34:	38302578 00000a78 7325205b 7830205d     x%08x...[ %s] 0x
3000cd44:	78383025 0000000a 00323152 3d3d3d3d     %08x....R12.====
3000cd54:	3d3d3d3d 53203d3d 6b636174 61725420     ====== Stack Tra
3000cd64:	3d206563 3d3d3d3d 3d3d3d3d 00000a3d     ce ==========...
3000cd74:	3d3d3d3d 3d3d3d3d 45203d3d 6f20646e     ========== End o
3000cd84:	74532066 206b6361 63617254 3d3d2065     f Stack Trace ==
3000cd94:	3d3d3d3d 3d3d3d3d 0000000a 3d3d3d3d     ========....====
3000cda4:	3d3d3d3d 45203d3d 6f20646e 72432066     ====== End of Cr
3000cdb4:	20687361 706d7544 3d3d3d20 3d3d3d3d     ash Dump =======
3000cdc4:	0a3d3d3d 00000000 0a0d0a0d 00000000     ===.............
3000cdd4:	00003552 00003652 00003752 00003852     R5..R6..R7..R8..
3000cde4:	00003952 00303152 00313152 00003152     R9..R10.R11.R1..
3000cdf4:	00003252 00003352                       R2..R3..

3000cdfc <register_string>:
3000cdfc:	00000000 3000ccac 3000cdd4 3000cdd8     .......0...0...0
3000ce0c:	3000cddc 3000cde0 3000cde4 3000cde8     ...0...0...0...0
3000ce1c:	3000cdec 3000cca8 3000cdf0 3000cdf4     ...0...0...0...0
3000ce2c:	3000cdf8 3000cd4c 65637845 6f697470     ...0L..0Exceptio
3000ce3c:	6163206e 74686775 206e6f20 78383025     n caught on %08x
3000ce4c:	0000000a 64726148 75616620 6920746c     ....Hard fault i
3000ce5c:	61632073 64657375 20796220 6c696166     s caused by fail
3000ce6c:	76206465 6f746365 65662072 00686374     ed vector fetch.
3000ce7c:	52534648 305b203a 38302578 2d205d78     HFSR: [0x%08x] -
3000ce8c:	7325203e 0000000a 75636553 79746972     > %s....Security
3000ce9c:	75616620 6920746c 61632073 64657375      fault is caused
3000ceac:	20796220 61766e49 2064696c 72746e65      by Invalid entr
3000cebc:	6f702079 00746e69 52534653 305b203a     y point.SFSR: [0
3000cecc:	38302578 2d205d78 7325203e 0000000a     x%08x] -> %s....
3000cedc:	75636553 79746972 75616620 6920746c     Security fault i
3000ceec:	61632073 64657375 20796220 61766e49     s caused by Inva
3000cefc:	2064696c 65746e69 74697267 69732079     lid integrity si
3000cf0c:	74616e67 00657275 75636553 79746972     gnature.Security
3000cf1c:	75616620 6920746c 61632073 64657375      fault is caused
3000cf2c:	20796220 61766e49 2064696c 65637865      by Invalid exce
3000cf3c:	6f697470 6572206e 6e727574 00000000     ption return....
3000cf4c:	75636553 79746972 75616620 6920746c     Security fault i
3000cf5c:	61632073 64657375 20796220 72747441     s caused by Attr
3000cf6c:	74756269 206e6f69 74696e75 6f697620     ibution unit vio
3000cf7c:	6974616c 00006e6f 75636553 79746972     lation..Security
3000cf8c:	75616620 6920746c 61632073 64657375      fault is caused
3000cf9c:	20796220 61766e49 2064696c 6e617274      by Invalid tran
3000cfac:	69746973 00006e6f 75636553 79746972     sition..Security
3000cfbc:	75616620 6920746c 61632073 64657375      fault is caused
3000cfcc:	20796220 797a614c 61747320 70206574      by Lazy state p
3000cfdc:	65736572 74617672 206e6f69 6f727265     reservation erro
3000cfec:	00000072 75636553 79746972 75616620     r...Security fau
3000cffc:	6920746c 61632073 64657375 20796220     lt is caused by 
3000d00c:	797a614c 61747320 65206574 726f7272     Lazy state error
3000d01c:	00000000 20656854 75636573 79746972     ....The security
3000d02c:	75616620 6f20746c 72756363 20646572      fault occurred 
3000d03c:	72646461 20737365 00007369 52414653     address is..SFAR
3000d04c:	305b203a 38302578 2d205d78 7325203e     : [0x%08x] -> %s
3000d05c:	0000000a 6f6d654d 6d207972 67616e61     ....Memory manag
3000d06c:	6e656d65 61662074 20746c75 63207369     ement fault is c
3000d07c:	65737561 79622064 736e6920 63757274     aused by instruc
3000d08c:	6e6f6974 63636120 20737365 6c6f6976     tion access viol
3000d09c:	6f697461 0000006e 53464d4d 5b203a52     ation...MMFSR: [
3000d0ac:	30257830 205d7838 25203e2d 00000a73     0x%08x] -> %s...
3000d0bc:	6f6d654d 6d207972 67616e61 6e656d65     Memory managemen
3000d0cc:	61662074 20746c75 63207369 65737561     t fault is cause
3000d0dc:	79622064 74616420 63612061 73736563     d by data access
3000d0ec:	6f697620 6974616c 00006e6f 6f6d654d      violation..Memo
3000d0fc:	6d207972 67616e61 6e656d65 61662074     ry management fa
3000d10c:	20746c75 63207369 65737561 79622064     ult is caused by
3000d11c:	736e7520 6b636174 20676e69 6f727265      unstacking erro
3000d12c:	00000072 6f6d654d 6d207972 67616e61     r...Memory manag
3000d13c:	6e656d65 61662074 20746c75 63207369     ement fault is c
3000d14c:	65737561 79622064 61747320 6e696b63     aused by stackin
3000d15c:	72652067 00726f72 6f6d654d 6d207972     g error.Memory m
3000d16c:	67616e61 6e656d65 61662074 20746c75     anagement fault 
3000d17c:	63207369 65737561 79622064 6f6c6620     is caused by flo
3000d18c:	6e697461 6f702d67 20746e69 797a616c     ating-point lazy
3000d19c:	61747320 70206574 65736572 74617672      state preservat
3000d1ac:	006e6f69 20656854 6f6d656d 6d207972     ion.The memory m
3000d1bc:	67616e61 6e656d65 61662074 20746c75     anagement fault 
3000d1cc:	7563636f 64657272 64646120 73736572     occurred address
3000d1dc:	00736920 52414d4d 305b203a 38302578      is.MMAR: [0x%08
3000d1ec:	2d205d78 7325203e 0000000a 20737542     x] -> %s....Bus 
3000d1fc:	6c756166 73692074 75616320 20646573     fault is caused 
3000d20c:	69207962 7274736e 69746375 61206e6f     by instruction a
3000d21c:	73656363 69762073 74616c6f 006e6f69     ccess violation.
3000d22c:	52534642 305b203a 38302578 2d205d78     BFSR: [0x%08x] -
3000d23c:	7325203e 0000000a 20737542 6c756166     > %s....Bus faul
3000d24c:	73692074 75616320 20646573 70207962     t is caused by p
3000d25c:	69636572 64206573 20617461 65636361     recise data acce
3000d26c:	76207373 616c6f69 6e6f6974 00000000     ss violation....
3000d27c:	20737542 6c756166 73692074 75616320     Bus fault is cau
3000d28c:	20646573 69207962 6572706d 65736963     sed by imprecise
3000d29c:	74616420 63612061 73736563 6f697620      data access vio
3000d2ac:	6974616c 00006e6f 20737542 6c756166     lation..Bus faul
3000d2bc:	73692074 75616320 20646573 75207962     t is caused by u
3000d2cc:	6174736e 6e696b63 72652067 00726f72     nstacking error.
3000d2dc:	20737542 6c756166 73692074 75616320     Bus fault is cau
3000d2ec:	20646573 73207962 6b636174 20676e69     sed by stacking 
3000d2fc:	6f727265 00000072 20737542 6c756166     error...Bus faul
3000d30c:	73692074 75616320 20646573 66207962     t is caused by f
3000d31c:	74616f6c 2d676e69 6e696f70 616c2074     loating-point la
3000d32c:	7320797a 65746174 65727020 76726573     zy state preserv
3000d33c:	6f697461 0000006e 20656854 20737562     ation...The bus 
3000d34c:	6c756166 636f2074 72727563 61206465     fault occurred a
3000d35c:	65726464 69207373 00000073 52414642     ddress is...BFAR
3000d36c:	305b203a 38302578 2d205d78 7325203e     : [0x%08x] -> %s
3000d37c:	0000000a 67617355 61662065 20746c75     ....Usage fault 
3000d38c:	63207369 65737561 79622064 74746120     is caused by att
3000d39c:	74706d65 6f742073 65786520 65747563     empts to execute
3000d3ac:	206e6120 65646e75 656e6966 6e692064      an undefined in
3000d3bc:	75727473 6f697463 0000006e 52534655     struction...UFSR
3000d3cc:	305b203a 38302578 2d205d78 7325203e     : [0x%08x] -> %s
3000d3dc:	0000000a 67617355 61662065 20746c75     ....Usage fault 
3000d3ec:	63207369 65737561 79622064 74746120     is caused by att
3000d3fc:	74706d65 6f742073 69777320 20686374     empts to switch 
3000d40c:	61206f74 6e69206e 696c6176 74732064     to an invalid st
3000d41c:	20657461 672e6528 41202c2e 00294d52     ate (e.g., ARM).
3000d42c:	67617355 61662065 20746c75 63207369     Usage fault is c
3000d43c:	65737561 79622064 74746120 74706d65     aused by attempt
3000d44c:	6f742073 206f6420 65206e61 70656378     s to do an excep
3000d45c:	6e6f6974 74697720 20612068 20646162     tion with a bad 
3000d46c:	756c6176 6e692065 65687420 43584520     value in the EXC
3000d47c:	5445525f 204e5255 626d756e 00007265     _RETURN number..
3000d48c:	67617355 61662065 20746c75 63207369     Usage fault is c
3000d49c:	65737561 79622064 74746120 74706d65     aused by attempt
3000d4ac:	6f742073 65786520 65747563 63206120     s to execute a c
3000d4bc:	6f72706f 73736563 6920726f 7274736e     oprocessor instr
3000d4cc:	69746375 00006e6f 67617355 61662065     uction..Usage fa
3000d4dc:	20746c75 63207369 65737561 79622064     ult is caused by
3000d4ec:	646e6920 74616369 74207365 20746168      indicates that 
3000d4fc:	74732061 206b6361 7265766f 776f6c66     a stack overflow
3000d50c:	61682820 61776472 63206572 6b636568      (hardware check
3000d51c:	61682029 61742073 206e656b 63616c70     ) has taken plac
3000d52c:	00000065 67617355 61662065 20746c75     e...Usage fault 
3000d53c:	63207369 65737561 79622064 646e6920     is caused by ind
3000d54c:	74616369 74207365 20746168 75206e61     icates that an u
3000d55c:	696c616e 64656e67 63636120 20737365     naligned access 
3000d56c:	6c756166 61682074 61742073 206e656b     fault has taken 
3000d57c:	63616c70 00000065 67617355 61662065     place...Usage fa
3000d58c:	20746c75 63207369 65737561 79622064     ult is caused by
3000d59c:	646e4920 74616369 61207365 76696420      Indicates a div
3000d5ac:	20656469 7a207962 206f7265 20736168     ide by zero has 
3000d5bc:	656b6174 6c70206e 20656361 6e616328     taken place (can
3000d5cc:	20656220 20746573 796c6e6f 20666920      be set only if 
3000d5dc:	5f564944 52545f30 73692050 74657320     DIV_0_TRP is set
3000d5ec:	00000029 75626544 61662067 20746c75     )...Debug fault 
3000d5fc:	63207369 65737561 79622064 6c616820     is caused by hal
3000d60c:	65722074 73657571 20646574 4e206e69     t requested in N
3000d61c:	00434956 52534644 305b203a 38302578     VIC.DFSR: [0x%08
3000d62c:	2d205d78 7325203e 0000000a 75626544     x] -> %s....Debu
3000d63c:	61662067 20746c75 63207369 65737561     g fault is cause
3000d64c:	79622064 504b4220 6e692054 75727473     d by BKPT instru
3000d65c:	6f697463 7865206e 74756365 00006465     ction executed..
3000d66c:	75626544 61662067 20746c75 63207369     Debug fault is c
3000d67c:	65737561 79622064 54574420 74616d20     aused by DWT mat
3000d68c:	6f206863 72756363 00646572 75626544     ch occurred.Debu
3000d69c:	61662067 20746c75 63207369 65737561     g fault is cause
3000d6ac:	79622064 63655620 20726f74 63746566     d by Vector fetc
3000d6bc:	636f2068 72727563 00006465 75626544     h occurred..Debu
3000d6cc:	61662067 20746c75 63207369 65737561     g fault is cause
3000d6dc:	79622064 42444520 20515247 6e676973     d by EDBGRQ sign
3000d6ec:	61206c61 72657373 00646574 61766e49     al asserted.Inva
3000d6fc:	2064696c 6e696843 6f666e69 68432021     lid Chininfo! Ch
3000d70c:	206b6365 0a50544f 00000000 50494843     eck OTP.....CHIP
3000d71c:	4f464e49 00000000 61656c50 70206573     INFO....Please p
3000d72c:	72676f72 63206d61 69706968 206f666e     rogram chipinfo 
3000d73c:	4f206e69 21205054 0000000a 3a525245     in OTP !....ERR:
3000d74c:	69685420 68432073 4e207069 5320746f      This Chip Not S
3000d75c:	6f707075 0a0d7472 00000a0d 41525350     upport......PSRA
3000d76c:	726f204d 41524420 6e45204d 6e692064     M or DRAM End in
3000d77c:	79616c20 2074756f 30207369 2c782578      layout is 0x%x,
3000d78c:	74756220 74636120 6c6c6175 73692079      but actually is
3000d79c:	25783020 730a0d78 4d207465 75204350      0x%x..set MPC u
3000d7ac:	676e6973 74636120 6c6c6175 61762079     sing actually va
3000d7bc:	0d65756c 0000000a                       lue.....

3000d7c4 <CSWTCH.16>:
3000d7c4:	60400000 60800000 61000000 62000000     ..@`...`...a...b

3000d7d4 <CSWTCH.17>:
3000d7d4:	62000000 64000000 68000000 70000000     ...b...d...h...p

3000d7e4 <Memory_Info>:
3000d7e4:	02060600 07000102 00020107 02080800     ................
3000d7f4:	08010102 01020228 03090900 09010004     ....(...........
3000d804:	00040329 010a0a00 0a010003 0003012a     )...........*...
3000d814:	020b0b00 0c000102 0102020c 030d0d00     ................
3000d824:	0e000004 0003010e 030f0f00 10000004     ................
3000d834:	00030110 01111100 ffff0002 ffffffff     ................
3000d844:	00000042 00000041 44415041 73255020     B...A...APAD P%s
3000d854:	2064255f 63207369 69666e6f 65727567     _%d is configure
3000d864:	6f742064 6e756620 20444963 20756c25     d to funcID %lu 
3000d874:	0000000a 504d4f52 48435441 00000000     ....ROMPATCH....
3000d884:	20445753 20444150 5f732550 69206425     SWD PAD P%s_%d i
3000d894:	6f632073 6769666e 64657275 206f7420     s configured to 
3000d8a4:	636e7566 25204449 0a20756c 00000000     funcID %lu .....
3000d8b4:	64206f69 65766972 61702072 656d6172     io driver parame
3000d8c4:	73726574 72726520 2021726f 656c6966     ters error! file
3000d8d4:	6d616e5f 25203a65 6c202c73 3a656e69     _name: %s, line:
3000d8e4:	00642520 6d6f682f 75612f65 6a5f6f74      %d./home/auto_j
3000d8f4:	696b6e65 775f736e 356e616c 544f492f     enkins_wlan5/IOT
3000d904:	5354415f 7065722f 522f736f 61656c65     _ATS/repos/Relea
3000d914:	535f6573 4c5f4b44 78756e69 6c65522f     se_SDK_Linux/Rel
3000d924:	65736165 6b64535f 756f732f 73656372     ease_Sdk/sources
3000d934:	7269662f 7261776d 6f632f65 6e6f706d     /firmware/compon
3000d944:	2f746e65 2f636f73 62656d61 616d7361     ent/soc/amebasma
3000d954:	6c2f7472 632f6269 69706968 2f6f666e     rt/lib/chipinfo/
3000d964:	62656d61 6f725f61 61705f6d 2e686374     ameba_rom_patch.
3000d974:	00000063 74206f4e 20736968 68747561     c...No this auth
3000d984:	7079745f 6c252865 66202975 5320726f     _type(%lu) for S
3000d994:	0a324148 00000000 2a2a2a2a 2a2a2a2a     HA2.....********
3000d9a4:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
3000d9b4:	57202a2a 494e5241 2a20474e 2a2a2a2a     ** WARNING *****
3000d9c4:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
3000d9d4:	000a2a2a 2020202a 20202020 20202020     **..*           
3000d9e4:	20202020 20202020 20202020 20202020                     
3000d9f4:	20202020 20202020 20202020 20202020                     
3000da04:	20202020 20202020 20202020 000a2a20                  *..
3000da14:	2020202a 20202020 20202020 75432020     *             Cu
3000da24:	6e657272 68632074 76207069 69737265     rrent chip versi
3000da34:	69206e6f 43412073 21217475 20202021     on is ACut!!!   
3000da44:	20202020 20202020 000a2a20 2020202a              *..*   
3000da54:	204b5452 204b4453 73656f64 746f6e20     RTK SDK does not
3000da64:	70757320 74726f70 72756320 746e6572      support current
3000da74:	72657620 6e6f6973 796e6120 726f6d20      version any mor
3000da84:	20202e65 000a2a20 2020202a 50202020     e.   *..*      P
3000da94:	7361656c 6f632065 6361746e 54522074     lease contact RT
3000daa4:	4d50204b 726f6620 726f6d20 72702065     K PM for more pr
3000dab4:	6375646f 6e692074 20216f66 20202020     oduct info!     
3000dac4:	000a2a20 2a2a2a2a 2a2a2a2a 2a2a2a2a      *..************
3000dad4:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
3000dae4:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
3000daf4:	2a2a2a2a 2a2a2a2a 2a2a2a2a 000a2a2a     **************..
3000db04:	6d6f682f 75612f65 6a5f6f74 696b6e65     /home/auto_jenki
3000db14:	775f736e 356e616c 544f492f 5354415f     ns_wlan5/IOT_ATS
3000db24:	7065722f 522f736f 61656c65 535f6573     /repos/Release_S
3000db34:	4c5f4b44 78756e69 6c65522f 65736165     DK_Linux/Release
3000db44:	6b64535f 756f732f 73656372 7269662f     _Sdk/sources/fir
3000db54:	7261776d 6f632f65 6e6f706d 2f746e65     mware/component/
3000db64:	2f636f73 62656d61 616d7361 6c2f7472     soc/amebasmart/l
3000db74:	622f6269 6c746f6f 6564616f 6f622f72     ib/bootloader/bo
3000db84:	6f6c746f 72656461 5f70685f 2e62696c     otloader_hp_lib.
3000db94:	00000063                                c...
