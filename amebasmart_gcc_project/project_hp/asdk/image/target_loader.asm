
/home/auto_jenkins_wlan5/IOT_ATS/repos/Release_SDK_Linux/Release_Sdk/sources/firmware/amebasmart_gcc_project/project_hp/asdk/image/target_loader.axf:     file format elf32-littlearm


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
300030fc:	4b30      	ldr	r3, [pc, #192]	; (300031c0 <BOOT_RccConfig+0xc8>)
300030fe:	b090      	sub	sp, #64	; 0x40
30003100:	2500      	movs	r5, #0
30003102:	4f30      	ldr	r7, [pc, #192]	; (300031c4 <BOOT_RccConfig+0xcc>)
30003104:	f103 0610 	add.w	r6, r3, #16
30003108:	466c      	mov	r4, sp
3000310a:	9504      	str	r5, [sp, #16]
3000310c:	f10d 0e20 	add.w	lr, sp, #32
30003110:	950c      	str	r5, [sp, #48]	; 0x30
30003112:	f10d 0c30 	add.w	ip, sp, #48	; 0x30
30003116:	9507      	str	r5, [sp, #28]
30003118:	950f      	str	r5, [sp, #60]	; 0x3c
3000311a:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
3000311c:	e9cd 5505 	strd	r5, r5, [sp, #20]
30003120:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
30003124:	e9cd 550d 	strd	r5, r5, [sp, #52]	; 0x34
30003128:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
3000312c:	4d26      	ldr	r5, [pc, #152]	; (300031c8 <BOOT_RccConfig+0xd0>)
3000312e:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
30003132:	f8d5 3238 	ldr.w	r3, [r5, #568]	; 0x238
30003136:	f043 0301 	orr.w	r3, r3, #1
3000313a:	f8c5 3238 	str.w	r3, [r5, #568]	; 0x238
3000313e:	6839      	ldr	r1, [r7, #0]
30003140:	1c4a      	adds	r2, r1, #1
30003142:	d01a      	beq.n	3000317a <BOOT_RccConfig+0x82>
30003144:	463a      	mov	r2, r7
30003146:	6890      	ldr	r0, [r2, #8]
30003148:	0f8b      	lsrs	r3, r1, #30
3000314a:	ad10      	add	r5, sp, #64	; 0x40
3000314c:	2801      	cmp	r0, #1
3000314e:	eb05 0383 	add.w	r3, r5, r3, lsl #2
30003152:	d10e      	bne.n	30003172 <BOOT_RccConfig+0x7a>
30003154:	f853 6c30 	ldr.w	r6, [r3, #-48]
30003158:	6855      	ldr	r5, [r2, #4]
3000315a:	4331      	orrs	r1, r6
3000315c:	ae10      	add	r6, sp, #64	; 0x40
3000315e:	0fa8      	lsrs	r0, r5, #30
30003160:	f843 1c30 	str.w	r1, [r3, #-48]
30003164:	eb06 0080 	add.w	r0, r6, r0, lsl #2
30003168:	f850 3c10 	ldr.w	r3, [r0, #-16]
3000316c:	432b      	orrs	r3, r5
3000316e:	f840 3c10 	str.w	r3, [r0, #-16]
30003172:	f852 1f0c 	ldr.w	r1, [r2, #12]!
30003176:	1c4b      	adds	r3, r1, #1
30003178:	d1e5      	bne.n	30003146 <BOOT_RccConfig+0x4e>
3000317a:	4667      	mov	r7, ip
3000317c:	ae04      	add	r6, sp, #16
3000317e:	4912      	ldr	r1, [pc, #72]	; (300031c8 <BOOT_RccConfig+0xd0>)
30003180:	f85e 5b04 	ldr.w	r5, [lr], #4
30003184:	f857 2b04 	ldr.w	r2, [r7], #4
30003188:	f855 8001 	ldr.w	r8, [r5, r1]
3000318c:	45f4      	cmp	ip, lr
3000318e:	f022 4240 	bic.w	r2, r2, #3221225472	; 0xc0000000
30003192:	f854 0b04 	ldr.w	r0, [r4], #4
30003196:	f856 3b04 	ldr.w	r3, [r6], #4
3000319a:	ea42 0208 	orr.w	r2, r2, r8
3000319e:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
300031a2:	506a      	str	r2, [r5, r1]
300031a4:	5842      	ldr	r2, [r0, r1]
300031a6:	ea43 0302 	orr.w	r3, r3, r2
300031aa:	5043      	str	r3, [r0, r1]
300031ac:	d1e8      	bne.n	30003180 <BOOT_RccConfig+0x88>
300031ae:	200a      	movs	r0, #10
300031b0:	4b06      	ldr	r3, [pc, #24]	; (300031cc <BOOT_RccConfig+0xd4>)
300031b2:	4798      	blx	r3
300031b4:	4b06      	ldr	r3, [pc, #24]	; (300031d0 <BOOT_RccConfig+0xd8>)
300031b6:	b010      	add	sp, #64	; 0x40
300031b8:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
300031bc:	4718      	bx	r3
300031be:	bf00      	nop
300031c0:	3000ba78 	.word	0x3000ba78
300031c4:	3000e038 	.word	0x3000e038
300031c8:	42008000 	.word	0x42008000
300031cc:	00009b2d 	.word	0x00009b2d
300031d0:	3000877d 	.word	0x3000877d

300031d4 <BOOT_CACHEWRR_Set>:
300031d4:	4b14      	ldr	r3, [pc, #80]	; (30003228 <BOOT_CACHEWRR_Set+0x54>)
300031d6:	b430      	push	{r4, r5}
300031d8:	681a      	ldr	r2, [r3, #0]
300031da:	2a01      	cmp	r2, #1
300031dc:	d10f      	bne.n	300031fe <BOOT_CACHEWRR_Set+0x2a>
300031de:	f04f 20e0 	mov.w	r0, #3758153728	; 0xe000e000
300031e2:	685d      	ldr	r5, [r3, #4]
300031e4:	689c      	ldr	r4, [r3, #8]
300031e6:	6882      	ldr	r2, [r0, #8]
300031e8:	4910      	ldr	r1, [pc, #64]	; (3000322c <BOOT_CACHEWRR_Set+0x58>)
300031ea:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
300031ee:	ea42 3205 	orr.w	r2, r2, r5, lsl #12
300031f2:	6082      	str	r2, [r0, #8]
300031f4:	f8c1 40a0 	str.w	r4, [r1, #160]	; 0xa0
300031f8:	68da      	ldr	r2, [r3, #12]
300031fa:	f8c1 20a4 	str.w	r2, [r1, #164]	; 0xa4
300031fe:	691a      	ldr	r2, [r3, #16]
30003200:	2a01      	cmp	r2, #1
30003202:	d10f      	bne.n	30003224 <BOOT_CACHEWRR_Set+0x50>
30003204:	f04f 21e0 	mov.w	r1, #3758153728	; 0xe000e000
30003208:	695d      	ldr	r5, [r3, #20]
3000320a:	4a08      	ldr	r2, [pc, #32]	; (3000322c <BOOT_CACHEWRR_Set+0x58>)
3000320c:	e9d3 4006 	ldrd	r4, r0, [r3, #24]
30003210:	688b      	ldr	r3, [r1, #8]
30003212:	f423 1340 	bic.w	r3, r3, #3145728	; 0x300000
30003216:	ea43 5305 	orr.w	r3, r3, r5, lsl #20
3000321a:	608b      	str	r3, [r1, #8]
3000321c:	f8c2 40a8 	str.w	r4, [r2, #168]	; 0xa8
30003220:	f8c2 00ac 	str.w	r0, [r2, #172]	; 0xac
30003224:	bc30      	pop	{r4, r5}
30003226:	4770      	bx	lr
30003228:	3000e014 	.word	0x3000e014
3000322c:	e0042000 	.word	0xe0042000

30003230 <BOOT_TCMSet>:
30003230:	2300      	movs	r3, #0
30003232:	b5f0      	push	{r4, r5, r6, r7, lr}
30003234:	4db3      	ldr	r5, [pc, #716]	; (30003504 <BOOT_TCMSet+0x2d4>)
30003236:	461c      	mov	r4, r3
30003238:	f855 2023 	ldr.w	r2, [r5, r3, lsl #2]
3000323c:	3307      	adds	r3, #7
3000323e:	4282      	cmp	r2, r0
30003240:	d03c      	beq.n	300032bc <BOOT_TCMSet+0x8c>
30003242:	3401      	adds	r4, #1
30003244:	2c07      	cmp	r4, #7
30003246:	d1f7      	bne.n	30003238 <BOOT_TCMSet+0x8>
30003248:	f3bf 8f4f 	dsb	sy
3000324c:	f3bf 8f6f 	isb	sy
30003250:	48ad      	ldr	r0, [pc, #692]	; (30003508 <BOOT_TCMSet+0x2d8>)
30003252:	2200      	movs	r2, #0
30003254:	f8c0 2250 	str.w	r2, [r0, #592]	; 0x250
30003258:	f3bf 8f4f 	dsb	sy
3000325c:	f3bf 8f6f 	isb	sy
30003260:	6943      	ldr	r3, [r0, #20]
30003262:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
30003266:	6143      	str	r3, [r0, #20]
30003268:	f3bf 8f4f 	dsb	sy
3000326c:	f3bf 8f6f 	isb	sy
30003270:	f8c0 2084 	str.w	r2, [r0, #132]	; 0x84
30003274:	f3bf 8f4f 	dsb	sy
30003278:	f8d0 5080 	ldr.w	r5, [r0, #128]	; 0x80
3000327c:	f643 76e0 	movw	r6, #16352	; 0x3fe0
30003280:	f3c5 344e 	ubfx	r4, r5, #13, #15
30003284:	f3c5 05c9 	ubfx	r5, r5, #3, #10
30003288:	0164      	lsls	r4, r4, #5
3000328a:	ea04 0106 	and.w	r1, r4, r6
3000328e:	462b      	mov	r3, r5
30003290:	ea41 7283 	orr.w	r2, r1, r3, lsl #30
30003294:	3b01      	subs	r3, #1
30003296:	1c5f      	adds	r7, r3, #1
30003298:	f8c0 2260 	str.w	r2, [r0, #608]	; 0x260
3000329c:	d1f8      	bne.n	30003290 <BOOT_TCMSet+0x60>
3000329e:	3c20      	subs	r4, #32
300032a0:	f114 0f20 	cmn.w	r4, #32
300032a4:	d1f1      	bne.n	3000328a <BOOT_TCMSet+0x5a>
300032a6:	f3bf 8f4f 	dsb	sy
300032aa:	6943      	ldr	r3, [r0, #20]
300032ac:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
300032b0:	6143      	str	r3, [r0, #20]
300032b2:	f3bf 8f4f 	dsb	sy
300032b6:	f3bf 8f6f 	isb	sy
300032ba:	bdf0      	pop	{r4, r5, r6, r7, pc}
300032bc:	2c00      	cmp	r4, #0
300032be:	d0c3      	beq.n	30003248 <BOOT_TCMSet+0x18>
300032c0:	f3bf 8f4f 	dsb	sy
300032c4:	f3bf 8f6f 	isb	sy
300032c8:	4890      	ldr	r0, [pc, #576]	; (3000350c <BOOT_TCMSet+0x2dc>)
300032ca:	2300      	movs	r3, #0
300032cc:	f8c0 3250 	str.w	r3, [r0, #592]	; 0x250
300032d0:	f3bf 8f4f 	dsb	sy
300032d4:	f3bf 8f6f 	isb	sy
300032d8:	6942      	ldr	r2, [r0, #20]
300032da:	03d2      	lsls	r2, r2, #15
300032dc:	d520      	bpl.n	30003320 <BOOT_TCMSet+0xf0>
300032de:	f8c0 3084 	str.w	r3, [r0, #132]	; 0x84
300032e2:	f3bf 8f4f 	dsb	sy
300032e6:	f8d0 3080 	ldr.w	r3, [r0, #128]	; 0x80
300032ea:	f643 76e0 	movw	r6, #16352	; 0x3fe0
300032ee:	f3c3 0ec9 	ubfx	lr, r3, #3, #10
300032f2:	f3c3 334e 	ubfx	r3, r3, #13, #15
300032f6:	ea4f 1c43 	mov.w	ip, r3, lsl #5
300032fa:	ea0c 0106 	and.w	r1, ip, r6
300032fe:	4673      	mov	r3, lr
30003300:	ea41 7283 	orr.w	r2, r1, r3, lsl #30
30003304:	3b01      	subs	r3, #1
30003306:	1c5f      	adds	r7, r3, #1
30003308:	f8c0 2274 	str.w	r2, [r0, #628]	; 0x274
3000330c:	d1f8      	bne.n	30003300 <BOOT_TCMSet+0xd0>
3000330e:	f1ac 0c20 	sub.w	ip, ip, #32
30003312:	f11c 0f20 	cmn.w	ip, #32
30003316:	d1f0      	bne.n	300032fa <BOOT_TCMSet+0xca>
30003318:	f3bf 8f4f 	dsb	sy
3000331c:	f3bf 8f6f 	isb	sy
30003320:	f3bf 8f4f 	dsb	sy
30003324:	f3bf 8f6f 	isb	sy
30003328:	4878      	ldr	r0, [pc, #480]	; (3000350c <BOOT_TCMSet+0x2dc>)
3000332a:	2200      	movs	r2, #0
3000332c:	6943      	ldr	r3, [r0, #20]
3000332e:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
30003332:	6143      	str	r3, [r0, #20]
30003334:	f8c0 2250 	str.w	r2, [r0, #592]	; 0x250
30003338:	f3bf 8f4f 	dsb	sy
3000333c:	f3bf 8f6f 	isb	sy
30003340:	f8c0 2084 	str.w	r2, [r0, #132]	; 0x84
30003344:	f3bf 8f4f 	dsb	sy
30003348:	6943      	ldr	r3, [r0, #20]
3000334a:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
3000334e:	6143      	str	r3, [r0, #20]
30003350:	f3bf 8f4f 	dsb	sy
30003354:	f8d0 3080 	ldr.w	r3, [r0, #128]	; 0x80
30003358:	f643 7ee0 	movw	lr, #16352	; 0x3fe0
3000335c:	f3c3 06c9 	ubfx	r6, r3, #3, #10
30003360:	f3c3 334e 	ubfx	r3, r3, #13, #15
30003364:	ea4f 1c43 	mov.w	ip, r3, lsl #5
30003368:	ea0c 010e 	and.w	r1, ip, lr
3000336c:	4633      	mov	r3, r6
3000336e:	ea41 7283 	orr.w	r2, r1, r3, lsl #30
30003372:	3b01      	subs	r3, #1
30003374:	f8c0 2274 	str.w	r2, [r0, #628]	; 0x274
30003378:	1c5a      	adds	r2, r3, #1
3000337a:	d1f8      	bne.n	3000336e <BOOT_TCMSet+0x13e>
3000337c:	f1ac 0c20 	sub.w	ip, ip, #32
30003380:	f11c 0f20 	cmn.w	ip, #32
30003384:	d1f0      	bne.n	30003368 <BOOT_TCMSet+0x138>
30003386:	f3bf 8f4f 	dsb	sy
3000338a:	f3bf 8f6f 	isb	sy
3000338e:	f04f 4082 	mov.w	r0, #1090519040	; 0x41000000
30003392:	ebc4 02c4 	rsb	r2, r4, r4, lsl #3
30003396:	00e3      	lsls	r3, r4, #3
30003398:	6b41      	ldr	r1, [r0, #52]	; 0x34
3000339a:	eb05 0282 	add.w	r2, r5, r2, lsl #2
3000339e:	f441 5180 	orr.w	r1, r1, #4096	; 0x1000
300033a2:	6341      	str	r1, [r0, #52]	; 0x34
300033a4:	6911      	ldr	r1, [r2, #16]
300033a6:	2903      	cmp	r1, #3
300033a8:	d00f      	beq.n	300033ca <BOOT_TCMSet+0x19a>
300033aa:	f04f 26e0 	mov.w	r6, #3758153728	; 0xe000e000
300033ae:	4858      	ldr	r0, [pc, #352]	; (30003510 <BOOT_TCMSet+0x2e0>)
300033b0:	f04f 0c00 	mov.w	ip, #0
300033b4:	4f57      	ldr	r7, [pc, #348]	; (30003514 <BOOT_TCMSet+0x2e4>)
300033b6:	68b2      	ldr	r2, [r6, #8]
300033b8:	f422 1240 	bic.w	r2, r2, #3145728	; 0x300000
300033bc:	ea42 5201 	orr.w	r2, r2, r1, lsl #20
300033c0:	60b2      	str	r2, [r6, #8]
300033c2:	f8c0 c0a8 	str.w	ip, [r0, #168]	; 0xa8
300033c6:	f8c0 70ac 	str.w	r7, [r0, #172]	; 0xac
300033ca:	1b1a      	subs	r2, r3, r4
300033cc:	eb05 0282 	add.w	r2, r5, r2, lsl #2
300033d0:	68d1      	ldr	r1, [r2, #12]
300033d2:	2903      	cmp	r1, #3
300033d4:	d00f      	beq.n	300033f6 <BOOT_TCMSet+0x1c6>
300033d6:	f04f 26e0 	mov.w	r6, #3758153728	; 0xe000e000
300033da:	484d      	ldr	r0, [pc, #308]	; (30003510 <BOOT_TCMSet+0x2e0>)
300033dc:	f04f 0c00 	mov.w	ip, #0
300033e0:	4f4c      	ldr	r7, [pc, #304]	; (30003514 <BOOT_TCMSet+0x2e4>)
300033e2:	68b2      	ldr	r2, [r6, #8]
300033e4:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
300033e8:	ea42 3201 	orr.w	r2, r2, r1, lsl #12
300033ec:	60b2      	str	r2, [r6, #8]
300033ee:	f8c0 c0a0 	str.w	ip, [r0, #160]	; 0xa0
300033f2:	f8c0 70a4 	str.w	r7, [r0, #164]	; 0xa4
300033f6:	1b1a      	subs	r2, r3, r4
300033f8:	4945      	ldr	r1, [pc, #276]	; (30003510 <BOOT_TCMSet+0x2e0>)
300033fa:	eb05 0282 	add.w	r2, r5, r2, lsl #2
300033fe:	6950      	ldr	r0, [r2, #20]
30003400:	6608      	str	r0, [r1, #96]	; 0x60
30003402:	6990      	ldr	r0, [r2, #24]
30003404:	6648      	str	r0, [r1, #100]	; 0x64
30003406:	6852      	ldr	r2, [r2, #4]
30003408:	2a01      	cmp	r2, #1
3000340a:	d04b      	beq.n	300034a4 <BOOT_TCMSet+0x274>
3000340c:	1b1b      	subs	r3, r3, r4
3000340e:	eb05 0583 	add.w	r5, r5, r3, lsl #2
30003412:	68ab      	ldr	r3, [r5, #8]
30003414:	2b01      	cmp	r3, #1
30003416:	f47f af50 	bne.w	300032ba <BOOT_TCMSet+0x8a>
3000341a:	483b      	ldr	r0, [pc, #236]	; (30003508 <BOOT_TCMSet+0x2d8>)
3000341c:	2300      	movs	r3, #0
3000341e:	f8c0 3084 	str.w	r3, [r0, #132]	; 0x84
30003422:	f3bf 8f4f 	dsb	sy
30003426:	f8d0 5080 	ldr.w	r5, [r0, #128]	; 0x80
3000342a:	f643 76e0 	movw	r6, #16352	; 0x3fe0
3000342e:	f3c5 344e 	ubfx	r4, r5, #13, #15
30003432:	f3c5 05c9 	ubfx	r5, r5, #3, #10
30003436:	0164      	lsls	r4, r4, #5
30003438:	ea04 0106 	and.w	r1, r4, r6
3000343c:	462b      	mov	r3, r5
3000343e:	ea41 7283 	orr.w	r2, r1, r3, lsl #30
30003442:	3b01      	subs	r3, #1
30003444:	1c5f      	adds	r7, r3, #1
30003446:	f8c0 2260 	str.w	r2, [r0, #608]	; 0x260
3000344a:	d1f8      	bne.n	3000343e <BOOT_TCMSet+0x20e>
3000344c:	3c20      	subs	r4, #32
3000344e:	f114 0f20 	cmn.w	r4, #32
30003452:	d1f1      	bne.n	30003438 <BOOT_TCMSet+0x208>
30003454:	f3bf 8f4f 	dsb	sy
30003458:	6943      	ldr	r3, [r0, #20]
3000345a:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
3000345e:	6143      	str	r3, [r0, #20]
30003460:	f3bf 8f4f 	dsb	sy
30003464:	f3bf 8f6f 	isb	sy
30003468:	4828      	ldr	r0, [pc, #160]	; (3000350c <BOOT_TCMSet+0x2dc>)
3000346a:	2300      	movs	r3, #0
3000346c:	f8c0 3084 	str.w	r3, [r0, #132]	; 0x84
30003470:	f3bf 8f4f 	dsb	sy
30003474:	f8d0 5080 	ldr.w	r5, [r0, #128]	; 0x80
30003478:	f643 76e0 	movw	r6, #16352	; 0x3fe0
3000347c:	f3c5 344e 	ubfx	r4, r5, #13, #15
30003480:	f3c5 05c9 	ubfx	r5, r5, #3, #10
30003484:	0164      	lsls	r4, r4, #5
30003486:	ea04 0106 	and.w	r1, r4, r6
3000348a:	462b      	mov	r3, r5
3000348c:	ea41 7283 	orr.w	r2, r1, r3, lsl #30
30003490:	3b01      	subs	r3, #1
30003492:	f8c0 2260 	str.w	r2, [r0, #608]	; 0x260
30003496:	1c5a      	adds	r2, r3, #1
30003498:	d1f8      	bne.n	3000348c <BOOT_TCMSet+0x25c>
3000349a:	3c20      	subs	r4, #32
3000349c:	f114 0f20 	cmn.w	r4, #32
300034a0:	d1f1      	bne.n	30003486 <BOOT_TCMSet+0x256>
300034a2:	e700      	b.n	300032a6 <BOOT_TCMSet+0x76>
300034a4:	f3bf 8f4f 	dsb	sy
300034a8:	f3bf 8f6f 	isb	sy
300034ac:	4a16      	ldr	r2, [pc, #88]	; (30003508 <BOOT_TCMSet+0x2d8>)
300034ae:	2000      	movs	r0, #0
300034b0:	f8c2 0250 	str.w	r0, [r2, #592]	; 0x250
300034b4:	f3bf 8f4f 	dsb	sy
300034b8:	f3bf 8f6f 	isb	sy
300034bc:	6951      	ldr	r1, [r2, #20]
300034be:	f441 3100 	orr.w	r1, r1, #131072	; 0x20000
300034c2:	6151      	str	r1, [r2, #20]
300034c4:	f3bf 8f4f 	dsb	sy
300034c8:	f3bf 8f6f 	isb	sy
300034cc:	f3bf 8f4f 	dsb	sy
300034d0:	f3bf 8f6f 	isb	sy
300034d4:	f5a2 3200 	sub.w	r2, r2, #131072	; 0x20000
300034d8:	f8c2 0250 	str.w	r0, [r2, #592]	; 0x250
300034dc:	f3bf 8f4f 	dsb	sy
300034e0:	f3bf 8f6f 	isb	sy
300034e4:	6951      	ldr	r1, [r2, #20]
300034e6:	f441 3100 	orr.w	r1, r1, #131072	; 0x20000
300034ea:	6151      	str	r1, [r2, #20]
300034ec:	f3bf 8f4f 	dsb	sy
300034f0:	f3bf 8f6f 	isb	sy
300034f4:	1b1b      	subs	r3, r3, r4
300034f6:	eb05 0583 	add.w	r5, r5, r3, lsl #2
300034fa:	68ab      	ldr	r3, [r5, #8]
300034fc:	2b01      	cmp	r3, #1
300034fe:	f47f aedc 	bne.w	300032ba <BOOT_TCMSet+0x8a>
30003502:	e78a      	b.n	3000341a <BOOT_TCMSet+0x1ea>
30003504:	3000df50 	.word	0x3000df50
30003508:	e002ed00 	.word	0xe002ed00
3000350c:	e000ed00 	.word	0xe000ed00
30003510:	e0042000 	.word	0xe0042000
30003514:	ffff0000 	.word	0xffff0000

30003518 <BOOT_GRstConfig>:
30003518:	b538      	push	{r3, r4, r5, lr}
3000351a:	4d0a      	ldr	r5, [pc, #40]	; (30003544 <BOOT_GRstConfig+0x2c>)
3000351c:	f241 040a 	movw	r4, #4106	; 0x100a
30003520:	2028      	movs	r0, #40	; 0x28
30003522:	4a09      	ldr	r2, [pc, #36]	; (30003548 <BOOT_GRstConfig+0x30>)
30003524:	882b      	ldrh	r3, [r5, #0]
30003526:	b29b      	uxth	r3, r3
30003528:	431c      	orrs	r4, r3
3000352a:	802c      	strh	r4, [r5, #0]
3000352c:	4790      	blx	r2
3000352e:	88ab      	ldrh	r3, [r5, #4]
30003530:	b29b      	uxth	r3, r3
30003532:	ea23 0304 	bic.w	r3, r3, r4
30003536:	80ab      	strh	r3, [r5, #4]
30003538:	886b      	ldrh	r3, [r5, #2]
3000353a:	b29b      	uxth	r3, r3
3000353c:	431c      	orrs	r4, r3
3000353e:	806c      	strh	r4, [r5, #2]
30003540:	bd38      	pop	{r3, r4, r5, pc}
30003542:	bf00      	nop
30003544:	42008200 	.word	0x42008200
30003548:	00009b2d 	.word	0x00009b2d

3000354c <BOOT_DDR_LCDC_HPR>:
3000354c:	4a04      	ldr	r2, [pc, #16]	; (30003560 <BOOT_DDR_LCDC_HPR+0x14>)
3000354e:	f8d2 3290 	ldr.w	r3, [r2, #656]	; 0x290
30003552:	f423 6340 	bic.w	r3, r3, #3072	; 0xc00
30003556:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
3000355a:	f8c2 3290 	str.w	r3, [r2, #656]	; 0x290
3000355e:	4770      	bx	lr
30003560:	42008000 	.word	0x42008000

30003564 <BOOT_DDR_Init>:
30003564:	f04f 4382 	mov.w	r3, #1090519040	; 0x41000000
30003568:	b530      	push	{r4, r5, lr}
3000356a:	4d15      	ldr	r5, [pc, #84]	; (300035c0 <BOOT_DDR_Init+0x5c>)
3000356c:	b099      	sub	sp, #100	; 0x64
3000356e:	6b1c      	ldr	r4, [r3, #48]	; 0x30
30003570:	47a8      	blx	r5
30003572:	2803      	cmp	r0, #3
30003574:	d11e      	bne.n	300035b4 <BOOT_DDR_Init+0x50>
30003576:	f044 74c0 	orr.w	r4, r4, #25165824	; 0x1800000
3000357a:	4a12      	ldr	r2, [pc, #72]	; (300035c4 <BOOT_DDR_Init+0x60>)
3000357c:	f04f 4382 	mov.w	r3, #1090519040	; 0x41000000
30003580:	4911      	ldr	r1, [pc, #68]	; (300035c8 <BOOT_DDR_Init+0x64>)
30003582:	a801      	add	r0, sp, #4
30003584:	631c      	str	r4, [r3, #48]	; 0x30
30003586:	f8d2 3204 	ldr.w	r3, [r2, #516]	; 0x204
3000358a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
3000358e:	f8c2 3204 	str.w	r3, [r2, #516]	; 0x204
30003592:	4788      	blx	r1
30003594:	a801      	add	r0, sp, #4
30003596:	4b0d      	ldr	r3, [pc, #52]	; (300035cc <BOOT_DDR_Init+0x68>)
30003598:	4798      	blx	r3
3000359a:	4b0d      	ldr	r3, [pc, #52]	; (300035d0 <BOOT_DDR_Init+0x6c>)
3000359c:	4798      	blx	r3
3000359e:	4b0d      	ldr	r3, [pc, #52]	; (300035d4 <BOOT_DDR_Init+0x70>)
300035a0:	4798      	blx	r3
300035a2:	4b0d      	ldr	r3, [pc, #52]	; (300035d8 <BOOT_DDR_Init+0x74>)
300035a4:	4798      	blx	r3
300035a6:	2101      	movs	r1, #1
300035a8:	f240 10ff 	movw	r0, #511	; 0x1ff
300035ac:	4b0b      	ldr	r3, [pc, #44]	; (300035dc <BOOT_DDR_Init+0x78>)
300035ae:	4798      	blx	r3
300035b0:	b019      	add	sp, #100	; 0x64
300035b2:	bd30      	pop	{r4, r5, pc}
300035b4:	47a8      	blx	r5
300035b6:	2802      	cmp	r0, #2
300035b8:	d0dd      	beq.n	30003576 <BOOT_DDR_Init+0x12>
300035ba:	f044 7480 	orr.w	r4, r4, #16777216	; 0x1000000
300035be:	e7dc      	b.n	3000357a <BOOT_DDR_Init+0x16>
300035c0:	0000c0f9 	.word	0x0000c0f9
300035c4:	42008000 	.word	0x42008000
300035c8:	300065bd 	.word	0x300065bd
300035cc:	30006b35 	.word	0x30006b35
300035d0:	30008071 	.word	0x30008071
300035d4:	30006c05 	.word	0x30006c05
300035d8:	30006c09 	.word	0x30006c09
300035dc:	30007fdd 	.word	0x30007fdd

300035e0 <BOOT_PSRAM_Init>:
300035e0:	b530      	push	{r4, r5, lr}
300035e2:	b089      	sub	sp, #36	; 0x24
300035e4:	4b1d      	ldr	r3, [pc, #116]	; (3000365c <BOOT_PSRAM_Init+0x7c>)
300035e6:	4c1e      	ldr	r4, [pc, #120]	; (30003660 <BOOT_PSRAM_Init+0x80>)
300035e8:	a801      	add	r0, sp, #4
300035ea:	4798      	blx	r3
300035ec:	a801      	add	r0, sp, #4
300035ee:	4b1d      	ldr	r3, [pc, #116]	; (30003664 <BOOT_PSRAM_Init+0x84>)
300035f0:	4798      	blx	r3
300035f2:	4b1d      	ldr	r3, [pc, #116]	; (30003668 <BOOT_PSRAM_Init+0x88>)
300035f4:	4798      	blx	r3
300035f6:	6823      	ldr	r3, [r4, #0]
300035f8:	2b01      	cmp	r3, #1
300035fa:	d01a      	beq.n	30003632 <BOOT_PSRAM_Init+0x52>
300035fc:	4b1b      	ldr	r3, [pc, #108]	; (3000366c <BOOT_PSRAM_Init+0x8c>)
300035fe:	2249      	movs	r2, #73	; 0x49
30003600:	491b      	ldr	r1, [pc, #108]	; (30003670 <BOOT_PSRAM_Init+0x90>)
30003602:	2004      	movs	r0, #4
30003604:	f005 fe8a 	bl	3000931c <rtk_log_write>
30003608:	4b1a      	ldr	r3, [pc, #104]	; (30003674 <BOOT_PSRAM_Init+0x94>)
3000360a:	4798      	blx	r3
3000360c:	4b1a      	ldr	r3, [pc, #104]	; (30003678 <BOOT_PSRAM_Init+0x98>)
3000360e:	f8d3 3268 	ldr.w	r3, [r3, #616]	; 0x268
30003612:	009b      	lsls	r3, r3, #2
30003614:	d514      	bpl.n	30003640 <BOOT_PSRAM_Init+0x60>
30003616:	4a19      	ldr	r2, [pc, #100]	; (3000367c <BOOT_PSRAM_Init+0x9c>)
30003618:	4b19      	ldr	r3, [pc, #100]	; (30003680 <BOOT_PSRAM_Init+0xa0>)
3000361a:	6812      	ldr	r2, [r2, #0]
3000361c:	605a      	str	r2, [r3, #4]
3000361e:	6963      	ldr	r3, [r4, #20]
30003620:	2232      	movs	r2, #50	; 0x32
30003622:	2110      	movs	r1, #16
30003624:	2001      	movs	r0, #1
30003626:	fbb2 f2f3 	udiv	r2, r2, r3
3000362a:	4b16      	ldr	r3, [pc, #88]	; (30003684 <BOOT_PSRAM_Init+0xa4>)
3000362c:	4798      	blx	r3
3000362e:	b009      	add	sp, #36	; 0x24
30003630:	bd30      	pop	{r4, r5, pc}
30003632:	4b15      	ldr	r3, [pc, #84]	; (30003688 <BOOT_PSRAM_Init+0xa8>)
30003634:	4798      	blx	r3
30003636:	4b10      	ldr	r3, [pc, #64]	; (30003678 <BOOT_PSRAM_Init+0x98>)
30003638:	f8d3 3268 	ldr.w	r3, [r3, #616]	; 0x268
3000363c:	009b      	lsls	r3, r3, #2
3000363e:	d4ea      	bmi.n	30003616 <BOOT_PSRAM_Init+0x36>
30003640:	4d12      	ldr	r5, [pc, #72]	; (3000368c <BOOT_PSRAM_Init+0xac>)
30003642:	47a8      	blx	r5
30003644:	b930      	cbnz	r0, 30003654 <BOOT_PSRAM_Init+0x74>
30003646:	4b12      	ldr	r3, [pc, #72]	; (30003690 <BOOT_PSRAM_Init+0xb0>)
30003648:	4798      	blx	r3
3000364a:	4a0d      	ldr	r2, [pc, #52]	; (30003680 <BOOT_PSRAM_Init+0xa0>)
3000364c:	4b0b      	ldr	r3, [pc, #44]	; (3000367c <BOOT_PSRAM_Init+0x9c>)
3000364e:	6852      	ldr	r2, [r2, #4]
30003650:	601a      	str	r2, [r3, #0]
30003652:	e7e4      	b.n	3000361e <BOOT_PSRAM_Init+0x3e>
30003654:	47a8      	blx	r5
30003656:	2801      	cmp	r0, #1
30003658:	d1e1      	bne.n	3000361e <BOOT_PSRAM_Init+0x3e>
3000365a:	e7f4      	b.n	30003646 <BOOT_PSRAM_Init+0x66>
3000365c:	30008275 	.word	0x30008275
30003660:	3000e98c 	.word	0x3000e98c
30003664:	30008295 	.word	0x30008295
30003668:	300082fd 	.word	0x300082fd
3000366c:	3000b7c0 	.word	0x3000b7c0
30003670:	3000b7cc 	.word	0x3000b7cc
30003674:	300085a1 	.word	0x300085a1
30003678:	42008000 	.word	0x42008000
3000367c:	3000e1cc 	.word	0x3000e1cc
30003680:	41002000 	.word	0x41002000
30003684:	30008779 	.word	0x30008779
30003688:	300084c9 	.word	0x300084c9
3000368c:	0000c0f9 	.word	0x0000c0f9
30003690:	300085dd 	.word	0x300085dd

30003694 <BOOT_WakeFromPG>:
30003694:	b530      	push	{r4, r5, lr}
30003696:	4c4a      	ldr	r4, [pc, #296]	; (300037c0 <BOOT_WakeFromPG+0x12c>)
30003698:	b083      	sub	sp, #12
3000369a:	f000 fe91 	bl	300043c0 <BOOT_RAM_TZCfg>
3000369e:	69a3      	ldr	r3, [r4, #24]
300036a0:	b10b      	cbz	r3, 300036a6 <BOOT_WakeFromPG+0x12>
300036a2:	4a48      	ldr	r2, [pc, #288]	; (300037c4 <BOOT_WakeFromPG+0x130>)
300036a4:	6093      	str	r3, [r2, #8]
300036a6:	4b48      	ldr	r3, [pc, #288]	; (300037c8 <BOOT_WakeFromPG+0x134>)
300036a8:	f06f 0c1a 	mvn.w	ip, #26
300036ac:	4847      	ldr	r0, [pc, #284]	; (300037cc <BOOT_WakeFromPG+0x138>)
300036ae:	f103 0e50 	add.w	lr, r3, #80	; 0x50
300036b2:	ebac 0c04 	sub.w	ip, ip, r4
300036b6:	eb0c 0203 	add.w	r2, ip, r3
300036ba:	f813 1f01 	ldrb.w	r1, [r3, #1]!
300036be:	4402      	add	r2, r0
300036c0:	4573      	cmp	r3, lr
300036c2:	f882 1300 	strb.w	r1, [r2, #768]	; 0x300
300036c6:	d1f6      	bne.n	300036b6 <BOOT_WakeFromPG+0x22>
300036c8:	6822      	ldr	r2, [r4, #0]
300036ca:	4b3e      	ldr	r3, [pc, #248]	; (300037c4 <BOOT_WakeFromPG+0x130>)
300036cc:	f422 7280 	bic.w	r2, r2, #256	; 0x100
300036d0:	e9d4 5101 	ldrd	r5, r1, [r4, #4]
300036d4:	6002      	str	r2, [r0, #0]
300036d6:	6045      	str	r5, [r0, #4]
300036d8:	6081      	str	r1, [r0, #8]
300036da:	6a59      	ldr	r1, [r3, #36]	; 0x24
300036dc:	4a3c      	ldr	r2, [pc, #240]	; (300037d0 <BOOT_WakeFromPG+0x13c>)
300036de:	f441 2170 	orr.w	r1, r1, #983040	; 0xf0000
300036e2:	4c3c      	ldr	r4, [pc, #240]	; (300037d4 <BOOT_WakeFromPG+0x140>)
300036e4:	6259      	str	r1, [r3, #36]	; 0x24
300036e6:	6a51      	ldr	r1, [r2, #36]	; 0x24
300036e8:	f441 21e0 	orr.w	r1, r1, #458752	; 0x70000
300036ec:	6251      	str	r1, [r2, #36]	; 0x24
300036ee:	f8d3 1088 	ldr.w	r1, [r3, #136]	; 0x88
300036f2:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
300036f6:	f8c3 1088 	str.w	r1, [r3, #136]	; 0x88
300036fa:	f8d2 1088 	ldr.w	r1, [r2, #136]	; 0x88
300036fe:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
30003702:	f8c2 1088 	str.w	r1, [r2, #136]	; 0x88
30003706:	f8d3 208c 	ldr.w	r2, [r3, #140]	; 0x8c
3000370a:	f442 6240 	orr.w	r2, r2, #3072	; 0xc00
3000370e:	f8c3 208c 	str.w	r2, [r3, #140]	; 0x8c
30003712:	f7ff fd5f 	bl	300031d4 <BOOT_CACHEWRR_Set>
30003716:	4b30      	ldr	r3, [pc, #192]	; (300037d8 <BOOT_WakeFromPG+0x144>)
30003718:	6818      	ldr	r0, [r3, #0]
3000371a:	f7ff fd89 	bl	30003230 <BOOT_TCMSet>
3000371e:	2201      	movs	r2, #1
30003720:	492e      	ldr	r1, [pc, #184]	; (300037dc <BOOT_WakeFromPG+0x148>)
30003722:	f04f 2040 	mov.w	r0, #1073758208	; 0x40004000
30003726:	47a0      	blx	r4
30003728:	4b2d      	ldr	r3, [pc, #180]	; (300037e0 <BOOT_WakeFromPG+0x14c>)
3000372a:	4798      	blx	r3
3000372c:	4b2d      	ldr	r3, [pc, #180]	; (300037e4 <BOOT_WakeFromPG+0x150>)
3000372e:	4798      	blx	r3
30003730:	0783      	lsls	r3, r0, #30
30003732:	9001      	str	r0, [sp, #4]
30003734:	d530      	bpl.n	30003798 <BOOT_WakeFromPG+0x104>
30003736:	4b2c      	ldr	r3, [pc, #176]	; (300037e8 <BOOT_WakeFromPG+0x154>)
30003738:	2249      	movs	r2, #73	; 0x49
3000373a:	492c      	ldr	r1, [pc, #176]	; (300037ec <BOOT_WakeFromPG+0x158>)
3000373c:	2004      	movs	r0, #4
3000373e:	f005 fded 	bl	3000931c <rtk_log_write>
30003742:	2201      	movs	r2, #1
30003744:	492a      	ldr	r1, [pc, #168]	; (300037f0 <BOOT_WakeFromPG+0x15c>)
30003746:	f04f 4082 	mov.w	r0, #1090519040	; 0x41000000
3000374a:	47a0      	blx	r4
3000374c:	2201      	movs	r2, #1
3000374e:	4929      	ldr	r1, [pc, #164]	; (300037f4 <BOOT_WakeFromPG+0x160>)
30003750:	f04f 4081 	mov.w	r0, #1082130432	; 0x40800000
30003754:	47a0      	blx	r4
30003756:	f7ff ff05 	bl	30003564 <BOOT_DDR_Init>
3000375a:	4a27      	ldr	r2, [pc, #156]	; (300037f8 <BOOT_WakeFromPG+0x164>)
3000375c:	f8d2 3290 	ldr.w	r3, [r2, #656]	; 0x290
30003760:	f423 6340 	bic.w	r3, r3, #3072	; 0xc00
30003764:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
30003768:	f8c2 3290 	str.w	r3, [r2, #656]	; 0x290
3000376c:	4b23      	ldr	r3, [pc, #140]	; (300037fc <BOOT_WakeFromPG+0x168>)
3000376e:	2000      	movs	r0, #0
30003770:	4a17      	ldr	r2, [pc, #92]	; (300037d0 <BOOT_WakeFromPG+0x13c>)
30003772:	689c      	ldr	r4, [r3, #8]
30003774:	685b      	ldr	r3, [r3, #4]
30003776:	6063      	str	r3, [r4, #4]
30003778:	6094      	str	r4, [r2, #8]
3000377a:	f005 fd7d 	bl	30009278 <Fault_Hanlder_Redirect>
3000377e:	4b20      	ldr	r3, [pc, #128]	; (30003800 <BOOT_WakeFromPG+0x16c>)
30003780:	f383 8888 	msr	MSP_NS, r3
30003784:	f5a3 6300 	sub.w	r3, r3, #2048	; 0x800
30003788:	f383 8809 	msr	PSP, r3
3000378c:	6860      	ldr	r0, [r4, #4]
3000378e:	b003      	add	sp, #12
30003790:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
30003794:	f7ff bc60 	b.w	30003058 <BOOT_NsStart>
30003798:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
3000379c:	f04f 4188 	mov.w	r1, #1140850688	; 0x44000000
300037a0:	2201      	movs	r2, #1
300037a2:	47a0      	blx	r4
300037a4:	4a14      	ldr	r2, [pc, #80]	; (300037f8 <BOOT_WakeFromPG+0x164>)
300037a6:	f8d2 32fc 	ldr.w	r3, [r2, #764]	; 0x2fc
300037aa:	f043 0302 	orr.w	r3, r3, #2
300037ae:	f8c2 32fc 	str.w	r3, [r2, #764]	; 0x2fc
300037b2:	f7ff ff15 	bl	300035e0 <BOOT_PSRAM_Init>
300037b6:	2096      	movs	r0, #150	; 0x96
300037b8:	4b12      	ldr	r3, [pc, #72]	; (30003804 <BOOT_WakeFromPG+0x170>)
300037ba:	4798      	blx	r3
300037bc:	e7d6      	b.n	3000376c <BOOT_WakeFromPG+0xd8>
300037be:	bf00      	nop
300037c0:	3000e160 	.word	0x3000e160
300037c4:	e000ed00 	.word	0xe000ed00
300037c8:	3000e17b 	.word	0x3000e17b
300037cc:	e000e100 	.word	0xe000e100
300037d0:	e002ed00 	.word	0xe002ed00
300037d4:	0000b479 	.word	0x0000b479
300037d8:	3000e9f0 	.word	0x3000e9f0
300037dc:	40001000 	.word	0x40001000
300037e0:	0000d835 	.word	0x0000d835
300037e4:	30009f8d 	.word	0x30009f8d
300037e8:	3000b7d4 	.word	0x3000b7d4
300037ec:	3000b7cc 	.word	0x3000b7cc
300037f0:	40080000 	.word	0x40080000
300037f4:	40040000 	.word	0x40040000
300037f8:	42008000 	.word	0x42008000
300037fc:	60000020 	.word	0x60000020
30003800:	2001c000 	.word	0x2001c000
30003804:	00009b2d 	.word	0x00009b2d

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
3000385c:	3000e160 	.word	0x3000e160

30003860 <BOOT_SCBVTORReFill_HP>:
30003860:	4a02      	ldr	r2, [pc, #8]	; (3000386c <BOOT_SCBVTORReFill_HP+0xc>)
30003862:	4b03      	ldr	r3, [pc, #12]	; (30003870 <BOOT_SCBVTORReFill_HP+0x10>)
30003864:	6992      	ldr	r2, [r2, #24]
30003866:	609a      	str	r2, [r3, #8]
30003868:	4770      	bx	lr
3000386a:	bf00      	nop
3000386c:	3000e160 	.word	0x3000e160
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
300038e4:	3000e160 	.word	0x3000e160
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
30003928:	3000e160 	.word	0x3000e160
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
30003946:	f005 fce9 	bl	3000931c <rtk_log_write>
3000394a:	2001      	movs	r0, #1
3000394c:	b002      	add	sp, #8
3000394e:	bd10      	pop	{r4, pc}
30003950:	30005545 	.word	0x30005545
30003954:	3000b7e4 	.word	0x3000b7e4
30003958:	3000b7cc 	.word	0x3000b7cc

3000395c <BOOT_ReasonSet>:
3000395c:	4852      	ldr	r0, [pc, #328]	; (30003aa8 <BOOT_ReasonSet+0x14c>)
3000395e:	2249      	movs	r2, #73	; 0x49
30003960:	4b52      	ldr	r3, [pc, #328]	; (30003aac <BOOT_ReasonSet+0x150>)
30003962:	4953      	ldr	r1, [pc, #332]	; (30003ab0 <BOOT_ReasonSet+0x154>)
30003964:	b530      	push	{r4, r5, lr}
30003966:	6a05      	ldr	r5, [r0, #32]
30003968:	b083      	sub	sp, #12
3000396a:	f8d0 4264 	ldr.w	r4, [r0, #612]	; 0x264
3000396e:	6205      	str	r5, [r0, #32]
30003970:	b2ad      	uxth	r5, r5
30003972:	f404 047f 	and.w	r4, r4, #16711680	; 0xff0000
30003976:	432c      	orrs	r4, r5
30003978:	f8c0 4264 	str.w	r4, [r0, #612]	; 0x264
3000397c:	2004      	movs	r0, #4
3000397e:	9400      	str	r4, [sp, #0]
30003980:	f005 fccc 	bl	3000931c <rtk_log_write>
30003984:	0423      	lsls	r3, r4, #16
30003986:	f100 8085 	bmi.w	30003a94 <BOOT_ReasonSet+0x138>
3000398a:	0465      	lsls	r5, r4, #17
3000398c:	d479      	bmi.n	30003a82 <BOOT_ReasonSet+0x126>
3000398e:	04a0      	lsls	r0, r4, #18
30003990:	d46e      	bmi.n	30003a70 <BOOT_ReasonSet+0x114>
30003992:	04e1      	lsls	r1, r4, #19
30003994:	d463      	bmi.n	30003a5e <BOOT_ReasonSet+0x102>
30003996:	0522      	lsls	r2, r4, #20
30003998:	d458      	bmi.n	30003a4c <BOOT_ReasonSet+0xf0>
3000399a:	0563      	lsls	r3, r4, #21
3000399c:	d44d      	bmi.n	30003a3a <BOOT_ReasonSet+0xde>
3000399e:	05a5      	lsls	r5, r4, #22
300039a0:	d442      	bmi.n	30003a28 <BOOT_ReasonSet+0xcc>
300039a2:	05e0      	lsls	r0, r4, #23
300039a4:	d437      	bmi.n	30003a16 <BOOT_ReasonSet+0xba>
300039a6:	0621      	lsls	r1, r4, #24
300039a8:	d42c      	bmi.n	30003a04 <BOOT_ReasonSet+0xa8>
300039aa:	06a2      	lsls	r2, r4, #26
300039ac:	d421      	bmi.n	300039f2 <BOOT_ReasonSet+0x96>
300039ae:	06e3      	lsls	r3, r4, #27
300039b0:	f004 0508 	and.w	r5, r4, #8
300039b4:	d40a      	bmi.n	300039cc <BOOT_ReasonSet+0x70>
300039b6:	b995      	cbnz	r5, 300039de <BOOT_ReasonSet+0x82>
300039b8:	b9cc      	cbnz	r4, 300039ee <BOOT_ReasonSet+0x92>
300039ba:	4b3e      	ldr	r3, [pc, #248]	; (30003ab4 <BOOT_ReasonSet+0x158>)
300039bc:	2249      	movs	r2, #73	; 0x49
300039be:	493e      	ldr	r1, [pc, #248]	; (30003ab8 <BOOT_ReasonSet+0x15c>)
300039c0:	2004      	movs	r0, #4
300039c2:	b003      	add	sp, #12
300039c4:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
300039c8:	f005 bcd0 	b.w	3000936c <rtk_log_write_nano>
300039cc:	483b      	ldr	r0, [pc, #236]	; (30003abc <BOOT_ReasonSet+0x160>)
300039ce:	2249      	movs	r2, #73	; 0x49
300039d0:	4b3b      	ldr	r3, [pc, #236]	; (30003ac0 <BOOT_ReasonSet+0x164>)
300039d2:	9000      	str	r0, [sp, #0]
300039d4:	2004      	movs	r0, #4
300039d6:	4938      	ldr	r1, [pc, #224]	; (30003ab8 <BOOT_ReasonSet+0x15c>)
300039d8:	f005 fcc8 	bl	3000936c <rtk_log_write_nano>
300039dc:	b13d      	cbz	r5, 300039ee <BOOT_ReasonSet+0x92>
300039de:	4c39      	ldr	r4, [pc, #228]	; (30003ac4 <BOOT_ReasonSet+0x168>)
300039e0:	2249      	movs	r2, #73	; 0x49
300039e2:	4b37      	ldr	r3, [pc, #220]	; (30003ac0 <BOOT_ReasonSet+0x164>)
300039e4:	2004      	movs	r0, #4
300039e6:	4934      	ldr	r1, [pc, #208]	; (30003ab8 <BOOT_ReasonSet+0x15c>)
300039e8:	9400      	str	r4, [sp, #0]
300039ea:	f005 fcbf 	bl	3000936c <rtk_log_write_nano>
300039ee:	4b36      	ldr	r3, [pc, #216]	; (30003ac8 <BOOT_ReasonSet+0x16c>)
300039f0:	e7e4      	b.n	300039bc <BOOT_ReasonSet+0x60>
300039f2:	4836      	ldr	r0, [pc, #216]	; (30003acc <BOOT_ReasonSet+0x170>)
300039f4:	2249      	movs	r2, #73	; 0x49
300039f6:	4b32      	ldr	r3, [pc, #200]	; (30003ac0 <BOOT_ReasonSet+0x164>)
300039f8:	9000      	str	r0, [sp, #0]
300039fa:	2004      	movs	r0, #4
300039fc:	492e      	ldr	r1, [pc, #184]	; (30003ab8 <BOOT_ReasonSet+0x15c>)
300039fe:	f005 fcb5 	bl	3000936c <rtk_log_write_nano>
30003a02:	e7d4      	b.n	300039ae <BOOT_ReasonSet+0x52>
30003a04:	4832      	ldr	r0, [pc, #200]	; (30003ad0 <BOOT_ReasonSet+0x174>)
30003a06:	2249      	movs	r2, #73	; 0x49
30003a08:	4b2d      	ldr	r3, [pc, #180]	; (30003ac0 <BOOT_ReasonSet+0x164>)
30003a0a:	9000      	str	r0, [sp, #0]
30003a0c:	2004      	movs	r0, #4
30003a0e:	492a      	ldr	r1, [pc, #168]	; (30003ab8 <BOOT_ReasonSet+0x15c>)
30003a10:	f005 fcac 	bl	3000936c <rtk_log_write_nano>
30003a14:	e7c9      	b.n	300039aa <BOOT_ReasonSet+0x4e>
30003a16:	482f      	ldr	r0, [pc, #188]	; (30003ad4 <BOOT_ReasonSet+0x178>)
30003a18:	2249      	movs	r2, #73	; 0x49
30003a1a:	4b29      	ldr	r3, [pc, #164]	; (30003ac0 <BOOT_ReasonSet+0x164>)
30003a1c:	9000      	str	r0, [sp, #0]
30003a1e:	2004      	movs	r0, #4
30003a20:	4925      	ldr	r1, [pc, #148]	; (30003ab8 <BOOT_ReasonSet+0x15c>)
30003a22:	f005 fca3 	bl	3000936c <rtk_log_write_nano>
30003a26:	e7be      	b.n	300039a6 <BOOT_ReasonSet+0x4a>
30003a28:	482b      	ldr	r0, [pc, #172]	; (30003ad8 <BOOT_ReasonSet+0x17c>)
30003a2a:	2249      	movs	r2, #73	; 0x49
30003a2c:	4b24      	ldr	r3, [pc, #144]	; (30003ac0 <BOOT_ReasonSet+0x164>)
30003a2e:	9000      	str	r0, [sp, #0]
30003a30:	2004      	movs	r0, #4
30003a32:	4921      	ldr	r1, [pc, #132]	; (30003ab8 <BOOT_ReasonSet+0x15c>)
30003a34:	f005 fc9a 	bl	3000936c <rtk_log_write_nano>
30003a38:	e7b3      	b.n	300039a2 <BOOT_ReasonSet+0x46>
30003a3a:	4828      	ldr	r0, [pc, #160]	; (30003adc <BOOT_ReasonSet+0x180>)
30003a3c:	2249      	movs	r2, #73	; 0x49
30003a3e:	4b20      	ldr	r3, [pc, #128]	; (30003ac0 <BOOT_ReasonSet+0x164>)
30003a40:	9000      	str	r0, [sp, #0]
30003a42:	2004      	movs	r0, #4
30003a44:	491c      	ldr	r1, [pc, #112]	; (30003ab8 <BOOT_ReasonSet+0x15c>)
30003a46:	f005 fc91 	bl	3000936c <rtk_log_write_nano>
30003a4a:	e7a8      	b.n	3000399e <BOOT_ReasonSet+0x42>
30003a4c:	4824      	ldr	r0, [pc, #144]	; (30003ae0 <BOOT_ReasonSet+0x184>)
30003a4e:	2249      	movs	r2, #73	; 0x49
30003a50:	4b1b      	ldr	r3, [pc, #108]	; (30003ac0 <BOOT_ReasonSet+0x164>)
30003a52:	9000      	str	r0, [sp, #0]
30003a54:	2004      	movs	r0, #4
30003a56:	4918      	ldr	r1, [pc, #96]	; (30003ab8 <BOOT_ReasonSet+0x15c>)
30003a58:	f005 fc88 	bl	3000936c <rtk_log_write_nano>
30003a5c:	e79d      	b.n	3000399a <BOOT_ReasonSet+0x3e>
30003a5e:	4821      	ldr	r0, [pc, #132]	; (30003ae4 <BOOT_ReasonSet+0x188>)
30003a60:	2249      	movs	r2, #73	; 0x49
30003a62:	4b17      	ldr	r3, [pc, #92]	; (30003ac0 <BOOT_ReasonSet+0x164>)
30003a64:	9000      	str	r0, [sp, #0]
30003a66:	2004      	movs	r0, #4
30003a68:	4913      	ldr	r1, [pc, #76]	; (30003ab8 <BOOT_ReasonSet+0x15c>)
30003a6a:	f005 fc7f 	bl	3000936c <rtk_log_write_nano>
30003a6e:	e792      	b.n	30003996 <BOOT_ReasonSet+0x3a>
30003a70:	481d      	ldr	r0, [pc, #116]	; (30003ae8 <BOOT_ReasonSet+0x18c>)
30003a72:	2249      	movs	r2, #73	; 0x49
30003a74:	4b12      	ldr	r3, [pc, #72]	; (30003ac0 <BOOT_ReasonSet+0x164>)
30003a76:	9000      	str	r0, [sp, #0]
30003a78:	2004      	movs	r0, #4
30003a7a:	490f      	ldr	r1, [pc, #60]	; (30003ab8 <BOOT_ReasonSet+0x15c>)
30003a7c:	f005 fc76 	bl	3000936c <rtk_log_write_nano>
30003a80:	e787      	b.n	30003992 <BOOT_ReasonSet+0x36>
30003a82:	481a      	ldr	r0, [pc, #104]	; (30003aec <BOOT_ReasonSet+0x190>)
30003a84:	2249      	movs	r2, #73	; 0x49
30003a86:	4b0e      	ldr	r3, [pc, #56]	; (30003ac0 <BOOT_ReasonSet+0x164>)
30003a88:	9000      	str	r0, [sp, #0]
30003a8a:	2004      	movs	r0, #4
30003a8c:	490a      	ldr	r1, [pc, #40]	; (30003ab8 <BOOT_ReasonSet+0x15c>)
30003a8e:	f005 fc6d 	bl	3000936c <rtk_log_write_nano>
30003a92:	e77c      	b.n	3000398e <BOOT_ReasonSet+0x32>
30003a94:	4816      	ldr	r0, [pc, #88]	; (30003af0 <BOOT_ReasonSet+0x194>)
30003a96:	2249      	movs	r2, #73	; 0x49
30003a98:	4b09      	ldr	r3, [pc, #36]	; (30003ac0 <BOOT_ReasonSet+0x164>)
30003a9a:	9000      	str	r0, [sp, #0]
30003a9c:	2004      	movs	r0, #4
30003a9e:	4906      	ldr	r1, [pc, #24]	; (30003ab8 <BOOT_ReasonSet+0x15c>)
30003aa0:	f005 fc64 	bl	3000936c <rtk_log_write_nano>
30003aa4:	e771      	b.n	3000398a <BOOT_ReasonSet+0x2e>
30003aa6:	bf00      	nop
30003aa8:	42008000 	.word	0x42008000
30003aac:	3000b7fc 	.word	0x3000b7fc
30003ab0:	3000b7cc 	.word	0x3000b7cc
30003ab4:	3000b874 	.word	0x3000b874
30003ab8:	3000b818 	.word	0x3000b818
30003abc:	3000b86c 	.word	0x3000b86c
30003ac0:	3000b814 	.word	0x3000b814
30003ac4:	3000b870 	.word	0x3000b870
30003ac8:	3000b7c8 	.word	0x3000b7c8
30003acc:	3000b864 	.word	0x3000b864
30003ad0:	3000b85c 	.word	0x3000b85c
30003ad4:	3000b854 	.word	0x3000b854
30003ad8:	3000b84c 	.word	0x3000b84c
30003adc:	3000b844 	.word	0x3000b844
30003ae0:	3000b83c 	.word	0x3000b83c
30003ae4:	3000b834 	.word	0x3000b834
30003ae8:	3000b82c 	.word	0x3000b82c
30003aec:	3000b824 	.word	0x3000b824
30003af0:	3000b81c 	.word	0x3000b81c

30003af4 <BOOT_Enable_KM0>:
30003af4:	b510      	push	{r4, lr}
30003af6:	4c12      	ldr	r4, [pc, #72]	; (30003b40 <BOOT_Enable_KM0+0x4c>)
30003af8:	47a0      	blx	r4
30003afa:	b110      	cbz	r0, 30003b02 <BOOT_Enable_KM0+0xe>
30003afc:	4b11      	ldr	r3, [pc, #68]	; (30003b44 <BOOT_Enable_KM0+0x50>)
30003afe:	4798      	blx	r3
30003b00:	b1a8      	cbz	r0, 30003b2e <BOOT_Enable_KM0+0x3a>
30003b02:	47a0      	blx	r4
30003b04:	b940      	cbnz	r0, 30003b18 <BOOT_Enable_KM0+0x24>
30003b06:	4a10      	ldr	r2, [pc, #64]	; (30003b48 <BOOT_Enable_KM0+0x54>)
30003b08:	f8d2 3268 	ldr.w	r3, [r2, #616]	; 0x268
30003b0c:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
30003b10:	f8c2 3268 	str.w	r3, [r2, #616]	; 0x268
30003b14:	bf40      	sev
30003b16:	bd10      	pop	{r4, pc}
30003b18:	4b0a      	ldr	r3, [pc, #40]	; (30003b44 <BOOT_Enable_KM0+0x50>)
30003b1a:	4798      	blx	r3
30003b1c:	2800      	cmp	r0, #0
30003b1e:	d0f2      	beq.n	30003b06 <BOOT_Enable_KM0+0x12>
30003b20:	4b0a      	ldr	r3, [pc, #40]	; (30003b4c <BOOT_Enable_KM0+0x58>)
30003b22:	2249      	movs	r2, #73	; 0x49
30003b24:	490a      	ldr	r1, [pc, #40]	; (30003b50 <BOOT_Enable_KM0+0x5c>)
30003b26:	2004      	movs	r0, #4
30003b28:	f005 fbf8 	bl	3000931c <rtk_log_write>
30003b2c:	e7eb      	b.n	30003b06 <BOOT_Enable_KM0+0x12>
30003b2e:	4b09      	ldr	r3, [pc, #36]	; (30003b54 <BOOT_Enable_KM0+0x60>)
30003b30:	2249      	movs	r2, #73	; 0x49
30003b32:	4907      	ldr	r1, [pc, #28]	; (30003b50 <BOOT_Enable_KM0+0x5c>)
30003b34:	2004      	movs	r0, #4
30003b36:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
30003b3a:	f005 bbef 	b.w	3000931c <rtk_log_write>
30003b3e:	bf00      	nop
30003b40:	0000c09d 	.word	0x0000c09d
30003b44:	0000c0ad 	.word	0x0000c0ad
30003b48:	42008000 	.word	0x42008000
30003b4c:	3000b8ac 	.word	0x3000b8ac
30003b50:	3000b7cc 	.word	0x3000b7cc
30003b54:	3000b888 	.word	0x3000b888

30003b58 <BOOT_AP_Clk_Get>:
30003b58:	4a06      	ldr	r2, [pc, #24]	; (30003b74 <BOOT_AP_Clk_Get+0x1c>)
30003b5a:	6913      	ldr	r3, [r2, #16]
30003b5c:	2b00      	cmp	r3, #0
30003b5e:	db03      	blt.n	30003b68 <BOOT_AP_Clk_Get+0x10>
30003b60:	6810      	ldr	r0, [r2, #0]
30003b62:	fbb0 f0f3 	udiv	r0, r0, r3
30003b66:	4770      	bx	lr
30003b68:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
30003b6c:	6850      	ldr	r0, [r2, #4]
30003b6e:	fbb0 f0f3 	udiv	r0, r0, r3
30003b72:	4770      	bx	lr
30003b74:	3000e0d4 	.word	0x3000e0d4

30003b78 <BOOT_SOC_ClkSet>:
30003b78:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30003b7c:	4f78      	ldr	r7, [pc, #480]	; (30003d60 <BOOT_SOC_ClkSet+0x1e8>)
30003b7e:	b085      	sub	sp, #20
30003b80:	4b78      	ldr	r3, [pc, #480]	; (30003d64 <BOOT_SOC_ClkSet+0x1ec>)
30003b82:	4798      	blx	r3
30003b84:	693b      	ldr	r3, [r7, #16]
30003b86:	9003      	str	r0, [sp, #12]
30003b88:	2b00      	cmp	r3, #0
30003b8a:	f2c0 8098 	blt.w	30003cbe <BOOT_SOC_ClkSet+0x146>
30003b8e:	683a      	ldr	r2, [r7, #0]
30003b90:	fbb2 f8f3 	udiv	r8, r2, r3
30003b94:	4b74      	ldr	r3, [pc, #464]	; (30003d68 <BOOT_SOC_ClkSet+0x1f0>)
30003b96:	68f9      	ldr	r1, [r7, #12]
30003b98:	fba3 0302 	umull	r0, r3, r3, r2
30003b9c:	09de      	lsrs	r6, r3, #7
30003b9e:	095d      	lsrs	r5, r3, #5
30003ba0:	099b      	lsrs	r3, r3, #6
30003ba2:	3e01      	subs	r6, #1
30003ba4:	3d01      	subs	r5, #1
30003ba6:	1e5c      	subs	r4, r3, #1
30003ba8:	fbb2 f9f1 	udiv	r9, r2, r1
30003bac:	4a6f      	ldr	r2, [pc, #444]	; (30003d6c <BOOT_SOC_ClkSet+0x1f4>)
30003bae:	4790      	blx	r2
30003bb0:	2801      	cmp	r0, #1
30003bb2:	f000 8081 	beq.w	30003cb8 <BOOT_SOC_ClkSet+0x140>
30003bb6:	f8d7 a008 	ldr.w	sl, [r7, #8]
30003bba:	f1ba 0f03 	cmp.w	sl, #3
30003bbe:	f000 8099 	beq.w	30003cf4 <BOOT_SOC_ClkSet+0x17c>
30003bc2:	4b6b      	ldr	r3, [pc, #428]	; (30003d70 <BOOT_SOC_ClkSet+0x1f8>)
30003bc4:	2201      	movs	r2, #1
30003bc6:	f1b9 0ffa 	cmp.w	r9, #250	; 0xfa
30003bca:	f883 2110 	strb.w	r2, [r3, #272]	; 0x110
30003bce:	f200 80bc 	bhi.w	30003d4a <BOOT_SOC_ClkSet+0x1d2>
30003bd2:	f8df a1dc 	ldr.w	sl, [pc, #476]	; 30003db0 <BOOT_SOC_ClkSet+0x238>
30003bd6:	f89a 3000 	ldrb.w	r3, [sl]
30003bda:	2b01      	cmp	r3, #1
30003bdc:	d103      	bne.n	30003be6 <BOOT_SOC_ClkSet+0x6e>
30003bde:	f5b8 7f66 	cmp.w	r8, #920	; 0x398
30003be2:	f200 80ad 	bhi.w	30003d40 <BOOT_SOC_ClkSet+0x1c8>
30003be6:	2001      	movs	r0, #1
30003be8:	f8df b1c8 	ldr.w	fp, [pc, #456]	; 30003db4 <BOOT_SOC_ClkSet+0x23c>
30003bec:	f004 fdd4 	bl	30008798 <CLK_SWITCH_XTAL>
30003bf0:	6838      	ldr	r0, [r7, #0]
30003bf2:	4b60      	ldr	r3, [pc, #384]	; (30003d74 <BOOT_SOC_ClkSet+0x1fc>)
30003bf4:	0236      	lsls	r6, r6, #8
30003bf6:	fb0b f000 	mul.w	r0, fp, r0
30003bfa:	032d      	lsls	r5, r5, #12
30003bfc:	4798      	blx	r3
30003bfe:	495e      	ldr	r1, [pc, #376]	; (30003d78 <BOOT_SOC_ClkSet+0x200>)
30003c00:	68fa      	ldr	r2, [r7, #12]
30003c02:	0523      	lsls	r3, r4, #20
30003c04:	485d      	ldr	r0, [pc, #372]	; (30003d7c <BOOT_SOC_ClkSet+0x204>)
30003c06:	f406 66e0 	and.w	r6, r6, #1792	; 0x700
30003c0a:	f8d1 4228 	ldr.w	r4, [r1, #552]	; 0x228
30003c0e:	3a01      	subs	r2, #1
30003c10:	b2ad      	uxth	r5, r5
30003c12:	f403 03e0 	and.w	r3, r3, #7340032	; 0x700000
30003c16:	4020      	ands	r0, r4
30003c18:	f002 0207 	and.w	r2, r2, #7
30003c1c:	4302      	orrs	r2, r0
30003c1e:	2000      	movs	r0, #0
30003c20:	4316      	orrs	r6, r2
30003c22:	4335      	orrs	r5, r6
30003c24:	432b      	orrs	r3, r5
30003c26:	f8c1 3228 	str.w	r3, [r1, #552]	; 0x228
30003c2a:	f004 fdb5 	bl	30008798 <CLK_SWITCH_XTAL>
30003c2e:	f89a 3000 	ldrb.w	r3, [sl]
30003c32:	2b00      	cmp	r3, #0
30003c34:	d040      	beq.n	30003cb8 <BOOT_SOC_ClkSet+0x140>
30003c36:	693b      	ldr	r3, [r7, #16]
30003c38:	2b00      	cmp	r3, #0
30003c3a:	db47      	blt.n	30003ccc <BOOT_SOC_ClkSet+0x154>
30003c3c:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
30003c40:	6913      	ldr	r3, [r2, #16]
30003c42:	f043 030c 	orr.w	r3, r3, #12
30003c46:	6113      	str	r3, [r2, #16]
30003c48:	2200      	movs	r2, #0
30003c4a:	4b49      	ldr	r3, [pc, #292]	; (30003d70 <BOOT_SOC_ClkSet+0x1f8>)
30003c4c:	f883 2111 	strb.w	r2, [r3, #273]	; 0x111
30003c50:	f04f 4182 	mov.w	r1, #1090519040	; 0x41000000
30003c54:	693b      	ldr	r3, [r7, #16]
30003c56:	690a      	ldr	r2, [r1, #16]
30003c58:	3b01      	subs	r3, #1
30003c5a:	f022 0203 	bic.w	r2, r2, #3
30003c5e:	f003 0303 	and.w	r3, r3, #3
30003c62:	4313      	orrs	r3, r2
30003c64:	4a44      	ldr	r2, [pc, #272]	; (30003d78 <BOOT_SOC_ClkSet+0x200>)
30003c66:	610b      	str	r3, [r1, #16]
30003c68:	f8d2 3224 	ldr.w	r3, [r2, #548]	; 0x224
30003c6c:	079b      	lsls	r3, r3, #30
30003c6e:	d13a      	bne.n	30003ce6 <BOOT_SOC_ClkSet+0x16e>
30003c70:	2404      	movs	r4, #4
30003c72:	4b43      	ldr	r3, [pc, #268]	; (30003d80 <BOOT_SOC_ClkSet+0x208>)
30003c74:	2249      	movs	r2, #73	; 0x49
30003c76:	4943      	ldr	r1, [pc, #268]	; (30003d84 <BOOT_SOC_ClkSet+0x20c>)
30003c78:	2004      	movs	r0, #4
30003c7a:	f8cd 9000 	str.w	r9, [sp]
30003c7e:	f005 fb4d 	bl	3000931c <rtk_log_write>
30003c82:	4b41      	ldr	r3, [pc, #260]	; (30003d88 <BOOT_SOC_ClkSet+0x210>)
30003c84:	2249      	movs	r2, #73	; 0x49
30003c86:	493f      	ldr	r1, [pc, #252]	; (30003d84 <BOOT_SOC_ClkSet+0x20c>)
30003c88:	2004      	movs	r0, #4
30003c8a:	f8cd 8000 	str.w	r8, [sp]
30003c8e:	f005 fb45 	bl	3000931c <rtk_log_write>
30003c92:	493c      	ldr	r1, [pc, #240]	; (30003d84 <BOOT_SOC_ClkSet+0x20c>)
30003c94:	2249      	movs	r2, #73	; 0x49
30003c96:	4b3d      	ldr	r3, [pc, #244]	; (30003d8c <BOOT_SOC_ClkSet+0x214>)
30003c98:	2004      	movs	r0, #4
30003c9a:	9400      	str	r4, [sp, #0]
30003c9c:	f005 fb3e 	bl	3000931c <rtk_log_write>
30003ca0:	4b3b      	ldr	r3, [pc, #236]	; (30003d90 <BOOT_SOC_ClkSet+0x218>)
30003ca2:	2000      	movs	r0, #0
30003ca4:	4798      	blx	r3
30003ca6:	4601      	mov	r1, r0
30003ca8:	4b3a      	ldr	r3, [pc, #232]	; (30003d94 <BOOT_SOC_ClkSet+0x21c>)
30003caa:	2000      	movs	r0, #0
30003cac:	f021 01ff 	bic.w	r1, r1, #255	; 0xff
30003cb0:	b005      	add	sp, #20
30003cb2:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30003cb6:	4718      	bx	r3
30003cb8:	b005      	add	sp, #20
30003cba:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30003cbe:	f023 4800 	bic.w	r8, r3, #2147483648	; 0x80000000
30003cc2:	e9d7 2300 	ldrd	r2, r3, [r7]
30003cc6:	fbb3 f8f8 	udiv	r8, r3, r8
30003cca:	e763      	b.n	30003b94 <BOOT_SOC_ClkSet+0x1c>
30003ccc:	6878      	ldr	r0, [r7, #4]
30003cce:	4b32      	ldr	r3, [pc, #200]	; (30003d98 <BOOT_SOC_ClkSet+0x220>)
30003cd0:	fb0b f000 	mul.w	r0, fp, r0
30003cd4:	4798      	blx	r3
30003cd6:	4b31      	ldr	r3, [pc, #196]	; (30003d9c <BOOT_SOC_ClkSet+0x224>)
30003cd8:	2001      	movs	r0, #1
30003cda:	4798      	blx	r3
30003cdc:	4b24      	ldr	r3, [pc, #144]	; (30003d70 <BOOT_SOC_ClkSet+0x1f8>)
30003cde:	2201      	movs	r2, #1
30003ce0:	f883 2111 	strb.w	r2, [r3, #273]	; 0x111
30003ce4:	e7b4      	b.n	30003c50 <BOOT_SOC_ClkSet+0xd8>
30003ce6:	4c2e      	ldr	r4, [pc, #184]	; (30003da0 <BOOT_SOC_ClkSet+0x228>)
30003ce8:	4b2e      	ldr	r3, [pc, #184]	; (30003da4 <BOOT_SOC_ClkSet+0x22c>)
30003cea:	4798      	blx	r3
30003cec:	fba4 3400 	umull	r3, r4, r4, r0
30003cf0:	0ca4      	lsrs	r4, r4, #18
30003cf2:	e7be      	b.n	30003c72 <BOOT_SOC_ClkSet+0xfa>
30003cf4:	4b2c      	ldr	r3, [pc, #176]	; (30003da8 <BOOT_SOC_ClkSet+0x230>)
30003cf6:	2001      	movs	r0, #1
30003cf8:	4798      	blx	r3
30003cfa:	4b1d      	ldr	r3, [pc, #116]	; (30003d70 <BOOT_SOC_ClkSet+0x1f8>)
30003cfc:	f5b9 7fa7 	cmp.w	r9, #334	; 0x14e
30003d00:	f883 a110 	strb.w	sl, [r3, #272]	; 0x110
30003d04:	d226      	bcs.n	30003d54 <BOOT_SOC_ClkSet+0x1dc>
30003d06:	f8df a0a8 	ldr.w	sl, [pc, #168]	; 30003db0 <BOOT_SOC_ClkSet+0x238>
30003d0a:	f89a 3000 	ldrb.w	r3, [sl]
30003d0e:	2b01      	cmp	r3, #1
30003d10:	f47f af69 	bne.w	30003be6 <BOOT_SOC_ClkSet+0x6e>
30003d14:	f89d 300c 	ldrb.w	r3, [sp, #12]
30003d18:	075a      	lsls	r2, r3, #29
30003d1a:	d508      	bpl.n	30003d2e <BOOT_SOC_ClkSet+0x1b6>
30003d1c:	f5b8 6f96 	cmp.w	r8, #1200	; 0x4b0
30003d20:	f67f af61 	bls.w	30003be6 <BOOT_SOC_ClkSet+0x6e>
30003d24:	f240 11fb 	movw	r1, #507	; 0x1fb
30003d28:	4820      	ldr	r0, [pc, #128]	; (30003dac <BOOT_SOC_ClkSet+0x234>)
30003d2a:	f007 f8db 	bl	3000aee4 <io_assert_failed>
30003d2e:	f5b8 6fa5 	cmp.w	r8, #1320	; 0x528
30003d32:	f67f af58 	bls.w	30003be6 <BOOT_SOC_ClkSet+0x6e>
30003d36:	f240 11fd 	movw	r1, #509	; 0x1fd
30003d3a:	481c      	ldr	r0, [pc, #112]	; (30003dac <BOOT_SOC_ClkSet+0x234>)
30003d3c:	f007 f8d2 	bl	3000aee4 <io_assert_failed>
30003d40:	f44f 7101 	mov.w	r1, #516	; 0x204
30003d44:	4819      	ldr	r0, [pc, #100]	; (30003dac <BOOT_SOC_ClkSet+0x234>)
30003d46:	f007 f8cd 	bl	3000aee4 <io_assert_failed>
30003d4a:	f240 2102 	movw	r1, #514	; 0x202
30003d4e:	4817      	ldr	r0, [pc, #92]	; (30003dac <BOOT_SOC_ClkSet+0x234>)
30003d50:	f007 f8c8 	bl	3000aee4 <io_assert_failed>
30003d54:	f44f 71fc 	mov.w	r1, #504	; 0x1f8
30003d58:	4814      	ldr	r0, [pc, #80]	; (30003dac <BOOT_SOC_ClkSet+0x234>)
30003d5a:	f007 f8c3 	bl	3000aee4 <io_assert_failed>
30003d5e:	bf00      	nop
30003d60:	3000e0d4 	.word	0x3000e0d4
30003d64:	30009f8d 	.word	0x30009f8d
30003d68:	51eb851f 	.word	0x51eb851f
30003d6c:	0000c0f9 	.word	0x0000c0f9
30003d70:	23020000 	.word	0x23020000
30003d74:	30008e69 	.word	0x30008e69
30003d78:	42008000 	.word	0x42008000
30003d7c:	ff8f08f8 	.word	0xff8f08f8
30003d80:	3000b950 	.word	0x3000b950
30003d84:	3000b7cc 	.word	0x3000b7cc
30003d88:	3000b964 	.word	0x3000b964
30003d8c:	3000b978 	.word	0x3000b978
30003d90:	00009979 	.word	0x00009979
30003d94:	0000994d 	.word	0x0000994d
30003d98:	30008ee9 	.word	0x30008ee9
30003d9c:	30008f25 	.word	0x30008f25
30003da0:	431bde83 	.word	0x431bde83
30003da4:	000099f5 	.word	0x000099f5
30003da8:	30008a2d 	.word	0x30008a2d
30003dac:	3000b8c4 	.word	0x3000b8c4
30003db0:	3000df4e 	.word	0x3000df4e
30003db4:	000f4240 	.word	0x000f4240

30003db8 <BOOT_Disable_AP>:
30003db8:	f04f 4382 	mov.w	r3, #1090519040	; 0x41000000
30003dbc:	4906      	ldr	r1, [pc, #24]	; (30003dd8 <BOOT_Disable_AP+0x20>)
30003dbe:	685a      	ldr	r2, [r3, #4]
30003dc0:	f042 0202 	orr.w	r2, r2, #2
30003dc4:	605a      	str	r2, [r3, #4]
30003dc6:	685a      	ldr	r2, [r3, #4]
30003dc8:	f042 0230 	orr.w	r2, r2, #48	; 0x30
30003dcc:	605a      	str	r2, [r3, #4]
30003dce:	6f8b      	ldr	r3, [r1, #120]	; 0x78
30003dd0:	f043 0303 	orr.w	r3, r3, #3
30003dd4:	678b      	str	r3, [r1, #120]	; 0x78
30003dd6:	4770      	bx	lr
30003dd8:	41000200 	.word	0x41000200

30003ddc <BOOT_Enable_AP>:
30003ddc:	b538      	push	{r3, r4, r5, lr}
30003dde:	f04f 4482 	mov.w	r4, #1090519040	; 0x41000000
30003de2:	2201      	movs	r2, #1
30003de4:	2104      	movs	r1, #4
30003de6:	481e      	ldr	r0, [pc, #120]	; (30003e60 <BOOT_Enable_AP+0x84>)
30003de8:	4b1e      	ldr	r3, [pc, #120]	; (30003e64 <BOOT_Enable_AP+0x88>)
30003dea:	4798      	blx	r3
30003dec:	6863      	ldr	r3, [r4, #4]
30003dee:	4d1e      	ldr	r5, [pc, #120]	; (30003e68 <BOOT_Enable_AP+0x8c>)
30003df0:	2032      	movs	r0, #50	; 0x32
30003df2:	f043 0302 	orr.w	r3, r3, #2
30003df6:	6063      	str	r3, [r4, #4]
30003df8:	6863      	ldr	r3, [r4, #4]
30003dfa:	f043 0330 	orr.w	r3, r3, #48	; 0x30
30003dfe:	6063      	str	r3, [r4, #4]
30003e00:	6823      	ldr	r3, [r4, #0]
30003e02:	f043 0302 	orr.w	r3, r3, #2
30003e06:	6023      	str	r3, [r4, #0]
30003e08:	47a8      	blx	r5
30003e0a:	6823      	ldr	r3, [r4, #0]
30003e0c:	2032      	movs	r0, #50	; 0x32
30003e0e:	f043 0304 	orr.w	r3, r3, #4
30003e12:	6023      	str	r3, [r4, #0]
30003e14:	6823      	ldr	r3, [r4, #0]
30003e16:	f043 0301 	orr.w	r3, r3, #1
30003e1a:	6023      	str	r3, [r4, #0]
30003e1c:	6823      	ldr	r3, [r4, #0]
30003e1e:	f043 0310 	orr.w	r3, r3, #16
30003e22:	6023      	str	r3, [r4, #0]
30003e24:	47a8      	blx	r5
30003e26:	6823      	ldr	r3, [r4, #0]
30003e28:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
30003e2c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
30003e30:	6023      	str	r3, [r4, #0]
30003e32:	47a8      	blx	r5
30003e34:	6862      	ldr	r2, [r4, #4]
30003e36:	490d      	ldr	r1, [pc, #52]	; (30003e6c <BOOT_Enable_AP+0x90>)
30003e38:	f022 0210 	bic.w	r2, r2, #16
30003e3c:	4b0c      	ldr	r3, [pc, #48]	; (30003e70 <BOOT_Enable_AP+0x94>)
30003e3e:	6062      	str	r2, [r4, #4]
30003e40:	6862      	ldr	r2, [r4, #4]
30003e42:	f022 0202 	bic.w	r2, r2, #2
30003e46:	6062      	str	r2, [r4, #4]
30003e48:	68e2      	ldr	r2, [r4, #12]
30003e4a:	f042 0201 	orr.w	r2, r2, #1
30003e4e:	60e2      	str	r2, [r4, #12]
30003e50:	68a2      	ldr	r2, [r4, #8]
30003e52:	f042 0201 	orr.w	r2, r2, #1
30003e56:	60a2      	str	r2, [r4, #8]
30003e58:	684a      	ldr	r2, [r1, #4]
30003e5a:	4313      	orrs	r3, r2
30003e5c:	604b      	str	r3, [r1, #4]
30003e5e:	bd38      	pop	{r3, r4, r5, pc}
30003e60:	4200c000 	.word	0x4200c000
30003e64:	0000aab9 	.word	0x0000aab9
30003e68:	00009b2d 	.word	0x00009b2d
30003e6c:	41000200 	.word	0x41000200
30003e70:	01001111 	.word	0x01001111

30003e74 <BOOT_Share_Memory_Patch>:
30003e74:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
30003e78:	481a      	ldr	r0, [pc, #104]	; (30003ee4 <BOOT_Share_Memory_Patch+0x70>)
30003e7a:	491b      	ldr	r1, [pc, #108]	; (30003ee8 <BOOT_Share_Memory_Patch+0x74>)
30003e7c:	b410      	push	{r4}
30003e7e:	6b13      	ldr	r3, [r2, #48]	; 0x30
30003e80:	f04f 5408 	mov.w	r4, #570425344	; 0x22000000
30003e84:	f443 23c0 	orr.w	r3, r3, #393216	; 0x60000
30003e88:	6313      	str	r3, [r2, #48]	; 0x30
30003e8a:	6823      	ldr	r3, [r4, #0]
30003e8c:	6804      	ldr	r4, [r0, #0]
30003e8e:	f500 3000 	add.w	r0, r0, #131072	; 0x20000
30003e92:	6809      	ldr	r1, [r1, #0]
30003e94:	4423      	add	r3, r4
30003e96:	6804      	ldr	r4, [r0, #0]
30003e98:	f500 205e 	add.w	r0, r0, #909312	; 0xde000
30003e9c:	440b      	add	r3, r1
30003e9e:	4913      	ldr	r1, [pc, #76]	; (30003eec <BOOT_Share_Memory_Patch+0x78>)
30003ea0:	4423      	add	r3, r4
30003ea2:	6809      	ldr	r1, [r1, #0]
30003ea4:	6844      	ldr	r4, [r0, #4]
30003ea6:	f04f 5000 	mov.w	r0, #536870912	; 0x20000000
30003eaa:	440b      	add	r3, r1
30003eac:	6b11      	ldr	r1, [r2, #48]	; 0x30
30003eae:	f421 21c0 	bic.w	r1, r1, #393216	; 0x60000
30003eb2:	4423      	add	r3, r4
30003eb4:	6311      	str	r1, [r2, #48]	; 0x30
30003eb6:	4a0e      	ldr	r2, [pc, #56]	; (30003ef0 <BOOT_Share_Memory_Patch+0x7c>)
30003eb8:	6804      	ldr	r4, [r0, #0]
30003eba:	f500 3000 	add.w	r0, r0, #131072	; 0x20000
30003ebe:	6812      	ldr	r2, [r2, #0]
30003ec0:	4423      	add	r3, r4
30003ec2:	490c      	ldr	r1, [pc, #48]	; (30003ef4 <BOOT_Share_Memory_Patch+0x80>)
30003ec4:	6804      	ldr	r4, [r0, #0]
30003ec6:	4413      	add	r3, r2
30003ec8:	6809      	ldr	r1, [r1, #0]
30003eca:	f04f 520c 	mov.w	r2, #587202560	; 0x23000000
30003ece:	480a      	ldr	r0, [pc, #40]	; (30003ef8 <BOOT_Share_Memory_Patch+0x84>)
30003ed0:	4423      	add	r3, r4
30003ed2:	f85d 4b04 	ldr.w	r4, [sp], #4
30003ed6:	6812      	ldr	r2, [r2, #0]
30003ed8:	440b      	add	r3, r1
30003eda:	6800      	ldr	r0, [r0, #0]
30003edc:	4413      	add	r3, r2
30003ede:	4418      	add	r0, r3
30003ee0:	4770      	bx	lr
30003ee2:	bf00      	nop
30003ee4:	2200c000 	.word	0x2200c000
30003ee8:	22018000 	.word	0x22018000
30003eec:	22100000 	.word	0x22100000
30003ef0:	20010000 	.word	0x20010000
30003ef4:	20030000 	.word	0x20030000
30003ef8:	23010000 	.word	0x23010000

30003efc <BOOT_Log_Init>:
30003efc:	4b10      	ldr	r3, [pc, #64]	; (30003f40 <BOOT_Log_Init+0x44>)
30003efe:	b510      	push	{r4, lr}
30003f00:	781b      	ldrb	r3, [r3, #0]
30003f02:	b93b      	cbnz	r3, 30003f14 <BOOT_Log_Init+0x18>
30003f04:	4c0f      	ldr	r4, [pc, #60]	; (30003f44 <BOOT_Log_Init+0x48>)
30003f06:	4623      	mov	r3, r4
30003f08:	2201      	movs	r2, #1
30003f0a:	2102      	movs	r1, #2
30003f0c:	480e      	ldr	r0, [pc, #56]	; (30003f48 <BOOT_Log_Init+0x4c>)
30003f0e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
30003f12:	4718      	bx	r3
30003f14:	4b0d      	ldr	r3, [pc, #52]	; (30003f4c <BOOT_Log_Init+0x50>)
30003f16:	4798      	blx	r3
30003f18:	3802      	subs	r0, #2
30003f1a:	2801      	cmp	r0, #1
30003f1c:	d9f2      	bls.n	30003f04 <BOOT_Log_Init+0x8>
30003f1e:	4b0c      	ldr	r3, [pc, #48]	; (30003f50 <BOOT_Log_Init+0x54>)
30003f20:	4798      	blx	r3
30003f22:	4c08      	ldr	r4, [pc, #32]	; (30003f44 <BOOT_Log_Init+0x48>)
30003f24:	2200      	movs	r2, #0
30003f26:	2101      	movs	r1, #1
30003f28:	4807      	ldr	r0, [pc, #28]	; (30003f48 <BOOT_Log_Init+0x4c>)
30003f2a:	47a0      	blx	r4
30003f2c:	2101      	movs	r1, #1
30003f2e:	4806      	ldr	r0, [pc, #24]	; (30003f48 <BOOT_Log_Init+0x4c>)
30003f30:	4b08      	ldr	r3, [pc, #32]	; (30003f54 <BOOT_Log_Init+0x58>)
30003f32:	4798      	blx	r3
30003f34:	2201      	movs	r2, #1
30003f36:	4804      	ldr	r0, [pc, #16]	; (30003f48 <BOOT_Log_Init+0x4c>)
30003f38:	4611      	mov	r1, r2
30003f3a:	47a0      	blx	r4
30003f3c:	e7e3      	b.n	30003f06 <BOOT_Log_Init+0xa>
30003f3e:	bf00      	nop
30003f40:	3000e9ec 	.word	0x3000e9ec
30003f44:	0000aab9 	.word	0x0000aab9
30003f48:	4200c000 	.word	0x4200c000
30003f4c:	0000c0f9 	.word	0x0000c0f9
30003f50:	3000a201 	.word	0x3000a201
30003f54:	0000aaa5 	.word	0x0000aaa5

30003f58 <BOOT_Image1>:
30003f58:	4880      	ldr	r0, [pc, #512]	; (3000415c <BOOT_Image1+0x204>)
30003f5a:	2100      	movs	r1, #0
30003f5c:	4a80      	ldr	r2, [pc, #512]	; (30004160 <BOOT_Image1+0x208>)
30003f5e:	b5f0      	push	{r4, r5, r6, r7, lr}
30003f60:	1a12      	subs	r2, r2, r0
30003f62:	b085      	sub	sp, #20
30003f64:	4c7f      	ldr	r4, [pc, #508]	; (30004164 <BOOT_Image1+0x20c>)
30003f66:	47a0      	blx	r4
30003f68:	f7ff fcf8 	bl	3000395c <BOOT_ReasonSet>
30003f6c:	4b7e      	ldr	r3, [pc, #504]	; (30004168 <BOOT_Image1+0x210>)
30003f6e:	487f      	ldr	r0, [pc, #508]	; (3000416c <BOOT_Image1+0x214>)
30003f70:	2200      	movs	r2, #0
30003f72:	497f      	ldr	r1, [pc, #508]	; (30004170 <BOOT_Image1+0x218>)
30003f74:	f8c3 0208 	str.w	r0, [r3, #520]	; 0x208
30003f78:	f8c3 120c 	str.w	r1, [r3, #524]	; 0x20c
30003f7c:	f8c3 2210 	str.w	r2, [r3, #528]	; 0x210
30003f80:	f005 f800 	bl	30008f84 <BOOT_Reason>
30003f84:	b128      	cbz	r0, 30003f92 <BOOT_Image1+0x3a>
30003f86:	4a7b      	ldr	r2, [pc, #492]	; (30004174 <BOOT_Image1+0x21c>)
30003f88:	4b7b      	ldr	r3, [pc, #492]	; (30004178 <BOOT_Image1+0x220>)
30003f8a:	f8d2 2100 	ldr.w	r2, [r2, #256]	; 0x100
30003f8e:	429a      	cmp	r2, r3
30003f90:	d008      	beq.n	30003fa4 <BOOT_Image1+0x4c>
30003f92:	4d78      	ldr	r5, [pc, #480]	; (30004174 <BOOT_Image1+0x21c>)
30003f94:	f44f 7200 	mov.w	r2, #512	; 0x200
30003f98:	2100      	movs	r1, #0
30003f9a:	4628      	mov	r0, r5
30003f9c:	47a0      	blx	r4
30003f9e:	4b76      	ldr	r3, [pc, #472]	; (30004178 <BOOT_Image1+0x220>)
30003fa0:	f8c5 3100 	str.w	r3, [r5, #256]	; 0x100
30003fa4:	f007 fa16 	bl	3000b3d4 <BOOT_VerCheck>
30003fa8:	4b74      	ldr	r3, [pc, #464]	; (3000417c <BOOT_Image1+0x224>)
30003faa:	4798      	blx	r3
30003fac:	b920      	cbnz	r0, 30003fb8 <BOOT_Image1+0x60>
30003fae:	4a74      	ldr	r2, [pc, #464]	; (30004180 <BOOT_Image1+0x228>)
30003fb0:	6893      	ldr	r3, [r2, #8]
30003fb2:	f043 0302 	orr.w	r3, r3, #2
30003fb6:	6093      	str	r3, [r2, #8]
30003fb8:	4d72      	ldr	r5, [pc, #456]	; (30004184 <BOOT_Image1+0x22c>)
30003fba:	4b73      	ldr	r3, [pc, #460]	; (30004188 <BOOT_Image1+0x230>)
30003fbc:	4798      	blx	r3
30003fbe:	782c      	ldrb	r4, [r5, #0]
30003fc0:	2c00      	cmp	r4, #0
30003fc2:	f000 80bc 	beq.w	3000413e <BOOT_Image1+0x1e6>
30003fc6:	2000      	movs	r0, #0
30003fc8:	4b70      	ldr	r3, [pc, #448]	; (3000418c <BOOT_Image1+0x234>)
30003fca:	4798      	blx	r3
30003fcc:	4b70      	ldr	r3, [pc, #448]	; (30004190 <BOOT_Image1+0x238>)
30003fce:	2001      	movs	r0, #1
30003fd0:	4798      	blx	r3
30003fd2:	4e70      	ldr	r6, [pc, #448]	; (30004194 <BOOT_Image1+0x23c>)
30003fd4:	f7ff fdd0 	bl	30003b78 <BOOT_SOC_ClkSet>
30003fd8:	f241 040a 	movw	r4, #4106	; 0x100a
30003fdc:	2028      	movs	r0, #40	; 0x28
30003fde:	8833      	ldrh	r3, [r6, #0]
30003fe0:	b29b      	uxth	r3, r3
30003fe2:	431c      	orrs	r4, r3
30003fe4:	4b6c      	ldr	r3, [pc, #432]	; (30004198 <BOOT_Image1+0x240>)
30003fe6:	8034      	strh	r4, [r6, #0]
30003fe8:	4798      	blx	r3
30003fea:	88b3      	ldrh	r3, [r6, #4]
30003fec:	4a6b      	ldr	r2, [pc, #428]	; (3000419c <BOOT_Image1+0x244>)
30003fee:	b29b      	uxth	r3, r3
30003ff0:	ea23 0304 	bic.w	r3, r3, r4
30003ff4:	80b3      	strh	r3, [r6, #4]
30003ff6:	8873      	ldrh	r3, [r6, #2]
30003ff8:	b29b      	uxth	r3, r3
30003ffa:	431c      	orrs	r4, r3
30003ffc:	8074      	strh	r4, [r6, #2]
30003ffe:	4790      	blx	r2
30004000:	f010 0404 	ands.w	r4, r0, #4
30004004:	9003      	str	r0, [sp, #12]
30004006:	d07d      	beq.n	30004104 <BOOT_Image1+0x1ac>
30004008:	6df3      	ldr	r3, [r6, #92]	; 0x5c
3000400a:	2104      	movs	r1, #4
3000400c:	4a59      	ldr	r2, [pc, #356]	; (30004174 <BOOT_Image1+0x21c>)
3000400e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
30004012:	f423 7398 	bic.w	r3, r3, #304	; 0x130
30004016:	65f3      	str	r3, [r6, #92]	; 0x5c
30004018:	f882 1112 	strb.w	r1, [r2, #274]	; 0x112
3000401c:	2201      	movs	r2, #1
3000401e:	4b60      	ldr	r3, [pc, #384]	; (300041a0 <BOOT_Image1+0x248>)
30004020:	f04f 4188 	mov.w	r1, #1140850688	; 0x44000000
30004024:	4798      	blx	r3
30004026:	f8d6 30fc 	ldr.w	r3, [r6, #252]	; 0xfc
3000402a:	f043 0302 	orr.w	r3, r3, #2
3000402e:	f8c6 30fc 	str.w	r3, [r6, #252]	; 0xfc
30004032:	4a4d      	ldr	r2, [pc, #308]	; (30004168 <BOOT_Image1+0x210>)
30004034:	f8d2 325c 	ldr.w	r3, [r2, #604]	; 0x25c
30004038:	f023 0303 	bic.w	r3, r3, #3
3000403c:	f043 0302 	orr.w	r3, r3, #2
30004040:	f8c2 325c 	str.w	r3, [r2, #604]	; 0x25c
30004044:	f7ff ff5a 	bl	30003efc <BOOT_Log_Init>
30004048:	f3ef 8108 	mrs	r1, MSP
3000404c:	4b55      	ldr	r3, [pc, #340]	; (300041a4 <BOOT_Image1+0x24c>)
3000404e:	2249      	movs	r2, #73	; 0x49
30004050:	2004      	movs	r0, #4
30004052:	9100      	str	r1, [sp, #0]
30004054:	4954      	ldr	r1, [pc, #336]	; (300041a8 <BOOT_Image1+0x250>)
30004056:	f005 f961 	bl	3000931c <rtk_log_write>
3000405a:	4954      	ldr	r1, [pc, #336]	; (300041ac <BOOT_Image1+0x254>)
3000405c:	4a54      	ldr	r2, [pc, #336]	; (300041b0 <BOOT_Image1+0x258>)
3000405e:	2004      	movs	r0, #4
30004060:	4b54      	ldr	r3, [pc, #336]	; (300041b4 <BOOT_Image1+0x25c>)
30004062:	4e55      	ldr	r6, [pc, #340]	; (300041b8 <BOOT_Image1+0x260>)
30004064:	e9cd 2100 	strd	r2, r1, [sp]
30004068:	2249      	movs	r2, #73	; 0x49
3000406a:	494f      	ldr	r1, [pc, #316]	; (300041a8 <BOOT_Image1+0x250>)
3000406c:	f005 f956 	bl	3000931c <rtk_log_write>
30004070:	4952      	ldr	r1, [pc, #328]	; (300041bc <BOOT_Image1+0x264>)
30004072:	e841 f100 	tt	r1, r1
30004076:	f3c1 5180 	ubfx	r1, r1, #22, #1
3000407a:	2249      	movs	r2, #73	; 0x49
3000407c:	2004      	movs	r0, #4
3000407e:	4b50      	ldr	r3, [pc, #320]	; (300041c0 <BOOT_Image1+0x268>)
30004080:	9100      	str	r1, [sp, #0]
30004082:	4949      	ldr	r1, [pc, #292]	; (300041a8 <BOOT_Image1+0x250>)
30004084:	f005 f94a 	bl	3000931c <rtk_log_write>
30004088:	4b4e      	ldr	r3, [pc, #312]	; (300041c4 <BOOT_Image1+0x26c>)
3000408a:	681b      	ldr	r3, [r3, #0]
3000408c:	4798      	blx	r3
3000408e:	f7ff f833 	bl	300030f8 <BOOT_RccConfig>
30004092:	f7ff f89f 	bl	300031d4 <BOOT_CACHEWRR_Set>
30004096:	4b4c      	ldr	r3, [pc, #304]	; (300041c8 <BOOT_Image1+0x270>)
30004098:	6818      	ldr	r0, [r3, #0]
3000409a:	f7ff f8c9 	bl	30003230 <BOOT_TCMSet>
3000409e:	4b4b      	ldr	r3, [pc, #300]	; (300041cc <BOOT_Image1+0x274>)
300040a0:	695b      	ldr	r3, [r3, #20]
300040a2:	03da      	lsls	r2, r3, #15
300040a4:	d512      	bpl.n	300040cc <BOOT_Image1+0x174>
300040a6:	f016 011f 	ands.w	r1, r6, #31
300040aa:	d152      	bne.n	30004152 <BOOT_Image1+0x1fa>
300040ac:	4633      	mov	r3, r6
300040ae:	2174      	movs	r1, #116	; 0x74
300040b0:	f3bf 8f4f 	dsb	sy
300040b4:	4845      	ldr	r0, [pc, #276]	; (300041cc <BOOT_Image1+0x274>)
300040b6:	4419      	add	r1, r3
300040b8:	f8c0 3268 	str.w	r3, [r0, #616]	; 0x268
300040bc:	3320      	adds	r3, #32
300040be:	1aca      	subs	r2, r1, r3
300040c0:	2a00      	cmp	r2, #0
300040c2:	dcf9      	bgt.n	300040b8 <BOOT_Image1+0x160>
300040c4:	f3bf 8f4f 	dsb	sy
300040c8:	f3bf 8f6f 	isb	sy
300040cc:	4a26      	ldr	r2, [pc, #152]	; (30004168 <BOOT_Image1+0x210>)
300040ce:	4b29      	ldr	r3, [pc, #164]	; (30004174 <BOOT_Image1+0x21c>)
300040d0:	f8c2 6270 	str.w	r6, [r2, #624]	; 0x270
300040d4:	2200      	movs	r2, #0
300040d6:	f8c3 210c 	str.w	r2, [r3, #268]	; 0x10c
300040da:	f001 fedf 	bl	30005e9c <flash_highspeed_setup>
300040de:	2c00      	cmp	r4, #0
300040e0:	f040 8113 	bne.w	3000430a <BOOT_Image1+0x3b2>
300040e4:	782b      	ldrb	r3, [r5, #0]
300040e6:	2b00      	cmp	r3, #0
300040e8:	d07e      	beq.n	300041e8 <BOOT_Image1+0x290>
300040ea:	4e39      	ldr	r6, [pc, #228]	; (300041d0 <BOOT_Image1+0x278>)
300040ec:	4d39      	ldr	r5, [pc, #228]	; (300041d4 <BOOT_Image1+0x27c>)
300040ee:	4c2e      	ldr	r4, [pc, #184]	; (300041a8 <BOOT_Image1+0x250>)
300040f0:	462b      	mov	r3, r5
300040f2:	2245      	movs	r2, #69	; 0x45
300040f4:	4621      	mov	r1, r4
300040f6:	2002      	movs	r0, #2
300040f8:	f005 f910 	bl	3000931c <rtk_log_write>
300040fc:	f241 3088 	movw	r0, #5000	; 0x1388
30004100:	47b0      	blx	r6
30004102:	e7f5      	b.n	300040f0 <BOOT_Image1+0x198>
30004104:	4e18      	ldr	r6, [pc, #96]	; (30004168 <BOOT_Image1+0x210>)
30004106:	2102      	movs	r1, #2
30004108:	4a1a      	ldr	r2, [pc, #104]	; (30004174 <BOOT_Image1+0x21c>)
3000410a:	f04f 4082 	mov.w	r0, #1090519040	; 0x41000000
3000410e:	f8d6 325c 	ldr.w	r3, [r6, #604]	; 0x25c
30004112:	4f23      	ldr	r7, [pc, #140]	; (300041a0 <BOOT_Image1+0x248>)
30004114:	f023 0330 	bic.w	r3, r3, #48	; 0x30
30004118:	f8c6 325c 	str.w	r3, [r6, #604]	; 0x25c
3000411c:	f882 1112 	strb.w	r1, [r2, #274]	; 0x112
30004120:	2201      	movs	r2, #1
30004122:	492d      	ldr	r1, [pc, #180]	; (300041d8 <BOOT_Image1+0x280>)
30004124:	47b8      	blx	r7
30004126:	2201      	movs	r2, #1
30004128:	492c      	ldr	r1, [pc, #176]	; (300041dc <BOOT_Image1+0x284>)
3000412a:	f04f 4081 	mov.w	r0, #1082130432	; 0x40800000
3000412e:	47b8      	blx	r7
30004130:	f8d6 32fc 	ldr.w	r3, [r6, #764]	; 0x2fc
30004134:	f043 0303 	orr.w	r3, r3, #3
30004138:	f8c6 32fc 	str.w	r3, [r6, #764]	; 0x2fc
3000413c:	e779      	b.n	30004032 <BOOT_Image1+0xda>
3000413e:	4b14      	ldr	r3, [pc, #80]	; (30004190 <BOOT_Image1+0x238>)
30004140:	2001      	movs	r0, #1
30004142:	4798      	blx	r3
30004144:	4620      	mov	r0, r4
30004146:	4b26      	ldr	r3, [pc, #152]	; (300041e0 <BOOT_Image1+0x288>)
30004148:	4798      	blx	r3
3000414a:	4b26      	ldr	r3, [pc, #152]	; (300041e4 <BOOT_Image1+0x28c>)
3000414c:	2001      	movs	r0, #1
3000414e:	4798      	blx	r3
30004150:	e73f      	b.n	30003fd2 <BOOT_Image1+0x7a>
30004152:	f026 031f 	bic.w	r3, r6, #31
30004156:	3174      	adds	r1, #116	; 0x74
30004158:	e7aa      	b.n	300040b0 <BOOT_Image1+0x158>
3000415a:	bf00      	nop
3000415c:	3000e160 	.word	0x3000e160
30004160:	3000ea6c 	.word	0x3000ea6c
30004164:	00012be5 	.word	0x00012be5
30004168:	42008000 	.word	0x42008000
3000416c:	000c1f7a 	.word	0x000c1f7a
30004170:	4030400c 	.word	0x4030400c
30004174:	23020000 	.word	0x23020000
30004178:	6969a5a5 	.word	0x6969a5a5
3000417c:	0000c179 	.word	0x0000c179
30004180:	2001c00c 	.word	0x2001c00c
30004184:	3000e9ed 	.word	0x3000e9ed
30004188:	30008b49 	.word	0x30008b49
3000418c:	300088c1 	.word	0x300088c1
30004190:	300087e1 	.word	0x300087e1
30004194:	42008200 	.word	0x42008200
30004198:	00009b2d 	.word	0x00009b2d
3000419c:	30009f8d 	.word	0x30009f8d
300041a0:	0000b479 	.word	0x0000b479
300041a4:	3000b98c 	.word	0x3000b98c
300041a8:	3000b7cc 	.word	0x3000b7cc
300041ac:	3000b9b8 	.word	0x3000b9b8
300041b0:	3000b9c4 	.word	0x3000b9c4
300041b4:	3000b9a4 	.word	0x3000b9a4
300041b8:	2001c01c 	.word	0x2001c01c
300041bc:	30003f59 	.word	0x30003f59
300041c0:	3000b9d0 	.word	0x3000b9d0
300041c4:	00033000 	.word	0x00033000
300041c8:	3000e9f0 	.word	0x3000e9f0
300041cc:	e000ed00 	.word	0xe000ed00
300041d0:	00009be5 	.word	0x00009be5
300041d4:	3000ba08 	.word	0x3000ba08
300041d8:	40080000 	.word	0x40080000
300041dc:	40040000 	.word	0x40040000
300041e0:	30008a0d 	.word	0x30008a0d
300041e4:	3000897d 	.word	0x3000897d
300041e8:	4b5e      	ldr	r3, [pc, #376]	; (30004364 <BOOT_Image1+0x40c>)
300041ea:	4798      	blx	r3
300041ec:	2801      	cmp	r0, #1
300041ee:	f04f 0249 	mov.w	r2, #73	; 0x49
300041f2:	495d      	ldr	r1, [pc, #372]	; (30004368 <BOOT_Image1+0x410>)
300041f4:	bf08      	it	eq
300041f6:	4b5d      	ldreq	r3, [pc, #372]	; (3000436c <BOOT_Image1+0x414>)
300041f8:	f04f 0004 	mov.w	r0, #4
300041fc:	bf18      	it	ne
300041fe:	4b5c      	ldrne	r3, [pc, #368]	; (30004370 <BOOT_Image1+0x418>)
30004200:	f005 f88c 	bl	3000931c <rtk_log_write>
30004204:	f7ff f9ae 	bl	30003564 <BOOT_DDR_Init>
30004208:	4a5a      	ldr	r2, [pc, #360]	; (30004374 <BOOT_Image1+0x41c>)
3000420a:	f8d2 3290 	ldr.w	r3, [r2, #656]	; 0x290
3000420e:	f423 6340 	bic.w	r3, r3, #3072	; 0xc00
30004212:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
30004216:	f8c2 3290 	str.w	r3, [r2, #656]	; 0x290
3000421a:	4b56      	ldr	r3, [pc, #344]	; (30004374 <BOOT_Image1+0x41c>)
3000421c:	2400      	movs	r4, #0
3000421e:	f8c3 42d0 	str.w	r4, [r3, #720]	; 0x2d0
30004222:	f8c3 42d4 	str.w	r4, [r3, #724]	; 0x2d4
30004226:	f8c3 42d8 	str.w	r4, [r3, #728]	; 0x2d8
3000422a:	f8c3 40d0 	str.w	r4, [r3, #208]	; 0xd0
3000422e:	f7ff fe21 	bl	30003e74 <BOOT_Share_Memory_Patch>
30004232:	4b51      	ldr	r3, [pc, #324]	; (30004378 <BOOT_Image1+0x420>)
30004234:	4798      	blx	r3
30004236:	1c45      	adds	r5, r0, #1
30004238:	4b50      	ldr	r3, [pc, #320]	; (3000437c <BOOT_Image1+0x424>)
3000423a:	2004      	movs	r0, #4
3000423c:	494a      	ldr	r1, [pc, #296]	; (30004368 <BOOT_Image1+0x410>)
3000423e:	2249      	movs	r2, #73	; 0x49
30004240:	9500      	str	r5, [sp, #0]
30004242:	f005 f86b 	bl	3000931c <rtk_log_write>
30004246:	4622      	mov	r2, r4
30004248:	2101      	movs	r1, #1
3000424a:	484d      	ldr	r0, [pc, #308]	; (30004380 <BOOT_Image1+0x428>)
3000424c:	4b4d      	ldr	r3, [pc, #308]	; (30004384 <BOOT_Image1+0x42c>)
3000424e:	4798      	blx	r3
30004250:	4b4d      	ldr	r3, [pc, #308]	; (30004388 <BOOT_Image1+0x430>)
30004252:	2008      	movs	r0, #8
30004254:	4798      	blx	r3
30004256:	f000 f8b3 	bl	300043c0 <BOOT_RAM_TZCfg>
3000425a:	f7ff fc4b 	bl	30003af4 <BOOT_Enable_KM0>
3000425e:	4b4b      	ldr	r3, [pc, #300]	; (3000438c <BOOT_Image1+0x434>)
30004260:	781b      	ldrb	r3, [r3, #0]
30004262:	2b00      	cmp	r3, #0
30004264:	d06e      	beq.n	30004344 <BOOT_Image1+0x3ec>
30004266:	4b4a      	ldr	r3, [pc, #296]	; (30004390 <BOOT_Image1+0x438>)
30004268:	f893 3066 	ldrb.w	r3, [r3, #102]	; 0x66
3000426c:	b2dc      	uxtb	r4, r3
3000426e:	075b      	lsls	r3, r3, #29
30004270:	d565      	bpl.n	3000433e <BOOT_Image1+0x3e6>
30004272:	f024 0302 	bic.w	r3, r4, #2
30004276:	4a46      	ldr	r2, [pc, #280]	; (30004390 <BOOT_Image1+0x438>)
30004278:	f043 0304 	orr.w	r3, r3, #4
3000427c:	f882 3066 	strb.w	r3, [r2, #102]	; 0x66
30004280:	4943      	ldr	r1, [pc, #268]	; (30004390 <BOOT_Image1+0x438>)
30004282:	2000      	movs	r0, #0
30004284:	4a43      	ldr	r2, [pc, #268]	; (30004394 <BOOT_Image1+0x43c>)
30004286:	f891 306a 	ldrb.w	r3, [r1, #106]	; 0x6a
3000428a:	4c43      	ldr	r4, [pc, #268]	; (30004398 <BOOT_Image1+0x440>)
3000428c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
30004290:	f881 306a 	strb.w	r3, [r1, #106]	; 0x6a
30004294:	6895      	ldr	r5, [r2, #8]
30004296:	6813      	ldr	r3, [r2, #0]
30004298:	606b      	str	r3, [r5, #4]
3000429a:	60a5      	str	r5, [r4, #8]
3000429c:	f004 ffec 	bl	30009278 <Fault_Hanlder_Redirect>
300042a0:	4b3e      	ldr	r3, [pc, #248]	; (3000439c <BOOT_Image1+0x444>)
300042a2:	493f      	ldr	r1, [pc, #252]	; (300043a0 <BOOT_Image1+0x448>)
300042a4:	6a5a      	ldr	r2, [r3, #36]	; 0x24
300042a6:	f442 2270 	orr.w	r2, r2, #983040	; 0xf0000
300042aa:	625a      	str	r2, [r3, #36]	; 0x24
300042ac:	6a62      	ldr	r2, [r4, #36]	; 0x24
300042ae:	f442 22e0 	orr.w	r2, r2, #458752	; 0x70000
300042b2:	6262      	str	r2, [r4, #36]	; 0x24
300042b4:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
300042b8:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
300042bc:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
300042c0:	f8d4 2088 	ldr.w	r2, [r4, #136]	; 0x88
300042c4:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
300042c8:	f8c4 2088 	str.w	r2, [r4, #136]	; 0x88
300042cc:	f8d3 208c 	ldr.w	r2, [r3, #140]	; 0x8c
300042d0:	f442 6240 	orr.w	r2, r2, #3072	; 0xc00
300042d4:	f8c3 208c 	str.w	r2, [r3, #140]	; 0x8c
300042d8:	689b      	ldr	r3, [r3, #8]
300042da:	618b      	str	r3, [r1, #24]
300042dc:	f7ff faca 	bl	30003874 <BOOT_NVICBackup_HP>
300042e0:	4b30      	ldr	r3, [pc, #192]	; (300043a4 <BOOT_Image1+0x44c>)
300042e2:	f383 8888 	msr	MSP_NS, r3
300042e6:	f5a3 6300 	sub.w	r3, r3, #2048	; 0x800
300042ea:	f383 8809 	msr	PSP, r3
300042ee:	6869      	ldr	r1, [r5, #4]
300042f0:	2004      	movs	r0, #4
300042f2:	4b2d      	ldr	r3, [pc, #180]	; (300043a8 <BOOT_Image1+0x450>)
300042f4:	2249      	movs	r2, #73	; 0x49
300042f6:	9100      	str	r1, [sp, #0]
300042f8:	491b      	ldr	r1, [pc, #108]	; (30004368 <BOOT_Image1+0x410>)
300042fa:	f005 f80f 	bl	3000931c <rtk_log_write>
300042fe:	6868      	ldr	r0, [r5, #4]
30004300:	b005      	add	sp, #20
30004302:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
30004306:	f7fe bea7 	b.w	30003058 <BOOT_NsStart>
3000430a:	2004      	movs	r0, #4
3000430c:	2249      	movs	r2, #73	; 0x49
3000430e:	4916      	ldr	r1, [pc, #88]	; (30004368 <BOOT_Image1+0x410>)
30004310:	4b26      	ldr	r3, [pc, #152]	; (300043ac <BOOT_Image1+0x454>)
30004312:	f005 f803 	bl	3000931c <rtk_log_write>
30004316:	4b26      	ldr	r3, [pc, #152]	; (300043b0 <BOOT_Image1+0x458>)
30004318:	4798      	blx	r3
3000431a:	f7ff f961 	bl	300035e0 <BOOT_PSRAM_Init>
3000431e:	7828      	ldrb	r0, [r5, #0]
30004320:	2800      	cmp	r0, #0
30004322:	f47f af7a 	bne.w	3000421a <BOOT_Image1+0x2c2>
30004326:	4b23      	ldr	r3, [pc, #140]	; (300043b4 <BOOT_Image1+0x45c>)
30004328:	4798      	blx	r3
3000432a:	2800      	cmp	r0, #0
3000432c:	f43f af75 	beq.w	3000421a <BOOT_Image1+0x2c2>
30004330:	4b21      	ldr	r3, [pc, #132]	; (300043b8 <BOOT_Image1+0x460>)
30004332:	2257      	movs	r2, #87	; 0x57
30004334:	490c      	ldr	r1, [pc, #48]	; (30004368 <BOOT_Image1+0x410>)
30004336:	2003      	movs	r0, #3
30004338:	f004 fff0 	bl	3000931c <rtk_log_write>
3000433c:	e76d      	b.n	3000421a <BOOT_Image1+0x2c2>
3000433e:	f7ff fd4d 	bl	30003ddc <BOOT_Enable_AP>
30004342:	e796      	b.n	30004272 <BOOT_Image1+0x31a>
30004344:	f04f 4382 	mov.w	r3, #1090519040	; 0x41000000
30004348:	491c      	ldr	r1, [pc, #112]	; (300043bc <BOOT_Image1+0x464>)
3000434a:	685a      	ldr	r2, [r3, #4]
3000434c:	f042 0202 	orr.w	r2, r2, #2
30004350:	605a      	str	r2, [r3, #4]
30004352:	685a      	ldr	r2, [r3, #4]
30004354:	f042 0230 	orr.w	r2, r2, #48	; 0x30
30004358:	605a      	str	r2, [r3, #4]
3000435a:	6f8b      	ldr	r3, [r1, #120]	; 0x78
3000435c:	f043 0303 	orr.w	r3, r3, #3
30004360:	678b      	str	r3, [r1, #120]	; 0x78
30004362:	e78d      	b.n	30004280 <BOOT_Image1+0x328>
30004364:	3000a005 	.word	0x3000a005
30004368:	3000b7cc 	.word	0x3000b7cc
3000436c:	3000ba40 	.word	0x3000ba40
30004370:	3000ba4c 	.word	0x3000ba4c
30004374:	42008000 	.word	0x42008000
30004378:	30005545 	.word	0x30005545
3000437c:	3000b7e4 	.word	0x3000b7e4
30004380:	4200c000 	.word	0x4200c000
30004384:	3000a1b1 	.word	0x3000a1b1
30004388:	0000e1d9 	.word	0x0000e1d9
3000438c:	3000df4e 	.word	0x3000df4e
30004390:	42008200 	.word	0x42008200
30004394:	60000020 	.word	0x60000020
30004398:	e002ed00 	.word	0xe002ed00
3000439c:	e000ed00 	.word	0xe000ed00
300043a0:	3000e160 	.word	0x3000e160
300043a4:	2001c000 	.word	0x2001c000
300043a8:	3000ba58 	.word	0x3000ba58
300043ac:	3000b9e8 	.word	0x3000b9e8
300043b0:	30008119 	.word	0x30008119
300043b4:	300088e1 	.word	0x300088e1
300043b8:	3000b9f8 	.word	0x3000b9f8
300043bc:	41000200 	.word	0x41000200

300043c0 <BOOT_RAM_TZCfg>:
300043c0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
300043c4:	4862      	ldr	r0, [pc, #392]	; (30004550 <BOOT_RAM_TZCfg+0x190>)
300043c6:	b087      	sub	sp, #28
300043c8:	4c62      	ldr	r4, [pc, #392]	; (30004554 <BOOT_RAM_TZCfg+0x194>)
300043ca:	4b63      	ldr	r3, [pc, #396]	; (30004558 <BOOT_RAM_TZCfg+0x198>)
300043cc:	f10d 0a10 	add.w	sl, sp, #16
300043d0:	4962      	ldr	r1, [pc, #392]	; (3000455c <BOOT_RAM_TZCfg+0x19c>)
300043d2:	f024 4270 	bic.w	r2, r4, #4026531840	; 0xf0000000
300043d6:	f10d 0b08 	add.w	fp, sp, #8
300043da:	f8df 91b0 	ldr.w	r9, [pc, #432]	; 3000458c <BOOT_RAM_TZCfg+0x1cc>
300043de:	e9cd 0303 	strd	r0, r3, [sp, #12]
300043e2:	485f      	ldr	r0, [pc, #380]	; (30004560 <BOOT_RAM_TZCfg+0x1a0>)
300043e4:	e9cd 2101 	strd	r2, r1, [sp, #4]
300043e8:	9005      	str	r0, [sp, #20]
300043ea:	f85a 5b04 	ldr.w	r5, [sl], #4
300043ee:	2400      	movs	r4, #0
300043f0:	f85b 6b04 	ldr.w	r6, [fp], #4
300043f4:	2701      	movs	r7, #1
300043f6:	3504      	adds	r5, #4
300043f8:	e00a      	b.n	30004410 <BOOT_RAM_TZCfg+0x50>
300043fa:	f8c8 3004 	str.w	r3, [r8, #4]
300043fe:	6c32      	ldr	r2, [r6, #64]	; 0x40
30004400:	fa07 f304 	lsl.w	r3, r7, r4
30004404:	3401      	adds	r4, #1
30004406:	350c      	adds	r5, #12
30004408:	4313      	orrs	r3, r2
3000440a:	2c08      	cmp	r4, #8
3000440c:	6433      	str	r3, [r6, #64]	; 0x40
3000440e:	d017      	beq.n	30004440 <BOOT_RAM_TZCfg+0x80>
30004410:	f855 3c04 	ldr.w	r3, [r5, #-4]
30004414:	eb06 08c4 	add.w	r8, r6, r4, lsl #3
30004418:	f023 4270 	bic.w	r2, r3, #4026531840	; 0xf0000000
3000441c:	3301      	adds	r3, #1
3000441e:	d00f      	beq.n	30004440 <BOOT_RAM_TZCfg+0x80>
30004420:	f846 2034 	str.w	r2, [r6, r4, lsl #3]
30004424:	682b      	ldr	r3, [r5, #0]
30004426:	454b      	cmp	r3, r9
30004428:	f023 4370 	bic.w	r3, r3, #4026531840	; 0xf0000000
3000442c:	d1e5      	bne.n	300043fa <BOOT_RAM_TZCfg+0x3a>
3000442e:	4b4d      	ldr	r3, [pc, #308]	; (30004564 <BOOT_RAM_TZCfg+0x1a4>)
30004430:	4798      	blx	r3
30004432:	3801      	subs	r0, #1
30004434:	4949      	ldr	r1, [pc, #292]	; (3000455c <BOOT_RAM_TZCfg+0x19c>)
30004436:	f020 4070 	bic.w	r0, r0, #4026531840	; 0xf0000000
3000443a:	f8c8 0004 	str.w	r0, [r8, #4]
3000443e:	e7de      	b.n	300043fe <BOOT_RAM_TZCfg+0x3e>
30004440:	428e      	cmp	r6, r1
30004442:	d074      	beq.n	3000452e <BOOT_RAM_TZCfg+0x16e>
30004444:	2301      	movs	r3, #1
30004446:	6473      	str	r3, [r6, #68]	; 0x44
30004448:	ab04      	add	r3, sp, #16
3000444a:	459b      	cmp	fp, r3
3000444c:	d1cd      	bne.n	300043ea <BOOT_RAM_TZCfg+0x2a>
3000444e:	4b46      	ldr	r3, [pc, #280]	; (30004568 <BOOT_RAM_TZCfg+0x1a8>)
30004450:	f46f 3100 	mvn.w	r1, #131072	; 0x20000
30004454:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
30004458:	4844      	ldr	r0, [pc, #272]	; (3000456c <BOOT_RAM_TZCfg+0x1ac>)
3000445a:	6019      	str	r1, [r3, #0]
3000445c:	2501      	movs	r5, #1
3000445e:	605a      	str	r2, [r3, #4]
30004460:	2100      	movs	r1, #0
30004462:	4a43      	ldr	r2, [pc, #268]	; (30004570 <BOOT_RAM_TZCfg+0x1b0>)
30004464:	4c43      	ldr	r4, [pc, #268]	; (30004574 <BOOT_RAM_TZCfg+0x1b4>)
30004466:	f8c0 5398 	str.w	r5, [r0, #920]	; 0x398
3000446a:	6813      	ldr	r3, [r2, #0]
3000446c:	3301      	adds	r3, #1
3000446e:	d019      	beq.n	300044a4 <BOOT_RAM_TZCfg+0xe4>
30004470:	f8c4 10d8 	str.w	r1, [r4, #216]	; 0xd8
30004474:	320c      	adds	r2, #12
30004476:	f852 3c0c 	ldr.w	r3, [r2, #-12]
3000447a:	3101      	adds	r1, #1
3000447c:	f023 031f 	bic.w	r3, r3, #31
30004480:	2908      	cmp	r1, #8
30004482:	f8c4 30dc 	str.w	r3, [r4, #220]	; 0xdc
30004486:	e952 0302 	ldrd	r0, r3, [r2, #-8]
3000448a:	ea4f 0343 	mov.w	r3, r3, lsl #1
3000448e:	f020 001f 	bic.w	r0, r0, #31
30004492:	f003 0302 	and.w	r3, r3, #2
30004496:	ea43 0300 	orr.w	r3, r3, r0
3000449a:	f043 0301 	orr.w	r3, r3, #1
3000449e:	f8c4 30e0 	str.w	r3, [r4, #224]	; 0xe0
300044a2:	d1e2      	bne.n	3000446a <BOOT_RAM_TZCfg+0xaa>
300044a4:	4833      	ldr	r0, [pc, #204]	; (30004574 <BOOT_RAM_TZCfg+0x1b4>)
300044a6:	2201      	movs	r2, #1
300044a8:	4b33      	ldr	r3, [pc, #204]	; (30004578 <BOOT_RAM_TZCfg+0x1b8>)
300044aa:	f8c0 20d0 	str.w	r2, [r0, #208]	; 0xd0
300044ae:	f8d3 3268 	ldr.w	r3, [r3, #616]	; 0x268
300044b2:	f013 5300 	ands.w	r3, r3, #536870912	; 0x20000000
300044b6:	d11e      	bne.n	300044f6 <BOOT_RAM_TZCfg+0x136>
300044b8:	f8c0 3084 	str.w	r3, [r0, #132]	; 0x84
300044bc:	f3bf 8f4f 	dsb	sy
300044c0:	f8d0 5080 	ldr.w	r5, [r0, #128]	; 0x80
300044c4:	f643 76e0 	movw	r6, #16352	; 0x3fe0
300044c8:	f3c5 344e 	ubfx	r4, r5, #13, #15
300044cc:	f3c5 05c9 	ubfx	r5, r5, #3, #10
300044d0:	0164      	lsls	r4, r4, #5
300044d2:	ea04 0106 	and.w	r1, r4, r6
300044d6:	462b      	mov	r3, r5
300044d8:	ea41 7283 	orr.w	r2, r1, r3, lsl #30
300044dc:	3b01      	subs	r3, #1
300044de:	f8c0 2274 	str.w	r2, [r0, #628]	; 0x274
300044e2:	1c5a      	adds	r2, r3, #1
300044e4:	d1f8      	bne.n	300044d8 <BOOT_RAM_TZCfg+0x118>
300044e6:	3c20      	subs	r4, #32
300044e8:	f114 0f20 	cmn.w	r4, #32
300044ec:	d1f1      	bne.n	300044d2 <BOOT_RAM_TZCfg+0x112>
300044ee:	f3bf 8f4f 	dsb	sy
300044f2:	f3bf 8f6f 	isb	sy
300044f6:	4b1f      	ldr	r3, [pc, #124]	; (30004574 <BOOT_RAM_TZCfg+0x1b4>)
300044f8:	f649 75f7 	movw	r5, #40951	; 0x9ff7
300044fc:	491f      	ldr	r1, [pc, #124]	; (3000457c <BOOT_RAM_TZCfg+0x1bc>)
300044fe:	691c      	ldr	r4, [r3, #16]
30004500:	4a1f      	ldr	r2, [pc, #124]	; (30004580 <BOOT_RAM_TZCfg+0x1c0>)
30004502:	f044 0408 	orr.w	r4, r4, #8
30004506:	611c      	str	r4, [r3, #16]
30004508:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
3000450c:	68d8      	ldr	r0, [r3, #12]
3000450e:	4028      	ands	r0, r5
30004510:	4301      	orrs	r1, r0
30004512:	60d9      	str	r1, [r3, #12]
30004514:	f46f 0180 	mvn.w	r1, #4194304	; 0x400000
30004518:	f06f 03c0 	mvn.w	r3, #192	; 0xc0
3000451c:	f8c2 4280 	str.w	r4, [r2, #640]	; 0x280
30004520:	f8c2 1284 	str.w	r1, [r2, #644]	; 0x284
30004524:	f8c2 3288 	str.w	r3, [r2, #648]	; 0x288
30004528:	b007      	add	sp, #28
3000452a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
3000452e:	4b15      	ldr	r3, [pc, #84]	; (30004584 <BOOT_RAM_TZCfg+0x1c4>)
30004530:	781b      	ldrb	r3, [r3, #0]
30004532:	2b00      	cmp	r3, #0
30004534:	d188      	bne.n	30004448 <BOOT_RAM_TZCfg+0x88>
30004536:	9b01      	ldr	r3, [sp, #4]
30004538:	638b      	str	r3, [r1, #56]	; 0x38
3000453a:	4b13      	ldr	r3, [pc, #76]	; (30004588 <BOOT_RAM_TZCfg+0x1c8>)
3000453c:	f023 4370 	bic.w	r3, r3, #4026531840	; 0xf0000000
30004540:	63cb      	str	r3, [r1, #60]	; 0x3c
30004542:	6c0b      	ldr	r3, [r1, #64]	; 0x40
30004544:	f043 0380 	orr.w	r3, r3, #128	; 0x80
30004548:	640b      	str	r3, [r1, #64]	; 0x40
3000454a:	2301      	movs	r3, #1
3000454c:	644b      	str	r3, [r1, #68]	; 0x44
3000454e:	e77b      	b.n	30004448 <BOOT_RAM_TZCfg+0x88>
30004550:	51001200 	.word	0x51001200
30004554:	70060000 	.word	0x70060000
30004558:	3000c684 	.word	0x3000c684
3000455c:	51001a00 	.word	0x51001a00
30004560:	3000c6e4 	.word	0x3000c6e4
30004564:	3000a029 	.word	0x3000a029
30004568:	51001b00 	.word	0x51001b00
3000456c:	500e0000 	.word	0x500e0000
30004570:	3000c744 	.word	0x3000c744
30004574:	e000ed00 	.word	0xe000ed00
30004578:	42008000 	.word	0x42008000
3000457c:	05fa6000 	.word	0x05fa6000
30004580:	e000e100 	.word	0xe000e100
30004584:	3000df4e 	.word	0x3000df4e
30004588:	70293fff 	.word	0x70293fff
3000458c:	607fffff 	.word	0x607fffff

30004590 <BOOT_SbootEn_Check>:
30004590:	b570      	push	{r4, r5, r6, lr}
30004592:	4b1d      	ldr	r3, [pc, #116]	; (30004608 <BOOT_SbootEn_Check+0x78>)
30004594:	4604      	mov	r4, r0
30004596:	4798      	blx	r3
30004598:	b1c0      	cbz	r0, 300045cc <BOOT_SbootEn_Check+0x3c>
3000459a:	4b1c      	ldr	r3, [pc, #112]	; (3000460c <BOOT_SbootEn_Check+0x7c>)
3000459c:	4798      	blx	r3
3000459e:	4d1c      	ldr	r5, [pc, #112]	; (30004610 <BOOT_SbootEn_Check+0x80>)
300045a0:	2320      	movs	r3, #32
300045a2:	4e1c      	ldr	r6, [pc, #112]	; (30004614 <BOOT_SbootEn_Check+0x84>)
300045a4:	f000 011f 	and.w	r1, r0, #31
300045a8:	f04f 0c01 	mov.w	ip, #1
300045ac:	5d8a      	ldrb	r2, [r1, r6]
300045ae:	3b01      	subs	r3, #1
300045b0:	1c48      	adds	r0, r1, #1
300045b2:	b2d2      	uxtb	r2, r2
300045b4:	2aff      	cmp	r2, #255	; 0xff
300045b6:	5462      	strb	r2, [r4, r1]
300045b8:	f000 011f 	and.w	r1, r0, #31
300045bc:	bf18      	it	ne
300045be:	f885 c000 	strbne.w	ip, [r5]
300045c2:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
300045c6:	d1f1      	bne.n	300045ac <BOOT_SbootEn_Check+0x1c>
300045c8:	7828      	ldrb	r0, [r5, #0]
300045ca:	bd70      	pop	{r4, r5, r6, pc}
300045cc:	4b12      	ldr	r3, [pc, #72]	; (30004618 <BOOT_SbootEn_Check+0x88>)
300045ce:	4798      	blx	r3
300045d0:	b910      	cbnz	r0, 300045d8 <BOOT_SbootEn_Check+0x48>
300045d2:	4b0f      	ldr	r3, [pc, #60]	; (30004610 <BOOT_SbootEn_Check+0x80>)
300045d4:	7818      	ldrb	r0, [r3, #0]
300045d6:	bd70      	pop	{r4, r5, r6, pc}
300045d8:	2201      	movs	r2, #1
300045da:	4d0d      	ldr	r5, [pc, #52]	; (30004610 <BOOT_SbootEn_Check+0x80>)
300045dc:	4b0b      	ldr	r3, [pc, #44]	; (3000460c <BOOT_SbootEn_Check+0x7c>)
300045de:	702a      	strb	r2, [r5, #0]
300045e0:	4798      	blx	r3
300045e2:	4e0e      	ldr	r6, [pc, #56]	; (3000461c <BOOT_SbootEn_Check+0x8c>)
300045e4:	2320      	movs	r3, #32
300045e6:	f000 021f 	and.w	r2, r0, #31
300045ea:	6831      	ldr	r1, [r6, #0]
300045ec:	3b01      	subs	r3, #1
300045ee:	1c50      	adds	r0, r2, #1
300045f0:	f101 4184 	add.w	r1, r1, #1107296256	; 0x42000000
300045f4:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
300045f8:	5c89      	ldrb	r1, [r1, r2]
300045fa:	54a1      	strb	r1, [r4, r2]
300045fc:	f000 021f 	and.w	r2, r0, #31
30004600:	d1f3      	bne.n	300045ea <BOOT_SbootEn_Check+0x5a>
30004602:	7828      	ldrb	r0, [r5, #0]
30004604:	e7e1      	b.n	300045ca <BOOT_SbootEn_Check+0x3a>
30004606:	bf00      	nop
30004608:	0000c2a1 	.word	0x0000c2a1
3000460c:	0000ea4d 	.word	0x0000ea4d
30004610:	3000e1d0 	.word	0x3000e1d0
30004614:	42000720 	.word	0x42000720
30004618:	0000c149 	.word	0x0000c149
3000461c:	3000e034 	.word	0x3000e034

30004620 <BOOT_LoadRDPImg>:
30004620:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30004624:	4b49      	ldr	r3, [pc, #292]	; (3000474c <BOOT_LoadRDPImg+0x12c>)
30004626:	b0d9      	sub	sp, #356	; 0x164
30004628:	468b      	mov	fp, r1
3000462a:	4690      	mov	r8, r2
3000462c:	4605      	mov	r5, r0
3000462e:	2400      	movs	r4, #0
30004630:	2202      	movs	r2, #2
30004632:	e893 0003 	ldmia.w	r3, {r0, r1}
30004636:	ab06      	add	r3, sp, #24
30004638:	e883 0003 	stmia.w	r3, {r0, r1}
3000463c:	4641      	mov	r1, r8
3000463e:	4658      	mov	r0, fp
30004640:	9400      	str	r4, [sp, #0]
30004642:	f000 fc5f 	bl	30004f04 <BOOT_LoadSubImage>
30004646:	2801      	cmp	r0, #1
30004648:	d06f      	beq.n	3000472a <BOOT_LoadRDPImg+0x10a>
3000464a:	4b41      	ldr	r3, [pc, #260]	; (30004750 <BOOT_LoadRDPImg+0x130>)
3000464c:	4620      	mov	r0, r4
3000464e:	4798      	blx	r3
30004650:	2101      	movs	r1, #1
30004652:	4b40      	ldr	r3, [pc, #256]	; (30004754 <BOOT_LoadRDPImg+0x134>)
30004654:	4620      	mov	r0, r4
30004656:	4798      	blx	r3
30004658:	4b3f      	ldr	r3, [pc, #252]	; (30004758 <BOOT_LoadRDPImg+0x138>)
3000465a:	2120      	movs	r1, #32
3000465c:	a810      	add	r0, sp, #64	; 0x40
3000465e:	f8df a110 	ldr.w	sl, [pc, #272]	; 30004770 <BOOT_LoadRDPImg+0x150>
30004662:	af08      	add	r7, sp, #32
30004664:	9404      	str	r4, [sp, #16]
30004666:	4798      	blx	r3
30004668:	f105 0120 	add.w	r1, r5, #32
3000466c:	2210      	movs	r2, #16
3000466e:	a80c      	add	r0, sp, #48	; 0x30
30004670:	f8df 9100 	ldr.w	r9, [pc, #256]	; 30004774 <BOOT_LoadRDPImg+0x154>
30004674:	47d0      	blx	sl
30004676:	ab06      	add	r3, sp, #24
30004678:	9305      	str	r3, [sp, #20]
3000467a:	2210      	movs	r2, #16
3000467c:	4641      	mov	r1, r8
3000467e:	a818      	add	r0, sp, #96	; 0x60
30004680:	f000 fb72 	bl	30004d68 <BOOT_ImgCopy>
30004684:	2310      	movs	r3, #16
30004686:	aa0c      	add	r2, sp, #48	; 0x30
30004688:	a818      	add	r0, sp, #96	; 0x60
3000468a:	4619      	mov	r1, r3
3000468c:	9700      	str	r7, [sp, #0]
3000468e:	47c8      	blx	r9
30004690:	683b      	ldr	r3, [r7, #0]
30004692:	4a32      	ldr	r2, [pc, #200]	; (3000475c <BOOT_LoadRDPImg+0x13c>)
30004694:	4293      	cmp	r3, r2
30004696:	d14c      	bne.n	30004732 <BOOT_LoadRDPImg+0x112>
30004698:	9905      	ldr	r1, [sp, #20]
3000469a:	687b      	ldr	r3, [r7, #4]
3000469c:	f851 2b04 	ldr.w	r2, [r1], #4
300046a0:	9105      	str	r1, [sp, #20]
300046a2:	492f      	ldr	r1, [pc, #188]	; (30004760 <BOOT_LoadRDPImg+0x140>)
300046a4:	428b      	cmp	r3, r1
300046a6:	d144      	bne.n	30004732 <BOOT_LoadRDPImg+0x112>
300046a8:	9200      	str	r2, [sp, #0]
300046aa:	2004      	movs	r0, #4
300046ac:	68fe      	ldr	r6, [r7, #12]
300046ae:	2249      	movs	r2, #73	; 0x49
300046b0:	4b2c      	ldr	r3, [pc, #176]	; (30004764 <BOOT_LoadRDPImg+0x144>)
300046b2:	3e20      	subs	r6, #32
300046b4:	492c      	ldr	r1, [pc, #176]	; (30004768 <BOOT_LoadRDPImg+0x148>)
300046b6:	9601      	str	r6, [sp, #4]
300046b8:	68bd      	ldr	r5, [r7, #8]
300046ba:	3520      	adds	r5, #32
300046bc:	9502      	str	r5, [sp, #8]
300046be:	f004 fe2d 	bl	3000931c <rtk_log_write>
300046c2:	f1bb 0f00 	cmp.w	fp, #0
300046c6:	d006      	beq.n	300046d6 <BOOT_LoadRDPImg+0xb6>
300046c8:	9a04      	ldr	r2, [sp, #16]
300046ca:	f10b 0304 	add.w	r3, fp, #4
300046ce:	f84b 6032 	str.w	r6, [fp, r2, lsl #3]
300046d2:	f843 5032 	str.w	r5, [r3, r2, lsl #3]
300046d6:	b1dd      	cbz	r5, 30004710 <BOOT_LoadRDPImg+0xf0>
300046d8:	f5b5 7f80 	cmp.w	r5, #256	; 0x100
300046dc:	462c      	mov	r4, r5
300046de:	4641      	mov	r1, r8
300046e0:	a818      	add	r0, sp, #96	; 0x60
300046e2:	bf28      	it	cs
300046e4:	f44f 7480 	movcs.w	r4, #256	; 0x100
300046e8:	4622      	mov	r2, r4
300046ea:	44a0      	add	r8, r4
300046ec:	f000 fb3c 	bl	30004d68 <BOOT_ImgCopy>
300046f0:	2310      	movs	r3, #16
300046f2:	aa0c      	add	r2, sp, #48	; 0x30
300046f4:	4621      	mov	r1, r4
300046f6:	9600      	str	r6, [sp, #0]
300046f8:	a818      	add	r0, sp, #96	; 0x60
300046fa:	47c8      	blx	r9
300046fc:	ab18      	add	r3, sp, #96	; 0x60
300046fe:	f1a4 0110 	sub.w	r1, r4, #16
30004702:	2210      	movs	r2, #16
30004704:	a80c      	add	r0, sp, #48	; 0x30
30004706:	4426      	add	r6, r4
30004708:	4419      	add	r1, r3
3000470a:	47d0      	blx	sl
3000470c:	1b2d      	subs	r5, r5, r4
3000470e:	d1e3      	bne.n	300046d8 <BOOT_LoadRDPImg+0xb8>
30004710:	9b04      	ldr	r3, [sp, #16]
30004712:	b13b      	cbz	r3, 30004724 <BOOT_LoadRDPImg+0x104>
30004714:	2100      	movs	r1, #0
30004716:	4b0f      	ldr	r3, [pc, #60]	; (30004754 <BOOT_LoadRDPImg+0x134>)
30004718:	4608      	mov	r0, r1
3000471a:	4798      	blx	r3
3000471c:	2002      	movs	r0, #2
3000471e:	b059      	add	sp, #356	; 0x164
30004720:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30004724:	2301      	movs	r3, #1
30004726:	9304      	str	r3, [sp, #16]
30004728:	e7a7      	b.n	3000467a <BOOT_LoadRDPImg+0x5a>
3000472a:	2002      	movs	r0, #2
3000472c:	b059      	add	sp, #356	; 0x164
3000472e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30004732:	9b04      	ldr	r3, [sp, #16]
30004734:	aa06      	add	r2, sp, #24
30004736:	2002      	movs	r0, #2
30004738:	490b      	ldr	r1, [pc, #44]	; (30004768 <BOOT_LoadRDPImg+0x148>)
3000473a:	f852 4023 	ldr.w	r4, [r2, r3, lsl #2]
3000473e:	2245      	movs	r2, #69	; 0x45
30004740:	4b0a      	ldr	r3, [pc, #40]	; (3000476c <BOOT_LoadRDPImg+0x14c>)
30004742:	9400      	str	r4, [sp, #0]
30004744:	f004 fdea 	bl	3000931c <rtk_log_write>
30004748:	2000      	movs	r0, #0
3000474a:	e7e8      	b.n	3000471e <BOOT_LoadRDPImg+0xfe>
3000474c:	3000bb78 	.word	0x3000bb78
30004750:	00002429 	.word	0x00002429
30004754:	00002479 	.word	0x00002479
30004758:	00004641 	.word	0x00004641
3000475c:	35393138 	.word	0x35393138
30004760:	31313738 	.word	0x31313738
30004764:	3000bad4 	.word	0x3000bad4
30004768:	3000b7cc 	.word	0x3000b7cc
3000476c:	3000bac8 	.word	0x3000bac8
30004770:	00012a1d 	.word	0x00012a1d
30004774:	000046f5 	.word	0x000046f5

30004778 <_BOOT_Validate_ImgHash>:
30004778:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
3000477c:	f5ad 7d51 	sub.w	sp, sp, #836	; 0x344
30004780:	4605      	mov	r5, r0
30004782:	4690      	mov	r8, r2
30004784:	461c      	mov	r4, r3
30004786:	9103      	str	r1, [sp, #12]
30004788:	2100      	movs	r1, #0
3000478a:	22e0      	movs	r2, #224	; 0xe0
3000478c:	4b8a      	ldr	r3, [pc, #552]	; (300049b8 <_BOOT_Validate_ImgHash+0x240>)
3000478e:	a818      	add	r0, sp, #96	; 0x60
30004790:	f88d 101f 	strb.w	r1, [sp, #31]
30004794:	4798      	blx	r3
30004796:	4628      	mov	r0, r5
30004798:	f10d 021f 	add.w	r2, sp, #31
3000479c:	f10d 011e 	add.w	r1, sp, #30
300047a0:	f006 fff6 	bl	3000b790 <__SBOOT_GetMdType_veneer>
300047a4:	9001      	str	r0, [sp, #4]
300047a6:	2800      	cmp	r0, #0
300047a8:	d166      	bne.n	30004878 <_BOOT_Validate_ImgHash+0x100>
300047aa:	f89d 301f 	ldrb.w	r3, [sp, #31]
300047ae:	2b00      	cmp	r3, #0
300047b0:	d067      	beq.n	30004882 <_BOOT_Validate_ImgHash+0x10a>
300047b2:	2101      	movs	r1, #1
300047b4:	4605      	mov	r5, r0
300047b6:	4b81      	ldr	r3, [pc, #516]	; (300049bc <_BOOT_Validate_ImgHash+0x244>)
300047b8:	4608      	mov	r0, r1
300047ba:	4798      	blx	r3
300047bc:	4629      	mov	r1, r5
300047be:	ab18      	add	r3, sp, #96	; 0x60
300047c0:	2220      	movs	r2, #32
300047c2:	f89d 001e 	ldrb.w	r0, [sp, #30]
300047c6:	4d7e      	ldr	r5, [pc, #504]	; (300049c0 <_BOOT_Validate_ImgHash+0x248>)
300047c8:	47a8      	blx	r5
300047ca:	2800      	cmp	r0, #0
300047cc:	f040 808b 	bne.w	300048e6 <_BOOT_Validate_ImgHash+0x16e>
300047d0:	b32c      	cbz	r4, 3000481e <_BOOT_Validate_ImgHash+0xa6>
300047d2:	aad0      	add	r2, sp, #832	; 0x340
300047d4:	1e63      	subs	r3, r4, #1
300047d6:	ae50      	add	r6, sp, #320	; 0x140
300047d8:	f8df a1fc 	ldr.w	sl, [pc, #508]	; 300049d8 <_BOOT_Validate_ImgHash+0x260>
300047dc:	f012 0218 	ands.w	r2, r2, #24
300047e0:	b2db      	uxtb	r3, r3
300047e2:	f026 091f 	bic.w	r9, r6, #31
300047e6:	4d77      	ldr	r5, [pc, #476]	; (300049c4 <_BOOT_Validate_ImgHash+0x24c>)
300047e8:	9204      	str	r2, [sp, #16]
300047ea:	f108 0208 	add.w	r2, r8, #8
300047ee:	bf08      	it	eq
300047f0:	46b1      	moveq	r9, r6
300047f2:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
300047f6:	9302      	str	r3, [sp, #8]
300047f8:	e9d8 b700 	ldrd	fp, r7, [r8]
300047fc:	f10b 4278 	add.w	r2, fp, #4160749568	; 0xf8000000
30004800:	f1b2 6f00 	cmp.w	r2, #134217728	; 0x8000000
30004804:	f0c0 80a7 	bcc.w	30004956 <_BOOT_Validate_ImgHash+0x1de>
30004808:	4639      	mov	r1, r7
3000480a:	4658      	mov	r0, fp
3000480c:	aa18      	add	r2, sp, #96	; 0x60
3000480e:	47d0      	blx	sl
30004810:	2800      	cmp	r0, #0
30004812:	d168      	bne.n	300048e6 <_BOOT_Validate_ImgHash+0x16e>
30004814:	f108 0808 	add.w	r8, r8, #8
30004818:	9b02      	ldr	r3, [sp, #8]
3000481a:	4543      	cmp	r3, r8
3000481c:	d1ec      	bne.n	300047f8 <_BOOT_Validate_ImgHash+0x80>
3000481e:	ac08      	add	r4, sp, #32
30004820:	a918      	add	r1, sp, #96	; 0x60
30004822:	4b69      	ldr	r3, [pc, #420]	; (300049c8 <_BOOT_Validate_ImgHash+0x250>)
30004824:	4620      	mov	r0, r4
30004826:	4798      	blx	r3
30004828:	4601      	mov	r1, r0
3000482a:	2800      	cmp	r0, #0
3000482c:	d15b      	bne.n	300048e6 <_BOOT_Validate_ImgHash+0x16e>
3000482e:	2001      	movs	r0, #1
30004830:	4b62      	ldr	r3, [pc, #392]	; (300049bc <_BOOT_Validate_ImgHash+0x244>)
30004832:	4798      	blx	r3
30004834:	f89d 501e 	ldrb.w	r5, [sp, #30]
30004838:	4b64      	ldr	r3, [pc, #400]	; (300049cc <_BOOT_Validate_ImgHash+0x254>)
3000483a:	4798      	blx	r3
3000483c:	fbb0 f3f5 	udiv	r3, r0, r5
30004840:	fb03 0315 	mls	r3, r3, r5, r0
30004844:	b2db      	uxtb	r3, r3
30004846:	b1bd      	cbz	r5, 30004878 <_BOOT_Validate_ImgHash+0x100>
30004848:	2000      	movs	r0, #0
3000484a:	9f03      	ldr	r7, [sp, #12]
3000484c:	4606      	mov	r6, r0
3000484e:	1c5a      	adds	r2, r3, #1
30004850:	5cf9      	ldrb	r1, [r7, r3]
30004852:	5ce3      	ldrb	r3, [r4, r3]
30004854:	3001      	adds	r0, #1
30004856:	b2d2      	uxtb	r2, r2
30004858:	404b      	eors	r3, r1
3000485a:	431e      	orrs	r6, r3
3000485c:	fbb2 f3f5 	udiv	r3, r2, r5
30004860:	fb05 2213 	mls	r2, r5, r3, r2
30004864:	b2d3      	uxtb	r3, r2
30004866:	b2c2      	uxtb	r2, r0
30004868:	4295      	cmp	r5, r2
3000486a:	d8f0      	bhi.n	3000484e <_BOOT_Validate_ImgHash+0xd6>
3000486c:	2e00      	cmp	r6, #0
3000486e:	9b01      	ldr	r3, [sp, #4]
30004870:	bf18      	it	ne
30004872:	f06f 0306 	mvnne.w	r3, #6
30004876:	9301      	str	r3, [sp, #4]
30004878:	9801      	ldr	r0, [sp, #4]
3000487a:	f50d 7d51 	add.w	sp, sp, #836	; 0x344
3000487e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30004882:	a918      	add	r1, sp, #96	; 0x60
30004884:	f89d 001e 	ldrb.w	r0, [sp, #30]
30004888:	4b51      	ldr	r3, [pc, #324]	; (300049d0 <_BOOT_Validate_ImgHash+0x258>)
3000488a:	4798      	blx	r3
3000488c:	bb58      	cbnz	r0, 300048e6 <_BOOT_Validate_ImgHash+0x16e>
3000488e:	b31c      	cbz	r4, 300048d8 <_BOOT_Validate_ImgHash+0x160>
30004890:	aad0      	add	r2, sp, #832	; 0x340
30004892:	1e63      	subs	r3, r4, #1
30004894:	ae50      	add	r6, sp, #320	; 0x140
30004896:	f8df a144 	ldr.w	sl, [pc, #324]	; 300049dc <_BOOT_Validate_ImgHash+0x264>
3000489a:	f012 0218 	ands.w	r2, r2, #24
3000489e:	b2db      	uxtb	r3, r3
300048a0:	f026 091f 	bic.w	r9, r6, #31
300048a4:	4d47      	ldr	r5, [pc, #284]	; (300049c4 <_BOOT_Validate_ImgHash+0x24c>)
300048a6:	9204      	str	r2, [sp, #16]
300048a8:	f108 0208 	add.w	r2, r8, #8
300048ac:	bf08      	it	eq
300048ae:	46b1      	moveq	r9, r6
300048b0:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
300048b4:	9302      	str	r3, [sp, #8]
300048b6:	e9d8 b700 	ldrd	fp, r7, [r8]
300048ba:	f10b 4278 	add.w	r2, fp, #4160749568	; 0xf8000000
300048be:	f1b2 6f00 	cmp.w	r2, #134217728	; 0x8000000
300048c2:	d318      	bcc.n	300048f6 <_BOOT_Validate_ImgHash+0x17e>
300048c4:	4639      	mov	r1, r7
300048c6:	4658      	mov	r0, fp
300048c8:	aa18      	add	r2, sp, #96	; 0x60
300048ca:	47d0      	blx	sl
300048cc:	b958      	cbnz	r0, 300048e6 <_BOOT_Validate_ImgHash+0x16e>
300048ce:	f108 0808 	add.w	r8, r8, #8
300048d2:	9b02      	ldr	r3, [sp, #8]
300048d4:	4543      	cmp	r3, r8
300048d6:	d1ee      	bne.n	300048b6 <_BOOT_Validate_ImgHash+0x13e>
300048d8:	ac08      	add	r4, sp, #32
300048da:	a918      	add	r1, sp, #96	; 0x60
300048dc:	4b3d      	ldr	r3, [pc, #244]	; (300049d4 <_BOOT_Validate_ImgHash+0x25c>)
300048de:	4620      	mov	r0, r4
300048e0:	4798      	blx	r3
300048e2:	2800      	cmp	r0, #0
300048e4:	d0a6      	beq.n	30004834 <_BOOT_Validate_ImgHash+0xbc>
300048e6:	f06f 030a 	mvn.w	r3, #10
300048ea:	9301      	str	r3, [sp, #4]
300048ec:	9801      	ldr	r0, [sp, #4]
300048ee:	f50d 7d51 	add.w	sp, sp, #836	; 0x344
300048f2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
300048f6:	2f00      	cmp	r7, #0
300048f8:	d0e9      	beq.n	300048ce <_BOOT_Validate_ImgHash+0x156>
300048fa:	9c04      	ldr	r4, [sp, #16]
300048fc:	f8cd 8014 	str.w	r8, [sp, #20]
30004900:	f5b7 7f00 	cmp.w	r7, #512	; 0x200
30004904:	46b8      	mov	r8, r7
30004906:	4659      	mov	r1, fp
30004908:	4630      	mov	r0, r6
3000490a:	bf28      	it	cs
3000490c:	f44f 7800 	movcs.w	r8, #512	; 0x200
30004910:	4642      	mov	r2, r8
30004912:	f000 fa29 	bl	30004d68 <BOOT_ImgCopy>
30004916:	696a      	ldr	r2, [r5, #20]
30004918:	03d3      	lsls	r3, r2, #15
3000491a:	d50f      	bpl.n	3000493c <_BOOT_Validate_ImgHash+0x1c4>
3000491c:	eb08 0004 	add.w	r0, r8, r4
30004920:	f3bf 8f4f 	dsb	sy
30004924:	4448      	add	r0, r9
30004926:	464a      	mov	r2, r9
30004928:	f8c5 2270 	str.w	r2, [r5, #624]	; 0x270
3000492c:	3220      	adds	r2, #32
3000492e:	1a83      	subs	r3, r0, r2
30004930:	2b00      	cmp	r3, #0
30004932:	dcf9      	bgt.n	30004928 <_BOOT_Validate_ImgHash+0x1b0>
30004934:	f3bf 8f4f 	dsb	sy
30004938:	f3bf 8f6f 	isb	sy
3000493c:	aa18      	add	r2, sp, #96	; 0x60
3000493e:	4641      	mov	r1, r8
30004940:	4630      	mov	r0, r6
30004942:	47d0      	blx	sl
30004944:	2800      	cmp	r0, #0
30004946:	d1ce      	bne.n	300048e6 <_BOOT_Validate_ImgHash+0x16e>
30004948:	ebb7 0708 	subs.w	r7, r7, r8
3000494c:	44c3      	add	fp, r8
3000494e:	d1d7      	bne.n	30004900 <_BOOT_Validate_ImgHash+0x188>
30004950:	f8dd 8014 	ldr.w	r8, [sp, #20]
30004954:	e7bb      	b.n	300048ce <_BOOT_Validate_ImgHash+0x156>
30004956:	2f00      	cmp	r7, #0
30004958:	f43f af5c 	beq.w	30004814 <_BOOT_Validate_ImgHash+0x9c>
3000495c:	9c04      	ldr	r4, [sp, #16]
3000495e:	f8cd 8014 	str.w	r8, [sp, #20]
30004962:	f5b7 7f00 	cmp.w	r7, #512	; 0x200
30004966:	46b8      	mov	r8, r7
30004968:	4659      	mov	r1, fp
3000496a:	4630      	mov	r0, r6
3000496c:	bf28      	it	cs
3000496e:	f44f 7800 	movcs.w	r8, #512	; 0x200
30004972:	4642      	mov	r2, r8
30004974:	f000 f9f8 	bl	30004d68 <BOOT_ImgCopy>
30004978:	696a      	ldr	r2, [r5, #20]
3000497a:	03d2      	lsls	r2, r2, #15
3000497c:	d50f      	bpl.n	3000499e <_BOOT_Validate_ImgHash+0x226>
3000497e:	eb08 0004 	add.w	r0, r8, r4
30004982:	f3bf 8f4f 	dsb	sy
30004986:	4448      	add	r0, r9
30004988:	464a      	mov	r2, r9
3000498a:	f8c5 2270 	str.w	r2, [r5, #624]	; 0x270
3000498e:	3220      	adds	r2, #32
30004990:	1a83      	subs	r3, r0, r2
30004992:	2b00      	cmp	r3, #0
30004994:	dcf9      	bgt.n	3000498a <_BOOT_Validate_ImgHash+0x212>
30004996:	f3bf 8f4f 	dsb	sy
3000499a:	f3bf 8f6f 	isb	sy
3000499e:	aa18      	add	r2, sp, #96	; 0x60
300049a0:	4641      	mov	r1, r8
300049a2:	4630      	mov	r0, r6
300049a4:	47d0      	blx	sl
300049a6:	2800      	cmp	r0, #0
300049a8:	d19d      	bne.n	300048e6 <_BOOT_Validate_ImgHash+0x16e>
300049aa:	ebb7 0708 	subs.w	r7, r7, r8
300049ae:	44c3      	add	fp, r8
300049b0:	d1d7      	bne.n	30004962 <_BOOT_Validate_ImgHash+0x1ea>
300049b2:	f8dd 8014 	ldr.w	r8, [sp, #20]
300049b6:	e72d      	b.n	30004814 <_BOOT_Validate_ImgHash+0x9c>
300049b8:	00012be5 	.word	0x00012be5
300049bc:	000024dd 	.word	0x000024dd
300049c0:	3000b09d 	.word	0x3000b09d
300049c4:	e000ed00 	.word	0xe000ed00
300049c8:	00005bb9 	.word	0x00005bb9
300049cc:	0000ea4d 	.word	0x0000ea4d
300049d0:	00004ffd 	.word	0x00004ffd
300049d4:	000053f1 	.word	0x000053f1
300049d8:	00005b4d 	.word	0x00005b4d
300049dc:	00005385 	.word	0x00005385

300049e0 <BOOT_Validate_ImgHash>:
300049e0:	b530      	push	{r4, r5, lr}
300049e2:	b085      	sub	sp, #20
300049e4:	4d0a      	ldr	r5, [pc, #40]	; (30004a10 <BOOT_Validate_ImgHash+0x30>)
300049e6:	4604      	mov	r4, r0
300049e8:	9301      	str	r3, [sp, #4]
300049ea:	e9cd 2102 	strd	r2, r1, [sp, #8]
300049ee:	47a8      	blx	r5
300049f0:	9903      	ldr	r1, [sp, #12]
300049f2:	e9dd 3201 	ldrd	r3, r2, [sp, #4]
300049f6:	b128      	cbz	r0, 30004a04 <BOOT_Validate_ImgHash+0x24>
300049f8:	4620      	mov	r0, r4
300049fa:	b005      	add	sp, #20
300049fc:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
30004a00:	f006 bed2 	b.w	3000b7a8 <__SBOOT_Validate_ImgHash_veneer>
30004a04:	4620      	mov	r0, r4
30004a06:	b005      	add	sp, #20
30004a08:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
30004a0c:	f7ff beb4 	b.w	30004778 <_BOOT_Validate_ImgHash>
30004a10:	3000a4e1 	.word	0x3000a4e1

30004a14 <BOOT_SignatureCheck>:
30004a14:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
30004a18:	4616      	mov	r6, r2
30004a1a:	b089      	sub	sp, #36	; 0x24
30004a1c:	4a77      	ldr	r2, [pc, #476]	; (30004bfc <BOOT_SignatureCheck+0x1e8>)
30004a1e:	4698      	mov	r8, r3
30004a20:	4b77      	ldr	r3, [pc, #476]	; (30004c00 <BOOT_SignatureCheck+0x1ec>)
30004a22:	4607      	mov	r7, r0
30004a24:	460d      	mov	r5, r1
30004a26:	7814      	ldrb	r4, [r2, #0]
30004a28:	f10d 0c20 	add.w	ip, sp, #32
30004a2c:	f8dd 9040 	ldr.w	r9, [sp, #64]	; 0x40
30004a30:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
30004a32:	e90c 000f 	stmdb	ip, {r0, r1, r2, r3}
30004a36:	b91c      	cbnz	r4, 30004a40 <BOOT_SignatureCheck+0x2c>
30004a38:	2001      	movs	r0, #1
30004a3a:	b009      	add	sp, #36	; 0x24
30004a3c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
30004a40:	4b70      	ldr	r3, [pc, #448]	; (30004c04 <BOOT_SignatureCheck+0x1f0>)
30004a42:	2000      	movs	r0, #0
30004a44:	4798      	blx	r3
30004a46:	7cfb      	ldrb	r3, [r7, #19]
30004a48:	7cba      	ldrb	r2, [r7, #18]
30004a4a:	f10d 010f 	add.w	r1, sp, #15
30004a4e:	f10d 000e 	add.w	r0, sp, #14
30004a52:	f006 fead 	bl	3000b7b0 <__SBOOT_Validate_Algorithm_veneer>
30004a56:	bb00      	cbnz	r0, 30004a9a <BOOT_SignatureCheck+0x86>
30004a58:	f8d8 101c 	ldr.w	r1, [r8, #28]
30004a5c:	2900      	cmp	r1, #0
30004a5e:	f000 80cb 	beq.w	30004bf8 <BOOT_SignatureCheck+0x1e4>
30004a62:	4604      	mov	r4, r0
30004a64:	e002      	b.n	30004a6c <BOOT_SignatureCheck+0x58>
30004a66:	b2d4      	uxtb	r4, r2
30004a68:	428c      	cmp	r4, r1
30004a6a:	d208      	bcs.n	30004a7e <BOOT_SignatureCheck+0x6a>
30004a6c:	eb04 03c4 	add.w	r3, r4, r4, lsl #3
30004a70:	1c62      	adds	r2, r4, #1
30004a72:	eb08 0383 	add.w	r3, r8, r3, lsl #2
30004a76:	f8d3 30b0 	ldr.w	r3, [r3, #176]	; 0xb0
30004a7a:	454b      	cmp	r3, r9
30004a7c:	d1f3      	bne.n	30004a66 <BOOT_SignatureCheck+0x52>
30004a7e:	2224      	movs	r2, #36	; 0x24
30004a80:	23b4      	movs	r3, #180	; 0xb4
30004a82:	fb12 3204 	smlabb	r2, r2, r4, r3
30004a86:	4442      	add	r2, r8
30004a88:	f107 0870 	add.w	r8, r7, #112	; 0x70
30004a8c:	f89d 000e 	ldrb.w	r0, [sp, #14]
30004a90:	4641      	mov	r1, r8
30004a92:	f006 fe85 	bl	3000b7a0 <__SBOOT_Validate_PubKey_veneer>
30004a96:	2800      	cmp	r0, #0
30004a98:	d078      	beq.n	30004b8c <BOOT_SignatureCheck+0x178>
30004a9a:	7c7a      	ldrb	r2, [r7, #17]
30004a9c:	a908      	add	r1, sp, #32
30004a9e:	9001      	str	r0, [sp, #4]
30004aa0:	2002      	movs	r0, #2
30004aa2:	eb01 0282 	add.w	r2, r1, r2, lsl #2
30004aa6:	4b58      	ldr	r3, [pc, #352]	; (30004c08 <BOOT_SignatureCheck+0x1f4>)
30004aa8:	4958      	ldr	r1, [pc, #352]	; (30004c0c <BOOT_SignatureCheck+0x1f8>)
30004aaa:	f852 2c10 	ldr.w	r2, [r2, #-16]
30004aae:	9200      	str	r2, [sp, #0]
30004ab0:	2245      	movs	r2, #69	; 0x45
30004ab2:	f004 fc33 	bl	3000931c <rtk_log_write>
30004ab6:	2e00      	cmp	r6, #0
30004ab8:	d044      	beq.n	30004b44 <BOOT_SignatureCheck+0x130>
30004aba:	f106 39ff 	add.w	r9, r6, #4294967295	; 0xffffffff
30004abe:	f04f 0800 	mov.w	r8, #0
30004ac2:	4e53      	ldr	r6, [pc, #332]	; (30004c10 <BOOT_SignatureCheck+0x1fc>)
30004ac4:	1d2f      	adds	r7, r5, #4
30004ac6:	fa5f f389 	uxtb.w	r3, r9
30004aca:	f105 0908 	add.w	r9, r5, #8
30004ace:	4c51      	ldr	r4, [pc, #324]	; (30004c14 <BOOT_SignatureCheck+0x200>)
30004ad0:	eb09 09c3 	add.w	r9, r9, r3, lsl #3
30004ad4:	e003      	b.n	30004ade <BOOT_SignatureCheck+0xca>
30004ad6:	3508      	adds	r5, #8
30004ad8:	3708      	adds	r7, #8
30004ada:	45a9      	cmp	r9, r5
30004adc:	d032      	beq.n	30004b44 <BOOT_SignatureCheck+0x130>
30004ade:	f857 0c04 	ldr.w	r0, [r7, #-4]
30004ae2:	f100 4378 	add.w	r3, r0, #4160749568	; 0xf8000000
30004ae6:	f1b3 6f00 	cmp.w	r3, #134217728	; 0x8000000
30004aea:	d3f4      	bcc.n	30004ad6 <BOOT_SignatureCheck+0xc2>
30004aec:	2100      	movs	r1, #0
30004aee:	686a      	ldr	r2, [r5, #4]
30004af0:	47b0      	blx	r6
30004af2:	6963      	ldr	r3, [r4, #20]
30004af4:	03d9      	lsls	r1, r3, #15
30004af6:	d5ee      	bpl.n	30004ad6 <BOOT_SignatureCheck+0xc2>
30004af8:	f857 2c04 	ldr.w	r2, [r7, #-4]
30004afc:	686b      	ldr	r3, [r5, #4]
30004afe:	ea02 0103 	and.w	r1, r2, r3
30004b02:	3101      	adds	r1, #1
30004b04:	d022      	beq.n	30004b4c <BOOT_SignatureCheck+0x138>
30004b06:	f012 011f 	ands.w	r1, r2, #31
30004b0a:	d002      	beq.n	30004b12 <BOOT_SignatureCheck+0xfe>
30004b0c:	440b      	add	r3, r1
30004b0e:	f022 021f 	bic.w	r2, r2, #31
30004b12:	f3bf 8f4f 	dsb	sy
30004b16:	2b00      	cmp	r3, #0
30004b18:	dd0c      	ble.n	30004b34 <BOOT_SignatureCheck+0x120>
30004b1a:	1e59      	subs	r1, r3, #1
30004b1c:	f102 0320 	add.w	r3, r2, #32
30004b20:	f021 011f 	bic.w	r1, r1, #31
30004b24:	4419      	add	r1, r3
30004b26:	428b      	cmp	r3, r1
30004b28:	f8c4 2270 	str.w	r2, [r4, #624]	; 0x270
30004b2c:	461a      	mov	r2, r3
30004b2e:	f103 0320 	add.w	r3, r3, #32
30004b32:	d1f8      	bne.n	30004b26 <BOOT_SignatureCheck+0x112>
30004b34:	f3bf 8f4f 	dsb	sy
30004b38:	f3bf 8f6f 	isb	sy
30004b3c:	3508      	adds	r5, #8
30004b3e:	3708      	adds	r7, #8
30004b40:	45a9      	cmp	r9, r5
30004b42:	d1cc      	bne.n	30004ade <BOOT_SignatureCheck+0xca>
30004b44:	2000      	movs	r0, #0
30004b46:	b009      	add	sp, #36	; 0x24
30004b48:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
30004b4c:	f8c4 8084 	str.w	r8, [r4, #132]	; 0x84
30004b50:	f3bf 8f4f 	dsb	sy
30004b54:	f8d4 3080 	ldr.w	r3, [r4, #128]	; 0x80
30004b58:	f643 7ee0 	movw	lr, #16352	; 0x3fe0
30004b5c:	f3c3 304e 	ubfx	r0, r3, #13, #15
30004b60:	f3c3 0cc9 	ubfx	ip, r3, #3, #10
30004b64:	0140      	lsls	r0, r0, #5
30004b66:	ea00 010e 	and.w	r1, r0, lr
30004b6a:	4663      	mov	r3, ip
30004b6c:	ea41 7283 	orr.w	r2, r1, r3, lsl #30
30004b70:	3b01      	subs	r3, #1
30004b72:	f8c4 2274 	str.w	r2, [r4, #628]	; 0x274
30004b76:	1c5a      	adds	r2, r3, #1
30004b78:	d1f8      	bne.n	30004b6c <BOOT_SignatureCheck+0x158>
30004b7a:	3820      	subs	r0, #32
30004b7c:	f110 0f20 	cmn.w	r0, #32
30004b80:	d1f1      	bne.n	30004b66 <BOOT_SignatureCheck+0x152>
30004b82:	f3bf 8f4f 	dsb	sy
30004b86:	f3bf 8f6f 	isb	sy
30004b8a:	e7d7      	b.n	30004b3c <BOOT_SignatureCheck+0x128>
30004b8c:	f507 7380 	add.w	r3, r7, #256	; 0x100
30004b90:	4642      	mov	r2, r8
30004b92:	f89d 100f 	ldrb.w	r1, [sp, #15]
30004b96:	9301      	str	r3, [sp, #4]
30004b98:	f44f 7380 	mov.w	r3, #256	; 0x100
30004b9c:	f89d 000e 	ldrb.w	r0, [sp, #14]
30004ba0:	9300      	str	r3, [sp, #0]
30004ba2:	463b      	mov	r3, r7
30004ba4:	f006 fdf0 	bl	3000b788 <__SBOOT_Validate_Signature_veneer>
30004ba8:	2800      	cmp	r0, #0
30004baa:	f47f af76 	bne.w	30004a9a <BOOT_SignatureCheck+0x86>
30004bae:	f107 0830 	add.w	r8, r7, #48	; 0x30
30004bb2:	4b19      	ldr	r3, [pc, #100]	; (30004c18 <BOOT_SignatureCheck+0x204>)
30004bb4:	f89d 400f 	ldrb.w	r4, [sp, #15]
30004bb8:	4798      	blx	r3
30004bba:	4641      	mov	r1, r8
30004bbc:	b1b0      	cbz	r0, 30004bec <BOOT_SignatureCheck+0x1d8>
30004bbe:	4620      	mov	r0, r4
30004bc0:	4633      	mov	r3, r6
30004bc2:	462a      	mov	r2, r5
30004bc4:	f006 fdf0 	bl	3000b7a8 <__SBOOT_Validate_ImgHash_veneer>
30004bc8:	2800      	cmp	r0, #0
30004bca:	f47f af66 	bne.w	30004a9a <BOOT_SignatureCheck+0x86>
30004bce:	7c7c      	ldrb	r4, [r7, #17]
30004bd0:	a808      	add	r0, sp, #32
30004bd2:	4b12      	ldr	r3, [pc, #72]	; (30004c1c <BOOT_SignatureCheck+0x208>)
30004bd4:	2249      	movs	r2, #73	; 0x49
30004bd6:	eb00 0484 	add.w	r4, r0, r4, lsl #2
30004bda:	490c      	ldr	r1, [pc, #48]	; (30004c0c <BOOT_SignatureCheck+0x1f8>)
30004bdc:	2004      	movs	r0, #4
30004bde:	f854 4c10 	ldr.w	r4, [r4, #-16]
30004be2:	9400      	str	r4, [sp, #0]
30004be4:	f004 fb9a 	bl	3000931c <rtk_log_write>
30004be8:	2001      	movs	r0, #1
30004bea:	e726      	b.n	30004a3a <BOOT_SignatureCheck+0x26>
30004bec:	4620      	mov	r0, r4
30004bee:	4633      	mov	r3, r6
30004bf0:	462a      	mov	r2, r5
30004bf2:	f7ff fdc1 	bl	30004778 <_BOOT_Validate_ImgHash>
30004bf6:	e7e7      	b.n	30004bc8 <BOOT_SignatureCheck+0x1b4>
30004bf8:	22b4      	movs	r2, #180	; 0xb4
30004bfa:	e744      	b.n	30004a86 <BOOT_SignatureCheck+0x72>
30004bfc:	3000e1d0 	.word	0x3000e1d0
30004c00:	3000bb80 	.word	0x3000bb80
30004c04:	00002451 	.word	0x00002451
30004c08:	3000baf4 	.word	0x3000baf4
30004c0c:	3000b7cc 	.word	0x3000b7cc
30004c10:	00012be5 	.word	0x00012be5
30004c14:	e000ed00 	.word	0xe000ed00
30004c18:	3000a4e1 	.word	0x3000a4e1
30004c1c:	3000bae4 	.word	0x3000bae4

30004c20 <BOOT_CertificateCheck>:
30004c20:	b5f0      	push	{r4, r5, r6, r7, lr}
30004c22:	b08d      	sub	sp, #52	; 0x34
30004c24:	4604      	mov	r4, r0
30004c26:	460e      	mov	r6, r1
30004c28:	a804      	add	r0, sp, #16
30004c2a:	f7ff fcb1 	bl	30004590 <BOOT_SbootEn_Check>
30004c2e:	b910      	cbnz	r0, 30004c36 <BOOT_CertificateCheck+0x16>
30004c30:	2001      	movs	r0, #1
30004c32:	b00d      	add	sp, #52	; 0x34
30004c34:	bdf0      	pop	{r4, r5, r6, r7, pc}
30004c36:	4b1a      	ldr	r3, [pc, #104]	; (30004ca0 <BOOT_CertificateCheck+0x80>)
30004c38:	2000      	movs	r0, #0
30004c3a:	4798      	blx	r3
30004c3c:	7ce3      	ldrb	r3, [r4, #19]
30004c3e:	7ca2      	ldrb	r2, [r4, #18]
30004c40:	f10d 010f 	add.w	r1, sp, #15
30004c44:	f10d 000e 	add.w	r0, sp, #14
30004c48:	f006 fdb2 	bl	3000b7b0 <__SBOOT_Validate_Algorithm_veneer>
30004c4c:	4605      	mov	r5, r0
30004c4e:	b948      	cbnz	r0, 30004c64 <BOOT_CertificateCheck+0x44>
30004c50:	f104 0720 	add.w	r7, r4, #32
30004c54:	aa04      	add	r2, sp, #16
30004c56:	f89d 000e 	ldrb.w	r0, [sp, #14]
30004c5a:	4639      	mov	r1, r7
30004c5c:	f006 fda0 	bl	3000b7a0 <__SBOOT_Validate_PubKey_veneer>
30004c60:	4605      	mov	r5, r0
30004c62:	b148      	cbz	r0, 30004c78 <BOOT_CertificateCheck+0x58>
30004c64:	4b0f      	ldr	r3, [pc, #60]	; (30004ca4 <BOOT_CertificateCheck+0x84>)
30004c66:	2245      	movs	r2, #69	; 0x45
30004c68:	490f      	ldr	r1, [pc, #60]	; (30004ca8 <BOOT_CertificateCheck+0x88>)
30004c6a:	2002      	movs	r0, #2
30004c6c:	9500      	str	r5, [sp, #0]
30004c6e:	f004 fb55 	bl	3000931c <rtk_log_write>
30004c72:	2000      	movs	r0, #0
30004c74:	b00d      	add	sp, #52	; 0x34
30004c76:	bdf0      	pop	{r4, r5, r6, r7, pc}
30004c78:	490c      	ldr	r1, [pc, #48]	; (30004cac <BOOT_CertificateCheck+0x8c>)
30004c7a:	eb06 06c6 	add.w	r6, r6, r6, lsl #3
30004c7e:	69a0      	ldr	r0, [r4, #24]
30004c80:	4623      	mov	r3, r4
30004c82:	eb01 1606 	add.w	r6, r1, r6, lsl #4
30004c86:	463a      	mov	r2, r7
30004c88:	9000      	str	r0, [sp, #0]
30004c8a:	f89d 100f 	ldrb.w	r1, [sp, #15]
30004c8e:	f89d 000e 	ldrb.w	r0, [sp, #14]
30004c92:	9601      	str	r6, [sp, #4]
30004c94:	f006 fd78 	bl	3000b788 <__SBOOT_Validate_Signature_veneer>
30004c98:	4605      	mov	r5, r0
30004c9a:	2800      	cmp	r0, #0
30004c9c:	d0c8      	beq.n	30004c30 <BOOT_CertificateCheck+0x10>
30004c9e:	e7e1      	b.n	30004c64 <BOOT_CertificateCheck+0x44>
30004ca0:	00002451 	.word	0x00002451
30004ca4:	3000bb10 	.word	0x3000bb10
30004ca8:	3000b7cc 	.word	0x3000b7cc
30004cac:	3000e7d4 	.word	0x3000e7d4

30004cb0 <BOOT_Extract_SignatureCheck>:
30004cb0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
30004cb4:	b08c      	sub	sp, #48	; 0x30
30004cb6:	4604      	mov	r4, r0
30004cb8:	460e      	mov	r6, r1
30004cba:	4617      	mov	r7, r2
30004cbc:	a804      	add	r0, sp, #16
30004cbe:	f7ff fc67 	bl	30004590 <BOOT_SbootEn_Check>
30004cc2:	b918      	cbnz	r0, 30004ccc <BOOT_Extract_SignatureCheck+0x1c>
30004cc4:	2001      	movs	r0, #1
30004cc6:	b00c      	add	sp, #48	; 0x30
30004cc8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
30004ccc:	4b22      	ldr	r3, [pc, #136]	; (30004d58 <BOOT_Extract_SignatureCheck+0xa8>)
30004cce:	2000      	movs	r0, #0
30004cd0:	4798      	blx	r3
30004cd2:	7ce3      	ldrb	r3, [r4, #19]
30004cd4:	7ca2      	ldrb	r2, [r4, #18]
30004cd6:	f10d 010f 	add.w	r1, sp, #15
30004cda:	f10d 000e 	add.w	r0, sp, #14
30004cde:	f006 fd67 	bl	3000b7b0 <__SBOOT_Validate_Algorithm_veneer>
30004ce2:	4605      	mov	r5, r0
30004ce4:	b948      	cbnz	r0, 30004cfa <BOOT_Extract_SignatureCheck+0x4a>
30004ce6:	f104 0870 	add.w	r8, r4, #112	; 0x70
30004cea:	aa04      	add	r2, sp, #16
30004cec:	f89d 000e 	ldrb.w	r0, [sp, #14]
30004cf0:	4641      	mov	r1, r8
30004cf2:	f006 fd55 	bl	3000b7a0 <__SBOOT_Validate_PubKey_veneer>
30004cf6:	4605      	mov	r5, r0
30004cf8:	b150      	cbz	r0, 30004d10 <BOOT_Extract_SignatureCheck+0x60>
30004cfa:	4b18      	ldr	r3, [pc, #96]	; (30004d5c <BOOT_Extract_SignatureCheck+0xac>)
30004cfc:	2245      	movs	r2, #69	; 0x45
30004cfe:	4918      	ldr	r1, [pc, #96]	; (30004d60 <BOOT_Extract_SignatureCheck+0xb0>)
30004d00:	2002      	movs	r0, #2
30004d02:	9500      	str	r5, [sp, #0]
30004d04:	f004 fb0a 	bl	3000931c <rtk_log_write>
30004d08:	2000      	movs	r0, #0
30004d0a:	b00c      	add	sp, #48	; 0x30
30004d0c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
30004d10:	f504 7380 	add.w	r3, r4, #256	; 0x100
30004d14:	4642      	mov	r2, r8
30004d16:	f89d 100f 	ldrb.w	r1, [sp, #15]
30004d1a:	9301      	str	r3, [sp, #4]
30004d1c:	f44f 7380 	mov.w	r3, #256	; 0x100
30004d20:	f89d 000e 	ldrb.w	r0, [sp, #14]
30004d24:	9300      	str	r3, [sp, #0]
30004d26:	4623      	mov	r3, r4
30004d28:	f006 fd2e 	bl	3000b788 <__SBOOT_Validate_Signature_veneer>
30004d2c:	4605      	mov	r5, r0
30004d2e:	2800      	cmp	r0, #0
30004d30:	d1e3      	bne.n	30004cfa <BOOT_Extract_SignatureCheck+0x4a>
30004d32:	463b      	mov	r3, r7
30004d34:	4632      	mov	r2, r6
30004d36:	f104 0130 	add.w	r1, r4, #48	; 0x30
30004d3a:	f89d 000f 	ldrb.w	r0, [sp, #15]
30004d3e:	f006 fd33 	bl	3000b7a8 <__SBOOT_Validate_ImgHash_veneer>
30004d42:	4605      	mov	r5, r0
30004d44:	2800      	cmp	r0, #0
30004d46:	d1d8      	bne.n	30004cfa <BOOT_Extract_SignatureCheck+0x4a>
30004d48:	2004      	movs	r0, #4
30004d4a:	4b06      	ldr	r3, [pc, #24]	; (30004d64 <BOOT_Extract_SignatureCheck+0xb4>)
30004d4c:	2249      	movs	r2, #73	; 0x49
30004d4e:	4904      	ldr	r1, [pc, #16]	; (30004d60 <BOOT_Extract_SignatureCheck+0xb0>)
30004d50:	f004 fae4 	bl	3000931c <rtk_log_write>
30004d54:	2001      	movs	r0, #1
30004d56:	e7b6      	b.n	30004cc6 <BOOT_Extract_SignatureCheck+0x16>
30004d58:	00002451 	.word	0x00002451
30004d5c:	3000bb50 	.word	0x3000bb50
30004d60:	3000b7cc 	.word	0x3000b7cc
30004d64:	3000bb34 	.word	0x3000bb34

30004d68 <BOOT_ImgCopy>:
30004d68:	b510      	push	{r4, lr}
30004d6a:	b082      	sub	sp, #8
30004d6c:	4b09      	ldr	r3, [pc, #36]	; (30004d94 <BOOT_ImgCopy+0x2c>)
30004d6e:	4604      	mov	r4, r0
30004d70:	e9cd 2100 	strd	r2, r1, [sp]
30004d74:	4798      	blx	r3
30004d76:	e9dd 2100 	ldrd	r2, r1, [sp]
30004d7a:	b128      	cbz	r0, 30004d88 <BOOT_ImgCopy+0x20>
30004d7c:	4620      	mov	r0, r4
30004d7e:	4b06      	ldr	r3, [pc, #24]	; (30004d98 <BOOT_ImgCopy+0x30>)
30004d80:	b002      	add	sp, #8
30004d82:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
30004d86:	4718      	bx	r3
30004d88:	4620      	mov	r0, r4
30004d8a:	b002      	add	sp, #8
30004d8c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
30004d90:	f001 bb3a 	b.w	30006408 <NandImgCopy>
30004d94:	3000a4e1 	.word	0x3000a4e1
30004d98:	00012a1d 	.word	0x00012a1d

30004d9c <BOOT_OTA_SlotSelect>:
30004d9c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30004da0:	4f4b      	ldr	r7, [pc, #300]	; (30004ed0 <BOOT_OTA_SlotSelect+0x134>)
30004da2:	4d4c      	ldr	r5, [pc, #304]	; (30004ed4 <BOOT_OTA_SlotSelect+0x138>)
30004da4:	4c4c      	ldr	r4, [pc, #304]	; (30004ed8 <BOOT_OTA_SlotSelect+0x13c>)
30004da6:	463e      	mov	r6, r7
30004da8:	f8df 9148 	ldr.w	r9, [pc, #328]	; 30004ef4 <BOOT_OTA_SlotSelect+0x158>
30004dac:	f8df 8148 	ldr.w	r8, [pc, #328]	; 30004ef8 <BOOT_OTA_SlotSelect+0x15c>
30004db0:	f8df a148 	ldr.w	sl, [pc, #328]	; 30004efc <BOOT_OTA_SlotSelect+0x160>
30004db4:	f8df b148 	ldr.w	fp, [pc, #328]	; 30004f00 <BOOT_OTA_SlotSelect+0x164>
30004db8:	ed2d 8b02 	vpush	{d8}
30004dbc:	ed9f 8b42 	vldr	d8, [pc, #264]	; 30004ec8 <BOOT_OTA_SlotSelect+0x12c>
30004dc0:	b083      	sub	sp, #12
30004dc2:	f855 1b04 	ldr.w	r1, [r5], #4
30004dc6:	9101      	str	r1, [sp, #4]
30004dc8:	47d0      	blx	sl
30004dca:	9901      	ldr	r1, [sp, #4]
30004dcc:	f44f 72b2 	mov.w	r2, #356	; 0x164
30004dd0:	2800      	cmp	r0, #0
30004dd2:	d041      	beq.n	30004e58 <BOOT_OTA_SlotSelect+0xbc>
30004dd4:	4620      	mov	r0, r4
30004dd6:	4b41      	ldr	r3, [pc, #260]	; (30004edc <BOOT_OTA_SlotSelect+0x140>)
30004dd8:	4798      	blx	r3
30004dda:	2208      	movs	r2, #8
30004ddc:	4659      	mov	r1, fp
30004dde:	4620      	mov	r0, r4
30004de0:	4b3f      	ldr	r3, [pc, #252]	; (30004ee0 <BOOT_OTA_SlotSelect+0x144>)
30004de2:	4798      	blx	r3
30004de4:	2800      	cmp	r0, #0
30004de6:	d03b      	beq.n	30004e60 <BOOT_OTA_SlotSelect+0xc4>
30004de8:	ed86 8b00 	vstr	d8, [r6]
30004dec:	4b3d      	ldr	r3, [pc, #244]	; (30004ee4 <BOOT_OTA_SlotSelect+0x148>)
30004dee:	f504 74b2 	add.w	r4, r4, #356	; 0x164
30004df2:	3608      	adds	r6, #8
30004df4:	f509 79c8 	add.w	r9, r9, #400	; 0x190
30004df8:	42ab      	cmp	r3, r5
30004dfa:	f108 0890 	add.w	r8, r8, #144	; 0x90
30004dfe:	d1e0      	bne.n	30004dc2 <BOOT_OTA_SlotSelect+0x26>
30004e00:	4b39      	ldr	r3, [pc, #228]	; (30004ee8 <BOOT_OTA_SlotSelect+0x14c>)
30004e02:	4798      	blx	r3
30004e04:	b178      	cbz	r0, 30004e26 <BOOT_OTA_SlotSelect+0x8a>
30004e06:	4b39      	ldr	r3, [pc, #228]	; (30004eec <BOOT_OTA_SlotSelect+0x150>)
30004e08:	2100      	movs	r1, #0
30004e0a:	2401      	movs	r4, #1
30004e0c:	f8b3 006e 	ldrh.w	r0, [r3, #110]	; 0x6e
30004e10:	460b      	mov	r3, r1
30004e12:	b280      	uxth	r0, r0
30004e14:	fa04 f203 	lsl.w	r2, r4, r3
30004e18:	3301      	adds	r3, #1
30004e1a:	4202      	tst	r2, r0
30004e1c:	bf08      	it	eq
30004e1e:	3101      	addeq	r1, #1
30004e20:	2b10      	cmp	r3, #16
30004e22:	d1f7      	bne.n	30004e14 <BOOT_OTA_SlotSelect+0x78>
30004e24:	0408      	lsls	r0, r1, #16
30004e26:	e9d7 2300 	ldrd	r2, r3, [r7]
30004e2a:	e9d7 4102 	ldrd	r4, r1, [r7, #8]
30004e2e:	4282      	cmp	r2, r0
30004e30:	f173 0500 	sbcs.w	r5, r3, #0
30004e34:	db32      	blt.n	30004e9c <BOOT_OTA_SlotSelect+0x100>
30004e36:	4284      	cmp	r4, r0
30004e38:	f171 0000 	sbcs.w	r0, r1, #0
30004e3c:	da3e      	bge.n	30004ebc <BOOT_OTA_SlotSelect+0x120>
30004e3e:	482c      	ldr	r0, [pc, #176]	; (30004ef0 <BOOT_OTA_SlotSelect+0x154>)
30004e40:	2501      	movs	r5, #1
30004e42:	7005      	strb	r5, [r0, #0]
30004e44:	42a2      	cmp	r2, r4
30004e46:	418b      	sbcs	r3, r1
30004e48:	bfb4      	ite	lt
30004e4a:	2001      	movlt	r0, #1
30004e4c:	2000      	movge	r0, #0
30004e4e:	b003      	add	sp, #12
30004e50:	ecbd 8b02 	vpop	{d8}
30004e54:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30004e58:	4620      	mov	r0, r4
30004e5a:	f001 fad5 	bl	30006408 <NandImgCopy>
30004e5e:	e7bc      	b.n	30004dda <BOOT_OTA_SlotSelect+0x3e>
30004e60:	f855 1c04 	ldr.w	r1, [r5, #-4]
30004e64:	69a3      	ldr	r3, [r4, #24]
30004e66:	4419      	add	r1, r3
30004e68:	9101      	str	r1, [sp, #4]
30004e6a:	47d0      	blx	sl
30004e6c:	9901      	ldr	r1, [sp, #4]
30004e6e:	2290      	movs	r2, #144	; 0x90
30004e70:	b9e0      	cbnz	r0, 30004eac <BOOT_OTA_SlotSelect+0x110>
30004e72:	4640      	mov	r0, r8
30004e74:	f001 fac8 	bl	30006408 <NandImgCopy>
30004e78:	6869      	ldr	r1, [r5, #4]
30004e7a:	9101      	str	r1, [sp, #4]
30004e7c:	47d0      	blx	sl
30004e7e:	9901      	ldr	r1, [sp, #4]
30004e80:	f44f 72c8 	mov.w	r2, #400	; 0x190
30004e84:	b1b0      	cbz	r0, 30004eb4 <BOOT_OTA_SlotSelect+0x118>
30004e86:	4648      	mov	r0, r9
30004e88:	4b14      	ldr	r3, [pc, #80]	; (30004edc <BOOT_OTA_SlotSelect+0x140>)
30004e8a:	4798      	blx	r3
30004e8c:	8aa2      	ldrh	r2, [r4, #20]
30004e8e:	8ae3      	ldrh	r3, [r4, #22]
30004e90:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
30004e94:	6033      	str	r3, [r6, #0]
30004e96:	2300      	movs	r3, #0
30004e98:	6073      	str	r3, [r6, #4]
30004e9a:	e7a7      	b.n	30004dec <BOOT_OTA_SlotSelect+0x50>
30004e9c:	4284      	cmp	r4, r0
30004e9e:	f171 0000 	sbcs.w	r0, r1, #0
30004ea2:	dacc      	bge.n	30004e3e <BOOT_OTA_SlotSelect+0xa2>
30004ea4:	4812      	ldr	r0, [pc, #72]	; (30004ef0 <BOOT_OTA_SlotSelect+0x154>)
30004ea6:	2500      	movs	r5, #0
30004ea8:	7005      	strb	r5, [r0, #0]
30004eaa:	e7cb      	b.n	30004e44 <BOOT_OTA_SlotSelect+0xa8>
30004eac:	4640      	mov	r0, r8
30004eae:	4b0b      	ldr	r3, [pc, #44]	; (30004edc <BOOT_OTA_SlotSelect+0x140>)
30004eb0:	4798      	blx	r3
30004eb2:	e7e1      	b.n	30004e78 <BOOT_OTA_SlotSelect+0xdc>
30004eb4:	4648      	mov	r0, r9
30004eb6:	f001 faa7 	bl	30006408 <NandImgCopy>
30004eba:	e7e7      	b.n	30004e8c <BOOT_OTA_SlotSelect+0xf0>
30004ebc:	480c      	ldr	r0, [pc, #48]	; (30004ef0 <BOOT_OTA_SlotSelect+0x154>)
30004ebe:	2502      	movs	r5, #2
30004ec0:	7005      	strb	r5, [r0, #0]
30004ec2:	e7bf      	b.n	30004e44 <BOOT_OTA_SlotSelect+0xa8>
30004ec4:	f3af 8000 	nop.w
30004ec8:	ffffffff 	.word	0xffffffff
30004ecc:	ffffffff 	.word	0xffffffff
30004ed0:	3000e968 	.word	0x3000e968
30004ed4:	3000e7bc 	.word	0x3000e7bc
30004ed8:	3000e1d4 	.word	0x3000e1d4
30004edc:	00012a1d 	.word	0x00012a1d
30004ee0:	000129bd 	.word	0x000129bd
30004ee4:	3000e7c4 	.word	0x3000e7c4
30004ee8:	0000c21d 	.word	0x0000c21d
30004eec:	42000300 	.word	0x42000300
30004ef0:	3000e964 	.word	0x3000e964
30004ef4:	3000e49c 	.word	0x3000e49c
30004ef8:	3000e7d4 	.word	0x3000e7d4
30004efc:	3000a4e1 	.word	0x3000a4e1
30004f00:	3000bdfc 	.word	0x3000bdfc

30004f04 <BOOT_LoadSubImage>:
30004f04:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30004f08:	b08f      	sub	sp, #60	; 0x3c
30004f0a:	469a      	mov	sl, r3
30004f0c:	f89d 3060 	ldrb.w	r3, [sp, #96]	; 0x60
30004f10:	9305      	str	r3, [sp, #20]
30004f12:	2a00      	cmp	r2, #0
30004f14:	d03d      	beq.n	30004f92 <BOOT_LoadSubImage+0x8e>
30004f16:	460f      	mov	r7, r1
30004f18:	4691      	mov	r9, r2
30004f1a:	2600      	movs	r6, #0
30004f1c:	4605      	mov	r5, r0
30004f1e:	4b57      	ldr	r3, [pc, #348]	; (3000507c <BOOT_LoadSubImage+0x178>)
30004f20:	4798      	blx	r3
30004f22:	2220      	movs	r2, #32
30004f24:	4639      	mov	r1, r7
30004f26:	2800      	cmp	r0, #0
30004f28:	d037      	beq.n	30004f9a <BOOT_LoadSubImage+0x96>
30004f2a:	4b55      	ldr	r3, [pc, #340]	; (30005080 <BOOT_LoadSubImage+0x17c>)
30004f2c:	a806      	add	r0, sp, #24
30004f2e:	4798      	blx	r3
30004f30:	9b06      	ldr	r3, [sp, #24]
30004f32:	4a54      	ldr	r2, [pc, #336]	; (30005084 <BOOT_LoadSubImage+0x180>)
30004f34:	4293      	cmp	r3, r2
30004f36:	d137      	bne.n	30004fa8 <BOOT_LoadSubImage+0xa4>
30004f38:	f102 427b 	add.w	r2, r2, #4211081216	; 0xfb000000
30004f3c:	9b07      	ldr	r3, [sp, #28]
30004f3e:	f502 0278 	add.w	r2, r2, #16252928	; 0xf80000
30004f42:	f502 62c0 	add.w	r2, r2, #1536	; 0x600
30004f46:	4293      	cmp	r3, r2
30004f48:	d12e      	bne.n	30004fa8 <BOOT_LoadSubImage+0xa4>
30004f4a:	9a09      	ldr	r2, [sp, #36]	; 0x24
30004f4c:	4b4e      	ldr	r3, [pc, #312]	; (30005088 <BOOT_LoadSubImage+0x184>)
30004f4e:	9c08      	ldr	r4, [sp, #32]
30004f50:	f1a2 0820 	sub.w	r8, r2, #32
30004f54:	4413      	add	r3, r2
30004f56:	3420      	adds	r4, #32
30004f58:	f1b3 6f00 	cmp.w	r3, #134217728	; 0x8000000
30004f5c:	d301      	bcc.n	30004f62 <BOOT_LoadSubImage+0x5e>
30004f5e:	2c20      	cmp	r4, #32
30004f60:	d829      	bhi.n	30004fb6 <BOOT_LoadSubImage+0xb2>
30004f62:	2c20      	cmp	r4, #32
30004f64:	bf08      	it	eq
30004f66:	46b8      	moveq	r8, r7
30004f68:	b17d      	cbz	r5, 30004f8a <BOOT_LoadSubImage+0x86>
30004f6a:	1d2b      	adds	r3, r5, #4
30004f6c:	f845 8036 	str.w	r8, [r5, r6, lsl #3]
30004f70:	2249      	movs	r2, #73	; 0x49
30004f72:	4946      	ldr	r1, [pc, #280]	; (3000508c <BOOT_LoadSubImage+0x188>)
30004f74:	2004      	movs	r0, #4
30004f76:	e9cd 8401 	strd	r8, r4, [sp, #4]
30004f7a:	f843 4036 	str.w	r4, [r3, r6, lsl #3]
30004f7e:	f85a 3026 	ldr.w	r3, [sl, r6, lsl #2]
30004f82:	9300      	str	r3, [sp, #0]
30004f84:	4b42      	ldr	r3, [pc, #264]	; (30005090 <BOOT_LoadSubImage+0x18c>)
30004f86:	f004 f9c9 	bl	3000931c <rtk_log_write>
30004f8a:	3601      	adds	r6, #1
30004f8c:	4427      	add	r7, r4
30004f8e:	454e      	cmp	r6, r9
30004f90:	d1c5      	bne.n	30004f1e <BOOT_LoadSubImage+0x1a>
30004f92:	2001      	movs	r0, #1
30004f94:	b00f      	add	sp, #60	; 0x3c
30004f96:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30004f9a:	a806      	add	r0, sp, #24
30004f9c:	f001 fa34 	bl	30006408 <NandImgCopy>
30004fa0:	9b06      	ldr	r3, [sp, #24]
30004fa2:	4a38      	ldr	r2, [pc, #224]	; (30005084 <BOOT_LoadSubImage+0x180>)
30004fa4:	4293      	cmp	r3, r2
30004fa6:	d0c7      	beq.n	30004f38 <BOOT_LoadSubImage+0x34>
30004fa8:	9b05      	ldr	r3, [sp, #20]
30004faa:	2b01      	cmp	r3, #1
30004fac:	d059      	beq.n	30005062 <BOOT_LoadSubImage+0x15e>
30004fae:	2000      	movs	r0, #0
30004fb0:	b00f      	add	sp, #60	; 0x3c
30004fb2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30004fb6:	4b31      	ldr	r3, [pc, #196]	; (3000507c <BOOT_LoadSubImage+0x178>)
30004fb8:	4798      	blx	r3
30004fba:	4622      	mov	r2, r4
30004fbc:	4639      	mov	r1, r7
30004fbe:	b330      	cbz	r0, 3000500e <BOOT_LoadSubImage+0x10a>
30004fc0:	4640      	mov	r0, r8
30004fc2:	4b2f      	ldr	r3, [pc, #188]	; (30005080 <BOOT_LoadSubImage+0x17c>)
30004fc4:	4798      	blx	r3
30004fc6:	4933      	ldr	r1, [pc, #204]	; (30005094 <BOOT_LoadSubImage+0x190>)
30004fc8:	694b      	ldr	r3, [r1, #20]
30004fca:	03db      	lsls	r3, r3, #15
30004fcc:	d5cc      	bpl.n	30004f68 <BOOT_LoadSubImage+0x64>
30004fce:	ea08 0304 	and.w	r3, r8, r4
30004fd2:	3301      	adds	r3, #1
30004fd4:	d023      	beq.n	3000501e <BOOT_LoadSubImage+0x11a>
30004fd6:	f018 031f 	ands.w	r3, r8, #31
30004fda:	d11c      	bne.n	30005016 <BOOT_LoadSubImage+0x112>
30004fdc:	4623      	mov	r3, r4
30004fde:	4642      	mov	r2, r8
30004fe0:	f3bf 8f4f 	dsb	sy
30004fe4:	2b00      	cmp	r3, #0
30004fe6:	dd0d      	ble.n	30005004 <BOOT_LoadSubImage+0x100>
30004fe8:	1e59      	subs	r1, r3, #1
30004fea:	f102 0320 	add.w	r3, r2, #32
30004fee:	4829      	ldr	r0, [pc, #164]	; (30005094 <BOOT_LoadSubImage+0x190>)
30004ff0:	f021 011f 	bic.w	r1, r1, #31
30004ff4:	4419      	add	r1, r3
30004ff6:	428b      	cmp	r3, r1
30004ff8:	f8c0 2270 	str.w	r2, [r0, #624]	; 0x270
30004ffc:	461a      	mov	r2, r3
30004ffe:	f103 0320 	add.w	r3, r3, #32
30005002:	d1f8      	bne.n	30004ff6 <BOOT_LoadSubImage+0xf2>
30005004:	f3bf 8f4f 	dsb	sy
30005008:	f3bf 8f6f 	isb	sy
3000500c:	e7ac      	b.n	30004f68 <BOOT_LoadSubImage+0x64>
3000500e:	4640      	mov	r0, r8
30005010:	f001 f9fa 	bl	30006408 <NandImgCopy>
30005014:	e7d7      	b.n	30004fc6 <BOOT_LoadSubImage+0xc2>
30005016:	4423      	add	r3, r4
30005018:	f028 021f 	bic.w	r2, r8, #31
3000501c:	e7e0      	b.n	30004fe0 <BOOT_LoadSubImage+0xdc>
3000501e:	2300      	movs	r3, #0
30005020:	f8c1 3084 	str.w	r3, [r1, #132]	; 0x84
30005024:	f3bf 8f4f 	dsb	sy
30005028:	f8d1 3080 	ldr.w	r3, [r1, #128]	; 0x80
3000502c:	f643 7be0 	movw	fp, #16352	; 0x3fe0
30005030:	f3c3 3c4e 	ubfx	ip, r3, #13, #15
30005034:	f3c3 0ec9 	ubfx	lr, r3, #3, #10
30005038:	ea4f 1c4c 	mov.w	ip, ip, lsl #5
3000503c:	ea0c 000b 	and.w	r0, ip, fp
30005040:	4673      	mov	r3, lr
30005042:	ea40 7283 	orr.w	r2, r0, r3, lsl #30
30005046:	3b01      	subs	r3, #1
30005048:	f8c1 2274 	str.w	r2, [r1, #628]	; 0x274
3000504c:	d2f9      	bcs.n	30005042 <BOOT_LoadSubImage+0x13e>
3000504e:	f1ac 0c20 	sub.w	ip, ip, #32
30005052:	f11c 0f20 	cmn.w	ip, #32
30005056:	d1f1      	bne.n	3000503c <BOOT_LoadSubImage+0x138>
30005058:	f3bf 8f4f 	dsb	sy
3000505c:	f3bf 8f6f 	isb	sy
30005060:	e782      	b.n	30004f68 <BOOT_LoadSubImage+0x64>
30005062:	f85a 4026 	ldr.w	r4, [sl, r6, lsl #2]
30005066:	2249      	movs	r2, #73	; 0x49
30005068:	4b0b      	ldr	r3, [pc, #44]	; (30005098 <BOOT_LoadSubImage+0x194>)
3000506a:	2004      	movs	r0, #4
3000506c:	4907      	ldr	r1, [pc, #28]	; (3000508c <BOOT_LoadSubImage+0x188>)
3000506e:	9400      	str	r4, [sp, #0]
30005070:	f004 f954 	bl	3000931c <rtk_log_write>
30005074:	2000      	movs	r0, #0
30005076:	b00f      	add	sp, #60	; 0x3c
30005078:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
3000507c:	3000a4e1 	.word	0x3000a4e1
30005080:	00012a1d 	.word	0x00012a1d
30005084:	35393138 	.word	0x35393138
30005088:	f7ffffe0 	.word	0xf7ffffe0
3000508c:	3000b7cc 	.word	0x3000b7cc
30005090:	3000bad4 	.word	0x3000bad4
30005094:	e000ed00 	.word	0xe000ed00
30005098:	3000bac8 	.word	0x3000bac8

3000509c <BOOT_RSIPIvSet>:
3000509c:	b530      	push	{r4, r5, lr}
3000509e:	2300      	movs	r3, #0
300050a0:	b083      	sub	sp, #12
300050a2:	4a09      	ldr	r2, [pc, #36]	; (300050c8 <BOOT_RSIPIvSet+0x2c>)
300050a4:	4605      	mov	r5, r0
300050a6:	460c      	mov	r4, r1
300050a8:	e9cd 3300 	strd	r3, r3, [sp]
300050ac:	4790      	blx	r2
300050ae:	b148      	cbz	r0, 300050c4 <BOOT_RSIPIvSet+0x28>
300050b0:	f105 0120 	add.w	r1, r5, #32
300050b4:	4b05      	ldr	r3, [pc, #20]	; (300050cc <BOOT_RSIPIvSet+0x30>)
300050b6:	2208      	movs	r2, #8
300050b8:	4668      	mov	r0, sp
300050ba:	4798      	blx	r3
300050bc:	4669      	mov	r1, sp
300050be:	b2e0      	uxtb	r0, r4
300050c0:	4b03      	ldr	r3, [pc, #12]	; (300050d0 <BOOT_RSIPIvSet+0x34>)
300050c2:	4798      	blx	r3
300050c4:	b003      	add	sp, #12
300050c6:	bd30      	pop	{r4, r5, pc}
300050c8:	0000c129 	.word	0x0000c129
300050cc:	00012a1d 	.word	0x00012a1d
300050d0:	3000a2d1 	.word	0x3000a2d1

300050d4 <BOOT_OTFCheck>:
300050d4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
300050d8:	4d1c      	ldr	r5, [pc, #112]	; (3000514c <BOOT_OTFCheck+0x78>)
300050da:	b082      	sub	sp, #8
300050dc:	4604      	mov	r4, r0
300050de:	4688      	mov	r8, r1
300050e0:	4617      	mov	r7, r2
300050e2:	461e      	mov	r6, r3
300050e4:	47a8      	blx	r5
300050e6:	b148      	cbz	r0, 300050fc <BOOT_OTFCheck+0x28>
300050e8:	f104 4378 	add.w	r3, r4, #4160749568	; 0xf8000000
300050ec:	f1b3 6f00 	cmp.w	r3, #134217728	; 0x8000000
300050f0:	d204      	bcs.n	300050fc <BOOT_OTFCheck+0x28>
300050f2:	f108 4378 	add.w	r3, r8, #4160749568	; 0xf8000000
300050f6:	f1b3 6f00 	cmp.w	r3, #134217728	; 0x8000000
300050fa:	d302      	bcc.n	30005102 <BOOT_OTFCheck+0x2e>
300050fc:	b002      	add	sp, #8
300050fe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
30005102:	4b13      	ldr	r3, [pc, #76]	; (30005150 <BOOT_OTFCheck+0x7c>)
30005104:	2249      	movs	r2, #73	; 0x49
30005106:	4913      	ldr	r1, [pc, #76]	; (30005154 <BOOT_OTFCheck+0x80>)
30005108:	2004      	movs	r0, #4
3000510a:	f004 f907 	bl	3000931c <rtk_log_write>
3000510e:	4b12      	ldr	r3, [pc, #72]	; (30005158 <BOOT_OTFCheck+0x84>)
30005110:	4798      	blx	r3
30005112:	4603      	mov	r3, r0
30005114:	b150      	cbz	r0, 3000512c <BOOT_OTFCheck+0x58>
30005116:	2801      	cmp	r0, #1
30005118:	d009      	beq.n	3000512e <BOOT_OTFCheck+0x5a>
3000511a:	4b10      	ldr	r3, [pc, #64]	; (3000515c <BOOT_OTFCheck+0x88>)
3000511c:	2245      	movs	r2, #69	; 0x45
3000511e:	490d      	ldr	r1, [pc, #52]	; (30005154 <BOOT_OTFCheck+0x80>)
30005120:	2002      	movs	r0, #2
30005122:	b002      	add	sp, #8
30005124:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
30005128:	f004 b8f8 	b.w	3000931c <rtk_log_write>
3000512c:	2302      	movs	r3, #2
3000512e:	4630      	mov	r0, r6
30005130:	4621      	mov	r1, r4
30005132:	9301      	str	r3, [sp, #4]
30005134:	4642      	mov	r2, r8
30005136:	2301      	movs	r3, #1
30005138:	4c09      	ldr	r4, [pc, #36]	; (30005160 <BOOT_OTFCheck+0x8c>)
3000513a:	9700      	str	r7, [sp, #0]
3000513c:	47a0      	blx	r4
3000513e:	2001      	movs	r0, #1
30005140:	4b08      	ldr	r3, [pc, #32]	; (30005164 <BOOT_OTFCheck+0x90>)
30005142:	b002      	add	sp, #8
30005144:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
30005148:	4718      	bx	r3
3000514a:	bf00      	nop
3000514c:	0000c129 	.word	0x0000c129
30005150:	3000bc04 	.word	0x3000bc04
30005154:	3000b7cc 	.word	0x3000b7cc
30005158:	0000c245 	.word	0x0000c245
3000515c:	3000bc14 	.word	0x3000bc14
30005160:	3000b375 	.word	0x3000b375
30005164:	3000a2ed 	.word	0x3000a2ed

30005168 <BOOT_OTA_Region_Init>:
30005168:	b510      	push	{r4, lr}
3000516a:	4c0a      	ldr	r4, [pc, #40]	; (30005194 <BOOT_OTA_Region_Init+0x2c>)
3000516c:	2200      	movs	r2, #0
3000516e:	2002      	movs	r0, #2
30005170:	4621      	mov	r1, r4
30005172:	f004 f98d 	bl	30009490 <flash_get_layout_info>
30005176:	2200      	movs	r2, #0
30005178:	1d21      	adds	r1, r4, #4
3000517a:	2003      	movs	r0, #3
3000517c:	f004 f988 	bl	30009490 <flash_get_layout_info>
30005180:	e9d4 2300 	ldrd	r2, r3, [r4]
30005184:	f502 5280 	add.w	r2, r2, #4096	; 0x1000
30005188:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
3000518c:	e9c4 2302 	strd	r2, r3, [r4, #8]
30005190:	bd10      	pop	{r4, pc}
30005192:	bf00      	nop
30005194:	3000e7bc 	.word	0x3000e7bc

30005198 <BOOT_OTA_RDP>:
30005198:	b510      	push	{r4, lr}
3000519a:	4b16      	ldr	r3, [pc, #88]	; (300051f4 <BOOT_OTA_RDP+0x5c>)
3000519c:	4696      	mov	lr, r2
3000519e:	3202      	adds	r2, #2
300051a0:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
300051a4:	f502 5280 	add.w	r2, r2, #4096	; 0x1000
300051a8:	b169      	cbz	r1, 300051c6 <BOOT_OTA_RDP+0x2e>
300051aa:	f101 3cff 	add.w	ip, r1, #4294967295	; 0xffffffff
300051ae:	4603      	mov	r3, r0
300051b0:	fa5f f48c 	uxtb.w	r4, ip
300051b4:	f100 0c08 	add.w	ip, r0, #8
300051b8:	eb0c 0cc4 	add.w	ip, ip, r4, lsl #3
300051bc:	685c      	ldr	r4, [r3, #4]
300051be:	3308      	adds	r3, #8
300051c0:	4563      	cmp	r3, ip
300051c2:	4422      	add	r2, r4
300051c4:	d1fa      	bne.n	300051bc <BOOT_OTA_RDP+0x24>
300051c6:	eb00 01c1 	add.w	r1, r0, r1, lsl #3
300051ca:	4b0b      	ldr	r3, [pc, #44]	; (300051f8 <BOOT_OTA_RDP+0x60>)
300051cc:	f44f 70c8 	mov.w	r0, #400	; 0x190
300051d0:	fb00 300e 	mla	r0, r0, lr, r3
300051d4:	f7ff fa24 	bl	30004620 <BOOT_LoadRDPImg>
300051d8:	b100      	cbz	r0, 300051dc <BOOT_OTA_RDP+0x44>
300051da:	bd10      	pop	{r4, pc}
300051dc:	4b07      	ldr	r3, [pc, #28]	; (300051fc <BOOT_OTA_RDP+0x64>)
300051de:	2245      	movs	r2, #69	; 0x45
300051e0:	4907      	ldr	r1, [pc, #28]	; (30005200 <BOOT_OTA_RDP+0x68>)
300051e2:	2002      	movs	r0, #2
300051e4:	4c07      	ldr	r4, [pc, #28]	; (30005204 <BOOT_OTA_RDP+0x6c>)
300051e6:	f004 f899 	bl	3000931c <rtk_log_write>
300051ea:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
300051ee:	47a0      	blx	r4
300051f0:	e7fb      	b.n	300051ea <BOOT_OTA_RDP+0x52>
300051f2:	bf00      	nop
300051f4:	3000e7bc 	.word	0x3000e7bc
300051f8:	3000e49c 	.word	0x3000e49c
300051fc:	3000bc28 	.word	0x3000bc28
30005200:	3000b7cc 	.word	0x3000b7cc
30005204:	00009be5 	.word	0x00009be5

30005208 <BOOT_OTA_AP>:
30005208:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
3000520c:	3202      	adds	r2, #2
3000520e:	b087      	sub	sp, #28
30005210:	4c26      	ldr	r4, [pc, #152]	; (300052ac <BOOT_OTA_AP+0xa4>)
30005212:	4607      	mov	r7, r0
30005214:	4b26      	ldr	r3, [pc, #152]	; (300052b0 <BOOT_OTA_AP+0xa8>)
30005216:	ad02      	add	r5, sp, #8
30005218:	f854 4022 	ldr.w	r4, [r4, r2, lsl #2]
3000521c:	460e      	mov	r6, r1
3000521e:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
30005220:	f504 5480 	add.w	r4, r4, #4096	; 0x1000
30005224:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
30005228:	b16e      	cbz	r6, 30005246 <BOOT_OTA_AP+0x3e>
3000522a:	f106 3cff 	add.w	ip, r6, #4294967295	; 0xffffffff
3000522e:	463b      	mov	r3, r7
30005230:	fa5f f28c 	uxtb.w	r2, ip
30005234:	f107 0c08 	add.w	ip, r7, #8
30005238:	eb0c 0cc2 	add.w	ip, ip, r2, lsl #3
3000523c:	685a      	ldr	r2, [r3, #4]
3000523e:	3308      	adds	r3, #8
30005240:	4563      	cmp	r3, ip
30005242:	4414      	add	r4, r2
30005244:	d1fa      	bne.n	3000523c <BOOT_OTA_AP+0x34>
30005246:	f8df 8084 	ldr.w	r8, [pc, #132]	; 300052cc <BOOT_OTA_AP+0xc4>
3000524a:	4623      	mov	r3, r4
3000524c:	4a19      	ldr	r2, [pc, #100]	; (300052b4 <BOOT_OTA_AP+0xac>)
3000524e:	2003      	movs	r0, #3
30005250:	4641      	mov	r1, r8
30005252:	f8df 907c 	ldr.w	r9, [pc, #124]	; 300052d0 <BOOT_OTA_AP+0xc8>
30005256:	47c8      	blx	r9
30005258:	2101      	movs	r1, #1
3000525a:	2003      	movs	r0, #3
3000525c:	4b16      	ldr	r3, [pc, #88]	; (300052b8 <BOOT_OTA_AP+0xb0>)
3000525e:	4798      	blx	r3
30005260:	2201      	movs	r2, #1
30005262:	4914      	ldr	r1, [pc, #80]	; (300052b4 <BOOT_OTA_AP+0xac>)
30005264:	2303      	movs	r3, #3
30005266:	4640      	mov	r0, r8
30005268:	f7ff ff34 	bl	300050d4 <BOOT_OTFCheck>
3000526c:	4b13      	ldr	r3, [pc, #76]	; (300052bc <BOOT_OTA_AP+0xb4>)
3000526e:	4798      	blx	r3
30005270:	2800      	cmp	r0, #0
30005272:	bf14      	ite	ne
30005274:	4641      	movne	r1, r8
30005276:	4621      	moveq	r1, r4
30005278:	2401      	movs	r4, #1
3000527a:	462b      	mov	r3, r5
3000527c:	eb07 00c6 	add.w	r0, r7, r6, lsl #3
30005280:	2204      	movs	r2, #4
30005282:	9400      	str	r4, [sp, #0]
30005284:	f7ff fe3e 	bl	30004f04 <BOOT_LoadSubImage>
30005288:	42a0      	cmp	r0, r4
3000528a:	d103      	bne.n	30005294 <BOOT_OTA_AP+0x8c>
3000528c:	2004      	movs	r0, #4
3000528e:	b007      	add	sp, #28
30005290:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
30005294:	4b0a      	ldr	r3, [pc, #40]	; (300052c0 <BOOT_OTA_AP+0xb8>)
30005296:	2245      	movs	r2, #69	; 0x45
30005298:	490a      	ldr	r1, [pc, #40]	; (300052c4 <BOOT_OTA_AP+0xbc>)
3000529a:	2002      	movs	r0, #2
3000529c:	4c0a      	ldr	r4, [pc, #40]	; (300052c8 <BOOT_OTA_AP+0xc0>)
3000529e:	f004 f83d 	bl	3000931c <rtk_log_write>
300052a2:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
300052a6:	47a0      	blx	r4
300052a8:	e7fb      	b.n	300052a2 <BOOT_OTA_AP+0x9a>
300052aa:	bf00      	nop
300052ac:	3000e7bc 	.word	0x3000e7bc
300052b0:	3000bdc8 	.word	0x3000bdc8
300052b4:	0fffffe0 	.word	0x0fffffe0
300052b8:	3000a345 	.word	0x3000a345
300052bc:	3000a4e1 	.word	0x3000a4e1
300052c0:	3000bc44 	.word	0x3000bc44
300052c4:	3000b7cc 	.word	0x3000b7cc
300052c8:	00009be5 	.word	0x00009be5
300052cc:	0e000000 	.word	0x0e000000
300052d0:	3000a305 	.word	0x3000a305

300052d4 <BOOT_OTA_LoadIMG2>:
300052d4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
300052d8:	4b7e      	ldr	r3, [pc, #504]	; (300054d4 <BOOT_OTA_LoadIMG2+0x200>)
300052da:	b08f      	sub	sp, #60	; 0x3c
300052dc:	4605      	mov	r5, r0
300052de:	f8df 8254 	ldr.w	r8, [pc, #596]	; 30005534 <BOOT_OTA_LoadIMG2+0x260>
300052e2:	ae08      	add	r6, sp, #32
300052e4:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
300052e8:	330c      	adds	r3, #12
300052ea:	e886 0007 	stmia.w	r6, {r0, r1, r2}
300052ee:	2200      	movs	r2, #0
300052f0:	e9cd 2206 	strd	r2, r2, [sp, #24]
300052f4:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
300052f8:	ab0b      	add	r3, sp, #44	; 0x2c
300052fa:	e883 0007 	stmia.w	r3, {r0, r1, r2}
300052fe:	f44f 73c8 	mov.w	r3, #400	; 0x190
30005302:	1caa      	adds	r2, r5, #2
30005304:	4974      	ldr	r1, [pc, #464]	; (300054d8 <BOOT_OTA_LoadIMG2+0x204>)
30005306:	fb03 f305 	mul.w	r3, r3, r5
3000530a:	f851 4022 	ldr.w	r4, [r1, r2, lsl #2]
3000530e:	461f      	mov	r7, r3
30005310:	9205      	str	r2, [sp, #20]
30005312:	9304      	str	r3, [sp, #16]
30005314:	47c0      	blx	r8
30005316:	b148      	cbz	r0, 3000532c <BOOT_OTA_LoadIMG2+0x58>
30005318:	4970      	ldr	r1, [pc, #448]	; (300054dc <BOOT_OTA_LoadIMG2+0x208>)
3000531a:	2208      	movs	r2, #8
3000531c:	4b70      	ldr	r3, [pc, #448]	; (300054e0 <BOOT_OTA_LoadIMG2+0x20c>)
3000531e:	a806      	add	r0, sp, #24
30005320:	4439      	add	r1, r7
30005322:	4798      	blx	r3
30005324:	a906      	add	r1, sp, #24
30005326:	2001      	movs	r0, #1
30005328:	4b6e      	ldr	r3, [pc, #440]	; (300054e4 <BOOT_OTA_LoadIMG2+0x210>)
3000532a:	4798      	blx	r3
3000532c:	f8df b208 	ldr.w	fp, [pc, #520]	; 30005538 <BOOT_OTA_LoadIMG2+0x264>
30005330:	f504 5480 	add.w	r4, r4, #4096	; 0x1000
30005334:	4a6c      	ldr	r2, [pc, #432]	; (300054e8 <BOOT_OTA_LoadIMG2+0x214>)
30005336:	2000      	movs	r0, #0
30005338:	4623      	mov	r3, r4
3000533a:	4659      	mov	r1, fp
3000533c:	4f6b      	ldr	r7, [pc, #428]	; (300054ec <BOOT_OTA_LoadIMG2+0x218>)
3000533e:	f04f 0801 	mov.w	r8, #1
30005342:	47b8      	blx	r7
30005344:	2101      	movs	r1, #1
30005346:	2000      	movs	r0, #0
30005348:	4b69      	ldr	r3, [pc, #420]	; (300054f0 <BOOT_OTA_LoadIMG2+0x21c>)
3000534a:	4798      	blx	r3
3000534c:	2301      	movs	r3, #1
3000534e:	4966      	ldr	r1, [pc, #408]	; (300054e8 <BOOT_OTA_LoadIMG2+0x214>)
30005350:	4658      	mov	r0, fp
30005352:	461a      	mov	r2, r3
30005354:	f8df 91e4 	ldr.w	r9, [pc, #484]	; 3000553c <BOOT_OTA_LoadIMG2+0x268>
30005358:	f7ff febc 	bl	300050d4 <BOOT_OTFCheck>
3000535c:	47c8      	blx	r9
3000535e:	2800      	cmp	r0, #0
30005360:	bf0c      	ite	eq
30005362:	46a2      	moveq	sl, r4
30005364:	46da      	movne	sl, fp
30005366:	4633      	mov	r3, r6
30005368:	2203      	movs	r2, #3
3000536a:	4651      	mov	r1, sl
3000536c:	4861      	ldr	r0, [pc, #388]	; (300054f4 <BOOT_OTA_LoadIMG2+0x220>)
3000536e:	f8cd 8000 	str.w	r8, [sp]
30005372:	f7ff fdc7 	bl	30004f04 <BOOT_LoadSubImage>
30005376:	b918      	cbnz	r0, 30005380 <BOOT_OTA_LoadIMG2+0xac>
30005378:	2000      	movs	r0, #0
3000537a:	b00f      	add	sp, #60	; 0x3c
3000537c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30005380:	4e5c      	ldr	r6, [pc, #368]	; (300054f4 <BOOT_OTA_LoadIMG2+0x220>)
30005382:	47c8      	blx	r9
30005384:	2800      	cmp	r0, #0
30005386:	bf08      	it	eq
30005388:	46a3      	moveq	fp, r4
3000538a:	4640      	mov	r0, r8
3000538c:	6872      	ldr	r2, [r6, #4]
3000538e:	68f3      	ldr	r3, [r6, #12]
30005390:	f8c6 b000 	str.w	fp, [r6]
30005394:	4413      	add	r3, r2
30005396:	6972      	ldr	r2, [r6, #20]
30005398:	f8df b1a4 	ldr.w	fp, [pc, #420]	; 30005540 <BOOT_OTA_LoadIMG2+0x26c>
3000539c:	441a      	add	r2, r3
3000539e:	4b56      	ldr	r3, [pc, #344]	; (300054f8 <BOOT_OTA_LoadIMG2+0x224>)
300053a0:	eb0a 0102 	add.w	r1, sl, r2
300053a4:	61b1      	str	r1, [r6, #24]
300053a6:	1e51      	subs	r1, r2, #1
300053a8:	400b      	ands	r3, r1
300053aa:	4659      	mov	r1, fp
300053ac:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
300053b0:	441c      	add	r4, r3
300053b2:	1a9b      	subs	r3, r3, r2
300053b4:	4a51      	ldr	r2, [pc, #324]	; (300054fc <BOOT_OTA_LoadIMG2+0x228>)
300053b6:	61f3      	str	r3, [r6, #28]
300053b8:	4623      	mov	r3, r4
300053ba:	47b8      	blx	r7
300053bc:	4641      	mov	r1, r8
300053be:	4640      	mov	r0, r8
300053c0:	4b4b      	ldr	r3, [pc, #300]	; (300054f0 <BOOT_OTA_LoadIMG2+0x21c>)
300053c2:	4798      	blx	r3
300053c4:	2302      	movs	r3, #2
300053c6:	4642      	mov	r2, r8
300053c8:	494c      	ldr	r1, [pc, #304]	; (300054fc <BOOT_OTA_LoadIMG2+0x228>)
300053ca:	4658      	mov	r0, fp
300053cc:	f7ff fe82 	bl	300050d4 <BOOT_OTFCheck>
300053d0:	47c8      	blx	r9
300053d2:	ab0b      	add	r3, sp, #44	; 0x2c
300053d4:	2800      	cmp	r0, #0
300053d6:	bf0c      	ite	eq
300053d8:	4621      	moveq	r1, r4
300053da:	4659      	movne	r1, fp
300053dc:	2203      	movs	r2, #3
300053de:	f106 0020 	add.w	r0, r6, #32
300053e2:	f8cd 8000 	str.w	r8, [sp]
300053e6:	f7ff fd8d 	bl	30004f04 <BOOT_LoadSubImage>
300053ea:	2800      	cmp	r0, #0
300053ec:	d0c4      	beq.n	30005378 <BOOT_OTA_LoadIMG2+0xa4>
300053ee:	47c8      	blx	r9
300053f0:	4f43      	ldr	r7, [pc, #268]	; (30005500 <BOOT_OTA_LoadIMG2+0x22c>)
300053f2:	2800      	cmp	r0, #0
300053f4:	bf08      	it	eq
300053f6:	46a3      	moveq	fp, r4
300053f8:	9b04      	ldr	r3, [sp, #16]
300053fa:	f8c6 b020 	str.w	fp, [r6, #32]
300053fe:	441f      	add	r7, r3
30005400:	4b40      	ldr	r3, [pc, #256]	; (30005504 <BOOT_OTA_LoadIMG2+0x230>)
30005402:	4798      	blx	r3
30005404:	4540      	cmp	r0, r8
30005406:	d036      	beq.n	30005476 <BOOT_OTA_LoadIMG2+0x1a2>
30005408:	4b3f      	ldr	r3, [pc, #252]	; (30005508 <BOOT_OTA_LoadIMG2+0x234>)
3000540a:	781b      	ldrb	r3, [r3, #0]
3000540c:	bb43      	cbnz	r3, 30005460 <BOOT_OTA_LoadIMG2+0x18c>
3000540e:	2207      	movs	r2, #7
30005410:	f44f 71b2 	mov.w	r1, #356	; 0x164
30005414:	2400      	movs	r4, #0
30005416:	4b3d      	ldr	r3, [pc, #244]	; (3000550c <BOOT_OTA_LoadIMG2+0x238>)
30005418:	4638      	mov	r0, r7
3000541a:	9400      	str	r4, [sp, #0]
3000541c:	fb01 3305 	mla	r3, r1, r5, r3
30005420:	4934      	ldr	r1, [pc, #208]	; (300054f4 <BOOT_OTA_LoadIMG2+0x220>)
30005422:	f7ff faf7 	bl	30004a14 <BOOT_SignatureCheck>
30005426:	3501      	adds	r5, #1
30005428:	4604      	mov	r4, r0
3000542a:	b958      	cbnz	r0, 30005444 <BOOT_OTA_LoadIMG2+0x170>
3000542c:	4938      	ldr	r1, [pc, #224]	; (30005510 <BOOT_OTA_LoadIMG2+0x23c>)
3000542e:	2249      	movs	r2, #73	; 0x49
30005430:	4b38      	ldr	r3, [pc, #224]	; (30005514 <BOOT_OTA_LoadIMG2+0x240>)
30005432:	9500      	str	r5, [sp, #0]
30005434:	e9cd 1001 	strd	r1, r0, [sp, #4]
30005438:	2004      	movs	r0, #4
3000543a:	4937      	ldr	r1, [pc, #220]	; (30005518 <BOOT_OTA_LoadIMG2+0x244>)
3000543c:	f003 ff6e 	bl	3000931c <rtk_log_write>
30005440:	4620      	mov	r0, r4
30005442:	e79a      	b.n	3000537a <BOOT_OTA_LoadIMG2+0xa6>
30005444:	4935      	ldr	r1, [pc, #212]	; (3000551c <BOOT_OTA_LoadIMG2+0x248>)
30005446:	2249      	movs	r2, #73	; 0x49
30005448:	4b32      	ldr	r3, [pc, #200]	; (30005514 <BOOT_OTA_LoadIMG2+0x240>)
3000544a:	9500      	str	r5, [sp, #0]
3000544c:	e9cd 1001 	strd	r1, r0, [sp, #4]
30005450:	4931      	ldr	r1, [pc, #196]	; (30005518 <BOOT_OTA_LoadIMG2+0x244>)
30005452:	2004      	movs	r0, #4
30005454:	f003 ff62 	bl	3000931c <rtk_log_write>
30005458:	2001      	movs	r0, #1
3000545a:	b00f      	add	sp, #60	; 0x3c
3000545c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30005460:	2107      	movs	r1, #7
30005462:	460c      	mov	r4, r1
30005464:	462a      	mov	r2, r5
30005466:	4823      	ldr	r0, [pc, #140]	; (300054f4 <BOOT_OTA_LoadIMG2+0x220>)
30005468:	f7ff fece 	bl	30005208 <BOOT_OTA_AP>
3000546c:	4404      	add	r4, r0
3000546e:	2c0d      	cmp	r4, #13
30005470:	d82b      	bhi.n	300054ca <BOOT_OTA_LoadIMG2+0x1f6>
30005472:	b2e2      	uxtb	r2, r4
30005474:	e7cc      	b.n	30005410 <BOOT_OTA_LoadIMG2+0x13c>
30005476:	4b2a      	ldr	r3, [pc, #168]	; (30005520 <BOOT_OTA_LoadIMG2+0x24c>)
30005478:	2249      	movs	r2, #73	; 0x49
3000547a:	4927      	ldr	r1, [pc, #156]	; (30005518 <BOOT_OTA_LoadIMG2+0x244>)
3000547c:	2004      	movs	r0, #4
3000547e:	f003 ff4d 	bl	3000931c <rtk_log_write>
30005482:	4b15      	ldr	r3, [pc, #84]	; (300054d8 <BOOT_OTA_LoadIMG2+0x204>)
30005484:	9a05      	ldr	r2, [sp, #20]
30005486:	f106 0138 	add.w	r1, r6, #56	; 0x38
3000548a:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
3000548e:	f502 5280 	add.w	r2, r2, #4096	; 0x1000
30005492:	6873      	ldr	r3, [r6, #4]
30005494:	3608      	adds	r6, #8
30005496:	428e      	cmp	r6, r1
30005498:	441a      	add	r2, r3
3000549a:	d1fa      	bne.n	30005492 <BOOT_OTA_LoadIMG2+0x1be>
3000549c:	4921      	ldr	r1, [pc, #132]	; (30005524 <BOOT_OTA_LoadIMG2+0x250>)
3000549e:	4638      	mov	r0, r7
300054a0:	f7ff f8be 	bl	30004620 <BOOT_LoadRDPImg>
300054a4:	b130      	cbz	r0, 300054b4 <BOOT_OTA_LoadIMG2+0x1e0>
300054a6:	4b18      	ldr	r3, [pc, #96]	; (30005508 <BOOT_OTA_LoadIMG2+0x234>)
300054a8:	1dc4      	adds	r4, r0, #7
300054aa:	781b      	ldrb	r3, [r3, #0]
300054ac:	2b00      	cmp	r3, #0
300054ae:	d0de      	beq.n	3000546e <BOOT_OTA_LoadIMG2+0x19a>
300054b0:	b2e1      	uxtb	r1, r4
300054b2:	e7d7      	b.n	30005464 <BOOT_OTA_LoadIMG2+0x190>
300054b4:	4b1c      	ldr	r3, [pc, #112]	; (30005528 <BOOT_OTA_LoadIMG2+0x254>)
300054b6:	2245      	movs	r2, #69	; 0x45
300054b8:	4917      	ldr	r1, [pc, #92]	; (30005518 <BOOT_OTA_LoadIMG2+0x244>)
300054ba:	2002      	movs	r0, #2
300054bc:	4c1b      	ldr	r4, [pc, #108]	; (3000552c <BOOT_OTA_LoadIMG2+0x258>)
300054be:	f003 ff2d 	bl	3000931c <rtk_log_write>
300054c2:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
300054c6:	47a0      	blx	r4
300054c8:	e7fb      	b.n	300054c2 <BOOT_OTA_LoadIMG2+0x1ee>
300054ca:	f44f 719a 	mov.w	r1, #308	; 0x134
300054ce:	4818      	ldr	r0, [pc, #96]	; (30005530 <BOOT_OTA_LoadIMG2+0x25c>)
300054d0:	f005 fd08 	bl	3000aee4 <io_assert_failed>
300054d4:	3000bdd8 	.word	0x3000bdd8
300054d8:	3000e7bc 	.word	0x3000e7bc
300054dc:	3000e4bc 	.word	0x3000e4bc
300054e0:	00012a1d 	.word	0x00012a1d
300054e4:	3000a2d1 	.word	0x3000a2d1
300054e8:	0cffffe0 	.word	0x0cffffe0
300054ec:	3000a305 	.word	0x3000a305
300054f0:	3000a345 	.word	0x3000a345
300054f4:	3000e8f4 	.word	0x3000e8f4
300054f8:	fffff000 	.word	0xfffff000
300054fc:	0dffffe0 	.word	0x0dffffe0
30005500:	3000e49c 	.word	0x3000e49c
30005504:	0000c109 	.word	0x0000c109
30005508:	3000df4e 	.word	0x3000df4e
3000550c:	3000e1d4 	.word	0x3000e1d4
30005510:	3000bc88 	.word	0x3000bc88
30005514:	3000bc64 	.word	0x3000bc64
30005518:	3000b7cc 	.word	0x3000b7cc
3000551c:	3000bc80 	.word	0x3000bc80
30005520:	3000bc5c 	.word	0x3000bc5c
30005524:	3000e92c 	.word	0x3000e92c
30005528:	3000bc28 	.word	0x3000bc28
3000552c:	00009be5 	.word	0x00009be5
30005530:	3000bd40 	.word	0x3000bd40
30005534:	0000c129 	.word	0x0000c129
30005538:	0c000000 	.word	0x0c000000
3000553c:	3000a4e1 	.word	0x3000a4e1
30005540:	0d000000 	.word	0x0d000000

30005544 <BOOT_OTA_IMG2>:
30005544:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
30005548:	4c4c      	ldr	r4, [pc, #304]	; (3000567c <BOOT_OTA_IMG2+0x138>)
3000554a:	b084      	sub	sp, #16
3000554c:	2200      	movs	r2, #0
3000554e:	2002      	movs	r0, #2
30005550:	4621      	mov	r1, r4
30005552:	4d4b      	ldr	r5, [pc, #300]	; (30005680 <BOOT_OTA_IMG2+0x13c>)
30005554:	f003 ff9c 	bl	30009490 <flash_get_layout_info>
30005558:	2200      	movs	r2, #0
3000555a:	1d21      	adds	r1, r4, #4
3000555c:	2003      	movs	r0, #3
3000555e:	f003 ff97 	bl	30009490 <flash_get_layout_info>
30005562:	e9d4 2300 	ldrd	r2, r3, [r4]
30005566:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
3000556a:	f502 5280 	add.w	r2, r2, #4096	; 0x1000
3000556e:	e9c4 2302 	strd	r2, r3, [r4, #8]
30005572:	f7ff fc13 	bl	30004d9c <BOOT_OTA_SlotSelect>
30005576:	782b      	ldrb	r3, [r5, #0]
30005578:	b373      	cbz	r3, 300055d8 <BOOT_OTA_IMG2+0x94>
3000557a:	f04f 0a00 	mov.w	sl, #0
3000557e:	4604      	mov	r4, r0
30005580:	4f40      	ldr	r7, [pc, #256]	; (30005684 <BOOT_OTA_IMG2+0x140>)
30005582:	f44f 76b2 	mov.w	r6, #356	; 0x164
30005586:	f8df 911c 	ldr.w	r9, [pc, #284]	; 300056a4 <BOOT_OTA_IMG2+0x160>
3000558a:	46d0      	mov	r8, sl
3000558c:	4621      	mov	r1, r4
3000558e:	fb06 7004 	mla	r0, r6, r4, r7
30005592:	f7ff fb45 	bl	30004c20 <BOOT_CertificateCheck>
30005596:	2801      	cmp	r0, #1
30005598:	d043      	beq.n	30005622 <BOOT_OTA_IMG2+0xde>
3000559a:	f10a 0a01 	add.w	sl, sl, #1
3000559e:	782b      	ldrb	r3, [r5, #0]
300055a0:	3401      	adds	r4, #1
300055a2:	fa5f fa8a 	uxtb.w	sl, sl
300055a6:	f004 0401 	and.w	r4, r4, #1
300055aa:	4553      	cmp	r3, sl
300055ac:	d8ee      	bhi.n	3000558c <BOOT_OTA_IMG2+0x48>
300055ae:	459a      	cmp	sl, r3
300055b0:	d012      	beq.n	300055d8 <BOOT_OTA_IMG2+0x94>
300055b2:	4935      	ldr	r1, [pc, #212]	; (30005688 <BOOT_OTA_IMG2+0x144>)
300055b4:	1c60      	adds	r0, r4, #1
300055b6:	4b35      	ldr	r3, [pc, #212]	; (3000568c <BOOT_OTA_IMG2+0x148>)
300055b8:	2249      	movs	r2, #73	; 0x49
300055ba:	f851 1034 	ldr.w	r1, [r1, r4, lsl #3]
300055be:	9000      	str	r0, [sp, #0]
300055c0:	b28d      	uxth	r5, r1
300055c2:	0c08      	lsrs	r0, r1, #16
300055c4:	4932      	ldr	r1, [pc, #200]	; (30005690 <BOOT_OTA_IMG2+0x14c>)
300055c6:	9502      	str	r5, [sp, #8]
300055c8:	9001      	str	r0, [sp, #4]
300055ca:	2004      	movs	r0, #4
300055cc:	f003 fea6 	bl	3000931c <rtk_log_write>
300055d0:	4620      	mov	r0, r4
300055d2:	b004      	add	sp, #16
300055d4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
300055d8:	4b2e      	ldr	r3, [pc, #184]	; (30005694 <BOOT_OTA_IMG2+0x150>)
300055da:	2245      	movs	r2, #69	; 0x45
300055dc:	492c      	ldr	r1, [pc, #176]	; (30005690 <BOOT_OTA_IMG2+0x14c>)
300055de:	2002      	movs	r0, #2
300055e0:	f003 fe9c 	bl	3000931c <rtk_log_write>
300055e4:	4b2c      	ldr	r3, [pc, #176]	; (30005698 <BOOT_OTA_IMG2+0x154>)
300055e6:	f383 8808 	msr	MSP, r3
300055ea:	f641 727c 	movw	r2, #8060	; 0x1f7c
300055ee:	4b2b      	ldr	r3, [pc, #172]	; (3000569c <BOOT_OTA_IMG2+0x158>)
300055f0:	2100      	movs	r1, #0
300055f2:	482b      	ldr	r0, [pc, #172]	; (300056a0 <BOOT_OTA_IMG2+0x15c>)
300055f4:	4798      	blx	r3
300055f6:	4a2b      	ldr	r2, [pc, #172]	; (300056a4 <BOOT_OTA_IMG2+0x160>)
300055f8:	6953      	ldr	r3, [r2, #20]
300055fa:	03db      	lsls	r3, r3, #15
300055fc:	d50c      	bpl.n	30005618 <BOOT_OTA_IMG2+0xd4>
300055fe:	f3bf 8f4f 	dsb	sy
30005602:	4b27      	ldr	r3, [pc, #156]	; (300056a0 <BOOT_OTA_IMG2+0x15c>)
30005604:	4928      	ldr	r1, [pc, #160]	; (300056a8 <BOOT_OTA_IMG2+0x164>)
30005606:	f8c2 3270 	str.w	r3, [r2, #624]	; 0x270
3000560a:	3320      	adds	r3, #32
3000560c:	428b      	cmp	r3, r1
3000560e:	d1fa      	bne.n	30005606 <BOOT_OTA_IMG2+0xc2>
30005610:	f3bf 8f4f 	dsb	sy
30005614:	f3bf 8f6f 	isb	sy
30005618:	4c24      	ldr	r4, [pc, #144]	; (300056ac <BOOT_OTA_IMG2+0x168>)
3000561a:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
3000561e:	47a0      	blx	r4
30005620:	e7fb      	b.n	3000561a <BOOT_OTA_IMG2+0xd6>
30005622:	4620      	mov	r0, r4
30005624:	f7ff fe56 	bl	300052d4 <BOOT_OTA_LoadIMG2>
30005628:	2801      	cmp	r0, #1
3000562a:	d103      	bne.n	30005634 <BOOT_OTA_IMG2+0xf0>
3000562c:	782b      	ldrb	r3, [r5, #0]
3000562e:	459a      	cmp	sl, r3
30005630:	d1bf      	bne.n	300055b2 <BOOT_OTA_IMG2+0x6e>
30005632:	e7d1      	b.n	300055d8 <BOOT_OTA_IMG2+0x94>
30005634:	f8d9 3014 	ldr.w	r3, [r9, #20]
30005638:	03d9      	lsls	r1, r3, #15
3000563a:	d5ae      	bpl.n	3000559a <BOOT_OTA_IMG2+0x56>
3000563c:	f8c9 8084 	str.w	r8, [r9, #132]	; 0x84
30005640:	f3bf 8f4f 	dsb	sy
30005644:	f8d9 3080 	ldr.w	r3, [r9, #128]	; 0x80
30005648:	f643 7ee0 	movw	lr, #16352	; 0x3fe0
3000564c:	f3c3 304e 	ubfx	r0, r3, #13, #15
30005650:	f3c3 0cc9 	ubfx	ip, r3, #3, #10
30005654:	0140      	lsls	r0, r0, #5
30005656:	ea00 010e 	and.w	r1, r0, lr
3000565a:	4663      	mov	r3, ip
3000565c:	ea41 7283 	orr.w	r2, r1, r3, lsl #30
30005660:	3b01      	subs	r3, #1
30005662:	f8c9 2274 	str.w	r2, [r9, #628]	; 0x274
30005666:	1c5a      	adds	r2, r3, #1
30005668:	d1f8      	bne.n	3000565c <BOOT_OTA_IMG2+0x118>
3000566a:	3820      	subs	r0, #32
3000566c:	f110 0f20 	cmn.w	r0, #32
30005670:	d1f1      	bne.n	30005656 <BOOT_OTA_IMG2+0x112>
30005672:	f3bf 8f4f 	dsb	sy
30005676:	f3bf 8f6f 	isb	sy
3000567a:	e78e      	b.n	3000559a <BOOT_OTA_IMG2+0x56>
3000567c:	3000e7bc 	.word	0x3000e7bc
30005680:	3000e964 	.word	0x3000e964
30005684:	3000e1d4 	.word	0x3000e1d4
30005688:	3000e968 	.word	0x3000e968
3000568c:	3000bc90 	.word	0x3000bc90
30005690:	3000b7cc 	.word	0x3000b7cc
30005694:	3000bcbc 	.word	0x3000bcbc
30005698:	30002ffc 	.word	0x30002ffc
3000569c:	00012be5 	.word	0x00012be5
300056a0:	30001000 	.word	0x30001000
300056a4:	e000ed00 	.word	0xe000ed00
300056a8:	30002f80 	.word	0x30002f80
300056ac:	00009be5 	.word	0x00009be5

300056b0 <BOOT_OTA_AP_Linux>:
300056b0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
300056b4:	4b46      	ldr	r3, [pc, #280]	; (300057d0 <BOOT_OTA_AP_Linux+0x120>)
300056b6:	4605      	mov	r5, r0
300056b8:	f8df 9138 	ldr.w	r9, [pc, #312]	; 300057f4 <BOOT_OTA_AP_Linux+0x144>
300056bc:	ed2d 8b02 	vpush	{d8}
300056c0:	b0eb      	sub	sp, #428	; 0x1ac
300056c2:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
300056c6:	af03      	add	r7, sp, #12
300056c8:	f899 3000 	ldrb.w	r3, [r9]
300056cc:	e887 0007 	stmia.w	r7, {r0, r1, r2}
300056d0:	2b00      	cmp	r3, #0
300056d2:	d072      	beq.n	300057ba <BOOT_OTA_AP_Linux+0x10a>
300056d4:	4b3f      	ldr	r3, [pc, #252]	; (300057d4 <BOOT_OTA_AP_Linux+0x124>)
300056d6:	f44f 72b2 	mov.w	r2, #356	; 0x164
300056da:	2600      	movs	r6, #0
300056dc:	f8df b118 	ldr.w	fp, [pc, #280]	; 300057f8 <BOOT_OTA_AP_Linux+0x148>
300056e0:	fb02 3305 	mla	r3, r2, r5, r3
300056e4:	f8df 8114 	ldr.w	r8, [pc, #276]	; 300057fc <BOOT_OTA_AP_Linux+0x14c>
300056e8:	4c3b      	ldr	r4, [pc, #236]	; (300057d8 <BOOT_OTA_AP_Linux+0x128>)
300056ea:	ee08 3a10 	vmov	s16, r3
300056ee:	e017      	b.n	30005720 <BOOT_OTA_AP_Linux+0x70>
300056f0:	a806      	add	r0, sp, #24
300056f2:	4b3a      	ldr	r3, [pc, #232]	; (300057dc <BOOT_OTA_AP_Linux+0x12c>)
300056f4:	4798      	blx	r3
300056f6:	2301      	movs	r3, #1
300056f8:	f50a 5180 	add.w	r1, sl, #4096	; 0x1000
300056fc:	2203      	movs	r2, #3
300056fe:	4640      	mov	r0, r8
30005700:	9300      	str	r3, [sp, #0]
30005702:	463b      	mov	r3, r7
30005704:	f7ff fbfe 	bl	30004f04 <BOOT_LoadSubImage>
30005708:	2801      	cmp	r0, #1
3000570a:	f105 0501 	add.w	r5, r5, #1
3000570e:	d015      	beq.n	3000573c <BOOT_OTA_AP_Linux+0x8c>
30005710:	3601      	adds	r6, #1
30005712:	f899 3000 	ldrb.w	r3, [r9]
30005716:	f005 0501 	and.w	r5, r5, #1
3000571a:	b2f6      	uxtb	r6, r6
3000571c:	42b3      	cmp	r3, r6
3000571e:	d944      	bls.n	300057aa <BOOT_OTA_AP_Linux+0xfa>
30005720:	1d2b      	adds	r3, r5, #4
30005722:	f85b a023 	ldr.w	sl, [fp, r3, lsl #2]
30005726:	4b2e      	ldr	r3, [pc, #184]	; (300057e0 <BOOT_OTA_AP_Linux+0x130>)
30005728:	4798      	blx	r3
3000572a:	f44f 72c8 	mov.w	r2, #400	; 0x190
3000572e:	4651      	mov	r1, sl
30005730:	2800      	cmp	r0, #0
30005732:	d1dd      	bne.n	300056f0 <BOOT_OTA_AP_Linux+0x40>
30005734:	a806      	add	r0, sp, #24
30005736:	f000 fe67 	bl	30006408 <NandImgCopy>
3000573a:	e7dc      	b.n	300056f6 <BOOT_OTA_AP_Linux+0x46>
3000573c:	2302      	movs	r3, #2
3000573e:	2203      	movs	r2, #3
30005740:	4641      	mov	r1, r8
30005742:	a806      	add	r0, sp, #24
30005744:	9300      	str	r3, [sp, #0]
30005746:	ee18 3a10 	vmov	r3, s16
3000574a:	f7ff f963 	bl	30004a14 <BOOT_SignatureCheck>
3000574e:	2801      	cmp	r0, #1
30005750:	d022      	beq.n	30005798 <BOOT_OTA_AP_Linux+0xe8>
30005752:	6963      	ldr	r3, [r4, #20]
30005754:	03db      	lsls	r3, r3, #15
30005756:	d5db      	bpl.n	30005710 <BOOT_OTA_AP_Linux+0x60>
30005758:	2300      	movs	r3, #0
3000575a:	f8c4 3084 	str.w	r3, [r4, #132]	; 0x84
3000575e:	f3bf 8f4f 	dsb	sy
30005762:	f8d4 3080 	ldr.w	r3, [r4, #128]	; 0x80
30005766:	f643 7ee0 	movw	lr, #16352	; 0x3fe0
3000576a:	f3c3 304e 	ubfx	r0, r3, #13, #15
3000576e:	f3c3 0cc9 	ubfx	ip, r3, #3, #10
30005772:	0140      	lsls	r0, r0, #5
30005774:	ea00 010e 	and.w	r1, r0, lr
30005778:	4663      	mov	r3, ip
3000577a:	ea41 7283 	orr.w	r2, r1, r3, lsl #30
3000577e:	3b01      	subs	r3, #1
30005780:	f8c4 2274 	str.w	r2, [r4, #628]	; 0x274
30005784:	d2f9      	bcs.n	3000577a <BOOT_OTA_AP_Linux+0xca>
30005786:	3820      	subs	r0, #32
30005788:	f110 0f20 	cmn.w	r0, #32
3000578c:	d1f2      	bne.n	30005774 <BOOT_OTA_AP_Linux+0xc4>
3000578e:	f3bf 8f4f 	dsb	sy
30005792:	f3bf 8f6f 	isb	sy
30005796:	e7bb      	b.n	30005710 <BOOT_OTA_AP_Linux+0x60>
30005798:	4b12      	ldr	r3, [pc, #72]	; (300057e4 <BOOT_OTA_AP_Linux+0x134>)
3000579a:	2249      	movs	r2, #73	; 0x49
3000579c:	4912      	ldr	r1, [pc, #72]	; (300057e8 <BOOT_OTA_AP_Linux+0x138>)
3000579e:	2004      	movs	r0, #4
300057a0:	9500      	str	r5, [sp, #0]
300057a2:	f003 fdbb 	bl	3000931c <rtk_log_write>
300057a6:	f899 3000 	ldrb.w	r3, [r9]
300057aa:	429e      	cmp	r6, r3
300057ac:	d005      	beq.n	300057ba <BOOT_OTA_AP_Linux+0x10a>
300057ae:	2000      	movs	r0, #0
300057b0:	b06b      	add	sp, #428	; 0x1ac
300057b2:	ecbd 8b02 	vpop	{d8}
300057b6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
300057ba:	4b0c      	ldr	r3, [pc, #48]	; (300057ec <BOOT_OTA_AP_Linux+0x13c>)
300057bc:	2245      	movs	r2, #69	; 0x45
300057be:	490a      	ldr	r1, [pc, #40]	; (300057e8 <BOOT_OTA_AP_Linux+0x138>)
300057c0:	2002      	movs	r0, #2
300057c2:	4c0b      	ldr	r4, [pc, #44]	; (300057f0 <BOOT_OTA_AP_Linux+0x140>)
300057c4:	f003 fdaa 	bl	3000931c <rtk_log_write>
300057c8:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
300057cc:	47a0      	blx	r4
300057ce:	e7fb      	b.n	300057c8 <BOOT_OTA_AP_Linux+0x118>
300057d0:	3000bdf0 	.word	0x3000bdf0
300057d4:	3000e1d4 	.word	0x3000e1d4
300057d8:	e000ed00 	.word	0xe000ed00
300057dc:	00012a1d 	.word	0x00012a1d
300057e0:	3000a4e1 	.word	0x3000a4e1
300057e4:	3000bcec 	.word	0x3000bcec
300057e8:	3000b7cc 	.word	0x3000b7cc
300057ec:	3000bc44 	.word	0x3000bc44
300057f0:	00009be5 	.word	0x00009be5
300057f4:	3000e964 	.word	0x3000e964
300057f8:	3000e7bc 	.word	0x3000e7bc
300057fc:	3000e8f4 	.word	0x3000e8f4

30005800 <FLASH_ClockDiv>:
30005800:	2200      	movs	r2, #0
30005802:	2180      	movs	r1, #128	; 0x80
30005804:	b538      	push	{r3, r4, r5, lr}
30005806:	4605      	mov	r5, r0
30005808:	4c1e      	ldr	r4, [pc, #120]	; (30005884 <FLASH_ClockDiv+0x84>)
3000580a:	4610      	mov	r0, r2
3000580c:	47a0      	blx	r4
3000580e:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
30005812:	022d      	lsls	r5, r5, #8
30005814:	230a      	movs	r3, #10
30005816:	6c11      	ldr	r1, [r2, #64]	; 0x40
30005818:	f405 6570 	and.w	r5, r5, #3840	; 0xf00
3000581c:	f421 5140 	bic.w	r1, r1, #12288	; 0x3000
30005820:	6411      	str	r1, [r2, #64]	; 0x40
30005822:	6c11      	ldr	r1, [r2, #64]	; 0x40
30005824:	f421 6170 	bic.w	r1, r1, #3840	; 0xf00
30005828:	430d      	orrs	r5, r1
3000582a:	4917      	ldr	r1, [pc, #92]	; (30005888 <FLASH_ClockDiv+0x88>)
3000582c:	6415      	str	r5, [r2, #64]	; 0x40
3000582e:	e001      	b.n	30005834 <FLASH_ClockDiv+0x34>
30005830:	2a00      	cmp	r2, #0
30005832:	db02      	blt.n	3000583a <FLASH_ClockDiv+0x3a>
30005834:	3b01      	subs	r3, #1
30005836:	6c0a      	ldr	r2, [r1, #64]	; 0x40
30005838:	d1fa      	bne.n	30005830 <FLASH_ClockDiv+0x30>
3000583a:	230a      	movs	r3, #10
3000583c:	4912      	ldr	r1, [pc, #72]	; (30005888 <FLASH_ClockDiv+0x88>)
3000583e:	e000      	b.n	30005842 <FLASH_ClockDiv+0x42>
30005840:	b11b      	cbz	r3, 3000584a <FLASH_ClockDiv+0x4a>
30005842:	6c0a      	ldr	r2, [r1, #64]	; 0x40
30005844:	3b01      	subs	r3, #1
30005846:	0092      	lsls	r2, r2, #2
30005848:	d5fa      	bpl.n	30005840 <FLASH_ClockDiv+0x40>
3000584a:	f04f 4182 	mov.w	r1, #1090519040	; 0x41000000
3000584e:	220a      	movs	r2, #10
30005850:	6c0b      	ldr	r3, [r1, #64]	; 0x40
30005852:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
30005856:	640b      	str	r3, [r1, #64]	; 0x40
30005858:	6c0b      	ldr	r3, [r1, #64]	; 0x40
3000585a:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
3000585e:	640b      	str	r3, [r1, #64]	; 0x40
30005860:	e000      	b.n	30005864 <FLASH_ClockDiv+0x64>
30005862:	b12a      	cbz	r2, 30005870 <FLASH_ClockDiv+0x70>
30005864:	6c0b      	ldr	r3, [r1, #64]	; 0x40
30005866:	3a01      	subs	r2, #1
30005868:	f003 0303 	and.w	r3, r3, #3
3000586c:	2b03      	cmp	r3, #3
3000586e:	d1f8      	bne.n	30005862 <FLASH_ClockDiv+0x62>
30005870:	2201      	movs	r2, #1
30005872:	2180      	movs	r1, #128	; 0x80
30005874:	f44f 7080 	mov.w	r0, #256	; 0x100
30005878:	47a0      	blx	r4
3000587a:	2003      	movs	r0, #3
3000587c:	4b03      	ldr	r3, [pc, #12]	; (3000588c <FLASH_ClockDiv+0x8c>)
3000587e:	4798      	blx	r3
30005880:	2001      	movs	r0, #1
30005882:	bd38      	pop	{r3, r4, r5, pc}
30005884:	0000b479 	.word	0x0000b479
30005888:	42008800 	.word	0x42008800
3000588c:	0000b569 	.word	0x0000b569

30005890 <FLASH_CalibrationPhaseIdx>:
30005890:	2200      	movs	r2, #0
30005892:	2180      	movs	r1, #128	; 0x80
30005894:	b538      	push	{r3, r4, r5, lr}
30005896:	4604      	mov	r4, r0
30005898:	4d1a      	ldr	r5, [pc, #104]	; (30005904 <FLASH_CalibrationPhaseIdx+0x74>)
3000589a:	4610      	mov	r0, r2
3000589c:	47a8      	blx	r5
3000589e:	f04f 4182 	mov.w	r1, #1090519040	; 0x41000000
300058a2:	230a      	movs	r3, #10
300058a4:	6c0a      	ldr	r2, [r1, #64]	; 0x40
300058a6:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
300058aa:	640a      	str	r2, [r1, #64]	; 0x40
300058ac:	6c0a      	ldr	r2, [r1, #64]	; 0x40
300058ae:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
300058b2:	640a      	str	r2, [r1, #64]	; 0x40
300058b4:	e000      	b.n	300058b8 <FLASH_CalibrationPhaseIdx+0x28>
300058b6:	b11b      	cbz	r3, 300058c0 <FLASH_CalibrationPhaseIdx+0x30>
300058b8:	6c0a      	ldr	r2, [r1, #64]	; 0x40
300058ba:	3b01      	subs	r3, #1
300058bc:	0792      	lsls	r2, r2, #30
300058be:	d1fa      	bne.n	300058b6 <FLASH_CalibrationPhaseIdx+0x26>
300058c0:	f04f 4182 	mov.w	r1, #1090519040	; 0x41000000
300058c4:	00a4      	lsls	r4, r4, #2
300058c6:	220a      	movs	r2, #10
300058c8:	6c0b      	ldr	r3, [r1, #64]	; 0x40
300058ca:	f004 047c 	and.w	r4, r4, #124	; 0x7c
300058ce:	f023 037c 	bic.w	r3, r3, #124	; 0x7c
300058d2:	431c      	orrs	r4, r3
300058d4:	640c      	str	r4, [r1, #64]	; 0x40
300058d6:	6c0b      	ldr	r3, [r1, #64]	; 0x40
300058d8:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
300058dc:	640b      	str	r3, [r1, #64]	; 0x40
300058de:	6c0b      	ldr	r3, [r1, #64]	; 0x40
300058e0:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
300058e4:	640b      	str	r3, [r1, #64]	; 0x40
300058e6:	e000      	b.n	300058ea <FLASH_CalibrationPhaseIdx+0x5a>
300058e8:	b12a      	cbz	r2, 300058f6 <FLASH_CalibrationPhaseIdx+0x66>
300058ea:	6c0b      	ldr	r3, [r1, #64]	; 0x40
300058ec:	3a01      	subs	r2, #1
300058ee:	f003 0303 	and.w	r3, r3, #3
300058f2:	2b03      	cmp	r3, #3
300058f4:	d1f8      	bne.n	300058e8 <FLASH_CalibrationPhaseIdx+0x58>
300058f6:	2000      	movs	r0, #0
300058f8:	2201      	movs	r2, #1
300058fa:	2180      	movs	r1, #128	; 0x80
300058fc:	47a8      	blx	r5
300058fe:	2001      	movs	r0, #1
30005900:	bd38      	pop	{r3, r4, r5, pc}
30005902:	bf00      	nop
30005904:	0000b479 	.word	0x0000b479

30005908 <FLASH_CalibrationNewCmd>:
30005908:	f04f 4382 	mov.w	r3, #1090519040	; 0x41000000
3000590c:	2801      	cmp	r0, #1
3000590e:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
30005912:	f04f 0001 	mov.w	r0, #1
30005916:	6c1b      	ldr	r3, [r3, #64]	; 0x40
30005918:	bf0c      	ite	eq
3000591a:	f443 4300 	orreq.w	r3, r3, #32768	; 0x8000
3000591e:	f423 4300 	bicne.w	r3, r3, #32768	; 0x8000
30005922:	6413      	str	r3, [r2, #64]	; 0x40
30005924:	4770      	bx	lr
30005926:	bf00      	nop

30005928 <FLASH_CalibrationNew>:
30005928:	0052      	lsls	r2, r2, #1
3000592a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
3000592e:	3201      	adds	r2, #1
30005930:	b087      	sub	sp, #28
30005932:	461f      	mov	r7, r3
30005934:	4b4d      	ldr	r3, [pc, #308]	; (30005a6c <FLASH_CalibrationNew+0x144>)
30005936:	9101      	str	r1, [sp, #4]
30005938:	fa5f f882 	uxtb.w	r8, r2
3000593c:	f89d 4040 	ldrb.w	r4, [sp, #64]	; 0x40
30005940:	f89d a044 	ldrb.w	sl, [sp, #68]	; 0x44
30005944:	9003      	str	r0, [sp, #12]
30005946:	4798      	blx	r3
30005948:	9901      	ldr	r1, [sp, #4]
3000594a:	2800      	cmp	r0, #0
3000594c:	d07f      	beq.n	30005a4e <FLASH_CalibrationNew+0x126>
3000594e:	4848      	ldr	r0, [pc, #288]	; (30005a70 <FLASH_CalibrationNew+0x148>)
30005950:	4a48      	ldr	r2, [pc, #288]	; (30005a74 <FLASH_CalibrationNew+0x14c>)
30005952:	4790      	blx	r2
30005954:	4b46      	ldr	r3, [pc, #280]	; (30005a70 <FLASH_CalibrationNew+0x148>)
30005956:	f04f 4088 	mov.w	r0, #1140850688	; 0x44000000
3000595a:	0322      	lsls	r2, r4, #12
3000595c:	f04f 4182 	mov.w	r1, #1090519040	; 0x41000000
30005960:	795c      	ldrb	r4, [r3, #5]
30005962:	45d0      	cmp	r8, sl
30005964:	b292      	uxth	r2, r2
30005966:	6144      	str	r4, [r0, #20]
30005968:	f8d0 411c 	ldr.w	r4, [r0, #284]	; 0x11c
3000596c:	f424 4470 	bic.w	r4, r4, #61440	; 0xf000
30005970:	ea42 0204 	orr.w	r2, r2, r4
30005974:	f8c0 211c 	str.w	r2, [r0, #284]	; 0x11c
30005978:	6c0a      	ldr	r2, [r1, #64]	; 0x40
3000597a:	f422 4200 	bic.w	r2, r2, #32768	; 0x8000
3000597e:	640a      	str	r2, [r1, #64]	; 0x40
30005980:	6c0a      	ldr	r2, [r1, #64]	; 0x40
30005982:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
30005986:	640a      	str	r2, [r1, #64]	; 0x40
30005988:	d36e      	bcc.n	30005a68 <FLASH_CalibrationNew+0x140>
3000598a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
3000598e:	2500      	movs	r5, #0
30005990:	f8df b0f4 	ldr.w	fp, [pc, #244]	; 30005a88 <FLASH_CalibrationNew+0x160>
30005994:	f04f 6400 	mov.w	r4, #134217728	; 0x8000000
30005998:	4e37      	ldr	r6, [pc, #220]	; (30005a78 <FLASH_CalibrationNew+0x150>)
3000599a:	f8df 90f0 	ldr.w	r9, [pc, #240]	; 30005a8c <FLASH_CalibrationNew+0x164>
3000599e:	9302      	str	r3, [sp, #8]
300059a0:	9301      	str	r3, [sp, #4]
300059a2:	e00e      	b.n	300059c2 <FLASH_CalibrationNew+0x9a>
300059a4:	9b01      	ldr	r3, [sp, #4]
300059a6:	443d      	add	r5, r7
300059a8:	f8cd a008 	str.w	sl, [sp, #8]
300059ac:	3301      	adds	r3, #1
300059ae:	d102      	bne.n	300059b6 <FLASH_CalibrationNew+0x8e>
300059b0:	2501      	movs	r5, #1
300059b2:	f8cd a004 	str.w	sl, [sp, #4]
300059b6:	eb07 030a 	add.w	r3, r7, sl
300059ba:	fa5f fa83 	uxtb.w	sl, r3
300059be:	45d0      	cmp	r8, sl
300059c0:	d33c      	bcc.n	30005a3c <FLASH_CalibrationNew+0x114>
300059c2:	4650      	mov	r0, sl
300059c4:	f7ff ff64 	bl	30005890 <FLASH_CalibrationPhaseIdx>
300059c8:	6972      	ldr	r2, [r6, #20]
300059ca:	03d3      	lsls	r3, r2, #15
300059cc:	d507      	bpl.n	300059de <FLASH_CalibrationNew+0xb6>
300059ce:	f3bf 8f4f 	dsb	sy
300059d2:	f8c6 425c 	str.w	r4, [r6, #604]	; 0x25c
300059d6:	f3bf 8f4f 	dsb	sy
300059da:	f3bf 8f6f 	isb	sy
300059de:	47d8      	blx	fp
300059e0:	6821      	ldr	r1, [r4, #0]
300059e2:	2208      	movs	r2, #8
300059e4:	a804      	add	r0, sp, #16
300059e6:	9104      	str	r1, [sp, #16]
300059e8:	6861      	ldr	r1, [r4, #4]
300059ea:	4b24      	ldr	r3, [pc, #144]	; (30005a7c <FLASH_CalibrationNew+0x154>)
300059ec:	9105      	str	r1, [sp, #20]
300059ee:	4649      	mov	r1, r9
300059f0:	4798      	blx	r3
300059f2:	2800      	cmp	r0, #0
300059f4:	d0d6      	beq.n	300059a4 <FLASH_CalibrationNew+0x7c>
300059f6:	2d00      	cmp	r5, #0
300059f8:	dddd      	ble.n	300059b6 <FLASH_CalibrationNew+0x8e>
300059fa:	9b02      	ldr	r3, [sp, #8]
300059fc:	9903      	ldr	r1, [sp, #12]
300059fe:	061a      	lsls	r2, r3, #24
30005a00:	9b01      	ldr	r3, [sp, #4]
30005a02:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
30005a06:	eb03 0365 	add.w	r3, r3, r5, asr #1
30005a0a:	4315      	orrs	r5, r2
30005a0c:	f881 3061 	strb.w	r3, [r1, #97]	; 0x61
30005a10:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
30005a14:	4c16      	ldr	r4, [pc, #88]	; (30005a70 <FLASH_CalibrationNew+0x148>)
30005a16:	6c13      	ldr	r3, [r2, #64]	; 0x40
30005a18:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
30005a1c:	6413      	str	r3, [r2, #64]	; 0x40
30005a1e:	f04f 4388 	mov.w	r3, #1140850688	; 0x44000000
30005a22:	79a2      	ldrb	r2, [r4, #6]
30005a24:	615a      	str	r2, [r3, #20]
30005a26:	4b11      	ldr	r3, [pc, #68]	; (30005a6c <FLASH_CalibrationNew+0x144>)
30005a28:	4798      	blx	r3
30005a2a:	b1a0      	cbz	r0, 30005a56 <FLASH_CalibrationNew+0x12e>
30005a2c:	4620      	mov	r0, r4
30005a2e:	7921      	ldrb	r1, [r4, #4]
30005a30:	4b10      	ldr	r3, [pc, #64]	; (30005a74 <FLASH_CalibrationNew+0x14c>)
30005a32:	4798      	blx	r3
30005a34:	4628      	mov	r0, r5
30005a36:	b007      	add	sp, #28
30005a38:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30005a3c:	2d00      	cmp	r5, #0
30005a3e:	dcdc      	bgt.n	300059fa <FLASH_CalibrationNew+0xd2>
30005a40:	9b02      	ldr	r3, [sp, #8]
30005a42:	9a01      	ldr	r2, [sp, #4]
30005a44:	061b      	lsls	r3, r3, #24
30005a46:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
30005a4a:	431d      	orrs	r5, r3
30005a4c:	e7e0      	b.n	30005a10 <FLASH_CalibrationNew+0xe8>
30005a4e:	4808      	ldr	r0, [pc, #32]	; (30005a70 <FLASH_CalibrationNew+0x148>)
30005a50:	4a0b      	ldr	r2, [pc, #44]	; (30005a80 <FLASH_CalibrationNew+0x158>)
30005a52:	4790      	blx	r2
30005a54:	e77e      	b.n	30005954 <FLASH_CalibrationNew+0x2c>
30005a56:	4b06      	ldr	r3, [pc, #24]	; (30005a70 <FLASH_CalibrationNew+0x148>)
30005a58:	7919      	ldrb	r1, [r3, #4]
30005a5a:	4618      	mov	r0, r3
30005a5c:	4b08      	ldr	r3, [pc, #32]	; (30005a80 <FLASH_CalibrationNew+0x158>)
30005a5e:	4798      	blx	r3
30005a60:	4628      	mov	r0, r5
30005a62:	b007      	add	sp, #28
30005a64:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30005a68:	4d06      	ldr	r5, [pc, #24]	; (30005a84 <FLASH_CalibrationNew+0x15c>)
30005a6a:	e7d1      	b.n	30005a10 <FLASH_CalibrationNew+0xe8>
30005a6c:	3000a4e1 	.word	0x3000a4e1
30005a70:	2001c01c 	.word	0x2001c01c
30005a74:	00009c99 	.word	0x00009c99
30005a78:	e000ed00 	.word	0xe000ed00
30005a7c:	000129bd 	.word	0x000129bd
30005a80:	0000b7e9 	.word	0x0000b7e9
30005a84:	ffff0000 	.word	0xffff0000
30005a88:	3000a36d 	.word	0x3000a36d
30005a8c:	00054060 	.word	0x00054060

30005a90 <FLASH_Calibration>:
30005a90:	f04f 4388 	mov.w	r3, #1140850688	; 0x44000000
30005a94:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30005a98:	695c      	ldr	r4, [r3, #20]
30005a9a:	b087      	sub	sp, #28
30005a9c:	4616      	mov	r6, r2
30005a9e:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
30005aa2:	9403      	str	r4, [sp, #12]
30005aa4:	f8d3 311c 	ldr.w	r3, [r3, #284]	; 0x11c
30005aa8:	9101      	str	r1, [sp, #4]
30005aaa:	9304      	str	r3, [sp, #16]
30005aac:	9005      	str	r0, [sp, #20]
30005aae:	6c13      	ldr	r3, [r2, #64]	; 0x40
30005ab0:	7944      	ldrb	r4, [r0, #5]
30005ab2:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
30005ab6:	6413      	str	r3, [r2, #64]	; 0x40
30005ab8:	4b38      	ldr	r3, [pc, #224]	; (30005b9c <FLASH_Calibration+0x10c>)
30005aba:	4798      	blx	r3
30005abc:	9901      	ldr	r1, [sp, #4]
30005abe:	2800      	cmp	r0, #0
30005ac0:	d057      	beq.n	30005b72 <FLASH_Calibration+0xe2>
30005ac2:	4837      	ldr	r0, [pc, #220]	; (30005ba0 <FLASH_Calibration+0x110>)
30005ac4:	f04f 4a88 	mov.w	sl, #1140850688	; 0x44000000
30005ac8:	4b36      	ldr	r3, [pc, #216]	; (30005ba4 <FLASH_Calibration+0x114>)
30005aca:	4798      	blx	r3
30005acc:	f8ca 4014 	str.w	r4, [sl, #20]
30005ad0:	eb16 0644 	adds.w	r6, r6, r4, lsl #1
30005ad4:	d057      	beq.n	30005b86 <FLASH_Calibration+0xf6>
30005ad6:	2700      	movs	r7, #0
30005ad8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
30005adc:	f8df 80d0 	ldr.w	r8, [pc, #208]	; 30005bb0 <FLASH_Calibration+0x120>
30005ae0:	f04f 6400 	mov.w	r4, #134217728	; 0x8000000
30005ae4:	f8df 90cc 	ldr.w	r9, [pc, #204]	; 30005bb4 <FLASH_Calibration+0x124>
30005ae8:	46bb      	mov	fp, r7
30005aea:	4d2f      	ldr	r5, [pc, #188]	; (30005ba8 <FLASH_Calibration+0x118>)
30005aec:	9302      	str	r3, [sp, #8]
30005aee:	9701      	str	r7, [sp, #4]
30005af0:	f8da 111c 	ldr.w	r1, [sl, #284]	; 0x11c
30005af4:	ea4f 330b 	mov.w	r3, fp, lsl #12
30005af8:	f421 4170 	bic.w	r1, r1, #61440	; 0xf000
30005afc:	b29b      	uxth	r3, r3
30005afe:	430b      	orrs	r3, r1
30005b00:	f8ca 311c 	str.w	r3, [sl, #284]	; 0x11c
30005b04:	696b      	ldr	r3, [r5, #20]
30005b06:	03db      	lsls	r3, r3, #15
30005b08:	d507      	bpl.n	30005b1a <FLASH_Calibration+0x8a>
30005b0a:	f3bf 8f4f 	dsb	sy
30005b0e:	f8c5 425c 	str.w	r4, [r5, #604]	; 0x25c
30005b12:	f3bf 8f4f 	dsb	sy
30005b16:	f3bf 8f6f 	isb	sy
30005b1a:	47c0      	blx	r8
30005b1c:	6823      	ldr	r3, [r4, #0]
30005b1e:	f8d9 1000 	ldr.w	r1, [r9]
30005b22:	4299      	cmp	r1, r3
30005b24:	d108      	bne.n	30005b38 <FLASH_Calibration+0xa8>
30005b26:	9b02      	ldr	r3, [sp, #8]
30005b28:	3701      	adds	r7, #1
30005b2a:	3301      	adds	r3, #1
30005b2c:	f04f 0301 	mov.w	r3, #1
30005b30:	bf08      	it	eq
30005b32:	f8cd b008 	streq.w	fp, [sp, #8]
30005b36:	9301      	str	r3, [sp, #4]
30005b38:	f10b 0b01 	add.w	fp, fp, #1
30005b3c:	45b3      	cmp	fp, r6
30005b3e:	d1d7      	bne.n	30005af0 <FLASH_Calibration+0x60>
30005b40:	2f00      	cmp	r7, #0
30005b42:	dd04      	ble.n	30005b4e <FLASH_Calibration+0xbe>
30005b44:	9b02      	ldr	r3, [sp, #8]
30005b46:	eb03 0767 	add.w	r7, r3, r7, asr #1
30005b4a:	9b05      	ldr	r3, [sp, #20]
30005b4c:	775f      	strb	r7, [r3, #29]
30005b4e:	4b13      	ldr	r3, [pc, #76]	; (30005b9c <FLASH_Calibration+0x10c>)
30005b50:	4798      	blx	r3
30005b52:	b1e8      	cbz	r0, 30005b90 <FLASH_Calibration+0x100>
30005b54:	4812      	ldr	r0, [pc, #72]	; (30005ba0 <FLASH_Calibration+0x110>)
30005b56:	4b13      	ldr	r3, [pc, #76]	; (30005ba4 <FLASH_Calibration+0x114>)
30005b58:	7901      	ldrb	r1, [r0, #4]
30005b5a:	4798      	blx	r3
30005b5c:	9a03      	ldr	r2, [sp, #12]
30005b5e:	f04f 4388 	mov.w	r3, #1140850688	; 0x44000000
30005b62:	9801      	ldr	r0, [sp, #4]
30005b64:	615a      	str	r2, [r3, #20]
30005b66:	9a04      	ldr	r2, [sp, #16]
30005b68:	f8c3 211c 	str.w	r2, [r3, #284]	; 0x11c
30005b6c:	b007      	add	sp, #28
30005b6e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30005b72:	480b      	ldr	r0, [pc, #44]	; (30005ba0 <FLASH_Calibration+0x110>)
30005b74:	f04f 4a88 	mov.w	sl, #1140850688	; 0x44000000
30005b78:	4b0c      	ldr	r3, [pc, #48]	; (30005bac <FLASH_Calibration+0x11c>)
30005b7a:	4798      	blx	r3
30005b7c:	f8ca 4014 	str.w	r4, [sl, #20]
30005b80:	eb16 0644 	adds.w	r6, r6, r4, lsl #1
30005b84:	d1a7      	bne.n	30005ad6 <FLASH_Calibration+0x46>
30005b86:	4b05      	ldr	r3, [pc, #20]	; (30005b9c <FLASH_Calibration+0x10c>)
30005b88:	9601      	str	r6, [sp, #4]
30005b8a:	4798      	blx	r3
30005b8c:	2800      	cmp	r0, #0
30005b8e:	d1e1      	bne.n	30005b54 <FLASH_Calibration+0xc4>
30005b90:	4803      	ldr	r0, [pc, #12]	; (30005ba0 <FLASH_Calibration+0x110>)
30005b92:	4b06      	ldr	r3, [pc, #24]	; (30005bac <FLASH_Calibration+0x11c>)
30005b94:	7901      	ldrb	r1, [r0, #4]
30005b96:	4798      	blx	r3
30005b98:	e7e0      	b.n	30005b5c <FLASH_Calibration+0xcc>
30005b9a:	bf00      	nop
30005b9c:	3000a4e1 	.word	0x3000a4e1
30005ba0:	2001c01c 	.word	0x2001c01c
30005ba4:	00009c99 	.word	0x00009c99
30005ba8:	e000ed00 	.word	0xe000ed00
30005bac:	0000b7e9 	.word	0x0000b7e9
30005bb0:	3000a36d 	.word	0x3000a36d
30005bb4:	00054060 	.word	0x00054060

30005bb8 <_flash_calibration_highspeed>:
30005bb8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30005bbc:	f04f 0800 	mov.w	r8, #0
30005bc0:	b087      	sub	sp, #28
30005bc2:	4683      	mov	fp, r0
30005bc4:	460e      	mov	r6, r1
30005bc6:	4647      	mov	r7, r8
30005bc8:	4644      	mov	r4, r8
30005bca:	4d28      	ldr	r5, [pc, #160]	; (30005c6c <_flash_calibration_highspeed+0xb4>)
30005bcc:	f04f 0a01 	mov.w	sl, #1
30005bd0:	46c1      	mov	r9, r8
30005bd2:	fa5f fc84 	uxtb.w	ip, r4
30005bd6:	2301      	movs	r3, #1
30005bd8:	4632      	mov	r2, r6
30005bda:	4659      	mov	r1, fp
30005bdc:	4628      	mov	r0, r5
30005bde:	e9cd ca00 	strd	ip, sl, [sp]
30005be2:	f7ff fea1 	bl	30005928 <FLASH_CalibrationNew>
30005be6:	eb04 0384 	add.w	r3, r4, r4, lsl #2
30005bea:	3401      	adds	r4, #1
30005bec:	b2c2      	uxtb	r2, r0
30005bee:	005b      	lsls	r3, r3, #1
30005bf0:	b12a      	cbz	r2, 30005bfe <_flash_calibration_highspeed+0x46>
30005bf2:	f3c0 4207 	ubfx	r2, r0, #16, #8
30005bf6:	eb03 6810 	add.w	r8, r3, r0, lsr #24
30005bfa:	b907      	cbnz	r7, 30005bfe <_flash_calibration_highspeed+0x46>
30005bfc:	18d7      	adds	r7, r2, r3
30005bfe:	2c05      	cmp	r4, #5
30005c00:	f885 9061 	strb.w	r9, [r5, #97]	; 0x61
30005c04:	d1e5      	bne.n	30005bd2 <_flash_calibration_highspeed+0x1a>
30005c06:	b927      	cbnz	r7, 30005c12 <_flash_calibration_highspeed+0x5a>
30005c08:	4638      	mov	r0, r7
30005c0a:	776f      	strb	r7, [r5, #29]
30005c0c:	b007      	add	sp, #28
30005c0e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30005c12:	eb07 0208 	add.w	r2, r7, r8
30005c16:	4b16      	ldr	r3, [pc, #88]	; (30005c70 <_flash_calibration_highspeed+0xb8>)
30005c18:	0852      	lsrs	r2, r2, #1
30005c1a:	fba3 1602 	umull	r1, r6, r3, r2
30005c1e:	08f6      	lsrs	r6, r6, #3
30005c20:	eb06 0686 	add.w	r6, r6, r6, lsl #2
30005c24:	ebb2 0646 	subs.w	r6, r2, r6, lsl #1
30005c28:	d107      	bne.n	30005c3a <_flash_calibration_highspeed+0x82>
30005c2a:	3201      	adds	r2, #1
30005c2c:	fba3 1302 	umull	r1, r3, r3, r2
30005c30:	08de      	lsrs	r6, r3, #3
30005c32:	eb06 0686 	add.w	r6, r6, r6, lsl #2
30005c36:	eba2 0646 	sub.w	r6, r2, r6, lsl #1
30005c3a:	4c0d      	ldr	r4, [pc, #52]	; (30005c70 <_flash_calibration_highspeed+0xb8>)
30005c3c:	2004      	movs	r0, #4
30005c3e:	9202      	str	r2, [sp, #8]
30005c40:	fba4 2402 	umull	r2, r4, r4, r2
30005c44:	4b0b      	ldr	r3, [pc, #44]	; (30005c74 <_flash_calibration_highspeed+0xbc>)
30005c46:	2249      	movs	r2, #73	; 0x49
30005c48:	490b      	ldr	r1, [pc, #44]	; (30005c78 <_flash_calibration_highspeed+0xc0>)
30005c4a:	08e4      	lsrs	r4, r4, #3
30005c4c:	f8cd 8004 	str.w	r8, [sp, #4]
30005c50:	9604      	str	r6, [sp, #16]
30005c52:	9403      	str	r4, [sp, #12]
30005c54:	b2e4      	uxtb	r4, r4
30005c56:	9700      	str	r7, [sp, #0]
30005c58:	f003 fb60 	bl	3000931c <rtk_log_write>
30005c5c:	2001      	movs	r0, #1
30005c5e:	f885 6061 	strb.w	r6, [r5, #97]	; 0x61
30005c62:	772c      	strb	r4, [r5, #28]
30005c64:	776c      	strb	r4, [r5, #29]
30005c66:	b007      	add	sp, #28
30005c68:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30005c6c:	2001c01c 	.word	0x2001c01c
30005c70:	cccccccd 	.word	0xcccccccd
30005c74:	3000be18 	.word	0x3000be18
30005c78:	3000c078 	.word	0x3000c078

30005c7c <flash_calibration_highspeed>:
30005c7c:	b570      	push	{r4, r5, r6, lr}
30005c7e:	4d1c      	ldr	r5, [pc, #112]	; (30005cf0 <flash_calibration_highspeed+0x74>)
30005c80:	2300      	movs	r3, #0
30005c82:	4604      	mov	r4, r0
30005c84:	b082      	sub	sp, #8
30005c86:	792e      	ldrb	r6, [r5, #4]
30005c88:	f885 3060 	strb.w	r3, [r5, #96]	; 0x60
30005c8c:	f7ff fdb8 	bl	30005800 <FLASH_ClockDiv>
30005c90:	4621      	mov	r1, r4
30005c92:	4630      	mov	r0, r6
30005c94:	f7ff ff90 	bl	30005bb8 <_flash_calibration_highspeed>
30005c98:	b1e8      	cbz	r0, 30005cd6 <flash_calibration_highspeed+0x5a>
30005c9a:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
30005c9e:	f895 0061 	ldrb.w	r0, [r5, #97]	; 0x61
30005ca2:	6c13      	ldr	r3, [r2, #64]	; 0x40
30005ca4:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
30005ca8:	6413      	str	r3, [r2, #64]	; 0x40
30005caa:	f7ff fdf1 	bl	30005890 <FLASH_CalibrationPhaseIdx>
30005cae:	4b11      	ldr	r3, [pc, #68]	; (30005cf4 <flash_calibration_highspeed+0x78>)
30005cb0:	4798      	blx	r3
30005cb2:	b960      	cbnz	r0, 30005cce <flash_calibration_highspeed+0x52>
30005cb4:	4630      	mov	r0, r6
30005cb6:	4b10      	ldr	r3, [pc, #64]	; (30005cf8 <flash_calibration_highspeed+0x7c>)
30005cb8:	4798      	blx	r3
30005cba:	2004      	movs	r0, #4
30005cbc:	4b0f      	ldr	r3, [pc, #60]	; (30005cfc <flash_calibration_highspeed+0x80>)
30005cbe:	2249      	movs	r2, #73	; 0x49
30005cc0:	490f      	ldr	r1, [pc, #60]	; (30005d00 <flash_calibration_highspeed+0x84>)
30005cc2:	9400      	str	r4, [sp, #0]
30005cc4:	f003 fb2a 	bl	3000931c <rtk_log_write>
30005cc8:	2000      	movs	r0, #0
30005cca:	b002      	add	sp, #8
30005ccc:	bd70      	pop	{r4, r5, r6, pc}
30005cce:	4630      	mov	r0, r6
30005cd0:	4b0c      	ldr	r3, [pc, #48]	; (30005d04 <flash_calibration_highspeed+0x88>)
30005cd2:	4798      	blx	r3
30005cd4:	e7f1      	b.n	30005cba <flash_calibration_highspeed+0x3e>
30005cd6:	2001      	movs	r0, #1
30005cd8:	4b0b      	ldr	r3, [pc, #44]	; (30005d08 <flash_calibration_highspeed+0x8c>)
30005cda:	4798      	blx	r3
30005cdc:	2002      	movs	r0, #2
30005cde:	4b0b      	ldr	r3, [pc, #44]	; (30005d0c <flash_calibration_highspeed+0x90>)
30005ce0:	2245      	movs	r2, #69	; 0x45
30005ce2:	4907      	ldr	r1, [pc, #28]	; (30005d00 <flash_calibration_highspeed+0x84>)
30005ce4:	9400      	str	r4, [sp, #0]
30005ce6:	f003 fb19 	bl	3000931c <rtk_log_write>
30005cea:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
30005cee:	e7ec      	b.n	30005cca <flash_calibration_highspeed+0x4e>
30005cf0:	2001c01c 	.word	0x2001c01c
30005cf4:	3000a4e1 	.word	0x3000a4e1
30005cf8:	0000c045 	.word	0x0000c045
30005cfc:	3000be6c 	.word	0x3000be6c
30005d00:	3000c078 	.word	0x3000c078
30005d04:	0000a53d 	.word	0x0000a53d
30005d08:	0000b569 	.word	0x0000b569
30005d0c:	3000be84 	.word	0x3000be84

30005d10 <flash_rx_mode_switch>:
30005d10:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30005d14:	2300      	movs	r3, #0
30005d16:	b08b      	sub	sp, #44	; 0x2c
30005d18:	4d51      	ldr	r5, [pc, #324]	; (30005e60 <flash_rx_mode_switch+0x150>)
30005d1a:	4606      	mov	r6, r0
30005d1c:	ac05      	add	r4, sp, #20
30005d1e:	f88d 300b 	strb.w	r3, [sp, #11]
30005d22:	2e04      	cmp	r6, #4
30005d24:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
30005d26:	c40f      	stmia	r4!, {r0, r1, r2, r3}
30005d28:	682b      	ldr	r3, [r5, #0]
30005d2a:	6023      	str	r3, [r4, #0]
30005d2c:	d877      	bhi.n	30005e1e <flash_rx_mode_switch+0x10e>
30005d2e:	b270      	sxtb	r0, r6
30005d30:	ab05      	add	r3, sp, #20
30005d32:	4f4c      	ldr	r7, [pc, #304]	; (30005e64 <flash_rx_mode_switch+0x154>)
30005d34:	f1c0 0404 	rsb	r4, r0, #4
30005d38:	f1c0 0022 	rsb	r0, r0, #34	; 0x22
30005d3c:	f8df b150 	ldr.w	fp, [pc, #336]	; 30005e90 <flash_rx_mode_switch+0x180>
30005d40:	fa4f f884 	sxtb.w	r8, r4
30005d44:	fa47 f580 	sxtab	r5, r7, r0
30005d48:	b2e4      	uxtb	r4, r4
30005d4a:	f8df a148 	ldr.w	sl, [pc, #328]	; 30005e94 <flash_rx_mode_switch+0x184>
30005d4e:	eb03 0888 	add.w	r8, r3, r8, lsl #2
30005d52:	f8df 9144 	ldr.w	r9, [pc, #324]	; 30005e98 <flash_rx_mode_switch+0x188>
30005d56:	e033      	b.n	30005dc0 <flash_rx_mode_switch+0xb0>
30005d58:	2c04      	cmp	r4, #4
30005d5a:	d039      	beq.n	30005dd0 <flash_rx_mode_switch+0xc0>
30005d5c:	2c02      	cmp	r4, #2
30005d5e:	d037      	beq.n	30005dd0 <flash_rx_mode_switch+0xc0>
30005d60:	683b      	ldr	r3, [r7, #0]
30005d62:	2b03      	cmp	r3, #3
30005d64:	d03a      	beq.n	30005ddc <flash_rx_mode_switch+0xcc>
30005d66:	2300      	movs	r3, #0
30005d68:	4620      	mov	r0, r4
30005d6a:	777b      	strb	r3, [r7, #29]
30005d6c:	4b3e      	ldr	r3, [pc, #248]	; (30005e68 <flash_rx_mode_switch+0x158>)
30005d6e:	4798      	blx	r3
30005d70:	4b3e      	ldr	r3, [pc, #248]	; (30005e6c <flash_rx_mode_switch+0x15c>)
30005d72:	695a      	ldr	r2, [r3, #20]
30005d74:	03d2      	lsls	r2, r2, #15
30005d76:	d509      	bpl.n	30005d8c <flash_rx_mode_switch+0x7c>
30005d78:	f3bf 8f4f 	dsb	sy
30005d7c:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
30005d80:	f8c3 225c 	str.w	r2, [r3, #604]	; 0x25c
30005d84:	f3bf 8f4f 	dsb	sy
30005d88:	f3bf 8f6f 	isb	sy
30005d8c:	47d0      	blx	sl
30005d8e:	f04f 6300 	mov.w	r3, #134217728	; 0x8000000
30005d92:	4937      	ldr	r1, [pc, #220]	; (30005e70 <flash_rx_mode_switch+0x160>)
30005d94:	a803      	add	r0, sp, #12
30005d96:	681a      	ldr	r2, [r3, #0]
30005d98:	9203      	str	r2, [sp, #12]
30005d9a:	2208      	movs	r2, #8
30005d9c:	685b      	ldr	r3, [r3, #4]
30005d9e:	9304      	str	r3, [sp, #16]
30005da0:	47c8      	blx	r9
30005da2:	2800      	cmp	r0, #0
30005da4:	d042      	beq.n	30005e2c <flash_rx_mode_switch+0x11c>
30005da6:	f897 3060 	ldrb.w	r3, [r7, #96]	; 0x60
30005daa:	bb6b      	cbnz	r3, 30005e08 <flash_rx_mode_switch+0xf8>
30005dac:	1e62      	subs	r2, r4, #1
30005dae:	f1c4 0305 	rsb	r3, r4, #5
30005db2:	f1a8 0804 	sub.w	r8, r8, #4
30005db6:	3d01      	subs	r5, #1
30005db8:	b2d4      	uxtb	r4, r2
30005dba:	b2db      	uxtb	r3, r3
30005dbc:	2cff      	cmp	r4, #255	; 0xff
30005dbe:	d02d      	beq.n	30005e1c <flash_rx_mode_switch+0x10c>
30005dc0:	47d8      	blx	fp
30005dc2:	2800      	cmp	r0, #0
30005dc4:	d1c8      	bne.n	30005d58 <flash_rx_mode_switch+0x48>
30005dc6:	7778      	strb	r0, [r7, #29]
30005dc8:	4620      	mov	r0, r4
30005dca:	4b2a      	ldr	r3, [pc, #168]	; (30005e74 <flash_rx_mode_switch+0x164>)
30005dcc:	4798      	blx	r3
30005dce:	e7cf      	b.n	30005d70 <flash_rx_mode_switch+0x60>
30005dd0:	2301      	movs	r3, #1
30005dd2:	f887 3063 	strb.w	r3, [r7, #99]	; 0x63
30005dd6:	683b      	ldr	r3, [r7, #0]
30005dd8:	2b03      	cmp	r3, #3
30005dda:	d1c4      	bne.n	30005d66 <flash_rx_mode_switch+0x56>
30005ddc:	f10d 020b 	add.w	r2, sp, #11
30005de0:	2101      	movs	r1, #1
30005de2:	2085      	movs	r0, #133	; 0x85
30005de4:	4b24      	ldr	r3, [pc, #144]	; (30005e78 <flash_rx_mode_switch+0x168>)
30005de6:	4798      	blx	r3
30005de8:	f89d 300b 	ldrb.w	r3, [sp, #11]
30005dec:	7829      	ldrb	r1, [r5, #0]
30005dee:	f10d 020b 	add.w	r2, sp, #11
30005df2:	f003 030f 	and.w	r3, r3, #15
30005df6:	2081      	movs	r0, #129	; 0x81
30005df8:	ea43 1301 	orr.w	r3, r3, r1, lsl #4
30005dfc:	2101      	movs	r1, #1
30005dfe:	f88d 300b 	strb.w	r3, [sp, #11]
30005e02:	4b1e      	ldr	r3, [pc, #120]	; (30005e7c <flash_rx_mode_switch+0x16c>)
30005e04:	4798      	blx	r3
30005e06:	e7ae      	b.n	30005d66 <flash_rx_mode_switch+0x56>
30005e08:	f8d8 3000 	ldr.w	r3, [r8]
30005e0c:	2249      	movs	r2, #73	; 0x49
30005e0e:	491c      	ldr	r1, [pc, #112]	; (30005e80 <flash_rx_mode_switch+0x170>)
30005e10:	2004      	movs	r0, #4
30005e12:	9300      	str	r3, [sp, #0]
30005e14:	4b1b      	ldr	r3, [pc, #108]	; (30005e84 <flash_rx_mode_switch+0x174>)
30005e16:	f003 fa81 	bl	3000931c <rtk_log_write>
30005e1a:	e7c7      	b.n	30005dac <flash_rx_mode_switch+0x9c>
30005e1c:	461e      	mov	r6, r3
30005e1e:	2e05      	cmp	r6, #5
30005e20:	d015      	beq.n	30005e4e <flash_rx_mode_switch+0x13e>
30005e22:	2600      	movs	r6, #0
30005e24:	4630      	mov	r0, r6
30005e26:	b00b      	add	sp, #44	; 0x2c
30005e28:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30005e2c:	ab0a      	add	r3, sp, #40	; 0x28
30005e2e:	4606      	mov	r6, r0
30005e30:	2249      	movs	r2, #73	; 0x49
30005e32:	4913      	ldr	r1, [pc, #76]	; (30005e80 <flash_rx_mode_switch+0x170>)
30005e34:	eb03 0484 	add.w	r4, r3, r4, lsl #2
30005e38:	4b13      	ldr	r3, [pc, #76]	; (30005e88 <flash_rx_mode_switch+0x178>)
30005e3a:	f854 0c14 	ldr.w	r0, [r4, #-20]
30005e3e:	9000      	str	r0, [sp, #0]
30005e40:	2004      	movs	r0, #4
30005e42:	f003 fa6b 	bl	3000931c <rtk_log_write>
30005e46:	4630      	mov	r0, r6
30005e48:	b00b      	add	sp, #44	; 0x2c
30005e4a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30005e4e:	4b0f      	ldr	r3, [pc, #60]	; (30005e8c <flash_rx_mode_switch+0x17c>)
30005e50:	2245      	movs	r2, #69	; 0x45
30005e52:	490b      	ldr	r1, [pc, #44]	; (30005e80 <flash_rx_mode_switch+0x170>)
30005e54:	2002      	movs	r0, #2
30005e56:	f04f 36ff 	mov.w	r6, #4294967295	; 0xffffffff
30005e5a:	f003 fa5f 	bl	3000931c <rtk_log_write>
30005e5e:	e7e1      	b.n	30005e24 <flash_rx_mode_switch+0x114>
30005e60:	3000c04c 	.word	0x3000c04c
30005e64:	2001c01c 	.word	0x2001c01c
30005e68:	0000a53d 	.word	0x0000a53d
30005e6c:	e000ed00 	.word	0xe000ed00
30005e70:	00054060 	.word	0x00054060
30005e74:	0000c045 	.word	0x0000c045
30005e78:	00009db5 	.word	0x00009db5
30005e7c:	0000a149 	.word	0x0000a149
30005e80:	3000c078 	.word	0x3000c078
30005e84:	3000beac 	.word	0x3000beac
30005e88:	3000be9c 	.word	0x3000be9c
30005e8c:	3000bec4 	.word	0x3000bec4
30005e90:	3000a4e1 	.word	0x3000a4e1
30005e94:	3000a36d 	.word	0x3000a36d
30005e98:	000129bd 	.word	0x000129bd

30005e9c <flash_highspeed_setup>:
30005e9c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
30005ea0:	4b87      	ldr	r3, [pc, #540]	; (300060c0 <flash_highspeed_setup+0x224>)
30005ea2:	b087      	sub	sp, #28
30005ea4:	4798      	blx	r3
30005ea6:	4a87      	ldr	r2, [pc, #540]	; (300060c4 <flash_highspeed_setup+0x228>)
30005ea8:	2400      	movs	r4, #0
30005eaa:	f44f 4300 	mov.w	r3, #32768	; 0x8000
30005eae:	8812      	ldrh	r2, [r2, #0]
30005eb0:	421a      	tst	r2, r3
30005eb2:	d104      	bne.n	30005ebe <flash_highspeed_setup+0x22>
30005eb4:	3401      	adds	r4, #1
30005eb6:	085b      	lsrs	r3, r3, #1
30005eb8:	b2e4      	uxtb	r4, r4
30005eba:	2c10      	cmp	r4, #16
30005ebc:	d1f8      	bne.n	30005eb0 <flash_highspeed_setup+0x14>
30005ebe:	4982      	ldr	r1, [pc, #520]	; (300060c8 <flash_highspeed_setup+0x22c>)
30005ec0:	2300      	movs	r3, #0
30005ec2:	f44f 4200 	mov.w	r2, #32768	; 0x8000
30005ec6:	8809      	ldrh	r1, [r1, #0]
30005ec8:	4211      	tst	r1, r2
30005eca:	d104      	bne.n	30005ed6 <flash_highspeed_setup+0x3a>
30005ecc:	3301      	adds	r3, #1
30005ece:	0852      	lsrs	r2, r2, #1
30005ed0:	b2db      	uxtb	r3, r3
30005ed2:	2b10      	cmp	r3, #16
30005ed4:	d1f8      	bne.n	30005ec8 <flash_highspeed_setup+0x2c>
30005ed6:	2b06      	cmp	r3, #6
30005ed8:	497c      	ldr	r1, [pc, #496]	; (300060cc <flash_highspeed_setup+0x230>)
30005eda:	4d7d      	ldr	r5, [pc, #500]	; (300060d0 <flash_highspeed_setup+0x234>)
30005edc:	bf28      	it	cs
30005ede:	2306      	movcs	r3, #6
30005ee0:	4401      	add	r1, r0
30005ee2:	f1c3 0209 	rsb	r2, r3, #9
30005ee6:	fba5 3501 	umull	r3, r5, r5, r1
30005eea:	4b7a      	ldr	r3, [pc, #488]	; (300060d4 <flash_highspeed_setup+0x238>)
30005eec:	0eed      	lsrs	r5, r5, #27
30005eee:	497a      	ldr	r1, [pc, #488]	; (300060d8 <flash_highspeed_setup+0x23c>)
30005ef0:	b2d2      	uxtb	r2, r2
30005ef2:	3d01      	subs	r5, #1
30005ef4:	b2ed      	uxtb	r5, r5
30005ef6:	4295      	cmp	r5, r2
30005ef8:	bf38      	it	cc
30005efa:	4615      	movcc	r5, r2
30005efc:	1c6a      	adds	r2, r5, #1
30005efe:	fbb0 f0f2 	udiv	r0, r0, r2
30005f02:	2249      	movs	r2, #73	; 0x49
30005f04:	9000      	str	r0, [sp, #0]
30005f06:	2004      	movs	r0, #4
30005f08:	f003 fa08 	bl	3000931c <rtk_log_write>
30005f0c:	b672      	cpsid	i
30005f0e:	f04f 4288 	mov.w	r2, #1140850688	; 0x44000000
30005f12:	f8df 91fc 	ldr.w	r9, [pc, #508]	; 30006110 <flash_highspeed_setup+0x274>
30005f16:	4e71      	ldr	r6, [pc, #452]	; (300060dc <flash_highspeed_setup+0x240>)
30005f18:	6813      	ldr	r3, [r2, #0]
30005f1a:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
30005f1e:	6013      	str	r3, [r2, #0]
30005f20:	47c8      	blx	r9
30005f22:	2800      	cmp	r0, #0
30005f24:	d05c      	beq.n	30005fe0 <flash_highspeed_setup+0x144>
30005f26:	2103      	movs	r1, #3
30005f28:	aa05      	add	r2, sp, #20
30005f2a:	f896 0055 	ldrb.w	r0, [r6, #85]	; 0x55
30005f2e:	4f6c      	ldr	r7, [pc, #432]	; (300060e0 <flash_highspeed_setup+0x244>)
30005f30:	47b8      	blx	r7
30005f32:	f89d 3016 	ldrb.w	r3, [sp, #22]
30005f36:	2201      	movs	r2, #1
30005f38:	4967      	ldr	r1, [pc, #412]	; (300060d8 <flash_highspeed_setup+0x23c>)
30005f3a:	9302      	str	r3, [sp, #8]
30005f3c:	3b11      	subs	r3, #17
30005f3e:	2004      	movs	r0, #4
30005f40:	fa02 f303 	lsl.w	r3, r2, r3
30005f44:	2249      	movs	r2, #73	; 0x49
30005f46:	9303      	str	r3, [sp, #12]
30005f48:	f89d 3015 	ldrb.w	r3, [sp, #21]
30005f4c:	9301      	str	r3, [sp, #4]
30005f4e:	f89d 3014 	ldrb.w	r3, [sp, #20]
30005f52:	9300      	str	r3, [sp, #0]
30005f54:	4b63      	ldr	r3, [pc, #396]	; (300060e4 <flash_highspeed_setup+0x248>)
30005f56:	f003 f9e1 	bl	3000931c <rtk_log_write>
30005f5a:	f89d 8015 	ldrb.w	r8, [sp, #21]
30005f5e:	f89d 3016 	ldrb.w	r3, [sp, #22]
30005f62:	ea4f 2808 	mov.w	r8, r8, lsl #8
30005f66:	ea48 4803 	orr.w	r8, r8, r3, lsl #16
30005f6a:	f89d 3014 	ldrb.w	r3, [sp, #20]
30005f6e:	ea48 0803 	orr.w	r8, r8, r3
30005f72:	47c8      	blx	r9
30005f74:	4a5c      	ldr	r2, [pc, #368]	; (300060e8 <flash_highspeed_setup+0x24c>)
30005f76:	4b5d      	ldr	r3, [pc, #372]	; (300060ec <flash_highspeed_setup+0x250>)
30005f78:	2800      	cmp	r0, #0
30005f7a:	bf08      	it	eq
30005f7c:	4613      	moveq	r3, r2
30005f7e:	7a1a      	ldrb	r2, [r3, #8]
30005f80:	2aff      	cmp	r2, #255	; 0xff
30005f82:	d111      	bne.n	30005fa8 <flash_highspeed_setup+0x10c>
30005f84:	4b5a      	ldr	r3, [pc, #360]	; (300060f0 <flash_highspeed_setup+0x254>)
30005f86:	2200      	movs	r2, #0
30005f88:	601a      	str	r2, [r3, #0]
30005f8a:	4953      	ldr	r1, [pc, #332]	; (300060d8 <flash_highspeed_setup+0x23c>)
30005f8c:	2003      	movs	r0, #3
30005f8e:	4b59      	ldr	r3, [pc, #356]	; (300060f4 <flash_highspeed_setup+0x258>)
30005f90:	2257      	movs	r2, #87	; 0x57
30005f92:	f003 f9c3 	bl	3000931c <rtk_log_write>
30005f96:	f240 212e 	movw	r1, #558	; 0x22e
30005f9a:	4857      	ldr	r0, [pc, #348]	; (300060f8 <flash_highspeed_setup+0x25c>)
30005f9c:	f004 ffa2 	bl	3000aee4 <io_assert_failed>
30005fa0:	7f1a      	ldrb	r2, [r3, #28]
30005fa2:	3314      	adds	r3, #20
30005fa4:	2aff      	cmp	r2, #255	; 0xff
30005fa6:	d0ed      	beq.n	30005f84 <flash_highspeed_setup+0xe8>
30005fa8:	e9d3 1200 	ldrd	r1, r2, [r3]
30005fac:	ea08 0202 	and.w	r2, r8, r2
30005fb0:	428a      	cmp	r2, r1
30005fb2:	d1f5      	bne.n	30005fa0 <flash_highspeed_setup+0x104>
30005fb4:	f8df 8138 	ldr.w	r8, [pc, #312]	; 300060f0 <flash_highspeed_setup+0x254>
30005fb8:	f8c8 3000 	str.w	r3, [r8]
30005fbc:	2b00      	cmp	r3, #0
30005fbe:	d0e4      	beq.n	30005f8a <flash_highspeed_setup+0xee>
30005fc0:	7a1a      	ldrb	r2, [r3, #8]
30005fc2:	2a05      	cmp	r2, #5
30005fc4:	f200 80a6 	bhi.w	30006114 <flash_highspeed_setup+0x278>
30005fc8:	3a01      	subs	r2, #1
30005fca:	4844      	ldr	r0, [pc, #272]	; (300060dc <flash_highspeed_setup+0x240>)
30005fcc:	2a04      	cmp	r2, #4
30005fce:	f200 8152 	bhi.w	30006276 <flash_highspeed_setup+0x3da>
30005fd2:	e8df f012 	tbh	[pc, r2, lsl #1]
30005fd6:	0107      	.short	0x0107
30005fd8:	00ff0104 	.word	0x00ff0104
30005fdc:	00f600fc 	.word	0x00f600fc
30005fe0:	ab05      	add	r3, sp, #20
30005fe2:	4602      	mov	r2, r0
30005fe4:	4601      	mov	r1, r0
30005fe6:	4f45      	ldr	r7, [pc, #276]	; (300060fc <flash_highspeed_setup+0x260>)
30005fe8:	9300      	str	r3, [sp, #0]
30005fea:	2302      	movs	r3, #2
30005fec:	f896 0055 	ldrb.w	r0, [r6, #85]	; 0x55
30005ff0:	47b8      	blx	r7
30005ff2:	f89d 3015 	ldrb.w	r3, [sp, #21]
30005ff6:	2249      	movs	r2, #73	; 0x49
30005ff8:	4937      	ldr	r1, [pc, #220]	; (300060d8 <flash_highspeed_setup+0x23c>)
30005ffa:	9301      	str	r3, [sp, #4]
30005ffc:	2004      	movs	r0, #4
30005ffe:	f89d 3014 	ldrb.w	r3, [sp, #20]
30006002:	9300      	str	r3, [sp, #0]
30006004:	4b3e      	ldr	r3, [pc, #248]	; (30006100 <flash_highspeed_setup+0x264>)
30006006:	f003 f989 	bl	3000931c <rtk_log_write>
3000600a:	f89d 7015 	ldrb.w	r7, [sp, #21]
3000600e:	f89d 3016 	ldrb.w	r3, [sp, #22]
30006012:	023f      	lsls	r7, r7, #8
30006014:	ea47 4703 	orr.w	r7, r7, r3, lsl #16
30006018:	f89d 3014 	ldrb.w	r3, [sp, #20]
3000601c:	431f      	orrs	r7, r3
3000601e:	47c8      	blx	r9
30006020:	4a31      	ldr	r2, [pc, #196]	; (300060e8 <flash_highspeed_setup+0x24c>)
30006022:	4b32      	ldr	r3, [pc, #200]	; (300060ec <flash_highspeed_setup+0x250>)
30006024:	2800      	cmp	r0, #0
30006026:	bf08      	it	eq
30006028:	4613      	moveq	r3, r2
3000602a:	7a1a      	ldrb	r2, [r3, #8]
3000602c:	2aff      	cmp	r2, #255	; 0xff
3000602e:	d111      	bne.n	30006054 <flash_highspeed_setup+0x1b8>
30006030:	4b2f      	ldr	r3, [pc, #188]	; (300060f0 <flash_highspeed_setup+0x254>)
30006032:	2200      	movs	r2, #0
30006034:	601a      	str	r2, [r3, #0]
30006036:	4928      	ldr	r1, [pc, #160]	; (300060d8 <flash_highspeed_setup+0x23c>)
30006038:	2003      	movs	r0, #3
3000603a:	4b2e      	ldr	r3, [pc, #184]	; (300060f4 <flash_highspeed_setup+0x258>)
3000603c:	2257      	movs	r2, #87	; 0x57
3000603e:	f003 f96d 	bl	3000931c <rtk_log_write>
30006042:	f240 216e 	movw	r1, #622	; 0x26e
30006046:	482c      	ldr	r0, [pc, #176]	; (300060f8 <flash_highspeed_setup+0x25c>)
30006048:	f004 ff4c 	bl	3000aee4 <io_assert_failed>
3000604c:	7f1a      	ldrb	r2, [r3, #28]
3000604e:	3314      	adds	r3, #20
30006050:	2aff      	cmp	r2, #255	; 0xff
30006052:	d0ed      	beq.n	30006030 <flash_highspeed_setup+0x194>
30006054:	e9d3 1200 	ldrd	r1, r2, [r3]
30006058:	403a      	ands	r2, r7
3000605a:	428a      	cmp	r2, r1
3000605c:	d1f6      	bne.n	3000604c <flash_highspeed_setup+0x1b0>
3000605e:	4a24      	ldr	r2, [pc, #144]	; (300060f0 <flash_highspeed_setup+0x254>)
30006060:	6013      	str	r3, [r2, #0]
30006062:	2b00      	cmp	r3, #0
30006064:	d0e7      	beq.n	30006036 <flash_highspeed_setup+0x19a>
30006066:	7a1a      	ldrb	r2, [r3, #8]
30006068:	2a04      	cmp	r2, #4
3000606a:	d821      	bhi.n	300060b0 <flash_highspeed_setup+0x214>
3000606c:	2a04      	cmp	r2, #4
3000606e:	d807      	bhi.n	30006080 <flash_highspeed_setup+0x1e4>
30006070:	e8df f002 	tbb	[pc, r2]
30006074:	069fa303 	.word	0x069fa303
30006078:	9b          	.byte	0x9b
30006079:	00          	.byte	0x00
3000607a:	4818      	ldr	r0, [pc, #96]	; (300060dc <flash_highspeed_setup+0x240>)
3000607c:	4b21      	ldr	r3, [pc, #132]	; (30006104 <flash_highspeed_setup+0x268>)
3000607e:	4798      	blx	r3
30006080:	68f3      	ldr	r3, [r6, #12]
30006082:	2b00      	cmp	r3, #0
30006084:	f040 80c0 	bne.w	30006208 <flash_highspeed_setup+0x36c>
30006088:	4e1f      	ldr	r6, [pc, #124]	; (30006108 <flash_highspeed_setup+0x26c>)
3000608a:	20a0      	movs	r0, #160	; 0xa0
3000608c:	47b0      	blx	r6
3000608e:	2800      	cmp	r0, #0
30006090:	f040 80b2 	bne.w	300061f8 <flash_highspeed_setup+0x35c>
30006094:	4620      	mov	r0, r4
30006096:	f7ff fe3b 	bl	30005d10 <flash_rx_mode_switch>
3000609a:	4b1c      	ldr	r3, [pc, #112]	; (3000610c <flash_highspeed_setup+0x270>)
3000609c:	4798      	blx	r3
3000609e:	2801      	cmp	r0, #1
300060a0:	d002      	beq.n	300060a8 <flash_highspeed_setup+0x20c>
300060a2:	4628      	mov	r0, r5
300060a4:	f7ff fdea 	bl	30005c7c <flash_calibration_highspeed>
300060a8:	b662      	cpsie	i
300060aa:	b007      	add	sp, #28
300060ac:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
300060b0:	2afe      	cmp	r2, #254	; 0xfe
300060b2:	d1e5      	bne.n	30006080 <flash_highspeed_setup+0x1e4>
300060b4:	691b      	ldr	r3, [r3, #16]
300060b6:	2b00      	cmp	r3, #0
300060b8:	f000 80d3 	beq.w	30006262 <flash_highspeed_setup+0x3c6>
300060bc:	4798      	blx	r3
300060be:	e7df      	b.n	30006080 <flash_highspeed_setup+0x1e4>
300060c0:	30008e21 	.word	0x30008e21
300060c4:	3000c910 	.word	0x3000c910
300060c8:	3000c912 	.word	0x3000c912
300060cc:	0c65d3ff 	.word	0x0c65d3ff
300060d0:	a530e8a5 	.word	0xa530e8a5
300060d4:	3000bee4 	.word	0x3000bee4
300060d8:	3000c078 	.word	0x3000c078
300060dc:	2001c01c 	.word	0x2001c01c
300060e0:	00009db5 	.word	0x00009db5
300060e4:	3000bef8 	.word	0x3000bef8
300060e8:	3000c914 	.word	0x3000c914
300060ec:	3000c7f8 	.word	0x3000c7f8
300060f0:	3000e97c 	.word	0x3000e97c
300060f4:	3000bf20 	.word	0x3000bf20
300060f8:	3000bf44 	.word	0x3000bf44
300060fc:	0000b8c1 	.word	0x0000b8c1
30006100:	3000c000 	.word	0x3000c000
30006104:	0000bfcd 	.word	0x0000bfcd
30006108:	0000b991 	.word	0x0000b991
3000610c:	0000c0f9 	.word	0x0000c0f9
30006110:	3000a4e1 	.word	0x3000a4e1
30006114:	2afe      	cmp	r2, #254	; 0xfe
30006116:	d104      	bne.n	30006122 <flash_highspeed_setup+0x286>
30006118:	691b      	ldr	r3, [r3, #16]
3000611a:	2b00      	cmp	r3, #0
3000611c:	f000 80a6 	beq.w	3000626c <flash_highspeed_setup+0x3d0>
30006120:	4798      	blx	r3
30006122:	4b56      	ldr	r3, [pc, #344]	; (3000627c <flash_highspeed_setup+0x3e0>)
30006124:	4798      	blx	r3
30006126:	b110      	cbz	r0, 3000612e <flash_highspeed_setup+0x292>
30006128:	2304      	movs	r3, #4
3000612a:	f886 3062 	strb.w	r3, [r6, #98]	; 0x62
3000612e:	68f2      	ldr	r2, [r6, #12]
30006130:	2101      	movs	r1, #1
30006132:	f8d8 3000 	ldr.w	r3, [r8]
30006136:	9204      	str	r2, [sp, #16]
30006138:	2200      	movs	r2, #0
3000613a:	f896 0056 	ldrb.w	r0, [r6, #86]	; 0x56
3000613e:	9205      	str	r2, [sp, #20]
30006140:	aa05      	add	r2, sp, #20
30006142:	f8d3 800c 	ldr.w	r8, [r3, #12]
30006146:	47b8      	blx	r7
30006148:	69b3      	ldr	r3, [r6, #24]
3000614a:	2b00      	cmp	r3, #0
3000614c:	d169      	bne.n	30006222 <flash_highspeed_setup+0x386>
3000614e:	4b4c      	ldr	r3, [pc, #304]	; (30006280 <flash_highspeed_setup+0x3e4>)
30006150:	781b      	ldrb	r3, [r3, #0]
30006152:	2b00      	cmp	r3, #0
30006154:	d16d      	bne.n	30006232 <flash_highspeed_setup+0x396>
30006156:	2701      	movs	r7, #1
30006158:	9b05      	ldr	r3, [sp, #20]
3000615a:	a805      	add	r0, sp, #20
3000615c:	463a      	mov	r2, r7
3000615e:	a904      	add	r1, sp, #16
30006160:	ea03 0308 	and.w	r3, r3, r8
30006164:	9305      	str	r3, [sp, #20]
30006166:	4b47      	ldr	r3, [pc, #284]	; (30006284 <flash_highspeed_setup+0x3e8>)
30006168:	4798      	blx	r3
3000616a:	2800      	cmp	r0, #0
3000616c:	d092      	beq.n	30006094 <flash_highspeed_setup+0x1f8>
3000616e:	f896 3059 	ldrb.w	r3, [r6, #89]	; 0x59
30006172:	aa04      	add	r2, sp, #16
30006174:	f896 0058 	ldrb.w	r0, [r6, #88]	; 0x58
30006178:	b19b      	cbz	r3, 300061a2 <flash_highspeed_setup+0x306>
3000617a:	2101      	movs	r1, #1
3000617c:	4f42      	ldr	r7, [pc, #264]	; (30006288 <flash_highspeed_setup+0x3ec>)
3000617e:	47b8      	blx	r7
30006180:	f10d 0211 	add.w	r2, sp, #17
30006184:	f896 0059 	ldrb.w	r0, [r6, #89]	; 0x59
30006188:	2101      	movs	r1, #1
3000618a:	47b8      	blx	r7
3000618c:	4b3f      	ldr	r3, [pc, #252]	; (3000628c <flash_highspeed_setup+0x3f0>)
3000618e:	e9dd 1204 	ldrd	r1, r2, [sp, #16]
30006192:	e9cd 2100 	strd	r2, r1, [sp]
30006196:	2004      	movs	r0, #4
30006198:	2249      	movs	r2, #73	; 0x49
3000619a:	493d      	ldr	r1, [pc, #244]	; (30006290 <flash_highspeed_setup+0x3f4>)
3000619c:	f003 f8be 	bl	3000931c <rtk_log_write>
300061a0:	e778      	b.n	30006094 <flash_highspeed_setup+0x1f8>
300061a2:	4639      	mov	r1, r7
300061a4:	4b38      	ldr	r3, [pc, #224]	; (30006288 <flash_highspeed_setup+0x3ec>)
300061a6:	4798      	blx	r3
300061a8:	e7f0      	b.n	3000618c <flash_highspeed_setup+0x2f0>
300061aa:	483a      	ldr	r0, [pc, #232]	; (30006294 <flash_highspeed_setup+0x3f8>)
300061ac:	4b3a      	ldr	r3, [pc, #232]	; (30006298 <flash_highspeed_setup+0x3fc>)
300061ae:	4798      	blx	r3
300061b0:	e766      	b.n	30006080 <flash_highspeed_setup+0x1e4>
300061b2:	4838      	ldr	r0, [pc, #224]	; (30006294 <flash_highspeed_setup+0x3f8>)
300061b4:	4b39      	ldr	r3, [pc, #228]	; (3000629c <flash_highspeed_setup+0x400>)
300061b6:	4798      	blx	r3
300061b8:	e762      	b.n	30006080 <flash_highspeed_setup+0x1e4>
300061ba:	4836      	ldr	r0, [pc, #216]	; (30006294 <flash_highspeed_setup+0x3f8>)
300061bc:	4b38      	ldr	r3, [pc, #224]	; (300062a0 <flash_highspeed_setup+0x404>)
300061be:	4798      	blx	r3
300061c0:	e75e      	b.n	30006080 <flash_highspeed_setup+0x1e4>
300061c2:	4b38      	ldr	r3, [pc, #224]	; (300062a4 <flash_highspeed_setup+0x408>)
300061c4:	4798      	blx	r3
300061c6:	4b2e      	ldr	r3, [pc, #184]	; (30006280 <flash_highspeed_setup+0x3e4>)
300061c8:	2201      	movs	r2, #1
300061ca:	701a      	strb	r2, [r3, #0]
300061cc:	e7a9      	b.n	30006122 <flash_highspeed_setup+0x286>
300061ce:	4b36      	ldr	r3, [pc, #216]	; (300062a8 <flash_highspeed_setup+0x40c>)
300061d0:	4798      	blx	r3
300061d2:	e7a6      	b.n	30006122 <flash_highspeed_setup+0x286>
300061d4:	4b33      	ldr	r3, [pc, #204]	; (300062a4 <flash_highspeed_setup+0x408>)
300061d6:	4798      	blx	r3
300061d8:	2300      	movs	r3, #0
300061da:	60f3      	str	r3, [r6, #12]
300061dc:	e7a1      	b.n	30006122 <flash_highspeed_setup+0x286>
300061de:	4b31      	ldr	r3, [pc, #196]	; (300062a4 <flash_highspeed_setup+0x408>)
300061e0:	4798      	blx	r3
300061e2:	e79e      	b.n	30006122 <flash_highspeed_setup+0x286>
300061e4:	4b31      	ldr	r3, [pc, #196]	; (300062ac <flash_highspeed_setup+0x410>)
300061e6:	4798      	blx	r3
300061e8:	f89d 3014 	ldrb.w	r3, [sp, #20]
300061ec:	2bc8      	cmp	r3, #200	; 0xc8
300061ee:	d02b      	beq.n	30006248 <flash_highspeed_setup+0x3ac>
300061f0:	2331      	movs	r3, #49	; 0x31
300061f2:	f886 3059 	strb.w	r3, [r6, #89]	; 0x59
300061f6:	e794      	b.n	30006122 <flash_highspeed_setup+0x286>
300061f8:	2100      	movs	r1, #0
300061fa:	4b2d      	ldr	r3, [pc, #180]	; (300062b0 <flash_highspeed_setup+0x414>)
300061fc:	20a0      	movs	r0, #160	; 0xa0
300061fe:	4798      	blx	r3
30006200:	2100      	movs	r1, #0
30006202:	22a0      	movs	r2, #160	; 0xa0
30006204:	4b2b      	ldr	r3, [pc, #172]	; (300062b4 <flash_highspeed_setup+0x418>)
30006206:	e7c4      	b.n	30006192 <flash_highspeed_setup+0x2f6>
30006208:	20b0      	movs	r0, #176	; 0xb0
3000620a:	4e2b      	ldr	r6, [pc, #172]	; (300062b8 <flash_highspeed_setup+0x41c>)
3000620c:	47b0      	blx	r6
3000620e:	f040 0101 	orr.w	r1, r0, #1
30006212:	b2c9      	uxtb	r1, r1
30006214:	4281      	cmp	r1, r0
30006216:	f43f af38 	beq.w	3000608a <flash_highspeed_setup+0x1ee>
3000621a:	20b0      	movs	r0, #176	; 0xb0
3000621c:	4b24      	ldr	r3, [pc, #144]	; (300062b0 <flash_highspeed_setup+0x414>)
3000621e:	4798      	blx	r3
30006220:	e733      	b.n	3000608a <flash_highspeed_setup+0x1ee>
30006222:	f10d 0215 	add.w	r2, sp, #21
30006226:	2101      	movs	r1, #1
30006228:	f896 0057 	ldrb.w	r0, [r6, #87]	; 0x57
3000622c:	47b8      	blx	r7
3000622e:	2702      	movs	r7, #2
30006230:	e792      	b.n	30006158 <flash_highspeed_setup+0x2bc>
30006232:	f10d 0215 	add.w	r2, sp, #21
30006236:	2102      	movs	r1, #2
30006238:	2015      	movs	r0, #21
3000623a:	47b8      	blx	r7
3000623c:	9b04      	ldr	r3, [sp, #16]
3000623e:	2703      	movs	r7, #3
30006240:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
30006244:	9304      	str	r3, [sp, #16]
30006246:	e787      	b.n	30006158 <flash_highspeed_setup+0x2bc>
30006248:	f89d 3015 	ldrb.w	r3, [sp, #21]
3000624c:	2b40      	cmp	r3, #64	; 0x40
3000624e:	d002      	beq.n	30006256 <flash_highspeed_setup+0x3ba>
30006250:	2b65      	cmp	r3, #101	; 0x65
30006252:	f47f af66 	bne.w	30006122 <flash_highspeed_setup+0x286>
30006256:	f89d 3016 	ldrb.w	r3, [sp, #22]
3000625a:	2b15      	cmp	r3, #21
3000625c:	f67f af61 	bls.w	30006122 <flash_highspeed_setup+0x286>
30006260:	e7c6      	b.n	300061f0 <flash_highspeed_setup+0x354>
30006262:	f44f 7120 	mov.w	r1, #640	; 0x280
30006266:	4815      	ldr	r0, [pc, #84]	; (300062bc <flash_highspeed_setup+0x420>)
30006268:	f004 fe3c 	bl	3000aee4 <io_assert_failed>
3000626c:	f44f 7115 	mov.w	r1, #596	; 0x254
30006270:	4812      	ldr	r0, [pc, #72]	; (300062bc <flash_highspeed_setup+0x420>)
30006272:	f004 fe37 	bl	3000aee4 <io_assert_failed>
30006276:	4b12      	ldr	r3, [pc, #72]	; (300062c0 <flash_highspeed_setup+0x424>)
30006278:	4798      	blx	r3
3000627a:	e752      	b.n	30006122 <flash_highspeed_setup+0x286>
3000627c:	0000c1d9 	.word	0x0000c1d9
30006280:	3000e978 	.word	0x3000e978
30006284:	000129bd 	.word	0x000129bd
30006288:	0000a149 	.word	0x0000a149
3000628c:	3000bfd4 	.word	0x3000bfd4
30006290:	3000c078 	.word	0x3000c078
30006294:	2001c01c 	.word	0x2001c01c
30006298:	0000be71 	.word	0x0000be71
3000629c:	0000bee9 	.word	0x0000bee9
300062a0:	0000bf59 	.word	0x0000bf59
300062a4:	0000a3c5 	.word	0x0000a3c5
300062a8:	0000a345 	.word	0x0000a345
300062ac:	0000a441 	.word	0x0000a441
300062b0:	0000bd0d 	.word	0x0000bd0d
300062b4:	3000c010 	.word	0x3000c010
300062b8:	0000b991 	.word	0x0000b991
300062bc:	3000bf44 	.word	0x3000bf44
300062c0:	0000a4c1 	.word	0x0000a4c1

300062c4 <NAND_CHECK_IS_BAD_BLOCK>:
300062c4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
300062c8:	4e24      	ldr	r6, [pc, #144]	; (3000635c <NAND_CHECK_IS_BAD_BLOCK+0x98>)
300062ca:	0907      	lsrs	r7, r0, #4
300062cc:	0045      	lsls	r5, r0, #1
300062ce:	b085      	sub	sp, #20
300062d0:	f856 3027 	ldr.w	r3, [r6, r7, lsl #2]
300062d4:	f005 051e 	and.w	r5, r5, #30
300062d8:	40eb      	lsrs	r3, r5
300062da:	f003 0303 	and.w	r3, r3, #3
300062de:	2b02      	cmp	r3, #2
300062e0:	d02c      	beq.n	3000633c <NAND_CHECK_IS_BAD_BLOCK+0x78>
300062e2:	2b01      	cmp	r3, #1
300062e4:	d026      	beq.n	30006334 <NAND_CHECK_IS_BAD_BLOCK+0x70>
300062e6:	4b1e      	ldr	r3, [pc, #120]	; (30006360 <NAND_CHECK_IS_BAD_BLOCK+0x9c>)
300062e8:	f04f 0801 	mov.w	r8, #1
300062ec:	2204      	movs	r2, #4
300062ee:	4604      	mov	r4, r0
300062f0:	f893 106c 	ldrb.w	r1, [r3, #108]	; 0x6c
300062f4:	0180      	lsls	r0, r0, #6
300062f6:	ab03      	add	r3, sp, #12
300062f8:	f8df 9070 	ldr.w	r9, [pc, #112]	; 3000636c <NAND_CHECK_IS_BAD_BLOCK+0xa8>
300062fc:	fa08 f101 	lsl.w	r1, r8, r1
30006300:	47c8      	blx	r9
30006302:	f89d 300c 	ldrb.w	r3, [sp, #12]
30006306:	f89d 200d 	ldrb.w	r2, [sp, #13]
3000630a:	4013      	ands	r3, r2
3000630c:	2bff      	cmp	r3, #255	; 0xff
3000630e:	d019      	beq.n	30006344 <NAND_CHECK_IS_BAD_BLOCK+0x80>
30006310:	2002      	movs	r0, #2
30006312:	f856 2027 	ldr.w	r2, [r6, r7, lsl #2]
30006316:	4b13      	ldr	r3, [pc, #76]	; (30006364 <NAND_CHECK_IS_BAD_BLOCK+0xa0>)
30006318:	fa00 f505 	lsl.w	r5, r0, r5
3000631c:	4912      	ldr	r1, [pc, #72]	; (30006368 <NAND_CHECK_IS_BAD_BLOCK+0xa4>)
3000631e:	9400      	str	r4, [sp, #0]
30006320:	432a      	orrs	r2, r5
30006322:	f846 2027 	str.w	r2, [r6, r7, lsl #2]
30006326:	2245      	movs	r2, #69	; 0x45
30006328:	f002 fff8 	bl	3000931c <rtk_log_write>
3000632c:	4640      	mov	r0, r8
3000632e:	b005      	add	sp, #20
30006330:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
30006334:	2000      	movs	r0, #0
30006336:	b005      	add	sp, #20
30006338:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
3000633c:	2001      	movs	r0, #1
3000633e:	b005      	add	sp, #20
30006340:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
30006344:	f856 3027 	ldr.w	r3, [r6, r7, lsl #2]
30006348:	fa08 f005 	lsl.w	r0, r8, r5
3000634c:	4303      	orrs	r3, r0
3000634e:	2000      	movs	r0, #0
30006350:	f846 3027 	str.w	r3, [r6, r7, lsl #2]
30006354:	b005      	add	sp, #20
30006356:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
3000635a:	bf00      	nop
3000635c:	3000e980 	.word	0x3000e980
30006360:	2001c01c 	.word	0x2001c01c
30006364:	3000c060 	.word	0x3000c060
30006368:	3000c074 	.word	0x3000c074
3000636c:	3000a4b1 	.word	0x3000a4b1

30006370 <Nand_Get_NandAddr>:
30006370:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
30006374:	4f10      	ldr	r7, [pc, #64]	; (300063b8 <Nand_Get_NandAddr+0x48>)
30006376:	f101 4678 	add.w	r6, r1, #4160749568	; 0xf8000000
3000637a:	f100 4078 	add.w	r0, r0, #4160749568	; 0xf8000000
3000637e:	f897 506c 	ldrb.w	r5, [r7, #108]	; 0x6c
30006382:	40e8      	lsrs	r0, r5
30006384:	fa26 f505 	lsr.w	r5, r6, r5
30006388:	09ad      	lsrs	r5, r5, #6
3000638a:	ebb5 1f90 	cmp.w	r5, r0, lsr #6
3000638e:	d90f      	bls.n	300063b0 <Nand_Get_NandAddr+0x40>
30006390:	0984      	lsrs	r4, r0, #6
30006392:	f04f 0840 	mov.w	r8, #64	; 0x40
30006396:	4620      	mov	r0, r4
30006398:	3401      	adds	r4, #1
3000639a:	f7ff ff93 	bl	300062c4 <NAND_CHECK_IS_BAD_BLOCK>
3000639e:	b128      	cbz	r0, 300063ac <Nand_Get_NandAddr+0x3c>
300063a0:	f897 306c 	ldrb.w	r3, [r7, #108]	; 0x6c
300063a4:	3501      	adds	r5, #1
300063a6:	fa08 f303 	lsl.w	r3, r8, r3
300063aa:	441e      	add	r6, r3
300063ac:	42a5      	cmp	r5, r4
300063ae:	d8f2      	bhi.n	30006396 <Nand_Get_NandAddr+0x26>
300063b0:	4630      	mov	r0, r6
300063b2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
300063b6:	bf00      	nop
300063b8:	2001c01c 	.word	0x2001c01c

300063bc <Nand_L2P_Table>:
300063bc:	b530      	push	{r4, r5, lr}
300063be:	b085      	sub	sp, #20
300063c0:	f04f 6300 	mov.w	r3, #134217728	; 0x8000000
300063c4:	4605      	mov	r5, r0
300063c6:	aa03      	add	r2, sp, #12
300063c8:	a902      	add	r1, sp, #8
300063ca:	e9cd 3302 	strd	r3, r3, [sp, #8]
300063ce:	f003 f887 	bl	300094e0 <flash_get_layout_info_by_addr>
300063d2:	4629      	mov	r1, r5
300063d4:	9802      	ldr	r0, [sp, #8]
300063d6:	f7ff ffcb 	bl	30006370 <Nand_Get_NandAddr>
300063da:	9b03      	ldr	r3, [sp, #12]
300063dc:	4604      	mov	r4, r0
300063de:	f103 4378 	add.w	r3, r3, #4160749568	; 0xf8000000
300063e2:	4283      	cmp	r3, r0
300063e4:	d302      	bcc.n	300063ec <Nand_L2P_Table+0x30>
300063e6:	4620      	mov	r0, r4
300063e8:	b005      	add	sp, #20
300063ea:	bd30      	pop	{r4, r5, pc}
300063ec:	4b04      	ldr	r3, [pc, #16]	; (30006400 <Nand_L2P_Table+0x44>)
300063ee:	2245      	movs	r2, #69	; 0x45
300063f0:	4904      	ldr	r1, [pc, #16]	; (30006404 <Nand_L2P_Table+0x48>)
300063f2:	2002      	movs	r0, #2
300063f4:	9500      	str	r5, [sp, #0]
300063f6:	f002 ff91 	bl	3000931c <rtk_log_write>
300063fa:	4620      	mov	r0, r4
300063fc:	b005      	add	sp, #20
300063fe:	bd30      	pop	{r4, r5, pc}
30006400:	3000c080 	.word	0x3000c080
30006404:	3000c074 	.word	0x3000c074

30006408 <NandImgCopy>:
30006408:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
3000640c:	4617      	mov	r7, r2
3000640e:	4603      	mov	r3, r0
30006410:	b08b      	sub	sp, #44	; 0x2c
30006412:	f8df 910c 	ldr.w	r9, [pc, #268]	; 30006520 <NandImgCopy+0x118>
30006416:	f107 38ff 	add.w	r8, r7, #4294967295	; 0xffffffff
3000641a:	4608      	mov	r0, r1
3000641c:	9309      	str	r3, [sp, #36]	; 0x24
3000641e:	f7ff ffcd 	bl	300063bc <Nand_L2P_Table>
30006422:	f899 606c 	ldrb.w	r6, [r9, #108]	; 0x6c
30006426:	4480      	add	r8, r0
30006428:	fa20 f406 	lsr.w	r4, r0, r6
3000642c:	fa28 f806 	lsr.w	r8, r8, r6
30006430:	eba8 0804 	sub.w	r8, r8, r4
30006434:	f1b8 3fff 	cmp.w	r8, #4294967295	; 0xffffffff
30006438:	d057      	beq.n	300064ea <NandImgCopy+0xe2>
3000643a:	463b      	mov	r3, r7
3000643c:	f04f 0a00 	mov.w	sl, #0
30006440:	4647      	mov	r7, r8
30006442:	4605      	mov	r5, r0
30006444:	f04f 0b40 	mov.w	fp, #64	; 0x40
30006448:	4698      	mov	r8, r3
3000644a:	f8cd a020 	str.w	sl, [sp, #32]
3000644e:	e022      	b.n	30006496 <NandImgCopy+0x8e>
30006450:	f1c2 0320 	rsb	r3, r2, #32
30006454:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
30006458:	40d9      	lsrs	r1, r3
3000645a:	9b09      	ldr	r3, [sp, #36]	; 0x24
3000645c:	4029      	ands	r1, r5
3000645e:	4453      	add	r3, sl
30006460:	b387      	cbz	r7, 300064c4 <NandImgCopy+0xbc>
30006462:	2601      	movs	r6, #1
30006464:	4620      	mov	r0, r4
30006466:	fa06 f202 	lsl.w	r2, r6, r2
3000646a:	4e2a      	ldr	r6, [pc, #168]	; (30006514 <NandImgCopy+0x10c>)
3000646c:	9205      	str	r2, [sp, #20]
3000646e:	1a52      	subs	r2, r2, r1
30006470:	e9cd 2106 	strd	r2, r1, [sp, #24]
30006474:	47b0      	blx	r6
30006476:	f010 0f70 	tst.w	r0, #112	; 0x70
3000647a:	9b05      	ldr	r3, [sp, #20]
3000647c:	e9dd 2106 	ldrd	r2, r1, [sp, #24]
30006480:	d136      	bne.n	300064f0 <NandImgCopy+0xe8>
30006482:	eba8 0803 	sub.w	r8, r8, r3
30006486:	4415      	add	r5, r2
30006488:	4492      	add	sl, r2
3000648a:	4488      	add	r8, r1
3000648c:	f899 606c 	ldrb.w	r6, [r9, #108]	; 0x6c
30006490:	3f01      	subs	r7, #1
30006492:	fa25 f406 	lsr.w	r4, r5, r6
30006496:	9b08      	ldr	r3, [sp, #32]
30006498:	4632      	mov	r2, r6
3000649a:	09a6      	lsrs	r6, r4, #6
3000649c:	ebb3 1f94 	cmp.w	r3, r4, lsr #6
300064a0:	d8d6      	bhi.n	30006450 <NandImgCopy+0x48>
300064a2:	e005      	b.n	300064b0 <NandImgCopy+0xa8>
300064a4:	f899 306c 	ldrb.w	r3, [r9, #108]	; 0x6c
300064a8:	3440      	adds	r4, #64	; 0x40
300064aa:	fa0b f303 	lsl.w	r3, fp, r3
300064ae:	441d      	add	r5, r3
300064b0:	4630      	mov	r0, r6
300064b2:	3601      	adds	r6, #1
300064b4:	f7ff ff06 	bl	300062c4 <NAND_CHECK_IS_BAD_BLOCK>
300064b8:	2800      	cmp	r0, #0
300064ba:	d1f3      	bne.n	300064a4 <NandImgCopy+0x9c>
300064bc:	f899 206c 	ldrb.w	r2, [r9, #108]	; 0x6c
300064c0:	9608      	str	r6, [sp, #32]
300064c2:	e7c5      	b.n	30006450 <NandImgCopy+0x48>
300064c4:	4642      	mov	r2, r8
300064c6:	4620      	mov	r0, r4
300064c8:	4d12      	ldr	r5, [pc, #72]	; (30006514 <NandImgCopy+0x10c>)
300064ca:	47a8      	blx	r5
300064cc:	f010 0f70 	tst.w	r0, #112	; 0x70
300064d0:	d00b      	beq.n	300064ea <NandImgCopy+0xe2>
300064d2:	09a1      	lsrs	r1, r4, #6
300064d4:	f004 043f 	and.w	r4, r4, #63	; 0x3f
300064d8:	4b0f      	ldr	r3, [pc, #60]	; (30006518 <NandImgCopy+0x110>)
300064da:	2249      	movs	r2, #73	; 0x49
300064dc:	9400      	str	r4, [sp, #0]
300064de:	e9cd 1001 	strd	r1, r0, [sp, #4]
300064e2:	490e      	ldr	r1, [pc, #56]	; (3000651c <NandImgCopy+0x114>)
300064e4:	2004      	movs	r0, #4
300064e6:	f002 ff19 	bl	3000931c <rtk_log_write>
300064ea:	b00b      	add	sp, #44	; 0x2c
300064ec:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
300064f0:	1ac9      	subs	r1, r1, r3
300064f2:	09a3      	lsrs	r3, r4, #6
300064f4:	f004 043f 	and.w	r4, r4, #63	; 0x3f
300064f8:	4492      	add	sl, r2
300064fa:	4488      	add	r8, r1
300064fc:	4415      	add	r5, r2
300064fe:	9002      	str	r0, [sp, #8]
30006500:	2249      	movs	r2, #73	; 0x49
30006502:	9301      	str	r3, [sp, #4]
30006504:	2004      	movs	r0, #4
30006506:	4b04      	ldr	r3, [pc, #16]	; (30006518 <NandImgCopy+0x110>)
30006508:	4904      	ldr	r1, [pc, #16]	; (3000651c <NandImgCopy+0x114>)
3000650a:	9400      	str	r4, [sp, #0]
3000650c:	f002 ff06 	bl	3000931c <rtk_log_write>
30006510:	e7bc      	b.n	3000648c <NandImgCopy+0x84>
30006512:	bf00      	nop
30006514:	3000a4b1 	.word	0x3000a4b1
30006518:	3000c0ac 	.word	0x3000c0ac
3000651c:	3000c074 	.word	0x3000c074
30006520:	2001c01c 	.word	0x2001c01c

30006524 <DDR_PHY_ChipInfo.part.0>:
30006524:	4b1a      	ldr	r3, [pc, #104]	; (30006590 <DDR_PHY_ChipInfo.part.0+0x6c>)
30006526:	b570      	push	{r4, r5, r6, lr}
30006528:	4798      	blx	r3
3000652a:	3807      	subs	r0, #7
3000652c:	280a      	cmp	r0, #10
3000652e:	d816      	bhi.n	3000655e <DDR_PHY_ChipInfo.part.0+0x3a>
30006530:	e8df f000 	tbb	[pc, r0]
30006534:	2924150b 	.word	0x2924150b
30006538:	06101515 	.word	0x06101515
3000653c:	0610      	.short	0x0610
3000653e:	0b          	.byte	0x0b
3000653f:	00          	.byte	0x00
30006540:	2305      	movs	r3, #5
30006542:	4a14      	ldr	r2, [pc, #80]	; (30006594 <DDR_PHY_ChipInfo.part.0+0x70>)
30006544:	4618      	mov	r0, r3
30006546:	7013      	strb	r3, [r2, #0]
30006548:	bd70      	pop	{r4, r5, r6, pc}
3000654a:	2303      	movs	r3, #3
3000654c:	4a11      	ldr	r2, [pc, #68]	; (30006594 <DDR_PHY_ChipInfo.part.0+0x70>)
3000654e:	4618      	mov	r0, r3
30006550:	7013      	strb	r3, [r2, #0]
30006552:	bd70      	pop	{r4, r5, r6, pc}
30006554:	2304      	movs	r3, #4
30006556:	4a0f      	ldr	r2, [pc, #60]	; (30006594 <DDR_PHY_ChipInfo.part.0+0x70>)
30006558:	4618      	mov	r0, r3
3000655a:	7013      	strb	r3, [r2, #0]
3000655c:	bd70      	pop	{r4, r5, r6, pc}
3000655e:	2414      	movs	r4, #20
30006560:	4e0d      	ldr	r6, [pc, #52]	; (30006598 <DDR_PHY_ChipInfo.part.0+0x74>)
30006562:	4d0e      	ldr	r5, [pc, #56]	; (3000659c <DDR_PHY_ChipInfo.part.0+0x78>)
30006564:	4633      	mov	r3, r6
30006566:	2245      	movs	r2, #69	; 0x45
30006568:	4629      	mov	r1, r5
3000656a:	2002      	movs	r0, #2
3000656c:	f002 fed6 	bl	3000931c <rtk_log_write>
30006570:	3c01      	subs	r4, #1
30006572:	d1f7      	bne.n	30006564 <DDR_PHY_ChipInfo.part.0+0x40>
30006574:	4b07      	ldr	r3, [pc, #28]	; (30006594 <DDR_PHY_ChipInfo.part.0+0x70>)
30006576:	4620      	mov	r0, r4
30006578:	701c      	strb	r4, [r3, #0]
3000657a:	bd70      	pop	{r4, r5, r6, pc}
3000657c:	2301      	movs	r3, #1
3000657e:	4a05      	ldr	r2, [pc, #20]	; (30006594 <DDR_PHY_ChipInfo.part.0+0x70>)
30006580:	4618      	mov	r0, r3
30006582:	7013      	strb	r3, [r2, #0]
30006584:	bd70      	pop	{r4, r5, r6, pc}
30006586:	2302      	movs	r3, #2
30006588:	4a02      	ldr	r2, [pc, #8]	; (30006594 <DDR_PHY_ChipInfo.part.0+0x70>)
3000658a:	4618      	mov	r0, r3
3000658c:	7013      	strb	r3, [r2, #0]
3000658e:	bd70      	pop	{r4, r5, r6, pc}
30006590:	30009ebd 	.word	0x30009ebd
30006594:	3000daf4 	.word	0x3000daf4
30006598:	3000c0e4 	.word	0x3000c0e4
3000659c:	3000c100 	.word	0x3000c100

300065a0 <DDR_PHY_ChipInfo_ddrtype>:
300065a0:	b510      	push	{r4, lr}
300065a2:	4c04      	ldr	r4, [pc, #16]	; (300065b4 <DDR_PHY_ChipInfo_ddrtype+0x14>)
300065a4:	7820      	ldrb	r0, [r4, #0]
300065a6:	b100      	cbz	r0, 300065aa <DDR_PHY_ChipInfo_ddrtype+0xa>
300065a8:	bd10      	pop	{r4, pc}
300065aa:	4b03      	ldr	r3, [pc, #12]	; (300065b8 <DDR_PHY_ChipInfo_ddrtype+0x18>)
300065ac:	4798      	blx	r3
300065ae:	7020      	strb	r0, [r4, #0]
300065b0:	bd10      	pop	{r4, pc}
300065b2:	bf00      	nop
300065b4:	3000e988 	.word	0x3000e988
300065b8:	3000a005 	.word	0x3000a005

300065bc <DDR_PHY_StructInit>:
300065bc:	f240 2315 	movw	r3, #533	; 0x215
300065c0:	6583      	str	r3, [r0, #88]	; 0x58
300065c2:	4770      	bx	lr

300065c4 <DDR_PHY_DLL_CLK_DIV>:
300065c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
300065c6:	4d70      	ldr	r5, [pc, #448]	; (30006788 <DDR_PHY_DLL_CLK_DIV+0x1c4>)
300065c8:	4c70      	ldr	r4, [pc, #448]	; (3000678c <DDR_PHY_DLL_CLK_DIV+0x1c8>)
300065ca:	fba5 3200 	umull	r3, r2, r5, r0
300065ce:	2365      	movs	r3, #101	; 0x65
300065d0:	eb00 0e04 	add.w	lr, r0, r4
300065d4:	0952      	lsrs	r2, r2, #5
300065d6:	fb00 f303 	mul.w	r3, r0, r3
300065da:	486d      	ldr	r0, [pc, #436]	; (30006790 <DDR_PHY_DLL_CLK_DIV+0x1cc>)
300065dc:	f1a2 0c03 	sub.w	ip, r2, #3
300065e0:	6a47      	ldr	r7, [r0, #36]	; 0x24
300065e2:	eb0c 018c 	add.w	r1, ip, ip, lsl #2
300065e6:	ea4f 2c0c 	mov.w	ip, ip, lsl #8
300065ea:	ebae 0ec1 	sub.w	lr, lr, r1, lsl #3
300065ee:	fa1f fc8c 	uxth.w	ip, ip
300065f2:	ea4f 2ece 	mov.w	lr, lr, lsl #11
300065f6:	fba5 1e0e 	umull	r1, lr, r5, lr
300065fa:	4966      	ldr	r1, [pc, #408]	; (30006794 <DDR_PHY_DLL_CLK_DIV+0x1d0>)
300065fc:	fba1 6103 	umull	r6, r1, r1, r3
30006600:	4e65      	ldr	r6, [pc, #404]	; (30006798 <DDR_PHY_DLL_CLK_DIV+0x1d4>)
30006602:	0a09      	lsrs	r1, r1, #8
30006604:	1a52      	subs	r2, r2, r1
30006606:	3903      	subs	r1, #3
30006608:	02d2      	lsls	r2, r2, #11
3000660a:	eb02 125e 	add.w	r2, r2, lr, lsr #5
3000660e:	ea06 2ece 	and.w	lr, r6, lr, lsl #11
30006612:	4e62      	ldr	r6, [pc, #392]	; (3000679c <DDR_PHY_DLL_CLK_DIV+0x1d8>)
30006614:	403e      	ands	r6, r7
30006616:	ea4e 0606 	orr.w	r6, lr, r6
3000661a:	6246      	str	r6, [r0, #36]	; 0x24
3000661c:	4e60      	ldr	r6, [pc, #384]	; (300067a0 <DDR_PHY_DLL_CLK_DIV+0x1dc>)
3000661e:	fba6 6303 	umull	r6, r3, r6, r3
30006622:	eb04 1353 	add.w	r3, r4, r3, lsr #5
30006626:	6a84      	ldr	r4, [r0, #40]	; 0x28
30006628:	f424 447f 	bic.w	r4, r4, #65280	; 0xff00
3000662c:	ea4c 0404 	orr.w	r4, ip, r4
30006630:	6284      	str	r4, [r0, #40]	; 0x28
30006632:	eb01 0481 	add.w	r4, r1, r1, lsl #2
30006636:	b2c9      	uxtb	r1, r1
30006638:	eba3 03c4 	sub.w	r3, r3, r4, lsl #3
3000663c:	02db      	lsls	r3, r3, #11
3000663e:	fba5 4303 	umull	r4, r3, r5, r3
30006642:	6a45      	ldr	r5, [r0, #36]	; 0x24
30006644:	4c57      	ldr	r4, [pc, #348]	; (300067a4 <DDR_PHY_DLL_CLK_DIV+0x1e0>)
30006646:	eba2 1253 	sub.w	r2, r2, r3, lsr #5
3000664a:	f3c3 134a 	ubfx	r3, r3, #5, #11
3000664e:	402c      	ands	r4, r5
30006650:	4d55      	ldr	r5, [pc, #340]	; (300067a8 <DDR_PHY_DLL_CLK_DIV+0x1e4>)
30006652:	eb02 1242 	add.w	r2, r2, r2, lsl #5
30006656:	4323      	orrs	r3, r4
30006658:	02d2      	lsls	r2, r2, #11
3000665a:	6243      	str	r3, [r0, #36]	; 0x24
3000665c:	6a84      	ldr	r4, [r0, #40]	; 0x28
3000665e:	fba5 3202 	umull	r3, r2, r5, r2
30006662:	4b52      	ldr	r3, [pc, #328]	; (300067ac <DDR_PHY_DLL_CLK_DIV+0x1e8>)
30006664:	f024 04ff 	bic.w	r4, r4, #255	; 0xff
30006668:	4321      	orrs	r1, r4
3000666a:	2401      	movs	r4, #1
3000666c:	6281      	str	r1, [r0, #40]	; 0x28
3000666e:	6a01      	ldr	r1, [r0, #32]
30006670:	400b      	ands	r3, r1
30006672:	494f      	ldr	r1, [pc, #316]	; (300067b0 <DDR_PHY_DLL_CLK_DIV+0x1ec>)
30006674:	ea43 3292 	orr.w	r2, r3, r2, lsr #14
30006678:	6202      	str	r2, [r0, #32]
3000667a:	6784      	str	r4, [r0, #120]	; 0x78
3000667c:	7808      	ldrb	r0, [r1, #0]
3000667e:	28ff      	cmp	r0, #255	; 0xff
30006680:	d075      	beq.n	3000676e <DDR_PHY_DLL_CLK_DIV+0x1aa>
30006682:	4c4c      	ldr	r4, [pc, #304]	; (300067b4 <DDR_PHY_DLL_CLK_DIV+0x1f0>)
30006684:	0145      	lsls	r5, r0, #5
30006686:	4b42      	ldr	r3, [pc, #264]	; (30006790 <DDR_PHY_DLL_CLK_DIV+0x1cc>)
30006688:	eb04 1040 	add.w	r0, r4, r0, lsl #5
3000668c:	5962      	ldr	r2, [r4, r5]
3000668e:	4e4a      	ldr	r6, [pc, #296]	; (300067b8 <DDR_PHY_DLL_CLK_DIV+0x1f4>)
30006690:	611a      	str	r2, [r3, #16]
30006692:	6842      	ldr	r2, [r0, #4]
30006694:	615a      	str	r2, [r3, #20]
30006696:	6882      	ldr	r2, [r0, #8]
30006698:	f8c3 2098 	str.w	r2, [r3, #152]	; 0x98
3000669c:	e9d0 1203 	ldrd	r1, r2, [r0, #12]
300066a0:	f8c3 10a0 	str.w	r1, [r3, #160]	; 0xa0
300066a4:	609a      	str	r2, [r3, #8]
300066a6:	f8d3 209c 	ldr.w	r2, [r3, #156]	; 0x9c
300066aa:	f022 52f8 	bic.w	r2, r2, #520093696	; 0x1f000000
300066ae:	f8c3 209c 	str.w	r2, [r3, #156]	; 0x9c
300066b2:	7830      	ldrb	r0, [r6, #0]
300066b4:	2800      	cmp	r0, #0
300066b6:	d056      	beq.n	30006766 <DDR_PHY_DLL_CLK_DIV+0x1a2>
300066b8:	2801      	cmp	r0, #1
300066ba:	442c      	add	r4, r5
300066bc:	4b34      	ldr	r3, [pc, #208]	; (30006790 <DDR_PHY_DLL_CLK_DIV+0x1cc>)
300066be:	d037      	beq.n	30006730 <DDR_PHY_DLL_CLK_DIV+0x16c>
300066c0:	2222      	movs	r2, #34	; 0x22
300066c2:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
300066c6:	6962      	ldr	r2, [r4, #20]
300066c8:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
300066cc:	e9d4 1206 	ldrd	r1, r2, [r4, #24]
300066d0:	f8c3 1084 	str.w	r1, [r3, #132]	; 0x84
300066d4:	f8c3 2094 	str.w	r2, [r3, #148]	; 0x94
300066d8:	f8d3 2084 	ldr.w	r2, [r3, #132]	; 0x84
300066dc:	4937      	ldr	r1, [pc, #220]	; (300067bc <DDR_PHY_DLL_CLK_DIV+0x1f8>)
300066de:	f422 427f 	bic.w	r2, r2, #65280	; 0xff00
300066e2:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
300066e6:	f8d1 3268 	ldr.w	r3, [r1, #616]	; 0x268
300066ea:	009b      	lsls	r3, r3, #2
300066ec:	d516      	bpl.n	3000671c <DDR_PHY_DLL_CLK_DIV+0x158>
300066ee:	2800      	cmp	r0, #0
300066f0:	d044      	beq.n	3000677c <DDR_PHY_DLL_CLK_DIV+0x1b8>
300066f2:	4b27      	ldr	r3, [pc, #156]	; (30006790 <DDR_PHY_DLL_CLK_DIV+0x1cc>)
300066f4:	4a32      	ldr	r2, [pc, #200]	; (300067c0 <DDR_PHY_DLL_CLK_DIV+0x1fc>)
300066f6:	601a      	str	r2, [r3, #0]
300066f8:	4b25      	ldr	r3, [pc, #148]	; (30006790 <DDR_PHY_DLL_CLK_DIV+0x1cc>)
300066fa:	f8d3 2084 	ldr.w	r2, [r3, #132]	; 0x84
300066fe:	f422 2270 	bic.w	r2, r2, #983040	; 0xf0000
30006702:	f442 2240 	orr.w	r2, r2, #786432	; 0xc0000
30006706:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
3000670a:	699a      	ldr	r2, [r3, #24]
3000670c:	f422 1260 	bic.w	r2, r2, #3670016	; 0x380000
30006710:	619a      	str	r2, [r3, #24]
30006712:	699a      	ldr	r2, [r3, #24]
30006714:	f042 5280 	orr.w	r2, r2, #268435456	; 0x10000000
30006718:	619a      	str	r2, [r3, #24]
3000671a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
3000671c:	b920      	cbnz	r0, 30006728 <DDR_PHY_DLL_CLK_DIV+0x164>
3000671e:	4b29      	ldr	r3, [pc, #164]	; (300067c4 <DDR_PHY_DLL_CLK_DIV+0x200>)
30006720:	4798      	blx	r3
30006722:	2801      	cmp	r0, #1
30006724:	7030      	strb	r0, [r6, #0]
30006726:	d025      	beq.n	30006774 <DDR_PHY_DLL_CLK_DIV+0x1b0>
30006728:	4b19      	ldr	r3, [pc, #100]	; (30006790 <DDR_PHY_DLL_CLK_DIV+0x1cc>)
3000672a:	4a27      	ldr	r2, [pc, #156]	; (300067c8 <DDR_PHY_DLL_CLK_DIV+0x204>)
3000672c:	601a      	str	r2, [r3, #0]
3000672e:	e7e3      	b.n	300066f8 <DDR_PHY_DLL_CLK_DIV+0x134>
30006730:	2233      	movs	r2, #51	; 0x33
30006732:	6965      	ldr	r5, [r4, #20]
30006734:	4921      	ldr	r1, [pc, #132]	; (300067bc <DDR_PHY_DLL_CLK_DIV+0x1f8>)
30006736:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
3000673a:	f8c3 5080 	str.w	r5, [r3, #128]	; 0x80
3000673e:	e9d4 0206 	ldrd	r0, r2, [r4, #24]
30006742:	f8c3 0084 	str.w	r0, [r3, #132]	; 0x84
30006746:	f8c3 2094 	str.w	r2, [r3, #148]	; 0x94
3000674a:	f8d3 2084 	ldr.w	r2, [r3, #132]	; 0x84
3000674e:	f422 427f 	bic.w	r2, r2, #65280	; 0xff00
30006752:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
30006756:	f8d1 3268 	ldr.w	r3, [r1, #616]	; 0x268
3000675a:	009a      	lsls	r2, r3, #2
3000675c:	d50a      	bpl.n	30006774 <DDR_PHY_DLL_CLK_DIV+0x1b0>
3000675e:	4b0c      	ldr	r3, [pc, #48]	; (30006790 <DDR_PHY_DLL_CLK_DIV+0x1cc>)
30006760:	4a1a      	ldr	r2, [pc, #104]	; (300067cc <DDR_PHY_DLL_CLK_DIV+0x208>)
30006762:	601a      	str	r2, [r3, #0]
30006764:	e7c8      	b.n	300066f8 <DDR_PHY_DLL_CLK_DIV+0x134>
30006766:	4b17      	ldr	r3, [pc, #92]	; (300067c4 <DDR_PHY_DLL_CLK_DIV+0x200>)
30006768:	4798      	blx	r3
3000676a:	7030      	strb	r0, [r6, #0]
3000676c:	e7a4      	b.n	300066b8 <DDR_PHY_DLL_CLK_DIV+0xf4>
3000676e:	f7ff fed9 	bl	30006524 <DDR_PHY_ChipInfo.part.0>
30006772:	e786      	b.n	30006682 <DDR_PHY_DLL_CLK_DIV+0xbe>
30006774:	4b06      	ldr	r3, [pc, #24]	; (30006790 <DDR_PHY_DLL_CLK_DIV+0x1cc>)
30006776:	4a16      	ldr	r2, [pc, #88]	; (300067d0 <DDR_PHY_DLL_CLK_DIV+0x20c>)
30006778:	601a      	str	r2, [r3, #0]
3000677a:	e7bd      	b.n	300066f8 <DDR_PHY_DLL_CLK_DIV+0x134>
3000677c:	4b11      	ldr	r3, [pc, #68]	; (300067c4 <DDR_PHY_DLL_CLK_DIV+0x200>)
3000677e:	4798      	blx	r3
30006780:	2801      	cmp	r0, #1
30006782:	7030      	strb	r0, [r6, #0]
30006784:	d1b5      	bne.n	300066f2 <DDR_PHY_DLL_CLK_DIV+0x12e>
30006786:	e7ea      	b.n	3000675e <DDR_PHY_DLL_CLK_DIV+0x19a>
30006788:	cccccccd 	.word	0xcccccccd
3000678c:	001fff88 	.word	0x001fff88
30006790:	41011000 	.word	0x41011000
30006794:	10624dd3 	.word	0x10624dd3
30006798:	07ff0000 	.word	0x07ff0000
3000679c:	f800ffff 	.word	0xf800ffff
300067a0:	51eb851f 	.word	0x51eb851f
300067a4:	fffff800 	.word	0xfffff800
300067a8:	d1b71759 	.word	0xd1b71759
300067ac:	fff80000 	.word	0xfff80000
300067b0:	3000daf4 	.word	0x3000daf4
300067b4:	3000c108 	.word	0x3000c108
300067b8:	3000e988 	.word	0x3000e988
300067bc:	42008000 	.word	0x42008000
300067c0:	4c000821 	.word	0x4c000821
300067c4:	3000a005 	.word	0x3000a005
300067c8:	40000021 	.word	0x40000021
300067cc:	4c000903 	.word	0x4c000903
300067d0:	40000103 	.word	0x40000103

300067d4 <DDR_PHY_CRT_Init>:
300067d4:	4a32      	ldr	r2, [pc, #200]	; (300068a0 <DDR_PHY_CRT_Init+0xcc>)
300067d6:	2005      	movs	r0, #5
300067d8:	b538      	push	{r3, r4, r5, lr}
300067da:	f8d2 325c 	ldr.w	r3, [r2, #604]	; 0x25c
300067de:	4c31      	ldr	r4, [pc, #196]	; (300068a4 <DDR_PHY_CRT_Init+0xd0>)
300067e0:	f443 7380 	orr.w	r3, r3, #256	; 0x100
300067e4:	4d30      	ldr	r5, [pc, #192]	; (300068a8 <DDR_PHY_CRT_Init+0xd4>)
300067e6:	f8c2 325c 	str.w	r3, [r2, #604]	; 0x25c
300067ea:	f8d4 308c 	ldr.w	r3, [r4, #140]	; 0x8c
300067ee:	f043 0301 	orr.w	r3, r3, #1
300067f2:	f8c4 308c 	str.w	r3, [r4, #140]	; 0x8c
300067f6:	f8d4 308c 	ldr.w	r3, [r4, #140]	; 0x8c
300067fa:	f043 0330 	orr.w	r3, r3, #48	; 0x30
300067fe:	f8c4 308c 	str.w	r3, [r4, #140]	; 0x8c
30006802:	68e3      	ldr	r3, [r4, #12]
30006804:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
30006808:	60e3      	str	r3, [r4, #12]
3000680a:	f8d4 308c 	ldr.w	r3, [r4, #140]	; 0x8c
3000680e:	f043 0302 	orr.w	r3, r3, #2
30006812:	f8c4 308c 	str.w	r3, [r4, #140]	; 0x8c
30006816:	f8d4 308c 	ldr.w	r3, [r4, #140]	; 0x8c
3000681a:	f023 0308 	bic.w	r3, r3, #8
3000681e:	f8c4 308c 	str.w	r3, [r4, #140]	; 0x8c
30006822:	f8d4 308c 	ldr.w	r3, [r4, #140]	; 0x8c
30006826:	f043 0304 	orr.w	r3, r3, #4
3000682a:	f8c4 308c 	str.w	r3, [r4, #140]	; 0x8c
3000682e:	47a8      	blx	r5
30006830:	f8d4 308c 	ldr.w	r3, [r4, #140]	; 0x8c
30006834:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
30006838:	f043 0308 	orr.w	r3, r3, #8
3000683c:	f8c4 308c 	str.w	r3, [r4, #140]	; 0x8c
30006840:	6aa3      	ldr	r3, [r4, #40]	; 0x28
30006842:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
30006846:	62a3      	str	r3, [r4, #40]	; 0x28
30006848:	47a8      	blx	r5
3000684a:	6aa2      	ldr	r2, [r4, #40]	; 0x28
3000684c:	f641 73ff 	movw	r3, #8191	; 0x1fff
30006850:	4916      	ldr	r1, [pc, #88]	; (300068ac <DDR_PHY_CRT_Init+0xd8>)
30006852:	f022 6280 	bic.w	r2, r2, #67108864	; 0x4000000
30006856:	62a2      	str	r2, [r4, #40]	; 0x28
30006858:	69e2      	ldr	r2, [r4, #28]
3000685a:	f042 0202 	orr.w	r2, r2, #2
3000685e:	61e2      	str	r2, [r4, #28]
30006860:	69e2      	ldr	r2, [r4, #28]
30006862:	f042 0208 	orr.w	r2, r2, #8
30006866:	61e2      	str	r2, [r4, #28]
30006868:	68a2      	ldr	r2, [r4, #8]
3000686a:	f042 4200 	orr.w	r2, r2, #2147483648	; 0x80000000
3000686e:	60a2      	str	r2, [r4, #8]
30006870:	6862      	ldr	r2, [r4, #4]
30006872:	4313      	orrs	r3, r2
30006874:	6063      	str	r3, [r4, #4]
30006876:	68a3      	ldr	r3, [r4, #8]
30006878:	f443 23e0 	orr.w	r3, r3, #458752	; 0x70000
3000687c:	60a3      	str	r3, [r4, #8]
3000687e:	f8c4 1240 	str.w	r1, [r4, #576]	; 0x240
30006882:	f8d4 3238 	ldr.w	r3, [r4, #568]	; 0x238
30006886:	f023 0303 	bic.w	r3, r3, #3
3000688a:	f043 0302 	orr.w	r3, r3, #2
3000688e:	f8c4 3238 	str.w	r3, [r4, #568]	; 0x238
30006892:	f8d4 3238 	ldr.w	r3, [r4, #568]	; 0x238
30006896:	f443 23c0 	orr.w	r3, r3, #393216	; 0x60000
3000689a:	f8c4 3238 	str.w	r3, [r4, #568]	; 0x238
3000689e:	bd38      	pop	{r3, r4, r5, pc}
300068a0:	42008000 	.word	0x42008000
300068a4:	41011000 	.word	0x41011000
300068a8:	00009b2d 	.word	0x00009b2d
300068ac:	90161f00 	.word	0x90161f00

300068b0 <DDR_PHY_R240_ZQ_CAL>:
300068b0:	b538      	push	{r3, r4, r5, lr}
300068b2:	4b1e      	ldr	r3, [pc, #120]	; (3000692c <DDR_PHY_R240_ZQ_CAL+0x7c>)
300068b4:	7818      	ldrb	r0, [r3, #0]
300068b6:	28ff      	cmp	r0, #255	; 0xff
300068b8:	d034      	beq.n	30006924 <DDR_PHY_R240_ZQ_CAL+0x74>
300068ba:	4a1d      	ldr	r2, [pc, #116]	; (30006930 <DDR_PHY_R240_ZQ_CAL+0x80>)
300068bc:	eb00 0080 	add.w	r0, r0, r0, lsl #2
300068c0:	4b1c      	ldr	r3, [pc, #112]	; (30006934 <DDR_PHY_R240_ZQ_CAL+0x84>)
300068c2:	2400      	movs	r4, #0
300068c4:	eb02 0180 	add.w	r1, r2, r0, lsl #2
300068c8:	f852 5020 	ldr.w	r5, [r2, r0, lsl #2]
300068cc:	f8d3 014c 	ldr.w	r0, [r3, #332]	; 0x14c
300068d0:	7c0a      	ldrb	r2, [r1, #16]
300068d2:	f020 003e 	bic.w	r0, r0, #62	; 0x3e
300068d6:	0052      	lsls	r2, r2, #1
300068d8:	f002 023e 	and.w	r2, r2, #62	; 0x3e
300068dc:	4302      	orrs	r2, r0
300068de:	6848      	ldr	r0, [r1, #4]
300068e0:	f8c3 214c 	str.w	r2, [r3, #332]	; 0x14c
300068e4:	f8c3 5180 	str.w	r5, [r3, #384]	; 0x180
300068e8:	4a13      	ldr	r2, [pc, #76]	; (30006938 <DDR_PHY_R240_ZQ_CAL+0x88>)
300068ea:	f8c3 4184 	str.w	r4, [r3, #388]	; 0x184
300068ee:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
300068f2:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
300068f6:	e9d1 0102 	ldrd	r0, r1, [r1, #8]
300068fa:	f8c3 0190 	str.w	r0, [r3, #400]	; 0x190
300068fe:	f8c3 2194 	str.w	r2, [r3, #404]	; 0x194
30006902:	f8c3 1198 	str.w	r1, [r3, #408]	; 0x198
30006906:	f8c3 219c 	str.w	r2, [r3, #412]	; 0x19c
3000690a:	f8d3 2130 	ldr.w	r2, [r3, #304]	; 0x130
3000690e:	f042 6200 	orr.w	r2, r2, #134217728	; 0x8000000
30006912:	f8c3 2130 	str.w	r2, [r3, #304]	; 0x130
30006916:	f8d3 2130 	ldr.w	r2, [r3, #304]	; 0x130
3000691a:	f022 6200 	bic.w	r2, r2, #134217728	; 0x8000000
3000691e:	f8c3 2130 	str.w	r2, [r3, #304]	; 0x130
30006922:	bd38      	pop	{r3, r4, r5, pc}
30006924:	f7ff fdfe 	bl	30006524 <DDR_PHY_ChipInfo.part.0>
30006928:	e7c7      	b.n	300068ba <DDR_PHY_R240_ZQ_CAL+0xa>
3000692a:	bf00      	nop
3000692c:	3000daf4 	.word	0x3000daf4
30006930:	3000c1c8 	.word	0x3000c1c8
30006934:	41011000 	.word	0x41011000
30006938:	00262626 	.word	0x00262626

3000693c <DDR_PHY_ZQ_SET_SEL>:
3000693c:	b410      	push	{r4}
3000693e:	4b25      	ldr	r3, [pc, #148]	; (300069d4 <DDR_PHY_ZQ_SET_SEL+0x98>)
30006940:	f04f 3011 	mov.w	r0, #286331153	; 0x11111111
30006944:	4a24      	ldr	r2, [pc, #144]	; (300069d8 <DDR_PHY_ZQ_SET_SEL+0x9c>)
30006946:	4c25      	ldr	r4, [pc, #148]	; (300069dc <DDR_PHY_ZQ_SET_SEL+0xa0>)
30006948:	4925      	ldr	r1, [pc, #148]	; (300069e0 <DDR_PHY_ZQ_SET_SEL+0xa4>)
3000694a:	f8c3 21c0 	str.w	r2, [r3, #448]	; 0x1c0
3000694e:	f8c3 21c4 	str.w	r2, [r3, #452]	; 0x1c4
30006952:	f8c3 21c8 	str.w	r2, [r3, #456]	; 0x1c8
30006956:	f8c3 21cc 	str.w	r2, [r3, #460]	; 0x1cc
3000695a:	f8c3 41d0 	str.w	r4, [r3, #464]	; 0x1d0
3000695e:	f8c3 41d4 	str.w	r4, [r3, #468]	; 0x1d4
30006962:	f64f 74ff 	movw	r4, #65535	; 0xffff
30006966:	f8c3 21d8 	str.w	r2, [r3, #472]	; 0x1d8
3000696a:	f8c3 21dc 	str.w	r2, [r3, #476]	; 0x1dc
3000696e:	2200      	movs	r2, #0
30006970:	f8c3 01e0 	str.w	r0, [r3, #480]	; 0x1e0
30006974:	f8c3 01e4 	str.w	r0, [r3, #484]	; 0x1e4
30006978:	f8c3 11e8 	str.w	r1, [r3, #488]	; 0x1e8
3000697c:	f8c3 11ec 	str.w	r1, [r3, #492]	; 0x1ec
30006980:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
30006984:	f8c3 21f0 	str.w	r2, [r3, #496]	; 0x1f0
30006988:	f8c3 2204 	str.w	r2, [r3, #516]	; 0x204
3000698c:	f8c3 2208 	str.w	r2, [r3, #520]	; 0x208
30006990:	f8c3 220c 	str.w	r2, [r3, #524]	; 0x20c
30006994:	f8c3 2210 	str.w	r2, [r3, #528]	; 0x210
30006998:	f8c3 2214 	str.w	r2, [r3, #532]	; 0x214
3000699c:	f8c3 2218 	str.w	r2, [r3, #536]	; 0x218
300069a0:	f8c3 221c 	str.w	r2, [r3, #540]	; 0x21c
300069a4:	f8c3 2220 	str.w	r2, [r3, #544]	; 0x220
300069a8:	f8c3 4224 	str.w	r4, [r3, #548]	; 0x224
300069ac:	f8c3 1228 	str.w	r1, [r3, #552]	; 0x228
300069b0:	f8c3 122c 	str.w	r1, [r3, #556]	; 0x22c
300069b4:	f8c3 1230 	str.w	r1, [r3, #560]	; 0x230
300069b8:	f8c3 1234 	str.w	r1, [r3, #564]	; 0x234
300069bc:	f8c3 1328 	str.w	r1, [r3, #808]	; 0x328
300069c0:	f8c3 132c 	str.w	r1, [r3, #812]	; 0x32c
300069c4:	f8c3 1330 	str.w	r1, [r3, #816]	; 0x330
300069c8:	f8c3 1334 	str.w	r1, [r3, #820]	; 0x334
300069cc:	f85d 4b04 	ldr.w	r4, [sp], #4
300069d0:	4770      	bx	lr
300069d2:	bf00      	nop
300069d4:	41011000 	.word	0x41011000
300069d8:	ffff1111 	.word	0xffff1111
300069dc:	ffff3333 	.word	0xffff3333
300069e0:	ffff0000 	.word	0xffff0000

300069e4 <DDR_PHY_DELAY_TAP_SET>:
300069e4:	b510      	push	{r4, lr}
300069e6:	4b15      	ldr	r3, [pc, #84]	; (30006a3c <DDR_PHY_DELAY_TAP_SET+0x58>)
300069e8:	f04f 3288 	mov.w	r2, #2290649224	; 0x88888888
300069ec:	4914      	ldr	r1, [pc, #80]	; (30006a40 <DDR_PHY_DELAY_TAP_SET+0x5c>)
300069ee:	4c15      	ldr	r4, [pc, #84]	; (30006a44 <DDR_PHY_DELAY_TAP_SET+0x60>)
300069f0:	f8c3 2100 	str.w	r2, [r3, #256]	; 0x100
300069f4:	f8c3 2104 	str.w	r2, [r3, #260]	; 0x104
300069f8:	f8c3 2108 	str.w	r2, [r3, #264]	; 0x108
300069fc:	f8c3 110c 	str.w	r1, [r3, #268]	; 0x10c
30006a00:	f8c3 2110 	str.w	r2, [r3, #272]	; 0x110
30006a04:	7820      	ldrb	r0, [r4, #0]
30006a06:	b1a0      	cbz	r0, 30006a32 <DDR_PHY_DELAY_TAP_SET+0x4e>
30006a08:	2801      	cmp	r0, #1
30006a0a:	4b0c      	ldr	r3, [pc, #48]	; (30006a3c <DDR_PHY_DELAY_TAP_SET+0x58>)
30006a0c:	f04f 3188 	mov.w	r1, #2290649224	; 0x88888888
30006a10:	bf0c      	ite	eq
30006a12:	4a0d      	ldreq	r2, [pc, #52]	; (30006a48 <DDR_PHY_DELAY_TAP_SET+0x64>)
30006a14:	4a0d      	ldrne	r2, [pc, #52]	; (30006a4c <DDR_PHY_DELAY_TAP_SET+0x68>)
30006a16:	f8c3 2154 	str.w	r2, [r3, #340]	; 0x154
30006a1a:	f640 0288 	movw	r2, #2184	; 0x888
30006a1e:	4b07      	ldr	r3, [pc, #28]	; (30006a3c <DDR_PHY_DELAY_TAP_SET+0x58>)
30006a20:	f8c3 1480 	str.w	r1, [r3, #1152]	; 0x480
30006a24:	f8c3 1484 	str.w	r1, [r3, #1156]	; 0x484
30006a28:	f8c3 2488 	str.w	r2, [r3, #1160]	; 0x488
30006a2c:	f8c3 248c 	str.w	r2, [r3, #1164]	; 0x48c
30006a30:	bd10      	pop	{r4, pc}
30006a32:	4b07      	ldr	r3, [pc, #28]	; (30006a50 <DDR_PHY_DELAY_TAP_SET+0x6c>)
30006a34:	4798      	blx	r3
30006a36:	7020      	strb	r0, [r4, #0]
30006a38:	e7e6      	b.n	30006a08 <DDR_PHY_DELAY_TAP_SET+0x24>
30006a3a:	bf00      	nop
30006a3c:	41011000 	.word	0x41011000
30006a40:	20888888 	.word	0x20888888
30006a44:	3000e988 	.word	0x3000e988
30006a48:	7c033333 	.word	0x7c033333
30006a4c:	7c011111 	.word	0x7c011111
30006a50:	3000a005 	.word	0x3000a005

30006a54 <DDR_PHY_READ_CTRL>:
30006a54:	4b10      	ldr	r3, [pc, #64]	; (30006a98 <DDR_PHY_READ_CTRL+0x44>)
30006a56:	b510      	push	{r4, lr}
30006a58:	7818      	ldrb	r0, [r3, #0]
30006a5a:	28ff      	cmp	r0, #255	; 0xff
30006a5c:	d019      	beq.n	30006a92 <DDR_PHY_READ_CTRL+0x3e>
30006a5e:	4a0f      	ldr	r2, [pc, #60]	; (30006a9c <DDR_PHY_READ_CTRL+0x48>)
30006a60:	eb00 0080 	add.w	r0, r0, r0, lsl #2
30006a64:	4b0e      	ldr	r3, [pc, #56]	; (30006aa0 <DDR_PHY_READ_CTRL+0x4c>)
30006a66:	2108      	movs	r1, #8
30006a68:	eb02 0080 	add.w	r0, r2, r0, lsl #2
30006a6c:	22fe      	movs	r2, #254	; 0xfe
30006a6e:	7c44      	ldrb	r4, [r0, #17]
30006a70:	f8c3 45f8 	str.w	r4, [r3, #1528]	; 0x5f8
30006a74:	7c84      	ldrb	r4, [r0, #18]
30006a76:	7cc0      	ldrb	r0, [r0, #19]
30006a78:	f8c3 45fc 	str.w	r4, [r3, #1532]	; 0x5fc
30006a7c:	f8c3 0170 	str.w	r0, [r3, #368]	; 0x170
30006a80:	f8c3 1408 	str.w	r1, [r3, #1032]	; 0x408
30006a84:	f8c3 140c 	str.w	r1, [r3, #1036]	; 0x40c
30006a88:	f8c3 2418 	str.w	r2, [r3, #1048]	; 0x418
30006a8c:	f8c3 241c 	str.w	r2, [r3, #1052]	; 0x41c
30006a90:	bd10      	pop	{r4, pc}
30006a92:	f7ff fd47 	bl	30006524 <DDR_PHY_ChipInfo.part.0>
30006a96:	e7e2      	b.n	30006a5e <DDR_PHY_READ_CTRL+0xa>
30006a98:	3000daf4 	.word	0x3000daf4
30006a9c:	3000c1c8 	.word	0x3000c1c8
30006aa0:	41011000 	.word	0x41011000

30006aa4 <DDR_PHY_READ_LEVELING>:
30006aa4:	b508      	push	{r3, lr}
30006aa6:	4b21      	ldr	r3, [pc, #132]	; (30006b2c <DDR_PHY_READ_LEVELING+0x88>)
30006aa8:	7818      	ldrb	r0, [r3, #0]
30006aaa:	28ff      	cmp	r0, #255	; 0xff
30006aac:	d03b      	beq.n	30006b26 <DDR_PHY_READ_LEVELING+0x82>
30006aae:	4b20      	ldr	r3, [pc, #128]	; (30006b30 <DDR_PHY_READ_LEVELING+0x8c>)
30006ab0:	b1e8      	cbz	r0, 30006aee <DDR_PHY_READ_LEVELING+0x4a>
30006ab2:	f04f 3112 	mov.w	r1, #303174162	; 0x12121212
30006ab6:	f04f 3011 	mov.w	r0, #286331153	; 0x11111111
30006aba:	220f      	movs	r2, #15
30006abc:	f8c3 1440 	str.w	r1, [r3, #1088]	; 0x440
30006ac0:	f8c3 1448 	str.w	r1, [r3, #1096]	; 0x448
30006ac4:	f8c3 0444 	str.w	r0, [r3, #1092]	; 0x444
30006ac8:	f8c3 044c 	str.w	r0, [r3, #1100]	; 0x44c
30006acc:	f8c3 0458 	str.w	r0, [r3, #1112]	; 0x458
30006ad0:	f8c3 0460 	str.w	r0, [r3, #1120]	; 0x460
30006ad4:	f8c3 145c 	str.w	r1, [r3, #1116]	; 0x45c
30006ad8:	f8c3 1464 	str.w	r1, [r3, #1124]	; 0x464
30006adc:	f8c3 2450 	str.w	r2, [r3, #1104]	; 0x450
30006ae0:	f8c3 2454 	str.w	r2, [r3, #1108]	; 0x454
30006ae4:	f8c3 2468 	str.w	r2, [r3, #1128]	; 0x468
30006ae8:	f8c3 246c 	str.w	r2, [r3, #1132]	; 0x46c
30006aec:	bd08      	pop	{r3, pc}
30006aee:	f04f 3210 	mov.w	r2, #269488144	; 0x10101010
30006af2:	2110      	movs	r1, #16
30006af4:	f8c3 2440 	str.w	r2, [r3, #1088]	; 0x440
30006af8:	f8c3 2448 	str.w	r2, [r3, #1096]	; 0x448
30006afc:	f8c3 2458 	str.w	r2, [r3, #1112]	; 0x458
30006b00:	f8c3 2460 	str.w	r2, [r3, #1120]	; 0x460
30006b04:	f8c3 2444 	str.w	r2, [r3, #1092]	; 0x444
30006b08:	f8c3 244c 	str.w	r2, [r3, #1100]	; 0x44c
30006b0c:	f8c3 245c 	str.w	r2, [r3, #1116]	; 0x45c
30006b10:	f8c3 2464 	str.w	r2, [r3, #1124]	; 0x464
30006b14:	f8c3 1450 	str.w	r1, [r3, #1104]	; 0x450
30006b18:	f8c3 1454 	str.w	r1, [r3, #1108]	; 0x454
30006b1c:	f8c3 1468 	str.w	r1, [r3, #1128]	; 0x468
30006b20:	f8c3 146c 	str.w	r1, [r3, #1132]	; 0x46c
30006b24:	bd08      	pop	{r3, pc}
30006b26:	f7ff fcfd 	bl	30006524 <DDR_PHY_ChipInfo.part.0>
30006b2a:	e7c0      	b.n	30006aae <DDR_PHY_READ_LEVELING+0xa>
30006b2c:	3000daf4 	.word	0x3000daf4
30006b30:	41011000 	.word	0x41011000

30006b34 <DDR_PHY_Init>:
30006b34:	b510      	push	{r4, lr}
30006b36:	6d80      	ldr	r0, [r0, #88]	; 0x58
30006b38:	4c2f      	ldr	r4, [pc, #188]	; (30006bf8 <DDR_PHY_Init+0xc4>)
30006b3a:	f7ff fd43 	bl	300065c4 <DDR_PHY_DLL_CLK_DIV>
30006b3e:	f7ff fe49 	bl	300067d4 <DDR_PHY_CRT_Init>
30006b42:	f7ff feb5 	bl	300068b0 <DDR_PHY_R240_ZQ_CAL>
30006b46:	f7ff fef9 	bl	3000693c <DDR_PHY_ZQ_SET_SEL>
30006b4a:	f04f 1211 	mov.w	r2, #1114129	; 0x110011
30006b4e:	2300      	movs	r3, #0
30006b50:	f44f 5180 	mov.w	r1, #4096	; 0x1000
30006b54:	4829      	ldr	r0, [pc, #164]	; (30006bfc <DDR_PHY_Init+0xc8>)
30006b56:	f8c4 24f0 	str.w	r2, [r4, #1264]	; 0x4f0
30006b5a:	f8c4 24f4 	str.w	r2, [r4, #1268]	; 0x4f4
30006b5e:	f8c4 34e8 	str.w	r3, [r4, #1256]	; 0x4e8
30006b62:	f8c4 34ec 	str.w	r3, [r4, #1260]	; 0x4ec
30006b66:	f8c4 017c 	str.w	r0, [r4, #380]	; 0x17c
30006b6a:	f8c4 12a4 	str.w	r1, [r4, #676]	; 0x2a4
30006b6e:	f7ff ff39 	bl	300069e4 <DDR_PHY_DELAY_TAP_SET>
30006b72:	f7ff ff6f 	bl	30006a54 <DDR_PHY_READ_CTRL>
30006b76:	f04f 3322 	mov.w	r3, #572662306	; 0x22222222
30006b7a:	4a21      	ldr	r2, [pc, #132]	; (30006c00 <DDR_PHY_Init+0xcc>)
30006b7c:	f8c4 2178 	str.w	r2, [r4, #376]	; 0x178
30006b80:	f8c4 3420 	str.w	r3, [r4, #1056]	; 0x420
30006b84:	f8c4 3424 	str.w	r3, [r4, #1060]	; 0x424
30006b88:	f8c4 3430 	str.w	r3, [r4, #1072]	; 0x430
30006b8c:	f8c4 3434 	str.w	r3, [r4, #1076]	; 0x434
30006b90:	f7ff ff88 	bl	30006aa4 <DDR_PHY_READ_LEVELING>
30006b94:	f8d4 31f8 	ldr.w	r3, [r4, #504]	; 0x1f8
30006b98:	f04f 31d8 	mov.w	r1, #3638089944	; 0xd8d8d8d8
30006b9c:	f04f 328c 	mov.w	r2, #2358021260	; 0x8c8c8c8c
30006ba0:	f423 437e 	bic.w	r3, r3, #65024	; 0xfe00
30006ba4:	f443 4364 	orr.w	r3, r3, #58368	; 0xe400
30006ba8:	f8c4 31f8 	str.w	r3, [r4, #504]	; 0x1f8
30006bac:	f8c4 11fc 	str.w	r1, [r4, #508]	; 0x1fc
30006bb0:	f8d4 32d0 	ldr.w	r3, [r4, #720]	; 0x2d0
30006bb4:	f043 032f 	orr.w	r3, r3, #47	; 0x2f
30006bb8:	f8c4 32d0 	str.w	r3, [r4, #720]	; 0x2d0
30006bbc:	f8c4 21fc 	str.w	r2, [r4, #508]	; 0x1fc
30006bc0:	f8d4 323c 	ldr.w	r3, [r4, #572]	; 0x23c
30006bc4:	f043 0303 	orr.w	r3, r3, #3
30006bc8:	f8c4 323c 	str.w	r3, [r4, #572]	; 0x23c
30006bcc:	f8d4 323c 	ldr.w	r3, [r4, #572]	; 0x23c
30006bd0:	f043 030c 	orr.w	r3, r3, #12
30006bd4:	f8c4 323c 	str.w	r3, [r4, #572]	; 0x23c
30006bd8:	f8d4 3238 	ldr.w	r3, [r4, #568]	; 0x238
30006bdc:	f023 0303 	bic.w	r3, r3, #3
30006be0:	f8c4 3238 	str.w	r3, [r4, #568]	; 0x238
30006be4:	f8d4 3238 	ldr.w	r3, [r4, #568]	; 0x238
30006be8:	f423 537c 	bic.w	r3, r3, #16128	; 0x3f00
30006bec:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
30006bf0:	f8c4 3238 	str.w	r3, [r4, #568]	; 0x238
30006bf4:	bd10      	pop	{r4, pc}
30006bf6:	bf00      	nop
30006bf8:	41011000 	.word	0x41011000
30006bfc:	00045500 	.word	0x00045500
30006c00:	11117777 	.word	0x11117777

30006c04 <DDR_PHY_CAL>:
30006c04:	4770      	bx	lr
30006c06:	bf00      	nop

30006c08 <DDR_PHY_AutoGating>:
30006c08:	4a0c      	ldr	r2, [pc, #48]	; (30006c3c <DDR_PHY_AutoGating+0x34>)
30006c0a:	2032      	movs	r0, #50	; 0x32
30006c0c:	490c      	ldr	r1, [pc, #48]	; (30006c40 <DDR_PHY_AutoGating+0x38>)
30006c0e:	b508      	push	{r3, lr}
30006c10:	6893      	ldr	r3, [r2, #8]
30006c12:	f023 5300 	bic.w	r3, r3, #536870912	; 0x20000000
30006c16:	6093      	str	r3, [r2, #8]
30006c18:	f8d2 30ac 	ldr.w	r3, [r2, #172]	; 0xac
30006c1c:	f023 033c 	bic.w	r3, r3, #60	; 0x3c
30006c20:	f043 0314 	orr.w	r3, r3, #20
30006c24:	f8c2 30ac 	str.w	r3, [r2, #172]	; 0xac
30006c28:	4788      	blx	r1
30006c2a:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
30006c2e:	f8d2 31e0 	ldr.w	r3, [r2, #480]	; 0x1e0
30006c32:	f043 0303 	orr.w	r3, r3, #3
30006c36:	f8c2 31e0 	str.w	r3, [r2, #480]	; 0x1e0
30006c3a:	bd08      	pop	{r3, pc}
30006c3c:	41011000 	.word	0x41011000
30006c40:	00009b2d 	.word	0x00009b2d

30006c44 <ddr_init_index>:
30006c44:	b570      	push	{r4, r5, r6, lr}
30006c46:	4b11      	ldr	r3, [pc, #68]	; (30006c8c <ddr_init_index+0x48>)
30006c48:	b082      	sub	sp, #8
30006c4a:	4798      	blx	r3
30006c4c:	4604      	mov	r4, r0
30006c4e:	4b10      	ldr	r3, [pc, #64]	; (30006c90 <ddr_init_index+0x4c>)
30006c50:	4798      	blx	r3
30006c52:	2c03      	cmp	r4, #3
30006c54:	f3c0 40c4 	ubfx	r0, r0, #19, #5
30006c58:	d014      	beq.n	30006c84 <ddr_init_index+0x40>
30006c5a:	2c01      	cmp	r4, #1
30006c5c:	d00c      	beq.n	30006c78 <ddr_init_index+0x34>
30006c5e:	4e0d      	ldr	r6, [pc, #52]	; (30006c94 <ddr_init_index+0x50>)
30006c60:	4d0d      	ldr	r5, [pc, #52]	; (30006c98 <ddr_init_index+0x54>)
30006c62:	4c0e      	ldr	r4, [pc, #56]	; (30006c9c <ddr_init_index+0x58>)
30006c64:	462b      	mov	r3, r5
30006c66:	2245      	movs	r2, #69	; 0x45
30006c68:	4621      	mov	r1, r4
30006c6a:	2002      	movs	r0, #2
30006c6c:	f002 fb56 	bl	3000931c <rtk_log_write>
30006c70:	f242 7010 	movw	r0, #10000	; 0x2710
30006c74:	47b0      	blx	r6
30006c76:	e7f5      	b.n	30006c64 <ddr_init_index+0x20>
30006c78:	2808      	cmp	r0, #8
30006c7a:	d003      	beq.n	30006c84 <ddr_init_index+0x40>
30006c7c:	2809      	cmp	r0, #9
30006c7e:	d1ee      	bne.n	30006c5e <ddr_init_index+0x1a>
30006c80:	2000      	movs	r0, #0
30006c82:	e000      	b.n	30006c86 <ddr_init_index+0x42>
30006c84:	4620      	mov	r0, r4
30006c86:	b002      	add	sp, #8
30006c88:	bd70      	pop	{r4, r5, r6, pc}
30006c8a:	bf00      	nop
30006c8c:	300065a1 	.word	0x300065a1
30006c90:	30009f8d 	.word	0x30009f8d
30006c94:	00009be5 	.word	0x00009be5
30006c98:	3000c240 	.word	0x3000c240
30006c9c:	3000c25c 	.word	0x3000c25c

30006ca0 <rxi316_perf_tune>:
30006ca0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30006ca4:	4606      	mov	r6, r0
30006ca6:	6800      	ldr	r0, [r0, #0]
30006ca8:	b0c3      	sub	sp, #268	; 0x10c
30006caa:	7985      	ldrb	r5, [r0, #6]
30006cac:	2d00      	cmp	r5, #0
30006cae:	f000 8332 	beq.w	30007316 <rxi316_perf_tune+0x676>
30006cb2:	2d01      	cmp	r5, #1
30006cb4:	d003      	beq.n	30006cbe <rxi316_perf_tune+0x1e>
30006cb6:	2d03      	cmp	r5, #3
30006cb8:	bf14      	ite	ne
30006cba:	2502      	movne	r5, #2
30006cbc:	2500      	moveq	r5, #0
30006cbe:	68f3      	ldr	r3, [r6, #12]
30006cc0:	2420      	movs	r4, #32
30006cc2:	f04f 0a00 	mov.w	sl, #0
30006cc6:	4684      	mov	ip, r0
30006cc8:	685b      	ldr	r3, [r3, #4]
30006cca:	46a3      	mov	fp, r4
30006ccc:	4627      	mov	r7, r4
30006cce:	46a0      	mov	r8, r4
30006cd0:	7859      	ldrb	r1, [r3, #1]
30006cd2:	46a1      	mov	r9, r4
30006cd4:	781a      	ldrb	r2, [r3, #0]
30006cd6:	9123      	str	r1, [sp, #140]	; 0x8c
30006cd8:	7899      	ldrb	r1, [r3, #2]
30006cda:	9124      	str	r1, [sp, #144]	; 0x90
30006cdc:	78d9      	ldrb	r1, [r3, #3]
30006cde:	9125      	str	r1, [sp, #148]	; 0x94
30006ce0:	7919      	ldrb	r1, [r3, #4]
30006ce2:	9126      	str	r1, [sp, #152]	; 0x98
30006ce4:	7959      	ldrb	r1, [r3, #5]
30006ce6:	9127      	str	r1, [sp, #156]	; 0x9c
30006ce8:	7999      	ldrb	r1, [r3, #6]
30006cea:	9128      	str	r1, [sp, #160]	; 0xa0
30006cec:	79d9      	ldrb	r1, [r3, #7]
30006cee:	9129      	str	r1, [sp, #164]	; 0xa4
30006cf0:	7a19      	ldrb	r1, [r3, #8]
30006cf2:	912a      	str	r1, [sp, #168]	; 0xa8
30006cf4:	7a59      	ldrb	r1, [r3, #9]
30006cf6:	912b      	str	r1, [sp, #172]	; 0xac
30006cf8:	7a99      	ldrb	r1, [r3, #10]
30006cfa:	912c      	str	r1, [sp, #176]	; 0xb0
30006cfc:	7ad9      	ldrb	r1, [r3, #11]
30006cfe:	912d      	str	r1, [sp, #180]	; 0xb4
30006d00:	7b19      	ldrb	r1, [r3, #12]
30006d02:	912e      	str	r1, [sp, #184]	; 0xb8
30006d04:	7b59      	ldrb	r1, [r3, #13]
30006d06:	912f      	str	r1, [sp, #188]	; 0xbc
30006d08:	7b99      	ldrb	r1, [r3, #14]
30006d0a:	9130      	str	r1, [sp, #192]	; 0xc0
30006d0c:	7bd9      	ldrb	r1, [r3, #15]
30006d0e:	9131      	str	r1, [sp, #196]	; 0xc4
30006d10:	7c19      	ldrb	r1, [r3, #16]
30006d12:	941d      	str	r4, [sp, #116]	; 0x74
30006d14:	9132      	str	r1, [sp, #200]	; 0xc8
30006d16:	7c59      	ldrb	r1, [r3, #17]
30006d18:	9133      	str	r1, [sp, #204]	; 0xcc
30006d1a:	7c99      	ldrb	r1, [r3, #18]
30006d1c:	9134      	str	r1, [sp, #208]	; 0xd0
30006d1e:	7cd9      	ldrb	r1, [r3, #19]
30006d20:	9135      	str	r1, [sp, #212]	; 0xd4
30006d22:	7d19      	ldrb	r1, [r3, #20]
30006d24:	9136      	str	r1, [sp, #216]	; 0xd8
30006d26:	7d59      	ldrb	r1, [r3, #21]
30006d28:	9137      	str	r1, [sp, #220]	; 0xdc
30006d2a:	7d99      	ldrb	r1, [r3, #22]
30006d2c:	9138      	str	r1, [sp, #224]	; 0xe0
30006d2e:	7dd9      	ldrb	r1, [r3, #23]
30006d30:	9139      	str	r1, [sp, #228]	; 0xe4
30006d32:	7e19      	ldrb	r1, [r3, #24]
30006d34:	913a      	str	r1, [sp, #232]	; 0xe8
30006d36:	7e59      	ldrb	r1, [r3, #25]
30006d38:	913b      	str	r1, [sp, #236]	; 0xec
30006d3a:	7e99      	ldrb	r1, [r3, #26]
30006d3c:	913c      	str	r1, [sp, #240]	; 0xf0
30006d3e:	7ed9      	ldrb	r1, [r3, #27]
30006d40:	913d      	str	r1, [sp, #244]	; 0xf4
30006d42:	7f19      	ldrb	r1, [r3, #28]
30006d44:	913e      	str	r1, [sp, #248]	; 0xf8
30006d46:	7f59      	ldrb	r1, [r3, #29]
30006d48:	913f      	str	r1, [sp, #252]	; 0xfc
30006d4a:	7f99      	ldrb	r1, [r3, #30]
30006d4c:	7fdb      	ldrb	r3, [r3, #31]
30006d4e:	9140      	str	r1, [sp, #256]	; 0x100
30006d50:	4651      	mov	r1, sl
30006d52:	9341      	str	r3, [sp, #260]	; 0x104
30006d54:	4653      	mov	r3, sl
30006d56:	9409      	str	r4, [sp, #36]	; 0x24
30006d58:	941c      	str	r4, [sp, #112]	; 0x70
30006d5a:	941b      	str	r4, [sp, #108]	; 0x6c
30006d5c:	940a      	str	r4, [sp, #40]	; 0x28
30006d5e:	e9cd 4405 	strd	r4, r4, [sp, #20]
30006d62:	e9cd 4403 	strd	r4, r4, [sp, #12]
30006d66:	e9cd 4401 	strd	r4, r4, [sp, #4]
30006d6a:	e9cd 4407 	strd	r4, r4, [sp, #28]
30006d6e:	e9cd 4419 	strd	r4, r4, [sp, #100]	; 0x64
30006d72:	e9cd 4417 	strd	r4, r4, [sp, #92]	; 0x5c
30006d76:	e9cd 4415 	strd	r4, r4, [sp, #84]	; 0x54
30006d7a:	e9cd 4413 	strd	r4, r4, [sp, #76]	; 0x4c
30006d7e:	e9cd 4411 	strd	r4, r4, [sp, #68]	; 0x44
30006d82:	e9cd 440f 	strd	r4, r4, [sp, #60]	; 0x3c
30006d86:	e9cd 440d 	strd	r4, r4, [sp, #52]	; 0x34
30006d8a:	e9cd 440b 	strd	r4, r4, [sp, #44]	; 0x2c
30006d8e:	b94a      	cbnz	r2, 30006da4 <rxi316_perf_tune+0x104>
30006d90:	3101      	adds	r1, #1
30006d92:	4699      	mov	r9, r3
30006d94:	3301      	adds	r3, #1
30006d96:	2b20      	cmp	r3, #32
30006d98:	d069      	beq.n	30006e6e <rxi316_perf_tune+0x1ce>
30006d9a:	aa22      	add	r2, sp, #136	; 0x88
30006d9c:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
30006da0:	2a00      	cmp	r2, #0
30006da2:	d0f5      	beq.n	30006d90 <rxi316_perf_tune+0xf0>
30006da4:	2a01      	cmp	r2, #1
30006da6:	d05d      	beq.n	30006e64 <rxi316_perf_tune+0x1c4>
30006da8:	2a02      	cmp	r2, #2
30006daa:	d06e      	beq.n	30006e8a <rxi316_perf_tune+0x1ea>
30006dac:	2a03      	cmp	r2, #3
30006dae:	d06f      	beq.n	30006e90 <rxi316_perf_tune+0x1f0>
30006db0:	2a04      	cmp	r2, #4
30006db2:	d070      	beq.n	30006e96 <rxi316_perf_tune+0x1f6>
30006db4:	2a05      	cmp	r2, #5
30006db6:	d071      	beq.n	30006e9c <rxi316_perf_tune+0x1fc>
30006db8:	2a06      	cmp	r2, #6
30006dba:	d072      	beq.n	30006ea2 <rxi316_perf_tune+0x202>
30006dbc:	2a07      	cmp	r2, #7
30006dbe:	f000 82ac 	beq.w	3000731a <rxi316_perf_tune+0x67a>
30006dc2:	2a08      	cmp	r2, #8
30006dc4:	f000 837e 	beq.w	300074c4 <rxi316_perf_tune+0x824>
30006dc8:	2a09      	cmp	r2, #9
30006dca:	f000 8383 	beq.w	300074d4 <rxi316_perf_tune+0x834>
30006dce:	2a0a      	cmp	r2, #10
30006dd0:	f000 838a 	beq.w	300074e8 <rxi316_perf_tune+0x848>
30006dd4:	2a0b      	cmp	r2, #11
30006dd6:	f000 8383 	beq.w	300074e0 <rxi316_perf_tune+0x840>
30006dda:	2a0c      	cmp	r2, #12
30006ddc:	f000 8388 	beq.w	300074f0 <rxi316_perf_tune+0x850>
30006de0:	2a0d      	cmp	r2, #13
30006de2:	f000 838d 	beq.w	30007500 <rxi316_perf_tune+0x860>
30006de6:	2a0e      	cmp	r2, #14
30006de8:	f000 8386 	beq.w	300074f8 <rxi316_perf_tune+0x858>
30006dec:	2a0f      	cmp	r2, #15
30006dee:	f000 838b 	beq.w	30007508 <rxi316_perf_tune+0x868>
30006df2:	2a10      	cmp	r2, #16
30006df4:	f000 838c 	beq.w	30007510 <rxi316_perf_tune+0x870>
30006df8:	2a11      	cmp	r2, #17
30006dfa:	f000 838b 	beq.w	30007514 <rxi316_perf_tune+0x874>
30006dfe:	2a12      	cmp	r2, #18
30006e00:	f000 838a 	beq.w	30007518 <rxi316_perf_tune+0x878>
30006e04:	2a13      	cmp	r2, #19
30006e06:	f000 838b 	beq.w	30007520 <rxi316_perf_tune+0x880>
30006e0a:	2a14      	cmp	r2, #20
30006e0c:	f000 8386 	beq.w	3000751c <rxi316_perf_tune+0x87c>
30006e10:	2a15      	cmp	r2, #21
30006e12:	f000 838d 	beq.w	30007530 <rxi316_perf_tune+0x890>
30006e16:	2a16      	cmp	r2, #22
30006e18:	f000 8388 	beq.w	3000752c <rxi316_perf_tune+0x88c>
30006e1c:	2a17      	cmp	r2, #23
30006e1e:	f000 8397 	beq.w	30007550 <rxi316_perf_tune+0x8b0>
30006e22:	2a18      	cmp	r2, #24
30006e24:	f000 8392 	beq.w	3000754c <rxi316_perf_tune+0x8ac>
30006e28:	2a19      	cmp	r2, #25
30006e2a:	f000 838d 	beq.w	30007548 <rxi316_perf_tune+0x8a8>
30006e2e:	2a1a      	cmp	r2, #26
30006e30:	f000 8388 	beq.w	30007544 <rxi316_perf_tune+0x8a4>
30006e34:	2a1b      	cmp	r2, #27
30006e36:	f000 8383 	beq.w	30007540 <rxi316_perf_tune+0x8a0>
30006e3a:	2a1c      	cmp	r2, #28
30006e3c:	f000 837e 	beq.w	3000753c <rxi316_perf_tune+0x89c>
30006e40:	2a1d      	cmp	r2, #29
30006e42:	f000 8379 	beq.w	30007538 <rxi316_perf_tune+0x898>
30006e46:	2a1e      	cmp	r2, #30
30006e48:	f000 8374 	beq.w	30007534 <rxi316_perf_tune+0x894>
30006e4c:	2a1f      	cmp	r2, #31
30006e4e:	f000 836b 	beq.w	30007528 <rxi316_perf_tune+0x888>
30006e52:	2a20      	cmp	r2, #32
30006e54:	f000 8366 	beq.w	30007524 <rxi316_perf_tune+0x884>
30006e58:	9809      	ldr	r0, [sp, #36]	; 0x24
30006e5a:	2a21      	cmp	r2, #33	; 0x21
30006e5c:	bf08      	it	eq
30006e5e:	4618      	moveq	r0, r3
30006e60:	9009      	str	r0, [sp, #36]	; 0x24
30006e62:	e797      	b.n	30006d94 <rxi316_perf_tune+0xf4>
30006e64:	4698      	mov	r8, r3
30006e66:	3301      	adds	r3, #1
30006e68:	3101      	adds	r1, #1
30006e6a:	2b20      	cmp	r3, #32
30006e6c:	d195      	bne.n	30006d9a <rxi316_perf_tune+0xfa>
30006e6e:	f89c 2002 	ldrb.w	r2, [ip, #2]
30006e72:	f8dc 3008 	ldr.w	r3, [ip, #8]
30006e76:	b1ba      	cbz	r2, 30006ea8 <rxi316_perf_tune+0x208>
30006e78:	2a01      	cmp	r2, #1
30006e7a:	f000 832e 	beq.w	300074da <rxi316_perf_tune+0x83a>
30006e7e:	2a03      	cmp	r2, #3
30006e80:	bf0c      	ite	eq
30006e82:	2204      	moveq	r2, #4
30006e84:	2203      	movne	r2, #3
30006e86:	921e      	str	r2, [sp, #120]	; 0x78
30006e88:	e010      	b.n	30006eac <rxi316_perf_tune+0x20c>
30006e8a:	3101      	adds	r1, #1
30006e8c:	461f      	mov	r7, r3
30006e8e:	e781      	b.n	30006d94 <rxi316_perf_tune+0xf4>
30006e90:	3101      	adds	r1, #1
30006e92:	469b      	mov	fp, r3
30006e94:	e77e      	b.n	30006d94 <rxi316_perf_tune+0xf4>
30006e96:	3101      	adds	r1, #1
30006e98:	9301      	str	r3, [sp, #4]
30006e9a:	e77b      	b.n	30006d94 <rxi316_perf_tune+0xf4>
30006e9c:	3101      	adds	r1, #1
30006e9e:	9302      	str	r3, [sp, #8]
30006ea0:	e778      	b.n	30006d94 <rxi316_perf_tune+0xf4>
30006ea2:	3101      	adds	r1, #1
30006ea4:	9303      	str	r3, [sp, #12]
30006ea6:	e775      	b.n	30006d94 <rxi316_perf_tune+0xf4>
30006ea8:	2201      	movs	r2, #1
30006eaa:	921e      	str	r2, [sp, #120]	; 0x78
30006eac:	3b02      	subs	r3, #2
30006eae:	428b      	cmp	r3, r1
30006eb0:	d005      	beq.n	30006ebe <rxi316_perf_tune+0x21e>
30006eb2:	4bab      	ldr	r3, [pc, #684]	; (30007160 <rxi316_perf_tune+0x4c0>)
30006eb4:	2245      	movs	r2, #69	; 0x45
30006eb6:	49ab      	ldr	r1, [pc, #684]	; (30007164 <rxi316_perf_tune+0x4c4>)
30006eb8:	2002      	movs	r0, #2
30006eba:	f002 fa2f 	bl	3000931c <rtk_log_write>
30006ebe:	9b1e      	ldr	r3, [sp, #120]	; 0x78
30006ec0:	459a      	cmp	sl, r3
30006ec2:	d005      	beq.n	30006ed0 <rxi316_perf_tune+0x230>
30006ec4:	4ba8      	ldr	r3, [pc, #672]	; (30007168 <rxi316_perf_tune+0x4c8>)
30006ec6:	2245      	movs	r2, #69	; 0x45
30006ec8:	49a6      	ldr	r1, [pc, #664]	; (30007164 <rxi316_perf_tune+0x4c4>)
30006eca:	2002      	movs	r0, #2
30006ecc:	f002 fa26 	bl	3000931c <rtk_log_write>
30006ed0:	9b0a      	ldr	r3, [sp, #40]	; 0x28
30006ed2:	2b20      	cmp	r3, #32
30006ed4:	f000 82ef 	beq.w	300074b6 <rxi316_perf_tune+0x816>
30006ed8:	1b5a      	subs	r2, r3, r5
30006eda:	3a05      	subs	r2, #5
30006edc:	f002 030f 	and.w	r3, r2, #15
30006ee0:	930a      	str	r3, [sp, #40]	; 0x28
30006ee2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
30006ee4:	2b20      	cmp	r3, #32
30006ee6:	f000 82e4 	beq.w	300074b2 <rxi316_perf_tune+0x812>
30006eea:	1b5a      	subs	r2, r3, r5
30006eec:	3a06      	subs	r2, #6
30006eee:	0112      	lsls	r2, r2, #4
30006ef0:	b2d2      	uxtb	r2, r2
30006ef2:	9b0c      	ldr	r3, [sp, #48]	; 0x30
30006ef4:	2b20      	cmp	r3, #32
30006ef6:	f000 82d8 	beq.w	300074aa <rxi316_perf_tune+0x80a>
30006efa:	1b5b      	subs	r3, r3, r5
30006efc:	3b07      	subs	r3, #7
30006efe:	021b      	lsls	r3, r3, #8
30006f00:	f403 6370 	and.w	r3, r3, #3840	; 0xf00
30006f04:	930b      	str	r3, [sp, #44]	; 0x2c
30006f06:	9b0d      	ldr	r3, [sp, #52]	; 0x34
30006f08:	2b20      	cmp	r3, #32
30006f0a:	f000 8209 	beq.w	30007320 <rxi316_perf_tune+0x680>
30006f0e:	1b5b      	subs	r3, r3, r5
30006f10:	3b08      	subs	r3, #8
30006f12:	031b      	lsls	r3, r3, #12
30006f14:	b29b      	uxth	r3, r3
30006f16:	930c      	str	r3, [sp, #48]	; 0x30
30006f18:	9b0e      	ldr	r3, [sp, #56]	; 0x38
30006f1a:	2b20      	cmp	r3, #32
30006f1c:	f000 8207 	beq.w	3000732e <rxi316_perf_tune+0x68e>
30006f20:	1b5b      	subs	r3, r3, r5
30006f22:	3b09      	subs	r3, #9
30006f24:	041b      	lsls	r3, r3, #16
30006f26:	f403 2370 	and.w	r3, r3, #983040	; 0xf0000
30006f2a:	930d      	str	r3, [sp, #52]	; 0x34
30006f2c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
30006f2e:	2b20      	cmp	r3, #32
30006f30:	f000 8204 	beq.w	3000733c <rxi316_perf_tune+0x69c>
30006f34:	1b5b      	subs	r3, r3, r5
30006f36:	3b0a      	subs	r3, #10
30006f38:	051b      	lsls	r3, r3, #20
30006f3a:	f403 0370 	and.w	r3, r3, #15728640	; 0xf00000
30006f3e:	930e      	str	r3, [sp, #56]	; 0x38
30006f40:	9b10      	ldr	r3, [sp, #64]	; 0x40
30006f42:	2b20      	cmp	r3, #32
30006f44:	f000 8201 	beq.w	3000734a <rxi316_perf_tune+0x6aa>
30006f48:	1b5b      	subs	r3, r3, r5
30006f4a:	3b0b      	subs	r3, #11
30006f4c:	061b      	lsls	r3, r3, #24
30006f4e:	f003 6370 	and.w	r3, r3, #251658240	; 0xf000000
30006f52:	930f      	str	r3, [sp, #60]	; 0x3c
30006f54:	9b11      	ldr	r3, [sp, #68]	; 0x44
30006f56:	2b20      	cmp	r3, #32
30006f58:	f000 81fe 	beq.w	30007358 <rxi316_perf_tune+0x6b8>
30006f5c:	1b5b      	subs	r3, r3, r5
30006f5e:	3b0c      	subs	r3, #12
30006f60:	071b      	lsls	r3, r3, #28
30006f62:	9310      	str	r3, [sp, #64]	; 0x40
30006f64:	9b12      	ldr	r3, [sp, #72]	; 0x48
30006f66:	2b20      	cmp	r3, #32
30006f68:	f000 81fd 	beq.w	30007366 <rxi316_perf_tune+0x6c6>
30006f6c:	1b5b      	subs	r3, r3, r5
30006f6e:	3b0d      	subs	r3, #13
30006f70:	f003 030f 	and.w	r3, r3, #15
30006f74:	9311      	str	r3, [sp, #68]	; 0x44
30006f76:	9b13      	ldr	r3, [sp, #76]	; 0x4c
30006f78:	2b20      	cmp	r3, #32
30006f7a:	f000 81fa 	beq.w	30007372 <rxi316_perf_tune+0x6d2>
30006f7e:	1b5b      	subs	r3, r3, r5
30006f80:	3b0e      	subs	r3, #14
30006f82:	011b      	lsls	r3, r3, #4
30006f84:	b2db      	uxtb	r3, r3
30006f86:	9312      	str	r3, [sp, #72]	; 0x48
30006f88:	9b14      	ldr	r3, [sp, #80]	; 0x50
30006f8a:	2b20      	cmp	r3, #32
30006f8c:	f000 81f7 	beq.w	3000737e <rxi316_perf_tune+0x6de>
30006f90:	1b5b      	subs	r3, r3, r5
30006f92:	3b0f      	subs	r3, #15
30006f94:	021b      	lsls	r3, r3, #8
30006f96:	f403 6370 	and.w	r3, r3, #3840	; 0xf00
30006f9a:	9313      	str	r3, [sp, #76]	; 0x4c
30006f9c:	9b15      	ldr	r3, [sp, #84]	; 0x54
30006f9e:	2b20      	cmp	r3, #32
30006fa0:	f000 81f4 	beq.w	3000738c <rxi316_perf_tune+0x6ec>
30006fa4:	1b5b      	subs	r3, r3, r5
30006fa6:	031b      	lsls	r3, r3, #12
30006fa8:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
30006fac:	9321      	str	r3, [sp, #132]	; 0x84
30006fae:	9b16      	ldr	r3, [sp, #88]	; 0x58
30006fb0:	2b20      	cmp	r3, #32
30006fb2:	f000 81f2 	beq.w	3000739a <rxi316_perf_tune+0x6fa>
30006fb6:	1b5b      	subs	r3, r3, r5
30006fb8:	3b11      	subs	r3, #17
30006fba:	041b      	lsls	r3, r3, #16
30006fbc:	f403 2370 	and.w	r3, r3, #983040	; 0xf0000
30006fc0:	9320      	str	r3, [sp, #128]	; 0x80
30006fc2:	9b17      	ldr	r3, [sp, #92]	; 0x5c
30006fc4:	2b20      	cmp	r3, #32
30006fc6:	f000 81ef 	beq.w	300073a8 <rxi316_perf_tune+0x708>
30006fca:	1b5b      	subs	r3, r3, r5
30006fcc:	3b12      	subs	r3, #18
30006fce:	051b      	lsls	r3, r3, #20
30006fd0:	f403 0370 	and.w	r3, r3, #15728640	; 0xf00000
30006fd4:	931f      	str	r3, [sp, #124]	; 0x7c
30006fd6:	9b18      	ldr	r3, [sp, #96]	; 0x60
30006fd8:	2b20      	cmp	r3, #32
30006fda:	f000 81ec 	beq.w	300073b6 <rxi316_perf_tune+0x716>
30006fde:	1b5b      	subs	r3, r3, r5
30006fe0:	3b13      	subs	r3, #19
30006fe2:	061b      	lsls	r3, r3, #24
30006fe4:	f003 6370 	and.w	r3, r3, #251658240	; 0xf000000
30006fe8:	931e      	str	r3, [sp, #120]	; 0x78
30006fea:	9b19      	ldr	r3, [sp, #100]	; 0x64
30006fec:	2b20      	cmp	r3, #32
30006fee:	f000 81e9 	beq.w	300073c4 <rxi316_perf_tune+0x724>
30006ff2:	1b5b      	subs	r3, r3, r5
30006ff4:	3b14      	subs	r3, #20
30006ff6:	071b      	lsls	r3, r3, #28
30006ff8:	9319      	str	r3, [sp, #100]	; 0x64
30006ffa:	9b1a      	ldr	r3, [sp, #104]	; 0x68
30006ffc:	2b20      	cmp	r3, #32
30006ffe:	f000 81e8 	beq.w	300073d2 <rxi316_perf_tune+0x732>
30007002:	1b5b      	subs	r3, r3, r5
30007004:	3b15      	subs	r3, #21
30007006:	f003 030f 	and.w	r3, r3, #15
3000700a:	9318      	str	r3, [sp, #96]	; 0x60
3000700c:	9b07      	ldr	r3, [sp, #28]
3000700e:	2b20      	cmp	r3, #32
30007010:	f000 81e5 	beq.w	300073de <rxi316_perf_tune+0x73e>
30007014:	1b5b      	subs	r3, r3, r5
30007016:	3b02      	subs	r3, #2
30007018:	f003 031f 	and.w	r3, r3, #31
3000701c:	9317      	str	r3, [sp, #92]	; 0x5c
3000701e:	9b08      	ldr	r3, [sp, #32]
30007020:	2b20      	cmp	r3, #32
30007022:	f000 81e2 	beq.w	300073ea <rxi316_perf_tune+0x74a>
30007026:	1b5b      	subs	r3, r3, r5
30007028:	3b02      	subs	r3, #2
3000702a:	015b      	lsls	r3, r3, #5
3000702c:	f403 7378 	and.w	r3, r3, #992	; 0x3e0
30007030:	9316      	str	r3, [sp, #88]	; 0x58
30007032:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
30007034:	2b20      	cmp	r3, #32
30007036:	f000 81df 	beq.w	300073f8 <rxi316_perf_tune+0x758>
3000703a:	1b5b      	subs	r3, r3, r5
3000703c:	f1b9 0f20 	cmp.w	r9, #32
30007040:	f1a3 0302 	sub.w	r3, r3, #2
30007044:	ea4f 2383 	mov.w	r3, r3, lsl #10
30007048:	f403 43f8 	and.w	r3, r3, #31744	; 0x7c00
3000704c:	9315      	str	r3, [sp, #84]	; 0x54
3000704e:	f000 81da 	beq.w	30007406 <rxi316_perf_tune+0x766>
30007052:	eba9 0105 	sub.w	r1, r9, r5
30007056:	f1b8 0f20 	cmp.w	r8, #32
3000705a:	f1a1 0102 	sub.w	r1, r1, #2
3000705e:	f001 030f 	and.w	r3, r1, #15
30007062:	9314      	str	r3, [sp, #80]	; 0x50
30007064:	f000 81d5 	beq.w	30007412 <rxi316_perf_tune+0x772>
30007068:	eba8 0105 	sub.w	r1, r8, r5
3000706c:	2f20      	cmp	r7, #32
3000706e:	f1a1 0103 	sub.w	r1, r1, #3
30007072:	ea4f 1101 	mov.w	r1, r1, lsl #4
30007076:	b2c9      	uxtb	r1, r1
30007078:	f000 81d0 	beq.w	3000741c <rxi316_perf_tune+0x77c>
3000707c:	1b7b      	subs	r3, r7, r5
3000707e:	f1bb 0f20 	cmp.w	fp, #32
30007082:	f1a3 0304 	sub.w	r3, r3, #4
30007086:	ea4f 2303 	mov.w	r3, r3, lsl #8
3000708a:	f403 6370 	and.w	r3, r3, #3840	; 0xf00
3000708e:	9308      	str	r3, [sp, #32]
30007090:	f000 81cb 	beq.w	3000742a <rxi316_perf_tune+0x78a>
30007094:	ebab 0305 	sub.w	r3, fp, r5
30007098:	3b05      	subs	r3, #5
3000709a:	031b      	lsls	r3, r3, #12
3000709c:	b29b      	uxth	r3, r3
3000709e:	9307      	str	r3, [sp, #28]
300070a0:	9b01      	ldr	r3, [sp, #4]
300070a2:	2b20      	cmp	r3, #32
300070a4:	f000 81c8 	beq.w	30007438 <rxi316_perf_tune+0x798>
300070a8:	eba3 0c05 	sub.w	ip, r3, r5
300070ac:	9b02      	ldr	r3, [sp, #8]
300070ae:	f1ac 0c06 	sub.w	ip, ip, #6
300070b2:	2b20      	cmp	r3, #32
300070b4:	ea4f 4c0c 	mov.w	ip, ip, lsl #16
300070b8:	f40c 2c70 	and.w	ip, ip, #983040	; 0xf0000
300070bc:	f000 81c2 	beq.w	30007444 <rxi316_perf_tune+0x7a4>
300070c0:	eba3 0e05 	sub.w	lr, r3, r5
300070c4:	9b03      	ldr	r3, [sp, #12]
300070c6:	f1ae 0e07 	sub.w	lr, lr, #7
300070ca:	2b20      	cmp	r3, #32
300070cc:	ea4f 5e0e 	mov.w	lr, lr, lsl #20
300070d0:	f40e 0e70 	and.w	lr, lr, #15728640	; 0xf00000
300070d4:	f000 81bc 	beq.w	30007450 <rxi316_perf_tune+0x7b0>
300070d8:	eba3 0805 	sub.w	r8, r3, r5
300070dc:	9b04      	ldr	r3, [sp, #16]
300070de:	f1a8 0808 	sub.w	r8, r8, #8
300070e2:	2b20      	cmp	r3, #32
300070e4:	ea4f 6808 	mov.w	r8, r8, lsl #24
300070e8:	f008 6870 	and.w	r8, r8, #251658240	; 0xf000000
300070ec:	f000 81b6 	beq.w	3000745c <rxi316_perf_tune+0x7bc>
300070f0:	1b5b      	subs	r3, r3, r5
300070f2:	3b09      	subs	r3, #9
300070f4:	071b      	lsls	r3, r3, #28
300070f6:	9302      	str	r3, [sp, #8]
300070f8:	9b05      	ldr	r3, [sp, #20]
300070fa:	2b20      	cmp	r3, #32
300070fc:	f000 81b5 	beq.w	3000746a <rxi316_perf_tune+0x7ca>
30007100:	eba3 0905 	sub.w	r9, r3, r5
30007104:	9b06      	ldr	r3, [sp, #24]
30007106:	f1a9 090a 	sub.w	r9, r9, #10
3000710a:	2b20      	cmp	r3, #32
3000710c:	f009 090f 	and.w	r9, r9, #15
30007110:	f000 81b1 	beq.w	30007476 <rxi316_perf_tune+0x7d6>
30007114:	1b58      	subs	r0, r3, r5
30007116:	9b1c      	ldr	r3, [sp, #112]	; 0x70
30007118:	380b      	subs	r0, #11
3000711a:	2b20      	cmp	r3, #32
3000711c:	ea4f 1000 	mov.w	r0, r0, lsl #4
30007120:	b2c0      	uxtb	r0, r0
30007122:	f000 81ad 	beq.w	30007480 <rxi316_perf_tune+0x7e0>
30007126:	eba3 0b05 	sub.w	fp, r3, r5
3000712a:	9b09      	ldr	r3, [sp, #36]	; 0x24
3000712c:	f1ab 0b02 	sub.w	fp, fp, #2
30007130:	2b20      	cmp	r3, #32
30007132:	f00b 0b1f 	and.w	fp, fp, #31
30007136:	f000 81a9 	beq.w	3000748c <rxi316_perf_tune+0x7ec>
3000713a:	eba3 0a05 	sub.w	sl, r3, r5
3000713e:	9b1d      	ldr	r3, [sp, #116]	; 0x74
30007140:	f1aa 0a02 	sub.w	sl, sl, #2
30007144:	2b20      	cmp	r3, #32
30007146:	f00a 0a1f 	and.w	sl, sl, #31
3000714a:	f000 81a5 	beq.w	30007498 <rxi316_perf_tune+0x7f8>
3000714e:	1b5f      	subs	r7, r3, r5
30007150:	2c20      	cmp	r4, #32
30007152:	f1a7 0702 	sub.w	r7, r7, #2
30007156:	f007 071f 	and.w	r7, r7, #31
3000715a:	f000 81a2 	beq.w	300074a2 <rxi316_perf_tune+0x802>
3000715e:	e005      	b.n	3000716c <rxi316_perf_tune+0x4cc>
30007160:	3000c260 	.word	0x3000c260
30007164:	3000c25c 	.word	0x3000c25c
30007168:	3000c29c 	.word	0x3000c29c
3000716c:	1b63      	subs	r3, r4, r5
3000716e:	3b02      	subs	r3, #2
30007170:	015b      	lsls	r3, r3, #5
30007172:	f403 7378 	and.w	r3, r3, #992	; 0x3e0
30007176:	9301      	str	r3, [sp, #4]
30007178:	9c0a      	ldr	r4, [sp, #40]	; 0x28
3000717a:	ea40 0009 	orr.w	r0, r0, r9
3000717e:	4314      	orrs	r4, r2
30007180:	4622      	mov	r2, r4
30007182:	e9dd 4511 	ldrd	r4, r5, [sp, #68]	; 0x44
30007186:	432c      	orrs	r4, r5
30007188:	9d14      	ldr	r5, [sp, #80]	; 0x50
3000718a:	4329      	orrs	r1, r5
3000718c:	e9dd 5316 	ldrd	r5, r3, [sp, #88]	; 0x58
30007190:	431d      	orrs	r5, r3
30007192:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
30007194:	431a      	orrs	r2, r3
30007196:	9b13      	ldr	r3, [sp, #76]	; 0x4c
30007198:	431c      	orrs	r4, r3
3000719a:	9b08      	ldr	r3, [sp, #32]
3000719c:	4319      	orrs	r1, r3
3000719e:	9b15      	ldr	r3, [sp, #84]	; 0x54
300071a0:	431d      	orrs	r5, r3
300071a2:	9b0c      	ldr	r3, [sp, #48]	; 0x30
300071a4:	431a      	orrs	r2, r3
300071a6:	9b21      	ldr	r3, [sp, #132]	; 0x84
300071a8:	431c      	orrs	r4, r3
300071aa:	9b07      	ldr	r3, [sp, #28]
300071ac:	4319      	orrs	r1, r3
300071ae:	9b0d      	ldr	r3, [sp, #52]	; 0x34
300071b0:	431a      	orrs	r2, r3
300071b2:	9b20      	ldr	r3, [sp, #128]	; 0x80
300071b4:	ea41 010c 	orr.w	r1, r1, ip
300071b8:	431c      	orrs	r4, r3
300071ba:	9b01      	ldr	r3, [sp, #4]
300071bc:	ea41 010e 	orr.w	r1, r1, lr
300071c0:	431f      	orrs	r7, r3
300071c2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
300071c4:	ea41 0108 	orr.w	r1, r1, r8
300071c8:	431a      	orrs	r2, r3
300071ca:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
300071cc:	431c      	orrs	r4, r3
300071ce:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
300071d0:	431a      	orrs	r2, r3
300071d2:	9b1e      	ldr	r3, [sp, #120]	; 0x78
300071d4:	4323      	orrs	r3, r4
300071d6:	9c10      	ldr	r4, [sp, #64]	; 0x40
300071d8:	4322      	orrs	r2, r4
300071da:	9c19      	ldr	r4, [sp, #100]	; 0x64
300071dc:	4323      	orrs	r3, r4
300071de:	9c02      	ldr	r4, [sp, #8]
300071e0:	430c      	orrs	r4, r1
300071e2:	49ba      	ldr	r1, [pc, #744]	; (300074cc <rxi316_perf_tune+0x82c>)
300071e4:	f8c1 2400 	str.w	r2, [r1, #1024]	; 0x400
300071e8:	f8c1 3404 	str.w	r3, [r1, #1028]	; 0x404
300071ec:	9b18      	ldr	r3, [sp, #96]	; 0x60
300071ee:	f8c1 3408 	str.w	r3, [r1, #1032]	; 0x408
300071f2:	f8c1 540c 	str.w	r5, [r1, #1036]	; 0x40c
300071f6:	f8c1 4410 	str.w	r4, [r1, #1040]	; 0x410
300071fa:	f8c1 0414 	str.w	r0, [r1, #1044]	; 0x414
300071fe:	f8c1 b418 	str.w	fp, [r1, #1048]	; 0x418
30007202:	f8c1 a41c 	str.w	sl, [r1, #1052]	; 0x41c
30007206:	f8c1 7420 	str.w	r7, [r1, #1056]	; 0x420
3000720a:	68f3      	ldr	r3, [r6, #12]
3000720c:	689a      	ldr	r2, [r3, #8]
3000720e:	e9d2 3200 	ldrd	r3, r2, [r2]
30007212:	f003 0301 	and.w	r3, r3, #1
30007216:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
3000721a:	f8c1 3460 	str.w	r3, [r1, #1120]	; 0x460
3000721e:	68f3      	ldr	r3, [r6, #12]
30007220:	689a      	ldr	r2, [r3, #8]
30007222:	7a13      	ldrb	r3, [r2, #8]
30007224:	6950      	ldr	r0, [r2, #20]
30007226:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
3000722a:	e9d2 0203 	ldrd	r0, r2, [r2, #12]
3000722e:	0200      	lsls	r0, r0, #8
30007230:	0412      	lsls	r2, r2, #16
30007232:	b280      	uxth	r0, r0
30007234:	f402 027f 	and.w	r2, r2, #16711680	; 0xff0000
30007238:	4303      	orrs	r3, r0
3000723a:	4313      	orrs	r3, r2
3000723c:	f8c1 3464 	str.w	r3, [r1, #1124]	; 0x464
30007240:	68f3      	ldr	r3, [r6, #12]
30007242:	6898      	ldr	r0, [r3, #8]
30007244:	e9d0 3207 	ldrd	r3, r2, [r0, #28]
30007248:	7e00      	ldrb	r0, [r0, #24]
3000724a:	021b      	lsls	r3, r3, #8
3000724c:	0412      	lsls	r2, r2, #16
3000724e:	b29b      	uxth	r3, r3
30007250:	f402 027f 	and.w	r2, r2, #16711680	; 0xff0000
30007254:	4313      	orrs	r3, r2
30007256:	4303      	orrs	r3, r0
30007258:	f8c1 3468 	str.w	r3, [r1, #1128]	; 0x468
3000725c:	68f3      	ldr	r3, [r6, #12]
3000725e:	689a      	ldr	r2, [r3, #8]
30007260:	e9d2 2309 	ldrd	r2, r3, [r2, #36]	; 0x24
30007264:	041b      	lsls	r3, r3, #16
30007266:	f002 023f 	and.w	r2, r2, #63	; 0x3f
3000726a:	f403 2370 	and.w	r3, r3, #983040	; 0xf0000
3000726e:	4313      	orrs	r3, r2
30007270:	f8c1 3480 	str.w	r3, [r1, #1152]	; 0x480
30007274:	6833      	ldr	r3, [r6, #0]
30007276:	781b      	ldrb	r3, [r3, #0]
30007278:	2b03      	cmp	r3, #3
3000727a:	f000 811f 	beq.w	300074bc <rxi316_perf_tune+0x81c>
3000727e:	68f3      	ldr	r3, [r6, #12]
30007280:	6899      	ldr	r1, [r3, #8]
30007282:	6b0b      	ldr	r3, [r1, #48]	; 0x30
30007284:	005b      	lsls	r3, r3, #1
30007286:	f003 0302 	and.w	r3, r3, #2
3000728a:	6b8a      	ldr	r2, [r1, #56]	; 0x38
3000728c:	6ac8      	ldr	r0, [r1, #44]	; 0x2c
3000728e:	0412      	lsls	r2, r2, #16
30007290:	6b49      	ldr	r1, [r1, #52]	; 0x34
30007292:	f000 0001 	and.w	r0, r0, #1
30007296:	f402 2270 	and.w	r2, r2, #983040	; 0xf0000
3000729a:	0209      	lsls	r1, r1, #8
3000729c:	431a      	orrs	r2, r3
3000729e:	f401 6170 	and.w	r1, r1, #3840	; 0xf00
300072a2:	4b8a      	ldr	r3, [pc, #552]	; (300074cc <rxi316_perf_tune+0x82c>)
300072a4:	4302      	orrs	r2, r0
300072a6:	488a      	ldr	r0, [pc, #552]	; (300074d0 <rxi316_perf_tune+0x830>)
300072a8:	430a      	orrs	r2, r1
300072aa:	4310      	orrs	r0, r2
300072ac:	f8c3 0484 	str.w	r0, [r3, #1156]	; 0x484
300072b0:	68f2      	ldr	r2, [r6, #12]
300072b2:	6892      	ldr	r2, [r2, #8]
300072b4:	6bd2      	ldr	r2, [r2, #60]	; 0x3c
300072b6:	f8c3 2488 	str.w	r2, [r3, #1160]	; 0x488
300072ba:	68f2      	ldr	r2, [r6, #12]
300072bc:	6892      	ldr	r2, [r2, #8]
300072be:	6c12      	ldr	r2, [r2, #64]	; 0x40
300072c0:	f8c3 248c 	str.w	r2, [r3, #1164]	; 0x48c
300072c4:	68f2      	ldr	r2, [r6, #12]
300072c6:	6892      	ldr	r2, [r2, #8]
300072c8:	6c52      	ldr	r2, [r2, #68]	; 0x44
300072ca:	f8c3 2490 	str.w	r2, [r3, #1168]	; 0x490
300072ce:	68f2      	ldr	r2, [r6, #12]
300072d0:	6892      	ldr	r2, [r2, #8]
300072d2:	6c92      	ldr	r2, [r2, #72]	; 0x48
300072d4:	f8c3 2494 	str.w	r2, [r3, #1172]	; 0x494
300072d8:	68f2      	ldr	r2, [r6, #12]
300072da:	6892      	ldr	r2, [r2, #8]
300072dc:	6cd2      	ldr	r2, [r2, #76]	; 0x4c
300072de:	f8c3 2498 	str.w	r2, [r3, #1176]	; 0x498
300072e2:	68f2      	ldr	r2, [r6, #12]
300072e4:	6892      	ldr	r2, [r2, #8]
300072e6:	6d12      	ldr	r2, [r2, #80]	; 0x50
300072e8:	f002 020f 	and.w	r2, r2, #15
300072ec:	f8c3 24a0 	str.w	r2, [r3, #1184]	; 0x4a0
300072f0:	f8d3 2470 	ldr.w	r2, [r3, #1136]	; 0x470
300072f4:	f022 023f 	bic.w	r2, r2, #63	; 0x3f
300072f8:	f042 0204 	orr.w	r2, r2, #4
300072fc:	f8c3 2470 	str.w	r2, [r3, #1136]	; 0x470
30007300:	f8d3 2474 	ldr.w	r2, [r3, #1140]	; 0x474
30007304:	f422 4270 	bic.w	r2, r2, #61440	; 0xf000
30007308:	f442 4280 	orr.w	r2, r2, #16384	; 0x4000
3000730c:	f8c3 2474 	str.w	r2, [r3, #1140]	; 0x474
30007310:	b043      	add	sp, #268	; 0x10c
30007312:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30007316:	2502      	movs	r5, #2
30007318:	e4d1      	b.n	30006cbe <rxi316_perf_tune+0x1e>
3000731a:	3101      	adds	r1, #1
3000731c:	9304      	str	r3, [sp, #16]
3000731e:	e539      	b.n	30006d94 <rxi316_perf_tune+0xf4>
30007320:	f44f 4370 	mov.w	r3, #61440	; 0xf000
30007324:	930c      	str	r3, [sp, #48]	; 0x30
30007326:	9b0e      	ldr	r3, [sp, #56]	; 0x38
30007328:	2b20      	cmp	r3, #32
3000732a:	f47f adf9 	bne.w	30006f20 <rxi316_perf_tune+0x280>
3000732e:	f44f 2370 	mov.w	r3, #983040	; 0xf0000
30007332:	930d      	str	r3, [sp, #52]	; 0x34
30007334:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
30007336:	2b20      	cmp	r3, #32
30007338:	f47f adfc 	bne.w	30006f34 <rxi316_perf_tune+0x294>
3000733c:	f44f 0370 	mov.w	r3, #15728640	; 0xf00000
30007340:	930e      	str	r3, [sp, #56]	; 0x38
30007342:	9b10      	ldr	r3, [sp, #64]	; 0x40
30007344:	2b20      	cmp	r3, #32
30007346:	f47f adff 	bne.w	30006f48 <rxi316_perf_tune+0x2a8>
3000734a:	f04f 6370 	mov.w	r3, #251658240	; 0xf000000
3000734e:	930f      	str	r3, [sp, #60]	; 0x3c
30007350:	9b11      	ldr	r3, [sp, #68]	; 0x44
30007352:	2b20      	cmp	r3, #32
30007354:	f47f ae02 	bne.w	30006f5c <rxi316_perf_tune+0x2bc>
30007358:	f04f 4370 	mov.w	r3, #4026531840	; 0xf0000000
3000735c:	9310      	str	r3, [sp, #64]	; 0x40
3000735e:	9b12      	ldr	r3, [sp, #72]	; 0x48
30007360:	2b20      	cmp	r3, #32
30007362:	f47f ae03 	bne.w	30006f6c <rxi316_perf_tune+0x2cc>
30007366:	230f      	movs	r3, #15
30007368:	9311      	str	r3, [sp, #68]	; 0x44
3000736a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
3000736c:	2b20      	cmp	r3, #32
3000736e:	f47f ae06 	bne.w	30006f7e <rxi316_perf_tune+0x2de>
30007372:	23f0      	movs	r3, #240	; 0xf0
30007374:	9312      	str	r3, [sp, #72]	; 0x48
30007376:	9b14      	ldr	r3, [sp, #80]	; 0x50
30007378:	2b20      	cmp	r3, #32
3000737a:	f47f ae09 	bne.w	30006f90 <rxi316_perf_tune+0x2f0>
3000737e:	f44f 6370 	mov.w	r3, #3840	; 0xf00
30007382:	9313      	str	r3, [sp, #76]	; 0x4c
30007384:	9b15      	ldr	r3, [sp, #84]	; 0x54
30007386:	2b20      	cmp	r3, #32
30007388:	f47f ae0c 	bne.w	30006fa4 <rxi316_perf_tune+0x304>
3000738c:	f44f 4370 	mov.w	r3, #61440	; 0xf000
30007390:	9321      	str	r3, [sp, #132]	; 0x84
30007392:	9b16      	ldr	r3, [sp, #88]	; 0x58
30007394:	2b20      	cmp	r3, #32
30007396:	f47f ae0e 	bne.w	30006fb6 <rxi316_perf_tune+0x316>
3000739a:	f44f 2370 	mov.w	r3, #983040	; 0xf0000
3000739e:	9320      	str	r3, [sp, #128]	; 0x80
300073a0:	9b17      	ldr	r3, [sp, #92]	; 0x5c
300073a2:	2b20      	cmp	r3, #32
300073a4:	f47f ae11 	bne.w	30006fca <rxi316_perf_tune+0x32a>
300073a8:	f44f 0370 	mov.w	r3, #15728640	; 0xf00000
300073ac:	931f      	str	r3, [sp, #124]	; 0x7c
300073ae:	9b18      	ldr	r3, [sp, #96]	; 0x60
300073b0:	2b20      	cmp	r3, #32
300073b2:	f47f ae14 	bne.w	30006fde <rxi316_perf_tune+0x33e>
300073b6:	f04f 6370 	mov.w	r3, #251658240	; 0xf000000
300073ba:	931e      	str	r3, [sp, #120]	; 0x78
300073bc:	9b19      	ldr	r3, [sp, #100]	; 0x64
300073be:	2b20      	cmp	r3, #32
300073c0:	f47f ae17 	bne.w	30006ff2 <rxi316_perf_tune+0x352>
300073c4:	f04f 4370 	mov.w	r3, #4026531840	; 0xf0000000
300073c8:	9319      	str	r3, [sp, #100]	; 0x64
300073ca:	9b1a      	ldr	r3, [sp, #104]	; 0x68
300073cc:	2b20      	cmp	r3, #32
300073ce:	f47f ae18 	bne.w	30007002 <rxi316_perf_tune+0x362>
300073d2:	230f      	movs	r3, #15
300073d4:	9318      	str	r3, [sp, #96]	; 0x60
300073d6:	9b07      	ldr	r3, [sp, #28]
300073d8:	2b20      	cmp	r3, #32
300073da:	f47f ae1b 	bne.w	30007014 <rxi316_perf_tune+0x374>
300073de:	231f      	movs	r3, #31
300073e0:	9317      	str	r3, [sp, #92]	; 0x5c
300073e2:	9b08      	ldr	r3, [sp, #32]
300073e4:	2b20      	cmp	r3, #32
300073e6:	f47f ae1e 	bne.w	30007026 <rxi316_perf_tune+0x386>
300073ea:	f44f 7378 	mov.w	r3, #992	; 0x3e0
300073ee:	9316      	str	r3, [sp, #88]	; 0x58
300073f0:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
300073f2:	2b20      	cmp	r3, #32
300073f4:	f47f ae21 	bne.w	3000703a <rxi316_perf_tune+0x39a>
300073f8:	f44f 43f8 	mov.w	r3, #31744	; 0x7c00
300073fc:	f1b9 0f20 	cmp.w	r9, #32
30007400:	9315      	str	r3, [sp, #84]	; 0x54
30007402:	f47f ae26 	bne.w	30007052 <rxi316_perf_tune+0x3b2>
30007406:	230f      	movs	r3, #15
30007408:	f1b8 0f20 	cmp.w	r8, #32
3000740c:	9314      	str	r3, [sp, #80]	; 0x50
3000740e:	f47f ae2b 	bne.w	30007068 <rxi316_perf_tune+0x3c8>
30007412:	2f20      	cmp	r7, #32
30007414:	f04f 01f0 	mov.w	r1, #240	; 0xf0
30007418:	f47f ae30 	bne.w	3000707c <rxi316_perf_tune+0x3dc>
3000741c:	f44f 6370 	mov.w	r3, #3840	; 0xf00
30007420:	f1bb 0f20 	cmp.w	fp, #32
30007424:	9308      	str	r3, [sp, #32]
30007426:	f47f ae35 	bne.w	30007094 <rxi316_perf_tune+0x3f4>
3000742a:	f44f 4370 	mov.w	r3, #61440	; 0xf000
3000742e:	9307      	str	r3, [sp, #28]
30007430:	9b01      	ldr	r3, [sp, #4]
30007432:	2b20      	cmp	r3, #32
30007434:	f47f ae38 	bne.w	300070a8 <rxi316_perf_tune+0x408>
30007438:	9b02      	ldr	r3, [sp, #8]
3000743a:	f44f 2c70 	mov.w	ip, #983040	; 0xf0000
3000743e:	2b20      	cmp	r3, #32
30007440:	f47f ae3e 	bne.w	300070c0 <rxi316_perf_tune+0x420>
30007444:	9b03      	ldr	r3, [sp, #12]
30007446:	f44f 0e70 	mov.w	lr, #15728640	; 0xf00000
3000744a:	2b20      	cmp	r3, #32
3000744c:	f47f ae44 	bne.w	300070d8 <rxi316_perf_tune+0x438>
30007450:	9b04      	ldr	r3, [sp, #16]
30007452:	f04f 6870 	mov.w	r8, #251658240	; 0xf000000
30007456:	2b20      	cmp	r3, #32
30007458:	f47f ae4a 	bne.w	300070f0 <rxi316_perf_tune+0x450>
3000745c:	f04f 4370 	mov.w	r3, #4026531840	; 0xf0000000
30007460:	9302      	str	r3, [sp, #8]
30007462:	9b05      	ldr	r3, [sp, #20]
30007464:	2b20      	cmp	r3, #32
30007466:	f47f ae4b 	bne.w	30007100 <rxi316_perf_tune+0x460>
3000746a:	9b06      	ldr	r3, [sp, #24]
3000746c:	f04f 090f 	mov.w	r9, #15
30007470:	2b20      	cmp	r3, #32
30007472:	f47f ae4f 	bne.w	30007114 <rxi316_perf_tune+0x474>
30007476:	9b1c      	ldr	r3, [sp, #112]	; 0x70
30007478:	20f0      	movs	r0, #240	; 0xf0
3000747a:	2b20      	cmp	r3, #32
3000747c:	f47f ae53 	bne.w	30007126 <rxi316_perf_tune+0x486>
30007480:	9b09      	ldr	r3, [sp, #36]	; 0x24
30007482:	f04f 0b1f 	mov.w	fp, #31
30007486:	2b20      	cmp	r3, #32
30007488:	f47f ae57 	bne.w	3000713a <rxi316_perf_tune+0x49a>
3000748c:	9b1d      	ldr	r3, [sp, #116]	; 0x74
3000748e:	f04f 0a1f 	mov.w	sl, #31
30007492:	2b20      	cmp	r3, #32
30007494:	f47f ae5b 	bne.w	3000714e <rxi316_perf_tune+0x4ae>
30007498:	2c20      	cmp	r4, #32
3000749a:	f04f 071f 	mov.w	r7, #31
3000749e:	f47f ae65 	bne.w	3000716c <rxi316_perf_tune+0x4cc>
300074a2:	f44f 7378 	mov.w	r3, #992	; 0x3e0
300074a6:	9301      	str	r3, [sp, #4]
300074a8:	e666      	b.n	30007178 <rxi316_perf_tune+0x4d8>
300074aa:	f44f 6370 	mov.w	r3, #3840	; 0xf00
300074ae:	930b      	str	r3, [sp, #44]	; 0x2c
300074b0:	e529      	b.n	30006f06 <rxi316_perf_tune+0x266>
300074b2:	22f0      	movs	r2, #240	; 0xf0
300074b4:	e51d      	b.n	30006ef2 <rxi316_perf_tune+0x252>
300074b6:	230f      	movs	r3, #15
300074b8:	930a      	str	r3, [sp, #40]	; 0x28
300074ba:	e512      	b.n	30006ee2 <rxi316_perf_tune+0x242>
300074bc:	68f2      	ldr	r2, [r6, #12]
300074be:	2302      	movs	r3, #2
300074c0:	6891      	ldr	r1, [r2, #8]
300074c2:	e6e2      	b.n	3000728a <rxi316_perf_tune+0x5ea>
300074c4:	3101      	adds	r1, #1
300074c6:	9305      	str	r3, [sp, #20]
300074c8:	e464      	b.n	30006d94 <rxi316_perf_tune+0xf4>
300074ca:	bf00      	nop
300074cc:	41100000 	.word	0x41100000
300074d0:	40000008 	.word	0x40000008
300074d4:	3101      	adds	r1, #1
300074d6:	9306      	str	r3, [sp, #24]
300074d8:	e45c      	b.n	30006d94 <rxi316_perf_tune+0xf4>
300074da:	2202      	movs	r2, #2
300074dc:	921e      	str	r2, [sp, #120]	; 0x78
300074de:	e4e5      	b.n	30006eac <rxi316_perf_tune+0x20c>
300074e0:	f10a 0a01 	add.w	sl, sl, #1
300074e4:	9308      	str	r3, [sp, #32]
300074e6:	e455      	b.n	30006d94 <rxi316_perf_tune+0xf4>
300074e8:	f10a 0a01 	add.w	sl, sl, #1
300074ec:	9307      	str	r3, [sp, #28]
300074ee:	e451      	b.n	30006d94 <rxi316_perf_tune+0xf4>
300074f0:	f10a 0a01 	add.w	sl, sl, #1
300074f4:	931b      	str	r3, [sp, #108]	; 0x6c
300074f6:	e44d      	b.n	30006d94 <rxi316_perf_tune+0xf4>
300074f8:	f10a 0a01 	add.w	sl, sl, #1
300074fc:	461c      	mov	r4, r3
300074fe:	e449      	b.n	30006d94 <rxi316_perf_tune+0xf4>
30007500:	f10a 0a01 	add.w	sl, sl, #1
30007504:	931d      	str	r3, [sp, #116]	; 0x74
30007506:	e445      	b.n	30006d94 <rxi316_perf_tune+0xf4>
30007508:	f10a 0a01 	add.w	sl, sl, #1
3000750c:	931c      	str	r3, [sp, #112]	; 0x70
3000750e:	e441      	b.n	30006d94 <rxi316_perf_tune+0xf4>
30007510:	930a      	str	r3, [sp, #40]	; 0x28
30007512:	e43f      	b.n	30006d94 <rxi316_perf_tune+0xf4>
30007514:	930b      	str	r3, [sp, #44]	; 0x2c
30007516:	e43d      	b.n	30006d94 <rxi316_perf_tune+0xf4>
30007518:	930c      	str	r3, [sp, #48]	; 0x30
3000751a:	e43b      	b.n	30006d94 <rxi316_perf_tune+0xf4>
3000751c:	930e      	str	r3, [sp, #56]	; 0x38
3000751e:	e439      	b.n	30006d94 <rxi316_perf_tune+0xf4>
30007520:	930d      	str	r3, [sp, #52]	; 0x34
30007522:	e437      	b.n	30006d94 <rxi316_perf_tune+0xf4>
30007524:	931a      	str	r3, [sp, #104]	; 0x68
30007526:	e435      	b.n	30006d94 <rxi316_perf_tune+0xf4>
30007528:	9319      	str	r3, [sp, #100]	; 0x64
3000752a:	e433      	b.n	30006d94 <rxi316_perf_tune+0xf4>
3000752c:	9310      	str	r3, [sp, #64]	; 0x40
3000752e:	e431      	b.n	30006d94 <rxi316_perf_tune+0xf4>
30007530:	930f      	str	r3, [sp, #60]	; 0x3c
30007532:	e42f      	b.n	30006d94 <rxi316_perf_tune+0xf4>
30007534:	9318      	str	r3, [sp, #96]	; 0x60
30007536:	e42d      	b.n	30006d94 <rxi316_perf_tune+0xf4>
30007538:	9317      	str	r3, [sp, #92]	; 0x5c
3000753a:	e42b      	b.n	30006d94 <rxi316_perf_tune+0xf4>
3000753c:	9316      	str	r3, [sp, #88]	; 0x58
3000753e:	e429      	b.n	30006d94 <rxi316_perf_tune+0xf4>
30007540:	9315      	str	r3, [sp, #84]	; 0x54
30007542:	e427      	b.n	30006d94 <rxi316_perf_tune+0xf4>
30007544:	9314      	str	r3, [sp, #80]	; 0x50
30007546:	e425      	b.n	30006d94 <rxi316_perf_tune+0xf4>
30007548:	9313      	str	r3, [sp, #76]	; 0x4c
3000754a:	e423      	b.n	30006d94 <rxi316_perf_tune+0xf4>
3000754c:	9312      	str	r3, [sp, #72]	; 0x48
3000754e:	e421      	b.n	30006d94 <rxi316_perf_tune+0xf4>
30007550:	9311      	str	r3, [sp, #68]	; 0x44
30007552:	e41f      	b.n	30006d94 <rxi316_perf_tune+0xf4>

30007554 <rxi316_dram_init>:
30007554:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30007558:	4604      	mov	r4, r0
3000755a:	b08f      	sub	sp, #60	; 0x3c
3000755c:	4b10      	ldr	r3, [pc, #64]	; (300075a0 <rxi316_dram_init+0x4c>)
3000755e:	4798      	blx	r3
30007560:	f894 b014 	ldrb.w	fp, [r4, #20]
30007564:	2101      	movs	r1, #1
30007566:	900c      	str	r0, [sp, #48]	; 0x30
30007568:	fa01 f30b 	lsl.w	r3, r1, fp
3000756c:	9303      	str	r3, [sp, #12]
3000756e:	6823      	ldr	r3, [r4, #0]
30007570:	78da      	ldrb	r2, [r3, #3]
30007572:	6923      	ldr	r3, [r4, #16]
30007574:	fa03 f30b 	lsl.w	r3, r3, fp
30007578:	b1a2      	cbz	r2, 300075a4 <rxi316_dram_init+0x50>
3000757a:	428a      	cmp	r2, r1
3000757c:	f000 8477 	beq.w	30007e6e <rxi316_dram_init+0x91a>
30007580:	2a02      	cmp	r2, #2
30007582:	bf0b      	itete	eq
30007584:	2206      	moveq	r2, #6
30007586:	220a      	movne	r2, #10
30007588:	2540      	moveq	r5, #64	; 0x40
3000758a:	2580      	movne	r5, #128	; 0x80
3000758c:	9207      	str	r2, [sp, #28]
3000758e:	bf0c      	ite	eq
30007590:	2204      	moveq	r2, #4
30007592:	2208      	movne	r2, #8
30007594:	9208      	str	r2, [sp, #32]
30007596:	bf0c      	ite	eq
30007598:	2208      	moveq	r2, #8
3000759a:	2210      	movne	r2, #16
3000759c:	9202      	str	r2, [sp, #8]
3000759e:	e007      	b.n	300075b0 <rxi316_dram_init+0x5c>
300075a0:	300065a1 	.word	0x300065a1
300075a4:	2203      	movs	r2, #3
300075a6:	25c0      	movs	r5, #192	; 0xc0
300075a8:	9108      	str	r1, [sp, #32]
300075aa:	9207      	str	r2, [sp, #28]
300075ac:	2202      	movs	r2, #2
300075ae:	9202      	str	r2, [sp, #8]
300075b0:	6860      	ldr	r0, [r4, #4]
300075b2:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
300075b6:	4ac0      	ldr	r2, [pc, #768]	; (300078b8 <rxi316_dram_init+0x364>)
300075b8:	6806      	ldr	r6, [r0, #0]
300075ba:	960d      	str	r6, [sp, #52]	; 0x34
300075bc:	6846      	ldr	r6, [r0, #4]
300075be:	6880      	ldr	r0, [r0, #8]
300075c0:	9609      	str	r6, [sp, #36]	; 0x24
300075c2:	9004      	str	r0, [sp, #16]
300075c4:	f8c2 1230 	str.w	r1, [r2, #560]	; 0x230
300075c8:	6820      	ldr	r0, [r4, #0]
300075ca:	7981      	ldrb	r1, [r0, #6]
300075cc:	6882      	ldr	r2, [r0, #8]
300075ce:	b129      	cbz	r1, 300075dc <rxi316_dram_init+0x88>
300075d0:	2901      	cmp	r1, #1
300075d2:	f000 8444 	beq.w	30007e5e <rxi316_dram_init+0x90a>
300075d6:	2903      	cmp	r1, #3
300075d8:	f000 8453 	beq.w	30007e82 <rxi316_dram_init+0x92e>
300075dc:	3a06      	subs	r2, #6
300075de:	7881      	ldrb	r1, [r0, #2]
300075e0:	f002 020f 	and.w	r2, r2, #15
300075e4:	7940      	ldrb	r0, [r0, #5]
300075e6:	0109      	lsls	r1, r1, #4
300075e8:	0280      	lsls	r0, r0, #10
300075ea:	f001 0130 	and.w	r1, r1, #48	; 0x30
300075ee:	f400 6040 	and.w	r0, r0, #3072	; 0xc00
300075f2:	4301      	orrs	r1, r0
300075f4:	430d      	orrs	r5, r1
300075f6:	432a      	orrs	r2, r5
300075f8:	4daf      	ldr	r5, [pc, #700]	; (300078b8 <rxi316_dram_init+0x364>)
300075fa:	f8c5 2224 	str.w	r2, [r5, #548]	; 0x224
300075fe:	68e2      	ldr	r2, [r4, #12]
30007600:	6812      	ldr	r2, [r2, #0]
30007602:	f892 206c 	ldrb.w	r2, [r2, #108]	; 0x6c
30007606:	f002 0207 	and.w	r2, r2, #7
3000760a:	f8c5 2228 	str.w	r2, [r5, #552]	; 0x228
3000760e:	68e2      	ldr	r2, [r4, #12]
30007610:	6811      	ldr	r1, [r2, #0]
30007612:	6822      	ldr	r2, [r4, #0]
30007614:	6848      	ldr	r0, [r1, #4]
30007616:	7817      	ldrb	r7, [r2, #0]
30007618:	688a      	ldr	r2, [r1, #8]
3000761a:	9005      	str	r0, [sp, #20]
3000761c:	0300      	lsls	r0, r0, #12
3000761e:	0412      	lsls	r2, r2, #16
30007620:	9701      	str	r7, [sp, #4]
30007622:	f400 5080 	and.w	r0, r0, #4096	; 0x1000
30007626:	f007 070f 	and.w	r7, r7, #15
3000762a:	f402 3280 	and.w	r2, r2, #65536	; 0x10000
3000762e:	4302      	orrs	r2, r0
30007630:	68c8      	ldr	r0, [r1, #12]
30007632:	0440      	lsls	r0, r0, #17
30007634:	433a      	orrs	r2, r7
30007636:	f400 3600 	and.w	r6, r0, #131072	; 0x20000
3000763a:	6908      	ldr	r0, [r1, #16]
3000763c:	0480      	lsls	r0, r0, #18
3000763e:	4332      	orrs	r2, r6
30007640:	f400 2080 	and.w	r0, r0, #262144	; 0x40000
30007644:	4310      	orrs	r0, r2
30007646:	694a      	ldr	r2, [r1, #20]
30007648:	04d2      	lsls	r2, r2, #19
3000764a:	f402 2200 	and.w	r2, r2, #524288	; 0x80000
3000764e:	4310      	orrs	r0, r2
30007650:	698a      	ldr	r2, [r1, #24]
30007652:	0552      	lsls	r2, r2, #21
30007654:	f402 1200 	and.w	r2, r2, #2097152	; 0x200000
30007658:	4310      	orrs	r0, r2
3000765a:	69ca      	ldr	r2, [r1, #28]
3000765c:	0592      	lsls	r2, r2, #22
3000765e:	f402 0280 	and.w	r2, r2, #4194304	; 0x400000
30007662:	4310      	orrs	r0, r2
30007664:	6a8a      	ldr	r2, [r1, #40]	; 0x28
30007666:	0612      	lsls	r2, r2, #24
30007668:	f002 7240 	and.w	r2, r2, #50331648	; 0x3000000
3000766c:	4302      	orrs	r2, r0
3000766e:	e9d1 1008 	ldrd	r1, r0, [r1, #32]
30007672:	06c0      	lsls	r0, r0, #27
30007674:	0789      	lsls	r1, r1, #30
30007676:	f000 6000 	and.w	r0, r0, #134217728	; 0x8000000
3000767a:	f001 4180 	and.w	r1, r1, #1073741824	; 0x40000000
3000767e:	4310      	orrs	r0, r2
30007680:	9a03      	ldr	r2, [sp, #12]
30007682:	0212      	lsls	r2, r2, #8
30007684:	4308      	orrs	r0, r1
30007686:	f402 62e0 	and.w	r2, r2, #1792	; 0x700
3000768a:	4310      	orrs	r0, r2
3000768c:	6068      	str	r0, [r5, #4]
3000768e:	6822      	ldr	r2, [r4, #0]
30007690:	7992      	ldrb	r2, [r2, #6]
30007692:	2a00      	cmp	r2, #0
30007694:	f040 831d 	bne.w	30007cd2 <rxi316_dram_init+0x77e>
30007698:	686a      	ldr	r2, [r5, #4]
3000769a:	f042 0210 	orr.w	r2, r2, #16
3000769e:	606a      	str	r2, [r5, #4]
300076a0:	68e2      	ldr	r2, [r4, #12]
300076a2:	9803      	ldr	r0, [sp, #12]
300076a4:	6812      	ldr	r2, [r2, #0]
300076a6:	6861      	ldr	r1, [r4, #4]
300076a8:	f100 3aff 	add.w	sl, r0, #4294967295	; 0xffffffff
300076ac:	6ad0      	ldr	r0, [r2, #44]	; 0x2c
300076ae:	f8d1 e010 	ldr.w	lr, [r1, #16]
300076b2:	9006      	str	r0, [sp, #24]
300076b4:	6b10      	ldr	r0, [r2, #48]	; 0x30
300076b6:	fa2e f80b 	lsr.w	r8, lr, fp
300076ba:	6949      	ldr	r1, [r1, #20]
300076bc:	ea1e 0f0a 	tst.w	lr, sl
300076c0:	900a      	str	r0, [sp, #40]	; 0x28
300076c2:	fa21 fe0b 	lsr.w	lr, r1, fp
300076c6:	bf18      	it	ne
300076c8:	f108 0801 	addne.w	r8, r8, #1
300076cc:	ea11 0f0a 	tst.w	r1, sl
300076d0:	990a      	ldr	r1, [sp, #40]	; 0x28
300076d2:	ea4f 3808 	mov.w	r8, r8, lsl #12
300076d6:	ea4f 0141 	mov.w	r1, r1, lsl #1
300076da:	bf18      	it	ne
300076dc:	f10e 0e01 	addne.w	lr, lr, #1
300076e0:	f408 38f8 	and.w	r8, r8, #126976	; 0x1f000
300076e4:	f001 0102 	and.w	r1, r1, #2
300076e8:	ea4f 5e0e 	mov.w	lr, lr, lsl #20
300076ec:	e9d2 9c0d 	ldrd	r9, ip, [r2, #52]	; 0x34
300076f0:	e9d2 5011 	ldrd	r5, r0, [r2, #68]	; 0x44
300076f4:	ea4f 0989 	mov.w	r9, r9, lsl #2
300076f8:	f00e 7ef8 	and.w	lr, lr, #32505856	; 0x1f00000
300076fc:	900b      	str	r0, [sp, #44]	; 0x2c
300076fe:	ea4f 0ccc 	mov.w	ip, ip, lsl #3
30007702:	9806      	ldr	r0, [sp, #24]
30007704:	f009 0904 	and.w	r9, r9, #4
30007708:	f00c 0c08 	and.w	ip, ip, #8
3000770c:	01ad      	lsls	r5, r5, #6
3000770e:	f000 0001 	and.w	r0, r0, #1
30007712:	ea41 0109 	orr.w	r1, r1, r9
30007716:	f005 0540 	and.w	r5, r5, #64	; 0x40
3000771a:	4301      	orrs	r1, r0
3000771c:	e9d2 760f 	ldrd	r7, r6, [r2, #60]	; 0x3c
30007720:	ea41 0c0c 	orr.w	ip, r1, ip
30007724:	990b      	ldr	r1, [sp, #44]	; 0x2c
30007726:	013f      	lsls	r7, r7, #4
30007728:	0176      	lsls	r6, r6, #5
3000772a:	f007 0710 	and.w	r7, r7, #16
3000772e:	0208      	lsls	r0, r1, #8
30007730:	f006 0620 	and.w	r6, r6, #32
30007734:	6cd1      	ldr	r1, [r2, #76]	; 0x4c
30007736:	ea4c 0707 	orr.w	r7, ip, r7
3000773a:	f400 6070 	and.w	r0, r0, #3840	; 0xf00
3000773e:	06c9      	lsls	r1, r1, #27
30007740:	4337      	orrs	r7, r6
30007742:	f001 6100 	and.w	r1, r1, #134217728	; 0x8000000
30007746:	432f      	orrs	r7, r5
30007748:	e9d2 6214 	ldrd	r6, r2, [r2, #80]	; 0x50
3000774c:	4307      	orrs	r7, r0
3000774e:	0736      	lsls	r6, r6, #28
30007750:	430f      	orrs	r7, r1
30007752:	0752      	lsls	r2, r2, #29
30007754:	f006 5680 	and.w	r6, r6, #268435456	; 0x10000000
30007758:	f002 5200 	and.w	r2, r2, #536870912	; 0x20000000
3000775c:	433e      	orrs	r6, r7
3000775e:	4316      	orrs	r6, r2
30007760:	4a55      	ldr	r2, [pc, #340]	; (300078b8 <rxi316_dram_init+0x364>)
30007762:	ea46 0608 	orr.w	r6, r6, r8
30007766:	ea46 060e 	orr.w	r6, r6, lr
3000776a:	6096      	str	r6, [r2, #8]
3000776c:	6862      	ldr	r2, [r4, #4]
3000776e:	6990      	ldr	r0, [r2, #24]
30007770:	9a02      	ldr	r2, [sp, #8]
30007772:	2a10      	cmp	r2, #16
30007774:	6822      	ldr	r2, [r4, #0]
30007776:	7811      	ldrb	r1, [r2, #0]
30007778:	f000 8327 	beq.w	30007dca <rxi316_dram_init+0x876>
3000777c:	9e02      	ldr	r6, [sp, #8]
3000777e:	7915      	ldrb	r5, [r2, #4]
30007780:	2e08      	cmp	r6, #8
30007782:	f000 82b4 	beq.w	30007cee <rxi316_dram_init+0x79a>
30007786:	9d02      	ldr	r5, [sp, #8]
30007788:	2d04      	cmp	r5, #4
3000778a:	f000 83ad 	beq.w	30007ee8 <rxi316_dram_init+0x994>
3000778e:	f1a1 0602 	sub.w	r6, r1, #2
30007792:	9d02      	ldr	r5, [sp, #8]
30007794:	fab6 f686 	clz	r6, r6
30007798:	0976      	lsrs	r6, r6, #5
3000779a:	2909      	cmp	r1, #9
3000779c:	bf14      	ite	ne
3000779e:	4637      	movne	r7, r6
300077a0:	f046 0701 	orreq.w	r7, r6, #1
300077a4:	2d02      	cmp	r5, #2
300077a6:	bf08      	it	eq
300077a8:	4338      	orreq	r0, r7
300077aa:	7915      	ldrb	r5, [r2, #4]
300077ac:	2f00      	cmp	r7, #0
300077ae:	f040 82ac 	bne.w	30007d0a <rxi316_dram_init+0x7b6>
300077b2:	2903      	cmp	r1, #3
300077b4:	f000 8368 	beq.w	30007e88 <rxi316_dram_init+0x934>
300077b8:	2600      	movs	r6, #0
300077ba:	f44f 5180 	mov.w	r1, #4096	; 0x1000
300077be:	4637      	mov	r7, r6
300077c0:	433e      	orrs	r6, r7
300077c2:	4f3d      	ldr	r7, [pc, #244]	; (300078b8 <rxi316_dram_init+0x364>)
300077c4:	430e      	orrs	r6, r1
300077c6:	4306      	orrs	r6, r0
300077c8:	ea46 05c5 	orr.w	r5, r6, r5, lsl #3
300077cc:	637d      	str	r5, [r7, #52]	; 0x34
300077ce:	6862      	ldr	r2, [r4, #4]
300077d0:	9904      	ldr	r1, [sp, #16]
300077d2:	69d2      	ldr	r2, [r2, #28]
300077d4:	ea42 02c1 	orr.w	r2, r2, r1, lsl #3
300077d8:	63ba      	str	r2, [r7, #56]	; 0x38
300077da:	6822      	ldr	r2, [r4, #0]
300077dc:	7810      	ldrb	r0, [r2, #0]
300077de:	6862      	ldr	r2, [r4, #4]
300077e0:	2803      	cmp	r0, #3
300077e2:	6a11      	ldr	r1, [r2, #32]
300077e4:	f000 82e4 	beq.w	30007db0 <rxi316_dram_init+0x85c>
300077e8:	2809      	cmp	r0, #9
300077ea:	f000 8306 	beq.w	30007dfa <rxi316_dram_init+0x8a6>
300077ee:	4832      	ldr	r0, [pc, #200]	; (300078b8 <rxi316_dram_init+0x364>)
300077f0:	63c1      	str	r1, [r0, #60]	; 0x3c
300077f2:	6862      	ldr	r2, [r4, #4]
300077f4:	6a52      	ldr	r2, [r2, #36]	; 0x24
300077f6:	6402      	str	r2, [r0, #64]	; 0x40
300077f8:	6860      	ldr	r0, [r4, #4]
300077fa:	68c5      	ldr	r5, [r0, #12]
300077fc:	6802      	ldr	r2, [r0, #0]
300077fe:	6841      	ldr	r1, [r0, #4]
30007800:	442a      	add	r2, r5
30007802:	6880      	ldr	r0, [r0, #8]
30007804:	4429      	add	r1, r5
30007806:	ea1a 0f02 	tst.w	sl, r2
3000780a:	fa22 f20b 	lsr.w	r2, r2, fp
3000780e:	fa21 f60b 	lsr.w	r6, r1, fp
30007812:	fa20 f50b 	lsr.w	r5, r0, fp
30007816:	bf18      	it	ne
30007818:	3201      	addne	r2, #1
3000781a:	ea1a 0f01 	tst.w	sl, r1
3000781e:	6821      	ldr	r1, [r4, #0]
30007820:	bf18      	it	ne
30007822:	3601      	addne	r6, #1
30007824:	ea1a 0f00 	tst.w	sl, r0
30007828:	7808      	ldrb	r0, [r1, #0]
3000782a:	bf18      	it	ne
3000782c:	3501      	addne	r5, #1
3000782e:	68a1      	ldr	r1, [r4, #8]
30007830:	3802      	subs	r0, #2
30007832:	6dcf      	ldr	r7, [r1, #92]	; 0x5c
30007834:	2801      	cmp	r0, #1
30007836:	f240 82b4 	bls.w	30007da2 <rxi316_dram_init+0x84e>
3000783a:	698f      	ldr	r7, [r1, #24]
3000783c:	fbb7 f0f3 	udiv	r0, r7, r3
30007840:	fb03 7710 	mls	r7, r3, r0, r7
30007844:	b107      	cbz	r7, 30007848 <rxi316_dram_init+0x2f4>
30007846:	3001      	adds	r0, #1
30007848:	6a4f      	ldr	r7, [r1, #36]	; 0x24
3000784a:	fbb7 f1f3 	udiv	r1, r7, r3
3000784e:	fb03 7711 	mls	r7, r3, r1, r7
30007852:	b107      	cbz	r7, 30007856 <rxi316_dram_init+0x302>
30007854:	3101      	adds	r1, #1
30007856:	0176      	lsls	r6, r6, #5
30007858:	f002 021f 	and.w	r2, r2, #31
3000785c:	02ad      	lsls	r5, r5, #10
3000785e:	f406 7678 	and.w	r6, r6, #992	; 0x3e0
30007862:	0500      	lsls	r0, r0, #20
30007864:	f405 45f8 	and.w	r5, r5, #31744	; 0x7c00
30007868:	4316      	orrs	r6, r2
3000786a:	f000 70f8 	and.w	r0, r0, #32505856	; 0x1f00000
3000786e:	4a12      	ldr	r2, [pc, #72]	; (300078b8 <rxi316_dram_init+0x364>)
30007870:	432e      	orrs	r6, r5
30007872:	4306      	orrs	r6, r0
30007874:	0648      	lsls	r0, r1, #25
30007876:	f000 5078 	and.w	r0, r0, #1040187392	; 0x3e000000
3000787a:	4330      	orrs	r0, r6
3000787c:	6310      	str	r0, [r2, #48]	; 0x30
3000787e:	68a0      	ldr	r0, [r4, #8]
30007880:	6802      	ldr	r2, [r0, #0]
30007882:	fbb2 f1f3 	udiv	r1, r2, r3
30007886:	fb03 2211 	mls	r2, r3, r1, r2
3000788a:	2a00      	cmp	r2, #0
3000788c:	f000 8287 	beq.w	30007d9e <rxi316_dram_init+0x84a>
30007890:	f101 0901 	add.w	r9, r1, #1
30007894:	6842      	ldr	r2, [r0, #4]
30007896:	fbb2 f0f3 	udiv	r0, r2, r3
3000789a:	fb03 2210 	mls	r2, r3, r0, r2
3000789e:	2a00      	cmp	r2, #0
300078a0:	f000 827b 	beq.w	30007d9a <rxi316_dram_init+0x846>
300078a4:	38c7      	subs	r0, #199	; 0xc7
300078a6:	68e2      	ldr	r2, [r4, #12]
300078a8:	6811      	ldr	r1, [r2, #0]
300078aa:	4a04      	ldr	r2, [pc, #16]	; (300078bc <rxi316_dram_init+0x368>)
300078ac:	ea02 2000 	and.w	r0, r2, r0, lsl #8
300078b0:	e9d1 2117 	ldrd	r2, r1, [r1, #92]	; 0x5c
300078b4:	900a      	str	r0, [sp, #40]	; 0x28
300078b6:	e003      	b.n	300078c0 <rxi316_dram_init+0x36c>
300078b8:	41100000 	.word	0x41100000
300078bc:	00ffff00 	.word	0x00ffff00
300078c0:	0712      	lsls	r2, r2, #28
300078c2:	ea40 7141 	orr.w	r1, r0, r1, lsl #29
300078c6:	f002 5280 	and.w	r2, r2, #268435456	; 0x10000000
300078ca:	430a      	orrs	r2, r1
300078cc:	fa5f f189 	uxtb.w	r1, r9
300078d0:	430a      	orrs	r2, r1
300078d2:	49c2      	ldr	r1, [pc, #776]	; (30007bdc <rxi316_dram_init+0x688>)
300078d4:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
300078d8:	610a      	str	r2, [r1, #16]
300078da:	68a5      	ldr	r5, [r4, #8]
300078dc:	692a      	ldr	r2, [r5, #16]
300078de:	fbb2 fcf3 	udiv	ip, r2, r3
300078e2:	fb03 221c 	mls	r2, r3, ip, r2
300078e6:	2a00      	cmp	r2, #0
300078e8:	f000 8254 	beq.w	30007d94 <rxi316_dram_init+0x840>
300078ec:	f10c 0201 	add.w	r2, ip, #1
300078f0:	9206      	str	r2, [sp, #24]
300078f2:	69aa      	ldr	r2, [r5, #24]
300078f4:	fbb2 f0f3 	udiv	r0, r2, r3
300078f8:	fb03 2210 	mls	r2, r3, r0, r2
300078fc:	b102      	cbz	r2, 30007900 <rxi316_dram_init+0x3ac>
300078fe:	3001      	adds	r0, #1
30007900:	68ea      	ldr	r2, [r5, #12]
30007902:	fbb2 f1f3 	udiv	r1, r2, r3
30007906:	fb03 2211 	mls	r2, r3, r1, r2
3000790a:	9104      	str	r1, [sp, #16]
3000790c:	b10a      	cbz	r2, 30007912 <rxi316_dram_init+0x3be>
3000790e:	3101      	adds	r1, #1
30007910:	9104      	str	r1, [sp, #16]
30007912:	6822      	ldr	r2, [r4, #0]
30007914:	7816      	ldrb	r6, [r2, #0]
30007916:	2e09      	cmp	r6, #9
30007918:	f000 826b 	beq.w	30007df2 <rxi316_dram_init+0x89e>
3000791c:	6a6a      	ldr	r2, [r5, #36]	; 0x24
3000791e:	2e02      	cmp	r6, #2
30007920:	fbb2 f1f3 	udiv	r1, r2, r3
30007924:	fb03 2211 	mls	r2, r3, r1, r2
30007928:	f000 828b 	beq.w	30007e42 <rxi316_dram_init+0x8ee>
3000792c:	b102      	cbz	r2, 30007930 <rxi316_dram_init+0x3dc>
3000792e:	3101      	adds	r1, #1
30007930:	68e2      	ldr	r2, [r4, #12]
30007932:	0349      	lsls	r1, r1, #13
30007934:	6d2d      	ldr	r5, [r5, #80]	; 0x50
30007936:	6812      	ldr	r2, [r2, #0]
30007938:	f401 31f0 	and.w	r1, r1, #122880	; 0x1e000
3000793c:	fa25 f60b 	lsr.w	r6, r5, fp
30007940:	ea15 0f0a 	tst.w	r5, sl
30007944:	6e52      	ldr	r2, [r2, #100]	; 0x64
30007946:	bf18      	it	ne
30007948:	3601      	addne	r6, #1
3000794a:	05d2      	lsls	r2, r2, #23
3000794c:	f402 0200 	and.w	r2, r2, #8388608	; 0x800000
30007950:	ea42 6606 	orr.w	r6, r2, r6, lsl #24
30007954:	9a06      	ldr	r2, [sp, #24]
30007956:	0112      	lsls	r2, r2, #4
30007958:	f402 72f8 	and.w	r2, r2, #496	; 0x1f0
3000795c:	4332      	orrs	r2, r6
3000795e:	0246      	lsls	r6, r0, #9
30007960:	f406 56f0 	and.w	r6, r6, #7680	; 0x1e00
30007964:	4316      	orrs	r6, r2
30007966:	9a04      	ldr	r2, [sp, #16]
30007968:	f002 020f 	and.w	r2, r2, #15
3000796c:	4316      	orrs	r6, r2
3000796e:	4a9b      	ldr	r2, [pc, #620]	; (30007bdc <rxi316_dram_init+0x688>)
30007970:	4331      	orrs	r1, r6
30007972:	f441 11a0 	orr.w	r1, r1, #1310720	; 0x140000
30007976:	6151      	str	r1, [r2, #20]
30007978:	68a7      	ldr	r7, [r4, #8]
3000797a:	697a      	ldr	r2, [r7, #20]
3000797c:	fbb2 fef3 	udiv	lr, r2, r3
30007980:	fb03 221e 	mls	r2, r3, lr, r2
30007984:	b10a      	cbz	r2, 3000798a <rxi316_dram_init+0x436>
30007986:	f10e 0e01 	add.w	lr, lr, #1
3000798a:	6939      	ldr	r1, [r7, #16]
3000798c:	fbb1 f2f3 	udiv	r2, r1, r3
30007990:	fb03 1112 	mls	r1, r3, r2, r1
30007994:	b101      	cbz	r1, 30007998 <rxi316_dram_init+0x444>
30007996:	3201      	adds	r2, #1
30007998:	68fd      	ldr	r5, [r7, #12]
3000799a:	fbb5 f1f3 	udiv	r1, r5, r3
3000799e:	fb03 5511 	mls	r5, r3, r1, r5
300079a2:	b105      	cbz	r5, 300079a6 <rxi316_dram_init+0x452>
300079a4:	3101      	adds	r1, #1
300079a6:	6b3d      	ldr	r5, [r7, #48]	; 0x30
300079a8:	fbb5 f6f3 	udiv	r6, r5, r3
300079ac:	fb03 5516 	mls	r5, r3, r6, r5
300079b0:	b105      	cbz	r5, 300079b4 <rxi316_dram_init+0x460>
300079b2:	3601      	adds	r6, #1
300079b4:	4411      	add	r1, r2
300079b6:	68bd      	ldr	r5, [r7, #8]
300079b8:	42b1      	cmp	r1, r6
300079ba:	460a      	mov	r2, r1
300079bc:	bf38      	it	cc
300079be:	4632      	movcc	r2, r6
300079c0:	920b      	str	r2, [sp, #44]	; 0x2c
300079c2:	fbb5 f2f3 	udiv	r2, r5, r3
300079c6:	fb03 5512 	mls	r5, r3, r2, r5
300079ca:	b905      	cbnz	r5, 300079ce <rxi316_dram_init+0x47a>
300079cc:	3a01      	subs	r2, #1
300079ce:	6afd      	ldr	r5, [r7, #44]	; 0x2c
300079d0:	ea15 0f0a 	tst.w	r5, sl
300079d4:	fa25 fc0b 	lsr.w	ip, r5, fp
300079d8:	69fd      	ldr	r5, [r7, #28]
300079da:	bf18      	it	ne
300079dc:	f10c 0c01 	addne.w	ip, ip, #1
300079e0:	fa25 f60b 	lsr.w	r6, r5, fp
300079e4:	ea15 0f0a 	tst.w	r5, sl
300079e8:	9d01      	ldr	r5, [sp, #4]
300079ea:	bf18      	it	ne
300079ec:	3601      	addne	r6, #1
300079ee:	2d09      	cmp	r5, #9
300079f0:	f000 81fa 	beq.w	30007de8 <rxi316_dram_init+0x894>
300079f4:	9d01      	ldr	r5, [sp, #4]
300079f6:	2d02      	cmp	r5, #2
300079f8:	f000 822b 	beq.w	30007e52 <rxi316_dram_init+0x8fe>
300079fc:	2d03      	cmp	r5, #3
300079fe:	f000 829b 	beq.w	30007f38 <rxi316_dram_init+0x9e4>
30007a02:	9d09      	ldr	r5, [sp, #36]	; 0x24
30007a04:	9902      	ldr	r1, [sp, #8]
30007a06:	440d      	add	r5, r1
30007a08:	46a8      	mov	r8, r5
30007a0a:	fa28 f50b 	lsr.w	r5, r8, fp
30007a0e:	ea18 0f0a 	tst.w	r8, sl
30007a12:	f8d7 8040 	ldr.w	r8, [r7, #64]	; 0x40
30007a16:	bf18      	it	ne
30007a18:	3501      	addne	r5, #1
30007a1a:	fbb8 f7f3 	udiv	r7, r8, r3
30007a1e:	fb03 8817 	mls	r8, r3, r7, r8
30007a22:	f1b8 0f00 	cmp.w	r8, #0
30007a26:	d000      	beq.n	30007a2a <rxi316_dram_init+0x4d6>
30007a28:	3701      	adds	r7, #1
30007a2a:	990b      	ldr	r1, [sp, #44]	; 0x2c
30007a2c:	f00e 0e0f 	and.w	lr, lr, #15
30007a30:	ea4f 3c8c 	mov.w	ip, ip, lsl #14
30007a34:	0109      	lsls	r1, r1, #4
30007a36:	f40c 3ce0 	and.w	ip, ip, #114688	; 0x1c000
30007a3a:	063f      	lsls	r7, r7, #24
30007a3c:	f401 717c 	and.w	r1, r1, #1008	; 0x3f0
30007a40:	f007 57f8 	and.w	r7, r7, #520093696	; 0x1f000000
30007a44:	ea41 0e0e 	orr.w	lr, r1, lr
30007a48:	0291      	lsls	r1, r2, #10
30007a4a:	f401 5170 	and.w	r1, r1, #15360	; 0x3c00
30007a4e:	ea4e 0e01 	orr.w	lr, lr, r1
30007a52:	0471      	lsls	r1, r6, #17
30007a54:	ea4e 0c0c 	orr.w	ip, lr, ip
30007a58:	f401 2160 	and.w	r1, r1, #917504	; 0xe0000
30007a5c:	ea4c 0c01 	orr.w	ip, ip, r1
30007a60:	0529      	lsls	r1, r5, #20
30007a62:	f401 0170 	and.w	r1, r1, #15728640	; 0xf00000
30007a66:	ea4c 0c01 	orr.w	ip, ip, r1
30007a6a:	495c      	ldr	r1, [pc, #368]	; (30007bdc <rxi316_dram_init+0x688>)
30007a6c:	ea4c 0707 	orr.w	r7, ip, r7
30007a70:	618f      	str	r7, [r1, #24]
30007a72:	6821      	ldr	r1, [r4, #0]
30007a74:	780f      	ldrb	r7, [r1, #0]
30007a76:	2f02      	cmp	r7, #2
30007a78:	f000 815e 	beq.w	30007d38 <rxi316_dram_init+0x7e4>
30007a7c:	2f09      	cmp	r7, #9
30007a7e:	f000 815b 	beq.w	30007d38 <rxi316_dram_init+0x7e4>
30007a82:	68e1      	ldr	r1, [r4, #12]
30007a84:	2f03      	cmp	r7, #3
30007a86:	6809      	ldr	r1, [r1, #0]
30007a88:	6e89      	ldr	r1, [r1, #104]	; 0x68
30007a8a:	f001 010f 	and.w	r1, r1, #15
30007a8e:	9109      	str	r1, [sp, #36]	; 0x24
30007a90:	68a1      	ldr	r1, [r4, #8]
30007a92:	f000 81a7 	beq.w	30007de4 <rxi316_dram_init+0x890>
30007a96:	6a0f      	ldr	r7, [r1, #32]
30007a98:	ea17 0f0a 	tst.w	r7, sl
30007a9c:	fa27 f10b 	lsr.w	r1, r7, fp
30007aa0:	d000      	beq.n	30007aa4 <rxi316_dram_init+0x550>
30007aa2:	3101      	adds	r1, #1
30007aa4:	9f01      	ldr	r7, [sp, #4]
30007aa6:	2f02      	cmp	r7, #2
30007aa8:	f000 815c 	beq.w	30007d64 <rxi316_dram_init+0x810>
30007aac:	9f01      	ldr	r7, [sp, #4]
30007aae:	2f03      	cmp	r7, #3
30007ab0:	f000 81a5 	beq.w	30007dfe <rxi316_dram_init+0x8aa>
30007ab4:	9f01      	ldr	r7, [sp, #4]
30007ab6:	2f09      	cmp	r7, #9
30007ab8:	f000 822e 	beq.w	30007f18 <rxi316_dram_init+0x9c4>
30007abc:	f04f 0e00 	mov.w	lr, #0
30007ac0:	46f0      	mov	r8, lr
30007ac2:	f8cd e004 	str.w	lr, [sp, #4]
30007ac6:	9f06      	ldr	r7, [sp, #24]
30007ac8:	0109      	lsls	r1, r1, #4
30007aca:	ea4f 1c57 	mov.w	ip, r7, lsr #5
30007ace:	9f09      	ldr	r7, [sp, #36]	; 0x24
30007ad0:	b2c9      	uxtb	r1, r1
30007ad2:	4339      	orrs	r1, r7
30007ad4:	9f01      	ldr	r7, [sp, #4]
30007ad6:	4339      	orrs	r1, r7
30007ad8:	4f40      	ldr	r7, [pc, #256]	; (30007bdc <rxi316_dram_init+0x688>)
30007ada:	ea41 0108 	orr.w	r1, r1, r8
30007ade:	ea41 010e 	orr.w	r1, r1, lr
30007ae2:	61f9      	str	r1, [r7, #28]
30007ae4:	68a7      	ldr	r7, [r4, #8]
30007ae6:	6c3c      	ldr	r4, [r7, #64]	; 0x40
30007ae8:	fbb4 f1f3 	udiv	r1, r4, r3
30007aec:	fb03 4311 	mls	r3, r3, r1, r4
30007af0:	b103      	cbz	r3, 30007af4 <rxi316_dram_init+0x5a0>
30007af2:	3101      	adds	r1, #1
30007af4:	6b7c      	ldr	r4, [r7, #52]	; 0x34
30007af6:	094b      	lsrs	r3, r1, #5
30007af8:	ea4f 2119 	mov.w	r1, r9, lsr #8
30007afc:	f8d7 903c 	ldr.w	r9, [r7, #60]	; 0x3c
30007b00:	ea14 0f0a 	tst.w	r4, sl
30007b04:	fa24 f80b 	lsr.w	r8, r4, fp
30007b08:	6bbc      	ldr	r4, [r7, #56]	; 0x38
30007b0a:	ea4f 1212 	mov.w	r2, r2, lsr #4
30007b0e:	bf18      	it	ne
30007b10:	f108 0801 	addne.w	r8, r8, #1
30007b14:	9301      	str	r3, [sp, #4]
30007b16:	ea14 0f0a 	tst.w	r4, sl
30007b1a:	fa24 fe0b 	lsr.w	lr, r4, fp
30007b1e:	9b02      	ldr	r3, [sp, #8]
30007b20:	fa29 f40b 	lsr.w	r4, r9, fp
30007b24:	bf18      	it	ne
30007b26:	f10e 0e01 	addne.w	lr, lr, #1
30007b2a:	6aff      	ldr	r7, [r7, #44]	; 0x2c
30007b2c:	ea19 0f0a 	tst.w	r9, sl
30007b30:	fa23 f90b 	lsr.w	r9, r3, fp
30007b34:	ea4f 06d6 	mov.w	r6, r6, lsr #3
30007b38:	bf18      	it	ne
30007b3a:	3401      	addne	r4, #1
30007b3c:	45b9      	cmp	r9, r7
30007b3e:	ea4f 1515 	mov.w	r5, r5, lsr #4
30007b42:	ea4f 1010 	mov.w	r0, r0, lsr #4
30007b46:	f240 80f5 	bls.w	30007d34 <rxi316_dram_init+0x7e0>
30007b4a:	eba9 0707 	sub.w	r7, r9, r7
30007b4e:	fa27 f40b 	lsr.w	r4, r7, fp
30007b52:	ea17 070a 	ands.w	r7, r7, sl
30007b56:	d001      	beq.n	30007b5c <rxi316_dram_init+0x608>
30007b58:	3401      	adds	r4, #1
30007b5a:	2700      	movs	r7, #0
30007b5c:	9b05      	ldr	r3, [sp, #20]
30007b5e:	b10b      	cbz	r3, 30007b64 <rxi316_dram_init+0x610>
30007b60:	073b      	lsls	r3, r7, #28
30007b62:	9305      	str	r3, [sp, #20]
30007b64:	ea4f 0c8c 	mov.w	ip, ip, lsl #2
30007b68:	9b01      	ldr	r3, [sp, #4]
30007b6a:	0289      	lsls	r1, r1, #10
30007b6c:	02c0      	lsls	r0, r0, #11
30007b6e:	f00c 0c04 	and.w	ip, ip, #4
30007b72:	f401 6180 	and.w	r1, r1, #1024	; 0x400
30007b76:	01d2      	lsls	r2, r2, #7
30007b78:	f400 6000 	and.w	r0, r0, #2048	; 0x800
30007b7c:	0236      	lsls	r6, r6, #8
30007b7e:	ea4c 0c01 	orr.w	ip, ip, r1
30007b82:	b2d2      	uxtb	r2, r2
30007b84:	026d      	lsls	r5, r5, #9
30007b86:	f406 7680 	and.w	r6, r6, #256	; 0x100
30007b8a:	ea4c 0c00 	orr.w	ip, ip, r0
30007b8e:	00df      	lsls	r7, r3, #3
30007b90:	f405 7500 	and.w	r5, r5, #512	; 0x200
30007b94:	ea4f 3888 	mov.w	r8, r8, lsl #14
30007b98:	ea4c 0202 	orr.w	r2, ip, r2
30007b9c:	f007 0708 	and.w	r7, r7, #8
30007ba0:	ea4f 4e4e 	mov.w	lr, lr, lsl #17
30007ba4:	f408 38e0 	and.w	r8, r8, #114688	; 0x1c000
30007ba8:	4332      	orrs	r2, r6
30007baa:	0524      	lsls	r4, r4, #20
30007bac:	f40e 2e60 	and.w	lr, lr, #917504	; 0xe0000
30007bb0:	490a      	ldr	r1, [pc, #40]	; (30007bdc <rxi316_dram_init+0x688>)
30007bb2:	ea42 0305 	orr.w	r3, r2, r5
30007bb6:	f404 0470 	and.w	r4, r4, #15728640	; 0xf00000
30007bba:	9a05      	ldr	r2, [sp, #20]
30007bbc:	433b      	orrs	r3, r7
30007bbe:	ea43 0308 	orr.w	r3, r3, r8
30007bc2:	ea43 030e 	orr.w	r3, r3, lr
30007bc6:	4323      	orrs	r3, r4
30007bc8:	4313      	orrs	r3, r2
30007bca:	9a04      	ldr	r2, [sp, #16]
30007bcc:	f3c2 1200 	ubfx	r2, r2, #4, #1
30007bd0:	620b      	str	r3, [r1, #32]
30007bd2:	f8c1 2090 	str.w	r2, [r1, #144]	; 0x90
30007bd6:	9b03      	ldr	r3, [sp, #12]
30007bd8:	e002      	b.n	30007be0 <rxi316_dram_init+0x68c>
30007bda:	bf00      	nop
30007bdc:	41100000 	.word	0x41100000
30007be0:	2b01      	cmp	r3, #1
30007be2:	d002      	beq.n	30007bea <rxi316_dram_init+0x696>
30007be4:	9b08      	ldr	r3, [sp, #32]
30007be6:	3303      	adds	r3, #3
30007be8:	9307      	str	r3, [sp, #28]
30007bea:	4bb4      	ldr	r3, [pc, #720]	; (30007ebc <rxi316_dram_init+0x968>)
30007bec:	f64f 71ff 	movw	r1, #65535	; 0xffff
30007bf0:	9a07      	ldr	r2, [sp, #28]
30007bf2:	f8c3 2094 	str.w	r2, [r3, #148]	; 0x94
30007bf6:	f44f 62e0 	mov.w	r2, #1792	; 0x700
30007bfa:	f8c3 10cc 	str.w	r1, [r3, #204]	; 0xcc
30007bfe:	60da      	str	r2, [r3, #12]
30007c00:	f8d3 2100 	ldr.w	r2, [r3, #256]	; 0x100
30007c04:	430a      	orrs	r2, r1
30007c06:	49ae      	ldr	r1, [pc, #696]	; (30007ec0 <rxi316_dram_init+0x96c>)
30007c08:	f8c3 2100 	str.w	r2, [r3, #256]	; 0x100
30007c0c:	f8d1 2268 	ldr.w	r2, [r1, #616]	; 0x268
30007c10:	0096      	lsls	r6, r2, #2
30007c12:	f140 8089 	bpl.w	30007d28 <rxi316_dram_init+0x7d4>
30007c16:	f04f 4200 	mov.w	r2, #2147483648	; 0x80000000
30007c1a:	4ca8      	ldr	r4, [pc, #672]	; (30007ebc <rxi316_dram_init+0x968>)
30007c1c:	601a      	str	r2, [r3, #0]
30007c1e:	691a      	ldr	r2, [r3, #16]
30007c20:	f042 5280 	orr.w	r2, r2, #268435456	; 0x10000000
30007c24:	611a      	str	r2, [r3, #16]
30007c26:	f8d1 32fc 	ldr.w	r3, [r1, #764]	; 0x2fc
30007c2a:	f043 0303 	orr.w	r3, r3, #3
30007c2e:	f8c1 32fc 	str.w	r3, [r1, #764]	; 0x2fc
30007c32:	f44f 0160 	mov.w	r1, #14680064	; 0xe00000
30007c36:	9b0c      	ldr	r3, [sp, #48]	; 0x30
30007c38:	2b01      	cmp	r3, #1
30007c3a:	4ba2      	ldr	r3, [pc, #648]	; (30007ec4 <rxi316_dram_init+0x970>)
30007c3c:	bf0c      	ite	eq
30007c3e:	4aa2      	ldreq	r2, [pc, #648]	; (30007ec8 <rxi316_dram_init+0x974>)
30007c40:	4aa2      	ldrne	r2, [pc, #648]	; (30007ecc <rxi316_dram_init+0x978>)
30007c42:	601a      	str	r2, [r3, #0]
30007c44:	2203      	movs	r2, #3
30007c46:	68e0      	ldr	r0, [r4, #12]
30007c48:	4ba1      	ldr	r3, [pc, #644]	; (30007ed0 <rxi316_dram_init+0x97c>)
30007c4a:	4003      	ands	r3, r0
30007c4c:	60e3      	str	r3, [r4, #12]
30007c4e:	2308      	movs	r3, #8
30007c50:	62a1      	str	r1, [r4, #40]	; 0x28
30007c52:	62e2      	str	r2, [r4, #44]	; 0x2c
30007c54:	6023      	str	r3, [r4, #0]
30007c56:	6823      	ldr	r3, [r4, #0]
30007c58:	071d      	lsls	r5, r3, #28
30007c5a:	d5fc      	bpl.n	30007c56 <rxi316_dram_init+0x702>
30007c5c:	4b9d      	ldr	r3, [pc, #628]	; (30007ed4 <rxi316_dram_init+0x980>)
30007c5e:	2001      	movs	r0, #1
30007c60:	4798      	blx	r3
30007c62:	68e2      	ldr	r2, [r4, #12]
30007c64:	4b9a      	ldr	r3, [pc, #616]	; (30007ed0 <rxi316_dram_init+0x97c>)
30007c66:	f44f 1100 	mov.w	r1, #2097152	; 0x200000
30007c6a:	4013      	ands	r3, r2
30007c6c:	2203      	movs	r2, #3
30007c6e:	60e3      	str	r3, [r4, #12]
30007c70:	2308      	movs	r3, #8
30007c72:	62a1      	str	r1, [r4, #40]	; 0x28
30007c74:	62e2      	str	r2, [r4, #44]	; 0x2c
30007c76:	4a91      	ldr	r2, [pc, #580]	; (30007ebc <rxi316_dram_init+0x968>)
30007c78:	6023      	str	r3, [r4, #0]
30007c7a:	6813      	ldr	r3, [r2, #0]
30007c7c:	071c      	lsls	r4, r3, #28
30007c7e:	d5fc      	bpl.n	30007c7a <rxi316_dram_init+0x726>
30007c80:	68d0      	ldr	r0, [r2, #12]
30007c82:	f04f 7190 	mov.w	r1, #18874368	; 0x1200000
30007c86:	4b92      	ldr	r3, [pc, #584]	; (30007ed0 <rxi316_dram_init+0x97c>)
30007c88:	4003      	ands	r3, r0
30007c8a:	2008      	movs	r0, #8
30007c8c:	60d3      	str	r3, [r2, #12]
30007c8e:	6291      	str	r1, [r2, #40]	; 0x28
30007c90:	6ad3      	ldr	r3, [r2, #44]	; 0x2c
30007c92:	498a      	ldr	r1, [pc, #552]	; (30007ebc <rxi316_dram_init+0x968>)
30007c94:	f023 0302 	bic.w	r3, r3, #2
30007c98:	62d3      	str	r3, [r2, #44]	; 0x2c
30007c9a:	6010      	str	r0, [r2, #0]
30007c9c:	680b      	ldr	r3, [r1, #0]
30007c9e:	0718      	lsls	r0, r3, #28
30007ca0:	d5fc      	bpl.n	30007c9c <rxi316_dram_init+0x748>
30007ca2:	4a86      	ldr	r2, [pc, #536]	; (30007ebc <rxi316_dram_init+0x968>)
30007ca4:	f44f 63c0 	mov.w	r3, #1536	; 0x600
30007ca8:	f04f 4100 	mov.w	r1, #2147483648	; 0x80000000
30007cac:	60d3      	str	r3, [r2, #12]
30007cae:	980a      	ldr	r0, [sp, #40]	; 0x28
30007cb0:	6913      	ldr	r3, [r2, #16]
30007cb2:	4318      	orrs	r0, r3
30007cb4:	6110      	str	r0, [r2, #16]
30007cb6:	6913      	ldr	r3, [r2, #16]
30007cb8:	f023 5380 	bic.w	r3, r3, #268435456	; 0x10000000
30007cbc:	6113      	str	r3, [r2, #16]
30007cbe:	6011      	str	r1, [r2, #0]
30007cc0:	68d3      	ldr	r3, [r2, #12]
30007cc2:	f3c3 030a 	ubfx	r3, r3, #0, #11
30007cc6:	f5b3 6fc0 	cmp.w	r3, #1536	; 0x600
30007cca:	d1f9      	bne.n	30007cc0 <rxi316_dram_init+0x76c>
30007ccc:	b00f      	add	sp, #60	; 0x3c
30007cce:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30007cd2:	2a01      	cmp	r2, #1
30007cd4:	f000 80c6 	beq.w	30007e64 <rxi316_dram_init+0x910>
30007cd8:	2a02      	cmp	r2, #2
30007cda:	f000 8138 	beq.w	30007f4e <rxi316_dram_init+0x9fa>
30007cde:	2a03      	cmp	r2, #3
30007ce0:	f47f acde 	bne.w	300076a0 <rxi316_dram_init+0x14c>
30007ce4:	686a      	ldr	r2, [r5, #4]
30007ce6:	f042 0280 	orr.w	r2, r2, #128	; 0x80
30007cea:	606a      	str	r2, [r5, #4]
30007cec:	e4d8      	b.n	300076a0 <rxi316_dram_init+0x14c>
30007cee:	f1a1 0602 	sub.w	r6, r1, #2
30007cf2:	2909      	cmp	r1, #9
30007cf4:	fab6 f686 	clz	r6, r6
30007cf8:	ea4f 1656 	mov.w	r6, r6, lsr #5
30007cfc:	d002      	beq.n	30007d04 <rxi316_dram_init+0x7b0>
30007cfe:	2e00      	cmp	r6, #0
30007d00:	f43f ad57 	beq.w	300077b2 <rxi316_dram_init+0x25e>
30007d04:	2503      	movs	r5, #3
30007d06:	4328      	orrs	r0, r5
30007d08:	7915      	ldrb	r5, [r2, #4]
30007d0a:	68a2      	ldr	r2, [r4, #8]
30007d0c:	9f09      	ldr	r7, [sp, #36]	; 0x24
30007d0e:	6dd2      	ldr	r2, [r2, #92]	; 0x5c
30007d10:	013f      	lsls	r7, r7, #4
30007d12:	2e00      	cmp	r6, #0
30007d14:	f000 80c0 	beq.w	30007e98 <rxi316_dram_init+0x944>
30007d18:	1e91      	subs	r1, r2, #2
30007d1a:	2906      	cmp	r1, #6
30007d1c:	f200 809c 	bhi.w	30007e58 <rxi316_dram_init+0x904>
30007d20:	1e56      	subs	r6, r2, #1
30007d22:	2100      	movs	r1, #0
30007d24:	0276      	lsls	r6, r6, #9
30007d26:	e54b      	b.n	300077c0 <rxi316_dram_init+0x26c>
30007d28:	2201      	movs	r2, #1
30007d2a:	601a      	str	r2, [r3, #0]
30007d2c:	681a      	ldr	r2, [r3, #0]
30007d2e:	07d2      	lsls	r2, r2, #31
30007d30:	d5fc      	bpl.n	30007d2c <rxi316_dram_init+0x7d8>
30007d32:	e7b6      	b.n	30007ca2 <rxi316_dram_init+0x74e>
30007d34:	2701      	movs	r7, #1
30007d36:	e711      	b.n	30007b5c <rxi316_dram_init+0x608>
30007d38:	68a1      	ldr	r1, [r4, #8]
30007d3a:	2f03      	cmp	r7, #3
30007d3c:	f8d1 c020 	ldr.w	ip, [r1, #32]
30007d40:	d04e      	beq.n	30007de0 <rxi316_dram_init+0x88c>
30007d42:	2f02      	cmp	r7, #2
30007d44:	f040 810e 	bne.w	30007f64 <rxi316_dram_init+0xa10>
30007d48:	fbbc f1f3 	udiv	r1, ip, r3
30007d4c:	fb03 cc11 	mls	ip, r3, r1, ip
30007d50:	f1bc 0f00 	cmp.w	ip, #0
30007d54:	f000 8093 	beq.w	30007e7e <rxi316_dram_init+0x92a>
30007d58:	9709      	str	r7, [sp, #36]	; 0x24
30007d5a:	3101      	adds	r1, #1
30007d5c:	9f01      	ldr	r7, [sp, #4]
30007d5e:	2f02      	cmp	r7, #2
30007d60:	f47f aea4 	bne.w	30007aac <rxi316_dram_init+0x558>
30007d64:	4f5c      	ldr	r7, [pc, #368]	; (30007ed8 <rxi316_dram_init+0x984>)
30007d66:	f04f 0e00 	mov.w	lr, #0
30007d6a:	f8df 8170 	ldr.w	r8, [pc, #368]	; 30007edc <rxi316_dram_init+0x988>
30007d6e:	fbb7 f7f3 	udiv	r7, r7, r3
30007d72:	fbb8 f8f3 	udiv	r8, r8, r3
30007d76:	09ff      	lsrs	r7, r7, #7
30007d78:	ea4f 2898 	mov.w	r8, r8, lsr #10
30007d7c:	3701      	adds	r7, #1
30007d7e:	f108 0c01 	add.w	ip, r8, #1
30007d82:	f8df 815c 	ldr.w	r8, [pc, #348]	; 30007ee0 <rxi316_dram_init+0x98c>
30007d86:	023f      	lsls	r7, r7, #8
30007d88:	ea08 380c 	and.w	r8, r8, ip, lsl #12
30007d8c:	f407 6770 	and.w	r7, r7, #3840	; 0xf00
30007d90:	9701      	str	r7, [sp, #4]
30007d92:	e698      	b.n	30007ac6 <rxi316_dram_init+0x572>
30007d94:	f8cd c018 	str.w	ip, [sp, #24]
30007d98:	e5ab      	b.n	300078f2 <rxi316_dram_init+0x39e>
30007d9a:	38c8      	subs	r0, #200	; 0xc8
30007d9c:	e583      	b.n	300078a6 <rxi316_dram_init+0x352>
30007d9e:	4689      	mov	r9, r1
30007da0:	e578      	b.n	30007894 <rxi316_dram_init+0x340>
30007da2:	ea1a 0f07 	tst.w	sl, r7
30007da6:	fa27 f00b 	lsr.w	r0, r7, fp
30007daa:	f43f ad4d 	beq.w	30007848 <rxi316_dram_init+0x2f4>
30007dae:	e54a      	b.n	30007846 <rxi316_dram_init+0x2f2>
30007db0:	9a0d      	ldr	r2, [sp, #52]	; 0x34
30007db2:	1f50      	subs	r0, r2, #5
30007db4:	00c0      	lsls	r0, r0, #3
30007db6:	68e2      	ldr	r2, [r4, #12]
30007db8:	6812      	ldr	r2, [r2, #0]
30007dba:	6b92      	ldr	r2, [r2, #56]	; 0x38
30007dbc:	fab2 f282 	clz	r2, r2
30007dc0:	0952      	lsrs	r2, r2, #5
30007dc2:	ea41 2142 	orr.w	r1, r1, r2, lsl #9
30007dc6:	4301      	orrs	r1, r0
30007dc8:	e511      	b.n	300077ee <rxi316_dram_init+0x29a>
30007dca:	f1a1 0602 	sub.w	r6, r1, #2
30007dce:	2909      	cmp	r1, #9
30007dd0:	fab6 f686 	clz	r6, r6
30007dd4:	ea4f 1656 	mov.w	r6, r6, lsr #5
30007dd8:	f000 80b7 	beq.w	30007f4a <rxi316_dram_init+0x9f6>
30007ddc:	4637      	mov	r7, r6
30007dde:	e4e4      	b.n	300077aa <rxi316_dram_init+0x256>
30007de0:	2702      	movs	r7, #2
30007de2:	9709      	str	r7, [sp, #36]	; 0x24
30007de4:	6a09      	ldr	r1, [r1, #32]
30007de6:	e65d      	b.n	30007aa4 <rxi316_dram_init+0x550>
30007de8:	e9dd 1508 	ldrd	r1, r5, [sp, #32]
30007dec:	440d      	add	r5, r1
30007dee:	46a8      	mov	r8, r5
30007df0:	e60b      	b.n	30007a0a <rxi316_dram_init+0x4b6>
30007df2:	9a08      	ldr	r2, [sp, #32]
30007df4:	fa22 f10b 	lsr.w	r1, r2, fp
30007df8:	e59a      	b.n	30007930 <rxi316_dram_init+0x3dc>
30007dfa:	2000      	movs	r0, #0
30007dfc:	e7db      	b.n	30007db6 <rxi316_dram_init+0x862>
30007dfe:	f242 7710 	movw	r7, #10000	; 0x2710
30007e02:	f8df 80e0 	ldr.w	r8, [pc, #224]	; 30007ee4 <rxi316_dram_init+0x990>
30007e06:	f8df e0d4 	ldr.w	lr, [pc, #212]	; 30007edc <rxi316_dram_init+0x988>
30007e0a:	fbb7 f7f3 	udiv	r7, r7, r3
30007e0e:	444f      	add	r7, r9
30007e10:	fbb8 f8f3 	udiv	r8, r8, r3
30007e14:	fbbe fef3 	udiv	lr, lr, r3
30007e18:	09ff      	lsrs	r7, r7, #7
30007e1a:	ea4f 2898 	mov.w	r8, r8, lsr #10
30007e1e:	3701      	adds	r7, #1
30007e20:	ea4f 2e9e 	mov.w	lr, lr, lsr #10
30007e24:	f108 0c01 	add.w	ip, r8, #1
30007e28:	f8df 80b4 	ldr.w	r8, [pc, #180]	; 30007ee0 <rxi316_dram_init+0x98c>
30007e2c:	023f      	lsls	r7, r7, #8
30007e2e:	f10e 0e01 	add.w	lr, lr, #1
30007e32:	ea08 380c 	and.w	r8, r8, ip, lsl #12
30007e36:	f407 6770 	and.w	r7, r7, #3840	; 0xf00
30007e3a:	ea4f 5e8e 	mov.w	lr, lr, lsl #22
30007e3e:	9701      	str	r7, [sp, #4]
30007e40:	e641      	b.n	30007ac6 <rxi316_dram_init+0x572>
30007e42:	9e08      	ldr	r6, [sp, #32]
30007e44:	3e02      	subs	r6, #2
30007e46:	fa26 f60b 	lsr.w	r6, r6, fp
30007e4a:	b102      	cbz	r2, 30007e4e <rxi316_dram_init+0x8fa>
30007e4c:	3101      	adds	r1, #1
30007e4e:	4431      	add	r1, r6
30007e50:	e56e      	b.n	30007930 <rxi316_dram_init+0x3dc>
30007e52:	f8dd 801c 	ldr.w	r8, [sp, #28]
30007e56:	e5d8      	b.n	30007a0a <rxi316_dram_init+0x4b6>
30007e58:	2100      	movs	r1, #0
30007e5a:	460e      	mov	r6, r1
30007e5c:	e4b0      	b.n	300077c0 <rxi316_dram_init+0x26c>
30007e5e:	3a07      	subs	r2, #7
30007e60:	f7ff bbbd 	b.w	300075de <rxi316_dram_init+0x8a>
30007e64:	686a      	ldr	r2, [r5, #4]
30007e66:	f042 0220 	orr.w	r2, r2, #32
30007e6a:	606a      	str	r2, [r5, #4]
30007e6c:	e418      	b.n	300076a0 <rxi316_dram_init+0x14c>
30007e6e:	2204      	movs	r2, #4
30007e70:	2102      	movs	r1, #2
30007e72:	2500      	movs	r5, #0
30007e74:	9202      	str	r2, [sp, #8]
30007e76:	e9cd 2107 	strd	r2, r1, [sp, #28]
30007e7a:	f7ff bb99 	b.w	300075b0 <rxi316_dram_init+0x5c>
30007e7e:	9709      	str	r7, [sp, #36]	; 0x24
30007e80:	e610      	b.n	30007aa4 <rxi316_dram_init+0x550>
30007e82:	3a08      	subs	r2, #8
30007e84:	f7ff bbab 	b.w	300075de <rxi316_dram_init+0x8a>
30007e88:	9a09      	ldr	r2, [sp, #36]	; 0x24
30007e8a:	2a04      	cmp	r2, #4
30007e8c:	d909      	bls.n	30007ea2 <rxi316_dram_init+0x94e>
30007e8e:	2a0b      	cmp	r2, #11
30007e90:	d874      	bhi.n	30007f7c <rxi316_dram_init+0xa28>
30007e92:	1f17      	subs	r7, r2, #4
30007e94:	013f      	lsls	r7, r7, #4
30007e96:	e005      	b.n	30007ea4 <rxi316_dram_init+0x950>
30007e98:	2903      	cmp	r1, #3
30007e9a:	d005      	beq.n	30007ea8 <rxi316_dram_init+0x954>
30007e9c:	f44f 5180 	mov.w	r1, #4096	; 0x1000
30007ea0:	e48e      	b.n	300077c0 <rxi316_dram_init+0x26c>
30007ea2:	2710      	movs	r7, #16
30007ea4:	68a2      	ldr	r2, [r4, #8]
30007ea6:	6dd2      	ldr	r2, [r2, #92]	; 0x5c
30007ea8:	2a04      	cmp	r2, #4
30007eaa:	d956      	bls.n	30007f5a <rxi316_dram_init+0xa06>
30007eac:	1f51      	subs	r1, r2, #5
30007eae:	2903      	cmp	r1, #3
30007eb0:	d85b      	bhi.n	30007f6a <rxi316_dram_init+0xa16>
30007eb2:	1f16      	subs	r6, r2, #4
30007eb4:	f44f 5180 	mov.w	r1, #4096	; 0x1000
30007eb8:	0276      	lsls	r6, r6, #9
30007eba:	e481      	b.n	300077c0 <rxi316_dram_init+0x26c>
30007ebc:	41100000 	.word	0x41100000
30007ec0:	42008000 	.word	0x42008000
30007ec4:	41011000 	.word	0x41011000
30007ec8:	44000103 	.word	0x44000103
30007ecc:	44000021 	.word	0x44000021
30007ed0:	fff8fffc 	.word	0xfff8fffc
30007ed4:	00009b2d 	.word	0x00009b2d
30007ed8:	00061a80 	.word	0x00061a80
30007edc:	0bebc200 	.word	0x0bebc200
30007ee0:	003ff000 	.word	0x003ff000
30007ee4:	1dcd6500 	.word	0x1dcd6500
30007ee8:	f1a1 0c09 	sub.w	ip, r1, #9
30007eec:	f1a1 0602 	sub.w	r6, r1, #2
30007ef0:	1e8d      	subs	r5, r1, #2
30007ef2:	fabc fc8c 	clz	ip, ip
30007ef6:	fab6 f686 	clz	r6, r6
30007efa:	2d01      	cmp	r5, #1
30007efc:	ea4f 1c5c 	mov.w	ip, ip, lsr #5
30007f00:	ea4f 1656 	mov.w	r6, r6, lsr #5
30007f04:	ea4c 0706 	orr.w	r7, ip, r6
30007f08:	d903      	bls.n	30007f12 <rxi316_dram_init+0x9be>
30007f0a:	f1bc 0f00 	cmp.w	ip, #0
30007f0e:	f43f ac4c 	beq.w	300077aa <rxi316_dram_init+0x256>
30007f12:	f040 0002 	orr.w	r0, r0, #2
30007f16:	e448      	b.n	300077aa <rxi316_dram_init+0x256>
30007f18:	4f1e      	ldr	r7, [pc, #120]	; (30007f94 <rxi316_dram_init+0xa40>)
30007f1a:	f04f 0e00 	mov.w	lr, #0
30007f1e:	fbb7 f8f3 	udiv	r8, r7, r3
30007f22:	ea4f 2898 	mov.w	r8, r8, lsr #10
30007f26:	f8cd e004 	str.w	lr, [sp, #4]
30007f2a:	f108 0701 	add.w	r7, r8, #1
30007f2e:	f8df 8068 	ldr.w	r8, [pc, #104]	; 30007f98 <rxi316_dram_init+0xa44>
30007f32:	ea08 3807 	and.w	r8, r8, r7, lsl #12
30007f36:	e5c6      	b.n	30007ac6 <rxi316_dram_init+0x572>
30007f38:	9909      	ldr	r1, [sp, #36]	; 0x24
30007f3a:	f101 0802 	add.w	r8, r1, #2
30007f3e:	990d      	ldr	r1, [sp, #52]	; 0x34
30007f40:	eba8 0801 	sub.w	r8, r8, r1
30007f44:	9908      	ldr	r1, [sp, #32]
30007f46:	4488      	add	r8, r1
30007f48:	e55f      	b.n	30007a0a <rxi316_dram_init+0x4b6>
30007f4a:	2504      	movs	r5, #4
30007f4c:	e6db      	b.n	30007d06 <rxi316_dram_init+0x7b2>
30007f4e:	686a      	ldr	r2, [r5, #4]
30007f50:	f042 0240 	orr.w	r2, r2, #64	; 0x40
30007f54:	606a      	str	r2, [r5, #4]
30007f56:	f7ff bba3 	b.w	300076a0 <rxi316_dram_init+0x14c>
30007f5a:	f44f 5180 	mov.w	r1, #4096	; 0x1000
30007f5e:	f44f 7600 	mov.w	r6, #512	; 0x200
30007f62:	e42d      	b.n	300077c0 <rxi316_dram_init+0x26c>
30007f64:	2702      	movs	r7, #2
30007f66:	9709      	str	r7, [sp, #36]	; 0x24
30007f68:	e595      	b.n	30007a96 <rxi316_dram_init+0x542>
30007f6a:	f1a2 0109 	sub.w	r1, r2, #9
30007f6e:	2905      	cmp	r1, #5
30007f70:	d80b      	bhi.n	30007f8a <rxi316_dram_init+0xa36>
30007f72:	0856      	lsrs	r6, r2, #1
30007f74:	f44f 5180 	mov.w	r1, #4096	; 0x1000
30007f78:	0276      	lsls	r6, r6, #9
30007f7a:	e421      	b.n	300077c0 <rxi316_dram_init+0x26c>
30007f7c:	9a09      	ldr	r2, [sp, #36]	; 0x24
30007f7e:	f040 0004 	orr.w	r0, r0, #4
30007f82:	f1a2 070c 	sub.w	r7, r2, #12
30007f86:	013f      	lsls	r7, r7, #4
30007f88:	e78c      	b.n	30007ea4 <rxi316_dram_init+0x950>
30007f8a:	f44f 5180 	mov.w	r1, #4096	; 0x1000
30007f8e:	2600      	movs	r6, #0
30007f90:	e416      	b.n	300077c0 <rxi316_dram_init+0x26c>
30007f92:	bf00      	nop
30007f94:	0bebc200 	.word	0x0bebc200
30007f98:	003ff000 	.word	0x003ff000

30007f9c <rxi316_ftend_init>:
30007f9c:	2300      	movs	r3, #0
30007f9e:	b510      	push	{r4, lr}
30007fa0:	4c0c      	ldr	r4, [pc, #48]	; (30007fd4 <rxi316_ftend_init+0x38>)
30007fa2:	f8c4 3818 	str.w	r3, [r4, #2072]	; 0x818
30007fa6:	f8c4 3858 	str.w	r3, [r4, #2136]	; 0x858
30007faa:	f8c4 3898 	str.w	r3, [r4, #2200]	; 0x898
30007fae:	f7fe fe49 	bl	30006c44 <ddr_init_index>
30007fb2:	4a09      	ldr	r2, [pc, #36]	; (30007fd8 <rxi316_ftend_init+0x3c>)
30007fb4:	f8d4 3104 	ldr.w	r3, [r4, #260]	; 0x104
30007fb8:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
30007fbc:	f023 02ff 	bic.w	r2, r3, #255	; 0xff
30007fc0:	68cb      	ldr	r3, [r1, #12]
30007fc2:	689b      	ldr	r3, [r3, #8]
30007fc4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
30007fc6:	3301      	adds	r3, #1
30007fc8:	b2db      	uxtb	r3, r3
30007fca:	4313      	orrs	r3, r2
30007fcc:	f8c4 3104 	str.w	r3, [r4, #260]	; 0x104
30007fd0:	bd10      	pop	{r4, pc}
30007fd2:	bf00      	nop
30007fd4:	41101000 	.word	0x41101000
30007fd8:	3000dd8c 	.word	0x3000dd8c

30007fdc <rxi316_DynSre_init>:
30007fdc:	b538      	push	{r3, r4, r5, lr}
30007fde:	4b20      	ldr	r3, [pc, #128]	; (30008060 <rxi316_DynSre_init+0x84>)
30007fe0:	4604      	mov	r4, r0
30007fe2:	460d      	mov	r5, r1
30007fe4:	4798      	blx	r3
30007fe6:	2802      	cmp	r0, #2
30007fe8:	d91c      	bls.n	30008024 <rxi316_DynSre_init+0x48>
30007fea:	4b1e      	ldr	r3, [pc, #120]	; (30008064 <rxi316_DynSre_init+0x88>)
30007fec:	691b      	ldr	r3, [r3, #16]
30007fee:	f3c3 230f 	ubfx	r3, r3, #8, #16
30007ff2:	3b46      	subs	r3, #70	; 0x46
30007ff4:	42a3      	cmp	r3, r4
30007ff6:	d92d      	bls.n	30008054 <rxi316_DynSre_init+0x78>
30007ff8:	2d01      	cmp	r5, #1
30007ffa:	d017      	beq.n	3000802c <rxi316_DynSre_init+0x50>
30007ffc:	4a19      	ldr	r2, [pc, #100]	; (30008064 <rxi316_DynSre_init+0x88>)
30007ffe:	6893      	ldr	r3, [r2, #8]
30008000:	f023 0380 	bic.w	r3, r3, #128	; 0x80
30008004:	6093      	str	r3, [r2, #8]
30008006:	4b17      	ldr	r3, [pc, #92]	; (30008064 <rxi316_DynSre_init+0x88>)
30008008:	f44f 1200 	mov.w	r2, #2097152	; 0x200000
3000800c:	f04f 4100 	mov.w	r1, #2147483648	; 0x80000000
30008010:	625a      	str	r2, [r3, #36]	; 0x24
30008012:	629a      	str	r2, [r3, #40]	; 0x28
30008014:	69da      	ldr	r2, [r3, #28]
30008016:	f422 6270 	bic.w	r2, r2, #3840	; 0xf00
3000801a:	f442 7200 	orr.w	r2, r2, #512	; 0x200
3000801e:	61da      	str	r2, [r3, #28]
30008020:	6019      	str	r1, [r3, #0]
30008022:	bd38      	pop	{r3, r4, r5, pc}
30008024:	2d01      	cmp	r5, #1
30008026:	f04f 0400 	mov.w	r4, #0
3000802a:	d1e7      	bne.n	30007ffc <rxi316_DynSre_init+0x20>
3000802c:	4b0d      	ldr	r3, [pc, #52]	; (30008064 <rxi316_DynSre_init+0x88>)
3000802e:	f64f 70fe 	movw	r0, #65534	; 0xfffe
30008032:	4a0d      	ldr	r2, [pc, #52]	; (30008068 <rxi316_DynSre_init+0x8c>)
30008034:	f8d3 1100 	ldr.w	r1, [r3, #256]	; 0x100
30008038:	4004      	ands	r4, r0
3000803a:	400a      	ands	r2, r1
3000803c:	f8c3 2100 	str.w	r2, [r3, #256]	; 0x100
30008040:	f8d3 0100 	ldr.w	r0, [r3, #256]	; 0x100
30008044:	4304      	orrs	r4, r0
30008046:	f8c3 4100 	str.w	r4, [r3, #256]	; 0x100
3000804a:	689a      	ldr	r2, [r3, #8]
3000804c:	f042 0280 	orr.w	r2, r2, #128	; 0x80
30008050:	609a      	str	r2, [r3, #8]
30008052:	e7d8      	b.n	30008006 <rxi316_DynSre_init+0x2a>
30008054:	f240 410f 	movw	r1, #1039	; 0x40f
30008058:	4804      	ldr	r0, [pc, #16]	; (3000806c <rxi316_DynSre_init+0x90>)
3000805a:	f002 ff43 	bl	3000aee4 <io_assert_failed>
3000805e:	bf00      	nop
30008060:	3000a529 	.word	0x3000a529
30008064:	41100000 	.word	0x41100000
30008068:	ffff0000 	.word	0xffff0000
3000806c:	3000c2d8 	.word	0x3000c2d8

30008070 <ddr_init>:
30008070:	b500      	push	{lr}
30008072:	b083      	sub	sp, #12
30008074:	f7fe fde6 	bl	30006c44 <ddr_init_index>
30008078:	4b06      	ldr	r3, [pc, #24]	; (30008094 <ddr_init+0x24>)
3000807a:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
3000807e:	9001      	str	r0, [sp, #4]
30008080:	f7fe fe0e 	bl	30006ca0 <rxi316_perf_tune>
30008084:	9801      	ldr	r0, [sp, #4]
30008086:	f7ff fa65 	bl	30007554 <rxi316_dram_init>
3000808a:	b003      	add	sp, #12
3000808c:	f85d eb04 	ldr.w	lr, [sp], #4
30008090:	f7ff bf84 	b.w	30007f9c <rxi316_ftend_init>
30008094:	3000dd8c 	.word	0x3000dd8c

30008098 <ChipInfo_InitPsramInfoFromMemInfo>:
30008098:	b538      	push	{r3, r4, r5, lr}
3000809a:	460c      	mov	r4, r1
3000809c:	4b1d      	ldr	r3, [pc, #116]	; (30008114 <ChipInfo_InitPsramInfoFromMemInfo+0x7c>)
3000809e:	2224      	movs	r2, #36	; 0x24
300080a0:	2100      	movs	r1, #0
300080a2:	4605      	mov	r5, r0
300080a4:	4620      	mov	r0, r4
300080a6:	4798      	blx	r3
300080a8:	2300      	movs	r3, #0
300080aa:	6123      	str	r3, [r4, #16]
300080ac:	b1bd      	cbz	r5, 300080de <ChipInfo_InitPsramInfoFromMemInfo+0x46>
300080ae:	fab4 f284 	clz	r2, r4
300080b2:	0952      	lsrs	r2, r2, #5
300080b4:	b19c      	cbz	r4, 300080de <ChipInfo_InitPsramInfoFromMemInfo+0x46>
300080b6:	782b      	ldrb	r3, [r5, #0]
300080b8:	f013 0304 	ands.w	r3, r3, #4
300080bc:	d010      	beq.n	300080e0 <ChipInfo_InitPsramInfoFromMemInfo+0x48>
300080be:	78ab      	ldrb	r3, [r5, #2]
300080c0:	f003 0307 	and.w	r3, r3, #7
300080c4:	2b01      	cmp	r3, #1
300080c6:	d00f      	beq.n	300080e8 <ChipInfo_InitPsramInfoFromMemInfo+0x50>
300080c8:	2b02      	cmp	r3, #2
300080ca:	d10b      	bne.n	300080e4 <ChipInfo_InitPsramInfoFromMemInfo+0x4c>
300080cc:	6023      	str	r3, [r4, #0]
300080ce:	78ab      	ldrb	r3, [r5, #2]
300080d0:	08db      	lsrs	r3, r3, #3
300080d2:	2b06      	cmp	r3, #6
300080d4:	d019      	beq.n	3000810a <ChipInfo_InitPsramInfoFromMemInfo+0x72>
300080d6:	2b07      	cmp	r3, #7
300080d8:	d013      	beq.n	30008102 <ChipInfo_InitPsramInfoFromMemInfo+0x6a>
300080da:	2b04      	cmp	r3, #4
300080dc:	d00d      	beq.n	300080fa <ChipInfo_InitPsramInfoFromMemInfo+0x62>
300080de:	bd38      	pop	{r3, r4, r5, pc}
300080e0:	6023      	str	r3, [r4, #0]
300080e2:	bd38      	pop	{r3, r4, r5, pc}
300080e4:	6022      	str	r2, [r4, #0]
300080e6:	bd38      	pop	{r3, r4, r5, pc}
300080e8:	6023      	str	r3, [r4, #0]
300080ea:	78ab      	ldrb	r3, [r5, #2]
300080ec:	08db      	lsrs	r3, r3, #3
300080ee:	2b05      	cmp	r3, #5
300080f0:	d1f5      	bne.n	300080de <ChipInfo_InitPsramInfoFromMemInfo+0x46>
300080f2:	f44f 0300 	mov.w	r3, #8388608	; 0x800000
300080f6:	60a3      	str	r3, [r4, #8]
300080f8:	bd38      	pop	{r3, r4, r5, pc}
300080fa:	f44f 0380 	mov.w	r3, #4194304	; 0x400000
300080fe:	60a3      	str	r3, [r4, #8]
30008100:	bd38      	pop	{r3, r4, r5, pc}
30008102:	f04f 7300 	mov.w	r3, #33554432	; 0x2000000
30008106:	60a3      	str	r3, [r4, #8]
30008108:	bd38      	pop	{r3, r4, r5, pc}
3000810a:	f04f 7380 	mov.w	r3, #16777216	; 0x1000000
3000810e:	60a3      	str	r3, [r4, #8]
30008110:	bd38      	pop	{r3, r4, r5, pc}
30008112:	bf00      	nop
30008114:	00012be5 	.word	0x00012be5

30008118 <PSRAM_INFO_Update>:
30008118:	4a48      	ldr	r2, [pc, #288]	; (3000823c <PSRAM_INFO_Update+0x124>)
3000811a:	4b49      	ldr	r3, [pc, #292]	; (30008240 <PSRAM_INFO_Update+0x128>)
3000811c:	b570      	push	{r4, r5, r6, lr}
3000811e:	4c49      	ldr	r4, [pc, #292]	; (30008244 <PSRAM_INFO_Update+0x12c>)
30008120:	b084      	sub	sp, #16
30008122:	f8d2 5228 	ldr.w	r5, [r2, #552]	; 0x228
30008126:	4798      	blx	r3
30008128:	4603      	mov	r3, r0
3000812a:	4621      	mov	r1, r4
3000812c:	a803      	add	r0, sp, #12
3000812e:	f3c5 2502 	ubfx	r5, r5, #8, #3
30008132:	9303      	str	r3, [sp, #12]
30008134:	f7ff ffb0 	bl	30008098 <ChipInfo_InitPsramInfoFromMemInfo>
30008138:	4943      	ldr	r1, [pc, #268]	; (30008248 <PSRAM_INFO_Update+0x130>)
3000813a:	3501      	adds	r5, #1
3000813c:	4a43      	ldr	r2, [pc, #268]	; (3000824c <PSRAM_INFO_Update+0x134>)
3000813e:	260a      	movs	r6, #10
30008140:	6809      	ldr	r1, [r1, #0]
30008142:	4b43      	ldr	r3, [pc, #268]	; (30008250 <PSRAM_INFO_Update+0x138>)
30008144:	fb02 f101 	mul.w	r1, r2, r1
30008148:	2232      	movs	r2, #50	; 0x32
3000814a:	6126      	str	r6, [r4, #16]
3000814c:	fbb1 f1f5 	udiv	r1, r1, r5
30008150:	fbb3 f3f1 	udiv	r3, r3, r1
30008154:	6163      	str	r3, [r4, #20]
30008156:	0848      	lsrs	r0, r1, #1
30008158:	fbb2 f3f3 	udiv	r3, r2, r3
3000815c:	6223      	str	r3, [r4, #32]
3000815e:	6823      	ldr	r3, [r4, #0]
30008160:	60e0      	str	r0, [r4, #12]
30008162:	2b01      	cmp	r3, #1
30008164:	4b3b      	ldr	r3, [pc, #236]	; (30008254 <PSRAM_INFO_Update+0x13c>)
30008166:	d01d      	beq.n	300081a4 <PSRAM_INFO_Update+0x8c>
30008168:	4298      	cmp	r0, r3
3000816a:	d810      	bhi.n	3000818e <PSRAM_INFO_Update+0x76>
3000816c:	2304      	movs	r3, #4
3000816e:	2208      	movs	r2, #8
30008170:	461d      	mov	r5, r3
30008172:	e9c4 3206 	strd	r3, r2, [r4, #24]
30008176:	4838      	ldr	r0, [pc, #224]	; (30008258 <PSRAM_INFO_Update+0x140>)
30008178:	2249      	movs	r2, #73	; 0x49
3000817a:	4b38      	ldr	r3, [pc, #224]	; (3000825c <PSRAM_INFO_Update+0x144>)
3000817c:	f880 5114 	strb.w	r5, [r0, #276]	; 0x114
30008180:	2004      	movs	r0, #4
30008182:	9100      	str	r1, [sp, #0]
30008184:	4936      	ldr	r1, [pc, #216]	; (30008260 <PSRAM_INFO_Update+0x148>)
30008186:	f001 f8c9 	bl	3000931c <rtk_log_write>
3000818a:	b004      	add	sp, #16
3000818c:	bd70      	pop	{r4, r5, r6, pc}
3000818e:	4b35      	ldr	r3, [pc, #212]	; (30008264 <PSRAM_INFO_Update+0x14c>)
30008190:	4298      	cmp	r0, r3
30008192:	d918      	bls.n	300081c6 <PSRAM_INFO_Update+0xae>
30008194:	4b34      	ldr	r3, [pc, #208]	; (30008268 <PSRAM_INFO_Update+0x150>)
30008196:	4298      	cmp	r0, r3
30008198:	d827      	bhi.n	300081ea <PSRAM_INFO_Update+0xd2>
3000819a:	2306      	movs	r3, #6
3000819c:	461d      	mov	r5, r3
3000819e:	e9c4 3306 	strd	r3, r3, [r4, #24]
300081a2:	e7e8      	b.n	30008176 <PSRAM_INFO_Update+0x5e>
300081a4:	4298      	cmp	r0, r3
300081a6:	d908      	bls.n	300081ba <PSRAM_INFO_Update+0xa2>
300081a8:	4b2e      	ldr	r3, [pc, #184]	; (30008264 <PSRAM_INFO_Update+0x14c>)
300081aa:	4298      	cmp	r0, r3
300081ac:	d811      	bhi.n	300081d2 <PSRAM_INFO_Update+0xba>
300081ae:	2305      	movs	r3, #5
300081b0:	220f      	movs	r2, #15
300081b2:	461d      	mov	r5, r3
300081b4:	e9c4 3206 	strd	r3, r2, [r4, #24]
300081b8:	e7dd      	b.n	30008176 <PSRAM_INFO_Update+0x5e>
300081ba:	2304      	movs	r3, #4
300081bc:	220f      	movs	r2, #15
300081be:	461d      	mov	r5, r3
300081c0:	e9c4 3206 	strd	r3, r2, [r4, #24]
300081c4:	e7d7      	b.n	30008176 <PSRAM_INFO_Update+0x5e>
300081c6:	2305      	movs	r3, #5
300081c8:	2208      	movs	r2, #8
300081ca:	461d      	mov	r5, r3
300081cc:	e9c4 3206 	strd	r3, r2, [r4, #24]
300081d0:	e7d1      	b.n	30008176 <PSRAM_INFO_Update+0x5e>
300081d2:	4b25      	ldr	r3, [pc, #148]	; (30008268 <PSRAM_INFO_Update+0x150>)
300081d4:	4298      	cmp	r0, r3
300081d6:	d917      	bls.n	30008208 <PSRAM_INFO_Update+0xf0>
300081d8:	4b24      	ldr	r3, [pc, #144]	; (3000826c <PSRAM_INFO_Update+0x154>)
300081da:	4298      	cmp	r0, r3
300081dc:	d820      	bhi.n	30008220 <PSRAM_INFO_Update+0x108>
300081de:	2307      	movs	r3, #7
300081e0:	2214      	movs	r2, #20
300081e2:	461d      	mov	r5, r3
300081e4:	e9c4 3206 	strd	r3, r2, [r4, #24]
300081e8:	e7c5      	b.n	30008176 <PSRAM_INFO_Update+0x5e>
300081ea:	4b20      	ldr	r3, [pc, #128]	; (3000826c <PSRAM_INFO_Update+0x154>)
300081ec:	4298      	cmp	r0, r3
300081ee:	d911      	bls.n	30008214 <PSRAM_INFO_Update+0xfc>
300081f0:	4b1f      	ldr	r3, [pc, #124]	; (30008270 <PSRAM_INFO_Update+0x158>)
300081f2:	4298      	cmp	r0, r3
300081f4:	d806      	bhi.n	30008204 <PSRAM_INFO_Update+0xec>
300081f6:	68a3      	ldr	r3, [r4, #8]
300081f8:	f1b3 7f00 	cmp.w	r3, #33554432	; 0x2000000
300081fc:	d00a      	beq.n	30008214 <PSRAM_INFO_Update+0xfc>
300081fe:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
30008202:	d016      	beq.n	30008232 <PSRAM_INFO_Update+0x11a>
30008204:	7e25      	ldrb	r5, [r4, #24]
30008206:	e7b6      	b.n	30008176 <PSRAM_INFO_Update+0x5e>
30008208:	2306      	movs	r3, #6
3000820a:	2212      	movs	r2, #18
3000820c:	461d      	mov	r5, r3
3000820e:	e9c4 3206 	strd	r3, r2, [r4, #24]
30008212:	e7b0      	b.n	30008176 <PSRAM_INFO_Update+0x5e>
30008214:	2307      	movs	r3, #7
30008216:	2206      	movs	r2, #6
30008218:	461d      	mov	r5, r3
3000821a:	e9c4 3206 	strd	r3, r2, [r4, #24]
3000821e:	e7aa      	b.n	30008176 <PSRAM_INFO_Update+0x5e>
30008220:	4b13      	ldr	r3, [pc, #76]	; (30008270 <PSRAM_INFO_Update+0x158>)
30008222:	4298      	cmp	r0, r3
30008224:	d8ee      	bhi.n	30008204 <PSRAM_INFO_Update+0xec>
30008226:	2308      	movs	r3, #8
30008228:	221c      	movs	r2, #28
3000822a:	461d      	mov	r5, r3
3000822c:	e9c4 3206 	strd	r3, r2, [r4, #24]
30008230:	e7a1      	b.n	30008176 <PSRAM_INFO_Update+0x5e>
30008232:	2306      	movs	r3, #6
30008234:	4635      	mov	r5, r6
30008236:	e9c4 6306 	strd	r6, r3, [r4, #24]
3000823a:	e79c      	b.n	30008176 <PSRAM_INFO_Update+0x5e>
3000823c:	42008000 	.word	0x42008000
30008240:	30009f8d 	.word	0x30009f8d
30008244:	3000e98c 	.word	0x3000e98c
30008248:	3000e0d4 	.word	0x3000e0d4
3000824c:	000f4240 	.word	0x000f4240
30008250:	3b9aca00 	.word	0x3b9aca00
30008254:	0632ea00 	.word	0x0632ea00
30008258:	23020000 	.word	0x23020000
3000825c:	3000c370 	.word	0x3000c370
30008260:	3000c38c 	.word	0x3000c38c
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
30008294:	b430      	push	{r4, r5}
30008296:	6903      	ldr	r3, [r0, #16]
30008298:	6842      	ldr	r2, [r0, #4]
3000829a:	6805      	ldr	r5, [r0, #0]
3000829c:	f003 031f 	and.w	r3, r3, #31
300082a0:	0612      	lsls	r2, r2, #24
300082a2:	4912      	ldr	r1, [pc, #72]	; (300082ec <PSRAM_PHY_Init+0x58>)
300082a4:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
300082a8:	4c11      	ldr	r4, [pc, #68]	; (300082f0 <PSRAM_PHY_Init+0x5c>)
300082aa:	f002 62e0 	and.w	r2, r2, #117440512	; 0x7000000
300082ae:	4313      	orrs	r3, r2
300082b0:	6882      	ldr	r2, [r0, #8]
300082b2:	0412      	lsls	r2, r2, #16
300082b4:	f402 2270 	and.w	r2, r2, #983040	; 0xf0000
300082b8:	4313      	orrs	r3, r2
300082ba:	68c2      	ldr	r2, [r0, #12]
300082bc:	0212      	lsls	r2, r2, #8
300082be:	f402 6270 	and.w	r2, r2, #3840	; 0xf00
300082c2:	4313      	orrs	r3, r2
300082c4:	604b      	str	r3, [r1, #4]
300082c6:	6823      	ldr	r3, [r4, #0]
300082c8:	2b01      	cmp	r3, #1
300082ca:	e9d0 3005 	ldrd	r3, r0, [r0, #20]
300082ce:	bf08      	it	eq
300082d0:	4a08      	ldreq	r2, [pc, #32]	; (300082f4 <PSRAM_PHY_Init+0x60>)
300082d2:	ea4f 1303 	mov.w	r3, r3, lsl #4
300082d6:	f000 000f 	and.w	r0, r0, #15
300082da:	bf18      	it	ne
300082dc:	4a06      	ldrne	r2, [pc, #24]	; (300082f8 <PSRAM_PHY_Init+0x64>)
300082de:	b2db      	uxtb	r3, r3
300082e0:	4303      	orrs	r3, r0
300082e2:	431a      	orrs	r2, r3
300082e4:	618a      	str	r2, [r1, #24]
300082e6:	bc30      	pop	{r4, r5}
300082e8:	4770      	bx	lr
300082ea:	bf00      	nop
300082ec:	41002000 	.word	0x41002000
300082f0:	3000e98c 	.word	0x3000e98c
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
30008438:	3000e98c 	.word	0x3000e98c
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
30008514:	3000e98c 	.word	0x3000e98c
30008518:	3000df24 	.word	0x3000df24
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
300085d0:	3000e98c 	.word	0x3000e98c
300085d4:	3000df44 	.word	0x3000df44
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
300086fc:	f000 fe0e 	bl	3000931c <rtk_log_write>
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
30008764:	3000df2c 	.word	0x3000df2c
30008768:	000129bd 	.word	0x000129bd
3000876c:	3000c38c 	.word	0x3000c38c
30008770:	3000c394 	.word	0x3000c394
30008774:	41002000 	.word	0x41002000

30008778 <PSRAM_AutoGating>:
30008778:	4770      	bx	lr
3000877a:	bf00      	nop

3000877c <SDM32K_Enable>:
3000877c:	4b04      	ldr	r3, [pc, #16]	; (30008790 <SDM32K_Enable+0x14>)
3000877e:	f44f 11f0 	mov.w	r1, #1966080	; 0x1e0000
30008782:	4a04      	ldr	r2, [pc, #16]	; (30008794 <SDM32K_Enable+0x18>)
30008784:	61d9      	str	r1, [r3, #28]
30008786:	6819      	ldr	r1, [r3, #0]
30008788:	430a      	orrs	r2, r1
3000878a:	601a      	str	r2, [r3, #0]
3000878c:	4770      	bx	lr
3000878e:	bf00      	nop
30008790:	42008e00 	.word	0x42008e00
30008794:	c0060000 	.word	0xc0060000

30008798 <CLK_SWITCH_XTAL>:
30008798:	b508      	push	{r3, lr}
3000879a:	2801      	cmp	r0, #1
3000879c:	4b0a      	ldr	r3, [pc, #40]	; (300087c8 <CLK_SWITCH_XTAL+0x30>)
3000879e:	f8d3 2224 	ldr.w	r2, [r3, #548]	; 0x224
300087a2:	d00d      	beq.n	300087c0 <CLK_SWITCH_XTAL+0x28>
300087a4:	4b09      	ldr	r3, [pc, #36]	; (300087cc <CLK_SWITCH_XTAL+0x34>)
300087a6:	4313      	orrs	r3, r2
300087a8:	4907      	ldr	r1, [pc, #28]	; (300087c8 <CLK_SWITCH_XTAL+0x30>)
300087aa:	4a09      	ldr	r2, [pc, #36]	; (300087d0 <CLK_SWITCH_XTAL+0x38>)
300087ac:	f8c1 3224 	str.w	r3, [r1, #548]	; 0x224
300087b0:	4790      	blx	r2
300087b2:	4a08      	ldr	r2, [pc, #32]	; (300087d4 <CLK_SWITCH_XTAL+0x3c>)
300087b4:	4b08      	ldr	r3, [pc, #32]	; (300087d8 <CLK_SWITCH_XTAL+0x40>)
300087b6:	fba2 2000 	umull	r2, r0, r2, r0
300087ba:	0c80      	lsrs	r0, r0, #18
300087bc:	6018      	str	r0, [r3, #0]
300087be:	bd08      	pop	{r3, pc}
300087c0:	4b06      	ldr	r3, [pc, #24]	; (300087dc <CLK_SWITCH_XTAL+0x44>)
300087c2:	4013      	ands	r3, r2
300087c4:	e7f0      	b.n	300087a8 <CLK_SWITCH_XTAL+0x10>
300087c6:	bf00      	nop
300087c8:	42008000 	.word	0x42008000
300087cc:	80000500 	.word	0x80000500
300087d0:	3000a231 	.word	0x3000a231
300087d4:	431bde83 	.word	0x431bde83
300087d8:	2001c700 	.word	0x2001c700
300087dc:	7ffffaff 	.word	0x7ffffaff

300087e0 <SWR_MEM>:
300087e0:	2801      	cmp	r0, #1
300087e2:	d00e      	beq.n	30008802 <SWR_MEM+0x22>
300087e4:	4b31      	ldr	r3, [pc, #196]	; (300088ac <SWR_MEM+0xcc>)
300087e6:	2000      	movs	r0, #0
300087e8:	f8d3 20c0 	ldr.w	r2, [r3, #192]	; 0xc0
300087ec:	f022 0201 	bic.w	r2, r2, #1
300087f0:	f8c3 20c0 	str.w	r2, [r3, #192]	; 0xc0
300087f4:	f8d3 20c0 	ldr.w	r2, [r3, #192]	; 0xc0
300087f8:	f022 0202 	bic.w	r2, r2, #2
300087fc:	f8c3 20c0 	str.w	r2, [r3, #192]	; 0xc0
30008800:	4770      	bx	lr
30008802:	b510      	push	{r4, lr}
30008804:	4c29      	ldr	r4, [pc, #164]	; (300088ac <SWR_MEM+0xcc>)
30008806:	4a2a      	ldr	r2, [pc, #168]	; (300088b0 <SWR_MEM+0xd0>)
30008808:	f8d4 30e4 	ldr.w	r3, [r4, #228]	; 0xe4
3000880c:	f423 5340 	bic.w	r3, r3, #12288	; 0x3000
30008810:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
30008814:	f8c4 30e4 	str.w	r3, [r4, #228]	; 0xe4
30008818:	f8d4 30d0 	ldr.w	r3, [r4, #208]	; 0xd0
3000881c:	f023 0330 	bic.w	r3, r3, #48	; 0x30
30008820:	f8c4 30d0 	str.w	r3, [r4, #208]	; 0xd0
30008824:	f8d4 30d8 	ldr.w	r3, [r4, #216]	; 0xd8
30008828:	f023 0303 	bic.w	r3, r3, #3
3000882c:	f8c4 30d8 	str.w	r3, [r4, #216]	; 0xd8
30008830:	f8d4 30d0 	ldr.w	r3, [r4, #208]	; 0xd0
30008834:	f023 7370 	bic.w	r3, r3, #62914560	; 0x3c00000
30008838:	f8c4 30d0 	str.w	r3, [r4, #208]	; 0xd0
3000883c:	4790      	blx	r2
3000883e:	2803      	cmp	r0, #3
30008840:	f8d4 30d8 	ldr.w	r3, [r4, #216]	; 0xd8
30008844:	d026      	beq.n	30008894 <SWR_MEM+0xb4>
30008846:	f043 0303 	orr.w	r3, r3, #3
3000884a:	f8c4 30d8 	str.w	r3, [r4, #216]	; 0xd8
3000884e:	f8d4 30d0 	ldr.w	r3, [r4, #208]	; 0xd0
30008852:	f043 7340 	orr.w	r3, r3, #50331648	; 0x3000000
30008856:	f8c4 30d0 	str.w	r3, [r4, #208]	; 0xd0
3000885a:	4c14      	ldr	r4, [pc, #80]	; (300088ac <SWR_MEM+0xcc>)
3000885c:	4b15      	ldr	r3, [pc, #84]	; (300088b4 <SWR_MEM+0xd4>)
3000885e:	4798      	blx	r3
30008860:	f8d4 30c0 	ldr.w	r3, [r4, #192]	; 0xc0
30008864:	4a14      	ldr	r2, [pc, #80]	; (300088b8 <SWR_MEM+0xd8>)
30008866:	f44f 7096 	mov.w	r0, #300	; 0x12c
3000886a:	f043 0302 	orr.w	r3, r3, #2
3000886e:	f8c4 30c0 	str.w	r3, [r4, #192]	; 0xc0
30008872:	4790      	blx	r2
30008874:	f8d4 20c0 	ldr.w	r2, [r4, #192]	; 0xc0
30008878:	4b10      	ldr	r3, [pc, #64]	; (300088bc <SWR_MEM+0xdc>)
3000887a:	f042 0201 	orr.w	r2, r2, #1
3000887e:	f8c4 20c0 	str.w	r2, [r4, #192]	; 0xc0
30008882:	e001      	b.n	30008888 <SWR_MEM+0xa8>
30008884:	3b01      	subs	r3, #1
30008886:	d00e      	beq.n	300088a6 <SWR_MEM+0xc6>
30008888:	f8d4 20c0 	ldr.w	r2, [r4, #192]	; 0xc0
3000888c:	03d2      	lsls	r2, r2, #15
3000888e:	d5f9      	bpl.n	30008884 <SWR_MEM+0xa4>
30008890:	2000      	movs	r0, #0
30008892:	bd10      	pop	{r4, pc}
30008894:	f8c4 30d8 	str.w	r3, [r4, #216]	; 0xd8
30008898:	f8d4 30d0 	ldr.w	r3, [r4, #208]	; 0xd0
3000889c:	f443 0340 	orr.w	r3, r3, #12582912	; 0xc00000
300088a0:	f8c4 30d0 	str.w	r3, [r4, #208]	; 0xd0
300088a4:	e7d9      	b.n	3000885a <SWR_MEM+0x7a>
300088a6:	2001      	movs	r0, #1
300088a8:	bd10      	pop	{r4, pc}
300088aa:	bf00      	nop
300088ac:	42008800 	.word	0x42008800
300088b0:	3000a005 	.word	0x3000a005
300088b4:	30008b91 	.word	0x30008b91
300088b8:	00009b2d 	.word	0x00009b2d
300088bc:	000186a0 	.word	0x000186a0

300088c0 <SWR_MEM_Manual>:
300088c0:	4a06      	ldr	r2, [pc, #24]	; (300088dc <SWR_MEM_Manual+0x1c>)
300088c2:	f8d2 30c0 	ldr.w	r3, [r2, #192]	; 0xc0
300088c6:	b120      	cbz	r0, 300088d2 <SWR_MEM_Manual+0x12>
300088c8:	f443 2300 	orr.w	r3, r3, #524288	; 0x80000
300088cc:	f8c2 30c0 	str.w	r3, [r2, #192]	; 0xc0
300088d0:	4770      	bx	lr
300088d2:	f423 2300 	bic.w	r3, r3, #524288	; 0x80000
300088d6:	f8c2 30c0 	str.w	r3, [r2, #192]	; 0xc0
300088da:	4770      	bx	lr
300088dc:	42008800 	.word	0x42008800

300088e0 <SWR_MEM_Mode_Set>:
300088e0:	2801      	cmp	r0, #1
300088e2:	b538      	push	{r3, r4, r5, lr}
300088e4:	d83f      	bhi.n	30008966 <SWR_MEM_Mode_Set+0x86>
300088e6:	d015      	beq.n	30008914 <SWR_MEM_Mode_Set+0x34>
300088e8:	4921      	ldr	r1, [pc, #132]	; (30008970 <SWR_MEM_Mode_Set+0x90>)
300088ea:	f8d1 30c0 	ldr.w	r3, [r1, #192]	; 0xc0
300088ee:	0358      	lsls	r0, r3, #13
300088f0:	d50e      	bpl.n	30008910 <SWR_MEM_Mode_Set+0x30>
300088f2:	f8d1 20d0 	ldr.w	r2, [r1, #208]	; 0xd0
300088f6:	f242 7310 	movw	r3, #10000	; 0x2710
300088fa:	f022 0240 	bic.w	r2, r2, #64	; 0x40
300088fe:	f8c1 20d0 	str.w	r2, [r1, #208]	; 0xd0
30008902:	e001      	b.n	30008908 <SWR_MEM_Mode_Set+0x28>
30008904:	3b01      	subs	r3, #1
30008906:	d02c      	beq.n	30008962 <SWR_MEM_Mode_Set+0x82>
30008908:	f8d1 20c0 	ldr.w	r2, [r1, #192]	; 0xc0
3000890c:	0352      	lsls	r2, r2, #13
3000890e:	d4f9      	bmi.n	30008904 <SWR_MEM_Mode_Set+0x24>
30008910:	2000      	movs	r0, #0
30008912:	bd38      	pop	{r3, r4, r5, pc}
30008914:	4c16      	ldr	r4, [pc, #88]	; (30008970 <SWR_MEM_Mode_Set+0x90>)
30008916:	f8d4 30c0 	ldr.w	r3, [r4, #192]	; 0xc0
3000891a:	035b      	lsls	r3, r3, #13
3000891c:	d4f8      	bmi.n	30008910 <SWR_MEM_Mode_Set+0x30>
3000891e:	f8d4 30d4 	ldr.w	r3, [r4, #212]	; 0xd4
30008922:	2064      	movs	r0, #100	; 0x64
30008924:	4d13      	ldr	r5, [pc, #76]	; (30008974 <SWR_MEM_Mode_Set+0x94>)
30008926:	f443 7380 	orr.w	r3, r3, #256	; 0x100
3000892a:	f8c4 30d4 	str.w	r3, [r4, #212]	; 0xd4
3000892e:	47a8      	blx	r5
30008930:	f8d4 30d0 	ldr.w	r3, [r4, #208]	; 0xd0
30008934:	2064      	movs	r0, #100	; 0x64
30008936:	f043 0340 	orr.w	r3, r3, #64	; 0x40
3000893a:	f8c4 30d0 	str.w	r3, [r4, #208]	; 0xd0
3000893e:	47a8      	blx	r5
30008940:	f8d4 20d4 	ldr.w	r2, [r4, #212]	; 0xd4
30008944:	f242 7310 	movw	r3, #10000	; 0x2710
30008948:	f422 7280 	bic.w	r2, r2, #256	; 0x100
3000894c:	f8c4 20d4 	str.w	r2, [r4, #212]	; 0xd4
30008950:	e001      	b.n	30008956 <SWR_MEM_Mode_Set+0x76>
30008952:	3b01      	subs	r3, #1
30008954:	d005      	beq.n	30008962 <SWR_MEM_Mode_Set+0x82>
30008956:	f8d4 20c0 	ldr.w	r2, [r4, #192]	; 0xc0
3000895a:	0355      	lsls	r5, r2, #13
3000895c:	d5f9      	bpl.n	30008952 <SWR_MEM_Mode_Set+0x72>
3000895e:	2000      	movs	r0, #0
30008960:	e7d7      	b.n	30008912 <SWR_MEM_Mode_Set+0x32>
30008962:	2001      	movs	r0, #1
30008964:	bd38      	pop	{r3, r4, r5, pc}
30008966:	217a      	movs	r1, #122	; 0x7a
30008968:	4803      	ldr	r0, [pc, #12]	; (30008978 <SWR_MEM_Mode_Set+0x98>)
3000896a:	f002 fabb 	bl	3000aee4 <io_assert_failed>
3000896e:	bf00      	nop
30008970:	42008800 	.word	0x42008800
30008974:	00009b2d 	.word	0x00009b2d
30008978:	3000c3cc 	.word	0x3000c3cc

3000897c <SWR_AUDIO>:
3000897c:	2801      	cmp	r0, #1
3000897e:	d00e      	beq.n	3000899e <SWR_AUDIO+0x22>
30008980:	4b1e      	ldr	r3, [pc, #120]	; (300089fc <SWR_AUDIO+0x80>)
30008982:	2000      	movs	r0, #0
30008984:	f8d3 2080 	ldr.w	r2, [r3, #128]	; 0x80
30008988:	f022 0201 	bic.w	r2, r2, #1
3000898c:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
30008990:	f8d3 2080 	ldr.w	r2, [r3, #128]	; 0x80
30008994:	f022 0202 	bic.w	r2, r2, #2
30008998:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
3000899c:	4770      	bx	lr
3000899e:	b510      	push	{r4, lr}
300089a0:	4c16      	ldr	r4, [pc, #88]	; (300089fc <SWR_AUDIO+0x80>)
300089a2:	4b17      	ldr	r3, [pc, #92]	; (30008a00 <SWR_AUDIO+0x84>)
300089a4:	4798      	blx	r3
300089a6:	f8d4 30a4 	ldr.w	r3, [r4, #164]	; 0xa4
300089aa:	4a16      	ldr	r2, [pc, #88]	; (30008a04 <SWR_AUDIO+0x88>)
300089ac:	f44f 7096 	mov.w	r0, #300	; 0x12c
300089b0:	f423 5340 	bic.w	r3, r3, #12288	; 0x3000
300089b4:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
300089b8:	f8c4 30a4 	str.w	r3, [r4, #164]	; 0xa4
300089bc:	f8d4 3090 	ldr.w	r3, [r4, #144]	; 0x90
300089c0:	f023 0330 	bic.w	r3, r3, #48	; 0x30
300089c4:	f8c4 3090 	str.w	r3, [r4, #144]	; 0x90
300089c8:	f8d4 3080 	ldr.w	r3, [r4, #128]	; 0x80
300089cc:	f043 0302 	orr.w	r3, r3, #2
300089d0:	f8c4 3080 	str.w	r3, [r4, #128]	; 0x80
300089d4:	4790      	blx	r2
300089d6:	f8d4 2080 	ldr.w	r2, [r4, #128]	; 0x80
300089da:	4b0b      	ldr	r3, [pc, #44]	; (30008a08 <SWR_AUDIO+0x8c>)
300089dc:	f042 0201 	orr.w	r2, r2, #1
300089e0:	f8c4 2080 	str.w	r2, [r4, #128]	; 0x80
300089e4:	e001      	b.n	300089ea <SWR_AUDIO+0x6e>
300089e6:	3b01      	subs	r3, #1
300089e8:	d005      	beq.n	300089f6 <SWR_AUDIO+0x7a>
300089ea:	f8d4 2080 	ldr.w	r2, [r4, #128]	; 0x80
300089ee:	03d2      	lsls	r2, r2, #15
300089f0:	d5f9      	bpl.n	300089e6 <SWR_AUDIO+0x6a>
300089f2:	2000      	movs	r0, #0
300089f4:	bd10      	pop	{r4, pc}
300089f6:	2001      	movs	r0, #1
300089f8:	bd10      	pop	{r4, pc}
300089fa:	bf00      	nop
300089fc:	42008800 	.word	0x42008800
30008a00:	30008ced 	.word	0x30008ced
30008a04:	00009b2d 	.word	0x00009b2d
30008a08:	000186a0 	.word	0x000186a0

30008a0c <SWR_AUDIO_Manual>:
30008a0c:	4a06      	ldr	r2, [pc, #24]	; (30008a28 <SWR_AUDIO_Manual+0x1c>)
30008a0e:	f8d2 3080 	ldr.w	r3, [r2, #128]	; 0x80
30008a12:	b120      	cbz	r0, 30008a1e <SWR_AUDIO_Manual+0x12>
30008a14:	f443 2300 	orr.w	r3, r3, #524288	; 0x80000
30008a18:	f8c2 3080 	str.w	r3, [r2, #128]	; 0x80
30008a1c:	4770      	bx	lr
30008a1e:	f423 2300 	bic.w	r3, r3, #524288	; 0x80000
30008a22:	f8c2 3080 	str.w	r3, [r2, #128]	; 0x80
30008a26:	4770      	bx	lr
30008a28:	42008800 	.word	0x42008800

30008a2c <SWR_BST_MODE_Set>:
30008a2c:	4a06      	ldr	r2, [pc, #24]	; (30008a48 <SWR_BST_MODE_Set+0x1c>)
30008a2e:	6813      	ldr	r3, [r2, #0]
30008a30:	b118      	cbz	r0, 30008a3a <SWR_BST_MODE_Set+0xe>
30008a32:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
30008a36:	6013      	str	r3, [r2, #0]
30008a38:	4770      	bx	lr
30008a3a:	f423 1340 	bic.w	r3, r3, #3145728	; 0x300000
30008a3e:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
30008a42:	6013      	str	r3, [r2, #0]
30008a44:	4770      	bx	lr
30008a46:	bf00      	nop
30008a48:	42008100 	.word	0x42008100

30008a4c <OTP_Read8>:
30008a4c:	f5b0 6f00 	cmp.w	r0, #2048	; 0x800
30008a50:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
30008a54:	4689      	mov	r9, r1
30008a56:	b083      	sub	sp, #12
30008a58:	d260      	bcs.n	30008b1c <OTP_Read8+0xd0>
30008a5a:	4b33      	ldr	r3, [pc, #204]	; (30008b28 <OTP_Read8+0xdc>)
30008a5c:	4680      	mov	r8, r0
30008a5e:	4a33      	ldr	r2, [pc, #204]	; (30008b2c <OTP_Read8+0xe0>)
30008a60:	e843 f300 	tt	r3, r3
30008a64:	f413 0f80 	tst.w	r3, #4194304	; 0x400000
30008a68:	4d31      	ldr	r5, [pc, #196]	; (30008b30 <OTP_Read8+0xe4>)
30008a6a:	4e32      	ldr	r6, [pc, #200]	; (30008b34 <OTP_Read8+0xe8>)
30008a6c:	bf18      	it	ne
30008a6e:	4615      	movne	r5, r2
30008a70:	4c31      	ldr	r4, [pc, #196]	; (30008b38 <OTP_Read8+0xec>)
30008a72:	e001      	b.n	30008a78 <OTP_Read8+0x2c>
30008a74:	f000 fc7a 	bl	3000936c <rtk_log_write_nano>
30008a78:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
30008a7c:	2002      	movs	r0, #2
30008a7e:	f000 fa89 	bl	30008f94 <IPC_SEMTake>
30008a82:	2801      	cmp	r0, #1
30008a84:	4633      	mov	r3, r6
30008a86:	f04f 0245 	mov.w	r2, #69	; 0x45
30008a8a:	4621      	mov	r1, r4
30008a8c:	f04f 0002 	mov.w	r0, #2
30008a90:	d1f0      	bne.n	30008a74 <OTP_Read8+0x28>
30008a92:	4b2a      	ldr	r3, [pc, #168]	; (30008b3c <OTP_Read8+0xf0>)
30008a94:	681a      	ldr	r2, [r3, #0]
30008a96:	07d2      	lsls	r2, r2, #31
30008a98:	d52d      	bpl.n	30008af6 <OTP_Read8+0xaa>
30008a9a:	f04f 4284 	mov.w	r2, #1107296256	; 0x42000000
30008a9e:	6953      	ldr	r3, [r2, #20]
30008aa0:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
30008aa4:	6153      	str	r3, [r2, #20]
30008aa6:	ea4f 2308 	mov.w	r3, r8, lsl #8
30008aaa:	602b      	str	r3, [r5, #0]
30008aac:	682b      	ldr	r3, [r5, #0]
30008aae:	2b00      	cmp	r3, #0
30008ab0:	db10      	blt.n	30008ad4 <OTP_Read8+0x88>
30008ab2:	2400      	movs	r4, #0
30008ab4:	4e22      	ldr	r6, [pc, #136]	; (30008b40 <OTP_Read8+0xf4>)
30008ab6:	f644 6720 	movw	r7, #20000	; 0x4e20
30008aba:	e001      	b.n	30008ac0 <OTP_Read8+0x74>
30008abc:	42bc      	cmp	r4, r7
30008abe:	d01f      	beq.n	30008b00 <OTP_Read8+0xb4>
30008ac0:	2005      	movs	r0, #5
30008ac2:	3401      	adds	r4, #1
30008ac4:	47b0      	blx	r6
30008ac6:	682b      	ldr	r3, [r5, #0]
30008ac8:	2b00      	cmp	r3, #0
30008aca:	daf7      	bge.n	30008abc <OTP_Read8+0x70>
30008acc:	f644 6320 	movw	r3, #20000	; 0x4e20
30008ad0:	429c      	cmp	r4, r3
30008ad2:	d015      	beq.n	30008b00 <OTP_Read8+0xb4>
30008ad4:	682b      	ldr	r3, [r5, #0]
30008ad6:	2400      	movs	r4, #0
30008ad8:	f889 3000 	strb.w	r3, [r9]
30008adc:	f04f 4284 	mov.w	r2, #1107296256	; 0x42000000
30008ae0:	2002      	movs	r0, #2
30008ae2:	6953      	ldr	r3, [r2, #20]
30008ae4:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
30008ae8:	6153      	str	r3, [r2, #20]
30008aea:	f000 fab3 	bl	30009054 <IPC_SEMFree>
30008aee:	4620      	mov	r0, r4
30008af0:	b003      	add	sp, #12
30008af2:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
30008af6:	681a      	ldr	r2, [r3, #0]
30008af8:	f042 0201 	orr.w	r2, r2, #1
30008afc:	601a      	str	r2, [r3, #0]
30008afe:	e7cc      	b.n	30008a9a <OTP_Read8+0x4e>
30008b00:	21ff      	movs	r1, #255	; 0xff
30008b02:	f8cd 8000 	str.w	r8, [sp]
30008b06:	4b0f      	ldr	r3, [pc, #60]	; (30008b44 <OTP_Read8+0xf8>)
30008b08:	2245      	movs	r2, #69	; 0x45
30008b0a:	f889 1000 	strb.w	r1, [r9]
30008b0e:	2002      	movs	r0, #2
30008b10:	4909      	ldr	r1, [pc, #36]	; (30008b38 <OTP_Read8+0xec>)
30008b12:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
30008b16:	f000 fc29 	bl	3000936c <rtk_log_write_nano>
30008b1a:	e7df      	b.n	30008adc <OTP_Read8+0x90>
30008b1c:	23ff      	movs	r3, #255	; 0xff
30008b1e:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
30008b22:	700b      	strb	r3, [r1, #0]
30008b24:	e7e3      	b.n	30008aee <OTP_Read8+0xa2>
30008b26:	bf00      	nop
30008b28:	3000aadd 	.word	0x3000aadd
30008b2c:	5200000c 	.word	0x5200000c
30008b30:	42000008 	.word	0x42000008
30008b34:	3000c458 	.word	0x3000c458
30008b38:	3000c474 	.word	0x3000c474
30008b3c:	42008000 	.word	0x42008000
30008b40:	00009b2d 	.word	0x00009b2d
30008b44:	3000c478 	.word	0x3000c478

30008b48 <SWR_Calib_DCore>:
30008b48:	4b0f      	ldr	r3, [pc, #60]	; (30008b88 <SWR_Calib_DCore+0x40>)
30008b4a:	f240 3231 	movw	r2, #817	; 0x331
30008b4e:	490f      	ldr	r1, [pc, #60]	; (30008b8c <SWR_Calib_DCore+0x44>)
30008b50:	6d18      	ldr	r0, [r3, #80]	; 0x50
30008b52:	4001      	ands	r1, r0
30008b54:	430a      	orrs	r2, r1
30008b56:	651a      	str	r2, [r3, #80]	; 0x50
30008b58:	6c1a      	ldr	r2, [r3, #64]	; 0x40
30008b5a:	f442 22c0 	orr.w	r2, r2, #393216	; 0x60000
30008b5e:	641a      	str	r2, [r3, #64]	; 0x40
30008b60:	f8d3 2084 	ldr.w	r2, [r3, #132]	; 0x84
30008b64:	f042 0201 	orr.w	r2, r2, #1
30008b68:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
30008b6c:	f8d3 2090 	ldr.w	r2, [r3, #144]	; 0x90
30008b70:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
30008b74:	f8c3 2090 	str.w	r2, [r3, #144]	; 0x90
30008b78:	685a      	ldr	r2, [r3, #4]
30008b7a:	f022 02ff 	bic.w	r2, r2, #255	; 0xff
30008b7e:	f042 0204 	orr.w	r2, r2, #4
30008b82:	605a      	str	r2, [r3, #4]
30008b84:	4770      	bx	lr
30008b86:	bf00      	nop
30008b88:	42008100 	.word	0x42008100
30008b8c:	fffffccc 	.word	0xfffffccc

30008b90 <SWR_Calib_MEM>:
30008b90:	4b51      	ldr	r3, [pc, #324]	; (30008cd8 <SWR_Calib_MEM+0x148>)
30008b92:	f240 3231 	movw	r2, #817	; 0x331
30008b96:	4951      	ldr	r1, [pc, #324]	; (30008cdc <SWR_Calib_MEM+0x14c>)
30008b98:	f04f 0c00 	mov.w	ip, #0
30008b9c:	b510      	push	{r4, lr}
30008b9e:	f8d3 00e0 	ldr.w	r0, [r3, #224]	; 0xe0
30008ba2:	b082      	sub	sp, #8
30008ba4:	4001      	ands	r1, r0
30008ba6:	f240 70e4 	movw	r0, #2020	; 0x7e4
30008baa:	430a      	orrs	r2, r1
30008bac:	f10d 0107 	add.w	r1, sp, #7
30008bb0:	f8c3 20e0 	str.w	r2, [r3, #224]	; 0xe0
30008bb4:	f8d3 20d0 	ldr.w	r2, [r3, #208]	; 0xd0
30008bb8:	f442 22c0 	orr.w	r2, r2, #393216	; 0x60000
30008bbc:	f8c3 20d0 	str.w	r2, [r3, #208]	; 0xd0
30008bc0:	f8d3 20f8 	ldr.w	r2, [r3, #248]	; 0xf8
30008bc4:	f042 0201 	orr.w	r2, r2, #1
30008bc8:	f8c3 20f8 	str.w	r2, [r3, #248]	; 0xf8
30008bcc:	f8d3 20fc 	ldr.w	r2, [r3, #252]	; 0xfc
30008bd0:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
30008bd4:	f8c3 20fc 	str.w	r2, [r3, #252]	; 0xfc
30008bd8:	f88d c007 	strb.w	ip, [sp, #7]
30008bdc:	f7ff ff36 	bl	30008a4c <OTP_Read8>
30008be0:	f89d 3007 	ldrb.w	r3, [sp, #7]
30008be4:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
30008be8:	2af0      	cmp	r2, #240	; 0xf0
30008bea:	d156      	bne.n	30008c9a <SWR_Calib_MEM+0x10a>
30008bec:	f003 030f 	and.w	r3, r3, #15
30008bf0:	2b0f      	cmp	r3, #15
30008bf2:	d04e      	beq.n	30008c92 <SWR_Calib_MEM+0x102>
30008bf4:	2302      	movs	r3, #2
30008bf6:	4c3a      	ldr	r4, [pc, #232]	; (30008ce0 <SWR_Calib_MEM+0x150>)
30008bf8:	f10d 0106 	add.w	r1, sp, #6
30008bfc:	f240 70e4 	movw	r0, #2020	; 0x7e4
30008c00:	7023      	strb	r3, [r4, #0]
30008c02:	f7ff ff23 	bl	30008a4c <OTP_Read8>
30008c06:	7822      	ldrb	r2, [r4, #0]
30008c08:	f89d 3006 	ldrb.w	r3, [sp, #6]
30008c0c:	2a03      	cmp	r2, #3
30008c0e:	d05a      	beq.n	30008cc6 <SWR_Calib_MEM+0x136>
30008c10:	2a02      	cmp	r2, #2
30008c12:	bf0c      	ite	eq
30008c14:	f003 030f 	andeq.w	r3, r3, #15
30008c18:	2300      	movne	r3, #0
30008c1a:	492f      	ldr	r1, [pc, #188]	; (30008cd8 <SWR_Calib_MEM+0x148>)
30008c1c:	4831      	ldr	r0, [pc, #196]	; (30008ce4 <SWR_Calib_MEM+0x154>)
30008c1e:	f8d1 20d0 	ldr.w	r2, [r1, #208]	; 0xd0
30008c22:	f022 020f 	bic.w	r2, r2, #15
30008c26:	4313      	orrs	r3, r2
30008c28:	f8c1 30d0 	str.w	r3, [r1, #208]	; 0xd0
30008c2c:	6c83      	ldr	r3, [r0, #72]	; 0x48
30008c2e:	f3c3 1382 	ubfx	r3, r3, #6, #3
30008c32:	2b07      	cmp	r3, #7
30008c34:	d03a      	beq.n	30008cac <SWR_Calib_MEM+0x11c>
30008c36:	2300      	movs	r3, #0
30008c38:	f10d 0107 	add.w	r1, sp, #7
30008c3c:	f240 70e5 	movw	r0, #2021	; 0x7e5
30008c40:	f88d 3007 	strb.w	r3, [sp, #7]
30008c44:	f7ff ff02 	bl	30008a4c <OTP_Read8>
30008c48:	f89d 3007 	ldrb.w	r3, [sp, #7]
30008c4c:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
30008c50:	2af0      	cmp	r2, #240	; 0xf0
30008c52:	d124      	bne.n	30008c9e <SWR_Calib_MEM+0x10e>
30008c54:	f003 030f 	and.w	r3, r3, #15
30008c58:	2b0f      	cmp	r3, #15
30008c5a:	d022      	beq.n	30008ca2 <SWR_Calib_MEM+0x112>
30008c5c:	2302      	movs	r3, #2
30008c5e:	4c22      	ldr	r4, [pc, #136]	; (30008ce8 <SWR_Calib_MEM+0x158>)
30008c60:	f10d 0107 	add.w	r1, sp, #7
30008c64:	f240 70e5 	movw	r0, #2021	; 0x7e5
30008c68:	7023      	strb	r3, [r4, #0]
30008c6a:	f7ff feef 	bl	30008a4c <OTP_Read8>
30008c6e:	7822      	ldrb	r2, [r4, #0]
30008c70:	f89d 3007 	ldrb.w	r3, [sp, #7]
30008c74:	2a03      	cmp	r2, #3
30008c76:	d028      	beq.n	30008cca <SWR_Calib_MEM+0x13a>
30008c78:	2a02      	cmp	r2, #2
30008c7a:	d029      	beq.n	30008cd0 <SWR_Calib_MEM+0x140>
30008c7c:	2300      	movs	r3, #0
30008c7e:	4916      	ldr	r1, [pc, #88]	; (30008cd8 <SWR_Calib_MEM+0x148>)
30008c80:	f8d1 20d0 	ldr.w	r2, [r1, #208]	; 0xd0
30008c84:	f022 7270 	bic.w	r2, r2, #62914560	; 0x3c00000
30008c88:	4313      	orrs	r3, r2
30008c8a:	f8c1 30d0 	str.w	r3, [r1, #208]	; 0xd0
30008c8e:	b002      	add	sp, #8
30008c90:	bd10      	pop	{r4, pc}
30008c92:	4b13      	ldr	r3, [pc, #76]	; (30008ce0 <SWR_Calib_MEM+0x150>)
30008c94:	2201      	movs	r2, #1
30008c96:	701a      	strb	r2, [r3, #0]
30008c98:	e7cd      	b.n	30008c36 <SWR_Calib_MEM+0xa6>
30008c9a:	2303      	movs	r3, #3
30008c9c:	e7ab      	b.n	30008bf6 <SWR_Calib_MEM+0x66>
30008c9e:	2303      	movs	r3, #3
30008ca0:	e7dd      	b.n	30008c5e <SWR_Calib_MEM+0xce>
30008ca2:	4b11      	ldr	r3, [pc, #68]	; (30008ce8 <SWR_Calib_MEM+0x158>)
30008ca4:	2201      	movs	r2, #1
30008ca6:	701a      	strb	r2, [r3, #0]
30008ca8:	b002      	add	sp, #8
30008caa:	bd10      	pop	{r4, pc}
30008cac:	6c83      	ldr	r3, [r0, #72]	; 0x48
30008cae:	f413 6f60 	tst.w	r3, #3584	; 0xe00
30008cb2:	d1c0      	bne.n	30008c36 <SWR_Calib_MEM+0xa6>
30008cb4:	f8d1 30e4 	ldr.w	r3, [r1, #228]	; 0xe4
30008cb8:	f423 73e0 	bic.w	r3, r3, #448	; 0x1c0
30008cbc:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
30008cc0:	f8c1 30e4 	str.w	r3, [r1, #228]	; 0xe4
30008cc4:	e7b7      	b.n	30008c36 <SWR_Calib_MEM+0xa6>
30008cc6:	091b      	lsrs	r3, r3, #4
30008cc8:	e7a7      	b.n	30008c1a <SWR_Calib_MEM+0x8a>
30008cca:	091b      	lsrs	r3, r3, #4
30008ccc:	059b      	lsls	r3, r3, #22
30008cce:	e7d6      	b.n	30008c7e <SWR_Calib_MEM+0xee>
30008cd0:	f003 030f 	and.w	r3, r3, #15
30008cd4:	059b      	lsls	r3, r3, #22
30008cd6:	e7d2      	b.n	30008c7e <SWR_Calib_MEM+0xee>
30008cd8:	42008800 	.word	0x42008800
30008cdc:	fffffccc 	.word	0xfffffccc
30008ce0:	3000df4c 	.word	0x3000df4c
30008ce4:	42008100 	.word	0x42008100
30008ce8:	3000df4b 	.word	0x3000df4b

30008cec <SWR_Calib_AUD>:
30008cec:	4b48      	ldr	r3, [pc, #288]	; (30008e10 <SWR_Calib_AUD+0x124>)
30008cee:	f240 3231 	movw	r2, #817	; 0x331
30008cf2:	4948      	ldr	r1, [pc, #288]	; (30008e14 <SWR_Calib_AUD+0x128>)
30008cf4:	f04f 0c00 	mov.w	ip, #0
30008cf8:	b510      	push	{r4, lr}
30008cfa:	f8d3 00a0 	ldr.w	r0, [r3, #160]	; 0xa0
30008cfe:	b082      	sub	sp, #8
30008d00:	4001      	ands	r1, r0
30008d02:	f240 70e6 	movw	r0, #2022	; 0x7e6
30008d06:	430a      	orrs	r2, r1
30008d08:	f10d 0107 	add.w	r1, sp, #7
30008d0c:	f8c3 20a0 	str.w	r2, [r3, #160]	; 0xa0
30008d10:	f8d3 2090 	ldr.w	r2, [r3, #144]	; 0x90
30008d14:	f442 22c0 	orr.w	r2, r2, #393216	; 0x60000
30008d18:	f8c3 2090 	str.w	r2, [r3, #144]	; 0x90
30008d1c:	f8d3 20b8 	ldr.w	r2, [r3, #184]	; 0xb8
30008d20:	f042 0201 	orr.w	r2, r2, #1
30008d24:	f8c3 20b8 	str.w	r2, [r3, #184]	; 0xb8
30008d28:	f8d3 20bc 	ldr.w	r2, [r3, #188]	; 0xbc
30008d2c:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
30008d30:	f8c3 20bc 	str.w	r2, [r3, #188]	; 0xbc
30008d34:	f88d c007 	strb.w	ip, [sp, #7]
30008d38:	f7ff fe88 	bl	30008a4c <OTP_Read8>
30008d3c:	f89d 3007 	ldrb.w	r3, [sp, #7]
30008d40:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
30008d44:	2af0      	cmp	r2, #240	; 0xf0
30008d46:	d150      	bne.n	30008dea <SWR_Calib_AUD+0xfe>
30008d48:	f003 030f 	and.w	r3, r3, #15
30008d4c:	2b0f      	cmp	r3, #15
30008d4e:	d048      	beq.n	30008de2 <SWR_Calib_AUD+0xf6>
30008d50:	2302      	movs	r3, #2
30008d52:	4c31      	ldr	r4, [pc, #196]	; (30008e18 <SWR_Calib_AUD+0x12c>)
30008d54:	f10d 0106 	add.w	r1, sp, #6
30008d58:	f240 70e6 	movw	r0, #2022	; 0x7e6
30008d5c:	7023      	strb	r3, [r4, #0]
30008d5e:	f7ff fe75 	bl	30008a4c <OTP_Read8>
30008d62:	7822      	ldrb	r2, [r4, #0]
30008d64:	f89d 3006 	ldrb.w	r3, [sp, #6]
30008d68:	2a03      	cmp	r2, #3
30008d6a:	d047      	beq.n	30008dfc <SWR_Calib_AUD+0x110>
30008d6c:	2a02      	cmp	r2, #2
30008d6e:	bf0c      	ite	eq
30008d70:	f003 030f 	andeq.w	r3, r3, #15
30008d74:	2300      	movne	r3, #0
30008d76:	4926      	ldr	r1, [pc, #152]	; (30008e10 <SWR_Calib_AUD+0x124>)
30008d78:	f8d1 2090 	ldr.w	r2, [r1, #144]	; 0x90
30008d7c:	f022 020f 	bic.w	r2, r2, #15
30008d80:	4313      	orrs	r3, r2
30008d82:	f8c1 3090 	str.w	r3, [r1, #144]	; 0x90
30008d86:	2300      	movs	r3, #0
30008d88:	f10d 0107 	add.w	r1, sp, #7
30008d8c:	f240 70e7 	movw	r0, #2023	; 0x7e7
30008d90:	f88d 3007 	strb.w	r3, [sp, #7]
30008d94:	f7ff fe5a 	bl	30008a4c <OTP_Read8>
30008d98:	f89d 3007 	ldrb.w	r3, [sp, #7]
30008d9c:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
30008da0:	2af0      	cmp	r2, #240	; 0xf0
30008da2:	d124      	bne.n	30008dee <SWR_Calib_AUD+0x102>
30008da4:	f003 030f 	and.w	r3, r3, #15
30008da8:	2b0f      	cmp	r3, #15
30008daa:	d022      	beq.n	30008df2 <SWR_Calib_AUD+0x106>
30008dac:	2302      	movs	r3, #2
30008dae:	4c1b      	ldr	r4, [pc, #108]	; (30008e1c <SWR_Calib_AUD+0x130>)
30008db0:	f10d 0107 	add.w	r1, sp, #7
30008db4:	f240 70e7 	movw	r0, #2023	; 0x7e7
30008db8:	7023      	strb	r3, [r4, #0]
30008dba:	f7ff fe47 	bl	30008a4c <OTP_Read8>
30008dbe:	7822      	ldrb	r2, [r4, #0]
30008dc0:	f89d 3007 	ldrb.w	r3, [sp, #7]
30008dc4:	2a03      	cmp	r2, #3
30008dc6:	d01b      	beq.n	30008e00 <SWR_Calib_AUD+0x114>
30008dc8:	2a02      	cmp	r2, #2
30008dca:	d01c      	beq.n	30008e06 <SWR_Calib_AUD+0x11a>
30008dcc:	2300      	movs	r3, #0
30008dce:	4910      	ldr	r1, [pc, #64]	; (30008e10 <SWR_Calib_AUD+0x124>)
30008dd0:	f8d1 2090 	ldr.w	r2, [r1, #144]	; 0x90
30008dd4:	f022 7270 	bic.w	r2, r2, #62914560	; 0x3c00000
30008dd8:	4313      	orrs	r3, r2
30008dda:	f8c1 3090 	str.w	r3, [r1, #144]	; 0x90
30008dde:	b002      	add	sp, #8
30008de0:	bd10      	pop	{r4, pc}
30008de2:	4b0d      	ldr	r3, [pc, #52]	; (30008e18 <SWR_Calib_AUD+0x12c>)
30008de4:	2201      	movs	r2, #1
30008de6:	701a      	strb	r2, [r3, #0]
30008de8:	e7cd      	b.n	30008d86 <SWR_Calib_AUD+0x9a>
30008dea:	2303      	movs	r3, #3
30008dec:	e7b1      	b.n	30008d52 <SWR_Calib_AUD+0x66>
30008dee:	2303      	movs	r3, #3
30008df0:	e7dd      	b.n	30008dae <SWR_Calib_AUD+0xc2>
30008df2:	4b0a      	ldr	r3, [pc, #40]	; (30008e1c <SWR_Calib_AUD+0x130>)
30008df4:	2201      	movs	r2, #1
30008df6:	701a      	strb	r2, [r3, #0]
30008df8:	b002      	add	sp, #8
30008dfa:	bd10      	pop	{r4, pc}
30008dfc:	091b      	lsrs	r3, r3, #4
30008dfe:	e7ba      	b.n	30008d76 <SWR_Calib_AUD+0x8a>
30008e00:	091b      	lsrs	r3, r3, #4
30008e02:	059b      	lsls	r3, r3, #22
30008e04:	e7e3      	b.n	30008dce <SWR_Calib_AUD+0xe2>
30008e06:	f003 030f 	and.w	r3, r3, #15
30008e0a:	059b      	lsls	r3, r3, #22
30008e0c:	e7df      	b.n	30008dce <SWR_Calib_AUD+0xe2>
30008e0e:	bf00      	nop
30008e10:	42008800 	.word	0x42008800
30008e14:	fffffccc 	.word	0xfffffccc
30008e18:	3000df4a 	.word	0x3000df4a
30008e1c:	3000df49 	.word	0x3000df49

30008e20 <PLL_NP_ClkGet>:
30008e20:	b538      	push	{r3, r4, r5, lr}
30008e22:	4b0f      	ldr	r3, [pc, #60]	; (30008e60 <PLL_NP_ClkGet+0x40>)
30008e24:	4798      	blx	r3
30008e26:	4b0f      	ldr	r3, [pc, #60]	; (30008e64 <PLL_NP_ClkGet+0x44>)
30008e28:	6c59      	ldr	r1, [r3, #68]	; 0x44
30008e2a:	6cda      	ldr	r2, [r3, #76]	; 0x4c
30008e2c:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
30008e2e:	f3c1 1145 	ubfx	r1, r1, #5, #6
30008e32:	f3c2 4c02 	ubfx	ip, r2, #16, #3
30008e36:	0cdb      	lsrs	r3, r3, #19
30008e38:	3102      	adds	r1, #2
30008e3a:	fba3 4300 	umull	r4, r3, r3, r0
30008e3e:	461d      	mov	r5, r3
30008e40:	ea54 355f 	orrs.w	r5, r4, pc, lsr #13
30008e44:	46a6      	mov	lr, r4
30008e46:	462c      	mov	r4, r5
30008e48:	fbe0 e40c 	umlal	lr, r4, r0, ip
30008e4c:	4672      	mov	r2, lr
30008e4e:	4623      	mov	r3, r4
30008e50:	ea52 03df 	orrs.w	r3, r2, pc, lsr #3
30008e54:	4614      	mov	r4, r2
30008e56:	fbe1 4300 	umlal	r4, r3, r1, r0
30008e5a:	4620      	mov	r0, r4
30008e5c:	bd38      	pop	{r3, r4, r5, pc}
30008e5e:	bf00      	nop
30008e60:	000099f5 	.word	0x000099f5
30008e64:	42008800 	.word	0x42008800

30008e68 <PLL_NP_ClkSet>:
30008e68:	b570      	push	{r4, r5, r6, lr}
30008e6a:	4604      	mov	r4, r0
30008e6c:	4b1b      	ldr	r3, [pc, #108]	; (30008edc <PLL_NP_ClkSet+0x74>)
30008e6e:	4798      	blx	r3
30008e70:	4d1b      	ldr	r5, [pc, #108]	; (30008ee0 <PLL_NP_ClkSet+0x78>)
30008e72:	08c2      	lsrs	r2, r0, #3
30008e74:	fbb4 f3f0 	udiv	r3, r4, r0
30008e78:	fb00 4c13 	mls	ip, r0, r3, r4
30008e7c:	1e9c      	subs	r4, r3, #2
30008e7e:	6c6b      	ldr	r3, [r5, #68]	; 0x44
30008e80:	0164      	lsls	r4, r4, #5
30008e82:	f423 63fc 	bic.w	r3, r3, #2016	; 0x7e0
30008e86:	f404 64fc 	and.w	r4, r4, #2016	; 0x7e0
30008e8a:	431c      	orrs	r4, r3
30008e8c:	fbbc f3f2 	udiv	r3, ip, r2
30008e90:	646c      	str	r4, [r5, #68]	; 0x44
30008e92:	041c      	lsls	r4, r3, #16
30008e94:	fb02 c013 	mls	r0, r2, r3, ip
30008e98:	2300      	movs	r3, #0
30008e9a:	6cee      	ldr	r6, [r5, #76]	; 0x4c
30008e9c:	f404 24e0 	and.w	r4, r4, #458752	; 0x70000
30008ea0:	4619      	mov	r1, r3
30008ea2:	fa1f fc86 	uxth.w	ip, r6
30008ea6:	4e0f      	ldr	r6, [pc, #60]	; (30008ee4 <PLL_NP_ClkSet+0x7c>)
30008ea8:	ea50 314f 	orrs.w	r1, r0, pc, lsl #13
30008eac:	ea44 040c 	orr.w	r4, r4, ip
30008eb0:	f002 fae8 	bl	3000b484 <__aeabi_uldivmod>
30008eb4:	4603      	mov	r3, r0
30008eb6:	2001      	movs	r0, #1
30008eb8:	ea44 44c3 	orr.w	r4, r4, r3, lsl #19
30008ebc:	64ec      	str	r4, [r5, #76]	; 0x4c
30008ebe:	47b0      	blx	r6
30008ec0:	6c6b      	ldr	r3, [r5, #68]	; 0x44
30008ec2:	203c      	movs	r0, #60	; 0x3c
30008ec4:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
30008ec8:	646b      	str	r3, [r5, #68]	; 0x44
30008eca:	6c6b      	ldr	r3, [r5, #68]	; 0x44
30008ecc:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
30008ed0:	646b      	str	r3, [r5, #68]	; 0x44
30008ed2:	4633      	mov	r3, r6
30008ed4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
30008ed8:	4718      	bx	r3
30008eda:	bf00      	nop
30008edc:	000099f5 	.word	0x000099f5
30008ee0:	42008800 	.word	0x42008800
30008ee4:	00009b2d 	.word	0x00009b2d

30008ee8 <PLL_AP_ClkSet>:
30008ee8:	b510      	push	{r4, lr}
30008eea:	4604      	mov	r4, r0
30008eec:	4b0a      	ldr	r3, [pc, #40]	; (30008f18 <PLL_AP_ClkSet+0x30>)
30008eee:	4798      	blx	r3
30008ef0:	fbb4 f0f0 	udiv	r0, r4, r0
30008ef4:	f1a0 0319 	sub.w	r3, r0, #25
30008ef8:	2b0f      	cmp	r3, #15
30008efa:	d808      	bhi.n	30008f0e <PLL_AP_ClkSet+0x26>
30008efc:	4a07      	ldr	r2, [pc, #28]	; (30008f1c <PLL_AP_ClkSet+0x34>)
30008efe:	3802      	subs	r0, #2
30008f00:	6953      	ldr	r3, [r2, #20]
30008f02:	b2c0      	uxtb	r0, r0
30008f04:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
30008f08:	4318      	orrs	r0, r3
30008f0a:	6150      	str	r0, [r2, #20]
30008f0c:	bd10      	pop	{r4, pc}
30008f0e:	f240 1191 	movw	r1, #401	; 0x191
30008f12:	4803      	ldr	r0, [pc, #12]	; (30008f20 <PLL_AP_ClkSet+0x38>)
30008f14:	f001 ffe6 	bl	3000aee4 <io_assert_failed>
30008f18:	000099f5 	.word	0x000099f5
30008f1c:	41000300 	.word	0x41000300
30008f20:	3000c48c 	.word	0x3000c48c

30008f24 <PLL_AP>:
30008f24:	2801      	cmp	r0, #1
30008f26:	b538      	push	{r3, r4, r5, lr}
30008f28:	d009      	beq.n	30008f3e <PLL_AP+0x1a>
30008f2a:	4b13      	ldr	r3, [pc, #76]	; (30008f78 <PLL_AP+0x54>)
30008f2c:	681a      	ldr	r2, [r3, #0]
30008f2e:	f022 0209 	bic.w	r2, r2, #9
30008f32:	601a      	str	r2, [r3, #0]
30008f34:	681a      	ldr	r2, [r3, #0]
30008f36:	f022 0206 	bic.w	r2, r2, #6
30008f3a:	601a      	str	r2, [r3, #0]
30008f3c:	bd38      	pop	{r3, r4, r5, pc}
30008f3e:	4b0f      	ldr	r3, [pc, #60]	; (30008f7c <PLL_AP+0x58>)
30008f40:	6f9a      	ldr	r2, [r3, #120]	; 0x78
30008f42:	f012 0f05 	tst.w	r2, #5
30008f46:	d00f      	beq.n	30008f68 <PLL_AP+0x44>
30008f48:	4d0d      	ldr	r5, [pc, #52]	; (30008f80 <PLL_AP+0x5c>)
30008f4a:	4c0b      	ldr	r4, [pc, #44]	; (30008f78 <PLL_AP+0x54>)
30008f4c:	2001      	movs	r0, #1
30008f4e:	6823      	ldr	r3, [r4, #0]
30008f50:	f043 0306 	orr.w	r3, r3, #6
30008f54:	6023      	str	r3, [r4, #0]
30008f56:	47a8      	blx	r5
30008f58:	6823      	ldr	r3, [r4, #0]
30008f5a:	f043 0309 	orr.w	r3, r3, #9
30008f5e:	6023      	str	r3, [r4, #0]
30008f60:	6863      	ldr	r3, [r4, #4]
30008f62:	2b00      	cmp	r3, #0
30008f64:	dafc      	bge.n	30008f60 <PLL_AP+0x3c>
30008f66:	bd38      	pop	{r3, r4, r5, pc}
30008f68:	6f9a      	ldr	r2, [r3, #120]	; 0x78
30008f6a:	20a0      	movs	r0, #160	; 0xa0
30008f6c:	4d04      	ldr	r5, [pc, #16]	; (30008f80 <PLL_AP+0x5c>)
30008f6e:	f042 0207 	orr.w	r2, r2, #7
30008f72:	679a      	str	r2, [r3, #120]	; 0x78
30008f74:	47a8      	blx	r5
30008f76:	e7e8      	b.n	30008f4a <PLL_AP+0x26>
30008f78:	41000300 	.word	0x41000300
30008f7c:	42008800 	.word	0x42008800
30008f80:	00009b2d 	.word	0x00009b2d

30008f84 <BOOT_Reason>:
30008f84:	4b02      	ldr	r3, [pc, #8]	; (30008f90 <BOOT_Reason+0xc>)
30008f86:	f8b3 0064 	ldrh.w	r0, [r3, #100]	; 0x64
30008f8a:	b280      	uxth	r0, r0
30008f8c:	4770      	bx	lr
30008f8e:	bf00      	nop
30008f90:	42008200 	.word	0x42008200

30008f94 <IPC_SEMTake>:
30008f94:	280f      	cmp	r0, #15
30008f96:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
30008f9a:	d847      	bhi.n	3000902c <IPC_SEMTake+0x98>
30008f9c:	4b26      	ldr	r3, [pc, #152]	; (30009038 <IPC_SEMTake+0xa4>)
30008f9e:	4680      	mov	r8, r0
30008fa0:	460c      	mov	r4, r1
30008fa2:	681b      	ldr	r3, [r3, #0]
30008fa4:	b10b      	cbz	r3, 30008faa <IPC_SEMTake+0x16>
30008fa6:	2009      	movs	r0, #9
30008fa8:	4798      	blx	r3
30008faa:	4b24      	ldr	r3, [pc, #144]	; (3000903c <IPC_SEMTake+0xa8>)
30008fac:	4798      	blx	r3
30008fae:	2802      	cmp	r0, #2
30008fb0:	d91a      	bls.n	30008fe8 <IPC_SEMTake+0x54>
30008fb2:	4d23      	ldr	r5, [pc, #140]	; (30009040 <IPC_SEMTake+0xac>)
30008fb4:	4445      	add	r5, r8
30008fb6:	00ad      	lsls	r5, r5, #2
30008fb8:	682b      	ldr	r3, [r5, #0]
30008fba:	2b00      	cmp	r3, #0
30008fbc:	d033      	beq.n	30009026 <IPC_SEMTake+0x92>
30008fbe:	b15c      	cbz	r4, 30008fd8 <IPC_SEMTake+0x44>
30008fc0:	4e20      	ldr	r6, [pc, #128]	; (30009044 <IPC_SEMTake+0xb0>)
30008fc2:	e001      	b.n	30008fc8 <IPC_SEMTake+0x34>
30008fc4:	682b      	ldr	r3, [r5, #0]
30008fc6:	b373      	cbz	r3, 30009026 <IPC_SEMTake+0x92>
30008fc8:	6833      	ldr	r3, [r6, #0]
30008fca:	b10b      	cbz	r3, 30008fd0 <IPC_SEMTake+0x3c>
30008fcc:	2001      	movs	r0, #1
30008fce:	4798      	blx	r3
30008fd0:	1c63      	adds	r3, r4, #1
30008fd2:	d0f7      	beq.n	30008fc4 <IPC_SEMTake+0x30>
30008fd4:	3c01      	subs	r4, #1
30008fd6:	d1f5      	bne.n	30008fc4 <IPC_SEMTake+0x30>
30008fd8:	4b1b      	ldr	r3, [pc, #108]	; (30009048 <IPC_SEMTake+0xb4>)
30008fda:	681b      	ldr	r3, [r3, #0]
30008fdc:	b303      	cbz	r3, 30009020 <IPC_SEMTake+0x8c>
30008fde:	2009      	movs	r0, #9
30008fe0:	4798      	blx	r3
30008fe2:	2000      	movs	r0, #0
30008fe4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
30008fe8:	2201      	movs	r2, #1
30008fea:	4e18      	ldr	r6, [pc, #96]	; (3000904c <IPC_SEMTake+0xb8>)
30008fec:	4f15      	ldr	r7, [pc, #84]	; (30009044 <IPC_SEMTake+0xb0>)
30008fee:	fa02 f808 	lsl.w	r8, r2, r8
30008ff2:	e007      	b.n	30009004 <IPC_SEMTake+0x70>
30008ff4:	2c00      	cmp	r4, #0
30008ff6:	d0ef      	beq.n	30008fd8 <IPC_SEMTake+0x44>
30008ff8:	683b      	ldr	r3, [r7, #0]
30008ffa:	b10b      	cbz	r3, 30009000 <IPC_SEMTake+0x6c>
30008ffc:	2001      	movs	r0, #1
30008ffe:	4798      	blx	r3
30009000:	3c01      	subs	r4, #1
30009002:	d0e9      	beq.n	30008fd8 <IPC_SEMTake+0x44>
30009004:	f8b6 30f4 	ldrh.w	r3, [r6, #244]	; 0xf4
30009008:	b29b      	uxth	r3, r3
3000900a:	ea13 0f08 	tst.w	r3, r8
3000900e:	d1f1      	bne.n	30008ff4 <IPC_SEMTake+0x60>
30009010:	ea43 0308 	orr.w	r3, r3, r8
30009014:	2001      	movs	r0, #1
30009016:	b29b      	uxth	r3, r3
30009018:	f8a6 30f4 	strh.w	r3, [r6, #244]	; 0xf4
3000901c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
30009020:	4618      	mov	r0, r3
30009022:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
30009026:	2001      	movs	r0, #1
30009028:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
3000902c:	f44f 718b 	mov.w	r1, #278	; 0x116
30009030:	4807      	ldr	r0, [pc, #28]	; (30009050 <IPC_SEMTake+0xbc>)
30009032:	f001 ff57 	bl	3000aee4 <io_assert_failed>
30009036:	bf00      	nop
30009038:	3000e9b4 	.word	0x3000e9b4
3000903c:	3000a529 	.word	0x3000a529
30009040:	108020f0 	.word	0x108020f0
30009044:	3000e9b0 	.word	0x3000e9b0
30009048:	3000e9b8 	.word	0x3000e9b8
3000904c:	42008200 	.word	0x42008200
30009050:	3000c518 	.word	0x3000c518

30009054 <IPC_SEMFree>:
30009054:	280f      	cmp	r0, #15
30009056:	b510      	push	{r4, lr}
30009058:	d81b      	bhi.n	30009092 <IPC_SEMFree+0x3e>
3000905a:	4b10      	ldr	r3, [pc, #64]	; (3000909c <IPC_SEMFree+0x48>)
3000905c:	4604      	mov	r4, r0
3000905e:	4798      	blx	r3
30009060:	2802      	cmp	r0, #2
30009062:	d810      	bhi.n	30009086 <IPC_SEMFree+0x32>
30009064:	4a0e      	ldr	r2, [pc, #56]	; (300090a0 <IPC_SEMFree+0x4c>)
30009066:	2001      	movs	r0, #1
30009068:	f8b2 30f4 	ldrh.w	r3, [r2, #244]	; 0xf4
3000906c:	40a0      	lsls	r0, r4
3000906e:	b29c      	uxth	r4, r3
30009070:	ea24 0400 	bic.w	r4, r4, r0
30009074:	f8a2 40f4 	strh.w	r4, [r2, #244]	; 0xf4
30009078:	4b0a      	ldr	r3, [pc, #40]	; (300090a4 <IPC_SEMFree+0x50>)
3000907a:	681b      	ldr	r3, [r3, #0]
3000907c:	b10b      	cbz	r3, 30009082 <IPC_SEMFree+0x2e>
3000907e:	2009      	movs	r0, #9
30009080:	4798      	blx	r3
30009082:	2001      	movs	r0, #1
30009084:	bd10      	pop	{r4, pc}
30009086:	4b08      	ldr	r3, [pc, #32]	; (300090a8 <IPC_SEMFree+0x54>)
30009088:	2201      	movs	r2, #1
3000908a:	4423      	add	r3, r4
3000908c:	009b      	lsls	r3, r3, #2
3000908e:	601a      	str	r2, [r3, #0]
30009090:	e7f2      	b.n	30009078 <IPC_SEMFree+0x24>
30009092:	f44f 71ae 	mov.w	r1, #348	; 0x15c
30009096:	4805      	ldr	r0, [pc, #20]	; (300090ac <IPC_SEMFree+0x58>)
30009098:	f001 ff24 	bl	3000aee4 <io_assert_failed>
3000909c:	3000a529 	.word	0x3000a529
300090a0:	42008200 	.word	0x42008200
300090a4:	3000e9b8 	.word	0x3000e9b8
300090a8:	108020f0 	.word	0x108020f0
300090ac:	3000c518 	.word	0x3000c518

300090b0 <HANDLER_SecureFault>:
300090b0:	f3ef 8088 	mrs	r0, MSP_NS
300090b4:	f3ef 8189 	mrs	r1, PSP_NS
300090b8:	4672      	mov	r2, lr
300090ba:	f3ef 8388 	mrs	r3, MSP_NS
300090be:	e923 0ff0 	stmdb	r3!, {r4, r5, r6, r7, r8, r9, sl, fp}
300090c2:	f04f 0304 	mov.w	r3, #4
300090c6:	f000 b831 	b.w	3000912c <Fault_Handler>
300090ca:	4770      	bx	lr

300090cc <HANDLER_MemFault>:
300090cc:	f3ef 8008 	mrs	r0, MSP
300090d0:	f3ef 8109 	mrs	r1, PSP
300090d4:	4672      	mov	r2, lr
300090d6:	f04f 0303 	mov.w	r3, #3
300090da:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
300090de:	f000 b825 	b.w	3000912c <Fault_Handler>
300090e2:	4770      	bx	lr

300090e4 <HANDLER_BusFault>:
300090e4:	f3ef 8008 	mrs	r0, MSP
300090e8:	f3ef 8109 	mrs	r1, PSP
300090ec:	4672      	mov	r2, lr
300090ee:	f04f 0302 	mov.w	r3, #2
300090f2:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
300090f6:	f000 b819 	b.w	3000912c <Fault_Handler>
300090fa:	4770      	bx	lr

300090fc <HANDLER_UsageFault>:
300090fc:	f3ef 8008 	mrs	r0, MSP
30009100:	f3ef 8109 	mrs	r1, PSP
30009104:	4672      	mov	r2, lr
30009106:	f04f 0301 	mov.w	r3, #1
3000910a:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
3000910e:	f000 b80d 	b.w	3000912c <Fault_Handler>
30009112:	4770      	bx	lr

30009114 <HANDLER_HardFault>:
30009114:	f3ef 8008 	mrs	r0, MSP
30009118:	f3ef 8109 	mrs	r1, PSP
3000911c:	4672      	mov	r2, lr
3000911e:	f04f 0300 	mov.w	r3, #0
30009122:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
30009126:	f000 b801 	b.w	3000912c <Fault_Handler>
3000912a:	4770      	bx	lr

3000912c <Fault_Handler>:
3000912c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
30009130:	b095      	sub	sp, #84	; 0x54
30009132:	4614      	mov	r4, r2
30009134:	4605      	mov	r5, r0
30009136:	2244      	movs	r2, #68	; 0x44
30009138:	460e      	mov	r6, r1
3000913a:	a803      	add	r0, sp, #12
3000913c:	2100      	movs	r1, #0
3000913e:	461f      	mov	r7, r3
30009140:	f002 fb2a 	bl	3000b798 <____wrap_memset_veneer>
30009144:	07e2      	lsls	r2, r4, #31
30009146:	f004 0340 	and.w	r3, r4, #64	; 0x40
3000914a:	d554      	bpl.n	300091f6 <Fault_Handler+0xca>
3000914c:	2b00      	cmp	r3, #0
3000914e:	d05b      	beq.n	30009208 <Fault_Handler+0xdc>
30009150:	f004 000c 	and.w	r0, r4, #12
30009154:	f04f 0800 	mov.w	r8, #0
30009158:	f1a0 000c 	sub.w	r0, r0, #12
3000915c:	fab0 f080 	clz	r0, r0
30009160:	0940      	lsrs	r0, r0, #5
30009162:	f1a5 0c24 	sub.w	ip, r5, #36	; 0x24
30009166:	ab04      	add	r3, sp, #16
30009168:	1f29      	subs	r1, r5, #4
3000916a:	9403      	str	r4, [sp, #12]
3000916c:	f85c 2f04 	ldr.w	r2, [ip, #4]!
30009170:	458c      	cmp	ip, r1
30009172:	f843 2b04 	str.w	r2, [r3], #4
30009176:	d1f9      	bne.n	3000916c <Fault_Handler+0x40>
30009178:	2800      	cmp	r0, #0
3000917a:	bf14      	ite	ne
3000917c:	4631      	movne	r1, r6
3000917e:	4629      	moveq	r1, r5
30009180:	f10d 0e30 	add.w	lr, sp, #48	; 0x30
30009184:	f1a1 0c04 	sub.w	ip, r1, #4
30009188:	f101 021c 	add.w	r2, r1, #28
3000918c:	f85c 3f04 	ldr.w	r3, [ip, #4]!
30009190:	4594      	cmp	ip, r2
30009192:	f84e 3b04 	str.w	r3, [lr], #4
30009196:	d1f9      	bne.n	3000918c <Fault_Handler+0x60>
30009198:	aa03      	add	r2, sp, #12
3000919a:	6bc8      	ldr	r0, [r1, #60]	; 0x3c
3000919c:	f000 fb8c 	bl	300098b8 <crash_dump>
300091a0:	2f04      	cmp	r7, #4
300091a2:	d042      	beq.n	3000922a <Fault_Handler+0xfe>
300091a4:	f1b8 0f00 	cmp.w	r8, #0
300091a8:	d136      	bne.n	30009218 <Fault_Handler+0xec>
300091aa:	f8df 80c8 	ldr.w	r8, [pc, #200]	; 30009274 <Fault_Handler+0x148>
300091ae:	2241      	movs	r2, #65	; 0x41
300091b0:	4b28      	ldr	r3, [pc, #160]	; (30009254 <Fault_Handler+0x128>)
300091b2:	f8d8 0024 	ldr.w	r0, [r8, #36]	; 0x24
300091b6:	4928      	ldr	r1, [pc, #160]	; (30009258 <Fault_Handler+0x12c>)
300091b8:	9000      	str	r0, [sp, #0]
300091ba:	2001      	movs	r0, #1
300091bc:	f000 f8ae 	bl	3000931c <rtk_log_write>
300091c0:	f8d8 300c 	ldr.w	r3, [r8, #12]
300091c4:	2241      	movs	r2, #65	; 0x41
300091c6:	4924      	ldr	r1, [pc, #144]	; (30009258 <Fault_Handler+0x12c>)
300091c8:	9300      	str	r3, [sp, #0]
300091ca:	2001      	movs	r0, #1
300091cc:	4b23      	ldr	r3, [pc, #140]	; (3000925c <Fault_Handler+0x130>)
300091ce:	f000 f8a5 	bl	3000931c <rtk_log_write>
300091d2:	f3ef 8314 	mrs	r3, CONTROL
300091d6:	2241      	movs	r2, #65	; 0x41
300091d8:	9300      	str	r3, [sp, #0]
300091da:	491f      	ldr	r1, [pc, #124]	; (30009258 <Fault_Handler+0x12c>)
300091dc:	2001      	movs	r0, #1
300091de:	4b20      	ldr	r3, [pc, #128]	; (30009260 <Fault_Handler+0x134>)
300091e0:	f000 f89c 	bl	3000931c <rtk_log_write>
300091e4:	463b      	mov	r3, r7
300091e6:	4622      	mov	r2, r4
300091e8:	4631      	mov	r1, r6
300091ea:	4628      	mov	r0, r5
300091ec:	f002 fae4 	bl	3000b7b8 <__INT_HardFault_C_veneer>
300091f0:	b015      	add	sp, #84	; 0x54
300091f2:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
300091f6:	2b00      	cmp	r3, #0
300091f8:	d0aa      	beq.n	30009150 <Fault_Handler+0x24>
300091fa:	4b1a      	ldr	r3, [pc, #104]	; (30009264 <Fault_Handler+0x138>)
300091fc:	2241      	movs	r2, #65	; 0x41
300091fe:	4916      	ldr	r1, [pc, #88]	; (30009258 <Fault_Handler+0x12c>)
30009200:	2001      	movs	r0, #1
30009202:	f000 f88b 	bl	3000931c <rtk_log_write>
30009206:	e7fe      	b.n	30009206 <Fault_Handler+0xda>
30009208:	f3ef 8894 	mrs	r8, CONTROL_NS
3000920c:	f014 0008 	ands.w	r0, r4, #8
30009210:	d0a7      	beq.n	30009162 <Fault_Handler+0x36>
30009212:	f3c8 0040 	ubfx	r0, r8, #1, #1
30009216:	e7a4      	b.n	30009162 <Fault_Handler+0x36>
30009218:	4b13      	ldr	r3, [pc, #76]	; (30009268 <Fault_Handler+0x13c>)
3000921a:	2241      	movs	r2, #65	; 0x41
3000921c:	490e      	ldr	r1, [pc, #56]	; (30009258 <Fault_Handler+0x12c>)
3000921e:	2001      	movs	r0, #1
30009220:	f8cd 8000 	str.w	r8, [sp]
30009224:	f000 f87a 	bl	3000931c <rtk_log_write>
30009228:	e7bf      	b.n	300091aa <Fault_Handler+0x7e>
3000922a:	f8df 9048 	ldr.w	r9, [pc, #72]	; 30009274 <Fault_Handler+0x148>
3000922e:	2241      	movs	r2, #65	; 0x41
30009230:	4b0e      	ldr	r3, [pc, #56]	; (3000926c <Fault_Handler+0x140>)
30009232:	f8d9 00e4 	ldr.w	r0, [r9, #228]	; 0xe4
30009236:	4908      	ldr	r1, [pc, #32]	; (30009258 <Fault_Handler+0x12c>)
30009238:	9000      	str	r0, [sp, #0]
3000923a:	2001      	movs	r0, #1
3000923c:	f000 f86e 	bl	3000931c <rtk_log_write>
30009240:	f8d9 30e8 	ldr.w	r3, [r9, #232]	; 0xe8
30009244:	2241      	movs	r2, #65	; 0x41
30009246:	4904      	ldr	r1, [pc, #16]	; (30009258 <Fault_Handler+0x12c>)
30009248:	9300      	str	r3, [sp, #0]
3000924a:	2001      	movs	r0, #1
3000924c:	4b08      	ldr	r3, [pc, #32]	; (30009270 <Fault_Handler+0x144>)
3000924e:	f000 f865 	bl	3000931c <rtk_log_write>
30009252:	e7a7      	b.n	300091a4 <Fault_Handler+0x78>
30009254:	3000c63c 	.word	0x3000c63c
30009258:	3000c5f4 	.word	0x3000c5f4
3000925c:	3000c650 	.word	0x3000c650
30009260:	3000c664 	.word	0x3000c664
30009264:	3000c5a8 	.word	0x3000c5a8
30009268:	3000c624 	.word	0x3000c624
3000926c:	3000c5fc 	.word	0x3000c5fc
30009270:	3000c610 	.word	0x3000c610
30009274:	e000ed00 	.word	0xe000ed00

30009278 <Fault_Hanlder_Redirect>:
30009278:	4b08      	ldr	r3, [pc, #32]	; (3000929c <Fault_Hanlder_Redirect+0x24>)
3000927a:	4909      	ldr	r1, [pc, #36]	; (300092a0 <Fault_Hanlder_Redirect+0x28>)
3000927c:	4a09      	ldr	r2, [pc, #36]	; (300092a4 <Fault_Hanlder_Redirect+0x2c>)
3000927e:	b410      	push	{r4}
30009280:	6008      	str	r0, [r1, #0]
30009282:	4c09      	ldr	r4, [pc, #36]	; (300092a8 <Fault_Hanlder_Redirect+0x30>)
30009284:	60da      	str	r2, [r3, #12]
30009286:	4809      	ldr	r0, [pc, #36]	; (300092ac <Fault_Hanlder_Redirect+0x34>)
30009288:	4909      	ldr	r1, [pc, #36]	; (300092b0 <Fault_Hanlder_Redirect+0x38>)
3000928a:	4a0a      	ldr	r2, [pc, #40]	; (300092b4 <Fault_Hanlder_Redirect+0x3c>)
3000928c:	e9c3 4004 	strd	r4, r0, [r3, #16]
30009290:	e9c3 1206 	strd	r1, r2, [r3, #24]
30009294:	f85d 4b04 	ldr.w	r4, [sp], #4
30009298:	4770      	bx	lr
3000929a:	bf00      	nop
3000929c:	30000000 	.word	0x30000000
300092a0:	3000e9f4 	.word	0x3000e9f4
300092a4:	30009115 	.word	0x30009115
300092a8:	300090cd 	.word	0x300090cd
300092ac:	300090e5 	.word	0x300090e5
300092b0:	300090fd 	.word	0x300090fd
300092b4:	300090b1 	.word	0x300090b1

300092b8 <rtk_log_level_get>:
300092b8:	4b13      	ldr	r3, [pc, #76]	; (30009308 <rtk_log_level_get+0x50>)
300092ba:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
300092be:	681a      	ldr	r2, [r3, #0]
300092c0:	4606      	mov	r6, r0
300092c2:	2a03      	cmp	r2, #3
300092c4:	d917      	bls.n	300092f6 <rtk_log_level_get+0x3e>
300092c6:	b1d0      	cbz	r0, 300092fe <rtk_log_level_get+0x46>
300092c8:	2704      	movs	r7, #4
300092ca:	4d10      	ldr	r5, [pc, #64]	; (3000930c <rtk_log_level_get+0x54>)
300092cc:	2400      	movs	r4, #0
300092ce:	f8df 8048 	ldr.w	r8, [pc, #72]	; 30009318 <rtk_log_level_get+0x60>
300092d2:	e002      	b.n	300092da <rtk_log_level_get+0x22>
300092d4:	3401      	adds	r4, #1
300092d6:	42a7      	cmp	r7, r4
300092d8:	d911      	bls.n	300092fe <rtk_log_level_get+0x46>
300092da:	4628      	mov	r0, r5
300092dc:	4631      	mov	r1, r6
300092de:	350b      	adds	r5, #11
300092e0:	47c0      	blx	r8
300092e2:	2800      	cmp	r0, #0
300092e4:	d1f6      	bne.n	300092d4 <rtk_log_level_get+0x1c>
300092e6:	eb04 0284 	add.w	r2, r4, r4, lsl #2
300092ea:	4b09      	ldr	r3, [pc, #36]	; (30009310 <rtk_log_level_get+0x58>)
300092ec:	eb04 0442 	add.w	r4, r4, r2, lsl #1
300092f0:	5d18      	ldrb	r0, [r3, r4]
300092f2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
300092f6:	681f      	ldr	r7, [r3, #0]
300092f8:	b108      	cbz	r0, 300092fe <rtk_log_level_get+0x46>
300092fa:	2f00      	cmp	r7, #0
300092fc:	d1e5      	bne.n	300092ca <rtk_log_level_get+0x12>
300092fe:	4b05      	ldr	r3, [pc, #20]	; (30009314 <rtk_log_level_get+0x5c>)
30009300:	7818      	ldrb	r0, [r3, #0]
30009302:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
30009306:	bf00      	nop
30009308:	3000e9bc 	.word	0x3000e9bc
3000930c:	3000e9c1 	.word	0x3000e9c1
30009310:	3000e9c0 	.word	0x3000e9c0
30009314:	3000df4d 	.word	0x3000df4d
30009318:	00012c89 	.word	0x00012c89

3000931c <rtk_log_write>:
3000931c:	b1b9      	cbz	r1, 3000934e <rtk_log_write+0x32>
3000931e:	b408      	push	{r3}
30009320:	b570      	push	{r4, r5, r6, lr}
30009322:	4605      	mov	r5, r0
30009324:	b083      	sub	sp, #12
30009326:	4608      	mov	r0, r1
30009328:	460c      	mov	r4, r1
3000932a:	4616      	mov	r6, r2
3000932c:	f7ff ffc4 	bl	300092b8 <rtk_log_level_get>
30009330:	42a8      	cmp	r0, r5
30009332:	d307      	bcc.n	30009344 <rtk_log_write+0x28>
30009334:	7823      	ldrb	r3, [r4, #0]
30009336:	2b23      	cmp	r3, #35	; 0x23
30009338:	d10a      	bne.n	30009350 <rtk_log_write+0x34>
3000933a:	a908      	add	r1, sp, #32
3000933c:	9807      	ldr	r0, [sp, #28]
3000933e:	9101      	str	r1, [sp, #4]
30009340:	f001 f90c 	bl	3000a55c <DiagVprintf>
30009344:	b003      	add	sp, #12
30009346:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
3000934a:	b001      	add	sp, #4
3000934c:	4770      	bx	lr
3000934e:	4770      	bx	lr
30009350:	4621      	mov	r1, r4
30009352:	4632      	mov	r2, r6
30009354:	4804      	ldr	r0, [pc, #16]	; (30009368 <rtk_log_write+0x4c>)
30009356:	f001 fbc1 	bl	3000aadc <DiagPrintf>
3000935a:	a908      	add	r1, sp, #32
3000935c:	9807      	ldr	r0, [sp, #28]
3000935e:	9101      	str	r1, [sp, #4]
30009360:	f001 f8fc 	bl	3000a55c <DiagVprintf>
30009364:	e7ee      	b.n	30009344 <rtk_log_write+0x28>
30009366:	bf00      	nop
30009368:	3000c678 	.word	0x3000c678

3000936c <rtk_log_write_nano>:
3000936c:	b1b9      	cbz	r1, 3000939e <rtk_log_write_nano+0x32>
3000936e:	b408      	push	{r3}
30009370:	b570      	push	{r4, r5, r6, lr}
30009372:	4605      	mov	r5, r0
30009374:	b083      	sub	sp, #12
30009376:	4608      	mov	r0, r1
30009378:	460c      	mov	r4, r1
3000937a:	4616      	mov	r6, r2
3000937c:	f7ff ff9c 	bl	300092b8 <rtk_log_level_get>
30009380:	42a8      	cmp	r0, r5
30009382:	d307      	bcc.n	30009394 <rtk_log_write_nano+0x28>
30009384:	7823      	ldrb	r3, [r4, #0]
30009386:	2b23      	cmp	r3, #35	; 0x23
30009388:	d10a      	bne.n	300093a0 <rtk_log_write_nano+0x34>
3000938a:	a908      	add	r1, sp, #32
3000938c:	9807      	ldr	r0, [sp, #28]
3000938e:	9101      	str	r1, [sp, #4]
30009390:	f001 fbb2 	bl	3000aaf8 <DiagVprintfNano>
30009394:	b003      	add	sp, #12
30009396:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
3000939a:	b001      	add	sp, #4
3000939c:	4770      	bx	lr
3000939e:	4770      	bx	lr
300093a0:	4621      	mov	r1, r4
300093a2:	4632      	mov	r2, r6
300093a4:	4804      	ldr	r0, [pc, #16]	; (300093b8 <rtk_log_write_nano+0x4c>)
300093a6:	f001 fd8f 	bl	3000aec8 <DiagPrintfNano>
300093aa:	a908      	add	r1, sp, #32
300093ac:	9807      	ldr	r0, [sp, #28]
300093ae:	9101      	str	r1, [sp, #4]
300093b0:	f001 fba2 	bl	3000aaf8 <DiagVprintfNano>
300093b4:	e7ee      	b.n	30009394 <rtk_log_write_nano+0x28>
300093b6:	bf00      	nop
300093b8:	3000c678 	.word	0x3000c678

300093bc <flash_init_userdef>:
300093bc:	4b14      	ldr	r3, [pc, #80]	; (30009410 <flash_init_userdef+0x54>)
300093be:	2201      	movs	r2, #1
300093c0:	2140      	movs	r1, #64	; 0x40
300093c2:	f44f 6000 	mov.w	r0, #2048	; 0x800
300093c6:	b430      	push	{r4, r5}
300093c8:	e9c3 1203 	strd	r1, r2, [r3, #12]
300093cc:	2502      	movs	r5, #2
300093ce:	2400      	movs	r4, #0
300093d0:	f640 0104 	movw	r1, #2052	; 0x804
300093d4:	601a      	str	r2, [r3, #0]
300093d6:	22bb      	movs	r2, #187	; 0xbb
300093d8:	83d8      	strh	r0, [r3, #30]
300093da:	8419      	strh	r1, [r3, #32]
300093dc:	203b      	movs	r0, #59	; 0x3b
300093de:	21eb      	movs	r1, #235	; 0xeb
300093e0:	629a      	str	r2, [r3, #40]	; 0x28
300093e2:	4a0c      	ldr	r2, [pc, #48]	; (30009414 <flash_init_userdef+0x58>)
300093e4:	6258      	str	r0, [r3, #36]	; 0x24
300093e6:	6319      	str	r1, [r3, #48]	; 0x30
300093e8:	f64a 3120 	movw	r1, #43808	; 0xab20
300093ec:	655a      	str	r2, [r3, #84]	; 0x54
300093ee:	22b9      	movs	r2, #185	; 0xb9
300093f0:	4809      	ldr	r0, [pc, #36]	; (30009418 <flash_init_userdef+0x5c>)
300093f2:	f8a3 105c 	strh.w	r1, [r3, #92]	; 0x5c
300093f6:	6598      	str	r0, [r3, #88]	; 0x58
300093f8:	f883 205e 	strb.w	r2, [r3, #94]	; 0x5e
300093fc:	e9c3 5405 	strd	r5, r4, [r3, #20]
30009400:	2406      	movs	r4, #6
30009402:	f883 4022 	strb.w	r4, [r3, #34]	; 0x22
30009406:	246b      	movs	r4, #107	; 0x6b
30009408:	62dc      	str	r4, [r3, #44]	; 0x2c
3000940a:	bc30      	pop	{r4, r5}
3000940c:	4770      	bx	lr
3000940e:	bf00      	nop
30009410:	2001c01c 	.word	0x2001c01c
30009414:	00059f06 	.word	0x00059f06
30009418:	d8600001 	.word	0xd8600001

3000941c <nand_init_userdef>:
3000941c:	4b18      	ldr	r3, [pc, #96]	; (30009480 <nand_init_userdef+0x64>)
3000941e:	2001      	movs	r0, #1
30009420:	2200      	movs	r2, #0
30009422:	2102      	movs	r1, #2
30009424:	b410      	push	{r4}
30009426:	6018      	str	r0, [r3, #0]
30009428:	f640 0408 	movw	r4, #2056	; 0x808
3000942c:	6159      	str	r1, [r3, #20]
3000942e:	83dc      	strh	r4, [r3, #30]
30009430:	f44f 6400 	mov.w	r4, #2048	; 0x800
30009434:	f8a3 1062 	strh.w	r1, [r3, #98]	; 0x62
30009438:	841c      	strh	r4, [r3, #32]
3000943a:	246b      	movs	r4, #107	; 0x6b
3000943c:	619a      	str	r2, [r3, #24]
3000943e:	62dc      	str	r4, [r3, #44]	; 0x2c
30009440:	4c10      	ldr	r4, [pc, #64]	; (30009484 <nand_init_userdef+0x68>)
30009442:	775a      	strb	r2, [r3, #29]
30009444:	f883 2022 	strb.w	r2, [r3, #34]	; 0x22
30009448:	629a      	str	r2, [r3, #40]	; 0x28
3000944a:	631a      	str	r2, [r3, #48]	; 0x30
3000944c:	f883 2061 	strb.w	r2, [r3, #97]	; 0x61
30009450:	65da      	str	r2, [r3, #92]	; 0x5c
30009452:	e9c3 0003 	strd	r0, r0, [r3, #12]
30009456:	203b      	movs	r0, #59	; 0x3b
30009458:	6258      	str	r0, [r3, #36]	; 0x24
3000945a:	200b      	movs	r0, #11
3000945c:	e9c3 1211 	strd	r1, r2, [r3, #68]	; 0x44
30009460:	6698      	str	r0, [r3, #104]	; 0x68
30009462:	2008      	movs	r0, #8
30009464:	4908      	ldr	r1, [pc, #32]	; (30009488 <nand_init_userdef+0x6c>)
30009466:	64d8      	str	r0, [r3, #76]	; 0x4c
30009468:	f241 0013 	movw	r0, #4115	; 0x1013
3000946c:	6599      	str	r1, [r3, #88]	; 0x58
3000946e:	4907      	ldr	r1, [pc, #28]	; (3000948c <nand_init_userdef+0x70>)
30009470:	f8a3 006e 	strh.w	r0, [r3, #110]	; 0x6e
30009474:	6719      	str	r1, [r3, #112]	; 0x70
30009476:	e9c3 2414 	strd	r2, r4, [r3, #80]	; 0x50
3000947a:	f85d 4b04 	ldr.w	r4, [sp], #4
3000947e:	4770      	bx	lr
30009480:	2001c01c 	.word	0x2001c01c
30009484:	000f9f06 	.word	0x000f9f06
30009488:	d800001f 	.word	0xd800001f
3000948c:	10300804 	.word	0x10300804

30009490 <flash_get_layout_info>:
30009490:	b530      	push	{r4, r5, lr}
30009492:	4d10      	ldr	r5, [pc, #64]	; (300094d4 <flash_get_layout_info+0x44>)
30009494:	b083      	sub	sp, #12
30009496:	4604      	mov	r4, r0
30009498:	682b      	ldr	r3, [r5, #0]
3000949a:	2bff      	cmp	r3, #255	; 0xff
3000949c:	d011      	beq.n	300094c2 <flash_get_layout_info+0x32>
3000949e:	46ac      	mov	ip, r5
300094a0:	e003      	b.n	300094aa <flash_get_layout_info+0x1a>
300094a2:	f85c 3f0c 	ldr.w	r3, [ip, #12]!
300094a6:	2bff      	cmp	r3, #255	; 0xff
300094a8:	d00b      	beq.n	300094c2 <flash_get_layout_info+0x32>
300094aa:	429c      	cmp	r4, r3
300094ac:	d1f9      	bne.n	300094a2 <flash_get_layout_info+0x12>
300094ae:	b111      	cbz	r1, 300094b6 <flash_get_layout_info+0x26>
300094b0:	f8dc 3004 	ldr.w	r3, [ip, #4]
300094b4:	600b      	str	r3, [r1, #0]
300094b6:	b15a      	cbz	r2, 300094d0 <flash_get_layout_info+0x40>
300094b8:	f8dc 3008 	ldr.w	r3, [ip, #8]
300094bc:	6013      	str	r3, [r2, #0]
300094be:	b003      	add	sp, #12
300094c0:	bd30      	pop	{r4, r5, pc}
300094c2:	4b05      	ldr	r3, [pc, #20]	; (300094d8 <flash_get_layout_info+0x48>)
300094c4:	2245      	movs	r2, #69	; 0x45
300094c6:	4905      	ldr	r1, [pc, #20]	; (300094dc <flash_get_layout_info+0x4c>)
300094c8:	2002      	movs	r0, #2
300094ca:	9400      	str	r4, [sp, #0]
300094cc:	f7ff ff26 	bl	3000931c <rtk_log_write>
300094d0:	b003      	add	sp, #12
300094d2:	bd30      	pop	{r4, r5, pc}
300094d4:	3000e0e8 	.word	0x3000e0e8
300094d8:	3000c7a4 	.word	0x3000c7a4
300094dc:	3000c078 	.word	0x3000c078

300094e0 <flash_get_layout_info_by_addr>:
300094e0:	4b0f      	ldr	r3, [pc, #60]	; (30009520 <flash_get_layout_info_by_addr+0x40>)
300094e2:	b530      	push	{r4, r5, lr}
300094e4:	681c      	ldr	r4, [r3, #0]
300094e6:	b083      	sub	sp, #12
300094e8:	4605      	mov	r5, r0
300094ea:	2cff      	cmp	r4, #255	; 0xff
300094ec:	d009      	beq.n	30009502 <flash_get_layout_info_by_addr+0x22>
300094ee:	685c      	ldr	r4, [r3, #4]
300094f0:	42ac      	cmp	r4, r5
300094f2:	d802      	bhi.n	300094fa <flash_get_layout_info_by_addr+0x1a>
300094f4:	6898      	ldr	r0, [r3, #8]
300094f6:	42a8      	cmp	r0, r5
300094f8:	d20c      	bcs.n	30009514 <flash_get_layout_info_by_addr+0x34>
300094fa:	f853 4f0c 	ldr.w	r4, [r3, #12]!
300094fe:	2cff      	cmp	r4, #255	; 0xff
30009500:	d1f5      	bne.n	300094ee <flash_get_layout_info_by_addr+0xe>
30009502:	4b08      	ldr	r3, [pc, #32]	; (30009524 <flash_get_layout_info_by_addr+0x44>)
30009504:	2245      	movs	r2, #69	; 0x45
30009506:	4908      	ldr	r1, [pc, #32]	; (30009528 <flash_get_layout_info_by_addr+0x48>)
30009508:	2002      	movs	r0, #2
3000950a:	9500      	str	r5, [sp, #0]
3000950c:	f7ff ff06 	bl	3000931c <rtk_log_write>
30009510:	b003      	add	sp, #12
30009512:	bd30      	pop	{r4, r5, pc}
30009514:	600c      	str	r4, [r1, #0]
30009516:	689b      	ldr	r3, [r3, #8]
30009518:	6013      	str	r3, [r2, #0]
3000951a:	b003      	add	sp, #12
3000951c:	bd30      	pop	{r4, r5, pc}
3000951e:	bf00      	nop
30009520:	3000e0e8 	.word	0x3000e0e8
30009524:	3000c7cc 	.word	0x3000c7cc
30009528:	3000c078 	.word	0x3000c078

3000952c <TaskExitError>:
3000952c:	b672      	cpsid	i
3000952e:	e7fe      	b.n	3000952e <TaskExitError+0x2>

30009530 <thumb_backtrace_from_stack>:
30009530:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
30009534:	b085      	sub	sp, #20
30009536:	4b7d      	ldr	r3, [pc, #500]	; (3000972c <thumb_backtrace_from_stack+0x1fc>)
30009538:	9203      	str	r2, [sp, #12]
3000953a:	f023 0301 	bic.w	r3, r3, #1
3000953e:	680a      	ldr	r2, [r1, #0]
30009540:	f022 0901 	bic.w	r9, r2, #1
30009544:	4599      	cmp	r9, r3
30009546:	e9cd 3001 	strd	r3, r0, [sp, #4]
3000954a:	f000 80e3 	beq.w	30009714 <thumb_backtrace_from_stack+0x1e4>
3000954e:	6803      	ldr	r3, [r0, #0]
30009550:	460e      	mov	r6, r1
30009552:	2502      	movs	r5, #2
30009554:	f8df e200 	ldr.w	lr, [pc, #512]	; 30009758 <thumb_backtrace_from_stack+0x228>
30009558:	4a75      	ldr	r2, [pc, #468]	; (30009730 <thumb_backtrace_from_stack+0x200>)
3000955a:	9300      	str	r3, [sp, #0]
3000955c:	eba9 0405 	sub.w	r4, r9, r5
30009560:	f834 1c02 	ldrh.w	r1, [r4, #-2]
30009564:	8820      	ldrh	r0, [r4, #0]
30009566:	0acb      	lsrs	r3, r1, #11
30009568:	f400 477f 	and.w	r7, r0, #65280	; 0xff00
3000956c:	3b1d      	subs	r3, #29
3000956e:	2b02      	cmp	r3, #2
30009570:	d93a      	bls.n	300095e8 <thumb_backtrace_from_stack+0xb8>
30009572:	f5b7 4f35 	cmp.w	r7, #46336	; 0xb500
30009576:	f000 80b3 	beq.w	300096e0 <thumb_backtrace_from_stack+0x1b0>
3000957a:	f5b7 4f34 	cmp.w	r7, #46080	; 0xb400
3000957e:	d179      	bne.n	30009674 <thumb_backtrace_from_stack+0x144>
30009580:	b2c0      	uxtb	r0, r0
30009582:	f001 ff97 	bl	3000b4b4 <__popcountsi2>
30009586:	1ca3      	adds	r3, r4, #2
30009588:	4683      	mov	fp, r0
3000958a:	4599      	cmp	r9, r3
3000958c:	d325      	bcc.n	300095da <thumb_backtrace_from_stack+0xaa>
3000958e:	f04f 0a00 	mov.w	sl, #0
30009592:	2502      	movs	r5, #2
30009594:	f8df 81c0 	ldr.w	r8, [pc, #448]	; 30009758 <thumb_backtrace_from_stack+0x228>
30009598:	4f65      	ldr	r7, [pc, #404]	; (30009730 <thumb_backtrace_from_stack+0x200>)
3000959a:	46ac      	mov	ip, r5
3000959c:	8818      	ldrh	r0, [r3, #0]
3000959e:	44a4      	add	ip, r4
300095a0:	0ac3      	lsrs	r3, r0, #11
300095a2:	f8bc 2002 	ldrh.w	r2, [ip, #2]
300095a6:	3b1d      	subs	r3, #29
300095a8:	2b02      	cmp	r3, #2
300095aa:	d970      	bls.n	3000968e <thumb_backtrace_from_stack+0x15e>
300095ac:	f400 437f 	and.w	r3, r0, #65280	; 0xff00
300095b0:	f5b3 4f35 	cmp.w	r3, #46336	; 0xb500
300095b4:	f000 80a6 	beq.w	30009704 <thumb_backtrace_from_stack+0x1d4>
300095b8:	f020 037f 	bic.w	r3, r0, #127	; 0x7f
300095bc:	f24b 0280 	movw	r2, #45184	; 0xb080
300095c0:	4293      	cmp	r3, r2
300095c2:	d102      	bne.n	300095ca <thumb_backtrace_from_stack+0x9a>
300095c4:	f000 007f 	and.w	r0, r0, #127	; 0x7f
300095c8:	4483      	add	fp, r0
300095ca:	3502      	adds	r5, #2
300095cc:	1963      	adds	r3, r4, r5
300095ce:	46ac      	mov	ip, r5
300095d0:	454b      	cmp	r3, r9
300095d2:	d9e3      	bls.n	3000959c <thumb_backtrace_from_stack+0x6c>
300095d4:	f1ba 0f00 	cmp.w	sl, #0
300095d8:	d117      	bne.n	3000960a <thumb_backtrace_from_stack+0xda>
300095da:	9b03      	ldr	r3, [sp, #12]
300095dc:	6819      	ldr	r1, [r3, #0]
300095de:	2900      	cmp	r1, #0
300095e0:	f000 809e 	beq.w	30009720 <thumb_backtrace_from_stack+0x1f0>
300095e4:	460b      	mov	r3, r1
300095e6:	e016      	b.n	30009616 <thumb_backtrace_from_stack+0xe6>
300095e8:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
300095ec:	ea00 030e 	and.w	r3, r0, lr
300095f0:	4293      	cmp	r3, r2
300095f2:	d13e      	bne.n	30009672 <thumb_backtrace_from_stack+0x142>
300095f4:	f3c0 000b 	ubfx	r0, r0, #0, #12
300095f8:	f04f 0a01 	mov.w	sl, #1
300095fc:	f001 ff5a 	bl	3000b4b4 <__popcountsi2>
30009600:	1ca3      	adds	r3, r4, #2
30009602:	f100 0b01 	add.w	fp, r0, #1
30009606:	4599      	cmp	r9, r3
30009608:	d2c3      	bcs.n	30009592 <thumb_backtrace_from_stack+0x62>
3000960a:	ebab 010a 	sub.w	r1, fp, sl
3000960e:	9b00      	ldr	r3, [sp, #0]
30009610:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
30009614:	4619      	mov	r1, r3
30009616:	9a00      	ldr	r2, [sp, #0]
30009618:	f023 0301 	bic.w	r3, r3, #1
3000961c:	eb02 008b 	add.w	r0, r2, fp, lsl #2
30009620:	9a02      	ldr	r2, [sp, #8]
30009622:	6010      	str	r0, [r2, #0]
30009624:	9a01      	ldr	r2, [sp, #4]
30009626:	429a      	cmp	r2, r3
30009628:	d078      	beq.n	3000971c <thumb_backtrace_from_stack+0x1ec>
3000962a:	f833 2c02 	ldrh.w	r2, [r3, #-2]
3000962e:	f402 427f 	and.w	r2, r2, #65280	; 0xff00
30009632:	f5b2 4f8e 	cmp.w	r2, #18176	; 0x4700
30009636:	d016      	beq.n	30009666 <thumb_backtrace_from_stack+0x136>
30009638:	f853 2c04 	ldr.w	r2, [r3, #-4]
3000963c:	483d      	ldr	r0, [pc, #244]	; (30009734 <thumb_backtrace_from_stack+0x204>)
3000963e:	4c3e      	ldr	r4, [pc, #248]	; (30009738 <thumb_backtrace_from_stack+0x208>)
30009640:	4010      	ands	r0, r2
30009642:	42a0      	cmp	r0, r4
30009644:	d063      	beq.n	3000970e <thumb_backtrace_from_stack+0x1de>
30009646:	f002 407e 	and.w	r0, r2, #4261412864	; 0xfe000000
3000964a:	f1b0 4f7a 	cmp.w	r0, #4194304000	; 0xfa000000
3000964e:	d05e      	beq.n	3000970e <thumb_backtrace_from_stack+0x1de>
30009650:	483a      	ldr	r0, [pc, #232]	; (3000973c <thumb_backtrace_from_stack+0x20c>)
30009652:	4002      	ands	r2, r0
30009654:	483a      	ldr	r0, [pc, #232]	; (30009740 <thumb_backtrace_from_stack+0x210>)
30009656:	4282      	cmp	r2, r0
30009658:	d059      	beq.n	3000970e <thumb_backtrace_from_stack+0x1de>
3000965a:	f833 3c04 	ldrh.w	r3, [r3, #-4]
3000965e:	0adb      	lsrs	r3, r3, #11
30009660:	3b1d      	subs	r3, #29
30009662:	2b02      	cmp	r3, #2
30009664:	d953      	bls.n	3000970e <thumb_backtrace_from_stack+0x1de>
30009666:	3902      	subs	r1, #2
30009668:	2000      	movs	r0, #0
3000966a:	6031      	str	r1, [r6, #0]
3000966c:	b005      	add	sp, #20
3000966e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30009672:	3502      	adds	r5, #2
30009674:	3502      	adds	r5, #2
30009676:	f5b5 5f00 	cmp.w	r5, #8192	; 0x2000
3000967a:	f6ff af6f 	blt.w	3000955c <thumb_backtrace_from_stack+0x2c>
3000967e:	1ca3      	adds	r3, r4, #2
30009680:	4599      	cmp	r9, r3
30009682:	d34f      	bcc.n	30009724 <thumb_backtrace_from_stack+0x1f4>
30009684:	f04f 0a00 	mov.w	sl, #0
30009688:	f04f 3bff 	mov.w	fp, #4294967295	; 0xffffffff
3000968c:	e781      	b.n	30009592 <thumb_backtrace_from_stack+0x62>
3000968e:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
30009692:	3502      	adds	r5, #2
30009694:	ea00 0308 	and.w	r3, r0, r8
30009698:	42bb      	cmp	r3, r7
3000969a:	d02d      	beq.n	300096f8 <thumb_backtrace_from_stack+0x1c8>
3000969c:	4b29      	ldr	r3, [pc, #164]	; (30009744 <thumb_backtrace_from_stack+0x214>)
3000969e:	4a2a      	ldr	r2, [pc, #168]	; (30009748 <thumb_backtrace_from_stack+0x218>)
300096a0:	4003      	ands	r3, r0
300096a2:	4293      	cmp	r3, r2
300096a4:	d009      	beq.n	300096ba <thumb_backtrace_from_stack+0x18a>
300096a6:	4b29      	ldr	r3, [pc, #164]	; (3000974c <thumb_backtrace_from_stack+0x21c>)
300096a8:	4a29      	ldr	r2, [pc, #164]	; (30009750 <thumb_backtrace_from_stack+0x220>)
300096aa:	4003      	ands	r3, r0
300096ac:	4293      	cmp	r3, r2
300096ae:	d002      	beq.n	300096b6 <thumb_backtrace_from_stack+0x186>
300096b0:	4a28      	ldr	r2, [pc, #160]	; (30009754 <thumb_backtrace_from_stack+0x224>)
300096b2:	4293      	cmp	r3, r2
300096b4:	d189      	bne.n	300095ca <thumb_backtrace_from_stack+0x9a>
300096b6:	b2c0      	uxtb	r0, r0
300096b8:	e786      	b.n	300095c8 <thumb_backtrace_from_stack+0x98>
300096ba:	0d83      	lsrs	r3, r0, #22
300096bc:	f3c0 11c0 	ubfx	r1, r0, #7, #1
300096c0:	0ac2      	lsrs	r2, r0, #11
300096c2:	f000 007f 	and.w	r0, r0, #127	; 0x7f
300096c6:	f003 0310 	and.w	r3, r3, #16
300096ca:	f002 020e 	and.w	r2, r2, #14
300096ce:	3080      	adds	r0, #128	; 0x80
300096d0:	f1c3 031e 	rsb	r3, r3, #30
300096d4:	430a      	orrs	r2, r1
300096d6:	1a9b      	subs	r3, r3, r2
300096d8:	4098      	lsls	r0, r3
300096da:	f53f af76 	bmi.w	300095ca <thumb_backtrace_from_stack+0x9a>
300096de:	e773      	b.n	300095c8 <thumb_backtrace_from_stack+0x98>
300096e0:	b2c0      	uxtb	r0, r0
300096e2:	f04f 0a01 	mov.w	sl, #1
300096e6:	f001 fee5 	bl	3000b4b4 <__popcountsi2>
300096ea:	1ca3      	adds	r3, r4, #2
300096ec:	f100 0b01 	add.w	fp, r0, #1
300096f0:	4599      	cmp	r9, r3
300096f2:	f4bf af4e 	bcs.w	30009592 <thumb_backtrace_from_stack+0x62>
300096f6:	e788      	b.n	3000960a <thumb_backtrace_from_stack+0xda>
300096f8:	f3c0 000b 	ubfx	r0, r0, #0, #12
300096fc:	f001 feda 	bl	3000b4b4 <__popcountsi2>
30009700:	3001      	adds	r0, #1
30009702:	e761      	b.n	300095c8 <thumb_backtrace_from_stack+0x98>
30009704:	b2c0      	uxtb	r0, r0
30009706:	f001 fed5 	bl	3000b4b4 <__popcountsi2>
3000970a:	3001      	adds	r0, #1
3000970c:	e75c      	b.n	300095c8 <thumb_backtrace_from_stack+0x98>
3000970e:	3904      	subs	r1, #4
30009710:	2000      	movs	r0, #0
30009712:	e7aa      	b.n	3000966a <thumb_backtrace_from_stack+0x13a>
30009714:	2001      	movs	r0, #1
30009716:	b005      	add	sp, #20
30009718:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
3000971c:	2001      	movs	r0, #1
3000971e:	e7a4      	b.n	3000966a <thumb_backtrace_from_stack+0x13a>
30009720:	468a      	mov	sl, r1
30009722:	e772      	b.n	3000960a <thumb_backtrace_from_stack+0xda>
30009724:	f04f 3bff 	mov.w	fp, #4294967295	; 0xffffffff
30009728:	e757      	b.n	300095da <thumb_backtrace_from_stack+0xaa>
3000972a:	bf00      	nop
3000972c:	3000952d 	.word	0x3000952d
30009730:	e92d4000 	.word	0xe92d4000
30009734:	0ffffff0 	.word	0x0ffffff0
30009738:	012fff10 	.word	0x012fff10
3000973c:	f800d000 	.word	0xf800d000
30009740:	f000c000 	.word	0xf000c000
30009744:	fbff8f00 	.word	0xfbff8f00
30009748:	f1ad0d00 	.word	0xf1ad0d00
3000974c:	ffbf0f00 	.word	0xffbf0f00
30009750:	ed2d0b00 	.word	0xed2d0b00
30009754:	ed2d0a00 	.word	0xed2d0a00
30009758:	fffff000 	.word	0xfffff000

3000975c <do_stack_backtrace>:
3000975c:	b570      	push	{r4, r5, r6, lr}
3000975e:	4d22      	ldr	r5, [pc, #136]	; (300097e8 <do_stack_backtrace+0x8c>)
30009760:	b084      	sub	sp, #16
30009762:	682b      	ldr	r3, [r5, #0]
30009764:	b90b      	cbnz	r3, 3000976a <do_stack_backtrace+0xe>
30009766:	2308      	movs	r3, #8
30009768:	602b      	str	r3, [r5, #0]
3000976a:	2800      	cmp	r0, #0
3000976c:	d032      	beq.n	300097d4 <do_stack_backtrace+0x78>
3000976e:	2900      	cmp	r1, #0
30009770:	d030      	beq.n	300097d4 <do_stack_backtrace+0x78>
30009772:	9001      	str	r0, [sp, #4]
30009774:	06d2      	lsls	r2, r2, #27
30009776:	69cc      	ldr	r4, [r1, #28]
30009778:	694b      	ldr	r3, [r1, #20]
3000977a:	4602      	mov	r2, r0
3000977c:	bf4c      	ite	mi
3000977e:	3120      	addmi	r1, #32
30009780:	3168      	addpl	r1, #104	; 0x68
30009782:	f3c4 0408 	ubfx	r4, r4, #0, #9
30009786:	4819      	ldr	r0, [pc, #100]	; (300097ec <do_stack_backtrace+0x90>)
30009788:	9303      	str	r3, [sp, #12]
3000978a:	9102      	str	r1, [sp, #8]
3000978c:	f001 fb9c 	bl	3000aec8 <DiagPrintfNano>
30009790:	9b01      	ldr	r3, [sp, #4]
30009792:	4a17      	ldr	r2, [pc, #92]	; (300097f0 <do_stack_backtrace+0x94>)
30009794:	4917      	ldr	r1, [pc, #92]	; (300097f4 <do_stack_backtrace+0x98>)
30009796:	4818      	ldr	r0, [pc, #96]	; (300097f8 <do_stack_backtrace+0x9c>)
30009798:	f001 fb96 	bl	3000aec8 <DiagPrintfNano>
3000979c:	b9ac      	cbnz	r4, 300097ca <do_stack_backtrace+0x6e>
3000979e:	682b      	ldr	r3, [r5, #0]
300097a0:	b1b3      	cbz	r3, 300097d0 <do_stack_backtrace+0x74>
300097a2:	4e16      	ldr	r6, [pc, #88]	; (300097fc <do_stack_backtrace+0xa0>)
300097a4:	e007      	b.n	300097b6 <do_stack_backtrace+0x5a>
300097a6:	9901      	ldr	r1, [sp, #4]
300097a8:	f021 0101 	bic.w	r1, r1, #1
300097ac:	f001 fb8c 	bl	3000aec8 <DiagPrintfNano>
300097b0:	682b      	ldr	r3, [r5, #0]
300097b2:	42a3      	cmp	r3, r4
300097b4:	d90c      	bls.n	300097d0 <do_stack_backtrace+0x74>
300097b6:	aa03      	add	r2, sp, #12
300097b8:	a901      	add	r1, sp, #4
300097ba:	a802      	add	r0, sp, #8
300097bc:	3401      	adds	r4, #1
300097be:	f7ff feb7 	bl	30009530 <thumb_backtrace_from_stack>
300097c2:	4603      	mov	r3, r0
300097c4:	4630      	mov	r0, r6
300097c6:	2b00      	cmp	r3, #0
300097c8:	d0ed      	beq.n	300097a6 <do_stack_backtrace+0x4a>
300097ca:	480d      	ldr	r0, [pc, #52]	; (30009800 <do_stack_backtrace+0xa4>)
300097cc:	f001 fb7c 	bl	3000aec8 <DiagPrintfNano>
300097d0:	b004      	add	sp, #16
300097d2:	bd70      	pop	{r4, r5, r6, pc}
300097d4:	4669      	mov	r1, sp
300097d6:	9102      	str	r1, [sp, #8]
300097d8:	4678      	mov	r0, pc
300097da:	9001      	str	r0, [sp, #4]
300097dc:	4673      	mov	r3, lr
300097de:	9303      	str	r3, [sp, #12]
300097e0:	f3ef 8303 	mrs	r3, PSR
300097e4:	e7c6      	b.n	30009774 <do_stack_backtrace+0x18>
300097e6:	bf00      	nop
300097e8:	3000e154 	.word	0x3000e154
300097ec:	3000c9a0 	.word	0x3000c9a0
300097f0:	3000c9e0 	.word	0x3000c9e0
300097f4:	3000ca64 	.word	0x3000ca64
300097f8:	3000ca98 	.word	0x3000ca98
300097fc:	3000cadc 	.word	0x3000cadc
30009800:	3000b7c8 	.word	0x3000b7c8

30009804 <crash_dump_memory>:
30009804:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
30009808:	460e      	mov	r6, r1
3000980a:	4680      	mov	r8, r0
3000980c:	4b21      	ldr	r3, [pc, #132]	; (30009894 <crash_dump_memory+0x90>)
3000980e:	f1a6 0080 	sub.w	r0, r6, #128	; 0x80
30009812:	4a21      	ldr	r2, [pc, #132]	; (30009898 <crash_dump_memory+0x94>)
30009814:	f8d3 127c 	ldr.w	r1, [r3, #636]	; 0x27c
30009818:	4644      	mov	r4, r8
3000981a:	f5b0 5f7e 	cmp.w	r0, #16256	; 0x3f80
3000981e:	4b1f      	ldr	r3, [pc, #124]	; (3000989c <crash_dump_memory+0x98>)
30009820:	481f      	ldr	r0, [pc, #124]	; (300098a0 <crash_dump_memory+0x9c>)
30009822:	bf88      	it	hi
30009824:	2680      	movhi	r6, #128	; 0x80
30009826:	f011 0fc0 	tst.w	r1, #192	; 0xc0
3000982a:	4f1e      	ldr	r7, [pc, #120]	; (300098a4 <crash_dump_memory+0xa0>)
3000982c:	bf14      	ite	ne
3000982e:	4611      	movne	r1, r2
30009830:	4619      	moveq	r1, r3
30009832:	f001 fb49 	bl	3000aec8 <DiagPrintfNano>
30009836:	4632      	mov	r2, r6
30009838:	4641      	mov	r1, r8
3000983a:	481b      	ldr	r0, [pc, #108]	; (300098a8 <crash_dump_memory+0xa4>)
3000983c:	f001 fb44 	bl	3000aec8 <DiagPrintfNano>
30009840:	f8df 906c 	ldr.w	r9, [pc, #108]	; 300098b0 <crash_dump_memory+0xac>
30009844:	2300      	movs	r3, #0
30009846:	f8df a06c 	ldr.w	sl, [pc, #108]	; 300098b4 <crash_dump_memory+0xb0>
3000984a:	e007      	b.n	3000985c <crash_dump_memory+0x58>
3000984c:	6821      	ldr	r1, [r4, #0]
3000984e:	4638      	mov	r0, r7
30009850:	f001 fb3a 	bl	3000aec8 <DiagPrintfNano>
30009854:	42ae      	cmp	r6, r5
30009856:	d00f      	beq.n	30009878 <crash_dump_memory+0x74>
30009858:	3404      	adds	r4, #4
3000985a:	462b      	mov	r3, r5
3000985c:	1c5d      	adds	r5, r3, #1
3000985e:	b183      	cbz	r3, 30009882 <crash_dump_memory+0x7e>
30009860:	079b      	lsls	r3, r3, #30
30009862:	d1f3      	bne.n	3000984c <crash_dump_memory+0x48>
30009864:	4621      	mov	r1, r4
30009866:	4648      	mov	r0, r9
30009868:	f001 fb2e 	bl	3000aec8 <DiagPrintfNano>
3000986c:	6821      	ldr	r1, [r4, #0]
3000986e:	4638      	mov	r0, r7
30009870:	f001 fb2a 	bl	3000aec8 <DiagPrintfNano>
30009874:	42ae      	cmp	r6, r5
30009876:	d1ef      	bne.n	30009858 <crash_dump_memory+0x54>
30009878:	480c      	ldr	r0, [pc, #48]	; (300098ac <crash_dump_memory+0xa8>)
3000987a:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
3000987e:	f001 bb23 	b.w	3000aec8 <DiagPrintfNano>
30009882:	4641      	mov	r1, r8
30009884:	4650      	mov	r0, sl
30009886:	f001 fb1f 	bl	3000aec8 <DiagPrintfNano>
3000988a:	6821      	ldr	r1, [r4, #0]
3000988c:	4638      	mov	r0, r7
3000988e:	f001 fb1b 	bl	3000aec8 <DiagPrintfNano>
30009892:	e7e1      	b.n	30009858 <crash_dump_memory+0x54>
30009894:	42008000 	.word	0x42008000
30009898:	3000cae4 	.word	0x3000cae4
3000989c:	3000cae8 	.word	0x3000cae8
300098a0:	3000caec 	.word	0x3000caec
300098a4:	3000cb58 	.word	0x3000cb58
300098a8:	3000cb10 	.word	0x3000cb10
300098ac:	3000b7c8 	.word	0x3000b7c8
300098b0:	3000cb60 	.word	0x3000cb60
300098b4:	3000cb4c 	.word	0x3000cb4c

300098b8 <crash_dump>:
300098b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
300098bc:	4c62      	ldr	r4, [pc, #392]	; (30009a48 <crash_dump+0x190>)
300098be:	4615      	mov	r5, r2
300098c0:	468a      	mov	sl, r1
300098c2:	f04f 23e0 	mov.w	r3, #3758153728	; 0xe000e000
300098c6:	4861      	ldr	r0, [pc, #388]	; (30009a4c <crash_dump+0x194>)
300098c8:	ed2d 8b02 	vpush	{d8}
300098cc:	e9d2 2109 	ldrd	r2, r1, [r2, #36]	; 0x24
300098d0:	b083      	sub	sp, #12
300098d2:	e9c4 2100 	strd	r2, r1, [r4]
300098d6:	6aea      	ldr	r2, [r5, #44]	; 0x2c
300098d8:	60a2      	str	r2, [r4, #8]
300098da:	6b2a      	ldr	r2, [r5, #48]	; 0x30
300098dc:	60e2      	str	r2, [r4, #12]
300098de:	686a      	ldr	r2, [r5, #4]
300098e0:	6122      	str	r2, [r4, #16]
300098e2:	68aa      	ldr	r2, [r5, #8]
300098e4:	6162      	str	r2, [r4, #20]
300098e6:	68ea      	ldr	r2, [r5, #12]
300098e8:	61a2      	str	r2, [r4, #24]
300098ea:	692a      	ldr	r2, [r5, #16]
300098ec:	61e2      	str	r2, [r4, #28]
300098ee:	696a      	ldr	r2, [r5, #20]
300098f0:	6222      	str	r2, [r4, #32]
300098f2:	69aa      	ldr	r2, [r5, #24]
300098f4:	6262      	str	r2, [r4, #36]	; 0x24
300098f6:	69ea      	ldr	r2, [r5, #28]
300098f8:	62a2      	str	r2, [r4, #40]	; 0x28
300098fa:	6a2a      	ldr	r2, [r5, #32]
300098fc:	62e2      	str	r2, [r4, #44]	; 0x2c
300098fe:	6b6a      	ldr	r2, [r5, #52]	; 0x34
30009900:	6322      	str	r2, [r4, #48]	; 0x30
30009902:	6baa      	ldr	r2, [r5, #56]	; 0x38
30009904:	6362      	str	r2, [r4, #52]	; 0x34
30009906:	6bea      	ldr	r2, [r5, #60]	; 0x3c
30009908:	63a2      	str	r2, [r4, #56]	; 0x38
3000990a:	6c2a      	ldr	r2, [r5, #64]	; 0x40
3000990c:	63e2      	str	r2, [r4, #60]	; 0x3c
3000990e:	682a      	ldr	r2, [r5, #0]
30009910:	6422      	str	r2, [r4, #64]	; 0x40
30009912:	f8d3 2d24 	ldr.w	r2, [r3, #3364]	; 0xd24
30009916:	6462      	str	r2, [r4, #68]	; 0x44
30009918:	4a4d      	ldr	r2, [pc, #308]	; (30009a50 <crash_dump+0x198>)
3000991a:	f892 1028 	ldrb.w	r1, [r2, #40]	; 0x28
3000991e:	f884 1048 	strb.w	r1, [r4, #72]	; 0x48
30009922:	f8d3 1d34 	ldr.w	r1, [r3, #3380]	; 0xd34
30009926:	64e1      	str	r1, [r4, #76]	; 0x4c
30009928:	f892 1029 	ldrb.w	r1, [r2, #41]	; 0x29
3000992c:	f884 1050 	strb.w	r1, [r4, #80]	; 0x50
30009930:	f8d3 1d38 	ldr.w	r1, [r3, #3384]	; 0xd38
30009934:	6561      	str	r1, [r4, #84]	; 0x54
30009936:	8d51      	ldrh	r1, [r2, #42]	; 0x2a
30009938:	f8a4 1058 	strh.w	r1, [r4, #88]	; 0x58
3000993c:	f8d3 1d2c 	ldr.w	r1, [r3, #3372]	; 0xd2c
30009940:	65e1      	str	r1, [r4, #92]	; 0x5c
30009942:	8e11      	ldrh	r1, [r2, #48]	; 0x30
30009944:	8f92      	ldrh	r2, [r2, #60]	; 0x3c
30009946:	b289      	uxth	r1, r1
30009948:	b292      	uxth	r2, r2
3000994a:	6621      	str	r1, [r4, #96]	; 0x60
3000994c:	6662      	str	r2, [r4, #100]	; 0x64
3000994e:	f8d3 2de4 	ldr.w	r2, [r3, #3556]	; 0xde4
30009952:	66a2      	str	r2, [r4, #104]	; 0x68
30009954:	f8d3 3de8 	ldr.w	r3, [r3, #3560]	; 0xde8
30009958:	66e3      	str	r3, [r4, #108]	; 0x6c
3000995a:	f001 fab5 	bl	3000aec8 <DiagPrintfNano>
3000995e:	4b3d      	ldr	r3, [pc, #244]	; (30009a54 <crash_dump+0x19c>)
30009960:	681b      	ldr	r3, [r3, #0]
30009962:	2b00      	cmp	r3, #0
30009964:	d06b      	beq.n	30009a3e <crash_dump+0x186>
30009966:	4651      	mov	r1, sl
30009968:	4628      	mov	r0, r5
3000996a:	4798      	blx	r3
3000996c:	ee08 0a10 	vmov	s16, r0
30009970:	4835      	ldr	r0, [pc, #212]	; (30009a48 <crash_dump+0x190>)
30009972:	46a8      	mov	r8, r5
30009974:	f000 f88e 	bl	30009a94 <fault_diagnosis>
30009978:	4837      	ldr	r0, [pc, #220]	; (30009a58 <crash_dump+0x1a0>)
3000997a:	f001 faa5 	bl	3000aec8 <DiagPrintfNano>
3000997e:	6ba9      	ldr	r1, [r5, #56]	; 0x38
30009980:	4836      	ldr	r0, [pc, #216]	; (30009a5c <crash_dump+0x1a4>)
30009982:	462e      	mov	r6, r5
30009984:	f001 faa0 	bl	3000aec8 <DiagPrintfNano>
30009988:	6be9      	ldr	r1, [r5, #60]	; 0x3c
3000998a:	4835      	ldr	r0, [pc, #212]	; (30009a60 <crash_dump+0x1a8>)
3000998c:	f001 fa9c 	bl	3000aec8 <DiagPrintfNano>
30009990:	6c29      	ldr	r1, [r5, #64]	; 0x40
30009992:	4834      	ldr	r0, [pc, #208]	; (30009a64 <crash_dump+0x1ac>)
30009994:	f001 fa98 	bl	3000aec8 <DiagPrintfNano>
30009998:	f858 1b20 	ldr.w	r1, [r8], #32
3000999c:	4832      	ldr	r0, [pc, #200]	; (30009a68 <crash_dump+0x1b0>)
3000999e:	f001 fa93 	bl	3000aec8 <DiagPrintfNano>
300099a2:	4647      	mov	r7, r8
300099a4:	f105 0330 	add.w	r3, r5, #48	; 0x30
300099a8:	f8df b0d0 	ldr.w	fp, [pc, #208]	; 30009a7c <crash_dump+0x1c4>
300099ac:	f857 2f04 	ldr.w	r2, [r7, #4]!
300099b0:	f8cd 8004 	str.w	r8, [sp, #4]
300099b4:	46a8      	mov	r8, r5
300099b6:	461d      	mov	r5, r3
300099b8:	492c      	ldr	r1, [pc, #176]	; (30009a6c <crash_dump+0x1b4>)
300099ba:	4658      	mov	r0, fp
300099bc:	f8df 90d0 	ldr.w	r9, [pc, #208]	; 30009a90 <crash_dump+0x1d8>
300099c0:	f001 fa82 	bl	3000aec8 <DiagPrintfNano>
300099c4:	42af      	cmp	r7, r5
300099c6:	d008      	beq.n	300099da <crash_dump+0x122>
300099c8:	f857 2f04 	ldr.w	r2, [r7, #4]!
300099cc:	4658      	mov	r0, fp
300099ce:	f859 1b04 	ldr.w	r1, [r9], #4
300099d2:	f001 fa79 	bl	3000aec8 <DiagPrintfNano>
300099d6:	42af      	cmp	r7, r5
300099d8:	d1f6      	bne.n	300099c8 <crash_dump+0x110>
300099da:	4645      	mov	r5, r8
300099dc:	4f24      	ldr	r7, [pc, #144]	; (30009a70 <crash_dump+0x1b8>)
300099de:	f8dd 8004 	ldr.w	r8, [sp, #4]
300099e2:	4924      	ldr	r1, [pc, #144]	; (30009a74 <crash_dump+0x1bc>)
300099e4:	f8df 9094 	ldr.w	r9, [pc, #148]	; 30009a7c <crash_dump+0x1c4>
300099e8:	e001      	b.n	300099ee <crash_dump+0x136>
300099ea:	f857 1b04 	ldr.w	r1, [r7], #4
300099ee:	f856 2f04 	ldr.w	r2, [r6, #4]!
300099f2:	4648      	mov	r0, r9
300099f4:	f001 fa68 	bl	3000aec8 <DiagPrintfNano>
300099f8:	4546      	cmp	r6, r8
300099fa:	d1f6      	bne.n	300099ea <crash_dump+0x132>
300099fc:	6b6a      	ldr	r2, [r5, #52]	; 0x34
300099fe:	491e      	ldr	r1, [pc, #120]	; (30009a78 <crash_dump+0x1c0>)
30009a00:	481e      	ldr	r0, [pc, #120]	; (30009a7c <crash_dump+0x1c4>)
30009a02:	f001 fa61 	bl	3000aec8 <DiagPrintfNano>
30009a06:	ee18 1a10 	vmov	r1, s16
30009a0a:	4650      	mov	r0, sl
30009a0c:	f7ff fefa 	bl	30009804 <crash_dump_memory>
30009a10:	481b      	ldr	r0, [pc, #108]	; (30009a80 <crash_dump+0x1c8>)
30009a12:	f001 fa59 	bl	3000aec8 <DiagPrintfNano>
30009a16:	6c22      	ldr	r2, [r4, #64]	; 0x40
30009a18:	4651      	mov	r1, sl
30009a1a:	6ba0      	ldr	r0, [r4, #56]	; 0x38
30009a1c:	f7ff fe9e 	bl	3000975c <do_stack_backtrace>
30009a20:	4818      	ldr	r0, [pc, #96]	; (30009a84 <crash_dump+0x1cc>)
30009a22:	f001 fa51 	bl	3000aec8 <DiagPrintfNano>
30009a26:	4818      	ldr	r0, [pc, #96]	; (30009a88 <crash_dump+0x1d0>)
30009a28:	f001 fa4e 	bl	3000aec8 <DiagPrintfNano>
30009a2c:	4817      	ldr	r0, [pc, #92]	; (30009a8c <crash_dump+0x1d4>)
30009a2e:	f001 fa4b 	bl	3000aec8 <DiagPrintfNano>
30009a32:	2000      	movs	r0, #0
30009a34:	b003      	add	sp, #12
30009a36:	ecbd 8b02 	vpop	{d8}
30009a3a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
30009a3e:	2380      	movs	r3, #128	; 0x80
30009a40:	ee08 3a10 	vmov	s16, r3
30009a44:	e794      	b.n	30009970 <crash_dump+0xb8>
30009a46:	bf00      	nop
30009a48:	3000e9f8 	.word	0x3000e9f8
30009a4c:	3000cb74 	.word	0x3000cb74
30009a50:	e000ed00 	.word	0xe000ed00
30009a54:	3000e9f4 	.word	0x3000e9f4
30009a58:	3000cb98 	.word	0x3000cb98
30009a5c:	3000cbc0 	.word	0x3000cbc0
30009a60:	3000cbd0 	.word	0x3000cbd0
30009a64:	3000cbe0 	.word	0x3000cbe0
30009a68:	3000cbf0 	.word	0x3000cbf0
30009a6c:	3000cb6c 	.word	0x3000cb6c
30009a70:	3000ccc8 	.word	0x3000ccc8
30009a74:	3000cb70 	.word	0x3000cb70
30009a78:	3000cc10 	.word	0x3000cc10
30009a7c:	3000cc00 	.word	0x3000cc00
30009a80:	3000cc14 	.word	0x3000cc14
30009a84:	3000cc38 	.word	0x3000cc38
30009a88:	3000cc64 	.word	0x3000cc64
30009a8c:	3000cc90 	.word	0x3000cc90
30009a90:	3000cce8 	.word	0x3000cce8

30009a94 <fault_diagnosis>:
30009a94:	b510      	push	{r4, lr}
30009a96:	4604      	mov	r4, r0
30009a98:	4888      	ldr	r0, [pc, #544]	; (30009cbc <fault_diagnosis+0x228>)
30009a9a:	6ba1      	ldr	r1, [r4, #56]	; 0x38
30009a9c:	f001 fa14 	bl	3000aec8 <DiagPrintfNano>
30009aa0:	f894 305c 	ldrb.w	r3, [r4, #92]	; 0x5c
30009aa4:	079b      	lsls	r3, r3, #30
30009aa6:	f100 808a 	bmi.w	30009bbe <fault_diagnosis+0x12a>
30009aaa:	6ea1      	ldr	r1, [r4, #104]	; 0x68
30009aac:	b1e1      	cbz	r1, 30009ae8 <fault_diagnosis+0x54>
30009aae:	f894 3068 	ldrb.w	r3, [r4, #104]	; 0x68
30009ab2:	07d8      	lsls	r0, r3, #31
30009ab4:	f100 8094 	bmi.w	30009be0 <fault_diagnosis+0x14c>
30009ab8:	079a      	lsls	r2, r3, #30
30009aba:	f100 809a 	bmi.w	30009bf2 <fault_diagnosis+0x15e>
30009abe:	0758      	lsls	r0, r3, #29
30009ac0:	f100 80a1 	bmi.w	30009c06 <fault_diagnosis+0x172>
30009ac4:	0719      	lsls	r1, r3, #28
30009ac6:	f100 80a8 	bmi.w	30009c1a <fault_diagnosis+0x186>
30009aca:	06da      	lsls	r2, r3, #27
30009acc:	f100 80af 	bmi.w	30009c2e <fault_diagnosis+0x19a>
30009ad0:	0698      	lsls	r0, r3, #26
30009ad2:	f100 80b6 	bmi.w	30009c42 <fault_diagnosis+0x1ae>
30009ad6:	0619      	lsls	r1, r3, #24
30009ad8:	f100 80bd 	bmi.w	30009c56 <fault_diagnosis+0x1c2>
30009adc:	065a      	lsls	r2, r3, #25
30009ade:	d503      	bpl.n	30009ae8 <fault_diagnosis+0x54>
30009ae0:	f013 0f28 	tst.w	r3, #40	; 0x28
30009ae4:	f040 8186 	bne.w	30009df4 <fault_diagnosis+0x360>
30009ae8:	f894 1048 	ldrb.w	r1, [r4, #72]	; 0x48
30009aec:	b199      	cbz	r1, 30009b16 <fault_diagnosis+0x82>
30009aee:	07cb      	lsls	r3, r1, #31
30009af0:	f100 80b9 	bmi.w	30009c66 <fault_diagnosis+0x1d2>
30009af4:	0788      	lsls	r0, r1, #30
30009af6:	f100 80bf 	bmi.w	30009c78 <fault_diagnosis+0x1e4>
30009afa:	070a      	lsls	r2, r1, #28
30009afc:	f100 80c5 	bmi.w	30009c8a <fault_diagnosis+0x1f6>
30009b00:	06cb      	lsls	r3, r1, #27
30009b02:	f100 80cb 	bmi.w	30009c9c <fault_diagnosis+0x208>
30009b06:	0688      	lsls	r0, r1, #26
30009b08:	f100 80d1 	bmi.w	30009cae <fault_diagnosis+0x21a>
30009b0c:	060a      	lsls	r2, r1, #24
30009b0e:	d502      	bpl.n	30009b16 <fault_diagnosis+0x82>
30009b10:	078b      	lsls	r3, r1, #30
30009b12:	f040 8194 	bne.w	30009e3e <fault_diagnosis+0x3aa>
30009b16:	f894 1050 	ldrb.w	r1, [r4, #80]	; 0x50
30009b1a:	b1b1      	cbz	r1, 30009b4a <fault_diagnosis+0xb6>
30009b1c:	07c8      	lsls	r0, r1, #31
30009b1e:	f100 80f7 	bmi.w	30009d10 <fault_diagnosis+0x27c>
30009b22:	078a      	lsls	r2, r1, #30
30009b24:	f100 80fd 	bmi.w	30009d22 <fault_diagnosis+0x28e>
30009b28:	074b      	lsls	r3, r1, #29
30009b2a:	f100 8103 	bmi.w	30009d34 <fault_diagnosis+0x2a0>
30009b2e:	0708      	lsls	r0, r1, #28
30009b30:	f100 8109 	bmi.w	30009d46 <fault_diagnosis+0x2b2>
30009b34:	06ca      	lsls	r2, r1, #27
30009b36:	f100 810f 	bmi.w	30009d58 <fault_diagnosis+0x2c4>
30009b3a:	068b      	lsls	r3, r1, #26
30009b3c:	f100 8115 	bmi.w	30009d6a <fault_diagnosis+0x2d6>
30009b40:	0608      	lsls	r0, r1, #24
30009b42:	d502      	bpl.n	30009b4a <fault_diagnosis+0xb6>
30009b44:	0789      	lsls	r1, r1, #30
30009b46:	f100 8180 	bmi.w	30009e4a <fault_diagnosis+0x3b6>
30009b4a:	f8b4 1058 	ldrh.w	r1, [r4, #88]	; 0x58
30009b4e:	b1b9      	cbz	r1, 30009b80 <fault_diagnosis+0xec>
30009b50:	f894 3058 	ldrb.w	r3, [r4, #88]	; 0x58
30009b54:	07da      	lsls	r2, r3, #31
30009b56:	f100 810f 	bmi.w	30009d78 <fault_diagnosis+0x2e4>
30009b5a:	0798      	lsls	r0, r3, #30
30009b5c:	f100 8115 	bmi.w	30009d8a <fault_diagnosis+0x2f6>
30009b60:	0759      	lsls	r1, r3, #29
30009b62:	f100 811d 	bmi.w	30009da0 <fault_diagnosis+0x30c>
30009b66:	071a      	lsls	r2, r3, #28
30009b68:	f100 8125 	bmi.w	30009db6 <fault_diagnosis+0x322>
30009b6c:	06db      	lsls	r3, r3, #27
30009b6e:	f100 812d 	bmi.w	30009dcc <fault_diagnosis+0x338>
30009b72:	f894 3059 	ldrb.w	r3, [r4, #89]	; 0x59
30009b76:	07d8      	lsls	r0, r3, #31
30009b78:	f100 8133 	bmi.w	30009de2 <fault_diagnosis+0x34e>
30009b7c:	0799      	lsls	r1, r3, #30
30009b7e:	d424      	bmi.n	30009bca <fault_diagnosis+0x136>
30009b80:	f994 305f 	ldrsb.w	r3, [r4, #95]	; 0x5f
30009b84:	2b00      	cmp	r3, #0
30009b86:	db00      	blt.n	30009b8a <fault_diagnosis+0xf6>
30009b88:	bd10      	pop	{r4, pc}
30009b8a:	6e21      	ldr	r1, [r4, #96]	; 0x60
30009b8c:	2900      	cmp	r1, #0
30009b8e:	d0fb      	beq.n	30009b88 <fault_diagnosis+0xf4>
30009b90:	f894 3060 	ldrb.w	r3, [r4, #96]	; 0x60
30009b94:	07da      	lsls	r2, r3, #31
30009b96:	f100 8143 	bmi.w	30009e20 <fault_diagnosis+0x38c>
30009b9a:	0798      	lsls	r0, r3, #30
30009b9c:	f100 8138 	bmi.w	30009e10 <fault_diagnosis+0x37c>
30009ba0:	0759      	lsls	r1, r3, #29
30009ba2:	f100 812d 	bmi.w	30009e00 <fault_diagnosis+0x36c>
30009ba6:	071a      	lsls	r2, r3, #28
30009ba8:	f100 8141 	bmi.w	30009e2e <fault_diagnosis+0x39a>
30009bac:	06db      	lsls	r3, r3, #27
30009bae:	d5eb      	bpl.n	30009b88 <fault_diagnosis+0xf4>
30009bb0:	6e21      	ldr	r1, [r4, #96]	; 0x60
30009bb2:	4a43      	ldr	r2, [pc, #268]	; (30009cc0 <fault_diagnosis+0x22c>)
30009bb4:	4843      	ldr	r0, [pc, #268]	; (30009cc4 <fault_diagnosis+0x230>)
30009bb6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
30009bba:	f001 b985 	b.w	3000aec8 <DiagPrintfNano>
30009bbe:	4a42      	ldr	r2, [pc, #264]	; (30009cc8 <fault_diagnosis+0x234>)
30009bc0:	6de1      	ldr	r1, [r4, #92]	; 0x5c
30009bc2:	4842      	ldr	r0, [pc, #264]	; (30009ccc <fault_diagnosis+0x238>)
30009bc4:	f001 f980 	bl	3000aec8 <DiagPrintfNano>
30009bc8:	e76f      	b.n	30009aaa <fault_diagnosis+0x16>
30009bca:	4a41      	ldr	r2, [pc, #260]	; (30009cd0 <fault_diagnosis+0x23c>)
30009bcc:	f8b4 1058 	ldrh.w	r1, [r4, #88]	; 0x58
30009bd0:	4840      	ldr	r0, [pc, #256]	; (30009cd4 <fault_diagnosis+0x240>)
30009bd2:	f001 f979 	bl	3000aec8 <DiagPrintfNano>
30009bd6:	f994 305f 	ldrsb.w	r3, [r4, #95]	; 0x5f
30009bda:	2b00      	cmp	r3, #0
30009bdc:	dad4      	bge.n	30009b88 <fault_diagnosis+0xf4>
30009bde:	e7d4      	b.n	30009b8a <fault_diagnosis+0xf6>
30009be0:	4a3d      	ldr	r2, [pc, #244]	; (30009cd8 <fault_diagnosis+0x244>)
30009be2:	483e      	ldr	r0, [pc, #248]	; (30009cdc <fault_diagnosis+0x248>)
30009be4:	f001 f970 	bl	3000aec8 <DiagPrintfNano>
30009be8:	f894 3068 	ldrb.w	r3, [r4, #104]	; 0x68
30009bec:	079a      	lsls	r2, r3, #30
30009bee:	f57f af66 	bpl.w	30009abe <fault_diagnosis+0x2a>
30009bf2:	4a3b      	ldr	r2, [pc, #236]	; (30009ce0 <fault_diagnosis+0x24c>)
30009bf4:	6ea1      	ldr	r1, [r4, #104]	; 0x68
30009bf6:	4839      	ldr	r0, [pc, #228]	; (30009cdc <fault_diagnosis+0x248>)
30009bf8:	f001 f966 	bl	3000aec8 <DiagPrintfNano>
30009bfc:	f894 3068 	ldrb.w	r3, [r4, #104]	; 0x68
30009c00:	0758      	lsls	r0, r3, #29
30009c02:	f57f af5f 	bpl.w	30009ac4 <fault_diagnosis+0x30>
30009c06:	6ea1      	ldr	r1, [r4, #104]	; 0x68
30009c08:	4a36      	ldr	r2, [pc, #216]	; (30009ce4 <fault_diagnosis+0x250>)
30009c0a:	4834      	ldr	r0, [pc, #208]	; (30009cdc <fault_diagnosis+0x248>)
30009c0c:	f001 f95c 	bl	3000aec8 <DiagPrintfNano>
30009c10:	f894 3068 	ldrb.w	r3, [r4, #104]	; 0x68
30009c14:	0719      	lsls	r1, r3, #28
30009c16:	f57f af58 	bpl.w	30009aca <fault_diagnosis+0x36>
30009c1a:	4a33      	ldr	r2, [pc, #204]	; (30009ce8 <fault_diagnosis+0x254>)
30009c1c:	6ea1      	ldr	r1, [r4, #104]	; 0x68
30009c1e:	482f      	ldr	r0, [pc, #188]	; (30009cdc <fault_diagnosis+0x248>)
30009c20:	f001 f952 	bl	3000aec8 <DiagPrintfNano>
30009c24:	f894 3068 	ldrb.w	r3, [r4, #104]	; 0x68
30009c28:	06da      	lsls	r2, r3, #27
30009c2a:	f57f af51 	bpl.w	30009ad0 <fault_diagnosis+0x3c>
30009c2e:	4a2f      	ldr	r2, [pc, #188]	; (30009cec <fault_diagnosis+0x258>)
30009c30:	6ea1      	ldr	r1, [r4, #104]	; 0x68
30009c32:	482a      	ldr	r0, [pc, #168]	; (30009cdc <fault_diagnosis+0x248>)
30009c34:	f001 f948 	bl	3000aec8 <DiagPrintfNano>
30009c38:	f894 3068 	ldrb.w	r3, [r4, #104]	; 0x68
30009c3c:	0698      	lsls	r0, r3, #26
30009c3e:	f57f af4a 	bpl.w	30009ad6 <fault_diagnosis+0x42>
30009c42:	6ea1      	ldr	r1, [r4, #104]	; 0x68
30009c44:	4a2a      	ldr	r2, [pc, #168]	; (30009cf0 <fault_diagnosis+0x25c>)
30009c46:	4825      	ldr	r0, [pc, #148]	; (30009cdc <fault_diagnosis+0x248>)
30009c48:	f001 f93e 	bl	3000aec8 <DiagPrintfNano>
30009c4c:	f894 3068 	ldrb.w	r3, [r4, #104]	; 0x68
30009c50:	0619      	lsls	r1, r3, #24
30009c52:	f57f af43 	bpl.w	30009adc <fault_diagnosis+0x48>
30009c56:	4a27      	ldr	r2, [pc, #156]	; (30009cf4 <fault_diagnosis+0x260>)
30009c58:	6ea1      	ldr	r1, [r4, #104]	; 0x68
30009c5a:	4820      	ldr	r0, [pc, #128]	; (30009cdc <fault_diagnosis+0x248>)
30009c5c:	f001 f934 	bl	3000aec8 <DiagPrintfNano>
30009c60:	f894 3068 	ldrb.w	r3, [r4, #104]	; 0x68
30009c64:	e73a      	b.n	30009adc <fault_diagnosis+0x48>
30009c66:	4a24      	ldr	r2, [pc, #144]	; (30009cf8 <fault_diagnosis+0x264>)
30009c68:	4824      	ldr	r0, [pc, #144]	; (30009cfc <fault_diagnosis+0x268>)
30009c6a:	f001 f92d 	bl	3000aec8 <DiagPrintfNano>
30009c6e:	f894 1048 	ldrb.w	r1, [r4, #72]	; 0x48
30009c72:	0788      	lsls	r0, r1, #30
30009c74:	f57f af41 	bpl.w	30009afa <fault_diagnosis+0x66>
30009c78:	4a21      	ldr	r2, [pc, #132]	; (30009d00 <fault_diagnosis+0x26c>)
30009c7a:	4820      	ldr	r0, [pc, #128]	; (30009cfc <fault_diagnosis+0x268>)
30009c7c:	f001 f924 	bl	3000aec8 <DiagPrintfNano>
30009c80:	f894 1048 	ldrb.w	r1, [r4, #72]	; 0x48
30009c84:	070a      	lsls	r2, r1, #28
30009c86:	f57f af3b 	bpl.w	30009b00 <fault_diagnosis+0x6c>
30009c8a:	4a1e      	ldr	r2, [pc, #120]	; (30009d04 <fault_diagnosis+0x270>)
30009c8c:	481b      	ldr	r0, [pc, #108]	; (30009cfc <fault_diagnosis+0x268>)
30009c8e:	f001 f91b 	bl	3000aec8 <DiagPrintfNano>
30009c92:	f894 1048 	ldrb.w	r1, [r4, #72]	; 0x48
30009c96:	06cb      	lsls	r3, r1, #27
30009c98:	f57f af35 	bpl.w	30009b06 <fault_diagnosis+0x72>
30009c9c:	4a1a      	ldr	r2, [pc, #104]	; (30009d08 <fault_diagnosis+0x274>)
30009c9e:	4817      	ldr	r0, [pc, #92]	; (30009cfc <fault_diagnosis+0x268>)
30009ca0:	f001 f912 	bl	3000aec8 <DiagPrintfNano>
30009ca4:	f894 1048 	ldrb.w	r1, [r4, #72]	; 0x48
30009ca8:	0688      	lsls	r0, r1, #26
30009caa:	f57f af2f 	bpl.w	30009b0c <fault_diagnosis+0x78>
30009cae:	4a17      	ldr	r2, [pc, #92]	; (30009d0c <fault_diagnosis+0x278>)
30009cb0:	4812      	ldr	r0, [pc, #72]	; (30009cfc <fault_diagnosis+0x268>)
30009cb2:	f001 f909 	bl	3000aec8 <DiagPrintfNano>
30009cb6:	f894 1048 	ldrb.w	r1, [r4, #72]	; 0x48
30009cba:	e727      	b.n	30009b0c <fault_diagnosis+0x78>
30009cbc:	3000ccf8 	.word	0x3000ccf8
30009cc0:	3000d58c 	.word	0x3000d58c
30009cc4:	3000d4e4 	.word	0x3000d4e4
30009cc8:	3000cd14 	.word	0x3000cd14
30009ccc:	3000cd40 	.word	0x3000cd40
30009cd0:	3000d448 	.word	0x3000d448
30009cd4:	3000d28c 	.word	0x3000d28c
30009cd8:	3000cd58 	.word	0x3000cd58
30009cdc:	3000cd88 	.word	0x3000cd88
30009ce0:	3000cda0 	.word	0x3000cda0
30009ce4:	3000cdd8 	.word	0x3000cdd8
30009ce8:	3000ce10 	.word	0x3000ce10
30009cec:	3000ce48 	.word	0x3000ce48
30009cf0:	3000ce78 	.word	0x3000ce78
30009cf4:	3000ceb4 	.word	0x3000ceb4
30009cf8:	3000cf24 	.word	0x3000cf24
30009cfc:	3000cf68 	.word	0x3000cf68
30009d00:	3000cf80 	.word	0x3000cf80
30009d04:	3000cfbc 	.word	0x3000cfbc
30009d08:	3000cff4 	.word	0x3000cff4
30009d0c:	3000d028 	.word	0x3000d028
30009d10:	4a51      	ldr	r2, [pc, #324]	; (30009e58 <fault_diagnosis+0x3c4>)
30009d12:	4852      	ldr	r0, [pc, #328]	; (30009e5c <fault_diagnosis+0x3c8>)
30009d14:	f001 f8d8 	bl	3000aec8 <DiagPrintfNano>
30009d18:	f894 1050 	ldrb.w	r1, [r4, #80]	; 0x50
30009d1c:	078a      	lsls	r2, r1, #30
30009d1e:	f57f af03 	bpl.w	30009b28 <fault_diagnosis+0x94>
30009d22:	4a4f      	ldr	r2, [pc, #316]	; (30009e60 <fault_diagnosis+0x3cc>)
30009d24:	484d      	ldr	r0, [pc, #308]	; (30009e5c <fault_diagnosis+0x3c8>)
30009d26:	f001 f8cf 	bl	3000aec8 <DiagPrintfNano>
30009d2a:	f894 1050 	ldrb.w	r1, [r4, #80]	; 0x50
30009d2e:	074b      	lsls	r3, r1, #29
30009d30:	f57f aefd 	bpl.w	30009b2e <fault_diagnosis+0x9a>
30009d34:	4a4b      	ldr	r2, [pc, #300]	; (30009e64 <fault_diagnosis+0x3d0>)
30009d36:	4849      	ldr	r0, [pc, #292]	; (30009e5c <fault_diagnosis+0x3c8>)
30009d38:	f001 f8c6 	bl	3000aec8 <DiagPrintfNano>
30009d3c:	f894 1050 	ldrb.w	r1, [r4, #80]	; 0x50
30009d40:	0708      	lsls	r0, r1, #28
30009d42:	f57f aef7 	bpl.w	30009b34 <fault_diagnosis+0xa0>
30009d46:	4a48      	ldr	r2, [pc, #288]	; (30009e68 <fault_diagnosis+0x3d4>)
30009d48:	4844      	ldr	r0, [pc, #272]	; (30009e5c <fault_diagnosis+0x3c8>)
30009d4a:	f001 f8bd 	bl	3000aec8 <DiagPrintfNano>
30009d4e:	f894 1050 	ldrb.w	r1, [r4, #80]	; 0x50
30009d52:	06ca      	lsls	r2, r1, #27
30009d54:	f57f aef1 	bpl.w	30009b3a <fault_diagnosis+0xa6>
30009d58:	4a44      	ldr	r2, [pc, #272]	; (30009e6c <fault_diagnosis+0x3d8>)
30009d5a:	4840      	ldr	r0, [pc, #256]	; (30009e5c <fault_diagnosis+0x3c8>)
30009d5c:	f001 f8b4 	bl	3000aec8 <DiagPrintfNano>
30009d60:	f894 1050 	ldrb.w	r1, [r4, #80]	; 0x50
30009d64:	068b      	lsls	r3, r1, #26
30009d66:	f57f aeeb 	bpl.w	30009b40 <fault_diagnosis+0xac>
30009d6a:	4a41      	ldr	r2, [pc, #260]	; (30009e70 <fault_diagnosis+0x3dc>)
30009d6c:	483b      	ldr	r0, [pc, #236]	; (30009e5c <fault_diagnosis+0x3c8>)
30009d6e:	f001 f8ab 	bl	3000aec8 <DiagPrintfNano>
30009d72:	f894 1050 	ldrb.w	r1, [r4, #80]	; 0x50
30009d76:	e6e3      	b.n	30009b40 <fault_diagnosis+0xac>
30009d78:	4a3e      	ldr	r2, [pc, #248]	; (30009e74 <fault_diagnosis+0x3e0>)
30009d7a:	483f      	ldr	r0, [pc, #252]	; (30009e78 <fault_diagnosis+0x3e4>)
30009d7c:	f001 f8a4 	bl	3000aec8 <DiagPrintfNano>
30009d80:	f894 3058 	ldrb.w	r3, [r4, #88]	; 0x58
30009d84:	0798      	lsls	r0, r3, #30
30009d86:	f57f aeeb 	bpl.w	30009b60 <fault_diagnosis+0xcc>
30009d8a:	f8b4 1058 	ldrh.w	r1, [r4, #88]	; 0x58
30009d8e:	4a3b      	ldr	r2, [pc, #236]	; (30009e7c <fault_diagnosis+0x3e8>)
30009d90:	4839      	ldr	r0, [pc, #228]	; (30009e78 <fault_diagnosis+0x3e4>)
30009d92:	f001 f899 	bl	3000aec8 <DiagPrintfNano>
30009d96:	f894 3058 	ldrb.w	r3, [r4, #88]	; 0x58
30009d9a:	0759      	lsls	r1, r3, #29
30009d9c:	f57f aee3 	bpl.w	30009b66 <fault_diagnosis+0xd2>
30009da0:	4a37      	ldr	r2, [pc, #220]	; (30009e80 <fault_diagnosis+0x3ec>)
30009da2:	f8b4 1058 	ldrh.w	r1, [r4, #88]	; 0x58
30009da6:	4834      	ldr	r0, [pc, #208]	; (30009e78 <fault_diagnosis+0x3e4>)
30009da8:	f001 f88e 	bl	3000aec8 <DiagPrintfNano>
30009dac:	f894 3058 	ldrb.w	r3, [r4, #88]	; 0x58
30009db0:	071a      	lsls	r2, r3, #28
30009db2:	f57f aedb 	bpl.w	30009b6c <fault_diagnosis+0xd8>
30009db6:	4a33      	ldr	r2, [pc, #204]	; (30009e84 <fault_diagnosis+0x3f0>)
30009db8:	f8b4 1058 	ldrh.w	r1, [r4, #88]	; 0x58
30009dbc:	482e      	ldr	r0, [pc, #184]	; (30009e78 <fault_diagnosis+0x3e4>)
30009dbe:	f001 f883 	bl	3000aec8 <DiagPrintfNano>
30009dc2:	f894 3058 	ldrb.w	r3, [r4, #88]	; 0x58
30009dc6:	06db      	lsls	r3, r3, #27
30009dc8:	f57f aed3 	bpl.w	30009b72 <fault_diagnosis+0xde>
30009dcc:	4a2e      	ldr	r2, [pc, #184]	; (30009e88 <fault_diagnosis+0x3f4>)
30009dce:	f8b4 1058 	ldrh.w	r1, [r4, #88]	; 0x58
30009dd2:	4829      	ldr	r0, [pc, #164]	; (30009e78 <fault_diagnosis+0x3e4>)
30009dd4:	f001 f878 	bl	3000aec8 <DiagPrintfNano>
30009dd8:	f894 3059 	ldrb.w	r3, [r4, #89]	; 0x59
30009ddc:	07d8      	lsls	r0, r3, #31
30009dde:	f57f aecd 	bpl.w	30009b7c <fault_diagnosis+0xe8>
30009de2:	4a2a      	ldr	r2, [pc, #168]	; (30009e8c <fault_diagnosis+0x3f8>)
30009de4:	f8b4 1058 	ldrh.w	r1, [r4, #88]	; 0x58
30009de8:	4823      	ldr	r0, [pc, #140]	; (30009e78 <fault_diagnosis+0x3e4>)
30009dea:	f001 f86d 	bl	3000aec8 <DiagPrintfNano>
30009dee:	f894 3059 	ldrb.w	r3, [r4, #89]	; 0x59
30009df2:	e6c3      	b.n	30009b7c <fault_diagnosis+0xe8>
30009df4:	4a26      	ldr	r2, [pc, #152]	; (30009e90 <fault_diagnosis+0x3fc>)
30009df6:	6ee1      	ldr	r1, [r4, #108]	; 0x6c
30009df8:	4826      	ldr	r0, [pc, #152]	; (30009e94 <fault_diagnosis+0x400>)
30009dfa:	f001 f865 	bl	3000aec8 <DiagPrintfNano>
30009dfe:	e673      	b.n	30009ae8 <fault_diagnosis+0x54>
30009e00:	4a25      	ldr	r2, [pc, #148]	; (30009e98 <fault_diagnosis+0x404>)
30009e02:	6e21      	ldr	r1, [r4, #96]	; 0x60
30009e04:	4825      	ldr	r0, [pc, #148]	; (30009e9c <fault_diagnosis+0x408>)
30009e06:	f001 f85f 	bl	3000aec8 <DiagPrintfNano>
30009e0a:	f894 3060 	ldrb.w	r3, [r4, #96]	; 0x60
30009e0e:	e6ca      	b.n	30009ba6 <fault_diagnosis+0x112>
30009e10:	4a23      	ldr	r2, [pc, #140]	; (30009ea0 <fault_diagnosis+0x40c>)
30009e12:	6e21      	ldr	r1, [r4, #96]	; 0x60
30009e14:	4821      	ldr	r0, [pc, #132]	; (30009e9c <fault_diagnosis+0x408>)
30009e16:	f001 f857 	bl	3000aec8 <DiagPrintfNano>
30009e1a:	f894 3060 	ldrb.w	r3, [r4, #96]	; 0x60
30009e1e:	e6bf      	b.n	30009ba0 <fault_diagnosis+0x10c>
30009e20:	4a20      	ldr	r2, [pc, #128]	; (30009ea4 <fault_diagnosis+0x410>)
30009e22:	481e      	ldr	r0, [pc, #120]	; (30009e9c <fault_diagnosis+0x408>)
30009e24:	f001 f850 	bl	3000aec8 <DiagPrintfNano>
30009e28:	f894 3060 	ldrb.w	r3, [r4, #96]	; 0x60
30009e2c:	e6b5      	b.n	30009b9a <fault_diagnosis+0x106>
30009e2e:	4a1e      	ldr	r2, [pc, #120]	; (30009ea8 <fault_diagnosis+0x414>)
30009e30:	6e21      	ldr	r1, [r4, #96]	; 0x60
30009e32:	481a      	ldr	r0, [pc, #104]	; (30009e9c <fault_diagnosis+0x408>)
30009e34:	f001 f848 	bl	3000aec8 <DiagPrintfNano>
30009e38:	f894 3060 	ldrb.w	r3, [r4, #96]	; 0x60
30009e3c:	e6b6      	b.n	30009bac <fault_diagnosis+0x118>
30009e3e:	4a1b      	ldr	r2, [pc, #108]	; (30009eac <fault_diagnosis+0x418>)
30009e40:	6ce1      	ldr	r1, [r4, #76]	; 0x4c
30009e42:	481b      	ldr	r0, [pc, #108]	; (30009eb0 <fault_diagnosis+0x41c>)
30009e44:	f001 f840 	bl	3000aec8 <DiagPrintfNano>
30009e48:	e665      	b.n	30009b16 <fault_diagnosis+0x82>
30009e4a:	4a1a      	ldr	r2, [pc, #104]	; (30009eb4 <fault_diagnosis+0x420>)
30009e4c:	6d61      	ldr	r1, [r4, #84]	; 0x54
30009e4e:	481a      	ldr	r0, [pc, #104]	; (30009eb8 <fault_diagnosis+0x424>)
30009e50:	f001 f83a 	bl	3000aec8 <DiagPrintfNano>
30009e54:	e679      	b.n	30009b4a <fault_diagnosis+0xb6>
30009e56:	bf00      	nop
30009e58:	3000d0bc 	.word	0x3000d0bc
30009e5c:	3000d0f0 	.word	0x3000d0f0
30009e60:	3000d108 	.word	0x3000d108
30009e64:	3000d140 	.word	0x3000d140
30009e68:	3000d178 	.word	0x3000d178
30009e6c:	3000d1a0 	.word	0x3000d1a0
30009e70:	3000d1c8 	.word	0x3000d1c8
30009e74:	3000d244 	.word	0x3000d244
30009e78:	3000d28c 	.word	0x3000d28c
30009e7c:	3000d2a4 	.word	0x3000d2a4
30009e80:	3000d2f0 	.word	0x3000d2f0
30009e84:	3000d350 	.word	0x3000d350
30009e88:	3000d398 	.word	0x3000d398
30009e8c:	3000d3f4 	.word	0x3000d3f4
30009e90:	3000cee4 	.word	0x3000cee4
30009e94:	3000cf0c 	.word	0x3000cf0c
30009e98:	3000d530 	.word	0x3000d530
30009e9c:	3000d4e4 	.word	0x3000d4e4
30009ea0:	3000d4fc 	.word	0x3000d4fc
30009ea4:	3000d4b4 	.word	0x3000d4b4
30009ea8:	3000d55c 	.word	0x3000d55c
30009eac:	3000d074 	.word	0x3000d074
30009eb0:	3000d0a4 	.word	0x3000d0a4
30009eb4:	3000d208 	.word	0x3000d208
30009eb8:	3000d22c 	.word	0x3000d22c

30009ebc <ChipInfo_Get>:
30009ebc:	b570      	push	{r4, r5, r6, lr}
30009ebe:	4c12      	ldr	r4, [pc, #72]	; (30009f08 <ChipInfo_Get+0x4c>)
30009ec0:	7820      	ldrb	r0, [r4, #0]
30009ec2:	28ff      	cmp	r0, #255	; 0xff
30009ec4:	d107      	bne.n	30009ed6 <ChipInfo_Get+0x1a>
30009ec6:	4d11      	ldr	r5, [pc, #68]	; (30009f0c <ChipInfo_Get+0x50>)
30009ec8:	f895 3113 	ldrb.w	r3, [r5, #275]	; 0x113
30009ecc:	b123      	cbz	r3, 30009ed8 <ChipInfo_Get+0x1c>
30009ece:	f895 0113 	ldrb.w	r0, [r5, #275]	; 0x113
30009ed2:	b2c0      	uxtb	r0, r0
30009ed4:	7020      	strb	r0, [r4, #0]
30009ed6:	bd70      	pop	{r4, r5, r6, pc}
30009ed8:	4621      	mov	r1, r4
30009eda:	f240 70ff 	movw	r0, #2047	; 0x7ff
30009ede:	f7fe fdb5 	bl	30008a4c <OTP_Read8>
30009ee2:	7820      	ldrb	r0, [r4, #0]
30009ee4:	28ff      	cmp	r0, #255	; 0xff
30009ee6:	d002      	beq.n	30009eee <ChipInfo_Get+0x32>
30009ee8:	f885 0113 	strb.w	r0, [r5, #275]	; 0x113
30009eec:	bd70      	pop	{r4, r5, r6, pc}
30009eee:	4e08      	ldr	r6, [pc, #32]	; (30009f10 <ChipInfo_Get+0x54>)
30009ef0:	4d08      	ldr	r5, [pc, #32]	; (30009f14 <ChipInfo_Get+0x58>)
30009ef2:	4c09      	ldr	r4, [pc, #36]	; (30009f18 <ChipInfo_Get+0x5c>)
30009ef4:	462b      	mov	r3, r5
30009ef6:	2257      	movs	r2, #87	; 0x57
30009ef8:	4621      	mov	r1, r4
30009efa:	2003      	movs	r0, #3
30009efc:	f7ff fa0e 	bl	3000931c <rtk_log_write>
30009f00:	f242 7010 	movw	r0, #10000	; 0x2710
30009f04:	47b0      	blx	r6
30009f06:	e7f5      	b.n	30009ef4 <ChipInfo_Get+0x38>
30009f08:	3000e158 	.word	0x3000e158
30009f0c:	23020000 	.word	0x23020000
30009f10:	00009be5 	.word	0x00009be5
30009f14:	3000d5bc 	.word	0x3000d5bc
30009f18:	3000d5e0 	.word	0x3000d5e0

30009f1c <ChipInfo_BDNum>:
30009f1c:	4b16      	ldr	r3, [pc, #88]	; (30009f78 <ChipInfo_BDNum+0x5c>)
30009f1e:	b510      	push	{r4, lr}
30009f20:	4798      	blx	r3
30009f22:	28ff      	cmp	r0, #255	; 0xff
30009f24:	d01e      	beq.n	30009f64 <ChipInfo_BDNum+0x48>
30009f26:	f3c0 1147 	ubfx	r1, r0, #5, #8
30009f2a:	f000 0c1f 	and.w	ip, r0, #31
30009f2e:	4b13      	ldr	r3, [pc, #76]	; (30009f7c <ChipInfo_BDNum+0x60>)
30009f30:	2200      	movs	r2, #0
30009f32:	f240 34fe 	movw	r4, #1022	; 0x3fe
30009f36:	f64f 70ff 	movw	r0, #65535	; 0xffff
30009f3a:	e004      	b.n	30009f46 <ChipInfo_BDNum+0x2a>
30009f3c:	895c      	ldrh	r4, [r3, #10]
30009f3e:	4284      	cmp	r4, r0
30009f40:	d008      	beq.n	30009f54 <ChipInfo_BDNum+0x38>
30009f42:	f813 2f08 	ldrb.w	r2, [r3, #8]!
30009f46:	4291      	cmp	r1, r2
30009f48:	d1f8      	bne.n	30009f3c <ChipInfo_BDNum+0x20>
30009f4a:	785a      	ldrb	r2, [r3, #1]
30009f4c:	4562      	cmp	r2, ip
30009f4e:	d1f5      	bne.n	30009f3c <ChipInfo_BDNum+0x20>
30009f50:	4620      	mov	r0, r4
30009f52:	bd10      	pop	{r4, pc}
30009f54:	4b0a      	ldr	r3, [pc, #40]	; (30009f80 <ChipInfo_BDNum+0x64>)
30009f56:	2257      	movs	r2, #87	; 0x57
30009f58:	490a      	ldr	r1, [pc, #40]	; (30009f84 <ChipInfo_BDNum+0x68>)
30009f5a:	2003      	movs	r0, #3
30009f5c:	f7ff f9de 	bl	3000931c <rtk_log_write>
30009f60:	4620      	mov	r0, r4
30009f62:	bd10      	pop	{r4, pc}
30009f64:	4b08      	ldr	r3, [pc, #32]	; (30009f88 <ChipInfo_BDNum+0x6c>)
30009f66:	2257      	movs	r2, #87	; 0x57
30009f68:	4906      	ldr	r1, [pc, #24]	; (30009f84 <ChipInfo_BDNum+0x68>)
30009f6a:	2003      	movs	r0, #3
30009f6c:	f64f 74ff 	movw	r4, #65535	; 0xffff
30009f70:	f7ff f9d4 	bl	3000931c <rtk_log_write>
30009f74:	e7ec      	b.n	30009f50 <ChipInfo_BDNum+0x34>
30009f76:	bf00      	nop
30009f78:	30009ebd 	.word	0x30009ebd
30009f7c:	3000d6d0 	.word	0x3000d6d0
30009f80:	3000d618 	.word	0x3000d618
30009f84:	3000d5e0 	.word	0x3000d5e0
30009f88:	3000d5ec 	.word	0x3000d5ec

30009f8c <ChipInfo_MCMInfo>:
30009f8c:	b530      	push	{r4, r5, lr}
30009f8e:	4c18      	ldr	r4, [pc, #96]	; (30009ff0 <ChipInfo_MCMInfo+0x64>)
30009f90:	b085      	sub	sp, #20
30009f92:	4b18      	ldr	r3, [pc, #96]	; (30009ff4 <ChipInfo_MCMInfo+0x68>)
30009f94:	4798      	blx	r3
30009f96:	7823      	ldrb	r3, [r4, #0]
30009f98:	f013 033f 	ands.w	r3, r3, #63	; 0x3f
30009f9c:	d115      	bne.n	30009fca <ChipInfo_MCMInfo+0x3e>
30009f9e:	f240 32fe 	movw	r2, #1022	; 0x3fe
30009fa2:	4d15      	ldr	r5, [pc, #84]	; (30009ff8 <ChipInfo_MCMInfo+0x6c>)
30009fa4:	f64f 7cff 	movw	ip, #65535	; 0xffff
30009fa8:	e005      	b.n	30009fb6 <ChipInfo_MCMInfo+0x2a>
30009faa:	b2cb      	uxtb	r3, r1
30009fac:	eb05 02c3 	add.w	r2, r5, r3, lsl #3
30009fb0:	8852      	ldrh	r2, [r2, #2]
30009fb2:	4562      	cmp	r2, ip
30009fb4:	d013      	beq.n	30009fde <ChipInfo_MCMInfo+0x52>
30009fb6:	4290      	cmp	r0, r2
30009fb8:	f103 0101 	add.w	r1, r3, #1
30009fbc:	d1f5      	bne.n	30009faa <ChipInfo_MCMInfo+0x1e>
30009fbe:	eb05 03c3 	add.w	r3, r5, r3, lsl #3
30009fc2:	685b      	ldr	r3, [r3, #4]
30009fc4:	6023      	str	r3, [r4, #0]
30009fc6:	069b      	lsls	r3, r3, #26
30009fc8:	d009      	beq.n	30009fde <ChipInfo_MCMInfo+0x52>
30009fca:	6823      	ldr	r3, [r4, #0]
30009fcc:	2000      	movs	r0, #0
30009fce:	b29a      	uxth	r2, r3
30009fd0:	0c1b      	lsrs	r3, r3, #16
30009fd2:	f362 000f 	bfi	r0, r2, #0, #16
30009fd6:	f363 401f 	bfi	r0, r3, #16, #16
30009fda:	b005      	add	sp, #20
30009fdc:	bd30      	pop	{r4, r5, pc}
30009fde:	9000      	str	r0, [sp, #0]
30009fe0:	2257      	movs	r2, #87	; 0x57
30009fe2:	4b06      	ldr	r3, [pc, #24]	; (30009ffc <ChipInfo_MCMInfo+0x70>)
30009fe4:	2003      	movs	r0, #3
30009fe6:	4906      	ldr	r1, [pc, #24]	; (3000a000 <ChipInfo_MCMInfo+0x74>)
30009fe8:	f7ff f998 	bl	3000931c <rtk_log_write>
30009fec:	e7ed      	b.n	30009fca <ChipInfo_MCMInfo+0x3e>
30009fee:	bf00      	nop
30009ff0:	3000ea68 	.word	0x3000ea68
30009ff4:	30009f1d 	.word	0x30009f1d
30009ff8:	3000d6d0 	.word	0x3000d6d0
30009ffc:	3000d62c 	.word	0x3000d62c
3000a000:	3000d5e0 	.word	0x3000d5e0

3000a004 <ChipInfo_DDRType>:
3000a004:	b500      	push	{lr}
3000a006:	b083      	sub	sp, #12
3000a008:	4b06      	ldr	r3, [pc, #24]	; (3000a024 <ChipInfo_DDRType+0x20>)
3000a00a:	4798      	blx	r3
3000a00c:	9001      	str	r0, [sp, #4]
3000a00e:	f010 0002 	ands.w	r0, r0, #2
3000a012:	d003      	beq.n	3000a01c <ChipInfo_DDRType+0x18>
3000a014:	f89d 0006 	ldrb.w	r0, [sp, #6]
3000a018:	f000 0007 	and.w	r0, r0, #7
3000a01c:	b003      	add	sp, #12
3000a01e:	f85d fb04 	ldr.w	pc, [sp], #4
3000a022:	bf00      	nop
3000a024:	30009f8d 	.word	0x30009f8d

3000a028 <ChipInfo_PsramBoundary>:
3000a028:	b530      	push	{r4, r5, lr}
3000a02a:	4b1d      	ldr	r3, [pc, #116]	; (3000a0a0 <ChipInfo_PsramBoundary+0x78>)
3000a02c:	b085      	sub	sp, #20
3000a02e:	4798      	blx	r3
3000a030:	0742      	lsls	r2, r0, #29
3000a032:	4d1c      	ldr	r5, [pc, #112]	; (3000a0a4 <ChipInfo_PsramBoundary+0x7c>)
3000a034:	f3c0 44c4 	ubfx	r4, r0, #19, #5
3000a038:	9003      	str	r0, [sp, #12]
3000a03a:	d519      	bpl.n	3000a070 <ChipInfo_PsramBoundary+0x48>
3000a03c:	1f23      	subs	r3, r4, #4
3000a03e:	2b04      	cmp	r3, #4
3000a040:	d819      	bhi.n	3000a076 <ChipInfo_PsramBoundary+0x4e>
3000a042:	b194      	cbz	r4, 3000a06a <ChipInfo_PsramBoundary+0x42>
3000a044:	1e63      	subs	r3, r4, #1
3000a046:	f44f 0480 	mov.w	r4, #4194304	; 0x400000
3000a04a:	409c      	lsls	r4, r3
3000a04c:	bf48      	it	mi
3000a04e:	3407      	addmi	r4, #7
3000a050:	10e4      	asrs	r4, r4, #3
3000a052:	f104 44c0 	add.w	r4, r4, #1610612736	; 0x60000000
3000a056:	42ac      	cmp	r4, r5
3000a058:	d004      	beq.n	3000a064 <ChipInfo_PsramBoundary+0x3c>
3000a05a:	4b13      	ldr	r3, [pc, #76]	; (3000a0a8 <ChipInfo_PsramBoundary+0x80>)
3000a05c:	f8d3 3268 	ldr.w	r3, [r3, #616]	; 0x268
3000a060:	009b      	lsls	r3, r3, #2
3000a062:	d512      	bpl.n	3000a08a <ChipInfo_PsramBoundary+0x62>
3000a064:	4620      	mov	r0, r4
3000a066:	b005      	add	sp, #20
3000a068:	bd30      	pop	{r4, r5, pc}
3000a06a:	f04f 44c0 	mov.w	r4, #1610612736	; 0x60000000
3000a06e:	e7f2      	b.n	3000a056 <ChipInfo_PsramBoundary+0x2e>
3000a070:	1fe3      	subs	r3, r4, #7
3000a072:	2b03      	cmp	r3, #3
3000a074:	d9e5      	bls.n	3000a042 <ChipInfo_PsramBoundary+0x1a>
3000a076:	4c0b      	ldr	r4, [pc, #44]	; (3000a0a4 <ChipInfo_PsramBoundary+0x7c>)
3000a078:	2245      	movs	r2, #69	; 0x45
3000a07a:	4b0c      	ldr	r3, [pc, #48]	; (3000a0ac <ChipInfo_PsramBoundary+0x84>)
3000a07c:	2002      	movs	r0, #2
3000a07e:	490c      	ldr	r1, [pc, #48]	; (3000a0b0 <ChipInfo_PsramBoundary+0x88>)
3000a080:	f7ff f94c 	bl	3000931c <rtk_log_write>
3000a084:	4620      	mov	r0, r4
3000a086:	b005      	add	sp, #20
3000a088:	bd30      	pop	{r4, r5, pc}
3000a08a:	4b0a      	ldr	r3, [pc, #40]	; (3000a0b4 <ChipInfo_PsramBoundary+0x8c>)
3000a08c:	2257      	movs	r2, #87	; 0x57
3000a08e:	4908      	ldr	r1, [pc, #32]	; (3000a0b0 <ChipInfo_PsramBoundary+0x88>)
3000a090:	2003      	movs	r0, #3
3000a092:	e9cd 5400 	strd	r5, r4, [sp]
3000a096:	f7ff f941 	bl	3000931c <rtk_log_write>
3000a09a:	4620      	mov	r0, r4
3000a09c:	b005      	add	sp, #20
3000a09e:	bd30      	pop	{r4, r5, pc}
3000a0a0:	30009f8d 	.word	0x30009f8d
3000a0a4:	60800000 	.word	0x60800000
3000a0a8:	42008000 	.word	0x42008000
3000a0ac:	3000d654 	.word	0x3000d654
3000a0b0:	3000d5e0 	.word	0x3000d5e0
3000a0b4:	3000d674 	.word	0x3000d674

3000a0b8 <print_unsigned_num>:
3000a0b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
3000a0bc:	b089      	sub	sp, #36	; 0x24
3000a0be:	4606      	mov	r6, r0
3000a0c0:	460d      	mov	r5, r1
3000a0c2:	4690      	mov	r8, r2
3000a0c4:	f10d 0a0c 	add.w	sl, sp, #12
3000a0c8:	469b      	mov	fp, r3
3000a0ca:	2400      	movs	r4, #0
3000a0cc:	9f13      	ldr	r7, [sp, #76]	; 0x4c
3000a0ce:	46d1      	mov	r9, sl
3000a0d0:	e00f      	b.n	3000a0f2 <print_unsigned_num+0x3a>
3000a0d2:	f10c 0357 	add.w	r3, ip, #87	; 0x57
3000a0d6:	2f01      	cmp	r7, #1
3000a0d8:	b2db      	uxtb	r3, r3
3000a0da:	d018      	beq.n	3000a10e <print_unsigned_num+0x56>
3000a0dc:	4546      	cmp	r6, r8
3000a0de:	4606      	mov	r6, r0
3000a0e0:	f104 0201 	add.w	r2, r4, #1
3000a0e4:	f809 3b01 	strb.w	r3, [r9], #1
3000a0e8:	f175 0000 	sbcs.w	r0, r5, #0
3000a0ec:	460d      	mov	r5, r1
3000a0ee:	d312      	bcc.n	3000a116 <print_unsigned_num+0x5e>
3000a0f0:	4614      	mov	r4, r2
3000a0f2:	4630      	mov	r0, r6
3000a0f4:	4629      	mov	r1, r5
3000a0f6:	4642      	mov	r2, r8
3000a0f8:	2300      	movs	r3, #0
3000a0fa:	f001 f9c3 	bl	3000b484 <__aeabi_uldivmod>
3000a0fe:	2a09      	cmp	r2, #9
3000a100:	fa5f fc82 	uxtb.w	ip, r2
3000a104:	f10c 0330 	add.w	r3, ip, #48	; 0x30
3000a108:	d8e3      	bhi.n	3000a0d2 <print_unsigned_num+0x1a>
3000a10a:	b2db      	uxtb	r3, r3
3000a10c:	e7e6      	b.n	3000a0dc <print_unsigned_num+0x24>
3000a10e:	f10c 0337 	add.w	r3, ip, #55	; 0x37
3000a112:	b2db      	uxtb	r3, r3
3000a114:	e7e2      	b.n	3000a0dc <print_unsigned_num+0x24>
3000a116:	4617      	mov	r7, r2
3000a118:	9a14      	ldr	r2, [sp, #80]	; 0x50
3000a11a:	b192      	cbz	r2, 3000a142 <print_unsigned_num+0x8a>
3000a11c:	9a12      	ldr	r2, [sp, #72]	; 0x48
3000a11e:	f1bb 0f30 	cmp.w	fp, #48	; 0x30
3000a122:	f102 32ff 	add.w	r2, r2, #4294967295	; 0xffffffff
3000a126:	9212      	str	r2, [sp, #72]	; 0x48
3000a128:	d136      	bne.n	3000a198 <print_unsigned_num+0xe0>
3000a12a:	202d      	movs	r0, #45	; 0x2d
3000a12c:	4d1f      	ldr	r5, [pc, #124]	; (3000a1ac <print_unsigned_num+0xf4>)
3000a12e:	9301      	str	r3, [sp, #4]
3000a130:	47a8      	blx	r5
3000a132:	9b12      	ldr	r3, [sp, #72]	; 0x48
3000a134:	2b00      	cmp	r3, #0
3000a136:	9b01      	ldr	r3, [sp, #4]
3000a138:	dd1f      	ble.n	3000a17a <print_unsigned_num+0xc2>
3000a13a:	9a12      	ldr	r2, [sp, #72]	; 0x48
3000a13c:	4297      	cmp	r7, r2
3000a13e:	db08      	blt.n	3000a152 <print_unsigned_num+0x9a>
3000a140:	e018      	b.n	3000a174 <print_unsigned_num+0xbc>
3000a142:	9a12      	ldr	r2, [sp, #72]	; 0x48
3000a144:	2a00      	cmp	r2, #0
3000a146:	dd25      	ble.n	3000a194 <print_unsigned_num+0xdc>
3000a148:	9912      	ldr	r1, [sp, #72]	; 0x48
3000a14a:	9a14      	ldr	r2, [sp, #80]	; 0x50
3000a14c:	42b9      	cmp	r1, r7
3000a14e:	4d17      	ldr	r5, [pc, #92]	; (3000a1ac <print_unsigned_num+0xf4>)
3000a150:	dd0d      	ble.n	3000a16e <print_unsigned_num+0xb6>
3000a152:	9e12      	ldr	r6, [sp, #72]	; 0x48
3000a154:	4698      	mov	r8, r3
3000a156:	3e01      	subs	r6, #1
3000a158:	4658      	mov	r0, fp
3000a15a:	47a8      	blx	r5
3000a15c:	42b7      	cmp	r7, r6
3000a15e:	d1fa      	bne.n	3000a156 <print_unsigned_num+0x9e>
3000a160:	9912      	ldr	r1, [sp, #72]	; 0x48
3000a162:	43fa      	mvns	r2, r7
3000a164:	4643      	mov	r3, r8
3000a166:	440a      	add	r2, r1
3000a168:	9914      	ldr	r1, [sp, #80]	; 0x50
3000a16a:	3101      	adds	r1, #1
3000a16c:	440a      	add	r2, r1
3000a16e:	9914      	ldr	r1, [sp, #80]	; 0x50
3000a170:	9214      	str	r2, [sp, #80]	; 0x50
3000a172:	b111      	cbz	r1, 3000a17a <print_unsigned_num+0xc2>
3000a174:	f01b 0fdf 	tst.w	fp, #223	; 0xdf
3000a178:	d013      	beq.n	3000a1a2 <print_unsigned_num+0xea>
3000a17a:	4454      	add	r4, sl
3000a17c:	4618      	mov	r0, r3
3000a17e:	e001      	b.n	3000a184 <print_unsigned_num+0xcc>
3000a180:	f814 0d01 	ldrb.w	r0, [r4, #-1]!
3000a184:	47a8      	blx	r5
3000a186:	45a2      	cmp	sl, r4
3000a188:	d1fa      	bne.n	3000a180 <print_unsigned_num+0xc8>
3000a18a:	9b14      	ldr	r3, [sp, #80]	; 0x50
3000a18c:	19d8      	adds	r0, r3, r7
3000a18e:	b009      	add	sp, #36	; 0x24
3000a190:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
3000a194:	4d05      	ldr	r5, [pc, #20]	; (3000a1ac <print_unsigned_num+0xf4>)
3000a196:	e7f0      	b.n	3000a17a <print_unsigned_num+0xc2>
3000a198:	9a12      	ldr	r2, [sp, #72]	; 0x48
3000a19a:	2a00      	cmp	r2, #0
3000a19c:	dcd4      	bgt.n	3000a148 <print_unsigned_num+0x90>
3000a19e:	4d03      	ldr	r5, [pc, #12]	; (3000a1ac <print_unsigned_num+0xf4>)
3000a1a0:	e7e8      	b.n	3000a174 <print_unsigned_num+0xbc>
3000a1a2:	202d      	movs	r0, #45	; 0x2d
3000a1a4:	9301      	str	r3, [sp, #4]
3000a1a6:	47a8      	blx	r5
3000a1a8:	9b01      	ldr	r3, [sp, #4]
3000a1aa:	e7e6      	b.n	3000a17a <print_unsigned_num+0xc2>
3000a1ac:	0000abb5 	.word	0x0000abb5

3000a1b0 <LOGUART_INTConfig>:
3000a1b0:	b570      	push	{r4, r5, r6, lr}
3000a1b2:	460c      	mov	r4, r1
3000a1b4:	4b10      	ldr	r3, [pc, #64]	; (3000a1f8 <LOGUART_INTConfig+0x48>)
3000a1b6:	4615      	mov	r5, r2
3000a1b8:	4798      	blx	r3
3000a1ba:	f404 63e0 	and.w	r3, r4, #1792	; 0x700
3000a1be:	f404 62a0 	and.w	r2, r4, #1280	; 0x500
3000a1c2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
3000a1c6:	bf18      	it	ne
3000a1c8:	f5b2 7f80 	cmpne.w	r2, #256	; 0x100
3000a1cc:	d002      	beq.n	3000a1d4 <LOGUART_INTConfig+0x24>
3000a1ce:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
3000a1d2:	d101      	bne.n	3000a1d8 <LOGUART_INTConfig+0x28>
3000a1d4:	f420 60e0 	bic.w	r0, r0, #1792	; 0x700
3000a1d8:	2d01      	cmp	r5, #1
3000a1da:	d007      	beq.n	3000a1ec <LOGUART_INTConfig+0x3c>
3000a1dc:	f424 64e0 	bic.w	r4, r4, #1792	; 0x700
3000a1e0:	4b06      	ldr	r3, [pc, #24]	; (3000a1fc <LOGUART_INTConfig+0x4c>)
3000a1e2:	ea20 0004 	bic.w	r0, r0, r4
3000a1e6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
3000a1ea:	4718      	bx	r3
3000a1ec:	4320      	orrs	r0, r4
3000a1ee:	4b03      	ldr	r3, [pc, #12]	; (3000a1fc <LOGUART_INTConfig+0x4c>)
3000a1f0:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
3000a1f4:	4718      	bx	r3
3000a1f6:	bf00      	nop
3000a1f8:	0000ac55 	.word	0x0000ac55
3000a1fc:	0000ac61 	.word	0x0000ac61

3000a200 <LOGUART_WaitTxComplete>:
3000a200:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
3000a202:	4c07      	ldr	r4, [pc, #28]	; (3000a220 <LOGUART_WaitTxComplete+0x20>)
3000a204:	4d07      	ldr	r5, [pc, #28]	; (3000a224 <LOGUART_WaitTxComplete+0x24>)
3000a206:	6963      	ldr	r3, [r4, #20]
3000a208:	4e07      	ldr	r6, [pc, #28]	; (3000a228 <LOGUART_WaitTxComplete+0x28>)
3000a20a:	402b      	ands	r3, r5
3000a20c:	42b3      	cmp	r3, r6
3000a20e:	d006      	beq.n	3000a21e <LOGUART_WaitTxComplete+0x1e>
3000a210:	4f06      	ldr	r7, [pc, #24]	; (3000a22c <LOGUART_WaitTxComplete+0x2c>)
3000a212:	2001      	movs	r0, #1
3000a214:	47b8      	blx	r7
3000a216:	6963      	ldr	r3, [r4, #20]
3000a218:	402b      	ands	r3, r5
3000a21a:	42b3      	cmp	r3, r6
3000a21c:	d1f9      	bne.n	3000a212 <LOGUART_WaitTxComplete+0x12>
3000a21e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
3000a220:	4200c000 	.word	0x4200c000
3000a224:	000f0140 	.word	0x000f0140
3000a228:	000f0040 	.word	0x000f0040
3000a22c:	00009b2d 	.word	0x00009b2d

3000a230 <CPU_ClkGet>:
3000a230:	b570      	push	{r4, r5, r6, lr}
3000a232:	4d1e      	ldr	r5, [pc, #120]	; (3000a2ac <CPU_ClkGet+0x7c>)
3000a234:	4b1e      	ldr	r3, [pc, #120]	; (3000a2b0 <CPU_ClkGet+0x80>)
3000a236:	f8d5 6224 	ldr.w	r6, [r5, #548]	; 0x224
3000a23a:	f8d5 427c 	ldr.w	r4, [r5, #636]	; 0x27c
3000a23e:	f3c4 1481 	ubfx	r4, r4, #6, #2
3000a242:	4798      	blx	r3
3000a244:	b92c      	cbnz	r4, 3000a252 <CPU_ClkGet+0x22>
3000a246:	2801      	cmp	r0, #1
3000a248:	d007      	beq.n	3000a25a <CPU_ClkGet+0x2a>
3000a24a:	07b2      	lsls	r2, r6, #30
3000a24c:	d407      	bmi.n	3000a25e <CPU_ClkGet+0x2e>
3000a24e:	4819      	ldr	r0, [pc, #100]	; (3000a2b4 <CPU_ClkGet+0x84>)
3000a250:	bd70      	pop	{r4, r5, r6, pc}
3000a252:	2c01      	cmp	r4, #1
3000a254:	d007      	beq.n	3000a266 <CPU_ClkGet+0x36>
3000a256:	2000      	movs	r0, #0
3000a258:	bd70      	pop	{r4, r5, r6, pc}
3000a25a:	4817      	ldr	r0, [pc, #92]	; (3000a2b8 <CPU_ClkGet+0x88>)
3000a25c:	bd70      	pop	{r4, r5, r6, pc}
3000a25e:	4b17      	ldr	r3, [pc, #92]	; (3000a2bc <CPU_ClkGet+0x8c>)
3000a260:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
3000a264:	4718      	bx	r3
3000a266:	2801      	cmp	r0, #1
3000a268:	d011      	beq.n	3000a28e <CPU_ClkGet+0x5e>
3000a26a:	05f3      	lsls	r3, r6, #23
3000a26c:	d51c      	bpl.n	3000a2a8 <CPU_ClkGet+0x78>
3000a26e:	4914      	ldr	r1, [pc, #80]	; (3000a2c0 <CPU_ClkGet+0x90>)
3000a270:	f8d5 3228 	ldr.w	r3, [r5, #552]	; 0x228
3000a274:	6c48      	ldr	r0, [r1, #68]	; 0x44
3000a276:	4a13      	ldr	r2, [pc, #76]	; (3000a2c4 <CPU_ClkGet+0x94>)
3000a278:	f003 0307 	and.w	r3, r3, #7
3000a27c:	f3c0 1045 	ubfx	r0, r0, #5, #6
3000a280:	3301      	adds	r3, #1
3000a282:	3002      	adds	r0, #2
3000a284:	fb02 f000 	mul.w	r0, r2, r0
3000a288:	fbb0 f0f3 	udiv	r0, r0, r3
3000a28c:	bd70      	pop	{r4, r5, r6, pc}
3000a28e:	f8d5 326c 	ldr.w	r3, [r5, #620]	; 0x26c
3000a292:	f413 0f7f 	tst.w	r3, #16711680	; 0xff0000
3000a296:	f3c3 4007 	ubfx	r0, r3, #16, #8
3000a29a:	d003      	beq.n	3000a2a4 <CPU_ClkGet+0x74>
3000a29c:	4b0a      	ldr	r3, [pc, #40]	; (3000a2c8 <CPU_ClkGet+0x98>)
3000a29e:	fb03 f000 	mul.w	r0, r3, r0
3000a2a2:	bd70      	pop	{r4, r5, r6, pc}
3000a2a4:	4809      	ldr	r0, [pc, #36]	; (3000a2cc <CPU_ClkGet+0x9c>)
3000a2a6:	bd70      	pop	{r4, r5, r6, pc}
3000a2a8:	4806      	ldr	r0, [pc, #24]	; (3000a2c4 <CPU_ClkGet+0x94>)
3000a2aa:	bd70      	pop	{r4, r5, r6, pc}
3000a2ac:	42008000 	.word	0x42008000
3000a2b0:	0000c0f9 	.word	0x0000c0f9
3000a2b4:	003d0900 	.word	0x003d0900
3000a2b8:	01312d00 	.word	0x01312d00
3000a2bc:	000099f5 	.word	0x000099f5
3000a2c0:	42008800 	.word	0x42008800
3000a2c4:	02625a00 	.word	0x02625a00
3000a2c8:	000f4240 	.word	0x000f4240
3000a2cc:	02faf080 	.word	0x02faf080

3000a2d0 <RSIP_IV_Set>:
3000a2d0:	4b05      	ldr	r3, [pc, #20]	; (3000a2e8 <RSIP_IV_Set+0x18>)
3000a2d2:	eb03 00c0 	add.w	r0, r3, r0, lsl #3
3000a2d6:	680b      	ldr	r3, [r1, #0]
3000a2d8:	ba1b      	rev	r3, r3
3000a2da:	f8c0 3084 	str.w	r3, [r0, #132]	; 0x84
3000a2de:	684b      	ldr	r3, [r1, #4]
3000a2e0:	ba1b      	rev	r3, r3
3000a2e2:	f8c0 3080 	str.w	r3, [r0, #128]	; 0x80
3000a2e6:	4770      	bx	lr
3000a2e8:	42008c00 	.word	0x42008c00

3000a2ec <RSIP_OTF_Cmd>:
3000a2ec:	4a04      	ldr	r2, [pc, #16]	; (3000a300 <RSIP_OTF_Cmd+0x14>)
3000a2ee:	2801      	cmp	r0, #1
3000a2f0:	6953      	ldr	r3, [r2, #20]
3000a2f2:	bf0c      	ite	eq
3000a2f4:	f443 7380 	orreq.w	r3, r3, #256	; 0x100
3000a2f8:	f423 7380 	bicne.w	r3, r3, #256	; 0x100
3000a2fc:	6153      	str	r3, [r2, #20]
3000a2fe:	4770      	bx	lr
3000a300:	42008c00 	.word	0x42008c00

3000a304 <RSIP_MMU_Config>:
3000a304:	eb00 0040 	add.w	r0, r0, r0, lsl #1
3000a308:	311f      	adds	r1, #31
3000a30a:	321f      	adds	r2, #31
3000a30c:	331f      	adds	r3, #31
3000a30e:	0080      	lsls	r0, r0, #2
3000a310:	0949      	lsrs	r1, r1, #5
3000a312:	0952      	lsrs	r2, r2, #5
3000a314:	095b      	lsrs	r3, r3, #5
3000a316:	0249      	lsls	r1, r1, #9
3000a318:	0252      	lsls	r2, r2, #9
3000a31a:	025b      	lsls	r3, r3, #9
3000a31c:	b410      	push	{r4}
3000a31e:	4c08      	ldr	r4, [pc, #32]	; (3000a340 <RSIP_MMU_Config+0x3c>)
3000a320:	4404      	add	r4, r0
3000a322:	f8d4 0108 	ldr.w	r0, [r4, #264]	; 0x108
3000a326:	f020 0001 	bic.w	r0, r0, #1
3000a32a:	f8c4 0108 	str.w	r0, [r4, #264]	; 0x108
3000a32e:	f8c4 1100 	str.w	r1, [r4, #256]	; 0x100
3000a332:	f8c4 2104 	str.w	r2, [r4, #260]	; 0x104
3000a336:	f8c4 3108 	str.w	r3, [r4, #264]	; 0x108
3000a33a:	f85d 4b04 	ldr.w	r4, [sp], #4
3000a33e:	4770      	bx	lr
3000a340:	42008c00 	.word	0x42008c00

3000a344 <RSIP_MMU_Cmd>:
3000a344:	eb00 0040 	add.w	r0, r0, r0, lsl #1
3000a348:	4b07      	ldr	r3, [pc, #28]	; (3000a368 <RSIP_MMU_Cmd+0x24>)
3000a34a:	0080      	lsls	r0, r0, #2
3000a34c:	4403      	add	r3, r0
3000a34e:	f8d3 2108 	ldr.w	r2, [r3, #264]	; 0x108
3000a352:	b121      	cbz	r1, 3000a35e <RSIP_MMU_Cmd+0x1a>
3000a354:	f042 0201 	orr.w	r2, r2, #1
3000a358:	f8c3 2108 	str.w	r2, [r3, #264]	; 0x108
3000a35c:	4770      	bx	lr
3000a35e:	f022 0201 	bic.w	r2, r2, #1
3000a362:	f8c3 2108 	str.w	r2, [r3, #264]	; 0x108
3000a366:	4770      	bx	lr
3000a368:	42008c00 	.word	0x42008c00

3000a36c <RSIP_MMU_Cache_Clean>:
3000a36c:	4a02      	ldr	r2, [pc, #8]	; (3000a378 <RSIP_MMU_Cache_Clean+0xc>)
3000a36e:	6993      	ldr	r3, [r2, #24]
3000a370:	f043 0304 	orr.w	r3, r3, #4
3000a374:	6193      	str	r3, [r2, #24]
3000a376:	4770      	bx	lr
3000a378:	42008c00 	.word	0x42008c00

3000a37c <NAND_RxData>:
3000a37c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
3000a380:	460c      	mov	r4, r1
3000a382:	4616      	mov	r6, r2
3000a384:	461f      	mov	r7, r3
3000a386:	2800      	cmp	r0, #0
3000a388:	f000 8087 	beq.w	3000a49a <NAND_RxData+0x11e>
3000a38c:	4605      	mov	r5, r0
3000a38e:	f8df 9118 	ldr.w	r9, [pc, #280]	; 3000a4a8 <NAND_RxData+0x12c>
3000a392:	2000      	movs	r0, #0
3000a394:	f8df 8114 	ldr.w	r8, [pc, #276]	; 3000a4ac <NAND_RxData+0x130>
3000a398:	47c0      	blx	r8
3000a39a:	f04f 4388 	mov.w	r3, #1140850688	; 0x44000000
3000a39e:	f026 427f 	bic.w	r2, r6, #4278190080	; 0xff000000
3000a3a2:	2000      	movs	r0, #0
3000a3a4:	6819      	ldr	r1, [r3, #0]
3000a3a6:	f041 4100 	orr.w	r1, r1, #2147483648	; 0x80000000
3000a3aa:	6019      	str	r1, [r3, #0]
3000a3ac:	6819      	ldr	r1, [r3, #0]
3000a3ae:	f441 7140 	orr.w	r1, r1, #768	; 0x300
3000a3b2:	6019      	str	r1, [r3, #0]
3000a3b4:	605a      	str	r2, [r3, #4]
3000a3b6:	f8c3 0130 	str.w	r0, [r3, #304]	; 0x130
3000a3ba:	f899 c062 	ldrb.w	ip, [r9, #98]	; 0x62
3000a3be:	f8d3 1118 	ldr.w	r1, [r3, #280]	; 0x118
3000a3c2:	ea4f 420c 	mov.w	r2, ip, lsl #16
3000a3c6:	f1bc 0f03 	cmp.w	ip, #3
3000a3ca:	f421 2170 	bic.w	r1, r1, #983040	; 0xf0000
3000a3ce:	f402 2270 	and.w	r2, r2, #983040	; 0xf0000
3000a3d2:	ea42 0201 	orr.w	r2, r2, r1
3000a3d6:	f8c3 2118 	str.w	r2, [r3, #280]	; 0x118
3000a3da:	f04f 0201 	mov.w	r2, #1
3000a3de:	611a      	str	r2, [r3, #16]
3000a3e0:	f04f 4288 	mov.w	r2, #1140850688	; 0x44000000
3000a3e4:	f883 5060 	strb.w	r5, [r3, #96]	; 0x60
3000a3e8:	bf08      	it	eq
3000a3ea:	f883 0060 	strbeq.w	r0, [r3, #96]	; 0x60
3000a3ee:	f3c4 2307 	ubfx	r3, r4, #8, #8
3000a3f2:	b2e4      	uxtb	r4, r4
3000a3f4:	f882 3060 	strb.w	r3, [r2, #96]	; 0x60
3000a3f8:	2301      	movs	r3, #1
3000a3fa:	f882 4060 	strb.w	r4, [r2, #96]	; 0x60
3000a3fe:	f017 0403 	ands.w	r4, r7, #3
3000a402:	6093      	str	r3, [r2, #8]
3000a404:	d137      	bne.n	3000a476 <NAND_RxData+0xfa>
3000a406:	463b      	mov	r3, r7
3000a408:	f04f 4e88 	mov.w	lr, #1140850688	; 0x44000000
3000a40c:	42b4      	cmp	r4, r6
3000a40e:	d216      	bcs.n	3000a43e <NAND_RxData+0xc2>
3000a410:	f8de 2024 	ldr.w	r2, [lr, #36]	; 0x24
3000a414:	f012 0f3c 	tst.w	r2, #60	; 0x3c
3000a418:	f3c2 0583 	ubfx	r5, r2, #2, #4
3000a41c:	d00c      	beq.n	3000a438 <NAND_RxData+0xbc>
3000a41e:	00ad      	lsls	r5, r5, #2
3000a420:	1f19      	subs	r1, r3, #4
3000a422:	f1a5 0c04 	sub.w	ip, r5, #4
3000a426:	449c      	add	ip, r3
3000a428:	f8de 0060 	ldr.w	r0, [lr, #96]	; 0x60
3000a42c:	f841 0f04 	str.w	r0, [r1, #4]!
3000a430:	458c      	cmp	ip, r1
3000a432:	d1f9      	bne.n	3000a428 <NAND_RxData+0xac>
3000a434:	442b      	add	r3, r5
3000a436:	442c      	add	r4, r5
3000a438:	1b32      	subs	r2, r6, r4
3000a43a:	2a03      	cmp	r2, #3
3000a43c:	d8e6      	bhi.n	3000a40c <NAND_RxData+0x90>
3000a43e:	1e63      	subs	r3, r4, #1
3000a440:	f04f 4288 	mov.w	r2, #1140850688	; 0x44000000
3000a444:	441f      	add	r7, r3
3000a446:	e002      	b.n	3000a44e <NAND_RxData+0xd2>
3000a448:	6a93      	ldr	r3, [r2, #40]	; 0x28
3000a44a:	071b      	lsls	r3, r3, #28
3000a44c:	d40d      	bmi.n	3000a46a <NAND_RxData+0xee>
3000a44e:	42b4      	cmp	r4, r6
3000a450:	d3fa      	bcc.n	3000a448 <NAND_RxData+0xcc>
3000a452:	2004      	movs	r0, #4
3000a454:	47c0      	blx	r8
3000a456:	2000      	movs	r0, #0
3000a458:	47c0      	blx	r8
3000a45a:	f04f 4288 	mov.w	r2, #1140850688	; 0x44000000
3000a45e:	6813      	ldr	r3, [r2, #0]
3000a460:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
3000a464:	6013      	str	r3, [r2, #0]
3000a466:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
3000a46a:	f892 3060 	ldrb.w	r3, [r2, #96]	; 0x60
3000a46e:	3401      	adds	r4, #1
3000a470:	f807 3f01 	strb.w	r3, [r7, #1]!
3000a474:	e7eb      	b.n	3000a44e <NAND_RxData+0xd2>
3000a476:	f1c4 0004 	rsb	r0, r4, #4
3000a47a:	463b      	mov	r3, r7
3000a47c:	2400      	movs	r4, #0
3000a47e:	e009      	b.n	3000a494 <NAND_RxData+0x118>
3000a480:	6a91      	ldr	r1, [r2, #40]	; 0x28
3000a482:	0709      	lsls	r1, r1, #28
3000a484:	d504      	bpl.n	3000a490 <NAND_RxData+0x114>
3000a486:	f892 1060 	ldrb.w	r1, [r2, #96]	; 0x60
3000a48a:	3401      	adds	r4, #1
3000a48c:	7019      	strb	r1, [r3, #0]
3000a48e:	193b      	adds	r3, r7, r4
3000a490:	42a0      	cmp	r0, r4
3000a492:	d007      	beq.n	3000a4a4 <NAND_RxData+0x128>
3000a494:	42b4      	cmp	r4, r6
3000a496:	d3f3      	bcc.n	3000a480 <NAND_RxData+0x104>
3000a498:	e7d1      	b.n	3000a43e <NAND_RxData+0xc2>
3000a49a:	f8df 900c 	ldr.w	r9, [pc, #12]	; 3000a4a8 <NAND_RxData+0x12c>
3000a49e:	f899 5008 	ldrb.w	r5, [r9, #8]
3000a4a2:	e776      	b.n	3000a392 <NAND_RxData+0x16>
3000a4a4:	4604      	mov	r4, r0
3000a4a6:	e7af      	b.n	3000a408 <NAND_RxData+0x8c>
3000a4a8:	2001c01c 	.word	0x2001c01c
3000a4ac:	0000b9c1 	.word	0x0000b9c1

3000a4b0 <NAND_Page_Read>:
3000a4b0:	b530      	push	{r4, r5, lr}
3000a4b2:	b085      	sub	sp, #20
3000a4b4:	4c07      	ldr	r4, [pc, #28]	; (3000a4d4 <NAND_Page_Read+0x24>)
3000a4b6:	4d08      	ldr	r5, [pc, #32]	; (3000a4d8 <NAND_Page_Read+0x28>)
3000a4b8:	9301      	str	r3, [sp, #4]
3000a4ba:	e9cd 2102 	strd	r2, r1, [sp, #8]
3000a4be:	47a0      	blx	r4
3000a4c0:	4604      	mov	r4, r0
3000a4c2:	9903      	ldr	r1, [sp, #12]
3000a4c4:	7a28      	ldrb	r0, [r5, #8]
3000a4c6:	4d05      	ldr	r5, [pc, #20]	; (3000a4dc <NAND_Page_Read+0x2c>)
3000a4c8:	e9dd 3201 	ldrd	r3, r2, [sp, #4]
3000a4cc:	47a8      	blx	r5
3000a4ce:	4620      	mov	r0, r4
3000a4d0:	b005      	add	sp, #20
3000a4d2:	bd30      	pop	{r4, r5, pc}
3000a4d4:	0000bd85 	.word	0x0000bd85
3000a4d8:	2001c01c 	.word	0x2001c01c
3000a4dc:	3000a37d 	.word	0x3000a37d

3000a4e0 <SYSCFG_BootFromNor>:
3000a4e0:	4b0e      	ldr	r3, [pc, #56]	; (3000a51c <SYSCFG_BootFromNor+0x3c>)
3000a4e2:	b510      	push	{r4, lr}
3000a4e4:	f8d3 227c 	ldr.w	r2, [r3, #636]	; 0x27c
3000a4e8:	f8d3 3280 	ldr.w	r3, [r3, #640]	; 0x280
3000a4ec:	0392      	lsls	r2, r2, #14
3000a4ee:	d50a      	bpl.n	3000a506 <SYSCFG_BootFromNor+0x26>
3000a4f0:	f003 4370 	and.w	r3, r3, #4026531840	; 0xf0000000
3000a4f4:	f1b3 4f60 	cmp.w	r3, #3758096384	; 0xe0000000
3000a4f8:	d105      	bne.n	3000a506 <SYSCFG_BootFromNor+0x26>
3000a4fa:	4b09      	ldr	r3, [pc, #36]	; (3000a520 <SYSCFG_BootFromNor+0x40>)
3000a4fc:	4798      	blx	r3
3000a4fe:	3800      	subs	r0, #0
3000a500:	bf18      	it	ne
3000a502:	2001      	movne	r0, #1
3000a504:	bd10      	pop	{r4, pc}
3000a506:	4c07      	ldr	r4, [pc, #28]	; (3000a524 <SYSCFG_BootFromNor+0x44>)
3000a508:	47a0      	blx	r4
3000a50a:	2802      	cmp	r0, #2
3000a50c:	d004      	beq.n	3000a518 <SYSCFG_BootFromNor+0x38>
3000a50e:	47a0      	blx	r4
3000a510:	2801      	cmp	r0, #1
3000a512:	d1f2      	bne.n	3000a4fa <SYSCFG_BootFromNor+0x1a>
3000a514:	2000      	movs	r0, #0
3000a516:	bd10      	pop	{r4, pc}
3000a518:	2001      	movs	r0, #1
3000a51a:	bd10      	pop	{r4, pc}
3000a51c:	42008000 	.word	0x42008000
3000a520:	0000c0bd 	.word	0x0000c0bd
3000a524:	0000c1a9 	.word	0x0000c1a9

3000a528 <SYSCFG_RLVersion>:
3000a528:	4b0a      	ldr	r3, [pc, #40]	; (3000a554 <SYSCFG_RLVersion+0x2c>)
3000a52a:	7818      	ldrb	r0, [r3, #0]
3000a52c:	28ff      	cmp	r0, #255	; 0xff
3000a52e:	d110      	bne.n	3000a552 <SYSCFG_RLVersion+0x2a>
3000a530:	4909      	ldr	r1, [pc, #36]	; (3000a558 <SYSCFG_RLVersion+0x30>)
3000a532:	f8d1 0274 	ldr.w	r0, [r1, #628]	; 0x274
3000a536:	f020 4070 	bic.w	r0, r0, #4026531840	; 0xf0000000
3000a53a:	f040 4220 	orr.w	r2, r0, #2684354560	; 0xa0000000
3000a53e:	f8c1 2274 	str.w	r2, [r1, #628]	; 0x274
3000a542:	f8d1 2274 	ldr.w	r2, [r1, #628]	; 0x274
3000a546:	f8c1 0274 	str.w	r0, [r1, #628]	; 0x274
3000a54a:	f3c2 4203 	ubfx	r2, r2, #16, #4
3000a54e:	4610      	mov	r0, r2
3000a550:	701a      	strb	r2, [r3, #0]
3000a552:	4770      	bx	lr
3000a554:	3000e159 	.word	0x3000e159
3000a558:	42008000 	.word	0x42008000

3000a55c <DiagVprintf>:
3000a55c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
3000a560:	4604      	mov	r4, r0
3000a562:	7800      	ldrb	r0, [r0, #0]
3000a564:	b089      	sub	sp, #36	; 0x24
3000a566:	2800      	cmp	r0, #0
3000a568:	f000 82ab 	beq.w	3000aac2 <DiagVprintf+0x566>
3000a56c:	f04f 0a00 	mov.w	sl, #0
3000a570:	4688      	mov	r8, r1
3000a572:	4f89      	ldr	r7, [pc, #548]	; (3000a798 <DiagVprintf+0x23c>)
3000a574:	4655      	mov	r5, sl
3000a576:	f8cd a010 	str.w	sl, [sp, #16]
3000a57a:	e005      	b.n	3000a588 <DiagVprintf+0x2c>
3000a57c:	3501      	adds	r5, #1
3000a57e:	47b8      	blx	r7
3000a580:	7820      	ldrb	r0, [r4, #0]
3000a582:	2800      	cmp	r0, #0
3000a584:	f000 808b 	beq.w	3000a69e <DiagVprintf+0x142>
3000a588:	2825      	cmp	r0, #37	; 0x25
3000a58a:	f104 0401 	add.w	r4, r4, #1
3000a58e:	d1f5      	bne.n	3000a57c <DiagVprintf+0x20>
3000a590:	f04f 0a00 	mov.w	sl, #0
3000a594:	4656      	mov	r6, sl
3000a596:	46d1      	mov	r9, sl
3000a598:	46d4      	mov	ip, sl
3000a59a:	7823      	ldrb	r3, [r4, #0]
3000a59c:	2b7a      	cmp	r3, #122	; 0x7a
3000a59e:	d87c      	bhi.n	3000a69a <DiagVprintf+0x13e>
3000a5a0:	e8df f013 	tbh	[pc, r3, lsl #1]
3000a5a4:	007b00af 	.word	0x007b00af
3000a5a8:	007b007b 	.word	0x007b007b
3000a5ac:	007b007b 	.word	0x007b007b
3000a5b0:	007b007b 	.word	0x007b007b
3000a5b4:	007b007b 	.word	0x007b007b
3000a5b8:	007b007b 	.word	0x007b007b
3000a5bc:	007b007b 	.word	0x007b007b
3000a5c0:	007b007b 	.word	0x007b007b
3000a5c4:	007b007b 	.word	0x007b007b
3000a5c8:	007b007b 	.word	0x007b007b
3000a5cc:	007b007b 	.word	0x007b007b
3000a5d0:	007b007b 	.word	0x007b007b
3000a5d4:	007b007b 	.word	0x007b007b
3000a5d8:	007b007b 	.word	0x007b007b
3000a5dc:	007b007b 	.word	0x007b007b
3000a5e0:	007b007b 	.word	0x007b007b
3000a5e4:	007b00c4 	.word	0x007b00c4
3000a5e8:	007b007b 	.word	0x007b007b
3000a5ec:	01af007b 	.word	0x01af007b
3000a5f0:	007b007b 	.word	0x007b007b
3000a5f4:	007b007b 	.word	0x007b007b
3000a5f8:	007b007b 	.word	0x007b007b
3000a5fc:	01ab007b 	.word	0x01ab007b
3000a600:	007b007b 	.word	0x007b007b
3000a604:	00b100c4 	.word	0x00b100c4
3000a608:	00b100b1 	.word	0x00b100b1
3000a60c:	00b100b1 	.word	0x00b100b1
3000a610:	00b100b1 	.word	0x00b100b1
3000a614:	00b100b1 	.word	0x00b100b1
3000a618:	007b007b 	.word	0x007b007b
3000a61c:	007b007b 	.word	0x007b007b
3000a620:	007b007b 	.word	0x007b007b
3000a624:	007b007b 	.word	0x007b007b
3000a628:	012c014f 	.word	0x012c014f
3000a62c:	007b007b 	.word	0x007b007b
3000a630:	007b007b 	.word	0x007b007b
3000a634:	007b007b 	.word	0x007b007b
3000a638:	007b007b 	.word	0x007b007b
3000a63c:	007b0128 	.word	0x007b0128
3000a640:	00fc007b 	.word	0x00fc007b
3000a644:	007b007b 	.word	0x007b007b
3000a648:	007b007b 	.word	0x007b007b
3000a64c:	007b007b 	.word	0x007b007b
3000a650:	007b007b 	.word	0x007b007b
3000a654:	007b0081 	.word	0x007b0081
3000a658:	007b007b 	.word	0x007b007b
3000a65c:	007b007b 	.word	0x007b007b
3000a660:	007b007b 	.word	0x007b007b
3000a664:	007b007b 	.word	0x007b007b
3000a668:	012c014f 	.word	0x012c014f
3000a66c:	007b00ca 	.word	0x007b00ca
3000a670:	007b007b 	.word	0x007b007b
3000a674:	00ca007b 	.word	0x00ca007b
3000a678:	007b007b 	.word	0x007b007b
3000a67c:	007b0128 	.word	0x007b0128
3000a680:	00fc007b 	.word	0x00fc007b
3000a684:	007b01e6 	.word	0x007b01e6
3000a688:	01b4007b 	.word	0x01b4007b
3000a68c:	017d007b 	.word	0x017d007b
3000a690:	007b007b 	.word	0x007b007b
3000a694:	007b0083 	.word	0x007b0083
3000a698:	012a      	.short	0x012a
3000a69a:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
3000a69e:	4628      	mov	r0, r5
3000a6a0:	b009      	add	sp, #36	; 0x24
3000a6a2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
3000a6a6:	2301      	movs	r3, #1
3000a6a8:	9304      	str	r3, [sp, #16]
3000a6aa:	f1bc 0f01 	cmp.w	ip, #1
3000a6ae:	f340 81d4 	ble.w	3000aa5a <DiagVprintf+0x4fe>
3000a6b2:	f108 0807 	add.w	r8, r8, #7
3000a6b6:	f028 0807 	bic.w	r8, r8, #7
3000a6ba:	f8d8 1004 	ldr.w	r1, [r8, #4]
3000a6be:	f858 0b08 	ldr.w	r0, [r8], #8
3000a6c2:	f1ba 0f00 	cmp.w	sl, #0
3000a6c6:	f000 8168 	beq.w	3000a99a <DiagVprintf+0x43e>
3000a6ca:	2300      	movs	r3, #0
3000a6cc:	2210      	movs	r2, #16
3000a6ce:	9302      	str	r3, [sp, #8]
3000a6d0:	9b04      	ldr	r3, [sp, #16]
3000a6d2:	9301      	str	r3, [sp, #4]
3000a6d4:	2300      	movs	r3, #0
3000a6d6:	9300      	str	r3, [sp, #0]
3000a6d8:	464b      	mov	r3, r9
3000a6da:	f7ff fced 	bl	3000a0b8 <print_unsigned_num>
3000a6de:	4286      	cmp	r6, r0
3000a6e0:	dd0e      	ble.n	3000a700 <DiagVprintf+0x1a4>
3000a6e2:	f1b9 0f20 	cmp.w	r9, #32
3000a6e6:	d10b      	bne.n	3000a700 <DiagVprintf+0x1a4>
3000a6e8:	eba6 0900 	sub.w	r9, r6, r0
3000a6ec:	f1b9 0f00 	cmp.w	r9, #0
3000a6f0:	f340 81e4 	ble.w	3000aabc <DiagVprintf+0x560>
3000a6f4:	2020      	movs	r0, #32
3000a6f6:	47b8      	blx	r7
3000a6f8:	f1b9 0901 	subs.w	r9, r9, #1
3000a6fc:	d1fa      	bne.n	3000a6f4 <DiagVprintf+0x198>
3000a6fe:	4630      	mov	r0, r6
3000a700:	4405      	add	r5, r0
3000a702:	3401      	adds	r4, #1
3000a704:	e73c      	b.n	3000a580 <DiagVprintf+0x24>
3000a706:	f04f 0920 	mov.w	r9, #32
3000a70a:	2600      	movs	r6, #0
3000a70c:	e005      	b.n	3000a71a <DiagVprintf+0x1be>
3000a70e:	f814 3f01 	ldrb.w	r3, [r4, #1]!
3000a712:	f1a2 0630 	sub.w	r6, r2, #48	; 0x30
3000a716:	2b00      	cmp	r3, #0
3000a718:	d0c1      	beq.n	3000a69e <DiagVprintf+0x142>
3000a71a:	f1a3 0130 	sub.w	r1, r3, #48	; 0x30
3000a71e:	eb06 0286 	add.w	r2, r6, r6, lsl #2
3000a722:	2909      	cmp	r1, #9
3000a724:	eb03 0242 	add.w	r2, r3, r2, lsl #1
3000a728:	d9f1      	bls.n	3000a70e <DiagVprintf+0x1b2>
3000a72a:	e736      	b.n	3000a59a <DiagVprintf+0x3e>
3000a72c:	3401      	adds	r4, #1
3000a72e:	4699      	mov	r9, r3
3000a730:	7823      	ldrb	r3, [r4, #0]
3000a732:	2b00      	cmp	r3, #0
3000a734:	d1e9      	bne.n	3000a70a <DiagVprintf+0x1ae>
3000a736:	e7b2      	b.n	3000a69e <DiagVprintf+0x142>
3000a738:	f1bc 0f01 	cmp.w	ip, #1
3000a73c:	f340 8186 	ble.w	3000aa4c <DiagVprintf+0x4f0>
3000a740:	f108 0807 	add.w	r8, r8, #7
3000a744:	f028 0807 	bic.w	r8, r8, #7
3000a748:	f8d8 1004 	ldr.w	r1, [r8, #4]
3000a74c:	f858 0b08 	ldr.w	r0, [r8], #8
3000a750:	2900      	cmp	r1, #0
3000a752:	f2c0 8189 	blt.w	3000aa68 <DiagVprintf+0x50c>
3000a756:	2200      	movs	r2, #0
3000a758:	9202      	str	r2, [sp, #8]
3000a75a:	f1ba 0f00 	cmp.w	sl, #0
3000a75e:	f000 816c 	beq.w	3000aa3a <DiagVprintf+0x4de>
3000a762:	9b04      	ldr	r3, [sp, #16]
3000a764:	220a      	movs	r2, #10
3000a766:	9301      	str	r3, [sp, #4]
3000a768:	2300      	movs	r3, #0
3000a76a:	9300      	str	r3, [sp, #0]
3000a76c:	464b      	mov	r3, r9
3000a76e:	f7ff fca3 	bl	3000a0b8 <print_unsigned_num>
3000a772:	4286      	cmp	r6, r0
3000a774:	ddc4      	ble.n	3000a700 <DiagVprintf+0x1a4>
3000a776:	f1b9 0f20 	cmp.w	r9, #32
3000a77a:	d1c1      	bne.n	3000a700 <DiagVprintf+0x1a4>
3000a77c:	eba6 0900 	sub.w	r9, r6, r0
3000a780:	f1b9 0f00 	cmp.w	r9, #0
3000a784:	f340 819a 	ble.w	3000aabc <DiagVprintf+0x560>
3000a788:	2020      	movs	r0, #32
3000a78a:	47b8      	blx	r7
3000a78c:	f1b9 0901 	subs.w	r9, r9, #1
3000a790:	d1fa      	bne.n	3000a788 <DiagVprintf+0x22c>
3000a792:	4630      	mov	r0, r6
3000a794:	e7b4      	b.n	3000a700 <DiagVprintf+0x1a4>
3000a796:	bf00      	nop
3000a798:	0000abb5 	.word	0x0000abb5
3000a79c:	f1bc 0f01 	cmp.w	ip, #1
3000a7a0:	f340 811e 	ble.w	3000a9e0 <DiagVprintf+0x484>
3000a7a4:	f108 0807 	add.w	r8, r8, #7
3000a7a8:	f028 0807 	bic.w	r8, r8, #7
3000a7ac:	f8d8 1004 	ldr.w	r1, [r8, #4]
3000a7b0:	f858 0b08 	ldr.w	r0, [r8], #8
3000a7b4:	f1ba 0f00 	cmp.w	sl, #0
3000a7b8:	f000 8119 	beq.w	3000a9ee <DiagVprintf+0x492>
3000a7bc:	2300      	movs	r3, #0
3000a7be:	2208      	movs	r2, #8
3000a7c0:	9302      	str	r3, [sp, #8]
3000a7c2:	9b04      	ldr	r3, [sp, #16]
3000a7c4:	9301      	str	r3, [sp, #4]
3000a7c6:	2300      	movs	r3, #0
3000a7c8:	9300      	str	r3, [sp, #0]
3000a7ca:	464b      	mov	r3, r9
3000a7cc:	f7ff fc74 	bl	3000a0b8 <print_unsigned_num>
3000a7d0:	4286      	cmp	r6, r0
3000a7d2:	dd95      	ble.n	3000a700 <DiagVprintf+0x1a4>
3000a7d4:	f1b9 0f20 	cmp.w	r9, #32
3000a7d8:	d192      	bne.n	3000a700 <DiagVprintf+0x1a4>
3000a7da:	eba6 0900 	sub.w	r9, r6, r0
3000a7de:	f1b9 0f00 	cmp.w	r9, #0
3000a7e2:	f340 816b 	ble.w	3000aabc <DiagVprintf+0x560>
3000a7e6:	2020      	movs	r0, #32
3000a7e8:	47b8      	blx	r7
3000a7ea:	f1b9 0901 	subs.w	r9, r9, #1
3000a7ee:	d1fa      	bne.n	3000a7e6 <DiagVprintf+0x28a>
3000a7f0:	4630      	mov	r0, r6
3000a7f2:	e785      	b.n	3000a700 <DiagVprintf+0x1a4>
3000a7f4:	f10c 0c01 	add.w	ip, ip, #1
3000a7f8:	3401      	adds	r4, #1
3000a7fa:	e6ce      	b.n	3000a59a <DiagVprintf+0x3e>
3000a7fc:	2e01      	cmp	r6, #1
3000a7fe:	f858 1b04 	ldr.w	r1, [r8], #4
3000a802:	bfd4      	ite	le
3000a804:	2200      	movle	r2, #0
3000a806:	2201      	movgt	r2, #1
3000a808:	fa5f fb81 	uxtb.w	fp, r1
3000a80c:	f1ba 0f00 	cmp.w	sl, #0
3000a810:	d102      	bne.n	3000a818 <DiagVprintf+0x2bc>
3000a812:	2a00      	cmp	r2, #0
3000a814:	f040 812e 	bne.w	3000aa74 <DiagVprintf+0x518>
3000a818:	4658      	mov	r0, fp
3000a81a:	9205      	str	r2, [sp, #20]
3000a81c:	47b8      	blx	r7
3000a81e:	1c69      	adds	r1, r5, #1
3000a820:	f1ba 0f00 	cmp.w	sl, #0
3000a824:	f000 811d 	beq.w	3000aa62 <DiagVprintf+0x506>
3000a828:	9a05      	ldr	r2, [sp, #20]
3000a82a:	2a00      	cmp	r2, #0
3000a82c:	f000 8119 	beq.w	3000aa62 <DiagVprintf+0x506>
3000a830:	f106 3bff 	add.w	fp, r6, #4294967295	; 0xffffffff
3000a834:	4648      	mov	r0, r9
3000a836:	47b8      	blx	r7
3000a838:	f1bb 0b01 	subs.w	fp, fp, #1
3000a83c:	d1fa      	bne.n	3000a834 <DiagVprintf+0x2d8>
3000a83e:	4435      	add	r5, r6
3000a840:	e75f      	b.n	3000a702 <DiagVprintf+0x1a6>
3000a842:	f1bc 0f01 	cmp.w	ip, #1
3000a846:	f340 80dd 	ble.w	3000aa04 <DiagVprintf+0x4a8>
3000a84a:	f108 0807 	add.w	r8, r8, #7
3000a84e:	f028 0807 	bic.w	r8, r8, #7
3000a852:	f8d8 1004 	ldr.w	r1, [r8, #4]
3000a856:	f858 0b08 	ldr.w	r0, [r8], #8
3000a85a:	f1ba 0f00 	cmp.w	sl, #0
3000a85e:	f000 80d8 	beq.w	3000aa12 <DiagVprintf+0x4b6>
3000a862:	2300      	movs	r3, #0
3000a864:	2202      	movs	r2, #2
3000a866:	9302      	str	r3, [sp, #8]
3000a868:	9b04      	ldr	r3, [sp, #16]
3000a86a:	9301      	str	r3, [sp, #4]
3000a86c:	2300      	movs	r3, #0
3000a86e:	9300      	str	r3, [sp, #0]
3000a870:	464b      	mov	r3, r9
3000a872:	f7ff fc21 	bl	3000a0b8 <print_unsigned_num>
3000a876:	4286      	cmp	r6, r0
3000a878:	f77f af42 	ble.w	3000a700 <DiagVprintf+0x1a4>
3000a87c:	f1b9 0f20 	cmp.w	r9, #32
3000a880:	f47f af3e 	bne.w	3000a700 <DiagVprintf+0x1a4>
3000a884:	eba6 0900 	sub.w	r9, r6, r0
3000a888:	f1b9 0f00 	cmp.w	r9, #0
3000a88c:	f340 8116 	ble.w	3000aabc <DiagVprintf+0x560>
3000a890:	2020      	movs	r0, #32
3000a892:	47b8      	blx	r7
3000a894:	f1b9 0901 	subs.w	r9, r9, #1
3000a898:	d1fa      	bne.n	3000a890 <DiagVprintf+0x334>
3000a89a:	4630      	mov	r0, r6
3000a89c:	e730      	b.n	3000a700 <DiagVprintf+0x1a4>
3000a89e:	f1bc 0f01 	cmp.w	ip, #1
3000a8a2:	f340 80c1 	ble.w	3000aa28 <DiagVprintf+0x4cc>
3000a8a6:	f108 0807 	add.w	r8, r8, #7
3000a8aa:	f028 0807 	bic.w	r8, r8, #7
3000a8ae:	f8d8 1004 	ldr.w	r1, [r8, #4]
3000a8b2:	f858 0b08 	ldr.w	r0, [r8], #8
3000a8b6:	f1ba 0f00 	cmp.w	sl, #0
3000a8ba:	f000 80bc 	beq.w	3000aa36 <DiagVprintf+0x4da>
3000a8be:	2300      	movs	r3, #0
3000a8c0:	220a      	movs	r2, #10
3000a8c2:	9302      	str	r3, [sp, #8]
3000a8c4:	9b04      	ldr	r3, [sp, #16]
3000a8c6:	9301      	str	r3, [sp, #4]
3000a8c8:	2300      	movs	r3, #0
3000a8ca:	9300      	str	r3, [sp, #0]
3000a8cc:	464b      	mov	r3, r9
3000a8ce:	f7ff fbf3 	bl	3000a0b8 <print_unsigned_num>
3000a8d2:	4286      	cmp	r6, r0
3000a8d4:	f77f af14 	ble.w	3000a700 <DiagVprintf+0x1a4>
3000a8d8:	f1b9 0f20 	cmp.w	r9, #32
3000a8dc:	f47f af10 	bne.w	3000a700 <DiagVprintf+0x1a4>
3000a8e0:	eba6 0900 	sub.w	r9, r6, r0
3000a8e4:	f1b9 0f00 	cmp.w	r9, #0
3000a8e8:	f340 80e8 	ble.w	3000aabc <DiagVprintf+0x560>
3000a8ec:	2020      	movs	r0, #32
3000a8ee:	47b8      	blx	r7
3000a8f0:	f1b9 0901 	subs.w	r9, r9, #1
3000a8f4:	d1fa      	bne.n	3000a8ec <DiagVprintf+0x390>
3000a8f6:	4630      	mov	r0, r6
3000a8f8:	e702      	b.n	3000a700 <DiagVprintf+0x1a4>
3000a8fa:	3401      	adds	r4, #1
3000a8fc:	f10a 0a01 	add.w	sl, sl, #1
3000a900:	e64b      	b.n	3000a59a <DiagVprintf+0x3e>
3000a902:	2025      	movs	r0, #37	; 0x25
3000a904:	3501      	adds	r5, #1
3000a906:	3401      	adds	r4, #1
3000a908:	47b8      	blx	r7
3000a90a:	e639      	b.n	3000a580 <DiagVprintf+0x24>
3000a90c:	4643      	mov	r3, r8
3000a90e:	f853 2b04 	ldr.w	r2, [r3], #4
3000a912:	7810      	ldrb	r0, [r2, #0]
3000a914:	9305      	str	r3, [sp, #20]
3000a916:	2800      	cmp	r0, #0
3000a918:	f000 80d5 	beq.w	3000aac6 <DiagVprintf+0x56a>
3000a91c:	4694      	mov	ip, r2
3000a91e:	f1c2 0801 	rsb	r8, r2, #1
3000a922:	eb08 010c 	add.w	r1, r8, ip
3000a926:	f81c 3f01 	ldrb.w	r3, [ip, #1]!
3000a92a:	2b00      	cmp	r3, #0
3000a92c:	d1f9      	bne.n	3000a922 <DiagVprintf+0x3c6>
3000a92e:	9106      	str	r1, [sp, #24]
3000a930:	f1ba 0f00 	cmp.w	sl, #0
3000a934:	d03c      	beq.n	3000a9b0 <DiagVprintf+0x454>
3000a936:	2a00      	cmp	r2, #0
3000a938:	f000 80cb 	beq.w	3000aad2 <DiagVprintf+0x576>
3000a93c:	b168      	cbz	r0, 3000a95a <DiagVprintf+0x3fe>
3000a93e:	4693      	mov	fp, r2
3000a940:	f1c2 0801 	rsb	r8, r2, #1
3000a944:	47b8      	blx	r7
3000a946:	eb0b 0c08 	add.w	ip, fp, r8
3000a94a:	f81b 0f01 	ldrb.w	r0, [fp, #1]!
3000a94e:	2800      	cmp	r0, #0
3000a950:	d1f8      	bne.n	3000a944 <DiagVprintf+0x3e8>
3000a952:	4465      	add	r5, ip
3000a954:	f1ba 0f00 	cmp.w	sl, #0
3000a958:	d006      	beq.n	3000a968 <DiagVprintf+0x40c>
3000a95a:	9b06      	ldr	r3, [sp, #24]
3000a95c:	eba6 0b03 	sub.w	fp, r6, r3
3000a960:	f1bb 0f00 	cmp.w	fp, #0
3000a964:	f300 80a1 	bgt.w	3000aaaa <DiagVprintf+0x54e>
3000a968:	f8dd 8014 	ldr.w	r8, [sp, #20]
3000a96c:	3401      	adds	r4, #1
3000a96e:	e607      	b.n	3000a580 <DiagVprintf+0x24>
3000a970:	f858 0b04 	ldr.w	r0, [r8], #4
3000a974:	f1ba 0f00 	cmp.w	sl, #0
3000a978:	d127      	bne.n	3000a9ca <DiagVprintf+0x46e>
3000a97a:	2308      	movs	r3, #8
3000a97c:	2201      	movs	r2, #1
3000a97e:	4651      	mov	r1, sl
3000a980:	f8cd a008 	str.w	sl, [sp, #8]
3000a984:	e9cd 3200 	strd	r3, r2, [sp]
3000a988:	2330      	movs	r3, #48	; 0x30
3000a98a:	2210      	movs	r2, #16
3000a98c:	f7ff fb94 	bl	3000a0b8 <print_unsigned_num>
3000a990:	2301      	movs	r3, #1
3000a992:	4405      	add	r5, r0
3000a994:	3401      	adds	r4, #1
3000a996:	9304      	str	r3, [sp, #16]
3000a998:	e5f2      	b.n	3000a580 <DiagVprintf+0x24>
3000a99a:	9a04      	ldr	r2, [sp, #16]
3000a99c:	464b      	mov	r3, r9
3000a99e:	f8cd a008 	str.w	sl, [sp, #8]
3000a9a2:	9201      	str	r2, [sp, #4]
3000a9a4:	2210      	movs	r2, #16
3000a9a6:	9600      	str	r6, [sp, #0]
3000a9a8:	f7ff fb86 	bl	3000a0b8 <print_unsigned_num>
3000a9ac:	4405      	add	r5, r0
3000a9ae:	e6a8      	b.n	3000a702 <DiagVprintf+0x1a6>
3000a9b0:	9b06      	ldr	r3, [sp, #24]
3000a9b2:	eba6 0803 	sub.w	r8, r6, r3
3000a9b6:	f1b8 0f00 	cmp.w	r8, #0
3000a9ba:	dc66      	bgt.n	3000aa8a <DiagVprintf+0x52e>
3000a9bc:	2a00      	cmp	r2, #0
3000a9be:	f000 808a 	beq.w	3000aad6 <DiagVprintf+0x57a>
3000a9c2:	7810      	ldrb	r0, [r2, #0]
3000a9c4:	2800      	cmp	r0, #0
3000a9c6:	d1ba      	bne.n	3000a93e <DiagVprintf+0x3e2>
3000a9c8:	e7ce      	b.n	3000a968 <DiagVprintf+0x40c>
3000a9ca:	2300      	movs	r3, #0
3000a9cc:	2210      	movs	r2, #16
3000a9ce:	2100      	movs	r1, #0
3000a9d0:	9302      	str	r3, [sp, #8]
3000a9d2:	9300      	str	r3, [sp, #0]
3000a9d4:	2301      	movs	r3, #1
3000a9d6:	9301      	str	r3, [sp, #4]
3000a9d8:	2330      	movs	r3, #48	; 0x30
3000a9da:	f7ff fb6d 	bl	3000a0b8 <print_unsigned_num>
3000a9de:	e7d7      	b.n	3000a990 <DiagVprintf+0x434>
3000a9e0:	f858 0b04 	ldr.w	r0, [r8], #4
3000a9e4:	2100      	movs	r1, #0
3000a9e6:	f1ba 0f00 	cmp.w	sl, #0
3000a9ea:	f47f aee7 	bne.w	3000a7bc <DiagVprintf+0x260>
3000a9ee:	9a04      	ldr	r2, [sp, #16]
3000a9f0:	464b      	mov	r3, r9
3000a9f2:	f8cd a008 	str.w	sl, [sp, #8]
3000a9f6:	9201      	str	r2, [sp, #4]
3000a9f8:	2208      	movs	r2, #8
3000a9fa:	9600      	str	r6, [sp, #0]
3000a9fc:	f7ff fb5c 	bl	3000a0b8 <print_unsigned_num>
3000aa00:	4405      	add	r5, r0
3000aa02:	e67e      	b.n	3000a702 <DiagVprintf+0x1a6>
3000aa04:	f858 0b04 	ldr.w	r0, [r8], #4
3000aa08:	2100      	movs	r1, #0
3000aa0a:	f1ba 0f00 	cmp.w	sl, #0
3000aa0e:	f47f af28 	bne.w	3000a862 <DiagVprintf+0x306>
3000aa12:	9a04      	ldr	r2, [sp, #16]
3000aa14:	464b      	mov	r3, r9
3000aa16:	f8cd a008 	str.w	sl, [sp, #8]
3000aa1a:	9201      	str	r2, [sp, #4]
3000aa1c:	2202      	movs	r2, #2
3000aa1e:	9600      	str	r6, [sp, #0]
3000aa20:	f7ff fb4a 	bl	3000a0b8 <print_unsigned_num>
3000aa24:	4405      	add	r5, r0
3000aa26:	e66c      	b.n	3000a702 <DiagVprintf+0x1a6>
3000aa28:	f858 0b04 	ldr.w	r0, [r8], #4
3000aa2c:	2100      	movs	r1, #0
3000aa2e:	f1ba 0f00 	cmp.w	sl, #0
3000aa32:	f47f af44 	bne.w	3000a8be <DiagVprintf+0x362>
3000aa36:	f8cd a008 	str.w	sl, [sp, #8]
3000aa3a:	9a04      	ldr	r2, [sp, #16]
3000aa3c:	464b      	mov	r3, r9
3000aa3e:	9600      	str	r6, [sp, #0]
3000aa40:	9201      	str	r2, [sp, #4]
3000aa42:	220a      	movs	r2, #10
3000aa44:	f7ff fb38 	bl	3000a0b8 <print_unsigned_num>
3000aa48:	4405      	add	r5, r0
3000aa4a:	e65a      	b.n	3000a702 <DiagVprintf+0x1a6>
3000aa4c:	f8d8 0000 	ldr.w	r0, [r8]
3000aa50:	f108 0204 	add.w	r2, r8, #4
3000aa54:	17c1      	asrs	r1, r0, #31
3000aa56:	4690      	mov	r8, r2
3000aa58:	e67a      	b.n	3000a750 <DiagVprintf+0x1f4>
3000aa5a:	f858 0b04 	ldr.w	r0, [r8], #4
3000aa5e:	2100      	movs	r1, #0
3000aa60:	e62f      	b.n	3000a6c2 <DiagVprintf+0x166>
3000aa62:	460d      	mov	r5, r1
3000aa64:	3401      	adds	r4, #1
3000aa66:	e58b      	b.n	3000a580 <DiagVprintf+0x24>
3000aa68:	4240      	negs	r0, r0
3000aa6a:	f04f 0201 	mov.w	r2, #1
3000aa6e:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
3000aa72:	e671      	b.n	3000a758 <DiagVprintf+0x1fc>
3000aa74:	f106 3aff 	add.w	sl, r6, #4294967295	; 0xffffffff
3000aa78:	4648      	mov	r0, r9
3000aa7a:	47b8      	blx	r7
3000aa7c:	f1ba 0a01 	subs.w	sl, sl, #1
3000aa80:	d1fa      	bne.n	3000aa78 <DiagVprintf+0x51c>
3000aa82:	4658      	mov	r0, fp
3000aa84:	4435      	add	r5, r6
3000aa86:	47b8      	blx	r7
3000aa88:	e63b      	b.n	3000a702 <DiagVprintf+0x1a6>
3000aa8a:	4623      	mov	r3, r4
3000aa8c:	46c3      	mov	fp, r8
3000aa8e:	464c      	mov	r4, r9
3000aa90:	9207      	str	r2, [sp, #28]
3000aa92:	4699      	mov	r9, r3
3000aa94:	4620      	mov	r0, r4
3000aa96:	47b8      	blx	r7
3000aa98:	f1bb 0b01 	subs.w	fp, fp, #1
3000aa9c:	d1fa      	bne.n	3000aa94 <DiagVprintf+0x538>
3000aa9e:	464b      	mov	r3, r9
3000aaa0:	9a07      	ldr	r2, [sp, #28]
3000aaa2:	46a1      	mov	r9, r4
3000aaa4:	4445      	add	r5, r8
3000aaa6:	461c      	mov	r4, r3
3000aaa8:	e788      	b.n	3000a9bc <DiagVprintf+0x460>
3000aaaa:	465e      	mov	r6, fp
3000aaac:	4648      	mov	r0, r9
3000aaae:	47b8      	blx	r7
3000aab0:	3e01      	subs	r6, #1
3000aab2:	d1fb      	bne.n	3000aaac <DiagVprintf+0x550>
3000aab4:	445d      	add	r5, fp
3000aab6:	f8dd 8014 	ldr.w	r8, [sp, #20]
3000aaba:	e622      	b.n	3000a702 <DiagVprintf+0x1a6>
3000aabc:	4606      	mov	r6, r0
3000aabe:	4630      	mov	r0, r6
3000aac0:	e61e      	b.n	3000a700 <DiagVprintf+0x1a4>
3000aac2:	4605      	mov	r5, r0
3000aac4:	e5eb      	b.n	3000a69e <DiagVprintf+0x142>
3000aac6:	9006      	str	r0, [sp, #24]
3000aac8:	f1ba 0f00 	cmp.w	sl, #0
3000aacc:	f47f af33 	bne.w	3000a936 <DiagVprintf+0x3da>
3000aad0:	e76e      	b.n	3000a9b0 <DiagVprintf+0x454>
3000aad2:	3d01      	subs	r5, #1
3000aad4:	e741      	b.n	3000a95a <DiagVprintf+0x3fe>
3000aad6:	3d01      	subs	r5, #1
3000aad8:	e746      	b.n	3000a968 <DiagVprintf+0x40c>
3000aada:	bf00      	nop

3000aadc <DiagPrintf>:
3000aadc:	b40f      	push	{r0, r1, r2, r3}
3000aade:	b500      	push	{lr}
3000aae0:	b083      	sub	sp, #12
3000aae2:	a904      	add	r1, sp, #16
3000aae4:	f851 0b04 	ldr.w	r0, [r1], #4
3000aae8:	9101      	str	r1, [sp, #4]
3000aaea:	f7ff fd37 	bl	3000a55c <DiagVprintf>
3000aaee:	b003      	add	sp, #12
3000aaf0:	f85d eb04 	ldr.w	lr, [sp], #4
3000aaf4:	b004      	add	sp, #16
3000aaf6:	4770      	bx	lr

3000aaf8 <DiagVprintfNano>:
3000aaf8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
3000aafc:	4604      	mov	r4, r0
3000aafe:	7800      	ldrb	r0, [r0, #0]
3000ab00:	b089      	sub	sp, #36	; 0x24
3000ab02:	2800      	cmp	r0, #0
3000ab04:	f000 81d9 	beq.w	3000aeba <DiagVprintfNano+0x3c2>
3000ab08:	468b      	mov	fp, r1
3000ab0a:	f04f 0800 	mov.w	r8, #0
3000ab0e:	4fa4      	ldr	r7, [pc, #656]	; (3000ada0 <DiagVprintfNano+0x2a8>)
3000ab10:	e005      	b.n	3000ab1e <DiagVprintfNano+0x26>
3000ab12:	f108 0801 	add.w	r8, r8, #1
3000ab16:	47b8      	blx	r7
3000ab18:	7820      	ldrb	r0, [r4, #0]
3000ab1a:	2800      	cmp	r0, #0
3000ab1c:	d06d      	beq.n	3000abfa <DiagVprintfNano+0x102>
3000ab1e:	2825      	cmp	r0, #37	; 0x25
3000ab20:	f104 0401 	add.w	r4, r4, #1
3000ab24:	d1f5      	bne.n	3000ab12 <DiagVprintfNano+0x1a>
3000ab26:	2500      	movs	r5, #0
3000ab28:	7821      	ldrb	r1, [r4, #0]
3000ab2a:	462a      	mov	r2, r5
3000ab2c:	2900      	cmp	r1, #0
3000ab2e:	f000 8081 	beq.w	3000ac34 <DiagVprintfNano+0x13c>
3000ab32:	f1a1 0320 	sub.w	r3, r1, #32
3000ab36:	b2d8      	uxtb	r0, r3
3000ab38:	2858      	cmp	r0, #88	; 0x58
3000ab3a:	d85c      	bhi.n	3000abf6 <DiagVprintfNano+0xfe>
3000ab3c:	2b58      	cmp	r3, #88	; 0x58
3000ab3e:	d85a      	bhi.n	3000abf6 <DiagVprintfNano+0xfe>
3000ab40:	e8df f013 	tbh	[pc, r3, lsl #1]
3000ab44:	0059005f 	.word	0x0059005f
3000ab48:	00590059 	.word	0x00590059
3000ab4c:	01270059 	.word	0x01270059
3000ab50:	00590059 	.word	0x00590059
3000ab54:	00590059 	.word	0x00590059
3000ab58:	00590059 	.word	0x00590059
3000ab5c:	00590059 	.word	0x00590059
3000ab60:	00590059 	.word	0x00590059
3000ab64:	007a005f 	.word	0x007a005f
3000ab68:	007a007a 	.word	0x007a007a
3000ab6c:	007a007a 	.word	0x007a007a
3000ab70:	007a007a 	.word	0x007a007a
3000ab74:	007a007a 	.word	0x007a007a
3000ab78:	00590059 	.word	0x00590059
3000ab7c:	00590059 	.word	0x00590059
3000ab80:	00590059 	.word	0x00590059
3000ab84:	00590059 	.word	0x00590059
3000ab88:	00db0059 	.word	0x00db0059
3000ab8c:	00590059 	.word	0x00590059
3000ab90:	00590059 	.word	0x00590059
3000ab94:	00590059 	.word	0x00590059
3000ab98:	00590059 	.word	0x00590059
3000ab9c:	00590059 	.word	0x00590059
3000aba0:	00590059 	.word	0x00590059
3000aba4:	00590059 	.word	0x00590059
3000aba8:	00590059 	.word	0x00590059
3000abac:	00590059 	.word	0x00590059
3000abb0:	00590059 	.word	0x00590059
3000abb4:	00590059 	.word	0x00590059
3000abb8:	00590059 	.word	0x00590059
3000abbc:	00590059 	.word	0x00590059
3000abc0:	00590059 	.word	0x00590059
3000abc4:	00590059 	.word	0x00590059
3000abc8:	00db0059 	.word	0x00db0059
3000abcc:	0059007c 	.word	0x0059007c
3000abd0:	00590059 	.word	0x00590059
3000abd4:	007c0059 	.word	0x007c0059
3000abd8:	00590059 	.word	0x00590059
3000abdc:	00590059 	.word	0x00590059
3000abe0:	00590059 	.word	0x00590059
3000abe4:	00590059 	.word	0x00590059
3000abe8:	01720059 	.word	0x01720059
3000abec:	01320059 	.word	0x01320059
3000abf0:	00590059 	.word	0x00590059
3000abf4:	00e8      	.short	0x00e8
3000abf6:	f04f 38ff 	mov.w	r8, #4294967295	; 0xffffffff
3000abfa:	4640      	mov	r0, r8
3000abfc:	b009      	add	sp, #36	; 0x24
3000abfe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
3000ac02:	3401      	adds	r4, #1
3000ac04:	460a      	mov	r2, r1
3000ac06:	7821      	ldrb	r1, [r4, #0]
3000ac08:	2900      	cmp	r1, #0
3000ac0a:	d0f6      	beq.n	3000abfa <DiagVprintfNano+0x102>
3000ac0c:	2500      	movs	r5, #0
3000ac0e:	e005      	b.n	3000ac1c <DiagVprintfNano+0x124>
3000ac10:	f814 1f01 	ldrb.w	r1, [r4, #1]!
3000ac14:	f1a3 0530 	sub.w	r5, r3, #48	; 0x30
3000ac18:	2900      	cmp	r1, #0
3000ac1a:	d0ee      	beq.n	3000abfa <DiagVprintfNano+0x102>
3000ac1c:	f1a1 0030 	sub.w	r0, r1, #48	; 0x30
3000ac20:	eb05 0385 	add.w	r3, r5, r5, lsl #2
3000ac24:	2809      	cmp	r0, #9
3000ac26:	eb01 0343 	add.w	r3, r1, r3, lsl #1
3000ac2a:	d9f1      	bls.n	3000ac10 <DiagVprintfNano+0x118>
3000ac2c:	7821      	ldrb	r1, [r4, #0]
3000ac2e:	2900      	cmp	r1, #0
3000ac30:	f47f af7f 	bne.w	3000ab32 <DiagVprintfNano+0x3a>
3000ac34:	3401      	adds	r4, #1
3000ac36:	e76f      	b.n	3000ab18 <DiagVprintfNano+0x20>
3000ac38:	2220      	movs	r2, #32
3000ac3a:	e7e7      	b.n	3000ac0c <DiagVprintfNano+0x114>
3000ac3c:	4659      	mov	r1, fp
3000ac3e:	f851 3b04 	ldr.w	r3, [r1], #4
3000ac42:	2b00      	cmp	r3, #0
3000ac44:	9101      	str	r1, [sp, #4]
3000ac46:	f2c0 8116 	blt.w	3000ae76 <DiagVprintfNano+0x37e>
3000ac4a:	2100      	movs	r1, #0
3000ac4c:	9100      	str	r1, [sp, #0]
3000ac4e:	f10d 0914 	add.w	r9, sp, #20
3000ac52:	f04f 0b00 	mov.w	fp, #0
3000ac56:	f8df c14c 	ldr.w	ip, [pc, #332]	; 3000ada4 <DiagVprintfNano+0x2ac>
3000ac5a:	4649      	mov	r1, r9
3000ac5c:	fbac 0e03 	umull	r0, lr, ip, r3
3000ac60:	4618      	mov	r0, r3
3000ac62:	46da      	mov	sl, fp
3000ac64:	f10b 0b01 	add.w	fp, fp, #1
3000ac68:	ea4f 0ede 	mov.w	lr, lr, lsr #3
3000ac6c:	2809      	cmp	r0, #9
3000ac6e:	eb0e 068e 	add.w	r6, lr, lr, lsl #2
3000ac72:	eba3 0646 	sub.w	r6, r3, r6, lsl #1
3000ac76:	4673      	mov	r3, lr
3000ac78:	f106 0630 	add.w	r6, r6, #48	; 0x30
3000ac7c:	b2f6      	uxtb	r6, r6
3000ac7e:	f801 6b01 	strb.w	r6, [r1], #1
3000ac82:	d8eb      	bhi.n	3000ac5c <DiagVprintfNano+0x164>
3000ac84:	9b00      	ldr	r3, [sp, #0]
3000ac86:	2b00      	cmp	r3, #0
3000ac88:	f000 810c 	beq.w	3000aea4 <DiagVprintfNano+0x3ac>
3000ac8c:	2a30      	cmp	r2, #48	; 0x30
3000ac8e:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
3000ac92:	f040 810e 	bne.w	3000aeb2 <DiagVprintfNano+0x3ba>
3000ac96:	202d      	movs	r0, #45	; 0x2d
3000ac98:	9202      	str	r2, [sp, #8]
3000ac9a:	47b8      	blx	r7
3000ac9c:	2d00      	cmp	r5, #0
3000ac9e:	9a02      	ldr	r2, [sp, #8]
3000aca0:	dd19      	ble.n	3000acd6 <DiagVprintfNano+0x1de>
3000aca2:	45ab      	cmp	fp, r5
3000aca4:	da12      	bge.n	3000accc <DiagVprintfNano+0x1d4>
3000aca6:	9403      	str	r4, [sp, #12]
3000aca8:	4614      	mov	r4, r2
3000acaa:	9502      	str	r5, [sp, #8]
3000acac:	3d01      	subs	r5, #1
3000acae:	4620      	mov	r0, r4
3000acb0:	47b8      	blx	r7
3000acb2:	45ab      	cmp	fp, r5
3000acb4:	d1fa      	bne.n	3000acac <DiagVprintfNano+0x1b4>
3000acb6:	9800      	ldr	r0, [sp, #0]
3000acb8:	ea6f 030b 	mvn.w	r3, fp
3000acbc:	9d02      	ldr	r5, [sp, #8]
3000acbe:	4622      	mov	r2, r4
3000acc0:	1c41      	adds	r1, r0, #1
3000acc2:	9c03      	ldr	r4, [sp, #12]
3000acc4:	442b      	add	r3, r5
3000acc6:	440b      	add	r3, r1
3000acc8:	9300      	str	r3, [sp, #0]
3000acca:	b120      	cbz	r0, 3000acd6 <DiagVprintfNano+0x1de>
3000accc:	f012 0fdf 	tst.w	r2, #223	; 0xdf
3000acd0:	d101      	bne.n	3000acd6 <DiagVprintfNano+0x1de>
3000acd2:	202d      	movs	r0, #45	; 0x2d
3000acd4:	47b8      	blx	r7
3000acd6:	eb09 050a 	add.w	r5, r9, sl
3000acda:	4630      	mov	r0, r6
3000acdc:	e001      	b.n	3000ace2 <DiagVprintfNano+0x1ea>
3000acde:	f815 0d01 	ldrb.w	r0, [r5, #-1]!
3000ace2:	47b8      	blx	r7
3000ace4:	45a9      	cmp	r9, r5
3000ace6:	d1fa      	bne.n	3000acde <DiagVprintfNano+0x1e6>
3000ace8:	f108 0801 	add.w	r8, r8, #1
3000acec:	3401      	adds	r4, #1
3000acee:	44d0      	add	r8, sl
3000acf0:	e9dd 3b00 	ldrd	r3, fp, [sp]
3000acf4:	4443      	add	r3, r8
3000acf6:	4698      	mov	r8, r3
3000acf8:	e70e      	b.n	3000ab18 <DiagVprintfNano+0x20>
3000acfa:	f85b 3b04 	ldr.w	r3, [fp], #4
3000acfe:	2d01      	cmp	r5, #1
3000ad00:	fa5f f983 	uxtb.w	r9, r3
3000ad04:	f300 80bb 	bgt.w	3000ae7e <DiagVprintfNano+0x386>
3000ad08:	4648      	mov	r0, r9
3000ad0a:	f108 0801 	add.w	r8, r8, #1
3000ad0e:	3401      	adds	r4, #1
3000ad10:	47b8      	blx	r7
3000ad12:	e701      	b.n	3000ab18 <DiagVprintfNano+0x20>
3000ad14:	4659      	mov	r1, fp
3000ad16:	f10d 0914 	add.w	r9, sp, #20
3000ad1a:	2600      	movs	r6, #0
3000ad1c:	f851 3b04 	ldr.w	r3, [r1], #4
3000ad20:	4648      	mov	r0, r9
3000ad22:	9100      	str	r1, [sp, #0]
3000ad24:	e000      	b.n	3000ad28 <DiagVprintfNano+0x230>
3000ad26:	465e      	mov	r6, fp
3000ad28:	f003 010f 	and.w	r1, r3, #15
3000ad2c:	f106 0b01 	add.w	fp, r6, #1
3000ad30:	2909      	cmp	r1, #9
3000ad32:	f101 0a57 	add.w	sl, r1, #87	; 0x57
3000ad36:	bf98      	it	ls
3000ad38:	f101 0a30 	addls.w	sl, r1, #48	; 0x30
3000ad3c:	0919      	lsrs	r1, r3, #4
3000ad3e:	2b0f      	cmp	r3, #15
3000ad40:	f800 ab01 	strb.w	sl, [r0], #1
3000ad44:	460b      	mov	r3, r1
3000ad46:	d8ee      	bhi.n	3000ad26 <DiagVprintfNano+0x22e>
3000ad48:	2d00      	cmp	r5, #0
3000ad4a:	f340 808f 	ble.w	3000ae6c <DiagVprintfNano+0x374>
3000ad4e:	455d      	cmp	r5, fp
3000ad50:	f340 808c 	ble.w	3000ae6c <DiagVprintfNano+0x374>
3000ad54:	9402      	str	r4, [sp, #8]
3000ad56:	4614      	mov	r4, r2
3000ad58:	9501      	str	r5, [sp, #4]
3000ad5a:	3d01      	subs	r5, #1
3000ad5c:	4620      	mov	r0, r4
3000ad5e:	47b8      	blx	r7
3000ad60:	45ab      	cmp	fp, r5
3000ad62:	d1fa      	bne.n	3000ad5a <DiagVprintfNano+0x262>
3000ad64:	e9dd 5401 	ldrd	r5, r4, [sp, #4]
3000ad68:	eba5 030b 	sub.w	r3, r5, fp
3000ad6c:	9301      	str	r3, [sp, #4]
3000ad6e:	eb09 0506 	add.w	r5, r9, r6
3000ad72:	4650      	mov	r0, sl
3000ad74:	e001      	b.n	3000ad7a <DiagVprintfNano+0x282>
3000ad76:	f815 0d01 	ldrb.w	r0, [r5, #-1]!
3000ad7a:	47b8      	blx	r7
3000ad7c:	454d      	cmp	r5, r9
3000ad7e:	d1fa      	bne.n	3000ad76 <DiagVprintfNano+0x27e>
3000ad80:	f108 0801 	add.w	r8, r8, #1
3000ad84:	3401      	adds	r4, #1
3000ad86:	44b0      	add	r8, r6
3000ad88:	e9dd b300 	ldrd	fp, r3, [sp]
3000ad8c:	4443      	add	r3, r8
3000ad8e:	4698      	mov	r8, r3
3000ad90:	e6c2      	b.n	3000ab18 <DiagVprintfNano+0x20>
3000ad92:	2025      	movs	r0, #37	; 0x25
3000ad94:	f108 0801 	add.w	r8, r8, #1
3000ad98:	3401      	adds	r4, #1
3000ad9a:	47b8      	blx	r7
3000ad9c:	e6bc      	b.n	3000ab18 <DiagVprintfNano+0x20>
3000ad9e:	bf00      	nop
3000ada0:	0000abb5 	.word	0x0000abb5
3000ada4:	cccccccd 	.word	0xcccccccd
3000ada8:	4659      	mov	r1, fp
3000adaa:	f10d 0914 	add.w	r9, sp, #20
3000adae:	f04f 0b00 	mov.w	fp, #0
3000adb2:	f8df c110 	ldr.w	ip, [pc, #272]	; 3000aec4 <DiagVprintfNano+0x3cc>
3000adb6:	f851 3b04 	ldr.w	r3, [r1], #4
3000adba:	9100      	str	r1, [sp, #0]
3000adbc:	4649      	mov	r1, r9
3000adbe:	fbac 0e03 	umull	r0, lr, ip, r3
3000adc2:	4618      	mov	r0, r3
3000adc4:	46da      	mov	sl, fp
3000adc6:	f10b 0b01 	add.w	fp, fp, #1
3000adca:	ea4f 0ede 	mov.w	lr, lr, lsr #3
3000adce:	2809      	cmp	r0, #9
3000add0:	eb0e 068e 	add.w	r6, lr, lr, lsl #2
3000add4:	eba3 0646 	sub.w	r6, r3, r6, lsl #1
3000add8:	4673      	mov	r3, lr
3000adda:	f106 0630 	add.w	r6, r6, #48	; 0x30
3000adde:	b2f6      	uxtb	r6, r6
3000ade0:	f801 6b01 	strb.w	r6, [r1], #1
3000ade4:	d8eb      	bhi.n	3000adbe <DiagVprintfNano+0x2c6>
3000ade6:	2d00      	cmp	r5, #0
3000ade8:	dd43      	ble.n	3000ae72 <DiagVprintfNano+0x37a>
3000adea:	455d      	cmp	r5, fp
3000adec:	dd41      	ble.n	3000ae72 <DiagVprintfNano+0x37a>
3000adee:	9402      	str	r4, [sp, #8]
3000adf0:	4614      	mov	r4, r2
3000adf2:	9501      	str	r5, [sp, #4]
3000adf4:	3d01      	subs	r5, #1
3000adf6:	4620      	mov	r0, r4
3000adf8:	47b8      	blx	r7
3000adfa:	45ab      	cmp	fp, r5
3000adfc:	d1fa      	bne.n	3000adf4 <DiagVprintfNano+0x2fc>
3000adfe:	e9dd 5401 	ldrd	r5, r4, [sp, #4]
3000ae02:	eba5 050b 	sub.w	r5, r5, fp
3000ae06:	eb09 0b0a 	add.w	fp, r9, sl
3000ae0a:	4630      	mov	r0, r6
3000ae0c:	e001      	b.n	3000ae12 <DiagVprintfNano+0x31a>
3000ae0e:	f81b 0d01 	ldrb.w	r0, [fp, #-1]!
3000ae12:	47b8      	blx	r7
3000ae14:	45d9      	cmp	r9, fp
3000ae16:	d1fa      	bne.n	3000ae0e <DiagVprintfNano+0x316>
3000ae18:	f108 0801 	add.w	r8, r8, #1
3000ae1c:	f8dd b000 	ldr.w	fp, [sp]
3000ae20:	3401      	adds	r4, #1
3000ae22:	44d0      	add	r8, sl
3000ae24:	44a8      	add	r8, r5
3000ae26:	e677      	b.n	3000ab18 <DiagVprintfNano+0x20>
3000ae28:	f85b 6b04 	ldr.w	r6, [fp], #4
3000ae2c:	7833      	ldrb	r3, [r6, #0]
3000ae2e:	b14b      	cbz	r3, 3000ae44 <DiagVprintfNano+0x34c>
3000ae30:	4633      	mov	r3, r6
3000ae32:	f1c6 0901 	rsb	r9, r6, #1
3000ae36:	eb09 0003 	add.w	r0, r9, r3
3000ae3a:	f813 1f01 	ldrb.w	r1, [r3, #1]!
3000ae3e:	2900      	cmp	r1, #0
3000ae40:	d1f9      	bne.n	3000ae36 <DiagVprintfNano+0x33e>
3000ae42:	1a2d      	subs	r5, r5, r0
3000ae44:	2d00      	cmp	r5, #0
3000ae46:	dc24      	bgt.n	3000ae92 <DiagVprintfNano+0x39a>
3000ae48:	2e00      	cmp	r6, #0
3000ae4a:	d038      	beq.n	3000aebe <DiagVprintfNano+0x3c6>
3000ae4c:	7830      	ldrb	r0, [r6, #0]
3000ae4e:	2800      	cmp	r0, #0
3000ae50:	f43f aef0 	beq.w	3000ac34 <DiagVprintfNano+0x13c>
3000ae54:	f1c6 0901 	rsb	r9, r6, #1
3000ae58:	47b8      	blx	r7
3000ae5a:	eb06 0309 	add.w	r3, r6, r9
3000ae5e:	f816 0f01 	ldrb.w	r0, [r6, #1]!
3000ae62:	2800      	cmp	r0, #0
3000ae64:	d1f8      	bne.n	3000ae58 <DiagVprintfNano+0x360>
3000ae66:	4498      	add	r8, r3
3000ae68:	3401      	adds	r4, #1
3000ae6a:	e655      	b.n	3000ab18 <DiagVprintfNano+0x20>
3000ae6c:	2300      	movs	r3, #0
3000ae6e:	9301      	str	r3, [sp, #4]
3000ae70:	e77d      	b.n	3000ad6e <DiagVprintfNano+0x276>
3000ae72:	2500      	movs	r5, #0
3000ae74:	e7c7      	b.n	3000ae06 <DiagVprintfNano+0x30e>
3000ae76:	2101      	movs	r1, #1
3000ae78:	425b      	negs	r3, r3
3000ae7a:	9100      	str	r1, [sp, #0]
3000ae7c:	e6e7      	b.n	3000ac4e <DiagVprintfNano+0x156>
3000ae7e:	1e6e      	subs	r6, r5, #1
3000ae80:	4692      	mov	sl, r2
3000ae82:	4650      	mov	r0, sl
3000ae84:	47b8      	blx	r7
3000ae86:	3e01      	subs	r6, #1
3000ae88:	d1fb      	bne.n	3000ae82 <DiagVprintfNano+0x38a>
3000ae8a:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
3000ae8e:	44a8      	add	r8, r5
3000ae90:	e73a      	b.n	3000ad08 <DiagVprintfNano+0x210>
3000ae92:	46a9      	mov	r9, r5
3000ae94:	4692      	mov	sl, r2
3000ae96:	4650      	mov	r0, sl
3000ae98:	47b8      	blx	r7
3000ae9a:	f1b9 0901 	subs.w	r9, r9, #1
3000ae9e:	d1fa      	bne.n	3000ae96 <DiagVprintfNano+0x39e>
3000aea0:	44a8      	add	r8, r5
3000aea2:	e7d1      	b.n	3000ae48 <DiagVprintfNano+0x350>
3000aea4:	2d00      	cmp	r5, #0
3000aea6:	f77f af16 	ble.w	3000acd6 <DiagVprintfNano+0x1de>
3000aeaa:	455d      	cmp	r5, fp
3000aeac:	f73f aefb 	bgt.w	3000aca6 <DiagVprintfNano+0x1ae>
3000aeb0:	e711      	b.n	3000acd6 <DiagVprintfNano+0x1de>
3000aeb2:	2d00      	cmp	r5, #0
3000aeb4:	f73f aef5 	bgt.w	3000aca2 <DiagVprintfNano+0x1aa>
3000aeb8:	e708      	b.n	3000accc <DiagVprintfNano+0x1d4>
3000aeba:	4680      	mov	r8, r0
3000aebc:	e69d      	b.n	3000abfa <DiagVprintfNano+0x102>
3000aebe:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
3000aec2:	e6b7      	b.n	3000ac34 <DiagVprintfNano+0x13c>
3000aec4:	cccccccd 	.word	0xcccccccd

3000aec8 <DiagPrintfNano>:
3000aec8:	b40f      	push	{r0, r1, r2, r3}
3000aeca:	b500      	push	{lr}
3000aecc:	b083      	sub	sp, #12
3000aece:	a904      	add	r1, sp, #16
3000aed0:	f851 0b04 	ldr.w	r0, [r1], #4
3000aed4:	9101      	str	r1, [sp, #4]
3000aed6:	f7ff fe0f 	bl	3000aaf8 <DiagVprintfNano>
3000aeda:	b003      	add	sp, #12
3000aedc:	f85d eb04 	ldr.w	lr, [sp], #4
3000aee0:	b004      	add	sp, #16
3000aee2:	4770      	bx	lr

3000aee4 <io_assert_failed>:
3000aee4:	460c      	mov	r4, r1
3000aee6:	4b05      	ldr	r3, [pc, #20]	; (3000aefc <io_assert_failed+0x18>)
3000aee8:	2245      	movs	r2, #69	; 0x45
3000aeea:	4905      	ldr	r1, [pc, #20]	; (3000af00 <io_assert_failed+0x1c>)
3000aeec:	b500      	push	{lr}
3000aeee:	b083      	sub	sp, #12
3000aef0:	e9cd 0400 	strd	r0, r4, [sp]
3000aef4:	2002      	movs	r0, #2
3000aef6:	f7fe fa39 	bl	3000936c <rtk_log_write_nano>
3000aefa:	e7fe      	b.n	3000aefa <io_assert_failed+0x16>
3000aefc:	3000d808 	.word	0x3000d808
3000af00:	3000b818 	.word	0x3000b818

3000af04 <CRYPTO_SetSecurityModeAD>:
3000af04:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
3000af08:	b082      	sub	sp, #8
3000af0a:	e9dd 7609 	ldrd	r7, r6, [sp, #36]	; 0x24
3000af0e:	2800      	cmp	r0, #0
3000af10:	f000 80ab 	beq.w	3000b06a <CRYPTO_SetSecurityModeAD+0x166>
3000af14:	4698      	mov	r8, r3
3000af16:	7803      	ldrb	r3, [r0, #0]
3000af18:	4604      	mov	r4, r0
3000af1a:	2b01      	cmp	r3, #1
3000af1c:	f040 80aa 	bne.w	3000b074 <CRYPTO_SetSecurityModeAD+0x170>
3000af20:	4615      	mov	r5, r2
3000af22:	2200      	movs	r2, #0
3000af24:	6041      	str	r1, [r0, #4]
3000af26:	8102      	strh	r2, [r0, #8]
3000af28:	1c4a      	adds	r2, r1, #1
3000af2a:	d009      	beq.n	3000af40 <CRYPTO_SetSecurityModeAD+0x3c>
3000af2c:	f001 0230 	and.w	r2, r1, #48	; 0x30
3000af30:	f081 0180 	eor.w	r1, r1, #128	; 0x80
3000af34:	2a20      	cmp	r2, #32
3000af36:	f3c1 11c0 	ubfx	r1, r1, #7, #1
3000af3a:	bf08      	it	eq
3000af3c:	7203      	strbeq	r3, [r0, #8]
3000af3e:	7241      	strb	r1, [r0, #9]
3000af40:	1c6b      	adds	r3, r5, #1
3000af42:	60e5      	str	r5, [r4, #12]
3000af44:	d069      	beq.n	3000b01a <CRYPTO_SetSecurityModeAD+0x116>
3000af46:	f005 0303 	and.w	r3, r5, #3
3000af4a:	f3c5 0280 	ubfx	r2, r5, #2, #1
3000af4e:	7422      	strb	r2, [r4, #16]
3000af50:	f1a3 0202 	sub.w	r2, r3, #2
3000af54:	2b01      	cmp	r3, #1
3000af56:	fab2 f282 	clz	r2, r2
3000af5a:	ea4f 1252 	mov.w	r2, r2, lsr #5
3000af5e:	7462      	strb	r2, [r4, #17]
3000af60:	fab3 f283 	clz	r2, r3
3000af64:	ea4f 1252 	mov.w	r2, r2, lsr #5
3000af68:	74a2      	strb	r2, [r4, #18]
3000af6a:	bf0c      	ite	eq
3000af6c:	2201      	moveq	r2, #1
3000af6e:	2200      	movne	r2, #0
3000af70:	74e2      	strb	r2, [r4, #19]
3000af72:	d03f      	beq.n	3000aff4 <CRYPTO_SetSecurityModeAD+0xf0>
3000af74:	2200      	movs	r2, #0
3000af76:	7522      	strb	r2, [r4, #20]
3000af78:	2b00      	cmp	r3, #0
3000af7a:	d149      	bne.n	3000b010 <CRYPTO_SetSecurityModeAD+0x10c>
3000af7c:	2314      	movs	r3, #20
3000af7e:	62a3      	str	r3, [r4, #40]	; 0x28
3000af80:	9b08      	ldr	r3, [sp, #32]
3000af82:	6226      	str	r6, [r4, #32]
3000af84:	e9c4 3811 	strd	r3, r8, [r4, #68]	; 0x44
3000af88:	2e00      	cmp	r6, #0
3000af8a:	d03e      	beq.n	3000b00a <CRYPTO_SetSecurityModeAD+0x106>
3000af8c:	7d23      	ldrb	r3, [r4, #20]
3000af8e:	f104 0064 	add.w	r0, r4, #100	; 0x64
3000af92:	2b30      	cmp	r3, #48	; 0x30
3000af94:	65e0      	str	r0, [r4, #92]	; 0x5c
3000af96:	d04b      	beq.n	3000b030 <CRYPTO_SetSecurityModeAD+0x12c>
3000af98:	2b40      	cmp	r3, #64	; 0x40
3000af9a:	d049      	beq.n	3000b030 <CRYPTO_SetSecurityModeAD+0x12c>
3000af9c:	f104 03a4 	add.w	r3, r4, #164	; 0xa4
3000afa0:	2240      	movs	r2, #64	; 0x40
3000afa2:	2136      	movs	r1, #54	; 0x36
3000afa4:	f8df 80f0 	ldr.w	r8, [pc, #240]	; 3000b098 <CRYPTO_SetSecurityModeAD+0x194>
3000afa8:	6623      	str	r3, [r4, #96]	; 0x60
3000afaa:	47c0      	blx	r8
3000afac:	2240      	movs	r2, #64	; 0x40
3000afae:	215c      	movs	r1, #92	; 0x5c
3000afb0:	6e20      	ldr	r0, [r4, #96]	; 0x60
3000afb2:	47c0      	blx	r8
3000afb4:	4b34      	ldr	r3, [pc, #208]	; (3000b088 <CRYPTO_SetSecurityModeAD+0x184>)
3000afb6:	681b      	ldr	r3, [r3, #0]
3000afb8:	b993      	cbnz	r3, 3000afe0 <CRYPTO_SetSecurityModeAD+0xdc>
3000afba:	2f00      	cmp	r7, #0
3000afbc:	d05f      	beq.n	3000b07e <CRYPTO_SetSecurityModeAD+0x17a>
3000afbe:	6267      	str	r7, [r4, #36]	; 0x24
3000afc0:	e000      	b.n	3000afc4 <CRYPTO_SetSecurityModeAD+0xc0>
3000afc2:	6a67      	ldr	r7, [r4, #36]	; 0x24
3000afc4:	6de1      	ldr	r1, [r4, #92]	; 0x5c
3000afc6:	5cfa      	ldrb	r2, [r7, r3]
3000afc8:	5cc8      	ldrb	r0, [r1, r3]
3000afca:	4042      	eors	r2, r0
3000afcc:	54ca      	strb	r2, [r1, r3]
3000afce:	6e21      	ldr	r1, [r4, #96]	; 0x60
3000afd0:	6a62      	ldr	r2, [r4, #36]	; 0x24
3000afd2:	5cc8      	ldrb	r0, [r1, r3]
3000afd4:	5cd2      	ldrb	r2, [r2, r3]
3000afd6:	4042      	eors	r2, r0
3000afd8:	54ca      	strb	r2, [r1, r3]
3000afda:	3301      	adds	r3, #1
3000afdc:	429e      	cmp	r6, r3
3000afde:	d1f0      	bne.n	3000afc2 <CRYPTO_SetSecurityModeAD+0xbe>
3000afe0:	3501      	adds	r5, #1
3000afe2:	d003      	beq.n	3000afec <CRYPTO_SetSecurityModeAD+0xe8>
3000afe4:	2201      	movs	r2, #1
3000afe6:	2300      	movs	r3, #0
3000afe8:	85a2      	strh	r2, [r4, #44]	; 0x2c
3000afea:	6323      	str	r3, [r4, #48]	; 0x30
3000afec:	2000      	movs	r0, #0
3000afee:	b002      	add	sp, #8
3000aff0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
3000aff4:	f005 03f0 	and.w	r3, r5, #240	; 0xf0
3000aff8:	2b40      	cmp	r3, #64	; 0x40
3000affa:	d033      	beq.n	3000b064 <CRYPTO_SetSecurityModeAD+0x160>
3000affc:	d813      	bhi.n	3000b026 <CRYPTO_SetSecurityModeAD+0x122>
3000affe:	2b10      	cmp	r3, #16
3000b000:	d023      	beq.n	3000b04a <CRYPTO_SetSecurityModeAD+0x146>
3000b002:	2b20      	cmp	r3, #32
3000b004:	d124      	bne.n	3000b050 <CRYPTO_SetSecurityModeAD+0x14c>
3000b006:	7523      	strb	r3, [r4, #20]
3000b008:	e00b      	b.n	3000b022 <CRYPTO_SetSecurityModeAD+0x11e>
3000b00a:	e9c4 6617 	strd	r6, r6, [r4, #92]	; 0x5c
3000b00e:	e7e7      	b.n	3000afe0 <CRYPTO_SetSecurityModeAD+0xdc>
3000b010:	2b02      	cmp	r3, #2
3000b012:	d105      	bne.n	3000b020 <CRYPTO_SetSecurityModeAD+0x11c>
3000b014:	2310      	movs	r3, #16
3000b016:	62a3      	str	r3, [r4, #40]	; 0x28
3000b018:	e7b2      	b.n	3000af80 <CRYPTO_SetSecurityModeAD+0x7c>
3000b01a:	2300      	movs	r3, #0
3000b01c:	6123      	str	r3, [r4, #16]
3000b01e:	7523      	strb	r3, [r4, #20]
3000b020:	2300      	movs	r3, #0
3000b022:	62a3      	str	r3, [r4, #40]	; 0x28
3000b024:	e7ac      	b.n	3000af80 <CRYPTO_SetSecurityModeAD+0x7c>
3000b026:	2b80      	cmp	r3, #128	; 0x80
3000b028:	d112      	bne.n	3000b050 <CRYPTO_SetSecurityModeAD+0x14c>
3000b02a:	2340      	movs	r3, #64	; 0x40
3000b02c:	7523      	strb	r3, [r4, #20]
3000b02e:	e7f8      	b.n	3000b022 <CRYPTO_SetSecurityModeAD+0x11e>
3000b030:	f104 03e4 	add.w	r3, r4, #228	; 0xe4
3000b034:	2280      	movs	r2, #128	; 0x80
3000b036:	2136      	movs	r1, #54	; 0x36
3000b038:	f8df 805c 	ldr.w	r8, [pc, #92]	; 3000b098 <CRYPTO_SetSecurityModeAD+0x194>
3000b03c:	6623      	str	r3, [r4, #96]	; 0x60
3000b03e:	47c0      	blx	r8
3000b040:	2280      	movs	r2, #128	; 0x80
3000b042:	215c      	movs	r1, #92	; 0x5c
3000b044:	6e20      	ldr	r0, [r4, #96]	; 0x60
3000b046:	47c0      	blx	r8
3000b048:	e7b4      	b.n	3000afb4 <CRYPTO_SetSecurityModeAD+0xb0>
3000b04a:	231c      	movs	r3, #28
3000b04c:	7523      	strb	r3, [r4, #20]
3000b04e:	e7e8      	b.n	3000b022 <CRYPTO_SetSecurityModeAD+0x11e>
3000b050:	4b0e      	ldr	r3, [pc, #56]	; (3000b08c <CRYPTO_SetSecurityModeAD+0x188>)
3000b052:	2245      	movs	r2, #69	; 0x45
3000b054:	490e      	ldr	r1, [pc, #56]	; (3000b090 <CRYPTO_SetSecurityModeAD+0x18c>)
3000b056:	2002      	movs	r0, #2
3000b058:	9500      	str	r5, [sp, #0]
3000b05a:	f7fe f95f 	bl	3000931c <rtk_log_write>
3000b05e:	2300      	movs	r3, #0
3000b060:	7523      	strb	r3, [r4, #20]
3000b062:	e7de      	b.n	3000b022 <CRYPTO_SetSecurityModeAD+0x11e>
3000b064:	2330      	movs	r3, #48	; 0x30
3000b066:	7523      	strb	r3, [r4, #20]
3000b068:	e7db      	b.n	3000b022 <CRYPTO_SetSecurityModeAD+0x11e>
3000b06a:	f240 1137 	movw	r1, #311	; 0x137
3000b06e:	4809      	ldr	r0, [pc, #36]	; (3000b094 <CRYPTO_SetSecurityModeAD+0x190>)
3000b070:	f7ff ff38 	bl	3000aee4 <io_assert_failed>
3000b074:	f44f 719c 	mov.w	r1, #312	; 0x138
3000b078:	4806      	ldr	r0, [pc, #24]	; (3000b094 <CRYPTO_SetSecurityModeAD+0x190>)
3000b07a:	f7ff ff33 	bl	3000aee4 <io_assert_failed>
3000b07e:	f240 1193 	movw	r1, #403	; 0x193
3000b082:	4804      	ldr	r0, [pc, #16]	; (3000b094 <CRYPTO_SetSecurityModeAD+0x190>)
3000b084:	f7ff ff2e 	bl	3000aee4 <io_assert_failed>
3000b088:	2001c200 	.word	0x2001c200
3000b08c:	3000d8cc 	.word	0x3000d8cc
3000b090:	3000d778 	.word	0x3000d778
3000b094:	3000d83c 	.word	0x3000d83c
3000b098:	00012be5 	.word	0x00012be5

3000b09c <rtl_crypto_hmac_sha2_init>:
3000b09c:	b570      	push	{r4, r5, r6, lr}
3000b09e:	4c94      	ldr	r4, [pc, #592]	; (3000b2f0 <rtl_crypto_hmac_sha2_init+0x254>)
3000b0a0:	460d      	mov	r5, r1
3000b0a2:	e844 f400 	tt	r4, r4
3000b0a6:	4611      	mov	r1, r2
3000b0a8:	f414 0f80 	tst.w	r4, #4194304	; 0x400000
3000b0ac:	4a91      	ldr	r2, [pc, #580]	; (3000b2f4 <rtl_crypto_hmac_sha2_init+0x258>)
3000b0ae:	461c      	mov	r4, r3
3000b0b0:	4b91      	ldr	r3, [pc, #580]	; (3000b2f8 <rtl_crypto_hmac_sha2_init+0x25c>)
3000b0b2:	b084      	sub	sp, #16
3000b0b4:	bf18      	it	ne
3000b0b6:	4613      	movne	r3, r2
3000b0b8:	6b5b      	ldr	r3, [r3, #52]	; 0x34
3000b0ba:	2b00      	cmp	r3, #0
3000b0bc:	db05      	blt.n	3000b0ca <rtl_crypto_hmac_sha2_init+0x2e>
3000b0be:	2d00      	cmp	r5, #0
3000b0c0:	f000 8109 	beq.w	3000b2d6 <rtl_crypto_hmac_sha2_init+0x23a>
3000b0c4:	07ae      	lsls	r6, r5, #30
3000b0c6:	f040 8103 	bne.w	3000b2d0 <rtl_crypto_hmac_sha2_init+0x234>
3000b0ca:	2820      	cmp	r0, #32
3000b0cc:	bf18      	it	ne
3000b0ce:	281c      	cmpne	r0, #28
3000b0d0:	bf0c      	ite	eq
3000b0d2:	2301      	moveq	r3, #1
3000b0d4:	2300      	movne	r3, #0
3000b0d6:	d02e      	beq.n	3000b136 <rtl_crypto_hmac_sha2_init+0x9a>
3000b0d8:	2840      	cmp	r0, #64	; 0x40
3000b0da:	bf18      	it	ne
3000b0dc:	2830      	cmpne	r0, #48	; 0x30
3000b0de:	d102      	bne.n	3000b0e6 <rtl_crypto_hmac_sha2_init+0x4a>
3000b0e0:	2980      	cmp	r1, #128	; 0x80
3000b0e2:	f200 8100 	bhi.w	3000b2e6 <rtl_crypto_hmac_sha2_init+0x24a>
3000b0e6:	4e85      	ldr	r6, [pc, #532]	; (3000b2fc <rtl_crypto_hmac_sha2_init+0x260>)
3000b0e8:	7832      	ldrb	r2, [r6, #0]
3000b0ea:	2a01      	cmp	r2, #1
3000b0ec:	f040 80f6 	bne.w	3000b2dc <rtl_crypto_hmac_sha2_init+0x240>
3000b0f0:	2830      	cmp	r0, #48	; 0x30
3000b0f2:	f000 80b4 	beq.w	3000b25e <rtl_crypto_hmac_sha2_init+0x1c2>
3000b0f6:	d825      	bhi.n	3000b144 <rtl_crypto_hmac_sha2_init+0xa8>
3000b0f8:	281c      	cmp	r0, #28
3000b0fa:	f000 8091 	beq.w	3000b220 <rtl_crypto_hmac_sha2_init+0x184>
3000b0fe:	2b00      	cmp	r3, #0
3000b100:	d075      	beq.n	3000b1ee <rtl_crypto_hmac_sha2_init+0x152>
3000b102:	2c00      	cmp	r4, #0
3000b104:	d078      	beq.n	3000b1f8 <rtl_crypto_hmac_sha2_init+0x15c>
3000b106:	4a7e      	ldr	r2, [pc, #504]	; (3000b300 <rtl_crypto_hmac_sha2_init+0x264>)
3000b108:	4b7e      	ldr	r3, [pc, #504]	; (3000b304 <rtl_crypto_hmac_sha2_init+0x268>)
3000b10a:	487f      	ldr	r0, [pc, #508]	; (3000b308 <rtl_crypto_hmac_sha2_init+0x26c>)
3000b10c:	f8df c218 	ldr.w	ip, [pc, #536]	; 3000b328 <rtl_crypto_hmac_sha2_init+0x28c>
3000b110:	e9c4 2302 	strd	r2, r3, [r4, #8]
3000b114:	4b7d      	ldr	r3, [pc, #500]	; (3000b30c <rtl_crypto_hmac_sha2_init+0x270>)
3000b116:	2225      	movs	r2, #37	; 0x25
3000b118:	e9c4 0304 	strd	r0, r3, [r4, #16]
3000b11c:	4b7c      	ldr	r3, [pc, #496]	; (3000b310 <rtl_crypto_hmac_sha2_init+0x274>)
3000b11e:	e9c4 c306 	strd	ip, r3, [r4, #24]
3000b122:	4b7c      	ldr	r3, [pc, #496]	; (3000b314 <rtl_crypto_hmac_sha2_init+0x278>)
3000b124:	6223      	str	r3, [r4, #32]
3000b126:	f103 5374 	add.w	r3, r3, #1023410176	; 0x3d000000
3000b12a:	f5a3 0323 	sub.w	r3, r3, #10682368	; 0xa30000
3000b12e:	f6a3 4392 	subw	r3, r3, #3218	; 0xc92
3000b132:	6263      	str	r3, [r4, #36]	; 0x24
3000b134:	e044      	b.n	3000b1c0 <rtl_crypto_hmac_sha2_init+0x124>
3000b136:	2940      	cmp	r1, #64	; 0x40
3000b138:	d9d5      	bls.n	3000b0e6 <rtl_crypto_hmac_sha2_init+0x4a>
3000b13a:	f240 11c1 	movw	r1, #449	; 0x1c1
3000b13e:	4876      	ldr	r0, [pc, #472]	; (3000b318 <rtl_crypto_hmac_sha2_init+0x27c>)
3000b140:	f7ff fed0 	bl	3000aee4 <io_assert_failed>
3000b144:	2840      	cmp	r0, #64	; 0x40
3000b146:	d152      	bne.n	3000b1ee <rtl_crypto_hmac_sha2_init+0x152>
3000b148:	2c00      	cmp	r4, #0
3000b14a:	d067      	beq.n	3000b21c <rtl_crypto_hmac_sha2_init+0x180>
3000b14c:	4b6c      	ldr	r3, [pc, #432]	; (3000b300 <rtl_crypto_hmac_sha2_init+0x264>)
3000b14e:	4a73      	ldr	r2, [pc, #460]	; (3000b31c <rtl_crypto_hmac_sha2_init+0x280>)
3000b150:	4873      	ldr	r0, [pc, #460]	; (3000b320 <rtl_crypto_hmac_sha2_init+0x284>)
3000b152:	f8df e21c 	ldr.w	lr, [pc, #540]	; 3000b370 <rtl_crypto_hmac_sha2_init+0x2d4>
3000b156:	e9c4 3202 	strd	r3, r2, [r4, #8]
3000b15a:	f103 53d6 	add.w	r3, r3, #448790528	; 0x1ac00000
3000b15e:	4a71      	ldr	r2, [pc, #452]	; (3000b324 <rtl_crypto_hmac_sha2_init+0x288>)
3000b160:	f503 4340 	add.w	r3, r3, #49152	; 0xc000
3000b164:	33d4      	adds	r3, #212	; 0xd4
3000b166:	6163      	str	r3, [r4, #20]
3000b168:	f103 535a 	add.w	r3, r3, #914358272	; 0x36800000
3000b16c:	f503 13e8 	add.w	r3, r3, #1900544	; 0x1d0000
3000b170:	f203 734a 	addw	r3, r3, #1866	; 0x74a
3000b174:	6123      	str	r3, [r4, #16]
3000b176:	4b64      	ldr	r3, [pc, #400]	; (3000b308 <rtl_crypto_hmac_sha2_init+0x26c>)
3000b178:	e9c4 3006 	strd	r3, r0, [r4, #24]
3000b17c:	f103 530a 	add.w	r3, r3, #578813952	; 0x22800000
3000b180:	f503 1339 	add.w	r3, r3, #3031040	; 0x2e4000
3000b184:	f203 337f 	addw	r3, r3, #895	; 0x37f
3000b188:	6263      	str	r3, [r4, #36]	; 0x24
3000b18a:	4b60      	ldr	r3, [pc, #384]	; (3000b30c <rtl_crypto_hmac_sha2_init+0x270>)
3000b18c:	6223      	str	r3, [r4, #32]
3000b18e:	f103 6309 	add.w	r3, r3, #143654912	; 0x8900000
3000b192:	f503 23d1 	add.w	r3, r3, #428032	; 0x68800
3000b196:	f203 5397 	addw	r3, r3, #1431	; 0x597
3000b19a:	62e3      	str	r3, [r4, #44]	; 0x2c
3000b19c:	4b62      	ldr	r3, [pc, #392]	; (3000b328 <rtl_crypto_hmac_sha2_init+0x28c>)
3000b19e:	62a3      	str	r3, [r4, #40]	; 0x28
3000b1a0:	f103 435a 	add.w	r3, r3, #3657433088	; 0xda000000
3000b1a4:	f503 1340 	add.w	r3, r3, #3145728	; 0x300000
3000b1a8:	f503 53cd 	add.w	r3, r3, #6560	; 0x19a0
3000b1ac:	6363      	str	r3, [r4, #52]	; 0x34
3000b1ae:	4b58      	ldr	r3, [pc, #352]	; (3000b310 <rtl_crypto_hmac_sha2_init+0x274>)
3000b1b0:	6323      	str	r3, [r4, #48]	; 0x30
3000b1b2:	4b58      	ldr	r3, [pc, #352]	; (3000b314 <rtl_crypto_hmac_sha2_init+0x278>)
3000b1b4:	e9c4 3e0e 	strd	r3, lr, [r4, #56]	; 0x38
3000b1b8:	4b5c      	ldr	r3, [pc, #368]	; (3000b32c <rtl_crypto_hmac_sha2_init+0x290>)
3000b1ba:	e9c4 3210 	strd	r3, r2, [r4, #64]	; 0x40
3000b1be:	2285      	movs	r2, #133	; 0x85
3000b1c0:	2300      	movs	r3, #0
3000b1c2:	9102      	str	r1, [sp, #8]
3000b1c4:	9501      	str	r5, [sp, #4]
3000b1c6:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
3000b1ca:	9300      	str	r3, [sp, #0]
3000b1cc:	4d58      	ldr	r5, [pc, #352]	; (3000b330 <rtl_crypto_hmac_sha2_init+0x294>)
3000b1ce:	484b      	ldr	r0, [pc, #300]	; (3000b2fc <rtl_crypto_hmac_sha2_init+0x260>)
3000b1d0:	f886 3034 	strb.w	r3, [r6, #52]	; 0x34
3000b1d4:	f886 3040 	strb.w	r3, [r6, #64]	; 0x40
3000b1d8:	47a8      	blx	r5
3000b1da:	4605      	mov	r5, r0
3000b1dc:	4b55      	ldr	r3, [pc, #340]	; (3000b334 <rtl_crypto_hmac_sha2_init+0x298>)
3000b1de:	4620      	mov	r0, r4
3000b1e0:	4798      	blx	r3
3000b1e2:	2301      	movs	r3, #1
3000b1e4:	4628      	mov	r0, r5
3000b1e6:	f884 304b 	strb.w	r3, [r4, #75]	; 0x4b
3000b1ea:	b004      	add	sp, #16
3000b1ec:	bd70      	pop	{r4, r5, r6, pc}
3000b1ee:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
3000b1f2:	4628      	mov	r0, r5
3000b1f4:	b004      	add	sp, #16
3000b1f6:	bd70      	pop	{r4, r5, r6, pc}
3000b1f8:	2225      	movs	r2, #37	; 0x25
3000b1fa:	2300      	movs	r3, #0
3000b1fc:	9102      	str	r1, [sp, #8]
3000b1fe:	4c4c      	ldr	r4, [pc, #304]	; (3000b330 <rtl_crypto_hmac_sha2_init+0x294>)
3000b200:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
3000b204:	483d      	ldr	r0, [pc, #244]	; (3000b2fc <rtl_crypto_hmac_sha2_init+0x260>)
3000b206:	f886 3034 	strb.w	r3, [r6, #52]	; 0x34
3000b20a:	f886 3040 	strb.w	r3, [r6, #64]	; 0x40
3000b20e:	e9cd 3500 	strd	r3, r5, [sp]
3000b212:	47a0      	blx	r4
3000b214:	4605      	mov	r5, r0
3000b216:	4628      	mov	r0, r5
3000b218:	b004      	add	sp, #16
3000b21a:	bd70      	pop	{r4, r5, r6, pc}
3000b21c:	2285      	movs	r2, #133	; 0x85
3000b21e:	e7ec      	b.n	3000b1fa <rtl_crypto_hmac_sha2_init+0x15e>
3000b220:	2c00      	cmp	r4, #0
3000b222:	d051      	beq.n	3000b2c8 <rtl_crypto_hmac_sha2_init+0x22c>
3000b224:	4b44      	ldr	r3, [pc, #272]	; (3000b338 <rtl_crypto_hmac_sha2_init+0x29c>)
3000b226:	f8df e128 	ldr.w	lr, [pc, #296]	; 3000b350 <rtl_crypto_hmac_sha2_init+0x2b4>
3000b22a:	4a44      	ldr	r2, [pc, #272]	; (3000b33c <rtl_crypto_hmac_sha2_init+0x2a0>)
3000b22c:	4844      	ldr	r0, [pc, #272]	; (3000b340 <rtl_crypto_hmac_sha2_init+0x2a4>)
3000b22e:	e9c4 e302 	strd	lr, r3, [r4, #8]
3000b232:	f103 4379 	add.w	r3, r3, #4177526784	; 0xf9000000
3000b236:	f503 0374 	add.w	r3, r3, #15990784	; 0xf40000
3000b23a:	f503 6301 	add.w	r3, r3, #2064	; 0x810
3000b23e:	6123      	str	r3, [r4, #16]
3000b240:	4b40      	ldr	r3, [pc, #256]	; (3000b344 <rtl_crypto_hmac_sha2_init+0x2a8>)
3000b242:	e9c4 2305 	strd	r2, r3, [r4, #20]
3000b246:	f103 43d1 	add.w	r3, r3, #1753219072	; 0x68800000
3000b24a:	2215      	movs	r2, #21
3000b24c:	f503 13c0 	add.w	r3, r3, #1572864	; 0x180000
3000b250:	f503 631e 	add.w	r3, r3, #2528	; 0x9e0
3000b254:	61e3      	str	r3, [r4, #28]
3000b256:	4b3c      	ldr	r3, [pc, #240]	; (3000b348 <rtl_crypto_hmac_sha2_init+0x2ac>)
3000b258:	e9c4 0308 	strd	r0, r3, [r4, #32]
3000b25c:	e7b0      	b.n	3000b1c0 <rtl_crypto_hmac_sha2_init+0x124>
3000b25e:	2c00      	cmp	r4, #0
3000b260:	d034      	beq.n	3000b2cc <rtl_crypto_hmac_sha2_init+0x230>
3000b262:	4b3a      	ldr	r3, [pc, #232]	; (3000b34c <rtl_crypto_hmac_sha2_init+0x2b0>)
3000b264:	483a      	ldr	r0, [pc, #232]	; (3000b350 <rtl_crypto_hmac_sha2_init+0x2b4>)
3000b266:	f8df e0d4 	ldr.w	lr, [pc, #212]	; 3000b33c <rtl_crypto_hmac_sha2_init+0x2a0>
3000b26a:	4a36      	ldr	r2, [pc, #216]	; (3000b344 <rtl_crypto_hmac_sha2_init+0x2a8>)
3000b26c:	f8df c0d0 	ldr.w	ip, [pc, #208]	; 3000b340 <rtl_crypto_hmac_sha2_init+0x2a4>
3000b270:	e9c4 3002 	strd	r3, r0, [r4, #8]
3000b274:	f103 43d6 	add.w	r3, r3, #1795162112	; 0x6b000000
3000b278:	f5a3 137b 	sub.w	r3, r3, #4112384	; 0x3ec000
3000b27c:	f6a3 0356 	subw	r3, r3, #2134	; 0x856
3000b280:	6163      	str	r3, [r4, #20]
3000b282:	4b34      	ldr	r3, [pc, #208]	; (3000b354 <rtl_crypto_hmac_sha2_init+0x2b8>)
3000b284:	6123      	str	r3, [r4, #16]
3000b286:	f103 434e 	add.w	r3, r3, #3456106496	; 0xce000000
3000b28a:	f5a3 1325 	sub.w	r3, r3, #2703360	; 0x294000
3000b28e:	f6a3 4313 	subw	r3, r3, #3091	; 0xc13
3000b292:	61e3      	str	r3, [r4, #28]
3000b294:	4b30      	ldr	r3, [pc, #192]	; (3000b358 <rtl_crypto_hmac_sha2_init+0x2bc>)
3000b296:	61a3      	str	r3, [r4, #24]
3000b298:	4b30      	ldr	r3, [pc, #192]	; (3000b35c <rtl_crypto_hmac_sha2_init+0x2c0>)
3000b29a:	e9c4 3e08 	strd	r3, lr, [r4, #32]
3000b29e:	4b30      	ldr	r3, [pc, #192]	; (3000b360 <rtl_crypto_hmac_sha2_init+0x2c4>)
3000b2a0:	f8df e0a4 	ldr.w	lr, [pc, #164]	; 3000b348 <rtl_crypto_hmac_sha2_init+0x2ac>
3000b2a4:	e9c4 320a 	strd	r3, r2, [r4, #40]	; 0x28
3000b2a8:	f103 7392 	add.w	r3, r3, #19136512	; 0x1240000
3000b2ac:	2245      	movs	r2, #69	; 0x45
3000b2ae:	f503 436e 	add.w	r3, r3, #60928	; 0xee00
3000b2b2:	33aa      	adds	r3, #170	; 0xaa
3000b2b4:	6363      	str	r3, [r4, #52]	; 0x34
3000b2b6:	4b2b      	ldr	r3, [pc, #172]	; (3000b364 <rtl_crypto_hmac_sha2_init+0x2c8>)
3000b2b8:	6323      	str	r3, [r4, #48]	; 0x30
3000b2ba:	4b2b      	ldr	r3, [pc, #172]	; (3000b368 <rtl_crypto_hmac_sha2_init+0x2cc>)
3000b2bc:	e9c4 3c0e 	strd	r3, ip, [r4, #56]	; 0x38
3000b2c0:	4b2a      	ldr	r3, [pc, #168]	; (3000b36c <rtl_crypto_hmac_sha2_init+0x2d0>)
3000b2c2:	e9c4 3e10 	strd	r3, lr, [r4, #64]	; 0x40
3000b2c6:	e77b      	b.n	3000b1c0 <rtl_crypto_hmac_sha2_init+0x124>
3000b2c8:	2215      	movs	r2, #21
3000b2ca:	e796      	b.n	3000b1fa <rtl_crypto_hmac_sha2_init+0x15e>
3000b2cc:	2245      	movs	r2, #69	; 0x45
3000b2ce:	e794      	b.n	3000b1fa <rtl_crypto_hmac_sha2_init+0x15e>
3000b2d0:	f06f 0505 	mvn.w	r5, #5
3000b2d4:	e78d      	b.n	3000b1f2 <rtl_crypto_hmac_sha2_init+0x156>
3000b2d6:	f06f 0503 	mvn.w	r5, #3
3000b2da:	e78a      	b.n	3000b1f2 <rtl_crypto_hmac_sha2_init+0x156>
3000b2dc:	f240 11c7 	movw	r1, #455	; 0x1c7
3000b2e0:	480d      	ldr	r0, [pc, #52]	; (3000b318 <rtl_crypto_hmac_sha2_init+0x27c>)
3000b2e2:	f7ff fdff 	bl	3000aee4 <io_assert_failed>
3000b2e6:	f44f 71e2 	mov.w	r1, #452	; 0x1c4
3000b2ea:	480b      	ldr	r0, [pc, #44]	; (3000b318 <rtl_crypto_hmac_sha2_init+0x27c>)
3000b2ec:	f7ff fdfa 	bl	3000aee4 <io_assert_failed>
3000b2f0:	3000aadd 	.word	0x3000aadd
3000b2f4:	500c8000 	.word	0x500c8000
3000b2f8:	400c8000 	.word	0x400c8000
3000b2fc:	2001c460 	.word	0x2001c460
3000b300:	6a09e667 	.word	0x6a09e667
3000b304:	bb67ae85 	.word	0xbb67ae85
3000b308:	3c6ef372 	.word	0x3c6ef372
3000b30c:	a54ff53a 	.word	0xa54ff53a
3000b310:	9b05688c 	.word	0x9b05688c
3000b314:	1f83d9ab 	.word	0x1f83d9ab
3000b318:	3000d83c 	.word	0x3000d83c
3000b31c:	f3bcc908 	.word	0xf3bcc908
3000b320:	fe94f82b 	.word	0xfe94f82b
3000b324:	137e2179 	.word	0x137e2179
3000b328:	510e527f 	.word	0x510e527f
3000b32c:	5be0cd19 	.word	0x5be0cd19
3000b330:	3000af05 	.word	0x3000af05
3000b334:	00004c99 	.word	0x00004c99
3000b338:	367cd507 	.word	0x367cd507
3000b33c:	f70e5939 	.word	0xf70e5939
3000b340:	64f98fa7 	.word	0x64f98fa7
3000b344:	ffc00b31 	.word	0xffc00b31
3000b348:	befa4fa4 	.word	0xbefa4fa4
3000b34c:	cbbb9d5d 	.word	0xcbbb9d5d
3000b350:	c1059ed8 	.word	0xc1059ed8
3000b354:	629a292a 	.word	0x629a292a
3000b358:	9159015a 	.word	0x9159015a
3000b35c:	152fecd8 	.word	0x152fecd8
3000b360:	67332667 	.word	0x67332667
3000b364:	8eb44a87 	.word	0x8eb44a87
3000b368:	db0c2e0d 	.word	0xdb0c2e0d
3000b36c:	47b5481d 	.word	0x47b5481d
3000b370:	fb41bd6b 	.word	0xfb41bd6b

3000b374 <RSIP_OTF_Enable>:
3000b374:	b1c3      	cbz	r3, 3000b3a8 <RSIP_OTF_Enable+0x34>
3000b376:	b510      	push	{r4, lr}
3000b378:	9b02      	ldr	r3, [sp, #8]
3000b37a:	2b07      	cmp	r3, #7
3000b37c:	d81c      	bhi.n	3000b3b8 <RSIP_OTF_Enable+0x44>
3000b37e:	9b03      	ldr	r3, [sp, #12]
3000b380:	3b01      	subs	r3, #1
3000b382:	2b01      	cmp	r3, #1
3000b384:	d81d      	bhi.n	3000b3c2 <RSIP_OTF_Enable+0x4e>
3000b386:	4b11      	ldr	r3, [pc, #68]	; (3000b3cc <RSIP_OTF_Enable+0x58>)
3000b388:	9c03      	ldr	r4, [sp, #12]
3000b38a:	eb03 00c0 	add.w	r0, r3, r0, lsl #3
3000b38e:	ea42 0244 	orr.w	r2, r2, r4, lsl #1
3000b392:	9c02      	ldr	r4, [sp, #8]
3000b394:	6c43      	ldr	r3, [r0, #68]	; 0x44
3000b396:	4321      	orrs	r1, r4
3000b398:	f042 0201 	orr.w	r2, r2, #1
3000b39c:	f023 0301 	bic.w	r3, r3, #1
3000b3a0:	6443      	str	r3, [r0, #68]	; 0x44
3000b3a2:	6401      	str	r1, [r0, #64]	; 0x40
3000b3a4:	6442      	str	r2, [r0, #68]	; 0x44
3000b3a6:	bd10      	pop	{r4, pc}
3000b3a8:	4b08      	ldr	r3, [pc, #32]	; (3000b3cc <RSIP_OTF_Enable+0x58>)
3000b3aa:	eb03 00c0 	add.w	r0, r3, r0, lsl #3
3000b3ae:	6c43      	ldr	r3, [r0, #68]	; 0x44
3000b3b0:	f023 0301 	bic.w	r3, r3, #1
3000b3b4:	6443      	str	r3, [r0, #68]	; 0x44
3000b3b6:	4770      	bx	lr
3000b3b8:	f240 31b5 	movw	r1, #949	; 0x3b5
3000b3bc:	4804      	ldr	r0, [pc, #16]	; (3000b3d0 <RSIP_OTF_Enable+0x5c>)
3000b3be:	f7ff fd91 	bl	3000aee4 <io_assert_failed>
3000b3c2:	f240 31b6 	movw	r1, #950	; 0x3b6
3000b3c6:	4802      	ldr	r0, [pc, #8]	; (3000b3d0 <RSIP_OTF_Enable+0x5c>)
3000b3c8:	f7ff fd8c 	bl	3000aee4 <io_assert_failed>
3000b3cc:	42008c00 	.word	0x42008c00
3000b3d0:	3000d83c 	.word	0x3000d83c

3000b3d4 <BOOT_VerCheck>:
3000b3d4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
3000b3d8:	4b20      	ldr	r3, [pc, #128]	; (3000b45c <BOOT_VerCheck+0x88>)
3000b3da:	4798      	blx	r3
3000b3dc:	b108      	cbz	r0, 3000b3e2 <BOOT_VerCheck+0xe>
3000b3de:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
3000b3e2:	2503      	movs	r5, #3
3000b3e4:	4c1e      	ldr	r4, [pc, #120]	; (3000b460 <BOOT_VerCheck+0x8c>)
3000b3e6:	4b1f      	ldr	r3, [pc, #124]	; (3000b464 <BOOT_VerCheck+0x90>)
3000b3e8:	2257      	movs	r2, #87	; 0x57
3000b3ea:	4621      	mov	r1, r4
3000b3ec:	4628      	mov	r0, r5
3000b3ee:	4e1e      	ldr	r6, [pc, #120]	; (3000b468 <BOOT_VerCheck+0x94>)
3000b3f0:	f8df 808c 	ldr.w	r8, [pc, #140]	; 3000b480 <BOOT_VerCheck+0xac>
3000b3f4:	4f1d      	ldr	r7, [pc, #116]	; (3000b46c <BOOT_VerCheck+0x98>)
3000b3f6:	f7fd ff91 	bl	3000931c <rtk_log_write>
3000b3fa:	2257      	movs	r2, #87	; 0x57
3000b3fc:	4621      	mov	r1, r4
3000b3fe:	2003      	movs	r0, #3
3000b400:	4633      	mov	r3, r6
3000b402:	f7fd ff8b 	bl	3000931c <rtk_log_write>
3000b406:	4643      	mov	r3, r8
3000b408:	2257      	movs	r2, #87	; 0x57
3000b40a:	4621      	mov	r1, r4
3000b40c:	2003      	movs	r0, #3
3000b40e:	f7fd ff85 	bl	3000931c <rtk_log_write>
3000b412:	463b      	mov	r3, r7
3000b414:	2257      	movs	r2, #87	; 0x57
3000b416:	4621      	mov	r1, r4
3000b418:	2003      	movs	r0, #3
3000b41a:	f7fd ff7f 	bl	3000931c <rtk_log_write>
3000b41e:	2257      	movs	r2, #87	; 0x57
3000b420:	4621      	mov	r1, r4
3000b422:	2003      	movs	r0, #3
3000b424:	4b12      	ldr	r3, [pc, #72]	; (3000b470 <BOOT_VerCheck+0x9c>)
3000b426:	f7fd ff79 	bl	3000931c <rtk_log_write>
3000b42a:	4633      	mov	r3, r6
3000b42c:	2257      	movs	r2, #87	; 0x57
3000b42e:	4621      	mov	r1, r4
3000b430:	2003      	movs	r0, #3
3000b432:	f7fd ff73 	bl	3000931c <rtk_log_write>
3000b436:	4b0f      	ldr	r3, [pc, #60]	; (3000b474 <BOOT_VerCheck+0xa0>)
3000b438:	2257      	movs	r2, #87	; 0x57
3000b43a:	4621      	mov	r1, r4
3000b43c:	2003      	movs	r0, #3
3000b43e:	f7fd ff6d 	bl	3000931c <rtk_log_write>
3000b442:	3d01      	subs	r5, #1
3000b444:	d1d9      	bne.n	3000b3fa <BOOT_VerCheck+0x26>
3000b446:	4906      	ldr	r1, [pc, #24]	; (3000b460 <BOOT_VerCheck+0x8c>)
3000b448:	2003      	movs	r0, #3
3000b44a:	4b0b      	ldr	r3, [pc, #44]	; (3000b478 <BOOT_VerCheck+0xa4>)
3000b44c:	2257      	movs	r2, #87	; 0x57
3000b44e:	f7fd ff65 	bl	3000931c <rtk_log_write>
3000b452:	2121      	movs	r1, #33	; 0x21
3000b454:	4809      	ldr	r0, [pc, #36]	; (3000b47c <BOOT_VerCheck+0xa8>)
3000b456:	f7ff fd45 	bl	3000aee4 <io_assert_failed>
3000b45a:	bf00      	nop
3000b45c:	3000a529 	.word	0x3000a529
3000b460:	3000b7cc 	.word	0x3000b7cc
3000b464:	3000d8f0 	.word	0x3000d8f0
3000b468:	3000d92c 	.word	0x3000d92c
3000b46c:	3000d9a4 	.word	0x3000d9a4
3000b470:	3000d9e0 	.word	0x3000d9e0
3000b474:	3000da1c 	.word	0x3000da1c
3000b478:	3000b7c8 	.word	0x3000b7c8
3000b47c:	3000da58 	.word	0x3000da58
3000b480:	3000d968 	.word	0x3000d968

3000b484 <__aeabi_uldivmod>:
3000b484:	b953      	cbnz	r3, 3000b49c <__aeabi_uldivmod+0x18>
3000b486:	b94a      	cbnz	r2, 3000b49c <__aeabi_uldivmod+0x18>
3000b488:	2900      	cmp	r1, #0
3000b48a:	bf08      	it	eq
3000b48c:	2800      	cmpeq	r0, #0
3000b48e:	bf1c      	itt	ne
3000b490:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
3000b494:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
3000b498:	f000 b974 	b.w	3000b784 <__aeabi_idiv0>
3000b49c:	f1ad 0c08 	sub.w	ip, sp, #8
3000b4a0:	e96d ce04 	strd	ip, lr, [sp, #-16]!
3000b4a4:	f000 f819 	bl	3000b4da <__udivmoddi4>
3000b4a8:	f8dd e004 	ldr.w	lr, [sp, #4]
3000b4ac:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
3000b4b0:	b004      	add	sp, #16
3000b4b2:	4770      	bx	lr

3000b4b4 <__popcountsi2>:
3000b4b4:	0843      	lsrs	r3, r0, #1
3000b4b6:	f003 3355 	and.w	r3, r3, #1431655765	; 0x55555555
3000b4ba:	1ac0      	subs	r0, r0, r3
3000b4bc:	f000 3333 	and.w	r3, r0, #858993459	; 0x33333333
3000b4c0:	0880      	lsrs	r0, r0, #2
3000b4c2:	f000 3033 	and.w	r0, r0, #858993459	; 0x33333333
3000b4c6:	4418      	add	r0, r3
3000b4c8:	f04f 3301 	mov.w	r3, #16843009	; 0x1010101
3000b4cc:	eb00 1010 	add.w	r0, r0, r0, lsr #4
3000b4d0:	f000 300f 	and.w	r0, r0, #252645135	; 0xf0f0f0f
3000b4d4:	4358      	muls	r0, r3
3000b4d6:	0e00      	lsrs	r0, r0, #24
3000b4d8:	4770      	bx	lr

3000b4da <__udivmoddi4>:
3000b4da:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
3000b4de:	9e09      	ldr	r6, [sp, #36]	; 0x24
3000b4e0:	4688      	mov	r8, r1
3000b4e2:	468e      	mov	lr, r1
3000b4e4:	4615      	mov	r5, r2
3000b4e6:	4604      	mov	r4, r0
3000b4e8:	4619      	mov	r1, r3
3000b4ea:	2b00      	cmp	r3, #0
3000b4ec:	f040 80c6 	bne.w	3000b67c <__udivmoddi4+0x1a2>
3000b4f0:	4542      	cmp	r2, r8
3000b4f2:	fab2 f782 	clz	r7, r2
3000b4f6:	d946      	bls.n	3000b586 <__udivmoddi4+0xac>
3000b4f8:	b14f      	cbz	r7, 3000b50e <__udivmoddi4+0x34>
3000b4fa:	f1c7 0c20 	rsb	ip, r7, #32
3000b4fe:	fa08 f307 	lsl.w	r3, r8, r7
3000b502:	40bd      	lsls	r5, r7
3000b504:	40bc      	lsls	r4, r7
3000b506:	fa20 fc0c 	lsr.w	ip, r0, ip
3000b50a:	ea4c 0e03 	orr.w	lr, ip, r3
3000b50e:	ea4f 4815 	mov.w	r8, r5, lsr #16
3000b512:	fa1f fc85 	uxth.w	ip, r5
3000b516:	0c22      	lsrs	r2, r4, #16
3000b518:	fbbe f9f8 	udiv	r9, lr, r8
3000b51c:	fb08 e319 	mls	r3, r8, r9, lr
3000b520:	fb09 fa0c 	mul.w	sl, r9, ip
3000b524:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
3000b528:	459a      	cmp	sl, r3
3000b52a:	d928      	bls.n	3000b57e <__udivmoddi4+0xa4>
3000b52c:	18eb      	adds	r3, r5, r3
3000b52e:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
3000b532:	d204      	bcs.n	3000b53e <__udivmoddi4+0x64>
3000b534:	459a      	cmp	sl, r3
3000b536:	d902      	bls.n	3000b53e <__udivmoddi4+0x64>
3000b538:	f1a9 0002 	sub.w	r0, r9, #2
3000b53c:	442b      	add	r3, r5
3000b53e:	eba3 030a 	sub.w	r3, r3, sl
3000b542:	b2a4      	uxth	r4, r4
3000b544:	fbb3 f2f8 	udiv	r2, r3, r8
3000b548:	fb08 3312 	mls	r3, r8, r2, r3
3000b54c:	fb02 fc0c 	mul.w	ip, r2, ip
3000b550:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
3000b554:	45a4      	cmp	ip, r4
3000b556:	d914      	bls.n	3000b582 <__udivmoddi4+0xa8>
3000b558:	192c      	adds	r4, r5, r4
3000b55a:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
3000b55e:	d203      	bcs.n	3000b568 <__udivmoddi4+0x8e>
3000b560:	45a4      	cmp	ip, r4
3000b562:	d901      	bls.n	3000b568 <__udivmoddi4+0x8e>
3000b564:	1e93      	subs	r3, r2, #2
3000b566:	442c      	add	r4, r5
3000b568:	eba4 040c 	sub.w	r4, r4, ip
3000b56c:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
3000b570:	b11e      	cbz	r6, 3000b57a <__udivmoddi4+0xa0>
3000b572:	40fc      	lsrs	r4, r7
3000b574:	2300      	movs	r3, #0
3000b576:	6034      	str	r4, [r6, #0]
3000b578:	6073      	str	r3, [r6, #4]
3000b57a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
3000b57e:	4648      	mov	r0, r9
3000b580:	e7dd      	b.n	3000b53e <__udivmoddi4+0x64>
3000b582:	4613      	mov	r3, r2
3000b584:	e7f0      	b.n	3000b568 <__udivmoddi4+0x8e>
3000b586:	b902      	cbnz	r2, 3000b58a <__udivmoddi4+0xb0>
3000b588:	deff      	udf	#255	; 0xff
3000b58a:	bb8f      	cbnz	r7, 3000b5f0 <__udivmoddi4+0x116>
3000b58c:	eba8 0302 	sub.w	r3, r8, r2
3000b590:	2101      	movs	r1, #1
3000b592:	ea4f 4e15 	mov.w	lr, r5, lsr #16
3000b596:	b2aa      	uxth	r2, r5
3000b598:	0c20      	lsrs	r0, r4, #16
3000b59a:	fbb3 fcfe 	udiv	ip, r3, lr
3000b59e:	fb0e 331c 	mls	r3, lr, ip, r3
3000b5a2:	fb0c f802 	mul.w	r8, ip, r2
3000b5a6:	ea40 4303 	orr.w	r3, r0, r3, lsl #16
3000b5aa:	4598      	cmp	r8, r3
3000b5ac:	d962      	bls.n	3000b674 <__udivmoddi4+0x19a>
3000b5ae:	18eb      	adds	r3, r5, r3
3000b5b0:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
3000b5b4:	d204      	bcs.n	3000b5c0 <__udivmoddi4+0xe6>
3000b5b6:	4598      	cmp	r8, r3
3000b5b8:	d902      	bls.n	3000b5c0 <__udivmoddi4+0xe6>
3000b5ba:	f1ac 0002 	sub.w	r0, ip, #2
3000b5be:	442b      	add	r3, r5
3000b5c0:	eba3 0308 	sub.w	r3, r3, r8
3000b5c4:	b2a4      	uxth	r4, r4
3000b5c6:	fbb3 fcfe 	udiv	ip, r3, lr
3000b5ca:	fb0e 331c 	mls	r3, lr, ip, r3
3000b5ce:	fb0c f202 	mul.w	r2, ip, r2
3000b5d2:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
3000b5d6:	42a2      	cmp	r2, r4
3000b5d8:	d94e      	bls.n	3000b678 <__udivmoddi4+0x19e>
3000b5da:	192c      	adds	r4, r5, r4
3000b5dc:	f10c 33ff 	add.w	r3, ip, #4294967295	; 0xffffffff
3000b5e0:	d204      	bcs.n	3000b5ec <__udivmoddi4+0x112>
3000b5e2:	42a2      	cmp	r2, r4
3000b5e4:	d902      	bls.n	3000b5ec <__udivmoddi4+0x112>
3000b5e6:	f1ac 0302 	sub.w	r3, ip, #2
3000b5ea:	442c      	add	r4, r5
3000b5ec:	1aa4      	subs	r4, r4, r2
3000b5ee:	e7bd      	b.n	3000b56c <__udivmoddi4+0x92>
3000b5f0:	f1c7 0c20 	rsb	ip, r7, #32
3000b5f4:	40bd      	lsls	r5, r7
3000b5f6:	fa08 f307 	lsl.w	r3, r8, r7
3000b5fa:	40bc      	lsls	r4, r7
3000b5fc:	fa28 f90c 	lsr.w	r9, r8, ip
3000b600:	ea4f 4e15 	mov.w	lr, r5, lsr #16
3000b604:	fa20 fc0c 	lsr.w	ip, r0, ip
3000b608:	ea4c 0203 	orr.w	r2, ip, r3
3000b60c:	b2ab      	uxth	r3, r5
3000b60e:	fbb9 fcfe 	udiv	ip, r9, lr
3000b612:	0c11      	lsrs	r1, r2, #16
3000b614:	fb0e 901c 	mls	r0, lr, ip, r9
3000b618:	fb0c f803 	mul.w	r8, ip, r3
3000b61c:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
3000b620:	4580      	cmp	r8, r0
3000b622:	d923      	bls.n	3000b66c <__udivmoddi4+0x192>
3000b624:	1828      	adds	r0, r5, r0
3000b626:	f10c 31ff 	add.w	r1, ip, #4294967295	; 0xffffffff
3000b62a:	d204      	bcs.n	3000b636 <__udivmoddi4+0x15c>
3000b62c:	4580      	cmp	r8, r0
3000b62e:	d902      	bls.n	3000b636 <__udivmoddi4+0x15c>
3000b630:	f1ac 0102 	sub.w	r1, ip, #2
3000b634:	4428      	add	r0, r5
3000b636:	eba0 0008 	sub.w	r0, r0, r8
3000b63a:	b292      	uxth	r2, r2
3000b63c:	fbb0 fcfe 	udiv	ip, r0, lr
3000b640:	fb0e 001c 	mls	r0, lr, ip, r0
3000b644:	fb0c f803 	mul.w	r8, ip, r3
3000b648:	ea42 4300 	orr.w	r3, r2, r0, lsl #16
3000b64c:	4598      	cmp	r8, r3
3000b64e:	d90f      	bls.n	3000b670 <__udivmoddi4+0x196>
3000b650:	18eb      	adds	r3, r5, r3
3000b652:	f10c 32ff 	add.w	r2, ip, #4294967295	; 0xffffffff
3000b656:	d204      	bcs.n	3000b662 <__udivmoddi4+0x188>
3000b658:	4598      	cmp	r8, r3
3000b65a:	d902      	bls.n	3000b662 <__udivmoddi4+0x188>
3000b65c:	f1ac 0202 	sub.w	r2, ip, #2
3000b660:	442b      	add	r3, r5
3000b662:	eba3 0308 	sub.w	r3, r3, r8
3000b666:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
3000b66a:	e792      	b.n	3000b592 <__udivmoddi4+0xb8>
3000b66c:	4661      	mov	r1, ip
3000b66e:	e7e2      	b.n	3000b636 <__udivmoddi4+0x15c>
3000b670:	4662      	mov	r2, ip
3000b672:	e7f6      	b.n	3000b662 <__udivmoddi4+0x188>
3000b674:	4660      	mov	r0, ip
3000b676:	e7a3      	b.n	3000b5c0 <__udivmoddi4+0xe6>
3000b678:	4663      	mov	r3, ip
3000b67a:	e7b7      	b.n	3000b5ec <__udivmoddi4+0x112>
3000b67c:	4543      	cmp	r3, r8
3000b67e:	d905      	bls.n	3000b68c <__udivmoddi4+0x1b2>
3000b680:	b10e      	cbz	r6, 3000b686 <__udivmoddi4+0x1ac>
3000b682:	e9c6 0800 	strd	r0, r8, [r6]
3000b686:	2100      	movs	r1, #0
3000b688:	4608      	mov	r0, r1
3000b68a:	e776      	b.n	3000b57a <__udivmoddi4+0xa0>
3000b68c:	fab3 fc83 	clz	ip, r3
3000b690:	f1bc 0f00 	cmp.w	ip, #0
3000b694:	d110      	bne.n	3000b6b8 <__udivmoddi4+0x1de>
3000b696:	4543      	cmp	r3, r8
3000b698:	d301      	bcc.n	3000b69e <__udivmoddi4+0x1c4>
3000b69a:	4282      	cmp	r2, r0
3000b69c:	d80a      	bhi.n	3000b6b4 <__udivmoddi4+0x1da>
3000b69e:	1a84      	subs	r4, r0, r2
3000b6a0:	eb68 0303 	sbc.w	r3, r8, r3
3000b6a4:	2001      	movs	r0, #1
3000b6a6:	469e      	mov	lr, r3
3000b6a8:	2e00      	cmp	r6, #0
3000b6aa:	d068      	beq.n	3000b77e <__udivmoddi4+0x2a4>
3000b6ac:	e9c6 4e00 	strd	r4, lr, [r6]
3000b6b0:	2100      	movs	r1, #0
3000b6b2:	e762      	b.n	3000b57a <__udivmoddi4+0xa0>
3000b6b4:	4660      	mov	r0, ip
3000b6b6:	e7f7      	b.n	3000b6a8 <__udivmoddi4+0x1ce>
3000b6b8:	f1cc 0e20 	rsb	lr, ip, #32
3000b6bc:	fa03 f30c 	lsl.w	r3, r3, ip
3000b6c0:	fa02 f50c 	lsl.w	r5, r2, ip
3000b6c4:	fa00 f70c 	lsl.w	r7, r0, ip
3000b6c8:	fa22 f40e 	lsr.w	r4, r2, lr
3000b6cc:	fa28 fb0e 	lsr.w	fp, r8, lr
3000b6d0:	fa20 f10e 	lsr.w	r1, r0, lr
3000b6d4:	431c      	orrs	r4, r3
3000b6d6:	fa08 f30c 	lsl.w	r3, r8, ip
3000b6da:	ea4f 4914 	mov.w	r9, r4, lsr #16
3000b6de:	4319      	orrs	r1, r3
3000b6e0:	b2a3      	uxth	r3, r4
3000b6e2:	0c0a      	lsrs	r2, r1, #16
3000b6e4:	fbbb f8f9 	udiv	r8, fp, r9
3000b6e8:	fb09 bb18 	mls	fp, r9, r8, fp
3000b6ec:	fb08 fa03 	mul.w	sl, r8, r3
3000b6f0:	ea42 420b 	orr.w	r2, r2, fp, lsl #16
3000b6f4:	4592      	cmp	sl, r2
3000b6f6:	d93e      	bls.n	3000b776 <__udivmoddi4+0x29c>
3000b6f8:	18a2      	adds	r2, r4, r2
3000b6fa:	f108 30ff 	add.w	r0, r8, #4294967295	; 0xffffffff
3000b6fe:	d204      	bcs.n	3000b70a <__udivmoddi4+0x230>
3000b700:	4592      	cmp	sl, r2
3000b702:	d902      	bls.n	3000b70a <__udivmoddi4+0x230>
3000b704:	f1a8 0002 	sub.w	r0, r8, #2
3000b708:	4422      	add	r2, r4
3000b70a:	eba2 020a 	sub.w	r2, r2, sl
3000b70e:	b289      	uxth	r1, r1
3000b710:	fbb2 f8f9 	udiv	r8, r2, r9
3000b714:	fb09 2218 	mls	r2, r9, r8, r2
3000b718:	fb08 f303 	mul.w	r3, r8, r3
3000b71c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
3000b720:	4293      	cmp	r3, r2
3000b722:	d92a      	bls.n	3000b77a <__udivmoddi4+0x2a0>
3000b724:	18a2      	adds	r2, r4, r2
3000b726:	f108 31ff 	add.w	r1, r8, #4294967295	; 0xffffffff
3000b72a:	d204      	bcs.n	3000b736 <__udivmoddi4+0x25c>
3000b72c:	4293      	cmp	r3, r2
3000b72e:	d902      	bls.n	3000b736 <__udivmoddi4+0x25c>
3000b730:	f1a8 0102 	sub.w	r1, r8, #2
3000b734:	4422      	add	r2, r4
3000b736:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
3000b73a:	1ad2      	subs	r2, r2, r3
3000b73c:	fba0 9805 	umull	r9, r8, r0, r5
3000b740:	4542      	cmp	r2, r8
3000b742:	464b      	mov	r3, r9
3000b744:	4641      	mov	r1, r8
3000b746:	d302      	bcc.n	3000b74e <__udivmoddi4+0x274>
3000b748:	d106      	bne.n	3000b758 <__udivmoddi4+0x27e>
3000b74a:	454f      	cmp	r7, r9
3000b74c:	d204      	bcs.n	3000b758 <__udivmoddi4+0x27e>
3000b74e:	3801      	subs	r0, #1
3000b750:	ebb9 0305 	subs.w	r3, r9, r5
3000b754:	eb68 0104 	sbc.w	r1, r8, r4
3000b758:	b18e      	cbz	r6, 3000b77e <__udivmoddi4+0x2a4>
3000b75a:	1afc      	subs	r4, r7, r3
3000b75c:	eb62 0701 	sbc.w	r7, r2, r1
3000b760:	fa07 fe0e 	lsl.w	lr, r7, lr
3000b764:	fa24 f30c 	lsr.w	r3, r4, ip
3000b768:	fa27 f70c 	lsr.w	r7, r7, ip
3000b76c:	ea4e 0303 	orr.w	r3, lr, r3
3000b770:	e9c6 3700 	strd	r3, r7, [r6]
3000b774:	e79c      	b.n	3000b6b0 <__udivmoddi4+0x1d6>
3000b776:	4640      	mov	r0, r8
3000b778:	e7c7      	b.n	3000b70a <__udivmoddi4+0x230>
3000b77a:	4641      	mov	r1, r8
3000b77c:	e7db      	b.n	3000b736 <__udivmoddi4+0x25c>
3000b77e:	4631      	mov	r1, r6
3000b780:	e6fb      	b.n	3000b57a <__udivmoddi4+0xa0>
	...

3000b784 <__aeabi_idiv0>:
3000b784:	4770      	bx	lr
3000b786:	bf00      	nop

3000b788 <__SBOOT_Validate_Signature_veneer>:
3000b788:	f85f f000 	ldr.w	pc, [pc]	; 3000b78c <__SBOOT_Validate_Signature_veneer+0x4>
3000b78c:	00003431 	.word	0x00003431

3000b790 <__SBOOT_GetMdType_veneer>:
3000b790:	f85f f000 	ldr.w	pc, [pc]	; 3000b794 <__SBOOT_GetMdType_veneer+0x4>
3000b794:	0000319d 	.word	0x0000319d

3000b798 <____wrap_memset_veneer>:
3000b798:	f85f f000 	ldr.w	pc, [pc]	; 3000b79c <____wrap_memset_veneer+0x4>
3000b79c:	00012efd 	.word	0x00012efd

3000b7a0 <__SBOOT_Validate_PubKey_veneer>:
3000b7a0:	f85f f000 	ldr.w	pc, [pc]	; 3000b7a4 <__SBOOT_Validate_PubKey_veneer+0x4>
3000b7a4:	00003495 	.word	0x00003495

3000b7a8 <__SBOOT_Validate_ImgHash_veneer>:
3000b7a8:	f85f f000 	ldr.w	pc, [pc]	; 3000b7ac <__SBOOT_Validate_ImgHash_veneer+0x4>
3000b7ac:	00003541 	.word	0x00003541

3000b7b0 <__SBOOT_Validate_Algorithm_veneer>:
3000b7b0:	f85f f000 	ldr.w	pc, [pc]	; 3000b7b4 <__SBOOT_Validate_Algorithm_veneer+0x4>
3000b7b4:	000033ed 	.word	0x000033ed

3000b7b8 <__INT_HardFault_C_veneer>:
3000b7b8:	f85f f000 	ldr.w	pc, [pc]	; 3000b7bc <__INT_HardFault_C_veneer+0x4>
3000b7bc:	0000d8ed 	.word	0x0000d8ed
3000b7c0:	74696e49 	.word	0x74696e49
3000b7c4:	0d425720 	.word	0x0d425720
3000b7c8:	0000000a 	.word	0x0000000a
3000b7cc:	544f4f42 	.word	0x544f4f42
3000b7d0:	00000000 	.word	0x00000000
3000b7d4:	6e496552 	.word	0x6e496552
3000b7d8:	44207469 	.word	0x44207469
3000b7dc:	0a0d5244 	.word	0x0a0d5244
3000b7e0:	00000000 	.word	0x00000000
3000b7e4:	32474d49 	.word	0x32474d49
3000b7e8:	4f4f4220 	.word	0x4f4f4220
3000b7ec:	72662054 	.word	0x72662054
3000b7f0:	4f206d6f 	.word	0x4f206d6f
3000b7f4:	25204154 	.word	0x25204154
3000b7f8:	00000a64 	.word	0x00000a64
3000b7fc:	20344d4b 	.word	0x20344d4b
3000b800:	544f4f42 	.word	0x544f4f42
3000b804:	41455220 	.word	0x41455220
3000b808:	204e4f53 	.word	0x204e4f53
3000b80c:	203a7825 	.word	0x203a7825
3000b810:	00000000 	.word	0x00000000
3000b814:	00207325 	.word	0x00207325
3000b818:	00000023 	.word	0x00000023
3000b81c:	34474457 	.word	0x34474457
3000b820:	00000000 	.word	0x00000000
3000b824:	33474457 	.word	0x33474457
3000b828:	00000000 	.word	0x00000000
3000b82c:	32474457 	.word	0x32474457
3000b830:	00000000 	.word	0x00000000
3000b834:	31474457 	.word	0x31474457
3000b838:	00000000 	.word	0x00000000
3000b83c:	47445749 	.word	0x47445749
3000b840:	00000000 	.word	0x00000000
3000b844:	59535041 	.word	0x59535041
3000b848:	00000053 	.word	0x00000053
3000b84c:	5953504e 	.word	0x5953504e
3000b850:	00000053 	.word	0x00000053
3000b854:	5953504c 	.word	0x5953504c
3000b858:	00000053 	.word	0x00000053
3000b85c:	504c5344 	.word	0x504c5344
3000b860:	00000000 	.word	0x00000000
3000b864:	5f524f42 	.word	0x5f524f42
3000b868:	00434341 	.word	0x00434341
3000b86c:	00524f42 	.word	0x00524f42
3000b870:	004d4854 	.word	0x004d4854
3000b874:	74696e49 	.word	0x74696e49
3000b878:	206c6169 	.word	0x206c6169
3000b87c:	65776f50 	.word	0x65776f50
3000b880:	6e6f2072 	.word	0x6e6f2072
3000b884:	0000000a 	.word	0x0000000a
3000b888:	61736944 	.word	0x61736944
3000b88c:	20656c62 	.word	0x20656c62
3000b890:	20304d4b 	.word	0x20304d4b
3000b894:	746f6f42 	.word	0x746f6f42
3000b898:	6e692020 	.word	0x6e692020
3000b89c:	73655420 	.word	0x73655420
3000b8a0:	6f6d2074 	.word	0x6f6d2074
3000b8a4:	0a0d6564 	.word	0x0a0d6564
3000b8a8:	00000000 	.word	0x00000000
3000b8ac:	61707942 	.word	0x61707942
3000b8b0:	4f207373 	.word	0x4f207373
3000b8b4:	61205054 	.word	0x61205054
3000b8b8:	6c6f7475 	.word	0x6c6f7475
3000b8bc:	0d64616f 	.word	0x0d64616f
3000b8c0:	0000000a 	.word	0x0000000a
3000b8c4:	6d6f682f 	.word	0x6d6f682f
3000b8c8:	75612f65 	.word	0x75612f65
3000b8cc:	6a5f6f74 	.word	0x6a5f6f74
3000b8d0:	696b6e65 	.word	0x696b6e65
3000b8d4:	775f736e 	.word	0x775f736e
3000b8d8:	356e616c 	.word	0x356e616c
3000b8dc:	544f492f 	.word	0x544f492f
3000b8e0:	5354415f 	.word	0x5354415f
3000b8e4:	7065722f 	.word	0x7065722f
3000b8e8:	522f736f 	.word	0x522f736f
3000b8ec:	61656c65 	.word	0x61656c65
3000b8f0:	535f6573 	.word	0x535f6573
3000b8f4:	4c5f4b44 	.word	0x4c5f4b44
3000b8f8:	78756e69 	.word	0x78756e69
3000b8fc:	6c65522f 	.word	0x6c65522f
3000b900:	65736165 	.word	0x65736165
3000b904:	6b64535f 	.word	0x6b64535f
3000b908:	756f732f 	.word	0x756f732f
3000b90c:	73656372 	.word	0x73656372
3000b910:	7269662f 	.word	0x7269662f
3000b914:	7261776d 	.word	0x7261776d
3000b918:	6f632f65 	.word	0x6f632f65
3000b91c:	6e6f706d 	.word	0x6e6f706d
3000b920:	2f746e65 	.word	0x2f746e65
3000b924:	2f636f73 	.word	0x2f636f73
3000b928:	62656d61 	.word	0x62656d61
3000b92c:	616d7361 	.word	0x616d7361
3000b930:	622f7472 	.word	0x622f7472
3000b934:	6c746f6f 	.word	0x6c746f6f
3000b938:	6564616f 	.word	0x6564616f
3000b93c:	6f622f72 	.word	0x6f622f72
3000b940:	6f6c746f 	.word	0x6f6c746f
3000b944:	72656461 	.word	0x72656461
3000b948:	2e70685f 	.word	0x2e70685f
3000b94c:	00000063 	.word	0x00000063
3000b950:	4620504e 	.word	0x4620504e
3000b954:	20716572 	.word	0x20716572
3000b958:	20756c25 	.word	0x20756c25
3000b95c:	0a7a484d 	.word	0x0a7a484d
3000b960:	00000000 	.word	0x00000000
3000b964:	46205041 	.word	0x46205041
3000b968:	20716572 	.word	0x20716572
3000b96c:	20756c25 	.word	0x20756c25
3000b970:	0a7a484d 	.word	0x0a7a484d
3000b974:	00000000 	.word	0x00000000
3000b978:	4620504c 	.word	0x4620504c
3000b97c:	20716572 	.word	0x20716572
3000b980:	20756c25 	.word	0x20756c25
3000b984:	0a7a484d 	.word	0x0a7a484d
3000b988:	00000000 	.word	0x00000000
3000b98c:	31474d49 	.word	0x31474d49
3000b990:	544e4520 	.word	0x544e4520
3000b994:	4d205245 	.word	0x4d205245
3000b998:	5b3a5053 	.word	0x5b3a5053
3000b99c:	78383025 	.word	0x78383025
3000b9a0:	00000a5d 	.word	0x00000a5d
3000b9a4:	6c697542 	.word	0x6c697542
3000b9a8:	69542064 	.word	0x69542064
3000b9ac:	203a656d 	.word	0x203a656d
3000b9b0:	25207325 	.word	0x25207325
3000b9b4:	00000a73 	.word	0x00000a73
3000b9b8:	303a3930 	.word	0x303a3930
3000b9bc:	37343a34 	.word	0x37343a34
3000b9c0:	00000000 	.word	0x00000000
3000b9c4:	206e614a 	.word	0x206e614a
3000b9c8:	32203932 	.word	0x32203932
3000b9cc:	00363230 	.word	0x00363230
3000b9d0:	31474d49 	.word	0x31474d49
3000b9d4:	43455320 	.word	0x43455320
3000b9d8:	20455255 	.word	0x20455255
3000b9dc:	54415453 	.word	0x54415453
3000b9e0:	25203a45 	.word	0x25203a45
3000b9e4:	00000a64 	.word	0x00000a64
3000b9e8:	74696e49 	.word	0x74696e49
3000b9ec:	52535020 	.word	0x52535020
3000b9f0:	0a0d4d41 	.word	0x0a0d4d41
3000b9f4:	00000000 	.word	0x00000000
3000b9f8:	20746573 	.word	0x20746573
3000b9fc:	206d6670 	.word	0x206d6670
3000ba00:	6c696166 	.word	0x6c696166
3000ba04:	00000a0d 	.word	0x00000a0d
3000ba08:	4f525245 	.word	0x4f525245
3000ba0c:	20212152 	.word	0x20212152
3000ba10:	756f6853 	.word	0x756f6853
3000ba14:	4e20646c 	.word	0x4e20646c
3000ba18:	6520746f 	.word	0x6520746f
3000ba1c:	6c62616e 	.word	0x6c62616e
3000ba20:	654d2065 	.word	0x654d2065
3000ba24:	7277536d 	.word	0x7277536d
3000ba28:	6c6e4f5f 	.word	0x6c6e4f5f
3000ba2c:	6e692079 	.word	0x6e692079
3000ba30:	52444420 	.word	0x52444420
3000ba34:	69684320 	.word	0x69684320
3000ba38:	21212170 	.word	0x21212170
3000ba3c:	00000a0d 	.word	0x00000a0d
3000ba40:	74696e49 	.word	0x74696e49
3000ba44:	52444420 	.word	0x52444420
3000ba48:	000a0d32 	.word	0x000a0d32
3000ba4c:	74696e49 	.word	0x74696e49
3000ba50:	52444420 	.word	0x52444420
3000ba54:	000a0d33 	.word	0x000a0d33
3000ba58:	72617453 	.word	0x72617453
3000ba5c:	6f4e2074 	.word	0x6f4e2074
3000ba60:	6365536e 	.word	0x6365536e
3000ba64:	20657275 	.word	0x20657275
3000ba68:	78302040 	.word	0x78302040
3000ba6c:	2e207825 	.word	0x2e207825
3000ba70:	0a0d2e2e 	.word	0x0a0d2e2e
3000ba74:	00000000 	.word	0x00000000
3000ba78:	00000208 	.word	0x00000208
3000ba7c:	0000020c 	.word	0x0000020c
3000ba80:	00000210 	.word	0x00000210
3000ba84:	00000008 	.word	0x00000008
3000ba88:	00000214 	.word	0x00000214
3000ba8c:	00000218 	.word	0x00000218
3000ba90:	0000021c 	.word	0x0000021c
3000ba94:	0000000c 	.word	0x0000000c
3000ba98:	20344d4b 	.word	0x20344d4b
3000ba9c:	33474d49 	.word	0x33474d49
3000baa0:	00000000 	.word	0x00000000
3000baa4:	20344d4b 	.word	0x20344d4b
3000baa8:	0043534e 	.word	0x0043534e
3000baac:	31474d49 	.word	0x31474d49
3000bab0:	00000000 	.word	0x00000000
3000bab4:	32474d49 	.word	0x32474d49
3000bab8:	00000000 	.word	0x00000000
3000babc:	42205041 	.word	0x42205041
3000bac0:	4626314c 	.word	0x4626314c
3000bac4:	00005049 	.word	0x00005049
3000bac8:	49207325 	.word	0x49207325
3000bacc:	6c61766e 	.word	0x6c61766e
3000bad0:	000a6469 	.word	0x000a6469
3000bad4:	255b7325 	.word	0x255b7325
3000bad8:	3a783830 	.word	0x3a783830
3000badc:	0a5d7825 	.word	0x0a5d7825
3000bae0:	00000000 	.word	0x00000000
3000bae4:	56207325 	.word	0x56207325
3000bae8:	46495245 	.word	0x46495245
3000baec:	41502059 	.word	0x41502059
3000baf0:	000a5353 	.word	0x000a5353
3000baf4:	56207325 	.word	0x56207325
3000baf8:	46495245 	.word	0x46495245
3000bafc:	41462059 	.word	0x41462059
3000bb00:	202c4c49 	.word	0x202c4c49
3000bb04:	20746572 	.word	0x20746572
3000bb08:	6425203d 	.word	0x6425203d
3000bb0c:	0000000a 	.word	0x0000000a
3000bb10:	74726543 	.word	0x74726543
3000bb14:	63696669 	.word	0x63696669
3000bb18:	20657461 	.word	0x20657461
3000bb1c:	49524556 	.word	0x49524556
3000bb20:	46205946 	.word	0x46205946
3000bb24:	2c4c4941 	.word	0x2c4c4941
3000bb28:	74657220 	.word	0x74657220
3000bb2c:	25203d20 	.word	0x25203d20
3000bb30:	00000a64 	.word	0x00000a64
3000bb34:	706d6f43 	.word	0x706d6f43
3000bb38:	73736572 	.word	0x73736572
3000bb3c:	49206465 	.word	0x49206465
3000bb40:	5620676d 	.word	0x5620676d
3000bb44:	46495245 	.word	0x46495245
3000bb48:	41502059 	.word	0x41502059
3000bb4c:	000a5353 	.word	0x000a5353
3000bb50:	706d6f43 	.word	0x706d6f43
3000bb54:	73736572 	.word	0x73736572
3000bb58:	49206465 	.word	0x49206465
3000bb5c:	5620676d 	.word	0x5620676d
3000bb60:	46495245 	.word	0x46495245
3000bb64:	41462059 	.word	0x41462059
3000bb68:	202c4c49 	.word	0x202c4c49
3000bb6c:	20746572 	.word	0x20746572
3000bb70:	6425203d 	.word	0x6425203d
3000bb74:	0000000a 	.word	0x0000000a
3000bb78:	3000ba98 	.word	0x3000ba98
3000bb7c:	3000baa4 	.word	0x3000baa4
3000bb80:	3000baac 	.word	0x3000baac
3000bb84:	3000bab4 	.word	0x3000bab4
3000bb88:	3000ba9c 	.word	0x3000ba9c
3000bb8c:	3000babc 	.word	0x3000babc
3000bb90:	20304d4b 	.word	0x20304d4b
3000bb94:	20504958 	.word	0x20504958
3000bb98:	00474d49 	.word	0x00474d49
3000bb9c:	20304d4b 	.word	0x20304d4b
3000bba0:	4d415253 	.word	0x4d415253
3000bba4:	00000000 	.word	0x00000000
3000bba8:	20304d4b 	.word	0x20304d4b
3000bbac:	4d415244 	.word	0x4d415244
3000bbb0:	00000000 	.word	0x00000000
3000bbb4:	20344d4b 	.word	0x20344d4b
3000bbb8:	20504958 	.word	0x20504958
3000bbbc:	00474d49 	.word	0x00474d49
3000bbc0:	20344d4b 	.word	0x20344d4b
3000bbc4:	4d415253 	.word	0x4d415253
3000bbc8:	00000000 	.word	0x00000000
3000bbcc:	20344d4b 	.word	0x20344d4b
3000bbd0:	4d415244 	.word	0x4d415244
3000bbd4:	00000000 	.word	0x00000000
3000bbd8:	58205041 	.word	0x58205041
3000bbdc:	49205049 	.word	0x49205049
3000bbe0:	0000474d 	.word	0x0000474d
3000bbe4:	42205041 	.word	0x42205041
3000bbe8:	5320314c 	.word	0x5320314c
3000bbec:	004d4152 	.word	0x004d4152
3000bbf0:	42205041 	.word	0x42205041
3000bbf4:	4420314c 	.word	0x4420314c
3000bbf8:	004d4152 	.word	0x004d4152
3000bbfc:	46205041 	.word	0x46205041
3000bc00:	00005049 	.word	0x00005049
3000bc04:	32474d49 	.word	0x32474d49
3000bc08:	46544f20 	.word	0x46544f20
3000bc0c:	0a4e4520 	.word	0x0a4e4520
3000bc10:	00000000 	.word	0x00000000
3000bc14:	2046544f 	.word	0x2046544f
3000bc18:	65646f4d 	.word	0x65646f4d
3000bc1c:	72726520 	.word	0x72726520
3000bc20:	0a0d726f 	.word	0x0a0d726f
3000bc24:	00000000 	.word	0x00000000
3000bc28:	6c696146 	.word	0x6c696146
3000bc2c:	206f7420 	.word	0x206f7420
3000bc30:	64616f6c 	.word	0x64616f6c
3000bc34:	50445220 	.word	0x50445220
3000bc38:	616d6920 	.word	0x616d6920
3000bc3c:	0a216567 	.word	0x0a216567
3000bc40:	00000000 	.word	0x00000000
3000bc44:	6c696146 	.word	0x6c696146
3000bc48:	206f7420 	.word	0x206f7420
3000bc4c:	64616f6c 	.word	0x64616f6c
3000bc50:	20504120 	.word	0x20504120
3000bc54:	67616d69 	.word	0x67616d69
3000bc58:	000a2165 	.word	0x000a2165
3000bc5c:	20504452 	.word	0x20504452
3000bc60:	000a4e45 	.word	0x000a4e45
3000bc64:	32474d49 	.word	0x32474d49
3000bc68:	41544f28 	.word	0x41544f28
3000bc6c:	20296425 	.word	0x20296425
3000bc70:	202c7325 	.word	0x202c7325
3000bc74:	3a746572 	.word	0x3a746572
3000bc78:	0a642520 	.word	0x0a642520
3000bc7c:	00000000 	.word	0x00000000
3000bc80:	494c4156 	.word	0x494c4156
3000bc84:	00000044 	.word	0x00000044
3000bc88:	41564e49 	.word	0x41564e49
3000bc8c:	0044494c 	.word	0x0044494c
3000bc90:	32474d49 	.word	0x32474d49
3000bc94:	4f4f4220 	.word	0x4f4f4220
3000bc98:	72662054 	.word	0x72662054
3000bc9c:	4f206d6f 	.word	0x4f206d6f
3000bca0:	25204154 	.word	0x25204154
3000bca4:	56202c64 	.word	0x56202c64
3000bca8:	69737265 	.word	0x69737265
3000bcac:	203a6e6f 	.word	0x203a6e6f
3000bcb0:	2e646c25 	.word	0x2e646c25
3000bcb4:	20646c25 	.word	0x20646c25
3000bcb8:	0000000a 	.word	0x0000000a
3000bcbc:	2041544f 	.word	0x2041544f
3000bcc0:	74726543 	.word	0x74726543
3000bcc4:	63696669 	.word	0x63696669
3000bcc8:	20657461 	.word	0x20657461
3000bccc:	4d492026 	.word	0x4d492026
3000bcd0:	69203247 	.word	0x69203247
3000bcd4:	6c61766e 	.word	0x6c61766e
3000bcd8:	202c6469 	.word	0x202c6469
3000bcdc:	544f4f42 	.word	0x544f4f42
3000bce0:	49414620 	.word	0x49414620
3000bce4:	0a21214c 	.word	0x0a21214c
3000bce8:	00000000 	.word	0x00000000
3000bcec:	42205041 	.word	0x42205041
3000bcf0:	20544f4f 	.word	0x20544f4f
3000bcf4:	6d6f7266 	.word	0x6d6f7266
3000bcf8:	41544f20 	.word	0x41544f20
3000bcfc:	0a642520 	.word	0x0a642520
3000bd00:	00000000 	.word	0x00000000
3000bd04:	72747845 	.word	0x72747845
3000bd08:	20746361 	.word	0x20746361
3000bd0c:	6d6f7266 	.word	0x6d6f7266
3000bd10:	25783020 	.word	0x25783020
3000bd14:	6f742078 	.word	0x6f742078
3000bd18:	65764f20 	.word	0x65764f20
3000bd1c:	64697272 	.word	0x64697272
3000bd20:	78302065 	.word	0x78302065
3000bd24:	202c7825 	.word	0x202c7825
3000bd28:	706d6f43 	.word	0x706d6f43
3000bd2c:	73736572 	.word	0x73736572
3000bd30:	6e654c20 	.word	0x6e654c20
3000bd34:	20736920 	.word	0x20736920
3000bd38:	78257830 	.word	0x78257830
3000bd3c:	0000000a 	.word	0x0000000a
3000bd40:	6d6f682f 	.word	0x6d6f682f
3000bd44:	75612f65 	.word	0x75612f65
3000bd48:	6a5f6f74 	.word	0x6a5f6f74
3000bd4c:	696b6e65 	.word	0x696b6e65
3000bd50:	775f736e 	.word	0x775f736e
3000bd54:	356e616c 	.word	0x356e616c
3000bd58:	544f492f 	.word	0x544f492f
3000bd5c:	5354415f 	.word	0x5354415f
3000bd60:	7065722f 	.word	0x7065722f
3000bd64:	522f736f 	.word	0x522f736f
3000bd68:	61656c65 	.word	0x61656c65
3000bd6c:	535f6573 	.word	0x535f6573
3000bd70:	4c5f4b44 	.word	0x4c5f4b44
3000bd74:	78756e69 	.word	0x78756e69
3000bd78:	6c65522f 	.word	0x6c65522f
3000bd7c:	65736165 	.word	0x65736165
3000bd80:	6b64535f 	.word	0x6b64535f
3000bd84:	756f732f 	.word	0x756f732f
3000bd88:	73656372 	.word	0x73656372
3000bd8c:	7269662f 	.word	0x7269662f
3000bd90:	7261776d 	.word	0x7261776d
3000bd94:	6f632f65 	.word	0x6f632f65
3000bd98:	6e6f706d 	.word	0x6e6f706d
3000bd9c:	2f746e65 	.word	0x2f746e65
3000bda0:	2f636f73 	.word	0x2f636f73
3000bda4:	62656d61 	.word	0x62656d61
3000bda8:	616d7361 	.word	0x616d7361
3000bdac:	622f7472 	.word	0x622f7472
3000bdb0:	6c746f6f 	.word	0x6c746f6f
3000bdb4:	6564616f 	.word	0x6564616f
3000bdb8:	6f622f72 	.word	0x6f622f72
3000bdbc:	6f5f746f 	.word	0x6f5f746f
3000bdc0:	685f6174 	.word	0x685f6174
3000bdc4:	00632e70 	.word	0x00632e70
3000bdc8:	3000bbd8 	.word	0x3000bbd8
3000bdcc:	3000bbe4 	.word	0x3000bbe4
3000bdd0:	3000bbf0 	.word	0x3000bbf0
3000bdd4:	3000bbfc 	.word	0x3000bbfc
3000bdd8:	3000bb90 	.word	0x3000bb90
3000bddc:	3000bb9c 	.word	0x3000bb9c
3000bde0:	3000bba8 	.word	0x3000bba8
3000bde4:	3000bbb4 	.word	0x3000bbb4
3000bde8:	3000bbc0 	.word	0x3000bbc0
3000bdec:	3000bbcc 	.word	0x3000bbcc
3000bdf0:	3000bbe4 	.word	0x3000bbe4
3000bdf4:	3000bbf0 	.word	0x3000bbf0
3000bdf8:	3000bbfc 	.word	0x3000bbfc

3000bdfc <ImagePattern>:
3000bdfc:	35393138 31313738 004f4931 00004f32     819587111IO.2O..
3000be0c:	004f4932 00004f34 004f4934 72617473     2IO.4O..4IO.star
3000be1c:	64695f74 64253a78 6e65202c 64695f64     t_idx:%d, end_id
3000be2c:	64253a78 696d202c 656c6464 7864695f     x:%d, middle_idx
3000be3c:	2c64253a 6e696620 705f6c61 65736168     :%d, final_phase
3000be4c:	7864695f 2c64253a 6e696620 735f6c61     _idx:%d, final_s
3000be5c:	74666968 7864695f 2064253a 0000000a     hift_idx:%d ....
3000be6c:	53414c46 41432048 5b42494c 78257830     FLASH CALIB[0x%x
3000be7c:	5d4b4f20 0000000a 53414c46 41432048      OK]....FLASH CA
3000be8c:	5b42494c 78257830 49414620 000a5d4c     LIB[0x%x FAIL]..
3000be9c:	73616c46 65522068 25206461 00000a73     Flash Read %s...
3000beac:	73616c46 65522068 25206461 46202c73     Flash Read %s, F
3000bebc:	0a4c4941 00000000 73616c46 77532068     AIL.....Flash Sw
3000becc:	68637469 61655220 6f4d2064 46206564     itch Read Mode F
3000bedc:	0a4c4941 00000000 43495053 4b4c4320     AIL.....SPIC CLK
3000beec:	6425203a 0a7a4820 00000000 73616c46     : %d Hz.....Flas
3000befc:	44492068 7825203a 2d78252d 28207825     h ID: %x-%x-%x (
3000bf0c:	61706143 79746963 6425203a 69622d4d     Capacity: %dM-bi
3000bf1c:	000a2974 73696854 616c6620 74206873     t)..This flash t
3000bf2c:	20657079 6e207369 7320746f 6f707075     ype is not suppo
3000bf3c:	64657472 00000a21 6d6f682f 75612f65     rted!.../home/au
3000bf4c:	6a5f6f74 696b6e65 775f736e 356e616c     to_jenkins_wlan5
3000bf5c:	544f492f 5354415f 7065722f 522f736f     /IOT_ATS/repos/R
3000bf6c:	61656c65 535f6573 4c5f4b44 78756e69     elease_SDK_Linux
3000bf7c:	6c65522f 65736165 6b64535f 756f732f     /Release_Sdk/sou
3000bf8c:	73656372 7269662f 7261776d 6f632f65     rces/firmware/co
3000bf9c:	6e6f706d 2f746e65 2f636f73 62656d61     mponent/soc/ameb
3000bfac:	616d7361 662f7472 62696c77 6d61722f     asmart/fwlib/ram
3000bfbc:	2f70685f 62656d61 6c665f61 63687361     _hp/ameba_flashc
3000bfcc:	632e6b6c 00000000 73616c46 74732068     lk.c....Flash st
3000bfdc:	73757461 67657220 65747369 68632072     atus register ch
3000bfec:	65676e61 78303a64 2d207825 7830203e     anged:0x%x -> 0x
3000bffc:	000a7825 444e414e 3a444920 2d782520     %x..NAND ID: %x-
3000c00c:	000a7825 73616c46 6c612068 6c62206c     %x..Flash all bl
3000c01c:	206b636f 6f6c6e75 64656b63 6546202e     ock unlocked. Fe
3000c02c:	72757461 65722065 78302067 78323025     ature reg 0x%02x
3000c03c:	74657320 206f7420 30257830 000a7832      set to 0x%02x..
3000c04c:	3000be04 3000be08 3000be0c 3000be10     ...0...0...0...0
3000c05c:	3000be14 206b6c42 6c257830 73692078     ...0Blk 0x%lx is
3000c06c:	21424220 0000000a 444e414e 53414c46      BB!....NANDFLAS
3000c07c:	00000048 646e614e 64644120 78302072     H...Nand Addr 0x
3000c08c:	72207825 6f696765 6142206e 6c422064     %x region Bad Bl
3000c09c:	206b636f 206f6f74 6863756d 0000000a     ock too much....
3000c0ac:	64616552 67615020 78302065 20786c25     Read Page 0x%lx 
3000c0bc:	4220666f 6b636f6c 25783020 614d2078     of Block 0x%x Ma
3000c0cc:	61462079 202c6c69 74617473 30207375     y Fail, status 0
3000c0dc:	21782578 0000000a 4d415244 20736920     x%x!....DRAM is 
3000c0ec:	20746f6e 696c6143 69617262 0a0d6e6f     not Calibraion..
3000c0fc:	00000000 50524444 00005948              ....DDRPHY..

3000c108 <ddrphy_tx_scan>:
3000c108:	00000000 00080000 00080808 00000000     ................
3000c118:	20000000 33333333 000c0022 00000000     ... 3333".......
3000c128:	0e0e001a 00170e0e 12171717 00000012     ................
3000c138:	20000fc1 22222222 000c0012 34000000     ... """".......4
3000c148:	0f0f0016 00180f0f 0e181818 0000000e     ................
3000c158:	200003c1 22222222 000c0012 34000000     ... """".......4
3000c168:	0f0f001b 00180f0f 13181818 00000013     ................
3000c178:	20000fc1 22222222 000c0012 34000000     ... """".......4
3000c188:	1110001b 00191111 13191919 00000013     ................
3000c198:	20000ffd 22222222 000c0012 34000000     ... """".......4
3000c1a8:	1313001c 001c1313 121c1c1c 00000012     ................
3000c1b8:	20000ffd 22222222 000c0012 34000000     ... """".......4

3000c1c8 <ddrphy_zq_rx_scan>:
	...
3000c1d0:	26262626 26262626 0303030f 0e141414     &&&&&&&&........
3000c1e0:	140e0e0e 26243c34 261c3029 0303030f     ....4<$&)0.&....
3000c1f0:	090b0a0a 0a0a0909 2615231e 2613201b     .........#.&. .&
3000c200:	04020204 0b0f0c0c 0c0b0b0b 26233a30     ............0:#&
3000c210:	26182722 04020205 0e141414 140e0e0e     "'.&............
3000c220:	26243c34 261b2f28 0303030f 0a0c0c0c     4<$&(/.&........
3000c230:	0c0a0a0a 2616251f 2614221d 04020205     .....%.&.".&....
3000c240:	20524444 657a6953 20736920 20746f6e     DDR Size is not 
3000c250:	666e6f63 72756769 000a6465 00524444     configured..DDR.
3000c260:	415b203e 20524444 414d4552 52452050     > [ADDR REMAP ER
3000c270:	5d524f52 6f63203a 725f756c 70616d65     ROR]: colu_remap
3000c280:	7469625f 3d212073 61726420 6f635f6d     _bits != dram_co
3000c290:	625f756c 21737469 000a2121 415b203e     lu_bits!!!..> [A
3000c2a0:	20524444 414d4552 52452050 5d524f52     DDR REMAP ERROR]
3000c2b0:	6162203a 725f6b6e 70616d65 7469625f     : bank_remap_bit
3000c2c0:	3d212073 61726420 61625f6d 625f6b6e     s != dram_bank_b
3000c2d0:	21737469 000a2121 6d6f682f 75612f65     its!!!../home/au
3000c2e0:	6a5f6f74 696b6e65 775f736e 356e616c     to_jenkins_wlan5
3000c2f0:	544f492f 5354415f 7065722f 522f736f     /IOT_ATS/repos/R
3000c300:	61656c65 535f6573 4c5f4b44 78756e69     elease_SDK_Linux
3000c310:	6c65522f 65736165 6b64535f 756f732f     /Release_Sdk/sou
3000c320:	73656372 7269662f 7261776d 6f632f65     rces/firmware/co
3000c330:	6e6f706d 2f746e65 2f636f73 62656d61     mponent/soc/ameb
3000c340:	616d7361 662f7472 62696c77 6d61722f     asmart/fwlib/ram
3000c350:	2f70685f 62656d61 78725f61 36313369     _hp/ameba_rxi316
3000c360:	6172645f 6e695f6d 632e7469 00000000     _dram_init.c....
3000c370:	41525350 7443204d 43206c72 203a4b4c     PSRAM Ctrl CLK: 
3000c380:	20756c25 0a207a48 00000000 41525350     %lu Hz .....PSRA
3000c390:	0000004d 4e6c6143 206e696d 7825203d     M...CalNmin = %x
3000c3a0:	6c614320 78616d4e 25203d20 69572078      CalNmax = %x Wi
3000c3b0:	776f646e 657a6953 25203d20 68702078     ndowSize = %x ph
3000c3c0:	3a657361 20782520 0000000a 6d6f682f     ase: %x ..../hom
3000c3d0:	75612f65 6a5f6f74 696b6e65 775f736e     e/auto_jenkins_w
3000c3e0:	356e616c 544f492f 5354415f 7065722f     lan5/IOT_ATS/rep
3000c3f0:	522f736f 61656c65 535f6573 4c5f4b44     os/Release_SDK_L
3000c400:	78756e69 6c65522f 65736165 6b64535f     inux/Release_Sdk
3000c410:	756f732f 73656372 7269662f 7261776d     /sources/firmwar
3000c420:	6f632f65 6e6f706d 2f746e65 2f636f73     e/component/soc/
3000c430:	62656d61 616d7361 662f7472 62696c77     amebasmart/fwlib
3000c440:	6d61722f 6d6f635f 2f6e6f6d 62656d61     /ram_common/ameb
3000c450:	77735f61 00632e72 2050544f 64616572     a_swr.c.OTP read
3000c460:	74656720 20776820 616d6573 69616620      get hw sema fai
3000c470:	00000a6c 0050544f 5f50544f 64616552     l...OTP.OTP_Read
3000c480:	61462038 25206c69 000a2078 6d6f682f     8 Fail %x ../hom
3000c490:	75612f65 6a5f6f74 696b6e65 775f736e     e/auto_jenkins_w
3000c4a0:	356e616c 544f492f 5354415f 7065722f     lan5/IOT_ATS/rep
3000c4b0:	522f736f 61656c65 535f6573 4c5f4b44     os/Release_SDK_L
3000c4c0:	78756e69 6c65522f 65736165 6b64535f     inux/Release_Sdk
3000c4d0:	756f732f 73656372 7269662f 7261776d     /sources/firmwar
3000c4e0:	6f632f65 6e6f706d 2f746e65 2f636f73     e/component/soc/
3000c4f0:	62656d61 616d7361 662f7472 62696c77     amebasmart/fwlib
3000c500:	6d61722f 6d6f635f 2f6e6f6d 62656d61     /ram_common/ameb
3000c510:	6c705f61 00632e6c 6d6f682f 75612f65     a_pll.c./home/au
3000c520:	6a5f6f74 696b6e65 775f736e 356e616c     to_jenkins_wlan5
3000c530:	544f492f 5354415f 7065722f 522f736f     /IOT_ATS/repos/R
3000c540:	61656c65 535f6573 4c5f4b44 78756e69     elease_SDK_Linux
3000c550:	6c65522f 65736165 6b64535f 756f732f     /Release_Sdk/sou
3000c560:	73656372 7269662f 7261776d 6f632f65     rces/firmware/co
3000c570:	6e6f706d 2f746e65 2f636f73 62656d61     mponent/soc/ameb
3000c580:	616d7361 662f7472 62696c77 6d61722f     asmart/fwlib/ram
3000c590:	6d6f635f 2f6e6f6d 62656d61 70695f61     _common/ameba_ip
3000c5a0:	70615f63 00632e69 6e6f4e0a 6365532d     c_api.c..Non-Sec
3000c5b0:	20657275 6c726f77 61632064 746f6e6e     ure world cannot
3000c5c0:	6d756420 65722070 74736967 20737265      dump registers 
3000c5d0:	756f6261 78652074 74706563 206e6f69     about exception 
3000c5e0:	6d6f7266 63657320 20657275 6c726f77     from secure worl
3000c5f0:	000a2164 4c554146 00000054 52534653     d!..FAULT...SFSR
3000c600:	203d2020 30257830 0d786c38 0000000a       = 0x%08lx.....
3000c610:	52414653 203d2020 30257830 0d786c38     SFAR  = 0x%08lx.
3000c620:	0000000a 544e4f43 5f4c4f52 3d20534e     ....CONTROL_NS =
3000c630:	25783020 586c3830 00000a0d 53434853      0x%08lX....SHCS
3000c640:	203d2052 30257830 0d786c38 0000000a     R = 0x%08lx.....
3000c650:	43524941 203d2052 30257830 0d786c38     AIRCR = 0x%08lx.
3000c660:	0000000a 544e4f43 204c4f52 7830203d     ....CONTROL = 0x
3000c670:	6c383025 000a0d78 2d73255b 205d6325     %08lx...[%s-%c] 
3000c680:	00000000                                ....

3000c684 <mpc1_config>:
3000c684:	00000000 7005ffff 00000000 70294000     .......p.....@)p
3000c694:	607fffff 00000000 ffffffff ffffffff     ...`............
3000c6a4:	00000000 ffffffff ffffffff 00000000     ................
3000c6b4:	ffffffff ffffffff 00000000 ffffffff     ................
3000c6c4:	ffffffff 00000000 ffffffff ffffffff     ................
3000c6d4:	00000000 ffffffff ffffffff 00000000     ................

3000c6e4 <mpc2_config>:
3000c6e4:	00014000 0001efff 00000000 00020000     .@..............
3000c6f4:	0003ffff 00000000 ffffffff ffffffff     ................
3000c704:	00000000 ffffffff ffffffff 00000000     ................
3000c714:	ffffffff ffffffff 00000000 ffffffff     ................
3000c724:	ffffffff 00000000 ffffffff ffffffff     ................
3000c734:	00000000 ffffffff ffffffff 00000000     ................

3000c744 <sau_config>:
3000c744:	0001e000 00053fff 00000000 08000000     .....?..........
3000c754:	09ffffff 00000000 0c000000 ffffffff     ................
3000c764:	00000000 ffffffff ffffffff 00000000     ................
3000c774:	ffffffff ffffffff 00000000 ffffffff     ................
3000c784:	ffffffff 00000000 ffffffff ffffffff     ................
3000c794:	00000000 ffffffff ffffffff 00000000     ................
3000c7a4:	73616c66 65675f68 616c5f74 74756f79     flash_get_layout
3000c7b4:	666e695f 7962206f 70797420 64252065     _info by type %d
3000c7c4:	69614620 00000a6c 73616c66 65675f68      Fail...flash_ge
3000c7d4:	616c5f74 74756f79 666e695f 7962206f     t_layout_info by
3000c7e4:	64646120 78302072 46207825 0a6c6961      addr 0x%x Fail.
3000c7f4:	00000000                                ....

3000c7f8 <Flash_AVL>:
3000c7f8:	000000ef 000000ff 00000000 000043fc     .............C..
3000c808:	00000000 000000a1 000000ff 00000000     ................
3000c818:	0000fffc 00000000 0000000b 000000ff     ................
3000c828:	00000000 000043fc 00000000 0000000e     .....C..........
3000c838:	000000ff 00000000 000043fc 00000000     .........C......
3000c848:	000000c8 000000ff 00000001 000043fc     .............C..
3000c858:	00000000 000028c2 0000ffff 00000005     .....(..........
3000c868:	000200fc 00000000 000000c2 000000ff     ................
3000c878:	00000002 000000fc 00000000 00000068     ............h...
3000c888:	000000ff 00000002 000000fc 00000000     ................
3000c898:	00000051 000000ff 00000002 000000fc     Q...............
3000c8a8:	00000000 0000001c 000000ff 00000003     ................
3000c8b8:	000000fc 00000000 00000020 000000ff     ........ .......
3000c8c8:	00000004 000000fc 00000000 00000085     ................
3000c8d8:	000000ff 00000000 000043fc 00000000     .........C......
3000c8e8:	00000000 000000ff 000000fe ffffffff     ................
3000c8f8:	300093bd 000000ff ffffffff 000000ff     ...0............
3000c908:	ffffffff 00000000                       ........

3000c910 <Flash_ReadMode>:
3000c910:	                                         ..

3000c912 <Flash_Speed>:
3000c912:	                                         ..

3000c914 <NAND_AVL>:
3000c914:	000000ef 000000ff 00000000 ffffffff     ................
3000c924:	00000000 000000c8 000000ff 00000001     ................
3000c934:	ffffffff 00000000 000000e5 000000ff     ................
3000c944:	00000001 ffffffff 00000000 000000c2     ................
3000c954:	000000ff 00000002 ffffffff 00000000     ................
3000c964:	0000002c 000000ff 00000004 ffffffff     ,...............
	...
3000c97c:	000000ff 000000fe ffffffff 3000941d     ...............0
3000c98c:	000000ff ffffffff 000000ff ffffffff     ................
3000c99c:	00000000 72617453 74732074 206b6361     ....Start stack 
3000c9ac:	6b636162 63617274 20676e69 20726f66     backtracing for 
3000c9bc:	30207073 38302578 70202c78 78302063     sp 0x%08x, pc 0x
3000c9cc:	78383025 726c202c 25783020 0a783830     %08x, lr 0x%08x.
3000c9dc:	00000000 6d6f682f 75612f65 6a5f6f74     ..../home/auto_j
3000c9ec:	696b6e65 775f736e 356e616c 544f492f     enkins_wlan5/IOT
3000c9fc:	5354415f 7065722f 522f736f 61656c65     _ATS/repos/Relea
3000ca0c:	535f6573 4c5f4b44 78756e69 6c65522f     se_SDK_Linux/Rel
3000ca1c:	65736165 6b64535f 756f732f 73656372     ease_Sdk/sources
3000ca2c:	7269662f 7261776d 6d612f65 73616265     /firmware/amebas
3000ca3c:	7472616d 6363675f 6f72705f 7463656a     mart_gcc_project
3000ca4c:	6f72702f 7463656a 2f70685f 6b647361     /project_hp/asdk
3000ca5c:	616d692f 00006567 74706f2f 6b74722f     /image../opt/rtk
3000ca6c:	6f6f742d 6168636c 612f6e69 2d6b6473     -toolchain/asdk-
3000ca7c:	332e3031 342d312e 2f333235 756e696c     10.3.1-4523/linu
3000ca8c:	656e2f78 62696c77 00000000 622f7325     x/newlib....%s/b
3000ca9c:	612f6e69 6e2d6d72 2d656e6f 69626165     in/arm-none-eabi
3000caac:	6464612d 696c3272 2d20656e 73252065     -addr2line -e %s
3000cabc:	7261742f 5f746567 32676d69 6678612e     /target_img2.axf
3000cacc:	66612d20 20436970 30257830 00007838      -afpiC 0x%08x..
3000cadc:	25783020 00783830 00344d4b 00304d4b      0x%08x.KM4.KM0.
3000caec:	3d3d3d3d 3d3d3d3d 73253d3d 61745320     ==========%s Sta
3000cafc:	44206b63 20706d75 3d3d3d3d 3d3d3d3d     ck Dump ========
3000cb0c:	000a3d3d 72727543 20746e65 63617453     ==..Current Stac
3000cb1c:	6f50206b 65746e69 203d2072 30257830     k Pointer = 0x%0
3000cb2c:	202c7838 20646e61 706d7564 61747320     8x, and dump sta
3000cb3c:	64206b63 68747065 25203d20 000a0d75     ck depth = %u...
3000cb4c:	2578305b 5d783830 00000020 78383025     [0x%08x] ...%08x
3000cb5c:	00000020 305b0a0d 38302578 00205d78      .....[0x%08x] .
3000cb6c:	00003052 00003452 3d3d3d0a 3d3d3d3d     R0..R4...=======
3000cb7c:	203d3d3d 73617243 75442068 3d20706d     === Crash Dump =
3000cb8c:	3d3d3d3d 3d3d3d3d 00000a3d 3d3d3d3d     =========...====
3000cb9c:	3d3d3d3d 52203d3d 73696765 20726574     ====== Register 
3000cbac:	706d7544 3d3d3d20 3d3d3d3d 0a3d3d3d     Dump ==========.
3000cbbc:	00000000 4c20205b 30205d52 38302578     ....[  LR] 0x%08
3000cbcc:	00000a78 5020205b 30205d43 38302578     x...[  PC] 0x%08
3000cbdc:	00000a78 5350785b 30205d52 38302578     x...[xPSR] 0x%08
3000cbec:	00000a78 4358455b 30205d52 38302578     x...[EXCR] 0x%08
3000cbfc:	00000a78 7325205b 7830205d 78383025     x...[ %s] 0x%08x
3000cc0c:	0000000a 00323152 3d3d3d3d 3d3d3d3d     ....R12.========
3000cc1c:	53203d3d 6b636174 61725420 3d206563     == Stack Trace =
3000cc2c:	3d3d3d3d 3d3d3d3d 00000a3d 3d3d3d3d     =========...====
3000cc3c:	3d3d3d3d 45203d3d 6f20646e 74532066     ====== End of St
3000cc4c:	206b6361 63617254 3d3d2065 3d3d3d3d     ack Trace ======
3000cc5c:	3d3d3d3d 0000000a 3d3d3d3d 3d3d3d3d     ====....========
3000cc6c:	45203d3d 6f20646e 72432066 20687361     == End of Crash 
3000cc7c:	706d7544 3d3d3d20 3d3d3d3d 0a3d3d3d     Dump ==========.
3000cc8c:	00000000 0a0d0a0d 00000000 00003552     ............R5..
3000cc9c:	00003652 00003752 00003852 00003952     R6..R7..R8..R9..
3000ccac:	00303152 00313152 00003152 00003252     R10.R11.R1..R2..
3000ccbc:	00003352                                R3..

3000ccc0 <register_string>:
3000ccc0:	00000000 3000cb70 3000cc98 3000cc9c     ....p..0...0...0
3000ccd0:	3000cca0 3000cca4 3000cca8 3000ccac     ...0...0...0...0
3000cce0:	3000ccb0 3000cb6c 3000ccb4 3000ccb8     ...0l..0...0...0
3000ccf0:	3000ccbc 3000cc10 65637845 6f697470     ...0...0Exceptio
3000cd00:	6163206e 74686775 206e6f20 78383025     n caught on %08x
3000cd10:	0000000a 64726148 75616620 6920746c     ....Hard fault i
3000cd20:	61632073 64657375 20796220 6c696166     s caused by fail
3000cd30:	76206465 6f746365 65662072 00686374     ed vector fetch.
3000cd40:	52534648 305b203a 38302578 2d205d78     HFSR: [0x%08x] -
3000cd50:	7325203e 0000000a 75636553 79746972     > %s....Security
3000cd60:	75616620 6920746c 61632073 64657375      fault is caused
3000cd70:	20796220 61766e49 2064696c 72746e65      by Invalid entr
3000cd80:	6f702079 00746e69 52534653 305b203a     y point.SFSR: [0
3000cd90:	38302578 2d205d78 7325203e 0000000a     x%08x] -> %s....
3000cda0:	75636553 79746972 75616620 6920746c     Security fault i
3000cdb0:	61632073 64657375 20796220 61766e49     s caused by Inva
3000cdc0:	2064696c 65746e69 74697267 69732079     lid integrity si
3000cdd0:	74616e67 00657275 75636553 79746972     gnature.Security
3000cde0:	75616620 6920746c 61632073 64657375      fault is caused
3000cdf0:	20796220 61766e49 2064696c 65637865      by Invalid exce
3000ce00:	6f697470 6572206e 6e727574 00000000     ption return....
3000ce10:	75636553 79746972 75616620 6920746c     Security fault i
3000ce20:	61632073 64657375 20796220 72747441     s caused by Attr
3000ce30:	74756269 206e6f69 74696e75 6f697620     ibution unit vio
3000ce40:	6974616c 00006e6f 75636553 79746972     lation..Security
3000ce50:	75616620 6920746c 61632073 64657375      fault is caused
3000ce60:	20796220 61766e49 2064696c 6e617274      by Invalid tran
3000ce70:	69746973 00006e6f 75636553 79746972     sition..Security
3000ce80:	75616620 6920746c 61632073 64657375      fault is caused
3000ce90:	20796220 797a614c 61747320 70206574      by Lazy state p
3000cea0:	65736572 74617672 206e6f69 6f727265     reservation erro
3000ceb0:	00000072 75636553 79746972 75616620     r...Security fau
3000cec0:	6920746c 61632073 64657375 20796220     lt is caused by 
3000ced0:	797a614c 61747320 65206574 726f7272     Lazy state error
3000cee0:	00000000 20656854 75636573 79746972     ....The security
3000cef0:	75616620 6f20746c 72756363 20646572      fault occurred 
3000cf00:	72646461 20737365 00007369 52414653     address is..SFAR
3000cf10:	305b203a 38302578 2d205d78 7325203e     : [0x%08x] -> %s
3000cf20:	0000000a 6f6d654d 6d207972 67616e61     ....Memory manag
3000cf30:	6e656d65 61662074 20746c75 63207369     ement fault is c
3000cf40:	65737561 79622064 736e6920 63757274     aused by instruc
3000cf50:	6e6f6974 63636120 20737365 6c6f6976     tion access viol
3000cf60:	6f697461 0000006e 53464d4d 5b203a52     ation...MMFSR: [
3000cf70:	30257830 205d7838 25203e2d 00000a73     0x%08x] -> %s...
3000cf80:	6f6d654d 6d207972 67616e61 6e656d65     Memory managemen
3000cf90:	61662074 20746c75 63207369 65737561     t fault is cause
3000cfa0:	79622064 74616420 63612061 73736563     d by data access
3000cfb0:	6f697620 6974616c 00006e6f 6f6d654d      violation..Memo
3000cfc0:	6d207972 67616e61 6e656d65 61662074     ry management fa
3000cfd0:	20746c75 63207369 65737561 79622064     ult is caused by
3000cfe0:	736e7520 6b636174 20676e69 6f727265      unstacking erro
3000cff0:	00000072 6f6d654d 6d207972 67616e61     r...Memory manag
3000d000:	6e656d65 61662074 20746c75 63207369     ement fault is c
3000d010:	65737561 79622064 61747320 6e696b63     aused by stackin
3000d020:	72652067 00726f72 6f6d654d 6d207972     g error.Memory m
3000d030:	67616e61 6e656d65 61662074 20746c75     anagement fault 
3000d040:	63207369 65737561 79622064 6f6c6620     is caused by flo
3000d050:	6e697461 6f702d67 20746e69 797a616c     ating-point lazy
3000d060:	61747320 70206574 65736572 74617672      state preservat
3000d070:	006e6f69 20656854 6f6d656d 6d207972     ion.The memory m
3000d080:	67616e61 6e656d65 61662074 20746c75     anagement fault 
3000d090:	7563636f 64657272 64646120 73736572     occurred address
3000d0a0:	00736920 52414d4d 305b203a 38302578      is.MMAR: [0x%08
3000d0b0:	2d205d78 7325203e 0000000a 20737542     x] -> %s....Bus 
3000d0c0:	6c756166 73692074 75616320 20646573     fault is caused 
3000d0d0:	69207962 7274736e 69746375 61206e6f     by instruction a
3000d0e0:	73656363 69762073 74616c6f 006e6f69     ccess violation.
3000d0f0:	52534642 305b203a 38302578 2d205d78     BFSR: [0x%08x] -
3000d100:	7325203e 0000000a 20737542 6c756166     > %s....Bus faul
3000d110:	73692074 75616320 20646573 70207962     t is caused by p
3000d120:	69636572 64206573 20617461 65636361     recise data acce
3000d130:	76207373 616c6f69 6e6f6974 00000000     ss violation....
3000d140:	20737542 6c756166 73692074 75616320     Bus fault is cau
3000d150:	20646573 69207962 6572706d 65736963     sed by imprecise
3000d160:	74616420 63612061 73736563 6f697620      data access vio
3000d170:	6974616c 00006e6f 20737542 6c756166     lation..Bus faul
3000d180:	73692074 75616320 20646573 75207962     t is caused by u
3000d190:	6174736e 6e696b63 72652067 00726f72     nstacking error.
3000d1a0:	20737542 6c756166 73692074 75616320     Bus fault is cau
3000d1b0:	20646573 73207962 6b636174 20676e69     sed by stacking 
3000d1c0:	6f727265 00000072 20737542 6c756166     error...Bus faul
3000d1d0:	73692074 75616320 20646573 66207962     t is caused by f
3000d1e0:	74616f6c 2d676e69 6e696f70 616c2074     loating-point la
3000d1f0:	7320797a 65746174 65727020 76726573     zy state preserv
3000d200:	6f697461 0000006e 20656854 20737562     ation...The bus 
3000d210:	6c756166 636f2074 72727563 61206465     fault occurred a
3000d220:	65726464 69207373 00000073 52414642     ddress is...BFAR
3000d230:	305b203a 38302578 2d205d78 7325203e     : [0x%08x] -> %s
3000d240:	0000000a 67617355 61662065 20746c75     ....Usage fault 
3000d250:	63207369 65737561 79622064 74746120     is caused by att
3000d260:	74706d65 6f742073 65786520 65747563     empts to execute
3000d270:	206e6120 65646e75 656e6966 6e692064      an undefined in
3000d280:	75727473 6f697463 0000006e 52534655     struction...UFSR
3000d290:	305b203a 38302578 2d205d78 7325203e     : [0x%08x] -> %s
3000d2a0:	0000000a 67617355 61662065 20746c75     ....Usage fault 
3000d2b0:	63207369 65737561 79622064 74746120     is caused by att
3000d2c0:	74706d65 6f742073 69777320 20686374     empts to switch 
3000d2d0:	61206f74 6e69206e 696c6176 74732064     to an invalid st
3000d2e0:	20657461 672e6528 41202c2e 00294d52     ate (e.g., ARM).
3000d2f0:	67617355 61662065 20746c75 63207369     Usage fault is c
3000d300:	65737561 79622064 74746120 74706d65     aused by attempt
3000d310:	6f742073 206f6420 65206e61 70656378     s to do an excep
3000d320:	6e6f6974 74697720 20612068 20646162     tion with a bad 
3000d330:	756c6176 6e692065 65687420 43584520     value in the EXC
3000d340:	5445525f 204e5255 626d756e 00007265     _RETURN number..
3000d350:	67617355 61662065 20746c75 63207369     Usage fault is c
3000d360:	65737561 79622064 74746120 74706d65     aused by attempt
3000d370:	6f742073 65786520 65747563 63206120     s to execute a c
3000d380:	6f72706f 73736563 6920726f 7274736e     oprocessor instr
3000d390:	69746375 00006e6f 67617355 61662065     uction..Usage fa
3000d3a0:	20746c75 63207369 65737561 79622064     ult is caused by
3000d3b0:	646e6920 74616369 74207365 20746168      indicates that 
3000d3c0:	74732061 206b6361 7265766f 776f6c66     a stack overflow
3000d3d0:	61682820 61776472 63206572 6b636568      (hardware check
3000d3e0:	61682029 61742073 206e656b 63616c70     ) has taken plac
3000d3f0:	00000065 67617355 61662065 20746c75     e...Usage fault 
3000d400:	63207369 65737561 79622064 646e6920     is caused by ind
3000d410:	74616369 74207365 20746168 75206e61     icates that an u
3000d420:	696c616e 64656e67 63636120 20737365     naligned access 
3000d430:	6c756166 61682074 61742073 206e656b     fault has taken 
3000d440:	63616c70 00000065 67617355 61662065     place...Usage fa
3000d450:	20746c75 63207369 65737561 79622064     ult is caused by
3000d460:	646e4920 74616369 61207365 76696420      Indicates a div
3000d470:	20656469 7a207962 206f7265 20736168     ide by zero has 
3000d480:	656b6174 6c70206e 20656361 6e616328     taken place (can
3000d490:	20656220 20746573 796c6e6f 20666920      be set only if 
3000d4a0:	5f564944 52545f30 73692050 74657320     DIV_0_TRP is set
3000d4b0:	00000029 75626544 61662067 20746c75     )...Debug fault 
3000d4c0:	63207369 65737561 79622064 6c616820     is caused by hal
3000d4d0:	65722074 73657571 20646574 4e206e69     t requested in N
3000d4e0:	00434956 52534644 305b203a 38302578     VIC.DFSR: [0x%08
3000d4f0:	2d205d78 7325203e 0000000a 75626544     x] -> %s....Debu
3000d500:	61662067 20746c75 63207369 65737561     g fault is cause
3000d510:	79622064 504b4220 6e692054 75727473     d by BKPT instru
3000d520:	6f697463 7865206e 74756365 00006465     ction executed..
3000d530:	75626544 61662067 20746c75 63207369     Debug fault is c
3000d540:	65737561 79622064 54574420 74616d20     aused by DWT mat
3000d550:	6f206863 72756363 00646572 75626544     ch occurred.Debu
3000d560:	61662067 20746c75 63207369 65737561     g fault is cause
3000d570:	79622064 63655620 20726f74 63746566     d by Vector fetc
3000d580:	636f2068 72727563 00006465 75626544     h occurred..Debu
3000d590:	61662067 20746c75 63207369 65737561     g fault is cause
3000d5a0:	79622064 42444520 20515247 6e676973     d by EDBGRQ sign
3000d5b0:	61206c61 72657373 00646574 61656c50     al asserted.Plea
3000d5c0:	70206573 72676f72 63206d61 69706968     se program chipi
3000d5d0:	206f666e 4f206e69 21205054 0000000a     nfo in OTP !....
3000d5e0:	50494843 4f464e49 00000000 2050544f     CHIPINFO....OTP 
3000d5f0:	70696863 6f666e69 20736920 61766e69     chipinfo is inva
3000d600:	2c64696c 656c7020 20657361 676f7270     lid, please prog
3000d610:	206d6172 00000a21 61766e49 2064696c     ram !...Invalid 
3000d620:	6e204442 65626d75 000a2172 204d434d     BD number!..MCM 
3000d630:	6f6d656d 69207972 206f666e 61766e69     memory info inva
3000d640:	2164696c 42202121 6d754e64 7525203a     lid!!! BdNum: %u
3000d650:	000a0d20 3a525245 69685420 68432073      ...ERR: This Ch
3000d660:	4e207069 5320746f 6f707075 0a0d7472     ip Not Support..
3000d670:	00000a0d 41525350 726f204d 41524420     ....PSRAM or DRA
3000d680:	6e45204d 6e692064 79616c20 2074756f     M End in layout 
3000d690:	30207369 2c782578 74756220 74636120     is 0x%x, but act
3000d6a0:	6c6c6175 73692079 25783020 730a0d78     ually is 0x%x..s
3000d6b0:	4d207465 75204350 676e6973 74636120     et MPC using act
3000d6c0:	6c6c6175 61762079 0d65756c 0000000a     ually value.....

3000d6d0 <chipinfo>:
3000d6d0:	03fe0600 0129014c 03ff0700 014101ca     ....L.).......A.
3000d6e0:	04000800 0129014c 04010801 0129014c     ....L.).....L.).
3000d6f0:	04020900 01530292 04030901 01530292     ......S.......S.
3000d700:	04040a00 01490252 04050a01 01490252     ....R.I.....R.I.
3000d710:	040e0b00 0129018c 040d0c00 0129014c     ......).....L.).
3000d720:	040f0d00 01530292 04100e00 01490252     ......S.....R.I.
3000d730:	04110f00 01530002 04121000 01490002     ......S.......I.
3000d740:	04131100 01410002 ffffffff 00000000     ......A.........
3000d750:	00000042 00000041 61206f4e 696c6176     B...A...No avali
3000d760:	656c6261 74696220 73616d20 6f66206b     able bit mask fo
3000d770:	20646e75 000a0d21 504d4f52 48435441     und !...ROMPATCH
3000d780:	00000000 20444150 5f732550 69206425     ....PAD P%s_%d i
3000d790:	6f632073 6769666e 64657275 206f7420     s configured to 
3000d7a0:	65747845 6f69746e 7566206e 4449636e     Extention funcID
3000d7b0:	2e75253a 000a0d20 62616e45 5320656c     :%u. ...Enable S
3000d7c0:	45204457 41525458 6e75665f 6e692063     WD EXTRA_func in
3000d7d0:	61657473 666f2064 66656420 746c7561     stead of default
3000d7e0:	6e756620 0a0d2e63 00000000 74736552      func.......Rest
3000d7f0:	2065726f 20445753 61666564 20746c75     ore SWD default 
3000d800:	636e7566 000a0d2e 64206f69 65766972     func....io drive
3000d810:	61702072 656d6172 73726574 72726520     r parameters err
3000d820:	2021726f 656c6966 6d616e5f 25203a65     or! file_name: %
3000d830:	6c202c73 3a656e69 00642520 6d6f682f     s, line: %d./hom
3000d840:	75612f65 6a5f6f74 696b6e65 775f736e     e/auto_jenkins_w
3000d850:	356e616c 544f492f 5354415f 7065722f     lan5/IOT_ATS/rep
3000d860:	522f736f 61656c65 535f6573 4c5f4b44     os/Release_SDK_L
3000d870:	78756e69 6c65522f 65736165 6b64535f     inux/Release_Sdk
3000d880:	756f732f 73656372 7269662f 7261776d     /sources/firmwar
3000d890:	6f632f65 6e6f706d 2f746e65 2f636f73     e/component/soc/
3000d8a0:	62656d61 616d7361 6c2f7472 632f6269     amebasmart/lib/c
3000d8b0:	69706968 2f6f666e 62656d61 6f725f61     hipinfo/ameba_ro
3000d8c0:	61705f6d 2e686374 00000063 74206f4e     m_patch.c...No t
3000d8d0:	20736968 68747561 7079745f 6c252865     his auth_type(%l
3000d8e0:	66202975 5320726f 0a324148 00000000     u) for SHA2.....
3000d8f0:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
3000d900:	2a2a2a2a 2a2a2a2a 57202a2a 494e5241     ********** WARNI
3000d910:	2a20474e 2a2a2a2a 2a2a2a2a 2a2a2a2a     NG *************
3000d920:	2a2a2a2a 2a2a2a2a 000a2a2a 2020202a     **********..*   
3000d930:	20202020 20202020 20202020 20202020                     
3000d940:	20202020 20202020 20202020 20202020                     
3000d950:	20202020 20202020 20202020 20202020                     
3000d960:	20202020 000a2a20 2020202a 20202020          *..*       
3000d970:	20202020 75432020 6e657272 68632074           Current ch
3000d980:	76207069 69737265 69206e6f 43412073     ip version is AC
3000d990:	21217475 20202021 20202020 20202020     ut!!!           
3000d9a0:	000a2a20 2020202a 204b5452 204b4453      *..*   RTK SDK 
3000d9b0:	73656f64 746f6e20 70757320 74726f70     does not support
3000d9c0:	72756320 746e6572 72657620 6e6f6973      current version
3000d9d0:	796e6120 726f6d20 20202e65 000a2a20      any more.   *..
3000d9e0:	2020202a 50202020 7361656c 6f632065     *      Please co
3000d9f0:	6361746e 54522074 4d50204b 726f6620     ntact RTK PM for
3000da00:	726f6d20 72702065 6375646f 6e692074      more product in
3000da10:	20216f66 20202020 000a2a20 2a2a2a2a     fo!      *..****
3000da20:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
3000da30:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
3000da40:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
3000da50:	2a2a2a2a 000a2a2a 6d6f682f 75612f65     ******../home/au
3000da60:	6a5f6f74 696b6e65 775f736e 356e616c     to_jenkins_wlan5
3000da70:	544f492f 5354415f 7065722f 522f736f     /IOT_ATS/repos/R
3000da80:	61656c65 535f6573 4c5f4b44 78756e69     elease_SDK_Linux
3000da90:	6c65522f 65736165 6b64535f 756f732f     /Release_Sdk/sou
3000daa0:	73656372 7269662f 7261776d 6f632f65     rces/firmware/co
3000dab0:	6e6f706d 2f746e65 2f636f73 62656d61     mponent/soc/ameb
3000dac0:	616d7361 6c2f7472 622f6269 6c746f6f     asmart/lib/bootl
3000dad0:	6564616f 6f622f72 6f6c746f 72656461     oader/bootloader
3000dae0:	5f70685f 2e62696c 00000063              _hp_lib.c...
