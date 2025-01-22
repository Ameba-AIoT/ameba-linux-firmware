
/home/qi_shen/jessica/6.6/sources/firmware/amebasmart_gcc_project/project_hp/asdk/image/target_loader.axf:     file format elf32-littlearm


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
300031bc:	3000ba18 	.word	0x3000ba18
300031c0:	3000d77c 	.word	0x3000d77c
300031c4:	42008000 	.word	0x42008000
300031c8:	00009b2d 	.word	0x00009b2d
300031cc:	3000894d 	.word	0x3000894d

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
30003224:	3000d8dc 	.word	0x3000d8dc
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
30003500:	3000d818 	.word	0x3000d818
30003504:	e002ed00 	.word	0xe002ed00
30003508:	e000ed00 	.word	0xe000ed00
3000350c:	e0042000 	.word	0xe0042000
30003510:	ffff0000 	.word	0xffff0000

30003514 <BOOT_GRstConfig>:
30003514:	b538      	push	{r3, r4, r5, lr}
30003516:	4c09      	ldr	r4, [pc, #36]	; (3000353c <BOOT_GRstConfig+0x28>)
30003518:	f241 050a 	movw	r5, #4106	; 0x100a
3000351c:	2028      	movs	r0, #40	; 0x28
3000351e:	4a08      	ldr	r2, [pc, #32]	; (30003540 <BOOT_GRstConfig+0x2c>)
30003520:	8823      	ldrh	r3, [r4, #0]
30003522:	b29b      	uxth	r3, r3
30003524:	431d      	orrs	r5, r3
30003526:	8025      	strh	r5, [r4, #0]
30003528:	4790      	blx	r2
3000352a:	88a3      	ldrh	r3, [r4, #4]
3000352c:	b29b      	uxth	r3, r3
3000352e:	ea23 0305 	bic.w	r3, r3, r5
30003532:	80a3      	strh	r3, [r4, #4]
30003534:	8863      	ldrh	r3, [r4, #2]
30003536:	8065      	strh	r5, [r4, #2]
30003538:	bd38      	pop	{r3, r4, r5, pc}
3000353a:	bf00      	nop
3000353c:	42008200 	.word	0x42008200
30003540:	00009b2d 	.word	0x00009b2d

30003544 <BOOT_DDR_LCDC_HPR>:
30003544:	4a04      	ldr	r2, [pc, #16]	; (30003558 <BOOT_DDR_LCDC_HPR+0x14>)
30003546:	f8d2 3290 	ldr.w	r3, [r2, #656]	; 0x290
3000354a:	f423 6340 	bic.w	r3, r3, #3072	; 0xc00
3000354e:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
30003552:	f8c2 3290 	str.w	r3, [r2, #656]	; 0x290
30003556:	4770      	bx	lr
30003558:	42008000 	.word	0x42008000

3000355c <BOOT_DDR_Init>:
3000355c:	f04f 4382 	mov.w	r3, #1090519040	; 0x41000000
30003560:	b530      	push	{r4, r5, lr}
30003562:	4d15      	ldr	r5, [pc, #84]	; (300035b8 <BOOT_DDR_Init+0x5c>)
30003564:	b099      	sub	sp, #100	; 0x64
30003566:	6b1c      	ldr	r4, [r3, #48]	; 0x30
30003568:	47a8      	blx	r5
3000356a:	2803      	cmp	r0, #3
3000356c:	d11e      	bne.n	300035ac <BOOT_DDR_Init+0x50>
3000356e:	f044 74c0 	orr.w	r4, r4, #25165824	; 0x1800000
30003572:	4a12      	ldr	r2, [pc, #72]	; (300035bc <BOOT_DDR_Init+0x60>)
30003574:	f04f 4382 	mov.w	r3, #1090519040	; 0x41000000
30003578:	4911      	ldr	r1, [pc, #68]	; (300035c0 <BOOT_DDR_Init+0x64>)
3000357a:	a801      	add	r0, sp, #4
3000357c:	631c      	str	r4, [r3, #48]	; 0x30
3000357e:	f8d2 3204 	ldr.w	r3, [r2, #516]	; 0x204
30003582:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
30003586:	f8c2 3204 	str.w	r3, [r2, #516]	; 0x204
3000358a:	4788      	blx	r1
3000358c:	a801      	add	r0, sp, #4
3000358e:	4b0d      	ldr	r3, [pc, #52]	; (300035c4 <BOOT_DDR_Init+0x68>)
30003590:	4798      	blx	r3
30003592:	4b0d      	ldr	r3, [pc, #52]	; (300035c8 <BOOT_DDR_Init+0x6c>)
30003594:	4798      	blx	r3
30003596:	4b0d      	ldr	r3, [pc, #52]	; (300035cc <BOOT_DDR_Init+0x70>)
30003598:	4798      	blx	r3
3000359a:	4b0d      	ldr	r3, [pc, #52]	; (300035d0 <BOOT_DDR_Init+0x74>)
3000359c:	4798      	blx	r3
3000359e:	2101      	movs	r1, #1
300035a0:	f240 10ff 	movw	r0, #511	; 0x1ff
300035a4:	4b0b      	ldr	r3, [pc, #44]	; (300035d4 <BOOT_DDR_Init+0x78>)
300035a6:	4798      	blx	r3
300035a8:	b019      	add	sp, #100	; 0x64
300035aa:	bd30      	pop	{r4, r5, pc}
300035ac:	47a8      	blx	r5
300035ae:	2802      	cmp	r0, #2
300035b0:	d0dd      	beq.n	3000356e <BOOT_DDR_Init+0x12>
300035b2:	f044 7480 	orr.w	r4, r4, #16777216	; 0x1000000
300035b6:	e7dc      	b.n	30003572 <BOOT_DDR_Init+0x16>
300035b8:	0000c0f9 	.word	0x0000c0f9
300035bc:	42008000 	.word	0x42008000
300035c0:	300066bd 	.word	0x300066bd
300035c4:	30006c35 	.word	0x30006c35
300035c8:	30008169 	.word	0x30008169
300035cc:	30006d05 	.word	0x30006d05
300035d0:	30006d09 	.word	0x30006d09
300035d4:	300080d5 	.word	0x300080d5

300035d8 <BOOT_PSRAM_Init>:
300035d8:	b510      	push	{r4, lr}
300035da:	b088      	sub	sp, #32
300035dc:	4b1e      	ldr	r3, [pc, #120]	; (30003658 <BOOT_PSRAM_Init+0x80>)
300035de:	a801      	add	r0, sp, #4
300035e0:	4798      	blx	r3
300035e2:	a801      	add	r0, sp, #4
300035e4:	4b1d      	ldr	r3, [pc, #116]	; (3000365c <BOOT_PSRAM_Init+0x84>)
300035e6:	4798      	blx	r3
300035e8:	4b1d      	ldr	r3, [pc, #116]	; (30003660 <BOOT_PSRAM_Init+0x88>)
300035ea:	4798      	blx	r3
300035ec:	4b1d      	ldr	r3, [pc, #116]	; (30003664 <BOOT_PSRAM_Init+0x8c>)
300035ee:	4798      	blx	r3
300035f0:	2801      	cmp	r0, #1
300035f2:	d01c      	beq.n	3000362e <BOOT_PSRAM_Init+0x56>
300035f4:	4b1c      	ldr	r3, [pc, #112]	; (30003668 <BOOT_PSRAM_Init+0x90>)
300035f6:	2249      	movs	r2, #73	; 0x49
300035f8:	491c      	ldr	r1, [pc, #112]	; (3000366c <BOOT_PSRAM_Init+0x94>)
300035fa:	2004      	movs	r0, #4
300035fc:	f005 ff38 	bl	30009470 <rtk_log_write>
30003600:	4b1b      	ldr	r3, [pc, #108]	; (30003670 <BOOT_PSRAM_Init+0x98>)
30003602:	4798      	blx	r3
30003604:	4b1b      	ldr	r3, [pc, #108]	; (30003674 <BOOT_PSRAM_Init+0x9c>)
30003606:	f8d3 3268 	ldr.w	r3, [r3, #616]	; 0x268
3000360a:	009b      	lsls	r3, r3, #2
3000360c:	d516      	bpl.n	3000363c <BOOT_PSRAM_Init+0x64>
3000360e:	4a1a      	ldr	r2, [pc, #104]	; (30003678 <BOOT_PSRAM_Init+0xa0>)
30003610:	4b1a      	ldr	r3, [pc, #104]	; (3000367c <BOOT_PSRAM_Init+0xa4>)
30003612:	6812      	ldr	r2, [r2, #0]
30003614:	605a      	str	r2, [r3, #4]
30003616:	4a1a      	ldr	r2, [pc, #104]	; (30003680 <BOOT_PSRAM_Init+0xa8>)
30003618:	f04f 0c20 	mov.w	ip, #32
3000361c:	2101      	movs	r1, #1
3000361e:	4b19      	ldr	r3, [pc, #100]	; (30003684 <BOOT_PSRAM_Init+0xac>)
30003620:	6952      	ldr	r2, [r2, #20]
30003622:	4608      	mov	r0, r1
30003624:	fbbc f2f2 	udiv	r2, ip, r2
30003628:	4798      	blx	r3
3000362a:	b008      	add	sp, #32
3000362c:	bd10      	pop	{r4, pc}
3000362e:	4b16      	ldr	r3, [pc, #88]	; (30003688 <BOOT_PSRAM_Init+0xb0>)
30003630:	4798      	blx	r3
30003632:	4b10      	ldr	r3, [pc, #64]	; (30003674 <BOOT_PSRAM_Init+0x9c>)
30003634:	f8d3 3268 	ldr.w	r3, [r3, #616]	; 0x268
30003638:	009b      	lsls	r3, r3, #2
3000363a:	d4e8      	bmi.n	3000360e <BOOT_PSRAM_Init+0x36>
3000363c:	4c13      	ldr	r4, [pc, #76]	; (3000368c <BOOT_PSRAM_Init+0xb4>)
3000363e:	47a0      	blx	r4
30003640:	b930      	cbnz	r0, 30003650 <BOOT_PSRAM_Init+0x78>
30003642:	4b13      	ldr	r3, [pc, #76]	; (30003690 <BOOT_PSRAM_Init+0xb8>)
30003644:	4798      	blx	r3
30003646:	4a0d      	ldr	r2, [pc, #52]	; (3000367c <BOOT_PSRAM_Init+0xa4>)
30003648:	4b0b      	ldr	r3, [pc, #44]	; (30003678 <BOOT_PSRAM_Init+0xa0>)
3000364a:	6852      	ldr	r2, [r2, #4]
3000364c:	601a      	str	r2, [r3, #0]
3000364e:	e7e2      	b.n	30003616 <BOOT_PSRAM_Init+0x3e>
30003650:	47a0      	blx	r4
30003652:	2801      	cmp	r0, #1
30003654:	d1df      	bne.n	30003616 <BOOT_PSRAM_Init+0x3e>
30003656:	e7f4      	b.n	30003642 <BOOT_PSRAM_Init+0x6a>
30003658:	300082f5 	.word	0x300082f5
3000365c:	30008315 	.word	0x30008315
30003660:	3000837d 	.word	0x3000837d
30003664:	30009671 	.word	0x30009671
30003668:	3000b710 	.word	0x3000b710
3000366c:	3000b71c 	.word	0x3000b71c
30003670:	30008621 	.word	0x30008621
30003674:	42008000 	.word	0x42008000
30003678:	3000debc 	.word	0x3000debc
3000367c:	41002000 	.word	0x41002000
30003680:	3000e67c 	.word	0x3000e67c
30003684:	30008901 	.word	0x30008901
30003688:	30008549 	.word	0x30008549
3000368c:	0000c0f9 	.word	0x0000c0f9
30003690:	3000865d 	.word	0x3000865d

30003694 <BOOT_WakeFromPG>:
30003694:	b538      	push	{r3, r4, r5, lr}
30003696:	4c49      	ldr	r4, [pc, #292]	; (300037bc <BOOT_WakeFromPG+0x128>)
30003698:	f000 fecc 	bl	30004434 <BOOT_RAM_TZCfg>
3000369c:	69a3      	ldr	r3, [r4, #24]
3000369e:	b10b      	cbz	r3, 300036a4 <BOOT_WakeFromPG+0x10>
300036a0:	4a47      	ldr	r2, [pc, #284]	; (300037c0 <BOOT_WakeFromPG+0x12c>)
300036a2:	6093      	str	r3, [r2, #8]
300036a4:	4b47      	ldr	r3, [pc, #284]	; (300037c4 <BOOT_WakeFromPG+0x130>)
300036a6:	f06f 0c1a 	mvn.w	ip, #26
300036aa:	4847      	ldr	r0, [pc, #284]	; (300037c8 <BOOT_WakeFromPG+0x134>)
300036ac:	f103 0e50 	add.w	lr, r3, #80	; 0x50
300036b0:	ebac 0c04 	sub.w	ip, ip, r4
300036b4:	eb0c 0203 	add.w	r2, ip, r3
300036b8:	f813 1f01 	ldrb.w	r1, [r3, #1]!
300036bc:	4402      	add	r2, r0
300036be:	4573      	cmp	r3, lr
300036c0:	f882 1300 	strb.w	r1, [r2, #768]	; 0x300
300036c4:	d1f6      	bne.n	300036b4 <BOOT_WakeFromPG+0x20>
300036c6:	6822      	ldr	r2, [r4, #0]
300036c8:	4b3d      	ldr	r3, [pc, #244]	; (300037c0 <BOOT_WakeFromPG+0x12c>)
300036ca:	f422 7280 	bic.w	r2, r2, #256	; 0x100
300036ce:	e9d4 5101 	ldrd	r5, r1, [r4, #4]
300036d2:	6002      	str	r2, [r0, #0]
300036d4:	6045      	str	r5, [r0, #4]
300036d6:	6081      	str	r1, [r0, #8]
300036d8:	6a59      	ldr	r1, [r3, #36]	; 0x24
300036da:	4a3c      	ldr	r2, [pc, #240]	; (300037cc <BOOT_WakeFromPG+0x138>)
300036dc:	f441 2170 	orr.w	r1, r1, #983040	; 0xf0000
300036e0:	4d3b      	ldr	r5, [pc, #236]	; (300037d0 <BOOT_WakeFromPG+0x13c>)
300036e2:	6259      	str	r1, [r3, #36]	; 0x24
300036e4:	6a51      	ldr	r1, [r2, #36]	; 0x24
300036e6:	f441 21e0 	orr.w	r1, r1, #458752	; 0x70000
300036ea:	6251      	str	r1, [r2, #36]	; 0x24
300036ec:	f8d3 1088 	ldr.w	r1, [r3, #136]	; 0x88
300036f0:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
300036f4:	f8c3 1088 	str.w	r1, [r3, #136]	; 0x88
300036f8:	f8d2 1088 	ldr.w	r1, [r2, #136]	; 0x88
300036fc:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
30003700:	f8c2 1088 	str.w	r1, [r2, #136]	; 0x88
30003704:	f8d3 208c 	ldr.w	r2, [r3, #140]	; 0x8c
30003708:	f442 6240 	orr.w	r2, r2, #3072	; 0xc00
3000370c:	f8c3 208c 	str.w	r2, [r3, #140]	; 0x8c
30003710:	f7ff fd5e 	bl	300031d0 <BOOT_CACHEWRR_Set>
30003714:	4b2f      	ldr	r3, [pc, #188]	; (300037d4 <BOOT_WakeFromPG+0x140>)
30003716:	6818      	ldr	r0, [r3, #0]
30003718:	f7ff fd88 	bl	3000322c <BOOT_TCMSet>
3000371c:	2201      	movs	r2, #1
3000371e:	492e      	ldr	r1, [pc, #184]	; (300037d8 <BOOT_WakeFromPG+0x144>)
30003720:	f04f 2040 	mov.w	r0, #1073758208	; 0x40004000
30003724:	47a8      	blx	r5
30003726:	4b2d      	ldr	r3, [pc, #180]	; (300037dc <BOOT_WakeFromPG+0x148>)
30003728:	4798      	blx	r3
3000372a:	4b2d      	ldr	r3, [pc, #180]	; (300037e0 <BOOT_WakeFromPG+0x14c>)
3000372c:	4798      	blx	r3
3000372e:	2801      	cmp	r0, #1
30003730:	4604      	mov	r4, r0
30003732:	d026      	beq.n	30003782 <BOOT_WakeFromPG+0xee>
30003734:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
30003738:	2201      	movs	r2, #1
3000373a:	f04f 4188 	mov.w	r1, #1140850688	; 0x44000000
3000373e:	47a8      	blx	r5
30003740:	4a28      	ldr	r2, [pc, #160]	; (300037e4 <BOOT_WakeFromPG+0x150>)
30003742:	f8d2 32fc 	ldr.w	r3, [r2, #764]	; 0x2fc
30003746:	f043 0302 	orr.w	r3, r3, #2
3000374a:	f8c2 32fc 	str.w	r3, [r2, #764]	; 0x2fc
3000374e:	f7ff ff43 	bl	300035d8 <BOOT_PSRAM_Init>
30003752:	2096      	movs	r0, #150	; 0x96
30003754:	4b24      	ldr	r3, [pc, #144]	; (300037e8 <BOOT_WakeFromPG+0x154>)
30003756:	4798      	blx	r3
30003758:	4b24      	ldr	r3, [pc, #144]	; (300037ec <BOOT_WakeFromPG+0x158>)
3000375a:	2000      	movs	r0, #0
3000375c:	4a1b      	ldr	r2, [pc, #108]	; (300037cc <BOOT_WakeFromPG+0x138>)
3000375e:	689c      	ldr	r4, [r3, #8]
30003760:	685b      	ldr	r3, [r3, #4]
30003762:	6063      	str	r3, [r4, #4]
30003764:	6094      	str	r4, [r2, #8]
30003766:	f005 fe31 	bl	300093cc <Fault_Hanlder_Redirect>
3000376a:	4b21      	ldr	r3, [pc, #132]	; (300037f0 <BOOT_WakeFromPG+0x15c>)
3000376c:	f383 8888 	msr	MSP_NS, r3
30003770:	f5a3 6300 	sub.w	r3, r3, #2048	; 0x800
30003774:	f383 8809 	msr	PSP, r3
30003778:	6860      	ldr	r0, [r4, #4]
3000377a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
3000377e:	f7ff bc6b 	b.w	30003058 <BOOT_NsStart>
30003782:	4b1c      	ldr	r3, [pc, #112]	; (300037f4 <BOOT_WakeFromPG+0x160>)
30003784:	2004      	movs	r0, #4
30003786:	491c      	ldr	r1, [pc, #112]	; (300037f8 <BOOT_WakeFromPG+0x164>)
30003788:	2249      	movs	r2, #73	; 0x49
3000378a:	f005 fe71 	bl	30009470 <rtk_log_write>
3000378e:	4622      	mov	r2, r4
30003790:	491a      	ldr	r1, [pc, #104]	; (300037fc <BOOT_WakeFromPG+0x168>)
30003792:	f04f 4082 	mov.w	r0, #1090519040	; 0x41000000
30003796:	47a8      	blx	r5
30003798:	4622      	mov	r2, r4
3000379a:	4919      	ldr	r1, [pc, #100]	; (30003800 <BOOT_WakeFromPG+0x16c>)
3000379c:	f04f 4081 	mov.w	r0, #1082130432	; 0x40800000
300037a0:	47a8      	blx	r5
300037a2:	f7ff fedb 	bl	3000355c <BOOT_DDR_Init>
300037a6:	4a0f      	ldr	r2, [pc, #60]	; (300037e4 <BOOT_WakeFromPG+0x150>)
300037a8:	f8d2 3290 	ldr.w	r3, [r2, #656]	; 0x290
300037ac:	f423 6340 	bic.w	r3, r3, #3072	; 0xc00
300037b0:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
300037b4:	f8c2 3290 	str.w	r3, [r2, #656]	; 0x290
300037b8:	e7ce      	b.n	30003758 <BOOT_WakeFromPG+0xc4>
300037ba:	bf00      	nop
300037bc:	3000de50 	.word	0x3000de50
300037c0:	e000ed00 	.word	0xe000ed00
300037c4:	3000de6b 	.word	0x3000de6b
300037c8:	e000e100 	.word	0xe000e100
300037cc:	e002ed00 	.word	0xe002ed00
300037d0:	0000b479 	.word	0x0000b479
300037d4:	3000d774 	.word	0x3000d774
300037d8:	40001000 	.word	0x40001000
300037dc:	0000d835 	.word	0x0000d835
300037e0:	30009599 	.word	0x30009599
300037e4:	42008000 	.word	0x42008000
300037e8:	00009b2d 	.word	0x00009b2d
300037ec:	60000020 	.word	0x60000020
300037f0:	2001c000 	.word	0x2001c000
300037f4:	3000b724 	.word	0x3000b724
300037f8:	3000b71c 	.word	0x3000b71c
300037fc:	40080000 	.word	0x40080000
30003800:	40040000 	.word	0x40040000

30003804 <BOOT_SCBConfig_HP>:
30003804:	4b0e      	ldr	r3, [pc, #56]	; (30003840 <BOOT_SCBConfig_HP+0x3c>)
30003806:	4a0f      	ldr	r2, [pc, #60]	; (30003844 <BOOT_SCBConfig_HP+0x40>)
30003808:	6a59      	ldr	r1, [r3, #36]	; 0x24
3000380a:	f441 2170 	orr.w	r1, r1, #983040	; 0xf0000
3000380e:	6259      	str	r1, [r3, #36]	; 0x24
30003810:	6a51      	ldr	r1, [r2, #36]	; 0x24
30003812:	f441 21e0 	orr.w	r1, r1, #458752	; 0x70000
30003816:	6251      	str	r1, [r2, #36]	; 0x24
30003818:	f8d3 1088 	ldr.w	r1, [r3, #136]	; 0x88
3000381c:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
30003820:	f8c3 1088 	str.w	r1, [r3, #136]	; 0x88
30003824:	f8d2 1088 	ldr.w	r1, [r2, #136]	; 0x88
30003828:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
3000382c:	f8c2 1088 	str.w	r1, [r2, #136]	; 0x88
30003830:	f8d3 208c 	ldr.w	r2, [r3, #140]	; 0x8c
30003834:	f442 6240 	orr.w	r2, r2, #3072	; 0xc00
30003838:	f8c3 208c 	str.w	r2, [r3, #140]	; 0x8c
3000383c:	4770      	bx	lr
3000383e:	bf00      	nop
30003840:	e000ed00 	.word	0xe000ed00
30003844:	e002ed00 	.word	0xe002ed00

30003848 <BOOT_SCBVTORBackup_HP>:
30003848:	4a02      	ldr	r2, [pc, #8]	; (30003854 <BOOT_SCBVTORBackup_HP+0xc>)
3000384a:	4b03      	ldr	r3, [pc, #12]	; (30003858 <BOOT_SCBVTORBackup_HP+0x10>)
3000384c:	6892      	ldr	r2, [r2, #8]
3000384e:	619a      	str	r2, [r3, #24]
30003850:	4770      	bx	lr
30003852:	bf00      	nop
30003854:	e000ed00 	.word	0xe000ed00
30003858:	3000de50 	.word	0x3000de50

3000385c <BOOT_SCBVTORReFill_HP>:
3000385c:	4a02      	ldr	r2, [pc, #8]	; (30003868 <BOOT_SCBVTORReFill_HP+0xc>)
3000385e:	4b03      	ldr	r3, [pc, #12]	; (3000386c <BOOT_SCBVTORReFill_HP+0x10>)
30003860:	6992      	ldr	r2, [r2, #24]
30003862:	609a      	str	r2, [r3, #8]
30003864:	4770      	bx	lr
30003866:	bf00      	nop
30003868:	3000de50 	.word	0x3000de50
3000386c:	e000ed00 	.word	0xe000ed00

30003870 <BOOT_NVICBackup_HP>:
30003870:	491a      	ldr	r1, [pc, #104]	; (300038dc <BOOT_NVICBackup_HP+0x6c>)
30003872:	f06f 001a 	mvn.w	r0, #26
30003876:	b410      	push	{r4}
30003878:	4c19      	ldr	r4, [pc, #100]	; (300038e0 <BOOT_NVICBackup_HP+0x70>)
3000387a:	680a      	ldr	r2, [r1, #0]
3000387c:	f104 031b 	add.w	r3, r4, #27
30003880:	1b00      	subs	r0, r0, r4
30003882:	6022      	str	r2, [r4, #0]
30003884:	f104 0c6b 	add.w	ip, r4, #107	; 0x6b
30003888:	684a      	ldr	r2, [r1, #4]
3000388a:	6062      	str	r2, [r4, #4]
3000388c:	688a      	ldr	r2, [r1, #8]
3000388e:	60a2      	str	r2, [r4, #8]
30003890:	18c2      	adds	r2, r0, r3
30003892:	440a      	add	r2, r1
30003894:	f892 2300 	ldrb.w	r2, [r2, #768]	; 0x300
30003898:	f803 2f01 	strb.w	r2, [r3, #1]!
3000389c:	4563      	cmp	r3, ip
3000389e:	d1f7      	bne.n	30003890 <BOOT_NVICBackup_HP+0x20>
300038a0:	4b10      	ldr	r3, [pc, #64]	; (300038e4 <BOOT_NVICBackup_HP+0x74>)
300038a2:	695b      	ldr	r3, [r3, #20]
300038a4:	03db      	lsls	r3, r3, #15
300038a6:	d512      	bpl.n	300038ce <BOOT_NVICBackup_HP+0x5e>
300038a8:	f014 011f 	ands.w	r1, r4, #31
300038ac:	4b0c      	ldr	r3, [pc, #48]	; (300038e0 <BOOT_NVICBackup_HP+0x70>)
300038ae:	d111      	bne.n	300038d4 <BOOT_NVICBackup_HP+0x64>
300038b0:	216c      	movs	r1, #108	; 0x6c
300038b2:	f3bf 8f4f 	dsb	sy
300038b6:	480b      	ldr	r0, [pc, #44]	; (300038e4 <BOOT_NVICBackup_HP+0x74>)
300038b8:	4419      	add	r1, r3
300038ba:	f8c0 3270 	str.w	r3, [r0, #624]	; 0x270
300038be:	3320      	adds	r3, #32
300038c0:	1aca      	subs	r2, r1, r3
300038c2:	2a00      	cmp	r2, #0
300038c4:	dcf9      	bgt.n	300038ba <BOOT_NVICBackup_HP+0x4a>
300038c6:	f3bf 8f4f 	dsb	sy
300038ca:	f3bf 8f6f 	isb	sy
300038ce:	f85d 4b04 	ldr.w	r4, [sp], #4
300038d2:	4770      	bx	lr
300038d4:	f024 031f 	bic.w	r3, r4, #31
300038d8:	316c      	adds	r1, #108	; 0x6c
300038da:	e7ea      	b.n	300038b2 <BOOT_NVICBackup_HP+0x42>
300038dc:	e000e100 	.word	0xe000e100
300038e0:	3000de50 	.word	0x3000de50
300038e4:	e000ed00 	.word	0xe000ed00

300038e8 <BOOT_NVICReFill_HP>:
300038e8:	b510      	push	{r4, lr}
300038ea:	f06f 0c1a 	mvn.w	ip, #26
300038ee:	4c0d      	ldr	r4, [pc, #52]	; (30003924 <BOOT_NVICReFill_HP+0x3c>)
300038f0:	480d      	ldr	r0, [pc, #52]	; (30003928 <BOOT_NVICReFill_HP+0x40>)
300038f2:	f104 031b 	add.w	r3, r4, #27
300038f6:	f104 0e6b 	add.w	lr, r4, #107	; 0x6b
300038fa:	ebac 0c04 	sub.w	ip, ip, r4
300038fe:	eb0c 0203 	add.w	r2, ip, r3
30003902:	f813 1f01 	ldrb.w	r1, [r3, #1]!
30003906:	4402      	add	r2, r0
30003908:	4573      	cmp	r3, lr
3000390a:	f882 1300 	strb.w	r1, [r2, #768]	; 0x300
3000390e:	d1f6      	bne.n	300038fe <BOOT_NVICReFill_HP+0x16>
30003910:	e9d4 3100 	ldrd	r3, r1, [r4]
30003914:	68a2      	ldr	r2, [r4, #8]
30003916:	f423 7380 	bic.w	r3, r3, #256	; 0x100
3000391a:	6003      	str	r3, [r0, #0]
3000391c:	6041      	str	r1, [r0, #4]
3000391e:	6082      	str	r2, [r0, #8]
30003920:	bd10      	pop	{r4, pc}
30003922:	bf00      	nop
30003924:	3000de50 	.word	0x3000de50
30003928:	e000e100 	.word	0xe000e100

3000392c <BOOT_LoadImages>:
3000392c:	b510      	push	{r4, lr}
3000392e:	4b07      	ldr	r3, [pc, #28]	; (3000394c <BOOT_LoadImages+0x20>)
30003930:	b082      	sub	sp, #8
30003932:	4798      	blx	r3
30003934:	4604      	mov	r4, r0
30003936:	4b06      	ldr	r3, [pc, #24]	; (30003950 <BOOT_LoadImages+0x24>)
30003938:	2004      	movs	r0, #4
3000393a:	3401      	adds	r4, #1
3000393c:	2249      	movs	r2, #73	; 0x49
3000393e:	4905      	ldr	r1, [pc, #20]	; (30003954 <BOOT_LoadImages+0x28>)
30003940:	9400      	str	r4, [sp, #0]
30003942:	f005 fd95 	bl	30009470 <rtk_log_write>
30003946:	2001      	movs	r0, #1
30003948:	b002      	add	sp, #8
3000394a:	bd10      	pop	{r4, pc}
3000394c:	30005585 	.word	0x30005585
30003950:	3000b734 	.word	0x3000b734
30003954:	3000b71c 	.word	0x3000b71c

30003958 <BOOT_ReasonSet>:
30003958:	b570      	push	{r4, r5, r6, lr}
3000395a:	4e7a      	ldr	r6, [pc, #488]	; (30003b44 <BOOT_ReasonSet+0x1ec>)
3000395c:	b082      	sub	sp, #8
3000395e:	2004      	movs	r0, #4
30003960:	4b79      	ldr	r3, [pc, #484]	; (30003b48 <BOOT_ReasonSet+0x1f0>)
30003962:	6a34      	ldr	r4, [r6, #32]
30003964:	2249      	movs	r2, #73	; 0x49
30003966:	4979      	ldr	r1, [pc, #484]	; (30003b4c <BOOT_ReasonSet+0x1f4>)
30003968:	f024 457f 	bic.w	r5, r4, #4278190080	; 0xff000000
3000396c:	6235      	str	r5, [r6, #32]
3000396e:	f8c6 5264 	str.w	r5, [r6, #612]	; 0x264
30003972:	9500      	str	r5, [sp, #0]
30003974:	f005 fd7c 	bl	30009470 <rtk_log_write>
30003978:	0220      	lsls	r0, r4, #8
3000397a:	f100 80d9 	bmi.w	30003b30 <BOOT_ReasonSet+0x1d8>
3000397e:	0261      	lsls	r1, r4, #9
30003980:	f100 80cd 	bmi.w	30003b1e <BOOT_ReasonSet+0x1c6>
30003984:	02a2      	lsls	r2, r4, #10
30003986:	f100 80c1 	bmi.w	30003b0c <BOOT_ReasonSet+0x1b4>
3000398a:	02e3      	lsls	r3, r4, #11
3000398c:	f100 80b5 	bmi.w	30003afa <BOOT_ReasonSet+0x1a2>
30003990:	0366      	lsls	r6, r4, #13
30003992:	f100 80a9 	bmi.w	30003ae8 <BOOT_ReasonSet+0x190>
30003996:	03a0      	lsls	r0, r4, #14
30003998:	f100 809d 	bmi.w	30003ad6 <BOOT_ReasonSet+0x17e>
3000399c:	03e1      	lsls	r1, r4, #15
3000399e:	f100 8091 	bmi.w	30003ac4 <BOOT_ReasonSet+0x16c>
300039a2:	0422      	lsls	r2, r4, #16
300039a4:	f100 8085 	bmi.w	30003ab2 <BOOT_ReasonSet+0x15a>
300039a8:	0463      	lsls	r3, r4, #17
300039aa:	d479      	bmi.n	30003aa0 <BOOT_ReasonSet+0x148>
300039ac:	04a6      	lsls	r6, r4, #18
300039ae:	d46e      	bmi.n	30003a8e <BOOT_ReasonSet+0x136>
300039b0:	04e0      	lsls	r0, r4, #19
300039b2:	d463      	bmi.n	30003a7c <BOOT_ReasonSet+0x124>
300039b4:	0521      	lsls	r1, r4, #20
300039b6:	d458      	bmi.n	30003a6a <BOOT_ReasonSet+0x112>
300039b8:	0562      	lsls	r2, r4, #21
300039ba:	d44d      	bmi.n	30003a58 <BOOT_ReasonSet+0x100>
300039bc:	05a3      	lsls	r3, r4, #22
300039be:	d442      	bmi.n	30003a46 <BOOT_ReasonSet+0xee>
300039c0:	05e6      	lsls	r6, r4, #23
300039c2:	d437      	bmi.n	30003a34 <BOOT_ReasonSet+0xdc>
300039c4:	0620      	lsls	r0, r4, #24
300039c6:	d42c      	bmi.n	30003a22 <BOOT_ReasonSet+0xca>
300039c8:	06a1      	lsls	r1, r4, #26
300039ca:	d421      	bmi.n	30003a10 <BOOT_ReasonSet+0xb8>
300039cc:	06e2      	lsls	r2, r4, #27
300039ce:	d416      	bmi.n	300039fe <BOOT_ReasonSet+0xa6>
300039d0:	0723      	lsls	r3, r4, #28
300039d2:	d40b      	bmi.n	300039ec <BOOT_ReasonSet+0x94>
300039d4:	b945      	cbnz	r5, 300039e8 <BOOT_ReasonSet+0x90>
300039d6:	4b5e      	ldr	r3, [pc, #376]	; (30003b50 <BOOT_ReasonSet+0x1f8>)
300039d8:	2249      	movs	r2, #73	; 0x49
300039da:	495e      	ldr	r1, [pc, #376]	; (30003b54 <BOOT_ReasonSet+0x1fc>)
300039dc:	2004      	movs	r0, #4
300039de:	b002      	add	sp, #8
300039e0:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
300039e4:	f005 bd6c 	b.w	300094c0 <rtk_log_write_nano>
300039e8:	4b5b      	ldr	r3, [pc, #364]	; (30003b58 <BOOT_ReasonSet+0x200>)
300039ea:	e7f5      	b.n	300039d8 <BOOT_ReasonSet+0x80>
300039ec:	485b      	ldr	r0, [pc, #364]	; (30003b5c <BOOT_ReasonSet+0x204>)
300039ee:	2249      	movs	r2, #73	; 0x49
300039f0:	4b5b      	ldr	r3, [pc, #364]	; (30003b60 <BOOT_ReasonSet+0x208>)
300039f2:	9000      	str	r0, [sp, #0]
300039f4:	2004      	movs	r0, #4
300039f6:	4957      	ldr	r1, [pc, #348]	; (30003b54 <BOOT_ReasonSet+0x1fc>)
300039f8:	f005 fd62 	bl	300094c0 <rtk_log_write_nano>
300039fc:	e7ea      	b.n	300039d4 <BOOT_ReasonSet+0x7c>
300039fe:	4959      	ldr	r1, [pc, #356]	; (30003b64 <BOOT_ReasonSet+0x20c>)
30003a00:	2249      	movs	r2, #73	; 0x49
30003a02:	4b57      	ldr	r3, [pc, #348]	; (30003b60 <BOOT_ReasonSet+0x208>)
30003a04:	2004      	movs	r0, #4
30003a06:	9100      	str	r1, [sp, #0]
30003a08:	4952      	ldr	r1, [pc, #328]	; (30003b54 <BOOT_ReasonSet+0x1fc>)
30003a0a:	f005 fd59 	bl	300094c0 <rtk_log_write_nano>
30003a0e:	e7df      	b.n	300039d0 <BOOT_ReasonSet+0x78>
30003a10:	4955      	ldr	r1, [pc, #340]	; (30003b68 <BOOT_ReasonSet+0x210>)
30003a12:	2249      	movs	r2, #73	; 0x49
30003a14:	4b52      	ldr	r3, [pc, #328]	; (30003b60 <BOOT_ReasonSet+0x208>)
30003a16:	2004      	movs	r0, #4
30003a18:	9100      	str	r1, [sp, #0]
30003a1a:	494e      	ldr	r1, [pc, #312]	; (30003b54 <BOOT_ReasonSet+0x1fc>)
30003a1c:	f005 fd50 	bl	300094c0 <rtk_log_write_nano>
30003a20:	e7d4      	b.n	300039cc <BOOT_ReasonSet+0x74>
30003a22:	4952      	ldr	r1, [pc, #328]	; (30003b6c <BOOT_ReasonSet+0x214>)
30003a24:	2249      	movs	r2, #73	; 0x49
30003a26:	4b4e      	ldr	r3, [pc, #312]	; (30003b60 <BOOT_ReasonSet+0x208>)
30003a28:	2004      	movs	r0, #4
30003a2a:	9100      	str	r1, [sp, #0]
30003a2c:	4949      	ldr	r1, [pc, #292]	; (30003b54 <BOOT_ReasonSet+0x1fc>)
30003a2e:	f005 fd47 	bl	300094c0 <rtk_log_write_nano>
30003a32:	e7c9      	b.n	300039c8 <BOOT_ReasonSet+0x70>
30003a34:	494e      	ldr	r1, [pc, #312]	; (30003b70 <BOOT_ReasonSet+0x218>)
30003a36:	2249      	movs	r2, #73	; 0x49
30003a38:	4b49      	ldr	r3, [pc, #292]	; (30003b60 <BOOT_ReasonSet+0x208>)
30003a3a:	2004      	movs	r0, #4
30003a3c:	9100      	str	r1, [sp, #0]
30003a3e:	4945      	ldr	r1, [pc, #276]	; (30003b54 <BOOT_ReasonSet+0x1fc>)
30003a40:	f005 fd3e 	bl	300094c0 <rtk_log_write_nano>
30003a44:	e7be      	b.n	300039c4 <BOOT_ReasonSet+0x6c>
30003a46:	494b      	ldr	r1, [pc, #300]	; (30003b74 <BOOT_ReasonSet+0x21c>)
30003a48:	2249      	movs	r2, #73	; 0x49
30003a4a:	4b45      	ldr	r3, [pc, #276]	; (30003b60 <BOOT_ReasonSet+0x208>)
30003a4c:	2004      	movs	r0, #4
30003a4e:	9100      	str	r1, [sp, #0]
30003a50:	4940      	ldr	r1, [pc, #256]	; (30003b54 <BOOT_ReasonSet+0x1fc>)
30003a52:	f005 fd35 	bl	300094c0 <rtk_log_write_nano>
30003a56:	e7b3      	b.n	300039c0 <BOOT_ReasonSet+0x68>
30003a58:	4947      	ldr	r1, [pc, #284]	; (30003b78 <BOOT_ReasonSet+0x220>)
30003a5a:	2249      	movs	r2, #73	; 0x49
30003a5c:	4b40      	ldr	r3, [pc, #256]	; (30003b60 <BOOT_ReasonSet+0x208>)
30003a5e:	2004      	movs	r0, #4
30003a60:	9100      	str	r1, [sp, #0]
30003a62:	493c      	ldr	r1, [pc, #240]	; (30003b54 <BOOT_ReasonSet+0x1fc>)
30003a64:	f005 fd2c 	bl	300094c0 <rtk_log_write_nano>
30003a68:	e7a8      	b.n	300039bc <BOOT_ReasonSet+0x64>
30003a6a:	4944      	ldr	r1, [pc, #272]	; (30003b7c <BOOT_ReasonSet+0x224>)
30003a6c:	2249      	movs	r2, #73	; 0x49
30003a6e:	4b3c      	ldr	r3, [pc, #240]	; (30003b60 <BOOT_ReasonSet+0x208>)
30003a70:	2004      	movs	r0, #4
30003a72:	9100      	str	r1, [sp, #0]
30003a74:	4937      	ldr	r1, [pc, #220]	; (30003b54 <BOOT_ReasonSet+0x1fc>)
30003a76:	f005 fd23 	bl	300094c0 <rtk_log_write_nano>
30003a7a:	e79d      	b.n	300039b8 <BOOT_ReasonSet+0x60>
30003a7c:	4940      	ldr	r1, [pc, #256]	; (30003b80 <BOOT_ReasonSet+0x228>)
30003a7e:	2249      	movs	r2, #73	; 0x49
30003a80:	4b37      	ldr	r3, [pc, #220]	; (30003b60 <BOOT_ReasonSet+0x208>)
30003a82:	2004      	movs	r0, #4
30003a84:	9100      	str	r1, [sp, #0]
30003a86:	4933      	ldr	r1, [pc, #204]	; (30003b54 <BOOT_ReasonSet+0x1fc>)
30003a88:	f005 fd1a 	bl	300094c0 <rtk_log_write_nano>
30003a8c:	e792      	b.n	300039b4 <BOOT_ReasonSet+0x5c>
30003a8e:	493d      	ldr	r1, [pc, #244]	; (30003b84 <BOOT_ReasonSet+0x22c>)
30003a90:	2249      	movs	r2, #73	; 0x49
30003a92:	4b33      	ldr	r3, [pc, #204]	; (30003b60 <BOOT_ReasonSet+0x208>)
30003a94:	2004      	movs	r0, #4
30003a96:	9100      	str	r1, [sp, #0]
30003a98:	492e      	ldr	r1, [pc, #184]	; (30003b54 <BOOT_ReasonSet+0x1fc>)
30003a9a:	f005 fd11 	bl	300094c0 <rtk_log_write_nano>
30003a9e:	e787      	b.n	300039b0 <BOOT_ReasonSet+0x58>
30003aa0:	4939      	ldr	r1, [pc, #228]	; (30003b88 <BOOT_ReasonSet+0x230>)
30003aa2:	2249      	movs	r2, #73	; 0x49
30003aa4:	4b2e      	ldr	r3, [pc, #184]	; (30003b60 <BOOT_ReasonSet+0x208>)
30003aa6:	2004      	movs	r0, #4
30003aa8:	9100      	str	r1, [sp, #0]
30003aaa:	492a      	ldr	r1, [pc, #168]	; (30003b54 <BOOT_ReasonSet+0x1fc>)
30003aac:	f005 fd08 	bl	300094c0 <rtk_log_write_nano>
30003ab0:	e77c      	b.n	300039ac <BOOT_ReasonSet+0x54>
30003ab2:	4936      	ldr	r1, [pc, #216]	; (30003b8c <BOOT_ReasonSet+0x234>)
30003ab4:	2249      	movs	r2, #73	; 0x49
30003ab6:	4b2a      	ldr	r3, [pc, #168]	; (30003b60 <BOOT_ReasonSet+0x208>)
30003ab8:	2004      	movs	r0, #4
30003aba:	9100      	str	r1, [sp, #0]
30003abc:	4925      	ldr	r1, [pc, #148]	; (30003b54 <BOOT_ReasonSet+0x1fc>)
30003abe:	f005 fcff 	bl	300094c0 <rtk_log_write_nano>
30003ac2:	e771      	b.n	300039a8 <BOOT_ReasonSet+0x50>
30003ac4:	4932      	ldr	r1, [pc, #200]	; (30003b90 <BOOT_ReasonSet+0x238>)
30003ac6:	2249      	movs	r2, #73	; 0x49
30003ac8:	4b25      	ldr	r3, [pc, #148]	; (30003b60 <BOOT_ReasonSet+0x208>)
30003aca:	2004      	movs	r0, #4
30003acc:	9100      	str	r1, [sp, #0]
30003ace:	4921      	ldr	r1, [pc, #132]	; (30003b54 <BOOT_ReasonSet+0x1fc>)
30003ad0:	f005 fcf6 	bl	300094c0 <rtk_log_write_nano>
30003ad4:	e765      	b.n	300039a2 <BOOT_ReasonSet+0x4a>
30003ad6:	492f      	ldr	r1, [pc, #188]	; (30003b94 <BOOT_ReasonSet+0x23c>)
30003ad8:	2249      	movs	r2, #73	; 0x49
30003ada:	4b21      	ldr	r3, [pc, #132]	; (30003b60 <BOOT_ReasonSet+0x208>)
30003adc:	2004      	movs	r0, #4
30003ade:	9100      	str	r1, [sp, #0]
30003ae0:	491c      	ldr	r1, [pc, #112]	; (30003b54 <BOOT_ReasonSet+0x1fc>)
30003ae2:	f005 fced 	bl	300094c0 <rtk_log_write_nano>
30003ae6:	e759      	b.n	3000399c <BOOT_ReasonSet+0x44>
30003ae8:	492b      	ldr	r1, [pc, #172]	; (30003b98 <BOOT_ReasonSet+0x240>)
30003aea:	2249      	movs	r2, #73	; 0x49
30003aec:	4b1c      	ldr	r3, [pc, #112]	; (30003b60 <BOOT_ReasonSet+0x208>)
30003aee:	2004      	movs	r0, #4
30003af0:	9100      	str	r1, [sp, #0]
30003af2:	4918      	ldr	r1, [pc, #96]	; (30003b54 <BOOT_ReasonSet+0x1fc>)
30003af4:	f005 fce4 	bl	300094c0 <rtk_log_write_nano>
30003af8:	e74d      	b.n	30003996 <BOOT_ReasonSet+0x3e>
30003afa:	4928      	ldr	r1, [pc, #160]	; (30003b9c <BOOT_ReasonSet+0x244>)
30003afc:	2249      	movs	r2, #73	; 0x49
30003afe:	4b18      	ldr	r3, [pc, #96]	; (30003b60 <BOOT_ReasonSet+0x208>)
30003b00:	2004      	movs	r0, #4
30003b02:	9100      	str	r1, [sp, #0]
30003b04:	4913      	ldr	r1, [pc, #76]	; (30003b54 <BOOT_ReasonSet+0x1fc>)
30003b06:	f005 fcdb 	bl	300094c0 <rtk_log_write_nano>
30003b0a:	e741      	b.n	30003990 <BOOT_ReasonSet+0x38>
30003b0c:	4924      	ldr	r1, [pc, #144]	; (30003ba0 <BOOT_ReasonSet+0x248>)
30003b0e:	2249      	movs	r2, #73	; 0x49
30003b10:	4b13      	ldr	r3, [pc, #76]	; (30003b60 <BOOT_ReasonSet+0x208>)
30003b12:	2004      	movs	r0, #4
30003b14:	9100      	str	r1, [sp, #0]
30003b16:	490f      	ldr	r1, [pc, #60]	; (30003b54 <BOOT_ReasonSet+0x1fc>)
30003b18:	f005 fcd2 	bl	300094c0 <rtk_log_write_nano>
30003b1c:	e735      	b.n	3000398a <BOOT_ReasonSet+0x32>
30003b1e:	4921      	ldr	r1, [pc, #132]	; (30003ba4 <BOOT_ReasonSet+0x24c>)
30003b20:	2249      	movs	r2, #73	; 0x49
30003b22:	4b0f      	ldr	r3, [pc, #60]	; (30003b60 <BOOT_ReasonSet+0x208>)
30003b24:	2004      	movs	r0, #4
30003b26:	9100      	str	r1, [sp, #0]
30003b28:	490a      	ldr	r1, [pc, #40]	; (30003b54 <BOOT_ReasonSet+0x1fc>)
30003b2a:	f005 fcc9 	bl	300094c0 <rtk_log_write_nano>
30003b2e:	e729      	b.n	30003984 <BOOT_ReasonSet+0x2c>
30003b30:	491d      	ldr	r1, [pc, #116]	; (30003ba8 <BOOT_ReasonSet+0x250>)
30003b32:	2249      	movs	r2, #73	; 0x49
30003b34:	4b0a      	ldr	r3, [pc, #40]	; (30003b60 <BOOT_ReasonSet+0x208>)
30003b36:	2004      	movs	r0, #4
30003b38:	9100      	str	r1, [sp, #0]
30003b3a:	4906      	ldr	r1, [pc, #24]	; (30003b54 <BOOT_ReasonSet+0x1fc>)
30003b3c:	f005 fcc0 	bl	300094c0 <rtk_log_write_nano>
30003b40:	e71d      	b.n	3000397e <BOOT_ReasonSet+0x26>
30003b42:	bf00      	nop
30003b44:	42008000 	.word	0x42008000
30003b48:	3000b74c 	.word	0x3000b74c
30003b4c:	3000b71c 	.word	0x3000b71c
30003b50:	3000b834 	.word	0x3000b834
30003b54:	3000b768 	.word	0x3000b768
30003b58:	3000b848 	.word	0x3000b848
30003b5c:	3000b830 	.word	0x3000b830
30003b60:	3000b764 	.word	0x3000b764
30003b64:	3000b82c 	.word	0x3000b82c
30003b68:	3000b824 	.word	0x3000b824
30003b6c:	3000b81c 	.word	0x3000b81c
30003b70:	3000b814 	.word	0x3000b814
30003b74:	3000b80c 	.word	0x3000b80c
30003b78:	3000b804 	.word	0x3000b804
30003b7c:	3000b7fc 	.word	0x3000b7fc
30003b80:	3000b7f4 	.word	0x3000b7f4
30003b84:	3000b7ec 	.word	0x3000b7ec
30003b88:	3000b7e4 	.word	0x3000b7e4
30003b8c:	3000b7dc 	.word	0x3000b7dc
30003b90:	3000b7cc 	.word	0x3000b7cc
30003b94:	3000b7bc 	.word	0x3000b7bc
30003b98:	3000b7ac 	.word	0x3000b7ac
30003b9c:	3000b79c 	.word	0x3000b79c
30003ba0:	3000b78c 	.word	0x3000b78c
30003ba4:	3000b77c 	.word	0x3000b77c
30003ba8:	3000b76c 	.word	0x3000b76c

30003bac <BOOT_Enable_KM0>:
30003bac:	b510      	push	{r4, lr}
30003bae:	4c12      	ldr	r4, [pc, #72]	; (30003bf8 <BOOT_Enable_KM0+0x4c>)
30003bb0:	47a0      	blx	r4
30003bb2:	b110      	cbz	r0, 30003bba <BOOT_Enable_KM0+0xe>
30003bb4:	4b11      	ldr	r3, [pc, #68]	; (30003bfc <BOOT_Enable_KM0+0x50>)
30003bb6:	4798      	blx	r3
30003bb8:	b1a8      	cbz	r0, 30003be6 <BOOT_Enable_KM0+0x3a>
30003bba:	47a0      	blx	r4
30003bbc:	b940      	cbnz	r0, 30003bd0 <BOOT_Enable_KM0+0x24>
30003bbe:	4a10      	ldr	r2, [pc, #64]	; (30003c00 <BOOT_Enable_KM0+0x54>)
30003bc0:	f8d2 3268 	ldr.w	r3, [r2, #616]	; 0x268
30003bc4:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
30003bc8:	f8c2 3268 	str.w	r3, [r2, #616]	; 0x268
30003bcc:	bf40      	sev
30003bce:	bd10      	pop	{r4, pc}
30003bd0:	4b0a      	ldr	r3, [pc, #40]	; (30003bfc <BOOT_Enable_KM0+0x50>)
30003bd2:	4798      	blx	r3
30003bd4:	2800      	cmp	r0, #0
30003bd6:	d0f2      	beq.n	30003bbe <BOOT_Enable_KM0+0x12>
30003bd8:	4b0a      	ldr	r3, [pc, #40]	; (30003c04 <BOOT_Enable_KM0+0x58>)
30003bda:	2249      	movs	r2, #73	; 0x49
30003bdc:	490a      	ldr	r1, [pc, #40]	; (30003c08 <BOOT_Enable_KM0+0x5c>)
30003bde:	2004      	movs	r0, #4
30003be0:	f005 fc46 	bl	30009470 <rtk_log_write>
30003be4:	e7eb      	b.n	30003bbe <BOOT_Enable_KM0+0x12>
30003be6:	4b09      	ldr	r3, [pc, #36]	; (30003c0c <BOOT_Enable_KM0+0x60>)
30003be8:	2249      	movs	r2, #73	; 0x49
30003bea:	4907      	ldr	r1, [pc, #28]	; (30003c08 <BOOT_Enable_KM0+0x5c>)
30003bec:	2004      	movs	r0, #4
30003bee:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
30003bf2:	f005 bc3d 	b.w	30009470 <rtk_log_write>
30003bf6:	bf00      	nop
30003bf8:	0000c09d 	.word	0x0000c09d
30003bfc:	0000c0ad 	.word	0x0000c0ad
30003c00:	42008000 	.word	0x42008000
30003c04:	3000b878 	.word	0x3000b878
30003c08:	3000b71c 	.word	0x3000b71c
30003c0c:	3000b854 	.word	0x3000b854

30003c10 <BOOT_AP_Clk_Get>:
30003c10:	4a06      	ldr	r2, [pc, #24]	; (30003c2c <BOOT_AP_Clk_Get+0x1c>)
30003c12:	6913      	ldr	r3, [r2, #16]
30003c14:	2b00      	cmp	r3, #0
30003c16:	db03      	blt.n	30003c20 <BOOT_AP_Clk_Get+0x10>
30003c18:	6810      	ldr	r0, [r2, #0]
30003c1a:	fbb0 f0f3 	udiv	r0, r0, r3
30003c1e:	4770      	bx	lr
30003c20:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
30003c24:	6850      	ldr	r0, [r2, #4]
30003c26:	fbb0 f0f3 	udiv	r0, r0, r3
30003c2a:	4770      	bx	lr
30003c2c:	3000d8fc 	.word	0x3000d8fc

30003c30 <BOOT_SOC_ClkSet>:
30003c30:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30003c34:	4f76      	ldr	r7, [pc, #472]	; (30003e10 <BOOT_SOC_ClkSet+0x1e0>)
30003c36:	b083      	sub	sp, #12
30003c38:	693b      	ldr	r3, [r7, #16]
30003c3a:	683a      	ldr	r2, [r7, #0]
30003c3c:	2b00      	cmp	r3, #0
30003c3e:	f2c0 8097 	blt.w	30003d70 <BOOT_SOC_ClkSet+0x140>
30003c42:	fbb2 f8f3 	udiv	r8, r2, r3
30003c46:	4b73      	ldr	r3, [pc, #460]	; (30003e14 <BOOT_SOC_ClkSet+0x1e4>)
30003c48:	68f9      	ldr	r1, [r7, #12]
30003c4a:	fba3 0302 	umull	r0, r3, r3, r2
30003c4e:	09de      	lsrs	r6, r3, #7
30003c50:	095d      	lsrs	r5, r3, #5
30003c52:	099b      	lsrs	r3, r3, #6
30003c54:	3e01      	subs	r6, #1
30003c56:	3d01      	subs	r5, #1
30003c58:	1e5c      	subs	r4, r3, #1
30003c5a:	fbb2 f9f1 	udiv	r9, r2, r1
30003c5e:	4a6e      	ldr	r2, [pc, #440]	; (30003e18 <BOOT_SOC_ClkSet+0x1e8>)
30003c60:	4790      	blx	r2
30003c62:	2801      	cmp	r0, #1
30003c64:	f000 8081 	beq.w	30003d6a <BOOT_SOC_ClkSet+0x13a>
30003c68:	f8d7 a008 	ldr.w	sl, [r7, #8]
30003c6c:	f1ba 0f03 	cmp.w	sl, #3
30003c70:	f000 8098 	beq.w	30003da4 <BOOT_SOC_ClkSet+0x174>
30003c74:	4b69      	ldr	r3, [pc, #420]	; (30003e1c <BOOT_SOC_ClkSet+0x1ec>)
30003c76:	2201      	movs	r2, #1
30003c78:	f1b9 0ffa 	cmp.w	r9, #250	; 0xfa
30003c7c:	f883 210c 	strb.w	r2, [r3, #268]	; 0x10c
30003c80:	f200 80bb 	bhi.w	30003dfa <BOOT_SOC_ClkSet+0x1ca>
30003c84:	f8df a1d8 	ldr.w	sl, [pc, #472]	; 30003e60 <BOOT_SOC_ClkSet+0x230>
30003c88:	f89a 3000 	ldrb.w	r3, [sl]
30003c8c:	2b01      	cmp	r3, #1
30003c8e:	d103      	bne.n	30003c98 <BOOT_SOC_ClkSet+0x68>
30003c90:	f5b8 7f66 	cmp.w	r8, #920	; 0x398
30003c94:	f200 80a3 	bhi.w	30003dde <BOOT_SOC_ClkSet+0x1ae>
30003c98:	2001      	movs	r0, #1
30003c9a:	f8df b1c8 	ldr.w	fp, [pc, #456]	; 30003e64 <BOOT_SOC_ClkSet+0x234>
30003c9e:	f004 fe5f 	bl	30008960 <CLK_SWITCH_XTAL>
30003ca2:	6838      	ldr	r0, [r7, #0]
30003ca4:	4b5e      	ldr	r3, [pc, #376]	; (30003e20 <BOOT_SOC_ClkSet+0x1f0>)
30003ca6:	0236      	lsls	r6, r6, #8
30003ca8:	fb0b f000 	mul.w	r0, fp, r0
30003cac:	032d      	lsls	r5, r5, #12
30003cae:	4798      	blx	r3
30003cb0:	495c      	ldr	r1, [pc, #368]	; (30003e24 <BOOT_SOC_ClkSet+0x1f4>)
30003cb2:	68fa      	ldr	r2, [r7, #12]
30003cb4:	0523      	lsls	r3, r4, #20
30003cb6:	485c      	ldr	r0, [pc, #368]	; (30003e28 <BOOT_SOC_ClkSet+0x1f8>)
30003cb8:	f406 66e0 	and.w	r6, r6, #1792	; 0x700
30003cbc:	f8d1 4228 	ldr.w	r4, [r1, #552]	; 0x228
30003cc0:	3a01      	subs	r2, #1
30003cc2:	b2ad      	uxth	r5, r5
30003cc4:	f403 03e0 	and.w	r3, r3, #7340032	; 0x700000
30003cc8:	4020      	ands	r0, r4
30003cca:	f002 0207 	and.w	r2, r2, #7
30003cce:	4302      	orrs	r2, r0
30003cd0:	2000      	movs	r0, #0
30003cd2:	4316      	orrs	r6, r2
30003cd4:	4335      	orrs	r5, r6
30003cd6:	432b      	orrs	r3, r5
30003cd8:	f8c1 3228 	str.w	r3, [r1, #552]	; 0x228
30003cdc:	f004 fe40 	bl	30008960 <CLK_SWITCH_XTAL>
30003ce0:	f89a 3000 	ldrb.w	r3, [sl]
30003ce4:	2b00      	cmp	r3, #0
30003ce6:	d040      	beq.n	30003d6a <BOOT_SOC_ClkSet+0x13a>
30003ce8:	693b      	ldr	r3, [r7, #16]
30003cea:	2b00      	cmp	r3, #0
30003cec:	db46      	blt.n	30003d7c <BOOT_SOC_ClkSet+0x14c>
30003cee:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
30003cf2:	6913      	ldr	r3, [r2, #16]
30003cf4:	f043 030c 	orr.w	r3, r3, #12
30003cf8:	6113      	str	r3, [r2, #16]
30003cfa:	2200      	movs	r2, #0
30003cfc:	4b47      	ldr	r3, [pc, #284]	; (30003e1c <BOOT_SOC_ClkSet+0x1ec>)
30003cfe:	f883 210d 	strb.w	r2, [r3, #269]	; 0x10d
30003d02:	f04f 4182 	mov.w	r1, #1090519040	; 0x41000000
30003d06:	693b      	ldr	r3, [r7, #16]
30003d08:	690a      	ldr	r2, [r1, #16]
30003d0a:	3b01      	subs	r3, #1
30003d0c:	f022 0203 	bic.w	r2, r2, #3
30003d10:	f003 0303 	and.w	r3, r3, #3
30003d14:	4313      	orrs	r3, r2
30003d16:	4a43      	ldr	r2, [pc, #268]	; (30003e24 <BOOT_SOC_ClkSet+0x1f4>)
30003d18:	610b      	str	r3, [r1, #16]
30003d1a:	f8d2 3224 	ldr.w	r3, [r2, #548]	; 0x224
30003d1e:	079b      	lsls	r3, r3, #30
30003d20:	d139      	bne.n	30003d96 <BOOT_SOC_ClkSet+0x166>
30003d22:	2404      	movs	r4, #4
30003d24:	4b41      	ldr	r3, [pc, #260]	; (30003e2c <BOOT_SOC_ClkSet+0x1fc>)
30003d26:	2249      	movs	r2, #73	; 0x49
30003d28:	4941      	ldr	r1, [pc, #260]	; (30003e30 <BOOT_SOC_ClkSet+0x200>)
30003d2a:	2004      	movs	r0, #4
30003d2c:	f8cd 9000 	str.w	r9, [sp]
30003d30:	f005 fb9e 	bl	30009470 <rtk_log_write>
30003d34:	4b3f      	ldr	r3, [pc, #252]	; (30003e34 <BOOT_SOC_ClkSet+0x204>)
30003d36:	2249      	movs	r2, #73	; 0x49
30003d38:	493d      	ldr	r1, [pc, #244]	; (30003e30 <BOOT_SOC_ClkSet+0x200>)
30003d3a:	2004      	movs	r0, #4
30003d3c:	f8cd 8000 	str.w	r8, [sp]
30003d40:	f005 fb96 	bl	30009470 <rtk_log_write>
30003d44:	493a      	ldr	r1, [pc, #232]	; (30003e30 <BOOT_SOC_ClkSet+0x200>)
30003d46:	2249      	movs	r2, #73	; 0x49
30003d48:	4b3b      	ldr	r3, [pc, #236]	; (30003e38 <BOOT_SOC_ClkSet+0x208>)
30003d4a:	2004      	movs	r0, #4
30003d4c:	9400      	str	r4, [sp, #0]
30003d4e:	f005 fb8f 	bl	30009470 <rtk_log_write>
30003d52:	4b3a      	ldr	r3, [pc, #232]	; (30003e3c <BOOT_SOC_ClkSet+0x20c>)
30003d54:	2000      	movs	r0, #0
30003d56:	4798      	blx	r3
30003d58:	4601      	mov	r1, r0
30003d5a:	4b39      	ldr	r3, [pc, #228]	; (30003e40 <BOOT_SOC_ClkSet+0x210>)
30003d5c:	2000      	movs	r0, #0
30003d5e:	f021 01ff 	bic.w	r1, r1, #255	; 0xff
30003d62:	b003      	add	sp, #12
30003d64:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30003d68:	4718      	bx	r3
30003d6a:	b003      	add	sp, #12
30003d6c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30003d70:	f023 4800 	bic.w	r8, r3, #2147483648	; 0x80000000
30003d74:	687b      	ldr	r3, [r7, #4]
30003d76:	fbb3 f8f8 	udiv	r8, r3, r8
30003d7a:	e764      	b.n	30003c46 <BOOT_SOC_ClkSet+0x16>
30003d7c:	6878      	ldr	r0, [r7, #4]
30003d7e:	4b31      	ldr	r3, [pc, #196]	; (30003e44 <BOOT_SOC_ClkSet+0x214>)
30003d80:	fb0b f000 	mul.w	r0, fp, r0
30003d84:	4798      	blx	r3
30003d86:	4b30      	ldr	r3, [pc, #192]	; (30003e48 <BOOT_SOC_ClkSet+0x218>)
30003d88:	2001      	movs	r0, #1
30003d8a:	4798      	blx	r3
30003d8c:	4b23      	ldr	r3, [pc, #140]	; (30003e1c <BOOT_SOC_ClkSet+0x1ec>)
30003d8e:	2201      	movs	r2, #1
30003d90:	f883 210d 	strb.w	r2, [r3, #269]	; 0x10d
30003d94:	e7b5      	b.n	30003d02 <BOOT_SOC_ClkSet+0xd2>
30003d96:	4c2d      	ldr	r4, [pc, #180]	; (30003e4c <BOOT_SOC_ClkSet+0x21c>)
30003d98:	4b2d      	ldr	r3, [pc, #180]	; (30003e50 <BOOT_SOC_ClkSet+0x220>)
30003d9a:	4798      	blx	r3
30003d9c:	fba4 3400 	umull	r3, r4, r4, r0
30003da0:	0ca4      	lsrs	r4, r4, #18
30003da2:	e7bf      	b.n	30003d24 <BOOT_SOC_ClkSet+0xf4>
30003da4:	4b2b      	ldr	r3, [pc, #172]	; (30003e54 <BOOT_SOC_ClkSet+0x224>)
30003da6:	2001      	movs	r0, #1
30003da8:	4798      	blx	r3
30003daa:	4b1c      	ldr	r3, [pc, #112]	; (30003e1c <BOOT_SOC_ClkSet+0x1ec>)
30003dac:	f5b9 7fa7 	cmp.w	r9, #334	; 0x14e
30003db0:	f883 a10c 	strb.w	sl, [r3, #268]	; 0x10c
30003db4:	d226      	bcs.n	30003e04 <BOOT_SOC_ClkSet+0x1d4>
30003db6:	f8df a0a8 	ldr.w	sl, [pc, #168]	; 30003e60 <BOOT_SOC_ClkSet+0x230>
30003dba:	f89a 3000 	ldrb.w	r3, [sl]
30003dbe:	2b01      	cmp	r3, #1
30003dc0:	f47f af6a 	bne.w	30003c98 <BOOT_SOC_ClkSet+0x68>
30003dc4:	4b24      	ldr	r3, [pc, #144]	; (30003e58 <BOOT_SOC_ClkSet+0x228>)
30003dc6:	4798      	blx	r3
30003dc8:	2802      	cmp	r0, #2
30003dca:	d00d      	beq.n	30003de8 <BOOT_SOC_ClkSet+0x1b8>
30003dcc:	f5b8 6fa5 	cmp.w	r8, #1320	; 0x528
30003dd0:	f67f af62 	bls.w	30003c98 <BOOT_SOC_ClkSet+0x68>
30003dd4:	f240 11fb 	movw	r1, #507	; 0x1fb
30003dd8:	4820      	ldr	r0, [pc, #128]	; (30003e5c <BOOT_SOC_ClkSet+0x22c>)
30003dda:	f006 fb7d 	bl	3000a4d8 <io_assert_failed>
30003dde:	f240 2102 	movw	r1, #514	; 0x202
30003de2:	481e      	ldr	r0, [pc, #120]	; (30003e5c <BOOT_SOC_ClkSet+0x22c>)
30003de4:	f006 fb78 	bl	3000a4d8 <io_assert_failed>
30003de8:	f5b8 6f96 	cmp.w	r8, #1200	; 0x4b0
30003dec:	f67f af54 	bls.w	30003c98 <BOOT_SOC_ClkSet+0x68>
30003df0:	f240 11f9 	movw	r1, #505	; 0x1f9
30003df4:	4819      	ldr	r0, [pc, #100]	; (30003e5c <BOOT_SOC_ClkSet+0x22c>)
30003df6:	f006 fb6f 	bl	3000a4d8 <io_assert_failed>
30003dfa:	f44f 7100 	mov.w	r1, #512	; 0x200
30003dfe:	4817      	ldr	r0, [pc, #92]	; (30003e5c <BOOT_SOC_ClkSet+0x22c>)
30003e00:	f006 fb6a 	bl	3000a4d8 <io_assert_failed>
30003e04:	f44f 71fb 	mov.w	r1, #502	; 0x1f6
30003e08:	4814      	ldr	r0, [pc, #80]	; (30003e5c <BOOT_SOC_ClkSet+0x22c>)
30003e0a:	f006 fb65 	bl	3000a4d8 <io_assert_failed>
30003e0e:	bf00      	nop
30003e10:	3000d8fc 	.word	0x3000d8fc
30003e14:	51eb851f 	.word	0x51eb851f
30003e18:	0000c0f9 	.word	0x0000c0f9
30003e1c:	23020000 	.word	0x23020000
30003e20:	30008fe9 	.word	0x30008fe9
30003e24:	42008000 	.word	0x42008000
30003e28:	ff8f08f8 	.word	0xff8f08f8
30003e2c:	3000b8f0 	.word	0x3000b8f0
30003e30:	3000b71c 	.word	0x3000b71c
30003e34:	3000b904 	.word	0x3000b904
30003e38:	3000b918 	.word	0x3000b918
30003e3c:	00009979 	.word	0x00009979
30003e40:	0000994d 	.word	0x0000994d
30003e44:	30009069 	.word	0x30009069
30003e48:	300090a5 	.word	0x300090a5
30003e4c:	431bde83 	.word	0x431bde83
30003e50:	000099f5 	.word	0x000099f5
30003e54:	30008bf5 	.word	0x30008bf5
30003e58:	30009599 	.word	0x30009599
30003e5c:	3000b890 	.word	0x3000b890
30003e60:	3000d772 	.word	0x3000d772
30003e64:	000f4240 	.word	0x000f4240

30003e68 <BOOT_Disable_AP>:
30003e68:	f04f 4382 	mov.w	r3, #1090519040	; 0x41000000
30003e6c:	4906      	ldr	r1, [pc, #24]	; (30003e88 <BOOT_Disable_AP+0x20>)
30003e6e:	685a      	ldr	r2, [r3, #4]
30003e70:	f042 0202 	orr.w	r2, r2, #2
30003e74:	605a      	str	r2, [r3, #4]
30003e76:	685a      	ldr	r2, [r3, #4]
30003e78:	f042 0230 	orr.w	r2, r2, #48	; 0x30
30003e7c:	605a      	str	r2, [r3, #4]
30003e7e:	6f8b      	ldr	r3, [r1, #120]	; 0x78
30003e80:	f043 0303 	orr.w	r3, r3, #3
30003e84:	678b      	str	r3, [r1, #120]	; 0x78
30003e86:	4770      	bx	lr
30003e88:	41000200 	.word	0x41000200

30003e8c <BOOT_Enable_AP>:
30003e8c:	b538      	push	{r3, r4, r5, lr}
30003e8e:	f04f 4482 	mov.w	r4, #1090519040	; 0x41000000
30003e92:	2201      	movs	r2, #1
30003e94:	2104      	movs	r1, #4
30003e96:	481e      	ldr	r0, [pc, #120]	; (30003f10 <BOOT_Enable_AP+0x84>)
30003e98:	4b1e      	ldr	r3, [pc, #120]	; (30003f14 <BOOT_Enable_AP+0x88>)
30003e9a:	4798      	blx	r3
30003e9c:	6863      	ldr	r3, [r4, #4]
30003e9e:	4d1e      	ldr	r5, [pc, #120]	; (30003f18 <BOOT_Enable_AP+0x8c>)
30003ea0:	2032      	movs	r0, #50	; 0x32
30003ea2:	f043 0302 	orr.w	r3, r3, #2
30003ea6:	6063      	str	r3, [r4, #4]
30003ea8:	6863      	ldr	r3, [r4, #4]
30003eaa:	f043 0330 	orr.w	r3, r3, #48	; 0x30
30003eae:	6063      	str	r3, [r4, #4]
30003eb0:	6823      	ldr	r3, [r4, #0]
30003eb2:	f043 0302 	orr.w	r3, r3, #2
30003eb6:	6023      	str	r3, [r4, #0]
30003eb8:	47a8      	blx	r5
30003eba:	6823      	ldr	r3, [r4, #0]
30003ebc:	2032      	movs	r0, #50	; 0x32
30003ebe:	f043 0304 	orr.w	r3, r3, #4
30003ec2:	6023      	str	r3, [r4, #0]
30003ec4:	6823      	ldr	r3, [r4, #0]
30003ec6:	f043 0301 	orr.w	r3, r3, #1
30003eca:	6023      	str	r3, [r4, #0]
30003ecc:	6823      	ldr	r3, [r4, #0]
30003ece:	f043 0310 	orr.w	r3, r3, #16
30003ed2:	6023      	str	r3, [r4, #0]
30003ed4:	47a8      	blx	r5
30003ed6:	6823      	ldr	r3, [r4, #0]
30003ed8:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
30003edc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
30003ee0:	6023      	str	r3, [r4, #0]
30003ee2:	47a8      	blx	r5
30003ee4:	6862      	ldr	r2, [r4, #4]
30003ee6:	490d      	ldr	r1, [pc, #52]	; (30003f1c <BOOT_Enable_AP+0x90>)
30003ee8:	f022 0210 	bic.w	r2, r2, #16
30003eec:	4b0c      	ldr	r3, [pc, #48]	; (30003f20 <BOOT_Enable_AP+0x94>)
30003eee:	6062      	str	r2, [r4, #4]
30003ef0:	6862      	ldr	r2, [r4, #4]
30003ef2:	f022 0202 	bic.w	r2, r2, #2
30003ef6:	6062      	str	r2, [r4, #4]
30003ef8:	68e2      	ldr	r2, [r4, #12]
30003efa:	f042 0201 	orr.w	r2, r2, #1
30003efe:	60e2      	str	r2, [r4, #12]
30003f00:	68a2      	ldr	r2, [r4, #8]
30003f02:	f042 0201 	orr.w	r2, r2, #1
30003f06:	60a2      	str	r2, [r4, #8]
30003f08:	684a      	ldr	r2, [r1, #4]
30003f0a:	4313      	orrs	r3, r2
30003f0c:	604b      	str	r3, [r1, #4]
30003f0e:	bd38      	pop	{r3, r4, r5, pc}
30003f10:	4200c000 	.word	0x4200c000
30003f14:	0000aab9 	.word	0x0000aab9
30003f18:	00009b2d 	.word	0x00009b2d
30003f1c:	41000200 	.word	0x41000200
30003f20:	01001111 	.word	0x01001111

30003f24 <BOOT_Share_Memory_Patch>:
30003f24:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
30003f28:	481a      	ldr	r0, [pc, #104]	; (30003f94 <BOOT_Share_Memory_Patch+0x70>)
30003f2a:	491b      	ldr	r1, [pc, #108]	; (30003f98 <BOOT_Share_Memory_Patch+0x74>)
30003f2c:	b410      	push	{r4}
30003f2e:	6b13      	ldr	r3, [r2, #48]	; 0x30
30003f30:	f04f 5408 	mov.w	r4, #570425344	; 0x22000000
30003f34:	f443 23c0 	orr.w	r3, r3, #393216	; 0x60000
30003f38:	6313      	str	r3, [r2, #48]	; 0x30
30003f3a:	6823      	ldr	r3, [r4, #0]
30003f3c:	6804      	ldr	r4, [r0, #0]
30003f3e:	f500 3000 	add.w	r0, r0, #131072	; 0x20000
30003f42:	6809      	ldr	r1, [r1, #0]
30003f44:	4423      	add	r3, r4
30003f46:	6804      	ldr	r4, [r0, #0]
30003f48:	f500 205e 	add.w	r0, r0, #909312	; 0xde000
30003f4c:	440b      	add	r3, r1
30003f4e:	4913      	ldr	r1, [pc, #76]	; (30003f9c <BOOT_Share_Memory_Patch+0x78>)
30003f50:	4423      	add	r3, r4
30003f52:	6809      	ldr	r1, [r1, #0]
30003f54:	6844      	ldr	r4, [r0, #4]
30003f56:	f04f 5000 	mov.w	r0, #536870912	; 0x20000000
30003f5a:	440b      	add	r3, r1
30003f5c:	6b11      	ldr	r1, [r2, #48]	; 0x30
30003f5e:	f421 21c0 	bic.w	r1, r1, #393216	; 0x60000
30003f62:	4423      	add	r3, r4
30003f64:	6311      	str	r1, [r2, #48]	; 0x30
30003f66:	4a0e      	ldr	r2, [pc, #56]	; (30003fa0 <BOOT_Share_Memory_Patch+0x7c>)
30003f68:	6804      	ldr	r4, [r0, #0]
30003f6a:	f500 3000 	add.w	r0, r0, #131072	; 0x20000
30003f6e:	6812      	ldr	r2, [r2, #0]
30003f70:	4423      	add	r3, r4
30003f72:	490c      	ldr	r1, [pc, #48]	; (30003fa4 <BOOT_Share_Memory_Patch+0x80>)
30003f74:	6804      	ldr	r4, [r0, #0]
30003f76:	4413      	add	r3, r2
30003f78:	6809      	ldr	r1, [r1, #0]
30003f7a:	f04f 520c 	mov.w	r2, #587202560	; 0x23000000
30003f7e:	480a      	ldr	r0, [pc, #40]	; (30003fa8 <BOOT_Share_Memory_Patch+0x84>)
30003f80:	4423      	add	r3, r4
30003f82:	f85d 4b04 	ldr.w	r4, [sp], #4
30003f86:	6812      	ldr	r2, [r2, #0]
30003f88:	440b      	add	r3, r1
30003f8a:	6800      	ldr	r0, [r0, #0]
30003f8c:	4413      	add	r3, r2
30003f8e:	4418      	add	r0, r3
30003f90:	4770      	bx	lr
30003f92:	bf00      	nop
30003f94:	2200c000 	.word	0x2200c000
30003f98:	22018000 	.word	0x22018000
30003f9c:	22100000 	.word	0x22100000
30003fa0:	20010000 	.word	0x20010000
30003fa4:	20030000 	.word	0x20030000
30003fa8:	23010000 	.word	0x23010000

30003fac <BOOT_Log_Init>:
30003fac:	4b10      	ldr	r3, [pc, #64]	; (30003ff0 <BOOT_Log_Init+0x44>)
30003fae:	b510      	push	{r4, lr}
30003fb0:	781b      	ldrb	r3, [r3, #0]
30003fb2:	b93b      	cbnz	r3, 30003fc4 <BOOT_Log_Init+0x18>
30003fb4:	4c0f      	ldr	r4, [pc, #60]	; (30003ff4 <BOOT_Log_Init+0x48>)
30003fb6:	4623      	mov	r3, r4
30003fb8:	2201      	movs	r2, #1
30003fba:	2102      	movs	r1, #2
30003fbc:	480e      	ldr	r0, [pc, #56]	; (30003ff8 <BOOT_Log_Init+0x4c>)
30003fbe:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
30003fc2:	4718      	bx	r3
30003fc4:	4b0d      	ldr	r3, [pc, #52]	; (30003ffc <BOOT_Log_Init+0x50>)
30003fc6:	4798      	blx	r3
30003fc8:	3802      	subs	r0, #2
30003fca:	2801      	cmp	r0, #1
30003fcc:	d9f2      	bls.n	30003fb4 <BOOT_Log_Init+0x8>
30003fce:	4b0c      	ldr	r3, [pc, #48]	; (30004000 <BOOT_Log_Init+0x54>)
30003fd0:	4798      	blx	r3
30003fd2:	4c08      	ldr	r4, [pc, #32]	; (30003ff4 <BOOT_Log_Init+0x48>)
30003fd4:	2200      	movs	r2, #0
30003fd6:	2101      	movs	r1, #1
30003fd8:	4807      	ldr	r0, [pc, #28]	; (30003ff8 <BOOT_Log_Init+0x4c>)
30003fda:	47a0      	blx	r4
30003fdc:	2101      	movs	r1, #1
30003fde:	4806      	ldr	r0, [pc, #24]	; (30003ff8 <BOOT_Log_Init+0x4c>)
30003fe0:	4b08      	ldr	r3, [pc, #32]	; (30004004 <BOOT_Log_Init+0x58>)
30003fe2:	4798      	blx	r3
30003fe4:	2201      	movs	r2, #1
30003fe6:	4804      	ldr	r0, [pc, #16]	; (30003ff8 <BOOT_Log_Init+0x4c>)
30003fe8:	4611      	mov	r1, r2
30003fea:	47a0      	blx	r4
30003fec:	e7e3      	b.n	30003fb6 <BOOT_Log_Init+0xa>
30003fee:	bf00      	nop
30003ff0:	3000d770 	.word	0x3000d770
30003ff4:	0000aab9 	.word	0x0000aab9
30003ff8:	4200c000 	.word	0x4200c000
30003ffc:	0000c0f9 	.word	0x0000c0f9
30004000:	30009805 	.word	0x30009805
30004004:	0000aaa5 	.word	0x0000aaa5

30004008 <BOOT_Image1>:
30004008:	4877      	ldr	r0, [pc, #476]	; (300041e8 <BOOT_Image1+0x1e0>)
3000400a:	2100      	movs	r1, #0
3000400c:	4a77      	ldr	r2, [pc, #476]	; (300041ec <BOOT_Image1+0x1e4>)
3000400e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
30004012:	1a12      	subs	r2, r2, r0
30004014:	b082      	sub	sp, #8
30004016:	4c76      	ldr	r4, [pc, #472]	; (300041f0 <BOOT_Image1+0x1e8>)
30004018:	47a0      	blx	r4
3000401a:	f7ff fc9d 	bl	30003958 <BOOT_ReasonSet>
3000401e:	f005 f871 	bl	30009104 <BOOT_Reason>
30004022:	2800      	cmp	r0, #0
30004024:	f000 80d9 	beq.w	300041da <BOOT_Image1+0x1d2>
30004028:	f006 fccc 	bl	3000a9c4 <BOOT_VerCheck>
3000402c:	4b71      	ldr	r3, [pc, #452]	; (300041f4 <BOOT_Image1+0x1ec>)
3000402e:	4798      	blx	r3
30004030:	b920      	cbnz	r0, 3000403c <BOOT_Image1+0x34>
30004032:	4a71      	ldr	r2, [pc, #452]	; (300041f8 <BOOT_Image1+0x1f0>)
30004034:	6893      	ldr	r3, [r2, #8]
30004036:	f043 0302 	orr.w	r3, r3, #2
3000403a:	6093      	str	r3, [r2, #8]
3000403c:	4d6f      	ldr	r5, [pc, #444]	; (300041fc <BOOT_Image1+0x1f4>)
3000403e:	4b70      	ldr	r3, [pc, #448]	; (30004200 <BOOT_Image1+0x1f8>)
30004040:	4798      	blx	r3
30004042:	782c      	ldrb	r4, [r5, #0]
30004044:	2c00      	cmp	r4, #0
30004046:	f000 80a5 	beq.w	30004194 <BOOT_Image1+0x18c>
3000404a:	2000      	movs	r0, #0
3000404c:	4b6d      	ldr	r3, [pc, #436]	; (30004204 <BOOT_Image1+0x1fc>)
3000404e:	4798      	blx	r3
30004050:	4b6d      	ldr	r3, [pc, #436]	; (30004208 <BOOT_Image1+0x200>)
30004052:	2001      	movs	r0, #1
30004054:	4798      	blx	r3
30004056:	4e6d      	ldr	r6, [pc, #436]	; (3000420c <BOOT_Image1+0x204>)
30004058:	f7ff fdea 	bl	30003c30 <BOOT_SOC_ClkSet>
3000405c:	f241 070a 	movw	r7, #4106	; 0x100a
30004060:	2028      	movs	r0, #40	; 0x28
30004062:	8833      	ldrh	r3, [r6, #0]
30004064:	4c6a      	ldr	r4, [pc, #424]	; (30004210 <BOOT_Image1+0x208>)
30004066:	b29b      	uxth	r3, r3
30004068:	431f      	orrs	r7, r3
3000406a:	4b6a      	ldr	r3, [pc, #424]	; (30004214 <BOOT_Image1+0x20c>)
3000406c:	8037      	strh	r7, [r6, #0]
3000406e:	4798      	blx	r3
30004070:	88b3      	ldrh	r3, [r6, #4]
30004072:	b29b      	uxth	r3, r3
30004074:	ea23 0307 	bic.w	r3, r3, r7
30004078:	80b3      	strh	r3, [r6, #4]
3000407a:	8873      	ldrh	r3, [r6, #2]
3000407c:	8077      	strh	r7, [r6, #2]
3000407e:	47a0      	blx	r4
30004080:	2802      	cmp	r0, #2
30004082:	f000 8095 	beq.w	300041b0 <BOOT_Image1+0x1a8>
30004086:	4e64      	ldr	r6, [pc, #400]	; (30004218 <BOOT_Image1+0x210>)
30004088:	2701      	movs	r7, #1
3000408a:	4a64      	ldr	r2, [pc, #400]	; (3000421c <BOOT_Image1+0x214>)
3000408c:	f04f 4082 	mov.w	r0, #1090519040	; 0x41000000
30004090:	f8d6 325c 	ldr.w	r3, [r6, #604]	; 0x25c
30004094:	4962      	ldr	r1, [pc, #392]	; (30004220 <BOOT_Image1+0x218>)
30004096:	f023 0330 	bic.w	r3, r3, #48	; 0x30
3000409a:	f8df 81c8 	ldr.w	r8, [pc, #456]	; 30004264 <BOOT_Image1+0x25c>
3000409e:	f8c6 325c 	str.w	r3, [r6, #604]	; 0x25c
300040a2:	f882 710e 	strb.w	r7, [r2, #270]	; 0x10e
300040a6:	463a      	mov	r2, r7
300040a8:	47c0      	blx	r8
300040aa:	463a      	mov	r2, r7
300040ac:	495d      	ldr	r1, [pc, #372]	; (30004224 <BOOT_Image1+0x21c>)
300040ae:	f04f 4081 	mov.w	r0, #1082130432	; 0x40800000
300040b2:	47c0      	blx	r8
300040b4:	f8d6 32fc 	ldr.w	r3, [r6, #764]	; 0x2fc
300040b8:	f043 0303 	orr.w	r3, r3, #3
300040bc:	f8c6 32fc 	str.w	r3, [r6, #764]	; 0x2fc
300040c0:	4a55      	ldr	r2, [pc, #340]	; (30004218 <BOOT_Image1+0x210>)
300040c2:	f8d2 325c 	ldr.w	r3, [r2, #604]	; 0x25c
300040c6:	f023 0303 	bic.w	r3, r3, #3
300040ca:	f043 0302 	orr.w	r3, r3, #2
300040ce:	f8c2 325c 	str.w	r3, [r2, #604]	; 0x25c
300040d2:	f7ff ff6b 	bl	30003fac <BOOT_Log_Init>
300040d6:	f3ef 8108 	mrs	r1, MSP
300040da:	4b53      	ldr	r3, [pc, #332]	; (30004228 <BOOT_Image1+0x220>)
300040dc:	2249      	movs	r2, #73	; 0x49
300040de:	2004      	movs	r0, #4
300040e0:	9100      	str	r1, [sp, #0]
300040e2:	4952      	ldr	r1, [pc, #328]	; (3000422c <BOOT_Image1+0x224>)
300040e4:	f005 f9c4 	bl	30009470 <rtk_log_write>
300040e8:	4951      	ldr	r1, [pc, #324]	; (30004230 <BOOT_Image1+0x228>)
300040ea:	4a52      	ldr	r2, [pc, #328]	; (30004234 <BOOT_Image1+0x22c>)
300040ec:	2004      	movs	r0, #4
300040ee:	4b52      	ldr	r3, [pc, #328]	; (30004238 <BOOT_Image1+0x230>)
300040f0:	4e52      	ldr	r6, [pc, #328]	; (3000423c <BOOT_Image1+0x234>)
300040f2:	e9cd 2100 	strd	r2, r1, [sp]
300040f6:	2249      	movs	r2, #73	; 0x49
300040f8:	494c      	ldr	r1, [pc, #304]	; (3000422c <BOOT_Image1+0x224>)
300040fa:	f005 f9b9 	bl	30009470 <rtk_log_write>
300040fe:	4950      	ldr	r1, [pc, #320]	; (30004240 <BOOT_Image1+0x238>)
30004100:	e841 f100 	tt	r1, r1
30004104:	f3c1 5180 	ubfx	r1, r1, #22, #1
30004108:	2249      	movs	r2, #73	; 0x49
3000410a:	2004      	movs	r0, #4
3000410c:	4b4d      	ldr	r3, [pc, #308]	; (30004244 <BOOT_Image1+0x23c>)
3000410e:	9100      	str	r1, [sp, #0]
30004110:	4946      	ldr	r1, [pc, #280]	; (3000422c <BOOT_Image1+0x224>)
30004112:	f005 f9ad 	bl	30009470 <rtk_log_write>
30004116:	4b4c      	ldr	r3, [pc, #304]	; (30004248 <BOOT_Image1+0x240>)
30004118:	681b      	ldr	r3, [r3, #0]
3000411a:	4798      	blx	r3
3000411c:	f7fe ffec 	bl	300030f8 <BOOT_RccConfig>
30004120:	f7ff f856 	bl	300031d0 <BOOT_CACHEWRR_Set>
30004124:	4b49      	ldr	r3, [pc, #292]	; (3000424c <BOOT_Image1+0x244>)
30004126:	6818      	ldr	r0, [r3, #0]
30004128:	f7ff f880 	bl	3000322c <BOOT_TCMSet>
3000412c:	4b48      	ldr	r3, [pc, #288]	; (30004250 <BOOT_Image1+0x248>)
3000412e:	695b      	ldr	r3, [r3, #20]
30004130:	03db      	lsls	r3, r3, #15
30004132:	d512      	bpl.n	3000415a <BOOT_Image1+0x152>
30004134:	f016 011f 	ands.w	r1, r6, #31
30004138:	d136      	bne.n	300041a8 <BOOT_Image1+0x1a0>
3000413a:	4633      	mov	r3, r6
3000413c:	2174      	movs	r1, #116	; 0x74
3000413e:	f3bf 8f4f 	dsb	sy
30004142:	4843      	ldr	r0, [pc, #268]	; (30004250 <BOOT_Image1+0x248>)
30004144:	4419      	add	r1, r3
30004146:	f8c0 3268 	str.w	r3, [r0, #616]	; 0x268
3000414a:	3320      	adds	r3, #32
3000414c:	1aca      	subs	r2, r1, r3
3000414e:	2a00      	cmp	r2, #0
30004150:	dcf9      	bgt.n	30004146 <BOOT_Image1+0x13e>
30004152:	f3bf 8f4f 	dsb	sy
30004156:	f3bf 8f6f 	isb	sy
3000415a:	4a2f      	ldr	r2, [pc, #188]	; (30004218 <BOOT_Image1+0x210>)
3000415c:	4b2f      	ldr	r3, [pc, #188]	; (3000421c <BOOT_Image1+0x214>)
3000415e:	f8c2 6270 	str.w	r6, [r2, #624]	; 0x270
30004162:	2200      	movs	r2, #0
30004164:	f8c3 2108 	str.w	r2, [r3, #264]	; 0x108
30004168:	f001 fe6e 	bl	30005e48 <flash_highspeed_setup>
3000416c:	47a0      	blx	r4
3000416e:	2802      	cmp	r0, #2
30004170:	f000 8107 	beq.w	30004382 <BOOT_Image1+0x37a>
30004174:	782b      	ldrb	r3, [r5, #0]
30004176:	2b00      	cmp	r3, #0
30004178:	d076      	beq.n	30004268 <BOOT_Image1+0x260>
3000417a:	4e36      	ldr	r6, [pc, #216]	; (30004254 <BOOT_Image1+0x24c>)
3000417c:	4d36      	ldr	r5, [pc, #216]	; (30004258 <BOOT_Image1+0x250>)
3000417e:	4c2b      	ldr	r4, [pc, #172]	; (3000422c <BOOT_Image1+0x224>)
30004180:	462b      	mov	r3, r5
30004182:	2245      	movs	r2, #69	; 0x45
30004184:	4621      	mov	r1, r4
30004186:	2002      	movs	r0, #2
30004188:	f005 f972 	bl	30009470 <rtk_log_write>
3000418c:	f241 3088 	movw	r0, #5000	; 0x1388
30004190:	47b0      	blx	r6
30004192:	e7f5      	b.n	30004180 <BOOT_Image1+0x178>
30004194:	4b1c      	ldr	r3, [pc, #112]	; (30004208 <BOOT_Image1+0x200>)
30004196:	2001      	movs	r0, #1
30004198:	4798      	blx	r3
3000419a:	4620      	mov	r0, r4
3000419c:	4b2f      	ldr	r3, [pc, #188]	; (3000425c <BOOT_Image1+0x254>)
3000419e:	4798      	blx	r3
300041a0:	4b2f      	ldr	r3, [pc, #188]	; (30004260 <BOOT_Image1+0x258>)
300041a2:	2001      	movs	r0, #1
300041a4:	4798      	blx	r3
300041a6:	e756      	b.n	30004056 <BOOT_Image1+0x4e>
300041a8:	f026 031f 	bic.w	r3, r6, #31
300041ac:	3174      	adds	r1, #116	; 0x74
300041ae:	e7c6      	b.n	3000413e <BOOT_Image1+0x136>
300041b0:	6df3      	ldr	r3, [r6, #92]	; 0x5c
300041b2:	2201      	movs	r2, #1
300041b4:	f04f 4188 	mov.w	r1, #1140850688	; 0x44000000
300041b8:	f423 7398 	bic.w	r3, r3, #304	; 0x130
300041bc:	65f3      	str	r3, [r6, #92]	; 0x5c
300041be:	4b17      	ldr	r3, [pc, #92]	; (3000421c <BOOT_Image1+0x214>)
300041c0:	f883 010e 	strb.w	r0, [r3, #270]	; 0x10e
300041c4:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
300041c8:	4b26      	ldr	r3, [pc, #152]	; (30004264 <BOOT_Image1+0x25c>)
300041ca:	4798      	blx	r3
300041cc:	f8d6 30fc 	ldr.w	r3, [r6, #252]	; 0xfc
300041d0:	f043 0302 	orr.w	r3, r3, #2
300041d4:	f8c6 30fc 	str.w	r3, [r6, #252]	; 0xfc
300041d8:	e772      	b.n	300040c0 <BOOT_Image1+0xb8>
300041da:	4601      	mov	r1, r0
300041dc:	f44f 7200 	mov.w	r2, #512	; 0x200
300041e0:	480e      	ldr	r0, [pc, #56]	; (3000421c <BOOT_Image1+0x214>)
300041e2:	47a0      	blx	r4
300041e4:	e720      	b.n	30004028 <BOOT_Image1+0x20>
300041e6:	bf00      	nop
300041e8:	3000de50 	.word	0x3000de50
300041ec:	3000e748 	.word	0x3000e748
300041f0:	00012be5 	.word	0x00012be5
300041f4:	0000c179 	.word	0x0000c179
300041f8:	2001c00c 	.word	0x2001c00c
300041fc:	3000d771 	.word	0x3000d771
30004200:	30008d11 	.word	0x30008d11
30004204:	30008a89 	.word	0x30008a89
30004208:	300089a9 	.word	0x300089a9
3000420c:	42008200 	.word	0x42008200
30004210:	30009599 	.word	0x30009599
30004214:	00009b2d 	.word	0x00009b2d
30004218:	42008000 	.word	0x42008000
3000421c:	23020000 	.word	0x23020000
30004220:	40080000 	.word	0x40080000
30004224:	40040000 	.word	0x40040000
30004228:	3000b92c 	.word	0x3000b92c
3000422c:	3000b71c 	.word	0x3000b71c
30004230:	3000b958 	.word	0x3000b958
30004234:	3000b964 	.word	0x3000b964
30004238:	3000b944 	.word	0x3000b944
3000423c:	2001c01c 	.word	0x2001c01c
30004240:	30004009 	.word	0x30004009
30004244:	3000b970 	.word	0x3000b970
30004248:	00033000 	.word	0x00033000
3000424c:	3000d774 	.word	0x3000d774
30004250:	e000ed00 	.word	0xe000ed00
30004254:	00009be5 	.word	0x00009be5
30004258:	3000b9a8 	.word	0x3000b9a8
3000425c:	30008bd5 	.word	0x30008bd5
30004260:	30008b45 	.word	0x30008b45
30004264:	0000b479 	.word	0x0000b479
30004268:	4b5b      	ldr	r3, [pc, #364]	; (300043d8 <BOOT_Image1+0x3d0>)
3000426a:	4798      	blx	r3
3000426c:	2801      	cmp	r0, #1
3000426e:	f04f 0249 	mov.w	r2, #73	; 0x49
30004272:	495a      	ldr	r1, [pc, #360]	; (300043dc <BOOT_Image1+0x3d4>)
30004274:	bf08      	it	eq
30004276:	4b5a      	ldreq	r3, [pc, #360]	; (300043e0 <BOOT_Image1+0x3d8>)
30004278:	f04f 0004 	mov.w	r0, #4
3000427c:	bf18      	it	ne
3000427e:	4b59      	ldrne	r3, [pc, #356]	; (300043e4 <BOOT_Image1+0x3dc>)
30004280:	f005 f8f6 	bl	30009470 <rtk_log_write>
30004284:	f7ff f96a 	bl	3000355c <BOOT_DDR_Init>
30004288:	4a57      	ldr	r2, [pc, #348]	; (300043e8 <BOOT_Image1+0x3e0>)
3000428a:	f8d2 3290 	ldr.w	r3, [r2, #656]	; 0x290
3000428e:	f423 6340 	bic.w	r3, r3, #3072	; 0xc00
30004292:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
30004296:	f8c2 3290 	str.w	r3, [r2, #656]	; 0x290
3000429a:	4b53      	ldr	r3, [pc, #332]	; (300043e8 <BOOT_Image1+0x3e0>)
3000429c:	2400      	movs	r4, #0
3000429e:	f8c3 42d0 	str.w	r4, [r3, #720]	; 0x2d0
300042a2:	f8c3 42d4 	str.w	r4, [r3, #724]	; 0x2d4
300042a6:	f8c3 42d8 	str.w	r4, [r3, #728]	; 0x2d8
300042aa:	f8c3 40d0 	str.w	r4, [r3, #208]	; 0xd0
300042ae:	f7ff fe39 	bl	30003f24 <BOOT_Share_Memory_Patch>
300042b2:	4b4e      	ldr	r3, [pc, #312]	; (300043ec <BOOT_Image1+0x3e4>)
300042b4:	4798      	blx	r3
300042b6:	1c45      	adds	r5, r0, #1
300042b8:	4b4d      	ldr	r3, [pc, #308]	; (300043f0 <BOOT_Image1+0x3e8>)
300042ba:	2004      	movs	r0, #4
300042bc:	4947      	ldr	r1, [pc, #284]	; (300043dc <BOOT_Image1+0x3d4>)
300042be:	2249      	movs	r2, #73	; 0x49
300042c0:	9500      	str	r5, [sp, #0]
300042c2:	f005 f8d5 	bl	30009470 <rtk_log_write>
300042c6:	f7ff fc71 	bl	30003bac <BOOT_Enable_KM0>
300042ca:	4622      	mov	r2, r4
300042cc:	2101      	movs	r1, #1
300042ce:	4849      	ldr	r0, [pc, #292]	; (300043f4 <BOOT_Image1+0x3ec>)
300042d0:	4b49      	ldr	r3, [pc, #292]	; (300043f8 <BOOT_Image1+0x3f0>)
300042d2:	4798      	blx	r3
300042d4:	4b49      	ldr	r3, [pc, #292]	; (300043fc <BOOT_Image1+0x3f4>)
300042d6:	2008      	movs	r0, #8
300042d8:	4798      	blx	r3
300042da:	f000 f8ab 	bl	30004434 <BOOT_RAM_TZCfg>
300042de:	4b48      	ldr	r3, [pc, #288]	; (30004400 <BOOT_Image1+0x3f8>)
300042e0:	781b      	ldrb	r3, [r3, #0]
300042e2:	2b00      	cmp	r3, #0
300042e4:	d067      	beq.n	300043b6 <BOOT_Image1+0x3ae>
300042e6:	f7ff fdd1 	bl	30003e8c <BOOT_Enable_AP>
300042ea:	4a46      	ldr	r2, [pc, #280]	; (30004404 <BOOT_Image1+0x3fc>)
300042ec:	f892 3066 	ldrb.w	r3, [r2, #102]	; 0x66
300042f0:	f043 0306 	orr.w	r3, r3, #6
300042f4:	f882 3066 	strb.w	r3, [r2, #102]	; 0x66
300042f8:	4942      	ldr	r1, [pc, #264]	; (30004404 <BOOT_Image1+0x3fc>)
300042fa:	2000      	movs	r0, #0
300042fc:	4a42      	ldr	r2, [pc, #264]	; (30004408 <BOOT_Image1+0x400>)
300042fe:	f891 306a 	ldrb.w	r3, [r1, #106]	; 0x6a
30004302:	4c42      	ldr	r4, [pc, #264]	; (3000440c <BOOT_Image1+0x404>)
30004304:	f043 0380 	orr.w	r3, r3, #128	; 0x80
30004308:	f881 306a 	strb.w	r3, [r1, #106]	; 0x6a
3000430c:	6895      	ldr	r5, [r2, #8]
3000430e:	6813      	ldr	r3, [r2, #0]
30004310:	606b      	str	r3, [r5, #4]
30004312:	60a5      	str	r5, [r4, #8]
30004314:	f005 f85a 	bl	300093cc <Fault_Hanlder_Redirect>
30004318:	4b3d      	ldr	r3, [pc, #244]	; (30004410 <BOOT_Image1+0x408>)
3000431a:	493e      	ldr	r1, [pc, #248]	; (30004414 <BOOT_Image1+0x40c>)
3000431c:	6a5a      	ldr	r2, [r3, #36]	; 0x24
3000431e:	f442 2270 	orr.w	r2, r2, #983040	; 0xf0000
30004322:	625a      	str	r2, [r3, #36]	; 0x24
30004324:	6a62      	ldr	r2, [r4, #36]	; 0x24
30004326:	f442 22e0 	orr.w	r2, r2, #458752	; 0x70000
3000432a:	6262      	str	r2, [r4, #36]	; 0x24
3000432c:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
30004330:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
30004334:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
30004338:	f8d4 2088 	ldr.w	r2, [r4, #136]	; 0x88
3000433c:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
30004340:	f8c4 2088 	str.w	r2, [r4, #136]	; 0x88
30004344:	f8d3 208c 	ldr.w	r2, [r3, #140]	; 0x8c
30004348:	f442 6240 	orr.w	r2, r2, #3072	; 0xc00
3000434c:	f8c3 208c 	str.w	r2, [r3, #140]	; 0x8c
30004350:	689b      	ldr	r3, [r3, #8]
30004352:	618b      	str	r3, [r1, #24]
30004354:	f7ff fa8c 	bl	30003870 <BOOT_NVICBackup_HP>
30004358:	4b2f      	ldr	r3, [pc, #188]	; (30004418 <BOOT_Image1+0x410>)
3000435a:	f383 8888 	msr	MSP_NS, r3
3000435e:	f5a3 6300 	sub.w	r3, r3, #2048	; 0x800
30004362:	f383 8809 	msr	PSP, r3
30004366:	6869      	ldr	r1, [r5, #4]
30004368:	2004      	movs	r0, #4
3000436a:	4b2c      	ldr	r3, [pc, #176]	; (3000441c <BOOT_Image1+0x414>)
3000436c:	2249      	movs	r2, #73	; 0x49
3000436e:	9100      	str	r1, [sp, #0]
30004370:	491a      	ldr	r1, [pc, #104]	; (300043dc <BOOT_Image1+0x3d4>)
30004372:	f005 f87d 	bl	30009470 <rtk_log_write>
30004376:	6868      	ldr	r0, [r5, #4]
30004378:	b002      	add	sp, #8
3000437a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
3000437e:	f7fe be6b 	b.w	30003058 <BOOT_NsStart>
30004382:	2004      	movs	r0, #4
30004384:	2249      	movs	r2, #73	; 0x49
30004386:	4915      	ldr	r1, [pc, #84]	; (300043dc <BOOT_Image1+0x3d4>)
30004388:	4b25      	ldr	r3, [pc, #148]	; (30004420 <BOOT_Image1+0x418>)
3000438a:	f005 f871 	bl	30009470 <rtk_log_write>
3000438e:	4b25      	ldr	r3, [pc, #148]	; (30004424 <BOOT_Image1+0x41c>)
30004390:	4798      	blx	r3
30004392:	f7ff f921 	bl	300035d8 <BOOT_PSRAM_Init>
30004396:	7828      	ldrb	r0, [r5, #0]
30004398:	2800      	cmp	r0, #0
3000439a:	f47f af7e 	bne.w	3000429a <BOOT_Image1+0x292>
3000439e:	4b22      	ldr	r3, [pc, #136]	; (30004428 <BOOT_Image1+0x420>)
300043a0:	4798      	blx	r3
300043a2:	2800      	cmp	r0, #0
300043a4:	f43f af79 	beq.w	3000429a <BOOT_Image1+0x292>
300043a8:	4b20      	ldr	r3, [pc, #128]	; (3000442c <BOOT_Image1+0x424>)
300043aa:	2257      	movs	r2, #87	; 0x57
300043ac:	490b      	ldr	r1, [pc, #44]	; (300043dc <BOOT_Image1+0x3d4>)
300043ae:	2003      	movs	r0, #3
300043b0:	f005 f85e 	bl	30009470 <rtk_log_write>
300043b4:	e771      	b.n	3000429a <BOOT_Image1+0x292>
300043b6:	f04f 4382 	mov.w	r3, #1090519040	; 0x41000000
300043ba:	491d      	ldr	r1, [pc, #116]	; (30004430 <BOOT_Image1+0x428>)
300043bc:	685a      	ldr	r2, [r3, #4]
300043be:	f042 0202 	orr.w	r2, r2, #2
300043c2:	605a      	str	r2, [r3, #4]
300043c4:	685a      	ldr	r2, [r3, #4]
300043c6:	f042 0230 	orr.w	r2, r2, #48	; 0x30
300043ca:	605a      	str	r2, [r3, #4]
300043cc:	6f8b      	ldr	r3, [r1, #120]	; 0x78
300043ce:	f043 0303 	orr.w	r3, r3, #3
300043d2:	678b      	str	r3, [r1, #120]	; 0x78
300043d4:	e790      	b.n	300042f8 <BOOT_Image1+0x2f0>
300043d6:	bf00      	nop
300043d8:	300095ed 	.word	0x300095ed
300043dc:	3000b71c 	.word	0x3000b71c
300043e0:	3000b9e0 	.word	0x3000b9e0
300043e4:	3000b9ec 	.word	0x3000b9ec
300043e8:	42008000 	.word	0x42008000
300043ec:	30005585 	.word	0x30005585
300043f0:	3000b734 	.word	0x3000b734
300043f4:	4200c000 	.word	0x4200c000
300043f8:	300097b5 	.word	0x300097b5
300043fc:	0000e1d9 	.word	0x0000e1d9
30004400:	3000d772 	.word	0x3000d772
30004404:	42008200 	.word	0x42008200
30004408:	60000020 	.word	0x60000020
3000440c:	e002ed00 	.word	0xe002ed00
30004410:	e000ed00 	.word	0xe000ed00
30004414:	3000de50 	.word	0x3000de50
30004418:	2001c000 	.word	0x2001c000
3000441c:	3000b9f8 	.word	0x3000b9f8
30004420:	3000b988 	.word	0x3000b988
30004424:	30008191 	.word	0x30008191
30004428:	30008aa9 	.word	0x30008aa9
3000442c:	3000b998 	.word	0x3000b998
30004430:	41000200 	.word	0x41000200

30004434 <BOOT_RAM_TZCfg>:
30004434:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30004438:	b085      	sub	sp, #20
3000443a:	4e58      	ldr	r6, [pc, #352]	; (3000459c <BOOT_RAM_TZCfg+0x168>)
3000443c:	4958      	ldr	r1, [pc, #352]	; (300045a0 <BOOT_RAM_TZCfg+0x16c>)
3000443e:	2501      	movs	r5, #1
30004440:	f10d 0e08 	add.w	lr, sp, #8
30004444:	4a57      	ldr	r2, [pc, #348]	; (300045a4 <BOOT_RAM_TZCfg+0x170>)
30004446:	4b58      	ldr	r3, [pc, #352]	; (300045a8 <BOOT_RAM_TZCfg+0x174>)
30004448:	46ec      	mov	ip, sp
3000444a:	4677      	mov	r7, lr
3000444c:	f8df 8178 	ldr.w	r8, [pc, #376]	; 300045c8 <BOOT_RAM_TZCfg+0x194>
30004450:	f44f 1ac0 	mov.w	sl, #1572864	; 0x180000
30004454:	f8df 9174 	ldr.w	r9, [pc, #372]	; 300045cc <BOOT_RAM_TZCfg+0x198>
30004458:	9202      	str	r2, [sp, #8]
3000445a:	9303      	str	r3, [sp, #12]
3000445c:	e9cd 6100 	strd	r6, r1, [sp]
30004460:	f85c 2b04 	ldr.w	r2, [ip], #4
30004464:	2300      	movs	r3, #0
30004466:	f85e 1b04 	ldr.w	r1, [lr], #4
3000446a:	680c      	ldr	r4, [r1, #0]
3000446c:	eb02 0bc3 	add.w	fp, r2, r3, lsl #3
30004470:	fa05 f003 	lsl.w	r0, r5, r3
30004474:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
30004478:	d00c      	beq.n	30004494 <BOOT_RAM_TZCfg+0x60>
3000447a:	f842 4033 	str.w	r4, [r2, r3, lsl #3]
3000447e:	3301      	adds	r3, #1
30004480:	684c      	ldr	r4, [r1, #4]
30004482:	310c      	adds	r1, #12
30004484:	2b08      	cmp	r3, #8
30004486:	f8cb 4004 	str.w	r4, [fp, #4]
3000448a:	6c14      	ldr	r4, [r2, #64]	; 0x40
3000448c:	ea40 0004 	orr.w	r0, r0, r4
30004490:	6410      	str	r0, [r2, #64]	; 0x40
30004492:	d1ea      	bne.n	3000446a <BOOT_RAM_TZCfg+0x36>
30004494:	42b2      	cmp	r2, r6
30004496:	d072      	beq.n	3000457e <BOOT_RAM_TZCfg+0x14a>
30004498:	6455      	str	r5, [r2, #68]	; 0x44
3000449a:	45bc      	cmp	ip, r7
3000449c:	d1e0      	bne.n	30004460 <BOOT_RAM_TZCfg+0x2c>
3000449e:	4b43      	ldr	r3, [pc, #268]	; (300045ac <BOOT_RAM_TZCfg+0x178>)
300044a0:	f46f 3100 	mvn.w	r1, #131072	; 0x20000
300044a4:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
300044a8:	4841      	ldr	r0, [pc, #260]	; (300045b0 <BOOT_RAM_TZCfg+0x17c>)
300044aa:	6019      	str	r1, [r3, #0]
300044ac:	2501      	movs	r5, #1
300044ae:	605a      	str	r2, [r3, #4]
300044b0:	2100      	movs	r1, #0
300044b2:	4a40      	ldr	r2, [pc, #256]	; (300045b4 <BOOT_RAM_TZCfg+0x180>)
300044b4:	4c40      	ldr	r4, [pc, #256]	; (300045b8 <BOOT_RAM_TZCfg+0x184>)
300044b6:	f8c0 5398 	str.w	r5, [r0, #920]	; 0x398
300044ba:	6813      	ldr	r3, [r2, #0]
300044bc:	3301      	adds	r3, #1
300044be:	d019      	beq.n	300044f4 <BOOT_RAM_TZCfg+0xc0>
300044c0:	f8c4 10d8 	str.w	r1, [r4, #216]	; 0xd8
300044c4:	320c      	adds	r2, #12
300044c6:	f852 3c0c 	ldr.w	r3, [r2, #-12]
300044ca:	3101      	adds	r1, #1
300044cc:	f023 031f 	bic.w	r3, r3, #31
300044d0:	2908      	cmp	r1, #8
300044d2:	f8c4 30dc 	str.w	r3, [r4, #220]	; 0xdc
300044d6:	e952 0302 	ldrd	r0, r3, [r2, #-8]
300044da:	ea4f 0343 	mov.w	r3, r3, lsl #1
300044de:	f020 001f 	bic.w	r0, r0, #31
300044e2:	f003 0302 	and.w	r3, r3, #2
300044e6:	ea43 0300 	orr.w	r3, r3, r0
300044ea:	f043 0301 	orr.w	r3, r3, #1
300044ee:	f8c4 30e0 	str.w	r3, [r4, #224]	; 0xe0
300044f2:	d1e2      	bne.n	300044ba <BOOT_RAM_TZCfg+0x86>
300044f4:	4830      	ldr	r0, [pc, #192]	; (300045b8 <BOOT_RAM_TZCfg+0x184>)
300044f6:	2201      	movs	r2, #1
300044f8:	4b30      	ldr	r3, [pc, #192]	; (300045bc <BOOT_RAM_TZCfg+0x188>)
300044fa:	f8c0 20d0 	str.w	r2, [r0, #208]	; 0xd0
300044fe:	f8d3 3268 	ldr.w	r3, [r3, #616]	; 0x268
30004502:	f013 5300 	ands.w	r3, r3, #536870912	; 0x20000000
30004506:	d11e      	bne.n	30004546 <BOOT_RAM_TZCfg+0x112>
30004508:	f8c0 3084 	str.w	r3, [r0, #132]	; 0x84
3000450c:	f3bf 8f4f 	dsb	sy
30004510:	f8d0 5080 	ldr.w	r5, [r0, #128]	; 0x80
30004514:	f643 76e0 	movw	r6, #16352	; 0x3fe0
30004518:	f3c5 344e 	ubfx	r4, r5, #13, #15
3000451c:	f3c5 05c9 	ubfx	r5, r5, #3, #10
30004520:	0164      	lsls	r4, r4, #5
30004522:	ea04 0106 	and.w	r1, r4, r6
30004526:	462b      	mov	r3, r5
30004528:	ea41 7283 	orr.w	r2, r1, r3, lsl #30
3000452c:	3b01      	subs	r3, #1
3000452e:	f8c0 2274 	str.w	r2, [r0, #628]	; 0x274
30004532:	1c5a      	adds	r2, r3, #1
30004534:	d1f8      	bne.n	30004528 <BOOT_RAM_TZCfg+0xf4>
30004536:	3c20      	subs	r4, #32
30004538:	f114 0f20 	cmn.w	r4, #32
3000453c:	d1f1      	bne.n	30004522 <BOOT_RAM_TZCfg+0xee>
3000453e:	f3bf 8f4f 	dsb	sy
30004542:	f3bf 8f6f 	isb	sy
30004546:	4b1c      	ldr	r3, [pc, #112]	; (300045b8 <BOOT_RAM_TZCfg+0x184>)
30004548:	f649 75f7 	movw	r5, #40951	; 0x9ff7
3000454c:	491c      	ldr	r1, [pc, #112]	; (300045c0 <BOOT_RAM_TZCfg+0x18c>)
3000454e:	691c      	ldr	r4, [r3, #16]
30004550:	4a1c      	ldr	r2, [pc, #112]	; (300045c4 <BOOT_RAM_TZCfg+0x190>)
30004552:	f044 0408 	orr.w	r4, r4, #8
30004556:	611c      	str	r4, [r3, #16]
30004558:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
3000455c:	68d8      	ldr	r0, [r3, #12]
3000455e:	4028      	ands	r0, r5
30004560:	4301      	orrs	r1, r0
30004562:	60d9      	str	r1, [r3, #12]
30004564:	f46f 0180 	mvn.w	r1, #4194304	; 0x400000
30004568:	f06f 03c0 	mvn.w	r3, #192	; 0xc0
3000456c:	f8c2 4280 	str.w	r4, [r2, #640]	; 0x280
30004570:	f8c2 1284 	str.w	r1, [r2, #644]	; 0x284
30004574:	f8c2 3288 	str.w	r3, [r2, #648]	; 0x288
30004578:	b005      	add	sp, #20
3000457a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
3000457e:	f898 3000 	ldrb.w	r3, [r8]
30004582:	2b00      	cmp	r3, #0
30004584:	d189      	bne.n	3000449a <BOOT_RAM_TZCfg+0x66>
30004586:	f8c6 a038 	str.w	sl, [r6, #56]	; 0x38
3000458a:	f8c6 903c 	str.w	r9, [r6, #60]	; 0x3c
3000458e:	6c33      	ldr	r3, [r6, #64]	; 0x40
30004590:	f043 0380 	orr.w	r3, r3, #128	; 0x80
30004594:	6433      	str	r3, [r6, #64]	; 0x40
30004596:	6475      	str	r5, [r6, #68]	; 0x44
30004598:	e77f      	b.n	3000449a <BOOT_RAM_TZCfg+0x66>
3000459a:	bf00      	nop
3000459c:	51001a00 	.word	0x51001a00
300045a0:	51001200 	.word	0x51001200
300045a4:	3000d6b0 	.word	0x3000d6b0
300045a8:	3000d650 	.word	0x3000d650
300045ac:	51001b00 	.word	0x51001b00
300045b0:	500e0000 	.word	0x500e0000
300045b4:	3000d710 	.word	0x3000d710
300045b8:	e000ed00 	.word	0xe000ed00
300045bc:	42008000 	.word	0x42008000
300045c0:	05fa6000 	.word	0x05fa6000
300045c4:	e000e100 	.word	0xe000e100
300045c8:	3000d772 	.word	0x3000d772
300045cc:	005fffff 	.word	0x005fffff

300045d0 <BOOT_SbootEn_Check>:
300045d0:	b570      	push	{r4, r5, r6, lr}
300045d2:	4b1d      	ldr	r3, [pc, #116]	; (30004648 <BOOT_SbootEn_Check+0x78>)
300045d4:	4604      	mov	r4, r0
300045d6:	4798      	blx	r3
300045d8:	b1c0      	cbz	r0, 3000460c <BOOT_SbootEn_Check+0x3c>
300045da:	4b1c      	ldr	r3, [pc, #112]	; (3000464c <BOOT_SbootEn_Check+0x7c>)
300045dc:	4798      	blx	r3
300045de:	4d1c      	ldr	r5, [pc, #112]	; (30004650 <BOOT_SbootEn_Check+0x80>)
300045e0:	2320      	movs	r3, #32
300045e2:	4e1c      	ldr	r6, [pc, #112]	; (30004654 <BOOT_SbootEn_Check+0x84>)
300045e4:	f000 011f 	and.w	r1, r0, #31
300045e8:	f04f 0c01 	mov.w	ip, #1
300045ec:	5d8a      	ldrb	r2, [r1, r6]
300045ee:	3b01      	subs	r3, #1
300045f0:	1c48      	adds	r0, r1, #1
300045f2:	b2d2      	uxtb	r2, r2
300045f4:	2aff      	cmp	r2, #255	; 0xff
300045f6:	5462      	strb	r2, [r4, r1]
300045f8:	f000 011f 	and.w	r1, r0, #31
300045fc:	bf18      	it	ne
300045fe:	f885 c000 	strbne.w	ip, [r5]
30004602:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
30004606:	d1f1      	bne.n	300045ec <BOOT_SbootEn_Check+0x1c>
30004608:	7828      	ldrb	r0, [r5, #0]
3000460a:	bd70      	pop	{r4, r5, r6, pc}
3000460c:	4b12      	ldr	r3, [pc, #72]	; (30004658 <BOOT_SbootEn_Check+0x88>)
3000460e:	4798      	blx	r3
30004610:	b910      	cbnz	r0, 30004618 <BOOT_SbootEn_Check+0x48>
30004612:	4b0f      	ldr	r3, [pc, #60]	; (30004650 <BOOT_SbootEn_Check+0x80>)
30004614:	7818      	ldrb	r0, [r3, #0]
30004616:	bd70      	pop	{r4, r5, r6, pc}
30004618:	2201      	movs	r2, #1
3000461a:	4d0d      	ldr	r5, [pc, #52]	; (30004650 <BOOT_SbootEn_Check+0x80>)
3000461c:	4b0b      	ldr	r3, [pc, #44]	; (3000464c <BOOT_SbootEn_Check+0x7c>)
3000461e:	702a      	strb	r2, [r5, #0]
30004620:	4798      	blx	r3
30004622:	4e0e      	ldr	r6, [pc, #56]	; (3000465c <BOOT_SbootEn_Check+0x8c>)
30004624:	2320      	movs	r3, #32
30004626:	f000 021f 	and.w	r2, r0, #31
3000462a:	6831      	ldr	r1, [r6, #0]
3000462c:	3b01      	subs	r3, #1
3000462e:	1c50      	adds	r0, r2, #1
30004630:	f101 4184 	add.w	r1, r1, #1107296256	; 0x42000000
30004634:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
30004638:	5c89      	ldrb	r1, [r1, r2]
3000463a:	54a1      	strb	r1, [r4, r2]
3000463c:	f000 021f 	and.w	r2, r0, #31
30004640:	d1f3      	bne.n	3000462a <BOOT_SbootEn_Check+0x5a>
30004642:	7828      	ldrb	r0, [r5, #0]
30004644:	e7e1      	b.n	3000460a <BOOT_SbootEn_Check+0x3a>
30004646:	bf00      	nop
30004648:	0000c2a1 	.word	0x0000c2a1
3000464c:	0000ea4d 	.word	0x0000ea4d
30004650:	3000dec0 	.word	0x3000dec0
30004654:	42000720 	.word	0x42000720
30004658:	0000c149 	.word	0x0000c149
3000465c:	3000d778 	.word	0x3000d778

30004660 <BOOT_LoadRDPImg>:
30004660:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30004664:	4b49      	ldr	r3, [pc, #292]	; (3000478c <BOOT_LoadRDPImg+0x12c>)
30004666:	b0d9      	sub	sp, #356	; 0x164
30004668:	468b      	mov	fp, r1
3000466a:	4690      	mov	r8, r2
3000466c:	4605      	mov	r5, r0
3000466e:	2400      	movs	r4, #0
30004670:	2202      	movs	r2, #2
30004672:	e893 0003 	ldmia.w	r3, {r0, r1}
30004676:	ab06      	add	r3, sp, #24
30004678:	e883 0003 	stmia.w	r3, {r0, r1}
3000467c:	4641      	mov	r1, r8
3000467e:	4658      	mov	r0, fp
30004680:	9400      	str	r4, [sp, #0]
30004682:	f000 fc5f 	bl	30004f44 <BOOT_LoadSubImage>
30004686:	2801      	cmp	r0, #1
30004688:	d06f      	beq.n	3000476a <BOOT_LoadRDPImg+0x10a>
3000468a:	4b41      	ldr	r3, [pc, #260]	; (30004790 <BOOT_LoadRDPImg+0x130>)
3000468c:	4620      	mov	r0, r4
3000468e:	4798      	blx	r3
30004690:	2101      	movs	r1, #1
30004692:	4b40      	ldr	r3, [pc, #256]	; (30004794 <BOOT_LoadRDPImg+0x134>)
30004694:	4620      	mov	r0, r4
30004696:	4798      	blx	r3
30004698:	4b3f      	ldr	r3, [pc, #252]	; (30004798 <BOOT_LoadRDPImg+0x138>)
3000469a:	2120      	movs	r1, #32
3000469c:	a810      	add	r0, sp, #64	; 0x40
3000469e:	f8df a110 	ldr.w	sl, [pc, #272]	; 300047b0 <BOOT_LoadRDPImg+0x150>
300046a2:	af08      	add	r7, sp, #32
300046a4:	9404      	str	r4, [sp, #16]
300046a6:	4798      	blx	r3
300046a8:	f105 0120 	add.w	r1, r5, #32
300046ac:	2210      	movs	r2, #16
300046ae:	a80c      	add	r0, sp, #48	; 0x30
300046b0:	f8df 9100 	ldr.w	r9, [pc, #256]	; 300047b4 <BOOT_LoadRDPImg+0x154>
300046b4:	47d0      	blx	sl
300046b6:	ab06      	add	r3, sp, #24
300046b8:	9305      	str	r3, [sp, #20]
300046ba:	2210      	movs	r2, #16
300046bc:	4641      	mov	r1, r8
300046be:	a818      	add	r0, sp, #96	; 0x60
300046c0:	f000 fb72 	bl	30004da8 <BOOT_ImgCopy>
300046c4:	2310      	movs	r3, #16
300046c6:	aa0c      	add	r2, sp, #48	; 0x30
300046c8:	a818      	add	r0, sp, #96	; 0x60
300046ca:	4619      	mov	r1, r3
300046cc:	9700      	str	r7, [sp, #0]
300046ce:	47c8      	blx	r9
300046d0:	683b      	ldr	r3, [r7, #0]
300046d2:	4a32      	ldr	r2, [pc, #200]	; (3000479c <BOOT_LoadRDPImg+0x13c>)
300046d4:	4293      	cmp	r3, r2
300046d6:	d14c      	bne.n	30004772 <BOOT_LoadRDPImg+0x112>
300046d8:	9905      	ldr	r1, [sp, #20]
300046da:	687b      	ldr	r3, [r7, #4]
300046dc:	f851 2b04 	ldr.w	r2, [r1], #4
300046e0:	9105      	str	r1, [sp, #20]
300046e2:	492f      	ldr	r1, [pc, #188]	; (300047a0 <BOOT_LoadRDPImg+0x140>)
300046e4:	428b      	cmp	r3, r1
300046e6:	d144      	bne.n	30004772 <BOOT_LoadRDPImg+0x112>
300046e8:	9200      	str	r2, [sp, #0]
300046ea:	2004      	movs	r0, #4
300046ec:	68fe      	ldr	r6, [r7, #12]
300046ee:	2249      	movs	r2, #73	; 0x49
300046f0:	4b2c      	ldr	r3, [pc, #176]	; (300047a4 <BOOT_LoadRDPImg+0x144>)
300046f2:	3e20      	subs	r6, #32
300046f4:	492c      	ldr	r1, [pc, #176]	; (300047a8 <BOOT_LoadRDPImg+0x148>)
300046f6:	9601      	str	r6, [sp, #4]
300046f8:	68bd      	ldr	r5, [r7, #8]
300046fa:	3520      	adds	r5, #32
300046fc:	9502      	str	r5, [sp, #8]
300046fe:	f004 feb7 	bl	30009470 <rtk_log_write>
30004702:	f1bb 0f00 	cmp.w	fp, #0
30004706:	d006      	beq.n	30004716 <BOOT_LoadRDPImg+0xb6>
30004708:	9a04      	ldr	r2, [sp, #16]
3000470a:	f10b 0304 	add.w	r3, fp, #4
3000470e:	f84b 6032 	str.w	r6, [fp, r2, lsl #3]
30004712:	f843 5032 	str.w	r5, [r3, r2, lsl #3]
30004716:	b1dd      	cbz	r5, 30004750 <BOOT_LoadRDPImg+0xf0>
30004718:	f5b5 7f80 	cmp.w	r5, #256	; 0x100
3000471c:	462c      	mov	r4, r5
3000471e:	4641      	mov	r1, r8
30004720:	a818      	add	r0, sp, #96	; 0x60
30004722:	bf28      	it	cs
30004724:	f44f 7480 	movcs.w	r4, #256	; 0x100
30004728:	4622      	mov	r2, r4
3000472a:	44a0      	add	r8, r4
3000472c:	f000 fb3c 	bl	30004da8 <BOOT_ImgCopy>
30004730:	2310      	movs	r3, #16
30004732:	aa0c      	add	r2, sp, #48	; 0x30
30004734:	4621      	mov	r1, r4
30004736:	9600      	str	r6, [sp, #0]
30004738:	a818      	add	r0, sp, #96	; 0x60
3000473a:	47c8      	blx	r9
3000473c:	ab18      	add	r3, sp, #96	; 0x60
3000473e:	f1a4 0110 	sub.w	r1, r4, #16
30004742:	2210      	movs	r2, #16
30004744:	a80c      	add	r0, sp, #48	; 0x30
30004746:	4426      	add	r6, r4
30004748:	4419      	add	r1, r3
3000474a:	47d0      	blx	sl
3000474c:	1b2d      	subs	r5, r5, r4
3000474e:	d1e3      	bne.n	30004718 <BOOT_LoadRDPImg+0xb8>
30004750:	9b04      	ldr	r3, [sp, #16]
30004752:	b13b      	cbz	r3, 30004764 <BOOT_LoadRDPImg+0x104>
30004754:	2100      	movs	r1, #0
30004756:	4b0f      	ldr	r3, [pc, #60]	; (30004794 <BOOT_LoadRDPImg+0x134>)
30004758:	4608      	mov	r0, r1
3000475a:	4798      	blx	r3
3000475c:	2002      	movs	r0, #2
3000475e:	b059      	add	sp, #356	; 0x164
30004760:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30004764:	2301      	movs	r3, #1
30004766:	9304      	str	r3, [sp, #16]
30004768:	e7a7      	b.n	300046ba <BOOT_LoadRDPImg+0x5a>
3000476a:	2002      	movs	r0, #2
3000476c:	b059      	add	sp, #356	; 0x164
3000476e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30004772:	9b04      	ldr	r3, [sp, #16]
30004774:	aa06      	add	r2, sp, #24
30004776:	2002      	movs	r0, #2
30004778:	490b      	ldr	r1, [pc, #44]	; (300047a8 <BOOT_LoadRDPImg+0x148>)
3000477a:	f852 4023 	ldr.w	r4, [r2, r3, lsl #2]
3000477e:	2245      	movs	r2, #69	; 0x45
30004780:	4b0a      	ldr	r3, [pc, #40]	; (300047ac <BOOT_LoadRDPImg+0x14c>)
30004782:	9400      	str	r4, [sp, #0]
30004784:	f004 fe74 	bl	30009470 <rtk_log_write>
30004788:	2000      	movs	r0, #0
3000478a:	e7e8      	b.n	3000475e <BOOT_LoadRDPImg+0xfe>
3000478c:	3000bb18 	.word	0x3000bb18
30004790:	00002429 	.word	0x00002429
30004794:	00002479 	.word	0x00002479
30004798:	00004641 	.word	0x00004641
3000479c:	35393138 	.word	0x35393138
300047a0:	31313738 	.word	0x31313738
300047a4:	3000ba74 	.word	0x3000ba74
300047a8:	3000b71c 	.word	0x3000b71c
300047ac:	3000ba68 	.word	0x3000ba68
300047b0:	00012a1d 	.word	0x00012a1d
300047b4:	000046f5 	.word	0x000046f5

300047b8 <_BOOT_Validate_ImgHash>:
300047b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
300047bc:	f5ad 7d51 	sub.w	sp, sp, #836	; 0x344
300047c0:	4605      	mov	r5, r0
300047c2:	4690      	mov	r8, r2
300047c4:	461c      	mov	r4, r3
300047c6:	9103      	str	r1, [sp, #12]
300047c8:	2100      	movs	r1, #0
300047ca:	22e0      	movs	r2, #224	; 0xe0
300047cc:	4b8a      	ldr	r3, [pc, #552]	; (300049f8 <_BOOT_Validate_ImgHash+0x240>)
300047ce:	a818      	add	r0, sp, #96	; 0x60
300047d0:	f88d 101f 	strb.w	r1, [sp, #31]
300047d4:	4798      	blx	r3
300047d6:	4628      	mov	r0, r5
300047d8:	f10d 021f 	add.w	r2, sp, #31
300047dc:	f10d 011e 	add.w	r1, sp, #30
300047e0:	f006 ff8a 	bl	3000b6f8 <__SBOOT_GetMdType_veneer>
300047e4:	9001      	str	r0, [sp, #4]
300047e6:	2800      	cmp	r0, #0
300047e8:	d166      	bne.n	300048b8 <_BOOT_Validate_ImgHash+0x100>
300047ea:	f89d 301f 	ldrb.w	r3, [sp, #31]
300047ee:	2b00      	cmp	r3, #0
300047f0:	d067      	beq.n	300048c2 <_BOOT_Validate_ImgHash+0x10a>
300047f2:	2101      	movs	r1, #1
300047f4:	4605      	mov	r5, r0
300047f6:	4b81      	ldr	r3, [pc, #516]	; (300049fc <_BOOT_Validate_ImgHash+0x244>)
300047f8:	4608      	mov	r0, r1
300047fa:	4798      	blx	r3
300047fc:	4629      	mov	r1, r5
300047fe:	ab18      	add	r3, sp, #96	; 0x60
30004800:	2220      	movs	r2, #32
30004802:	f89d 001e 	ldrb.w	r0, [sp, #30]
30004806:	4d7e      	ldr	r5, [pc, #504]	; (30004a00 <_BOOT_Validate_ImgHash+0x248>)
30004808:	47a8      	blx	r5
3000480a:	2800      	cmp	r0, #0
3000480c:	f040 808b 	bne.w	30004926 <_BOOT_Validate_ImgHash+0x16e>
30004810:	b32c      	cbz	r4, 3000485e <_BOOT_Validate_ImgHash+0xa6>
30004812:	aad0      	add	r2, sp, #832	; 0x340
30004814:	1e63      	subs	r3, r4, #1
30004816:	ae50      	add	r6, sp, #320	; 0x140
30004818:	f8df a1fc 	ldr.w	sl, [pc, #508]	; 30004a18 <_BOOT_Validate_ImgHash+0x260>
3000481c:	f012 0218 	ands.w	r2, r2, #24
30004820:	b2db      	uxtb	r3, r3
30004822:	f026 091f 	bic.w	r9, r6, #31
30004826:	4d77      	ldr	r5, [pc, #476]	; (30004a04 <_BOOT_Validate_ImgHash+0x24c>)
30004828:	9204      	str	r2, [sp, #16]
3000482a:	f108 0208 	add.w	r2, r8, #8
3000482e:	bf08      	it	eq
30004830:	46b1      	moveq	r9, r6
30004832:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
30004836:	9302      	str	r3, [sp, #8]
30004838:	e9d8 b700 	ldrd	fp, r7, [r8]
3000483c:	f10b 4278 	add.w	r2, fp, #4160749568	; 0xf8000000
30004840:	f1b2 6f00 	cmp.w	r2, #134217728	; 0x8000000
30004844:	f0c0 80a7 	bcc.w	30004996 <_BOOT_Validate_ImgHash+0x1de>
30004848:	4639      	mov	r1, r7
3000484a:	4658      	mov	r0, fp
3000484c:	aa18      	add	r2, sp, #96	; 0x60
3000484e:	47d0      	blx	sl
30004850:	2800      	cmp	r0, #0
30004852:	d168      	bne.n	30004926 <_BOOT_Validate_ImgHash+0x16e>
30004854:	f108 0808 	add.w	r8, r8, #8
30004858:	9b02      	ldr	r3, [sp, #8]
3000485a:	4543      	cmp	r3, r8
3000485c:	d1ec      	bne.n	30004838 <_BOOT_Validate_ImgHash+0x80>
3000485e:	ac08      	add	r4, sp, #32
30004860:	a918      	add	r1, sp, #96	; 0x60
30004862:	4b69      	ldr	r3, [pc, #420]	; (30004a08 <_BOOT_Validate_ImgHash+0x250>)
30004864:	4620      	mov	r0, r4
30004866:	4798      	blx	r3
30004868:	4601      	mov	r1, r0
3000486a:	2800      	cmp	r0, #0
3000486c:	d15b      	bne.n	30004926 <_BOOT_Validate_ImgHash+0x16e>
3000486e:	2001      	movs	r0, #1
30004870:	4b62      	ldr	r3, [pc, #392]	; (300049fc <_BOOT_Validate_ImgHash+0x244>)
30004872:	4798      	blx	r3
30004874:	f89d 501e 	ldrb.w	r5, [sp, #30]
30004878:	4b64      	ldr	r3, [pc, #400]	; (30004a0c <_BOOT_Validate_ImgHash+0x254>)
3000487a:	4798      	blx	r3
3000487c:	fbb0 f3f5 	udiv	r3, r0, r5
30004880:	fb03 0315 	mls	r3, r3, r5, r0
30004884:	b2db      	uxtb	r3, r3
30004886:	b1bd      	cbz	r5, 300048b8 <_BOOT_Validate_ImgHash+0x100>
30004888:	2000      	movs	r0, #0
3000488a:	9f03      	ldr	r7, [sp, #12]
3000488c:	4606      	mov	r6, r0
3000488e:	1c5a      	adds	r2, r3, #1
30004890:	5cf9      	ldrb	r1, [r7, r3]
30004892:	5ce3      	ldrb	r3, [r4, r3]
30004894:	3001      	adds	r0, #1
30004896:	b2d2      	uxtb	r2, r2
30004898:	404b      	eors	r3, r1
3000489a:	431e      	orrs	r6, r3
3000489c:	fbb2 f3f5 	udiv	r3, r2, r5
300048a0:	fb05 2213 	mls	r2, r5, r3, r2
300048a4:	b2d3      	uxtb	r3, r2
300048a6:	b2c2      	uxtb	r2, r0
300048a8:	4295      	cmp	r5, r2
300048aa:	d8f0      	bhi.n	3000488e <_BOOT_Validate_ImgHash+0xd6>
300048ac:	2e00      	cmp	r6, #0
300048ae:	9b01      	ldr	r3, [sp, #4]
300048b0:	bf18      	it	ne
300048b2:	f06f 0306 	mvnne.w	r3, #6
300048b6:	9301      	str	r3, [sp, #4]
300048b8:	9801      	ldr	r0, [sp, #4]
300048ba:	f50d 7d51 	add.w	sp, sp, #836	; 0x344
300048be:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
300048c2:	a918      	add	r1, sp, #96	; 0x60
300048c4:	f89d 001e 	ldrb.w	r0, [sp, #30]
300048c8:	4b51      	ldr	r3, [pc, #324]	; (30004a10 <_BOOT_Validate_ImgHash+0x258>)
300048ca:	4798      	blx	r3
300048cc:	bb58      	cbnz	r0, 30004926 <_BOOT_Validate_ImgHash+0x16e>
300048ce:	b31c      	cbz	r4, 30004918 <_BOOT_Validate_ImgHash+0x160>
300048d0:	aad0      	add	r2, sp, #832	; 0x340
300048d2:	1e63      	subs	r3, r4, #1
300048d4:	ae50      	add	r6, sp, #320	; 0x140
300048d6:	f8df a144 	ldr.w	sl, [pc, #324]	; 30004a1c <_BOOT_Validate_ImgHash+0x264>
300048da:	f012 0218 	ands.w	r2, r2, #24
300048de:	b2db      	uxtb	r3, r3
300048e0:	f026 091f 	bic.w	r9, r6, #31
300048e4:	4d47      	ldr	r5, [pc, #284]	; (30004a04 <_BOOT_Validate_ImgHash+0x24c>)
300048e6:	9204      	str	r2, [sp, #16]
300048e8:	f108 0208 	add.w	r2, r8, #8
300048ec:	bf08      	it	eq
300048ee:	46b1      	moveq	r9, r6
300048f0:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
300048f4:	9302      	str	r3, [sp, #8]
300048f6:	e9d8 b700 	ldrd	fp, r7, [r8]
300048fa:	f10b 4278 	add.w	r2, fp, #4160749568	; 0xf8000000
300048fe:	f1b2 6f00 	cmp.w	r2, #134217728	; 0x8000000
30004902:	d318      	bcc.n	30004936 <_BOOT_Validate_ImgHash+0x17e>
30004904:	4639      	mov	r1, r7
30004906:	4658      	mov	r0, fp
30004908:	aa18      	add	r2, sp, #96	; 0x60
3000490a:	47d0      	blx	sl
3000490c:	b958      	cbnz	r0, 30004926 <_BOOT_Validate_ImgHash+0x16e>
3000490e:	f108 0808 	add.w	r8, r8, #8
30004912:	9b02      	ldr	r3, [sp, #8]
30004914:	4543      	cmp	r3, r8
30004916:	d1ee      	bne.n	300048f6 <_BOOT_Validate_ImgHash+0x13e>
30004918:	ac08      	add	r4, sp, #32
3000491a:	a918      	add	r1, sp, #96	; 0x60
3000491c:	4b3d      	ldr	r3, [pc, #244]	; (30004a14 <_BOOT_Validate_ImgHash+0x25c>)
3000491e:	4620      	mov	r0, r4
30004920:	4798      	blx	r3
30004922:	2800      	cmp	r0, #0
30004924:	d0a6      	beq.n	30004874 <_BOOT_Validate_ImgHash+0xbc>
30004926:	f06f 030a 	mvn.w	r3, #10
3000492a:	9301      	str	r3, [sp, #4]
3000492c:	9801      	ldr	r0, [sp, #4]
3000492e:	f50d 7d51 	add.w	sp, sp, #836	; 0x344
30004932:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30004936:	2f00      	cmp	r7, #0
30004938:	d0e9      	beq.n	3000490e <_BOOT_Validate_ImgHash+0x156>
3000493a:	9c04      	ldr	r4, [sp, #16]
3000493c:	f8cd 8014 	str.w	r8, [sp, #20]
30004940:	f5b7 7f00 	cmp.w	r7, #512	; 0x200
30004944:	46b8      	mov	r8, r7
30004946:	4659      	mov	r1, fp
30004948:	4630      	mov	r0, r6
3000494a:	bf28      	it	cs
3000494c:	f44f 7800 	movcs.w	r8, #512	; 0x200
30004950:	4642      	mov	r2, r8
30004952:	f000 fa29 	bl	30004da8 <BOOT_ImgCopy>
30004956:	696a      	ldr	r2, [r5, #20]
30004958:	03d3      	lsls	r3, r2, #15
3000495a:	d50f      	bpl.n	3000497c <_BOOT_Validate_ImgHash+0x1c4>
3000495c:	eb08 0004 	add.w	r0, r8, r4
30004960:	f3bf 8f4f 	dsb	sy
30004964:	4448      	add	r0, r9
30004966:	464a      	mov	r2, r9
30004968:	f8c5 2270 	str.w	r2, [r5, #624]	; 0x270
3000496c:	3220      	adds	r2, #32
3000496e:	1a83      	subs	r3, r0, r2
30004970:	2b00      	cmp	r3, #0
30004972:	dcf9      	bgt.n	30004968 <_BOOT_Validate_ImgHash+0x1b0>
30004974:	f3bf 8f4f 	dsb	sy
30004978:	f3bf 8f6f 	isb	sy
3000497c:	aa18      	add	r2, sp, #96	; 0x60
3000497e:	4641      	mov	r1, r8
30004980:	4630      	mov	r0, r6
30004982:	47d0      	blx	sl
30004984:	2800      	cmp	r0, #0
30004986:	d1ce      	bne.n	30004926 <_BOOT_Validate_ImgHash+0x16e>
30004988:	ebb7 0708 	subs.w	r7, r7, r8
3000498c:	44c3      	add	fp, r8
3000498e:	d1d7      	bne.n	30004940 <_BOOT_Validate_ImgHash+0x188>
30004990:	f8dd 8014 	ldr.w	r8, [sp, #20]
30004994:	e7bb      	b.n	3000490e <_BOOT_Validate_ImgHash+0x156>
30004996:	2f00      	cmp	r7, #0
30004998:	f43f af5c 	beq.w	30004854 <_BOOT_Validate_ImgHash+0x9c>
3000499c:	9c04      	ldr	r4, [sp, #16]
3000499e:	f8cd 8014 	str.w	r8, [sp, #20]
300049a2:	f5b7 7f00 	cmp.w	r7, #512	; 0x200
300049a6:	46b8      	mov	r8, r7
300049a8:	4659      	mov	r1, fp
300049aa:	4630      	mov	r0, r6
300049ac:	bf28      	it	cs
300049ae:	f44f 7800 	movcs.w	r8, #512	; 0x200
300049b2:	4642      	mov	r2, r8
300049b4:	f000 f9f8 	bl	30004da8 <BOOT_ImgCopy>
300049b8:	696a      	ldr	r2, [r5, #20]
300049ba:	03d2      	lsls	r2, r2, #15
300049bc:	d50f      	bpl.n	300049de <_BOOT_Validate_ImgHash+0x226>
300049be:	eb08 0004 	add.w	r0, r8, r4
300049c2:	f3bf 8f4f 	dsb	sy
300049c6:	4448      	add	r0, r9
300049c8:	464a      	mov	r2, r9
300049ca:	f8c5 2270 	str.w	r2, [r5, #624]	; 0x270
300049ce:	3220      	adds	r2, #32
300049d0:	1a83      	subs	r3, r0, r2
300049d2:	2b00      	cmp	r3, #0
300049d4:	dcf9      	bgt.n	300049ca <_BOOT_Validate_ImgHash+0x212>
300049d6:	f3bf 8f4f 	dsb	sy
300049da:	f3bf 8f6f 	isb	sy
300049de:	aa18      	add	r2, sp, #96	; 0x60
300049e0:	4641      	mov	r1, r8
300049e2:	4630      	mov	r0, r6
300049e4:	47d0      	blx	sl
300049e6:	2800      	cmp	r0, #0
300049e8:	d19d      	bne.n	30004926 <_BOOT_Validate_ImgHash+0x16e>
300049ea:	ebb7 0708 	subs.w	r7, r7, r8
300049ee:	44c3      	add	fp, r8
300049f0:	d1d7      	bne.n	300049a2 <_BOOT_Validate_ImgHash+0x1ea>
300049f2:	f8dd 8014 	ldr.w	r8, [sp, #20]
300049f6:	e72d      	b.n	30004854 <_BOOT_Validate_ImgHash+0x9c>
300049f8:	00012be5 	.word	0x00012be5
300049fc:	000024dd 	.word	0x000024dd
30004a00:	3000a68d 	.word	0x3000a68d
30004a04:	e000ed00 	.word	0xe000ed00
30004a08:	00005bb9 	.word	0x00005bb9
30004a0c:	0000ea4d 	.word	0x0000ea4d
30004a10:	00004ffd 	.word	0x00004ffd
30004a14:	000053f1 	.word	0x000053f1
30004a18:	00005b4d 	.word	0x00005b4d
30004a1c:	00005385 	.word	0x00005385

30004a20 <BOOT_Validate_ImgHash>:
30004a20:	b530      	push	{r4, r5, lr}
30004a22:	b085      	sub	sp, #20
30004a24:	4d0a      	ldr	r5, [pc, #40]	; (30004a50 <BOOT_Validate_ImgHash+0x30>)
30004a26:	4604      	mov	r4, r0
30004a28:	9301      	str	r3, [sp, #4]
30004a2a:	e9cd 2102 	strd	r2, r1, [sp, #8]
30004a2e:	47a8      	blx	r5
30004a30:	9903      	ldr	r1, [sp, #12]
30004a32:	e9dd 3201 	ldrd	r3, r2, [sp, #4]
30004a36:	b128      	cbz	r0, 30004a44 <BOOT_Validate_ImgHash+0x24>
30004a38:	4620      	mov	r0, r4
30004a3a:	b005      	add	sp, #20
30004a3c:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
30004a40:	f006 be4e 	b.w	3000b6e0 <__SBOOT_Validate_ImgHash_veneer>
30004a44:	4620      	mov	r0, r4
30004a46:	b005      	add	sp, #20
30004a48:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
30004a4c:	f7ff beb4 	b.w	300047b8 <_BOOT_Validate_ImgHash>
30004a50:	30009ae5 	.word	0x30009ae5

30004a54 <BOOT_SignatureCheck>:
30004a54:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
30004a58:	4616      	mov	r6, r2
30004a5a:	b089      	sub	sp, #36	; 0x24
30004a5c:	4a77      	ldr	r2, [pc, #476]	; (30004c3c <BOOT_SignatureCheck+0x1e8>)
30004a5e:	4698      	mov	r8, r3
30004a60:	4b77      	ldr	r3, [pc, #476]	; (30004c40 <BOOT_SignatureCheck+0x1ec>)
30004a62:	4607      	mov	r7, r0
30004a64:	460d      	mov	r5, r1
30004a66:	7814      	ldrb	r4, [r2, #0]
30004a68:	f10d 0c20 	add.w	ip, sp, #32
30004a6c:	f8dd 9040 	ldr.w	r9, [sp, #64]	; 0x40
30004a70:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
30004a72:	e90c 000f 	stmdb	ip, {r0, r1, r2, r3}
30004a76:	b91c      	cbnz	r4, 30004a80 <BOOT_SignatureCheck+0x2c>
30004a78:	2001      	movs	r0, #1
30004a7a:	b009      	add	sp, #36	; 0x24
30004a7c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
30004a80:	4b70      	ldr	r3, [pc, #448]	; (30004c44 <BOOT_SignatureCheck+0x1f0>)
30004a82:	2000      	movs	r0, #0
30004a84:	4798      	blx	r3
30004a86:	7cfb      	ldrb	r3, [r7, #19]
30004a88:	7cba      	ldrb	r2, [r7, #18]
30004a8a:	f10d 010f 	add.w	r1, sp, #15
30004a8e:	f10d 000e 	add.w	r0, sp, #14
30004a92:	f006 fe21 	bl	3000b6d8 <__SBOOT_Validate_Algorithm_veneer>
30004a96:	bb00      	cbnz	r0, 30004ada <BOOT_SignatureCheck+0x86>
30004a98:	f8d8 101c 	ldr.w	r1, [r8, #28]
30004a9c:	2900      	cmp	r1, #0
30004a9e:	f000 80cb 	beq.w	30004c38 <BOOT_SignatureCheck+0x1e4>
30004aa2:	4604      	mov	r4, r0
30004aa4:	e002      	b.n	30004aac <BOOT_SignatureCheck+0x58>
30004aa6:	b2d4      	uxtb	r4, r2
30004aa8:	428c      	cmp	r4, r1
30004aaa:	d208      	bcs.n	30004abe <BOOT_SignatureCheck+0x6a>
30004aac:	eb04 03c4 	add.w	r3, r4, r4, lsl #3
30004ab0:	1c62      	adds	r2, r4, #1
30004ab2:	eb08 0383 	add.w	r3, r8, r3, lsl #2
30004ab6:	f8d3 30b0 	ldr.w	r3, [r3, #176]	; 0xb0
30004aba:	454b      	cmp	r3, r9
30004abc:	d1f3      	bne.n	30004aa6 <BOOT_SignatureCheck+0x52>
30004abe:	2224      	movs	r2, #36	; 0x24
30004ac0:	23b4      	movs	r3, #180	; 0xb4
30004ac2:	fb12 3204 	smlabb	r2, r2, r4, r3
30004ac6:	4442      	add	r2, r8
30004ac8:	f107 0870 	add.w	r8, r7, #112	; 0x70
30004acc:	f89d 000e 	ldrb.w	r0, [sp, #14]
30004ad0:	4641      	mov	r1, r8
30004ad2:	f006 fe09 	bl	3000b6e8 <__SBOOT_Validate_PubKey_veneer>
30004ad6:	2800      	cmp	r0, #0
30004ad8:	d078      	beq.n	30004bcc <BOOT_SignatureCheck+0x178>
30004ada:	7c7a      	ldrb	r2, [r7, #17]
30004adc:	a908      	add	r1, sp, #32
30004ade:	9001      	str	r0, [sp, #4]
30004ae0:	2002      	movs	r0, #2
30004ae2:	eb01 0282 	add.w	r2, r1, r2, lsl #2
30004ae6:	4b58      	ldr	r3, [pc, #352]	; (30004c48 <BOOT_SignatureCheck+0x1f4>)
30004ae8:	4958      	ldr	r1, [pc, #352]	; (30004c4c <BOOT_SignatureCheck+0x1f8>)
30004aea:	f852 2c10 	ldr.w	r2, [r2, #-16]
30004aee:	9200      	str	r2, [sp, #0]
30004af0:	2245      	movs	r2, #69	; 0x45
30004af2:	f004 fcbd 	bl	30009470 <rtk_log_write>
30004af6:	2e00      	cmp	r6, #0
30004af8:	d044      	beq.n	30004b84 <BOOT_SignatureCheck+0x130>
30004afa:	f106 39ff 	add.w	r9, r6, #4294967295	; 0xffffffff
30004afe:	f04f 0800 	mov.w	r8, #0
30004b02:	4e53      	ldr	r6, [pc, #332]	; (30004c50 <BOOT_SignatureCheck+0x1fc>)
30004b04:	1d2f      	adds	r7, r5, #4
30004b06:	fa5f f389 	uxtb.w	r3, r9
30004b0a:	f105 0908 	add.w	r9, r5, #8
30004b0e:	4c51      	ldr	r4, [pc, #324]	; (30004c54 <BOOT_SignatureCheck+0x200>)
30004b10:	eb09 09c3 	add.w	r9, r9, r3, lsl #3
30004b14:	e003      	b.n	30004b1e <BOOT_SignatureCheck+0xca>
30004b16:	3508      	adds	r5, #8
30004b18:	3708      	adds	r7, #8
30004b1a:	45a9      	cmp	r9, r5
30004b1c:	d032      	beq.n	30004b84 <BOOT_SignatureCheck+0x130>
30004b1e:	f857 0c04 	ldr.w	r0, [r7, #-4]
30004b22:	f100 4378 	add.w	r3, r0, #4160749568	; 0xf8000000
30004b26:	f1b3 6f00 	cmp.w	r3, #134217728	; 0x8000000
30004b2a:	d3f4      	bcc.n	30004b16 <BOOT_SignatureCheck+0xc2>
30004b2c:	2100      	movs	r1, #0
30004b2e:	686a      	ldr	r2, [r5, #4]
30004b30:	47b0      	blx	r6
30004b32:	6963      	ldr	r3, [r4, #20]
30004b34:	03d9      	lsls	r1, r3, #15
30004b36:	d5ee      	bpl.n	30004b16 <BOOT_SignatureCheck+0xc2>
30004b38:	f857 2c04 	ldr.w	r2, [r7, #-4]
30004b3c:	686b      	ldr	r3, [r5, #4]
30004b3e:	ea02 0103 	and.w	r1, r2, r3
30004b42:	3101      	adds	r1, #1
30004b44:	d022      	beq.n	30004b8c <BOOT_SignatureCheck+0x138>
30004b46:	f012 011f 	ands.w	r1, r2, #31
30004b4a:	d002      	beq.n	30004b52 <BOOT_SignatureCheck+0xfe>
30004b4c:	440b      	add	r3, r1
30004b4e:	f022 021f 	bic.w	r2, r2, #31
30004b52:	f3bf 8f4f 	dsb	sy
30004b56:	2b00      	cmp	r3, #0
30004b58:	dd0c      	ble.n	30004b74 <BOOT_SignatureCheck+0x120>
30004b5a:	1e59      	subs	r1, r3, #1
30004b5c:	f102 0320 	add.w	r3, r2, #32
30004b60:	f021 011f 	bic.w	r1, r1, #31
30004b64:	4419      	add	r1, r3
30004b66:	428b      	cmp	r3, r1
30004b68:	f8c4 2270 	str.w	r2, [r4, #624]	; 0x270
30004b6c:	461a      	mov	r2, r3
30004b6e:	f103 0320 	add.w	r3, r3, #32
30004b72:	d1f8      	bne.n	30004b66 <BOOT_SignatureCheck+0x112>
30004b74:	f3bf 8f4f 	dsb	sy
30004b78:	f3bf 8f6f 	isb	sy
30004b7c:	3508      	adds	r5, #8
30004b7e:	3708      	adds	r7, #8
30004b80:	45a9      	cmp	r9, r5
30004b82:	d1cc      	bne.n	30004b1e <BOOT_SignatureCheck+0xca>
30004b84:	2000      	movs	r0, #0
30004b86:	b009      	add	sp, #36	; 0x24
30004b88:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
30004b8c:	f8c4 8084 	str.w	r8, [r4, #132]	; 0x84
30004b90:	f3bf 8f4f 	dsb	sy
30004b94:	f8d4 3080 	ldr.w	r3, [r4, #128]	; 0x80
30004b98:	f643 7ee0 	movw	lr, #16352	; 0x3fe0
30004b9c:	f3c3 304e 	ubfx	r0, r3, #13, #15
30004ba0:	f3c3 0cc9 	ubfx	ip, r3, #3, #10
30004ba4:	0140      	lsls	r0, r0, #5
30004ba6:	ea00 010e 	and.w	r1, r0, lr
30004baa:	4663      	mov	r3, ip
30004bac:	ea41 7283 	orr.w	r2, r1, r3, lsl #30
30004bb0:	3b01      	subs	r3, #1
30004bb2:	f8c4 2274 	str.w	r2, [r4, #628]	; 0x274
30004bb6:	1c5a      	adds	r2, r3, #1
30004bb8:	d1f8      	bne.n	30004bac <BOOT_SignatureCheck+0x158>
30004bba:	3820      	subs	r0, #32
30004bbc:	f110 0f20 	cmn.w	r0, #32
30004bc0:	d1f1      	bne.n	30004ba6 <BOOT_SignatureCheck+0x152>
30004bc2:	f3bf 8f4f 	dsb	sy
30004bc6:	f3bf 8f6f 	isb	sy
30004bca:	e7d7      	b.n	30004b7c <BOOT_SignatureCheck+0x128>
30004bcc:	f507 7380 	add.w	r3, r7, #256	; 0x100
30004bd0:	4642      	mov	r2, r8
30004bd2:	f89d 100f 	ldrb.w	r1, [sp, #15]
30004bd6:	9301      	str	r3, [sp, #4]
30004bd8:	f44f 7380 	mov.w	r3, #256	; 0x100
30004bdc:	f89d 000e 	ldrb.w	r0, [sp, #14]
30004be0:	9300      	str	r3, [sp, #0]
30004be2:	463b      	mov	r3, r7
30004be4:	f006 fd84 	bl	3000b6f0 <__SBOOT_Validate_Signature_veneer>
30004be8:	2800      	cmp	r0, #0
30004bea:	f47f af76 	bne.w	30004ada <BOOT_SignatureCheck+0x86>
30004bee:	f107 0830 	add.w	r8, r7, #48	; 0x30
30004bf2:	4b19      	ldr	r3, [pc, #100]	; (30004c58 <BOOT_SignatureCheck+0x204>)
30004bf4:	f89d 400f 	ldrb.w	r4, [sp, #15]
30004bf8:	4798      	blx	r3
30004bfa:	4641      	mov	r1, r8
30004bfc:	b1b0      	cbz	r0, 30004c2c <BOOT_SignatureCheck+0x1d8>
30004bfe:	4620      	mov	r0, r4
30004c00:	4633      	mov	r3, r6
30004c02:	462a      	mov	r2, r5
30004c04:	f006 fd6c 	bl	3000b6e0 <__SBOOT_Validate_ImgHash_veneer>
30004c08:	2800      	cmp	r0, #0
30004c0a:	f47f af66 	bne.w	30004ada <BOOT_SignatureCheck+0x86>
30004c0e:	7c7c      	ldrb	r4, [r7, #17]
30004c10:	a808      	add	r0, sp, #32
30004c12:	4b12      	ldr	r3, [pc, #72]	; (30004c5c <BOOT_SignatureCheck+0x208>)
30004c14:	2249      	movs	r2, #73	; 0x49
30004c16:	eb00 0484 	add.w	r4, r0, r4, lsl #2
30004c1a:	490c      	ldr	r1, [pc, #48]	; (30004c4c <BOOT_SignatureCheck+0x1f8>)
30004c1c:	2004      	movs	r0, #4
30004c1e:	f854 4c10 	ldr.w	r4, [r4, #-16]
30004c22:	9400      	str	r4, [sp, #0]
30004c24:	f004 fc24 	bl	30009470 <rtk_log_write>
30004c28:	2001      	movs	r0, #1
30004c2a:	e726      	b.n	30004a7a <BOOT_SignatureCheck+0x26>
30004c2c:	4620      	mov	r0, r4
30004c2e:	4633      	mov	r3, r6
30004c30:	462a      	mov	r2, r5
30004c32:	f7ff fdc1 	bl	300047b8 <_BOOT_Validate_ImgHash>
30004c36:	e7e7      	b.n	30004c08 <BOOT_SignatureCheck+0x1b4>
30004c38:	22b4      	movs	r2, #180	; 0xb4
30004c3a:	e744      	b.n	30004ac6 <BOOT_SignatureCheck+0x72>
30004c3c:	3000dec0 	.word	0x3000dec0
30004c40:	3000bb20 	.word	0x3000bb20
30004c44:	00002451 	.word	0x00002451
30004c48:	3000ba94 	.word	0x3000ba94
30004c4c:	3000b71c 	.word	0x3000b71c
30004c50:	00012be5 	.word	0x00012be5
30004c54:	e000ed00 	.word	0xe000ed00
30004c58:	30009ae5 	.word	0x30009ae5
30004c5c:	3000ba84 	.word	0x3000ba84

30004c60 <BOOT_CertificateCheck>:
30004c60:	b5f0      	push	{r4, r5, r6, r7, lr}
30004c62:	b08d      	sub	sp, #52	; 0x34
30004c64:	4604      	mov	r4, r0
30004c66:	460e      	mov	r6, r1
30004c68:	a804      	add	r0, sp, #16
30004c6a:	f7ff fcb1 	bl	300045d0 <BOOT_SbootEn_Check>
30004c6e:	b910      	cbnz	r0, 30004c76 <BOOT_CertificateCheck+0x16>
30004c70:	2001      	movs	r0, #1
30004c72:	b00d      	add	sp, #52	; 0x34
30004c74:	bdf0      	pop	{r4, r5, r6, r7, pc}
30004c76:	4b1a      	ldr	r3, [pc, #104]	; (30004ce0 <BOOT_CertificateCheck+0x80>)
30004c78:	2000      	movs	r0, #0
30004c7a:	4798      	blx	r3
30004c7c:	7ce3      	ldrb	r3, [r4, #19]
30004c7e:	7ca2      	ldrb	r2, [r4, #18]
30004c80:	f10d 010f 	add.w	r1, sp, #15
30004c84:	f10d 000e 	add.w	r0, sp, #14
30004c88:	f006 fd26 	bl	3000b6d8 <__SBOOT_Validate_Algorithm_veneer>
30004c8c:	4605      	mov	r5, r0
30004c8e:	b948      	cbnz	r0, 30004ca4 <BOOT_CertificateCheck+0x44>
30004c90:	f104 0720 	add.w	r7, r4, #32
30004c94:	aa04      	add	r2, sp, #16
30004c96:	f89d 000e 	ldrb.w	r0, [sp, #14]
30004c9a:	4639      	mov	r1, r7
30004c9c:	f006 fd24 	bl	3000b6e8 <__SBOOT_Validate_PubKey_veneer>
30004ca0:	4605      	mov	r5, r0
30004ca2:	b148      	cbz	r0, 30004cb8 <BOOT_CertificateCheck+0x58>
30004ca4:	4b0f      	ldr	r3, [pc, #60]	; (30004ce4 <BOOT_CertificateCheck+0x84>)
30004ca6:	2245      	movs	r2, #69	; 0x45
30004ca8:	490f      	ldr	r1, [pc, #60]	; (30004ce8 <BOOT_CertificateCheck+0x88>)
30004caa:	2002      	movs	r0, #2
30004cac:	9500      	str	r5, [sp, #0]
30004cae:	f004 fbdf 	bl	30009470 <rtk_log_write>
30004cb2:	2000      	movs	r0, #0
30004cb4:	b00d      	add	sp, #52	; 0x34
30004cb6:	bdf0      	pop	{r4, r5, r6, r7, pc}
30004cb8:	490c      	ldr	r1, [pc, #48]	; (30004cec <BOOT_CertificateCheck+0x8c>)
30004cba:	eb06 06c6 	add.w	r6, r6, r6, lsl #3
30004cbe:	69a0      	ldr	r0, [r4, #24]
30004cc0:	4623      	mov	r3, r4
30004cc2:	eb01 1606 	add.w	r6, r1, r6, lsl #4
30004cc6:	463a      	mov	r2, r7
30004cc8:	9000      	str	r0, [sp, #0]
30004cca:	f89d 100f 	ldrb.w	r1, [sp, #15]
30004cce:	f89d 000e 	ldrb.w	r0, [sp, #14]
30004cd2:	9601      	str	r6, [sp, #4]
30004cd4:	f006 fd0c 	bl	3000b6f0 <__SBOOT_Validate_Signature_veneer>
30004cd8:	4605      	mov	r5, r0
30004cda:	2800      	cmp	r0, #0
30004cdc:	d0c8      	beq.n	30004c70 <BOOT_CertificateCheck+0x10>
30004cde:	e7e1      	b.n	30004ca4 <BOOT_CertificateCheck+0x44>
30004ce0:	00002451 	.word	0x00002451
30004ce4:	3000bab0 	.word	0x3000bab0
30004ce8:	3000b71c 	.word	0x3000b71c
30004cec:	3000e4c4 	.word	0x3000e4c4

30004cf0 <BOOT_Extract_SignatureCheck>:
30004cf0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
30004cf4:	b08c      	sub	sp, #48	; 0x30
30004cf6:	4604      	mov	r4, r0
30004cf8:	460e      	mov	r6, r1
30004cfa:	4617      	mov	r7, r2
30004cfc:	a804      	add	r0, sp, #16
30004cfe:	f7ff fc67 	bl	300045d0 <BOOT_SbootEn_Check>
30004d02:	b918      	cbnz	r0, 30004d0c <BOOT_Extract_SignatureCheck+0x1c>
30004d04:	2001      	movs	r0, #1
30004d06:	b00c      	add	sp, #48	; 0x30
30004d08:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
30004d0c:	4b22      	ldr	r3, [pc, #136]	; (30004d98 <BOOT_Extract_SignatureCheck+0xa8>)
30004d0e:	2000      	movs	r0, #0
30004d10:	4798      	blx	r3
30004d12:	7ce3      	ldrb	r3, [r4, #19]
30004d14:	7ca2      	ldrb	r2, [r4, #18]
30004d16:	f10d 010f 	add.w	r1, sp, #15
30004d1a:	f10d 000e 	add.w	r0, sp, #14
30004d1e:	f006 fcdb 	bl	3000b6d8 <__SBOOT_Validate_Algorithm_veneer>
30004d22:	4605      	mov	r5, r0
30004d24:	b948      	cbnz	r0, 30004d3a <BOOT_Extract_SignatureCheck+0x4a>
30004d26:	f104 0870 	add.w	r8, r4, #112	; 0x70
30004d2a:	aa04      	add	r2, sp, #16
30004d2c:	f89d 000e 	ldrb.w	r0, [sp, #14]
30004d30:	4641      	mov	r1, r8
30004d32:	f006 fcd9 	bl	3000b6e8 <__SBOOT_Validate_PubKey_veneer>
30004d36:	4605      	mov	r5, r0
30004d38:	b150      	cbz	r0, 30004d50 <BOOT_Extract_SignatureCheck+0x60>
30004d3a:	4b18      	ldr	r3, [pc, #96]	; (30004d9c <BOOT_Extract_SignatureCheck+0xac>)
30004d3c:	2245      	movs	r2, #69	; 0x45
30004d3e:	4918      	ldr	r1, [pc, #96]	; (30004da0 <BOOT_Extract_SignatureCheck+0xb0>)
30004d40:	2002      	movs	r0, #2
30004d42:	9500      	str	r5, [sp, #0]
30004d44:	f004 fb94 	bl	30009470 <rtk_log_write>
30004d48:	2000      	movs	r0, #0
30004d4a:	b00c      	add	sp, #48	; 0x30
30004d4c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
30004d50:	f504 7380 	add.w	r3, r4, #256	; 0x100
30004d54:	4642      	mov	r2, r8
30004d56:	f89d 100f 	ldrb.w	r1, [sp, #15]
30004d5a:	9301      	str	r3, [sp, #4]
30004d5c:	f44f 7380 	mov.w	r3, #256	; 0x100
30004d60:	f89d 000e 	ldrb.w	r0, [sp, #14]
30004d64:	9300      	str	r3, [sp, #0]
30004d66:	4623      	mov	r3, r4
30004d68:	f006 fcc2 	bl	3000b6f0 <__SBOOT_Validate_Signature_veneer>
30004d6c:	4605      	mov	r5, r0
30004d6e:	2800      	cmp	r0, #0
30004d70:	d1e3      	bne.n	30004d3a <BOOT_Extract_SignatureCheck+0x4a>
30004d72:	463b      	mov	r3, r7
30004d74:	4632      	mov	r2, r6
30004d76:	f104 0130 	add.w	r1, r4, #48	; 0x30
30004d7a:	f89d 000f 	ldrb.w	r0, [sp, #15]
30004d7e:	f006 fcaf 	bl	3000b6e0 <__SBOOT_Validate_ImgHash_veneer>
30004d82:	4605      	mov	r5, r0
30004d84:	2800      	cmp	r0, #0
30004d86:	d1d8      	bne.n	30004d3a <BOOT_Extract_SignatureCheck+0x4a>
30004d88:	2004      	movs	r0, #4
30004d8a:	4b06      	ldr	r3, [pc, #24]	; (30004da4 <BOOT_Extract_SignatureCheck+0xb4>)
30004d8c:	2249      	movs	r2, #73	; 0x49
30004d8e:	4904      	ldr	r1, [pc, #16]	; (30004da0 <BOOT_Extract_SignatureCheck+0xb0>)
30004d90:	f004 fb6e 	bl	30009470 <rtk_log_write>
30004d94:	2001      	movs	r0, #1
30004d96:	e7b6      	b.n	30004d06 <BOOT_Extract_SignatureCheck+0x16>
30004d98:	00002451 	.word	0x00002451
30004d9c:	3000baf0 	.word	0x3000baf0
30004da0:	3000b71c 	.word	0x3000b71c
30004da4:	3000bad4 	.word	0x3000bad4

30004da8 <BOOT_ImgCopy>:
30004da8:	b510      	push	{r4, lr}
30004daa:	b082      	sub	sp, #8
30004dac:	4b09      	ldr	r3, [pc, #36]	; (30004dd4 <BOOT_ImgCopy+0x2c>)
30004dae:	4604      	mov	r4, r0
30004db0:	e9cd 2100 	strd	r2, r1, [sp]
30004db4:	4798      	blx	r3
30004db6:	e9dd 2100 	ldrd	r2, r1, [sp]
30004dba:	b128      	cbz	r0, 30004dc8 <BOOT_ImgCopy+0x20>
30004dbc:	4620      	mov	r0, r4
30004dbe:	4b06      	ldr	r3, [pc, #24]	; (30004dd8 <BOOT_ImgCopy+0x30>)
30004dc0:	b002      	add	sp, #8
30004dc2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
30004dc6:	4718      	bx	r3
30004dc8:	4620      	mov	r0, r4
30004dca:	b002      	add	sp, #8
30004dcc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
30004dd0:	f001 bb9a 	b.w	30006508 <NandImgCopy>
30004dd4:	30009ae5 	.word	0x30009ae5
30004dd8:	00012a1d 	.word	0x00012a1d

30004ddc <BOOT_OTA_SlotSelect>:
30004ddc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30004de0:	4f4b      	ldr	r7, [pc, #300]	; (30004f10 <BOOT_OTA_SlotSelect+0x134>)
30004de2:	4d4c      	ldr	r5, [pc, #304]	; (30004f14 <BOOT_OTA_SlotSelect+0x138>)
30004de4:	4c4c      	ldr	r4, [pc, #304]	; (30004f18 <BOOT_OTA_SlotSelect+0x13c>)
30004de6:	463e      	mov	r6, r7
30004de8:	f8df 9148 	ldr.w	r9, [pc, #328]	; 30004f34 <BOOT_OTA_SlotSelect+0x158>
30004dec:	f8df 8148 	ldr.w	r8, [pc, #328]	; 30004f38 <BOOT_OTA_SlotSelect+0x15c>
30004df0:	f8df a148 	ldr.w	sl, [pc, #328]	; 30004f3c <BOOT_OTA_SlotSelect+0x160>
30004df4:	f8df b148 	ldr.w	fp, [pc, #328]	; 30004f40 <BOOT_OTA_SlotSelect+0x164>
30004df8:	ed2d 8b02 	vpush	{d8}
30004dfc:	ed9f 8b42 	vldr	d8, [pc, #264]	; 30004f08 <BOOT_OTA_SlotSelect+0x12c>
30004e00:	b083      	sub	sp, #12
30004e02:	f855 1b04 	ldr.w	r1, [r5], #4
30004e06:	9101      	str	r1, [sp, #4]
30004e08:	47d0      	blx	sl
30004e0a:	9901      	ldr	r1, [sp, #4]
30004e0c:	f44f 72b2 	mov.w	r2, #356	; 0x164
30004e10:	2800      	cmp	r0, #0
30004e12:	d041      	beq.n	30004e98 <BOOT_OTA_SlotSelect+0xbc>
30004e14:	4620      	mov	r0, r4
30004e16:	4b41      	ldr	r3, [pc, #260]	; (30004f1c <BOOT_OTA_SlotSelect+0x140>)
30004e18:	4798      	blx	r3
30004e1a:	2208      	movs	r2, #8
30004e1c:	4659      	mov	r1, fp
30004e1e:	4620      	mov	r0, r4
30004e20:	4b3f      	ldr	r3, [pc, #252]	; (30004f20 <BOOT_OTA_SlotSelect+0x144>)
30004e22:	4798      	blx	r3
30004e24:	2800      	cmp	r0, #0
30004e26:	d03b      	beq.n	30004ea0 <BOOT_OTA_SlotSelect+0xc4>
30004e28:	ed86 8b00 	vstr	d8, [r6]
30004e2c:	4b3d      	ldr	r3, [pc, #244]	; (30004f24 <BOOT_OTA_SlotSelect+0x148>)
30004e2e:	f504 74b2 	add.w	r4, r4, #356	; 0x164
30004e32:	3608      	adds	r6, #8
30004e34:	f509 79c8 	add.w	r9, r9, #400	; 0x190
30004e38:	42ab      	cmp	r3, r5
30004e3a:	f108 0890 	add.w	r8, r8, #144	; 0x90
30004e3e:	d1e0      	bne.n	30004e02 <BOOT_OTA_SlotSelect+0x26>
30004e40:	4b39      	ldr	r3, [pc, #228]	; (30004f28 <BOOT_OTA_SlotSelect+0x14c>)
30004e42:	4798      	blx	r3
30004e44:	b178      	cbz	r0, 30004e66 <BOOT_OTA_SlotSelect+0x8a>
30004e46:	4b39      	ldr	r3, [pc, #228]	; (30004f2c <BOOT_OTA_SlotSelect+0x150>)
30004e48:	2100      	movs	r1, #0
30004e4a:	2401      	movs	r4, #1
30004e4c:	f8b3 006e 	ldrh.w	r0, [r3, #110]	; 0x6e
30004e50:	460b      	mov	r3, r1
30004e52:	b280      	uxth	r0, r0
30004e54:	fa04 f203 	lsl.w	r2, r4, r3
30004e58:	3301      	adds	r3, #1
30004e5a:	4202      	tst	r2, r0
30004e5c:	bf08      	it	eq
30004e5e:	3101      	addeq	r1, #1
30004e60:	2b10      	cmp	r3, #16
30004e62:	d1f7      	bne.n	30004e54 <BOOT_OTA_SlotSelect+0x78>
30004e64:	0408      	lsls	r0, r1, #16
30004e66:	e9d7 2300 	ldrd	r2, r3, [r7]
30004e6a:	e9d7 4102 	ldrd	r4, r1, [r7, #8]
30004e6e:	4282      	cmp	r2, r0
30004e70:	f173 0500 	sbcs.w	r5, r3, #0
30004e74:	db32      	blt.n	30004edc <BOOT_OTA_SlotSelect+0x100>
30004e76:	4284      	cmp	r4, r0
30004e78:	f171 0000 	sbcs.w	r0, r1, #0
30004e7c:	da3e      	bge.n	30004efc <BOOT_OTA_SlotSelect+0x120>
30004e7e:	482c      	ldr	r0, [pc, #176]	; (30004f30 <BOOT_OTA_SlotSelect+0x154>)
30004e80:	2501      	movs	r5, #1
30004e82:	7005      	strb	r5, [r0, #0]
30004e84:	42a2      	cmp	r2, r4
30004e86:	418b      	sbcs	r3, r1
30004e88:	bfb4      	ite	lt
30004e8a:	2001      	movlt	r0, #1
30004e8c:	2000      	movge	r0, #0
30004e8e:	b003      	add	sp, #12
30004e90:	ecbd 8b02 	vpop	{d8}
30004e94:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30004e98:	4620      	mov	r0, r4
30004e9a:	f001 fb35 	bl	30006508 <NandImgCopy>
30004e9e:	e7bc      	b.n	30004e1a <BOOT_OTA_SlotSelect+0x3e>
30004ea0:	f855 1c04 	ldr.w	r1, [r5, #-4]
30004ea4:	69a3      	ldr	r3, [r4, #24]
30004ea6:	4419      	add	r1, r3
30004ea8:	9101      	str	r1, [sp, #4]
30004eaa:	47d0      	blx	sl
30004eac:	9901      	ldr	r1, [sp, #4]
30004eae:	2290      	movs	r2, #144	; 0x90
30004eb0:	b9e0      	cbnz	r0, 30004eec <BOOT_OTA_SlotSelect+0x110>
30004eb2:	4640      	mov	r0, r8
30004eb4:	f001 fb28 	bl	30006508 <NandImgCopy>
30004eb8:	6869      	ldr	r1, [r5, #4]
30004eba:	9101      	str	r1, [sp, #4]
30004ebc:	47d0      	blx	sl
30004ebe:	9901      	ldr	r1, [sp, #4]
30004ec0:	f44f 72c8 	mov.w	r2, #400	; 0x190
30004ec4:	b1b0      	cbz	r0, 30004ef4 <BOOT_OTA_SlotSelect+0x118>
30004ec6:	4648      	mov	r0, r9
30004ec8:	4b14      	ldr	r3, [pc, #80]	; (30004f1c <BOOT_OTA_SlotSelect+0x140>)
30004eca:	4798      	blx	r3
30004ecc:	8aa2      	ldrh	r2, [r4, #20]
30004ece:	8ae3      	ldrh	r3, [r4, #22]
30004ed0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
30004ed4:	6033      	str	r3, [r6, #0]
30004ed6:	2300      	movs	r3, #0
30004ed8:	6073      	str	r3, [r6, #4]
30004eda:	e7a7      	b.n	30004e2c <BOOT_OTA_SlotSelect+0x50>
30004edc:	4284      	cmp	r4, r0
30004ede:	f171 0000 	sbcs.w	r0, r1, #0
30004ee2:	dacc      	bge.n	30004e7e <BOOT_OTA_SlotSelect+0xa2>
30004ee4:	4812      	ldr	r0, [pc, #72]	; (30004f30 <BOOT_OTA_SlotSelect+0x154>)
30004ee6:	2500      	movs	r5, #0
30004ee8:	7005      	strb	r5, [r0, #0]
30004eea:	e7cb      	b.n	30004e84 <BOOT_OTA_SlotSelect+0xa8>
30004eec:	4640      	mov	r0, r8
30004eee:	4b0b      	ldr	r3, [pc, #44]	; (30004f1c <BOOT_OTA_SlotSelect+0x140>)
30004ef0:	4798      	blx	r3
30004ef2:	e7e1      	b.n	30004eb8 <BOOT_OTA_SlotSelect+0xdc>
30004ef4:	4648      	mov	r0, r9
30004ef6:	f001 fb07 	bl	30006508 <NandImgCopy>
30004efa:	e7e7      	b.n	30004ecc <BOOT_OTA_SlotSelect+0xf0>
30004efc:	480c      	ldr	r0, [pc, #48]	; (30004f30 <BOOT_OTA_SlotSelect+0x154>)
30004efe:	2502      	movs	r5, #2
30004f00:	7005      	strb	r5, [r0, #0]
30004f02:	e7bf      	b.n	30004e84 <BOOT_OTA_SlotSelect+0xa8>
30004f04:	f3af 8000 	nop.w
30004f08:	ffffffff 	.word	0xffffffff
30004f0c:	ffffffff 	.word	0xffffffff
30004f10:	3000e658 	.word	0x3000e658
30004f14:	3000e4ac 	.word	0x3000e4ac
30004f18:	3000dec4 	.word	0x3000dec4
30004f1c:	00012a1d 	.word	0x00012a1d
30004f20:	000129bd 	.word	0x000129bd
30004f24:	3000e4b4 	.word	0x3000e4b4
30004f28:	0000c21d 	.word	0x0000c21d
30004f2c:	42000300 	.word	0x42000300
30004f30:	3000e654 	.word	0x3000e654
30004f34:	3000e18c 	.word	0x3000e18c
30004f38:	3000e4c4 	.word	0x3000e4c4
30004f3c:	30009ae5 	.word	0x30009ae5
30004f40:	3000bd74 	.word	0x3000bd74

30004f44 <BOOT_LoadSubImage>:
30004f44:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30004f48:	b08f      	sub	sp, #60	; 0x3c
30004f4a:	469a      	mov	sl, r3
30004f4c:	f89d 3060 	ldrb.w	r3, [sp, #96]	; 0x60
30004f50:	9305      	str	r3, [sp, #20]
30004f52:	2a00      	cmp	r2, #0
30004f54:	d03d      	beq.n	30004fd2 <BOOT_LoadSubImage+0x8e>
30004f56:	460f      	mov	r7, r1
30004f58:	4691      	mov	r9, r2
30004f5a:	2600      	movs	r6, #0
30004f5c:	4605      	mov	r5, r0
30004f5e:	4b57      	ldr	r3, [pc, #348]	; (300050bc <BOOT_LoadSubImage+0x178>)
30004f60:	4798      	blx	r3
30004f62:	2220      	movs	r2, #32
30004f64:	4639      	mov	r1, r7
30004f66:	2800      	cmp	r0, #0
30004f68:	d037      	beq.n	30004fda <BOOT_LoadSubImage+0x96>
30004f6a:	4b55      	ldr	r3, [pc, #340]	; (300050c0 <BOOT_LoadSubImage+0x17c>)
30004f6c:	a806      	add	r0, sp, #24
30004f6e:	4798      	blx	r3
30004f70:	9b06      	ldr	r3, [sp, #24]
30004f72:	4a54      	ldr	r2, [pc, #336]	; (300050c4 <BOOT_LoadSubImage+0x180>)
30004f74:	4293      	cmp	r3, r2
30004f76:	d137      	bne.n	30004fe8 <BOOT_LoadSubImage+0xa4>
30004f78:	f102 427b 	add.w	r2, r2, #4211081216	; 0xfb000000
30004f7c:	9b07      	ldr	r3, [sp, #28]
30004f7e:	f502 0278 	add.w	r2, r2, #16252928	; 0xf80000
30004f82:	f502 62c0 	add.w	r2, r2, #1536	; 0x600
30004f86:	4293      	cmp	r3, r2
30004f88:	d12e      	bne.n	30004fe8 <BOOT_LoadSubImage+0xa4>
30004f8a:	9a09      	ldr	r2, [sp, #36]	; 0x24
30004f8c:	4b4e      	ldr	r3, [pc, #312]	; (300050c8 <BOOT_LoadSubImage+0x184>)
30004f8e:	9c08      	ldr	r4, [sp, #32]
30004f90:	f1a2 0820 	sub.w	r8, r2, #32
30004f94:	4413      	add	r3, r2
30004f96:	3420      	adds	r4, #32
30004f98:	f1b3 6f00 	cmp.w	r3, #134217728	; 0x8000000
30004f9c:	d301      	bcc.n	30004fa2 <BOOT_LoadSubImage+0x5e>
30004f9e:	2c20      	cmp	r4, #32
30004fa0:	d829      	bhi.n	30004ff6 <BOOT_LoadSubImage+0xb2>
30004fa2:	2c20      	cmp	r4, #32
30004fa4:	bf08      	it	eq
30004fa6:	46b8      	moveq	r8, r7
30004fa8:	b17d      	cbz	r5, 30004fca <BOOT_LoadSubImage+0x86>
30004faa:	1d2b      	adds	r3, r5, #4
30004fac:	f845 8036 	str.w	r8, [r5, r6, lsl #3]
30004fb0:	2249      	movs	r2, #73	; 0x49
30004fb2:	4946      	ldr	r1, [pc, #280]	; (300050cc <BOOT_LoadSubImage+0x188>)
30004fb4:	2004      	movs	r0, #4
30004fb6:	e9cd 8401 	strd	r8, r4, [sp, #4]
30004fba:	f843 4036 	str.w	r4, [r3, r6, lsl #3]
30004fbe:	f85a 3026 	ldr.w	r3, [sl, r6, lsl #2]
30004fc2:	9300      	str	r3, [sp, #0]
30004fc4:	4b42      	ldr	r3, [pc, #264]	; (300050d0 <BOOT_LoadSubImage+0x18c>)
30004fc6:	f004 fa53 	bl	30009470 <rtk_log_write>
30004fca:	3601      	adds	r6, #1
30004fcc:	4427      	add	r7, r4
30004fce:	454e      	cmp	r6, r9
30004fd0:	d1c5      	bne.n	30004f5e <BOOT_LoadSubImage+0x1a>
30004fd2:	2001      	movs	r0, #1
30004fd4:	b00f      	add	sp, #60	; 0x3c
30004fd6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30004fda:	a806      	add	r0, sp, #24
30004fdc:	f001 fa94 	bl	30006508 <NandImgCopy>
30004fe0:	9b06      	ldr	r3, [sp, #24]
30004fe2:	4a38      	ldr	r2, [pc, #224]	; (300050c4 <BOOT_LoadSubImage+0x180>)
30004fe4:	4293      	cmp	r3, r2
30004fe6:	d0c7      	beq.n	30004f78 <BOOT_LoadSubImage+0x34>
30004fe8:	9b05      	ldr	r3, [sp, #20]
30004fea:	2b01      	cmp	r3, #1
30004fec:	d059      	beq.n	300050a2 <BOOT_LoadSubImage+0x15e>
30004fee:	2000      	movs	r0, #0
30004ff0:	b00f      	add	sp, #60	; 0x3c
30004ff2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30004ff6:	4b31      	ldr	r3, [pc, #196]	; (300050bc <BOOT_LoadSubImage+0x178>)
30004ff8:	4798      	blx	r3
30004ffa:	4622      	mov	r2, r4
30004ffc:	4639      	mov	r1, r7
30004ffe:	b330      	cbz	r0, 3000504e <BOOT_LoadSubImage+0x10a>
30005000:	4640      	mov	r0, r8
30005002:	4b2f      	ldr	r3, [pc, #188]	; (300050c0 <BOOT_LoadSubImage+0x17c>)
30005004:	4798      	blx	r3
30005006:	4933      	ldr	r1, [pc, #204]	; (300050d4 <BOOT_LoadSubImage+0x190>)
30005008:	694b      	ldr	r3, [r1, #20]
3000500a:	03db      	lsls	r3, r3, #15
3000500c:	d5cc      	bpl.n	30004fa8 <BOOT_LoadSubImage+0x64>
3000500e:	ea08 0304 	and.w	r3, r8, r4
30005012:	3301      	adds	r3, #1
30005014:	d023      	beq.n	3000505e <BOOT_LoadSubImage+0x11a>
30005016:	f018 031f 	ands.w	r3, r8, #31
3000501a:	d11c      	bne.n	30005056 <BOOT_LoadSubImage+0x112>
3000501c:	4623      	mov	r3, r4
3000501e:	4642      	mov	r2, r8
30005020:	f3bf 8f4f 	dsb	sy
30005024:	2b00      	cmp	r3, #0
30005026:	dd0d      	ble.n	30005044 <BOOT_LoadSubImage+0x100>
30005028:	1e59      	subs	r1, r3, #1
3000502a:	f102 0320 	add.w	r3, r2, #32
3000502e:	4829      	ldr	r0, [pc, #164]	; (300050d4 <BOOT_LoadSubImage+0x190>)
30005030:	f021 011f 	bic.w	r1, r1, #31
30005034:	4419      	add	r1, r3
30005036:	428b      	cmp	r3, r1
30005038:	f8c0 2270 	str.w	r2, [r0, #624]	; 0x270
3000503c:	461a      	mov	r2, r3
3000503e:	f103 0320 	add.w	r3, r3, #32
30005042:	d1f8      	bne.n	30005036 <BOOT_LoadSubImage+0xf2>
30005044:	f3bf 8f4f 	dsb	sy
30005048:	f3bf 8f6f 	isb	sy
3000504c:	e7ac      	b.n	30004fa8 <BOOT_LoadSubImage+0x64>
3000504e:	4640      	mov	r0, r8
30005050:	f001 fa5a 	bl	30006508 <NandImgCopy>
30005054:	e7d7      	b.n	30005006 <BOOT_LoadSubImage+0xc2>
30005056:	4423      	add	r3, r4
30005058:	f028 021f 	bic.w	r2, r8, #31
3000505c:	e7e0      	b.n	30005020 <BOOT_LoadSubImage+0xdc>
3000505e:	2300      	movs	r3, #0
30005060:	f8c1 3084 	str.w	r3, [r1, #132]	; 0x84
30005064:	f3bf 8f4f 	dsb	sy
30005068:	f8d1 3080 	ldr.w	r3, [r1, #128]	; 0x80
3000506c:	f643 7be0 	movw	fp, #16352	; 0x3fe0
30005070:	f3c3 3c4e 	ubfx	ip, r3, #13, #15
30005074:	f3c3 0ec9 	ubfx	lr, r3, #3, #10
30005078:	ea4f 1c4c 	mov.w	ip, ip, lsl #5
3000507c:	ea0c 000b 	and.w	r0, ip, fp
30005080:	4673      	mov	r3, lr
30005082:	ea40 7283 	orr.w	r2, r0, r3, lsl #30
30005086:	3b01      	subs	r3, #1
30005088:	f8c1 2274 	str.w	r2, [r1, #628]	; 0x274
3000508c:	d2f9      	bcs.n	30005082 <BOOT_LoadSubImage+0x13e>
3000508e:	f1ac 0c20 	sub.w	ip, ip, #32
30005092:	f11c 0f20 	cmn.w	ip, #32
30005096:	d1f1      	bne.n	3000507c <BOOT_LoadSubImage+0x138>
30005098:	f3bf 8f4f 	dsb	sy
3000509c:	f3bf 8f6f 	isb	sy
300050a0:	e782      	b.n	30004fa8 <BOOT_LoadSubImage+0x64>
300050a2:	f85a 4026 	ldr.w	r4, [sl, r6, lsl #2]
300050a6:	2249      	movs	r2, #73	; 0x49
300050a8:	4b0b      	ldr	r3, [pc, #44]	; (300050d8 <BOOT_LoadSubImage+0x194>)
300050aa:	2004      	movs	r0, #4
300050ac:	4907      	ldr	r1, [pc, #28]	; (300050cc <BOOT_LoadSubImage+0x188>)
300050ae:	9400      	str	r4, [sp, #0]
300050b0:	f004 f9de 	bl	30009470 <rtk_log_write>
300050b4:	2000      	movs	r0, #0
300050b6:	b00f      	add	sp, #60	; 0x3c
300050b8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
300050bc:	30009ae5 	.word	0x30009ae5
300050c0:	00012a1d 	.word	0x00012a1d
300050c4:	35393138 	.word	0x35393138
300050c8:	f7ffffe0 	.word	0xf7ffffe0
300050cc:	3000b71c 	.word	0x3000b71c
300050d0:	3000ba74 	.word	0x3000ba74
300050d4:	e000ed00 	.word	0xe000ed00
300050d8:	3000ba68 	.word	0x3000ba68

300050dc <BOOT_RSIPIvSet>:
300050dc:	b530      	push	{r4, r5, lr}
300050de:	2300      	movs	r3, #0
300050e0:	b083      	sub	sp, #12
300050e2:	4a09      	ldr	r2, [pc, #36]	; (30005108 <BOOT_RSIPIvSet+0x2c>)
300050e4:	4605      	mov	r5, r0
300050e6:	460c      	mov	r4, r1
300050e8:	e9cd 3300 	strd	r3, r3, [sp]
300050ec:	4790      	blx	r2
300050ee:	b148      	cbz	r0, 30005104 <BOOT_RSIPIvSet+0x28>
300050f0:	f105 0120 	add.w	r1, r5, #32
300050f4:	4b05      	ldr	r3, [pc, #20]	; (3000510c <BOOT_RSIPIvSet+0x30>)
300050f6:	2208      	movs	r2, #8
300050f8:	4668      	mov	r0, sp
300050fa:	4798      	blx	r3
300050fc:	4669      	mov	r1, sp
300050fe:	b2e0      	uxtb	r0, r4
30005100:	4b03      	ldr	r3, [pc, #12]	; (30005110 <BOOT_RSIPIvSet+0x34>)
30005102:	4798      	blx	r3
30005104:	b003      	add	sp, #12
30005106:	bd30      	pop	{r4, r5, pc}
30005108:	0000c129 	.word	0x0000c129
3000510c:	00012a1d 	.word	0x00012a1d
30005110:	300098d5 	.word	0x300098d5

30005114 <BOOT_OTFCheck>:
30005114:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
30005118:	4d1c      	ldr	r5, [pc, #112]	; (3000518c <BOOT_OTFCheck+0x78>)
3000511a:	b082      	sub	sp, #8
3000511c:	4604      	mov	r4, r0
3000511e:	4688      	mov	r8, r1
30005120:	4617      	mov	r7, r2
30005122:	461e      	mov	r6, r3
30005124:	47a8      	blx	r5
30005126:	b148      	cbz	r0, 3000513c <BOOT_OTFCheck+0x28>
30005128:	f104 4378 	add.w	r3, r4, #4160749568	; 0xf8000000
3000512c:	f1b3 6f00 	cmp.w	r3, #134217728	; 0x8000000
30005130:	d204      	bcs.n	3000513c <BOOT_OTFCheck+0x28>
30005132:	f108 4378 	add.w	r3, r8, #4160749568	; 0xf8000000
30005136:	f1b3 6f00 	cmp.w	r3, #134217728	; 0x8000000
3000513a:	d302      	bcc.n	30005142 <BOOT_OTFCheck+0x2e>
3000513c:	b002      	add	sp, #8
3000513e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
30005142:	4b13      	ldr	r3, [pc, #76]	; (30005190 <BOOT_OTFCheck+0x7c>)
30005144:	2249      	movs	r2, #73	; 0x49
30005146:	4913      	ldr	r1, [pc, #76]	; (30005194 <BOOT_OTFCheck+0x80>)
30005148:	2004      	movs	r0, #4
3000514a:	f004 f991 	bl	30009470 <rtk_log_write>
3000514e:	4b12      	ldr	r3, [pc, #72]	; (30005198 <BOOT_OTFCheck+0x84>)
30005150:	4798      	blx	r3
30005152:	4603      	mov	r3, r0
30005154:	b150      	cbz	r0, 3000516c <BOOT_OTFCheck+0x58>
30005156:	2801      	cmp	r0, #1
30005158:	d009      	beq.n	3000516e <BOOT_OTFCheck+0x5a>
3000515a:	4b10      	ldr	r3, [pc, #64]	; (3000519c <BOOT_OTFCheck+0x88>)
3000515c:	2245      	movs	r2, #69	; 0x45
3000515e:	490d      	ldr	r1, [pc, #52]	; (30005194 <BOOT_OTFCheck+0x80>)
30005160:	2002      	movs	r0, #2
30005162:	b002      	add	sp, #8
30005164:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
30005168:	f004 b982 	b.w	30009470 <rtk_log_write>
3000516c:	2302      	movs	r3, #2
3000516e:	4630      	mov	r0, r6
30005170:	4621      	mov	r1, r4
30005172:	9301      	str	r3, [sp, #4]
30005174:	4642      	mov	r2, r8
30005176:	2301      	movs	r3, #1
30005178:	4c09      	ldr	r4, [pc, #36]	; (300051a0 <BOOT_OTFCheck+0x8c>)
3000517a:	9700      	str	r7, [sp, #0]
3000517c:	47a0      	blx	r4
3000517e:	2001      	movs	r0, #1
30005180:	4b08      	ldr	r3, [pc, #32]	; (300051a4 <BOOT_OTFCheck+0x90>)
30005182:	b002      	add	sp, #8
30005184:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
30005188:	4718      	bx	r3
3000518a:	bf00      	nop
3000518c:	0000c129 	.word	0x0000c129
30005190:	3000bba4 	.word	0x3000bba4
30005194:	3000b71c 	.word	0x3000b71c
30005198:	0000c245 	.word	0x0000c245
3000519c:	3000bbb4 	.word	0x3000bbb4
300051a0:	3000a965 	.word	0x3000a965
300051a4:	300098f1 	.word	0x300098f1

300051a8 <BOOT_OTA_Region_Init>:
300051a8:	b510      	push	{r4, lr}
300051aa:	4c0a      	ldr	r4, [pc, #40]	; (300051d4 <BOOT_OTA_Region_Init+0x2c>)
300051ac:	2200      	movs	r2, #0
300051ae:	2002      	movs	r0, #2
300051b0:	4621      	mov	r1, r4
300051b2:	f001 f89f 	bl	300062f4 <flash_get_layout_info>
300051b6:	2200      	movs	r2, #0
300051b8:	1d21      	adds	r1, r4, #4
300051ba:	2003      	movs	r0, #3
300051bc:	f001 f89a 	bl	300062f4 <flash_get_layout_info>
300051c0:	e9d4 2300 	ldrd	r2, r3, [r4]
300051c4:	f502 5280 	add.w	r2, r2, #4096	; 0x1000
300051c8:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
300051cc:	e9c4 2302 	strd	r2, r3, [r4, #8]
300051d0:	bd10      	pop	{r4, pc}
300051d2:	bf00      	nop
300051d4:	3000e4ac 	.word	0x3000e4ac

300051d8 <BOOT_OTA_RDP>:
300051d8:	b510      	push	{r4, lr}
300051da:	4b16      	ldr	r3, [pc, #88]	; (30005234 <BOOT_OTA_RDP+0x5c>)
300051dc:	4696      	mov	lr, r2
300051de:	3202      	adds	r2, #2
300051e0:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
300051e4:	f502 5280 	add.w	r2, r2, #4096	; 0x1000
300051e8:	b169      	cbz	r1, 30005206 <BOOT_OTA_RDP+0x2e>
300051ea:	f101 3cff 	add.w	ip, r1, #4294967295	; 0xffffffff
300051ee:	4603      	mov	r3, r0
300051f0:	fa5f f48c 	uxtb.w	r4, ip
300051f4:	f100 0c08 	add.w	ip, r0, #8
300051f8:	eb0c 0cc4 	add.w	ip, ip, r4, lsl #3
300051fc:	685c      	ldr	r4, [r3, #4]
300051fe:	3308      	adds	r3, #8
30005200:	4563      	cmp	r3, ip
30005202:	4422      	add	r2, r4
30005204:	d1fa      	bne.n	300051fc <BOOT_OTA_RDP+0x24>
30005206:	eb00 01c1 	add.w	r1, r0, r1, lsl #3
3000520a:	4b0b      	ldr	r3, [pc, #44]	; (30005238 <BOOT_OTA_RDP+0x60>)
3000520c:	f44f 70c8 	mov.w	r0, #400	; 0x190
30005210:	fb00 300e 	mla	r0, r0, lr, r3
30005214:	f7ff fa24 	bl	30004660 <BOOT_LoadRDPImg>
30005218:	b100      	cbz	r0, 3000521c <BOOT_OTA_RDP+0x44>
3000521a:	bd10      	pop	{r4, pc}
3000521c:	4b07      	ldr	r3, [pc, #28]	; (3000523c <BOOT_OTA_RDP+0x64>)
3000521e:	2245      	movs	r2, #69	; 0x45
30005220:	4907      	ldr	r1, [pc, #28]	; (30005240 <BOOT_OTA_RDP+0x68>)
30005222:	2002      	movs	r0, #2
30005224:	4c07      	ldr	r4, [pc, #28]	; (30005244 <BOOT_OTA_RDP+0x6c>)
30005226:	f004 f923 	bl	30009470 <rtk_log_write>
3000522a:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
3000522e:	47a0      	blx	r4
30005230:	e7fb      	b.n	3000522a <BOOT_OTA_RDP+0x52>
30005232:	bf00      	nop
30005234:	3000e4ac 	.word	0x3000e4ac
30005238:	3000e18c 	.word	0x3000e18c
3000523c:	3000bbc8 	.word	0x3000bbc8
30005240:	3000b71c 	.word	0x3000b71c
30005244:	00009be5 	.word	0x00009be5

30005248 <BOOT_OTA_AP>:
30005248:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
3000524c:	3202      	adds	r2, #2
3000524e:	b087      	sub	sp, #28
30005250:	4c26      	ldr	r4, [pc, #152]	; (300052ec <BOOT_OTA_AP+0xa4>)
30005252:	4607      	mov	r7, r0
30005254:	4b26      	ldr	r3, [pc, #152]	; (300052f0 <BOOT_OTA_AP+0xa8>)
30005256:	ad02      	add	r5, sp, #8
30005258:	f854 4022 	ldr.w	r4, [r4, r2, lsl #2]
3000525c:	460e      	mov	r6, r1
3000525e:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
30005260:	f504 5480 	add.w	r4, r4, #4096	; 0x1000
30005264:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
30005268:	b16e      	cbz	r6, 30005286 <BOOT_OTA_AP+0x3e>
3000526a:	f106 3cff 	add.w	ip, r6, #4294967295	; 0xffffffff
3000526e:	463b      	mov	r3, r7
30005270:	fa5f f28c 	uxtb.w	r2, ip
30005274:	f107 0c08 	add.w	ip, r7, #8
30005278:	eb0c 0cc2 	add.w	ip, ip, r2, lsl #3
3000527c:	685a      	ldr	r2, [r3, #4]
3000527e:	3308      	adds	r3, #8
30005280:	4563      	cmp	r3, ip
30005282:	4414      	add	r4, r2
30005284:	d1fa      	bne.n	3000527c <BOOT_OTA_AP+0x34>
30005286:	f8df 8084 	ldr.w	r8, [pc, #132]	; 3000530c <BOOT_OTA_AP+0xc4>
3000528a:	4623      	mov	r3, r4
3000528c:	4a19      	ldr	r2, [pc, #100]	; (300052f4 <BOOT_OTA_AP+0xac>)
3000528e:	2003      	movs	r0, #3
30005290:	4641      	mov	r1, r8
30005292:	f8df 907c 	ldr.w	r9, [pc, #124]	; 30005310 <BOOT_OTA_AP+0xc8>
30005296:	47c8      	blx	r9
30005298:	2101      	movs	r1, #1
3000529a:	2003      	movs	r0, #3
3000529c:	4b16      	ldr	r3, [pc, #88]	; (300052f8 <BOOT_OTA_AP+0xb0>)
3000529e:	4798      	blx	r3
300052a0:	2201      	movs	r2, #1
300052a2:	4914      	ldr	r1, [pc, #80]	; (300052f4 <BOOT_OTA_AP+0xac>)
300052a4:	2303      	movs	r3, #3
300052a6:	4640      	mov	r0, r8
300052a8:	f7ff ff34 	bl	30005114 <BOOT_OTFCheck>
300052ac:	4b13      	ldr	r3, [pc, #76]	; (300052fc <BOOT_OTA_AP+0xb4>)
300052ae:	4798      	blx	r3
300052b0:	2800      	cmp	r0, #0
300052b2:	bf14      	ite	ne
300052b4:	4641      	movne	r1, r8
300052b6:	4621      	moveq	r1, r4
300052b8:	2401      	movs	r4, #1
300052ba:	462b      	mov	r3, r5
300052bc:	eb07 00c6 	add.w	r0, r7, r6, lsl #3
300052c0:	2204      	movs	r2, #4
300052c2:	9400      	str	r4, [sp, #0]
300052c4:	f7ff fe3e 	bl	30004f44 <BOOT_LoadSubImage>
300052c8:	42a0      	cmp	r0, r4
300052ca:	d103      	bne.n	300052d4 <BOOT_OTA_AP+0x8c>
300052cc:	2004      	movs	r0, #4
300052ce:	b007      	add	sp, #28
300052d0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
300052d4:	4b0a      	ldr	r3, [pc, #40]	; (30005300 <BOOT_OTA_AP+0xb8>)
300052d6:	2245      	movs	r2, #69	; 0x45
300052d8:	490a      	ldr	r1, [pc, #40]	; (30005304 <BOOT_OTA_AP+0xbc>)
300052da:	2002      	movs	r0, #2
300052dc:	4c0a      	ldr	r4, [pc, #40]	; (30005308 <BOOT_OTA_AP+0xc0>)
300052de:	f004 f8c7 	bl	30009470 <rtk_log_write>
300052e2:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
300052e6:	47a0      	blx	r4
300052e8:	e7fb      	b.n	300052e2 <BOOT_OTA_AP+0x9a>
300052ea:	bf00      	nop
300052ec:	3000e4ac 	.word	0x3000e4ac
300052f0:	3000bd40 	.word	0x3000bd40
300052f4:	0fffffe0 	.word	0x0fffffe0
300052f8:	30009949 	.word	0x30009949
300052fc:	30009ae5 	.word	0x30009ae5
30005300:	3000bbe4 	.word	0x3000bbe4
30005304:	3000b71c 	.word	0x3000b71c
30005308:	00009be5 	.word	0x00009be5
3000530c:	0e000000 	.word	0x0e000000
30005310:	30009909 	.word	0x30009909

30005314 <BOOT_OTA_LoadIMG2>:
30005314:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30005318:	4b7e      	ldr	r3, [pc, #504]	; (30005514 <BOOT_OTA_LoadIMG2+0x200>)
3000531a:	b08f      	sub	sp, #60	; 0x3c
3000531c:	4605      	mov	r5, r0
3000531e:	f8df 8254 	ldr.w	r8, [pc, #596]	; 30005574 <BOOT_OTA_LoadIMG2+0x260>
30005322:	ae08      	add	r6, sp, #32
30005324:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
30005328:	330c      	adds	r3, #12
3000532a:	e886 0007 	stmia.w	r6, {r0, r1, r2}
3000532e:	2200      	movs	r2, #0
30005330:	e9cd 2206 	strd	r2, r2, [sp, #24]
30005334:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
30005338:	ab0b      	add	r3, sp, #44	; 0x2c
3000533a:	e883 0007 	stmia.w	r3, {r0, r1, r2}
3000533e:	f44f 73c8 	mov.w	r3, #400	; 0x190
30005342:	1caa      	adds	r2, r5, #2
30005344:	4974      	ldr	r1, [pc, #464]	; (30005518 <BOOT_OTA_LoadIMG2+0x204>)
30005346:	fb03 f305 	mul.w	r3, r3, r5
3000534a:	f851 4022 	ldr.w	r4, [r1, r2, lsl #2]
3000534e:	461f      	mov	r7, r3
30005350:	9205      	str	r2, [sp, #20]
30005352:	9304      	str	r3, [sp, #16]
30005354:	47c0      	blx	r8
30005356:	b148      	cbz	r0, 3000536c <BOOT_OTA_LoadIMG2+0x58>
30005358:	4970      	ldr	r1, [pc, #448]	; (3000551c <BOOT_OTA_LoadIMG2+0x208>)
3000535a:	2208      	movs	r2, #8
3000535c:	4b70      	ldr	r3, [pc, #448]	; (30005520 <BOOT_OTA_LoadIMG2+0x20c>)
3000535e:	a806      	add	r0, sp, #24
30005360:	4439      	add	r1, r7
30005362:	4798      	blx	r3
30005364:	a906      	add	r1, sp, #24
30005366:	2001      	movs	r0, #1
30005368:	4b6e      	ldr	r3, [pc, #440]	; (30005524 <BOOT_OTA_LoadIMG2+0x210>)
3000536a:	4798      	blx	r3
3000536c:	f8df b208 	ldr.w	fp, [pc, #520]	; 30005578 <BOOT_OTA_LoadIMG2+0x264>
30005370:	f504 5480 	add.w	r4, r4, #4096	; 0x1000
30005374:	4a6c      	ldr	r2, [pc, #432]	; (30005528 <BOOT_OTA_LoadIMG2+0x214>)
30005376:	2000      	movs	r0, #0
30005378:	4623      	mov	r3, r4
3000537a:	4659      	mov	r1, fp
3000537c:	4f6b      	ldr	r7, [pc, #428]	; (3000552c <BOOT_OTA_LoadIMG2+0x218>)
3000537e:	f04f 0801 	mov.w	r8, #1
30005382:	47b8      	blx	r7
30005384:	2101      	movs	r1, #1
30005386:	2000      	movs	r0, #0
30005388:	4b69      	ldr	r3, [pc, #420]	; (30005530 <BOOT_OTA_LoadIMG2+0x21c>)
3000538a:	4798      	blx	r3
3000538c:	2301      	movs	r3, #1
3000538e:	4966      	ldr	r1, [pc, #408]	; (30005528 <BOOT_OTA_LoadIMG2+0x214>)
30005390:	4658      	mov	r0, fp
30005392:	461a      	mov	r2, r3
30005394:	f8df 91e4 	ldr.w	r9, [pc, #484]	; 3000557c <BOOT_OTA_LoadIMG2+0x268>
30005398:	f7ff febc 	bl	30005114 <BOOT_OTFCheck>
3000539c:	47c8      	blx	r9
3000539e:	2800      	cmp	r0, #0
300053a0:	bf0c      	ite	eq
300053a2:	46a2      	moveq	sl, r4
300053a4:	46da      	movne	sl, fp
300053a6:	4633      	mov	r3, r6
300053a8:	2203      	movs	r2, #3
300053aa:	4651      	mov	r1, sl
300053ac:	4861      	ldr	r0, [pc, #388]	; (30005534 <BOOT_OTA_LoadIMG2+0x220>)
300053ae:	f8cd 8000 	str.w	r8, [sp]
300053b2:	f7ff fdc7 	bl	30004f44 <BOOT_LoadSubImage>
300053b6:	b918      	cbnz	r0, 300053c0 <BOOT_OTA_LoadIMG2+0xac>
300053b8:	2000      	movs	r0, #0
300053ba:	b00f      	add	sp, #60	; 0x3c
300053bc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
300053c0:	4e5c      	ldr	r6, [pc, #368]	; (30005534 <BOOT_OTA_LoadIMG2+0x220>)
300053c2:	47c8      	blx	r9
300053c4:	2800      	cmp	r0, #0
300053c6:	bf08      	it	eq
300053c8:	46a3      	moveq	fp, r4
300053ca:	4640      	mov	r0, r8
300053cc:	6872      	ldr	r2, [r6, #4]
300053ce:	68f3      	ldr	r3, [r6, #12]
300053d0:	f8c6 b000 	str.w	fp, [r6]
300053d4:	4413      	add	r3, r2
300053d6:	6972      	ldr	r2, [r6, #20]
300053d8:	f8df b1a4 	ldr.w	fp, [pc, #420]	; 30005580 <BOOT_OTA_LoadIMG2+0x26c>
300053dc:	441a      	add	r2, r3
300053de:	4b56      	ldr	r3, [pc, #344]	; (30005538 <BOOT_OTA_LoadIMG2+0x224>)
300053e0:	eb0a 0102 	add.w	r1, sl, r2
300053e4:	61b1      	str	r1, [r6, #24]
300053e6:	1e51      	subs	r1, r2, #1
300053e8:	400b      	ands	r3, r1
300053ea:	4659      	mov	r1, fp
300053ec:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
300053f0:	441c      	add	r4, r3
300053f2:	1a9b      	subs	r3, r3, r2
300053f4:	4a51      	ldr	r2, [pc, #324]	; (3000553c <BOOT_OTA_LoadIMG2+0x228>)
300053f6:	61f3      	str	r3, [r6, #28]
300053f8:	4623      	mov	r3, r4
300053fa:	47b8      	blx	r7
300053fc:	4641      	mov	r1, r8
300053fe:	4640      	mov	r0, r8
30005400:	4b4b      	ldr	r3, [pc, #300]	; (30005530 <BOOT_OTA_LoadIMG2+0x21c>)
30005402:	4798      	blx	r3
30005404:	2302      	movs	r3, #2
30005406:	4642      	mov	r2, r8
30005408:	494c      	ldr	r1, [pc, #304]	; (3000553c <BOOT_OTA_LoadIMG2+0x228>)
3000540a:	4658      	mov	r0, fp
3000540c:	f7ff fe82 	bl	30005114 <BOOT_OTFCheck>
30005410:	47c8      	blx	r9
30005412:	ab0b      	add	r3, sp, #44	; 0x2c
30005414:	2800      	cmp	r0, #0
30005416:	bf0c      	ite	eq
30005418:	4621      	moveq	r1, r4
3000541a:	4659      	movne	r1, fp
3000541c:	2203      	movs	r2, #3
3000541e:	f106 0020 	add.w	r0, r6, #32
30005422:	f8cd 8000 	str.w	r8, [sp]
30005426:	f7ff fd8d 	bl	30004f44 <BOOT_LoadSubImage>
3000542a:	2800      	cmp	r0, #0
3000542c:	d0c4      	beq.n	300053b8 <BOOT_OTA_LoadIMG2+0xa4>
3000542e:	47c8      	blx	r9
30005430:	4f43      	ldr	r7, [pc, #268]	; (30005540 <BOOT_OTA_LoadIMG2+0x22c>)
30005432:	2800      	cmp	r0, #0
30005434:	bf08      	it	eq
30005436:	46a3      	moveq	fp, r4
30005438:	9b04      	ldr	r3, [sp, #16]
3000543a:	f8c6 b020 	str.w	fp, [r6, #32]
3000543e:	441f      	add	r7, r3
30005440:	4b40      	ldr	r3, [pc, #256]	; (30005544 <BOOT_OTA_LoadIMG2+0x230>)
30005442:	4798      	blx	r3
30005444:	4540      	cmp	r0, r8
30005446:	d036      	beq.n	300054b6 <BOOT_OTA_LoadIMG2+0x1a2>
30005448:	4b3f      	ldr	r3, [pc, #252]	; (30005548 <BOOT_OTA_LoadIMG2+0x234>)
3000544a:	781b      	ldrb	r3, [r3, #0]
3000544c:	bb43      	cbnz	r3, 300054a0 <BOOT_OTA_LoadIMG2+0x18c>
3000544e:	2207      	movs	r2, #7
30005450:	f44f 71b2 	mov.w	r1, #356	; 0x164
30005454:	2400      	movs	r4, #0
30005456:	4b3d      	ldr	r3, [pc, #244]	; (3000554c <BOOT_OTA_LoadIMG2+0x238>)
30005458:	4638      	mov	r0, r7
3000545a:	9400      	str	r4, [sp, #0]
3000545c:	fb01 3305 	mla	r3, r1, r5, r3
30005460:	4934      	ldr	r1, [pc, #208]	; (30005534 <BOOT_OTA_LoadIMG2+0x220>)
30005462:	f7ff faf7 	bl	30004a54 <BOOT_SignatureCheck>
30005466:	3501      	adds	r5, #1
30005468:	4604      	mov	r4, r0
3000546a:	b958      	cbnz	r0, 30005484 <BOOT_OTA_LoadIMG2+0x170>
3000546c:	4938      	ldr	r1, [pc, #224]	; (30005550 <BOOT_OTA_LoadIMG2+0x23c>)
3000546e:	2249      	movs	r2, #73	; 0x49
30005470:	4b38      	ldr	r3, [pc, #224]	; (30005554 <BOOT_OTA_LoadIMG2+0x240>)
30005472:	9500      	str	r5, [sp, #0]
30005474:	e9cd 1001 	strd	r1, r0, [sp, #4]
30005478:	2004      	movs	r0, #4
3000547a:	4937      	ldr	r1, [pc, #220]	; (30005558 <BOOT_OTA_LoadIMG2+0x244>)
3000547c:	f003 fff8 	bl	30009470 <rtk_log_write>
30005480:	4620      	mov	r0, r4
30005482:	e79a      	b.n	300053ba <BOOT_OTA_LoadIMG2+0xa6>
30005484:	4935      	ldr	r1, [pc, #212]	; (3000555c <BOOT_OTA_LoadIMG2+0x248>)
30005486:	2249      	movs	r2, #73	; 0x49
30005488:	4b32      	ldr	r3, [pc, #200]	; (30005554 <BOOT_OTA_LoadIMG2+0x240>)
3000548a:	9500      	str	r5, [sp, #0]
3000548c:	e9cd 1001 	strd	r1, r0, [sp, #4]
30005490:	4931      	ldr	r1, [pc, #196]	; (30005558 <BOOT_OTA_LoadIMG2+0x244>)
30005492:	2004      	movs	r0, #4
30005494:	f003 ffec 	bl	30009470 <rtk_log_write>
30005498:	2001      	movs	r0, #1
3000549a:	b00f      	add	sp, #60	; 0x3c
3000549c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
300054a0:	2107      	movs	r1, #7
300054a2:	460c      	mov	r4, r1
300054a4:	462a      	mov	r2, r5
300054a6:	4823      	ldr	r0, [pc, #140]	; (30005534 <BOOT_OTA_LoadIMG2+0x220>)
300054a8:	f7ff fece 	bl	30005248 <BOOT_OTA_AP>
300054ac:	4404      	add	r4, r0
300054ae:	2c0d      	cmp	r4, #13
300054b0:	d82b      	bhi.n	3000550a <BOOT_OTA_LoadIMG2+0x1f6>
300054b2:	b2e2      	uxtb	r2, r4
300054b4:	e7cc      	b.n	30005450 <BOOT_OTA_LoadIMG2+0x13c>
300054b6:	4b2a      	ldr	r3, [pc, #168]	; (30005560 <BOOT_OTA_LoadIMG2+0x24c>)
300054b8:	2249      	movs	r2, #73	; 0x49
300054ba:	4927      	ldr	r1, [pc, #156]	; (30005558 <BOOT_OTA_LoadIMG2+0x244>)
300054bc:	2004      	movs	r0, #4
300054be:	f003 ffd7 	bl	30009470 <rtk_log_write>
300054c2:	4b15      	ldr	r3, [pc, #84]	; (30005518 <BOOT_OTA_LoadIMG2+0x204>)
300054c4:	9a05      	ldr	r2, [sp, #20]
300054c6:	f106 0138 	add.w	r1, r6, #56	; 0x38
300054ca:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
300054ce:	f502 5280 	add.w	r2, r2, #4096	; 0x1000
300054d2:	6873      	ldr	r3, [r6, #4]
300054d4:	3608      	adds	r6, #8
300054d6:	428e      	cmp	r6, r1
300054d8:	441a      	add	r2, r3
300054da:	d1fa      	bne.n	300054d2 <BOOT_OTA_LoadIMG2+0x1be>
300054dc:	4921      	ldr	r1, [pc, #132]	; (30005564 <BOOT_OTA_LoadIMG2+0x250>)
300054de:	4638      	mov	r0, r7
300054e0:	f7ff f8be 	bl	30004660 <BOOT_LoadRDPImg>
300054e4:	b130      	cbz	r0, 300054f4 <BOOT_OTA_LoadIMG2+0x1e0>
300054e6:	4b18      	ldr	r3, [pc, #96]	; (30005548 <BOOT_OTA_LoadIMG2+0x234>)
300054e8:	1dc4      	adds	r4, r0, #7
300054ea:	781b      	ldrb	r3, [r3, #0]
300054ec:	2b00      	cmp	r3, #0
300054ee:	d0de      	beq.n	300054ae <BOOT_OTA_LoadIMG2+0x19a>
300054f0:	b2e1      	uxtb	r1, r4
300054f2:	e7d7      	b.n	300054a4 <BOOT_OTA_LoadIMG2+0x190>
300054f4:	4b1c      	ldr	r3, [pc, #112]	; (30005568 <BOOT_OTA_LoadIMG2+0x254>)
300054f6:	2245      	movs	r2, #69	; 0x45
300054f8:	4917      	ldr	r1, [pc, #92]	; (30005558 <BOOT_OTA_LoadIMG2+0x244>)
300054fa:	2002      	movs	r0, #2
300054fc:	4c1b      	ldr	r4, [pc, #108]	; (3000556c <BOOT_OTA_LoadIMG2+0x258>)
300054fe:	f003 ffb7 	bl	30009470 <rtk_log_write>
30005502:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
30005506:	47a0      	blx	r4
30005508:	e7fb      	b.n	30005502 <BOOT_OTA_LoadIMG2+0x1ee>
3000550a:	f44f 719a 	mov.w	r1, #308	; 0x134
3000550e:	4818      	ldr	r0, [pc, #96]	; (30005570 <BOOT_OTA_LoadIMG2+0x25c>)
30005510:	f004 ffe2 	bl	3000a4d8 <io_assert_failed>
30005514:	3000bd50 	.word	0x3000bd50
30005518:	3000e4ac 	.word	0x3000e4ac
3000551c:	3000e1ac 	.word	0x3000e1ac
30005520:	00012a1d 	.word	0x00012a1d
30005524:	300098d5 	.word	0x300098d5
30005528:	0cffffe0 	.word	0x0cffffe0
3000552c:	30009909 	.word	0x30009909
30005530:	30009949 	.word	0x30009949
30005534:	3000e5e4 	.word	0x3000e5e4
30005538:	fffff000 	.word	0xfffff000
3000553c:	0dffffe0 	.word	0x0dffffe0
30005540:	3000e18c 	.word	0x3000e18c
30005544:	0000c109 	.word	0x0000c109
30005548:	3000d772 	.word	0x3000d772
3000554c:	3000dec4 	.word	0x3000dec4
30005550:	3000bc28 	.word	0x3000bc28
30005554:	3000bc04 	.word	0x3000bc04
30005558:	3000b71c 	.word	0x3000b71c
3000555c:	3000bc20 	.word	0x3000bc20
30005560:	3000bbfc 	.word	0x3000bbfc
30005564:	3000e61c 	.word	0x3000e61c
30005568:	3000bbc8 	.word	0x3000bbc8
3000556c:	00009be5 	.word	0x00009be5
30005570:	3000bce0 	.word	0x3000bce0
30005574:	0000c129 	.word	0x0000c129
30005578:	0c000000 	.word	0x0c000000
3000557c:	30009ae5 	.word	0x30009ae5
30005580:	0d000000 	.word	0x0d000000

30005584 <BOOT_OTA_IMG2>:
30005584:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
30005588:	4c39      	ldr	r4, [pc, #228]	; (30005670 <BOOT_OTA_IMG2+0xec>)
3000558a:	b084      	sub	sp, #16
3000558c:	2200      	movs	r2, #0
3000558e:	2002      	movs	r0, #2
30005590:	4621      	mov	r1, r4
30005592:	4e38      	ldr	r6, [pc, #224]	; (30005674 <BOOT_OTA_IMG2+0xf0>)
30005594:	f000 feae 	bl	300062f4 <flash_get_layout_info>
30005598:	2200      	movs	r2, #0
3000559a:	1d21      	adds	r1, r4, #4
3000559c:	2003      	movs	r0, #3
3000559e:	f000 fea9 	bl	300062f4 <flash_get_layout_info>
300055a2:	e9d4 2300 	ldrd	r2, r3, [r4]
300055a6:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
300055aa:	f502 5280 	add.w	r2, r2, #4096	; 0x1000
300055ae:	e9c4 2302 	strd	r2, r3, [r4, #8]
300055b2:	f7ff fc13 	bl	30004ddc <BOOT_OTA_SlotSelect>
300055b6:	7833      	ldrb	r3, [r6, #0]
300055b8:	b353      	cbz	r3, 30005610 <BOOT_OTA_IMG2+0x8c>
300055ba:	4604      	mov	r4, r0
300055bc:	2500      	movs	r5, #0
300055be:	f8df 80e0 	ldr.w	r8, [pc, #224]	; 300056a0 <BOOT_OTA_IMG2+0x11c>
300055c2:	f44f 77b2 	mov.w	r7, #356	; 0x164
300055c6:	4621      	mov	r1, r4
300055c8:	fb07 8004 	mla	r0, r7, r4, r8
300055cc:	f7ff fb48 	bl	30004c60 <BOOT_CertificateCheck>
300055d0:	2801      	cmp	r0, #1
300055d2:	f104 0301 	add.w	r3, r4, #1
300055d6:	d040      	beq.n	3000565a <BOOT_OTA_IMG2+0xd6>
300055d8:	3501      	adds	r5, #1
300055da:	f003 0401 	and.w	r4, r3, #1
300055de:	7833      	ldrb	r3, [r6, #0]
300055e0:	b2ed      	uxtb	r5, r5
300055e2:	42ab      	cmp	r3, r5
300055e4:	d8ef      	bhi.n	300055c6 <BOOT_OTA_IMG2+0x42>
300055e6:	429d      	cmp	r5, r3
300055e8:	d012      	beq.n	30005610 <BOOT_OTA_IMG2+0x8c>
300055ea:	4923      	ldr	r1, [pc, #140]	; (30005678 <BOOT_OTA_IMG2+0xf4>)
300055ec:	1c60      	adds	r0, r4, #1
300055ee:	4b23      	ldr	r3, [pc, #140]	; (3000567c <BOOT_OTA_IMG2+0xf8>)
300055f0:	2249      	movs	r2, #73	; 0x49
300055f2:	f851 1034 	ldr.w	r1, [r1, r4, lsl #3]
300055f6:	9000      	str	r0, [sp, #0]
300055f8:	b28d      	uxth	r5, r1
300055fa:	0c08      	lsrs	r0, r1, #16
300055fc:	4920      	ldr	r1, [pc, #128]	; (30005680 <BOOT_OTA_IMG2+0xfc>)
300055fe:	9502      	str	r5, [sp, #8]
30005600:	9001      	str	r0, [sp, #4]
30005602:	2004      	movs	r0, #4
30005604:	f003 ff34 	bl	30009470 <rtk_log_write>
30005608:	4620      	mov	r0, r4
3000560a:	b004      	add	sp, #16
3000560c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
30005610:	4b1c      	ldr	r3, [pc, #112]	; (30005684 <BOOT_OTA_IMG2+0x100>)
30005612:	2245      	movs	r2, #69	; 0x45
30005614:	491a      	ldr	r1, [pc, #104]	; (30005680 <BOOT_OTA_IMG2+0xfc>)
30005616:	2002      	movs	r0, #2
30005618:	f003 ff2a 	bl	30009470 <rtk_log_write>
3000561c:	4b1a      	ldr	r3, [pc, #104]	; (30005688 <BOOT_OTA_IMG2+0x104>)
3000561e:	f383 8808 	msr	MSP, r3
30005622:	f641 727c 	movw	r2, #8060	; 0x1f7c
30005626:	4b19      	ldr	r3, [pc, #100]	; (3000568c <BOOT_OTA_IMG2+0x108>)
30005628:	2100      	movs	r1, #0
3000562a:	4819      	ldr	r0, [pc, #100]	; (30005690 <BOOT_OTA_IMG2+0x10c>)
3000562c:	4798      	blx	r3
3000562e:	4a19      	ldr	r2, [pc, #100]	; (30005694 <BOOT_OTA_IMG2+0x110>)
30005630:	6953      	ldr	r3, [r2, #20]
30005632:	03db      	lsls	r3, r3, #15
30005634:	d50c      	bpl.n	30005650 <BOOT_OTA_IMG2+0xcc>
30005636:	f3bf 8f4f 	dsb	sy
3000563a:	4b15      	ldr	r3, [pc, #84]	; (30005690 <BOOT_OTA_IMG2+0x10c>)
3000563c:	4916      	ldr	r1, [pc, #88]	; (30005698 <BOOT_OTA_IMG2+0x114>)
3000563e:	f8c2 3270 	str.w	r3, [r2, #624]	; 0x270
30005642:	3320      	adds	r3, #32
30005644:	428b      	cmp	r3, r1
30005646:	d1fa      	bne.n	3000563e <BOOT_OTA_IMG2+0xba>
30005648:	f3bf 8f4f 	dsb	sy
3000564c:	f3bf 8f6f 	isb	sy
30005650:	4c12      	ldr	r4, [pc, #72]	; (3000569c <BOOT_OTA_IMG2+0x118>)
30005652:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
30005656:	47a0      	blx	r4
30005658:	e7fb      	b.n	30005652 <BOOT_OTA_IMG2+0xce>
3000565a:	4620      	mov	r0, r4
3000565c:	f7ff fe5a 	bl	30005314 <BOOT_OTA_LoadIMG2>
30005660:	2801      	cmp	r0, #1
30005662:	f104 0301 	add.w	r3, r4, #1
30005666:	d1b7      	bne.n	300055d8 <BOOT_OTA_IMG2+0x54>
30005668:	7833      	ldrb	r3, [r6, #0]
3000566a:	429d      	cmp	r5, r3
3000566c:	d1bd      	bne.n	300055ea <BOOT_OTA_IMG2+0x66>
3000566e:	e7cf      	b.n	30005610 <BOOT_OTA_IMG2+0x8c>
30005670:	3000e4ac 	.word	0x3000e4ac
30005674:	3000e654 	.word	0x3000e654
30005678:	3000e658 	.word	0x3000e658
3000567c:	3000bc30 	.word	0x3000bc30
30005680:	3000b71c 	.word	0x3000b71c
30005684:	3000bc5c 	.word	0x3000bc5c
30005688:	30002ffc 	.word	0x30002ffc
3000568c:	00012be5 	.word	0x00012be5
30005690:	30001000 	.word	0x30001000
30005694:	e000ed00 	.word	0xe000ed00
30005698:	30002f80 	.word	0x30002f80
3000569c:	00009be5 	.word	0x00009be5
300056a0:	3000dec4 	.word	0x3000dec4

300056a4 <BOOT_OTA_AP_Linux>:
300056a4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
300056a8:	4b35      	ldr	r3, [pc, #212]	; (30005780 <BOOT_OTA_AP_Linux+0xdc>)
300056aa:	4605      	mov	r5, r0
300056ac:	f8df 90ec 	ldr.w	r9, [pc, #236]	; 3000579c <BOOT_OTA_AP_Linux+0xf8>
300056b0:	ed2d 8b02 	vpush	{d8}
300056b4:	b0eb      	sub	sp, #428	; 0x1ac
300056b6:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
300056ba:	af03      	add	r7, sp, #12
300056bc:	f899 3000 	ldrb.w	r3, [r9]
300056c0:	e887 0007 	stmia.w	r7, {r0, r1, r2}
300056c4:	2b00      	cmp	r3, #0
300056c6:	d050      	beq.n	3000576a <BOOT_OTA_AP_Linux+0xc6>
300056c8:	4b2e      	ldr	r3, [pc, #184]	; (30005784 <BOOT_OTA_AP_Linux+0xe0>)
300056ca:	f44f 72b2 	mov.w	r2, #356	; 0x164
300056ce:	2400      	movs	r4, #0
300056d0:	f8df b0cc 	ldr.w	fp, [pc, #204]	; 300057a0 <BOOT_OTA_AP_Linux+0xfc>
300056d4:	fb02 3305 	mla	r3, r2, r5, r3
300056d8:	f8df a0c8 	ldr.w	sl, [pc, #200]	; 300057a4 <BOOT_OTA_AP_Linux+0x100>
300056dc:	f8df 80c8 	ldr.w	r8, [pc, #200]	; 300057a8 <BOOT_OTA_AP_Linux+0x104>
300056e0:	ee08 3a10 	vmov	s16, r3
300056e4:	e016      	b.n	30005714 <BOOT_OTA_AP_Linux+0x70>
300056e6:	a806      	add	r0, sp, #24
300056e8:	4b27      	ldr	r3, [pc, #156]	; (30005788 <BOOT_OTA_AP_Linux+0xe4>)
300056ea:	4798      	blx	r3
300056ec:	2201      	movs	r2, #1
300056ee:	f506 5180 	add.w	r1, r6, #4096	; 0x1000
300056f2:	463b      	mov	r3, r7
300056f4:	4640      	mov	r0, r8
300056f6:	18ae      	adds	r6, r5, r2
300056f8:	9200      	str	r2, [sp, #0]
300056fa:	ea06 0502 	and.w	r5, r6, r2
300056fe:	2203      	movs	r2, #3
30005700:	f7ff fc20 	bl	30004f44 <BOOT_LoadSubImage>
30005704:	2801      	cmp	r0, #1
30005706:	d014      	beq.n	30005732 <BOOT_OTA_AP_Linux+0x8e>
30005708:	3401      	adds	r4, #1
3000570a:	f899 3000 	ldrb.w	r3, [r9]
3000570e:	b2e4      	uxtb	r4, r4
30005710:	42a3      	cmp	r3, r4
30005712:	d922      	bls.n	3000575a <BOOT_OTA_AP_Linux+0xb6>
30005714:	1d2b      	adds	r3, r5, #4
30005716:	f85b 6023 	ldr.w	r6, [fp, r3, lsl #2]
3000571a:	47d0      	blx	sl
3000571c:	f44f 72c8 	mov.w	r2, #400	; 0x190
30005720:	4631      	mov	r1, r6
30005722:	2800      	cmp	r0, #0
30005724:	d1df      	bne.n	300056e6 <BOOT_OTA_AP_Linux+0x42>
30005726:	f44f 72c8 	mov.w	r2, #400	; 0x190
3000572a:	a806      	add	r0, sp, #24
3000572c:	f000 feec 	bl	30006508 <NandImgCopy>
30005730:	e7dc      	b.n	300056ec <BOOT_OTA_AP_Linux+0x48>
30005732:	2302      	movs	r3, #2
30005734:	2203      	movs	r2, #3
30005736:	4641      	mov	r1, r8
30005738:	a806      	add	r0, sp, #24
3000573a:	9300      	str	r3, [sp, #0]
3000573c:	ee18 3a10 	vmov	r3, s16
30005740:	f7ff f988 	bl	30004a54 <BOOT_SignatureCheck>
30005744:	2801      	cmp	r0, #1
30005746:	d1df      	bne.n	30005708 <BOOT_OTA_AP_Linux+0x64>
30005748:	4b10      	ldr	r3, [pc, #64]	; (3000578c <BOOT_OTA_AP_Linux+0xe8>)
3000574a:	2249      	movs	r2, #73	; 0x49
3000574c:	4910      	ldr	r1, [pc, #64]	; (30005790 <BOOT_OTA_AP_Linux+0xec>)
3000574e:	2004      	movs	r0, #4
30005750:	9600      	str	r6, [sp, #0]
30005752:	f003 fe8d 	bl	30009470 <rtk_log_write>
30005756:	f899 3000 	ldrb.w	r3, [r9]
3000575a:	429c      	cmp	r4, r3
3000575c:	d005      	beq.n	3000576a <BOOT_OTA_AP_Linux+0xc6>
3000575e:	2000      	movs	r0, #0
30005760:	b06b      	add	sp, #428	; 0x1ac
30005762:	ecbd 8b02 	vpop	{d8}
30005766:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
3000576a:	4b0a      	ldr	r3, [pc, #40]	; (30005794 <BOOT_OTA_AP_Linux+0xf0>)
3000576c:	2245      	movs	r2, #69	; 0x45
3000576e:	4908      	ldr	r1, [pc, #32]	; (30005790 <BOOT_OTA_AP_Linux+0xec>)
30005770:	2002      	movs	r0, #2
30005772:	4c09      	ldr	r4, [pc, #36]	; (30005798 <BOOT_OTA_AP_Linux+0xf4>)
30005774:	f003 fe7c 	bl	30009470 <rtk_log_write>
30005778:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
3000577c:	47a0      	blx	r4
3000577e:	e7fb      	b.n	30005778 <BOOT_OTA_AP_Linux+0xd4>
30005780:	3000bd68 	.word	0x3000bd68
30005784:	3000dec4 	.word	0x3000dec4
30005788:	00012a1d 	.word	0x00012a1d
3000578c:	3000bc8c 	.word	0x3000bc8c
30005790:	3000b71c 	.word	0x3000b71c
30005794:	3000bbe4 	.word	0x3000bbe4
30005798:	00009be5 	.word	0x00009be5
3000579c:	3000e654 	.word	0x3000e654
300057a0:	3000e4ac 	.word	0x3000e4ac
300057a4:	30009ae5 	.word	0x30009ae5
300057a8:	3000e5e4 	.word	0x3000e5e4

300057ac <FLASH_ClockDiv>:
300057ac:	2200      	movs	r2, #0
300057ae:	2180      	movs	r1, #128	; 0x80
300057b0:	b538      	push	{r3, r4, r5, lr}
300057b2:	4605      	mov	r5, r0
300057b4:	4c1e      	ldr	r4, [pc, #120]	; (30005830 <FLASH_ClockDiv+0x84>)
300057b6:	4610      	mov	r0, r2
300057b8:	47a0      	blx	r4
300057ba:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
300057be:	022d      	lsls	r5, r5, #8
300057c0:	230a      	movs	r3, #10
300057c2:	6c11      	ldr	r1, [r2, #64]	; 0x40
300057c4:	f405 6570 	and.w	r5, r5, #3840	; 0xf00
300057c8:	f421 5140 	bic.w	r1, r1, #12288	; 0x3000
300057cc:	6411      	str	r1, [r2, #64]	; 0x40
300057ce:	6c11      	ldr	r1, [r2, #64]	; 0x40
300057d0:	f421 6170 	bic.w	r1, r1, #3840	; 0xf00
300057d4:	430d      	orrs	r5, r1
300057d6:	4917      	ldr	r1, [pc, #92]	; (30005834 <FLASH_ClockDiv+0x88>)
300057d8:	6415      	str	r5, [r2, #64]	; 0x40
300057da:	e001      	b.n	300057e0 <FLASH_ClockDiv+0x34>
300057dc:	2a00      	cmp	r2, #0
300057de:	db02      	blt.n	300057e6 <FLASH_ClockDiv+0x3a>
300057e0:	3b01      	subs	r3, #1
300057e2:	6c0a      	ldr	r2, [r1, #64]	; 0x40
300057e4:	d1fa      	bne.n	300057dc <FLASH_ClockDiv+0x30>
300057e6:	230a      	movs	r3, #10
300057e8:	4912      	ldr	r1, [pc, #72]	; (30005834 <FLASH_ClockDiv+0x88>)
300057ea:	e000      	b.n	300057ee <FLASH_ClockDiv+0x42>
300057ec:	b11b      	cbz	r3, 300057f6 <FLASH_ClockDiv+0x4a>
300057ee:	6c0a      	ldr	r2, [r1, #64]	; 0x40
300057f0:	3b01      	subs	r3, #1
300057f2:	0092      	lsls	r2, r2, #2
300057f4:	d5fa      	bpl.n	300057ec <FLASH_ClockDiv+0x40>
300057f6:	f04f 4182 	mov.w	r1, #1090519040	; 0x41000000
300057fa:	220a      	movs	r2, #10
300057fc:	6c0b      	ldr	r3, [r1, #64]	; 0x40
300057fe:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
30005802:	640b      	str	r3, [r1, #64]	; 0x40
30005804:	6c0b      	ldr	r3, [r1, #64]	; 0x40
30005806:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
3000580a:	640b      	str	r3, [r1, #64]	; 0x40
3000580c:	e000      	b.n	30005810 <FLASH_ClockDiv+0x64>
3000580e:	b12a      	cbz	r2, 3000581c <FLASH_ClockDiv+0x70>
30005810:	6c0b      	ldr	r3, [r1, #64]	; 0x40
30005812:	3a01      	subs	r2, #1
30005814:	f003 0303 	and.w	r3, r3, #3
30005818:	2b03      	cmp	r3, #3
3000581a:	d1f8      	bne.n	3000580e <FLASH_ClockDiv+0x62>
3000581c:	2201      	movs	r2, #1
3000581e:	2180      	movs	r1, #128	; 0x80
30005820:	f44f 7080 	mov.w	r0, #256	; 0x100
30005824:	47a0      	blx	r4
30005826:	2003      	movs	r0, #3
30005828:	4b03      	ldr	r3, [pc, #12]	; (30005838 <FLASH_ClockDiv+0x8c>)
3000582a:	4798      	blx	r3
3000582c:	2001      	movs	r0, #1
3000582e:	bd38      	pop	{r3, r4, r5, pc}
30005830:	0000b479 	.word	0x0000b479
30005834:	42008800 	.word	0x42008800
30005838:	0000b569 	.word	0x0000b569

3000583c <FLASH_CalibrationPhaseIdx>:
3000583c:	2200      	movs	r2, #0
3000583e:	2180      	movs	r1, #128	; 0x80
30005840:	b538      	push	{r3, r4, r5, lr}
30005842:	4604      	mov	r4, r0
30005844:	4d1a      	ldr	r5, [pc, #104]	; (300058b0 <FLASH_CalibrationPhaseIdx+0x74>)
30005846:	4610      	mov	r0, r2
30005848:	47a8      	blx	r5
3000584a:	f04f 4182 	mov.w	r1, #1090519040	; 0x41000000
3000584e:	230a      	movs	r3, #10
30005850:	6c0a      	ldr	r2, [r1, #64]	; 0x40
30005852:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
30005856:	640a      	str	r2, [r1, #64]	; 0x40
30005858:	6c0a      	ldr	r2, [r1, #64]	; 0x40
3000585a:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
3000585e:	640a      	str	r2, [r1, #64]	; 0x40
30005860:	e000      	b.n	30005864 <FLASH_CalibrationPhaseIdx+0x28>
30005862:	b11b      	cbz	r3, 3000586c <FLASH_CalibrationPhaseIdx+0x30>
30005864:	6c0a      	ldr	r2, [r1, #64]	; 0x40
30005866:	3b01      	subs	r3, #1
30005868:	0792      	lsls	r2, r2, #30
3000586a:	d1fa      	bne.n	30005862 <FLASH_CalibrationPhaseIdx+0x26>
3000586c:	f04f 4182 	mov.w	r1, #1090519040	; 0x41000000
30005870:	00a4      	lsls	r4, r4, #2
30005872:	220a      	movs	r2, #10
30005874:	6c0b      	ldr	r3, [r1, #64]	; 0x40
30005876:	f004 047c 	and.w	r4, r4, #124	; 0x7c
3000587a:	f023 037c 	bic.w	r3, r3, #124	; 0x7c
3000587e:	431c      	orrs	r4, r3
30005880:	640c      	str	r4, [r1, #64]	; 0x40
30005882:	6c0b      	ldr	r3, [r1, #64]	; 0x40
30005884:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
30005888:	640b      	str	r3, [r1, #64]	; 0x40
3000588a:	6c0b      	ldr	r3, [r1, #64]	; 0x40
3000588c:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
30005890:	640b      	str	r3, [r1, #64]	; 0x40
30005892:	e000      	b.n	30005896 <FLASH_CalibrationPhaseIdx+0x5a>
30005894:	b12a      	cbz	r2, 300058a2 <FLASH_CalibrationPhaseIdx+0x66>
30005896:	6c0b      	ldr	r3, [r1, #64]	; 0x40
30005898:	3a01      	subs	r2, #1
3000589a:	f003 0303 	and.w	r3, r3, #3
3000589e:	2b03      	cmp	r3, #3
300058a0:	d1f8      	bne.n	30005894 <FLASH_CalibrationPhaseIdx+0x58>
300058a2:	2000      	movs	r0, #0
300058a4:	2201      	movs	r2, #1
300058a6:	2180      	movs	r1, #128	; 0x80
300058a8:	47a8      	blx	r5
300058aa:	2001      	movs	r0, #1
300058ac:	bd38      	pop	{r3, r4, r5, pc}
300058ae:	bf00      	nop
300058b0:	0000b479 	.word	0x0000b479

300058b4 <FLASH_CalibrationNewCmd>:
300058b4:	f04f 4382 	mov.w	r3, #1090519040	; 0x41000000
300058b8:	2801      	cmp	r0, #1
300058ba:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
300058be:	f04f 0001 	mov.w	r0, #1
300058c2:	6c1b      	ldr	r3, [r3, #64]	; 0x40
300058c4:	bf0c      	ite	eq
300058c6:	f443 4300 	orreq.w	r3, r3, #32768	; 0x8000
300058ca:	f423 4300 	bicne.w	r3, r3, #32768	; 0x8000
300058ce:	6413      	str	r3, [r2, #64]	; 0x40
300058d0:	4770      	bx	lr
300058d2:	bf00      	nop

300058d4 <FLASH_CalibrationNew>:
300058d4:	0052      	lsls	r2, r2, #1
300058d6:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
300058da:	3201      	adds	r2, #1
300058dc:	b087      	sub	sp, #28
300058de:	461f      	mov	r7, r3
300058e0:	4b4d      	ldr	r3, [pc, #308]	; (30005a18 <FLASH_CalibrationNew+0x144>)
300058e2:	9101      	str	r1, [sp, #4]
300058e4:	fa5f f882 	uxtb.w	r8, r2
300058e8:	f89d 4040 	ldrb.w	r4, [sp, #64]	; 0x40
300058ec:	f89d a044 	ldrb.w	sl, [sp, #68]	; 0x44
300058f0:	9003      	str	r0, [sp, #12]
300058f2:	4798      	blx	r3
300058f4:	9901      	ldr	r1, [sp, #4]
300058f6:	2800      	cmp	r0, #0
300058f8:	d07f      	beq.n	300059fa <FLASH_CalibrationNew+0x126>
300058fa:	4848      	ldr	r0, [pc, #288]	; (30005a1c <FLASH_CalibrationNew+0x148>)
300058fc:	4a48      	ldr	r2, [pc, #288]	; (30005a20 <FLASH_CalibrationNew+0x14c>)
300058fe:	4790      	blx	r2
30005900:	4b46      	ldr	r3, [pc, #280]	; (30005a1c <FLASH_CalibrationNew+0x148>)
30005902:	f04f 4088 	mov.w	r0, #1140850688	; 0x44000000
30005906:	0322      	lsls	r2, r4, #12
30005908:	f04f 4182 	mov.w	r1, #1090519040	; 0x41000000
3000590c:	795c      	ldrb	r4, [r3, #5]
3000590e:	45d0      	cmp	r8, sl
30005910:	b292      	uxth	r2, r2
30005912:	6144      	str	r4, [r0, #20]
30005914:	f8d0 411c 	ldr.w	r4, [r0, #284]	; 0x11c
30005918:	f424 4470 	bic.w	r4, r4, #61440	; 0xf000
3000591c:	ea42 0204 	orr.w	r2, r2, r4
30005920:	f8c0 211c 	str.w	r2, [r0, #284]	; 0x11c
30005924:	6c0a      	ldr	r2, [r1, #64]	; 0x40
30005926:	f422 4200 	bic.w	r2, r2, #32768	; 0x8000
3000592a:	640a      	str	r2, [r1, #64]	; 0x40
3000592c:	6c0a      	ldr	r2, [r1, #64]	; 0x40
3000592e:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
30005932:	640a      	str	r2, [r1, #64]	; 0x40
30005934:	d36e      	bcc.n	30005a14 <FLASH_CalibrationNew+0x140>
30005936:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
3000593a:	2500      	movs	r5, #0
3000593c:	f8df b0f4 	ldr.w	fp, [pc, #244]	; 30005a34 <FLASH_CalibrationNew+0x160>
30005940:	f04f 6400 	mov.w	r4, #134217728	; 0x8000000
30005944:	4e37      	ldr	r6, [pc, #220]	; (30005a24 <FLASH_CalibrationNew+0x150>)
30005946:	f8df 90f0 	ldr.w	r9, [pc, #240]	; 30005a38 <FLASH_CalibrationNew+0x164>
3000594a:	9302      	str	r3, [sp, #8]
3000594c:	9301      	str	r3, [sp, #4]
3000594e:	e00e      	b.n	3000596e <FLASH_CalibrationNew+0x9a>
30005950:	9b01      	ldr	r3, [sp, #4]
30005952:	443d      	add	r5, r7
30005954:	f8cd a008 	str.w	sl, [sp, #8]
30005958:	3301      	adds	r3, #1
3000595a:	d102      	bne.n	30005962 <FLASH_CalibrationNew+0x8e>
3000595c:	2501      	movs	r5, #1
3000595e:	f8cd a004 	str.w	sl, [sp, #4]
30005962:	eb07 030a 	add.w	r3, r7, sl
30005966:	fa5f fa83 	uxtb.w	sl, r3
3000596a:	45d0      	cmp	r8, sl
3000596c:	d33c      	bcc.n	300059e8 <FLASH_CalibrationNew+0x114>
3000596e:	4650      	mov	r0, sl
30005970:	f7ff ff64 	bl	3000583c <FLASH_CalibrationPhaseIdx>
30005974:	6972      	ldr	r2, [r6, #20]
30005976:	03d3      	lsls	r3, r2, #15
30005978:	d507      	bpl.n	3000598a <FLASH_CalibrationNew+0xb6>
3000597a:	f3bf 8f4f 	dsb	sy
3000597e:	f8c6 425c 	str.w	r4, [r6, #604]	; 0x25c
30005982:	f3bf 8f4f 	dsb	sy
30005986:	f3bf 8f6f 	isb	sy
3000598a:	47d8      	blx	fp
3000598c:	6821      	ldr	r1, [r4, #0]
3000598e:	2208      	movs	r2, #8
30005990:	a804      	add	r0, sp, #16
30005992:	9104      	str	r1, [sp, #16]
30005994:	6861      	ldr	r1, [r4, #4]
30005996:	4b24      	ldr	r3, [pc, #144]	; (30005a28 <FLASH_CalibrationNew+0x154>)
30005998:	9105      	str	r1, [sp, #20]
3000599a:	4649      	mov	r1, r9
3000599c:	4798      	blx	r3
3000599e:	2800      	cmp	r0, #0
300059a0:	d0d6      	beq.n	30005950 <FLASH_CalibrationNew+0x7c>
300059a2:	2d00      	cmp	r5, #0
300059a4:	dddd      	ble.n	30005962 <FLASH_CalibrationNew+0x8e>
300059a6:	9b02      	ldr	r3, [sp, #8]
300059a8:	9903      	ldr	r1, [sp, #12]
300059aa:	061a      	lsls	r2, r3, #24
300059ac:	9b01      	ldr	r3, [sp, #4]
300059ae:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
300059b2:	eb03 0365 	add.w	r3, r3, r5, asr #1
300059b6:	4315      	orrs	r5, r2
300059b8:	f881 3061 	strb.w	r3, [r1, #97]	; 0x61
300059bc:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
300059c0:	4c16      	ldr	r4, [pc, #88]	; (30005a1c <FLASH_CalibrationNew+0x148>)
300059c2:	6c13      	ldr	r3, [r2, #64]	; 0x40
300059c4:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
300059c8:	6413      	str	r3, [r2, #64]	; 0x40
300059ca:	f04f 4388 	mov.w	r3, #1140850688	; 0x44000000
300059ce:	79a2      	ldrb	r2, [r4, #6]
300059d0:	615a      	str	r2, [r3, #20]
300059d2:	4b11      	ldr	r3, [pc, #68]	; (30005a18 <FLASH_CalibrationNew+0x144>)
300059d4:	4798      	blx	r3
300059d6:	b1a0      	cbz	r0, 30005a02 <FLASH_CalibrationNew+0x12e>
300059d8:	4620      	mov	r0, r4
300059da:	7921      	ldrb	r1, [r4, #4]
300059dc:	4b10      	ldr	r3, [pc, #64]	; (30005a20 <FLASH_CalibrationNew+0x14c>)
300059de:	4798      	blx	r3
300059e0:	4628      	mov	r0, r5
300059e2:	b007      	add	sp, #28
300059e4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
300059e8:	2d00      	cmp	r5, #0
300059ea:	dcdc      	bgt.n	300059a6 <FLASH_CalibrationNew+0xd2>
300059ec:	9b02      	ldr	r3, [sp, #8]
300059ee:	9a01      	ldr	r2, [sp, #4]
300059f0:	061b      	lsls	r3, r3, #24
300059f2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
300059f6:	431d      	orrs	r5, r3
300059f8:	e7e0      	b.n	300059bc <FLASH_CalibrationNew+0xe8>
300059fa:	4808      	ldr	r0, [pc, #32]	; (30005a1c <FLASH_CalibrationNew+0x148>)
300059fc:	4a0b      	ldr	r2, [pc, #44]	; (30005a2c <FLASH_CalibrationNew+0x158>)
300059fe:	4790      	blx	r2
30005a00:	e77e      	b.n	30005900 <FLASH_CalibrationNew+0x2c>
30005a02:	4b06      	ldr	r3, [pc, #24]	; (30005a1c <FLASH_CalibrationNew+0x148>)
30005a04:	7919      	ldrb	r1, [r3, #4]
30005a06:	4618      	mov	r0, r3
30005a08:	4b08      	ldr	r3, [pc, #32]	; (30005a2c <FLASH_CalibrationNew+0x158>)
30005a0a:	4798      	blx	r3
30005a0c:	4628      	mov	r0, r5
30005a0e:	b007      	add	sp, #28
30005a10:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30005a14:	4d06      	ldr	r5, [pc, #24]	; (30005a30 <FLASH_CalibrationNew+0x15c>)
30005a16:	e7d1      	b.n	300059bc <FLASH_CalibrationNew+0xe8>
30005a18:	30009ae5 	.word	0x30009ae5
30005a1c:	2001c01c 	.word	0x2001c01c
30005a20:	00009c99 	.word	0x00009c99
30005a24:	e000ed00 	.word	0xe000ed00
30005a28:	000129bd 	.word	0x000129bd
30005a2c:	0000b7e9 	.word	0x0000b7e9
30005a30:	ffff0000 	.word	0xffff0000
30005a34:	30009971 	.word	0x30009971
30005a38:	00054060 	.word	0x00054060

30005a3c <FLASH_Calibration>:
30005a3c:	f04f 4388 	mov.w	r3, #1140850688	; 0x44000000
30005a40:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30005a44:	695c      	ldr	r4, [r3, #20]
30005a46:	b087      	sub	sp, #28
30005a48:	4616      	mov	r6, r2
30005a4a:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
30005a4e:	9403      	str	r4, [sp, #12]
30005a50:	f8d3 311c 	ldr.w	r3, [r3, #284]	; 0x11c
30005a54:	9101      	str	r1, [sp, #4]
30005a56:	9304      	str	r3, [sp, #16]
30005a58:	9005      	str	r0, [sp, #20]
30005a5a:	6c13      	ldr	r3, [r2, #64]	; 0x40
30005a5c:	7944      	ldrb	r4, [r0, #5]
30005a5e:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
30005a62:	6413      	str	r3, [r2, #64]	; 0x40
30005a64:	4b38      	ldr	r3, [pc, #224]	; (30005b48 <FLASH_Calibration+0x10c>)
30005a66:	4798      	blx	r3
30005a68:	9901      	ldr	r1, [sp, #4]
30005a6a:	2800      	cmp	r0, #0
30005a6c:	d057      	beq.n	30005b1e <FLASH_Calibration+0xe2>
30005a6e:	4837      	ldr	r0, [pc, #220]	; (30005b4c <FLASH_Calibration+0x110>)
30005a70:	f04f 4a88 	mov.w	sl, #1140850688	; 0x44000000
30005a74:	4b36      	ldr	r3, [pc, #216]	; (30005b50 <FLASH_Calibration+0x114>)
30005a76:	4798      	blx	r3
30005a78:	f8ca 4014 	str.w	r4, [sl, #20]
30005a7c:	eb16 0644 	adds.w	r6, r6, r4, lsl #1
30005a80:	d057      	beq.n	30005b32 <FLASH_Calibration+0xf6>
30005a82:	2700      	movs	r7, #0
30005a84:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
30005a88:	f8df 80d0 	ldr.w	r8, [pc, #208]	; 30005b5c <FLASH_Calibration+0x120>
30005a8c:	f04f 6400 	mov.w	r4, #134217728	; 0x8000000
30005a90:	f8df 90cc 	ldr.w	r9, [pc, #204]	; 30005b60 <FLASH_Calibration+0x124>
30005a94:	46bb      	mov	fp, r7
30005a96:	4d2f      	ldr	r5, [pc, #188]	; (30005b54 <FLASH_Calibration+0x118>)
30005a98:	9302      	str	r3, [sp, #8]
30005a9a:	9701      	str	r7, [sp, #4]
30005a9c:	f8da 111c 	ldr.w	r1, [sl, #284]	; 0x11c
30005aa0:	ea4f 330b 	mov.w	r3, fp, lsl #12
30005aa4:	f421 4170 	bic.w	r1, r1, #61440	; 0xf000
30005aa8:	b29b      	uxth	r3, r3
30005aaa:	430b      	orrs	r3, r1
30005aac:	f8ca 311c 	str.w	r3, [sl, #284]	; 0x11c
30005ab0:	696b      	ldr	r3, [r5, #20]
30005ab2:	03db      	lsls	r3, r3, #15
30005ab4:	d507      	bpl.n	30005ac6 <FLASH_Calibration+0x8a>
30005ab6:	f3bf 8f4f 	dsb	sy
30005aba:	f8c5 425c 	str.w	r4, [r5, #604]	; 0x25c
30005abe:	f3bf 8f4f 	dsb	sy
30005ac2:	f3bf 8f6f 	isb	sy
30005ac6:	47c0      	blx	r8
30005ac8:	6823      	ldr	r3, [r4, #0]
30005aca:	f8d9 1000 	ldr.w	r1, [r9]
30005ace:	4299      	cmp	r1, r3
30005ad0:	d108      	bne.n	30005ae4 <FLASH_Calibration+0xa8>
30005ad2:	9b02      	ldr	r3, [sp, #8]
30005ad4:	3701      	adds	r7, #1
30005ad6:	3301      	adds	r3, #1
30005ad8:	f04f 0301 	mov.w	r3, #1
30005adc:	bf08      	it	eq
30005ade:	f8cd b008 	streq.w	fp, [sp, #8]
30005ae2:	9301      	str	r3, [sp, #4]
30005ae4:	f10b 0b01 	add.w	fp, fp, #1
30005ae8:	45b3      	cmp	fp, r6
30005aea:	d1d7      	bne.n	30005a9c <FLASH_Calibration+0x60>
30005aec:	2f00      	cmp	r7, #0
30005aee:	dd04      	ble.n	30005afa <FLASH_Calibration+0xbe>
30005af0:	9b02      	ldr	r3, [sp, #8]
30005af2:	eb03 0767 	add.w	r7, r3, r7, asr #1
30005af6:	9b05      	ldr	r3, [sp, #20]
30005af8:	775f      	strb	r7, [r3, #29]
30005afa:	4b13      	ldr	r3, [pc, #76]	; (30005b48 <FLASH_Calibration+0x10c>)
30005afc:	4798      	blx	r3
30005afe:	b1e8      	cbz	r0, 30005b3c <FLASH_Calibration+0x100>
30005b00:	4812      	ldr	r0, [pc, #72]	; (30005b4c <FLASH_Calibration+0x110>)
30005b02:	4b13      	ldr	r3, [pc, #76]	; (30005b50 <FLASH_Calibration+0x114>)
30005b04:	7901      	ldrb	r1, [r0, #4]
30005b06:	4798      	blx	r3
30005b08:	9a03      	ldr	r2, [sp, #12]
30005b0a:	f04f 4388 	mov.w	r3, #1140850688	; 0x44000000
30005b0e:	9801      	ldr	r0, [sp, #4]
30005b10:	615a      	str	r2, [r3, #20]
30005b12:	9a04      	ldr	r2, [sp, #16]
30005b14:	f8c3 211c 	str.w	r2, [r3, #284]	; 0x11c
30005b18:	b007      	add	sp, #28
30005b1a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30005b1e:	480b      	ldr	r0, [pc, #44]	; (30005b4c <FLASH_Calibration+0x110>)
30005b20:	f04f 4a88 	mov.w	sl, #1140850688	; 0x44000000
30005b24:	4b0c      	ldr	r3, [pc, #48]	; (30005b58 <FLASH_Calibration+0x11c>)
30005b26:	4798      	blx	r3
30005b28:	f8ca 4014 	str.w	r4, [sl, #20]
30005b2c:	eb16 0644 	adds.w	r6, r6, r4, lsl #1
30005b30:	d1a7      	bne.n	30005a82 <FLASH_Calibration+0x46>
30005b32:	4b05      	ldr	r3, [pc, #20]	; (30005b48 <FLASH_Calibration+0x10c>)
30005b34:	9601      	str	r6, [sp, #4]
30005b36:	4798      	blx	r3
30005b38:	2800      	cmp	r0, #0
30005b3a:	d1e1      	bne.n	30005b00 <FLASH_Calibration+0xc4>
30005b3c:	4803      	ldr	r0, [pc, #12]	; (30005b4c <FLASH_Calibration+0x110>)
30005b3e:	4b06      	ldr	r3, [pc, #24]	; (30005b58 <FLASH_Calibration+0x11c>)
30005b40:	7901      	ldrb	r1, [r0, #4]
30005b42:	4798      	blx	r3
30005b44:	e7e0      	b.n	30005b08 <FLASH_Calibration+0xcc>
30005b46:	bf00      	nop
30005b48:	30009ae5 	.word	0x30009ae5
30005b4c:	2001c01c 	.word	0x2001c01c
30005b50:	00009c99 	.word	0x00009c99
30005b54:	e000ed00 	.word	0xe000ed00
30005b58:	0000b7e9 	.word	0x0000b7e9
30005b5c:	30009971 	.word	0x30009971
30005b60:	00054060 	.word	0x00054060

30005b64 <_flash_calibration_highspeed>:
30005b64:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30005b68:	f04f 0800 	mov.w	r8, #0
30005b6c:	b087      	sub	sp, #28
30005b6e:	4683      	mov	fp, r0
30005b70:	460e      	mov	r6, r1
30005b72:	4647      	mov	r7, r8
30005b74:	4644      	mov	r4, r8
30005b76:	4d28      	ldr	r5, [pc, #160]	; (30005c18 <_flash_calibration_highspeed+0xb4>)
30005b78:	f04f 0a01 	mov.w	sl, #1
30005b7c:	46c1      	mov	r9, r8
30005b7e:	fa5f fc84 	uxtb.w	ip, r4
30005b82:	2301      	movs	r3, #1
30005b84:	4632      	mov	r2, r6
30005b86:	4659      	mov	r1, fp
30005b88:	4628      	mov	r0, r5
30005b8a:	e9cd ca00 	strd	ip, sl, [sp]
30005b8e:	f7ff fea1 	bl	300058d4 <FLASH_CalibrationNew>
30005b92:	eb04 0384 	add.w	r3, r4, r4, lsl #2
30005b96:	3401      	adds	r4, #1
30005b98:	b2c2      	uxtb	r2, r0
30005b9a:	005b      	lsls	r3, r3, #1
30005b9c:	b12a      	cbz	r2, 30005baa <_flash_calibration_highspeed+0x46>
30005b9e:	f3c0 4207 	ubfx	r2, r0, #16, #8
30005ba2:	eb03 6810 	add.w	r8, r3, r0, lsr #24
30005ba6:	b907      	cbnz	r7, 30005baa <_flash_calibration_highspeed+0x46>
30005ba8:	18d7      	adds	r7, r2, r3
30005baa:	2c05      	cmp	r4, #5
30005bac:	f885 9061 	strb.w	r9, [r5, #97]	; 0x61
30005bb0:	d1e5      	bne.n	30005b7e <_flash_calibration_highspeed+0x1a>
30005bb2:	b927      	cbnz	r7, 30005bbe <_flash_calibration_highspeed+0x5a>
30005bb4:	4638      	mov	r0, r7
30005bb6:	776f      	strb	r7, [r5, #29]
30005bb8:	b007      	add	sp, #28
30005bba:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30005bbe:	eb07 0208 	add.w	r2, r7, r8
30005bc2:	4b16      	ldr	r3, [pc, #88]	; (30005c1c <_flash_calibration_highspeed+0xb8>)
30005bc4:	0852      	lsrs	r2, r2, #1
30005bc6:	fba3 1602 	umull	r1, r6, r3, r2
30005bca:	08f6      	lsrs	r6, r6, #3
30005bcc:	eb06 0686 	add.w	r6, r6, r6, lsl #2
30005bd0:	ebb2 0646 	subs.w	r6, r2, r6, lsl #1
30005bd4:	d107      	bne.n	30005be6 <_flash_calibration_highspeed+0x82>
30005bd6:	3201      	adds	r2, #1
30005bd8:	fba3 1302 	umull	r1, r3, r3, r2
30005bdc:	08de      	lsrs	r6, r3, #3
30005bde:	eb06 0686 	add.w	r6, r6, r6, lsl #2
30005be2:	eba2 0646 	sub.w	r6, r2, r6, lsl #1
30005be6:	4c0d      	ldr	r4, [pc, #52]	; (30005c1c <_flash_calibration_highspeed+0xb8>)
30005be8:	2004      	movs	r0, #4
30005bea:	9202      	str	r2, [sp, #8]
30005bec:	fba4 2402 	umull	r2, r4, r4, r2
30005bf0:	4b0b      	ldr	r3, [pc, #44]	; (30005c20 <_flash_calibration_highspeed+0xbc>)
30005bf2:	2249      	movs	r2, #73	; 0x49
30005bf4:	490b      	ldr	r1, [pc, #44]	; (30005c24 <_flash_calibration_highspeed+0xc0>)
30005bf6:	08e4      	lsrs	r4, r4, #3
30005bf8:	f8cd 8004 	str.w	r8, [sp, #4]
30005bfc:	9604      	str	r6, [sp, #16]
30005bfe:	9403      	str	r4, [sp, #12]
30005c00:	b2e4      	uxtb	r4, r4
30005c02:	9700      	str	r7, [sp, #0]
30005c04:	f003 fc34 	bl	30009470 <rtk_log_write>
30005c08:	2001      	movs	r0, #1
30005c0a:	f885 6061 	strb.w	r6, [r5, #97]	; 0x61
30005c0e:	772c      	strb	r4, [r5, #28]
30005c10:	776c      	strb	r4, [r5, #29]
30005c12:	b007      	add	sp, #28
30005c14:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30005c18:	2001c01c 	.word	0x2001c01c
30005c1c:	cccccccd 	.word	0xcccccccd
30005c20:	3000bf78 	.word	0x3000bf78
30005c24:	3000c198 	.word	0x3000c198

30005c28 <flash_calibration_highspeed>:
30005c28:	b570      	push	{r4, r5, r6, lr}
30005c2a:	4d1c      	ldr	r5, [pc, #112]	; (30005c9c <flash_calibration_highspeed+0x74>)
30005c2c:	2300      	movs	r3, #0
30005c2e:	4604      	mov	r4, r0
30005c30:	b082      	sub	sp, #8
30005c32:	792e      	ldrb	r6, [r5, #4]
30005c34:	f885 3060 	strb.w	r3, [r5, #96]	; 0x60
30005c38:	f7ff fdb8 	bl	300057ac <FLASH_ClockDiv>
30005c3c:	4621      	mov	r1, r4
30005c3e:	4630      	mov	r0, r6
30005c40:	f7ff ff90 	bl	30005b64 <_flash_calibration_highspeed>
30005c44:	b1e8      	cbz	r0, 30005c82 <flash_calibration_highspeed+0x5a>
30005c46:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
30005c4a:	f895 0061 	ldrb.w	r0, [r5, #97]	; 0x61
30005c4e:	6c13      	ldr	r3, [r2, #64]	; 0x40
30005c50:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
30005c54:	6413      	str	r3, [r2, #64]	; 0x40
30005c56:	f7ff fdf1 	bl	3000583c <FLASH_CalibrationPhaseIdx>
30005c5a:	4b11      	ldr	r3, [pc, #68]	; (30005ca0 <flash_calibration_highspeed+0x78>)
30005c5c:	4798      	blx	r3
30005c5e:	b960      	cbnz	r0, 30005c7a <flash_calibration_highspeed+0x52>
30005c60:	4630      	mov	r0, r6
30005c62:	4b10      	ldr	r3, [pc, #64]	; (30005ca4 <flash_calibration_highspeed+0x7c>)
30005c64:	4798      	blx	r3
30005c66:	2004      	movs	r0, #4
30005c68:	4b0f      	ldr	r3, [pc, #60]	; (30005ca8 <flash_calibration_highspeed+0x80>)
30005c6a:	2249      	movs	r2, #73	; 0x49
30005c6c:	490f      	ldr	r1, [pc, #60]	; (30005cac <flash_calibration_highspeed+0x84>)
30005c6e:	9400      	str	r4, [sp, #0]
30005c70:	f003 fbfe 	bl	30009470 <rtk_log_write>
30005c74:	2000      	movs	r0, #0
30005c76:	b002      	add	sp, #8
30005c78:	bd70      	pop	{r4, r5, r6, pc}
30005c7a:	4630      	mov	r0, r6
30005c7c:	4b0c      	ldr	r3, [pc, #48]	; (30005cb0 <flash_calibration_highspeed+0x88>)
30005c7e:	4798      	blx	r3
30005c80:	e7f1      	b.n	30005c66 <flash_calibration_highspeed+0x3e>
30005c82:	2001      	movs	r0, #1
30005c84:	4b0b      	ldr	r3, [pc, #44]	; (30005cb4 <flash_calibration_highspeed+0x8c>)
30005c86:	4798      	blx	r3
30005c88:	2002      	movs	r0, #2
30005c8a:	4b0b      	ldr	r3, [pc, #44]	; (30005cb8 <flash_calibration_highspeed+0x90>)
30005c8c:	2245      	movs	r2, #69	; 0x45
30005c8e:	4907      	ldr	r1, [pc, #28]	; (30005cac <flash_calibration_highspeed+0x84>)
30005c90:	9400      	str	r4, [sp, #0]
30005c92:	f003 fbed 	bl	30009470 <rtk_log_write>
30005c96:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
30005c9a:	e7ec      	b.n	30005c76 <flash_calibration_highspeed+0x4e>
30005c9c:	2001c01c 	.word	0x2001c01c
30005ca0:	30009ae5 	.word	0x30009ae5
30005ca4:	0000c045 	.word	0x0000c045
30005ca8:	3000bfcc 	.word	0x3000bfcc
30005cac:	3000c198 	.word	0x3000c198
30005cb0:	0000a53d 	.word	0x0000a53d
30005cb4:	0000b569 	.word	0x0000b569
30005cb8:	3000bfe4 	.word	0x3000bfe4

30005cbc <flash_rx_mode_switch>:
30005cbc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30005cc0:	2300      	movs	r3, #0
30005cc2:	b08b      	sub	sp, #44	; 0x2c
30005cc4:	4d51      	ldr	r5, [pc, #324]	; (30005e0c <flash_rx_mode_switch+0x150>)
30005cc6:	4606      	mov	r6, r0
30005cc8:	ac05      	add	r4, sp, #20
30005cca:	f88d 300b 	strb.w	r3, [sp, #11]
30005cce:	2e04      	cmp	r6, #4
30005cd0:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
30005cd2:	c40f      	stmia	r4!, {r0, r1, r2, r3}
30005cd4:	682b      	ldr	r3, [r5, #0]
30005cd6:	6023      	str	r3, [r4, #0]
30005cd8:	d877      	bhi.n	30005dca <flash_rx_mode_switch+0x10e>
30005cda:	b270      	sxtb	r0, r6
30005cdc:	ab05      	add	r3, sp, #20
30005cde:	4f4c      	ldr	r7, [pc, #304]	; (30005e10 <flash_rx_mode_switch+0x154>)
30005ce0:	f1c0 0404 	rsb	r4, r0, #4
30005ce4:	f1c0 0022 	rsb	r0, r0, #34	; 0x22
30005ce8:	f8df b150 	ldr.w	fp, [pc, #336]	; 30005e3c <flash_rx_mode_switch+0x180>
30005cec:	fa4f f884 	sxtb.w	r8, r4
30005cf0:	fa47 f580 	sxtab	r5, r7, r0
30005cf4:	b2e4      	uxtb	r4, r4
30005cf6:	f8df a148 	ldr.w	sl, [pc, #328]	; 30005e40 <flash_rx_mode_switch+0x184>
30005cfa:	eb03 0888 	add.w	r8, r3, r8, lsl #2
30005cfe:	f8df 9144 	ldr.w	r9, [pc, #324]	; 30005e44 <flash_rx_mode_switch+0x188>
30005d02:	e033      	b.n	30005d6c <flash_rx_mode_switch+0xb0>
30005d04:	2c04      	cmp	r4, #4
30005d06:	d039      	beq.n	30005d7c <flash_rx_mode_switch+0xc0>
30005d08:	2c02      	cmp	r4, #2
30005d0a:	d037      	beq.n	30005d7c <flash_rx_mode_switch+0xc0>
30005d0c:	683b      	ldr	r3, [r7, #0]
30005d0e:	2b03      	cmp	r3, #3
30005d10:	d03a      	beq.n	30005d88 <flash_rx_mode_switch+0xcc>
30005d12:	2300      	movs	r3, #0
30005d14:	4620      	mov	r0, r4
30005d16:	777b      	strb	r3, [r7, #29]
30005d18:	4b3e      	ldr	r3, [pc, #248]	; (30005e14 <flash_rx_mode_switch+0x158>)
30005d1a:	4798      	blx	r3
30005d1c:	4b3e      	ldr	r3, [pc, #248]	; (30005e18 <flash_rx_mode_switch+0x15c>)
30005d1e:	695a      	ldr	r2, [r3, #20]
30005d20:	03d2      	lsls	r2, r2, #15
30005d22:	d509      	bpl.n	30005d38 <flash_rx_mode_switch+0x7c>
30005d24:	f3bf 8f4f 	dsb	sy
30005d28:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
30005d2c:	f8c3 225c 	str.w	r2, [r3, #604]	; 0x25c
30005d30:	f3bf 8f4f 	dsb	sy
30005d34:	f3bf 8f6f 	isb	sy
30005d38:	47d0      	blx	sl
30005d3a:	f04f 6300 	mov.w	r3, #134217728	; 0x8000000
30005d3e:	4937      	ldr	r1, [pc, #220]	; (30005e1c <flash_rx_mode_switch+0x160>)
30005d40:	a803      	add	r0, sp, #12
30005d42:	681a      	ldr	r2, [r3, #0]
30005d44:	9203      	str	r2, [sp, #12]
30005d46:	2208      	movs	r2, #8
30005d48:	685b      	ldr	r3, [r3, #4]
30005d4a:	9304      	str	r3, [sp, #16]
30005d4c:	47c8      	blx	r9
30005d4e:	2800      	cmp	r0, #0
30005d50:	d042      	beq.n	30005dd8 <flash_rx_mode_switch+0x11c>
30005d52:	f897 3060 	ldrb.w	r3, [r7, #96]	; 0x60
30005d56:	bb6b      	cbnz	r3, 30005db4 <flash_rx_mode_switch+0xf8>
30005d58:	1e62      	subs	r2, r4, #1
30005d5a:	f1c4 0305 	rsb	r3, r4, #5
30005d5e:	f1a8 0804 	sub.w	r8, r8, #4
30005d62:	3d01      	subs	r5, #1
30005d64:	b2d4      	uxtb	r4, r2
30005d66:	b2db      	uxtb	r3, r3
30005d68:	2cff      	cmp	r4, #255	; 0xff
30005d6a:	d02d      	beq.n	30005dc8 <flash_rx_mode_switch+0x10c>
30005d6c:	47d8      	blx	fp
30005d6e:	2800      	cmp	r0, #0
30005d70:	d1c8      	bne.n	30005d04 <flash_rx_mode_switch+0x48>
30005d72:	7778      	strb	r0, [r7, #29]
30005d74:	4620      	mov	r0, r4
30005d76:	4b2a      	ldr	r3, [pc, #168]	; (30005e20 <flash_rx_mode_switch+0x164>)
30005d78:	4798      	blx	r3
30005d7a:	e7cf      	b.n	30005d1c <flash_rx_mode_switch+0x60>
30005d7c:	2301      	movs	r3, #1
30005d7e:	f887 3063 	strb.w	r3, [r7, #99]	; 0x63
30005d82:	683b      	ldr	r3, [r7, #0]
30005d84:	2b03      	cmp	r3, #3
30005d86:	d1c4      	bne.n	30005d12 <flash_rx_mode_switch+0x56>
30005d88:	f10d 020b 	add.w	r2, sp, #11
30005d8c:	2101      	movs	r1, #1
30005d8e:	2085      	movs	r0, #133	; 0x85
30005d90:	4b24      	ldr	r3, [pc, #144]	; (30005e24 <flash_rx_mode_switch+0x168>)
30005d92:	4798      	blx	r3
30005d94:	f89d 300b 	ldrb.w	r3, [sp, #11]
30005d98:	7829      	ldrb	r1, [r5, #0]
30005d9a:	f10d 020b 	add.w	r2, sp, #11
30005d9e:	f003 030f 	and.w	r3, r3, #15
30005da2:	2081      	movs	r0, #129	; 0x81
30005da4:	ea43 1301 	orr.w	r3, r3, r1, lsl #4
30005da8:	2101      	movs	r1, #1
30005daa:	f88d 300b 	strb.w	r3, [sp, #11]
30005dae:	4b1e      	ldr	r3, [pc, #120]	; (30005e28 <flash_rx_mode_switch+0x16c>)
30005db0:	4798      	blx	r3
30005db2:	e7ae      	b.n	30005d12 <flash_rx_mode_switch+0x56>
30005db4:	f8d8 3000 	ldr.w	r3, [r8]
30005db8:	2249      	movs	r2, #73	; 0x49
30005dba:	491c      	ldr	r1, [pc, #112]	; (30005e2c <flash_rx_mode_switch+0x170>)
30005dbc:	2004      	movs	r0, #4
30005dbe:	9300      	str	r3, [sp, #0]
30005dc0:	4b1b      	ldr	r3, [pc, #108]	; (30005e30 <flash_rx_mode_switch+0x174>)
30005dc2:	f003 fb55 	bl	30009470 <rtk_log_write>
30005dc6:	e7c7      	b.n	30005d58 <flash_rx_mode_switch+0x9c>
30005dc8:	461e      	mov	r6, r3
30005dca:	2e05      	cmp	r6, #5
30005dcc:	d015      	beq.n	30005dfa <flash_rx_mode_switch+0x13e>
30005dce:	2600      	movs	r6, #0
30005dd0:	4630      	mov	r0, r6
30005dd2:	b00b      	add	sp, #44	; 0x2c
30005dd4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30005dd8:	ab0a      	add	r3, sp, #40	; 0x28
30005dda:	4606      	mov	r6, r0
30005ddc:	2249      	movs	r2, #73	; 0x49
30005dde:	4913      	ldr	r1, [pc, #76]	; (30005e2c <flash_rx_mode_switch+0x170>)
30005de0:	eb03 0484 	add.w	r4, r3, r4, lsl #2
30005de4:	4b13      	ldr	r3, [pc, #76]	; (30005e34 <flash_rx_mode_switch+0x178>)
30005de6:	f854 0c14 	ldr.w	r0, [r4, #-20]
30005dea:	9000      	str	r0, [sp, #0]
30005dec:	2004      	movs	r0, #4
30005dee:	f003 fb3f 	bl	30009470 <rtk_log_write>
30005df2:	4630      	mov	r0, r6
30005df4:	b00b      	add	sp, #44	; 0x2c
30005df6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30005dfa:	4b0f      	ldr	r3, [pc, #60]	; (30005e38 <flash_rx_mode_switch+0x17c>)
30005dfc:	2245      	movs	r2, #69	; 0x45
30005dfe:	490b      	ldr	r1, [pc, #44]	; (30005e2c <flash_rx_mode_switch+0x170>)
30005e00:	2002      	movs	r0, #2
30005e02:	f04f 36ff 	mov.w	r6, #4294967295	; 0xffffffff
30005e06:	f003 fb33 	bl	30009470 <rtk_log_write>
30005e0a:	e7e1      	b.n	30005dd0 <flash_rx_mode_switch+0x114>
30005e0c:	3000c16c 	.word	0x3000c16c
30005e10:	2001c01c 	.word	0x2001c01c
30005e14:	0000a53d 	.word	0x0000a53d
30005e18:	e000ed00 	.word	0xe000ed00
30005e1c:	00054060 	.word	0x00054060
30005e20:	0000c045 	.word	0x0000c045
30005e24:	00009db5 	.word	0x00009db5
30005e28:	0000a149 	.word	0x0000a149
30005e2c:	3000c198 	.word	0x3000c198
30005e30:	3000c00c 	.word	0x3000c00c
30005e34:	3000bffc 	.word	0x3000bffc
30005e38:	3000c024 	.word	0x3000c024
30005e3c:	30009ae5 	.word	0x30009ae5
30005e40:	30009971 	.word	0x30009971
30005e44:	000129bd 	.word	0x000129bd

30005e48 <flash_highspeed_setup>:
30005e48:	4aa5      	ldr	r2, [pc, #660]	; (300060e0 <flash_highspeed_setup+0x298>)
30005e4a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
30005e4e:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
30005e52:	8812      	ldrh	r2, [r2, #0]
30005e54:	b087      	sub	sp, #28
30005e56:	2500      	movs	r5, #0
30005e58:	421a      	tst	r2, r3
30005e5a:	d104      	bne.n	30005e66 <flash_highspeed_setup+0x1e>
30005e5c:	3501      	adds	r5, #1
30005e5e:	085b      	lsrs	r3, r3, #1
30005e60:	b2ed      	uxtb	r5, r5
30005e62:	2d10      	cmp	r5, #16
30005e64:	d1f8      	bne.n	30005e58 <flash_highspeed_setup+0x10>
30005e66:	4a9f      	ldr	r2, [pc, #636]	; (300060e4 <flash_highspeed_setup+0x29c>)
30005e68:	2400      	movs	r4, #0
30005e6a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
30005e6e:	8812      	ldrh	r2, [r2, #0]
30005e70:	421a      	tst	r2, r3
30005e72:	d104      	bne.n	30005e7e <flash_highspeed_setup+0x36>
30005e74:	3401      	adds	r4, #1
30005e76:	085b      	lsrs	r3, r3, #1
30005e78:	b2e4      	uxtb	r4, r4
30005e7a:	2c10      	cmp	r4, #16
30005e7c:	d1f8      	bne.n	30005e70 <flash_highspeed_setup+0x28>
30005e7e:	b672      	cpsid	i
30005e80:	f04f 4288 	mov.w	r2, #1140850688	; 0x44000000
30005e84:	f8df 92b0 	ldr.w	r9, [pc, #688]	; 30006138 <flash_highspeed_setup+0x2f0>
30005e88:	4e97      	ldr	r6, [pc, #604]	; (300060e8 <flash_highspeed_setup+0x2a0>)
30005e8a:	6813      	ldr	r3, [r2, #0]
30005e8c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
30005e90:	6013      	str	r3, [r2, #0]
30005e92:	47c8      	blx	r9
30005e94:	2800      	cmp	r0, #0
30005e96:	d05c      	beq.n	30005f52 <flash_highspeed_setup+0x10a>
30005e98:	2103      	movs	r1, #3
30005e9a:	aa05      	add	r2, sp, #20
30005e9c:	f896 0055 	ldrb.w	r0, [r6, #85]	; 0x55
30005ea0:	4f92      	ldr	r7, [pc, #584]	; (300060ec <flash_highspeed_setup+0x2a4>)
30005ea2:	47b8      	blx	r7
30005ea4:	f89d 3016 	ldrb.w	r3, [sp, #22]
30005ea8:	2201      	movs	r2, #1
30005eaa:	4991      	ldr	r1, [pc, #580]	; (300060f0 <flash_highspeed_setup+0x2a8>)
30005eac:	9302      	str	r3, [sp, #8]
30005eae:	3b11      	subs	r3, #17
30005eb0:	2004      	movs	r0, #4
30005eb2:	fa02 f303 	lsl.w	r3, r2, r3
30005eb6:	2249      	movs	r2, #73	; 0x49
30005eb8:	9303      	str	r3, [sp, #12]
30005eba:	f89d 3015 	ldrb.w	r3, [sp, #21]
30005ebe:	9301      	str	r3, [sp, #4]
30005ec0:	f89d 3014 	ldrb.w	r3, [sp, #20]
30005ec4:	9300      	str	r3, [sp, #0]
30005ec6:	4b8b      	ldr	r3, [pc, #556]	; (300060f4 <flash_highspeed_setup+0x2ac>)
30005ec8:	f003 fad2 	bl	30009470 <rtk_log_write>
30005ecc:	f89d 8015 	ldrb.w	r8, [sp, #21]
30005ed0:	f89d 3016 	ldrb.w	r3, [sp, #22]
30005ed4:	ea4f 2808 	mov.w	r8, r8, lsl #8
30005ed8:	ea48 4803 	orr.w	r8, r8, r3, lsl #16
30005edc:	f89d 3014 	ldrb.w	r3, [sp, #20]
30005ee0:	ea48 0803 	orr.w	r8, r8, r3
30005ee4:	47c8      	blx	r9
30005ee6:	4a84      	ldr	r2, [pc, #528]	; (300060f8 <flash_highspeed_setup+0x2b0>)
30005ee8:	4b84      	ldr	r3, [pc, #528]	; (300060fc <flash_highspeed_setup+0x2b4>)
30005eea:	2800      	cmp	r0, #0
30005eec:	bf08      	it	eq
30005eee:	4613      	moveq	r3, r2
30005ef0:	7a1a      	ldrb	r2, [r3, #8]
30005ef2:	2aff      	cmp	r2, #255	; 0xff
30005ef4:	d111      	bne.n	30005f1a <flash_highspeed_setup+0xd2>
30005ef6:	4b82      	ldr	r3, [pc, #520]	; (30006100 <flash_highspeed_setup+0x2b8>)
30005ef8:	2200      	movs	r2, #0
30005efa:	601a      	str	r2, [r3, #0]
30005efc:	497c      	ldr	r1, [pc, #496]	; (300060f0 <flash_highspeed_setup+0x2a8>)
30005efe:	2003      	movs	r0, #3
30005f00:	4b80      	ldr	r3, [pc, #512]	; (30006104 <flash_highspeed_setup+0x2bc>)
30005f02:	2257      	movs	r2, #87	; 0x57
30005f04:	f003 fab4 	bl	30009470 <rtk_log_write>
30005f08:	f240 212e 	movw	r1, #558	; 0x22e
30005f0c:	487e      	ldr	r0, [pc, #504]	; (30006108 <flash_highspeed_setup+0x2c0>)
30005f0e:	f004 fae3 	bl	3000a4d8 <io_assert_failed>
30005f12:	7f1a      	ldrb	r2, [r3, #28]
30005f14:	3314      	adds	r3, #20
30005f16:	2aff      	cmp	r2, #255	; 0xff
30005f18:	d0ed      	beq.n	30005ef6 <flash_highspeed_setup+0xae>
30005f1a:	e9d3 1200 	ldrd	r1, r2, [r3]
30005f1e:	ea08 0202 	and.w	r2, r8, r2
30005f22:	428a      	cmp	r2, r1
30005f24:	d1f5      	bne.n	30005f12 <flash_highspeed_setup+0xca>
30005f26:	f8df 81d8 	ldr.w	r8, [pc, #472]	; 30006100 <flash_highspeed_setup+0x2b8>
30005f2a:	f8c8 3000 	str.w	r3, [r8]
30005f2e:	2b00      	cmp	r3, #0
30005f30:	d0e4      	beq.n	30005efc <flash_highspeed_setup+0xb4>
30005f32:	7a1a      	ldrb	r2, [r3, #8]
30005f34:	2a05      	cmp	r2, #5
30005f36:	f200 8081 	bhi.w	3000603c <flash_highspeed_setup+0x1f4>
30005f3a:	3a01      	subs	r2, #1
30005f3c:	486a      	ldr	r0, [pc, #424]	; (300060e8 <flash_highspeed_setup+0x2a0>)
30005f3e:	2a04      	cmp	r2, #4
30005f40:	f200 8152 	bhi.w	300061e8 <flash_highspeed_setup+0x3a0>
30005f44:	e8df f012 	tbh	[pc, r2, lsl #1]
30005f48:	01100113 	.word	0x01100113
30005f4c:	0108010b 	.word	0x0108010b
30005f50:	0102      	.short	0x0102
30005f52:	ab05      	add	r3, sp, #20
30005f54:	4602      	mov	r2, r0
30005f56:	4601      	mov	r1, r0
30005f58:	4f6c      	ldr	r7, [pc, #432]	; (3000610c <flash_highspeed_setup+0x2c4>)
30005f5a:	9300      	str	r3, [sp, #0]
30005f5c:	2302      	movs	r3, #2
30005f5e:	f896 0055 	ldrb.w	r0, [r6, #85]	; 0x55
30005f62:	47b8      	blx	r7
30005f64:	f89d 3015 	ldrb.w	r3, [sp, #21]
30005f68:	2249      	movs	r2, #73	; 0x49
30005f6a:	4961      	ldr	r1, [pc, #388]	; (300060f0 <flash_highspeed_setup+0x2a8>)
30005f6c:	9301      	str	r3, [sp, #4]
30005f6e:	2004      	movs	r0, #4
30005f70:	f89d 3014 	ldrb.w	r3, [sp, #20]
30005f74:	9300      	str	r3, [sp, #0]
30005f76:	4b66      	ldr	r3, [pc, #408]	; (30006110 <flash_highspeed_setup+0x2c8>)
30005f78:	f003 fa7a 	bl	30009470 <rtk_log_write>
30005f7c:	f89d 7015 	ldrb.w	r7, [sp, #21]
30005f80:	f89d 3016 	ldrb.w	r3, [sp, #22]
30005f84:	023f      	lsls	r7, r7, #8
30005f86:	ea47 4703 	orr.w	r7, r7, r3, lsl #16
30005f8a:	f89d 3014 	ldrb.w	r3, [sp, #20]
30005f8e:	431f      	orrs	r7, r3
30005f90:	47c8      	blx	r9
30005f92:	4a59      	ldr	r2, [pc, #356]	; (300060f8 <flash_highspeed_setup+0x2b0>)
30005f94:	4b59      	ldr	r3, [pc, #356]	; (300060fc <flash_highspeed_setup+0x2b4>)
30005f96:	2800      	cmp	r0, #0
30005f98:	bf08      	it	eq
30005f9a:	4613      	moveq	r3, r2
30005f9c:	7a1a      	ldrb	r2, [r3, #8]
30005f9e:	2aff      	cmp	r2, #255	; 0xff
30005fa0:	d111      	bne.n	30005fc6 <flash_highspeed_setup+0x17e>
30005fa2:	4b57      	ldr	r3, [pc, #348]	; (30006100 <flash_highspeed_setup+0x2b8>)
30005fa4:	2200      	movs	r2, #0
30005fa6:	601a      	str	r2, [r3, #0]
30005fa8:	4951      	ldr	r1, [pc, #324]	; (300060f0 <flash_highspeed_setup+0x2a8>)
30005faa:	2003      	movs	r0, #3
30005fac:	4b55      	ldr	r3, [pc, #340]	; (30006104 <flash_highspeed_setup+0x2bc>)
30005fae:	2257      	movs	r2, #87	; 0x57
30005fb0:	f003 fa5e 	bl	30009470 <rtk_log_write>
30005fb4:	f240 2165 	movw	r1, #613	; 0x265
30005fb8:	4853      	ldr	r0, [pc, #332]	; (30006108 <flash_highspeed_setup+0x2c0>)
30005fba:	f004 fa8d 	bl	3000a4d8 <io_assert_failed>
30005fbe:	7f1a      	ldrb	r2, [r3, #28]
30005fc0:	3314      	adds	r3, #20
30005fc2:	2aff      	cmp	r2, #255	; 0xff
30005fc4:	d0ed      	beq.n	30005fa2 <flash_highspeed_setup+0x15a>
30005fc6:	e9d3 1200 	ldrd	r1, r2, [r3]
30005fca:	403a      	ands	r2, r7
30005fcc:	428a      	cmp	r2, r1
30005fce:	d1f6      	bne.n	30005fbe <flash_highspeed_setup+0x176>
30005fd0:	4a4b      	ldr	r2, [pc, #300]	; (30006100 <flash_highspeed_setup+0x2b8>)
30005fd2:	6013      	str	r3, [r2, #0]
30005fd4:	2b00      	cmp	r3, #0
30005fd6:	d0e7      	beq.n	30005fa8 <flash_highspeed_setup+0x160>
30005fd8:	7a1a      	ldrb	r2, [r3, #8]
30005fda:	2a04      	cmp	r2, #4
30005fdc:	d826      	bhi.n	3000602c <flash_highspeed_setup+0x1e4>
30005fde:	2a04      	cmp	r2, #4
30005fe0:	d807      	bhi.n	30005ff2 <flash_highspeed_setup+0x1aa>
30005fe2:	e8df f002 	tbb	[pc, r2]
30005fe6:	af03      	.short	0xaf03
30005fe8:	06ab      	.short	0x06ab
30005fea:	78          	.byte	0x78
30005feb:	00          	.byte	0x00
30005fec:	483e      	ldr	r0, [pc, #248]	; (300060e8 <flash_highspeed_setup+0x2a0>)
30005fee:	4b49      	ldr	r3, [pc, #292]	; (30006114 <flash_highspeed_setup+0x2cc>)
30005ff0:	4798      	blx	r3
30005ff2:	68f3      	ldr	r3, [r6, #12]
30005ff4:	2b00      	cmp	r3, #0
30005ff6:	f040 80cd 	bne.w	30006194 <flash_highspeed_setup+0x34c>
30005ffa:	4e47      	ldr	r6, [pc, #284]	; (30006118 <flash_highspeed_setup+0x2d0>)
30005ffc:	20a0      	movs	r0, #160	; 0xa0
30005ffe:	47b0      	blx	r6
30006000:	2800      	cmp	r0, #0
30006002:	f040 80bf 	bne.w	30006184 <flash_highspeed_setup+0x33c>
30006006:	4628      	mov	r0, r5
30006008:	f7ff fe58 	bl	30005cbc <flash_rx_mode_switch>
3000600c:	4b43      	ldr	r3, [pc, #268]	; (3000611c <flash_highspeed_setup+0x2d4>)
3000600e:	4798      	blx	r3
30006010:	2801      	cmp	r0, #1
30006012:	d007      	beq.n	30006024 <flash_highspeed_setup+0x1dc>
30006014:	2c06      	cmp	r4, #6
30006016:	bf28      	it	cs
30006018:	2406      	movcs	r4, #6
3000601a:	f1c4 0009 	rsb	r0, r4, #9
3000601e:	b2c0      	uxtb	r0, r0
30006020:	f7ff fe02 	bl	30005c28 <flash_calibration_highspeed>
30006024:	b662      	cpsie	i
30006026:	b007      	add	sp, #28
30006028:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
3000602c:	2afe      	cmp	r2, #254	; 0xfe
3000602e:	d1e0      	bne.n	30005ff2 <flash_highspeed_setup+0x1aa>
30006030:	691b      	ldr	r3, [r3, #16]
30006032:	2b00      	cmp	r3, #0
30006034:	f000 80ce 	beq.w	300061d4 <flash_highspeed_setup+0x38c>
30006038:	4798      	blx	r3
3000603a:	e7da      	b.n	30005ff2 <flash_highspeed_setup+0x1aa>
3000603c:	2afe      	cmp	r2, #254	; 0xfe
3000603e:	d104      	bne.n	3000604a <flash_highspeed_setup+0x202>
30006040:	691b      	ldr	r3, [r3, #16]
30006042:	2b00      	cmp	r3, #0
30006044:	f000 80cb 	beq.w	300061de <flash_highspeed_setup+0x396>
30006048:	4798      	blx	r3
3000604a:	4b35      	ldr	r3, [pc, #212]	; (30006120 <flash_highspeed_setup+0x2d8>)
3000604c:	4798      	blx	r3
3000604e:	b110      	cbz	r0, 30006056 <flash_highspeed_setup+0x20e>
30006050:	2304      	movs	r3, #4
30006052:	f886 3062 	strb.w	r3, [r6, #98]	; 0x62
30006056:	68f2      	ldr	r2, [r6, #12]
30006058:	2101      	movs	r1, #1
3000605a:	f8d8 3000 	ldr.w	r3, [r8]
3000605e:	9204      	str	r2, [sp, #16]
30006060:	2200      	movs	r2, #0
30006062:	f896 0056 	ldrb.w	r0, [r6, #86]	; 0x56
30006066:	9205      	str	r2, [sp, #20]
30006068:	aa05      	add	r2, sp, #20
3000606a:	f8d3 800c 	ldr.w	r8, [r3, #12]
3000606e:	47b8      	blx	r7
30006070:	69b3      	ldr	r3, [r6, #24]
30006072:	2b00      	cmp	r3, #0
30006074:	f040 809b 	bne.w	300061ae <flash_highspeed_setup+0x366>
30006078:	4b2a      	ldr	r3, [pc, #168]	; (30006124 <flash_highspeed_setup+0x2dc>)
3000607a:	781b      	ldrb	r3, [r3, #0]
3000607c:	2b00      	cmp	r3, #0
3000607e:	f040 809e 	bne.w	300061be <flash_highspeed_setup+0x376>
30006082:	2701      	movs	r7, #1
30006084:	9b05      	ldr	r3, [sp, #20]
30006086:	a805      	add	r0, sp, #20
30006088:	463a      	mov	r2, r7
3000608a:	a904      	add	r1, sp, #16
3000608c:	ea03 0308 	and.w	r3, r3, r8
30006090:	9305      	str	r3, [sp, #20]
30006092:	4b25      	ldr	r3, [pc, #148]	; (30006128 <flash_highspeed_setup+0x2e0>)
30006094:	4798      	blx	r3
30006096:	2800      	cmp	r0, #0
30006098:	d0b5      	beq.n	30006006 <flash_highspeed_setup+0x1be>
3000609a:	f896 3059 	ldrb.w	r3, [r6, #89]	; 0x59
3000609e:	aa04      	add	r2, sp, #16
300060a0:	f896 0058 	ldrb.w	r0, [r6, #88]	; 0x58
300060a4:	b19b      	cbz	r3, 300060ce <flash_highspeed_setup+0x286>
300060a6:	2101      	movs	r1, #1
300060a8:	4f20      	ldr	r7, [pc, #128]	; (3000612c <flash_highspeed_setup+0x2e4>)
300060aa:	47b8      	blx	r7
300060ac:	f10d 0211 	add.w	r2, sp, #17
300060b0:	f896 0059 	ldrb.w	r0, [r6, #89]	; 0x59
300060b4:	2101      	movs	r1, #1
300060b6:	47b8      	blx	r7
300060b8:	4b1d      	ldr	r3, [pc, #116]	; (30006130 <flash_highspeed_setup+0x2e8>)
300060ba:	e9dd 1204 	ldrd	r1, r2, [sp, #16]
300060be:	e9cd 2100 	strd	r2, r1, [sp]
300060c2:	2004      	movs	r0, #4
300060c4:	2249      	movs	r2, #73	; 0x49
300060c6:	490a      	ldr	r1, [pc, #40]	; (300060f0 <flash_highspeed_setup+0x2a8>)
300060c8:	f003 f9d2 	bl	30009470 <rtk_log_write>
300060cc:	e79b      	b.n	30006006 <flash_highspeed_setup+0x1be>
300060ce:	4639      	mov	r1, r7
300060d0:	4b16      	ldr	r3, [pc, #88]	; (3000612c <flash_highspeed_setup+0x2e4>)
300060d2:	4798      	blx	r3
300060d4:	e7f0      	b.n	300060b8 <flash_highspeed_setup+0x270>
300060d6:	4804      	ldr	r0, [pc, #16]	; (300060e8 <flash_highspeed_setup+0x2a0>)
300060d8:	4b16      	ldr	r3, [pc, #88]	; (30006134 <flash_highspeed_setup+0x2ec>)
300060da:	4798      	blx	r3
300060dc:	e789      	b.n	30005ff2 <flash_highspeed_setup+0x1aa>
300060de:	bf00      	nop
300060e0:	3000bed4 	.word	0x3000bed4
300060e4:	3000bed6 	.word	0x3000bed6
300060e8:	2001c01c 	.word	0x2001c01c
300060ec:	00009db5 	.word	0x00009db5
300060f0:	3000c198 	.word	0x3000c198
300060f4:	3000c044 	.word	0x3000c044
300060f8:	3000bed8 	.word	0x3000bed8
300060fc:	3000bdd0 	.word	0x3000bdd0
30006100:	3000e66c 	.word	0x3000e66c
30006104:	3000c06c 	.word	0x3000c06c
30006108:	3000c090 	.word	0x3000c090
3000610c:	0000b8c1 	.word	0x0000b8c1
30006110:	3000c120 	.word	0x3000c120
30006114:	0000bfcd 	.word	0x0000bfcd
30006118:	0000b991 	.word	0x0000b991
3000611c:	0000c0f9 	.word	0x0000c0f9
30006120:	0000c1d9 	.word	0x0000c1d9
30006124:	3000e668 	.word	0x3000e668
30006128:	000129bd 	.word	0x000129bd
3000612c:	0000a149 	.word	0x0000a149
30006130:	3000c0f4 	.word	0x3000c0f4
30006134:	0000be71 	.word	0x0000be71
30006138:	30009ae5 	.word	0x30009ae5
3000613c:	482c      	ldr	r0, [pc, #176]	; (300061f0 <flash_highspeed_setup+0x3a8>)
3000613e:	4b2d      	ldr	r3, [pc, #180]	; (300061f4 <flash_highspeed_setup+0x3ac>)
30006140:	4798      	blx	r3
30006142:	e756      	b.n	30005ff2 <flash_highspeed_setup+0x1aa>
30006144:	482a      	ldr	r0, [pc, #168]	; (300061f0 <flash_highspeed_setup+0x3a8>)
30006146:	4b2c      	ldr	r3, [pc, #176]	; (300061f8 <flash_highspeed_setup+0x3b0>)
30006148:	4798      	blx	r3
3000614a:	e752      	b.n	30005ff2 <flash_highspeed_setup+0x1aa>
3000614c:	4b2b      	ldr	r3, [pc, #172]	; (300061fc <flash_highspeed_setup+0x3b4>)
3000614e:	4798      	blx	r3
30006150:	4b2b      	ldr	r3, [pc, #172]	; (30006200 <flash_highspeed_setup+0x3b8>)
30006152:	2201      	movs	r2, #1
30006154:	701a      	strb	r2, [r3, #0]
30006156:	e778      	b.n	3000604a <flash_highspeed_setup+0x202>
30006158:	4b2a      	ldr	r3, [pc, #168]	; (30006204 <flash_highspeed_setup+0x3bc>)
3000615a:	4798      	blx	r3
3000615c:	e775      	b.n	3000604a <flash_highspeed_setup+0x202>
3000615e:	4b27      	ldr	r3, [pc, #156]	; (300061fc <flash_highspeed_setup+0x3b4>)
30006160:	4798      	blx	r3
30006162:	2300      	movs	r3, #0
30006164:	60f3      	str	r3, [r6, #12]
30006166:	e770      	b.n	3000604a <flash_highspeed_setup+0x202>
30006168:	4b24      	ldr	r3, [pc, #144]	; (300061fc <flash_highspeed_setup+0x3b4>)
3000616a:	4798      	blx	r3
3000616c:	e76d      	b.n	3000604a <flash_highspeed_setup+0x202>
3000616e:	4b26      	ldr	r3, [pc, #152]	; (30006208 <flash_highspeed_setup+0x3c0>)
30006170:	4798      	blx	r3
30006172:	f89d 3016 	ldrb.w	r3, [sp, #22]
30006176:	2b15      	cmp	r3, #21
30006178:	f67f af67 	bls.w	3000604a <flash_highspeed_setup+0x202>
3000617c:	2331      	movs	r3, #49	; 0x31
3000617e:	f886 3059 	strb.w	r3, [r6, #89]	; 0x59
30006182:	e762      	b.n	3000604a <flash_highspeed_setup+0x202>
30006184:	2100      	movs	r1, #0
30006186:	4b21      	ldr	r3, [pc, #132]	; (3000620c <flash_highspeed_setup+0x3c4>)
30006188:	20a0      	movs	r0, #160	; 0xa0
3000618a:	4798      	blx	r3
3000618c:	2100      	movs	r1, #0
3000618e:	22a0      	movs	r2, #160	; 0xa0
30006190:	4b1f      	ldr	r3, [pc, #124]	; (30006210 <flash_highspeed_setup+0x3c8>)
30006192:	e794      	b.n	300060be <flash_highspeed_setup+0x276>
30006194:	20b0      	movs	r0, #176	; 0xb0
30006196:	4e1f      	ldr	r6, [pc, #124]	; (30006214 <flash_highspeed_setup+0x3cc>)
30006198:	47b0      	blx	r6
3000619a:	f040 0101 	orr.w	r1, r0, #1
3000619e:	b2c9      	uxtb	r1, r1
300061a0:	4281      	cmp	r1, r0
300061a2:	f43f af2b 	beq.w	30005ffc <flash_highspeed_setup+0x1b4>
300061a6:	20b0      	movs	r0, #176	; 0xb0
300061a8:	4b18      	ldr	r3, [pc, #96]	; (3000620c <flash_highspeed_setup+0x3c4>)
300061aa:	4798      	blx	r3
300061ac:	e726      	b.n	30005ffc <flash_highspeed_setup+0x1b4>
300061ae:	f10d 0215 	add.w	r2, sp, #21
300061b2:	2101      	movs	r1, #1
300061b4:	f896 0057 	ldrb.w	r0, [r6, #87]	; 0x57
300061b8:	47b8      	blx	r7
300061ba:	2702      	movs	r7, #2
300061bc:	e762      	b.n	30006084 <flash_highspeed_setup+0x23c>
300061be:	f10d 0215 	add.w	r2, sp, #21
300061c2:	2102      	movs	r1, #2
300061c4:	2015      	movs	r0, #21
300061c6:	47b8      	blx	r7
300061c8:	9b04      	ldr	r3, [sp, #16]
300061ca:	2703      	movs	r7, #3
300061cc:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
300061d0:	9304      	str	r3, [sp, #16]
300061d2:	e757      	b.n	30006084 <flash_highspeed_setup+0x23c>
300061d4:	f240 2177 	movw	r1, #631	; 0x277
300061d8:	480f      	ldr	r0, [pc, #60]	; (30006218 <flash_highspeed_setup+0x3d0>)
300061da:	f004 f97d 	bl	3000a4d8 <io_assert_failed>
300061de:	f240 214b 	movw	r1, #587	; 0x24b
300061e2:	480d      	ldr	r0, [pc, #52]	; (30006218 <flash_highspeed_setup+0x3d0>)
300061e4:	f004 f978 	bl	3000a4d8 <io_assert_failed>
300061e8:	4b0c      	ldr	r3, [pc, #48]	; (3000621c <flash_highspeed_setup+0x3d4>)
300061ea:	4798      	blx	r3
300061ec:	e72d      	b.n	3000604a <flash_highspeed_setup+0x202>
300061ee:	bf00      	nop
300061f0:	2001c01c 	.word	0x2001c01c
300061f4:	0000bee9 	.word	0x0000bee9
300061f8:	0000bf59 	.word	0x0000bf59
300061fc:	0000a3c5 	.word	0x0000a3c5
30006200:	3000e668 	.word	0x3000e668
30006204:	0000a345 	.word	0x0000a345
30006208:	0000a441 	.word	0x0000a441
3000620c:	0000bd0d 	.word	0x0000bd0d
30006210:	3000c130 	.word	0x3000c130
30006214:	0000b991 	.word	0x0000b991
30006218:	3000c090 	.word	0x3000c090
3000621c:	0000a4c1 	.word	0x0000a4c1

30006220 <flash_init_userdef>:
30006220:	4b14      	ldr	r3, [pc, #80]	; (30006274 <flash_init_userdef+0x54>)
30006222:	2201      	movs	r2, #1
30006224:	2140      	movs	r1, #64	; 0x40
30006226:	f44f 6000 	mov.w	r0, #2048	; 0x800
3000622a:	b430      	push	{r4, r5}
3000622c:	e9c3 1203 	strd	r1, r2, [r3, #12]
30006230:	2502      	movs	r5, #2
30006232:	2400      	movs	r4, #0
30006234:	f640 0104 	movw	r1, #2052	; 0x804
30006238:	601a      	str	r2, [r3, #0]
3000623a:	22bb      	movs	r2, #187	; 0xbb
3000623c:	83d8      	strh	r0, [r3, #30]
3000623e:	8419      	strh	r1, [r3, #32]
30006240:	203b      	movs	r0, #59	; 0x3b
30006242:	21eb      	movs	r1, #235	; 0xeb
30006244:	629a      	str	r2, [r3, #40]	; 0x28
30006246:	4a0c      	ldr	r2, [pc, #48]	; (30006278 <flash_init_userdef+0x58>)
30006248:	6258      	str	r0, [r3, #36]	; 0x24
3000624a:	6319      	str	r1, [r3, #48]	; 0x30
3000624c:	f64a 3120 	movw	r1, #43808	; 0xab20
30006250:	655a      	str	r2, [r3, #84]	; 0x54
30006252:	22b9      	movs	r2, #185	; 0xb9
30006254:	4809      	ldr	r0, [pc, #36]	; (3000627c <flash_init_userdef+0x5c>)
30006256:	f8a3 105c 	strh.w	r1, [r3, #92]	; 0x5c
3000625a:	6598      	str	r0, [r3, #88]	; 0x58
3000625c:	f883 205e 	strb.w	r2, [r3, #94]	; 0x5e
30006260:	e9c3 5405 	strd	r5, r4, [r3, #20]
30006264:	2406      	movs	r4, #6
30006266:	f883 4022 	strb.w	r4, [r3, #34]	; 0x22
3000626a:	246b      	movs	r4, #107	; 0x6b
3000626c:	62dc      	str	r4, [r3, #44]	; 0x2c
3000626e:	bc30      	pop	{r4, r5}
30006270:	4770      	bx	lr
30006272:	bf00      	nop
30006274:	2001c01c 	.word	0x2001c01c
30006278:	00059f06 	.word	0x00059f06
3000627c:	d8600001 	.word	0xd8600001

30006280 <nand_init_userdef>:
30006280:	4b18      	ldr	r3, [pc, #96]	; (300062e4 <nand_init_userdef+0x64>)
30006282:	2001      	movs	r0, #1
30006284:	2200      	movs	r2, #0
30006286:	2102      	movs	r1, #2
30006288:	b410      	push	{r4}
3000628a:	6018      	str	r0, [r3, #0]
3000628c:	f640 0408 	movw	r4, #2056	; 0x808
30006290:	6159      	str	r1, [r3, #20]
30006292:	83dc      	strh	r4, [r3, #30]
30006294:	f44f 6400 	mov.w	r4, #2048	; 0x800
30006298:	f8a3 1062 	strh.w	r1, [r3, #98]	; 0x62
3000629c:	841c      	strh	r4, [r3, #32]
3000629e:	246b      	movs	r4, #107	; 0x6b
300062a0:	619a      	str	r2, [r3, #24]
300062a2:	62dc      	str	r4, [r3, #44]	; 0x2c
300062a4:	4c10      	ldr	r4, [pc, #64]	; (300062e8 <nand_init_userdef+0x68>)
300062a6:	775a      	strb	r2, [r3, #29]
300062a8:	f883 2022 	strb.w	r2, [r3, #34]	; 0x22
300062ac:	629a      	str	r2, [r3, #40]	; 0x28
300062ae:	631a      	str	r2, [r3, #48]	; 0x30
300062b0:	f883 2061 	strb.w	r2, [r3, #97]	; 0x61
300062b4:	65da      	str	r2, [r3, #92]	; 0x5c
300062b6:	e9c3 0003 	strd	r0, r0, [r3, #12]
300062ba:	203b      	movs	r0, #59	; 0x3b
300062bc:	6258      	str	r0, [r3, #36]	; 0x24
300062be:	200b      	movs	r0, #11
300062c0:	e9c3 1211 	strd	r1, r2, [r3, #68]	; 0x44
300062c4:	6698      	str	r0, [r3, #104]	; 0x68
300062c6:	2008      	movs	r0, #8
300062c8:	4908      	ldr	r1, [pc, #32]	; (300062ec <nand_init_userdef+0x6c>)
300062ca:	64d8      	str	r0, [r3, #76]	; 0x4c
300062cc:	f241 0013 	movw	r0, #4115	; 0x1013
300062d0:	6599      	str	r1, [r3, #88]	; 0x58
300062d2:	4907      	ldr	r1, [pc, #28]	; (300062f0 <nand_init_userdef+0x70>)
300062d4:	f8a3 006e 	strh.w	r0, [r3, #110]	; 0x6e
300062d8:	6719      	str	r1, [r3, #112]	; 0x70
300062da:	e9c3 2414 	strd	r2, r4, [r3, #80]	; 0x50
300062de:	f85d 4b04 	ldr.w	r4, [sp], #4
300062e2:	4770      	bx	lr
300062e4:	2001c01c 	.word	0x2001c01c
300062e8:	000f9f06 	.word	0x000f9f06
300062ec:	d800001f 	.word	0xd800001f
300062f0:	10300804 	.word	0x10300804

300062f4 <flash_get_layout_info>:
300062f4:	b570      	push	{r4, r5, r6, lr}
300062f6:	4b15      	ldr	r3, [pc, #84]	; (3000634c <flash_get_layout_info+0x58>)
300062f8:	b082      	sub	sp, #8
300062fa:	4615      	mov	r5, r2
300062fc:	4604      	mov	r4, r0
300062fe:	460e      	mov	r6, r1
30006300:	4798      	blx	r3
30006302:	4b13      	ldr	r3, [pc, #76]	; (30006350 <flash_get_layout_info+0x5c>)
30006304:	4a13      	ldr	r2, [pc, #76]	; (30006354 <flash_get_layout_info+0x60>)
30006306:	2800      	cmp	r0, #0
30006308:	bf14      	ite	ne
3000630a:	469c      	movne	ip, r3
3000630c:	4694      	moveq	ip, r2
3000630e:	f8dc 3000 	ldr.w	r3, [ip]
30006312:	2bff      	cmp	r3, #255	; 0xff
30006314:	d104      	bne.n	30006320 <flash_get_layout_info+0x2c>
30006316:	e00f      	b.n	30006338 <flash_get_layout_info+0x44>
30006318:	f85c 3f0c 	ldr.w	r3, [ip, #12]!
3000631c:	2bff      	cmp	r3, #255	; 0xff
3000631e:	d00b      	beq.n	30006338 <flash_get_layout_info+0x44>
30006320:	429c      	cmp	r4, r3
30006322:	d1f9      	bne.n	30006318 <flash_get_layout_info+0x24>
30006324:	b116      	cbz	r6, 3000632c <flash_get_layout_info+0x38>
30006326:	f8dc 3004 	ldr.w	r3, [ip, #4]
3000632a:	6033      	str	r3, [r6, #0]
3000632c:	b15d      	cbz	r5, 30006346 <flash_get_layout_info+0x52>
3000632e:	f8dc 3008 	ldr.w	r3, [ip, #8]
30006332:	602b      	str	r3, [r5, #0]
30006334:	b002      	add	sp, #8
30006336:	bd70      	pop	{r4, r5, r6, pc}
30006338:	4b07      	ldr	r3, [pc, #28]	; (30006358 <flash_get_layout_info+0x64>)
3000633a:	2245      	movs	r2, #69	; 0x45
3000633c:	4907      	ldr	r1, [pc, #28]	; (3000635c <flash_get_layout_info+0x68>)
3000633e:	2002      	movs	r0, #2
30006340:	9400      	str	r4, [sp, #0]
30006342:	f003 f895 	bl	30009470 <rtk_log_write>
30006346:	b002      	add	sp, #8
30006348:	bd70      	pop	{r4, r5, r6, pc}
3000634a:	bf00      	nop
3000634c:	30009ae5 	.word	0x30009ae5
30006350:	3000d97c 	.word	0x3000d97c
30006354:	3000d910 	.word	0x3000d910
30006358:	3000bd7c 	.word	0x3000bd7c
3000635c:	3000c198 	.word	0x3000c198

30006360 <flash_get_layout_info_by_addr>:
30006360:	b5f0      	push	{r4, r5, r6, r7, lr}
30006362:	4b13      	ldr	r3, [pc, #76]	; (300063b0 <flash_get_layout_info_by_addr+0x50>)
30006364:	b083      	sub	sp, #12
30006366:	4616      	mov	r6, r2
30006368:	4605      	mov	r5, r0
3000636a:	460f      	mov	r7, r1
3000636c:	4798      	blx	r3
3000636e:	4a11      	ldr	r2, [pc, #68]	; (300063b4 <flash_get_layout_info_by_addr+0x54>)
30006370:	4b11      	ldr	r3, [pc, #68]	; (300063b8 <flash_get_layout_info_by_addr+0x58>)
30006372:	2800      	cmp	r0, #0
30006374:	bf08      	it	eq
30006376:	4613      	moveq	r3, r2
30006378:	681a      	ldr	r2, [r3, #0]
3000637a:	2aff      	cmp	r2, #255	; 0xff
3000637c:	d009      	beq.n	30006392 <flash_get_layout_info_by_addr+0x32>
3000637e:	685c      	ldr	r4, [r3, #4]
30006380:	42ac      	cmp	r4, r5
30006382:	d802      	bhi.n	3000638a <flash_get_layout_info_by_addr+0x2a>
30006384:	689a      	ldr	r2, [r3, #8]
30006386:	42aa      	cmp	r2, r5
30006388:	d20c      	bcs.n	300063a4 <flash_get_layout_info_by_addr+0x44>
3000638a:	f853 4f0c 	ldr.w	r4, [r3, #12]!
3000638e:	2cff      	cmp	r4, #255	; 0xff
30006390:	d1f5      	bne.n	3000637e <flash_get_layout_info_by_addr+0x1e>
30006392:	4b0a      	ldr	r3, [pc, #40]	; (300063bc <flash_get_layout_info_by_addr+0x5c>)
30006394:	2245      	movs	r2, #69	; 0x45
30006396:	490a      	ldr	r1, [pc, #40]	; (300063c0 <flash_get_layout_info_by_addr+0x60>)
30006398:	2002      	movs	r0, #2
3000639a:	9500      	str	r5, [sp, #0]
3000639c:	f003 f868 	bl	30009470 <rtk_log_write>
300063a0:	b003      	add	sp, #12
300063a2:	bdf0      	pop	{r4, r5, r6, r7, pc}
300063a4:	603c      	str	r4, [r7, #0]
300063a6:	689b      	ldr	r3, [r3, #8]
300063a8:	6033      	str	r3, [r6, #0]
300063aa:	b003      	add	sp, #12
300063ac:	bdf0      	pop	{r4, r5, r6, r7, pc}
300063ae:	bf00      	nop
300063b0:	30009ae5 	.word	0x30009ae5
300063b4:	3000d910 	.word	0x3000d910
300063b8:	3000d97c 	.word	0x3000d97c
300063bc:	3000bda4 	.word	0x3000bda4
300063c0:	3000c198 	.word	0x3000c198

300063c4 <NAND_CHECK_IS_BAD_BLOCK>:
300063c4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
300063c8:	4e24      	ldr	r6, [pc, #144]	; (3000645c <NAND_CHECK_IS_BAD_BLOCK+0x98>)
300063ca:	0907      	lsrs	r7, r0, #4
300063cc:	0045      	lsls	r5, r0, #1
300063ce:	b085      	sub	sp, #20
300063d0:	f856 3027 	ldr.w	r3, [r6, r7, lsl #2]
300063d4:	f005 051e 	and.w	r5, r5, #30
300063d8:	40eb      	lsrs	r3, r5
300063da:	f003 0303 	and.w	r3, r3, #3
300063de:	2b02      	cmp	r3, #2
300063e0:	d02c      	beq.n	3000643c <NAND_CHECK_IS_BAD_BLOCK+0x78>
300063e2:	2b01      	cmp	r3, #1
300063e4:	d026      	beq.n	30006434 <NAND_CHECK_IS_BAD_BLOCK+0x70>
300063e6:	4b1e      	ldr	r3, [pc, #120]	; (30006460 <NAND_CHECK_IS_BAD_BLOCK+0x9c>)
300063e8:	f04f 0801 	mov.w	r8, #1
300063ec:	2204      	movs	r2, #4
300063ee:	4604      	mov	r4, r0
300063f0:	f893 106c 	ldrb.w	r1, [r3, #108]	; 0x6c
300063f4:	0180      	lsls	r0, r0, #6
300063f6:	ab03      	add	r3, sp, #12
300063f8:	f8df 9070 	ldr.w	r9, [pc, #112]	; 3000646c <NAND_CHECK_IS_BAD_BLOCK+0xa8>
300063fc:	fa08 f101 	lsl.w	r1, r8, r1
30006400:	47c8      	blx	r9
30006402:	f89d 300c 	ldrb.w	r3, [sp, #12]
30006406:	f89d 200d 	ldrb.w	r2, [sp, #13]
3000640a:	4013      	ands	r3, r2
3000640c:	2bff      	cmp	r3, #255	; 0xff
3000640e:	d019      	beq.n	30006444 <NAND_CHECK_IS_BAD_BLOCK+0x80>
30006410:	2002      	movs	r0, #2
30006412:	f856 2027 	ldr.w	r2, [r6, r7, lsl #2]
30006416:	4b13      	ldr	r3, [pc, #76]	; (30006464 <NAND_CHECK_IS_BAD_BLOCK+0xa0>)
30006418:	fa00 f505 	lsl.w	r5, r0, r5
3000641c:	4912      	ldr	r1, [pc, #72]	; (30006468 <NAND_CHECK_IS_BAD_BLOCK+0xa4>)
3000641e:	9400      	str	r4, [sp, #0]
30006420:	432a      	orrs	r2, r5
30006422:	f846 2027 	str.w	r2, [r6, r7, lsl #2]
30006426:	2245      	movs	r2, #69	; 0x45
30006428:	f003 f822 	bl	30009470 <rtk_log_write>
3000642c:	4640      	mov	r0, r8
3000642e:	b005      	add	sp, #20
30006430:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
30006434:	2000      	movs	r0, #0
30006436:	b005      	add	sp, #20
30006438:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
3000643c:	2001      	movs	r0, #1
3000643e:	b005      	add	sp, #20
30006440:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
30006444:	f856 3027 	ldr.w	r3, [r6, r7, lsl #2]
30006448:	fa08 f005 	lsl.w	r0, r8, r5
3000644c:	4303      	orrs	r3, r0
3000644e:	2000      	movs	r0, #0
30006450:	f846 3027 	str.w	r3, [r6, r7, lsl #2]
30006454:	b005      	add	sp, #20
30006456:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
3000645a:	bf00      	nop
3000645c:	3000e670 	.word	0x3000e670
30006460:	2001c01c 	.word	0x2001c01c
30006464:	3000c180 	.word	0x3000c180
30006468:	3000c194 	.word	0x3000c194
3000646c:	30009ab5 	.word	0x30009ab5

30006470 <Nand_Get_NandAddr>:
30006470:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
30006474:	4f10      	ldr	r7, [pc, #64]	; (300064b8 <Nand_Get_NandAddr+0x48>)
30006476:	f101 4678 	add.w	r6, r1, #4160749568	; 0xf8000000
3000647a:	f100 4078 	add.w	r0, r0, #4160749568	; 0xf8000000
3000647e:	f897 506c 	ldrb.w	r5, [r7, #108]	; 0x6c
30006482:	40e8      	lsrs	r0, r5
30006484:	fa26 f505 	lsr.w	r5, r6, r5
30006488:	09ad      	lsrs	r5, r5, #6
3000648a:	ebb5 1f90 	cmp.w	r5, r0, lsr #6
3000648e:	d90f      	bls.n	300064b0 <Nand_Get_NandAddr+0x40>
30006490:	0984      	lsrs	r4, r0, #6
30006492:	f04f 0840 	mov.w	r8, #64	; 0x40
30006496:	4620      	mov	r0, r4
30006498:	3401      	adds	r4, #1
3000649a:	f7ff ff93 	bl	300063c4 <NAND_CHECK_IS_BAD_BLOCK>
3000649e:	b128      	cbz	r0, 300064ac <Nand_Get_NandAddr+0x3c>
300064a0:	f897 306c 	ldrb.w	r3, [r7, #108]	; 0x6c
300064a4:	3501      	adds	r5, #1
300064a6:	fa08 f303 	lsl.w	r3, r8, r3
300064aa:	441e      	add	r6, r3
300064ac:	42a5      	cmp	r5, r4
300064ae:	d8f2      	bhi.n	30006496 <Nand_Get_NandAddr+0x26>
300064b0:	4630      	mov	r0, r6
300064b2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
300064b6:	bf00      	nop
300064b8:	2001c01c 	.word	0x2001c01c

300064bc <Nand_L2P_Table>:
300064bc:	b530      	push	{r4, r5, lr}
300064be:	b085      	sub	sp, #20
300064c0:	f04f 6300 	mov.w	r3, #134217728	; 0x8000000
300064c4:	4605      	mov	r5, r0
300064c6:	aa03      	add	r2, sp, #12
300064c8:	a902      	add	r1, sp, #8
300064ca:	e9cd 3302 	strd	r3, r3, [sp, #8]
300064ce:	f7ff ff47 	bl	30006360 <flash_get_layout_info_by_addr>
300064d2:	4629      	mov	r1, r5
300064d4:	9802      	ldr	r0, [sp, #8]
300064d6:	f7ff ffcb 	bl	30006470 <Nand_Get_NandAddr>
300064da:	9b03      	ldr	r3, [sp, #12]
300064dc:	4604      	mov	r4, r0
300064de:	f103 4378 	add.w	r3, r3, #4160749568	; 0xf8000000
300064e2:	4283      	cmp	r3, r0
300064e4:	d302      	bcc.n	300064ec <Nand_L2P_Table+0x30>
300064e6:	4620      	mov	r0, r4
300064e8:	b005      	add	sp, #20
300064ea:	bd30      	pop	{r4, r5, pc}
300064ec:	4b04      	ldr	r3, [pc, #16]	; (30006500 <Nand_L2P_Table+0x44>)
300064ee:	2245      	movs	r2, #69	; 0x45
300064f0:	4904      	ldr	r1, [pc, #16]	; (30006504 <Nand_L2P_Table+0x48>)
300064f2:	2002      	movs	r0, #2
300064f4:	9500      	str	r5, [sp, #0]
300064f6:	f002 ffbb 	bl	30009470 <rtk_log_write>
300064fa:	4620      	mov	r0, r4
300064fc:	b005      	add	sp, #20
300064fe:	bd30      	pop	{r4, r5, pc}
30006500:	3000c1a0 	.word	0x3000c1a0
30006504:	3000c194 	.word	0x3000c194

30006508 <NandImgCopy>:
30006508:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
3000650c:	4617      	mov	r7, r2
3000650e:	4603      	mov	r3, r0
30006510:	b08b      	sub	sp, #44	; 0x2c
30006512:	f8df 910c 	ldr.w	r9, [pc, #268]	; 30006620 <NandImgCopy+0x118>
30006516:	f107 38ff 	add.w	r8, r7, #4294967295	; 0xffffffff
3000651a:	4608      	mov	r0, r1
3000651c:	9309      	str	r3, [sp, #36]	; 0x24
3000651e:	f7ff ffcd 	bl	300064bc <Nand_L2P_Table>
30006522:	f899 606c 	ldrb.w	r6, [r9, #108]	; 0x6c
30006526:	4480      	add	r8, r0
30006528:	fa20 f406 	lsr.w	r4, r0, r6
3000652c:	fa28 f806 	lsr.w	r8, r8, r6
30006530:	eba8 0804 	sub.w	r8, r8, r4
30006534:	f1b8 3fff 	cmp.w	r8, #4294967295	; 0xffffffff
30006538:	d057      	beq.n	300065ea <NandImgCopy+0xe2>
3000653a:	463b      	mov	r3, r7
3000653c:	f04f 0a00 	mov.w	sl, #0
30006540:	4647      	mov	r7, r8
30006542:	4605      	mov	r5, r0
30006544:	f04f 0b40 	mov.w	fp, #64	; 0x40
30006548:	4698      	mov	r8, r3
3000654a:	f8cd a020 	str.w	sl, [sp, #32]
3000654e:	e022      	b.n	30006596 <NandImgCopy+0x8e>
30006550:	f1c2 0320 	rsb	r3, r2, #32
30006554:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
30006558:	40d9      	lsrs	r1, r3
3000655a:	9b09      	ldr	r3, [sp, #36]	; 0x24
3000655c:	4029      	ands	r1, r5
3000655e:	4453      	add	r3, sl
30006560:	b387      	cbz	r7, 300065c4 <NandImgCopy+0xbc>
30006562:	2601      	movs	r6, #1
30006564:	4620      	mov	r0, r4
30006566:	fa06 f202 	lsl.w	r2, r6, r2
3000656a:	4e2a      	ldr	r6, [pc, #168]	; (30006614 <NandImgCopy+0x10c>)
3000656c:	9205      	str	r2, [sp, #20]
3000656e:	1a52      	subs	r2, r2, r1
30006570:	e9cd 2106 	strd	r2, r1, [sp, #24]
30006574:	47b0      	blx	r6
30006576:	f010 0f70 	tst.w	r0, #112	; 0x70
3000657a:	9b05      	ldr	r3, [sp, #20]
3000657c:	e9dd 2106 	ldrd	r2, r1, [sp, #24]
30006580:	d136      	bne.n	300065f0 <NandImgCopy+0xe8>
30006582:	eba8 0803 	sub.w	r8, r8, r3
30006586:	4415      	add	r5, r2
30006588:	4492      	add	sl, r2
3000658a:	4488      	add	r8, r1
3000658c:	f899 606c 	ldrb.w	r6, [r9, #108]	; 0x6c
30006590:	3f01      	subs	r7, #1
30006592:	fa25 f406 	lsr.w	r4, r5, r6
30006596:	9b08      	ldr	r3, [sp, #32]
30006598:	4632      	mov	r2, r6
3000659a:	09a6      	lsrs	r6, r4, #6
3000659c:	ebb3 1f94 	cmp.w	r3, r4, lsr #6
300065a0:	d8d6      	bhi.n	30006550 <NandImgCopy+0x48>
300065a2:	e005      	b.n	300065b0 <NandImgCopy+0xa8>
300065a4:	f899 306c 	ldrb.w	r3, [r9, #108]	; 0x6c
300065a8:	3440      	adds	r4, #64	; 0x40
300065aa:	fa0b f303 	lsl.w	r3, fp, r3
300065ae:	441d      	add	r5, r3
300065b0:	4630      	mov	r0, r6
300065b2:	3601      	adds	r6, #1
300065b4:	f7ff ff06 	bl	300063c4 <NAND_CHECK_IS_BAD_BLOCK>
300065b8:	2800      	cmp	r0, #0
300065ba:	d1f3      	bne.n	300065a4 <NandImgCopy+0x9c>
300065bc:	f899 206c 	ldrb.w	r2, [r9, #108]	; 0x6c
300065c0:	9608      	str	r6, [sp, #32]
300065c2:	e7c5      	b.n	30006550 <NandImgCopy+0x48>
300065c4:	4642      	mov	r2, r8
300065c6:	4620      	mov	r0, r4
300065c8:	4d12      	ldr	r5, [pc, #72]	; (30006614 <NandImgCopy+0x10c>)
300065ca:	47a8      	blx	r5
300065cc:	f010 0f70 	tst.w	r0, #112	; 0x70
300065d0:	d00b      	beq.n	300065ea <NandImgCopy+0xe2>
300065d2:	09a1      	lsrs	r1, r4, #6
300065d4:	f004 043f 	and.w	r4, r4, #63	; 0x3f
300065d8:	4b0f      	ldr	r3, [pc, #60]	; (30006618 <NandImgCopy+0x110>)
300065da:	2249      	movs	r2, #73	; 0x49
300065dc:	9400      	str	r4, [sp, #0]
300065de:	e9cd 1001 	strd	r1, r0, [sp, #4]
300065e2:	490e      	ldr	r1, [pc, #56]	; (3000661c <NandImgCopy+0x114>)
300065e4:	2004      	movs	r0, #4
300065e6:	f002 ff43 	bl	30009470 <rtk_log_write>
300065ea:	b00b      	add	sp, #44	; 0x2c
300065ec:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
300065f0:	1ac9      	subs	r1, r1, r3
300065f2:	09a3      	lsrs	r3, r4, #6
300065f4:	f004 043f 	and.w	r4, r4, #63	; 0x3f
300065f8:	4492      	add	sl, r2
300065fa:	4488      	add	r8, r1
300065fc:	4415      	add	r5, r2
300065fe:	9002      	str	r0, [sp, #8]
30006600:	2249      	movs	r2, #73	; 0x49
30006602:	9301      	str	r3, [sp, #4]
30006604:	2004      	movs	r0, #4
30006606:	4b04      	ldr	r3, [pc, #16]	; (30006618 <NandImgCopy+0x110>)
30006608:	4904      	ldr	r1, [pc, #16]	; (3000661c <NandImgCopy+0x114>)
3000660a:	9400      	str	r4, [sp, #0]
3000660c:	f002 ff30 	bl	30009470 <rtk_log_write>
30006610:	e7bc      	b.n	3000658c <NandImgCopy+0x84>
30006612:	bf00      	nop
30006614:	30009ab5 	.word	0x30009ab5
30006618:	3000c1cc 	.word	0x3000c1cc
3000661c:	3000c194 	.word	0x3000c194
30006620:	2001c01c 	.word	0x2001c01c

30006624 <DDR_PHY_ChipInfo.part.0>:
30006624:	4b1a      	ldr	r3, [pc, #104]	; (30006690 <DDR_PHY_ChipInfo.part.0+0x6c>)
30006626:	b570      	push	{r4, r5, r6, lr}
30006628:	4798      	blx	r3
3000662a:	3807      	subs	r0, #7
3000662c:	280a      	cmp	r0, #10
3000662e:	d816      	bhi.n	3000665e <DDR_PHY_ChipInfo.part.0+0x3a>
30006630:	e8df f000 	tbb	[pc, r0]
30006634:	2924150b 	.word	0x2924150b
30006638:	06101515 	.word	0x06101515
3000663c:	0610      	.short	0x0610
3000663e:	0b          	.byte	0x0b
3000663f:	00          	.byte	0x00
30006640:	2305      	movs	r3, #5
30006642:	4a14      	ldr	r2, [pc, #80]	; (30006694 <DDR_PHY_ChipInfo.part.0+0x70>)
30006644:	4618      	mov	r0, r3
30006646:	7013      	strb	r3, [r2, #0]
30006648:	bd70      	pop	{r4, r5, r6, pc}
3000664a:	2303      	movs	r3, #3
3000664c:	4a11      	ldr	r2, [pc, #68]	; (30006694 <DDR_PHY_ChipInfo.part.0+0x70>)
3000664e:	4618      	mov	r0, r3
30006650:	7013      	strb	r3, [r2, #0]
30006652:	bd70      	pop	{r4, r5, r6, pc}
30006654:	2304      	movs	r3, #4
30006656:	4a0f      	ldr	r2, [pc, #60]	; (30006694 <DDR_PHY_ChipInfo.part.0+0x70>)
30006658:	4618      	mov	r0, r3
3000665a:	7013      	strb	r3, [r2, #0]
3000665c:	bd70      	pop	{r4, r5, r6, pc}
3000665e:	2414      	movs	r4, #20
30006660:	4e0d      	ldr	r6, [pc, #52]	; (30006698 <DDR_PHY_ChipInfo.part.0+0x74>)
30006662:	4d0e      	ldr	r5, [pc, #56]	; (3000669c <DDR_PHY_ChipInfo.part.0+0x78>)
30006664:	4633      	mov	r3, r6
30006666:	2245      	movs	r2, #69	; 0x45
30006668:	4629      	mov	r1, r5
3000666a:	2002      	movs	r0, #2
3000666c:	f002 ff00 	bl	30009470 <rtk_log_write>
30006670:	3c01      	subs	r4, #1
30006672:	d1f7      	bne.n	30006664 <DDR_PHY_ChipInfo.part.0+0x40>
30006674:	4b07      	ldr	r3, [pc, #28]	; (30006694 <DDR_PHY_ChipInfo.part.0+0x70>)
30006676:	4620      	mov	r0, r4
30006678:	701c      	strb	r4, [r3, #0]
3000667a:	bd70      	pop	{r4, r5, r6, pc}
3000667c:	2301      	movs	r3, #1
3000667e:	4a05      	ldr	r2, [pc, #20]	; (30006694 <DDR_PHY_ChipInfo.part.0+0x70>)
30006680:	4618      	mov	r0, r3
30006682:	7013      	strb	r3, [r2, #0]
30006684:	bd70      	pop	{r4, r5, r6, pc}
30006686:	2302      	movs	r3, #2
30006688:	4a02      	ldr	r2, [pc, #8]	; (30006694 <DDR_PHY_ChipInfo.part.0+0x70>)
3000668a:	4618      	mov	r0, r3
3000668c:	7013      	strb	r3, [r2, #0]
3000668e:	bd70      	pop	{r4, r5, r6, pc}
30006690:	30009539 	.word	0x30009539
30006694:	3000d9e8 	.word	0x3000d9e8
30006698:	3000c204 	.word	0x3000c204
3000669c:	3000c220 	.word	0x3000c220

300066a0 <DDR_PHY_ChipInfo_ddrtype>:
300066a0:	b510      	push	{r4, lr}
300066a2:	4c04      	ldr	r4, [pc, #16]	; (300066b4 <DDR_PHY_ChipInfo_ddrtype+0x14>)
300066a4:	7820      	ldrb	r0, [r4, #0]
300066a6:	b100      	cbz	r0, 300066aa <DDR_PHY_ChipInfo_ddrtype+0xa>
300066a8:	bd10      	pop	{r4, pc}
300066aa:	4b03      	ldr	r3, [pc, #12]	; (300066b8 <DDR_PHY_ChipInfo_ddrtype+0x18>)
300066ac:	4798      	blx	r3
300066ae:	7020      	strb	r0, [r4, #0]
300066b0:	bd10      	pop	{r4, pc}
300066b2:	bf00      	nop
300066b4:	3000e678 	.word	0x3000e678
300066b8:	300095ed 	.word	0x300095ed

300066bc <DDR_PHY_StructInit>:
300066bc:	f240 2315 	movw	r3, #533	; 0x215
300066c0:	6583      	str	r3, [r0, #88]	; 0x58
300066c2:	4770      	bx	lr

300066c4 <DDR_PHY_DLL_CLK_DIV>:
300066c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
300066c6:	4d70      	ldr	r5, [pc, #448]	; (30006888 <DDR_PHY_DLL_CLK_DIV+0x1c4>)
300066c8:	4c70      	ldr	r4, [pc, #448]	; (3000688c <DDR_PHY_DLL_CLK_DIV+0x1c8>)
300066ca:	fba5 3200 	umull	r3, r2, r5, r0
300066ce:	2365      	movs	r3, #101	; 0x65
300066d0:	eb00 0e04 	add.w	lr, r0, r4
300066d4:	0952      	lsrs	r2, r2, #5
300066d6:	fb00 f303 	mul.w	r3, r0, r3
300066da:	486d      	ldr	r0, [pc, #436]	; (30006890 <DDR_PHY_DLL_CLK_DIV+0x1cc>)
300066dc:	f1a2 0c03 	sub.w	ip, r2, #3
300066e0:	6a47      	ldr	r7, [r0, #36]	; 0x24
300066e2:	eb0c 018c 	add.w	r1, ip, ip, lsl #2
300066e6:	ea4f 2c0c 	mov.w	ip, ip, lsl #8
300066ea:	ebae 0ec1 	sub.w	lr, lr, r1, lsl #3
300066ee:	fa1f fc8c 	uxth.w	ip, ip
300066f2:	ea4f 2ece 	mov.w	lr, lr, lsl #11
300066f6:	fba5 1e0e 	umull	r1, lr, r5, lr
300066fa:	4966      	ldr	r1, [pc, #408]	; (30006894 <DDR_PHY_DLL_CLK_DIV+0x1d0>)
300066fc:	fba1 6103 	umull	r6, r1, r1, r3
30006700:	4e65      	ldr	r6, [pc, #404]	; (30006898 <DDR_PHY_DLL_CLK_DIV+0x1d4>)
30006702:	0a09      	lsrs	r1, r1, #8
30006704:	1a52      	subs	r2, r2, r1
30006706:	3903      	subs	r1, #3
30006708:	02d2      	lsls	r2, r2, #11
3000670a:	eb02 125e 	add.w	r2, r2, lr, lsr #5
3000670e:	ea06 2ece 	and.w	lr, r6, lr, lsl #11
30006712:	4e62      	ldr	r6, [pc, #392]	; (3000689c <DDR_PHY_DLL_CLK_DIV+0x1d8>)
30006714:	403e      	ands	r6, r7
30006716:	ea4e 0606 	orr.w	r6, lr, r6
3000671a:	6246      	str	r6, [r0, #36]	; 0x24
3000671c:	4e60      	ldr	r6, [pc, #384]	; (300068a0 <DDR_PHY_DLL_CLK_DIV+0x1dc>)
3000671e:	fba6 6303 	umull	r6, r3, r6, r3
30006722:	eb04 1353 	add.w	r3, r4, r3, lsr #5
30006726:	6a84      	ldr	r4, [r0, #40]	; 0x28
30006728:	f424 447f 	bic.w	r4, r4, #65280	; 0xff00
3000672c:	ea4c 0404 	orr.w	r4, ip, r4
30006730:	6284      	str	r4, [r0, #40]	; 0x28
30006732:	eb01 0481 	add.w	r4, r1, r1, lsl #2
30006736:	b2c9      	uxtb	r1, r1
30006738:	eba3 03c4 	sub.w	r3, r3, r4, lsl #3
3000673c:	02db      	lsls	r3, r3, #11
3000673e:	fba5 4303 	umull	r4, r3, r5, r3
30006742:	6a45      	ldr	r5, [r0, #36]	; 0x24
30006744:	4c57      	ldr	r4, [pc, #348]	; (300068a4 <DDR_PHY_DLL_CLK_DIV+0x1e0>)
30006746:	eba2 1253 	sub.w	r2, r2, r3, lsr #5
3000674a:	f3c3 134a 	ubfx	r3, r3, #5, #11
3000674e:	402c      	ands	r4, r5
30006750:	4d55      	ldr	r5, [pc, #340]	; (300068a8 <DDR_PHY_DLL_CLK_DIV+0x1e4>)
30006752:	eb02 1242 	add.w	r2, r2, r2, lsl #5
30006756:	4323      	orrs	r3, r4
30006758:	02d2      	lsls	r2, r2, #11
3000675a:	6243      	str	r3, [r0, #36]	; 0x24
3000675c:	6a84      	ldr	r4, [r0, #40]	; 0x28
3000675e:	fba5 3202 	umull	r3, r2, r5, r2
30006762:	4b52      	ldr	r3, [pc, #328]	; (300068ac <DDR_PHY_DLL_CLK_DIV+0x1e8>)
30006764:	f024 04ff 	bic.w	r4, r4, #255	; 0xff
30006768:	4321      	orrs	r1, r4
3000676a:	2401      	movs	r4, #1
3000676c:	6281      	str	r1, [r0, #40]	; 0x28
3000676e:	6a01      	ldr	r1, [r0, #32]
30006770:	400b      	ands	r3, r1
30006772:	494f      	ldr	r1, [pc, #316]	; (300068b0 <DDR_PHY_DLL_CLK_DIV+0x1ec>)
30006774:	ea43 3292 	orr.w	r2, r3, r2, lsr #14
30006778:	6202      	str	r2, [r0, #32]
3000677a:	6784      	str	r4, [r0, #120]	; 0x78
3000677c:	7808      	ldrb	r0, [r1, #0]
3000677e:	28ff      	cmp	r0, #255	; 0xff
30006780:	d075      	beq.n	3000686e <DDR_PHY_DLL_CLK_DIV+0x1aa>
30006782:	4c4c      	ldr	r4, [pc, #304]	; (300068b4 <DDR_PHY_DLL_CLK_DIV+0x1f0>)
30006784:	0145      	lsls	r5, r0, #5
30006786:	4b42      	ldr	r3, [pc, #264]	; (30006890 <DDR_PHY_DLL_CLK_DIV+0x1cc>)
30006788:	eb04 1040 	add.w	r0, r4, r0, lsl #5
3000678c:	5962      	ldr	r2, [r4, r5]
3000678e:	4e4a      	ldr	r6, [pc, #296]	; (300068b8 <DDR_PHY_DLL_CLK_DIV+0x1f4>)
30006790:	611a      	str	r2, [r3, #16]
30006792:	6842      	ldr	r2, [r0, #4]
30006794:	615a      	str	r2, [r3, #20]
30006796:	6882      	ldr	r2, [r0, #8]
30006798:	f8c3 2098 	str.w	r2, [r3, #152]	; 0x98
3000679c:	e9d0 1203 	ldrd	r1, r2, [r0, #12]
300067a0:	f8c3 10a0 	str.w	r1, [r3, #160]	; 0xa0
300067a4:	609a      	str	r2, [r3, #8]
300067a6:	f8d3 209c 	ldr.w	r2, [r3, #156]	; 0x9c
300067aa:	f022 52f8 	bic.w	r2, r2, #520093696	; 0x1f000000
300067ae:	f8c3 209c 	str.w	r2, [r3, #156]	; 0x9c
300067b2:	7830      	ldrb	r0, [r6, #0]
300067b4:	2800      	cmp	r0, #0
300067b6:	d056      	beq.n	30006866 <DDR_PHY_DLL_CLK_DIV+0x1a2>
300067b8:	2801      	cmp	r0, #1
300067ba:	442c      	add	r4, r5
300067bc:	4b34      	ldr	r3, [pc, #208]	; (30006890 <DDR_PHY_DLL_CLK_DIV+0x1cc>)
300067be:	d037      	beq.n	30006830 <DDR_PHY_DLL_CLK_DIV+0x16c>
300067c0:	2222      	movs	r2, #34	; 0x22
300067c2:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
300067c6:	6962      	ldr	r2, [r4, #20]
300067c8:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
300067cc:	e9d4 1206 	ldrd	r1, r2, [r4, #24]
300067d0:	f8c3 1084 	str.w	r1, [r3, #132]	; 0x84
300067d4:	f8c3 2094 	str.w	r2, [r3, #148]	; 0x94
300067d8:	f8d3 2084 	ldr.w	r2, [r3, #132]	; 0x84
300067dc:	4937      	ldr	r1, [pc, #220]	; (300068bc <DDR_PHY_DLL_CLK_DIV+0x1f8>)
300067de:	f422 427f 	bic.w	r2, r2, #65280	; 0xff00
300067e2:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
300067e6:	f8d1 3268 	ldr.w	r3, [r1, #616]	; 0x268
300067ea:	009b      	lsls	r3, r3, #2
300067ec:	d516      	bpl.n	3000681c <DDR_PHY_DLL_CLK_DIV+0x158>
300067ee:	2800      	cmp	r0, #0
300067f0:	d044      	beq.n	3000687c <DDR_PHY_DLL_CLK_DIV+0x1b8>
300067f2:	4b27      	ldr	r3, [pc, #156]	; (30006890 <DDR_PHY_DLL_CLK_DIV+0x1cc>)
300067f4:	4a32      	ldr	r2, [pc, #200]	; (300068c0 <DDR_PHY_DLL_CLK_DIV+0x1fc>)
300067f6:	601a      	str	r2, [r3, #0]
300067f8:	4b25      	ldr	r3, [pc, #148]	; (30006890 <DDR_PHY_DLL_CLK_DIV+0x1cc>)
300067fa:	f8d3 2084 	ldr.w	r2, [r3, #132]	; 0x84
300067fe:	f422 2270 	bic.w	r2, r2, #983040	; 0xf0000
30006802:	f442 2240 	orr.w	r2, r2, #786432	; 0xc0000
30006806:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
3000680a:	699a      	ldr	r2, [r3, #24]
3000680c:	f422 1260 	bic.w	r2, r2, #3670016	; 0x380000
30006810:	619a      	str	r2, [r3, #24]
30006812:	699a      	ldr	r2, [r3, #24]
30006814:	f042 5280 	orr.w	r2, r2, #268435456	; 0x10000000
30006818:	619a      	str	r2, [r3, #24]
3000681a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
3000681c:	b920      	cbnz	r0, 30006828 <DDR_PHY_DLL_CLK_DIV+0x164>
3000681e:	4b29      	ldr	r3, [pc, #164]	; (300068c4 <DDR_PHY_DLL_CLK_DIV+0x200>)
30006820:	4798      	blx	r3
30006822:	2801      	cmp	r0, #1
30006824:	7030      	strb	r0, [r6, #0]
30006826:	d025      	beq.n	30006874 <DDR_PHY_DLL_CLK_DIV+0x1b0>
30006828:	4b19      	ldr	r3, [pc, #100]	; (30006890 <DDR_PHY_DLL_CLK_DIV+0x1cc>)
3000682a:	4a27      	ldr	r2, [pc, #156]	; (300068c8 <DDR_PHY_DLL_CLK_DIV+0x204>)
3000682c:	601a      	str	r2, [r3, #0]
3000682e:	e7e3      	b.n	300067f8 <DDR_PHY_DLL_CLK_DIV+0x134>
30006830:	2233      	movs	r2, #51	; 0x33
30006832:	6965      	ldr	r5, [r4, #20]
30006834:	4921      	ldr	r1, [pc, #132]	; (300068bc <DDR_PHY_DLL_CLK_DIV+0x1f8>)
30006836:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
3000683a:	f8c3 5080 	str.w	r5, [r3, #128]	; 0x80
3000683e:	e9d4 0206 	ldrd	r0, r2, [r4, #24]
30006842:	f8c3 0084 	str.w	r0, [r3, #132]	; 0x84
30006846:	f8c3 2094 	str.w	r2, [r3, #148]	; 0x94
3000684a:	f8d3 2084 	ldr.w	r2, [r3, #132]	; 0x84
3000684e:	f422 427f 	bic.w	r2, r2, #65280	; 0xff00
30006852:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
30006856:	f8d1 3268 	ldr.w	r3, [r1, #616]	; 0x268
3000685a:	009a      	lsls	r2, r3, #2
3000685c:	d50a      	bpl.n	30006874 <DDR_PHY_DLL_CLK_DIV+0x1b0>
3000685e:	4b0c      	ldr	r3, [pc, #48]	; (30006890 <DDR_PHY_DLL_CLK_DIV+0x1cc>)
30006860:	4a1a      	ldr	r2, [pc, #104]	; (300068cc <DDR_PHY_DLL_CLK_DIV+0x208>)
30006862:	601a      	str	r2, [r3, #0]
30006864:	e7c8      	b.n	300067f8 <DDR_PHY_DLL_CLK_DIV+0x134>
30006866:	4b17      	ldr	r3, [pc, #92]	; (300068c4 <DDR_PHY_DLL_CLK_DIV+0x200>)
30006868:	4798      	blx	r3
3000686a:	7030      	strb	r0, [r6, #0]
3000686c:	e7a4      	b.n	300067b8 <DDR_PHY_DLL_CLK_DIV+0xf4>
3000686e:	f7ff fed9 	bl	30006624 <DDR_PHY_ChipInfo.part.0>
30006872:	e786      	b.n	30006782 <DDR_PHY_DLL_CLK_DIV+0xbe>
30006874:	4b06      	ldr	r3, [pc, #24]	; (30006890 <DDR_PHY_DLL_CLK_DIV+0x1cc>)
30006876:	4a16      	ldr	r2, [pc, #88]	; (300068d0 <DDR_PHY_DLL_CLK_DIV+0x20c>)
30006878:	601a      	str	r2, [r3, #0]
3000687a:	e7bd      	b.n	300067f8 <DDR_PHY_DLL_CLK_DIV+0x134>
3000687c:	4b11      	ldr	r3, [pc, #68]	; (300068c4 <DDR_PHY_DLL_CLK_DIV+0x200>)
3000687e:	4798      	blx	r3
30006880:	2801      	cmp	r0, #1
30006882:	7030      	strb	r0, [r6, #0]
30006884:	d1b5      	bne.n	300067f2 <DDR_PHY_DLL_CLK_DIV+0x12e>
30006886:	e7ea      	b.n	3000685e <DDR_PHY_DLL_CLK_DIV+0x19a>
30006888:	cccccccd 	.word	0xcccccccd
3000688c:	001fff88 	.word	0x001fff88
30006890:	41011000 	.word	0x41011000
30006894:	10624dd3 	.word	0x10624dd3
30006898:	07ff0000 	.word	0x07ff0000
3000689c:	f800ffff 	.word	0xf800ffff
300068a0:	51eb851f 	.word	0x51eb851f
300068a4:	fffff800 	.word	0xfffff800
300068a8:	d1b71759 	.word	0xd1b71759
300068ac:	fff80000 	.word	0xfff80000
300068b0:	3000d9e8 	.word	0x3000d9e8
300068b4:	3000c228 	.word	0x3000c228
300068b8:	3000e678 	.word	0x3000e678
300068bc:	42008000 	.word	0x42008000
300068c0:	4c000821 	.word	0x4c000821
300068c4:	300095ed 	.word	0x300095ed
300068c8:	40000021 	.word	0x40000021
300068cc:	4c000903 	.word	0x4c000903
300068d0:	40000103 	.word	0x40000103

300068d4 <DDR_PHY_CRT_Init>:
300068d4:	4a32      	ldr	r2, [pc, #200]	; (300069a0 <DDR_PHY_CRT_Init+0xcc>)
300068d6:	2005      	movs	r0, #5
300068d8:	b538      	push	{r3, r4, r5, lr}
300068da:	f8d2 325c 	ldr.w	r3, [r2, #604]	; 0x25c
300068de:	4c31      	ldr	r4, [pc, #196]	; (300069a4 <DDR_PHY_CRT_Init+0xd0>)
300068e0:	f443 7380 	orr.w	r3, r3, #256	; 0x100
300068e4:	4d30      	ldr	r5, [pc, #192]	; (300069a8 <DDR_PHY_CRT_Init+0xd4>)
300068e6:	f8c2 325c 	str.w	r3, [r2, #604]	; 0x25c
300068ea:	f8d4 308c 	ldr.w	r3, [r4, #140]	; 0x8c
300068ee:	f043 0301 	orr.w	r3, r3, #1
300068f2:	f8c4 308c 	str.w	r3, [r4, #140]	; 0x8c
300068f6:	f8d4 308c 	ldr.w	r3, [r4, #140]	; 0x8c
300068fa:	f043 0330 	orr.w	r3, r3, #48	; 0x30
300068fe:	f8c4 308c 	str.w	r3, [r4, #140]	; 0x8c
30006902:	68e3      	ldr	r3, [r4, #12]
30006904:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
30006908:	60e3      	str	r3, [r4, #12]
3000690a:	f8d4 308c 	ldr.w	r3, [r4, #140]	; 0x8c
3000690e:	f043 0302 	orr.w	r3, r3, #2
30006912:	f8c4 308c 	str.w	r3, [r4, #140]	; 0x8c
30006916:	f8d4 308c 	ldr.w	r3, [r4, #140]	; 0x8c
3000691a:	f023 0308 	bic.w	r3, r3, #8
3000691e:	f8c4 308c 	str.w	r3, [r4, #140]	; 0x8c
30006922:	f8d4 308c 	ldr.w	r3, [r4, #140]	; 0x8c
30006926:	f043 0304 	orr.w	r3, r3, #4
3000692a:	f8c4 308c 	str.w	r3, [r4, #140]	; 0x8c
3000692e:	47a8      	blx	r5
30006930:	f8d4 308c 	ldr.w	r3, [r4, #140]	; 0x8c
30006934:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
30006938:	f043 0308 	orr.w	r3, r3, #8
3000693c:	f8c4 308c 	str.w	r3, [r4, #140]	; 0x8c
30006940:	6aa3      	ldr	r3, [r4, #40]	; 0x28
30006942:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
30006946:	62a3      	str	r3, [r4, #40]	; 0x28
30006948:	47a8      	blx	r5
3000694a:	6aa2      	ldr	r2, [r4, #40]	; 0x28
3000694c:	f641 73ff 	movw	r3, #8191	; 0x1fff
30006950:	4916      	ldr	r1, [pc, #88]	; (300069ac <DDR_PHY_CRT_Init+0xd8>)
30006952:	f022 6280 	bic.w	r2, r2, #67108864	; 0x4000000
30006956:	62a2      	str	r2, [r4, #40]	; 0x28
30006958:	69e2      	ldr	r2, [r4, #28]
3000695a:	f042 0202 	orr.w	r2, r2, #2
3000695e:	61e2      	str	r2, [r4, #28]
30006960:	69e2      	ldr	r2, [r4, #28]
30006962:	f042 0208 	orr.w	r2, r2, #8
30006966:	61e2      	str	r2, [r4, #28]
30006968:	68a2      	ldr	r2, [r4, #8]
3000696a:	f042 4200 	orr.w	r2, r2, #2147483648	; 0x80000000
3000696e:	60a2      	str	r2, [r4, #8]
30006970:	6862      	ldr	r2, [r4, #4]
30006972:	4313      	orrs	r3, r2
30006974:	6063      	str	r3, [r4, #4]
30006976:	68a3      	ldr	r3, [r4, #8]
30006978:	f443 23e0 	orr.w	r3, r3, #458752	; 0x70000
3000697c:	60a3      	str	r3, [r4, #8]
3000697e:	f8c4 1240 	str.w	r1, [r4, #576]	; 0x240
30006982:	f8d4 3238 	ldr.w	r3, [r4, #568]	; 0x238
30006986:	f023 0303 	bic.w	r3, r3, #3
3000698a:	f043 0302 	orr.w	r3, r3, #2
3000698e:	f8c4 3238 	str.w	r3, [r4, #568]	; 0x238
30006992:	f8d4 3238 	ldr.w	r3, [r4, #568]	; 0x238
30006996:	f443 23c0 	orr.w	r3, r3, #393216	; 0x60000
3000699a:	f8c4 3238 	str.w	r3, [r4, #568]	; 0x238
3000699e:	bd38      	pop	{r3, r4, r5, pc}
300069a0:	42008000 	.word	0x42008000
300069a4:	41011000 	.word	0x41011000
300069a8:	00009b2d 	.word	0x00009b2d
300069ac:	90161f00 	.word	0x90161f00

300069b0 <DDR_PHY_R240_ZQ_CAL>:
300069b0:	b538      	push	{r3, r4, r5, lr}
300069b2:	4b1e      	ldr	r3, [pc, #120]	; (30006a2c <DDR_PHY_R240_ZQ_CAL+0x7c>)
300069b4:	7818      	ldrb	r0, [r3, #0]
300069b6:	28ff      	cmp	r0, #255	; 0xff
300069b8:	d034      	beq.n	30006a24 <DDR_PHY_R240_ZQ_CAL+0x74>
300069ba:	4a1d      	ldr	r2, [pc, #116]	; (30006a30 <DDR_PHY_R240_ZQ_CAL+0x80>)
300069bc:	eb00 0080 	add.w	r0, r0, r0, lsl #2
300069c0:	4b1c      	ldr	r3, [pc, #112]	; (30006a34 <DDR_PHY_R240_ZQ_CAL+0x84>)
300069c2:	2400      	movs	r4, #0
300069c4:	eb02 0180 	add.w	r1, r2, r0, lsl #2
300069c8:	f852 5020 	ldr.w	r5, [r2, r0, lsl #2]
300069cc:	f8d3 014c 	ldr.w	r0, [r3, #332]	; 0x14c
300069d0:	7c0a      	ldrb	r2, [r1, #16]
300069d2:	f020 003e 	bic.w	r0, r0, #62	; 0x3e
300069d6:	0052      	lsls	r2, r2, #1
300069d8:	f002 023e 	and.w	r2, r2, #62	; 0x3e
300069dc:	4302      	orrs	r2, r0
300069de:	6848      	ldr	r0, [r1, #4]
300069e0:	f8c3 214c 	str.w	r2, [r3, #332]	; 0x14c
300069e4:	f8c3 5180 	str.w	r5, [r3, #384]	; 0x180
300069e8:	4a13      	ldr	r2, [pc, #76]	; (30006a38 <DDR_PHY_R240_ZQ_CAL+0x88>)
300069ea:	f8c3 4184 	str.w	r4, [r3, #388]	; 0x184
300069ee:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
300069f2:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
300069f6:	e9d1 0102 	ldrd	r0, r1, [r1, #8]
300069fa:	f8c3 0190 	str.w	r0, [r3, #400]	; 0x190
300069fe:	f8c3 2194 	str.w	r2, [r3, #404]	; 0x194
30006a02:	f8c3 1198 	str.w	r1, [r3, #408]	; 0x198
30006a06:	f8c3 219c 	str.w	r2, [r3, #412]	; 0x19c
30006a0a:	f8d3 2130 	ldr.w	r2, [r3, #304]	; 0x130
30006a0e:	f042 6200 	orr.w	r2, r2, #134217728	; 0x8000000
30006a12:	f8c3 2130 	str.w	r2, [r3, #304]	; 0x130
30006a16:	f8d3 2130 	ldr.w	r2, [r3, #304]	; 0x130
30006a1a:	f022 6200 	bic.w	r2, r2, #134217728	; 0x8000000
30006a1e:	f8c3 2130 	str.w	r2, [r3, #304]	; 0x130
30006a22:	bd38      	pop	{r3, r4, r5, pc}
30006a24:	f7ff fdfe 	bl	30006624 <DDR_PHY_ChipInfo.part.0>
30006a28:	e7c7      	b.n	300069ba <DDR_PHY_R240_ZQ_CAL+0xa>
30006a2a:	bf00      	nop
30006a2c:	3000d9e8 	.word	0x3000d9e8
30006a30:	3000c2e8 	.word	0x3000c2e8
30006a34:	41011000 	.word	0x41011000
30006a38:	00262626 	.word	0x00262626

30006a3c <DDR_PHY_ZQ_SET_SEL>:
30006a3c:	b410      	push	{r4}
30006a3e:	4b25      	ldr	r3, [pc, #148]	; (30006ad4 <DDR_PHY_ZQ_SET_SEL+0x98>)
30006a40:	f04f 3011 	mov.w	r0, #286331153	; 0x11111111
30006a44:	4a24      	ldr	r2, [pc, #144]	; (30006ad8 <DDR_PHY_ZQ_SET_SEL+0x9c>)
30006a46:	4c25      	ldr	r4, [pc, #148]	; (30006adc <DDR_PHY_ZQ_SET_SEL+0xa0>)
30006a48:	4925      	ldr	r1, [pc, #148]	; (30006ae0 <DDR_PHY_ZQ_SET_SEL+0xa4>)
30006a4a:	f8c3 21c0 	str.w	r2, [r3, #448]	; 0x1c0
30006a4e:	f8c3 21c4 	str.w	r2, [r3, #452]	; 0x1c4
30006a52:	f8c3 21c8 	str.w	r2, [r3, #456]	; 0x1c8
30006a56:	f8c3 21cc 	str.w	r2, [r3, #460]	; 0x1cc
30006a5a:	f8c3 41d0 	str.w	r4, [r3, #464]	; 0x1d0
30006a5e:	f8c3 41d4 	str.w	r4, [r3, #468]	; 0x1d4
30006a62:	f64f 74ff 	movw	r4, #65535	; 0xffff
30006a66:	f8c3 21d8 	str.w	r2, [r3, #472]	; 0x1d8
30006a6a:	f8c3 21dc 	str.w	r2, [r3, #476]	; 0x1dc
30006a6e:	2200      	movs	r2, #0
30006a70:	f8c3 01e0 	str.w	r0, [r3, #480]	; 0x1e0
30006a74:	f8c3 01e4 	str.w	r0, [r3, #484]	; 0x1e4
30006a78:	f8c3 11e8 	str.w	r1, [r3, #488]	; 0x1e8
30006a7c:	f8c3 11ec 	str.w	r1, [r3, #492]	; 0x1ec
30006a80:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
30006a84:	f8c3 21f0 	str.w	r2, [r3, #496]	; 0x1f0
30006a88:	f8c3 2204 	str.w	r2, [r3, #516]	; 0x204
30006a8c:	f8c3 2208 	str.w	r2, [r3, #520]	; 0x208
30006a90:	f8c3 220c 	str.w	r2, [r3, #524]	; 0x20c
30006a94:	f8c3 2210 	str.w	r2, [r3, #528]	; 0x210
30006a98:	f8c3 2214 	str.w	r2, [r3, #532]	; 0x214
30006a9c:	f8c3 2218 	str.w	r2, [r3, #536]	; 0x218
30006aa0:	f8c3 221c 	str.w	r2, [r3, #540]	; 0x21c
30006aa4:	f8c3 2220 	str.w	r2, [r3, #544]	; 0x220
30006aa8:	f8c3 4224 	str.w	r4, [r3, #548]	; 0x224
30006aac:	f8c3 1228 	str.w	r1, [r3, #552]	; 0x228
30006ab0:	f8c3 122c 	str.w	r1, [r3, #556]	; 0x22c
30006ab4:	f8c3 1230 	str.w	r1, [r3, #560]	; 0x230
30006ab8:	f8c3 1234 	str.w	r1, [r3, #564]	; 0x234
30006abc:	f8c3 1328 	str.w	r1, [r3, #808]	; 0x328
30006ac0:	f8c3 132c 	str.w	r1, [r3, #812]	; 0x32c
30006ac4:	f8c3 1330 	str.w	r1, [r3, #816]	; 0x330
30006ac8:	f8c3 1334 	str.w	r1, [r3, #820]	; 0x334
30006acc:	f85d 4b04 	ldr.w	r4, [sp], #4
30006ad0:	4770      	bx	lr
30006ad2:	bf00      	nop
30006ad4:	41011000 	.word	0x41011000
30006ad8:	ffff1111 	.word	0xffff1111
30006adc:	ffff3333 	.word	0xffff3333
30006ae0:	ffff0000 	.word	0xffff0000

30006ae4 <DDR_PHY_DELAY_TAP_SET>:
30006ae4:	b510      	push	{r4, lr}
30006ae6:	4b15      	ldr	r3, [pc, #84]	; (30006b3c <DDR_PHY_DELAY_TAP_SET+0x58>)
30006ae8:	f04f 3288 	mov.w	r2, #2290649224	; 0x88888888
30006aec:	4914      	ldr	r1, [pc, #80]	; (30006b40 <DDR_PHY_DELAY_TAP_SET+0x5c>)
30006aee:	4c15      	ldr	r4, [pc, #84]	; (30006b44 <DDR_PHY_DELAY_TAP_SET+0x60>)
30006af0:	f8c3 2100 	str.w	r2, [r3, #256]	; 0x100
30006af4:	f8c3 2104 	str.w	r2, [r3, #260]	; 0x104
30006af8:	f8c3 2108 	str.w	r2, [r3, #264]	; 0x108
30006afc:	f8c3 110c 	str.w	r1, [r3, #268]	; 0x10c
30006b00:	f8c3 2110 	str.w	r2, [r3, #272]	; 0x110
30006b04:	7820      	ldrb	r0, [r4, #0]
30006b06:	b1a0      	cbz	r0, 30006b32 <DDR_PHY_DELAY_TAP_SET+0x4e>
30006b08:	2801      	cmp	r0, #1
30006b0a:	4b0c      	ldr	r3, [pc, #48]	; (30006b3c <DDR_PHY_DELAY_TAP_SET+0x58>)
30006b0c:	f04f 3188 	mov.w	r1, #2290649224	; 0x88888888
30006b10:	bf0c      	ite	eq
30006b12:	4a0d      	ldreq	r2, [pc, #52]	; (30006b48 <DDR_PHY_DELAY_TAP_SET+0x64>)
30006b14:	4a0d      	ldrne	r2, [pc, #52]	; (30006b4c <DDR_PHY_DELAY_TAP_SET+0x68>)
30006b16:	f8c3 2154 	str.w	r2, [r3, #340]	; 0x154
30006b1a:	f640 0288 	movw	r2, #2184	; 0x888
30006b1e:	4b07      	ldr	r3, [pc, #28]	; (30006b3c <DDR_PHY_DELAY_TAP_SET+0x58>)
30006b20:	f8c3 1480 	str.w	r1, [r3, #1152]	; 0x480
30006b24:	f8c3 1484 	str.w	r1, [r3, #1156]	; 0x484
30006b28:	f8c3 2488 	str.w	r2, [r3, #1160]	; 0x488
30006b2c:	f8c3 248c 	str.w	r2, [r3, #1164]	; 0x48c
30006b30:	bd10      	pop	{r4, pc}
30006b32:	4b07      	ldr	r3, [pc, #28]	; (30006b50 <DDR_PHY_DELAY_TAP_SET+0x6c>)
30006b34:	4798      	blx	r3
30006b36:	7020      	strb	r0, [r4, #0]
30006b38:	e7e6      	b.n	30006b08 <DDR_PHY_DELAY_TAP_SET+0x24>
30006b3a:	bf00      	nop
30006b3c:	41011000 	.word	0x41011000
30006b40:	20888888 	.word	0x20888888
30006b44:	3000e678 	.word	0x3000e678
30006b48:	7c033333 	.word	0x7c033333
30006b4c:	7c011111 	.word	0x7c011111
30006b50:	300095ed 	.word	0x300095ed

30006b54 <DDR_PHY_READ_CTRL>:
30006b54:	4b10      	ldr	r3, [pc, #64]	; (30006b98 <DDR_PHY_READ_CTRL+0x44>)
30006b56:	b510      	push	{r4, lr}
30006b58:	7818      	ldrb	r0, [r3, #0]
30006b5a:	28ff      	cmp	r0, #255	; 0xff
30006b5c:	d019      	beq.n	30006b92 <DDR_PHY_READ_CTRL+0x3e>
30006b5e:	4a0f      	ldr	r2, [pc, #60]	; (30006b9c <DDR_PHY_READ_CTRL+0x48>)
30006b60:	eb00 0080 	add.w	r0, r0, r0, lsl #2
30006b64:	4b0e      	ldr	r3, [pc, #56]	; (30006ba0 <DDR_PHY_READ_CTRL+0x4c>)
30006b66:	2108      	movs	r1, #8
30006b68:	eb02 0080 	add.w	r0, r2, r0, lsl #2
30006b6c:	22fe      	movs	r2, #254	; 0xfe
30006b6e:	7c44      	ldrb	r4, [r0, #17]
30006b70:	f8c3 45f8 	str.w	r4, [r3, #1528]	; 0x5f8
30006b74:	7c84      	ldrb	r4, [r0, #18]
30006b76:	7cc0      	ldrb	r0, [r0, #19]
30006b78:	f8c3 45fc 	str.w	r4, [r3, #1532]	; 0x5fc
30006b7c:	f8c3 0170 	str.w	r0, [r3, #368]	; 0x170
30006b80:	f8c3 1408 	str.w	r1, [r3, #1032]	; 0x408
30006b84:	f8c3 140c 	str.w	r1, [r3, #1036]	; 0x40c
30006b88:	f8c3 2418 	str.w	r2, [r3, #1048]	; 0x418
30006b8c:	f8c3 241c 	str.w	r2, [r3, #1052]	; 0x41c
30006b90:	bd10      	pop	{r4, pc}
30006b92:	f7ff fd47 	bl	30006624 <DDR_PHY_ChipInfo.part.0>
30006b96:	e7e2      	b.n	30006b5e <DDR_PHY_READ_CTRL+0xa>
30006b98:	3000d9e8 	.word	0x3000d9e8
30006b9c:	3000c2e8 	.word	0x3000c2e8
30006ba0:	41011000 	.word	0x41011000

30006ba4 <DDR_PHY_READ_LEVELING>:
30006ba4:	b508      	push	{r3, lr}
30006ba6:	4b21      	ldr	r3, [pc, #132]	; (30006c2c <DDR_PHY_READ_LEVELING+0x88>)
30006ba8:	7818      	ldrb	r0, [r3, #0]
30006baa:	28ff      	cmp	r0, #255	; 0xff
30006bac:	d03b      	beq.n	30006c26 <DDR_PHY_READ_LEVELING+0x82>
30006bae:	4b20      	ldr	r3, [pc, #128]	; (30006c30 <DDR_PHY_READ_LEVELING+0x8c>)
30006bb0:	b1e8      	cbz	r0, 30006bee <DDR_PHY_READ_LEVELING+0x4a>
30006bb2:	f04f 3112 	mov.w	r1, #303174162	; 0x12121212
30006bb6:	f04f 3011 	mov.w	r0, #286331153	; 0x11111111
30006bba:	220f      	movs	r2, #15
30006bbc:	f8c3 1440 	str.w	r1, [r3, #1088]	; 0x440
30006bc0:	f8c3 1448 	str.w	r1, [r3, #1096]	; 0x448
30006bc4:	f8c3 0444 	str.w	r0, [r3, #1092]	; 0x444
30006bc8:	f8c3 044c 	str.w	r0, [r3, #1100]	; 0x44c
30006bcc:	f8c3 0458 	str.w	r0, [r3, #1112]	; 0x458
30006bd0:	f8c3 0460 	str.w	r0, [r3, #1120]	; 0x460
30006bd4:	f8c3 145c 	str.w	r1, [r3, #1116]	; 0x45c
30006bd8:	f8c3 1464 	str.w	r1, [r3, #1124]	; 0x464
30006bdc:	f8c3 2450 	str.w	r2, [r3, #1104]	; 0x450
30006be0:	f8c3 2454 	str.w	r2, [r3, #1108]	; 0x454
30006be4:	f8c3 2468 	str.w	r2, [r3, #1128]	; 0x468
30006be8:	f8c3 246c 	str.w	r2, [r3, #1132]	; 0x46c
30006bec:	bd08      	pop	{r3, pc}
30006bee:	f04f 3210 	mov.w	r2, #269488144	; 0x10101010
30006bf2:	2110      	movs	r1, #16
30006bf4:	f8c3 2440 	str.w	r2, [r3, #1088]	; 0x440
30006bf8:	f8c3 2448 	str.w	r2, [r3, #1096]	; 0x448
30006bfc:	f8c3 2458 	str.w	r2, [r3, #1112]	; 0x458
30006c00:	f8c3 2460 	str.w	r2, [r3, #1120]	; 0x460
30006c04:	f8c3 2444 	str.w	r2, [r3, #1092]	; 0x444
30006c08:	f8c3 244c 	str.w	r2, [r3, #1100]	; 0x44c
30006c0c:	f8c3 245c 	str.w	r2, [r3, #1116]	; 0x45c
30006c10:	f8c3 2464 	str.w	r2, [r3, #1124]	; 0x464
30006c14:	f8c3 1450 	str.w	r1, [r3, #1104]	; 0x450
30006c18:	f8c3 1454 	str.w	r1, [r3, #1108]	; 0x454
30006c1c:	f8c3 1468 	str.w	r1, [r3, #1128]	; 0x468
30006c20:	f8c3 146c 	str.w	r1, [r3, #1132]	; 0x46c
30006c24:	bd08      	pop	{r3, pc}
30006c26:	f7ff fcfd 	bl	30006624 <DDR_PHY_ChipInfo.part.0>
30006c2a:	e7c0      	b.n	30006bae <DDR_PHY_READ_LEVELING+0xa>
30006c2c:	3000d9e8 	.word	0x3000d9e8
30006c30:	41011000 	.word	0x41011000

30006c34 <DDR_PHY_Init>:
30006c34:	b510      	push	{r4, lr}
30006c36:	6d80      	ldr	r0, [r0, #88]	; 0x58
30006c38:	4c2f      	ldr	r4, [pc, #188]	; (30006cf8 <DDR_PHY_Init+0xc4>)
30006c3a:	f7ff fd43 	bl	300066c4 <DDR_PHY_DLL_CLK_DIV>
30006c3e:	f7ff fe49 	bl	300068d4 <DDR_PHY_CRT_Init>
30006c42:	f7ff feb5 	bl	300069b0 <DDR_PHY_R240_ZQ_CAL>
30006c46:	f7ff fef9 	bl	30006a3c <DDR_PHY_ZQ_SET_SEL>
30006c4a:	f04f 1211 	mov.w	r2, #1114129	; 0x110011
30006c4e:	2300      	movs	r3, #0
30006c50:	f44f 5180 	mov.w	r1, #4096	; 0x1000
30006c54:	4829      	ldr	r0, [pc, #164]	; (30006cfc <DDR_PHY_Init+0xc8>)
30006c56:	f8c4 24f0 	str.w	r2, [r4, #1264]	; 0x4f0
30006c5a:	f8c4 24f4 	str.w	r2, [r4, #1268]	; 0x4f4
30006c5e:	f8c4 34e8 	str.w	r3, [r4, #1256]	; 0x4e8
30006c62:	f8c4 34ec 	str.w	r3, [r4, #1260]	; 0x4ec
30006c66:	f8c4 017c 	str.w	r0, [r4, #380]	; 0x17c
30006c6a:	f8c4 12a4 	str.w	r1, [r4, #676]	; 0x2a4
30006c6e:	f7ff ff39 	bl	30006ae4 <DDR_PHY_DELAY_TAP_SET>
30006c72:	f7ff ff6f 	bl	30006b54 <DDR_PHY_READ_CTRL>
30006c76:	f04f 3322 	mov.w	r3, #572662306	; 0x22222222
30006c7a:	4a21      	ldr	r2, [pc, #132]	; (30006d00 <DDR_PHY_Init+0xcc>)
30006c7c:	f8c4 2178 	str.w	r2, [r4, #376]	; 0x178
30006c80:	f8c4 3420 	str.w	r3, [r4, #1056]	; 0x420
30006c84:	f8c4 3424 	str.w	r3, [r4, #1060]	; 0x424
30006c88:	f8c4 3430 	str.w	r3, [r4, #1072]	; 0x430
30006c8c:	f8c4 3434 	str.w	r3, [r4, #1076]	; 0x434
30006c90:	f7ff ff88 	bl	30006ba4 <DDR_PHY_READ_LEVELING>
30006c94:	f8d4 31f8 	ldr.w	r3, [r4, #504]	; 0x1f8
30006c98:	f04f 31d8 	mov.w	r1, #3638089944	; 0xd8d8d8d8
30006c9c:	f04f 328c 	mov.w	r2, #2358021260	; 0x8c8c8c8c
30006ca0:	f423 437e 	bic.w	r3, r3, #65024	; 0xfe00
30006ca4:	f443 4364 	orr.w	r3, r3, #58368	; 0xe400
30006ca8:	f8c4 31f8 	str.w	r3, [r4, #504]	; 0x1f8
30006cac:	f8c4 11fc 	str.w	r1, [r4, #508]	; 0x1fc
30006cb0:	f8d4 32d0 	ldr.w	r3, [r4, #720]	; 0x2d0
30006cb4:	f043 032f 	orr.w	r3, r3, #47	; 0x2f
30006cb8:	f8c4 32d0 	str.w	r3, [r4, #720]	; 0x2d0
30006cbc:	f8c4 21fc 	str.w	r2, [r4, #508]	; 0x1fc
30006cc0:	f8d4 323c 	ldr.w	r3, [r4, #572]	; 0x23c
30006cc4:	f043 0303 	orr.w	r3, r3, #3
30006cc8:	f8c4 323c 	str.w	r3, [r4, #572]	; 0x23c
30006ccc:	f8d4 323c 	ldr.w	r3, [r4, #572]	; 0x23c
30006cd0:	f043 030c 	orr.w	r3, r3, #12
30006cd4:	f8c4 323c 	str.w	r3, [r4, #572]	; 0x23c
30006cd8:	f8d4 3238 	ldr.w	r3, [r4, #568]	; 0x238
30006cdc:	f023 0303 	bic.w	r3, r3, #3
30006ce0:	f8c4 3238 	str.w	r3, [r4, #568]	; 0x238
30006ce4:	f8d4 3238 	ldr.w	r3, [r4, #568]	; 0x238
30006ce8:	f423 537c 	bic.w	r3, r3, #16128	; 0x3f00
30006cec:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
30006cf0:	f8c4 3238 	str.w	r3, [r4, #568]	; 0x238
30006cf4:	bd10      	pop	{r4, pc}
30006cf6:	bf00      	nop
30006cf8:	41011000 	.word	0x41011000
30006cfc:	00045500 	.word	0x00045500
30006d00:	11117777 	.word	0x11117777

30006d04 <DDR_PHY_CAL>:
30006d04:	4770      	bx	lr
30006d06:	bf00      	nop

30006d08 <DDR_PHY_AutoGating>:
30006d08:	4a0c      	ldr	r2, [pc, #48]	; (30006d3c <DDR_PHY_AutoGating+0x34>)
30006d0a:	2032      	movs	r0, #50	; 0x32
30006d0c:	490c      	ldr	r1, [pc, #48]	; (30006d40 <DDR_PHY_AutoGating+0x38>)
30006d0e:	b508      	push	{r3, lr}
30006d10:	6893      	ldr	r3, [r2, #8]
30006d12:	f023 5300 	bic.w	r3, r3, #536870912	; 0x20000000
30006d16:	6093      	str	r3, [r2, #8]
30006d18:	f8d2 30ac 	ldr.w	r3, [r2, #172]	; 0xac
30006d1c:	f023 033c 	bic.w	r3, r3, #60	; 0x3c
30006d20:	f043 0314 	orr.w	r3, r3, #20
30006d24:	f8c2 30ac 	str.w	r3, [r2, #172]	; 0xac
30006d28:	4788      	blx	r1
30006d2a:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
30006d2e:	f8d2 31e0 	ldr.w	r3, [r2, #480]	; 0x1e0
30006d32:	f043 0303 	orr.w	r3, r3, #3
30006d36:	f8c2 31e0 	str.w	r3, [r2, #480]	; 0x1e0
30006d3a:	bd08      	pop	{r3, pc}
30006d3c:	41011000 	.word	0x41011000
30006d40:	00009b2d 	.word	0x00009b2d

30006d44 <ddr_init_index>:
30006d44:	b570      	push	{r4, r5, r6, lr}
30006d46:	4b0f      	ldr	r3, [pc, #60]	; (30006d84 <ddr_init_index+0x40>)
30006d48:	4798      	blx	r3
30006d4a:	4604      	mov	r4, r0
30006d4c:	4b0e      	ldr	r3, [pc, #56]	; (30006d88 <ddr_init_index+0x44>)
30006d4e:	4798      	blx	r3
30006d50:	2c03      	cmp	r4, #3
30006d52:	d014      	beq.n	30006d7e <ddr_init_index+0x3a>
30006d54:	2c01      	cmp	r4, #1
30006d56:	d00c      	beq.n	30006d72 <ddr_init_index+0x2e>
30006d58:	4e0c      	ldr	r6, [pc, #48]	; (30006d8c <ddr_init_index+0x48>)
30006d5a:	4d0d      	ldr	r5, [pc, #52]	; (30006d90 <ddr_init_index+0x4c>)
30006d5c:	4c0d      	ldr	r4, [pc, #52]	; (30006d94 <ddr_init_index+0x50>)
30006d5e:	462b      	mov	r3, r5
30006d60:	2245      	movs	r2, #69	; 0x45
30006d62:	4621      	mov	r1, r4
30006d64:	2002      	movs	r0, #2
30006d66:	f002 fb83 	bl	30009470 <rtk_log_write>
30006d6a:	f242 7010 	movw	r0, #10000	; 0x2710
30006d6e:	47b0      	blx	r6
30006d70:	e7f5      	b.n	30006d5e <ddr_init_index+0x1a>
30006d72:	2802      	cmp	r0, #2
30006d74:	d003      	beq.n	30006d7e <ddr_init_index+0x3a>
30006d76:	2803      	cmp	r0, #3
30006d78:	d1ee      	bne.n	30006d58 <ddr_init_index+0x14>
30006d7a:	2000      	movs	r0, #0
30006d7c:	bd70      	pop	{r4, r5, r6, pc}
30006d7e:	4620      	mov	r0, r4
30006d80:	bd70      	pop	{r4, r5, r6, pc}
30006d82:	bf00      	nop
30006d84:	300066a1 	.word	0x300066a1
30006d88:	30009639 	.word	0x30009639
30006d8c:	00009be5 	.word	0x00009be5
30006d90:	3000c360 	.word	0x3000c360
30006d94:	3000c37c 	.word	0x3000c37c

30006d98 <rxi316_perf_tune>:
30006d98:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30006d9c:	4606      	mov	r6, r0
30006d9e:	6800      	ldr	r0, [r0, #0]
30006da0:	b0c3      	sub	sp, #268	; 0x10c
30006da2:	7985      	ldrb	r5, [r0, #6]
30006da4:	2d00      	cmp	r5, #0
30006da6:	f000 8332 	beq.w	3000740e <rxi316_perf_tune+0x676>
30006daa:	2d01      	cmp	r5, #1
30006dac:	d003      	beq.n	30006db6 <rxi316_perf_tune+0x1e>
30006dae:	2d03      	cmp	r5, #3
30006db0:	bf14      	ite	ne
30006db2:	2502      	movne	r5, #2
30006db4:	2500      	moveq	r5, #0
30006db6:	68f3      	ldr	r3, [r6, #12]
30006db8:	2420      	movs	r4, #32
30006dba:	f04f 0a00 	mov.w	sl, #0
30006dbe:	4684      	mov	ip, r0
30006dc0:	685b      	ldr	r3, [r3, #4]
30006dc2:	46a3      	mov	fp, r4
30006dc4:	4627      	mov	r7, r4
30006dc6:	46a0      	mov	r8, r4
30006dc8:	7859      	ldrb	r1, [r3, #1]
30006dca:	46a1      	mov	r9, r4
30006dcc:	781a      	ldrb	r2, [r3, #0]
30006dce:	9123      	str	r1, [sp, #140]	; 0x8c
30006dd0:	7899      	ldrb	r1, [r3, #2]
30006dd2:	9124      	str	r1, [sp, #144]	; 0x90
30006dd4:	78d9      	ldrb	r1, [r3, #3]
30006dd6:	9125      	str	r1, [sp, #148]	; 0x94
30006dd8:	7919      	ldrb	r1, [r3, #4]
30006dda:	9126      	str	r1, [sp, #152]	; 0x98
30006ddc:	7959      	ldrb	r1, [r3, #5]
30006dde:	9127      	str	r1, [sp, #156]	; 0x9c
30006de0:	7999      	ldrb	r1, [r3, #6]
30006de2:	9128      	str	r1, [sp, #160]	; 0xa0
30006de4:	79d9      	ldrb	r1, [r3, #7]
30006de6:	9129      	str	r1, [sp, #164]	; 0xa4
30006de8:	7a19      	ldrb	r1, [r3, #8]
30006dea:	912a      	str	r1, [sp, #168]	; 0xa8
30006dec:	7a59      	ldrb	r1, [r3, #9]
30006dee:	912b      	str	r1, [sp, #172]	; 0xac
30006df0:	7a99      	ldrb	r1, [r3, #10]
30006df2:	912c      	str	r1, [sp, #176]	; 0xb0
30006df4:	7ad9      	ldrb	r1, [r3, #11]
30006df6:	912d      	str	r1, [sp, #180]	; 0xb4
30006df8:	7b19      	ldrb	r1, [r3, #12]
30006dfa:	912e      	str	r1, [sp, #184]	; 0xb8
30006dfc:	7b59      	ldrb	r1, [r3, #13]
30006dfe:	912f      	str	r1, [sp, #188]	; 0xbc
30006e00:	7b99      	ldrb	r1, [r3, #14]
30006e02:	9130      	str	r1, [sp, #192]	; 0xc0
30006e04:	7bd9      	ldrb	r1, [r3, #15]
30006e06:	9131      	str	r1, [sp, #196]	; 0xc4
30006e08:	7c19      	ldrb	r1, [r3, #16]
30006e0a:	941d      	str	r4, [sp, #116]	; 0x74
30006e0c:	9132      	str	r1, [sp, #200]	; 0xc8
30006e0e:	7c59      	ldrb	r1, [r3, #17]
30006e10:	9133      	str	r1, [sp, #204]	; 0xcc
30006e12:	7c99      	ldrb	r1, [r3, #18]
30006e14:	9134      	str	r1, [sp, #208]	; 0xd0
30006e16:	7cd9      	ldrb	r1, [r3, #19]
30006e18:	9135      	str	r1, [sp, #212]	; 0xd4
30006e1a:	7d19      	ldrb	r1, [r3, #20]
30006e1c:	9136      	str	r1, [sp, #216]	; 0xd8
30006e1e:	7d59      	ldrb	r1, [r3, #21]
30006e20:	9137      	str	r1, [sp, #220]	; 0xdc
30006e22:	7d99      	ldrb	r1, [r3, #22]
30006e24:	9138      	str	r1, [sp, #224]	; 0xe0
30006e26:	7dd9      	ldrb	r1, [r3, #23]
30006e28:	9139      	str	r1, [sp, #228]	; 0xe4
30006e2a:	7e19      	ldrb	r1, [r3, #24]
30006e2c:	913a      	str	r1, [sp, #232]	; 0xe8
30006e2e:	7e59      	ldrb	r1, [r3, #25]
30006e30:	913b      	str	r1, [sp, #236]	; 0xec
30006e32:	7e99      	ldrb	r1, [r3, #26]
30006e34:	913c      	str	r1, [sp, #240]	; 0xf0
30006e36:	7ed9      	ldrb	r1, [r3, #27]
30006e38:	913d      	str	r1, [sp, #244]	; 0xf4
30006e3a:	7f19      	ldrb	r1, [r3, #28]
30006e3c:	913e      	str	r1, [sp, #248]	; 0xf8
30006e3e:	7f59      	ldrb	r1, [r3, #29]
30006e40:	913f      	str	r1, [sp, #252]	; 0xfc
30006e42:	7f99      	ldrb	r1, [r3, #30]
30006e44:	7fdb      	ldrb	r3, [r3, #31]
30006e46:	9140      	str	r1, [sp, #256]	; 0x100
30006e48:	4651      	mov	r1, sl
30006e4a:	9341      	str	r3, [sp, #260]	; 0x104
30006e4c:	4653      	mov	r3, sl
30006e4e:	9409      	str	r4, [sp, #36]	; 0x24
30006e50:	941c      	str	r4, [sp, #112]	; 0x70
30006e52:	941b      	str	r4, [sp, #108]	; 0x6c
30006e54:	940a      	str	r4, [sp, #40]	; 0x28
30006e56:	e9cd 4405 	strd	r4, r4, [sp, #20]
30006e5a:	e9cd 4403 	strd	r4, r4, [sp, #12]
30006e5e:	e9cd 4401 	strd	r4, r4, [sp, #4]
30006e62:	e9cd 4407 	strd	r4, r4, [sp, #28]
30006e66:	e9cd 4419 	strd	r4, r4, [sp, #100]	; 0x64
30006e6a:	e9cd 4417 	strd	r4, r4, [sp, #92]	; 0x5c
30006e6e:	e9cd 4415 	strd	r4, r4, [sp, #84]	; 0x54
30006e72:	e9cd 4413 	strd	r4, r4, [sp, #76]	; 0x4c
30006e76:	e9cd 4411 	strd	r4, r4, [sp, #68]	; 0x44
30006e7a:	e9cd 440f 	strd	r4, r4, [sp, #60]	; 0x3c
30006e7e:	e9cd 440d 	strd	r4, r4, [sp, #52]	; 0x34
30006e82:	e9cd 440b 	strd	r4, r4, [sp, #44]	; 0x2c
30006e86:	b94a      	cbnz	r2, 30006e9c <rxi316_perf_tune+0x104>
30006e88:	3101      	adds	r1, #1
30006e8a:	4699      	mov	r9, r3
30006e8c:	3301      	adds	r3, #1
30006e8e:	2b20      	cmp	r3, #32
30006e90:	d069      	beq.n	30006f66 <rxi316_perf_tune+0x1ce>
30006e92:	aa22      	add	r2, sp, #136	; 0x88
30006e94:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
30006e98:	2a00      	cmp	r2, #0
30006e9a:	d0f5      	beq.n	30006e88 <rxi316_perf_tune+0xf0>
30006e9c:	2a01      	cmp	r2, #1
30006e9e:	d05d      	beq.n	30006f5c <rxi316_perf_tune+0x1c4>
30006ea0:	2a02      	cmp	r2, #2
30006ea2:	d06e      	beq.n	30006f82 <rxi316_perf_tune+0x1ea>
30006ea4:	2a03      	cmp	r2, #3
30006ea6:	d06f      	beq.n	30006f88 <rxi316_perf_tune+0x1f0>
30006ea8:	2a04      	cmp	r2, #4
30006eaa:	d070      	beq.n	30006f8e <rxi316_perf_tune+0x1f6>
30006eac:	2a05      	cmp	r2, #5
30006eae:	d071      	beq.n	30006f94 <rxi316_perf_tune+0x1fc>
30006eb0:	2a06      	cmp	r2, #6
30006eb2:	d072      	beq.n	30006f9a <rxi316_perf_tune+0x202>
30006eb4:	2a07      	cmp	r2, #7
30006eb6:	f000 82ac 	beq.w	30007412 <rxi316_perf_tune+0x67a>
30006eba:	2a08      	cmp	r2, #8
30006ebc:	f000 837e 	beq.w	300075bc <rxi316_perf_tune+0x824>
30006ec0:	2a09      	cmp	r2, #9
30006ec2:	f000 8383 	beq.w	300075cc <rxi316_perf_tune+0x834>
30006ec6:	2a0a      	cmp	r2, #10
30006ec8:	f000 838a 	beq.w	300075e0 <rxi316_perf_tune+0x848>
30006ecc:	2a0b      	cmp	r2, #11
30006ece:	f000 8383 	beq.w	300075d8 <rxi316_perf_tune+0x840>
30006ed2:	2a0c      	cmp	r2, #12
30006ed4:	f000 8388 	beq.w	300075e8 <rxi316_perf_tune+0x850>
30006ed8:	2a0d      	cmp	r2, #13
30006eda:	f000 838d 	beq.w	300075f8 <rxi316_perf_tune+0x860>
30006ede:	2a0e      	cmp	r2, #14
30006ee0:	f000 8386 	beq.w	300075f0 <rxi316_perf_tune+0x858>
30006ee4:	2a0f      	cmp	r2, #15
30006ee6:	f000 838b 	beq.w	30007600 <rxi316_perf_tune+0x868>
30006eea:	2a10      	cmp	r2, #16
30006eec:	f000 838c 	beq.w	30007608 <rxi316_perf_tune+0x870>
30006ef0:	2a11      	cmp	r2, #17
30006ef2:	f000 838b 	beq.w	3000760c <rxi316_perf_tune+0x874>
30006ef6:	2a12      	cmp	r2, #18
30006ef8:	f000 838a 	beq.w	30007610 <rxi316_perf_tune+0x878>
30006efc:	2a13      	cmp	r2, #19
30006efe:	f000 838b 	beq.w	30007618 <rxi316_perf_tune+0x880>
30006f02:	2a14      	cmp	r2, #20
30006f04:	f000 8386 	beq.w	30007614 <rxi316_perf_tune+0x87c>
30006f08:	2a15      	cmp	r2, #21
30006f0a:	f000 838d 	beq.w	30007628 <rxi316_perf_tune+0x890>
30006f0e:	2a16      	cmp	r2, #22
30006f10:	f000 8388 	beq.w	30007624 <rxi316_perf_tune+0x88c>
30006f14:	2a17      	cmp	r2, #23
30006f16:	f000 8397 	beq.w	30007648 <rxi316_perf_tune+0x8b0>
30006f1a:	2a18      	cmp	r2, #24
30006f1c:	f000 8392 	beq.w	30007644 <rxi316_perf_tune+0x8ac>
30006f20:	2a19      	cmp	r2, #25
30006f22:	f000 838d 	beq.w	30007640 <rxi316_perf_tune+0x8a8>
30006f26:	2a1a      	cmp	r2, #26
30006f28:	f000 8388 	beq.w	3000763c <rxi316_perf_tune+0x8a4>
30006f2c:	2a1b      	cmp	r2, #27
30006f2e:	f000 8383 	beq.w	30007638 <rxi316_perf_tune+0x8a0>
30006f32:	2a1c      	cmp	r2, #28
30006f34:	f000 837e 	beq.w	30007634 <rxi316_perf_tune+0x89c>
30006f38:	2a1d      	cmp	r2, #29
30006f3a:	f000 8379 	beq.w	30007630 <rxi316_perf_tune+0x898>
30006f3e:	2a1e      	cmp	r2, #30
30006f40:	f000 8374 	beq.w	3000762c <rxi316_perf_tune+0x894>
30006f44:	2a1f      	cmp	r2, #31
30006f46:	f000 836b 	beq.w	30007620 <rxi316_perf_tune+0x888>
30006f4a:	2a20      	cmp	r2, #32
30006f4c:	f000 8366 	beq.w	3000761c <rxi316_perf_tune+0x884>
30006f50:	9809      	ldr	r0, [sp, #36]	; 0x24
30006f52:	2a21      	cmp	r2, #33	; 0x21
30006f54:	bf08      	it	eq
30006f56:	4618      	moveq	r0, r3
30006f58:	9009      	str	r0, [sp, #36]	; 0x24
30006f5a:	e797      	b.n	30006e8c <rxi316_perf_tune+0xf4>
30006f5c:	4698      	mov	r8, r3
30006f5e:	3301      	adds	r3, #1
30006f60:	3101      	adds	r1, #1
30006f62:	2b20      	cmp	r3, #32
30006f64:	d195      	bne.n	30006e92 <rxi316_perf_tune+0xfa>
30006f66:	f89c 2002 	ldrb.w	r2, [ip, #2]
30006f6a:	f8dc 3008 	ldr.w	r3, [ip, #8]
30006f6e:	b1ba      	cbz	r2, 30006fa0 <rxi316_perf_tune+0x208>
30006f70:	2a01      	cmp	r2, #1
30006f72:	f000 832e 	beq.w	300075d2 <rxi316_perf_tune+0x83a>
30006f76:	2a03      	cmp	r2, #3
30006f78:	bf0c      	ite	eq
30006f7a:	2204      	moveq	r2, #4
30006f7c:	2203      	movne	r2, #3
30006f7e:	921e      	str	r2, [sp, #120]	; 0x78
30006f80:	e010      	b.n	30006fa4 <rxi316_perf_tune+0x20c>
30006f82:	3101      	adds	r1, #1
30006f84:	461f      	mov	r7, r3
30006f86:	e781      	b.n	30006e8c <rxi316_perf_tune+0xf4>
30006f88:	3101      	adds	r1, #1
30006f8a:	469b      	mov	fp, r3
30006f8c:	e77e      	b.n	30006e8c <rxi316_perf_tune+0xf4>
30006f8e:	3101      	adds	r1, #1
30006f90:	9301      	str	r3, [sp, #4]
30006f92:	e77b      	b.n	30006e8c <rxi316_perf_tune+0xf4>
30006f94:	3101      	adds	r1, #1
30006f96:	9302      	str	r3, [sp, #8]
30006f98:	e778      	b.n	30006e8c <rxi316_perf_tune+0xf4>
30006f9a:	3101      	adds	r1, #1
30006f9c:	9303      	str	r3, [sp, #12]
30006f9e:	e775      	b.n	30006e8c <rxi316_perf_tune+0xf4>
30006fa0:	2201      	movs	r2, #1
30006fa2:	921e      	str	r2, [sp, #120]	; 0x78
30006fa4:	3b02      	subs	r3, #2
30006fa6:	428b      	cmp	r3, r1
30006fa8:	d005      	beq.n	30006fb6 <rxi316_perf_tune+0x21e>
30006faa:	4bab      	ldr	r3, [pc, #684]	; (30007258 <rxi316_perf_tune+0x4c0>)
30006fac:	2245      	movs	r2, #69	; 0x45
30006fae:	49ab      	ldr	r1, [pc, #684]	; (3000725c <rxi316_perf_tune+0x4c4>)
30006fb0:	2002      	movs	r0, #2
30006fb2:	f002 fa5d 	bl	30009470 <rtk_log_write>
30006fb6:	9b1e      	ldr	r3, [sp, #120]	; 0x78
30006fb8:	459a      	cmp	sl, r3
30006fba:	d005      	beq.n	30006fc8 <rxi316_perf_tune+0x230>
30006fbc:	4ba8      	ldr	r3, [pc, #672]	; (30007260 <rxi316_perf_tune+0x4c8>)
30006fbe:	2245      	movs	r2, #69	; 0x45
30006fc0:	49a6      	ldr	r1, [pc, #664]	; (3000725c <rxi316_perf_tune+0x4c4>)
30006fc2:	2002      	movs	r0, #2
30006fc4:	f002 fa54 	bl	30009470 <rtk_log_write>
30006fc8:	9b0a      	ldr	r3, [sp, #40]	; 0x28
30006fca:	2b20      	cmp	r3, #32
30006fcc:	f000 82ef 	beq.w	300075ae <rxi316_perf_tune+0x816>
30006fd0:	1b5a      	subs	r2, r3, r5
30006fd2:	3a05      	subs	r2, #5
30006fd4:	f002 030f 	and.w	r3, r2, #15
30006fd8:	930a      	str	r3, [sp, #40]	; 0x28
30006fda:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
30006fdc:	2b20      	cmp	r3, #32
30006fde:	f000 82e4 	beq.w	300075aa <rxi316_perf_tune+0x812>
30006fe2:	1b5a      	subs	r2, r3, r5
30006fe4:	3a06      	subs	r2, #6
30006fe6:	0112      	lsls	r2, r2, #4
30006fe8:	b2d2      	uxtb	r2, r2
30006fea:	9b0c      	ldr	r3, [sp, #48]	; 0x30
30006fec:	2b20      	cmp	r3, #32
30006fee:	f000 82d8 	beq.w	300075a2 <rxi316_perf_tune+0x80a>
30006ff2:	1b5b      	subs	r3, r3, r5
30006ff4:	3b07      	subs	r3, #7
30006ff6:	021b      	lsls	r3, r3, #8
30006ff8:	f403 6370 	and.w	r3, r3, #3840	; 0xf00
30006ffc:	930b      	str	r3, [sp, #44]	; 0x2c
30006ffe:	9b0d      	ldr	r3, [sp, #52]	; 0x34
30007000:	2b20      	cmp	r3, #32
30007002:	f000 8209 	beq.w	30007418 <rxi316_perf_tune+0x680>
30007006:	1b5b      	subs	r3, r3, r5
30007008:	3b08      	subs	r3, #8
3000700a:	031b      	lsls	r3, r3, #12
3000700c:	b29b      	uxth	r3, r3
3000700e:	930c      	str	r3, [sp, #48]	; 0x30
30007010:	9b0e      	ldr	r3, [sp, #56]	; 0x38
30007012:	2b20      	cmp	r3, #32
30007014:	f000 8207 	beq.w	30007426 <rxi316_perf_tune+0x68e>
30007018:	1b5b      	subs	r3, r3, r5
3000701a:	3b09      	subs	r3, #9
3000701c:	041b      	lsls	r3, r3, #16
3000701e:	f403 2370 	and.w	r3, r3, #983040	; 0xf0000
30007022:	930d      	str	r3, [sp, #52]	; 0x34
30007024:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
30007026:	2b20      	cmp	r3, #32
30007028:	f000 8204 	beq.w	30007434 <rxi316_perf_tune+0x69c>
3000702c:	1b5b      	subs	r3, r3, r5
3000702e:	3b0a      	subs	r3, #10
30007030:	051b      	lsls	r3, r3, #20
30007032:	f403 0370 	and.w	r3, r3, #15728640	; 0xf00000
30007036:	930e      	str	r3, [sp, #56]	; 0x38
30007038:	9b10      	ldr	r3, [sp, #64]	; 0x40
3000703a:	2b20      	cmp	r3, #32
3000703c:	f000 8201 	beq.w	30007442 <rxi316_perf_tune+0x6aa>
30007040:	1b5b      	subs	r3, r3, r5
30007042:	3b0b      	subs	r3, #11
30007044:	061b      	lsls	r3, r3, #24
30007046:	f003 6370 	and.w	r3, r3, #251658240	; 0xf000000
3000704a:	930f      	str	r3, [sp, #60]	; 0x3c
3000704c:	9b11      	ldr	r3, [sp, #68]	; 0x44
3000704e:	2b20      	cmp	r3, #32
30007050:	f000 81fe 	beq.w	30007450 <rxi316_perf_tune+0x6b8>
30007054:	1b5b      	subs	r3, r3, r5
30007056:	3b0c      	subs	r3, #12
30007058:	071b      	lsls	r3, r3, #28
3000705a:	9310      	str	r3, [sp, #64]	; 0x40
3000705c:	9b12      	ldr	r3, [sp, #72]	; 0x48
3000705e:	2b20      	cmp	r3, #32
30007060:	f000 81fd 	beq.w	3000745e <rxi316_perf_tune+0x6c6>
30007064:	1b5b      	subs	r3, r3, r5
30007066:	3b0d      	subs	r3, #13
30007068:	f003 030f 	and.w	r3, r3, #15
3000706c:	9311      	str	r3, [sp, #68]	; 0x44
3000706e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
30007070:	2b20      	cmp	r3, #32
30007072:	f000 81fa 	beq.w	3000746a <rxi316_perf_tune+0x6d2>
30007076:	1b5b      	subs	r3, r3, r5
30007078:	3b0e      	subs	r3, #14
3000707a:	011b      	lsls	r3, r3, #4
3000707c:	b2db      	uxtb	r3, r3
3000707e:	9312      	str	r3, [sp, #72]	; 0x48
30007080:	9b14      	ldr	r3, [sp, #80]	; 0x50
30007082:	2b20      	cmp	r3, #32
30007084:	f000 81f7 	beq.w	30007476 <rxi316_perf_tune+0x6de>
30007088:	1b5b      	subs	r3, r3, r5
3000708a:	3b0f      	subs	r3, #15
3000708c:	021b      	lsls	r3, r3, #8
3000708e:	f403 6370 	and.w	r3, r3, #3840	; 0xf00
30007092:	9313      	str	r3, [sp, #76]	; 0x4c
30007094:	9b15      	ldr	r3, [sp, #84]	; 0x54
30007096:	2b20      	cmp	r3, #32
30007098:	f000 81f4 	beq.w	30007484 <rxi316_perf_tune+0x6ec>
3000709c:	1b5b      	subs	r3, r3, r5
3000709e:	031b      	lsls	r3, r3, #12
300070a0:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
300070a4:	9321      	str	r3, [sp, #132]	; 0x84
300070a6:	9b16      	ldr	r3, [sp, #88]	; 0x58
300070a8:	2b20      	cmp	r3, #32
300070aa:	f000 81f2 	beq.w	30007492 <rxi316_perf_tune+0x6fa>
300070ae:	1b5b      	subs	r3, r3, r5
300070b0:	3b11      	subs	r3, #17
300070b2:	041b      	lsls	r3, r3, #16
300070b4:	f403 2370 	and.w	r3, r3, #983040	; 0xf0000
300070b8:	9320      	str	r3, [sp, #128]	; 0x80
300070ba:	9b17      	ldr	r3, [sp, #92]	; 0x5c
300070bc:	2b20      	cmp	r3, #32
300070be:	f000 81ef 	beq.w	300074a0 <rxi316_perf_tune+0x708>
300070c2:	1b5b      	subs	r3, r3, r5
300070c4:	3b12      	subs	r3, #18
300070c6:	051b      	lsls	r3, r3, #20
300070c8:	f403 0370 	and.w	r3, r3, #15728640	; 0xf00000
300070cc:	931f      	str	r3, [sp, #124]	; 0x7c
300070ce:	9b18      	ldr	r3, [sp, #96]	; 0x60
300070d0:	2b20      	cmp	r3, #32
300070d2:	f000 81ec 	beq.w	300074ae <rxi316_perf_tune+0x716>
300070d6:	1b5b      	subs	r3, r3, r5
300070d8:	3b13      	subs	r3, #19
300070da:	061b      	lsls	r3, r3, #24
300070dc:	f003 6370 	and.w	r3, r3, #251658240	; 0xf000000
300070e0:	931e      	str	r3, [sp, #120]	; 0x78
300070e2:	9b19      	ldr	r3, [sp, #100]	; 0x64
300070e4:	2b20      	cmp	r3, #32
300070e6:	f000 81e9 	beq.w	300074bc <rxi316_perf_tune+0x724>
300070ea:	1b5b      	subs	r3, r3, r5
300070ec:	3b14      	subs	r3, #20
300070ee:	071b      	lsls	r3, r3, #28
300070f0:	9319      	str	r3, [sp, #100]	; 0x64
300070f2:	9b1a      	ldr	r3, [sp, #104]	; 0x68
300070f4:	2b20      	cmp	r3, #32
300070f6:	f000 81e8 	beq.w	300074ca <rxi316_perf_tune+0x732>
300070fa:	1b5b      	subs	r3, r3, r5
300070fc:	3b15      	subs	r3, #21
300070fe:	f003 030f 	and.w	r3, r3, #15
30007102:	9318      	str	r3, [sp, #96]	; 0x60
30007104:	9b07      	ldr	r3, [sp, #28]
30007106:	2b20      	cmp	r3, #32
30007108:	f000 81e5 	beq.w	300074d6 <rxi316_perf_tune+0x73e>
3000710c:	1b5b      	subs	r3, r3, r5
3000710e:	3b02      	subs	r3, #2
30007110:	f003 031f 	and.w	r3, r3, #31
30007114:	9317      	str	r3, [sp, #92]	; 0x5c
30007116:	9b08      	ldr	r3, [sp, #32]
30007118:	2b20      	cmp	r3, #32
3000711a:	f000 81e2 	beq.w	300074e2 <rxi316_perf_tune+0x74a>
3000711e:	1b5b      	subs	r3, r3, r5
30007120:	3b02      	subs	r3, #2
30007122:	015b      	lsls	r3, r3, #5
30007124:	f403 7378 	and.w	r3, r3, #992	; 0x3e0
30007128:	9316      	str	r3, [sp, #88]	; 0x58
3000712a:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
3000712c:	2b20      	cmp	r3, #32
3000712e:	f000 81df 	beq.w	300074f0 <rxi316_perf_tune+0x758>
30007132:	1b5b      	subs	r3, r3, r5
30007134:	f1b9 0f20 	cmp.w	r9, #32
30007138:	f1a3 0302 	sub.w	r3, r3, #2
3000713c:	ea4f 2383 	mov.w	r3, r3, lsl #10
30007140:	f403 43f8 	and.w	r3, r3, #31744	; 0x7c00
30007144:	9315      	str	r3, [sp, #84]	; 0x54
30007146:	f000 81da 	beq.w	300074fe <rxi316_perf_tune+0x766>
3000714a:	eba9 0105 	sub.w	r1, r9, r5
3000714e:	f1b8 0f20 	cmp.w	r8, #32
30007152:	f1a1 0102 	sub.w	r1, r1, #2
30007156:	f001 030f 	and.w	r3, r1, #15
3000715a:	9314      	str	r3, [sp, #80]	; 0x50
3000715c:	f000 81d5 	beq.w	3000750a <rxi316_perf_tune+0x772>
30007160:	eba8 0105 	sub.w	r1, r8, r5
30007164:	2f20      	cmp	r7, #32
30007166:	f1a1 0103 	sub.w	r1, r1, #3
3000716a:	ea4f 1101 	mov.w	r1, r1, lsl #4
3000716e:	b2c9      	uxtb	r1, r1
30007170:	f000 81d0 	beq.w	30007514 <rxi316_perf_tune+0x77c>
30007174:	1b7b      	subs	r3, r7, r5
30007176:	f1bb 0f20 	cmp.w	fp, #32
3000717a:	f1a3 0304 	sub.w	r3, r3, #4
3000717e:	ea4f 2303 	mov.w	r3, r3, lsl #8
30007182:	f403 6370 	and.w	r3, r3, #3840	; 0xf00
30007186:	9308      	str	r3, [sp, #32]
30007188:	f000 81cb 	beq.w	30007522 <rxi316_perf_tune+0x78a>
3000718c:	ebab 0305 	sub.w	r3, fp, r5
30007190:	3b05      	subs	r3, #5
30007192:	031b      	lsls	r3, r3, #12
30007194:	b29b      	uxth	r3, r3
30007196:	9307      	str	r3, [sp, #28]
30007198:	9b01      	ldr	r3, [sp, #4]
3000719a:	2b20      	cmp	r3, #32
3000719c:	f000 81c8 	beq.w	30007530 <rxi316_perf_tune+0x798>
300071a0:	eba3 0c05 	sub.w	ip, r3, r5
300071a4:	9b02      	ldr	r3, [sp, #8]
300071a6:	f1ac 0c06 	sub.w	ip, ip, #6
300071aa:	2b20      	cmp	r3, #32
300071ac:	ea4f 4c0c 	mov.w	ip, ip, lsl #16
300071b0:	f40c 2c70 	and.w	ip, ip, #983040	; 0xf0000
300071b4:	f000 81c2 	beq.w	3000753c <rxi316_perf_tune+0x7a4>
300071b8:	eba3 0e05 	sub.w	lr, r3, r5
300071bc:	9b03      	ldr	r3, [sp, #12]
300071be:	f1ae 0e07 	sub.w	lr, lr, #7
300071c2:	2b20      	cmp	r3, #32
300071c4:	ea4f 5e0e 	mov.w	lr, lr, lsl #20
300071c8:	f40e 0e70 	and.w	lr, lr, #15728640	; 0xf00000
300071cc:	f000 81bc 	beq.w	30007548 <rxi316_perf_tune+0x7b0>
300071d0:	eba3 0805 	sub.w	r8, r3, r5
300071d4:	9b04      	ldr	r3, [sp, #16]
300071d6:	f1a8 0808 	sub.w	r8, r8, #8
300071da:	2b20      	cmp	r3, #32
300071dc:	ea4f 6808 	mov.w	r8, r8, lsl #24
300071e0:	f008 6870 	and.w	r8, r8, #251658240	; 0xf000000
300071e4:	f000 81b6 	beq.w	30007554 <rxi316_perf_tune+0x7bc>
300071e8:	1b5b      	subs	r3, r3, r5
300071ea:	3b09      	subs	r3, #9
300071ec:	071b      	lsls	r3, r3, #28
300071ee:	9302      	str	r3, [sp, #8]
300071f0:	9b05      	ldr	r3, [sp, #20]
300071f2:	2b20      	cmp	r3, #32
300071f4:	f000 81b5 	beq.w	30007562 <rxi316_perf_tune+0x7ca>
300071f8:	eba3 0905 	sub.w	r9, r3, r5
300071fc:	9b06      	ldr	r3, [sp, #24]
300071fe:	f1a9 090a 	sub.w	r9, r9, #10
30007202:	2b20      	cmp	r3, #32
30007204:	f009 090f 	and.w	r9, r9, #15
30007208:	f000 81b1 	beq.w	3000756e <rxi316_perf_tune+0x7d6>
3000720c:	1b58      	subs	r0, r3, r5
3000720e:	9b1c      	ldr	r3, [sp, #112]	; 0x70
30007210:	380b      	subs	r0, #11
30007212:	2b20      	cmp	r3, #32
30007214:	ea4f 1000 	mov.w	r0, r0, lsl #4
30007218:	b2c0      	uxtb	r0, r0
3000721a:	f000 81ad 	beq.w	30007578 <rxi316_perf_tune+0x7e0>
3000721e:	eba3 0b05 	sub.w	fp, r3, r5
30007222:	9b09      	ldr	r3, [sp, #36]	; 0x24
30007224:	f1ab 0b02 	sub.w	fp, fp, #2
30007228:	2b20      	cmp	r3, #32
3000722a:	f00b 0b1f 	and.w	fp, fp, #31
3000722e:	f000 81a9 	beq.w	30007584 <rxi316_perf_tune+0x7ec>
30007232:	eba3 0a05 	sub.w	sl, r3, r5
30007236:	9b1d      	ldr	r3, [sp, #116]	; 0x74
30007238:	f1aa 0a02 	sub.w	sl, sl, #2
3000723c:	2b20      	cmp	r3, #32
3000723e:	f00a 0a1f 	and.w	sl, sl, #31
30007242:	f000 81a5 	beq.w	30007590 <rxi316_perf_tune+0x7f8>
30007246:	1b5f      	subs	r7, r3, r5
30007248:	2c20      	cmp	r4, #32
3000724a:	f1a7 0702 	sub.w	r7, r7, #2
3000724e:	f007 071f 	and.w	r7, r7, #31
30007252:	f000 81a2 	beq.w	3000759a <rxi316_perf_tune+0x802>
30007256:	e005      	b.n	30007264 <rxi316_perf_tune+0x4cc>
30007258:	3000c380 	.word	0x3000c380
3000725c:	3000c37c 	.word	0x3000c37c
30007260:	3000c3bc 	.word	0x3000c3bc
30007264:	1b63      	subs	r3, r4, r5
30007266:	3b02      	subs	r3, #2
30007268:	015b      	lsls	r3, r3, #5
3000726a:	f403 7378 	and.w	r3, r3, #992	; 0x3e0
3000726e:	9301      	str	r3, [sp, #4]
30007270:	9c0a      	ldr	r4, [sp, #40]	; 0x28
30007272:	ea40 0009 	orr.w	r0, r0, r9
30007276:	4314      	orrs	r4, r2
30007278:	4622      	mov	r2, r4
3000727a:	e9dd 4511 	ldrd	r4, r5, [sp, #68]	; 0x44
3000727e:	432c      	orrs	r4, r5
30007280:	9d14      	ldr	r5, [sp, #80]	; 0x50
30007282:	4329      	orrs	r1, r5
30007284:	e9dd 5316 	ldrd	r5, r3, [sp, #88]	; 0x58
30007288:	431d      	orrs	r5, r3
3000728a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
3000728c:	431a      	orrs	r2, r3
3000728e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
30007290:	431c      	orrs	r4, r3
30007292:	9b08      	ldr	r3, [sp, #32]
30007294:	4319      	orrs	r1, r3
30007296:	9b15      	ldr	r3, [sp, #84]	; 0x54
30007298:	431d      	orrs	r5, r3
3000729a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
3000729c:	431a      	orrs	r2, r3
3000729e:	9b21      	ldr	r3, [sp, #132]	; 0x84
300072a0:	431c      	orrs	r4, r3
300072a2:	9b07      	ldr	r3, [sp, #28]
300072a4:	4319      	orrs	r1, r3
300072a6:	9b0d      	ldr	r3, [sp, #52]	; 0x34
300072a8:	431a      	orrs	r2, r3
300072aa:	9b20      	ldr	r3, [sp, #128]	; 0x80
300072ac:	ea41 010c 	orr.w	r1, r1, ip
300072b0:	431c      	orrs	r4, r3
300072b2:	9b01      	ldr	r3, [sp, #4]
300072b4:	ea41 010e 	orr.w	r1, r1, lr
300072b8:	431f      	orrs	r7, r3
300072ba:	9b0e      	ldr	r3, [sp, #56]	; 0x38
300072bc:	ea41 0108 	orr.w	r1, r1, r8
300072c0:	431a      	orrs	r2, r3
300072c2:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
300072c4:	431c      	orrs	r4, r3
300072c6:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
300072c8:	431a      	orrs	r2, r3
300072ca:	9b1e      	ldr	r3, [sp, #120]	; 0x78
300072cc:	4323      	orrs	r3, r4
300072ce:	9c10      	ldr	r4, [sp, #64]	; 0x40
300072d0:	4322      	orrs	r2, r4
300072d2:	9c19      	ldr	r4, [sp, #100]	; 0x64
300072d4:	4323      	orrs	r3, r4
300072d6:	9c02      	ldr	r4, [sp, #8]
300072d8:	430c      	orrs	r4, r1
300072da:	49ba      	ldr	r1, [pc, #744]	; (300075c4 <rxi316_perf_tune+0x82c>)
300072dc:	f8c1 2400 	str.w	r2, [r1, #1024]	; 0x400
300072e0:	f8c1 3404 	str.w	r3, [r1, #1028]	; 0x404
300072e4:	9b18      	ldr	r3, [sp, #96]	; 0x60
300072e6:	f8c1 3408 	str.w	r3, [r1, #1032]	; 0x408
300072ea:	f8c1 540c 	str.w	r5, [r1, #1036]	; 0x40c
300072ee:	f8c1 4410 	str.w	r4, [r1, #1040]	; 0x410
300072f2:	f8c1 0414 	str.w	r0, [r1, #1044]	; 0x414
300072f6:	f8c1 b418 	str.w	fp, [r1, #1048]	; 0x418
300072fa:	f8c1 a41c 	str.w	sl, [r1, #1052]	; 0x41c
300072fe:	f8c1 7420 	str.w	r7, [r1, #1056]	; 0x420
30007302:	68f3      	ldr	r3, [r6, #12]
30007304:	689a      	ldr	r2, [r3, #8]
30007306:	e9d2 3200 	ldrd	r3, r2, [r2]
3000730a:	f003 0301 	and.w	r3, r3, #1
3000730e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
30007312:	f8c1 3460 	str.w	r3, [r1, #1120]	; 0x460
30007316:	68f3      	ldr	r3, [r6, #12]
30007318:	689a      	ldr	r2, [r3, #8]
3000731a:	7a13      	ldrb	r3, [r2, #8]
3000731c:	6950      	ldr	r0, [r2, #20]
3000731e:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
30007322:	e9d2 0203 	ldrd	r0, r2, [r2, #12]
30007326:	0200      	lsls	r0, r0, #8
30007328:	0412      	lsls	r2, r2, #16
3000732a:	b280      	uxth	r0, r0
3000732c:	f402 027f 	and.w	r2, r2, #16711680	; 0xff0000
30007330:	4303      	orrs	r3, r0
30007332:	4313      	orrs	r3, r2
30007334:	f8c1 3464 	str.w	r3, [r1, #1124]	; 0x464
30007338:	68f3      	ldr	r3, [r6, #12]
3000733a:	6898      	ldr	r0, [r3, #8]
3000733c:	e9d0 3207 	ldrd	r3, r2, [r0, #28]
30007340:	7e00      	ldrb	r0, [r0, #24]
30007342:	021b      	lsls	r3, r3, #8
30007344:	0412      	lsls	r2, r2, #16
30007346:	b29b      	uxth	r3, r3
30007348:	f402 027f 	and.w	r2, r2, #16711680	; 0xff0000
3000734c:	4313      	orrs	r3, r2
3000734e:	4303      	orrs	r3, r0
30007350:	f8c1 3468 	str.w	r3, [r1, #1128]	; 0x468
30007354:	68f3      	ldr	r3, [r6, #12]
30007356:	689a      	ldr	r2, [r3, #8]
30007358:	e9d2 2309 	ldrd	r2, r3, [r2, #36]	; 0x24
3000735c:	041b      	lsls	r3, r3, #16
3000735e:	f002 023f 	and.w	r2, r2, #63	; 0x3f
30007362:	f403 2370 	and.w	r3, r3, #983040	; 0xf0000
30007366:	4313      	orrs	r3, r2
30007368:	f8c1 3480 	str.w	r3, [r1, #1152]	; 0x480
3000736c:	6833      	ldr	r3, [r6, #0]
3000736e:	781b      	ldrb	r3, [r3, #0]
30007370:	2b03      	cmp	r3, #3
30007372:	f000 811f 	beq.w	300075b4 <rxi316_perf_tune+0x81c>
30007376:	68f3      	ldr	r3, [r6, #12]
30007378:	6899      	ldr	r1, [r3, #8]
3000737a:	6b0b      	ldr	r3, [r1, #48]	; 0x30
3000737c:	005b      	lsls	r3, r3, #1
3000737e:	f003 0302 	and.w	r3, r3, #2
30007382:	6b8a      	ldr	r2, [r1, #56]	; 0x38
30007384:	6ac8      	ldr	r0, [r1, #44]	; 0x2c
30007386:	0412      	lsls	r2, r2, #16
30007388:	6b49      	ldr	r1, [r1, #52]	; 0x34
3000738a:	f000 0001 	and.w	r0, r0, #1
3000738e:	f402 2270 	and.w	r2, r2, #983040	; 0xf0000
30007392:	0209      	lsls	r1, r1, #8
30007394:	431a      	orrs	r2, r3
30007396:	f401 6170 	and.w	r1, r1, #3840	; 0xf00
3000739a:	4b8a      	ldr	r3, [pc, #552]	; (300075c4 <rxi316_perf_tune+0x82c>)
3000739c:	4302      	orrs	r2, r0
3000739e:	488a      	ldr	r0, [pc, #552]	; (300075c8 <rxi316_perf_tune+0x830>)
300073a0:	430a      	orrs	r2, r1
300073a2:	4310      	orrs	r0, r2
300073a4:	f8c3 0484 	str.w	r0, [r3, #1156]	; 0x484
300073a8:	68f2      	ldr	r2, [r6, #12]
300073aa:	6892      	ldr	r2, [r2, #8]
300073ac:	6bd2      	ldr	r2, [r2, #60]	; 0x3c
300073ae:	f8c3 2488 	str.w	r2, [r3, #1160]	; 0x488
300073b2:	68f2      	ldr	r2, [r6, #12]
300073b4:	6892      	ldr	r2, [r2, #8]
300073b6:	6c12      	ldr	r2, [r2, #64]	; 0x40
300073b8:	f8c3 248c 	str.w	r2, [r3, #1164]	; 0x48c
300073bc:	68f2      	ldr	r2, [r6, #12]
300073be:	6892      	ldr	r2, [r2, #8]
300073c0:	6c52      	ldr	r2, [r2, #68]	; 0x44
300073c2:	f8c3 2490 	str.w	r2, [r3, #1168]	; 0x490
300073c6:	68f2      	ldr	r2, [r6, #12]
300073c8:	6892      	ldr	r2, [r2, #8]
300073ca:	6c92      	ldr	r2, [r2, #72]	; 0x48
300073cc:	f8c3 2494 	str.w	r2, [r3, #1172]	; 0x494
300073d0:	68f2      	ldr	r2, [r6, #12]
300073d2:	6892      	ldr	r2, [r2, #8]
300073d4:	6cd2      	ldr	r2, [r2, #76]	; 0x4c
300073d6:	f8c3 2498 	str.w	r2, [r3, #1176]	; 0x498
300073da:	68f2      	ldr	r2, [r6, #12]
300073dc:	6892      	ldr	r2, [r2, #8]
300073de:	6d12      	ldr	r2, [r2, #80]	; 0x50
300073e0:	f002 020f 	and.w	r2, r2, #15
300073e4:	f8c3 24a0 	str.w	r2, [r3, #1184]	; 0x4a0
300073e8:	f8d3 2470 	ldr.w	r2, [r3, #1136]	; 0x470
300073ec:	f022 023f 	bic.w	r2, r2, #63	; 0x3f
300073f0:	f042 0204 	orr.w	r2, r2, #4
300073f4:	f8c3 2470 	str.w	r2, [r3, #1136]	; 0x470
300073f8:	f8d3 2474 	ldr.w	r2, [r3, #1140]	; 0x474
300073fc:	f422 4270 	bic.w	r2, r2, #61440	; 0xf000
30007400:	f442 4280 	orr.w	r2, r2, #16384	; 0x4000
30007404:	f8c3 2474 	str.w	r2, [r3, #1140]	; 0x474
30007408:	b043      	add	sp, #268	; 0x10c
3000740a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
3000740e:	2502      	movs	r5, #2
30007410:	e4d1      	b.n	30006db6 <rxi316_perf_tune+0x1e>
30007412:	3101      	adds	r1, #1
30007414:	9304      	str	r3, [sp, #16]
30007416:	e539      	b.n	30006e8c <rxi316_perf_tune+0xf4>
30007418:	f44f 4370 	mov.w	r3, #61440	; 0xf000
3000741c:	930c      	str	r3, [sp, #48]	; 0x30
3000741e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
30007420:	2b20      	cmp	r3, #32
30007422:	f47f adf9 	bne.w	30007018 <rxi316_perf_tune+0x280>
30007426:	f44f 2370 	mov.w	r3, #983040	; 0xf0000
3000742a:	930d      	str	r3, [sp, #52]	; 0x34
3000742c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
3000742e:	2b20      	cmp	r3, #32
30007430:	f47f adfc 	bne.w	3000702c <rxi316_perf_tune+0x294>
30007434:	f44f 0370 	mov.w	r3, #15728640	; 0xf00000
30007438:	930e      	str	r3, [sp, #56]	; 0x38
3000743a:	9b10      	ldr	r3, [sp, #64]	; 0x40
3000743c:	2b20      	cmp	r3, #32
3000743e:	f47f adff 	bne.w	30007040 <rxi316_perf_tune+0x2a8>
30007442:	f04f 6370 	mov.w	r3, #251658240	; 0xf000000
30007446:	930f      	str	r3, [sp, #60]	; 0x3c
30007448:	9b11      	ldr	r3, [sp, #68]	; 0x44
3000744a:	2b20      	cmp	r3, #32
3000744c:	f47f ae02 	bne.w	30007054 <rxi316_perf_tune+0x2bc>
30007450:	f04f 4370 	mov.w	r3, #4026531840	; 0xf0000000
30007454:	9310      	str	r3, [sp, #64]	; 0x40
30007456:	9b12      	ldr	r3, [sp, #72]	; 0x48
30007458:	2b20      	cmp	r3, #32
3000745a:	f47f ae03 	bne.w	30007064 <rxi316_perf_tune+0x2cc>
3000745e:	230f      	movs	r3, #15
30007460:	9311      	str	r3, [sp, #68]	; 0x44
30007462:	9b13      	ldr	r3, [sp, #76]	; 0x4c
30007464:	2b20      	cmp	r3, #32
30007466:	f47f ae06 	bne.w	30007076 <rxi316_perf_tune+0x2de>
3000746a:	23f0      	movs	r3, #240	; 0xf0
3000746c:	9312      	str	r3, [sp, #72]	; 0x48
3000746e:	9b14      	ldr	r3, [sp, #80]	; 0x50
30007470:	2b20      	cmp	r3, #32
30007472:	f47f ae09 	bne.w	30007088 <rxi316_perf_tune+0x2f0>
30007476:	f44f 6370 	mov.w	r3, #3840	; 0xf00
3000747a:	9313      	str	r3, [sp, #76]	; 0x4c
3000747c:	9b15      	ldr	r3, [sp, #84]	; 0x54
3000747e:	2b20      	cmp	r3, #32
30007480:	f47f ae0c 	bne.w	3000709c <rxi316_perf_tune+0x304>
30007484:	f44f 4370 	mov.w	r3, #61440	; 0xf000
30007488:	9321      	str	r3, [sp, #132]	; 0x84
3000748a:	9b16      	ldr	r3, [sp, #88]	; 0x58
3000748c:	2b20      	cmp	r3, #32
3000748e:	f47f ae0e 	bne.w	300070ae <rxi316_perf_tune+0x316>
30007492:	f44f 2370 	mov.w	r3, #983040	; 0xf0000
30007496:	9320      	str	r3, [sp, #128]	; 0x80
30007498:	9b17      	ldr	r3, [sp, #92]	; 0x5c
3000749a:	2b20      	cmp	r3, #32
3000749c:	f47f ae11 	bne.w	300070c2 <rxi316_perf_tune+0x32a>
300074a0:	f44f 0370 	mov.w	r3, #15728640	; 0xf00000
300074a4:	931f      	str	r3, [sp, #124]	; 0x7c
300074a6:	9b18      	ldr	r3, [sp, #96]	; 0x60
300074a8:	2b20      	cmp	r3, #32
300074aa:	f47f ae14 	bne.w	300070d6 <rxi316_perf_tune+0x33e>
300074ae:	f04f 6370 	mov.w	r3, #251658240	; 0xf000000
300074b2:	931e      	str	r3, [sp, #120]	; 0x78
300074b4:	9b19      	ldr	r3, [sp, #100]	; 0x64
300074b6:	2b20      	cmp	r3, #32
300074b8:	f47f ae17 	bne.w	300070ea <rxi316_perf_tune+0x352>
300074bc:	f04f 4370 	mov.w	r3, #4026531840	; 0xf0000000
300074c0:	9319      	str	r3, [sp, #100]	; 0x64
300074c2:	9b1a      	ldr	r3, [sp, #104]	; 0x68
300074c4:	2b20      	cmp	r3, #32
300074c6:	f47f ae18 	bne.w	300070fa <rxi316_perf_tune+0x362>
300074ca:	230f      	movs	r3, #15
300074cc:	9318      	str	r3, [sp, #96]	; 0x60
300074ce:	9b07      	ldr	r3, [sp, #28]
300074d0:	2b20      	cmp	r3, #32
300074d2:	f47f ae1b 	bne.w	3000710c <rxi316_perf_tune+0x374>
300074d6:	231f      	movs	r3, #31
300074d8:	9317      	str	r3, [sp, #92]	; 0x5c
300074da:	9b08      	ldr	r3, [sp, #32]
300074dc:	2b20      	cmp	r3, #32
300074de:	f47f ae1e 	bne.w	3000711e <rxi316_perf_tune+0x386>
300074e2:	f44f 7378 	mov.w	r3, #992	; 0x3e0
300074e6:	9316      	str	r3, [sp, #88]	; 0x58
300074e8:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
300074ea:	2b20      	cmp	r3, #32
300074ec:	f47f ae21 	bne.w	30007132 <rxi316_perf_tune+0x39a>
300074f0:	f44f 43f8 	mov.w	r3, #31744	; 0x7c00
300074f4:	f1b9 0f20 	cmp.w	r9, #32
300074f8:	9315      	str	r3, [sp, #84]	; 0x54
300074fa:	f47f ae26 	bne.w	3000714a <rxi316_perf_tune+0x3b2>
300074fe:	230f      	movs	r3, #15
30007500:	f1b8 0f20 	cmp.w	r8, #32
30007504:	9314      	str	r3, [sp, #80]	; 0x50
30007506:	f47f ae2b 	bne.w	30007160 <rxi316_perf_tune+0x3c8>
3000750a:	2f20      	cmp	r7, #32
3000750c:	f04f 01f0 	mov.w	r1, #240	; 0xf0
30007510:	f47f ae30 	bne.w	30007174 <rxi316_perf_tune+0x3dc>
30007514:	f44f 6370 	mov.w	r3, #3840	; 0xf00
30007518:	f1bb 0f20 	cmp.w	fp, #32
3000751c:	9308      	str	r3, [sp, #32]
3000751e:	f47f ae35 	bne.w	3000718c <rxi316_perf_tune+0x3f4>
30007522:	f44f 4370 	mov.w	r3, #61440	; 0xf000
30007526:	9307      	str	r3, [sp, #28]
30007528:	9b01      	ldr	r3, [sp, #4]
3000752a:	2b20      	cmp	r3, #32
3000752c:	f47f ae38 	bne.w	300071a0 <rxi316_perf_tune+0x408>
30007530:	9b02      	ldr	r3, [sp, #8]
30007532:	f44f 2c70 	mov.w	ip, #983040	; 0xf0000
30007536:	2b20      	cmp	r3, #32
30007538:	f47f ae3e 	bne.w	300071b8 <rxi316_perf_tune+0x420>
3000753c:	9b03      	ldr	r3, [sp, #12]
3000753e:	f44f 0e70 	mov.w	lr, #15728640	; 0xf00000
30007542:	2b20      	cmp	r3, #32
30007544:	f47f ae44 	bne.w	300071d0 <rxi316_perf_tune+0x438>
30007548:	9b04      	ldr	r3, [sp, #16]
3000754a:	f04f 6870 	mov.w	r8, #251658240	; 0xf000000
3000754e:	2b20      	cmp	r3, #32
30007550:	f47f ae4a 	bne.w	300071e8 <rxi316_perf_tune+0x450>
30007554:	f04f 4370 	mov.w	r3, #4026531840	; 0xf0000000
30007558:	9302      	str	r3, [sp, #8]
3000755a:	9b05      	ldr	r3, [sp, #20]
3000755c:	2b20      	cmp	r3, #32
3000755e:	f47f ae4b 	bne.w	300071f8 <rxi316_perf_tune+0x460>
30007562:	9b06      	ldr	r3, [sp, #24]
30007564:	f04f 090f 	mov.w	r9, #15
30007568:	2b20      	cmp	r3, #32
3000756a:	f47f ae4f 	bne.w	3000720c <rxi316_perf_tune+0x474>
3000756e:	9b1c      	ldr	r3, [sp, #112]	; 0x70
30007570:	20f0      	movs	r0, #240	; 0xf0
30007572:	2b20      	cmp	r3, #32
30007574:	f47f ae53 	bne.w	3000721e <rxi316_perf_tune+0x486>
30007578:	9b09      	ldr	r3, [sp, #36]	; 0x24
3000757a:	f04f 0b1f 	mov.w	fp, #31
3000757e:	2b20      	cmp	r3, #32
30007580:	f47f ae57 	bne.w	30007232 <rxi316_perf_tune+0x49a>
30007584:	9b1d      	ldr	r3, [sp, #116]	; 0x74
30007586:	f04f 0a1f 	mov.w	sl, #31
3000758a:	2b20      	cmp	r3, #32
3000758c:	f47f ae5b 	bne.w	30007246 <rxi316_perf_tune+0x4ae>
30007590:	2c20      	cmp	r4, #32
30007592:	f04f 071f 	mov.w	r7, #31
30007596:	f47f ae65 	bne.w	30007264 <rxi316_perf_tune+0x4cc>
3000759a:	f44f 7378 	mov.w	r3, #992	; 0x3e0
3000759e:	9301      	str	r3, [sp, #4]
300075a0:	e666      	b.n	30007270 <rxi316_perf_tune+0x4d8>
300075a2:	f44f 6370 	mov.w	r3, #3840	; 0xf00
300075a6:	930b      	str	r3, [sp, #44]	; 0x2c
300075a8:	e529      	b.n	30006ffe <rxi316_perf_tune+0x266>
300075aa:	22f0      	movs	r2, #240	; 0xf0
300075ac:	e51d      	b.n	30006fea <rxi316_perf_tune+0x252>
300075ae:	230f      	movs	r3, #15
300075b0:	930a      	str	r3, [sp, #40]	; 0x28
300075b2:	e512      	b.n	30006fda <rxi316_perf_tune+0x242>
300075b4:	68f2      	ldr	r2, [r6, #12]
300075b6:	2302      	movs	r3, #2
300075b8:	6891      	ldr	r1, [r2, #8]
300075ba:	e6e2      	b.n	30007382 <rxi316_perf_tune+0x5ea>
300075bc:	3101      	adds	r1, #1
300075be:	9305      	str	r3, [sp, #20]
300075c0:	e464      	b.n	30006e8c <rxi316_perf_tune+0xf4>
300075c2:	bf00      	nop
300075c4:	41100000 	.word	0x41100000
300075c8:	40000008 	.word	0x40000008
300075cc:	3101      	adds	r1, #1
300075ce:	9306      	str	r3, [sp, #24]
300075d0:	e45c      	b.n	30006e8c <rxi316_perf_tune+0xf4>
300075d2:	2202      	movs	r2, #2
300075d4:	921e      	str	r2, [sp, #120]	; 0x78
300075d6:	e4e5      	b.n	30006fa4 <rxi316_perf_tune+0x20c>
300075d8:	f10a 0a01 	add.w	sl, sl, #1
300075dc:	9308      	str	r3, [sp, #32]
300075de:	e455      	b.n	30006e8c <rxi316_perf_tune+0xf4>
300075e0:	f10a 0a01 	add.w	sl, sl, #1
300075e4:	9307      	str	r3, [sp, #28]
300075e6:	e451      	b.n	30006e8c <rxi316_perf_tune+0xf4>
300075e8:	f10a 0a01 	add.w	sl, sl, #1
300075ec:	931b      	str	r3, [sp, #108]	; 0x6c
300075ee:	e44d      	b.n	30006e8c <rxi316_perf_tune+0xf4>
300075f0:	f10a 0a01 	add.w	sl, sl, #1
300075f4:	461c      	mov	r4, r3
300075f6:	e449      	b.n	30006e8c <rxi316_perf_tune+0xf4>
300075f8:	f10a 0a01 	add.w	sl, sl, #1
300075fc:	931d      	str	r3, [sp, #116]	; 0x74
300075fe:	e445      	b.n	30006e8c <rxi316_perf_tune+0xf4>
30007600:	f10a 0a01 	add.w	sl, sl, #1
30007604:	931c      	str	r3, [sp, #112]	; 0x70
30007606:	e441      	b.n	30006e8c <rxi316_perf_tune+0xf4>
30007608:	930a      	str	r3, [sp, #40]	; 0x28
3000760a:	e43f      	b.n	30006e8c <rxi316_perf_tune+0xf4>
3000760c:	930b      	str	r3, [sp, #44]	; 0x2c
3000760e:	e43d      	b.n	30006e8c <rxi316_perf_tune+0xf4>
30007610:	930c      	str	r3, [sp, #48]	; 0x30
30007612:	e43b      	b.n	30006e8c <rxi316_perf_tune+0xf4>
30007614:	930e      	str	r3, [sp, #56]	; 0x38
30007616:	e439      	b.n	30006e8c <rxi316_perf_tune+0xf4>
30007618:	930d      	str	r3, [sp, #52]	; 0x34
3000761a:	e437      	b.n	30006e8c <rxi316_perf_tune+0xf4>
3000761c:	931a      	str	r3, [sp, #104]	; 0x68
3000761e:	e435      	b.n	30006e8c <rxi316_perf_tune+0xf4>
30007620:	9319      	str	r3, [sp, #100]	; 0x64
30007622:	e433      	b.n	30006e8c <rxi316_perf_tune+0xf4>
30007624:	9310      	str	r3, [sp, #64]	; 0x40
30007626:	e431      	b.n	30006e8c <rxi316_perf_tune+0xf4>
30007628:	930f      	str	r3, [sp, #60]	; 0x3c
3000762a:	e42f      	b.n	30006e8c <rxi316_perf_tune+0xf4>
3000762c:	9318      	str	r3, [sp, #96]	; 0x60
3000762e:	e42d      	b.n	30006e8c <rxi316_perf_tune+0xf4>
30007630:	9317      	str	r3, [sp, #92]	; 0x5c
30007632:	e42b      	b.n	30006e8c <rxi316_perf_tune+0xf4>
30007634:	9316      	str	r3, [sp, #88]	; 0x58
30007636:	e429      	b.n	30006e8c <rxi316_perf_tune+0xf4>
30007638:	9315      	str	r3, [sp, #84]	; 0x54
3000763a:	e427      	b.n	30006e8c <rxi316_perf_tune+0xf4>
3000763c:	9314      	str	r3, [sp, #80]	; 0x50
3000763e:	e425      	b.n	30006e8c <rxi316_perf_tune+0xf4>
30007640:	9313      	str	r3, [sp, #76]	; 0x4c
30007642:	e423      	b.n	30006e8c <rxi316_perf_tune+0xf4>
30007644:	9312      	str	r3, [sp, #72]	; 0x48
30007646:	e421      	b.n	30006e8c <rxi316_perf_tune+0xf4>
30007648:	9311      	str	r3, [sp, #68]	; 0x44
3000764a:	e41f      	b.n	30006e8c <rxi316_perf_tune+0xf4>

3000764c <rxi316_dram_init>:
3000764c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30007650:	4604      	mov	r4, r0
30007652:	b08f      	sub	sp, #60	; 0x3c
30007654:	4b10      	ldr	r3, [pc, #64]	; (30007698 <rxi316_dram_init+0x4c>)
30007656:	4798      	blx	r3
30007658:	f894 b014 	ldrb.w	fp, [r4, #20]
3000765c:	2101      	movs	r1, #1
3000765e:	900c      	str	r0, [sp, #48]	; 0x30
30007660:	fa01 f30b 	lsl.w	r3, r1, fp
30007664:	9303      	str	r3, [sp, #12]
30007666:	6823      	ldr	r3, [r4, #0]
30007668:	78da      	ldrb	r2, [r3, #3]
3000766a:	6923      	ldr	r3, [r4, #16]
3000766c:	fa03 f30b 	lsl.w	r3, r3, fp
30007670:	b1a2      	cbz	r2, 3000769c <rxi316_dram_init+0x50>
30007672:	428a      	cmp	r2, r1
30007674:	f000 8485 	beq.w	30007f82 <rxi316_dram_init+0x936>
30007678:	2a02      	cmp	r2, #2
3000767a:	bf0b      	itete	eq
3000767c:	2206      	moveq	r2, #6
3000767e:	220a      	movne	r2, #10
30007680:	2540      	moveq	r5, #64	; 0x40
30007682:	2580      	movne	r5, #128	; 0x80
30007684:	9207      	str	r2, [sp, #28]
30007686:	bf0c      	ite	eq
30007688:	2204      	moveq	r2, #4
3000768a:	2208      	movne	r2, #8
3000768c:	9208      	str	r2, [sp, #32]
3000768e:	bf0c      	ite	eq
30007690:	2208      	moveq	r2, #8
30007692:	2210      	movne	r2, #16
30007694:	9202      	str	r2, [sp, #8]
30007696:	e007      	b.n	300076a8 <rxi316_dram_init+0x5c>
30007698:	300066a1 	.word	0x300066a1
3000769c:	2203      	movs	r2, #3
3000769e:	25c0      	movs	r5, #192	; 0xc0
300076a0:	9108      	str	r1, [sp, #32]
300076a2:	9207      	str	r2, [sp, #28]
300076a4:	2202      	movs	r2, #2
300076a6:	9202      	str	r2, [sp, #8]
300076a8:	6860      	ldr	r0, [r4, #4]
300076aa:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
300076ae:	4abe      	ldr	r2, [pc, #760]	; (300079a8 <rxi316_dram_init+0x35c>)
300076b0:	6806      	ldr	r6, [r0, #0]
300076b2:	960d      	str	r6, [sp, #52]	; 0x34
300076b4:	6846      	ldr	r6, [r0, #4]
300076b6:	6880      	ldr	r0, [r0, #8]
300076b8:	9609      	str	r6, [sp, #36]	; 0x24
300076ba:	9004      	str	r0, [sp, #16]
300076bc:	f8c2 1230 	str.w	r1, [r2, #560]	; 0x230
300076c0:	6820      	ldr	r0, [r4, #0]
300076c2:	7981      	ldrb	r1, [r0, #6]
300076c4:	6882      	ldr	r2, [r0, #8]
300076c6:	b129      	cbz	r1, 300076d4 <rxi316_dram_init+0x88>
300076c8:	2901      	cmp	r1, #1
300076ca:	f000 8462 	beq.w	30007f92 <rxi316_dram_init+0x946>
300076ce:	2903      	cmp	r1, #3
300076d0:	f000 8464 	beq.w	30007f9c <rxi316_dram_init+0x950>
300076d4:	3a06      	subs	r2, #6
300076d6:	7881      	ldrb	r1, [r0, #2]
300076d8:	f002 020f 	and.w	r2, r2, #15
300076dc:	7940      	ldrb	r0, [r0, #5]
300076de:	0109      	lsls	r1, r1, #4
300076e0:	0280      	lsls	r0, r0, #10
300076e2:	f001 0130 	and.w	r1, r1, #48	; 0x30
300076e6:	f400 6040 	and.w	r0, r0, #3072	; 0xc00
300076ea:	4301      	orrs	r1, r0
300076ec:	430d      	orrs	r5, r1
300076ee:	432a      	orrs	r2, r5
300076f0:	4dad      	ldr	r5, [pc, #692]	; (300079a8 <rxi316_dram_init+0x35c>)
300076f2:	f8c5 2224 	str.w	r2, [r5, #548]	; 0x224
300076f6:	68e2      	ldr	r2, [r4, #12]
300076f8:	6812      	ldr	r2, [r2, #0]
300076fa:	f892 206c 	ldrb.w	r2, [r2, #108]	; 0x6c
300076fe:	f002 0207 	and.w	r2, r2, #7
30007702:	f8c5 2228 	str.w	r2, [r5, #552]	; 0x228
30007706:	68e2      	ldr	r2, [r4, #12]
30007708:	6811      	ldr	r1, [r2, #0]
3000770a:	6822      	ldr	r2, [r4, #0]
3000770c:	6848      	ldr	r0, [r1, #4]
3000770e:	7817      	ldrb	r7, [r2, #0]
30007710:	688a      	ldr	r2, [r1, #8]
30007712:	9005      	str	r0, [sp, #20]
30007714:	0300      	lsls	r0, r0, #12
30007716:	0412      	lsls	r2, r2, #16
30007718:	9701      	str	r7, [sp, #4]
3000771a:	f400 5080 	and.w	r0, r0, #4096	; 0x1000
3000771e:	f007 070f 	and.w	r7, r7, #15
30007722:	f402 3280 	and.w	r2, r2, #65536	; 0x10000
30007726:	4302      	orrs	r2, r0
30007728:	68c8      	ldr	r0, [r1, #12]
3000772a:	0440      	lsls	r0, r0, #17
3000772c:	433a      	orrs	r2, r7
3000772e:	f400 3600 	and.w	r6, r0, #131072	; 0x20000
30007732:	6908      	ldr	r0, [r1, #16]
30007734:	0480      	lsls	r0, r0, #18
30007736:	4332      	orrs	r2, r6
30007738:	f400 2080 	and.w	r0, r0, #262144	; 0x40000
3000773c:	4310      	orrs	r0, r2
3000773e:	694a      	ldr	r2, [r1, #20]
30007740:	04d2      	lsls	r2, r2, #19
30007742:	f402 2200 	and.w	r2, r2, #524288	; 0x80000
30007746:	4310      	orrs	r0, r2
30007748:	698a      	ldr	r2, [r1, #24]
3000774a:	0552      	lsls	r2, r2, #21
3000774c:	f402 1200 	and.w	r2, r2, #2097152	; 0x200000
30007750:	4310      	orrs	r0, r2
30007752:	69ca      	ldr	r2, [r1, #28]
30007754:	0592      	lsls	r2, r2, #22
30007756:	f402 0280 	and.w	r2, r2, #4194304	; 0x400000
3000775a:	4310      	orrs	r0, r2
3000775c:	6a8a      	ldr	r2, [r1, #40]	; 0x28
3000775e:	0612      	lsls	r2, r2, #24
30007760:	f002 7240 	and.w	r2, r2, #50331648	; 0x3000000
30007764:	4302      	orrs	r2, r0
30007766:	e9d1 1008 	ldrd	r1, r0, [r1, #32]
3000776a:	06c0      	lsls	r0, r0, #27
3000776c:	0789      	lsls	r1, r1, #30
3000776e:	f000 6000 	and.w	r0, r0, #134217728	; 0x8000000
30007772:	f001 4180 	and.w	r1, r1, #1073741824	; 0x40000000
30007776:	4310      	orrs	r0, r2
30007778:	9a03      	ldr	r2, [sp, #12]
3000777a:	0212      	lsls	r2, r2, #8
3000777c:	4308      	orrs	r0, r1
3000777e:	f402 62e0 	and.w	r2, r2, #1792	; 0x700
30007782:	4310      	orrs	r0, r2
30007784:	6068      	str	r0, [r5, #4]
30007786:	6822      	ldr	r2, [r4, #0]
30007788:	7992      	ldrb	r2, [r2, #6]
3000778a:	2a00      	cmp	r2, #0
3000778c:	f040 8321 	bne.w	30007dd2 <rxi316_dram_init+0x786>
30007790:	686a      	ldr	r2, [r5, #4]
30007792:	f042 0210 	orr.w	r2, r2, #16
30007796:	606a      	str	r2, [r5, #4]
30007798:	68e2      	ldr	r2, [r4, #12]
3000779a:	9803      	ldr	r0, [sp, #12]
3000779c:	6812      	ldr	r2, [r2, #0]
3000779e:	6861      	ldr	r1, [r4, #4]
300077a0:	f100 3aff 	add.w	sl, r0, #4294967295	; 0xffffffff
300077a4:	6ad0      	ldr	r0, [r2, #44]	; 0x2c
300077a6:	f8d1 e010 	ldr.w	lr, [r1, #16]
300077aa:	9006      	str	r0, [sp, #24]
300077ac:	6b10      	ldr	r0, [r2, #48]	; 0x30
300077ae:	fa2e f80b 	lsr.w	r8, lr, fp
300077b2:	6949      	ldr	r1, [r1, #20]
300077b4:	ea1e 0f0a 	tst.w	lr, sl
300077b8:	900a      	str	r0, [sp, #40]	; 0x28
300077ba:	fa21 fe0b 	lsr.w	lr, r1, fp
300077be:	bf18      	it	ne
300077c0:	f108 0801 	addne.w	r8, r8, #1
300077c4:	ea11 0f0a 	tst.w	r1, sl
300077c8:	990a      	ldr	r1, [sp, #40]	; 0x28
300077ca:	ea4f 3808 	mov.w	r8, r8, lsl #12
300077ce:	ea4f 0141 	mov.w	r1, r1, lsl #1
300077d2:	bf18      	it	ne
300077d4:	f10e 0e01 	addne.w	lr, lr, #1
300077d8:	f408 38f8 	and.w	r8, r8, #126976	; 0x1f000
300077dc:	f001 0102 	and.w	r1, r1, #2
300077e0:	ea4f 5e0e 	mov.w	lr, lr, lsl #20
300077e4:	e9d2 9c0d 	ldrd	r9, ip, [r2, #52]	; 0x34
300077e8:	e9d2 5011 	ldrd	r5, r0, [r2, #68]	; 0x44
300077ec:	ea4f 0989 	mov.w	r9, r9, lsl #2
300077f0:	f00e 7ef8 	and.w	lr, lr, #32505856	; 0x1f00000
300077f4:	900b      	str	r0, [sp, #44]	; 0x2c
300077f6:	ea4f 0ccc 	mov.w	ip, ip, lsl #3
300077fa:	9806      	ldr	r0, [sp, #24]
300077fc:	f009 0904 	and.w	r9, r9, #4
30007800:	f00c 0c08 	and.w	ip, ip, #8
30007804:	01ad      	lsls	r5, r5, #6
30007806:	f000 0001 	and.w	r0, r0, #1
3000780a:	ea41 0109 	orr.w	r1, r1, r9
3000780e:	f005 0540 	and.w	r5, r5, #64	; 0x40
30007812:	4301      	orrs	r1, r0
30007814:	e9d2 760f 	ldrd	r7, r6, [r2, #60]	; 0x3c
30007818:	ea41 0c0c 	orr.w	ip, r1, ip
3000781c:	990b      	ldr	r1, [sp, #44]	; 0x2c
3000781e:	013f      	lsls	r7, r7, #4
30007820:	0176      	lsls	r6, r6, #5
30007822:	f007 0710 	and.w	r7, r7, #16
30007826:	0208      	lsls	r0, r1, #8
30007828:	f006 0620 	and.w	r6, r6, #32
3000782c:	6cd1      	ldr	r1, [r2, #76]	; 0x4c
3000782e:	ea4c 0707 	orr.w	r7, ip, r7
30007832:	f400 6070 	and.w	r0, r0, #3840	; 0xf00
30007836:	06c9      	lsls	r1, r1, #27
30007838:	4337      	orrs	r7, r6
3000783a:	f001 6100 	and.w	r1, r1, #134217728	; 0x8000000
3000783e:	432f      	orrs	r7, r5
30007840:	e9d2 6214 	ldrd	r6, r2, [r2, #80]	; 0x50
30007844:	4307      	orrs	r7, r0
30007846:	0736      	lsls	r6, r6, #28
30007848:	430f      	orrs	r7, r1
3000784a:	0752      	lsls	r2, r2, #29
3000784c:	f006 5680 	and.w	r6, r6, #268435456	; 0x10000000
30007850:	f002 5200 	and.w	r2, r2, #536870912	; 0x20000000
30007854:	433e      	orrs	r6, r7
30007856:	4316      	orrs	r6, r2
30007858:	4a53      	ldr	r2, [pc, #332]	; (300079a8 <rxi316_dram_init+0x35c>)
3000785a:	ea46 0608 	orr.w	r6, r6, r8
3000785e:	ea46 060e 	orr.w	r6, r6, lr
30007862:	6096      	str	r6, [r2, #8]
30007864:	6862      	ldr	r2, [r4, #4]
30007866:	6990      	ldr	r0, [r2, #24]
30007868:	9a02      	ldr	r2, [sp, #8]
3000786a:	2a10      	cmp	r2, #16
3000786c:	6822      	ldr	r2, [r4, #0]
3000786e:	f000 832d 	beq.w	30007ecc <rxi316_dram_init+0x880>
30007872:	9e02      	ldr	r6, [sp, #8]
30007874:	7915      	ldrb	r5, [r2, #4]
30007876:	2e08      	cmp	r6, #8
30007878:	7811      	ldrb	r1, [r2, #0]
3000787a:	f000 82b8 	beq.w	30007dee <rxi316_dram_init+0x7a2>
3000787e:	9d02      	ldr	r5, [sp, #8]
30007880:	2d04      	cmp	r5, #4
30007882:	f000 83af 	beq.w	30007fe4 <rxi316_dram_init+0x998>
30007886:	f1a1 0602 	sub.w	r6, r1, #2
3000788a:	9d02      	ldr	r5, [sp, #8]
3000788c:	fab6 f686 	clz	r6, r6
30007890:	0976      	lsrs	r6, r6, #5
30007892:	2909      	cmp	r1, #9
30007894:	bf14      	ite	ne
30007896:	4637      	movne	r7, r6
30007898:	f046 0701 	orreq.w	r7, r6, #1
3000789c:	2d02      	cmp	r5, #2
3000789e:	bf08      	it	eq
300078a0:	4338      	orreq	r0, r7
300078a2:	7915      	ldrb	r5, [r2, #4]
300078a4:	2f00      	cmp	r7, #0
300078a6:	f040 82b0 	bne.w	30007e0a <rxi316_dram_init+0x7be>
300078aa:	2903      	cmp	r1, #3
300078ac:	f000 837e 	beq.w	30007fac <rxi316_dram_init+0x960>
300078b0:	68a2      	ldr	r2, [r4, #8]
300078b2:	6dd2      	ldr	r2, [r2, #92]	; 0x5c
300078b4:	2903      	cmp	r1, #3
300078b6:	f000 832c 	beq.w	30007f12 <rxi316_dram_init+0x8c6>
300078ba:	f44f 5180 	mov.w	r1, #4096	; 0x1000
300078be:	2200      	movs	r2, #0
300078c0:	430a      	orrs	r2, r1
300078c2:	4e39      	ldr	r6, [pc, #228]	; (300079a8 <rxi316_dram_init+0x35c>)
300078c4:	4302      	orrs	r2, r0
300078c6:	ea42 05c5 	orr.w	r5, r2, r5, lsl #3
300078ca:	6375      	str	r5, [r6, #52]	; 0x34
300078cc:	6862      	ldr	r2, [r4, #4]
300078ce:	9904      	ldr	r1, [sp, #16]
300078d0:	69d2      	ldr	r2, [r2, #28]
300078d2:	ea42 02c1 	orr.w	r2, r2, r1, lsl #3
300078d6:	63b2      	str	r2, [r6, #56]	; 0x38
300078d8:	6822      	ldr	r2, [r4, #0]
300078da:	7810      	ldrb	r0, [r2, #0]
300078dc:	6862      	ldr	r2, [r4, #4]
300078de:	2803      	cmp	r0, #3
300078e0:	6a11      	ldr	r1, [r2, #32]
300078e2:	f000 82e6 	beq.w	30007eb2 <rxi316_dram_init+0x866>
300078e6:	2809      	cmp	r0, #9
300078e8:	f000 8309 	beq.w	30007efe <rxi316_dram_init+0x8b2>
300078ec:	482e      	ldr	r0, [pc, #184]	; (300079a8 <rxi316_dram_init+0x35c>)
300078ee:	63c1      	str	r1, [r0, #60]	; 0x3c
300078f0:	6862      	ldr	r2, [r4, #4]
300078f2:	6a52      	ldr	r2, [r2, #36]	; 0x24
300078f4:	6402      	str	r2, [r0, #64]	; 0x40
300078f6:	6860      	ldr	r0, [r4, #4]
300078f8:	68c5      	ldr	r5, [r0, #12]
300078fa:	6802      	ldr	r2, [r0, #0]
300078fc:	6841      	ldr	r1, [r0, #4]
300078fe:	442a      	add	r2, r5
30007900:	6880      	ldr	r0, [r0, #8]
30007902:	4429      	add	r1, r5
30007904:	ea1a 0f02 	tst.w	sl, r2
30007908:	fa22 f20b 	lsr.w	r2, r2, fp
3000790c:	fa21 f60b 	lsr.w	r6, r1, fp
30007910:	fa20 f50b 	lsr.w	r5, r0, fp
30007914:	bf18      	it	ne
30007916:	3201      	addne	r2, #1
30007918:	ea1a 0f01 	tst.w	sl, r1
3000791c:	6821      	ldr	r1, [r4, #0]
3000791e:	bf18      	it	ne
30007920:	3601      	addne	r6, #1
30007922:	ea1a 0f00 	tst.w	sl, r0
30007926:	7808      	ldrb	r0, [r1, #0]
30007928:	bf18      	it	ne
3000792a:	3501      	addne	r5, #1
3000792c:	68a1      	ldr	r1, [r4, #8]
3000792e:	3802      	subs	r0, #2
30007930:	6dcf      	ldr	r7, [r1, #92]	; 0x5c
30007932:	2801      	cmp	r0, #1
30007934:	f240 82b6 	bls.w	30007ea4 <rxi316_dram_init+0x858>
30007938:	698f      	ldr	r7, [r1, #24]
3000793a:	fbb7 f0f3 	udiv	r0, r7, r3
3000793e:	fb03 7710 	mls	r7, r3, r0, r7
30007942:	b107      	cbz	r7, 30007946 <rxi316_dram_init+0x2fa>
30007944:	3001      	adds	r0, #1
30007946:	6a4f      	ldr	r7, [r1, #36]	; 0x24
30007948:	fbb7 f1f3 	udiv	r1, r7, r3
3000794c:	fb03 7711 	mls	r7, r3, r1, r7
30007950:	b107      	cbz	r7, 30007954 <rxi316_dram_init+0x308>
30007952:	3101      	adds	r1, #1
30007954:	0176      	lsls	r6, r6, #5
30007956:	f002 021f 	and.w	r2, r2, #31
3000795a:	02ad      	lsls	r5, r5, #10
3000795c:	f406 7678 	and.w	r6, r6, #992	; 0x3e0
30007960:	0500      	lsls	r0, r0, #20
30007962:	f405 45f8 	and.w	r5, r5, #31744	; 0x7c00
30007966:	4316      	orrs	r6, r2
30007968:	f000 70f8 	and.w	r0, r0, #32505856	; 0x1f00000
3000796c:	4a0e      	ldr	r2, [pc, #56]	; (300079a8 <rxi316_dram_init+0x35c>)
3000796e:	432e      	orrs	r6, r5
30007970:	4306      	orrs	r6, r0
30007972:	0648      	lsls	r0, r1, #25
30007974:	f000 5078 	and.w	r0, r0, #1040187392	; 0x3e000000
30007978:	4330      	orrs	r0, r6
3000797a:	6310      	str	r0, [r2, #48]	; 0x30
3000797c:	68a0      	ldr	r0, [r4, #8]
3000797e:	6802      	ldr	r2, [r0, #0]
30007980:	fbb2 f1f3 	udiv	r1, r2, r3
30007984:	fb03 2211 	mls	r2, r3, r1, r2
30007988:	2a00      	cmp	r2, #0
3000798a:	f000 8289 	beq.w	30007ea0 <rxi316_dram_init+0x854>
3000798e:	f101 0901 	add.w	r9, r1, #1
30007992:	6842      	ldr	r2, [r0, #4]
30007994:	fbb2 f0f3 	udiv	r0, r2, r3
30007998:	fb03 2210 	mls	r2, r3, r0, r2
3000799c:	2a00      	cmp	r2, #0
3000799e:	f000 827d 	beq.w	30007e9c <rxi316_dram_init+0x850>
300079a2:	38c7      	subs	r0, #199	; 0xc7
300079a4:	e002      	b.n	300079ac <rxi316_dram_init+0x360>
300079a6:	bf00      	nop
300079a8:	41100000 	.word	0x41100000
300079ac:	68e2      	ldr	r2, [r4, #12]
300079ae:	6811      	ldr	r1, [r2, #0]
300079b0:	4ac2      	ldr	r2, [pc, #776]	; (30007cbc <rxi316_dram_init+0x670>)
300079b2:	ea02 2000 	and.w	r0, r2, r0, lsl #8
300079b6:	e9d1 2117 	ldrd	r2, r1, [r1, #92]	; 0x5c
300079ba:	900a      	str	r0, [sp, #40]	; 0x28
300079bc:	0712      	lsls	r2, r2, #28
300079be:	ea40 7141 	orr.w	r1, r0, r1, lsl #29
300079c2:	f002 5280 	and.w	r2, r2, #268435456	; 0x10000000
300079c6:	430a      	orrs	r2, r1
300079c8:	fa5f f189 	uxtb.w	r1, r9
300079cc:	430a      	orrs	r2, r1
300079ce:	49bc      	ldr	r1, [pc, #752]	; (30007cc0 <rxi316_dram_init+0x674>)
300079d0:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
300079d4:	610a      	str	r2, [r1, #16]
300079d6:	68a5      	ldr	r5, [r4, #8]
300079d8:	692a      	ldr	r2, [r5, #16]
300079da:	fbb2 fcf3 	udiv	ip, r2, r3
300079de:	fb03 221c 	mls	r2, r3, ip, r2
300079e2:	2a00      	cmp	r2, #0
300079e4:	f000 8257 	beq.w	30007e96 <rxi316_dram_init+0x84a>
300079e8:	f10c 0201 	add.w	r2, ip, #1
300079ec:	9206      	str	r2, [sp, #24]
300079ee:	69aa      	ldr	r2, [r5, #24]
300079f0:	fbb2 f0f3 	udiv	r0, r2, r3
300079f4:	fb03 2210 	mls	r2, r3, r0, r2
300079f8:	b102      	cbz	r2, 300079fc <rxi316_dram_init+0x3b0>
300079fa:	3001      	adds	r0, #1
300079fc:	68ea      	ldr	r2, [r5, #12]
300079fe:	fbb2 f1f3 	udiv	r1, r2, r3
30007a02:	fb03 2211 	mls	r2, r3, r1, r2
30007a06:	9104      	str	r1, [sp, #16]
30007a08:	b10a      	cbz	r2, 30007a0e <rxi316_dram_init+0x3c2>
30007a0a:	3101      	adds	r1, #1
30007a0c:	9104      	str	r1, [sp, #16]
30007a0e:	6822      	ldr	r2, [r4, #0]
30007a10:	7816      	ldrb	r6, [r2, #0]
30007a12:	2e09      	cmp	r6, #9
30007a14:	f000 826f 	beq.w	30007ef6 <rxi316_dram_init+0x8aa>
30007a18:	6a6a      	ldr	r2, [r5, #36]	; 0x24
30007a1a:	2e02      	cmp	r6, #2
30007a1c:	fbb2 f1f3 	udiv	r1, r2, r3
30007a20:	fb03 2211 	mls	r2, r3, r1, r2
30007a24:	f000 826d 	beq.w	30007f02 <rxi316_dram_init+0x8b6>
30007a28:	b102      	cbz	r2, 30007a2c <rxi316_dram_init+0x3e0>
30007a2a:	3101      	adds	r1, #1
30007a2c:	68e2      	ldr	r2, [r4, #12]
30007a2e:	0349      	lsls	r1, r1, #13
30007a30:	6d2d      	ldr	r5, [r5, #80]	; 0x50
30007a32:	6812      	ldr	r2, [r2, #0]
30007a34:	f401 31f0 	and.w	r1, r1, #122880	; 0x1e000
30007a38:	fa25 f60b 	lsr.w	r6, r5, fp
30007a3c:	ea15 0f0a 	tst.w	r5, sl
30007a40:	6e52      	ldr	r2, [r2, #100]	; 0x64
30007a42:	bf18      	it	ne
30007a44:	3601      	addne	r6, #1
30007a46:	05d2      	lsls	r2, r2, #23
30007a48:	f402 0200 	and.w	r2, r2, #8388608	; 0x800000
30007a4c:	ea42 6606 	orr.w	r6, r2, r6, lsl #24
30007a50:	9a06      	ldr	r2, [sp, #24]
30007a52:	0112      	lsls	r2, r2, #4
30007a54:	f402 72f8 	and.w	r2, r2, #496	; 0x1f0
30007a58:	4332      	orrs	r2, r6
30007a5a:	0246      	lsls	r6, r0, #9
30007a5c:	f406 56f0 	and.w	r6, r6, #7680	; 0x1e00
30007a60:	4316      	orrs	r6, r2
30007a62:	9a04      	ldr	r2, [sp, #16]
30007a64:	f002 020f 	and.w	r2, r2, #15
30007a68:	4316      	orrs	r6, r2
30007a6a:	4a95      	ldr	r2, [pc, #596]	; (30007cc0 <rxi316_dram_init+0x674>)
30007a6c:	4331      	orrs	r1, r6
30007a6e:	f441 11a0 	orr.w	r1, r1, #1310720	; 0x140000
30007a72:	6151      	str	r1, [r2, #20]
30007a74:	68a7      	ldr	r7, [r4, #8]
30007a76:	697a      	ldr	r2, [r7, #20]
30007a78:	fbb2 fef3 	udiv	lr, r2, r3
30007a7c:	fb03 221e 	mls	r2, r3, lr, r2
30007a80:	b10a      	cbz	r2, 30007a86 <rxi316_dram_init+0x43a>
30007a82:	f10e 0e01 	add.w	lr, lr, #1
30007a86:	6939      	ldr	r1, [r7, #16]
30007a88:	fbb1 f2f3 	udiv	r2, r1, r3
30007a8c:	fb03 1112 	mls	r1, r3, r2, r1
30007a90:	b101      	cbz	r1, 30007a94 <rxi316_dram_init+0x448>
30007a92:	3201      	adds	r2, #1
30007a94:	68fd      	ldr	r5, [r7, #12]
30007a96:	fbb5 f1f3 	udiv	r1, r5, r3
30007a9a:	fb03 5511 	mls	r5, r3, r1, r5
30007a9e:	b105      	cbz	r5, 30007aa2 <rxi316_dram_init+0x456>
30007aa0:	3101      	adds	r1, #1
30007aa2:	6b3d      	ldr	r5, [r7, #48]	; 0x30
30007aa4:	fbb5 f6f3 	udiv	r6, r5, r3
30007aa8:	fb03 5516 	mls	r5, r3, r6, r5
30007aac:	b105      	cbz	r5, 30007ab0 <rxi316_dram_init+0x464>
30007aae:	3601      	adds	r6, #1
30007ab0:	4411      	add	r1, r2
30007ab2:	68bd      	ldr	r5, [r7, #8]
30007ab4:	42b1      	cmp	r1, r6
30007ab6:	460a      	mov	r2, r1
30007ab8:	bf38      	it	cc
30007aba:	4632      	movcc	r2, r6
30007abc:	920b      	str	r2, [sp, #44]	; 0x2c
30007abe:	fbb5 f2f3 	udiv	r2, r5, r3
30007ac2:	fb03 5512 	mls	r5, r3, r2, r5
30007ac6:	b905      	cbnz	r5, 30007aca <rxi316_dram_init+0x47e>
30007ac8:	3a01      	subs	r2, #1
30007aca:	6afd      	ldr	r5, [r7, #44]	; 0x2c
30007acc:	ea15 0f0a 	tst.w	r5, sl
30007ad0:	fa25 fc0b 	lsr.w	ip, r5, fp
30007ad4:	69fd      	ldr	r5, [r7, #28]
30007ad6:	bf18      	it	ne
30007ad8:	f10c 0c01 	addne.w	ip, ip, #1
30007adc:	fa25 f60b 	lsr.w	r6, r5, fp
30007ae0:	ea15 0f0a 	tst.w	r5, sl
30007ae4:	9d01      	ldr	r5, [sp, #4]
30007ae6:	bf18      	it	ne
30007ae8:	3601      	addne	r6, #1
30007aea:	2d09      	cmp	r5, #9
30007aec:	f000 81fe 	beq.w	30007eec <rxi316_dram_init+0x8a0>
30007af0:	9d01      	ldr	r5, [sp, #4]
30007af2:	2d02      	cmp	r5, #2
30007af4:	f000 823a 	beq.w	30007f6c <rxi316_dram_init+0x920>
30007af8:	2d03      	cmp	r5, #3
30007afa:	f000 829b 	beq.w	30008034 <rxi316_dram_init+0x9e8>
30007afe:	9d09      	ldr	r5, [sp, #36]	; 0x24
30007b00:	9902      	ldr	r1, [sp, #8]
30007b02:	440d      	add	r5, r1
30007b04:	46a8      	mov	r8, r5
30007b06:	fa28 f50b 	lsr.w	r5, r8, fp
30007b0a:	ea18 0f0a 	tst.w	r8, sl
30007b0e:	f8d7 8040 	ldr.w	r8, [r7, #64]	; 0x40
30007b12:	bf18      	it	ne
30007b14:	3501      	addne	r5, #1
30007b16:	fbb8 f7f3 	udiv	r7, r8, r3
30007b1a:	fb03 8817 	mls	r8, r3, r7, r8
30007b1e:	f1b8 0f00 	cmp.w	r8, #0
30007b22:	d000      	beq.n	30007b26 <rxi316_dram_init+0x4da>
30007b24:	3701      	adds	r7, #1
30007b26:	990b      	ldr	r1, [sp, #44]	; 0x2c
30007b28:	f00e 0e0f 	and.w	lr, lr, #15
30007b2c:	ea4f 3c8c 	mov.w	ip, ip, lsl #14
30007b30:	0109      	lsls	r1, r1, #4
30007b32:	f40c 3ce0 	and.w	ip, ip, #114688	; 0x1c000
30007b36:	063f      	lsls	r7, r7, #24
30007b38:	f401 717c 	and.w	r1, r1, #1008	; 0x3f0
30007b3c:	f007 57f8 	and.w	r7, r7, #520093696	; 0x1f000000
30007b40:	ea41 0e0e 	orr.w	lr, r1, lr
30007b44:	0291      	lsls	r1, r2, #10
30007b46:	f401 5170 	and.w	r1, r1, #15360	; 0x3c00
30007b4a:	ea4e 0e01 	orr.w	lr, lr, r1
30007b4e:	0471      	lsls	r1, r6, #17
30007b50:	ea4e 0c0c 	orr.w	ip, lr, ip
30007b54:	f401 2160 	and.w	r1, r1, #917504	; 0xe0000
30007b58:	ea4c 0c01 	orr.w	ip, ip, r1
30007b5c:	0529      	lsls	r1, r5, #20
30007b5e:	f401 0170 	and.w	r1, r1, #15728640	; 0xf00000
30007b62:	ea4c 0c01 	orr.w	ip, ip, r1
30007b66:	4956      	ldr	r1, [pc, #344]	; (30007cc0 <rxi316_dram_init+0x674>)
30007b68:	ea4c 0707 	orr.w	r7, ip, r7
30007b6c:	618f      	str	r7, [r1, #24]
30007b6e:	6821      	ldr	r1, [r4, #0]
30007b70:	780f      	ldrb	r7, [r1, #0]
30007b72:	2f02      	cmp	r7, #2
30007b74:	f000 8161 	beq.w	30007e3a <rxi316_dram_init+0x7ee>
30007b78:	2f09      	cmp	r7, #9
30007b7a:	f000 815e 	beq.w	30007e3a <rxi316_dram_init+0x7ee>
30007b7e:	68e1      	ldr	r1, [r4, #12]
30007b80:	2f03      	cmp	r7, #3
30007b82:	6809      	ldr	r1, [r1, #0]
30007b84:	6e89      	ldr	r1, [r1, #104]	; 0x68
30007b86:	f001 010f 	and.w	r1, r1, #15
30007b8a:	9109      	str	r1, [sp, #36]	; 0x24
30007b8c:	68a1      	ldr	r1, [r4, #8]
30007b8e:	f000 81ab 	beq.w	30007ee8 <rxi316_dram_init+0x89c>
30007b92:	6a0f      	ldr	r7, [r1, #32]
30007b94:	ea17 0f0a 	tst.w	r7, sl
30007b98:	fa27 f10b 	lsr.w	r1, r7, fp
30007b9c:	d000      	beq.n	30007ba0 <rxi316_dram_init+0x554>
30007b9e:	3101      	adds	r1, #1
30007ba0:	9f01      	ldr	r7, [sp, #4]
30007ba2:	2f02      	cmp	r7, #2
30007ba4:	f000 815f 	beq.w	30007e66 <rxi316_dram_init+0x81a>
30007ba8:	9f01      	ldr	r7, [sp, #4]
30007baa:	2f03      	cmp	r7, #3
30007bac:	f000 81bc 	beq.w	30007f28 <rxi316_dram_init+0x8dc>
30007bb0:	9f01      	ldr	r7, [sp, #4]
30007bb2:	2f09      	cmp	r7, #9
30007bb4:	f000 822e 	beq.w	30008014 <rxi316_dram_init+0x9c8>
30007bb8:	f04f 0e00 	mov.w	lr, #0
30007bbc:	46f0      	mov	r8, lr
30007bbe:	f8cd e004 	str.w	lr, [sp, #4]
30007bc2:	9f06      	ldr	r7, [sp, #24]
30007bc4:	0109      	lsls	r1, r1, #4
30007bc6:	ea4f 1c57 	mov.w	ip, r7, lsr #5
30007bca:	9f09      	ldr	r7, [sp, #36]	; 0x24
30007bcc:	b2c9      	uxtb	r1, r1
30007bce:	4339      	orrs	r1, r7
30007bd0:	9f01      	ldr	r7, [sp, #4]
30007bd2:	4339      	orrs	r1, r7
30007bd4:	4f3a      	ldr	r7, [pc, #232]	; (30007cc0 <rxi316_dram_init+0x674>)
30007bd6:	ea41 0108 	orr.w	r1, r1, r8
30007bda:	ea41 010e 	orr.w	r1, r1, lr
30007bde:	61f9      	str	r1, [r7, #28]
30007be0:	68a7      	ldr	r7, [r4, #8]
30007be2:	6c3c      	ldr	r4, [r7, #64]	; 0x40
30007be4:	fbb4 f1f3 	udiv	r1, r4, r3
30007be8:	fb03 4311 	mls	r3, r3, r1, r4
30007bec:	b103      	cbz	r3, 30007bf0 <rxi316_dram_init+0x5a4>
30007bee:	3101      	adds	r1, #1
30007bf0:	6b7c      	ldr	r4, [r7, #52]	; 0x34
30007bf2:	094b      	lsrs	r3, r1, #5
30007bf4:	ea4f 2119 	mov.w	r1, r9, lsr #8
30007bf8:	f8d7 903c 	ldr.w	r9, [r7, #60]	; 0x3c
30007bfc:	ea14 0f0a 	tst.w	r4, sl
30007c00:	fa24 f80b 	lsr.w	r8, r4, fp
30007c04:	6bbc      	ldr	r4, [r7, #56]	; 0x38
30007c06:	ea4f 1212 	mov.w	r2, r2, lsr #4
30007c0a:	bf18      	it	ne
30007c0c:	f108 0801 	addne.w	r8, r8, #1
30007c10:	9301      	str	r3, [sp, #4]
30007c12:	ea14 0f0a 	tst.w	r4, sl
30007c16:	fa24 fe0b 	lsr.w	lr, r4, fp
30007c1a:	9b02      	ldr	r3, [sp, #8]
30007c1c:	fa29 f40b 	lsr.w	r4, r9, fp
30007c20:	bf18      	it	ne
30007c22:	f10e 0e01 	addne.w	lr, lr, #1
30007c26:	6aff      	ldr	r7, [r7, #44]	; 0x2c
30007c28:	ea19 0f0a 	tst.w	r9, sl
30007c2c:	fa23 f90b 	lsr.w	r9, r3, fp
30007c30:	ea4f 06d6 	mov.w	r6, r6, lsr #3
30007c34:	bf18      	it	ne
30007c36:	3401      	addne	r4, #1
30007c38:	45b9      	cmp	r9, r7
30007c3a:	ea4f 1515 	mov.w	r5, r5, lsr #4
30007c3e:	ea4f 1010 	mov.w	r0, r0, lsr #4
30007c42:	f240 80f8 	bls.w	30007e36 <rxi316_dram_init+0x7ea>
30007c46:	eba9 0707 	sub.w	r7, r9, r7
30007c4a:	fa27 f40b 	lsr.w	r4, r7, fp
30007c4e:	ea17 070a 	ands.w	r7, r7, sl
30007c52:	d001      	beq.n	30007c58 <rxi316_dram_init+0x60c>
30007c54:	3401      	adds	r4, #1
30007c56:	2700      	movs	r7, #0
30007c58:	9b05      	ldr	r3, [sp, #20]
30007c5a:	b10b      	cbz	r3, 30007c60 <rxi316_dram_init+0x614>
30007c5c:	073b      	lsls	r3, r7, #28
30007c5e:	9305      	str	r3, [sp, #20]
30007c60:	ea4f 0c8c 	mov.w	ip, ip, lsl #2
30007c64:	9b01      	ldr	r3, [sp, #4]
30007c66:	0289      	lsls	r1, r1, #10
30007c68:	02c0      	lsls	r0, r0, #11
30007c6a:	f00c 0c04 	and.w	ip, ip, #4
30007c6e:	f401 6180 	and.w	r1, r1, #1024	; 0x400
30007c72:	01d2      	lsls	r2, r2, #7
30007c74:	f400 6000 	and.w	r0, r0, #2048	; 0x800
30007c78:	0236      	lsls	r6, r6, #8
30007c7a:	ea4c 0c01 	orr.w	ip, ip, r1
30007c7e:	b2d2      	uxtb	r2, r2
30007c80:	026d      	lsls	r5, r5, #9
30007c82:	f406 7680 	and.w	r6, r6, #256	; 0x100
30007c86:	ea4c 0c00 	orr.w	ip, ip, r0
30007c8a:	00df      	lsls	r7, r3, #3
30007c8c:	f405 7500 	and.w	r5, r5, #512	; 0x200
30007c90:	ea4f 3888 	mov.w	r8, r8, lsl #14
30007c94:	ea4c 0202 	orr.w	r2, ip, r2
30007c98:	f007 0708 	and.w	r7, r7, #8
30007c9c:	ea4f 4e4e 	mov.w	lr, lr, lsl #17
30007ca0:	f408 38e0 	and.w	r8, r8, #114688	; 0x1c000
30007ca4:	4332      	orrs	r2, r6
30007ca6:	0524      	lsls	r4, r4, #20
30007ca8:	f40e 2e60 	and.w	lr, lr, #917504	; 0xe0000
30007cac:	4904      	ldr	r1, [pc, #16]	; (30007cc0 <rxi316_dram_init+0x674>)
30007cae:	ea42 0305 	orr.w	r3, r2, r5
30007cb2:	f404 0470 	and.w	r4, r4, #15728640	; 0xf00000
30007cb6:	9a05      	ldr	r2, [sp, #20]
30007cb8:	e004      	b.n	30007cc4 <rxi316_dram_init+0x678>
30007cba:	bf00      	nop
30007cbc:	00ffff00 	.word	0x00ffff00
30007cc0:	41100000 	.word	0x41100000
30007cc4:	433b      	orrs	r3, r7
30007cc6:	ea43 0308 	orr.w	r3, r3, r8
30007cca:	ea43 030e 	orr.w	r3, r3, lr
30007cce:	4323      	orrs	r3, r4
30007cd0:	4313      	orrs	r3, r2
30007cd2:	9a04      	ldr	r2, [sp, #16]
30007cd4:	f3c2 1200 	ubfx	r2, r2, #4, #1
30007cd8:	620b      	str	r3, [r1, #32]
30007cda:	f8c1 2090 	str.w	r2, [r1, #144]	; 0x90
30007cde:	9b03      	ldr	r3, [sp, #12]
30007ce0:	2b01      	cmp	r3, #1
30007ce2:	d002      	beq.n	30007cea <rxi316_dram_init+0x69e>
30007ce4:	9b08      	ldr	r3, [sp, #32]
30007ce6:	3303      	adds	r3, #3
30007ce8:	9307      	str	r3, [sp, #28]
30007cea:	4bb3      	ldr	r3, [pc, #716]	; (30007fb8 <rxi316_dram_init+0x96c>)
30007cec:	f64f 71ff 	movw	r1, #65535	; 0xffff
30007cf0:	9a07      	ldr	r2, [sp, #28]
30007cf2:	f8c3 2094 	str.w	r2, [r3, #148]	; 0x94
30007cf6:	f44f 62e0 	mov.w	r2, #1792	; 0x700
30007cfa:	f8c3 10cc 	str.w	r1, [r3, #204]	; 0xcc
30007cfe:	60da      	str	r2, [r3, #12]
30007d00:	f8d3 2100 	ldr.w	r2, [r3, #256]	; 0x100
30007d04:	430a      	orrs	r2, r1
30007d06:	49ad      	ldr	r1, [pc, #692]	; (30007fbc <rxi316_dram_init+0x970>)
30007d08:	f8c3 2100 	str.w	r2, [r3, #256]	; 0x100
30007d0c:	f8d1 2268 	ldr.w	r2, [r1, #616]	; 0x268
30007d10:	0096      	lsls	r6, r2, #2
30007d12:	f140 808a 	bpl.w	30007e2a <rxi316_dram_init+0x7de>
30007d16:	f04f 4200 	mov.w	r2, #2147483648	; 0x80000000
30007d1a:	4ca7      	ldr	r4, [pc, #668]	; (30007fb8 <rxi316_dram_init+0x96c>)
30007d1c:	601a      	str	r2, [r3, #0]
30007d1e:	691a      	ldr	r2, [r3, #16]
30007d20:	f042 5280 	orr.w	r2, r2, #268435456	; 0x10000000
30007d24:	611a      	str	r2, [r3, #16]
30007d26:	f8d1 32fc 	ldr.w	r3, [r1, #764]	; 0x2fc
30007d2a:	f043 0303 	orr.w	r3, r3, #3
30007d2e:	f8c1 32fc 	str.w	r3, [r1, #764]	; 0x2fc
30007d32:	f44f 0160 	mov.w	r1, #14680064	; 0xe00000
30007d36:	9b0c      	ldr	r3, [sp, #48]	; 0x30
30007d38:	2b01      	cmp	r3, #1
30007d3a:	4ba1      	ldr	r3, [pc, #644]	; (30007fc0 <rxi316_dram_init+0x974>)
30007d3c:	bf0c      	ite	eq
30007d3e:	4aa1      	ldreq	r2, [pc, #644]	; (30007fc4 <rxi316_dram_init+0x978>)
30007d40:	4aa1      	ldrne	r2, [pc, #644]	; (30007fc8 <rxi316_dram_init+0x97c>)
30007d42:	601a      	str	r2, [r3, #0]
30007d44:	2203      	movs	r2, #3
30007d46:	68e0      	ldr	r0, [r4, #12]
30007d48:	4ba0      	ldr	r3, [pc, #640]	; (30007fcc <rxi316_dram_init+0x980>)
30007d4a:	4003      	ands	r3, r0
30007d4c:	60e3      	str	r3, [r4, #12]
30007d4e:	2308      	movs	r3, #8
30007d50:	62a1      	str	r1, [r4, #40]	; 0x28
30007d52:	62e2      	str	r2, [r4, #44]	; 0x2c
30007d54:	6023      	str	r3, [r4, #0]
30007d56:	6823      	ldr	r3, [r4, #0]
30007d58:	071d      	lsls	r5, r3, #28
30007d5a:	d5fc      	bpl.n	30007d56 <rxi316_dram_init+0x70a>
30007d5c:	4b9c      	ldr	r3, [pc, #624]	; (30007fd0 <rxi316_dram_init+0x984>)
30007d5e:	2001      	movs	r0, #1
30007d60:	4798      	blx	r3
30007d62:	68e2      	ldr	r2, [r4, #12]
30007d64:	4b99      	ldr	r3, [pc, #612]	; (30007fcc <rxi316_dram_init+0x980>)
30007d66:	f44f 1100 	mov.w	r1, #2097152	; 0x200000
30007d6a:	4013      	ands	r3, r2
30007d6c:	2203      	movs	r2, #3
30007d6e:	60e3      	str	r3, [r4, #12]
30007d70:	2308      	movs	r3, #8
30007d72:	62a1      	str	r1, [r4, #40]	; 0x28
30007d74:	62e2      	str	r2, [r4, #44]	; 0x2c
30007d76:	4a90      	ldr	r2, [pc, #576]	; (30007fb8 <rxi316_dram_init+0x96c>)
30007d78:	6023      	str	r3, [r4, #0]
30007d7a:	6813      	ldr	r3, [r2, #0]
30007d7c:	071c      	lsls	r4, r3, #28
30007d7e:	d5fc      	bpl.n	30007d7a <rxi316_dram_init+0x72e>
30007d80:	68d0      	ldr	r0, [r2, #12]
30007d82:	f04f 7190 	mov.w	r1, #18874368	; 0x1200000
30007d86:	4b91      	ldr	r3, [pc, #580]	; (30007fcc <rxi316_dram_init+0x980>)
30007d88:	4003      	ands	r3, r0
30007d8a:	2008      	movs	r0, #8
30007d8c:	60d3      	str	r3, [r2, #12]
30007d8e:	6291      	str	r1, [r2, #40]	; 0x28
30007d90:	6ad3      	ldr	r3, [r2, #44]	; 0x2c
30007d92:	4989      	ldr	r1, [pc, #548]	; (30007fb8 <rxi316_dram_init+0x96c>)
30007d94:	f023 0302 	bic.w	r3, r3, #2
30007d98:	62d3      	str	r3, [r2, #44]	; 0x2c
30007d9a:	6010      	str	r0, [r2, #0]
30007d9c:	680b      	ldr	r3, [r1, #0]
30007d9e:	0718      	lsls	r0, r3, #28
30007da0:	d5fc      	bpl.n	30007d9c <rxi316_dram_init+0x750>
30007da2:	4a85      	ldr	r2, [pc, #532]	; (30007fb8 <rxi316_dram_init+0x96c>)
30007da4:	f44f 63c0 	mov.w	r3, #1536	; 0x600
30007da8:	f04f 4100 	mov.w	r1, #2147483648	; 0x80000000
30007dac:	60d3      	str	r3, [r2, #12]
30007dae:	980a      	ldr	r0, [sp, #40]	; 0x28
30007db0:	6913      	ldr	r3, [r2, #16]
30007db2:	4318      	orrs	r0, r3
30007db4:	6110      	str	r0, [r2, #16]
30007db6:	6913      	ldr	r3, [r2, #16]
30007db8:	f023 5380 	bic.w	r3, r3, #268435456	; 0x10000000
30007dbc:	6113      	str	r3, [r2, #16]
30007dbe:	6011      	str	r1, [r2, #0]
30007dc0:	68d3      	ldr	r3, [r2, #12]
30007dc2:	f3c3 030a 	ubfx	r3, r3, #0, #11
30007dc6:	f5b3 6fc0 	cmp.w	r3, #1536	; 0x600
30007dca:	d1f9      	bne.n	30007dc0 <rxi316_dram_init+0x774>
30007dcc:	b00f      	add	sp, #60	; 0x3c
30007dce:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30007dd2:	2a01      	cmp	r2, #1
30007dd4:	f000 80d0 	beq.w	30007f78 <rxi316_dram_init+0x92c>
30007dd8:	2a02      	cmp	r2, #2
30007dda:	f000 8136 	beq.w	3000804a <rxi316_dram_init+0x9fe>
30007dde:	2a03      	cmp	r2, #3
30007de0:	f47f acda 	bne.w	30007798 <rxi316_dram_init+0x14c>
30007de4:	686a      	ldr	r2, [r5, #4]
30007de6:	f042 0280 	orr.w	r2, r2, #128	; 0x80
30007dea:	606a      	str	r2, [r5, #4]
30007dec:	e4d4      	b.n	30007798 <rxi316_dram_init+0x14c>
30007dee:	f1a1 0602 	sub.w	r6, r1, #2
30007df2:	2909      	cmp	r1, #9
30007df4:	fab6 f686 	clz	r6, r6
30007df8:	ea4f 1656 	mov.w	r6, r6, lsr #5
30007dfc:	d002      	beq.n	30007e04 <rxi316_dram_init+0x7b8>
30007dfe:	2e00      	cmp	r6, #0
30007e00:	f43f ad53 	beq.w	300078aa <rxi316_dram_init+0x25e>
30007e04:	2503      	movs	r5, #3
30007e06:	4328      	orrs	r0, r5
30007e08:	7915      	ldrb	r5, [r2, #4]
30007e0a:	9f09      	ldr	r7, [sp, #36]	; 0x24
30007e0c:	68a2      	ldr	r2, [r4, #8]
30007e0e:	013f      	lsls	r7, r7, #4
30007e10:	6dd2      	ldr	r2, [r2, #92]	; 0x5c
30007e12:	4338      	orrs	r0, r7
30007e14:	2e00      	cmp	r6, #0
30007e16:	f43f ad4d 	beq.w	300078b4 <rxi316_dram_init+0x268>
30007e1a:	1e91      	subs	r1, r2, #2
30007e1c:	2906      	cmp	r1, #6
30007e1e:	f200 80a8 	bhi.w	30007f72 <rxi316_dram_init+0x926>
30007e22:	3a01      	subs	r2, #1
30007e24:	2100      	movs	r1, #0
30007e26:	0252      	lsls	r2, r2, #9
30007e28:	e54a      	b.n	300078c0 <rxi316_dram_init+0x274>
30007e2a:	2201      	movs	r2, #1
30007e2c:	601a      	str	r2, [r3, #0]
30007e2e:	681a      	ldr	r2, [r3, #0]
30007e30:	07d2      	lsls	r2, r2, #31
30007e32:	d5fc      	bpl.n	30007e2e <rxi316_dram_init+0x7e2>
30007e34:	e7b5      	b.n	30007da2 <rxi316_dram_init+0x756>
30007e36:	2701      	movs	r7, #1
30007e38:	e70e      	b.n	30007c58 <rxi316_dram_init+0x60c>
30007e3a:	68a1      	ldr	r1, [r4, #8]
30007e3c:	2f03      	cmp	r7, #3
30007e3e:	f8d1 c020 	ldr.w	ip, [r1, #32]
30007e42:	d04f      	beq.n	30007ee4 <rxi316_dram_init+0x898>
30007e44:	2f02      	cmp	r7, #2
30007e46:	f040 8106 	bne.w	30008056 <rxi316_dram_init+0xa0a>
30007e4a:	fbbc f1f3 	udiv	r1, ip, r3
30007e4e:	fb03 cc11 	mls	ip, r3, r1, ip
30007e52:	f1bc 0f00 	cmp.w	ip, #0
30007e56:	f000 809f 	beq.w	30007f98 <rxi316_dram_init+0x94c>
30007e5a:	9709      	str	r7, [sp, #36]	; 0x24
30007e5c:	3101      	adds	r1, #1
30007e5e:	9f01      	ldr	r7, [sp, #4]
30007e60:	2f02      	cmp	r7, #2
30007e62:	f47f aea1 	bne.w	30007ba8 <rxi316_dram_init+0x55c>
30007e66:	4f5b      	ldr	r7, [pc, #364]	; (30007fd4 <rxi316_dram_init+0x988>)
30007e68:	f04f 0e00 	mov.w	lr, #0
30007e6c:	f8df 8168 	ldr.w	r8, [pc, #360]	; 30007fd8 <rxi316_dram_init+0x98c>
30007e70:	fbb7 f7f3 	udiv	r7, r7, r3
30007e74:	fbb8 f8f3 	udiv	r8, r8, r3
30007e78:	09ff      	lsrs	r7, r7, #7
30007e7a:	ea4f 2898 	mov.w	r8, r8, lsr #10
30007e7e:	3701      	adds	r7, #1
30007e80:	f108 0c01 	add.w	ip, r8, #1
30007e84:	f8df 8154 	ldr.w	r8, [pc, #340]	; 30007fdc <rxi316_dram_init+0x990>
30007e88:	023f      	lsls	r7, r7, #8
30007e8a:	ea08 380c 	and.w	r8, r8, ip, lsl #12
30007e8e:	f407 6770 	and.w	r7, r7, #3840	; 0xf00
30007e92:	9701      	str	r7, [sp, #4]
30007e94:	e695      	b.n	30007bc2 <rxi316_dram_init+0x576>
30007e96:	f8cd c018 	str.w	ip, [sp, #24]
30007e9a:	e5a8      	b.n	300079ee <rxi316_dram_init+0x3a2>
30007e9c:	38c8      	subs	r0, #200	; 0xc8
30007e9e:	e585      	b.n	300079ac <rxi316_dram_init+0x360>
30007ea0:	4689      	mov	r9, r1
30007ea2:	e576      	b.n	30007992 <rxi316_dram_init+0x346>
30007ea4:	ea1a 0f07 	tst.w	sl, r7
30007ea8:	fa27 f00b 	lsr.w	r0, r7, fp
30007eac:	f43f ad4b 	beq.w	30007946 <rxi316_dram_init+0x2fa>
30007eb0:	e548      	b.n	30007944 <rxi316_dram_init+0x2f8>
30007eb2:	9a0d      	ldr	r2, [sp, #52]	; 0x34
30007eb4:	1f50      	subs	r0, r2, #5
30007eb6:	00c0      	lsls	r0, r0, #3
30007eb8:	68e2      	ldr	r2, [r4, #12]
30007eba:	6812      	ldr	r2, [r2, #0]
30007ebc:	6b92      	ldr	r2, [r2, #56]	; 0x38
30007ebe:	fab2 f282 	clz	r2, r2
30007ec2:	0952      	lsrs	r2, r2, #5
30007ec4:	ea41 2142 	orr.w	r1, r1, r2, lsl #9
30007ec8:	4301      	orrs	r1, r0
30007eca:	e50f      	b.n	300078ec <rxi316_dram_init+0x2a0>
30007ecc:	7811      	ldrb	r1, [r2, #0]
30007ece:	f1a1 0602 	sub.w	r6, r1, #2
30007ed2:	2909      	cmp	r1, #9
30007ed4:	fab6 f686 	clz	r6, r6
30007ed8:	ea4f 1656 	mov.w	r6, r6, lsr #5
30007edc:	f000 80b3 	beq.w	30008046 <rxi316_dram_init+0x9fa>
30007ee0:	4637      	mov	r7, r6
30007ee2:	e4de      	b.n	300078a2 <rxi316_dram_init+0x256>
30007ee4:	2702      	movs	r7, #2
30007ee6:	9709      	str	r7, [sp, #36]	; 0x24
30007ee8:	6a09      	ldr	r1, [r1, #32]
30007eea:	e659      	b.n	30007ba0 <rxi316_dram_init+0x554>
30007eec:	e9dd 1508 	ldrd	r1, r5, [sp, #32]
30007ef0:	440d      	add	r5, r1
30007ef2:	46a8      	mov	r8, r5
30007ef4:	e607      	b.n	30007b06 <rxi316_dram_init+0x4ba>
30007ef6:	9a08      	ldr	r2, [sp, #32]
30007ef8:	fa22 f10b 	lsr.w	r1, r2, fp
30007efc:	e596      	b.n	30007a2c <rxi316_dram_init+0x3e0>
30007efe:	2000      	movs	r0, #0
30007f00:	e7da      	b.n	30007eb8 <rxi316_dram_init+0x86c>
30007f02:	9e08      	ldr	r6, [sp, #32]
30007f04:	3e02      	subs	r6, #2
30007f06:	fa26 f60b 	lsr.w	r6, r6, fp
30007f0a:	b102      	cbz	r2, 30007f0e <rxi316_dram_init+0x8c2>
30007f0c:	3101      	adds	r1, #1
30007f0e:	4431      	add	r1, r6
30007f10:	e58c      	b.n	30007a2c <rxi316_dram_init+0x3e0>
30007f12:	2a04      	cmp	r2, #4
30007f14:	d945      	bls.n	30007fa2 <rxi316_dram_init+0x956>
30007f16:	1f51      	subs	r1, r2, #5
30007f18:	2903      	cmp	r1, #3
30007f1a:	f200 80a6 	bhi.w	3000806a <rxi316_dram_init+0xa1e>
30007f1e:	3a04      	subs	r2, #4
30007f20:	f44f 5180 	mov.w	r1, #4096	; 0x1000
30007f24:	0252      	lsls	r2, r2, #9
30007f26:	e4cb      	b.n	300078c0 <rxi316_dram_init+0x274>
30007f28:	f242 7710 	movw	r7, #10000	; 0x2710
30007f2c:	f8df 80b0 	ldr.w	r8, [pc, #176]	; 30007fe0 <rxi316_dram_init+0x994>
30007f30:	f8df e0a4 	ldr.w	lr, [pc, #164]	; 30007fd8 <rxi316_dram_init+0x98c>
30007f34:	fbb7 f7f3 	udiv	r7, r7, r3
30007f38:	444f      	add	r7, r9
30007f3a:	fbb8 f8f3 	udiv	r8, r8, r3
30007f3e:	fbbe fef3 	udiv	lr, lr, r3
30007f42:	09ff      	lsrs	r7, r7, #7
30007f44:	ea4f 2898 	mov.w	r8, r8, lsr #10
30007f48:	3701      	adds	r7, #1
30007f4a:	ea4f 2e9e 	mov.w	lr, lr, lsr #10
30007f4e:	f108 0c01 	add.w	ip, r8, #1
30007f52:	f8df 8088 	ldr.w	r8, [pc, #136]	; 30007fdc <rxi316_dram_init+0x990>
30007f56:	023f      	lsls	r7, r7, #8
30007f58:	f10e 0e01 	add.w	lr, lr, #1
30007f5c:	ea08 380c 	and.w	r8, r8, ip, lsl #12
30007f60:	f407 6770 	and.w	r7, r7, #3840	; 0xf00
30007f64:	ea4f 5e8e 	mov.w	lr, lr, lsl #22
30007f68:	9701      	str	r7, [sp, #4]
30007f6a:	e62a      	b.n	30007bc2 <rxi316_dram_init+0x576>
30007f6c:	f8dd 801c 	ldr.w	r8, [sp, #28]
30007f70:	e5c9      	b.n	30007b06 <rxi316_dram_init+0x4ba>
30007f72:	2100      	movs	r1, #0
30007f74:	460a      	mov	r2, r1
30007f76:	e4a3      	b.n	300078c0 <rxi316_dram_init+0x274>
30007f78:	686a      	ldr	r2, [r5, #4]
30007f7a:	f042 0220 	orr.w	r2, r2, #32
30007f7e:	606a      	str	r2, [r5, #4]
30007f80:	e40a      	b.n	30007798 <rxi316_dram_init+0x14c>
30007f82:	2204      	movs	r2, #4
30007f84:	2102      	movs	r1, #2
30007f86:	2500      	movs	r5, #0
30007f88:	9202      	str	r2, [sp, #8]
30007f8a:	e9cd 2107 	strd	r2, r1, [sp, #28]
30007f8e:	f7ff bb8b 	b.w	300076a8 <rxi316_dram_init+0x5c>
30007f92:	3a07      	subs	r2, #7
30007f94:	f7ff bb9f 	b.w	300076d6 <rxi316_dram_init+0x8a>
30007f98:	9709      	str	r7, [sp, #36]	; 0x24
30007f9a:	e601      	b.n	30007ba0 <rxi316_dram_init+0x554>
30007f9c:	3a08      	subs	r2, #8
30007f9e:	f7ff bb9a 	b.w	300076d6 <rxi316_dram_init+0x8a>
30007fa2:	f44f 5180 	mov.w	r1, #4096	; 0x1000
30007fa6:	f44f 7200 	mov.w	r2, #512	; 0x200
30007faa:	e489      	b.n	300078c0 <rxi316_dram_init+0x274>
30007fac:	9a09      	ldr	r2, [sp, #36]	; 0x24
30007fae:	2a04      	cmp	r2, #4
30007fb0:	d854      	bhi.n	3000805c <rxi316_dram_init+0xa10>
30007fb2:	f040 0010 	orr.w	r0, r0, #16
30007fb6:	e47b      	b.n	300078b0 <rxi316_dram_init+0x264>
30007fb8:	41100000 	.word	0x41100000
30007fbc:	42008000 	.word	0x42008000
30007fc0:	41011000 	.word	0x41011000
30007fc4:	44000103 	.word	0x44000103
30007fc8:	44000021 	.word	0x44000021
30007fcc:	fff8fffc 	.word	0xfff8fffc
30007fd0:	00009b2d 	.word	0x00009b2d
30007fd4:	00061a80 	.word	0x00061a80
30007fd8:	0bebc200 	.word	0x0bebc200
30007fdc:	003ff000 	.word	0x003ff000
30007fe0:	1dcd6500 	.word	0x1dcd6500
30007fe4:	f1a1 0c09 	sub.w	ip, r1, #9
30007fe8:	f1a1 0602 	sub.w	r6, r1, #2
30007fec:	1e8d      	subs	r5, r1, #2
30007fee:	fabc fc8c 	clz	ip, ip
30007ff2:	fab6 f686 	clz	r6, r6
30007ff6:	2d01      	cmp	r5, #1
30007ff8:	ea4f 1c5c 	mov.w	ip, ip, lsr #5
30007ffc:	ea4f 1656 	mov.w	r6, r6, lsr #5
30008000:	ea4c 0706 	orr.w	r7, ip, r6
30008004:	d903      	bls.n	3000800e <rxi316_dram_init+0x9c2>
30008006:	f1bc 0f00 	cmp.w	ip, #0
3000800a:	f43f ac4a 	beq.w	300078a2 <rxi316_dram_init+0x256>
3000800e:	f040 0002 	orr.w	r0, r0, #2
30008012:	e446      	b.n	300078a2 <rxi316_dram_init+0x256>
30008014:	4f1d      	ldr	r7, [pc, #116]	; (3000808c <rxi316_dram_init+0xa40>)
30008016:	f04f 0e00 	mov.w	lr, #0
3000801a:	fbb7 f8f3 	udiv	r8, r7, r3
3000801e:	ea4f 2898 	mov.w	r8, r8, lsr #10
30008022:	f8cd e004 	str.w	lr, [sp, #4]
30008026:	f108 0701 	add.w	r7, r8, #1
3000802a:	f8df 8064 	ldr.w	r8, [pc, #100]	; 30008090 <rxi316_dram_init+0xa44>
3000802e:	ea08 3807 	and.w	r8, r8, r7, lsl #12
30008032:	e5c6      	b.n	30007bc2 <rxi316_dram_init+0x576>
30008034:	9909      	ldr	r1, [sp, #36]	; 0x24
30008036:	f101 0802 	add.w	r8, r1, #2
3000803a:	990d      	ldr	r1, [sp, #52]	; 0x34
3000803c:	eba8 0801 	sub.w	r8, r8, r1
30008040:	9908      	ldr	r1, [sp, #32]
30008042:	4488      	add	r8, r1
30008044:	e55f      	b.n	30007b06 <rxi316_dram_init+0x4ba>
30008046:	2504      	movs	r5, #4
30008048:	e6dd      	b.n	30007e06 <rxi316_dram_init+0x7ba>
3000804a:	686a      	ldr	r2, [r5, #4]
3000804c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
30008050:	606a      	str	r2, [r5, #4]
30008052:	f7ff bba1 	b.w	30007798 <rxi316_dram_init+0x14c>
30008056:	2702      	movs	r7, #2
30008058:	9709      	str	r7, [sp, #36]	; 0x24
3000805a:	e59a      	b.n	30007b92 <rxi316_dram_init+0x546>
3000805c:	9a09      	ldr	r2, [sp, #36]	; 0x24
3000805e:	2a0b      	cmp	r2, #11
30008060:	d80d      	bhi.n	3000807e <rxi316_dram_init+0xa32>
30008062:	3a04      	subs	r2, #4
30008064:	ea40 1002 	orr.w	r0, r0, r2, lsl #4
30008068:	e422      	b.n	300078b0 <rxi316_dram_init+0x264>
3000806a:	f1a2 0109 	sub.w	r1, r2, #9
3000806e:	2905      	cmp	r1, #5
30008070:	f63f ac23 	bhi.w	300078ba <rxi316_dram_init+0x26e>
30008074:	0852      	lsrs	r2, r2, #1
30008076:	f44f 5180 	mov.w	r1, #4096	; 0x1000
3000807a:	0252      	lsls	r2, r2, #9
3000807c:	e420      	b.n	300078c0 <rxi316_dram_init+0x274>
3000807e:	9a09      	ldr	r2, [sp, #36]	; 0x24
30008080:	3a0c      	subs	r2, #12
30008082:	ea40 1002 	orr.w	r0, r0, r2, lsl #4
30008086:	f040 0004 	orr.w	r0, r0, #4
3000808a:	e411      	b.n	300078b0 <rxi316_dram_init+0x264>
3000808c:	0bebc200 	.word	0x0bebc200
30008090:	003ff000 	.word	0x003ff000

30008094 <rxi316_ftend_init>:
30008094:	2300      	movs	r3, #0
30008096:	b510      	push	{r4, lr}
30008098:	4c0c      	ldr	r4, [pc, #48]	; (300080cc <rxi316_ftend_init+0x38>)
3000809a:	f8c4 3818 	str.w	r3, [r4, #2072]	; 0x818
3000809e:	f8c4 3858 	str.w	r3, [r4, #2136]	; 0x858
300080a2:	f8c4 3898 	str.w	r3, [r4, #2200]	; 0x898
300080a6:	f7fe fe4d 	bl	30006d44 <ddr_init_index>
300080aa:	4a09      	ldr	r2, [pc, #36]	; (300080d0 <rxi316_ftend_init+0x3c>)
300080ac:	f8d4 3104 	ldr.w	r3, [r4, #260]	; 0x104
300080b0:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
300080b4:	f023 02ff 	bic.w	r2, r3, #255	; 0xff
300080b8:	68cb      	ldr	r3, [r1, #12]
300080ba:	689b      	ldr	r3, [r3, #8]
300080bc:	6a5b      	ldr	r3, [r3, #36]	; 0x24
300080be:	3301      	adds	r3, #1
300080c0:	b2db      	uxtb	r3, r3
300080c2:	4313      	orrs	r3, r2
300080c4:	f8c4 3104 	str.w	r3, [r4, #260]	; 0x104
300080c8:	bd10      	pop	{r4, pc}
300080ca:	bf00      	nop
300080cc:	41101000 	.word	0x41101000
300080d0:	3000dc80 	.word	0x3000dc80

300080d4 <rxi316_DynSre_init>:
300080d4:	b538      	push	{r3, r4, r5, lr}
300080d6:	4b20      	ldr	r3, [pc, #128]	; (30008158 <rxi316_DynSre_init+0x84>)
300080d8:	4604      	mov	r4, r0
300080da:	460d      	mov	r5, r1
300080dc:	4798      	blx	r3
300080de:	2802      	cmp	r0, #2
300080e0:	d91c      	bls.n	3000811c <rxi316_DynSre_init+0x48>
300080e2:	4b1e      	ldr	r3, [pc, #120]	; (3000815c <rxi316_DynSre_init+0x88>)
300080e4:	691b      	ldr	r3, [r3, #16]
300080e6:	f3c3 230f 	ubfx	r3, r3, #8, #16
300080ea:	3b46      	subs	r3, #70	; 0x46
300080ec:	42a3      	cmp	r3, r4
300080ee:	d92d      	bls.n	3000814c <rxi316_DynSre_init+0x78>
300080f0:	2d01      	cmp	r5, #1
300080f2:	d017      	beq.n	30008124 <rxi316_DynSre_init+0x50>
300080f4:	4a19      	ldr	r2, [pc, #100]	; (3000815c <rxi316_DynSre_init+0x88>)
300080f6:	6893      	ldr	r3, [r2, #8]
300080f8:	f023 0380 	bic.w	r3, r3, #128	; 0x80
300080fc:	6093      	str	r3, [r2, #8]
300080fe:	4b17      	ldr	r3, [pc, #92]	; (3000815c <rxi316_DynSre_init+0x88>)
30008100:	f44f 1200 	mov.w	r2, #2097152	; 0x200000
30008104:	f04f 4100 	mov.w	r1, #2147483648	; 0x80000000
30008108:	625a      	str	r2, [r3, #36]	; 0x24
3000810a:	629a      	str	r2, [r3, #40]	; 0x28
3000810c:	69da      	ldr	r2, [r3, #28]
3000810e:	f422 6270 	bic.w	r2, r2, #3840	; 0xf00
30008112:	f442 7200 	orr.w	r2, r2, #512	; 0x200
30008116:	61da      	str	r2, [r3, #28]
30008118:	6019      	str	r1, [r3, #0]
3000811a:	bd38      	pop	{r3, r4, r5, pc}
3000811c:	2d01      	cmp	r5, #1
3000811e:	f04f 0400 	mov.w	r4, #0
30008122:	d1e7      	bne.n	300080f4 <rxi316_DynSre_init+0x20>
30008124:	4b0d      	ldr	r3, [pc, #52]	; (3000815c <rxi316_DynSre_init+0x88>)
30008126:	f64f 70fe 	movw	r0, #65534	; 0xfffe
3000812a:	4a0d      	ldr	r2, [pc, #52]	; (30008160 <rxi316_DynSre_init+0x8c>)
3000812c:	f8d3 1100 	ldr.w	r1, [r3, #256]	; 0x100
30008130:	4004      	ands	r4, r0
30008132:	400a      	ands	r2, r1
30008134:	f8c3 2100 	str.w	r2, [r3, #256]	; 0x100
30008138:	f8d3 0100 	ldr.w	r0, [r3, #256]	; 0x100
3000813c:	4304      	orrs	r4, r0
3000813e:	f8c3 4100 	str.w	r4, [r3, #256]	; 0x100
30008142:	689a      	ldr	r2, [r3, #8]
30008144:	f042 0280 	orr.w	r2, r2, #128	; 0x80
30008148:	609a      	str	r2, [r3, #8]
3000814a:	e7d8      	b.n	300080fe <rxi316_DynSre_init+0x2a>
3000814c:	f240 410e 	movw	r1, #1038	; 0x40e
30008150:	4804      	ldr	r0, [pc, #16]	; (30008164 <rxi316_DynSre_init+0x90>)
30008152:	f002 f9c1 	bl	3000a4d8 <io_assert_failed>
30008156:	bf00      	nop
30008158:	30009b2d 	.word	0x30009b2d
3000815c:	41100000 	.word	0x41100000
30008160:	ffff0000 	.word	0xffff0000
30008164:	3000c3f8 	.word	0x3000c3f8

30008168 <ddr_init>:
30008168:	b500      	push	{lr}
3000816a:	b083      	sub	sp, #12
3000816c:	f7fe fdea 	bl	30006d44 <ddr_init_index>
30008170:	4b06      	ldr	r3, [pc, #24]	; (3000818c <ddr_init+0x24>)
30008172:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
30008176:	9001      	str	r0, [sp, #4]
30008178:	f7fe fe0e 	bl	30006d98 <rxi316_perf_tune>
3000817c:	9801      	ldr	r0, [sp, #4]
3000817e:	f7ff fa65 	bl	3000764c <rxi316_dram_init>
30008182:	b003      	add	sp, #12
30008184:	f85d eb04 	ldr.w	lr, [sp], #4
30008188:	f7ff bf84 	b.w	30008094 <rxi316_ftend_init>
3000818c:	3000dc80 	.word	0x3000dc80

30008190 <PSRAM_INFO_Update>:
30008190:	4b49      	ldr	r3, [pc, #292]	; (300082b8 <PSRAM_INFO_Update+0x128>)
30008192:	494a      	ldr	r1, [pc, #296]	; (300082bc <PSRAM_INFO_Update+0x12c>)
30008194:	4a4a      	ldr	r2, [pc, #296]	; (300082c0 <PSRAM_INFO_Update+0x130>)
30008196:	b530      	push	{r4, r5, lr}
30008198:	f8d3 3228 	ldr.w	r3, [r3, #552]	; 0x228
3000819c:	b083      	sub	sp, #12
3000819e:	680d      	ldr	r5, [r1, #0]
300081a0:	f3c3 2302 	ubfx	r3, r3, #8, #3
300081a4:	4c47      	ldr	r4, [pc, #284]	; (300082c4 <PSRAM_INFO_Update+0x134>)
300081a6:	fb02 f505 	mul.w	r5, r2, r5
300081aa:	3301      	adds	r3, #1
300081ac:	fbb5 f5f3 	udiv	r5, r5, r3
300081b0:	086a      	lsrs	r2, r5, #1
300081b2:	4b45      	ldr	r3, [pc, #276]	; (300082c8 <PSRAM_INFO_Update+0x138>)
300081b4:	60e2      	str	r2, [r4, #12]
300081b6:	4798      	blx	r3
300081b8:	4b44      	ldr	r3, [pc, #272]	; (300082cc <PSRAM_INFO_Update+0x13c>)
300081ba:	6020      	str	r0, [r4, #0]
300081bc:	4798      	blx	r3
300081be:	4b44      	ldr	r3, [pc, #272]	; (300082d0 <PSRAM_INFO_Update+0x140>)
300081c0:	220a      	movs	r2, #10
300081c2:	60a0      	str	r0, [r4, #8]
300081c4:	6122      	str	r2, [r4, #16]
300081c6:	2220      	movs	r2, #32
300081c8:	fbb3 f3f5 	udiv	r3, r3, r5
300081cc:	6163      	str	r3, [r4, #20]
300081ce:	fbb2 f3f3 	udiv	r3, r2, r3
300081d2:	6822      	ldr	r2, [r4, #0]
300081d4:	6223      	str	r3, [r4, #32]
300081d6:	2a01      	cmp	r2, #1
300081d8:	68e3      	ldr	r3, [r4, #12]
300081da:	4a3e      	ldr	r2, [pc, #248]	; (300082d4 <PSRAM_INFO_Update+0x144>)
300081dc:	d01d      	beq.n	3000821a <PSRAM_INFO_Update+0x8a>
300081de:	4293      	cmp	r3, r2
300081e0:	d810      	bhi.n	30008204 <PSRAM_INFO_Update+0x74>
300081e2:	2304      	movs	r3, #4
300081e4:	2208      	movs	r2, #8
300081e6:	4618      	mov	r0, r3
300081e8:	e9c4 3206 	strd	r3, r2, [r4, #24]
300081ec:	493a      	ldr	r1, [pc, #232]	; (300082d8 <PSRAM_INFO_Update+0x148>)
300081ee:	2249      	movs	r2, #73	; 0x49
300081f0:	4b3a      	ldr	r3, [pc, #232]	; (300082dc <PSRAM_INFO_Update+0x14c>)
300081f2:	f881 0110 	strb.w	r0, [r1, #272]	; 0x110
300081f6:	2004      	movs	r0, #4
300081f8:	4939      	ldr	r1, [pc, #228]	; (300082e0 <PSRAM_INFO_Update+0x150>)
300081fa:	9500      	str	r5, [sp, #0]
300081fc:	f001 f938 	bl	30009470 <rtk_log_write>
30008200:	b003      	add	sp, #12
30008202:	bd30      	pop	{r4, r5, pc}
30008204:	4a37      	ldr	r2, [pc, #220]	; (300082e4 <PSRAM_INFO_Update+0x154>)
30008206:	4293      	cmp	r3, r2
30008208:	d918      	bls.n	3000823c <PSRAM_INFO_Update+0xac>
3000820a:	4a37      	ldr	r2, [pc, #220]	; (300082e8 <PSRAM_INFO_Update+0x158>)
3000820c:	4293      	cmp	r3, r2
3000820e:	d827      	bhi.n	30008260 <PSRAM_INFO_Update+0xd0>
30008210:	2306      	movs	r3, #6
30008212:	4618      	mov	r0, r3
30008214:	e9c4 3306 	strd	r3, r3, [r4, #24]
30008218:	e7e8      	b.n	300081ec <PSRAM_INFO_Update+0x5c>
3000821a:	4293      	cmp	r3, r2
3000821c:	d908      	bls.n	30008230 <PSRAM_INFO_Update+0xa0>
3000821e:	4a31      	ldr	r2, [pc, #196]	; (300082e4 <PSRAM_INFO_Update+0x154>)
30008220:	4293      	cmp	r3, r2
30008222:	d811      	bhi.n	30008248 <PSRAM_INFO_Update+0xb8>
30008224:	2305      	movs	r3, #5
30008226:	220f      	movs	r2, #15
30008228:	4618      	mov	r0, r3
3000822a:	e9c4 3206 	strd	r3, r2, [r4, #24]
3000822e:	e7dd      	b.n	300081ec <PSRAM_INFO_Update+0x5c>
30008230:	2304      	movs	r3, #4
30008232:	220f      	movs	r2, #15
30008234:	4618      	mov	r0, r3
30008236:	e9c4 3206 	strd	r3, r2, [r4, #24]
3000823a:	e7d7      	b.n	300081ec <PSRAM_INFO_Update+0x5c>
3000823c:	2305      	movs	r3, #5
3000823e:	2208      	movs	r2, #8
30008240:	4618      	mov	r0, r3
30008242:	e9c4 3206 	strd	r3, r2, [r4, #24]
30008246:	e7d1      	b.n	300081ec <PSRAM_INFO_Update+0x5c>
30008248:	4a27      	ldr	r2, [pc, #156]	; (300082e8 <PSRAM_INFO_Update+0x158>)
3000824a:	4293      	cmp	r3, r2
3000824c:	d918      	bls.n	30008280 <PSRAM_INFO_Update+0xf0>
3000824e:	4a27      	ldr	r2, [pc, #156]	; (300082ec <PSRAM_INFO_Update+0x15c>)
30008250:	4293      	cmp	r3, r2
30008252:	d821      	bhi.n	30008298 <PSRAM_INFO_Update+0x108>
30008254:	2307      	movs	r3, #7
30008256:	2214      	movs	r2, #20
30008258:	4618      	mov	r0, r3
3000825a:	e9c4 3206 	strd	r3, r2, [r4, #24]
3000825e:	e7c5      	b.n	300081ec <PSRAM_INFO_Update+0x5c>
30008260:	4a22      	ldr	r2, [pc, #136]	; (300082ec <PSRAM_INFO_Update+0x15c>)
30008262:	4293      	cmp	r3, r2
30008264:	d912      	bls.n	3000828c <PSRAM_INFO_Update+0xfc>
30008266:	4a22      	ldr	r2, [pc, #136]	; (300082f0 <PSRAM_INFO_Update+0x160>)
30008268:	4293      	cmp	r3, r2
3000826a:	bf8c      	ite	hi
3000826c:	2300      	movhi	r3, #0
3000826e:	2301      	movls	r3, #1
30008270:	2804      	cmp	r0, #4
30008272:	d100      	bne.n	30008276 <PSRAM_INFO_Update+0xe6>
30008274:	b953      	cbnz	r3, 3000828c <PSRAM_INFO_Update+0xfc>
30008276:	2803      	cmp	r0, #3
30008278:	d100      	bne.n	3000827c <PSRAM_INFO_Update+0xec>
3000827a:	b9b3      	cbnz	r3, 300082aa <PSRAM_INFO_Update+0x11a>
3000827c:	7e20      	ldrb	r0, [r4, #24]
3000827e:	e7b5      	b.n	300081ec <PSRAM_INFO_Update+0x5c>
30008280:	2306      	movs	r3, #6
30008282:	2212      	movs	r2, #18
30008284:	4618      	mov	r0, r3
30008286:	e9c4 3206 	strd	r3, r2, [r4, #24]
3000828a:	e7af      	b.n	300081ec <PSRAM_INFO_Update+0x5c>
3000828c:	2307      	movs	r3, #7
3000828e:	2206      	movs	r2, #6
30008290:	4618      	mov	r0, r3
30008292:	e9c4 3206 	strd	r3, r2, [r4, #24]
30008296:	e7a9      	b.n	300081ec <PSRAM_INFO_Update+0x5c>
30008298:	4a15      	ldr	r2, [pc, #84]	; (300082f0 <PSRAM_INFO_Update+0x160>)
3000829a:	4293      	cmp	r3, r2
3000829c:	d8ee      	bhi.n	3000827c <PSRAM_INFO_Update+0xec>
3000829e:	2308      	movs	r3, #8
300082a0:	221c      	movs	r2, #28
300082a2:	4618      	mov	r0, r3
300082a4:	e9c4 3206 	strd	r3, r2, [r4, #24]
300082a8:	e7a0      	b.n	300081ec <PSRAM_INFO_Update+0x5c>
300082aa:	230a      	movs	r3, #10
300082ac:	2206      	movs	r2, #6
300082ae:	4618      	mov	r0, r3
300082b0:	e9c4 3206 	strd	r3, r2, [r4, #24]
300082b4:	e79a      	b.n	300081ec <PSRAM_INFO_Update+0x5c>
300082b6:	bf00      	nop
300082b8:	42008000 	.word	0x42008000
300082bc:	3000d8fc 	.word	0x3000d8fc
300082c0:	000f4240 	.word	0x000f4240
300082c4:	3000e67c 	.word	0x3000e67c
300082c8:	30009671 	.word	0x30009671
300082cc:	30009639 	.word	0x30009639
300082d0:	3b9aca00 	.word	0x3b9aca00
300082d4:	0632ea00 	.word	0x0632ea00
300082d8:	23020000 	.word	0x23020000
300082dc:	3000c464 	.word	0x3000c464
300082e0:	3000c480 	.word	0x3000c480
300082e4:	07ed6b40 	.word	0x07ed6b40
300082e8:	09e4f580 	.word	0x09e4f580
300082ec:	0bebc200 	.word	0x0bebc200
300082f0:	0ee6b280 	.word	0x0ee6b280

300082f4 <PSRAM_PHY_StructInit>:
300082f4:	2203      	movs	r2, #3
300082f6:	2301      	movs	r3, #1
300082f8:	210a      	movs	r1, #10
300082fa:	b410      	push	{r4}
300082fc:	e9c0 2202 	strd	r2, r2, [r0, #8]
30008300:	2402      	movs	r4, #2
30008302:	2207      	movs	r2, #7
30008304:	e9c0 3400 	strd	r3, r4, [r0]
30008308:	e9c0 1304 	strd	r1, r3, [r0, #16]
3000830c:	f85d 4b04 	ldr.w	r4, [sp], #4
30008310:	6182      	str	r2, [r0, #24]
30008312:	4770      	bx	lr

30008314 <PSRAM_PHY_Init>:
30008314:	b538      	push	{r3, r4, r5, lr}
30008316:	4604      	mov	r4, r0
30008318:	6903      	ldr	r3, [r0, #16]
3000831a:	4d14      	ldr	r5, [pc, #80]	; (3000836c <PSRAM_PHY_Init+0x58>)
3000831c:	f003 031f 	and.w	r3, r3, #31
30008320:	4913      	ldr	r1, [pc, #76]	; (30008370 <PSRAM_PHY_Init+0x5c>)
30008322:	e9d0 0200 	ldrd	r0, r2, [r0]
30008326:	0612      	lsls	r2, r2, #24
30008328:	ea43 7300 	orr.w	r3, r3, r0, lsl #28
3000832c:	f002 62e0 	and.w	r2, r2, #117440512	; 0x7000000
30008330:	4313      	orrs	r3, r2
30008332:	68a2      	ldr	r2, [r4, #8]
30008334:	0412      	lsls	r2, r2, #16
30008336:	f402 2270 	and.w	r2, r2, #983040	; 0xf0000
3000833a:	4313      	orrs	r3, r2
3000833c:	68e2      	ldr	r2, [r4, #12]
3000833e:	0212      	lsls	r2, r2, #8
30008340:	f402 6270 	and.w	r2, r2, #3840	; 0xf00
30008344:	4313      	orrs	r3, r2
30008346:	606b      	str	r3, [r5, #4]
30008348:	4788      	blx	r1
3000834a:	2801      	cmp	r0, #1
3000834c:	e9d4 3105 	ldrd	r3, r1, [r4, #20]
30008350:	bf08      	it	eq
30008352:	4a08      	ldreq	r2, [pc, #32]	; (30008374 <PSRAM_PHY_Init+0x60>)
30008354:	ea4f 1303 	mov.w	r3, r3, lsl #4
30008358:	f001 010f 	and.w	r1, r1, #15
3000835c:	bf18      	it	ne
3000835e:	4a06      	ldrne	r2, [pc, #24]	; (30008378 <PSRAM_PHY_Init+0x64>)
30008360:	b2db      	uxtb	r3, r3
30008362:	430b      	orrs	r3, r1
30008364:	431a      	orrs	r2, r3
30008366:	61aa      	str	r2, [r5, #24]
30008368:	bd38      	pop	{r3, r4, r5, pc}
3000836a:	bf00      	nop
3000836c:	41002000 	.word	0x41002000
30008370:	30009671 	.word	0x30009671
30008374:	80000e00 	.word	0x80000e00
30008378:	80000f00 	.word	0x80000f00

3000837c <PSRAM_CTRL_Init>:
3000837c:	b470      	push	{r4, r5, r6}
3000837e:	4b4c      	ldr	r3, [pc, #304]	; (300084b0 <PSRAM_CTRL_Init+0x134>)
30008380:	2400      	movs	r4, #0
30008382:	4a4c      	ldr	r2, [pc, #304]	; (300084b4 <PSRAM_CTRL_Init+0x138>)
30008384:	f24d 0101 	movw	r1, #53249	; 0xd001
30008388:	609c      	str	r4, [r3, #8]
3000838a:	2001      	movs	r0, #1
3000838c:	601a      	str	r2, [r3, #0]
3000838e:	4a4a      	ldr	r2, [pc, #296]	; (300084b8 <PSRAM_CTRL_Init+0x13c>)
30008390:	6158      	str	r0, [r3, #20]
30008392:	f8c3 1120 	str.w	r1, [r3, #288]	; 0x120
30008396:	6811      	ldr	r1, [r2, #0]
30008398:	2902      	cmp	r1, #2
3000839a:	d04a      	beq.n	30008432 <PSRAM_CTRL_Init+0xb6>
3000839c:	6954      	ldr	r4, [r2, #20]
3000839e:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
300083a2:	69d0      	ldr	r0, [r2, #28]
300083a4:	6915      	ldr	r5, [r2, #16]
300083a6:	fbb0 f0f4 	udiv	r0, r0, r4
300083aa:	fbb1 f1f4 	udiv	r1, r1, r4
300083ae:	6994      	ldr	r4, [r2, #24]
300083b0:	f005 020f 	and.w	r2, r5, #15
300083b4:	f241 5551 	movw	r5, #5457	; 0x1551
300083b8:	f442 628e 	orr.w	r2, r2, #1136	; 0x470
300083bc:	f8c3 5110 	str.w	r5, [r3, #272]	; 0x110
300083c0:	f8c3 2134 	str.w	r2, [r3, #308]	; 0x134
300083c4:	094a      	lsrs	r2, r1, #5
300083c6:	0181      	lsls	r1, r0, #6
300083c8:	f000 003f 	and.w	r0, r0, #63	; 0x3f
300083cc:	4d3b      	ldr	r5, [pc, #236]	; (300084bc <PSRAM_CTRL_Init+0x140>)
300083ce:	f401 617c 	and.w	r1, r1, #4032	; 0xfc0
300083d2:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
300083d6:	00a2      	lsls	r2, r4, #2
300083d8:	4301      	orrs	r1, r0
300083da:	f24a 00a0 	movw	r0, #41120	; 0xa0a0
300083de:	3a01      	subs	r2, #1
300083e0:	430d      	orrs	r5, r1
300083e2:	f242 0120 	movw	r1, #8224	; 0x2020
300083e6:	f3c2 020b 	ubfx	r2, r2, #0, #12
300083ea:	f8c3 5138 	str.w	r5, [r3, #312]	; 0x138
300083ee:	f8c3 10e0 	str.w	r1, [r3, #224]	; 0xe0
300083f2:	f44f 2180 	mov.w	r1, #262144	; 0x40000
300083f6:	f8c3 00f4 	str.w	r0, [r3, #244]	; 0xf4
300083fa:	f06f 4000 	mvn.w	r0, #2147483648	; 0x80000000
300083fe:	f8c3 111c 	str.w	r1, [r3, #284]	; 0x11c
30008402:	f442 2184 	orr.w	r1, r2, #270336	; 0x42000
30008406:	4420      	add	r0, r4
30008408:	f8c3 1118 	str.w	r1, [r3, #280]	; 0x118
3000840c:	f640 71fe 	movw	r1, #4094	; 0xffe
30008410:	f8d3 511c 	ldr.w	r5, [r3, #284]	; 0x11c
30008414:	ea01 0140 	and.w	r1, r1, r0, lsl #1
30008418:	432a      	orrs	r2, r5
3000841a:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
3000841e:	f8c3 211c 	str.w	r2, [r3, #284]	; 0x11c
30008422:	f8c3 113c 	str.w	r1, [r3, #316]	; 0x13c
30008426:	4a22      	ldr	r2, [pc, #136]	; (300084b0 <PSRAM_CTRL_Init+0x134>)
30008428:	6a93      	ldr	r3, [r2, #40]	; 0x28
3000842a:	061b      	lsls	r3, r3, #24
3000842c:	d5fc      	bpl.n	30008428 <PSRAM_CTRL_Init+0xac>
3000842e:	bc70      	pop	{r4, r5, r6}
30008430:	4770      	bx	lr
30008432:	6955      	ldr	r5, [r2, #20]
30008434:	207d      	movs	r0, #125	; 0x7d
30008436:	69d1      	ldr	r1, [r2, #28]
30008438:	26a0      	movs	r6, #160	; 0xa0
3000843a:	6914      	ldr	r4, [r2, #16]
3000843c:	6992      	ldr	r2, [r2, #24]
3000843e:	f004 040f 	and.w	r4, r4, #15
30008442:	0092      	lsls	r2, r2, #2
30008444:	fbb1 f1f5 	udiv	r1, r1, r5
30008448:	fbb0 f5f5 	udiv	r5, r0, r5
3000844c:	f245 5051 	movw	r0, #21841	; 0x5551
30008450:	f8c3 0110 	str.w	r0, [r3, #272]	; 0x110
30008454:	f001 003f 	and.w	r0, r1, #63	; 0x3f
30008458:	0189      	lsls	r1, r1, #6
3000845a:	ea40 6005 	orr.w	r0, r0, r5, lsl #24
3000845e:	f641 4570 	movw	r5, #7280	; 0x1c70
30008462:	f401 617c 	and.w	r1, r1, #4032	; 0xfc0
30008466:	4325      	orrs	r5, r4
30008468:	2420      	movs	r4, #32
3000846a:	4308      	orrs	r0, r1
3000846c:	1e51      	subs	r1, r2, #1
3000846e:	f8c3 5134 	str.w	r5, [r3, #308]	; 0x134
30008472:	3a02      	subs	r2, #2
30008474:	f440 1080 	orr.w	r0, r0, #1048576	; 0x100000
30008478:	f3c1 010b 	ubfx	r1, r1, #0, #12
3000847c:	f3c2 020b 	ubfx	r2, r2, #0, #12
30008480:	f8c3 0138 	str.w	r0, [r3, #312]	; 0x138
30008484:	f44f 20a0 	mov.w	r0, #327680	; 0x50000
30008488:	f8c3 60e0 	str.w	r6, [r3, #224]	; 0xe0
3000848c:	f8c3 40f4 	str.w	r4, [r3, #244]	; 0xf4
30008490:	f8c3 011c 	str.w	r0, [r3, #284]	; 0x11c
30008494:	f441 20a2 	orr.w	r0, r1, #331776	; 0x51000
30008498:	f8c3 0118 	str.w	r0, [r3, #280]	; 0x118
3000849c:	f8d3 011c 	ldr.w	r0, [r3, #284]	; 0x11c
300084a0:	4301      	orrs	r1, r0
300084a2:	f441 4100 	orr.w	r1, r1, #32768	; 0x8000
300084a6:	f8c3 111c 	str.w	r1, [r3, #284]	; 0x11c
300084aa:	f8c3 213c 	str.w	r2, [r3, #316]	; 0x13c
300084ae:	e7ba      	b.n	30008426 <PSRAM_CTRL_Init+0xaa>
300084b0:	41012000 	.word	0x41012000
300084b4:	00bfe000 	.word	0x00bfe000
300084b8:	3000e67c 	.word	0x3000e67c
300084bc:	00107000 	.word	0x00107000

300084c0 <PSRAM_REG_Write>:
300084c0:	b430      	push	{r4, r5}
300084c2:	4c20      	ldr	r4, [pc, #128]	; (30008544 <PSRAM_REG_Write+0x84>)
300084c4:	6aa3      	ldr	r3, [r4, #40]	; 0x28
300084c6:	f013 0301 	ands.w	r3, r3, #1
300084ca:	d1fb      	bne.n	300084c4 <PSRAM_REG_Write+0x4>
300084cc:	6825      	ldr	r5, [r4, #0]
300084ce:	f045 4500 	orr.w	r5, r5, #2147483648	; 0x80000000
300084d2:	6025      	str	r5, [r4, #0]
300084d4:	60a3      	str	r3, [r4, #8]
300084d6:	6825      	ldr	r5, [r4, #0]
300084d8:	f425 7540 	bic.w	r5, r5, #768	; 0x300
300084dc:	6025      	str	r5, [r4, #0]
300084de:	6063      	str	r3, [r4, #4]
300084e0:	f021 437f 	bic.w	r3, r1, #4278190080	; 0xff000000
300084e4:	f8c4 3130 	str.w	r3, [r4, #304]	; 0x130
300084e8:	23c0      	movs	r3, #192	; 0xc0
300084ea:	f884 3060 	strb.w	r3, [r4, #96]	; 0x60
300084ee:	f884 3060 	strb.w	r3, [r4, #96]	; 0x60
300084f2:	0e03      	lsrs	r3, r0, #24
300084f4:	f884 3060 	strb.w	r3, [r4, #96]	; 0x60
300084f8:	f3c0 4307 	ubfx	r3, r0, #16, #8
300084fc:	f884 3060 	strb.w	r3, [r4, #96]	; 0x60
30008500:	f3c0 2307 	ubfx	r3, r0, #8, #8
30008504:	b2c0      	uxtb	r0, r0
30008506:	f884 3060 	strb.w	r3, [r4, #96]	; 0x60
3000850a:	f884 0060 	strb.w	r0, [r4, #96]	; 0x60
3000850e:	b141      	cbz	r1, 30008522 <PSRAM_REG_Write+0x62>
30008510:	3a01      	subs	r2, #1
30008512:	480c      	ldr	r0, [pc, #48]	; (30008544 <PSRAM_REG_Write+0x84>)
30008514:	4411      	add	r1, r2
30008516:	f812 3f01 	ldrb.w	r3, [r2, #1]!
3000851a:	428a      	cmp	r2, r1
3000851c:	f880 3060 	strb.w	r3, [r0, #96]	; 0x60
30008520:	d1f9      	bne.n	30008516 <PSRAM_REG_Write+0x56>
30008522:	4a08      	ldr	r2, [pc, #32]	; (30008544 <PSRAM_REG_Write+0x84>)
30008524:	2301      	movs	r3, #1
30008526:	6093      	str	r3, [r2, #8]
30008528:	6893      	ldr	r3, [r2, #8]
3000852a:	07d9      	lsls	r1, r3, #31
3000852c:	d4fc      	bmi.n	30008528 <PSRAM_REG_Write+0x68>
3000852e:	4a05      	ldr	r2, [pc, #20]	; (30008544 <PSRAM_REG_Write+0x84>)
30008530:	6a93      	ldr	r3, [r2, #40]	; 0x28
30008532:	07db      	lsls	r3, r3, #31
30008534:	d4fc      	bmi.n	30008530 <PSRAM_REG_Write+0x70>
30008536:	6813      	ldr	r3, [r2, #0]
30008538:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
3000853c:	6013      	str	r3, [r2, #0]
3000853e:	bc30      	pop	{r4, r5}
30008540:	4770      	bx	lr
30008542:	bf00      	nop
30008544:	41012000 	.word	0x41012000

30008548 <PSRAM_APM_DEVIC_Init>:
30008548:	4b12      	ldr	r3, [pc, #72]	; (30008594 <PSRAM_APM_DEVIC_Init+0x4c>)
3000854a:	2102      	movs	r1, #2
3000854c:	2000      	movs	r0, #0
3000854e:	b530      	push	{r4, r5, lr}
30008550:	4c11      	ldr	r4, [pc, #68]	; (30008598 <PSRAM_APM_DEVIC_Init+0x50>)
30008552:	b083      	sub	sp, #12
30008554:	699d      	ldr	r5, [r3, #24]
30008556:	466a      	mov	r2, sp
30008558:	eb04 0c05 	add.w	ip, r4, r5
3000855c:	1eeb      	subs	r3, r5, #3
3000855e:	4c0f      	ldr	r4, [pc, #60]	; (3000859c <PSRAM_APM_DEVIC_Init+0x54>)
30008560:	408b      	lsls	r3, r1
30008562:	f81c cc03 	ldrb.w	ip, [ip, #-3]
30008566:	f003 031c 	and.w	r3, r3, #28
3000856a:	ea4f 1c4c 	mov.w	ip, ip, lsl #5
3000856e:	f043 0320 	orr.w	r3, r3, #32
30008572:	fa5f fc8c 	uxtb.w	ip, ip
30008576:	f88d 3000 	strb.w	r3, [sp]
3000857a:	f88d c004 	strb.w	ip, [sp, #4]
3000857e:	f88d 3001 	strb.w	r3, [sp, #1]
30008582:	f88d c005 	strb.w	ip, [sp, #5]
30008586:	47a0      	blx	r4
30008588:	aa01      	add	r2, sp, #4
3000858a:	2102      	movs	r1, #2
3000858c:	2004      	movs	r0, #4
3000858e:	47a0      	blx	r4
30008590:	b003      	add	sp, #12
30008592:	bd30      	pop	{r4, r5, pc}
30008594:	3000e67c 	.word	0x3000e67c
30008598:	3000de18 	.word	0x3000de18
3000859c:	300084c1 	.word	0x300084c1

300085a0 <PSRAM_WB_REG_Write>:
300085a0:	b430      	push	{r4, r5}
300085a2:	4c1e      	ldr	r4, [pc, #120]	; (3000861c <PSRAM_WB_REG_Write+0x7c>)
300085a4:	6aa3      	ldr	r3, [r4, #40]	; 0x28
300085a6:	f013 0301 	ands.w	r3, r3, #1
300085aa:	d1fb      	bne.n	300085a4 <PSRAM_WB_REG_Write+0x4>
300085ac:	6825      	ldr	r5, [r4, #0]
300085ae:	b2c0      	uxtb	r0, r0
300085b0:	f045 4500 	orr.w	r5, r5, #2147483648	; 0x80000000
300085b4:	6025      	str	r5, [r4, #0]
300085b6:	60a3      	str	r3, [r4, #8]
300085b8:	6825      	ldr	r5, [r4, #0]
300085ba:	f425 7540 	bic.w	r5, r5, #768	; 0x300
300085be:	6025      	str	r5, [r4, #0]
300085c0:	f021 457f 	bic.w	r5, r1, #4278190080	; 0xff000000
300085c4:	6063      	str	r3, [r4, #4]
300085c6:	f8c4 5130 	str.w	r5, [r4, #304]	; 0x130
300085ca:	2560      	movs	r5, #96	; 0x60
300085cc:	f884 5060 	strb.w	r5, [r4, #96]	; 0x60
300085d0:	2501      	movs	r5, #1
300085d2:	f884 3060 	strb.w	r3, [r4, #96]	; 0x60
300085d6:	f884 5060 	strb.w	r5, [r4, #96]	; 0x60
300085da:	f884 3060 	strb.w	r3, [r4, #96]	; 0x60
300085de:	f884 3060 	strb.w	r3, [r4, #96]	; 0x60
300085e2:	f884 0060 	strb.w	r0, [r4, #96]	; 0x60
300085e6:	b141      	cbz	r1, 300085fa <PSRAM_WB_REG_Write+0x5a>
300085e8:	3a01      	subs	r2, #1
300085ea:	480c      	ldr	r0, [pc, #48]	; (3000861c <PSRAM_WB_REG_Write+0x7c>)
300085ec:	4411      	add	r1, r2
300085ee:	f812 3f01 	ldrb.w	r3, [r2, #1]!
300085f2:	428a      	cmp	r2, r1
300085f4:	f880 3060 	strb.w	r3, [r0, #96]	; 0x60
300085f8:	d1f9      	bne.n	300085ee <PSRAM_WB_REG_Write+0x4e>
300085fa:	4a08      	ldr	r2, [pc, #32]	; (3000861c <PSRAM_WB_REG_Write+0x7c>)
300085fc:	2301      	movs	r3, #1
300085fe:	6093      	str	r3, [r2, #8]
30008600:	6893      	ldr	r3, [r2, #8]
30008602:	07d9      	lsls	r1, r3, #31
30008604:	d4fc      	bmi.n	30008600 <PSRAM_WB_REG_Write+0x60>
30008606:	4a05      	ldr	r2, [pc, #20]	; (3000861c <PSRAM_WB_REG_Write+0x7c>)
30008608:	6a93      	ldr	r3, [r2, #40]	; 0x28
3000860a:	07db      	lsls	r3, r3, #31
3000860c:	d4fc      	bmi.n	30008608 <PSRAM_WB_REG_Write+0x68>
3000860e:	6813      	ldr	r3, [r2, #0]
30008610:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
30008614:	6013      	str	r3, [r2, #0]
30008616:	bc30      	pop	{r4, r5}
30008618:	4770      	bx	lr
3000861a:	bf00      	nop
3000861c:	41012000 	.word	0x41012000

30008620 <PSRAM_WB_DEVIC_Init>:
30008620:	490b      	ldr	r1, [pc, #44]	; (30008650 <PSRAM_WB_DEVIC_Init+0x30>)
30008622:	4b0c      	ldr	r3, [pc, #48]	; (30008654 <PSRAM_WB_DEVIC_Init+0x34>)
30008624:	b510      	push	{r4, lr}
30008626:	6988      	ldr	r0, [r1, #24]
30008628:	b082      	sub	sp, #8
3000862a:	248f      	movs	r4, #143	; 0x8f
3000862c:	2102      	movs	r1, #2
3000862e:	4403      	add	r3, r0
30008630:	aa01      	add	r2, sp, #4
30008632:	f88d 4004 	strb.w	r4, [sp, #4]
30008636:	2000      	movs	r0, #0
30008638:	f813 3c03 	ldrb.w	r3, [r3, #-3]
3000863c:	4c06      	ldr	r4, [pc, #24]	; (30008658 <PSRAM_WB_DEVIC_Init+0x38>)
3000863e:	011b      	lsls	r3, r3, #4
30008640:	f043 030c 	orr.w	r3, r3, #12
30008644:	f88d 3005 	strb.w	r3, [sp, #5]
30008648:	47a0      	blx	r4
3000864a:	b002      	add	sp, #8
3000864c:	bd10      	pop	{r4, pc}
3000864e:	bf00      	nop
30008650:	3000e67c 	.word	0x3000e67c
30008654:	3000de38 	.word	0x3000de38
30008658:	300085a1 	.word	0x300085a1

3000865c <PSRAM_calibration>:
3000865c:	4a9c      	ldr	r2, [pc, #624]	; (300088d0 <PSRAM_calibration+0x274>)
3000865e:	2300      	movs	r3, #0
30008660:	499c      	ldr	r1, [pc, #624]	; (300088d4 <PSRAM_calibration+0x278>)
30008662:	489d      	ldr	r0, [pc, #628]	; (300088d8 <PSRAM_calibration+0x27c>)
30008664:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30008668:	6852      	ldr	r2, [r2, #4]
3000866a:	b093      	sub	sp, #76	; 0x4c
3000866c:	e9cd 230b 	strd	r2, r3, [sp, #44]	; 0x2c
30008670:	400a      	ands	r2, r1
30008672:	9311      	str	r3, [sp, #68]	; 0x44
30008674:	e9cd 330d 	strd	r3, r3, [sp, #52]	; 0x34
30008678:	e9cd 330f 	strd	r3, r3, [sp, #60]	; 0x3c
3000867c:	920a      	str	r2, [sp, #40]	; 0x28
3000867e:	6942      	ldr	r2, [r0, #20]
30008680:	03d1      	lsls	r1, r2, #15
30008682:	d51e      	bpl.n	300086c2 <PSRAM_calibration+0x66>
30008684:	f8c0 3084 	str.w	r3, [r0, #132]	; 0x84
30008688:	f3bf 8f4f 	dsb	sy
3000868c:	f8d0 5080 	ldr.w	r5, [r0, #128]	; 0x80
30008690:	f643 76e0 	movw	r6, #16352	; 0x3fe0
30008694:	f3c5 344e 	ubfx	r4, r5, #13, #15
30008698:	f3c5 05c9 	ubfx	r5, r5, #3, #10
3000869c:	0164      	lsls	r4, r4, #5
3000869e:	ea04 0106 	and.w	r1, r4, r6
300086a2:	462b      	mov	r3, r5
300086a4:	ea41 7283 	orr.w	r2, r1, r3, lsl #30
300086a8:	3b01      	subs	r3, #1
300086aa:	f8c0 2274 	str.w	r2, [r0, #628]	; 0x274
300086ae:	1c5a      	adds	r2, r3, #1
300086b0:	d1f8      	bne.n	300086a4 <PSRAM_calibration+0x48>
300086b2:	3c20      	subs	r4, #32
300086b4:	f114 0f20 	cmn.w	r4, #32
300086b8:	d1f1      	bne.n	3000869e <PSRAM_calibration+0x42>
300086ba:	f3bf 8f4f 	dsb	sy
300086be:	f3bf 8f6f 	isb	sy
300086c2:	4885      	ldr	r0, [pc, #532]	; (300088d8 <PSRAM_calibration+0x27c>)
300086c4:	2300      	movs	r3, #0
300086c6:	f8c0 3084 	str.w	r3, [r0, #132]	; 0x84
300086ca:	f3bf 8f4f 	dsb	sy
300086ce:	6943      	ldr	r3, [r0, #20]
300086d0:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
300086d4:	6143      	str	r3, [r0, #20]
300086d6:	f3bf 8f4f 	dsb	sy
300086da:	f8d0 5080 	ldr.w	r5, [r0, #128]	; 0x80
300086de:	f643 76e0 	movw	r6, #16352	; 0x3fe0
300086e2:	f3c5 344e 	ubfx	r4, r5, #13, #15
300086e6:	f3c5 05c9 	ubfx	r5, r5, #3, #10
300086ea:	0164      	lsls	r4, r4, #5
300086ec:	ea04 0106 	and.w	r1, r4, r6
300086f0:	462b      	mov	r3, r5
300086f2:	ea41 7283 	orr.w	r2, r1, r3, lsl #30
300086f6:	3b01      	subs	r3, #1
300086f8:	1c5f      	adds	r7, r3, #1
300086fa:	f8c0 2274 	str.w	r2, [r0, #628]	; 0x274
300086fe:	d1f8      	bne.n	300086f2 <PSRAM_calibration+0x96>
30008700:	3c20      	subs	r4, #32
30008702:	f114 0f20 	cmn.w	r4, #32
30008706:	d1f1      	bne.n	300086ec <PSRAM_calibration+0x90>
30008708:	f3bf 8f4f 	dsb	sy
3000870c:	f3bf 8f6f 	isb	sy
30008710:	2204      	movs	r2, #4
30008712:	461e      	mov	r6, r3
30008714:	9306      	str	r3, [sp, #24]
30008716:	2700      	movs	r7, #0
30008718:	9209      	str	r2, [sp, #36]	; 0x24
3000871a:	46b3      	mov	fp, r6
3000871c:	4a6c      	ldr	r2, [pc, #432]	; (300088d0 <PSRAM_calibration+0x274>)
3000871e:	4c6f      	ldr	r4, [pc, #444]	; (300088dc <PSRAM_calibration+0x280>)
30008720:	6813      	ldr	r3, [r2, #0]
30008722:	f8df 91d4 	ldr.w	r9, [pc, #468]	; 300088f8 <PSRAM_calibration+0x29c>
30008726:	f023 0301 	bic.w	r3, r3, #1
3000872a:	f8df a1d0 	ldr.w	sl, [pc, #464]	; 300088fc <PSRAM_calibration+0x2a0>
3000872e:	6013      	str	r3, [r2, #0]
30008730:	2301      	movs	r3, #1
30008732:	9305      	str	r3, [sp, #20]
30008734:	9b0a      	ldr	r3, [sp, #40]	; 0x28
30008736:	9a05      	ldr	r2, [sp, #20]
30008738:	9704      	str	r7, [sp, #16]
3000873a:	2700      	movs	r7, #0
3000873c:	ea43 7802 	orr.w	r8, r3, r2, lsl #28
30008740:	463d      	mov	r5, r7
30008742:	e9cd 6b07 	strd	r6, fp, [sp, #28]
30008746:	f04f 3bff 	mov.w	fp, #4294967295	; 0xffffffff
3000874a:	465e      	mov	r6, fp
3000874c:	e010      	b.n	30008770 <PSRAM_calibration+0x114>
3000874e:	f1b6 3fff 	cmp.w	r6, #4294967295	; 0xffffffff
30008752:	bf08      	it	eq
30008754:	462e      	moveq	r6, r5
30008756:	2d1f      	cmp	r5, #31
30008758:	eb06 0b07 	add.w	fp, r6, r7
3000875c:	f107 0701 	add.w	r7, r7, #1
30008760:	d102      	bne.n	30008768 <PSRAM_calibration+0x10c>
30008762:	9b04      	ldr	r3, [sp, #16]
30008764:	429f      	cmp	r7, r3
30008766:	dc46      	bgt.n	300087f6 <PSRAM_calibration+0x19a>
30008768:	3501      	adds	r5, #1
3000876a:	2d20      	cmp	r5, #32
3000876c:	f000 80ac 	beq.w	300088c8 <PSRAM_calibration+0x26c>
30008770:	ea48 0205 	orr.w	r2, r8, r5
30008774:	4b56      	ldr	r3, [pc, #344]	; (300088d0 <PSRAM_calibration+0x274>)
30008776:	f04f 4cc0 	mov.w	ip, #1610612736	; 0x60000000
3000877a:	4959      	ldr	r1, [pc, #356]	; (300088e0 <PSRAM_calibration+0x284>)
3000877c:	605a      	str	r2, [r3, #4]
3000877e:	6822      	ldr	r2, [r4, #0]
30008780:	4b58      	ldr	r3, [pc, #352]	; (300088e4 <PSRAM_calibration+0x288>)
30008782:	f8cc 2000 	str.w	r2, [ip]
30008786:	6862      	ldr	r2, [r4, #4]
30008788:	f8c9 2000 	str.w	r2, [r9]
3000878c:	68a2      	ldr	r2, [r4, #8]
3000878e:	f8ca 2000 	str.w	r2, [sl]
30008792:	68e2      	ldr	r2, [r4, #12]
30008794:	600a      	str	r2, [r1, #0]
30008796:	4a54      	ldr	r2, [pc, #336]	; (300088e8 <PSRAM_calibration+0x28c>)
30008798:	6920      	ldr	r0, [r4, #16]
3000879a:	6010      	str	r0, [r2, #0]
3000879c:	6960      	ldr	r0, [r4, #20]
3000879e:	6018      	str	r0, [r3, #0]
300087a0:	f8dc 0000 	ldr.w	r0, [ip]
300087a4:	900c      	str	r0, [sp, #48]	; 0x30
300087a6:	f8d9 0000 	ldr.w	r0, [r9]
300087aa:	900d      	str	r0, [sp, #52]	; 0x34
300087ac:	f8da 0000 	ldr.w	r0, [sl]
300087b0:	900e      	str	r0, [sp, #56]	; 0x38
300087b2:	a80c      	add	r0, sp, #48	; 0x30
300087b4:	6809      	ldr	r1, [r1, #0]
300087b6:	910f      	str	r1, [sp, #60]	; 0x3c
300087b8:	6812      	ldr	r2, [r2, #0]
300087ba:	4948      	ldr	r1, [pc, #288]	; (300088dc <PSRAM_calibration+0x280>)
300087bc:	9210      	str	r2, [sp, #64]	; 0x40
300087be:	681a      	ldr	r2, [r3, #0]
300087c0:	4b4a      	ldr	r3, [pc, #296]	; (300088ec <PSRAM_calibration+0x290>)
300087c2:	9211      	str	r2, [sp, #68]	; 0x44
300087c4:	2218      	movs	r2, #24
300087c6:	4798      	blx	r3
300087c8:	2800      	cmp	r0, #0
300087ca:	d0c0      	beq.n	3000874e <PSRAM_calibration+0xf2>
300087cc:	1c70      	adds	r0, r6, #1
300087ce:	d0cb      	beq.n	30008768 <PSRAM_calibration+0x10c>
300087d0:	9b04      	ldr	r3, [sp, #16]
300087d2:	42bb      	cmp	r3, r7
300087d4:	da0a      	bge.n	300087ec <PSRAM_calibration+0x190>
300087d6:	9b05      	ldr	r3, [sp, #20]
300087d8:	f8cd b020 	str.w	fp, [sp, #32]
300087dc:	f04f 3bff 	mov.w	fp, #4294967295	; 0xffffffff
300087e0:	9704      	str	r7, [sp, #16]
300087e2:	2700      	movs	r7, #0
300087e4:	9607      	str	r6, [sp, #28]
300087e6:	465e      	mov	r6, fp
300087e8:	9306      	str	r3, [sp, #24]
300087ea:	e7bd      	b.n	30008768 <PSRAM_calibration+0x10c>
300087ec:	f04f 3bff 	mov.w	fp, #4294967295	; 0xffffffff
300087f0:	2700      	movs	r7, #0
300087f2:	465e      	mov	r6, fp
300087f4:	e7b8      	b.n	30008768 <PSRAM_calibration+0x10c>
300087f6:	9b05      	ldr	r3, [sp, #20]
300087f8:	9306      	str	r3, [sp, #24]
300087fa:	9b05      	ldr	r3, [sp, #20]
300087fc:	005b      	lsls	r3, r3, #1
300087fe:	9305      	str	r3, [sp, #20]
30008800:	9b09      	ldr	r3, [sp, #36]	; 0x24
30008802:	3b01      	subs	r3, #1
30008804:	9309      	str	r3, [sp, #36]	; 0x24
30008806:	d195      	bne.n	30008734 <PSRAM_calibration+0xd8>
30008808:	9b06      	ldr	r3, [sp, #24]
3000880a:	2004      	movs	r0, #4
3000880c:	4938      	ldr	r1, [pc, #224]	; (300088f0 <PSRAM_calibration+0x294>)
3000880e:	2249      	movs	r2, #73	; 0x49
30008810:	e9cd 7302 	strd	r7, r3, [sp, #8]
30008814:	e9cd 6b00 	strd	r6, fp, [sp]
30008818:	4b36      	ldr	r3, [pc, #216]	; (300088f4 <PSRAM_calibration+0x298>)
3000881a:	f000 fe29 	bl	30009470 <rtk_log_write>
3000881e:	482e      	ldr	r0, [pc, #184]	; (300088d8 <PSRAM_calibration+0x27c>)
30008820:	6943      	ldr	r3, [r0, #20]
30008822:	03d9      	lsls	r1, r3, #15
30008824:	d425      	bmi.n	30008872 <PSRAM_calibration+0x216>
30008826:	9b09      	ldr	r3, [sp, #36]	; 0x24
30008828:	f8c0 3084 	str.w	r3, [r0, #132]	; 0x84
3000882c:	f3bf 8f4f 	dsb	sy
30008830:	f8d0 5080 	ldr.w	r5, [r0, #128]	; 0x80
30008834:	f643 7ce0 	movw	ip, #16352	; 0x3fe0
30008838:	f3c5 344e 	ubfx	r4, r5, #13, #15
3000883c:	f3c5 05c9 	ubfx	r5, r5, #3, #10
30008840:	0164      	lsls	r4, r4, #5
30008842:	ea04 010c 	and.w	r1, r4, ip
30008846:	462b      	mov	r3, r5
30008848:	ea41 7283 	orr.w	r2, r1, r3, lsl #30
3000884c:	3b01      	subs	r3, #1
3000884e:	f8c0 2260 	str.w	r2, [r0, #608]	; 0x260
30008852:	1c5a      	adds	r2, r3, #1
30008854:	d1f8      	bne.n	30008848 <PSRAM_calibration+0x1ec>
30008856:	3c20      	subs	r4, #32
30008858:	f114 0f20 	cmn.w	r4, #32
3000885c:	d1f1      	bne.n	30008842 <PSRAM_calibration+0x1e6>
3000885e:	f3bf 8f4f 	dsb	sy
30008862:	6943      	ldr	r3, [r0, #20]
30008864:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
30008868:	6143      	str	r3, [r0, #20]
3000886a:	f3bf 8f4f 	dsb	sy
3000886e:	f3bf 8f6f 	isb	sy
30008872:	2f08      	cmp	r7, #8
30008874:	dd24      	ble.n	300088c0 <PSRAM_calibration+0x264>
30008876:	ebbb 0306 	subs.w	r3, fp, r6
3000887a:	9806      	ldr	r0, [sp, #24]
3000887c:	bf48      	it	mi
3000887e:	3301      	addmi	r3, #1
30008880:	eb1b 0606 	adds.w	r6, fp, r6
30008884:	ea4f 0363 	mov.w	r3, r3, asr #1
30008888:	bf48      	it	mi
3000888a:	3601      	addmi	r6, #1
3000888c:	1e9a      	subs	r2, r3, #2
3000888e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
30008890:	f003 617f 	and.w	r1, r3, #267386880	; 0xff00000
30008894:	0414      	lsls	r4, r2, #16
30008896:	f3c6 0344 	ubfx	r3, r6, #1, #5
3000889a:	0212      	lsls	r2, r2, #8
3000889c:	ea41 7100 	orr.w	r1, r1, r0, lsl #28
300088a0:	f404 2470 	and.w	r4, r4, #983040	; 0xf0000
300088a4:	f402 6270 	and.w	r2, r2, #3840	; 0xf00
300088a8:	2001      	movs	r0, #1
300088aa:	430b      	orrs	r3, r1
300088ac:	4908      	ldr	r1, [pc, #32]	; (300088d0 <PSRAM_calibration+0x274>)
300088ae:	4323      	orrs	r3, r4
300088b0:	4313      	orrs	r3, r2
300088b2:	604b      	str	r3, [r1, #4]
300088b4:	680b      	ldr	r3, [r1, #0]
300088b6:	4303      	orrs	r3, r0
300088b8:	600b      	str	r3, [r1, #0]
300088ba:	b013      	add	sp, #76	; 0x4c
300088bc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
300088c0:	2000      	movs	r0, #0
300088c2:	b013      	add	sp, #76	; 0x4c
300088c4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
300088c8:	9f04      	ldr	r7, [sp, #16]
300088ca:	e9dd 6b07 	ldrd	r6, fp, [sp, #28]
300088ce:	e794      	b.n	300087fa <PSRAM_calibration+0x19e>
300088d0:	41002000 	.word	0x41002000
300088d4:	0fffffe0 	.word	0x0fffffe0
300088d8:	e000ed00 	.word	0xe000ed00
300088dc:	3000de20 	.word	0x3000de20
300088e0:	60150000 	.word	0x60150000
300088e4:	60250000 	.word	0x60250000
300088e8:	60200000 	.word	0x60200000
300088ec:	000129bd 	.word	0x000129bd
300088f0:	3000c480 	.word	0x3000c480
300088f4:	3000c488 	.word	0x3000c488
300088f8:	60050000 	.word	0x60050000
300088fc:	60100000 	.word	0x60100000

30008900 <PSRAM_AutoGating>:
30008900:	b1c0      	cbz	r0, 30008934 <PSRAM_AutoGating+0x34>
30008902:	f04f 4382 	mov.w	r3, #1090519040	; 0x41000000
30008906:	4810      	ldr	r0, [pc, #64]	; (30008948 <PSRAM_AutoGating+0x48>)
30008908:	f3c1 0108 	ubfx	r1, r1, #0, #9
3000890c:	0252      	lsls	r2, r2, #9
3000890e:	b410      	push	{r4}
30008910:	f8d3 41e4 	ldr.w	r4, [r3, #484]	; 0x1e4
30008914:	f402 5278 	and.w	r2, r2, #15872	; 0x3e00
30008918:	4020      	ands	r0, r4
3000891a:	4301      	orrs	r1, r0
3000891c:	430a      	orrs	r2, r1
3000891e:	f8c3 21e4 	str.w	r2, [r3, #484]	; 0x1e4
30008922:	f8d3 21e0 	ldr.w	r2, [r3, #480]	; 0x1e0
30008926:	f042 0201 	orr.w	r2, r2, #1
3000892a:	f8c3 21e0 	str.w	r2, [r3, #480]	; 0x1e0
3000892e:	f85d 4b04 	ldr.w	r4, [sp], #4
30008932:	4770      	bx	lr
30008934:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
30008938:	f8d2 31e0 	ldr.w	r3, [r2, #480]	; 0x1e0
3000893c:	f023 0301 	bic.w	r3, r3, #1
30008940:	f8c2 31e0 	str.w	r3, [r2, #480]	; 0x1e0
30008944:	4770      	bx	lr
30008946:	bf00      	nop
30008948:	ffffc000 	.word	0xffffc000

3000894c <SDM32K_Enable>:
3000894c:	4a02      	ldr	r2, [pc, #8]	; (30008958 <SDM32K_Enable+0xc>)
3000894e:	4b03      	ldr	r3, [pc, #12]	; (3000895c <SDM32K_Enable+0x10>)
30008950:	6811      	ldr	r1, [r2, #0]
30008952:	430b      	orrs	r3, r1
30008954:	6013      	str	r3, [r2, #0]
30008956:	4770      	bx	lr
30008958:	42008e00 	.word	0x42008e00
3000895c:	c0060000 	.word	0xc0060000

30008960 <CLK_SWITCH_XTAL>:
30008960:	b508      	push	{r3, lr}
30008962:	2801      	cmp	r0, #1
30008964:	4b0a      	ldr	r3, [pc, #40]	; (30008990 <CLK_SWITCH_XTAL+0x30>)
30008966:	f8d3 2224 	ldr.w	r2, [r3, #548]	; 0x224
3000896a:	d00d      	beq.n	30008988 <CLK_SWITCH_XTAL+0x28>
3000896c:	4b09      	ldr	r3, [pc, #36]	; (30008994 <CLK_SWITCH_XTAL+0x34>)
3000896e:	4313      	orrs	r3, r2
30008970:	4907      	ldr	r1, [pc, #28]	; (30008990 <CLK_SWITCH_XTAL+0x30>)
30008972:	4a09      	ldr	r2, [pc, #36]	; (30008998 <CLK_SWITCH_XTAL+0x38>)
30008974:	f8c1 3224 	str.w	r3, [r1, #548]	; 0x224
30008978:	4790      	blx	r2
3000897a:	4a08      	ldr	r2, [pc, #32]	; (3000899c <CLK_SWITCH_XTAL+0x3c>)
3000897c:	4b08      	ldr	r3, [pc, #32]	; (300089a0 <CLK_SWITCH_XTAL+0x40>)
3000897e:	fba2 2000 	umull	r2, r0, r2, r0
30008982:	0c80      	lsrs	r0, r0, #18
30008984:	6018      	str	r0, [r3, #0]
30008986:	bd08      	pop	{r3, pc}
30008988:	4b06      	ldr	r3, [pc, #24]	; (300089a4 <CLK_SWITCH_XTAL+0x44>)
3000898a:	4013      	ands	r3, r2
3000898c:	e7f0      	b.n	30008970 <CLK_SWITCH_XTAL+0x10>
3000898e:	bf00      	nop
30008990:	42008000 	.word	0x42008000
30008994:	80000500 	.word	0x80000500
30008998:	30009835 	.word	0x30009835
3000899c:	431bde83 	.word	0x431bde83
300089a0:	2001c700 	.word	0x2001c700
300089a4:	7ffffaff 	.word	0x7ffffaff

300089a8 <SWR_MEM>:
300089a8:	2801      	cmp	r0, #1
300089aa:	d00e      	beq.n	300089ca <SWR_MEM+0x22>
300089ac:	4b31      	ldr	r3, [pc, #196]	; (30008a74 <SWR_MEM+0xcc>)
300089ae:	2000      	movs	r0, #0
300089b0:	f8d3 20c0 	ldr.w	r2, [r3, #192]	; 0xc0
300089b4:	f022 0201 	bic.w	r2, r2, #1
300089b8:	f8c3 20c0 	str.w	r2, [r3, #192]	; 0xc0
300089bc:	f8d3 20c0 	ldr.w	r2, [r3, #192]	; 0xc0
300089c0:	f022 0202 	bic.w	r2, r2, #2
300089c4:	f8c3 20c0 	str.w	r2, [r3, #192]	; 0xc0
300089c8:	4770      	bx	lr
300089ca:	b510      	push	{r4, lr}
300089cc:	4c29      	ldr	r4, [pc, #164]	; (30008a74 <SWR_MEM+0xcc>)
300089ce:	4a2a      	ldr	r2, [pc, #168]	; (30008a78 <SWR_MEM+0xd0>)
300089d0:	f8d4 30e4 	ldr.w	r3, [r4, #228]	; 0xe4
300089d4:	f423 5340 	bic.w	r3, r3, #12288	; 0x3000
300089d8:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
300089dc:	f8c4 30e4 	str.w	r3, [r4, #228]	; 0xe4
300089e0:	f8d4 30d0 	ldr.w	r3, [r4, #208]	; 0xd0
300089e4:	f023 0330 	bic.w	r3, r3, #48	; 0x30
300089e8:	f8c4 30d0 	str.w	r3, [r4, #208]	; 0xd0
300089ec:	f8d4 30d8 	ldr.w	r3, [r4, #216]	; 0xd8
300089f0:	f023 0303 	bic.w	r3, r3, #3
300089f4:	f8c4 30d8 	str.w	r3, [r4, #216]	; 0xd8
300089f8:	f8d4 30d0 	ldr.w	r3, [r4, #208]	; 0xd0
300089fc:	f023 7370 	bic.w	r3, r3, #62914560	; 0x3c00000
30008a00:	f8c4 30d0 	str.w	r3, [r4, #208]	; 0xd0
30008a04:	4790      	blx	r2
30008a06:	2803      	cmp	r0, #3
30008a08:	f8d4 30d8 	ldr.w	r3, [r4, #216]	; 0xd8
30008a0c:	d026      	beq.n	30008a5c <SWR_MEM+0xb4>
30008a0e:	f043 0303 	orr.w	r3, r3, #3
30008a12:	f8c4 30d8 	str.w	r3, [r4, #216]	; 0xd8
30008a16:	f8d4 30d0 	ldr.w	r3, [r4, #208]	; 0xd0
30008a1a:	f043 7340 	orr.w	r3, r3, #50331648	; 0x3000000
30008a1e:	f8c4 30d0 	str.w	r3, [r4, #208]	; 0xd0
30008a22:	4c14      	ldr	r4, [pc, #80]	; (30008a74 <SWR_MEM+0xcc>)
30008a24:	4b15      	ldr	r3, [pc, #84]	; (30008a7c <SWR_MEM+0xd4>)
30008a26:	4798      	blx	r3
30008a28:	f8d4 30c0 	ldr.w	r3, [r4, #192]	; 0xc0
30008a2c:	4a14      	ldr	r2, [pc, #80]	; (30008a80 <SWR_MEM+0xd8>)
30008a2e:	f44f 7096 	mov.w	r0, #300	; 0x12c
30008a32:	f043 0302 	orr.w	r3, r3, #2
30008a36:	f8c4 30c0 	str.w	r3, [r4, #192]	; 0xc0
30008a3a:	4790      	blx	r2
30008a3c:	f8d4 20c0 	ldr.w	r2, [r4, #192]	; 0xc0
30008a40:	4b10      	ldr	r3, [pc, #64]	; (30008a84 <SWR_MEM+0xdc>)
30008a42:	f042 0201 	orr.w	r2, r2, #1
30008a46:	f8c4 20c0 	str.w	r2, [r4, #192]	; 0xc0
30008a4a:	e001      	b.n	30008a50 <SWR_MEM+0xa8>
30008a4c:	3b01      	subs	r3, #1
30008a4e:	d00e      	beq.n	30008a6e <SWR_MEM+0xc6>
30008a50:	f8d4 20c0 	ldr.w	r2, [r4, #192]	; 0xc0
30008a54:	03d2      	lsls	r2, r2, #15
30008a56:	d5f9      	bpl.n	30008a4c <SWR_MEM+0xa4>
30008a58:	2000      	movs	r0, #0
30008a5a:	bd10      	pop	{r4, pc}
30008a5c:	f8c4 30d8 	str.w	r3, [r4, #216]	; 0xd8
30008a60:	f8d4 30d0 	ldr.w	r3, [r4, #208]	; 0xd0
30008a64:	f443 0340 	orr.w	r3, r3, #12582912	; 0xc00000
30008a68:	f8c4 30d0 	str.w	r3, [r4, #208]	; 0xd0
30008a6c:	e7d9      	b.n	30008a22 <SWR_MEM+0x7a>
30008a6e:	2001      	movs	r0, #1
30008a70:	bd10      	pop	{r4, pc}
30008a72:	bf00      	nop
30008a74:	42008800 	.word	0x42008800
30008a78:	300095ed 	.word	0x300095ed
30008a7c:	30008d59 	.word	0x30008d59
30008a80:	00009b2d 	.word	0x00009b2d
30008a84:	000186a0 	.word	0x000186a0

30008a88 <SWR_MEM_Manual>:
30008a88:	4a06      	ldr	r2, [pc, #24]	; (30008aa4 <SWR_MEM_Manual+0x1c>)
30008a8a:	f8d2 30c0 	ldr.w	r3, [r2, #192]	; 0xc0
30008a8e:	b120      	cbz	r0, 30008a9a <SWR_MEM_Manual+0x12>
30008a90:	f443 2300 	orr.w	r3, r3, #524288	; 0x80000
30008a94:	f8c2 30c0 	str.w	r3, [r2, #192]	; 0xc0
30008a98:	4770      	bx	lr
30008a9a:	f423 2300 	bic.w	r3, r3, #524288	; 0x80000
30008a9e:	f8c2 30c0 	str.w	r3, [r2, #192]	; 0xc0
30008aa2:	4770      	bx	lr
30008aa4:	42008800 	.word	0x42008800

30008aa8 <SWR_MEM_Mode_Set>:
30008aa8:	2801      	cmp	r0, #1
30008aaa:	b538      	push	{r3, r4, r5, lr}
30008aac:	d83f      	bhi.n	30008b2e <SWR_MEM_Mode_Set+0x86>
30008aae:	d015      	beq.n	30008adc <SWR_MEM_Mode_Set+0x34>
30008ab0:	4921      	ldr	r1, [pc, #132]	; (30008b38 <SWR_MEM_Mode_Set+0x90>)
30008ab2:	f8d1 30c0 	ldr.w	r3, [r1, #192]	; 0xc0
30008ab6:	0358      	lsls	r0, r3, #13
30008ab8:	d50e      	bpl.n	30008ad8 <SWR_MEM_Mode_Set+0x30>
30008aba:	f8d1 20d0 	ldr.w	r2, [r1, #208]	; 0xd0
30008abe:	f242 7310 	movw	r3, #10000	; 0x2710
30008ac2:	f022 0240 	bic.w	r2, r2, #64	; 0x40
30008ac6:	f8c1 20d0 	str.w	r2, [r1, #208]	; 0xd0
30008aca:	e001      	b.n	30008ad0 <SWR_MEM_Mode_Set+0x28>
30008acc:	3b01      	subs	r3, #1
30008ace:	d02c      	beq.n	30008b2a <SWR_MEM_Mode_Set+0x82>
30008ad0:	f8d1 20c0 	ldr.w	r2, [r1, #192]	; 0xc0
30008ad4:	0352      	lsls	r2, r2, #13
30008ad6:	d4f9      	bmi.n	30008acc <SWR_MEM_Mode_Set+0x24>
30008ad8:	2000      	movs	r0, #0
30008ada:	bd38      	pop	{r3, r4, r5, pc}
30008adc:	4c16      	ldr	r4, [pc, #88]	; (30008b38 <SWR_MEM_Mode_Set+0x90>)
30008ade:	f8d4 30c0 	ldr.w	r3, [r4, #192]	; 0xc0
30008ae2:	035b      	lsls	r3, r3, #13
30008ae4:	d4f8      	bmi.n	30008ad8 <SWR_MEM_Mode_Set+0x30>
30008ae6:	f8d4 30d4 	ldr.w	r3, [r4, #212]	; 0xd4
30008aea:	2064      	movs	r0, #100	; 0x64
30008aec:	4d13      	ldr	r5, [pc, #76]	; (30008b3c <SWR_MEM_Mode_Set+0x94>)
30008aee:	f443 7380 	orr.w	r3, r3, #256	; 0x100
30008af2:	f8c4 30d4 	str.w	r3, [r4, #212]	; 0xd4
30008af6:	47a8      	blx	r5
30008af8:	f8d4 30d0 	ldr.w	r3, [r4, #208]	; 0xd0
30008afc:	2064      	movs	r0, #100	; 0x64
30008afe:	f043 0340 	orr.w	r3, r3, #64	; 0x40
30008b02:	f8c4 30d0 	str.w	r3, [r4, #208]	; 0xd0
30008b06:	47a8      	blx	r5
30008b08:	f8d4 20d4 	ldr.w	r2, [r4, #212]	; 0xd4
30008b0c:	f242 7310 	movw	r3, #10000	; 0x2710
30008b10:	f422 7280 	bic.w	r2, r2, #256	; 0x100
30008b14:	f8c4 20d4 	str.w	r2, [r4, #212]	; 0xd4
30008b18:	e001      	b.n	30008b1e <SWR_MEM_Mode_Set+0x76>
30008b1a:	3b01      	subs	r3, #1
30008b1c:	d005      	beq.n	30008b2a <SWR_MEM_Mode_Set+0x82>
30008b1e:	f8d4 20c0 	ldr.w	r2, [r4, #192]	; 0xc0
30008b22:	0355      	lsls	r5, r2, #13
30008b24:	d5f9      	bpl.n	30008b1a <SWR_MEM_Mode_Set+0x72>
30008b26:	2000      	movs	r0, #0
30008b28:	e7d7      	b.n	30008ada <SWR_MEM_Mode_Set+0x32>
30008b2a:	2001      	movs	r0, #1
30008b2c:	bd38      	pop	{r3, r4, r5, pc}
30008b2e:	217a      	movs	r1, #122	; 0x7a
30008b30:	4803      	ldr	r0, [pc, #12]	; (30008b40 <SWR_MEM_Mode_Set+0x98>)
30008b32:	f001 fcd1 	bl	3000a4d8 <io_assert_failed>
30008b36:	bf00      	nop
30008b38:	42008800 	.word	0x42008800
30008b3c:	00009b2d 	.word	0x00009b2d
30008b40:	3000c4c0 	.word	0x3000c4c0

30008b44 <SWR_AUDIO>:
30008b44:	2801      	cmp	r0, #1
30008b46:	d00e      	beq.n	30008b66 <SWR_AUDIO+0x22>
30008b48:	4b1e      	ldr	r3, [pc, #120]	; (30008bc4 <SWR_AUDIO+0x80>)
30008b4a:	2000      	movs	r0, #0
30008b4c:	f8d3 2080 	ldr.w	r2, [r3, #128]	; 0x80
30008b50:	f022 0201 	bic.w	r2, r2, #1
30008b54:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
30008b58:	f8d3 2080 	ldr.w	r2, [r3, #128]	; 0x80
30008b5c:	f022 0202 	bic.w	r2, r2, #2
30008b60:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
30008b64:	4770      	bx	lr
30008b66:	b510      	push	{r4, lr}
30008b68:	4c16      	ldr	r4, [pc, #88]	; (30008bc4 <SWR_AUDIO+0x80>)
30008b6a:	4b17      	ldr	r3, [pc, #92]	; (30008bc8 <SWR_AUDIO+0x84>)
30008b6c:	4798      	blx	r3
30008b6e:	f8d4 30a4 	ldr.w	r3, [r4, #164]	; 0xa4
30008b72:	4a16      	ldr	r2, [pc, #88]	; (30008bcc <SWR_AUDIO+0x88>)
30008b74:	f44f 7096 	mov.w	r0, #300	; 0x12c
30008b78:	f423 5340 	bic.w	r3, r3, #12288	; 0x3000
30008b7c:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
30008b80:	f8c4 30a4 	str.w	r3, [r4, #164]	; 0xa4
30008b84:	f8d4 3090 	ldr.w	r3, [r4, #144]	; 0x90
30008b88:	f023 0330 	bic.w	r3, r3, #48	; 0x30
30008b8c:	f8c4 3090 	str.w	r3, [r4, #144]	; 0x90
30008b90:	f8d4 3080 	ldr.w	r3, [r4, #128]	; 0x80
30008b94:	f043 0302 	orr.w	r3, r3, #2
30008b98:	f8c4 3080 	str.w	r3, [r4, #128]	; 0x80
30008b9c:	4790      	blx	r2
30008b9e:	f8d4 2080 	ldr.w	r2, [r4, #128]	; 0x80
30008ba2:	4b0b      	ldr	r3, [pc, #44]	; (30008bd0 <SWR_AUDIO+0x8c>)
30008ba4:	f042 0201 	orr.w	r2, r2, #1
30008ba8:	f8c4 2080 	str.w	r2, [r4, #128]	; 0x80
30008bac:	e001      	b.n	30008bb2 <SWR_AUDIO+0x6e>
30008bae:	3b01      	subs	r3, #1
30008bb0:	d005      	beq.n	30008bbe <SWR_AUDIO+0x7a>
30008bb2:	f8d4 2080 	ldr.w	r2, [r4, #128]	; 0x80
30008bb6:	03d2      	lsls	r2, r2, #15
30008bb8:	d5f9      	bpl.n	30008bae <SWR_AUDIO+0x6a>
30008bba:	2000      	movs	r0, #0
30008bbc:	bd10      	pop	{r4, pc}
30008bbe:	2001      	movs	r0, #1
30008bc0:	bd10      	pop	{r4, pc}
30008bc2:	bf00      	nop
30008bc4:	42008800 	.word	0x42008800
30008bc8:	30008eb5 	.word	0x30008eb5
30008bcc:	00009b2d 	.word	0x00009b2d
30008bd0:	000186a0 	.word	0x000186a0

30008bd4 <SWR_AUDIO_Manual>:
30008bd4:	4a06      	ldr	r2, [pc, #24]	; (30008bf0 <SWR_AUDIO_Manual+0x1c>)
30008bd6:	f8d2 3080 	ldr.w	r3, [r2, #128]	; 0x80
30008bda:	b120      	cbz	r0, 30008be6 <SWR_AUDIO_Manual+0x12>
30008bdc:	f443 2300 	orr.w	r3, r3, #524288	; 0x80000
30008be0:	f8c2 3080 	str.w	r3, [r2, #128]	; 0x80
30008be4:	4770      	bx	lr
30008be6:	f423 2300 	bic.w	r3, r3, #524288	; 0x80000
30008bea:	f8c2 3080 	str.w	r3, [r2, #128]	; 0x80
30008bee:	4770      	bx	lr
30008bf0:	42008800 	.word	0x42008800

30008bf4 <SWR_BST_MODE_Set>:
30008bf4:	4a06      	ldr	r2, [pc, #24]	; (30008c10 <SWR_BST_MODE_Set+0x1c>)
30008bf6:	6813      	ldr	r3, [r2, #0]
30008bf8:	b118      	cbz	r0, 30008c02 <SWR_BST_MODE_Set+0xe>
30008bfa:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
30008bfe:	6013      	str	r3, [r2, #0]
30008c00:	4770      	bx	lr
30008c02:	f423 1340 	bic.w	r3, r3, #3145728	; 0x300000
30008c06:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
30008c0a:	6013      	str	r3, [r2, #0]
30008c0c:	4770      	bx	lr
30008c0e:	bf00      	nop
30008c10:	42008100 	.word	0x42008100

30008c14 <OTP_Read8>:
30008c14:	f5b0 6f00 	cmp.w	r0, #2048	; 0x800
30008c18:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
30008c1c:	4689      	mov	r9, r1
30008c1e:	b083      	sub	sp, #12
30008c20:	d260      	bcs.n	30008ce4 <OTP_Read8+0xd0>
30008c22:	4b33      	ldr	r3, [pc, #204]	; (30008cf0 <OTP_Read8+0xdc>)
30008c24:	4680      	mov	r8, r0
30008c26:	4a33      	ldr	r2, [pc, #204]	; (30008cf4 <OTP_Read8+0xe0>)
30008c28:	e843 f300 	tt	r3, r3
30008c2c:	f413 0f80 	tst.w	r3, #4194304	; 0x400000
30008c30:	4d31      	ldr	r5, [pc, #196]	; (30008cf8 <OTP_Read8+0xe4>)
30008c32:	4e32      	ldr	r6, [pc, #200]	; (30008cfc <OTP_Read8+0xe8>)
30008c34:	bf18      	it	ne
30008c36:	4615      	movne	r5, r2
30008c38:	4c31      	ldr	r4, [pc, #196]	; (30008d00 <OTP_Read8+0xec>)
30008c3a:	e001      	b.n	30008c40 <OTP_Read8+0x2c>
30008c3c:	f000 fc40 	bl	300094c0 <rtk_log_write_nano>
30008c40:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
30008c44:	2002      	movs	r0, #2
30008c46:	f000 fa65 	bl	30009114 <IPC_SEMTake>
30008c4a:	2801      	cmp	r0, #1
30008c4c:	4633      	mov	r3, r6
30008c4e:	f04f 0245 	mov.w	r2, #69	; 0x45
30008c52:	4621      	mov	r1, r4
30008c54:	f04f 0002 	mov.w	r0, #2
30008c58:	d1f0      	bne.n	30008c3c <OTP_Read8+0x28>
30008c5a:	4b2a      	ldr	r3, [pc, #168]	; (30008d04 <OTP_Read8+0xf0>)
30008c5c:	681a      	ldr	r2, [r3, #0]
30008c5e:	07d2      	lsls	r2, r2, #31
30008c60:	d52d      	bpl.n	30008cbe <OTP_Read8+0xaa>
30008c62:	f04f 4284 	mov.w	r2, #1107296256	; 0x42000000
30008c66:	6953      	ldr	r3, [r2, #20]
30008c68:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
30008c6c:	6153      	str	r3, [r2, #20]
30008c6e:	ea4f 2308 	mov.w	r3, r8, lsl #8
30008c72:	602b      	str	r3, [r5, #0]
30008c74:	682b      	ldr	r3, [r5, #0]
30008c76:	2b00      	cmp	r3, #0
30008c78:	db10      	blt.n	30008c9c <OTP_Read8+0x88>
30008c7a:	2400      	movs	r4, #0
30008c7c:	4e22      	ldr	r6, [pc, #136]	; (30008d08 <OTP_Read8+0xf4>)
30008c7e:	f644 6720 	movw	r7, #20000	; 0x4e20
30008c82:	e001      	b.n	30008c88 <OTP_Read8+0x74>
30008c84:	42bc      	cmp	r4, r7
30008c86:	d01f      	beq.n	30008cc8 <OTP_Read8+0xb4>
30008c88:	2005      	movs	r0, #5
30008c8a:	3401      	adds	r4, #1
30008c8c:	47b0      	blx	r6
30008c8e:	682b      	ldr	r3, [r5, #0]
30008c90:	2b00      	cmp	r3, #0
30008c92:	daf7      	bge.n	30008c84 <OTP_Read8+0x70>
30008c94:	f644 6320 	movw	r3, #20000	; 0x4e20
30008c98:	429c      	cmp	r4, r3
30008c9a:	d015      	beq.n	30008cc8 <OTP_Read8+0xb4>
30008c9c:	682b      	ldr	r3, [r5, #0]
30008c9e:	2400      	movs	r4, #0
30008ca0:	f889 3000 	strb.w	r3, [r9]
30008ca4:	f04f 4284 	mov.w	r2, #1107296256	; 0x42000000
30008ca8:	2002      	movs	r0, #2
30008caa:	6953      	ldr	r3, [r2, #20]
30008cac:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
30008cb0:	6153      	str	r3, [r2, #20]
30008cb2:	f000 fa7d 	bl	300091b0 <IPC_SEMFree>
30008cb6:	4620      	mov	r0, r4
30008cb8:	b003      	add	sp, #12
30008cba:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
30008cbe:	681a      	ldr	r2, [r3, #0]
30008cc0:	f042 0201 	orr.w	r2, r2, #1
30008cc4:	601a      	str	r2, [r3, #0]
30008cc6:	e7cc      	b.n	30008c62 <OTP_Read8+0x4e>
30008cc8:	21ff      	movs	r1, #255	; 0xff
30008cca:	f8cd 8000 	str.w	r8, [sp]
30008cce:	4b0f      	ldr	r3, [pc, #60]	; (30008d0c <OTP_Read8+0xf8>)
30008cd0:	2245      	movs	r2, #69	; 0x45
30008cd2:	f889 1000 	strb.w	r1, [r9]
30008cd6:	2002      	movs	r0, #2
30008cd8:	4909      	ldr	r1, [pc, #36]	; (30008d00 <OTP_Read8+0xec>)
30008cda:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
30008cde:	f000 fbef 	bl	300094c0 <rtk_log_write_nano>
30008ce2:	e7df      	b.n	30008ca4 <OTP_Read8+0x90>
30008ce4:	23ff      	movs	r3, #255	; 0xff
30008ce6:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
30008cea:	700b      	strb	r3, [r1, #0]
30008cec:	e7e3      	b.n	30008cb6 <OTP_Read8+0xa2>
30008cee:	bf00      	nop
30008cf0:	3000a0d1 	.word	0x3000a0d1
30008cf4:	5200000c 	.word	0x5200000c
30008cf8:	42000008 	.word	0x42000008
30008cfc:	3000c524 	.word	0x3000c524
30008d00:	3000c540 	.word	0x3000c540
30008d04:	42008000 	.word	0x42008000
30008d08:	00009b2d 	.word	0x00009b2d
30008d0c:	3000c544 	.word	0x3000c544

30008d10 <SWR_Calib_DCore>:
30008d10:	4b0f      	ldr	r3, [pc, #60]	; (30008d50 <SWR_Calib_DCore+0x40>)
30008d12:	f240 3231 	movw	r2, #817	; 0x331
30008d16:	490f      	ldr	r1, [pc, #60]	; (30008d54 <SWR_Calib_DCore+0x44>)
30008d18:	6d18      	ldr	r0, [r3, #80]	; 0x50
30008d1a:	4001      	ands	r1, r0
30008d1c:	430a      	orrs	r2, r1
30008d1e:	651a      	str	r2, [r3, #80]	; 0x50
30008d20:	6c1a      	ldr	r2, [r3, #64]	; 0x40
30008d22:	f442 22c0 	orr.w	r2, r2, #393216	; 0x60000
30008d26:	641a      	str	r2, [r3, #64]	; 0x40
30008d28:	f8d3 2084 	ldr.w	r2, [r3, #132]	; 0x84
30008d2c:	f042 0201 	orr.w	r2, r2, #1
30008d30:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
30008d34:	f8d3 2090 	ldr.w	r2, [r3, #144]	; 0x90
30008d38:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
30008d3c:	f8c3 2090 	str.w	r2, [r3, #144]	; 0x90
30008d40:	685a      	ldr	r2, [r3, #4]
30008d42:	f022 02ff 	bic.w	r2, r2, #255	; 0xff
30008d46:	f042 0204 	orr.w	r2, r2, #4
30008d4a:	605a      	str	r2, [r3, #4]
30008d4c:	4770      	bx	lr
30008d4e:	bf00      	nop
30008d50:	42008100 	.word	0x42008100
30008d54:	fffffccc 	.word	0xfffffccc

30008d58 <SWR_Calib_MEM>:
30008d58:	4b51      	ldr	r3, [pc, #324]	; (30008ea0 <SWR_Calib_MEM+0x148>)
30008d5a:	f240 3231 	movw	r2, #817	; 0x331
30008d5e:	4951      	ldr	r1, [pc, #324]	; (30008ea4 <SWR_Calib_MEM+0x14c>)
30008d60:	f04f 0c00 	mov.w	ip, #0
30008d64:	b510      	push	{r4, lr}
30008d66:	f8d3 00e0 	ldr.w	r0, [r3, #224]	; 0xe0
30008d6a:	b082      	sub	sp, #8
30008d6c:	4001      	ands	r1, r0
30008d6e:	f240 70e4 	movw	r0, #2020	; 0x7e4
30008d72:	430a      	orrs	r2, r1
30008d74:	f10d 0107 	add.w	r1, sp, #7
30008d78:	f8c3 20e0 	str.w	r2, [r3, #224]	; 0xe0
30008d7c:	f8d3 20d0 	ldr.w	r2, [r3, #208]	; 0xd0
30008d80:	f442 22c0 	orr.w	r2, r2, #393216	; 0x60000
30008d84:	f8c3 20d0 	str.w	r2, [r3, #208]	; 0xd0
30008d88:	f8d3 20f8 	ldr.w	r2, [r3, #248]	; 0xf8
30008d8c:	f042 0201 	orr.w	r2, r2, #1
30008d90:	f8c3 20f8 	str.w	r2, [r3, #248]	; 0xf8
30008d94:	f8d3 20fc 	ldr.w	r2, [r3, #252]	; 0xfc
30008d98:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
30008d9c:	f8c3 20fc 	str.w	r2, [r3, #252]	; 0xfc
30008da0:	f88d c007 	strb.w	ip, [sp, #7]
30008da4:	f7ff ff36 	bl	30008c14 <OTP_Read8>
30008da8:	f89d 3007 	ldrb.w	r3, [sp, #7]
30008dac:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
30008db0:	2af0      	cmp	r2, #240	; 0xf0
30008db2:	d156      	bne.n	30008e62 <SWR_Calib_MEM+0x10a>
30008db4:	f003 030f 	and.w	r3, r3, #15
30008db8:	2b0f      	cmp	r3, #15
30008dba:	d04e      	beq.n	30008e5a <SWR_Calib_MEM+0x102>
30008dbc:	2302      	movs	r3, #2
30008dbe:	4c3a      	ldr	r4, [pc, #232]	; (30008ea8 <SWR_Calib_MEM+0x150>)
30008dc0:	f10d 0106 	add.w	r1, sp, #6
30008dc4:	f240 70e4 	movw	r0, #2020	; 0x7e4
30008dc8:	7023      	strb	r3, [r4, #0]
30008dca:	f7ff ff23 	bl	30008c14 <OTP_Read8>
30008dce:	7822      	ldrb	r2, [r4, #0]
30008dd0:	f89d 3006 	ldrb.w	r3, [sp, #6]
30008dd4:	2a03      	cmp	r2, #3
30008dd6:	d05a      	beq.n	30008e8e <SWR_Calib_MEM+0x136>
30008dd8:	2a02      	cmp	r2, #2
30008dda:	bf0c      	ite	eq
30008ddc:	f003 030f 	andeq.w	r3, r3, #15
30008de0:	2300      	movne	r3, #0
30008de2:	492f      	ldr	r1, [pc, #188]	; (30008ea0 <SWR_Calib_MEM+0x148>)
30008de4:	4831      	ldr	r0, [pc, #196]	; (30008eac <SWR_Calib_MEM+0x154>)
30008de6:	f8d1 20d0 	ldr.w	r2, [r1, #208]	; 0xd0
30008dea:	f022 020f 	bic.w	r2, r2, #15
30008dee:	4313      	orrs	r3, r2
30008df0:	f8c1 30d0 	str.w	r3, [r1, #208]	; 0xd0
30008df4:	6c83      	ldr	r3, [r0, #72]	; 0x48
30008df6:	f3c3 1382 	ubfx	r3, r3, #6, #3
30008dfa:	2b07      	cmp	r3, #7
30008dfc:	d03a      	beq.n	30008e74 <SWR_Calib_MEM+0x11c>
30008dfe:	2300      	movs	r3, #0
30008e00:	f10d 0107 	add.w	r1, sp, #7
30008e04:	f240 70e5 	movw	r0, #2021	; 0x7e5
30008e08:	f88d 3007 	strb.w	r3, [sp, #7]
30008e0c:	f7ff ff02 	bl	30008c14 <OTP_Read8>
30008e10:	f89d 3007 	ldrb.w	r3, [sp, #7]
30008e14:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
30008e18:	2af0      	cmp	r2, #240	; 0xf0
30008e1a:	d124      	bne.n	30008e66 <SWR_Calib_MEM+0x10e>
30008e1c:	f003 030f 	and.w	r3, r3, #15
30008e20:	2b0f      	cmp	r3, #15
30008e22:	d022      	beq.n	30008e6a <SWR_Calib_MEM+0x112>
30008e24:	2302      	movs	r3, #2
30008e26:	4c22      	ldr	r4, [pc, #136]	; (30008eb0 <SWR_Calib_MEM+0x158>)
30008e28:	f10d 0107 	add.w	r1, sp, #7
30008e2c:	f240 70e5 	movw	r0, #2021	; 0x7e5
30008e30:	7023      	strb	r3, [r4, #0]
30008e32:	f7ff feef 	bl	30008c14 <OTP_Read8>
30008e36:	7822      	ldrb	r2, [r4, #0]
30008e38:	f89d 3007 	ldrb.w	r3, [sp, #7]
30008e3c:	2a03      	cmp	r2, #3
30008e3e:	d028      	beq.n	30008e92 <SWR_Calib_MEM+0x13a>
30008e40:	2a02      	cmp	r2, #2
30008e42:	d029      	beq.n	30008e98 <SWR_Calib_MEM+0x140>
30008e44:	2200      	movs	r2, #0
30008e46:	4916      	ldr	r1, [pc, #88]	; (30008ea0 <SWR_Calib_MEM+0x148>)
30008e48:	f8d1 30d0 	ldr.w	r3, [r1, #208]	; 0xd0
30008e4c:	f023 7370 	bic.w	r3, r3, #62914560	; 0x3c00000
30008e50:	4313      	orrs	r3, r2
30008e52:	f8c1 30d0 	str.w	r3, [r1, #208]	; 0xd0
30008e56:	b002      	add	sp, #8
30008e58:	bd10      	pop	{r4, pc}
30008e5a:	4b13      	ldr	r3, [pc, #76]	; (30008ea8 <SWR_Calib_MEM+0x150>)
30008e5c:	2201      	movs	r2, #1
30008e5e:	701a      	strb	r2, [r3, #0]
30008e60:	e7cd      	b.n	30008dfe <SWR_Calib_MEM+0xa6>
30008e62:	2303      	movs	r3, #3
30008e64:	e7ab      	b.n	30008dbe <SWR_Calib_MEM+0x66>
30008e66:	2303      	movs	r3, #3
30008e68:	e7dd      	b.n	30008e26 <SWR_Calib_MEM+0xce>
30008e6a:	4b11      	ldr	r3, [pc, #68]	; (30008eb0 <SWR_Calib_MEM+0x158>)
30008e6c:	2201      	movs	r2, #1
30008e6e:	701a      	strb	r2, [r3, #0]
30008e70:	b002      	add	sp, #8
30008e72:	bd10      	pop	{r4, pc}
30008e74:	6c83      	ldr	r3, [r0, #72]	; 0x48
30008e76:	f413 6f60 	tst.w	r3, #3584	; 0xe00
30008e7a:	d1c0      	bne.n	30008dfe <SWR_Calib_MEM+0xa6>
30008e7c:	f8d1 30e4 	ldr.w	r3, [r1, #228]	; 0xe4
30008e80:	f423 73e0 	bic.w	r3, r3, #448	; 0x1c0
30008e84:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
30008e88:	f8c1 30e4 	str.w	r3, [r1, #228]	; 0xe4
30008e8c:	e7b7      	b.n	30008dfe <SWR_Calib_MEM+0xa6>
30008e8e:	091b      	lsrs	r3, r3, #4
30008e90:	e7a7      	b.n	30008de2 <SWR_Calib_MEM+0x8a>
30008e92:	091b      	lsrs	r3, r3, #4
30008e94:	059a      	lsls	r2, r3, #22
30008e96:	e7d6      	b.n	30008e46 <SWR_Calib_MEM+0xee>
30008e98:	f003 030f 	and.w	r3, r3, #15
30008e9c:	059a      	lsls	r2, r3, #22
30008e9e:	e7d2      	b.n	30008e46 <SWR_Calib_MEM+0xee>
30008ea0:	42008800 	.word	0x42008800
30008ea4:	fffffccc 	.word	0xfffffccc
30008ea8:	3000de40 	.word	0x3000de40
30008eac:	42008100 	.word	0x42008100
30008eb0:	3000de3f 	.word	0x3000de3f

30008eb4 <SWR_Calib_AUD>:
30008eb4:	4b48      	ldr	r3, [pc, #288]	; (30008fd8 <SWR_Calib_AUD+0x124>)
30008eb6:	f240 3231 	movw	r2, #817	; 0x331
30008eba:	4948      	ldr	r1, [pc, #288]	; (30008fdc <SWR_Calib_AUD+0x128>)
30008ebc:	f04f 0c00 	mov.w	ip, #0
30008ec0:	b510      	push	{r4, lr}
30008ec2:	f8d3 00a0 	ldr.w	r0, [r3, #160]	; 0xa0
30008ec6:	b082      	sub	sp, #8
30008ec8:	4001      	ands	r1, r0
30008eca:	f240 70e6 	movw	r0, #2022	; 0x7e6
30008ece:	430a      	orrs	r2, r1
30008ed0:	f10d 0107 	add.w	r1, sp, #7
30008ed4:	f8c3 20a0 	str.w	r2, [r3, #160]	; 0xa0
30008ed8:	f8d3 2090 	ldr.w	r2, [r3, #144]	; 0x90
30008edc:	f442 22c0 	orr.w	r2, r2, #393216	; 0x60000
30008ee0:	f8c3 2090 	str.w	r2, [r3, #144]	; 0x90
30008ee4:	f8d3 20b8 	ldr.w	r2, [r3, #184]	; 0xb8
30008ee8:	f042 0201 	orr.w	r2, r2, #1
30008eec:	f8c3 20b8 	str.w	r2, [r3, #184]	; 0xb8
30008ef0:	f8d3 20bc 	ldr.w	r2, [r3, #188]	; 0xbc
30008ef4:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
30008ef8:	f8c3 20bc 	str.w	r2, [r3, #188]	; 0xbc
30008efc:	f88d c007 	strb.w	ip, [sp, #7]
30008f00:	f7ff fe88 	bl	30008c14 <OTP_Read8>
30008f04:	f89d 3007 	ldrb.w	r3, [sp, #7]
30008f08:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
30008f0c:	2af0      	cmp	r2, #240	; 0xf0
30008f0e:	d150      	bne.n	30008fb2 <SWR_Calib_AUD+0xfe>
30008f10:	f003 030f 	and.w	r3, r3, #15
30008f14:	2b0f      	cmp	r3, #15
30008f16:	d048      	beq.n	30008faa <SWR_Calib_AUD+0xf6>
30008f18:	2302      	movs	r3, #2
30008f1a:	4c31      	ldr	r4, [pc, #196]	; (30008fe0 <SWR_Calib_AUD+0x12c>)
30008f1c:	f10d 0106 	add.w	r1, sp, #6
30008f20:	f240 70e6 	movw	r0, #2022	; 0x7e6
30008f24:	7023      	strb	r3, [r4, #0]
30008f26:	f7ff fe75 	bl	30008c14 <OTP_Read8>
30008f2a:	7822      	ldrb	r2, [r4, #0]
30008f2c:	f89d 3006 	ldrb.w	r3, [sp, #6]
30008f30:	2a03      	cmp	r2, #3
30008f32:	d047      	beq.n	30008fc4 <SWR_Calib_AUD+0x110>
30008f34:	2a02      	cmp	r2, #2
30008f36:	bf0c      	ite	eq
30008f38:	f003 030f 	andeq.w	r3, r3, #15
30008f3c:	2300      	movne	r3, #0
30008f3e:	4926      	ldr	r1, [pc, #152]	; (30008fd8 <SWR_Calib_AUD+0x124>)
30008f40:	f8d1 2090 	ldr.w	r2, [r1, #144]	; 0x90
30008f44:	f022 020f 	bic.w	r2, r2, #15
30008f48:	4313      	orrs	r3, r2
30008f4a:	f8c1 3090 	str.w	r3, [r1, #144]	; 0x90
30008f4e:	2300      	movs	r3, #0
30008f50:	f10d 0107 	add.w	r1, sp, #7
30008f54:	f240 70e7 	movw	r0, #2023	; 0x7e7
30008f58:	f88d 3007 	strb.w	r3, [sp, #7]
30008f5c:	f7ff fe5a 	bl	30008c14 <OTP_Read8>
30008f60:	f89d 3007 	ldrb.w	r3, [sp, #7]
30008f64:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
30008f68:	2af0      	cmp	r2, #240	; 0xf0
30008f6a:	d124      	bne.n	30008fb6 <SWR_Calib_AUD+0x102>
30008f6c:	f003 030f 	and.w	r3, r3, #15
30008f70:	2b0f      	cmp	r3, #15
30008f72:	d022      	beq.n	30008fba <SWR_Calib_AUD+0x106>
30008f74:	2302      	movs	r3, #2
30008f76:	4c1b      	ldr	r4, [pc, #108]	; (30008fe4 <SWR_Calib_AUD+0x130>)
30008f78:	f10d 0107 	add.w	r1, sp, #7
30008f7c:	f240 70e7 	movw	r0, #2023	; 0x7e7
30008f80:	7023      	strb	r3, [r4, #0]
30008f82:	f7ff fe47 	bl	30008c14 <OTP_Read8>
30008f86:	7822      	ldrb	r2, [r4, #0]
30008f88:	f89d 3007 	ldrb.w	r3, [sp, #7]
30008f8c:	2a03      	cmp	r2, #3
30008f8e:	d01b      	beq.n	30008fc8 <SWR_Calib_AUD+0x114>
30008f90:	2a02      	cmp	r2, #2
30008f92:	d01c      	beq.n	30008fce <SWR_Calib_AUD+0x11a>
30008f94:	2200      	movs	r2, #0
30008f96:	4910      	ldr	r1, [pc, #64]	; (30008fd8 <SWR_Calib_AUD+0x124>)
30008f98:	f8d1 3090 	ldr.w	r3, [r1, #144]	; 0x90
30008f9c:	f023 7370 	bic.w	r3, r3, #62914560	; 0x3c00000
30008fa0:	4313      	orrs	r3, r2
30008fa2:	f8c1 3090 	str.w	r3, [r1, #144]	; 0x90
30008fa6:	b002      	add	sp, #8
30008fa8:	bd10      	pop	{r4, pc}
30008faa:	4b0d      	ldr	r3, [pc, #52]	; (30008fe0 <SWR_Calib_AUD+0x12c>)
30008fac:	2201      	movs	r2, #1
30008fae:	701a      	strb	r2, [r3, #0]
30008fb0:	e7cd      	b.n	30008f4e <SWR_Calib_AUD+0x9a>
30008fb2:	2303      	movs	r3, #3
30008fb4:	e7b1      	b.n	30008f1a <SWR_Calib_AUD+0x66>
30008fb6:	2303      	movs	r3, #3
30008fb8:	e7dd      	b.n	30008f76 <SWR_Calib_AUD+0xc2>
30008fba:	4b0a      	ldr	r3, [pc, #40]	; (30008fe4 <SWR_Calib_AUD+0x130>)
30008fbc:	2201      	movs	r2, #1
30008fbe:	701a      	strb	r2, [r3, #0]
30008fc0:	b002      	add	sp, #8
30008fc2:	bd10      	pop	{r4, pc}
30008fc4:	091b      	lsrs	r3, r3, #4
30008fc6:	e7ba      	b.n	30008f3e <SWR_Calib_AUD+0x8a>
30008fc8:	091b      	lsrs	r3, r3, #4
30008fca:	059a      	lsls	r2, r3, #22
30008fcc:	e7e3      	b.n	30008f96 <SWR_Calib_AUD+0xe2>
30008fce:	f003 030f 	and.w	r3, r3, #15
30008fd2:	059a      	lsls	r2, r3, #22
30008fd4:	e7df      	b.n	30008f96 <SWR_Calib_AUD+0xe2>
30008fd6:	bf00      	nop
30008fd8:	42008800 	.word	0x42008800
30008fdc:	fffffccc 	.word	0xfffffccc
30008fe0:	3000de3e 	.word	0x3000de3e
30008fe4:	3000de3d 	.word	0x3000de3d

30008fe8 <PLL_NP_ClkSet>:
30008fe8:	b570      	push	{r4, r5, r6, lr}
30008fea:	4604      	mov	r4, r0
30008fec:	4b1b      	ldr	r3, [pc, #108]	; (3000905c <PLL_NP_ClkSet+0x74>)
30008fee:	4798      	blx	r3
30008ff0:	4d1b      	ldr	r5, [pc, #108]	; (30009060 <PLL_NP_ClkSet+0x78>)
30008ff2:	08c2      	lsrs	r2, r0, #3
30008ff4:	fbb4 f3f0 	udiv	r3, r4, r0
30008ff8:	fb00 4c13 	mls	ip, r0, r3, r4
30008ffc:	1e9c      	subs	r4, r3, #2
30008ffe:	6c6b      	ldr	r3, [r5, #68]	; 0x44
30009000:	0164      	lsls	r4, r4, #5
30009002:	f423 63fc 	bic.w	r3, r3, #2016	; 0x7e0
30009006:	f404 64fc 	and.w	r4, r4, #2016	; 0x7e0
3000900a:	431c      	orrs	r4, r3
3000900c:	fbbc f3f2 	udiv	r3, ip, r2
30009010:	646c      	str	r4, [r5, #68]	; 0x44
30009012:	041c      	lsls	r4, r3, #16
30009014:	fb02 c013 	mls	r0, r2, r3, ip
30009018:	2300      	movs	r3, #0
3000901a:	6cee      	ldr	r6, [r5, #76]	; 0x4c
3000901c:	f404 24e0 	and.w	r4, r4, #458752	; 0x70000
30009020:	4619      	mov	r1, r3
30009022:	fa1f fc86 	uxth.w	ip, r6
30009026:	4e0f      	ldr	r6, [pc, #60]	; (30009064 <PLL_NP_ClkSet+0x7c>)
30009028:	ea50 314f 	orrs.w	r1, r0, pc, lsl #13
3000902c:	ea44 040c 	orr.w	r4, r4, ip
30009030:	f002 f9d0 	bl	3000b3d4 <__aeabi_uldivmod>
30009034:	4603      	mov	r3, r0
30009036:	2001      	movs	r0, #1
30009038:	ea44 44c3 	orr.w	r4, r4, r3, lsl #19
3000903c:	64ec      	str	r4, [r5, #76]	; 0x4c
3000903e:	47b0      	blx	r6
30009040:	6c6b      	ldr	r3, [r5, #68]	; 0x44
30009042:	203c      	movs	r0, #60	; 0x3c
30009044:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
30009048:	646b      	str	r3, [r5, #68]	; 0x44
3000904a:	6c6b      	ldr	r3, [r5, #68]	; 0x44
3000904c:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
30009050:	646b      	str	r3, [r5, #68]	; 0x44
30009052:	4633      	mov	r3, r6
30009054:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
30009058:	4718      	bx	r3
3000905a:	bf00      	nop
3000905c:	000099f5 	.word	0x000099f5
30009060:	42008800 	.word	0x42008800
30009064:	00009b2d 	.word	0x00009b2d

30009068 <PLL_AP_ClkSet>:
30009068:	b510      	push	{r4, lr}
3000906a:	4604      	mov	r4, r0
3000906c:	4b0a      	ldr	r3, [pc, #40]	; (30009098 <PLL_AP_ClkSet+0x30>)
3000906e:	4798      	blx	r3
30009070:	fbb4 f0f0 	udiv	r0, r4, r0
30009074:	f1a0 0319 	sub.w	r3, r0, #25
30009078:	2b0f      	cmp	r3, #15
3000907a:	d808      	bhi.n	3000908e <PLL_AP_ClkSet+0x26>
3000907c:	4a07      	ldr	r2, [pc, #28]	; (3000909c <PLL_AP_ClkSet+0x34>)
3000907e:	3802      	subs	r0, #2
30009080:	6953      	ldr	r3, [r2, #20]
30009082:	b2c0      	uxtb	r0, r0
30009084:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
30009088:	4318      	orrs	r0, r3
3000908a:	6150      	str	r0, [r2, #20]
3000908c:	bd10      	pop	{r4, pc}
3000908e:	f240 1177 	movw	r1, #375	; 0x177
30009092:	4803      	ldr	r0, [pc, #12]	; (300090a0 <PLL_AP_ClkSet+0x38>)
30009094:	f001 fa20 	bl	3000a4d8 <io_assert_failed>
30009098:	000099f5 	.word	0x000099f5
3000909c:	41000300 	.word	0x41000300
300090a0:	3000c558 	.word	0x3000c558

300090a4 <PLL_AP>:
300090a4:	2801      	cmp	r0, #1
300090a6:	b538      	push	{r3, r4, r5, lr}
300090a8:	d009      	beq.n	300090be <PLL_AP+0x1a>
300090aa:	4b13      	ldr	r3, [pc, #76]	; (300090f8 <PLL_AP+0x54>)
300090ac:	681a      	ldr	r2, [r3, #0]
300090ae:	f022 0209 	bic.w	r2, r2, #9
300090b2:	601a      	str	r2, [r3, #0]
300090b4:	681a      	ldr	r2, [r3, #0]
300090b6:	f022 0206 	bic.w	r2, r2, #6
300090ba:	601a      	str	r2, [r3, #0]
300090bc:	bd38      	pop	{r3, r4, r5, pc}
300090be:	4b0f      	ldr	r3, [pc, #60]	; (300090fc <PLL_AP+0x58>)
300090c0:	6f9a      	ldr	r2, [r3, #120]	; 0x78
300090c2:	f012 0f05 	tst.w	r2, #5
300090c6:	d00f      	beq.n	300090e8 <PLL_AP+0x44>
300090c8:	4d0d      	ldr	r5, [pc, #52]	; (30009100 <PLL_AP+0x5c>)
300090ca:	4c0b      	ldr	r4, [pc, #44]	; (300090f8 <PLL_AP+0x54>)
300090cc:	2001      	movs	r0, #1
300090ce:	6823      	ldr	r3, [r4, #0]
300090d0:	f043 0306 	orr.w	r3, r3, #6
300090d4:	6023      	str	r3, [r4, #0]
300090d6:	47a8      	blx	r5
300090d8:	6823      	ldr	r3, [r4, #0]
300090da:	f043 0309 	orr.w	r3, r3, #9
300090de:	6023      	str	r3, [r4, #0]
300090e0:	6863      	ldr	r3, [r4, #4]
300090e2:	2b00      	cmp	r3, #0
300090e4:	dafc      	bge.n	300090e0 <PLL_AP+0x3c>
300090e6:	bd38      	pop	{r3, r4, r5, pc}
300090e8:	6f9a      	ldr	r2, [r3, #120]	; 0x78
300090ea:	20a0      	movs	r0, #160	; 0xa0
300090ec:	4d04      	ldr	r5, [pc, #16]	; (30009100 <PLL_AP+0x5c>)
300090ee:	f042 0207 	orr.w	r2, r2, #7
300090f2:	679a      	str	r2, [r3, #120]	; 0x78
300090f4:	47a8      	blx	r5
300090f6:	e7e8      	b.n	300090ca <PLL_AP+0x26>
300090f8:	41000300 	.word	0x41000300
300090fc:	42008800 	.word	0x42008800
30009100:	00009b2d 	.word	0x00009b2d

30009104 <BOOT_Reason>:
30009104:	4b02      	ldr	r3, [pc, #8]	; (30009110 <BOOT_Reason+0xc>)
30009106:	f8b3 0064 	ldrh.w	r0, [r3, #100]	; 0x64
3000910a:	b280      	uxth	r0, r0
3000910c:	4770      	bx	lr
3000910e:	bf00      	nop
30009110:	42008200 	.word	0x42008200

30009114 <IPC_SEMTake>:
30009114:	280f      	cmp	r0, #15
30009116:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
3000911a:	d839      	bhi.n	30009190 <IPC_SEMTake+0x7c>
3000911c:	4b1f      	ldr	r3, [pc, #124]	; (3000919c <IPC_SEMTake+0x88>)
3000911e:	4680      	mov	r8, r0
30009120:	460c      	mov	r4, r1
30009122:	4798      	blx	r3
30009124:	2802      	cmp	r0, #2
30009126:	d914      	bls.n	30009152 <IPC_SEMTake+0x3e>
30009128:	4d1d      	ldr	r5, [pc, #116]	; (300091a0 <IPC_SEMTake+0x8c>)
3000912a:	4445      	add	r5, r8
3000912c:	00ad      	lsls	r5, r5, #2
3000912e:	682b      	ldr	r3, [r5, #0]
30009130:	b35b      	cbz	r3, 3000918a <IPC_SEMTake+0x76>
30009132:	b15c      	cbz	r4, 3000914c <IPC_SEMTake+0x38>
30009134:	4e1b      	ldr	r6, [pc, #108]	; (300091a4 <IPC_SEMTake+0x90>)
30009136:	e001      	b.n	3000913c <IPC_SEMTake+0x28>
30009138:	682b      	ldr	r3, [r5, #0]
3000913a:	b333      	cbz	r3, 3000918a <IPC_SEMTake+0x76>
3000913c:	6833      	ldr	r3, [r6, #0]
3000913e:	b10b      	cbz	r3, 30009144 <IPC_SEMTake+0x30>
30009140:	2001      	movs	r0, #1
30009142:	4798      	blx	r3
30009144:	1c63      	adds	r3, r4, #1
30009146:	d0f7      	beq.n	30009138 <IPC_SEMTake+0x24>
30009148:	3c01      	subs	r4, #1
3000914a:	d1f5      	bne.n	30009138 <IPC_SEMTake+0x24>
3000914c:	2000      	movs	r0, #0
3000914e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
30009152:	2201      	movs	r2, #1
30009154:	4e14      	ldr	r6, [pc, #80]	; (300091a8 <IPC_SEMTake+0x94>)
30009156:	4f13      	ldr	r7, [pc, #76]	; (300091a4 <IPC_SEMTake+0x90>)
30009158:	fa02 f808 	lsl.w	r8, r2, r8
3000915c:	e007      	b.n	3000916e <IPC_SEMTake+0x5a>
3000915e:	2c00      	cmp	r4, #0
30009160:	d0f4      	beq.n	3000914c <IPC_SEMTake+0x38>
30009162:	683b      	ldr	r3, [r7, #0]
30009164:	b10b      	cbz	r3, 3000916a <IPC_SEMTake+0x56>
30009166:	2001      	movs	r0, #1
30009168:	4798      	blx	r3
3000916a:	3c01      	subs	r4, #1
3000916c:	d0ee      	beq.n	3000914c <IPC_SEMTake+0x38>
3000916e:	f8b6 30f4 	ldrh.w	r3, [r6, #244]	; 0xf4
30009172:	b29b      	uxth	r3, r3
30009174:	ea13 0f08 	tst.w	r3, r8
30009178:	d1f1      	bne.n	3000915e <IPC_SEMTake+0x4a>
3000917a:	ea43 0308 	orr.w	r3, r3, r8
3000917e:	2001      	movs	r0, #1
30009180:	b29b      	uxth	r3, r3
30009182:	f8a6 30f4 	strh.w	r3, [r6, #244]	; 0xf4
30009186:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
3000918a:	2001      	movs	r0, #1
3000918c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
30009190:	f44f 7184 	mov.w	r1, #264	; 0x108
30009194:	4805      	ldr	r0, [pc, #20]	; (300091ac <IPC_SEMTake+0x98>)
30009196:	f001 f99f 	bl	3000a4d8 <io_assert_failed>
3000919a:	bf00      	nop
3000919c:	30009b2d 	.word	0x30009b2d
300091a0:	108020f0 	.word	0x108020f0
300091a4:	3000e6a0 	.word	0x3000e6a0
300091a8:	42008200 	.word	0x42008200
300091ac:	3000c5bc 	.word	0x3000c5bc

300091b0 <IPC_SEMFree>:
300091b0:	280f      	cmp	r0, #15
300091b2:	b510      	push	{r4, lr}
300091b4:	d817      	bhi.n	300091e6 <IPC_SEMFree+0x36>
300091b6:	4b0e      	ldr	r3, [pc, #56]	; (300091f0 <IPC_SEMFree+0x40>)
300091b8:	4604      	mov	r4, r0
300091ba:	4798      	blx	r3
300091bc:	2802      	cmp	r0, #2
300091be:	d80b      	bhi.n	300091d8 <IPC_SEMFree+0x28>
300091c0:	4a0c      	ldr	r2, [pc, #48]	; (300091f4 <IPC_SEMFree+0x44>)
300091c2:	2001      	movs	r0, #1
300091c4:	f8b2 30f4 	ldrh.w	r3, [r2, #244]	; 0xf4
300091c8:	40a0      	lsls	r0, r4
300091ca:	b29c      	uxth	r4, r3
300091cc:	ea24 0400 	bic.w	r4, r4, r0
300091d0:	2001      	movs	r0, #1
300091d2:	f8a2 40f4 	strh.w	r4, [r2, #244]	; 0xf4
300091d6:	bd10      	pop	{r4, pc}
300091d8:	4b07      	ldr	r3, [pc, #28]	; (300091f8 <IPC_SEMFree+0x48>)
300091da:	2201      	movs	r2, #1
300091dc:	2001      	movs	r0, #1
300091de:	4423      	add	r3, r4
300091e0:	009b      	lsls	r3, r3, #2
300091e2:	601a      	str	r2, [r3, #0]
300091e4:	bd10      	pop	{r4, pc}
300091e6:	f44f 71a3 	mov.w	r1, #326	; 0x146
300091ea:	4804      	ldr	r0, [pc, #16]	; (300091fc <IPC_SEMFree+0x4c>)
300091ec:	f001 f974 	bl	3000a4d8 <io_assert_failed>
300091f0:	30009b2d 	.word	0x30009b2d
300091f4:	42008200 	.word	0x42008200
300091f8:	108020f0 	.word	0x108020f0
300091fc:	3000c5bc 	.word	0x3000c5bc

30009200 <HANDLER_SecureFault>:
30009200:	f3ef 8008 	mrs	r0, MSP
30009204:	f3ef 8109 	mrs	r1, PSP
30009208:	4672      	mov	r2, lr
3000920a:	f04f 0304 	mov.w	r3, #4
3000920e:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
30009212:	f000 b831 	b.w	30009278 <Fault_Handler>
30009216:	4770      	bx	lr

30009218 <HANDLER_MemFault>:
30009218:	f3ef 8008 	mrs	r0, MSP
3000921c:	f3ef 8109 	mrs	r1, PSP
30009220:	4672      	mov	r2, lr
30009222:	f04f 0303 	mov.w	r3, #3
30009226:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
3000922a:	f000 b825 	b.w	30009278 <Fault_Handler>
3000922e:	4770      	bx	lr

30009230 <HANDLER_BusFault>:
30009230:	f3ef 8008 	mrs	r0, MSP
30009234:	f3ef 8109 	mrs	r1, PSP
30009238:	4672      	mov	r2, lr
3000923a:	f04f 0302 	mov.w	r3, #2
3000923e:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
30009242:	f000 b819 	b.w	30009278 <Fault_Handler>
30009246:	4770      	bx	lr

30009248 <HANDLER_UsageFault>:
30009248:	f3ef 8008 	mrs	r0, MSP
3000924c:	f3ef 8109 	mrs	r1, PSP
30009250:	4672      	mov	r2, lr
30009252:	f04f 0301 	mov.w	r3, #1
30009256:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
3000925a:	f000 b80d 	b.w	30009278 <Fault_Handler>
3000925e:	4770      	bx	lr

30009260 <HANDLER_HardFault>:
30009260:	f3ef 8008 	mrs	r0, MSP
30009264:	f3ef 8109 	mrs	r1, PSP
30009268:	4672      	mov	r2, lr
3000926a:	f04f 0300 	mov.w	r3, #0
3000926e:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
30009272:	f000 b801 	b.w	30009278 <Fault_Handler>
30009276:	4770      	bx	lr

30009278 <Fault_Handler>:
30009278:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
3000927c:	b095      	sub	sp, #84	; 0x54
3000927e:	4614      	mov	r4, r2
30009280:	4605      	mov	r5, r0
30009282:	2244      	movs	r2, #68	; 0x44
30009284:	460e      	mov	r6, r1
30009286:	a803      	add	r0, sp, #12
30009288:	2100      	movs	r1, #0
3000928a:	461f      	mov	r7, r3
3000928c:	f002 fa38 	bl	3000b700 <____wrap_memset_veneer>
30009290:	07e2      	lsls	r2, r4, #31
30009292:	f004 0340 	and.w	r3, r4, #64	; 0x40
30009296:	d558      	bpl.n	3000934a <Fault_Handler+0xd2>
30009298:	2b00      	cmp	r3, #0
3000929a:	d05f      	beq.n	3000935c <Fault_Handler+0xe4>
3000929c:	f004 000c 	and.w	r0, r4, #12
300092a0:	f04f 0800 	mov.w	r8, #0
300092a4:	f1a0 000c 	sub.w	r0, r0, #12
300092a8:	fab0 f080 	clz	r0, r0
300092ac:	0940      	lsrs	r0, r0, #5
300092ae:	f1a5 0c24 	sub.w	ip, r5, #36	; 0x24
300092b2:	ab04      	add	r3, sp, #16
300092b4:	1f29      	subs	r1, r5, #4
300092b6:	9403      	str	r4, [sp, #12]
300092b8:	f85c 2f04 	ldr.w	r2, [ip, #4]!
300092bc:	4561      	cmp	r1, ip
300092be:	f843 2b04 	str.w	r2, [r3], #4
300092c2:	d1f9      	bne.n	300092b8 <Fault_Handler+0x40>
300092c4:	2800      	cmp	r0, #0
300092c6:	bf14      	ite	ne
300092c8:	4631      	movne	r1, r6
300092ca:	4629      	moveq	r1, r5
300092cc:	f10d 0e30 	add.w	lr, sp, #48	; 0x30
300092d0:	f1a1 0c04 	sub.w	ip, r1, #4
300092d4:	f101 021c 	add.w	r2, r1, #28
300092d8:	f85c 3f04 	ldr.w	r3, [ip, #4]!
300092dc:	4594      	cmp	ip, r2
300092de:	f84e 3b04 	str.w	r3, [lr], #4
300092e2:	d1f9      	bne.n	300092d8 <Fault_Handler+0x60>
300092e4:	06e3      	lsls	r3, r4, #27
300092e6:	aa03      	add	r2, sp, #12
300092e8:	bf4c      	ite	mi
300092ea:	3120      	addmi	r1, #32
300092ec:	3168      	addpl	r1, #104	; 0x68
300092ee:	6bc8      	ldr	r0, [r1, #60]	; 0x3c
300092f0:	f001 fc1a 	bl	3000ab28 <crash_dump>
300092f4:	2f04      	cmp	r7, #4
300092f6:	d042      	beq.n	3000937e <Fault_Handler+0x106>
300092f8:	f1b8 0f00 	cmp.w	r8, #0
300092fc:	d136      	bne.n	3000936c <Fault_Handler+0xf4>
300092fe:	f8df 80c8 	ldr.w	r8, [pc, #200]	; 300093c8 <Fault_Handler+0x150>
30009302:	2241      	movs	r2, #65	; 0x41
30009304:	4b28      	ldr	r3, [pc, #160]	; (300093a8 <Fault_Handler+0x130>)
30009306:	f8d8 0024 	ldr.w	r0, [r8, #36]	; 0x24
3000930a:	4928      	ldr	r1, [pc, #160]	; (300093ac <Fault_Handler+0x134>)
3000930c:	9000      	str	r0, [sp, #0]
3000930e:	2001      	movs	r0, #1
30009310:	f000 f8ae 	bl	30009470 <rtk_log_write>
30009314:	f8d8 300c 	ldr.w	r3, [r8, #12]
30009318:	2241      	movs	r2, #65	; 0x41
3000931a:	4924      	ldr	r1, [pc, #144]	; (300093ac <Fault_Handler+0x134>)
3000931c:	9300      	str	r3, [sp, #0]
3000931e:	2001      	movs	r0, #1
30009320:	4b23      	ldr	r3, [pc, #140]	; (300093b0 <Fault_Handler+0x138>)
30009322:	f000 f8a5 	bl	30009470 <rtk_log_write>
30009326:	f3ef 8314 	mrs	r3, CONTROL
3000932a:	2241      	movs	r2, #65	; 0x41
3000932c:	9300      	str	r3, [sp, #0]
3000932e:	491f      	ldr	r1, [pc, #124]	; (300093ac <Fault_Handler+0x134>)
30009330:	2001      	movs	r0, #1
30009332:	4b20      	ldr	r3, [pc, #128]	; (300093b4 <Fault_Handler+0x13c>)
30009334:	f000 f89c 	bl	30009470 <rtk_log_write>
30009338:	463b      	mov	r3, r7
3000933a:	4622      	mov	r2, r4
3000933c:	4631      	mov	r1, r6
3000933e:	4628      	mov	r0, r5
30009340:	f002 f9e2 	bl	3000b708 <__INT_HardFault_C_veneer>
30009344:	b015      	add	sp, #84	; 0x54
30009346:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
3000934a:	2b00      	cmp	r3, #0
3000934c:	d0a6      	beq.n	3000929c <Fault_Handler+0x24>
3000934e:	4b1a      	ldr	r3, [pc, #104]	; (300093b8 <Fault_Handler+0x140>)
30009350:	2241      	movs	r2, #65	; 0x41
30009352:	4916      	ldr	r1, [pc, #88]	; (300093ac <Fault_Handler+0x134>)
30009354:	2001      	movs	r0, #1
30009356:	f000 f88b 	bl	30009470 <rtk_log_write>
3000935a:	e7fe      	b.n	3000935a <Fault_Handler+0xe2>
3000935c:	f3ef 8894 	mrs	r8, CONTROL_NS
30009360:	f014 0008 	ands.w	r0, r4, #8
30009364:	d0a3      	beq.n	300092ae <Fault_Handler+0x36>
30009366:	f3c8 0040 	ubfx	r0, r8, #1, #1
3000936a:	e7a0      	b.n	300092ae <Fault_Handler+0x36>
3000936c:	4b13      	ldr	r3, [pc, #76]	; (300093bc <Fault_Handler+0x144>)
3000936e:	2241      	movs	r2, #65	; 0x41
30009370:	490e      	ldr	r1, [pc, #56]	; (300093ac <Fault_Handler+0x134>)
30009372:	2001      	movs	r0, #1
30009374:	f8cd 8000 	str.w	r8, [sp]
30009378:	f000 f87a 	bl	30009470 <rtk_log_write>
3000937c:	e7bf      	b.n	300092fe <Fault_Handler+0x86>
3000937e:	f8df 9048 	ldr.w	r9, [pc, #72]	; 300093c8 <Fault_Handler+0x150>
30009382:	2241      	movs	r2, #65	; 0x41
30009384:	4b0e      	ldr	r3, [pc, #56]	; (300093c0 <Fault_Handler+0x148>)
30009386:	f8d9 00e4 	ldr.w	r0, [r9, #228]	; 0xe4
3000938a:	4908      	ldr	r1, [pc, #32]	; (300093ac <Fault_Handler+0x134>)
3000938c:	9000      	str	r0, [sp, #0]
3000938e:	2001      	movs	r0, #1
30009390:	f000 f86e 	bl	30009470 <rtk_log_write>
30009394:	f8d9 30e8 	ldr.w	r3, [r9, #232]	; 0xe8
30009398:	2241      	movs	r2, #65	; 0x41
3000939a:	4904      	ldr	r1, [pc, #16]	; (300093ac <Fault_Handler+0x134>)
3000939c:	9300      	str	r3, [sp, #0]
3000939e:	2001      	movs	r0, #1
300093a0:	4b08      	ldr	r3, [pc, #32]	; (300093c4 <Fault_Handler+0x14c>)
300093a2:	f000 f865 	bl	30009470 <rtk_log_write>
300093a6:	e7a7      	b.n	300092f8 <Fault_Handler+0x80>
300093a8:	3000c6b8 	.word	0x3000c6b8
300093ac:	3000c670 	.word	0x3000c670
300093b0:	3000c6cc 	.word	0x3000c6cc
300093b4:	3000c6e0 	.word	0x3000c6e0
300093b8:	3000c624 	.word	0x3000c624
300093bc:	3000c6a0 	.word	0x3000c6a0
300093c0:	3000c678 	.word	0x3000c678
300093c4:	3000c68c 	.word	0x3000c68c
300093c8:	e000ed00 	.word	0xe000ed00

300093cc <Fault_Hanlder_Redirect>:
300093cc:	4b08      	ldr	r3, [pc, #32]	; (300093f0 <Fault_Hanlder_Redirect+0x24>)
300093ce:	4909      	ldr	r1, [pc, #36]	; (300093f4 <Fault_Hanlder_Redirect+0x28>)
300093d0:	4a09      	ldr	r2, [pc, #36]	; (300093f8 <Fault_Hanlder_Redirect+0x2c>)
300093d2:	b410      	push	{r4}
300093d4:	6008      	str	r0, [r1, #0]
300093d6:	4c09      	ldr	r4, [pc, #36]	; (300093fc <Fault_Hanlder_Redirect+0x30>)
300093d8:	60da      	str	r2, [r3, #12]
300093da:	4809      	ldr	r0, [pc, #36]	; (30009400 <Fault_Hanlder_Redirect+0x34>)
300093dc:	4909      	ldr	r1, [pc, #36]	; (30009404 <Fault_Hanlder_Redirect+0x38>)
300093de:	4a0a      	ldr	r2, [pc, #40]	; (30009408 <Fault_Hanlder_Redirect+0x3c>)
300093e0:	e9c3 4004 	strd	r4, r0, [r3, #16]
300093e4:	e9c3 1206 	strd	r1, r2, [r3, #24]
300093e8:	f85d 4b04 	ldr.w	r4, [sp], #4
300093ec:	4770      	bx	lr
300093ee:	bf00      	nop
300093f0:	30000000 	.word	0x30000000
300093f4:	3000e6d4 	.word	0x3000e6d4
300093f8:	30009261 	.word	0x30009261
300093fc:	30009219 	.word	0x30009219
30009400:	30009231 	.word	0x30009231
30009404:	30009249 	.word	0x30009249
30009408:	30009201 	.word	0x30009201

3000940c <rtk_log_level_get>:
3000940c:	4b13      	ldr	r3, [pc, #76]	; (3000945c <rtk_log_level_get+0x50>)
3000940e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
30009412:	681a      	ldr	r2, [r3, #0]
30009414:	4606      	mov	r6, r0
30009416:	2a03      	cmp	r2, #3
30009418:	d917      	bls.n	3000944a <rtk_log_level_get+0x3e>
3000941a:	b1d0      	cbz	r0, 30009452 <rtk_log_level_get+0x46>
3000941c:	2704      	movs	r7, #4
3000941e:	4d10      	ldr	r5, [pc, #64]	; (30009460 <rtk_log_level_get+0x54>)
30009420:	2400      	movs	r4, #0
30009422:	f8df 8048 	ldr.w	r8, [pc, #72]	; 3000946c <rtk_log_level_get+0x60>
30009426:	e002      	b.n	3000942e <rtk_log_level_get+0x22>
30009428:	3401      	adds	r4, #1
3000942a:	42a7      	cmp	r7, r4
3000942c:	d911      	bls.n	30009452 <rtk_log_level_get+0x46>
3000942e:	4628      	mov	r0, r5
30009430:	4631      	mov	r1, r6
30009432:	350b      	adds	r5, #11
30009434:	47c0      	blx	r8
30009436:	2800      	cmp	r0, #0
30009438:	d1f6      	bne.n	30009428 <rtk_log_level_get+0x1c>
3000943a:	eb04 0284 	add.w	r2, r4, r4, lsl #2
3000943e:	4b09      	ldr	r3, [pc, #36]	; (30009464 <rtk_log_level_get+0x58>)
30009440:	eb04 0442 	add.w	r4, r4, r2, lsl #1
30009444:	5d18      	ldrb	r0, [r3, r4]
30009446:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
3000944a:	681f      	ldr	r7, [r3, #0]
3000944c:	b108      	cbz	r0, 30009452 <rtk_log_level_get+0x46>
3000944e:	2f00      	cmp	r7, #0
30009450:	d1e5      	bne.n	3000941e <rtk_log_level_get+0x12>
30009452:	4b05      	ldr	r3, [pc, #20]	; (30009468 <rtk_log_level_get+0x5c>)
30009454:	7818      	ldrb	r0, [r3, #0]
30009456:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
3000945a:	bf00      	nop
3000945c:	3000e6a4 	.word	0x3000e6a4
30009460:	3000e6a9 	.word	0x3000e6a9
30009464:	3000e6a8 	.word	0x3000e6a8
30009468:	3000de41 	.word	0x3000de41
3000946c:	00012c89 	.word	0x00012c89

30009470 <rtk_log_write>:
30009470:	b1b9      	cbz	r1, 300094a2 <rtk_log_write+0x32>
30009472:	b408      	push	{r3}
30009474:	b570      	push	{r4, r5, r6, lr}
30009476:	4605      	mov	r5, r0
30009478:	b083      	sub	sp, #12
3000947a:	4608      	mov	r0, r1
3000947c:	460c      	mov	r4, r1
3000947e:	4616      	mov	r6, r2
30009480:	f7ff ffc4 	bl	3000940c <rtk_log_level_get>
30009484:	42a8      	cmp	r0, r5
30009486:	d307      	bcc.n	30009498 <rtk_log_write+0x28>
30009488:	7823      	ldrb	r3, [r4, #0]
3000948a:	2b23      	cmp	r3, #35	; 0x23
3000948c:	d10a      	bne.n	300094a4 <rtk_log_write+0x34>
3000948e:	a908      	add	r1, sp, #32
30009490:	9807      	ldr	r0, [sp, #28]
30009492:	9101      	str	r1, [sp, #4]
30009494:	f000 fb5c 	bl	30009b50 <DiagVprintf>
30009498:	b003      	add	sp, #12
3000949a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
3000949e:	b001      	add	sp, #4
300094a0:	4770      	bx	lr
300094a2:	4770      	bx	lr
300094a4:	4621      	mov	r1, r4
300094a6:	4632      	mov	r2, r6
300094a8:	4804      	ldr	r0, [pc, #16]	; (300094bc <rtk_log_write+0x4c>)
300094aa:	f000 fe11 	bl	3000a0d0 <DiagPrintf>
300094ae:	a908      	add	r1, sp, #32
300094b0:	9807      	ldr	r0, [sp, #28]
300094b2:	9101      	str	r1, [sp, #4]
300094b4:	f000 fb4c 	bl	30009b50 <DiagVprintf>
300094b8:	e7ee      	b.n	30009498 <rtk_log_write+0x28>
300094ba:	bf00      	nop
300094bc:	3000c6f4 	.word	0x3000c6f4

300094c0 <rtk_log_write_nano>:
300094c0:	b1b9      	cbz	r1, 300094f2 <rtk_log_write_nano+0x32>
300094c2:	b408      	push	{r3}
300094c4:	b570      	push	{r4, r5, r6, lr}
300094c6:	4605      	mov	r5, r0
300094c8:	b083      	sub	sp, #12
300094ca:	4608      	mov	r0, r1
300094cc:	460c      	mov	r4, r1
300094ce:	4616      	mov	r6, r2
300094d0:	f7ff ff9c 	bl	3000940c <rtk_log_level_get>
300094d4:	42a8      	cmp	r0, r5
300094d6:	d307      	bcc.n	300094e8 <rtk_log_write_nano+0x28>
300094d8:	7823      	ldrb	r3, [r4, #0]
300094da:	2b23      	cmp	r3, #35	; 0x23
300094dc:	d10a      	bne.n	300094f4 <rtk_log_write_nano+0x34>
300094de:	a908      	add	r1, sp, #32
300094e0:	9807      	ldr	r0, [sp, #28]
300094e2:	9101      	str	r1, [sp, #4]
300094e4:	f000 fe02 	bl	3000a0ec <DiagVprintfNano>
300094e8:	b003      	add	sp, #12
300094ea:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
300094ee:	b001      	add	sp, #4
300094f0:	4770      	bx	lr
300094f2:	4770      	bx	lr
300094f4:	4621      	mov	r1, r4
300094f6:	4632      	mov	r2, r6
300094f8:	4804      	ldr	r0, [pc, #16]	; (3000950c <rtk_log_write_nano+0x4c>)
300094fa:	f000 ffdf 	bl	3000a4bc <DiagPrintfNano>
300094fe:	a908      	add	r1, sp, #32
30009500:	9807      	ldr	r0, [sp, #28]
30009502:	9101      	str	r1, [sp, #4]
30009504:	f000 fdf2 	bl	3000a0ec <DiagVprintfNano>
30009508:	e7ee      	b.n	300094e8 <rtk_log_write_nano+0x28>
3000950a:	bf00      	nop
3000950c:	3000c6f4 	.word	0x3000c6f4

30009510 <ChipInfo_Invalid>:
30009510:	4e06      	ldr	r6, [pc, #24]	; (3000952c <ChipInfo_Invalid+0x1c>)
30009512:	4d07      	ldr	r5, [pc, #28]	; (30009530 <ChipInfo_Invalid+0x20>)
30009514:	4c07      	ldr	r4, [pc, #28]	; (30009534 <ChipInfo_Invalid+0x24>)
30009516:	b508      	push	{r3, lr}
30009518:	462b      	mov	r3, r5
3000951a:	2245      	movs	r2, #69	; 0x45
3000951c:	4621      	mov	r1, r4
3000951e:	2002      	movs	r0, #2
30009520:	f7ff ffa6 	bl	30009470 <rtk_log_write>
30009524:	f242 7010 	movw	r0, #10000	; 0x2710
30009528:	47b0      	blx	r6
3000952a:	e7f5      	b.n	30009518 <ChipInfo_Invalid+0x8>
3000952c:	00009be5 	.word	0x00009be5
30009530:	3000c700 	.word	0x3000c700
30009534:	3000c720 	.word	0x3000c720

30009538 <ChipInfo_Get>:
30009538:	b570      	push	{r4, r5, r6, lr}
3000953a:	4c12      	ldr	r4, [pc, #72]	; (30009584 <ChipInfo_Get+0x4c>)
3000953c:	7820      	ldrb	r0, [r4, #0]
3000953e:	28ff      	cmp	r0, #255	; 0xff
30009540:	d107      	bne.n	30009552 <ChipInfo_Get+0x1a>
30009542:	4d11      	ldr	r5, [pc, #68]	; (30009588 <ChipInfo_Get+0x50>)
30009544:	f895 310f 	ldrb.w	r3, [r5, #271]	; 0x10f
30009548:	b123      	cbz	r3, 30009554 <ChipInfo_Get+0x1c>
3000954a:	f895 010f 	ldrb.w	r0, [r5, #271]	; 0x10f
3000954e:	b2c0      	uxtb	r0, r0
30009550:	7020      	strb	r0, [r4, #0]
30009552:	bd70      	pop	{r4, r5, r6, pc}
30009554:	4621      	mov	r1, r4
30009556:	f240 70ff 	movw	r0, #2047	; 0x7ff
3000955a:	f7ff fb5b 	bl	30008c14 <OTP_Read8>
3000955e:	7820      	ldrb	r0, [r4, #0]
30009560:	28ff      	cmp	r0, #255	; 0xff
30009562:	d002      	beq.n	3000956a <ChipInfo_Get+0x32>
30009564:	f885 010f 	strb.w	r0, [r5, #271]	; 0x10f
30009568:	bd70      	pop	{r4, r5, r6, pc}
3000956a:	4e08      	ldr	r6, [pc, #32]	; (3000958c <ChipInfo_Get+0x54>)
3000956c:	4d08      	ldr	r5, [pc, #32]	; (30009590 <ChipInfo_Get+0x58>)
3000956e:	4c09      	ldr	r4, [pc, #36]	; (30009594 <ChipInfo_Get+0x5c>)
30009570:	462b      	mov	r3, r5
30009572:	2257      	movs	r2, #87	; 0x57
30009574:	4621      	mov	r1, r4
30009576:	2003      	movs	r0, #3
30009578:	f7ff ff7a 	bl	30009470 <rtk_log_write>
3000957c:	f242 7010 	movw	r0, #10000	; 0x2710
30009580:	47b0      	blx	r6
30009582:	e7f5      	b.n	30009570 <ChipInfo_Get+0x38>
30009584:	3000de42 	.word	0x3000de42
30009588:	23020000 	.word	0x23020000
3000958c:	00009be5 	.word	0x00009be5
30009590:	3000c72c 	.word	0x3000c72c
30009594:	3000c720 	.word	0x3000c720

30009598 <ChipInfo_MemoryType>:
30009598:	b510      	push	{r4, lr}
3000959a:	4c11      	ldr	r4, [pc, #68]	; (300095e0 <ChipInfo_MemoryType+0x48>)
3000959c:	47a0      	blx	r4
3000959e:	2802      	cmp	r0, #2
300095a0:	d019      	beq.n	300095d6 <ChipInfo_MemoryType+0x3e>
300095a2:	47a0      	blx	r4
300095a4:	2803      	cmp	r0, #3
300095a6:	d016      	beq.n	300095d6 <ChipInfo_MemoryType+0x3e>
300095a8:	4c0e      	ldr	r4, [pc, #56]	; (300095e4 <ChipInfo_MemoryType+0x4c>)
300095aa:	4b0f      	ldr	r3, [pc, #60]	; (300095e8 <ChipInfo_MemoryType+0x50>)
300095ac:	4798      	blx	r3
300095ae:	2100      	movs	r1, #0
300095b0:	2306      	movs	r3, #6
300095b2:	4622      	mov	r2, r4
300095b4:	e004      	b.n	300095c0 <ChipInfo_MemoryType+0x28>
300095b6:	7a13      	ldrb	r3, [r2, #8]
300095b8:	3101      	adds	r1, #1
300095ba:	3206      	adds	r2, #6
300095bc:	2bff      	cmp	r3, #255	; 0xff
300095be:	d00c      	beq.n	300095da <ChipInfo_MemoryType+0x42>
300095c0:	4298      	cmp	r0, r3
300095c2:	d1f8      	bne.n	300095b6 <ChipInfo_MemoryType+0x1e>
300095c4:	eb01 0141 	add.w	r1, r1, r1, lsl #1
300095c8:	eb04 0141 	add.w	r1, r4, r1, lsl #1
300095cc:	78cb      	ldrb	r3, [r1, #3]
300095ce:	2b02      	cmp	r3, #2
300095d0:	d001      	beq.n	300095d6 <ChipInfo_MemoryType+0x3e>
300095d2:	2001      	movs	r0, #1
300095d4:	bd10      	pop	{r4, pc}
300095d6:	2002      	movs	r0, #2
300095d8:	bd10      	pop	{r4, pc}
300095da:	f7ff ff99 	bl	30009510 <ChipInfo_Invalid>
300095de:	bf00      	nop
300095e0:	0000c0f9 	.word	0x0000c0f9
300095e4:	3000c750 	.word	0x3000c750
300095e8:	30009539 	.word	0x30009539

300095ec <ChipInfo_DDRType>:
300095ec:	b510      	push	{r4, lr}
300095ee:	4b0f      	ldr	r3, [pc, #60]	; (3000962c <ChipInfo_DDRType+0x40>)
300095f0:	4798      	blx	r3
300095f2:	4b0f      	ldr	r3, [pc, #60]	; (30009630 <ChipInfo_DDRType+0x44>)
300095f4:	4604      	mov	r4, r0
300095f6:	4798      	blx	r3
300095f8:	2801      	cmp	r0, #1
300095fa:	d112      	bne.n	30009622 <ChipInfo_DDRType+0x36>
300095fc:	480d      	ldr	r0, [pc, #52]	; (30009634 <ChipInfo_DDRType+0x48>)
300095fe:	2100      	movs	r1, #0
30009600:	2206      	movs	r2, #6
30009602:	4603      	mov	r3, r0
30009604:	e003      	b.n	3000960e <ChipInfo_DDRType+0x22>
30009606:	789a      	ldrb	r2, [r3, #2]
30009608:	3101      	adds	r1, #1
3000960a:	2aff      	cmp	r2, #255	; 0xff
3000960c:	d00b      	beq.n	30009626 <ChipInfo_DDRType+0x3a>
3000960e:	4294      	cmp	r4, r2
30009610:	f103 0306 	add.w	r3, r3, #6
30009614:	d1f7      	bne.n	30009606 <ChipInfo_DDRType+0x1a>
30009616:	eb01 0141 	add.w	r1, r1, r1, lsl #1
3000961a:	eb00 0141 	add.w	r1, r0, r1, lsl #1
3000961e:	78c8      	ldrb	r0, [r1, #3]
30009620:	bd10      	pop	{r4, pc}
30009622:	20ff      	movs	r0, #255	; 0xff
30009624:	bd10      	pop	{r4, pc}
30009626:	2000      	movs	r0, #0
30009628:	bd10      	pop	{r4, pc}
3000962a:	bf00      	nop
3000962c:	30009539 	.word	0x30009539
30009630:	30009599 	.word	0x30009599
30009634:	3000c750 	.word	0x3000c750

30009638 <ChipInfo_MemorySize>:
30009638:	b510      	push	{r4, lr}
3000963a:	4c0b      	ldr	r4, [pc, #44]	; (30009668 <ChipInfo_MemorySize+0x30>)
3000963c:	4b0b      	ldr	r3, [pc, #44]	; (3000966c <ChipInfo_MemorySize+0x34>)
3000963e:	4798      	blx	r3
30009640:	2100      	movs	r1, #0
30009642:	2306      	movs	r3, #6
30009644:	4622      	mov	r2, r4
30009646:	e004      	b.n	30009652 <ChipInfo_MemorySize+0x1a>
30009648:	7a13      	ldrb	r3, [r2, #8]
3000964a:	3101      	adds	r1, #1
3000964c:	3206      	adds	r2, #6
3000964e:	2bff      	cmp	r3, #255	; 0xff
30009650:	d007      	beq.n	30009662 <ChipInfo_MemorySize+0x2a>
30009652:	4298      	cmp	r0, r3
30009654:	d1f8      	bne.n	30009648 <ChipInfo_MemorySize+0x10>
30009656:	eb01 0141 	add.w	r1, r1, r1, lsl #1
3000965a:	eb04 0141 	add.w	r1, r4, r1, lsl #1
3000965e:	7908      	ldrb	r0, [r1, #4]
30009660:	bd10      	pop	{r4, pc}
30009662:	f7ff ff55 	bl	30009510 <ChipInfo_Invalid>
30009666:	bf00      	nop
30009668:	3000c750 	.word	0x3000c750
3000966c:	30009539 	.word	0x30009539

30009670 <ChipInfo_MemoryVendor>:
30009670:	b510      	push	{r4, lr}
30009672:	4c0f      	ldr	r4, [pc, #60]	; (300096b0 <ChipInfo_MemoryVendor+0x40>)
30009674:	47a0      	blx	r4
30009676:	2803      	cmp	r0, #3
30009678:	d016      	beq.n	300096a8 <ChipInfo_MemoryVendor+0x38>
3000967a:	47a0      	blx	r4
3000967c:	2802      	cmp	r0, #2
3000967e:	d012      	beq.n	300096a6 <ChipInfo_MemoryVendor+0x36>
30009680:	4c0c      	ldr	r4, [pc, #48]	; (300096b4 <ChipInfo_MemoryVendor+0x44>)
30009682:	4b0d      	ldr	r3, [pc, #52]	; (300096b8 <ChipInfo_MemoryVendor+0x48>)
30009684:	4798      	blx	r3
30009686:	2100      	movs	r1, #0
30009688:	2306      	movs	r3, #6
3000968a:	4622      	mov	r2, r4
3000968c:	e004      	b.n	30009698 <ChipInfo_MemoryVendor+0x28>
3000968e:	7a13      	ldrb	r3, [r2, #8]
30009690:	3101      	adds	r1, #1
30009692:	3206      	adds	r2, #6
30009694:	2bff      	cmp	r3, #255	; 0xff
30009696:	d009      	beq.n	300096ac <ChipInfo_MemoryVendor+0x3c>
30009698:	4298      	cmp	r0, r3
3000969a:	d1f8      	bne.n	3000968e <ChipInfo_MemoryVendor+0x1e>
3000969c:	eb01 0141 	add.w	r1, r1, r1, lsl #1
300096a0:	eb04 0141 	add.w	r1, r4, r1, lsl #1
300096a4:	7948      	ldrb	r0, [r1, #5]
300096a6:	bd10      	pop	{r4, pc}
300096a8:	2001      	movs	r0, #1
300096aa:	bd10      	pop	{r4, pc}
300096ac:	f7ff ff30 	bl	30009510 <ChipInfo_Invalid>
300096b0:	0000c0f9 	.word	0x0000c0f9
300096b4:	3000c750 	.word	0x3000c750
300096b8:	30009539 	.word	0x30009539

300096bc <print_unsigned_num>:
300096bc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
300096c0:	b089      	sub	sp, #36	; 0x24
300096c2:	4606      	mov	r6, r0
300096c4:	460d      	mov	r5, r1
300096c6:	4690      	mov	r8, r2
300096c8:	f10d 0a0c 	add.w	sl, sp, #12
300096cc:	469b      	mov	fp, r3
300096ce:	2400      	movs	r4, #0
300096d0:	9f13      	ldr	r7, [sp, #76]	; 0x4c
300096d2:	46d1      	mov	r9, sl
300096d4:	e00f      	b.n	300096f6 <print_unsigned_num+0x3a>
300096d6:	f10c 0357 	add.w	r3, ip, #87	; 0x57
300096da:	2f01      	cmp	r7, #1
300096dc:	b2db      	uxtb	r3, r3
300096de:	d018      	beq.n	30009712 <print_unsigned_num+0x56>
300096e0:	4546      	cmp	r6, r8
300096e2:	4606      	mov	r6, r0
300096e4:	f104 0201 	add.w	r2, r4, #1
300096e8:	f809 3b01 	strb.w	r3, [r9], #1
300096ec:	f175 0000 	sbcs.w	r0, r5, #0
300096f0:	460d      	mov	r5, r1
300096f2:	d312      	bcc.n	3000971a <print_unsigned_num+0x5e>
300096f4:	4614      	mov	r4, r2
300096f6:	4630      	mov	r0, r6
300096f8:	4629      	mov	r1, r5
300096fa:	4642      	mov	r2, r8
300096fc:	2300      	movs	r3, #0
300096fe:	f001 fe69 	bl	3000b3d4 <__aeabi_uldivmod>
30009702:	2a09      	cmp	r2, #9
30009704:	fa5f fc82 	uxtb.w	ip, r2
30009708:	f10c 0330 	add.w	r3, ip, #48	; 0x30
3000970c:	d8e3      	bhi.n	300096d6 <print_unsigned_num+0x1a>
3000970e:	b2db      	uxtb	r3, r3
30009710:	e7e6      	b.n	300096e0 <print_unsigned_num+0x24>
30009712:	f10c 0337 	add.w	r3, ip, #55	; 0x37
30009716:	b2db      	uxtb	r3, r3
30009718:	e7e2      	b.n	300096e0 <print_unsigned_num+0x24>
3000971a:	4617      	mov	r7, r2
3000971c:	9a14      	ldr	r2, [sp, #80]	; 0x50
3000971e:	b192      	cbz	r2, 30009746 <print_unsigned_num+0x8a>
30009720:	9a12      	ldr	r2, [sp, #72]	; 0x48
30009722:	f1bb 0f30 	cmp.w	fp, #48	; 0x30
30009726:	f102 32ff 	add.w	r2, r2, #4294967295	; 0xffffffff
3000972a:	9212      	str	r2, [sp, #72]	; 0x48
3000972c:	d136      	bne.n	3000979c <print_unsigned_num+0xe0>
3000972e:	202d      	movs	r0, #45	; 0x2d
30009730:	4d1f      	ldr	r5, [pc, #124]	; (300097b0 <print_unsigned_num+0xf4>)
30009732:	9301      	str	r3, [sp, #4]
30009734:	47a8      	blx	r5
30009736:	9b12      	ldr	r3, [sp, #72]	; 0x48
30009738:	2b00      	cmp	r3, #0
3000973a:	9b01      	ldr	r3, [sp, #4]
3000973c:	dd1f      	ble.n	3000977e <print_unsigned_num+0xc2>
3000973e:	9a12      	ldr	r2, [sp, #72]	; 0x48
30009740:	4297      	cmp	r7, r2
30009742:	db08      	blt.n	30009756 <print_unsigned_num+0x9a>
30009744:	e018      	b.n	30009778 <print_unsigned_num+0xbc>
30009746:	9a12      	ldr	r2, [sp, #72]	; 0x48
30009748:	2a00      	cmp	r2, #0
3000974a:	dd25      	ble.n	30009798 <print_unsigned_num+0xdc>
3000974c:	9912      	ldr	r1, [sp, #72]	; 0x48
3000974e:	9a14      	ldr	r2, [sp, #80]	; 0x50
30009750:	42b9      	cmp	r1, r7
30009752:	4d17      	ldr	r5, [pc, #92]	; (300097b0 <print_unsigned_num+0xf4>)
30009754:	dd0d      	ble.n	30009772 <print_unsigned_num+0xb6>
30009756:	9e12      	ldr	r6, [sp, #72]	; 0x48
30009758:	4698      	mov	r8, r3
3000975a:	3e01      	subs	r6, #1
3000975c:	4658      	mov	r0, fp
3000975e:	47a8      	blx	r5
30009760:	42b7      	cmp	r7, r6
30009762:	d1fa      	bne.n	3000975a <print_unsigned_num+0x9e>
30009764:	9912      	ldr	r1, [sp, #72]	; 0x48
30009766:	43fa      	mvns	r2, r7
30009768:	4643      	mov	r3, r8
3000976a:	440a      	add	r2, r1
3000976c:	9914      	ldr	r1, [sp, #80]	; 0x50
3000976e:	3101      	adds	r1, #1
30009770:	440a      	add	r2, r1
30009772:	9914      	ldr	r1, [sp, #80]	; 0x50
30009774:	9214      	str	r2, [sp, #80]	; 0x50
30009776:	b111      	cbz	r1, 3000977e <print_unsigned_num+0xc2>
30009778:	f01b 0fdf 	tst.w	fp, #223	; 0xdf
3000977c:	d013      	beq.n	300097a6 <print_unsigned_num+0xea>
3000977e:	4454      	add	r4, sl
30009780:	4618      	mov	r0, r3
30009782:	e001      	b.n	30009788 <print_unsigned_num+0xcc>
30009784:	f814 0d01 	ldrb.w	r0, [r4, #-1]!
30009788:	47a8      	blx	r5
3000978a:	45a2      	cmp	sl, r4
3000978c:	d1fa      	bne.n	30009784 <print_unsigned_num+0xc8>
3000978e:	9b14      	ldr	r3, [sp, #80]	; 0x50
30009790:	19d8      	adds	r0, r3, r7
30009792:	b009      	add	sp, #36	; 0x24
30009794:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30009798:	4d05      	ldr	r5, [pc, #20]	; (300097b0 <print_unsigned_num+0xf4>)
3000979a:	e7f0      	b.n	3000977e <print_unsigned_num+0xc2>
3000979c:	9a12      	ldr	r2, [sp, #72]	; 0x48
3000979e:	2a00      	cmp	r2, #0
300097a0:	dcd4      	bgt.n	3000974c <print_unsigned_num+0x90>
300097a2:	4d03      	ldr	r5, [pc, #12]	; (300097b0 <print_unsigned_num+0xf4>)
300097a4:	e7e8      	b.n	30009778 <print_unsigned_num+0xbc>
300097a6:	202d      	movs	r0, #45	; 0x2d
300097a8:	9301      	str	r3, [sp, #4]
300097aa:	47a8      	blx	r5
300097ac:	9b01      	ldr	r3, [sp, #4]
300097ae:	e7e6      	b.n	3000977e <print_unsigned_num+0xc2>
300097b0:	0000abb5 	.word	0x0000abb5

300097b4 <LOGUART_INTConfig>:
300097b4:	b570      	push	{r4, r5, r6, lr}
300097b6:	460c      	mov	r4, r1
300097b8:	4b10      	ldr	r3, [pc, #64]	; (300097fc <LOGUART_INTConfig+0x48>)
300097ba:	4615      	mov	r5, r2
300097bc:	4798      	blx	r3
300097be:	f404 63e0 	and.w	r3, r4, #1792	; 0x700
300097c2:	f404 62a0 	and.w	r2, r4, #1280	; 0x500
300097c6:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
300097ca:	bf18      	it	ne
300097cc:	f5b2 7f80 	cmpne.w	r2, #256	; 0x100
300097d0:	d002      	beq.n	300097d8 <LOGUART_INTConfig+0x24>
300097d2:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
300097d6:	d101      	bne.n	300097dc <LOGUART_INTConfig+0x28>
300097d8:	f420 60e0 	bic.w	r0, r0, #1792	; 0x700
300097dc:	2d01      	cmp	r5, #1
300097de:	d007      	beq.n	300097f0 <LOGUART_INTConfig+0x3c>
300097e0:	f424 64e0 	bic.w	r4, r4, #1792	; 0x700
300097e4:	4b06      	ldr	r3, [pc, #24]	; (30009800 <LOGUART_INTConfig+0x4c>)
300097e6:	ea20 0004 	bic.w	r0, r0, r4
300097ea:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
300097ee:	4718      	bx	r3
300097f0:	4320      	orrs	r0, r4
300097f2:	4b03      	ldr	r3, [pc, #12]	; (30009800 <LOGUART_INTConfig+0x4c>)
300097f4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
300097f8:	4718      	bx	r3
300097fa:	bf00      	nop
300097fc:	0000ac55 	.word	0x0000ac55
30009800:	0000ac61 	.word	0x0000ac61

30009804 <LOGUART_WaitTxComplete>:
30009804:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
30009806:	4c07      	ldr	r4, [pc, #28]	; (30009824 <LOGUART_WaitTxComplete+0x20>)
30009808:	4d07      	ldr	r5, [pc, #28]	; (30009828 <LOGUART_WaitTxComplete+0x24>)
3000980a:	6963      	ldr	r3, [r4, #20]
3000980c:	4e07      	ldr	r6, [pc, #28]	; (3000982c <LOGUART_WaitTxComplete+0x28>)
3000980e:	402b      	ands	r3, r5
30009810:	42b3      	cmp	r3, r6
30009812:	d006      	beq.n	30009822 <LOGUART_WaitTxComplete+0x1e>
30009814:	4f06      	ldr	r7, [pc, #24]	; (30009830 <LOGUART_WaitTxComplete+0x2c>)
30009816:	2001      	movs	r0, #1
30009818:	47b8      	blx	r7
3000981a:	6963      	ldr	r3, [r4, #20]
3000981c:	402b      	ands	r3, r5
3000981e:	42b3      	cmp	r3, r6
30009820:	d1f9      	bne.n	30009816 <LOGUART_WaitTxComplete+0x12>
30009822:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
30009824:	4200c000 	.word	0x4200c000
30009828:	000f0140 	.word	0x000f0140
3000982c:	000f0040 	.word	0x000f0040
30009830:	00009b2d 	.word	0x00009b2d

30009834 <CPU_ClkGet>:
30009834:	b570      	push	{r4, r5, r6, lr}
30009836:	4d1e      	ldr	r5, [pc, #120]	; (300098b0 <CPU_ClkGet+0x7c>)
30009838:	4b1e      	ldr	r3, [pc, #120]	; (300098b4 <CPU_ClkGet+0x80>)
3000983a:	f8d5 6224 	ldr.w	r6, [r5, #548]	; 0x224
3000983e:	f8d5 427c 	ldr.w	r4, [r5, #636]	; 0x27c
30009842:	f3c4 1481 	ubfx	r4, r4, #6, #2
30009846:	4798      	blx	r3
30009848:	b92c      	cbnz	r4, 30009856 <CPU_ClkGet+0x22>
3000984a:	2801      	cmp	r0, #1
3000984c:	d007      	beq.n	3000985e <CPU_ClkGet+0x2a>
3000984e:	07b2      	lsls	r2, r6, #30
30009850:	d407      	bmi.n	30009862 <CPU_ClkGet+0x2e>
30009852:	4819      	ldr	r0, [pc, #100]	; (300098b8 <CPU_ClkGet+0x84>)
30009854:	bd70      	pop	{r4, r5, r6, pc}
30009856:	2c01      	cmp	r4, #1
30009858:	d007      	beq.n	3000986a <CPU_ClkGet+0x36>
3000985a:	2000      	movs	r0, #0
3000985c:	bd70      	pop	{r4, r5, r6, pc}
3000985e:	4817      	ldr	r0, [pc, #92]	; (300098bc <CPU_ClkGet+0x88>)
30009860:	bd70      	pop	{r4, r5, r6, pc}
30009862:	4b17      	ldr	r3, [pc, #92]	; (300098c0 <CPU_ClkGet+0x8c>)
30009864:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
30009868:	4718      	bx	r3
3000986a:	2801      	cmp	r0, #1
3000986c:	d011      	beq.n	30009892 <CPU_ClkGet+0x5e>
3000986e:	05f3      	lsls	r3, r6, #23
30009870:	d51c      	bpl.n	300098ac <CPU_ClkGet+0x78>
30009872:	4914      	ldr	r1, [pc, #80]	; (300098c4 <CPU_ClkGet+0x90>)
30009874:	f8d5 3228 	ldr.w	r3, [r5, #552]	; 0x228
30009878:	6c48      	ldr	r0, [r1, #68]	; 0x44
3000987a:	4a13      	ldr	r2, [pc, #76]	; (300098c8 <CPU_ClkGet+0x94>)
3000987c:	f003 0307 	and.w	r3, r3, #7
30009880:	f3c0 1045 	ubfx	r0, r0, #5, #6
30009884:	3301      	adds	r3, #1
30009886:	3002      	adds	r0, #2
30009888:	fb02 f000 	mul.w	r0, r2, r0
3000988c:	fbb0 f0f3 	udiv	r0, r0, r3
30009890:	bd70      	pop	{r4, r5, r6, pc}
30009892:	f8d5 326c 	ldr.w	r3, [r5, #620]	; 0x26c
30009896:	f413 0f7f 	tst.w	r3, #16711680	; 0xff0000
3000989a:	f3c3 4007 	ubfx	r0, r3, #16, #8
3000989e:	d003      	beq.n	300098a8 <CPU_ClkGet+0x74>
300098a0:	4b0a      	ldr	r3, [pc, #40]	; (300098cc <CPU_ClkGet+0x98>)
300098a2:	fb03 f000 	mul.w	r0, r3, r0
300098a6:	bd70      	pop	{r4, r5, r6, pc}
300098a8:	4809      	ldr	r0, [pc, #36]	; (300098d0 <CPU_ClkGet+0x9c>)
300098aa:	bd70      	pop	{r4, r5, r6, pc}
300098ac:	4806      	ldr	r0, [pc, #24]	; (300098c8 <CPU_ClkGet+0x94>)
300098ae:	bd70      	pop	{r4, r5, r6, pc}
300098b0:	42008000 	.word	0x42008000
300098b4:	0000c0f9 	.word	0x0000c0f9
300098b8:	003d0900 	.word	0x003d0900
300098bc:	01312d00 	.word	0x01312d00
300098c0:	000099f5 	.word	0x000099f5
300098c4:	42008800 	.word	0x42008800
300098c8:	02625a00 	.word	0x02625a00
300098cc:	000f4240 	.word	0x000f4240
300098d0:	02faf080 	.word	0x02faf080

300098d4 <RSIP_IV_Set>:
300098d4:	4b05      	ldr	r3, [pc, #20]	; (300098ec <RSIP_IV_Set+0x18>)
300098d6:	eb03 00c0 	add.w	r0, r3, r0, lsl #3
300098da:	680b      	ldr	r3, [r1, #0]
300098dc:	ba1b      	rev	r3, r3
300098de:	f8c0 3084 	str.w	r3, [r0, #132]	; 0x84
300098e2:	684b      	ldr	r3, [r1, #4]
300098e4:	ba1b      	rev	r3, r3
300098e6:	f8c0 3080 	str.w	r3, [r0, #128]	; 0x80
300098ea:	4770      	bx	lr
300098ec:	42008c00 	.word	0x42008c00

300098f0 <RSIP_OTF_Cmd>:
300098f0:	4a04      	ldr	r2, [pc, #16]	; (30009904 <RSIP_OTF_Cmd+0x14>)
300098f2:	2801      	cmp	r0, #1
300098f4:	6953      	ldr	r3, [r2, #20]
300098f6:	bf0c      	ite	eq
300098f8:	f443 7380 	orreq.w	r3, r3, #256	; 0x100
300098fc:	f423 7380 	bicne.w	r3, r3, #256	; 0x100
30009900:	6153      	str	r3, [r2, #20]
30009902:	4770      	bx	lr
30009904:	42008c00 	.word	0x42008c00

30009908 <RSIP_MMU_Config>:
30009908:	eb00 0040 	add.w	r0, r0, r0, lsl #1
3000990c:	311f      	adds	r1, #31
3000990e:	321f      	adds	r2, #31
30009910:	331f      	adds	r3, #31
30009912:	0080      	lsls	r0, r0, #2
30009914:	0949      	lsrs	r1, r1, #5
30009916:	0952      	lsrs	r2, r2, #5
30009918:	095b      	lsrs	r3, r3, #5
3000991a:	0249      	lsls	r1, r1, #9
3000991c:	0252      	lsls	r2, r2, #9
3000991e:	025b      	lsls	r3, r3, #9
30009920:	b410      	push	{r4}
30009922:	4c08      	ldr	r4, [pc, #32]	; (30009944 <RSIP_MMU_Config+0x3c>)
30009924:	4404      	add	r4, r0
30009926:	f8d4 0108 	ldr.w	r0, [r4, #264]	; 0x108
3000992a:	f020 0001 	bic.w	r0, r0, #1
3000992e:	f8c4 0108 	str.w	r0, [r4, #264]	; 0x108
30009932:	f8c4 1100 	str.w	r1, [r4, #256]	; 0x100
30009936:	f8c4 2104 	str.w	r2, [r4, #260]	; 0x104
3000993a:	f8c4 3108 	str.w	r3, [r4, #264]	; 0x108
3000993e:	f85d 4b04 	ldr.w	r4, [sp], #4
30009942:	4770      	bx	lr
30009944:	42008c00 	.word	0x42008c00

30009948 <RSIP_MMU_Cmd>:
30009948:	eb00 0040 	add.w	r0, r0, r0, lsl #1
3000994c:	4b07      	ldr	r3, [pc, #28]	; (3000996c <RSIP_MMU_Cmd+0x24>)
3000994e:	0080      	lsls	r0, r0, #2
30009950:	4403      	add	r3, r0
30009952:	f8d3 2108 	ldr.w	r2, [r3, #264]	; 0x108
30009956:	b121      	cbz	r1, 30009962 <RSIP_MMU_Cmd+0x1a>
30009958:	f042 0201 	orr.w	r2, r2, #1
3000995c:	f8c3 2108 	str.w	r2, [r3, #264]	; 0x108
30009960:	4770      	bx	lr
30009962:	f022 0201 	bic.w	r2, r2, #1
30009966:	f8c3 2108 	str.w	r2, [r3, #264]	; 0x108
3000996a:	4770      	bx	lr
3000996c:	42008c00 	.word	0x42008c00

30009970 <RSIP_MMU_Cache_Clean>:
30009970:	4a02      	ldr	r2, [pc, #8]	; (3000997c <RSIP_MMU_Cache_Clean+0xc>)
30009972:	6993      	ldr	r3, [r2, #24]
30009974:	f043 0304 	orr.w	r3, r3, #4
30009978:	6193      	str	r3, [r2, #24]
3000997a:	4770      	bx	lr
3000997c:	42008c00 	.word	0x42008c00

30009980 <NAND_RxData>:
30009980:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
30009984:	460c      	mov	r4, r1
30009986:	4616      	mov	r6, r2
30009988:	461f      	mov	r7, r3
3000998a:	2800      	cmp	r0, #0
3000998c:	f000 8087 	beq.w	30009a9e <NAND_RxData+0x11e>
30009990:	4605      	mov	r5, r0
30009992:	f8df 9118 	ldr.w	r9, [pc, #280]	; 30009aac <NAND_RxData+0x12c>
30009996:	2000      	movs	r0, #0
30009998:	f8df 8114 	ldr.w	r8, [pc, #276]	; 30009ab0 <NAND_RxData+0x130>
3000999c:	47c0      	blx	r8
3000999e:	f04f 4388 	mov.w	r3, #1140850688	; 0x44000000
300099a2:	f026 427f 	bic.w	r2, r6, #4278190080	; 0xff000000
300099a6:	2000      	movs	r0, #0
300099a8:	6819      	ldr	r1, [r3, #0]
300099aa:	f041 4100 	orr.w	r1, r1, #2147483648	; 0x80000000
300099ae:	6019      	str	r1, [r3, #0]
300099b0:	6819      	ldr	r1, [r3, #0]
300099b2:	f441 7140 	orr.w	r1, r1, #768	; 0x300
300099b6:	6019      	str	r1, [r3, #0]
300099b8:	605a      	str	r2, [r3, #4]
300099ba:	f8c3 0130 	str.w	r0, [r3, #304]	; 0x130
300099be:	f899 c062 	ldrb.w	ip, [r9, #98]	; 0x62
300099c2:	f8d3 1118 	ldr.w	r1, [r3, #280]	; 0x118
300099c6:	ea4f 420c 	mov.w	r2, ip, lsl #16
300099ca:	f1bc 0f03 	cmp.w	ip, #3
300099ce:	f421 2170 	bic.w	r1, r1, #983040	; 0xf0000
300099d2:	f402 2270 	and.w	r2, r2, #983040	; 0xf0000
300099d6:	ea42 0201 	orr.w	r2, r2, r1
300099da:	f8c3 2118 	str.w	r2, [r3, #280]	; 0x118
300099de:	f04f 0201 	mov.w	r2, #1
300099e2:	611a      	str	r2, [r3, #16]
300099e4:	f04f 4288 	mov.w	r2, #1140850688	; 0x44000000
300099e8:	f883 5060 	strb.w	r5, [r3, #96]	; 0x60
300099ec:	bf08      	it	eq
300099ee:	f883 0060 	strbeq.w	r0, [r3, #96]	; 0x60
300099f2:	f3c4 2307 	ubfx	r3, r4, #8, #8
300099f6:	b2e4      	uxtb	r4, r4
300099f8:	f882 3060 	strb.w	r3, [r2, #96]	; 0x60
300099fc:	2301      	movs	r3, #1
300099fe:	f882 4060 	strb.w	r4, [r2, #96]	; 0x60
30009a02:	f017 0403 	ands.w	r4, r7, #3
30009a06:	6093      	str	r3, [r2, #8]
30009a08:	d137      	bne.n	30009a7a <NAND_RxData+0xfa>
30009a0a:	463b      	mov	r3, r7
30009a0c:	f04f 4e88 	mov.w	lr, #1140850688	; 0x44000000
30009a10:	42b4      	cmp	r4, r6
30009a12:	d216      	bcs.n	30009a42 <NAND_RxData+0xc2>
30009a14:	f8de 2024 	ldr.w	r2, [lr, #36]	; 0x24
30009a18:	f012 0f3c 	tst.w	r2, #60	; 0x3c
30009a1c:	f3c2 0583 	ubfx	r5, r2, #2, #4
30009a20:	d00c      	beq.n	30009a3c <NAND_RxData+0xbc>
30009a22:	00ad      	lsls	r5, r5, #2
30009a24:	1f19      	subs	r1, r3, #4
30009a26:	f1a5 0c04 	sub.w	ip, r5, #4
30009a2a:	449c      	add	ip, r3
30009a2c:	f8de 0060 	ldr.w	r0, [lr, #96]	; 0x60
30009a30:	f841 0f04 	str.w	r0, [r1, #4]!
30009a34:	458c      	cmp	ip, r1
30009a36:	d1f9      	bne.n	30009a2c <NAND_RxData+0xac>
30009a38:	442b      	add	r3, r5
30009a3a:	442c      	add	r4, r5
30009a3c:	1b32      	subs	r2, r6, r4
30009a3e:	2a03      	cmp	r2, #3
30009a40:	d8e6      	bhi.n	30009a10 <NAND_RxData+0x90>
30009a42:	1e63      	subs	r3, r4, #1
30009a44:	f04f 4288 	mov.w	r2, #1140850688	; 0x44000000
30009a48:	441f      	add	r7, r3
30009a4a:	e002      	b.n	30009a52 <NAND_RxData+0xd2>
30009a4c:	6a93      	ldr	r3, [r2, #40]	; 0x28
30009a4e:	071b      	lsls	r3, r3, #28
30009a50:	d40d      	bmi.n	30009a6e <NAND_RxData+0xee>
30009a52:	42b4      	cmp	r4, r6
30009a54:	d3fa      	bcc.n	30009a4c <NAND_RxData+0xcc>
30009a56:	2004      	movs	r0, #4
30009a58:	47c0      	blx	r8
30009a5a:	2000      	movs	r0, #0
30009a5c:	47c0      	blx	r8
30009a5e:	f04f 4288 	mov.w	r2, #1140850688	; 0x44000000
30009a62:	6813      	ldr	r3, [r2, #0]
30009a64:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
30009a68:	6013      	str	r3, [r2, #0]
30009a6a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
30009a6e:	f892 3060 	ldrb.w	r3, [r2, #96]	; 0x60
30009a72:	3401      	adds	r4, #1
30009a74:	f807 3f01 	strb.w	r3, [r7, #1]!
30009a78:	e7eb      	b.n	30009a52 <NAND_RxData+0xd2>
30009a7a:	f1c4 0004 	rsb	r0, r4, #4
30009a7e:	463b      	mov	r3, r7
30009a80:	2400      	movs	r4, #0
30009a82:	e009      	b.n	30009a98 <NAND_RxData+0x118>
30009a84:	6a91      	ldr	r1, [r2, #40]	; 0x28
30009a86:	0709      	lsls	r1, r1, #28
30009a88:	d504      	bpl.n	30009a94 <NAND_RxData+0x114>
30009a8a:	f892 1060 	ldrb.w	r1, [r2, #96]	; 0x60
30009a8e:	3401      	adds	r4, #1
30009a90:	7019      	strb	r1, [r3, #0]
30009a92:	193b      	adds	r3, r7, r4
30009a94:	42a0      	cmp	r0, r4
30009a96:	d007      	beq.n	30009aa8 <NAND_RxData+0x128>
30009a98:	42b4      	cmp	r4, r6
30009a9a:	d3f3      	bcc.n	30009a84 <NAND_RxData+0x104>
30009a9c:	e7d1      	b.n	30009a42 <NAND_RxData+0xc2>
30009a9e:	f8df 900c 	ldr.w	r9, [pc, #12]	; 30009aac <NAND_RxData+0x12c>
30009aa2:	f899 5008 	ldrb.w	r5, [r9, #8]
30009aa6:	e776      	b.n	30009996 <NAND_RxData+0x16>
30009aa8:	4604      	mov	r4, r0
30009aaa:	e7af      	b.n	30009a0c <NAND_RxData+0x8c>
30009aac:	2001c01c 	.word	0x2001c01c
30009ab0:	0000b9c1 	.word	0x0000b9c1

30009ab4 <NAND_Page_Read>:
30009ab4:	b530      	push	{r4, r5, lr}
30009ab6:	b085      	sub	sp, #20
30009ab8:	4c07      	ldr	r4, [pc, #28]	; (30009ad8 <NAND_Page_Read+0x24>)
30009aba:	4d08      	ldr	r5, [pc, #32]	; (30009adc <NAND_Page_Read+0x28>)
30009abc:	9301      	str	r3, [sp, #4]
30009abe:	e9cd 2102 	strd	r2, r1, [sp, #8]
30009ac2:	47a0      	blx	r4
30009ac4:	4604      	mov	r4, r0
30009ac6:	9903      	ldr	r1, [sp, #12]
30009ac8:	7a28      	ldrb	r0, [r5, #8]
30009aca:	4d05      	ldr	r5, [pc, #20]	; (30009ae0 <NAND_Page_Read+0x2c>)
30009acc:	e9dd 3201 	ldrd	r3, r2, [sp, #4]
30009ad0:	47a8      	blx	r5
30009ad2:	4620      	mov	r0, r4
30009ad4:	b005      	add	sp, #20
30009ad6:	bd30      	pop	{r4, r5, pc}
30009ad8:	0000bd85 	.word	0x0000bd85
30009adc:	2001c01c 	.word	0x2001c01c
30009ae0:	30009981 	.word	0x30009981

30009ae4 <SYSCFG_BootFromNor>:
30009ae4:	4b0e      	ldr	r3, [pc, #56]	; (30009b20 <SYSCFG_BootFromNor+0x3c>)
30009ae6:	b510      	push	{r4, lr}
30009ae8:	f8d3 227c 	ldr.w	r2, [r3, #636]	; 0x27c
30009aec:	f8d3 3280 	ldr.w	r3, [r3, #640]	; 0x280
30009af0:	0392      	lsls	r2, r2, #14
30009af2:	d50a      	bpl.n	30009b0a <SYSCFG_BootFromNor+0x26>
30009af4:	f003 4370 	and.w	r3, r3, #4026531840	; 0xf0000000
30009af8:	f1b3 4f60 	cmp.w	r3, #3758096384	; 0xe0000000
30009afc:	d105      	bne.n	30009b0a <SYSCFG_BootFromNor+0x26>
30009afe:	4b09      	ldr	r3, [pc, #36]	; (30009b24 <SYSCFG_BootFromNor+0x40>)
30009b00:	4798      	blx	r3
30009b02:	3800      	subs	r0, #0
30009b04:	bf18      	it	ne
30009b06:	2001      	movne	r0, #1
30009b08:	bd10      	pop	{r4, pc}
30009b0a:	4c07      	ldr	r4, [pc, #28]	; (30009b28 <SYSCFG_BootFromNor+0x44>)
30009b0c:	47a0      	blx	r4
30009b0e:	2802      	cmp	r0, #2
30009b10:	d004      	beq.n	30009b1c <SYSCFG_BootFromNor+0x38>
30009b12:	47a0      	blx	r4
30009b14:	2801      	cmp	r0, #1
30009b16:	d1f2      	bne.n	30009afe <SYSCFG_BootFromNor+0x1a>
30009b18:	2000      	movs	r0, #0
30009b1a:	bd10      	pop	{r4, pc}
30009b1c:	2001      	movs	r0, #1
30009b1e:	bd10      	pop	{r4, pc}
30009b20:	42008000 	.word	0x42008000
30009b24:	0000c0bd 	.word	0x0000c0bd
30009b28:	0000c1a9 	.word	0x0000c1a9

30009b2c <SYSCFG_RLVersion>:
30009b2c:	4b07      	ldr	r3, [pc, #28]	; (30009b4c <SYSCFG_RLVersion+0x20>)
30009b2e:	f8d3 2274 	ldr.w	r2, [r3, #628]	; 0x274
30009b32:	f022 4270 	bic.w	r2, r2, #4026531840	; 0xf0000000
30009b36:	f042 4120 	orr.w	r1, r2, #2684354560	; 0xa0000000
30009b3a:	f8c3 1274 	str.w	r1, [r3, #628]	; 0x274
30009b3e:	f8d3 0274 	ldr.w	r0, [r3, #628]	; 0x274
30009b42:	f8c3 2274 	str.w	r2, [r3, #628]	; 0x274
30009b46:	f3c0 4003 	ubfx	r0, r0, #16, #4
30009b4a:	4770      	bx	lr
30009b4c:	42008000 	.word	0x42008000

30009b50 <DiagVprintf>:
30009b50:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30009b54:	4604      	mov	r4, r0
30009b56:	7800      	ldrb	r0, [r0, #0]
30009b58:	b089      	sub	sp, #36	; 0x24
30009b5a:	2800      	cmp	r0, #0
30009b5c:	f000 82ab 	beq.w	3000a0b6 <DiagVprintf+0x566>
30009b60:	f04f 0a00 	mov.w	sl, #0
30009b64:	4688      	mov	r8, r1
30009b66:	4f89      	ldr	r7, [pc, #548]	; (30009d8c <DiagVprintf+0x23c>)
30009b68:	4655      	mov	r5, sl
30009b6a:	f8cd a010 	str.w	sl, [sp, #16]
30009b6e:	e005      	b.n	30009b7c <DiagVprintf+0x2c>
30009b70:	3501      	adds	r5, #1
30009b72:	47b8      	blx	r7
30009b74:	7820      	ldrb	r0, [r4, #0]
30009b76:	2800      	cmp	r0, #0
30009b78:	f000 808b 	beq.w	30009c92 <DiagVprintf+0x142>
30009b7c:	2825      	cmp	r0, #37	; 0x25
30009b7e:	f104 0401 	add.w	r4, r4, #1
30009b82:	d1f5      	bne.n	30009b70 <DiagVprintf+0x20>
30009b84:	f04f 0a00 	mov.w	sl, #0
30009b88:	4656      	mov	r6, sl
30009b8a:	46d1      	mov	r9, sl
30009b8c:	46d4      	mov	ip, sl
30009b8e:	7823      	ldrb	r3, [r4, #0]
30009b90:	2b7a      	cmp	r3, #122	; 0x7a
30009b92:	d87c      	bhi.n	30009c8e <DiagVprintf+0x13e>
30009b94:	e8df f013 	tbh	[pc, r3, lsl #1]
30009b98:	007b00af 	.word	0x007b00af
30009b9c:	007b007b 	.word	0x007b007b
30009ba0:	007b007b 	.word	0x007b007b
30009ba4:	007b007b 	.word	0x007b007b
30009ba8:	007b007b 	.word	0x007b007b
30009bac:	007b007b 	.word	0x007b007b
30009bb0:	007b007b 	.word	0x007b007b
30009bb4:	007b007b 	.word	0x007b007b
30009bb8:	007b007b 	.word	0x007b007b
30009bbc:	007b007b 	.word	0x007b007b
30009bc0:	007b007b 	.word	0x007b007b
30009bc4:	007b007b 	.word	0x007b007b
30009bc8:	007b007b 	.word	0x007b007b
30009bcc:	007b007b 	.word	0x007b007b
30009bd0:	007b007b 	.word	0x007b007b
30009bd4:	007b007b 	.word	0x007b007b
30009bd8:	007b00c4 	.word	0x007b00c4
30009bdc:	007b007b 	.word	0x007b007b
30009be0:	01af007b 	.word	0x01af007b
30009be4:	007b007b 	.word	0x007b007b
30009be8:	007b007b 	.word	0x007b007b
30009bec:	007b007b 	.word	0x007b007b
30009bf0:	01ab007b 	.word	0x01ab007b
30009bf4:	007b007b 	.word	0x007b007b
30009bf8:	00b100c4 	.word	0x00b100c4
30009bfc:	00b100b1 	.word	0x00b100b1
30009c00:	00b100b1 	.word	0x00b100b1
30009c04:	00b100b1 	.word	0x00b100b1
30009c08:	00b100b1 	.word	0x00b100b1
30009c0c:	007b007b 	.word	0x007b007b
30009c10:	007b007b 	.word	0x007b007b
30009c14:	007b007b 	.word	0x007b007b
30009c18:	007b007b 	.word	0x007b007b
30009c1c:	012c014f 	.word	0x012c014f
30009c20:	007b007b 	.word	0x007b007b
30009c24:	007b007b 	.word	0x007b007b
30009c28:	007b007b 	.word	0x007b007b
30009c2c:	007b007b 	.word	0x007b007b
30009c30:	007b0128 	.word	0x007b0128
30009c34:	00fc007b 	.word	0x00fc007b
30009c38:	007b007b 	.word	0x007b007b
30009c3c:	007b007b 	.word	0x007b007b
30009c40:	007b007b 	.word	0x007b007b
30009c44:	007b007b 	.word	0x007b007b
30009c48:	007b0081 	.word	0x007b0081
30009c4c:	007b007b 	.word	0x007b007b
30009c50:	007b007b 	.word	0x007b007b
30009c54:	007b007b 	.word	0x007b007b
30009c58:	007b007b 	.word	0x007b007b
30009c5c:	012c014f 	.word	0x012c014f
30009c60:	007b00ca 	.word	0x007b00ca
30009c64:	007b007b 	.word	0x007b007b
30009c68:	00ca007b 	.word	0x00ca007b
30009c6c:	007b007b 	.word	0x007b007b
30009c70:	007b0128 	.word	0x007b0128
30009c74:	00fc007b 	.word	0x00fc007b
30009c78:	007b01e6 	.word	0x007b01e6
30009c7c:	01b4007b 	.word	0x01b4007b
30009c80:	017d007b 	.word	0x017d007b
30009c84:	007b007b 	.word	0x007b007b
30009c88:	007b0083 	.word	0x007b0083
30009c8c:	012a      	.short	0x012a
30009c8e:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
30009c92:	4628      	mov	r0, r5
30009c94:	b009      	add	sp, #36	; 0x24
30009c96:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30009c9a:	2301      	movs	r3, #1
30009c9c:	9304      	str	r3, [sp, #16]
30009c9e:	f1bc 0f01 	cmp.w	ip, #1
30009ca2:	f340 81d4 	ble.w	3000a04e <DiagVprintf+0x4fe>
30009ca6:	f108 0807 	add.w	r8, r8, #7
30009caa:	f028 0807 	bic.w	r8, r8, #7
30009cae:	f8d8 1004 	ldr.w	r1, [r8, #4]
30009cb2:	f858 0b08 	ldr.w	r0, [r8], #8
30009cb6:	f1ba 0f00 	cmp.w	sl, #0
30009cba:	f000 8168 	beq.w	30009f8e <DiagVprintf+0x43e>
30009cbe:	2300      	movs	r3, #0
30009cc0:	2210      	movs	r2, #16
30009cc2:	9302      	str	r3, [sp, #8]
30009cc4:	9b04      	ldr	r3, [sp, #16]
30009cc6:	9301      	str	r3, [sp, #4]
30009cc8:	2300      	movs	r3, #0
30009cca:	9300      	str	r3, [sp, #0]
30009ccc:	464b      	mov	r3, r9
30009cce:	f7ff fcf5 	bl	300096bc <print_unsigned_num>
30009cd2:	4286      	cmp	r6, r0
30009cd4:	dd0e      	ble.n	30009cf4 <DiagVprintf+0x1a4>
30009cd6:	f1b9 0f20 	cmp.w	r9, #32
30009cda:	d10b      	bne.n	30009cf4 <DiagVprintf+0x1a4>
30009cdc:	eba6 0900 	sub.w	r9, r6, r0
30009ce0:	f1b9 0f00 	cmp.w	r9, #0
30009ce4:	f340 81e4 	ble.w	3000a0b0 <DiagVprintf+0x560>
30009ce8:	2020      	movs	r0, #32
30009cea:	47b8      	blx	r7
30009cec:	f1b9 0901 	subs.w	r9, r9, #1
30009cf0:	d1fa      	bne.n	30009ce8 <DiagVprintf+0x198>
30009cf2:	4630      	mov	r0, r6
30009cf4:	4405      	add	r5, r0
30009cf6:	3401      	adds	r4, #1
30009cf8:	e73c      	b.n	30009b74 <DiagVprintf+0x24>
30009cfa:	f04f 0920 	mov.w	r9, #32
30009cfe:	2600      	movs	r6, #0
30009d00:	e005      	b.n	30009d0e <DiagVprintf+0x1be>
30009d02:	f814 3f01 	ldrb.w	r3, [r4, #1]!
30009d06:	f1a2 0630 	sub.w	r6, r2, #48	; 0x30
30009d0a:	2b00      	cmp	r3, #0
30009d0c:	d0c1      	beq.n	30009c92 <DiagVprintf+0x142>
30009d0e:	f1a3 0130 	sub.w	r1, r3, #48	; 0x30
30009d12:	eb06 0286 	add.w	r2, r6, r6, lsl #2
30009d16:	2909      	cmp	r1, #9
30009d18:	eb03 0242 	add.w	r2, r3, r2, lsl #1
30009d1c:	d9f1      	bls.n	30009d02 <DiagVprintf+0x1b2>
30009d1e:	e736      	b.n	30009b8e <DiagVprintf+0x3e>
30009d20:	3401      	adds	r4, #1
30009d22:	4699      	mov	r9, r3
30009d24:	7823      	ldrb	r3, [r4, #0]
30009d26:	2b00      	cmp	r3, #0
30009d28:	d1e9      	bne.n	30009cfe <DiagVprintf+0x1ae>
30009d2a:	e7b2      	b.n	30009c92 <DiagVprintf+0x142>
30009d2c:	f1bc 0f01 	cmp.w	ip, #1
30009d30:	f340 8186 	ble.w	3000a040 <DiagVprintf+0x4f0>
30009d34:	f108 0807 	add.w	r8, r8, #7
30009d38:	f028 0807 	bic.w	r8, r8, #7
30009d3c:	f8d8 1004 	ldr.w	r1, [r8, #4]
30009d40:	f858 0b08 	ldr.w	r0, [r8], #8
30009d44:	2900      	cmp	r1, #0
30009d46:	f2c0 8189 	blt.w	3000a05c <DiagVprintf+0x50c>
30009d4a:	2200      	movs	r2, #0
30009d4c:	9202      	str	r2, [sp, #8]
30009d4e:	f1ba 0f00 	cmp.w	sl, #0
30009d52:	f000 816c 	beq.w	3000a02e <DiagVprintf+0x4de>
30009d56:	9b04      	ldr	r3, [sp, #16]
30009d58:	220a      	movs	r2, #10
30009d5a:	9301      	str	r3, [sp, #4]
30009d5c:	2300      	movs	r3, #0
30009d5e:	9300      	str	r3, [sp, #0]
30009d60:	464b      	mov	r3, r9
30009d62:	f7ff fcab 	bl	300096bc <print_unsigned_num>
30009d66:	4286      	cmp	r6, r0
30009d68:	ddc4      	ble.n	30009cf4 <DiagVprintf+0x1a4>
30009d6a:	f1b9 0f20 	cmp.w	r9, #32
30009d6e:	d1c1      	bne.n	30009cf4 <DiagVprintf+0x1a4>
30009d70:	eba6 0900 	sub.w	r9, r6, r0
30009d74:	f1b9 0f00 	cmp.w	r9, #0
30009d78:	f340 819a 	ble.w	3000a0b0 <DiagVprintf+0x560>
30009d7c:	2020      	movs	r0, #32
30009d7e:	47b8      	blx	r7
30009d80:	f1b9 0901 	subs.w	r9, r9, #1
30009d84:	d1fa      	bne.n	30009d7c <DiagVprintf+0x22c>
30009d86:	4630      	mov	r0, r6
30009d88:	e7b4      	b.n	30009cf4 <DiagVprintf+0x1a4>
30009d8a:	bf00      	nop
30009d8c:	0000abb5 	.word	0x0000abb5
30009d90:	f1bc 0f01 	cmp.w	ip, #1
30009d94:	f340 811e 	ble.w	30009fd4 <DiagVprintf+0x484>
30009d98:	f108 0807 	add.w	r8, r8, #7
30009d9c:	f028 0807 	bic.w	r8, r8, #7
30009da0:	f8d8 1004 	ldr.w	r1, [r8, #4]
30009da4:	f858 0b08 	ldr.w	r0, [r8], #8
30009da8:	f1ba 0f00 	cmp.w	sl, #0
30009dac:	f000 8119 	beq.w	30009fe2 <DiagVprintf+0x492>
30009db0:	2300      	movs	r3, #0
30009db2:	2208      	movs	r2, #8
30009db4:	9302      	str	r3, [sp, #8]
30009db6:	9b04      	ldr	r3, [sp, #16]
30009db8:	9301      	str	r3, [sp, #4]
30009dba:	2300      	movs	r3, #0
30009dbc:	9300      	str	r3, [sp, #0]
30009dbe:	464b      	mov	r3, r9
30009dc0:	f7ff fc7c 	bl	300096bc <print_unsigned_num>
30009dc4:	4286      	cmp	r6, r0
30009dc6:	dd95      	ble.n	30009cf4 <DiagVprintf+0x1a4>
30009dc8:	f1b9 0f20 	cmp.w	r9, #32
30009dcc:	d192      	bne.n	30009cf4 <DiagVprintf+0x1a4>
30009dce:	eba6 0900 	sub.w	r9, r6, r0
30009dd2:	f1b9 0f00 	cmp.w	r9, #0
30009dd6:	f340 816b 	ble.w	3000a0b0 <DiagVprintf+0x560>
30009dda:	2020      	movs	r0, #32
30009ddc:	47b8      	blx	r7
30009dde:	f1b9 0901 	subs.w	r9, r9, #1
30009de2:	d1fa      	bne.n	30009dda <DiagVprintf+0x28a>
30009de4:	4630      	mov	r0, r6
30009de6:	e785      	b.n	30009cf4 <DiagVprintf+0x1a4>
30009de8:	f10c 0c01 	add.w	ip, ip, #1
30009dec:	3401      	adds	r4, #1
30009dee:	e6ce      	b.n	30009b8e <DiagVprintf+0x3e>
30009df0:	2e01      	cmp	r6, #1
30009df2:	f858 1b04 	ldr.w	r1, [r8], #4
30009df6:	bfd4      	ite	le
30009df8:	2200      	movle	r2, #0
30009dfa:	2201      	movgt	r2, #1
30009dfc:	fa5f fb81 	uxtb.w	fp, r1
30009e00:	f1ba 0f00 	cmp.w	sl, #0
30009e04:	d102      	bne.n	30009e0c <DiagVprintf+0x2bc>
30009e06:	2a00      	cmp	r2, #0
30009e08:	f040 812e 	bne.w	3000a068 <DiagVprintf+0x518>
30009e0c:	4658      	mov	r0, fp
30009e0e:	9205      	str	r2, [sp, #20]
30009e10:	47b8      	blx	r7
30009e12:	1c69      	adds	r1, r5, #1
30009e14:	f1ba 0f00 	cmp.w	sl, #0
30009e18:	f000 811d 	beq.w	3000a056 <DiagVprintf+0x506>
30009e1c:	9a05      	ldr	r2, [sp, #20]
30009e1e:	2a00      	cmp	r2, #0
30009e20:	f000 8119 	beq.w	3000a056 <DiagVprintf+0x506>
30009e24:	f106 3bff 	add.w	fp, r6, #4294967295	; 0xffffffff
30009e28:	4648      	mov	r0, r9
30009e2a:	47b8      	blx	r7
30009e2c:	f1bb 0b01 	subs.w	fp, fp, #1
30009e30:	d1fa      	bne.n	30009e28 <DiagVprintf+0x2d8>
30009e32:	4435      	add	r5, r6
30009e34:	e75f      	b.n	30009cf6 <DiagVprintf+0x1a6>
30009e36:	f1bc 0f01 	cmp.w	ip, #1
30009e3a:	f340 80dd 	ble.w	30009ff8 <DiagVprintf+0x4a8>
30009e3e:	f108 0807 	add.w	r8, r8, #7
30009e42:	f028 0807 	bic.w	r8, r8, #7
30009e46:	f8d8 1004 	ldr.w	r1, [r8, #4]
30009e4a:	f858 0b08 	ldr.w	r0, [r8], #8
30009e4e:	f1ba 0f00 	cmp.w	sl, #0
30009e52:	f000 80d8 	beq.w	3000a006 <DiagVprintf+0x4b6>
30009e56:	2300      	movs	r3, #0
30009e58:	2202      	movs	r2, #2
30009e5a:	9302      	str	r3, [sp, #8]
30009e5c:	9b04      	ldr	r3, [sp, #16]
30009e5e:	9301      	str	r3, [sp, #4]
30009e60:	2300      	movs	r3, #0
30009e62:	9300      	str	r3, [sp, #0]
30009e64:	464b      	mov	r3, r9
30009e66:	f7ff fc29 	bl	300096bc <print_unsigned_num>
30009e6a:	4286      	cmp	r6, r0
30009e6c:	f77f af42 	ble.w	30009cf4 <DiagVprintf+0x1a4>
30009e70:	f1b9 0f20 	cmp.w	r9, #32
30009e74:	f47f af3e 	bne.w	30009cf4 <DiagVprintf+0x1a4>
30009e78:	eba6 0900 	sub.w	r9, r6, r0
30009e7c:	f1b9 0f00 	cmp.w	r9, #0
30009e80:	f340 8116 	ble.w	3000a0b0 <DiagVprintf+0x560>
30009e84:	2020      	movs	r0, #32
30009e86:	47b8      	blx	r7
30009e88:	f1b9 0901 	subs.w	r9, r9, #1
30009e8c:	d1fa      	bne.n	30009e84 <DiagVprintf+0x334>
30009e8e:	4630      	mov	r0, r6
30009e90:	e730      	b.n	30009cf4 <DiagVprintf+0x1a4>
30009e92:	f1bc 0f01 	cmp.w	ip, #1
30009e96:	f340 80c1 	ble.w	3000a01c <DiagVprintf+0x4cc>
30009e9a:	f108 0807 	add.w	r8, r8, #7
30009e9e:	f028 0807 	bic.w	r8, r8, #7
30009ea2:	f8d8 1004 	ldr.w	r1, [r8, #4]
30009ea6:	f858 0b08 	ldr.w	r0, [r8], #8
30009eaa:	f1ba 0f00 	cmp.w	sl, #0
30009eae:	f000 80bc 	beq.w	3000a02a <DiagVprintf+0x4da>
30009eb2:	2300      	movs	r3, #0
30009eb4:	220a      	movs	r2, #10
30009eb6:	9302      	str	r3, [sp, #8]
30009eb8:	9b04      	ldr	r3, [sp, #16]
30009eba:	9301      	str	r3, [sp, #4]
30009ebc:	2300      	movs	r3, #0
30009ebe:	9300      	str	r3, [sp, #0]
30009ec0:	464b      	mov	r3, r9
30009ec2:	f7ff fbfb 	bl	300096bc <print_unsigned_num>
30009ec6:	4286      	cmp	r6, r0
30009ec8:	f77f af14 	ble.w	30009cf4 <DiagVprintf+0x1a4>
30009ecc:	f1b9 0f20 	cmp.w	r9, #32
30009ed0:	f47f af10 	bne.w	30009cf4 <DiagVprintf+0x1a4>
30009ed4:	eba6 0900 	sub.w	r9, r6, r0
30009ed8:	f1b9 0f00 	cmp.w	r9, #0
30009edc:	f340 80e8 	ble.w	3000a0b0 <DiagVprintf+0x560>
30009ee0:	2020      	movs	r0, #32
30009ee2:	47b8      	blx	r7
30009ee4:	f1b9 0901 	subs.w	r9, r9, #1
30009ee8:	d1fa      	bne.n	30009ee0 <DiagVprintf+0x390>
30009eea:	4630      	mov	r0, r6
30009eec:	e702      	b.n	30009cf4 <DiagVprintf+0x1a4>
30009eee:	3401      	adds	r4, #1
30009ef0:	f10a 0a01 	add.w	sl, sl, #1
30009ef4:	e64b      	b.n	30009b8e <DiagVprintf+0x3e>
30009ef6:	2025      	movs	r0, #37	; 0x25
30009ef8:	3501      	adds	r5, #1
30009efa:	3401      	adds	r4, #1
30009efc:	47b8      	blx	r7
30009efe:	e639      	b.n	30009b74 <DiagVprintf+0x24>
30009f00:	4643      	mov	r3, r8
30009f02:	f853 2b04 	ldr.w	r2, [r3], #4
30009f06:	7810      	ldrb	r0, [r2, #0]
30009f08:	9305      	str	r3, [sp, #20]
30009f0a:	2800      	cmp	r0, #0
30009f0c:	f000 80d5 	beq.w	3000a0ba <DiagVprintf+0x56a>
30009f10:	4694      	mov	ip, r2
30009f12:	f1c2 0801 	rsb	r8, r2, #1
30009f16:	eb08 010c 	add.w	r1, r8, ip
30009f1a:	f81c 3f01 	ldrb.w	r3, [ip, #1]!
30009f1e:	2b00      	cmp	r3, #0
30009f20:	d1f9      	bne.n	30009f16 <DiagVprintf+0x3c6>
30009f22:	9106      	str	r1, [sp, #24]
30009f24:	f1ba 0f00 	cmp.w	sl, #0
30009f28:	d03c      	beq.n	30009fa4 <DiagVprintf+0x454>
30009f2a:	2a00      	cmp	r2, #0
30009f2c:	f000 80cb 	beq.w	3000a0c6 <DiagVprintf+0x576>
30009f30:	b168      	cbz	r0, 30009f4e <DiagVprintf+0x3fe>
30009f32:	4693      	mov	fp, r2
30009f34:	f1c2 0801 	rsb	r8, r2, #1
30009f38:	47b8      	blx	r7
30009f3a:	eb0b 0c08 	add.w	ip, fp, r8
30009f3e:	f81b 0f01 	ldrb.w	r0, [fp, #1]!
30009f42:	2800      	cmp	r0, #0
30009f44:	d1f8      	bne.n	30009f38 <DiagVprintf+0x3e8>
30009f46:	4465      	add	r5, ip
30009f48:	f1ba 0f00 	cmp.w	sl, #0
30009f4c:	d006      	beq.n	30009f5c <DiagVprintf+0x40c>
30009f4e:	9b06      	ldr	r3, [sp, #24]
30009f50:	eba6 0b03 	sub.w	fp, r6, r3
30009f54:	f1bb 0f00 	cmp.w	fp, #0
30009f58:	f300 80a1 	bgt.w	3000a09e <DiagVprintf+0x54e>
30009f5c:	f8dd 8014 	ldr.w	r8, [sp, #20]
30009f60:	3401      	adds	r4, #1
30009f62:	e607      	b.n	30009b74 <DiagVprintf+0x24>
30009f64:	f858 0b04 	ldr.w	r0, [r8], #4
30009f68:	f1ba 0f00 	cmp.w	sl, #0
30009f6c:	d127      	bne.n	30009fbe <DiagVprintf+0x46e>
30009f6e:	2308      	movs	r3, #8
30009f70:	2201      	movs	r2, #1
30009f72:	4651      	mov	r1, sl
30009f74:	f8cd a008 	str.w	sl, [sp, #8]
30009f78:	e9cd 3200 	strd	r3, r2, [sp]
30009f7c:	2330      	movs	r3, #48	; 0x30
30009f7e:	2210      	movs	r2, #16
30009f80:	f7ff fb9c 	bl	300096bc <print_unsigned_num>
30009f84:	2301      	movs	r3, #1
30009f86:	4405      	add	r5, r0
30009f88:	3401      	adds	r4, #1
30009f8a:	9304      	str	r3, [sp, #16]
30009f8c:	e5f2      	b.n	30009b74 <DiagVprintf+0x24>
30009f8e:	9a04      	ldr	r2, [sp, #16]
30009f90:	464b      	mov	r3, r9
30009f92:	f8cd a008 	str.w	sl, [sp, #8]
30009f96:	9201      	str	r2, [sp, #4]
30009f98:	2210      	movs	r2, #16
30009f9a:	9600      	str	r6, [sp, #0]
30009f9c:	f7ff fb8e 	bl	300096bc <print_unsigned_num>
30009fa0:	4405      	add	r5, r0
30009fa2:	e6a8      	b.n	30009cf6 <DiagVprintf+0x1a6>
30009fa4:	9b06      	ldr	r3, [sp, #24]
30009fa6:	eba6 0803 	sub.w	r8, r6, r3
30009faa:	f1b8 0f00 	cmp.w	r8, #0
30009fae:	dc66      	bgt.n	3000a07e <DiagVprintf+0x52e>
30009fb0:	2a00      	cmp	r2, #0
30009fb2:	f000 808a 	beq.w	3000a0ca <DiagVprintf+0x57a>
30009fb6:	7810      	ldrb	r0, [r2, #0]
30009fb8:	2800      	cmp	r0, #0
30009fba:	d1ba      	bne.n	30009f32 <DiagVprintf+0x3e2>
30009fbc:	e7ce      	b.n	30009f5c <DiagVprintf+0x40c>
30009fbe:	2300      	movs	r3, #0
30009fc0:	2210      	movs	r2, #16
30009fc2:	2100      	movs	r1, #0
30009fc4:	9302      	str	r3, [sp, #8]
30009fc6:	9300      	str	r3, [sp, #0]
30009fc8:	2301      	movs	r3, #1
30009fca:	9301      	str	r3, [sp, #4]
30009fcc:	2330      	movs	r3, #48	; 0x30
30009fce:	f7ff fb75 	bl	300096bc <print_unsigned_num>
30009fd2:	e7d7      	b.n	30009f84 <DiagVprintf+0x434>
30009fd4:	f858 0b04 	ldr.w	r0, [r8], #4
30009fd8:	2100      	movs	r1, #0
30009fda:	f1ba 0f00 	cmp.w	sl, #0
30009fde:	f47f aee7 	bne.w	30009db0 <DiagVprintf+0x260>
30009fe2:	9a04      	ldr	r2, [sp, #16]
30009fe4:	464b      	mov	r3, r9
30009fe6:	f8cd a008 	str.w	sl, [sp, #8]
30009fea:	9201      	str	r2, [sp, #4]
30009fec:	2208      	movs	r2, #8
30009fee:	9600      	str	r6, [sp, #0]
30009ff0:	f7ff fb64 	bl	300096bc <print_unsigned_num>
30009ff4:	4405      	add	r5, r0
30009ff6:	e67e      	b.n	30009cf6 <DiagVprintf+0x1a6>
30009ff8:	f858 0b04 	ldr.w	r0, [r8], #4
30009ffc:	2100      	movs	r1, #0
30009ffe:	f1ba 0f00 	cmp.w	sl, #0
3000a002:	f47f af28 	bne.w	30009e56 <DiagVprintf+0x306>
3000a006:	9a04      	ldr	r2, [sp, #16]
3000a008:	464b      	mov	r3, r9
3000a00a:	f8cd a008 	str.w	sl, [sp, #8]
3000a00e:	9201      	str	r2, [sp, #4]
3000a010:	2202      	movs	r2, #2
3000a012:	9600      	str	r6, [sp, #0]
3000a014:	f7ff fb52 	bl	300096bc <print_unsigned_num>
3000a018:	4405      	add	r5, r0
3000a01a:	e66c      	b.n	30009cf6 <DiagVprintf+0x1a6>
3000a01c:	f858 0b04 	ldr.w	r0, [r8], #4
3000a020:	2100      	movs	r1, #0
3000a022:	f1ba 0f00 	cmp.w	sl, #0
3000a026:	f47f af44 	bne.w	30009eb2 <DiagVprintf+0x362>
3000a02a:	f8cd a008 	str.w	sl, [sp, #8]
3000a02e:	9a04      	ldr	r2, [sp, #16]
3000a030:	464b      	mov	r3, r9
3000a032:	9600      	str	r6, [sp, #0]
3000a034:	9201      	str	r2, [sp, #4]
3000a036:	220a      	movs	r2, #10
3000a038:	f7ff fb40 	bl	300096bc <print_unsigned_num>
3000a03c:	4405      	add	r5, r0
3000a03e:	e65a      	b.n	30009cf6 <DiagVprintf+0x1a6>
3000a040:	f8d8 0000 	ldr.w	r0, [r8]
3000a044:	f108 0204 	add.w	r2, r8, #4
3000a048:	17c1      	asrs	r1, r0, #31
3000a04a:	4690      	mov	r8, r2
3000a04c:	e67a      	b.n	30009d44 <DiagVprintf+0x1f4>
3000a04e:	f858 0b04 	ldr.w	r0, [r8], #4
3000a052:	2100      	movs	r1, #0
3000a054:	e62f      	b.n	30009cb6 <DiagVprintf+0x166>
3000a056:	460d      	mov	r5, r1
3000a058:	3401      	adds	r4, #1
3000a05a:	e58b      	b.n	30009b74 <DiagVprintf+0x24>
3000a05c:	4240      	negs	r0, r0
3000a05e:	f04f 0201 	mov.w	r2, #1
3000a062:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
3000a066:	e671      	b.n	30009d4c <DiagVprintf+0x1fc>
3000a068:	f106 3aff 	add.w	sl, r6, #4294967295	; 0xffffffff
3000a06c:	4648      	mov	r0, r9
3000a06e:	47b8      	blx	r7
3000a070:	f1ba 0a01 	subs.w	sl, sl, #1
3000a074:	d1fa      	bne.n	3000a06c <DiagVprintf+0x51c>
3000a076:	4658      	mov	r0, fp
3000a078:	4435      	add	r5, r6
3000a07a:	47b8      	blx	r7
3000a07c:	e63b      	b.n	30009cf6 <DiagVprintf+0x1a6>
3000a07e:	4623      	mov	r3, r4
3000a080:	46c3      	mov	fp, r8
3000a082:	464c      	mov	r4, r9
3000a084:	9207      	str	r2, [sp, #28]
3000a086:	4699      	mov	r9, r3
3000a088:	4620      	mov	r0, r4
3000a08a:	47b8      	blx	r7
3000a08c:	f1bb 0b01 	subs.w	fp, fp, #1
3000a090:	d1fa      	bne.n	3000a088 <DiagVprintf+0x538>
3000a092:	464b      	mov	r3, r9
3000a094:	9a07      	ldr	r2, [sp, #28]
3000a096:	46a1      	mov	r9, r4
3000a098:	4445      	add	r5, r8
3000a09a:	461c      	mov	r4, r3
3000a09c:	e788      	b.n	30009fb0 <DiagVprintf+0x460>
3000a09e:	465e      	mov	r6, fp
3000a0a0:	4648      	mov	r0, r9
3000a0a2:	47b8      	blx	r7
3000a0a4:	3e01      	subs	r6, #1
3000a0a6:	d1fb      	bne.n	3000a0a0 <DiagVprintf+0x550>
3000a0a8:	445d      	add	r5, fp
3000a0aa:	f8dd 8014 	ldr.w	r8, [sp, #20]
3000a0ae:	e622      	b.n	30009cf6 <DiagVprintf+0x1a6>
3000a0b0:	4606      	mov	r6, r0
3000a0b2:	4630      	mov	r0, r6
3000a0b4:	e61e      	b.n	30009cf4 <DiagVprintf+0x1a4>
3000a0b6:	4605      	mov	r5, r0
3000a0b8:	e5eb      	b.n	30009c92 <DiagVprintf+0x142>
3000a0ba:	9006      	str	r0, [sp, #24]
3000a0bc:	f1ba 0f00 	cmp.w	sl, #0
3000a0c0:	f47f af33 	bne.w	30009f2a <DiagVprintf+0x3da>
3000a0c4:	e76e      	b.n	30009fa4 <DiagVprintf+0x454>
3000a0c6:	3d01      	subs	r5, #1
3000a0c8:	e741      	b.n	30009f4e <DiagVprintf+0x3fe>
3000a0ca:	3d01      	subs	r5, #1
3000a0cc:	e746      	b.n	30009f5c <DiagVprintf+0x40c>
3000a0ce:	bf00      	nop

3000a0d0 <DiagPrintf>:
3000a0d0:	b40f      	push	{r0, r1, r2, r3}
3000a0d2:	b500      	push	{lr}
3000a0d4:	b083      	sub	sp, #12
3000a0d6:	a904      	add	r1, sp, #16
3000a0d8:	f851 0b04 	ldr.w	r0, [r1], #4
3000a0dc:	9101      	str	r1, [sp, #4]
3000a0de:	f7ff fd37 	bl	30009b50 <DiagVprintf>
3000a0e2:	b003      	add	sp, #12
3000a0e4:	f85d eb04 	ldr.w	lr, [sp], #4
3000a0e8:	b004      	add	sp, #16
3000a0ea:	4770      	bx	lr

3000a0ec <DiagVprintfNano>:
3000a0ec:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
3000a0f0:	4604      	mov	r4, r0
3000a0f2:	7800      	ldrb	r0, [r0, #0]
3000a0f4:	b089      	sub	sp, #36	; 0x24
3000a0f6:	2800      	cmp	r0, #0
3000a0f8:	f000 81d9 	beq.w	3000a4ae <DiagVprintfNano+0x3c2>
3000a0fc:	468b      	mov	fp, r1
3000a0fe:	f04f 0800 	mov.w	r8, #0
3000a102:	4fa4      	ldr	r7, [pc, #656]	; (3000a394 <DiagVprintfNano+0x2a8>)
3000a104:	e005      	b.n	3000a112 <DiagVprintfNano+0x26>
3000a106:	f108 0801 	add.w	r8, r8, #1
3000a10a:	47b8      	blx	r7
3000a10c:	7820      	ldrb	r0, [r4, #0]
3000a10e:	2800      	cmp	r0, #0
3000a110:	d06d      	beq.n	3000a1ee <DiagVprintfNano+0x102>
3000a112:	2825      	cmp	r0, #37	; 0x25
3000a114:	f104 0401 	add.w	r4, r4, #1
3000a118:	d1f5      	bne.n	3000a106 <DiagVprintfNano+0x1a>
3000a11a:	2500      	movs	r5, #0
3000a11c:	7821      	ldrb	r1, [r4, #0]
3000a11e:	462a      	mov	r2, r5
3000a120:	2900      	cmp	r1, #0
3000a122:	f000 8081 	beq.w	3000a228 <DiagVprintfNano+0x13c>
3000a126:	f1a1 0320 	sub.w	r3, r1, #32
3000a12a:	b2d8      	uxtb	r0, r3
3000a12c:	2858      	cmp	r0, #88	; 0x58
3000a12e:	d85c      	bhi.n	3000a1ea <DiagVprintfNano+0xfe>
3000a130:	2b58      	cmp	r3, #88	; 0x58
3000a132:	d85a      	bhi.n	3000a1ea <DiagVprintfNano+0xfe>
3000a134:	e8df f013 	tbh	[pc, r3, lsl #1]
3000a138:	0059005f 	.word	0x0059005f
3000a13c:	00590059 	.word	0x00590059
3000a140:	01270059 	.word	0x01270059
3000a144:	00590059 	.word	0x00590059
3000a148:	00590059 	.word	0x00590059
3000a14c:	00590059 	.word	0x00590059
3000a150:	00590059 	.word	0x00590059
3000a154:	00590059 	.word	0x00590059
3000a158:	007a005f 	.word	0x007a005f
3000a15c:	007a007a 	.word	0x007a007a
3000a160:	007a007a 	.word	0x007a007a
3000a164:	007a007a 	.word	0x007a007a
3000a168:	007a007a 	.word	0x007a007a
3000a16c:	00590059 	.word	0x00590059
3000a170:	00590059 	.word	0x00590059
3000a174:	00590059 	.word	0x00590059
3000a178:	00590059 	.word	0x00590059
3000a17c:	00db0059 	.word	0x00db0059
3000a180:	00590059 	.word	0x00590059
3000a184:	00590059 	.word	0x00590059
3000a188:	00590059 	.word	0x00590059
3000a18c:	00590059 	.word	0x00590059
3000a190:	00590059 	.word	0x00590059
3000a194:	00590059 	.word	0x00590059
3000a198:	00590059 	.word	0x00590059
3000a19c:	00590059 	.word	0x00590059
3000a1a0:	00590059 	.word	0x00590059
3000a1a4:	00590059 	.word	0x00590059
3000a1a8:	00590059 	.word	0x00590059
3000a1ac:	00590059 	.word	0x00590059
3000a1b0:	00590059 	.word	0x00590059
3000a1b4:	00590059 	.word	0x00590059
3000a1b8:	00590059 	.word	0x00590059
3000a1bc:	00db0059 	.word	0x00db0059
3000a1c0:	0059007c 	.word	0x0059007c
3000a1c4:	00590059 	.word	0x00590059
3000a1c8:	007c0059 	.word	0x007c0059
3000a1cc:	00590059 	.word	0x00590059
3000a1d0:	00590059 	.word	0x00590059
3000a1d4:	00590059 	.word	0x00590059
3000a1d8:	00590059 	.word	0x00590059
3000a1dc:	01720059 	.word	0x01720059
3000a1e0:	01320059 	.word	0x01320059
3000a1e4:	00590059 	.word	0x00590059
3000a1e8:	00e8      	.short	0x00e8
3000a1ea:	f04f 38ff 	mov.w	r8, #4294967295	; 0xffffffff
3000a1ee:	4640      	mov	r0, r8
3000a1f0:	b009      	add	sp, #36	; 0x24
3000a1f2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
3000a1f6:	3401      	adds	r4, #1
3000a1f8:	460a      	mov	r2, r1
3000a1fa:	7821      	ldrb	r1, [r4, #0]
3000a1fc:	2900      	cmp	r1, #0
3000a1fe:	d0f6      	beq.n	3000a1ee <DiagVprintfNano+0x102>
3000a200:	2500      	movs	r5, #0
3000a202:	e005      	b.n	3000a210 <DiagVprintfNano+0x124>
3000a204:	f814 1f01 	ldrb.w	r1, [r4, #1]!
3000a208:	f1a3 0530 	sub.w	r5, r3, #48	; 0x30
3000a20c:	2900      	cmp	r1, #0
3000a20e:	d0ee      	beq.n	3000a1ee <DiagVprintfNano+0x102>
3000a210:	f1a1 0030 	sub.w	r0, r1, #48	; 0x30
3000a214:	eb05 0385 	add.w	r3, r5, r5, lsl #2
3000a218:	2809      	cmp	r0, #9
3000a21a:	eb01 0343 	add.w	r3, r1, r3, lsl #1
3000a21e:	d9f1      	bls.n	3000a204 <DiagVprintfNano+0x118>
3000a220:	7821      	ldrb	r1, [r4, #0]
3000a222:	2900      	cmp	r1, #0
3000a224:	f47f af7f 	bne.w	3000a126 <DiagVprintfNano+0x3a>
3000a228:	3401      	adds	r4, #1
3000a22a:	e76f      	b.n	3000a10c <DiagVprintfNano+0x20>
3000a22c:	2220      	movs	r2, #32
3000a22e:	e7e7      	b.n	3000a200 <DiagVprintfNano+0x114>
3000a230:	4659      	mov	r1, fp
3000a232:	f851 3b04 	ldr.w	r3, [r1], #4
3000a236:	2b00      	cmp	r3, #0
3000a238:	9101      	str	r1, [sp, #4]
3000a23a:	f2c0 8116 	blt.w	3000a46a <DiagVprintfNano+0x37e>
3000a23e:	2100      	movs	r1, #0
3000a240:	9100      	str	r1, [sp, #0]
3000a242:	f10d 0914 	add.w	r9, sp, #20
3000a246:	f04f 0b00 	mov.w	fp, #0
3000a24a:	f8df c14c 	ldr.w	ip, [pc, #332]	; 3000a398 <DiagVprintfNano+0x2ac>
3000a24e:	4649      	mov	r1, r9
3000a250:	fbac 0e03 	umull	r0, lr, ip, r3
3000a254:	4618      	mov	r0, r3
3000a256:	46da      	mov	sl, fp
3000a258:	f10b 0b01 	add.w	fp, fp, #1
3000a25c:	ea4f 0ede 	mov.w	lr, lr, lsr #3
3000a260:	2809      	cmp	r0, #9
3000a262:	eb0e 068e 	add.w	r6, lr, lr, lsl #2
3000a266:	eba3 0646 	sub.w	r6, r3, r6, lsl #1
3000a26a:	4673      	mov	r3, lr
3000a26c:	f106 0630 	add.w	r6, r6, #48	; 0x30
3000a270:	b2f6      	uxtb	r6, r6
3000a272:	f801 6b01 	strb.w	r6, [r1], #1
3000a276:	d8eb      	bhi.n	3000a250 <DiagVprintfNano+0x164>
3000a278:	9b00      	ldr	r3, [sp, #0]
3000a27a:	2b00      	cmp	r3, #0
3000a27c:	f000 810c 	beq.w	3000a498 <DiagVprintfNano+0x3ac>
3000a280:	2a30      	cmp	r2, #48	; 0x30
3000a282:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
3000a286:	f040 810e 	bne.w	3000a4a6 <DiagVprintfNano+0x3ba>
3000a28a:	202d      	movs	r0, #45	; 0x2d
3000a28c:	9202      	str	r2, [sp, #8]
3000a28e:	47b8      	blx	r7
3000a290:	2d00      	cmp	r5, #0
3000a292:	9a02      	ldr	r2, [sp, #8]
3000a294:	dd19      	ble.n	3000a2ca <DiagVprintfNano+0x1de>
3000a296:	45ab      	cmp	fp, r5
3000a298:	da12      	bge.n	3000a2c0 <DiagVprintfNano+0x1d4>
3000a29a:	9403      	str	r4, [sp, #12]
3000a29c:	4614      	mov	r4, r2
3000a29e:	9502      	str	r5, [sp, #8]
3000a2a0:	3d01      	subs	r5, #1
3000a2a2:	4620      	mov	r0, r4
3000a2a4:	47b8      	blx	r7
3000a2a6:	45ab      	cmp	fp, r5
3000a2a8:	d1fa      	bne.n	3000a2a0 <DiagVprintfNano+0x1b4>
3000a2aa:	9800      	ldr	r0, [sp, #0]
3000a2ac:	ea6f 030b 	mvn.w	r3, fp
3000a2b0:	9d02      	ldr	r5, [sp, #8]
3000a2b2:	4622      	mov	r2, r4
3000a2b4:	1c41      	adds	r1, r0, #1
3000a2b6:	9c03      	ldr	r4, [sp, #12]
3000a2b8:	442b      	add	r3, r5
3000a2ba:	440b      	add	r3, r1
3000a2bc:	9300      	str	r3, [sp, #0]
3000a2be:	b120      	cbz	r0, 3000a2ca <DiagVprintfNano+0x1de>
3000a2c0:	f012 0fdf 	tst.w	r2, #223	; 0xdf
3000a2c4:	d101      	bne.n	3000a2ca <DiagVprintfNano+0x1de>
3000a2c6:	202d      	movs	r0, #45	; 0x2d
3000a2c8:	47b8      	blx	r7
3000a2ca:	eb09 050a 	add.w	r5, r9, sl
3000a2ce:	4630      	mov	r0, r6
3000a2d0:	e001      	b.n	3000a2d6 <DiagVprintfNano+0x1ea>
3000a2d2:	f815 0d01 	ldrb.w	r0, [r5, #-1]!
3000a2d6:	47b8      	blx	r7
3000a2d8:	45a9      	cmp	r9, r5
3000a2da:	d1fa      	bne.n	3000a2d2 <DiagVprintfNano+0x1e6>
3000a2dc:	f108 0801 	add.w	r8, r8, #1
3000a2e0:	3401      	adds	r4, #1
3000a2e2:	44d0      	add	r8, sl
3000a2e4:	e9dd 3b00 	ldrd	r3, fp, [sp]
3000a2e8:	4443      	add	r3, r8
3000a2ea:	4698      	mov	r8, r3
3000a2ec:	e70e      	b.n	3000a10c <DiagVprintfNano+0x20>
3000a2ee:	f85b 3b04 	ldr.w	r3, [fp], #4
3000a2f2:	2d01      	cmp	r5, #1
3000a2f4:	fa5f f983 	uxtb.w	r9, r3
3000a2f8:	f300 80bb 	bgt.w	3000a472 <DiagVprintfNano+0x386>
3000a2fc:	4648      	mov	r0, r9
3000a2fe:	f108 0801 	add.w	r8, r8, #1
3000a302:	3401      	adds	r4, #1
3000a304:	47b8      	blx	r7
3000a306:	e701      	b.n	3000a10c <DiagVprintfNano+0x20>
3000a308:	4659      	mov	r1, fp
3000a30a:	f10d 0914 	add.w	r9, sp, #20
3000a30e:	2600      	movs	r6, #0
3000a310:	f851 3b04 	ldr.w	r3, [r1], #4
3000a314:	4648      	mov	r0, r9
3000a316:	9100      	str	r1, [sp, #0]
3000a318:	e000      	b.n	3000a31c <DiagVprintfNano+0x230>
3000a31a:	465e      	mov	r6, fp
3000a31c:	f003 010f 	and.w	r1, r3, #15
3000a320:	f106 0b01 	add.w	fp, r6, #1
3000a324:	2909      	cmp	r1, #9
3000a326:	f101 0a57 	add.w	sl, r1, #87	; 0x57
3000a32a:	bf98      	it	ls
3000a32c:	f101 0a30 	addls.w	sl, r1, #48	; 0x30
3000a330:	0919      	lsrs	r1, r3, #4
3000a332:	2b0f      	cmp	r3, #15
3000a334:	f800 ab01 	strb.w	sl, [r0], #1
3000a338:	460b      	mov	r3, r1
3000a33a:	d8ee      	bhi.n	3000a31a <DiagVprintfNano+0x22e>
3000a33c:	2d00      	cmp	r5, #0
3000a33e:	f340 808f 	ble.w	3000a460 <DiagVprintfNano+0x374>
3000a342:	455d      	cmp	r5, fp
3000a344:	f340 808c 	ble.w	3000a460 <DiagVprintfNano+0x374>
3000a348:	9402      	str	r4, [sp, #8]
3000a34a:	4614      	mov	r4, r2
3000a34c:	9501      	str	r5, [sp, #4]
3000a34e:	3d01      	subs	r5, #1
3000a350:	4620      	mov	r0, r4
3000a352:	47b8      	blx	r7
3000a354:	45ab      	cmp	fp, r5
3000a356:	d1fa      	bne.n	3000a34e <DiagVprintfNano+0x262>
3000a358:	e9dd 5401 	ldrd	r5, r4, [sp, #4]
3000a35c:	eba5 030b 	sub.w	r3, r5, fp
3000a360:	9301      	str	r3, [sp, #4]
3000a362:	eb09 0506 	add.w	r5, r9, r6
3000a366:	4650      	mov	r0, sl
3000a368:	e001      	b.n	3000a36e <DiagVprintfNano+0x282>
3000a36a:	f815 0d01 	ldrb.w	r0, [r5, #-1]!
3000a36e:	47b8      	blx	r7
3000a370:	454d      	cmp	r5, r9
3000a372:	d1fa      	bne.n	3000a36a <DiagVprintfNano+0x27e>
3000a374:	f108 0801 	add.w	r8, r8, #1
3000a378:	3401      	adds	r4, #1
3000a37a:	44b0      	add	r8, r6
3000a37c:	e9dd b300 	ldrd	fp, r3, [sp]
3000a380:	4443      	add	r3, r8
3000a382:	4698      	mov	r8, r3
3000a384:	e6c2      	b.n	3000a10c <DiagVprintfNano+0x20>
3000a386:	2025      	movs	r0, #37	; 0x25
3000a388:	f108 0801 	add.w	r8, r8, #1
3000a38c:	3401      	adds	r4, #1
3000a38e:	47b8      	blx	r7
3000a390:	e6bc      	b.n	3000a10c <DiagVprintfNano+0x20>
3000a392:	bf00      	nop
3000a394:	0000abb5 	.word	0x0000abb5
3000a398:	cccccccd 	.word	0xcccccccd
3000a39c:	4659      	mov	r1, fp
3000a39e:	f10d 0914 	add.w	r9, sp, #20
3000a3a2:	f04f 0b00 	mov.w	fp, #0
3000a3a6:	f8df c110 	ldr.w	ip, [pc, #272]	; 3000a4b8 <DiagVprintfNano+0x3cc>
3000a3aa:	f851 3b04 	ldr.w	r3, [r1], #4
3000a3ae:	9100      	str	r1, [sp, #0]
3000a3b0:	4649      	mov	r1, r9
3000a3b2:	fbac 0e03 	umull	r0, lr, ip, r3
3000a3b6:	4618      	mov	r0, r3
3000a3b8:	46da      	mov	sl, fp
3000a3ba:	f10b 0b01 	add.w	fp, fp, #1
3000a3be:	ea4f 0ede 	mov.w	lr, lr, lsr #3
3000a3c2:	2809      	cmp	r0, #9
3000a3c4:	eb0e 068e 	add.w	r6, lr, lr, lsl #2
3000a3c8:	eba3 0646 	sub.w	r6, r3, r6, lsl #1
3000a3cc:	4673      	mov	r3, lr
3000a3ce:	f106 0630 	add.w	r6, r6, #48	; 0x30
3000a3d2:	b2f6      	uxtb	r6, r6
3000a3d4:	f801 6b01 	strb.w	r6, [r1], #1
3000a3d8:	d8eb      	bhi.n	3000a3b2 <DiagVprintfNano+0x2c6>
3000a3da:	2d00      	cmp	r5, #0
3000a3dc:	dd43      	ble.n	3000a466 <DiagVprintfNano+0x37a>
3000a3de:	455d      	cmp	r5, fp
3000a3e0:	dd41      	ble.n	3000a466 <DiagVprintfNano+0x37a>
3000a3e2:	9402      	str	r4, [sp, #8]
3000a3e4:	4614      	mov	r4, r2
3000a3e6:	9501      	str	r5, [sp, #4]
3000a3e8:	3d01      	subs	r5, #1
3000a3ea:	4620      	mov	r0, r4
3000a3ec:	47b8      	blx	r7
3000a3ee:	45ab      	cmp	fp, r5
3000a3f0:	d1fa      	bne.n	3000a3e8 <DiagVprintfNano+0x2fc>
3000a3f2:	e9dd 5401 	ldrd	r5, r4, [sp, #4]
3000a3f6:	eba5 050b 	sub.w	r5, r5, fp
3000a3fa:	eb09 0b0a 	add.w	fp, r9, sl
3000a3fe:	4630      	mov	r0, r6
3000a400:	e001      	b.n	3000a406 <DiagVprintfNano+0x31a>
3000a402:	f81b 0d01 	ldrb.w	r0, [fp, #-1]!
3000a406:	47b8      	blx	r7
3000a408:	45d9      	cmp	r9, fp
3000a40a:	d1fa      	bne.n	3000a402 <DiagVprintfNano+0x316>
3000a40c:	f108 0801 	add.w	r8, r8, #1
3000a410:	f8dd b000 	ldr.w	fp, [sp]
3000a414:	3401      	adds	r4, #1
3000a416:	44d0      	add	r8, sl
3000a418:	44a8      	add	r8, r5
3000a41a:	e677      	b.n	3000a10c <DiagVprintfNano+0x20>
3000a41c:	f85b 6b04 	ldr.w	r6, [fp], #4
3000a420:	7833      	ldrb	r3, [r6, #0]
3000a422:	b14b      	cbz	r3, 3000a438 <DiagVprintfNano+0x34c>
3000a424:	4633      	mov	r3, r6
3000a426:	f1c6 0901 	rsb	r9, r6, #1
3000a42a:	eb09 0003 	add.w	r0, r9, r3
3000a42e:	f813 1f01 	ldrb.w	r1, [r3, #1]!
3000a432:	2900      	cmp	r1, #0
3000a434:	d1f9      	bne.n	3000a42a <DiagVprintfNano+0x33e>
3000a436:	1a2d      	subs	r5, r5, r0
3000a438:	2d00      	cmp	r5, #0
3000a43a:	dc24      	bgt.n	3000a486 <DiagVprintfNano+0x39a>
3000a43c:	2e00      	cmp	r6, #0
3000a43e:	d038      	beq.n	3000a4b2 <DiagVprintfNano+0x3c6>
3000a440:	7830      	ldrb	r0, [r6, #0]
3000a442:	2800      	cmp	r0, #0
3000a444:	f43f aef0 	beq.w	3000a228 <DiagVprintfNano+0x13c>
3000a448:	f1c6 0901 	rsb	r9, r6, #1
3000a44c:	47b8      	blx	r7
3000a44e:	eb06 0309 	add.w	r3, r6, r9
3000a452:	f816 0f01 	ldrb.w	r0, [r6, #1]!
3000a456:	2800      	cmp	r0, #0
3000a458:	d1f8      	bne.n	3000a44c <DiagVprintfNano+0x360>
3000a45a:	4498      	add	r8, r3
3000a45c:	3401      	adds	r4, #1
3000a45e:	e655      	b.n	3000a10c <DiagVprintfNano+0x20>
3000a460:	2300      	movs	r3, #0
3000a462:	9301      	str	r3, [sp, #4]
3000a464:	e77d      	b.n	3000a362 <DiagVprintfNano+0x276>
3000a466:	2500      	movs	r5, #0
3000a468:	e7c7      	b.n	3000a3fa <DiagVprintfNano+0x30e>
3000a46a:	2101      	movs	r1, #1
3000a46c:	425b      	negs	r3, r3
3000a46e:	9100      	str	r1, [sp, #0]
3000a470:	e6e7      	b.n	3000a242 <DiagVprintfNano+0x156>
3000a472:	1e6e      	subs	r6, r5, #1
3000a474:	4692      	mov	sl, r2
3000a476:	4650      	mov	r0, sl
3000a478:	47b8      	blx	r7
3000a47a:	3e01      	subs	r6, #1
3000a47c:	d1fb      	bne.n	3000a476 <DiagVprintfNano+0x38a>
3000a47e:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
3000a482:	44a8      	add	r8, r5
3000a484:	e73a      	b.n	3000a2fc <DiagVprintfNano+0x210>
3000a486:	46a9      	mov	r9, r5
3000a488:	4692      	mov	sl, r2
3000a48a:	4650      	mov	r0, sl
3000a48c:	47b8      	blx	r7
3000a48e:	f1b9 0901 	subs.w	r9, r9, #1
3000a492:	d1fa      	bne.n	3000a48a <DiagVprintfNano+0x39e>
3000a494:	44a8      	add	r8, r5
3000a496:	e7d1      	b.n	3000a43c <DiagVprintfNano+0x350>
3000a498:	2d00      	cmp	r5, #0
3000a49a:	f77f af16 	ble.w	3000a2ca <DiagVprintfNano+0x1de>
3000a49e:	455d      	cmp	r5, fp
3000a4a0:	f73f aefb 	bgt.w	3000a29a <DiagVprintfNano+0x1ae>
3000a4a4:	e711      	b.n	3000a2ca <DiagVprintfNano+0x1de>
3000a4a6:	2d00      	cmp	r5, #0
3000a4a8:	f73f aef5 	bgt.w	3000a296 <DiagVprintfNano+0x1aa>
3000a4ac:	e708      	b.n	3000a2c0 <DiagVprintfNano+0x1d4>
3000a4ae:	4680      	mov	r8, r0
3000a4b0:	e69d      	b.n	3000a1ee <DiagVprintfNano+0x102>
3000a4b2:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
3000a4b6:	e6b7      	b.n	3000a228 <DiagVprintfNano+0x13c>
3000a4b8:	cccccccd 	.word	0xcccccccd

3000a4bc <DiagPrintfNano>:
3000a4bc:	b40f      	push	{r0, r1, r2, r3}
3000a4be:	b500      	push	{lr}
3000a4c0:	b083      	sub	sp, #12
3000a4c2:	a904      	add	r1, sp, #16
3000a4c4:	f851 0b04 	ldr.w	r0, [r1], #4
3000a4c8:	9101      	str	r1, [sp, #4]
3000a4ca:	f7ff fe0f 	bl	3000a0ec <DiagVprintfNano>
3000a4ce:	b003      	add	sp, #12
3000a4d0:	f85d eb04 	ldr.w	lr, [sp], #4
3000a4d4:	b004      	add	sp, #16
3000a4d6:	4770      	bx	lr

3000a4d8 <io_assert_failed>:
3000a4d8:	460c      	mov	r4, r1
3000a4da:	4b05      	ldr	r3, [pc, #20]	; (3000a4f0 <io_assert_failed+0x18>)
3000a4dc:	2245      	movs	r2, #69	; 0x45
3000a4de:	4905      	ldr	r1, [pc, #20]	; (3000a4f4 <io_assert_failed+0x1c>)
3000a4e0:	b500      	push	{lr}
3000a4e2:	b083      	sub	sp, #12
3000a4e4:	e9cd 0400 	strd	r0, r4, [sp]
3000a4e8:	2002      	movs	r0, #2
3000a4ea:	f7fe ffe9 	bl	300094c0 <rtk_log_write_nano>
3000a4ee:	e7fe      	b.n	3000a4ee <io_assert_failed+0x16>
3000a4f0:	3000c820 	.word	0x3000c820
3000a4f4:	3000b768 	.word	0x3000b768

3000a4f8 <CRYPTO_SetSecurityModeAD>:
3000a4f8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
3000a4fc:	b082      	sub	sp, #8
3000a4fe:	e9dd 7609 	ldrd	r7, r6, [sp, #36]	; 0x24
3000a502:	2800      	cmp	r0, #0
3000a504:	f000 80ab 	beq.w	3000a65e <CRYPTO_SetSecurityModeAD+0x166>
3000a508:	4698      	mov	r8, r3
3000a50a:	7803      	ldrb	r3, [r0, #0]
3000a50c:	4604      	mov	r4, r0
3000a50e:	2b01      	cmp	r3, #1
3000a510:	f040 80a9 	bne.w	3000a666 <CRYPTO_SetSecurityModeAD+0x16e>
3000a514:	4615      	mov	r5, r2
3000a516:	2200      	movs	r2, #0
3000a518:	6041      	str	r1, [r0, #4]
3000a51a:	8102      	strh	r2, [r0, #8]
3000a51c:	1c4a      	adds	r2, r1, #1
3000a51e:	d009      	beq.n	3000a534 <CRYPTO_SetSecurityModeAD+0x3c>
3000a520:	f001 0230 	and.w	r2, r1, #48	; 0x30
3000a524:	f081 0180 	eor.w	r1, r1, #128	; 0x80
3000a528:	2a20      	cmp	r2, #32
3000a52a:	f3c1 11c0 	ubfx	r1, r1, #7, #1
3000a52e:	bf08      	it	eq
3000a530:	7203      	strbeq	r3, [r0, #8]
3000a532:	7241      	strb	r1, [r0, #9]
3000a534:	1c6b      	adds	r3, r5, #1
3000a536:	60e5      	str	r5, [r4, #12]
3000a538:	d069      	beq.n	3000a60e <CRYPTO_SetSecurityModeAD+0x116>
3000a53a:	f005 0303 	and.w	r3, r5, #3
3000a53e:	f3c5 0280 	ubfx	r2, r5, #2, #1
3000a542:	7422      	strb	r2, [r4, #16]
3000a544:	f1a3 0202 	sub.w	r2, r3, #2
3000a548:	2b01      	cmp	r3, #1
3000a54a:	fab2 f282 	clz	r2, r2
3000a54e:	ea4f 1252 	mov.w	r2, r2, lsr #5
3000a552:	7462      	strb	r2, [r4, #17]
3000a554:	fab3 f283 	clz	r2, r3
3000a558:	ea4f 1252 	mov.w	r2, r2, lsr #5
3000a55c:	74a2      	strb	r2, [r4, #18]
3000a55e:	bf0c      	ite	eq
3000a560:	2201      	moveq	r2, #1
3000a562:	2200      	movne	r2, #0
3000a564:	74e2      	strb	r2, [r4, #19]
3000a566:	d03f      	beq.n	3000a5e8 <CRYPTO_SetSecurityModeAD+0xf0>
3000a568:	2200      	movs	r2, #0
3000a56a:	7522      	strb	r2, [r4, #20]
3000a56c:	2b00      	cmp	r3, #0
3000a56e:	d149      	bne.n	3000a604 <CRYPTO_SetSecurityModeAD+0x10c>
3000a570:	2314      	movs	r3, #20
3000a572:	62a3      	str	r3, [r4, #40]	; 0x28
3000a574:	9b08      	ldr	r3, [sp, #32]
3000a576:	6226      	str	r6, [r4, #32]
3000a578:	e9c4 3811 	strd	r3, r8, [r4, #68]	; 0x44
3000a57c:	2e00      	cmp	r6, #0
3000a57e:	d03e      	beq.n	3000a5fe <CRYPTO_SetSecurityModeAD+0x106>
3000a580:	7d23      	ldrb	r3, [r4, #20]
3000a582:	f104 0064 	add.w	r0, r4, #100	; 0x64
3000a586:	2b30      	cmp	r3, #48	; 0x30
3000a588:	65e0      	str	r0, [r4, #92]	; 0x5c
3000a58a:	d04b      	beq.n	3000a624 <CRYPTO_SetSecurityModeAD+0x12c>
3000a58c:	2b40      	cmp	r3, #64	; 0x40
3000a58e:	d049      	beq.n	3000a624 <CRYPTO_SetSecurityModeAD+0x12c>
3000a590:	f104 03a4 	add.w	r3, r4, #164	; 0xa4
3000a594:	2240      	movs	r2, #64	; 0x40
3000a596:	2136      	movs	r1, #54	; 0x36
3000a598:	f8df 80ec 	ldr.w	r8, [pc, #236]	; 3000a688 <CRYPTO_SetSecurityModeAD+0x190>
3000a59c:	6623      	str	r3, [r4, #96]	; 0x60
3000a59e:	47c0      	blx	r8
3000a5a0:	2240      	movs	r2, #64	; 0x40
3000a5a2:	215c      	movs	r1, #92	; 0x5c
3000a5a4:	6e20      	ldr	r0, [r4, #96]	; 0x60
3000a5a6:	47c0      	blx	r8
3000a5a8:	4b33      	ldr	r3, [pc, #204]	; (3000a678 <CRYPTO_SetSecurityModeAD+0x180>)
3000a5aa:	681b      	ldr	r3, [r3, #0]
3000a5ac:	b993      	cbnz	r3, 3000a5d4 <CRYPTO_SetSecurityModeAD+0xdc>
3000a5ae:	2f00      	cmp	r7, #0
3000a5b0:	d05d      	beq.n	3000a66e <CRYPTO_SetSecurityModeAD+0x176>
3000a5b2:	6267      	str	r7, [r4, #36]	; 0x24
3000a5b4:	e000      	b.n	3000a5b8 <CRYPTO_SetSecurityModeAD+0xc0>
3000a5b6:	6a67      	ldr	r7, [r4, #36]	; 0x24
3000a5b8:	6de1      	ldr	r1, [r4, #92]	; 0x5c
3000a5ba:	5cfa      	ldrb	r2, [r7, r3]
3000a5bc:	5cc8      	ldrb	r0, [r1, r3]
3000a5be:	4042      	eors	r2, r0
3000a5c0:	54ca      	strb	r2, [r1, r3]
3000a5c2:	6e21      	ldr	r1, [r4, #96]	; 0x60
3000a5c4:	6a62      	ldr	r2, [r4, #36]	; 0x24
3000a5c6:	5cc8      	ldrb	r0, [r1, r3]
3000a5c8:	5cd2      	ldrb	r2, [r2, r3]
3000a5ca:	4042      	eors	r2, r0
3000a5cc:	54ca      	strb	r2, [r1, r3]
3000a5ce:	3301      	adds	r3, #1
3000a5d0:	429e      	cmp	r6, r3
3000a5d2:	d1f0      	bne.n	3000a5b6 <CRYPTO_SetSecurityModeAD+0xbe>
3000a5d4:	3501      	adds	r5, #1
3000a5d6:	d003      	beq.n	3000a5e0 <CRYPTO_SetSecurityModeAD+0xe8>
3000a5d8:	2201      	movs	r2, #1
3000a5da:	2300      	movs	r3, #0
3000a5dc:	85a2      	strh	r2, [r4, #44]	; 0x2c
3000a5de:	6323      	str	r3, [r4, #48]	; 0x30
3000a5e0:	2000      	movs	r0, #0
3000a5e2:	b002      	add	sp, #8
3000a5e4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
3000a5e8:	f005 03f0 	and.w	r3, r5, #240	; 0xf0
3000a5ec:	2b40      	cmp	r3, #64	; 0x40
3000a5ee:	d033      	beq.n	3000a658 <CRYPTO_SetSecurityModeAD+0x160>
3000a5f0:	d813      	bhi.n	3000a61a <CRYPTO_SetSecurityModeAD+0x122>
3000a5f2:	2b10      	cmp	r3, #16
3000a5f4:	d023      	beq.n	3000a63e <CRYPTO_SetSecurityModeAD+0x146>
3000a5f6:	2b20      	cmp	r3, #32
3000a5f8:	d124      	bne.n	3000a644 <CRYPTO_SetSecurityModeAD+0x14c>
3000a5fa:	7523      	strb	r3, [r4, #20]
3000a5fc:	e00b      	b.n	3000a616 <CRYPTO_SetSecurityModeAD+0x11e>
3000a5fe:	e9c4 6617 	strd	r6, r6, [r4, #92]	; 0x5c
3000a602:	e7e7      	b.n	3000a5d4 <CRYPTO_SetSecurityModeAD+0xdc>
3000a604:	2b02      	cmp	r3, #2
3000a606:	d105      	bne.n	3000a614 <CRYPTO_SetSecurityModeAD+0x11c>
3000a608:	2310      	movs	r3, #16
3000a60a:	62a3      	str	r3, [r4, #40]	; 0x28
3000a60c:	e7b2      	b.n	3000a574 <CRYPTO_SetSecurityModeAD+0x7c>
3000a60e:	2300      	movs	r3, #0
3000a610:	6123      	str	r3, [r4, #16]
3000a612:	7523      	strb	r3, [r4, #20]
3000a614:	2300      	movs	r3, #0
3000a616:	62a3      	str	r3, [r4, #40]	; 0x28
3000a618:	e7ac      	b.n	3000a574 <CRYPTO_SetSecurityModeAD+0x7c>
3000a61a:	2b80      	cmp	r3, #128	; 0x80
3000a61c:	d112      	bne.n	3000a644 <CRYPTO_SetSecurityModeAD+0x14c>
3000a61e:	2340      	movs	r3, #64	; 0x40
3000a620:	7523      	strb	r3, [r4, #20]
3000a622:	e7f8      	b.n	3000a616 <CRYPTO_SetSecurityModeAD+0x11e>
3000a624:	f104 03e4 	add.w	r3, r4, #228	; 0xe4
3000a628:	2280      	movs	r2, #128	; 0x80
3000a62a:	2136      	movs	r1, #54	; 0x36
3000a62c:	f8df 8058 	ldr.w	r8, [pc, #88]	; 3000a688 <CRYPTO_SetSecurityModeAD+0x190>
3000a630:	6623      	str	r3, [r4, #96]	; 0x60
3000a632:	47c0      	blx	r8
3000a634:	2280      	movs	r2, #128	; 0x80
3000a636:	215c      	movs	r1, #92	; 0x5c
3000a638:	6e20      	ldr	r0, [r4, #96]	; 0x60
3000a63a:	47c0      	blx	r8
3000a63c:	e7b4      	b.n	3000a5a8 <CRYPTO_SetSecurityModeAD+0xb0>
3000a63e:	231c      	movs	r3, #28
3000a640:	7523      	strb	r3, [r4, #20]
3000a642:	e7e8      	b.n	3000a616 <CRYPTO_SetSecurityModeAD+0x11e>
3000a644:	4b0d      	ldr	r3, [pc, #52]	; (3000a67c <CRYPTO_SetSecurityModeAD+0x184>)
3000a646:	2245      	movs	r2, #69	; 0x45
3000a648:	490d      	ldr	r1, [pc, #52]	; (3000a680 <CRYPTO_SetSecurityModeAD+0x188>)
3000a64a:	2002      	movs	r0, #2
3000a64c:	9500      	str	r5, [sp, #0]
3000a64e:	f7fe ff0f 	bl	30009470 <rtk_log_write>
3000a652:	2300      	movs	r3, #0
3000a654:	7523      	strb	r3, [r4, #20]
3000a656:	e7de      	b.n	3000a616 <CRYPTO_SetSecurityModeAD+0x11e>
3000a658:	2330      	movs	r3, #48	; 0x30
3000a65a:	7523      	strb	r3, [r4, #20]
3000a65c:	e7db      	b.n	3000a616 <CRYPTO_SetSecurityModeAD+0x11e>
3000a65e:	21cc      	movs	r1, #204	; 0xcc
3000a660:	4808      	ldr	r0, [pc, #32]	; (3000a684 <CRYPTO_SetSecurityModeAD+0x18c>)
3000a662:	f7ff ff39 	bl	3000a4d8 <io_assert_failed>
3000a666:	21cd      	movs	r1, #205	; 0xcd
3000a668:	4806      	ldr	r0, [pc, #24]	; (3000a684 <CRYPTO_SetSecurityModeAD+0x18c>)
3000a66a:	f7ff ff35 	bl	3000a4d8 <io_assert_failed>
3000a66e:	f44f 7194 	mov.w	r1, #296	; 0x128
3000a672:	4804      	ldr	r0, [pc, #16]	; (3000a684 <CRYPTO_SetSecurityModeAD+0x18c>)
3000a674:	f7ff ff30 	bl	3000a4d8 <io_assert_failed>
3000a678:	2001c200 	.word	0x2001c200
3000a67c:	3000c8bc 	.word	0x3000c8bc
3000a680:	3000c7e4 	.word	0x3000c7e4
3000a684:	3000c854 	.word	0x3000c854
3000a688:	00012be5 	.word	0x00012be5

3000a68c <rtl_crypto_hmac_sha2_init>:
3000a68c:	b570      	push	{r4, r5, r6, lr}
3000a68e:	4c94      	ldr	r4, [pc, #592]	; (3000a8e0 <rtl_crypto_hmac_sha2_init+0x254>)
3000a690:	460d      	mov	r5, r1
3000a692:	e844 f400 	tt	r4, r4
3000a696:	4611      	mov	r1, r2
3000a698:	f414 0f80 	tst.w	r4, #4194304	; 0x400000
3000a69c:	4a91      	ldr	r2, [pc, #580]	; (3000a8e4 <rtl_crypto_hmac_sha2_init+0x258>)
3000a69e:	461c      	mov	r4, r3
3000a6a0:	4b91      	ldr	r3, [pc, #580]	; (3000a8e8 <rtl_crypto_hmac_sha2_init+0x25c>)
3000a6a2:	b084      	sub	sp, #16
3000a6a4:	bf18      	it	ne
3000a6a6:	4613      	movne	r3, r2
3000a6a8:	6b5b      	ldr	r3, [r3, #52]	; 0x34
3000a6aa:	2b00      	cmp	r3, #0
3000a6ac:	db05      	blt.n	3000a6ba <rtl_crypto_hmac_sha2_init+0x2e>
3000a6ae:	2d00      	cmp	r5, #0
3000a6b0:	f000 8109 	beq.w	3000a8c6 <rtl_crypto_hmac_sha2_init+0x23a>
3000a6b4:	07ae      	lsls	r6, r5, #30
3000a6b6:	f040 8103 	bne.w	3000a8c0 <rtl_crypto_hmac_sha2_init+0x234>
3000a6ba:	2820      	cmp	r0, #32
3000a6bc:	bf18      	it	ne
3000a6be:	281c      	cmpne	r0, #28
3000a6c0:	bf0c      	ite	eq
3000a6c2:	2301      	moveq	r3, #1
3000a6c4:	2300      	movne	r3, #0
3000a6c6:	d02e      	beq.n	3000a726 <rtl_crypto_hmac_sha2_init+0x9a>
3000a6c8:	2840      	cmp	r0, #64	; 0x40
3000a6ca:	bf18      	it	ne
3000a6cc:	2830      	cmpne	r0, #48	; 0x30
3000a6ce:	d102      	bne.n	3000a6d6 <rtl_crypto_hmac_sha2_init+0x4a>
3000a6d0:	2980      	cmp	r1, #128	; 0x80
3000a6d2:	f200 8100 	bhi.w	3000a8d6 <rtl_crypto_hmac_sha2_init+0x24a>
3000a6d6:	4e85      	ldr	r6, [pc, #532]	; (3000a8ec <rtl_crypto_hmac_sha2_init+0x260>)
3000a6d8:	7832      	ldrb	r2, [r6, #0]
3000a6da:	2a01      	cmp	r2, #1
3000a6dc:	f040 80f6 	bne.w	3000a8cc <rtl_crypto_hmac_sha2_init+0x240>
3000a6e0:	2830      	cmp	r0, #48	; 0x30
3000a6e2:	f000 80b4 	beq.w	3000a84e <rtl_crypto_hmac_sha2_init+0x1c2>
3000a6e6:	d825      	bhi.n	3000a734 <rtl_crypto_hmac_sha2_init+0xa8>
3000a6e8:	281c      	cmp	r0, #28
3000a6ea:	f000 8091 	beq.w	3000a810 <rtl_crypto_hmac_sha2_init+0x184>
3000a6ee:	2b00      	cmp	r3, #0
3000a6f0:	d075      	beq.n	3000a7de <rtl_crypto_hmac_sha2_init+0x152>
3000a6f2:	2c00      	cmp	r4, #0
3000a6f4:	d078      	beq.n	3000a7e8 <rtl_crypto_hmac_sha2_init+0x15c>
3000a6f6:	4a7e      	ldr	r2, [pc, #504]	; (3000a8f0 <rtl_crypto_hmac_sha2_init+0x264>)
3000a6f8:	4b7e      	ldr	r3, [pc, #504]	; (3000a8f4 <rtl_crypto_hmac_sha2_init+0x268>)
3000a6fa:	487f      	ldr	r0, [pc, #508]	; (3000a8f8 <rtl_crypto_hmac_sha2_init+0x26c>)
3000a6fc:	f8df c218 	ldr.w	ip, [pc, #536]	; 3000a918 <rtl_crypto_hmac_sha2_init+0x28c>
3000a700:	e9c4 2302 	strd	r2, r3, [r4, #8]
3000a704:	4b7d      	ldr	r3, [pc, #500]	; (3000a8fc <rtl_crypto_hmac_sha2_init+0x270>)
3000a706:	2225      	movs	r2, #37	; 0x25
3000a708:	e9c4 0304 	strd	r0, r3, [r4, #16]
3000a70c:	4b7c      	ldr	r3, [pc, #496]	; (3000a900 <rtl_crypto_hmac_sha2_init+0x274>)
3000a70e:	e9c4 c306 	strd	ip, r3, [r4, #24]
3000a712:	4b7c      	ldr	r3, [pc, #496]	; (3000a904 <rtl_crypto_hmac_sha2_init+0x278>)
3000a714:	6223      	str	r3, [r4, #32]
3000a716:	f103 5374 	add.w	r3, r3, #1023410176	; 0x3d000000
3000a71a:	f5a3 0323 	sub.w	r3, r3, #10682368	; 0xa30000
3000a71e:	f6a3 4392 	subw	r3, r3, #3218	; 0xc92
3000a722:	6263      	str	r3, [r4, #36]	; 0x24
3000a724:	e044      	b.n	3000a7b0 <rtl_crypto_hmac_sha2_init+0x124>
3000a726:	2940      	cmp	r1, #64	; 0x40
3000a728:	d9d5      	bls.n	3000a6d6 <rtl_crypto_hmac_sha2_init+0x4a>
3000a72a:	f44f 71ab 	mov.w	r1, #342	; 0x156
3000a72e:	4876      	ldr	r0, [pc, #472]	; (3000a908 <rtl_crypto_hmac_sha2_init+0x27c>)
3000a730:	f7ff fed2 	bl	3000a4d8 <io_assert_failed>
3000a734:	2840      	cmp	r0, #64	; 0x40
3000a736:	d152      	bne.n	3000a7de <rtl_crypto_hmac_sha2_init+0x152>
3000a738:	2c00      	cmp	r4, #0
3000a73a:	d067      	beq.n	3000a80c <rtl_crypto_hmac_sha2_init+0x180>
3000a73c:	4b6c      	ldr	r3, [pc, #432]	; (3000a8f0 <rtl_crypto_hmac_sha2_init+0x264>)
3000a73e:	4a73      	ldr	r2, [pc, #460]	; (3000a90c <rtl_crypto_hmac_sha2_init+0x280>)
3000a740:	4873      	ldr	r0, [pc, #460]	; (3000a910 <rtl_crypto_hmac_sha2_init+0x284>)
3000a742:	f8df e21c 	ldr.w	lr, [pc, #540]	; 3000a960 <rtl_crypto_hmac_sha2_init+0x2d4>
3000a746:	e9c4 3202 	strd	r3, r2, [r4, #8]
3000a74a:	f103 53d6 	add.w	r3, r3, #448790528	; 0x1ac00000
3000a74e:	4a71      	ldr	r2, [pc, #452]	; (3000a914 <rtl_crypto_hmac_sha2_init+0x288>)
3000a750:	f503 4340 	add.w	r3, r3, #49152	; 0xc000
3000a754:	33d4      	adds	r3, #212	; 0xd4
3000a756:	6163      	str	r3, [r4, #20]
3000a758:	f103 535a 	add.w	r3, r3, #914358272	; 0x36800000
3000a75c:	f503 13e8 	add.w	r3, r3, #1900544	; 0x1d0000
3000a760:	f203 734a 	addw	r3, r3, #1866	; 0x74a
3000a764:	6123      	str	r3, [r4, #16]
3000a766:	4b64      	ldr	r3, [pc, #400]	; (3000a8f8 <rtl_crypto_hmac_sha2_init+0x26c>)
3000a768:	e9c4 3006 	strd	r3, r0, [r4, #24]
3000a76c:	f103 530a 	add.w	r3, r3, #578813952	; 0x22800000
3000a770:	f503 1339 	add.w	r3, r3, #3031040	; 0x2e4000
3000a774:	f203 337f 	addw	r3, r3, #895	; 0x37f
3000a778:	6263      	str	r3, [r4, #36]	; 0x24
3000a77a:	4b60      	ldr	r3, [pc, #384]	; (3000a8fc <rtl_crypto_hmac_sha2_init+0x270>)
3000a77c:	6223      	str	r3, [r4, #32]
3000a77e:	f103 6309 	add.w	r3, r3, #143654912	; 0x8900000
3000a782:	f503 23d1 	add.w	r3, r3, #428032	; 0x68800
3000a786:	f203 5397 	addw	r3, r3, #1431	; 0x597
3000a78a:	62e3      	str	r3, [r4, #44]	; 0x2c
3000a78c:	4b62      	ldr	r3, [pc, #392]	; (3000a918 <rtl_crypto_hmac_sha2_init+0x28c>)
3000a78e:	62a3      	str	r3, [r4, #40]	; 0x28
3000a790:	f103 435a 	add.w	r3, r3, #3657433088	; 0xda000000
3000a794:	f503 1340 	add.w	r3, r3, #3145728	; 0x300000
3000a798:	f503 53cd 	add.w	r3, r3, #6560	; 0x19a0
3000a79c:	6363      	str	r3, [r4, #52]	; 0x34
3000a79e:	4b58      	ldr	r3, [pc, #352]	; (3000a900 <rtl_crypto_hmac_sha2_init+0x274>)
3000a7a0:	6323      	str	r3, [r4, #48]	; 0x30
3000a7a2:	4b58      	ldr	r3, [pc, #352]	; (3000a904 <rtl_crypto_hmac_sha2_init+0x278>)
3000a7a4:	e9c4 3e0e 	strd	r3, lr, [r4, #56]	; 0x38
3000a7a8:	4b5c      	ldr	r3, [pc, #368]	; (3000a91c <rtl_crypto_hmac_sha2_init+0x290>)
3000a7aa:	e9c4 3210 	strd	r3, r2, [r4, #64]	; 0x40
3000a7ae:	2285      	movs	r2, #133	; 0x85
3000a7b0:	2300      	movs	r3, #0
3000a7b2:	9102      	str	r1, [sp, #8]
3000a7b4:	9501      	str	r5, [sp, #4]
3000a7b6:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
3000a7ba:	9300      	str	r3, [sp, #0]
3000a7bc:	4d58      	ldr	r5, [pc, #352]	; (3000a920 <rtl_crypto_hmac_sha2_init+0x294>)
3000a7be:	484b      	ldr	r0, [pc, #300]	; (3000a8ec <rtl_crypto_hmac_sha2_init+0x260>)
3000a7c0:	f886 3034 	strb.w	r3, [r6, #52]	; 0x34
3000a7c4:	f886 3040 	strb.w	r3, [r6, #64]	; 0x40
3000a7c8:	47a8      	blx	r5
3000a7ca:	4605      	mov	r5, r0
3000a7cc:	4b55      	ldr	r3, [pc, #340]	; (3000a924 <rtl_crypto_hmac_sha2_init+0x298>)
3000a7ce:	4620      	mov	r0, r4
3000a7d0:	4798      	blx	r3
3000a7d2:	2301      	movs	r3, #1
3000a7d4:	4628      	mov	r0, r5
3000a7d6:	f884 304b 	strb.w	r3, [r4, #75]	; 0x4b
3000a7da:	b004      	add	sp, #16
3000a7dc:	bd70      	pop	{r4, r5, r6, pc}
3000a7de:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
3000a7e2:	4628      	mov	r0, r5
3000a7e4:	b004      	add	sp, #16
3000a7e6:	bd70      	pop	{r4, r5, r6, pc}
3000a7e8:	2225      	movs	r2, #37	; 0x25
3000a7ea:	2300      	movs	r3, #0
3000a7ec:	9102      	str	r1, [sp, #8]
3000a7ee:	4c4c      	ldr	r4, [pc, #304]	; (3000a920 <rtl_crypto_hmac_sha2_init+0x294>)
3000a7f0:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
3000a7f4:	483d      	ldr	r0, [pc, #244]	; (3000a8ec <rtl_crypto_hmac_sha2_init+0x260>)
3000a7f6:	f886 3034 	strb.w	r3, [r6, #52]	; 0x34
3000a7fa:	f886 3040 	strb.w	r3, [r6, #64]	; 0x40
3000a7fe:	e9cd 3500 	strd	r3, r5, [sp]
3000a802:	47a0      	blx	r4
3000a804:	4605      	mov	r5, r0
3000a806:	4628      	mov	r0, r5
3000a808:	b004      	add	sp, #16
3000a80a:	bd70      	pop	{r4, r5, r6, pc}
3000a80c:	2285      	movs	r2, #133	; 0x85
3000a80e:	e7ec      	b.n	3000a7ea <rtl_crypto_hmac_sha2_init+0x15e>
3000a810:	2c00      	cmp	r4, #0
3000a812:	d051      	beq.n	3000a8b8 <rtl_crypto_hmac_sha2_init+0x22c>
3000a814:	4b44      	ldr	r3, [pc, #272]	; (3000a928 <rtl_crypto_hmac_sha2_init+0x29c>)
3000a816:	f8df e128 	ldr.w	lr, [pc, #296]	; 3000a940 <rtl_crypto_hmac_sha2_init+0x2b4>
3000a81a:	4a44      	ldr	r2, [pc, #272]	; (3000a92c <rtl_crypto_hmac_sha2_init+0x2a0>)
3000a81c:	4844      	ldr	r0, [pc, #272]	; (3000a930 <rtl_crypto_hmac_sha2_init+0x2a4>)
3000a81e:	e9c4 e302 	strd	lr, r3, [r4, #8]
3000a822:	f103 4379 	add.w	r3, r3, #4177526784	; 0xf9000000
3000a826:	f503 0374 	add.w	r3, r3, #15990784	; 0xf40000
3000a82a:	f503 6301 	add.w	r3, r3, #2064	; 0x810
3000a82e:	6123      	str	r3, [r4, #16]
3000a830:	4b40      	ldr	r3, [pc, #256]	; (3000a934 <rtl_crypto_hmac_sha2_init+0x2a8>)
3000a832:	e9c4 2305 	strd	r2, r3, [r4, #20]
3000a836:	f103 43d1 	add.w	r3, r3, #1753219072	; 0x68800000
3000a83a:	2215      	movs	r2, #21
3000a83c:	f503 13c0 	add.w	r3, r3, #1572864	; 0x180000
3000a840:	f503 631e 	add.w	r3, r3, #2528	; 0x9e0
3000a844:	61e3      	str	r3, [r4, #28]
3000a846:	4b3c      	ldr	r3, [pc, #240]	; (3000a938 <rtl_crypto_hmac_sha2_init+0x2ac>)
3000a848:	e9c4 0308 	strd	r0, r3, [r4, #32]
3000a84c:	e7b0      	b.n	3000a7b0 <rtl_crypto_hmac_sha2_init+0x124>
3000a84e:	2c00      	cmp	r4, #0
3000a850:	d034      	beq.n	3000a8bc <rtl_crypto_hmac_sha2_init+0x230>
3000a852:	4b3a      	ldr	r3, [pc, #232]	; (3000a93c <rtl_crypto_hmac_sha2_init+0x2b0>)
3000a854:	483a      	ldr	r0, [pc, #232]	; (3000a940 <rtl_crypto_hmac_sha2_init+0x2b4>)
3000a856:	f8df e0d4 	ldr.w	lr, [pc, #212]	; 3000a92c <rtl_crypto_hmac_sha2_init+0x2a0>
3000a85a:	4a36      	ldr	r2, [pc, #216]	; (3000a934 <rtl_crypto_hmac_sha2_init+0x2a8>)
3000a85c:	f8df c0d0 	ldr.w	ip, [pc, #208]	; 3000a930 <rtl_crypto_hmac_sha2_init+0x2a4>
3000a860:	e9c4 3002 	strd	r3, r0, [r4, #8]
3000a864:	f103 43d6 	add.w	r3, r3, #1795162112	; 0x6b000000
3000a868:	f5a3 137b 	sub.w	r3, r3, #4112384	; 0x3ec000
3000a86c:	f6a3 0356 	subw	r3, r3, #2134	; 0x856
3000a870:	6163      	str	r3, [r4, #20]
3000a872:	4b34      	ldr	r3, [pc, #208]	; (3000a944 <rtl_crypto_hmac_sha2_init+0x2b8>)
3000a874:	6123      	str	r3, [r4, #16]
3000a876:	f103 434e 	add.w	r3, r3, #3456106496	; 0xce000000
3000a87a:	f5a3 1325 	sub.w	r3, r3, #2703360	; 0x294000
3000a87e:	f6a3 4313 	subw	r3, r3, #3091	; 0xc13
3000a882:	61e3      	str	r3, [r4, #28]
3000a884:	4b30      	ldr	r3, [pc, #192]	; (3000a948 <rtl_crypto_hmac_sha2_init+0x2bc>)
3000a886:	61a3      	str	r3, [r4, #24]
3000a888:	4b30      	ldr	r3, [pc, #192]	; (3000a94c <rtl_crypto_hmac_sha2_init+0x2c0>)
3000a88a:	e9c4 3e08 	strd	r3, lr, [r4, #32]
3000a88e:	4b30      	ldr	r3, [pc, #192]	; (3000a950 <rtl_crypto_hmac_sha2_init+0x2c4>)
3000a890:	f8df e0a4 	ldr.w	lr, [pc, #164]	; 3000a938 <rtl_crypto_hmac_sha2_init+0x2ac>
3000a894:	e9c4 320a 	strd	r3, r2, [r4, #40]	; 0x28
3000a898:	f103 7392 	add.w	r3, r3, #19136512	; 0x1240000
3000a89c:	2245      	movs	r2, #69	; 0x45
3000a89e:	f503 436e 	add.w	r3, r3, #60928	; 0xee00
3000a8a2:	33aa      	adds	r3, #170	; 0xaa
3000a8a4:	6363      	str	r3, [r4, #52]	; 0x34
3000a8a6:	4b2b      	ldr	r3, [pc, #172]	; (3000a954 <rtl_crypto_hmac_sha2_init+0x2c8>)
3000a8a8:	6323      	str	r3, [r4, #48]	; 0x30
3000a8aa:	4b2b      	ldr	r3, [pc, #172]	; (3000a958 <rtl_crypto_hmac_sha2_init+0x2cc>)
3000a8ac:	e9c4 3c0e 	strd	r3, ip, [r4, #56]	; 0x38
3000a8b0:	4b2a      	ldr	r3, [pc, #168]	; (3000a95c <rtl_crypto_hmac_sha2_init+0x2d0>)
3000a8b2:	e9c4 3e10 	strd	r3, lr, [r4, #64]	; 0x40
3000a8b6:	e77b      	b.n	3000a7b0 <rtl_crypto_hmac_sha2_init+0x124>
3000a8b8:	2215      	movs	r2, #21
3000a8ba:	e796      	b.n	3000a7ea <rtl_crypto_hmac_sha2_init+0x15e>
3000a8bc:	2245      	movs	r2, #69	; 0x45
3000a8be:	e794      	b.n	3000a7ea <rtl_crypto_hmac_sha2_init+0x15e>
3000a8c0:	f06f 0505 	mvn.w	r5, #5
3000a8c4:	e78d      	b.n	3000a7e2 <rtl_crypto_hmac_sha2_init+0x156>
3000a8c6:	f06f 0503 	mvn.w	r5, #3
3000a8ca:	e78a      	b.n	3000a7e2 <rtl_crypto_hmac_sha2_init+0x156>
3000a8cc:	f44f 71ae 	mov.w	r1, #348	; 0x15c
3000a8d0:	480d      	ldr	r0, [pc, #52]	; (3000a908 <rtl_crypto_hmac_sha2_init+0x27c>)
3000a8d2:	f7ff fe01 	bl	3000a4d8 <io_assert_failed>
3000a8d6:	f240 1159 	movw	r1, #345	; 0x159
3000a8da:	480b      	ldr	r0, [pc, #44]	; (3000a908 <rtl_crypto_hmac_sha2_init+0x27c>)
3000a8dc:	f7ff fdfc 	bl	3000a4d8 <io_assert_failed>
3000a8e0:	3000a0d1 	.word	0x3000a0d1
3000a8e4:	500c8000 	.word	0x500c8000
3000a8e8:	400c8000 	.word	0x400c8000
3000a8ec:	2001c460 	.word	0x2001c460
3000a8f0:	6a09e667 	.word	0x6a09e667
3000a8f4:	bb67ae85 	.word	0xbb67ae85
3000a8f8:	3c6ef372 	.word	0x3c6ef372
3000a8fc:	a54ff53a 	.word	0xa54ff53a
3000a900:	9b05688c 	.word	0x9b05688c
3000a904:	1f83d9ab 	.word	0x1f83d9ab
3000a908:	3000c854 	.word	0x3000c854
3000a90c:	f3bcc908 	.word	0xf3bcc908
3000a910:	fe94f82b 	.word	0xfe94f82b
3000a914:	137e2179 	.word	0x137e2179
3000a918:	510e527f 	.word	0x510e527f
3000a91c:	5be0cd19 	.word	0x5be0cd19
3000a920:	3000a4f9 	.word	0x3000a4f9
3000a924:	00004c99 	.word	0x00004c99
3000a928:	367cd507 	.word	0x367cd507
3000a92c:	f70e5939 	.word	0xf70e5939
3000a930:	64f98fa7 	.word	0x64f98fa7
3000a934:	ffc00b31 	.word	0xffc00b31
3000a938:	befa4fa4 	.word	0xbefa4fa4
3000a93c:	cbbb9d5d 	.word	0xcbbb9d5d
3000a940:	c1059ed8 	.word	0xc1059ed8
3000a944:	629a292a 	.word	0x629a292a
3000a948:	9159015a 	.word	0x9159015a
3000a94c:	152fecd8 	.word	0x152fecd8
3000a950:	67332667 	.word	0x67332667
3000a954:	8eb44a87 	.word	0x8eb44a87
3000a958:	db0c2e0d 	.word	0xdb0c2e0d
3000a95c:	47b5481d 	.word	0x47b5481d
3000a960:	fb41bd6b 	.word	0xfb41bd6b

3000a964 <RSIP_OTF_Enable>:
3000a964:	b1c3      	cbz	r3, 3000a998 <RSIP_OTF_Enable+0x34>
3000a966:	b510      	push	{r4, lr}
3000a968:	9b02      	ldr	r3, [sp, #8]
3000a96a:	2b07      	cmp	r3, #7
3000a96c:	d81c      	bhi.n	3000a9a8 <RSIP_OTF_Enable+0x44>
3000a96e:	9b03      	ldr	r3, [sp, #12]
3000a970:	3b01      	subs	r3, #1
3000a972:	2b01      	cmp	r3, #1
3000a974:	d81d      	bhi.n	3000a9b2 <RSIP_OTF_Enable+0x4e>
3000a976:	4b11      	ldr	r3, [pc, #68]	; (3000a9bc <RSIP_OTF_Enable+0x58>)
3000a978:	9c03      	ldr	r4, [sp, #12]
3000a97a:	eb03 00c0 	add.w	r0, r3, r0, lsl #3
3000a97e:	ea42 0244 	orr.w	r2, r2, r4, lsl #1
3000a982:	9c02      	ldr	r4, [sp, #8]
3000a984:	6c43      	ldr	r3, [r0, #68]	; 0x44
3000a986:	4321      	orrs	r1, r4
3000a988:	f042 0201 	orr.w	r2, r2, #1
3000a98c:	f023 0301 	bic.w	r3, r3, #1
3000a990:	6443      	str	r3, [r0, #68]	; 0x44
3000a992:	6401      	str	r1, [r0, #64]	; 0x40
3000a994:	6442      	str	r2, [r0, #68]	; 0x44
3000a996:	bd10      	pop	{r4, pc}
3000a998:	4b08      	ldr	r3, [pc, #32]	; (3000a9bc <RSIP_OTF_Enable+0x58>)
3000a99a:	eb03 00c0 	add.w	r0, r3, r0, lsl #3
3000a99e:	6c43      	ldr	r3, [r0, #68]	; 0x44
3000a9a0:	f023 0301 	bic.w	r3, r3, #1
3000a9a4:	6443      	str	r3, [r0, #68]	; 0x44
3000a9a6:	4770      	bx	lr
3000a9a8:	f240 314a 	movw	r1, #842	; 0x34a
3000a9ac:	4804      	ldr	r0, [pc, #16]	; (3000a9c0 <RSIP_OTF_Enable+0x5c>)
3000a9ae:	f7ff fd93 	bl	3000a4d8 <io_assert_failed>
3000a9b2:	f240 314b 	movw	r1, #843	; 0x34b
3000a9b6:	4802      	ldr	r0, [pc, #8]	; (3000a9c0 <RSIP_OTF_Enable+0x5c>)
3000a9b8:	f7ff fd8e 	bl	3000a4d8 <io_assert_failed>
3000a9bc:	42008c00 	.word	0x42008c00
3000a9c0:	3000c854 	.word	0x3000c854

3000a9c4 <BOOT_VerCheck>:
3000a9c4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
3000a9c8:	4b20      	ldr	r3, [pc, #128]	; (3000aa4c <BOOT_VerCheck+0x88>)
3000a9ca:	4798      	blx	r3
3000a9cc:	b108      	cbz	r0, 3000a9d2 <BOOT_VerCheck+0xe>
3000a9ce:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
3000a9d2:	2503      	movs	r5, #3
3000a9d4:	4c1e      	ldr	r4, [pc, #120]	; (3000aa50 <BOOT_VerCheck+0x8c>)
3000a9d6:	4b1f      	ldr	r3, [pc, #124]	; (3000aa54 <BOOT_VerCheck+0x90>)
3000a9d8:	2257      	movs	r2, #87	; 0x57
3000a9da:	4621      	mov	r1, r4
3000a9dc:	4628      	mov	r0, r5
3000a9de:	4e1e      	ldr	r6, [pc, #120]	; (3000aa58 <BOOT_VerCheck+0x94>)
3000a9e0:	f8df 808c 	ldr.w	r8, [pc, #140]	; 3000aa70 <BOOT_VerCheck+0xac>
3000a9e4:	4f1d      	ldr	r7, [pc, #116]	; (3000aa5c <BOOT_VerCheck+0x98>)
3000a9e6:	f7fe fd43 	bl	30009470 <rtk_log_write>
3000a9ea:	2257      	movs	r2, #87	; 0x57
3000a9ec:	4621      	mov	r1, r4
3000a9ee:	2003      	movs	r0, #3
3000a9f0:	4633      	mov	r3, r6
3000a9f2:	f7fe fd3d 	bl	30009470 <rtk_log_write>
3000a9f6:	4643      	mov	r3, r8
3000a9f8:	2257      	movs	r2, #87	; 0x57
3000a9fa:	4621      	mov	r1, r4
3000a9fc:	2003      	movs	r0, #3
3000a9fe:	f7fe fd37 	bl	30009470 <rtk_log_write>
3000aa02:	463b      	mov	r3, r7
3000aa04:	2257      	movs	r2, #87	; 0x57
3000aa06:	4621      	mov	r1, r4
3000aa08:	2003      	movs	r0, #3
3000aa0a:	f7fe fd31 	bl	30009470 <rtk_log_write>
3000aa0e:	2257      	movs	r2, #87	; 0x57
3000aa10:	4621      	mov	r1, r4
3000aa12:	2003      	movs	r0, #3
3000aa14:	4b12      	ldr	r3, [pc, #72]	; (3000aa60 <BOOT_VerCheck+0x9c>)
3000aa16:	f7fe fd2b 	bl	30009470 <rtk_log_write>
3000aa1a:	4633      	mov	r3, r6
3000aa1c:	2257      	movs	r2, #87	; 0x57
3000aa1e:	4621      	mov	r1, r4
3000aa20:	2003      	movs	r0, #3
3000aa22:	f7fe fd25 	bl	30009470 <rtk_log_write>
3000aa26:	4b0f      	ldr	r3, [pc, #60]	; (3000aa64 <BOOT_VerCheck+0xa0>)
3000aa28:	2257      	movs	r2, #87	; 0x57
3000aa2a:	4621      	mov	r1, r4
3000aa2c:	2003      	movs	r0, #3
3000aa2e:	f7fe fd1f 	bl	30009470 <rtk_log_write>
3000aa32:	3d01      	subs	r5, #1
3000aa34:	d1d9      	bne.n	3000a9ea <BOOT_VerCheck+0x26>
3000aa36:	4906      	ldr	r1, [pc, #24]	; (3000aa50 <BOOT_VerCheck+0x8c>)
3000aa38:	2003      	movs	r0, #3
3000aa3a:	4b0b      	ldr	r3, [pc, #44]	; (3000aa68 <BOOT_VerCheck+0xa4>)
3000aa3c:	2257      	movs	r2, #87	; 0x57
3000aa3e:	f7fe fd17 	bl	30009470 <rtk_log_write>
3000aa42:	2121      	movs	r1, #33	; 0x21
3000aa44:	4809      	ldr	r0, [pc, #36]	; (3000aa6c <BOOT_VerCheck+0xa8>)
3000aa46:	f7ff fd47 	bl	3000a4d8 <io_assert_failed>
3000aa4a:	bf00      	nop
3000aa4c:	30009b2d 	.word	0x30009b2d
3000aa50:	3000b71c 	.word	0x3000b71c
3000aa54:	3000c8e0 	.word	0x3000c8e0
3000aa58:	3000c91c 	.word	0x3000c91c
3000aa5c:	3000c994 	.word	0x3000c994
3000aa60:	3000c9d0 	.word	0x3000c9d0
3000aa64:	3000ca0c 	.word	0x3000ca0c
3000aa68:	3000b718 	.word	0x3000b718
3000aa6c:	3000ca48 	.word	0x3000ca48
3000aa70:	3000c958 	.word	0x3000c958

3000aa74 <crash_dump_memory>:
3000aa74:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
3000aa78:	460e      	mov	r6, r1
3000aa7a:	4680      	mov	r8, r0
3000aa7c:	4b21      	ldr	r3, [pc, #132]	; (3000ab04 <crash_dump_memory+0x90>)
3000aa7e:	f1a6 0080 	sub.w	r0, r6, #128	; 0x80
3000aa82:	4a21      	ldr	r2, [pc, #132]	; (3000ab08 <crash_dump_memory+0x94>)
3000aa84:	f8d3 127c 	ldr.w	r1, [r3, #636]	; 0x27c
3000aa88:	4644      	mov	r4, r8
3000aa8a:	f5b0 5f7e 	cmp.w	r0, #16256	; 0x3f80
3000aa8e:	4b1f      	ldr	r3, [pc, #124]	; (3000ab0c <crash_dump_memory+0x98>)
3000aa90:	481f      	ldr	r0, [pc, #124]	; (3000ab10 <crash_dump_memory+0x9c>)
3000aa92:	bf88      	it	hi
3000aa94:	2680      	movhi	r6, #128	; 0x80
3000aa96:	f011 0fc0 	tst.w	r1, #192	; 0xc0
3000aa9a:	4f1e      	ldr	r7, [pc, #120]	; (3000ab14 <crash_dump_memory+0xa0>)
3000aa9c:	bf14      	ite	ne
3000aa9e:	4611      	movne	r1, r2
3000aaa0:	4619      	moveq	r1, r3
3000aaa2:	f7ff fb15 	bl	3000a0d0 <DiagPrintf>
3000aaa6:	4632      	mov	r2, r6
3000aaa8:	4641      	mov	r1, r8
3000aaaa:	481b      	ldr	r0, [pc, #108]	; (3000ab18 <crash_dump_memory+0xa4>)
3000aaac:	f7ff fb10 	bl	3000a0d0 <DiagPrintf>
3000aab0:	f8df 906c 	ldr.w	r9, [pc, #108]	; 3000ab20 <crash_dump_memory+0xac>
3000aab4:	2300      	movs	r3, #0
3000aab6:	f8df a06c 	ldr.w	sl, [pc, #108]	; 3000ab24 <crash_dump_memory+0xb0>
3000aaba:	e007      	b.n	3000aacc <crash_dump_memory+0x58>
3000aabc:	6821      	ldr	r1, [r4, #0]
3000aabe:	4638      	mov	r0, r7
3000aac0:	f7ff fb06 	bl	3000a0d0 <DiagPrintf>
3000aac4:	42ae      	cmp	r6, r5
3000aac6:	d00f      	beq.n	3000aae8 <crash_dump_memory+0x74>
3000aac8:	3404      	adds	r4, #4
3000aaca:	462b      	mov	r3, r5
3000aacc:	1c5d      	adds	r5, r3, #1
3000aace:	b183      	cbz	r3, 3000aaf2 <crash_dump_memory+0x7e>
3000aad0:	079b      	lsls	r3, r3, #30
3000aad2:	d1f3      	bne.n	3000aabc <crash_dump_memory+0x48>
3000aad4:	4621      	mov	r1, r4
3000aad6:	4648      	mov	r0, r9
3000aad8:	f7ff fafa 	bl	3000a0d0 <DiagPrintf>
3000aadc:	6821      	ldr	r1, [r4, #0]
3000aade:	4638      	mov	r0, r7
3000aae0:	f7ff faf6 	bl	3000a0d0 <DiagPrintf>
3000aae4:	42ae      	cmp	r6, r5
3000aae6:	d1ef      	bne.n	3000aac8 <crash_dump_memory+0x54>
3000aae8:	480c      	ldr	r0, [pc, #48]	; (3000ab1c <crash_dump_memory+0xa8>)
3000aaea:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
3000aaee:	f7ff baef 	b.w	3000a0d0 <DiagPrintf>
3000aaf2:	4641      	mov	r1, r8
3000aaf4:	4650      	mov	r0, sl
3000aaf6:	f7ff faeb 	bl	3000a0d0 <DiagPrintf>
3000aafa:	6821      	ldr	r1, [r4, #0]
3000aafc:	4638      	mov	r0, r7
3000aafe:	f7ff fae7 	bl	3000a0d0 <DiagPrintf>
3000ab02:	e7e1      	b.n	3000aac8 <crash_dump_memory+0x54>
3000ab04:	42008000 	.word	0x42008000
3000ab08:	3000cab0 	.word	0x3000cab0
3000ab0c:	3000cab4 	.word	0x3000cab4
3000ab10:	3000cab8 	.word	0x3000cab8
3000ab14:	3000cb1c 	.word	0x3000cb1c
3000ab18:	3000cadc 	.word	0x3000cadc
3000ab1c:	3000b718 	.word	0x3000b718
3000ab20:	3000cb24 	.word	0x3000cb24
3000ab24:	3000cb14 	.word	0x3000cb14

3000ab28 <crash_dump>:
3000ab28:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
3000ab2c:	4c62      	ldr	r4, [pc, #392]	; (3000acb8 <crash_dump+0x190>)
3000ab2e:	4615      	mov	r5, r2
3000ab30:	468a      	mov	sl, r1
3000ab32:	f04f 23e0 	mov.w	r3, #3758153728	; 0xe000e000
3000ab36:	4861      	ldr	r0, [pc, #388]	; (3000acbc <crash_dump+0x194>)
3000ab38:	ed2d 8b02 	vpush	{d8}
3000ab3c:	e9d2 2109 	ldrd	r2, r1, [r2, #36]	; 0x24
3000ab40:	b083      	sub	sp, #12
3000ab42:	e9c4 2100 	strd	r2, r1, [r4]
3000ab46:	6aea      	ldr	r2, [r5, #44]	; 0x2c
3000ab48:	60a2      	str	r2, [r4, #8]
3000ab4a:	6b2a      	ldr	r2, [r5, #48]	; 0x30
3000ab4c:	60e2      	str	r2, [r4, #12]
3000ab4e:	686a      	ldr	r2, [r5, #4]
3000ab50:	6122      	str	r2, [r4, #16]
3000ab52:	68aa      	ldr	r2, [r5, #8]
3000ab54:	6162      	str	r2, [r4, #20]
3000ab56:	68ea      	ldr	r2, [r5, #12]
3000ab58:	61a2      	str	r2, [r4, #24]
3000ab5a:	692a      	ldr	r2, [r5, #16]
3000ab5c:	61e2      	str	r2, [r4, #28]
3000ab5e:	696a      	ldr	r2, [r5, #20]
3000ab60:	6222      	str	r2, [r4, #32]
3000ab62:	69aa      	ldr	r2, [r5, #24]
3000ab64:	6262      	str	r2, [r4, #36]	; 0x24
3000ab66:	69ea      	ldr	r2, [r5, #28]
3000ab68:	62a2      	str	r2, [r4, #40]	; 0x28
3000ab6a:	6a2a      	ldr	r2, [r5, #32]
3000ab6c:	62e2      	str	r2, [r4, #44]	; 0x2c
3000ab6e:	6b6a      	ldr	r2, [r5, #52]	; 0x34
3000ab70:	6322      	str	r2, [r4, #48]	; 0x30
3000ab72:	6baa      	ldr	r2, [r5, #56]	; 0x38
3000ab74:	6362      	str	r2, [r4, #52]	; 0x34
3000ab76:	6bea      	ldr	r2, [r5, #60]	; 0x3c
3000ab78:	63a2      	str	r2, [r4, #56]	; 0x38
3000ab7a:	6c2a      	ldr	r2, [r5, #64]	; 0x40
3000ab7c:	63e2      	str	r2, [r4, #60]	; 0x3c
3000ab7e:	682a      	ldr	r2, [r5, #0]
3000ab80:	6422      	str	r2, [r4, #64]	; 0x40
3000ab82:	f8d3 2d24 	ldr.w	r2, [r3, #3364]	; 0xd24
3000ab86:	6462      	str	r2, [r4, #68]	; 0x44
3000ab88:	4a4d      	ldr	r2, [pc, #308]	; (3000acc0 <crash_dump+0x198>)
3000ab8a:	f892 1028 	ldrb.w	r1, [r2, #40]	; 0x28
3000ab8e:	f884 1048 	strb.w	r1, [r4, #72]	; 0x48
3000ab92:	f8d3 1d34 	ldr.w	r1, [r3, #3380]	; 0xd34
3000ab96:	64e1      	str	r1, [r4, #76]	; 0x4c
3000ab98:	f892 1029 	ldrb.w	r1, [r2, #41]	; 0x29
3000ab9c:	f884 1050 	strb.w	r1, [r4, #80]	; 0x50
3000aba0:	f8d3 1d38 	ldr.w	r1, [r3, #3384]	; 0xd38
3000aba4:	6561      	str	r1, [r4, #84]	; 0x54
3000aba6:	8d51      	ldrh	r1, [r2, #42]	; 0x2a
3000aba8:	f8a4 1058 	strh.w	r1, [r4, #88]	; 0x58
3000abac:	f8d3 1d2c 	ldr.w	r1, [r3, #3372]	; 0xd2c
3000abb0:	65e1      	str	r1, [r4, #92]	; 0x5c
3000abb2:	8e11      	ldrh	r1, [r2, #48]	; 0x30
3000abb4:	8f92      	ldrh	r2, [r2, #60]	; 0x3c
3000abb6:	b289      	uxth	r1, r1
3000abb8:	b292      	uxth	r2, r2
3000abba:	6621      	str	r1, [r4, #96]	; 0x60
3000abbc:	6662      	str	r2, [r4, #100]	; 0x64
3000abbe:	f8d3 2de4 	ldr.w	r2, [r3, #3556]	; 0xde4
3000abc2:	66a2      	str	r2, [r4, #104]	; 0x68
3000abc4:	f8d3 3de8 	ldr.w	r3, [r3, #3560]	; 0xde8
3000abc8:	66e3      	str	r3, [r4, #108]	; 0x6c
3000abca:	f7ff fa81 	bl	3000a0d0 <DiagPrintf>
3000abce:	4b3d      	ldr	r3, [pc, #244]	; (3000acc4 <crash_dump+0x19c>)
3000abd0:	681b      	ldr	r3, [r3, #0]
3000abd2:	2b00      	cmp	r3, #0
3000abd4:	d06b      	beq.n	3000acae <crash_dump+0x186>
3000abd6:	4651      	mov	r1, sl
3000abd8:	4628      	mov	r0, r5
3000abda:	4798      	blx	r3
3000abdc:	ee08 0a10 	vmov	s16, r0
3000abe0:	4835      	ldr	r0, [pc, #212]	; (3000acb8 <crash_dump+0x190>)
3000abe2:	46a8      	mov	r8, r5
3000abe4:	f000 f88e 	bl	3000ad04 <fault_diagnosis>
3000abe8:	4837      	ldr	r0, [pc, #220]	; (3000acc8 <crash_dump+0x1a0>)
3000abea:	f7ff fa71 	bl	3000a0d0 <DiagPrintf>
3000abee:	6ba9      	ldr	r1, [r5, #56]	; 0x38
3000abf0:	4836      	ldr	r0, [pc, #216]	; (3000accc <crash_dump+0x1a4>)
3000abf2:	462e      	mov	r6, r5
3000abf4:	f7ff fa6c 	bl	3000a0d0 <DiagPrintf>
3000abf8:	6be9      	ldr	r1, [r5, #60]	; 0x3c
3000abfa:	4835      	ldr	r0, [pc, #212]	; (3000acd0 <crash_dump+0x1a8>)
3000abfc:	f7ff fa68 	bl	3000a0d0 <DiagPrintf>
3000ac00:	6c29      	ldr	r1, [r5, #64]	; 0x40
3000ac02:	4834      	ldr	r0, [pc, #208]	; (3000acd4 <crash_dump+0x1ac>)
3000ac04:	f7ff fa64 	bl	3000a0d0 <DiagPrintf>
3000ac08:	f858 1b20 	ldr.w	r1, [r8], #32
3000ac0c:	4832      	ldr	r0, [pc, #200]	; (3000acd8 <crash_dump+0x1b0>)
3000ac0e:	f7ff fa5f 	bl	3000a0d0 <DiagPrintf>
3000ac12:	4647      	mov	r7, r8
3000ac14:	f105 0330 	add.w	r3, r5, #48	; 0x30
3000ac18:	f8df b0d0 	ldr.w	fp, [pc, #208]	; 3000acec <crash_dump+0x1c4>
3000ac1c:	f857 2f04 	ldr.w	r2, [r7, #4]!
3000ac20:	f8cd 8004 	str.w	r8, [sp, #4]
3000ac24:	46a8      	mov	r8, r5
3000ac26:	461d      	mov	r5, r3
3000ac28:	492c      	ldr	r1, [pc, #176]	; (3000acdc <crash_dump+0x1b4>)
3000ac2a:	4658      	mov	r0, fp
3000ac2c:	f8df 90d0 	ldr.w	r9, [pc, #208]	; 3000ad00 <crash_dump+0x1d8>
3000ac30:	f7ff fa4e 	bl	3000a0d0 <DiagPrintf>
3000ac34:	42af      	cmp	r7, r5
3000ac36:	d008      	beq.n	3000ac4a <crash_dump+0x122>
3000ac38:	f857 2f04 	ldr.w	r2, [r7, #4]!
3000ac3c:	4658      	mov	r0, fp
3000ac3e:	f859 1b04 	ldr.w	r1, [r9], #4
3000ac42:	f7ff fa45 	bl	3000a0d0 <DiagPrintf>
3000ac46:	42af      	cmp	r7, r5
3000ac48:	d1f6      	bne.n	3000ac38 <crash_dump+0x110>
3000ac4a:	4645      	mov	r5, r8
3000ac4c:	4f24      	ldr	r7, [pc, #144]	; (3000ace0 <crash_dump+0x1b8>)
3000ac4e:	f8dd 8004 	ldr.w	r8, [sp, #4]
3000ac52:	4924      	ldr	r1, [pc, #144]	; (3000ace4 <crash_dump+0x1bc>)
3000ac54:	f8df 9094 	ldr.w	r9, [pc, #148]	; 3000acec <crash_dump+0x1c4>
3000ac58:	e001      	b.n	3000ac5e <crash_dump+0x136>
3000ac5a:	f857 1b04 	ldr.w	r1, [r7], #4
3000ac5e:	f856 2f04 	ldr.w	r2, [r6, #4]!
3000ac62:	4648      	mov	r0, r9
3000ac64:	f7ff fa34 	bl	3000a0d0 <DiagPrintf>
3000ac68:	4546      	cmp	r6, r8
3000ac6a:	d1f6      	bne.n	3000ac5a <crash_dump+0x132>
3000ac6c:	6b6a      	ldr	r2, [r5, #52]	; 0x34
3000ac6e:	491e      	ldr	r1, [pc, #120]	; (3000ace8 <crash_dump+0x1c0>)
3000ac70:	481e      	ldr	r0, [pc, #120]	; (3000acec <crash_dump+0x1c4>)
3000ac72:	f7ff fa2d 	bl	3000a0d0 <DiagPrintf>
3000ac76:	ee18 1a10 	vmov	r1, s16
3000ac7a:	4650      	mov	r0, sl
3000ac7c:	f7ff fefa 	bl	3000aa74 <crash_dump_memory>
3000ac80:	481b      	ldr	r0, [pc, #108]	; (3000acf0 <crash_dump+0x1c8>)
3000ac82:	f7ff fa25 	bl	3000a0d0 <DiagPrintf>
3000ac86:	6b62      	ldr	r2, [r4, #52]	; 0x34
3000ac88:	4651      	mov	r1, sl
3000ac8a:	6ba0      	ldr	r0, [r4, #56]	; 0x38
3000ac8c:	f000 fa50 	bl	3000b130 <do_stack_backtrace>
3000ac90:	4818      	ldr	r0, [pc, #96]	; (3000acf4 <crash_dump+0x1cc>)
3000ac92:	f7ff fa1d 	bl	3000a0d0 <DiagPrintf>
3000ac96:	4818      	ldr	r0, [pc, #96]	; (3000acf8 <crash_dump+0x1d0>)
3000ac98:	f7ff fa1a 	bl	3000a0d0 <DiagPrintf>
3000ac9c:	4817      	ldr	r0, [pc, #92]	; (3000acfc <crash_dump+0x1d4>)
3000ac9e:	f7ff fa17 	bl	3000a0d0 <DiagPrintf>
3000aca2:	2000      	movs	r0, #0
3000aca4:	b003      	add	sp, #12
3000aca6:	ecbd 8b02 	vpop	{d8}
3000acaa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
3000acae:	2380      	movs	r3, #128	; 0x80
3000acb0:	ee08 3a10 	vmov	s16, r3
3000acb4:	e794      	b.n	3000abe0 <crash_dump+0xb8>
3000acb6:	bf00      	nop
3000acb8:	3000e6d8 	.word	0x3000e6d8
3000acbc:	3000cb38 	.word	0x3000cb38
3000acc0:	e000ed00 	.word	0xe000ed00
3000acc4:	3000e6d4 	.word	0x3000e6d4
3000acc8:	3000cb5c 	.word	0x3000cb5c
3000accc:	3000cb84 	.word	0x3000cb84
3000acd0:	3000cb94 	.word	0x3000cb94
3000acd4:	3000cba4 	.word	0x3000cba4
3000acd8:	3000cbb4 	.word	0x3000cbb4
3000acdc:	3000cb30 	.word	0x3000cb30
3000ace0:	3000cc8c 	.word	0x3000cc8c
3000ace4:	3000cb34 	.word	0x3000cb34
3000ace8:	3000cbd4 	.word	0x3000cbd4
3000acec:	3000cbc4 	.word	0x3000cbc4
3000acf0:	3000cbd8 	.word	0x3000cbd8
3000acf4:	3000cbfc 	.word	0x3000cbfc
3000acf8:	3000cc28 	.word	0x3000cc28
3000acfc:	3000cc54 	.word	0x3000cc54
3000ad00:	3000ccac 	.word	0x3000ccac

3000ad04 <fault_diagnosis>:
3000ad04:	b510      	push	{r4, lr}
3000ad06:	4604      	mov	r4, r0
3000ad08:	4888      	ldr	r0, [pc, #544]	; (3000af2c <fault_diagnosis+0x228>)
3000ad0a:	6ba1      	ldr	r1, [r4, #56]	; 0x38
3000ad0c:	f7ff f9e0 	bl	3000a0d0 <DiagPrintf>
3000ad10:	f894 305c 	ldrb.w	r3, [r4, #92]	; 0x5c
3000ad14:	079b      	lsls	r3, r3, #30
3000ad16:	f100 808a 	bmi.w	3000ae2e <fault_diagnosis+0x12a>
3000ad1a:	6ea1      	ldr	r1, [r4, #104]	; 0x68
3000ad1c:	b1e1      	cbz	r1, 3000ad58 <fault_diagnosis+0x54>
3000ad1e:	f894 3068 	ldrb.w	r3, [r4, #104]	; 0x68
3000ad22:	07d8      	lsls	r0, r3, #31
3000ad24:	f100 8094 	bmi.w	3000ae50 <fault_diagnosis+0x14c>
3000ad28:	079a      	lsls	r2, r3, #30
3000ad2a:	f100 809a 	bmi.w	3000ae62 <fault_diagnosis+0x15e>
3000ad2e:	0758      	lsls	r0, r3, #29
3000ad30:	f100 80a1 	bmi.w	3000ae76 <fault_diagnosis+0x172>
3000ad34:	0719      	lsls	r1, r3, #28
3000ad36:	f100 80a8 	bmi.w	3000ae8a <fault_diagnosis+0x186>
3000ad3a:	06da      	lsls	r2, r3, #27
3000ad3c:	f100 80af 	bmi.w	3000ae9e <fault_diagnosis+0x19a>
3000ad40:	0698      	lsls	r0, r3, #26
3000ad42:	f100 80b6 	bmi.w	3000aeb2 <fault_diagnosis+0x1ae>
3000ad46:	0619      	lsls	r1, r3, #24
3000ad48:	f100 80bd 	bmi.w	3000aec6 <fault_diagnosis+0x1c2>
3000ad4c:	065a      	lsls	r2, r3, #25
3000ad4e:	d503      	bpl.n	3000ad58 <fault_diagnosis+0x54>
3000ad50:	f013 0f28 	tst.w	r3, #40	; 0x28
3000ad54:	f040 8186 	bne.w	3000b064 <fault_diagnosis+0x360>
3000ad58:	f894 1048 	ldrb.w	r1, [r4, #72]	; 0x48
3000ad5c:	b199      	cbz	r1, 3000ad86 <fault_diagnosis+0x82>
3000ad5e:	07cb      	lsls	r3, r1, #31
3000ad60:	f100 80b9 	bmi.w	3000aed6 <fault_diagnosis+0x1d2>
3000ad64:	0788      	lsls	r0, r1, #30
3000ad66:	f100 80bf 	bmi.w	3000aee8 <fault_diagnosis+0x1e4>
3000ad6a:	070a      	lsls	r2, r1, #28
3000ad6c:	f100 80c5 	bmi.w	3000aefa <fault_diagnosis+0x1f6>
3000ad70:	06cb      	lsls	r3, r1, #27
3000ad72:	f100 80cb 	bmi.w	3000af0c <fault_diagnosis+0x208>
3000ad76:	0688      	lsls	r0, r1, #26
3000ad78:	f100 80d1 	bmi.w	3000af1e <fault_diagnosis+0x21a>
3000ad7c:	060a      	lsls	r2, r1, #24
3000ad7e:	d502      	bpl.n	3000ad86 <fault_diagnosis+0x82>
3000ad80:	078b      	lsls	r3, r1, #30
3000ad82:	f040 8194 	bne.w	3000b0ae <fault_diagnosis+0x3aa>
3000ad86:	f894 1050 	ldrb.w	r1, [r4, #80]	; 0x50
3000ad8a:	b1b1      	cbz	r1, 3000adba <fault_diagnosis+0xb6>
3000ad8c:	07c8      	lsls	r0, r1, #31
3000ad8e:	f100 80f7 	bmi.w	3000af80 <fault_diagnosis+0x27c>
3000ad92:	078a      	lsls	r2, r1, #30
3000ad94:	f100 80fd 	bmi.w	3000af92 <fault_diagnosis+0x28e>
3000ad98:	074b      	lsls	r3, r1, #29
3000ad9a:	f100 8103 	bmi.w	3000afa4 <fault_diagnosis+0x2a0>
3000ad9e:	0708      	lsls	r0, r1, #28
3000ada0:	f100 8109 	bmi.w	3000afb6 <fault_diagnosis+0x2b2>
3000ada4:	06ca      	lsls	r2, r1, #27
3000ada6:	f100 810f 	bmi.w	3000afc8 <fault_diagnosis+0x2c4>
3000adaa:	068b      	lsls	r3, r1, #26
3000adac:	f100 8115 	bmi.w	3000afda <fault_diagnosis+0x2d6>
3000adb0:	0608      	lsls	r0, r1, #24
3000adb2:	d502      	bpl.n	3000adba <fault_diagnosis+0xb6>
3000adb4:	0789      	lsls	r1, r1, #30
3000adb6:	f100 8180 	bmi.w	3000b0ba <fault_diagnosis+0x3b6>
3000adba:	f8b4 1058 	ldrh.w	r1, [r4, #88]	; 0x58
3000adbe:	b1b9      	cbz	r1, 3000adf0 <fault_diagnosis+0xec>
3000adc0:	f894 3058 	ldrb.w	r3, [r4, #88]	; 0x58
3000adc4:	07da      	lsls	r2, r3, #31
3000adc6:	f100 810f 	bmi.w	3000afe8 <fault_diagnosis+0x2e4>
3000adca:	0798      	lsls	r0, r3, #30
3000adcc:	f100 8115 	bmi.w	3000affa <fault_diagnosis+0x2f6>
3000add0:	0759      	lsls	r1, r3, #29
3000add2:	f100 811d 	bmi.w	3000b010 <fault_diagnosis+0x30c>
3000add6:	071a      	lsls	r2, r3, #28
3000add8:	f100 8125 	bmi.w	3000b026 <fault_diagnosis+0x322>
3000addc:	06db      	lsls	r3, r3, #27
3000adde:	f100 812d 	bmi.w	3000b03c <fault_diagnosis+0x338>
3000ade2:	f894 3059 	ldrb.w	r3, [r4, #89]	; 0x59
3000ade6:	07d8      	lsls	r0, r3, #31
3000ade8:	f100 8133 	bmi.w	3000b052 <fault_diagnosis+0x34e>
3000adec:	0799      	lsls	r1, r3, #30
3000adee:	d424      	bmi.n	3000ae3a <fault_diagnosis+0x136>
3000adf0:	f994 305f 	ldrsb.w	r3, [r4, #95]	; 0x5f
3000adf4:	2b00      	cmp	r3, #0
3000adf6:	db00      	blt.n	3000adfa <fault_diagnosis+0xf6>
3000adf8:	bd10      	pop	{r4, pc}
3000adfa:	6e21      	ldr	r1, [r4, #96]	; 0x60
3000adfc:	2900      	cmp	r1, #0
3000adfe:	d0fb      	beq.n	3000adf8 <fault_diagnosis+0xf4>
3000ae00:	f894 3060 	ldrb.w	r3, [r4, #96]	; 0x60
3000ae04:	07da      	lsls	r2, r3, #31
3000ae06:	f100 8143 	bmi.w	3000b090 <fault_diagnosis+0x38c>
3000ae0a:	0798      	lsls	r0, r3, #30
3000ae0c:	f100 8138 	bmi.w	3000b080 <fault_diagnosis+0x37c>
3000ae10:	0759      	lsls	r1, r3, #29
3000ae12:	f100 812d 	bmi.w	3000b070 <fault_diagnosis+0x36c>
3000ae16:	071a      	lsls	r2, r3, #28
3000ae18:	f100 8141 	bmi.w	3000b09e <fault_diagnosis+0x39a>
3000ae1c:	06db      	lsls	r3, r3, #27
3000ae1e:	d5eb      	bpl.n	3000adf8 <fault_diagnosis+0xf4>
3000ae20:	6e21      	ldr	r1, [r4, #96]	; 0x60
3000ae22:	4a43      	ldr	r2, [pc, #268]	; (3000af30 <fault_diagnosis+0x22c>)
3000ae24:	4843      	ldr	r0, [pc, #268]	; (3000af34 <fault_diagnosis+0x230>)
3000ae26:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
3000ae2a:	f7ff b951 	b.w	3000a0d0 <DiagPrintf>
3000ae2e:	4a42      	ldr	r2, [pc, #264]	; (3000af38 <fault_diagnosis+0x234>)
3000ae30:	6de1      	ldr	r1, [r4, #92]	; 0x5c
3000ae32:	4842      	ldr	r0, [pc, #264]	; (3000af3c <fault_diagnosis+0x238>)
3000ae34:	f7ff f94c 	bl	3000a0d0 <DiagPrintf>
3000ae38:	e76f      	b.n	3000ad1a <fault_diagnosis+0x16>
3000ae3a:	4a41      	ldr	r2, [pc, #260]	; (3000af40 <fault_diagnosis+0x23c>)
3000ae3c:	f8b4 1058 	ldrh.w	r1, [r4, #88]	; 0x58
3000ae40:	4840      	ldr	r0, [pc, #256]	; (3000af44 <fault_diagnosis+0x240>)
3000ae42:	f7ff f945 	bl	3000a0d0 <DiagPrintf>
3000ae46:	f994 305f 	ldrsb.w	r3, [r4, #95]	; 0x5f
3000ae4a:	2b00      	cmp	r3, #0
3000ae4c:	dad4      	bge.n	3000adf8 <fault_diagnosis+0xf4>
3000ae4e:	e7d4      	b.n	3000adfa <fault_diagnosis+0xf6>
3000ae50:	4a3d      	ldr	r2, [pc, #244]	; (3000af48 <fault_diagnosis+0x244>)
3000ae52:	483e      	ldr	r0, [pc, #248]	; (3000af4c <fault_diagnosis+0x248>)
3000ae54:	f7ff f93c 	bl	3000a0d0 <DiagPrintf>
3000ae58:	f894 3068 	ldrb.w	r3, [r4, #104]	; 0x68
3000ae5c:	079a      	lsls	r2, r3, #30
3000ae5e:	f57f af66 	bpl.w	3000ad2e <fault_diagnosis+0x2a>
3000ae62:	4a3b      	ldr	r2, [pc, #236]	; (3000af50 <fault_diagnosis+0x24c>)
3000ae64:	6ea1      	ldr	r1, [r4, #104]	; 0x68
3000ae66:	4839      	ldr	r0, [pc, #228]	; (3000af4c <fault_diagnosis+0x248>)
3000ae68:	f7ff f932 	bl	3000a0d0 <DiagPrintf>
3000ae6c:	f894 3068 	ldrb.w	r3, [r4, #104]	; 0x68
3000ae70:	0758      	lsls	r0, r3, #29
3000ae72:	f57f af5f 	bpl.w	3000ad34 <fault_diagnosis+0x30>
3000ae76:	6ea1      	ldr	r1, [r4, #104]	; 0x68
3000ae78:	4a36      	ldr	r2, [pc, #216]	; (3000af54 <fault_diagnosis+0x250>)
3000ae7a:	4834      	ldr	r0, [pc, #208]	; (3000af4c <fault_diagnosis+0x248>)
3000ae7c:	f7ff f928 	bl	3000a0d0 <DiagPrintf>
3000ae80:	f894 3068 	ldrb.w	r3, [r4, #104]	; 0x68
3000ae84:	0719      	lsls	r1, r3, #28
3000ae86:	f57f af58 	bpl.w	3000ad3a <fault_diagnosis+0x36>
3000ae8a:	4a33      	ldr	r2, [pc, #204]	; (3000af58 <fault_diagnosis+0x254>)
3000ae8c:	6ea1      	ldr	r1, [r4, #104]	; 0x68
3000ae8e:	482f      	ldr	r0, [pc, #188]	; (3000af4c <fault_diagnosis+0x248>)
3000ae90:	f7ff f91e 	bl	3000a0d0 <DiagPrintf>
3000ae94:	f894 3068 	ldrb.w	r3, [r4, #104]	; 0x68
3000ae98:	06da      	lsls	r2, r3, #27
3000ae9a:	f57f af51 	bpl.w	3000ad40 <fault_diagnosis+0x3c>
3000ae9e:	4a2f      	ldr	r2, [pc, #188]	; (3000af5c <fault_diagnosis+0x258>)
3000aea0:	6ea1      	ldr	r1, [r4, #104]	; 0x68
3000aea2:	482a      	ldr	r0, [pc, #168]	; (3000af4c <fault_diagnosis+0x248>)
3000aea4:	f7ff f914 	bl	3000a0d0 <DiagPrintf>
3000aea8:	f894 3068 	ldrb.w	r3, [r4, #104]	; 0x68
3000aeac:	0698      	lsls	r0, r3, #26
3000aeae:	f57f af4a 	bpl.w	3000ad46 <fault_diagnosis+0x42>
3000aeb2:	6ea1      	ldr	r1, [r4, #104]	; 0x68
3000aeb4:	4a2a      	ldr	r2, [pc, #168]	; (3000af60 <fault_diagnosis+0x25c>)
3000aeb6:	4825      	ldr	r0, [pc, #148]	; (3000af4c <fault_diagnosis+0x248>)
3000aeb8:	f7ff f90a 	bl	3000a0d0 <DiagPrintf>
3000aebc:	f894 3068 	ldrb.w	r3, [r4, #104]	; 0x68
3000aec0:	0619      	lsls	r1, r3, #24
3000aec2:	f57f af43 	bpl.w	3000ad4c <fault_diagnosis+0x48>
3000aec6:	4a27      	ldr	r2, [pc, #156]	; (3000af64 <fault_diagnosis+0x260>)
3000aec8:	6ea1      	ldr	r1, [r4, #104]	; 0x68
3000aeca:	4820      	ldr	r0, [pc, #128]	; (3000af4c <fault_diagnosis+0x248>)
3000aecc:	f7ff f900 	bl	3000a0d0 <DiagPrintf>
3000aed0:	f894 3068 	ldrb.w	r3, [r4, #104]	; 0x68
3000aed4:	e73a      	b.n	3000ad4c <fault_diagnosis+0x48>
3000aed6:	4a24      	ldr	r2, [pc, #144]	; (3000af68 <fault_diagnosis+0x264>)
3000aed8:	4824      	ldr	r0, [pc, #144]	; (3000af6c <fault_diagnosis+0x268>)
3000aeda:	f7ff f8f9 	bl	3000a0d0 <DiagPrintf>
3000aede:	f894 1048 	ldrb.w	r1, [r4, #72]	; 0x48
3000aee2:	0788      	lsls	r0, r1, #30
3000aee4:	f57f af41 	bpl.w	3000ad6a <fault_diagnosis+0x66>
3000aee8:	4a21      	ldr	r2, [pc, #132]	; (3000af70 <fault_diagnosis+0x26c>)
3000aeea:	4820      	ldr	r0, [pc, #128]	; (3000af6c <fault_diagnosis+0x268>)
3000aeec:	f7ff f8f0 	bl	3000a0d0 <DiagPrintf>
3000aef0:	f894 1048 	ldrb.w	r1, [r4, #72]	; 0x48
3000aef4:	070a      	lsls	r2, r1, #28
3000aef6:	f57f af3b 	bpl.w	3000ad70 <fault_diagnosis+0x6c>
3000aefa:	4a1e      	ldr	r2, [pc, #120]	; (3000af74 <fault_diagnosis+0x270>)
3000aefc:	481b      	ldr	r0, [pc, #108]	; (3000af6c <fault_diagnosis+0x268>)
3000aefe:	f7ff f8e7 	bl	3000a0d0 <DiagPrintf>
3000af02:	f894 1048 	ldrb.w	r1, [r4, #72]	; 0x48
3000af06:	06cb      	lsls	r3, r1, #27
3000af08:	f57f af35 	bpl.w	3000ad76 <fault_diagnosis+0x72>
3000af0c:	4a1a      	ldr	r2, [pc, #104]	; (3000af78 <fault_diagnosis+0x274>)
3000af0e:	4817      	ldr	r0, [pc, #92]	; (3000af6c <fault_diagnosis+0x268>)
3000af10:	f7ff f8de 	bl	3000a0d0 <DiagPrintf>
3000af14:	f894 1048 	ldrb.w	r1, [r4, #72]	; 0x48
3000af18:	0688      	lsls	r0, r1, #26
3000af1a:	f57f af2f 	bpl.w	3000ad7c <fault_diagnosis+0x78>
3000af1e:	4a17      	ldr	r2, [pc, #92]	; (3000af7c <fault_diagnosis+0x278>)
3000af20:	4812      	ldr	r0, [pc, #72]	; (3000af6c <fault_diagnosis+0x268>)
3000af22:	f7ff f8d5 	bl	3000a0d0 <DiagPrintf>
3000af26:	f894 1048 	ldrb.w	r1, [r4, #72]	; 0x48
3000af2a:	e727      	b.n	3000ad7c <fault_diagnosis+0x78>
3000af2c:	3000ccbc 	.word	0x3000ccbc
3000af30:	3000d550 	.word	0x3000d550
3000af34:	3000d4a8 	.word	0x3000d4a8
3000af38:	3000ccd8 	.word	0x3000ccd8
3000af3c:	3000cd04 	.word	0x3000cd04
3000af40:	3000d40c 	.word	0x3000d40c
3000af44:	3000d250 	.word	0x3000d250
3000af48:	3000cd1c 	.word	0x3000cd1c
3000af4c:	3000cd4c 	.word	0x3000cd4c
3000af50:	3000cd64 	.word	0x3000cd64
3000af54:	3000cd9c 	.word	0x3000cd9c
3000af58:	3000cdd4 	.word	0x3000cdd4
3000af5c:	3000ce0c 	.word	0x3000ce0c
3000af60:	3000ce3c 	.word	0x3000ce3c
3000af64:	3000ce78 	.word	0x3000ce78
3000af68:	3000cee8 	.word	0x3000cee8
3000af6c:	3000cf2c 	.word	0x3000cf2c
3000af70:	3000cf44 	.word	0x3000cf44
3000af74:	3000cf80 	.word	0x3000cf80
3000af78:	3000cfb8 	.word	0x3000cfb8
3000af7c:	3000cfec 	.word	0x3000cfec
3000af80:	4a51      	ldr	r2, [pc, #324]	; (3000b0c8 <fault_diagnosis+0x3c4>)
3000af82:	4852      	ldr	r0, [pc, #328]	; (3000b0cc <fault_diagnosis+0x3c8>)
3000af84:	f7ff f8a4 	bl	3000a0d0 <DiagPrintf>
3000af88:	f894 1050 	ldrb.w	r1, [r4, #80]	; 0x50
3000af8c:	078a      	lsls	r2, r1, #30
3000af8e:	f57f af03 	bpl.w	3000ad98 <fault_diagnosis+0x94>
3000af92:	4a4f      	ldr	r2, [pc, #316]	; (3000b0d0 <fault_diagnosis+0x3cc>)
3000af94:	484d      	ldr	r0, [pc, #308]	; (3000b0cc <fault_diagnosis+0x3c8>)
3000af96:	f7ff f89b 	bl	3000a0d0 <DiagPrintf>
3000af9a:	f894 1050 	ldrb.w	r1, [r4, #80]	; 0x50
3000af9e:	074b      	lsls	r3, r1, #29
3000afa0:	f57f aefd 	bpl.w	3000ad9e <fault_diagnosis+0x9a>
3000afa4:	4a4b      	ldr	r2, [pc, #300]	; (3000b0d4 <fault_diagnosis+0x3d0>)
3000afa6:	4849      	ldr	r0, [pc, #292]	; (3000b0cc <fault_diagnosis+0x3c8>)
3000afa8:	f7ff f892 	bl	3000a0d0 <DiagPrintf>
3000afac:	f894 1050 	ldrb.w	r1, [r4, #80]	; 0x50
3000afb0:	0708      	lsls	r0, r1, #28
3000afb2:	f57f aef7 	bpl.w	3000ada4 <fault_diagnosis+0xa0>
3000afb6:	4a48      	ldr	r2, [pc, #288]	; (3000b0d8 <fault_diagnosis+0x3d4>)
3000afb8:	4844      	ldr	r0, [pc, #272]	; (3000b0cc <fault_diagnosis+0x3c8>)
3000afba:	f7ff f889 	bl	3000a0d0 <DiagPrintf>
3000afbe:	f894 1050 	ldrb.w	r1, [r4, #80]	; 0x50
3000afc2:	06ca      	lsls	r2, r1, #27
3000afc4:	f57f aef1 	bpl.w	3000adaa <fault_diagnosis+0xa6>
3000afc8:	4a44      	ldr	r2, [pc, #272]	; (3000b0dc <fault_diagnosis+0x3d8>)
3000afca:	4840      	ldr	r0, [pc, #256]	; (3000b0cc <fault_diagnosis+0x3c8>)
3000afcc:	f7ff f880 	bl	3000a0d0 <DiagPrintf>
3000afd0:	f894 1050 	ldrb.w	r1, [r4, #80]	; 0x50
3000afd4:	068b      	lsls	r3, r1, #26
3000afd6:	f57f aeeb 	bpl.w	3000adb0 <fault_diagnosis+0xac>
3000afda:	4a41      	ldr	r2, [pc, #260]	; (3000b0e0 <fault_diagnosis+0x3dc>)
3000afdc:	483b      	ldr	r0, [pc, #236]	; (3000b0cc <fault_diagnosis+0x3c8>)
3000afde:	f7ff f877 	bl	3000a0d0 <DiagPrintf>
3000afe2:	f894 1050 	ldrb.w	r1, [r4, #80]	; 0x50
3000afe6:	e6e3      	b.n	3000adb0 <fault_diagnosis+0xac>
3000afe8:	4a3e      	ldr	r2, [pc, #248]	; (3000b0e4 <fault_diagnosis+0x3e0>)
3000afea:	483f      	ldr	r0, [pc, #252]	; (3000b0e8 <fault_diagnosis+0x3e4>)
3000afec:	f7ff f870 	bl	3000a0d0 <DiagPrintf>
3000aff0:	f894 3058 	ldrb.w	r3, [r4, #88]	; 0x58
3000aff4:	0798      	lsls	r0, r3, #30
3000aff6:	f57f aeeb 	bpl.w	3000add0 <fault_diagnosis+0xcc>
3000affa:	f8b4 1058 	ldrh.w	r1, [r4, #88]	; 0x58
3000affe:	4a3b      	ldr	r2, [pc, #236]	; (3000b0ec <fault_diagnosis+0x3e8>)
3000b000:	4839      	ldr	r0, [pc, #228]	; (3000b0e8 <fault_diagnosis+0x3e4>)
3000b002:	f7ff f865 	bl	3000a0d0 <DiagPrintf>
3000b006:	f894 3058 	ldrb.w	r3, [r4, #88]	; 0x58
3000b00a:	0759      	lsls	r1, r3, #29
3000b00c:	f57f aee3 	bpl.w	3000add6 <fault_diagnosis+0xd2>
3000b010:	4a37      	ldr	r2, [pc, #220]	; (3000b0f0 <fault_diagnosis+0x3ec>)
3000b012:	f8b4 1058 	ldrh.w	r1, [r4, #88]	; 0x58
3000b016:	4834      	ldr	r0, [pc, #208]	; (3000b0e8 <fault_diagnosis+0x3e4>)
3000b018:	f7ff f85a 	bl	3000a0d0 <DiagPrintf>
3000b01c:	f894 3058 	ldrb.w	r3, [r4, #88]	; 0x58
3000b020:	071a      	lsls	r2, r3, #28
3000b022:	f57f aedb 	bpl.w	3000addc <fault_diagnosis+0xd8>
3000b026:	4a33      	ldr	r2, [pc, #204]	; (3000b0f4 <fault_diagnosis+0x3f0>)
3000b028:	f8b4 1058 	ldrh.w	r1, [r4, #88]	; 0x58
3000b02c:	482e      	ldr	r0, [pc, #184]	; (3000b0e8 <fault_diagnosis+0x3e4>)
3000b02e:	f7ff f84f 	bl	3000a0d0 <DiagPrintf>
3000b032:	f894 3058 	ldrb.w	r3, [r4, #88]	; 0x58
3000b036:	06db      	lsls	r3, r3, #27
3000b038:	f57f aed3 	bpl.w	3000ade2 <fault_diagnosis+0xde>
3000b03c:	4a2e      	ldr	r2, [pc, #184]	; (3000b0f8 <fault_diagnosis+0x3f4>)
3000b03e:	f8b4 1058 	ldrh.w	r1, [r4, #88]	; 0x58
3000b042:	4829      	ldr	r0, [pc, #164]	; (3000b0e8 <fault_diagnosis+0x3e4>)
3000b044:	f7ff f844 	bl	3000a0d0 <DiagPrintf>
3000b048:	f894 3059 	ldrb.w	r3, [r4, #89]	; 0x59
3000b04c:	07d8      	lsls	r0, r3, #31
3000b04e:	f57f aecd 	bpl.w	3000adec <fault_diagnosis+0xe8>
3000b052:	4a2a      	ldr	r2, [pc, #168]	; (3000b0fc <fault_diagnosis+0x3f8>)
3000b054:	f8b4 1058 	ldrh.w	r1, [r4, #88]	; 0x58
3000b058:	4823      	ldr	r0, [pc, #140]	; (3000b0e8 <fault_diagnosis+0x3e4>)
3000b05a:	f7ff f839 	bl	3000a0d0 <DiagPrintf>
3000b05e:	f894 3059 	ldrb.w	r3, [r4, #89]	; 0x59
3000b062:	e6c3      	b.n	3000adec <fault_diagnosis+0xe8>
3000b064:	4a26      	ldr	r2, [pc, #152]	; (3000b100 <fault_diagnosis+0x3fc>)
3000b066:	6ee1      	ldr	r1, [r4, #108]	; 0x6c
3000b068:	4826      	ldr	r0, [pc, #152]	; (3000b104 <fault_diagnosis+0x400>)
3000b06a:	f7ff f831 	bl	3000a0d0 <DiagPrintf>
3000b06e:	e673      	b.n	3000ad58 <fault_diagnosis+0x54>
3000b070:	4a25      	ldr	r2, [pc, #148]	; (3000b108 <fault_diagnosis+0x404>)
3000b072:	6e21      	ldr	r1, [r4, #96]	; 0x60
3000b074:	4825      	ldr	r0, [pc, #148]	; (3000b10c <fault_diagnosis+0x408>)
3000b076:	f7ff f82b 	bl	3000a0d0 <DiagPrintf>
3000b07a:	f894 3060 	ldrb.w	r3, [r4, #96]	; 0x60
3000b07e:	e6ca      	b.n	3000ae16 <fault_diagnosis+0x112>
3000b080:	4a23      	ldr	r2, [pc, #140]	; (3000b110 <fault_diagnosis+0x40c>)
3000b082:	6e21      	ldr	r1, [r4, #96]	; 0x60
3000b084:	4821      	ldr	r0, [pc, #132]	; (3000b10c <fault_diagnosis+0x408>)
3000b086:	f7ff f823 	bl	3000a0d0 <DiagPrintf>
3000b08a:	f894 3060 	ldrb.w	r3, [r4, #96]	; 0x60
3000b08e:	e6bf      	b.n	3000ae10 <fault_diagnosis+0x10c>
3000b090:	4a20      	ldr	r2, [pc, #128]	; (3000b114 <fault_diagnosis+0x410>)
3000b092:	481e      	ldr	r0, [pc, #120]	; (3000b10c <fault_diagnosis+0x408>)
3000b094:	f7ff f81c 	bl	3000a0d0 <DiagPrintf>
3000b098:	f894 3060 	ldrb.w	r3, [r4, #96]	; 0x60
3000b09c:	e6b5      	b.n	3000ae0a <fault_diagnosis+0x106>
3000b09e:	4a1e      	ldr	r2, [pc, #120]	; (3000b118 <fault_diagnosis+0x414>)
3000b0a0:	6e21      	ldr	r1, [r4, #96]	; 0x60
3000b0a2:	481a      	ldr	r0, [pc, #104]	; (3000b10c <fault_diagnosis+0x408>)
3000b0a4:	f7ff f814 	bl	3000a0d0 <DiagPrintf>
3000b0a8:	f894 3060 	ldrb.w	r3, [r4, #96]	; 0x60
3000b0ac:	e6b6      	b.n	3000ae1c <fault_diagnosis+0x118>
3000b0ae:	4a1b      	ldr	r2, [pc, #108]	; (3000b11c <fault_diagnosis+0x418>)
3000b0b0:	6ce1      	ldr	r1, [r4, #76]	; 0x4c
3000b0b2:	481b      	ldr	r0, [pc, #108]	; (3000b120 <fault_diagnosis+0x41c>)
3000b0b4:	f7ff f80c 	bl	3000a0d0 <DiagPrintf>
3000b0b8:	e665      	b.n	3000ad86 <fault_diagnosis+0x82>
3000b0ba:	4a1a      	ldr	r2, [pc, #104]	; (3000b124 <fault_diagnosis+0x420>)
3000b0bc:	6d61      	ldr	r1, [r4, #84]	; 0x54
3000b0be:	481a      	ldr	r0, [pc, #104]	; (3000b128 <fault_diagnosis+0x424>)
3000b0c0:	f7ff f806 	bl	3000a0d0 <DiagPrintf>
3000b0c4:	e679      	b.n	3000adba <fault_diagnosis+0xb6>
3000b0c6:	bf00      	nop
3000b0c8:	3000d080 	.word	0x3000d080
3000b0cc:	3000d0b4 	.word	0x3000d0b4
3000b0d0:	3000d0cc 	.word	0x3000d0cc
3000b0d4:	3000d104 	.word	0x3000d104
3000b0d8:	3000d13c 	.word	0x3000d13c
3000b0dc:	3000d164 	.word	0x3000d164
3000b0e0:	3000d18c 	.word	0x3000d18c
3000b0e4:	3000d208 	.word	0x3000d208
3000b0e8:	3000d250 	.word	0x3000d250
3000b0ec:	3000d268 	.word	0x3000d268
3000b0f0:	3000d2b4 	.word	0x3000d2b4
3000b0f4:	3000d314 	.word	0x3000d314
3000b0f8:	3000d35c 	.word	0x3000d35c
3000b0fc:	3000d3b8 	.word	0x3000d3b8
3000b100:	3000cea8 	.word	0x3000cea8
3000b104:	3000ced0 	.word	0x3000ced0
3000b108:	3000d4f4 	.word	0x3000d4f4
3000b10c:	3000d4a8 	.word	0x3000d4a8
3000b110:	3000d4c0 	.word	0x3000d4c0
3000b114:	3000d478 	.word	0x3000d478
3000b118:	3000d520 	.word	0x3000d520
3000b11c:	3000d038 	.word	0x3000d038
3000b120:	3000d068 	.word	0x3000d068
3000b124:	3000d1cc 	.word	0x3000d1cc
3000b128:	3000d1f0 	.word	0x3000d1f0

3000b12c <TaskExitError>:
3000b12c:	b672      	cpsid	i
3000b12e:	e7fe      	b.n	3000b12e <TaskExitError+0x2>

3000b130 <do_stack_backtrace>:
3000b130:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
3000b134:	b087      	sub	sp, #28
3000b136:	9100      	str	r1, [sp, #0]
3000b138:	9205      	str	r2, [sp, #20]
3000b13a:	2800      	cmp	r0, #0
3000b13c:	f000 8114 	beq.w	3000b368 <do_stack_backtrace+0x238>
3000b140:	4604      	mov	r4, r0
3000b142:	2900      	cmp	r1, #0
3000b144:	f000 8110 	beq.w	3000b368 <do_stack_backtrace+0x238>
3000b148:	4622      	mov	r2, r4
3000b14a:	9900      	ldr	r1, [sp, #0]
3000b14c:	9b05      	ldr	r3, [sp, #20]
3000b14e:	488f      	ldr	r0, [pc, #572]	; (3000b38c <do_stack_backtrace+0x25c>)
3000b150:	f7fe ffbe 	bl	3000a0d0 <DiagPrintf>
3000b154:	4623      	mov	r3, r4
3000b156:	4a8e      	ldr	r2, [pc, #568]	; (3000b390 <do_stack_backtrace+0x260>)
3000b158:	f024 0401 	bic.w	r4, r4, #1
3000b15c:	498d      	ldr	r1, [pc, #564]	; (3000b394 <do_stack_backtrace+0x264>)
3000b15e:	488e      	ldr	r0, [pc, #568]	; (3000b398 <do_stack_backtrace+0x268>)
3000b160:	f7fe ffb6 	bl	3000a0d0 <DiagPrintf>
3000b164:	4b8d      	ldr	r3, [pc, #564]	; (3000b39c <do_stack_backtrace+0x26c>)
3000b166:	220a      	movs	r2, #10
3000b168:	f023 0301 	bic.w	r3, r3, #1
3000b16c:	9201      	str	r2, [sp, #4]
3000b16e:	9302      	str	r3, [sp, #8]
3000b170:	9b02      	ldr	r3, [sp, #8]
3000b172:	429c      	cmp	r4, r3
3000b174:	f000 8104 	beq.w	3000b380 <do_stack_backtrace+0x250>
3000b178:	2102      	movs	r1, #2
3000b17a:	4e89      	ldr	r6, [pc, #548]	; (3000b3a0 <do_stack_backtrace+0x270>)
3000b17c:	4d89      	ldr	r5, [pc, #548]	; (3000b3a4 <do_stack_backtrace+0x274>)
3000b17e:	eba4 0b01 	sub.w	fp, r4, r1
3000b182:	f83b 2c02 	ldrh.w	r2, [fp, #-2]
3000b186:	f8bb 0000 	ldrh.w	r0, [fp]
3000b18a:	0ad3      	lsrs	r3, r2, #11
3000b18c:	f400 477f 	and.w	r7, r0, #65280	; 0xff00
3000b190:	3b1d      	subs	r3, #29
3000b192:	2b02      	cmp	r3, #2
3000b194:	d968      	bls.n	3000b268 <do_stack_backtrace+0x138>
3000b196:	f5b7 4f35 	cmp.w	r7, #46336	; 0xb500
3000b19a:	f000 80c5 	beq.w	3000b328 <do_stack_backtrace+0x1f8>
3000b19e:	f5b7 4f34 	cmp.w	r7, #46080	; 0xb400
3000b1a2:	d15a      	bne.n	3000b25a <do_stack_backtrace+0x12a>
3000b1a4:	b2c0      	uxtb	r0, r0
3000b1a6:	f000 f92d 	bl	3000b404 <__popcountsi2>
3000b1aa:	4682      	mov	sl, r0
3000b1ac:	9b05      	ldr	r3, [sp, #20]
3000b1ae:	f10b 0002 	add.w	r0, fp, #2
3000b1b2:	fab3 f383 	clz	r3, r3
3000b1b6:	4284      	cmp	r4, r0
3000b1b8:	ea4f 1353 	mov.w	r3, r3, lsr #5
3000b1bc:	9303      	str	r3, [sp, #12]
3000b1be:	f04f 0300 	mov.w	r3, #0
3000b1c2:	9304      	str	r3, [sp, #16]
3000b1c4:	d263      	bcs.n	3000b28e <do_stack_backtrace+0x15e>
3000b1c6:	9b03      	ldr	r3, [sp, #12]
3000b1c8:	2b00      	cmp	r3, #0
3000b1ca:	f000 80c4 	beq.w	3000b356 <do_stack_backtrace+0x226>
3000b1ce:	9b04      	ldr	r3, [sp, #16]
3000b1d0:	9a00      	ldr	r2, [sp, #0]
3000b1d2:	ebaa 0303 	sub.w	r3, sl, r3
3000b1d6:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
3000b1da:	461c      	mov	r4, r3
3000b1dc:	9a00      	ldr	r2, [sp, #0]
3000b1de:	f023 0301 	bic.w	r3, r3, #1
3000b1e2:	eb02 028a 	add.w	r2, r2, sl, lsl #2
3000b1e6:	9200      	str	r2, [sp, #0]
3000b1e8:	9a02      	ldr	r2, [sp, #8]
3000b1ea:	4293      	cmp	r3, r2
3000b1ec:	f000 80c4 	beq.w	3000b378 <do_stack_backtrace+0x248>
3000b1f0:	f833 2c02 	ldrh.w	r2, [r3, #-2]
3000b1f4:	f402 427f 	and.w	r2, r2, #65280	; 0xff00
3000b1f8:	f5b2 4f8e 	cmp.w	r2, #18176	; 0x4700
3000b1fc:	f000 80ae 	beq.w	3000b35c <do_stack_backtrace+0x22c>
3000b200:	f853 2c04 	ldr.w	r2, [r3, #-4]
3000b204:	4968      	ldr	r1, [pc, #416]	; (3000b3a8 <do_stack_backtrace+0x278>)
3000b206:	4869      	ldr	r0, [pc, #420]	; (3000b3ac <do_stack_backtrace+0x27c>)
3000b208:	4011      	ands	r1, r2
3000b20a:	4281      	cmp	r1, r0
3000b20c:	f000 80a9 	beq.w	3000b362 <do_stack_backtrace+0x232>
3000b210:	f002 417e 	and.w	r1, r2, #4261412864	; 0xfe000000
3000b214:	f1b1 4f7a 	cmp.w	r1, #4194304000	; 0xfa000000
3000b218:	f000 80a3 	beq.w	3000b362 <do_stack_backtrace+0x232>
3000b21c:	4964      	ldr	r1, [pc, #400]	; (3000b3b0 <do_stack_backtrace+0x280>)
3000b21e:	400a      	ands	r2, r1
3000b220:	4964      	ldr	r1, [pc, #400]	; (3000b3b4 <do_stack_backtrace+0x284>)
3000b222:	428a      	cmp	r2, r1
3000b224:	f000 809d 	beq.w	3000b362 <do_stack_backtrace+0x232>
3000b228:	f833 3c04 	ldrh.w	r3, [r3, #-4]
3000b22c:	0adb      	lsrs	r3, r3, #11
3000b22e:	3b1d      	subs	r3, #29
3000b230:	2b02      	cmp	r3, #2
3000b232:	bf8c      	ite	hi
3000b234:	f06f 0301 	mvnhi.w	r3, #1
3000b238:	f06f 0303 	mvnls.w	r3, #3
3000b23c:	441c      	add	r4, r3
3000b23e:	485e      	ldr	r0, [pc, #376]	; (3000b3b8 <do_stack_backtrace+0x288>)
3000b240:	f024 0401 	bic.w	r4, r4, #1
3000b244:	4621      	mov	r1, r4
3000b246:	f7fe ff43 	bl	3000a0d0 <DiagPrintf>
3000b24a:	9b01      	ldr	r3, [sp, #4]
3000b24c:	3b01      	subs	r3, #1
3000b24e:	9301      	str	r3, [sp, #4]
3000b250:	d18e      	bne.n	3000b170 <do_stack_backtrace+0x40>
3000b252:	b007      	add	sp, #28
3000b254:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
3000b258:	3102      	adds	r1, #2
3000b25a:	3102      	adds	r1, #2
3000b25c:	f5b1 5f00 	cmp.w	r1, #8192	; 0x2000
3000b260:	db8d      	blt.n	3000b17e <do_stack_backtrace+0x4e>
3000b262:	f04f 3aff 	mov.w	sl, #4294967295	; 0xffffffff
3000b266:	e7a1      	b.n	3000b1ac <do_stack_backtrace+0x7c>
3000b268:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
3000b26c:	ea00 0306 	and.w	r3, r0, r6
3000b270:	42ab      	cmp	r3, r5
3000b272:	d1f1      	bne.n	3000b258 <do_stack_backtrace+0x128>
3000b274:	f3c0 000b 	ubfx	r0, r0, #0, #12
3000b278:	f000 f8c4 	bl	3000b404 <__popcountsi2>
3000b27c:	f100 0a01 	add.w	sl, r0, #1
3000b280:	f10b 0002 	add.w	r0, fp, #2
3000b284:	2301      	movs	r3, #1
3000b286:	4284      	cmp	r4, r0
3000b288:	d358      	bcc.n	3000b33c <do_stack_backtrace+0x20c>
3000b28a:	e9cd 3303 	strd	r3, r3, [sp, #12]
3000b28e:	f04f 0902 	mov.w	r9, #2
3000b292:	4e43      	ldr	r6, [pc, #268]	; (3000b3a0 <do_stack_backtrace+0x270>)
3000b294:	4d43      	ldr	r5, [pc, #268]	; (3000b3a4 <do_stack_backtrace+0x274>)
3000b296:	f24b 0780 	movw	r7, #45184	; 0xb080
3000b29a:	f8df 8134 	ldr.w	r8, [pc, #308]	; 3000b3d0 <do_stack_backtrace+0x2a0>
3000b29e:	464b      	mov	r3, r9
3000b2a0:	445b      	add	r3, fp
3000b2a2:	8800      	ldrh	r0, [r0, #0]
3000b2a4:	885a      	ldrh	r2, [r3, #2]
3000b2a6:	0ac3      	lsrs	r3, r0, #11
3000b2a8:	3b1d      	subs	r3, #29
3000b2aa:	2b02      	cmp	r3, #2
3000b2ac:	d913      	bls.n	3000b2d6 <do_stack_backtrace+0x1a6>
3000b2ae:	f400 437f 	and.w	r3, r0, #65280	; 0xff00
3000b2b2:	f5b3 4f35 	cmp.w	r3, #46336	; 0xb500
3000b2b6:	d049      	beq.n	3000b34c <do_stack_backtrace+0x21c>
3000b2b8:	f020 037f 	bic.w	r3, r0, #127	; 0x7f
3000b2bc:	42bb      	cmp	r3, r7
3000b2be:	d102      	bne.n	3000b2c6 <do_stack_backtrace+0x196>
3000b2c0:	f000 007f 	and.w	r0, r0, #127	; 0x7f
3000b2c4:	4482      	add	sl, r0
3000b2c6:	f109 0902 	add.w	r9, r9, #2
3000b2ca:	eb0b 0009 	add.w	r0, fp, r9
3000b2ce:	464b      	mov	r3, r9
3000b2d0:	4284      	cmp	r4, r0
3000b2d2:	d2e5      	bcs.n	3000b2a0 <do_stack_backtrace+0x170>
3000b2d4:	e777      	b.n	3000b1c6 <do_stack_backtrace+0x96>
3000b2d6:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
3000b2da:	f109 0902 	add.w	r9, r9, #2
3000b2de:	ea00 0306 	and.w	r3, r0, r6
3000b2e2:	42ab      	cmp	r3, r5
3000b2e4:	d02c      	beq.n	3000b340 <do_stack_backtrace+0x210>
3000b2e6:	ea00 0308 	and.w	r3, r0, r8
3000b2ea:	4a34      	ldr	r2, [pc, #208]	; (3000b3bc <do_stack_backtrace+0x28c>)
3000b2ec:	4293      	cmp	r3, r2
3000b2ee:	d009      	beq.n	3000b304 <do_stack_backtrace+0x1d4>
3000b2f0:	4b33      	ldr	r3, [pc, #204]	; (3000b3c0 <do_stack_backtrace+0x290>)
3000b2f2:	4a34      	ldr	r2, [pc, #208]	; (3000b3c4 <do_stack_backtrace+0x294>)
3000b2f4:	4003      	ands	r3, r0
3000b2f6:	4293      	cmp	r3, r2
3000b2f8:	d002      	beq.n	3000b300 <do_stack_backtrace+0x1d0>
3000b2fa:	4a33      	ldr	r2, [pc, #204]	; (3000b3c8 <do_stack_backtrace+0x298>)
3000b2fc:	4293      	cmp	r3, r2
3000b2fe:	d1e2      	bne.n	3000b2c6 <do_stack_backtrace+0x196>
3000b300:	b2c0      	uxtb	r0, r0
3000b302:	e7df      	b.n	3000b2c4 <do_stack_backtrace+0x194>
3000b304:	0d83      	lsrs	r3, r0, #22
3000b306:	f3c0 11c0 	ubfx	r1, r0, #7, #1
3000b30a:	0ac2      	lsrs	r2, r0, #11
3000b30c:	f000 007f 	and.w	r0, r0, #127	; 0x7f
3000b310:	f003 0310 	and.w	r3, r3, #16
3000b314:	f002 020e 	and.w	r2, r2, #14
3000b318:	3080      	adds	r0, #128	; 0x80
3000b31a:	f1c3 031e 	rsb	r3, r3, #30
3000b31e:	430a      	orrs	r2, r1
3000b320:	1a9b      	subs	r3, r3, r2
3000b322:	4098      	lsls	r0, r3
3000b324:	d4cf      	bmi.n	3000b2c6 <do_stack_backtrace+0x196>
3000b326:	e7cd      	b.n	3000b2c4 <do_stack_backtrace+0x194>
3000b328:	b2c0      	uxtb	r0, r0
3000b32a:	f000 f86b 	bl	3000b404 <__popcountsi2>
3000b32e:	f100 0a01 	add.w	sl, r0, #1
3000b332:	f10b 0002 	add.w	r0, fp, #2
3000b336:	2301      	movs	r3, #1
3000b338:	4284      	cmp	r4, r0
3000b33a:	d2a6      	bcs.n	3000b28a <do_stack_backtrace+0x15a>
3000b33c:	9304      	str	r3, [sp, #16]
3000b33e:	e746      	b.n	3000b1ce <do_stack_backtrace+0x9e>
3000b340:	f3c0 000b 	ubfx	r0, r0, #0, #12
3000b344:	f000 f85e 	bl	3000b404 <__popcountsi2>
3000b348:	3001      	adds	r0, #1
3000b34a:	e7bb      	b.n	3000b2c4 <do_stack_backtrace+0x194>
3000b34c:	b2c0      	uxtb	r0, r0
3000b34e:	f000 f859 	bl	3000b404 <__popcountsi2>
3000b352:	3001      	adds	r0, #1
3000b354:	e7b6      	b.n	3000b2c4 <do_stack_backtrace+0x194>
3000b356:	9c05      	ldr	r4, [sp, #20]
3000b358:	4623      	mov	r3, r4
3000b35a:	e73f      	b.n	3000b1dc <do_stack_backtrace+0xac>
3000b35c:	f06f 0301 	mvn.w	r3, #1
3000b360:	e76c      	b.n	3000b23c <do_stack_backtrace+0x10c>
3000b362:	f06f 0303 	mvn.w	r3, #3
3000b366:	e769      	b.n	3000b23c <do_stack_backtrace+0x10c>
3000b368:	466b      	mov	r3, sp
3000b36a:	9300      	str	r3, [sp, #0]
3000b36c:	467c      	mov	r4, pc
3000b36e:	4673      	mov	r3, lr
3000b370:	9305      	str	r3, [sp, #20]
3000b372:	f3ef 8303 	mrs	r3, PSR
3000b376:	e6e7      	b.n	3000b148 <do_stack_backtrace+0x18>
3000b378:	9902      	ldr	r1, [sp, #8]
3000b37a:	480f      	ldr	r0, [pc, #60]	; (3000b3b8 <do_stack_backtrace+0x288>)
3000b37c:	f7fe fea8 	bl	3000a0d0 <DiagPrintf>
3000b380:	4812      	ldr	r0, [pc, #72]	; (3000b3cc <do_stack_backtrace+0x29c>)
3000b382:	b007      	add	sp, #28
3000b384:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
3000b388:	f7fe bea2 	b.w	3000a0d0 <DiagPrintf>
3000b38c:	3000d580 	.word	0x3000d580
3000b390:	3000d5b4 	.word	0x3000d5b4
3000b394:	3000d5cc 	.word	0x3000d5cc
3000b398:	3000d600 	.word	0x3000d600
3000b39c:	3000b12d 	.word	0x3000b12d
3000b3a0:	fffff000 	.word	0xfffff000
3000b3a4:	e92d4000 	.word	0xe92d4000
3000b3a8:	0ffffff0 	.word	0x0ffffff0
3000b3ac:	012fff10 	.word	0x012fff10
3000b3b0:	f800d000 	.word	0xf800d000
3000b3b4:	f000c000 	.word	0xf000c000
3000b3b8:	3000d640 	.word	0x3000d640
3000b3bc:	f1ad0d00 	.word	0xf1ad0d00
3000b3c0:	ffbf0f00 	.word	0xffbf0f00
3000b3c4:	ed2d0b00 	.word	0xed2d0b00
3000b3c8:	ed2d0a00 	.word	0xed2d0a00
3000b3cc:	3000b718 	.word	0x3000b718
3000b3d0:	fbff8f00 	.word	0xfbff8f00

3000b3d4 <__aeabi_uldivmod>:
3000b3d4:	b953      	cbnz	r3, 3000b3ec <__aeabi_uldivmod+0x18>
3000b3d6:	b94a      	cbnz	r2, 3000b3ec <__aeabi_uldivmod+0x18>
3000b3d8:	2900      	cmp	r1, #0
3000b3da:	bf08      	it	eq
3000b3dc:	2800      	cmpeq	r0, #0
3000b3de:	bf1c      	itt	ne
3000b3e0:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
3000b3e4:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
3000b3e8:	f000 b974 	b.w	3000b6d4 <__aeabi_idiv0>
3000b3ec:	f1ad 0c08 	sub.w	ip, sp, #8
3000b3f0:	e96d ce04 	strd	ip, lr, [sp, #-16]!
3000b3f4:	f000 f819 	bl	3000b42a <__udivmoddi4>
3000b3f8:	f8dd e004 	ldr.w	lr, [sp, #4]
3000b3fc:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
3000b400:	b004      	add	sp, #16
3000b402:	4770      	bx	lr

3000b404 <__popcountsi2>:
3000b404:	0843      	lsrs	r3, r0, #1
3000b406:	f003 3355 	and.w	r3, r3, #1431655765	; 0x55555555
3000b40a:	1ac0      	subs	r0, r0, r3
3000b40c:	f000 3333 	and.w	r3, r0, #858993459	; 0x33333333
3000b410:	0880      	lsrs	r0, r0, #2
3000b412:	f000 3033 	and.w	r0, r0, #858993459	; 0x33333333
3000b416:	4418      	add	r0, r3
3000b418:	f04f 3301 	mov.w	r3, #16843009	; 0x1010101
3000b41c:	eb00 1010 	add.w	r0, r0, r0, lsr #4
3000b420:	f000 300f 	and.w	r0, r0, #252645135	; 0xf0f0f0f
3000b424:	4358      	muls	r0, r3
3000b426:	0e00      	lsrs	r0, r0, #24
3000b428:	4770      	bx	lr

3000b42a <__udivmoddi4>:
3000b42a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
3000b42e:	9e09      	ldr	r6, [sp, #36]	; 0x24
3000b430:	4688      	mov	r8, r1
3000b432:	468e      	mov	lr, r1
3000b434:	4615      	mov	r5, r2
3000b436:	4604      	mov	r4, r0
3000b438:	4619      	mov	r1, r3
3000b43a:	2b00      	cmp	r3, #0
3000b43c:	f040 80c6 	bne.w	3000b5cc <__udivmoddi4+0x1a2>
3000b440:	4542      	cmp	r2, r8
3000b442:	fab2 f782 	clz	r7, r2
3000b446:	d946      	bls.n	3000b4d6 <__udivmoddi4+0xac>
3000b448:	b14f      	cbz	r7, 3000b45e <__udivmoddi4+0x34>
3000b44a:	f1c7 0c20 	rsb	ip, r7, #32
3000b44e:	fa08 f307 	lsl.w	r3, r8, r7
3000b452:	40bd      	lsls	r5, r7
3000b454:	40bc      	lsls	r4, r7
3000b456:	fa20 fc0c 	lsr.w	ip, r0, ip
3000b45a:	ea4c 0e03 	orr.w	lr, ip, r3
3000b45e:	ea4f 4815 	mov.w	r8, r5, lsr #16
3000b462:	fa1f fc85 	uxth.w	ip, r5
3000b466:	0c22      	lsrs	r2, r4, #16
3000b468:	fbbe f9f8 	udiv	r9, lr, r8
3000b46c:	fb08 e319 	mls	r3, r8, r9, lr
3000b470:	fb09 fa0c 	mul.w	sl, r9, ip
3000b474:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
3000b478:	459a      	cmp	sl, r3
3000b47a:	d928      	bls.n	3000b4ce <__udivmoddi4+0xa4>
3000b47c:	18eb      	adds	r3, r5, r3
3000b47e:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
3000b482:	d204      	bcs.n	3000b48e <__udivmoddi4+0x64>
3000b484:	459a      	cmp	sl, r3
3000b486:	d902      	bls.n	3000b48e <__udivmoddi4+0x64>
3000b488:	f1a9 0002 	sub.w	r0, r9, #2
3000b48c:	442b      	add	r3, r5
3000b48e:	eba3 030a 	sub.w	r3, r3, sl
3000b492:	b2a4      	uxth	r4, r4
3000b494:	fbb3 f2f8 	udiv	r2, r3, r8
3000b498:	fb08 3312 	mls	r3, r8, r2, r3
3000b49c:	fb02 fc0c 	mul.w	ip, r2, ip
3000b4a0:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
3000b4a4:	45a4      	cmp	ip, r4
3000b4a6:	d914      	bls.n	3000b4d2 <__udivmoddi4+0xa8>
3000b4a8:	192c      	adds	r4, r5, r4
3000b4aa:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
3000b4ae:	d203      	bcs.n	3000b4b8 <__udivmoddi4+0x8e>
3000b4b0:	45a4      	cmp	ip, r4
3000b4b2:	d901      	bls.n	3000b4b8 <__udivmoddi4+0x8e>
3000b4b4:	1e93      	subs	r3, r2, #2
3000b4b6:	442c      	add	r4, r5
3000b4b8:	eba4 040c 	sub.w	r4, r4, ip
3000b4bc:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
3000b4c0:	b11e      	cbz	r6, 3000b4ca <__udivmoddi4+0xa0>
3000b4c2:	40fc      	lsrs	r4, r7
3000b4c4:	2300      	movs	r3, #0
3000b4c6:	6034      	str	r4, [r6, #0]
3000b4c8:	6073      	str	r3, [r6, #4]
3000b4ca:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
3000b4ce:	4648      	mov	r0, r9
3000b4d0:	e7dd      	b.n	3000b48e <__udivmoddi4+0x64>
3000b4d2:	4613      	mov	r3, r2
3000b4d4:	e7f0      	b.n	3000b4b8 <__udivmoddi4+0x8e>
3000b4d6:	b902      	cbnz	r2, 3000b4da <__udivmoddi4+0xb0>
3000b4d8:	deff      	udf	#255	; 0xff
3000b4da:	bb8f      	cbnz	r7, 3000b540 <__udivmoddi4+0x116>
3000b4dc:	eba8 0302 	sub.w	r3, r8, r2
3000b4e0:	2101      	movs	r1, #1
3000b4e2:	ea4f 4e15 	mov.w	lr, r5, lsr #16
3000b4e6:	b2aa      	uxth	r2, r5
3000b4e8:	0c20      	lsrs	r0, r4, #16
3000b4ea:	fbb3 fcfe 	udiv	ip, r3, lr
3000b4ee:	fb0e 331c 	mls	r3, lr, ip, r3
3000b4f2:	fb0c f802 	mul.w	r8, ip, r2
3000b4f6:	ea40 4303 	orr.w	r3, r0, r3, lsl #16
3000b4fa:	4598      	cmp	r8, r3
3000b4fc:	d962      	bls.n	3000b5c4 <__udivmoddi4+0x19a>
3000b4fe:	18eb      	adds	r3, r5, r3
3000b500:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
3000b504:	d204      	bcs.n	3000b510 <__udivmoddi4+0xe6>
3000b506:	4598      	cmp	r8, r3
3000b508:	d902      	bls.n	3000b510 <__udivmoddi4+0xe6>
3000b50a:	f1ac 0002 	sub.w	r0, ip, #2
3000b50e:	442b      	add	r3, r5
3000b510:	eba3 0308 	sub.w	r3, r3, r8
3000b514:	b2a4      	uxth	r4, r4
3000b516:	fbb3 fcfe 	udiv	ip, r3, lr
3000b51a:	fb0e 331c 	mls	r3, lr, ip, r3
3000b51e:	fb0c f202 	mul.w	r2, ip, r2
3000b522:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
3000b526:	42a2      	cmp	r2, r4
3000b528:	d94e      	bls.n	3000b5c8 <__udivmoddi4+0x19e>
3000b52a:	192c      	adds	r4, r5, r4
3000b52c:	f10c 33ff 	add.w	r3, ip, #4294967295	; 0xffffffff
3000b530:	d204      	bcs.n	3000b53c <__udivmoddi4+0x112>
3000b532:	42a2      	cmp	r2, r4
3000b534:	d902      	bls.n	3000b53c <__udivmoddi4+0x112>
3000b536:	f1ac 0302 	sub.w	r3, ip, #2
3000b53a:	442c      	add	r4, r5
3000b53c:	1aa4      	subs	r4, r4, r2
3000b53e:	e7bd      	b.n	3000b4bc <__udivmoddi4+0x92>
3000b540:	f1c7 0c20 	rsb	ip, r7, #32
3000b544:	40bd      	lsls	r5, r7
3000b546:	fa08 f307 	lsl.w	r3, r8, r7
3000b54a:	40bc      	lsls	r4, r7
3000b54c:	fa28 f90c 	lsr.w	r9, r8, ip
3000b550:	ea4f 4e15 	mov.w	lr, r5, lsr #16
3000b554:	fa20 fc0c 	lsr.w	ip, r0, ip
3000b558:	ea4c 0203 	orr.w	r2, ip, r3
3000b55c:	b2ab      	uxth	r3, r5
3000b55e:	fbb9 fcfe 	udiv	ip, r9, lr
3000b562:	0c11      	lsrs	r1, r2, #16
3000b564:	fb0e 901c 	mls	r0, lr, ip, r9
3000b568:	fb0c f803 	mul.w	r8, ip, r3
3000b56c:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
3000b570:	4580      	cmp	r8, r0
3000b572:	d923      	bls.n	3000b5bc <__udivmoddi4+0x192>
3000b574:	1828      	adds	r0, r5, r0
3000b576:	f10c 31ff 	add.w	r1, ip, #4294967295	; 0xffffffff
3000b57a:	d204      	bcs.n	3000b586 <__udivmoddi4+0x15c>
3000b57c:	4580      	cmp	r8, r0
3000b57e:	d902      	bls.n	3000b586 <__udivmoddi4+0x15c>
3000b580:	f1ac 0102 	sub.w	r1, ip, #2
3000b584:	4428      	add	r0, r5
3000b586:	eba0 0008 	sub.w	r0, r0, r8
3000b58a:	b292      	uxth	r2, r2
3000b58c:	fbb0 fcfe 	udiv	ip, r0, lr
3000b590:	fb0e 001c 	mls	r0, lr, ip, r0
3000b594:	fb0c f803 	mul.w	r8, ip, r3
3000b598:	ea42 4300 	orr.w	r3, r2, r0, lsl #16
3000b59c:	4598      	cmp	r8, r3
3000b59e:	d90f      	bls.n	3000b5c0 <__udivmoddi4+0x196>
3000b5a0:	18eb      	adds	r3, r5, r3
3000b5a2:	f10c 32ff 	add.w	r2, ip, #4294967295	; 0xffffffff
3000b5a6:	d204      	bcs.n	3000b5b2 <__udivmoddi4+0x188>
3000b5a8:	4598      	cmp	r8, r3
3000b5aa:	d902      	bls.n	3000b5b2 <__udivmoddi4+0x188>
3000b5ac:	f1ac 0202 	sub.w	r2, ip, #2
3000b5b0:	442b      	add	r3, r5
3000b5b2:	eba3 0308 	sub.w	r3, r3, r8
3000b5b6:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
3000b5ba:	e792      	b.n	3000b4e2 <__udivmoddi4+0xb8>
3000b5bc:	4661      	mov	r1, ip
3000b5be:	e7e2      	b.n	3000b586 <__udivmoddi4+0x15c>
3000b5c0:	4662      	mov	r2, ip
3000b5c2:	e7f6      	b.n	3000b5b2 <__udivmoddi4+0x188>
3000b5c4:	4660      	mov	r0, ip
3000b5c6:	e7a3      	b.n	3000b510 <__udivmoddi4+0xe6>
3000b5c8:	4663      	mov	r3, ip
3000b5ca:	e7b7      	b.n	3000b53c <__udivmoddi4+0x112>
3000b5cc:	4543      	cmp	r3, r8
3000b5ce:	d905      	bls.n	3000b5dc <__udivmoddi4+0x1b2>
3000b5d0:	b10e      	cbz	r6, 3000b5d6 <__udivmoddi4+0x1ac>
3000b5d2:	e9c6 0800 	strd	r0, r8, [r6]
3000b5d6:	2100      	movs	r1, #0
3000b5d8:	4608      	mov	r0, r1
3000b5da:	e776      	b.n	3000b4ca <__udivmoddi4+0xa0>
3000b5dc:	fab3 fc83 	clz	ip, r3
3000b5e0:	f1bc 0f00 	cmp.w	ip, #0
3000b5e4:	d110      	bne.n	3000b608 <__udivmoddi4+0x1de>
3000b5e6:	4543      	cmp	r3, r8
3000b5e8:	d301      	bcc.n	3000b5ee <__udivmoddi4+0x1c4>
3000b5ea:	4282      	cmp	r2, r0
3000b5ec:	d80a      	bhi.n	3000b604 <__udivmoddi4+0x1da>
3000b5ee:	1a84      	subs	r4, r0, r2
3000b5f0:	eb68 0303 	sbc.w	r3, r8, r3
3000b5f4:	2001      	movs	r0, #1
3000b5f6:	469e      	mov	lr, r3
3000b5f8:	2e00      	cmp	r6, #0
3000b5fa:	d068      	beq.n	3000b6ce <__udivmoddi4+0x2a4>
3000b5fc:	e9c6 4e00 	strd	r4, lr, [r6]
3000b600:	2100      	movs	r1, #0
3000b602:	e762      	b.n	3000b4ca <__udivmoddi4+0xa0>
3000b604:	4660      	mov	r0, ip
3000b606:	e7f7      	b.n	3000b5f8 <__udivmoddi4+0x1ce>
3000b608:	f1cc 0e20 	rsb	lr, ip, #32
3000b60c:	fa03 f30c 	lsl.w	r3, r3, ip
3000b610:	fa02 f50c 	lsl.w	r5, r2, ip
3000b614:	fa00 f70c 	lsl.w	r7, r0, ip
3000b618:	fa22 f40e 	lsr.w	r4, r2, lr
3000b61c:	fa28 fb0e 	lsr.w	fp, r8, lr
3000b620:	fa20 f10e 	lsr.w	r1, r0, lr
3000b624:	431c      	orrs	r4, r3
3000b626:	fa08 f30c 	lsl.w	r3, r8, ip
3000b62a:	ea4f 4914 	mov.w	r9, r4, lsr #16
3000b62e:	4319      	orrs	r1, r3
3000b630:	b2a3      	uxth	r3, r4
3000b632:	0c0a      	lsrs	r2, r1, #16
3000b634:	fbbb f8f9 	udiv	r8, fp, r9
3000b638:	fb09 bb18 	mls	fp, r9, r8, fp
3000b63c:	fb08 fa03 	mul.w	sl, r8, r3
3000b640:	ea42 420b 	orr.w	r2, r2, fp, lsl #16
3000b644:	4592      	cmp	sl, r2
3000b646:	d93e      	bls.n	3000b6c6 <__udivmoddi4+0x29c>
3000b648:	18a2      	adds	r2, r4, r2
3000b64a:	f108 30ff 	add.w	r0, r8, #4294967295	; 0xffffffff
3000b64e:	d204      	bcs.n	3000b65a <__udivmoddi4+0x230>
3000b650:	4592      	cmp	sl, r2
3000b652:	d902      	bls.n	3000b65a <__udivmoddi4+0x230>
3000b654:	f1a8 0002 	sub.w	r0, r8, #2
3000b658:	4422      	add	r2, r4
3000b65a:	eba2 020a 	sub.w	r2, r2, sl
3000b65e:	b289      	uxth	r1, r1
3000b660:	fbb2 f8f9 	udiv	r8, r2, r9
3000b664:	fb09 2218 	mls	r2, r9, r8, r2
3000b668:	fb08 f303 	mul.w	r3, r8, r3
3000b66c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
3000b670:	4293      	cmp	r3, r2
3000b672:	d92a      	bls.n	3000b6ca <__udivmoddi4+0x2a0>
3000b674:	18a2      	adds	r2, r4, r2
3000b676:	f108 31ff 	add.w	r1, r8, #4294967295	; 0xffffffff
3000b67a:	d204      	bcs.n	3000b686 <__udivmoddi4+0x25c>
3000b67c:	4293      	cmp	r3, r2
3000b67e:	d902      	bls.n	3000b686 <__udivmoddi4+0x25c>
3000b680:	f1a8 0102 	sub.w	r1, r8, #2
3000b684:	4422      	add	r2, r4
3000b686:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
3000b68a:	1ad2      	subs	r2, r2, r3
3000b68c:	fba0 9805 	umull	r9, r8, r0, r5
3000b690:	4542      	cmp	r2, r8
3000b692:	464b      	mov	r3, r9
3000b694:	4641      	mov	r1, r8
3000b696:	d302      	bcc.n	3000b69e <__udivmoddi4+0x274>
3000b698:	d106      	bne.n	3000b6a8 <__udivmoddi4+0x27e>
3000b69a:	454f      	cmp	r7, r9
3000b69c:	d204      	bcs.n	3000b6a8 <__udivmoddi4+0x27e>
3000b69e:	3801      	subs	r0, #1
3000b6a0:	ebb9 0305 	subs.w	r3, r9, r5
3000b6a4:	eb68 0104 	sbc.w	r1, r8, r4
3000b6a8:	b18e      	cbz	r6, 3000b6ce <__udivmoddi4+0x2a4>
3000b6aa:	1afc      	subs	r4, r7, r3
3000b6ac:	eb62 0701 	sbc.w	r7, r2, r1
3000b6b0:	fa07 fe0e 	lsl.w	lr, r7, lr
3000b6b4:	fa24 f30c 	lsr.w	r3, r4, ip
3000b6b8:	fa27 f70c 	lsr.w	r7, r7, ip
3000b6bc:	ea4e 0303 	orr.w	r3, lr, r3
3000b6c0:	e9c6 3700 	strd	r3, r7, [r6]
3000b6c4:	e79c      	b.n	3000b600 <__udivmoddi4+0x1d6>
3000b6c6:	4640      	mov	r0, r8
3000b6c8:	e7c7      	b.n	3000b65a <__udivmoddi4+0x230>
3000b6ca:	4641      	mov	r1, r8
3000b6cc:	e7db      	b.n	3000b686 <__udivmoddi4+0x25c>
3000b6ce:	4631      	mov	r1, r6
3000b6d0:	e6fb      	b.n	3000b4ca <__udivmoddi4+0xa0>
	...

3000b6d4 <__aeabi_idiv0>:
3000b6d4:	4770      	bx	lr
3000b6d6:	bf00      	nop

3000b6d8 <__SBOOT_Validate_Algorithm_veneer>:
3000b6d8:	f85f f000 	ldr.w	pc, [pc]	; 3000b6dc <__SBOOT_Validate_Algorithm_veneer+0x4>
3000b6dc:	000033ed 	.word	0x000033ed

3000b6e0 <__SBOOT_Validate_ImgHash_veneer>:
3000b6e0:	f85f f000 	ldr.w	pc, [pc]	; 3000b6e4 <__SBOOT_Validate_ImgHash_veneer+0x4>
3000b6e4:	00003541 	.word	0x00003541

3000b6e8 <__SBOOT_Validate_PubKey_veneer>:
3000b6e8:	f85f f000 	ldr.w	pc, [pc]	; 3000b6ec <__SBOOT_Validate_PubKey_veneer+0x4>
3000b6ec:	00003495 	.word	0x00003495

3000b6f0 <__SBOOT_Validate_Signature_veneer>:
3000b6f0:	f85f f000 	ldr.w	pc, [pc]	; 3000b6f4 <__SBOOT_Validate_Signature_veneer+0x4>
3000b6f4:	00003431 	.word	0x00003431

3000b6f8 <__SBOOT_GetMdType_veneer>:
3000b6f8:	f85f f000 	ldr.w	pc, [pc]	; 3000b6fc <__SBOOT_GetMdType_veneer+0x4>
3000b6fc:	0000319d 	.word	0x0000319d

3000b700 <____wrap_memset_veneer>:
3000b700:	f85f f000 	ldr.w	pc, [pc]	; 3000b704 <____wrap_memset_veneer+0x4>
3000b704:	00012efd 	.word	0x00012efd

3000b708 <__INT_HardFault_C_veneer>:
3000b708:	f85f f000 	ldr.w	pc, [pc]	; 3000b70c <__INT_HardFault_C_veneer+0x4>
3000b70c:	0000d8ed 	.word	0x0000d8ed
3000b710:	74696e49 	.word	0x74696e49
3000b714:	0d425720 	.word	0x0d425720
3000b718:	0000000a 	.word	0x0000000a
3000b71c:	544f4f42 	.word	0x544f4f42
3000b720:	00000000 	.word	0x00000000
3000b724:	6e496552 	.word	0x6e496552
3000b728:	44207469 	.word	0x44207469
3000b72c:	0a0d5244 	.word	0x0a0d5244
3000b730:	00000000 	.word	0x00000000
3000b734:	32474d49 	.word	0x32474d49
3000b738:	4f4f4220 	.word	0x4f4f4220
3000b73c:	72662054 	.word	0x72662054
3000b740:	4f206d6f 	.word	0x4f206d6f
3000b744:	25204154 	.word	0x25204154
3000b748:	00000a64 	.word	0x00000a64
3000b74c:	20344d4b 	.word	0x20344d4b
3000b750:	544f4f42 	.word	0x544f4f42
3000b754:	41455220 	.word	0x41455220
3000b758:	204e4f53 	.word	0x204e4f53
3000b75c:	203a7825 	.word	0x203a7825
3000b760:	00000000 	.word	0x00000000
3000b764:	00207325 	.word	0x00207325
3000b768:	00000023 	.word	0x00000023
3000b76c:	54454447 	.word	0x54454447
3000b770:	44565f31 	.word	0x44565f31
3000b774:	505f3831 	.word	0x505f3831
3000b778:	0000534f 	.word	0x0000534f
3000b77c:	54454447 	.word	0x54454447
3000b780:	44565f31 	.word	0x44565f31
3000b784:	4e5f3831 	.word	0x4e5f3831
3000b788:	00004745 	.word	0x00004745
3000b78c:	54454447 	.word	0x54454447
3000b790:	3044565f 	.word	0x3044565f
3000b794:	4f505f39 	.word	0x4f505f39
3000b798:	00000053 	.word	0x00000053
3000b79c:	54454447 	.word	0x54454447
3000b7a0:	3044565f 	.word	0x3044565f
3000b7a4:	454e5f39 	.word	0x454e5f39
3000b7a8:	00000047 	.word	0x00000047
3000b7ac:	575f5041 	.word	0x575f5041
3000b7b0:	324d5241 	.word	0x324d5241
3000b7b4:	49524550 	.word	0x49524550
3000b7b8:	00000000 	.word	0x00000000
3000b7bc:	5f344d4b 	.word	0x5f344d4b
3000b7c0:	4d524157 	.word	0x4d524157
3000b7c4:	52455032 	.word	0x52455032
3000b7c8:	00000049 	.word	0x00000049
3000b7cc:	5f304d4b 	.word	0x5f304d4b
3000b7d0:	4d524157 	.word	0x4d524157
3000b7d4:	52455032 	.word	0x52455032
3000b7d8:	00000049 	.word	0x00000049
3000b7dc:	34474457 	.word	0x34474457
3000b7e0:	00000000 	.word	0x00000000
3000b7e4:	33474457 	.word	0x33474457
3000b7e8:	00000000 	.word	0x00000000
3000b7ec:	32474457 	.word	0x32474457
3000b7f0:	00000000 	.word	0x00000000
3000b7f4:	31474457 	.word	0x31474457
3000b7f8:	00000000 	.word	0x00000000
3000b7fc:	47445749 	.word	0x47445749
3000b800:	00000000 	.word	0x00000000
3000b804:	59535041 	.word	0x59535041
3000b808:	00000053 	.word	0x00000053
3000b80c:	5953504e 	.word	0x5953504e
3000b810:	00000053 	.word	0x00000053
3000b814:	5953504c 	.word	0x5953504c
3000b818:	00000053 	.word	0x00000053
3000b81c:	504c5344 	.word	0x504c5344
3000b820:	00000000 	.word	0x00000000
3000b824:	5f524f42 	.word	0x5f524f42
3000b828:	00434341 	.word	0x00434341
3000b82c:	00524f42 	.word	0x00524f42
3000b830:	004d4854 	.word	0x004d4854
3000b834:	74696e49 	.word	0x74696e49
3000b838:	206c6169 	.word	0x206c6169
3000b83c:	65776f50 	.word	0x65776f50
3000b840:	6e6f2072 	.word	0x6e6f2072
3000b844:	0000000a 	.word	0x0000000a
3000b848:	4e4b4e55 	.word	0x4e4b4e55
3000b84c:	0a4e574f 	.word	0x0a4e574f
3000b850:	00000000 	.word	0x00000000
3000b854:	61736944 	.word	0x61736944
3000b858:	20656c62 	.word	0x20656c62
3000b85c:	20304d4b 	.word	0x20304d4b
3000b860:	746f6f42 	.word	0x746f6f42
3000b864:	6e692020 	.word	0x6e692020
3000b868:	73655420 	.word	0x73655420
3000b86c:	6f6d2074 	.word	0x6f6d2074
3000b870:	0a0d6564 	.word	0x0a0d6564
3000b874:	00000000 	.word	0x00000000
3000b878:	61707942 	.word	0x61707942
3000b87c:	4f207373 	.word	0x4f207373
3000b880:	61205054 	.word	0x61205054
3000b884:	6c6f7475 	.word	0x6c6f7475
3000b888:	0d64616f 	.word	0x0d64616f
3000b88c:	0000000a 	.word	0x0000000a
3000b890:	6d6f682f 	.word	0x6d6f682f
3000b894:	69712f65 	.word	0x69712f65
3000b898:	6568735f 	.word	0x6568735f
3000b89c:	656a2f6e 	.word	0x656a2f6e
3000b8a0:	63697373 	.word	0x63697373
3000b8a4:	2e362f61 	.word	0x2e362f61
3000b8a8:	6f732f36 	.word	0x6f732f36
3000b8ac:	65637275 	.word	0x65637275
3000b8b0:	69662f73 	.word	0x69662f73
3000b8b4:	61776d72 	.word	0x61776d72
3000b8b8:	632f6572 	.word	0x632f6572
3000b8bc:	6f706d6f 	.word	0x6f706d6f
3000b8c0:	746e656e 	.word	0x746e656e
3000b8c4:	636f732f 	.word	0x636f732f
3000b8c8:	656d612f 	.word	0x656d612f
3000b8cc:	6d736162 	.word	0x6d736162
3000b8d0:	2f747261 	.word	0x2f747261
3000b8d4:	746f6f62 	.word	0x746f6f62
3000b8d8:	64616f6c 	.word	0x64616f6c
3000b8dc:	622f7265 	.word	0x622f7265
3000b8e0:	6c746f6f 	.word	0x6c746f6f
3000b8e4:	6564616f 	.word	0x6564616f
3000b8e8:	70685f72 	.word	0x70685f72
3000b8ec:	0000632e 	.word	0x0000632e
3000b8f0:	4620504e 	.word	0x4620504e
3000b8f4:	20716572 	.word	0x20716572
3000b8f8:	20756c25 	.word	0x20756c25
3000b8fc:	0a7a484d 	.word	0x0a7a484d
3000b900:	00000000 	.word	0x00000000
3000b904:	46205041 	.word	0x46205041
3000b908:	20716572 	.word	0x20716572
3000b90c:	20756c25 	.word	0x20756c25
3000b910:	0a7a484d 	.word	0x0a7a484d
3000b914:	00000000 	.word	0x00000000
3000b918:	4620504c 	.word	0x4620504c
3000b91c:	20716572 	.word	0x20716572
3000b920:	20756c25 	.word	0x20756c25
3000b924:	0a7a484d 	.word	0x0a7a484d
3000b928:	00000000 	.word	0x00000000
3000b92c:	31474d49 	.word	0x31474d49
3000b930:	544e4520 	.word	0x544e4520
3000b934:	4d205245 	.word	0x4d205245
3000b938:	5b3a5053 	.word	0x5b3a5053
3000b93c:	78383025 	.word	0x78383025
3000b940:	00000a5d 	.word	0x00000a5d
3000b944:	6c697542 	.word	0x6c697542
3000b948:	69542064 	.word	0x69542064
3000b94c:	203a656d 	.word	0x203a656d
3000b950:	25207325 	.word	0x25207325
3000b954:	00000a73 	.word	0x00000a73
3000b958:	353a3331 	.word	0x353a3331
3000b95c:	39333a32 	.word	0x39333a32
3000b960:	00000000 	.word	0x00000000
3000b964:	206e614a 	.word	0x206e614a
3000b968:	32203232 	.word	0x32203232
3000b96c:	00353230 	.word	0x00353230
3000b970:	31474d49 	.word	0x31474d49
3000b974:	43455320 	.word	0x43455320
3000b978:	20455255 	.word	0x20455255
3000b97c:	54415453 	.word	0x54415453
3000b980:	25203a45 	.word	0x25203a45
3000b984:	00000a64 	.word	0x00000a64
3000b988:	74696e49 	.word	0x74696e49
3000b98c:	52535020 	.word	0x52535020
3000b990:	0a0d4d41 	.word	0x0a0d4d41
3000b994:	00000000 	.word	0x00000000
3000b998:	20746573 	.word	0x20746573
3000b99c:	206d6670 	.word	0x206d6670
3000b9a0:	6c696166 	.word	0x6c696166
3000b9a4:	00000a0d 	.word	0x00000a0d
3000b9a8:	4f525245 	.word	0x4f525245
3000b9ac:	20212152 	.word	0x20212152
3000b9b0:	756f6853 	.word	0x756f6853
3000b9b4:	4e20646c 	.word	0x4e20646c
3000b9b8:	6520746f 	.word	0x6520746f
3000b9bc:	6c62616e 	.word	0x6c62616e
3000b9c0:	654d2065 	.word	0x654d2065
3000b9c4:	7277536d 	.word	0x7277536d
3000b9c8:	6c6e4f5f 	.word	0x6c6e4f5f
3000b9cc:	6e692079 	.word	0x6e692079
3000b9d0:	52444420 	.word	0x52444420
3000b9d4:	69684320 	.word	0x69684320
3000b9d8:	21212170 	.word	0x21212170
3000b9dc:	00000a0d 	.word	0x00000a0d
3000b9e0:	74696e49 	.word	0x74696e49
3000b9e4:	52444420 	.word	0x52444420
3000b9e8:	000a0d32 	.word	0x000a0d32
3000b9ec:	74696e49 	.word	0x74696e49
3000b9f0:	52444420 	.word	0x52444420
3000b9f4:	000a0d33 	.word	0x000a0d33
3000b9f8:	72617453 	.word	0x72617453
3000b9fc:	6f4e2074 	.word	0x6f4e2074
3000ba00:	6365536e 	.word	0x6365536e
3000ba04:	20657275 	.word	0x20657275
3000ba08:	78302040 	.word	0x78302040
3000ba0c:	2e207825 	.word	0x2e207825
3000ba10:	0a0d2e2e 	.word	0x0a0d2e2e
3000ba14:	00000000 	.word	0x00000000
3000ba18:	00000208 	.word	0x00000208
3000ba1c:	0000020c 	.word	0x0000020c
3000ba20:	00000210 	.word	0x00000210
3000ba24:	00000008 	.word	0x00000008
3000ba28:	00000214 	.word	0x00000214
3000ba2c:	00000218 	.word	0x00000218
3000ba30:	0000021c 	.word	0x0000021c
3000ba34:	0000000c 	.word	0x0000000c
3000ba38:	20344d4b 	.word	0x20344d4b
3000ba3c:	33474d49 	.word	0x33474d49
3000ba40:	00000000 	.word	0x00000000
3000ba44:	20344d4b 	.word	0x20344d4b
3000ba48:	0043534e 	.word	0x0043534e
3000ba4c:	31474d49 	.word	0x31474d49
3000ba50:	00000000 	.word	0x00000000
3000ba54:	32474d49 	.word	0x32474d49
3000ba58:	00000000 	.word	0x00000000
3000ba5c:	42205041 	.word	0x42205041
3000ba60:	4626314c 	.word	0x4626314c
3000ba64:	00005049 	.word	0x00005049
3000ba68:	49207325 	.word	0x49207325
3000ba6c:	6c61766e 	.word	0x6c61766e
3000ba70:	000a6469 	.word	0x000a6469
3000ba74:	255b7325 	.word	0x255b7325
3000ba78:	3a783830 	.word	0x3a783830
3000ba7c:	0a5d7825 	.word	0x0a5d7825
3000ba80:	00000000 	.word	0x00000000
3000ba84:	56207325 	.word	0x56207325
3000ba88:	46495245 	.word	0x46495245
3000ba8c:	41502059 	.word	0x41502059
3000ba90:	000a5353 	.word	0x000a5353
3000ba94:	56207325 	.word	0x56207325
3000ba98:	46495245 	.word	0x46495245
3000ba9c:	41462059 	.word	0x41462059
3000baa0:	202c4c49 	.word	0x202c4c49
3000baa4:	20746572 	.word	0x20746572
3000baa8:	6425203d 	.word	0x6425203d
3000baac:	0000000a 	.word	0x0000000a
3000bab0:	74726543 	.word	0x74726543
3000bab4:	63696669 	.word	0x63696669
3000bab8:	20657461 	.word	0x20657461
3000babc:	49524556 	.word	0x49524556
3000bac0:	46205946 	.word	0x46205946
3000bac4:	2c4c4941 	.word	0x2c4c4941
3000bac8:	74657220 	.word	0x74657220
3000bacc:	25203d20 	.word	0x25203d20
3000bad0:	00000a64 	.word	0x00000a64
3000bad4:	706d6f43 	.word	0x706d6f43
3000bad8:	73736572 	.word	0x73736572
3000badc:	49206465 	.word	0x49206465
3000bae0:	5620676d 	.word	0x5620676d
3000bae4:	46495245 	.word	0x46495245
3000bae8:	41502059 	.word	0x41502059
3000baec:	000a5353 	.word	0x000a5353
3000baf0:	706d6f43 	.word	0x706d6f43
3000baf4:	73736572 	.word	0x73736572
3000baf8:	49206465 	.word	0x49206465
3000bafc:	5620676d 	.word	0x5620676d
3000bb00:	46495245 	.word	0x46495245
3000bb04:	41462059 	.word	0x41462059
3000bb08:	202c4c49 	.word	0x202c4c49
3000bb0c:	20746572 	.word	0x20746572
3000bb10:	6425203d 	.word	0x6425203d
3000bb14:	0000000a 	.word	0x0000000a
3000bb18:	3000ba38 	.word	0x3000ba38
3000bb1c:	3000ba44 	.word	0x3000ba44
3000bb20:	3000ba4c 	.word	0x3000ba4c
3000bb24:	3000ba54 	.word	0x3000ba54
3000bb28:	3000ba3c 	.word	0x3000ba3c
3000bb2c:	3000ba5c 	.word	0x3000ba5c
3000bb30:	20304d4b 	.word	0x20304d4b
3000bb34:	20504958 	.word	0x20504958
3000bb38:	00474d49 	.word	0x00474d49
3000bb3c:	20304d4b 	.word	0x20304d4b
3000bb40:	4d415253 	.word	0x4d415253
3000bb44:	00000000 	.word	0x00000000
3000bb48:	20304d4b 	.word	0x20304d4b
3000bb4c:	4d415244 	.word	0x4d415244
3000bb50:	00000000 	.word	0x00000000
3000bb54:	20344d4b 	.word	0x20344d4b
3000bb58:	20504958 	.word	0x20504958
3000bb5c:	00474d49 	.word	0x00474d49
3000bb60:	20344d4b 	.word	0x20344d4b
3000bb64:	4d415253 	.word	0x4d415253
3000bb68:	00000000 	.word	0x00000000
3000bb6c:	20344d4b 	.word	0x20344d4b
3000bb70:	4d415244 	.word	0x4d415244
3000bb74:	00000000 	.word	0x00000000
3000bb78:	58205041 	.word	0x58205041
3000bb7c:	49205049 	.word	0x49205049
3000bb80:	0000474d 	.word	0x0000474d
3000bb84:	42205041 	.word	0x42205041
3000bb88:	5320314c 	.word	0x5320314c
3000bb8c:	004d4152 	.word	0x004d4152
3000bb90:	42205041 	.word	0x42205041
3000bb94:	4420314c 	.word	0x4420314c
3000bb98:	004d4152 	.word	0x004d4152
3000bb9c:	46205041 	.word	0x46205041
3000bba0:	00005049 	.word	0x00005049
3000bba4:	32474d49 	.word	0x32474d49
3000bba8:	46544f20 	.word	0x46544f20
3000bbac:	0a4e4520 	.word	0x0a4e4520
3000bbb0:	00000000 	.word	0x00000000
3000bbb4:	2046544f 	.word	0x2046544f
3000bbb8:	65646f4d 	.word	0x65646f4d
3000bbbc:	72726520 	.word	0x72726520
3000bbc0:	0a0d726f 	.word	0x0a0d726f
3000bbc4:	00000000 	.word	0x00000000
3000bbc8:	6c696146 	.word	0x6c696146
3000bbcc:	206f7420 	.word	0x206f7420
3000bbd0:	64616f6c 	.word	0x64616f6c
3000bbd4:	50445220 	.word	0x50445220
3000bbd8:	616d6920 	.word	0x616d6920
3000bbdc:	0a216567 	.word	0x0a216567
3000bbe0:	00000000 	.word	0x00000000
3000bbe4:	6c696146 	.word	0x6c696146
3000bbe8:	206f7420 	.word	0x206f7420
3000bbec:	64616f6c 	.word	0x64616f6c
3000bbf0:	20504120 	.word	0x20504120
3000bbf4:	67616d69 	.word	0x67616d69
3000bbf8:	000a2165 	.word	0x000a2165
3000bbfc:	20504452 	.word	0x20504452
3000bc00:	000a4e45 	.word	0x000a4e45
3000bc04:	32474d49 	.word	0x32474d49
3000bc08:	41544f28 	.word	0x41544f28
3000bc0c:	20296425 	.word	0x20296425
3000bc10:	202c7325 	.word	0x202c7325
3000bc14:	3a746572 	.word	0x3a746572
3000bc18:	0a642520 	.word	0x0a642520
3000bc1c:	00000000 	.word	0x00000000
3000bc20:	494c4156 	.word	0x494c4156
3000bc24:	00000044 	.word	0x00000044
3000bc28:	41564e49 	.word	0x41564e49
3000bc2c:	0044494c 	.word	0x0044494c
3000bc30:	32474d49 	.word	0x32474d49
3000bc34:	4f4f4220 	.word	0x4f4f4220
3000bc38:	72662054 	.word	0x72662054
3000bc3c:	4f206d6f 	.word	0x4f206d6f
3000bc40:	25204154 	.word	0x25204154
3000bc44:	56202c64 	.word	0x56202c64
3000bc48:	69737265 	.word	0x69737265
3000bc4c:	203a6e6f 	.word	0x203a6e6f
3000bc50:	2e646c25 	.word	0x2e646c25
3000bc54:	20646c25 	.word	0x20646c25
3000bc58:	0000000a 	.word	0x0000000a
3000bc5c:	2041544f 	.word	0x2041544f
3000bc60:	74726543 	.word	0x74726543
3000bc64:	63696669 	.word	0x63696669
3000bc68:	20657461 	.word	0x20657461
3000bc6c:	4d492026 	.word	0x4d492026
3000bc70:	69203247 	.word	0x69203247
3000bc74:	6c61766e 	.word	0x6c61766e
3000bc78:	202c6469 	.word	0x202c6469
3000bc7c:	544f4f42 	.word	0x544f4f42
3000bc80:	49414620 	.word	0x49414620
3000bc84:	0a21214c 	.word	0x0a21214c
3000bc88:	00000000 	.word	0x00000000
3000bc8c:	42205041 	.word	0x42205041
3000bc90:	20544f4f 	.word	0x20544f4f
3000bc94:	6d6f7266 	.word	0x6d6f7266
3000bc98:	41544f20 	.word	0x41544f20
3000bc9c:	0a642520 	.word	0x0a642520
3000bca0:	00000000 	.word	0x00000000
3000bca4:	72747845 	.word	0x72747845
3000bca8:	20746361 	.word	0x20746361
3000bcac:	6d6f7266 	.word	0x6d6f7266
3000bcb0:	25783020 	.word	0x25783020
3000bcb4:	6f742078 	.word	0x6f742078
3000bcb8:	65764f20 	.word	0x65764f20
3000bcbc:	64697272 	.word	0x64697272
3000bcc0:	78302065 	.word	0x78302065
3000bcc4:	202c7825 	.word	0x202c7825
3000bcc8:	706d6f43 	.word	0x706d6f43
3000bccc:	73736572 	.word	0x73736572
3000bcd0:	6e654c20 	.word	0x6e654c20
3000bcd4:	20736920 	.word	0x20736920
3000bcd8:	78257830 	.word	0x78257830
3000bcdc:	0000000a 	.word	0x0000000a
3000bce0:	6d6f682f 	.word	0x6d6f682f
3000bce4:	69712f65 	.word	0x69712f65
3000bce8:	6568735f 	.word	0x6568735f
3000bcec:	656a2f6e 	.word	0x656a2f6e
3000bcf0:	63697373 	.word	0x63697373
3000bcf4:	2e362f61 	.word	0x2e362f61
3000bcf8:	6f732f36 	.word	0x6f732f36
3000bcfc:	65637275 	.word	0x65637275
3000bd00:	69662f73 	.word	0x69662f73
3000bd04:	61776d72 	.word	0x61776d72
3000bd08:	632f6572 	.word	0x632f6572
3000bd0c:	6f706d6f 	.word	0x6f706d6f
3000bd10:	746e656e 	.word	0x746e656e
3000bd14:	636f732f 	.word	0x636f732f
3000bd18:	656d612f 	.word	0x656d612f
3000bd1c:	6d736162 	.word	0x6d736162
3000bd20:	2f747261 	.word	0x2f747261
3000bd24:	746f6f62 	.word	0x746f6f62
3000bd28:	64616f6c 	.word	0x64616f6c
3000bd2c:	622f7265 	.word	0x622f7265
3000bd30:	5f746f6f 	.word	0x5f746f6f
3000bd34:	5f61746f 	.word	0x5f61746f
3000bd38:	632e7068 	.word	0x632e7068
3000bd3c:	00000000 	.word	0x00000000
3000bd40:	3000bb78 	.word	0x3000bb78
3000bd44:	3000bb84 	.word	0x3000bb84
3000bd48:	3000bb90 	.word	0x3000bb90
3000bd4c:	3000bb9c 	.word	0x3000bb9c
3000bd50:	3000bb30 	.word	0x3000bb30
3000bd54:	3000bb3c 	.word	0x3000bb3c
3000bd58:	3000bb48 	.word	0x3000bb48
3000bd5c:	3000bb54 	.word	0x3000bb54
3000bd60:	3000bb60 	.word	0x3000bb60
3000bd64:	3000bb6c 	.word	0x3000bb6c
3000bd68:	3000bb84 	.word	0x3000bb84
3000bd6c:	3000bb90 	.word	0x3000bb90
3000bd70:	3000bb9c 	.word	0x3000bb9c

3000bd74 <ImagePattern>:
3000bd74:	35393138 31313738 73616c66 65675f68     81958711flash_ge
3000bd84:	616c5f74 74756f79 666e695f 7962206f     t_layout_info by
3000bd94:	70797420 64252065 69614620 00000a6c      type %d Fail...
3000bda4:	73616c66 65675f68 616c5f74 74756f79     flash_get_layout
3000bdb4:	666e695f 7962206f 64646120 78302072     _info by addr 0x
3000bdc4:	46207825 0a6c6961 00000000              %x Fail.....

3000bdd0 <Flash_AVL>:
3000bdd0:	000000ef 000000ff 00000000 000043fc     .............C..
3000bde0:	00000000 000000a1 000000ff 00000000     ................
3000bdf0:	0000fffc 00000000 0000000b 000000ff     ................
3000be00:	00000000 000043fc 00000000 0000000e     .....C..........
3000be10:	000000ff 00000000 000043fc 00000000     .........C......
3000be20:	000000c8 000000ff 00000001 000043fc     .............C..
3000be30:	00000000 000028c2 0000ffff 00000005     .....(..........
3000be40:	000200fc 00000000 000000c2 000000ff     ................
3000be50:	00000002 000000fc 00000000 00000068     ............h...
3000be60:	000000ff 00000002 000000fc 00000000     ................
3000be70:	00000051 000000ff 00000002 000000fc     Q...............
3000be80:	00000000 0000001c 000000ff 00000003     ................
3000be90:	000000fc 00000000 00000020 000000ff     ........ .......
3000bea0:	00000004 000000fc 00000000 00000000     ................
3000beb0:	000000ff 000000fe ffffffff 30006221     ............!b.0
3000bec0:	000000ff ffffffff 000000ff ffffffff     ................
3000bed0:	00000000                                ....

3000bed4 <Flash_ReadMode>:
3000bed4:	                                         ..

3000bed6 <Flash_Speed>:
3000bed6:	                                         ..

3000bed8 <NAND_AVL>:
3000bed8:	000000ef 000000ff 00000000 ffffffff     ................
3000bee8:	00000000 000000c8 000000ff 00000001     ................
3000bef8:	ffffffff 00000000 000000e5 000000ff     ................
3000bf08:	00000001 ffffffff 00000000 000000c2     ................
3000bf18:	000000ff 00000002 ffffffff 00000000     ................
3000bf28:	0000002c 000000ff 00000004 ffffffff     ,...............
	...
3000bf40:	000000ff 000000fe ffffffff 30006281     .............b.0
3000bf50:	000000ff ffffffff 000000ff ffffffff     ................
3000bf60:	00000000 004f4931 00004f32 004f4932     ....1IO.2O..2IO.
3000bf70:	00004f34 004f4934 72617473 64695f74     4O..4IO.start_id
3000bf80:	64253a78 6e65202c 64695f64 64253a78     x:%d, end_idx:%d
3000bf90:	696d202c 656c6464 7864695f 2c64253a     , middle_idx:%d,
3000bfa0:	6e696620 705f6c61 65736168 7864695f      final_phase_idx
3000bfb0:	2c64253a 6e696620 735f6c61 74666968     :%d, final_shift
3000bfc0:	7864695f 2064253a 0000000a 53414c46     _idx:%d ....FLAS
3000bfd0:	41432048 5b42494c 78257830 5d4b4f20     H CALIB[0x%x OK]
3000bfe0:	0000000a 53414c46 41432048 5b42494c     ....FLASH CALIB[
3000bff0:	78257830 49414620 000a5d4c 73616c46     0x%x FAIL]..Flas
3000c000:	65522068 25206461 00000a73 73616c46     h Read %s...Flas
3000c010:	65522068 25206461 46202c73 0a4c4941     h Read %s, FAIL.
3000c020:	00000000 73616c46 77532068 68637469     ....Flash Switch
3000c030:	61655220 6f4d2064 46206564 0a4c4941      Read Mode FAIL.
3000c040:	00000000 73616c46 44492068 7825203a     ....Flash ID: %x
3000c050:	2d78252d 28207825 61706143 79746963     -%x-%x (Capacity
3000c060:	6425203a 69622d4d 000a2974 73696854     : %dM-bit)..This
3000c070:	616c6620 74206873 20657079 6e207369      flash type is n
3000c080:	7320746f 6f707075 64657472 00000a21     ot supported!...
3000c090:	6d6f682f 69712f65 6568735f 656a2f6e     /home/qi_shen/je
3000c0a0:	63697373 2e362f61 6f732f36 65637275     ssica/6.6/source
3000c0b0:	69662f73 61776d72 632f6572 6f706d6f     s/firmware/compo
3000c0c0:	746e656e 636f732f 656d612f 6d736162     nent/soc/amebasm
3000c0d0:	2f747261 696c7766 61722f62 70685f6d     art/fwlib/ram_hp
3000c0e0:	656d612f 665f6162 6873616c 2e6b6c63     /ameba_flashclk.
3000c0f0:	00000063 73616c46 74732068 73757461     c...Flash status
3000c100:	67657220 65747369 68632072 65676e61      register change
3000c110:	78303a64 2d207825 7830203e 000a7825     d:0x%x -> 0x%x..
3000c120:	444e414e 3a444920 2d782520 000a7825     NAND ID: %x-%x..
3000c130:	73616c46 6c612068 6c62206c 206b636f     Flash all block 
3000c140:	6f6c6e75 64656b63 6546202e 72757461     unlocked. Featur
3000c150:	65722065 78302067 78323025 74657320     e reg 0x%02x set
3000c160:	206f7420 30257830 000a7832 3000bf64      to 0x%02x..d..0
3000c170:	3000bf68 3000bf6c 3000bf70 3000bf74     h..0l..0p..0t..0
3000c180:	206b6c42 6c257830 73692078 21424220     Blk 0x%lx is BB!
3000c190:	0000000a 444e414e 53414c46 00000048     ....NANDFLASH...
3000c1a0:	646e614e 64644120 78302072 72207825     Nand Addr 0x%x r
3000c1b0:	6f696765 6142206e 6c422064 206b636f     egion Bad Block 
3000c1c0:	206f6f74 6863756d 0000000a 64616552     too much....Read
3000c1d0:	67615020 78302065 20786c25 4220666f      Page 0x%lx of B
3000c1e0:	6b636f6c 25783020 614d2078 61462079     lock 0x%x May Fa
3000c1f0:	202c6c69 74617473 30207375 21782578     il, status 0x%x!
3000c200:	0000000a 4d415244 20736920 20746f6e     ....DRAM is not 
3000c210:	696c6143 69617262 0a0d6e6f 00000000     Calibraion......
3000c220:	50524444 00005948                       DDRPHY..

3000c228 <ddrphy_tx_scan>:
3000c228:	00000000 00080000 00080808 00000000     ................
3000c238:	20000000 33333333 000c0022 00000000     ... 3333".......
3000c248:	0e0e001a 00170e0e 12171717 00000012     ................
3000c258:	20000fc1 22222222 000c0012 34000000     ... """".......4
3000c268:	0f0f0016 00180f0f 0e181818 0000000e     ................
3000c278:	200003c1 22222222 000c0012 34000000     ... """".......4
3000c288:	0f0f001b 00180f0f 13181818 00000013     ................
3000c298:	20000fc1 22222222 000c0012 34000000     ... """".......4
3000c2a8:	1110001b 00191111 13191919 00000013     ................
3000c2b8:	20000ffd 22222222 000c0012 34000000     ... """".......4
3000c2c8:	1313001c 001c1313 121c1c1c 00000012     ................
3000c2d8:	20000ffd 22222222 000c0012 34000000     ... """".......4

3000c2e8 <ddrphy_zq_rx_scan>:
	...
3000c2f0:	26262626 26262626 0303030f 0e141414     &&&&&&&&........
3000c300:	140e0e0e 26243c34 261c3029 0303030f     ....4<$&)0.&....
3000c310:	090b0a0a 0a0a0909 2615231e 2613201b     .........#.&. .&
3000c320:	04020204 0b0f0c0c 0c0b0b0b 26233a30     ............0:#&
3000c330:	26182722 04020205 0e141414 140e0e0e     "'.&............
3000c340:	26243c34 261b2f28 0303030f 0a0c0c0c     4<$&(/.&........
3000c350:	0c0a0a0a 2616251f 2614221d 04020205     .....%.&.".&....
3000c360:	20524444 657a6953 20736920 20746f6e     DDR Size is not 
3000c370:	666e6f63 72756769 000a6465 00524444     configured..DDR.
3000c380:	415b203e 20524444 414d4552 52452050     > [ADDR REMAP ER
3000c390:	5d524f52 6f63203a 725f756c 70616d65     ROR]: colu_remap
3000c3a0:	7469625f 3d212073 61726420 6f635f6d     _bits != dram_co
3000c3b0:	625f756c 21737469 000a2121 415b203e     lu_bits!!!..> [A
3000c3c0:	20524444 414d4552 52452050 5d524f52     DDR REMAP ERROR]
3000c3d0:	6162203a 725f6b6e 70616d65 7469625f     : bank_remap_bit
3000c3e0:	3d212073 61726420 61625f6d 625f6b6e     s != dram_bank_b
3000c3f0:	21737469 000a2121 6d6f682f 69712f65     its!!!../home/qi
3000c400:	6568735f 656a2f6e 63697373 2e362f61     _shen/jessica/6.
3000c410:	6f732f36 65637275 69662f73 61776d72     6/sources/firmwa
3000c420:	632f6572 6f706d6f 746e656e 636f732f     re/component/soc
3000c430:	656d612f 6d736162 2f747261 696c7766     /amebasmart/fwli
3000c440:	61722f62 70685f6d 656d612f 725f6162     b/ram_hp/ameba_r
3000c450:	31336978 72645f36 695f6d61 2e74696e     xi316_dram_init.
3000c460:	00000063 41525350 7443204d 43206c72     c...PSRAM Ctrl C
3000c470:	203a4b4c 20756c25 0a207a48 00000000     LK: %lu Hz .....
3000c480:	41525350 0000004d 4e6c6143 206e696d     PSRAM...CalNmin 
3000c490:	7825203d 6c614320 78616d4e 25203d20     = %x CalNmax = %
3000c4a0:	69572078 776f646e 657a6953 25203d20     x WindowSize = %
3000c4b0:	68702078 3a657361 20782520 0000000a     x phase: %x ....
3000c4c0:	6d6f682f 69712f65 6568735f 656a2f6e     /home/qi_shen/je
3000c4d0:	63697373 2e362f61 6f732f36 65637275     ssica/6.6/source
3000c4e0:	69662f73 61776d72 632f6572 6f706d6f     s/firmware/compo
3000c4f0:	746e656e 636f732f 656d612f 6d736162     nent/soc/amebasm
3000c500:	2f747261 696c7766 61722f62 6f635f6d     art/fwlib/ram_co
3000c510:	6e6f6d6d 656d612f 735f6162 632e7277     mmon/ameba_swr.c
3000c520:	00000000 2050544f 64616572 74656720     ....OTP read get
3000c530:	20776820 616d6573 69616620 00000a6c      hw sema fail...
3000c540:	0050544f 5f50544f 64616552 61462038     OTP.OTP_Read8 Fa
3000c550:	25206c69 000a2078 6d6f682f 69712f65     il %x ../home/qi
3000c560:	6568735f 656a2f6e 63697373 2e362f61     _shen/jessica/6.
3000c570:	6f732f36 65637275 69662f73 61776d72     6/sources/firmwa
3000c580:	632f6572 6f706d6f 746e656e 636f732f     re/component/soc
3000c590:	656d612f 6d736162 2f747261 696c7766     /amebasmart/fwli
3000c5a0:	61722f62 6f635f6d 6e6f6d6d 656d612f     b/ram_common/ame
3000c5b0:	705f6162 632e6c6c 00000000 6d6f682f     ba_pll.c..../hom
3000c5c0:	69712f65 6568735f 656a2f6e 63697373     e/qi_shen/jessic
3000c5d0:	2e362f61 6f732f36 65637275 69662f73     a/6.6/sources/fi
3000c5e0:	61776d72 632f6572 6f706d6f 746e656e     rmware/component
3000c5f0:	636f732f 656d612f 6d736162 2f747261     /soc/amebasmart/
3000c600:	696c7766 61722f62 6f635f6d 6e6f6d6d     fwlib/ram_common
3000c610:	656d612f 695f6162 615f6370 632e6970     /ameba_ipc_api.c
3000c620:	00000000 6e6f4e0a 6365532d 20657275     .....Non-Secure 
3000c630:	6c726f77 61632064 746f6e6e 6d756420     world cannot dum
3000c640:	65722070 74736967 20737265 756f6261     p registers abou
3000c650:	78652074 74706563 206e6f69 6d6f7266     t exception from
3000c660:	63657320 20657275 6c726f77 000a2164      secure world!..
3000c670:	4c554146 00000054 52534653 203d2020     FAULT...SFSR  = 
3000c680:	30257830 0d786c38 0000000a 52414653     0x%08lx.....SFAR
3000c690:	203d2020 30257830 0d786c38 0000000a       = 0x%08lx.....
3000c6a0:	544e4f43 5f4c4f52 3d20534e 25783020     CONTROL_NS = 0x%
3000c6b0:	586c3830 00000a0d 53434853 203d2052     08lX....SHCSR = 
3000c6c0:	30257830 0d786c38 0000000a 43524941     0x%08lx.....AIRC
3000c6d0:	203d2052 30257830 0d786c38 0000000a     R = 0x%08lx.....
3000c6e0:	544e4f43 204c4f52 7830203d 6c383025     CONTROL = 0x%08l
3000c6f0:	000a0d78 2d73255b 205d6325 00000000     x...[%s-%c] ....
3000c700:	61766e49 2064696c 6e696843 6f666e69     Invalid Chininfo
3000c710:	68432021 206b6365 0a50544f 00000000     ! Check OTP.....
3000c720:	50494843 4f464e49 00000000 61656c50     CHIPINFO....Plea
3000c730:	70206573 72676f72 63206d61 69706968     se program chipi
3000c740:	206f666e 4f206e69 21205054 0000000a     nfo in OTP !....

3000c750 <Memory_Info>:
3000c750:	02060600 07000102 00020107 02080800     ................
3000c760:	08010102 01020228 03090900 09010004     ....(...........
3000c770:	00040329 010a0a00 0a010003 0003012a     )...........*...
3000c780:	020b0b00 0c000102 0102020c 030d0d00     ................
3000c790:	0e000004 0003010e 030f0f00 10000004     ................
3000c7a0:	00030110 01111100 ffff0002 ffffffff     ................
3000c7b0:	00000041 00000042 44415041 73255020     A...B...APAD P%s
3000c7c0:	2064255f 63207369 69666e6f 65727567     _%d is configure
3000c7d0:	6f742064 6e756620 20444963 20756c25     d to funcID %lu 
3000c7e0:	0000000a 504d4f52 48435441 00000000     ....ROMPATCH....
3000c7f0:	20445753 20444150 5f732550 69206425     SWD PAD P%s_%d i
3000c800:	6f632073 6769666e 64657275 206f7420     s configured to 
3000c810:	636e7566 25204449 0a20756c 00000000     funcID %lu .....
3000c820:	64206f69 65766972 61702072 656d6172     io driver parame
3000c830:	73726574 72726520 2021726f 656c6966     ters error! file
3000c840:	6d616e5f 25203a65 6c202c73 3a656e69     _name: %s, line:
3000c850:	00642520 6d6f682f 69712f65 6568735f      %d./home/qi_she
3000c860:	656a2f6e 63697373 2e362f61 6f732f36     n/jessica/6.6/so
3000c870:	65637275 69662f73 61776d72 632f6572     urces/firmware/c
3000c880:	6f706d6f 746e656e 636f732f 656d612f     omponent/soc/ame
3000c890:	6d736162 2f747261 2f62696c 5f6d6172     basmart/lib/ram_
3000c8a0:	6d6d6f63 612f6e6f 6162656d 6d6f725f     common/ameba_rom
3000c8b0:	7461705f 632e6863 00000000 74206f4e     _patch.c....No t
3000c8c0:	20736968 68747561 7079745f 6c252865     his auth_type(%l
3000c8d0:	66202975 5320726f 0a324148 00000000     u) for SHA2.....
3000c8e0:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
3000c8f0:	2a2a2a2a 2a2a2a2a 57202a2a 494e5241     ********** WARNI
3000c900:	2a20474e 2a2a2a2a 2a2a2a2a 2a2a2a2a     NG *************
3000c910:	2a2a2a2a 2a2a2a2a 000a2a2a 2020202a     **********..*   
3000c920:	20202020 20202020 20202020 20202020                     
3000c930:	20202020 20202020 20202020 20202020                     
3000c940:	20202020 20202020 20202020 20202020                     
3000c950:	20202020 000a2a20 2020202a 20202020          *..*       
3000c960:	20202020 75432020 6e657272 68632074           Current ch
3000c970:	76207069 69737265 69206e6f 43412073     ip version is AC
3000c980:	21217475 20202021 20202020 20202020     ut!!!           
3000c990:	000a2a20 2020202a 204b5452 204b4453      *..*   RTK SDK 
3000c9a0:	73656f64 746f6e20 70757320 74726f70     does not support
3000c9b0:	72756320 746e6572 72657620 6e6f6973      current version
3000c9c0:	796e6120 726f6d20 20202e65 000a2a20      any more.   *..
3000c9d0:	2020202a 50202020 7361656c 6f632065     *      Please co
3000c9e0:	6361746e 54522074 4d50204b 726f6620     ntact RTK PM for
3000c9f0:	726f6d20 72702065 6375646f 6e692074      more product in
3000ca00:	20216f66 20202020 000a2a20 2a2a2a2a     fo!      *..****
3000ca10:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
3000ca20:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
3000ca30:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
3000ca40:	2a2a2a2a 000a2a2a 6d6f682f 69712f65     ******../home/qi
3000ca50:	6568735f 656a2f6e 63697373 2e362f61     _shen/jessica/6.
3000ca60:	6f732f36 65637275 69662f73 61776d72     6/sources/firmwa
3000ca70:	632f6572 6f706d6f 746e656e 636f732f     re/component/soc
3000ca80:	656d612f 6d736162 2f747261 2f62696c     /amebasmart/lib/
3000ca90:	746f6f62 64616f6c 622f7265 6c746f6f     bootloader/bootl
3000caa0:	6564616f 70685f72 62696c5f 0000632e     oader_hp_lib.c..
3000cab0:	00344d4b 00304d4b 3d3d3d3d 3d3d3d3d     KM4.KM0.========
3000cac0:	73253d3d 61745320 44206b63 20706d75     ==%s Stack Dump 
3000cad0:	3d3d3d3d 3d3d3d3d 000a3d3d 72727543     ==========..Curr
3000cae0:	20746e65 63617453 6f50206b 65746e69     ent Stack Pointe
3000caf0:	203d2072 202c7025 20646e61 706d7564     r = %p, and dump
3000cb00:	61747320 64206b63 68747065 25203d20      stack depth = %
3000cb10:	000a0d75 3830255b 00205d70 78383025     u...[%08p] .%08x
3000cb20:	00000020 255b0a0d 5d703830 00000020      .....[%08p] ...
3000cb30:	00003052 00003452 3d3d3d3d 3d3d3d3d     R0..R4..========
3000cb40:	43203d3d 68736172 6d754420 3d3d2070     == Crash Dump ==
3000cb50:	3d3d3d3d 3d3d3d3d 0000000a 3d3d3d3d     ========....====
3000cb60:	3d3d3d3d 52203d3d 73696765 20726574     ====== Register 
3000cb70:	706d7544 3d3d3d20 3d3d3d3d 0a3d3d3d     Dump ==========.
3000cb80:	00000000 4c20205b 30205d52 38302578     ....[  LR] 0x%08
3000cb90:	000a786c 5020205b 30205d43 38302578     lx..[  PC] 0x%08
3000cba0:	000a786c 5350785b 30205d52 38302578     lx..[xPSR] 0x%08
3000cbb0:	000a786c 4358455b 30205d52 38302578     lx..[EXCR] 0x%08
3000cbc0:	000a786c 7325205b 7830205d 6c383025     lx..[ %s] 0x%08l
3000cbd0:	00000a78 00323152 3d3d3d3d 3d3d3d3d     x...R12.========
3000cbe0:	53203d3d 6b636174 61725420 3d206563     == Stack Trace =
3000cbf0:	3d3d3d3d 3d3d3d3d 00000a3d 3d3d3d3d     =========...====
3000cc00:	3d3d3d3d 45203d3d 6f20646e 74532066     ====== End of St
3000cc10:	206b6361 63617254 3d3d2065 3d3d3d3d     ack Trace ======
3000cc20:	3d3d3d3d 0000000a 3d3d3d3d 3d3d3d3d     ====....========
3000cc30:	45203d3d 6f20646e 72432066 20687361     == End of Crash 
3000cc40:	706d7544 3d3d3d20 3d3d3d3d 0a3d3d3d     Dump ==========.
3000cc50:	00000000 0a0d0a0d 00000000 00003552     ............R5..
3000cc60:	00003652 00003752 00003852 00003952     R6..R7..R8..R9..
3000cc70:	00303152 00313152 00003152 00003252     R10.R11.R1..R2..
3000cc80:	00003352                                R3..

3000cc84 <register_string>:
3000cc84:	00000000 3000cb34 3000cc5c 3000cc60     ....4..0\..0`..0
3000cc94:	3000cc64 3000cc68 3000cc6c 3000cc70     d..0h..0l..0p..0
3000cca4:	3000cc74 3000cb30 3000cc78 3000cc7c     t..00..0x..0|..0
3000ccb4:	3000cc80 3000cbd4 65637845 6f697470     ...0...0Exceptio
3000ccc4:	6163206e 74686775 206e6f20 78383025     n caught on %08x
3000ccd4:	0000000a 64726148 75616620 6920746c     ....Hard fault i
3000cce4:	61632073 64657375 20796220 6c696166     s caused by fail
3000ccf4:	76206465 6f746365 65662072 00686374     ed vector fetch.
3000cd04:	52534648 305b203a 38302578 205d786c     HFSR: [0x%08lx] 
3000cd14:	25203e2d 00000a73 75636553 79746972     -> %s...Security
3000cd24:	75616620 6920746c 61632073 64657375      fault is caused
3000cd34:	20796220 61766e49 2064696c 72746e65      by Invalid entr
3000cd44:	6f702079 00746e69 52534653 305b203a     y point.SFSR: [0
3000cd54:	38302578 205d786c 25203e2d 00000a73     x%08lx] -> %s...
3000cd64:	75636553 79746972 75616620 6920746c     Security fault i
3000cd74:	61632073 64657375 20796220 61766e49     s caused by Inva
3000cd84:	2064696c 65746e69 74697267 69732079     lid integrity si
3000cd94:	74616e67 00657275 75636553 79746972     gnature.Security
3000cda4:	75616620 6920746c 61632073 64657375      fault is caused
3000cdb4:	20796220 61766e49 2064696c 65637865      by Invalid exce
3000cdc4:	6f697470 6572206e 6e727574 00000000     ption return....
3000cdd4:	75636553 79746972 75616620 6920746c     Security fault i
3000cde4:	61632073 64657375 20796220 72747441     s caused by Attr
3000cdf4:	74756269 206e6f69 74696e75 6f697620     ibution unit vio
3000ce04:	6974616c 00006e6f 75636553 79746972     lation..Security
3000ce14:	75616620 6920746c 61632073 64657375      fault is caused
3000ce24:	20796220 61766e49 2064696c 6e617274      by Invalid tran
3000ce34:	69746973 00006e6f 75636553 79746972     sition..Security
3000ce44:	75616620 6920746c 61632073 64657375      fault is caused
3000ce54:	20796220 797a614c 61747320 70206574      by Lazy state p
3000ce64:	65736572 74617672 206e6f69 6f727265     reservation erro
3000ce74:	00000072 75636553 79746972 75616620     r...Security fau
3000ce84:	6920746c 61632073 64657375 20796220     lt is caused by 
3000ce94:	797a614c 61747320 65206574 726f7272     Lazy state error
3000cea4:	00000000 20656854 75636573 79746972     ....The security
3000ceb4:	75616620 6f20746c 72756363 20646572      fault occurred 
3000cec4:	72646461 20737365 00007369 52414653     address is..SFAR
3000ced4:	305b203a 38302578 205d786c 25203e2d     : [0x%08lx] -> %
3000cee4:	00000a73 6f6d654d 6d207972 67616e61     s...Memory manag
3000cef4:	6e656d65 61662074 20746c75 63207369     ement fault is c
3000cf04:	65737561 79622064 736e6920 63757274     aused by instruc
3000cf14:	6e6f6974 63636120 20737365 6c6f6976     tion access viol
3000cf24:	6f697461 0000006e 53464d4d 5b203a52     ation...MMFSR: [
3000cf34:	30257830 5d786c38 203e2d20 000a7325     0x%08lx] -> %s..
3000cf44:	6f6d654d 6d207972 67616e61 6e656d65     Memory managemen
3000cf54:	61662074 20746c75 63207369 65737561     t fault is cause
3000cf64:	79622064 74616420 63612061 73736563     d by data access
3000cf74:	6f697620 6974616c 00006e6f 6f6d654d      violation..Memo
3000cf84:	6d207972 67616e61 6e656d65 61662074     ry management fa
3000cf94:	20746c75 63207369 65737561 79622064     ult is caused by
3000cfa4:	736e7520 6b636174 20676e69 6f727265      unstacking erro
3000cfb4:	00000072 6f6d654d 6d207972 67616e61     r...Memory manag
3000cfc4:	6e656d65 61662074 20746c75 63207369     ement fault is c
3000cfd4:	65737561 79622064 61747320 6e696b63     aused by stackin
3000cfe4:	72652067 00726f72 6f6d654d 6d207972     g error.Memory m
3000cff4:	67616e61 6e656d65 61662074 20746c75     anagement fault 
3000d004:	63207369 65737561 79622064 6f6c6620     is caused by flo
3000d014:	6e697461 6f702d67 20746e69 797a616c     ating-point lazy
3000d024:	61747320 70206574 65736572 74617672      state preservat
3000d034:	006e6f69 20656854 6f6d656d 6d207972     ion.The memory m
3000d044:	67616e61 6e656d65 61662074 20746c75     anagement fault 
3000d054:	7563636f 64657272 64646120 73736572     occurred address
3000d064:	00736920 52414d4d 305b203a 38302578      is.MMAR: [0x%08
3000d074:	205d786c 25203e2d 00000a73 20737542     lx] -> %s...Bus 
3000d084:	6c756166 73692074 75616320 20646573     fault is caused 
3000d094:	69207962 7274736e 69746375 61206e6f     by instruction a
3000d0a4:	73656363 69762073 74616c6f 006e6f69     ccess violation.
3000d0b4:	52534642 305b203a 38302578 205d786c     BFSR: [0x%08lx] 
3000d0c4:	25203e2d 00000a73 20737542 6c756166     -> %s...Bus faul
3000d0d4:	73692074 75616320 20646573 70207962     t is caused by p
3000d0e4:	69636572 64206573 20617461 65636361     recise data acce
3000d0f4:	76207373 616c6f69 6e6f6974 00000000     ss violation....
3000d104:	20737542 6c756166 73692074 75616320     Bus fault is cau
3000d114:	20646573 69207962 6572706d 65736963     sed by imprecise
3000d124:	74616420 63612061 73736563 6f697620      data access vio
3000d134:	6974616c 00006e6f 20737542 6c756166     lation..Bus faul
3000d144:	73692074 75616320 20646573 75207962     t is caused by u
3000d154:	6174736e 6e696b63 72652067 00726f72     nstacking error.
3000d164:	20737542 6c756166 73692074 75616320     Bus fault is cau
3000d174:	20646573 73207962 6b636174 20676e69     sed by stacking 
3000d184:	6f727265 00000072 20737542 6c756166     error...Bus faul
3000d194:	73692074 75616320 20646573 66207962     t is caused by f
3000d1a4:	74616f6c 2d676e69 6e696f70 616c2074     loating-point la
3000d1b4:	7320797a 65746174 65727020 76726573     zy state preserv
3000d1c4:	6f697461 0000006e 20656854 20737562     ation...The bus 
3000d1d4:	6c756166 636f2074 72727563 61206465     fault occurred a
3000d1e4:	65726464 69207373 00000073 52414642     ddress is...BFAR
3000d1f4:	305b203a 38302578 205d786c 25203e2d     : [0x%08lx] -> %
3000d204:	00000a73 67617355 61662065 20746c75     s...Usage fault 
3000d214:	63207369 65737561 79622064 74746120     is caused by att
3000d224:	74706d65 6f742073 65786520 65747563     empts to execute
3000d234:	206e6120 65646e75 656e6966 6e692064      an undefined in
3000d244:	75727473 6f697463 0000006e 52534655     struction...UFSR
3000d254:	305b203a 38302578 205d786c 25203e2d     : [0x%08lx] -> %
3000d264:	00000a73 67617355 61662065 20746c75     s...Usage fault 
3000d274:	63207369 65737561 79622064 74746120     is caused by att
3000d284:	74706d65 6f742073 69777320 20686374     empts to switch 
3000d294:	61206f74 6e69206e 696c6176 74732064     to an invalid st
3000d2a4:	20657461 672e6528 41202c2e 00294d52     ate (e.g., ARM).
3000d2b4:	67617355 61662065 20746c75 63207369     Usage fault is c
3000d2c4:	65737561 79622064 74746120 74706d65     aused by attempt
3000d2d4:	6f742073 206f6420 65206e61 70656378     s to do an excep
3000d2e4:	6e6f6974 74697720 20612068 20646162     tion with a bad 
3000d2f4:	756c6176 6e692065 65687420 43584520     value in the EXC
3000d304:	5445525f 204e5255 626d756e 00007265     _RETURN number..
3000d314:	67617355 61662065 20746c75 63207369     Usage fault is c
3000d324:	65737561 79622064 74746120 74706d65     aused by attempt
3000d334:	6f742073 65786520 65747563 63206120     s to execute a c
3000d344:	6f72706f 73736563 6920726f 7274736e     oprocessor instr
3000d354:	69746375 00006e6f 67617355 61662065     uction..Usage fa
3000d364:	20746c75 63207369 65737561 79622064     ult is caused by
3000d374:	646e6920 74616369 74207365 20746168      indicates that 
3000d384:	74732061 206b6361 7265766f 776f6c66     a stack overflow
3000d394:	61682820 61776472 63206572 6b636568      (hardware check
3000d3a4:	61682029 61742073 206e656b 63616c70     ) has taken plac
3000d3b4:	00000065 67617355 61662065 20746c75     e...Usage fault 
3000d3c4:	63207369 65737561 79622064 646e6920     is caused by ind
3000d3d4:	74616369 74207365 20746168 75206e61     icates that an u
3000d3e4:	696c616e 64656e67 63636120 20737365     naligned access 
3000d3f4:	6c756166 61682074 61742073 206e656b     fault has taken 
3000d404:	63616c70 00000065 67617355 61662065     place...Usage fa
3000d414:	20746c75 63207369 65737561 79622064     ult is caused by
3000d424:	646e4920 74616369 61207365 76696420      Indicates a div
3000d434:	20656469 7a207962 206f7265 20736168     ide by zero has 
3000d444:	656b6174 6c70206e 20656361 6e616328     taken place (can
3000d454:	20656220 20746573 796c6e6f 20666920      be set only if 
3000d464:	5f564944 52545f30 73692050 74657320     DIV_0_TRP is set
3000d474:	00000029 75626544 61662067 20746c75     )...Debug fault 
3000d484:	63207369 65737561 79622064 6c616820     is caused by hal
3000d494:	65722074 73657571 20646574 4e206e69     t requested in N
3000d4a4:	00434956 52534644 305b203a 38302578     VIC.DFSR: [0x%08
3000d4b4:	205d786c 25203e2d 00000a73 75626544     lx] -> %s...Debu
3000d4c4:	61662067 20746c75 63207369 65737561     g fault is cause
3000d4d4:	79622064 504b4220 6e692054 75727473     d by BKPT instru
3000d4e4:	6f697463 7865206e 74756365 00006465     ction executed..
3000d4f4:	75626544 61662067 20746c75 63207369     Debug fault is c
3000d504:	65737561 79622064 54574420 74616d20     aused by DWT mat
3000d514:	6f206863 72756363 00646572 75626544     ch occurred.Debu
3000d524:	61662067 20746c75 63207369 65737561     g fault is cause
3000d534:	79622064 63655620 20726f74 63746566     d by Vector fetc
3000d544:	636f2068 72727563 00006465 75626544     h occurred..Debu
3000d554:	61662067 20746c75 63207369 65737561     g fault is cause
3000d564:	79622064 42444520 20515247 6e676973     d by EDBGRQ sign
3000d574:	61206c61 72657373 00646574 72617453     al asserted.Star
3000d584:	74732074 206b6361 6b636162 63617274     t stack backtrac
3000d594:	20676e69 20726f66 25207073 70202c70     ing for sp %p, p
3000d5a4:	70252063 726c202c 0a702520 00000000     c %p, lr %p.....
3000d5b4:	6a6f7270 5f746365 612f7068 2f6b6473     project_hp/asdk/
3000d5c4:	67616d69 00000065 74706f2f 6b74722f     image.../opt/rtk
3000d5d4:	6f6f742d 6168636c 612f6e69 2d6b6473     -toolchain/asdk-
3000d5e4:	332e3031 342d312e 2f313932 756e696c     10.3.1-4291/linu
3000d5f4:	656e2f78 62696c77 00000000 622f7325     x/newlib....%s/b
3000d604:	612f6e69 6e2d6d72 2d656e6f 69626165     in/arm-none-eabi
3000d614:	6464612d 696c3272 2d20656e 73252065     -addr2line -e %s
3000d624:	7261742f 5f746567 32676d69 6678612e     /target_img2.axf
3000d634:	66612d20 20436970 00786c25 786c2520      -afpiC %lx. %lx
3000d644:	00000000                                ....
