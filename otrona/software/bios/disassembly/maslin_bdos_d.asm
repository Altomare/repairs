; z80dasm 1.1.6
; command line: z80dasm -l -t -g 0xcc00 -a maslin.raw.bdos

	org	0cc00h

	sub c			;cc00	91 	. 
	ld d,001h		;cc01	16 01 	. . 
	nop			;cc03	00 	. 
	rlca			;cc04	07 	. 
	sbc a,b			;cc05	98 	. 
	jp lcc11h		;cc06	c3 11 cc 	. . . 
lcc09h:
	sbc a,c			;cc09	99 	. 
	call z,sub_cca5h		;cc0a	cc a5 cc 	. . . 
lcc0dh:
	xor e			;cc0d	ab 	. 
	call z,sub_ccb1h		;cc0e	cc b1 cc 	. . . 
lcc11h:
	ex de,hl			;cc11	eb 	. 
	ld (lcf43h),hl		;cc12	22 43 cf 	" C . 
	ex de,hl			;cc15	eb 	. 
	ld a,e			;cc16	7b 	{ 
	ld (ld9d6h),a		;cc17	32 d6 d9 	2 . . 
	ld hl,00000h		;cc1a	21 00 00 	! . . 
	ld (lcf45h),hl		;cc1d	22 45 cf 	" E . 
	add hl,sp			;cc20	39 	9 
	ld (lcf0fh),hl		;cc21	22 0f cf 	" . . 
	ld sp,lcf41h		;cc24	31 41 cf 	1 A . 
	xor a			;cc27	af 	. 
	ld (ld9e0h),a		;cc28	32 e0 d9 	2 . . 
	ld (ld9deh),a		;cc2b	32 de d9 	2 . . 
	ld hl,ld974h		;cc2e	21 74 d9 	! t . 
	push hl			;cc31	e5 	. 
	ld a,c			;cc32	79 	y 
	cp 029h		;cc33	fe 29 	. ) 
	ret nc			;cc35	d0 	. 
	ld c,e			;cc36	4b 	K 
	ld hl,lcc47h		;cc37	21 47 cc 	! G . 
	ld e,a			;cc3a	5f 	_ 
	ld d,000h		;cc3b	16 00 	. . 
	add hl,de			;cc3d	19 	. 
	add hl,de			;cc3e	19 	. 
	ld e,(hl)			;cc3f	5e 	^ 
	inc hl			;cc40	23 	# 
	ld d,(hl)			;cc41	56 	V 
	ld hl,(lcf43h)		;cc42	2a 43 cf 	* C . 
	ex de,hl			;cc45	eb 	. 
	jp (hl)			;cc46	e9 	. 
lcc47h:
	inc bc			;cc47	03 	. 
	jp c,lcec8h		;cc48	da c8 ce 	. . . 
	sub b			;cc4b	90 	. 
	call sub_ceceh		;cc4c	cd ce ce 	. . . 
	ld (de),a			;cc4f	12 	. 
	jp c,0da0fh		;cc50	da 0f da 	. . . 
	call nc,0edceh		;cc53	d4 ce ed 	. . . 
	adc a,0f3h		;cc56	ce f3 	. . 
	adc a,0f8h		;cc58	ce f8 	. . 
	adc a,0e1h		;cc5a	ce e1 	. . 
	call sub_cefeh		;cc5c	cd fe ce 	. . . 
	ld a,(hl)			;cc5f	7e 	~ 
	ret c			;cc60	d8 	. 
	add a,e			;cc61	83 	. 
	ret c			;cc62	d8 	. 
	ld b,l			;cc63	45 	E 
	ret c			;cc64	d8 	. 
	sbc a,h			;cc65	9c 	. 
	ret c			;cc66	d8 	. 
	and l			;cc67	a5 	. 
	ret c			;cc68	d8 	. 
	xor e			;cc69	ab 	. 
	ret c			;cc6a	d8 	. 
	ret z			;cc6b	c8 	. 
	ret c			;cc6c	d8 	. 
	rst 10h			;cc6d	d7 	. 
	ret c			;cc6e	d8 	. 
	ret po			;cc6f	e0 	. 
	ret c			;cc70	d8 	. 
	and 0d8h		;cc71	e6 d8 	. . 
	call pe,0f5d8h		;cc73	ec d8 f5 	. . . 
	ret c			;cc76	d8 	. 
	cp 0d8h		;cc77	fe d8 	. . 
	inc b			;cc79	04 	. 
	exx			;cc7a	d9 	. 
	ld a,(bc)			;cc7b	0a 	. 
	exx			;cc7c	d9 	. 
	ld de,02cd9h		;cc7d	11 d9 2c 	. . , 
	pop de			;cc80	d1 	. 
	rla			;cc81	17 	. 
	exx			;cc82	d9 	. 
	dec e			;cc83	1d 	. 
	exx			;cc84	d9 	. 
	ld h,0d9h		;cc85	26 d9 	& . 
	dec l			;cc87	2d 	- 
	exx			;cc88	d9 	. 
	ld b,c			;cc89	41 	A 
	exx			;cc8a	d9 	. 
	ld b,a			;cc8b	47 	G 
	exx			;cc8c	d9 	. 
	ld c,l			;cc8d	4d 	M 
	exx			;cc8e	d9 	. 
	ld c,0d8h		;cc8f	0e d8 	. . 
	ld d,e			;cc91	53 	S 
	exx			;cc92	d9 	. 
	inc b			;cc93	04 	. 
	rst 8			;cc94	cf 	. 
	inc b			;cc95	04 	. 
	rst 8			;cc96	cf 	. 
	sbc a,e			;cc97	9b 	. 
	exx			;cc98	d9 	. 
	ld hl,lcccah		;cc99	21 ca cc 	! . . 
	call sub_cce5h		;cc9c	cd e5 cc 	. . . 
	cp 003h		;cc9f	fe 03 	. . 
	jp z,00000h		;cca1	ca 00 00 	. . . 
	ret			;cca4	c9 	. 
sub_cca5h:
	ld hl,lccd5h		;cca5	21 d5 cc 	! . . 
	jp lccb4h		;cca8	c3 b4 cc 	. . . 
	ld hl,0cce1h		;ccab	21 e1 cc 	! . . 
	jp lccb4h		;ccae	c3 b4 cc 	. . . 
sub_ccb1h:
	ld hl,lccdch		;ccb1	21 dc cc 	! . . 
lccb4h:
	call sub_cce5h		;ccb4	cd e5 cc 	. . . 
	jp 00000h		;ccb7	c3 00 00 	. . . 
lccbah:
	ld b,d			;ccba	42 	B 
	ld h,h			;ccbb	64 	d 
	ld l,a			;ccbc	6f 	o 
	ld (hl),e			;ccbd	73 	s 
	jr nz,$+71		;ccbe	20 45 	  E 
	ld (hl),d			;ccc0	72 	r 
	ld (hl),d			;ccc1	72 	r 
	jr nz,lcd13h		;ccc2	20 4f 	  O 
	ld l,(hl)			;ccc4	6e 	n 
	jr nz,$+34		;ccc5	20 20 	    
	ld a,(02420h)		;ccc7	3a 20 24 	:   $ 
lcccah:
	ld b,d			;ccca	42 	B 
	ld h,c			;cccb	61 	a 
	ld h,h			;cccc	64 	d 
	jr nz,lcd22h		;cccd	20 53 	  S 
	ld h,l			;cccf	65 	e 
	ld h,e			;ccd0	63 	c 
	ld (hl),h			;ccd1	74 	t 
	ld l,a			;ccd2	6f 	o 
	ld (hl),d			;ccd3	72 	r 
	inc h			;ccd4	24 	$ 
lccd5h:
	ld d,e			;ccd5	53 	S 
	ld h,l			;ccd6	65 	e 
	ld l,h			;ccd7	6c 	l 
	ld h,l			;ccd8	65 	e 
	ld h,e			;ccd9	63 	c 
	ld (hl),h			;ccda	74 	t 
	inc h			;ccdb	24 	$ 
lccdch:
	ld b,(hl)			;ccdc	46 	F 
	ld l,c			;ccdd	69 	i 
	ld l,h			;ccde	6c 	l 
	ld h,l			;ccdf	65 	e 
	jr nz,$+84		;cce0	20 52 	  R 
	cpl			;cce2	2f 	/ 
	ld c,a			;cce3	4f 	O 
	inc h			;cce4	24 	$ 
sub_cce5h:
	push hl			;cce5	e5 	. 
	call sub_cdc9h		;cce6	cd c9 cd 	. . . 
	ld a,(lcf42h)		;cce9	3a 42 cf 	: B . 
	add a,041h		;ccec	c6 41 	. A 
	ld (0ccc6h),a		;ccee	32 c6 cc 	2 . . 
	ld bc,lccbah		;ccf1	01 ba cc 	. . . 
	call sub_cdd3h		;ccf4	cd d3 cd 	. . . 
	pop bc			;ccf7	c1 	. 
	call sub_cdd3h		;ccf8	cd d3 cd 	. . . 
sub_ccfbh:
	ld hl,lcf0eh		;ccfb	21 0e cf 	! . . 
	ld a,(hl)			;ccfe	7e 	~ 
	ld (hl),000h		;ccff	36 00 	6 . 
	or a			;cd01	b7 	. 
	ret nz			;cd02	c0 	. 
	jp 0da09h		;cd03	c3 09 da 	. . . 
sub_cd06h:
	call sub_ccfbh		;cd06	cd fb cc 	. . . 
	call sub_cd14h		;cd09	cd 14 cd 	. . . 
	ret c			;cd0c	d8 	. 
	push af			;cd0d	f5 	. 
	ld c,a			;cd0e	4f 	O 
	call sub_cd90h		;cd0f	cd 90 cd 	. . . 
	pop af			;cd12	f1 	. 
lcd13h:
	ret			;cd13	c9 	. 
sub_cd14h:
	cp 00dh		;cd14	fe 0d 	. . 
	ret z			;cd16	c8 	. 
	cp 00ah		;cd17	fe 0a 	. . 
	ret z			;cd19	c8 	. 
	cp 009h		;cd1a	fe 09 	. . 
	ret z			;cd1c	c8 	. 
	cp 008h		;cd1d	fe 08 	. . 
	ret z			;cd1f	c8 	. 
	cp 020h		;cd20	fe 20 	.   
lcd22h:
	ret			;cd22	c9 	. 
sub_cd23h:
	ld a,(lcf0eh)		;cd23	3a 0e cf 	: . . 
	or a			;cd26	b7 	. 
	jp nz,lcd45h		;cd27	c2 45 cd 	. E . 
	call 0da06h		;cd2a	cd 06 da 	. . . 
	and 001h		;cd2d	e6 01 	. . 
	ret z			;cd2f	c8 	. 
	call 0da09h		;cd30	cd 09 da 	. . . 
	cp 013h		;cd33	fe 13 	. . 
	jp nz,lcd42h		;cd35	c2 42 cd 	. B . 
	call 0da09h		;cd38	cd 09 da 	. . . 
	cp 003h		;cd3b	fe 03 	. . 
	jp z,00000h		;cd3d	ca 00 00 	. . . 
	xor a			;cd40	af 	. 
	ret			;cd41	c9 	. 
lcd42h:
	ld (lcf0eh),a		;cd42	32 0e cf 	2 . . 
lcd45h:
	ld a,001h		;cd45	3e 01 	> . 
	ret			;cd47	c9 	. 
sub_cd48h:
	ld a,(lcf0ah)		;cd48	3a 0a cf 	: . . 
	or a			;cd4b	b7 	. 
	jp nz,lcd62h		;cd4c	c2 62 cd 	. b . 
	push bc			;cd4f	c5 	. 
	call sub_cd23h		;cd50	cd 23 cd 	. # . 
	pop bc			;cd53	c1 	. 
	push bc			;cd54	c5 	. 
	call 0da0ch		;cd55	cd 0c da 	. . . 
	pop bc			;cd58	c1 	. 
	push bc			;cd59	c5 	. 
	ld a,(lcf0dh)		;cd5a	3a 0d cf 	: . . 
	or a			;cd5d	b7 	. 
	call nz,0da0fh		;cd5e	c4 0f da 	. . . 
	pop bc			;cd61	c1 	. 
lcd62h:
	ld a,c			;cd62	79 	y 
	ld hl,lcf0ch		;cd63	21 0c cf 	! . . 
	cp 07fh		;cd66	fe 7f 	.  
	ret z			;cd68	c8 	. 
	inc (hl)			;cd69	34 	4 
	cp 020h		;cd6a	fe 20 	.   
	ret nc			;cd6c	d0 	. 
	dec (hl)			;cd6d	35 	5 
	ld a,(hl)			;cd6e	7e 	~ 
	or a			;cd6f	b7 	. 
	ret z			;cd70	c8 	. 
	ld a,c			;cd71	79 	y 
	cp 008h		;cd72	fe 08 	. . 
	jp nz,lcd79h		;cd74	c2 79 cd 	. y . 
	dec (hl)			;cd77	35 	5 
	ret			;cd78	c9 	. 
lcd79h:
	cp 00ah		;cd79	fe 0a 	. . 
	ret nz			;cd7b	c0 	. 
	ld (hl),000h		;cd7c	36 00 	6 . 
	ret			;cd7e	c9 	. 
sub_cd7fh:
	ld a,c			;cd7f	79 	y 
	call sub_cd14h		;cd80	cd 14 cd 	. . . 
	jp nc,sub_cd90h		;cd83	d2 90 cd 	. . . 
	push af			;cd86	f5 	. 
	ld c,05eh		;cd87	0e 5e 	. ^ 
	call sub_cd48h		;cd89	cd 48 cd 	. H . 
	pop af			;cd8c	f1 	. 
	or 040h		;cd8d	f6 40 	. @ 
	ld c,a			;cd8f	4f 	O 
sub_cd90h:
	ld a,c			;cd90	79 	y 
	cp 009h		;cd91	fe 09 	. . 
	jp nz,sub_cd48h		;cd93	c2 48 cd 	. H . 
lcd96h:
	ld c,020h		;cd96	0e 20 	.   
	call sub_cd48h		;cd98	cd 48 cd 	. H . 
	ld a,(lcf0ch)		;cd9b	3a 0c cf 	: . . 
	and 007h		;cd9e	e6 07 	. . 
	jp nz,lcd96h		;cda0	c2 96 cd 	. . . 
	ret			;cda3	c9 	. 
sub_cda4h:
	call sub_cdach		;cda4	cd ac cd 	. . . 
	ld c,020h		;cda7	0e 20 	.   
	call 0da0ch		;cda9	cd 0c da 	. . . 
sub_cdach:
	ld c,008h		;cdac	0e 08 	. . 
	jp 0da0ch		;cdae	c3 0c da 	. . . 
sub_cdb1h:
	ld c,023h		;cdb1	0e 23 	. # 
	call sub_cd48h		;cdb3	cd 48 cd 	. H . 
	call sub_cdc9h		;cdb6	cd c9 cd 	. . . 
lcdb9h:
	ld a,(lcf0ch)		;cdb9	3a 0c cf 	: . . 
	ld hl,lcf0bh		;cdbc	21 0b cf 	! . . 
	cp (hl)			;cdbf	be 	. 
	ret nc			;cdc0	d0 	. 
	ld c,020h		;cdc1	0e 20 	.   
	call sub_cd48h		;cdc3	cd 48 cd 	. H . 
	jp lcdb9h		;cdc6	c3 b9 cd 	. . . 
sub_cdc9h:
	ld c,00dh		;cdc9	0e 0d 	. . 
	call sub_cd48h		;cdcb	cd 48 cd 	. H . 
	ld c,00ah		;cdce	0e 0a 	. . 
	jp sub_cd48h		;cdd0	c3 48 cd 	. H . 
sub_cdd3h:
	ld a,(bc)			;cdd3	0a 	. 
	cp 024h		;cdd4	fe 24 	. $ 
	ret z			;cdd6	c8 	. 
	inc bc			;cdd7	03 	. 
	push bc			;cdd8	c5 	. 
	ld c,a			;cdd9	4f 	O 
	call sub_cd90h		;cdda	cd 90 cd 	. . . 
	pop bc			;cddd	c1 	. 
	jp sub_cdd3h		;cdde	c3 d3 cd 	. . . 
lcde1h:
	ld a,(lcf0ch)		;cde1	3a 0c cf 	: . . 
	ld (lcf0bh),a		;cde4	32 0b cf 	2 . . 
	ld hl,(lcf43h)		;cde7	2a 43 cf 	* C . 
	ld c,(hl)			;cdea	4e 	N 
	inc hl			;cdeb	23 	# 
	push hl			;cdec	e5 	. 
	ld b,000h		;cded	06 00 	. . 
lcdefh:
	push bc			;cdef	c5 	. 
	push hl			;cdf0	e5 	. 
lcdf1h:
	call sub_ccfbh		;cdf1	cd fb cc 	. . . 
	and 07fh		;cdf4	e6 7f 	.  
	pop hl			;cdf6	e1 	. 
	pop bc			;cdf7	c1 	. 
	cp 00dh		;cdf8	fe 0d 	. . 
	jp z,lcec1h		;cdfa	ca c1 ce 	. . . 
	cp 00ah		;cdfd	fe 0a 	. . 
	jp z,lcec1h		;cdff	ca c1 ce 	. . . 
	cp 008h		;ce02	fe 08 	. . 
	jp nz,lce16h		;ce04	c2 16 ce 	. . . 
	ld a,b			;ce07	78 	x 
	or a			;ce08	b7 	. 
	jp z,lcdefh		;ce09	ca ef cd 	. . . 
	dec b			;ce0c	05 	. 
	ld a,(lcf0ch)		;ce0d	3a 0c cf 	: . . 
	ld (lcf0ah),a		;ce10	32 0a cf 	2 . . 
	jp lce70h		;ce13	c3 70 ce 	. p . 
lce16h:
	cp 07fh		;ce16	fe 7f 	.  
	jp nz,lce26h		;ce18	c2 26 ce 	. & . 
	ld a,b			;ce1b	78 	x 
	or a			;ce1c	b7 	. 
	jp z,lcdefh		;ce1d	ca ef cd 	. . . 
	ld a,(hl)			;ce20	7e 	~ 
	dec b			;ce21	05 	. 
	dec hl			;ce22	2b 	+ 
	jp lcea9h		;ce23	c3 a9 ce 	. . . 
lce26h:
	cp 005h		;ce26	fe 05 	. . 
	jp nz,lce37h		;ce28	c2 37 ce 	. 7 . 
	push bc			;ce2b	c5 	. 
	push hl			;ce2c	e5 	. 
	call sub_cdc9h		;ce2d	cd c9 cd 	. . . 
	xor a			;ce30	af 	. 
	ld (lcf0bh),a		;ce31	32 0b cf 	2 . . 
	jp lcdf1h		;ce34	c3 f1 cd 	. . . 
lce37h:
	cp 010h		;ce37	fe 10 	. . 
	jp nz,lce48h		;ce39	c2 48 ce 	. H . 
	push hl			;ce3c	e5 	. 
	ld hl,lcf0dh		;ce3d	21 0d cf 	! . . 
	ld a,001h		;ce40	3e 01 	> . 
	sub (hl)			;ce42	96 	. 
	ld (hl),a			;ce43	77 	w 
	pop hl			;ce44	e1 	. 
	jp lcdefh		;ce45	c3 ef cd 	. . . 
lce48h:
	cp 018h		;ce48	fe 18 	. . 
	jp nz,lce5fh		;ce4a	c2 5f ce 	. _ . 
	pop hl			;ce4d	e1 	. 
lce4eh:
	ld a,(lcf0bh)		;ce4e	3a 0b cf 	: . . 
	ld hl,lcf0ch		;ce51	21 0c cf 	! . . 
	cp (hl)			;ce54	be 	. 
	jp nc,lcde1h		;ce55	d2 e1 cd 	. . . 
	dec (hl)			;ce58	35 	5 
	call sub_cda4h		;ce59	cd a4 cd 	. . . 
	jp lce4eh		;ce5c	c3 4e ce 	. N . 
lce5fh:
	cp 015h		;ce5f	fe 15 	. . 
	jp nz,lce6bh		;ce61	c2 6b ce 	. k . 
	call sub_cdb1h		;ce64	cd b1 cd 	. . . 
	pop hl			;ce67	e1 	. 
	jp lcde1h		;ce68	c3 e1 cd 	. . . 
lce6bh:
	cp 012h		;ce6b	fe 12 	. . 
	jp nz,lcea6h		;ce6d	c2 a6 ce 	. . . 
lce70h:
	push bc			;ce70	c5 	. 
	call sub_cdb1h		;ce71	cd b1 cd 	. . . 
	pop bc			;ce74	c1 	. 
	pop hl			;ce75	e1 	. 
	push hl			;ce76	e5 	. 
	push bc			;ce77	c5 	. 
lce78h:
	ld a,b			;ce78	78 	x 
	or a			;ce79	b7 	. 
	jp z,lce8ah		;ce7a	ca 8a ce 	. . . 
	inc hl			;ce7d	23 	# 
	ld c,(hl)			;ce7e	4e 	N 
	dec b			;ce7f	05 	. 
	push bc			;ce80	c5 	. 
	push hl			;ce81	e5 	. 
	call sub_cd7fh		;ce82	cd 7f cd 	.  . 
	pop hl			;ce85	e1 	. 
	pop bc			;ce86	c1 	. 
	jp lce78h		;ce87	c3 78 ce 	. x . 
lce8ah:
	push hl			;ce8a	e5 	. 
	ld a,(lcf0ah)		;ce8b	3a 0a cf 	: . . 
	or a			;ce8e	b7 	. 
	jp z,lcdf1h		;ce8f	ca f1 cd 	. . . 
	ld hl,lcf0ch		;ce92	21 0c cf 	! . . 
	sub (hl)			;ce95	96 	. 
	ld (lcf0ah),a		;ce96	32 0a cf 	2 . . 
lce99h:
	call sub_cda4h		;ce99	cd a4 cd 	. . . 
	ld hl,lcf0ah		;ce9c	21 0a cf 	! . . 
	dec (hl)			;ce9f	35 	5 
	jp nz,lce99h		;cea0	c2 99 ce 	. . . 
	jp lcdf1h		;cea3	c3 f1 cd 	. . . 
lcea6h:
	inc hl			;cea6	23 	# 
	ld (hl),a			;cea7	77 	w 
	inc b			;cea8	04 	. 
lcea9h:
	push bc			;cea9	c5 	. 
	push hl			;ceaa	e5 	. 
	ld c,a			;ceab	4f 	O 
	call sub_cd7fh		;ceac	cd 7f cd 	.  . 
	pop hl			;ceaf	e1 	. 
	pop bc			;ceb0	c1 	. 
	ld a,(hl)			;ceb1	7e 	~ 
	cp 003h		;ceb2	fe 03 	. . 
	ld a,b			;ceb4	78 	x 
	jp nz,lcebdh		;ceb5	c2 bd ce 	. . . 
	cp 001h		;ceb8	fe 01 	. . 
	jp z,00000h		;ceba	ca 00 00 	. . . 
lcebdh:
	cp c			;cebd	b9 	. 
	jp c,lcdefh		;cebe	da ef cd 	. . . 
lcec1h:
	pop hl			;cec1	e1 	. 
	ld (hl),b			;cec2	70 	p 
	ld c,00dh		;cec3	0e 0d 	. . 
	jp sub_cd48h		;cec5	c3 48 cd 	. H . 
lcec8h:
	call sub_cd06h		;cec8	cd 06 cd 	. . . 
	jp lcf01h		;cecb	c3 01 cf 	. . . 
sub_ceceh:
	call 0da15h		;cece	cd 15 da 	. . . 
	jp lcf01h		;ced1	c3 01 cf 	. . . 
	ld a,c			;ced4	79 	y 
	inc a			;ced5	3c 	< 
	jp z,lcee0h		;ced6	ca e0 ce 	. . . 
	inc a			;ced9	3c 	< 
	jp z,0da06h		;ceda	ca 06 da 	. . . 
	jp 0da0ch		;cedd	c3 0c da 	. . . 
lcee0h:
	call 0da06h		;cee0	cd 06 da 	. . . 
	or a			;cee3	b7 	. 
	jp z,ld991h		;cee4	ca 91 d9 	. . . 
	call 0da09h		;cee7	cd 09 da 	. . . 
	jp lcf01h		;ceea	c3 01 cf 	. . . 
	ld a,(00003h)		;ceed	3a 03 00 	: . . 
	jp lcf01h		;cef0	c3 01 cf 	. . . 
	ld hl,00003h		;cef3	21 03 00 	! . . 
	ld (hl),c			;cef6	71 	q 
	ret			;cef7	c9 	. 
	ex de,hl			;cef8	eb 	. 
	ld c,l			;cef9	4d 	M 
	ld b,h			;cefa	44 	D 
	jp sub_cdd3h		;cefb	c3 d3 cd 	. . . 
sub_cefeh:
	call sub_cd23h		;cefe	cd 23 cd 	. # . 
lcf01h:
	ld (lcf45h),a		;cf01	32 45 cf 	2 E . 
	ret			;cf04	c9 	. 
sub_cf05h:
	ld a,001h		;cf05	3e 01 	> . 
	jp lcf01h		;cf07	c3 01 cf 	. . . 
lcf0ah:
	nop			;cf0a	00 	. 
lcf0bh:
	nop			;cf0b	00 	. 
lcf0ch:
	nop			;cf0c	00 	. 
lcf0dh:
	nop			;cf0d	00 	. 
lcf0eh:
	nop			;cf0e	00 	. 
lcf0fh:
	nop			;cf0f	00 	. 
	nop			;cf10	00 	. 
	nop			;cf11	00 	. 
	nop			;cf12	00 	. 
	nop			;cf13	00 	. 
	nop			;cf14	00 	. 
	nop			;cf15	00 	. 
	nop			;cf16	00 	. 
	nop			;cf17	00 	. 
	nop			;cf18	00 	. 
	nop			;cf19	00 	. 
	nop			;cf1a	00 	. 
	nop			;cf1b	00 	. 
	nop			;cf1c	00 	. 
	nop			;cf1d	00 	. 
	nop			;cf1e	00 	. 
	nop			;cf1f	00 	. 
	nop			;cf20	00 	. 
	nop			;cf21	00 	. 
	nop			;cf22	00 	. 
	nop			;cf23	00 	. 
	nop			;cf24	00 	. 
	nop			;cf25	00 	. 
	nop			;cf26	00 	. 
	nop			;cf27	00 	. 
	nop			;cf28	00 	. 
	nop			;cf29	00 	. 
	nop			;cf2a	00 	. 
	nop			;cf2b	00 	. 
	nop			;cf2c	00 	. 
	nop			;cf2d	00 	. 
	nop			;cf2e	00 	. 
	nop			;cf2f	00 	. 
	nop			;cf30	00 	. 
	nop			;cf31	00 	. 
	nop			;cf32	00 	. 
	nop			;cf33	00 	. 
	nop			;cf34	00 	. 
	nop			;cf35	00 	. 
	nop			;cf36	00 	. 
	nop			;cf37	00 	. 
	nop			;cf38	00 	. 
	nop			;cf39	00 	. 
	nop			;cf3a	00 	. 
	nop			;cf3b	00 	. 
	nop			;cf3c	00 	. 
	nop			;cf3d	00 	. 
	nop			;cf3e	00 	. 
	nop			;cf3f	00 	. 
	nop			;cf40	00 	. 
lcf41h:
	nop			;cf41	00 	. 
lcf42h:
	nop			;cf42	00 	. 
lcf43h:
	nop			;cf43	00 	. 
	nop			;cf44	00 	. 
lcf45h:
	nop			;cf45	00 	. 
	nop			;cf46	00 	. 
sub_cf47h:
	ld hl,0cc0bh		;cf47	21 0b cc 	! . . 
lcf4ah:
	ld e,(hl)			;cf4a	5e 	^ 
	inc hl			;cf4b	23 	# 
	ld d,(hl)			;cf4c	56 	V 
	ex de,hl			;cf4d	eb 	. 
	jp (hl)			;cf4e	e9 	. 
sub_cf4fh:
	inc c			;cf4f	0c 	. 
lcf50h:
	dec c			;cf50	0d 	. 
	ret z			;cf51	c8 	. 
	ld a,(de)			;cf52	1a 	. 
	ld (hl),a			;cf53	77 	w 
	inc de			;cf54	13 	. 
	inc hl			;cf55	23 	# 
	jp lcf50h		;cf56	c3 50 cf 	. P . 
sub_cf59h:
	ld a,(lcf42h)		;cf59	3a 42 cf 	: B . 
	ld c,a			;cf5c	4f 	O 
	call 0da1bh		;cf5d	cd 1b da 	. . . 
	ld a,h			;cf60	7c 	| 
	or l			;cf61	b5 	. 
	ret z			;cf62	c8 	. 
	ld e,(hl)			;cf63	5e 	^ 
	inc hl			;cf64	23 	# 
	ld d,(hl)			;cf65	56 	V 
	inc hl			;cf66	23 	# 
	ld (ld9b3h),hl		;cf67	22 b3 d9 	" . . 
	inc hl			;cf6a	23 	# 
	inc hl			;cf6b	23 	# 
	ld (ld9b5h),hl		;cf6c	22 b5 d9 	" . . 
	inc hl			;cf6f	23 	# 
	inc hl			;cf70	23 	# 
	ld (ld9b7h),hl		;cf71	22 b7 d9 	" . . 
	inc hl			;cf74	23 	# 
	inc hl			;cf75	23 	# 
	ex de,hl			;cf76	eb 	. 
	ld (ld9d0h),hl		;cf77	22 d0 d9 	" . . 
	ld hl,ld9b9h		;cf7a	21 b9 d9 	! . . 
	ld c,008h		;cf7d	0e 08 	. . 
	call sub_cf4fh		;cf7f	cd 4f cf 	. O . 
	ld hl,(ld9bbh)		;cf82	2a bb d9 	* . . 
	ex de,hl			;cf85	eb 	. 
	ld hl,ld9c1h		;cf86	21 c1 d9 	! . . 
	ld c,00fh		;cf89	0e 0f 	. . 
	call sub_cf4fh		;cf8b	cd 4f cf 	. O . 
	ld hl,(ld9c6h)		;cf8e	2a c6 d9 	* . . 
	ld a,h			;cf91	7c 	| 
	ld hl,ld9ddh		;cf92	21 dd d9 	! . . 
	ld (hl),0ffh		;cf95	36 ff 	6 . 
	or a			;cf97	b7 	. 
	jp z,lcf9dh		;cf98	ca 9d cf 	. . . 
	ld (hl),000h		;cf9b	36 00 	6 . 
lcf9dh:
	ld a,0ffh		;cf9d	3e ff 	> . 
	or a			;cf9f	b7 	. 
	ret			;cfa0	c9 	. 
sub_cfa1h:
	call 0da18h		;cfa1	cd 18 da 	. . . 
	xor a			;cfa4	af 	. 
	ld hl,(ld9b5h)		;cfa5	2a b5 d9 	* . . 
	ld (hl),a			;cfa8	77 	w 
	inc hl			;cfa9	23 	# 
	ld (hl),a			;cfaa	77 	w 
	ld hl,(ld9b7h)		;cfab	2a b7 d9 	* . . 
	ld (hl),a			;cfae	77 	w 
	inc hl			;cfaf	23 	# 
	ld (hl),a			;cfb0	77 	w 
	ret			;cfb1	c9 	. 
sub_cfb2h:
	call 0da27h		;cfb2	cd 27 da 	. ' . 
	jp lcfbbh		;cfb5	c3 bb cf 	. . . 
sub_cfb8h:
	call 0da2ah		;cfb8	cd 2a da 	. * . 
lcfbbh:
	or a			;cfbb	b7 	. 
	ret z			;cfbc	c8 	. 
	ld hl,lcc09h		;cfbd	21 09 cc 	! . . 
	jp lcf4ah		;cfc0	c3 4a cf 	. J . 
sub_cfc3h:
	ld hl,(ld9eah)		;cfc3	2a ea d9 	* . . 
	ld c,002h		;cfc6	0e 02 	. . 
	call sub_d0eah		;cfc8	cd ea d0 	. . . 
	ld (ld9e5h),hl		;cfcb	22 e5 d9 	" . . 
	ld (ld9ech),hl		;cfce	22 ec d9 	" . . 
sub_cfd1h:
	ld hl,ld9e5h		;cfd1	21 e5 d9 	! . . 
	ld c,(hl)			;cfd4	4e 	N 
	inc hl			;cfd5	23 	# 
	ld b,(hl)			;cfd6	46 	F 
	ld hl,(ld9b7h)		;cfd7	2a b7 d9 	* . . 
	ld e,(hl)			;cfda	5e 	^ 
	inc hl			;cfdb	23 	# 
	ld d,(hl)			;cfdc	56 	V 
	ld hl,(ld9b5h)		;cfdd	2a b5 d9 	* . . 
	ld a,(hl)			;cfe0	7e 	~ 
	inc hl			;cfe1	23 	# 
	ld h,(hl)			;cfe2	66 	f 
	ld l,a			;cfe3	6f 	o 
lcfe4h:
	ld a,c			;cfe4	79 	y 
	sub e			;cfe5	93 	. 
	ld a,b			;cfe6	78 	x 
	sbc a,d			;cfe7	9a 	. 
	jp nc,lcffah		;cfe8	d2 fa cf 	. . . 
	push hl			;cfeb	e5 	. 
	ld hl,(ld9c1h)		;cfec	2a c1 d9 	* . . 
	ld a,e			;cfef	7b 	{ 
	sub l			;cff0	95 	. 
	ld e,a			;cff1	5f 	_ 
	ld a,d			;cff2	7a 	z 
	sbc a,h			;cff3	9c 	. 
	ld d,a			;cff4	57 	W 
	pop hl			;cff5	e1 	. 
	dec hl			;cff6	2b 	+ 
	jp lcfe4h		;cff7	c3 e4 cf 	. . . 
lcffah:
	push hl			;cffa	e5 	. 
	ld hl,(ld9c1h)		;cffb	2a c1 d9 	* . . 
	add hl,de			;cffe	19 	. 
	jp c,ld00fh		;cfff	da 0f d0 	. . . 
	ld a,c			;d002	79 	y 
	sub l			;d003	95 	. 
	ld a,b			;d004	78 	x 
	sbc a,h			;d005	9c 	. 
	jp c,ld00fh		;d006	da 0f d0 	. . . 
	ex de,hl			;d009	eb 	. 
	pop hl			;d00a	e1 	. 
	inc hl			;d00b	23 	# 
	jp lcffah		;d00c	c3 fa cf 	. . . 
ld00fh:
	pop hl			;d00f	e1 	. 
	push bc			;d010	c5 	. 
	push de			;d011	d5 	. 
	push hl			;d012	e5 	. 
	ex de,hl			;d013	eb 	. 
	ld hl,(ld9ceh)		;d014	2a ce d9 	* . . 
	add hl,de			;d017	19 	. 
	ld b,h			;d018	44 	D 
	ld c,l			;d019	4d 	M 
	call 0da1eh		;d01a	cd 1e da 	. . . 
	pop de			;d01d	d1 	. 
	ld hl,(ld9b5h)		;d01e	2a b5 d9 	* . . 
	ld (hl),e			;d021	73 	s 
	inc hl			;d022	23 	# 
	ld (hl),d			;d023	72 	r 
	pop de			;d024	d1 	. 
	ld hl,(ld9b7h)		;d025	2a b7 d9 	* . . 
	ld (hl),e			;d028	73 	s 
	inc hl			;d029	23 	# 
	ld (hl),d			;d02a	72 	r 
	pop bc			;d02b	c1 	. 
	ld a,c			;d02c	79 	y 
	sub e			;d02d	93 	. 
	ld c,a			;d02e	4f 	O 
	ld a,b			;d02f	78 	x 
	sbc a,d			;d030	9a 	. 
	ld b,a			;d031	47 	G 
	ld hl,(ld9d0h)		;d032	2a d0 d9 	* . . 
	ex de,hl			;d035	eb 	. 
	call 0da30h		;d036	cd 30 da 	. 0 . 
	ld c,l			;d039	4d 	M 
	ld b,h			;d03a	44 	D 
	jp 0da21h		;d03b	c3 21 da 	. ! . 
sub_d03eh:
	ld hl,ld9c3h		;d03e	21 c3 d9 	! . . 
	ld c,(hl)			;d041	4e 	N 
	ld a,(ld9e3h)		;d042	3a e3 d9 	: . . 
ld045h:
	or a			;d045	b7 	. 
	rra			;d046	1f 	. 
	dec c			;d047	0d 	. 
	jp nz,ld045h		;d048	c2 45 d0 	. E . 
	ld b,a			;d04b	47 	G 
	ld a,008h		;d04c	3e 08 	> . 
	sub (hl)			;d04e	96 	. 
	ld c,a			;d04f	4f 	O 
	ld a,(ld9e2h)		;d050	3a e2 d9 	: . . 
ld053h:
	dec c			;d053	0d 	. 
	jp z,ld05ch		;d054	ca 5c d0 	. \ . 
	or a			;d057	b7 	. 
	rla			;d058	17 	. 
	jp ld053h		;d059	c3 53 d0 	. S . 
ld05ch:
	add a,b			;d05c	80 	. 
	ret			;d05d	c9 	. 
sub_d05eh:
	ld hl,(lcf43h)		;d05e	2a 43 cf 	* C . 
	ld de,00010h		;d061	11 10 00 	. . . 
	add hl,de			;d064	19 	. 
	add hl,bc			;d065	09 	. 
	ld a,(ld9ddh)		;d066	3a dd d9 	: . . 
	or a			;d069	b7 	. 
	jp z,ld071h		;d06a	ca 71 d0 	. q . 
	ld l,(hl)			;d06d	6e 	n 
	ld h,000h		;d06e	26 00 	& . 
	ret			;d070	c9 	. 
ld071h:
	add hl,bc			;d071	09 	. 
	ld e,(hl)			;d072	5e 	^ 
	inc hl			;d073	23 	# 
	ld d,(hl)			;d074	56 	V 
	ex de,hl			;d075	eb 	. 
	ret			;d076	c9 	. 
sub_d077h:
	call sub_d03eh		;d077	cd 3e d0 	. > . 
	ld c,a			;d07a	4f 	O 
	ld b,000h		;d07b	06 00 	. . 
	call sub_d05eh		;d07d	cd 5e d0 	. ^ . 
	ld (ld9e5h),hl		;d080	22 e5 d9 	" . . 
	ret			;d083	c9 	. 
sub_d084h:
	ld hl,(ld9e5h)		;d084	2a e5 d9 	* . . 
	ld a,l			;d087	7d 	} 
	or h			;d088	b4 	. 
	ret			;d089	c9 	. 
sub_d08ah:
	ld a,(ld9c3h)		;d08a	3a c3 d9 	: . . 
	ld hl,(ld9e5h)		;d08d	2a e5 d9 	* . . 
ld090h:
	add hl,hl			;d090	29 	) 
	dec a			;d091	3d 	= 
	jp nz,ld090h		;d092	c2 90 d0 	. . . 
	ld (ld9e7h),hl		;d095	22 e7 d9 	" . . 
	ld a,(ld9c4h)		;d098	3a c4 d9 	: . . 
	ld c,a			;d09b	4f 	O 
	ld a,(ld9e3h)		;d09c	3a e3 d9 	: . . 
	and c			;d09f	a1 	. 
	or l			;d0a0	b5 	. 
	ld l,a			;d0a1	6f 	o 
	ld (ld9e5h),hl		;d0a2	22 e5 d9 	" . . 
	ret			;d0a5	c9 	. 
sub_d0a6h:
	ld hl,(lcf43h)		;d0a6	2a 43 cf 	* C . 
	ld de,0000ch		;d0a9	11 0c 00 	. . . 
	add hl,de			;d0ac	19 	. 
	ret			;d0ad	c9 	. 
sub_d0aeh:
	ld hl,(lcf43h)		;d0ae	2a 43 cf 	* C . 
	ld de,0000fh		;d0b1	11 0f 00 	. . . 
	add hl,de			;d0b4	19 	. 
	ex de,hl			;d0b5	eb 	. 
	ld hl,00011h		;d0b6	21 11 00 	! . . 
	add hl,de			;d0b9	19 	. 
	ret			;d0ba	c9 	. 
sub_d0bbh:
	call sub_d0aeh		;d0bb	cd ae d0 	. . . 
	ld a,(hl)			;d0be	7e 	~ 
	ld (ld9e3h),a		;d0bf	32 e3 d9 	2 . . 
	ex de,hl			;d0c2	eb 	. 
	ld a,(hl)			;d0c3	7e 	~ 
	ld (ld9e1h),a		;d0c4	32 e1 d9 	2 . . 
	call sub_d0a6h		;d0c7	cd a6 d0 	. . . 
	ld a,(ld9c5h)		;d0ca	3a c5 d9 	: . . 
	and (hl)			;d0cd	a6 	. 
	ld (ld9e2h),a		;d0ce	32 e2 d9 	2 . . 
	ret			;d0d1	c9 	. 
ld0d2h:
	call sub_d0aeh		;d0d2	cd ae d0 	. . . 
	ld a,(ld9d5h)		;d0d5	3a d5 d9 	: . . 
	cp 002h		;d0d8	fe 02 	. . 
	jp nz,ld0deh		;d0da	c2 de d0 	. . . 
	xor a			;d0dd	af 	. 
ld0deh:
	ld c,a			;d0de	4f 	O 
	ld a,(ld9e3h)		;d0df	3a e3 d9 	: . . 
	add a,c			;d0e2	81 	. 
	ld (hl),a			;d0e3	77 	w 
	ex de,hl			;d0e4	eb 	. 
	ld a,(ld9e1h)		;d0e5	3a e1 d9 	: . . 
	ld (hl),a			;d0e8	77 	w 
	ret			;d0e9	c9 	. 
sub_d0eah:
	inc c			;d0ea	0c 	. 
ld0ebh:
	dec c			;d0eb	0d 	. 
	ret z			;d0ec	c8 	. 
	ld a,h			;d0ed	7c 	| 
	or a			;d0ee	b7 	. 
	rra			;d0ef	1f 	. 
	ld h,a			;d0f0	67 	g 
	ld a,l			;d0f1	7d 	} 
	rra			;d0f2	1f 	. 
	ld l,a			;d0f3	6f 	o 
	jp ld0ebh		;d0f4	c3 eb d0 	. . . 
sub_d0f7h:
	ld c,080h		;d0f7	0e 80 	. . 
	ld hl,(ld9b9h)		;d0f9	2a b9 d9 	* . . 
	xor a			;d0fc	af 	. 
ld0fdh:
	add a,(hl)			;d0fd	86 	. 
	inc hl			;d0fe	23 	# 
	dec c			;d0ff	0d 	. 
	jp nz,ld0fdh		;d100	c2 fd d0 	. . . 
	ret			;d103	c9 	. 
sub_d104h:
	inc c			;d104	0c 	. 
ld105h:
	dec c			;d105	0d 	. 
	ret z			;d106	c8 	. 
	add hl,hl			;d107	29 	) 
	jp ld105h		;d108	c3 05 d1 	. . . 
sub_d10bh:
	push bc			;d10b	c5 	. 
	ld a,(lcf42h)		;d10c	3a 42 cf 	: B . 
	ld c,a			;d10f	4f 	O 
	ld hl,00001h		;d110	21 01 00 	! . . 
	call sub_d104h		;d113	cd 04 d1 	. . . 
	pop bc			;d116	c1 	. 
	ld a,c			;d117	79 	y 
	or l			;d118	b5 	. 
	ld l,a			;d119	6f 	o 
	ld a,b			;d11a	78 	x 
	or h			;d11b	b4 	. 
	ld h,a			;d11c	67 	g 
	ret			;d11d	c9 	. 
sub_d11eh:
	ld hl,(ld9adh)		;d11e	2a ad d9 	* . . 
	ld a,(lcf42h)		;d121	3a 42 cf 	: B . 
	ld c,a			;d124	4f 	O 
	call sub_d0eah		;d125	cd ea d0 	. . . 
	ld a,l			;d128	7d 	} 
	and 001h		;d129	e6 01 	. . 
	ret			;d12b	c9 	. 
sub_d12ch:
	ld hl,ld9adh		;d12c	21 ad d9 	! . . 
	ld c,(hl)			;d12f	4e 	N 
	inc hl			;d130	23 	# 
	ld b,(hl)			;d131	46 	F 
	call sub_d10bh		;d132	cd 0b d1 	. . . 
	ld (ld9adh),hl		;d135	22 ad d9 	" . . 
	ld hl,(ld9c8h)		;d138	2a c8 d9 	* . . 
	inc hl			;d13b	23 	# 
	ex de,hl			;d13c	eb 	. 
	ld hl,(ld9b3h)		;d13d	2a b3 d9 	* . . 
	ld (hl),e			;d140	73 	s 
	inc hl			;d141	23 	# 
	ld (hl),d			;d142	72 	r 
	ret			;d143	c9 	. 
sub_d144h:
	call sub_d15eh		;d144	cd 5e d1 	. ^ . 
sub_d147h:
	ld de,00009h		;d147	11 09 00 	. . . 
	add hl,de			;d14a	19 	. 
	ld a,(hl)			;d14b	7e 	~ 
	rla			;d14c	17 	. 
	ret nc			;d14d	d0 	. 
	ld hl,0cc0fh		;d14e	21 0f cc 	! . . 
	jp lcf4ah		;d151	c3 4a cf 	. J . 
sub_d154h:
	call sub_d11eh		;d154	cd 1e d1 	. . . 
	ret z			;d157	c8 	. 
	ld hl,lcc0dh		;d158	21 0d cc 	! . . 
	jp lcf4ah		;d15b	c3 4a cf 	. J . 
sub_d15eh:
	ld hl,(ld9b9h)		;d15e	2a b9 d9 	* . . 
	ld a,(ld9e9h)		;d161	3a e9 d9 	: . . 
sub_d164h:
	add a,l			;d164	85 	. 
	ld l,a			;d165	6f 	o 
	ret nc			;d166	d0 	. 
	inc h			;d167	24 	$ 
	ret			;d168	c9 	. 
sub_d169h:
	ld hl,(lcf43h)		;d169	2a 43 cf 	* C . 
	ld de,0000eh		;d16c	11 0e 00 	. . . 
	add hl,de			;d16f	19 	. 
	ld a,(hl)			;d170	7e 	~ 
	ret			;d171	c9 	. 
sub_d172h:
	call sub_d169h		;d172	cd 69 d1 	. i . 
	ld (hl),000h		;d175	36 00 	6 . 
	ret			;d177	c9 	. 
sub_d178h:
	call sub_d169h		;d178	cd 69 d1 	. i . 
	or 080h		;d17b	f6 80 	. . 
	ld (hl),a			;d17d	77 	w 
	ret			;d17e	c9 	. 
sub_d17fh:
	ld hl,(ld9eah)		;d17f	2a ea d9 	* . . 
	ex de,hl			;d182	eb 	. 
	ld hl,(ld9b3h)		;d183	2a b3 d9 	* . . 
	ld a,e			;d186	7b 	{ 
	sub (hl)			;d187	96 	. 
	inc hl			;d188	23 	# 
	ld a,d			;d189	7a 	z 
	sbc a,(hl)			;d18a	9e 	. 
	ret			;d18b	c9 	. 
sub_d18ch:
	call sub_d17fh		;d18c	cd 7f d1 	.  . 
	ret c			;d18f	d8 	. 
	inc de			;d190	13 	. 
	ld (hl),d			;d191	72 	r 
	dec hl			;d192	2b 	+ 
	ld (hl),e			;d193	73 	s 
	ret			;d194	c9 	. 
sub_d195h:
	ld a,e			;d195	7b 	{ 
	sub l			;d196	95 	. 
	ld l,a			;d197	6f 	o 
	ld a,d			;d198	7a 	z 
	sbc a,h			;d199	9c 	. 
	ld h,a			;d19a	67 	g 
	ret			;d19b	c9 	. 
sub_d19ch:
	ld c,0ffh		;d19c	0e ff 	. . 
ld19eh:
	ld hl,(ld9ech)		;d19e	2a ec d9 	* . . 
	ex de,hl			;d1a1	eb 	. 
	ld hl,(ld9cch)		;d1a2	2a cc d9 	* . . 
	call sub_d195h		;d1a5	cd 95 d1 	. . . 
	ret nc			;d1a8	d0 	. 
	push bc			;d1a9	c5 	. 
	call sub_d0f7h		;d1aa	cd f7 d0 	. . . 
	ld hl,(ld9bdh)		;d1ad	2a bd d9 	* . . 
	ex de,hl			;d1b0	eb 	. 
	ld hl,(ld9ech)		;d1b1	2a ec d9 	* . . 
	add hl,de			;d1b4	19 	. 
	pop bc			;d1b5	c1 	. 
	inc c			;d1b6	0c 	. 
	jp z,ld1c4h		;d1b7	ca c4 d1 	. . . 
	cp (hl)			;d1ba	be 	. 
	ret z			;d1bb	c8 	. 
	call sub_d17fh		;d1bc	cd 7f d1 	.  . 
	ret nc			;d1bf	d0 	. 
	call sub_d12ch		;d1c0	cd 2c d1 	. , . 
	ret			;d1c3	c9 	. 
ld1c4h:
	ld (hl),a			;d1c4	77 	w 
	ret			;d1c5	c9 	. 
sub_d1c6h:
	call sub_d19ch		;d1c6	cd 9c d1 	. . . 
	call sub_d1e0h		;d1c9	cd e0 d1 	. . . 
	ld c,001h		;d1cc	0e 01 	. . 
	call sub_cfb8h		;d1ce	cd b8 cf 	. . . 
	jp ld1dah		;d1d1	c3 da d1 	. . . 
sub_d1d4h:
	call sub_d1e0h		;d1d4	cd e0 d1 	. . . 
	call sub_cfb2h		;d1d7	cd b2 cf 	. . . 
ld1dah:
	ld hl,ld9b1h		;d1da	21 b1 d9 	! . . 
	jp ld1e3h		;d1dd	c3 e3 d1 	. . . 
sub_d1e0h:
	ld hl,ld9b9h		;d1e0	21 b9 d9 	! . . 
ld1e3h:
	ld c,(hl)			;d1e3	4e 	N 
	inc hl			;d1e4	23 	# 
	ld b,(hl)			;d1e5	46 	F 
	jp 0da24h		;d1e6	c3 24 da 	. $ . 
ld1e9h:
	ld hl,(ld9b9h)		;d1e9	2a b9 d9 	* . . 
	ex de,hl			;d1ec	eb 	. 
	ld hl,(ld9b1h)		;d1ed	2a b1 d9 	* . . 
	ld c,080h		;d1f0	0e 80 	. . 
	jp sub_cf4fh		;d1f2	c3 4f cf 	. O . 
sub_d1f5h:
	ld hl,ld9eah		;d1f5	21 ea d9 	! . . 
	ld a,(hl)			;d1f8	7e 	~ 
	inc hl			;d1f9	23 	# 
	cp (hl)			;d1fa	be 	. 
	ret nz			;d1fb	c0 	. 
	inc a			;d1fc	3c 	< 
	ret			;d1fd	c9 	. 
ld1feh:
	ld hl,0ffffh		;d1fe	21 ff ff 	! . . 
	ld (ld9eah),hl		;d201	22 ea d9 	" . . 
	ret			;d204	c9 	. 
sub_d205h:
	ld hl,(ld9c8h)		;d205	2a c8 d9 	* . . 
	ex de,hl			;d208	eb 	. 
	ld hl,(ld9eah)		;d209	2a ea d9 	* . . 
	inc hl			;d20c	23 	# 
	ld (ld9eah),hl		;d20d	22 ea d9 	" . . 
	call sub_d195h		;d210	cd 95 d1 	. . . 
	jp nc,ld219h		;d213	d2 19 d2 	. . . 
	jp ld1feh		;d216	c3 fe d1 	. . . 
ld219h:
	ld a,(ld9eah)		;d219	3a ea d9 	: . . 
	and 003h		;d21c	e6 03 	. . 
	ld b,005h		;d21e	06 05 	. . 
ld220h:
	add a,a			;d220	87 	. 
	dec b			;d221	05 	. 
	jp nz,ld220h		;d222	c2 20 d2 	.   . 
	ld (ld9e9h),a		;d225	32 e9 d9 	2 . . 
	or a			;d228	b7 	. 
	ret nz			;d229	c0 	. 
	push bc			;d22a	c5 	. 
	call sub_cfc3h		;d22b	cd c3 cf 	. . . 
	call sub_d1d4h		;d22e	cd d4 d1 	. . . 
	pop bc			;d231	c1 	. 
	jp ld19eh		;d232	c3 9e d1 	. . . 
sub_d235h:
	ld a,c			;d235	79 	y 
	and 007h		;d236	e6 07 	. . 
	inc a			;d238	3c 	< 
	ld e,a			;d239	5f 	_ 
	ld d,a			;d23a	57 	W 
	ld a,c			;d23b	79 	y 
	rrca			;d23c	0f 	. 
	rrca			;d23d	0f 	. 
	rrca			;d23e	0f 	. 
	and 01fh		;d23f	e6 1f 	. . 
	ld c,a			;d241	4f 	O 
	ld a,b			;d242	78 	x 
	add a,a			;d243	87 	. 
	add a,a			;d244	87 	. 
	add a,a			;d245	87 	. 
	add a,a			;d246	87 	. 
	add a,a			;d247	87 	. 
	or c			;d248	b1 	. 
	ld c,a			;d249	4f 	O 
	ld a,b			;d24a	78 	x 
	rrca			;d24b	0f 	. 
	rrca			;d24c	0f 	. 
	rrca			;d24d	0f 	. 
	and 01fh		;d24e	e6 1f 	. . 
	ld b,a			;d250	47 	G 
	ld hl,(ld9bfh)		;d251	2a bf d9 	* . . 
	add hl,bc			;d254	09 	. 
	ld a,(hl)			;d255	7e 	~ 
ld256h:
	rlca			;d256	07 	. 
	dec e			;d257	1d 	. 
	jp nz,ld256h		;d258	c2 56 d2 	. V . 
	ret			;d25b	c9 	. 
sub_d25ch:
	push de			;d25c	d5 	. 
	call sub_d235h		;d25d	cd 35 d2 	. 5 . 
	and 0feh		;d260	e6 fe 	. . 
	pop bc			;d262	c1 	. 
	or c			;d263	b1 	. 
ld264h:
	rrca			;d264	0f 	. 
	dec d			;d265	15 	. 
	jp nz,ld264h		;d266	c2 64 d2 	. d . 
	ld (hl),a			;d269	77 	w 
	ret			;d26a	c9 	. 
sub_d26bh:
	call sub_d15eh		;d26b	cd 5e d1 	. ^ . 
	ld de,00010h		;d26e	11 10 00 	. . . 
	add hl,de			;d271	19 	. 
	push bc			;d272	c5 	. 
	ld c,011h		;d273	0e 11 	. . 
ld275h:
	pop de			;d275	d1 	. 
	dec c			;d276	0d 	. 
	ret z			;d277	c8 	. 
	push de			;d278	d5 	. 
	ld a,(ld9ddh)		;d279	3a dd d9 	: . . 
	or a			;d27c	b7 	. 
	jr z,ld286h		;d27d	28 07 	( . 
	push bc			;d27f	c5 	. 
	push hl			;d280	e5 	. 
	ld c,(hl)			;d281	4e 	N 
	ld b,000h		;d282	06 00 	. . 
	jr ld28ch		;d284	18 06 	. . 
ld286h:
	dec c			;d286	0d 	. 
	push bc			;d287	c5 	. 
	ld c,(hl)			;d288	4e 	N 
	inc hl			;d289	23 	# 
	ld b,(hl)			;d28a	46 	F 
	push hl			;d28b	e5 	. 
ld28ch:
	ld a,c			;d28c	79 	y 
	or b			;d28d	b0 	. 
	jr z,ld29ah		;d28e	28 0a 	( . 
	ld hl,(ld9c6h)		;d290	2a c6 d9 	* . . 
	ld a,l			;d293	7d 	} 
	sub c			;d294	91 	. 
	ld a,h			;d295	7c 	| 
	sbc a,b			;d296	98 	. 
	call nc,sub_d25ch		;d297	d4 5c d2 	. \ . 
ld29ah:
	pop hl			;d29a	e1 	. 
	inc hl			;d29b	23 	# 
	pop bc			;d29c	c1 	. 
	jp ld275h		;d29d	c3 75 d2 	. u . 
ld2a0h:
	ld hl,(ld9c6h)		;d2a0	2a c6 d9 	* . . 
	ld c,003h		;d2a3	0e 03 	. . 
	call sub_d0eah		;d2a5	cd ea d0 	. . . 
	inc hl			;d2a8	23 	# 
	ld b,h			;d2a9	44 	D 
	ld c,l			;d2aa	4d 	M 
	ld hl,(ld9bfh)		;d2ab	2a bf d9 	* . . 
ld2aeh:
	ld (hl),000h		;d2ae	36 00 	6 . 
	inc hl			;d2b0	23 	# 
	dec bc			;d2b1	0b 	. 
	ld a,b			;d2b2	78 	x 
	or c			;d2b3	b1 	. 
	jr nz,ld2aeh		;d2b4	20 f8 	  . 
	ld hl,(ld9cah)		;d2b6	2a ca d9 	* . . 
	ex de,hl			;d2b9	eb 	. 
	ld hl,(ld9bfh)		;d2ba	2a bf d9 	* . . 
	ld (hl),e			;d2bd	73 	s 
	inc hl			;d2be	23 	# 
	ld (hl),d			;d2bf	72 	r 
	call sub_cfa1h		;d2c0	cd a1 cf 	. . . 
	ld hl,(ld9b3h)		;d2c3	2a b3 d9 	* . . 
	ld (hl),003h		;d2c6	36 03 	6 . 
	inc hl			;d2c8	23 	# 
	ld (hl),000h		;d2c9	36 00 	6 . 
	call ld1feh		;d2cb	cd fe d1 	. . . 
ld2ceh:
	ld c,0ffh		;d2ce	0e ff 	. . 
	call sub_d205h		;d2d0	cd 05 d2 	. . . 
	call sub_d1f5h		;d2d3	cd f5 d1 	. . . 
	push af			;d2d6	f5 	. 
	xor a			;d2d7	af 	. 
	ld (0da81h),a		;d2d8	32 81 da 	2 . . 
	pop af			;d2db	f1 	. 
	ret z			;d2dc	c8 	. 
	di			;d2dd	f3 	. 
	push af			;d2de	f5 	. 
	ld a,0ffh		;d2df	3e ff 	> . 
	ld (0da81h),a		;d2e1	32 81 da 	2 . . 
	pop af			;d2e4	f1 	. 
	ei			;d2e5	fb 	. 
	call sub_d15eh		;d2e6	cd 5e d1 	. ^ . 
	ld a,0e5h		;d2e9	3e e5 	> . 
	cp (hl)			;d2eb	be 	. 
	jr z,ld2ceh		;d2ec	28 e0 	( . 
	ld a,(lcf41h)		;d2ee	3a 41 cf 	: A . 
	cp (hl)			;d2f1	be 	. 
	jp nz,ld300h		;d2f2	c2 00 d3 	. . . 
	inc hl			;d2f5	23 	# 
	ld a,(hl)			;d2f6	7e 	~ 
	sub 024h		;d2f7	d6 24 	. $ 
	jp nz,ld300h		;d2f9	c2 00 d3 	. . . 
	dec a			;d2fc	3d 	= 
	ld (lcf45h),a		;d2fd	32 45 cf 	2 E . 
ld300h:
	ld c,001h		;d300	0e 01 	. . 
	call sub_d26bh		;d302	cd 6b d2 	. k . 
	call sub_d18ch		;d305	cd 8c d1 	. . . 
	jr ld2ceh		;d308	18 c4 	. . 
ld30ah:
	ld a,(ld9d4h)		;d30a	3a d4 d9 	: . . 
	jp lcf01h		;d30d	c3 01 cf 	. . . 
sub_d310h:
	push bc			;d310	c5 	. 
	push af			;d311	f5 	. 
	ld a,(ld9c5h)		;d312	3a c5 d9 	: . . 
	cpl			;d315	2f 	/ 
	ld b,a			;d316	47 	G 
	ld a,c			;d317	79 	y 
	and b			;d318	a0 	. 
	ld c,a			;d319	4f 	O 
	pop af			;d31a	f1 	. 
	and b			;d31b	a0 	. 
	sub c			;d31c	91 	. 
	and 01fh		;d31d	e6 1f 	. . 
	pop bc			;d31f	c1 	. 
	ret			;d320	c9 	. 
sub_d321h:
	ld a,0ffh		;d321	3e ff 	> . 
	ld (ld9d4h),a		;d323	32 d4 d9 	2 . . 
	ld hl,ld9d8h		;d326	21 d8 d9 	! . . 
	ld (hl),c			;d329	71 	q 
	ld hl,(lcf43h)		;d32a	2a 43 cf 	* C . 
	ld (ld9d9h),hl		;d32d	22 d9 d9 	" . . 
	call ld1feh		;d330	cd fe d1 	. . . 
	call sub_cfa1h		;d333	cd a1 cf 	. . . 
ld336h:
	ld c,000h		;d336	0e 00 	. . 
	call sub_d205h		;d338	cd 05 d2 	. . . 
	call sub_d1f5h		;d33b	cd f5 d1 	. . . 
	jp z,ld396h		;d33e	ca 96 d3 	. . . 
	ld hl,(ld9d9h)		;d341	2a d9 d9 	* . . 
	ex de,hl			;d344	eb 	. 
	ld a,(de)			;d345	1a 	. 
	cp 0e5h		;d346	fe e5 	. . 
	jr z,ld352h		;d348	28 08 	( . 
	push de			;d34a	d5 	. 
	call sub_d17fh		;d34b	cd 7f d1 	.  . 
	pop de			;d34e	d1 	. 
	jp nc,ld396h		;d34f	d2 96 d3 	. . . 
ld352h:
	call sub_d15eh		;d352	cd 5e d1 	. ^ . 
	ld a,(ld9d8h)		;d355	3a d8 d9 	: . . 
	ld c,a			;d358	4f 	O 
	ld b,000h		;d359	06 00 	. . 
ld35bh:
	ld a,c			;d35b	79 	y 
	or a			;d35c	b7 	. 
	jr z,ld385h		;d35d	28 26 	( & 
	ld a,(de)			;d35f	1a 	. 
	cp 03fh		;d360	fe 3f 	. ? 
	jr z,ld37fh		;d362	28 1b 	( . 
	ld a,b			;d364	78 	x 
	cp 00dh		;d365	fe 0d 	. . 
	jr z,ld37fh		;d367	28 16 	( . 
	cp 00ch		;d369	fe 0c 	. . 
	ld a,(de)			;d36b	1a 	. 
	jr z,ld376h		;d36c	28 08 	( . 
	sub (hl)			;d36e	96 	. 
	and 07fh		;d36f	e6 7f 	.  
	jp nz,ld336h		;d371	c2 36 d3 	. 6 . 
	jr ld37fh		;d374	18 09 	. . 
ld376h:
	push bc			;d376	c5 	. 
	ld c,(hl)			;d377	4e 	N 
	call sub_d310h		;d378	cd 10 d3 	. . . 
	pop bc			;d37b	c1 	. 
	jp nz,ld336h		;d37c	c2 36 d3 	. 6 . 
ld37fh:
	inc de			;d37f	13 	. 
	inc hl			;d380	23 	# 
	inc b			;d381	04 	. 
	dec c			;d382	0d 	. 
	jr ld35bh		;d383	18 d6 	. . 
ld385h:
	ld a,(ld9eah)		;d385	3a ea d9 	: . . 
	and 003h		;d388	e6 03 	. . 
	ld (lcf45h),a		;d38a	32 45 cf 	2 E . 
	ld hl,ld9d4h		;d38d	21 d4 d9 	! . . 
	ld a,(hl)			;d390	7e 	~ 
	rla			;d391	17 	. 
	ret nc			;d392	d0 	. 
	xor a			;d393	af 	. 
	ld (hl),a			;d394	77 	w 
	ret			;d395	c9 	. 
ld396h:
	call ld1feh		;d396	cd fe d1 	. . . 
	ld a,0ffh		;d399	3e ff 	> . 
	jp lcf01h		;d39b	c3 01 cf 	. . . 
sub_d39eh:
	call sub_d154h		;d39e	cd 54 d1 	. T . 
	ld c,00ch		;d3a1	0e 0c 	. . 
	call sub_d321h		;d3a3	cd 21 d3 	. ! . 
ld3a6h:
	call sub_d1f5h		;d3a6	cd f5 d1 	. . . 
	ret z			;d3a9	c8 	. 
	call sub_d144h		;d3aa	cd 44 d1 	. D . 
	call sub_d15eh		;d3ad	cd 5e d1 	. ^ . 
	ld (hl),0e5h		;d3b0	36 e5 	6 . 
	ld c,000h		;d3b2	0e 00 	. . 
	call sub_d26bh		;d3b4	cd 6b d2 	. k . 
	call sub_d1c6h		;d3b7	cd c6 d1 	. . . 
	call ld336h		;d3ba	cd 36 d3 	. 6 . 
	jr ld3a6h		;d3bd	18 e7 	. . 
sub_d3bfh:
	ld d,b			;d3bf	50 	P 
	ld e,c			;d3c0	59 	Y 
ld3c1h:
	ld a,c			;d3c1	79 	y 
	or b			;d3c2	b0 	. 
	jr z,ld3d1h		;d3c3	28 0c 	( . 
	dec bc			;d3c5	0b 	. 
	push de			;d3c6	d5 	. 
	push bc			;d3c7	c5 	. 
	call sub_d235h		;d3c8	cd 35 d2 	. 5 . 
	rra			;d3cb	1f 	. 
	jp nc,ld3ech		;d3cc	d2 ec d3 	. . . 
	pop bc			;d3cf	c1 	. 
	pop de			;d3d0	d1 	. 
ld3d1h:
	ld hl,(ld9c6h)		;d3d1	2a c6 d9 	* . . 
	ld a,e			;d3d4	7b 	{ 
	sub l			;d3d5	95 	. 
	ld a,d			;d3d6	7a 	z 
	sbc a,h			;d3d7	9c 	. 
	jp nc,ld3f4h		;d3d8	d2 f4 d3 	. . . 
	inc de			;d3db	13 	. 
	push bc			;d3dc	c5 	. 
	push de			;d3dd	d5 	. 
	ld b,d			;d3de	42 	B 
	ld c,e			;d3df	4b 	K 
	call sub_d235h		;d3e0	cd 35 d2 	. 5 . 
	rra			;d3e3	1f 	. 
	jp nc,ld3ech		;d3e4	d2 ec d3 	. . . 
	pop de			;d3e7	d1 	. 
	pop bc			;d3e8	c1 	. 
	jp ld3c1h		;d3e9	c3 c1 d3 	. . . 
ld3ech:
	rla			;d3ec	17 	. 
	inc a			;d3ed	3c 	< 
	call ld264h		;d3ee	cd 64 d2 	. d . 
	pop hl			;d3f1	e1 	. 
	pop de			;d3f2	d1 	. 
	ret			;d3f3	c9 	. 
ld3f4h:
	ld a,c			;d3f4	79 	y 
	or b			;d3f5	b0 	. 
	jp nz,ld3c1h		;d3f6	c2 c1 d3 	. . . 
	ld hl,00000h		;d3f9	21 00 00 	! . . 
	ret			;d3fc	c9 	. 
sub_d3fdh:
	ld c,000h		;d3fd	0e 00 	. . 
	ld e,020h		;d3ff	1e 20 	.   
sub_d401h:
	push de			;d401	d5 	. 
	ld b,000h		;d402	06 00 	. . 
	ld hl,(lcf43h)		;d404	2a 43 cf 	* C . 
	add hl,bc			;d407	09 	. 
	ex de,hl			;d408	eb 	. 
	call sub_d15eh		;d409	cd 5e d1 	. ^ . 
	pop bc			;d40c	c1 	. 
	call sub_cf4fh		;d40d	cd 4f cf 	. O . 
ld410h:
	call sub_cfc3h		;d410	cd c3 cf 	. . . 
	jp sub_d1c6h		;d413	c3 c6 d1 	. . . 
sub_d416h:
	call sub_d154h		;d416	cd 54 d1 	. T . 
	ld c,00ch		;d419	0e 0c 	. . 
	call sub_d321h		;d41b	cd 21 d3 	. ! . 
	ld hl,(lcf43h)		;d41e	2a 43 cf 	* C . 
	ld a,(hl)			;d421	7e 	~ 
	ld de,00010h		;d422	11 10 00 	. . . 
	add hl,de			;d425	19 	. 
	ld (hl),a			;d426	77 	w 
ld427h:
	call sub_d1f5h		;d427	cd f5 d1 	. . . 
	ret z			;d42a	c8 	. 
	call sub_d144h		;d42b	cd 44 d1 	. D . 
	ld c,010h		;d42e	0e 10 	. . 
	ld e,00ch		;d430	1e 0c 	. . 
	call sub_d401h		;d432	cd 01 d4 	. . . 
	call ld336h		;d435	cd 36 d3 	. 6 . 
	jp ld427h		;d438	c3 27 d4 	. ' . 
sub_d43bh:
	ld c,00ch		;d43b	0e 0c 	. . 
	call sub_d321h		;d43d	cd 21 d3 	. ! . 
ld440h:
	call sub_d1f5h		;d440	cd f5 d1 	. . . 
	ret z			;d443	c8 	. 
	ld c,000h		;d444	0e 00 	. . 
	ld e,00ch		;d446	1e 0c 	. . 
	call sub_d401h		;d448	cd 01 d4 	. . . 
	call ld336h		;d44b	cd 36 d3 	. 6 . 
	jp ld440h		;d44e	c3 40 d4 	. @ . 
sub_d451h:
	ld c,00fh		;d451	0e 0f 	. . 
	call sub_d321h		;d453	cd 21 d3 	. ! . 
	call sub_d1f5h		;d456	cd f5 d1 	. . . 
	ret z			;d459	c8 	. 
sub_d45ah:
	call sub_d0a6h		;d45a	cd a6 d0 	. . . 
	ld a,(hl)			;d45d	7e 	~ 
	push af			;d45e	f5 	. 
	push hl			;d45f	e5 	. 
	call sub_d15eh		;d460	cd 5e d1 	. ^ . 
	ex de,hl			;d463	eb 	. 
	ld hl,(lcf43h)		;d464	2a 43 cf 	* C . 
	ld c,020h		;d467	0e 20 	.   
	push de			;d469	d5 	. 
	call sub_cf4fh		;d46a	cd 4f cf 	. O . 
	call sub_d178h		;d46d	cd 78 d1 	. x . 
	pop de			;d470	d1 	. 
	ld hl,0000ch		;d471	21 0c 00 	! . . 
	add hl,de			;d474	19 	. 
	ld c,(hl)			;d475	4e 	N 
	ld hl,0000fh		;d476	21 0f 00 	! . . 
	add hl,de			;d479	19 	. 
	ld b,(hl)			;d47a	46 	F 
	pop hl			;d47b	e1 	. 
	pop af			;d47c	f1 	. 
	ld (hl),a			;d47d	77 	w 
	ld a,c			;d47e	79 	y 
	cp (hl)			;d47f	be 	. 
	ld a,b			;d480	78 	x 
	jp z,ld48bh		;d481	ca 8b d4 	. . . 
	ld a,000h		;d484	3e 00 	> . 
	jp c,ld48bh		;d486	da 8b d4 	. . . 
	ld a,080h		;d489	3e 80 	> . 
ld48bh:
	ld hl,(lcf43h)		;d48b	2a 43 cf 	* C . 
	ld de,0000fh		;d48e	11 0f 00 	. . . 
	add hl,de			;d491	19 	. 
	ld (hl),a			;d492	77 	w 
	ret			;d493	c9 	. 
sub_d494h:
	ld a,(hl)			;d494	7e 	~ 
	inc hl			;d495	23 	# 
	or (hl)			;d496	b6 	. 
	dec hl			;d497	2b 	+ 
	ret nz			;d498	c0 	. 
	ld a,(de)			;d499	1a 	. 
	ld (hl),a			;d49a	77 	w 
	inc de			;d49b	13 	. 
	inc hl			;d49c	23 	# 
	ld a,(de)			;d49d	1a 	. 
	ld (hl),a			;d49e	77 	w 
	dec de			;d49f	1b 	. 
	dec hl			;d4a0	2b 	+ 
	ret			;d4a1	c9 	. 
sub_d4a2h:
	xor a			;d4a2	af 	. 
	ld (lcf45h),a		;d4a3	32 45 cf 	2 E . 
	ld (ld9eah),a		;d4a6	32 ea d9 	2 . . 
	ld (ld9ebh),a		;d4a9	32 eb d9 	2 . . 
	call sub_d11eh		;d4ac	cd 1e d1 	. . . 
	ret nz			;d4af	c0 	. 
	call sub_d169h		;d4b0	cd 69 d1 	. i . 
	and 080h		;d4b3	e6 80 	. . 
	ret nz			;d4b5	c0 	. 
	ld c,00fh		;d4b6	0e 0f 	. . 
	call sub_d321h		;d4b8	cd 21 d3 	. ! . 
	call sub_d1f5h		;d4bb	cd f5 d1 	. . . 
	ret z			;d4be	c8 	. 
	ld bc,00010h		;d4bf	01 10 00 	. . . 
	call sub_d15eh		;d4c2	cd 5e d1 	. ^ . 
	add hl,bc			;d4c5	09 	. 
	ex de,hl			;d4c6	eb 	. 
	ld hl,(lcf43h)		;d4c7	2a 43 cf 	* C . 
	add hl,bc			;d4ca	09 	. 
	ld c,010h		;d4cb	0e 10 	. . 
ld4cdh:
	ld a,(ld9ddh)		;d4cd	3a dd d9 	: . . 
	or a			;d4d0	b7 	. 
	jp z,ld4e8h		;d4d1	ca e8 d4 	. . . 
	ld a,(hl)			;d4d4	7e 	~ 
	or a			;d4d5	b7 	. 
	ld a,(de)			;d4d6	1a 	. 
	jp nz,ld4dbh		;d4d7	c2 db d4 	. . . 
	ld (hl),a			;d4da	77 	w 
ld4dbh:
	or a			;d4db	b7 	. 
	jp nz,ld4e1h		;d4dc	c2 e1 d4 	. . . 
	ld a,(hl)			;d4df	7e 	~ 
	ld (de),a			;d4e0	12 	. 
ld4e1h:
	cp (hl)			;d4e1	be 	. 
	jp nz,ld51fh		;d4e2	c2 1f d5 	. . . 
	jp ld4fdh		;d4e5	c3 fd d4 	. . . 
ld4e8h:
	call sub_d494h		;d4e8	cd 94 d4 	. . . 
	ex de,hl			;d4eb	eb 	. 
	call sub_d494h		;d4ec	cd 94 d4 	. . . 
	ex de,hl			;d4ef	eb 	. 
	ld a,(de)			;d4f0	1a 	. 
	cp (hl)			;d4f1	be 	. 
	jp nz,ld51fh		;d4f2	c2 1f d5 	. . . 
	inc de			;d4f5	13 	. 
	inc hl			;d4f6	23 	# 
	ld a,(de)			;d4f7	1a 	. 
	cp (hl)			;d4f8	be 	. 
	jp nz,ld51fh		;d4f9	c2 1f d5 	. . . 
	dec c			;d4fc	0d 	. 
ld4fdh:
	inc de			;d4fd	13 	. 
	inc hl			;d4fe	23 	# 
	dec c			;d4ff	0d 	. 
	jp nz,ld4cdh		;d500	c2 cd d4 	. . . 
	ld bc,0ffech		;d503	01 ec ff 	. . . 
	add hl,bc			;d506	09 	. 
	ex de,hl			;d507	eb 	. 
	add hl,bc			;d508	09 	. 
	ld a,(de)			;d509	1a 	. 
	cp (hl)			;d50a	be 	. 
	jp c,ld517h		;d50b	da 17 d5 	. . . 
	ld (hl),a			;d50e	77 	w 
	ld bc,00003h		;d50f	01 03 00 	. . . 
	add hl,bc			;d512	09 	. 
	ex de,hl			;d513	eb 	. 
	add hl,bc			;d514	09 	. 
	ld a,(hl)			;d515	7e 	~ 
	ld (de),a			;d516	12 	. 
ld517h:
	ld a,0ffh		;d517	3e ff 	> . 
	ld (ld9d2h),a		;d519	32 d2 d9 	2 . . 
	jp ld410h		;d51c	c3 10 d4 	. . . 
ld51fh:
	ld hl,lcf45h		;d51f	21 45 cf 	! E . 
	dec (hl)			;d522	35 	5 
	ret			;d523	c9 	. 
sub_d524h:
	call sub_d154h		;d524	cd 54 d1 	. T . 
	ld hl,(lcf43h)		;d527	2a 43 cf 	* C . 
	push hl			;d52a	e5 	. 
	ld hl,ld9ach		;d52b	21 ac d9 	! . . 
	ld (lcf43h),hl		;d52e	22 43 cf 	" C . 
	ld c,001h		;d531	0e 01 	. . 
	call sub_d321h		;d533	cd 21 d3 	. ! . 
	call sub_d1f5h		;d536	cd f5 d1 	. . . 
	pop hl			;d539	e1 	. 
	ld (lcf43h),hl		;d53a	22 43 cf 	" C . 
	ret z			;d53d	c8 	. 
	ex de,hl			;d53e	eb 	. 
	ld hl,0000fh		;d53f	21 0f 00 	! . . 
	add hl,de			;d542	19 	. 
	ld c,011h		;d543	0e 11 	. . 
	xor a			;d545	af 	. 
ld546h:
	ld (hl),a			;d546	77 	w 
	inc hl			;d547	23 	# 
	dec c			;d548	0d 	. 
	jp nz,ld546h		;d549	c2 46 d5 	. F . 
	ld hl,0000dh		;d54c	21 0d 00 	! . . 
	add hl,de			;d54f	19 	. 
	ld (hl),a			;d550	77 	w 
	call sub_d18ch		;d551	cd 8c d1 	. . . 
	call sub_d3fdh		;d554	cd fd d3 	. . . 
	jp sub_d178h		;d557	c3 78 d1 	. x . 
sub_d55ah:
	xor a			;d55a	af 	. 
	ld (ld9d2h),a		;d55b	32 d2 d9 	2 . . 
	call sub_d4a2h		;d55e	cd a2 d4 	. . . 
	call sub_d1f5h		;d561	cd f5 d1 	. . . 
	ret z			;d564	c8 	. 
	ld hl,(lcf43h)		;d565	2a 43 cf 	* C . 
	ld bc,0000ch		;d568	01 0c 00 	. . . 
	add hl,bc			;d56b	09 	. 
	ld a,(hl)			;d56c	7e 	~ 
	inc a			;d56d	3c 	< 
	and 01fh		;d56e	e6 1f 	. . 
	ld (hl),a			;d570	77 	w 
	jp z,ld583h		;d571	ca 83 d5 	. . . 
	ld b,a			;d574	47 	G 
	ld a,(ld9c5h)		;d575	3a c5 d9 	: . . 
	and b			;d578	a0 	. 
	ld hl,ld9d2h		;d579	21 d2 d9 	! . . 
	and (hl)			;d57c	a6 	. 
	jp z,ld58eh		;d57d	ca 8e d5 	. . . 
	jp ld5ach		;d580	c3 ac d5 	. . . 
ld583h:
	ld bc,00002h		;d583	01 02 00 	. . . 
	add hl,bc			;d586	09 	. 
	inc (hl)			;d587	34 	4 
	ld a,(hl)			;d588	7e 	~ 
	and 00fh		;d589	e6 0f 	. . 
	jp z,ld5b6h		;d58b	ca b6 d5 	. . . 
ld58eh:
	ld c,00fh		;d58e	0e 0f 	. . 
	call sub_d321h		;d590	cd 21 d3 	. ! . 
	call sub_d1f5h		;d593	cd f5 d1 	. . . 
	jp nz,ld5ach		;d596	c2 ac d5 	. . . 
	ld a,(ld9d3h)		;d599	3a d3 d9 	: . . 
	inc a			;d59c	3c 	< 
	jp z,ld5b6h		;d59d	ca b6 d5 	. . . 
	call sub_d524h		;d5a0	cd 24 d5 	. $ . 
	call sub_d1f5h		;d5a3	cd f5 d1 	. . . 
	jp z,ld5b6h		;d5a6	ca b6 d5 	. . . 
	jp ld5afh		;d5a9	c3 af d5 	. . . 
ld5ach:
	call sub_d45ah		;d5ac	cd 5a d4 	. Z . 
ld5afh:
	call sub_d0bbh		;d5af	cd bb d0 	. . . 
	xor a			;d5b2	af 	. 
	jp lcf01h		;d5b3	c3 01 cf 	. . . 
ld5b6h:
	call sub_cf05h		;d5b6	cd 05 cf 	. . . 
	jp sub_d178h		;d5b9	c3 78 d1 	. x . 
ld5bch:
	ld a,001h		;d5bc	3e 01 	> . 
	ld (ld9d5h),a		;d5be	32 d5 d9 	2 . . 
sub_d5c1h:
	ld a,0ffh		;d5c1	3e ff 	> . 
	ld (ld9d3h),a		;d5c3	32 d3 d9 	2 . . 
	call sub_d0bbh		;d5c6	cd bb d0 	. . . 
	ld a,(ld9e3h)		;d5c9	3a e3 d9 	: . . 
	ld hl,ld9e1h		;d5cc	21 e1 d9 	! . . 
	cp (hl)			;d5cf	be 	. 
	jp c,ld5e6h		;d5d0	da e6 d5 	. . . 
	cp 080h		;d5d3	fe 80 	. . 
	jp nz,ld5fbh		;d5d5	c2 fb d5 	. . . 
	call sub_d55ah		;d5d8	cd 5a d5 	. Z . 
	xor a			;d5db	af 	. 
	ld (ld9e3h),a		;d5dc	32 e3 d9 	2 . . 
	ld a,(lcf45h)		;d5df	3a 45 cf 	: E . 
	or a			;d5e2	b7 	. 
	jp nz,ld5fbh		;d5e3	c2 fb d5 	. . . 
ld5e6h:
	call sub_d077h		;d5e6	cd 77 d0 	. w . 
	call sub_d084h		;d5e9	cd 84 d0 	. . . 
	jp z,ld5fbh		;d5ec	ca fb d5 	. . . 
	call sub_d08ah		;d5ef	cd 8a d0 	. . . 
	call sub_cfd1h		;d5f2	cd d1 cf 	. . . 
	call sub_cfb2h		;d5f5	cd b2 cf 	. . . 
	jp ld0d2h		;d5f8	c3 d2 d0 	. . . 
ld5fbh:
	jp sub_cf05h		;d5fb	c3 05 cf 	. . . 
ld5feh:
	ld a,001h		;d5fe	3e 01 	> . 
	ld (ld9d5h),a		;d600	32 d5 d9 	2 . . 
sub_d603h:
	ld a,000h		;d603	3e 00 	> . 
	ld (ld9d3h),a		;d605	32 d3 d9 	2 . . 
	call sub_d154h		;d608	cd 54 d1 	. T . 
	ld hl,(lcf43h)		;d60b	2a 43 cf 	* C . 
	call sub_d147h		;d60e	cd 47 d1 	. G . 
	call sub_d0bbh		;d611	cd bb d0 	. . . 
	ld a,(ld9e3h)		;d614	3a e3 d9 	: . . 
	cp 080h		;d617	fe 80 	. . 
	jp nc,sub_cf05h		;d619	d2 05 cf 	. . . 
	call sub_d077h		;d61c	cd 77 d0 	. w . 
	call sub_d084h		;d61f	cd 84 d0 	. . . 
	ld c,000h		;d622	0e 00 	. . 
	jp nz,ld66eh		;d624	c2 6e d6 	. n . 
	call sub_d03eh		;d627	cd 3e d0 	. > . 
	ld (ld9d7h),a		;d62a	32 d7 d9 	2 . . 
	ld bc,00000h		;d62d	01 00 00 	. . . 
	or a			;d630	b7 	. 
	jp z,ld63bh		;d631	ca 3b d6 	. ; . 
	ld c,a			;d634	4f 	O 
	dec bc			;d635	0b 	. 
	call sub_d05eh		;d636	cd 5e d0 	. ^ . 
	ld b,h			;d639	44 	D 
	ld c,l			;d63a	4d 	M 
ld63bh:
	call sub_d3bfh		;d63b	cd bf d3 	. . . 
	ld a,l			;d63e	7d 	} 
	or h			;d63f	b4 	. 
	jp nz,ld648h		;d640	c2 48 d6 	. H . 
	ld a,002h		;d643	3e 02 	> . 
	jp lcf01h		;d645	c3 01 cf 	. . . 
ld648h:
	ld (ld9e5h),hl		;d648	22 e5 d9 	" . . 
	ex de,hl			;d64b	eb 	. 
	ld hl,(lcf43h)		;d64c	2a 43 cf 	* C . 
	ld bc,00010h		;d64f	01 10 00 	. . . 
	add hl,bc			;d652	09 	. 
	ld a,(ld9ddh)		;d653	3a dd d9 	: . . 
	or a			;d656	b7 	. 
	ld a,(ld9d7h)		;d657	3a d7 d9 	: . . 
	jp z,ld664h		;d65a	ca 64 d6 	. d . 
	call sub_d164h		;d65d	cd 64 d1 	. d . 
	ld (hl),e			;d660	73 	s 
	jp ld66ch		;d661	c3 6c d6 	. l . 
ld664h:
	ld c,a			;d664	4f 	O 
	ld b,000h		;d665	06 00 	. . 
	add hl,bc			;d667	09 	. 
	add hl,bc			;d668	09 	. 
	ld (hl),e			;d669	73 	s 
	inc hl			;d66a	23 	# 
	ld (hl),d			;d66b	72 	r 
ld66ch:
	ld c,002h		;d66c	0e 02 	. . 
ld66eh:
	ld a,(lcf45h)		;d66e	3a 45 cf 	: E . 
	or a			;d671	b7 	. 
	ret nz			;d672	c0 	. 
	push bc			;d673	c5 	. 
	call sub_d08ah		;d674	cd 8a d0 	. . . 
	ld a,(ld9d5h)		;d677	3a d5 d9 	: . . 
	dec a			;d67a	3d 	= 
	dec a			;d67b	3d 	= 
	jp nz,ld6bbh		;d67c	c2 bb d6 	. . . 
	pop bc			;d67f	c1 	. 
	push bc			;d680	c5 	. 
	ld a,c			;d681	79 	y 
	dec a			;d682	3d 	= 
	dec a			;d683	3d 	= 
	jp nz,ld6bbh		;d684	c2 bb d6 	. . . 
	push hl			;d687	e5 	. 
	ld hl,(ld9b9h)		;d688	2a b9 d9 	* . . 
	ld d,a			;d68b	57 	W 
ld68ch:
	ld (hl),a			;d68c	77 	w 
	inc hl			;d68d	23 	# 
	inc d			;d68e	14 	. 
	jp p,ld68ch		;d68f	f2 8c d6 	. . . 
	call sub_d1e0h		;d692	cd e0 d1 	. . . 
	ld hl,(ld9e7h)		;d695	2a e7 d9 	* . . 
	ld c,002h		;d698	0e 02 	. . 
ld69ah:
	ld (ld9e5h),hl		;d69a	22 e5 d9 	" . . 
	push bc			;d69d	c5 	. 
	call sub_cfd1h		;d69e	cd d1 cf 	. . . 
	pop bc			;d6a1	c1 	. 
	call sub_cfb8h		;d6a2	cd b8 cf 	. . . 
	ld hl,(ld9e5h)		;d6a5	2a e5 d9 	* . . 
	ld c,000h		;d6a8	0e 00 	. . 
	ld a,(ld9c4h)		;d6aa	3a c4 d9 	: . . 
	ld b,a			;d6ad	47 	G 
	and l			;d6ae	a5 	. 
	cp b			;d6af	b8 	. 
	inc hl			;d6b0	23 	# 
	jp nz,ld69ah		;d6b1	c2 9a d6 	. . . 
	pop hl			;d6b4	e1 	. 
	ld (ld9e5h),hl		;d6b5	22 e5 d9 	" . . 
	call ld1dah		;d6b8	cd da d1 	. . . 
ld6bbh:
	call sub_cfd1h		;d6bb	cd d1 cf 	. . . 
	pop bc			;d6be	c1 	. 
	push bc			;d6bf	c5 	. 
	call sub_cfb8h		;d6c0	cd b8 cf 	. . . 
	pop bc			;d6c3	c1 	. 
	ld a,(ld9e3h)		;d6c4	3a e3 d9 	: . . 
	ld hl,ld9e1h		;d6c7	21 e1 d9 	! . . 
	cp (hl)			;d6ca	be 	. 
	jp c,ld6d2h		;d6cb	da d2 d6 	. . . 
	ld (hl),a			;d6ce	77 	w 
	inc (hl)			;d6cf	34 	4 
	ld c,002h		;d6d0	0e 02 	. . 
ld6d2h:
	nop			;d6d2	00 	. 
	nop			;d6d3	00 	. 
	ld hl,0c400h		;d6d4	21 00 c4 	! . . 
	push af			;d6d7	f5 	. 
	call sub_d169h		;d6d8	cd 69 d1 	. i . 
	and 07fh		;d6db	e6 7f 	.  
	ld (hl),a			;d6dd	77 	w 
	pop af			;d6de	f1 	. 
	cp 07fh		;d6df	fe 7f 	.  
	jp nz,ld700h		;d6e1	c2 00 d7 	. . . 
	ld a,(ld9d5h)		;d6e4	3a d5 d9 	: . . 
	cp 001h		;d6e7	fe 01 	. . 
	jp nz,ld700h		;d6e9	c2 00 d7 	. . . 
	call ld0d2h		;d6ec	cd d2 d0 	. . . 
	call sub_d55ah		;d6ef	cd 5a d5 	. Z . 
	ld hl,lcf45h		;d6f2	21 45 cf 	! E . 
	ld a,(hl)			;d6f5	7e 	~ 
	or a			;d6f6	b7 	. 
	jp nz,ld6feh		;d6f7	c2 fe d6 	. . . 
	dec a			;d6fa	3d 	= 
	ld (ld9e3h),a		;d6fb	32 e3 d9 	2 . . 
ld6feh:
	ld (hl),000h		;d6fe	36 00 	6 . 
ld700h:
	jp ld0d2h		;d700	c3 d2 d0 	. . . 
sub_d703h:
	xor a			;d703	af 	. 
	ld (ld9d5h),a		;d704	32 d5 d9 	2 . . 
sub_d707h:
	push bc			;d707	c5 	. 
	ld hl,(lcf43h)		;d708	2a 43 cf 	* C . 
	ex de,hl			;d70b	eb 	. 
	ld hl,00021h		;d70c	21 21 00 	! ! . 
	add hl,de			;d70f	19 	. 
	ld a,(hl)			;d710	7e 	~ 
	and 07fh		;d711	e6 7f 	.  
	push af			;d713	f5 	. 
	ld a,(hl)			;d714	7e 	~ 
	rla			;d715	17 	. 
	inc hl			;d716	23 	# 
	ld a,(hl)			;d717	7e 	~ 
	rla			;d718	17 	. 
	and 01fh		;d719	e6 1f 	. . 
	ld c,a			;d71b	4f 	O 
	ld a,(hl)			;d71c	7e 	~ 
	rra			;d71d	1f 	. 
	rra			;d71e	1f 	. 
	rra			;d71f	1f 	. 
	rra			;d720	1f 	. 
	and 00fh		;d721	e6 0f 	. . 
	ld b,a			;d723	47 	G 
	pop af			;d724	f1 	. 
	inc hl			;d725	23 	# 
	ld l,(hl)			;d726	6e 	n 
	inc l			;d727	2c 	, 
	dec l			;d728	2d 	- 
	ld l,006h		;d729	2e 06 	. . 
	jp nz,ld78bh		;d72b	c2 8b d7 	. . . 
	ld hl,00020h		;d72e	21 20 00 	!   . 
	add hl,de			;d731	19 	. 
	ld (hl),a			;d732	77 	w 
	ld hl,0000ch		;d733	21 0c 00 	! . . 
	add hl,de			;d736	19 	. 
	ld a,c			;d737	79 	y 
	sub (hl)			;d738	96 	. 
	jp nz,ld747h		;d739	c2 47 d7 	. G . 
	ld hl,0000eh		;d73c	21 0e 00 	! . . 
	add hl,de			;d73f	19 	. 
	ld a,b			;d740	78 	x 
	sub (hl)			;d741	96 	. 
	and 07fh		;d742	e6 7f 	.  
	jp z,ld77fh		;d744	ca 7f d7 	.  . 
ld747h:
	push bc			;d747	c5 	. 
	push de			;d748	d5 	. 
	call sub_d4a2h		;d749	cd a2 d4 	. . . 
	pop de			;d74c	d1 	. 
	pop bc			;d74d	c1 	. 
	ld l,003h		;d74e	2e 03 	. . 
	ld a,(lcf45h)		;d750	3a 45 cf 	: E . 
	inc a			;d753	3c 	< 
	jp z,ld784h		;d754	ca 84 d7 	. . . 
	ld hl,0000ch		;d757	21 0c 00 	! . . 
	add hl,de			;d75a	19 	. 
	ld (hl),c			;d75b	71 	q 
	ld hl,0000eh		;d75c	21 0e 00 	! . . 
	add hl,de			;d75f	19 	. 
	ld (hl),b			;d760	70 	p 
	call sub_d451h		;d761	cd 51 d4 	. Q . 
	ld a,(lcf45h)		;d764	3a 45 cf 	: E . 
	inc a			;d767	3c 	< 
	jp nz,ld77fh		;d768	c2 7f d7 	.  . 
	pop bc			;d76b	c1 	. 
	push bc			;d76c	c5 	. 
	ld l,004h		;d76d	2e 04 	. . 
	inc c			;d76f	0c 	. 
	jp z,ld784h		;d770	ca 84 d7 	. . . 
	call sub_d524h		;d773	cd 24 d5 	. $ . 
	ld l,005h		;d776	2e 05 	. . 
	ld a,(lcf45h)		;d778	3a 45 cf 	: E . 
	inc a			;d77b	3c 	< 
	jp z,ld784h		;d77c	ca 84 d7 	. . . 
ld77fh:
	pop bc			;d77f	c1 	. 
	xor a			;d780	af 	. 
	jp lcf01h		;d781	c3 01 cf 	. . . 
ld784h:
	push hl			;d784	e5 	. 
	call sub_d169h		;d785	cd 69 d1 	. i . 
	ld (hl),0c0h		;d788	36 c0 	6 . 
	pop hl			;d78a	e1 	. 
ld78bh:
	pop bc			;d78b	c1 	. 
	ld a,l			;d78c	7d 	} 
	ld (lcf45h),a		;d78d	32 45 cf 	2 E . 
	jp sub_d178h		;d790	c3 78 d1 	. x . 
ld793h:
	ld c,0ffh		;d793	0e ff 	. . 
	call sub_d703h		;d795	cd 03 d7 	. . . 
	call z,sub_d5c1h		;d798	cc c1 d5 	. . . 
	ret			;d79b	c9 	. 
ld79ch:
	ld c,000h		;d79c	0e 00 	. . 
	call sub_d703h		;d79e	cd 03 d7 	. . . 
	call z,sub_d603h		;d7a1	cc 03 d6 	. . . 
	ret			;d7a4	c9 	. 
sub_d7a5h:
	ex de,hl			;d7a5	eb 	. 
	add hl,de			;d7a6	19 	. 
	ld c,(hl)			;d7a7	4e 	N 
	ld b,000h		;d7a8	06 00 	. . 
	ld hl,0000ch		;d7aa	21 0c 00 	! . . 
	add hl,de			;d7ad	19 	. 
	ld a,(hl)			;d7ae	7e 	~ 
	rrca			;d7af	0f 	. 
	and 080h		;d7b0	e6 80 	. . 
	add a,c			;d7b2	81 	. 
	ld c,a			;d7b3	4f 	O 
	ld a,000h		;d7b4	3e 00 	> . 
	adc a,b			;d7b6	88 	. 
	ld b,a			;d7b7	47 	G 
	ld a,(hl)			;d7b8	7e 	~ 
	rrca			;d7b9	0f 	. 
	and 00fh		;d7ba	e6 0f 	. . 
	add a,b			;d7bc	80 	. 
	ld b,a			;d7bd	47 	G 
	ld hl,0000eh		;d7be	21 0e 00 	! . . 
	add hl,de			;d7c1	19 	. 
	ld a,(hl)			;d7c2	7e 	~ 
	add a,a			;d7c3	87 	. 
	add a,a			;d7c4	87 	. 
	add a,a			;d7c5	87 	. 
	add a,a			;d7c6	87 	. 
	push af			;d7c7	f5 	. 
	add a,b			;d7c8	80 	. 
	ld b,a			;d7c9	47 	G 
	push af			;d7ca	f5 	. 
	pop hl			;d7cb	e1 	. 
	ld a,l			;d7cc	7d 	} 
	pop hl			;d7cd	e1 	. 
	or l			;d7ce	b5 	. 
	and 001h		;d7cf	e6 01 	. . 
	ret			;d7d1	c9 	. 
ld7d2h:
	ld c,00ch		;d7d2	0e 0c 	. . 
	call sub_d321h		;d7d4	cd 21 d3 	. ! . 
	ld hl,(lcf43h)		;d7d7	2a 43 cf 	* C . 
	ld de,00021h		;d7da	11 21 00 	. ! . 
	add hl,de			;d7dd	19 	. 
	push hl			;d7de	e5 	. 
	ld (hl),d			;d7df	72 	r 
	inc hl			;d7e0	23 	# 
	ld (hl),d			;d7e1	72 	r 
	inc hl			;d7e2	23 	# 
	ld (hl),d			;d7e3	72 	r 
ld7e4h:
	call sub_d1f5h		;d7e4	cd f5 d1 	. . . 
	jp z,ld80ch		;d7e7	ca 0c d8 	. . . 
	call sub_d15eh		;d7ea	cd 5e d1 	. ^ . 
	ld de,0000fh		;d7ed	11 0f 00 	. . . 
	call sub_d7a5h		;d7f0	cd a5 d7 	. . . 
	pop hl			;d7f3	e1 	. 
	push hl			;d7f4	e5 	. 
	ld e,a			;d7f5	5f 	_ 
	ld a,c			;d7f6	79 	y 
	sub (hl)			;d7f7	96 	. 
	inc hl			;d7f8	23 	# 
	ld a,b			;d7f9	78 	x 
	sbc a,(hl)			;d7fa	9e 	. 
	inc hl			;d7fb	23 	# 
	ld a,e			;d7fc	7b 	{ 
	sbc a,(hl)			;d7fd	9e 	. 
	jp c,ld806h		;d7fe	da 06 d8 	. . . 
	ld (hl),e			;d801	73 	s 
	dec hl			;d802	2b 	+ 
	ld (hl),b			;d803	70 	p 
	dec hl			;d804	2b 	+ 
	ld (hl),c			;d805	71 	q 
ld806h:
	call ld336h		;d806	cd 36 d3 	. 6 . 
	jp ld7e4h		;d809	c3 e4 d7 	. . . 
ld80ch:
	pop hl			;d80c	e1 	. 
	ret			;d80d	c9 	. 
	ld hl,(lcf43h)		;d80e	2a 43 cf 	* C . 
	ld de,00020h		;d811	11 20 00 	.   . 
	call sub_d7a5h		;d814	cd a5 d7 	. . . 
	ld hl,00021h		;d817	21 21 00 	! ! . 
	add hl,de			;d81a	19 	. 
	ld (hl),c			;d81b	71 	q 
	inc hl			;d81c	23 	# 
	ld (hl),b			;d81d	70 	p 
	inc hl			;d81e	23 	# 
	ld (hl),a			;d81f	77 	w 
	ret			;d820	c9 	. 
ld821h:
	ld hl,(ld9afh)		;d821	2a af d9 	* . . 
	ld a,(lcf42h)		;d824	3a 42 cf 	: B . 
	ld c,a			;d827	4f 	O 
	call sub_d0eah		;d828	cd ea d0 	. . . 
	push hl			;d82b	e5 	. 
	ex de,hl			;d82c	eb 	. 
	call sub_cf59h		;d82d	cd 59 cf 	. Y . 
	pop hl			;d830	e1 	. 
	call z,sub_cf47h		;d831	cc 47 cf 	. G . 
	ld a,l			;d834	7d 	} 
	rra			;d835	1f 	. 
	ret c			;d836	d8 	. 
	ld hl,(ld9afh)		;d837	2a af d9 	* . . 
	ld c,l			;d83a	4d 	M 
	ld b,h			;d83b	44 	D 
	call sub_d10bh		;d83c	cd 0b d1 	. . . 
	ld (ld9afh),hl		;d83f	22 af d9 	" . . 
	jp ld2a0h		;d842	c3 a0 d2 	. . . 
sub_d845h:
	ld a,(ld9d6h)		;d845	3a d6 d9 	: . . 
	ld hl,lcf42h		;d848	21 42 cf 	! B . 
	cp (hl)			;d84b	be 	. 
	ret z			;d84c	c8 	. 
	ld (hl),a			;d84d	77 	w 
	jp ld821h		;d84e	c3 21 d8 	. ! . 
sub_d851h:
	ld a,0ffh		;d851	3e ff 	> . 
	ld (ld9deh),a		;d853	32 de d9 	2 . . 
	ld hl,(lcf43h)		;d856	2a 43 cf 	* C . 
	ld a,(hl)			;d859	7e 	~ 
	and 01fh		;d85a	e6 1f 	. . 
	dec a			;d85c	3d 	= 
	ld (ld9d6h),a		;d85d	32 d6 d9 	2 . . 
	cp 01eh		;d860	fe 1e 	. . 
	jp nc,ld875h		;d862	d2 75 d8 	. u . 
	ld a,(lcf42h)		;d865	3a 42 cf 	: B . 
	ld (ld9dfh),a		;d868	32 df d9 	2 . . 
	ld a,(hl)			;d86b	7e 	~ 
	ld (ld9e0h),a		;d86c	32 e0 d9 	2 . . 
	and 0e0h		;d86f	e6 e0 	. . 
	ld (hl),a			;d871	77 	w 
	call sub_d845h		;d872	cd 45 d8 	. E . 
ld875h:
	ld a,(lcf41h)		;d875	3a 41 cf 	: A . 
	ld hl,(lcf43h)		;d878	2a 43 cf 	* C . 
	or (hl)			;d87b	b6 	. 
	ld (hl),a			;d87c	77 	w 
	ret			;d87d	c9 	. 
	ld a,022h		;d87e	3e 22 	> " 
	jp lcf01h		;d880	c3 01 cf 	. . . 
	ld hl,00000h		;d883	21 00 00 	! . . 
	ld (ld9adh),hl		;d886	22 ad d9 	" . . 
	ld (ld9afh),hl		;d889	22 af d9 	" . . 
	xor a			;d88c	af 	. 
	ld (lcf42h),a		;d88d	32 42 cf 	2 B . 
	ld hl,00080h		;d890	21 80 00 	! . . 
	ld (ld9b1h),hl		;d893	22 b1 d9 	" . . 
	call ld1dah		;d896	cd da d1 	. . . 
	jp ld821h		;d899	c3 21 d8 	. ! . 
	call sub_d172h		;d89c	cd 72 d1 	. r . 
	call sub_d851h		;d89f	cd 51 d8 	. Q . 
	jp sub_d451h		;d8a2	c3 51 d4 	. Q . 
	call sub_d851h		;d8a5	cd 51 d8 	. Q . 
	jp sub_d4a2h		;d8a8	c3 a2 d4 	. . . 
	ld c,000h		;d8ab	0e 00 	. . 
	ex de,hl			;d8ad	eb 	. 
	ld a,(hl)			;d8ae	7e 	~ 
	cp 03fh		;d8af	fe 3f 	. ? 
	jp z,ld8c2h		;d8b1	ca c2 d8 	. . . 
	call sub_d0a6h		;d8b4	cd a6 d0 	. . . 
	ld a,(hl)			;d8b7	7e 	~ 
	cp 03fh		;d8b8	fe 3f 	. ? 
	call nz,sub_d172h		;d8ba	c4 72 d1 	. r . 
	call sub_d851h		;d8bd	cd 51 d8 	. Q . 
	ld c,00fh		;d8c0	0e 0f 	. . 
ld8c2h:
	call sub_d321h		;d8c2	cd 21 d3 	. ! . 
	jp ld1e9h		;d8c5	c3 e9 d1 	. . . 
	ld hl,(ld9d9h)		;d8c8	2a d9 d9 	* . . 
	ld (lcf43h),hl		;d8cb	22 43 cf 	" C . 
	call sub_d851h		;d8ce	cd 51 d8 	. Q . 
	call ld336h		;d8d1	cd 36 d3 	. 6 . 
	jp ld1e9h		;d8d4	c3 e9 d1 	. . . 
	call sub_d851h		;d8d7	cd 51 d8 	. Q . 
	call sub_d39eh		;d8da	cd 9e d3 	. . . 
	jp ld30ah		;d8dd	c3 0a d3 	. . . 
	call sub_d851h		;d8e0	cd 51 d8 	. Q . 
	jp ld5bch		;d8e3	c3 bc d5 	. . . 
	call sub_d851h		;d8e6	cd 51 d8 	. Q . 
	jp ld5feh		;d8e9	c3 fe d5 	. . . 
	call sub_d172h		;d8ec	cd 72 d1 	. r . 
	call sub_d851h		;d8ef	cd 51 d8 	. Q . 
	jp sub_d524h		;d8f2	c3 24 d5 	. $ . 
	call sub_d851h		;d8f5	cd 51 d8 	. Q . 
	call sub_d416h		;d8f8	cd 16 d4 	. . . 
	jp ld30ah		;d8fb	c3 0a d3 	. . . 
	ld hl,(ld9afh)		;d8fe	2a af d9 	* . . 
	jp ld929h		;d901	c3 29 d9 	. ) . 
	ld a,(lcf42h)		;d904	3a 42 cf 	: B . 
	jp lcf01h		;d907	c3 01 cf 	. . . 
	ex de,hl			;d90a	eb 	. 
	ld (ld9b1h),hl		;d90b	22 b1 d9 	" . . 
	jp ld1dah		;d90e	c3 da d1 	. . . 
	ld hl,(ld9bfh)		;d911	2a bf d9 	* . . 
	jp ld929h		;d914	c3 29 d9 	. ) . 
	ld hl,(ld9adh)		;d917	2a ad d9 	* . . 
	jp ld929h		;d91a	c3 29 d9 	. ) . 
	call sub_d851h		;d91d	cd 51 d8 	. Q . 
	call sub_d43bh		;d920	cd 3b d4 	. ; . 
	jp ld30ah		;d923	c3 0a d3 	. . . 
	ld hl,(ld9bbh)		;d926	2a bb d9 	* . . 
ld929h:
	ld (lcf45h),hl		;d929	22 45 cf 	" E . 
	ret			;d92c	c9 	. 
	ld a,(ld9d6h)		;d92d	3a d6 d9 	: . . 
	cp 0ffh		;d930	fe ff 	. . 
	jp nz,ld93bh		;d932	c2 3b d9 	. ; . 
	ld a,(lcf41h)		;d935	3a 41 cf 	: A . 
	jp lcf01h		;d938	c3 01 cf 	. . . 
ld93bh:
	and 01fh		;d93b	e6 1f 	. . 
	ld (lcf41h),a		;d93d	32 41 cf 	2 A . 
	ret			;d940	c9 	. 
	call sub_d851h		;d941	cd 51 d8 	. Q . 
	jp ld793h		;d944	c3 93 d7 	. . . 
	call sub_d851h		;d947	cd 51 d8 	. Q . 
	jp ld79ch		;d94a	c3 9c d7 	. . . 
	call sub_d851h		;d94d	cd 51 d8 	. Q . 
	jp ld7d2h		;d950	c3 d2 d7 	. . . 
	ld hl,(lcf43h)		;d953	2a 43 cf 	* C . 
	ld a,l			;d956	7d 	} 
	cpl			;d957	2f 	/ 
	ld e,a			;d958	5f 	_ 
	ld a,h			;d959	7c 	| 
	cpl			;d95a	2f 	/ 
	ld hl,(ld9afh)		;d95b	2a af d9 	* . . 
	and h			;d95e	a4 	. 
	ld d,a			;d95f	57 	W 
	ld a,l			;d960	7d 	} 
	and e			;d961	a3 	. 
	ld e,a			;d962	5f 	_ 
	ld hl,(ld9adh)		;d963	2a ad d9 	* . . 
	ex de,hl			;d966	eb 	. 
	ld (ld9afh),hl		;d967	22 af d9 	" . . 
	ld a,l			;d96a	7d 	} 
	and e			;d96b	a3 	. 
	ld l,a			;d96c	6f 	o 
	ld a,h			;d96d	7c 	| 
	and d			;d96e	a2 	. 
	ld h,a			;d96f	67 	g 
	ld (ld9adh),hl		;d970	22 ad d9 	" . . 
	ret			;d973	c9 	. 
ld974h:
	ld a,(ld9deh)		;d974	3a de d9 	: . . 
	or a			;d977	b7 	. 
	jp z,ld991h		;d978	ca 91 d9 	. . . 
	ld hl,(lcf43h)		;d97b	2a 43 cf 	* C . 
	ld (hl),000h		;d97e	36 00 	6 . 
	ld a,(ld9e0h)		;d980	3a e0 d9 	: . . 
	or a			;d983	b7 	. 
	jp z,ld991h		;d984	ca 91 d9 	. . . 
	ld (hl),a			;d987	77 	w 
	ld a,(ld9dfh)		;d988	3a df d9 	: . . 
	ld (ld9d6h),a		;d98b	32 d6 d9 	2 . . 
	call sub_d845h		;d98e	cd 45 d8 	. E . 
ld991h:
	ld hl,(lcf0fh)		;d991	2a 0f cf 	* . . 
	ld sp,hl			;d994	f9 	. 
	ld hl,(lcf45h)		;d995	2a 45 cf 	* E . 
	ld a,l			;d998	7d 	} 
	ld b,h			;d999	44 	D 
	ret			;d99a	c9 	. 
	call sub_d851h		;d99b	cd 51 d8 	. Q . 
	ld a,002h		;d99e	3e 02 	> . 
	ld (ld9d5h),a		;d9a0	32 d5 d9 	2 . . 
	ld c,000h		;d9a3	0e 00 	. . 
	call sub_d707h		;d9a5	cd 07 d7 	. . . 
	call z,sub_d603h		;d9a8	cc 03 d6 	. . . 
	ret			;d9ab	c9 	. 
ld9ach:
	push hl			;d9ac	e5 	. 
ld9adh:
	nop			;d9ad	00 	. 
	nop			;d9ae	00 	. 
ld9afh:
	nop			;d9af	00 	. 
	nop			;d9b0	00 	. 
ld9b1h:
	add a,b			;d9b1	80 	. 
	nop			;d9b2	00 	. 
ld9b3h:
	nop			;d9b3	00 	. 
	nop			;d9b4	00 	. 
ld9b5h:
	nop			;d9b5	00 	. 
	nop			;d9b6	00 	. 
ld9b7h:
	nop			;d9b7	00 	. 
	nop			;d9b8	00 	. 
ld9b9h:
	nop			;d9b9	00 	. 
	nop			;d9ba	00 	. 
ld9bbh:
	nop			;d9bb	00 	. 
	nop			;d9bc	00 	. 
ld9bdh:
	nop			;d9bd	00 	. 
	nop			;d9be	00 	. 
ld9bfh:
	nop			;d9bf	00 	. 
	nop			;d9c0	00 	. 
ld9c1h:
	nop			;d9c1	00 	. 
	nop			;d9c2	00 	. 
ld9c3h:
	nop			;d9c3	00 	. 
ld9c4h:
	nop			;d9c4	00 	. 
ld9c5h:
	nop			;d9c5	00 	. 
ld9c6h:
	nop			;d9c6	00 	. 
	nop			;d9c7	00 	. 
ld9c8h:
	nop			;d9c8	00 	. 
	nop			;d9c9	00 	. 
ld9cah:
	nop			;d9ca	00 	. 
	nop			;d9cb	00 	. 
ld9cch:
	nop			;d9cc	00 	. 
	nop			;d9cd	00 	. 
ld9ceh:
	nop			;d9ce	00 	. 
	nop			;d9cf	00 	. 
ld9d0h:
	nop			;d9d0	00 	. 
	nop			;d9d1	00 	. 
ld9d2h:
	nop			;d9d2	00 	. 
ld9d3h:
	nop			;d9d3	00 	. 
ld9d4h:
	nop			;d9d4	00 	. 
ld9d5h:
	nop			;d9d5	00 	. 
ld9d6h:
	nop			;d9d6	00 	. 
ld9d7h:
	nop			;d9d7	00 	. 
ld9d8h:
	nop			;d9d8	00 	. 
ld9d9h:
	nop			;d9d9	00 	. 
	nop			;d9da	00 	. 
	nop			;d9db	00 	. 
	nop			;d9dc	00 	. 
ld9ddh:
	nop			;d9dd	00 	. 
ld9deh:
	nop			;d9de	00 	. 
ld9dfh:
	nop			;d9df	00 	. 
ld9e0h:
	nop			;d9e0	00 	. 
ld9e1h:
	nop			;d9e1	00 	. 
ld9e2h:
	nop			;d9e2	00 	. 
ld9e3h:
	nop			;d9e3	00 	. 
	nop			;d9e4	00 	. 
ld9e5h:
	nop			;d9e5	00 	. 
	nop			;d9e6	00 	. 
ld9e7h:
	nop			;d9e7	00 	. 
	nop			;d9e8	00 	. 
ld9e9h:
	nop			;d9e9	00 	. 
ld9eah:
	nop			;d9ea	00 	. 
ld9ebh:
	nop			;d9eb	00 	. 
ld9ech:
	nop			;d9ec	00 	. 
	nop			;d9ed	00 	. 
	nop			;d9ee	00 	. 
	nop			;d9ef	00 	. 
	nop			;d9f0	00 	. 
	nop			;d9f1	00 	. 
	nop			;d9f2	00 	. 
	nop			;d9f3	00 	. 
	nop			;d9f4	00 	. 
	nop			;d9f5	00 	. 
	nop			;d9f6	00 	. 
	nop			;d9f7	00 	. 
	nop			;d9f8	00 	. 
	nop			;d9f9	00 	. 
	nop			;d9fa	00 	. 
	nop			;d9fb	00 	. 
	nop			;d9fc	00 	. 
	nop			;d9fd	00 	. 
	nop			;d9fe	00 	. 
	nop			;d9ff	00 	. 
