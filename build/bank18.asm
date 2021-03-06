loc_8c1801F4:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x01,r14),r0
	cmp/eq 0x03,r0
	bf loc_8c180208
	bsr bank17.loc_8c17fea8
	mov r14,r4
	bra loc_8c180238
	nop

loc_8c180208:
	cmp/eq 0x01,r0
	bf loc_8c180214
	bsr bank17.loc_8c17FBCC
	mov r14,r4
	bra loc_8c180238
	nop

loc_8c180214:
	mov.b @(0x01,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c180222
	bsr bank17.loc_8c17FDD6
	mov r14,r4
	bra loc_8c180238
	nop

loc_8c180222:
	cmp/eq 0x04,r0
	bf loc_8c18022E
	bsr bank17.loc_8c17FF0E
	mov r14,r4
	bra loc_8c180238
	nop

loc_8c18022e:
	mov.b @(0x01,r14),r0 
	cmp/eq 0x05,r0 
	bf loc_8c180238
	bsr bank17.loc_8c17ffb8
	mov r14,r4

loc_8c180238:
	lds.l @r15+,pr
	mov r14,r4
	bra bank17.loc_8c180044
	mov.l @r15+,r14

loc_8c180240:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1802C0,pc),r4 ; r4 set to 0x8C32FE78
	mov.w @(loc_8c1802B2,pc),r6 ; r6 set to 0x300
	mov.l @(loc_8c1802BC,pc),r14 ; r14 set to 0x8C129728
	jsr @r14
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8c1802C4,pc),r4 ; r4 set to 0x8C330178
	mov.w @(loc_8c1802B4,pc),r6 ; r6 set to 0x400
	jsr @r14
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8c1802C8,pc),r4 ; r4 set to 0x8C33057C
	mov.w @(loc_8c1802B8,pc),r5 ; r5 set to 0xFF
	mov.w @(loc_8c1802B6,pc),r6 ; r6 set to 0x1000
	jsr @r14
	nop
	mov.l @(loc_8c1802CC,pc),r4 ; r4 set to 0x8C33157C
	mov 0x20,r6 ; r6 set to 0x20
	jsr @r14
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8c1802D4,pc),r0 ; r0 set to 0x8C330578
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8c1802D0,pc),r2 ; r2 set to 0x8C33159C
	mov r3,r1 ; r1 set to 0x00
	mov.l r3,@r2 ; r2 ??
	mov.l r3,@r0 ; r0 ??
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18027A:
	mov.l r14,@-r15
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8c1802D4,pc),r2 ; r2 set to 0x8C330578
	mov r3,r5 ; r5 set to 0x00
	mov.l @(loc_8c1802D0,pc),r0 ; r0 set to 0x8C33159C
	sts.l pr,@-r15
	mov.l @(loc_8c1802BC,pc),r14 ; r14 set to 0x8C129728
	mov.l @(loc_8c1802CC,pc),r4 ; r4 set to 0x8C33157C
	mov.l r3,@r2 ; r2 ??
	mov.l r3,@r0 ; r0 ??
	jsr @r14
	mov 0x20,r6 ; r6 set to 0x20
	mov.l @(loc_8c1802C8,pc),r4 ; r4 set to 0x8C33057C
	mov.w @(loc_8c1802B8,pc),r5 ; r5 set to 0xFF
	mov.w @(loc_8c1802B6,pc),r6 ; r6 set to 0x1000
	jsr @r14
	nop
	mov.l @(loc_8c1802C4,pc),r4 ; r4 set to 0x8C330178
	mov.w @(loc_8c1802B4,pc),r6 ; r6 set to 0x400
	jsr @r14
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8c1802C0,pc),r4 ; r4 set to 0x8C32FE78
	mov.w @(loc_8c1802B2,pc),r6 ; r6 set to 0x300
	jsr @r14
	mov 0x00,r5 ; r5 set to 0x00
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1802B2:
	#data 0x0300
loc_8c1802B4:
	#data 0x0400
loc_8c1802B6:
	#data 0x1000
loc_8c1802B8:
	#data 0x00FF
	#align4

loc_8c1802BC:
	#data bank12.loc_8c129728
loc_8c1802C0:
	#data 0x8C32FE78
loc_8c1802C4:
	#data 0x8C330178
loc_8c1802C8:
	#data 0x8C33057C
loc_8c1802CC:
	#data 0x8C33157C
loc_8c1802D0:
	#data 0x8C33159C
loc_8c1802D4:
	#data 0x8C330578

;==============================================
loc_8c1802d8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(0xE0,PC),r13
	mov.w @(0xD6,PC),r2
	mov.l @r13,r3
	cmp/pz r3
	bf loc_8c1802ea
	bra loc_8c1802f4
	and r2,r3

loc_8c1802ea:
	not r3,r3
	add 0x01,r3
	and r2,r3
	not r3,r3
	add 0x01,r3

loc_8c1802f4:
	mov r3,r14
	mov.l r3,@r13
	mov.l @(0xC8,PC),r3
	mov r4,r1
	shll2 r14
	shll r1
	tst r5,r5
	shll2 r14
	bf/s loc_8c180310
	add r3,r14
	mov.l @(0xBC,PC),r0
	mov.w @(r0,r1),r2
	add 0x01,r2
	mov.w r2,@(r0,r1)

loc_8c180310:
	mov r5,r0
	mov 0x02,r2
	add r14,r2
	mov.b r4,@r14
	mov.b r0,@(0x1,r14)
	mov.l @(0xAC,PC),r0
	mov.w @(r0,r1),r3
	mov.w r3,@r2
	mov.l r6,@(0x4,r14)
	mov.l r7,@(0x8,r14)
	mov.l @(0x8,r15),r3
	mov.l r3,@(0xC,r14)
	mov.l @r13,r2
	add 0x01,r2
	mov.l r2,@r13
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c180334:
	mov.l @(0x94,PC),r4

loc_8c180336:
	dt r4
	bf loc_8c180336
	rts 
	nop

;==============================================
loc_8c18033e:
	sts.l pr,@-r15
	cmp/pz r4
	bf loc_8c18034a
	mov.w @(0x72,PC),r2
	cmp/ge r2,r4
	bf loc_8c180356

loc_8c18034a:
	mov.l @(0x88,PC),r2
	mov.l @(0x80,PC),r4
	jsr @r2
	nop 
	bra loc_8c180362
	nop 

loc_8c180356:
	tst r5,r5
	bf loc_8c180368
	mov.l @(0x78,PC),r3
	mov.l @(0x78,PC),r4
	jsr @r3
	nop 

loc_8c180362:
	lds.l @r15+,pr
	rts 
	mov 0xFD,r0

loc_8c180368:
	mov 0x00,r0
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c180370:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x5C,PC),r11
	mov 0x00,r12
	mov.l @(0x5C,PC),r13
	mov r4,r10
	mov.w @(0x32,PC),r14
	mov.l r5,@r15
	mov.l r6,@(0x4,r15)

loc_8c18038c:
	mov.l @r15,r5
	mov.l @(0x4,r15),r6
	bsr loc_8c180b3c
	mov r10,r4
	mov r0,r4
	cmp/pl r4
	bt loc_8c1803b0
	jsr @r13
	nop 
	jsr @r11
	nop 
	bsr loc_8c180d4c
	nop 
	bsr loc_8c180334
	nop 
	add 0x01,r12
	cmp/ge r14,r12
	bf loc_8c18038c

loc_8c1803b0:
	cmp/eq r14,r12
	bf loc_8c1803e4
	bra loc_8c180416
	mov 0x00,r0


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1803b8:
	#data 0x00FF
loc_8c1803ba:
	#data 0x0100
loc_8c1803bc:
	#data 0x2710
	#align4

loc_8c1803c0:
	#data 0x8C33159C
loc_8c1803c4:
	#data 0x8C33057C
loc_8c1803c8:
	#data 0x8C33157C
loc_8c1803cc:
	#data 0x0000C350
loc_8c1803D0:
	#data bank1c.loc_8c1c4CF4
loc_8c1803D4:
	#data bank17.loc_8c17EB7A
loc_8c1803D8:
	#data bank1c.loc_8c1c4D28
loc_8c1803DC:
	#data bank17.loc_8c17F918
loc_8c1803E0:
	#data bank17.loc_8c177254

;==============================================
loc_8c1803e4:
	mov 0x00,r12

loc_8c1803e6:
	jsr @r13
	nop 
	jsr @r11
	nop 
	bsr loc_8c180d4c
	nop 
	bsr loc_8c180ecc
	mov r10,r4
	cmp/eq 0x03,r0
	bt loc_8c180404
	bsr loc_8c180334
	nop 
	add 0x01,r12
	cmp/ge r14,r12
	bf loc_8c1803e6

loc_8c180404:
	mov r10,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c180eb0
	mov.l @r15+,r14

loc_8c180416:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8c180426:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xDC,r15
	mov r6,r14
	mov r5,r9
	mov r14,r5
	mov.l r4,@(0x4,r15)
	mov.l r7,@(0x14,r15)
	bsr loc_8c18033e
	mov.l @(0x4,r15),r4
	mov r0,r12
	cmp/pz r12
	bt loc_8c180450
	bra loc_8c1805b4
	nop 

loc_8c180450:
	mov.l @(0x9C,PC),r2
	mov r15,r5
	add 0x08,r5
	jsr @r2
	mov r9,r4
	cmp/pz r0
	bt loc_8c180464
	mov.l @(0x94,PC),r4
	bra loc_8c180476
	mov r9,r5

loc_8c180464:
	mov r15,r5
	add 0x18,r5
	bsr loc_8c180890
	mov r9,r4
	tst r0,r0
	bf/s loc_8c180480
	mov.l r0,@(0x10,r15)
	mov.l @(0x84,PC),r4
	mov r9,r5

loc_8c180476:
	mov.l @(0x84,PC),r2
	jsr @r2
	nop 
	bra loc_8c1805b6
	mov 0xFF,r0

loc_8c180480:
	mov.l @(0x7C,PC),r3
	mov 0x00,r5
	mov 0xFF,r12
	mov 0x18,r6
	jsr @r3
	mov r14,r4
	mov.l @(0x4,r15),r2
	mov 0x00,r13
	mov.l @(0x70,PC),r0
	shll2 r2
	mov.l @(0x70,PC),r8
	mov.l r14,@(r0,r2)
	mov r13,r2
	mov r2,r11
	mov 0x12,r0
	mov.l r13,@r14
	mov.l @(0x8,r15),r3
	mov.l r3,@(0x8,r14)
	mov r14,r3
	add 0x14,r3
	mov.b r13,@(r0,r14)
	mov.l r3,@(0xC,r15)
	add 0x02,r3
	mov.l r3,@(0x20,r15)
	mov 0xE0,r3
	mov.l r2,@(0x4,r15)
	and r3,r8
	mov.l r2,@(0xC,r14)
	mov r8,r2
	add 0x04,r2
	mov r8,r1
	add 0x08,r1
	mov.l r2,@r15
	bra loc_8c18058e
	mov.l r1,@(0x1C,r15)

loc_8c1804c6:
	mov 0x01,r5
	mov r8,r6
	bsr loc_8c180370
	mov.l @(0x10,r15),r4
	cmp/pl r0
	bf loc_8c18058c
	mov.l @(0xC,r14),r3
	mov.w @(0x16,PC),r6
	tst r3,r3
	bf loc_8c180548
	mov.l @r15,r3
	mov.l @(0x2C,PC),r4
	mov.l @r3,r2
	cmp/gt r4,r2
	bf loc_8c180510
	mov.l @r15,r1
	mov.l r4,@r1
	mov 0xFC,r4
	bra loc_8c1805a2
	mov r4,r12


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1804ee:
	#data 0x0800
	#align4

loc_8c1804F0:
	#data bank17.loc_8c17F9BA
loc_8c1804F4:
	#data bank1c.loc_8c1c4D54
loc_8c1804F8:
	#data bank1c.loc_8c1c4D8C
loc_8c1804FC:
	#data bank17.loc_8c17EB7A
loc_8c180500:
	#data bank12.loc_8c129728
loc_8c180504:
	#data 0x8C330178
loc_8c180508:
	#data 0x8C3315C0
loc_8c18050c:
	#data 0x00010000

;==============================================
loc_8c180510:
	mov.l @r15,r4
	mov.l @(0x14,r15),r3
	mov.l @r4,r4
	cmp/ge r4,r3
	bt loc_8c18051e
	bra loc_8c180520
	mov.l @(0x14,r15),r0

loc_8c18051e:
	mov r4,r0

loc_8c180520:
	mov.w r0,@(0x10,r14)
	extu.w r0,r0
	mov r0,r2
	add 0x01,r2
	shll r2
	mov.l @(0xE4,PC),r3
	add 0x16,r2
	mov.l r0,@(0xC,r14)
	shlr2 r2
	shll2 r2
	mov.l r2,@(0x4,r14)
	mov.l @(0xC,r15),r1
	mov r1,r2
	mov.l @(0x1C,r15),r1
	mov.l @r1,r1
	jsr @r3
	mov r6,r0
	mov.w r0,@r2
	bra loc_8c18054c
	mov r10,r4

loc_8c180548:
	mov 0x01,r5
	mov r5,r4

loc_8c18054c:
	mov.w @(0xBA,PC),r7
	mov r4,r5
	shll2 r5
	cmp/ge r7,r4
	bt/s loc_8c180588
	add r8,r5

loc_8c180558:
	mov.l @(0x4,r15),r2
	mov.w @(0xAE,PC),r11
	add 0x01,r2
	mov.l @(0xB0,PC),r3
	mov.l r2,@(0x4,r15)
	add 0xFF,r2
	mov.l @r5,r1
	shll r2
	mov.l @(0x20,r15),r0
	add r11,r1
	add r0,r2
	jsr @r3
	mov r6,r0
	mov.w r0,@r2
	mov.l @(0x4,r15),r2
	mov.l @(0xC,r14),r3
	cmp/ge r3,r2
	bf loc_8c180580
	bra loc_8c1805a2
	mov r13,r12

loc_8c180580:
	add 0x02,r4
	cmp/ge r7,r4
	bf/s loc_8c180558
	add 0x08,r5

loc_8c180588:
	bra loc_8c18058e
	mov r13,r11

loc_8c18058c:
	add 0x01,r11

loc_8c18058e:
	mov 0x03,r10
	cmp/ge r10,r11
	bf loc_8c1804c6
	mov r11,r0
	cmp/eq 0x03,r0
	bf loc_8c1805a2
	mov.l @(0x7C,PC),r2
	mov.l @(0x74,PC),r4
	jsr @r2
	mov r9,r5

loc_8c1805a2:
	mov r12,r0
	cmp/eq 0xFC,r0
	bf loc_8c1805b0
	mov.l @(0x6C,PC),r2
	mov.l @(0x70,PC),r4
	jsr @r2
	mov r9,r5

loc_8c1805b0:
	bsr loc_8c1809dc
	mov.l @(0x10,r15),r4

loc_8c1805b4:
	mov r12,r0

loc_8c1805b6:
	add 0x24,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8c1805ca:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xE4,r15
	mov r6,r13
	mov r5,r8
	mov r13,r14
	mov r13,r5
	mov.l r4,@r15
	mov.l r7,@(0xC,r15)
	bsr loc_8c18033e
	mov.l @r15,r4
	mov r0,r11
	cmp/pz r11
	bt loc_8c1805f6
	bra loc_8c18077a
	nop 

loc_8c1805f6:
	mov.l @(0x28,PC),r2
	mov r15,r5
	add 0x04,r5
	jsr @r2
	mov r8,r4
	cmp/pz r0
	bt loc_8c180628
	mov.l @(0x1C,PC),r4
	bra loc_8c18063a
	mov r8,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18060a:
	#data 0x0200
loc_8c18060c:
	#data 0x07FF
	#align4

loc_8c180610:
	#data bank12.loc_8c129128
loc_8c180614:
	#data bank1c.loc_8c1c4DBC
loc_8c180618:
	#data bank17.loc_8c17EB7A
loc_8c18061C:
	#data bank1c.loc_8c1c4DEC
loc_8c180620:
	#data bank17.loc_8c17F9BA
loc_8c180624:
	#data bank1c.loc_8c1c4E1C

;==============================================
loc_8c180628:
	mov r15,r5
	add 0x14,r5
	bsr loc_8c180890
	mov r8,r4
	tst r0,r0
	bf/s loc_8c180644
	mov.l r0,@(0x8,r15)
	mov.l @(0xEC,PC),r4
	mov r8,r5

loc_8c18063a:
	mov.l @(0xEC,PC),r2
	jsr @r2
	nop 
	bra loc_8c18077c
	mov 0xFF,r0

loc_8c180644:
	mov.l @r15,r4
	mov 0x12,r0
	mov.l @(0xE0,PC),r3
	mov 0xFF,r11
	shll2 r4
	mov.l @(0xE0,PC),r12
	add r3,r4
	mov.l @r4,r2
	mov.l r2,@r14
	mov 0x01,r2
	mov.l r13,@r4
	mov 0x00,r13
	mov.l @(0x4,r15),r1
	mov r13,r10
	mov r10,r9
	mov.l r1,@(0x8,r14)
	mov r14,r1
	mov.b r2,@(r0,r14)
	mov 0xE0,r2
	and r2,r12
	mov r12,r3
	add 0x14,r1
	mov.l r1,@(0x18,r15)
	add 0x04,r3
	mov.l r13,@(0x10,r15)
	mov.l r10,@(0xC,r14)
	bra loc_8c18073e
	mov.l r3,@r15

loc_8c18067c:
	mov 0x01,r5
	mov r12,r6
	bsr loc_8c180370
	mov.l @(0x8,r15),r4
	cmp/pl r0
	bf loc_8c18073c
	mov.l @(0xC,r14),r3
	tst r3,r3
	bf/s loc_8c1806ba
	mov r13,r4
	mov.l @r15,r3
	mov.l @(0xA0,PC),r4
	mov.l @r3,r2
	cmp/gt r4,r2
	bf loc_8c1806a4
	mov.l @r15,r1
	mov.l r4,@r1
	mov 0xFC,r4
	bra loc_8c180752
	mov r4,r11

loc_8c1806a4:
	mov.l @r15,r4
	mov.l @(0xC,r15),r3
	mov.l @r4,r4
	cmp/ge r4,r3
	bt loc_8c1806b2
	bra loc_8c1806b4
	mov.l @(0xC,r15),r3

loc_8c1806b2:
	mov r4,r3

loc_8c1806b4:
	mov 0x02,r5
	mov.l r3,@(0xC,r14)
	mov r5,r4

loc_8c1806ba:
	mov.w @(0x62,PC),r5
	mov r5,r9
	cmp/ge r9,r4
	bt loc_8c18071c

loc_8c1806c2:
	mov r4,r0
	shll2 r0
	mov.l @(r0,r12),r3
	tst r3,r3
	bf loc_8c1806d0
	bra loc_8c18070c
	add 0x02,r4

loc_8c1806d0:
	mov.l @(0x10,r15),r5
	mov r4,r0
	mov.w @(0x4A,PC),r7
	shll2 r0
	add 0x01,r5
	mov.l r5,@(0x10,r15)
	add 0xFF,r5
	mov.l @(0x18,r15),r3
	shll2 r5
	shll r5
	mov r7,r6
	add r3,r5
	mov.l @(0x4C,PC),r3
	mov.w r10,@r5
	add 0x01,r6
	mov.l @(r0,r12),r1
	add 0x01,r4
	add r7,r1
	jsr @r3
	mov r6,r0
	mov.l r0,@(0x4,r5)
	mov r4,r0
	shll2 r0
	mov.l @(0x38,PC),r3
	mov.l @(r0,r12),r1
	add 0x01,r4
	add r7,r1
	jsr @r3
	mov r6,r0
	mov.w r0,@(0x2,r5)

loc_8c18070c:
	mov.l @(0xC,r14),r2
	add 0x01,r10
	cmp/ge r2,r10
	bf loc_8c180718
	bra loc_8c180752
	mov r13,r11

loc_8c180718:
	cmp/ge r9,r4
	bf loc_8c1806c2

loc_8c18071c:
	bra loc_8c18073e
	mov r13,r9

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c180720:
	#data 0x0200
loc_8c180722:
	#data 0x07FF
	#align4

loc_8c180724:
	#data bank1c.loc_8c1c4E4C
loc_8c180728:
	#data bank17.loc_8c17EB7A
loc_8c18072c:
	#data 0x8C330178
loc_8c180730:
	#data 0x8C333640
loc_8c180734:
	#data 0x00010000

loc_8c180738:
#data bank12.loc_8c129128

;==============================================
loc_8c18073c:
	add 0x01,r9

loc_8c18073e:
	mov 0x03,r4
	cmp/ge r4,r9
	bf loc_8c18067c
	mov r9,r0
	cmp/eq 0x03,r0
	bf loc_8c180752
	mov.l @(0xF0,PC),r3
	mov.l @(0xE8,PC),r4
	jsr @r3
	mov r8,r5

loc_8c180752:
	mov r11,r0
	cmp/eq 0xFC,r0
	bf loc_8c180760
	mov.l @(0xE0,PC),r3
	mov.l @(0xE4,PC),r4
	jsr @r3
	mov r8,r5

loc_8c180760:
	mov.w @(0x10,r15),r0
	mov.w r0,@(0x10,r14)
	mov.w @(0x10,r14),r0
	mov.l @r14,r3
	extu.w r0,r0
	mov.l @(0x4,r3),r3
	shll2 r0
	shll r0
	add r3,r0
	add 0x14,r0
	mov.l r0,@(0x4,r14)
	bsr loc_8c1809dc
	mov.l @(0x8,r15),r4

loc_8c18077a:
	mov r11,r0

loc_8c18077c:
	add 0x1C,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8c180790:
	mov.l @(0xB0,PC),r0
	shll2 r4
	mov.l @(r0,r4),r4
	rts 
	mov.l @(0x4,r4),r0

;==============================================
loc_8c18079a:
	mov.l @(0xAC,PC),r7
	mov.w @(0x96,PC),r3
	mov r7,r5
	mov r7,r4
	add r3,r7
	cmp/hs r7,r4
	bt/s loc_8c1807bc
	mov 0x00,r6

loc_8c1807aa:
	mov.b @r4,r3
	tst r3,r3
	bf loc_8c1807b4
	bra loc_8c1807bc
	mov r5,r6

loc_8c1807b4:
	add 0x30,r4
	cmp/hs r7,r4
	bf/s loc_8c1807aa
	add 0x30,r5

loc_8c1807bc:
	rts 
	mov r6,r0

loc_8c1807c0:
	sts.l pr,@-r15
	bsr loc_8c18079a
	nop 
	mov r0,r4
	tst r4,r4
	bf loc_8c1807d2
	lds.l @r15+,pr
	rts 
	mov 0x00,r0

loc_8c1807d2:
	mov 0x01,r6
	mov r6,r0
	mov 0x00,r5
	mov.b r0,@(0x1,r4)
	mov r5,r0
	mov.l r5,@(0x4,r4)
	mov.l r5,@(0x1C,r4)
	mov.l r5,@(0x20,r4)
	mov.l r5,@(0x24,r4)
	mov.b r0,@(0x2,r4)
	mov.l r0,@(0x8,r4)
	mov r4,r0
	mov.b r6,@r4
	lds.l @r15+,pr
	rts 
	nop 

loc_8c1807f2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r5,r13
	mov.l @(0x48,PC),r3
	mov r15,r5
	mov r4,r12
	add 0x08,r5
	jsr @r3
	mov r13,r4
	mov.l @(0x2C,PC),r11
	mov r0,r14
	cmp/pz r14
	bt loc_8c18081a
	mov.l @(0x38,PC),r4
	bra loc_8c18082e
	mov r13,r5

loc_8c18081a:
	mov.l @(0x38,PC),r3
	mov r15,r5
	add 0x04,r5
	jsr @r3
	mov r13,r4
	mov r0,r14
	cmp/pz r14
	bt loc_8c18085c
	mov.l @(0x2C,PC),r4
	mov r13,r5

loc_8c18082e:
	jsr @r11
	nop 
	bra loc_8c180870
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c180836:
	#data 0x0300
	#align4

loc_8c180838:
	#data bank1c.loc_8c1c4E7C
loc_8c18083C:
	#data bank17.loc_8c17EB7A
loc_8c180840:
	#data bank1c.loc_8c1c4EAC
loc_8c180844:
	#data 0x8C330178
loc_8c180848:
	#data 0x8C32FE78
loc_8c18084C:
	#data bank17.loc_8c17F9BA
loc_8c180850:
	#data bank1c.loc_8c1c4EDC
loc_8c180854:
	#data bank17.loc_8c17F9D8
loc_8c180858:
	#data bank1c.loc_8c1c4F04

;==============================================
loc_8c18085c:
	mov.l @(0x23C,PC),r2
	mov r15,r5
	jsr @r2
	mov r13,r4
	mov r0,r14
	cmp/pz r14
	bt loc_8c180874
	mov.l @(0x234,PC),r4
	jsr @r11
	mov r13,r5

loc_8c180870:
	bra loc_8c180882
	mov r14,r0

loc_8c180874:
	mov.l @(0x8,r15),r2
	mov 0x00,r0
	mov.l r2,@(0xC,r12)
	mov.l @(0x4,r15),r3
	mov.l r3,@(0x10,r12)
	mov.l @r15,r2
	mov.l r2,@(0x14,r12)

loc_8c180882:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c180890:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0xFF,r3
	mov.l r5,@r15
	mov.l r3,@-r15
	mov r4,r13
	mov.l @(0x4,r15),r7
	mov 0x00,r5
	mov r13,r6
	bsr loc_8c1802d8
	mov 0x01,r4
	mov.l @(0x1F8,PC),r3
	jsr @r3
	add 0x04,r15
	bsr loc_8c1807c0
	nop 
	mov r0,r14
	tst r14,r14
	bt loc_8c1808cc
	mov r13,r5
	bsr loc_8c1807f2
	mov r14,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c1808cc
	bsr loc_8c1809dc
	mov r14,r4
	mov 0x00,r14

loc_8c1808cc:
	mov.l @(0x1D8,PC),r3
	jsr @r3
	nop 
	mov 0xFF,r2
	mov r13,r6
	mov.l r2,@-r15
	mov 0x01,r5
	mov.l @(0x4,r15),r7
	bsr loc_8c1802d8
	mov r5,r4
	mov r14,r0
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1808ec:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l r5,@(0x8,r15)
	mov r4,r14
	mov.l r6,@(0xC,r15)
	mov r15,r6
	mov.l @(0xC,r15),r5
	add 0x04,r6
	mov r15,r7
	bsr loc_8c180f26
	mov.l @(0x8,r15),r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c180914
	mov 0xFD,r0
	add 0x10,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c180914:
	mov.l @(0x4,r15),r3
	mov 0x00,r0
	mov.l r3,@(0xC,r14)
	mov.l @r15,r2
	mov.l r2,@(0x10,r14)
	mov.l @r15,r3
	shll8 r3
	shll2 r3
	shll r3
	mov.l r3,@(0x14,r14)
	add 0x10,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c180930:
	mov.l r14,@-r15
	mov 0xFF,r3
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov r4,r12
	sts.l pr,@-r15
	mov r12,r6
	mov 0x00,r5
	mov r13,r7
	mov.l r3,@-r15
	bsr loc_8c1802d8
	mov 0x02,r4
	mov.l @(0x158,PC),r3
	jsr @r3
	add 0x04,r15
	bsr loc_8c1807c0
	nop 
	mov r0,r14
	tst r14,r14
	bt loc_8c18096e
	mov r12,r5
	mov r13,r6
	bsr loc_8c1808ec
	mov r14,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c18096e
	bsr loc_8c1809dc
	mov r14,r4
	mov 0x00,r14

loc_8c18096e:
	mov.l @(0x138,PC),r3
	jsr @r3
	nop 
	mov 0xFF,r2
	mov r12,r6
	mov 0x01,r5
	mov.l r2,@-r15
	mov r13,r7
	bsr loc_8c1802d8
	mov 0x02,r4
	mov r14,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14


;==============================================
loc_8c180990:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x4,r14),r3
	tst r3,r3
	bt loc_8c1809a8
	mov.l @(0x10C,PC),r3
	jsr @r3
	mov.l @(0x4,r14),r4
	mov 0x00,r2
	mov.l r2,@(0x4,r14)

loc_8c1809A8:
	mov.l @(0x8,r14),r3
	tst r3,r3
	bt loc_8c1809d4
	mov.b @(0x2,r14),r0
	tst r0,r0
	bf loc_8c1809d4
	mov.l @(0xF8,PC),r2
	mov.l @r2,r0
	cmp/eq 0x01,r0
	bf loc_8c1809c4
	mov.l @(0xF4,PC),r1
	mov.l @(0x2C,r14),r5
	jsr @r1
	mov.l @(0x28,r14),r4

loc_8c1809C4:
	mov.l @(0x8,r14),r3
	mov.l r3,@r15
	mov.l @r3,r2
	mov.l @(0xC,r2),r1
	jsr @r1
	mov r3,r4
	mov 0x00,r3
	mov.l r3,@(0x8,r14)

loc_8c1809D4:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1809dc:
	mov.l r14,@-r15
	mov 0xFF,r3
	sts.l pr,@-r15
	mov r4,r14
	mov r14,r6
	mov 0x00,r5
	mov r3,r7
	mov.l r3,@-r15
	bsr loc_8c1802d8
	mov 0x03,r4
	tst r14,r14
	bt/s loc_8c180a26
	add 0x04,r15
	mov.l @(0xAC,PC),r2
	jsr @r2
	nop 
	mov.b @(0x1,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c180a06
	bsr loc_8c180c2a
	mov r14,r4

loc_8c180a06:
	mov.l @(0xB0,PC),r3
	mov 0x00,r5
	mov 0x30,r6
	jsr @r3
	mov r14,r4
	mov.l @(0x94,PC),r2
	jsr @r2
	nop 
	mov 0xFF,r3
	mov r14,r6
	mov 0x01,r5
	mov.l r3,@-r15
	mov r3,r7
	bsr loc_8c1802d8
	mov 0x03,r4
	add 0x04,r15

loc_8c180a26:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c180a2c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x84,PC),r12
	mov r4,r14
	tst r14,r14
	mov r5,r13
	bf/s loc_8c180a48
	mov.l r6,@r15
	mov.l @(0x7C,PC),r4
	bra loc_8c180a4e
	nop 

loc_8c180a48:
	cmp/pz r13
	bt loc_8c180a56
	mov.l @(0x74,PC),r4

loc_8c180a4e:
	jsr @r12
	nop 
	bra loc_8c180a62
	nop 

loc_8c180a56:
	mov.l @r15,r2
	tst r2,r2
	bf loc_8c180a66
	mov.l @(0x68,PC),r4
	jsr @r12
	nop 

loc_8c180a62:
	bra loc_8c180b02
	mov 0xFD,r0

loc_8c180a66:
	mov.b @(0x1,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c180a70
	bra loc_8c180b02
	mov 0x00,r0

loc_8c180a70:
	mov.l @(0x4,r14),r2
	tst r2,r2
	bt loc_8c180a80
	mov.l @(0x54,PC),r4
	jsr @r12
	nop 
	bra loc_8c180b02
	mov 0xFF,r0

loc_8c180a80:
	mov.l @(0x20,PC),r3
	jsr @r3
	nop 
	mov.l @(0xC,r14),r2
	mov.l @(0x18,r14),r3
	add r3,r2
	mov.l r2,@(0x1C,r14)
	mov.l @(0x10,r14),r4
	mov.l @(0x18,r14),r3
	sub r3,r4
	cmp/ge r4,r13
	bt loc_8c180ad0
	bra loc_8c180ad2
	mov r13,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c180A9C:
	#data bank17.loc_8c17FA06
loc_8c180AA0:
	#data bank1c.loc_8c1c4F38
loc_8c180AA4:
	#data bank17.loc_8c17E784
loc_8c180AA8:
	#data bank17.loc_8c17E7AC
loc_8c180AAC:
	#data bank17.loc_8c17F64E
loc_8c180Ab0:
	#data 0x8C330578
loc_8c180AB4:
	#data bank19.loc_8c194F5E
loc_8c180AB8:
	#data bank12.loc_8c129728
loc_8c180ABC:
	#data bank17.loc_8c17EB7A
loc_8c180AC0:
	#data bank1c.loc_8c1c4F70
loc_8c180AC4:
	#data bank1c.loc_8c1c4F9C
loc_8c180AC8:
	#data bank1c.loc_8c1c4FCC
loc_8c180ACC:
	#data bank1c.loc_8c1c4FF4

;==============================================
loc_8c180AD0:
	mov r4,r3

loc_8c180ad2:
	mov.l r3,@(0x20,r14)
	mov 0x00,r2
	mov.l @(0x22C,PC),r3
	mov.l r2,@(0x24,r14)
	mov.l @r15,r6
	mov.l @(0x20,r14),r5
	jsr @r3
	mov.l @(0x1C,r14),r4
	mov r0,r4
	tst r4,r4
	bf loc_8c180aec
	bra loc_8c180afa
	mov 0xFF,r13

loc_8c180aec:
	mov.l @(0x218,PC),r3
	mov 0x02,r0
	mov.l r4,@(0x4,r14)
	mov.b r0,@(0x1,r14)
	jsr @r3
	mov.l @(0x4,r14),r4
	mov.l @(0x20,r14),r13

loc_8c180afa:
	mov.l @(0x210,PC),r2
	jsr @r2
	nop 
	mov r13,r0

loc_8c180b02:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x1FC,PC),r3
	mov.l r4,@(0x4,r15)
	mov.l r5,@(0x8,r15)
	jsr @r3
	mov.l r6,@r15
	mov.l @(0x8,r15),r5
	mov.l @r15,r6
	bsr loc_8c180a2c
	mov.l @(0x4,r15),r4
	mov.l r0,@r15
	mov 0x01,r0
	mov.l @(0x4,r15),r3
	mov.b r0,@(0x2,r3)
	mov.l @(0x1DC,PC),r3
	jsr @r3
	nop 
	mov.l @r15,r0
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c180b3c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r6,r13
	mov.l r6,@-r15
	mov r4,r14
	mov r5,r11
	mov 0x00,r5
	mov r14,r6
	mov r11,r7
	bsr loc_8c1802d8
	mov 0x04,r4
	mov.l @(0x1B8,PC),r12
	tst r14,r14
	bf/s loc_8c180b68
	add 0x04,r15
	mov.l @(0x1B4,PC),r4
	bra loc_8c180b6e
	nop 

loc_8c180b68:
	cmp/pz r11
	bt loc_8c180b76
	mov.l @(0x1AC,PC),r4

loc_8c180b6e:
	jsr @r12
	nop 
	bra loc_8c180b92
	nop 

loc_8c180b76:
	tst r13,r13
	bf loc_8c180b84
	mov.l @(0x1A4,PC),r4
	jsr @r12
	nop 
	bra loc_8c180b92
	nop 

loc_8c180b84:
	mov 0x1F,r3
	mov r13,r4
	tst r3,r4
	bt loc_8c180b96
	mov.l @(0x194,PC),r4
	jsr @r12
	nop 

loc_8c180b92:
	bra loc_8c180c1c
	mov 0xFD,r0

loc_8c180b96:
	mov.b @(0x1,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c180ba0
	bra loc_8c180c1c
	mov 0x00,r0

loc_8c180ba0:
	mov.l @(0x8,r14),r2
	tst r2,r2
	bt loc_8c180bb0
	mov.l @(0x180,PC),r4
	jsr @r12
	nop 
	bra loc_8c180c1c
	mov 0xFF,r0

loc_8c180bb0:
	mov r11,r5
	shll8 r5
	shll2 r5
	mov.l @(0x174,PC),r3
	shll r5
	mov 0x00,r6
	mov.l r5,@r15
	jsr @r3
	mov r13,r4
	mov r0,r12
	tst r12,r12
	bf loc_8c180bcc
	bra loc_8c180c1c
	mov 0xFE,r0

loc_8c180bcc:
	mov.l @(0x160,PC),r2
	mov.l r13,@(0x28,r14)
	mov.l @r15,r3
	mov.l r3,@(0x2C,r14)
	mov.l @r2,r0
	cmp/eq 0x01,r0
	bf loc_8c180be2
	mov.l @(0x158,PC),r1
	mov.l @(0x2C,r14),r5
	jsr @r1

loc_8c180be0:
	mov.l @(0x28,r14),r4

loc_8c180be2:
	mov.l @(0x12C,PC),r3
	jsr @r3
	nop 
	mov r11,r5
	mov r12,r6
	bsr loc_8c180a2c
	mov r14,r4
	cmp/pl r0
	bt/s loc_8c180c02
	mov.l r0,@r15
	mov.l @r12,r2
	mov.l @(0xC,r2),r3
	jsr @r3
	mov r12,r4
	bra loc_8c180c04
	nop 

loc_8c180c02:
	mov.l r12,@(0x8,r14)

loc_8c180c04:
	mov.l @(0x104,PC),r3
	mov 0x00,r0
	jsr @r3
	mov.b r0,@(0x2,r14)
	mov r14,r6
	mov 0x01,r5
	mov.l r13,@-r15
	mov r11,r7
	bsr loc_8c1802d8
	mov 0x04,r4
	add 0x04,r15
	mov.l @r15,r0

loc_8c180c1c:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c180c2a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0xFF,r3
	mov r4,r14
	mov r14,r6
	mov 0x00,r5
	mov.l r3,@-r15
	mov r3,r7
	bsr loc_8c1802d8
	mov 0x05,r4
	tst r14,r14
	bf/s loc_8c180c58
	add 0x04,r15
	mov.l @(0xCC,PC),r2
	mov.l @(0xEC,PC),r4
	jsr @r2
	nop 
	mov 0xFD,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c180c58:
	mov.b @(0x1,r14),r0
	cmp/eq 0x01,r0
	bt loc_8c180cb6
	mov.b @(0x1,r14),r0
	cmp/eq 0x03,r0
	bf loc_8c180c6a
	mov 0x01,r0
	bra loc_8c180cb6
	mov.b r0,@(0x1,r14)

loc_8c180c6a:
	mov.l @(0x4,r14),r2
	tst r2,r2
	bf loc_8c180c82
	mov.l @(0xA0,PC),r3
	mov.l @(0xC8,PC),r4
	jsr @r3
	nop 
	mov 0xFF,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c180c82:
	mov.l @(0x8C,PC),r2
	jsr @r2
	nop 
	mov.l @(0xB4,PC),r3
	jsr @r3
	mov.l @(0x4,r14),r4
	mov.l @(0xB4,PC),r2
	mov r15,r5
	jsr @r2
	mov.l @(0x4,r14),r4
	mov.l @r15,r3
	mov.l r3,@(0x24,r14)
	bsr loc_8c180990
	mov r14,r4
	mov.l @(0x6C,PC),r3
	mov 0x01,r0
	jsr @r3
	mov.b r0,@(0x1,r14)
	mov 0xFF,r2
	mov r14,r6
	mov 0x01,r5
	mov.l r2,@-r15
	mov r2,r7
	bsr loc_8c1802d8
	mov 0x05,r4
	add 0x04,r15

loc_8c180cb6:
	mov.l @(0x18,r14),r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c180CC0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.b @(0x1,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c180cfc
	mov.l @(0x78,PC),r2
	jsr @r2
	mov.l @(0x4,r14),r4
	mov.l @(0x6C,PC),r3
	mov r15,r5
	mov.b r0,@(0x1,r14)
	jsr @r3
	mov.l @(0x4,r14),r4
	mov.l @r15,r2
	mov.l r2,@(0x24,r14)
	mov.b @(0x1,r14),r0
	cmp/eq 0x03,r0
	bt/s loc_8c180cf0
	mov r0,r4
	mov r4,r0
	cmp/eq 0x04,r0
	bf loc_8c180cfc

loc_8c180CF0:
	mov.l @(0x18,r14),r2
	mov.l @(0x24,r14),r3
	add r3,r2
	mov.l r2,@(0x18,r14)
	bsr loc_8c180990
	mov r14,r4

loc_8c180CFC:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c180D04:
	#data bank17.loc_8c17F590
loc_8c180D08:
	#data bank17.loc_8c17F676
loc_8c180D0C:
	#data bank17.loc_8c17E7AC
loc_8c180D10:
	#data bank17.loc_8c17E784
loc_8c180D14:
	#data bank17.loc_8c17EB7A
loc_8c180D18:
	#data bank1c.loc_8c1c5028
loc_8c180D1C:
	#data bank1c.loc_8c1c5054
loc_8c180D20:
	#data bank1c.loc_8c1c5084
loc_8c180D24:
	#data bank1c.loc_8c1c50AC
loc_8c180D28:
	#data bank1c.loc_8c1c50E8
loc_8c180D2C:
	#data loc_8c182854
loc_8c180D30:
	#data 0x8C330578
loc_8c180D34:
	#data bank19.loc_8c194F5E
loc_8c180D38:
	#data bank1c.loc_8c1c5110
loc_8c180D3C:
	#data bank1c.loc_8c1c5138
loc_8c180D40:
	#data bank17.loc_8c17F6A0
loc_8c180D44:
	#data bank17.loc_8c17F958
loc_8c180D48:
	#data bank17.loc_8c17F940

;==============================================
loc_8c180D4C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0xD8,PC),r3
	jsr @r3
	nop 
	mov.w @(0xCC,PC),r13
	mov.l @(0xD4,PC),r4
	add r4,r13
	mov r4,r14

loc_8c180D60:
	mov r14,r4
	mov.b @r4,r0
	cmp/eq 0x01,r0
	bf loc_8c180d6c
	bsr loc_8c180cc0
	nop 

loc_8c180D6C:
	add 0x30,r14
	cmp/hs r13,r14
	bf loc_8c180d60
	lds.l @r15+,pr
	mov.l @(0xBC,PC),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r6,r13
	mov.l r12,@-r15
	mov r5,r12
	sts.l pr,@-r15
	mov 0x00,r5
	mov r12,r7
	mov.l r6,@-r15
	mov r14,r6
	bsr loc_8c1802d8
	mov 0x06,r4
	tst r14,r14
	bf/s loc_8c180da2
	add 0x04,r15
	mov.l @(0x98,PC),r4
	bra loc_8c180dd0
	nop 

loc_8c180da2:
	mov.b @(0x1,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c180dac
	bsr loc_8c180c2a
	mov r14,r4

loc_8c180dac:
	tst r13,r13
	bf loc_8c180db4
	bra loc_8c180dda
	mov.l r12,@(0x18,r14)

loc_8c180db4:
	mov r13,r0
	cmp/eq 0x01,r0
	bf loc_8c180dc2
	mov.l @(0x18,r14),r2
	add r12,r2
	bra loc_8c180dda
	mov.l r2,@(0x18,r14)

loc_8c180dc2:
	cmp/eq 0x02,r0
	bf loc_8c180dce
	mov.l @(0x10,r14),r3
	add r12,r3
	bra loc_8c180dda
	mov.l r3,@(0x18,r14)

loc_8c180dce:
	mov.l @(0x6C,PC),r4

loc_8c180dd0:
	mov.l @(0x6C,PC),r3
	jsr @r3
	nop 
	bra loc_8c180e02
	mov 0xFD,r0

loc_8c180dda:
	mov.l @(0x18,r14),r2
	cmp/pz r2
	bt loc_8c180de6
	mov 0x00,r1
	bra loc_8c180df2
	mov.l r1,@(0x18,r14)

loc_8c180de6:
	mov.l @(0x18,r14),r3
	mov.l @(0x10,r14),r2
	cmp/gt r2,r3
	bf loc_8c180df2
	mov.l @(0x10,r14),r0
	mov.l r0,@(0x18,r14)

loc_8c180df2:
	mov r14,r6
	mov 0x01,r5
	mov.l r13,@-r15
	mov r12,r7
	bsr loc_8c1802d8
	mov 0x06,r4
	add 0x04,r15
	mov.l @(0x18,r14),r0

loc_8c180e02:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c180e0c:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c180e20
	mov.l @(0x2C,PC),r2
	mov.l @(0x2C,PC),r4
	jsr @r2
	nop 
	lds.l @r15+,pr
	rts 
	mov 0xFD,r0

;==============================================
loc_8c180e20:
	mov.l @(0x18,r4),r0
	lds.l @r15+,pr
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c180E28:
	#data 0x0300
	#align4

loc_8c180E2C:
	#data bank17.loc_8c17E784
loc_8c180E30:
	#data 0x8C32FE78
loc_8c180E34:
	#data bank17.loc_8c17E7AC
loc_8c180E38:
	#data bank1c.loc_8c1c5164
loc_8c180E3C:
	#data bank1c.loc_8c1c518C
loc_8c180E40:
	#data bank17.loc_8c17EB7A
loc_8c180E44:
	#data bank1c.loc_8c1c51B4

;==============================================
loc_8c180e48:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c180e5c
	mov.l @(0x100,PC),r2
	mov.l @(0xF8,PC),r4
	jsr @r2
	nop 
	lds.l @r15+,pr
	rts 
	mov 0xFD,r0

;==============================================
loc_8c180e5c:
	mov.l @(0x10,r4),r0
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c180e64:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c180e78
	mov.l @(0xE4,PC),r2
	mov.l @(0xE4,PC),r4
	jsr @r2
	nop 
	lds.l @r15+,pr
	rts 
	mov 0xFD,r0

;==============================================
loc_8c180e78:
	mov.l @(0x14,r4),r0
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c180e80:
	sts.l pr,@-r15
	add 0xFC,r15
	tst r4,r4
	bf/s loc_8c180ea0
	mov.l r5,@r15
	mov.l @(0xC4,PC),r2
	mov.l @(0xC8,PC),r4
	jsr @r2
	nop 
	mov.l @r15,r3
	mov 0x00,r2
	mov.l r2,@r3
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov 0xFD,r0

;==============================================
loc_8c180ea0:
	mov.l @(0x1C,r4),r2
	mov.l @r15,r3
	mov.l r2,@r3
	mov.l @(0x20,r4),r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c180eb0:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c180ec4
	mov.l @(0x98,PC),r2
	mov.l @(0xA0,PC),r4
	jsr @r2
	nop 
	lds.l @r15+,pr
	rts 
	mov 0xFD,r0

;==============================================
loc_8c180ec4:
	mov.l @(0x24,r4),r0
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c180ecc:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c180ee0
	mov.l @(0x7C,PC),r2
	mov.l @(0x88,PC),r4
	jsr @r2
	nop 
	lds.l @r15+,pr
	rts 
	mov 0xFD,r0

;==============================================
loc_8c180ee0:
	mov.b @(0x1,r4),r0
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c180ee8:
	sts.l pr,@-r15
	cmp/pz r4
	bf loc_8c180ef4
	mov.w @(loc_8C180F4A,pc),r2
	cmp/ge r2,r4
	bf loc_8c180f00

loc_8c180ef4:
	mov.l @(loc_8c180f50,pc),r2
	mov.l @(loc_8c180f64,pc),r4
	jsr @r2
	nop 
	bra loc_8c180f18
	nop 

loc_8c180f00:
	mov.l @(loc_8C180F68,pc),r0
	cmp/pz r5
	shll2 r4
	bf/s loc_8c180f10
	mov.l @(r0,r4),r4
	mov.l @(0x0C,r4),r3
	cmp/ge r3,r5
	bf loc_8c180f1e

loc_8c180f10:
	mov.l @(loc_8c180f50,pc),r3
	mov.l @(loc_8c180f6c,pc),r4
	jsr @r3
	nop 

loc_8c180f18:
	lds.l @r15+,pr 
	rts 
	mov 0xFD,r0

;==============================================
loc_8c180f1e:
	mov 0x00,r0
	lds.l @r15+,pr 
	rts 
	nop 

loc_8c180F26:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r6,r12
	mov r5,r14
	mov.l r4,@r15
	bsr loc_8c180EE8
	mov r7,r13
	mov r0,r11
	cmp/pz r11
	bt loc_8c180F70
	mov 0xFF,r4 ; r4 set to 0xFFFFFFFF
	mov.l r4,@r12
	bra loc_8c180FE8
	mov.l r4,@r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c180f4a:
	#data 0x0100
	#align4

loc_8c180F4C:
	#data bank1c.loc_8c1c51DC
loc_8c180F50:
	#data bank17.loc_8c17EB7A
loc_8c180F54:
	#data bank1c.loc_8c1c5208
loc_8c180F58:
	#data bank1c.loc_8c1c5238
loc_8c180F5C:
	#data bank1c.loc_8c1c5268
loc_8c180F60:
	#data bank1c.loc_8c1c5298
loc_8c180F64:
	#data bank1c.loc_8c1c52C0
loc_8c180f68:
	#data 0x8C330178
loc_8c180F6C:
	#data bank1c.loc_8c1c52F8

;==============================================
loc_8c180F70:
	mov.l @r15,r4
	mov.l @(loc_8c181000,pc),r0 ; r0 set to 0x8C330178
	shll2 r4
	bra loc_8c180FAE
	mov.l @(r0,r4),r4

loc_8c180F7A:
	mov r4,r1
	add 0x14,r1
	bra loc_8c180fa4
	mov r7,r6

loc_8c180F82:
	mov r6,r5
	shll2 r5
	shll r5
	add r1,r5
	mov.w @r5,r3
	extu.w r3,r3
	cmp/eq r14,r3
	bf loc_8c180fa2
	mov.l @(0x8,r4),r2
	mov.l @(0x4,r5),r3
	add r3,r2
	mov.l r2,@r12
	mov.w @(0x2,r5),r0
	extu.w r0,r0
	bra loc_8c180fe8
	mov.l r0,@r13

loc_8c180FA2:
	add 0x01,r6

loc_8c180FA4:
	mov.w @(0x10,r4),r0
	extu.w r0,r0
	cmp/ge r0,r6
	bf loc_8c180f82
	mov.l @r4,r4

loc_8c180fae:
	mov.l @r4,r2
	tst r2,r2
	bf/s loc_8c180f7a
	mov 0x00,r7
	mov r4,r5
	add 0x14,r5
	mov.w @r5,r6
	mov r5,r1
	mov 0x00,r0
	cmp/pl r14
	mov r7,r5
	extu.w r6,r6
	add 0x02,r1
	bf/s loc_8c180fd8
	add r1,r0

loc_8c180fcc:
	mov.w @r0+,r3
	add 0x01,r5
	cmp/ge r14,r5
	extu.w r3,r3
	bf/s loc_8c180fcc
	add r3,r6

loc_8c180fd8:
	mov.l @(0x08,r4),r3
	mov r14,r0
	shll r0
	add r3,r6
	mov.l r6,@r12
	mov.w @(r0,r1),r3
	extu.w r3,r3
	mov.l r3,@r13

loc_8c180FE8:
	mov r11,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14


;==============================================
loc_8c180ff8:
	mov.l @(0x8,PC),r3
	rts 
	mov.l r4,@r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c181000:
	#data 0x8C330178
loc_8c181004:
	#data 0x8C330578

;==============================================
loc_8c181008:
	rts
	nop

;==============================================
loc_8c18100C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xF8,PC),r3
	jsr @r3
	nop 
	mov.l @(0xFC,PC),r2
	mov.l @(0xF4,PC),r4
	mov.w @(0xE6,PC),r6
	jsr @r2
	mov 0x00,r5
	mov.l @(0xF0,PC),r3
	mov.l @(0xF4,PC),r4
	mov.w @(0xDE,PC),r6
	jsr @r3
	mov 0x00,r5
	mov.l @(0xF4,PC),r5
	mov 0x00,r4
	mov.w @(0xD6,PC),r7
	mov.l @(0xE8,PC),r6

loc_8c181032:
	add 0x01,r4
	mov.l r5,@r6
	cmp/ge r7,r4
	bf/s loc_8c181032
	add 0x04,r6
	mov.l @(0xE4,PC),r14
	mov.l @r14,r2
	tst r2,r2
	bf loc_8c18104c
	mov.l @(0xE0,PC),r3
	jsr @r3
	nop 
	mov.l r0,@r14

loc_8c18104C:
	mov.l @r14,r2
	mov.l @(0xDC,PC),r1
	mov.l @(0xC,r2),r3
	jsr @r3
	mov.l @r1,r4
	bsr loc_8c181008
	nop 
	lds.l @r15+,pr
	mov.l @(0xD0,PC),r2
	mov 0x00,r5
	mov r5,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c181066:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l @(0x9C,PC),r11
	mov.l r9,@-r15
	mov.w @(0x8C,PC),r10
	mov r11,r9
	sts.l pr,@-r15
	mov.w @(0x8C,PC),r14
	add r10,r9
	mov r11,r4
	mov r11,r12
	mov r11,r13

loc_8c181084:
	mov.b @r13,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c181090
	bsr loc_8c1813a0
	mov r12,r4

loc_8c181090:
	add r14,r13
	cmp/hs r9,r13
	bf/s loc_8c181084
	add r14,r12
	mov r11,r9
	mov r11,r13
	add r10,r9
	mov r11,r4
	mov r11,r5
	mov r11,r12

loc_8c1810A4:
	mov.b @r13,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c1810b0
	bsr loc_8c1812ba
	mov r12,r4

loc_8c1810B0:
	add r14,r13
	cmp/hs r9,r13
	bf/s loc_8c1810a4
	add r14,r12
	mov.l @(0x58,PC),r2
	mov 0x00,r5
	mov r10,r6
	jsr @r2
	mov r11,r4
	mov.l @(0x50,PC),r3
	mov.l @(0x50,PC),r4
	mov.w @(0x3C,PC),r6
	jsr @r3
	mov 0x00,r5
	mov.l @(0x50,PC),r5
	mov 0x00,r4
	mov.w @(0x34,PC),r6
	mov.l @(0x48,PC),r7

loc_8c1810D4:
	add 0x01,r4
	mov.l r5,@r7
	cmp/ge r6,r4
	bf/s loc_8c1810d4
	add 0x04,r7
	mov.l @(0x44,PC),r3
	mov.l @r3,r2
	mov.l @(0x10,r2),r1
	jsr @r1
	nop 
	lds.l @r15+,pr
	mov.l @(0x48,PC),r3
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c1810fa:
	mov.l @(0x28,PC),r3
	mov.l @(0x2C,PC),r2
	mov.l r4,@r3
	rts 
	mov.l r5,@r2


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c181104:
	#data 0x0480
loc_8c181106:
	#data 0x0820
loc_8c181108:
	#data 0x0200
loc_8c18110a:
	#data 0x0090
	#align4

loc_8c18110C:
	#data bank19.loc_8c19518C
loc_8c181110:
	#data 0x8C3356A0
loc_8c181114:
	#data bank12.loc_8c129728
loc_8c181118:
	#data 0x8C335B20
loc_8c18111c:
	#data 0x8C336340
loc_8c181120:
	#data 0x80808080
loc_8c181124:
	#data bank1c.loc_8c1c9624
loc_8c181128:
	#data bank19.loc_8c195E58
loc_8c18112C:
	#data bank1c.loc_8c1c9628
loc_8c181130:
	#data bank19.loc_8c1951C4
loc_8c181134:
	#data bank19.loc_8c195190

;==============================================
loc_8c181138:
	mov 0x00,r5
	mov.w @(0xDA,PC),r6
	mov r5,r0
	mov.b r0,@(0x1,r4)
	mov.b r0,@(0x4,r4)
	mov 0xFF,r3
	mov.b r0,@(0x5,r4)
	mov.b r0,@(0x6,r4)
	mov.l r0,@(0x34,r4)
	mov.l r0,@(0x2C,r4)
	mov.l r0,@(0x30,r4)
	mov 0x40,r0
	mov.l r6,@(r0,r4)
	mov 0x44,r0
	mov.l r6,@(r0,r4)
	mov 0x48,r0
	mov.l r5,@(r0,r4)
	mov 0x60,r0
	mov.l r5,@(r0,r4)
	mov 0x6C,r0
	mov.l r3,@(r0,r4)
	mov 0x70,r0
	mov.l r5,@(r0,r4)
	mov 0x74,r0
	mov.l r5,@(r0,r4)
	mov 0x78,r0
	mov.l r5,@(r0,r4)
	mov 0x7C,r0
	mov.l r5,@(r0,r4)
	add 0x04,r0
	mov.l r5,@(r0,r4)
	add 0x0C,r0
	mov.l r5,@(r0,r4)
	mov r5,r0
	mov.b r0,@(0x7,r4)
	mov.w @(0x98,PC),r0
	rts 
	mov.l r5,@(r0,r4)

;==============================================
loc_8c181184:
	mov.w @(0x94,PC),r0
	mov.l @(0x98,PC),r6
	add r6,r0
	mov r6,r4
	mov r6,r5
	mov.w @(0x8C,PC),r6
	cmp/hs r0,r4
	bt/s loc_8c1811a8
	mov 0x00,r7

loc_8c181196:
	mov.b @r4,r2
	tst r2,r2
	bf loc_8c1811a0
	bra loc_8c1811a8
	mov r5,r7

loc_8c1811A0:
	add r6,r4
	cmp/hs r0,r4
	bf/s loc_8c181196
	add r6,r5

loc_8c1811A8:
	rts 
	mov r7,r0

;==============================================
loc_8c1811AC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x01,r3
	mov.l @(0x64,PC),r12
	mov r5,r13
	cmp/ge r3,r13
	bf/s loc_8c1811cc
	mov r4,r11
	mov 0x02,r1
	cmp/gt r1,r13
	bf loc_8c1811d6

loc_8c1811CC:
	mov.l @(0x58,PC),r3
	jsr @r12
	mov.l r3,@-r15
	bra loc_8c1811f2
	add 0x04,r15

loc_8c1811D6:
	tst r11,r11
	bt loc_8c1811ea
	mov 0x00,r10
	cmp/pl r13
	mov r10,r5
	bf/s loc_8c1811fe
	mov r11,r4
 
loc_8c1811E4:
	mov.l @r4,r2
	tst r2,r2
	bf loc_8c1811f6

loc_8c1811EA:
	mov.l @(0x40,PC),r14
	jsr @r12
	mov.l r14,@-r15
	add 0x04,r15

loc_8c1811F2:
	bra loc_8c1812aa
	mov 0x00,r0

loc_8c1811F6:
	add 0x01,r5
	cmp/ge r13,r5
	bf/s loc_8c1811e4
	add 0x04,r4

loc_8c1811FE:
	mov.l @(0x30,PC),r2
	jsr @r2
	mov r15,r4
	bsr loc_8c181184
	nop 
	mov r0,r14
	tst r14,r14
	bf loc_8c181238
	mov.l @(0x24,PC),r3
	jsr @r12
	mov.l r3,@-r15
	bra loc_8c1812a2
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c181218:
	#data 0x2000
loc_8c18121a:
	#data 0x0088
loc_8c18121c:
	#data 0x0480
loc_8c18121e:
	#data 0x0090
	#align4

loc_8c181220:
	#data 0x8C3356A0
loc_8c181224:
	#data bank19.loc_8c1951E2
loc_8c181228:
	#data bank1c.loc_8c1c5360
loc_8c18122C:
	#data bank1c.loc_8c1c5390
loc_8c181230:
	#data bank19.loc_8c195194
loc_8c181234:
	#data bank1c.loc_8c1c53BC

;==============================================
loc_8c181238:
	mov r13,r0
	mov r10,r5
	cmp/pl r13
	mov.b r0,@(0x3,r14)
	mov.b r0,@(0x2,r14)
	bf/s loc_8c18125a
	mov r10,r4

loc_8c181246:
	mov r4,r0
	mov r14,r3
	mov.l @(r0,r11),r2
	add 0x10,r3
	add 0x01,r5
	add r4,r3
	cmp/ge r13,r5
	mov.l r2,@r3
	bf/s loc_8c181246
	add 0x04,r4

loc_8c18125A:
	mov.l @(0xF0,PC),r3
	mov.l @r3,r2
	mov.l @(0x14,r2),r1
	jsr @r1
	mov r13,r4
	mov r0,r3
	tst r3,r3
	bf/s loc_8c181278
	mov.l r0,@(0x38,r14)
	mov.l @(0xE0,PC),r3
	jsr @r12
	mov.l r3,@-r15
	add 0x04,r15
	bra loc_8c1812a2
	mov r10,r14

loc_8c181278:
	bsr loc_8c181138
	mov r14,r4
	mov 0x10,r5
	bsr loc_8c181fd6
	mov r14,r4
	mov.l @(0xD0,PC),r5
	bsr loc_8c18202e
	mov r14,r4
	mov.b @(0x3,r14),r0
	extu.b r0,r5
	bsr loc_8c181f30
	mov r14,r4
	mov.l @(0x38,r14),r2
	mov.l r2,@(0x4,r15)
	mov.l @r2,r3
	mov.l @(0x18,r3),r1
	jsr @r1
	mov r2,r4
	mov 0x01,r3
	mov.l r0,@(0x28,r14)
	mov.b r3,@r14

loc_8c1812A2:
	mov.l @(0xB4,PC),r2
	jsr @r2
	mov r15,r4
	mov r14,r0

loc_8c1812AA:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1812BA:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	tst r14,r14
	bf loc_8c1812D8
	mov.l @(loc_8c181360,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c18135C,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1812d8:
	mov.l @(loc_8c181364,pc),r2
	jsr @r2
	mov r15,r4
	mov.b @(0x01,r14),r0 
	tst r0,r0
	bt loc_8c1812e8
	bsr loc_8c1813a0
	mov r14,r4

loc_8c1812e8:
	mov 0x00,r5
	mov.b r5,@r14
	bra loc_8c1812fe
	mov r5,r4

loc_8c1812f0:
	mov r14,r3
	mov r4,r2
	add 0x10,r3
	shll2 r2
	add r3,r2
	add 0x01,r4
	mov.l r5,@r2

loc_8c1812fe:
	mov.b @(0x02,r14),r0 
	extu.b r0,r0
	cmp/ge r0,r4
	bf loc_8c1812f0
	mov.l @(0x38,r14),r2
	mov.l r2,@(0x04,r15) 
	mov.l @r2,r3
	mov.l @(0x0C,r3),r1
	jsr @r1
	mov r2,r4
	mov.l @(loc_8c181368,pc),r3
	mov 0x00,r5
	mov.w @(loc_8C181348,pc),r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c181358,pc),r2
	jsr @r2
	mov r15,r4
	add 0x08,r15
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

loc_8c18132A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	tst r14,r14
	bf loc_8c18136C
	mov.l @(loc_8c181360,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c18135C,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c181348:
	#data 0x0090
	#align4

loc_8c18134C:
	#data bank1c.loc_8c1c9624
loc_8c181350:
	#data bank1c.loc_8c1c53EC
loc_8c181354:
	#data 0x0000AC44
loc_8c181358:
	#data bank19.loc_8c1951AC
loc_8c18135C:
	#data bank1c.loc_8c1c5410
loc_8c181360:
	#data bank19.loc_8c1951E2
loc_8c181364:
	#data bank19.loc_8c195194
loc_8c181368:
	#data bank12.loc_8c129728

;==============================================
loc_8c18136c:
	mov.l @(loc_8c1815b4,pc),r2
	jsr @r2
	mov r15,r4
	mov.b @(0x01,r14),r0 
	tst r0,r0
	bt loc_8c18137c
	bsr loc_8c1813a0
	mov r14,r4

loc_8c18137c:
	mov 0x04,r0
	mov.b r0,@(0x01,r14) 
	mov 0x44,r0
	mov.l @(r0,r14),r3
	mov 0x40,r0
	mov 0x01,r5
	mov.l r3,@(r0,r14) 
	bsr loc_8c1816f6
	mov r14,r4
	mov.l @(loc_8c1815b8,pc),r2
	jsr @r2
	mov r15,r4
	add 0x04,r15
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18139c:
	rts
	nop

;==============================================
loc_8c1813A0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	tst r14,r14
	bf loc_8c1813BE
	mov.l @(loc_8c1815C0,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c1815BC,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1813be:
	mov.b @(0x01,r14),r0 
	tst r0,r0
	bt loc_8c1813e8
	mov.l @(loc_8c1815b4,pc),r2
	jsr @r2
	mov r15,r4
	mov 0x00,r5
	bsr loc_8c1817d4
	mov r14,r4
	mov 0x00,r5
	bsr loc_8c1816f6
	mov r14,r4
	bsr loc_8c18139c
	mov r14,r4
	mov 0x00,r4
	mov.l @(loc_8c1815b8,pc),r3
	mov r4,r0
	mov.b r0,@(0x07,r14) 
	mov.b r0,@(0x01,r14) 
	jsr @r3
	mov r15,r4

loc_8c1813e8:
	add 0x04,r15
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14


;==============================================
loc_8c1813f0:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c181406
	mov.l @(0x1C8,PC),r3
	mov.l @(0x1C0,PC),r2
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

loc_8c181406:
	mov.b @(0x6,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c181412
	mov 0x01,r0
	mov.b r0,@(0x6,r4)

loc_8c181412:
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c181418:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov.l @(0x10,r15),r14
	cmp/pl r14
	bt loc_8c181430
	mov 0x00,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c181430:
	mov.l @r15,r2
	mov 0x4C,r0
	mov.l @(0x38,r2),r3
	mov.l r3,@(0x4,r15)
	mov.l @r3,r2
	mov.l @(r0,r2),r1
	mov.l r14,@-r15
	jsr @r1
	mov.l @(0x8,r15),r4
	add 0x04,r15
	mov.l @r15,r3
	mov 0x5C,r0
	mov 0x01,r2
	mov.l r2,@(r0,r3)
	mov r14,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c181456:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov 0x5C,r0
	mov r4,r12
	mov.l @(r0,r12),r3
	tst r3,r3
	bf loc_8c181474
	bra loc_8c1814d2
	mov 0x00,r0

loc_8c181474:
	mov r15,r11
	add 0x08,r11
	mov r11,r3
	mov r3,r2
	mov 0x01,r4
	mov.l r3,@r15
	mov r4,r10
	add 0x04,r2
	mov 0x00,r13
	mov.l r2,@(0x4,r15)
	mov.l r10,@r2
	mov.l r10,@r3
	bra loc_8c1814ac
	mov r13,r14

loc_8c181490:
	mov.l @(0x38,r12),r9
	mov 0x50,r0
	mov r14,r5
	mov.l @r9,r2
	mov.l @(r0,r2),r3
	jsr @r3
	mov r9,r4
	cmp/eq 0x01,r0
	bt/s loc_8c1814aa
	mov r0,r4
	mov r14,r0
	shll2 r0
	mov.l r13,@(r0,r11)


loc_8c1814aa:
	add 0x01,r14

loc_8c1814ac:
	mov.b @(0x3,r12),r0
	extu.b r0,r0
	cmp/ge r0,r14
	bf loc_8c181490
	mov.l @r15,r2
	mov.l @r2,r3
	tst r3,r3
	bt loc_8c1814c4
	mov.l @(0x4,r15),r3
	mov.l @r3,r2
	tst r2,r2
	bf loc_8c1814c6

loc_8c1814c4:
	mov r13,r10

loc_8c1814c6:
	mov r10,r0
	cmp/eq 0x01,r0
	bf loc_8c1814d0
	mov 0x5C,r0
	mov.l r13,@(r0,r12)

loc_8c1814d0:
	mov r10,r0

loc_8c1814d2:
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1814e4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x38,r14),r3
	mov.l @(0x30,r14),r11
	mov 0x00,r5
	mov.l r3,@r15
	mov.l @r3,r2
	mov.l @(0x20,r2),r1
	jsr @r1
	mov r3,r4
	mov.l @(0xC0,PC),r3
	mov 0x20,r1
	mov r0,r5
	jsr @r3
	mov.l @(0x8,r14),r0
	mov r0,r4
	mov.l @(0xB4,PC),r2
	shll2 r4
	mov r5,r1
	shll r4
	jsr @r2
	mov r4,r0
	mul.l r4,r0
	sts macl,r0
	mov r0,r13
	sub r11,r13
	cmp/pz r13
	bt/s loc_8c18152c
	mov.l r0,@(0x30,r14)
	mov.l @(0x28,r14),r2
	add r2,r13

loc_8c18152c:
	mov.l @(0x34,r14),r12
	sub r13,r12
	cmp/pz r12
	bt loc_8c18153e
	mov.l @(0x2C,r14),r13
	mov 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r12
	sub r11,r13

loc_8c18153e:
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c181556
	bsr loc_8c181e78
	mov r14,r4
	cmp/eq 0x01,r0
	bf loc_8c181556
	mov.l @(0x30,r14),r2
	mov 0x00,r0
	mov.l r2,@(0x2C,r14)
	mov.b r0,@(0x4,r14)

loc_8c181556:
	mov 0x48,r0
	mov.l r12,@(0x34,r14)
	mov.l @(r0,r14),r3
	add r13,r3
	mov.l r3,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18156E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xE8,r15
	mov.l @(loc_8c1815C8,pc),r11 ; r11 set to 0x8C1C5438
	mov 0x00,r12 ; r12 set to 0x00
	mov.l @(loc_8c1815C0,pc),r10 ; r10 set to 0x8C1951E2
	mov r4,r14
	bra loc_8c1815A4
	mov r12,r13

loc_8c18158c:
	mov r14,r3
	mov r13,r2
	add 0x10,r3
	shll2 r2
	add r3,r2
	mov.l @r2,r1
	tst r1,r1
	bf loc_8c1815a2
	jsr @r10
	mov.l r11,@-r15
	add 0x04,r15

loc_8c1815a2:
	add 0x01,r13

loc_8c1815A4:
	mov.b @(0x03,r14),r0
	extu.b r0,r0
	cmp/ge r0,r13
	bf loc_8c18158C
	mov.l @(loc_8c1815CC,pc),r9 ; r9 set to 0x8C1830D8
	mov 0x08,r11 ; r11 set to 0x08
	bra loc_8c181636
	mov r12,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c1815B4:
	#data bank19.loc_8c195194
loc_8c1815B8:
	#data bank19.loc_8c1951AC
loc_8c1815BC:
	#data bank1c.loc_8c1c5410
loc_8c1815C0:
	#data bank19.loc_8c1951E2
loc_8c1815C4:
	#data bank12.loc_8c129128
loc_8c1815C8:
	#data bank1c.loc_8c1c5438
loc_8c1815CC:
	#data loc_8c1830D8

;==============================================
loc_8c1815D0:
	mov r13,r4
	mov r14,r3
	shll2 r4
	mov r15,r6
	add 0x18,r3
	mov r15,r7
	shll r4
	add r4,r3
	mov.l @r3,r2
	mov r14,r3
	add 0x18,r3
	add r3,r4
	mov.l r2,@(0x10,r15)
	mov.l @(0x04,r4),r2
	add 0x08,r6
	mov.l r2,@(0x14,r15)
	mov.l @(0x3C,r14),r2
	mov.l @(0x08,r14),r3
	mul.l r3,r2
	mov.l @(loc_8c181718,pc),r3 ; r3 set to 0x8C129128
	sts macl,r1
	jsr @r3
	mov r11,r0
	mov r15,r4
	mov r0,r5
	jsr @r9
	add 0x10,r4
	mov r14,r8
	mov r13,r10
	add 0x10,r8
	mov r15,r6
	shll2 r10
	add r10,r8
	mov.l @r8,r8
	mov 0x00,r5 ; r5 set to 0x00
	add 0x08,r6
	mov.l @r8,r3 ; r3 ??? bc r8 is ???
	mov.l @(0x20,r3),r2
	jsr @r2
	mov r8,r4
	mov r14,r8
	add 0x10,r8
	add r10,r8
	mov r15,r6
	mov.l @r8,r8
	mov 0x01,r5 ; r5 set to 0x01
	mov.l @r8,r3
	mov.l @(0x1C,r3),r2
	jsr @r2
	mov r8,r4
	add 0x01,r13

loc_8c181636:
	mov.b @(0x03,r14),r0
	extu.b r0,r0
	cmp/ge r0,r13
	bf loc_8c1815D0
	mov.l @(0x2C,r14),r1
	mov.l @(0x3C,r14),r3
	mov.l @(loc_8c18171C,pc),r2 ; r2 set to 0x8C1292D4, r2 set to 0x8C1292D4
	add r3,r1
	jsr @r2
	mov.l @(0x28,r14),r0
	mov.l r0,@(0x2C,r14)
	mov 0x4C,r0 ; r0 set to 0x4C, r0 set to 0x4C
	mov.l @(0x34,r14),r2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
	mov.l @(0x3C,r14),r3
	add r3,r2
	mov.l r2,@(0x34,r14)
	mov.l @(r0,r14),r2
	mov.l @(0x3C,r14),r3
	add r3,r2
	mov.l r2,@(r0,r14)
	mov.l r12,@(0x3C,r14)
	add 0x18,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c181674:
	mov 0x58,r0
	mov.l @(0xA4,PC),r2
	sts.l pr,@-r15
	mov.l @(r0,r4),r3
	mov 0x50,r0
	mov.l @(r0,r4),r1
	add r3,r1
	jsr @r2
	mov.l @(0x28,r4),r0
	mov 0x50,r1
	add r4,r1
	mov 0x58,r3
	mov.l r0,@r1
	add r4,r3
	mov 0x54,r0
	mov.l @r3,r3
	mov.l @(r0,r4),r2
	mov 0x00,r1
	add r3,r2
	mov.l r2,@(r0,r4)
	mov 0x58,r0
	lds.l @r15+,pr
	rts 
	mov.l r1,@(r0,r4)

;==============================================
loc_8c1816A4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c181720,pc),r14 ; r14 set to 0x8C1C962C
	mov.l r4,@r15
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_8c181712,pc),r11 ; r11 set to 0x1388
	mov.w @(loc_8c181714,pc),r12 ; r12 set to 0xC8
	mov.l r4,@r14 ; r14 ??
	bra loc_8c1816D6
	mov r4,r13

loc_8c1816C0:
	bsr loc_8c181456
	mov.l @r15,r4
	cmp/eq 0x01,r0
	bt loc_8c1816da
	mov r11,r4

loc_8c1816CA:
	dt r4
	bf loc_8c1816ca
	mov.l @r14,r3
	add 0x01,r13
	add 0x01,r3
	mov.l r3,@r14

loc_8c1816d6:
	cmp/ge r12,r13
	bf loc_8c1816c0

loc_8c1816da:
	cmp/eq r12,r13
	bf loc_8c1816e8
	mov.l @(loc_8c181728,pc),r3
	mov.l @(loc_8c181724,pc),r2
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15

loc_8c1816e8:
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8c1816F6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	tst r14,r14
	bf/s loc_8c181730
	mov.l r5,@(0x04,r15)
	mov.l @(loc_8c181728,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c18172C,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	bra loc_8c1817CA
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c181712:
	#data 0x1388
loc_8c181714:
	#data 0x00C8
	#align4

loc_8c181718:
	#data bank12.loc_8c129128
loc_8c18171C:
	#data bank12.loc_8c1292D4
loc_8c181720:
	#data bank1c.loc_8c1c962C
loc_8c181724:
	#data bank1c.loc_8c1c545C
loc_8c181728:
	#data bank19.loc_8c1951E2
loc_8c18172C:
	#data bank1c.loc_8c1c5410

;==============================================
loc_8c181730:
	mov.w @(loc_8c18181E,pc),r0 ; r0 set to 0x8C
	mov 0x01,r1 ; r1 set to 0x01
	mov.l r1,@(r0,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0 ; r0 set to 0x8C
	cmp/eq 0x01,r0
	bf/s loc_8c18175C
	mov 0x00,r13 ; r13 set to 0x00
	bsr loc_8c1816A4
	mov r14,r4
	bsr loc_8c181E78
	mov r14,r4
	cmp/eq 0x01,r0
	bf loc_8c181754
	bsr loc_8c18156E
	mov r14,r4
	bra loc_8c181758
	nop

loc_8c181754:
	bsr loc_8c181674
	mov r14,r4

loc_8c181758:
	mov r13,r0
	mov.b r0,@(0x05,r14) 

loc_8c18175C:
	mov.l @(loc_8c181820,pc),r3 ; r3 set to 0x8C195194
	jsr @r3
	mov r15,r4
	mov.w @(loc_8c18181E,pc),r0 ; r0 set to 0x8C
	mov.l r13,@(r0,r14)
	mov.l @(0x04,r15),r3 ; r3 ??? bc r15 is ???
	tst r3,r3
	bf loc_8c18178A
	bsr loc_8c181E78
	mov r14,r4
	tst r0,r0
	bt loc_8c1817C4
	mov.l @(0x2C,r14),r3
	mov 0x50,r0 ; r0 set to 0x50
	mov.l r3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l r13,@(r0,r14)
	mov 0x58,r0 ; r0 set to 0x58
	mov.l r13,@(r0,r14)
	mov.b @(0x01,r14),r0
	and 0x06,r0
	bra loc_8c1817C4
	mov.b r0,@(0x01,r14)

loc_8c18178a:
	mov.l @(0x04,r15),r0
	cmp/eq 0x01,r0 
	bf loc_8c1817c4
	bsr loc_8c181e78
	mov r14,r4
	cmp/eq 0x01,r0 
	bt loc_8c1817c4
	mov r13,r0
	mov.l r13,@(0x2C,r14) 
	mov.l r13,@(0x30,r14) 
	mov.l r13,@(0x34,r14) 
	mov.b r0,@(0x06,r14) 
	mov 0x5C,r0
	mov.l r13,@(r0,r14) 
	mov 0x48,r0
	mov.l r13,@(r0,r14) 
	mov 0x4C,r0
	mov.l r13,@(r0,r14) 
	mov r13,r0
	mov.l r13,@(0x3C,r14) 
	mov.b r0,@(0x04,r14) 
	mov 0x50,r0
	mov.l @(0x2C,r14),r3
	mov.l r3,@(r0,r14) 
	mov 0x54,r0
	mov.l r13,@(r0,r14) 
	mov.b @(0x01,r14),r0 
	or 0x01,r0 
	mov.b r0,@(0x01,r14) 

loc_8c1817C4:
	mov.l @(loc_8c181824,pc),r3 ; r3 set to 0x8C1951AC
	jsr @r3
	mov r15,r4

loc_8c1817CA:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1817D4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	tst r14,r14
	bf/s loc_8c1817F4
	mov.l r5,@r15
	mov.l @(loc_8c18182C,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c181828,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1817F4:
	mov.l @(loc_8c181820,pc),r2 ; r2 set to 0x8C195194
	mov r15,r4
	jsr @r2
	add 0x04,r4
	mov.l @r15,r3
	tst r3,r3
	bf loc_8c181830
	bsr loc_8c181E9E
	mov r14,r4
	tst r0,r0
	bt loc_8c181850
	mov.l @(0x38,r14),r3
	mov.l r3,@r15
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(0x14,r2),r1
	jsr @r1
	mov r3,r4
	mov.b @(0x01,r14),r0
	and 0x05,r0
	bra loc_8c181850
	mov.b r0,@(0x01,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18181E:
	#data 0x008C
	#align4

loc_8c181820:
	#data bank19.loc_8c195194
loc_8c181824:
	#data bank19.loc_8c1951AC
loc_8c181828:
	#data bank1c.loc_8c1c5410
loc_8c18182C:
	#data bank19.loc_8c1951E2

;==============================================
loc_8c181830:
	mov.l @r15,r0
	cmp/eq 0x01,r0 
	bf loc_8c181850
	bsr loc_8c181e9e
	mov r14,r4
	cmp/eq 0x01,r0 
	bt loc_8c181850
	mov.l @(0x38,r14),r2
	mov.l r2,@r15
	mov.l @r2,r3
	mov.l @(0x10,r3),r1
	jsr @r1
	mov r2,r4
	mov.b @(0x01,r14),r0 
	or 0x02,r0 
	mov.b r0,@(0x01,r14) 

loc_8c181850:
	mov.l @(loc_8c181A28,pc),r3 ; r3 set to 0x8C1951AC
	mov r15,r4
	jsr @r3
	add 0x04,r4
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c181860:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x1B8,PC),r3
	mov 0x20,r1
	mov r4,r14
	jsr @r3
	mov.l @(0x8,r14),r0
	mov.l @(0x34,r14),r3
	mov r0,r9
	mov.l @(0x28,r14),r4
	shll2 r9
	mov.l @(0x1A4,PC),r2
	shll r9
	sub r3,r4
	mov r4,r1
	jsr @r2
	mov r9,r0
	mul.l r9,r0
	mov.l @(0x1A0,PC),r11
	mov 0x00,r13
	mov.l @(0x198,PC),r10
	sts macl,r8
	bra loc_8c1818ec
	mov r13,r12

loc_8c18189E:
	mov r14,r3
	mov r12,r2
	add 0x10,r3
	shll2 r2
	add r3,r2
	mov.l @r2,r1
	tst r1,r1
	bf loc_8c1818b4
	jsr @r11
	mov.l r10,@-r15
	add 0x04,r15

loc_8c1818B4:
	mov r14,r2
	mov r12,r3
	add 0x10,r2
	mov r12,r7
	shll2 r3
	add r2,r3
	mov.l @r3,r1
	shll2 r7
	shll r7
	mov.l r1,@r15
	mov.l @(0x8,r14),r6
	mov.l @r1,r3
	mul.l r6,r8
	mov.l @(0x18,r3),r2
	mov r14,r3
	add 0x18,r3
	add r3,r7
	sts macl,r6
	cmp/pz r6
	bt loc_8c1818de
	add 0x07,r6

loc_8c1818DE:
	shar r6
	shar r6
	mov 0x01,r5
	shar r6
	jsr @r2
	mov.l @r15,r4
	add 0x01,r12

loc_8c1818EC:
	mov.b @(0x3,r14),r0
	extu.b r0,r0
	cmp/ge r0,r12
	bf loc_8c18189e
	mov.b @(0x3,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c181900
	bra loc_8c18191c
	mov.l @(0x1C,r14),r1

loc_8c181900:
	mov r14,r5
	add 0x18,r5
	mov r5,r7
	add 0x08,r7
	mov r5,r6
	mov.l r6,@(0x8,r15)
	mov.l @(0x4,r6),r6
	mov.l r7,@(0x4,r15)
	mov.l @(0x4,r7),r7
	cmp/ge r7,r6
	bt loc_8c18191a
	bra loc_8c18191c
	mov r6,r1

loc_8c18191A:
	mov r7,r1

loc_8c18191C:
	mov.l @(0x10C,PC),r2
	jsr @r2
	mov.l @(0x8,r14),r0
	mov r0,r4
	shll2 r4
	shll r4
	cmp/ge r8,r4
	bf loc_8c18192e
	mov r8,r4

loc_8c18192E:
	mov.l @(0x28,r14),r5
	mov.l @(0x2C,r14),r3
	sub r3,r5
	cmp/ge r5,r4
	bf loc_8c18193a
	mov r5,r4

loc_8c18193A:
	mov.l @(0xF0,PC),r2
	mov r4,r1
	jsr @r2
	mov r9,r0
	mul.l r9,r0
	sts macl,r9
	cmp/pl r9
	bt loc_8c181990
	bra loc_8c181984
	mov r13,r12

loc_8c18194E:
	mov r14,r3
	mov r12,r13
	add 0x10,r3
	shll2 r13
	add r13,r3
	mov.l @r3,r2
	tst r2,r2
	bf loc_8c181964
	jsr @r11
	mov.l r10,@-r15
	add 0x04,r15

loc_8c181964:
	mov r14,r9
	add 0x10,r9
	add r13,r9
	mov r12,r6
	mov.l @r9,r9
	shll2 r6
	shll r6
	mov.l @r9,r3
	mov 0x01,r5
	mov.l @(0x1C,r3),r2
	mov r14,r3
	add 0x18,r3
	add r3,r6
	jsr @r2
	mov r9,r4
	add 0x01,r12

loc_8c181984:
	mov.b @(0x3,r14),r0
	extu.b r0,r0
	cmp/ge r0,r12
	bf loc_8c18194e
	bra loc_8c1819ca
	mov 0x00,r0

loc_8c181990:
	mov.l @(0xA4,PC),r4
	mov r13,r12
	mov r4,r10
	mov r4,r11
	bra loc_8c1819be
	add 0x04,r10

loc_8c18199C:
	mov r12,r7
	mov r14,r3
	shll2 r7
	mov.l @(0x2C,r14),r6
	add 0x18,r3
	mov r12,r5
	shll r7
	add r3,r7
	mov.l @r7,r7
	mov.l r13,@r11
	mov.l r9,@-r15
	bsr loc_8c181418
	mov r14,r4
	add 0x04,r15
	add 0x01,r12
	mov.l r13,@r10
	mov r0,r4

loc_8c1819BE:
	mov.b @(0x3,r14),r0
	extu.b r0,r0
	cmp/ge r0,r12
	bf loc_8c18199c
	mov r4,r0
	mov.l r4,@(0x3C,r14)

loc_8c1819CA:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1819DE:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x28,r14),r5
	mov.l @(0x34,r14),r3
	mov 0x54,r0
	mov r5,r7
	mov.l @(r0,r14),r2
	sub r3,r7
	mov.l @(0x8,r14),r6
	mov.l @(0x30,PC),r3
	mov 0x20,r1
	sub r2,r7
	jsr @r3
	mov r6,r0
	mov r0,r4
	mov.l @(0x24,PC),r2
	shll2 r4
	mov r7,r1
	shll r4
	jsr @r2
	mov r4,r0
	mul.l r4,r0
	mov 0x50,r0
	mov.l @(r0,r14),r3
	sts macl,r7
	sub r3,r5
	cmp/ge r5,r7
	bt/s loc_8c181a3c
	mov.l r5,@r15
	bra loc_8c181a3e
	mov r7,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c181A28:
	#data bank19.loc_8c1951AC
loc_8c181A2C:
	#data bank12.loc_8c129128
loc_8c181A30:
	#data bank1c.loc_8c1c5490
loc_8c181A34:
	#data bank19.loc_8c1951E2
loc_8c181A38:
	#data 0x8C336B60

;==============================================
loc_8c181A3C:
	mov.l @r15,r5

loc_8c181A3E:
	mov.l @(0xB4,PC),r2
	mov.w @(0xAC,PC),r1
	jsr @r2
	mov r6,r0
	mov r0,r7
	shll2 r7
	shll r7
	cmp/ge r7,r5
	bf loc_8c181a52
	mov r7,r5

loc_8c181A52:
	mov.l @(0xA0,PC),r3
	mov r5,r1
	jsr @r3
	mov r4,r0
	mul.l r4,r0
	sts macl,r12
	cmp/pl r12
	bt loc_8c181a66
	bra loc_8c181aa2
	mov 0x00,r0

loc_8c181A66:
	mov.l @(0x8,r14),r0
	cmp/eq 0x04,r0
	bf loc_8c181a72
	mov.l @(0x88,PC),r4
	bra loc_8c181a74
	nop 

loc_8c181A72:
	mov.l @(0x88,PC),r4

loc_8c181A74:
	mov r4,r11
	mov 0xE0,r3
	add 0x20,r11
	and r3,r11
	bra loc_8c181a94
	mov 0x00,r13

loc_8c181A80:
	mov 0x50,r0
	mov r13,r5
	mov.l @(r0,r14),r6
	mov r11,r7
	mov.l r12,@-r15
	bsr loc_8c181418
	mov r14,r4
	add 0x04,r15
	add 0x01,r13
	mov r0,r4

loc_8c181A94:
	mov.b @(0x3,r14),r0
	extu.b r0,r0
	cmp/ge r0,r13
	bf loc_8c181a80
	mov 0x58,r0
	mov.l r4,@(r0,r14)
	mov r4,r0

loc_8c181AA2:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c181AB0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x34,PC),r0
	mov r4,r14
	mov.l @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c181ac8
	bra loc_8c181bde
	nop 

loc_8c181AC8:
	mov 0x00,r13
	bsr loc_8c181e78
	mov r14,r4
	cmp/eq 0x01,r0
	bf loc_8c181b0a
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c181b0a
	mov.l @(0x24,PC),r12
	bsr loc_8c181456
	mov r14,r4
	cmp/eq 0x01,r0
	bf loc_8c181b04
	bsr loc_8c18156e
	mov r14,r4
	mov r13,r0
	mov.b r0,@(0x5,r14)
	bra loc_8c181b0a
	mov.l r0,@r12

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c181af0:
	#data 0x0800
loc_8c181af2:
	#data 0x008C
	#align4

loc_8c181AF4:
	#data bank12.loc_8c129128
loc_8c181AF8:
	#data 0x8C336340
loc_8c181AFc:
	#data 0x8C335B20
loc_8c181B00:
	#data bank1c.loc_8c1c9630

;==============================================
loc_8c181B04:
	mov.l @r12,r2
	add 0x01,r2
	mov.l r2,@r12

loc_8c181B0A:
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c181b36
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c181b36
	mov.l @(0x10,r14),r2
	mov 0x01,r5
	mov.l r2,@r15
	mov.l @r2,r3
	mov.l @(0x24,r3),r1
	jsr @r1
	mov r2,r4
	mov 0x20,r3
	cmp/ge r3,r0
	bt loc_8c181b36
	mov 0x00,r5
	bsr loc_8c1816f6
	mov r14,r4
	mov r13,r0
	mov.b r0,@(0x6,r14)

loc_8c181B36:
	bsr loc_8c181e9e
	mov r14,r4
	cmp/eq 0x01,r0
	bf loc_8c181b42
	bsr loc_8c1814e4
	mov r14,r4

loc_8c181B42:
	bsr loc_8c181e78
	mov r14,r4
	cmp/eq 0x01,r0
	bf loc_8c181b5c
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c181b98
	bsr loc_8c181860
	mov r14,r4
	cmp/pl r0
	bt loc_8c181b94
	bra loc_8c181b98
	nop 

loc_8c181B5C:
	bsr loc_8c181e9e
	mov r14,r4
	cmp/eq 0x01,r0
	bf loc_8c181b98
	mov 0x54,r0
	mov.l @(0x28,r14),r2
	mov.l @(r0,r14),r3
	cmp/ge r2,r3
	bt loc_8c181b98
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c181b86
	bsr loc_8c181456
	mov r14,r4
	cmp/eq 0x01,r0
	bf loc_8c181b86
	bsr loc_8c181674
	mov r14,r4
	mov r13,r0
	mov.b r0,@(0x5,r14)

loc_8c181B86:
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c181b98
	bsr loc_8c1819de
	mov r14,r4
	cmp/pl r0
	bf loc_8c181b98

loc_8c181B94:
	mov 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8c181B98:
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8c181bbc
	mov 0x40,r0
	mov.l @(0x34,r14),r3
	mov.l @(r0,r14),r2
	cmp/ge r2,r3
	bf loc_8c181bbc
	mov.b @(0x7,r14),r0
	tst r0,r0
	bf loc_8c181bbc
	mov 0x01,r5
	bsr loc_8c1817d4
	mov r14,r4
	mov.l @(0x34,PC),r3
	mov 0x40,r0
	mov.l r3,@(r0,r14)

loc_8c181BBC:
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_8c181bde
	mov.l @(0x34,r14),r2
	tst r2,r2
	bf loc_8c181bde
	mov 0x00,r5
	bsr loc_8c1817d4
	mov r14,r4
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c18139c
	mov.l @r15+,r14

loc_8c181BDE:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c181bec:
	#data 0x7FFFFFFF

;==============================================
loc_8c181BF0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xDC,PC),r3
	jsr @r3
	mov r15,r4
	mov.w @(0xD0,PC),r11
	mov.l @(0xD8,PC),r5
	mov.w @(0xCA,PC),r12
	add r5,r11
	mov r5,r4
	mov r5,r13
	mov r5,r14

loc_8c181C10:
	mov.b @r14,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c181c1c
	bsr loc_8c181ab0
	mov r13,r4

loc_8c181C1C:
	add r12,r14
	cmp/hs r11,r14
	bf/s loc_8c181c10
	add r12,r13
	mov.l @(0xBC,PC),r2
	jsr @r2
	mov r15,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14


;==============================================
;Unused?
loc_8c181c38:
	mov.l r14,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	tst r14,r14
	bf loc_8c181c52
	mov.l @(0xA4,PC),r3
	mov.l @(0x9C,PC),r2
	jsr @r3
	mov.l r2,@-r15
	bra loc_8c181cac
	add 0x04,r15

loc_8c181c52:
	mov.l @(0x88,PC),r2
	jsr @r2
	mov r15,r4
	mov.b @(0x7,r14),r0
	tst r0,r0
	bf loc_8c181ca6
	bsr loc_8c181e9e
	mov r14,r4
	shll r0
	mov r0,r8
	bsr loc_8c181e78
	mov r14,r4
	or r0,r8
	mov.w @(0x68,PC),r0
	mov.l r8,@(r0,r14)
	bsr loc_8c1814e4
	mov r14,r4
	mov 0x00,r5
	bsr loc_8c1817d4
	mov r14,r4
	mov 0x01,r4
	mov r4,r0
	mov.b r0,@(0x7,r14)
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c181ca2
	mov.w @(0x4E,PC),r0
	mov.l @(0x58,PC),r3
	mov.l r4,@(r0,r14)
	jsr @r3
	mov r15,r4
	bsr loc_8c1816a4
	mov r14,r4
	mov.l @(0x44,PC),r3
	jsr @r3
	mov r15,r4
	mov.w @(0x3A,PC),r0
	mov 0x00,r2
	mov.l r2,@(r0,r14)

loc_8c181ca2:
	bsr loc_8c181d44
	mov r14,r4

loc_8c181ca6:
	mov.l @(0x3C,PC),r2
	jsr @r2
	mov r15,r4

loc_8c181cac:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c181cb6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	tst r14,r14
	bf loc_8c181cf0
	mov.l @(0x28,PC),r3
	mov.l @(0x20,PC),r2
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c181CD4:
	#data 0x0090
loc_8c181CD6:
	#data 0x0480
loc_8c181CD8:
	#data 0x0088
loc_8c181CDa:
	#data 0x008C
	#align4

loc_8c181CDC:
	#data bank19.loc_8c195194
loc_8c181Ce0:
	#data 0x8C3356A0
loc_8c181CE4:
	#data bank19.loc_8c1951AC
loc_8c181CE8:
	#data bank1c.loc_8c1c5410
loc_8c181CEC:
	#data bank19.loc_8c1951E2

;==============================================
loc_8c181cf0:
	mov.l @(0x110,PC),r2
	jsr @r2
	mov r15,r4
	mov.b @(0x7,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c181d16
	mov.w @(0xFE,PC),r0
	mov.l @(r0,r14),r4
	tst r4,r4
	bt loc_8c181d12
	mov r4,r0
	cmp/eq 0x01,r0
	bt loc_8c181d12
	mov 0x01,r5
	bsr loc_8c1817d4
	mov r14,r4

loc_8c181d12:
	mov 0x00,r0
	mov.b r0,@(0x7,r14)

loc_8c181d16:
	mov.l @(0xF0,PC),r3
	jsr @r3
	mov r15,r4
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c181d3a
	mov.l @(0xE4,PC),r3
	mov.l @(0xDC,PC),r2
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov 0x00,r0

loc_8c181d3a:
	mov.b @(0x7,r4),r0
	extu.b r0,r0
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c181D44:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	tst r14,r14
	bf loc_8c181D62
	mov.l @(loc_8c181E10,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c181E0C,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c181D62:
	mov.l @(loc_8c181E04,pc),r2 ; r2 set to 0x8C195194
	mov r15,r4
	jsr @r2
	add 0x04,r4
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c181D8A
	bsr loc_8c181E78
	mov r14,r4
	cmp/eq 0x01,r0
	bf loc_8c181D82
	bsr loc_8c18156E
	mov r14,r4
	bra loc_8c181D86
	nop

loc_8c181d82:
	bsr loc_8c181674
	mov r14,r4

loc_8c181d86:
	mov 0x00,r0
	mov.b r0,@(0x05,r14) 

loc_8c181d8a:
	mov.l @(0x30,r14),r3
	tst r3,r3
	bt loc_8c181dec
	mov.l @(0x34,r14),r2
	cmp/pl r2
	bf loc_8c181dec
	mov.l @(0x38,r14),r2
	mov 0x54,r0
	mov.l @(0x30,r14),r5
	mov r15,r6
	mov.l r2,@(0x08,r15) 
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	jsr @r1
	mov r2,r4
	mov r0,r4
	mov.w @(loc_8C181E00,pc),r0
	mov.l @(r0,r14),r0
	cmp/eq 0x02,r0 
	bf loc_8c181dca
	mov 0x50,r0
	mov.l @(0x28,r14),r5
	mov.l @(r0,r14),r1
	mov.l @r15,r3
	mov.l @(loc_8c181e14,pc),r2
	add r5,r1
	sub r3,r1
	jsr @r2
	mov r5,r0
	mov 0x50,r1
	add r14,r1
	mov.l r0,@r1

loc_8c181dca:
	mov.l @(0x2C,r14),r1
	mov.l @(0x28,r14),r5
	mov.l @r15,r3
	mov.l @(loc_8c181e14,pc),r2
	add r5,r1
	sub r3,r1
	jsr @r2
	mov r5,r0
	mov.l r0,@(0x2C,r14) 
	mov.l @(0x30,r14),r3
	mov.l @r15,r2
	add r4,r3
	sub r2,r3
	mov.l r3,@(0x30,r14) 
	mov.l @(0x34,r14),r2
	sub r4,r2
	mov.l r2,@(0x34,r14) 

loc_8c181dec:
	mov.l @(loc_8c181e08,pc),r3
	mov r15,r4
	jsr @r3
	add 0x04,r4
	add 0x0C,r15
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

loc_8c181DFC:
	rts
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c181e00:
	#data 0x0088
	#align4

loc_8c181E04:
	#data bank19.loc_8c195194
loc_8c181E08:
	#data bank19.loc_8c1951AC
loc_8c181E0C:
	#data bank1c.loc_8c1c5410
loc_8c181E10:
	#data bank19.loc_8c1951E2
loc_8c181E14:
	#data bank12.loc_8c1292D4

;==============================================
loc_8c181E18:
	mov.l r14,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	tst r14,r14
	mov.l r5,@(0x04,r15)
	bf/s loc_8c181E36
	mov.l r6,@r15
	mov.l @(loc_8c182088,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182084,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	bra loc_8c181E4E
	add 0x04,r15

loc_8c181E36:
	bsr loc_8c1814E4
	mov r14,r4
	mov 0x4C,r0 ; r0 set to 0x4C
	mov.l @(0x34,r14),r2
	mov.l @(r0,r14),r1
	mov.l @(0x04,r15),r3
	sub r2,r1
	mov.l r1,@r3
	mov.l @r15,r8
	bsr loc_8c182262
	mov r14,r4
	mov.l r0,@r8
	
loc_8c181E4E:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
loc_8c181E58:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c181E6E
	mov.l @(loc_8c182088,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182084,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0xFF,r0

;==============================================
loc_8c181E6E:
	mov.b @(0x01,r4),r0
	extu.b r0,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c181E78:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c181E8E
	mov.l @(loc_8c182088,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182084,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0xFF,r0

;==============================================
loc_8c181E8E:
	mov.b @(0x01,r4),r0
	mov 0x01,r4 ; r4 set to 0x01
	extu.b r0,r0
	and r0,r4 ; r4 ??? bc r0 is ???
	mov r4,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c181E9E:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c181EB4
	mov.l @(loc_8c182088,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182084,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0xFF,r0

;==============================================
loc_8c181EB4:
	mov.b @(0x01,r4),r0
	mov 0x02,r4 ; r4 set to 0x02
	extu.b r0,r0
	and r0,r4 ; r4 ??? bc r0 is ???
	shar r4
	mov r4,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
;unused?
loc_8c181ec6:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c181edc
	mov.l @(0x1B8,PC),r3
	mov.l @(0x1B4,PC),r2
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov 0xFF,r0

loc_8c181edc:
	mov.b @(0x1,r4),r0
	mov 0x04,r4
	extu.b r0,r0
	and r0,r4
	shar r4
	shar r4
	mov r4,r0
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c181EF0:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c181F06
	mov.l @(loc_8c182088,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182084,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0xFF,r0

;==============================================
loc_8c181F06:
	mov.l @(0x34,r4),r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
;unused?
loc_8c181f0e:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c181f24
	mov.l @(0x170,PC),r3
	mov.l @(0x16C,PC),r2
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov 0xFF,r0

loc_8c181f24:
	mov.l @(0x28,r4),r0
	mov.l @(0x34,r4),r3
	sub r3,r0
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c181F30:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	tst r14,r14
	bf/s loc_8c181F46
	mov r5,r13
	mov.l @(loc_8c182084,pc),r2 ; r2 set to 0x8C1C5410
	bra loc_8c181F50
	nop

loc_8c181F46:
	mov.b @(0x02,r14),r0
	extu.b r0,r0
	cmp/gt r0,r13
	bf loc_8c181F5A
	mov.l @(loc_8c18208C,pc),r2 ; r2 set to 0x8C1C54B4

loc_8c181F50:
	mov.l @(loc_8c182088,pc),r3 ; r3 set to 0x8C1951E2, r3 set to 0x8C1951E2
	jsr @r3
	mov.l r2,@-r15
	bra loc_8c181FAC
	add 0x04,r15

loc_8c181F5A:
	mov r13,r0
	exts.b r13,r5
	mov.b r0,@(0x03,r14)
	mov.l @(0x38,r14),r3
	mov.l r3,@r15
	mov.l @r3,r2
	mov.l @(0x1C,r2),r1
	jsr @r1
	mov r3,r4
	mov r13,r0
	cmp/eq 0x01,r0
	bf/s loc_8c181F82
	mov r14,r6
	mov r14,r2
	add 0x64,r2
	mov 0x00,r4 ; r4 set to 0x00
	mov 0x68,r0 ; r0 set to 0x68
	mov.l r4,@r2
	bra loc_8c181F90
	mov.l r4,@(r0,r14)

loc_8c181F82:
	mov r14,r2
	mov 0xF1,r3 ; r3 set to 0xFFFFFFF1
	add 0x64,r2
	mov.l r3,@r2
	mov 0x68,r0 ; r0 set to 0x68
	mov 0x0F,r2 ; r2 set to 0x0F
	mov.l r2,@(r0,r14)

loc_8c181F90:
	add 0x64,r6
	mov.l @r6,r6
	mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
	bsr loc_8c1820C4
	mov r14,r4
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	mov r14,r4
	mov.l @(r0,r14),r6
	mov 0x01,r5 ; r5 set to 0x01, r5 set to 0x01
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c1820C4
	mov.l @r15+,r14

loc_8c181FAC:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c181FB6:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c181FCC
	mov.l @(loc_8c182088,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182084,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c181FCC:
	mov 0x44,r0 ; r0 set to 0x44
	mov.l r5,@(r0,r4)
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c181FD6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	tst r14,r14
	bf/s loc_8c181FF2
	mov r5,r13
	mov.l @(loc_8c182088,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182084,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	bra loc_8c182024
	add 0x04,r15

loc_8c181ff2:
	mov.l @(0x28,r14),r2
	mov.l @(0x08,r14),r3
	mul.l r3,r2
	sts macl,r4
	cmp/pz r4
	bt loc_8c182000
	add 0x07,r4

loc_8c182000:
	shar r4
	mov.l @(loc_8c182090,pc),r2
	shar r4
	shar r4
	mov r4,r1
	jsr @r2
	mov r13,r0
	shll2 r0
	mov r13,r5
	shll r0
	mov.l r0,@(0x28,r14) 
	mov.l @(0x38,r14),r3
	mov.l r3,@r15
	mov.l @r3,r2
	mov.l @(0x2C,r2),r1
	jsr @r1
	mov r3,r4
	mov.l r13,@(0x08,r14) 

loc_8c182024:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18202E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	tst r14,r14
	bf/s loc_8c18204E
	mov.l r5,@r15
	mov.l @(loc_8c182088,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182084,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18204E:
	mov.l @(0x38,r14),r1
	mov.l r1,@(0x04,r15)
	mov.l @r1,r3
	mov.l @r15,r5
	mov.l @(0x24,r3),r2
	jsr @r2
	mov r1,r4
	mov.l @r15,r3
	mov.l r3,@(0x0C,r14)
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c182068:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r13
	tst r13,r13
	bf loc_8c182094
	mov.l @(loc_8c182088,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182084,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	bra loc_8c1820BA
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c182084:
	#data bank1c.loc_8c1c5410
loc_8c182088:
	#data bank19.loc_8c1951E2
loc_8c18208C:
	#data bank1c.loc_8c1c54B4
loc_8c182090:
	#data bank12.loc_8c129128

;==============================================
loc_8c182094:
	cmp/pz r5
	bf loc_8c18209C
	bra loc_8c1820A8
	mov 0x00,r14

loc_8c18209C:
	mov.w @(loc_8c182184,pc),r4 ; r4 set to 0xFC19
	cmp/gt r4,r5
	bt loc_8c1820A6
	bra loc_8c1820A8
	mov r4,r14

loc_8c1820A6:
	mov r5,r14

loc_8c1820A8:
	mov.l @(0x38,r13),r2
	mov r14,r5
	mov.l r2,@r15
	mov.l @r2,r3
	mov.l @(0x34,r3),r1
	jsr @r1
	mov r2,r4
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	mov.l r14,@(r0,r13)

loc_8c1820BA:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1820C4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r13
	tst r13,r13
	bf/s loc_8c1820E0
	mov.l r5,@r15
	mov.l @(loc_8c18218C,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182188,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	bra loc_8c18210E
	add 0x04,r15
	
loc_8c1820e0:
	mov 0xF1,r4
	cmp/ge r4,r6
	bf loc_8c1820ec
	mov 0x0F,r4
	cmp/gt r4,r6
	bf loc_8c1820f0

loc_8c1820ec:
	bra loc_8c1820f2
	mov r4,r14

loc_8c1820f0:
	mov r6,r14

loc_8c1820f2:
	mov.l @(0x38,r13),r2
	mov r14,r6
	mov.l r2,@(0x04,r15) 
	mov.l @r2,r3
	mov.l @r15,r5
	mov.l @(0x3C,r3),r1
	jsr @r1
	mov r2,r4
	mov.l @r15,r3
	mov r13,r2
	add 0x64,r2
	shll2 r3
	add r2,r3
	mov.l r14,@r3

loc_8c18210E:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c182118:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r13
	tst r13,r13
	bf/s loc_8c182130
	mov r5,r12
	mov.l @(loc_8c182188,pc),r2 ; r2 set to 0x8C1C5410
	bra loc_8c18213E
	mov.l r2,@-r15

loc_8c182130:
	cmp/pz r12
	bf loc_8c18213a
	mov 0x10,r3
	cmp/gt r3,r12
	bf loc_8c182148

loc_8c18213a:
	mov.l @(loc_8c182190,pc),r1
	mov.l r1,@-r15

loc_8c18213E:
	mov.l @(loc_8c18218C,pc),r3 ; r3 set to 0x8C1951E2
	jsr @r3
	nop
	bra loc_8c182178
	add 0x04,r15

loc_8c182148:
	mov 0xD3,r4
	cmp/ge r4,r6
	bt loc_8c182152
	bra loc_8c18215c
	mov r4,r14


loc_8c182152:
	cmp/pl r6
	bf loc_8c18215a
	bra loc_8c18215c
	mov 0x00,r14

loc_8c18215A:
	mov r6,r14

loc_8c18215C:
	mov.l @(0x38,r13),r2
	mov 0x44,r0
	mov r12,r6
	mov 0x00,r5
	mov.l r2,@r15
	mov r14,r7
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	jsr @r1
	mov r2,r4
	mov 0x6C,r0
	mov.l r12,@(r0,r13)
	mov 0x70,r0
	mov.l r14,@(r0,r13)

loc_8c182178:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c182184:
	#data 0xFC19
	#align4

loc_8c182188:
	#data bank1c.loc_8c1c5410
loc_8c18218C:
	#data bank19.loc_8c1951E2
loc_8c182190:
	#data bank1c.loc_8c1c54E8

;==============================================
loc_8c182194:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xEC,r15
	mov r4,r14
	tst r14,r14
	mov.l r5,@(0x0C,r15)
	bf/s loc_8c1821B6
	mov.l r6,@(0x10,r15)
	mov.l @(loc_8c1822BC,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c1822B8,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	add 0x14,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1821B6:
	mov.l @(0x38,r14),r1
	mov 0x44,r0 ; r0 set to 0x44
	mov 0x01,r5 ; r5 set to 0x01
	mov.l r1,@(0x08,r15)
	mov.l @r1,r3
	mov.l @(0x10,r15),r7
	mov.l @(0x0C,r15),r6
	mov.l @(r0,r3),r2
	jsr @r2
	mov r1,r4
	mov.l @(0x38,r14),r3
	mov 0x48,r0 ; r0 set to 0x48
	mov r15,r7
	mov r15,r6
	mov 0x01,r5 ; r5 set to 0x01
	mov.l r3,@(0x08,r15)
	mov.l @r3,r2
	add 0x04,r7
	mov.l @(r0,r2),r1
	jsr @r1
	mov r3,r4
	mov.l @r15,r3
	mov 0x74,r0 ; r0 set to 0x74
	mov.l r3,@(r0,r14)
	mov 0x78,r0 ; r0 set to 0x78
	mov.l @(0x04,r15),r2
	mov.l r2,@(r0,r14)
	add 0x14,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c1821f4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r13
	tst r13,r13
	bf loc_8c18220e
	mov.l @(0xB8,PC),r3
	mov.l @(0xB0,PC),r2
	jsr @r3
	mov.l r2,@-r15
	bra loc_8c18223a
	add 0x04,r15

loc_8c18220e:
	mov 0xD3,r4
	cmp/ge r4,r5
	bt loc_8c182218
	bra loc_8c182222
	mov r4,r14

loc_8c182218:
	cmp/pl r5
	bf loc_8c182220
	bra loc_8c182222
	mov 0x00,r14

loc_8c182220:
	mov r5,r14

loc_8c182222:
	mov.l @(0x38,r13),r2
	mov 0x44,r0
	mov r14,r6
	mov 0x02,r5
	mov.l r2,@r15
	mov 0x00,r7
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	jsr @r1
	mov r2,r4
	mov.w @(0x7C,PC),r0
	mov.l r14,@(r0,r13)

loc_8c18223a:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c182244:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c18225A
	mov.l @(loc_8c1822BC,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c1822B8,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0xFF,r0

;==============================================
loc_8c18225A:
	mov.l @(0x08,r4),r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c182262:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c182278
	mov.l @(loc_8c1822BC,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c1822B8,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0xFF,r0

;==============================================
loc_8c182278:
	mov.l @(0x0C,r4),r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c182280:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c182296
	mov.l @(loc_8c1822BC,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c1822B8,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0xFF,r0

;==============================================
loc_8c182296:
	mov 0x60,r0 ; r0 set to 0x60
	mov.l @(r0,r4),r0 ; r0 ??? bc r4 is ???
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1822A0:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c1822C0
	mov.l @(loc_8c1822BC,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c1822B8,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0xFF,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1822b6:
	#data 0x0084
	#align4

loc_8c1822B8:
	#data bank1c.loc_8c1c5410
loc_8c1822BC:
	#data bank19.loc_8c1951E2

;==============================================
loc_8c1822C0:
	mov r4,r3
	mov r5,r0
	add 0x64,r3
	shll2 r0
	mov.l @(r0,r3),r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1822D0:
	sts.l pr,@-r15
	add 0xF8,r15
	tst r4,r4
	mov.l r5,@(0x04,r15)
	bf/s loc_8c1822F8
	mov.l r6,@r15
	mov.l @(loc_8c182414,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182410,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	mov.l @(0x04,r15),r2 ; r2 ??? bc r15 is ???
	mov 0xFF,r4 ; r4 set to 0xFFFFFFFF
	mov.l r4,@r2
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov.l r4,@r3
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1822F8:
	mov 0x6C,r0 ; r0 set to 0x6C
	mov.l @(0x04,r15),r3
	mov.l @(r0,r4),r2
	mov 0x70,r0 ; r0 set to 0x70
	mov.l r2,@r3
	mov.l @(r0,r4),r2
	mov.l @r15,r3
	mov.l r2,@r3
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c182310:
	sts.l pr,@-r15
	add 0xF8,r15
	tst r4,r4
	mov.l r5,@(0x04,r15)
	bf/s loc_8c182338
	mov.l r6,@r15
	mov.l @(loc_8c182414,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182410,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	mov.l @(0x04,r15),r2 ; r2 ??? bc r15 is ???
	mov 0xFF,r4 ; r4 set to 0xFFFFFFFF
	mov.l r4,@r2
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov.l r4,@r3
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c182338:
	mov 0x74,r0 ; r0 set to 0x74
	mov.l @(0x04,r15),r3
	mov.l @(r0,r4),r2
	mov 0x78,r0 ; r0 set to 0x78
	mov.l r2,@r3
	mov.l @(r0,r4),r2
	mov.l @r15,r3
	mov.l r2,@r3
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
;unused?
loc_8c182350:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c182366
	mov.l @(0xBC,PC),r3
	mov.l @(0xB4,PC),r1
	jsr @r3
	mov.l r1,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov 0xFF,r0

loc_8c182366:
	mov.w @(0xA2,PC),r0
	mov.l @(r0,r4),r0
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c182370:
	mov.l @(loc_8c182418,pc),r3 ; r3 set to 0x8C1951C4
	jmp @r3
	nop

;==============================================
loc_8c182376:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	tst r14,r14
	mov.l r5,@(0x04,r15)
	bf/s loc_8c182398
	mov.l r6,@r15
	mov.l @(loc_8c182414,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182410,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c182398:
	mov.l @(0x04,r15),r1
	mov 0x7C,r0 ; r0 set to 0x7C
	mov 0x03,r5 ; r5 set to 0x03
	mov.l r1,@(r0,r14)
	mov.w @(loc_8c18240E,pc),r0 ; r0 set to 0x80
	mov.l @r15,r3
	mov.l r3,@(r0,r14)
	mov 0x44,r0 ; r0 set to 0x44
	mov.l @(0x38,r14),r2
	mov r2,r4
	mov.l r2,@(0x08,r15)
	mov.l @r2,r3
	mov.l @r15,r7
	mov.l @(0x04,r15),r6
	mov.l @(r0,r3),r1
	add 0x0C,r15
	lds.l @r15+,pr
	jmp @r1
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c1823be:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1823C6:
	sts.l pr,@-r15
	tst r4,r4
	bf loc_8c1823DC
	mov.l @(loc_8c182414,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182410,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1823DC:
	mov 0x7C,r0 ; r0 set to 0x7C
	mov.l @(r0,r4),r1
	add 0x04,r0 ; r0 set to 0x80
	mov.l r1,@r5
	mov.l @(r0,r4),r3
	mov.l r3,@r6
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1823EE:
	mov.l r14,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xCC,r15
	mov r4,r14
	tst r14,r14
	mov.l r5,@(0x1C,r15)
	bf/s loc_8c18241C
	mov.l r6,@r15
	mov.l @(loc_8c182414,pc),r3 ; r3 set to 0x8C1951E2
	mov.l @(loc_8c182410,pc),r2 ; r2 set to 0x8C1C5410
	jsr @r3
	mov.l r2,@-r15
	bra loc_8c182518
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18240c:
	#data 0x0084
loc_8c18240E:
	#data 0x0080
	#align4

loc_8c182410:
	#data bank1c.loc_8c1c5410
loc_8c182414:
	#data bank19.loc_8c1951E2
loc_8c182418:
	#data bank19.loc_8c1951C4

;==============================================
loc_8c18241c:
	mov.l @(0x38,r14),r1
	mov 0x44,r0
	mov 0x04,r5
	mov.l r1,@(0x04,r15) 
	mov 0x00,r7
	mov.l @r1,r3
	mov.l @(0x1C,r15),r6
	mov.l @(r0,r3),r2
	jsr @r2
	mov r1,r4
	mov.l @(0x38,r14),r3
	mov 0x48,r0
	mov r15,r7
	mov 0x04,r5
	mov.l r3,@(0x04,r15) 
	add 0x24,r7
	mov.l @r3,r2
	mov.l @r15,r6
	mov.l @(r0,r2),r1
	jsr @r1
	mov r3,r4
	mov.l @r15,r3
	mov.l @r3,r2
	cmp/pl r2
	bf loc_8c182518
	mov.l @(0x38,r14),r1
	mov.l r1,@r15
	mov.l @r1,r3
	mov.l @(0x30,r3),r2
	jsr @r2
	mov r1,r4
	mov.l r0,@(0x04,r15) 
	mov.l @(0x38,r14),r3
	mov.l r3,@r15
	mov.l @r3,r2
	mov.l @(0x28,r2),r1
	jsr @r1
	mov r3,r4
	mov.l r0,@(0x28,r15) 
	mov.l @(0x38,r14),r3
	mov.l r3,@r15
	mov.l @r3,r2
	mov.l @(0x38,r2),r1
	jsr @r1
	mov r3,r4
	mov.l r0,@r15
	mov 0x40,r0
	mov r15,r3
	add 0x2C,r3
	mov 0x00,r5
	mov.l r3,@(0x1C,r15) 
	mov.l @(0x38,r14),r2
	mov r3,r8
	mov.l r2,@(0x20,r15) 
	mov.l @r2,r1
	mov.l @(r0,r1),r0
	jsr @r0
	mov r2,r4
	mov.l r0,@r8
	mov 0x40,r0
	mov r15,r3
	add 0x30,r3
	mov 0x01,r5
	mov.l r3,@(0x20,r15) 
	mov.l @(0x38,r14),r2
	mov r3,r8
	mov.l r2,@(0x08,r15) 
	mov.l @r2,r1
	mov.l @(r0,r1),r0
	jsr @r0
	mov r2,r4
	mov.l r0,@r8
	mov 0x48,r0
	mov.l @(0x38,r14),r3
	mov r15,r7
	mov r15,r6
	add 0x14,r6
	mov 0x00,r5
	mov.l r3,@(0x08,r15) 
	mov.l @r3,r2
	add 0x18,r7
	mov.l @(r0,r2),r1
	jsr @r1
	mov r3,r4
	mov.l @(0x38,r14),r3
	mov 0x48,r0
	mov r15,r7
	mov r15,r6
	add 0x0C,r6
	mov.l r3,@(0x08,r15) 
	mov.l @r3,r2
	mov 0x03,r5
	add 0x10,r7
	mov.l @(r0,r2),r1
	jsr @r1
	mov r3,r4
	mov.l @(0x04,r15),r5
	bsr loc_8c181fd6
	mov r14,r4
	mov.l @(0x28,r15),r5
	bsr loc_8c18202e
	mov r14,r4
	mov.l @r15,r2
	mov 0x60,r0
	mov r14,r3
	add 0x64,r3
	mov.l r2,@(r0,r14) 
	mov 0x68,r0
	mov.l @(0x1C,r15),r2
	mov.l @r2,r1
	mov.l r1,@r3
	mov.l @(0x20,r15),r3
	mov.l @r3,r2
	mov.l r2,@(r0,r14) 
	mov 0x6C,r0
	mov.l @(0x14,r15),r3
	mov.l r3,@(r0,r14) 
	mov 0x70,r0
	mov.l @(0x18,r15),r2
	mov.l r2,@(r0,r14) 
	mov 0x7C,r0
	mov.l @(0x0C,r15),r3
	mov.l r3,@(r0,r14) 
	mov.w @(loc_8C182522,pc),r0
	mov.l @(0x10,r15),r2
	mov.l r2,@(r0,r14) 

loc_8c182518:
	add 0x34,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c182522:
	#data 0x0080

;===============================================
loc_8c182524:
	stc sr, r0
	mov.w @(loc_8c182642,pc),r3 ; r3 set to 0xFF0F
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov r0,r4
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	rts
	mov r4,r0

;==============================================
loc_8c18253C:
	stc sr, r3
	mov r5,r0
	mov.w @(loc_8c182642,pc),r2 ; r2 set to 0xFF0F
	and 0x0F,r0
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0, sr
	rts
	nop

;==============================================
loc_8c182552:
	bra loc_8c182552
	nop

loc_8c182556:
	mov.l @(loc_8c182648,pc),r4 ; r4 set to 0x8C1C9664
	mov.l @r4,r3
	cmp/pl r3
	bt loc_8c18256E
	mov.l @r4,r1
	mov.l @(loc_8c182650,pc),r3 ; r3 set to 0x8C129728
	add 0x01,r1
	mov.w @(loc_8c182644,pc),r6 ; r6 set to 0x480
	mov.l r1,@r4 ; r4 ??? bc r1 is ???
	mov.l @(loc_8c18264C,pc),r4 ; r4 set to 0x8C336B68
	jmp @r3
	mov 0x00,r5

loc_8c18256E:
	rts
	nop

;==============================================
loc_8c182572:
	mov.l @(loc_8c182648,pc),r4 ; r4 set to 0x8C1C9664
	mov.l @r4,r3
	add 0xFF,r3
	mov r3,r2
	mov.l r3,@r4 ; r4 ??? bc r3 is ???
	rts
	cmp/pl r2

;==============================================
loc_8c182580:
	mov.l r14,@-r15
	mov 0x20,r14
	sts.l pr,@-r15
	mov.l @(0xC4,PC),r7
	mov 0x00,r6

loc_8c18258a:
	mov r6,r3
	shll2 r3
	shll r3
	mov r6,r2
	add r2,r3
	shll2 r3
	add r7,r3
	mov.l @(0x4,r3),r1
	tst r1,r1
	bt loc_8c1825a4
	add 0x01,r6
	cmp/ge r14,r6
	bf loc_8c18258a

loc_8c1825a4:
	mov r6,r0
	cmp/eq 0x20,r0
	bf loc_8c1825b2
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

loc_8c1825b2:
	mov r6,r14
	shll2 r14
	shll r14
	mov r6,r3
	add r3,r14
	mov.l @(0x94,PC),r3
	shll2 r14
	mov 0x01,r2
	add r7,r14
	mov.l r2,@(0x4,r14)
	mov.l r3,@r14
	mov.l @(0x8C,PC),r2
	mov.l @(0x90,PC),r3
	mov.l r4,@(0x14,r14)
	mov.l r5,@(0x18,r14)
	mov.l r2,@(0x8,r14)
	mov.l r3,@(0x1C,r14)
	mov.l r14,@(0x20,r14)
	bsr loc_8c18260a
	mov r14,r4
	mov r14,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1825e2:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	tst r14,r14
	bt loc_8c1825fa
	mov.l @(0x60,PC),r2
	mov 0x00,r5
	mov 0x24,r6
	jsr @r2
	mov r14,r4
	mov 0x00,r3
	mov.l r3,@(0x4,r14)

loc_8c1825fa:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c182600:
	rts
	mov.l @(0x08,r4),r0

;==============================================
loc_8c182604:
	mov.l r5,@(0x1C,r4)
	rts
	mov.l r6,@(0x20,r4)

;==============================================
loc_8c18260A:
	mov.l @(0x18,r4),r3
	mov 0x00,r2 ; r2 set to 0x00
	mov.l r3,@(0x0C,r4)
	rts
	mov.l r2,@(0x10,r4)

;==============================================
loc_8c182614:
	mov.l r14,@-r15
	mov r5,r0
	sts.l pr,@-r15
	cmp/eq 0x01,r0
	bf/s loc_8c182628
	mov r4,r14
	lds.l @r15+,pr
	mov.l @(0x0C,r14),r0
	rts
	mov.l @r15+,r14

;==============================================
loc_8c182628:
	tst r5,r5
	bt loc_8c18263a
	mov.l @(0x1C,r14),r2
	tst r2,r2
	bt loc_8c18263a
	mov.l @(0x1C,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x20,r14),r4

loc_8c18263a:
	mov 0x00,r0
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c182642:
	#data 0xFF0F
loc_8c182644:
	#data 0x0480
	#align4

loc_8c182648:
	#data bank1c.loc_8C1C9664
loc_8c18264c:
	#data 0x8C336B68
loc_8c182650:
	#data bank12.loc_8C129728
loc_8c182654:
	#data bank1C.loc_8C1C9634
loc_8c182658:
	#data bank1C.loc_8C1C5540
loc_8c18265c:
	#data loc_8C182552

;==============================================
loc_8c182660:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r7,r13
	mov.l r5,@(0x04,r15)
	mov.l r6,@r15
	bsr loc_8c182524
	mov r4,r14
	mov.l r0,@(0x08,r15)
	mov.l @(0x04,r15),r3
	tst r3,r3
	bf/s loc_8c182682
	mov 0x00,r4 ; r4 set to 0x00
	mov.l r4,@(0x04,r13)
	bra loc_8c1826C4
	mov.l r4,@r13

loc_8c182682:
	mov.l @(0x04,r15),r0
	cmp/eq 0x01,r0
	bf loc_8c1826B2
	mov.l @r15,r3
	mov.l @(0x0C,r14),r4
	cmp/ge r3,r4
	bt loc_8c182694
	bra loc_8c182696
	mov r4,r2

loc_8c182694:
	mov.l @r15,r2

loc_8c182696:
	mov.l r2,@(0x04,r13)
	mov.l @(0x14,r14),r1
	mov.l @(0x10,r14),r3
	add r3,r1
	mov.l r1,@r13
	mov.l @(0x10,r14),r2
	mov.l @(0x04,r13),r3
	add r3,r2
	mov.l r2,@(0x10,r14)
	mov.l @(0x04,r13),r3
	mov.l @(0x0C,r14),r1
	sub r3,r1
	bra loc_8c1826C4
	mov.l r1,@(0x0C,r14)

loc_8c1826b2:
	mov.l r4,@(0x04,r13) 
	mov.l r4,@r13
	mov.l @(0x1C,r14),r3
	tst r3,r3
	bt loc_8c1826c4
	mov.l @(0x1C,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x20,r14),r4

loc_8c1826C4:
	mov.l @(0x08,r15),r5
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c18253C
	mov.l @r15+,r14

loc_8c1826D2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r5,@r15
	mov.l r6,@(0x4,r15)
	bsr loc_8c182524
	mov r4,r14
	mov.l r0,@(0x8,r15)
	mov.l @r15,r3
	tst r3,r3
	bt loc_8c182706
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bt loc_8c182706
	mov.l @(0x4,r15),r3
	mov 0x00,r4
	mov.l r4,@(0x4,r3)
	mov.l @(0x4,r15),r3
	mov.l r4,@r3
	mov.l @(0x1C,r14),r3
	tst r3,r3
	bt loc_8c182706
	mov.l @(0x1C,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x20,r14),r4

loc_8c182706:
	mov.l @(0x8,r15),r5
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	bra loc_8c18253c
	mov.l @r15+,r14

loc_8c182712:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r6,r13
	mov.l r5,@r15
	bsr loc_8c182524
	mov r4,r14
	mov.l r0,@(0x04,r15)
	mov.l @r15,r3
	tst r3,r3
	bf loc_8c182734
	mov.l @(0x1C,r14),r3
	tst r3,r3
	bf loc_8c18277C
	bra loc_8c182784
	nop

loc_8c182734:
	mov.l @r15,r0
	cmp/eq 0x01,r0 
	bf loc_8c182770
	mov.l @(0x10,r14),r4
	mov.l @(0x04,r13),r3
	sub r3,r4
	cmp/pl r4
	bt loc_8c182746
	mov 0x00,r4

loc_8c182746:
	mov.l r4,@(0x10,r14) 
	mov.l @(0x04,r13),r3
	mov.l @(0x0C,r14),r6
	mov.l @(0x18,r14),r5
	add r3,r6
	cmp/ge r6,r5
	bt loc_8c182758
	bra loc_8c18275a
	mov r5,r2

loc_8c182758:
	mov r6,r2

loc_8c18275a:
	mov.l r2,@(0x0C,r14) 
	mov.l @r13,r5
	mov.l @(0x14,r14),r3
	sub r3,r5
	cmp/eq r5,r4
	bt loc_8c182784
	mov.l @(0x1C,r14),r3
	tst r3,r3
	bt loc_8c182784
	bra loc_8c18277c
	nop 

loc_8c182770:
	mov 0x00,r4
	mov.l r4,@(0x04,r13) 
	mov.l r4,@r13
	mov.l @(0x1C,r14),r3
	tst r3,r3
	bt loc_8c182784

loc_8c18277c:
	mov.l @(0x1C,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x20,r14),r4

loc_8c182784:
	mov.l @(0x04,r15),r5
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c18253C
	mov.l @r15+,r14

loc_8c182792:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r6,r12
	mov.l r5,@r15
	mov.l r7,@(0x4,r15)
	bsr loc_8c182524
	mov r4,r14
	mov.l r0,@(0x8,r15)
	mov.l @r15,r3
	tst r3,r3
	bt/s loc_8c1827bc
	mov 0x00,r4
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bf loc_8c1827c4
	mov.l @(0xC,r14),r4
	cmp/ge r12,r4
	bt loc_8c1827c0

loc_8c1827BC:
	bra loc_8c1827d4
	mov r4,r13

loc_8c1827C0:
	bra loc_8c1827d4
	mov r12,r13

loc_8c1827C4:
	mov.l @(0x1C,r14),r3
	tst r3,r3
	bt/s loc_8c1827d4
	mov r4,r13
	mov.l @(0x1C,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x20,r14),r4

loc_8c1827D4:
	mov.l @(0x4,r15),r2
	mov.l r13,@r2
	mov.l @(0x8,r15),r5
	bsr loc_8c18253c
	mov r14,r4
	cmp/eq r12,r13
	movt r0
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1827ee:
	rts 
	mov.l @(0x14,r4),r0

;==============================================
loc_8c1827f2:
	rts 
	mov.l @(0x18,r4),r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

;==============================================
loc_8c1827F8:
	stc sr, r0
	mov.w @(loc_8c182922,pc),r3 ; r3 set to 0xFF0F
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov r0,r4
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	rts
	mov r4,r0

;==============================================
loc_8c182810:
	stc sr, r3
	mov r5,r0
	mov.w @(loc_8c182922,pc),r2 ; r2 set to 0xFF0F
	and 0x0F,r0
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0, sr
	rts
	nop

;==============================================
loc_8c182826:
	bra loc_8c182826
	nop

loc_8c18282A:
	mov.l @(loc_8c182928,pc),r4 ; r4 set to 0x8C1C969C
	mov.l @r4,r3
	cmp/pl r3
	bt loc_8c182842
	mov.l @r4,r1
	mov.l @(loc_8c182930,pc),r3 ; r3 set to 0x8C129728
	add 0x01,r1
	mov.w @(loc_8c182924,pc),r6 ; r6 set to 0xC00
	mov.l r1,@r4 ; r4 ??? bc r1 is ???
	mov.l @(loc_8c18292C,pc),r4 ; r4 set to 0x8C336FE8
	jmp @r3
	mov 0x00,r5

loc_8c182842:
	rts
	nop

;==============================================
loc_8c182846:
	mov.l @(loc_8c182928,pc),r4 ; r4 set to 0x8C1C969C
	mov.l @r4,r3
	add 0xFF,r3
	mov r3,r2
	mov.l r3,@r4 ; r4 ??? bc r3 is ???
	rts
	cmp/pl r2

;==============================================
loc_8c182854:
	mov.l r14,@-r15
	mov 0x40,r0
	sts.l pr,@-r15
	mov.l @(0xD0,PC),r14
	mov 0x00,r7

loc_8c18285E:
	mov r7,r3
	shll r3
	mov r7,r2
	add r2,r3
	shll2 r3
	shll2 r3
	add r14,r3
	mov.l @(0x4,r3),r1
	tst r1,r1
	bt loc_8c182878
	add 0x01,r7
	cmp/ge r0,r7
	bf loc_8c18285e

loc_8c182878:
	mov r7,r0
	cmp/eq 0x40,r0
	bf loc_8c182886
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c182886:
	mov r7,r3
	shll r7
	add r3,r7
	mov.l @(0xA4,PC),r3
	shll2 r7
	shll2 r7
	mov 0x01,r2
	add r7,r14
	mov.l r2,@(0x4,r14)
	mov.l r3,@r14
	mov.l @(0xA0,PC),r3
	mov.l @(0x98,PC),r2
	mov.l r4,@(0x1C,r14)
	mov.l r5,@(0x20,r14)
	mov.l r6,@(0x24,r14)
	mov.l r2,@(0x8,r14)
	mov.l r3,@(0x28,r14)
	mov.l r14,@(0x2C,r14)
	bsr loc_8c1828de
	mov r14,r4
	mov r14,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1828B6:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	tst r14,r14
	bt loc_8c1828ce
	mov.l @(0x6C,PC),r2
	mov 0x00,r5
	mov 0x30,r6
	jsr @r2
	mov r14,r4
	mov 0x00,r3
	mov.l r3,@(0x4,r14)

loc_8c1828CE:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1828D4:
	rts
	mov.l @(0x08,r4),r0

;==============================================
loc_8c1828D8:
	mov.l r5,@(0x28,r4)
	rts
	mov.l r6,@(0x2C,r4)

;==============================================
loc_8c1828DE:
	mov 0x00,r5 ; r5 set to 0x00
	mov.l r5,@(0x0C,r4)
	mov.l @(0x20,r4),r3
	mov.l r3,@(0x10,r4)
	mov.l r5,@(0x14,r4)
	rts
	mov.l r5,@(0x18,r4)

;==============================================
loc_8c1828EC:
	mov.l r14,@-r15
	mov r5,r0
	sts.l pr,@-r15
	cmp/eq 0x01,r0
	bf/s loc_8c182900
	mov r4,r14
	lds.l @r15+,pr
	mov.l @(0x0C,r14),r0
	rts
	mov.l @r15+,r14

;==============================================
loc_8c182900:
	tst r5,r5
	bf loc_8c18290C
	lds.l @r15+,pr
	mov.l @(0x10,r14),r0
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18290c:
	mov.l @(0x28,r14),r3
	tst r3,r3
	bt loc_8c18291a
	mov.l @(0x28,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x2C,r14),r4

loc_8c18291a:
	mov 0x00,r0
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c182922:
	#data 0xFF0F
loc_8c182924:
	#data 0x0C00
	#align4

loc_8c182928:
	#data bank1c.loc_8C1C969C
loc_8c18292c:
	#data 0x8C336FE8
loc_8c182930:
	#data bank12.loc_8C129728
loc_8c182934:
	#data bank1c.loc_8C1C966C
loc_8c182938:
	#data bank1c.loc_8C1C5550
loc_8c18293c:
	#data loc_8C182826

;==============================================
loc_8c182940:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r7,r13
	mov r6,r12
	mov.l r5,@r15
	bsr loc_8c1827F8
	mov r4,r14
	mov.l r0,@(0x04,r15)
	mov.l @r15,r3
	tst r3,r3
	bf loc_8c1829A2
	mov.l @(0x20,r14),r4
	mov.l @(0x14,r14),r3
	mov.l @(0x24,r14),r2
	sub r3,r4
	mov.l @(0x10,r14),r5
	add r2,r4
	cmp/ge r4,r5
	bt loc_8c182970
	bra loc_8c182972
	mov r5,r3

loc_8c182970:
	mov r4,r3

loc_8c182972:
	mov r3,r4
	cmp/ge r12,r4
	mov.l r3,@(0x04,r13)
	bt loc_8c18297E
	bra loc_8c182980
	mov r4,r1

loc_8c18297E:
	mov r12,r1

loc_8c182980:
	mov.l r1,@(0x04,r13)
	mov.l @(0x1C,r14),r2
	mov.l @(0x14,r14),r3
	add r3,r2
	mov.l r2,@r13
	mov.l @(0x14,r14),r1
	mov.l @(0x04,r13),r3
	mov.l @(loc_8c182B80,pc),r2 ; r2 set to 0x8C1292D4, r2 set to 0x8C1292D4
	add r3,r1
	jsr @r2
	mov.l @(0x20,r14),r0
	mov.l r0,@(0x14,r14)
	mov.l @(0x10,r14),r2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
	mov.l @(0x04,r13),r3
	sub r3,r2
	bra loc_8c182A02
	mov.l r2,@(0x10,r14)

loc_8c1829A2:
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bf loc_8c1829EE
	mov.l @(0x20,r14),r5
	mov.l @(0x18,r14),r3
	mov.l @(0x24,r14),r2
	sub r3,r5
	mov.l @(0x0C,r14),r4
	add r2,r5
	cmp/ge r5,r4
	bt loc_8c1829BC
	bra loc_8c1829BE
	mov r4,r2

loc_8c1829BC:
	mov r5,r2

loc_8c1829BE:
	mov r2,r4
	cmp/ge r12,r4
	mov.l r2,@(0x04,r13)
	bt loc_8c1829CA
	bra loc_8c1829CC
	mov r4,r3

loc_8c1829CA:
	mov r12,r3

loc_8c1829CC:
	mov.l r3,@(0x04,r13)
	mov.l @(0x1C,r14),r2
	mov.l @(0x18,r14),r3
	add r3,r2
	mov.l r2,@r13
	mov.l @(0x18,r14),r1
	mov.l @(0x04,r13),r3
	mov.l @(loc_8c182B80,pc),r2 ; r2 set to 0x8C1292D4, r2 set to 0x8C1292D4
	add r3,r1
	jsr @r2
	mov.l @(0x20,r14),r0
	mov.l r0,@(0x18,r14)
	mov.l @(0x0C,r14),r2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
	mov.l @(0x04,r13),r3
	sub r3,r2
	bra loc_8c182A02
	mov.l r2,@(0x0C,r14)

loc_8c1829ee:
	mov 0x00,r4
	mov.l r4,@(0x04,r13) 
	mov.l r4,@r13
	mov.l @(0x28,r14),r3
	tst r3,r3
	bt loc_8c182a02
	mov.l @(0x28,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x2C,r14),r4

loc_8c182A02:
	mov.l @(0x04,r15),r5
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c182810
	mov.l @r15+,r14

loc_8c182A12:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r6,r13
	mov.l r5,@r15
	bsr loc_8c1827F8
	mov r4,r14
	mov.l r0,@(0x04,r15)
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bf loc_8c182A98
	mov.l @(0x0C,r14),r2
	mov.l @(0x04,r13),r3
	add r3,r2
	mov.l r2,@(0x0C,r14)
	mov.l @r13,r12
	mov.l @(0x1C,r14),r3
	mov.l @(0x24,r14),r2
	sub r3,r12
	cmp/ge r2,r12
	bt loc_8c182A62
	mov.l @(0x24,r14),r5
	mov.l @(0x04,r13),r4
	sub r12,r5
	cmp/ge r5,r4
	bt loc_8c182A4E
	bra loc_8c182A50
	mov r4,r1

loc_8c182a4e:
	mov r5,r1

loc_8c182a50:
	mov.l @(loc_8c182b84,pc),r2
	mov r1,r6
	mov.l r1,@r15
	mov.l @(0x20,r14),r4
	mov.l @(0x1C,r14),r3
	mov.l @r13,r5
	add r12,r4
	jsr @r2
	add r3,r4

loc_8c182A62:
	mov.l @r13,r12
	mov.l @(0x1C,r14),r3
	mov.l @(0x04,r13),r2
	sub r3,r12
	mov.l @(0x20,r14),r3
	add r2,r12
	cmp/gt r3,r12
	bf loc_8c182ABC
	mov.l @(0x20,r14),r3
	mov r12,r5
	mov.l @(0x04,r13),r4
	sub r3,r5
	cmp/ge r5,r4
	bt loc_8c182A82
	bra loc_8c182A84
	mov r4,r13

loc_8c182A82:
	mov r5,r13

loc_8c182A84:
	mov.l @(0x1C,r14),r5
	sub r13,r12
	mov.l @(loc_8c182B84,pc),r3 ; r3 set to 0x8C129668, r3 set to 0x8C129668
	mov r13,r6
	mov.l r5,@r15
	add r12,r5
	jsr @r3
	mov.l @r15,r4
	bra loc_8c182ABC
	nop

loc_8c182A98:
	mov.l @r15,r3
	tst r3,r3
	bf loc_8c182AA8
	mov.l @(0x10,r14),r2
	mov.l @(0x04,r13),r3
	add r3,r2
	bra loc_8c182ABC
	mov.l r2,@(0x10,r14)

loc_8c182aa8:
	mov 0x00,r4
	mov.l r4,@(0x04,r13) 
	mov.l r4,@r13
	mov.l @(0x28,r14),r3
	tst r3,r3
	bt loc_8c182abc
	mov.l @(0x28,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x2C,r14),r4

loc_8c182ABC:
	mov.l @(0x04,r15),r5
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c182810
	mov.l @r15+,r14

loc_8c182ACC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r6,r13
	mov.l r5,@r15
	bsr loc_8c1827F8
	mov r4,r14
	mov.l r0,@(0x04,r15)
	mov.l @r15,r3
	tst r3,r3
	bf loc_8c182B1E
	mov.l @(0x14,r14),r1
	mov.l @(0x20,r14),r5
	mov.l @(0x04,r13),r3
	mov.l @(loc_8c182B80,pc),r2 ; r2 set to 0x8C1292D4
	add r5,r1
	sub r3,r1
	jsr @r2
	mov r5,r0
	mov.l @r13,r1
	mov r0,r4
	mov.l @(0x1C,r14),r3
	mov.l @(loc_8c182B80,pc),r2 ; r2 set to 0x8C1292D4
	sub r3,r1
	jsr @r2
	mov r5,r0
	mov r0,r5
	cmp/eq r5,r4
	bf loc_8c182B14
	mov.l r4,@(0x14,r14)
	mov.l @(0x10,r14),r2 ; r2 ??? bc r14 is ???
	mov.l @(0x04,r13),r3
	add r3,r2
	bra loc_8c182B72
	mov.l r2,@(0x10,r14)

loc_8c182B14:
	mov.l @(0x28,r14),r0
	tst r0,r0
	bf loc_8c182B6A
	bra loc_8c182B72
	nop

loc_8c182B1E:
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bf loc_8c182B5E
	mov.l @(0x18,r14),r1
	mov.l @(0x20,r14),r5
	mov.l @(0x04,r13),r3
	mov.l @(loc_8c182B80,pc),r2 ; r2 set to 0x8C1292D4
	add r5,r1
	sub r3,r1
	jsr @r2
	mov r5,r0
	mov.l @r13,r1
	mov r0,r4
	mov.l @(0x1C,r14),r3
	mov.l @(loc_8c182B80,pc),r2 ; r2 set to 0x8C1292D4
	sub r3,r1
	jsr @r2
	mov r5,r0
	mov r0,r5
	cmp/eq r5,r4
	bf loc_8c182B54
	mov.l r4,@(0x18,r14)
	mov.l @(0x0C,r14),r2 ; r2 ??? bc r14 is ???
	mov.l @(0x04,r13),r3
	add r3,r2
	bra loc_8c182B72
	mov.l r2,@(0x0C,r14)

loc_8c182B54:
	mov.l @(0x28,r14),r0
	tst r0,r0
	bt loc_8c182B72
	bra loc_8c182B6A
	nop

loc_8c182b5e:
	mov 0x00,r4
	mov.l r4,@(0x04,r13) 
	mov.l r4,@r13
	mov.l @(0x28,r14),r3
	tst r3,r3
	bt loc_8c182b72

loc_8c182b6a:
	mov.l @(0x28,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x2C,r14),r4

loc_8c182B72:
	mov.l @(0x04,r15),r5
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c182810
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c182B80:
	#data bank12.loc_8c1292D4
loc_8c182B84:
	#data bank12.loc_8c129668

;==============================================
loc_8c182B88:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r6,r12
	mov.l r5,@r15
	mov.l r7,@(0x04,r15)
	bsr loc_8c1827F8
	mov r4,r14
	mov.l r0,@(0x08,r15)
	mov.l @r15,r3
	tst r3,r3
	bf loc_8c182BBC
	mov.l @(0x20,r14),r5
	mov.l @(0x14,r14),r3
	mov.l @(0x24,r14),r2
	sub r3,r5
	mov.l @(0x10,r14),r6
	add r2,r5
	cmp/ge r5,r6
	bt loc_8c182BB8
	bra loc_8c182BD8
	mov r6,r4

loc_8c182BB8:
	bra loc_8c182BD8
	mov r5,r4

loc_8c182BBC:
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bf loc_8c182BE4
	mov.l @(0x20,r14),r6
	mov.l @(0x18,r14),r3
	mov.l @(0x24,r14),r2
	sub r3,r6
	mov.l @(0x0C,r14),r5
	add r2,r6
	cmp/ge r6,r5
	bt loc_8c182BD6
	bra loc_8c182BD8
	mov r5,r4

loc_8c182BD6:
	mov r6,r4

loc_8c182BD8:
	cmp/ge r12,r4
	bt loc_8c182BE0
	bra loc_8c182BF4
	mov r4,r13

loc_8c182BE0:
	bra loc_8c182BF4
	mov r12,r13
	
loc_8c182be4:
	mov.l @(0x28,r14),r3
	tst r3,r3
	bt/s loc_8c182bf4
	mov 0x00,r13
	mov.l @(0x28,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x2C,r14),r4

loc_8c182BF4:
	mov.l @(0x04,r15),r2
	mov.l r13,@r2
	mov.l @(0x08,r15),r5
	bsr loc_8c182810
	mov r14,r4
	cmp/eq r12,r13
	movt r0
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c182C0E:
	rts
	mov.l @(0x1C,r4),r0

;==============================================
loc_8c182C12:
	rts
	mov.l @(0x20,r4),r0
;==============================================
loc_8c182C16:
	rts
	mov.l @(0x24,r4),r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

;==============================================
loc_8c182C1C:
	stc sr,r0
	mov.w @(0x138,PC),r3
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov r0,r4
	stc sr,r0
	and r3,r0
	or 0xF0,r0
	ldc r0,sr
	rts 
	mov r4,r0

;==============================================
loc_8c182C34:
	stc sr,r3
	mov r5,r0
	mov.w @(0x11E,PC),r2
	and 0x0F,r0
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0,sr
	rts 
	nop 

;==============================================
loc_8c182C4A:
	bra loc_8c182C4A
	nop

;==============================================
loc_8c182C4E:
	mov.l @(loc_8c182D60,pc),r4 ; r4 set to 0x8C1C96D0
	mov.l @r4,r3
	cmp/pl r3
	bt loc_8c182C66
	mov.l @r4,r1
	mov.l @(loc_8c182D68,pc),r3 ; r3 set to 0x8C129728
	add 0x01,r1
	mov.w @(loc_8c182D5C,pc),r6 ; r6 set to 0xC00
	mov.l r1,@r4 ; r4 ??? bc r1 is ???
	mov.l @(loc_8c182D64,pc),r4 ; r4 set to 0x8C337BE8
	jmp @r3
	mov 0x00,r5

loc_8c182C66:
	rts
	nop

;==============================================
loc_8c182C6A:
	mov.l @(loc_8c182D60,pc),r4 ; r4 set to 0x8C1C96D0
	mov.l @r4,r3
	add 0xFF,r3
	mov r3,r2
	mov.l r3,@r4 ; r4 ??? bc r3 is ???
	rts
	cmp/pl r2

;==============================================
loc_8c182c78:
	mov.l r14,@-r15
	mov 0x40,r1
	sts.l pr,@-r15
	mov.l @(0xE4,PC),r14
	mov 0x00,r7

loc_8c182c82:
	mov r7,r3
	shll r3
	mov r7,r2
	add r2,r3
	shll2 r3
	shll2 r3
	add r14,r3
	mov.b @(0x4,r3),r0
	tst r0,r0
	bt loc_8c182c9c
	add 0x01,r7
	cmp/ge r1,r7
	bf loc_8c182c82

loc_8c182c9c:
	mov r7,r0
	cmp/eq 0x40,r0
	bf loc_8c182caa
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

loc_8c182caa:
	mov r7,r3
	shll r7
	add r3,r7
	mov.l @(0xB8,PC),r3
	shll2 r7
	shll2 r7
	add r7,r14
	mov 0x01,r0
	shlr2 r6
	mov.b r0,@(0x4,r14)
	shlr2 r6
	mov r4,r0
	mov.b r0,@(0x5,r14)
	mov.l r3,@r14
	mov.l @(0xA8,PC),r3
	mov.b r0,@(0x5,r14)
	mov.l r3,@(0x8,r14)
	mov.l @(0xA4,PC),r3
	mov.l r5,@(0xC,r14)
	mov.l r6,@(0x10,r14)
	mov.l r3,@(0x28,r14)
	mov.l r14,@(0x2C,r14)
	bsr loc_8c182d0a
	mov r14,r4
	mov r14,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c182CE2:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	tst r14,r14
	bt loc_8c182cfa
	mov.l @(0x78,PC),r2
	mov 0x00,r5
	mov 0x30,r6
	jsr @r2
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x4,r14)

loc_8c182CFA:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c182D00:
	rts
	mov.l @(0x08,r4),r0

;==============================================
loc_8c182D04:
	mov.l r5,@(0x28,r4)
	rts
	mov.l r6,@(0x2C,r4)

;==============================================
loc_8c182D0A:
	mov r4,r6
	mov.l @(0x0C,r6),r7
	mov 0x00,r4 ; r4 set to 0x00
	mov.l r7,@(0x14,r6)
	bra loc_8c182D30
	mov r4,r5

loc_8c182D16:
	mov r5,r3
	add 0x01,r3
	mov r5,r0
	shll2 r3
	shll2 r0
	shll2 r3
	shll2 r0
	add r7,r3
	add r7,r0
	add 0x01,r5
	mov.l r3,@r0
	mov.l r4,@(0x8,r0)
	mov.l r4,@(0xC,r0)

loc_8c182d30:
	mov.l @(0x10,r6),r2
	add 0xFF,r2
	cmp/ge r2,r5
	bf loc_8c182d16
	mov r5,r0
	shll2 r0
	shll2 r0
	mov r6,r5
	add r7,r0
	add 0x18,r5
	mov.l r4,@r0
	mov.l r4,@(0x08,r0) 
	mov.l r4,@(0x0C,r0) 

loc_8c182d4a:
	mov r6,r3
	mov.l r4,@r5
	add 0x28,r3
	add 0x04,r5
	cmp/hs r3,r5
	bf loc_8c182d4a
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c182d5a:
	#data 0xFF0F
loc_8c182d5c:
	#data 0x0C00
	#align4

loc_8c182d60:
	#data bank1c.loc_8C1C96D0
loc_8c182d64:
	#data 0x8C337BE8
loc_8c182d68:
	#data bank12.loc_8C129728
loc_8c182d6c:
	#data bank1C.loc_8C1C96A0
loc_8c182d70:
	#data bank1C.loc_8C1C558C
loc_8c182d74:
	#data loc_8C182C4A

;==============================================
loc_8c182d78:
	mov.l r14,@-r15
	cmp/pz r5
	sts.l pr,@-r15
	bf/s loc_8c182d88
	mov r4,r14
	mov 0x04,r2
	cmp/ge r2,r5
	bf loc_8c182d9e

loc_8c182d88:
	mov.l @(0x28,r14),r1
	tst r1,r1
	bt loc_8c182d96
	mov.l @(0x28,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x2C,r14),r4

loc_8c182d96:
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c182d9e:
	mov r14,r3
	mov r5,r4
	add 0x18,r3
	mov 0x00,r6
	shll2 r4
	bra loc_8c182db0
	add r3,r4

loc_8c182dac:
	mov.l @(0xC,r4),r3
	add r3,r6

loc_8c182db0:
	mov.l @r4,r4
	tst r4,r4
	bf loc_8c182dac
	mov r6,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c182dbe:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xE8,r15
	mov r5,r13
	mov r4,r14
	cmp/pz r13
	mov.l r6,@r15
	mov r7,r12
	bf/s loc_8c182dde
	mov 0x00,r11
	mov 0x04,r2
	cmp/ge r2,r13
	bf loc_8c182df2

loc_8c182dde:
	mov.l @(0x28,r14),r1
	tst r1,r1
	bt loc_8c182dec
	mov.l @(0x28,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x2C,r14),r4

loc_8c182dec:
	mov.l r11,@r12
	bra loc_8c182e7c
	mov.l r11,@(0x4,r12)

loc_8c182df2:
	bsr loc_8c182c1c
	mov r14,r4
	mov r14,r3
	mov r13,r4
	add 0x18,r3
	mov.l r0,@(0x4,r15)
	shll2 r4
	add r4,r3
	mov.l @r3,r13
	tst r13,r13
	bt loc_8c182e72
	mov r13,r2
	mov.l @(0x178,PC),r3
	mov r15,r1
	add 0x08,r2
	add 0x10,r1
	jsr @r3
	mov 0x08,r0
	mov.l @(0x14,r15),r1
	mov.l @r15,r2
	cmp/gt r2,r1
	bt loc_8c182e3c
	mov.l @(0x164,PC),r3
	mov r15,r2
	mov r12,r1
	add 0x10,r2
	jsr @r3
	mov 0x08,r0
	mov r14,r2
	add 0x18,r2
	add r2,r4
	mov.l @r13,r3
	mov.l r3,@r4
	mov.l @(0x14,r14),r2
	mov.l r2,@r13
	bra loc_8c182e76
	mov.l r13,@(0x14,r14)

loc_8c182e3c:
	mov.b @(0x5,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c182e72
	mov r15,r6
	mov.l @r15,r5
	mov r15,r7
	mov.l @(0x13C,PC),r3
	mov r15,r4
	add 0x08,r7
	add 0x10,r6
	jsr @r3
	add 0x10,r4
	mov.l @(0x12C,PC),r3
	mov r15,r2
	mov r12,r1
	add 0x10,r2
	jsr @r3
	mov 0x08,r0
	mov r15,r2
	mov.l @(0x120,PC),r3
	mov r13,r1
	add 0x08,r2
	add 0x08,r1
	jsr @r3
	mov 0x08,r0
	bra loc_8c182e76
	nop 

loc_8c182e72:
	mov.l r11,@r12
	mov.l r11,@(0x4,r12)

loc_8c182e76:
	mov.l @(0x4,r15),r5
	bsr loc_8c182c34
	mov r14,r4

loc_8c182e7c:
	add 0x18,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c182e8a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r12
	cmp/pz r12
	mov r6,r13
	bf/s loc_8c182ea4
	mov r4,r14
	mov 0x04,r2
	cmp/ge r2,r12
	bf loc_8c182ebc

loc_8c182ea4:
	mov.l @(0x28,r14),r1
	tst r1,r1
	bt loc_8c182f46
	mov.l @(0x2C,r14),r4
	mov 0xFD,r5
	mov.l @(0x28,r14),r3
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c182ebc:
	mov.l @(0x4,r13),r2
	cmp/pl r2
	bf loc_8c182f46
	mov.l @r13,r1
	tst r1,r1
	bt loc_8c182f46
	bsr loc_8c182c1c
	mov r14,r4
	mov r12,r4
	mov r14,r3
	mov 0x00,r7
	mov.l r0,@r15
	add 0x18,r3
	mov r7,r5
	shll2 r4
	bra loc_8c182ee4
	add r3,r4

loc_8c182ede:
	mov.l @r4,r6
	mov r6,r4
	mov r6,r5

loc_8c182ee4:
	mov.l @r4,r3
	tst r3,r3
	bf loc_8c182ede
	mov.b @(0x5,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c182f0a
	tst r5,r5
	bt loc_8c182f0a
	mov.l @(0x8,r5),r2
	mov.l @(0xC,r5),r3
	mov.l @r13,r1
	add r3,r2
	cmp/eq r1,r2
	bf loc_8c182f0a
	mov.l @(0xC,r5),r2
	mov.l @(0x4,r13),r3
	add r3,r2
	bra loc_8c182f36
	mov.l r2,@(0xC,r5)

loc_8c182f0a:
	mov.l @(0x14,r14),r5
	tst r5,r5
	bf loc_8c182f22
	mov.l @(0x28,r14),r2
	tst r2,r2
	bt loc_8c182f36
	mov.l @(0x28,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x2C,r14),r4
	bra loc_8c182f36
	nop 

loc_8c182f22:
	mov.l @r5,r3
	mov r5,r1
	mov r13,r2
	add 0x08,r1
	mov.l r3,@(0x14,r14)
	mov.l @(0x54,PC),r3
	mov.l r7,@r5
	jsr @r3
	mov 0x08,r0
	mov.l r5,@r4

loc_8c182f36:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c182c34
	mov.l @r15+,r14

loc_8c182f46:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c182f52:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r5,r12
	cmp/pz r12
	mov r6,r13
	bf/s loc_8c182f6c
	mov r4,r14
	mov 0x04,r2
	cmp/ge r2,r12
	bf loc_8c182f8c

loc_8c182f6c:
	mov.l @(0x28,r14),r1
	tst r1,r1
	bt loc_8c183022
	mov.l @(0x2C,r14),r4
	mov 0xFD,r5
	mov.l @(0x28,r14),r3
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c182f84:
	#data bank12.loc_8C1294BC
loc_8c182f88:
	#data loc_8C1830D8

;==============================================
loc_8c182f8c:
	mov.l @(0x4,r13),r2
	cmp/pl r2
	bf loc_8c183022
	mov.l @r13,r1
	tst r1,r1
	bt loc_8c183022
	bsr loc_8c182c1c
	mov r14,r4
	mov r12,r4
	mov.l r0,@(0x4,r15)
	mov r14,r3
	shll2 r4
	add 0x18,r3
	mov.l r4,@r15
	mov.b @(0x5,r14),r0
	add r3,r4
	cmp/eq 0x01,r0
	bf/s loc_8c182fd0
	mov.l @r4,r4
	tst r4,r4
	bt loc_8c182fd0
	mov.l @r13,r2
	mov.l @(0x4,r13),r3
	mov.l @(0x8,r4),r1
	add r3,r2
	cmp/eq r1,r2
	bf loc_8c182fd0
	mov.l @r13,r2
	mov.l r2,@(0x8,r4)
	mov.l @(0x4,r13),r3
	mov.l @(0xC,r4),r1
	add r3,r1
	bra loc_8c183012
	mov.l r1,@(0xC,r4)

loc_8c182fd0:
	mov.l @(0x14,r14),r4
	tst r4,r4
	bf loc_8c182fe8
	mov.l @(0x28,r14),r2
	tst r2,r2
	bt loc_8c183012
	mov.l @(0x28,r14),r3
	mov 0xFD,r5
	jsr @r3
	mov.l @(0x2C,r14),r4
	bra loc_8c183012
	nop 

loc_8c182fe8:
	mov.l @r4,r3
	mov 0x00,r2
	mov r4,r1
	add 0x08,r1
	mov.l r3,@(0x14,r14)
	mov.l @(0xE0,PC),r3
	mov.l r2,@r4
	mov r13,r2
	jsr @r3
	mov 0x08,r0
	mov r14,r2
	mov.l @r15,r3
	add 0x18,r2
	add r3,r2
	mov.l @r2,r1
	mov r14,r2
	add 0x18,r2
	mov.l r1,@r4
	mov.l @r15,r3
	add r3,r2
	mov.l r4,@r2

loc_8c183012:
	mov.l @(0x4,r15),r5
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c182c34
	mov.l @r15+,r14

loc_8c183022:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18302e:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	cmp/pz r5
	mov 0x00,r3
	mov r4,r14
	bf/s loc_8c183044
	mov.l r3,@r7
	mov 0x04,r3
	cmp/ge r3,r5
	bf loc_8c183056

loc_8c183044:
	mov.l @(0x28,r14),r1
	tst r1,r1
	bt loc_8c183096
	mov.l @(0x28,r14),r2
	mov 0xFD,r5
	jsr @r2
	mov.l @(0x2C,r14),r4
	bra loc_8c183096
	nop 

loc_8c183056:
	mov r14,r3
	mov r5,r4
	add 0x18,r3
	shll2 r4
	add r3,r4
	mov.l @r4,r4
	tst r4,r4
	bt loc_8c183096
	mov r4,r2
	mov.l @(0x68,PC),r3
	mov r15,r5
	add 0x08,r2
	mov r5,r1
	jsr @r3
	mov 0x08,r0
	mov.l @(0x4,r5),r2
	mov.l r2,@r7
	mov.b @(0x5,r14),r0
	cmp/eq 0x01,r0
	bf/s loc_8c183088
	mov.l @(0x4,r5),r4
	cmp/ge r6,r4
	bt loc_8c18308c
	bra loc_8c183096
	nop 

loc_8c183088:
	cmp/eq r6,r4
	bf loc_8c183096

loc_8c18308c:
	mov 0x01,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c183096:
	mov 0x00,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c1830a0:
	mov r4,r7
	mov r7,r3
	mov r5,r4
	add 0x18,r3
	shll2 r4
	add r3,r4
	mov.l @r4,r4
	bra loc_8c1830b6
	mov 0x00,r6

loc_8c1830b2:
	mov.l @r4,r4
	add 0x01,r6

loc_8c1830b6:
	tst r4,r4
	bf loc_8c1830b2
	rts 
	mov r6,r0

;==============================================
;unused?
loc_8c1830be:
	mov r4,r6
	mov.l @(0x14,r6),r4
	bra loc_8c1830ca
	mov 0x00,r5

loc_8c1830c6:
	mov.l @r4,r4
	add 0x01,r5

loc_8c1830ca:
	tst r4,r4
	bf loc_8c1830c6
	rts 
	mov r5,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c1830d4:
	#data bank12.loc_8C1294BC

;==============================================
loc_8c1830d8:
	sts.l pr,@-r15
	mov.l @(0x28,PC),r3
	mov r4,r2
	mov r6,r1
	jsr @r3
	mov 0x08,r0
	mov.l @(0x4,r6),r2
	mov.l r2,@(0x4,r7)
	mov.l @(0x4,r6),r3
	cmp/gt r5,r3
	bf loc_8c1830f0
	mov.l r5,@(0x4,r6)

loc_8c1830f0:
	mov.l @r6,r2
	mov.l @(0x4,r6),r3
	add r3,r2
	mov.l r2,@r7
	mov.l @(0x4,r7),r1
	mov.l @(0x4,r6),r3
	lds.l @r15+,pr
	sub r3,r1
	rts 
	mov.l r1,@(0x4,r7)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c183104:
	#data bank12.loc_8c1294bc

;==============================================
loc_8c183108:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r5,r13
	mov.l @(loc_8c183238,pc),r5 ; r5 set to 0xFF00
	mov.l @(loc_8c183234,pc),r14 ; r14 set to 0x8C1C559C
	bra loc_8c183134
	nop

;==============================================
loc_8c183116:
	extu.w r4,r7
	mov r7,r0
	mov 0xF8,r3 ; r3 set to 0xFFFFFFF8
	shad r3, r0
	mov.b @r13+,r3 ; r3 ??? bc r13 is ???
	extu.b r0,r0
	mov r7,r2
	extu.b r3,r3
	xor r3,r0
	shll r0
	shll8 r2
	mov.w @(r0,r14),r1
	and r5,r2
	mov r2,r4
	xor r1,r4

loc_8c183134:
	cmp/pl r6
	bt/s loc_8c183116
	add 0xFF,r6
	mov.l @r15+,r13
	mov r4,r0
	rts
	mov.l @r15+,r14

;==============================================
loc_8c183142:
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x0A,r6 ; r6 set to 0x0A
	mov.l r4,@(0x04,r15)
	mov.w r5,@r15
	mov.l @(0x04,r15),r5
	bsr loc_8c183108
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @r15,r2
	not r0,r4 ; r4 ??? bc r0 is ???
	extu.w r4,r4
	extu.w r2,r2
	cmp/eq r4,r2
	bt loc_8c183166
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov 0xFF,r0

;==============================================
loc_8c183166:
	mov 0x00,r0 ; r0 set to 0x00
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c183170:
	mov.w @(loc_8c183230,pc),r0 ; r0 set to 0xF0
	exts.b r4,r5
	mov 0xFC,r3 ; r3 set to 0xFFFFFFFC
	and r5,r0 ; r0 ??? bc r5 is ???
	shad r3, r0
	mov r0,r3 ; r3 ??? bc r0 is ???
	shll2 r0
	mov 0x0F,r2 ; r2 set to 0x0F
	add r3,r0
	and r5,r2 ; r2 ??? bc r5 is ???
	shll r0
	rts
	add r2,r0

;==============================================
loc_8c18318A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	bsr loc_8c183170
	mov.b @r14+,r4
	mov.l r0,@(0x04,r15)
	bsr loc_8c183170
	mov.b @r14+,r4
	mov.l r0,@r15
	bsr loc_8c183170
	mov.b @r14,r4
	mov.l @(0x04,r15),r2
	mov 0x3C,r3 ; r3 set to 0x3C
	mov r0,r4
	mov.l @r15,r1
	mul.l r3,r2
	mov 0x4B,r3 ; r3 set to 0x4B
	sts macl,r0
	add r1,r0
	mul.l r3,r0
	sts macl,r0
	add r4,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1831C0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xE4,r15
	mov.b @r4,r3
	tst r3,r3
	bt/s loc_8c1831DE
	mov r5,r11
	bra loc_8c1832CA
	mov 0xFF,r0

loc_8c1831DE:
	mov.b @(0x02,r4),r0
	shll8 r0
	mov r0,r3
	mov.b @(0x03,r4),r0
	add r3,r0
	cmp/eq 0x64,r0
	bt loc_8c1831F0
	bra loc_8c1832CA
	mov 0xFE,r0

loc_8c1831F0:
	mov r15,r14
	mov r4,r12
	mov 0x00,r7 ; r7 set to 0x00
	mov 0x40,r6 ; r6 set to 0x40
	add 0x04,r14
	mov 0x07,r8 ; r8 set to 0x07
	add 0x04,r12
	mov 0x06,r10 ; r10 set to 0x06
	mov 0x0F,r9 ; r9 set to 0x0F
	bra loc_8c183262
	mov r7,r5

loc_8c183206:
	mov r14,r3
	mov r14,r2
	add 0x0C,r3
	mov r8,r4
	add r5,r3
	add r5,r2
	mov.b r7,@r2
	mov.b r7,@r3

loc_8c183216:
	mov r4,r0
	mov r14,r13
	cmp/eq 0x07,r0
	add 0x0C,r13
	bf/s loc_8c18323C
	add r5,r13
	mov.b @r12+,r3
	mov.b @r13,r2
	and r6,r3
	shll r3
	or r3,r2
	bra loc_8c18324E
	mov.b r2,@r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c183230:
	#data 0x00F0
	#align4

loc_8c183234:
	#data bank1c.loc_8c1c559C
loc_8c183238:
	#data 0x0000FF00

;==============================================
loc_8c18323C:
	mov r10,r2
	mov.b @r12+,r3
	sub r4,r2
	mov.b @r13,r1
	neg r2,r2
	and r6,r3
	shad r2, r3
	or r3,r1
	mov.b r1,@r13

loc_8c18324E:
	add 0xFF,r4
	cmp/pz r4
	bt loc_8c183216
	mov.b @(0x0C,r14),r0
	and r9,r0
	cmp/eq 0x01,r0
	bt loc_8c183260
	bra loc_8c1832CA
	mov 0xFB,r0

loc_8c183260:
	add 0x01,r5

loc_8c183262:
	mov 0x0C,r2 ; r2 set to 0x0C, r2 set to 0x0C
	cmp/ge r2,r5
	bf loc_8c183206
	mov r14,r13
	add 0x0C,r13
	mov.b @(0x0A,r13),r0
	extu.b r0,r0
	shll8 r0
	mov r0,r5
	mov.b @(0x0B,r13),r0
	extu.b r0,r0
	or r0,r5
	bsr loc_8c183142
	mov r13,r4
	tst r0,r0
	bt loc_8c183286
	bra loc_8c1832CA
	mov 0xFD,r0

loc_8c183286:
	mov.b @(0x0D,r14),r0
	bsr loc_8c183170
	mov r0,r4
	mov.l r0,@r11
	mov.b @(0x0F,r14),r0
	bsr loc_8c183170
	mov r0,r4
	mov.l r0,@(0x04,r11)
	mov 0x10,r0 ; r0 set to 0x10
	bsr loc_8c183170
	mov.b @(r0,r14),r4
	mov.l r0,@(0x08,r11)
	mov 0x11,r0 ; r0 set to 0x11
	bsr loc_8c183170
	mov.b @(r0,r14),r4
	mov r14,r2
	add 0x0C,r2
	mov.l r0,@(0x0C,r11)
	mov.l r2,@r15
	mov.b @r2,r3
	shll16 r3
	shll8 r3
	mov.l r3,@-r15
	mov.l @(0x04,r15),r4
	bsr loc_8c18318A
	add 0x07,r4
	mov.l @r15+,r2
	or r2,r0 ; r0 ??? bc r2 is ???
	mov.l r0,@(0x10,r11)
	mov.b @(0x0E,r14),r0
	bsr loc_8c183170
	mov r0,r4
	mov.l r0,@(0x14,r11)
	mov 0x00,r0 ; r0 set to 0x00

loc_8c1832CA:
	add 0x1C,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

;==============================================
loc_8c1832E0:
	sts.l pr,@-r15
	mov.l @(loc_8c1834D0,pc),r3 ; r3 set to 0x8C18AF44
	jsr @r3
	nop
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;==============================================
loc_8c1832EE:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xEC,r15
	mov r15,r14
	add 0x04,r14
	mov.l r5,@r15
	mov r6,r13
	mov 0x00,r2 ; r2 set to 0x00
	mov.l @(loc_8c1834D4,pc),r6 ; r6 set to 0x1FFFFFFF
	mov r14,r5
	mov r7,r0
	cmp/eq 0x01,r0
	add 0x08,r5
	mov.l r4,@r14
	mov.l @r15,r3
	mov.l r3,@(0x04,r14)
	mov.l r2,@(0x0C,r14)
	bf/s loc_8c18331A
	and r13,r6 ; r6 ??? bc r13 is ???
	bra loc_8c183324
	mov 0x11,r4

loc_8c18331A:
	tst r7,r7
	bf loc_8c183328
	mov.l @(loc_8c1834D8,pc),r2 ; r2 set to 0xA0000000
	mov 0x10,r4 ; r4 set to 0x10
	or r2,r6

loc_8c183324:
	bra loc_8c18332C
	mov.l r6,@r5

loc_8c183328:
	bra loc_8c183364
	mov 0xEE,r0

loc_8c18332C:
	mov.l @(loc_8c1834DC,pc),r2 ; r2 set to 0x8C18AF08
	jsr @r2
	mov r14,r5
	mov r0,r14
	tst r14,r14
	bt loc_8c183362
	mov 0xE4,r3 ; r3 set to 0xFFFFFFE4
	mov r13,r0
	shad r3, r0
	and 0x0E,r0
	cmp/eq 0x0A,r0
	bt loc_8c183362
	mov.l @r15,r5
	mov 0x1F,r3 ; r3 set to 0x1F
	shll8 r5
	shll2 r5
	shll r5
	tst r13,r3
	bf loc_8c18335C
	mov.l @(loc_8c1834E0,pc),r3 ; r3 set to 0x8C183C10
	jsr @r3
	mov r13,r4
	bra loc_8c183362
	nop

loc_8c18335c:
	mov.l @(loc_8c1834e4,pc),r3
	jsr @r3
	mov r13,r4

loc_8c183362:
	mov r14,r0

loc_8c183364:
	add 0x14,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18336E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r15,r14
	mov.l @(loc_8c1834DC,pc),r3 ; r3 set to 0x8C18AF08
	mov.l r4,@r14
	mov.l r5,@(0x04,r14)
	mov r14,r5
	jsr @r3
	mov 0x1C,r4 ; r4 set to 0x1C
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18338A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r15,r12
	mov.l @(loc_8c1834E8,pc),r3 ; r3 set to 0x8C18AF80
	mov r6,r13
	mov r5,r14
	mov.l r5,@r12
	mov.l r13,@(0x04,r12)
	jsr @r3
	mov r12,r5
	mov r0,r12
	tst r12,r12
	bf loc_8c1833D4
	tst r13,r13
	bt loc_8c1833D4
	mov 0xE4,r3 ; r3 set to 0xFFFFFFE4
	mov r14,r0
	shad r3, r0
	and 0x0F,r0
	cmp/eq 0x0A,r0
	bt loc_8c1833D4
	mov 0x1F,r3 ; r3 set to 0x1F
	tst r14,r3
	bf loc_8c1833CC
	mov.l @(loc_8c1834E0,pc),r3 ; r3 set to 0x8C183C10
	mov r13,r5
	jsr @r3
	mov r14,r4
	bra loc_8c1833D4
	nop

loc_8c1833cc:
	mov.l @(loc_8c1834e4,pc),r3
	mov r13,r5
	jsr @r3
	mov r14,r4

loc_8c1833D4:
	mov r12,r0
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1833E2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(loc_8c1834EC,pc),r3 ; r3 set to 0x8C18AF1C
	mov r5,r14
	jsr @r3
	mov r15,r5
	mov r0,r4
	mov r4,r0
	mov.l @(0x08,r15),r5
	cmp/eq 0x00,r0
	bt loc_8c183412
	cmp/eq 0x01,r0
	bt loc_8c183416
	cmp/eq 0x02,r0
	bt loc_8c183420
	cmp/eq 0x03,r0
	bt loc_8c183426
	cmp/eq 0x04,r0
	bt loc_8c18342A
	cmp/eq 0xFF,r0
	bt loc_8c18342E
	bra loc_8c183492
	nop

loc_8c183412:
	bra loc_8c183492
	mov 0x00,r4

loc_8c183416:
	mov.l r5,@r14
	mov 0x04,r4 ; r4 set to 0x04
	mov.l @(0x0C,r15),r2
	bra loc_8c183492
	mov.l r2,@(0x08,r14)

loc_8c183420:
	mov 0x01,r4 ; r4 set to 0x01
	bra loc_8c183492
	mov.l r5,@r14

loc_8c183426:
	bra loc_8c183492
	mov 0x41,r4

loc_8c18342A:
	bra loc_8c183492
	mov 0x43,r4

loc_8c18342E:
	mov.l @(0x04,r15),r3
	mov.l r3,@(0x04,r14)
	mov.l @r15,r0
	cmp/eq 0x00,r0
	bt/s loc_8c183462
	mov 0x05,r4 ; r4 set to 0x05
	cmp/eq 0x01,r0
	bt loc_8c183468
	cmp/eq 0x02,r0
	bt loc_8c18346C
	cmp/eq 0x03,r0
	bt loc_8c183470
	cmp/eq 0x04,r0
	bt loc_8c183474
	cmp/eq 0x05,r0
	bt loc_8c183478
	cmp/eq 0x06,r0
	bt loc_8c18347C
	cmp/eq 0x07,r0
	bt loc_8c183480
	cmp/eq 0x0B,r0
	bt loc_8c183484
	cmp/eq 0x10,r0
	bt loc_8c183488
	bra loc_8c18348E
	nop

loc_8c183462:
	mov 0xE5,r3 ; r3 set to 0xFFFFFFE5
	bra loc_8c183492
	mov.l r3,@r14

loc_8c183468:
	bra loc_8c18348A
	mov 0xE4,r1

loc_8c18346C:
	bra loc_8c183490
	mov 0xE3,r2

loc_8c183470:
	bra loc_8c18348A
	mov 0xE2,r1

loc_8c183474:
	bra loc_8c183490
	mov 0xE1,r2

loc_8c183478:
	bra loc_8c18348A
	mov 0xE0,r1

loc_8c18347C:
	bra loc_8c183490
	mov 0xDF,r2

loc_8c183480:
	bra loc_8c18348A
	mov 0xDE,r1

loc_8c183484:
	bra loc_8c183490
	mov 0xDD,r2

loc_8c183488:
	mov 0xDC,r1

loc_8c18348A:
	bra loc_8c183492
	mov.l r1,@r14

loc_8c18348e:
	mov 0xE6,r2

loc_8c183490:
	mov.l r2,@r14

loc_8c183492:
	mov r4,r0
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c18349C:
	mov.l @(loc_8c1834F0,pc),r3 ; r3 set to 0x8C18AFA8
	jmp @r3
	nop

;==============================================
loc_8c1834A2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8c1834DC,pc),r2 ; r2 set to 0x8C18AF08
	mov r15,r14
	mov r14,r5
	mov.l r4,@r14
	mov.l r3,@(0x04,r14)
	jsr @r2
	mov 0x1B,r4 ; r4 set to 0x1B
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1834C0:
	sts.l pr,@-r15
	mov.l @(loc_8c1834DC,pc),r3 ; r3 set to 0x8C18AF08
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r3
	mov 0x18,r4 ; r4 set to 0x18
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c1834D0:
	#data loc_8c18AF44
loc_8c1834D4:
	#data 0x1FFFFFFF
loc_8c1834D8:
	#data 0xA0000000
loc_8c1834DC:
	#data loc_8c18AF08
loc_8c1834E0:
	#data loc_8c183C10
loc_8c1834E4:
	#data loc_8c183E6E
loc_8c1834E8:
	#data loc_8c18AF80
loc_8c1834EC:
	#data loc_8c18AF1C
loc_8c1834F0:
	#data loc_8c18AFA8

;==============================================
loc_8c1834F4:
	sts.l pr,@-r15
	mov.l @(loc_8c183628,pc),r3 ; r3 set to 0x8C18AF58
	jsr @r3
	nop
	cmp/eq 0x01,r0
	bf/s loc_8c183508
	mov r0,r4
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8c183508:
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c183510:
	sts.l pr,@-r15
	mov.l @(loc_8c18362C,pc),r3 ; r3 set to 0x8C18AF94
	jsr @r3
	nop
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c18351E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov r15,r14
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8c183630,pc),r2 ; r2 set to 0x8C18AF08
	mov.l r4,@r14
	mov.l r5,@(0x04,r14)
	mov r14,r5
	mov.l r6,@(0x08,r14)
	mov.l r3,@(0x0C,r14)
	jsr @r2
	mov 0x14,r4 ; r4 set to 0x14
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c183540:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov r15,r14
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8c183630,pc),r2 ; r2 set to 0x8C18AF08
	mov.l r4,@r14
	mov.l r5,@(0x04,r14)
	mov r14,r5
	mov.l r6,@(0x08,r14)
	mov.l r3,@(0x0C,r14)
	jsr @r2
	mov 0x15,r4 ; r4 set to 0x15
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c183562:
	sts.l pr,@-r15
	mov.l @(loc_8c183630,pc),r3 ; r3 set to 0x8C18AF08
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r3
	mov 0x16,r4 ; r4 set to 0x16
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c183572:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8c183630,pc),r2 ; r2 set to 0x8C18AF08
	mov r15,r14
	mov r14,r5
	mov.l r4,@r14
	mov.l r3,@(0x04,r14)
	jsr @r2
	mov 0x17,r4 ; r4 set to 0x17
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c183590:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r15,r14
	mov.l @(loc_8c183630,pc),r3 ; r3 set to 0x8C18AF08
	mov.l r4,@r14
	mov.l r5,@(0x04,r14)
	mov r14,r5
	jsr @r3
	mov 0x13,r4 ; r4 set to 0x13
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1835AC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov r15,r14
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8c183630,pc),r2 ; r2 set to 0x8C18AF08
	mov.l r4,@r14
	mov.l r5,@(0x04,r14)
	mov r14,r5
	mov.l r6,@(0x08,r14)
	mov.l r3,@(0x0C,r14)
	jsr @r2
	mov 0x22,r4 ; r4 set to 0x22
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1835CE:
	sts.l pr,@-r15
	mov.l @(loc_8c183634,pc),r3 ; r3 set to 0x8C18AF30
	jsr @r3
	nop
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;==============================================
loc_8c1835DC:
	mov.l @(loc_8c183638,pc),r3 ; r3 set to 0x8C18AFBC
	jmp @r3
	nop

;==============================================
loc_8c1835E2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov r15,r14
	mov.l @(loc_8c183630,pc),r3 ; r3 set to 0x8C18AF08
	mov.l r4,@r14
	mov.l r5,@(0x04,r14)
	mov r14,r5
	mov.l r6,@(0x08,r14)
	mov.l r7,@(0x0C,r14)
	jsr @r3
	mov 0x24,r4 ; r4 set to 0x24
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c183602:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8c183630,pc),r2 ; r2 set to 0x8C18AF08
	mov r15,r14
	mov r14,r5
	mov.l r4,@r14
	mov.l r3,@(0x04,r14)
	jsr @r2
	mov 0x28,r4 ; r4 set to 0x28
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c183620:
	mov.l @(loc_8c18363C,pc),r0 ; r0 set to 0x8C1C579C
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c183628:
	#data loc_8c18AF58
loc_8c18362C:
	#data loc_8c18AF94
loc_8c183630:
	#data loc_8c18AF08
loc_8c183634:
	#data loc_8c18AF30
loc_8c183638:
	#data loc_8c18AFBC
loc_8c18363C:
	#data bank1c.loc_8c1c579C

;==============================================
loc_8c183640:
	mov 0x61,r3
	exts.b r4,r5
	cmp/ge r3,r5
	bf loc_8c183650
	mov 0x7A,r1
	cmp/gt r1,r5
	bt loc_8c183650
	add 0xE0,r4

loc_8c183650:
	rts 
	mov r4,r0

;==============================================
loc_8c183654:
	cmp/pl r6
	mov r4,r7
	bf/s loc_8c183668
	mov r5,r4

loc_8c18365c:
	mov.b @r7+,r3
	add 0xFF,r6
	cmp/pl r6
	mov.b r3,@r4
	bt/s loc_8c18365c
	add 0x01,r4

loc_8c183668:
	rts 
	nop 

;==============================================
loc_8c18366c:
	mov.l r14,@-r15
	mov r6,r14
	mov.l r13,@-r15
	cmp/pl r14
	mov.l r12,@-r15
	mov r4,r13
	mov.l r8,@-r15
	sts.l pr,@-r15
	bf/s loc_8c1836aa
	mov r5,r12

loc_8c183680:
	mov.b @r13,r2
	tst r2,r2
	bt loc_8c18369a
	bsr loc_8c183640
	mov.b @r13+,r4
	exts.b r0,r8
	bsr loc_8c183640
	mov.b @r12+,r4
	exts.b r0,r0
	cmp/eq r0,r8
	bf loc_8c1836a0
	bra loc_8c1836a4
	nop 

loc_8c18369a:
	mov.b @r12,r2
	tst r2,r2
	bt loc_8c1836aa

loc_8c1836a0:
	bra loc_8c1836ac
	mov 0x00,r0

loc_8c1836a4:
	add 0xFF,r14
	cmp/pl r14
	bt loc_8c183680

loc_8c1836aa:
	mov 0x01,r0

loc_8c1836ac:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1836B8:
	bra loc_8c1836C4
	nop

;==============================================
loc_8c1836BC:
	mov.b @r5+,r2
	mov.b @r4+,r3
	cmp/eq r2,r3
	bf loc_8c1836d0

loc_8c1836c4:
	mov.b @r4,r3
	tst r3,r3
	bf loc_8c1836bc
	mov.b @r5,r1
	tst r1,r1
	bt loc_8c1836d4

loc_8c1836d0:
	rts 
	mov 0x00,r0

;==============================================
loc_8c1836d4:
	mov 0x01,r0
	rts 
	nop 

loc_8c1836DA:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	bra loc_8c1836F8
	mov r5,r13

loc_8c1836E8:
	bsr loc_8c183640
	mov.b @r14+,r4
	exts.b r0,r8
	bsr loc_8c183640
	mov.b @r13+,r4
	exts.b r0,r0
	cmp/eq r0,r8
	bf loc_8c183704

loc_8c1836f8:
	mov.b @r14,r3
	tst r3,r3
	bf loc_8c1836e8
	mov.b @r13,r1
	tst r1,r1
	bt loc_8c183708

loc_8c183704:
	bra loc_8c18370a
	mov 0x00,r0

loc_8c183708:
	mov 0x01,r0

loc_8c18370a:
	lds.l @r15+,pr 
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c183714:
	bra loc_8c183730
	mov 0x00,r7

loc_8c183718:
	bra loc_8c183726
	mov r5,r6

loc_8c18371c:
	mov.b @r6,r2
	mov.b @r4,r3
	cmp/eq r2,r3
	bt loc_8c183736
	add 0x01,r6

loc_8c183726:
	mov.b @r6,r3
	tst r3,r3
	bf loc_8c18371c
	add 0x01,r7
	add 0x01,r4

loc_8c183730:
	mov.b @r4,r3
	tst r3,r3
	bf loc_8c183718

loc_8c183736:
	rts 
	mov r7,r0

;==============================================
loc_8c18373A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.w @(loc_8c183846,pc),r13 ; r13 set to 0xDA
	bra loc_8c18374E
	mov r4,r14

loc_8c183746:
	bsr loc_8c183640
	mov.b @r14+,r4
	extu.b r0,r0
	add r0,r13

loc_8c18374E:
	mov.b @r14,r2
	tst r2,r2
	bf loc_8c183746
	lds.l @r15+,pr
	shlr2 r13
	extu.b r13,r0
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c183760:
	mov.l r14,@-r15
	mov 0x22,r2
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @r13,r3
	extu.b r3,r3
	cmp/ge r2,r3
	bt/s loc_8c18377a
	mov r5,r14
	bra loc_8c1837ec
	mov 0x00,r0

loc_8c18377A:
	mov r13,r4
	mov r14,r5
	mov 0x04,r6
	bsr loc_8c183654
	add 0x02,r4
	mov r14,r5
	mov r13,r4
	add 0x04,r5
	mov 0x04,r6
	bsr loc_8c183654
	add 0x0A,r4
	mov 0x19,r0
	mov.b @(r0,r13),r0
	mov.b r0,@(0x8,r14)
	mov 0x20,r0
	mov.b @(r0,r13),r12
	mov.b @(0x8,r14),r0
	extu.b r0,r0
	tst 0x02,r0
	bf/s loc_8c1837a6
	extu.b r12,r12
	add 0xFE,r12

loc_8c1837A6:
	mov r14,r5
	mov r13,r4
	add 0x0A,r5
	mov r12,r6
	bsr loc_8c183654
	add 0x21,r4
	mov r14,r3
	add 0x0A,r3
	mov 0x00,r4
	add r3,r12
	mov.b r4,@r12
	mov.b @(0x8,r14),r0
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8c1837e0
	mov.b @(0xA,r14),r0
	tst r0,r0
	bf/s loc_8c1837d2
	mov 0x2E,r5
	mov r5,r0
	bra loc_8c1837e0
	mov.b r0,@(0xA,r14)

loc_8c1837D2:
	cmp/eq 0x01,r0
	bf loc_8c1837e0
	mov r5,r0
	mov.b r0,@(0xA,r14)
	mov.b r0,@(0xB,r14)
	mov r4,r0
	mov.b r0,@(0xC,r14)

loc_8c1837E0:
	mov r14,r4
	bsr loc_8c18373a
	add 0x0A,r4
	mov.b r0,@(0x9,r14)
	mov.b @r13,r0
	extu.b r0,r0

loc_8c1837EC:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1837F6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r6,r9
	mov r5,r3
	mov r6,r12
	mov.l r4,@(0x04,r15)
	mov.l r5,@r15
	mov r7,r11
	mov.l @(0x08,r9),r2
	cmp/eq r3,r2
	bt/s loc_8c1838B0
	add 0x10,r12
	mov.l @r15,r3
	mov 0x00,r14 ; r14 set to 0x00
	mov.w @(loc_8c183848,pc),r8 ; r8 set to 0x800
	mov.l r3,@(0x08,r9)
	mov.l @(0x04,r15),r3
	mov.l @(0x04,r9),r10
	add r8,r3
	bra loc_8c18388A
	mov.l r3,@(0x08,r15)

loc_8c18382E:
	mov.l @(0x1C,PC),r3
	mov 0x01,r5
	mov.l @(0x4,r15),r6
	jsr @r3
	mov.l @r15,r4
	mov r0,r4
	tst r4,r4
	bt loc_8c183850
	mov 0x00,r3
	mov.l r3,@(0x8,r9)
	bra loc_8c1838b2
	mov r4,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c183846:
	#data 0x00DA
loc_8c183848:
	#data 0x0800
	#align4

loc_8c18384C:
	#data bank17.loc_8c1757A4

;==============================================
loc_8c183850:
	cmp/ge r10,r14
	bt/s loc_8c18388e
	mov.l @(0x4,r15),r13

loc_8c183856:
	mov r12,r5
	bsr loc_8c183760
	mov r13,r4
	tst r0,r0
	bt/s loc_8c18387e
	mov r0,r4
	tst r14,r14
	bf loc_8c18386e
	mov.l @(0x4,r12),r2
	cmp/eq r11,r2
	bt loc_8c18386e
	mov.l @(0x4,r12),r11

loc_8c18386E:
	mov.l @(0x8,r15),r2
	add r4,r13
	add 0x2C,r12
	cmp/hs r2,r13
	bt/s loc_8c18387e
	add 0x01,r14
	cmp/ge r10,r14
	bf loc_8c183856

loc_8c18387E:
	cmp/ge r10,r14
	bt loc_8c18388e
	mov.l @r15,r2
	sub r8,r11
	add 0x01,r2
	mov.l r2,@r15

loc_8c18388a:
	cmp/pl r11
	bt loc_8c18382e

loc_8c18388e:
	cmp/eq r10,r14
	bf/s loc_8c1838b0
	mov.l r14,@r9
	tst r11,r11
	bt loc_8c1838b0
	cmp/eq r8,r11
	bf loc_8c1838a8
	mov.l @(0x08,r15),r2
	cmp/hs r2,r13
	bt loc_8c1838b0
	mov.b @r13,r1
	tst r1,r1
	bt loc_8c1838b0

loc_8c1838a8:
	mov 0x00,r2
	mov.l r2,@(0x08,r9) 
	bra loc_8c1838b2
	mov 0xF4,r0

loc_8c1838B0:
	mov 0x00,r0 ; r0 set to 0x00

loc_8c1838B2:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1838C6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r14
	add 0x10,r14
	mov r4,r12
	mov.l r6,@r15
	mov.l @r5,r11
	bsr loc_8c18373A
	mov r12,r4
	cmp/pl r11
	mov r0,r10
	bf/s loc_8c183924
	mov 0x00,r13 ; r13 set to 0x00

loc_8c1838EA:
	mov.b @(0x09,r14),r0
	extu.b r10,r3
	extu.b r0,r0
	cmp/eq r3,r0
	bf loc_8c18391C
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bf loc_8c18390A
	mov r14,r5
	add 0x0A,r5
	bsr loc_8c1836B8
	mov r12,r4
	cmp/eq 0x01,r0
	bt loc_8c183916
	bra loc_8c18391C
	nop

loc_8c18390A:
	mov r14,r5
	add 0x0A,r5
	bsr loc_8c1836DA
	mov r12,r4
	cmp/eq 0x01,r0
	bf loc_8c18391C

loc_8c183916:
	mov r13,r0
	bra loc_8c183926
	add 0x01,r0

loc_8c18391c:
	add 0x01,r13
	cmp/ge r11,r13
	bf/s loc_8c1838ea
	add 0x2C,r14

loc_8c183924:
	mov 0x00,r0 ; r0 set to 0x00

loc_8c183926:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c183936:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xE8,r15
	mov.w @(0x112,PC),r14
	mov r4,r9
	mov 0x00,r4
	mov r7,r12
	add r9,r14
	mov r4,r10
	mov 0x01,r8
	mov.l r5,@(0x8,r15)
	add 0x01,r12
	mov.l r6,@(0x10,r15)
	mov.l r8,@(0x14,r15)
	mov r8,r11
	mov.l r4,@(0xC,r15)
	mov.l r14,@r15

loc_8c183964:
	mov.l @r15,r2
	cmp/hs r2,r14
	bt/s loc_8c183982
	mov r14,r13
	mov.b @r13,r0
	mov.b @r13,r1
	extu.b r0,r0
	mov.l @r15,r3
	and 0x01,r0
	extu.b r1,r1
	add r0,r1
	add 0x08,r1
	add r14,r1
	cmp/hs r3,r1
	bf loc_8c1839ac

loc_8c183982:
	mov.w @(0xD8,PC),r3
	mov r9,r6
	sub r14,r6
	mov r9,r13
	add r3,r6
	sub r6,r13
	mov r13,r5
	bsr loc_8c183654
	mov r14,r4
	mov.l @(0xC8,PC),r3
	mov 0x01,r5
	mov r9,r6
	jsr @r3
	mov.l @(0x8,r15),r4
	mov r0,r4
	tst r4,r4
	bf loc_8c183a20
	mov.l @(0x8,r15),r2
	mov r13,r14
	add 0x01,r2
	mov.l r2,@(0x8,r15)

loc_8c1839ac:
	mov r15,r5
	mov r13,r4
	add 0x04,r5
	mov 0x02,r6
	bsr loc_8c183654
	add 0x06,r4
	mov.w @(0x4,r15),r0
	mov.l @(0x14,r15),r3
	extu.w r0,r0
	cmp/eq r3,r0
	bf loc_8c183a04
	mov r11,r0
	cmp/eq 0x01,r0
	bt loc_8c1839de
	mov.b @r13,r2
	extu.b r2,r2
	cmp/eq r10,r2
	bf loc_8c183a04
	mov r13,r4
	mov r12,r5
	mov r10,r6
	bsr loc_8c18366c
	add 0x08,r4
	tst r0,r0
	bt loc_8c183a04

loc_8c1839de:
	add r10,r12
	mov.l r11,@(0x14,r15)
	mov.b @r12,r3
	tst r3,r3
	bf loc_8c1839f4
	mov.l @(0x78,PC),r3
	mov r13,r4
	jsr @r3
	add 0x02,r4
	bra loc_8c183a22
	nop 

loc_8c1839f4:
	mov r11,r0
	cmp/eq 0x01,r0
	bt loc_8c1839fc
	add 0x01,r12

loc_8c1839fc:
	mov.l @(0x68,PC),r5
	bsr loc_8c183714
	mov r12,r4
	mov r0,r10

loc_8c183a04:
	mov.b @r13,r4
	add 0x01,r11
	mov.l @(0xC,r15),r3
	extu.b r4,r4
	mov r4,r5
	and r8,r5
	add r4,r5
	add 0x08,r5
	add r5,r3
	mov.l r3,@(0xC,r15)
	mov.l @(0x10,r15),r2
	cmp/ge r2,r3
	bf/s loc_8c183964
	add r5,r14

loc_8c183a20:
	mov 0x00,r0

loc_8c183a22:
	add 0x18,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c183A36:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xD8,r15
	mov 0x00,r9 ; r9 set to 0x00
	mov r7,r12
	mov 0x01,r8 ; r8 set to 0x01
	mov.l r4,@r15
	mov r8,r10 ; r10 set to 0x01
	mov 0x48,r0 ; r0 set to 0x48
	mov.l r5,@(0x10,r15)
	mov.l r6,@(0x20,r15)
	mov.l r9,@(0x04,r15)
	bra loc_8c183A72
	mov.l @(r0,r15),r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c183a5e:
	#data 0x0800
	#align4
loc_8c183A60:
	#data bank17.loc_8c1757A4
loc_8c183A64:
	#data bank17.loc_8c1754CC
loc_8c183A68:
	#data bank1c.loc_8c1c57EC

;==============================================
loc_8c183A6C:
	mov.l @(0x4,r15),r2
	add 0x01,r2
	mov.l r2,@(0x4,r15)

loc_8c183a72:
	mov.b @r4+,r3
	tst r3,r3
	bf loc_8c183a6c
	mov.w @(loc_8C183B3E,pc),r3
	add 0x01,r12
	mov r8,r11
	mov.l r8,@(0x24,r15) 
	mov.l r9,@(0x14,r15) 
	mov.l @r15,r14
	add r3,r14
	mov.l r14,@(0x08,r15) 
	mov.l r9,@(0x18,r15) 

loc_8c183a8a:
	mov.l @(0x08,r15),r3
	cmp/hs r3,r14
	bt/s loc_8c183aa8
	mov r14,r13
	mov.b @r13,r0
	mov.b @r13,r1
	extu.b r0,r0
	mov.l @(0x08,r15),r3
	and 0x01,r0 
	extu.b r1,r1
	add r0,r1
	add 0x08,r1
	add r14,r1
	cmp/hs r3,r1
	bf loc_8c183ad2

loc_8c183aa8:
	mov.l @r15,r6
	mov.w @(loc_8C183B3E,pc),r3
	mov.l @r15,r13
	sub r14,r6
	add r3,r6
	sub r6,r13
	mov r13,r5
	bsr loc_8c183654
	mov r14,r4
	mov.l @r15,r6
	mov 0x01,r5
	mov.l @(loc_8c183b40,pc),r14
	jsr @r14
	mov.l @(0x10,r15),r4
	mov r0,r4
	tst r4,r4
	bf loc_8c183b76
	mov.l @(0x10,r15),r3
	mov r13,r14
	add 0x01,r3
	mov.l r3,@(0x10,r15) 

loc_8c183ad2:
	mov r15,r5
	mov r13,r4
	add 0x0C,r5
	mov 0x02,r6
	bsr loc_8c183654
	add 0x06,r4
	mov.w @(0x0C,r15),r0 
	mov.l @(0x24,r15),r3
	extu.w r0,r0
	cmp/eq r3,r0
	bf loc_8c183b5a
	mov r11,r0
	cmp/eq 0x01,r0 
	bt loc_8c183b58
	mov r10,r0
	cmp/eq 0x01,r0 
	bf loc_8c183afe
	mov.l @(0x04,r15),r3
	mov 0x48,r0
	mov.l r3,@(0x1C,r15) 
	bra loc_8c183b04
	mov.l @(r0,r15),r5

loc_8c183afe:
	mov.l @(0x18,r15),r2
	mov r12,r5
	mov.l r2,@(0x1C,r15) 

loc_8c183b04:
	mov.b @r13,r3
	mov.l @(0x1C,r15),r2
	extu.b r3,r3
	cmp/eq r2,r3
	bf loc_8c183b5a
	mov.l @(0x1C,r15),r6
	mov r13,r4
	bsr loc_8c18366c
	add 0x08,r4
	tst r0,r0
	bt loc_8c183b5a
	tst r10,r10
	bf loc_8c183b22
	mov.l @(0x18,r15),r2
	add r2,r12

loc_8c183b22:
	mov.b @r12,r3
	tst r3,r3
	bf loc_8c183b34
	mov.l @(loc_8c183b44,pc),r14
	mov r13,r4
	jsr @r14
	add 0x02,r4
	bra loc_8c183b78
	nop 

loc_8c183b34:
	mov r10,r0
	cmp/eq 0x01,r0 
	bf loc_8c183b48
	bra loc_8c183b50
	mov r9,r10

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C183B3E:
	#data 0x0800
	#align4

loc_8c183b40:
	#data bank17.loc_8c1757a4
loc_8c183b44:
	#data bank17.loc_8c1754cc

;==============================================
loc_8c183b48:
	mov r11,r0
	cmp/eq 0x01,r0 
	bt loc_8c183b50
	add 0x01,r12

loc_8c183b50:
	mov.l @(loc_8c183b8c,pc),r5
	bsr loc_8c183714
	mov r12,r4
	mov.l r0,@(0x18,r15) 

loc_8c183b58:
	mov.l r11,@(0x24,r15) 

loc_8c183b5a:
	mov.b @r13,r5
	add 0x01,r11
	mov.l @(0x14,r15),r3
	extu.b r5,r5
	mov r5,r4
	and r8,r4
	add r5,r4
	add 0x08,r4
	add r4,r3
	mov.l r3,@(0x14,r15) 
	mov.l @(0x20,r15),r2
	cmp/ge r2,r3
	bf/s loc_8c183a8a
	add r4,r14

loc_8c183b76:
	mov 0x00,r0

loc_8c183b78:
	add 0x28,r15
	lds.l @r15+,pr 
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c183b8c:
	#data bank1c.loc_8c1c57ec

;==============================================
;unused?
loc_8c183b90:
	add 0x1F,r5
	shlr2 r5
	shlr2 r5
	shlr r5

loc_8c183b98:
	pref @r4
	dt r5
	bf/s loc_8c183b98
	add 0x20,r4
	rts 
	nop 

;==============================================
loc_8c183BA4:
	sts.l pr,@-r15
	add 0xF8,r15
	stc sr, r0
	mov.w @(loc_8c183C42,pc),r3 ; r3 set to 0xFF0F
	mov.l r4,@r15
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@(0x04,r15)
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	mov.l @(loc_8c183C48,pc),r2 ; r2 set to 0x8C184354
	jsr @r2
	nop
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov.l @(loc_8c183C4C,pc),r4 ; r4 set to 0xFF00001C
	mov.w @(loc_8c183C46,pc),r1 ; r1 set to 0x800
	mov.l r3,@r4 ; r4 ??? bc r3 is ???
	mov.l @r4,r2 ; r2 ??? bc r4 is ???
	mov.w @(loc_8c183C44,pc),r3 ; r3 set to 0xF7FF
	and r3,r2
	or r1,r2
	mov.w @(loc_8c183C42,pc),r1 ; r1 set to 0xFF0F
	mov.l r2,@r4
	mov 0xF7,r2 ; r2 set to 0xFFFFFFF7
	mov.l @r4,r0
	stc sr, r3
	and r2,r0
	or 0x08,r0
	mov.l r0,@r4
	and r1,r3 ; r3 ??
	mov.w @(0x04,r15),r0
	and 0x0F,r0
	shll2 r0
	shll2 r0
	or r3,r0
	ldc r0, sr
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
;unused?
loc_8c183bfa:
	mov.l @(0x50,PC),r3
	mov.w @(0x46,PC),r2
	mov.l @r3,r0
	or r2,r0
	rts 
	mov.l r0,@r3

;==============================================
;unused?
loc_8c183c06:
	mov.l @(0x44,PC),r3
	mov.l @r3,r0
	or 0x08,r0
	rts 
	mov.l r0,@r3

;==============================================
loc_8c183C10:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	add 0xF8,r15
	mov r5,r13
	tst r13,r13
	bf/s loc_8c183C26
	mov r4,r12
	mov.l @(loc_8c183C50,pc),r3 ; r3 set to 0x8C183E64
	jmp @r3
	nop

loc_8c183C26:
	mov.l @(loc_8c183C58,pc),r2 ; r2 set to 0x30000
	mov.l @(loc_8c183C54,pc),r14 ; r14 set to 0x9FFFFFE0
	cmp/hs r2,r13
	bf/s loc_8c183C36
	and r12,r14 ; r14 ??? bc r12 is ???
	mov.l @(loc_8c183C5C,pc),r3 ; r3 set to 0x8C183C76
	jmp @r3
	nop

loc_8c183C36:
	mov 0x1F,r5 ; r5 set to 0x1F
	mov r14,r4
	and r12,r5 ; r5 ??? bc r12 is ???
	add r13,r5
	bra loc_8c183C60
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c183C42:
	#data 0xFF0F
loc_8c183C44:
	#data 0xF7FF
loc_8c183C46:
	#data 0x0800
	#align4

loc_8c183C48:
	#data loc_8c184354
loc_8c183C4C:
	#data 0xFF00001C
loc_8c183C50:
	#data loc_8c183E64
loc_8c183C54:
	#data 0x9FFFFFE0
loc_8c183C58:
	#data 0x00030000
loc_8c183C5C:
	#data loc_8c183C76

;==============================================
loc_8c183C60:
	add 0x1F,r5
	shlr2 r5
	shlr2 r5
	shlr r5

loc_8c183C68:
	ocbi @r4
	dt r5
	bf/s loc_8c183C68
	add 0x20,r4
	mov.l @(loc_8c183C90,pc),r2 ; r2 set to 0x8C183E64, r2 set to 0x8C183E64
	jmp @r2
	nop

loc_8c183C76:
	stc sr, r0
	mov.w @(loc_8c183C8E,pc),r3 ; r3 set to 0xFF0F
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@r15
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	bra loc_8c183C94
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c183C8E:
	#data 0xFF0F
	#align4

loc_8c183C90:
	#data loc_8c183E64

;==============================================
loc_8c183C94:
	mova @(loc_8c183CA4,pc),r0  ; r0 init to 0x8C183CA4
	mov.l @(loc_8c183CA0,pc),r1 ; r1 set to 0xA0000000
	or r0,r1 ; r1 ??
	jmp @r1
	nop

;==============================================
	#align16_nop
loc_8c183CA0:
	#data 0xA0000000

;==============================================
loc_8c183CA4:
	mov.l @(0x2C,PC),r2
	add r13,r12
	mov 0xF9,r1
	mov.l @(0x24,PC),r3
	mov.l @r2,r4
	mov 0x01,r5
	add 0xFF,r12
	mov r4,r13
	shlr2 r13
	shld r1,r4
	shlr2 r13
	and r5,r4
	shlr r13
	mov.l r4,@(0x4,r15)
	and r3,r12
	mov r14,r4
	and r5,r13
	mov r12,r5
	mov r13,r6
	bra loc_8c183cd8
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c183cd0:
	#data 0x1FFFFFE0
loc_8c183cd4:
	#data 0xFF00001C

;==============================================
loc_8c183cd8:
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(0x18,PC),r0
	mov.l @(0x18,PC),r8
	mov.l @(0x1C,PC),r9
	mov.l @(0x1C,PC),r10
	mov.l @(0x20,PC),r2
	mov.l @(0x20,PC),r3
	mov.l @(0x24,PC),r7
	and r4,r7
	not r7,r7
	and r7,r4
	not r7,r7
	bra loc_8c183d34
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x0000
	#align4

loc_8c183cfc:
	#data 0xF4000000
loc_8c183d00:
	#data 0x1FFFFC00
loc_8c183d04:
	#data 0x00001FFF
loc_8c183d08:
	#data 0x00002000
loc_8c183d0c:
	#data 0x00000FE0
loc_8c183d10:
	#data 0x80000000

;==============================================
;unused?
loc_8c183d14:
	mov r0,r1
	or r8,r1
	mov.l @r1,r1
	and r9,r1
	or r0,r1
	cmp/hi r1,r4
	bt loc_8c183d2a
	cmp/hi r5,r1
	bt loc_8c183d2a
	or r7,r1
	ocbi @r1

loc_8c183d2a:
	tst r6,r6
	bt loc_8c183d32
	cmp/eq r0,r3
	bt loc_8c183d38

loc_8c183d32:
	add 0x20,r0

loc_8c183d34:
	cmp/hi r0,r2
	bt loc_8c183d14

loc_8c183d38:
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	nop 
	mov.l @(0x4,r15),r3
	tst r3,r3
	bf loc_8c183d4c
	mov.l @(0x10,PC),r3
	jmp @r3
	nop 

loc_8c183d4c:
	mov r14,r4
	mov r12,r5
	mov r13,r6
	bra loc_8c183d5c
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c183D58:
	#data loc_8c183DD6

;==============================================
;unused?
loc_8c183d5c:
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(0x18,PC),r0
	mov.l @(0x1C,PC),r8
	mov.l @(0x1C,PC),r9
	mov.l @(0x20,PC),r10
	mov.l @(0x20,PC),r2
	mov.l @(0x24,PC),r3
	mov.l @(0x24,PC),r7
	and r4,r7
	not r7,r7
	and r7,r4
	not r7,r7
	bra loc_8c183dc4
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c183d80:
	#data 0x00002000
loc_8c183d84:
	#data 0xF4000000
loc_8c183d88:
	#data 0x1FFFFC00
loc_8c183d8c:
	#data 0x00001FFF
loc_8c183d90:
	#data 0x00004000
loc_8c183d94:
	#data 0x00002FE0
loc_8c183d98:
	#data 0x80000000

;==============================================
;unused?
loc_8c183d9c:
	mov r0,r1
	or r8,r1
	mov.l @r1,r1
	and r9,r1
	or r0,r1
	mov r0,r11
	and r10,r11
	or r11,r1
	or r12,r1
	cmp/hi r1,r4
	bt loc_8c183dba
	cmp/hi r5,r1
	bt loc_8c183dba
	or r7,r1
	ocbi @r1

loc_8c183dba:
	tst r6,r6
	bt loc_8c183dc2
	cmp/eq r0,r3
	bt loc_8c183dc8

loc_8c183dc2:
	add 0x20,r0

loc_8c183dc4:
	cmp/hi r0,r2
	bt loc_8c183d9c

loc_8c183dc8:
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @(0xC,PC),r2
	jmp @r2
	nop 

;==============================================
loc_8c183DD6:
	mov r14,r4
	mov r12,r5
	mov r13,r6
	bra loc_8c183DE4
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c183DE0:
	#data loc_8c183E50

;==============================================
loc_8c183DE4:
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(loc_8c183E08,pc),r0 ; r0 set to 0x2000
	mov.l @(loc_8c183E0C,pc),r8 ; r8 set to 0xF4000000
	mov.l @(loc_8c183E10,pc),r9 ; r9 set to 0x1FFFFC00
	mov.l @(loc_8c183E14,pc),r10 ; r10 set to 0x1FFF
	mov.l @(loc_8c183E18,pc),r2 ; r2 set to 0x4000
	mov.l @(loc_8c183E1C,pc),r3 ; r3 set to 0x2FE0
	mov.l @(loc_8c183E20,pc),r7 ; r7 set to 0x80000000
	and r4,r7 ; r7 ??? bc r4 is ???
	not r7,r7
	and r7,r4
	not r7,r7
	bra loc_8c183E44
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c183E08:
	#data 0x00002000
loc_8c183E0C:
	#data 0xF4000000
loc_8c183E10:
	#data 0x1FFFFC00
loc_8c183E14:
	#data 0x00001FFF
loc_8c183E18:
	#data 0x00004000
loc_8c183E1C:
	#data 0x00002FE0
loc_8c183E20:
	#data 0x80000000

;==============================================
loc_8c183E24:
	mov r0,r1
	or r8,r1
	mov.l @r1,r1
	and r9,r1
	or r0,r1
	cmp/hi r1,r4
	bt loc_8c183e3a
	cmp/hi r5,r1
	bt loc_8c183e3a
	or r7,r1
	ocbi @r1

loc_8c183E3A:
	tst r6,r6
	bt loc_8c183e42
	cmp/eq r0,r3
	bt loc_8c183e48

loc_8c183e42:
	add 0x20,r0

loc_8c183e44:
	cmp/hi r0,r2
	bt loc_8c183e24

loc_8c183e48:
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11

loc_8c183e50:
	mov.w @r15,r0
	stc sr, r3
	extu.w r0,r0
	mov.w @(loc_8C183EA0,pc),r2
	and 0x0F,r0 
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0, sr 

loc_8c183E64:
	add 0x08,r15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c183E6E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	add 0xF8,r15
	mov r5,r13
	tst r13,r13
	bf/s loc_8c183E84
	mov r4,r12
	mov.l @(loc_8c183EA4,pc),r3 ; r3 set to 0x8C1840B8
	jmp @r3
	nop

loc_8c183E84:
	mov.l @(loc_8c183EAC,pc),r2 ; r2 set to 0x10000
	mov.l @(loc_8c183EA8,pc),r14 ; r14 set to 0x9FFFFFE0
	cmp/hs r2,r13
	bf/s loc_8c183E94
	and r12,r14 ; r14 ??? bc r12 is ???
	mov.l @(loc_8c183EB0,pc),r3 ; r3 set to 0x8C183ECA
	jmp @r3
	nop

loc_8c183E94:
	mov 0x1F,r5 ; r5 set to 0x1F
	mov r14,r4
	and r12,r5 ; r5 ??? bc r12 is ???
	add r13,r5
	bra loc_8c183EB4
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c183ea0:
	#data 0xFF0F
	#align4

loc_8c183EA4:
	#data loc_8c1840B8
loc_8c183EA8:
	#data 0x9FFFFFE0
loc_8c183EAC:
	#data 0x00010000
loc_8c183EB0:
	#data loc_8c183ECA

;==============================================
loc_8c183EB4:
	add 0x1F,r5
	shlr2 r5
	shlr2 r5
	shlr r5

loc_8c183EBC:
	ocbp @r4
	dt r5
	bf/s loc_8c183EBC
	add 0x20,r4
	mov.l @(loc_8c183EE4,pc),r2 ; r2 set to 0x8C1840B8, r2 set to 0x8C1840B8
	jmp @r2
	nop

loc_8c183ECA:
	stc sr, r0
	mov.w @(loc_8c183EE2,pc),r3 ; r3 set to 0xFF0F
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@r15
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	bra loc_8c183EE8
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c183EE2:
	#data 0xFF0F
	#align4

loc_8c183EE4:
	#data loc_8c1840B8

;==============================================
loc_8c183EE8:
	mova @(loc_8c183EF8,pc),r0  ; r0 init to 0x8C183EF8
	mov.l @(loc_8c183EF4,pc),r1 ; r1 set to 0xA0000000
	or r0,r1 ; r1 ??
	jmp @r1
	nop

;==============================================
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c183EF4:
	#data 0xA0000000

;===============================================
loc_8c183EF8:
	mov.l @(0x2C,PC),r2
	add r13,r12
	mov 0xF9,r1
	mov.l @(0x24,PC),r3
	mov.l @r2,r4
	mov 0x01,r5
	add 0xFF,r12
	mov r4,r13
	shlr2 r13
	shld r1,r4
	shlr2 r13
	and r5,r4
	shlr r13
	mov.l r4,@(0x4,r15)
	and r3,r12
	mov r14,r4
	and r5,r13
	mov r12,r5
	mov r13,r6
	bra loc_8c183f2c
	nop 
	
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c183f24:
	#data 0x1FFFFFE0
loc_8c183f28:
	#data 0xFF00001C

;==============================================
;unused
loc_8c183f2c:
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(0x18,PC),r0
	mov.l @(0x18,PC),r8
	mov.l @(0x1C,PC),r9
	mov.l @(0x1C,PC),r10
	mov.l @(0x20,PC),r2
	mov.l @(0x20,PC),r3
	mov.l @(0x24,PC),r7
	and r4,r7
	not r7,r7
	and r7,r4
	not r7,r7
	bra loc_8c183f88
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x0000
	#align4
loc_8c183f50:
	#data 0xF4000000
loc_8c183f54:
	#data 0x1FFFFC00
loc_8c183f58:
	#data 0x00001FFF
loc_8c183f5c:
	#data 0x00002000
loc_8c183f60:
	#data 0x00000FE0
loc_8c183f64:
	#data 0x80000000

;==============================================
;unused
loc_8c183f68:
	mov r0,r1
	or r8,r1
	mov.l @r1,r1
	and r9,r1
	or r0,r1
	cmp/hi r1,r4
	bt loc_8c183f7e
	cmp/hi r5,r1
	bt loc_8c183f7e
	or r7,r1
	ocbp @r1

loc_8c183f7e:
	tst r6,r6
	bt loc_8c183f86
	cmp/eq r0,r3
	bt loc_8c183f8c

loc_8c183f86:
	add 0x20,r0

loc_8c183f88:
	cmp/hi r0,r2
	bt loc_8c183f68

loc_8c183f8c:
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	nop 
	mov.l @(0x4,r15),r3
	tst r3,r3
	bf loc_8c183fa0
	mov.l @(0x10,PC),r3
	jmp @r3
	nop 

loc_8c183fa0:
	mov r14,r4
	mov r12,r5
	mov r13,r6
	bra loc_8c183fb0
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c183FAC:
	#data loc_8c18402A

;==============================================
;unused
loc_8c183fb0:
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(0x18,PC),r0
	mov.l @(0x1C,PC),r8
	mov.l @(0x1C,PC),r9
	mov.l @(0x20,PC),r10
	mov.l @(0x20,PC),r2
	mov.l @(0x24,PC),r3
	mov.l @(0x24,PC),r7
	and r4,r7
	not r7,r7
	and r7,r4
	not r7,r7
	bra loc_8c184018
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c183fd4:
	#data 0x00002000
loc_8c183fd8:
	#data 0xF4000000
loc_8c183fdc:
	#data 0x1FFFFC00
loc_8c183fe0:
	#data 0x00001FFF
loc_8c183fe4:
	#data 0x00004000
loc_8c183fe8:
	#data 0x00002FE0
loc_8c183fec:
	#data 0x80000000

;==============================================
;unused?
loc_8c183ff0:
	mov r0,r1
	or r8,r1
	mov.l @r1,r1
	and r9,r1
	or r0,r1
	mov r0,r11
	and r10,r11
	or r11,r1
	or r12,r1
	cmp/hi r1,r4
	bt loc_8c18400e
	cmp/hi r5,r1
	bt loc_8c18400e
	or r7,r1
	ocbp @r1

loc_8c18400e:
	tst r6,r6
	bt loc_8c184016
	cmp/eq r0,r3
	bt loc_8c18401c

loc_8c184016:
	add 0x20,r0

loc_8c184018:
	cmp/hi r0,r2
	bt loc_8c183ff0

loc_8c18401c:
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @(0xC,PC),r2
	jmp @r2
	nop 

;==============================================
loc_8c18402A:
	mov r14,r4
	mov r12,r5
	mov r13,r6
	bra loc_8c184038
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c184034:
	#data loc_8c1840A4

;==============================================
loc_8c184038:
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(loc_8c18405C,pc),r0 ; r0 set to 0x2000
	mov.l @(loc_8c184060,pc),r8 ; r8 set to 0xF4000000
	mov.l @(loc_8c184064,pc),r9 ; r9 set to 0x1FFFFC00
	mov.l @(loc_8c184068,pc),r10 ; r10 set to 0x1FFF
	mov.l @(loc_8c18406C,pc),r2 ; r2 set to 0x4000
	mov.l @(loc_8c184070,pc),r3 ; r3 set to 0x2FE0
	mov.l @(loc_8c184074,pc),r7 ; r7 set to 0x80000000
	and r4,r7 ; r7 ??? bc r4 is ???
	not r7,r7
	and r7,r4
	not r7,r7
	bra loc_8c184098
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c18405C:
	#data 0x00002000
loc_8c184060:
	#data 0xF4000000
loc_8c184064:
	#data 0x1FFFFC00
loc_8c184068:
	#data 0x00001FFF
loc_8c18406C:
	#data 0x00004000
loc_8c184070:
	#data 0x00002FE0
loc_8c184074:
	#data 0x80000000

;==============================================
loc_8c184078:
	mov r0,r1
	or r8,r1
	mov.l @r1,r1
	and r9,r1
	or r0,r1
	cmp/hi r1,r4
	bt loc_8c18408e
	cmp/hi r5,r1
	bt loc_8c18408e
	or r7,r1
	ocbp @r1

loc_8c18408E:
	tst r6,r6
	bt loc_8c184096
	cmp/eq r0,r3
	bt loc_8c18409c

loc_8c184096:
	add 0x20,r0

loc_8c184098:
	cmp/hi r0,r2
	bt loc_8c184078

loc_8c18409c:
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11

loc_8c1840a4:
	mov.w @r15,r0
	stc sr, r3
	extu.w r0,r0
	mov.w @(loc_8C1840F4,pc),r2
	and 0x0F,r0 
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0, sr 

loc_8c1840B8:
	add 0x08,r15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1840C2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	add 0xF8,r15
	mov r5,r13
	tst r13,r13
	bf/s loc_8c1840D8
	mov r4,r12
	mov.l @(loc_8c1840F8,pc),r3 ; r3 set to 0x8C18430C
	jmp @r3
	nop

loc_8c1840D8:
	mov.l @(loc_8c184100,pc),r2 ; r2 set to 0x10000
	mov.l @(loc_8c1840FC,pc),r14 ; r14 set to 0x9FFFFFE0
	cmp/hs r2,r13
	bf/s loc_8c1840E8
	and r12,r14 ; r14 ??? bc r12 is ???
	mov.l @(loc_8c184104,pc),r3 ; r3 set to 0x8C18411E
	jmp @r3
	nop

loc_8c1840E8:
	mov 0x1F,r5 ; r5 set to 0x1F
	mov r14,r4
	and r12,r5 ; r5 ??? bc r12 is ???
	add r13,r5
	bra loc_8c184108
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1840f4:
	#data 0xFF0F
	#align4

loc_8c1840F8:
	#data loc_8c18430C
loc_8c1840FC:
	#data 0x9FFFFFE0
loc_8c184100:
	#data 0x00010000
loc_8c184104:
	#data loc_8c18411E

;==============================================
loc_8c184108:
	add 0x1F,r5
	shlr2 r5
	shlr2 r5
	shlr r5

loc_8c184110:
	ocbwb @r4
	dt r5
	bf/s loc_8c184110
	add 0x20,r4
	mov.l @(loc_8c184138,pc),r2 ; r2 set to 0x8C18430C, r2 set to 0x8C18430C
	jmp @r2
	nop

loc_8c18411E:
	stc sr, r0
	mov.w @(loc_8c184136,pc),r3 ; r3 set to 0xFF0F
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@r15
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	bra loc_8c18413C
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c184136:
	#data 0xFF0F
	#align4

loc_8c184138:
	#data loc_8c18430C

;==============================================
loc_8c18413C:
	mova @(loc_8c18414C,pc),r0  ; r0 init to 0x8C18414C
	mov.l @(loc_8c184148,pc),r1 ; r1 set to 0xA0000000
	or r0,r1 ; r1 ??
	jmp @r1
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	nop
	#align4
loc_8c184148:
	#data 0xA0000000

;==============================================
loc_8c18414C:
	mov.l @(0x2C,PC),r2
	add r13,r12
	mov 0xF9,r1
	mov.l @(0x24,PC),r3
	mov.l @r2,r4
	mov 0x01,r5
	add 0xFF,r12
	mov r4,r13
	shlr2 r13
	shld r1,r4
	shlr2 r13
	and r5,r4
	shlr r13
	mov.l r4,@(0x4,r15)
	and r3,r12
	mov r14,r4
	and r5,r13
	mov r12,r5
	mov r13,r6
	bra loc_8c184180
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c184178:
	#data 0x1FFFFFE0
loc_8c18417c:
	#data 0xFF00001C

;==============================================
loc_8c184180:
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(0x18,PC),r0
	mov.l @(0x18,PC),r8
	mov.l @(0x1C,PC),r9
	mov.l @(0x1C,PC),r10
	mov.l @(0x20,PC),r2
	mov.l @(0x20,PC),r3
	mov.l @(0x24,PC),r7
	and r4,r7
	not r7,r7
	and r7,r4
	not r7,r7
	bra loc_8c1841dc
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x0000
	#align4

loc_8c1841a4:
	#data 0xF4000000
loc_8c1841a8:
	#data 0x1FFFFC00
loc_8c1841ac:
	#data 0x00001FFF
loc_8c1841b0:
	#data 0x00002000
loc_8c1841b4:
	#data 0x00000FE0
loc_8c1841b8:
	#data 0x80000000

;==============================================
loc_8c1841bc:
	mov r0,r1
	or r8,r1
	mov.l @r1,r1
	and r9,r1
	or r0,r1
	cmp/hi r1,r4
	bt loc_8c1841d2
	cmp/hi r5,r1
	bt loc_8c1841d2
	or r7,r1
	ocbwb @r1

loc_8c1841d2:
	tst r6,r6
	bt loc_8c1841da
	cmp/eq r0,r3
	bt loc_8c1841e0

loc_8c1841da:
	add 0x20,r0

loc_8c1841dc:
	cmp/hi r0,r2
	bt loc_8c1841bc

loc_8c1841e0:
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	nop 
	mov.l @(0x4,r15),r3
	tst r3,r3
	bf loc_8c1841f4
	mov.l @(0x10,PC),r3
	jmp @r3
	nop 

loc_8c1841f4:
	mov r14,r4
	mov r12,r5
	mov r13,r6
	bra loc_8c184204
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c184200:
	#data loc_8c18427E

;==============================================
loc_8c184204:
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(0x18,PC),r0
	mov.l @(0x1C,PC),r8
	mov.l @(0x1C,PC),r9
	mov.l @(0x20,PC),r10
	mov.l @(0x20,PC),r2
	mov.l @(0x24,PC),r3
	mov.l @(0x24,PC),r7
	and r4,r7
	not r7,r7
	and r7,r4
	not r7,r7
	bra loc_8c18426c
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c184228:
	#data 0x00002000
loc_8c18422c:
	#data 0xF4000000
loc_8c184230:
	#data 0x1FFFFC00
loc_8c184234:
	#data 0x00001FFF
loc_8c184238:
	#data 0x00004000
loc_8c18423c:
	#data 0x00002FE0
loc_8c184240:
	#data 0x80000000

;==============================================
loc_8c184244:
	mov r0,r1
	or r8,r1
	mov.l @r1,r1
	and r9,r1
	or r0,r1
	mov r0,r11
	and r10,r11
	or r11,r1
	or r12,r1
	cmp/hi r1,r4
	bt loc_8c184262
	cmp/hi r5,r1
	bt loc_8c184262
	or r7,r1
	ocbwb @r1

loc_8c184262:
	tst r6,r6
	bt loc_8c18426a
	cmp/eq r0,r3
	bt loc_8c184270

loc_8c18426a:
	add 0x20,r0

loc_8c18426c:
	cmp/hi r0,r2
	bt loc_8c184244

loc_8c184270:
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @(0xC,PC),r2
	jmp @r2
	nop 

;==============================================
loc_8c18427E:
	mov r14,r4
	mov r12,r5
	mov r13,r6
	bra loc_8c18428C
	nop


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c184288:
	#data loc_8c1842F8

;==============================================
loc_8c18428C:
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(loc_8c1842B0,pc),r0 ; r0 set to 0x2000
	mov.l @(loc_8c1842B4,pc),r8 ; r8 set to 0xF4000000
	mov.l @(loc_8c1842B8,pc),r9 ; r9 set to 0x1FFFFC00
	mov.l @(loc_8c1842BC,pc),r10 ; r10 set to 0x1FFF
	mov.l @(loc_8c1842C0,pc),r2 ; r2 set to 0x4000
	mov.l @(loc_8c1842C4,pc),r3 ; r3 set to 0x2FE0
	mov.l @(loc_8c1842C8,pc),r7 ; r7 set to 0x80000000
	and r4,r7 ; r7 ??? bc r4 is ???
	not r7,r7
	and r7,r4
	not r7,r7
	bra loc_8c1842EC
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c1842B0:
	#data 0x00002000
loc_8c1842B4:
	#data 0xF4000000
loc_8c1842B8:
	#data 0x1FFFFC00
loc_8c1842BC:
	#data 0x00001FFF
loc_8c1842C0:
	#data 0x00004000
loc_8c1842C4:
	#data 0x00002FE0
loc_8c1842C8:
	#data 0x80000000

;==============================================
loc_8c1842CC:
	mov r0,r1
	or r8,r1
	mov.l @r1,r1
	and r9,r1
	or r0,r1
	cmp/hi r1,r4
	bt loc_8c1842e2
	cmp/hi r5,r1
	bt loc_8c1842e2
	or r7,r1
	ocbwb @r1

loc_8c1842e2:
	tst r6,r6
	bt loc_8c1842ea
	cmp/eq r0,r3
	bt loc_8c1842f0

loc_8c1842ea:
	add 0x20,r0

loc_8c1842ec:
	cmp/hi r0,r2
	bt loc_8c1842cc

loc_8c1842f0:
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11

loc_8c1842f8:
	mov.w @r15,r0
	stc sr, r3
	extu.w r0,r0
	mov.w @(loc_8C18432C,pc),r2
	and 0x0F,r0 
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0, sr 

loc_8c18430C:
	add 0x08,r15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c184316:
	add 0xF8,r15
	mov.l r4,@r15
	mov.l @(0x14,PC),r3
	mov.l r5,@(0x4,r15)
	mov.l @r15,r0
	mov.l @r15,r4
	and 0x1F,r0
	and r3,r4
	add r0,r5
	bra loc_8c184334
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18432c:
	#data 0xFF0F
	#align4

loc_8c184330:
	#data 0x9FFFFFE0

;==============================================
loc_8c184334:
	add 0x1F,r5
	shlr2 r5
	shlr2 r5
	shlr r5

loc_8c18433c:
	pref @r4
	dt r5
	bf/s loc_8c18433c
	add 0x20,r4
	rts 
	add 0x08,r15

;==============================================
loc_8c184348:
	mov r5,r0
	movca.l r0,@r4
	rts
	nop

;==============================================
loc_8c184350:
	rts
	nop

;==============================================
loc_8c184354:
	add 0xFC,r15
	stc sr, r0
	mov.w @(loc_8c18436E,pc),r3 ; r3 set to 0xFF0F
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@r15
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	bra loc_8c184370
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18436E:
	#data 0xFF0F

;==============================================
loc_8c184370:
	mova @(loc_8c184380,pc),r0  ; r0 init to 0x8C184380
	mov.l @(loc_8c18437C,pc),r1 ; r1 set to 0xA0000000
	or r0,r1 ; r1 ??
	jmp @r1
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	nop
	#align4

loc_8c18437C:
	#data 0xA0000000

;==============================================
loc_8c184380:
	mov.l @(0x54,PC),r2
	mov.l @(0x50,PC),r5
	mov.l @r2,r0
	shlr2 r0
	shlr2 r0
	shlr r0
	and 0x01,r0
	cmp/eq 0x01,r0
	bf/s loc_8c1843b8
	mov 0x00,r4
	mov.w @(0x34,PC),r7
	mov r4,r6

loc_8c184398:
	mov r6,r2
	add 0x20,r6
	cmp/hs r7,r6
	or r5,r2
	bf/s loc_8c184398
	mov.l r4,@r2
	mov.w @(0x28,PC),r6
	mov.w @(0x24,PC),r7

loc_8c1843a8:
	mov r6,r2
	add 0x20,r6
	cmp/hs r7,r6
	or r5,r2
	bf/s loc_8c1843a8
	mov.l r4,@r2
	bra loc_8c1843c8
	nop 

loc_8c1843b8:
	mov.w @(0x16,PC),r7
	mov r4,r6

loc_8c1843bc:
	mov r6,r3
	add 0x20,r6
	cmp/hs r7,r6
	or r5,r3
	bf/s loc_8c1843bc
	mov.l r4,@r3

loc_8c1843c8:
	bra loc_8c1843dc
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1843cc:
	#data 0x1000
loc_8c1843ce:
	#data 0x3000
loc_8c1843d0:
	#data 0x2000
loc_8c1843d2:
	#data 0x4000
	#align4

loc_8c1843d4:
	#data 0xF4000000
loc_8c1843d8:
	#data 0xFF00001C

;==============================================
loc_8c1843dc:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c1843ec:
	mov.w @r15,r0
	stc sr,r3
	extu.w r0,r0
	mov.w @(0x7C,PC),r2
	and 0x0F,r0
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0,sr
	rts 
	add 0x04,r15

;==============================================
loc_8c184404:
	mov.l @(0x74,PC),r7
	mov.l @(0x70,PC),r1
	bra loc_8c18441a
	mov.l @r7,r6

loc_8c18440c:
	mov r6,r3
	shll8 r3
	mov r6,r0
	shll2 r3
	shll r0
	add 0x01,r6
	mov.w r3,@(r0,r1)

loc_8c18441a:
	mov.l @r7,r2
	add r5,r2
	cmp/hs r2,r6
	bt loc_8c184428
	mov 0x08,r2
	cmp/hs r2,r6
	bf loc_8c18440c

loc_8c184428:
	mov r6,r0
	cmp/eq 0x08,r0
	bt loc_8c184440
	mov.l @r7,r2
	mov.l @(0x4C,PC),r3
	shll8 r2
	shll2 r2
	or r3,r2
	mov.l r2,@r4
	mov.l @r7,r1
	add r5,r1
	mov.l r1,@r7

loc_8c184440:
	rts 
	nop 

;==============================================
loc_8c184444:
	mov.l @(0x34,PC),r6
	mov.l @(0x30,PC),r7
	mov.l @r6,r5
	mov.w @(0x26,PC),r3
	shll r5
	and r3,r4
	add r7,r5
	cmp/hi r7,r5
	shlr8 r4
	bf/s loc_8c18446e
	shlr2 r4

loc_8c18445a:
	mov.w @r5,r3

loc_8c18445c:
	extu.w r3,r3
	cmp/eq r4,r3
	bf/s loc_8c18446a
	add 0xFE,r5
	mov.l @r6,r3
	add 0xFF,r3
	mov.l r3,@r6

loc_8c18446a:
	cmp/hi r7,r5
	bt loc_8c18445a

loc_8c18446e:
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c184472:
	#data 0xFF0F
loc_8c184474:
	#data 0x1FFF
	#align4

loc_8c184478:
	#data 0x8C3387EC
loc_8c18447c:
	#data 0x8C3387E8
loc_8c184480:
	#data 0x7C000000

;==============================================
loc_8c184484:
	add 0xFC,r15
	stc sr,r0
	mov.w @(0xF8,PC),r3
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@r15
	stc sr,r0
	and r3,r0
	or 0xF0,r0
	ldc r0,sr
	mov.w @(0xE8,PC),r6
	mov 0x00,r5
	mov.l @(0xF4,PC),r7
	add r7,r6
	mov r7,r4

loc_8c1844a4:
	mov.l r5,@(0xC,r4)
	add 0x10,r4
	cmp/hs r6,r4
	bf loc_8c1844a4
	mov.w @(0xD8,PC),r6
	mov.l @(0xE8,PC),r7
	add r7,r6
	mov r7,r4

loc_8c1844b4:
	mov.l r5,@r4
	add 0x04,r4
	cmp/hs r6,r4
	bf loc_8c1844b4
	mov.w @r15,r0
	stc sr,r3
	extu.w r0,r0
	mov.w @(0xBE,PC),r2
	and 0x0F,r0
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0,sr
	rts 
	add 0x04,r15

;==============================================
loc_8c1844D4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r0
	mov.w r0,@(0x04,r15)
	stc sr, r0
	mov.w @(loc_8c184584,pc),r3 ; r3 set to 0xFF0F
	mov r7,r8
	mov.l r5,@r15
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@(0x08,r15)
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	mov.w @(0x04,r15),r0
	mov 0xFC,r3 ; r3 set to 0xFFFFFFFC
	mov.l @(loc_8c184598,pc),r9 ; r9 set to 0x8C3397FC
	mov r6,r11
	mov r0,r13
	mov r13,r0
	shad r3, r0
	mov.l @(loc_8c18459C,pc),r7 ; r7 set to 0x80000000
	shll2 r0
	mov.l @(r0,r9),r4
	mov r4,r5
	bra loc_8c184520
	or r7,r11

loc_8c18451C:
	mov r4,r5
	mov.l @(0x4,r4),r4

loc_8c184520:
	tst r4,r4
	bt loc_8c18452a
	mov.l @(0x0C,r4),r2
	cmp/hs r11,r2
	bf loc_8c18451c

loc_8c18452a:
	mov.l @(loc_8C184594,pc),r10
	mov 0x01,r12
	mov.w @(loc_8C18458A,pc),r6
	mov r12,r14

loc_8c184532:
	mov r14,r2
	shll2 r2
	shll2 r2
	add r10,r2
	mov.l @(0x0C,r2),r3
	tst r7,r3
	bt loc_8c184546
	add 0x01,r14
	cmp/hs r6,r14
	bf loc_8c184532

loc_8c184546:
	cmp/hs r6,r14
	bf loc_8c18454e
	bra loc_8c184656
	nop 

loc_8c18454e:
	tst r4,r4
	bf loc_8c184622
	tst r5,r5
	bf loc_8c184622
	mov.w @(loc_8C18458C,pc),r4
	cmp/ge r4,r13
	bt loc_8c184574
	mov.w @(loc_8C18458E,pc),r3
	stc vbr, r2
	add r13,r3
	mov.w @(loc_8C184590,pc),r0
	shar r3
	shar r3
	shar r3
	add r3,r2
	mov.l @(loc_8c1845a0,pc),r3
	mov.l r3,@(r0,r2) 
	bra loc_8c1845c6
	nop 

loc_8c184574:
	cmp/eq r4,r13
	bf loc_8c1845ac
	mov.l @(loc_8c1845a8,pc),r2
	mov.l @(loc_8c1845a4,pc),r4
	jsr @r2
	mov 0x00,r5
	bra loc_8c1845c6
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c184584:
	#data 0xFF0F
loc_8c184586:
	#data 0x1000
loc_8c184588:
	#data 0x0300
loc_8C18458A:
	#data 0x0100
loc_8C18458C:
	#data 0x0900
loc_8C18458E:
	#data 0xFE00
loc_8C184590:
	#data 0x0200
	#align4

loc_8C184594:
	#data 0x8C3387FC
loc_8c184598:
	#data 0x8C3397FC
loc_8c18459c:
	#data 0x80000000
loc_8c1845a0:
	#data loc_8c184682
loc_8c1845a4:
	#data loc_8c1846a6
loc_8c1845a8:
	#data bank17.loc_8c17afc0

;==============================================
loc_8c1845ac:
	mov.w @(loc_8C1846CC,pc),r2
	cmp/eq r2,r13
	bf loc_8c1845be
	mov.l @(loc_8c1846d8,pc),r1
	mov.l @(loc_8c1846d4,pc),r4
	jsr @r1
	mov 0x00,r5
	bra loc_8c1845c6
	nop 

loc_8c1845be:
	stc vbr, r1
	mov.w @(loc_8C1846CE,pc),r0
	mov.l @(loc_8c1846dc,pc),r3
	mov.l r3,@(r0,r1) 

loc_8c1845c6:
	mov r14,r4
	shll2 r4
	mov r13,r0
	mov 0xFC,r3
	shll2 r4
	shad r3, r0
	add r10,r4
	shll2 r0
	mov.l r4,@(r0,r9) 
	mov 0x00,r3
	mov.l r3,@(0x04,r4) 
	mov 0xF8,r3
	mov.l @r15,r2
	mov.l r2,@r4
	mov.l r8,@(0x08,r4) 
	mov.l r11,@(0x0C,r4) 
	mov.w @(0x04,r15),r0 
	mov r0,r4
	extu.b r4,r4
	mov r13,r0
	shlr2 r4
	shad r3, r0
	shlr2 r4
	shlr r4
	cmp/eq 0x0A,r0 
	bf loc_8c18460a
	mov.l @(loc_8C1846E0,pc),r3
	add 0x0C,r4
	shad r4, r12
	mov.l @r3,r2
	or r12,r2
	mov.l r2,@r3
	bra loc_8c184652
	nop 

loc_8c18460a:
	mov 0xF8,r3
	mov r13,r0
	shad r3, r0
	cmp/eq 0x0B,r0 
	bf loc_8c184652
	mov.l @(loc_8C1846E4,pc),r3
	shad r4, r12
	mov.l @r3,r2
	or r12,r2
	mov.l r2,@r3
	bra loc_8c184652
	nop 

loc_8c184622:
	mov r13,r0
	mov 0xFC,r3
	shad r3, r0
	mov r14,r12
	shll2 r0
	mov.l @(r0,r9),r2
	shll2 r12
	shll2 r12
	cmp/eq r2,r4
	bf/s loc_8c184646
	add r10,r12
	mov 0xFC,r3
	mov r13,r0
	shad r3, r0
	mov.l r4,@(0x04,r12) 
	shll2 r0
	bra loc_8c18464a
	mov.l r12,@(r0,r9) 

loc_8c184646:
	mov.l r12,@(0x04,r5) 
	mov.l r4,@(0x04,r12) 

loc_8c18464a:
	mov.l @r15,r2
	mov.l r2,@r12
	mov.l r8,@(0x08,r12) 
	mov.l r11,@(0x0C,r12) 

loc_8c184652:
	bra loc_8c184658
	mov r14,r4

loc_8c184656:
	mov 0x00,r4

loc_8c184658:
	mov.w @(0x08,r15),r0 
	stc sr, r3
	extu.w r0,r0
	mov.w @(loc_8c1846d0,pc),r2
	and 0x0F,r0 
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0, sr 
	mov r4,r0
	add 0x0C,r15
	lds.l @r15+,pr 
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8c184682:
	mov.l r14,@-r15
	mov 0xFC,r3 ; r3 set to 0xFFFFFFFC
	exts.w r4,r14
	mov.l @(loc_8c1846E8,pc),r0 ; r0 set to 0x8C3397FC
	sts.l pr,@-r15
	shad r3, r14
	shll2 r14
	bra loc_8c18469C
	mov.l @(r0,r14),r14

loc_8c184694:
	mov.l @r14,r3
	jsr @r3
	mov.l @(0x08,r14),r4
	mov.l @(0x04,r14),r14

loc_8c18469C:
	tst r14,r14
	bf loc_8c184694
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1846A6:
	stc sr, r0
	mov.w @(loc_8c1846D0,pc),r3 ; r3 set to 0xFF0F
	mov.l r14,@-r15
	sts.l pr,@-r15
	and r3,r0
	or 0x60,r0
	ldc r0, sr
	mov.l @(loc_8c1846EC,pc),r14 ; r14 set to 0x8C339A3C
	bra loc_8c1846C2
	mov.l @r14,r14

loc_8c1846BA:
	mov.l @r14,r3
	jsr @r3
	mov.l @(0x08,r14),r4
	mov.l @(0x04,r14),r14

loc_8c1846C2:
	tst r14,r14
	bf loc_8c1846BA
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1846cc:
	#data 0x0920
loc_8c1846ce:
	#data 0x022C
loc_8c1846D0:
	#data 0xFF0F
	#align4

loc_8c1846D4:
	#data loc_8c1846F0
loc_8c1846D8:
	#data bank17.loc_8c17AEC0
loc_8c1846DC:
	#data loc_8c184716
loc_8c1846e0:
	#data 0xA05F6920
loc_8c1846e4:
	#data 0xA05F6924
loc_8c1846E8:
	#data 0x8C3397FC
loc_8c1846EC:
	#data 0x8C339A3C

;==============================================
loc_8c1846F0:
	stc sr, r0
	mov.w @(loc_8c1847C0,pc),r3 ; r3 set to 0xFF0F
	mov.l r14,@-r15
	sts.l pr,@-r15
	and r3,r0
	or 0x60,r0
	ldc r0, sr
	mov.l @(loc_8c1847C8,pc),r14 ; r14 set to 0x8C339A44
	bra loc_8c18470C
	mov.l @r14,r14

loc_8c184704:
	mov.l @r14,r3
	jsr @r3
	mov.l @(0x08,r14),r4
	mov.l @(0x04,r14),r14

loc_8c18470C:
	tst r14,r14
	bf loc_8c184704
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c184716:
	mov.l r14,@-r15
	mov 0xFC,r3 ; r3 set to 0xFFFFFFFC
	mov.l r13,@-r15
	exts.w r4,r0
	mov.l r12,@-r15
	shad r3, r0
	mov.l r11,@-r15
	cmp/eq 0x32,r0
	mov.l r10,@-r15
	sts.l pr,@-r15
	bt loc_8c1847B2
	cmp/eq 0x36,r0
	bt loc_8c184738
	cmp/eq 0x3A,r0
	bt loc_8c1847B2
	bra loc_8c1847B2
	nop

loc_8c184738:
	stc sr, r0
	mov.w @(loc_8c1847C0,pc),r1 ; r1 set to 0xFF0F
	and r1,r0
	or 0x40,r0
	ldc r0, sr
	mov.l @(loc_8c1847D0,pc),r0 ; r0 set to 0xA05F6900
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8c1847CC,pc),r2 ; r2 set to 0xA05F6920
	mov.l @r0,r12
	mov.l @r2,r3
	and r3,r12
	shlr8 r12
	shlr2 r12
	shlr2 r12
	tst r12,r12
	bt/s loc_8c184784
	mov 0x01,r14 ; r14 set to 0x01
	mov.w @(loc_8c1847C4,pc),r11 ; r11 set to 0x80
	mov.w @(loc_8c1847C2,pc),r10 ; r10 set to 0xA00
	bra loc_8c184778
	mov r4,r13

loc_8c184762:
	mov r14,r3
	shad r13, r3
	tst r12,r3
	bt loc_8c184776
	mov r13,r4
	shll2 r4
	shll2 r4
	shll r4
	bsr loc_8c184682
	add r10,r4

loc_8c184776:
	add 0x01,r13

loc_8c184778:
	mov r14,r2
	shad r13, r2
	cmp/eq r11,r2
	bf loc_8c184762
	bra loc_8c1847B2
	nop

loc_8c184784:
	mov.l @(loc_8c1847D8,pc),r2 ; r2 set to 0xA05F6904
	mov.l @(loc_8c1847D4,pc),r1 ; r1 set to 0xA05F6924
	mov.l @r2,r11
	mov.l @r1,r3
	mov.w @(loc_8c1847C6,pc),r12 ; r12 set to 0xB00
	and r3,r11
	bra loc_8c1847AA
	mov r4,r13

loc_8c184794:
	mov r14,r2
	shad r13,r2
	tst r11,r2
	bt loc_8c1847a8
	mov r13,r4
	shll2 r4
	shll2 r4
	shll r4
	bsr loc_8c184682
	add r12,r4

loc_8c1847A8:
	add 0x01,r13

loc_8c1847aa:
	mov r14,r0
	shad r13, r0
	cmp/eq 0x10,r0 
	bf loc_8c184794

loc_8c1847B2:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1847C0:
	#data 0xFF0F
loc_8c1847C2:
	#data 0x0A00
loc_8c1847C4:
	#data 0x0080
loc_8c1847C6:
	#data 0x0B00
	#align4

loc_8c1847C8:
	#data 0x8C339A44
loc_8c1847CC:
	#data 0xA05F6920
loc_8c1847D0:
	#data 0xA05F6900
loc_8c1847D4:
	#data 0xA05F6924
loc_8c1847D8:
	#data 0xA05F6904

;==============================================
loc_8c1847DC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	stc sr,r0
	mov.w @(0xF6,PC),r3
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@r15
	stc sr,r0
	and r3,r0
	or 0xF0,r0
	ldc r0,sr
	mov r4,r12
	shll2 r12
	mov.l @(0xF0,PC),r7
	shll2 r12
	mov r12,r13
	mov.w @(0xDC,PC),r4
	mov 0x01,r5
	mov r5,r6
	add r7,r13

loc_8c184812:
	mov r6,r14
	shll2 r14
	shll2 r14
	add r7,r14
	mov.l @(0x4,r14),r3
	cmp/eq r13,r3
	bf loc_8c184828
	mov.l @(0xC,r14),r2
	mov.l @(0xD8,PC),r3
	tst r3,r2
	bf loc_8c18482e

loc_8c184828:
	add 0x01,r6
	cmp/hs r4,r6
	bf loc_8c184812

loc_8c18482e:
	cmp/eq r4,r6
	bt/s loc_8c184846
	mov 0x00,r1
	mov r12,r4
	shll2 r6
	add r7,r4
	mov.l @(0x4,r4),r3
	shll2 r6
	add r7,r6
	mov.l r3,@(0x4,r6)
	bra loc_8c184920
	mov.l r1,@(0xC,r4)

loc_8c184846:
	mov r12,r13
	add r7,r13
	mov.w @(0xA2,PC),r7
	mov r5,r14
	mov.l @(0xB4,PC),r10
	mov.l @(0xB4,PC),r4
	mov.l @(0xAC,PC),r9
	mov.w @(0x94,PC),r12
	mov.w @(0x94,PC),r8

loc_8c184858:
	mov r14,r0
	shll2 r0
	mov.l @(r0,r4),r3
	cmp/eq r13,r3
	bf loc_8c184918
	mov r14,r6
	shll2 r6
	add r4,r6
	mov.l @(0x4,r13),r3
	mov.l r3,@r6
	mov.l r1,@(0xC,r13)
	mov.l @r6,r2
	tst r2,r2
	bf loc_8c18491e
	cmp/eq r7,r14
	bf loc_8c184884
	mov.l @(0x90,PC),r2
	mov 0x00,r5
	jsr @r2
	mov r5,r4
	bra loc_8c18491e
	nop 

loc_8c184884:
	mov.w @(0x6A,PC),r2
	cmp/eq r2,r14
	bf loc_8c184896
	mov.l @(0x84,PC),r1
	mov 0x00,r5
	jsr @r1
	mov r5,r4
	bra loc_8c18491e
	nop 

loc_8c184896:
	mov r14,r13
	shll2 r13
	shll2 r13
	mov r13,r4
	extu.b r4,r7
	mov 0xF8,r3
	exts.w r4,r6
	shlr2 r7
	shad r3,r6
	mov r6,r0
	shlr2 r7
	shlr r7
	cmp/eq 0x0A,r0
	bf loc_8c1848c2
	mov r5,r3
	add 0x0C,r7
	mov.l @r10,r1
	shad r7,r3
	not r3,r3
	and r3,r1
	bra loc_8c1848d2
	mov.l r1,@r10

loc_8c1848c2:
	cmp/eq 0x0B,r0
	bf loc_8c1848d2
	mov r5,r3
	mov.l @r9,r1
	shad r7,r3
	not r3,r3
	and r3,r1
	mov.l r1,@r9

loc_8c1848d2:
	mov.w @(0x1E,PC),r2
	stc vbr,r3
	add r2,r13
	mov.l @(0x38,PC),r0
	shlr2 r13
	shlr r13
	add r13,r3
	add r8,r3
	mov.l r0,@r3
	bra loc_8c18491e
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1848e8:
	#data 0xFF0F
loc_8c1848ea:
	#data 0x0100
loc_8c1848ec:
	#data 0x00C0
loc_8c1848ee:
	#data 0x0200
loc_8c1848f0:
	#data 0x0090
loc_8c1848f2:
	#data 0x0092
loc_8c1848f4:
	#data 0xFE00
	#align4

loc_8c1848f8:
	#data 0x8C3387FC
loc_8c1848fc:
	#data 0x80000000
loc_8c184900:
	#data 0xA05F6924
loc_8c184904:
	#data 0xA05F6920
loc_8c184908:
	#data 0x8C3397FC
loc_8c18490C:
	#data bank17.loc_8c17AFC0
loc_8c184910:
	#data bank17.loc_8c17AEC0
loc_8c184914:
	#data bank19.loc_8c195E74

;==============================================
loc_8c184918:
	add 0x01,r14
	cmp/hs r12,r14
	bf loc_8c184858

loc_8c18491E:
	cmp/eq r12,r14

loc_8c184920:
	mov.w @r15,r0
	stc sr,r3
	extu.w r0,r0
	mov.w @(0x1C,PC),r2
	and 0x0F,r0
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0,sr
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c184946:
	#data 0xFF0F

;==============================================
loc_8c184948:
	shll r4
	shll r4
	shll r4
	shll r4
	stc sr,r0
	mov.l @(loc_8c184960,PC),r1
	and r1,r0
	or r4,r0
	ldc r0,sr
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	nop
loc_8c184960:
	#data 0xFF0F

;==============================================
loc_8c184962:
	mov 0xff,r15;???
	rts
	nop

;==============================================
loc_8c184968:
	mov.l r14,@-r15
	add 0xFC,r15
	stc sr, r0
	mov.w @(loc_8c1849D4,pc),r3 ; r3 set to 0xFF0F
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.l r0,@r15
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	mov.l @(loc_8c1849D8,pc),r3 ; r3 set to 0xFF00001C
	mov.w @(loc_8c1849D6,pc),r2 ; r2 set to 0x800
	mov.l @r3,r1
	mov.l @(loc_8c1849DC,pc),r7 ; r7 set to 0x8C195FFC
	or r2,r1
	mov.l r1,@r3 ; r3 ??? bc r1 is ???
	mov.l @(loc_8c1849E0,pc),r3 ; r3 set to 0x80000000
	cmp/eq r3,r4
	bf/s loc_8c1849A6
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(loc_8c1849EC,pc),r2 ; r2 set to 0x8C196340
	mov.l @(loc_8c1849E8,pc),r0 ; r0 set to 0x8C195FA0
	mov.l @(loc_8c1849E4,pc),r4 ; r4 set to 0x8C196198
	mov.l @(loc_8c1849F0,pc),r3 ; r3 set to 0x8C196338
	mov.l r4,@r0 ; r0 ??
	mov.l r4,@r7 ; r7 ??
	mov.l r6,@r2 ; r2 ??
	bra loc_8c1849B6
	mov.l r5,@r3

loc_8c1849A6:
	mov.l @(loc_8c1849EC,pc),r2 ; r2 set to 0x8C196340
	mov.l @(loc_8c1849F0,pc),r3 ; r3 set to 0x8C196338
	mov.l @(loc_8c1849F4,pc),r4 ; r4 set to 0x8C196030
	mov.l @(loc_8c1849E8,pc),r0 ; r0 set to 0x8C195FA0
	mov.l r4,@r0 ; r0 ??
	mov.l r4,@r7
	mov.l r6,@r2 ; r2 ??? bc r6 is ???
	mov.l r6,@r3 ; r3 ??? bc r6 is ???

loc_8c1849B6:
	mov.l @(loc_8c1849F8,pc),r4 ; r4 set to 0x8C196000, r4 set to 0x8C196000
	bra loc_8c1849C2
	stc vbr, r14

loc_8c1849BC:
	mov.l @r4+,r2
	mov.l r2,@r14
	add 0x04,r14

loc_8c1849C2:
	mov.l @(loc_8c1849FC,pc),r3 ; r3 set to 0x8C196030, r3 set to 0x8C196030
	cmp/hi r3,r4
	bf loc_8c1849BC
	stc vbr, r1
	stc vbr, r4
	mov r14,r5
	sub r1,r5
	bra loc_8c184A00
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1849D4:
	#data 0xFF0F
loc_8c1849D6:
	#data 0x0800
	#align4

loc_8c1849D8:
	#data 0xFF00001C
loc_8c1849DC:
	#data bank19.loc_8c195FFC
loc_8c1849E0:
	#data 0x80000000
loc_8c1849E4:
	#data bank19.loc_8c196198
loc_8c1849E8:
	#data bank19.loc_8c195FA0
loc_8c1849EC:
	#data bank19.loc_8c196340
loc_8c1849F0:
	#data bank19.loc_8c196338
loc_8c1849F4:
	#data bank19.loc_8c196030
loc_8c1849F8:
	#data bank19.loc_8c196000
loc_8c1849FC:
	#data bank19.loc_8c196030

;==============================================
loc_8c184A00:
	shlr2 r5
	shlr2 r5
	shlr r5
	add 0x01,r5

loc_8c184A08:
	ocbp @r4
	dt r5
	bf/s loc_8c184A08
	add 0x20,r4
	stc vbr, r14
	mov.l @(loc_8c184A40,pc),r4 ; r4 set to 0x8C195F6C, r4 set to 0x8C195F6C
	mov.w @(loc_8c184A38,pc),r3 ; r3 set to 0x100, r3 set to 0x100
	bra loc_8c184A20
	add r3,r14

loc_8c184A1A:
	mov.l @r4+,r2
	mov.l r2,@r14
	add 0x04,r14

loc_8c184A20:
	mov.l @(loc_8c184A44,pc),r3 ; r3 set to 0x8C195FA4, r3 set to 0x8C195FA4
	cmp/hi r3,r4
	bf loc_8c184A1A
	stc vbr, r1
	stc vbr, r4
	mov.w @(loc_8c184A3C,pc),r3 ; r3 set to 0x400, r3 set to 0x400
	mov.w @(loc_8c184A3A,pc),r5 ; r5 set to 0xFF00, r5 set to 0xFF00
	sub r1,r14
	add r3,r4
	add r14,r5 ; r5 ??? bc r14 is ???, r5 ??? bc r14 is ???
	bra loc_8c184A48
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c184A38:
	#data 0x0100
loc_8c184A3A:
	#data 0xFF00
loc_8c184A3C:
	#data 0x0400
	#align4

loc_8c184A40:
	#data bank19.loc_8c195F6C
loc_8c184A44:
	#data bank19.loc_8c195FA4

;==============================================
loc_8c184A48:
	shlr2 r5
	shlr2 r5
	shlr r5
	add 0x01,r5

loc_8c184A50:
	ocbp @r4
	dt r5
	bf/s loc_8c184A50
	add 0x20,r4
	stc vbr, r14
	mov.l @(loc_8c184A88,pc),r4 ; r4 set to 0x8C195F6C, r4 set to 0x8C195F6C
	mov.w @(loc_8c184A80,pc),r3 ; r3 set to 0x400, r3 set to 0x400
	bra loc_8c184A68
	add r3,r14

loc_8c184A62:
	mov.l @r4+,r2
	mov.l r2,@r14
	add 0x04,r14

loc_8c184A68:
	mov.l @(loc_8c184A8C,pc),r3 ; r3 set to 0x8C195FA4, r3 set to 0x8C195FA4
	cmp/hi r3,r4
	bf loc_8c184A62
	stc vbr, r1
	stc vbr, r4
	mov.w @(loc_8c184A84,pc),r3 ; r3 set to 0x1000, r3 set to 0x1000
	mov.w @(loc_8c184A82,pc),r5 ; r5 set to 0xFC00, r5 set to 0xFC00
	sub r1,r14
	add r3,r4
	add r14,r5 ; r5 ??? bc r14 is ???, r5 ??? bc r14 is ???
	bra loc_8c184A90
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c184A80:
	#data 0x0400
loc_8c184A82:
	#data 0xFC00
loc_8c184A84:
	#data 0x1000
	#align4

loc_8c184A88:
	#data bank19.loc_8c195F6C
loc_8c184A8C:
	#data bank19.loc_8c195FA4

;==============================================
loc_8c184A90:
	shlr2 r5
	shlr2 r5
	shlr r5
	add 0x01,r5

loc_8c184A98:
	ocbp @r4
	dt r5
	bf/s loc_8c184A98
	add 0x20,r4
	stc vbr, r14
	mov.l @(loc_8c184AD0,pc),r4 ; r4 set to 0x8C195FA4, r4 set to 0x8C195FA4
	mov.w @(loc_8c184AC8,pc),r3 ; r3 set to 0x600, r3 set to 0x600
	bra loc_8c184AB0
	add r3,r14

loc_8c184AAA:
	mov.l @r4+,r2
	mov.l r2,@r14
	add 0x04,r14

loc_8c184AB0:
	mov.l @(loc_8c184AD4,pc),r3 ; r3 set to 0x8C196000, r3 set to 0x8C196000
	cmp/hi r3,r4
	bf loc_8c184AAA
	stc vbr, r1
	stc vbr, r4
	mov.w @(loc_8c184ACC,pc),r3 ; r3 set to 0x1800, r3 set to 0x1800
	mov.w @(loc_8c184ACA,pc),r5 ; r5 set to 0xFA00, r5 set to 0xFA00
	sub r1,r14
	add r3,r4
	add r14,r5 ; r5 ??? bc r14 is ???, r5 ??? bc r14 is ???
	bra loc_8c184AD8
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c184AC8:
	#data 0x0600
loc_8c184ACA:
	#data 0xFA00
loc_8c184ACC:
	#data 0x1800
	#align4

loc_8c184AD0:
	#data bank19.loc_8c195FA4
loc_8c184AD4:
	#data bank19.loc_8c196000

;==============================================
loc_8c184ad8:
	shlr2 r5
	shlr2 r5
	shlr r5
	add 0x01,r5

loc_8c184ae0:
	ocbp @r4
	dt r5
	bf/s loc_8c184ae0
	add 0x20,r4
	mov.l @r15,r0
	stc sr, r3
	mov.w @(loc_8C184B1C,pc),r2
	and 0x0F,r0 
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0, sr 
	mov.w @(loc_8C184B20,pc),r5
	mov.w @(loc_8C184B22,pc),r4
	mov.l @(loc_8c184b24,pc),r7
	mov.w @(loc_8C184B1E,pc),r6

loc_8c184b02:
	mov r4,r2
	shar r2
	stc vbr, r3
	shar r2
	shar r2
	add r2,r3
	add 0x20,r4
	add r5,r3
	cmp/ge r6,r4
	mov.l r7,@r3
	bf loc_8c184b02
	bra loc_8c184b28
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C184B1C:
	#data 0xFF0F
loc_8C184B1E:
	#data 0x0620
loc_8C184B20:
	#data 0x0200
loc_8C184B22:
	#data 0xFE40
	#align4

loc_8c184b24:
	#data bank19.loc_8c195e74

;==============================================
loc_8c184b28:
	stc sr, r0
	mov.l @(loc_8C184B34,pc),r1
	and r1,r0
	ldc r0, sr 
	bra loc_8c184b38
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C184B34:
	#data 0xEFFFFFFF

;==============================================
loc_8c184b38:
	add 0x04,r15
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

;==============================================
loc_8c184B40:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c184C70,pc),r3 ; r3 set to 0xFF000010
	mov.l @r3,r0
	and 0x01,r0
	cmp/eq 0x01,r0
	bf loc_8c184BDA
	mov.l @(loc_8c184C84,pc),r1 ; r1 set to 0xE0000000
	mov 0x00,r8 ; r8 set to 0x00
	mov.l @(loc_8c184C7C,pc),r13 ; r13 set to 0x100000
	mov r8,r14 ; r14 set to 0x00
	mov.l @(loc_8c184C80,pc),r11 ; r11 set to 0xC000000
	mov.l @(loc_8c184C74,pc),r9 ; r9 set to 0xD000000
	mov.l @(loc_8c184C78,pc),r12 ; r12 set to 0x8C196350
	mov.l r1,@r15
	bra loc_8c184B8E
	mov r8,r10

loc_8c184B70:
	mov.l @(loc_8c184C88,pc),r2 ; r2 set to 0x8C339AFC
	mov r10,r3
	shll2 r3
	mov r11,r4
	add r3,r2 ; r2 ??? bc r3 is ???
	mov.l r2,@-r15
	mov 0x04,r6 ; r6 set to 0x04
	mov.l @(0x04,r15),r5
	add r14,r5
	jsr @r12
	add r14,r4
	mov.l @r15+,r1
	add 0x01,r10
	add r13,r14
	mov.l r0,@r1

loc_8c184B8E:
	mov r11,r3
	add r14,r3
	cmp/hs r9,r3
	bf loc_8c184B70
	mov.l @(loc_8c184C94,pc),r3 ; r3 set to 0xE1000000, r3 set to 0xE1000000
	mov r8,r14
	mov.l @(loc_8c184C8C,pc),r9 ; r9 set to 0x10800000, r9 set to 0x10800000
	mov.l @(loc_8c184C90,pc),r11 ; r11 set to 0x10000000, r11 set to 0x10000000
	mov.l r3,@r15
	bra loc_8c184BC2
	mov r8,r10
	
loc_8c184BA4:
	mov.l @(0xF0,PC),r3
	mov r10,r2
	shll2 r2
	mov r11,r4
	add r2,r3
	mov.l r3,@-r15
	mov 0x04,r6
	mov.l @(0x4,r15),r5
	add r14,r5
	jsr @r12
	add r14,r4
	mov.l @r15+,r1
	add 0x01,r10
	add r13,r14
	mov.l r0,@r1

loc_8c184bc2:
	mov r11,r3
	add r14,r3
	cmp/hs r9,r3
	bf loc_8c184ba4
	mov.l @(loc_8c184c9c,pc),r3
	mov 0x04,r6
	mov.l @(loc_8C184CA0,pc),r5
	mov.l r3,@-r15
	jsr @r12
	mov r9,r4
	mov.l @r15+,r2
	mov.l r0,@r2

loc_8c184BDA:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c184BEE:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c184C88,pc),r4 ; r4 set to 0x8C339AFC
	mov.l @(loc_8c184CA4,pc),r13 ; r13 set to 0x8C1963E2
	mov r4,r12 ; r12 set to 0x8C339AFC
	mov r4,r14 ; r14 set to 0x8C339AFC
	bra loc_8c184C08
	add 0x40,r12

loc_8c184C04:
	jsr @r13
	mov.l @r14+,r4

loc_8c184C08:
	cmp/hs r12,r14
	bf loc_8c184C04
	mov.l @(loc_8c184C98,pc),r4 ; r4 set to 0x8C339B3C, r4 set to 0x8C339B3C
	mov r4,r12 ; r12 set to 0x8C339B3C, r12 set to 0x8C339B3C
	mov r4,r14 ; r14 set to 0x8C339B3C, r14 set to 0x8C339B3C
	bra loc_8c184C1A
	add 0x20,r12

loc_8c184C16:
	jsr @r13
	mov.l @r14+,r4

loc_8c184C1A:
	cmp/hs r12,r14
	bf loc_8c184C16
	mov.l @(loc_8c184C9C,pc),r3 ; r3 set to 0x8C339B5C, r3 set to 0x8C339B5C
	mov r3,r4 ; r4 set to 0x8C339B5C, r4 set to 0x8C339B5C
	mov.l r3,@r15
	jsr @r13
	mov.l @r4,r4 ; r4 ??, r4 ??
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
;Unused?
loc_8c184c34:
	mov r4,r0
	shlr16 r0
	shlr8 r0
	mov r4,r5
	and 0x1F,r0
	mov 0x0D,r2
	cmp/hs r2,r0
	shll8 r5
	bt/s loc_8c184c4e
	shlr8 r5
	mov.l @(0x38,PC),r4
	bra loc_8c184c50
	nop 

loc_8c184c4e:
	mov.l @(0x44,PC),r4

loc_8c184c50:
	or r5,r4
	rts 
	mov r4,r0

;==============================================
;Unused?
loc_8c184c56:
	mov.l @(0x3C,PC),r2
	mov r4,r5
	shll8 r5
	cmp/hs r2,r4
	bt/s loc_8c184c68
	shlr8 r5
	mov.l @(0x44,PC),r4
	bra loc_8c184c6a
	nop 

loc_8c184c68:
	mov.l @(0x24,PC),r4

loc_8c184c6a:
	or r5,r4
	rts 
	mov r4,r0

;==============================================
	#align4
loc_8c184C70:
	#data 0xFF000010
loc_8c184C74:
	#data 0x0D000000
loc_8c184C78:
	#data bank19.loc_8c196350
loc_8c184C7C:
	#data 0x00100000
loc_8c184C80:
	#data 0x0C000000
loc_8c184C84:
	#data 0xE0000000
loc_8c184C88:
	#data 0x8C339AFC
loc_8c184C8C:
	#data 0x10800000
loc_8c184C90:
	#data 0x10000000
loc_8c184C94:
	#data 0xE1000000
loc_8c184C98:
	#data 0x8C339B3C
loc_8c184C9C:
	#data 0x8C339B5C
loc_8c184ca0:
	#data 0xE1800000
loc_8c184CA4:
	#data bank19.loc_8c1963E2
loc_8c184CA8:
	#data 0x8C000000

;==============================================
loc_8c184CAC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xC4,PC),r3
	mov r5,r9
	mov.w @(0xBA,PC),r1
	mov r4,r10
	mov.l r6,@r15
	mov.l @r3,r0
	mov.l @(r0,r1),r0
	cmp/eq 0x01,r0
	bf/s loc_8c184ce4
	mov r7,r14
	stc sr,r0
	mov.w @(0xAA,PC),r3
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.l r0,@(0x4,r15)
	stc sr,r0
	and r3,r0
	or 0xF0,r0
	ldc r0,sr

loc_8c184CE4:
	mov.l @(0x24,r15),r0
	mov 0x01,r5
	mov 0xFF,r4
	cmp/eq 0x00,r0
	bt/s loc_8c184cfc
	mov 0x00,r11
	cmp/eq 0x01,r0
	bt loc_8c184d00
	cmp/eq 0x02,r0
	bt loc_8c184d04
	bra loc_8c184d06
	nop 

loc_8c184CFC:
	bra loc_8c184d06
	mov r11,r12

loc_8c184D00:
	bra loc_8c184d06
	mov r5,r12

loc_8c184D04:
	mov r4,r12

loc_8c184D06:
	mov.l @(0x28,r15),r0
	cmp/eq 0x00,r0
	bt loc_8c184d18
	cmp/eq 0x01,r0
	bt loc_8c184d1c
	cmp/eq 0x02,r0
	bt loc_8c184d20
	bra loc_8c184d22
	nop 

loc_8c184D18:
	bra loc_8c184d22
	mov r11,r13

loc_8c184d1c:
	bra loc_8c184d22
	mov r5,r13

loc_8c184d20:
	mov r4,r13

loc_8c184d22:
	mov.l @(0x64,PC),r2
	jsr @r2
	nop 
	mov.l @(0x60,PC),r3
	jsr @r3
	nop 
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bt loc_8c184d40
	cmp/eq 0x02,r0
	bt loc_8c184d5c
	cmp/eq 0x04,r0
	bt loc_8c184d90
	bra loc_8c184dae
	nop 

loc_8c184d40:
	cmp/pl r14
	mov r10,r5
	mov r9,r6
	bf/s loc_8c184dae
	mov r11,r4

loc_8c184d4a:
	mov.b @r5,r2
	add 0x01,r4
	cmp/ge r14,r4
	add r12,r5
	mov.b r2,@r6
	bf/s loc_8c184d4a
	add r13,r6
	bra loc_8c184dae
	nop 

loc_8c184d5c:
	mov r12,r7
	shll r7
	shll r13
	cmp/pl r14
	mov r10,r6
	mov r9,r4
	bf/s loc_8c184dae
	mov r11,r5

loc_8c184d6c:
	mov.w @r6,r2
	add 0x01,r5
	cmp/ge r14,r5
	add r7,r6
	mov.w r2,@r4
	bf/s loc_8c184d6c
	add r13,r4
	bra loc_8c184dae
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c184d7e:
	#data 0x00D4
loc_8c184d80:
	#data 0xFF0F
	#align4

loc_8c184D84:
	#data bank1c.loc_8c1c993C
loc_8c184D88:
	#data bank19.loc_8c196664
loc_8c184D8C:
	#data bank19.loc_8c1966A8

;==============================================
loc_8c184D90:
	mov r12,r7
	shll2 r7
	cmp/pl r14
	mov r9,r4
	mov r10,r5
	mov r11,r6
	bf/s loc_8c184dae
	shll2 r13

loc_8c184DA0:
	mov.l @r5,r2
	add 0x01,r6
	cmp/ge r14,r6
	add r7,r5
	mov.l r2,@r4
	bf/s loc_8c184da0
	add r13,r4

loc_8c184DAE:
	mov.l @(0x3C,PC),r3
	jsr @r3
	nop 
	mov.l @(0x38,PC),r3
	mov.w @(0x2C,PC),r1
	mov.l @r3,r0
	mov.l @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c184dd2
	mov.l @(0x4,r15),r0
	stc sr,r2
	mov.w @(0x20,PC),r3
	and 0x0F,r0
	shll2 r0
	and r3,r2
	shll2 r0
	or r2,r0
	ldc r0,sr

loc_8c184DD2:
	mov 0x00,r0
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c184de6:
	#data 0x00D4
loc_8c184de8:
	#data 0xFF0F
	#align4

loc_8c184DEC:
	#data bank19.loc_8c1965E8
loc_8c184DF0:
	#data bank1c.loc_8c1c993C

;==============================================
loc_8c184DF4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c184F9C,pc),r2 ; r2 set to 0x8C1297C4
	mov.l @(loc_8c184F98,pc),r3 ; r3 set to 0x8C1C9940
	jsr @r2
	mov.l @r3,r4
	mov.l @(loc_8c184FA4,pc),r2 ; r2 set to 0x8C345E3B
	mov 0xE0,r3 ; r3 set to 0xFFFFFFE0
	mov.w @(loc_8c184F80,pc),r6 ; r6 set to 0x114
	mov.l @(loc_8c184FA0,pc),r14 ; r14 set to 0x8C1C993C
	and r3,r2 ; r2 ??
	mov r6,r5 ; r5 set to 0x114
	mov.l @(loc_8c184FA8,pc),r1 ; r1 set to 0x8C129728
	add 0xEB,r5 ; r5 set to 0xFF
	mov.l r2,@r14 ; r14 ??? bc r2 is ???
	jsr @r1
	mov r2,r4
	mov.l @(loc_8c184FAC,pc),r2 ; r2 set to 0xA05F7800
	mov 0x00,r13 ; r13 set to 0x00
	mov.l @r14,r3 ; r3 ??? bc r14 is ???
	mov 0x04,r10 ; r10 set to 0x04
	mov.w @(loc_8c184F82,pc),r0 ; r0 set to 0xD4
	mov r13,r11 ; r11 set to 0x00
	mov.l r2,@r3
	mov 0x01,r2 ; r2 set to 0x01
	mov.l @r14,r3
	mov 0x34,r9 ; r9 set to 0x34
	mov 0x03,r8 ; r8 set to 0x03
	mov.l r2,@(r0,r3)
	mov.l @r14,r3
	mov.w @(loc_8c184F84,pc),r0 ; r0 set to 0xD8
	mov.l r13,@(r0,r3)

loc_8c184E42:
	mul.l r9,r11 ; r11 ??
	mov.l @r14,r2 ; r2 ??? bc r14 is ???
	add 0x04,r2
	sts macl,r12
	add r12,r2
	mov.l r11,@r2
	mov.l @r14,r2
	add 0x04,r2
	add r12,r2
	mov.l r13,@(0x28,r2)
	mov.l @r14,r2
	add 0x04,r2
	add r12,r2
	mov.l r13,@(0x2C,r2)
	mov.l @r14,r2
	add 0x04,r2
	add r12,r2
	mov.l r13,@(0x30,r2)
	mov.l @r14,r2
	add 0x04,r2
	add r12,r2
	mov.l r13,@(0x04,r2)
	mov.l @r14,r2
	add 0x04,r2
	add r12,r2
	mov.l r13,@(0x08,r2)
	mov.l @r14,r2
	add 0x04,r2
	add r12,r2
	mov.l r13,@(0x0C,r2)
	mov.l @r14,r2
	add 0x04,r2
	add r12,r2
	mov.l @(loc_8c184FB0,pc),r3 ; r3 set to 0x8C19651C, r3 set to 0x8C19651C
	mov.l r13,@(0x10,r2)
	mov.l @r14,r2
	add 0x04,r2
	add r12,r2
	mov.l r13,@(0x14,r2)
	mov.l @r14,r2
	add 0x04,r2
	add r12,r2
	mov.l r8,@(0x18,r2)
	mov.l @r14,r2
	add 0x04,r2
	add r12,r2
	mov.l r13,@(0x1C,r2)
	mov.l @r14,r2
	add 0x04,r2
	add r12,r2
	mov.l r13,@(0x20,r2)
	mov.l @r14,r4
	add 0x04,r4
	jsr @r3
	add r12,r4
	mov.w @(loc_8c184F86,pc),r3 ; r3 set to 0xDC, r3 set to 0xDC
	mov r11,r4
	mov.l @r14,r0 ; r0 ??? bc r14 is ???
	shll2 r4
	add 0x01,r11
	add r0,r3 ; r3 ??? bc r0 is ???, r3 ??? bc r0 is ???
	cmp/ge r10,r11
	add r4,r3
	mov.l r13,@r3
	mov.w @(loc_8c184F88,pc),r3 ; r3 set to 0xFC, r3 set to 0xFC
	mov.l @r14,r0
	add r0,r3 ; r3 ??? bc r0 is ???, r3 ??? bc r0 is ???
	add r4,r3
	mov.l r13,@r3
	mov.w @(loc_8c184F8A,pc),r3 ; r3 set to 0xEC, r3 set to 0xEC
	mov.l @r14,r0
	add r0,r3 ; r3 ??? bc r0 is ???, r3 ??? bc r0 is ???
	add r3,r4
	bf/s loc_8c184E42
	mov.l r13,@r4
	mov.w @(loc_8c184F8C,pc),r0 ; r0 set to 0x10C, r0 set to 0x10C
	mov.l @r14,r3
	mov.l @(loc_8c184FB8,pc),r4 ; r4 set to 0xC000000, r4 set to 0xC000000
	mov.l r13,@(r0,r3)
	add 0x04,r0 ; r0 set to 0x110, r0 set to 0x110
	mov.l @r14,r3
	mov.l @(loc_8c184FB4,pc),r5 ; r5 set to 0xCFFFFFF, r5 set to 0xCFFFFFF
	mov.l r13,@(r0,r3)
	mov.l @(loc_8c184FBC,pc),r3 ; r3 set to 0x8C19662C, r3 set to 0x8C19662C
	jsr @r3
	nop
	mov.w @(loc_8c184F82,pc),r0 ; r0 set to 0xD4, r0 set to 0xD4
	mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
	mov.l @r14,r2
	mov 0x60,r6 ; r6 set to 0x60, r6 set to 0x60
	mov.w @(loc_8c184F8E,pc),r4 ; r4 set to 0xA60, r4 set to 0xA60
	mov.l r3,@(r0,r2)
	mov 0x24,r3 ; r3 set to 0x24, r3 set to 0x24
	mov.l @r14,r2
	mov.l @(loc_8c184FC4,pc),r12 ; r12 set to 0x8C1844D4, r12 set to 0x8C1844D4
	add 0x04,r2
	mov.l @(loc_8c184FC0,pc),r11 ; r11 set to 0x8C196494, r11 set to 0x8C196494
	add r2,r3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???
	mov.l r2,@r15
	mov.l r3,@-r15
	mov.l @(0x04,r15),r7
	jsr @r12
	mov r11,r5 ; r5 set to 0x8C196494, r5 set to 0x8C196494
	mov.l @r15+,r1 ; r1 ??? bc r15 is ???
	mov 0x24,r3 ; r3 set to 0x24, r3 set to 0x24
	mov.w @(loc_8c184F90,pc),r4 ; r4 set to 0xA80, r4 set to 0xA80
	mov 0x60,r6 ; r6 set to 0x60, r6 set to 0x60
	mov.l r0,@r1
	mov.l @r14,r2
	add 0x38,r2
	add r2,r3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???
	mov.l r2,@r15
	mov.l r3,@-r15
	mov.l @(0x04,r15),r7
	jsr @r12
	mov r11,r5 ; r5 set to 0x8C196494, r5 set to 0x8C196494
	mov.l @r15+,r1
	mov 0x24,r3 ; r3 set to 0x24, r3 set to 0x24
	mov.w @(loc_8c184F92,pc),r4 ; r4 set to 0xAA0, r4 set to 0xAA0
	mov 0x60,r6 ; r6 set to 0x60, r6 set to 0x60
	mov.l r0,@r1
	mov.l @r14,r2
	add 0x6C,r2
	add r2,r3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???
	mov.l r2,@r15
	mov.l r3,@-r15
	mov.l @(0x04,r15),r7
	jsr @r12
	mov r11,r5 ; r5 set to 0x8C196494, r5 set to 0x8C196494
	mov.l @r15+,r1
	mov 0x24,r3 ; r3 set to 0x24, r3 set to 0x24
	mov.w @(loc_8c184F94,pc),r2 ; r2 set to 0x9C, r2 set to 0x9C
	mov 0x60,r6 ; r6 set to 0x60, r6 set to 0x60
	mov.l r0,@r1
	mov.l @r14,r1
	mov.w @(loc_8c184F96,pc),r4 ; r4 set to 0xAC0, r4 set to 0xAC0
	add 0x04,r1
	add r2,r1
	add r1,r3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???
	mov.l r1,@r15
	mov.l r3,@-r15
	mov.l @(0x04,r15),r7
	jsr @r12
	mov r11,r5 ; r5 set to 0x8C196494, r5 set to 0x8C196494
	mov.l @r15+,r2 ; r2 ??? bc r15 is ???, r2 ??? bc r15 is ???
	mov.l @(loc_8c184FC8,pc),r3 ; r3 set to 0x8C345F50, r3 set to 0x8C345F50
	mov.l r0,@r2
	mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
	mov.l r13,@r3 ; r3 ??? bc r13 is ???, r3 ??
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8 ; r8 ??? bc r15 is ???
	mov.l @r15+,r9 ; r9 ??? bc r15 is ???
	mov.l @r15+,r10 ; r10 ??? bc r15 is ???
	mov.l @r15+,r11 ; r11 ??? bc r15 is ???, r11 ??? bc r15 is ???
	mov.l @r15+,r12 ; r12 ??? bc r15 is ???, r12 ??? bc r15 is ???
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;==============================================
loc_8c184F80:
	#data 0x0114
loc_8c184F82:
	#data 0x00D4
loc_8c184F84:
	#data 0x00D8
loc_8c184F86:
	#data 0x00DC
loc_8c184F88:
	#data 0x00FC
loc_8c184F8A:
	#data 0x00EC
loc_8c184F8C:
	#data 0x010C
loc_8c184F8E:
	#data 0x0A60
loc_8c184F90:
	#data 0x0A80
loc_8c184F92:
	#data 0x0AA0
loc_8c184F94:
	#data 0x009C
loc_8c184F96:
	#data 0x0AC0
	#align4

loc_8c184F98:
	#data bank1c.loc_8c1c9940
loc_8c184F9C:
	#data bank12.loc_8c1297C4
loc_8c184FA0:
	#data bank1c.loc_8c1c993C
loc_8c184FA4:
	#data 0x8C345E3B
loc_8c184FA8:
	#data bank12.loc_8c129728
loc_8c184FAC:
	#data 0xA05F7800
loc_8c184FB0:
	#data bank19.loc_8c19651C
loc_8c184FB4:
	#data 0x0CFFFFFF
loc_8c184FB8:
	#data 0x0C000000
loc_8c184FBC:
	#data bank19.loc_8c19662C
loc_8c184FC0:
	#data bank19.loc_8c196494
loc_8c184FC4:
	#data loc_8c1844D4
loc_8c184FC8:
	#data 0x8C345F50

;==============================================
loc_8c184FCC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(0xC0,PC),r3
	mov r4,r8
	mov.w @(0xB6,PC),r1
	mov.l r5,@r15
	mov.l r6,@(0x4,r15)
	mov.l @r3,r0
	mov.l @(r0,r1),r0
	cmp/eq 0x01,r0
	bf/s loc_8c185006
	mov r7,r13
	stc sr,r0
	mov.w @(0xA6,PC),r3
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.l r0,@(0xC,r15)
	stc sr,r0
	and r3,r0
	or 0xF0,r0
	ldc r0,sr

loc_8c185006:
	mov.l @(0x30,r15),r0
	mov 0x01,r5
	cmp/eq 0x00,r0
	bt/s loc_8c18501c
	mov 0xFF,r4
	cmp/eq 0x01,r0
	bt loc_8c185020
	cmp/eq 0x02,r0
	bt loc_8c185024
	bra loc_8c185026
	nop 

loc_8c18501c:
	bra loc_8c185026
	mov 0x00,r10

loc_8c185020:
	bra loc_8c185026
	mov r5,r10

loc_8c185024:
	mov r4,r10

loc_8c185026:
	mov.l @(0x34,r15),r0
	cmp/eq 0x00,r0
	bt loc_8c185038
	cmp/eq 0x01,r0
	bt loc_8c18503c
	cmp/eq 0x02,r0
	bt loc_8c185040
	bra loc_8c185042
	nop 

loc_8c185038:
	bra loc_8c185042
	mov 0x00,r9

loc_8c18503c:
	bra loc_8c185042
	mov r5,r9

loc_8c185040:
	mov r4,r9

loc_8c185042:
	mov.l @(0x60,PC),r2
	jsr @r2
	nop 
	mov.l @(0x5C,PC),r12
	jsr @r12
	nop 
	mov.l @(0x4,r15),r0
	mov.l @(0x58,PC),r11
	cmp/eq 0x01,r0
	bt/s loc_8c185064
	mov 0x07,r14
	cmp/eq 0x02,r0
	bt loc_8c1850b0
	cmp/eq 0x04,r0
	bt loc_8c1850ec
	bra loc_8c18512a
	nop 

loc_8c185064:
	mov.l @r15,r3
	cmp/pl r13
	mov.l r3,@(0x4,r15)
	mov.l r8,@r15
	bf/s loc_8c18512a
	mov 0x00,r8

loc_8c185070:
	mov r8,r2
	tst r14,r2
	bf loc_8c18507e
	jsr @r12
	nop 
	jsr @r11
	nop 

loc_8c18507e:
	mov.l @r15,r3
	add 0x01,r8
	mov.l @(0x4,r15),r1
	cmp/ge r13,r8
	mov.b @r3,r2
	mov.b r2,@r1
	mov.l @r15,r3
	add r10,r3
	mov.l r3,@r15
	mov.l @(0x4,r15),r2
	add r9,r2
	bf/s loc_8c185070
	mov.l r2,@(0x4,r15)
	bra loc_8c18512a
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c18509c:
	#data 0x00D4
loc_8c18509e:
	#data 0xFF0F
	#align4

loc_8c1850A0:
	#data bank1c.loc_8c1c993C
loc_8c1850A4:
	#data bank19.loc_8c196664
loc_8c1850A8:
	#data bank19.loc_8c1966A8
loc_8c1850AC:
	#data bank19.loc_8c196458

;==============================================
loc_8c1850B0:
	mov.l @r15,r2
	shll r10
	shll r9
	cmp/pl r13
	mov.l r2,@(0x4,r15)
	mov.l r8,@r15
	bf/s loc_8c18512a
	mov 0x00,r8

loc_8c1850c0:
	mov r8,r2
	tst r14,r2
	bf loc_8c1850ce
	jsr @r12
	nop 
	jsr @r11
	nop 

loc_8c1850ce:
	mov.l @r15,r3
	add 0x01,r8
	mov.l @(0x4,r15),r1
	cmp/ge r13,r8
	mov.w @r3,r2
	mov.w r2,@r1
	mov.l @r15,r3
	add r10,r3
	mov.l r3,@r15
	mov.l @(0x4,r15),r2
	add r9,r2
	bf/s loc_8c1850c0
	mov.l r2,@(0x4,r15)
	bra loc_8c18512a
	nop 

loc_8c1850ec:
	shll2 r10
	mov.l @r15,r2
	cmp/pl r13
	mov.l r2,@(0x4,r15)
	mov.l r8,@r15
	mov 0x00,r8
	mov.l r10,@(0x8,r15)
	mov r9,r10
	bf/s loc_8c18512a
	shll2 r10

loc_8c185100:
	mov r8,r2
	tst r14,r2
	bf loc_8c18510e
	jsr @r12
	nop 
	jsr @r11
	nop 

loc_8c18510e:
	mov.l @r15,r3
	add 0x01,r8
	mov.l @(0x4,r15),r1
	cmp/ge r13,r8
	mov.l @r3,r2
	mov.l r2,@r1
	mov.l @r15,r1
	mov.l @(0x8,r15),r3
	add r3,r1
	mov.l r1,@r15
	mov.l @(0x4,r15),r2
	add r10,r2
	bf/s loc_8c185100
	mov.l r2,@(0x4,r15)

loc_8c18512a:
	mov.l @(0x3C,PC),r3
	jsr @r3
	nop 
	mov.l @(0x38,PC),r3
	mov.w @(0x2E,PC),r1
	mov.l @r3,r0
	mov.l @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c18514e
	mov.l @(0xC,r15),r0
	stc sr,r2
	mov.w @(0x22,PC),r3
	and 0x0F,r0
	shll2 r0
	and r3,r2
	shll2 r0
	or r2,r0
	ldc r0,sr

loc_8c18514e:
	mov 0x00,r0
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c185164:
	#data 0x00D4
loc_8c185166:
	#data 0xFF0F
	#align4

loc_8c185168:
	#data bank19.loc_8c1965E8
loc_8c18516C:
	#data bank1c.loc_8c1c993C

;==============================================
loc_8c185170:
	mov.l @(loc_8c18528C,pc),r3 ; r3 set to 0x8C339E38
	mov.l @r3,r2
	add 0x01,r2
	mov.l r2,@r3 ; r3 ??? bc r2 is ???
	bra loc_8c1854D0
	nop
	
;==============================================
loc_8c18517C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	stc sr,r0
	mov.l r12,@-r15
	mov.w @(0xF8,PC),r3
	mov.l r11,@-r15
	sts.l pr,@-r15
	and r3,r0
	or 0xF0,r0
	ldc r0,sr
	mov.l @(0xFC,PC),r4
	mov.l @r4,r2
	tst r2,r2
	bf loc_8c1851cc
	mov.l @(0xF8,PC),r3
	mov.l @r3,r2
	add 0x01,r2
	mov.l r2,@r3
	bsr loc_8c185780
	nop 
	bsr loc_8c1851e4
	nop 
	mov.w @(0xD6,PC),r11
	mov.l @(0xEC,PC),r5
	add r5,r11
	mov r5,r14
	mov r5,r4
	mov r5,r13

loc_8c1851b4:
	mov.l @r14,r3
	tst r3,r3
	bt loc_8c1851c0
	mov.l @r13,r12
	jsr @r12
	nop 

loc_8c1851c0:
	add 0x04,r14
	cmp/hs r11,r14
	bf/s loc_8c1851b4
	add 0x04,r13
	bra loc_8c1851d8
	nop 

loc_8c1851cc:
	mov 0x00,r3
	mov.l r3,@r4
	mov.l @(0xC8,PC),r4
	mov.l @r4,r2
	add 0x01,r2
	mov.l r2,@r4

loc_8c1851d8:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1851E4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xB0,PC),r3
	mov.l @r3,r4
	tst r4,r4
	bt loc_8c18524c
	mov r4,r13
	mov.l @(0xB0,PC),r4
	mov.l @(0xA8,PC),r3
	add 0xFF,r13
	mov.l @(0xAC,PC),r5
	mov r13,r2
	and r3,r4
	mov.l @(0xAC,PC),r1
	shll16 r2
	mov.w @(0x7A,PC),r0
	add 0x20,r4
	or r1,r2
	or r4,r5
	mov.l r2,@r5
	mov 0x01,r14
	mov.l @(0xA0,PC),r5
	mov.l @(0x78,PC),r2
	mov.l r14,@r2
	mov.l @r5,r3
	mov.l @(r0,r3),r3
	mov.l r4,@(0x4,r3)
	mov.l @r5,r3
	mov.l @(r0,r3),r1
	mov.l r14,@(0x18,r1)
	mov r13,r1
	mov r13,r4
	mov.l r14,@r15
	mov 0x00,r3
	shll r4
	mov.l r3,@-r15
	shll2 r1
	mov.l r3,@-r15
	add r1,r4
	mov.l @(0x80,PC),r1
	mov r15,r6
	mov r14,r7
	add 0x08,r6
	jsr @r1
	mov 0x09,r5
	add 0x08,r15
	mov.l @(0x58,PC),r2
	mov.l @(0x74,PC),r1
	mov.l @r2,r3
	mov.l r3,@r1

loc_8c18524c:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c185256:
	mov.l @(loc_8c1852C0,pc),r3 ; r3 set to 0xA05F6900
	mov.w @(loc_8c185286,pc),r0 ; r0 set to 0x1000
	rts
	mov.l r0,@r3

;==============================================
loc_8c18525E:
	mov.l @(loc_8c1852C4,pc),r4 ; r4 set to 0x8C339E30
	mov.l @(loc_8c1852C8,pc),r1 ; r1 set to 0x8C33A0B4
	mov.l @(0x18,r4),r3
	add 0x01,r3
	mov.l r3,@(0x18,r4)  ; r4 ??? bc r3 is ???
	mov r4,r3
	mov.l @r1,r2
	add 0x34,r3
	shll r2
	add r3,r2
	mov.w @(loc_8c185288,pc),r3 ; r3 set to 0x2000
	mov.w @r2,r0
	add 0x01,r0
	mov.w r0,@r2
	mov.l @(loc_8c1852C0,pc),r2 ; r2 set to 0xA05F6900
	rts
	mov.l r3,@r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c185280:
	#data 0xFF0F
loc_8c185282:
	#data 0x0080
loc_8c185284:
	#data 0x10F4
loc_8c185286:
	#data 0x1000
loc_8c185288:
	#data 0x2000
	#align4

loc_8c18528C:
	#data 0x8C339E38
loc_8c185290:
	#data 0x8C33A0E0
loc_8c185294:
	#data 0x8C339E3C
loc_8c185298:
	#data 0x8C339B70
loc_8c18529c:
	#data 0x8C33A0E4
loc_8c1852a0:
	#data 0x8C33A0C0
loc_8c1852a4:
	#data 0x1FFFFFE0
loc_8c1852a8:
	#data 0x8C33A0E8
loc_8c1852ac:
	#data 0xA0000000
loc_8c1852b0:
	#data 0x80000200
loc_8c1852b4:
	#data 0x8C347150
loc_8c1852B8:
	#data bank19.loc_8c1975B0
loc_8c1852Bc:
	#data 0x8C33A0C8
loc_8c1852C0:
	#data 0xA05F6900
loc_8c1852C4:
	#data 0x8C339E30
loc_8c1852C8:
	#data 0x8C33A0B4

;==============================================
loc_8c1852CC:
	mov.l @(loc_8c1853C0,pc),r3 ; r3 set to 0x8C347150
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(loc_8c1853BC,pc),r5 ; r5 set to 0x8C339BF0
	mov 0x18,r7 ; r7 set to 0x18
	mov.l @r3,r4
	add 0x28,r4

loc_8c1852D8:
	mov.b @r4,r2
	add 0x01,r6 ; r6 set to 0x01
	cmp/ge r7,r6
	mov.b r2,@r5 ; r5 ??? bc r2 is ???
	mov.b @(0x01,r4),r0
	mov.b r0,@(0x01,r5)
	mov.b @(0x02,r4),r0
	mov.b r0,@(0x02,r5)
	mov.b @(0x03,r4),r0
	mov.b r0,@(0x03,r5)
	mov.l @(0x10,r4),r3 ; r3 ??? bc r4 is ???
	mov.l r3,@(0x08,r5)
	mov.b @(0x08,r4),r0
	mov.b r0,@(0x04,r5)
	mov.b @(0x09,r4),r0
	mov.b r0,@(0x05,r5)
	mov.b @(0x0A,r4),r0
	mov.b r0,@(0x06,r5)
	mov.b @(0x0B,r4),r0
	mov.b r0,@(0x07,r5)
	mov.l @(0x14,r4),r3
	mov.l r3,@(0x0C,r5)
	add 0x18,r5
	bf/s loc_8c1852D8
	add 0x2C,r4
	rts
	nop

;==============================================
loc_8c18530E:
	mov.l r14,@-r15
	mov 0x00,r7 ; r7 set to 0x00
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1853D0,pc),r5 ; r5 set to 0x8C185170
	mov.w @(loc_8c1853B2,pc),r4 ; r4 set to 0x900
	mov.l @(loc_8c1853CC,pc),r14 ; r14 set to 0x8C339B60
	mov.l @(loc_8c1853C4,pc),r12 ; r12 set to 0x8C1C58C8
	mov.l @(loc_8c1853C8,pc),r13 ; r13 set to 0x8C1844D4
	jsr @r13
	mov.l @r12,r6
	mov.l @(loc_8c1853D4,pc),r5 ; r5 set to 0x8C18517C
	mov 0x00,r7 ; r7 set to 0x00
	mov.w @(loc_8c1853B4,pc),r4 ; r4 set to 0xA00
	mov.l r0,@r14 ; r14 ??? bc r0 is ???
	jsr @r13
	mov.l @(0x04,r12),r6
	mov.l @(loc_8c1853D8,pc),r5 ; r5 set to 0x8C185256
	mov 0x00,r7 ; r7 set to 0x00
	mov.w @(loc_8c1853B4,pc),r4 ; r4 set to 0xA00
	mov.l r0,@(0x04,r14)
	jsr @r13
	mov.l @(0x08,r12),r6
	mov.l @(loc_8c1853DC,pc),r5 ; r5 set to 0x8C18525E
	mov 0x00,r7 ; r7 set to 0x00
	mov.w @(loc_8c1853B6,pc),r4 ; r4 set to 0xA20
	mov.l r0,@(0x08,r14)
	jsr @r13
	mov.l @(0x0C,r12),r6
	mov.l @(loc_8c1853E0,pc),r2 ; r2 set to 0x8C339E68
	mov 0x00,r3 ; r3 set to 0x00
	mov.l r0,@(0x0C,r14)
	mov r3,r1 ; r1 set to 0x00
	mov.l @(loc_8c1853E4,pc),r0 ; r0 set to 0x8C33A0B4
	mov 0x38,r6 ; r6 set to 0x38
	mov.l @(loc_8c1853E8,pc),r1 ; r1 set to 0x8C33A0B8
	mov.l r3,@r2 ; r2 ??
	mov r3,r2 ; r2 set to 0x00
	mov.l r3,@r0 ; r0 ??
	mov 0x00,r0 ; r0 set to 0x00
	mov.l r3,@r1 ; r1 ??
	mov r0,r1 ; r1 set to 0x00
	mov.l @(loc_8c1853EC,pc),r3 ; r3 set to 0x8C33A0BC
	mov.l @(loc_8c185408,pc),r14 ; r14 set to 0x8C129728
	mov.l r2,@r3 ; r3 ??
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFF
	mov.l @(loc_8c1853F0,pc),r2 ; r2 set to 0x8C33A0C0
	mov.l r0,@r2 ; r2 ??
	mov 0x00,r2 ; r2 set to 0x00
	mov.l @(loc_8c1853F4,pc),r0 ; r0 set to 0x8C33A0C8
	mov.l r1,@r0 ; r0 ??
	mov r2,r0 ; r0 set to 0x00
	mov.l @(loc_8c1853F8,pc),r1 ; r1 set to 0x8C33A0C4
	mov.l r3,@r1 ; r1 ??
	mov 0x00,r1 ; r1 set to 0x00
	mov.l @(loc_8c1853FC,pc),r3 ; r3 set to 0x8C33A0DC
	mov.l r2,@r3 ; r3 ??
	mov.l @(loc_8c185400,pc),r2 ; r2 set to 0x8C33A0E0
	mov.l r0,@r2 ; r2 ??
	mov.l @(loc_8c185404,pc),r0 ; r0 set to 0x8C33A0E4
	mov.l r1,@r0 ; r0 ??
	mov.l @(loc_8c18540C,pc),r4 ; r4 set to 0x8C339E30
	jsr @r14
	mov r1,r5 ; r5 set to 0x00
	mov.l @(loc_8c1853BC,pc),r4 ; r4 set to 0x8C339BF0
	mov.w @(loc_8c1853B8,pc),r6 ; r6 set to 0x240
	jsr @r14
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8c185410,pc),r4 ; r4 set to 0x8C339E70
	mov.w @(loc_8c1853B8,pc),r6 ; r6 set to 0x240
	jsr @r14
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8c185414,pc),r4 ; r4 set to 0x8C339B70
	mov.w @(loc_8c1853BA,pc),r6 ; r6 set to 0x80
	jsr @r14
	mov 0x00,r5 ; r5 set to 0x00
	lds.l @r15+,pr
	mov.l @r15+,r12 ; r12 ??? bc r15 is ???
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1853B2:
	#data 0x0900
loc_8c1853B4:
	#data 0x0A00
loc_8c1853B6:
	#data 0x0A20
loc_8c1853B8:
	#data 0x0240
loc_8c1853BA:
	#data 0x0080
	#align4

loc_8c1853BC:
	#data 0x8C339BF0
loc_8c1853C0:
	#data 0x8C347150
loc_8c1853C4:
	#data bank1c.loc_8c1c58C8
loc_8c1853C8:
	#data loc_8c1844D4
loc_8c1853CC:
	#data 0x8C339B60
loc_8c1853D0:
	#data loc_8c185170
loc_8c1853D4:
	#data loc_8c18517C
loc_8c1853D8:
	#data loc_8c185256
loc_8c1853DC:
	#data loc_8c18525E
loc_8c1853E0:
	#data 0x8C339E68
loc_8c1853E4:
	#data 0x8C33A0B4
loc_8c1853E8:
	#data 0x8C33A0B8
loc_8c1853EC:
	#data 0x8C33A0BC
loc_8c1853F0:
	#data 0x8C33A0C0
loc_8c1853F4:
	#data 0x8C33A0C8
loc_8c1853F8:
	#data 0x8C33A0C4
loc_8c1853FC:
	#data 0x8C33A0DC
loc_8c185400:
	#data 0x8C33A0E0
loc_8c185404:
	#data 0x8C33A0E4
loc_8c185408:
	#data bank12.loc_8c129728
loc_8c18540C:
	#data 0x8C339E30
loc_8c185410:
	#data 0x8C339E70
loc_8c185414:
	#data 0x8C339B70

;==============================================
loc_8c185418:
	sts.l pr,@-r15
	add 0xF4,r15
	stc sr, r0
	mov.w @(loc_8c1854E8,pc),r3 ; r3 set to 0xFF0F
	mov.l r4,@r15
	shlr2 r0
	mov.l r5,@(0x04,r15)
	shlr2 r0
	and 0x0F,r0
	mov.l r0,@(0x08,r15)
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	mov.l @(loc_8c1854EC,pc),r4 ; r4 set to 0x8C198320
	mov.l @(loc_8c1854F0,pc),r3 ; r3 set to 0xA0000000
	mov.l @r4,r2
	or r3,r2
	bsr loc_8c18530E
	mov.l r2,@r4 ; r4 ??? bc r2 is ???
	mov.l @(loc_8c1854F4,pc),r7 ; r7 set to 0xC000
	mov.l @(loc_8c1854F8,pc),r3 ; r3 set to 0x8C1966E4
	mov.l @r15,r6
	mov r7,r5 ; r5 set to 0xC000
	jsr @r3
	mov.l @(0x04,r15),r4
	bsr loc_8c1852CC
	mov.l r0,@r15
	mov.l @(loc_8c1854FC,pc),r3 ; r3 set to 0x8C33A0B0
	mov 0x01,r2 ; r2 set to 0x01
	stc sr, r1
	mov.l r2,@r3 ; r3 ??
	mov.l @(0x08,r15),r0
	mov.w @(loc_8c1854E8,pc),r2 ; r2 set to 0xFF0F
	and 0x0F,r0
	shll2 r0
	and r2,r1
	shll2 r0
	or r1,r0
	ldc r0, sr
	mov.l @r15,r0
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c185472:
	sts.l pr,@-r15
	add 0xEC,r15
	stc sr, r0
	mov.w @(loc_8c1854E8,pc),r3 ; r3 set to 0xFF0F
	mov.l r4,@(0x0C,r15)
	shlr2 r0
	mov.l r5,@(0x08,r15)
	shlr2 r0
	mov.l r6,@(0x04,r15)
	and 0x0F,r0
	mov.l r7,@r15
	mov.l r0,@(0x10,r15)
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	mov.l @(loc_8c1854EC,pc),r4 ; r4 set to 0x8C198320
	mov.l @(loc_8c1854F0,pc),r3 ; r3 set to 0xA0000000
	mov.l @r4,r2
	or r3,r2
	bsr loc_8c18530E
	mov.l r2,@r4 ; r4 ??? bc r2 is ???
	mov.l @(0x08,r15),r5
	mov.l @(loc_8c185500,pc),r3 ; r3 set to 0x8C196800
	mov.l @r15,r7
	mov.l @(0x04,r15),r6
	jsr @r3
	mov.l @(0x0C,r15),r4
	bsr loc_8c1852CC
	mov.l r0,@r15
	mov.l @(loc_8c1854FC,pc),r3 ; r3 set to 0x8C33A0B0
	mov 0x01,r2 ; r2 set to 0x01
	stc sr, r1
	mov.l r2,@r3 ; r3 ??
	mov.l @(0x10,r15),r0
	mov.w @(loc_8c1854E8,pc),r2 ; r2 set to 0xFF0F
	and 0x0F,r0
	shll2 r0
	and r2,r1
	shll2 r0
	or r1,r0
	ldc r0, sr
	mov.l @r15,r0
	add 0x14,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1854D0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l @(loc_8c1854FC,pc),r2 ; r2 set to 0x8C33A0B0
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @r2,r3
	tst r3,r3
	bf loc_8c185504
	bra loc_8c1856A8
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1854E8:
	#data 0xFF0F
	#align4

loc_8c1854EC:
	#data bank19.loc_8c198320
loc_8c1854F0:
	#data 0xA0000000
loc_8c1854F4:
	#data 0x0000C000
loc_8c1854F8:
	#data bank19.loc_8c1966E4
loc_8c1854FC:
	#data 0x8C33A0B0
loc_8c185500:
	#data bank19.loc_8c196800

;==============================================
loc_8c185504:
	mov.l @(loc_8C185604,pc),r4
	mov 0x00,r11
	mov.l @(loc_8C185608,pc),r2
	mov.l @r4,r3
	mov.l @(loc_8C18560C,pc),r6
	add 0xFF,r3
	mov.w @(loc_8C1855F6,pc),r10
	mov.l r3,@r2
	mov.l r11,@r4
	mov.l @r6,r3
	tst r3,r3
	bt loc_8c185530
	mov.l @(loc_8C185614,pc),r4
	mov.l @(loc_8C185610,pc),r5
	mov.l @r5,r3
	and r10,r3
	mov.l r3,@r4
	mov.l @r5,r1
	shlr16 r1
	exts.w r1,r1
	and r10,r1
	mov.l r1,@(0x04,r4) 

loc_8c185530:
	mov.l @(loc_8C185618,pc),r4
	mov.l r11,@r6
	mov.l @r4,r2
	tst r2,r2
	bt loc_8c18554e
	mov.l @(loc_8C18561C,pc),r2
	mov.l @(loc_8C185620,pc),r1
	mov.l @r2,r3
	mov.l r3,@r1
	mov.l @(loc_8C185624,pc),r3
	mov 0xF7,r0
	mov.l @r3,r2
	and r0,r2
	mov.l r2,@r3
	mov.l r11,@r4

loc_8c18554e:
	mov.l @(loc_8C185630,pc),r14
	mov.w @(loc_8C1855F8,pc),r3
	mov.l @(loc_8C185628,pc),r12
	mov.l @(loc_8C18562C,pc),r13
	mov.l @r12,r2
	tst r3,r2
	bt loc_8c18564e
	mov.w @(loc_8C1855FA,pc),r2
	mov.l @r12,r1
	tst r2,r1
	bt loc_8c18557c
	mov.l @(0x1C,r14),r1
	add 0x01,r1
	mov.l r1,@(0x1C,r14) 
	mov.l @r13,r0
	tst r0,r0
	bt loc_8c18557c
	mov.l @r13,r0
	mov.l @r12,r7
	mov.l @(0x08,r14),r6
	mov 0xFE,r5
	jsr @r0
	mov 0x01,r4

loc_8c18557c:
	mov.w @(loc_8C1855FC,pc),r3
	mov.l @r12,r2
	tst r3,r2
	bt loc_8c18559c
	mov.l @(0x20,r14),r0
	add 0x01,r0
	mov.l r0,@(0x20,r14) 
	mov.l @r13,r2
	tst r2,r2
	bt loc_8c18559c
	mov.l @r13,r2
	mov.l @r12,r7
	mov.l @(0x08,r14),r6
	mov 0xFD,r5
	jsr @r2
	mov 0x01,r4

loc_8c18559c:
	mov.w @(loc_8C1855FE,pc),r3
	mov.l @r12,r2
	tst r3,r2
	bt loc_8c1855bc
	mov.l @(0x24,r14),r0
	add 0x01,r0
	mov.l r0,@(0x24,r14) 
	mov.l @r13,r2
	tst r2,r2
	bt loc_8c1855bc
	mov.l @r13,r2
	mov.l @r12,r7
	mov.l @(0x08,r14),r6
	mov 0xFC,r5
	jsr @r2
	mov 0x01,r4

loc_8c1855bc:
	mov.w @(loc_8C185600,pc),r3
	mov.l @r12,r2
	tst r3,r2
	bt loc_8c1855dc
	mov.l @(0x28,r14),r0
	add 0x01,r0
	mov.l r0,@(0x28,r14) 
	mov.l @r13,r2
	tst r2,r2
	bt loc_8c1855dc
	mov.l @r13,r2
	mov.l @r12,r7
	mov.l @(0x08,r14),r6
	mov 0xFB,r5
	jsr @r2
	mov 0x01,r4

loc_8c1855dc:
	mov.w @(loc_8C1855F8,pc),r3
	bsr loc_8c185780
	mov.l r3,@r12
	mov.l @(loc_8c185634,pc),r1
	jsr @r1
	nop 
	mov r0,r12
	cmp/pz r12
	bf loc_8c185638
	bsr loc_8c1852cc
	nop 
	bra loc_8c1856a6
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1855F6:
	#data 0x03FF
loc_8C1855F8:
	#data 0x0F00
loc_8C1855FA:
	#data 0x0800
loc_8C1855FC:
	#data 0x0400
loc_8C1855FE:
	#data 0x0200
loc_8C185600:
	#data 0x0100
	#align4

loc_8C185604:
	#data 0x8C33A0C8
loc_8C185608:
	#data 0x8C33A0C4
loc_8C18560C:
	#data 0x8C33A0C0
loc_8C185610:
	#data 0xA05F80C4
loc_8C185614:
	#data 0x8C33A0CC
loc_8C185618:
	#data 0x8C33A0BC
loc_8C18561C:
	#data 0x8C33A0B8
loc_8C185620:
	#data 0xA05F8040
loc_8C185624:
	#data 0xA05F80E8
loc_8C185628:
	#data 0xA05F6908
loc_8C18562C:
	#data 0x8C339E68
loc_8C185630:
	#data 0x8C339E30
loc_8c185634:
	#data bank19.loc_8c196b0e

;==============================================
loc_8c185638:
	mov.l @r13,r2
	tst r2,r2
	bt loc_8c1856a6
	mov.l @(0x08,r14),r6
	mov 0xFA,r5
	mov.l @r13,r3
	mov r12,r7
	jsr @r3
	mov 0x01,r4
	bra loc_8c1856a6
	nop 

loc_8c18564e:
	mov.l @(loc_8c185744,pc),r1
	jsr @r1
	nop 
	mov r0,r12
	cmp/pz r12
	bf loc_8c18568a
	mov.l @(loc_8C18574C,pc),r4
	mov r14,r1
	add 0x34,r1
	mov.l @(loc_8C185748,pc),r2
	mov.l r11,@r2
	mov.l @r4,r3
	shll r3
	add r1,r3
	mov r14,r1
	mov.w r11,@r3
	add 0x2C,r1
	mov.l @r4,r3
	shll r3
	add r1,r3
	mov.l @(loc_8C185750,pc),r1
	mov.l @r1,r0
	and r10,r0
	mov.w r0,@r3
	bsr loc_8c1852cc
	nop 
	mov.l @r14,r2
	add 0x01,r2
	bra loc_8c1856a6
	mov.l r2,@r14

loc_8c18568a:
	bsr loc_8c185780
	nop 
	mov.l @(0x10,r14),r3
	add 0x01,r3
	mov.l r3,@(0x10,r14) 
	mov.l @r13,r2
	tst r2,r2
	bt loc_8c1856a6
	mov.l @(0x08,r14),r6
	mov 0xF9,r5
	mov.l @r13,r2
	mov r12,r7
	jsr @r2
	mov 0x01,r4

loc_8c1856a6:
	mov r12,r0

loc_8c1856A8:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1856B6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x88,PC),r2
	mov 0x04,r8
	mov.w @(0x72,PC),r0
	mov r8,r10
	mov.l @r2,r3
	mov 0x01,r9
	mov.l @(0x80,PC),r11
	add 0x7C,r10
	mov.b @(r0,r3),r1
	mov.l @(0x80,PC),r12
	mov.b r1,@r15
	bra loc_8c185766
	mov 0x00,r14

loc_8c1856E2:
	mov.b @r15,r3
	mov r9,r2
	shad r14,r2
	extu.b r3,r3
	tst r3,r2
	bt loc_8c185764
	mov.l @(0x70,PC),r4
	add r14,r4
	mov.l r4,@(0x4,r15)
	mov.b @r4,r4
	bsr loc_8c1859a0
	extu.b r4,r4
	mov.l @(0x4,r15),r4
	mov r0,r13
	mov.b @r4,r4
	bsr loc_8c1859b2
	extu.b r4,r4
	mov r0,r4
	mov r14,r0
	mov.b @(r0,r11),r3
	mov.b r3,@(r0,r12)
	mov.l @r4,r2
	tst r10,r2
	bt loc_8c185764
	mov.b @(0x2,r13),r0
	tst r0,r0
	bf loc_8c185764
	mov.b @(0x4,r13),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c185764
	mov.l @(0x8,r13),r4
	mov.b @(0x8,r4),r0
	and 0x04,r0
	mov r0,r4
	mov r14,r0
	mov.b r4,@(r0,r11)
	mov.b @(r0,r12),r5
	xor r4,r5
	extu.b r4,r4
	tst r4,r4
	bf loc_8c185764
	extu.b r5,r5
	tst r5,r5
	bt loc_8c185764
	mov r14,r0
	bra loc_8c18576c
	add 0x01,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c185742:
	#data 0x0FB0
	#align4

loc_8c185744:
	#data bank19.loc_8c196B0E
loc_8c185748:
	#data 0x8C33A0E0
loc_8c18574c:
	#data 0x8C33A0B4
loc_8c185750:
	#data 0xA05F810C
loc_8c185754:
	#data 0x8C347150
loc_8c185758:
	#data 0x8C33A12C
loc_8c18575c:
	#data 0x8C33A128
loc_8c185760:
	#data bank1c.loc_8c1c58DC

;=================================================
loc_8c185764:
	add 0x01,r14

loc_8c185766:
	cmp/ge r8,r14
	bf loc_8c1856e2
	mov 0x00,r0

loc_8c18576C:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c185780:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	stc sr,r0
	mov.w @(0xCC,PC),r3
	mov 0x01,r8
	mov.l @(0xD0,PC),r9
	shlr2 r0
	mov.l @(0xD0,PC),r10
	shlr2 r0
	and 0x0F,r0
	mov.l r0,@(0x4,r15)
	stc sr,r0
	and r3,r0
	or 0xF0,r0
	ldc r0,sr
	mov.l @(0xC4,PC),r2
	jsr @r2
	nop 
	cmp/eq 0xFE,r0
	bf/s loc_8c1857c0
	mov r0,r13
	mov.w @(0xAA,PC),r0
	mov.l @r9,r2
	bra loc_8c185912
	mov.l r8,@(r0,r2)

loc_8c1857C0:
	cmp/pz r13
	bt loc_8c1857c8
	bra loc_8c185900
	nop 

loc_8c1857C8:
	mov.l @(0xAC,PC),r3
	jsr @r3
	nop 
	mov.l @(0xAC,PC),r2
	mov r10,r3
	add 0x30,r3
	mov.l @(0xA8,PC),r0
	mov.l @r2,r4
	mov.w @(0x8C,PC),r5
	shll r4
	add r4,r3
	mov.l r3,@-r15
	mov.l @r0,r1
	mov r10,r2
	mov.l @(0x9C,PC),r3
	add 0x34,r2
	and r5,r1
	add r4,r2
	mov.l @r3,r0
	mov.w @r2,r2
	and r5,r0
	mulu.w r0,r2
	sts macl,r0
	add r0,r1
	mov.l @r15+,r0
	bsr loc_8c1852cc
	mov.w r1,@r0
	mov.l @(0x88,PC),r3
	jsr @r3
	nop 
	mov.l @(0x84,PC),r2
	jsr @r2
	nop 
	tst r0,r0
	bt loc_8c18585c
	mov.l @(0x80,PC),r2
	mov.l @r2,r14
	tst r14,r14
	bt loc_8c18581e
	jsr @r14
	nop 
	tst r0,r0
	bt loc_8c185826

loc_8c18581E:
	bsr loc_8c1856b6
	nop 
	mov.l @(0x70,PC),r1
	mov.l r0,@r1

loc_8c185826:
	mov.w @(0x40,PC),r0
	mov.l @r9,r3
	mov.l @(r0,r3),r2
	tst r2,r2
	bt loc_8c18585c
	mov.l @(0x60,PC),r1
	mov.l @r1,r2
	tst r2,r2
	bt loc_8c18585c
	mov.l @(0x5C,PC),r4
	mov.l @r4,r3
	mov.l @(0x5C,PC),r2
	mov.l r3,@r2
	mov.w @(0x26,PC),r3
	mov.l @r9,r0
	mov.l @(r0,r3),r3
	mov.l r3,@r4
	mov.l @(0x54,PC),r3
	mov.l @r3,r0
	or 0x08,r0
	mov.l r0,@r3
	mov.l @(0x54,PC),r4
	mov.l @(0x50,PC),r1
	mov.l r8,@r1
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4

loc_8c18585C:
	mov.l @(0x4C,PC),r14
	mov 0x00,r12
	bra loc_8c1858e4
	mov r12,r11

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c185864:
	#data 0xFF0F
loc_8c185866:
	#data 0x10E8
loc_8c185868:
	#data 0x03FF
loc_8c18586a:
	#data 0x0FBC
	#align4

loc_8c18586c:
	#data 0x8C347150
loc_8c185870:
	#data 0x8C339E30
loc_8c185874:
	#data bank19.loc_8c196CDE
loc_8c185878:
	#data bank19.loc_8c196D36
loc_8c18587c:
	#data 0x8C33A0B4
loc_8c185880:
	#data 0xA05F810C
loc_8c185884:
	#data 0xA05F80DC
loc_8c185888:
	#data bank19.loc_8c196D20
loc_8c18588C:
	#data bank19.loc_8c197040
loc_8c185890:
	#data 0x8C339E6C
loc_8c185894:
	#data 0x8C33A0C0
loc_8c185898:
	#data 0xA05F8040
loc_8c18589c:
	#data 0x8C33A0B8
loc_8c1858a0:
	#data 0xA05F80E8
loc_8c1858a4:
	#data 0x8C33A0BC
loc_8c1858a8:
	#data 0x8C33A0DC
loc_8c1858ac:
	#data 0x8C339E70

;==============================================
loc_8c1858B0:
	mov.l @(0x8,r14),r3
	tst r3,r3
	bt loc_8c1858e0
	mov.l @(0x4,r14),r5
	bsr loc_8c1859ce
	mov.l @r14,r4
	tst r0,r0
	bt loc_8c1858e0
	mov.l @(0x8,r14),r3
	mov.l r3,@r15
	mov.l r12,@(0x8,r14)
	mov.l @r15,r3
	mov.l r3,@-r15
	bsr loc_8c1859b2
	mov.l @r14,r4
	mov.l r0,@-r15
	bsr loc_8c1859a0
	mov.l @r14,r4
	mov.l @r15+,r7
	mov r0,r6
	mov.l @(0x4,r14),r5
	mov.l @r15+,r1
	jsr @r1
	mov.l @r14,r4

loc_8c1858E0:
	add 0x0C,r14
	add 0x01,r11

loc_8c1858E4:
	mov 0x30,r3
	cmp/ge r3,r11
	bf loc_8c1858b0
	mov.l @(0xF0,PC),r3
	mov.w @(0xE4,PC),r0
	mov.l @r9,r1
	mov.l r12,@(r0,r1)
	mov.l @r3,r2
	xor r8,r2
	mov.l r2,@r3
	mov.l @(0x4,r10),r3
	add 0x01,r3
	bra loc_8c185912
	mov.l r3,@(0x4,r10)

loc_8c185900:
	mov.l @(0xDC,PC),r1
	mov.l @r1,r14
	tst r14,r14
	bt loc_8c185912
	mov.l @(0x8,r10),r6
	mov 0xF8,r5
	mov r13,r7
	jsr @r14
	mov 0x02,r4

loc_8c185912:
	mov.l @(0x4,r15),r0
	stc sr,r2
	mov.w @(0xBC,PC),r3
	and 0x0F,r0
	shll2 r0
	and r3,r2
	shll2 r0
	or r2,r0
	ldc r0,sr
	mov r13,r0
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c18593A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	stc sr, r0
	mov.w @(loc_8c1859D6,pc),r3 ; r3 set to 0xFF0F
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.l r0,@r15
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	mov.w @(loc_8c1859D8,pc),r2 ; r2 set to 0xCFFF
	mov.l @(loc_8c1859E4,pc),r3 ; r3 set to 0xA05F6920
	mov.l @r3,r1
	and r2,r1
	mov.l r1,@r3 ; r3 ??? bc r1 is ???
	mov.l @(loc_8c1859EC,pc),r14 ; r14 set to 0x8C339B60
	mov.l @(loc_8c1859E8,pc),r13 ; r13 set to 0x8C1847DC
	jsr @r13
	mov.l @(0x0C,r14),r4
	jsr @r13
	mov.l @(0x10,r14),r4
	jsr @r13
	mov.l @(0x08,r14),r4
	jsr @r13
	mov.l @(0x04,r14),r4
	mov.l @(loc_8c1859F0,pc),r3 ; r3 set to 0x8C196DD8
	jsr @r3
	nop
	mov.l @(loc_8c1859F8,pc),r2 ; r2 set to 0x8C129728
	mov.l @(loc_8c1859F4,pc),r4 ; r4 set to 0x8C339BF0
	mov.w @(loc_8c1859DA,pc),r6 ; r6 set to 0x240
	jsr @r2
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @r15,r0
	stc sr, r3
	mov.w @(loc_8c1859D6,pc),r2 ; r2 set to 0xFF0F
	and 0x0F,r0
	shll2 r0
	and r2,r3 ; r3 ??
	shll2 r0
	or r3,r0
	ldc r0, sr
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1859A0:
	mov r4,r0
	shll r0
	mov r4,r3
	add r3,r0
	mov.l @(loc_8c1859F4,pc),r2 ; r2 set to 0x8C339BF0
	shll2 r0
	shll r0
	rts
	add r2,r0

;==============================================
loc_8c1859B2:
	sts.l pr,@-r15
	mov.l @(loc_8c1859FC,pc),r3 ; r3 set to 0x8C196ED4
	jsr @r3
	nop
	lds.l @r15+,pr
	rts
	nop

;==============================================
;unused?
loc_8c1859c0:
	sts.l pr,@-r15
	mov.l @(0x3C,PC),r3
	jsr @r3
	nop 
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c1859CE:
	mov.l @(loc_8c185A04,pc),r3 ; r3 set to 0x8C196F28
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1859D4:
	#data 0x10E8
loc_8c1859D6:
	#data 0xFF0F
loc_8c1859D8:
	#data 0xCFFF
loc_8c1859DA:
	#data 0x0240
	#align4

loc_8c1859dc:
	#data 0x8C33A0B4
loc_8c1859E0:
	#data 0x8C339E68
loc_8c1859E4:
	#data 0xA05F6920
loc_8c1859E8:
	#data loc_8c1847DC
loc_8c1859EC:
	#data 0x8C339B60
loc_8c1859F0:
	#data bank19.loc_8c196DD8
loc_8c1859F4:
	#data 0x8C339BF0
loc_8c1859F8:
	#data bank12.loc_8c129728
loc_8c1859FC:
	#data bank19.loc_8c196ED4
loc_8c185A00:
	#data bank19.loc_8c196EE6
loc_8c185A04:
	#data bank19.loc_8c196F28

;==============================================
;unused?
loc_8c185A08:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xE0,PC),r3
	jsr @r3
	nop 
	mov.l @(0xE0,PC),r2
	mov.l r0,@r15
	mov.w @(0xD2,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185a24
	bsr loc_8c185780
	nop 

loc_8c185a24:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
;unused?
loc_8c185a2e:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xC4,PC),r3
	jsr @r3
	nop 
	mov.l @(0xB8,PC),r2
	mov.l r0,@r15
	mov.w @(0xAC,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185a4a
	bsr loc_8c185780
	nop 

loc_8c185a4a:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
;unused?
loc_8c185a54:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xA0,PC),r3
	jsr @r3
	nop 
	mov.l @(0x94,PC),r2
	mov.l r0,@r15
	mov.w @(0x86,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185a70
	bsr loc_8c185780
	nop 

loc_8c185a70:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
;unused?
loc_8c185a7a:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x80,PC),r3
	jsr @r3
	nop 
	mov.l @(0x6C,PC),r2
	mov.l r0,@r15
	mov.w @(0x60,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185a96
	bsr loc_8c185780
	nop 

loc_8c185a96:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
;unused?
loc_8c185aa0:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x5C,PC),r3
	jsr @r3
	nop 
	mov.l @(0x48,PC),r2
	mov.l r0,@r15
	mov.w @(0x3A,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185abc
	bsr loc_8c185780
	nop 

loc_8c185abc:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c185AC6:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x3C,PC),r3
	jsr @r3
	nop 
	mov.l @(0x20,PC),r2
	mov.l r0,@r15
	mov.w @(0x14,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185ae2
	bsr loc_8c185780
	nop 

loc_8c185AE2:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c185Aec:
	#data 0x10E8
	#align4

loc_8c185AF0:
	#data bank19.loc_8c197EB0
loc_8c185Af4:
	#data 0x8C347150
loc_8c185AF8:
	#data bank19.loc_8c197F7C
loc_8c185AFC:
	#data bank19.loc_8c197F38
loc_8c185B00:
	#data bank19.loc_8c197EF4
loc_8c185B04:
	#data bank19.loc_8c197E4E
loc_8c185B08:
	#data bank19.loc_8c197FC0

;==============================================
loc_8c185B0C:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x8,r15),r3
	mov.l r3,@-r15
	mov.l @(0xF4,PC),r3
	jsr @r3
	nop 
	add 0x04,r15
	mov.l @(0xF0,PC),r2
	mov.l r0,@r15
	mov.w @(0xE6,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185b2e
	bsr loc_8c185780
	nop 

loc_8c185b2e:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c185B38:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x10,r15),r3
	mov.l r3,@-r15
	mov.l @(0x10,r15),r2
	mov.l r2,@-r15
	mov.l @(0x10,r15),r3
	mov.l r3,@-r15
	mov.l @(0xC8,PC),r3
	jsr @r3
	nop 
	add 0x0C,r15
	mov.l @(0xBC,PC),r2
	mov.l r0,@r15
	mov.w @(0xB2,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185b62
	bsr loc_8c185780
	nop 

loc_8c185b62:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c185B6C:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x8,r15),r3
	mov.l r3,@-r15
	mov.l @(0xA0,PC),r3
	jsr @r3
	nop 
	add 0x04,r15
	mov.l @(0x90,PC),r2
	mov.l r0,@r15
	mov.w @(0x86,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185b8e
	bsr loc_8c185780
	nop 

loc_8c185b8e:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
;unused?
loc_8c185b98:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x7C,PC),r3
	jsr @r3
	nop 
	mov.l @(0x6C,PC),r2
	mov.l r0,@r15
	mov.w @(0x60,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185bb4
	bsr loc_8c185780
	nop 

loc_8c185bb4:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
;unused?
loc_8c185bbe:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x5C,PC),r3
	jsr @r3
	nop 
	mov.l @(0x44,PC),r2
	mov.l r0,@r15
	mov.w @(0x3A,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185bda
	bsr loc_8c185780
	nop 

loc_8c185bda:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 


;==============================================
loc_8c185BE4:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x38,PC),r3
	jsr @r3
	nop 
	mov.l @(0x20,PC),r2
	mov.l r0,@r15
	mov.w @(0x14,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185c00
	bsr loc_8c185780
	nop 

loc_8c185c00:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c185c0a:
	#data 0x10E8
	#align4

loc_8c185C0C:
	#data bank19.loc_8c198012
loc_8c185C10:
	#data 0x8C347150
loc_8c185C14:
	#data bank19.loc_8c198072
loc_8c185C18:
	#data bank19.loc_8c1980DC
loc_8c185C1C:
	#data bank19.loc_8c19818C
loc_8c185C20:
	#data bank19.loc_8c1981DC
loc_8c185C24:
	#data bank19.loc_8c19822C

;==============================================
;unused
loc_8c185c28:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x138,PC),r3
	jsr @r3
	nop 
	mov.l @(0x138,PC),r2
	mov.l r0,@r15
	mov.w @(0x12A,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185c44
	bsr loc_8c185780
	nop 

loc_8c185c44:
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
;unused
loc_8c185c4e:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x11C,PC),r3
	jsr @r3
	nop 
	mov.l @(0x110,PC),r2
	mov.l r0,@r15
	mov.w @(0x104,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bt loc_8c185c6a
	bsr loc_8c185780
	nop 

loc_8c185c6a:
	mov.l @r15,r0

loc_8c185c6c:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
;unused?
loc_8c185c74:
	mov.l @(0xFC,PC),r3
	jmp @r3
	nop 

;==============================================
loc_8c185C7A:
	mov.l @(loc_8c185D78,pc),r3 ; r3 set to 0x8C196F42
	jmp @r3
	nop

;==============================================
loc_8c185C80:
	mov.l @(loc_8c185D7C,pc),r3 ; r3 set to 0x8C196F52
	jmp @r3
	nop

;==============================================
loc_8c185C86:
	mov r4,r7
	mov.l r12,@-r15
	mov.l @(loc_8c185D80,pc),r6 ; r6 set to 0x80000000
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @r4+,r12
	add 0x04,r7
	mov 0x00,r1 ; r1 set to 0x00

loc_8c185C94:
	mov r6,r3 ; r3 set to 0x80000000
	tst r12,r3
	bt loc_8c185CA8
	cmp/eq r6,r5
	bf loc_8c185CA4
	mov r7,r0 ; r0 ??? bc r7 is ???
	rts
	mov.l @r15+,r12

;==============================================
loc_8c185CA4:
	add 0x04,r4
	mov r4,r7

loc_8c185CA8:
	add 0x01,r1
	shlr r6
	cmp/ge r0,r1
	bf loc_8c185C94
	mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
	rts
	mov.l @r15+,r12

;==============================================
loc_8c185CB6:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov.l r5,@(0x04,r15)
	mov 0x01,r5 ; r5 set to 0x01
	bsr loc_8c185C86
	mov.l @(0x04,r15),r4
	mov r0,r4
	tst r4,r4
	bf loc_8c185CD2
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov 0xFF,r0

;==============================================
loc_8c185CD2:
	mov.b @(0x01,r4),r0
	mov.b @r4,r1
	extu.b r0,r0
	mov.l @r15,r3
	shll16 r0
	mov r0,r2
	mov.b @(0x02,r4),r0
	extu.b r1,r1
	extu.b r0,r0
	shll8 r0
	or r0,r2
	mov.b @(0x03,r4),r0
	shll16 r1
	shll8 r1
	extu.b r0,r0
	or r1,r2
	or r0,r2
	mov 0x00,r0 ; r0 set to 0x00
	mov.l r2,@r3
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c185D00:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov 0x02,r5 ; r5 set to 0x02
	mov r4,r14
	bsr loc_8c185C86
	mov.l @r15,r4
	mov r0,r4
	tst r4,r4
	bf loc_8c185D20
	mov 0xFF,r0 ; r0 set to 0xFFFFFFFF
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c185D20:
	mov r4,r5
	add 0x02,r5
	mov.b @r4,r3
	extu.b r3,r3
	add 0x01,r3
	mov.w r3,@r14
	mov 0xF9,r3 ; r3 set to 0xFFFFFFF9
	mov.b @(0x01,r4),r0
	extu.b r0,r0
	add 0x01,r0
	shll2 r0
	shll2 r0
	shll r0
	mov.w r0,@(0x02,r14)
	mov.b @r5,r0
	extu.b r0,r0
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@(0x04,r14)
	mov.b @r5,r0
	extu.b r0,r0
	and 0x0F,r0
	mov.w r0,@(0x06,r14)
	mov.b @(0x03,r4),r0
	extu.b r0,r0
	shld r3, r0
	and 0x01,r0
	mov.w r0,@(0x08,r14)
	mov 0x00,r0 ; r0 set to 0x00
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c185D64:
	#data 0x10E8
	#align4

loc_8c185D68:
	#data bank19.loc_8c198148
loc_8c185D6c:
	#data 0x8C347150
loc_8c185D70:
	#data bank19.loc_8c19828C
loc_8c185D74:
	#data bank19.loc_8c196FBE
loc_8c185D78:
	#data bank19.loc_8c196F42
loc_8c185D7C:
	#data bank19.loc_8c196F52
loc_8c185D80:
	#data 0x80000000

;==============================================
loc_8c185D84:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x10,r5
	bsr loc_8c185c86
	mov.l @(0x4,r15),r4
	mov r0,r4
	tst r4,r4
	bf loc_8c185da0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov 0xFF,r0

loc_8c185Da0:
	mov.b @(0x1,r4),r0
	mov.b @r4,r1
	extu.b r0,r0
	mov.l @r15,r3
	shll16 r0
	mov r0,r2
	mov.b @(0x2,r4),r0
	extu.b r1,r1
	extu.b r0,r0
	shll8 r0
	or r0,r2
	mov.b @(0x3,r4),r0
	shll16 r1
	shll8 r1
	extu.b r0,r0
	or r1,r2
	or r0,r2
	mov 0x00,r0
	mov.l r2,@r3
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c185DCE:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov 0x04,r5 ; r5 set to 0x04
	mov r4,r14
	bsr loc_8c185C86
	mov.l @r15,r4
	mov r0,r4
	tst r4,r4
	bf loc_8c185DEE
	mov 0xFF,r0 ; r0 set to 0xFFFFFFFF
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c185DEE:
	mov r4,r5
	add 0x03,r5
	mov.b @r4,r3
	extu.b r3,r3
	add 0x01,r3
	mov.w r3,@r14
	mov.b @(0x01,r4),r0
	extu.b r0,r0
	add 0x01,r0
	shll2 r0
	shll2 r0
	shll r0
	mov.w r0,@(0x02,r14)
	mov.b @(0x02,r4),r0
	extu.b r0,r0
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@(0x04,r14)
	mov.b @r5,r0
	extu.b r0,r0
	shlr2 r0
	shlr2 r0
	shlr2 r0
	and 0x03,r0
	mov.b r0,@(0x06,r14)
	mov.b @r5,r0
	extu.b r0,r0
	shlr2 r0
	shlr2 r0
	shlr r0
	and 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x00,r0 ; r0 set to 0x00
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c185e3a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov 0x08,r5
	mov r4,r14
	bsr loc_8c185c86
	mov.l @r15,r4
	mov r0, r4
	tst r4, r4
	bf loc_8c185e5a
	mov 0xFF,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c185e5a:
	mov.b @r4,r3
	mov.b r3,@r14
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r14)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r14)
	mov.b @(0x3,r4),r0
	mov.b r0,@(0x3,r14)
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c185e74:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x20,r5
	bsr loc_8c185c86
	mov.l @(0x4,r15),r4
	mov r0,r4
	tst r4,r4
	bf loc_8c185e90
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov 0xFF,r0

;==============================================
loc_8c185e90:
	mov.b @(0x1,r4),r0
	mov.b @r4,r1
	extu.b r0,r0
	mov.l @r15,r3
	shll16 r0
	mov r0,r2
	mov.b @(0x2,r4),r0
	extu.b r1,r1
	extu.b r0,r0
	shll8 r0
	or r0,r2
	mov.b @(0x3,r4),r0
	shll16 r1
	shll8 r1
	extu.b r0,r0
	or r1,r2
	or r0,r2
	mov 0x00,r0
	mov.l r2,@r3
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c185EBE:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov.l r5,@(0x04,r15)
	mov.w @(loc_8c185EF4,pc),r5 ; r5 set to 0x100
	bsr loc_8c185C86
	mov.l @(0x04,r15),r4
	mov r0,r4
	tst r4,r4
	bf loc_8c185EDA
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov 0xFF,r0

;==============================================
loc_8c185EDA:
	mov.b @r4,r2
	mov.l @r15,r3
	extu.b r2,r2
	mov.l r2,@r3
	mov.b @(0x01,r4),r0
	mov.l @r15,r3
	extu.b r0,r0
	mov.l r0,@(0x04,r3)
	mov 0x00,r0 ; r0 set to 0x00
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c185EF4:
	#data 0x0100

;==============================================
loc_8c185EF6:
	mov.l r14,@-r15
	mov r4,r0
	sts.l pr,@-r15
	cmp/eq 0x01,r0
	bt/s loc_8c185F2A
	mov r5,r14
	cmp/eq 0x02,r0
	bt loc_8c185F34
	cmp/eq 0x04,r0
	bt loc_8c185F3E
	cmp/eq 0x03,r0
	bt loc_8c185F48
	cmp/eq 0x06,r0
	bt loc_8c185F52
	cmp/eq 0x05,r0
	bt loc_8c185F5C
	cmp/eq 0x00,r0
	bt loc_8c185F66
	cmp/eq 0x07,r0
	bt loc_8c185F70
	cmp/eq 0x08,r0
	bt loc_8c185F7A
	cmp/eq 0x09,r0
	bt loc_8c185F84
	bra loc_8c185F8E
	nop

loc_8c185F2A:
	mov.l @(loc_8c186044,pc),r3 ; r3 set to 0x8C196F96
	jsr @r3
	mov r14,r4
	bra loc_8c185F96
	nop

loc_8c185F34:
	mov.l @(loc_8c186048,pc),r3 ; r3 set to 0x8C196F62
	jsr @r3
	mov r14,r4
	bra loc_8c185F96
	nop

loc_8c185F3E:
	mov.l @(loc_8c18604C,pc),r3 ; r3 set to 0x8C196FEA
	jsr @r3
	mov r14,r4
	bra loc_8c185F96
	nop

loc_8c185F48:
	mov.l @(loc_8c186050,pc),r3 ; r3 set to 0x8C196FAA
	jsr @r3
	mov r14,r4
	bra loc_8c185F96
	nop

loc_8c185F52:
	mov.l @(loc_8c186054,pc),r3 ; r3 set to 0x8C196FD6
	jsr @r3
	mov r14,r4
	bra loc_8c185F96
	nop

loc_8c185F5C:
	mov.l @(loc_8c186058,pc),r3 ; r3 set to 0x8C196F7E
	jsr @r3
	mov r14,r4
	bra loc_8c185F96
	nop

loc_8c185F66:
	mov.l @(loc_8c18605C,pc),r3 ; r3 set to 0x8C196FFE
	jsr @r3
	mov r14,r4
	bra loc_8c185F96
	nop

loc_8c185F70:
	mov.l @(loc_8c186060,pc),r3 ; r3 set to 0x8C197022
	jsr @r3
	mov r14,r4
	bra loc_8c185F96
	nop

loc_8c185F7A:
	mov.l @(loc_8c186064,pc),r3 ; r3 set to 0x8C197036
	jsr @r3
	mov r14,r4
	bra loc_8c185F96
	nop

loc_8c185F84:
	mov.l @(loc_8c186068,pc),r3 ; r3 set to 0x8C197070
	jsr @r3
	mov r14,r4
	bra loc_8c185F96
	nop

loc_8c185F8E:
	lds.l @r15+,pr
	mov 0xFF,r0 ; r0 set to 0xFFFFFFFF
	rts
	mov.l @r15+,r14

loc_8c185F96:
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c185F9E:
	mov r4,r0
	cmp/eq 0x01,r0
	bt loc_8c185FCC
	cmp/eq 0x02,r0
	bt loc_8c185FD2
	cmp/eq 0x04,r0
	bt loc_8c185FD8
	cmp/eq 0x03,r0
	bt loc_8c185FDE
	cmp/eq 0x06,r0
	bt loc_8c185FE4
	cmp/eq 0x05,r0
	bt loc_8c185FEA
	cmp/eq 0x00,r0
	bt loc_8c185FF0
	cmp/eq 0x07,r0
	bt loc_8c185FF6
	cmp/eq 0x08,r0
	bt loc_8c185FFC
	cmp/eq 0x09,r0
	bt loc_8c186002
	bra loc_8c186008
	nop

loc_8c185FCC:
	mov.l @(loc_8c18606C,pc),r3 ; r3 set to 0x8C196FA0
	jmp @r3
	nop

loc_8c185FD2:
	mov.l @(loc_8c186070,pc),r2 ; r2 set to 0x8C196F6E
	jmp @r2
	nop

loc_8c185FD8:
	mov.l @(loc_8c186074,pc),r3 ; r3 set to 0x8C196FF4
	jmp @r3
	nop

loc_8c185FDE:
	mov.l @(loc_8c186078,pc),r2 ; r2 set to 0x8C196FB4
	jmp @r2
	nop

loc_8c185FE4:
	mov.l @(loc_8c18607C,pc),r3 ; r3 set to 0x8C196FE0
	jmp @r3
	nop

loc_8c185FEA:
	mov.l @(loc_8c186080,pc),r2 ; r2 set to 0x8C196F8C
	jmp @r2
	nop

loc_8c185FF0:
	mov.l @(loc_8c186084,pc),r3 ; r3 set to 0x8C19700E
	jmp @r3
	nop

loc_8c185FF6:
	mov.l @(loc_8c186088,pc),r2 ; r2 set to 0x8C19702C
	jmp @r2
	nop

loc_8c185FFC:
	mov.l @(loc_8c18608C,pc),r3 ; r3 set to 0x8C197040
	jmp @r3
	nop

loc_8c186002:
	mov.l @(loc_8c186090,pc),r2 ; r2 set to 0x8C19707A
	jmp @r2
	nop

loc_8c186008:
	rts
	mov 0xFF,r0

;==============================================
loc_8c18600c:
	mov.l @(0x84,PC),r0
	rts
	nop

;==============================================
loc_8c186012:
	mov.l @(loc_8c186098,pc),r6 ; r6 set to 0x8C33A0CC
	mov.l @r6,r3
	mov.l r3,@r4
	mov.l @(0x04,r6),r2
	rts
	mov.l r2,@r5

;==============================================
loc_8c18601E:
	mov.l @(loc_8c18609C,pc),r3 ; r3 set to 0x8C33A0C4
	rts
	mov.l @r3,r0

;==============================================
loc_8c186024:
	mov.l @(loc_8c1860A0,pc),r3 ; r3 set to 0x8C33A0C0
	add 0x01,r4
	rts
	mov.l r4,@r3

;==============================================
loc_8c18602C:
	mov.l @(loc_8c1860A4,pc),r2 ; r2 set to 0x8C339E6C
	rts
	mov.l r4,@r2

;==============================================
loc_8c186032:
	mov 0x1F,r3
	cmp/hi r3,r4
	bt loc_8c18603e
	mov.l @(0x6C,PC),r0
	shll2 r4
	mov.l r5,@(r0,r4)

loc_8c18603E:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c186044:
	#data bank19.loc_8c196F96
loc_8c186048:
	#data bank19.loc_8c196F62
loc_8c18604C:
	#data bank19.loc_8c196FEA
loc_8c186050:
	#data bank19.loc_8c196FAA
loc_8c186054:
	#data bank19.loc_8c196FD6
loc_8c186058:
	#data bank19.loc_8c196F7E
loc_8c18605C:
	#data bank19.loc_8c196FFE
loc_8c186060:
	#data bank19.loc_8c197022
loc_8c186064:
	#data bank19.loc_8c197036
loc_8c186068:
	#data bank19.loc_8c197070
loc_8c18606C:
	#data bank19.loc_8c196FA0
loc_8c186070:
	#data bank19.loc_8c196F6E
loc_8c186074:
	#data bank19.loc_8c196FF4
loc_8c186078:
	#data bank19.loc_8c196FB4
loc_8c18607C:
	#data bank19.loc_8c196FE0
loc_8c186080:
	#data bank19.loc_8c196F8C
loc_8c186084:
	#data bank19.loc_8c19700E
loc_8c186088:
	#data bank19.loc_8c19702C
loc_8c18608C:
	#data bank19.loc_8c197040
loc_8c186090:
	#data bank19.loc_8c19707A
loc_8c186094:
	#data 0x8C339E30
loc_8c186098:
	#data 0x8C33A0CC
loc_8c18609C:
	#data 0x8C33A0C4
loc_8c1860A0:
	#data 0x8C33A0C0
loc_8c1860A4:
	#data 0x8C339E6C
loc_8c1860A8:
	#data 0x8C339B70

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1860AC:
#data 0x6743D241
#data 0x4700907D
#data 0x013E6322
#data 0xD13F371C
#data 0x47006373
#data 0x4708373C
#data 0x1752371C
#data 0x27421761
#data 0xE000000B
;==============================================
#data 0x4F222FE6
#data 0xD3397FF8
#data 0x1F512F42
#data 0x401B6032
#data 0xD2388909
#data 0x420BD136
#data 0x7F042F16
#data 0x7F08E0FE
#data 0x000B4F26
#data 0xD3346EF6
#data 0x64F2430B
#data 0x4E156E03
#data 0x55F18B03
#data 0xBFD166E3
#data 0xD32C64F2
#data 0xD029E100
#data 0x22106232
#data 0x904B6202
#data 0x2118012E
#data 0xBB2F8901
#data 0x60E30009
#data 0x4F267F08
#data 0x6EF6000B
;==============================================
#data 0x4F222FE6
#data 0xD3227FF8
#data 0x1F512F42
#data 0x401B6032
#data 0xD2218909
#data 0x420BD11F
#data 0x7F042F16
#data 0x7F08E0FE
#data 0x000B4F26
#data 0xD31E6EF6
#data 0x64F2430B
#data 0x4E156E03
#data 0x55F18B03
#data 0xBFA366E3
#data 0xD31564F2
#data 0xD012E100
#data 0x22106232
#data 0x901D6202
#data 0x2118012E
#data 0xBB018901
#data 0x60E30009
#data 0x4F267F08
#data 0x6EF6000B
;==============================================
#data 0x4F222FE6
#data 0xD30B7FF8
#data 0x1F512F42
#data 0x401B6032
#data 0xD20A891A
#data 0x420BD108
#data 0x7F042F16
#data 0x7F08E0FE
#data 0x000B4F26
#data 0x0FC06EF6
#data 0x000010E8
#data 0x8C347150
#data 0x8C339E70

#align4
loc_8c1861BC:
#data bank19.loc_8c198320

loc_8c1861C0:
#data bank1c.loc_8c1c58E0

loc_8c1861C4:
#data bank19.loc_8c196E7C

loc_8c1861C8:
#data bank19.loc_8c197EDC

loc_8c1861CC:
#data bank19.loc_8c197FA8
#data 0x430BD33B
#data 0x6E0364F2
#data 0x8B034E15
#data 0x66E355F1
#data 0x64F2BF64
#data 0xE100D337
#data 0x6232D037
#data 0x62022210
#data 0x012E9065
#data 0x89012118
#data 0x0009BAC2
#data 0x7F0860E3
#data 0x000B4F26
#data 0x2FE66EF6
#data 0x7FF84F22
#data 0x2F42D32D
#data 0x60321F51
#data 0x8909401B
#data 0xD12CD22D
#data 0x2F16420B
#data 0xE0FE7F04
#data 0x4F267F08
#data 0x6EF6000B
;==============================================
#data 0x430BD329
#data 0x6E0364F2
#data 0x8B034E15
#data 0x66E355F1
#data 0x64F2BF36
#data 0xE100D320
#data 0x6232D020
#data 0x62022210
#data 0x012E9037
#data 0x89012118
#data 0x0009BA94
#data 0x7F0860E3
#data 0x000B4F26
#data 0x2FE66EF6
#data 0x7FF84F22
#data 0x2F42D316
#data 0x60321F61
#data 0x8909401B
#data 0xD115D216
#data 0x2F16420B
#data 0xE0FE7F04
#data 0x4F267F08
#data 0x6EF6000B
;==============================================
#data 0x430BD313
#data 0x6E0364F2
#data 0x8B034E15
#data 0x66E355F1
#data 0x64F2BF08
#data 0xE100D309
#data 0x6232D009
#data 0x62022210
#data 0x012E9009
#data 0x89012118
#data 0x0009BA66
#data 0x7F0860E3
#data 0x000B4F26
#data 0x10E86EF6

#align4
loc_8c1862C0:
#data bank19.loc_8c197F64

loc_8c1862C4:
#data bank19.loc_8c198320
#data 0x8C347150

#align4
loc_8c1862CC:
#data bank1c.loc_8c1c58E0

loc_8c1862D0:
#data bank19.loc_8c196E7C

loc_8c1862D4:
#data bank19.loc_8c197F20

loc_8c1862D8:
#data bank19.loc_8c197E7A


loc_8c1862DC:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.l @(loc_8c1863C0,pc),r3 ; r3 set to 0x8C198320
mov.l r4,@r15
mov.l r7,@(0x04,r15)
mov.l @r3,r0
tas.b @r0
bt loc_8c186302
mov.l @(loc_8c1863C8,pc),r2 ; r2 set to 0x8C196E7C
mov.l @(loc_8c1863C4,pc),r1 ; r1 set to 0x8C1C58E0
jsr @r2
mov.l r1,@-r15
add 0x04,r15
mov 0xFE,r0 ; r0 set to 0xFFFFFFFE
add 0x08,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

loc_8c186302:
mov.l @(loc_8c1863cc,pc),r3
jsr @r3
mov.l @r15,r4
mov r0,r14
cmp/pl r14
bf loc_8c186316
mov.l @(0x04,r15),r5
mov r14,r6
bsr loc_8c1860ac
mov.l @r15,r4

loc_8c186316:
mov.l @(loc_8c1863c0,pc),r3
mov 0x00,r1
mov.l @(loc_8C1863D0,pc),r0
mov.l @r3,r2
mov.b r1,@r2
mov.l @r0,r2
mov.w @(loc_8C1863BC,pc),r0
mov.l @(r0,r2),r1
tst r1,r1
bt loc_8c18632e
bsr loc_8c185780
nop 

loc_8c18632e:
mov r14,r0
add 0x08,r15
lds.l @r15+,pr 
rts 
mov.l @r15+,r14
;==============================================
#data 0x2FE6
#data 0x4F22
#data 0x7FFC
#data 0xD320
#data 0x2F42
#data 0x6032
#data 0x401B
#data 0x8909
#data 0xD21F
#data 0xD11E
#data 0x420B
#data 0x2F16
#data 0x7F04
#data 0xE0FE
#data 0x7F04
#data 0x4F26
#data 0x000B
#data 0x6EF6
;==============================================
#data 0x53F3
#data 0x2F36
#data 0xD31C
#data 0x430B
#data 0x54F1
#data 0x6E03
#data 0x4E15
#data 0x8F04
#data 0x7F04
#data 0x55F4
#data 0x66E3
#data 0xBE9B
#data 0x64F2
#data 0xD312
#data 0xE100
#data 0xD015
#data 0x6232
#data 0x2210
#data 0x6202
#data 0x901B
#data 0x012E
#data 0x2118
#data 0x8901
#data 0xB9F9
#data 0x0009
#data 0x60E3
#data 0x7F04
#data 0x4F26
#data 0x000B
#data 0x6EF6
;==============================================
#data 0x2FE6
#data 0x4F22
#data 0x7FFC
#data 0xD308
#data 0x2F42
#data 0x6032
#data 0x401B
#data 0x8917
#data 0xD207
#data 0xD106
#data 0x420B
#data 0x2F16
#data 0x7F04
#data 0xE0FE
#data 0x7F04
#data 0x4F26
#data 0x000B
#data 0x6EF6
;==============================================

loc_8C1863BC:
#data 0x10E8
#data 0x0000

#align4
loc_8c1863c0:
#data bank19.loc_8c198320

loc_8c1863c4:
#data 0x58E0
#data 0x8C1C

loc_8c1863c8:
#data 0x6E7C
#data 0x8C19

#align4
loc_8c1863cc:
#data bank19.loc_8c197fec

loc_8C1863D0:
#data 0x8C347150

loc_8c1863d4:
#data 0x8044
#data 0x8C19
#data 0x53F5
#data 0x2F36
#data 0x52F5
#data 0x2F26
#data 0x53F5
#data 0x2F36
#data 0xD33D
#data 0x430B
#data 0x54F3
#data 0x6E03
#data 0x4E15
#data 0x8F04
#data 0x7F0C
#data 0x55F6
#data 0x66E3
#data 0xBE59
#data 0x64F2
#data 0xD339
#data 0xE100
#data 0xD039
#data 0x6232
#data 0x2210
#data 0x6202
#data 0x9067
#data 0x012E
#data 0x2118
#data 0x8901
#data 0xB9B7
#data 0x0009
#data 0x60E3
#data 0x7F04
#data 0x4F26
#data 0x000B
#data 0x6EF6
;==============================================
#data 0x2FE6
#data 0x4F22
#data 0x7FFC
#data 0xD32F
#data 0x2F42
#data 0x6032
#data 0x401B
#data 0x8909
#data 0xD22F
#data 0xD12E
#data 0x420B
#data 0x2F16
#data 0x7F04
#data 0xE0FE
#data 0x7F04
#data 0x4F26
#data 0x000B
#data 0x6EF6
;==============================================
#data 0x53F3
#data 0x2F36
#data 0xD32A
#data 0x430B
#data 0x54F1
#data 0x6E03
#data 0x4E15
#data 0x8F04
#data 0x7F04
#data 0x55F4
#data 0x66E3
#data 0xBE29
#data 0x64F2
#data 0xD321
#data 0xE100
#data 0xD021
#data 0x6232
#data 0x2210
#data 0x6202
#data 0x9037
#data 0x012E
#data 0x2118
#data 0x8901
#data 0xB987
#data 0x0009
#data 0x60E3
#data 0x7F04
#data 0x4F26
#data 0x000B
#data 0x6EF6
;==============================================
#data 0x2FE6
#data 0x4F22
#data 0x7FF8
#data 0xD317
#data 0x2F42
#data 0x1F61
#data 0x6032
#data 0x401B
#data 0x8909
#data 0xD217
#data 0xD115
#data 0x420B
#data 0x2F16
#data 0x7F04
#data 0xE0FE
#data 0x7F08
#data 0x4F26
#data 0x000B
#data 0x6EF6
;==============================================
#data 0xD314
#data 0x430B
#data 0x64F2
#data 0x6E03
#data 0x4E15
#data 0x8B03
#data 0x55F1
#data 0x66E3
#data 0xBDFB
#data 0x64F2
#data 0xD30A
#data 0xE100
#data 0xD00A
#data 0x6232
#data 0x2210
#data 0x6202
#data 0x9009
#data 0x012E
#data 0x2118
#data 0x8901
#data 0xB959
#data 0x0009
#data 0x60E3
#data 0x7F08
#data 0x4F26
#data 0x000B
#data 0x6EF6
;==============================================
#data 0x10E8
#data 0x0000

loc_8c1864dc:
#data 0x80AC
#data 0x8C19

loc_8c1864e0:
#data 0x8320
#data 0x8C19
#data 0x7150
#data 0x8C34

loc_8c1864e8:
#data 0x58E0
#data 0x8C1C

loc_8c1864ec:
#data 0x6E7C
#data 0x8C19

loc_8c1864f0:
#data 0x810E
#data 0x8C19

loc_8c1864f4:
#data 0x81B8
#data 0x8C19
#data 0x2FE6
#data 0x4F22
#data 0x7FF8
#data 0xD32C
#data 0x2F42
#data 0x1F61
#data 0x6032
#data 0x401B
#data 0x8909
#data 0xD22B
#data 0xD129
#data 0x420B
#data 0x2F16
#data 0x7F04
#data 0xE0FE
#data 0x7F08
#data 0x4F26
#data 0x000B
#data 0x6EF6
;==============================================
#data 0xD327
#data 0x430B
#data 0x64F2
#data 0x6E03
#data 0x4E15
#data 0x8B03
#data 0x55F1
#data 0x66E3
#data 0xBDBD
#data 0x64F2
#data 0xD31F
#data 0xE100
#data 0xD022
#data 0x6232
#data 0x2210
#data 0x6202
#data 0x9036
#data 0x012E
#data 0x2118
#data 0x8901
#data 0xB91B
#data 0x0009
#data 0x60E3
#data 0x7F08
#data 0x4F26
#data 0x000B
#data 0x6EF6
;==============================================
#data 0x2FE6
#data 0x4F22
#data 0x7FFC
#data 0xD315
#data 0x2F42
#data 0x6032
#data 0x401B
#data 0x8909
#data 0xD214
#data 0xD113
#data 0x420B
#data 0x2F16
#data 0x7F04
#data 0xE0FE
#data 0x7F04
#data 0x4F26
#data 0x000B
#data 0x6EF6
;==============================================
#data 0xD312
#data 0x430B
#data 0x64F2
#data 0x6E03
#data 0x4E15
#data 0x8B03
#data 0x55F3
#data 0x66E3
#data 0xBD90
#data 0x64F2
#data 0xD308
#data 0xE100
#data 0xD00B
#data 0x6232
#data 0x2210
#data 0x6202
#data 0x9009
#data 0x012E
#data 0x2118
#data 0x8901
#data 0xB8EE
#data 0x0009
#data 0x60E3
#data 0x7F04
#data 0x4F26
#data 0x000B
#data 0x6EF6
;==============================================
#data 0x10E8

loc_8c1865b0:
#data 0x8320
#data 0x8C19

loc_8c1865b4:
#data 0x58E0
#data 0x8C1C

loc_8c1865b8:
#data 0x6E7C
#data 0x8C19

loc_8c1865bc:
#data 0x8208
#data 0x8C19
#data 0x7150
#data 0x8C34

loc_8c1865c4:
#data 0x8268
#data 0x8C19

loc_8c1865c8:
#data 0x9115
#data 0xE220
#data 0x341C

loc_8c1865ce:
#data 0xE306

loc_8c1865d0:
#data 0xE600
#data 0x9111
#data 0xE708

loc_8c1865d6:
#data 0x6054
#data 0xC808
#data 0x8900
#data 0x261B

loc_8c1865de:
#data 0x4101
#data 0x4710
#data 0x8BF8
#data 0x2460
#data 0x7401
#data 0x4310
#data 0x8BF1
#data 0x4210
#data 0x8FEE
#data 0x74F4
#data 0x000B
#data 0x0009
;==============================================
#data 0x00BA
#data 0x0080

loc_8c1865fa:
#data 0xE220
#data 0x7405

loc_8c1865fe:
#data 0xE306

loc_8c186600:
#data 0xE600
#data 0xE101
#data 0xE708

loc_8c186606:
#data 0x6054
#data 0xC808
#data 0x8900
#data 0x261B

loc_8c18660e:
#data 0x4100
#data 0x4710
#data 0x8BF8
#data 0x2460
#data 0x74FF
#data 0x4310
#data 0x8BF1
#data 0x4210
#data 0x8FEE
#data 0x740C
#data 0x000B
#data 0x0009
;==============================================

loc_8c186626:
#data 0x9113
#data 0xE220
#data 0x341C

loc_8c18662c:
#data 0xE306

loc_8c18662e:
#data 0xE600
#data 0xE101
#data 0xE708

loc_8c186634:
#data 0x6054
#data 0xC808
#data 0x8900
#data 0x261B

loc_8c18663c:
#data 0x4710
#data 0x8FF9
#data 0x4100
#data 0x2464
#data 0x4310
#data 0x8BF2
#data 0x4210
#data 0x8BEF
#data 0x000B
#data 0x0009
;==============================================
#data 0x00C0

loc_8c186652:
#data 0x930F

loc_8c186654:
#data 0xE600
#data 0x910E
#data 0xE708

loc_8c18665a:
#data 0x6054
#data 0xC808
#data 0x8900
#data 0x261B

loc_8c186662:
#data 0x4101
#data 0x4710
#data 0x8BF8
#data 0x2460
#data 0x4310
#data 0x8FF2
#data 0x7401
#data 0x000B
#data 0x0009
;==============================================
#data 0x00C0
#data 0x0080

loc_8c186678:
sts.l pr,@-r15
bsr loc_8c18668A
nop
lds.l @r15+,pr
mov 0x03,r4 ; r4 set to 0x03
shlr8 r0
and r0,r4 ; r4 ??? bc r0 is ???
rts
mov r4,r0
;==============================================

loc_8c18668A:
mov.l @(loc_8c186698,pc),r3 ; r3 set to 0xFF800030
mov.w @(loc_8c186696,pc),r2 ; r2 set to 0x300
mov.w @r3,r4
extu.w r4,r0
rts
and r2,r0
;==============================================

loc_8c186696:
#data 0x0300

#align4
loc_8c186698:
#data 0xFF800030


loc_8c18669C:
mov.l @(loc_8c18675C,pc),r3 ; r3 set to 0x8C33A130
mov.l r4,@r3 ; r3 ??? bc r4 is ???
rts
mov r4,r0
;==============================================

#align4
loc_8c1866A4:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0x9C4D7FF8
#data 0xD3286D43
#data 0xD2280DC7
#data 0xD828DA29
#data 0x9B460C1A
#data 0x69322F52
#data 0x3C2C1FC1

#align4
loc_8c1866D0:
#data 0x4A0B65F2
#data 0x6E0364D3
#data 0x890E2EE8
#data 0x23386382
#data 0x3EB08901
#data 0x8928

loc_8c1866E6:
#data 0x53CD
#data 0x73012998
#data 0x8FEF1C3D
#data 0xD11A79FF
#data 0x88FF6012
#data 0x89EA

loc_8c1866FA:
#data 0x5CF1
#data 0xD31862D3
#data 0x42084208
#data 0x3C3CD119
#data 0x4208D319
#data 0x321C4200
#data 0x56CC2F22
#data 0x760157CD
#data 0x76FF1C6C
#data 0x555265F2
#data 0x64D3430B
#data 0x880060E3
#data 0x91158904
#data 0x89033010
#data 0x0009A005

#align4
loc_8c186734:
#data 0xE000A004

#align4
loc_8c186738:
#data 0xA001900E
#data 0x0009

loc_8c18673E:
#data 0xD00D

#align4
loc_8c186740:
#data 0x4F267F08
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;==============================================
#data 0xFF300148
#data 0x0000FF01

#align4
loc_8c18675C:
#data 0x8C33A130
#data 0x8C33C56C

#align4
loc_8c186764:
#data bank1c.loc_8c1c5964

loc_8c186768:
#data bank19.loc_8c1983D0
#data 0x8C33A154

#align4
loc_8c186770:
#data loc_8c186D46
#data 0xFFFF0000

#align4
loc_8c186778:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0x9C4F7FF4
#data 0xD3296D43
#data 0xD2290DC7
#data 0x9B4AD829
#data 0xDA290C1A
#data 0x1F612F52
#data 0x1FC26932
#data 0x3C2C

loc_8c1867A6:
#data 0x65F2
#data 0x4A0B56F1
#data 0x6E0364D3
#data 0x890E2EE8
#data 0x23386382
#data 0x3EB08901
#data 0x8928

loc_8c1867BE:
#data 0x53CD
#data 0x73012998
#data 0x8FEE1C3D
#data 0xD11A79FF
#data 0x88FF6012
#data 0x89E9

loc_8c1867D2:
#data 0x5CF2
#data 0xD31862D3
#data 0x42084208
#data 0x3C3CD119
#data 0x4208D319
#data 0x321C4200
#data 0x56CC2F22
#data 0x760157CD
#data 0x76FF1C6C
#data 0x555265F2
#data 0x64D3430B
#data 0x880060E3
#data 0x91158904
#data 0x89033010
#data 0x0009A005

#align4
loc_8c18680C:
#data 0xE000A004

#align4
loc_8c186810:
#data 0xA001900E
#data 0x0009

loc_8c186816:
#data 0xD00D

#align4
loc_8c186818:
#data 0x4F267F0C
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;==============================================
#data 0xFF300148
#data 0x0000FF01
#data 0x8C33A130
#data 0x8C33C56C

#align4
loc_8c18683C:
#data bank1c.loc_8c1c5964

loc_8c186840:
#data bank19.loc_8c1985AA
#data 0x8C33A154

#align4
loc_8c186848:
#data loc_8c186D46
#data 0xFFFF0000

#align4
loc_8c186850:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0x9C557FF4
#data 0xD32C6D43
#data 0xD22C0DC7
#data 0x9B50D82C
#data 0xDA2C0C1A
#data 0x1F612F52
#data 0x1FC26932
#data 0x3C2C

loc_8c18687E:
#data 0x65F2
#data 0x4A0B56F1
#data 0x6E0364D3
#data 0x890E2EE8
#data 0x23386382
#data 0x3EB08901
#data 0x892B

loc_8c186896:
#data 0x53CD
#data 0x73012998
#data 0x8FEE1C3D
#data 0xD11D79FF
#data 0x88FF6012
#data 0x89E9

loc_8c1868AA:
#data 0x5CF2
#data 0xD31B62D3
#data 0x42084208
#data 0x3C3CD11C
#data 0x4208D31C
#data 0x321C4200
#data 0x56CC2F22
#data 0x760157CD
#data 0x76FF1C6C
#data 0x555265F2
#data 0x64D3430B
#data 0x880060E3
#data 0x911B8907
#data 0x89063010
#data 0x30109119
#data 0xA0088906
#data 0x0009

loc_8c1868EA:
#data 0xA007
#data 0xE000

loc_8c1868EE:
#data 0x9011
#data 0x0009A004

#align4
loc_8c1868F4:
#data 0xA001900F
#data 0x0009

loc_8c1868FA:
#data 0xD00D

#align4
loc_8c1868FC:
#data 0x4F267F0C
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;==============================================
#data 0xFF300148
#data 0xFF40FF01
#data 0x8C33A130
#data 0x8C33C56C

#align4
loc_8c186920:
#data bank1c.loc_8c1c5964

loc_8c186924:
#data bank19.loc_8c1986DA
#data 0x8C33A154

#align4
loc_8c18692C:
#data loc_8c186D46
#data 0xFFFF0000


loc_8c186934:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov r4,r12
mov.l @(loc_8c1869B0,pc),r4 ; r4 set to 0x8C33A134
mov.l r11,@-r15
mov 0x00,r11 ; r11 set to 0x00
mov.w @(loc_8c1869AE,pc),r14 ; r14 set to 0x400
sts.l pr,@-r15
mov.l r11,@r4 ; r4 ??
mov r14,r6 ; r6 set to 0x400
mov.l r11,@(0x04,r4)
mov.l r11,@(0x08,r4)
mov.l r11,@(0x0C,r4)
mov.l r11,@(0x10,r4)
mov.l r11,@(0x14,r4)
mov.l r11,@(0x18,r4)
mov.l r11,@(0x1C,r4)
mov.l @(loc_8c1869B8,pc),r4 ; r4 set to 0x8C33A154
mov.l @(loc_8c1869B4,pc),r13 ; r13 set to 0x8C129728
jsr @r13
mov r11,r5 ; r5 set to 0x00
mov.l @(loc_8c1869BC,pc),r4 ; r4 set to 0x8C33A554
mov r14,r6 ; r6 set to 0x400
jsr @r13
mov 0x30,r5 ; r5 set to 0x30
mov.l @(loc_8c1869C0,pc),r4 ; r4 set to 0x8C33A954
mov r14,r6 ; r6 set to 0x400
jsr @r13
mov 0x31,r5 ; r5 set to 0x31
mov.l @(loc_8c1869C4,pc),r4 ; r4 set to 0x8C33AD54
mov r14,r6 ; r6 set to 0x400
jsr @r13
mov 0x32,r5 ; r5 set to 0x32
mov.l @(loc_8c1869C8,pc),r4 ; r4 set to 0x8C33B154
mov r14,r6 ; r6 set to 0x400
jsr @r13
mov 0x33,r5 ; r5 set to 0x33
mov.l @(loc_8c1869CC,pc),r4 ; r4 set to 0x8C33B554
mov r14,r6 ; r6 set to 0x400
jsr @r13
mov 0x34,r5 ; r5 set to 0x34
mov.l @(loc_8c1869D0,pc),r4 ; r4 set to 0x8C33B954
mov r14,r6 ; r6 set to 0x400
jsr @r13
mov 0x35,r5 ; r5 set to 0x35
mov.l @(loc_8c1869D4,pc),r4 ; r4 set to 0x8C33BD54
mov r14,r6 ; r6 set to 0x400
jsr @r13
mov 0x36,r5 ; r5 set to 0x36
mov.l @(loc_8c1869D8,pc),r4 ; r4 set to 0x8C33C154
mov r14,r6 ; r6 set to 0x400
jsr @r13
mov 0x37,r5 ; r5 set to 0x37
mov.l @(loc_8c1869DC,pc),r3 ; r3 set to 0x8C198358
jsr @r3
nop
tst r0,r0
bf loc_8c1869E0
bra loc_8c186A54
mov 0xFF,r0

loc_8c1869AE:
#data 0x0400

#align4
loc_8c1869B0:
#data 0x8C33A134

#align4
loc_8c1869B4:
#data bank12.loc_8c129728

loc_8c1869B8:
#data 0x8C33A154

#align4
loc_8c1869BC:
#data 0x8C33A554

#align4
loc_8c1869C0:
#data 0x8C33A954

#align4
loc_8c1869C4:
#data 0x8C33AD54

#align4
loc_8c1869C8:
#data 0x8C33B154

#align4
loc_8c1869CC:
#data 0x8C33B554

#align4
loc_8c1869D0:
#data 0x8C33B954

#align4
loc_8c1869D4:
#data 0x8C33BD54

#align4
loc_8c1869D8:
#data 0x8C33C154

#align4
loc_8c1869DC:
#data bank19.loc_8c198358

loc_8c1869e0:
mov 0x01,r3
mov.l @(loc_8c186a98,pc),r13
tst r12,r3
bt loc_8c1869f0
mov.l @(loc_8c186aa0,pc),r4
mov.l @(loc_8C186A9C,pc),r5
jsr @r13
mov r14,r6

loc_8c1869f0:
mov 0x02,r3
tst r12,r3
bt loc_8c1869fe
mov.l @(loc_8c186aa8,pc),r4
mov.l @(loc_8C186AA4,pc),r5
jsr @r13
mov r14,r6

loc_8c1869fe:
mov 0x04,r3
tst r12,r3
bt loc_8c186a0c
mov.l @(loc_8c186ab0,pc),r4
mov.l @(loc_8C186AAC,pc),r5
jsr @r13
mov r14,r6

loc_8c186a0c:
mov 0x08,r3
tst r12,r3
bt loc_8c186a1a
mov.l @(loc_8c186ab8,pc),r4
mov.l @(loc_8C186AB4,pc),r5
jsr @r13
mov r14,r6

loc_8c186a1a:
mov 0x10,r3
tst r12,r3
bt loc_8c186a28
mov.l @(loc_8c186ac0,pc),r4
mov.l @(loc_8C186ABC,pc),r5
jsr @r13
mov r14,r6

loc_8c186a28:
mov 0x20,r3
tst r12,r3
bt loc_8c186a36
mov.l @(loc_8c186ac8,pc),r4
mov.l @(loc_8C186AC4,pc),r5
jsr @r13
mov r14,r6

loc_8c186a36:
mov 0x40,r3
tst r12,r3
bt loc_8c186a44
mov.l @(loc_8c186ad0,pc),r4
mov.l @(loc_8C186ACC,pc),r5
jsr @r13
mov r14,r6

loc_8c186a44:
mov.w @(loc_8C186A94,pc),r3
tst r3,r12
bt loc_8c186a52
mov.l @(loc_8c186ad8,pc),r4
mov.l @(loc_8C186AD4,pc),r5
jsr @r13
mov r14,r6

loc_8c186a52:
mov 0x00,r0

loc_8c186A54:
lds.l @r15+,pr
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c186A60:
sts.l pr,@-r15
mov.l @(loc_8c186AE0,pc),r3 ; r3 set to 0x8C129728
mov.l @(loc_8c186ADC,pc),r4 ; r4 set to 0x8C33A154
mov.w @(loc_8c186A96,pc),r6 ; r6 set to 0x400
jsr @r3
mov 0x00,r5 ; r5 set to 0x00
lds.l @r15+,pr
rts
mov 0x00,r0
;==============================================

loc_8c186A72:
mov.l @(loc_8c186AE4,pc),r3 ; r3 set to 0x8C198386
jmp @r3
nop

loc_8c186A78:
bra loc_8c186AEA
mov 0x00,r4

loc_8c186A7C:
bra loc_8c186AEA
mov 0x01,r4

loc_8c186A80:
bra loc_8c186AEA
mov 0x02,r4

loc_8c186A84:
bra loc_8c186AEA
mov 0x03,r4

loc_8c186A88:
bra loc_8c186AEA
mov 0x04,r4

loc_8c186A8C:
bra loc_8c186AEA
mov 0x05,r4

loc_8c186A90:
bra loc_8c186AEA
mov 0x06,r4
loc_8c186a94:
#data 0x0080

loc_8c186A96:
#data 0x0400

#align4
loc_8c186A98:
#data bank19.loc_8c19836E
loc_8c186a9c:
#data 0x8C33A554

#align4
loc_8c186AA0:
#data loc_8c186A78
loc_8c186aa4:
#data 0x8C33A954

#align4
loc_8c186AA8:
#data loc_8c186A7C
loc_8c186aac:
#data 0x8C33AD54

#align4
loc_8c186AB0:
#data loc_8c186A80
loc_8c186ab4:
#data 0x8C33B154

#align4
loc_8c186AB8:
#data loc_8c186A84
loc_8c186abc:
#data 0x8C33B554

#align4
loc_8c186AC0:
#data loc_8c186A88
loc_8c186ac4:
#data 0x8C33B954

#align4
loc_8c186AC8:
#data loc_8c186A8C
loc_8c186acc:
#data 0x8C33BD54

#align4
loc_8c186AD0:
#data loc_8c186A90
loc_8c186ad4:
#data 0x8C33C154

#align4
loc_8c186AD8:
#data loc_8c186AE8

loc_8c186ADC:
#data 0x8C33A154

#align4
loc_8c186AE0:
#data bank12.loc_8c129728

loc_8c186AE4:
#data bank19.loc_8c198386

loc_8c186AE8:
#data 0xE407


loc_8c186AEA:
mov r4,r14
shll2 r14
shll2 r14
mov.l @(loc_8c186B24,pc),r3 ; r3 set to 0x8C33A154
mov.l @(loc_8c186B2C,pc),r2 ; r2 set to 0x8C33A134
mov r4,r9
shll2 r14
mov.w @(loc_8c186B20,pc),r10 ; r10 set to 0xFF01
shll2 r9
mov.l @(loc_8c186B28,pc),r8 ; r8 set to 0x8C187502
shll r14
mov r4,r11
add r2,r9
add r3,r14
mov 0x00,r13 ; r13 set to 0x00

loc_8c186B08:
mov.l @(0x08,r14),r0
mov 0x15,r1 ; r1 set to 0x15, r1 set to 0x15
cmp/hs r1,r0
bf loc_8c186B14
bra loc_8c186CD6
nop

loc_8c186B14:
shll r0
mov r0,r1
mova @(loc_8c186B30,pc),r0  ; r0 set to 0x8C186B30
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
braf r0
nop

loc_8c186B20:
#data 0xFF01
#data 0x0000

#align4
loc_8c186B24:
#data 0x8C33A154

#align4
loc_8c186B28:
#data loc_8c187502

loc_8c186B2C:
#data 0x8C33A134

#align4
loc_8c186B30:
#data 0x004601B6
#data 0x005401B6
#data 0x00820070
#data 0x00AA0096
#data 0x00E800BC
#data 0x011800D2
#data 0x014E012E
#data 0x00F8016E
#data 0x01880108
#data 0x01B6003A
#data 0x53E5019A
#data 0x480B1E34
#data 0xA0B654E5
#data 0x53E50009
#data 0x1E34D27F
#data 0x54E5420B
#data 0x0009A0AF
#data 0x65E352E5
#data 0x754C67E3
#data 0x776C1E24
#data 0xD27A53E9
#data 0x56E72F36
#data 0x54E5420B
#data 0x7F04A0A1
#data 0x532A52E5
#data 0x1E34D276
#data 0x420B55E6
#data 0xA09854E5
#data 0x52E50009
#data 0xD273532A
#data 0x55E61E34
#data 0x420B56E7
#data 0xA08E54E5
#data 0x52E50009
#data 0xD26F532A
#data 0x55E61E34
#data 0x420B56E7
#data 0xA08454E5
#data 0x52E50009
#data 0xD36B65E3
#data 0x1E24752C
#data 0x54E5430B
#data 0x0009A07B
#data 0x65E353E5
#data 0xD26766E3
#data 0x1E34752C
#data 0x420B763C
#data 0xA07054E5
#data 0x52E50009
#data 0xD36365E3
#data 0x1E24752C
#data 0x57E856E7
#data 0x54E5430B
#data 0x0009A065
#data 0xD25F53E5
#data 0x55E61E34
#data 0x54E5420B
#data 0x0009A05D
#data 0xD35C52E5
#data 0x55E61E24
#data 0x54E5430B
#data 0x0009A055
#data 0xD25953E5
#data 0x55E61E34
#data 0x54E5420B
#data 0x0009A04D
#data 0x65E352E5
#data 0x752CD355
#data 0x56E71E24
#data 0x430B57E8
#data 0xA04254E5
#data 0x53E50009
#data 0x752C65E3
#data 0x63E31E34
#data 0x736C52EA
#data 0xD24E2F26
#data 0x56E72F36
#data 0x420B57E8
#data 0xA03254E5
#data 0x52E57F08
#data 0x752C65E3
#data 0x62E31E24
#data 0x726C53EA
#data 0xD3472F36
#data 0x56E72F26
#data 0x430B57E8
#data 0xA02254E5
#data 0x53E57F08
#data 0x752C65E3
#data 0x52E91E34
#data 0x2F26D341
#data 0x57E856E7
#data 0x54E5430B
#data 0x7F04A015
#data 0xD23E53E5
#data 0x55E61E34
#data 0x420B56E7
#data 0xA00C54E5
#data 0x52E50009
#data 0x752C65E3
#data 0x53E91E24
#data 0x2F36D238
#data 0x57E856E7
#data 0x54E5420B
#data 0xA0057F04
#data 0x6C03


loc_8c186CD6:
mov.l @(loc_8c186DAC,pc),r2 ; r2 set to 0x8C198396
jsr @r2
nop
bra loc_8c186B08
nop
#data 0x8B023CA0
#data 0x430BD332
#data 0xE07C54E4
#data 0x07EE29C2
#data 0x55E2E074
#data 0x1ED12ED2
#data 0x1ED31ED2
#data 0x1ED51ED4
#data 0x1ED71ED6
#data 0x1ED91ED8
#data 0x03EE1EDA
#data 0x8B012338
#data 0x0009AEFA
#data 0x66C303EE
#data 0x64B3430B
#data 0x0009AEF4


loc_8c186D20:
mov.l r14,@-r15
mov r4,r14
shll2 r14
mov.l @(loc_8c186DB4,pc),r3 ; r3 set to 0x8C33A154
shll2 r14
shll2 r14
shll r14
mov 0x74,r0 ; r0 set to 0x74
add r3,r14
mov.l @(r0,r14),r2
tst r2,r2
bt loc_8c186D42
mov.l @(r0,r14),r2
mov 0x7C,r0 ; r0 set to 0x7C
mov.l @(r0,r14),r7
jmp @r2
mov.l @r15+,r14

loc_8c186D42:
rts
mov.l @r15+,r14
;==============================================

loc_8c186D46:
mov.l r14,@-r15
mov r4,r14
shll2 r14
mov.l @(loc_8c186DB4,pc),r3 ; r3 set to 0x8C33A154
shll2 r14
shll2 r14
shll r14
mov 0x78,r0 ; r0 set to 0x78
add r3,r14
mov.l @(r0,r14),r2
tst r2,r2
bt loc_8c186D64
mov.l @(r0,r14),r2
jmp @r2
mov.l @r15+,r14

loc_8c186D64:
rts
mov.l @r15+,r14
;==============================================

#align4
loc_8c186D68:
#data loc_8c187408

loc_8c186D6C:
#data loc_8c187788

loc_8c186D70:
#data loc_8c188306

loc_8c186D74:
#data loc_8c188752

loc_8c186D78:
#data loc_8c18846E

loc_8c186D7C:
#data loc_8c188E88

loc_8c186D80:
#data loc_8c189086

loc_8c186D84:
#data loc_8c1893AC

loc_8c186D88:
#data loc_8c189990

loc_8c186D8C:
#data loc_8c18A6EC

loc_8c186D90:
#data loc_8c18A776

loc_8c186D94:
#data loc_8c18A7E2

loc_8c186D98:
#data loc_8c18A884

loc_8c186D9C:
#data loc_8c18AA84

loc_8c186DA0:
#data loc_8c18AD1A

loc_8c186DA4:
#data loc_8c188F68

loc_8c186DA8:
#data loc_8c18AE3E

loc_8c186DAC:
#data bank19.loc_8c198396

loc_8c186DB0:
#data loc_8c187672

loc_8c186DB4:
#data 0x8C33A154


loc_8c186DB8:
add 0xFC,r15
mov.l @(loc_8c186E78,pc),r5 ; r5 set to 0x8C33A154
mov.w @(loc_8c186E76,pc),r3 ; r3 set to 0x400
mov r5,r7 ; r7 set to 0x8C33A154
mov.w @(loc_8c186E74,pc),r6 ; r6 set to 0x80
add r3,r7 ; r7 set to 0x8C33A554
mov.l r5,@r15

loc_8c186DC6:
mov 0x74,r0 ; r0 set to 0x74, r0 set to 0x74
mov.l r4,@(r0,r5)  ; r5 ??? bc r4 is ???
add r6,r5
cmp/hs r7,r5
bf loc_8c186DC6
rts
add 0x04,r15
;==============================================

loc_8c186DD4:
add 0xFC,r15
mov.l @(loc_8c186E78,pc),r5 ; r5 set to 0x8C33A154
mov.w @(loc_8c186E76,pc),r3 ; r3 set to 0x400
mov r5,r7 ; r7 set to 0x8C33A154
mov.w @(loc_8c186E74,pc),r6 ; r6 set to 0x80
add r3,r7 ; r7 set to 0x8C33A554
mov.l r5,@r15

loc_8c186DE2:
mov 0x78,r0 ; r0 set to 0x78, r0 set to 0x78
mov.l r4,@(r0,r5)  ; r5 ??? bc r4 is ???
add r6,r5
cmp/hs r7,r5
bf loc_8c186DE2
rts
add 0x04,r15
;==============================================

loc_8c186DF0:
add 0xFC,r15
mov.l @(loc_8c186E78,pc),r5 ; r5 set to 0x8C33A154
mov.w @(loc_8c186E76,pc),r3 ; r3 set to 0x400
mov r5,r7 ; r7 set to 0x8C33A154
mov.w @(loc_8c186E74,pc),r6 ; r6 set to 0x80
add r3,r7 ; r7 set to 0x8C33A554
mov.l r5,@r15

loc_8c186DFE:
mov 0x7C,r0 ; r0 set to 0x7C, r0 set to 0x7C
mov.l r4,@(r0,r5)  ; r5 ??? bc r4 is ???
add r6,r5
cmp/hs r7,r5
bf loc_8c186DFE
rts
add 0x04,r15
;==============================================

loc_8c186E0C:
shll2 r4
mov.l @(loc_8c186E78,pc),r3 ; r3 set to 0x8C33A154
shll2 r4
shll2 r4
shll r4
add r3,r4
rts
mov.l @(0x04,r4),r0
;==============================================

loc_8c186E1C:
shll2 r4
mov.l @(loc_8c186E78,pc),r3 ; r3 set to 0x8C33A154
shll2 r4
shll2 r4
shll r4
add r3,r4
rts
mov.l r5,@(0x08,r4)
;==============================================

loc_8c186E2C:
shll2 r4
mov.l @(loc_8c186E78,pc),r3 ; r3 set to 0x8C33A154
shll2 r4
shll2 r4
shll r4
add r3,r4
mov.l r5,@(0x14,r4)
mov.l r6,@(0x18,r4)
mov.l r7,@(0x1C,r4)
mov.l @r15,r2
mov.l r2,@(0x20,r4)
mov.l @(0x04,r15),r1
mov.l r1,@(0x24,r4)
mov 0x01,r1 ; r1 set to 0x01
mov.l @(0x08,r15),r2
mov.l r2,@(0x28,r4)
rts
mov.l r1,@(0x04,r4)
;==============================================

loc_8c186E50:
mov r4,r6
shll2 r6
shll2 r6
mov.l @(loc_8c186E78,pc),r3 ; r3 set to 0x8C33A154
shll2 r6
shll r6
add r3,r6
mov r6,r4
add 0x4C,r4

loc_8c186E62:
mov.b @r5+,r3 ; r3 ??? bc r5 is ???
mov r6,r2
add 0x6C,r2
mov.b r3,@r4
add 0x01,r4
cmp/hs r2,r4
bf loc_8c186E62
rts
nop
;==============================================

loc_8c186E74:
#data 0x0080

loc_8c186E76:
#data 0x0400

#align4
loc_8c186E78:
#data 0x8C33A154

#align4
loc_8c186E7C:
#data 0x47086743
#data 0xD3224708
#data 0x2FE64708
#data 0x373C4700
#data 0x742C6473
#data 0xEE00

loc_8c186E92:
#data 0x6273
#data 0x723924E0
#data 0x34227401
#data 0x64738BF9
#data 0x743C

loc_8c186EA2:
#data 0x6273
#data 0x724924E0
#data 0x34227401
#data 0x60538BF9
#data 0x750C6453
#data 0x34526E73
#data 0x7E2C8D09

#align4
loc_8c186EBC:
#data 0x23386340
#data 0x63048905
#data 0x34527401
#data 0x8FF72E30
#data 0x7E01

loc_8c186ECE:
#data 0x6E63
#data 0x760C6463
#data 0x34626573
#data 0x753C8D09

#align4
loc_8c186EDC:
#data 0x22286240
#data 0x63E48905
#data 0x34627401
#data 0x8FF72530
#data 0x7501

loc_8c186EEE:
#data 0x000B
#data 0x6EF6
;==============================================

loc_8c186EF2:
add 0xFC,r15
shll2 r4
mov.l @(loc_8c186F0C,pc),r3 ; r3 set to 0x8C33A154
shll2 r4
mov.l @(loc_8c186F10,pc),r2 ; r2 set to 0x8C129668
shll2 r4
shll r4
add r3,r4
mov.l r4,@r15
add 0x6C,r4
mov 0x08,r6 ; r6 set to 0x08
jmp @r2
add 0x04,r15

#align4
loc_8c186F0C:
#data 0x8C33A154

#align4
loc_8c186F10:
#data bank12.loc_8c129668
#data 0xE5032FE6
#data 0x60F34F22
#data 0x70047008
#data 0x89032508
#data 0x750865F3
#data 0x7508A003
#data 0x750865F3
#data 0xD3327504
#data 0xD4306653
#data 0x55F2430B
#data 0x6E22D230
#data 0x89022EE8
#data 0x4E0BD42C
#data 0x4F260009
#data 0x6EF6000B
;==============================================

#align4
loc_8c186F50:
#data 0xE301D52C
#data 0x62522439
#data 0x88016043
#data 0x8F072242
#data 0xD2296652
#data 0xD2291623
#data 0x11246152
#data 0x0009A005

#align4
loc_8c186F70:
#data 0xD027D128
#data 0x62521603
#data 0x1214

loc_8c186F7A:
#data 0x000B
#data 0x0009
;==============================================

loc_8c186F7E:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0x4F222F96
#data 0x6A637FFC
#data 0xD321D622
#data 0xD91B6C53
#data 0x2F426563
#data 0xEE007520
#data 0x64632932

#align4
loc_8c186FA4:
#data 0x740424E2
#data 0x8BFB3452
#data 0xE614D41A
#data 0x4B0BDB1B
#data 0xD41BE500
#data 0x4B0B961C
#data 0xBFC7E500
#data 0xD419E400
#data 0x65E3E200
#data 0x2422E601
#data 0xED08

loc_8c186FCE:
#data 0x63C3
#data 0x8D032368
#data 0x61427501
#data 0x24127101

#align4
loc_8c186FDC:
#data 0x35D34600
#data 0x2AA88BF5
#data 0x65C38922
#data 0xB06366A3
#data 0x629264F2
#data 0x12E2A023
#data 0x00000A40
#data 0x8C342478

#align4
loc_8c186FFC:
#data bank12.loc_8c129804

loc_8c187000:
#data bank1c.loc_8c1c96D8
#data 0x8C33C568

#align4
loc_8c187008:
#data bank19.loc_8c198338

loc_8c18700C:
#data bank19.loc_8c19834A

loc_8c187010:
#data bank19.loc_8c198342

loc_8c187014:
#data bank19.loc_8c198352
#data 0x8C33C554
#data 0x8C33CFAC

#align4
loc_8c187020:
#data bank12.loc_8c129728
#data 0x8C33C56C
#data 0x8C341474

#align4
loc_8c18702C:
#data 0x66A365C3
#data 0x64F2B022
#data 0xE3016292
#data 0x1232

loc_8c18703A:
#data 0xD339
#data 0xD139D237
#data 0x23E222D2
#data 0xE40A410B
#data 0xD437D234
#data 0x63636622
#data 0x46004608
#data 0x4608363C
#data 0x4B0B4600
#data 0xD333E500
#data 0x0009430B
#data 0x7F0460E3
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;==============================================

#align4
loc_8c187078:
#data 0xD32D6043
#data 0x8D08880F
#data 0x88216532
#data 0x88418908
#data 0x887A8908
#data 0xA00B8909
#data 0x0009

loc_8c187092:
#data 0xE200
#data 0x1521A00B

#align4
loc_8c187098:
#data 0xE001A004

#align4
loc_8c18709C:
#data 0xA006E102
#data 0x1511

loc_8c1870A2:
#data 0xE003

#align4
loc_8c1870A4:
#data 0x1501A003

#align4
loc_8c1870A8:
#data 0x000B9037
#data 0x0009
;==============================================

loc_8c1870AE:
#data 0xE000
#data 0x0009000B
;==============================================

#align4
loc_8c1870B4:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0x1F517FEC
#data 0xD3196043
#data 0xD51B880F
#data 0xDE18EA01
#data 0xDC18ED00
#data 0x67328D08
#data 0x89098821
#data 0x890C8841
#data 0x890F887A
#data 0x0009A014

#align4
loc_8c1870EC:
#data 0x68C217D1
#data 0x6252A003

#align4
loc_8c1870F4:
#data 0x525117A1
#data 0x58C1

loc_8c1870FA:
#data 0xA021
#data 0x1F24

loc_8c1870FE:
#data 0xE202
#data 0x58C21721
#data 0x5152A004

#align4
loc_8c187108:
#data 0x1721E203
#data 0x515358C3

#align4
loc_8c187110:
#data 0x1F14A016

#align4
loc_8c187114:
#data 0xA06E9001
#data 0xFF000009
#data 0x8C34146C
#data 0x8C341470

#align4
loc_8c187124:
#data loc_8c18669C
#data 0x8C34122C

#align4
loc_8c18712C:
#data bank19.loc_8c1983C4
#data 0x8C33C568
#data 0x8C33C56C

#align4
loc_8c187138:
#data bank1c.loc_8c1c96DC

loc_8c18713C:
#data bank1c.loc_8c1c96EC

loc_8c187140:
#data 0x44186383
#data 0xDC407301
#data 0x6B634400
#data 0x69D37420
#data 0x1F424318
#data 0x2FA24300
#data 0x1F33A049

#align4
loc_8c18715C:
#data 0x63F252F1
#data 0x893E2238
#data 0xD239E34C
#data 0x60A30937
#data 0x60D380E2
#data 0x2E919166
#data 0x31BC031A
#data 0x1E37332C
#data 0x80EA63B3
#data 0x80EB7320
#data 0x60D380EC
#data 0x1E381EBB
#data 0x53F31E19
#data 0x732033BC
#data 0x80E81E3A
#data 0x60A380E9
#data 0x608381E7
#data 0x85F881E8
#data 0xE02081E9
#data 0x64E3E500
#data 0xE61081EA
#data 0x74384C0B
#data 0x64E39645
#data 0x4C0BE500
#data 0xE5477448
#data 0x4C0BE620
#data 0xE55354EB
#data 0x4C0BE620
#data 0xE54654E8
#data 0x4C0BE620
#data 0xE54454E9
#data 0x4C0BE620
#data 0x53F254EA
#data 0x3B3C

loc_8c1871E2:
#data 0x63F2
#data 0x922D7901
#data 0x3E2C4300
#data 0x2F32

loc_8c1871EE:
#data 0xE308
#data 0x8BB33933
#data 0xE000

loc_8c1871F6:
#data 0x7F14
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x2FE66EF6
#data 0x7FFC4F22
#data 0x62439318
#data 0xE500D10E
#data 0xD20B0237
#data 0x2F426633
#data 0x3E1C0E1A
#data 0x64E3420B
#data 0xE34C62F2
#data 0xE000D107
#data 0x031A0237
#data 0x1E37331C
#data 0x4F267F04
#data 0x6EF6000B
;==============================================
#data 0x01000220
#data 0x00000148

#align4
loc_8c187248:
#data bank12.loc_8c129728
#data 0x8C340FCC
#data 0x8C33C56C


loc_8c187254:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8c187380,pc),r2 ; r2 set to 0x8C33C568
mov.l @r2,r3
mov.l @(0x08,r3),r1
tst r1,r1
bt loc_8c1872BC
tst r5,r5
bt loc_8c1872BC
mov.w @(loc_8c187374,pc),r14 ; r14 set to 0x148
mov.l @(loc_8c187384,pc),r3 ; r3 set to 0x8C33C56C
mul.l r14,r4
mov.l @(loc_8c18738C,pc),r12 ; r12 set to 0x8C1C96EC
mov.l @(loc_8c187388,pc),r7 ; r7 set to 0x8C1C96DC
sts macl,r14
add r3,r14 ; r14 set to 0x8C33C6B4
mov.l @(0x04,r14),r2 ; r2 ??
mov r2,r0
cmp/eq 0x00,r0
mov.l r2,@r15
bt loc_8c187294
cmp/eq 0x01,r0
bt loc_8c18729A
cmp/eq 0x02,r0
bt loc_8c1872A0
cmp/eq 0x03,r0
bt loc_8c1872A6
bra loc_8c1872BC
nop

loc_8c187294:
mov.l @r7,r7
bra loc_8c1872AA
mov.l @r12,r13

loc_8c18729A:
mov.l @(0x04,r7),r7
bra loc_8c1872AA
mov.l @(0x04,r12),r13

loc_8c1872A0:
mov.l @(0x08,r7),r7
bra loc_8c1872AA
mov.l @(0x08,r12),r13

loc_8c1872a6:
mov.l @(0x0C,r12),r13
mov.l @(0x0C,r7),r7

loc_8c1872aa:
mov r7,r2
add r13,r2
add 0x01,r2
shll8 r2
shll r2
add 0x20,r2
cmp/gt r6,r2
bf/s loc_8c1872c2
mov.l r2,@r15

loc_8c1872BC:
mov.w @(loc_8c187376,pc),r0 ; r0 set to 0xFF00
bra loc_8c187350
nop

loc_8c1872C2:
#data 0xE34C
#data 0x0437D232
#data 0x6373EC01
#data 0x80E260C3
#data 0x73012E41
#data 0x4318041A
#data 0x43006153
#data 0x1E47342C
#data 0x6043E400
#data 0x80EB80EA
#data 0x80EC335C
#data 0x90437320
#data 0x1E5B7120
#data 0x1E18305C
#data 0x60C31E09
#data 0x81E71E3A
#data 0x81E86073
#data 0x81E960D3
#data 0xDD226543
#data 0x64E3E020
#data 0xE61081EA
#data 0x74384D0B
#data 0x64E3962F
#data 0x4D0BE500
#data 0xE5477448
#data 0x4D0BE620
#data 0xE55354EB
#data 0x4D0BE620
#data 0xE54654E8
#data 0x4D0BE620
#data 0xE54454E9
#data 0x4D0BE620
#data 0x54E754EA
#data 0x534760C3
#data 0x80E8143C
#data 0xE00080E9


loc_8c187350:
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c18735C:
sts.l pr,@-r15
mov.l @(loc_8c187394,pc),r3 ; r3 set to 0x8C129728
mov.l @(loc_8c187384,pc),r4 ; r4 set to 0x8C33C56C
mov.w @(loc_8c18737C,pc),r6 ; r6 set to 0xA40
jsr @r3
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_8c187398,pc),r2 ; r2 set to 0x8C1983CC
jsr @r2
nop
lds.l @r15+,pr
rts
mov 0x00,r0
;==============================================

loc_8c187374:
#data 0x0148

loc_8c187376:
#data 0xFF00
#data 0x01000220

loc_8c18737C:
#data 0x0A40
#data 0x0000

#align4
loc_8c187380:
#data 0x8C33C568

#align4
loc_8c187384:
#data 0x8C33C56C

#align4
loc_8c187388:
#data bank1c.loc_8c1c96DC

loc_8c18738C:
#data bank1c.loc_8c1c96EC
#data 0x8C340FCC

#align4
loc_8c187394:
#data bank12.loc_8c129728

loc_8c187398:
#data bank19.loc_8c1983CC

loc_8c18739C:
#data 0xE4002FE6
#data 0x6E432FD6
#data 0xED012FC6
#data 0x6C432FB6
#data 0xEB082FA6
#data 0xDA464F22

#align4
loc_8c1873B4:
#data 0x64E34A0B
#data 0x8D012008
#data 0x2CDB7E01

#align4
loc_8c1873C0:
#data 0x3EB34D00
#data 0x4F268BF6
#data 0x6AF660C3
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;==============================================

loc_8c1873D6:
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8c1874C8,pc),r3 ; r3 set to 0x148
mov.l @(loc_8c1874D0,pc),r2 ; r2 set to 0x8C33C56C
mul.l r3,r4
mov.l @(loc_8c1874D4,pc),r1 ; r1 set to 0x8C198918
sts macl,r3
add r2,r3 ; r3 set to 0x8C33C6B4
jsr @r1
mov.l r3,@r15
tst r0,r0
bt loc_8c1873FE
mov.l @r15,r2 ; r2 ??? bc r15 is ???
mov.b @(0x08,r2),r0
tst r0,r0
bt loc_8c1873FE
add 0x04,r15
lds.l @r15+,pr
rts
mov 0x01,r0
;==============================================

loc_8c1873FE:
mov 0x00,r0 ; r0 set to 0x00
add 0x04,r15
lds.l @r15+,pr
rts
nop
;==============================================

loc_8c187408:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8c1874C8,pc),r14 ; r14 set to 0x148
mov r4,r13
mov.l @(loc_8c1874D8,pc),r2 ; r2 set to 0x8C33C568
mul.l r14,r13
mov.l @r2,r0
mov.l @(loc_8c1874D0,pc),r3 ; r3 set to 0x8C33C56C
mov.l @(0x08,r0),r0
sts macl,r14
cmp/eq 0x01,r0
bf/s loc_8c18743A
add r3,r14 ; r14 set to 0x8C33C6B4
mov r13,r4
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8c1875D8
mov.l @r15+,r14

loc_8c18743a:
mov.b @(0x02,r14),r0 
tst r0,r0
bt loc_8c18748e
mov.l @(loc_8c1874dc,pc),r0
mov 0x01,r11
mov.l r11,@(0x30,r14) 
mov.l @(0x04,r14),r2
mov r2,r3
shll2 r2
add r3,r2
mov r13,r3
shll2 r2
shll2 r3
shll2 r2
shll2 r3
mov.l @(r0,r2),r1
shll2 r3
mov.l @(loc_8C1874E0,pc),r2
shll r3
mov.l r1,@(0x34,r14) 
add r2,r3
mov.l r3,@r15
mov.l @(0x30,r14),r6
mov.l @(loc_8c1874e4,pc),r3
add 0x01,r6
mov.l @(0x34,r14),r7
mov.l r6,@(0x30,r14) 
add 0xFF,r6
mov.l @r15,r5
mov.l @(0x08,r5),r5
jsr @r3
mov r13,r4
mov.l @(loc_8c1874e8,pc),r2
mov 0x00,r12
mov.l @(0x1C,r14),r5
jsr @r2
mov r13,r4
cmp/pz r0
bt loc_8c187494
mov r12,r0
mov.b r0,@(0x09,r14) 
mov.b r0,@(0x08,r14) 

loc_8c18748e:
mov.w @(loc_8C1874CA,pc),r0
bra loc_8c1874f4
nop 

loc_8c187494:
mov.l @(loc_8c1874ec,pc),r2
jsr @r2
mov r14,r4
cmp/pz r0
bt loc_8c1874a2
bra loc_8c1874f4
mov 0x83,r0

loc_8c1874a2:
mov.l @(0x1C,r14),r4
mov r11,r0
mov.l @(0x1C,r4),r2
mov.l r2,@(0x30,r4) 
mov r13,r4
mov.b r0,@(0x09,r14) 
mov.b r0,@(0x08,r14) 
mov r12,r0
mov.b r0,@(0x0A,r14) 
mov.b r0,@(0x0B,r14) 
mov.b r0,@(0x0C,r14) 
add 0x04,r15
lds.l @r15+,pr 
mov.l @(loc_8c1874f0,pc),r3
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8c1874c8:
#data 0x0148

loc_8C1874CA:
#data 0xFF01

loc_8c1874cc:
#data 0x88D8
#data 0x8C19

loc_8c1874d0:
#data 0xC56C
#data 0x8C33

loc_8c1874d4:
#data 0x8918
#data 0x8C19

loc_8c1874d8:
#data 0xC568
#data 0x8C33

#align4
loc_8c1874dc:
#data bank1c.loc_8c1c9700

loc_8C1874E0:
#data 0x8C33A154

#align4
loc_8c1874e4:
#data loc_8c186d46

loc_8c1874e8:
#data loc_8c1866a4

loc_8c1874ec:
#data loc_8c18a64c

loc_8c1874f0:
#data loc_8c18a358


loc_8c1874f4:
add 0x04,r15
lds.l @r15+,pr 
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 
mov.l @r15+,r14

loc_8c187502:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8c1875F8,pc),r14 ; r14 set to 0x148
mov r4,r13
mov 0x4C,r2 ; r2 set to 0x4C
mov.l @(loc_8c187600,pc),r1 ; r1 set to 0x8C340FCC
mul.l r14,r13
mov.l @(loc_8c1875FC,pc),r3 ; r3 set to 0x8C33C56C
mov 0x01,r0 ; r0 set to 0x01
sts macl,r14
mul.l r2,r13
add r3,r14 ; r14 set to 0x8C33C6B4
mov r13,r3 ; r3 ??? bc r13 is ???
shll2 r3
sts macl,r2
shll2 r3
shll2 r3
add r1,r2 ; r2 set to 0x8C341018
mov.l r2,@(0x1C,r14)  ; r14 ??
shll r3
mov.l r0,@(0x30,r14)
mov.l @(0x04,r14),r2 ; r2 ??? bc r14 is ???
mov r2,r0 ; r0 ??? bc r2 is ???
shll2 r2
add r0,r2
mov.l @(loc_8c187604,pc),r0 ; r0 set to 0x8C1C9744
shll2 r2
shll2 r2
mov.l @(r0,r2),r2
mov.l r2,@(0x34,r14)
mov.l @(loc_8c187608,pc),r2 ; r2 set to 0x8C33A154
add r2,r3
mov.l r3,@r15
mov.l @(0x34,r14),r7
mov.l @(0x30,r14),r6
mov.l @(loc_8c18760C,pc),r3 ; r3 set to 0x8C186D46
add 0x01,r6
mov.l r6,@(0x30,r14)
add 0xFF,r6
mov.l @r15,r5
mov.l @(0x08,r5),r5
jsr @r3
mov r13,r4
mov.l @(loc_8c187610,pc),r2 ; r2 set to 0x8C1866A4
mov 0x00,r12 ; r12 set to 0x00
mov.l @(0x1C,r14),r5
jsr @r2
mov r13,r4
cmp/pz r0
bt loc_8c187574
mov r12,r0 ; r0 set to 0x00
mov.b r0,@(0x09,r14)
bra loc_8c187592
mov.b r0,@(0x08,r14)

loc_8c187574:
mov.l @(loc_8c187614,pc),r3 ; r3 set to 0x8C18A64C
jsr @r3
mov r14,r4
cmp/pz r0
bf loc_8c1875CA
mov.l @(0x1C,r14),r4
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_8c187618,pc),r6 ; r6 set to 0x8C342678
mov.l @(0x1C,r4),r2
mov.l @(loc_8c18761C,pc),r3 ; r3 set to 0x8C1985AA
mov.l r2,@(0x30,r4)
jsr @r3
mov r13,r4
cmp/pz r0
bt loc_8c187598

loc_8c187592:
mov.w @(loc_8c1875FA,pc),r0 ; r0 set to 0xFF01, r0 set to 0xFF01
bra loc_8c1875CC
nop

loc_8c187598:
mov 0x01,r0 ; r0 set to 0x01
mov.b r0,@(0x09,r14)
mov r12,r0 ; r0 ??? bc r12 is ???
mov.b r0,@(0x0A,r14)
mov.b r0,@(0x0B,r14)
mov.b r0,@(0x0C,r14)
mov.l @(0x04,r14),r0
cmp/eq 0x00,r0
bt loc_8c1875BA
cmp/eq 0x01,r0
bt loc_8c1875BE
cmp/eq 0x02,r0
bt loc_8c1875C2
cmp/eq 0x03,r0
bt loc_8c1875C6
bra loc_8c1875CA
nop

loc_8c1875BA:
bra loc_8c1875CC
mov 0x0F,r0

loc_8c1875BE:
bra loc_8c1875CC
mov 0x21,r0

loc_8c1875C2:
bra loc_8c1875CC
mov 0x41,r0

loc_8c1875C6:
bra loc_8c1875CC
mov 0x7A,r0

loc_8c1875CA:
mov 0x83,r0 ; r0 set to 0xFFFFFF83

loc_8c1875CC:
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c1875D8:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8c1875F8,pc),r14 ; r14 set to 0x148
mov r4,r13
mov.l @(loc_8c1875FC,pc),r3 ; r3 set to 0x8C33C56C
mul.l r14,r13
sts macl,r14
add r3,r14 ; r14 set to 0x8C33C6B4
mov.b @(0x02,r14),r0
tst r0,r0
bf loc_8c187620
mov.w @(loc_8c1875FA,pc),r0 ; r0 set to 0xFF01
bra loc_8c187668
nop

loc_8c1875F8:
#data 0x0148

loc_8c1875FA:
#data 0xFF01

#align4
loc_8c1875FC:
#data 0x8C33C56C

#align4
loc_8c187600:
#data 0x8C340FCC

#align4
loc_8c187604:
#data bank1c.loc_8c1c9744

loc_8c187608:
#data 0x8C33A154

#align4
loc_8c18760C:
#data loc_8c186D46

loc_8c187610:
#data loc_8c1866A4

loc_8c187614:
#data loc_8c18A64C

loc_8c187618:
#data 0x8C342678

#align4
loc_8c18761C:
#data bank19.loc_8c1985AA


loc_8c187620:
mov 0x01,r3 ; r3 set to 0x01
mov.l @(loc_8c187720,pc),r0 ; r0 set to 0x8C1C9700
mov.l r3,@(0x30,r14)
mov.l @(0x04,r14),r2
mov r2,r3 ; r3 ??? bc r2 is ???
shll2 r2
add r3,r2
mov r13,r3
shll2 r2
shll2 r3
shll2 r2
shll2 r3
mov.l @(r0,r2),r1
mov.l @(loc_8c187724,pc),r2 ; r2 set to 0x8C33A154
shll2 r3
shll r3
mov.l r1,@(0x34,r14)
add r2,r3
mov.l r3,@r15
mov.l @(0x30,r14),r6
mov.l @(loc_8c187728,pc),r3 ; r3 set to 0x8C186D46
add 0x01,r6
mov.l @(0x34,r14),r7
mov.l r6,@(0x30,r14)
add 0xFF,r6
mov.l @r15,r5
mov.l @(0x08,r5),r5
jsr @r3
mov r13,r4
mov r13,r4
add 0x04,r15
lds.l @r15+,pr
mov.l @(loc_8c18772C,pc),r2 ; r2 set to 0x8C18A358
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8c187668:
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c187672:
mov.w @(loc_8c187716,pc),r1 ; r1 set to 0x148
mov.l @(loc_8c187730,pc),r3 ; r3 set to 0x8C33C56C
mul.l r1,r4
sts macl,r1
add r3,r1 ; r1 set to 0x8C33C6B4
mov.b @(0x02,r1),r0
tst r0,r0
bf loc_8c187688
mov.w @(loc_8c187718,pc),r0 ; r0 set to 0xFF01
rts
nop
;==============================================

loc_8c187688:
mov 0x00,r4 ; r4 set to 0x00
mov r4,r0 ; r0 set to 0x00
mov.b r0,@(0x09,r1)
mov.b r0,@(0x08,r1)
mov.b r0,@(0x0A,r1)
mov.b r0,@(0x0B,r1)
mov.b r0,@(0x0C,r1)
mov.l r0,@(0x04,r1)
rts
nop
;==============================================

loc_8c18769C:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xC8,r15
mov.w @(loc_8c187716,pc),r3 ; r3 set to 0x148
mov r4,r13
mov.l @(loc_8c187730,pc),r2 ; r2 set to 0x8C33C56C
mul.l r3,r13
mov.l r5,@(0x04,r15)
sts macl,r3
mov.l r3,@(0x08,r15)
add r2,r3 ; r3 set to 0x8C33C6B4
mov r3,r1 ; r1 set to 0x8C33C6B4
mov.l r3,@r15
mov.b @(0x02,r1),r0
tst r0,r0
bt/s loc_8c1876E8
mov r6,r14
mov.l @(loc_8c187734,pc),r2 ; r2 set to 0x8C1988D8
jsr @r2
mov r13,r4
tst r0,r0
bf loc_8c1876D2
bsr loc_8c187672
mov r13,r4
bra loc_8c1876E8
nop

loc_8c1876d2:
mov.l @(loc_8c187738,pc),r3
jsr @r3
mov r13,r4
tst r0,r0
bt loc_8c1876e8
mov.l @(0x08,r15),r2
mov.l @(loc_8c187730,pc),r3
add r3,r2
mov.b @(0x08,r2),r0 
tst r0,r0
bf loc_8c1876ee

loc_8c1876E8:
mov.w @(loc_8c187718,pc),r0 ; r0 set to 0xFF01
bra loc_8c18777E
nop

loc_8c1876EE:
#data 0xD313
#data 0x64D3430B
#data 0x89024011
#data 0xA040900F
#data 0x0009

loc_8c1876FE:
#data 0x55F1
#data 0xD30F66F3
#data 0x430B760C
#data 0x640364D3
#data 0x89194411
#data 0xA0349004
#data 0x0009

loc_8c187716:
#data 0x0148

loc_8c187718:
#data 0xFF01
#data 0xFF03
#data 0x0000FF05

#align4
loc_8c187720:
#data bank1c.loc_8c1c9700

loc_8c187724:
#data 0x8C33A154

#align4
loc_8c187728:
#data loc_8c186D46

loc_8c18772C:
#data loc_8c18A358

loc_8c187730:
#data 0x8C33C56C

#align4
loc_8c187734:
#data bank19.loc_8c1988D8

loc_8c187738:
#data bank19.loc_8c198918

loc_8c18773C:
#data bank17.loc_8c1790BA

loc_8c187740:
#data loc_8c189EBE

loc_8c187744:
#data 0x65F363F2
#data 0x752C64E3
#data 0x53FD5237
#data 0x7101512B
#data 0x93840317
#data 0x2E12011A
#data 0x81E250FD
#data 0x80E650F4
#data 0x00FCE016
#data 0x85FA80E7
#data 0x52F481E4
#data 0xD33E3230
#data 0x80E60029
#data 0x740A430B
#data 0xE000


loc_8c18777E:
add 0x38,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c187788:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xE8,r15
mov.w @(loc_8c187864,pc),r14 ; r14 set to 0x148
mov r4,r13
mov.l @(loc_8c187870,pc),r3 ; r3 set to 0x8C33C56C
mul.l r14,r13
mov.l r5,@(0x08,r15)
mov.l r6,@(0x0C,r15)
mov.l r7,@r15
sts macl,r14
mov.l r14,@(0x04,r15)
add r3,r14 ; r14 set to 0x8C33C6B4
mov.b @(0x02,r14),r0
tst r0,r0
bf loc_8c1877B8
bra loc_8c1879D0
nop

loc_8c1877B8:
mov.l @(0x38,r15),r3
mov.l @(loc_8c187874,pc),r5 ; r5 set to 0x8C1C96FC
tst r3,r3
bt/s loc_8c1877D8
mov 0x01,r4 ; r4 set to 0x01
mov.l r4,@(0x30,r14)
mov.l @(0x04,r14),r3
mov r3,r2
shll2 r3
add r2,r3
shll2 r3
shll2 r3
add r3,r5 ; r5 ??? bc r3 is ???
mov.l @(0x0C,r5),r3
bra loc_8c1877F2
mov.l r3,@(0x34,r14)

loc_8c1877D8:
mov.l @(loc_8c187878,pc),r2 ; r2 set to 0x8C129128
mov.l r4,@(0x30,r14)
mov.l @(0x04,r14),r1
mov r1,r3
shll2 r1
add r3,r1
shll2 r1
shll2 r1
add r5,r1
mov.l @(0x0C,r1),r1
jsr @r2
mov 0x0A,r0 ; r0 set to 0x0A
mov.l r0,@(0x34,r14)

loc_8c1877F2:
mov.l @(loc_8c18787C,pc),r3 ; r3 set to 0x8C198918, r3 set to 0x8C198918
jsr @r3
mov r13,r4
tst r0,r0
bf loc_8c187800
bra loc_8c1879D0
nop

loc_8c187800:
mov.l @(0x04,r15),r2
mov.l @(loc_8c187870,pc),r3 ; r3 set to 0x8C33C56C
add r3,r2
mov.b @(0x08,r2),r0
tst r0,r0
bf loc_8c187810
bra loc_8c1879D0
nop

loc_8c187810:
mov r13,r9
mov.l @(loc_8c187880,pc),r3 ; r3 set to 0x8C341478
shll8 r9
mov.l @(loc_8c187884,pc),r10 ; r10 set to 0x8C129728
mov.w @(loc_8c187866,pc),r6 ; r6 set to 0x200
shll r9
mov 0x00,r5 ; r5 set to 0x00
add r3,r9
jsr @r10
mov.l @(0x20,r14),r4
mov.l @(0x1C,r14),r5 ; r5 ??? bc r14 is ???
mov.l @(loc_8c187888,pc),r8 ; r8 set to 0x8C186850
mov.l @(0x08,r5),r5
mov.l @(0x20,r14),r6 ; r6 ??? bc r14 is ???
jsr @r8
mov r13,r4
mov r0,r4
cmp/pz r4
bt loc_8c187844
mov.w @(loc_8c187868,pc),r2 ; r2 set to 0xFF40
cmp/eq r2,r4
bt loc_8c187840
bra loc_8c1879D0
nop

loc_8c187840:
bra loc_8c187A9E
mov 0x81,r0

loc_8c187844:
mov.l @(loc_8c18788C,pc),r3 ; r3 set to 0x8C1866A4
mov.l @(0x1C,r14),r5
jsr @r3
mov r13,r4
cmp/pz r0
bt loc_8c187854
bra loc_8c1879D0
nop

loc_8c187854:
mov.l @(loc_8c187890,pc),r3 ; r3 set to 0x8C18A64C
jsr @r3
mov r14,r4
cmp/pz r0
bt loc_8c187894
bra loc_8c187A9E
mov 0x83,r0
#data 0x00CC

loc_8c187864:
#data 0x0148

loc_8c187866:
#data 0x0200

loc_8c187868:
#data 0xFF40
#data 0x0000

#align4
loc_8c18786C:
#data loc_8c18A5DA

loc_8c187870:
#data 0x8C33C56C

#align4
loc_8c187874:
#data bank1c.loc_8c1c96FC

loc_8c187878:
#data bank12.loc_8c129128

loc_8c18787C:
#data bank19.loc_8c198918

loc_8c187880:
#data 0x8C341478

#align4
loc_8c187884:
#data bank12.loc_8c129728

loc_8c187888:
#data loc_8c186850

loc_8c18788C:
#data loc_8c1866A4

loc_8c187890:
#data loc_8c18A64C


loc_8c187894:
mov.l @(0x1C,r14),r4
mov 0x00,r5 ; r5 set to 0x00
mov.w @(loc_8c1879DC,pc),r6 ; r6 set to 0x200
mov.l @(0x1C,r4),r3
mov.l r3,@(0x30,r4)
jsr @r10
mov.l @(0x20,r14),r4
mov.l @(0x20,r14),r4
mov 0x20,r6 ; r6 set to 0x20
mov r6,r5 ; r5 set to 0x20
jsr @r10
add 0x10,r4
mov.l @(0x08,r15),r5 ; r5 ??? bc r15 is ???
mov 0x00,r4 ; r4 set to 0x00
bra loc_8c1878C0
mov 0x20,r6

loc_8c1878B4:
mov.l @(0x20,r14),r0
mov r4,r2
mov.b @r5+,r3
add 0x10,r2
add 0x01,r4
mov.b r3,@(r0,r2)

loc_8c1878C0:
cmp/ge r6,r4
bf loc_8c1878B4
mov.l @(loc_8c1879E4,pc),r3 ; r3 set to 0x8C18A554, r3 set to 0x8C18A554
mov r15,r4
mov.l @r15,r5
jsr @r3
add 0x10,r4
mov.l @(0x20,r14),r4
mov r15,r7
mov 0x00,r12 ; r12 set to 0x00, r12 set to 0x00
add 0x30,r4
mov r12,r5 ; r5 set to 0x00, r5 set to 0x00
add 0x10,r7
bra loc_8c1878E6
mov 0x08,r6

loc_8c1878DE:
mov.b @r7+,r3
add 0x01,r5
mov.b r3,@r4
add 0x01,r4

loc_8c1878E6:
cmp/ge r6,r5
bf loc_8c1878DE
mov.l @(0x1C,r14),r3
mov 0x42,r5 ; r5 set to 0x42, r5 set to 0x42
mov.l @(loc_8c1879E8,pc),r11 ; r11 set to 0x8C33C568, r11 set to 0x8C33C568
mov.l r3,@r15
mov.l @(0x0C,r3),r2
mov.l r2,@(0x04,r15)
mov.l @r15,r3
mov.l @(0x14,r3),r2
mov.l r2,@(0x08,r15)
mov.l @r11,r3
mov.l @r15,r6
mov.l @(0x10,r3),r2
mov.l @(0x04,r6),r6
jsr @r2
mov.l @(0x20,r14),r4
mov.l @(0x0C,r15),r2
mov 0x4E,r0 ; r0 set to 0x4E, r0 set to 0x4E
mov.l @(0x20,r14),r3
mov 0x40,r5 ; r5 set to 0x40, r5 set to 0x40
mov.b r2,@(r0,r3)
mov 0x4F,r0 ; r0 set to 0x4F, r0 set to 0x4F
mov.l @(0x20,r14),r3
mov.b r12,@(r0,r3)
mov.l @(0x1C,r14),r6
mov.l @r11,r3
mov.l @r6,r6
mov.l @(0x10,r3),r2
jsr @r2
mov.l @(0x20,r14),r4
mov.l @r11,r3
mov 0x4A,r5 ; r5 set to 0x4A, r5 set to 0x4A
mov.l @(0x08,r15),r6
mov.l @(0x10,r3),r2
jsr @r2
mov.l @(0x20,r14),r4
mov.l @r11,r3
mov 0x46,r5 ; r5 set to 0x46, r5 set to 0x46
mov.l @(0x04,r15),r6
mov.l @(0x10,r3),r2
jsr @r2
mov.l @(0x20,r14),r4
mov.l @(0x1C,r14),r6
mov 0x4C,r5 ; r5 set to 0x4C, r5 set to 0x4C
mov.l @r11,r3
mov.l @(0x18,r6),r6
mov.l @(0x10,r3),r2
jsr @r2
mov.l @(0x20,r14),r4
mov.l @(0x1C,r14),r6
mov 0x48,r5 ; r5 set to 0x48, r5 set to 0x48
mov.l @r11,r3
mov.l @(0x10,r6),r6
mov.l @(0x10,r3),r2
jsr @r2
mov.l @(0x20,r14),r4
mov.l @(0x1C,r14),r6
mov 0x50,r5 ; r5 set to 0x50, r5 set to 0x50
mov.l @r11,r3
mov.l @(0x1C,r6),r6
mov.l @(0x10,r3),r2
jsr @r2
mov.l @(0x20,r14),r4
mov.l @(0x1C,r14),r6
mov 0x52,r5 ; r5 set to 0x52, r5 set to 0x52
mov.l @r11,r3
mov.l @(0x20,r6),r6
mov.l @(0x10,r3),r2
jsr @r2
mov.l @(0x20,r14),r4
mov.l @(0x1C,r14),r6
mov 0x54,r5 ; r5 set to 0x54, r5 set to 0x54
mov.l @r11,r3
mov.l @(0x34,r6),r6
mov.l @(0x10,r3),r2
jsr @r2
mov.l @(0x20,r14),r4
mov.l @(0x1C,r14),r6
mov 0x56,r5 ; r5 set to 0x56, r5 set to 0x56
mov.l @r11,r3
mov.l @(0x38,r6),r6
mov.l @(0x10,r3),r2
jsr @r2
mov.l @(0x20,r14),r4
mov.l @(0x1C,r14),r6
mov 0x44,r5 ; r5 set to 0x44, r5 set to 0x44
mov.l @r11,r3
mov.l @r6,r6
mov.l @(0x10,r3),r2
jsr @r2
mov.l @(0x20,r14),r4
mov.w @(loc_8c1879DC,pc),r6 ; r6 set to 0x200, r6 set to 0x200
mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
jsr @r10
mov r9,r4
bra loc_8c1879FC
mov 0x00,r11

loc_8c1879AA:
mov.l @(0x38,r15),r2
tst r2,r2
bt loc_8c1879BC
mov r11,r5
mov r9,r6
jsr @r8
mov r13,r4
bra loc_8c1879BE
mov r0,r4

loc_8c1879BC:
mov r12,r4

loc_8c1879BE:
mov.w @(loc_8c1879DE,pc),r1 ; r1 set to 0xFF01, r1 set to 0xFF01
mov r4,r0
cmp/eq r1,r0
bt loc_8c1879D0
mov.w @(loc_8c1879E0,pc),r1 ; r1 set to 0xFF40, r1 set to 0xFF40
cmp/eq r1,r0
bt loc_8c1879D6
bra loc_8c1879F0
nop

loc_8c1879D0:
mov.w @(loc_8c1879DE,pc),r0 ; r0 set to 0xFF01
bra loc_8c187A9E
nop

loc_8c1879D6:
mov.l @(loc_8c1879EC,pc),r6 ; r6 set to 0xFFFF
bra loc_8c1879F2
nop

loc_8c1879DC:
#data 0x0200

loc_8c1879DE:
#data 0xFF01

loc_8c1879E0:
#data 0xFF40
#data 0x0000

#align4
loc_8c1879E4:
#data loc_8c18A554

loc_8c1879E8:
#data 0x8C33C568

#align4
loc_8c1879EC:
#data 0x0000FFFF

loc_8c1879f0:
mov.l @(loc_8C187B1C,pc),r6

loc_8c1879F2:
mov.l @(loc_8c187B20,pc),r2 ; r2 set to 0x8C18A2F6
mov r11,r5
jsr @r2
mov r13,r4
add 0x01,r11

loc_8c1879FC:
mov.l @(0x1C,r14),r3
mov.l @r3,r2 ; r2 ??? bc r3 is ???
cmp/ge r2,r11
bf loc_8c1879AA
mov.l @(0x1C,r14),r4
mov 0x30,r2 ; r2 set to 0x30, r2 set to 0x30
mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
mov.l @(0x18,r4),r3
add r4,r2 ; r2 ??? bc r4 is ???, r2 ??? bc r4 is ???
mov.l @r2,r2
mov r3,r6
shll8 r6
shll r6
mov.l r3,@r15
jsr @r10
mov.l @(0x28,r14),r4
mov.l @(loc_8c187B24,pc),r3 ; r3 set to 0x8C189B7E, r3 set to 0x8C189B7E
jsr @r3
mov r13,r4
mov.l @(0x1C,r14),r5 ; r5 ??? bc r14 is ???, r5 ??? bc r14 is ???
mov.l @(loc_8c187B28,pc),r11 ; r11 set to 0xFFFA, r11 set to 0xFFFA
mov.l @(loc_8c187B20,pc),r3 ; r3 set to 0x8C18A2F6, r3 set to 0x8C18A2F6
mov.l @(0x08,r5),r5
mov r11,r6 ; r6 set to 0xFFFA, r6 set to 0xFFFA
jsr @r3
mov r13,r4
bra loc_8c187A44
mov 0x00,r9

loc_8c187A34:
mov.l @(0x1C,r14),r5
mov r11,r6
mov.l @(loc_8c187B20,pc),r3 ; r3 set to 0x8C18A2F6
mov.l @(0x0C,r5),r5
add r9,r5
jsr @r3
mov r13,r4
add 0x01,r9

loc_8c187A44:
mov.l @(0x1C,r14),r2
mov.l @(0x10,r2),r3 ; r3 ??? bc r2 is ???
cmp/ge r3,r9
bf loc_8c187A34
mov.l @(0x1C,r14),r5
mov r11,r6
mov.l @(loc_8c187B20,pc),r3 ; r3 set to 0x8C18A2F6, r3 set to 0x8C18A2F6
mov.l @(0x08,r5),r5
jsr @r3
mov r13,r4
bra loc_8c187A6C
mov r12,r9

#align4
loc_8c187A5C:
#data 0x66B355E7
#data 0x5553D32F
#data 0x430B359C
#data 0x790164D3

#align4
loc_8c187a6c:
mov.l @(0x1C,r14),r2
mov.l @(0x10,r2),r3
cmp/ge r3,r9
bf loc_8c187a5c
mov.l @(loc_8c187b2c,pc),r3
jsr @r3
mov r13,r4
mov 0x55,r5
mov 0x10,r6
jsr @r10
mov.l @(0x20,r14),r4
mov.l @(loc_8c187b30,pc),r2
jsr @r2
mov r13,r4
mov 0x00,r5
mov 0x10,r6
jsr @r10
mov.l @(0x20,r14),r4
mov.l @(loc_8c187b34,pc),r3
mov r12,r0
mov.b r0,@(0x0B,r14) 
mov.b r0,@(0x0C,r14) 
mov.b r0,@(0x0A,r14) 
jsr @r3
mov r13,r4

loc_8c187A9E:
add 0x18,r15
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c187AB2:
#data 0x2FE6
#data 0x4F222FD6
#data 0x9D2D7FF8
#data 0xD31E6E43
#data 0x0ED76053
#data 0x85F281F2
#data 0x3D3C0D1A
#data 0x554254D7
#data 0x35285244
#data 0x67535246
#data 0x65036653
#data 0x77FF3628
#data 0x64E3B02C
#data 0x8D0F4015
#data 0x54D76403
#data 0x2F325347
#data 0x534867F2
#data 0x66F285F2
#data 0x6503373C
#data 0xB01D77FF
#data 0x401564E3
#data 0x64038F02

#align4
loc_8c187B08:
#data 0x6043A001

loc_8c187B0C:
#data 0xE0FF

loc_8c187B0E:
#data 0x7F08
#data 0x6DF64F26
#data 0x6EF6000B
;==============================================
#data 0x00000148
loc_8c187b1c:
#data 0x0000FFFC

#align4
loc_8c187B20:
#data loc_8c18A2F6

loc_8c187B24:
#data loc_8c189B7E

loc_8c187B28:
#data 0x0000FFFA

#align4
loc_8c187B2C:
#data loc_8c18A148

loc_8c187B30:
#data loc_8c189FB2

loc_8c187B34:
#data loc_8c18A358
#data 0x8C33C56C


loc_8c187B3C:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8c187C18,pc),r12 ; r12 set to 0x148
mov r7,r14
mov.l @(loc_8c187C24,pc),r11 ; r11 set to 0x8C33C568
mov r6,r13
mul.l r12,r4
mov.l @(loc_8c187C20,pc),r3 ; r3 set to 0x8C33C56C
cmp/ge r13,r14
mov.w r5,@r15
sts macl,r12
bf/s loc_8c187B7E
add r3,r12 ; r12 set to 0x8C33C6B4

loc_8c187B5E:
mov.l @r11,r3 ; r3 ??
mov r14,r5
shll r5
mov.l @(0x0C,r3),r2
jsr @r2
mov.l @(0x24,r12),r4
mov.w @r15,r3
extu.w r0,r0
extu.w r3,r3
cmp/eq r3,r0
bf loc_8c187B78
bra loc_8c187B80
mov r14,r0

#align4
loc_8c187b78:
add 0xFF,r14
cmp/ge r13,r14
bt loc_8c187b5e

loc_8c187B7E:
mov 0xFF,r0 ; r0 set to 0xFFFFFFFF

loc_8c187B80:
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c187B8E:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov.w @(loc_8c187C18,pc),r13 ; r13 set to 0x148
mov r4,r12
mov.l @(loc_8c187C20,pc),r3 ; r3 set to 0x8C33C56C
mul.l r13,r12
sts macl,r13
mov.l r13,@r15
add r3,r13 ; r13 set to 0x8C33C6B4
mov.b @(0x02,r13),r0
tst r0,r0
bt/s loc_8c187BD8
mov r5,r14
mov.l @(loc_8c187C28,pc),r3 ; r3 set to 0x8C1988D8
jsr @r3
mov r12,r4
tst r0,r0
bf loc_8c187BC2
bsr loc_8c187672
mov r12,r4
bra loc_8c187BD8
nop

loc_8c187bc2:
mov.l @(loc_8c187c2c,pc),r2
jsr @r2
mov r12,r4
tst r0,r0
bt loc_8c187bd8
mov.l @r15,r2
mov.l @(loc_8c187c20,pc),r3
add r3,r2
mov.b @(0x08,r2),r0 
tst r0,r0
bf loc_8c187bde

loc_8c187BD8:
mov.w @(loc_8c187C1A,pc),r0 ; r0 set to 0xFF01
bra loc_8c187C9A
nop

loc_8c187BDE:
#data 0xD314
#data 0x64C3430B
#data 0x89024011
#data 0xA0569018
#data 0x0009

loc_8c187BEE:
#data 0xE400
#data 0xE520A008

#align4
loc_8c187BF4:
#data 0x50D86343
#data 0x62E37310
#data 0x324C013C
#data 0x22107401

#align4
loc_8c187C04:
#data 0x8BF53453
#data 0x55D86BF3
#data 0x66B37B04
#data 0x753064B3
#data 0x7608A011

loc_8c187C18:
#data 0x0148

loc_8c187C1A:
#data 0xFF01
#data 0x0000FF03

#align4
loc_8c187C20:
#data 0x8C33C56C

#align4
loc_8c187C24:
#data 0x8C33C568

#align4
loc_8c187C28:
#data bank19.loc_8c1988D8

loc_8c187C2C:
#data bank19.loc_8c198918

loc_8c187C30:
#data bank17.loc_8c1790BA

loc_8c187C34:
#data 0x24306354
#data 0x7401

loc_8c187C3A:
#data 0x3462
#data 0xD33F8BFA
#data 0x65B364E3
#data 0x7430430B
#data 0xE02052D7
#data 0x6322E500
#data 0x0E357301
#data 0x52D7E022
#data 0x0E35532C
#data 0x64C3B024
#data 0x31ECE126
#data 0xE0262101
#data 0xE02403ED
#data 0x0E35E501
#data 0x52D7E028
#data 0x0E35532E
#data 0x64C3B016
#data 0x31ECE12A
#data 0xE02C2101
#data 0x523B53D7
#data 0x0E257201
#data 0x53D8E04E
#data 0xE02E023C
#data 0x0E25622C
#data 0xE000


loc_8c187C9A:
add 0x0C,r15
lds.l @r15+,pr
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c187CA8:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.w @(loc_8c187D36,pc),r12 ; r12 set to 0x148
mov r4,r14
mov.l @(loc_8c187D40,pc),r3 ; r3 set to 0x8C33C56C
mul.l r12,r14
mov.l r5,@r15
sts macl,r12
mov.l r12,@(0x04,r15)
add r3,r12 ; r12 set to 0x8C33C6B4
mov.b @(0x02,r12),r0
tst r0,r0
bt loc_8c187CF4
mov.l @(loc_8c187D44,pc),r3 ; r3 set to 0x8C1988D8
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8c187CDE
bsr loc_8c187672
mov r14,r4
bra loc_8c187CF4
nop

loc_8c187cde:
mov.l @(loc_8c187d48,pc),r2
jsr @r2
mov r14,r4
tst r0,r0
bt loc_8c187cf4
mov.l @(0x04,r15),r2
mov.l @(loc_8c187d40,pc),r3
add r3,r2
mov.b @(0x08,r2),r0 
tst r0,r0
bf loc_8c187cfa

loc_8c187CF4:
mov.w @(loc_8c187D38,pc),r0 ; r0 set to 0xFF01
bra loc_8c187DAE
nop

loc_8c187CFA:
#data 0xD314
#data 0x64E3430B
#data 0x89024011
#data 0xA0529019
#data 0x0009

loc_8c187D0A:
#data 0x60F2
#data 0xDD10E400
#data 0x8F218801
#data 0xA0086A43
#data 0x6B43

loc_8c187D1A:
#data 0xD30E
#data 0x430B65B3
#data 0x600D64E3
#data 0x8B0430D0
#data 0x7B01

loc_8c187D2A:
#data 0x52C7
#data 0x3B33532E
#data 0x8BF3

loc_8c187D32:
#data 0xA03B
#data 0x6AB3

loc_8c187D36:
#data 0x0148

loc_8c187D38:
#data 0xFF01
#data 0xFF03

#align4
loc_8c187D3C:
#data loc_8c18A5DA

loc_8c187D40:
#data 0x8C33C56C

#align4
loc_8c187D44:
#data bank19.loc_8c1988D8

loc_8c187D48:
#data bank19.loc_8c198918

loc_8c187D4C:
#data bank17.loc_8c1790BA
#data 0x0000FFFC

#align4
loc_8c187D54:
#data loc_8c18A328

loc_8c187D58:
#data 0x6232D335
#data 0x89162228
#data 0x6B43A00F

#align4
loc_8c187D64:
#data 0x65B3D333
#data 0x64E3430B
#data 0x30D0600D
#data 0xD3318B06
#data 0x430B65B3
#data 0x401164E3
#data 0x7A018B00

loc_8c187D80:
#data 0x7B01

loc_8c187D82:
#data 0x53C7
#data 0x3B23523C
#data 0xA00F8BEC
#data 0x0009

loc_8c187D8E:
#data 0xA009
#data 0x6B43

loc_8c187D92:
#data 0xD328
#data 0x430B65B3
#data 0x600D64E3
#data 0x8F0130D0
#data 0x7A017B01

#align4
loc_8c187DA4:
#data 0x523C53C7
#data 0x8BF23B23

loc_8c187DAC:
#data 0x60A3


loc_8c187DAE:
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
#data 0x2FE6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0x7FFC4F22
#data 0x6E439B2C
#data 0x0EB7D31A
#data 0x2FB20B1A
#data 0x84B23B3C
#data 0x89132008
#data 0x430BD317
#data 0x200864E3
#data 0xBC428B03
#data 0xA00B64E3
#data 0xD2140009
#data 0x64E3420B
#data 0x89052008
#data 0xD30F62F2
#data 0x8428323C
#data 0x8B022008
#data 0xA037900F
#data 0xD30E0009
#data 0x64E3430B
#data 0x89024011
#data 0xA02F9008
#data 0xDA0B0009
#data 0x6C43E400
#data 0x6D43A01D
#data 0xFF010148
#data 0x0000FF03

#align4
loc_8c187E30:
#data bank1c.loc_8c1c5968

loc_8c187E34:
#data loc_8c18A328

loc_8c187E38:
#data loc_8c18A292
#data 0x8C33C56C

#align4
loc_8c187E40:
#data bank19.loc_8c1988D8

loc_8c187E44:
#data bank19.loc_8c198918

loc_8c187E48:
#data bank17.loc_8c1790BA
#data 0x0000FFFC
#data 0x65D3D236
#data 0x64E3420B
#data 0x30A0600D
#data 0x7D018F01
#data 0x54B77C01
#data 0x5344524B
#data 0x03277201
#data 0x021AE300
#data 0x323E3327
#data 0x3D234221
#data 0x60C38BEA
#data 0x4F267F04
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;==============================================

loc_8c187E8C:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
add 0xD0,r15
mov 0x00,r12 ; r12 set to 0x00
mov r6,r3
mov r4,r13
mov.l @(loc_8c187F30,pc),r0 ; r0 set to 0x8C33C56E
mov.l r6,@r15
mov.l r12,@r3
mov.w @(loc_8c187F22,pc),r3 ; r3 set to 0x148
mul.l r3,r13
sts macl,r3
mov.b @(r0,r3),r2
tst r2,r2
bt/s loc_8c187EDC
mov r5,r11
mov.l @(loc_8c187F34,pc),r3 ; r3 set to 0x8C1988D8
jsr @r3
mov r13,r4
tst r0,r0
bf loc_8c187EC4
bsr loc_8c187672
mov r13,r4
bra loc_8c187EDC
nop

#align4
loc_8c187ec4:
mov.l @(loc_8c187f38,pc),r2
jsr @r2
mov r13,r4
tst r0,r0
bt loc_8c187edc
mov.w @(loc_8c187f22,pc),r3
mov.l @(loc_8C187F3C,pc),r0
mul.l r3,r13
sts macl,r3
mov.b @(r0,r3),r2
tst r2,r2
bf loc_8c187ee2

loc_8c187EDC:
mov.w @(loc_8c187F24,pc),r0 ; r0 set to 0xFF01
bra loc_8c187F90
nop

loc_8c187EE2:
#data 0xD317
#data 0x64D3430B
#data 0x89024011
#data 0xA04F901B
#data 0x0009

loc_8c187EF2:
#data 0xD314
#data 0x430B65B3
#data 0x401164D3
#data 0xD2128B0E
#data 0x420B65B3
#data 0x401164D3
#data 0x900D8902
#data 0x0009A040

#align4
loc_8c187F10:
#data 0x420BD20E
#data 0x6E0364D3
#data 0x8B192EE8

#align4
loc_8c187F1C:
#data 0xA0379005
#data 0x0009

loc_8c187F22:
#data 0x0148

loc_8c187F24:
#data 0xFF01
#data 0xFF03
#data 0xFF07FF41

#align4
loc_8c187F2C:
#data loc_8c18A328

loc_8c187F30:
#data 0x8C33C56E

#align4
loc_8c187F34:
#data bank19.loc_8c1988D8

loc_8c187F38:
#data bank19.loc_8c198918
loc_8c187f3c:
#data 0x8C33C574

#align4
loc_8c187F40:
#data bank17.loc_8c1790BA

loc_8c187F44:
#data loc_8c18A444

loc_8c187F48:
#data loc_8c18A468

loc_8c187F4C:
#data loc_8c18A40E

loc_8c187F50:
#data 0x66F3D23C
#data 0x760465B3
#data 0x64D3420B
#data 0x4011D33A
#data 0x23028D06
#data 0x410BD139
#data 0x906664E3
#data 0x0009A010

#align4
loc_8c187F70:
#data 0x1EC1E040
#data 0x1E3D53FB
#data 0x1E2E52F4
#data 0x0E266323
#data 0x85F61EDA
#data 0x84FE81E1
#data 0x60C380E1
#data 0x23E263F2


loc_8c187F90:
add 0x30,r15
lds.l @r15+,pr
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c187F9E:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
sts.l pr,@-r15
add 0xC4,r15
mov.w @(loc_8c18803C,pc),r3 ; r3 set to 0x148
mov r4,r14
mov.l @(loc_8c188050,pc),r2 ; r2 set to 0x8C33C56C
mov 0x00,r11 ; r11 set to 0x00
mul.l r3,r14
mov.l r6,@(0x08,r15)
mov.l r7,@(0x04,r15)
sts macl,r3
mov.l r3,@(0x0C,r15)
add r2,r3 ; r3 set to 0x8C33C6B4
mov.l r3,@r15
mov.l @(0x04,r15),r1
mov.l r11,@r1
mov.l @r15,r3 ; r3 ??? bc r15 is ???
mov.b @(0x02,r3),r0
tst r0,r0
bt/s loc_8c187FF8
mov r5,r12
mov.l @(loc_8c188054,pc),r3 ; r3 set to 0x8C1988D8
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8c187FE2
bsr loc_8c187672
mov r14,r4
bra loc_8c187FF8
nop

loc_8c187fe2:
mov.l @(loc_8c188058,pc),r2
jsr @r2
mov r14,r4
tst r0,r0
bt loc_8c187ff8
mov.l @(0x0C,r15),r2
mov.l @(loc_8c188050,pc),r3
add r3,r2
mov.b @(0x08,r2),r0 
tst r0,r0
bf loc_8c187ffe

loc_8c187FF8:
mov.w @(loc_8c18803E,pc),r0 ; r0 set to 0xFF01
bra loc_8c1880F2
nop

loc_8c187FFE:
#data 0xD317
#data 0x64E3430B
#data 0x89024011
#data 0xA072901A
#data 0x0009

loc_8c18800E:
#data 0x63F2
#data 0x512E5237
#data 0x893D2118
#data 0x65C3D311
#data 0x64E3430B
#data 0x8B374011
#data 0x66F3D307
#data 0x761065C3
#data 0x64E3430B
#data 0x8B174011
#data 0xA05C9005
#data 0xFF050009

loc_8c18803C:
#data 0x0148

loc_8c18803E:
#data 0xFF01
#data 0xFF06FF03

#align4
loc_8c188044:
#data loc_8c189EBE
#data 0x8C341470

#align4
loc_8c18804C:
#data loc_8c18A43C

loc_8c188050:
#data 0x8C33C56C

#align4
loc_8c188054:
#data bank19.loc_8c1988D8

loc_8c188058:
#data bank19.loc_8c198918

loc_8c18805C:
#data bank17.loc_8c1790BA

loc_8c188060:
#data loc_8c18A444

loc_8c188064:
#data 0x65F3D340
#data 0x430B7510
#data 0x401164E3
#data 0x90738B02
#data 0x0009A03D

#align4
loc_8c188078:
#data 0xE500D33C
#data 0x64E3430B
#data 0x600DD23B
#data 0x8B053020
#data 0x430BD33A
#data 0x6A0364E3
#data 0x89024A11

#align4
loc_8c188094:
#data 0xA02C9063
#data 0x0009

loc_8c18809A:
#data 0xD337
#data 0x430B65A3
#data 0xD23664E3
#data 0x64E3420B
#data 0x2DD86D03
#data 0x90578B02
#data 0x0009A01F

#align4
loc_8c1880B4:
#data 0xD332E401
#data 0xE2026043
#data 0x64D31D42
#data 0x1DAB1D21
#data 0x1DBC1D3E
#data 0x81D11DEA
#data 0x80D160B3
#data 0x7410A003

#align4
loc_8c1880D4:
#data 0x243063C4
#data 0x7401

loc_8c1880DA:
#data 0x62C0
#data 0x8BF92228
#data 0x24B0D328
#data 0x55F264D3
#data 0x7420430B
#data 0xE00052F1
#data 0x22D2


loc_8c1880F2:
add 0x3C,r15
lds.l @r15+,pr
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c188102:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
sts.l pr,@-r15
add 0xCC,r15
mov 0x00,r11 ; r11 set to 0x00
mov r7,r3
mov r4,r14
mov.l @(loc_8c188188,pc),r0 ; r0 set to 0x8C33C56E
mov.l r6,@(0x04,r15)
mov.l r7,@r15
mov.l r11,@r3
mov.w @(loc_8c188162,pc),r3 ; r3 set to 0x148
mul.l r3,r14
sts macl,r3
mov.b @(r0,r3),r2
tst r2,r2
bt/s loc_8c188156
mov r5,r12
mov.l @(loc_8c18818C,pc),r3 ; r3 set to 0x8C1988D8
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8c18813E
bsr loc_8c187672
mov r14,r4
bra loc_8c188156
nop

loc_8c18813e:
mov.l @(loc_8c188190,pc),r2
jsr @r2
mov r14,r4
tst r0,r0
bt loc_8c188156
mov.w @(loc_8c188162,pc),r3
mov.l @(loc_8C188194,pc),r0
mul.l r3,r14
sts macl,r3
mov.b @(r0,r3),r2
tst r2,r2
bf loc_8c188198

loc_8c188156:
mov.w @(loc_8c188164,pc),r0 ; r0 set to 0xFF01
bra loc_8c18823A
nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
#data 0xFF08FF09
#data 0xFF07

loc_8c188162:
#data 0x0148

loc_8c188164:
#data 0xFF01
#data 0x0000

#align4
loc_8c188168:
#data loc_8c189F2E

loc_8c18816C:
#data loc_8c18A328
#data 0x0000FFFC

#align4
loc_8c188174:
#data loc_8c189F6C

loc_8c188178:
#data loc_8c18A3DC

loc_8c18817C:
#data loc_8c18A40E
#data 0x0000FFFF

#align4
loc_8c188184:
#data loc_8c18A554

loc_8c188188:
#data 0x8C33C56E

#align4
loc_8c18818C:
#data bank19.loc_8c1988D8

loc_8c188190:
#data bank19.loc_8c198918
loc_8c188194:
#data 0x8C33C574

;==============================================
loc_8c188198:
#data 0x430BD33E
#data 0x401164E3
#data 0x90718902
#data 0x0009A049

#align4
loc_8c1881A8:
#data 0x65C3D33B
#data 0x64E3430B
#data 0x8B154011
#data 0x66F3D239
#data 0x760865C3
#data 0x64E3420B
#data 0x8B074011
#data 0xB60365C3
#data 0x401164E3
#data 0x64038D02
#data 0x6043A033

#align4
loc_8c1881D4:
#data 0x420BD232
#data 0x6A0364E3
#data 0x89024A11

#align4
loc_8c1881E0:
#data 0xA02A9053
#data 0x0009

loc_8c1881E6:
#data 0xD22F
#data 0x420B65A3
#data 0xD32E64E3
#data 0x64E3430B
#data 0x2DD86D03
#data 0x90478B02
#data 0x0009A01D

#align4
loc_8c188200:
#data 0x60B3D22A
#data 0x64D3E301
#data 0x1D311DB2
#data 0x1D2E1DAB
#data 0x1DEA1DBC
#data 0x80D181D1
#data 0x7410A003

#align4
loc_8c18821C:
#data 0x243063C4
#data 0x7401

loc_8c188222:
#data 0x62C0
#data 0x8BF92228
#data 0x24B0D321
#data 0x55F164D3
#data 0x7420430B
#data 0xE00062F2
#data 0x22D2


loc_8c18823A:
add 0x34,r15
lds.l @r15+,pr
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c18824A:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov r5,r0
mov r4,r14
tst r14,r14
mov.w r0,@(0x04,r15)
bf/s loc_8c188266
mov.b r6,@r15
mov.w @(loc_8c18828E,pc),r0 ; r0 set to 0xFF00
add 0x08,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

loc_8c188266:
mov.l @(0x28,r14),r2
mov.w @(loc_8c188290,pc),r3 ; r3 set to 0x148
mov.l @(loc_8c1882B4,pc),r0 ; r0 set to 0x8C33C56E
mul.l r3,r2
sts macl,r3
mov.b @(r0,r3),r1
tst r1,r1
bt loc_8c1882D6
mov.l @(loc_8c1882B8,pc),r3 ; r3 set to 0x8C1988D8
jsr @r3
mov.l @(0x28,r14),r4
tst r0,r0
bf loc_8c1882BC
bsr loc_8c187672
mov.l @(0x28,r14),r4
bra loc_8c1882D6
nop
#data 0xFF08FF03
#data 0xFF07

loc_8c18828E:
#data 0xFF00

loc_8c188290:
#data 0x0148
#data 0x0000

#align4
loc_8c188294:
#data bank17.loc_8c1790BA

loc_8c188298:
#data loc_8c18A444

loc_8c18829C:
#data loc_8c189EBE

loc_8c1882A0:
#data loc_8c189F6C

loc_8c1882A4:
#data loc_8c18A3DC

loc_8c1882A8:
#data loc_8c18A40E
#data 0x0000FFFF

#align4
loc_8c1882B0:
#data loc_8c18A554

loc_8c1882B4:
#data 0x8C33C56E

#align4
loc_8c1882B8:
#data bank19.loc_8c1988D8

loc_8c1882bc:
mov.l @(loc_8c1883c0,pc),r2
jsr @r2
mov.l @(0x28,r14),r4
tst r0,r0
bt loc_8c1882d6
mov.l @(0x28,r14),r2
mov.w @(loc_8c1883b6,pc),r3
mov.l @(loc_8C1883C4,pc),r0
mul.l r3,r2
sts macl,r3
mov.b @(r0,r3),r1
tst r1,r1
bf loc_8c1882e0

loc_8c1882D6:
mov.w @(loc_8c1883B8,pc),r0 ; r0 set to 0xFF01
add 0x08,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

#align4
loc_8c1882E0:
#data 0x430BD339
#data 0x401154EA
#data 0x90668904
#data 0x4F267F08
#data 0x6EF6000B
;==============================================

#align4
loc_8c1882F4:
#data 0x81E185F2
#data 0x80E160F0
#data 0x7F08E000
#data 0x000B4F26
#data 0x6EF6
;==============================================

loc_8c188306:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
tst r14,r14
bf/s loc_8c188322
mov.l r5,@r15
mov.w @(loc_8c1883BC,pc),r0 ; r0 set to 0xFF00
bra loc_8c18845E
nop

loc_8c188322:
mov.l @(0x28,r14),r2
mov.w @(loc_8c1883B6,pc),r11 ; r11 set to 0x148
mov.l @(loc_8c1883CC,pc),r10 ; r10 set to 0x8C33C56C
mul.l r11,r2
sts macl,r2
add r10,r2
mov.b @(0x02,r2),r0
tst r0,r0
bf/s loc_8c18833A
mov 0x00,r13 ; r13 set to 0x00
bra loc_8c188456
nop

loc_8c18833A:
mov.l @(loc_8c1883C0,pc),r2 ; r2 set to 0x8C198918
jsr @r2
mov.l @(0x28,r14),r4
tst r0,r0
bf loc_8c188348
bra loc_8c188456
nop

loc_8c188348:
mov.l @(0x28,r14),r3
mul.l r11,r3
sts macl,r3
add r10,r3
mov.b @(0x08,r3),r0
tst r0,r0
bf loc_8c18835A
bra loc_8c188456
nop

loc_8c18835A:
mov.l @(loc_8c1883D0,pc),r3 ; r3 set to 0x8C1988D8
jsr @r3
mov.l @(0x28,r14),r4
tst r0,r0
bf loc_8c18836C
bsr loc_8c187672
mov.l @(0x28,r14),r4
bra loc_8c188456
nop

#align4
loc_8c18836c:
mov.l @(loc_8c1883c8,pc),r3
jsr @r3
mov.l @(0x28,r14),r4
cmp/pz r0
bf loc_8c188456
mov.l @(0x04,r14),r2
tst r2,r2
bt/s loc_8c188454
mov.l @(0x28,r14),r12
mov.l @r15,r3
tst r3,r3
bt loc_8c1883a0
mul.l r11,r12
mov 0x01,r3
mov.l @(loc_8c1883d4,pc),r0
sts macl,r4
add r10,r4
mov.l r3,@(0x30,r4) 
mov.l @(0x04,r4),r2
mov r2,r3
shll2 r2
add r3,r2
shll2 r2
shll2 r2
mov.l @(r0,r2),r1
mov.l r1,@(0x34,r4) 

loc_8c1883a0:
mov.l @(loc_8c1883d8,pc),r3
mov.l @(0x2C,r14),r5
jsr @r3
mov r12,r4
mov r0,r13
mov.l @(0x08,r14),r0
cmp/eq 0x01,r0 
bf loc_8c1883dc
mov.w @(loc_8C1883BE,pc),r4
bra loc_8c1883de
nop 

loc_8c1883b6:
#data 0x0148

loc_8c1883b8:
#data 0xFF01
#data 0xFF03

loc_8c1883bc:
#data 0xFF00

loc_8C1883BE:
#data 0x00CC

loc_8c1883c0:
#data 0x8918
#data 0x8C19
loc_8c1883c4:
#data 0xC574
#data 0x8C33

#align4
loc_8c1883c8:
#data bank17.loc_8c1790ba

loc_8c1883cc:
#data 0xC56C
#data 0x8C33

loc_8c1883d0:
#data 0x88D8
#data 0x8C19

#align4
loc_8c1883d4:
#data bank1c.loc_8c1c970c

loc_8c1883d8:
#data loc_8c18a3dc


loc_8c1883dc:
mov 0x33,r4

loc_8c1883de:
mov.l @(loc_8C1884CC,pc),r11
mov 0x02,r5
mov.b r4,@r13
mov.b @(0x01,r14),r0 
mov.b r0,@(0x01,r13) 
mov.l @r11,r3
mov.l @(0x38,r14),r6
mov.l @(0x10,r3),r2
jsr @r2
mov r13,r4
mov.l @r11,r3
mov 0x18,r5
mov.l @(0x30,r14),r6
mov.l @(0x10,r3),r2
jsr @r2
mov r13,r4
mov.l @r11,r3
mov 0x1A,r5
mov.w @(0x02,r14),r0 
mov.l @(0x10,r3),r2
mov r0,r6
jsr @r2
mov r13,r4
mov r13,r4
mov r14,r5
mov r13,r11
add 0x04,r4
add 0x10,r5
bra loc_8c188420
add 0x10,r11

loc_8c18841a:
mov.b @r5+,r3
mov.b r3,@r4
add 0x01,r4

loc_8c188420:
cmp/hs r11,r4
bf loc_8c18841a
mov r14,r5
mov r13,r6
mov r11,r4
add 0x20,r5
bra loc_8c188436
add 0x18,r6

loc_8c188430:
mov.b @r5+,r3
mov.b r3,@r4
add 0x01,r4

loc_8c188436:
cmp/hs r6,r4
bf loc_8c188430
mov.l @(loc_8c1884d0,pc),r3
mov.l @(0x2C,r14),r5
jsr @r3
mov r12,r4
mov.l @(loc_8c1884d4,pc),r2
jsr @r2
mov r12,r4
cmp/pz r0
bf/s loc_8c188456
mov r0,r13
mov.l @(loc_8c1884d8,pc),r3
jsr @r3
mov r12,r4

loc_8c188454:
mov 0x00,r13

loc_8c188456:
mov.l @(loc_8c1884DC,pc),r2 ; r2 set to 0x8C18A43C
jsr @r2
mov r14,r4
mov r13,r0

loc_8c18845E:
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c18846E:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
tst r14,r14
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
sts.l pr,@-r15
bf/s loc_8c18848A
mov r6,r11
mov.w @(loc_8c1884C2,pc),r0 ; r0 set to 0xFF00
bra loc_8c18851E
nop

loc_8c18848A:
mov.l @(0x28,r14),r2
mov.w @(loc_8c1884C4,pc),r6 ; r6 set to 0x148
mov.l @(loc_8c1884E0,pc),r4 ; r4 set to 0x8C33C56C
mul.l r6,r2
sts macl,r2
add r4,r2
mov.b @(0x02,r2),r0
tst r0,r0
bf loc_8c1884A2
mov.w @(loc_8c1884C6,pc),r0 ; r0 set to 0xFF01
bra loc_8c18851E
nop

loc_8c1884A2:
mov.l @(0x04,r14),r0
cmp/eq 0x01,r0
bt loc_8c1884B0
cmp/eq 0x02,r0
bt loc_8c1884B6
bra loc_8c1884BC
nop

loc_8c1884B0:
mov.l @(loc_8c1884E4,pc),r10 ; r10 set to 0x8C18852E
bra loc_8c1884EC
nop

loc_8c1884B6:
mov.l @(loc_8c1884E8,pc),r10 ; r10 set to 0x8C18864A
bra loc_8c1884EC
nop

loc_8c1884BC:
mov.w @(loc_8c1884C8,pc),r0 ; r0 set to 0xFF0B
bra loc_8c18851E
nop

loc_8c1884C2:
#data 0xFF00

loc_8c1884C4:
#data 0x0148

loc_8c1884C6:
#data 0xFF01

loc_8c1884C8:
#data 0xFF0B
#data 0x0000
loc_8c1884cc:
#data 0x8C33C568

#align4
loc_8c1884D0:
#data loc_8c18A3F4

loc_8c1884D4:
#data loc_8c189C9E

loc_8c1884D8:
#data loc_8c18A148

loc_8c1884DC:
#data loc_8c18A43C

loc_8c1884E0:
#data 0x8C33C56C

#align4
loc_8c1884E4:
#data loc_8c18852E

loc_8c1884E8:
#data loc_8c18864A


loc_8c1884EC:
mov.l @(0x28,r14),r3
mov 0x01,r2 ; r2 set to 0x01
mov.w @(loc_8c1885CE,pc),r9 ; r9 set to 0x200
mov r5,r13
mul.l r6,r3
cmp/pl r11
sts macl,r6
add r6,r4
mov.l r2,@(0x30,r4)
mov.l r11,@(0x34,r4)
bf/s loc_8c18851C
mov 0x00,r12 ; r12 set to 0x00

loc_8c188504:
mov r13,r5
jsr @r10
mov r14,r4
mov r0,r4
cmp/pz r4
bt loc_8c188514
bra loc_8c18851E
mov r4,r0

#align4
loc_8c188514:
add 0x01,r12
cmp/ge r11,r12
bf/s loc_8c188504
add r9,r13

loc_8c18851C:
mov 0x00,r0 ; r0 set to 0x00

loc_8c18851E:
lds.l @r15+,pr
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c18852E:
mov.l r14,@-r15
mov.l r13,@-r15
mov r4,r13
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov r5,r9
mov.l r8,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1885D8,pc),r3 ; r3 set to 0x8C1988D8
jsr @r3
mov.l @(0x28,r13),r4
tst r0,r0
bf loc_8c188554
bsr loc_8c187672
mov.l @(0x28,r13),r4
bra loc_8c18856E
nop

#align4
loc_8c188554:
mov.l @(loc_8c1885dc,pc),r2
jsr @r2
mov.l @(0x28,r13),r4
tst r0,r0
bt loc_8c18856e
mov.l @(0x28,r13),r2
mov.w @(loc_8C1885D0,pc),r3
mov.l @(loc_8C1885E0,pc),r0
mul.l r3,r2
sts macl,r3
mov.b @(r0,r3),r1
tst r1,r1
bf loc_8c188574

loc_8c18856E:
mov.w @(loc_8c1885D2,pc),r0 ; r0 set to 0xFF01
bra loc_8c188638
nop

#align4
loc_8c188574:
#data 0x430BD31B
#data 0x401154DA
#data 0x90298902
#data 0x0009A05A

#align4
loc_8c188584:
#data 0x5CDAD318
#data 0x64C3430B
#data 0x4E116E03
#data 0xDA168B1A
#data 0x669365E3
#data 0x64C34A0B
#data 0x6403DB14
#data 0x89344411
#data 0x34309315
#data 0xA0458B01
#data 0x6043

loc_8c1885AE:
#data 0xD211
#data 0x66B365E3
#data 0x64C3420B
#data 0xD310D80F
#data 0x430B6583
#data 0x6E0364C3
#data 0x891B4E11

#align4
loc_8c1885C8:
#data 0xA0359005
#data 0x0009

loc_8c1885CE:
#data 0x0200
loc_8c1885d0:
#data 0x0148

loc_8c1885D2:
#data 0xFF01
#data 0xFF04FF03

#align4
loc_8c1885D8:
#data bank19.loc_8c1988D8

loc_8c1885DC:
#data bank19.loc_8c198918
loc_8c1885e0:
#data 0x8C33C574

#align4
loc_8c1885E4:
#data bank17.loc_8c1790BA

loc_8c1885E8:
#data loc_8c18A24C

loc_8c1885EC:
#data loc_8c186850
#data 0x0000FFFF

#align4
loc_8c1885F4:
#data loc_8c18A2F6
#data 0x0000FFFC

#align4
loc_8c1885FC:
#data loc_8c18A1E8

loc_8c188600:
#data 0x669365E3
#data 0x64C34A0B
#data 0x24486403
#data 0x8BCF

loc_8c18860E:
#data 0xD338
#data 0xD63665E3
#data 0x64C3430B
#data 0x32B052DE
#data 0x6AEF8F02
#data 0x1DAEA005

#align4
loc_8c188624:
#data 0x66E3D332
#data 0x430B55DF
#data 0x64C3

loc_8c18862E:
#data 0xE000
#data 0x52DC1DAF
#data 0x1D2C7201


loc_8c188638:
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c18864A:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov r4,r14
mov.w @(loc_8c1886E4,pc),r3 ; r3 set to 0x148
mov.l @(loc_8c1886F4,pc),r2 ; r2 set to 0x8C33C56C
mov.l @(loc_8c1886F8,pc),r1 ; r1 set to 0x8C1988D8
mov.l r5,@r15
mov.l @(0x28,r14),r4
mul.l r3,r4
sts macl,r3
add r2,r3 ; r3 set to 0x8C33C6B4
jsr @r1
mov.l r3,@(0x04,r15)
tst r0,r0
bf loc_8c18867A
mov.l @(loc_8c1886FC,pc),r2 ; r2 set to 0x8C187672
jsr @r2
mov.l @(0x28,r14),r4
bra loc_8c188694
nop

loc_8c18867a:
mov.l @(loc_8c188700,pc),r3
jsr @r3
mov.l @(0x28,r14),r4
tst r0,r0
bt loc_8c188694
mov.l @(0x28,r14),r2
mov.w @(loc_8c1886e4,pc),r3
mov.l @(loc_8C188704,pc),r0
mul.l r3,r2
sts macl,r3
mov.b @(r0,r3),r1
tst r1,r1
bf loc_8c18869a

loc_8c188694:
mov.w @(loc_8c1886E6,pc),r0 ; r0 set to 0xFF01
bra loc_8c188744
nop

loc_8c18869A:
#data 0xD31B
#data 0x54EA430B
#data 0x89024011
#data 0xA04D9020
#data 0x0009

loc_8c1886AA:
#data 0x5DEC
#data 0x5CEAD317
#data 0x430B65D3
#data 0xD21664C3
#data 0x3020600D
#data 0x53F18B05
#data 0x523750EC
#data 0x3013512E
#data 0x8B02

loc_8c1886CA:
#data 0x900E
#data 0x0009A03A

#align4
loc_8c1886D0:
#data 0x65D3D310
#data 0x430B66F2
#data 0x640364C3
#data 0x891B4411
#data 0x6043A030

loc_8c1886E4:
#data 0x0148

loc_8c1886E6:
#data 0xFF01
#data 0xFF04FF03
#data 0x0000FFFA

#align4
loc_8c1886F0:
#data loc_8c18A2F6

loc_8c1886F4:
#data 0x8C33C56C

#align4
loc_8c1886F8:
#data bank19.loc_8c1988D8

loc_8c1886FC:
#data loc_8c187672

loc_8c188700:
#data bank19.loc_8c198918
loc_8c188704:
#data 0x8C33C574

#align4
loc_8c188708:
#data bank17.loc_8c1790BA

loc_8c18870C:
#data loc_8c18A328
#data 0x0000FFFC

#align4
loc_8c188714:
#data loc_8c186850

loc_8c188718:
#data 0x65D3D33E
#data 0x430BD63C
#data 0x53EE64C3
#data 0x3320D23C
#data 0x6BDF8F02
#data 0x1EBEA005

#align4
loc_8c188730:
#data 0x66D3D138
#data 0x410B55EF
#data 0x64C3

loc_8c18873A:
#data 0xE000
#data 0x53EC1EBF
#data 0x1E3C7301


loc_8c188744:
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c188752:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
tst r14,r14
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
sts.l pr,@-r15
bf/s loc_8c18876C
mov r6,r11
mov.w @(loc_8c188806,pc),r0 ; r0 set to 0xFF00
bra loc_8c1887B6
nop

loc_8c18876C:
mov.l @(0x28,r14),r2
mov.w @(loc_8c188808,pc),r6 ; r6 set to 0x148
mov.l @(loc_8c18881C,pc),r4 ; r4 set to 0x8C33C56C
mul.l r6,r2
sts macl,r2
add r4,r2
mov.b @(0x02,r2),r0
tst r0,r0
bf loc_8c188784
mov.w @(loc_8c18880A,pc),r0 ; r0 set to 0xFF01
bra loc_8c1887B6
nop

loc_8c188784:
mov.l @(0x28,r14),r3
mov 0x01,r2 ; r2 set to 0x01
mov.w @(loc_8c18880C,pc),r10 ; r10 set to 0x200
mov r5,r13
mul.l r6,r3
cmp/pl r11
sts macl,r6
add r6,r4
mov.l r2,@(0x30,r4)
mov.l r11,@(0x34,r4)
bf/s loc_8c1887B4
mov 0x00,r12 ; r12 set to 0x00

loc_8c18879C:
mov r13,r5
bsr loc_8c1887C4
mov r14,r4
mov r0,r4
cmp/pz r4
bt loc_8c1887AC
bra loc_8c1887B6
mov r4,r0

#align4
loc_8c1887ac:
add 0x01,r12
cmp/ge r11,r12
bf/s loc_8c18879c
add r10,r13

loc_8c1887B4:
mov 0x00,r0 ; r0 set to 0x00

loc_8c1887B6:
lds.l @r15+,pr
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c1887C4:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8c188820,pc),r3 ; r3 set to 0x8C1988D8
mov r4,r14
mov.l r5,@r15
jsr @r3
mov.l @(0x28,r14),r4
tst r0,r0
bf loc_8c1887E6
mov.l @(loc_8c188824,pc),r3 ; r3 set to 0x8C187672
jsr @r3
mov.l @(0x28,r14),r4
bra loc_8c188800
nop

loc_8c1887e6:
mov.l @(loc_8c188828,pc),r2
jsr @r2
mov.l @(0x28,r14),r4
tst r0,r0
bt loc_8c188800
mov.l @(0x28,r14),r2
mov.w @(loc_8c188808,pc),r3
mov.l @(loc_8C18882C,pc),r0
mul.l r3,r2
sts macl,r3
mov.b @(r0,r3),r1
tst r1,r1
bf loc_8c188830

loc_8c188800:
mov.w @(loc_8c18880A,pc),r0 ; r0 set to 0xFF01
bra loc_8c1888A6
nop

loc_8c188806:
#data 0xFF00

loc_8c188808:
#data 0x0148

loc_8c18880A:
#data 0xFF01

loc_8c18880C:
#data 0x0200
#data 0x0000
#data 0x0000FFFA

#align4
loc_8c188814:
#data loc_8c18A2F6
#data 0x0000FFFF

#align4
loc_8c18881C:
#data 0x8C33C56C

#align4
loc_8c188820:
#data bank19.loc_8c1988D8

loc_8c188824:
#data loc_8c187672

loc_8c188828:
#data bank19.loc_8c198918
loc_8c18882c:
#data 0x8C33C574

#align4
loc_8c188830:
#data 0x430BD335
#data 0x401154EA
#data 0x90618902
#data 0x0009A033

#align4
loc_8c188840:
#data 0xD332E040
#data 0x323002EE
#data 0x5DEA8F06
#data 0x222852ED
#data 0xD02F8905
#data 0x0009A027

#align4
loc_8c188858:
#data 0x222852ED
#data 0x8B01

loc_8c18885E:
#data 0xA022
#data 0xE000

loc_8c188862:
#data 0x02EE
#data 0x3230D32B
#data 0x02EE8903
#data 0x3230D32A
#data 0x8B02

loc_8c188872:
#data 0x9046
#data 0x0009A017

#align4
loc_8c188878:
#data 0xD3280CEE
#data 0x65C366F2
#data 0x64D3430B
#data 0x44116403
#data 0xA00C8901
#data 0x6043

loc_8c18888E:
#data 0xD324
#data 0x430B65C3
#data 0xE14064D3
#data 0x600D31EC
#data 0x53ED2102
#data 0x603373FF
#data 0x1E3D


loc_8c1888A6:
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c1888B2:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xD0,r15
mov.w @(loc_8c188904,pc),r3 ; r3 set to 0x148
mov r4,r14
mov.l @(loc_8c188924,pc),r0 ; r0 set to 0x8C33C56E
mul.l r3,r14
mov.l r5,@r15
sts macl,r3
mov.b @(r0,r3),r2
tst r2,r2
bt loc_8c1888F6
mov.l @(loc_8c188928,pc),r3 ; r3 set to 0x8C1988D8
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8c1888DE
mov.l @(loc_8c18892C,pc),r3 ; r3 set to 0x8C187672
jsr @r3
mov r14,r4
bra loc_8c1888F6
nop

loc_8c1888de:
mov.l @(loc_8c188930,pc),r2
jsr @r2
mov r14,r4
tst r0,r0
bt loc_8c1888f6
mov.w @(loc_8c188904,pc),r3
mov.l @(loc_8C188934,pc),r0
mul.l r3,r14
sts macl,r3
mov.b @(r0,r3),r2
tst r2,r2
bf loc_8c188938

loc_8c1888F6:
mov.w @(loc_8c188906,pc),r0 ; r0 set to 0xFF01
add 0x30,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================
#data 0xFF41FF03

loc_8c188904:
#data 0x0148

loc_8c188906:
#data 0xFF01

#align4
loc_8c188908:
#data bank17.loc_8c1790BA
#data 0x0000FFFA
#data 0xFFFF0000
#data 0x0000FFFC
#data 0x0000FFFF

#align4
loc_8c18891C:
#data loc_8c186778

loc_8c188920:
#data loc_8c18A328

loc_8c188924:
#data 0x8C33C56E

#align4
loc_8c188928:
#data bank19.loc_8c1988D8

loc_8c18892C:
#data loc_8c187672

loc_8c188930:
#data bank19.loc_8c198918
loc_8c188934:
#data 0x8C33C574

#align4
loc_8c188938:
#data 0x430BD33C
#data 0x401164E3
#data 0x906E8904
#data 0x4F267F30
#data 0x6EF6000B
;==============================================

#align4
loc_8c18894C:
#data 0x66F365F2
#data 0x7604D337
#data 0x64E3430B
#data 0x8B044011
#data 0x7F30E000
#data 0x000B4F26
#data 0x6EF6
;==============================================

loc_8c188966:
#data 0x905D
#data 0x4F267F30
#data 0x6EF6000B
;==============================================

loc_8c188970:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.w @(loc_8c188A26,pc),r14 ; r14 set to 0x148
mov r4,r13
mov.l @(loc_8c188A34,pc),r3 ; r3 set to 0x8C33C56C
mul.l r14,r13
mov.l r5,@r15
sts macl,r14
mov.l r14,@(0x04,r15)
add r3,r14 ; r14 set to 0x8C33C6B4
mov.b @(0x02,r14),r0
tst r0,r0
bt loc_8c1889BA
mov.l @(loc_8c188A38,pc),r3 ; r3 set to 0x8C1988D8
jsr @r3
mov r13,r4
tst r0,r0
bf loc_8c1889A4
mov.l @(loc_8c188A3C,pc),r3 ; r3 set to 0x8C187672
jsr @r3
mov r13,r4
bra loc_8c1889BA
nop

#align4
loc_8c1889a4:
mov.l @(loc_8c188a40,pc),r2
jsr @r2
mov r13,r4
tst r0,r0
bt loc_8c1889ba
mov.l @(0x04,r15),r2
mov.l @(loc_8c188a34,pc),r3
add r3,r2
mov.b @(0x08,r2),r0 
tst r0,r0
bf loc_8c1889c0

loc_8c1889BA:
mov.w @(loc_8c188A28,pc),r0 ; r0 set to 0xFF01
bra loc_8c188A5C
nop

#align4
loc_8c1889C0:
#data 0x430BD31A
#data 0x401164D3
#data 0x902A8902
#data 0x0009A046

#align4
loc_8c1889D0:
#data 0xEC00D31C
#data 0x1EC665C3
#data 0x64D3430B
#data 0x67C365C3
#data 0xA00F6403
#data 0xED01

loc_8c1889E6:
#data 0x6140
#data 0x6063661C
#data 0x89028833
#data 0x3620921B
#data 0x8B01

loc_8c1889F6:
#data 0xA009
#data 0x67D3

loc_8c1889FA:
#data 0x53E6
#data 0x75017420
#data 0x1E367301

#align4
loc_8c188A04:
#data 0x532C52E7
#data 0x8BEC3533

#align4
loc_8c188A0C:
#data 0x8B022778
#data 0xA0239008
#data 0x0009

loc_8c188A16:
#data 0x6543
#data 0x750464F2
#data 0xA0166D43
#data 0xFF037D0C
#data 0xFF05

loc_8c188A26:
#data 0x0148

loc_8c188A28:
#data 0xFF01
#data 0x00CC

#align4
loc_8c188A2C:
#data bank17.loc_8c1790BA

loc_8c188A30:
#data loc_8c189EBE

loc_8c188A34:
#data 0x8C33C56C

#align4
loc_8c188A38:
#data bank19.loc_8c1988D8

loc_8c188A3C:
#data loc_8c187672

loc_8c188A40:
#data bank19.loc_8c198918

loc_8c188A44:
#data loc_8c18A3DC

loc_8c188A48:
#data 0x24306354
#data 0x7401

loc_8c188A4E:
#data 0x34D2
#data 0xE0008BFA
#data 0x53E62DC0
#data 0x1E367301


loc_8c188A5C:
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c188A68:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.w @(loc_8c188B2E,pc),r14 ; r14 set to 0x148
mov r4,r13
mov.l @(loc_8c188B38,pc),r3 ; r3 set to 0x8C33C56C
mul.l r14,r13
mov.l r5,@r15
sts macl,r14
mov.l r14,@(0x04,r15)
add r3,r14 ; r14 set to 0x8C33C6B4
mov.b @(0x02,r14),r0
tst r0,r0
bt loc_8c188AB0
mov.l @(loc_8c188B3C,pc),r3 ; r3 set to 0x8C1988D8
jsr @r3
mov r13,r4
tst r0,r0
bf loc_8c188A9A
mov.l @(loc_8c188B40,pc),r3 ; r3 set to 0x8C187672
jsr @r3
mov r13,r4
bra loc_8c188AB0
nop

loc_8c188a9a:
mov.l @(loc_8c188b44,pc),r2
jsr @r2
mov r13,r4
tst r0,r0
bt loc_8c188ab0
mov.l @(0x04,r15),r2
mov.l @(loc_8c188b38,pc),r3
add r3,r2
mov.b @(0x08,r2),r0 
tst r0,r0
bf loc_8c188ab6

loc_8c188AB0:
mov.w @(loc_8c188B30,pc),r0 ; r0 set to 0xFF01
bra loc_8c188B24
nop

loc_8c188AB6:
#data 0xD324
#data 0x64D3430B
#data 0x89024011
#data 0xA02F9037
#data 0x0009

loc_8c188AC6:
#data 0xD321
#data 0x430B55E6
#data 0x55E664D3
#data 0x6403E700
#data 0xE101A00F

#align4
loc_8c188AD8:
#data 0x730153E6
#data 0x6D401E36
#data 0x606366DC
#data 0x89028833
#data 0x36309324
#data 0x8B01

loc_8c188AEE:
#data 0xA006
#data 0x6713

loc_8c188AF2:
#data 0x7420
#data 0x7501

loc_8c188AF6:
#data 0x52E7
#data 0x3533532C
#data 0x8BEC

loc_8c188AFE:
#data 0x2778
#data 0x90188B02
#data 0x0009A00E

#align4
loc_8c188B08:
#data 0x64F26543
#data 0x6E437504
#data 0x7E0CA003

#align4
loc_8c188B14:
#data 0x24306354
#data 0x7401

loc_8c188B1A:
#data 0x34E2
#data 0xE3008BFA
#data 0x2E306033


loc_8c188B24:
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c188B2E:
#data 0x0148

loc_8c188B30:
#data 0xFF01
#data 0xFF03
#data 0xFF0500CC

#align4
loc_8c188B38:
#data 0x8C33C56C

#align4
loc_8c188B3C:
#data bank19.loc_8c1988D8

loc_8c188B40:
#data loc_8c187672

loc_8c188B44:
#data bank19.loc_8c198918

loc_8c188B48:
#data bank17.loc_8c1790BA

loc_8c188B4C:
#data loc_8c18A3DC


loc_8c188B50:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
add 0xCC,r15
mov.w @(loc_8c188C06,pc),r14 ; r14 set to 0x148
mov r4,r12
mov.l @(loc_8c188C10,pc),r3 ; r3 set to 0x8C33C56C
mul.l r14,r12
mov.l r5,@r15
sts macl,r14
mov.l r14,@(0x04,r15)
add r3,r14 ; r14 set to 0x8C33C6B4
mov.b @(0x02,r14),r0
tst r0,r0
bt/s loc_8c188B9E
mov r6,r13
mov.l @(loc_8c188C14,pc),r3 ; r3 set to 0x8C1988D8
jsr @r3
mov r12,r4
tst r0,r0
bf loc_8c188B88
mov.l @(loc_8c188C18,pc),r3 ; r3 set to 0x8C187672
jsr @r3
mov r12,r4
bra loc_8c188B9E
nop

#align4
loc_8c188b88:
mov.l @(loc_8c188c1c,pc),r2
jsr @r2
mov r12,r4
tst r0,r0
bt loc_8c188b9e
mov.l @(0x04,r15),r2
mov.l @(loc_8c188c10,pc),r3
add r3,r2
mov.b @(0x08,r2),r0 
tst r0,r0
bf loc_8c188ba4

loc_8c188B9E:
mov.w @(loc_8c188C08,pc),r0 ; r0 set to 0xFF01
bra loc_8c188C80
nop

#align4
loc_8c188BA4:
#data 0x430BD31E
#data 0x401164C3
#data 0x902C8902
#data 0x0009A066

#align4
loc_8c188BB4:
#data 0xEB00D31B
#data 0x1EB665B3
#data 0x64C3430B
#data 0x67B365B3
#data 0xA00F6403
#data 0xEC01

loc_8c188BCA:
#data 0x6640
#data 0x6013616C
#data 0x89028833
#data 0x3120921A
#data 0x8B01

loc_8c188BDA:
#data 0xA009
#data 0x67C3

loc_8c188BDE:
#data 0x53E6
#data 0x75017420
#data 0x1E367301

#align4
loc_8c188BE8:
#data 0x532C52E7
#data 0x8BEC3533

#align4
loc_8c188BF0:
#data 0x8B022778
#data 0xA043900B
#data 0x0009

loc_8c188BFA:
#data 0x65F2
#data 0x76046643
#data 0xA0146153
#data 0x710C

loc_8c188C06:
#data 0x0148

loc_8c188C08:
#data 0xFF01
#data 0xFF03
#data 0xFF0500CC

#align4
loc_8c188C10:
#data 0x8C33C56C

#align4
loc_8c188C14:
#data bank19.loc_8c1988D8

loc_8c188C18:
#data loc_8c187672

loc_8c188C1C:
#data bank19.loc_8c198918

loc_8c188C20:
#data bank17.loc_8c1790BA

loc_8c188C24:
#data loc_8c18A3DC

loc_8c188C28:
#data 0x25306364
#data 0x7501

loc_8c188C2E:
#data 0x3512
#data 0xD23E8BFA
#data 0x21B065F3
#data 0x730153E6
#data 0x420B1E36
#data 0x53E77508
#data 0x53FC523B
#data 0x03277201
#data 0x021A9369
#data 0x50FC2D22
#data 0x84FC81D2
#data 0xE01280D6
#data 0x80D700FC
#data 0x81D485F8
#data 0x323052F3
#data 0xA0018B01
#data 0x60C3

loc_8c188C6E:
#data 0x60B3

#align4
loc_8c188C70:
#data 0xD32F65F3
#data 0x80D664D3
#data 0x430B7528
#data 0xE000740A


loc_8c188C80:
add 0x34,r15
lds.l @r15+,pr
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c188C8E:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
sts.l pr,@-r15
add 0xCC,r15
mov.w @(loc_8c188D24,pc),r13 ; r13 set to 0x148
mov r4,r12
mov.l @(loc_8c188D34,pc),r3 ; r3 set to 0x8C33C56C
mul.l r13,r12
mov.l r5,@r15
sts macl,r13
mov.l r13,@(0x04,r15)
add r3,r13 ; r13 set to 0x8C33C6B4
mov.b @(0x02,r13),r0
tst r0,r0
bt/s loc_8c188CDE
mov r6,r14
mov.l @(loc_8c188D38,pc),r3 ; r3 set to 0x8C1988D8
jsr @r3
mov r12,r4
tst r0,r0
bf loc_8c188CC8
mov.l @(loc_8c188D3C,pc),r3 ; r3 set to 0x8C187672
jsr @r3
mov r12,r4
bra loc_8c188CDE
nop

#align4
loc_8c188cc8:
mov.l @(loc_8c188d40,pc),r2
jsr @r2
mov r12,r4
tst r0,r0
bt loc_8c188cde
mov.l @(0x04,r15),r2
mov.l @(loc_8c188d34,pc),r3
add r3,r2
mov.b @(0x08,r2),r0 
tst r0,r0
bf loc_8c188ce4

loc_8c188CDE:
mov.w @(loc_8c188D26,pc),r0 ; r0 set to 0xFF01
bra loc_8c188DC0
nop

#align4
loc_8c188CE4:
#data 0x430BD317
#data 0x401164C3
#data 0x901B8902
#data 0x0009A066

#align4
loc_8c188CF4:
#data 0x55D6D314
#data 0x64C3430B
#data 0xEA0055D6
#data 0x6BA36403
#data 0xEC01A024

#align4
loc_8c188D08:
#data 0x730153D6
#data 0x67401D36
#data 0x6063667C
#data 0x89028833
#data 0x36309303
#data 0x8B16

loc_8c188D1E:
#data 0xA01B
#data 0x00CC6BC3

loc_8c188D24:
#data 0x0148

loc_8c188D26:
#data 0xFF01
#data 0x0000FF03

#align4
loc_8c188D2C:
#data loc_8c189E42

loc_8c188D30:
#data loc_8c18A5DA

loc_8c188D34:
#data 0x8C33C56C

#align4
loc_8c188D38:
#data bank19.loc_8c1988D8

loc_8c188D3C:
#data loc_8c187672

loc_8c188D40:
#data bank19.loc_8c198918

loc_8c188D44:
#data bank17.loc_8c1790BA

loc_8c188D48:
#data loc_8c18A3DC

loc_8c188D4C:
#data 0x75017420

#align4
loc_8c188D50:
#data 0x532C52D7
#data 0x8BD73533

#align4
loc_8c188D58:
#data 0x8B022BB8
#data 0xA02F907E
#data 0x0009

loc_8c188D62:
#data 0x65F2
#data 0x76046643
#data 0xA0036B53
#data 0x7B0C

loc_8c188D6E:
#data 0x6364
#data 0x75012530

#align4
loc_8c188D74:
#data 0x8BFA35B2
#data 0x65F3D339
#data 0x430B2BA0
#data 0x52D77508
#data 0x52FC532B
#data 0x02377301
#data 0x2E32031A
#data 0x936450FC
#data 0x84FC81E2
#data 0xE01280E6
#data 0x80E700FC
#data 0x81E485F8
#data 0x323052F3
#data 0xA0018B01
#data 0x60C3

loc_8c188DAE:
#data 0x60A3

#align4
loc_8c188DB0:
#data 0xD32C65F3
#data 0x80E664E3
#data 0x430B7528
#data 0xE000740A


loc_8c188DC0:
add 0x34,r15
lds.l @r15+,pr
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

#align4
loc_8c188DD0:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x7FCC4F22
#data 0xD32166F3
#data 0x76086E43
#data 0x430B2F52
#data 0x6B0364E3
#data 0x89024B11
#data 0xA0289032
#data 0x0009

loc_8c188DFA:
#data 0xD31C
#data 0x430B65B3
#data 0xD31B64E3
#data 0x65F21F01
#data 0x64E3430B
#data 0x8B122008
#data 0x5DF5DA18
#data 0xEC00A00C

#align4
loc_8c188E18:
#data 0x65D3D217
#data 0x64E3420B
#data 0x65D3D316
#data 0x66A3690D
#data 0x64E3430B
#data 0x6D937C01

#align4
loc_8c188E30:
#data 0x3C2352FC
#data 0x8BF0

loc_8c188E36:
#data 0xD312
#data 0xE620E500
#data 0x54F1430B
#data 0x65B3D210
#data 0x64E3420B
#data 0xE000

loc_8c188E4A:
#data 0x7F34
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;==============================================
#data 0x00CCFF05

#align4
loc_8c188E60:
#data loc_8c189E42

loc_8c188E64:
#data loc_8c18A5DA

loc_8c188E68:
#data loc_8c189EBE

loc_8c188E6C:
#data loc_8c18A3DC

loc_8c188E70:
#data loc_8c18A468
#data 0x0000FFFC

#align4
loc_8c188E78:
#data loc_8c18A328

loc_8c188E7C:
#data loc_8c18A2F6

loc_8c188E80:
#data bank12.loc_8c129728

loc_8c188E84:
#data loc_8c18A3F4


loc_8c188E88:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.w @(loc_8c188F40,pc),r13 ; r13 set to 0x148
mov r4,r14
mov.l @(loc_8c188F48,pc),r3 ; r3 set to 0x8C33C56C
mov 0x01,r2 ; r2 set to 0x01
mul.l r13,r14
mov.l @(loc_8c188F4C,pc),r0 ; r0 set to 0x8C1C9718
mov.l r5,@r15
sts macl,r13
mov.l r13,@(0x04,r15)
add r3,r13 ; r13 set to 0x8C33C6B4
mov.l r2,@(0x30,r13)  ; r13 ??
mov.l @(0x04,r13),r1
mov r1,r2 ; r2 ??? bc r1 is ???
shll2 r1
add r2,r1
shll2 r1
shll2 r1
mov.l @(r0,r1),r0 ; r0 ??? bc r1 is ???
mov.l r0,@(0x34,r13)
mov.b @(0x02,r13),r0
tst r0,r0
bt loc_8c188EE6
mov.l @(loc_8c188F50,pc),r3 ; r3 set to 0x8C1988D8
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8c188ED0
mov.l @(loc_8c188F54,pc),r3 ; r3 set to 0x8C187672
jsr @r3
mov r14,r4
bra loc_8c188EE6
nop

#align4
loc_8c188ed0:
mov.l @(loc_8c188f58,pc),r2
jsr @r2
mov r14,r4
tst r0,r0
bt loc_8c188ee6
mov.l @(0x04,r15),r2
mov.l @(loc_8c188f48,pc),r3
add r3,r2
mov.b @(0x08,r2),r0 
tst r0,r0
bf loc_8c188eec

loc_8c188EE6:
mov.w @(loc_8c188F42,pc),r0 ; r0 set to 0xFF01
bra loc_8c188F36
nop

#align4
loc_8c188EEC:
#data 0x430BD31B
#data 0x401164E3
#data 0x90258902
#data 0x0009A01D

#align4
loc_8c188EFC:
#data 0x65F2D318
#data 0x64E3430B
#data 0x89024011
#data 0xA014901D
#data 0x0009

loc_8c188F0E:
#data 0x65F2
#data 0x64E3BF5E
#data 0x8F054011
#data 0xB6C06403
#data 0x401164E3
#data 0x64038D02

#align4
loc_8c188F24:
#data 0x6043A007

#align4
loc_8c188F28:
#data 0x7F0864E3
#data 0xD20D4F26
#data 0x422B6DF6
#data 0x6EF6


loc_8c188F36:
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c188F40:
#data 0x0148

loc_8c188F42:
#data 0xFF01
#data 0xFF0BFF03

#align4
loc_8c188F48:
#data 0x8C33C56C

#align4
loc_8c188F4C:
#data bank1c.loc_8c1c9718

loc_8c188F50:
#data bank19.loc_8c1988D8

loc_8c188F54:
#data loc_8c187672

loc_8c188F58:
#data bank19.loc_8c198918

loc_8c188F5C:
#data bank17.loc_8c1790BA

loc_8c188F60:
#data loc_8c18A444

loc_8c188F64:
#data loc_8c18A148


loc_8c188F68:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.w @(loc_8c189048,pc),r13 ; r13 set to 0x148
mov r4,r14
mov.l @(loc_8c189050,pc),r3 ; r3 set to 0x8C33C56C
mov 0x01,r11 ; r11 set to 0x01
mul.l r13,r14
mov.l @(loc_8c189054,pc),r0 ; r0 set to 0x8C1C9740
mov.l r5,@r15
sts macl,r13
mov.l r13,@(0x04,r15)
add r3,r13 ; r13 set to 0x8C33C6B4
mov.l r11,@(0x30,r13)  ; r13 ??
mov.l @(0x04,r13),r2
mov r2,r1
shll2 r2
add r1,r2
shll2 r2
shll2 r2
mov.l @(r0,r2),r0 ; r0 ??? bc r2 is ???
mov.l r0,@(0x34,r13)
mov.b @(0x02,r13),r0
tst r0,r0
bt/s loc_8c188FD2
mov r6,r12
mov.l @(loc_8c189058,pc),r3 ; r3 set to 0x8C1988D8
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8c188FBC
mov.l @(loc_8c18905C,pc),r3 ; r3 set to 0x8C187672
jsr @r3
mov r14,r4
bra loc_8c188FD2
nop

#align4
loc_8c188fbc:
mov.l @(loc_8c189060,pc),r2
jsr @r2
mov r14,r4
tst r0,r0
bt loc_8c188fd2
mov.l @(0x04,r15),r2
mov.l @(loc_8c189050,pc),r3
add r3,r2
mov.b @(0x08,r2),r0 
tst r0,r0
bf loc_8c188fd8

loc_8c188FD2:
mov.w @(loc_8c18904A,pc),r0 ; r0 set to 0xFF01
bra loc_8c189072
nop

#align4
loc_8c188FD8:
#data 0x430BD322
#data 0x401164E3
#data 0x90338902
#data 0x0009A045

#align4
loc_8c188FE8:
#data 0x4C15E800
#data 0x8F0A6A83
#data 0x6DF2

loc_8c188FF2:
#data 0xD21D
#data 0x420B65D2
#data 0x401164E3
#data 0x7A018B21
#data 0x8FF63AC3
#data 0x7D04

loc_8c189006:
#data 0x4C15
#data 0x69836A83
#data 0x6DF28F0A

#align4
loc_8c189010:
#data 0xBEDD65D2
#data 0x401164E3
#data 0x7A018D01
#data 0x69B3

loc_8c18901E:
#data 0x3AC3
#data 0x7D048FF6

#align4
loc_8c189024:
#data 0x64E3B63B
#data 0x8F064011
#data 0xD20F6403
#data 0x64E3420B
#data 0x8D024011
#data 0x6403

loc_8c18903A:
#data 0xA01A
#data 0x6043

loc_8c18903E:
#data 0x2998
#data 0x8916

loc_8c189042:
#data 0x9004
#data 0x0009A015

loc_8c189048:
#data 0x0148

loc_8c18904A:
#data 0xFF01
#data 0xFF0AFF03

#align4
loc_8c189050:
#data 0x8C33C56C

#align4
loc_8c189054:
#data bank1c.loc_8c1c9740

loc_8c189058:
#data bank19.loc_8c1988D8

loc_8c18905C:
#data loc_8c187672

loc_8c189060:
#data bank19.loc_8c198918

loc_8c189064:
#data bank17.loc_8c1790BA

loc_8c189068:
#data loc_8c18A444

loc_8c18906C:
#data loc_8c18A148

loc_8c189070:
#data 0xE000


loc_8c189072:
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c189086:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xC8,r15
mov.w @(loc_8c18914E,pc),r13 ; r13 set to 0x148
mov r4,r14
mov.l @(loc_8c18915C,pc),r3 ; r3 set to 0x8C33C56C
mov 0x01,r2 ; r2 set to 0x01
mul.l r13,r14
mov.l @(loc_8c189160,pc),r0 ; r0 set to 0x8C1C971C
mov.l r5,@r15
mov.l r6,@(0x04,r15)
sts macl,r13
mov.l r13,@(0x08,r15)
add r3,r13 ; r13 set to 0x8C33C6B4
mov.l r2,@(0x30,r13)  ; r13 ??
mov.l @(0x04,r13),r1
mov r1,r2 ; r2 ??? bc r1 is ???
shll2 r1
add r2,r1
shll2 r1
shll2 r1
mov.l @(r0,r1),r0 ; r0 ??? bc r1 is ???
mov.l r0,@(0x34,r13)
mov.b @(0x02,r13),r0
tst r0,r0
bt loc_8c1890E6
mov.l @(loc_8c189164,pc),r3 ; r3 set to 0x8C1988D8
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8c1890D0
mov.l @(loc_8c189168,pc),r3 ; r3 set to 0x8C187672
jsr @r3
mov r14,r4
bra loc_8c1890E6
nop

#align4
loc_8c1890d0:
mov.l @(loc_8c18916c,pc),r2
jsr @r2
mov r14,r4
tst r0,r0
bt loc_8c1890e6
mov.l @(0x08,r15),r2
mov.l @(loc_8c18915c,pc),r3
add r3,r2
mov.b @(0x08,r2),r0 
tst r0,r0
bf loc_8c1890ec

loc_8c1890E6:
mov.w @(loc_8c189150,pc),r0 ; r0 set to 0xFF01
bra loc_8c189192
nop

#align4
loc_8c1890EC:
#data 0x430BD320
#data 0x401164E3
#data 0x902C8902
#data 0x0009A04B

#align4
loc_8c1890FC:
#data 0x65F2D31D
#data 0x64E3430B
#data 0x89024011
#data 0xA0429024
#data 0x0009

loc_8c18910E:
#data 0x65F2
#data 0x760C66F3
#data 0x64E3B6D3
#data 0x4D116D03
#data 0x901A8902
#data 0x0009A037

#align4
loc_8c189124:
#data 0x66F355F1
#data 0xB6C8760C
#data 0x401164E3
#data 0x90118B02
#data 0x0009A02D

#align4
loc_8c189138:
#data 0x65D3D30F
#data 0x64E3430B
#data 0x64536503
#data 0x665357F1
#data 0xA01A7404
#data 0x7610

loc_8c18914E:
#data 0x0148

loc_8c189150:
#data 0xFF01
#data 0xFF03
#data 0xFF05FF0B
#data 0x0000FF06

#align4
loc_8c18915C:
#data 0x8C33C56C

#align4
loc_8c189160:
#data bank1c.loc_8c1c971C

loc_8c189164:
#data bank19.loc_8c1988D8

loc_8c189168:
#data loc_8c187672

loc_8c18916C:
#data bank19.loc_8c198918

loc_8c189170:
#data bank17.loc_8c1790BA

loc_8c189174:
#data loc_8c18A444

loc_8c189178:
#data loc_8c18A3DC

loc_8c18917C:
#data 0x24306374
#data 0x7401

loc_8c189182:
#data 0x3462
#data 0xD3388BFA
#data 0x430B65D3
#data 0xB58664E3
#data 0x64E3


loc_8c189192:
add 0x38,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0x9D5A7FC0
#data 0xD3306E43
#data 0x0ED7E201
#data 0x2F52D02F
#data 0x0D1A1F61
#data 0x3D3C1FD2
#data 0x51D11D2C
#data 0x41086213
#data 0x4108312C
#data 0x001E4108
#data 0x84D21D0D
#data 0x89142008
#data 0x430BD327
#data 0x200864E3
#data 0xD3268B04
#data 0x64E3430B
#data 0x0009A00B
#data 0x420BD224
#data 0x200864E3
#data 0x52F28905
#data 0x323CD31D
#data 0x20088428
#data 0x902F8B02
#data 0x0009A051
#data 0x430BD31E
#data 0x401164E3
#data 0x90288902
#data 0x0009A049
#data 0x65F2D31B
#data 0x64E3430B
#data 0x89024011
#data 0xA0409020
#data 0x65F20009
#data 0x760C66F3
#data 0x64E3B647
#data 0x4D116D03
#data 0x90168902
#data 0x0009A035
#data 0x65D3D312
#data 0x64E3430B
#data 0x6C03D311
#data 0x64F355F1
#data 0x7438430B
#data 0x65F364C3
#data 0x741066C3
#data 0xA01C7538
#data 0x01487618
#data 0xFF03FF01
#data 0xFF05FF0B

#align4
loc_8c189268:
#data loc_8c18A3F4
#data 0x8C33C56C

#align4
loc_8c189270:
#data bank1c.loc_8c1c9724

loc_8c189274:
#data bank19.loc_8c1988D8

loc_8c189278:
#data loc_8c187672

loc_8c18927C:
#data bank19.loc_8c198918

loc_8c189280:
#data bank17.loc_8c1790BA

loc_8c189284:
#data loc_8c18A444

loc_8c189288:
#data loc_8c18A3DC

loc_8c18928C:
#data loc_8c18A554
#data 0x24306354
#data 0x34627401
#data 0xD33A8BFA
#data 0x430B65D3
#data 0xB4FC64E3
#data 0x7F4064E3
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x2FE66EF6
#data 0x7FC44F22
#data 0x6E43935E
#data 0x0E37D032
#data 0x1F612F52
#data 0x023C031A
#data 0x89152228
#data 0x430BD32F
#data 0x200864E3
#data 0xD32E8B04
#data 0x64E3430B
#data 0x0009A00C
#data 0x420BD22C
#data 0x200864E3
#data 0x93458906
#data 0x0E37D02A
#data 0x023C031A
#data 0x8B042228
#data 0x7F3C903F
#data 0x000B4F26
#data 0xD3266EF6
#data 0x64E3430B
#data 0x89044011
#data 0x7F3C9036
#data 0x000B4F26
#data 0xD3226EF6
#data 0x430B65F2
#data 0x401164E3
#data 0x902C8904
#data 0x4F267F3C
#data 0x6EF6000B
;==============================================
#data 0x66F365F2
#data 0xB5C47610
#data 0x650364E3
#data 0x89044511
#data 0x7F3C9020
#data 0x000B4F26
#data 0xD3176EF6
#data 0x64E3430B
#data 0x7E086EF3
#data 0x65E36603
#data 0x761064E3
#data 0x7508A003
#data 0x24306364
#data 0x34527401
#data 0xD3108BFA
#data 0x430B65E3
#data 0xE00054F1
#data 0x4F267F3C
#data 0x6EF6000B
;==============================================
#data 0xFF010148
#data 0xFF0BFF03
#data 0x0000FF05

#align4
loc_8c189384:
#data loc_8c18A3F4
#data 0x8C33C56E

#align4
loc_8c18938C:
#data bank19.loc_8c1988D8

loc_8c189390:
#data loc_8c187672

loc_8c189394:
#data bank19.loc_8c198918
#data 0x8C33C574

#align4
loc_8c18939C:
#data bank17.loc_8c1790BA

loc_8c1893A0:
#data loc_8c18A444

loc_8c1893A4:
#data loc_8c18A3DC

loc_8c1893A8:
#data loc_8c18A5DA


loc_8c1893AC:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
add 0xC4,r15
mov.w @(loc_8c189492,pc),r13 ; r13 set to 0x148
mov r4,r14
mov.l @(loc_8c18949C,pc),r3 ; r3 set to 0x8C33C56C
mov 0x01,r2 ; r2 set to 0x01
mul.l r13,r14
mov r6,r0
mov.l r5,@r15
mov.w r0,@(0x08,r15)
mov r7,r0
mov.b r0,@(0x04,r15)
sts macl,r13
mov.l @(loc_8c1894A0,pc),r0 ; r0 set to 0x8C1C9724
mov.l r13,@(0x0C,r15)
add r3,r13 ; r13 set to 0x8C33C6B4
mov.l r2,@(0x30,r13)  ; r13 ??
mov.l @(0x04,r13),r1
mov r1,r2 ; r2 ??? bc r1 is ???
shll2 r1
add r2,r1
shll2 r1
shll2 r1
mov.l @(r0,r1),r0 ; r0 ??? bc r1 is ???
mov.l r0,@(0x34,r13)
mov.b @(0x02,r13),r0
tst r0,r0
bt loc_8c189414
mov.l @(loc_8c1894A4,pc),r3 ; r3 set to 0x8C1988D8
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8c1893FE
mov.l @(loc_8c1894A8,pc),r3 ; r3 set to 0x8C187672
jsr @r3
mov r14,r4
bra loc_8c189414
nop

loc_8c1893fe:
mov.l @(loc_8c1894ac,pc),r2
jsr @r2
mov r14,r4
tst r0,r0
bt loc_8c189414
mov.l @(0x0C,r15),r2
mov.l @(loc_8c18949c,pc),r3
add r3,r2
mov.b @(0x08,r2),r0 
tst r0,r0
bf loc_8c18941a

loc_8c189414:
mov.w @(loc_8c189494,pc),r0 ; r0 set to 0xFF01
bra loc_8c189486
nop

loc_8c18941A:
#data 0xD325
#data 0x64E3430B
#data 0x89024011
#data 0xA02E9037
#data 0x0009

loc_8c18942A:
#data 0xD322
#data 0x430B65F2
#data 0x401164E3
#data 0x902F8902
#data 0x0009A025

#align4
loc_8c18943C:
#data 0x66F365F2
#data 0xB53C7610
#data 0x6D0364E3
#data 0x89024D11
#data 0xA01A9025
#data 0x0009

loc_8c189452:
#data 0xD319
#data 0x430B65D3
#data 0xD31864E3
#data 0x22286232
#data 0x6C038D09
#data 0xE51AD116
#data 0x50246212
#data 0x720862F3
#data 0x400B6621
#data 0x64C3

loc_8c189476:
#data 0x84F4
#data 0xD31265D3
#data 0x430B80C1
#data 0xB40C64E3
#data 0x64E3


loc_8c189486:
add 0x3C,r15
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c189492:
#data 0x0148

loc_8c189494:
#data 0xFF01
#data 0xFF03
#data 0xFF05FF0B

#align4
loc_8c18949C:
#data 0x8C33C56C

#align4
loc_8c1894A0:
#data bank1c.loc_8c1c9724

loc_8c1894A4:
#data bank19.loc_8c1988D8

loc_8c1894A8:
#data loc_8c187672

loc_8c1894AC:
#data bank19.loc_8c198918

loc_8c1894B0:
#data bank17.loc_8c1790BA

loc_8c1894B4:
#data loc_8c18A444

loc_8c1894B8:
#data loc_8c18A3DC

loc_8c1894BC:
#data bank1c.loc_8c1c596C
#data 0x8C33C568

#align4
loc_8c1894C4:
#data loc_8c18A3F4


loc_8c1894C8:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xD0,r15
mov.w @(loc_8c1895AE,pc),r3 ; r3 set to 0x148
mov r4,r14
mov.l @(loc_8c1895B8,pc),r0 ; r0 set to 0x8C33C56E
mul.l r3,r14
mov.l r5,@r15
sts macl,r3
mov.b @(r0,r3),r2
tst r2,r2
bt loc_8c18950C
mov.l @(loc_8c1895BC,pc),r3 ; r3 set to 0x8C1988D8
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8c1894F4
mov.l @(loc_8c1895C0,pc),r3 ; r3 set to 0x8C187672
jsr @r3
mov r14,r4
bra loc_8c18950C
nop

#align4
loc_8c1894f4:
mov.l @(loc_8c1895c4,pc),r2
jsr @r2
mov r14,r4
tst r0,r0
bt loc_8c18950c
mov.w @(loc_8c1895ae,pc),r3
mov.l @(loc_8C1895C8,pc),r0
mul.l r3,r14
sts macl,r3
mov.b @(r0,r3),r2
tst r2,r2
bf loc_8c189516

loc_8c18950C:
mov.w @(loc_8c1895B0,pc),r0 ; r0 set to 0xFF01
add 0x30,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

loc_8c189516:
#data 0xD32D
#data 0x64E3430B
#data 0x89044011
#data 0x7F309047
#data 0x000B4F26
#data 0x6EF6
;==============================================

loc_8c18952A:
#data 0x65F2
#data 0x64E3B78A
#data 0x89044011
#data 0x7F30903E
#data 0x000B4F26
#data 0x6EF6
;==============================================

loc_8c18953E:
#data 0x65F2
#data 0x760466F3
#data 0x64E3B4BB
#data 0x44116403
#data 0x90328904
#data 0x4F267F30
#data 0x6EF6000B
;==============================================

#align4
loc_8c189558:
#data 0x7F3050FB
#data 0x000B4F26
#data 0x6EF6
;==============================================

loc_8c189562:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xD4,r15
mov.w @(loc_8c1895AE,pc),r3 ; r3 set to 0x148
mov r4,r14
mov.l @(loc_8c1895B8,pc),r0 ; r0 set to 0x8C33C56E
mul.l r3,r14
sts macl,r3
mov.b @(r0,r3),r2
tst r2,r2
bt/s loc_8c1895A8
mov r5,r13
mov.l @(loc_8c1895BC,pc),r3 ; r3 set to 0x8C1988D8
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8c189590
mov.l @(loc_8c1895C0,pc),r3 ; r3 set to 0x8C187672
jsr @r3
mov r14,r4
bra loc_8c1895A8
nop

#align4
loc_8c189590:
mov.l @(loc_8c1895c4,pc),r2
jsr @r2
mov r14,r4
tst r0,r0
bt loc_8c1895a8
mov.w @(loc_8c1895ae,pc),r3
mov.l @(loc_8C1895C8,pc),r0
mul.l r3,r14
sts macl,r3
mov.b @(r0,r3),r2
tst r2,r2
bf loc_8c1895d0

loc_8c1895A8:
mov.w @(loc_8c1895B0,pc),r0 ; r0 set to 0xFF01
bra loc_8c189610
nop

loc_8c1895AE:
#data 0x0148

loc_8c1895B0:
#data 0xFF01
#data 0xFF03
#data 0xFF05FF0B

#align4
loc_8c1895B8:
#data 0x8C33C56E

#align4
loc_8c1895BC:
#data bank19.loc_8c1988D8

loc_8c1895C0:
#data loc_8c187672

loc_8c1895C4:
#data bank19.loc_8c198918
loc_8c1895c8:
#data 0x8C33C574

#align4
loc_8c1895CC:
#data bank17.loc_8c1790BA

loc_8c1895D0:
#data 0x430BD336
#data 0x401164E3
#data 0x90628902
#data 0x0009A018

#align4
loc_8c1895E0:
#data 0xB4A465F3
#data 0x640364E3
#data 0x89024411
#data 0xA00F905A
#data 0x0009

loc_8c1895F2:
#data 0xE600
#data 0xA0066463
#data 0xE50C

loc_8c1895FA:
#data 0x63F3
#data 0x60437310
#data 0x7401033C
#data 0x0D34

loc_8c189606:
#data 0x3453
#data 0x60638BF7
#data 0xE00080DC


loc_8c189610:
add 0x2C,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c18961A:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8c1896A6,pc),r14 ; r14 set to 0x148
mov r4,r13
mov.l @(loc_8c1896B0,pc),r3 ; r3 set to 0x8C33C56C
mul.l r14,r13
sts macl,r14
mov.l r14,@r15
add r3,r14 ; r14 set to 0x8C33C6B4
mov.b @(0x02,r14),r0
tst r0,r0
bt loc_8c189660
mov.l @(loc_8c1896B4,pc),r3 ; r3 set to 0x8C1988D8
jsr @r3
mov r13,r4
tst r0,r0
bf loc_8c18964A
mov.l @(loc_8c1896B8,pc),r3 ; r3 set to 0x8C187672
jsr @r3
mov r13,r4
bra loc_8c189660
nop

loc_8c18964a:
mov.l @(loc_8c1896bc,pc),r2
jsr @r2
mov r13,r4
tst r0,r0
bt loc_8c189660
mov.l @r15,r2
mov.l @(loc_8c1896b0,pc),r3
add r3,r2
mov.b @(0x08,r2),r0 
tst r0,r0
bf loc_8c189666

loc_8c189660:
mov.w @(loc_8c1896A8,pc),r0 ; r0 set to 0xFF01
bra loc_8c189698
nop

loc_8c189666:
#data 0x55E8
#data 0xE710E400
#data 0x6643

loc_8c18966E:
#data 0x6050
#data 0x8855600C
#data 0x60438903
#data 0xA00980EB
#data 0x80EC

loc_8c18967E:
#data 0x7601
#data 0x8FF43673
#data 0xD00E7501
#data 0x03DE4D08
#data 0x89022338

#align4
loc_8c189690:
#data 0xA0019007
#data 0x0009

loc_8c189696:
#data 0xE000


loc_8c189698:
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
#data 0xFF03
#data 0xFF05

loc_8c1896A6:
#data 0x0148

loc_8c1896A8:
#data 0xFF01
#data 0x0000

#align4
loc_8c1896AC:
#data bank17.loc_8c1790BA

loc_8c1896B0:
#data 0x8C33C56C

#align4
loc_8c1896B4:
#data bank19.loc_8c1988D8

loc_8c1896B8:
#data loc_8c187672

loc_8c1896BC:
#data bank19.loc_8c198918
#data 0x8C33CFAC
#data 0x4F222FE6
#data 0x93717FF4
#data 0xD23A6E43
#data 0x1F510E37
#data 0x1F32031A
#data 0x6133332C
#data 0x84122F32
#data 0x89142008
#data 0x420BD235
#data 0x200864E3
#data 0xD2348B04
#data 0x64E3420B
#data 0x0009A00B
#data 0x430BD332
#data 0x200864E3
#data 0x52F28905
#data 0x323CD32C
#data 0x20088428
#data 0x90508B04
#data 0x4F267F0C
#data 0x6EF6000B
;==============================================
#data 0x430BD32B
#data 0x401164E3
#data 0x90478904
#data 0x4F267F0C
#data 0x6EF6000B
;==============================================
#data 0xE50064F2
#data 0x74105448
#data 0xE620A006
#data 0x750152F1
#data 0x1F217201
#data 0x22346344
#data 0x8BF73563
#data 0x7F0CE000
#data 0x000B4F26
#data 0x2FE66EF6
#data 0x4F222FD6
#data 0x9D297FF8
#data 0xD3166E43
#data 0x2F520ED7
#data 0x1FD10D1A
#data 0x84D23D3C
#data 0x89142008
#data 0x430BD312
#data 0x200864E3
#data 0xD3118B04
#data 0x64E3430B
#data 0x0009A00B
#data 0x420BD20F
#data 0x200864E3
#data 0x52F18905
#data 0x323CD309
#data 0x20088428
#data 0x900A8B02
#data 0x0009A034
#data 0x430BD309
#data 0x401164E3
#data 0x90038910
#data 0x0009A02C
#data 0xFF010148
#data 0x0000FF03
#data 0x8C33C56C

#align4
loc_8c1897BC:
#data bank19.loc_8c1988D8

loc_8c1897C0:
#data loc_8c187672

loc_8c1897C4:
#data bank19.loc_8c198918

loc_8c1897C8:
#data bank17.loc_8c1790BA
#data 0xE60055D8
#data 0x75106763
#data 0xE420A003
#data 0x75012560
#data 0x37437701
#data 0x55D88BFA
#data 0x7510A008
#data 0x760162F2
#data 0x2F227201
#data 0x632072FF
#data 0x75012530
#data 0x8BF53643
#data 0x7F0864E3
#data 0x6DF64F26
#data 0x6EF6A3D5
#data 0x4F267F08
#data 0x000B6DF6
#data 0x000B6EF6
#data 0xE000
;==============================================

loc_8c189816:
#data 0x2FE6
#data 0x9D5C2FD6
#data 0x04D72FC6
#data 0x4F22D32D
#data 0x0D1ADC2D
#data 0xA0113D3C
#data 0xEE00

loc_8c18982E:
#data 0x63C2
#data 0x450065E3
#data 0x420B5233
#data 0xD12954D9
#data 0x6043640D
#data 0x89043010
#data 0x3010D127
#data 0xA0068901
#data 0x60E3

loc_8c18984E:
#data 0x7E01

#align4
loc_8c189850:
#data 0x532C52D7
#data 0x8BEA3E33
#data 0xE0FF

loc_8c18985A:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000B
;==============================================

#align4
loc_8c189864:
#data 0x2FD62FE6
#data 0xD31B9D35
#data 0x2FC604D7
#data 0x6B532FB6
#data 0x0D1A2FA6
#data 0xDA184F22
#data 0xDC183D3C
#data 0x5EEC5ED7
#data 0x3EB37EFF
#data 0x8B0D

loc_8c18988A:
#data 0x63A2
#data 0x450065E3
#data 0x420B5233
#data 0x600D54D9
#data 0x8B0130C0
#data 0x60E3A004

#align4
loc_8c1898A0:
#data 0x3EB37EFF
#data 0x89F1

loc_8c1898A6:
#data 0xE0FF

#align4
loc_8c1898A8:
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;==============================================

loc_8c1898B6:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x4F222FB6
#data 0x9C087FFC
#data 0x04C7D304
#data 0x2F52DB04
#data 0x3C3C0C1A
#data 0xA01A5ECA
#data 0x0148ED00
#data 0x8C33C56C
#data 0x8C33C568
#data 0x0000FFFC
#data 0x0000FFFF

#align4
loc_8c1898E8:
#data 0x644C64E0
#data 0x890A2448
#data 0xE50262B2
#data 0x430B5323
#data 0x62F264E3
#data 0x3020600D
#data 0xA0078B01
#data 0x60E3

loc_8c189906:
#data 0x7E20
#data 0x7D01

loc_8c18990A:
#data 0x52C7
#data 0x3D33532C
#data 0xE0008BEA

#align4
loc_8c189914:
#data 0x4F267F04
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;==============================================

loc_8c189922:
#data 0x2FE6
#data 0x9E502FD6
#data 0x6C432FC6
#data 0xD3270CE7
#data 0x0E1A4F22
#data 0xA0203E3C
#data 0xED00

loc_8c18993A:
#data 0x65D3
#data 0x64C3B4F4
#data 0x640DD123
#data 0x30106043
#data 0xD1228916
#data 0x89133010
#data 0x3010D121
#data 0x53E78910
#data 0x3D23523C
#data 0x51E78905
#data 0x3433531C
#data 0xA0078906
#data 0x0009

loc_8c18996A:
#data 0x52E7
#data 0x73016322
#data 0x8B013433

#align4
loc_8c189974:
#data 0xE0FFA007

loc_8c189978:
#data 0x7D01

loc_8c18997A:
#data 0x52E7
#data 0x73016322
#data 0x8BDA3D33
#data 0xE000

loc_8c189986:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000B
;==============================================

loc_8c189990:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
sts.l pr,@-r15
add 0xEC,r15
mov.w @(loc_8c1899CA,pc),r11 ; r11 set to 0x148
mov r4,r14
mov.l @(loc_8c1899CC,pc),r3 ; r3 set to 0x8C33C56C
mul.l r11,r14
sts macl,r11
mov.l r11,@r15
add r3,r11 ; r11 set to 0x8C33C6B4
mov.b @(0x02,r11),r0
tst r0,r0
bt/s loc_8c1899FA
mov r5,r10
mov.l @(loc_8c1899DC,pc),r3 ; r3 set to 0x8C1988D8
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8c1899E4
mov.l @(loc_8c1899E0,pc),r3 ; r3 set to 0x8C187672
jsr @r3
mov r14,r4
bra loc_8c1899FA
nop

loc_8c1899CA:
#data 0x0148

#align4
loc_8c1899CC:
#data 0x8C33C56C
#data 0x0000FFFC
#data 0x0000FFFF
#data 0x0000FFFA

#align4
loc_8c1899DC:
#data bank19.loc_8c1988D8

loc_8c1899E0:
#data loc_8c187672

loc_8c1899e4:
mov.l @(loc_8c189ab8,pc),r2
jsr @r2
mov r14,r4
tst r0,r0
bt loc_8c1899fa
mov.l @r15,r2
mov.l @(loc_8C189ABC,pc),r3
add r3,r2
mov.b @(0x08,r2),r0 
tst r0,r0
bf loc_8c189a00

loc_8c1899FA:
mov.w @(loc_8c189AB2,pc),r0 ; r0 set to 0xFF01
bra loc_8c189AFE
nop

#align4
loc_8c189A00:
#data 0x430BD32F
#data 0x401164E3
#data 0x90538902
#data 0x0009A077

#align4
loc_8c189A10:
#data 0x523E53B7
#data 0x890A2228
#data 0x750465F3
#data 0x64E3BDA1
#data 0x24486403
#data 0xBF7C8903
#data 0x401164E3
#data 0x8902

loc_8c189A2E:
#data 0x9042
#data 0x0009A065

#align4
loc_8c189A34:
#data 0x64E3BEEF
#data 0x4D116D03
#data 0x65D38B4A
#data 0xBF0F7501
#data 0x6C0364E3
#data 0x8B434C11
#data 0x65D3D91D
#data 0x490B66A3
#data 0x640364E3
#data 0x8B4F4411
#data 0x65C3D91A
#data 0x490B66A3
#data 0x640364E3
#data 0x8B474411
#data 0xB3BB65D3
#data 0x650364E3
#data 0x8B044515
#data 0xB43C66C3
#data 0xA00A64E3
#data 0x0009

loc_8c189A82:
#data 0x65D3
#data 0x64E3BF17
#data 0x66C3D910
#data 0x63926403
#data 0x420B5234
#data 0xE502

loc_8c189A96:
#data 0x65D3
#data 0x64E3B446
#data 0x660365C3
#data 0x64E3B429
#data 0x65D3DC0A
#data 0xB42466C3
#data 0xAFC164E3
#data 0x0009

loc_8c189AB2:
#data 0xFF01
#data 0xFF0BFF03

#align4
loc_8c189AB8:
#data bank19.loc_8c198918
loc_8c189abc:
#data 0x8C33C56C

#align4
loc_8c189AC0:
#data bank17.loc_8c1790BA

loc_8c189AC4:
#data loc_8c186778

loc_8c189AC8:
#data loc_8c186850
#data 0x8C33C568
#data 0x0000FFFC

#align4
loc_8c189AD4:
#data 0x64B39587
#data 0xA0027448
#data 0xE601

loc_8c189ADE:
#data 0x2460
#data 0x7401

loc_8c189AE2:
#data 0x62B3
#data 0x325C7248
#data 0x8BF83422
#data 0x64E3B0D7
#data 0x8F034011
#data 0xB3276403
#data 0x640364E3

loc_8c189AFC:
#data 0x6043


loc_8c189AFE:
add 0x14,r15
lds.l @r15+,pr
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

#align4
loc_8c189B10:
#data 0x2FD62FE6
#data 0x6C432FC6
#data 0xD3349466
#data 0x2FB60C47
#data 0x2FA6EB00
#data 0x041A2F96
#data 0x4F222F86
#data 0x985C343C
#data 0xD92F5547
#data 0x5D555A56
#data 0x8F164A15
#data 0x5E4A

loc_8c189B3E:
#data 0xD32D
#data 0x66E365DD
#data 0x64C3430B
#data 0x44116403
#data 0xA00D8901
#data 0x6043

loc_8c189B52:
#data 0x65DD
#data 0x64C3B3E8
#data 0x624D6403
#data 0x89043290
#data 0x6D437B01
#data 0x8FEA3BA3
#data 0x3E8C

loc_8c189B6A:
#data 0xE000

#align4
loc_8c189B6C:
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;==============================================

loc_8c189B7E:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0x2F862F96
#data 0x7FF04F22
#data 0x6E43992A
#data 0xEB00D315
#data 0xDA150E97
#data 0x091A6DA3
#data 0x5497393C
#data 0x81F2854A
#data 0x584685F2
#data 0x48156C03
#data 0x7D028F12

#align4
loc_8c189BB4:
#data 0x2F5265CD
#data 0x64E3B3B6
#data 0x66D365F2
#data 0xB3986C03
#data 0x62CD64E3
#data 0x890532A0
#data 0x33D063CD
#data 0x7B018902
#data 0x8BED3B83

#align4
loc_8c189BD8:
#data 0x638385F2
#data 0x6C0373FF
#data 0xA03DEB00
#data 0x01001F32
#data 0x02000148
#data 0x8C33C56C
#data 0x0000FFFA

#align4
loc_8c189BF4:
#data loc_8c186778

loc_8c189BF8:
#data 0x411861B3
#data 0x2F124100

#align4
loc_8c189C00:
#data 0x65CD569A
#data 0xD24363F2
#data 0x420B363C
#data 0x640364E3
#data 0x890E2448
#data 0x3430937B
#data 0xA0368B01
#data 0x6043

loc_8c189C1E:
#data 0xD63E
#data 0xB36865CD
#data 0xD23D64E3
#data 0x420B65D3
#data 0xAFE764E3
#data 0x6C03

loc_8c189C32:
#data 0x2BB8
#data 0x66A38F02
#data 0x81F260C3

#align4
loc_8c189C3C:
#data 0x1F5365CD
#data 0x64E3B359
#data 0x3B2052F2
#data 0xD2348909
#data 0x420B65D3
#data 0x660364E3
#data 0x55F32F01
#data 0x64E3B34D
#data 0x6CF1

loc_8c189C5E:
#data 0x7B01

#align4
loc_8c189C60:
#data 0x8BC93B83
#data 0x85F25397
#data 0x600D5235
#data 0x890B3020
#data 0xE54AD32B
#data 0x613285F2
#data 0x52146603
#data 0x5498420B
#data 0x64E3B262
#data 0x64E3B195

loc_8c189C88:
#data 0xE000

loc_8c189C8A:
#data 0x7F10
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;==============================================

loc_8c189C9E:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov.w @(loc_8c189D10,pc),r9 ; r9 set to 0x148
mov r4,r13
mov.l @(loc_8c189D24,pc),r3 ; r3 set to 0x8C33C56C
mul.l r9,r13
sts macl,r9
add r3,r9 ; r9 set to 0x8C33C6B4
mov.l @(0x1C,r9),r5
mov.l @(0x18,r5),r2
mov.l @(0x14,r5),r4
mov.l r2,@(0x04,r15)
mov 0x00,r2 ; r2 set to 0x00
mov r2,r10 ; r10 set to 0x00
mov.l r2,@(0x08,r15)
bra loc_8c189D90
extu.w r4,r14

loc_8c189CCE:
#data 0x6393
#data 0x33AC7348
#data 0x22286230
#data 0x62A38953
#data 0x42004218
#data 0x2F22

loc_8c189CE2:
#data 0x569A
#data 0x63F265E3
#data 0x363CD20A
#data 0x64D3420B
#data 0x24486403
#data 0x65E38B18
#data 0x64D3B316
#data 0x73486393
#data 0x68E333AC
#data 0x2320E200
#data 0xA0406B0D
#data 0xFF016EB3

loc_8c189D10:
#data 0x0148
#data 0x0000

#align4
loc_8c189D14:
#data loc_8c186850
#data 0x0000FFFF

#align4
loc_8c189D1C:
#data loc_8c187AB2
#data 0x8C33C568

#align4
loc_8c189D24:
#data 0x8C33C56C

#align4
loc_8c189D28:
#data 0x3420925C
#data 0xE2018940
#data 0x1F2265E3
#data 0x64D3B2F8
#data 0x65E3D62B
#data 0xB2DA6B0D
#data 0xD32B64D3
#data 0x430BD529
#data 0x6C0364D3
#data 0x89024C11
#data 0xA0309049
#data 0x0009

loc_8c189D56:
#data 0x65C3
#data 0xB2CC66B3
#data 0x2AA864D3
#data 0xD2248B08
#data 0x66C3E54A
#data 0x51346322
#data 0x5498410B
#data 0x0009A004

#align4
loc_8c189D74:
#data 0x66C36583
#data 0x64D3B2BD

#align4
loc_8c189D7C:
#data 0xAFB068E3
#data 0x6EC3

loc_8c189D82:
#data 0x65E3
#data 0x64D3B2D0
#data 0x6B0D68E3
#data 0x6EB3

loc_8c189D8E:
#data 0x7A01

#align4
loc_8c189d90:
mov.l @(0x04,r15),r3
cmp/ge r3,r10
bf loc_8c189cce
mov.l @(0x08,r15),r1
tst r1,r1
bt loc_8c189db4
bsr loc_8c18a148
mov r13,r4
mov r0,r4
cmp/pz r4
bf loc_8c189db0
bsr loc_8c189fb2
mov r13,r4
mov r0,r4
cmp/pz r4
bt loc_8c189db4

loc_8c189db0:
bra loc_8c189db6
mov r4,r0

loc_8c189db4:
mov 0x00,r0

loc_8c189db6:
add 0x0C,r15
lds.l @r15+,pr 
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 
mov.l @r15+,r14
;==============================================

loc_8c189dca:
#data 0xE600
#data 0xE70C
#data 0x6563

loc_8c189dd0:
#data 0x6340
#data 0x2338
#data 0x8904
#data 0x7601
#data 0x3673
#data 0x7501
#data 0x8FF8
#data 0x7401

loc_8c189de0:
#data 0x000B
#data 0x6053
;==============================================
#data 0xFF01
#data 0xFF04
#data 0xFFFF
#data 0x0000
#data 0xFFFC
#data 0x0000

loc_8c189df0:
#data 0x7AB2
#data 0x8C18
#data 0xC568
#data 0x8C33

loc_8c189df8:
#data 0x2FE6
#data 0x4F22
#data 0x7FF8
#data 0x2F42
#data 0x1F51
#data 0xBFE2
#data 0x64F2
#data 0x6E03
#data 0xBFDF
#data 0x54F1
#data 0x6403
#data 0x3E40
#data 0x8B08
#data 0x54F1
#data 0x4E15
#data 0xE600
#data 0x8F0E
#data 0x65F2

loc_8c189e1c:
#data 0x6340
#data 0x6250
#data 0x3230
#data 0x8904

loc_8c189e24:
#data 0xE000
#data 0x7F08
#data 0x4F26
#data 0x000B
#data 0x6EF6
;==============================================

loc_8c189e2e:
#data 0x7601
#data 0x36E3
#data 0x7401
#data 0x8FF2
#data 0x7501

loc_8c189e38:
#data 0xE001
#data 0x7F08
#data 0x4F26
#data 0x000B
#data 0x6EF6
;==============================================

loc_8c189e42:
#data 0x2FE6
#data 0x6E53
#data 0x2FD6
#data 0x6D43
#data 0x2FC6
#data 0x65D3
#data 0x4F22
#data 0x63D0
#data 0x64E3
#data 0x7410
#data 0x633C
#data 0x1E31
#data 0x7504

loc_8c189e5c:
#data 0x6254
#data 0x63E3
#data 0x731C
#data 0x2420
#data 0x7401
#data 0x3432
#data 0x8BF8
#data 0x65D3
#data 0x64E3
#data 0xE300
#data 0xE01C
#data 0x7420
#data 0x0E34
#data 0x7510

loc_8c189e78:
#data 0x6354
#data 0x62E3
#data 0x7228
#data 0x2430
#data 0x7401
#data 0x3422
#data 0x8BF8
#data 0xDC21
#data 0xE502
#data 0x62C2
#data 0x5323
#data 0x430B
#data 0x64D3
#data 0x600D
#data 0xE518
#data 0x1E03
#data 0x62C2
#data 0x5323
#data 0x430B
#data 0x64D3
#data 0x600D
#data 0x1E0A
#data 0xE51A
#data 0x84D1
#data 0x80EA
#data 0x60C2
#data 0x5003
#data 0x400B
#data 0x64D3
#data 0x81E4
#data 0x4F26
#data 0x6CF6
#data 0x6DF6
#data 0x000B
#data 0x6EF6

loc_8c189EBE:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.w @(loc_8c189F08,pc),r12 ; r12 set to 0x148
mov.l @(loc_8c189F10,pc),r3 ; r3 set to 0x8C33C56C
mul.l r12,r4
mov.l r5,@(0x04,r15)
mov.l r6,@r15
sts macl,r12
add r3,r12 ; r12 set to 0x8C33C6B4
mov.l @(0x28,r12),r14
bra loc_8c189F18
mov 0x00,r13

#align4
loc_8c189EDC:
#data 0x604C64E0
#data 0x89068833
#data 0x30109111
#data 0x88008903
#data 0xA0118912
#data 0x0009

loc_8c189EF2:
#data 0x65E3
#data 0xBF7F7504
#data 0x200854F1
#data 0x65F2890A
#data 0x64E3BF9F
#data 0x60D3A00D

loc_8c189F08:
#data 0x0148
#data 0x00CC
#data 0x8C33C568

#align4
loc_8c189F10:
#data 0x8C33C56C

#align4
loc_8c189F14:
#data 0x7D017E20

#align4
loc_8c189f18:
mov.l @(0x1C,r12),r3
mov.l @(0x30,r3),r2
cmp/ge r2,r13
bf loc_8c189edc
mov 0xFF,r0

loc_8c189f22:
add 0x08,r15
lds.l @r15+,pr 
mov.l @r15+,r12
mov.l @r15+,r13
rts 
mov.l @r15+,r14

loc_8c189F2E:
mov.w @(loc_8c18A022,pc),r6 ; r6 set to 0x148
mov.l @(loc_8c18A028,pc),r3 ; r3 set to 0x8C33C56C
mul.l r6,r4
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
sts macl,r6
mov.w @(loc_8c18A024,pc),r4 ; r4 set to 0xCC
add r3,r6 ; r6 set to 0x8C33C6B4
mov.l @(0x28,r6),r13
bra loc_8c189F5A
mov 0x00,r14

loc_8c189F46:
#data 0x67D0
#data 0x3740677C
#data 0xBF788B03
#data 0xA00764D3
#data 0x60E3

loc_8c189F56:
#data 0x7D20
#data 0x7E01

loc_8c189f5a:
mov.l @(0x1C,r6),r3
mov.l @(0x30,r3),r2
cmp/ge r2,r14
bf loc_8c189f46
mov 0xFF,r0

loc_8c189f64:
lds.l @r15+,pr 
mov.l @r15+,r13
rts 
mov.l @r15+,r14

loc_8c189F6C:
mov.w @(loc_8c18A022,pc),r6 ; r6 set to 0x148
mov.l @(loc_8c18A028,pc),r3 ; r3 set to 0x8C33C56C
mul.l r6,r4
sts macl,r6
add r3,r6 ; r6 set to 0x8C33C6B4
mov.l @(0x28,r6),r5
bra loc_8c189F8C
mov 0x00,r4

loc_8c189F7C:
mov.b @r5,r7
extu.b r7,r7
tst r7,r7
bf loc_8c189F88
rts
mov r4,r0
;==============================================

loc_8c189F88:
add 0x20,r5
add 0x01,r4

loc_8c189F8C:
mov.l @(0x1C,r6),r2
mov.l @(0x30,r2),r3
cmp/ge r3,r4
bf loc_8c189F7C
mov 0xFF,r0 ; r0 set to 0xFFFFFFFF, r0 set to 0xFFFFFFFF
rts
nop
;==============================================

loc_8c189F9A:
#data 0x2FE6
#data 0xD3229E41
#data 0xD22204E7
#data 0x3E3C0E1A
#data 0x56E855E7
#data 0x422B5552
#data 0x6EF6


loc_8c189FB2:
mov.l r14,@-r15
mov.w @(loc_8c18A022,pc),r14 ; r14 set to 0x148
mov.l @(loc_8c18A028,pc),r3 ; r3 set to 0x8C33C56C
mul.l r14,r4
mov.l @(loc_8c18A030,pc),r2 ; r2 set to 0x8C186850
sts macl,r14
add r3,r14 ; r14 set to 0x8C33C6B4
mov.l @(0x1C,r14),r5
mov.l @(0x20,r14),r6
mov.l @(0x08,r5),r5
jmp @r2
mov.l @r15+,r14

loc_8c189FCA:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x2FB69D27
#data 0x0BD76B43
#data 0x2FA6D313
#data 0x0D1A4F22
#data 0x3D3CDA12
#data 0x5CC45CD7
#data 0x8F124C15
#data 0xEE00

loc_8c189FEE:
#data 0x55D7
#data 0x53D966E3
#data 0x55534618
#data 0x363C4600
#data 0x4A0B35EC
#data 0x640364B3
#data 0x89014411
#data 0x6043A004

#align4
loc_8c18A00C:
#data 0x3EC37E01
#data 0x8BED

loc_8c18A012:
#data 0xE000

#align4
loc_8c18A014:
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;==============================================

loc_8c18A022:
#data 0x0148

loc_8c18A024:
#data 0x00CC
#data 0x0000

#align4
loc_8c18A028:
#data 0x8C33C56C

#align4
loc_8c18A02C:
#data loc_8c186778

loc_8c18A030:
#data loc_8c186850


loc_8c18A034:
mov.l r14,@-r15
mov 0x00,r14 ; r14 set to 0x00
mov.l r13,@-r15
mov.w @(loc_8c18A130,pc),r13 ; r13 set to 0x148
mov.l r12,@-r15
mov r4,r12
mul.l r13,r12
mov.l @(loc_8c18A134,pc),r3 ; r3 set to 0x8C33C56C
mov.l r11,@-r15
mov.l r10,@-r15
sts macl,r13
mov.l r9,@-r15
mov.l r8,@-r15
add r3,r13 ; r13 set to 0x8C33C6B4
mov.l @(loc_8c18A138,pc),r8 ; r8 set to 0xFFFA
sts.l pr,@-r15
mov.l @(0x1C,r13),r10
mov r8,r9 ; r9 set to 0xFFFA
mov.l @(0x10,r10),r10
cmp/pl r10
bf/s loc_8c18A09E
add 0x05,r9 ; r9 set to 0xFFFF

loc_8c18A060:
mov r14,r6 ; r6 set to 0x00
mov.l @(0x24,r13),r3 ; r3 ??
mov.l @(0x1C,r13),r5
shll8 r6 ; r6 set to 0x00
shll r6 ; r6 set to 0x00
mov.l @(0x0C,r5),r5
add r3,r6 ; r6 ??? bc r3 is ???
mov.l @(loc_8c18A13C,pc),r3 ; r3 set to 0x8C186850
add r14,r5
jsr @r3
mov r12,r4
mov r0,r11
cmp/pz r11
bt loc_8c18A08C
mov.l @(0x1C,r13),r5
mov r9,r6 ; r6 set to 0xFFFF
mov.l @(0x0C,r5),r5
add r14,r5
bsr loc_8c18A2F6
mov r12,r4
bra loc_8c18A0A0
mov r11,r0

#align4
loc_8c18a08c:
mov.l @(0x1C,r13),r5
mov r8,r6
mov.l @(0x0C,r5),r5
add r14,r5
bsr loc_8c18a2f6
mov r12,r4
add 0x01,r14
cmp/ge r10,r14
bf loc_8c18a060

loc_8c18A09E:
mov 0x00,r0 ; r0 set to 0x00

loc_8c18A0A0:
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c18A0B2:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.w @(loc_8c18A130,pc),r5 ; r5 set to 0x148
mov.l r10,@-r15
mov r4,r10
mul.l r5,r10
mov.l @(loc_8c18A134,pc),r3 ; r3 set to 0x8C33C56C
mov.l r9,@-r15
mov.l r8,@-r15
sts macl,r5
sts.l pr,@-r15
mov.l @(loc_8c18A140,pc),r11 ; r11 set to 0xFFFC
add r3,r5 ; r5 set to 0x8C33C6B4
mov.l @(0x1C,r5),r4
mov.l @(0x20,r4),r9
mov.l @(0x1C,r4),r8
mov.l @(0x10,r4),r12
add r8,r9
add 0xFF,r9

loc_8c18A0DC:
mov.l @(loc_8c18A144,pc),r3 ; r3 set to 0x8C187B3C
mov r11,r5 ; r5 set to 0xFFFC
mov r9,r7
mov r8,r6
jsr @r3
mov r10,r4
mov r0,r13
cmp/pz r13
bt loc_8c18A0F2
bra loc_8c18A11E
mov 0xFF,r0

loc_8c18A0F2:
cmp/pl r12
bf/s loc_8c18A114
mov 0x00,r14 ; r14 set to 0x00

loc_8c18A0F8:
mov r13,r5
sub r14,r5
bsr loc_8c18A328
mov r10,r4
extu.w r0,r0
cmp/eq r11,r0
bt loc_8c18A10E
mov r13,r9
sub r14,r9
bra loc_8c18A114
add 0xFF,r9

loc_8c18a10e:
add 0x01,r14
cmp/ge r12,r14
bf loc_8c18a0f8

loc_8c18a114:
cmp/eq r12,r14
bf loc_8c18a0dc
sub r12,r13
mov r13,r0
add 0x01,r0

loc_8c18A11E:
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c18A130:
#data 0x0148
#data 0x0000

#align4
loc_8c18A134:
#data 0x8C33C56C

#align4
loc_8c18A138:
#data 0x0000FFFA

#align4
loc_8c18A13C:
#data loc_8c186850

loc_8c18A140:
#data 0x0000FFFC

#align4
loc_8c18A144:
#data loc_8c187B3C


loc_8c18A148:
mov.l r14,@-r15
mov.l r13,@-r15
mov.w @(loc_8c18A23A,pc),r14 ; r14 set to 0x148
mov.l r12,@-r15
mov r4,r12
mul.l r14,r12
mov.l r11,@-r15
mov.l r10,@-r15
mov 0x00,r10 ; r10 set to 0x00
mov.l r9,@-r15
mov 0x01,r9 ; r9 set to 0x01
sts macl,r14
mov.l r8,@-r15
mov r10,r13 ; r13 set to 0x00
mov.l @(loc_8c18A240,pc),r3 ; r3 set to 0x8C33C56C
sts.l pr,@-r15
mov.l @(loc_8c18A244,pc),r8 ; r8 set to 0x8C33C568
add r3,r14 ; r14 set to 0x8C33C6B4
mov.l @(loc_8c18A248,pc),r11 ; r11 set to 0xFFFA

loc_8c18A16E:
bsr loc_8c18A034
mov r12,r4
mov.w @(loc_8c18A23C,pc),r1 ; r1 set to 0xFF01, r1 set to 0xFF01
cmp/eq r1,r0
bt/s loc_8c18A188
mov r0,r4
mov.w @(loc_8c18A23E,pc),r1 ; r1 set to 0xFF40, r1 set to 0xFF40
cmp/eq r1,r0
bt loc_8c18A18E
cmp/eq 0x00,r0
bt loc_8c18A1CC
bra loc_8c18A1CC
nop

loc_8c18A188:
mov.w @(loc_8c18A23C,pc),r0 ; r0 set to 0xFF01
bra loc_8c18A1D6
nop

loc_8c18A18E:
bsr loc_8c18A0B2
mov r12,r4
mov r0,r13
cmp/pz r13
bt loc_8c18A19E
mov.w @(loc_8c18A23E,pc),r0 ; r0 set to 0xFF40
bra loc_8c18A1D6
nop

loc_8c18A19E:
mov.l @(0x1C,r14),r2
mov 0x46,r5 ; r5 set to 0x46
mov r13,r6
mov.l r13,@(0x0C,r2)
mov.l @r8,r3
mov.l @(0x10,r3),r2
jsr @r2
mov.l @(0x20,r14),r4
bra loc_8c18A1C0
mov r10,r13

loc_8c18A1B2:
mov.l @(0x1C,r14),r5
mov r11,r6
mov.l @(0x0C,r5),r5
add r13,r5
bsr loc_8c18A2F6
mov r12,r4
add 0x01,r13

loc_8c18A1C0:
mov.l @(0x1C,r14),r2
mov.l @(0x10,r2),r3
cmp/ge r3,r13
bf loc_8c18A1B2
bra loc_8c18A16E
mov r9,r13

#align4
loc_8c18a1cc:
tst r13,r13
bt loc_8c18a1d4
bsr loc_8c189fb2
mov r12,r4

loc_8c18a1d4:
mov 0x00,r0

loc_8c18A1D6:
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c18A1E8:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8c18A23A,pc),r13 ; r13 set to 0x148
mov.l @(loc_8c18A240,pc),r3 ; r3 set to 0x8C33C56C
mul.l r13,r4
mov.l @(loc_8c18A244,pc),r12 ; r12 set to 0x8C33C568
mov.w r5,@r15
sts macl,r13
add r3,r13 ; r13 set to 0x8C33C6B4
mov.l @(0x1C,r13),r4
mov.l @(0x30,r4),r4
mov r4,r14
add 0xFF,r14
cmp/pz r14
bf loc_8c18A22C

loc_8c18A20C:
mov.l @r12,r3 ; r3 ??
mov r14,r5
shll r5
mov.l @(0x0C,r3),r2
jsr @r2
mov.l @(0x24,r13),r4
mov.w @r15,r3
extu.w r0,r0
extu.w r3,r3
cmp/eq r3,r0
bf loc_8c18A226
bra loc_8c18A22E
mov r14,r0

loc_8c18a226:
add 0xFF,r14
cmp/pz r14
bt loc_8c18a20c

loc_8c18A22C:
mov 0xFF,r0 ; r0 set to 0xFFFFFFFF

loc_8c18A22E:
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c18A23A:
#data 0x0148

loc_8c18A23C:
#data 0xFF01

loc_8c18A23E:
#data 0xFF40

#align4
loc_8c18A240:
#data 0x8C33C56C

#align4
loc_8c18A244:
#data 0x8C33C568

#align4
loc_8c18A248:
#data 0x0000FFFA


loc_8c18A24C:
mov.l r14,@-r15
mov.l r13,@-r15
mov r4,r13
mov.l r12,@-r15
mov.l r11,@-r15
mov.l @(loc_8c18A34C,pc),r11 ; r11 set to 0xFFFC
sts.l pr,@-r15
mov r11,r12 ; r12 set to 0xFFFC
add 0xFE,r12 ; r12 set to 0xFFFA

loc_8c18A25E:
mov r11,r5 ; r5 set to 0xFFFC
bsr loc_8c18A1E8
mov r13,r4
mov r0,r14
cmp/pz r14
bt loc_8c18A26E
bra loc_8c18A286
mov 0xFF,r0

loc_8c18A26E:
mov r14,r5
bsr loc_8c18A292
mov r13,r4
cmp/pz r0
bt loc_8c18A284
mov r14,r5
mov r12,r6
bsr loc_8c18A2F6
mov r13,r4
bra loc_8c18A25E
nop

loc_8c18A284:
mov r14,r0

loc_8c18A286:
lds.l @r15+,pr
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c18A292:
mov.l r14,@-r15
mov 0x00,r14 ; r14 set to 0x00
mov.l r13,@-r15
mov.l r12,@-r15
mov r4,r12
mov.l r11,@-r15
mov.w @(loc_8c18A348,pc),r11 ; r11 set to 0x148
mov.l r10,@-r15
mul.l r11,r12
mov.l @(loc_8c18A350,pc),r3 ; r3 set to 0x8C33C56C
sts.l pr,@-r15
mov.l @(loc_8c18A354,pc),r10 ; r10 set to 0x8C33C568
sts macl,r11
add r3,r11 ; r11 set to 0x8C33C6B4
bra loc_8c18A2DE
extu.w r5,r13

loc_8c18A2B2:
#data 0x65E3
#data 0x64C3B092
#data 0x65406403
#data 0x8833605C
#data 0x65038D03
#data 0x35309341
#data 0x8B08

loc_8c18A2CA:
#data 0x61A2
#data 0x430B5313
#data 0x640DE502
#data 0x8B013D40
#data 0xE0FFA006

loc_8c18A2DC:
#data 0x7E01

loc_8c18a2de:
mov.l @(0x1C,r11),r3
mov.l @(0x30,r3),r2
cmp/ge r2,r14
bf loc_8c18a2b2
mov r13,r0

loc_8c18a2e8:
lds.l @r15+,pr 
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 
mov.l @r15+,r14

loc_8c18A2F6:
mov.l r14,@-r15
add 0xFC,r15
mov.w @(loc_8c18A348,pc),r14 ; r14 set to 0x148
mov r5,r0
mov.l @(loc_8c18A350,pc),r3 ; r3 set to 0x8C33C56C
mul.l r14,r4
mov.l r5,@r15
sts macl,r14
add r3,r14 ; r14 set to 0x8C33C6B4
mov.l @(0x1C,r14),r2
mov.l @r2,r1
cmp/gt r1,r0
bt loc_8c18A322
mov.l @(loc_8c18A354,pc),r2 ; r2 set to 0x8C33C568
mov.l @r15,r5
mov.l @r2,r3 ; r3 ??
mov.l @(0x24,r14),r4
shll r5
mov.l @(0x10,r3),r1
add 0x04,r15
jmp @r1
mov.l @r15+,r14

loc_8c18A322:
add 0x04,r15
rts
mov.l @r15+,r14
;==============================================

loc_8c18A328:
add 0xF8,r15
mov.w @(loc_8c18A348,pc),r3 ; r3 set to 0x148
mov.l @(loc_8c18A354,pc),r1 ; r1 set to 0x8C33C568
mul.l r3,r4
mov.l @(loc_8c18A350,pc),r2 ; r2 set to 0x8C33C56C
mov.l r5,@r15
sts macl,r4
add r2,r4
mov.l r4,@(0x04,r15)
mov.l @r1,r0
mov.l @r15,r5
mov.l @(0x24,r4),r4
mov.l @(0x0C,r0),r0
shll r5
jmp @r0
add 0x08,r15

loc_8c18A348:
#data 0x0148
#data 0x00CC

#align4
loc_8c18A34C:
#data 0x0000FFFC

#align4
loc_8c18A350:
#data 0x8C33C56C

#align4
loc_8c18A354:
#data 0x8C33C568

#align4
loc_8c18A358:
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0x9E717FFC
#data 0xD3396D43
#data 0x0DE76243
#data 0x4208D038
#data 0x0E1A2F22
#data 0xE3003E3C
#data 0x84EA0236
#data 0x8F052008
#data 0xBE0AEC01
#data 0x401164D3
#data 0x64038F1B

#align4
loc_8c18A38C:
#data 0x64D3B945
#data 0x8B1C4011
#data 0x200884EB
#data 0xBE168B04
#data 0x401164D3
#data 0x64038F08

#align4
loc_8c18A3A4:
#data 0x200884EC
#data 0xBBB18B0D
#data 0x401164D3
#data 0x64038D09

#align4
loc_8c18A3B4:
#data 0x3430D327
#data 0xD0258B03
#data 0xA00661F2
#data 0x01C6

loc_8c18A3C2:
#data 0xA005
#data 0x6043

loc_8c18A3C6:
#data 0x60C3
#data 0x80EB80EA
#data 0x80EC

loc_8c18A3CE:
#data 0xE000

#align4
loc_8c18A3D0:
#data 0x4F267F04
#data 0x6DF66CF6
#data 0x6EF6000B
;==============================================

loc_8c18A3DC:
mov.w @(loc_8c18A448,pc),r3 ; r3 set to 0x148
mov r5,r0
mov.l @(loc_8c18A44C,pc),r2 ; r2 set to 0x8C33C56C
shll2 r0
mul.l r3,r4
shll2 r0
shll r0
sts macl,r4
add r2,r4
mov.l @(0x28,r4),r1
rts
add r1,r0
;==============================================

loc_8c18A3F4:
mov.w @(loc_8c18A448,pc),r3 ; r3 set to 0x148
mov 0xFC,r1 ; r1 set to 0xFFFFFFFC
mov.l @(loc_8c18A44C,pc),r2 ; r2 set to 0x8C33C56C
shad r1, r5
mul.l r3,r4
mov 0x01,r1 ; r1 set to 0x01
sts macl,r4
add r2,r4
mov r4,r0
add 0x48,r0
add r0,r5
rts
mov.b r1,@r5
;==============================================

loc_8c18A40E:
mov.l @(loc_8c18A45C,pc),r7 ; r7 set to 0x8C34146C
mov 0x01,r6 ; r6 set to 0x01
mov.l @(loc_8c18A458,pc),r4 ; r4 set to 0x8C34122C
bra loc_8c18A42A
mov 0x00,r5

loc_8c18A418:
mov.b @r4,r2
tst r2,r2
bf loc_8c18A426
mov.b r6,@r4
mov.l r5,@(0x0C,r4)
rts
mov r4,r0
;==============================================

loc_8c18A426:
add 0x48,r4
add 0x01,r5

loc_8c18A42A:
mov.l @r7,r3
cmp/ge r3,r5
bf loc_8c18A418
mov.l @(loc_8c18A460,pc),r2 ; r2 set to 0x8C341470, r2 set to 0x8C341470
mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
mov.w @(loc_8c18A44A,pc),r1 ; r1 set to 0xFF07, r1 set to 0xFF07
mov.l r1,@r2 ; r2 ??, r2 ??
rts
nop
;==============================================

loc_8c18A43C:
mov.l @(loc_8c18A464,pc),r3 ; r3 set to 0x8C129728
mov 0x48,r6 ; r6 set to 0x48
jmp @r3
mov 0x00,r5

loc_8c18A444:
rts
mov 0x00,r0
;==============================================

loc_8c18A448:
#data 0x0148

loc_8c18A44A:
#data 0xFF07

#align4
loc_8c18A44C:
#data 0x8C33C56C
#data 0x8C33CFAC
#data 0xFFFF0000

#align4
loc_8c18A458:
#data 0x8C34122C

#align4
loc_8c18A45C:
#data 0x8C34146C

#align4
loc_8c18A460:
#data 0x8C341470

#align4
loc_8c18A464:
#data bank12.loc_8c129728


loc_8c18A468:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
add 0xD4,r15
mov.w @(loc_8c18A534,pc),r11 ; r11 set to 0x148
mov r4,r12
mov.l @(loc_8c18A53C,pc),r3 ; r3 set to 0x8C33C56C
mul.l r11,r12
sts macl,r11
add r3,r11 ; r11 set to 0x8C33C6B4
bsr loc_8c189EBE
mov r15,r6
mov r0,r5
cmp/pz r5
bt loc_8c18A490
mov.w @(loc_8c18A536,pc),r0 ; r0 set to 0xFF05
bra loc_8c18A4EA
nop

loc_8c18A490:
bsr loc_8c18A3DC
mov r12,r4
mov.l @(0x1C,r11),r3
mov.l @(0x0C,r15),r13
mov.l @(0x30,r3),r2
cmp/ge r2,r13
bt loc_8c18A4D8
bra loc_8c18A4E2
mov 0x00,r14

loc_8c18A4A2:
#data 0x65D3
#data 0x64C3BF40
#data 0x640D52FA
#data 0x72FFD524
#data 0x8B033E20
#data 0x89123450
#data 0x0009A00E

#align4
loc_8c18A4BC:
#data 0x890B34D0
#data 0x89093450
#data 0x3450D51F
#data 0xD51F8906
#data 0x89033450
#data 0x523C53B7
#data 0x8B023423


loc_8c18A4D8:
mov.w @(loc_8c18A538,pc),r0 ; r0 set to 0xFF41
bra loc_8c18A4EA
nop

loc_8c18A4DE:
#data 0x7E01
#data 0x6D43

loc_8c18a4e2:
mov.l @(0x28,r15),r2
cmp/ge r2,r14
bf loc_8c18a4a2
mov 0x00,r0

loc_8c18A4EA:
add 0x2C,r15
lds.l @r15+,pr
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c18A4F8:
sts.l pr,@-r15
mov.l @(loc_8c18A54C,pc),r3 ; r3 set to 0x8C1291DC
mov r4,r1
mov 0x0A,r6 ; r6 set to 0x0A
jsr @r3
mov r6,r0 ; r0 set to 0x0A
mov.l @(loc_8c18A550,pc),r2 ; r2 set to 0x8C12939C
mov r4,r1
mov r0,r5 ; r5 set to 0x0A
jsr @r2
mov r6,r0 ; r0 set to 0x0A
mov r0,r4 ; r4 set to 0x0A
mov r5,r0 ; r0 set to 0x0A
lds.l @r15+,pr
shll2 r0 ; r0 set to 0x28
shll2 r0 ; r0 set to 0xA0
rts
add r4,r0
;==============================================

loc_8c18A51C:
mov r4,r5
shlr2 r5
shlr2 r5
mov r5,r0
mov r5,r3
shll2 r0
mov 0x0F,r2 ; r2 set to 0x0F
add r3,r0
shll r0
and r2,r4
rts
add r4,r0
;==============================================

loc_8c18A534:
#data 0x0148

loc_8c18A536:
#data 0xFF05

loc_8c18A538:
#data 0xFF41
#data 0x0000

#align4
loc_8c18A53C:
#data 0x8C33C56C
#data 0x0000FFFA
#data 0x0000FFFC
#data 0x0000FFFF

#align4
loc_8c18A54C:
#data bank12.loc_8c1291DC

loc_8c18A550:
#data bank12.loc_8c12939C


loc_8c18A554:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.l r8,@-r15
mov r4,r8
sts.l pr,@-r15
mov.w @r13,r1
add 0x01,r14
mov.l @(loc_8c18A63C,pc),r3 ; r3 set to 0x8C129128
extu.w r1,r1
jsr @r3
mov 0x64,r0 ; r0 set to 0x64
bsr loc_8c18A4F8
mov r0,r4 ; r4 set to 0x64
mov.b r0,@r8
mov r14,r8
mov.w @r13,r1
add 0x01,r14
mov.l @(loc_8c18A640,pc),r3 ; r3 set to 0x8C1292D4
extu.w r1,r1
jsr @r3
mov 0x64,r0 ; r0 set to 0x64
bsr loc_8c18A4F8
mov r0,r4 ; r4 set to 0x64
mov.b r0,@r8
mov r14,r8
mov.b @(0x02,r13),r0
add 0x01,r14
bsr loc_8c18A4F8
extu.b r0,r4 ; r4 set to 0x64
mov.b r0,@r8
mov r14,r8
mov.b @(0x03,r13),r0
add 0x01,r14
bsr loc_8c18A4F8
extu.b r0,r4 ; r4 set to 0x64
mov.b r0,@r8
mov r14,r8
mov.b @(0x04,r13),r0
add 0x01,r14
bsr loc_8c18A4F8
extu.b r0,r4 ; r4 set to 0x64
mov.b r0,@r8
mov r14,r8
mov.b @(0x05,r13),r0
add 0x01,r14
bsr loc_8c18A4F8
extu.b r0,r4 ; r4 set to 0x64
mov.b r0,@r8
mov r14,r8
mov.b @(0x06,r13),r0
add 0x01,r14
bsr loc_8c18A4F8
extu.b r0,r4 ; r4 set to 0x64
mov.b r0,@r8
mov.b @(0x07,r13),r0
mov.l @(loc_8c18A644,pc),r1 ; r1 set to 0x8C1C5970
extu.b r0,r0 ; r0 set to 0x64
and 0x07,r0
mov.b @(r0,r1),r3 ; r3 ??
mov.b r3,@r14
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c18A5DA:
mov.l r14,@-r15
mov r5,r14
mov.l r13,@-r15
mov r4,r13
mov.l r8,@-r15
sts.l pr,@-r15
mov.b @r14,r4
bsr loc_8c18A51C
extu.b r4,r4
mov 0x64,r2 ; r2 set to 0x64
mulu.w r2,r0
sts macl,r0
mov r0,r8
mov.b @(0x01,r14),r0
bsr loc_8c18A51C
extu.b r0,r4
add r0,r8
mov.w r8,@r13
mov.b @(0x02,r14),r0
bsr loc_8c18A51C
extu.b r0,r4
mov.b r0,@(0x02,r13)
mov.b @(0x03,r14),r0
bsr loc_8c18A51C
extu.b r0,r4
mov.b r0,@(0x03,r13)
mov.b @(0x04,r14),r0
bsr loc_8c18A51C
extu.b r0,r4
mov.b r0,@(0x04,r13)
mov.b @(0x05,r14),r0
bsr loc_8c18A51C
extu.b r0,r4
mov.b r0,@(0x05,r13)
mov.b @(0x06,r14),r0
bsr loc_8c18A51C
extu.b r0,r4
mov.b r0,@(0x06,r13)
mov.b @(0x07,r14),r0
mov.l @(loc_8c18A648,pc),r1 ; r1 set to 0x8C1C5978
extu.b r0,r0
and 0x07,r0
mov.b @(r0,r1),r0
mov.b r0,@(0x07,r13)
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

#align4
loc_8c18A63C:
#data bank12.loc_8c129128

loc_8c18A640:
#data bank12.loc_8c1292D4

loc_8c18A644:
#data bank1c.loc_8c1c5970

loc_8c18A648:
#data bank1c.loc_8c1c5978

loc_8c18A64C:
#data 0xE6015547
#data 0x37636752
#data 0x92668B45
#data 0x89423727
#data 0x52526352
#data 0x8B3E3320
#data 0x47115753
#data 0x62528B3B
#data 0x89383723
#data 0x47115755
#data 0x63528B35
#data 0x89323733
#data 0x4711575D
#data 0x62528B2F
#data 0x892C3727
#data 0x4711575E
#data 0x63528B29
#data 0x89263737
#data 0x6322D227
#data 0x21185132
#data 0x53548B07
#data 0x30338548
#data 0x53568B1D
#data 0x30338549
#data 0x8B19

loc_8c18A6AE:
#data 0x913B
#data 0x30106052
#data 0x9138890A
#data 0x890A3010
#data 0x30109136
#data 0x91308909
#data 0x89093010
#data 0x0009A00B

#align4
loc_8c18A6CC:
#data 0xA00AE300
#data 0x1431

loc_8c18A6D2:
#data 0xA008
#data 0x1461

loc_8c18A6D6:
#data 0xE202
#data 0x1421A005

#align4
loc_8c18A6DC:
#data 0xA002E103
#data 0x1411

loc_8c18A6E2:
#data 0x000B
#data 0xE0FF
;==============================================

loc_8c18A6E6:
#data 0xE000
#data 0x0009000B
;==============================================

loc_8c18A6EC:
mov.l r14,@-r15
mov 0x01,r2 ; r2 set to 0x01
mov.l r13,@-r15
mov.l r12,@-r15
mov r5,r12
mov.l r11,@-r15
mov.w @(loc_8c18A72E,pc),r13 ; r13 set to 0x148
mov.l r10,@-r15
mov r4,r10
mul.l r13,r10
mov.l @(loc_8c18A738,pc),r3 ; r3 set to 0x8C33C56C
mov.l @(loc_8c18A73C,pc),r0 ; r0 set to 0x8C1C9738
mov.l r9,@-r15
sts macl,r13
sts.l pr,@-r15
mov.l @(loc_8c18A740,pc),r9 ; r9 set to 0x8C186778
add r3,r13 ; r13 set to 0x8C33C6B4
mov.w @(loc_8c18A730,pc),r11 ; r11 set to 0x200
mov.l r2,@(0x30,r13)  ; r13 ??
mov.l @(0x04,r13),r1
mov r1,r2 ; r2 ??? bc r1 is ???
shll2 r1
add r2,r1
shll2 r1
shll2 r1
mov.l @(r0,r1),r0 ; r0 ??? bc r1 is ???
mov.l r0,@(0x34,r13)
bra loc_8c18A75A
mov 0x00,r14
#data 0x07FF
#data 0x01FF00FF
#data 0x03FF

loc_8c18A72E:
#data 0x0148

loc_8c18A730:
#data 0x0200
#data 0x0000
#data 0x8C33C568

#align4
loc_8c18A738:
#data 0x8C33C56C

#align4
loc_8c18A73C:
#data bank1c.loc_8c1c9738

loc_8c18A740:
#data loc_8c186778

loc_8c18A744:
#data 0x66C365E3
#data 0x64A3490B
#data 0x44116403
#data 0xA0088901
#data 0x6043

loc_8c18A756:
#data 0x7E01
#data 0x3CBC

loc_8c18a75a:
mov.l @(0x1C,r13),r2
mov.l @r2,r3
add 0x01,r3
cmp/ge r3,r14
bf loc_8c18a744
mov 0x00,r0

loc_8c18a766:
lds.l @r15+,pr 
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 
mov.l @r15+,r14

loc_8c18A776:
mov.l r14,@-r15
mov 0x01,r2 ; r2 set to 0x01
mov.l r13,@-r15
mov.l r12,@-r15
mov r5,r12
mov.l r11,@-r15
mov.w @(loc_8c18A80E,pc),r13 ; r13 set to 0x148
mov.l r10,@-r15
mov r4,r10
mul.l r13,r10
mov.l @(loc_8c18A814,pc),r3 ; r3 set to 0x8C33C56C
mov.l @(loc_8c18A818,pc),r0 ; r0 set to 0x8C1C973C
mov.l r9,@-r15
sts macl,r13
sts.l pr,@-r15
mov.l @(loc_8c18A81C,pc),r9 ; r9 set to 0x8C186850
add r3,r13 ; r13 set to 0x8C33C6B4
mov.w @(loc_8c18A810,pc),r11 ; r11 set to 0x200
mov.l r2,@(0x30,r13)  ; r13 ??
mov.l @(0x04,r13),r1
mov r1,r2 ; r2 ??? bc r1 is ???
shll2 r1
add r2,r1
shll2 r1
shll2 r1
mov.l @(r0,r1),r0 ; r0 ??? bc r1 is ???
mov.l r0,@(0x34,r13)
bra loc_8c18A7C6
mov 0x00,r14

#align4
loc_8c18A7B0:
#data 0x66C365E3
#data 0x64A3490B
#data 0x44116403
#data 0xA0088901
#data 0x6043

loc_8c18A7C2:
#data 0x7E01
#data 0x3CBC

loc_8c18a7c6:
mov.l @(0x1C,r13),r2
mov.l @r2,r3
add 0x01,r3
cmp/ge r3,r14
bf loc_8c18a7b0
mov 0x00,r0

loc_8c18a7d2:
lds.l @r15+,pr 
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 
mov.l @r15+,r14

loc_8c18A7E2:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov r7,r13
tst r13,r13
mov r4,r11
mov.l r5,@(0x04,r15)
bf/s loc_8c18A826
mov.l r6,@(0x08,r15)
mov.l @(loc_8c18A820,pc),r3 ; r3 set to 0x8C1894C8
mov.l @(0x04,r15),r5
jsr @r3
mov r11,r4
mov r0,r4
cmp/pz r4
bt loc_8c18A824
bra loc_8c18A874
mov r4,r0

loc_8c18A80E:
#data 0x0148

loc_8c18A810:
#data 0x0200
#data 0x0000

#align4
loc_8c18A814:
#data 0x8C33C56C

#align4
loc_8c18A818:
#data bank1c.loc_8c1c973C

loc_8c18A81C:
#data loc_8c186850

loc_8c18A820:
#data loc_8c1894C8

loc_8c18a824:
mov r4,r13

loc_8c18a826:
mov.l @(loc_8c18a8e8,pc),r3
mov r15,r6
mov.l @(0x04,r15),r5
jsr @r3
mov r11,r4
mov r0,r14
cmp/pz r14
bf loc_8c18a872
mov.w @(loc_8C18A8E0,pc),r4
mov 0x01,r2
mov.l @(loc_8C18A8EC,pc),r3
mul.l r4,r11
mov 0x00,r11
mov.l @(0x08,r15),r12
mov r11,r1
cmp/hs r13,r1
sts macl,r4
add r3,r4
mov.l r2,@(0x30,r4) 
bt/s loc_8c18a868
mov.l r13,@(0x34,r4) 
mov.w @(loc_8C18A8E2,pc),r10

loc_8c18a852:
mov.l @(loc_8c18a8f0,pc),r3
mov r12,r5
jsr @r3
mov.l @r15,r4
mov r0,r14
cmp/pz r14
bf loc_8c18a86a
add 0x01,r11
cmp/hs r13,r11
bf/s loc_8c18a852
add r10,r12

loc_8c18a868:
mov 0x00,r14

loc_8c18a86a:
mov.l @(loc_8c18a8f4,pc),r3
mov 0x00,r5
jsr @r3
mov.l @r15,r4

loc_8c18a872:
mov r14,r0

loc_8c18A874:
add 0x0C,r15
lds.l @r15+,pr
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

#align4
loc_8c18A884:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0x6B537FF8
#data 0xE500D318
#data 0x1F616C43
#data 0x5AF96D73
#data 0x64C3430B
#data 0x65B3D215
#data 0x420B6E03
#data 0x640364C3
#data 0x8B004415
#data 0x3E4C

loc_8c18A8B6:
#data 0x4E11
#data 0x3ED28B57
#data 0x90118902
#data 0x0009A054

#align4
loc_8c18A8C4:
#data 0x24A9D40E
#data 0x891B2448
#data 0x65B32FA6
#data 0x67D353F9
#data 0x56F32F36
#data 0x64C3B05C
#data 0x7F08A046
loc_8c18a8e0:
#data 0x0148
loc_8c18a8e2:
#data 0x0200
#data 0x0000FF04

#align4
loc_8c18A8E8:
#data loc_8c187E8C
loc_8c18a8ec:
#data 0x8C33C56C

#align4
loc_8c18A8F0:
#data loc_8c1887C4

loc_8c18A8F4:
#data loc_8c188306

loc_8c18A8F8:
#data loc_8c187CA8

loc_8c18A8FC:
#data loc_8c1894C8
#data 0x80000000

#align4
loc_8c18A904:
#data 0x67F3D31E
#data 0x65B356F8
#data 0x64C3430B
#data 0x4E116E03
#data 0x94318B29
#data 0xD31A60A3
#data 0x62F20C47
#data 0x8021EC00
#data 0x041AE201
#data 0x5BF1D017
#data 0x142C343C
#data 0x62135141
#data 0x312C4108
#data 0x410862C3
#data 0x410832D2
#data 0x30DC001E
#data 0x140D8D0C
#data 0x9A19

loc_8c18A94A:
#data 0xD310
#data 0x430B65B3
#data 0x6E0364F2
#data 0x8B044E11
#data 0x3CD27C01
#data 0x3BAC8FF5

loc_8c18A960:
#data 0xEE00

loc_8c18A962:
#data 0xD30B
#data 0x430BE500
#data 0x64F2

loc_8c18A96A:
#data 0x60E3

#align4
loc_8c18A96C:
#data 0x4F267F08
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;==============================================
#data 0x02000148

#align4
loc_8c18A980:
#data loc_8c188102
#data 0x8C33C56C

#align4
loc_8c18A988:
#data bank1c.loc_8c1c972C

loc_8c18A98C:
#data loc_8c18852E

loc_8c18A990:
#data loc_8c188306

loc_8c18A994:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0x1F517FF4
#data 0x1F626C73
#data 0x56FB6943
#data 0x55F167F3
#data 0x430BD33F
#data 0x6E036493
#data 0x8B564E11
#data 0xE2019475
#data 0x61C363F2
#data 0x50FC0947
#data 0xEA004100
#data 0x80319D6E
#data 0xD338041A
#data 0x343C5BF2
#data 0x5241142C
#data 0x42086023
#data 0xD035320C
#data 0x42084208
#data 0x312C022E
#data 0x32C262A3
#data 0x141D8D0B

#align4
loc_8c18A9F8:
#data 0x65B3D331
#data 0x64F2430B
#data 0x4E116E03
#data 0x7A018B2F
#data 0x8FF53AC2
#data 0x3BDC

loc_8c18AA0E:
#data 0xD32D
#data 0x430BE500
#data 0xD32C64F2
#data 0x55F166F3
#data 0x6493430B
#data 0x4E116E03
#data 0x68938B23
#data 0xEB004818
#data 0x62B3D327
#data 0x48085AF2
#data 0x32C24800
#data 0x383C8D14
#data 0x9939

loc_8c18AA3E:
#data 0xD324
#data 0x430B6583
#data 0x6E0364F2
#data 0x8B0C4E11
#data 0x65A3D221
#data 0x6483420B
#data 0x89012008
#data 0x6E93A005

#align4
loc_8c18AA5C:
#data 0x3BC27B01
#data 0x3ADC8FED

loc_8c18AA64:
#data 0xEE00

loc_8c18AA66:
#data 0xD317
#data 0x430BE500
#data 0x64F2

loc_8c18AA6E:
#data 0x60E3
#data 0x4F267F0C
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;==============================================

loc_8c18AA84:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov.l r5,@(0x08,r15)
mov 0x01,r5 ; r5 set to 0x01
mov.l @(loc_8c18AAD8,pc),r3 ; r3 set to 0x8C187CA8
mov r4,r11
mov.l r6,@(0x04,r15)
mov r7,r13
mov.l @(0x28,r15),r12
jsr @r3
mov r11,r4
mov r0,r4
cmp/pz r4
bt loc_8c18AADC
bra loc_8c18AB6A
mov r4,r0
#data 0x0148
#data 0xFF100200

#align4
loc_8c18AAB4:
#data loc_8c188102
#data 0x8C33C56C

#align4
loc_8c18AABC:
#data bank1c.loc_8c1c972C

loc_8c18AAC0:
#data loc_8c18852E

loc_8c18AAC4:
#data loc_8c188306

loc_8c18AAC8:
#data loc_8c187E8C
#data 0x8C33CFCC

#align4
loc_8c18AAD0:
#data loc_8c1887C4

loc_8c18AAD4:
#data bank19.loc_8c1988B8

loc_8c18AAD8:
#data loc_8c187CA8


loc_8c18AADC:
cmp/hs r13,r4
bt loc_8c18AAE6
mov.w @(loc_8c18AB7A,pc),r0 ; r0 set to 0xFF04
bra loc_8c18AB6A
nop

loc_8c18AAE6:
mov.l @(loc_8c18AB80,pc),r4 ; r4 set to 0x80000000
and r12,r4 ; r4 ??? bc r12 is ???
tst r4,r4
bt loc_8c18AB02
mov.l r12,@-r15
mov r13,r7
mov.l @(0x28,r15),r3
mov.l r3,@-r15
mov.l @(0x10,r15),r5
mov.l @(0x0C,r15),r6
bsr loc_8c18AB98
mov r11,r4
bra loc_8c18AB6A
add 0x08,r15

loc_8c18ab02:
mov.l @(0x08,r15),r5
mov r15,r7
mov.l @(loc_8c18ab84,pc),r3
mov.l @(0x24,r15),r6
jsr @r3
mov r11,r4
mov r0,r14
cmp/pz r14
bf loc_8c18ab68
mov.w @(loc_8C18AB7C,pc),r4
mov r12,r0
mov.l @(loc_8C18AB88,pc),r3
mul.l r4,r11
mov.l @r15,r2
mov 0x00,r11
mov.b r0,@(0x01,r2) 
mov 0x01,r2
sts macl,r4
mov.l @(loc_8c18ab8c,pc),r0
mov.l @(0x04,r15),r12
add r3,r4
mov.l r2,@(0x30,r4) 
mov.l @(0x04,r4),r1
mov r1,r2
shll2 r1
add r2,r1
mov r11,r2
shll2 r1
cmp/hs r13,r2
shll2 r1
mov.l @(r0,r1),r0
add r13,r0
bt/s loc_8c18ab5e
mov.l r0,@(0x34,r4) 
mov.w @(loc_8C18AB7E,pc),r10

loc_8c18ab48:
mov.l @(loc_8c18ab90,pc),r3
mov r12,r5
jsr @r3
mov.l @r15,r4
mov r0,r14
cmp/pz r14
bf loc_8c18ab60
add 0x01,r11
cmp/hs r13,r11
bf/s loc_8c18ab48
add r10,r12

loc_8c18ab5e:
mov 0x00,r14

loc_8c18ab60:
mov.l @(loc_8c18ab94,pc),r3
mov 0x00,r5
jsr @r3
mov.l @r15,r4

loc_8c18ab68:
mov r14,r0

loc_8c18AB6A:
add 0x0C,r15
lds.l @r15+,pr
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c18AB7A:
#data 0xFF04
loc_8c18ab7c:
#data 0x0148
loc_8c18ab7e:
#data 0x0200

#align4
loc_8c18AB80:
#data 0x80000000

#align4
loc_8c18AB84:
#data loc_8c187F9E
loc_8c18ab88:
#data 0x8C33C56C

#align4
loc_8c18AB8C:
#data bank1c.loc_8c1c972C

loc_8c18AB90:
#data loc_8c18864A

loc_8c18AB94:
#data loc_8c188306

loc_8c18ab98:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov.l r5,@(0x04,r15) 
mov r7,r12
mov.l r6,@(0x08,r15) 
mov r4,r9
mov.l @(0x2C,r15),r6
mov r15,r7
mov.l @(0x04,r15),r5
mov.l @(loc_8c18ac90,pc),r3
jsr @r3
mov r9,r4
mov r0,r14
cmp/pz r14
bf loc_8c18ac72
mov.w @(loc_8C18AC88,pc),r4
mov 0x01,r2
mov.l @r15,r3
mov r12,r1
mul.l r4,r9
mov.l @(0x30,r15),r0
shll r1
mov 0x00,r10
mov.w @(loc_8C18AC8A,pc),r13
mov.b r0,@(0x01,r3) 
sts macl,r4
mov.l @(loc_8C18AC94,pc),r3
mov.l @(0x08,r15),r11
add r3,r4
mov.l r2,@(0x30,r4) 
mov.l @(0x04,r4),r2
mov r2,r0
shll2 r2
add r0,r2
mov.l @(loc_8c18ac98,pc),r0
shll2 r2
shll2 r2
mov.l @(r0,r2),r2
add r2,r1
mov r10,r2
cmp/hs r12,r2
bt/s loc_8c18ac12
mov.l r1,@(0x34,r4) 

loc_8c18abfc:
mov.l @(loc_8c18ac9c,pc),r3
mov r11,r5
jsr @r3
mov.l @r15,r4
mov r0,r14
cmp/pz r14
bf loc_8c18ac6a
add 0x01,r10
cmp/hs r12,r10
bf/s loc_8c18abfc
add r13,r11

loc_8c18ac12:
mov.l @(loc_8c18aca0,pc),r3
mov 0x00,r5
jsr @r3
mov.l @r15,r4
mov.l @(loc_8c18aca4,pc),r3
mov r15,r6
mov.l @(0x04,r15),r5
jsr @r3
mov r9,r4
mov r0,r14
cmp/pz r14
bf loc_8c18ac72
mov r9,r8
shll8 r8
mov 0x00,r11
mov.l @(loc_8C18ACA8,pc),r3
mov r11,r2
mov.l @(0x08,r15),r10
shll2 r8
shll r8
cmp/hs r12,r2
bt/s loc_8c18ac68
add r3,r8
mov.w @(loc_8C18AC8C,pc),r9

loc_8c18ac42:
mov.l @(loc_8c18acac,pc),r3
mov r8,r5
jsr @r3
mov.l @r15,r4
mov r0,r14
cmp/pz r14
bf loc_8c18ac6a
mov.l @(loc_8c18acb0,pc),r2
mov r10,r5
jsr @r2
mov r8,r4
tst r0,r0
bt loc_8c18ac60
bra loc_8c18ac6a
mov r9,r14

loc_8c18ac60:
add 0x01,r11
cmp/hs r12,r11
bf/s loc_8c18ac42
add r13,r10

loc_8c18ac68:
mov 0x00,r14

loc_8c18ac6a:
mov.l @(loc_8c18aca0,pc),r3
mov 0x00,r5
jsr @r3
mov.l @r15,r4

loc_8c18ac72:
mov r14,r0
add 0x0C,r15
lds.l @r15+,pr 
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 
mov.l @r15+,r14
;==============================================

loc_8C18AC88:
#data 0x0148

loc_8C18AC8A:
#data 0x0200

loc_8C18AC8C:
#data 0xFF10
#data 0x0000

#align4
loc_8c18ac90:
#data loc_8c187f9e

loc_8C18AC94:
#data 0x8C33C56C

#align4
loc_8c18ac98:
#data bank1c.loc_8c1c972c

loc_8c18ac9c:
#data loc_8c18864a

loc_8c18aca0:
#data loc_8c188306

loc_8c18aca4:
#data loc_8c187e8c

loc_8C18ACA8:
#data 0x8C33CFCC

#align4
loc_8c18acac:
#data loc_8c1887c4

loc_8c18acb0:
#data bank19.loc_8c1988b8

loc_8c18acb4:
#data 0x2FE6
#data 0x6E43
#data 0x2FD6
#data 0xE040
#data 0x2FC6
#data 0xED00
#data 0x2FB6
#data 0x6C53
#data 0x4F22
#data 0x53EE
#data 0x5BEA
#data 0x0E36
#data 0x63D3
#data 0x33C2
#data 0x891C

loc_8c18acd2:
#data 0xE040
#data 0xD438
#data 0x03EE
#data 0x3340
#data 0x8B04
#data 0x51ED
#data 0x2118
#data 0x8B04
#data 0xA014
#data 0xE000

loc_8c18ace6:
#data 0x53ED
#data 0x2338
#data 0x8B02

loc_8c18acec:
#data 0xD033
#data 0xA00E
#data 0x0009

loc_8c18acf2:
#data 0x05EE
#data 0xBB18
#data 0x64B3
#data 0xE140
#data 0x7D01
#data 0x600D
#data 0x3DC2
#data 0x31EC
#data 0x2102
#data 0x53ED
#data 0x73FF
#data 0x8FE3
#data 0x1E3D

loc_8c18ad0c:
#data 0x50ED

loc_8c18ad0e:
#data 0x4F26
#data 0x6BF6
#data 0x6CF6
#data 0x6DF6
#data 0x000B
#data 0x6EF6

loc_8c18AD1A:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
sts.l pr,@-r15
add 0xF0,r15
mov.l r5,@(0x08,r15)
mov.l r6,@(0x0C,r15)
mov.l r7,@(0x04,r15)
mov.l @(0x28,r15),r13
tst r13,r13
bf/s loc_8c18AD4E
mov r4,r11
mov.l @(loc_8c18ADC0,pc),r3 ; r3 set to 0x8C1894C8
mov.l @(0x08,r15),r5
jsr @r3
mov r11,r4
mov r0,r4
cmp/pz r4
bt loc_8c18AD48
bra loc_8c18ADA4
mov r4,r0

#align4
loc_8c18ad48:
mov.l @(0x04,r15),r3
mov r4,r13
sub r3,r13

loc_8c18ad4e:
mov.l @(loc_8c18adc4,pc),r3
mov r15,r6
mov.l @(0x08,r15),r5
jsr @r3
mov r11,r4
mov r0,r14
cmp/pz r14
bf loc_8c18ada2
mov.w @(loc_8C18ADB4,pc),r4
mov 0x01,r2
mov.l @(loc_8C18ADC8,pc),r3
mov 0x00,r6
mul.l r4,r11
mov.l @(0x0C,r15),r12
sts macl,r4
add r3,r4
mov.l r2,@(0x30,r4) 
mov.l r13,@(0x34,r4) 
mov.l @(0x04,r15),r5
bsr loc_8c18acb4
mov.l @r15,r4
mov 0x00,r11
mov r11,r3
cmp/hs r13,r3
bt loc_8c18ad98
mov.w @(loc_8C18ADB6,pc),r10

loc_8c18ad82:
mov.l @(loc_8c18adcc,pc),r3
mov r12,r5
jsr @r3
mov.l @r15,r4
mov r0,r14
cmp/pz r14
bf loc_8c18ad9a
add 0x01,r11
cmp/hs r13,r11
bf/s loc_8c18ad82
add r10,r12

loc_8c18ad98:
mov 0x00,r14

loc_8c18ad9a:
mov.l @(loc_8c18add0,pc),r3
mov 0x00,r5
jsr @r3
mov.l @r15,r4

loc_8c18ada2:
mov r14,r0

loc_8c18ADA4:
add 0x10,r15
lds.l @r15+,pr
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
loc_8c18adb4:
#data 0x0148
loc_8c18adb6:
#data 0x0200
#data 0x0000FFFA
#data 0xFFFF0000

#align4
loc_8c18ADC0:
#data loc_8c1894C8

loc_8c18ADC4:
#data loc_8c187E8C
loc_8c18adc8:
#data 0x8C33C56C

#align4
loc_8c18ADCC:
#data loc_8c1887C4

loc_8c18ADD0:
#data loc_8c188306
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x7FD04F22
#data 0x66F36B63
#data 0x2F527604
#data 0xB8686D43
#data 0x6C0364D3
#data 0x89024C11
#data 0xA01B906B
#data 0x65C30009
#data 0x64D3BAEE
#data 0x2B5155F4
#data 0xA0077B02
#data 0xBA8DEE00
#data 0x640D64D3
#data 0x2B516543
#data 0x7B027E01
#data 0x3E3353FB
#data 0x65F28BF5
#data 0x64D3BB22
#data 0x8D024011
#data 0xA0016403
#data 0x60C36043
#data 0x4F267F30
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;==============================================

loc_8c18AE3E:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
sts.l pr,@-r15
add 0xE8,r15
mov.w @(loc_8c18AED0,pc),r13 ; r13 set to 0x148
mov r4,r12
mov.l @(loc_8c18AED8,pc),r3 ; r3 set to 0x8C33C56C
mov 0x01,r2 ; r2 set to 0x01
mul.l r13,r12
mov.l r5,@r15
mov r6,r11
mov.l @(0x34,r15),r14
mov r15,r6
mov r7,r9
add 0x04,r6
sts macl,r13
add r3,r13 ; r13 set to 0x8C33C6B4
mov.l r2,@(0x30,r13)  ; r13 ??
mov.l @(loc_8c18AEDC,pc),r2 ; r2 set to 0x8C18769C
mov.l r14,@(0x34,r13)
mov.l @r15,r5
jsr @r2
mov r12,r4
mov r0,r4
cmp/pz r4
bf loc_8c18AECA
mov.b @(0x0A,r15),r0
extu.b r0,r0
cmp/eq 0x01,r0
bt loc_8c18AE88
mov.w @(loc_8c18AED2,pc),r0 ; r0 set to 0xFF0B
bra loc_8c18AEF2
nop

#align4
loc_8c18ae88:
mov.w @(0x08,r15),r0 
mov r0,r4
extu.w r4,r4
cmp/hs r4,r9
bt loc_8c18ae9e
cmp/hi r4,r14
bt loc_8c18ae9e
mov r9,r2
add r14,r2
cmp/hi r4,r2
bf loc_8c18aea4

loc_8c18ae9e:
mov.w @(loc_8C18AED4,pc),r0
bra loc_8c18aef2
nop 

loc_8c18aea4:
mov.l @r15,r5
bsr loc_8c18a468
mov r12,r4
cmp/pz r0
bf/s loc_8c18aeca
mov r0,r4
mov 0x00,r10
mov r10,r2
cmp/hs r14,r2
bt/s loc_8c18aef0
mov r9,r13

loc_8c18aeba:
mov.l @(loc_8c18aee0,pc),r9
mov r13,r5
mov r11,r6
jsr @r9
mov r12,r4
mov r0,r4
cmp/pz r4
bt loc_8c18aee4

loc_8c18AECA:
bra loc_8c18AEF2
mov r4,r0
#data 0xFF05

loc_8c18AED0:
#data 0x0148

loc_8c18AED2:
#data 0xFF0B
loc_8c18aed4:
#data 0x0000FF00

#align4
loc_8c18AED8:
#data 0x8C33C56C

#align4
loc_8c18AEDC:
#data loc_8c18769C

loc_8c18AEE0:
#data loc_8c186850

loc_8c18AEE4:
#data 0x7A01940E
#data 0x3B4C3AE2
#data 0x7D018FE5

loc_8c18AEF0:
#data 0xE000


loc_8c18AEF2:
add 0x18,r15
lds.l @r15+,pr
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
#data 0x00000200


loc_8c18AF08:
mov 0x00,r6 ; r6 set to 0x00
mov.l @(loc_8c18AF14,pc),r7 ; r7 set to 0x00
mov.l @(loc_8c18AF18,pc),r0 ; r0 set to 0x8C0000BC
mov.l @r0,r0 ; r0 ??
jmp @r0
nop

#align4
loc_8c18AF14:
#data 0x00000000

#align4
loc_8c18AF18:
#data 0x8C0000BC


loc_8c18AF1C:
mov 0x00,r6 ; r6 set to 0x00
mov.l @(loc_8c18AF28,pc),r7 ; r7 set to 0x01
mov.l @(loc_8c18AF2C,pc),r0 ; r0 set to 0x8C0000BC
mov.l @r0,r0 ; r0 ??
jmp @r0
nop

#align4
loc_8c18AF28:
#data 0x00000001

#align4
loc_8c18AF2C:
#data 0x8C0000BC


loc_8c18AF30:
mov 0x00,r6 ; r6 set to 0x00
mov.l @(loc_8c18AF3C,pc),r7 ; r7 set to 0x02
mov.l @(loc_8c18AF40,pc),r0 ; r0 set to 0x8C0000BC
mov.l @r0,r0 ; r0 ??
jmp @r0
nop

#align4
loc_8c18AF3C:
#data 0x00000002

#align4
loc_8c18AF40:
#data 0x8C0000BC


loc_8c18AF44:
mov 0x00,r6 ; r6 set to 0x00
mov.l @(loc_8c18AF50,pc),r7 ; r7 set to 0x03
mov.l @(loc_8c18AF54,pc),r0 ; r0 set to 0x8C0000BC
mov.l @r0,r0 ; r0 ??
jmp @r0
nop

#align4
loc_8c18AF50:
#data 0x00000003

#align4
loc_8c18AF54:
#data 0x8C0000BC


loc_8c18AF58:
mov 0x00,r6 ; r6 set to 0x00
mov.l @(loc_8c18AF64,pc),r7 ; r7 set to 0x04
mov.l @(loc_8c18AF68,pc),r0 ; r0 set to 0x8C0000BC
mov.l @r0,r0 ; r0 ??
jmp @r0
nop

#align4
loc_8c18AF64:
#data 0x00000004

#align4
loc_8c18AF68:
#data 0x8C0000BC


loc_8c18AF6C:
mov 0x00,r6 ; r6 set to 0x00
mov.l @(loc_8c18AF78,pc),r7 ; r7 set to 0x05
mov.l @(loc_8c18AF7C,pc),r0 ; r0 set to 0x8C0000BC
mov.l @r0,r0 ; r0 ??
jmp @r0
nop

#align4
loc_8c18AF78:
#data 0x00000005

#align4
loc_8c18AF7C:
#data 0x8C0000BC


loc_8c18AF80:
mov 0x00,r6 ; r6 set to 0x00
mov.l @(loc_8c18AF8C,pc),r7 ; r7 set to 0x06
mov.l @(loc_8c18AF90,pc),r0 ; r0 set to 0x8C0000BC
mov.l @r0,r0 ; r0 ??
jmp @r0
nop

#align4
loc_8c18AF8C:
#data 0x00000006

#align4
loc_8c18AF90:
#data 0x8C0000BC


loc_8c18AF94:
mov 0x00,r6 ; r6 set to 0x00
mov.l @(loc_8c18AFA0,pc),r7 ; r7 set to 0x07
mov.l @(loc_8c18AFA4,pc),r0 ; r0 set to 0x8C0000BC
mov.l @r0,r0 ; r0 ??
jmp @r0
nop

#align4
loc_8c18AFA0:
#data 0x00000007

#align4
loc_8c18AFA4:
#data 0x8C0000BC


loc_8c18AFA8:
mov 0x00,r6 ; r6 set to 0x00
mov.l @(loc_8c18AFB4,pc),r7 ; r7 set to 0x08
mov.l @(loc_8c18AFB8,pc),r0 ; r0 set to 0x8C0000BC
mov.l @r0,r0 ; r0 ??
jmp @r0
nop

#align4
loc_8c18AFB4:
#data 0x00000008

#align4
loc_8c18AFB8:
#data 0x8C0000BC


loc_8c18AFBC:
mov 0x00,r6 ; r6 set to 0x00
mov.l @(loc_8c18AFC8,pc),r7 ; r7 set to 0x09
mov.l @(loc_8c18AFCC,pc),r0 ; r0 set to 0x8C0000BC
mov.l @r0,r0 ; r0 ??
jmp @r0
nop

#align4
loc_8c18AFC8:
#data 0x00000009

#align4
loc_8c18AFCC:
#data 0x8C0000BC
#data 0xD702E600
#data 0x6002D002
#data 0x0009402B
#data 0x0000000A
#data 0x8C0000BC
#data 0xD702E6FF
#data 0x6002D002
#data 0x0009402B
#data 0x00000000
#data 0x8C0000BC
#data 0xD702E6FF
#data 0x6002D002
#data 0x0009402B
#data 0x00000001
#data 0x8C0000BC

#align4
loc_8c18B00C:
#data 0x4F222FE6
#data 0xD3137FF8
#data 0x0009430B
#data 0x6EF3D412
#data 0xE602D312
#data 0x7E042F02
#data 0x65E3430B
#data 0x8B122008
#data 0x941563E0
#data 0x3340633C
#data 0x84E18B03
#data 0x3040600C
#data 0x8909

loc_8c18B03E:
#data 0x63E0
#data 0x2430D40A
#data 0x84E17401
#data 0x2400D309
#data 0x430BD407
#data 0xE502

loc_8c18B052:
#data 0x60F2
#data 0x4F267F08
#data 0x6EF6000B
;==============================================
#data 0x000000FF

#align4
loc_8c18B060:
#data loc_8c18B074
#data 0x0001A05E

#align4
loc_8c18B068:
#data bank19.loc_8c198998
#data 0x8C000070

#align4
loc_8c18B070:
#data loc_8c1840C2


loc_8c18B074:
mov.l @(loc_8c18B080,pc),r7 ; r7 set to 0x00
mov.l @(loc_8c18B084,pc),r0 ; r0 set to 0x8C0000B0
mov.l @r0,r0 ; r0 ??
jmp @r0
nop
#data 0x0000

#align4
loc_8c18B080:
#data 0x00000000

#align4
loc_8c18B084:
#data 0x8C0000B0
#data 0xD003D702
#data 0x402B6002
#data 0x00000009
#data 0x00000002
#data 0x8C0000B0


loc_8c18B09C:
mov.l @(loc_8c18B0A8,pc),r7 ; r7 set to 0x03
mov.l @(loc_8c18B0AC,pc),r0 ; r0 set to 0x8C0000B0
mov.l @r0,r0 ; r0 ??
jmp @r0
nop
#data 0x0000

#align4
loc_8c18B0A8:
#data 0x00000003

#align4
loc_8c18B0AC:
#data 0x8C0000B0

#align4
loc_8c18B0B0:
#data 0x0009A006

#align4
loc_8c18B0B4:
#data 0x63446254
#data 0x89013320
#data 0xE000000B
;==============================================

#align4
loc_8c18B0C0:
#data 0x8DF74615
#data 0xE00176FF
#data 0x0009000B
;==============================================

#align4
loc_8c18b0cc:
cmp/pz r6
bt loc_8c18b0d2
add 0x03,r6

loc_8c18b0d2:
shar r6
bra loc_8c18b0de
shar r6

loc_8c18b0d8:
mov.l @r4+,r3
mov.l r3,@r5
add 0x04,r5

loc_8c18b0de:
cmp/pl r6
bt/s loc_8c18b0d8
add 0xFF,r6
rts 
nop 

loc_8c18B0E8:
bra loc_8c18B0F2
nop

loc_8c18B0EC:
mov.b @r4+,r3
mov.b r3,@r5
add 0x01,r5

loc_8c18B0F2:
cmp/pl r6
bt/s loc_8c18B0EC
add 0xFF,r6
rts
nop
;==============================================

#align4
loc_8c18b0fc:
cmp/pl r5
bf/s loc_8c18b10c
mov 0xFF,r6

loc_8c18b102:
add 0xFF,r5
mov.b r6,@r4
cmp/pl r5
bt/s loc_8c18b102
add 0x01,r4

loc_8c18b10c:
rts 
nop 
;==============================================

loc_8c18b110:
#data 0x2FE6
#data 0x6E53
#data 0x4E08
#data 0x2FC6
#data 0xEC08
#data 0x4E08
#data 0x60C3
#data 0xE700
#data 0x4E08
#data 0xA00B
#data 0x7078

loc_8c18b126:
#data 0x6644
#data 0x65C3

loc_8c18b12a:
#data 0x636E
#data 0x2308
#data 0x8B07
#data 0x75FF
#data 0x4600
#data 0x4515
#data 0x8DF8
#data 0x7701
#data 0x7EFF

loc_8c18b13c:
#data 0x4E15
#data 0x89F2

loc_8c18b140:
#data 0x6CF6
#data 0x6073
#data 0x000B
#data 0x6EF6
;==============================================

loc_8c18b148:
#data 0x6163
#data 0x2FC6
#data 0x4108
#data 0x2FB6
#data 0x4108
#data 0xEB00
#data 0xECFF
#data 0xE708
#data 0xA017
#data 0x4108

loc_8c18b15c:
#data 0x3473
#data 0x8B03
#data 0x25B0
#data 0x7501
#data 0xA010
#data 0x74F8

loc_8c18b168:
#data 0x4415
#data 0x8B0B
#data 0x6073

loc_8c18b16e:
#data 0x4600
#data 0x4415
#data 0x8B01
#data 0xA002
#data 0x74FF

loc_8c18b178:
#data 0xE201
#data 0x262B

loc_8c18b17c:
#data 0x4010
#data 0x8BF6
#data 0xA001
#data 0x2560

loc_8c18b184:
#data 0x25C0

loc_8c18b186:
#data 0x7501

loc_8c18b188:
#data 0x71FF

loc_8c18b18a:
#data 0x4115
#data 0x89E6
#data 0x6BF6
#data 0xE000
#data 0x000B
#data 0x6CF6
;==============================================

loc_8c18b196:
#data 0x2FE6
#data 0xE43C
#data 0x2FD6
#data 0x6D53
#data 0x4F22
#data 0x9E5E
#data 0x7502

loc_8c18b1a4:
#data 0x6354
#data 0x633C
#data 0x33E0
#data 0x8B0D
#data 0x74FF
#data 0x4415
#data 0x89F8
#data 0xD32C
#data 0x65D3
#data 0x430B
#data 0xE43E
#data 0x6403
#data 0xE03E
#data 0x02DD
#data 0x644D
#data 0x622D
#data 0x3240
#data 0x8901

loc_8c18b1c8:
#data 0xA009
#data 0xE000

loc_8c18b1cc:
#data 0x65D3
#data 0xA003
#data 0xE440

loc_8c18b1d2:
#data 0x25E0
#data 0x74FF
#data 0x7501

loc_8c18b1d8:
#data 0x2448
#data 0x8BFA
#data 0xE001

loc_8c18b1de:
#data 0x4F26
#data 0x6DF6
#data 0x000B
#data 0x6EF6
;==============================================

loc_8c18b1e6:
#data 0x2FE6
#data 0x2FD6
#data 0x2FC6
#data 0x2FB6
#data 0x2FA6
#data 0x2F96
#data 0x2F86
#data 0x4F22
#data 0x7FFC
#data 0x6D43
#data 0x5AD3
#data 0xDB1A
#data 0xE640
#data 0x5ED1
#data 0x65A3
#data 0x4B0B
#data 0x64E3
#data 0x88FF
#data 0x8D27
#data 0x6403
#data 0x5CD5
#data 0x64E3
#data 0x56D6
#data 0x7C01
#data 0x4C08
#data 0x4C08
#data 0x4C08
#data 0x65C3
#data 0x4608
#data 0x35AC
#data 0x4608
#data 0x2F52
#data 0x4608
#data 0x4B0B
#data 0x34CC
#data 0x88FF
#data 0x8D15
#data 0x6403
#data 0x55D6
#data 0xBF6C
#data 0x64F2
#data 0x1D04
#data 0x6C03
#data 0x85D1
#data 0x69E3
#data 0x2008
#data 0x8F38
#data 0x7940
#data 0x4C15
#data 0x6ED3
#data 0x8F32
#data 0x7E34

loc_8c18b24e:
#data 0x65E3
#data 0xE640
#data 0x4B0B
#data 0x6493
#data 0x88FF
#data 0x8F08
#data 0x6403

loc_8c18b25c:
#data 0xA02C
#data 0xE0FF
#data 0x00FF
#data 0x0000

loc_8c18b264:
#data 0x89D4
#data 0x8C19

loc_8c18b268:
#data 0x8998
#data 0x8C19

loc_8c18b26c:
#data 0x62E1
#data 0xD494
#data 0x622D
#data 0x3240
#data 0x891D
#data 0xD893
#data 0x65E3
#data 0x480B
#data 0xE43E
#data 0x6403
#data 0xE03E
#data 0x03ED
#data 0x644D
#data 0x633D
#data 0x3340
#data 0x8B0E
#data 0x62E1
#data 0x53D5
#data 0x622D
#data 0x3233
#data 0x8909
#data 0x65E1
#data 0xE640
#data 0x655D
#data 0x7501
#data 0x4508
#data 0x4508
#data 0x4508
#data 0x35AC
#data 0xBF11
#data 0x64E3

loc_8c18b2aa:
#data 0x7CFF
#data 0x4C15
#data 0x8DCE
#data 0x7940

loc_8c18b2b2:
#data 0xA001
#data 0xE000

loc_8c18b2b6:
#data 0xE0FA

loc_8c18b2b8:
#data 0x7F04
#data 0x4F26
#data 0x68F6
#data 0x69F6
#data 0x6AF6
#data 0x6BF6
#data 0x6CF6
#data 0x6DF6
#data 0x000B
#data 0x6EF6
;==============================================

loc_8c18b2cc:
#data 0x2FE6
#data 0x2FD6
#data 0x2FC6
#data 0x2FB6
#data 0x2FA6
#data 0x2F96
#data 0x2F86
#data 0x4F22
#data 0x7FFC
#data 0x6D43
#data 0x85D1
#data 0x2008
#data 0x8F45
#data 0x58D1
#data 0x5ED3
#data 0x6C83
#data 0xDA76
#data 0xE640
#data 0x65E3
#data 0x7E40
#data 0x4A0B
#data 0x6483
#data 0x8840
#data 0x8F35
#data 0x6403
#data 0x59D5
#data 0x7C40
#data 0x4915
#data 0x8F17
#data 0xEB00

loc_8c18b308:
#data 0x62E1
#data 0xD46D
#data 0x622D
#data 0x3240
#data 0x890D
#data 0x65E3
#data 0xBF3F
#data 0x64D3
#data 0x2008
#data 0x8B08
#data 0x65E3
#data 0xE640
#data 0x4A0B
#data 0x64C3
#data 0x8840
#data 0x8F1F
#data 0x6403
#data 0x7B01
#data 0x7C40

loc_8c18b32e:
#data 0x79FF
#data 0x4915
#data 0x8DE9
#data 0x7E40

loc_8c18b336:
#data 0x53D5
#data 0x65E3
#data 0x7301
#data 0x4308
#data 0x4308
#data 0x4308
#data 0x2F32
#data 0x56D6
#data 0xBEFF
#data 0x64B3
#data 0x56D6
#data 0x65E3
#data 0x64F2
#data 0x4608
#data 0x4608
#data 0x4608
#data 0x4A0B
#data 0x348C
#data 0x53D6
#data 0x6403
#data 0x4308
#data 0x4308
#data 0x4308
#data 0x3430
#data 0x8901

loc_8c18b368:
#data 0xA004
#data 0xE0FE

loc_8c18b36c:
#data 0x1DB4
#data 0xA001
#data 0xE000

loc_8c18b372:
#data 0xE0FA

loc_8c18b374:
#data 0x7F04
#data 0x4F26
#data 0x68F6
#data 0x69F6
#data 0x6AF6
#data 0x6BF6
#data 0x6CF6
#data 0x6DF6
#data 0x000B
#data 0x6EF6

loc_8c18B388:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.w @(0x02,r14),r0
tst r0,r0
bf loc_8c18B442
mov r14,r13
mov.l @(0x28,r14),r2
add 0x34,r13
mov r13,r5
add 0x02,r5
mov.w r2,@r13
mov 0x3C,r6 ; r6 set to 0x3C
bsr loc_8c18B0E8
mov.l @(0x30,r14),r4
mov.l @(loc_8c18B4C4,pc),r2 ; r2 set to 0x8C1989D4
mov r13,r5
jsr @r2
mov 0x3E,r4 ; r4 set to 0x3E
mov r0,r4 ; r4 ??? bc r0 is ???
mov 0x3E,r0 ; r0 set to 0x3E
mov.w r4,@(r0,r13)
mov 0x40,r6 ; r6 set to 0x40
mov.l @(0x28,r14),r3
add 0x01,r3
shll2 r3
shll2 r3
shll2 r3
mov.l r3,@r15
mov.l @(0x0C,r14),r5
add r3,r5
bsr loc_8c18B0CC
mov r13,r4
mov.l @(0x10,r14),r3
mov.l @(0x14,r14),r2 ; r2 ??? bc r14 is ???
cmp/ge r2,r3
bf loc_8c18B3DC
bra loc_8c18B444
mov 0xF6,r0

#align4
loc_8c18b3dc:
mov.l @(0x14,r14),r12
mov.l @(0x0C,r14),r5
add 0x01,r12
mov.l @(0x10,r14),r4
shll2 r12
mov.l @(0x18,r14),r6
shll2 r12
shll2 r12
add r12,r5
bsr loc_8c18b148
add 0x01,r4
mov.l @(0x18,r14),r6
mov.l @(0x0C,r14),r5
shll2 r6
mov.l @(0x04,r14),r4
shll2 r6
mov.l @(loc_8c18b4c8,pc),r2
shll2 r6
add r12,r5
jsr @r2
add r12,r4
mov.l @(0x18,r14),r3
mov r0,r4
shll2 r3
shll2 r3
shll2 r3
cmp/eq r3,r4
bf loc_8c18b43a
mov.l @(0x10,r14),r2
mov 0x40,r6
mov r13,r5
add 0x01,r2
shll2 r2
shll2 r2
shll2 r2
mov.l r2,@r15
mov.l @(0x10,r14),r3
mov.l @(loc_8c18b4c8,pc),r2
add 0x01,r3
mov.l r3,@(0x10,r14) 
mov.l @r15,r3
mov.l @(0x04,r14),r4
jsr @r2
add r3,r4
cmp/eq 0x40,r0 
bt/s loc_8c18b43e
mov r0,r4

loc_8c18b43a:
bra loc_8c18b444
mov 0xFE,r0

loc_8c18b43e:
bra loc_8c18b444
mov 0x00,r0

loc_8c18B442:
mov 0xFA,r0 ; r0 set to 0xFFFFFFFA

loc_8c18B444:
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c18B450:
mov.l r14,@-r15
mov.l r13,@-r15
mov r4,r13
sts.l pr,@-r15
mov.w @(0x02,r13),r0
tst r0,r0
bf loc_8c18B49E
mov.l @(0x28,r13),r14
mov 0x3C,r6 ; r6 set to 0x3C
mov.l @(0x0C,r13),r3
add 0x01,r14
mov.l @(0x30,r13),r5
shll2 r14
shll2 r14
shll2 r14
add r3,r14
mov r14,r4
bsr loc_8c18B0E8
add 0x02,r4
mov.w @r14,r3
mov.l @(loc_8c18B4C0,pc),r2 ; r2 set to 0xFFFF
extu.w r3,r3
cmp/eq r2,r3
bt loc_8c18B49A
mov.l @(loc_8c18B4C4,pc),r1 ; r1 set to 0x8C1989D4
mov r14,r5
jsr @r1
mov 0x3E,r4 ; r4 set to 0x3E
mov r0,r4 ; r4 ??? bc r0 is ???
mov 0x3E,r0 ; r0 set to 0x3E
mov.w @(r0,r14),r3
extu.w r4,r4
extu.w r3,r3
cmp/eq r4,r3
bt loc_8c18B49A
bra loc_8c18B4A0
mov 0xFC,r0

loc_8c18B49A:
bra loc_8c18B4A0
mov 0x00,r0

loc_8c18B49E:
mov 0xFA,r0 ; r0 set to 0xFFFFFFFA

loc_8c18B4A0:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c18B4A8:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.l @(0x24,r14),r0
cmp/eq 0x00,r0
bt loc_8c18B4CC
cmp/eq 0x01,r0
bt loc_8c18B4DE
cmp/eq 0x02,r0
bt loc_8c18B4F6
bra loc_8c18B4FE
nop

#align4
loc_8c18B4C0:
#data 0x0000FFFF

#align4
loc_8c18B4C4:
#data bank19.loc_8c1989D4

loc_8c18B4C8:
#data bank19.loc_8c1989AC


loc_8c18B4CC:
bsr loc_8c18B388
mov r14,r4
cmp/eq 0xF6,r0
bf/s loc_8c18B4DA
mov r0,r5
bra loc_8c18B4F0
mov 0x01,r3

loc_8c18B4DA:
bra loc_8c18B500
mov r5,r4

loc_8c18B4DE:
mov.l @(loc_8c18B5D0,pc),r2 ; r2 set to 0x8C1989C0
jsr @r2
mov.l @(0x04,r14),r4
cmp/eq 0xFF,r0
bf/s loc_8c18B4EE
mov r0,r4
bra loc_8c18B500
mov 0xFD,r4

loc_8c18b4ee:
mov 0x02,r3

loc_8c18B4F0:
mov.l r3,@(0x24,r14)
bra loc_8c18B500
mov 0x01,r4

loc_8c18B4F6:
bsr loc_8c18B2CC
mov r14,r4
bra loc_8c18B500
mov r0,r4

loc_8c18b4fe:
mov 0xFE,r4

loc_8c18B500:
lds.l @r15+,pr
mov r4,r0
rts
mov.l @r15+,r14
;==============================================

#align4
loc_8c18B508:
#data 0x2FD62FE6
#data 0x7FF44F22
#data 0x6D43E301
#data 0x8F033D33
#data 0xE1052F52
#data 0x8B013D13

#align4
loc_8c18B520:
#data 0xE0F9A06F

#align4
loc_8c18B524:
#data 0x65F3D32C
#data 0x7504DE2A
#data 0x2E32D22B
#data 0x64D3420B
#data 0xE40063E2
#data 0x23D19148
#data 0x62E253F1
#data 0x53F21231
#data 0x123262E2
#data 0x632362E2
#data 0xE3F15032
#data 0x403C301C
#data 0xE0FA1206
#data 0x632362E2
#data 0x430C5332
#data 0x50066023
#data 0x73FF3308
#data 0x63F21235
#data 0x123362E2
#data 0x134763E2
#data 0xE64062E2
#data 0x63E21248
#data 0x65E2134B
#data 0xD31764E2
#data 0x430B7534
#data 0x88FF5441
#data 0x64038F02
#data 0xE0FFA037

#align4
loc_8c18B594:
#data 0xE60C6DE2
#data 0x7D34D512
#data 0x64D3BD88
#data 0x24486403
#data 0x64E28910
#data 0x02DCE010
#data 0x33206341
#data 0xE0118B0A
#data 0x814100DC
#data 0x854164E2
#data 0x24486403
#data 0x60438912
#data 0x890F8801

#align4
loc_8c18B5C8:
#data 0xE0F8A01B
#data 0x00007FFF

#align4
loc_8c18B5D0:
#data bank19.loc_8c1989C0

loc_8c18B5D4:
#data bank1c.loc_8c1c983C
#data 0x8C342878

#align4
loc_8c18B5DC:
#data bank19.loc_8c198984

loc_8c18B5E0:
#data bank19.loc_8c198998

loc_8c18B5E4:
#data bank1c.loc_8c1c5984

loc_8c18B5E8:
#data 0x64E265E2
#data 0xBD855552
#data 0xBDF85443
#data 0x640364E2
#data 0x89012448
#data 0x6043A001

loc_8c18B600:
#data 0xE000

loc_8c18B602:
#data 0x7F0C
#data 0x6DF64F26
#data 0x6EF6000B
;==============================================

loc_8c18B60C:
mov.l r14,@-r15
mov.l @(loc_8c18B7E4,pc),r14 ; r14 set to 0x8C1C983C
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
mov.l @r14,r12
tst r12,r12
bf/s loc_8c18B622
mov r4,r13
bra loc_8c18B68E
mov 0xF5,r0

loc_8c18B622:
tst r13,r13
bt loc_8c18B630
mov r13,r0
cmp/eq 0x01,r0
bt loc_8c18B630
bra loc_8c18B68E
mov 0xFA,r0

loc_8c18B630:
mov.l @(loc_8c18B7E8,pc),r2 ; r2 set to 0x8C1989C0
jsr @r2
mov.l @(0x04,r12),r4
mov r0,r4
tst r4,r4
bt loc_8c18B640
bra loc_8c18B68E
mov 0xFD,r0

loc_8c18B640:
mov.l @r14,r12
mov 0x10,r6 ; r6 set to 0x10
mov.l @(loc_8c18B7EC,pc),r4 ; r4 set to 0x8C1C5984
add 0x34,r12
bsr loc_8c18B0E8
mov r12,r5
mov.l @r14,r2
mov r13,r0
mov r12,r5
mov 0x12,r6 ; r6 set to 0x12
mov.w r0,@(0x02,r2)
mov 0x11,r0 ; r0 set to 0x11
mov.b r13,@(r0,r12)
mov 0x10,r0 ; r0 set to 0x10
mov.l @r14,r3
mov.b @r3,r2
mov.l @(loc_8c18B7F0,pc),r3 ; r3 set to 0x8C1989AC
mov.b r2,@(r0,r12)
mov.l @r14,r4 ; r4 ??? bc r14 is ???
jsr @r3
mov.l @(0x04,r4),r4
cmp/eq 0x12,r0
bt/s loc_8c18B674
mov r0,r4 ; r4 set to 0x10
bra loc_8c18B68E
mov 0xFE,r0

loc_8c18B674:
mov.l @r14,r5
mov.l @r14,r4
mov.l @(0x08,r5),r5
bsr loc_8c18B0FC
mov.l @(0x0C,r4),r4
bsr loc_8c18B1E6
mov.l @r14,r4
mov r0,r4
tst r4,r4
bt loc_8c18B68C
bra loc_8c18B68E
mov r4,r0

loc_8c18B68C:
mov 0x00,r0 ; r0 set to 0x00

loc_8c18B68E:
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c18B698:
mov.l @(loc_8c18B7E4,pc),r7 ; r7 set to 0x8C1C983C
mov.l @r7,r6
tst r6,r6
bf loc_8c18B6A4
rts
mov 0xF5,r0
;==============================================

loc_8c18B6A4:
mov.l @(0x1C,r6),r2
tst r2,r2
bt loc_8c18B6AE
rts
mov 0xF7,r0
;==============================================

loc_8c18b6ae:
cmp/pz r4
bf loc_8c18b6b8
mov.l @(0x14,r6),r2
cmp/ge r2,r4
bf loc_8c18b6bc

loc_8c18b6b8:
rts 
mov 0xFB,r0
;==============================================

loc_8c18b6bc:
mov 0x01,r2
mov.l r2,@(0x1C,r6) 
mov 0x02,r2
mov.l @r7,r3
mov 0x00,r0
mov.l r2,@(0x20,r3) 
mov.l @r7,r3
mov.l r4,@(0x28,r3) 
mov.l @r7,r2
mov.l r5,@(0x30,r2) 
rts 
nop 

loc_8c18B6D4:
mov.l @(loc_8c18B7E4,pc),r7 ; r7 set to 0x8C1C983C
mov.l @r7,r6
tst r6,r6
bf loc_8c18B6E0
rts
mov 0xF5,r0
;==============================================

loc_8c18B6E0:
mov.l @(0x1C,r6),r2
tst r2,r2
bt loc_8c18B6EA
rts
mov 0xF7,r0
;==============================================

loc_8c18b6ea:
cmp/pz r4
bf loc_8c18b6f4
mov.l @(0x14,r6),r2
cmp/ge r2,r4
bf loc_8c18b6f8

loc_8c18b6f4:
rts 
mov 0xFB,r0
;==============================================

loc_8c18b6f8:
mov 0x02,r2
mov.l r2,@(0x1C,r6) 
mov.l @r7,r3
mov.l r2,@(0x20,r3) 
mov.l @r7,r3
mov.l r4,@(0x28,r3) 
mov 0x00,r4
mov.l @r7,r2
mov r4,r0
mov.l r5,@(0x30,r2) 
mov.l @r7,r3
mov.l r4,@(0x24,r3) 
rts 
nop 

loc_8c18B714:
mov.l r14,@-r15
mov.l @(loc_8c18B7E4,pc),r14 ; r14 set to 0x8C1C983C
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @r14,r4
tst r4,r4
bf loc_8c18B726
bra loc_8c18B78E
mov 0x00,r0

loc_8c18B726:
mov.l @(0x1C,r4),r0
cmp/eq 0x00,r0
bt/s loc_8c18B78A
mov 0x00,r13 ; r13 set to 0x00
cmp/eq 0x01,r0
bt loc_8c18B73A
cmp/eq 0x02,r0
bt loc_8c18B75C
bra loc_8c18B784
nop

loc_8c18B73A:
bsr loc_8c18B450
nop
mov.l @r14,r2
mov r0,r4
tst r4,r4
bt/s loc_8c18B752
mov.l r13,@(0x1C,r2)
mov.l @r14,r2
mov 0x03,r3 ; r3 set to 0x03
mov.l r3,@(0x20,r2)
bra loc_8c18B77E
nop

loc_8c18B752:
mov.l @r14,r1
mov 0x01,r3 ; r3 set to 0x01
mov.l r3,@(0x20,r1)
bra loc_8c18B77E
nop

loc_8c18B75C:
bsr loc_8c18B4A8
nop
cmp/eq 0x01,r0
bt/s loc_8c18B78A
mov r0,r4
mov.l @r14,r3
tst r4,r4
bt/s loc_8c18B778
mov.l r13,@(0x1C,r3)
mov.l @r14,r3
mov 0x03,r2 ; r2 set to 0x03
mov.l r2,@(0x20,r3)
bra loc_8c18B77E
nop

#align4
loc_8c18b778:
mov.l @r14,r1
mov 0x01,r3
mov.l r3,@(0x20,r1) 

loc_8c18B77E:
mov.l @r14,r2
bra loc_8c18B78A
mov.l r4,@(0x2C,r2)

#align4
loc_8c18b784:
mov.l r13,@(0x1C,r4) 
mov.l @r14,r2
mov.l r13,@(0x20,r2) 

loc_8c18B78A:
mov.l @r14,r0
mov.l @(0x20,r0),r0

loc_8c18B78E:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
#data 0xD313
#data 0x24486432
#data 0x000B8B01
#data 0x504BE0F5
#data 0x0009000B
;==============================================

loc_8c18B7A8:
mov.l @(loc_8c18B7E4,pc),r2 ; r2 set to 0x8C1C983C
mov 0x00,r3 ; r3 set to 0x00
rts
mov.l r3,@r2
;==============================================
#data 0x2FE6D10C
#data 0x6E124F22
#data 0x8B032EE8
#data 0xE0F54F26
#data 0x6EF6000B
;==============================================
#data 0x420BD208
#data 0x88FF54E1
#data 0x64038F02
#data 0xE4FDA004
#data 0xBD79D303
#data 0x64036432
#data 0x4F266043
#data 0x6EF6000B
;==============================================

#align4
loc_8c18B7E4:
#data bank1c.loc_8c1c983C

loc_8c18B7E8:
#data bank19.loc_8c1989C0

loc_8c18B7EC:
#data bank1c.loc_8c1c5984

loc_8c18B7F0:
#data bank19.loc_8c1989AC
#data 0x6432D305
#data 0x8B012448
#data 0xE0F5000B
;==============================================
#data 0x53445045
#data 0x000B3038
#data 0x00000009

#align4
loc_8c18B80C:
#data bank1c.loc_8c1c983C


loc_8c18B810:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
add 0xC4,r15
mov.l @(loc_8c18B8F4,pc),r3 ; r3 set to 0x8C18B508
mov r4,r14
jsr @r3
mov 0x02,r4 ; r4 set to 0x02
cmp/eq 0xF8,r0
bf/s loc_8c18B83A
mov r0,r4 ; r4 ??? bc r0 is ???
mov.l @(loc_8c18B8F8,pc),r3 ; r3 set to 0x8C18B60C
jsr @r3
mov 0x00,r4 ; r4 set to 0x00
mov r0,r4 ; r4 ??? bc r0 is ???
tst r4,r4
bf loc_8c18B8DE
bra loc_8c18B83E
nop

loc_8c18B83A:
tst r4,r4
bf loc_8c18B8DE

loc_8c18B83E:
mov.l @(loc_8c18B8FC,pc),r2 ; r2 set to 0x8C18B698
mov r15,r12
mov r12,r5
jsr @r2
mov 0x05,r4 ; r4 set to 0x05
mov r0,r4 ; r4 ??? bc r0 is ???
tst r4,r4
bf loc_8c18B8DE
mov.l @(loc_8c18B900,pc),r13 ; r13 set to 0x8C18B714

loc_8c18B850:
jsr @r13
nop
cmp/eq 0x02,r0
bt/s loc_8c18B850
mov r0,r4
mov r4,r0
cmp/eq 0x01,r0
bf loc_8c18B8DE
mov.l @(loc_8c18B904,pc),r3 ; r3 set to 0x8C18B09C, r3 set to 0x8C18B09C
jsr @r3
nop
tst r14,r14
mov r0,r4
bf/s loc_8c18B884
add 0x10,r4
mov r12,r6
bra loc_8c18B87C
mov 0x08,r5

loc_8c18B874:
mov.b @r6+,r3
add 0xFF,r5
mov.b r3,@r4
add 0x01,r4

loc_8c18B87C:
tst r5,r5
bf loc_8c18B874
bra loc_8c18B8E2
nop

loc_8c18B884:
mov r12,r5
mov 0x00,r6 ; r6 set to 0x00
mov 0x05,r11 ; r11 set to 0x05
add 0x07,r5
add 0x07,r4
bra loc_8c18B8BC
mov 0x01,r7

loc_8c18B892:
#data 0x63E3
#data 0x890D2378
#data 0x61406063
#data 0x8F098804
#data 0x74FF2510
#data 0x74FF6340
#data 0x63402534
#data 0x253474FF
#data 0x25346340

#align4
loc_8c18B8B4:
#data 0x760174FF
#data 0x75FF4E21

#align4
loc_8c18b8bc:
cmp/ge r11,r6
bf loc_8c18b892
mov.l @(loc_8c18b908,pc),r2
mov r12,r5
jsr @r2
mov 0x05,r4
mov r0,r4
tst r4,r4
bf loc_8c18b8de

loc_8c18b8ce:
jsr @r13
nop 
cmp/eq 0x02,r0 
bt/s loc_8c18b8ce
mov r0,r4
mov r4,r0
cmp/eq 0x01,r0 
bt loc_8c18b8e2

loc_8c18B8DE:
bra loc_8c18B8E4
mov 0xFF,r0

loc_8c18b8e2:
mov 0x00,r0

loc_8c18B8E4:
add 0x3C,r15
lds.l @r15+,pr
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
#data 0x0000

#align4
loc_8c18B8F4:
#data loc_8c18B508

loc_8c18B8F8:
#data loc_8c18B60C

loc_8c18B8FC:
#data loc_8c18B698

loc_8c18B900:
#data loc_8c18B714

loc_8c18B904:
#data loc_8c18B09C

loc_8c18B908:
#data loc_8c18B6D4


loc_8c18B90C:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8c18BA0C,pc),r3 ; r3 set to 0x8C1859B2
jsr @r3
mov.l r4,@r15
mov r0,r4
mov.l @r4,r0
mov.w @(loc_8c18BA08,pc),r3 ; r3 set to 0x100
tst r3,r0
bt loc_8c18B928
add 0x04,r15
lds.l @r15+,pr
rts
mov 0x01,r0
;==============================================

loc_8c18B928:
mov 0x00,r0 ; r0 set to 0x00
add 0x04,r15
lds.l @r15+,pr
rts
nop
;==============================================
#data 0x2FE6
#data 0x2FC62FD6
#data 0x7FE04F22
#data 0x1F426D73
#data 0x2F621F51
#data 0x54F2BFE2
#data 0x8B012008
#data 0xE0FEA045
#data 0x6EF3E300
#data 0x7E0C6233
#data 0x6C336433
#data 0x653332D2
#data 0x1E3466E3
#data 0x1E321E33
#data 0x2E321E31
#data 0xE7018D0C
#data 0x750151F1
#data 0x35D26273
#data 0x1F117101
#data 0x631071FF
#data 0x423C633C
#data 0x242B8FF4
#data 0x4319634D
#data 0x76012630
#data 0x2640E300
#data 0x64C333D2
#data 0x76018D0A
#data 0x740163F2
#data 0x730134D2
#data 0x73FF2F32
#data 0x26206230
#data 0x76018FF6
#data 0x740564D3
#data 0x95274409
#data 0xE7002F42
#data 0x63432F46
#data 0x6673D313
#data 0x2FC62FE6
#data 0x54F5430B
#data 0x44116403
#data 0x7F0C8D02
#data 0xE0FFA001
#data 0x7F20E000
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;==============================================

loc_8c18B9E6:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xBC,r15
mov r5,r14
mov.l r4,@r15
bsr loc_8c18B90C
mov r6,r10
tst r0,r0
bf loc_8c18BA14
bra loc_8c18BABC
mov 0xFE,r0

loc_8c18BA08:
#data 0x0100
#data 0x0000

#align4
loc_8c18BA0C:
#data loc_8c1859B2

loc_8c18BA10:
#data loc_8c185B38

loc_8c18ba14:
mov 0x00,r12
mov.w @(loc_8C18BB22,pc),r13
mov r12,r3
mov r15,r7
cmp/hs r10,r3
add 0x04,r7
mov r12,r11
mov 0xFE,r8
bt/s loc_8c18baa2
mov 0x02,r9

loc_8c18ba28:
mov.b @r14,r2
mov 0x01,r1
mov.b @(0x01,r14),r0 
extu.b r2,r2
shll2 r2
mov r0,r6
and r6,r1
shll2 r2
extu.b r6,r3
or r1,r2
tst r13,r3
mov.b r2,@r7
mov.b @(0x02,r14),r0 
mov r0,r4
bf/s loc_8c18ba58
add 0x01,r7
exts.b r4,r0
cmp/eq 0x01,r0 
bf loc_8c18ba50
mov r9,r4

loc_8c18ba50:
exts.b r4,r0
cmp/eq 0xFF,r0 
bf loc_8c18ba58
mov r8,r4

loc_8c18ba58:
exts.b r4,r5
cmp/pl r5
bf loc_8c18ba68
shll2 r5
mov 0x70,r4
shll2 r5
bra loc_8c18ba76
and r5,r4

loc_8c18ba68:
cmp/pz r5
bt loc_8c18ba74
mov 0x07,r4
neg r5,r0
bra loc_8c18ba76
and r0,r4

loc_8c18ba74:
mov r12,r4

loc_8c18ba76:
mov.w @(loc_8C18BB22,pc),r2
and r6,r2
or r2,r4
mov.b r4,@r7
add 0x01,r7
mov.b @(0x03,r14),r0 
extu.b r6,r6
tst r13,r6
mov.b r0,@r7
add 0x01,r7
mov r7,r3
bt/s loc_8c18ba96
add 0x01,r7
mov.b @(0x04,r14),r0 
bra loc_8c18ba98
extu.b r0,r2

loc_8c18ba96:
mov 0x00,r2

loc_8c18ba98:
add 0x01,r11
mov.b r2,@r3
cmp/hs r10,r11
bf/s loc_8c18ba28
add 0x08,r14

loc_8c18baa2:
mov.w @(loc_8C18BB24,pc),r5
mov r15,r6
mov.l @(loc_8c18bb28,pc),r3
mov r10,r7
add 0x04,r6
jsr @r3
mov.l @r15,r4
mov r0,r4
cmp/pz r4
bt loc_8c18baba
bra loc_8c18babc
mov 0xFF,r0

loc_8c18baba:
mov 0x00,r0

loc_8c18BABC:
add 0x44,r15
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
#data 0x7FF04F22
#data 0x1F41D315
#data 0x430B2F52
#data 0xD21454F1
#data 0x650364F3
#data 0x7408420B
#data 0x44116403
#data 0x7F108903
#data 0x000B4F26
#data 0x53F2E0FE
#data 0x223062F2
#data 0x62F284FC
#data 0xE0008021
#data 0x4F267F10
#data 0x0009000B
;==============================================

#align4
loc_8c18BB0C:
#data 0x93096272
#data 0x8D042238
#data 0x846464F2
#data 0x8808600C
#data 0x890A

loc_8c18BB1E:
#data 0xA059
#data 0xE4FE
loc_8c18bb22:
#data 0x0088
loc_8c18bb24:
#data 0x00000100

#align4
loc_8c18BB28:
#data loc_8c185BE4

loc_8c18BB2C:
#data loc_8c1859B2

loc_8c18BB30:
#data loc_8c185EBE

loc_8c18BB34:
#data 0x556253F1
#data 0x8D072338
#data 0x60507508
#data 0x600C53F1
#data 0x40094009
#data 0x2302C90F

#align4
loc_8c18BB4C:
#data 0x67038451
#data 0x667C6050
#data 0x4009600C
#data 0x2400C903
#data 0xC9036050
#data 0x90538041
#data 0x89012068
#data 0xE001A001

loc_8c18BB6C:
#data 0xE000

loc_8c18BB6E:
#data 0x8042
#data 0x2068E040
#data 0xA0018901
#data 0xE001

loc_8c18BB7A:
#data 0xE000

#align4
loc_8c18BB7C:
#data 0xE0208043
#data 0x89012068
#data 0xE001A001

loc_8c18BB88:
#data 0xE000

loc_8c18BB8A:
#data 0x8044
#data 0x2068E010
#data 0xA0018901
#data 0xE001

loc_8c18BB96:
#data 0xE000

#align4
loc_8c18BB98:
#data 0xE00F8045
#data 0x62532069
#data 0xE7008800
#data 0x72028D06
#data 0x89078801
#data 0x8909880F
#data 0x0009A00B

#align4
loc_8c18BBB4:
#data 0x80466020
#data 0x8453A00A

#align4
loc_8c18BBBC:
#data 0x80466020
#data 0x6020A006

#align4
loc_8c18BBC4:
#data 0xA0036073
#data 0x8046

loc_8c18BBCA:
#data 0x9520
#data 0x80466053

#align4
loc_8c18BBD0:
#data 0x64738047

#align4
loc_8c18BBD4:
#data 0x6043000B
;==============================================
#data 0xEE1C2FE6
#data 0xD30C04E7
#data 0x0E1A4F22
#data 0x52E33E3C
#data 0x890C2228
#data 0x2F26E200
#data 0x2F1651E1
#data 0x0009BF8A
#data 0x4F267F08
#data 0x640355E2
#data 0x432B53E3
#data 0x4F266EF6
#data 0x6EF6000B
;==============================================
#data 0x00FF0080
#data 0x8C3428EC

#align4
loc_8c18BC14:
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0xEE1C7FF4
#data 0x0DE76D43
#data 0xE200D33C
#data 0x3E3C0E1A
#data 0x51E42E22
#data 0x890F2118
#data 0x2F1661F3
#data 0x720862F3
#data 0xBF652F26
#data 0x7F0864D3
#data 0x66F357E2
#data 0x650353E4
#data 0x6C037604
#data 0x64F2430B

#align4
loc_8c18BC54:
#data 0x8B0E2CC8
#data 0x53E5E018
#data 0x622C02EC
#data 0x8B083236
#data 0x955651E5
#data 0x7101D32D
#data 0x6613D72B
#data 0x430B1E15
#data 0x64D3

loc_8c18BC76:
#data 0x7F0C
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x2FE66EF6
#data 0x2FD6EE1C
#data 0x6C432FC6
#data 0xD3220CE7
#data 0x0E1A4F22
#data 0x62E23E3C
#data 0x8B182228
#data 0xE401ED00
#data 0x1ED12E42
#data 0x1ED31E62
#data 0x65E31E54
#data 0x75181E45
#data 0x64C3BF0E
#data 0x44116403
#data 0x952C8B0C
#data 0xD218E601
#data 0x420BD716
#data 0x640364C3
#data 0x89024411
#data 0xA0012ED2
#data 0x64D3E4FF
#data 0x60434F26
#data 0x6DF66CF6
#data 0x6EF6000B
;==============================================
#data 0x4F222FE6
#data 0xD00F7FFC
#data 0xD30F6E43
#data 0x430B04EC
#data 0xD30D644C
#data 0x430B2F02
#data 0x650364E3
#data 0x880260E3
#data 0x88088907
#data 0x880E8905
#data 0x88148903
#data 0xA00D8901
#data 0xA00C0009
#data 0x0100E401
#data 0x8C3428EC

#align4
loc_8c18BD1C:
#data loc_8c18BC14

loc_8c18BD20:
#data loc_8c1862DC

loc_8c18BD24:
#data bank1c.loc_8c1c5A20

loc_8c18BD28:
#data loc_8c1859B2
#data 0x60F2E400
#data 0x73126353
#data 0x7012D106
#data 0x004C6230
#data 0x600C622C
#data 0x302C4008
#data 0x600C001C
#data 0x4F267F04
#data 0x6EF6000B
;==============================================

#align4
loc_8c18BD50:
#data bank1c.loc_8c1c5A38


loc_8c18BD54:
mov.l @(loc_8c18BE58,pc),r3 ; r3 set to 0x8C18BDE6
mov.l @(loc_8c18BE54,pc),r4 ; r4 set to 0x8C342C10
mov.l r3,@r4 ; r4 ??
mov.l @(loc_8c18BE5C,pc),r2 ; r2 set to 0x8C18BF30
mov.l r2,@(0x04,r4)
mov.l @(loc_8c18BE60,pc),r3 ; r3 set to 0x8C18BFA8
mov.l r3,@(0x08,r4)
rts
mov r4,r0
;==============================================

loc_8c18BD66:
mov.l @(loc_8c18BE64,pc),r3 ; r3 set to 0x8C19F0BA
jmp @r3
nop

loc_8c18BD6C:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l @(loc_8c18BE68,pc),r2 ; r2 set to 0x8C342C20
sts.l pr,@-r15
mov.b @r2,r3
tst r3,r3
bt loc_8c18BDBA
mov.l @(loc_8c18BE6C,pc),r4 ; r4 set to 0x8C1C9848
mov.l @(loc_8c18BE74,pc),r13 ; r13 set to 0x8C1A0B50
mov.l @r4,r3
mov.l @(loc_8c18BE70,pc),r12 ; r12 set to 0x8C19FF44
mov.l @(loc_8c18BE78,pc),r14 ; r14 set to 0x8C199284
add 0x11,r3
bra loc_8c18BD98
mov.l r3,@r4

loc_8c18BD8C:
jsr @r14
nop
jsr @r13
nop
jsr @r12
nop

loc_8c18BD98:
bsr loc_8c18BDC4
nop
exts.b r0,r0
tst r0,r0
bf loc_8c18BD8C
mov.l @(loc_8c18BE7C,pc),r3 ; r3 set to 0x8C1A21DE, r3 set to 0x8C1A21DE
jsr @r3
nop
mov.l @(loc_8c18BE80,pc),r2 ; r2 set to 0x8C1A024E, r2 set to 0x8C1A024E
jsr @r2
nop
lds.l @r15+,pr
mov.l @(loc_8c18BE84,pc),r3 ; r3 set to 0x8C1A21FE, r3 set to 0x8C1A21FE
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8c18BDBA:
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c18BDC4:
mov.l @(loc_8c18BE6C,pc),r5 ; r5 set to 0x8C1C9848
sts.l pr,@-r15
mov.l @(loc_8c18BE88,pc),r3 ; r3 set to 0x8C1291DC
mov.l @r5,r1
jsr @r3
mov 0x0A,r0 ; r0 set to 0x0A
tst r0,r0
bt loc_8c18BDDE
mov.l @r5,r3 ; r3 ??
mov 0x01,r4 ; r4 set to 0x01
add 0xF6,r3
bra loc_8c18BDE0
mov.l r3,@r5

loc_8c18BDDE:
mov 0x00,r4 ; r4 set to 0x00

loc_8c18BDE0:
lds.l @r15+,pr
rts
mov r4,r0
;==============================================

loc_8c18BDE6:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
mov.l @(loc_8c18BE68,pc),r3 ; r3 set to 0x8C342C20
mov.b r13,@r3 ; r3 ??
add 0xF8,r15
mov.l @(loc_8c18BE8C,pc),r1 ; r1 set to 0x8C342B98
mov.l @r14,r2
mov.l r2,@r1 ; r1 ??? bc r2 is ???
mov.l @(loc_8c18BE90,pc),r2 ; r2 set to 0x8C1A0416
jsr @r2
mov.l @(0x18,r14),r4
mov.l @(loc_8c18BE94,pc),r3 ; r3 set to 0x8C1A0220
jsr @r3
mov.l @(0x18,r14),r4
mov.l @(0x14,r14),r2 ; r2 ??? bc r14 is ???
mov.l @(loc_8c18BE98,pc),r11 ; r11 set to 0x8C342B94
mov r2,r3 ; r3 ??? bc r2 is ???
tst r3,r3
bf/s loc_8c18BE1C
mov.l r2,@r11 ; r11 ??? bc r2 is ???
bra loc_8c18BF22
mov 0x04,r0

loc_8c18BE1C:
mov.l @(loc_8c18BE9C,pc),r3 ; r3 set to 0x8C1A00FC
jsr @r3
nop
mov.l @(loc_8c18BEA4,pc),r2 ; r2 set to 0x8C342BA4
mov 0x04,r6 ; r6 set to 0x04
mov.l @(loc_8c18BEA0,pc),r12 ; r12 set to 0x8C342BA0
mov r2,r3 ; r3 set to 0x8C342BA4
mov.l r2,@r12 ; r12 ??
mov.l @(loc_8c18BEA8,pc),r2 ; r2 set to 0x8C347A30
mov.l r2,@(0x04,r3)  ; r3 ??
mov.l @(loc_8c18BEAC,pc),r4 ; r4 set to 0x8C342C1C
mov.l @(loc_8c18BEB0,pc),r3 ; r3 set to 0x8C129728
jsr @r3
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_8c18BEB8,pc),r2 ; r2 set to 0x8C342C00
mov.l @(loc_8c18BEB4,pc),r14 ; r14 set to 0x8C342B9C
mov.l r2,@r14 ; r14 ??
mov.l @r12,r5 ; r5 ??? bc r12 is ???
mov.l @(loc_8c18BEBC,pc),r3 ; r3 set to 0x8C1A13F0
jsr @r3
mov r2,r4 ; r4 set to 0x8C342C00
mov.l @r14,r2 ; r2 ??? bc r14 is ???
tst r2,r2
bt loc_8c18BEC4
mov.l @(loc_8c18BEC0,pc),r2 ; r2 set to 0x8C342B90
mov.l @r14,r3 ; r3 ??? bc r14 is ???
bra loc_8c18BECA
mov.l r3,@r2

#align4
loc_8c18BE54:
#data 0x8C342C10

#align4
loc_8c18BE58:
#data loc_8c18BDE6

loc_8c18BE5C:
#data loc_8c18BF30

loc_8c18BE60:
#data loc_8c18BFA8

loc_8c18BE64:
#data bank19.loc_8c19F0BA

loc_8c18BE68:
#data 0x8C342C20

#align4
loc_8c18BE6C:
#data bank1c.loc_8c1c9848

loc_8c18BE70:
#data bank19.loc_8c19FF44

loc_8c18BE74:
#data bank1a.loc_8c1a0B50

loc_8c18BE78:
#data bank19.loc_8c199284

loc_8c18BE7C:
#data bank1a.loc_8c1a21DE

loc_8c18BE80:
#data bank1a.loc_8c1a024E

loc_8c18BE84:
#data bank1a.loc_8c1a21FE

loc_8c18BE88:
#data bank12.loc_8c1291DC

loc_8c18BE8C:
#data 0x8C342B98

#align4
loc_8c18BE90:
#data bank1a.loc_8c1a0416

loc_8c18BE94:
#data bank1a.loc_8c1a0220

loc_8c18BE98:
#data 0x8C342B94

#align4
loc_8c18BE9C:
#data bank1a.loc_8c1a00FC

loc_8c18BEA0:
#data 0x8C342BA0

#align4
loc_8c18BEA4:
#data 0x8C342BA4

#align4
loc_8c18BEA8:
#data 0x8C347A30

#align4
loc_8c18BEAC:
#data 0x8C342C1C

#align4
loc_8c18BEB0:
#data bank12.loc_8c129728

loc_8c18BEB4:
#data 0x8C342B9C

#align4
loc_8c18BEB8:
#data 0x8C342C00

#align4
loc_8c18BEBC:
#data bank1a.loc_8c1a13F0

loc_8c18BEC0:
#data 0x8C342B90


loc_8c18BEC4:
mov.w @(loc_8c18BF6E,pc),r0 ; r0 set to 0x200
bra loc_8c18BF22
nop

loc_8c18BECA:
mov.l @(loc_8c18BF70,pc),r3 ; r3 set to 0x8C1A13F8
jsr @r3
mov.l @r14,r4
mov.l @(loc_8c18BF74,pc),r2 ; r2 set to 0x8C1A00A4
jsr @r2
nop
exts.b r0,r0
tst r0,r0
bf loc_8c18BEE8
mov.l r13,@r12
mov.l r13,@r14
mov.l @(loc_8c18BF78,pc),r2 ; r2 set to 0x8C342B90
mov.l r13,@r2 ; r2 ??? bc r13 is ???
bra loc_8c18BF22
mov 0x40,r0

#align4
loc_8c18bee8:
mov.l @(loc_8c18bf7c,pc),r3
jsr @r3
nop 
mov.l @(loc_8c18bf80,pc),r2
jsr @r2
nop 
bsr loc_8c18c14e
nop 
mov.l @r14,r2
mov 0x41,r0
mov.l @(0x0C,r2),r3
mov.b r13,@(r0,r3) 
mov.l @r14,r3
mov 0x42,r0
mov.l @(0x0C,r3),r2
mov.b r13,@(r0,r2) 
mov 0xFF,r3
mov.l r3,@r15
mov.l @r11,r2
mov.l @(0x10,r2),r3
jsr @r3
mov r15,r4
mov.l @(loc_8c18bf88,pc),r2
mov.l @(loc_8c18bf84,pc),r5
jsr @r2
mov 0x01,r4
mov.l @(loc_8c18bf8c,pc),r3
mov 0x00,r0
mov.b r13,@r3

loc_8c18BF22:
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c18BF30:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8c18BF90,pc),r3 ; r3 set to 0x8C1A024A
jsr @r3
nop
mov.l @(loc_8c18BF94,pc),r2 ; r2 set to 0x8C342BA0
mov 0x00,r14 ; r14 set to 0x00
mov r14,r5 ; r5 set to 0x00
mov.l r14,@r2 ; r2 ??
mov.l @(loc_8c18BF98,pc),r3 ; r3 set to 0x8C342B9C
mov.l r14,@r3 ; r3 ??
mov.l @(loc_8c18BF78,pc),r1 ; r1 set to 0x8C342B90
mov.l r14,@r1 ; r1 ??
mov.l @(loc_8c18BF88,pc),r2 ; r2 set to 0x8C1A0294
jsr @r2
mov r14,r4 ; r4 set to 0x00
mov.l @(loc_8c18BF9C,pc),r3 ; r3 set to 0x8C1A025C
mov r14,r5 ; r5 set to 0x00
jsr @r3
mov r14,r4 ; r4 set to 0x00
mov.l @(loc_8c18BFA0,pc),r2 ; r2 set to 0x8C1A00EE
jsr @r2
nop
bsr loc_8c18C194
nop
lds.l @r15+,pr
mov.l @(loc_8c18BFA4,pc),r2 ; r2 set to 0x8C342C20
mov 0x01,r0 ; r0 set to 0x01
mov.b r14,@r2 ; r2 ??
rts
mov.l @r15+,r14
;==============================================

loc_8c18BF6E:
#data 0x0200

#align4
loc_8c18BF70:
#data bank1a.loc_8c1a13F8

loc_8c18BF74:
#data bank1a.loc_8c1a00A4

loc_8c18BF78:
#data 0x8C342B90

#align4
loc_8c18BF7C:
#data bank1a.loc_8c1a21C4

loc_8c18BF80:
#data bank1a.loc_8c1a0244

loc_8c18BF84:
#data loc_8c18BD6C

loc_8c18BF88:
#data bank1a.loc_8c1a0294

loc_8c18BF8C:
#data bank1c.loc_8c1c984C

loc_8c18BF90:
#data bank1a.loc_8c1a024A

loc_8c18BF94:
#data 0x8C342BA0

#align4
loc_8c18BF98:
#data 0x8C342B9C

#align4
loc_8c18BF9C:
#data bank1a.loc_8c1a025C

loc_8c18BFA0:
#data bank1a.loc_8c1a00EE

loc_8c18BFA4:
#data 0x8C342C20

#align4
loc_8c18BFA8:
#data 0x4F222FE6
#data 0x00096043
#data 0xC8808403
#data 0x00096043
#data 0xC8408403
#data 0x00096043
#data 0xC8208403
#data 0x6E438D0B
#data 0x6130D389
#data 0x89062118
#data 0x6102D088
#data 0x420B5213
#data 0xB0670009
#data 0x6403

loc_8c18BFDE:
#data 0x60E3
#data 0x84030009
#data 0x60E3C810
#data 0x84030009
#data 0xC808D582
#data 0x000960E3
#data 0xC8048403
#data 0xE4018D04
#data 0xE0586152
#data 0x03445312

#align4
loc_8c18C004:
#data 0x000960E3
#data 0xC8028403
#data 0x61528903
#data 0x5312E059
#data 0x0344

loc_8c18C016:
#data 0x60E3
#data 0x84030009
#data 0x8901C801
#data 0x2240D273

#align4
loc_8c18C024:
#data 0x000B4F26
#data 0x6EF6
;==============================================

loc_8c18C02A:
#data 0xD174
#data 0x23386312
#data 0x63128B02
#data 0x21327301

#align4
loc_8c18C038:
#data 0x21185141
#data 0xD16C8903
#data 0x22286210
#data 0x8B07

loc_8c18C046:
#data 0xD16E
#data 0xE200E301
#data 0xD06D2122
#data 0x000B2032
#data 0x6013
;==============================================

loc_8c18C056:
#data 0xD367
#data 0x60026032
#data 0x0009402B
#data 0x0009000B
;==============================================

#align4
loc_8c18C064:
#data 0x6322D268
#data 0x8B022338
#data 0x73016322
#data 0x2232

loc_8c18C072:
#data 0xD25F
#data 0x21186120
#data 0xD3648B06
#data 0x2342E400
#data 0x2142D163
#data 0x6033000B
;==============================================

#align4
loc_8c18C088:
#data 0x6032D35A
#data 0x402B5001
#data 0x000B0009
#data 0x0009
;==============================================

loc_8c18C096:
mov.l @(loc_8c18C1F0,pc),r2 ; r2 set to 0x8C342C20
mov.b @r2,r3
tst r3,r3
bt loc_8c18C0A8
mov.l @(loc_8c18C1F4,pc),r2 ; r2 set to 0x8C342B94
mov.l @r2,r3
mov.l @(0x08,r3),r1
jmp @r1
nop

loc_8c18C0A8:
rts
nop
;==============================================

#align4
loc_8c18C0AC:
#data 0x6E432FE6
#data 0xE5002FD6
#data 0x4F222FC6
#data 0x64F37FF0
#data 0x63437408
#data 0x23501441
#data 0x63E0DD53
#data 0xDC4B62D0
#data 0x89163320
#data 0x624364F3
#data 0x22501441
#data 0x62E065F3
#data 0x62E02D20
#data 0x232053F1
#data 0x430BD34C
#data 0x62F364C2
#data 0x60207208
#data 0x750865F3
#data 0x2200CB40
#data 0x430BD348
#data 0x64C2

loc_8c18C0FE:
#data 0x84E1
#data 0x84D16303
#data 0x89103300
#data 0x80D184E1
#data 0xD34484E1
#data 0x430B6503
#data 0x62F364C2
#data 0x60207208
#data 0x750865F3
#data 0x2200CB80
#data 0x430BD33D
#data 0x64C2

loc_8c18C12A:
#data 0x85E1
#data 0x85D16303
#data 0x89063300
#data 0x81D185E1
#data 0xD33A85E1
#data 0x430B6503
#data 0x64C2

loc_8c18C142:
#data 0x7F10
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;==============================================

loc_8c18C14E:
#data 0xD236
#data 0x63204F22
#data 0x7FEC2338
#data 0xD3348B18
#data 0x430B64F3
#data 0x81F47404
#data 0xD532660D
#data 0x430BD332
#data 0xD23254F1
#data 0x420B64F3
#data 0xD432740C
#data 0xD63065F3
#data 0x750CB026
#data 0x420BD230
#data 0xD52D64F3
#data 0x64F2B0A5

#align4
loc_8c18C18C:
#data 0x4F267F14
#data 0x0009000B
;==============================================

loc_8c18C194:
sts.l pr,@-r15
mov.l @(loc_8c18C22C,pc),r3 ; r3 set to 0x8C199706
add 0xF4,r15
mov r15,r4
jsr @r3
add 0x04,r4
mov.w r0,@(0x08,r15)
extu.w r0,r6
mov.l @(loc_8c18C230,pc),r4 ; r4 set to 0x8C342C2E
mov.l @(loc_8c18C234,pc),r3 ; r3 set to 0x8C129668
jsr @r3
mov.l @(0x04,r15),r5
mov.l @(loc_8c18C238,pc),r2 ; r2 set to 0x8C1A0384
mov.l @(loc_8c18C240,pc),r4 ; r4 set to 0x8C342C26
jsr @r2
nop
mov.l @(loc_8c18C244,pc),r3 ; r3 set to 0x8C19970E
jsr @r3
mov r15,r4 ; r4 ??? bc r15 is ???
mov.l @(loc_8c18C234,pc),r3 ; r3 set to 0x8C129668
mov 0x04,r6 ; r6 set to 0x04
mov.l @(loc_8c18C23C,pc),r4 ; r4 set to 0x8C342C21
jsr @r3
mov.l @r15,r5
add 0x0C,r15
lds.l @r15+,pr
rts
nop
;==============================================

#align4
loc_8c18C1CC:
#data 0xEEFF2FE6
#data 0x7FFC8446
#data 0x84566303
#data 0x80F33038
#data 0x4011600E
#data 0xE7008D32
#data 0x703C84F3
#data 0x60E380F3
#data 0x80F2A02F

#align4
loc_8c18C1F0:
#data 0x8C342C20

#align4
loc_8c18C1F4:
#data 0x8C342B94
#data 0x8C342B90
#data 0x8C343408
#data 0x8C343400
#data 0x8C343404
#data 0x8C343414
#data 0x8C34340C
#data 0x8C343410
#data 0x8C342C1C

#align4
loc_8c18C218:
#data bank1a.loc_8c1a1BEA

loc_8c18C21C:
#data bank1a.loc_8c1a2020

loc_8c18C220:
#data bank1a.loc_8c1a1D3A

loc_8c18C224:
#data bank1a.loc_8c1a1DB2

loc_8c18C228:
#data bank1c.loc_8c1c984C

loc_8c18C22C:
#data bank19.loc_8c199706

loc_8c18C230:
#data 0x8C342C2E

#align4
loc_8c18C234:
#data bank12.loc_8c129668

loc_8c18C238:
#data bank1a.loc_8c1a0384

loc_8c18C23C:
#data 0x8C342C21

#align4
loc_8c18C240:
#data 0x8C342C26

#align4
loc_8c18C244:
#data bank19.loc_8c19970E

loc_8c18C248:
#data 0x00096073
#data 0x80F2

loc_8c18C24E:
#data 0x8455
#data 0x324CE205
#data 0x84F26303
#data 0x303C6220
#data 0x80F23028
#data 0x4011600E
#data 0x84F28905
#data 0x80F2703C
#data 0xA00360E3
#data 0x80F1

loc_8c18C272:
#data 0x6073
#data 0x80F10009

#align4
loc_8c18C278:
#data 0xE2048454
#data 0x6303324C
#data 0x622084F1
#data 0x3028303C
#data 0x600E80F1
#data 0x89044011
#data 0x701884F1
#data 0xA00180F1
#data 0x2FE0

loc_8c18C29A:
#data 0x2F70

#align4
loc_8c18C29C:
#data 0x845363F0
#data 0x6203303C
#data 0x32088443
#data 0x84F32F20
#data 0x84636303
#data 0x8063303C
#data 0x630384F2
#data 0x303C8462
#data 0x84F18062
#data 0x84616303
#data 0x8061303C
#data 0x63F06260
#data 0x323C7F04
#data 0x000B2620
#data 0x6EF6
;==============================================

loc_8c18C2D6:
#data 0x6150
#data 0x84512410
#data 0x84528041
#data 0x84538042
#data 0x8043000B
;==============================================

loc_8c18C2E8:
sts.l pr,@-r15
mov.l @(loc_8c18C308,pc),r3 ; r3 set to 0x8C1A278C
mov.l @(loc_8c18C304,pc),r4 ; r4 set to 0x8C342BA4
jsr @r3
nop
mov.l @(loc_8c18C310,pc),r2 ; r2 set to 0x8C1A13E2
mov.l @(loc_8c18C30C,pc),r4 ; r4 set to 0x8C342C00
jmp @r2
lds.l @r15+,pr

loc_8c18C2FA:
mov.l @(loc_8c18C314,pc),r3 ; r3 set to 0x8C1A281C
mov.l @(loc_8c18C304,pc),r4 ; r4 set to 0x8C342BA4
jmp @r3
nop
#data 0x0000

#align4
loc_8c18C304:
#data 0x8C342BA4

#align4
loc_8c18C308:
#data bank1a.loc_8c1a278C

loc_8c18C30C:
#data 0x8C342C00

#align4
loc_8c18C310:
#data bank1a.loc_8c1a13E2

loc_8c18C314:
#data bank1a.loc_8c1a281C
#data 0x00000000
#data 0x00000000


loc_8c18C320:
mov.l @(loc_8c18C340,pc),r3 ; r3 set to 0xA05F8000
add r3,r4
mov.l r5,@r4
rts
mov 0x01,r0
;==============================================

loc_8c18C32A:
mov.l @(loc_8c18C340,pc),r0 ; r0 set to 0xA05F8000
rts
mov.l @(r0,r4),r0
;==============================================
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c18C340:
#data 0xA05F8000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c18C360:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0x6B437FF8
#data 0xE40263B3
#data 0x23486D53
#data 0x8D016C63
#data 0x6E43EE00

#align4
loc_8c18C384:
#data 0xD826D328
#data 0xD9266032
#data 0x8F108801
#data 0x2BA8EA01
#data 0x65D38906
#data 0xE70066C3
#data 0x64E3480B
#data 0x0009A005

#align4
loc_8c18C3A4:
#data 0x66C365D3
#data 0x490BE700
#data 0x64E3

loc_8c18C3AE:
#data 0xA028
#data 0x6403

loc_8c18C3B2:
#data 0xD11E
#data 0x750465F3
#data 0x64F3410B
#data 0x53F162F2
#data 0x890F3232
#data 0x89062BA8
#data 0x66C365D3
#data 0x480BE701
#data 0xA00564E3
#data 0x0009

loc_8c18C3D6:
#data 0x65D3
#data 0xE70166C3
#data 0x64E3490B

#align4
loc_8c18C3E0:
#data 0x6403A00F

#align4
loc_8c18C3E4:
#data 0x89062BA8
#data 0x66C365D3
#data 0x480BE700
#data 0xA00564E3
#data 0x0009

loc_8c18C3F6:
#data 0x65D3
#data 0xE70066C3
#data 0x64E3490B

loc_8c18C400:
#data 0x6403

loc_8c18C402:
#data 0x6043
#data 0x4F267F08
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;==============================================
#data 0x00090009
#data 0x00090009

#align4
loc_8c18C420:
#data bank1a.loc_8c1a873E

loc_8c18C424:
#data bank1a.loc_8c1a860E

loc_8c18C428:
#data bank1c.loc_8c1c9B20

loc_8c18C42C:
#data bank1a.loc_8c1a8C00
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c18C440:
sts.l pr,@-r15
add 0xE4,r15
mov.l @(loc_8c18C5C0,pc),r2 ; r2 set to 0x8C1A8A60
mov.l r4,@(0x04,r15)
mov r15,r4
mov.l r6,@r15
jsr @r2
add 0x08,r4
mov.l @(0x04,r15),r0
tst 0x01,r0
bt loc_8c18C478
mov 0x14,r3 ; r3 set to 0x14
mov r15,r2 ; r2 ??? bc r15 is ???
sub r3,r15
add 0x08,r2
mov.l @r2,r3 ; r3 ??? bc r2 is ???
mov.l @(0x04,r2),r1
mov.l r3,@r15
mov.l r1,@(0x04,r15)
mov.l @(0x08,r2),r3
mov.l @(0x0C,r2),r1
mov.l r3,@(0x08,r15)
mov.l r1,@(0x0C,r15)
mov.l @(0x10,r2),r3
mov.l r3,@(0x10,r15)
mov.l @(0x14,r15),r5
bra loc_8c18C498
mov 0x01,r4

loc_8c18C478:
mov 0x14,r2 ; r2 set to 0x14
mov r15,r3
sub r2,r15
add 0x08,r3
mov.l @r3,r2 ; r2 ??? bc r3 is ???
mov 0x00,r4 ; r4 set to 0x00
mov.l @(0x04,r3),r1
mov.l r2,@r15
mov.l r1,@(0x04,r15)
mov.l @(0x08,r3),r2
mov.l @(0x0C,r3),r1
mov.l r2,@(0x08,r15)
mov.l r1,@(0x0C,r15)
mov.l @(0x10,r3),r2
mov.l r2,@(0x10,r15)
mov.l @(0x14,r15),r5

loc_8c18C498:
bsr loc_8c18C4A4
nop
add 0x30,r15
lds.l @r15+,pr
rts
nop
;==============================================

#align4
loc_8c18c4a4:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov.l @(loc_8c18c5c4,pc),r3
mov r4,r8
mov 0x00,r13
mov r15,r12
mov.l r5,@(0x08,r15) 
mov r13,r14
mov.l @r3,r4
tst r4,r4
bt/s loc_8c18c50a
add 0x2C,r12
mov.l @(loc_8C18C5C8,pc),r7

loc_8c18c4cc:
mov.w @r4,r3
mov.l @r12,r2
extu.w r3,r3
and r7,r3
cmp/eq r2,r3
bf loc_8c18c500
mov.l @(0x10,r12),r6
mov 0x00,r2
cmp/hs r6,r2
bt/s loc_8c18c500
mov r13,r5

loc_8c18c4e2:
mov r4,r3
mov r5,r1
add 0x0C,r3
shll2 r1
add r3,r1
mov.l @r1,r2
tst r2,r2
bf loc_8c18c4fa
mov r5,r11
mov r4,r14
mov r13,r4
mov r6,r5

loc_8c18c4fa:
add 0x01,r5
cmp/hs r6,r5
bf loc_8c18c4e2

loc_8c18c500:
tst r14,r14
bf loc_8c18c506
mov.l @(0x04,r4),r4

loc_8c18c506:
tst r4,r4
bf loc_8c18c4cc

loc_8c18c50a:
tst r14,r14
bt loc_8c18c512
bra loc_8c18c610
nop 

loc_8c18c512:
bsr loc_8c18c64a
nop 
mov r0,r14
tst r14,r14
bf loc_8c18c520
bra loc_8c18c60c
nop 

loc_8c18c520:
mov r14,r4
add 0x0C,r4

loc_8c18c524:
mov r14,r3
mov.l r13,@r4
add 0x4C,r3
add 0x04,r4
cmp/hs r3,r4
bf loc_8c18c524
mov.l @(loc_8c18c5c4,pc),r4
mov r13,r11
bsr loc_8c18c68c
mov r14,r5
mov.w @r14,r2
mov.l @r12,r3
mov.l @(loc_8c18c5d0,pc),r10
or r3,r2
mov.l @(loc_8c18c5d4,pc),r3
mov.l @(loc_8c18c5cc,pc),r9
mov.w r2,@r14
mov.l @r3,r0
cmp/eq 0x01,r0 
bf/s loc_8c18c572
mov.l @(0x0C,r12),r13
tst r8,r8
bt loc_8c18c562
mov r14,r6
mov r13,r5
add 0x08,r6
mov 0x00,r7
jsr @r9
mov 0x04,r4
bra loc_8c18c56e
nop 

loc_8c18c562:
mov r14,r6
mov r13,r5
add 0x08,r6
mov 0x00,r7
jsr @r10
mov 0x04,r4

loc_8c18c56e:
bra loc_8c18c602
mov r0,r4

loc_8c18c572:
mov.l @(loc_8c18c5d8,pc),r1
mov r15,r5
add 0x04,r5
jsr @r1
mov r15,r4
mov.l @r15,r2
mov.l @(0x04,r15),r3
cmp/hs r3,r2
bt loc_8c18c5e0
tst r8,r8
bt loc_8c18c598
mov r14,r6
mov r13,r5
add 0x08,r6
mov 0x01,r7
jsr @r9
mov 0x04,r4
bra loc_8c18c5a4
nop 

loc_8c18c598:
mov r14,r6
mov r13,r5
add 0x08,r6
mov 0x01,r7
jsr @r10
mov 0x04,r4

loc_8c18c5a4:
bra loc_8c18c602
mov r0,r4
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009

loc_8c18c5c0:
#data 0x8A60
#data 0x8C1A

#align4
loc_8c18c5c4:
#data bank1c.loc_8c1c9b64

loc_8C18C5C8:
#data 0x0000F000

#align4
loc_8c18c5cc:
#data bank1a.loc_8c1a873e

loc_8c18c5d0:
#data bank1a.loc_8c1a860e

loc_8c18c5d4:
#data bank1c.loc_8c1c9b20

loc_8c18c5d8:
#data bank1a.loc_8c1a8c00
#data 0x0009
#data 0x0009


loc_8c18c5e0:
tst r8,r8
bt loc_8c18c5f4
mov r14,r6
mov r13,r5
add 0x08,r6
mov 0x00,r7
jsr @r9
mov 0x04,r4
bra loc_8c18c600
nop 

loc_8c18c5f4:
mov r14,r6
mov r13,r5
add 0x08,r6
mov 0x00,r7
jsr @r10
mov 0x04,r4

loc_8c18c600:
mov r0,r4

loc_8c18c602:
tst r4,r4
bt loc_8c18c610
mov.l @(loc_8c18c6a0,pc),r3
jsr @r3
mov r14,r4

loc_8c18c60c:
bra loc_8c18c636
mov 0x03,r0

loc_8c18c610:
mov.l @(0x04,r12),r3
mov.l @(0x08,r14),r0
shlr2 r3
mov.l @(0x08,r15),r2
mul.l r3,r11
shll2 r11
sts macl,r3
shll2 r3
add r0,r3
mov.l r3,@r2
mov r14,r3
mov.l @(0x08,r15),r2
add 0x0C,r3
add r3,r11
mov.l r2,@r11
mov.w @r14,r0
or 0x02,r0 
mov.w r0,@r14
mov 0x00,r0

loc_8c18c636:
add 0x0C,r15
lds.l @r15+,pr 
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 
mov.l @r15+,r14
;==============================================

loc_8c18c64a:
mov.l @(loc_8c18c6a4,pc),r4
mov 0x00,r5
mov.l r14,@-r15
mov r5,r3
mov.l @(0x0C,r4),r14
mov 0x01,r7
cmp/hs r14,r3
bt/s loc_8c18c686
mov 0x4C,r6

loc_8c18c65c:
mul.l r6,r5
mov 0x48,r0
mov.l @(r0,r4),r3
sts macl,r1
add r3,r1
mov.w @r1,r2
extu.w r2,r2
tst r7,r2
bf loc_8c18c680
mul.l r6,r5
mov.l @(r0,r4),r2
sts macl,r14
add r14,r2
mov.w r7,@r2
mov.l @(r0,r4),r0
add r14,r0
rts 
mov.l @r15+,r14
;==============================================

loc_8c18c680:
add 0x01,r5
cmp/hs r14,r5
bf loc_8c18c65c

loc_8c18c686:
mov 0x00,r0
rts 
mov.l @r15+,r14
;==============================================

loc_8c18c68c:
mov.l @r4,r3
tst r3,r3
bf loc_8c18c696
bra loc_8c18c698
mov 0x00,r3

loc_8c18c696:
mov.l @r4,r3

loc_8c18c698:
mov.l r3,@(0x04,r5) 
rts 
mov.l r5,@r4
;==============================================
#data 0x0009

#align4
loc_8c18c6a0:
#data bank1a.loc_8c1a8b88

loc_8c18c6a4:
#data bank1c.loc_8c1c9b20
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000

loc_8c18C6C0:
mov.l r14,@-r15
mov r4,r0
sts.l pr,@-r15
mov.l @(loc_8c18C724,pc),r14 ; r14 set to 0x8C18C320
cmp/eq 0x01,r0
bf loc_8c18C6E2
mov.l @(loc_8c18C728,pc),r2 ; r2 set to 0x8C343450
mov 0xFE,r3 ; r3 set to 0xFFFFFFFE
mov.l @r2,r5
and r3,r5
jsr @r14
mov 0x44,r4 ; r4 set to 0x44
mov.l @(loc_8c18C72C,pc),r3 ; r3 set to 0x8C34348C
mov.l @r3,r0
or 0x08,r0
bra loc_8c18C6F2
mov r0,r5

loc_8c18C6E2:
mov.l @(loc_8c18C728,pc),r2 ; r2 set to 0x8C343450
mov 0xFE,r3 ; r3 set to 0xFFFFFFFE
mov.l @r2,r5
and r3,r5
jsr @r14
mov 0x44,r4 ; r4 set to 0x44
mov.l @(loc_8c18C72C,pc),r3 ; r3 set to 0x8C34348C
mov.l @r3,r5

loc_8c18C6F2:
mov.w @(loc_8c18C720,pc),r4 ; r4 set to 0xE8, r4 set to 0xE8
jsr @r14
nop
mov.l @(loc_8c18C728,pc),r2 ; r2 set to 0x8C343450, r2 set to 0x8C343450
mov.l @r2,r5
jsr @r14
mov 0x44,r4 ; r4 set to 0x44, r4 set to 0x44
lds.l @r15+,pr
mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
rts
mov.l @r15+,r14
;==============================================
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c18C720:
#data 0x00E8
#data 0x0000

#align4
loc_8c18C724:
#data loc_8c18C320

loc_8c18C728:
#data 0x8C343450

#align4
loc_8c18C72C:
#data 0x8C34348C
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c18C740:
add 0xFC,r15
stc sr, r0
mov.w @(loc_8c18C7A0,pc),r3 ; r3 set to 0xFF0F
mov.l @(loc_8c18C7A4,pc),r7 ; r7 set to 0x8C343894
shlr2 r0
shlr2 r0
and 0x0F,r0
mov.l r0,@r15
stc sr, r0
and r3,r0
or 0xF0,r0
ldc r0, sr
mov r4,r0
mov r7,r2 ; r2 set to 0x8C343894
shll2 r0
mov r7,r3 ; r3 set to 0x8C343894
add 0x30,r2 ; r2 set to 0x8C3438C4
shll2 r0
add r0,r2 ; r2 ??? bc r0 is ???
add 0x30,r3 ; r3 set to 0x8C3438C4
mov.l r5,@r2
mov r7,r2 ; r2 set to 0x8C343894
add r0,r3 ; r3 ??? bc r0 is ???
add 0x30,r2 ; r2 set to 0x8C3438C4
mov.l r6,@(0x0C,r3)
mov 0x00,r3 ; r3 set to 0x00
add r0,r2 ; r2 ??? bc r0 is ???
mov.l r3,@(0x04,r2)
mov r7,r2 ; r2 set to 0x8C343894
add 0x30,r2 ; r2 set to 0x8C3438C4
add r2,r0
mov.w @(loc_8c18C7A0,pc),r2 ; r2 set to 0xFF0F
mov.l r4,@(0x08,r0)
mov.l @r15,r0
stc sr, r3
and 0x0F,r0
shll2 r0
and r2,r3 ; r3 ??
shll2 r0
or r3,r0
ldc r0, sr
mov 0x00,r0 ; r0 set to 0x00
rts
add 0x04,r15
;==============================================
#data 0x00090009
#data 0x00090009

loc_8c18C7A0:
#data 0xFF0F
#data 0x0000

#align4
loc_8c18C7A4:
#data 0x8C343894
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c18C7C0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r6,r12
tst r12,r12
mov r4,r9
mov r5,r10
bf/s loc_8c18C7E4
mov r7,r14
mov.l @(loc_8c18C860,pc),r0 ; r0 set to 0xEEEE
bra loc_8c18C8FA
nop

loc_8c18C7E4:
stc sr, r0
mov 0x1F,r3 ; r3 set to 0x1F
tst r9,r3
shlr2 r0
shlr2 r0
and 0x0F,r0
bt/s loc_8c18C7F8
mov.l r0,@r15
bra loc_8c18C8E4
nop

loc_8c18C7F8:
mov 0x1F,r1 ; r1 set to 0x1F
tst r10,r1
bt loc_8c18C802
bra loc_8c18C8E4
nop

loc_8c18C802:
tst r0,r0
bt loc_8c18C80A
bra loc_8c18C8E4
nop

loc_8c18C80A:
mov.l @(loc_8c18C864,pc),r3 ; r3 set to 0x8C18F380
jsr @r3
nop
tst r0,r0
bf loc_8c18C818
bra loc_8c18C8E4
nop

loc_8c18C818:
mov 0xE0,r11 ; r11 set to 0xFFFFFFE0
and r12,r11 ; r11 ??? bc r12 is ???
tst r11,r11
bt loc_8c18C8A4
mov.l @(loc_8c18C86C,pc),r2 ; r2 set to 0x8C18DFA0
mov.l @(loc_8c18C868,pc),r8 ; r8 set to 0x8C18DA80
jsr @r2
nop
tst r0,r0
bf loc_8c18C83A

loc_8c18C82C:
jsr @r8
mov 0x01,r4 ; r4 set to 0x01, r4 set to 0x01
tst r0,r0
bt/s loc_8c18C82C
mov r0,r13
bra loc_8c18C880
nop

loc_8c18C83A:
jsr @r8
mov 0x01,r4 ; r4 set to 0x01
tst r0,r0
bf/s loc_8c18C880
mov r0,r13
mov.l @(loc_8c18C870,pc),r4 ; r4 set to 0xA4000000
mov r12,r6
mov.l @(loc_8c18C874,pc),r2 ; r2 set to 0x8C17A6E0
mov r10,r5
jsr @r2
add r9,r4 ; r4 ??? bc r9 is ???
tst r14,r14
bt loc_8c18C8F8
jsr @r14
mov 0x00,r4 ; r4 set to 0x00
bra loc_8c18C8F8
nop
#data 0x00090009

#align4
loc_8c18C860:
#data 0x0000EEEE

#align4
loc_8c18C864:
#data loc_8c18F380

loc_8c18C868:
#data loc_8c18DA80

loc_8c18C86C:
#data loc_8c18DFA0

loc_8c18C870:
#data 0xA4000000

#align4
loc_8c18C874:
#data bank17.loc_8c17A6E0
#data 0x00090009
#data 0x00090009

#align4
loc_8c18c880:
mov.l @(loc_8c18c924,pc),r2
mov r9,r5
mov r11,r7
mov r10,r6
jsr @r2
mov r13,r4
tst r14,r14
bt loc_8c18c898
mov.l @(loc_8c18c928,pc),r2
mov r14,r5
jsr @r2
mov r13,r4

loc_8c18c898:
mov.l @(loc_8c18c92c,pc),r3
jsr @r3
mov r13,r4
mov.l @(loc_8C18C930,pc),r2
mov r0,r13
mov.l r0,@r2

loc_8c18c8a4:
mov 0x1F,r6
and r12,r6
tst r6,r6
bt loc_8c18c8bc
mov.l @(loc_8C18C934,pc),r3
mov r9,r4
mov.l @(loc_8c18c938,pc),r2
mov r10,r5
add r11,r5
add r11,r4
jsr @r2
add r3,r4

loc_8c18c8bc:
tst r14,r14
bf loc_8c18c8f8
mov.l @(loc_8c18c93c,pc),r2
jsr @r2
nop 
tst r0,r0
bf loc_8c18c8f8
mov.l @(loc_8c18c940,pc),r2
jsr @r2
nop 
tst r0,r0
bf loc_8c18c8f8
mov.w @(loc_8C18C920,pc),r14
mov.l @(loc_8c18c944,pc),r12

loc_8c18c8d8:
jsr @r12
mov r13,r4
cmp/eq r14,r0
bf loc_8c18c8d8
bra loc_8c18c8f8
nop 

loc_8c18c8e4:
#data 0xD413
#data 0x66C3
#data 0xD313
#data 0x65A3
#data 0x430B
#data 0x349C
#data 0x2EE8
#data 0x8901
#data 0x4E0B
#data 0xE400

loc_8c18C8F8:
mov 0x00,r0 ; r0 set to 0x00

loc_8c18C8FA:
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
loc_8c18c920:
#data 0x00000101

#align4
loc_8c18C924:
#data loc_8c18FEE0

loc_8c18C928:
#data loc_8c18FD60

loc_8c18C92C:
#data loc_8c18FC20
loc_8c18c930:
#data 0x8C343B18
loc_8c18c934:
#data 0xA4000000

#align4
loc_8c18C938:
#data bank17.loc_8c17A6E0

loc_8c18C93C:
#data loc_8c18DFA0

loc_8c18C940:
#data loc_8c18F380

loc_8c18C944:
#data loc_8c18F3C0
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c18C960:
#data 0x7FE44F22
#data 0x65F3D337
#data 0xE6182F42
#data 0x7504D436
#data 0xD3361F31
#data 0x1F431F42
#data 0x1F451F44
#data 0x430B1F46
#data 0x7F1C64F2
#data 0x000B4F26
#data 0xE018
;==============================================

loc_8c18C98A:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
mov.w @(loc_8c18CA40,pc),r0 ; r0 set to 0xFC58
add r0,r15
mov r4,r3
add 0x18,r3
mov.l r3,@r15
mov r4,r13
mov.l @(0x04,r13),r2
mov 0x00,r12 ; r12 set to 0x00
mov.l @(0x08,r13),r3
mov r12,r7 ; r7 set to 0x00
mov.w @(loc_8c18CA42,pc),r9 ; r9 set to 0x108
mul.l r3,r2
mov.l @(loc_8c18CA48,pc),r10 ; r10 set to 0x80000000
mov r12,r2 ; r2 set to 0x00
add r15,r9 ; r9 ??? bc r15 is ???
sts macl,r1
mov.l r1,@(0x0C,r15)
mov.l @(0x0C,r13),r3
cmp/hs r3,r2
bt/s loc_8c18CA76
mov 0x54,r11 ; r11 set to 0x54

loc_8c18C9C4:
mul.l r11,r7 ; r7 ??
mov.l @r15,r0 ; r0 ??? bc r15 is ???
mov r7,r3
shll2 r3
mov r12,r6 ; r6 set to 0x00
mov r0,r2 ; r2 ??? bc r0 is ???
add 0x30,r2
shll r3
sts macl,r14
add r2,r3
mov.l @r3,r1
mov.l @(loc_8c18CA50,pc),r3 ; r3 set to 0x7F000000
add r9,r14
mov r1,r2
mov r14,r4
and r3,r2
mov r4,r5
mov.l r1,@(0x08,r15)
add 0x18,r5
mov.l r2,@r4
mov r7,r2
shll2 r2
mov.l r12,@(0x04,r15)
shll r2
mov.l r2,@(0x10,r15)

loc_8c18C9F6:
mov.l @(0x08,r15),r0
neg r6,r3 ; r3 ??
mov.l @(0x10,r15),r2
mov 0x03,r8 ; r8 set to 0x03
shld r3, r0
mov.l @r15,r3
and r0,r8 ; r8 ??? bc r0 is ???
mov.l @(loc_8c18CA54,pc),r0 ; r0 set to 0x8C1C5A7C
mov r3,r1
add 0x30,r1
add r2,r1
mov.l @(0x04,r15),r3
mov.l @(0x04,r1),r2
mov r5,r4
tst r8,r8
add r3,r2
mov r8,r3
mov.l r2,@(0x04,r4)
shll2 r3
mov.l @(r0,r3),r2
shll2 r2
mov.l r2,@(0x08,r4)
mov.l @(0x0C,r15),r3
mov.l @(0x04,r15),r1
mul.l r3,r2
sts macl,r3
add r3,r1
bf/s loc_8c18CA60
mov.l r1,@(0x04,r15)
bra loc_8c18CA62
mov.l r10,@r4
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c18CA40:
#data 0xFC58

loc_8c18CA42:
#data 0x0108
#data 0x10000000

#align4
loc_8c18CA48:
#data 0x80000000

#align4
loc_8c18CA4C:
#data bank1a.loc_8c1a4E20

loc_8c18CA50:
#data 0x7F000000

#align4
loc_8c18CA54:
#data bank1c.loc_8c1c5A7C
#data 0x00090009
#data 0x00090009

loc_8c18ca60:
mov.l r12,@r4

loc_8c18ca62:
mov r14,r3
add 0x54,r3
add 0x0C,r5
cmp/hs r3,r5
bf/s loc_8c18c9f6
add 0x04,r6
mov.l @(0x0C,r13),r3
add 0x01,r7
cmp/hs r3,r7
bf loc_8c18c9c4

loc_8c18ca76:
mov.l @r15,r1
mov.l @(loc_8C18CB60,pc),r2
mov.l @(0x0C,r1),r3
mov.l r3,@(0x14,r15) 
mov.l @r2,r0
tst 0x80,r0 
bt loc_8c18ca90
mov.l @r15,r4
bsr loc_8c18c960
mov.l @(0x0C,r4),r4
mov.l @(0x14,r15),r2
add r0,r2
mov.l r2,@(0x14,r15) 

loc_8c18ca90:
mov.l @(0x04,r13),r3
mov 0x00,r1
mov r12,r8
mov r15,r14
mov.l r3,@(0x34,r15) 
mov.l @(0x08,r13),r2
mov.l r2,@(0x38,r15) 
mov.l @(0x0C,r15),r3
add 0xFF,r3
mov.l r3,@(0x24,r15) 
mov.l @(0x0C,r15),r2
cmp/hs r2,r1
bf/s loc_8c18cab0
add 0x48,r14
bra loc_8c18ccbc
nop 

loc_8c18cab0:
mov 0x40,r0
mov.l r8,@(0x28,r15) 
mov.l r12,@(0x3C,r15) 
mov.l r12,@(r0,r15) 
mov.l @(0x24,r15),r3
cmp/eq r3,r8
bf loc_8c18caca
mov 0x40,r0
mov r15,r1
mov.l @(r0,r15),r0
add 0x40,r1
or 0x01,r0 
mov.l r0,@r1

loc_8c18caca:
mov.l @(0x14,r13),r3
mov r15,r4
jsr @r3
add 0x28,r4
mov.l @(0x2C,r15),r4
mov 0x3F,r2
mov.l @(0x30,r15),r5
mov 0x3F,r3
and r4,r2
and r5,r3
shll2 r2
shll8 r3
or r2,r3
mov.l r3,@(0x10,r15) 
mov.l @(0x34,r15),r2
mul.l r5,r2
mov 0x00,r2
sts macl,r5
add r4,r5
mov.l r5,@(0x08,r15) 
mov.l @(0x0C,r13),r3
cmp/hs r3,r2
bf/s loc_8c18cafe
mov r12,r4
bra loc_8c18cc7e
nop 

loc_8c18cafe:
mul.l r11,r4
mov r4,r3
shll r3
mov r4,r2
add r2,r3
mov.l @(0x10,r15),r2
shll2 r3
sts macl,r5
mul.l r11,r4
shll r3
mov r4,r7
add r9,r5
mov.l @r5,r1
add r14,r3
shll r7
or r2,r1
mov.l r1,@r3
mov r4,r3
sts macl,r6
add r3,r7
mov.l r12,@(0x04,r15) 
shll2 r7
shll r7
add r9,r6
add r14,r7
add 0x18,r6
add 0x04,r7

loc_8c18cb34:
mov.l @(0x3C,r15),r0
cmp/eq 0x01,r0 
bt/s loc_8c18cb80
mov r6,r5
mov.l @r5,r2
bra loc_8c18cb82
mov.l r2,@r15
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009

#align4
loc_8C18CB60:
#data 0x8C343B04
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009


loc_8c18cb80:
mov.l r10,@r15

loc_8c18cb82:
mov.l @(0x08,r15),r2
mov.l @(0x08,r5),r3
mov.l @(0x04,r5),r1
mul.l r3,r2
mov.l @r15,r0
sts macl,r3
add r1,r3
or r0,r3
mov.l r3,@r7
mov 0x05,r3
mov.l @(0x04,r15),r2
add 0x04,r7
add 0x01,r2
cmp/ge r3,r2
mov.l r2,@(0x04,r15) 
bf/s loc_8c18cb34
add 0x0C,r6
mov r4,r5
mov r13,r0
shll2 r5
add 0x48,r0
shll r5
mov.l @(r0,r5),r0
tst 0x40,r0 
bt/s loc_8c18cbcc
mov r13,r2
mov r4,r6
shll r6
mov r4,r3
add r3,r6
shll2 r6
shll r6
add r14,r6
mov.l r6,@(0x20,r15) 
add 0x04,r6
mov.l @(0x0C,r6),r3
mov.l r3,@(0x04,r6) 

loc_8c18cbcc:
add 0x48,r2
mov.w @(loc_8C18CCE0,pc),r3
add r5,r2
mov.l @r2,r1
tst r3,r1
bt/s loc_8c18cbf0
mov r13,r3
mov r4,r6
shll r6
mov r4,r2
add r2,r6
shll2 r6
shll r6
add r14,r6
mov.l r6,@(0x1C,r15) 
add 0x04,r6
mov.l @(0x04,r6),r2
mov.l r2,@(0x0C,r6) 

loc_8c18cbf0:
add 0x48,r3
mov.l @(loc_8C18CCE4,pc),r2
add r5,r3
mov.l @r3,r1
tst r2,r1
bt loc_8c18cc12
mov r4,r6
shll r6
mov r4,r3
add r3,r6
shll2 r6
shll r6
add r14,r6
mov.l r6,@(0x18,r15) 
add 0x04,r6
mov.l @(0x08,r6),r3
mov.l r3,@(0x10,r6) 

loc_8c18cc12:
cmp/pl r4
bf loc_8c18cc72
mov r13,r0
add 0x48,r0
mov.l @(r0,r5),r0
tst 0x80,r0 
bt loc_8c18cc42
mov r4,r2
mov r4,r1
shll r2
mov r4,r3
add 0xFF,r1
add r3,r2
mov r1,r3
shll2 r2
shll r2
shll r1
add r3,r1
shll2 r1
shll r1
add r14,r1
mov.l @(0x08,r1),r0
add r14,r2
mov.l r0,@(0x08,r2) 

loc_8c18cc42:
mov r13,r3
add 0x48,r3
add r3,r5
mov.l @(loc_8C18CCE8,pc),r3
mov.l @r5,r2
tst r3,r2
bt loc_8c18cc72
mov r4,r0
mov r4,r1
shll r0
mov r4,r2
add 0xFF,r1
add r2,r0
mov r1,r2
shll2 r0
shll r0
shll r1
add r2,r1
shll2 r1
shll r1
add r14,r1
mov.l @(0x10,r1),r2
add r14,r0
mov.l r2,@(0x10,r0) 

loc_8c18cc72:
mov.l @(0x0C,r13),r3
add 0x01,r4
cmp/hs r3,r4
bt loc_8c18cc7e
bra loc_8c18cafe
nop 

loc_8c18cc7e:
mov r15,r1
add 0x40,r1
mov.l @r1,r0
tst 0x01,r0 
bf loc_8c18ccbc
mov.l @(0x0C,r13),r6
mov r14,r5
mov.l r6,@r15
mov r6,r3
mov.l @r15,r4
shll r6
add r3,r6
mov.l @(0x14,r15),r2
mul.l r4,r8
shll2 r6
shll r6
sts macl,r4
mov r4,r3
shll r4
add r3,r4
mov.l @(loc_8c18ccec,pc),r3
shll2 r4
shll r4
jsr @r3
add r2,r4
mov.l @(0x0C,r15),r2
add 0x01,r8
cmp/hs r2,r8
bt loc_8c18ccbc
bra loc_8c18cab0
nop 

loc_8c18ccbc:
mov.l @(0x0C,r13),r3
add 0xFF,r3
mov r3,r0
shll r3
add r0,r3
shll2 r3
shll r3
add r14,r3
mov.l @r3,r2
or r10,r2
mov.l r2,@r3
mov.l @(0x0C,r13),r6
mov r6,r3
mov.l r6,@r15
shll r6
bra loc_8c18cd00
nop 
#data 0x0009

loc_8C18CCE0:
#data 0x4000
#data 0x0000

#align4
loc_8C18CCE4:
#data 0x00040000

#align4
loc_8C18CCE8:
#data 0x00008000

#align4
loc_8c18ccec:
#data bank1a.loc_8c1a4e20
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009


loc_8c18cd00:
add r3,r6
mov.l @(0x28,r15),r2
mov.l @r15,r3
shll2 r6
mov.l @(0x14,r15),r1
shll r6
mul.l r3,r2
mov r14,r5
sts macl,r4
mov r4,r2
shll r4
add r2,r4
mov.l @(loc_8c18cd44,pc),r2
shll2 r4
shll r4
jsr @r2
add r1,r4
mov.w @(loc_8C18CD40,pc),r1
add r1,r15
lds.l @r15+,pr 
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 
mov.l @r15+,r14
;==============================================
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009

loc_8C18CD40:
#data 0x03A8
#data 0x0000

#align4
loc_8c18cd44:
#data bank1a.loc_8c1a4e20
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009

loc_8c18cd60:
#data 0x2FE6
#data 0x2FD6
#data 0x2FC6
#data 0x2FB6
#data 0x2FA6
#data 0x2F96
#data 0x2F86
#data 0x4F22
#data 0x7FDC
#data 0xD333
#data 0x430B
#data 0x6943
#data 0x2008
#data 0x8958
#data 0x6693
#data 0x5463
#data 0x6593
#data 0x2448
#data 0x8D53
#data 0x7518
#data 0xE208
#data 0x3426
#data 0x894F
#data 0x5362
#data 0xEA00
#data 0x5261
#data 0x6DA3
#data 0x5863
#data 0x6CF3
#data 0x0237
#data 0xD729
#data 0x62D3
#data 0x6BA3
#data 0x7C04
#data 0x041A
#data 0x0487
#data 0x4408
#data 0x2F42
#data 0x081A
#data 0x6383
#data 0x4800
#data 0x383C
#data 0x5363
#data 0x4808
#data 0x4800
#data 0x3232
#data 0x8D32
#data 0xE403

loc_8c18cdc0:
#data 0x6ED3
#data 0x6363
#data 0x4E08
#data 0x7348
#data 0x4E00
#data 0x3E3C
#data 0x6EE2
#data 0x60E3
#data 0x4009
#data 0x4009
#data 0x2049
#data 0x4008
#data 0x027E
#data 0x60E3
#data 0x4019
#data 0x2049
#data 0x4008
#data 0x017E
#data 0x60E3
#data 0x4019
#data 0x4009
#data 0x4009
#data 0x2049
#data 0x4008
#data 0x321C
#data 0x017E
#data 0x60E3
#data 0x4029
#data 0x2049
#data 0x4008
#data 0x321C
#data 0x017E
#data 0x60E3
#data 0x2049
#data 0x4008
#data 0x321C
#data 0x037E
#data 0x6E23
#data 0x62F2
#data 0x3E3C
#data 0x60D3
#data 0x0E27
#data 0x7D01
#data 0x4008
#data 0x0E1A
#data 0x0CE6
#data 0x5363
#data 0x3D32
#data 0x8FCE
#data 0x3BEC

loc_8c18ce24:
#data 0x5351
#data 0x61B3
#data 0x318C
#data 0x3136
#data 0x8B18

loc_8c18ce2e:
#data 0xD006
#data 0xA053
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009

loc_8c18ce40:
#data 0x7FC0
#data 0x8C1A

loc_8c18ce44:
#data 0x5A7C
#data 0x8C1C
#data 0xEEEE
#data 0x0000
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009

loc_8c18ce60:
#data 0x5451
#data 0x5253
#data 0x34B8
#data 0x974B
#data 0x3488
#data 0x4409
#data 0x6343
#data 0x4400
#data 0x32B8
#data 0x343C
#data 0xE380
#data 0x327C
#data 0x2239
#data 0xD322
#data 0x1524
#data 0xE2E0
#data 0x6152
#data 0x341C
#data 0x2429
#data 0x1546
#data 0x5154
#data 0x1517
#data 0x5056
#data 0x370C
#data 0x9037
#data 0x1575
#data 0x046E
#data 0x5252
#data 0x5059
#data 0x5142
#data 0x3028
#data 0x2139
#data 0x4000
#data 0x67A3
#data 0x210B
#data 0x1412
#data 0xE100
#data 0x5263
#data 0x3122
#data 0x8D11
#data 0x64A3

loc_8c18ceb2:
#data 0x6343
#data 0x6253
#data 0x5154
#data 0x4308
#data 0x7230
#data 0x6043
#data 0x4300
#data 0x317C
#data 0x332C
#data 0x4008
#data 0x1311
#data 0x5263
#data 0x7401
#data 0x03CE
#data 0x3422
#data 0x373C
#data 0x8BEE

loc_8c18ced4:
#data 0xBD59
#data 0x6493
#data 0xE000

loc_8c18ceda:
#data 0x7F24
#data 0x4F26
#data 0x68F6
#data 0x69F6
#data 0x6AF6
#data 0x6BF6
#data 0x6CF6
#data 0x6DF6
#data 0x000B
#data 0x6EF6
;==============================================
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0xFF00
#data 0x0088
#data 0x0000
#data 0xFF00
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000

loc_8c18CF20:
sts.l pr,@-r15
add 0xF8,r15
mov.l @(loc_8c18CF84,pc),r3 ; r3 set to 0x8C1A7FC0
mov.l r4,@r15
mov.l r5,@(0x04,r15)
jsr @r3
mov.l @r15,r4
tst r0,r0
bf loc_8c18CF3C
mov.l @(loc_8c18CF88,pc),r0 ; r0 set to 0xEEEE
add 0x08,r15
lds.l @r15+,pr
rts
nop
;==============================================

loc_8c18CF3C:
mov.w @(loc_8c18CF80,pc),r0 ; r0 set to 0x88
mov.l @r15,r4
mov.l @(0x04,r15),r3
mov.l @(r0,r4),r4
tst r3,r3
bt loc_8c18CF52
mov.l @(0x24,r4),r2
mov.l @(loc_8c18CF8C,pc),r3 ; r3 set to 0x10000
or r3,r2
bra loc_8c18CF5A
mov.l r2,@(0x24,r4)

loc_8c18CF52:
mov.l @(0x24,r4),r1
mov.l @(loc_8c18CF90,pc),r3 ; r3 set to 0xFFFEFFFF
and r3,r1
mov.l r1,@(0x24,r4)

loc_8c18CF5A:
mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
add 0x08,r15
lds.l @r15+,pr
rts
nop
;==============================================
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c18CF80:
#data 0x0088
#data 0x0000

#align4
loc_8c18CF84:
#data bank1a.loc_8c1a7FC0

loc_8c18CF88:
#data 0x0000EEEE

#align4
loc_8c18CF8C:
#data 0x00010000

#align4
loc_8c18CF90:
#data 0xFFFEFFFF
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c18CFA0:
#data 0xD510D411
#data 0x23385341
#data 0x50428B09
#data 0x0302E500
#data 0xC90F9216
#data 0x23294008
#data 0x203B4008
#data 0x400E

loc_8c18CFBE:
#data 0x000B
#data 0x00096053
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x0000FF0F
#data 0x0000EEEE
#data 0x8C343894
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c18D000:
mov.w @(loc_8c18D080,pc),r6 ; r6 set to 0xD0
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_8c18D084,pc),r7 ; r7 set to 0x8C3434F8
add r7,r6 ; r6 set to 0x8C3435C8
mov r7,r4 ; r4 set to 0x8C3434F8

loc_8c18D00A:
mov.l r5,@(0x28,r4)  ; r4 ??
add 0x34,r4
cmp/hs r6,r4
bf loc_8c18D00A
rts
nop
;==============================================

loc_8c18D016:
mov.l r13,@-r15
add 0xE8,r15
mov.l @(loc_8c18D088,pc),r3 ; r3 set to 0x8C1C5A8C
mov r15,r2
mov.l @(loc_8c18D084,pc),r7 ; r7 set to 0x8C3434F8
mov 0x00,r13 ; r13 set to 0x00
mov.l @(0x04,r3),r0
mov.l @r3,r1
mov r7,r5 ; r5 set to 0x8C3434F8
mov r7,r6 ; r6 set to 0x8C3434F8
mov.l r1,@r2
mov.l r0,@(0x04,r2)
mov.l @(0x0C,r3),r0
mov.l @(0x08,r3),r1
mov.l r1,@(0x08,r2)
mov.l r0,@(0x0C,r2)
mov.l @(0x14,r3),r0
mov.l @(0x10,r3),r1
mov.l r1,@(0x10,r2)
mov.l r0,@(0x14,r2)
mov.w @(loc_8c18D080,pc),r0 ; r0 set to 0xD0
add r7,r0 ; r0 set to 0x8C3435C8
cmp/hs r0,r5
bt/s loc_8c18D05C
mov 0x01,r7 ; r7 set to 0x01

loc_8c18D048:
mov.l @(0x28,r5),r3 ; r3 ??
tst r3,r3
bf loc_8c18D054
mov r7,r13 ; r13 set to 0x01
bra loc_8c18D05C
mov r6,r5

#align4
loc_8c18d054:
add 0x34,r5
cmp/hs r0,r5
bf/s loc_8c18d048
add 0x34,r6

loc_8c18D05C:
tst r13,r13
bf loc_8c18D0A0
mov 0x00,r0 ; r0 set to 0x00
add 0x18,r15
rts
mov.l @r15+,r13
;==============================================
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c18D080:
#data 0x00D0
#data 0x0000

#align4
loc_8c18D084:
#data 0x8C3434F8

#align4
loc_8c18D088:
#data bank1c.loc_8c1c5A8C
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c18D0A0:
mov.l @(loc_8c18D144,pc),r1 ; r1 set to 0x8C343434
mov 0x00,r2 ; r2 set to 0x00
mov.l r7,@(0x28,r5)
mov.l r4,@(0x1C,r5)
mov.l r4,@(0x24,r5)
mov.l r2,@r5
mov r15,r2 ; r2 ??? bc r15 is ???
mov.l @r1,r3
shll2 r3
add r2,r3
mov.l @r3,r0
shll2 r0
shll r0
mov.l r0,@(0x04,r5)
mov r1,r0 ; r0 set to 0x8C343434
mov.l @r0,r3
mov.l r3,@(0x08,r5)
mov.l @(loc_8c18D148,pc),r3 ; r3 set to 0x8C3434A0
mov.l @r3,r2
mov.l r2,@(0x0C,r5)
mov.l @(loc_8c18D14C,pc),r2 ; r2 set to 0x8C3434A4
mov.l @r2,r1 ; r1 ??
mov.l r1,@(0x10,r5)
mov.l @(0x04,r5),r1
mov.l @r3,r0 ; r0 ??
mul.l r1,r0
mov r5,r0
sts macl,r1
shlr2 r1
shlr2 r1
shlr2 r1
mov.l r1,@(0x2C,r5)
add 0x18,r15
rts
mov.l @r15+,r13
;==============================================
#data 0x2FE6
#data 0x25587FFC
#data 0xEE008D17
#data 0xE701D617
#data 0x61639324
#data 0x313C2F62
#data 0x8F013640
#data 0x6E737634
#data 0x8BF93612
#data 0x89042EE8
#data 0x2228524A
#data 0x53478901
#data 0xE0002532
#data 0x000B7F04
#data 0xD00D6EF6
#data 0x000B7F04
#data 0x00096EF6
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x000000D0

#align4
loc_8c18D144:
#data 0x8C343434

#align4
loc_8c18D148:
#data 0x8C3434A0

#align4
loc_8c18D14C:
#data 0x8C3434A4
#data 0x8C3434F8
#data 0x0000EEEE
#data 0x00090009
#data 0x00090009

#align4
loc_8c18D160:
#data 0x24487FFC
#data 0xE6008D14
#data 0xD4266543
#data 0xE7019348
#data 0x2F426143
#data 0x313C

loc_8c18D176:
#data 0x3450
#data 0x74348F01
#data 0x6673

loc_8c18D17E:
#data 0x3412
#data 0x26688BF9
#data 0x525A8904
#data 0x89012228
#data 0x153AE300

#align4
loc_8c18D190:
#data 0x000BE000
#data 0x7F04
;==============================================

loc_8c18D196:
#data 0x2FE6
#data 0x2FD6E601
#data 0x4F222FC6
#data 0xDC19D31A
#data 0x20696032
#data 0x89068801
#data 0x6012D117
#data 0x8820C92C
#data 0x26688B01
#data 0x8B03

loc_8c18D1BA:
#data 0xD315
#data 0x88016032
#data 0x8B2E

loc_8c18D1C2:
#data 0x2448
#data 0x5E478941
#data 0x893E2558
#data 0x5D57D210
#data 0x88016022
#data 0x65E38B3C
#data 0xE4604C0B
#data 0x4C0B65D3
#data 0xA035E464
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x000000D0
#data 0x8C3434F8

#align4
loc_8c18D208:
#data loc_8c18C320
#data 0x8C343430
#data 0x8C3434E8
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c18D220:
#data 0x89072448
#data 0x63E2DE2E
#data 0xDD2E5E47
#data 0x63D23E3C
#data 0x5D47A009

#align4
loc_8c18D234:
#data 0x89082558
#data 0x63E2DE29
#data 0xDD295E57
#data 0x63D23E3C
#data 0x5D57

loc_8c18D246:
#data 0xA003
#data 0x3D3C

loc_8c18D24A:
#data 0xD027
#data 0x0009A007

#align4
loc_8c18D250:
#data 0x4C0B65E3
#data 0x65D3E450
#data 0xE4544C0B
#data 0xE000

loc_8c18D25E:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000B
;==============================================

loc_8c18D268:
sts.l pr,@-r15
add 0xDC,r15
mov.l @(loc_8c18D2EC,pc),r3 ; r3 set to 0x8C1C5AA4
mov r15,r2
add 0x0C,r2
mov r15,r5
mov.l @(0x04,r3),r0
add 0x0C,r5
mov.l @r3,r1
mov r15,r6
add 0x04,r6
mov.l r1,@r2
mov.l r0,@(0x04,r2)
mov.l @(0x0C,r3),r0
mov.l @(0x08,r3),r1
mov.l r1,@(0x08,r2)
mov.l r0,@(0x0C,r2)
mov.l @(0x14,r3),r0
mov.l @(0x10,r3),r1
mov.l r1,@(0x10,r2)
mov.l r0,@(0x14,r2)
mov r4,r0
shll2 r0
mov.l @(loc_8c18D2F0,pc),r1 ; r1 set to 0x8C1A70A0
mov.l @(r0,r5),r2
mov 0x00,r5 ; r5 set to 0x00
mov.l r2,@(0x08,r15)
jsr @r1
mov 0x07,r4 ; r4 set to 0x07
mov.l @(loc_8c18D2F0,pc),r3 ; r3 set to 0x8C1A70A0
mov 0x00,r5 ; r5 set to 0x00
mov r15,r6
jsr @r3
mov 0x08,r4 ; r4 set to 0x08
mov.l @(0x08,r15),r2
mov.l @(0x04,r15),r3 ; r3 ??? bc r15 is ???
mov.l @r15,r1 ; r1 ??? bc r15 is ???
mul.l r3,r2
sts macl,r4
mul.l r1,r4 ; r4 ??? bc r1 is ???
sts macl,r4
add 0x24,r15
lds.l @r15+,pr
rts
mov r4,r0
;==============================================
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x8C3434C4
#data 0x8C3434C8
#data 0x0000EEEE

#align4
loc_8c18D2EC:
#data bank1c.loc_8c1c5AA4

loc_8c18D2F0:
#data bank1a.loc_8c1a70A0
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c18D300:
sts.l pr,@-r15
add 0xF8,r15
mov.l r4,@(0x04,r15)
bsr loc_8c18D324
mov r15,r5
mov r0,r5
tst r5,r5
bf loc_8c18D318
add 0x08,r15
lds.l @r15+,pr
rts
mov 0x07,r0
;==============================================

loc_8c18D318:
bsr loc_8c18D35C
mov.w @r15,r4
add 0x08,r15
lds.l @r15+,pr
rts
nop
;==============================================

loc_8c18D324:
mov.l @(loc_8c18D3E0,pc),r2 ; r2 set to 0x8C1C9B38
mov.l @r2,r3
cmp/hs r3,r4
bt/s loc_8c18D332
mov 0x00,r6 ; r6 set to 0x00
bra loc_8c18D336
mov.w r6,@r5

loc_8c18D332:
mov 0x01,r1 ; r1 set to 0x01
mov.w r1,@r5

loc_8c18D336:
mov.w @r5,r3
mov.l @(loc_8c18D3E4,pc),r0 ; r0 set to 0x8C1C9B44
shll2 r3
shll2 r3
mov.l @(r0,r3),r5
tst r5,r5
bt/s loc_8c18D358
mov r6,r7

loc_8c18D346:
mov.l @(0x0C,r5),r1 ; r1 ??? bc r5 is ???
cmp/eq r4,r1
bf loc_8c18D352
mov r5,r7
bra loc_8c18D354
mov r6,r5

loc_8c18d352:
mov.l @(0x08,r5),r5

loc_8c18d354:
tst r5,r5
bf loc_8c18d346

loc_8c18D358:
rts
mov r7,r0
;==============================================

#align4
loc_8c18d35c:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov r4,r0
mov.w r0,@(0x04,r15) 
mov.w @(0x04,r15),r0 
mov r5,r6
mov.l @(loc_8c18d3ec,pc),r11
mov r5,r14
mov r0,r10
shll2 r10
mov r11,r5
add 0x24,r5
shll2 r10
mov.l @(loc_8c18d3e8,pc),r9
add r10,r5
mov.l r5,@r15
add 0x04,r5
jsr @r9
mov.l @r15,r4
mov r11,r4
add 0x24,r4
add r10,r4
mov.l @(0x08,r4),r4
mov 0x00,r12
tst r4,r4
bt/s loc_8c18d3c0
mov r12,r13

loc_8c18d3a0:
mov.l @(0x10,r14),r2
mov.l @(0x0C,r14),r6
mov.l @(0x0C,r4),r5
add r6,r2
cmp/eq r2,r5
bt loc_8c18d3b4
mov.l @(0x10,r4),r2
add r5,r2
cmp/eq r2,r6
bf loc_8c18d3ba

loc_8c18d3b4:
mov r4,r13
bra loc_8c18d3bc
mov r12,r4

loc_8c18d3ba:
mov.l @(0x08,r4),r4

loc_8c18d3bc:
tst r4,r4
bf loc_8c18d3a0

loc_8c18d3c0:
tst r13,r13
bt loc_8c18d454

loc_8c18d3c4:
mov.l @(0x0C,r14),r2
mov.l @(0x10,r14),r3
mov.l @(0x0C,r13),r1
add r3,r2
cmp/eq r2,r1
bf/s loc_8c18d400
mov r14,r4
mov.l @(0x0C,r14),r2
mov.l r2,@(0x0C,r13) 
mov.l @(0x10,r14),r3
mov.l @(0x10,r13),r1
add r3,r1
bra loc_8c18d408
mov.l r1,@(0x10,r13) 

loc_8c18d3e0:
#data 0x9B38
#data 0x8C1C

loc_8c18d3e4:
#data 0x9B44
#data 0x8C1C

#align4
loc_8c18d3e8:
#data bank1a.loc_8c1a8a10

loc_8c18d3ec:
#data bank1c.loc_8c1c9b20
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009


loc_8c18d400:
mov.l @(0x10,r13),r2
mov.l @(0x10,r14),r3
add r3,r2
mov.l r2,@(0x10,r13) 

loc_8c18d408:
mov.l @(loc_8c18d480,pc),r3
jsr @r3
nop 
mov r11,r8
add 0x24,r8
add r10,r8
mov r13,r6
mov r8,r5
mov r8,r4
add 0x0C,r5
jsr @r9
add 0x08,r4
mov r11,r4
add 0x24,r4
add r10,r4
mov r13,r14
mov.l @(0x08,r4),r4
tst r4,r4
bt/s loc_8c18d450
mov r12,r13

loc_8c18d430:
mov.l @(0x10,r14),r2
mov.l @(0x0C,r14),r5
mov.l @(0x0C,r4),r6
add r5,r2
cmp/eq r2,r6
bt loc_8c18d444
mov.l @(0x10,r4),r2
add r6,r2
cmp/eq r2,r5
bf loc_8c18d44a

loc_8c18d444:
mov r4,r13
bra loc_8c18d44c
mov r12,r4

loc_8c18d44a:
mov.l @(0x08,r4),r4

loc_8c18d44c:
tst r4,r4
bf loc_8c18d430

loc_8c18d450:
tst r13,r13
bf loc_8c18d3c4

loc_8c18d454:
mov r11,r5
add 0x24,r5
add r10,r5
mov.l @(loc_8c18d484,pc),r3
mov.l r5,@r15
mov r14,r6
mov.l @r15,r4
add 0x0C,r5
jsr @r3
add 0x08,r4
mov 0x00,r0
add 0x08,r15
lds.l @r15+,pr 
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 
mov.l @r15+,r14
;==============================================
#data 0x0009

#align4
loc_8c18d480:
#data bank1a.loc_8c1a898c

loc_8c18d484:
#data bank1a.loc_8c1a89d0
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000

loc_8c18D4A0:
sts.l pr,@-r15
add 0xE4,r15
mov.l @(loc_8c18D5E0,pc),r3 ; r3 set to 0x8C1A8A60
mov.l r4,@(0x04,r15)
mov r15,r4
mov.l r5,@r15
mov.l @(0x04,r15),r5
jsr @r3
add 0x08,r4
mov 0x14,r3 ; r3 set to 0x14
mov r15,r2
sub r3,r15
add 0x08,r2
mov.l @r2,r3 ; r3 ??? bc r2 is ???
mov.l @(0x04,r2),r1
mov.l r3,@r15
mov.l r1,@(0x04,r15)
mov.l @(0x08,r2),r3
mov.l @(0x0C,r2),r1
mov.l r3,@(0x08,r15)
mov.l r1,@(0x0C,r15)
mov.l @(0x10,r2),r3
mov.l r3,@(0x10,r15)
bsr loc_8c18D4DA
mov.l @(0x14,r15),r4
add 0x30,r15
lds.l @r15+,pr
rts
nop
;==============================================

loc_8c18d4da:
mov.l r14,@-r15
mov 0x00,r7
mov.l r13,@-r15
mov r7,r14
mov.l r12,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l @(loc_8c18d5e4,pc),r3
sts.l pr,@-r15
mov.l @r3,r5
mov r15,r13
tst r5,r5
add 0x18,r13
bt/s loc_8c18d548
mov.l @(0x10,r13),r12
mov.l @(loc_8C18D5E8,pc),r9

loc_8c18d4fa:
mov.w @r5,r3
mov.l @r13,r2
extu.w r3,r3
and r9,r3
cmp/eq r2,r3
bf loc_8c18d53e
mov 0x00,r2
cmp/hs r12,r2
bt/s loc_8c18d53e
mov r7,r6

loc_8c18d50e:
mov r5,r3
mov r6,r1
add 0x0C,r3
shll2 r1
add r3,r1
mov.l @r1,r2
tst r2,r2
bt loc_8c18d538
mov.l @(0x04,r13),r0
mov.l @(0x08,r5),r2
shlr2 r0
mul.l r0,r6
sts macl,r0
shll2 r0
add r2,r0
cmp/eq r4,r0
bf loc_8c18d538
mov r6,r10
mov r5,r14
mov r7,r5
mov r12,r6

loc_8c18d538:
add 0x01,r6
cmp/hs r12,r6
bf loc_8c18d50e

loc_8c18d53e:
tst r14,r14
bf loc_8c18d544
mov.l @(0x04,r5),r5

loc_8c18d544:
tst r5,r5
bf loc_8c18d4fa

loc_8c18d548:
tst r14,r14
bt loc_8c18d5a0
mov r14,r2
add 0x0C,r2
shll2 r10
mov r7,r12
mov 0x00,r3
mov r7,r4
add r2,r10
mov.l r7,@r10
mov.l @(0x10,r13),r6
cmp/hs r6,r3
bt/s loc_8c18d57c
mov 0x01,r5

loc_8c18d564:
mov r14,r3
mov r4,r1
add 0x0C,r3
shll2 r1
add r3,r1
mov.l @r1,r2
tst r2,r2
bt/s loc_8c18d578
add 0x01,r4
mov r5,r12

loc_8c18d578:
cmp/hs r6,r4
bf loc_8c18d564

loc_8c18d57c:
tst r12,r12
bf loc_8c18d59c
mov.l @(loc_8c18d5ec,pc),r3
jsr @r3
mov.l @(0x08,r14),r4
mov r0,r4
tst r4,r4
bt loc_8c18d590
bra loc_8c18d5a2
mov r4,r0

loc_8c18d590:
mov.l @(loc_8c18d5e4,pc),r4
bsr loc_8c18d5b0
mov r14,r5
mov.l @(loc_8c18d5f0,pc),r2
jsr @r2
mov r14,r4

loc_8c18d59c:
bra loc_8c18d5a2
mov 0x00,r0

loc_8c18d5a0:
mov 0x07,r0

loc_8c18d5a2:
lds.l @r15+,pr 
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r12
mov.l @r15+,r13
rts 
mov.l @r15+,r14
;==============================================

loc_8c18d5b0:
mov.l @r4,r6
mov 0x00,r7
tst r6,r6
bt/s loc_8c18d5cc
mov r7,r0

loc_8c18d5ba:
mov.l @(0x04,r6),r2
cmp/eq r5,r2
bf loc_8c18d5c6
mov r6,r0
bra loc_8c18d5c8
mov r7,r6

loc_8c18d5c6:
mov.l @(0x04,r6),r6

loc_8c18d5c8:
tst r6,r6
bf loc_8c18d5ba

loc_8c18d5cc:
mov.l @r4,r2
cmp/eq r5,r2
bf loc_8c18d600
mov.l @(0x04,r5),r1
bra loc_8c18d604
mov.l r1,@r4
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009

loc_8c18d5e0:
#data 0x8A60
#data 0x8C1A

#align4
loc_8c18d5e4:
#data bank1c.loc_8c1c9b64

loc_8C18D5E8:
#data 0x0000F000

#align4
loc_8c18d5ec:
#data loc_8c18d300

loc_8c18d5f0:
#data bank1a.loc_8c1a8b88
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009


loc_8c18d600:
mov.l @(0x04,r5),r2
mov.l r2,@(0x04,r0) 

loc_8c18d604:
rts 
nop 
;==============================================
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000

loc_8c18d620:
#data 0x2FE6
#data 0x2FD6
#data 0x4F22
#data 0x7FFC
#data 0xDE2E
#data 0x65E3
#data 0x7524
#data 0x2F52
#data 0x7504
#data 0xB0B5
#data 0x64F2
#data 0x65E3
#data 0x7534
#data 0x2F52
#data 0x7504
#data 0xB0AF
#data 0x64F2
#data 0x65E3
#data 0x7524
#data 0x2F52
#data 0x750C
#data 0x64F2
#data 0xB0A8
#data 0x7408
#data 0x65E3
#data 0x7534
#data 0x2F52
#data 0x750C
#data 0x64F2
#data 0xB0A1
#data 0x7408
#data 0x6DE3
#data 0x7D24
#data 0x65D3
#data 0x67D3
#data 0x750C
#data 0x64D3
#data 0x7704
#data 0x66D3
#data 0xB101
#data 0x7408
#data 0x6403
#data 0x2448
#data 0x8B0A
#data 0x6DE3
#data 0x7D34
#data 0x65D3
#data 0x67D3
#data 0x750C
#data 0x64D3
#data 0x7704
#data 0x66D3
#data 0xB0F4
#data 0x7408
#data 0x6403

loc_8c18d68e:
#data 0x6043
#data 0x7F04
#data 0x4F26
#data 0x6DF6
#data 0x000B
#data 0x6EF6
;==============================================

loc_8c18d69a:
#data 0x2FE6
#data 0x2FD6
#data 0x2FC6
#data 0x2FB6
#data 0x2FA6
#data 0x2F96
#data 0x2F86
#data 0x4F22
#data 0x9019
#data 0x3F0C
#data 0x9E18
#data 0x6D63
#data 0xDA0D
#data 0x6943
#data 0x3DE6
#data 0x8F33
#data 0x6853
#data 0x62F3
#data 0x7204
#data 0x2F22

loc_8c18d6c2:
#data 0xD30A
#data 0x6583
#data 0x66E3
#data 0x430B
#data 0x64F2
#data 0x6CF2
#data 0xA01B
#data 0xEB40
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0xF7FC
#data 0x0800

loc_8c18d6e4:
#data 0x9B20
#data 0x8C1C

loc_8c18d6e8:
#data 0xA798
#data 0x8C17

loc_8c18d6ec:
#data 0x4DC0
#data 0x8C1A
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009

loc_8c18d700:
#data 0x4A0B
#data 0x64C3
#data 0x7BFF
#data 0x7C20

loc_8c18d708:
#data 0x2BB8
#data 0x8BF9
#data 0x65F2
#data 0xE700
#data 0xD31C
#data 0x66E3
#data 0x430B
#data 0x6493
#data 0x3DE8
#data 0x3DE6
#data 0x38EC
#data 0x8DD0
#data 0x39EC

loc_8c18d722:
#data 0x64F3
#data 0xD318
#data 0x66D3
#data 0x7404
#data 0x6583
#data 0x430B
#data 0x2F42
#data 0x6EF2
#data 0xA004
#data 0xEC40

loc_8c18d736:
#data 0x4A0B
#data 0x64E3
#data 0x7CFF
#data 0x7E20

loc_8c18d73e:
#data 0x2CC8
#data 0x8BF9
#data 0x65F2
#data 0xE700
#data 0xD30F
#data 0x66D3
#data 0x430B
#data 0x6493
#data 0x9117
#data 0x3F1C
#data 0x4F26
#data 0x68F6
#data 0x69F6
#data 0x6AF6
#data 0x6BF6
#data 0x6CF6
#data 0x6DF6
#data 0x000B
#data 0x6EF6
;==============================================
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0804
#data 0x0000

loc_8c18d784:
#data 0xC7C0
#data 0x8C18

loc_8c18d788:
#data 0x4DC0
#data 0x8C1A
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009

loc_8c18d7a0:
#data 0x2FE6
#data 0x2FD6
#data 0x2FC6
#data 0x2FB6
#data 0x2FA6
#data 0x2F96
#data 0x2F86
#data 0x4F22
#data 0x7FFC
#data 0x6943
#data 0x6392
#data 0x6A53
#data 0xE800
#data 0x2338
#data 0x8D40
#data 0x6C83
#data 0x6492
#data 0x6E43

loc_8c18d7c4:
#data 0x5243
#data 0x53E3
#data 0x3236
#data 0x8B00
#data 0x6E43

loc_8c18d7ce:
#data 0x5442
#data 0x2448
#data 0x8FF7
#data 0x7C01
#data 0xE201
#data 0x3C27
#data 0x8B31
#data 0x61A2
#data 0x31E0
#data 0x8909
#data 0xD14F
#data 0x65A3
#data 0x66E3
#data 0x410B
#data 0x6493
#data 0xD34D
#data 0x65E3
#data 0x66A2
#data 0x430B
#data 0x64A3

loc_8c18d7f6:
#data 0x7CFE
#data 0x4C15
#data 0x6BC3
#data 0x8F20
#data 0x2F82

loc_8c18d800:
#data 0x6E92
#data 0x4B15
#data 0x6DE3
#data 0x8F09
#data 0x6483

loc_8c18d80a:
#data 0x5EE2
#data 0x53D3
#data 0x52E3
#data 0x3236
#data 0x8F01
#data 0x7401
#data 0x6DE3

loc_8c18d818:
#data 0x34B3
#data 0x8BF6

loc_8c18d81c:
#data 0x3ED0
#data 0x8909
#data 0xD33F
#data 0x65A3
#data 0x66D3
#data 0x430B
#data 0x6493
#data 0xD23E
#data 0x65D3
#data 0x66E3
#data 0x420B
#data 0x64A3

loc_8c18d834:
#data 0x63F2
#data 0x7BFF
#data 0x7301
#data 0x33C3
#data 0x8FE0
#data 0x2F32

loc_8c18d840:
#data 0x7F04
#data 0x4F26
#data 0x68F6
#data 0x69F6
#data 0x6AF6
#data 0x6BF6
#data 0x6CF6
#data 0x6DF6
#data 0x000B
#data 0x6EF6
;==============================================

loc_8c18d854:
#data 0xD334
#data 0xE700
#data 0x6673
#data 0x6532

loc_8c18d85c:
#data 0x5252
#data 0x3240
#data 0x8B01
#data 0x6653
#data 0x6573

loc_8c18d866:
#data 0x2668
#data 0x8B00
#data 0x5551

loc_8c18d86c:
#data 0x2558
#data 0x8BF5
#data 0x000B
#data 0x6063
;==============================================

loc_8c18d874:
#data 0x2FE6
#data 0x2FD6
#data 0x2FC6
#data 0x2FB6
#data 0x2FA6
#data 0x2F96
#data 0x2F86
#data 0x4F22
#data 0x7FFC
#data 0x6843
#data 0x6E82
#data 0x6953
#data 0x2EE8
#data 0x8F02
#data 0x6D62
#data 0xA0CF
#data 0x0009

loc_8c18d896:
#data 0x2DD8
#data 0x8B01
#data 0xA0CB
#data 0x0009

loc_8c18d89e:
#data 0xEA02

loc_8c18d8a0:
#data 0x63D1
#data 0x633D
#data 0x23A8
#data 0x8F07
#data 0xEB00
#data 0x60D1
#data 0x600D
#data 0xC804
#data 0x8901
#data 0xA001
#data 0x6BA3

loc_8c18d8b6:
#data 0xEB01

loc_8c18d8b8:
#data 0x2BB8
#data 0x8B01
#data 0xA098
#data 0x0009

loc_8c18d8c0:
#data 0x52E3
#data 0x53E4
#data 0x51D3
#data 0x323C
#data 0x3210
#data 0x8901
#data 0xA07F
#data 0x0009

loc_8c18d8d0:
#data 0x50E3
#data 0xC81F
#data 0x8938
#data 0xD315
#data 0x430B
#data 0x0009
#data 0x6C03
#data 0x2CC8
#data 0x8B01
#data 0xA0A8
#data 0xE003

loc_8c18d8e6:
#data 0x53E3
#data 0x1C33
#data 0xE3E0
#data 0x52E3
#data 0x721F
#data 0x2239
#data 0x1E23
#data 0x51E3
#data 0x52C3
#data 0x3128
#data 0x6213
#data 0x1C14
#data 0x50E4
#data 0x3028
#data 0x1E04
#data 0x56E1
#data 0x2668
#data 0x8B1A
#data 0xD109
#data 0x6593
#data 0x66C3
#data 0x410B
#data 0x6483
#data 0xA018
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009

loc_8c18d920:
#data 0x8A10
#data 0x8C1A

loc_8c18d924:
#data 0x89F4
#data 0x8C1A

loc_8c18d928:
#data 0x9B64
#data 0x8C1C

loc_8c18d92c:
#data 0x8904
#data 0x8C1A

loc_8c18d930:
#data 0x89D0
#data 0x8C1A
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009

loc_8c18d940:
#data 0xD247
#data 0x65C3
#data 0x420B
#data 0x6493

loc_8c18d948:
#data 0x55D3
#data 0x56D4
#data 0xBEA5
#data 0x54E3
#data 0x5CD3
#data 0x60B3
#data 0x54E3
#data 0x8801
#data 0x62C3
#data 0x3248
#data 0x2F22
#data 0x1D43
#data 0x52E3
#data 0x53D4
#data 0x323C
#data 0x8F05
#data 0x1E23
#data 0x53D3
#data 0x52D5
#data 0x2232
#data 0xA018
#data 0x0009

loc_8c18d974:
#data 0xBF6E
#data 0x64C3
#data 0x6603
#data 0x6463
#data 0x52D3
#data 0x740C
#data 0x6543
#data 0x1622
#data 0x67F2
#data 0x4709
#data 0x4708

loc_8c18d98a:
#data 0x6342
#data 0x2338
#data 0x8903
#data 0x6352
#data 0x6232
#data 0x3278
#data 0x2322

loc_8c18d998:
#data 0x6363
#data 0x734C
#data 0x7404
#data 0x3432
#data 0x8FF3
#data 0x7504

loc_8c18d9a4:
#data 0x5CE2
#data 0x2CC8
#data 0x8911
#data 0x52E3
#data 0x53E4
#data 0x51C3
#data 0x323C
#data 0x3210
#data 0x8B0B
#data 0x52E4
#data 0x6593
#data 0x53C4
#data 0x66C3
#data 0x323C
#data 0xD328
#data 0x1E24
#data 0x430B
#data 0x6483
#data 0xD227
#data 0x420B
#data 0x64C3

loc_8c18d9ce:
#data 0x2DD8
#data 0x890A
#data 0x53E3
#data 0x52D3
#data 0x3326
#data 0x8B06

loc_8c18d9da:
#data 0x5DD2
#data 0x2DD8
#data 0x8903
#data 0x53E3
#data 0x52D3
#data 0x3326
#data 0x89F8

loc_8c18d9e8:
#data 0x2DD8
#data 0x8B1F
#data 0xA022
#data 0x0009

loc_8c18d9f0:
#data 0x2EE8
#data 0x891F
#data 0x52E3
#data 0x53D3
#data 0x3232
#data 0x8906

loc_8c18d9fc:
#data 0x5EE2
#data 0x2EE8
#data 0x8918
#data 0x53E3
#data 0x52D3
#data 0x3322
#data 0x8BF8

loc_8c18da0a:
#data 0x2EE8
#data 0x8912
#data 0x2DD8
#data 0x8910
#data 0x53E3
#data 0x52D3
#data 0x3326
#data 0x8B06

loc_8c18da1a:
#data 0x5DD2
#data 0x2DD8
#data 0x8909
#data 0x53E3
#data 0x52D3
#data 0x3326
#data 0x89F8

loc_8c18da28:
#data 0x2DD8
#data 0x8903

loc_8c18da2c:
#data 0x2EE8
#data 0x8901
#data 0xAF36
#data 0x0009

loc_8c18da34:
#data 0xE000

loc_8c18da36:
#data 0x7F04
#data 0x4F26
#data 0x68F6
#data 0x69F6
#data 0x6AF6
#data 0x6BF6
#data 0x6CF6
#data 0x6DF6
#data 0x000B
#data 0x6EF6
;==============================================
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009

loc_8c18da60:
#data 0x89F4
#data 0x8C1A

loc_8c18da64:
#data 0x8A10
#data 0x8C1A

loc_8c18da68:
#data 0x898C
#data 0x8C1A
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000

loc_8c18da80:
#data 0x2FE6
#data 0x2FD6
#data 0x4F22
#data 0x7FFC
#data 0xDE1E
#data 0x2F42
#data 0xE400
#data 0x53E2
#data 0x2338
#data 0x8F0A
#data 0x6D43
#data 0x0002
#data 0x9332
#data 0x4009
#data 0x4009
#data 0xC90F
#data 0x1E03
#data 0x0002
#data 0x2039
#data 0xCBF0
#data 0x400E

loc_8c18daaa:
#data 0x52E2
#data 0x7201
#data 0x1E22
#data 0x60F2
#data 0x8800
#data 0x8D06
#data 0xE520
#data 0x8801
#data 0x8931
#data 0x8802
#data 0x8944
#data 0xA05C
#data 0x0009

loc_8c18dac4:
#data 0xE030
#data 0x03ED
#data 0x3353
#data 0x890E
#data 0x02ED
#data 0x63E3
#data 0x7201
#data 0x0E25
#data 0xE02C
#data 0x0DED
#data 0x7D01
#data 0x0ED5
#data 0x7DFF
#data 0x6DDF
#data 0x4D08
#data 0x4D08
#data 0x4D08
#data 0xA042
#data 0x7340

loc_8c18daea:
#data 0xA047
#data 0x6D43
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0xFF0F
#data 0x0000

loc_8c18db04:
#data 0x4E80
#data 0x8C1A
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009

loc_8c18db20:
#data 0xE036
#data 0x02ED
#data 0x3253
#data 0x890E
#data 0x02ED
#data 0x9349
#data 0x7201
#data 0x0E25
#data 0xE032
#data 0x0DED
#data 0x7D01
#data 0x0ED5
#data 0x7DFF
#data 0x6DDF
#data 0x4D08
#data 0x4D08
#data 0x4D08
#data 0xA014
#data 0x33EC

loc_8c18db46:
#data 0xA019
#data 0x6D43

loc_8c18db4a:
#data 0xE03C
#data 0x02ED
#data 0x3253
#data 0x8913
#data 0x02ED
#data 0x9335
#data 0x7201
#data 0x0E25
#data 0xE038
#data 0x0DED
#data 0x33EC
#data 0x7D01
#data 0x0ED5
#data 0x7DFF
#data 0x6DDF
#data 0x4D08
#data 0x4D08
#data 0x4D08

loc_8c18db6e:
#data 0x02ED
#data 0x3D3C
#data 0xE31F
#data 0x2239
#data 0xA001
#data 0x0E25

loc_8c18db7a:
#data 0x6D43

loc_8c18db7c:
#data 0x2DD8
#data 0x8B2F
#data 0x53E2
#data 0x73FF
#data 0x6233
#data 0x2228
#data 0x8F09
#data 0x1E32
#data 0x50E3
#data 0x0202
#data 0x9118
#data 0xC90F
#data 0x4008
#data 0x2219
#data 0x4008
#data 0x202B
#data 0x400E

loc_8c18db9e:
#data 0xA032
#data 0xE000
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0840
#data 0x1040
#data 0xFF0F
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009

loc_8c18dbe0:
#data 0xD30F
#data 0xE540
#data 0x430B
#data 0x64D3
#data 0xE401
#data 0x1D4A
#data 0x63F2
#data 0x1D38
#data 0x52E1
#data 0xD30C
#data 0x7201
#data 0x1E21
#data 0x72FF
#data 0x2D22
#data 0x51E1
#data 0x3132
#data 0x8F01
#data 0x60D3
#data 0x1E41

loc_8c18dc06:
#data 0x7F04
#data 0x4F26
#data 0x6DF6
#data 0x000B
#data 0x6EF6
;==============================================
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009

loc_8c18dc20:
#data 0xA734
#data 0x8C17
#data 0x0000
#data 0x8000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000

loc_8c18dc40:
#data 0x2FE6
#data 0x2FD6
#data 0x2FC6
#data 0x2FB6
#data 0x2FA6
#data 0x4F22
#data 0x7FD4
#data 0xD33C
#data 0x62F3
#data 0x7218
#data 0x6BF3
#data 0x6AF3
#data 0x2F52
#data 0x6132
#data 0x7B04
#data 0x5031
#data 0x6E73
#data 0x2212
#data 0x6D43
#data 0x1201
#data 0x7A18
#data 0x5132
#data 0x5033
#data 0x1212
#data 0x1203
#data 0x5134
#data 0x1214
#data 0x61F3
#data 0xD232
#data 0x7104
#data 0x6022
#data 0x5321
#data 0x2102
#data 0x1131
#data 0x5022
#data 0x5323
#data 0x1102
#data 0x1133
#data 0x5024
#data 0xEC42
#data 0x1104
#data 0x2CD9
#data 0x61F2
#data 0x60C3
#data 0x8842
#data 0x8F04
#data 0x2612
#data 0xD22A
#data 0x420B
#data 0x64D3
#data 0x6703

loc_8c18dca6:
#data 0x63F2
#data 0x64D3
#data 0xE601
#data 0x6573
#data 0x2338
#data 0x2469
#data 0x8D25
#data 0x4508
#data 0x60C3
#data 0x8842
#data 0x8B10
#data 0x6043
#data 0x8801
#data 0x8908
#data 0xE02C
#data 0x20D9
#data 0x8820
#data 0x8B04
#data 0x6053
#data 0x03BE
#data 0x2E32
#data 0xA051
#data 0x0009

loc_8c18dcd4:
#data 0x6053
#data 0x03AE
#data 0x2E32
#data 0xA04C
#data 0x0009

loc_8c18dcde:
#data 0xE220
#data 0x22D8
#data 0x890A
#data 0x6043
#data 0x8801
#data 0x8905
#data 0xE02C
#data 0x20D9
#data 0x8820
#data 0x8B01
#data 0xA016
#data 0xE302

loc_8c18dcf6:
#data 0xA03E
#data 0x2E62

loc_8c18dcfa:
#data 0xE204
#data 0xA03B
#data 0x2E22

loc_8c18dd00:
#data 0x2448
#data 0x8902
#data 0xE300
#data 0xA00C
#data 0x0009

loc_8c18dd0a:
#data 0x60C3
#data 0x8842
#data 0x8B27
#data 0x6043
#data 0x8801
#data 0x8908
#data 0xE02C
#data 0x20D9
#data 0x8820
#data 0x8B04
#data 0x6053
#data 0x03BE

loc_8c18dd22:
#data 0x2E32
#data 0xA027
#data 0x0009

loc_8c18dd28:
#data 0x6053
#data 0x03AE
#data 0x2E32
#data 0xA022
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009

loc_8c18dd40:
#data 0x5ABC
#data 0x8C1C

loc_8c18dd44:
#data 0x5AD0
#data 0x8C1C

loc_8c18dd48:
#data 0xF200
#data 0x8C18
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009

loc_8c18dd60:
#data 0x6043
#data 0x8801
#data 0x8906
#data 0xE02C
#data 0x20D9
#data 0x8820
#data 0x8B02
#data 0xE302
#data 0xA001
#data 0x2E32

loc_8c18dd74:
#data 0x2E62

loc_8c18dd76:
#data 0xE000
#data 0x7F2C
#data 0x4F26
#data 0x6AF6
#data 0x6BF6
#data 0x6CF6
#data 0x6DF6
#data 0x000B
#data 0x6EF6
;==============================================
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000

loc_8c18DDA0:
tst r7,r7
mov 0x10,r0 ; r0 set to 0x10
bt/s loc_8c18DDB6
and r4,r0 ; r0 ??? bc r4 is ???
tst r0,r0
bt loc_8c18DDB0
bra loc_8c18DDC6
mov 0x28,r7

loc_8c18DDB0:
mov 0x14,r7 ; r7 set to 0x14
bra loc_8c18DDC6
nop

loc_8c18DDB6:
tst r0,r0
bt loc_8c18DDBE
bra loc_8c18DDC0
mov 0x14,r7

loc_8c18DDBE:
mov 0x0A,r7 ; r7 set to 0x0A

loc_8c18DDC0:
mov 0x20,r2 ; r2 set to 0x20, r2 set to 0x20
tst r2,r4
bt loc_8c18DDCA

loc_8c18DDC6:
bra loc_8c18DDCC
mov 0x0F,r4

loc_8c18ddca:
mov 0x08,r4

loc_8c18ddcc:
tst r5,r5
bt loc_8c18ddd2
mov.l r7,@r5

loc_8c18ddd2:
tst r6,r6
bt/s loc_8c18ddda
mov 0x00,r0
mov.l r4,@r6

loc_8c18ddda:
rts 
nop 
;==============================================
#data 0x0000

loc_8c18dde0:
#data 0x2FE6
#data 0x2FD6
#data 0x2FC6
#data 0x2FB6
#data 0x2FA6
#data 0x2F96
#data 0x2F86
#data 0x7FF4
#data 0xD727
#data 0xED00
#data 0x1FD1
#data 0x69D3
#data 0x1FD2
#data 0x2FD2
#data 0x567B
#data 0x2668
#data 0x8D0B
#data 0x68D3

loc_8c18de04:
#data 0x5264
#data 0x3286
#data 0x8B00
#data 0x5864

loc_8c18de0c:
#data 0x52F2
#data 0x5364
#data 0x323C
#data 0x1F22
#data 0x5662
#data 0x2668
#data 0x8BF4

loc_8c18de1a:
#data 0x567F
#data 0x2668
#data 0x890A

loc_8c18de20:
#data 0x5364
#data 0x3396
#data 0x8F01
#data 0x5364
#data 0x5964

loc_8c18de2a:
#data 0x52F1
#data 0x323C
#data 0x1F21
#data 0x5662
#data 0x2668
#data 0x8BF4

loc_8c18de36:
#data 0xE044
#data 0x0C7E
#data 0x2CC8
#data 0x8B01
#data 0xA07A
#data 0x0009

loc_8c18de42:
#data 0xEE10

loc_8c18de44:
#data 0x60C1
#data 0xD313
#data 0x911A
#data 0x600D
#data 0x2039
#data 0x3010
#data 0x8926
#data 0x9116
#data 0x3010
#data 0x8926
#data 0x9114
#data 0x3010
#data 0x8926
#data 0x9112
#data 0x3010
#data 0x8926
#data 0x9110
#data 0x3010
#data 0x8926
#data 0x910E
#data 0x3010
#data 0x8926
#data 0x910C
#data 0x3010
#data 0x8944
#data 0xD108
#data 0x3010
#data 0x8944
#data 0xA046
#data 0x0009
#data 0x1000
#data 0x2000
#data 0x3000
#data 0x4000
#data 0x5000
#data 0x6000
#data 0x7000
#data 0x0000

loc_8c18de90:
#data 0x9B20
#data 0x8C1C
#data 0xF000
#data 0x0000
#data 0x8000
#data 0x0000
#data 0x0009
#data 0x0009

loc_8c18dea0:
#data 0x971E
#data 0xA007
#data 0x0009

loc_8c18dea6:
#data 0x971C
#data 0xA004
#data 0x0009

loc_8c18deac:
#data 0x971A
#data 0xA001
#data 0x0009

loc_8c18deb2:
#data 0x9718

loc_8c18deb4:
#data 0xA02C
#data 0x66E3

loc_8c18deb8:
#data 0x9716
#data 0xA029
#data 0xE608

loc_8c18debe:
#data 0x9714
#data 0xA026
#data 0xE604
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0090
#data 0x00A0
#data 0x00C0
#data 0x00E0
#data 0x0200
#data 0x0360
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009

loc_8c18df00:
#data 0x973E
#data 0xA005
#data 0xE602

loc_8c18df06:
#data 0x973C
#data 0xA002
#data 0xE601

loc_8c18df0c:
#data 0x66D3
#data 0x67D3

loc_8c18df10:
#data 0xE300
#data 0x6AD3
#data 0x3362
#data 0x6BC3
#data 0x8D0A
#data 0x7B0C

loc_8c18df1c:
#data 0x61B2
#data 0x2118
#data 0x8F03
#data 0x7A01
#data 0x62F2
#data 0x327C
#data 0x2F22

loc_8c18df2a:
#data 0x3A62
#data 0x8FF6
#data 0x7B04

loc_8c18df30:
#data 0x5CC1
#data 0x2CC8
#data 0x8B86

loc_8c18df36:
#data 0x52F2
#data 0x3892
#data 0x53F1
#data 0x61F2
#data 0x323C
#data 0x321C
#data 0x2422
#data 0x8901
#data 0xA001
#data 0x6393

loc_8c18df4a:
#data 0x6383

loc_8c18df4c:
#data 0xE000
#data 0x2532
#data 0x7F0C
#data 0x68F6
#data 0x69F6
#data 0x6AF6
#data 0x6BF6
#data 0x6CF6
#data 0x6DF6
#data 0x000B
#data 0x6EF6
;==============================================
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0800
#data 0x0D60
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000

loc_8c18DFA0:
mov.l @(loc_8c18DFC0,pc),r4 ; r4 set to 0x8C343894
rts
mov.l @(0x04,r4),r0
;==============================================
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c18DFC0:
#data 0x8C343894
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c18DFE0:
mov.l @(loc_8c18E000,pc),r3 ; r3 set to 0x8C343B18
rts
mov.l @r3,r0
;==============================================
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c18E000:
#data 0x8C343B18
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c18E020:
sts.l pr,@-r15
add 0xF4,r15
mov.l @(loc_8c18E080,pc),r3 ; r3 set to 0x8C1A7FC0
mov.l r4,@(0x08,r15)
mov.l r5,@(0x04,r15)
mov.l r6,@r15
jsr @r3
mov.l @(0x08,r15),r4
tst r0,r0
bt loc_8c18E05E
mov.l @(0x08,r15),r4
mov.l @(0x04,r15),r2
mov.l @(0x0C,r4),r3 ; r3 ??? bc r4 is ???
cmp/hs r3,r2
bt loc_8c18E05E
mov.l @(0x04,r15),r2
mov r4,r1
add 0x48,r1
mov.l @r15,r3
shll2 r2
shll r2
add r1,r2
mov.l @r2,r0
mov.l @(loc_8c18E084,pc),r2 ; r2 set to 0xEFFFFFFF
mov.l r0,@r3
mov.l @r15,r3
mov.l @r3,r1
and r2,r1
mov.l r1,@r3
bra loc_8c18E068
nop

loc_8c18E05E:
mov.l @(loc_8c18E088,pc),r0 ; r0 set to 0xEEEE
add 0x0C,r15
lds.l @r15+,pr
rts
nop
;==============================================

loc_8c18E068:
mov 0x00,r0 ; r0 set to 0x00
add 0x0C,r15
lds.l @r15+,pr
rts
nop
;==============================================
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c18E080:
#data bank1a.loc_8c1a7FC0

loc_8c18E084:
#data 0xEFFFFFFF

#align4
loc_8c18E088:
#data 0x0000EEEE
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c18E0A0:
mov.l r14,@-r15
mov 0x48,r0 ; r0 set to 0x48
mov.l r13,@-r15
mov 0x1F,r3 ; r3 set to 0x1F
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
sts.l pr,@-r15
mov.l @(loc_8c18E144,pc),r14 ; r14 set to 0x8C1C9B20
mov.l r5,@(0x08,r14)  ; r14 ??? bc r5 is ???
mov.l r6,@(0x20,r14)
mov.l r7,@(0x0C,r14)
mov.l @(0x18,r15),r2
mov.l r2,@(r0,r14)
mov 0x4C,r0 ; r0 set to 0x4C
mov.l @(r0,r14),r5
tst r5,r3
bf loc_8c18E0C8
bra loc_8c18E0D0
mov r5,r3

loc_8c18E0C8:
mov r5,r1
mov 0xE0,r3 ; r3 set to 0xFFFFFFE0
add 0x20,r1
and r1,r3 ; r3 ??? bc r1 is ???

loc_8c18E0D0:
mov r4,r7
mov.l r3,@(r0,r14)
mov.l r4,@(0x04,r14)
mov 0x00,r13 ; r13 set to 0x00, r13 set to 0x00
mov.l @(r0,r14),r4
mov.l @r14,r0
mov.l @(loc_8c18E154,pc),r12 ; r12 set to 0x8C18C320, r12 set to 0x8C18C320
mov.l @(loc_8c18E14C,pc),r10 ; r10 set to 0x8C1A8904, r10 set to 0x8C1A8904
cmp/eq 0x01,r0
mov.l @(loc_8c18E148,pc),r6 ; r6 set to 0x1000000, r6 set to 0x1000000
mov.w @(loc_8c18E140,pc),r11 ; r11 set to 0xE4, r11 set to 0xE4
mov.l @(loc_8c18E150,pc),r5 ; r5 set to 0x800000, r5 set to 0x800000
bf/s loc_8c18E160
neg r4,r4
cmp/eq r6,r7
bf loc_8c18E100
mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
add r6,r4
mov.l r4,@(r0,r14)
mov.l r13,@(0x10,r14)
mov.l @(r0,r14),r3
mov.l r3,@(0x14,r14)
bra loc_8c18E10E
mov.l r6,@(0x18,r14)

loc_8c18E100:
mov 0x50,r0 ; r0 set to 0x50
add r5,r4
mov.l r4,@(r0,r14)
mov.l r13,@(0x10,r14)
mov.l @(r0,r14),r3
mov.l r3,@(0x14,r14)
mov.l r5,@(0x18,r14)

loc_8c18E10E:
mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
mov.l r13,@(0x1C,r14)
jsr @r12
mov r11,r4
bsr loc_8c18E1F2
nop
jsr @r10
nop
mov r0,r4 ; r4 set to 0x50
tst r4,r4
bt loc_8c18E1B6
mov.l @(0x10,r14),r3
mov.l r3,@(0x0C,r4)  ; r4 ??? bc r3 is ???
mov.l @(0x14,r14),r2
mov.l r2,@(0x10,r4)
mov.l @(0x2C,r14),r3
mov.l r3,@(0x08,r4)
mov.l r4,@(0x2C,r14)
mov.l @(0x30,r14),r2
mov.l r2,@(0x04,r4)
bra loc_8c18E1D0
mov.l r4,@(0x30,r14)
#data 0x0009
#data 0x00090009

loc_8c18E140:
#data 0x00E4
#data 0x0000

#align4
loc_8c18E144:
#data bank1c.loc_8c1c9B20

loc_8c18E148:
#data 0x01000000

#align4
loc_8c18E14C:
#data bank1a.loc_8c1a8904

loc_8c18E150:
#data 0x00800000

#align4
loc_8c18E154:
#data loc_8c18C320
#data 0x00090009
#data 0x00090009


loc_8c18E160:
cmp/eq r6,r7
bf loc_8c18E174
mov 0x50,r0 ; r0 set to 0x50
add r5,r4
mov.l r4,@(r0,r14)
mov.l r13,@(0x10,r14)
mov.l @(r0,r14),r3
mov.l r3,@(0x14,r14)
bra loc_8c18E182
nop

#align4
loc_8c18e174:
mov 0x50,r0
mov.l @(loc_8C18E260,pc),r5
add r5,r4
mov.l r4,@(r0,r14) 
mov.l r13,@(0x10,r14) 
mov.l @(r0,r14),r3
mov.l r3,@(0x14,r14) 

loc_8c18e182:
mov.l r5,@(0x18,r14) 
mov.l r5,@(0x1C,r14) 
mov 0x00,r5
jsr @r12
mov r11,r4
bsr loc_8c18e1f2
nop 
jsr @r10
nop 
mov r0,r4
tst r4,r4
bt loc_8c18e1b6
mov.l @(0x10,r14),r3
mov.l r3,@(0x0C,r4) 
mov.l @(0x14,r14),r2
mov.l r2,@(0x10,r4) 
mov.l @(0x2C,r14),r3
mov.l r3,@(0x08,r4) 
mov.l r4,@(0x2C,r14) 
mov.l @(0x30,r14),r2
mov.l r2,@(0x04,r4) 
jsr @r10
mov.l r4,@(0x30,r14) 
mov r0,r4
tst r4,r4
bf loc_8c18e1ba

loc_8c18E1B6:
bra loc_8c18E1E4
mov 0x03,r0

loc_8c18E1BA:
#data 0x52E6
#data 0x1423E040
#data 0x143453E7
#data 0x142252EF
#data 0x03EE1E4F
#data 0x0E461431

#align4
loc_8c18e1d0:
mov 0x4C,r0
mov.l @(r0,r14),r3
tst r3,r3
bt loc_8c18e1e2
mov 0x54,r0
mov.l @(r0,r14),r3
mov 0x50,r0
mov.l @(r0,r14),r2
mov.l r2,@r3

loc_8c18e1e2:
mov 0x00,r0

loc_8c18E1E4:
lds.l @r15+,pr
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c18e1f2:
mov.l @(loc_8c18e264,pc),r4
mov 0x00,r5
mov r5,r2
mov.l @(0x08,r4),r3
cmp/hs r3,r2
bt/s loc_8c18e21a
mov r5,r6

loc_8c18e200:
mov r6,r0
shll r0
mov r6,r3
add r3,r0
mov.l @(0x20,r4),r2
shll2 r0
shll r0
add 0x01,r6
add r2,r0
mov.w r5,@r0
mov.l @(0x08,r4),r3
cmp/hs r3,r6
bf loc_8c18e200

loc_8c18e21a:
mov 0x40,r0
mov r5,r6
mov 0x00,r2
mov.l r5,@(0x24,r4) 
mov.l r5,@(0x28,r4) 
mov.l r5,@(0x2C,r4) 
mov.l r5,@(0x30,r4) 
mov.l r5,@(0x34,r4) 
mov.l r5,@(0x38,r4) 
mov.l r5,@(0x3C,r4) 
mov.l r5,@(r0,r4) 
mov.l @(0x0C,r4),r3
cmp/hs r3,r2
bt/s loc_8c18e24e
mov 0x4C,r7

loc_8c18e238:
mul.l r7,r6
mov 0x48,r3
add r4,r3
mov.l @r3,r3
add 0x01,r6
sts macl,r0
add r3,r0
mov.w r5,@r0
mov.l @(0x0C,r4),r2
cmp/hs r2,r6
bf loc_8c18e238

loc_8c18e24e:
mov 0x44,r0
mov.l r5,@(r0,r4) 
rts 
mov 0x00,r0
;==============================================
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
loc_8c18e260:
#data 0x0000
#data 0x0040

#align4
loc_8c18e264:
#data bank1c.loc_8c1c9b20
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000

loc_8c18E280:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
stc sr, r0
mov.w @(loc_8c18E340,pc),r3 ; r3 set to 0xFF0F
shlr2 r0
shlr2 r0
and 0x0F,r0
mov.l r0,@r15
stc sr, r0
and r3,r0
or 0xF0,r0
ldc r0, sr
mov.l @(loc_8c18E348,pc),r1 ; r1 set to 0x8C3437F0
mov.l @(loc_8c18E344,pc),r2 ; r2 set to 0x8C1A4E80
mov.w @(loc_8c18E342,pc),r5 ; r5 set to 0x1840
mov.l @(loc_8c18E34C,pc),r3 ; r3 set to 0x8C17A734
mov.l r2,@r1 ; r1 ??
jsr @r3
mov r2,r4 ; r4 set to 0x8C1A4E80
mov.l @(loc_8c18E350,pc),r13 ; r13 set to 0x8C1A4A00
mov 0x01,r3 ; r3 set to 0x01
mov.w @(loc_8c18E342,pc),r2 ; r2 set to 0x1840
mov 0x00,r6 ; r6 set to 0x00
mov.l @(loc_8c18E344,pc),r4 ; r4 set to 0x8C1A4E80
mov r13,r5 ; r5 set to 0x8C1A4A00
mov.l @(loc_8c18E354,pc),r14 ; r14 set to 0x8C18C740
mov.l r2,@r4 ; r4 ??
mov.l r3,@(0x04,r4)
jsr @r14
mov 0x11,r4 ; r4 set to 0x11
mov r13,r5 ; r5 set to 0x8C1A4A00
mov 0x00,r6 ; r6 set to 0x00
jsr @r14
mov 0x12,r4 ; r4 set to 0x12
mov r13,r5 ; r5 set to 0x8C1A4A00
mov 0x00,r6 ; r6 set to 0x00
jsr @r14
mov 0x13,r4 ; r4 set to 0x13
mov r13,r5 ; r5 set to 0x8C1A4A00
mov 0x00,r6 ; r6 set to 0x00
jsr @r14
mov 0x19,r4 ; r4 set to 0x19
mov r13,r5 ; r5 set to 0x8C1A4A00
mov 0x00,r6 ; r6 set to 0x00
jsr @r14
mov 0x18,r4 ; r4 set to 0x18
mov r13,r5 ; r5 set to 0x8C1A4A00
mov 0x00,r6 ; r6 set to 0x00
jsr @r14
mov 0x17,r4 ; r4 set to 0x17
mov r13,r5 ; r5 set to 0x8C1A4A00
mov 0x00,r6 ; r6 set to 0x00
jsr @r14
mov 0x16,r4 ; r4 set to 0x16
mov r13,r5 ; r5 set to 0x8C1A4A00
mov 0x00,r6 ; r6 set to 0x00
jsr @r14
mov 0x15,r4 ; r4 set to 0x15
mov.l @(loc_8c18E358,pc),r5 ; r5 set to 0x8C1A4CA8
mov 0x00,r6 ; r6 set to 0x00
jsr @r14
mov 0x1C,r4 ; r4 set to 0x1C
mov.l @(loc_8c18E358,pc),r5 ; r5 set to 0x8C1A4CA8
mov 0x00,r6 ; r6 set to 0x00
jsr @r14
mov 0x1B,r4 ; r4 set to 0x1B
mov.l @(loc_8c18E35C,pc),r3 ; r3 set to 0xA05F6884
mov 0x00,r2 ; r2 set to 0x00
mov.l r2,@r3 ; r3 ??
mov.l @(loc_8c18E360,pc),r0 ; r0 set to 0xA05F6888
mov 0x01,r1 ; r1 set to 0x01
mov.l r1,@r0 ; r0 ??
mov.l @r15,r0
stc sr, r2
mov.w @(loc_8c18E340,pc),r1 ; r1 set to 0xFF0F
and 0x0F,r0
shll2 r0
and r1,r2 ; r2 ??
shll2 r0
or r2,r0
ldc r0, sr
mov 0x00,r0 ; r0 set to 0x00
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
rts
mov.l @r15+,r14
;==============================================
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c18E340:
#data 0xFF0F

loc_8c18E342:
#data 0x1840

#align4
loc_8c18E344:
#data bank1a.loc_8c1a4E80

loc_8c18E348:
#data 0x8C3437F0

#align4
loc_8c18E34C:
#data bank17.loc_8c17A734

loc_8c18E350:
#data bank1a.loc_8c1a4A00

loc_8c18E354:
#data loc_8c18C740

loc_8c18E358:
#data bank1a.loc_8c1a4CA8

loc_8c18E35C:
#data 0xA05F6884

#align4
loc_8c18E360:
#data 0xA05F6888
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c18E380:
rts
nop
;==============================================

loc_8c18E384:
mov 0x00,r6 ; r6 set to 0x00
mov.w @(loc_8c18E400,pc),r7 ; r7 set to 0x80
mov.l @(0x08,r4),r5
mov r6,r4 ; r4 set to 0x00

loc_8c18E38C:
mov r5,r3
mov.l @(0x04,r5),r2
add 0x08,r3
add r4,r3
mov.l r2,@r3
mov r5,r3
add 0x08,r3
add r4,r3
add 0x08,r4 ; r4 set to 0x08
cmp/hs r7,r4
bf/s loc_8c18E38C
mov.l r6,@(0x04,r3)
rts
nop
;==============================================

loc_8c18E3A8:
mov.l @(loc_8c18E404,pc),r3 ; r3 set to 0x8C18E384
mov 0x00,r6 ; r6 set to 0x00
mov.w @(loc_8c18E400,pc),r7 ; r7 set to 0x80
mov 0x10,r2 ; r2 set to 0x10
mov.l r3,@(0x14,r4)
mov.l @(loc_8c18E408,pc),r3 ; r3 set to 0x8C18E380
mov.l @(0x08,r4),r5
mov r6,r4 ; r4 set to 0x00
mov.l r2,@r5
mov.l r3,@(0x04,r5)

loc_8c18E3BC:
mov r5,r2 ; r2 ??? bc r5 is ???
mov.l @(0x04,r5),r3 ; r3 ??? bc r5 is ???
add 0x08,r2
add r4,r2
mov.l r3,@r2
mov r5,r2
add 0x08,r2
add r4,r2
add 0x08,r4 ; r4 set to 0x08
cmp/hs r7,r4
bf/s loc_8c18E3BC
mov.l r6,@(0x04,r2)
rts
nop
;==============================================

loc_8c18E3D8:
mov.l @(loc_8c18E410,pc),r2 ; r2 set to 0x8C343800
mov.l @(loc_8c18E40C,pc),r3 ; r3 set to 0x8C18E3A8
mov.l r3,@r2 ; r2 ??
mov.l @(loc_8c18E414,pc),r1 ; r1 set to 0x8C348DE4
mov.l @r1,r0
mov.l @(loc_8c18E420,pc),r4 ; r4 set to 0x8C348DD0
mov.l @(loc_8c18E41C,pc),r5 ; r5 set to 0x8C3437F4
mov.l @(loc_8c18E418,pc),r6 ; r6 set to 0x8C34380C
jmp @r0
nop
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c18E400:
#data 0x0080
#data 0x0000

#align4
loc_8c18E404:
#data loc_8c18E384

loc_8c18E408:
#data loc_8c18E380

loc_8c18E40C:
#data loc_8c18E3A8

loc_8c18E410:
#data 0x8C343800

#align4
loc_8c18E414:
#data 0x8C348DE4

#align4
loc_8c18E418:
#data 0x8C34380C

#align4
loc_8c18E41C:
#data 0x8C3437F4

#align4
loc_8c18E420:
#data 0x8C348DD0
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c18E440:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov.l @(loc_8c18E580,pc),r14 ; r14 set to 0x8C343894
mov 0x0F,r2 ; r2 set to 0x0F
mov.l @(loc_8c18E584,pc),r7 ; r7 set to 0xA05F6908
mov.l @(0x04,r14),r3
mov.l r3,@(0x08,r15)
mov.l r2,@(0x04,r14)  ; r14 ??
mov.l @(0x1C,r14),r3
mov.l @r7,r2 ; r2 ??
and r3,r2
mov.l @(loc_8c18E588,pc),r13 ; r13 set to 0x8C343AE4
mov.l r2,@(0x04,r15)
mov 0x00,r4 ; r4 set to 0x00
mov.l @(0x04,r15),r3
tst r3,r3
bt/s loc_8c18E4A4
mov 0x01,r5 ; r5 set to 0x01
mov.l @(loc_8c18E58C,pc),r11 ; r11 set to 0x8C1C98A8
mov 0x04,r12 ; r12 set to 0x04

loc_8c18E474:
mov.l @(0x04,r15),r3
mov r5,r6 ; r6 set to 0x01
shad r4, r6 ; r6 ??
tst r6,r3
bt loc_8c18E49A
mov r4,r0 ; r0 set to 0x00
shll2 r0 ; r0 set to 0x00
mov.l @(r0,r11),r4 ; r4 ??
mov.l r4,@(0x04,r14)
mov.l r6,@r7 ; r7 ??? bc r6 is ???
mov.l r4,@r13 ; r13 ??? bc r4 is ???
mov r4,r13
mov r14,r3
shll2 r13
add 0x30,r3
shll2 r13
add r3,r13
bra loc_8c18E4F6
nop

loc_8c18E49A:
add 0x01,r4
cmp/ge r12,r4
bf loc_8c18E474
bra loc_8c18E508
nop

loc_8c18E4A4:
mov.l @(0x18,r14),r3
mov.l @(loc_8c18E590,pc),r12 ; r12 set to 0xA05F6900
mov.l @r12,r2
and r3,r2
mov.l r2,@r15
mov.l @r15,r3
tst r3,r3
bt loc_8c18E508
mov.l @(loc_8c18E598,pc),r7 ; r7 set to 0xFFA0002C
mov 0x03,r11 ; r11 set to 0x03
mov.l @(loc_8c18E594,pc),r8 ; r8 set to 0x8C1C9850
mov 0x16,r1 ; r1 set to 0x16
mov 0xFC,r10 ; r10 set to 0xFFFFFFFC

loc_8c18E4BE:
mov.l @r15,r3
mov r5,r6
shad r4, r6
tst r6,r3
bt loc_8c18E502
mov r4,r0
shll2 r0
mov.l @(r0,r8),r4
mov r4,r0
cmp/eq 0x12,r0
bf/s loc_8c18E4DE
mov.l r4,@(0x04,r14)
mov.l @r7,r5
and r10,r5
bra loc_8c18E4E6
mov.l r5,@r7

loc_8c18e4de:
mov r4,r0
cmp/eq 0x14,r0 
bf loc_8c18e4e6
or r11,r6

loc_8c18E4E6:
mov.l r6,@r12
mov.l r4,@r13
mov r4,r13
mov r14,r3
shll2 r13
add 0x30,r3
shll2 r13
add r3,r13

loc_8c18E4F6:
mov.l @(loc_8c18E588,pc),r4 ; r4 set to 0x8C343AE4, r4 set to 0x8C343AE4
mov.l @r13,r2
jsr @r2
mov.l @(0x0C,r13),r5
bra loc_8c18E508
nop

loc_8c18e502:
add 0x01,r4
cmp/ge r1,r4
bf loc_8c18e4be

loc_8c18E508:
mov.l @(0x08,r15),r3
mov 0x00,r0 ; r0 set to 0x00
mov.l r3,@(0x04,r14)
add 0x0C,r15
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c18E520:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov.l @(loc_8c18E580,pc),r14 ; r14 set to 0x8C343894
mov 0x0F,r2 ; r2 set to 0x0F
mov.l @(loc_8c18E584,pc),r7 ; r7 set to 0xA05F6908
mov.l @(0x04,r14),r3
mov.l r3,@(0x08,r15)
mov.l r2,@(0x04,r14)  ; r14 ??
mov.l @(0x1C,r14),r3
mov.l @r7,r2 ; r2 ??
and r3,r2
mov.l @(loc_8c18E588,pc),r13 ; r13 set to 0x8C343AE4
mov.l @(loc_8c18E59C,pc),r12 ; r12 set to 0x8C1A4868
mov 0x00,r4 ; r4 set to 0x00
mov.l r2,@(0x04,r15)
mov.l @(0x04,r15),r3
tst r3,r3
bt/s loc_8c18E5A0
mov 0x01,r5 ; r5 set to 0x01
mov.l @(loc_8c18E58C,pc),r10 ; r10 set to 0x8C1C98A8
mov 0x04,r11 ; r11 set to 0x04

loc_8c18E556:
mov.l @(0x04,r15),r3
mov r5,r6 ; r6 set to 0x01
shad r4, r6 ; r6 ??
tst r6,r3
bt loc_8c18E56C
mov r4,r0 ; r0 set to 0x00
shll2 r0 ; r0 set to 0x00
mov.l @(r0,r10),r4 ; r4 ??
mov.l r4,@(0x04,r14)
bra loc_8c18E5E0
mov.l r6,@r7

loc_8c18E56C:
add 0x01,r4
cmp/ge r11,r4
bf loc_8c18E556
bra loc_8c18E600
nop
#data 0x0009
#data 0x00090009
#data 0x00090009

#align4
loc_8c18E580:
#data 0x8C343894

#align4
loc_8c18E584:
#data 0xA05F6908

#align4
loc_8c18E588:
#data 0x8C343AE4

#align4
loc_8c18E58C:
#data bank1c.loc_8c1c98A8

loc_8c18E590:
#data 0xA05F6900

#align4
loc_8c18E594:
#data bank1c.loc_8c1c9850

loc_8c18E598:
#data 0xFFA0002C

#align4
loc_8c18E59C:
#data bank1a.loc_8c1a4868


loc_8c18E5A0:
mov.l @(0x18,r14),r3
mov.l @(loc_8c18E640,pc),r11 ; r11 set to 0xA05F6900
mov.l @r11,r2
and r3,r2
mov.l r2,@r15
mov.l @r15,r3
tst r3,r3
bt loc_8c18E600
mov.l @(loc_8c18E644,pc),r7 ; r7 set to 0xFFA0002C
mov 0x03,r10 ; r10 set to 0x03
mov 0xFC,r8 ; r8 set to 0xFFFFFFFC
mov 0x16,r1 ; r1 set to 0x16

loc_8c18E5B8:
mov.l @r15,r3
mov r5,r6
shad r4, r6
tst r6,r3
bt loc_8c18E5FA
mov.l @(loc_8c18E648,pc),r0 ; r0 set to 0x8C1C9850
shll2 r4
mov.l @(r0,r4),r4
mov r4,r0 ; r0 ??? bc r4 is ???
cmp/eq 0x12,r0
bf/s loc_8c18E5D8
mov.l r4,@(0x04,r14)
mov.l @r7,r5
and r8,r5
bra loc_8c18E5DE
mov.l r5,@r7

#align4
loc_8c18e5d8:
cmp/eq 0x14,r0 
bf loc_8c18e5de
or r10,r6

loc_8c18E5DE:
mov.l r6,@r11

loc_8c18E5E0:
mov.l r4,@r13
mov r4,r13
mov r14,r3
shll2 r13
add 0x30,r3
mov.l @(loc_8c18E64C,pc),r5 ; r5 set to 0x8C343AE4, r5 set to 0x8C343AE4
shll2 r13
add r3,r13
mov.l @(0x0C,r13),r6
jsr @r12
mov.l @r13,r4
bra loc_8c18E600
nop

loc_8c18e5fa:
add 0x01,r4
cmp/ge r1,r4
bf loc_8c18e5b8

loc_8c18E600:
mov.l @(0x08,r15),r2
mov 0x00,r0 ; r0 set to 0x00
mov.l r2,@(0x04,r14)
add 0x0C,r15
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8c18E618:
rts
mov 0x01,r0
;==============================================

loc_8c18E61C:
sts.l pr,@-r15
bsr loc_8c18E7AE
nop
lds.l @r15+,pr
rts
mov 0x00,r0
;==============================================
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c18E640:
#data 0xA05F6900

#align4
loc_8c18E644:
#data 0xFFA0002C

#align4
loc_8c18E648:
#data bank1c.loc_8c1c9850

loc_8c18E64C:
#data 0x8C343AE4
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c18E660:
#data 0xE5002FE6
#data 0xD3272FD6
#data 0x96494F22
#data 0x1435D226
#data 0x420B5E42
#data 0xD32564E3
#data 0xED00E220
#data 0x63231E39
#data 0x2E224315
#data 0x65D38F18

#align4
loc_8c18E688:
#data 0x63E36453
#data 0xD21F4408
#data 0x44087330
#data 0x2322334C
#data 0x62E363E3
#data 0x72307330
#data 0x324C334C
#data 0x63E313D1
#data 0x733012D2
#data 0x343C7501
#data 0x62E214D3
#data 0x8BE73523

#align4
loc_8c18E6B8:
#data 0xD115D016
#data 0x33106302
#data 0xD4158B02
#data 0x0009A001

loc_8c18E6C8:
#data 0xD414

loc_8c18E6CA:
#data 0xB039
#data 0x90180009
#data 0x0E26E20E
#data 0x0ED67004
#data 0x4F26E000
#data 0x000B6DF6
#data 0x6EF6
;==============================================

loc_8c18E6E2:
mov.l @(loc_8c18E724,pc),r2 ; r2 set to 0x8C343AD8
mov.l @(loc_8c18E720,pc),r3 ; r3 set to 0x8C18E660
mov.l @(loc_8c18E728,pc),r1 ; r1 set to 0x8C348DE4
mov.l r3,@r2 ; r2 ??
mov.l @r1,r0
mov.l @(loc_8c18E734,pc),r4 ; r4 set to 0x8C348DD0
mov.l @(loc_8c18E730,pc),r5 ; r5 set to 0x8C343ACC
mov.l @(loc_8c18E72C,pc),r6 ; r6 set to 0x8C343894
jmp @r0
nop
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x02300238

#align4
loc_8c18E704:
#data loc_8c18E61C

loc_8c18E708:
#data bank12.loc_8c129728

loc_8c18E70C:
#data loc_8c18E618
#data 0x00010000
#data 0x8C343B10

#align4
loc_8c18E718:
#data loc_8c18E520

loc_8c18E71C:
#data loc_8c18E440

loc_8c18E720:
#data loc_8c18E660

loc_8c18E724:
#data 0x8C343AD8

#align4
loc_8c18E728:
#data 0x8C348DE4

#align4
loc_8c18E72C:
#data 0x8C343894

#align4
loc_8c18E730:
#data 0x8C343ACC

#align4
loc_8c18E734:
#data 0x8C348DD0
#data 0x00090009
#data 0x00090009

#align4
loc_8c18E740:
#data 0xD5380002
#data 0x4009D638
#data 0xC90F4009
#data 0x63621502
#data 0x1533D736
#data 0x00026272
#data 0x15249362
#data 0xCBF02039
#data 0x0122400E
#data 0x011E905D
#data 0x89053410
#data 0x63030222
#data 0x154B151A
#data 0x2242323C

#align4
loc_8c18E778:
#data 0x2642E400
#data 0xD22C2742
#data 0x2242E4FF
#data 0x2342D32B
#data 0xE00ED12B
#data 0x15071516
#data 0x26125156
#data 0x27025057
#data 0x01025052
#data 0xC90F9240
#data 0x21294008
#data 0x201B4008
#data 0x000B400E
#data 0x0009
;==============================================

loc_8c18e7ae:
stc sr, r0
mov.l @(loc_8C18E824,pc),r4
mov.l @(loc_8C18E828,pc),r6
shlr2 r0
shlr2 r0
and 0x0F,r0 
mov.l r0,@(0x08,r4) 
mov.l @r6,r3
mov.l @(loc_8C18E82C,pc),r7
mov.l r3,@(0x0C,r4) 
mov.l @r7,r2
stc sr, r0
mov.w @(loc_8C18E820,pc),r3
mov.l r2,@(0x10,r4) 
and r3,r0
or 0xF0,r0 
ldc r0, sr 
stc vbr, r5
mov.w @(loc_8C18E822,pc),r0
mov.l @(0x2C,r4),r3
mov.l @(r0,r5),r5
cmp/eq r5,r3
bt/s loc_8c18e7e8
mov 0x00,r5
stc vbr, r1
mov.l @(0x28,r4),r2
mov r0,r3
add r3,r1
mov.l r2,@r1

loc_8c18e7e8:
mov.l r5,@r6
mov.l r5,@r7
mov.l @(loc_8C18E830,pc),r2
mov 0xFF,r3
mov.l r3,@r2
mov.l @(loc_8C18E834,pc),r0
mov.l r3,@r0
mov.l r5,@(0x18,r4) 
mov.l r5,@(0x1C,r4) 
mov.l @(0x18,r4),r3
mov.l r3,@r6
mov.l @(0x1C,r4),r1
mov.l r1,@r7
mov.l @(0x08,r4),r0
stc sr, r3
mov.w @(loc_8C18E820,pc),r1
and 0x0F,r0 
shll2 r0
and r1,r3
shll2 r0
or r3,r0
ldc r0, sr 
rts 
nop 
;==============================================
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009

loc_8C18E820:
#data 0xFF0F

loc_8C18E822:
#data 0x0224

loc_8C18E824:
#data 0x3894
#data 0x8C34

#align4
loc_8C18E828:
#data 0xA05F6930

#align4
loc_8C18E82C:
#data 0xA05F6938

#align4
loc_8C18E830:
#data 0xA05F6900

#align4
loc_8C18E834:
#data 0xA05F6908
#data 0x0FEC
#data 0x0028
#data 0x0000
#data 0x0000

loc_8c18E840:
sts.l pr,@-r15
mov.w @(loc_8c18E8C0,pc),r0 ; r0 set to 0xFF04
add r0,r15
mov.l @(loc_8c18E8D8,pc),r2 ; r2 set to 0x8C190C58
mov.l @(loc_8c18E8D4,pc),r3 ; r3 set to 0x8C343430
jsr @r2
mov.l r4,@r3 ; r3 ??? bc r4 is ???
mov.w @(loc_8c18E8C2,pc),r3 ; r3 set to 0x353
mov 0x01,r4 ; r4 set to 0x01
mov.l r3,@(0x08,r15)
mov.l @(loc_8c18E8D4,pc),r3 ; r3 set to 0x8C343430
mov.l @r3,r0 ; r0 ??
and r4,r0
cmp/eq 0x01,r0
bt loc_8c18E870
mov.l @(loc_8c18E8D4,pc),r2 ; r2 set to 0x8C343430
mov.l @r2,r0
tst 0x2C,r0
bt loc_8c18E870
tst r4,r4
bt loc_8c18E870
mov.w @(loc_8c18E8C4,pc),r3 ; r3 set to 0x218
bra loc_8c18E874
mov.l r3,@(0x14,r15)

loc_8c18E870:
mov.w @(loc_8c18E8C6,pc),r1 ; r1 set to 0x10C
mov.l r1,@(0x14,r15)

loc_8c18E874:
mov.w @(loc_8c18E8C8,pc),r3 ; r3 set to 0x8C, r3 set to 0x8C
mov.w @(loc_8c18E8CA,pc),r2 ; r2 set to 0x334, r2 set to 0x334
mov.l r3,@r15
mov.l @(loc_8c18E8D4,pc),r3 ; r3 set to 0x8C343430, r3 set to 0x8C343430
mov.l r2,@(0x04,r15)
mov.l @r3,r0
and r4,r0
cmp/eq 0x01,r0
bt loc_8c18E89C
mov.l @(loc_8c18E8D4,pc),r2 ; r2 set to 0x8C343430, r2 set to 0x8C343430
mov.l @r2,r0
tst 0x2C,r0
bt loc_8c18E89C
tst r4,r4
bt loc_8c18E89C
mov.w @(loc_8c18E8CC,pc),r2 ; r2 set to 0x214, r2 set to 0x214
mov 0x24,r3 ; r3 set to 0x24, r3 set to 0x24
mov.l r3,@(0x0C,r15)
bra loc_8c18E8A4
mov.l r2,@(0x10,r15)

loc_8c18E89C:
mov.w @(loc_8c18E8CE,pc),r3 ; r3 set to 0x10A
mov 0x12,r1 ; r1 set to 0x12
mov.l r1,@(0x0C,r15)
mov.l r3,@(0x10,r15)

loc_8c18E8A4:
mov.l @(loc_8c18E8D4,pc),r3 ; r3 set to 0x8C343430, r3 set to 0x8C343430
mov 0x57,r2 ; r2 set to 0x57, r2 set to 0x57
mov.l r2,@(0x18,r15)
mov.l @r3,r0
tst 0x20,r0
bt/s loc_8c18E8E0
mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15
mov.w @(loc_8c18E8D0,pc),r1 ; r1 set to 0x104, r1 set to 0x104
bra loc_8c18E8E2
nop
#data 0x00090009
#data 0x00090009

loc_8c18E8C0:
#data 0xFF04

loc_8c18E8C2:
#data 0x0353

loc_8c18E8C4:
#data 0x0218

loc_8c18E8C6:
#data 0x010C

loc_8c18E8C8:
#data 0x008C

loc_8c18E8CA:
#data 0x0334

loc_8c18E8CC:
#data 0x0214

loc_8c18E8CE:
#data 0x010A

loc_8c18E8D0:
#data 0x0104
#data 0x0000

#align4
loc_8c18E8D4:
#data 0x8C343430

#align4
loc_8c18E8D8:
#data bank19.loc_8c190C58
#data 0x00090009


loc_8c18E8E0:
mov.w @(loc_8c18E960,pc),r1 ; r1 set to 0x102

loc_8c18E8E2:
mov 0x74,r0 ; r0 set to 0x74, r0 set to 0x74
mov.l @(loc_8c18E968,pc),r3 ; r3 set to 0x8C343430, r3 set to 0x8C343430
mov.l r1,@(r0,r15)
mov 0x78,r0 ; r0 set to 0x78, r0 set to 0x78
mov.l r5,@(r0,r15)
mov.l @r3,r0 ; r0 ??, r0 ??
and r4,r0
cmp/eq 0x01,r0
bt loc_8c18E906
mov.l @(loc_8c18E968,pc),r2 ; r2 set to 0x8C343430, r2 set to 0x8C343430
mov.l @r2,r0
tst 0x2C,r0
bt loc_8c18E906
tst r4,r4
bt loc_8c18E906
mov 0x0C,r3 ; r3 set to 0x0C, r3 set to 0x0C
bra loc_8c18E90A
mov.l r3,@(0x1C,r15)

loc_8c18E906:
mov 0x06,r1 ; r1 set to 0x06
mov.l r1,@(0x1C,r15)

loc_8c18E90A:
mov.l @(loc_8c18E968,pc),r3 ; r3 set to 0x8C343430, r3 set to 0x8C343430
mov.l @r3,r0
and r4,r0
cmp/eq 0x01,r0
bt loc_8c18E926
mov.l @(loc_8c18E968,pc),r2 ; r2 set to 0x8C343430, r2 set to 0x8C343430
mov.l @r2,r0
tst 0x2C,r0
bt loc_8c18E926
tst r4,r4
bt loc_8c18E926
mov.w @(loc_8c18E962,pc),r3 ; r3 set to 0x16C, r3 set to 0x16C
bra loc_8c18E92A
mov.l r3,@(0x20,r15)

loc_8c18E926:
mov.w @(loc_8c18E964,pc),r1 ; r1 set to 0x319
mov.l r1,@(0x20,r15)

loc_8c18E92A:
mov.l @(loc_8c18E968,pc),r3 ; r3 set to 0x8C343430, r3 set to 0x8C343430
mov.l @r3,r0
and r4,r0
cmp/eq 0x01,r0
bt loc_8c18E980
mov.l @(loc_8c18E968,pc),r2 ; r2 set to 0x8C343430, r2 set to 0x8C343430
mov.l @r2,r0
tst 0x2C,r0
bt loc_8c18E980
tst r4,r4
bt loc_8c18E980
mov 0x1F,r3 ; r3 set to 0x1F, r3 set to 0x1F
bra loc_8c18E984
mov.l r3,@(0x24,r15)
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c18E960:
#data 0x0102

loc_8c18E962:
#data 0x016C

loc_8c18E964:
#data 0x0319
#data 0x0000

#align4
loc_8c18E968:
#data 0x8C343430
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c18E980:
mov 0x0F,r1 ; r1 set to 0x0F
mov.l r1,@(0x24,r15)

loc_8c18E984:
mov.l @(loc_8c18E9E0,pc),r3 ; r3 set to 0x8C343430, r3 set to 0x8C343430
mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
mov.l r4,@(0x28,r15)
mov.l r5,@(0x2C,r15)
mov.l @r3,r0
and r4,r0
cmp/eq 0x01,r0
bf loc_8c18E99C
tst r5,r5
bt loc_8c18E9B4
bra loc_8c18E9B0
nop

loc_8c18E99C:
mov.l @(loc_8c18E9E0,pc),r2 ; r2 set to 0x8C343430
mov.l @r2,r0
tst 0x2C,r0
bt loc_8c18E9AC
tst r4,r4
bt loc_8c18E9B4
bra loc_8c18E9B0
nop

loc_8c18E9AC:
tst r5,r5
bt loc_8c18E9B4

loc_8c18E9B0:
bra loc_8c18E9B6
mov.l r4,@(0x30,r15)

loc_8c18E9B4:
mov.l r5,@(0x30,r15)

loc_8c18E9B6:
mov 0x40,r0 ; r0 set to 0x40, r0 set to 0x40
mov.l @(loc_8c18E9E0,pc),r3 ; r3 set to 0x8C343430, r3 set to 0x8C343430
mov 0x16,r7 ; r7 set to 0x16, r7 set to 0x16
mov.l r5,@(0x34,r15)
mov.l r5,@(0x38,r15)
mov.l r5,@(0x3C,r15)
mov.l r5,@(r0,r15)
mov 0x44,r0 ; r0 set to 0x44, r0 set to 0x44
mov.l r5,@(r0,r15)
mov 0x70,r0 ; r0 set to 0x70, r0 set to 0x70
mov.l r7,@(r0,r15)
mov.l @r3,r0 ; r0 ??, r0 ??
tst 0x10,r0
bt loc_8c18EA00
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6C
bra loc_8c18EA04
mov.l r5,@(r0,r15)
#data 0x00090009
#data 0x00090009

#align4
loc_8c18E9E0:
#data 0x8C343430
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c18EA00:
mov 0x6C,r0 ; r0 set to 0x6C
mov.l r4,@(r0,r15)

loc_8c18EA04:
mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
mov.w @(loc_8c18EA60,pc),r3 ; r3 set to 0xA0, r3 set to 0xA0
mov.l r4,@(r0,r15)
mov 0x4C,r0 ; r0 set to 0x4C, r0 set to 0x4C
mov.l r5,@(r0,r15)
mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
mov.l r5,@(r0,r15)
mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
mov.l r5,@(r0,r15)
mov 0x58,r0 ; r0 set to 0x58, r0 set to 0x58
mov.l r5,@(r0,r15)
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C
mov.l r5,@(r0,r15)
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
mov.l r5,@(r0,r15)
mov.w @(loc_8c18EA62,pc),r0 ; r0 set to 0xF8, r0 set to 0xF8
mov.w @(loc_8c18EA64,pc),r2 ; r2 set to 0x1E0, r2 set to 0x1E0
mov.l r3,@(r0,r15)
mov 0x64,r0 ; r0 set to 0x64, r0 set to 0x64
mov.l r2,@(r0,r15)
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
mov.l @(loc_8c18EA68,pc),r3 ; r3 set to 0x8C343430, r3 set to 0x8C343430
mov.l r5,@(r0,r15)
mov.l @r3,r0 ; r0 ??, r0 ??
and r4,r0
cmp/eq 0x01,r0
bf/s loc_8c18EA44
mov 0x17,r6 ; r6 set to 0x17, r6 set to 0x17
tst r5,r5
bt loc_8c18EA80
bra loc_8c18EA58
nop

loc_8c18EA44:
mov.l @(loc_8c18EA68,pc),r2 ; r2 set to 0x8C343430
mov.l @r2,r0
tst 0x2C,r0
bt loc_8c18EA54
tst r4,r4
bt loc_8c18EA80
bra loc_8c18EA58
nop

loc_8c18EA54:
tst r5,r5
bt loc_8c18EA80

loc_8c18EA58:
mov.w @(loc_8c18EA66,pc),r0 ; r0 set to 0xF0, r0 set to 0xF0
bra loc_8c18EA84
mov.l r6,@(r0,r15)
#data 0x0009

loc_8c18EA60:
#data 0x00A0

loc_8c18EA62:
#data 0x00F8

loc_8c18EA64:
#data 0x01E0

loc_8c18EA66:
#data 0x00F0

#align4
loc_8c18EA68:
#data 0x8C343430
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c18EA80:
mov.w @(loc_8c18EAC0,pc),r0 ; r0 set to 0xF0
mov.l r7,@(r0,r15)

loc_8c18EA84:
mov.w @(loc_8c18EAC2,pc),r0 ; r0 set to 0xF4, r0 set to 0xF4
mov.w @(loc_8c18EAC0,pc),r3 ; r3 set to 0xF0, r3 set to 0xF0
mov.l @(loc_8c18EAC8,pc),r2 ; r2 set to 0x8C3434E4, r2 set to 0x8C3434E4
mov.l r6,@(r0,r15)
mov.l r3,@r2 ; r2 ??, r2 ??
mov.l @(0x0C,r15),r1
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
mov r2,r0 ; r0 ??? bc r2 is ???, r0 ??? bc r2 is ???
cmp/gt r1,r3
addc r3,r1
shar r1
mov.l @r0,r3 ; r3 ??? bc r0 is ???, r3 ??? bc r0 is ???
add r3,r1
mov.l @(loc_8c18EACC,pc),r3 ; r3 set to 0x8C3434DC, r3 set to 0x8C3434DC
mov.l r1,@r3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???
mov.l @(loc_8c18EAD0,pc),r1 ; r1 set to 0x8C3434E0, r1 set to 0x8C3434E0
mov.l @(0x0C,r15),r2
mov.l r2,@r1 ; r1 ??? bc r2 is ???, r1 ??? bc r2 is ???
mov.l @(loc_8c18EAD4,pc),r0 ; r0 set to 0x8C343438, r0 set to 0x8C343438
mov.l @r0,r2
jsr @r2
mov r15,r4
mov.w @(loc_8c18EAC4,pc),r1 ; r1 set to 0xFC, r1 set to 0xFC
add r1,r15
lds.l @r15+,pr
rts
mov 0x00,r0
;==============================================
#data 0x0009
#data 0x00090009

loc_8c18EAC0:
#data 0x00F0

loc_8c18EAC2:
#data 0x00F4

loc_8c18EAC4:
#data 0x00FC
#data 0x0000

#align4
loc_8c18EAC8:
#data 0x8C3434E4

#align4
loc_8c18EACC:
#data 0x8C3434DC

#align4
loc_8c18EAD0:
#data 0x8C3434E0

#align4
loc_8c18EAD4:
#data 0x8C343438
#data 0x00000000
#data 0x00000000


loc_8c18EAE0:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
mov.w @(loc_8c18EBE0,pc),r0 ; r0 set to 0xFF04
add r0,r15
mov.l @(loc_8c18EBFC,pc),r3 ; r3 set to 0x8C343430
mov r4,r13
mov.l r4,@r3 ; r3 ??? bc r4 is ???
mov.l @(loc_8c18EC00,pc),r2 ; r2 set to 0x8C190C58
jsr @r2
mov r13,r4
mov.w @(loc_8c18EBE2,pc),r3 ; r3 set to 0x353
mov 0x74,r0 ; r0 set to 0x74
mov.w @(loc_8c18EBE4,pc),r2 ; r2 set to 0x211
mov 0x00,r14 ; r14 set to 0x00
mov.l r3,@(0x08,r15)
mov 0x24,r5 ; r5 set to 0x24
mov.w @(loc_8c18EBE6,pc),r3 ; r3 set to 0x88
mov.w @(loc_8c18EBEA,pc),r4 ; r4 set to 0x208
mov.l r2,@(0x14,r15)
mov.l r3,@r15
mov 0x51,r3 ; r3 set to 0x51
mov.w @(loc_8c18EBE8,pc),r2 ; r2 set to 0x343
mov.l r2,@(0x04,r15)
mov 0x03,r2 ; r2 set to 0x03
mov.l r5,@(0x0C,r15)
mov.l r4,@(0x10,r15)
mov.l r3,@(0x18,r15)
mov.w @(loc_8c18EBEC,pc),r3 ; r3 set to 0x319
mov.l r2,@(0x1C,r15)
mov 0x0F,r2 ; r2 set to 0x0F
mov.l r3,@(0x20,r15)
mov 0x15,r3 ; r3 set to 0x15
mov.l r2,@(0x24,r15)
mov.l r4,@(r0,r15)
mov 0x78,r0 ; r0 set to 0x78
mov.l r3,@(r0,r15)
mov 0x40,r0 ; r0 set to 0x40
mov.l r14,@(0x34,r15)
mov.l r14,@(0x38,r15)
mov.l r14,@(0x3C,r15)
mov.l r14,@(r0,r15)
mov 0x44,r0 ; r0 set to 0x44
mov.l r14,@(r0,r15)
mov 0x70,r0 ; r0 set to 0x70
mov 0x16,r3 ; r3 set to 0x16
mov.l r3,@(r0,r15)
mov 0x10,r3 ; r3 set to 0x10
tst r3,r13
bt/s loc_8c18EB4C
mov 0x01,r4 ; r4 set to 0x01
mov 0x6C,r0 ; r0 set to 0x6C
bra loc_8c18EB50
mov.l r14,@(r0,r15)

loc_8c18EB4C:
mov 0x6C,r0 ; r0 set to 0x6C
mov.l r4,@(r0,r15)

loc_8c18EB50:
mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
mov.w @(loc_8c18EBEE,pc),r6 ; r6 set to 0x1E0, r6 set to 0x1E0
mov.w @(loc_8c18EBF0,pc),r3 ; r3 set to 0x90, r3 set to 0x90
mov.l r14,@(0x28,r15)
mov.l r14,@(0x2C,r15)
mov.l r14,@(0x30,r15)
mov.l r4,@(r0,r15)
mov 0x4C,r0 ; r0 set to 0x4C, r0 set to 0x4C
mov.l r14,@(r0,r15)
mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
mov.l r14,@(r0,r15)
mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
mov.l r14,@(r0,r15)
mov 0x58,r0 ; r0 set to 0x58, r0 set to 0x58
mov.l r14,@(r0,r15)
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C
mov.l r14,@(r0,r15)
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
mov.l r14,@(r0,r15)
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
mov.l r14,@(r0,r15)
mov 0x64,r0 ; r0 set to 0x64, r0 set to 0x64
mov.l r6,@(r0,r15)
mov 0x23,r4 ; r4 set to 0x23, r4 set to 0x23
mov.w @(loc_8c18EBF2,pc),r0 ; r0 set to 0xF8, r0 set to 0xF8
mov.l r3,@(r0,r15)
add 0x15,r3 ; r3 set to 0xA5, r3 set to 0xA5
mov.w @(loc_8c18EBF4,pc),r0 ; r0 set to 0xF0, r0 set to 0xF0
mov.l r4,@(r0,r15)
mov.w @(loc_8c18EBF6,pc),r0 ; r0 set to 0xF4, r0 set to 0xF4
mov.l r4,@(r0,r15)
mov.w @(loc_8c18EBF2,pc),r0 ; r0 set to 0xF8, r0 set to 0xF8
mov.l r3,@(r0,r15)
mov.w @(loc_8c18EBF4,pc),r0 ; r0 set to 0xF0, r0 set to 0xF0
mov.l @(loc_8c18EC04,pc),r3 ; r3 set to 0x8C3434E4, r3 set to 0x8C3434E4
mov.l r5,@(r0,r15)
mov.w @(loc_8c18EBF6,pc),r0 ; r0 set to 0xF4, r0 set to 0xF4
mov.l r5,@(r0,r15)
mov.l r6,@r3 ; r3 ??, r3 ??
mov r3,r0 ; r0 ??? bc r3 is ???, r0 ??? bc r3 is ???
mov.l @r0,r2
mov.l @(0x0C,r15),r1
add r2,r1
mov.l @(loc_8c18EC08,pc),r2 ; r2 set to 0x8C3434DC, r2 set to 0x8C3434DC
mov.l r1,@r2 ; r2 ??? bc r1 is ???, r2 ??? bc r1 is ???
mov.l @(loc_8c18EC0C,pc),r1 ; r1 set to 0x8C3434E0, r1 set to 0x8C3434E0
mov.l @(0x0C,r15),r0
mov.l r0,@r1 ; r1 ??? bc r0 is ???, r1 ??? bc r0 is ???
mov.l @(loc_8c18EC10,pc),r0 ; r0 set to 0x8C343438, r0 set to 0x8C343438
mov.l @r0,r3
jsr @r3
mov r15,r4 ; r4 ??? bc r15 is ???, r4 ??? bc r15 is ???
mov.w @(loc_8c18EBF8,pc),r1 ; r1 set to 0xFC, r1 set to 0xFC
mov r14,r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
add r1,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c18EBE0:
#data 0xFF04

loc_8c18EBE2:
#data 0x0353

loc_8c18EBE4:
#data 0x0211

loc_8c18EBE6:
#data 0x0088

loc_8c18EBE8:
#data 0x0343

loc_8c18EBEA:
#data 0x0208

loc_8c18EBEC:
#data 0x0319

loc_8c18EBEE:
#data 0x01E0

loc_8c18EBF0:
#data 0x0090

loc_8c18EBF2:
#data 0x00F8

loc_8c18EBF4:
#data 0x00F0

loc_8c18EBF6:
#data 0x00F4

loc_8c18EBF8:
#data 0x00FC
#data 0x0000

#align4
loc_8c18EBFC:
#data 0x8C343430

#align4
loc_8c18EC00:
#data bank19.loc_8c190C58

loc_8c18EC04:
#data 0x8C3434E4

#align4
loc_8c18EC08:
#data 0x8C3434DC

#align4
loc_8c18EC0C:
#data 0x8C3434E0

#align4
loc_8c18EC10:
#data 0x8C343438
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c18EC20:
mov.l r14,@-r15
sts.l pr,@-r15
mov.w @(loc_8c18ECA0,pc),r0 ; r0 set to 0xFF04
add r0,r15
mov.l @(loc_8c18ECB0,pc),r3 ; r3 set to 0x8C343430
mov r4,r14
mov.l r4,@r3 ; r3 ??? bc r4 is ???
mov.l @(loc_8c18ECB4,pc),r2 ; r2 set to 0x8C190C58
jsr @r2
mov r14,r4
mov 0x01,r6 ; r6 set to 0x01
mov r14,r5
and r6,r5
mov.w @(loc_8c18ECA2,pc),r3 ; r3 set to 0x359
mov r5,r0 ; r0 ??? bc r5 is ???
cmp/eq 0x01,r0
mov.l r3,@(0x08,r15)
bt loc_8c18EC54
mov 0x2C,r3 ; r3 set to 0x2C
tst r14,r3
bt loc_8c18EC54
tst r6,r6
bt loc_8c18EC54
mov.w @(loc_8c18ECA4,pc),r2 ; r2 set to 0x20C
bra loc_8c18EC58
mov.l r2,@(0x14,r15)

loc_8c18EC54:
mov.w @(loc_8c18ECA6,pc),r1 ; r1 set to 0x106
mov.l r1,@(0x14,r15)

loc_8c18EC58:
mov.w @(loc_8c18ECA8,pc),r2 ; r2 set to 0x345, r2 set to 0x345
mov r5,r0
mov.w @(loc_8c18ECAA,pc),r4 ; r4 set to 0x102, r4 set to 0x102
mov 0x7E,r3 ; r3 set to 0x7E, r3 set to 0x7E
cmp/eq 0x01,r0
mov.l r3,@r15
mov.l r2,@(0x04,r15)
bt/s loc_8c18EC7A
mov 0x12,r7 ; r7 set to 0x12, r7 set to 0x12
mov 0x2C,r3 ; r3 set to 0x2C, r3 set to 0x2C
tst r14,r3
bt loc_8c18EC7A
mov.w @(loc_8c18ECAC,pc),r3 ; r3 set to 0x204, r3 set to 0x204
mov 0x24,r2 ; r2 set to 0x24, r2 set to 0x24
mov.l r2,@(0x0C,r15)
bra loc_8c18EC7E
mov.l r3,@(0x10,r15)

loc_8c18EC7A:
mov.l r7,@(0x0C,r15)
mov.l r4,@(0x10,r15)

loc_8c18EC7E:
mov 0x20,r2 ; r2 set to 0x20, r2 set to 0x20
mov 0x3F,r3 ; r3 set to 0x3F, r3 set to 0x3F
tst r14,r2
mov.l r3,@(0x18,r15)
bt loc_8c18ECC0
mov.w @(loc_8c18ECAE,pc),r1 ; r1 set to 0x104, r1 set to 0x104
mov 0x74,r0 ; r0 set to 0x74, r0 set to 0x74
bra loc_8c18ECC4
mov.l r1,@(r0,r15)
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c18ECA0:
#data 0xFF04

loc_8c18ECA2:
#data 0x0359

loc_8c18ECA4:
#data 0x020C

loc_8c18ECA6:
#data 0x0106

loc_8c18ECA8:
#data 0x0345

loc_8c18ECAA:
#data 0x0102

loc_8c18ECAC:
#data 0x0204

loc_8c18ECAE:
#data 0x0104

#align4
loc_8c18ECB0:
#data 0x8C343430

#align4
loc_8c18ECB4:
#data bank19.loc_8c190C58
#data 0x00090009
#data 0x00090009


loc_8c18ECC0:
mov 0x74,r0 ; r0 set to 0x74
mov.l r4,@(r0,r15)

loc_8c18ECC4:
mov 0x78,r0 ; r0 set to 0x78, r0 set to 0x78
mov 0x15,r3 ; r3 set to 0x15, r3 set to 0x15
mov.l r3,@(r0,r15)
mov r5,r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???
cmp/eq 0x01,r0
bt loc_8c18ECDC
mov 0x2C,r3 ; r3 set to 0x2C, r3 set to 0x2C
tst r14,r3
bt loc_8c18ECDC
mov 0x06,r2 ; r2 set to 0x06, r2 set to 0x06
bra loc_8c18ECE0
mov.l r2,@(0x1C,r15)

loc_8c18ECDC:
mov 0x03,r1 ; r1 set to 0x03
mov.l r1,@(0x1C,r15)

loc_8c18ECE0:
mov r5,r0
cmp/eq 0x01,r0
bt loc_8c18ECF2
mov 0x2C,r3 ; r3 set to 0x2C, r3 set to 0x2C
tst r14,r3
bt loc_8c18ECF2
mov.w @(loc_8c18ED20,pc),r2 ; r2 set to 0x16C, r2 set to 0x16C
bra loc_8c18ECF6
mov.l r2,@(0x20,r15)

loc_8c18ECF2:
mov.w @(loc_8c18ED22,pc),r1 ; r1 set to 0x319
mov.l r1,@(0x20,r15)

loc_8c18ECF6:
mov r5,r0
cmp/eq 0x01,r0
bt loc_8c18ED08
mov 0x2C,r3 ; r3 set to 0x2C, r3 set to 0x2C
tst r14,r3
bt loc_8c18ED08
mov 0x1F,r2 ; r2 set to 0x1F, r2 set to 0x1F
bra loc_8c18ED0C
mov.l r2,@(0x24,r15)

loc_8c18ED08:
mov 0x0F,r1 ; r1 set to 0x0F
mov.l r1,@(0x24,r15)

loc_8c18ED0C:
mov r5,r0
mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00
cmp/eq 0x01,r0
mov.l r6,@(0x28,r15)
mov.l r4,@(0x2C,r15)
bf loc_8c18ED40
tst r4,r4
bt loc_8c18ED56
bra loc_8c18ED52
nop

loc_8c18ED20:
#data 0x016C

loc_8c18ED22:
#data 0x0319
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c18ED40:
mov 0x2C,r3 ; r3 set to 0x2C
tst r14,r3
bt loc_8c18ED4E
tst r6,r6
bt loc_8c18ED56
bra loc_8c18ED52
nop

loc_8c18ED4E:
tst r4,r4
bt loc_8c18ED56

loc_8c18ED52:
bra loc_8c18ED58
mov.l r6,@(0x30,r15)

loc_8c18ED56:
mov.l r4,@(0x30,r15)

loc_8c18ED58:
mov 0x40,r0 ; r0 set to 0x40, r0 set to 0x40
mov.l r4,@(0x34,r15)
mov 0x16,r3 ; r3 set to 0x16, r3 set to 0x16
mov.l r4,@(0x38,r15)
mov 0x10,r2 ; r2 set to 0x10, r2 set to 0x10
mov.l r4,@(0x3C,r15)
mov.l r4,@(r0,r15)
mov 0x44,r0 ; r0 set to 0x44, r0 set to 0x44
mov.l r4,@(r0,r15)
mov 0x70,r0 ; r0 set to 0x70, r0 set to 0x70
tst r14,r2
mov.l r3,@(r0,r15)
bt loc_8c18ED78
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6C
bra loc_8c18ED7C
mov.l r4,@(r0,r15)

loc_8c18ED78:
mov 0x6C,r0 ; r0 set to 0x6C
mov.l r6,@(r0,r15)

loc_8c18ED7C:
mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
mov.w @(loc_8c18EDC0,pc),r3 ; r3 set to 0xA4, r3 set to 0xA4
mov.l r6,@(r0,r15)
mov 0x4C,r0 ; r0 set to 0x4C, r0 set to 0x4C
mov.l r4,@(r0,r15)
mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
mov.l r4,@(r0,r15)
mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
mov.l r4,@(r0,r15)
mov 0x58,r0 ; r0 set to 0x58, r0 set to 0x58
mov.l r4,@(r0,r15)
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C
mov.l r4,@(r0,r15)
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
mov.l r4,@(r0,r15)
mov.w @(loc_8c18EDC2,pc),r0 ; r0 set to 0xF8, r0 set to 0xF8
mov.w @(loc_8c18EDC4,pc),r2 ; r2 set to 0x1E0, r2 set to 0x1E0
mov.l r3,@(r0,r15)
mov 0x64,r0 ; r0 set to 0x64, r0 set to 0x64
mov.l r2,@(r0,r15)
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
mov.l r4,@(r0,r15)
mov r5,r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???
cmp/eq 0x01,r0
bf loc_8c18EDE0
tst r4,r4
bt loc_8c18EDF8
bra loc_8c18EDF2
nop
#data 0x0009
#data 0x00090009
#data 0x00090009

loc_8c18EDC0:
#data 0x00A4

loc_8c18EDC2:
#data 0x00F8

loc_8c18EDC4:
#data 0x01E0
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c18EDE0:
mov 0x2C,r3 ; r3 set to 0x2C
tst r3,r14
bt loc_8c18EDEE
tst r6,r6
bt loc_8c18EDF8
bra loc_8c18EDF2
nop

loc_8c18EDEE:
tst r4,r4
bt loc_8c18EDF8

loc_8c18EDF2:
mov.w @(loc_8c18EE40,pc),r0 ; r0 set to 0xF0, r0 set to 0xF0
bra loc_8c18EDFE
mov.l r7,@(r0,r15)

loc_8c18EDF8:
mov.w @(loc_8c18EE40,pc),r0 ; r0 set to 0xF0
mov 0x11,r2 ; r2 set to 0x11
mov.l r2,@(r0,r15)

loc_8c18EDFE:
mov.w @(loc_8c18EE42,pc),r0 ; r0 set to 0xF4, r0 set to 0xF4
mov.w @(loc_8c18EE40,pc),r3 ; r3 set to 0xF0, r3 set to 0xF0
mov.l @(loc_8c18EE48,pc),r2 ; r2 set to 0x8C3434E4, r2 set to 0x8C3434E4
mov.l r7,@(r0,r15)
mov.l r3,@r2 ; r2 ??, r2 ??
mov.l @(0x0C,r15),r1
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
mov r2,r0 ; r0 ??? bc r2 is ???, r0 ??? bc r2 is ???
cmp/gt r1,r3
addc r3,r1
shar r1
mov.l @r0,r3 ; r3 ??? bc r0 is ???, r3 ??? bc r0 is ???
add r3,r1
mov.l @(loc_8c18EE4C,pc),r3 ; r3 set to 0x8C3434DC, r3 set to 0x8C3434DC
mov.l r1,@r3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???
mov.l @(loc_8c18EE50,pc),r1 ; r1 set to 0x8C3434E0, r1 set to 0x8C3434E0
mov.l @(0x0C,r15),r2
mov.l r2,@r1 ; r1 ??? bc r2 is ???, r1 ??? bc r2 is ???
mov.l @(loc_8c18EE54,pc),r0 ; r0 set to 0x8C343438, r0 set to 0x8C343438
mov.l @r0,r2
jsr @r2
mov r15,r4
mov.w @(loc_8c18EE44,pc),r1 ; r1 set to 0xFC, r1 set to 0xFC
mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
add r1,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================
#data 0x0009
#data 0x00090009
#data 0x00090009

loc_8c18EE40:
#data 0x00F0

loc_8c18EE42:
#data 0x00F4

loc_8c18EE44:
#data 0x00FC
#data 0x0000

#align4
loc_8c18EE48:
#data 0x8C3434E4

#align4
loc_8c18EE4C:
#data 0x8C3434DC

#align4
loc_8c18EE50:
#data 0x8C3434E0

#align4
loc_8c18EE54:
#data 0x8C343438
#data 0x00000000
#data 0x00000000

#align4
loc_8c18EE60:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x90594F22
#data 0xD3303F0C
#data 0x23426E43
#data 0x420BD22F
#data 0xEC4264E3
#data 0x60C32CE9
#data 0xED208842
#data 0x2DE98F21
#data 0x63F3D22B
#data 0x50216122
#data 0x13012312
#data 0x50235122
#data 0x13031312
#data 0x13145124
#data 0x64E3B1AE
#data 0x2202D225
#data 0x63126123
#data 0x2DD860F3
#data 0x023E4308
#data 0x8F08D322
#data 0xD1212322
#data 0xE1006212
#data 0x3127D31F
#data 0x4221321E
#data 0x2322

loc_8c18EECA:
#data 0x932B
#data 0xE60165E3
#data 0x25699229
#data 0x60539125
#data 0x1F178801
#data 0xE33F1F35
#data 0x1F3B1F26
#data 0xE32C8907
#data 0x890423E8
#data 0x89022668
#data 0xA002921A
#data 0x1F2A

loc_8c18EEF6:
#data 0x9118
#data 0x1F1A

loc_8c18EEFA:
#data 0x60C3
#data 0x97159417
#data 0x8F388842
#data 0x6053EB16
#data 0x89298801
#data 0x23E8E32C
#data 0xE22C8926
#data 0xA0251F28
#data 0x00091F79
#data 0x00090009
#data 0x035FFEF0
#data 0x034B008D
#data 0x01380270
#data 0x0134026C
#data 0x8C343430

#align4
loc_8c18EF34:
#data bank19.loc_8c190C58

loc_8c18EF38:
#data bank1c.loc_8c1c5AE4
#data 0x8C3434F0
#data 0x8C3434A4
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c18EF60:
#data 0x1F491FB8

#align4
loc_8c18EF64:
#data 0x89032DD8
#data 0x9219901B
#data 0x0F26A02A

#align4
loc_8c18EF70:
#data 0xA0279017
#data 0x0F46

loc_8c18EF76:
#data 0x6053
#data 0x89068801
#data 0x23E8E32C
#data 0xE22C8903
#data 0xA0021F28
#data 0x1F79

loc_8c18EF8A:
#data 0x1FB8
#data 0x1F49

loc_8c18EF8E:
#data 0x2DD8
#data 0x90068916
#data 0xA0159204
#data 0x00090F26
#data 0x00090009
#data 0x00880136
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c18EFC0:
#data 0x0F46903E

#align4
loc_8c18EFC4:
#data 0xE315903D
#data 0x60530F36
#data 0x8D0C8801
#data 0xE32CE400
#data 0x890823E8
#data 0xE31F9234
#data 0x1F2DE044
#data 0x1F3EE205
#data 0xA0081F2C
#data 0x0F66

loc_8c18EFEA:
#data 0x922C
#data 0xE30FE044
#data 0xE2031F2D
#data 0x1F2C1F3E
#data 0x0F46

loc_8c18EFFA:
#data 0xE048
#data 0xE04C0F46
#data 0xE0500F46
#data 0xE0540F46
#data 0x60530F46
#data 0x8B038801
#data 0x89252448
#data 0x0009A005

#align4
loc_8c18F018:
#data 0x23E8E32C
#data 0x24488B01
#data 0x891E

loc_8c18F022:
#data 0xE058
#data 0x0F46A01F
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x008C0088
#data 0x031F016A
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c18F060:
#data 0xE202E058
#data 0x0F26

loc_8c18F066:
#data 0xE310
#data 0x23E8905A
#data 0x0FB68D03
#data 0xA0029057
#data 0x0F46

loc_8c18F076:
#data 0x9054
#data 0x0F66

loc_8c18F07A:
#data 0xE040
#data 0x0F661F4F
#data 0x0F66E05C
#data 0x0F46E060
#data 0x0F46E064
#data 0x0F46E068
#data 0x0F46E06C
#data 0x0F46E070
#data 0x0F46E07C
#data 0x0F46E074
#data 0x943FE078
#data 0x0F46933F
#data 0x0F36903E
#data 0x884260C3
#data 0xD21F8B46
#data 0x64F363F3
#data 0x50216122
#data 0x13012312
#data 0x50235122
#data 0x13031312
#data 0x13145124
#data 0x6032D319
#data 0x014E4008
#data 0x64139029
#data 0x60530F16
#data 0x89038801
#data 0x2E18E12C
#data 0x74FF8900

#align4
loc_8c18F0E8:
#data 0x2DD89020
#data 0x0F468D09
#data 0x6212D111
#data 0xD011E300
#data 0x323E3327
#data 0xA0304221
#data 0x2022

loc_8c18F102:
#data 0xD30D
#data 0xD20D6132
#data 0x2212A02B
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00800084
#data 0x00AE00F0
#data 0x0108010C
#data 0x00000104

#align4
loc_8c18F130:
#data bank1c.loc_8c1c5AF8
#data 0x8C3434F0
#data 0x8C3434A4
#data 0x8C3434E4

#align4
loc_8c18F140:
#data 0x88016053
#data 0xE62E8D07
#data 0x2E38E32C
#data 0x90378903
#data 0xA002E22D
#data 0x0F26

loc_8c18F156:
#data 0x9033
#data 0x0F66

loc_8c18F15A:
#data 0x9032
#data 0x0F66D31A
#data 0x2342

loc_8c18F162:
#data 0x52F8
#data 0x3327E300
#data 0xD317323E
#data 0x61324221
#data 0x321CD016
#data 0xD2162022
#data 0x221251F8
#data 0x6102D015
#data 0x410B64F3
#data 0x911D7414
#data 0x3F1CE000
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000B
;==============================================

loc_8c18F198:
tst r4,r4
bt loc_8c18F1A4
mov.l @(loc_8c18F1D8,pc),r2 ; r2 set to 0x8C3434F4
mov.l r4,@r2 ; r2 ??? bc r4 is ???
rts
mov 0x00,r0
;==============================================

loc_8c18F1A4:
mov.l @(loc_8c18F1D8,pc),r3 ; r3 set to 0x8C3434F4
mov.l @(loc_8c18F1DC,pc),r2 ; r2 set to 0x8C190180
mov.l r2,@r3 ; r3 ??
mov.l @(loc_8c18F1E0,pc),r0 ; r0 set to 0xEEEE
rts
nop
;==============================================
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x01080104
#data 0x00000110
#data 0x8C3434E4
#data 0x8C3434DC
#data 0x8C3434E0
#data 0x8C343438

#align4
loc_8c18F1D8:
#data 0x8C3434F4

#align4
loc_8c18F1DC:
#data bank19.loc_8c190180

loc_8c18F1E0:
#data 0x0000EEEE
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c18F200:
#data 0x7FF84F22
#data 0x2F42D20E
#data 0x430B6322
#data 0x54F164F3
#data 0x8B024411
#data 0x3427E204
#data 0x8B01

loc_8c18F21A:
#data 0xE101
#data 0x1F11

loc_8c18F21E:
#data 0x50F1
#data 0x4F267F08
#data 0x0009000B
;==============================================
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x8C3434F4
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c18F260:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
mov.w @(loc_8c18F340,pc),r0 ; r0 set to 0xFF04
add r0,r15
mov.l @(loc_8c18F358,pc),r3 ; r3 set to 0x8C343430
mov r4,r13
mov.l r4,@r3 ; r3 ??? bc r4 is ???
mov.l @(loc_8c18F35C,pc),r2 ; r2 set to 0x8C190C58
jsr @r2
mov r13,r4
mov.w @(loc_8c18F342,pc),r3 ; r3 set to 0x359
mov 0x74,r0 ; r0 set to 0x74
mov.w @(loc_8c18F344,pc),r2 ; r2 set to 0x20C
mov 0x00,r14 ; r14 set to 0x00
mov.l r3,@(0x08,r15)
mov 0x7E,r3 ; r3 set to 0x7E
mov.w @(loc_8c18F348,pc),r4 ; r4 set to 0x208
mov 0x28,r5 ; r5 set to 0x28
mov.l r2,@(0x14,r15)
mov.l r3,@r15
mov 0x3F,r3 ; r3 set to 0x3F
mov.w @(loc_8c18F346,pc),r2 ; r2 set to 0x345
mov.l r2,@(0x04,r15)
mov 0x03,r2 ; r2 set to 0x03
mov.l r5,@(0x0C,r15)
mov.l r4,@(0x10,r15)
mov.l r3,@(0x18,r15)
mov.w @(loc_8c18F34A,pc),r3 ; r3 set to 0x319
mov.l r2,@(0x1C,r15)
mov 0x0F,r2 ; r2 set to 0x0F
mov.l r3,@(0x20,r15)
mov 0x15,r3 ; r3 set to 0x15
mov.l r2,@(0x24,r15)
mov.l r4,@(r0,r15)
mov 0x78,r0 ; r0 set to 0x78
mov.l r3,@(r0,r15)
mov 0x40,r0 ; r0 set to 0x40
mov.l r14,@(0x34,r15)
mov.l r14,@(0x38,r15)
mov.l r14,@(0x3C,r15)
mov.l r14,@(r0,r15)
mov 0x44,r0 ; r0 set to 0x44
mov.l r14,@(r0,r15)
mov 0x70,r0 ; r0 set to 0x70
mov 0x16,r3 ; r3 set to 0x16
mov.l r3,@(r0,r15)
mov 0x10,r3 ; r3 set to 0x10
tst r3,r13
bt/s loc_8c18F2CC
mov 0x01,r4 ; r4 set to 0x01
mov 0x6C,r0 ; r0 set to 0x6C
bra loc_8c18F2D0
mov.l r14,@(r0,r15)

loc_8c18F2CC:
mov 0x6C,r0 ; r0 set to 0x6C
mov.l r4,@(r0,r15)

loc_8c18F2D0:
mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
mov.w @(loc_8c18F34E,pc),r3 ; r3 set to 0xA8, r3 set to 0xA8
mov.l r14,@(0x28,r15)
mov.l r14,@(0x2C,r15)
mov.l r14,@(0x30,r15)
mov.l r4,@(r0,r15)
mov 0x4C,r0 ; r0 set to 0x4C, r0 set to 0x4C
mov.l r14,@(r0,r15)
mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
mov.l r14,@(r0,r15)
mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
mov.l r14,@(r0,r15)
mov 0x58,r0 ; r0 set to 0x58, r0 set to 0x58
mov.l r14,@(r0,r15)
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C
mov.l r14,@(r0,r15)
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
mov.l r14,@(r0,r15)
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
mov.w @(loc_8c18F34C,pc),r4 ; r4 set to 0x1E0, r4 set to 0x1E0
mov.l r14,@(r0,r15)
mov 0x64,r0 ; r0 set to 0x64, r0 set to 0x64
mov.l r4,@(r0,r15)
mov.w @(loc_8c18F350,pc),r0 ; r0 set to 0xF8, r0 set to 0xF8
mov.l r3,@(r0,r15)
mov.w @(loc_8c18F352,pc),r0 ; r0 set to 0xF0, r0 set to 0xF0
mov.l @(loc_8c18F360,pc),r3 ; r3 set to 0x8C3434E4, r3 set to 0x8C3434E4
mov.l r5,@(r0,r15)
mov.w @(loc_8c18F354,pc),r0 ; r0 set to 0xF4, r0 set to 0xF4
mov.l r5,@(r0,r15)
mov.l r4,@r3 ; r3 ??, r3 ??
mov r3,r0 ; r0 ??? bc r3 is ???, r0 ??? bc r3 is ???
mov.l @r0,r2
mov.l @(0x0C,r15),r1
add r2,r1
mov.l @(loc_8c18F364,pc),r2 ; r2 set to 0x8C3434DC, r2 set to 0x8C3434DC
mov.l r1,@r2 ; r2 ??? bc r1 is ???, r2 ??? bc r1 is ???
mov.l @(loc_8c18F368,pc),r1 ; r1 set to 0x8C3434E0, r1 set to 0x8C3434E0
mov.l @(0x0C,r15),r0
mov.l r0,@r1 ; r1 ??? bc r0 is ???, r1 ??? bc r0 is ???
mov.l @(loc_8c18F36C,pc),r0 ; r0 set to 0x8C343438, r0 set to 0x8C343438
mov.l @r0,r3
jsr @r3
mov r15,r4 ; r4 ??? bc r15 is ???, r4 ??? bc r15 is ???
mov.w @(loc_8c18F356,pc),r1 ; r1 set to 0xFC, r1 set to 0xFC
mov r14,r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
add r1,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
#data 0x0009
#data 0x00090009
#data 0x00090009

loc_8c18F340:
#data 0xFF04

loc_8c18F342:
#data 0x0359

loc_8c18F344:
#data 0x020C

loc_8c18F346:
#data 0x0345

loc_8c18F348:
#data 0x0208

loc_8c18F34A:
#data 0x0319

loc_8c18F34C:
#data 0x01E0

loc_8c18F34E:
#data 0x00A8

loc_8c18F350:
#data 0x00F8

loc_8c18F352:
#data 0x00F0

loc_8c18F354:
#data 0x00F4

loc_8c18F356:
#data 0x00FC

#align4
loc_8c18F358:
#data 0x8C343430

#align4
loc_8c18F35C:
#data bank19.loc_8c190C58

loc_8c18F360:
#data 0x8C3434E4

#align4
loc_8c18F364:
#data 0x8C3434DC

#align4
loc_8c18F368:
#data 0x8C3434E0

#align4
loc_8c18F36C:
#data 0x8C343438
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c18F380:
mov.l @(loc_8c18F3A0,pc),r3 ; r3 set to 0x8C343B14
rts
mov.l @r3,r0
;==============================================
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c18F3A0:
#data 0x8C343B14
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c18F3C0:
mov.l r14,@-r15
cmp/pz r4
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
bt loc_8c18F3D0
bra loc_8c18F500
nop

loc_8c18F3D0:
stc sr, r0
mov.w @(loc_8c18F480,pc),r2 ; r2 set to 0xFF0F
shlr2 r0
shlr2 r0
and 0x0F,r0
mov r0,r7
stc sr, r0
and r2,r0
or 0xF0,r0
ldc r0, sr
mov.l @(loc_8c18F484,pc),r5 ; r5 set to 0x8C1A4E80
mov 0x2E,r0 ; r0 set to 0x2E
mov 0x00,r11 ; r11 set to 0x00
mov.w @(r0,r5),r13
mov 0x30,r0 ; r0 set to 0x30
mov.w @(r0,r5),r12
mov r11,r3 ; r3 set to 0x00
mov r11,r14 ; r14 set to 0x00
cmp/hs r12,r3
bt/s loc_8c18F42C
mov 0x1F,r6 ; r6 set to 0x1F

loc_8c18F3FA:
mov r13,r1
shll2 r1
mov r5,r3 ; r3 set to 0x8C1A4E80
shll2 r1
add 0x40,r3 ; r3 set to 0x8C1A4EC0
shll2 r1
add r3,r1
mov.l @r1,r2 ; r2 ??? bc r1 is ???
cmp/eq r4,r2
bf/s loc_8c18F424
add 0x01,r13
stc sr, r1
mov r7,r0 ; r0 ??? bc r7 is ???
mov.w @(loc_8c18F480,pc),r3 ; r3 set to 0xFF0F
and 0x0F,r0
shll2 r0
and r3,r1
shll2 r0
or r1,r0
bra loc_8c18F4DE
nop

#align4
loc_8c18f424:
add 0x01,r14
cmp/hs r12,r14
bf/s loc_8c18f3fa
and r6,r13

loc_8c18F42C:
mov 0x34,r0 ; r0 set to 0x34
mov.w @(r0,r5),r14
mov 0x36,r0 ; r0 set to 0x36
mov.w @(r0,r5),r12
mov 0x00,r3 ; r3 set to 0x00
cmp/hs r12,r3
bt/s loc_8c18F4A8
mov r11,r13

loc_8c18F43C:
mov r14,r1
mov.w @(loc_8c18F482,pc),r3 ; r3 set to 0x840
shll2 r1
shll2 r1
add r5,r3 ; r3 ??? bc r5 is ???
shll2 r1
add r3,r1
mov.l @r1,r2
cmp/eq r4,r2
bf/s loc_8c18F4A0
add 0x01,r14
stc sr, r1
mov r7,r0 ; r0 ??? bc r7 is ???
mov.w @(loc_8c18F480,pc),r3 ; r3 set to 0xFF0F
and 0x0F,r0
shll2 r0
and r3,r1
shll2 r0
or r1,r0
bra loc_8c18F4DE
nop
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c18F480:
#data 0xFF0F

loc_8c18F482:
#data 0x0840

#align4
loc_8c18F484:
#data bank1a.loc_8c1a4E80
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c18f4a0:
add 0x01,r13
cmp/hs r12,r13
bf/s loc_8c18f43c
and r6,r14

loc_8c18F4A8:
mov 0x3A,r0 ; r0 set to 0x3A
mov.w @(r0,r5),r13
mov 0x3C,r0 ; r0 set to 0x3C
mov.w @(r0,r5),r12
mov 0x00,r3 ; r3 set to 0x00
cmp/hs r12,r3
bt/s loc_8c18F4EE
mov r11,r14

loc_8c18F4B8:
mov r13,r1
mov.w @(loc_8c18F520,pc),r3 ; r3 set to 0x1040
shll2 r1
shll2 r1
add r5,r3 ; r3 ??? bc r5 is ???
shll2 r1
add r3,r1
mov.l @r1,r2
cmp/eq r4,r2
bf/s loc_8c18F4E6
add 0x01,r13
stc sr, r1
mov r7,r0 ; r0 ??? bc r7 is ???
mov.w @(loc_8c18F522,pc),r3 ; r3 set to 0xFF0F
and 0x0F,r0
shll2 r0
and r3,r1
shll2 r0
or r1,r0

loc_8c18F4DE:
ldc r0, sr
mov.w @(loc_8c18F524,pc),r0 ; r0 set to 0x100, r0 set to 0x100
bra loc_8c18F502
nop

loc_8c18f4e6:
add 0x01,r14
cmp/hs r12,r14
bf/s loc_8c18f4b8
and r6,r13

loc_8c18F4EE:
stc sr, r3
mov r7,r0
mov.w @(loc_8c18F522,pc),r2 ; r2 set to 0xFF0F
and 0x0F,r0
shll2 r0
and r2,r3
shll2 r0
or r3,r0
ldc r0, sr

loc_8c18F500:
mov.w @(loc_8c18F526,pc),r0 ; r0 set to 0x101

loc_8c18F502:
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c18F520:
#data 0x1040

loc_8c18F522:
#data 0xFF0F

loc_8c18F524:
#data 0x0100

loc_8c18F526:
#data 0x0101
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c18F540:
#data 0x2FE66743
#data 0xE2162FD6
#data 0xE6006072
#data 0x61635D71
#data 0xC90FD38C
#data 0xD58A402D
#data 0x2D0B2D39
#data 0x70086053
#data 0x310C4108
#data 0x21D26053
#data 0x61637601
#data 0x41087008
#data 0x5042310C
#data 0x21027601
#data 0x60536163
#data 0x76014108
#data 0x6ED37008
#data 0x5043310C
#data 0x67D3622B
#data 0x21024E29
#data 0x6163472D
#data 0x62534E19
#data 0x4D194D29
#data 0xE0014E01
#data 0x27094108
#data 0x2D097208
#data 0x60432E09
#data 0x5204312C
#data 0x21227601
#data 0x61636253
#data 0x41087208
#data 0x7601312C
#data 0x70185205
#data 0x21222EE8
#data 0x61636253
#data 0x41087208
#data 0x6202312C
#data 0x8D252122
#data 0x62537601
#data 0x72086063
#data 0x40085147
#data 0x76012778
#data 0x8F08302C
#data 0x62532012
#data 0x72086063
#data 0x40085148
#data 0x2012302C
#data 0x7601

loc_8c18F5FE:
#data 0x6253
#data 0x51496363
#data 0x43087208
#data 0x2DD8332C
#data 0x8D112312
#data 0x63537601
#data 0x73086263
#data 0x4208514A
#data 0x7601323C
#data 0x2212A008

#align4
loc_8c18F624:
#data 0x62636153
#data 0x50497108
#data 0x321C4208
#data 0x76012202

#align4
loc_8c18F634:
#data 0x63636253
#data 0x61437208
#data 0x332C4308
#data 0x7601521B
#data 0x62532322
#data 0x72086363
#data 0x332C4308
#data 0x7601521C
#data 0x62532322
#data 0x72086363
#data 0x71344308
#data 0x6212332C
#data 0x23222EE8
#data 0x76018D27
#data 0x61636353
#data 0x524E7308
#data 0x27784108
#data 0x313C7601
#data 0x21228F08
#data 0x61636353
#data 0x524F7308
#data 0x313C4108
#data 0x76012122

#align4
loc_8c18F690:
#data 0xE0406253
#data 0x014E6363
#data 0x72084308
#data 0x2DD8332C
#data 0x8D132312
#data 0x63537601
#data 0x6263E044
#data 0x7308014E
#data 0x76014208
#data 0xA009323C
#data 0x2212

loc_8c18F6BA:
#data 0xE040
#data 0x62636353
#data 0x7308014E
#data 0x323C4208
#data 0x76012212

#align4
loc_8c18F6CC:
#data 0x63636253
#data 0x61437208
#data 0x71484308
#data 0x6212332C
#data 0x61437601
#data 0x62532322
#data 0x72086363
#data 0x714C4308
#data 0x6212332C
#data 0x61437601
#data 0x62532322
#data 0x72086363
#data 0x71504308
#data 0x6212332C
#data 0x23222EE8
#data 0x76018D2A
#data 0x61636353
#data 0x62437308
#data 0x72544108
#data 0x6322313C
#data 0x76012778
#data 0x21328F09
#data 0x6353E058
#data 0x024E6163
#data 0x41087308
#data 0x2122313C
#data 0x7601

loc_8c18F736:
#data 0x6253
#data 0x6363E05C
#data 0x4308014E
#data 0x332C7208
#data 0x23122DD8
#data 0x76018D13
#data 0xE0606353
#data 0x014E6263
#data 0x42087308
#data 0x323C7601
#data 0x2212A009

#align4
loc_8c18F760:
#data 0x6353E05C
#data 0x014E6263
#data 0x42087308
#data 0x2212323C
#data 0x7601

loc_8c18F772:
#data 0x4608
#data 0x1561E000
#data 0x000B6DF6
#data 0x00096EF6
#data 0x8C343B1C
#data 0xFFC30000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c18F7A0:
tst r5,r5
bf loc_8c18F7AA
mov.l @(loc_8c18F7C0,pc),r2 ; r2 set to 0x8C1A7DA0
jmp @r2
nop

loc_8c18F7AA:
mov r4,r7
mov.l @(loc_8c18F7C4,pc),r0 ; r0 set to 0x8C343814
shll2 r7
shll r7
mov r0,r3 ; r3 set to 0x8C343814
mov.l r5,@(r0,r7)
add r3,r7
mov.l r6,@(0x04,r7)
rts
mov 0x00,r0
;==============================================
#data 0x0009

#align4
loc_8c18F7C0:
#data bank1a.loc_8c1a7DA0

loc_8c18F7C4:
#data 0x8C343814
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c18F7E0:
sts.l pr,@-r15
add 0xF8,r15
mov r4,r2
mov.l @(loc_8c18F820,pc),r3 ; r3 set to 0x8C343814
shll2 r2
mov.l r4,@r15
shll r2
add r3,r2
mov r2,r4
mov.l r2,@(0x04,r15)
mov.l @r2,r1
jsr @r1
mov.l @(0x04,r4),r4
add 0x08,r15
lds.l @r15+,pr
rts
mov 0x00,r0
;==============================================
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c18F820:
#data 0x8C343814
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c18F840:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov 0x00,r11 ; r11 set to 0x00
mov.l r10,@-r15
mov.l r9,@-r15
mov.l @(loc_8c18F8E4,pc),r7 ; r7 set to 0xA05F7C18
mov.l r8,@-r15
mov.l @(loc_8c18F8E8,pc),r5 ; r5 set to 0xA05F7C10
mov r7,r6 ; r6 set to 0xA05F7C18
sts.l pr,@-r15
mov.l @(0x08,r14),r0
mov r5,r4 ; r4 set to 0xA05F7C10
mov.l @(loc_8c18F8F0,pc),r9 ; r9 set to 0xFFA00020
add 0xFC,r6 ; r6 set to 0xA05F7C14
mov.l @(loc_8c18F8F4,pc),r10 ; r10 set to 0xA05F6800
cmp/eq 0x00,r0
mov.l @(loc_8c18F8F8,pc),r13 ; r13 set to 0xFFA0002C
add 0x70,r4 ; r4 set to 0xA05F7C80
mov.l @(loc_8c18F8EC,pc),r8 ; r8 set to 0x8201
bt/s loc_8c18F8A8
mov 0x01,r12 ; r12 set to 0x01
cmp/eq 0x04,r0
bt loc_8c18F920
cmp/eq 0x01,r0
bf loc_8c18F87C
bra loc_8c18F972
nop

loc_8c18F87C:
cmp/eq 0x02,r0
bf loc_8c18F884
bra loc_8c18F9E0
nop

loc_8c18F884:
cmp/eq 0x03,r0
bf loc_8c18F88C
bra loc_8c18FA12
nop

loc_8c18F88C:
cmp/eq 0x05,r0
bf loc_8c18F894
bra loc_8c18FA5C
nop

loc_8c18F894:
cmp/eq 0x07,r0
bf loc_8c18F89C
bra loc_8c18FA5C
nop

loc_8c18F89C:
cmp/eq 0x06,r0
bf loc_8c18F8A4
bra loc_8c18FA5C
nop

loc_8c18F8A4:
bra loc_8c18FA7E
nop

loc_8c18F8A8:
mov.l @r13,r2
mov.l r11,@r13
mov.l @(0x10,r14),r3
mov.l r3,@r9
mov.l @(0x0C,r14),r2
mov.l @(loc_8c18F8FC,pc),r1 ; r1 set to 0xFFA00028
shlr2 r2
shlr2 r2
shlr r2
mov.l r2,@r1 ; r1 ??? bc r2 is ???
mov.w @(loc_8c18F8E0,pc),r3 ; r3 set to 0x12C1
mov.l r3,@r13
mov.l @(loc_8c18F900,pc),r2 ; r2 set to 0xFFA00040
mov.l r8,@r2 ; r2 ??? bc r8 is ???
bra loc_8c18F942
nop
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c18F8E0:
#data 0x12C1
#data 0x0000

#align4
loc_8c18F8E4:
#data 0xA05F7C18

#align4
loc_8c18F8E8:
#data 0xA05F7C10

#align4
loc_8c18F8EC:
#data 0x00008201

#align4
loc_8c18F8F0:
#data 0xFFA00020

#align4
loc_8c18F8F4:
#data 0xA05F6800

#align4
loc_8c18F8F8:
#data 0xFFA0002C

#align4
loc_8c18F8FC:
#data 0xFFA00028

#align4
loc_8c18F900:
#data 0xFFA00040
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c18f920:
mov.l @(0x04,r14),r0
tst 0x08,r0 
bt loc_8c18f94e
mov.l @r13,r2
mov.l r11,@r13
mov.l @(0x10,r14),r3
mov.l r3,@r9
mov.l @(0x0C,r14),r2
mov.l @(loc_8c18f9a4,pc),r1
shlr2 r2
shlr2 r2
shlr r2
mov.l r2,@r1
mov.w @(loc_8c18f9a0,pc),r3
mov.l r3,@r13
mov.l @(loc_8c18f9a8,pc),r2
mov.l r8,@r2

loc_8c18F942:
mov.l @(0x14,r14),r3
mov.l r3,@r10
mov.l @(loc_8c18F9AC,pc),r3 ; r3 set to 0xA05F6804
mov.l @(0x0C,r14),r0
bra loc_8c18FA0C
mov.l r0,@r3

loc_8c18F94E:
#data 0xD318
#data 0xD1182432
#data 0x212252E5
#data 0x53E4D017
#data 0xD3172032
#data 0x232252E3
#data 0x51EFD216
#data 0x25B22212
#data 0xA08626C2
#data 0x27C2


loc_8c18F972:
mov.l @(loc_8c18F9C4,pc),r2 ; r2 set to 0x8C1A7B00
jsr @r2
mov.l @(0x30,r14),r4
mov.l @r13,r3
mov.l r11,@r13
mov.l @(0x10,r14),r2 ; r2 ??? bc r14 is ???
mov.l r2,@r9
mov.l @(0x0C,r14),r3
mov.l @(loc_8c18F9A4,pc),r1 ; r1 set to 0xFFA00028
shlr2 r3
shlr2 r3
shlr r3
mov.l r3,@r1 ; r1 ??? bc r3 is ???
mov.w @(loc_8c18F9A0,pc),r2 ; r2 set to 0x12C1
mov.l r2,@r13
mov.l @(loc_8c18F9A8,pc),r3 ; r3 set to 0xFFA00040
mov.l r8,@r3 ; r3 ??? bc r8 is ???
mov.l @(0x14,r14),r2 ; r2 ??? bc r14 is ???
mov.l r2,@r10
mov.l @(loc_8c18F9AC,pc),r2 ; r2 set to 0xA05F6804
mov.l @(0x0C,r14),r0
bra loc_8c18FA0C
mov.l r0,@r2

loc_8c18F9A0:
#data 0x12C1
#data 0x0000

#align4
loc_8c18F9A4:
#data 0xFFA00028

#align4
loc_8c18F9A8:
#data 0xFFA00040

#align4
loc_8c18F9AC:
#data 0xA05F6804
#data 0x6702007F
#data 0xA05F7C00
#data 0xA05F7C04
#data 0xA05F7C08
#data 0xA05F7C0C

#align4
loc_8c18F9C4:
#data bank1a.loc_8c1a7B00
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c18f9e0:
mov.l @(loc_8c18faa8,pc),r2
jsr @r2
mov.l @(0x30,r14),r4
mov.l @r13,r3
mov.l r11,@r13
mov.l @(0x10,r14),r2
mov.l r2,@r9
mov.l @(0x0C,r14),r3
mov.l @(loc_8c18faac,pc),r1
shlr2 r3
shlr2 r3
shlr r3
mov.l r3,@r1
mov.w @(loc_8c18faa0,pc),r2
mov.l r2,@r13
mov.l @(loc_8c18fab0,pc),r3
mov.l r8,@r3
mov.l @(0x14,r14),r2
mov.l r2,@r10
mov.l @(loc_8c18fab4,pc),r2
mov.l @(0x0C,r14),r0
mov.l r0,@r2

loc_8c18FA0C:
mov.l @(loc_8c18FAB8,pc),r1 ; r1 set to 0xA05F6808
bra loc_8c18FA7E
mov.l r12,@r1

loc_8c18FA12:
mov.l @(loc_8c18FABC,pc),r12 ; r12 set to 0x8C18C320
mov 0x01,r5 ; r5 set to 0x01
jsr @r12
mov 0x08,r4 ; r4 set to 0x08
mov 0x00,r5 ; r5 set to 0x00
jsr @r12
mov 0x08,r4 ; r4 set to 0x08
mov.w @(loc_8c18FAA2,pc),r4 ; r4 set to 0x14C
jsr @r12
mov.l @(0x34,r14),r5 ; r5 ??? bc r14 is ???
mov.w @(loc_8c18FAA4,pc),r4 ; r4 set to 0x148
jsr @r12
mov.l @(0x30,r14),r5
mov.l @r13,r2
mov 0x00,r3 ; r3 set to 0x00
mov.l r3,@r13
mov.l @(0x10,r14),r2
mov.l r2,@r9
mov.l @(0x0C,r14),r3 ; r3 ??? bc r14 is ???
mov.l @(loc_8c18FAAC,pc),r1 ; r1 set to 0xFFA00028
shlr2 r3
shlr2 r3
shlr r3
mov.l r3,@r1 ; r1 ??? bc r3 is ???
mov.w @(loc_8c18FAA0,pc),r2 ; r2 set to 0x12C1
mov.l r2,@r13
mov.l @(loc_8c18FAB0,pc),r3 ; r3 set to 0xFFA00040
mov.l r8,@r3 ; r3 ??? bc r8 is ???
mov.l @(0x14,r14),r2 ; r2 ??? bc r14 is ???
mov.l r2,@r10
mov.l @(loc_8c18FAB4,pc),r2 ; r2 set to 0xA05F6804
mov.l @(0x0C,r14),r0
mov.l r0,@r2 ; r2 ??? bc r0 is ???
mov.l @(loc_8c18FAB8,pc),r0 ; r0 set to 0xA05F6808
mov 0x01,r1 ; r1 set to 0x01
bra loc_8c18FA7E
mov.l r1,@r0

#align4
loc_8c18fa5c:
mov.l @(loc_8C18FAC0,pc),r2
mov.l r2,@r4
mov.l @(loc_8C18FAC4,pc),r1
mov.l @(0x14,r14),r3
mov.l r3,@r1
mov.l @(loc_8C18FAC8,pc),r0
mov.l @(0x10,r14),r2
mov.l r2,@r0
mov.l @(loc_8C18FACC,pc),r2
mov.l @(0x0C,r14),r3
mov.l r3,@r2
mov.l @(loc_8C18FAD0,pc),r3
mov.l @(0x30,r14),r1
mov.l r1,@r3
mov.l r11,@r5
mov.l r12,@r6
mov.l r12,@r7

loc_8c18FA7E:
mov.l @(loc_8c18FAD4,pc),r2 ; r2 set to 0xFFD8000C
mov.l @r2,r3
mov 0x03,r1 ; r1 set to 0x03
mov.l r3,@(0x24,r14)
mov.l r1,@(0x28,r14)
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
#data 0x0009
#data 0x00090009

loc_8c18FAA0:
#data 0x12C1

loc_8c18FAA2:
#data 0x014C

loc_8c18FAA4:
#data 0x0148
#data 0x0000

#align4
loc_8c18FAA8:
#data bank1a.loc_8c1a4D20

loc_8c18FAAC:
#data 0xFFA00028

#align4
loc_8c18FAB0:
#data 0xFFA00040

#align4
loc_8c18FAB4:
#data 0xA05F6804

#align4
loc_8c18FAB8:
#data 0xA05F6808

#align4
loc_8c18FABC:
#data loc_8c18C320
loc_8c18fac0:
#data 0x6702007F
loc_8c18fac4:
#data 0xA05F7C00
loc_8c18fac8:
#data 0xA05F7C04
loc_8c18facc:
#data 0xA05F7C08
loc_8c18fad0:
#data 0xA05F7C0C

#align4
loc_8c18FAD4:
#data 0xFFD8000C
#data 0x00090009
#data 0x00090009


loc_8c18FAE0:
mov.l r14,@-r15
mov.l @(loc_8c18FB44,pc),r14 ; r14 set to 0x8C1A4E80
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
mov.l @(0x08,r14),r3
tst r3,r3
bt loc_8c18FAF6
mov.w @(loc_8c18FB40,pc),r0 ; r0 set to 0x102
bra loc_8c18FC16
nop

loc_8c18FAF6:
mov 0x30,r0 ; r0 set to 0x30
mov.l @(0x1C,r14),r6
mov.w @(r0,r14),r3
mov 0x08,r12 ; r12 set to 0x08
mov 0x00,r13 ; r13 set to 0x00
cmp/pl r3
bf/s loc_8c18FB60
mov.l @(0x18,r14),r5
mov.l @(0x20,r14),r2
tst r2,r2
bf loc_8c18FB60
mov 0x2E,r0 ; r0 set to 0x2E
mov r14,r3
mov.w @(r0,r14),r4
add 0x40,r3
shll2 r4
shll2 r4
shll2 r4
add r3,r4
mov.l @(0x04,r4),r2
tst r12,r2
bt loc_8c18FB2A
tst r6,r6
bf loc_8c18FB2E
bra loc_8c18FB34
mov.l r4,@(0x1C,r14)

loc_8c18FB2A:
tst r5,r5
bt loc_8c18FB32

loc_8c18FB2E:
bra loc_8c18FB34
mov r13,r4

loc_8c18FB32:
mov.l r4,@(0x18,r14)

loc_8c18FB34:
tst r4,r4
bt loc_8c18FB9E
bsr loc_8c18F840
mov.l r4,@(0x20,r14)
bra loc_8c18FB9E
nop

loc_8c18FB40:
#data 0x0102
#data 0x0000

#align4
loc_8c18FB44:
#data bank1a.loc_8c1a4E80
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c18FB60:
mov 0x36,r0 ; r0 set to 0x36
mov.w @(r0,r14),r2
cmp/pl r2
bf loc_8c18FB9E
mov.l @(0x24,r14),r2
tst r2,r2
bf loc_8c18FB9E
mov 0x34,r0 ; r0 set to 0x34
mov.w @(loc_8c18FBE0,pc),r3 ; r3 set to 0x840
mov.w @(r0,r14),r4
add r14,r3 ; r3 ??? bc r14 is ???
shll2 r4
shll2 r4
shll2 r4
add r3,r4
mov.l @(0x04,r4),r2
tst r12,r2
bt loc_8c18FB8C
tst r6,r6
bf loc_8c18FB90
bra loc_8c18FB96
mov.l r4,@(0x1C,r14)

loc_8c18FB8C:
tst r5,r5
bt loc_8c18FB94

loc_8c18FB90:
bra loc_8c18FB96
mov r13,r4

loc_8c18fb94:
mov.l r4,@(0x18,r14) 

loc_8c18fb96:
tst r4,r4
bt loc_8c18fb9e
bsr loc_8c18f840
mov.l r4,@(0x24,r14) 

loc_8c18FB9E:
mov 0x3C,r0 ; r0 set to 0x3C
mov.w @(r0,r14),r3
cmp/pl r3
bf loc_8c18FC14
mov.l @(0x28,r14),r2
tst r2,r2
bf loc_8c18FC14
mov 0x3A,r0 ; r0 set to 0x3A
mov.w @(loc_8c18FBE2,pc),r3 ; r3 set to 0x1040
mov.w @(r0,r14),r4
add r14,r3 ; r3 ??? bc r14 is ???
shll2 r4
shll2 r4
shll2 r4
add r3,r4
mov.l @(0x04,r4),r2
tst r2,r12
bt loc_8c18FC00
mov.l @(0x1C,r14),r1
tst r1,r1
bf loc_8c18FC06
bra loc_8c18FC0C
mov.l r4,@(0x1C,r14)
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c18FBE0:
#data 0x0840

loc_8c18FBE2:
#data 0x1040
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c18FC00:
mov.l @(0x18,r14),r3
tst r3,r3
bt loc_8c18FC0A

loc_8c18FC06:
bra loc_8c18FC0C
mov r13,r4

loc_8c18fc0a:
mov.l r4,@(0x18,r14) 

loc_8c18fc0c:
tst r4,r4
bt loc_8c18fc14
bsr loc_8c18f840
mov.l r4,@(0x28,r14) 

loc_8c18FC14:
mov 0x00,r0 ; r0 set to 0x00

loc_8c18FC16:
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

#align4
loc_8c18FC20:
#data 0x4F222FE6
#data 0x63427FFC
#data 0xDE0EE202
#data 0x142A2F32
#data 0x73FF53E2
#data 0x1E32BF54
#data 0x211851E2
#data 0x50E38B08
#data 0x910D0202
#data 0x4008C90F
#data 0x40082219
#data 0x400E202B

#align4
loc_8c18FC50:
#data 0x7F0460F2
#data 0x000B4F26
#data 0x00096EF6
#data 0x00090009
#data 0x0000FF0F

#align4
loc_8c18FC64:
#data bank1a.loc_8c1a4E80
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c18FC80:
mov.l r14,@-r15
mov r4,r3
mov 0x03,r14 ; r14 set to 0x03
mov r4,r2
and r14,r3
mov r4,r1
shlr2 r2
mov.l r3,@r5
mov r4,r3
shlr2 r2
shlr8 r3
and r14,r2
shlr2 r3
mov.l r2,@r6
shlr2 r3
and r14,r3
shlr8 r1
shlr16 r4
and r14,r4
and r14,r1
mov 0x00,r0 ; r0 set to 0x00
mov.l r1,@r7
mov.l @(0x04,r15),r2
mov.l r3,@r2
mov.l @(0x08,r15),r2
mov.l r4,@r2
rts
mov.l @r15+,r14
;==============================================
#data 0x00000000
#data 0x00000000


loc_8c18FCC0:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.l @(loc_8c18FD04,pc),r3 ; r3 set to 0x8C1A7038
mov.l @(loc_8c18FD00,pc),r14 ; r14 set to 0x8C343B1C
mov.l r4,@(0x04,r15)
jsr @r3
mov r15,r5
mov.l @(loc_8c18FD08,pc),r3 ; r3 set to 0x8C1A4E20
mov r14,r5 ; r5 set to 0x8C343B1C
mov.l @(0x04,r14),r6
add 0x08,r5 ; r5 set to 0x8C343B24
jsr @r3
mov.l @r15,r4
mov.l @(loc_8c18FD0C,pc),r3 ; r3 set to 0x8C1A6FE0
mov.l @(0x08,r14),r5 ; r5 ??
jsr @r3
mov.l @(0x04,r15),r4
add 0x08,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c18FD00:
#data 0x8C343B1C

#align4
loc_8c18FD04:
#data bank1a.loc_8c1a7038

loc_8c18FD08:
#data bank1a.loc_8c1a4E20

loc_8c18FD0C:
#data bank1a.loc_8c1a6FE0
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c18FD20:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8c18FD40,pc),r3 ; r3 set to 0xFFFFFF
mov r4,r5
mov.l @(loc_8c18FD44,pc),r2 ; r2 set to 0x8C18C320
mov.l r4,@r15
and r3,r5
jsr @r2
mov 0x40,r4 ; r4 set to 0x40
add 0x04,r15
lds.l @r15+,pr
rts
mov 0x00,r0
;==============================================
#data 0x0009
#data 0x00090009

#align4
loc_8c18FD40:
#data 0x00FFFFFF

#align4
loc_8c18FD44:
#data loc_8c18C320
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c18FD60:
rts
mov.l r5,@(0x18,r4)
;==============================================
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c18FD80:
sts.l pr,@-r15
add 0xF0,r15
mov.l @(loc_8c18FE44,pc),r3 ; r3 set to 0x8C1A7FC0
mov.l r4,@(0x08,r15)
mov.l r5,@(0x04,r15)
mov.l r6,@r15
mov.l r7,@(0x0C,r15)
jsr @r3
mov.l @(0x08,r15),r4
tst r0,r0
bf loc_8c18FDA0
mov.l @(loc_8c18FE48,pc),r0 ; r0 set to 0xEEEE
add 0x10,r15
lds.l @r15+,pr
rts
nop
;==============================================

#align4
loc_8c18fda0:
mov.l @(0x08,r15),r4
mov.w @(loc_8C18FE40,pc),r0
mov r4,r5
add 0x18,r5
mov.l @(r0,r4),r6
mov.l @(loc_8C18FE4C,pc),r3
mov.l @(0x0C,r15),r3
mov.l r3,@(0x0C,r4) 
mov.l @(0x04,r15),r2
mov.l r2,@(0x04,r4) 
mov.l @r15,r3
mov.l r3,@(0x08,r4) 
mov.l @r15,r2
mov.l @(0x04,r15),r3
add 0xFF,r2
shll16 r2
add 0xFF,r3
or r3,r2
mov.l r2,@(0x38,r4) 
mov.l @r5,r3
mov.l r3,@(0x08,r5) 
mov.l @(0x04,r5),r3
mov.l @r5,r2
mov.l @(0x04,r4),r1
add r3,r2
mov.l @(0x08,r4),r3
mul.l r3,r1
mov.l @(0x0C,r4),r3
sts macl,r0
mul.l r3,r0
sts macl,r0
mov r0,r3
shll r0
mov.l @(loc_8C18FE50,pc),r1
add r3,r0
shll2 r0
shll r0
sub r0,r2
mov.l r2,@(0x0C,r5) 
mov.l @r1,r0
tst 0x80,r0 
bt loc_8c18fdfa
mov.l @(0x0C,r5),r2
add 0xE8,r2
mov.l r2,@(0x0C,r5) 

loc_8c18fdfa:
mov.l @(0x0C,r5),r1
mov.w @(loc_8C18FE42,pc),r3
mov.l @(loc_8C18FE54,pc),r0
add r3,r1
mov.l r1,@(0x24,r5) 
mov.l @r0,r2
mov.l r2,@(0x14,r6) 
mov.l @(loc_8C18FE58,pc),r2
mov.l @r2,r1
mov.l r1,@(0x18,r6) 
mov.l @(loc_8C18FE5C,pc),r1
mov.l @r1,r3
mov.l r3,@(0x10,r6) 
mov.l @(loc_8C18FE60,pc),r3
mov.l @r3,r0
mov.l r0,@(0x04,r6) 
mov 0x00,r0
add 0x10,r15
lds.l @r15+,pr 
rts 
nop 
;==============================================
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009

loc_8C18FE40:
#data 0x0088

loc_8C18FE42:
#data 0xFF00

loc_8c18fe44:
#data 0x7FC0
#data 0x8C1A

loc_8c18fe48:
#data 0xEEEE
#data 0x0000

#align4
loc_8C18FE4C:
#data 0x8C348DF4

#align4
loc_8C18FE50:
#data 0x8C343B04

#align4
loc_8C18FE54:
#data 0x8C34343C

#align4
loc_8C18FE58:
#data 0x8C343440

#align4
loc_8C18FE5C:
#data 0x8C34344C

#align4
loc_8C18FE60:
#data 0x8C343454
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000

loc_8c18fe80:
#data 0x6753
#data 0x4711
#data 0x8900
#data 0x771F

loc_8c18fe88:
#data 0xE3FB
#data 0xD20E
#data 0x473C
#data 0xD30C
#data 0x6622
#data 0xE201
#data 0xE11F
#data 0x2639
#data 0x2249
#data 0xE316
#data 0x2719
#data 0x423C
#data 0x4728
#data 0x272B
#data 0xD207
#data 0x267B
#data 0x2262
#data 0xD307
#data 0x2342
#data 0xD107
#data 0x2152
#data 0x000B
#data 0xE000
;==============================================
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0x0009
#data 0xFFFF
#data 0xFFA0
#data 0x3450
#data 0x8C34
#data 0x34E8
#data 0x8C34
#data 0x34EC
#data 0x8C34
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000

loc_8c18FEE0:
mov.l @(loc_8c18FF00,pc),r3 ; r3 set to 0x11000000
mov r4,r1
mov.l @(loc_8c18FF04,pc),r0 ; r0 set to 0x8000
mov 0x00,r4 ; r4 set to 0x00
mov 0x08,r2 ; r2 set to 0x08
mov.l r6,@(0x10,r1)
or r3,r5
mov.l r5,@(0x14,r1)
mov.l r7,@(0x0C,r1)
mov.l r4,@(0x08,r1)
mov.l r2,@(0x04,r1)
mov.w r0,@(0x1C,r1)
mov r4,r0 ; r0 set to 0x00
rts
mov.w r0,@(0x1E,r1)
;==============================================
#data 0x0009

#align4
loc_8c18FF00:
#data 0x11000000

#align4
loc_8c18FF04:
#data 0x00008000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c18FF20:
sts.l pr,@-r15
add 0xF8,r15
mov.l @(loc_8c18FF40,pc),r3 ; r3 set to 0x8C1A7FC0
mov.l r4,@r15
mov.l r5,@(0x04,r15)
jsr @r3
mov.l @r15,r4
tst r0,r0
bf loc_8c18FF60
mov.l @(loc_8c18FF44,pc),r0 ; r0 set to 0xEEEE
add 0x08,r15
lds.l @r15+,pr
rts
nop
;==============================================
#data 0x00090009

#align4
loc_8c18FF40:
#data bank1a.loc_8c1a7FC0

loc_8c18FF44:
#data 0x0000EEEE
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c18FF60:
mov.w @(loc_8c18FF82,pc),r0 ; r0 set to 0x88
mov.l @r15,r4
mov.w @(loc_8c18FF86,pc),r6 ; r6 set to 0x400
mov.l @(r0,r4),r5
mov.l @(0x04,r15),r0 ; r0 ??? bc r15 is ???
mov.w @(loc_8c18FF84,pc),r7 ; r7 set to 0x800
mov 0x23,r1 ; r1 set to 0x23
cmp/hs r1,r0
bf loc_8c18FF76
bra loc_8c190092
nop

loc_8c18FF76:
shll r0
mov r0,r1
mova @(loc_8c18FF88,pc),r0  ; r0 set to 0x8C18FF88
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
braf r0
nop

loc_8c18FF82:
#data 0x0088

loc_8c18FF84:
#data 0x0800

loc_8c18FF86:
#data 0x0400

#align4
loc_8c18FF88:
#data 0x0050004C
#data 0x005A0056
#data 0x01100056
#data 0x01100110
#data 0x01100110
#data 0x01100060
#data 0x01100110
#data 0x01100110
#data 0x01100110
#data 0x01100110
#data 0x009E0066
#data 0x00AA00A4
#data 0x011000B0
#data 0x01100110
#data 0x01100110
#data 0x00BC00B6
#data 0x010400FE
#data 0xA060010A
#data 0x94150009
#data 0x0009A05E
#data 0x6473A05C
#data 0xA0599411
#data 0x940F0009
#data 0x0009A056
#data 0xA053940D
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x04720401
#data 0x03DE08E3
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0xA037941E
#data 0x941C0009
#data 0x0009A034
#data 0xA031941A
#data 0x94180009
#data 0x0009A02E
#data 0xA02B9416
#data 0x94140009
#data 0x0009A028
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x03A203BF
#data 0x036D0387
#data 0x078007BD
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0xA007941E
#data 0x941C0009
#data 0x0009A004
#data 0xA001941A
#data 0x0009


loc_8c190092:
mov r6,r4
mov.l @(0x24,r5),r2
mov 0x00,r0 ; r0 set to 0x00
mov.l @(loc_8c1900C8,pc),r3 ; r3 set to 0xFFFF0000
and r3,r2
mov r2,r1
or r4,r1
mov.l r1,@(0x24,r5)
add 0x08,r15
lds.l @r15+,pr
rts
nop
;==============================================
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x070F0745
#data 0x000006DB

#align4
loc_8c1900C8:
#data 0xFFFF0000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
