; z80dasm 1.1.6
; command line: z80dasm -l -t -g 0xcc00 -a

	org	0cc00h

	nop			;cc00	00 	.
	nop			;cc01	00 	.
	nop			;cc02	00 	.
	nop			;cc03	00 	.
	nop			;cc04	00 	.
	nop			;cc05	00 	.
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
	ld a,c
	sub l
	ld a,b
	sbc a,h
	jp c,ld00fh
	ex de,hl
	pop hl
	inc hl
	jp lcffah
ld00fh:
	pop hl
	push bc
	push de
	push hl
	ex de,hl
	ld hl,(ld9ceh)
	add hl,de
	ld b,h
	ld c,l
	call 0da1eh
	pop de
	ld hl,(ld9b5h)
	ld (hl),e
	inc hl
	ld (hl),d
	pop de
	ld hl,(ld9b7h)
	ld (hl),e
	inc hl
	ld (hl),d
	pop bc
	ld a,c
	sub e
	ld c,a
	ld a,b
	sbc a,d
	ld b,a
	ld hl,(ld9d0h)
	ex de,hl
	call 0da30h
	ld c,l
	ld b,h
	jp 0da21h
sub_d03eh:
	ld hl,ld9c3h
	ld c,(hl)
	ld a,(ld9e3h)
ld045h:
	or a
	rra
	dec c
	jp nz,ld045h
	ld b,a
	ld a,008h
	sub (hl)
	ld c,a
	ld a,(ld9e2h)
ld053h:
	dec c
	jp z,ld05ch
	or a
	rla
	jp ld053h
ld05ch:
	add a,b
	ret
sub_d05eh:
	ld hl,(lcf43h)
	ld de,00010h
	add hl,de
	add hl,bc
	ld a,(ld9ddh)
	or a
	jp z,ld071h
	ld l,(hl)
	ld h,000h
	ret
ld071h:
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ret
sub_d077h:
	call sub_d03eh
	ld c,a
	ld b,000h
	call sub_d05eh
	ld (ld9e5h),hl
	ret
sub_d084h:
	ld hl,(ld9e5h)
	ld a,l
	or h
	ret
sub_d08ah:
	ld a,(ld9c3h)
	ld hl,(ld9e5h)
ld090h:
	add hl,hl
	dec a
	jp nz,ld090h
	ld (ld9e7h),hl
	ld a,(ld9c4h)
	ld c,a
	ld a,(ld9e3h)
	and c
	or l
	ld l,a
	ld (ld9e5h),hl
	ret
sub_d0a6h:
	ld hl,(lcf43h)
	ld de,0000ch
	add hl,de
	ret
sub_d0aeh:
	ld hl,(lcf43h)
	ld de,0000fh
	add hl,de
	ex de,hl
	ld hl,00011h
	add hl,de
	ret
sub_d0bbh:
	call sub_d0aeh
	ld a,(hl)
	ld (ld9e3h),a
	ex de,hl
	ld a,(hl)
	ld (ld9e1h),a
	call sub_d0a6h
	ld a,(ld9c5h)
	and (hl)
	ld (ld9e2h),a
	ret
ld0d2h:
	call sub_d0aeh
	ld a,(ld9d5h)
	cp 002h
	jp nz,ld0deh
	xor a
ld0deh:
	ld c,a
	ld a,(ld9e3h)
	add a,c
	ld (hl),a
	ex de,hl
	ld a,(ld9e1h)
	ld (hl),a
	ret
sub_d0eah:
	inc c
ld0ebh:
	dec c
	ret z
	ld a,h
	or a
	rra
	ld h,a
	ld a,l
	rra
	ld l,a
	jp ld0ebh
sub_d0f7h:
	ld c,080h
	ld hl,(ld9b9h)
	xor a
ld0fdh:
	add a,(hl)
	inc hl
	dec c
	jp nz,ld0fdh
	ret
sub_d104h:
	inc c
ld105h:
	dec c
	ret z
	add hl,hl
	jp ld105h
sub_d10bh:
	push bc
	ld a,(lcf42h)
	ld c,a
	ld hl,00001h
	call sub_d104h
	pop bc
	ld a,c
	or l
	ld l,a
	ld a,b
	or h
	ld h,a
	ret
sub_d11eh:
	ld hl,(ld9adh)
	ld a,(lcf42h)
	ld c,a
	call sub_d0eah
	ld a,l
	and 001h
	ret
sub_d12ch:
	ld hl,ld9adh
	ld c,(hl)
	inc hl
	ld b,(hl)
	call sub_d10bh
	ld (ld9adh),hl
	ld hl,(ld9c8h)
	inc hl
	ex de,hl
	ld hl,(ld9b3h)
	ld (hl),e
	inc hl
	ld (hl),d
	ret
sub_d144h:
	call sub_d15eh
sub_d147h:
	ld de,00009h
	add hl,de
	ld a,(hl)
	rla
	ret nc
	ld hl,0cc0fh
	jp lcf4ah
sub_d154h:
	call sub_d11eh
	ret z
	ld hl,lcc0dh
	jp lcf4ah
sub_d15eh:
	ld hl,(ld9b9h)
	ld a,(ld9e9h)
sub_d164h:
	add a,l
	ld l,a
	ret nc
	inc h
	ret
sub_d169h:
	ld hl,(lcf43h)
	ld de,0000eh
	add hl,de
	ld a,(hl)
	ret
sub_d172h:
	call sub_d169h
	ld (hl),000h
	ret
sub_d178h:
	call sub_d169h
	or 080h
	ld (hl),a
	ret
sub_d17fh:
	ld hl,(ld9eah)
	ex de,hl
	ld hl,(ld9b3h)
	ld a,e
	sub (hl)
	inc hl
	ld a,d
	sbc a,(hl)
	ret
sub_d18ch:
	call sub_d17fh
	ret c
	inc de
	ld (hl),d
	dec hl
	ld (hl),e
	ret
sub_d195h:
	ld a,e
	sub l
	ld l,a
	ld a,d
	sbc a,h
	ld h,a
	ret
sub_d19ch:
	ld c,0ffh
ld19eh:
	ld hl,(ld9ech)
	ex de,hl
	ld hl,(ld9cch)
	call sub_d195h
	ret nc
	push bc
	call sub_d0f7h
	ld hl,(ld9bdh)
	ex de,hl
	ld hl,(ld9ech)
	add hl,de
	pop bc
	inc c
	jp z,ld1c4h
	cp (hl)
	ret z
	call sub_d17fh
	ret nc
	call sub_d12ch
	ret
ld1c4h:
	ld (hl),a
	ret
wrdir:
	call sub_d19ch
	call sub_d1e0h
	ld c,001h
	call sub_cfb8h
	jp ld1dah
sub_d1d4h:
	call sub_d1e0h
	call sub_cfb2h
ld1dah:
	ld hl,ld9b1h
	jp ld1e3h
sub_d1e0h:
	ld hl,ld9b9h
ld1e3h:
	ld c,(hl)
	inc hl
	ld b,(hl)
	jp 0da24h
ld1e9h:
	ld hl,(ld9b9h)
	ex de,hl
	ld hl,(ld9b1h)
	ld c,080h
	jp sub_cf4fh
sub_d1f5h:
	ld hl,ld9eah
	ld a,(hl)
	inc hl
	cp (hl)
	ret nz
	inc a
	ret
ld1feh:
	ld hl,0ffffh
	ld (ld9eah),hl
	ret
sub_d205h:
	ld hl,(ld9c8h)
	ex de,hl
	ld hl,(ld9eah)
	inc hl
	ld (ld9eah),hl
	call sub_d195h
	jp nc,ld219h
	jp ld1feh
ld219h:
	ld a,(ld9eah)
	and 003h
	ld b,005h
ld220h:
	add a,a
	dec b
	jp nz,ld220h
	ld (ld9e9h),a
	or a
	ret nz
	push bc
	call sub_cfc3h
	call sub_d1d4h
	pop bc
	jp ld19eh
getallocbit:
	ld a,c
	and 007h
	inc a
	ld e,a
	ld d,a
	ld a,c
	rrca
	rrca
	rrca
	and 01fh
	ld c,a
	ld a,b
	add a,a
	add a,a
	add a,a
	add a,a
	add a,a
	or c
	ld c,a
	ld a,b
	rrca
	rrca
	rrca
	and 01fh
	ld b,a
	ld hl,(ld9bfh)
	add hl,bc
	ld a,(hl)
ld256h:
	rlca
	dec e
	jp nz,ld256h
	ret
sub_d25ch:
	push de
	call getallocbit
	and 0feh
	pop bc
	or c
ld264h:
	rrca
	dec d
	jp nz,ld264h
	ld (hl),a
	ret
sub_d26bh:
	call sub_d15eh
	ld de,00010h
	add hl,de
	push bc
	ld c,011h
scandm0:
	pop de
	dec c
	ret z
	push de
	ld a,(ld9ddh)
	or a
	jp z,scandm1
	push bc
	push hl
	ld c,(hl)
	ld b,000h
	jp scandm2
scandm1:
	dec c
	push bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	push hl
scandm2:
	ld a,c
	or b
	jp z,scanm3
	ld hl,(ld9c6h)
	ld a,l
	sub c
	ld a,h
	sbc a,b
	call nc,sub_d25ch
scanm3:
	pop hl
	inc hl
	pop bc
	jp scandm0
initialize:
	ld hl,(ld9c6h)
	ld c,003h
	call sub_d0eah
	inc hl
	ld b,h
	ld c,l
	ld hl,(ld9bfh)
initial0:
	ld (hl),000h
	inc hl
	dec bc
	ld a,b
	or c
	jp nz,initial0
	ld hl,(ld9cah)
	ex de,hl
	ld hl,(ld9bfh)
	ld (hl),e
	inc hl
	ld (hl),d
	call sub_cfa1h
	ld hl,(ld9b3h)
	ld (hl),003h
	inc hl
	ld (hl),000h
	call ld1feh
initial2:
	ld c,0ffh
	call sub_d205h
	call sub_d1f5h
	ret z
	call sub_d15eh
	ld a,0e5h
	cp (hl)
	jp z,initial2
	ld a,(lcf41h)
	cp (hl)
	jp nz,pdollar
	inc hl
	ld a,(hl)
	sub 024h
	jp nz,pdollar
	dec a
	ld (lcf45h),a
pdollar:
	ld c,001h
	call sub_d26bh
	call sub_d18ch
	jp initial2
copy_dirloc:
	ld a,(ld9d4h)
	jp lcf01h
compext:
	push bc
	push af
	ld a,(ld9c5h)
	cpl
	ld b,a
	ld a,c
	and b
	ld c,a
	pop af
	and b
	sub c
	and 01fh
	pop bc
	ret
search:
	ld a,0ffh
	ld (ld9d4h),a
	ld hl,ld9d8h
	ld (hl),c
	ld hl,(lcf43h)
	ld (ld9d9h),hl
	call ld1feh
	call sub_cfa1h
searchn:
	ld c,000h
	call sub_d205h
	call sub_d1f5h
	jp z,search_fin
	ld hl,(ld9d9h)
	ex de,hl
	ld a,(de)
	cp 0e5h
	jp z,searchnext
	push de
	call sub_d17fh
	pop de
	jp nc,search_fin
searchnext:
	call sub_d15eh
	ld a,(ld9d8h)
	ld c,a
	ld b,000h
searchloop:
	ld a,c
	or a
	jp z,endsearch
	ld a,(de)
	cp 03fh
	jp z,searchok
	ld a,b
	cp 00dh
	jp z,searchok
	cp 00ch
	ld a,(de)
	jp z,searchext
	sub (hl)
	and 07fh
	jp nz,searchn
	jp searchok
searchext:
	push bc
	ld c,(hl)
	call compext
	pop bc
	jp nz,searchn
searchok:
	inc de
	inc hl
	inc b
	dec c
	jp searchloop
endsearch:
	ld a,(ld9eah)
	and 003h
	ld (lcf45h),a
	ld hl,ld9d4h
	ld a,(hl)
	rla
	ret nc
	xor a
	ld (hl),a
	ret
search_fin:
	call ld1feh
	ld a,0ffh
	jp lcf01h
delete:
	call sub_d154h
	ld c,00ch
	call search
delete0:
	call sub_d1f5h
	ret z
	call sub_d144h
	call sub_d15eh
	ld (hl),0e5h
	ld c,000h
	call sub_d26bh
	call wrdir
	call searchn
	jp delete0
get_block:
	ld d,b
	ld e,c
lefttst:
	ld a,c
	or b
	jp z,ld3d1h
	dec bc
	push de
	push bc
	call getallocbit
	rra
	jp nc,ld3ech
	pop bc
	pop de
ld3d1h:
	ld hl,(ld9c6h)
	ld a,e
	sub l
	ld a,d
	sbc a,h
	jp nc,ld3f4h
	inc de
	push bc
	push de
	ld b,d
	ld c,e
	call getallocbit
	rra
	jp nc,ld3ech
	pop de
	pop bc
	jp lefttst
ld3ech:
	rla
	inc a
	call ld264h
	pop hl
	pop de
	ret
ld3f4h:
	ld a,c
	or b
	jp nz,lefttst
	ld hl,00000h
	ret
sub_d3fdh:
	ld c,000h
	ld e,020h
sub_d401h:
	push de
	ld b,000h
	ld hl,(lcf43h)
	add hl,bc
	ex de,hl
	call sub_d15eh
	pop bc
	call sub_cf4fh
ld410h:
	call sub_cfc3h
	jp wrdir
sub_d416h:
	call sub_d154h
	ld c,00ch
	call search
	ld hl,(lcf43h)
	ld a,(hl)
	ld de,00010h
	add hl,de
	ld (hl),a
ld427h:
	call sub_d1f5h
	ret z
	call sub_d144h
	ld c,010h
	ld e,00ch
	call sub_d401h
	call searchn
	jp ld427h
sub_d43bh:
	ld c,00ch
	call search
ld440h:
	call sub_d1f5h
	ret z
	ld c,000h
	ld e,00ch
	call sub_d401h
	call searchn
	jp ld440h
sub_d451h:
	ld c,00fh
	call search
	call sub_d1f5h
	ret z
sub_d45ah:
	call sub_d0a6h
	ld a,(hl)
	push af
	push hl
	call sub_d15eh
	ex de,hl
	ld hl,(lcf43h)
	ld c,020h
	push de
	call sub_cf4fh
	call sub_d178h
	pop de
	ld hl,0000ch
	add hl,de
	ld c,(hl)
	ld hl,0000fh
	add hl,de
	ld b,(hl)
	pop hl
	pop af
	ld (hl),a
	ld a,c
	cp (hl)
	ld a,b
	jp z,ld48bh
	ld a,000h
	jp c,ld48bh
	ld a,080h
ld48bh:
	ld hl,(lcf43h)
	ld de,0000fh
	add hl,de
	ld (hl),a
	ret
sub_d494h:
	ld a,(hl)
	inc hl
	or (hl)
	dec hl
	ret nz
	ld a,(de)
	ld (hl),a
	inc de
	inc hl
	ld a,(de)
	ld (hl),a
	dec de
	dec hl
	ret
sub_d4a2h:
	xor a
	ld (lcf45h),a
	ld (ld9eah),a
	ld (ld9ebh),a
	call sub_d11eh
	ret nz
	call sub_d169h
	and 080h
	ret nz
	ld c,00fh
	call search
	call sub_d1f5h
	ret z
	ld bc,00010h
	call sub_d15eh
	add hl,bc
	ex de,hl
	ld hl,(lcf43h)
	add hl,bc
	ld c,010h
ld4cdh:
	ld a,(ld9ddh)
	or a
	jp z,ld4e8h
	ld a,(hl)
	or a
	ld a,(de)
	jp nz,ld4dbh
	ld (hl),a
ld4dbh:
	or a
	jp nz,ld4e1h
	ld a,(hl)
	ld (de),a
ld4e1h:
	cp (hl)
	jp nz,ld51fh
	jp ld4fdh
ld4e8h:
	call sub_d494h
	ex de,hl
	call sub_d494h
	ex de,hl
	ld a,(de)
	cp (hl)
	jp nz,ld51fh
	inc de
	inc hl
	ld a,(de)
	cp (hl)
	jp nz,ld51fh
	dec c
ld4fdh:
	inc de
	inc hl
	dec c
	jp nz,ld4cdh
	ld bc,0ffech
	add hl,bc
	ex de,hl
	add hl,bc
	ld a,(de)
	cp (hl)
	jp c,ld517h
	ld (hl),a
	ld bc,00003h
	add hl,bc
	ex de,hl
	add hl,bc
	ld a,(hl)
	ld (de),a
ld517h:
	ld a,0ffh
	ld (ld9d2h),a
	jp ld410h
ld51fh:
	ld hl,lcf45h
	dec (hl)
	ret
sub_d524h:
	call sub_d154h
	ld hl,(lcf43h)
	push hl
	ld hl,ld9ach
	ld (lcf43h),hl
	ld c,001h
	call search
	call sub_d1f5h
	pop hl
	ld (lcf43h),hl
	ret z
	ex de,hl
	ld hl,0000fh
	add hl,de
	ld c,011h
	xor a
ld546h:
	ld (hl),a
	inc hl
	dec c
	jp nz,ld546h
	ld hl,0000dh
	add hl,de
	ld (hl),a
	call sub_d18ch
	call sub_d3fdh
	jp sub_d178h
sub_d55ah:
	xor a
	ld (ld9d2h),a
	call sub_d4a2h
	call sub_d1f5h
	ret z
	ld hl,(lcf43h)
	ld bc,0000ch
	add hl,bc
	ld a,(hl)
	inc a
	and 01fh
	ld (hl),a
	jp z,ld583h
	ld b,a
	ld a,(ld9c5h)
	and b
	ld hl,ld9d2h
	and (hl)
	jp z,ld58eh
	jp ld5ach
ld583h:
	ld bc,00002h
	add hl,bc
	inc (hl)
	ld a,(hl)
	and 00fh
	jp z,ld5b6h
ld58eh:
	ld c,00fh
	call search
	call sub_d1f5h
	jp nz,ld5ach
	ld a,(ld9d3h)
	inc a
	jp z,ld5b6h
	call sub_d524h
	call sub_d1f5h
	jp z,ld5b6h
	jp ld5afh
ld5ach:
	call sub_d45ah
ld5afh:
	call sub_d0bbh
	xor a
	jp lcf01h
ld5b6h:
	call sub_cf05h
	jp sub_d178h
ld5bch:
	ld a,001h
	ld (ld9d5h),a
sub_d5c1h:
	ld a,0ffh
	ld (ld9d3h),a
	call sub_d0bbh
	ld a,(ld9e3h)
	ld hl,ld9e1h
	cp (hl)
	jp c,ld5e6h
	cp 080h
	jp nz,ld5fbh
	call sub_d55ah
	xor a
	ld (ld9e3h),a
	ld a,(lcf45h)
	or a
	jp nz,ld5fbh
ld5e6h:
	call sub_d077h
	call sub_d084h
	jp z,ld5fbh
	call sub_d08ah
	call sub_cfd1h
	call sub_cfb2h
	jp ld0d2h
ld5fbh:
	jp sub_cf05h
ld5feh:
	ld a,001h
	ld (ld9d5h),a
sub_d603h:
	ld a,000h
	ld (ld9d3h),a
	call sub_d154h
	ld hl,(lcf43h)
	call sub_d147h
	call sub_d0bbh
	ld a,(ld9e3h)
	cp 080h
	jp nc,sub_cf05h
	call sub_d077h
	call sub_d084h
	ld c,000h
	jp nz,ld66eh
	call sub_d03eh
	ld (ld9d7h),a
	ld bc,00000h
	or a
	jp z,ld63bh
	ld c,a
	dec bc
	call sub_d05eh
	ld b,h
	ld c,l
ld63bh:
	call get_block
	ld a,l
	or h
	jp nz,ld648h
	ld a,002h
	jp lcf01h
ld648h:
	ld (ld9e5h),hl
	ex de,hl
	ld hl,(lcf43h)
	ld bc,00010h
	add hl,bc
	ld a,(ld9ddh)
	or a
	ld a,(ld9d7h)
	jp z,ld664h
	call sub_d164h
	ld (hl),e
	jp ld66ch
ld664h:
	ld c,a
	ld b,000h
	add hl,bc
	add hl,bc
	ld (hl),e
	inc hl
	ld (hl),d
ld66ch:
	ld c,002h
ld66eh:
	ld a,(lcf45h)
	or a
	ret nz
	push bc
	call sub_d08ah
	ld a,(ld9d5h)
	dec a
	dec a
	jp nz,ld6bbh
	pop bc
	push bc
	ld a,c
	dec a
	dec a
	jp nz,ld6bbh
	push hl
	ld hl,(ld9b9h)
	ld d,a
ld68ch:
	ld (hl),a
	inc hl
	inc d
	jp p,ld68ch
	call sub_d1e0h
	ld hl,(ld9e7h)
	ld c,002h
ld69ah:
	ld (ld9e5h),hl
	push bc
	call sub_cfd1h
	pop bc
	call sub_cfb8h
	ld hl,(ld9e5h)
	ld c,000h
	ld a,(ld9c4h)
	ld b,a
	and l
	cp b
	inc hl
	jp nz,ld69ah
	pop hl
	ld (ld9e5h),hl
	call ld1dah
ld6bbh:
	call sub_cfd1h
	pop bc
	push bc
	call sub_cfb8h
	pop bc
	ld a,(ld9e3h)
	ld hl,ld9e1h
	cp (hl)
	jp c,diskwr2
	ld (hl),a
	inc (hl)
	ld c,002h
diskwr2:
	nop
	nop
	ld hl,00000h
	push af
	call sub_d169h
	and 07fh
	ld (hl),a
	pop af
	cp 07fh
	jp nz,ld700h
	ld a,(ld9d5h)
	cp 001h
	jp nz,ld700h
	call ld0d2h
	call sub_d55ah
	ld hl,lcf45h
	ld a,(hl)
	or a
	jp nz,ld6feh
	dec a
	ld (ld9e3h),a
ld6feh:
	ld (hl),000h
ld700h:
	jp ld0d2h
sub_d703h:
	xor a
	ld (ld9d5h),a
sub_d707h:
	push bc
	ld hl,(lcf43h)
	ex de,hl
	ld hl,00021h
	add hl,de
	ld a,(hl)
	and 07fh
	push af
	ld a,(hl)
	rla
	inc hl
	ld a,(hl)
	rla
	and 01fh
	ld c,a
	ld a,(hl)
	rra
	rra
	rra
	rra
	and 00fh
	ld b,a
	pop af
	inc hl
	ld l,(hl)
	inc l
	dec l
	ld l,006h
	jp nz,ld78bh
	ld hl,00020h
	add hl,de
	ld (hl),a
	ld hl,0000ch
	add hl,de
	ld a,c
	sub (hl)
	jp nz,ld747h
	ld hl,0000eh
	add hl,de
	ld a,b
	sub (hl)
	and 07fh
	jp z,ld77fh
ld747h:
	push bc
	push de
	call sub_d4a2h
	pop de
	pop bc
	ld l,003h
	ld a,(lcf45h)
	inc a
	jp z,ld784h
	ld hl,0000ch
	add hl,de
	ld (hl),c
	ld hl,0000eh
	add hl,de
	ld (hl),b
	call sub_d451h
	ld a,(lcf45h)
	inc a
	jp nz,ld77fh
	pop bc
	push bc
	ld l,004h
	inc c
	jp z,ld784h
	call sub_d524h
	ld l,005h
	ld a,(lcf45h)
	inc a
	jp z,ld784h
ld77fh:
	pop bc
	xor a
	jp lcf01h
ld784h:
	push hl
	call sub_d169h
	ld (hl),0c0h
	pop hl
ld78bh:
	pop bc
	ld a,l
	ld (lcf45h),a
	jp sub_d178h
ld793h:
	ld c,0ffh
	call sub_d703h
	call z,sub_d5c1h
	ret
ld79ch:
	ld c,000h
	call sub_d703h
	call z,sub_d603h
	ret
sub_d7a5h:
	ex de,hl
	add hl,de
	ld c,(hl)
	ld b,000h
	ld hl,0000ch
	add hl,de
	ld a,(hl)
	rrca
	and 080h
	add a,c
	ld c,a
	ld a,000h
	adc a,b
	ld b,a
	ld a,(hl)
	rrca
	and 00fh
	add a,b
	ld b,a
	ld hl,0000eh
	add hl,de
	ld a,(hl)
	add a,a
	add a,a
	add a,a
	add a,a
	push af
	add a,b
	ld b,a
	push af
	pop hl
	ld a,l
	pop hl
	or l
	and 001h
	ret
ld7d2h:
	ld c,00ch
	call search
	ld hl,(lcf43h)
	ld de,00021h
	add hl,de
	push hl
	ld (hl),d
	inc hl
	ld (hl),d
	inc hl
	ld (hl),d
ld7e4h:
	call sub_d1f5h
	jp z,ld80ch
	call sub_d15eh
	ld de,0000fh
	call sub_d7a5h
	pop hl
	push hl
	ld e,a
	ld a,c
	sub (hl)
	inc hl
	ld a,b
	sbc a,(hl)
	inc hl
	ld a,e
	sbc a,(hl)
	jp c,ld806h
	ld (hl),e
	dec hl
	ld (hl),b
	dec hl
	ld (hl),c
ld806h:
	call searchn
	jp ld7e4h
ld80ch:
	pop hl
	ret
	ld hl,(lcf43h)
	ld de,00020h
	call sub_d7a5h
	ld hl,00021h
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	inc hl
	ld (hl),a
	ret
ld821h:
	ld hl,(ld9afh)
	ld a,(lcf42h)
	ld c,a
	call sub_d0eah
	push hl
	ex de,hl
	call sub_cf59h
	pop hl
	call z,sub_cf47h
	ld a,l
	rra
	ret c
	ld hl,(ld9afh)
	ld c,l
	ld b,h
	call sub_d10bh
	ld (ld9afh),hl
	jp initialize
sub_d845h:
	ld a,(ld9d6h)
	ld hl,lcf42h
	cp (hl)
	ret z
	ld (hl),a
	jp ld821h
sub_d851h:
	ld a,0ffh
	ld (ld9deh),a
	ld hl,(lcf43h)
	ld a,(hl)
	and 01fh
	dec a
	ld (ld9d6h),a
	cp 01eh
	jp nc,ld875h
	ld a,(lcf42h)
	ld (ld9dfh),a
	ld a,(hl)
	ld (ld9e0h),a
	and 0e0h
	ld (hl),a
	call sub_d845h
ld875h:
	ld a,(lcf41h)
	ld hl,(lcf43h)
	or (hl)
	ld (hl),a
	ret
	ld a,022h
	jp lcf01h
	ld hl,00000h
	ld (ld9adh),hl
	ld (ld9afh),hl
	xor a
	ld (lcf42h),a
	ld hl,00080h
	ld (ld9b1h),hl
	call ld1dah
	jp ld821h
	call sub_d172h
	call sub_d851h
	jp sub_d451h
	call sub_d851h
	jp sub_d4a2h
	ld c,000h
	ex de,hl
	ld a,(hl)
	cp 03fh
	jp z,ld8c2h
	call sub_d0a6h
	ld a,(hl)
	cp 03fh
	call nz,sub_d172h
	call sub_d851h
	ld c,00fh
ld8c2h:
	call search
	jp ld1e9h
	ld hl,(ld9d9h)
	ld (lcf43h),hl
	call sub_d851h
	call searchn
	jp ld1e9h
	call sub_d851h
	call delete
	jp copy_dirloc
	call sub_d851h
	jp ld5bch
	call sub_d851h
	jp ld5feh
	call sub_d172h
	call sub_d851h
	jp sub_d524h
	call sub_d851h
	call sub_d416h
	jp copy_dirloc
	ld hl,(ld9afh)
	jp ld929h
	ld a,(lcf42h)
	jp lcf01h
	ex de,hl
	ld (ld9b1h),hl
	jp ld1dah
	ld hl,(ld9bfh)
	jp ld929h
	ld hl,(ld9adh)
	jp ld929h
	call sub_d851h
	call sub_d43bh
	jp copy_dirloc
	ld hl,(ld9bbh)
ld929h:
	ld (lcf45h),hl
	ret
	ld a,(ld9d6h)
	cp 0ffh
	jp nz,ld93bh
	ld a,(lcf41h)
	jp lcf01h
ld93bh:
	and 01fh
	ld (lcf41h),a
	ret
	call sub_d851h
	jp ld793h
	call sub_d851h
	jp ld79ch
	call sub_d851h
	jp ld7d2h
	ld hl,(lcf43h)
	ld a,l
	cpl
	ld e,a
	ld a,h
	cpl
	ld hl,(ld9afh)
	and h
	ld d,a
	ld a,l
	and e
	ld e,a
	ld hl,(ld9adh)
	ex de,hl
	ld (ld9afh),hl
	ld a,l
	and e
	ld l,a
	ld a,h
	and d
	ld h,a
	ld (ld9adh),hl
	ret
ld974h:
	ld a,(ld9deh)
	or a
	jp z,ld991h
	ld hl,(lcf43h)
	ld (hl),000h
	ld a,(ld9e0h)
	or a
	jp z,ld991h
	ld (hl),a
	ld a,(ld9dfh)
	ld (ld9d6h),a
	call sub_d845h
ld991h:
	ld hl,(lcf0fh)
	ld sp,hl
	ld hl,(lcf45h)
	ld a,l
	ld b,h
	ret
	call sub_d851h
	ld a,002h
	ld (ld9d5h),a
	ld c,000h
	call sub_d707h
	call z,sub_d603h
	ret
ld9ach:
	push hl
ld9adh:
	nop
	nop
ld9afh:
	nop
	nop
ld9b1h:
	add a,b
	nop
ld9b3h:
	nop
	nop
ld9b5h:
	nop
	nop
ld9b7h:
	nop
	nop
ld9b9h:
	nop
	nop
ld9bbh:
	nop
	nop
ld9bdh:
	nop
	nop
ld9bfh:
	nop
	nop
ld9c1h:
	nop
	nop
ld9c3h:
	nop
ld9c4h:
	nop
ld9c5h:
	nop
ld9c6h:
	nop
	nop
ld9c8h:
	nop
	nop
ld9cah:
	nop
	nop
ld9cch:
	nop
	nop
ld9ceh:
	nop
	nop
ld9d0h:
	nop
	nop
ld9d2h:
	nop
ld9d3h:
	nop
ld9d4h:
	nop
ld9d5h:
	nop
ld9d6h:
	nop
ld9d7h:
	nop
ld9d8h:
	nop
ld9d9h:
	nop
	nop
	nop
	nop
ld9ddh:
	nop
ld9deh:
	nop
ld9dfh:
	nop
ld9e0h:
	nop
ld9e1h:
	nop
ld9e2h:
	nop
ld9e3h:
	nop
	nop
ld9e5h:
	nop
	nop
ld9e7h:
	nop
	nop
ld9e9h:
	nop
ld9eah:
	nop
ld9ebh:
	nop
ld9ech:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
