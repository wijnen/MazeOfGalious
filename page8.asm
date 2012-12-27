; z80dasm 1.1.3
; command line: z80dasm -o page8.asm -g 32768 -at -b page8.blocks page8.bin

	org	08000h

	ld b,d			;8000	42 	B 
	ld b,c			;8001	41 	A 
	ld d,(hl)			;8002	56 	V 
	ld h,h			;8003	64 	d 
	ld c,h			;8004	4c 	L 
	ld a,(bc)			;8005	0a 	. 
	ld a,(bc)			;8006	0a 	. 
	ld b,e			;8007	43 	C 
	ld b,e			;8008	43 	C 
	ld b,d			;8009	42 	B 
	ld e,d			;800a	5a 	Z 
	ld d,a			;800b	57 	W 
	ld e,(hl)			;800c	5e 	^ 
	ld a,(bc)			;800d	0a 	. 
	ld a,(bc)			;800e	0a 	. 
	ld b,b			;800f	40 	@ 
	ld b,h			;8010	44 	D 
	ld d,l			;8011	55 	U 
	ld b,e			;8012	43 	C 
	ld b,e			;8013	43 	C 
	ld c,l			;8014	4d 	M 
	ld a,(bc)			;8015	0a 	. 
	ld a,(bc)			;8016	0a 	. 
	ld (hl),b			;8017	70 	p 
	ld (hl),b			;8018	70 	p 
	ld (hl),b			;8019	70 	p 
	ld a,b			;801a	78 	x 
	ld (hl),h			;801b	74 	t 
	ld (hl),b			;801c	70 	p 
	ld (hl),b			;801d	70 	p 
	ld a,(bc)			;801e	0a 	. 
	ld (hl),b			;801f	70 	p 
	ld a,c			;8020	79 	y 
	ld (hl),h			;8021	74 	t 
	adc a,d			;8022	8a 	. 
	ld (hl),c			;8023	71 	q 
	ld (hl),b			;8024	70 	p 
	ld (hl),h			;8025	74 	t 
	ld a,(bc)			;8026	0a 	. 
	ld (hl),b			;8027	70 	p 
	ld (hl),e			;8028	73 	s 
	ld (hl),c			;8029	71 	q 
	ld (hl),c			;802a	71 	q 
	ld (hl),b			;802b	70 	p 
	ld (hl),h			;802c	74 	t 
	ld (hl),c			;802d	71 	q 
	ld a,(bc)			;802e	0a 	. 
	ld l,d			;802f	6a 	j 
	ld l,d			;8030	6a 	j 
	ld l,d			;8031	6a 	j 
	ld l,d			;8032	6a 	j 
	jr nc,$+108		;8033	30 6a 	0 j 
	ld l,d			;8035	6a 	j 
	ld a,(bc)			;8036	0a 	. 
	ld l,c			;8037	69 	i 
	ld l,c			;8038	69 	i 
	ld l,c			;8039	69 	i 
	ld l,c			;803a	69 	i 
	ld l,c			;803b	69 	i 
	ld l,c			;803c	69 	i 
	ld l,c			;803d	69 	i 
	ld (hl),b			;803e	70 	p 
	ld (hl),b			;803f	70 	p 
	ld (hl),h			;8040	74 	t 
	ld (hl),b			;8041	70 	p 
	ld (hl),b			;8042	70 	p 
	ld (hl),b			;8043	70 	p 
	ld (hl),b			;8044	70 	p 
	ld (hl),b			;8045	70 	p 
	ld (hl),h			;8046	74 	t 
	ld (hl),h			;8047	74 	t 
	ld (hl),c			;8048	71 	q 
	ld (hl),b			;8049	70 	p 
	ld (hl),b			;804a	70 	p 
	ld (hl),h			;804b	74 	t 
	ld (hl),b			;804c	70 	p 
	ld (hl),h			;804d	74 	t 
	ld (hl),c			;804e	71 	q 
	ld (hl),c			;804f	71 	q 
	ld (hl),b			;8050	70 	p 
	ld (hl),b			;8051	70 	p 
	ld (hl),b			;8052	70 	p 
	ld (hl),c			;8053	71 	q 
	ld (hl),b			;8054	70 	p 
	ld (hl),c			;8055	71 	q 
	ld l,d			;8056	6a 	j 
	ld l,d			;8057	6a 	j 
	ld l,d			;8058	6a 	j 
	ld l,d			;8059	6a 	j 
	ld l,d			;805a	6a 	j 
	ld l,d			;805b	6a 	j 
	ld l,d			;805c	6a 	j 
	ld l,d			;805d	6a 	j 
	ld l,c			;805e	69 	i 
	ld l,c			;805f	69 	i 
	ld l,c			;8060	69 	i 
	ld l,c			;8061	69 	i 
	ld l,c			;8062	69 	i 
	ld l,c			;8063	69 	i 
	ld l,c			;8064	69 	i 
	ld l,c			;8065	69 	i 
	ld (hl),b			;8066	70 	p 
	ld (hl),b			;8067	70 	p 
	ld a,b			;8068	78 	x 
	ld (hl),h			;8069	74 	t 
	ld (hl),b			;806a	70 	p 
	ld (hl),b			;806b	70 	p 
	ld (hl),h			;806c	74 	t 
	ld (hl),h			;806d	74 	t 
	ld (hl),h			;806e	74 	t 
	ld (hl),b			;806f	70 	p 
	ld a,l			;8070	7d 	} 
	ld (hl),c			;8071	71 	q 
	ld (hl),b			;8072	70 	p 
	ld (hl),h			;8073	74 	t 
	sub h			;8074	94 	. 
	ld (hl),c			;8075	71 	q 
	ld (hl),c			;8076	71 	q 
	ld (hl),b			;8077	70 	p 
	ld (hl),e			;8078	73 	s 
	ld (hl),b			;8079	70 	p 
	ld (hl),h			;807a	74 	t 
	ld (hl),c			;807b	71 	q 
	ld (hl),e			;807c	73 	s 
	ld (hl),b			;807d	70 	p 
	ld l,d			;807e	6a 	j 
	ld l,d			;807f	6a 	j 
	ld l,d			;8080	6a 	j 
	jr nc,$+108		;8081	30 6a 	0 j 
	ld l,d			;8083	6a 	j 
	ld l,d			;8084	6a 	j 
	ld l,d			;8085	6a 	j 
	ld l,c			;8086	69 	i 
	ld l,c			;8087	69 	i 
	ld l,c			;8088	69 	i 
	ld l,c			;8089	69 	i 
	ld l,c			;808a	69 	i 
	ld l,c			;808b	69 	i 
	ld l,c			;808c	69 	i 
	ld l,c			;808d	69 	i 
	ld (hl),h			;808e	74 	t 
	ld (hl),b			;808f	70 	p 
	ld (hl),b			;8090	70 	p 
	ld (hl),h			;8091	74 	t 
	ld (hl),b			;8092	70 	p 
	ld (hl),b			;8093	70 	p 
	ld (hl),h			;8094	74 	t 
	ld a,(bc)			;8095	0a 	. 
	ld (hl),c			;8096	71 	q 
	ld (hl),b			;8097	70 	p 
	ld (hl),b			;8098	70 	p 
	ld (hl),c			;8099	71 	q 
	ld (hl),b			;809a	70 	p 
	ld (hl),b			;809b	70 	p 
	ld (hl),c			;809c	71 	q 
	ld a,(bc)			;809d	0a 	. 
	ld (hl),b			;809e	70 	p 
	ld (hl),b			;809f	70 	p 
	ld (hl),b			;80a0	70 	p 
	ld (hl),b			;80a1	70 	p 
	ld (hl),b			;80a2	70 	p 
	ld (hl),b			;80a3	70 	p 
	ld (hl),b			;80a4	70 	p 
	ld a,(bc)			;80a5	0a 	. 
	ld l,d			;80a6	6a 	j 
	ld l,d			;80a7	6a 	j 
	ld l,d			;80a8	6a 	j 
	ld l,d			;80a9	6a 	j 
	ld l,d			;80aa	6a 	j 
	ld l,d			;80ab	6a 	j 
	ld l,d			;80ac	6a 	j 
	ld a,(bc)			;80ad	0a 	. 
	ld l,c			;80ae	69 	i 
	ld l,c			;80af	69 	i 
	ld l,c			;80b0	69 	i 
	ld l,c			;80b1	69 	i 
	ld l,c			;80b2	69 	i 
	ld l,c			;80b3	69 	i 
	ld l,c			;80b4	69 	i 
	ld a,(bc)			;80b5	0a 	. 
	ld a,(bc)			;80b6	0a 	. 
	ld a,(bc)			;80b7	0a 	. 
	ld a,(bc)			;80b8	0a 	. 
	ld a,(bc)			;80b9	0a 	. 
	ld b,e			;80ba	43 	C 
	ld b,e			;80bb	43 	C 
	ld b,e			;80bc	43 	C 
	ld a,(bc)			;80bd	0a 	. 
	ld a,(bc)			;80be	0a 	. 
	ld b,c			;80bf	41 	A 
	ld b,l			;80c0	45 	E 
	ld b,c			;80c1	41 	A 
	ld d,l			;80c2	55 	U 
	ld b,h			;80c3	44 	D 
	ld b,b			;80c4	40 	@ 
	ld b,c			;80c5	41 	A 
	ld a,(bc)			;80c6	0a 	. 
	ld b,d			;80c7	42 	B 
	ld d,a			;80c8	57 	W 
	ld b,d			;80c9	42 	B 
	ld d,a			;80ca	57 	W 
	ld e,d			;80cb	5a 	Z 
	ld b,d			;80cc	42 	B 
	ld b,d			;80cd	42 	B 
	ld a,(bc)			;80ce	0a 	. 
	ld l,d			;80cf	6a 	j 
	ld l,d			;80d0	6a 	j 
	ld l,d			;80d1	6a 	j 
	ld l,d			;80d2	6a 	j 
	ld l,d			;80d3	6a 	j 
	ld l,d			;80d4	6a 	j 
	ld l,d			;80d5	6a 	j 
	ld a,(bc)			;80d6	0a 	. 
	ld l,c			;80d7	69 	i 
	ld l,c			;80d8	69 	i 
	ld l,c			;80d9	69 	i 
	ld l,c			;80da	69 	i 
	ld l,c			;80db	69 	i 
	ld l,c			;80dc	69 	i 
	ld l,c			;80dd	69 	i 
	ld a,(bc)			;80de	0a 	. 
	ld a,(bc)			;80df	0a 	. 
	ld a,(bc)			;80e0	0a 	. 
	ld a,(bc)			;80e1	0a 	. 
	ld a,(bc)			;80e2	0a 	. 
	ld a,(bc)			;80e3	0a 	. 
	ld a,(bc)			;80e4	0a 	. 
	ld a,(bc)			;80e5	0a 	. 
	ld b,c			;80e6	41 	A 
	ld b,d			;80e7	42 	B 
	ld b,d			;80e8	42 	B 
	ld b,l			;80e9	45 	E 
	ld b,d			;80ea	42 	B 
	ld b,c			;80eb	41 	A 
	ld b,d			;80ec	42 	B 
	ld b,c			;80ed	41 	A 
	ld b,d			;80ee	42 	B 
	ld b,e			;80ef	43 	C 
	ld b,b			;80f0	40 	@ 
	ld d,a			;80f1	57 	W 
	ld b,e			;80f2	43 	C 
	ld b,d			;80f3	42 	B 
	ld b,e			;80f4	43 	C 
	ld b,d			;80f5	42 	B 
	ld l,d			;80f6	6a 	j 
	ld l,d			;80f7	6a 	j 
	ld l,d			;80f8	6a 	j 
	jr nc,$+108		;80f9	30 6a 	0 j 
	ld l,d			;80fb	6a 	j 
	ld l,d			;80fc	6a 	j 
	ld l,d			;80fd	6a 	j 
	ld l,c			;80fe	69 	i 
	ld l,c			;80ff	69 	i 
	ld l,c			;8100	69 	i 
	ld l,c			;8101	69 	i 
	ld l,c			;8102	69 	i 
	ld l,c			;8103	69 	i 
	ld l,c			;8104	69 	i 
	ld l,c			;8105	69 	i 
	ld a,(bc)			;8106	0a 	. 
	ld a,(bc)			;8107	0a 	. 
	ld b,e			;8108	43 	C 
	ld b,b			;8109	40 	@ 
	ld b,b			;810a	40 	@ 
	ld b,e			;810b	43 	C 
	ld c,h			;810c	4c 	L 
	ld a,(bc)			;810d	0a 	. 
	ld l,l			;810e	6d 	m 
	ld b,c			;810f	41 	A 
	ld b,b			;8110	40 	@ 
	ld b,d			;8111	42 	B 
	ld b,d			;8112	42 	B 
	ld b,b			;8113	40 	@ 
	ld a,(bc)			;8114	0a 	. 
	ld a,(bc)			;8115	0a 	. 
	ld b,e			;8116	43 	C 
	ld b,d			;8117	42 	B 
	ld b,d			;8118	42 	B 
	ld d,l			;8119	55 	U 
	ld b,h			;811a	44 	D 
	ld b,d			;811b	42 	B 
	ld b,d			;811c	42 	B 
	ld a,(bc)			;811d	0a 	. 
	ld l,d			;811e	6a 	j 
	ld l,d			;811f	6a 	j 
	ld l,d			;8120	6a 	j 
	ld l,d			;8121	6a 	j 
	ld l,d			;8122	6a 	j 
	ld l,d			;8123	6a 	j 
	ld l,d			;8124	6a 	j 
	ld a,(bc)			;8125	0a 	. 
	ld l,c			;8126	69 	i 
	ld l,c			;8127	69 	i 
	ld l,c			;8128	69 	i 
	ld l,c			;8129	69 	i 
	ld l,c			;812a	69 	i 
	ld l,c			;812b	69 	i 
	ld l,c			;812c	69 	i 
	ld a,(bc)			;812d	0a 	. 
	ld a,(bc)			;812e	0a 	. 
	ld b,b			;812f	40 	@ 
	ld b,b			;8130	40 	@ 
	ld b,b			;8131	40 	@ 
	ld a,(bc)			;8132	0a 	. 
	ld b,b			;8133	40 	@ 
	ld b,b			;8134	40 	@ 
	ld b,e			;8135	43 	C 
	ld a,(bc)			;8136	0a 	. 
	ld b,d			;8137	42 	B 
	ld e,a			;8138	5f 	_ 
	ld l,l			;8139	6d 	m 
	ld b,c			;813a	41 	A 
	ld l,(hl)			;813b	6e 	n 
	ld h,a			;813c	67 	g 
	ld b,b			;813d	40 	@ 
	ld a,(bc)			;813e	0a 	. 
	ld b,e			;813f	43 	C 
	ld b,d			;8140	42 	B 
	ld b,d			;8141	42 	B 
	ld b,d			;8142	42 	B 
	ld b,e			;8143	43 	C 
	ld d,a			;8144	57 	W 
	ld b,d			;8145	42 	B 
	ld a,(bc)			;8146	0a 	. 
	ld l,h			;8147	6c 	l 
	ld l,h			;8148	6c 	l 
	ld l,h			;8149	6c 	l 
	ld l,h			;814a	6c 	l 
	ld l,h			;814b	6c 	l 
	ld l,h			;814c	6c 	l 
	ld l,h			;814d	6c 	l 
	ld a,(bc)			;814e	0a 	. 
	ld l,e			;814f	6b 	k 
	ld l,e			;8150	6b 	k 
	ld l,e			;8151	6b 	k 
	ld l,e			;8152	6b 	k 
	ld l,e			;8153	6b 	k 
	ld l,e			;8154	6b 	k 
	ld l,e			;8155	6b 	k 
	ld b,e			;8156	43 	C 
	ld b,e			;8157	43 	C 
	ld b,b			;8158	40 	@ 
	ld b,b			;8159	40 	@ 
	ld b,b			;815a	40 	@ 
	ld l,a			;815b	6f 	o 
	ld b,e			;815c	43 	C 
	ld c,d			;815d	4a 	J 
	ld b,b			;815e	40 	@ 
	ld b,e			;815f	43 	C 
	ld b,d			;8160	42 	B 
	ld b,c			;8161	41 	A 
	ld b,d			;8162	42 	B 
	ld d,d			;8163	52 	R 
	ld b,b			;8164	40 	@ 
	ld d,c			;8165	51 	Q 
	ld b,d			;8166	42 	B 
	ld b,e			;8167	43 	C 
	ld b,e			;8168	43 	C 
	ld b,d			;8169	42 	B 
	ld b,e			;816a	43 	C 
	ld b,d			;816b	42 	B 
	ld b,d			;816c	42 	B 
	ld b,d			;816d	42 	B 
	ld l,h			;816e	6c 	l 
	ld l,h			;816f	6c 	l 
	ld l,h			;8170	6c 	l 
	ld l,h			;8171	6c 	l 
	ld l,h			;8172	6c 	l 
	ld l,h			;8173	6c 	l 
	ld l,h			;8174	6c 	l 
	ld l,h			;8175	6c 	l 
	ld l,e			;8176	6b 	k 
	ld l,e			;8177	6b 	k 
	ld l,e			;8178	6b 	k 
	ld l,e			;8179	6b 	k 
	ld l,e			;817a	6b 	k 
	ld l,e			;817b	6b 	k 
	ld l,e			;817c	6b 	k 
	ld l,e			;817d	6b 	k 
	ld a,(bc)			;817e	0a 	. 
	ld b,e			;817f	43 	C 
	ld b,e			;8180	43 	C 
	ld b,e			;8181	43 	C 
	ld b,e			;8182	43 	C 
	ld b,e			;8183	43 	C 
	ld b,e			;8184	43 	C 
	ld a,(bc)			;8185	0a 	. 
	ld a,(bc)			;8186	0a 	. 
	ld b,e			;8187	43 	C 
	ld b,e			;8188	43 	C 
	ld b,e			;8189	43 	C 
	ld b,e			;818a	43 	C 
	ld b,e			;818b	43 	C 
	ld b,e			;818c	43 	C 
	ld b,d			;818d	42 	B 
	ld b,d			;818e	42 	B 
	ld b,e			;818f	43 	C 
	ld b,e			;8190	43 	C 
	ld b,e			;8191	43 	C 
	ld b,e			;8192	43 	C 
	ld b,e			;8193	43 	C 
	ld b,e			;8194	43 	C 
	ld b,e			;8195	43 	C 
	ld l,h			;8196	6c 	l 
	ld l,h			;8197	6c 	l 
	ld l,h			;8198	6c 	l 
	ld l,h			;8199	6c 	l 
	ld l,h			;819a	6c 	l 
	ld l,h			;819b	6c 	l 
	ld l,h			;819c	6c 	l 
	ld l,h			;819d	6c 	l 
	ld l,e			;819e	6b 	k 
	ld l,e			;819f	6b 	k 
	ld l,e			;81a0	6b 	k 
	ld l,e			;81a1	6b 	k 
	ld l,e			;81a2	6b 	k 
	ld l,e			;81a3	6b 	k 
	ld l,e			;81a4	6b 	k 
	ld l,e			;81a5	6b 	k 
	ld a,(bc)			;81a6	0a 	. 
	ld b,e			;81a7	43 	C 
	ld b,e			;81a8	43 	C 
	ld b,e			;81a9	43 	C 
	ld b,b			;81aa	40 	@ 
	ld b,e			;81ab	43 	C 
	ld c,l			;81ac	4d 	M 
	ld a,(bc)			;81ad	0a 	. 
	ld b,d			;81ae	42 	B 
	ld b,e			;81af	43 	C 
	ld b,b			;81b0	40 	@ 
	ld b,e			;81b1	43 	C 
	ld b,d			;81b2	42 	B 
	ld b,e			;81b3	43 	C 
	ld c,h			;81b4	4c 	L 
	ld a,(bc)			;81b5	0a 	. 
	ld b,e			;81b6	43 	C 
	ld b,e			;81b7	43 	C 
	ld b,d			;81b8	42 	B 
	ld b,e			;81b9	43 	C 
	ld b,e			;81ba	43 	C 
	ld b,e			;81bb	43 	C 
	ld b,d			;81bc	42 	B 
	ld a,(bc)			;81bd	0a 	. 
	ld l,h			;81be	6c 	l 
	ld l,h			;81bf	6c 	l 
	ld l,h			;81c0	6c 	l 
	ld l,h			;81c1	6c 	l 
	ld l,h			;81c2	6c 	l 
	ld l,h			;81c3	6c 	l 
	ld l,h			;81c4	6c 	l 
	ld a,(bc)			;81c5	0a 	. 
	ld l,e			;81c6	6b 	k 
	ld l,e			;81c7	6b 	k 
	ld l,e			;81c8	6b 	k 
	ld l,e			;81c9	6b 	k 
	ld l,e			;81ca	6b 	k 
	ld l,e			;81cb	6b 	k 
	ld l,e			;81cc	6b 	k 
	ld a,(bc)			;81cd	0a 	. 
	nop			;81ce	00 	. 
	nop			;81cf	00 	. 
	nop			;81d0	00 	. 
	inc e			;81d1	1c 	. 
	dec e			;81d2	1d 	. 
	nop			;81d3	00 	. 
	ld bc,00106h		;81d4	01 06 01 	. . . 
	ld bc,01000h		;81d7	01 00 10 	. . . 
	djnz $+3		;81da	10 01 	. . 
	sbc a,l			;81dc	9d 	. 
	inc b			;81dd	04 	. 
	inc bc			;81de	03 	. 
	ld (bc),a			;81df	02 	. 
	ld bc,00101h		;81e0	01 01 01 	. . . 
	sbc a,l			;81e3	9d 	. 
	ld (bc),a			;81e4	02 	. 
	inc b			;81e5	04 	. 
	inc bc			;81e6	03 	. 
	ld (bc),a			;81e7	02 	. 
	ld c,002h		;81e8	0e 02 	. . 
	djnz $+18		;81ea	10 10 	. . 
	ld a,(bc)			;81ec	0a 	. 
	ld a,(bc)			;81ed	0a 	. 
	ld (bc),a			;81ee	02 	. 
	ld (bc),a			;81ef	02 	. 
	ld (bc),a			;81f0	02 	. 
	sbc a,l			;81f1	9d 	. 
	ld bc,00a01h		;81f2	01 01 0a 	. . . 
	ld a,(bc)			;81f5	0a 	. 
	dec b			;81f6	05 	. 
	ld bc,00001h		;81f7	01 01 00 	. . . 
	ld bc,00000h		;81fa	01 00 00 	. . . 
	nop			;81fd	00 	. 
	inc bc			;81fe	03 	. 
	ld (bc),a			;81ff	02 	. 
	sbc a,l			;8200	9d 	. 
	inc de			;8201	13 	. 
	inc d			;8202	14 	. 
	ld bc,00101h		;8203	01 01 01 	. . . 
	ld a,(bc)			;8206	0a 	. 
	ld a,(bc)			;8207	0a 	. 
	ld a,(bc)			;8208	0a 	. 
	ld de,00a12h		;8209	11 12 0a 	. . . 
	ld a,(bc)			;820c	0a 	. 
	ld a,(bc)			;820d	0a 	. 
	ld a,(bc)			;820e	0a 	. 
	ld a,(bc)			;820f	0a 	. 
	ld a,(bc)			;8210	0a 	. 
	ld de,00a12h		;8211	11 12 0a 	. . . 
	ld a,(bc)			;8214	0a 	. 
	ld a,(bc)			;8215	0a 	. 
	ld a,(bc)			;8216	0a 	. 
	ld a,(bc)			;8217	0a 	. 
	ld a,(bc)			;8218	0a 	. 
	ld de,00a12h		;8219	11 12 0a 	. . . 
	ld (bc),a			;821c	02 	. 
	ld (bc),a			;821d	02 	. 
	rlca			;821e	07 	. 
	ccf			;821f	3f 	? 
	ld bc,00000h		;8220	01 00 00 	. . . 
	nop			;8223	00 	. 
	ld d,006h		;8224	16 06 	. . 
	dec b			;8226	05 	. 
	ld (bc),a			;8227	02 	. 
	djnz $+2		;8228	10 00 	. . 
	nop			;822a	00 	. 
	ld bc,00f02h		;822b	01 02 0f 	. . . 
	add hl,bc			;822e	09 	. 
	dec d			;822f	15 	. 
	ld bc,00000h		;8230	01 00 00 	. . . 
	add hl,de			;8233	19 	. 
	sbc a,l			;8234	9d 	. 
	ld b,005h		;8235	06 05 	. . 
	jr $-97		;8237	18 9d 	. . 
	nop			;8239	00 	. 
	nop			;823a	00 	. 
	rla			;823b	17 	. 
	djnz $+17		;823c	10 0f 	. . 
	add hl,bc			;823e	09 	. 
	ld (bc),a			;823f	02 	. 
	ld (bc),a			;8240	02 	. 
	ld bc,01601h		;8241	01 01 16 	. . . 
	ld bc,00506h		;8244	01 06 05 	. . . 
	ld bc,01a01h		;8247	01 01 1a 	. . . 
	ld bc,00000h		;824a	01 00 00 	. . . 
	ld bc,00e03h		;824d	01 03 0e 	. . . 
	ld (bc),a			;8250	02 	. 
	ld (bc),a			;8251	02 	. 
	sbc a,l			;8252	9d 	. 
	nop			;8253	00 	. 
	nop			;8254	00 	. 
	ld a,(bc)			;8255	0a 	. 
	inc bc			;8256	03 	. 
	ld (bc),a			;8257	02 	. 
	sbc a,l			;8258	9d 	. 
	ld (bc),a			;8259	02 	. 
	ld c,001h		;825a	0e 01 	. . 
	ld bc,0030ah		;825c	01 0a 03 	. . . 
	ld (bc),a			;825f	02 	. 
	ld c,002h		;8260	0e 02 	. . 
	ld (bc),a			;8262	02 	. 
	dec c			;8263	0d 	. 
	ld (bc),a			;8264	02 	. 
	ld a,(bc)			;8265	0a 	. 
	inc bc			;8266	03 	. 
	sbc a,l			;8267	9d 	. 
	ld (bc),a			;8268	02 	. 
	dec c			;8269	0d 	. 
	djnz $+18		;826a	10 10 	. . 
	ld c,002h		;826c	0e 02 	. . 
	ld bc,00000h		;826e	01 00 00 	. . . 
	ld bc,00001h		;8271	01 01 00 	. . . 
	ld bc,00a0ah		;8274	01 0a 0a 	. . . 
	ld bc,01000h		;8277	01 00 10 	. . . 
	djnz $+2		;827a	10 00 	. . 
	dec de			;827c	1b 	. 
	ld a,(bc)			;827d	0a 	. 
	ld a,(bc)			;827e	0a 	. 
	djnz $+2		;827f	10 00 	. . 
	nop			;8281	00 	. 
	ld bc,01a01h		;8282	01 01 1a 	. . . 
	inc b			;8285	04 	. 
	ld a,(bc)			;8286	0a 	. 
	ld bc,00101h		;8287	01 01 01 	. . . 
	xor e			;828a	ab 	. 
	sbc a,l			;828b	9d 	. 
	ld (bc),a			;828c	02 	. 
	rrca			;828d	0f 	. 
	ld (bc),a			;828e	02 	. 
	ld (bc),a			;828f	02 	. 
	sbc a,l			;8290	9d 	. 
	ld (bc),a			;8291	02 	. 
	sbc a,l			;8292	9d 	. 
	ld (bc),a			;8293	02 	. 
	ld (bc),a			;8294	02 	. 
	ld b,005h		;8295	06 05 	. . 
	ld a,(de)			;8297	1a 	. 
	ld bc,00101h		;8298	01 01 01 	. . . 
	ld bc,00601h		;829b	01 01 06 	. . . 
	ld a,(bc)			;829e	0a 	. 
	ld a,(bc)			;829f	0a 	. 
	ld a,(bc)			;82a0	0a 	. 
	dec bc			;82a1	0b 	. 
	inc c			;82a2	0c 	. 
	ld a,(bc)			;82a3	0a 	. 
	ld a,(bc)			;82a4	0a 	. 
	ld a,(bc)			;82a5	0a 	. 
	ld a,(bc)			;82a6	0a 	. 
	ld a,(bc)			;82a7	0a 	. 
	ld a,(bc)			;82a8	0a 	. 
	dec bc			;82a9	0b 	. 
	inc c			;82aa	0c 	. 
	ld a,(bc)			;82ab	0a 	. 
	ld a,(bc)			;82ac	0a 	. 
	ld a,(bc)			;82ad	0a 	. 
	ld a,(bc)			;82ae	0a 	. 
	ld a,(bc)			;82af	0a 	. 
	ld a,(bc)			;82b0	0a 	. 
	dec bc			;82b1	0b 	. 
	inc c			;82b2	0c 	. 
	ld a,(bc)			;82b3	0a 	. 
	ld a,(bc)			;82b4	0a 	. 
	ld a,(bc)			;82b5	0a 	. 
	ld a,(bc)			;82b6	0a 	. 
	ld a,(bc)			;82b7	0a 	. 
	ld a,(bc)			;82b8	0a 	. 
	dec bc			;82b9	0b 	. 
	inc c			;82ba	0c 	. 
	ld a,(bc)			;82bb	0a 	. 
	ld a,(bc)			;82bc	0a 	. 
	ld a,(bc)			;82bd	0a 	. 
	dec b			;82be	05 	. 
	ld bc,01c01h		;82bf	01 01 1c 	. . . 
	dec e			;82c2	1d 	. 
	ld bc,00801h		;82c3	01 01 08 	. . . 
	add hl,bc			;82c6	09 	. 
	ld (bc),a			;82c7	02 	. 
	sbc a,l			;82c8	9d 	. 
	ld (bc),a			;82c9	02 	. 
	ld (bc),a			;82ca	02 	. 
	sbc a,l			;82cb	9d 	. 
	ld (bc),a			;82cc	02 	. 
	ld b,005h		;82cd	06 05 	. . 
	ld (bc),a			;82cf	02 	. 
	ld (bc),a			;82d0	02 	. 
	sbc a,l			;82d1	9d 	. 
	ld (bc),a			;82d2	02 	. 
	ld (bc),a			;82d3	02 	. 
	sbc a,l			;82d4	9d 	. 
	rrca			;82d5	0f 	. 
	add hl,bc			;82d6	09 	. 
	ld (bc),a			;82d7	02 	. 
	sbc a,l			;82d8	9d 	. 
	ld (bc),a			;82d9	02 	. 
	ld (bc),a			;82da	02 	. 
	sbc a,l			;82db	9d 	. 
	ld (bc),a			;82dc	02 	. 
	ld b,005h		;82dd	06 05 	. . 
	ld (bc),a			;82df	02 	. 
	ld (bc),a			;82e0	02 	. 
	ld (bc),a			;82e1	02 	. 
	sbc a,l			;82e2	9d 	. 
	djnz $+29		;82e3	10 1b 	. . 
	rrca			;82e5	0f 	. 
	ld bc,00101h		;82e6	01 01 01 	. . . 
	ld bc,00101h		;82e9	01 01 01 	. . . 
	ld a,(de)			;82ec	1a 	. 
	ld bc,00a0ah		;82ed	01 0a 0a 	. . . 
	ld a,(bc)			;82f0	0a 	. 
	ld a,(bc)			;82f1	0a 	. 
	ld a,(bc)			;82f2	0a 	. 
	ld a,(bc)			;82f3	0a 	. 
	ld a,(bc)			;82f4	0a 	. 
	ld a,(bc)			;82f5	0a 	. 
	ld a,(bc)			;82f6	0a 	. 
	ld a,(bc)			;82f7	0a 	. 
	ld a,(bc)			;82f8	0a 	. 
	ld a,(bc)			;82f9	0a 	. 
	ld a,(bc)			;82fa	0a 	. 
	ld a,(bc)			;82fb	0a 	. 
	ld a,(bc)			;82fc	0a 	. 
	ld a,(bc)			;82fd	0a 	. 
	ld a,(bc)			;82fe	0a 	. 
	ld a,(bc)			;82ff	0a 	. 
	ld a,(bc)			;8300	0a 	. 
	ld a,(bc)			;8301	0a 	. 
	ld a,(bc)			;8302	0a 	. 
	ld a,(bc)			;8303	0a 	. 
	ld a,(bc)			;8304	0a 	. 
	ld a,(bc)			;8305	0a 	. 
	ld (bc),a			;8306	02 	. 
	sbc a,l			;8307	9d 	. 
	ld (bc),a			;8308	02 	. 
	ld (bc),a			;8309	02 	. 
	sbc a,l			;830a	9d 	. 
	ld (bc),a			;830b	02 	. 
	ld (bc),a			;830c	02 	. 
	sbc a,l			;830d	9d 	. 
	ld a,(bc)			;830e	0a 	. 
	ld a,(bc)			;830f	0a 	. 
	nop			;8310	00 	. 
	nop			;8311	00 	. 
	ld bc,00001h		;8312	01 01 00 	. . . 
	ld bc,01009h		;8315	01 09 10 	. . . 
	nop			;8318	00 	. 
	nop			;8319	00 	. 
	djnz $+18		;831a	10 10 	. . 
	nop			;831c	00 	. 
	rrca			;831d	0f 	. 
	dec b			;831e	05 	. 
	ld bc,00000h		;831f	01 00 00 	. . . 
	nop			;8322	00 	. 
	nop			;8323	00 	. 
	nop			;8324	00 	. 
	ex af,af'			;8325	08 	. 
	add hl,bc			;8326	09 	. 
	dec de			;8327	1b 	. 
	ld bc,00a01h		;8328	01 01 0a 	. . . 
	ld a,(bc)			;832b	0a 	. 
	ld a,(bc)			;832c	0a 	. 
	ld a,(bc)			;832d	0a 	. 
	dec b			;832e	05 	. 
	ld a,(de)			;832f	1a 	. 
	ld (bc),a			;8330	02 	. 
	sbc a,l			;8331	9d 	. 
	ld (bc),a			;8332	02 	. 
	ld (bc),a			;8333	02 	. 
	sbc a,l			;8334	9d 	. 
	ld (bc),a			;8335	02 	. 
	ld bc,00101h		;8336	01 01 01 	. . . 
	ld bc,00101h		;8339	01 01 01 	. . . 
	ld bc,00306h		;833c	01 06 03 	. . . 
	sbc a,l			;833f	9d 	. 
	ld (bc),a			;8340	02 	. 
	xor e			;8341	ab 	. 
	djnz $+4		;8342	10 02 	. . 
	ld (bc),a			;8344	02 	. 
	inc b			;8345	04 	. 
	ld a,(bc)			;8346	0a 	. 
	djnz $-97		;8347	10 9d 	. . 
	ld (bc),a			;8349	02 	. 
	ld bc,00a0ah		;834a	01 0a 0a 	. . . 
	ld a,(bc)			;834d	0a 	. 
	ld a,(bc)			;834e	0a 	. 
	nop			;834f	00 	. 
	djnz $+45		;8350	10 2b 	. + 
	ld a,(bc)			;8352	0a 	. 
	ld a,(bc)			;8353	0a 	. 
	ld a,(bc)			;8354	0a 	. 
	ld a,(bc)			;8355	0a 	. 
	ld (bc),a			;8356	02 	. 
	ld bc,02a00h		;8357	01 00 2a 	. . * 
	ld (bc),a			;835a	02 	. 
	sbc a,l			;835b	9d 	. 
	ld (bc),a			;835c	02 	. 
	inc b			;835d	04 	. 
	ld a,(bc)			;835e	0a 	. 
	ld a,(bc)			;835f	0a 	. 
	nop			;8360	00 	. 
	ld a,(bc)			;8361	0a 	. 
	ld a,(bc)			;8362	0a 	. 
	ld hl,(00801h)		;8363	2a 01 08 	* . . 
	ld a,(bc)			;8366	0a 	. 
	ld a,(bc)			;8367	0a 	. 
	nop			;8368	00 	. 
	djnz $+18		;8369	10 10 	. . 
	ld (bc),a			;836b	02 	. 
	ld (bc),a			;836c	02 	. 
	ld b,00ah		;836d	06 0a 	. . 
	ld a,(bc)			;836f	0a 	. 
	nop			;8370	00 	. 
	ld bc,01001h		;8371	01 01 10 	. . . 
	ld (bc),a			;8374	02 	. 
	ld a,(bc)			;8375	0a 	. 
	ld a,(bc)			;8376	0a 	. 
	ld a,(bc)			;8377	0a 	. 
	nop			;8378	00 	. 
	inc hl			;8379	23 	# 
	inc h			;837a	24 	$ 
	nop			;837b	00 	. 
	djnz $+17		;837c	10 0f 	. . 
	ld a,(bc)			;837e	0a 	. 
	ld a,(bc)			;837f	0a 	. 
	nop			;8380	00 	. 
	inc e			;8381	1c 	. 
	dec e			;8382	1d 	. 
	ld bc,00601h		;8383	01 01 06 	. . . 
	ld bc,00101h		;8386	01 01 01 	. . . 
	ld bc,00600h		;8389	01 00 06 	. . . 
	rla			;838c	17 	. 
	ex af,af'			;838d	08 	. 
	ld a,(bc)			;838e	0a 	. 
	ld a,(bc)			;838f	0a 	. 
	ld a,(bc)			;8390	0a 	. 
	ld a,(bc)			;8391	0a 	. 
	ld e,00ah		;8392	1e 0a 	. . 
	rla			;8394	17 	. 
	ex af,af'			;8395	08 	. 
	ld a,(bc)			;8396	0a 	. 
	ld a,(bc)			;8397	0a 	. 
	ld (bc),a			;8398	02 	. 
	sbc a,l			;8399	9d 	. 
	ld b,00ah		;839a	06 0a 	. . 
	rla			;839c	17 	. 
	ex af,af'			;839d	08 	. 
	ld a,(bc)			;839e	0a 	. 
	ld a,(bc)			;839f	0a 	. 
	ld a,(bc)			;83a0	0a 	. 
	ld a,(bc)			;83a1	0a 	. 
	ld a,(bc)			;83a2	0a 	. 
	ld a,(bc)			;83a3	0a 	. 
	rla			;83a4	17 	. 
	ex af,af'			;83a5	08 	. 
	ld (bc),a			;83a6	02 	. 
	sbc a,l			;83a7	9d 	. 
	ld (bc),a			;83a8	02 	. 
	ld (bc),a			;83a9	02 	. 
	xor e			;83aa	ab 	. 
	ld (bc),a			;83ab	02 	. 
	ld d,006h		;83ac	16 06 	. . 
	ld bc,00000h		;83ae	01 00 00 	. . . 
	nop			;83b1	00 	. 
	nop			;83b2	00 	. 
	nop			;83b3	00 	. 
	nop			;83b4	00 	. 
	ld e,00ah		;83b5	1e 0a 	. . 
	nop			;83b7	00 	. 
	nop			;83b8	00 	. 
	nop			;83b9	00 	. 
	nop			;83ba	00 	. 
	nop			;83bb	00 	. 
	nop			;83bc	00 	. 
	ex af,af'			;83bd	08 	. 
	ld a,(bc)			;83be	0a 	. 
	nop			;83bf	00 	. 
	nop			;83c0	00 	. 
	nop			;83c1	00 	. 
	nop			;83c2	00 	. 
	nop			;83c3	00 	. 
	nop			;83c4	00 	. 
	ex af,af'			;83c5	08 	. 
	ld a,(bc)			;83c6	0a 	. 
	ld bc,00101h		;83c7	01 01 01 	. . . 
	ld bc,00101h		;83ca	01 01 01 	. . . 
	ld b,002h		;83cd	06 02 	. . 
	inc l			;83cf	2c 	, 
	ld (bc),a			;83d0	02 	. 
	sbc a,l			;83d1	9d 	. 
	ld (bc),a			;83d2	02 	. 
	sbc a,l			;83d3	9d 	. 
	ld (bc),a			;83d4	02 	. 
	sbc a,l			;83d5	9d 	. 
	ld a,(bc)			;83d6	0a 	. 
	nop			;83d7	00 	. 
	nop			;83d8	00 	. 
	inc e			;83d9	1c 	. 
	dec e			;83da	1d 	. 
	ld bc,01e3fh		;83db	01 3f 1e 	. ? . 
	ld a,(bc)			;83de	0a 	. 
	nop			;83df	00 	. 
	nop			;83e0	00 	. 
	djnz $+4		;83e1	10 02 	. . 
	djnz $+45		;83e3	10 2b 	. + 
	ex af,af'			;83e5	08 	. 
	ld a,(bc)			;83e6	0a 	. 
	nop			;83e7	00 	. 
	nop			;83e8	00 	. 
	ld bc,0000ah		;83e9	01 0a 00 	. . . 
	dec l			;83ec	2d 	- 
	ex af,af'			;83ed	08 	. 
	ld a,(bc)			;83ee	0a 	. 
	ld e,001h		;83ef	1e 01 	. . 
	ld a,(bc)			;83f1	0a 	. 
	ld a,(bc)			;83f2	0a 	. 
	ld bc,0062ah		;83f3	01 2a 06 	. * . 
	ld a,(bc)			;83f6	0a 	. 
	jr $+4		;83f7	18 02 	. . 
	ld (bc),a			;83f9	02 	. 
	ld (bc),a			;83fa	02 	. 
	sbc a,l			;83fb	9d 	. 
	ld (bc),a			;83fc	02 	. 
	ld (bc),a			;83fd	02 	. 
	ld h,020h		;83fe	26 20 	&   
	rla			;8400	17 	. 
	ld a,(bc)			;8401	0a 	. 
	ld a,(bc)			;8402	0a 	. 
	rlca			;8403	07 	. 
	rla			;8404	17 	. 
	ex af,af'			;8405	08 	. 
	rlca			;8406	07 	. 
	jr nz,$+25		;8407	20 17 	  . 
	djnz $-97		;8409	10 9d 	. . 
	dec h			;840b	25 	% 
	rla			;840c	17 	. 
	ex af,af'			;840d	08 	. 
	dec b			;840e	05 	. 
	ld a,(de)			;840f	1a 	. 
	rla			;8410	17 	. 
	nop			;8411	00 	. 
	djnz $+18		;8412	10 10 	. . 
	rla			;8414	17 	. 
	ex af,af'			;8415	08 	. 
	inc bc			;8416	03 	. 
	ld (bc),a			;8417	02 	. 
	ld d,001h		;8418	16 01 	. . 
	ld bc,01601h		;841a	01 01 16 	. . . 
	ld b,010h		;841d	06 10 	. . 
	djnz $+18		;841f	10 10 	. . 
	inc hl			;8421	23 	# 
	inc h			;8422	24 	$ 
	djnz $+18		;8423	10 10 	. . 
	djnz $+12		;8425	10 0a 	. . 
	ld bc,0001ah		;8427	01 1a 00 	. . . 
	nop			;842a	00 	. 
	nop			;842b	00 	. 
	ld bc,00901h		;842c	01 01 09 	. . . 
	djnz $+18		;842f	10 10 	. . 
	ld bc,00000h		;8431	01 00 00 	. . . 
	rra			;8434	1f 	. 
	rrca			;8435	0f 	. 
	dec b			;8436	05 	. 
	ld bc,00201h		;8437	01 01 02 	. . . 
	ld bc,01700h		;843a	01 00 17 	. . . 
	ex af,af'			;843d	08 	. 
	add hl,bc			;843e	09 	. 
	djnz $+18		;843f	10 10 	. . 
	djnz $+18		;8441	10 10 	. . 
	nop			;8443	00 	. 
	rla			;8444	17 	. 
	ex af,af'			;8445	08 	. 
	dec b			;8446	05 	. 
	ld bc,00101h		;8447	01 01 01 	. . . 
	ld bc,01601h		;844a	01 01 16 	. . . 
	ld b,001h		;844d	06 01 	. . 
	ld bc,00101h		;844f	01 01 01 	. . . 
	ld a,(bc)			;8452	0a 	. 
	ld h,017h		;8453	26 17 	& . 
	ex af,af'			;8455	08 	. 
	add hl,bc			;8456	09 	. 
	dec de			;8457	1b 	. 
	sbc a,l			;8458	9d 	. 
	ld (bc),a			;8459	02 	. 
	daa			;845a	27 	' 
	rlca			;845b	07 	. 
	rla			;845c	17 	. 
	ex af,af'			;845d	08 	. 
	rlca			;845e	07 	. 
	jr nz,$+4		;845f	20 02 	  . 
	ld (bc),a			;8461	02 	. 
	dec h			;8462	25 	% 
	rlca			;8463	07 	. 
	rla			;8464	17 	. 
	ex af,af'			;8465	08 	. 
	rlca			;8466	07 	. 
	jr nz,$+23		;8467	20 15 	  . 
	ld (bc),a			;8469	02 	. 
	sbc a,l			;846a	9d 	. 
	rlca			;846b	07 	. 
	rla			;846c	17 	. 
	ex af,af'			;846d	08 	. 
	rlca			;846e	07 	. 
	jr nz,$+25		;846f	20 17 	  . 
	ld (bc),a			;8471	02 	. 
	ld (bc),a			;8472	02 	. 
	rlca			;8473	07 	. 
	rla			;8474	17 	. 
	ex af,af'			;8475	08 	. 
	ld a,(bc)			;8476	0a 	. 
	ccf			;8477	3f 	? 
	ld bc,00a01h		;8478	01 01 0a 	. . . 
	nop			;847b	00 	. 
	nop			;847c	00 	. 
	ld e,00ah		;847d	1e 0a 	. . 
	rra			;847f	1f 	. 
	djnz $+27		;8480	10 19 	. . 
	daa			;8482	27 	' 
	ld e,001h		;8483	1e 01 	. . 
	ex af,af'			;8485	08 	. 
	ld a,(bc)			;8486	0a 	. 
	ld d,000h		;8487	16 00 	. . 
	ld b,005h		;8489	06 05 	. . 
	ld (hl),00eh		;848b	36 0e 	6 . 
	ld b,00ah		;848d	06 0a 	. . 
	djnz $+3		;848f	10 01 	. . 
	ld (bc),a			;8491	02 	. 
	ld (bc),a			;8492	02 	. 
	nop			;8493	00 	. 
	add hl,de			;8494	19 	. 
	inc b			;8495	04 	. 
	ld a,(bc)			;8496	0a 	. 
	ld bc,00e02h		;8497	01 02 0e 	. . . 
	djnz $+3		;849a	10 01 	. . 
	jr $+6		;849c	18 04 	. . 
	rlca			;849e	07 	. 
	ld bc,00101h		;849f	01 01 01 	. . . 
	ld bc,00101h		;84a2	01 01 01 	. . . 
	ld bc,0ab05h		;84a5	01 05 ab 	. . . 
	djnz $-97		;84a8	10 9d 	. . 
	ld (bc),a			;84aa	02 	. 
	djnz $+4		;84ab	10 02 	. . 
	ld (bc),a			;84ad	02 	. 
	ld a,(bc)			;84ae	0a 	. 
	ld a,(bc)			;84af	0a 	. 
	nop			;84b0	00 	. 
	djnz $+18		;84b1	10 10 	. . 
	nop			;84b3	00 	. 
	djnz $+18		;84b4	10 10 	. . 
	ld a,(bc)			;84b6	0a 	. 
	ld a,(bc)			;84b7	0a 	. 
	nop			;84b8	00 	. 
	ld bc,00001h		;84b9	01 01 00 	. . . 
	ld bc,00a01h		;84bc	01 01 0a 	. . . 
	ld a,(bc)			;84bf	0a 	. 
	ld bc,09d02h		;84c0	01 02 9d 	. . . 
	nop			;84c3	00 	. 
	rra			;84c4	1f 	. 
	rrca			;84c5	0f 	. 
	ld bc,00101h		;84c6	01 01 01 	. . . 
	ld bc,00101h		;84c9	01 01 01 	. . . 
	ld bc,00201h		;84cc	01 01 02 	. . . 
	sbc a,l			;84cf	9d 	. 
	ld (bc),a			;84d0	02 	. 
	ld (bc),a			;84d1	02 	. 
	sbc a,l			;84d2	9d 	. 
	ld (bc),a			;84d3	02 	. 
	ld (bc),a			;84d4	02 	. 
	sbc a,l			;84d5	9d 	. 
	djnz $+18		;84d6	10 10 	. . 
	sbc a,l			;84d8	9d 	. 
	ld (bc),a			;84d9	02 	. 
	ld (bc),a			;84da	02 	. 
	sbc a,l			;84db	9d 	. 
	ld (bc),a			;84dc	02 	. 
	inc b			;84dd	04 	. 
	ld bc,00201h		;84de	01 01 02 	. . . 
	sbc a,l			;84e1	9d 	. 
	ld (bc),a			;84e2	02 	. 
	ld (bc),a			;84e3	02 	. 
	djnz $+17		;84e4	10 0f 	. . 
	ld a,(bc)			;84e6	0a 	. 
	ld a,(bc)			;84e7	0a 	. 
	ld a,(bc)			;84e8	0a 	. 
	ld a,(bc)			;84e9	0a 	. 
	ld a,(bc)			;84ea	0a 	. 
	ld a,(bc)			;84eb	0a 	. 
	ld bc,00118h		;84ec	01 18 01 	. . . 
	ld bc,00101h		;84ef	01 01 01 	. . . 
	ld bc,00a0ah		;84f2	01 0a 0a 	. . . 
	ld a,(bc)			;84f5	0a 	. 
	sbc a,l			;84f6	9d 	. 
	ld (bc),a			;84f7	02 	. 
	ld (bc),a			;84f8	02 	. 
	sbc a,l			;84f9	9d 	. 
	ld (bc),a			;84fa	02 	. 
	ld (bc),a			;84fb	02 	. 
	sbc a,l			;84fc	9d 	. 
	ld (bc),a			;84fd	02 	. 
	ld a,(bc)			;84fe	0a 	. 
	ld a,(bc)			;84ff	0a 	. 
	ld a,(bc)			;8500	0a 	. 
	ld a,(bc)			;8501	0a 	. 
	ld a,(bc)			;8502	0a 	. 
	ld a,(bc)			;8503	0a 	. 
	ld a,(bc)			;8504	0a 	. 
	ld a,(bc)			;8505	0a 	. 
	ld a,(bc)			;8506	0a 	. 
	ld a,(bc)			;8507	0a 	. 
	ld a,(bc)			;8508	0a 	. 
	ld a,(bc)			;8509	0a 	. 
	ld a,(bc)			;850a	0a 	. 
	ld a,(bc)			;850b	0a 	. 
	ld a,(bc)			;850c	0a 	. 
	ld a,(bc)			;850d	0a 	. 
	sbc a,l			;850e	9d 	. 
	ld (bc),a			;850f	02 	. 
	ld (bc),a			;8510	02 	. 
	sbc a,l			;8511	9d 	. 
	xor e			;8512	ab 	. 
	ld (bc),a			;8513	02 	. 
	sbc a,l			;8514	9d 	. 
	ld (bc),a			;8515	02 	. 
	dec b			;8516	05 	. 
	ld hl,(00100h)		;8517	2a 00 01 	* . . 
	nop			;851a	00 	. 
	ld bc,0063fh		;851b	01 3f 06 	. ? . 
	ld (bc),a			;851e	02 	. 
	sbc a,l			;851f	9d 	. 
	ld bc,0010ah		;8520	01 0a 01 	. . . 
	ld (bc),a			;8523	02 	. 
	sbc a,l			;8524	9d 	. 
	rrca			;8525	0f 	. 
	add hl,bc			;8526	09 	. 
	djnz $+4		;8527	10 02 	. . 
	djnz $+4		;8529	10 02 	. . 
	ld (bc),a			;852b	02 	. 
	ld (bc),a			;852c	02 	. 
	ld b,007h		;852d	06 07 	. . 
	nop			;852f	00 	. 
	ld a,(bc)			;8530	0a 	. 
	ld bc,0029dh		;8531	01 9d 02 	. . . 
	ld (bc),a			;8534	02 	. 
	rrca			;8535	0f 	. 
	dec h			;8536	25 	% 
	ld bc,0029dh		;8537	01 9d 02 	. . . 
	ld (bc),a			;853a	02 	. 
	sbc a,l			;853b	9d 	. 
	ld (bc),a			;853c	02 	. 
	ld b,007h		;853d	06 07 	. . 
	nop			;853f	00 	. 
	nop			;8540	00 	. 
	nop			;8541	00 	. 
	nop			;8542	00 	. 
	nop			;8543	00 	. 
	ld a,(bc)			;8544	0a 	. 
	ld a,(bc)			;8545	0a 	. 
	rlca			;8546	07 	. 
	nop			;8547	00 	. 
	nop			;8548	00 	. 
	nop			;8549	00 	. 
	nop			;854a	00 	. 
	nop			;854b	00 	. 
	ld a,(bc)			;854c	0a 	. 
	ld a,(bc)			;854d	0a 	. 
	dec h			;854e	25 	% 
	ld bc,00100h		;854f	01 00 01 	. . . 
	ld bc,00a01h		;8552	01 01 0a 	. . . 
	ld a,(bc)			;8555	0a 	. 
	add hl,bc			;8556	09 	. 
	djnz $+32		;8557	10 1e 	. . 
	daa			;8559	27 	' 
	djnz $+18		;855a	10 10 	. . 
	ld a,(bc)			;855c	0a 	. 
	ld a,(bc)			;855d	0a 	. 
	cpl			;855e	2f 	/ 
	jr nc,$+50		;855f	30 30 	0 0 
	jr nc,$+50		;8561	30 30 	0 0 
	jr nc,$+12		;8563	30 0a 	0 . 
	ld a,(bc)			;8565	0a 	. 
	dec b			;8566	05 	. 
	ld bc,00101h		;8567	01 01 01 	. . . 
	ccf			;856a	3f 	? 
	ld bc,00601h		;856b	01 01 06 	. . . 
	inc bc			;856e	03 	. 
	inc l			;856f	2c 	, 
	djnz $+18		;8570	10 10 	. . 
	ld (bc),a			;8572	02 	. 
	djnz $+18		;8573	10 10 	. . 
	ld c,009h		;8575	0e 09 	. . 
	sbc a,l			;8577	9d 	. 
	ld bc,09d01h		;8578	01 01 9d 	. . . 
	nop			;857b	00 	. 
	nop			;857c	00 	. 
	ld a,(bc)			;857d	0a 	. 
	dec b			;857e	05 	. 
	ld (bc),a			;857f	02 	. 
	ld (bc),a			;8580	02 	. 
	djnz $+18		;8581	10 10 	. . 
	nop			;8583	00 	. 
	ld bc,0030ah		;8584	01 0a 03 	. . . 
	inc l			;8587	2c 	, 
	djnz $+2		;8588	10 00 	. . 
	nop			;858a	00 	. 
	ld bc,00a9dh		;858b	01 9d 0a 	. . . 
	ld a,(bc)			;858e	0a 	. 
	ld a,(bc)			;858f	0a 	. 
	ld a,(bc)			;8590	0a 	. 
	ld a,(bc)			;8591	0a 	. 
	ld a,(bc)			;8592	0a 	. 
	ld a,(bc)			;8593	0a 	. 
	ld a,(bc)			;8594	0a 	. 
	ld a,(bc)			;8595	0a 	. 
	ld (bc),a			;8596	02 	. 
	sbc a,l			;8597	9d 	. 
	djnz $+18		;8598	10 10 	. . 
	djnz $+18		;859a	10 10 	. . 
	sbc a,l			;859c	9d 	. 
	ld (bc),a			;859d	02 	. 
	ld a,(bc)			;859e	0a 	. 
	ld a,(bc)			;859f	0a 	. 
	nop			;85a0	00 	. 
	nop			;85a1	00 	. 
	nop			;85a2	00 	. 
	nop			;85a3	00 	. 
	ld a,(bc)			;85a4	0a 	. 
	ld a,(bc)			;85a5	0a 	. 
	ld a,(bc)			;85a6	0a 	. 
	ld a,(bc)			;85a7	0a 	. 
	nop			;85a8	00 	. 
	nop			;85a9	00 	. 
	nop			;85aa	00 	. 
	nop			;85ab	00 	. 
	ld a,(bc)			;85ac	0a 	. 
	ld a,(bc)			;85ad	0a 	. 
	ld a,(bc)			;85ae	0a 	. 
	ld a,(bc)			;85af	0a 	. 
	jr nc,$+50		;85b0	30 30 	0 0 
	jr nc,$+50		;85b2	30 30 	0 0 
	ld a,(bc)			;85b4	0a 	. 
	ld a,(bc)			;85b5	0a 	. 
	ld a,(bc)			;85b6	0a 	. 
	ld a,(bc)			;85b7	0a 	. 
	ld a,(bc)			;85b8	0a 	. 
	ld bc,0013fh		;85b9	01 3f 01 	. ? . 
	ld bc,00201h		;85bc	01 01 02 	. . . 
	djnz $+18		;85bf	10 10 	. . 
	ld c,09dh		;85c1	0e 9d 	. . 
	ld (bc),a			;85c3	02 	. 
	ld (bc),a			;85c4	02 	. 
	ld (bc),a			;85c5	02 	. 
	ld a,(bc)			;85c6	0a 	. 
	ld bc,00e00h		;85c7	01 00 0e 	. . . 
	ld (bc),a			;85ca	02 	. 
	ld (bc),a			;85cb	02 	. 
	ld (bc),a			;85cc	02 	. 
	ld (bc),a			;85cd	02 	. 
	ld a,(bc)			;85ce	0a 	. 
	djnz $+2		;85cf	10 00 	. . 
	ld c,09dh		;85d1	0e 9d 	. . 
	ld (bc),a			;85d3	02 	. 
	ld (bc),a			;85d4	02 	. 
	ld (bc),a			;85d5	02 	. 
	ld a,(bc)			;85d6	0a 	. 
	ld bc,00e01h		;85d7	01 01 0e 	. . . 
	ld (bc),a			;85da	02 	. 
	ld (bc),a			;85db	02 	. 
	ld (bc),a			;85dc	02 	. 
	ld (bc),a			;85dd	02 	. 
	ld bc,00101h		;85de	01 01 01 	. . . 
	ld bc,02a01h		;85e1	01 01 2a 	. . * 
	ld bc,00206h		;85e4	01 06 02 	. . . 
	sbc a,l			;85e7	9d 	. 
	ld (bc),a			;85e8	02 	. 
	ld (bc),a			;85e9	02 	. 
	sbc a,l			;85ea	9d 	. 
	ld (bc),a			;85eb	02 	. 
	ld (bc),a			;85ec	02 	. 
	inc b			;85ed	04 	. 
	sbc a,l			;85ee	9d 	. 
	ld (bc),a			;85ef	02 	. 
	ld (bc),a			;85f0	02 	. 
	sbc a,l			;85f1	9d 	. 
	ld (bc),a			;85f2	02 	. 
	ld (bc),a			;85f3	02 	. 
	sbc a,l			;85f4	9d 	. 
	ld (bc),a			;85f5	02 	. 
	ld (bc),a			;85f6	02 	. 
	sbc a,l			;85f7	9d 	. 
	ld (bc),a			;85f8	02 	. 
	ld (bc),a			;85f9	02 	. 
	sbc a,l			;85fa	9d 	. 
	ld (bc),a			;85fb	02 	. 
	ld (bc),a			;85fc	02 	. 
	inc b			;85fd	04 	. 
	ld (bc),a			;85fe	02 	. 
	ld (bc),a			;85ff	02 	. 
	sbc a,l			;8600	9d 	. 
	ld (bc),a			;8601	02 	. 
	xor e			;8602	ab 	. 
	sbc a,l			;8603	9d 	. 
	ld (bc),a			;8604	02 	. 
	inc b			;8605	04 	. 
	dec b			;8606	05 	. 
	ld bc,00101h		;8607	01 01 01 	. . . 
	ld bc,00101h		;860a	01 01 01 	. . . 
	ld b,003h		;860d	06 03 	. . 
	ld (bc),a			;860f	02 	. 
	sbc a,l			;8610	9d 	. 
	ld (bc),a			;8611	02 	. 
	ld (bc),a			;8612	02 	. 
	sbc a,l			;8613	9d 	. 
	ld (bc),a			;8614	02 	. 
	inc b			;8615	04 	. 
	inc bc			;8616	03 	. 
	ld c,002h		;8617	0e 02 	. . 
	sbc a,l			;8619	9d 	. 
	ld (bc),a			;861a	02 	. 
	ld (bc),a			;861b	02 	. 
	ld (bc),a			;861c	02 	. 
	inc b			;861d	04 	. 
	inc bc			;861e	03 	. 
	ld (bc),a			;861f	02 	. 
	sbc a,l			;8620	9d 	. 
	ld (bc),a			;8621	02 	. 
	ld (bc),a			;8622	02 	. 
	sbc a,l			;8623	9d 	. 
	dec c			;8624	0d 	. 
	inc b			;8625	04 	. 
	inc bc			;8626	03 	. 
	ld c,002h		;8627	0e 02 	. . 
	sbc a,l			;8629	9d 	. 
	djnz $+4		;862a	10 02 	. . 
	ld (bc),a			;862c	02 	. 
	inc b			;862d	04 	. 
	dec b			;862e	05 	. 
	ld bc,01c00h		;862f	01 00 1c 	. . . 
	dec e			;8632	1d 	. 
	ld a,(bc)			;8633	0a 	. 
	ex af,af'			;8634	08 	. 
	ld a,(bc)			;8635	0a 	. 
	add hl,bc			;8636	09 	. 
	djnz $+3		;8637	10 01 	. . 
	ld a,(bc)			;8639	0a 	. 
	ld a,(bc)			;863a	0a 	. 
	ld a,(bc)			;863b	0a 	. 
	ex af,af'			;863c	08 	. 
	ld a,(bc)			;863d	0a 	. 
	rlca			;863e	07 	. 
	ld e,00ah		;863f	1e 0a 	. . 
	ld a,(bc)			;8641	0a 	. 
	ld a,(bc)			;8642	0a 	. 
	ld a,(bc)			;8643	0a 	. 
	ex af,af'			;8644	08 	. 
	ld a,(bc)			;8645	0a 	. 
	dec b			;8646	05 	. 
	jr $-97		;8647	18 9d 	. . 
	ld (bc),a			;8649	02 	. 
	ld (bc),a			;864a	02 	. 
	sbc a,l			;864b	9d 	. 
	ld b,00ah		;864c	06 0a 	. . 
	djnz $+18		;864e	10 10 	. . 
	djnz $+37		;8650	10 23 	. # 
	inc h			;8652	24 	$ 
	djnz $+18		;8653	10 10 	. . 
	djnz $+7		;8655	10 05 	. . 
	ld d,001h		;8657	16 01 	. . 
	ld bc,0003fh		;8659	01 3f 00 	. ? . 
	ex af,af'			;865c	08 	. 
	ld a,(bc)			;865d	0a 	. 
	add hl,bc			;865e	09 	. 
	sbc a,l			;865f	9d 	. 
	djnz $+18		;8660	10 10 	. . 
	djnz $+3		;8662	10 01 	. . 
	ex af,af'			;8664	08 	. 
	ld a,(bc)			;8665	0a 	. 
	rlca			;8666	07 	. 
	djnz $+2		;8667	10 00 	. . 
	ld bc,01000h		;8669	01 00 10 	. . . 
	ex af,af'			;866c	08 	. 
	ld a,(bc)			;866d	0a 	. 
	rlca			;866e	07 	. 
	ld bc,01000h		;866f	01 00 10 	. . . 
	nop			;8672	00 	. 
	ld bc,00a08h		;8673	01 08 0a 	. . . 
	dec b			;8676	05 	. 
	sbc a,l			;8677	9d 	. 
	ld bc,00101h		;8678	01 01 01 	. . . 
	sbc a,l			;867b	9d 	. 
	ex af,af'			;867c	08 	. 
	ld a,(bc)			;867d	0a 	. 
	ld h,000h		;867e	26 00 	& . 
	nop			;8680	00 	. 
	ld bc,03f01h		;8681	01 01 3f 	. . ? 
	ld bc,00701h		;8684	01 01 07 	. . . 
	nop			;8687	00 	. 
	nop			;8688	00 	. 
	sbc a,l			;8689	9d 	. 
	ld (bc),a			;868a	02 	. 
	ld (bc),a			;868b	02 	. 
	sbc a,l			;868c	9d 	. 
	ld (bc),a			;868d	02 	. 
	rlca			;868e	07 	. 
	ld e,001h		;868f	1e 01 	. . 
	ld (bc),a			;8691	02 	. 
	sbc a,l			;8692	9d 	. 
	ld (bc),a			;8693	02 	. 
	djnz $+17		;8694	10 0f 	. . 
	rlca			;8696	07 	. 
	ex af,af'			;8697	08 	. 
	djnz $-97		;8698	10 9d 	. . 
	ld (bc),a			;869a	02 	. 
	ld (bc),a			;869b	02 	. 
	ld bc,02506h		;869c	01 06 25 	. . % 
	ld b,001h		;869f	06 01 	. . 
	ld (bc),a			;86a1	02 	. 
	ld (bc),a			;86a2	02 	. 
	ld (bc),a			;86a3	02 	. 
	sbc a,l			;86a4	9d 	. 
	ld (bc),a			;86a5	02 	. 
	dec b			;86a6	05 	. 
	ld bc,01c01h		;86a7	01 01 1c 	. . . 
	dec e			;86aa	1d 	. 
	ld bc,00101h		;86ab	01 01 01 	. . . 
	add hl,bc			;86ae	09 	. 
	sbc a,l			;86af	9d 	. 
	ld (bc),a			;86b0	02 	. 
	inc sp			;86b1	33 	3 
	jr z,$+4		;86b2	28 02 	( . 
	sbc a,l			;86b4	9d 	. 
	ld a,(bc)			;86b5	0a 	. 
	dec b			;86b6	05 	. 
	ld (bc),a			;86b7	02 	. 
	djnz $+37		;86b8	10 23 	. # 
	inc c			;86ba	0c 	. 
	ld a,(bc)			;86bb	0a 	. 
	ld a,(bc)			;86bc	0a 	. 
	ld a,(bc)			;86bd	0a 	. 
	ld a,(bc)			;86be	0a 	. 
	ld a,(bc)			;86bf	0a 	. 
	ld bc,0281ch		;86c0	01 1c 28 	. . ( 
	sbc a,l			;86c3	9d 	. 
	ld (bc),a			;86c4	02 	. 
	ld a,(bc)			;86c5	0a 	. 
	ld a,(bc)			;86c6	0a 	. 
	ld a,(bc)			;86c7	0a 	. 
	ld (bc),a			;86c8	02 	. 
	add hl,hl			;86c9	29 	) 
	jr z,$+4		;86ca	28 02 	( . 
	ld (bc),a			;86cc	02 	. 
	sbc a,l			;86cd	9d 	. 
	ld a,(bc)			;86ce	0a 	. 
	ld a,(bc)			;86cf	0a 	. 
	ld a,(bc)			;86d0	0a 	. 
	ld a,(bc)			;86d1	0a 	. 
	ld a,(bc)			;86d2	0a 	. 
	ld a,(bc)			;86d3	0a 	. 
	ld a,(bc)			;86d4	0a 	. 
	ld a,(bc)			;86d5	0a 	. 
	ld a,(bc)			;86d6	0a 	. 
	ld a,(bc)			;86d7	0a 	. 
	ld a,(bc)			;86d8	0a 	. 
	ld a,(bc)			;86d9	0a 	. 
	ld a,(bc)			;86da	0a 	. 
	ld a,(bc)			;86db	0a 	. 
	ld a,(bc)			;86dc	0a 	. 
	ld a,(bc)			;86dd	0a 	. 
	ld a,(bc)			;86de	0a 	. 
	ld a,(bc)			;86df	0a 	. 
	ld a,(bc)			;86e0	0a 	. 
	ld a,(bc)			;86e1	0a 	. 
	ld a,(bc)			;86e2	0a 	. 
	ld a,(bc)			;86e3	0a 	. 
	ld a,(bc)			;86e4	0a 	. 
	ld a,(bc)			;86e5	0a 	. 
	sbc a,l			;86e6	9d 	. 
	djnz $+18		;86e7	10 10 	. . 
	djnz $+18		;86e9	10 10 	. . 
	djnz $+18		;86eb	10 10 	. . 
	sbc a,l			;86ed	9d 	. 
	ld a,(bc)			;86ee	0a 	. 
	jr nc,$+50		;86ef	30 30 	0 0 
	jr nc,$+50		;86f1	30 30 	0 0 
	jr nc,$+50		;86f3	30 30 	0 0 
	ld a,(bc)			;86f5	0a 	. 
	ld a,(bc)			;86f6	0a 	. 
	ld a,(bc)			;86f7	0a 	. 
	ld bc,00101h		;86f8	01 01 01 	. . . 
	ld bc,00601h		;86fb	01 01 06 	. . . 
	inc bc			;86fe	03 	. 
	ld (bc),a			;86ff	02 	. 
	ld a,(bc)			;8700	0a 	. 
	ld a,(bc)			;8701	0a 	. 
	ld a,(bc)			;8702	0a 	. 
	ld a,(bc)			;8703	0a 	. 
	ld c,004h		;8704	0e 04 	. . 
	ld e,e			;8706	5b 	[ 
	ld (bc),a			;8707	02 	. 
	sbc a,l			;8708	9d 	. 
	ld (bc),a			;8709	02 	. 
	ld (bc),a			;870a	02 	. 
	sbc a,l			;870b	9d 	. 
	ld (bc),a			;870c	02 	. 
	ld e,c			;870d	59 	Y 
	ld (bc),a			;870e	02 	. 
	dec c			;870f	0d 	. 
	ld a,(bc)			;8710	0a 	. 
	ld a,(bc)			;8711	0a 	. 
	ld (bc),a			;8712	02 	. 
	dec c			;8713	0d 	. 
	ld a,(bc)			;8714	0a 	. 
	ld a,(bc)			;8715	0a 	. 
	ld a,(bc)			;8716	0a 	. 
	ld a,(bc)			;8717	0a 	. 
	ld (bc),a			;8718	02 	. 
	sbc a,l			;8719	9d 	. 
	ld c,0abh		;871a	0e ab 	. . 
	ld a,(bc)			;871c	0a 	. 
	ld a,(bc)			;871d	0a 	. 
	ld bc,00000h		;871e	01 00 00 	. . . 
	inc e			;8721	1c 	. 
	dec e			;8722	1d 	. 
	ld bc,00a08h		;8723	01 08 0a 	. . . 
	sbc a,l			;8726	9d 	. 
	ld bc,00a00h		;8727	01 00 0a 	. . . 
	djnz $+18		;872a	10 10 	. . 
	ex af,af'			;872c	08 	. 
	ld a,(bc)			;872d	0a 	. 
	inc bc			;872e	03 	. 
	sbc a,l			;872f	9d 	. 
	ld h,010h		;8730	26 10 	& . 
	ld bc,00801h		;8732	01 01 08 	. . . 
	ld a,(bc)			;8735	0a 	. 
	ld a,(bc)			;8736	0a 	. 
	ld a,(bc)			;8737	0a 	. 
	dec b			;8738	05 	. 
	ld bc,0ab9dh		;8739	01 9d ab 	. . . 
	inc (hl)			;873c	34 	4 
	sbc a,l			;873d	9d 	. 
	sbc a,l			;873e	9d 	. 
	ld (bc),a			;873f	02 	. 
	ld a,(bc)			;8740	0a 	. 
	ld a,(bc)			;8741	0a 	. 
	ld a,(bc)			;8742	0a 	. 
	ld a,(bc)			;8743	0a 	. 
	ex af,af'			;8744	08 	. 
	ld a,(bc)			;8745	0a 	. 
	ld a,(bc)			;8746	0a 	. 
	ld a,(bc)			;8747	0a 	. 
	ld a,(bc)			;8748	0a 	. 
	dec bc			;8749	0b 	. 
	inc c			;874a	0c 	. 
	ld a,(bc)			;874b	0a 	. 
	ex af,af'			;874c	08 	. 
	ld a,(bc)			;874d	0a 	. 
	ld a,(bc)			;874e	0a 	. 
	ld a,(bc)			;874f	0a 	. 
	ld a,(bc)			;8750	0a 	. 
	dec bc			;8751	0b 	. 
	inc c			;8752	0c 	. 
	ld a,(bc)			;8753	0a 	. 
	ex af,af'			;8754	08 	. 
	ld a,(bc)			;8755	0a 	. 
	ld a,(bc)			;8756	0a 	. 
	ld a,(bc)			;8757	0a 	. 
	ld a,(bc)			;8758	0a 	. 
	dec bc			;8759	0b 	. 
	inc c			;875a	0c 	. 
	ld a,(bc)			;875b	0a 	. 
	ex af,af'			;875c	08 	. 
	ld a,(bc)			;875d	0a 	. 
	ld a,(bc)			;875e	0a 	. 
	ld a,(bc)			;875f	0a 	. 
	ld a,(bc)			;8760	0a 	. 
	dec bc			;8761	0b 	. 
	inc c			;8762	0c 	. 
	ld a,(bc)			;8763	0a 	. 
	ex af,af'			;8764	08 	. 
	ld a,(bc)			;8765	0a 	. 
	ld a,(bc)			;8766	0a 	. 
	ld a,(bc)			;8767	0a 	. 
	ld a,(bc)			;8768	0a 	. 
	dec bc			;8769	0b 	. 
	inc c			;876a	0c 	. 
	ld a,(bc)			;876b	0a 	. 
	ex af,af'			;876c	08 	. 
	ld a,(bc)			;876d	0a 	. 
	rlca			;876e	07 	. 
	dec l			;876f	2d 	- 
	nop			;8770	00 	. 
	ld a,(de)			;8771	1a 	. 
	nop			;8772	00 	. 
	rla			;8773	17 	. 
	ex af,af'			;8774	08 	. 
	ld bc,02d07h		;8775	01 07 2d 	. . - 
	ld bc,00010h		;8778	01 10 00 	. . . 
	rla			;877b	17 	. 
	ex af,af'			;877c	08 	. 
	ld a,(bc)			;877d	0a 	. 
	rlca			;877e	07 	. 
	dec l			;877f	2d 	- 
	xor e			;8780	ab 	. 
	ld bc,01726h		;8781	01 26 17 	. & . 
	inc (hl)			;8784	34 	4 
	ld (bc),a			;8785	02 	. 
	rlca			;8786	07 	. 
	dec l			;8787	2d 	- 
	djnz $+18		;8788	10 10 	. . 
	dec (hl)			;878a	35 	5 
	rla			;878b	17 	. 
	ex af,af'			;878c	08 	. 
	ld a,(bc)			;878d	0a 	. 
	dec b			;878e	05 	. 
	ld hl,(00101h)		;878f	2a 01 01 	* . . 
	ld bc,00816h		;8792	01 16 08 	. . . 
	sbc a,l			;8795	9d 	. 
	dec b			;8796	05 	. 
	dec l			;8797	2d 	- 
	ld bc,0000ah		;8798	01 0a 00 	. . . 
	rla			;879b	17 	. 
	nop			;879c	00 	. 
	ld a,(bc)			;879d	0a 	. 
	add hl,bc			;879e	09 	. 
	dec l			;879f	2d 	- 
	djnz $+18		;87a0	10 10 	. . 
	nop			;87a2	00 	. 
	rla			;87a3	17 	. 
	nop			;87a4	00 	. 
	ld a,(bc)			;87a5	0a 	. 
	rlca			;87a6	07 	. 
	dec l			;87a7	2d 	- 
	nop			;87a8	00 	. 
	ld e,01eh		;87a9	1e 1e 	. . 
	rla			;87ab	17 	. 
	nop			;87ac	00 	. 
	ld a,(bc)			;87ad	0a 	. 
	rlca			;87ae	07 	. 
	dec l			;87af	2d 	- 
	ld bc,03636h		;87b0	01 36 36 	. 6 6 
	rla			;87b3	17 	. 
	nop			;87b4	00 	. 
	ld a,(bc)			;87b5	0a 	. 
	dec b			;87b6	05 	. 
	ld hl,(0019dh)		;87b7	2a 9d 01 	* . . 
	nop			;87ba	00 	. 
	rla			;87bb	17 	. 
	ld e,00fh		;87bc	1e 0f 	. . 
	ld a,(bc)			;87be	0a 	. 
	ld a,(bc)			;87bf	0a 	. 
	ld a,(bc)			;87c0	0a 	. 
	ld a,(bc)			;87c1	0a 	. 
	ld a,(bc)			;87c2	0a 	. 
	ld a,(bc)			;87c3	0a 	. 
	ld a,(bc)			;87c4	0a 	. 
	ld a,(bc)			;87c5	0a 	. 
	ld a,(bc)			;87c6	0a 	. 
	ld a,(bc)			;87c7	0a 	. 
	ld (bc),a			;87c8	02 	. 
	ld (bc),a			;87c9	02 	. 
	sbc a,l			;87ca	9d 	. 
	sbc a,l			;87cb	9d 	. 
	add hl,de			;87cc	19 	. 
	sbc a,l			;87cd	9d 	. 
	inc bc			;87ce	03 	. 
	xor e			;87cf	ab 	. 
	ld (bc),a			;87d0	02 	. 
	dec c			;87d1	0d 	. 
	ld a,(bc)			;87d2	0a 	. 
	ld a,(bc)			;87d3	0a 	. 
	ex af,af'			;87d4	08 	. 
	ld a,(bc)			;87d5	0a 	. 
	inc bc			;87d6	03 	. 
	ld (bc),a			;87d7	02 	. 
	ld (bc),a			;87d8	02 	. 
	dec c			;87d9	0d 	. 
	inc bc			;87da	03 	. 
	daa			;87db	27 	' 
	ld (hl),00ah		;87dc	36 0a 	6 . 
	add hl,bc			;87de	09 	. 
	ld (bc),a			;87df	02 	. 
	ld (bc),a			;87e0	02 	. 
	dec c			;87e1	0d 	. 
	add hl,de			;87e2	19 	. 
	dec h			;87e3	25 	% 
	nop			;87e4	00 	. 
	ld a,(bc)			;87e5	0a 	. 
	ld h,000h		;87e6	26 00 	& . 
	nop			;87e8	00 	. 
	ld bc,00101h		;87e9	01 01 01 	. . . 
	nop			;87ec	00 	. 
	ex af,af'			;87ed	08 	. 
	rlca			;87ee	07 	. 
	nop			;87ef	00 	. 
	nop			;87f0	00 	. 
	djnz $-97		;87f1	10 9d 	. . 
	ld (bc),a			;87f3	02 	. 
	ld bc,02508h		;87f4	01 08 25 	. . % 
	nop			;87f7	00 	. 
	nop			;87f8	00 	. 
	ld bc,0ab02h		;87f9	01 02 ab 	. . . 
	ld (bc),a			;87fc	02 	. 
	ld b,00ah		;87fd	06 0a 	. . 
	ld bc,09d01h		;87ff	01 01 9d 	. . . 
	ld (bc),a			;8802	02 	. 
	ld (bc),a			;8803	02 	. 
	daa			;8804	27 	' 
	rrca			;8805	0f 	. 
	ld (bc),a			;8806	02 	. 
	ld (bc),a			;8807	02 	. 
	sbc a,l			;8808	9d 	. 
	ld (bc),a			;8809	02 	. 
	ld (bc),a			;880a	02 	. 
	sbc a,l			;880b	9d 	. 
	dec h			;880c	25 	% 
	ld b,005h		;880d	06 05 	. . 
	ld bc,0011eh		;880f	01 1e 01 	. . . 
	ld e,026h		;8812	1e 26 	. & 
	ld bc,00306h		;8814	01 06 03 	. . . 
	sbc a,l			;8817	9d 	. 
	jr $+27		;8818	18 19 	. . 
	ld sp,09d25h		;881a	31 25 9d 	1 % . 
	inc b			;881d	04 	. 
	inc bc			;881e	03 	. 
	ld (bc),a			;881f	02 	. 
	add hl,de			;8820	19 	. 
	jr $+39		;8821	18 25 	. % 
	add hl,de			;8823	19 	. 
	ld (bc),a			;8824	02 	. 
	inc b			;8825	04 	. 
	ld l,b			;8826	68 	h 
	sbc a,l			;8827	9d 	. 
	jr $+41		;8828	18 27 	. ' 
	add hl,de			;882a	19 	. 
	jr $-97		;882b	18 9d 	. . 
	inc b			;882d	04 	. 
	ld l,b			;882e	68 	h 
	ld (bc),a			;882f	02 	. 
	sbc a,l			;8830	9d 	. 
	dec h			;8831	25 	% 
	jr $-97		;8832	18 9d 	. . 
	ld (bc),a			;8834	02 	. 
	inc b			;8835	04 	. 
	ld a,(bc)			;8836	0a 	. 
	ld a,(bc)			;8837	0a 	. 
	ld a,(bc)			;8838	0a 	. 
	ld bc,00101h		;8839	01 01 01 	. . . 
	ld d,006h		;883c	16 06 	. . 
	ld (bc),a			;883e	02 	. 
	add hl,de			;883f	19 	. 
	ld (bc),a			;8840	02 	. 
	ld c,002h		;8841	0e 02 	. . 
	sbc a,l			;8843	9d 	. 
	ld (bc),a			;8844	02 	. 
	inc b			;8845	04 	. 
	ld a,(bc)			;8846	0a 	. 
	ex af,af'			;8847	08 	. 
	xor e			;8848	ab 	. 
	ld (bc),a			;8849	02 	. 
	ld (bc),a			;884a	02 	. 
	ld (bc),a			;884b	02 	. 
	ld (bc),a			;884c	02 	. 
	ld e,c			;884d	59 	Y 
	ld a,(bc)			;884e	0a 	. 
	ex af,af'			;884f	08 	. 
	ld c,002h		;8850	0e 02 	. . 
	dec c			;8852	0d 	. 
	ld (bc),a			;8853	02 	. 
	sbc a,l			;8854	9d 	. 
	inc b			;8855	04 	. 
	ld a,(bc)			;8856	0a 	. 
	jr $+4		;8857	18 02 	. . 
	ld (bc),a			;8859	02 	. 
	ld c,09dh		;885a	0e 9d 	. . 
	ld (bc),a			;885c	02 	. 
	ld e,c			;885d	59 	Y 
	dec b			;885e	05 	. 
	ld bc,03f00h		;885f	01 00 3f 	. . ? 
	ld bc,00100h		;8862	01 00 01 	. . . 
	ld b,009h		;8865	06 09 	. . 
	dec c			;8867	0d 	. 
	ld bc,01010h		;8868	01 10 10 	. . . 
	ld bc,00f0eh		;886b	01 0e 0f 	. . . 
	rlca			;886e	07 	. 
	djnz $+4		;886f	10 02 	. . 
	ld bc,00201h		;8871	01 01 02 	. . . 
	sbc a,l			;8874	9d 	. 
	ex af,af'			;8875	08 	. 
	rlca			;8876	07 	. 
	ld bc,00d9dh		;8877	01 9d 0d 	. . . 
	ld (bc),a			;887a	02 	. 
	sbc a,l			;887b	9d 	. 
	rra			;887c	1f 	. 
	ex af,af'			;887d	08 	. 
	dec b			;887e	05 	. 
	sbc a,l			;887f	9d 	. 
	ld (bc),a			;8880	02 	. 
	ld (bc),a			;8881	02 	. 
	sbc a,l			;8882	9d 	. 
	ld (bc),a			;8883	02 	. 
	rla			;8884	17 	. 
	ex af,af'			;8885	08 	. 
	ld a,(bc)			;8886	0a 	. 
	ld a,(bc)			;8887	0a 	. 
	ld a,(bc)			;8888	0a 	. 
	ld a,(bc)			;8889	0a 	. 
	ld a,(bc)			;888a	0a 	. 
	ld a,(bc)			;888b	0a 	. 
	ld a,(bc)			;888c	0a 	. 
	ld a,(bc)			;888d	0a 	. 
	ld a,(bc)			;888e	0a 	. 
	ld a,(bc)			;888f	0a 	. 
	ld a,(bc)			;8890	0a 	. 
	ld a,(bc)			;8891	0a 	. 
	ld a,(bc)			;8892	0a 	. 
	ld a,(bc)			;8893	0a 	. 
	ld a,(bc)			;8894	0a 	. 
	ld a,(bc)			;8895	0a 	. 
	ld a,(bc)			;8896	0a 	. 
	ld a,(bc)			;8897	0a 	. 
	ld a,(bc)			;8898	0a 	. 
	ld a,(bc)			;8899	0a 	. 
	ld a,(bc)			;889a	0a 	. 
	ld a,(bc)			;889b	0a 	. 
	ld a,(bc)			;889c	0a 	. 
	ld a,(bc)			;889d	0a 	. 
	ld a,(bc)			;889e	0a 	. 
	ld a,(bc)			;889f	0a 	. 
	ld a,(bc)			;88a0	0a 	. 
	ld a,(bc)			;88a1	0a 	. 
	ld a,(bc)			;88a2	0a 	. 
	ld a,(bc)			;88a3	0a 	. 
	ld a,(bc)			;88a4	0a 	. 
	ld a,(bc)			;88a5	0a 	. 
	ld (bc),a			;88a6	02 	. 
	sbc a,l			;88a7	9d 	. 
	ld (bc),a			;88a8	02 	. 
	ld (bc),a			;88a9	02 	. 
	ld (bc),a			;88aa	02 	. 
	ld (bc),a			;88ab	02 	. 
	sbc a,l			;88ac	9d 	. 
	ld (bc),a			;88ad	02 	. 
	dec b			;88ae	05 	. 
	ld bc,00000h		;88af	01 00 00 	. . . 
	ld a,(de)			;88b2	1a 	. 
	ld bc,00601h		;88b3	01 01 06 	. . . 
	inc bc			;88b6	03 	. 
	sbc a,l			;88b7	9d 	. 
	ld bc,00201h		;88b8	01 01 02 	. . . 
	ld (bc),a			;88bb	02 	. 
	dec hl			;88bc	2b 	+ 
	rrca			;88bd	0f 	. 
	add hl,bc			;88be	09 	. 
	dec hl			;88bf	2b 	+ 
	djnz $+15		;88c0	10 0d 	. . 
	ld (bc),a			;88c2	02 	. 
	sbc a,l			;88c3	9d 	. 
	dec l			;88c4	2d 	- 
	ex af,af'			;88c5	08 	. 
	dec b			;88c6	05 	. 
	ld hl,(01001h)		;88c7	2a 01 10 	* . . 
	sbc a,l			;88ca	9d 	. 
	ld (bc),a			;88cb	02 	. 
	ld hl,(00206h)		;88cc	2a 06 02 	* . . 
	ld (bc),a			;88cf	02 	. 
	sbc a,l			;88d0	9d 	. 
	ld bc,09d02h		;88d1	01 02 9d 	. . . 
	xor e			;88d4	ab 	. 
	inc b			;88d5	04 	. 
	dec b			;88d6	05 	. 
	ld bc,00101h		;88d7	01 01 01 	. . . 
	ld bc,00101h		;88da	01 01 01 	. . . 
	ld bc,00a0ah		;88dd	01 0a 0a 	. . . 
	ld a,(bc)			;88e0	0a 	. 
	ld a,(bc)			;88e1	0a 	. 
	ld a,(bc)			;88e2	0a 	. 
	ld a,(bc)			;88e3	0a 	. 
	ld a,(bc)			;88e4	0a 	. 
	ld a,(bc)			;88e5	0a 	. 
	ld a,(bc)			;88e6	0a 	. 
	ld a,(bc)			;88e7	0a 	. 
	ld (bc),a			;88e8	02 	. 
	sbc a,l			;88e9	9d 	. 
	ld (bc),a			;88ea	02 	. 
	sbc a,l			;88eb	9d 	. 
	djnz $-97		;88ec	10 9d 	. . 
	add hl,bc			;88ee	09 	. 
	sbc a,l			;88ef	9d 	. 
	ld (bc),a			;88f0	02 	. 
	ld (bc),a			;88f1	02 	. 
	ld c,09dh		;88f2	0e 9d 	. . 
	nop			;88f4	00 	. 
	ld a,(bc)			;88f5	0a 	. 
	rlca			;88f6	07 	. 
	djnz $+16		;88f7	10 0e 	. . 
	sbc a,l			;88f9	9d 	. 
	ld (bc),a			;88fa	02 	. 
	ld (bc),a			;88fb	02 	. 
	nop			;88fc	00 	. 
	ld a,(bc)			;88fd	0a 	. 
	ld bc,00a1ah		;88fe	01 1a 0a 	. . . 
	ld a,(bc)			;8901	0a 	. 
	ld a,(bc)			;8902	0a 	. 
	ld a,(bc)			;8903	0a 	. 
	ld a,(bc)			;8904	0a 	. 
	ld a,(bc)			;8905	0a 	. 
	ld a,(bc)			;8906	0a 	. 
	ld a,(bc)			;8907	0a 	. 
	ld a,(bc)			;8908	0a 	. 
	ld a,(bc)			;8909	0a 	. 
	ld a,(bc)			;890a	0a 	. 
	ld a,(bc)			;890b	0a 	. 
	ld a,(bc)			;890c	0a 	. 
	ld a,(bc)			;890d	0a 	. 
	ld (bc),a			;890e	02 	. 
	ld (bc),a			;890f	02 	. 
	sbc a,l			;8910	9d 	. 
	ld (bc),a			;8911	02 	. 
	ld (bc),a			;8912	02 	. 
	sbc a,l			;8913	9d 	. 
	ld (bc),a			;8914	02 	. 
	ld (bc),a			;8915	02 	. 
	ld a,(bc)			;8916	0a 	. 
	ld a,(bc)			;8917	0a 	. 
	ld a,(bc)			;8918	0a 	. 
	ld a,(bc)			;8919	0a 	. 
	ld a,(bc)			;891a	0a 	. 
	ld a,(bc)			;891b	0a 	. 
	ld a,(bc)			;891c	0a 	. 
	ld a,(bc)			;891d	0a 	. 
	ld a,(bc)			;891e	0a 	. 
	ld a,(bc)			;891f	0a 	. 
	ld a,(bc)			;8920	0a 	. 
	ld a,(bc)			;8921	0a 	. 
	ld a,(bc)			;8922	0a 	. 
	xor e			;8923	ab 	. 
	djnz $-97		;8924	10 9d 	. . 
	ld a,(bc)			;8926	0a 	. 
	ld a,(bc)			;8927	0a 	. 
	ld bc,01d1ch		;8928	01 1c 1d 	. . . 
	nop			;892b	00 	. 
	ccf			;892c	3f 	? 
	ld b,009h		;892d	06 09 	. . 
	djnz $-97		;892f	10 9d 	. . 
	ld (bc),a			;8931	02 	. 
	sbc a,l			;8932	9d 	. 
	ld bc,00f10h		;8933	01 10 0f 	. . . 
	dec h			;8936	25 	% 
	ld bc,09d02h		;8937	01 02 9d 	. . . 
	ld (bc),a			;893a	02 	. 
	sbc a,l			;893b	9d 	. 
	ld bc,00a06h		;893c	01 06 0a 	. . . 
	ld a,(bc)			;893f	0a 	. 
	ld a,(bc)			;8940	0a 	. 
	ld a,(bc)			;8941	0a 	. 
	ld a,(bc)			;8942	0a 	. 
	ld a,(bc)			;8943	0a 	. 
	ld a,(bc)			;8944	0a 	. 
	ld a,(bc)			;8945	0a 	. 
	ld (bc),a			;8946	02 	. 
	ld (bc),a			;8947	02 	. 
	ld (bc),a			;8948	02 	. 
	ld (bc),a			;8949	02 	. 
	ld (bc),a			;894a	02 	. 
	sbc a,l			;894b	9d 	. 
	ld (bc),a			;894c	02 	. 
	ld (bc),a			;894d	02 	. 
	ld a,(bc)			;894e	0a 	. 
	ld a,(bc)			;894f	0a 	. 
	ld a,(bc)			;8950	0a 	. 
	nop			;8951	00 	. 
	ld bc,00016h		;8952	01 16 00 	. . . 
	ld a,(bc)			;8955	0a 	. 
	ld a,(bc)			;8956	0a 	. 
	ld (bc),a			;8957	02 	. 
	sbc a,l			;8958	9d 	. 
	ld bc,0029dh		;8959	01 9d 02 	. . . 
	nop			;895c	00 	. 
	ld a,(bc)			;895d	0a 	. 
	ld a,(bc)			;895e	0a 	. 
	djnz $+16		;895f	10 0e 	. . 
	ld (bc),a			;8961	02 	. 
	djnz $+16		;8962	10 0e 	. . 
	nop			;8964	00 	. 
	ld a,(bc)			;8965	0a 	. 
	ld a,(bc)			;8966	0a 	. 
	ld bc,0029dh		;8967	01 9d 02 	. . . 
	ld bc,0019dh		;896a	01 9d 01 	. . . 
	ld a,(bc)			;896d	0a 	. 
	ld a,(bc)			;896e	0a 	. 
	ld a,(bc)			;896f	0a 	. 
	ld a,(bc)			;8970	0a 	. 
	ld a,(bc)			;8971	0a 	. 
	ld a,(bc)			;8972	0a 	. 
	ld a,(bc)			;8973	0a 	. 
	ld a,(bc)			;8974	0a 	. 
	ld a,(bc)			;8975	0a 	. 
	nop			;8976	00 	. 
	nop			;8977	00 	. 
	rla			;8978	17 	. 
	dec bc			;8979	0b 	. 
	inc c			;897a	0c 	. 
	rla			;897b	17 	. 
	ld e,001h		;897c	1e 01 	. . 
	nop			;897e	00 	. 
	ld bc,00b16h		;897f	01 16 0b 	. . . 
	inc c			;8982	0c 	. 
	ld d,018h		;8983	16 18 	. . 
	sbc a,l			;8985	9d 	. 
	ld bc,010abh		;8986	01 ab 10 	. . . 
	dec bc			;8989	0b 	. 
	inc c			;898a	0c 	. 
	djnz $-97		;898b	10 9d 	. . 
	ld (bc),a			;898d	02 	. 
	sbc a,l			;898e	9d 	. 
	ld (bc),a			;898f	02 	. 
	ld bc,00c0bh		;8990	01 0b 0c 	. . . 
	ld bc,09d02h		;8993	01 02 9d 	. . . 
	ld a,(bc)			;8996	0a 	. 
	ld a,(bc)			;8997	0a 	. 
	ld a,(bc)			;8998	0a 	. 
	dec bc			;8999	0b 	. 
	inc c			;899a	0c 	. 
	ld a,(bc)			;899b	0a 	. 
	ld a,(bc)			;899c	0a 	. 
	ld a,(bc)			;899d	0a 	. 
	ld bc,00016h		;899e	01 16 00 	. . . 
	dec bc			;89a1	0b 	. 
	inc c			;89a2	0c 	. 
	ld bc,0082ah		;89a3	01 2a 08 	. * . 
	ld (bc),a			;89a6	02 	. 
	xor e			;89a7	ab 	. 
	nop			;89a8	00 	. 
	dec bc			;89a9	0b 	. 
	inc c			;89aa	0c 	. 
	djnz $-97		;89ab	10 9d 	. . 
	ld b,010h		;89ad	06 10 	. . 
	rra			;89af	1f 	. 
	nop			;89b0	00 	. 
	dec bc			;89b1	0b 	. 
	inc c			;89b2	0c 	. 
	ld bc,00a10h		;89b3	01 10 0a 	. . . 
	ld bc,00116h		;89b6	01 16 01 	. . . 
	dec bc			;89b9	0b 	. 
	inc c			;89ba	0c 	. 
	rra			;89bb	1f 	. 
	nop			;89bc	00 	. 
	rrca			;89bd	0f 	. 
	djnz $+18		;89be	10 10 	. . 
	rra			;89c0	1f 	. 
	dec bc			;89c1	0b 	. 
	inc c			;89c2	0c 	. 
	rla			;89c3	17 	. 
	ld e,006h		;89c4	1e 06 	. . 
	nop			;89c6	00 	. 
	nop			;89c7	00 	. 
	ld bc,00101h		;89c8	01 01 01 	. . . 
	ccf			;89cb	3f 	? 
	nop			;89cc	00 	. 
	nop			;89cd	00 	. 
	nop			;89ce	00 	. 
	ld bc,0100dh		;89cf	01 0d 10 	. . . 
	djnz $+4		;89d2	10 02 	. . 
	ld bc,00100h		;89d4	01 00 01 	. . . 
	sbc a,l			;89d7	9d 	. 
	ld (bc),a			;89d8	02 	. 
	ld bc,00e01h		;89d9	01 01 0e 	. . . 
	sbc a,l			;89dc	9d 	. 
	ld bc,00a0ah		;89dd	01 0a 0a 	. . . 
	ld a,(bc)			;89e0	0a 	. 
	dec bc			;89e1	0b 	. 
	inc c			;89e2	0c 	. 
	ld a,(bc)			;89e3	0a 	. 
	ld a,(bc)			;89e4	0a 	. 
	ld a,(bc)			;89e5	0a 	. 
	ld (bc),a			;89e6	02 	. 
	sbc a,l			;89e7	9d 	. 
	ld (bc),a			;89e8	02 	. 
	dec bc			;89e9	0b 	. 
	inc c			;89ea	0c 	. 
	djnz $-97		;89eb	10 9d 	. . 
	ld (bc),a			;89ed	02 	. 
	ld a,(bc)			;89ee	0a 	. 
	ld a,(bc)			;89ef	0a 	. 
	ld a,(bc)			;89f0	0a 	. 
	ld a,(bc)			;89f1	0a 	. 
	nop			;89f2	00 	. 
	ld bc,02601h		;89f3	01 01 26 	. . & 
	ld a,(bc)			;89f6	0a 	. 
	ld a,(bc)			;89f7	0a 	. 
	ld a,(bc)			;89f8	0a 	. 
	ld a,(bc)			;89f9	0a 	. 
	nop			;89fa	00 	. 
	djnz $+18		;89fb	10 10 	. . 
	dec (hl)			;89fd	35 	5 
	add hl,bc			;89fe	09 	. 
	ld (bc),a			;89ff	02 	. 
	ld (bc),a			;8a00	02 	. 
	sbc a,l			;8a01	9d 	. 
	ld bc,00001h		;8a02	01 01 00 	. . . 
	ld bc,01f07h		;8a05	01 07 1f 	. . . 
	djnz $+18		;8a08	10 10 	. . 
	sbc a,l			;8a0a	9d 	. 
	ld (bc),a			;8a0b	02 	. 
	ld bc,0050ah		;8a0c	01 0a 05 	. . . 
	ld d,001h		;8a0f	16 01 	. . 
	ld bc,09d02h		;8a11	01 02 9d 	. . . 
	djnz $-97		;8a14	10 9d 	. . 
	ld a,(bc)			;8a16	0a 	. 
	ld a,(bc)			;8a17	0a 	. 
	rla			;8a18	17 	. 
	nop			;8a19	00 	. 
	nop			;8a1a	00 	. 
	jr nz,$+2		;8a1b	20 00 	  . 
	ld bc,00a0ah		;8a1d	01 0a 0a 	. . . 
	rla			;8a20	17 	. 
	nop			;8a21	00 	. 
	nop			;8a22	00 	. 
	ld a,(de)			;8a23	1a 	. 
	ld bc,00a9dh		;8a24	01 9d 0a 	. . . 
	ld a,(bc)			;8a27	0a 	. 
	rla			;8a28	17 	. 
	nop			;8a29	00 	. 
	nop			;8a2a	00 	. 
	rra			;8a2b	1f 	. 
	djnz $+18		;8a2c	10 10 	. . 
	ld a,(bc)			;8a2e	0a 	. 
	ld a,(bc)			;8a2f	0a 	. 
	rla			;8a30	17 	. 
	nop			;8a31	00 	. 
	nop			;8a32	00 	. 
	rla			;8a33	17 	. 
	nop			;8a34	00 	. 
	ld bc,00a0ah		;8a35	01 0a 0a 	. . . 
	rla			;8a38	17 	. 
	nop			;8a39	00 	. 
	nop			;8a3a	00 	. 
	rla			;8a3b	17 	. 
	nop			;8a3c	00 	. 
	djnz $+9		;8a3d	10 07 	. . 
	ccf			;8a3f	3f 	? 
	ld d,001h		;8a40	16 01 	. . 
	ld bc,00017h		;8a42	01 17 00 	. . . 
	nop			;8a45	00 	. 
	rlca			;8a46	07 	. 
	djnz $+29		;8a47	10 1b 	. . 
	djnz $+29		;8a49	10 1b 	. . 
	rla			;8a4b	17 	. 
	nop			;8a4c	00 	. 
	nop			;8a4d	00 	. 
	rlca			;8a4e	07 	. 
	ld bc,0001ah		;8a4f	01 1a 00 	. . . 
	jr nz,$+25		;8a52	20 17 	  . 
	nop			;8a54	00 	. 
	ld bc,01b07h		;8a55	01 07 1b 	. . . 
	djnz $+2		;8a58	10 00 	. . 
	jr nz,$+25		;8a5a	20 17 	  . 
	nop			;8a5c	00 	. 
	sbc a,l			;8a5d	9d 	. 
	rlca			;8a5e	07 	. 
	jr nz,$+3		;8a5f	20 01 	  . 
	ld bc,0161ah		;8a61	01 1a 16 	. . . 
	ld bc,0000ah		;8a64	01 0a 00 	. . . 
	ld a,(bc)			;8a67	0a 	. 
	ld a,(bc)			;8a68	0a 	. 
	ld a,(bc)			;8a69	0a 	. 
	ld a,(bc)			;8a6a	0a 	. 
	ld a,(bc)			;8a6b	0a 	. 
	ld a,(bc)			;8a6c	0a 	. 
	ld a,(bc)			;8a6d	0a 	. 
	nop			;8a6e	00 	. 
	ld a,(bc)			;8a6f	0a 	. 
	ld a,(bc)			;8a70	0a 	. 
	ld a,(bc)			;8a71	0a 	. 
	ld a,(bc)			;8a72	0a 	. 
	ld a,(bc)			;8a73	0a 	. 
	ld a,(bc)			;8a74	0a 	. 
	ld a,(bc)			;8a75	0a 	. 
	ld bc,09d02h		;8a76	01 02 9d 	. . . 
	ld (bc),a			;8a79	02 	. 
	sbc a,l			;8a7a	9d 	. 
	djnz $+4		;8a7b	10 02 	. . 
	inc b			;8a7d	04 	. 
	ld a,(bc)			;8a7e	0a 	. 
	ld a,(bc)			;8a7f	0a 	. 
	ld a,(bc)			;8a80	0a 	. 
	ld (bc),a			;8a81	02 	. 
	ld c,001h		;8a82	0e 01 	. . 
	ld c,004h		;8a84	0e 04 	. . 
	ld (bc),a			;8a86	02 	. 
	sbc a,l			;8a87	9d 	. 
	ld (bc),a			;8a88	02 	. 
	xor e			;8a89	ab 	. 
	sbc a,l			;8a8a	9d 	. 
	ld (bc),a			;8a8b	02 	. 
	ld c,004h		;8a8c	0e 04 	. . 
	dec b			;8a8e	05 	. 
	ld bc,01c01h		;8a8f	01 01 1c 	. . . 
	dec e			;8a92	1d 	. 
	nop			;8a93	00 	. 
	nop			;8a94	00 	. 
	ex af,af'			;8a95	08 	. 
	add hl,bc			;8a96	09 	. 
	dec de			;8a97	1b 	. 
	djnz $+18		;8a98	10 10 	. . 
	djnz $+2		;8a9a	10 00 	. . 
	nop			;8a9c	00 	. 
	ex af,af'			;8a9d	08 	. 
	rlca			;8a9e	07 	. 
	jr nz,$+2		;8a9f	20 00 	  . 
	nop			;8aa1	00 	. 
	nop			;8aa2	00 	. 
	nop			;8aa3	00 	. 
	nop			;8aa4	00 	. 
	ex af,af'			;8aa5	08 	. 
	dec b			;8aa6	05 	. 
	ld a,(de)			;8aa7	1a 	. 
	ld bc,00101h		;8aa8	01 01 01 	. . . 
	ld bc,00601h		;8aab	01 01 06 	. . . 
	ld a,(bc)			;8aae	0a 	. 
	ld a,(bc)			;8aaf	0a 	. 
	ld a,(bc)			;8ab0	0a 	. 
	ld a,(bc)			;8ab1	0a 	. 
	ld a,(bc)			;8ab2	0a 	. 
	ld a,(bc)			;8ab3	0a 	. 
	ld a,(bc)			;8ab4	0a 	. 
	ld a,(bc)			;8ab5	0a 	. 
	ld bc,00001h		;8ab6	01 01 00 	. . . 
	ld bc,00101h		;8ab9	01 01 01 	. . . 
	nop			;8abc	00 	. 
	ld b,09dh		;8abd	06 9d 	. . 
	djnz $+2		;8abf	10 00 	. . 
	djnz $+4		;8ac1	10 02 	. . 
	sbc a,l			;8ac3	9d 	. 
	ld bc,00204h		;8ac4	01 04 02 	. . . 
	ld bc,00101h		;8ac7	01 01 01 	. . . 
	sbc a,l			;8aca	9d 	. 
	ld (bc),a			;8acb	02 	. 
	ld (bc),a			;8acc	02 	. 
	inc b			;8acd	04 	. 
	ld (bc),a			;8ace	02 	. 
	ld (bc),a			;8acf	02 	. 
	sbc a,l			;8ad0	9d 	. 
	ld (bc),a			;8ad1	02 	. 
	ld (bc),a			;8ad2	02 	. 
	ld (bc),a			;8ad3	02 	. 
	sbc a,l			;8ad4	9d 	. 
	inc b			;8ad5	04 	. 
	djnz $+33		;8ad6	10 1f 	. . 
	djnz $+37		;8ad8	10 23 	. # 
	inc h			;8ada	24 	$ 
	djnz $+29		;8adb	10 1b 	. . 
	rrca			;8add	0f 	. 
	ld a,(bc)			;8ade	0a 	. 
	ld l,b			;8adf	68 	h 
	ld a,(bc)			;8ae0	0a 	. 
	dec bc			;8ae1	0b 	. 
	inc c			;8ae2	0c 	. 
	ld a,(bc)			;8ae3	0a 	. 
	ld e,h			;8ae4	5c 	\ 
	ld a,(bc)			;8ae5	0a 	. 
	ld a,(bc)			;8ae6	0a 	. 
	ld l,b			;8ae7	68 	h 
	ld a,(bc)			;8ae8	0a 	. 
	dec bc			;8ae9	0b 	. 
	inc c			;8aea	0c 	. 
	ld a,(bc)			;8aeb	0a 	. 
	ld e,h			;8aec	5c 	\ 
	ld a,(bc)			;8aed	0a 	. 
	ld a,(bc)			;8aee	0a 	. 
	ld l,b			;8aef	68 	h 
	ld a,(bc)			;8af0	0a 	. 
	dec bc			;8af1	0b 	. 
	inc c			;8af2	0c 	. 
	ld a,(bc)			;8af3	0a 	. 
	ld e,h			;8af4	5c 	\ 
	ld a,(bc)			;8af5	0a 	. 
	ld a,(bc)			;8af6	0a 	. 
	ld l,b			;8af7	68 	h 
	ld a,(bc)			;8af8	0a 	. 
	dec bc			;8af9	0b 	. 
	inc c			;8afa	0c 	. 
	ld (bc),a			;8afb	02 	. 
	ld e,c			;8afc	59 	Y 
	ld a,(bc)			;8afd	0a 	. 
	sbc a,l			;8afe	9d 	. 
	dec c			;8aff	0d 	. 
	ld a,(bc)			;8b00	0a 	. 
	dec bc			;8b01	0b 	. 
	inc c			;8b02	0c 	. 
	ld a,(bc)			;8b03	0a 	. 
	ld a,(bc)			;8b04	0a 	. 
	ld a,(bc)			;8b05	0a 	. 
	ld a,(bc)			;8b06	0a 	. 
	ld a,(bc)			;8b07	0a 	. 
	nop			;8b08	00 	. 
	nop			;8b09	00 	. 
	nop			;8b0a	00 	. 
	nop			;8b0b	00 	. 
	nop			;8b0c	00 	. 
	ex af,af'			;8b0d	08 	. 
	ld a,(bc)			;8b0e	0a 	. 
	ld a,(bc)			;8b0f	0a 	. 
	nop			;8b10	00 	. 
	ld bc,00101h		;8b11	01 01 01 	. . . 
	ld bc,00a06h		;8b14	01 06 0a 	. . . 
	ld a,(bc)			;8b17	0a 	. 
	nop			;8b18	00 	. 
	ld c,002h		;8b19	0e 02 	. . 
	sbc a,l			;8b1b	9d 	. 
	ld (bc),a			;8b1c	02 	. 
	sbc a,l			;8b1d	9d 	. 
	ld a,(bc)			;8b1e	0a 	. 
	ld a,(bc)			;8b1f	0a 	. 
	nop			;8b20	00 	. 
	ld e,h			;8b21	5c 	\ 
	ld a,(bc)			;8b22	0a 	. 
	ld a,(bc)			;8b23	0a 	. 
	ld a,(bc)			;8b24	0a 	. 
	ld a,(bc)			;8b25	0a 	. 
	ld a,(bc)			;8b26	0a 	. 
	ld a,(bc)			;8b27	0a 	. 
	nop			;8b28	00 	. 
	ld e,h			;8b29	5c 	\ 
	ld a,(bc)			;8b2a	0a 	. 
	ld a,(bc)			;8b2b	0a 	. 
	ld a,(bc)			;8b2c	0a 	. 
	ld a,(bc)			;8b2d	0a 	. 
	ld a,(bc)			;8b2e	0a 	. 
	ld a,(bc)			;8b2f	0a 	. 
	ld bc,0011ah		;8b30	01 1a 01 	. . . 
	ld bc,00600h		;8b33	01 00 06 	. . . 
	sbc a,l			;8b36	9d 	. 
	ld (bc),a			;8b37	02 	. 
	sbc a,l			;8b38	9d 	. 
	ld (bc),a			;8b39	02 	. 
	add hl,hl			;8b3a	29 	) 
	jr z,$+3		;8b3b	28 01 	( . 
	inc b			;8b3d	04 	. 
	ld (bc),a			;8b3e	02 	. 
	djnz $+4		;8b3f	10 02 	. . 
	djnz $+41		;8b41	10 27 	. ' 
	add hl,de			;8b43	19 	. 
	xor e			;8b44	ab 	. 
	inc b			;8b45	04 	. 
	ld a,(bc)			;8b46	0a 	. 
	nop			;8b47	00 	. 
	ld a,(bc)			;8b48	0a 	. 
	nop			;8b49	00 	. 
	rlca			;8b4a	07 	. 
	ex af,af'			;8b4b	08 	. 
	ld a,(bc)			;8b4c	0a 	. 
	ld a,(bc)			;8b4d	0a 	. 
	sbc a,l			;8b4e	9d 	. 
	ld bc,0019dh		;8b4f	01 9d 01 	. . . 
	dec h			;8b52	25 	% 
	ld b,00ah		;8b53	06 0a 	. . 
	ld a,(bc)			;8b55	0a 	. 
	rlca			;8b56	07 	. 
	nop			;8b57	00 	. 
	ld h,000h		;8b58	26 00 	& . 
	ld h,000h		;8b5a	26 00 	& . 
	nop			;8b5c	00 	. 
	ex af,af'			;8b5d	08 	. 
	dec b			;8b5e	05 	. 
	ld bc,00125h		;8b5f	01 25 01 	. % . 
	dec h			;8b62	25 	% 
	ld bc,01801h		;8b63	01 01 18 	. . . 
	inc bc			;8b66	03 	. 
	sbc a,l			;8b67	9d 	. 
	ld c,002h		;8b68	0e 02 	. . 
	djnz $+4		;8b6a	10 02 	. . 
	sbc a,l			;8b6c	9d 	. 
	ld (bc),a			;8b6d	02 	. 
	inc bc			;8b6e	03 	. 
	xor e			;8b6f	ab 	. 
	djnz $-97		;8b70	10 9d 	. . 
	ld bc,00402h		;8b72	01 02 04 	. . . 
	ld a,(bc)			;8b75	0a 	. 
	inc bc			;8b76	03 	. 
	sbc a,l			;8b77	9d 	. 
	ld bc,0292bh		;8b78	01 2b 29 	. + ) 
	jr z,$+18		;8b7b	28 10 	( . 
	sbc a,l			;8b7d	9d 	. 
	ld bc,00000h		;8b7e	01 00 00 	. . . 
	dec l			;8b81	2d 	- 
	nop			;8b82	00 	. 
	rla			;8b83	17 	. 
	nop			;8b84	00 	. 
	ld a,(bc)			;8b85	0a 	. 
	daa			;8b86	27 	' 
	nop			;8b87	00 	. 
	nop			;8b88	00 	. 
	dec l			;8b89	2d 	- 
	ld bc,00017h		;8b8a	01 17 00 	. . . 
	ld a,(bc)			;8b8d	0a 	. 
	dec b			;8b8e	05 	. 
	ld bc,02a01h		;8b8f	01 01 2a 	. . * 
	djnz $+25		;8b92	10 17 	. . 
	nop			;8b94	00 	. 
	ld a,(bc)			;8b95	0a 	. 
	djnz $-83		;8b96	10 ab 	. . 
	sbc a,l			;8b98	9d 	. 
	djnz $+3		;8b99	10 01 	. . 
	rla			;8b9b	17 	. 
	nop			;8b9c	00 	. 
	ld a,(bc)			;8b9d	0a 	. 
	ld bc,0029dh		;8b9e	01 9d 02 	. . . 
	ld bc,0169dh		;8ba1	01 9d 16 	. . . 
	ld bc,00a0ah		;8ba4	01 0a 0a 	. . . 
	ld e,001h		;8ba7	1e 01 	. . 
	nop			;8ba9	00 	. 
	ld bc,01e01h		;8baa	01 01 1e 	. . . 
	ld bc,0180ah		;8bad	01 0a 18 	. . . 
	rrca			;8bb0	0f 	. 
	nop			;8bb1	00 	. 
	add hl,bc			;8bb2	09 	. 
	add hl,de			;8bb3	19 	. 
	ld sp,00a02h		;8bb4	31 02 0a 	1 . . 
	ld a,(bc)			;8bb7	0a 	. 
	jr $+3		;8bb8	18 01 	. . 
	dec (hl)			;8bba	35 	5 
	ld b,007h		;8bbb	06 07 	. . 
	ld a,(bc)			;8bbd	0a 	. 
	ld a,(bc)			;8bbe	0a 	. 
	add hl,de			;8bbf	19 	. 
	ld (bc),a			;8bc0	02 	. 
	xor e			;8bc1	ab 	. 
	ld bc,02509h		;8bc2	01 09 25 	. . % 
	djnz $+12		;8bc5	10 0a 	. . 
	jr $-97		;8bc7	18 9d 	. . 
	ld (bc),a			;8bc9	02 	. 
	daa			;8bca	27 	' 
	dec sp			;8bcb	3b 	; 
	ld a,(bc)			;8bcc	0a 	. 
	ld bc,0010ah		;8bcd	01 0a 01 	. . . 
	ld a,(de)			;8bd0	1a 	. 
	ld bc,0011eh		;8bd1	01 1e 01 	. . . 
	ld bc,00a59h		;8bd4	01 59 0a 	. Y . 
	djnz $+4		;8bd7	10 02 	. . 
	sbc a,l			;8bd9	9d 	. 
	jr $+18		;8bda	18 10 	. . 
	sbc a,l			;8bdc	9d 	. 
	inc b			;8bdd	04 	. 
	ld a,(bc)			;8bde	0a 	. 
	ld bc,02829h		;8bdf	01 29 28 	. ) ( 
	sbc a,l			;8be2	9d 	. 
	ld bc,00a02h		;8be3	01 02 0a 	. . . 
	ld a,(bc)			;8be6	0a 	. 
	ld (bc),a			;8be7	02 	. 
	sbc a,l			;8be8	9d 	. 
	ld (bc),a			;8be9	02 	. 
	ld (bc),a			;8bea	02 	. 
	djnz $+16		;8beb	10 0e 	. . 
	ld a,(bc)			;8bed	0a 	. 
	ld a,(bc)			;8bee	0a 	. 
	ld (bc),a			;8bef	02 	. 
	djnz $+18		;8bf0	10 10 	. . 
	sbc a,l			;8bf2	9d 	. 
	ld bc,00a02h		;8bf3	01 02 0a 	. . . 
	ld bc,00101h		;8bf6	01 01 01 	. . . 
	ld bc,00c0bh		;8bf9	01 0b 0c 	. . . 
	ld a,(bc)			;8bfc	0a 	. 
	ld a,(bc)			;8bfd	0a 	. 
	sbc a,l			;8bfe	9d 	. 
	ld (bc),a			;8bff	02 	. 
	djnz $+18		;8c00	10 10 	. . 
	add hl,hl			;8c02	29 	) 
	jr z,$+4		;8c03	28 02 	( . 
	sbc a,l			;8c05	9d 	. 
	ld a,(bc)			;8c06	0a 	. 
	ld a,(bc)			;8c07	0a 	. 
	ld bc,09d00h		;8c08	01 00 9d 	. . . 
	djnz $-97		;8c0b	10 9d 	. . 
	ld (bc),a			;8c0d	02 	. 
	djnz $+18		;8c0e	10 10 	. . 
	djnz $+2		;8c10	10 00 	. . 
	djnz $+2		;8c12	10 00 	. . 
	djnz $+18		;8c14	10 10 	. . 
	jr nc,$+50		;8c16	30 30 	0 0 
	jr nc,$+50		;8c18	30 30 	0 0 
	jr nc,$+50		;8c1a	30 30 	0 0 
	jr nc,$+50		;8c1c	30 30 	0 0 
	rlca			;8c1e	07 	. 
	nop			;8c1f	00 	. 
	ld bc,00001h		;8c20	01 01 00 	. . . 
	ld bc,00101h		;8c23	01 01 01 	. . . 
	rlca			;8c26	07 	. 
	ld e,02ch		;8c27	1e 2c 	. , 
	ld (bc),a			;8c29	02 	. 
	ld bc,01009h		;8c2a	01 09 10 	. . . 
	sbc a,l			;8c2d	9d 	. 
	dec b			;8c2e	05 	. 
	jr $+4		;8c2f	18 02 	. . 
	xor e			;8c31	ab 	. 
	sbc a,l			;8c32	9d 	. 
	dec (hl)			;8c33	35 	5 
	ld bc,00a0ah		;8c34	01 0a 0a 	. . . 
	djnz $+18		;8c37	10 10 	. . 
	djnz $+27		;8c39	10 19 	. . 
	nop			;8c3b	00 	. 
	djnz $+18		;8c3c	10 10 	. . 
	ld a,(bc)			;8c3e	0a 	. 
	jr nc,$+50		;8c3f	30 30 	0 0 
	jr nc,$+50		;8c41	30 30 	0 0 
	jr nc,$+50		;8c43	30 30 	0 0 
	jr nc,$+12		;8c45	30 0a 	0 . 
	ld a,(bc)			;8c47	0a 	. 
	ld a,(bc)			;8c48	0a 	. 
	ld a,(bc)			;8c49	0a 	. 
	nop			;8c4a	00 	. 
	nop			;8c4b	00 	. 
	nop			;8c4c	00 	. 
	ld bc,0029dh		;8c4d	01 9d 02 	. . . 
	ld (bc),a			;8c50	02 	. 
	djnz $+2		;8c51	10 00 	. . 
	nop			;8c53	00 	. 
	ld bc,0020ah		;8c54	01 0a 02 	. . . 
	ld (bc),a			;8c57	02 	. 
	djnz $+2		;8c58	10 00 	. . 
	ld bc,09d00h		;8c5a	01 00 9d 	. . . 
	ld (bc),a			;8c5d	02 	. 
	djnz $+18		;8c5e	10 10 	. . 
	nop			;8c60	00 	. 
	nop			;8c61	00 	. 
	djnz $+2		;8c62	10 00 	. . 
	djnz $+18		;8c64	10 10 	. . 
	jr nc,$+50		;8c66	30 30 	0 0 
	jr nc,$+50		;8c68	30 30 	0 0 
	jr nc,$+50		;8c6a	30 30 	0 0 
	jr nc,$+50		;8c6c	30 30 	0 0 
	ld bc,00101h		;8c6e	01 01 01 	. . . 
	ld bc,00101h		;8c71	01 01 01 	. . . 
	ld bc,00a01h		;8c74	01 01 0a 	. . . 
	ld a,(bc)			;8c77	0a 	. 
	ld a,(bc)			;8c78	0a 	. 
	ld a,(bc)			;8c79	0a 	. 
	ld a,(bc)			;8c7a	0a 	. 
	ld a,(bc)			;8c7b	0a 	. 
	ld a,(bc)			;8c7c	0a 	. 
	ld a,(bc)			;8c7d	0a 	. 
	ld (bc),a			;8c7e	02 	. 
	sbc a,l			;8c7f	9d 	. 
	add hl,de			;8c80	19 	. 
	xor e			;8c81	ab 	. 
	djnz $-97		;8c82	10 9d 	. . 
	djnz $-97		;8c84	10 9d 	. . 
	djnz $+18		;8c86	10 10 	. . 
	ld (hl),010h		;8c88	36 10 	6 . 
	nop			;8c8a	00 	. 
	djnz $+2		;8c8b	10 00 	. . 
	ld a,(bc)			;8c8d	0a 	. 
	jr nc,$+50		;8c8e	30 30 	0 0 
	jr nc,$+50		;8c90	30 30 	0 0 
	jr nc,$+50		;8c92	30 30 	0 0 
	jr nc,$+12		;8c94	30 0a 	0 . 
	ld bc,00000h		;8c96	01 00 00 	. . . 
	nop			;8c99	00 	. 
	nop			;8c9a	00 	. 
	nop			;8c9b	00 	. 
	nop			;8c9c	00 	. 
	nop			;8c9d	00 	. 
	ld a,(bc)			;8c9e	0a 	. 
	nop			;8c9f	00 	. 
	nop			;8ca0	00 	. 
	nop			;8ca1	00 	. 
	nop			;8ca2	00 	. 
	nop			;8ca3	00 	. 
	nop			;8ca4	00 	. 
	nop			;8ca5	00 	. 
	ld (bc),a			;8ca6	02 	. 
	nop			;8ca7	00 	. 
	nop			;8ca8	00 	. 
	nop			;8ca9	00 	. 
	nop			;8caa	00 	. 
	nop			;8cab	00 	. 
	nop			;8cac	00 	. 
	ld bc,06a0ah		;8cad	01 0a 6a 	. . j 
	ld l,d			;8cb0	6a 	j 
	ld l,d			;8cb1	6a 	j 
	ld l,d			;8cb2	6a 	j 
	ld l,d			;8cb3	6a 	j 
	ld l,d			;8cb4	6a 	j 
	ld a,(bc)			;8cb5	0a 	. 
	ld a,(bc)			;8cb6	0a 	. 
	ld l,c			;8cb7	69 	i 
	ld l,c			;8cb8	69 	i 
	ld l,c			;8cb9	69 	i 
	ld l,c			;8cba	69 	i 
	ld l,c			;8cbb	69 	i 
	ld l,c			;8cbc	69 	i 
	ld a,(bc)			;8cbd	0a 	. 
	nop			;8cbe	00 	. 
	nop			;8cbf	00 	. 
	ld e,000h		;8cc0	1e 00 	. . 
	ld h,01eh		;8cc2	26 1e 	& . 
	nop			;8cc4	00 	. 
	ld bc,02600h		;8cc5	01 00 26 	. . & 
	ld (hl),000h		;8cc8	36 00 	6 . 
	dec (hl)			;8cca	35 	5 
	ld (hl),000h		;8ccb	36 00 	6 . 
	djnz $+3		;8ccd	10 01 	. . 
	dec (hl)			;8ccf	35 	5 
	nop			;8cd0	00 	. 
	nop			;8cd1	00 	. 
	nop			;8cd2	00 	. 
	nop			;8cd3	00 	. 
	ld h,000h		;8cd4	26 00 	& . 
	ld a,(bc)			;8cd6	0a 	. 
	nop			;8cd7	00 	. 
	nop			;8cd8	00 	. 
	nop			;8cd9	00 	. 
	nop			;8cda	00 	. 
	nop			;8cdb	00 	. 
	dec (hl)			;8cdc	35 	5 
	nop			;8cdd	00 	. 
	ld a,(bc)			;8cde	0a 	. 
	jr nc,$+50		;8cdf	30 30 	0 0 
	jr nc,$+50		;8ce1	30 30 	0 0 
	jr nc,$+50		;8ce3	30 30 	0 0 
	jr nc,$+24		;8ce5	30 16 	0 . 
	nop			;8ce7	00 	. 
	nop			;8ce8	00 	. 
	ccf			;8ce9	3f 	? 
	ld a,(bc)			;8cea	0a 	. 
	ld a,(bc)			;8ceb	0a 	. 
	ld a,(de)			;8cec	1a 	. 
	ex af,af'			;8ced	08 	. 
	djnz $+3		;8cee	10 01 	. . 
	ld bc,00a10h		;8cf0	01 10 0a 	. . . 
	ld a,(bc)			;8cf3	0a 	. 
	djnz $+8		;8cf4	10 06 	. . 
	nop			;8cf6	00 	. 
	djnz $+18		;8cf7	10 10 	. . 
	nop			;8cf9	00 	. 
	ld a,(bc)			;8cfa	0a 	. 
	ld a,(bc)			;8cfb	0a 	. 
	ld bc,0009dh		;8cfc	01 9d 00 	. . . 
	nop			;8cff	00 	. 
	nop			;8d00	00 	. 
	nop			;8d01	00 	. 
	djnz $+18		;8d02	10 10 	. . 
	djnz $+12		;8d04	10 0a 	. . 
	jr nc,$+50		;8d06	30 30 	0 0 
	jr nc,$+50		;8d08	30 30 	0 0 
	jr nc,$+50		;8d0a	30 30 	0 0 
	jr nc,$+12		;8d0c	30 0a 	0 . 
	dec b			;8d0e	05 	. 
	ld bc,00016h		;8d0f	01 16 00 	. . . 
	ld a,(bc)			;8d12	0a 	. 
	ld a,(bc)			;8d13	0a 	. 
	ld a,(de)			;8d14	1a 	. 
	ex af,af'			;8d15	08 	. 
	inc bc			;8d16	03 	. 
	ld c,0abh		;8d17	0e ab 	. . 
	nop			;8d19	00 	. 
	ld a,(bc)			;8d1a	0a 	. 
	ld a,(bc)			;8d1b	0a 	. 
	add hl,de			;8d1c	19 	. 
	ld b,009h		;8d1d	06 09 	. . 
	djnz $+18		;8d1f	10 10 	. . 
	nop			;8d21	00 	. 
	ld (bc),a			;8d22	02 	. 
	ld (bc),a			;8d23	02 	. 
	jr $+6		;8d24	18 04 	. . 
	dec b			;8d26	05 	. 
	ld bc,00001h		;8d27	01 01 00 	. . . 
	ld a,(bc)			;8d2a	0a 	. 
	ld a,(bc)			;8d2b	0a 	. 
	dec de			;8d2c	1b 	. 
	rrca			;8d2d	0f 	. 
	ld l,b			;8d2e	68 	h 
	djnz $-97		;8d2f	10 9d 	. . 
	ld bc,00a0ah		;8d31	01 0a 0a 	. . . 
	jr nz,$+10		;8d34	20 08 	  . 
	ld bc,00100h		;8d36	01 00 01 	. . . 
	nop			;8d39	00 	. 
	ld a,(bc)			;8d3a	0a 	. 
	ld a,(bc)			;8d3b	0a 	. 
	ld bc,09d06h		;8d3c	01 06 9d 	. . . 
	nop			;8d3f	00 	. 
	djnz $+3		;8d40	10 01 	. . 
	ld a,(bc)			;8d42	0a 	. 
	ld a,(bc)			;8d43	0a 	. 
	dec hl			;8d44	2b 	+ 
	rrca			;8d45	0f 	. 
	ld (bc),a			;8d46	02 	. 
	nop			;8d47	00 	. 
	ld bc,00a10h		;8d48	01 10 0a 	. . . 
	ld a,(bc)			;8d4b	0a 	. 
	ld hl,(09d06h)		;8d4c	2a 06 9d 	* . . 
	nop			;8d4f	00 	. 
	djnz $+3		;8d50	10 01 	. . 
	ld a,(bc)			;8d52	0a 	. 
	ld a,(bc)			;8d53	0a 	. 
	dec de			;8d54	1b 	. 
	rrca			;8d55	0f 	. 
	ld (bc),a			;8d56	02 	. 
	nop			;8d57	00 	. 
	ld bc,00a10h		;8d58	01 10 0a 	. . . 
	ld a,(bc)			;8d5b	0a 	. 
	jr nz,$+10		;8d5c	20 08 	  . 
	dec b			;8d5e	05 	. 
	ld e,01eh		;8d5f	1e 1e 	. . 
	ld e,001h		;8d61	1e 01 	. . 
	ld e,01eh		;8d63	1e 1e 	. . 
	ld e,003h		;8d65	1e 03 	. . 
	jr $+54		;8d67	18 34 	. 4 
	inc (hl)			;8d69	34 	4 
	add hl,de			;8d6a	19 	. 
	inc (hl)			;8d6b	34 	4 
	jr $+54		;8d6c	18 34 	. 4 
	inc bc			;8d6e	03 	. 
	add hl,de			;8d6f	19 	. 
	inc (hl)			;8d70	34 	4 
	jr $+54		;8d71	18 34 	. 4 
	inc (hl)			;8d73	34 	4 
	add hl,de			;8d74	19 	. 
	inc (hl)			;8d75	34 	4 
	inc bc			;8d76	03 	. 
	inc (hl)			;8d77	34 	4 
	inc (hl)			;8d78	34 	4 
	add hl,de			;8d79	19 	. 
	inc (hl)			;8d7a	34 	4 
	jr $+54		;8d7b	18 34 	. 4 
	inc (hl)			;8d7d	34 	4 
	inc bc			;8d7e	03 	. 
	jr $+26		;8d7f	18 18 	. . 
	jr $+26		;8d81	18 18 	. . 
	xor e			;8d83	ab 	. 
	jr $+26		;8d84	18 18 	. . 
	rlca			;8d86	07 	. 
	nop			;8d87	00 	. 
	nop			;8d88	00 	. 
	nop			;8d89	00 	. 
	nop			;8d8a	00 	. 
	nop			;8d8b	00 	. 
	nop			;8d8c	00 	. 
	ex af,af'			;8d8d	08 	. 
	rlca			;8d8e	07 	. 
	nop			;8d8f	00 	. 
	nop			;8d90	00 	. 
	nop			;8d91	00 	. 
	nop			;8d92	00 	. 
	nop			;8d93	00 	. 
	nop			;8d94	00 	. 
	ex af,af'			;8d95	08 	. 
	dec h			;8d96	25 	% 
	nop			;8d97	00 	. 
	nop			;8d98	00 	. 
	nop			;8d99	00 	. 
	nop			;8d9a	00 	. 
	nop			;8d9b	00 	. 
	nop			;8d9c	00 	. 
	ex af,af'			;8d9d	08 	. 
	ld a,(bc)			;8d9e	0a 	. 
	ld bc,00101h		;8d9f	01 01 01 	. . . 
	ld bc,00101h		;8da2	01 01 01 	. . . 
	ld b,00ah		;8da5	06 0a 	. . 
	ld a,(bc)			;8da7	0a 	. 
	ld a,(bc)			;8da8	0a 	. 
	ld a,(bc)			;8da9	0a 	. 
	ld a,(bc)			;8daa	0a 	. 
	ld a,(bc)			;8dab	0a 	. 
	ld a,(bc)			;8dac	0a 	. 
	ld a,(bc)			;8dad	0a 	. 
	sbc a,e			;8dae	9b 	. 
	sbc a,d			;8daf	9a 	. 
	sbc a,(hl)			;8db0	9e 	. 
	sbc a,d			;8db1	9a 	. 
	sbc a,a			;8db2	9f 	. 
	sbc a,d			;8db3	9a 	. 
	sbc a,d			;8db4	9a 	. 
	and b			;8db5	a0 	. 
	sbc a,e			;8db6	9b 	. 
	nop			;8db7	00 	. 
	sbc a,d			;8db8	9a 	. 
	sbc a,d			;8db9	9a 	. 
	sbc a,d			;8dba	9a 	. 
	nop			;8dbb	00 	. 
	sbc a,d			;8dbc	9a 	. 
	and e			;8dbd	a3 	. 
	sbc a,e			;8dbe	9b 	. 
	sbc a,d			;8dbf	9a 	. 
	and c			;8dc0	a1 	. 
	and d			;8dc1	a2 	. 
	sbc a,d			;8dc2	9a 	. 
	sbc a,d			;8dc3	9a 	. 
	sbc a,d			;8dc4	9a 	. 
	sbc a,e			;8dc5	9b 	. 
	sbc a,e			;8dc6	9b 	. 
	sbc a,d			;8dc7	9a 	. 
	sbc a,d			;8dc8	9a 	. 
	sbc a,d			;8dc9	9a 	. 
	sbc a,d			;8dca	9a 	. 
	nop			;8dcb	00 	. 
	sbc a,(hl)			;8dcc	9e 	. 
	sbc a,e			;8dcd	9b 	. 
	sbc a,e			;8dce	9b 	. 
	sbc a,d			;8dcf	9a 	. 
	nop			;8dd0	00 	. 
	nop			;8dd1	00 	. 
	sbc a,d			;8dd2	9a 	. 
	sbc a,d			;8dd3	9a 	. 
	sbc a,d			;8dd4	9a 	. 
	sbc a,e			;8dd5	9b 	. 
	ld a,(bc)			;8dd6	0a 	. 
	ld a,(bc)			;8dd7	0a 	. 
	ld a,(bc)			;8dd8	0a 	. 
	inc a			;8dd9	3c 	< 
	dec e			;8dda	1d 	. 
	ld bc,00a0ah		;8ddb	01 0a 0a 	. . . 
	ld a,(bc)			;8dde	0a 	. 
	ld a,(bc)			;8ddf	0a 	. 
	ld a,(bc)			;8de0	0a 	. 
	ld a,(bc)			;8de1	0a 	. 
	ld a,(bc)			;8de2	0a 	. 
	dec de			;8de3	1b 	. 
	ld a,(bc)			;8de4	0a 	. 
	ld a,(bc)			;8de5	0a 	. 
	ld a,(bc)			;8de6	0a 	. 
	ld a,(bc)			;8de7	0a 	. 
	ld a,(bc)			;8de8	0a 	. 
	ld a,(bc)			;8de9	0a 	. 
	ld a,(bc)			;8dea	0a 	. 
	ld a,(de)			;8deb	1a 	. 
	ld a,(bc)			;8dec	0a 	. 
	ld a,(bc)			;8ded	0a 	. 
	ld a,(bc)			;8dee	0a 	. 
	ld a,(bc)			;8def	0a 	. 
	djnz $-97		;8df0	10 9d 	. . 
	xor e			;8df2	ab 	. 
	dec c			;8df3	0d 	. 
	ld a,(bc)			;8df4	0a 	. 
	ld a,(bc)			;8df5	0a 	. 
	ld a,(bc)			;8df6	0a 	. 
	ld a,(bc)			;8df7	0a 	. 
	nop			;8df8	00 	. 
	dec de			;8df9	1b 	. 
	djnz $+18		;8dfa	10 10 	. . 
	ld a,(bc)			;8dfc	0a 	. 
	ld a,(bc)			;8dfd	0a 	. 
	ld bc,00101h		;8dfe	01 01 01 	. . . 
	ld a,(de)			;8e01	1a 	. 
	nop			;8e02	00 	. 
	ld bc,00101h		;8e03	01 01 01 	. . . 
	ld a,(bc)			;8e06	0a 	. 
	ld a,(bc)			;8e07	0a 	. 
	ld a,(bc)			;8e08	0a 	. 
	ld a,(bc)			;8e09	0a 	. 
	nop			;8e0a	00 	. 
	ld a,(bc)			;8e0b	0a 	. 
	ld a,(bc)			;8e0c	0a 	. 
	ld a,(bc)			;8e0d	0a 	. 
	ld (bc),a			;8e0e	02 	. 
	sbc a,l			;8e0f	9d 	. 
	ld (bc),a			;8e10	02 	. 
	djnz $+3		;8e11	10 01 	. . 
	djnz $+4		;8e13	10 02 	. . 
	ld (bc),a			;8e15	02 	. 
	sbc a,l			;8e16	9d 	. 
	djnz $+16		;8e17	10 0e 	. . 
	nop			;8e19	00 	. 
	sbc a,l			;8e1a	9d 	. 
	nop			;8e1b	00 	. 
	ld (bc),a			;8e1c	02 	. 
	sbc a,l			;8e1d	9d 	. 
	ld a,(bc)			;8e1e	0a 	. 
	ld bc,0011fh		;8e1f	01 1f 01 	. . . 
	djnz $+3		;8e22	10 01 	. . 
	ld a,(bc)			;8e24	0a 	. 
	ld a,(bc)			;8e25	0a 	. 
	ld a,(bc)			;8e26	0a 	. 
	ld a,(bc)			;8e27	0a 	. 
	ld bc,00101h		;8e28	01 01 01 	. . . 
	nop			;8e2b	00 	. 
	ld bc,00a01h		;8e2c	01 01 0a 	. . . 
	ld a,(bc)			;8e2f	0a 	. 
	djnz $+33		;8e30	10 1f 	. . 
	djnz $+2		;8e32	10 00 	. . 
	ld a,(bc)			;8e34	0a 	. 
	ld a,(bc)			;8e35	0a 	. 
	ld a,(bc)			;8e36	0a 	. 
	ld a,(bc)			;8e37	0a 	. 
	ld e,016h		;8e38	1e 16 	. . 
	ld bc,09d00h		;8e3a	01 00 9d 	. . . 
	ld (bc),a			;8e3d	02 	. 
	ld a,(bc)			;8e3e	0a 	. 
	ld a,(bc)			;8e3f	0a 	. 
	jr $-83		;8e40	18 ab 	. . 
	sbc a,l			;8e42	9d 	. 
	ld bc,09d02h		;8e43	01 02 9d 	. . . 
	ld a,(bc)			;8e46	0a 	. 
	ld a,(bc)			;8e47	0a 	. 
	ld a,(bc)			;8e48	0a 	. 
	ld a,(bc)			;8e49	0a 	. 
	ld a,(bc)			;8e4a	0a 	. 
	ld a,(bc)			;8e4b	0a 	. 
	ld a,(bc)			;8e4c	0a 	. 
	ld a,(bc)			;8e4d	0a 	. 
	ld bc,00001h		;8e4e	01 01 00 	. . . 
	ld a,(bc)			;8e51	0a 	. 
	ld a,(bc)			;8e52	0a 	. 
	ld a,(bc)			;8e53	0a 	. 
	ld a,(bc)			;8e54	0a 	. 
	ld a,(bc)			;8e55	0a 	. 
	ld a,(bc)			;8e56	0a 	. 
	ld a,(bc)			;8e57	0a 	. 
	ld bc,01002h		;8e58	01 02 10 	. . . 
	djnz $-97		;8e5b	10 9d 	. . 
	ld a,(bc)			;8e5d	0a 	. 
	ld (bc),a			;8e5e	02 	. 
	djnz $-97		;8e5f	10 9d 	. . 
	dec c			;8e61	0d 	. 
	ld bc,00201h		;8e62	01 01 02 	. . . 
	ld a,(bc)			;8e65	0a 	. 
	sbc a,l			;8e66	9d 	. 
	ld bc,09d02h		;8e67	01 02 9d 	. . . 
	ld c,00dh		;8e6a	0e 0d 	. . 
	ld (bc),a			;8e6c	02 	. 
	ld a,(bc)			;8e6d	0a 	. 
	ld a,(bc)			;8e6e	0a 	. 
	ld a,(bc)			;8e6f	0a 	. 
	ld a,(bc)			;8e70	0a 	. 
	ld a,(bc)			;8e71	0a 	. 
	ld a,(bc)			;8e72	0a 	. 
	ld a,(bc)			;8e73	0a 	. 
	ld a,(bc)			;8e74	0a 	. 
	ld a,(bc)			;8e75	0a 	. 
	ld a,(bc)			;8e76	0a 	. 
	ld a,(bc)			;8e77	0a 	. 
	ld d,00ah		;8e78	16 0a 	. . 
	nop			;8e7a	00 	. 
	ld a,(bc)			;8e7b	0a 	. 
	ld a,(bc)			;8e7c	0a 	. 
	ld a,(bc)			;8e7d	0a 	. 
	ld a,(bc)			;8e7e	0a 	. 
	ld a,(bc)			;8e7f	0a 	. 
	ld e,h			;8e80	5c 	\ 
	sbc a,l			;8e81	9d 	. 
	nop			;8e82	00 	. 
	sbc a,l			;8e83	9d 	. 
	ld a,(bc)			;8e84	0a 	. 
	ld a,(bc)			;8e85	0a 	. 
	ld a,(bc)			;8e86	0a 	. 
	ld a,(bc)			;8e87	0a 	. 
	ld e,h			;8e88	5c 	\ 
	ld (bc),a			;8e89	02 	. 
	nop			;8e8a	00 	. 
	ld (bc),a			;8e8b	02 	. 
	ld a,(bc)			;8e8c	0a 	. 
	ld a,(bc)			;8e8d	0a 	. 
	ld a,(bc)			;8e8e	0a 	. 
	ld a,(bc)			;8e8f	0a 	. 
	ld e,h			;8e90	5c 	\ 
	sbc a,l			;8e91	9d 	. 
	ld bc,00a9dh		;8e92	01 9d 0a 	. . . 
	ld a,(bc)			;8e95	0a 	. 
	ld a,(bc)			;8e96	0a 	. 
	ld a,(bc)			;8e97	0a 	. 
	ld e,h			;8e98	5c 	\ 
	dec c			;8e99	0d 	. 
	djnz $-83		;8e9a	10 ab 	. . 
	ld a,(bc)			;8e9c	0a 	. 
	ld a,(bc)			;8e9d	0a 	. 
	ld a,(bc)			;8e9e	0a 	. 
	ld a,(bc)			;8e9f	0a 	. 
	ld e,h			;8ea0	5c 	\ 
	ld a,(bc)			;8ea1	0a 	. 
	nop			;8ea2	00 	. 
	ld a,(bc)			;8ea3	0a 	. 
	ld a,(bc)			;8ea4	0a 	. 
	ld a,(bc)			;8ea5	0a 	. 
	ld a,(bc)			;8ea6	0a 	. 
	ld a,(bc)			;8ea7	0a 	. 
	ld e,h			;8ea8	5c 	\ 
	ld a,(bc)			;8ea9	0a 	. 
	nop			;8eaa	00 	. 
	ld a,(bc)			;8eab	0a 	. 
	ld a,(bc)			;8eac	0a 	. 
	ld a,(bc)			;8ead	0a 	. 
	ld a,(bc)			;8eae	0a 	. 
	ld a,(bc)			;8eaf	0a 	. 
	ld e,h			;8eb0	5c 	\ 
	ld a,(bc)			;8eb1	0a 	. 
	nop			;8eb2	00 	. 
	ld a,(bc)			;8eb3	0a 	. 
	ld a,(bc)			;8eb4	0a 	. 
	ld a,(bc)			;8eb5	0a 	. 
	ld a,(bc)			;8eb6	0a 	. 
	ld a,(bc)			;8eb7	0a 	. 
	ld e,h			;8eb8	5c 	\ 
	ld a,(bc)			;8eb9	0a 	. 
	nop			;8eba	00 	. 
	ld a,(bc)			;8ebb	0a 	. 
	ld a,(bc)			;8ebc	0a 	. 
	ld a,(bc)			;8ebd	0a 	. 
	ld a,(bc)			;8ebe	0a 	. 
	ld (bc),a			;8ebf	02 	. 
	ld e,h			;8ec0	5c 	\ 
	ld a,(bc)			;8ec1	0a 	. 
	nop			;8ec2	00 	. 
	ld a,(bc)			;8ec3	0a 	. 
	ld a,(bc)			;8ec4	0a 	. 
	ld a,(bc)			;8ec5	0a 	. 
	ld a,(bc)			;8ec6	0a 	. 
	ld a,(bc)			;8ec7	0a 	. 
	ld e,h			;8ec8	5c 	\ 
	ld a,(bc)			;8ec9	0a 	. 
	nop			;8eca	00 	. 
	ld a,(bc)			;8ecb	0a 	. 
	ld a,(bc)			;8ecc	0a 	. 
	ld a,(bc)			;8ecd	0a 	. 
	ld a,(bc)			;8ece	0a 	. 
	ld a,(bc)			;8ecf	0a 	. 
	ld e,c			;8ed0	59 	Y 
	ld a,(bc)			;8ed1	0a 	. 
	nop			;8ed2	00 	. 
	ld a,(bc)			;8ed3	0a 	. 
	ld a,(bc)			;8ed4	0a 	. 
	ld a,(bc)			;8ed5	0a 	. 
	inc bc			;8ed6	03 	. 
	ld (bc),a			;8ed7	02 	. 
	ld c,09dh		;8ed8	0e 9d 	. . 
	ld bc,010abh		;8eda	01 ab 10 	. . . 
	rrca			;8edd	0f 	. 
	add hl,bc			;8ede	09 	. 
	djnz $+43		;8edf	10 29 	. ) 
	jr z,$-97		;8ee1	28 9d 	( . 
	djnz $+2		;8ee3	10 00 	. . 
	ex af,af'			;8ee5	08 	. 
	dec b			;8ee6	05 	. 
	ld bc,0100eh		;8ee7	01 0e 10 	. . . 
	dec de			;8eea	1b 	. 
	ld bc,00601h		;8eeb	01 01 06 	. . . 
	ld a,(bc)			;8eee	0a 	. 
	rla			;8eef	17 	. 
	nop			;8ef0	00 	. 
	nop			;8ef1	00 	. 
	jr nz,$+3		;8ef2	20 01 	  . 
	ld bc,00a06h		;8ef4	01 06 0a 	. . . 
	ld d,000h		;8ef7	16 00 	. . 
	ld bc,01f37h		;8ef9	01 37 1f 	. 7 . 
	djnz $-97		;8efc	10 9d 	. . 
	ld a,(bc)			;8efe	0a 	. 
	sbc a,l			;8eff	9d 	. 
	ld bc,0259dh		;8f00	01 9d 25 	. . % 
	rla			;8f03	17 	. 
	nop			;8f04	00 	. 
	ld (bc),a			;8f05	02 	. 
	ld (bc),a			;8f06	02 	. 
	ld (bc),a			;8f07	02 	. 
	xor e			;8f08	ab 	. 
	ld (bc),a			;8f09	02 	. 
	sbc a,l			;8f0a	9d 	. 
	ld d,001h		;8f0b	16 01 	. . 
	sbc a,l			;8f0d	9d 	. 
	ld a,(bc)			;8f0e	0a 	. 
	djnz $+18		;8f0f	10 10 	. . 
	djnz $+18		;8f11	10 10 	. . 
	djnz $+18		;8f13	10 10 	. . 
	inc b			;8f15	04 	. 
	ld a,(bc)			;8f16	0a 	. 
	ld a,(bc)			;8f17	0a 	. 
	nop			;8f18	00 	. 
	ld bc,00100h		;8f19	01 00 01 	. . . 
	nop			;8f1c	00 	. 
	ld b,002h		;8f1d	06 02 	. . 
	sbc a,l			;8f1f	9d 	. 
	nop			;8f20	00 	. 
	ld (bc),a			;8f21	02 	. 
	nop			;8f22	00 	. 
	xor e			;8f23	ab 	. 
	nop			;8f24	00 	. 
	inc b			;8f25	04 	. 
	sbc a,l			;8f26	9d 	. 
	ld (bc),a			;8f27	02 	. 
	nop			;8f28	00 	. 
	sbc a,l			;8f29	9d 	. 
	nop			;8f2a	00 	. 
	ld (bc),a			;8f2b	02 	. 
	nop			;8f2c	00 	. 
	sbc a,l			;8f2d	9d 	. 
	ld (bc),a			;8f2e	02 	. 
	sbc a,l			;8f2f	9d 	. 
	nop			;8f30	00 	. 
	ld (bc),a			;8f31	02 	. 
	nop			;8f32	00 	. 
	sbc a,l			;8f33	9d 	. 
	ld bc,00a02h		;8f34	01 02 0a 	. . . 
	ld a,(bc)			;8f37	0a 	. 
	ld bc,0019dh		;8f38	01 9d 01 	. . . 
	ld (bc),a			;8f3b	02 	. 
	ld (bc),a			;8f3c	02 	. 
	sbc a,l			;8f3d	9d 	. 
	dec b			;8f3e	05 	. 
	ld d,000h		;8f3f	16 00 	. . 
	ld bc,00a01h		;8f41	01 01 0a 	. . . 
	ld a,(bc)			;8f44	0a 	. 
	ld a,(bc)			;8f45	0a 	. 
	inc bc			;8f46	03 	. 
	ld (bc),a			;8f47	02 	. 
	ld bc,0ab9dh		;8f48	01 9d ab 	. . . 
	ld a,(bc)			;8f4b	0a 	. 
	ld a,(bc)			;8f4c	0a 	. 
	ld a,(bc)			;8f4d	0a 	. 
	ld (bc),a			;8f4e	02 	. 
	ld (bc),a			;8f4f	02 	. 
	ld (bc),a			;8f50	02 	. 
	dec c			;8f51	0d 	. 
	ld (bc),a			;8f52	02 	. 
	ld a,(bc)			;8f53	0a 	. 
	ld a,(bc)			;8f54	0a 	. 
	ld a,(bc)			;8f55	0a 	. 
	sbc a,l			;8f56	9d 	. 
	ld (bc),a			;8f57	02 	. 
	ld c,002h		;8f58	0e 02 	. . 
	sbc a,l			;8f5a	9d 	. 
	ld a,(bc)			;8f5b	0a 	. 
	ld a,(bc)			;8f5c	0a 	. 
	ld a,(bc)			;8f5d	0a 	. 
	ld (bc),a			;8f5e	02 	. 
	ld (bc),a			;8f5f	02 	. 
	ld (bc),a			;8f60	02 	. 
	dec c			;8f61	0d 	. 
	ld (bc),a			;8f62	02 	. 
	ld a,(bc)			;8f63	0a 	. 
	ld a,(bc)			;8f64	0a 	. 
	ld a,(bc)			;8f65	0a 	. 
	dec b			;8f66	05 	. 
	ld bc,00101h		;8f67	01 01 01 	. . . 
	ld bc,00101h		;8f6a	01 01 01 	. . . 
	ld b,003h		;8f6d	06 03 	. . 
	ld (bc),a			;8f6f	02 	. 
	sbc a,l			;8f70	9d 	. 
	dec c			;8f71	0d 	. 
	ld (bc),a			;8f72	02 	. 
	sbc a,l			;8f73	9d 	. 
	ld (bc),a			;8f74	02 	. 
	inc b			;8f75	04 	. 
	inc bc			;8f76	03 	. 
	sbc a,l			;8f77	9d 	. 
	ld (bc),a			;8f78	02 	. 
	sbc a,l			;8f79	9d 	. 
	ld (bc),a			;8f7a	02 	. 
	dec c			;8f7b	0d 	. 
	ld (bc),a			;8f7c	02 	. 
	inc b			;8f7d	04 	. 
	inc bc			;8f7e	03 	. 
	dec c			;8f7f	0d 	. 
	ld (bc),a			;8f80	02 	. 
	dec c			;8f81	0d 	. 
	ld (bc),a			;8f82	02 	. 
	ld (bc),a			;8f83	02 	. 
	sbc a,l			;8f84	9d 	. 
	inc b			;8f85	04 	. 
	inc bc			;8f86	03 	. 
	ld (bc),a			;8f87	02 	. 
	sbc a,l			;8f88	9d 	. 
	dec c			;8f89	0d 	. 
	djnz $-97		;8f8a	10 9d 	. . 
	ld (bc),a			;8f8c	02 	. 
	sbc a,l			;8f8d	9d 	. 
	ld a,(bc)			;8f8e	0a 	. 
	ld a,(bc)			;8f8f	0a 	. 
	ld a,(bc)			;8f90	0a 	. 
	ld a,(bc)			;8f91	0a 	. 
	ld a,(bc)			;8f92	0a 	. 
	ld a,(bc)			;8f93	0a 	. 
	ld a,(bc)			;8f94	0a 	. 
	ld a,(bc)			;8f95	0a 	. 
	ld a,(bc)			;8f96	0a 	. 
	ld (bc),a			;8f97	02 	. 
	sbc a,l			;8f98	9d 	. 
	ld (bc),a			;8f99	02 	. 
	ld (bc),a			;8f9a	02 	. 
	sbc a,l			;8f9b	9d 	. 
	ld (bc),a			;8f9c	02 	. 
	ld a,(bc)			;8f9d	0a 	. 
	ld a,(bc)			;8f9e	0a 	. 
	ld (bc),a			;8f9f	02 	. 
	ld c,029h		;8fa0	0e 29 	. ) 
	jr z,$+15		;8fa2	28 0d 	( . 
	ld (bc),a			;8fa4	02 	. 
	ld a,(bc)			;8fa5	0a 	. 
	ld a,(bc)			;8fa6	0a 	. 
	djnz $+16		;8fa7	10 0e 	. . 
	add hl,hl			;8fa9	29 	) 
	jr z,$+15		;8faa	28 0d 	( . 
	ld (bc),a			;8fac	02 	. 
	ld a,(bc)			;8fad	0a 	. 
	sbc a,l			;8fae	9d 	. 
	ld bc,00a0ah		;8faf	01 0a 0a 	. . . 
	ld a,(bc)			;8fb2	0a 	. 
	ld a,(bc)			;8fb3	0a 	. 
	ld a,(bc)			;8fb4	0a 	. 
	ld a,(bc)			;8fb5	0a 	. 
	dec b			;8fb6	05 	. 
	ld e,01eh		;8fb7	1e 1e 	. . 
	ld bc,0011eh		;8fb9	01 1e 01 	. . . 
	ld e,059h		;8fbc	1e 59 	. Y 
	ld a,(bc)			;8fbe	0a 	. 
	inc (hl)			;8fbf	34 	4 
	ld (hl),010h		;8fc0	36 10 	6 . 
	ld (hl),010h		;8fc2	36 10 	6 . 
	rla			;8fc4	17 	. 
	ld a,(bc)			;8fc5	0a 	. 
	ld a,(bc)			;8fc6	0a 	. 
	inc (hl)			;8fc7	34 	4 
	nop			;8fc8	00 	. 
	nop			;8fc9	00 	. 
	nop			;8fca	00 	. 
	nop			;8fcb	00 	. 
	rla			;8fcc	17 	. 
	ld a,(bc)			;8fcd	0a 	. 
	ld a,(bc)			;8fce	0a 	. 
	inc (hl)			;8fcf	34 	4 
	nop			;8fd0	00 	. 
	nop			;8fd1	00 	. 
	nop			;8fd2	00 	. 
	nop			;8fd3	00 	. 
	rla			;8fd4	17 	. 
	ld a,(bc)			;8fd5	0a 	. 
	ld a,(bc)			;8fd6	0a 	. 
	jr $+3		;8fd7	18 01 	. . 
	ld bc,00101h		;8fd9	01 01 01 	. . . 
	ld d,00ah		;8fdc	16 0a 	. . 
	ld a,(bc)			;8fde	0a 	. 
	ld a,(bc)			;8fdf	0a 	. 
	ccf			;8fe0	3f 	? 
	ld bc,00100h		;8fe1	01 00 01 	. . . 
	nop			;8fe4	00 	. 
	ex af,af'			;8fe5	08 	. 
	ld (bc),a			;8fe6	02 	. 
	ld (bc),a			;8fe7	02 	. 
	djnz $+18		;8fe8	10 10 	. . 
	ld bc,00102h		;8fea	01 02 01 	. . . 
	ld b,003h		;8fed	06 03 	. . 
	sbc a,l			;8fef	9d 	. 
	ld bc,01001h		;8ff0	01 01 10 	. . . 
	sbc a,l			;8ff3	9d 	. 
	ld (bc),a			;8ff4	02 	. 
	inc b			;8ff5	04 	. 
	add hl,bc			;8ff6	09 	. 
	djnz $+4		;8ff7	10 02 	. . 
	sbc a,l			;8ff9	9d 	. 
	ld bc,01002h		;8ffa	01 02 10 	. . . 
	add hl,de			;8ffd	19 	. 
	dec b			;8ffe	05 	. 
	ld bc,0029dh		;8fff	01 9d 02 	. . . 
	ld (bc),a			;9002	02 	. 
	sbc a,l			;9003	9d 	. 
	ld bc,00a06h		;9004	01 06 0a 	. . . 
	ld a,(bc)			;9007	0a 	. 
	nop			;9008	00 	. 
	ld bc,00116h		;9009	01 16 01 	. . . 
	nop			;900c	00 	. 
	ld a,(bc)			;900d	0a 	. 
	ld a,(bc)			;900e	0a 	. 
	ld a,(bc)			;900f	0a 	. 
	ld bc,0029dh		;9010	01 9d 02 	. . . 
	sbc a,l			;9013	9d 	. 
	ld bc,00a9dh		;9014	01 9d 0a 	. . . 
	ld a,(bc)			;9017	0a 	. 
	add hl,hl			;9018	29 	) 
	jr z,$+18		;9019	28 10 	( . 
	ld (bc),a			;901b	02 	. 
	sbc a,l			;901c	9d 	. 
	ld a,(bc)			;901d	0a 	. 
	ld a,(bc)			;901e	0a 	. 
	ld a,(bc)			;901f	0a 	. 
	add hl,hl			;9020	29 	) 
	jr z,$+3		;9021	28 01 	( . 
	sbc a,l			;9023	9d 	. 
	xor e			;9024	ab 	. 
	ld a,(bc)			;9025	0a 	. 
	ld a,(bc)			;9026	0a 	. 
	ld a,(bc)			;9027	0a 	. 
	ld a,(bc)			;9028	0a 	. 
	ld a,(bc)			;9029	0a 	. 
	ld a,(bc)			;902a	0a 	. 
	ld a,(bc)			;902b	0a 	. 
	ld a,(bc)			;902c	0a 	. 
	ld a,(bc)			;902d	0a 	. 
	ld a,(bc)			;902e	0a 	. 
	ld a,(bc)			;902f	0a 	. 
	ld a,(bc)			;9030	0a 	. 
	ld a,(bc)			;9031	0a 	. 
	ld a,(bc)			;9032	0a 	. 
	jr nz,$+12		;9033	20 0a 	  . 
	ld a,(bc)			;9035	0a 	. 
	ld a,(bc)			;9036	0a 	. 
	ld a,(bc)			;9037	0a 	. 
	ld a,(bc)			;9038	0a 	. 
	ld a,(bc)			;9039	0a 	. 
	ld a,(bc)			;903a	0a 	. 
	ld a,(de)			;903b	1a 	. 
	ld a,(bc)			;903c	0a 	. 
	ld a,(bc)			;903d	0a 	. 
	ld (bc),a			;903e	02 	. 
	sbc a,l			;903f	9d 	. 
	ld (bc),a			;9040	02 	. 
	sbc a,l			;9041	9d 	. 
	ld (bc),a			;9042	02 	. 
	dec c			;9043	0d 	. 
	ld (bc),a			;9044	02 	. 
	inc b			;9045	04 	. 
	ld a,(bc)			;9046	0a 	. 
	ld a,(bc)			;9047	0a 	. 
	ld a,(bc)			;9048	0a 	. 
	ld a,(bc)			;9049	0a 	. 
	rra			;904a	1f 	. 
	ld a,(bc)			;904b	0a 	. 
	ld a,(bc)			;904c	0a 	. 
	ld a,(bc)			;904d	0a 	. 
	ld a,(bc)			;904e	0a 	. 
	ld a,(bc)			;904f	0a 	. 
	ld a,(bc)			;9050	0a 	. 
	ld a,(bc)			;9051	0a 	. 
	rla			;9052	17 	. 
	ld a,(bc)			;9053	0a 	. 
	ld a,(bc)			;9054	0a 	. 
	ld a,(bc)			;9055	0a 	. 
	ld a,(bc)			;9056	0a 	. 
	ld a,(bc)			;9057	0a 	. 
	ld a,(bc)			;9058	0a 	. 
	ld a,(bc)			;9059	0a 	. 
	ld a,(bc)			;905a	0a 	. 
	ld a,(bc)			;905b	0a 	. 
	ld a,(bc)			;905c	0a 	. 
	ld a,(bc)			;905d	0a 	. 
	ld a,(bc)			;905e	0a 	. 
	ld (bc),a			;905f	02 	. 
	sbc a,l			;9060	9d 	. 
	ld (bc),a			;9061	02 	. 
	sbc a,l			;9062	9d 	. 
	ld (bc),a			;9063	02 	. 
	ld a,(bc)			;9064	0a 	. 
	ld a,(bc)			;9065	0a 	. 
	ld a,(bc)			;9066	0a 	. 
	dec de			;9067	1b 	. 
	ld (bc),a			;9068	02 	. 
	sbc a,l			;9069	9d 	. 
	ld (bc),a			;906a	02 	. 
	ld (bc),a			;906b	02 	. 
	ld (bc),a			;906c	02 	. 
	sbc a,l			;906d	9d 	. 
	ld a,(bc)			;906e	0a 	. 
	jr nz,$+18		;906f	20 10 	  . 
	djnz $+18		;9071	10 10 	. . 
	djnz $+33		;9073	10 1f 	. . 
	ld a,(bc)			;9075	0a 	. 
	ld a,(bc)			;9076	0a 	. 
	ld a,(bc)			;9077	0a 	. 
	ld a,(bc)			;9078	0a 	. 
	ld a,(bc)			;9079	0a 	. 
	ld a,(bc)			;907a	0a 	. 
	ld a,(bc)			;907b	0a 	. 
	ld a,(bc)			;907c	0a 	. 
	ld a,(bc)			;907d	0a 	. 
	ld a,(bc)			;907e	0a 	. 
	ld a,(bc)			;907f	0a 	. 
	ld a,(bc)			;9080	0a 	. 
	ld a,(bc)			;9081	0a 	. 
	ld a,(bc)			;9082	0a 	. 
	ld a,(bc)			;9083	0a 	. 
	ld a,(bc)			;9084	0a 	. 
	ld a,(bc)			;9085	0a 	. 
	ld a,(bc)			;9086	0a 	. 
	ld a,(bc)			;9087	0a 	. 
	ld a,(bc)			;9088	0a 	. 
	ld a,(bc)			;9089	0a 	. 
	ld a,(bc)			;908a	0a 	. 
	ld a,(bc)			;908b	0a 	. 
	ld a,(bc)			;908c	0a 	. 
	ld a,(bc)			;908d	0a 	. 
	ld a,(bc)			;908e	0a 	. 
	ld a,(bc)			;908f	0a 	. 
	add hl,de			;9090	19 	. 
	sbc a,l			;9091	9d 	. 
	xor e			;9092	ab 	. 
	ld a,(bc)			;9093	0a 	. 
	djnz $+17		;9094	10 0f 	. . 
	ld a,(bc)			;9096	0a 	. 
	ld a,(bc)			;9097	0a 	. 
	rla			;9098	17 	. 
	djnz $-97		;9099	10 9d 	. . 
	ld (bc),a			;909b	02 	. 
	ld bc,00a06h		;909c	01 06 0a 	. . . 
	ld a,(bc)			;909f	0a 	. 
	ld d,001h		;90a0	16 01 	. . 
	ld (bc),a			;90a2	02 	. 
	dec de			;90a3	1b 	. 
	sbc a,l			;90a4	9d 	. 
	inc b			;90a5	04 	. 
	ccf			;90a6	3f 	? 
	ccf			;90a7	3f 	? 
	ccf			;90a8	3f 	? 
	ccf			;90a9	3f 	? 
	ccf			;90aa	3f 	? 
	ccf			;90ab	3f 	? 
	ccf			;90ac	3f 	? 
	ccf			;90ad	3f 	? 
	ccf			;90ae	3f 	? 
	ccf			;90af	3f 	? 
	ccf			;90b0	3f 	? 
	ccf			;90b1	3f 	? 
	ccf			;90b2	3f 	? 
	ccf			;90b3	3f 	? 
	ccf			;90b4	3f 	? 
	ccf			;90b5	3f 	? 
	ccf			;90b6	3f 	? 
	ccf			;90b7	3f 	? 
	ccf			;90b8	3f 	? 
	ccf			;90b9	3f 	? 
	ccf			;90ba	3f 	? 
	ccf			;90bb	3f 	? 
	ccf			;90bc	3f 	? 
	ccf			;90bd	3f 	? 
	ccf			;90be	3f 	? 
	ccf			;90bf	3f 	? 
	ccf			;90c0	3f 	? 
	ccf			;90c1	3f 	? 
	ccf			;90c2	3f 	? 
	ccf			;90c3	3f 	? 
	ccf			;90c4	3f 	? 
	ccf			;90c5	3f 	? 
	ccf			;90c6	3f 	? 
	ccf			;90c7	3f 	? 
	ccf			;90c8	3f 	? 
	ld hl,03f22h		;90c9	21 22 3f 	! " ? 
	ccf			;90cc	3f 	? 
	ccf			;90cd	3f 	? 
	rlca			;90ce	07 	. 
	ld bc,00001h		;90cf	01 01 00 	. . . 
	ld e,h			;90d2	5c 	\ 
	ld a,(bc)			;90d3	0a 	. 
	ld a,(bc)			;90d4	0a 	. 
	ld a,(bc)			;90d5	0a 	. 
	rlca			;90d6	07 	. 
	ld c,002h		;90d7	0e 02 	. . 
	nop			;90d9	00 	. 
	ld e,h			;90da	5c 	\ 
	ld a,(bc)			;90db	0a 	. 
	ld a,(bc)			;90dc	0a 	. 
	ld a,(bc)			;90dd	0a 	. 
	rlca			;90de	07 	. 
	ld (bc),a			;90df	02 	. 
	dec c			;90e0	0d 	. 
	nop			;90e1	00 	. 
	ld e,h			;90e2	5c 	\ 
	ld a,(bc)			;90e3	0a 	. 
	ld a,(bc)			;90e4	0a 	. 
	ld a,(bc)			;90e5	0a 	. 
	rlca			;90e6	07 	. 
	ld c,002h		;90e7	0e 02 	. . 
	nop			;90e9	00 	. 
	ld e,h			;90ea	5c 	\ 
	ld a,(bc)			;90eb	0a 	. 
	ld a,(bc)			;90ec	0a 	. 
	ld a,(bc)			;90ed	0a 	. 
	dec b			;90ee	05 	. 
	djnz $+23		;90ef	10 15 	. . 
	ld bc,00a59h		;90f1	01 59 0a 	. Y . 
	ld a,(bc)			;90f4	0a 	. 
	ld a,(bc)			;90f5	0a 	. 
	ld d,026h		;90f6	16 26 	. & 
	ld e,001h		;90f8	1e 01 	. . 
	ld bc,00101h		;90fa	01 01 01 	. . . 
	ld bc,02009h		;90fd	01 09 20 	. .   
	ld (hl),00ah		;9100	36 0a 	6 . 
	ld a,(bc)			;9102	0a 	. 
	djnz $+18		;9103	10 10 	. . 
	sbc a,l			;9105	9d 	. 
	rlca			;9106	07 	. 
	jr nz,$+2		;9107	20 00 	  . 
	ld a,(bc)			;9109	0a 	. 
	ld a,(bc)			;910a	0a 	. 
	nop			;910b	00 	. 
	ld e,002h		;910c	1e 02 	. . 
	dec b			;910e	05 	. 
	ld a,(de)			;910f	1a 	. 
	nop			;9110	00 	. 
	ld a,(bc)			;9111	0a 	. 
	ld a,(bc)			;9112	0a 	. 
	nop			;9113	00 	. 
	jr $-97		;9114	18 9d 	. . 
	inc bc			;9116	03 	. 
	ld c,001h		;9117	0e 01 	. . 
	ld a,(bc)			;9119	0a 	. 
	ld a,(bc)			;911a	0a 	. 
	ld bc,002abh		;911b	01 ab 02 	. . . 
	dec b			;911e	05 	. 
	ld bc,00a3fh		;911f	01 3f 0a 	. ? . 
	nop			;9122	00 	. 
	nop			;9123	00 	. 
	nop			;9124	00 	. 
	ld e,003h		;9125	1e 03 	. . 
	dec c			;9127	0d 	. 
	sbc a,l			;9128	9d 	. 
	djnz $+3		;9129	10 01 	. . 
	nop			;912b	00 	. 
	nop			;912c	00 	. 
	ex af,af'			;912d	08 	. 
	inc bc			;912e	03 	. 
	sbc a,l			;912f	9d 	. 
	djnz $+3		;9130	10 01 	. . 
	sbc a,l			;9132	9d 	. 
	ld bc,00800h		;9133	01 00 08 	. . . 
	add hl,bc			;9136	09 	. 
	dec de			;9137	1b 	. 
	ld bc,0100ah		;9138	01 0a 10 	. . . 
	rra			;913b	1f 	. 
	nop			;913c	00 	. 
	ex af,af'			;913d	08 	. 
	dec b			;913e	05 	. 
	ld a,(de)			;913f	1a 	. 
	sbc a,l			;9140	9d 	. 
	ld a,(bc)			;9141	0a 	. 
	nop			;9142	00 	. 
	ld d,001h		;9143	16 01 	. . 
	ld b,001h		;9145	06 01 	. . 
	nop			;9147	00 	. 
	ld d,00ah		;9148	16 0a 	. . 
	nop			;914a	00 	. 
	nop			;914b	00 	. 
	ld bc,00a01h		;914c	01 01 0a 	. . . 
	nop			;914f	00 	. 
	djnz $+12		;9150	10 0a 	. . 
	ld e,001h		;9152	1e 01 	. . 
	xor e			;9154	ab 	. 
	ld (bc),a			;9155	02 	. 
	ld a,(bc)			;9156	0a 	. 
	nop			;9157	00 	. 
	nop			;9158	00 	. 
	ld a,(bc)			;9159	0a 	. 
	ex af,af'			;915a	08 	. 
	ld a,(bc)			;915b	0a 	. 
	djnz $-97		;915c	10 9d 	. . 
	ld a,(bc)			;915e	0a 	. 
	nop			;915f	00 	. 
	nop			;9160	00 	. 
	ld a,(bc)			;9161	0a 	. 
	ex af,af'			;9162	08 	. 
	ld a,(bc)			;9163	0a 	. 
	ld bc,09d04h		;9164	01 04 9d 	. . . 
	ld bc,00a00h		;9167	01 00 0a 	. . . 
	ex af,af'			;916a	08 	. 
	ld a,(bc)			;916b	0a 	. 
	ld c,004h		;916c	0e 04 	. . 
	ld bc,00101h		;916e	01 01 01 	. . . 
	nop			;9171	00 	. 
	ld bc,01a01h		;9172	01 01 1a 	. . . 
	ld b,002h		;9175	06 02 	. . 
	ld (bc),a			;9177	02 	. 
	ld (bc),a			;9178	02 	. 
	ld bc,00210h		;9179	01 10 02 	. . . 
	ld c,004h		;917c	0e 04 	. . 
	daa			;917e	27 	' 
	rrca			;917f	0f 	. 
	ld (bc),a			;9180	02 	. 
	ld c,001h		;9181	0e 01 	. . 
	ld (bc),a			;9183	02 	. 
	ld c,004h		;9184	0e 04 	. . 
	dec b			;9186	05 	. 
	jr $+41		;9187	18 27 	. ' 
	rrca			;9189	0f 	. 
	add hl,bc			;918a	09 	. 
	add hl,de			;918b	19 	. 
	ld (bc),a			;918c	02 	. 
	ld (bc),a			;918d	02 	. 
	inc bc			;918e	03 	. 
	ld (bc),a			;918f	02 	. 
	dec h			;9190	25 	% 
	ex af,af'			;9191	08 	. 
	rlca			;9192	07 	. 
	ex af,af'			;9193	08 	. 
	ld a,(bc)			;9194	0a 	. 
	ld a,(bc)			;9195	0a 	. 
	ld bc,00101h		;9196	01 01 01 	. . . 
	nop			;9199	00 	. 
	ld bc,00101h		;919a	01 01 01 	. . . 
	ld b,002h		;919d	06 02 	. . 
	ld (bc),a			;919f	02 	. 
	sbc a,l			;91a0	9d 	. 
	ld bc,00210h		;91a1	01 10 02 	. . . 
	sbc a,l			;91a4	9d 	. 
	inc b			;91a5	04 	. 
	ld (bc),a			;91a6	02 	. 
	ld (bc),a			;91a7	02 	. 
	djnz $+4		;91a8	10 02 	. . 
	ld bc,002abh		;91aa	01 ab 02 	. . . 
	inc b			;91ad	04 	. 
	sbc a,l			;91ae	9d 	. 
	ld (bc),a			;91af	02 	. 
	ld bc,00202h		;91b0	01 02 02 	. . . 
	djnz $-97		;91b3	10 9d 	. . 
	inc b			;91b5	04 	. 
	ld (bc),a			;91b6	02 	. 
	sbc a,l			;91b7	9d 	. 
	djnz $+4		;91b8	10 02 	. . 
	ld (bc),a			;91ba	02 	. 
	ld bc,00402h		;91bb	01 02 04 	. . . 
	dec b			;91be	05 	. 
	ld bc,01a01h		;91bf	01 01 1a 	. . . 
	nop			;91c2	00 	. 
	ld a,(bc)			;91c3	0a 	. 
	ld a,(bc)			;91c4	0a 	. 
	ld a,(bc)			;91c5	0a 	. 
	add hl,bc			;91c6	09 	. 
	add hl,de			;91c7	19 	. 
	xor e			;91c8	ab 	. 
	ld (bc),a			;91c9	02 	. 
	ld bc,00a0ah		;91ca	01 0a 0a 	. . . 
	ld a,(bc)			;91cd	0a 	. 
	dec b			;91ce	05 	. 
	jr $+18		;91cf	18 10 	. . 
	ld (bc),a			;91d1	02 	. 
	ld (bc),a			;91d2	02 	. 
	ld (bc),a			;91d3	02 	. 
	sbc a,l			;91d4	9d 	. 
	ld (bc),a			;91d5	02 	. 
	ld (bc),a			;91d6	02 	. 
	sbc a,l			;91d7	9d 	. 
	ld bc,00a0ah		;91d8	01 0a 0a 	. . . 
	ld a,(bc)			;91db	0a 	. 
	ld a,(bc)			;91dc	0a 	. 
	ld a,(bc)			;91dd	0a 	. 
	ld a,(bc)			;91de	0a 	. 
	ld a,(bc)			;91df	0a 	. 
	ld a,(bc)			;91e0	0a 	. 
	ld a,(bc)			;91e1	0a 	. 
	djnz $-97		;91e2	10 9d 	. . 
	ld (bc),a			;91e4	02 	. 
	sbc a,l			;91e5	9d 	. 
	rlca			;91e6	07 	. 
	nop			;91e7	00 	. 
	ccf			;91e8	3f 	? 
	ld bc,00101h		;91e9	01 01 01 	. . . 
	ld bc,00501h		;91ec	01 01 05 	. . . 
	ld h,010h		;91ef	26 10 	& . 
	ld (bc),a			;91f1	02 	. 
	ld c,010h		;91f2	0e 10 	. . 
	sbc a,l			;91f4	9d 	. 
	rrca			;91f5	0f 	. 
	sbc a,l			;91f6	9d 	. 
	dec h			;91f7	25 	% 
	ld bc,0109dh		;91f8	01 9d 10 	. . . 
	ld bc,0060dh		;91fb	01 0d 06 	. . . 
	ld a,(bc)			;91fe	0a 	. 
	ld a,(bc)			;91ff	0a 	. 
	djnz $+16		;9200	10 0e 	. . 
	ld bc,0020dh		;9202	01 0d 02 	. . . 
	rrca			;9205	0f 	. 
	ld (bc),a			;9206	02 	. 
	ld (bc),a			;9207	02 	. 
	ld bc,00d9dh		;9208	01 9d 0d 	. . . 
	ld (bc),a			;920b	02 	. 
	sbc a,l			;920c	9d 	. 
	ld b,001h		;920d	06 01 	. . 
	ld bc,03900h		;920f	01 00 39 	. . 9 
	dec e			;9212	1d 	. 
	ld bc,00601h		;9213	01 01 06 	. . . 
	ld a,(bc)			;9216	0a 	. 
	djnz $+3		;9217	10 01 	. . 
	jr $+18		;9219	18 10 	. . 
	sbc a,l			;921b	9d 	. 
	ld (bc),a			;921c	02 	. 
	ld a,(bc)			;921d	0a 	. 
	ld a,(bc)			;921e	0a 	. 
	ld bc,0109dh		;921f	01 9d 10 	. . . 
	ld bc,01002h		;9222	01 02 10 	. . . 
	ld a,(bc)			;9225	0a 	. 
	ld a,(bc)			;9226	0a 	. 
	sbc a,l			;9227	9d 	. 
	ld (bc),a			;9228	02 	. 
	ld bc,09d02h		;9229	01 02 9d 	. . . 
	ld bc,00a0ah		;922c	01 0a 0a 	. . . 
	ld a,(bc)			;922f	0a 	. 
	ld a,(bc)			;9230	0a 	. 
	ld a,(bc)			;9231	0a 	. 
	ld a,(bc)			;9232	0a 	. 
	ld a,(bc)			;9233	0a 	. 
	ld a,(bc)			;9234	0a 	. 
	ld a,(bc)			;9235	0a 	. 
	dec b			;9236	05 	. 
	ld bc,01600h		;9237	01 00 16 	. . . 
	ld bc,00100h		;923a	01 00 01 	. . . 
	ld b,009h		;923d	06 09 	. . 
	dec de			;923f	1b 	. 
	nop			;9240	00 	. 
	djnz $+18		;9241	10 10 	. . 
	nop			;9243	00 	. 
	dec de			;9244	1b 	. 
	rrca			;9245	0f 	. 
	dec b			;9246	05 	. 
	ld a,(de)			;9247	1a 	. 
	nop			;9248	00 	. 
	nop			;9249	00 	. 
	nop			;924a	00 	. 
	nop			;924b	00 	. 
	ld a,(de)			;924c	1a 	. 
	ld b,009h		;924d	06 09 	. . 
	rra			;924f	1f 	. 
	nop			;9250	00 	. 
	nop			;9251	00 	. 
	nop			;9252	00 	. 
	nop			;9253	00 	. 
	rra			;9254	1f 	. 
	rrca			;9255	0f 	. 
	dec b			;9256	05 	. 
	ld d,001h		;9257	16 01 	. . 
	ld bc,00101h		;9259	01 01 01 	. . . 
	ld d,006h		;925c	16 06 	. . 
	ld a,(bc)			;925e	0a 	. 
	ld a,(bc)			;925f	0a 	. 
	ld a,(bc)			;9260	0a 	. 
	ld a,(bc)			;9261	0a 	. 
	nop			;9262	00 	. 
	ld a,(de)			;9263	1a 	. 
	ld bc,01006h		;9264	01 06 10 	. . . 
	ld (bc),a			;9267	02 	. 
	sbc a,l			;9268	9d 	. 
	djnz $+3		;9269	10 01 	. . 
	sbc a,l			;926b	9d 	. 
	ld a,(bc)			;926c	0a 	. 
	ld a,(bc)			;926d	0a 	. 
	ld bc,0109dh		;926e	01 9d 10 	. . . 
	ld bc,010abh		;9271	01 ab 10 	. . . 
	ld a,(bc)			;9274	0a 	. 
	ld a,(bc)			;9275	0a 	. 
	ld a,(bc)			;9276	0a 	. 
	djnz $+2		;9277	10 00 	. . 
	djnz $+18		;9279	10 10 	. . 
	nop			;927b	00 	. 
	ld a,(bc)			;927c	0a 	. 
	ld a,(bc)			;927d	0a 	. 
	ld a,(bc)			;927e	0a 	. 
	ld l,d			;927f	6a 	j 
	ld l,d			;9280	6a 	j 
	ld l,d			;9281	6a 	j 
	ld l,d			;9282	6a 	j 
	ld l,d			;9283	6a 	j 
	ld a,(bc)			;9284	0a 	. 
	ld a,(bc)			;9285	0a 	. 
	ld bc,0013fh		;9286	01 3f 01 	. ? . 
	ld b,007h		;9289	06 07 	. . 
	ex af,af'			;928b	08 	. 
	ld a,(bc)			;928c	0a 	. 
	ld a,(bc)			;928d	0a 	. 
	ld a,(bc)			;928e	0a 	. 
	ld (bc),a			;928f	02 	. 
	sbc a,l			;9290	9d 	. 
	djnz $+39		;9291	10 25 	. % 
	ld b,010h		;9293	06 10 	. . 
	djnz $+12		;9295	10 0a 	. . 
	sbc a,l			;9297	9d 	. 
	ld (bc),a			;9298	02 	. 
	ld bc,0029dh		;9299	01 9d 02 	. . . 
	nop			;929c	00 	. 
	ld bc,0100ah		;929d	01 0a 10 	. . . 
	sbc a,l			;92a0	9d 	. 
	ld (bc),a			;92a1	02 	. 
	ld (bc),a			;92a2	02 	. 
	sbc a,l			;92a3	9d 	. 
	ld bc,09d04h		;92a4	01 04 9d 	. . . 
	ld bc,09d02h		;92a7	01 02 9d 	. . . 
	ld (bc),a			;92aa	02 	. 
	ld (bc),a			;92ab	02 	. 
	sbc a,l			;92ac	9d 	. 
	inc b			;92ad	04 	. 
	dec b			;92ae	05 	. 
	ld d,001h		;92af	16 01 	. . 
	ld bc,00a06h		;92b1	01 06 0a 	. . . 
	ld d,001h		;92b4	16 01 	. . 
	ld a,(bc)			;92b6	0a 	. 
	djnz $+4		;92b7	10 02 	. . 
	ld c,002h		;92b9	0e 02 	. . 
	sbc a,l			;92bb	9d 	. 
	dec c			;92bc	0d 	. 
	ld a,(bc)			;92bd	0a 	. 
	ld a,(bc)			;92be	0a 	. 
	ld bc,09dabh		;92bf	01 ab 9d 	. . . 
	ld c,010h		;92c2	0e 10 	. . 
	sbc a,l			;92c4	9d 	. 
	ld a,(bc)			;92c5	0a 	. 
	add hl,bc			;92c6	09 	. 
	djnz $+18		;92c7	10 10 	. . 
	ld (bc),a			;92c9	02 	. 
	sbc a,l			;92ca	9d 	. 
	ld bc,00a10h		;92cb	01 10 0a 	. . . 
	rlca			;92ce	07 	. 
	nop			;92cf	00 	. 
	ld bc,0029dh		;92d0	01 9d 02 	. . . 
	ld (bc),a			;92d3	02 	. 
	ld bc,00502h		;92d4	01 02 05 	. . . 
	nop			;92d7	00 	. 
	ld bc,00101h		;92d8	01 01 01 	. . . 
	ld bc,0013fh		;92db	01 3f 01 	. ? . 
	inc bc			;92de	03 	. 
	nop			;92df	00 	. 
	ld (bc),a			;92e0	02 	. 
	ld (bc),a			;92e1	02 	. 
	djnz $+12		;92e2	10 0a 	. . 
	ld a,(bc)			;92e4	0a 	. 
	ld a,(bc)			;92e5	0a 	. 
	inc bc			;92e6	03 	. 
	nop			;92e7	00 	. 
	ld a,(bc)			;92e8	0a 	. 
	ld a,(bc)			;92e9	0a 	. 
	ld bc,00a10h		;92ea	01 10 0a 	. . . 
	ld a,(bc)			;92ed	0a 	. 
	inc bc			;92ee	03 	. 
	ld h,00ah		;92ef	26 0a 	& . 
	ld a,(bc)			;92f1	0a 	. 
	ld a,(bc)			;92f2	0a 	. 
	ld bc,00a10h		;92f3	01 10 0a 	. . . 
	sbc a,l			;92f6	9d 	. 
	dec h			;92f7	25 	% 
	ld a,(bc)			;92f8	0a 	. 
	ld a,(bc)			;92f9	0a 	. 
	ld a,(bc)			;92fa	0a 	. 
	ld a,(bc)			;92fb	0a 	. 
	ld bc,0059dh		;92fc	01 9d 05 	. . . 
	ld d,000h		;92ff	16 00 	. . 
	ld a,(de)			;9301	1a 	. 
	ld d,000h		;9302	16 00 	. . 
	ld a,(de)			;9304	1a 	. 
	ld b,009h		;9305	06 09 	. . 
	dec d			;9307	15 	. 
	ld bc,0153ah		;9308	01 3a 15 	. : . 
	ld bc,00f3ah		;930b	01 3a 0f 	. : . 
	dec b			;930e	05 	. 
	ld d,010h		;930f	16 10 	. . 
	ld a,(de)			;9311	1a 	. 
	ld d,010h		;9312	16 10 	. . 
	ld a,(de)			;9314	1a 	. 
	ld b,009h		;9315	06 09 	. . 
	dec d			;9317	15 	. 
	ld bc,0153ah		;9318	01 3a 15 	. : . 
	ld bc,00f3ah		;931b	01 3a 0f 	. : . 
	dec b			;931e	05 	. 
	ld d,0abh		;931f	16 ab 	. . 
	ld a,(de)			;9321	1a 	. 
	ld d,002h		;9322	16 02 	. . 
	ld a,(de)			;9324	1a 	. 
	jr $+9		;9325	18 07 	. . 
	nop			;9327	00 	. 
	ld bc,01e26h		;9328	01 26 1e 	. & . 
	ld bc,00800h		;932b	01 00 08 	. . . 
	dec b			;932e	05 	. 
	ld bc,0203ah		;932f	01 3a 20 	. :   
	rla			;9332	17 	. 
	dec d			;9333	15 	. 
	ld bc,00906h		;9334	01 06 09 	. . . 
	dec de			;9337	1b 	. 
	jr nz,$+28		;9338	20 1a 	  . 
	ld d,017h		;933a	16 17 	. . 
	rra			;933c	1f 	. 
	rrca			;933d	0f 	. 
	dec b			;933e	05 	. 
	scf			;933f	37 	7 
	ld a,(de)			;9340	1a 	. 
	ld a,(01615h)		;9341	3a 15 16 	: . . 
	jr c,$+8		;9344	38 06 	8 . 
	add hl,bc			;9346	09 	. 
	ld a,(de)			;9347	1a 	. 
	ld c,01ah		;9348	0e 1a 	. . 
	ld d,00dh		;934a	16 0d 	. . 
	ld d,00fh		;934c	16 0f 	. . 
	dec b			;934e	05 	. 
	ld bc,00000h		;934f	01 00 00 	. . . 
	nop			;9352	00 	. 
	nop			;9353	00 	. 
	ld bc,00a01h		;9354	01 01 0a 	. . . 
	ld a,(bc)			;9357	0a 	. 
	nop			;9358	00 	. 
	ld e,001h		;9359	1e 01 	. . 
	nop			;935b	00 	. 
	ld a,(bc)			;935c	0a 	. 
	ld a,(bc)			;935d	0a 	. 
	ld a,(bc)			;935e	0a 	. 
	ld a,(bc)			;935f	0a 	. 
	nop			;9360	00 	. 
	ld (hl),09dh		;9361	36 9d 	6 . 
	ld bc,00a0ah		;9363	01 0a 0a 	. . . 
	ld a,(bc)			;9366	0a 	. 
	ld a,(bc)			;9367	0a 	. 
	nop			;9368	00 	. 
	ld bc,01002h		;9369	01 02 10 	. . . 
	ld a,(bc)			;936c	0a 	. 
	ld a,(bc)			;936d	0a 	. 
	ld a,(bc)			;936e	0a 	. 
	ld a,(bc)			;936f	0a 	. 
	ld bc,0ab9dh		;9370	01 9d ab 	. . . 
	ld bc,00a0ah		;9373	01 0a 0a 	. . . 
	ld bc,00101h		;9376	01 01 01 	. . . 
	ld d,026h		;9379	16 26 	. & 
	nop			;937b	00 	. 
	nop			;937c	00 	. 
	ld bc,00a0ah		;937d	01 0a 0a 	. . . 
	ld a,(bc)			;9380	0a 	. 
	ld a,(bc)			;9381	0a 	. 
	dec sp			;9382	3b 	; 
	nop			;9383	00 	. 
	nop			;9384	00 	. 
	rrca			;9385	0f 	. 
	ld a,(bc)			;9386	0a 	. 
	ld a,(bc)			;9387	0a 	. 
	ld a,(bc)			;9388	0a 	. 
	ld a,(bc)			;9389	0a 	. 
	jr $+3		;938a	18 01 	. . 
	ld bc,00a06h		;938c	01 06 0a 	. . . 
	ld a,(bc)			;938f	0a 	. 
	ld a,(bc)			;9390	0a 	. 
	ld a,(bc)			;9391	0a 	. 
	ld (bc),a			;9392	02 	. 
	ld (bc),a			;9393	02 	. 
	xor e			;9394	ab 	. 
	inc b			;9395	04 	. 
	ld a,(bc)			;9396	0a 	. 
	ld a,(bc)			;9397	0a 	. 
	ld a,(bc)			;9398	0a 	. 
	sbc a,l			;9399	9d 	. 
	djnz $-97		;939a	10 9d 	. . 
	ld (bc),a			;939c	02 	. 
	ld e,c			;939d	59 	Y 
	ld bc,00000h		;939e	01 00 00 	. . . 
	nop			;93a1	00 	. 
	nop			;93a2	00 	. 
	nop			;93a3	00 	. 
	ld bc,00906h		;93a4	01 06 09 	. . . 
	nop			;93a7	00 	. 
	ld bc,00000h		;93a8	01 00 00 	. . . 
	ld bc,00f10h		;93ab	01 10 0f 	. . . 
	dec b			;93ae	05 	. 
	ld bc,00110h		;93af	01 10 01 	. . . 
	ld bc,00110h		;93b2	01 10 01 	. . . 
	ld b,00ah		;93b5	06 0a 	. . 
	ld a,(bc)			;93b7	0a 	. 
	ld bc,01010h		;93b8	01 10 10 	. . . 
	ld bc,00a0ah		;93bb	01 0a 0a 	. . . 
	ld a,(bc)			;93be	0a 	. 
	ld a,(bc)			;93bf	0a 	. 
	xor e			;93c0	ab 	. 
	ld bc,09d01h		;93c1	01 01 9d 	. . . 
	ld a,(bc)			;93c4	0a 	. 
	ld a,(bc)			;93c5	0a 	. 
	rlca			;93c6	07 	. 
	nop			;93c7	00 	. 
	nop			;93c8	00 	. 
	inc e			;93c9	1c 	. 
	dec e			;93ca	1d 	. 
	nop			;93cb	00 	. 
	nop			;93cc	00 	. 
	ex af,af'			;93cd	08 	. 
	dec b			;93ce	05 	. 
	ld bc,09d01h		;93cf	01 01 9d 	. . . 
	sbc a,l			;93d2	9d 	. 
	ld bc,00601h		;93d3	01 01 06 	. . . 
	ld a,(bc)			;93d6	0a 	. 
	ld e,e			;93d7	5b 	[ 
	ld a,(bc)			;93d8	0a 	. 
	ld c,00dh		;93d9	0e 0d 	. . 
	ld a,(bc)			;93db	0a 	. 
	ld e,c			;93dc	59 	Y 
	ld a,(bc)			;93dd	0a 	. 
	ld a,(bc)			;93de	0a 	. 
	ld e,e			;93df	5b 	[ 
	ld (bc),a			;93e0	02 	. 
	ld e,c			;93e1	59 	Y 
	ld e,e			;93e2	5b 	[ 
	ld (bc),a			;93e3	02 	. 
	ld e,c			;93e4	59 	Y 
	ld a,(bc)			;93e5	0a 	. 
	inc bc			;93e6	03 	. 
	dec c			;93e7	0d 	. 
	ld a,(bc)			;93e8	0a 	. 
	ld c,00dh		;93e9	0e 0d 	. . 
	djnz $+16		;93eb	10 0e 	. . 
	inc b			;93ed	04 	. 
	ld a,(bc)			;93ee	0a 	. 
	ld bc,02601h		;93ef	01 01 26 	. . & 
	ld e,001h		;93f2	1e 01 	. . 
	ld e,c			;93f4	59 	Y 
	ld a,(bc)			;93f5	0a 	. 
	ld a,(bc)			;93f6	0a 	. 
	ld c,09dh		;93f7	0e 9d 	. . 
	ld (09d34h),a		;93f9	32 34 9d 	2 4 . 
	ld (bc),a			;93fc	02 	. 
	ld a,(bc)			;93fd	0a 	. 
	ld a,(bc)			;93fe	0a 	. 
	ld (bc),a			;93ff	02 	. 
	ld (bc),a			;9400	02 	. 
	ld (00234h),a		;9401	32 34 02 	2 4 . 
	dec c			;9404	0d 	. 
	ld a,(bc)			;9405	0a 	. 
	ld a,(bc)			;9406	0a 	. 
	ld c,09dh		;9407	0e 9d 	. . 
	ld (09d34h),a		;9409	32 34 9d 	2 4 . 
	ld (bc),a			;940c	02 	. 
	ld a,(bc)			;940d	0a 	. 
	ld a,(bc)			;940e	0a 	. 
	ld (bc),a			;940f	02 	. 
	xor e			;9410	ab 	. 
	ld (00234h),a		;9411	32 34 02 	2 4 . 
	rra			;9414	1f 	. 
	ld a,(bc)			;9415	0a 	. 
	ld a,(bc)			;9416	0a 	. 
	ld a,(bc)			;9417	0a 	. 
	ld a,(bc)			;9418	0a 	. 
	rlca			;9419	07 	. 
	ex af,af'			;941a	08 	. 
	ld a,(bc)			;941b	0a 	. 
	ld d,00ah		;941c	16 0a 	. . 
	sbc a,l			;941e	9d 	. 
	djnz $-97		;941f	10 9d 	. . 
	ld (09d34h),a		;9421	32 34 9d 	2 4 . 
	dec c			;9424	0d 	. 
	ld (bc),a			;9425	02 	. 
	inc bc			;9426	03 	. 
	ld bc,03219h		;9427	01 19 32 	. . 2 
	inc (hl)			;942a	34 	4 
	ld (bc),a			;942b	02 	. 
	sbc a,l			;942c	9d 	. 
	inc b			;942d	04 	. 
	inc bc			;942e	03 	. 
	xor e			;942f	ab 	. 
	jr $+52		;9430	18 32 	. 2 
	inc (hl)			;9432	34 	4 
	sbc a,l			;9433	9d 	. 
	ld (bc),a			;9434	02 	. 
	inc b			;9435	04 	. 
	ld a,(bc)			;9436	0a 	. 
	ld a,(bc)			;9437	0a 	. 
	ld a,(bc)			;9438	0a 	. 
	rlca			;9439	07 	. 
	ex af,af'			;943a	08 	. 
	ld l,b			;943b	68 	h 
	ld a,(bc)			;943c	0a 	. 
	ld a,(bc)			;943d	0a 	. 
	ld a,(bc)			;943e	0a 	. 
	ld a,(bc)			;943f	0a 	. 
	ld a,(bc)			;9440	0a 	. 
	nop			;9441	00 	. 
	ld bc,00001h		;9442	01 01 00 	. . . 
	ld a,(bc)			;9445	0a 	. 
	add hl,bc			;9446	09 	. 
	djnz $-97		;9447	10 9d 	. . 
	ld bc,00a0ah		;9449	01 0a 0a 	. . . 
	ld h,09dh		;944c	26 9d 	& . 
	dec b			;944e	05 	. 
	nop			;944f	00 	. 
	ld (bc),a			;9450	02 	. 
	sbc a,l			;9451	9d 	. 
	ld (bc),a			;9452	02 	. 
	xor e			;9453	ab 	. 
	dec (hl)			;9454	35 	5 
	ld a,(bc)			;9455	0a 	. 
	inc bc			;9456	03 	. 
	ld h,00ah		;9457	26 0a 	& . 
	ld a,(bc)			;9459	0a 	. 
	ld a,(bc)			;945a	0a 	. 
	ld a,(bc)			;945b	0a 	. 
	nop			;945c	00 	. 
	ld a,(bc)			;945d	0a 	. 
	sbc a,l			;945e	9d 	. 
	dec h			;945f	25 	% 
	ld (bc),a			;9460	02 	. 
	ld (bc),a			;9461	02 	. 
	ld (bc),a			;9462	02 	. 
	sbc a,l			;9463	9d 	. 
	ld bc,0010ah		;9464	01 0a 01 	. . . 
	ld bc,0011eh		;9467	01 1e 01 	. . . 
	ld bc,00126h		;946a	01 26 01 	. & . 
	ld b,009h		;946d	06 09 	. . 
	djnz $+54		;946f	10 34 	. 4 
	sbc a,l			;9471	9d 	. 
	sbc a,l			;9472	9d 	. 
	ld (00f10h),a		;9473	32 10 0f 	2 . . 
	rlca			;9476	07 	. 
	nop			;9477	00 	. 
	ld (hl),010h		;9478	36 10 	6 . 
	djnz $+55		;947a	10 35 	. 5 
	nop			;947c	00 	. 
	ex af,af'			;947d	08 	. 
	dec b			;947e	05 	. 
	ld h,000h		;947f	26 00 	& . 
	nop			;9481	00 	. 
	nop			;9482	00 	. 
	nop			;9483	00 	. 
	ld bc,00206h		;9484	01 06 02 	. . . 
	dec h			;9487	25 	% 
	ld e,000h		;9488	1e 00 	. . 
	ld bc,00200h		;948a	01 00 02 	. . . 
	sbc a,l			;948d	9d 	. 
	rlca			;948e	07 	. 
	ld e,001h		;948f	1e 01 	. . 
	ld bc,00101h		;9491	01 01 01 	. . . 
	ld h,01eh		;9494	26 1e 	& . 
	rlca			;9496	07 	. 
	jr c,$-97		;9497	38 9d 	8 . 
	djnz $+4		;9499	10 02 	. . 
	xor e			;949b	ab 	. 
	dec (hl)			;949c	35 	5 
	ex af,af'			;949d	08 	. 
	rlca			;949e	07 	. 
	ld (hl),010h		;949f	36 10 	6 . 
	nop			;94a1	00 	. 
	dec de			;94a2	1b 	. 
	djnz $+2		;94a3	10 00 	. . 
	ex af,af'			;94a5	08 	. 
	rlca			;94a6	07 	. 
	ld e,001h		;94a7	1e 01 	. . 
	nop			;94a9	00 	. 
	ld a,(de)			;94aa	1a 	. 
	ld bc,00601h		;94ab	01 01 06 	. . . 
	dec b			;94ae	05 	. 
	jr $-97		;94af	18 9d 	. . 
	ld bc,09d02h		;94b1	01 02 9d 	. . . 
	ld (bc),a			;94b4	02 	. 
	sbc a,l			;94b5	9d 	. 
	dec b			;94b6	05 	. 
	ld bc,00100h		;94b7	01 00 01 	. . . 
	ld bc,00100h		;94ba	01 00 01 	. . . 
	ld b,002h		;94bd	06 02 	. . 
	sbc a,l			;94bf	9d 	. 
	nop			;94c0	00 	. 
	ld (bc),a			;94c1	02 	. 
	sbc a,l			;94c2	9d 	. 
	nop			;94c3	00 	. 
	sbc a,l			;94c4	9d 	. 
	inc b			;94c5	04 	. 
	inc bc			;94c6	03 	. 
	ld (bc),a			;94c7	02 	. 
	nop			;94c8	00 	. 
	sbc a,l			;94c9	9d 	. 
	ld (bc),a			;94ca	02 	. 
	nop			;94cb	00 	. 
	ld (bc),a			;94cc	02 	. 
	inc b			;94cd	04 	. 
	inc bc			;94ce	03 	. 
	sbc a,l			;94cf	9d 	. 
	nop			;94d0	00 	. 
	ld (bc),a			;94d1	02 	. 
	sbc a,l			;94d2	9d 	. 
	nop			;94d3	00 	. 
	sbc a,l			;94d4	9d 	. 
	inc b			;94d5	04 	. 
	inc bc			;94d6	03 	. 
	ld (bc),a			;94d7	02 	. 
	ld bc,0029dh		;94d8	01 9d 02 	. . . 
	ld bc,00402h		;94db	01 02 04 	. . . 
	ld a,(bc)			;94de	0a 	. 
	ld a,(bc)			;94df	0a 	. 
	nop			;94e0	00 	. 
	ld e,026h		;94e1	1e 26 	. & 
	nop			;94e3	00 	. 
	ld a,(bc)			;94e4	0a 	. 
	ld a,(bc)			;94e5	0a 	. 
	ld a,(bc)			;94e6	0a 	. 
	ld a,(bc)			;94e7	0a 	. 
	nop			;94e8	00 	. 
	jr $+55		;94e9	18 35 	. 5 
	ld h,00ah		;94eb	26 0a 	& . 
	ld a,(bc)			;94ed	0a 	. 
	ld a,(bc)			;94ee	0a 	. 
	ld a,(bc)			;94ef	0a 	. 
	ld e,027h		;94f0	1e 27 	. ' 
	ld e,032h		;94f2	1e 32 	. 2 
	ld a,(bc)			;94f4	0a 	. 
	ld a,(bc)			;94f5	0a 	. 
	ld a,(bc)			;94f6	0a 	. 
	ld a,(bc)			;94f7	0a 	. 
	inc (hl)			;94f8	34 	4 
	dec (hl)			;94f9	35 	5 
	jr $+55		;94fa	18 35 	. 5 
	ld a,(bc)			;94fc	0a 	. 
	ld a,(bc)			;94fd	0a 	. 
	ld a,(bc)			;94fe	0a 	. 
	ld a,(bc)			;94ff	0a 	. 
	ld (hl),01eh		;9500	36 1e 	6 . 
	daa			;9502	27 	' 
	nop			;9503	00 	. 
	ld a,(bc)			;9504	0a 	. 
	ld a,(bc)			;9505	0a 	. 
	ld a,(bc)			;9506	0a 	. 
	ld a,(bc)			;9507	0a 	. 
	ld a,(bc)			;9508	0a 	. 
	rlca			;9509	07 	. 
	ex af,af'			;950a	08 	. 
	ld e,e			;950b	5b 	[ 
	ld a,(bc)			;950c	0a 	. 
	ld a,(bc)			;950d	0a 	. 
	ld a,(bc)			;950e	0a 	. 
	djnz $-83		;950f	10 ab 	. . 
	ld (00d34h),a		;9511	32 34 0d 	2 4 . 
	sbc a,l			;9514	9d 	. 
	ld a,(bc)			;9515	0a 	. 
	ld a,(bc)			;9516	0a 	. 
	nop			;9517	00 	. 
	ld (bc),a			;9518	02 	. 
	scf			;9519	37 	7 
	ld (hl),010h		;951a	36 10 	6 . 
	ld a,(bc)			;951c	0a 	. 
	ld a,(bc)			;951d	0a 	. 
	ld a,(bc)			;951e	0a 	. 
	ld e,00dh		;951f	1e 0d 	. . 
	dec (hl)			;9521	35 	5 
	ld h,000h		;9522	26 00 	& . 
	ld a,(bc)			;9524	0a 	. 
	ld a,(bc)			;9525	0a 	. 
	ld a,(bc)			;9526	0a 	. 
	rla			;9527	17 	. 
	djnz $+2		;9528	10 00 	. . 
	dec sp			;952a	3b 	; 
	ld bc,00a0ah		;952b	01 0a 0a 	. . . 
	ld a,(bc)			;952e	0a 	. 
	ld a,(bc)			;952f	0a 	. 
	nop			;9530	00 	. 
	ld bc,00101h		;9531	01 01 01 	. . . 
	ld bc,02701h		;9534	01 01 27 	. . ' 
	ld a,(bc)			;9537	0a 	. 
	nop			;9538	00 	. 
	djnz $+4		;9539	10 02 	. . 
	sbc a,l			;953b	9d 	. 
	ld (bc),a			;953c	02 	. 
	sbc a,l			;953d	9d 	. 
	rlca			;953e	07 	. 
	ld a,(bc)			;953f	0a 	. 
	nop			;9540	00 	. 
	ld bc,0020eh		;9541	01 0e 02 	. . . 
	ld a,(bc)			;9544	0a 	. 
	ld a,(bc)			;9545	0a 	. 
	rlca			;9546	07 	. 
	ld a,(bc)			;9547	0a 	. 
	ld bc,01002h		;9548	01 02 10 	. . . 
	sbc a,l			;954b	9d 	. 
	ld a,(bc)			;954c	0a 	. 
	ld a,(bc)			;954d	0a 	. 
	dec b			;954e	05 	. 
	sbc a,l			;954f	9d 	. 
	ld (bc),a			;9550	02 	. 
	sbc a,l			;9551	9d 	. 
	ld bc,00a02h		;9552	01 02 0a 	. . . 
	ld a,(bc)			;9555	0a 	. 
	ld bc,00a26h		;9556	01 26 0a 	. & . 
	ld a,(bc)			;9559	0a 	. 
	ld a,(bc)			;955a	0a 	. 
	ld a,(de)			;955b	1a 	. 
	ld a,(bc)			;955c	0a 	. 
	ld a,(bc)			;955d	0a 	. 
	sbc a,l			;955e	9d 	. 
	ld (0ab02h),a		;955f	32 02 ab 	2 . . 
	djnz $+15		;9562	10 0d 	. . 
	djnz $-97		;9564	10 9d 	. . 
	inc bc			;9566	03 	. 
	ld (00d9dh),a		;9567	32 9d 0d 	2 . . 
	nop			;956a	00 	. 
	ld a,(bc)			;956b	0a 	. 
	nop			;956c	00 	. 
	ld a,(bc)			;956d	0a 	. 
	ld a,(bc)			;956e	0a 	. 
	rlca			;956f	07 	. 
	sbc a,l			;9570	9d 	. 
	dec c			;9571	0d 	. 
	nop			;9572	00 	. 
	ld a,(bc)			;9573	0a 	. 
	nop			;9574	00 	. 
	ld a,(bc)			;9575	0a 	. 
	inc bc			;9576	03 	. 
	ld (00d02h),a		;9577	32 02 0d 	2 . . 
	ld bc,01e0ah		;957a	01 0a 1e 	. . . 
	sbc a,l			;957d	9d 	. 
	ld a,(bc)			;957e	0a 	. 
	ld a,(bc)			;957f	0a 	. 
	ld a,(bc)			;9580	0a 	. 
	ld a,(bc)			;9581	0a 	. 
	ld a,(bc)			;9582	0a 	. 
	ld a,(bc)			;9583	0a 	. 
	ld a,(bc)			;9584	0a 	. 
	ld a,(bc)			;9585	0a 	. 
	ld (bc),a			;9586	02 	. 
	sbc a,l			;9587	9d 	. 
	ld (bc),a			;9588	02 	. 
	ld a,(bc)			;9589	0a 	. 
	ld (bc),a			;958a	02 	. 
	sbc a,l			;958b	9d 	. 
	ld (bc),a			;958c	02 	. 
	ld a,(bc)			;958d	0a 	. 
	ld a,(bc)			;958e	0a 	. 
	ld (bc),a			;958f	02 	. 
	ld (bc),a			;9590	02 	. 
	sbc a,l			;9591	9d 	. 
	ld (bc),a			;9592	02 	. 
	ld (bc),a			;9593	02 	. 
	ld c,00ah		;9594	0e 0a 	. . 
	ld a,(bc)			;9596	0a 	. 
	ld (bc),a			;9597	02 	. 
	ld c,002h		;9598	0e 02 	. . 
	sbc a,l			;959a	9d 	. 
	ld (bc),a			;959b	02 	. 
	ld (bc),a			;959c	02 	. 
	ld a,(bc)			;959d	0a 	. 
	sbc a,l			;959e	9d 	. 
	ld (bc),a			;959f	02 	. 
	dec c			;95a0	0d 	. 
	sbc a,l			;95a1	9d 	. 
	ld (bc),a			;95a2	02 	. 
	ld c,002h		;95a3	0e 02 	. . 
	ld a,(bc)			;95a5	0a 	. 
	ld a,(bc)			;95a6	0a 	. 
	nop			;95a7	00 	. 
	ld bc,00101h		;95a8	01 01 01 	. . . 
	ld bc,00a01h		;95ab	01 01 0a 	. . . 
	ld a,(bc)			;95ae	0a 	. 
	nop			;95af	00 	. 
	ld a,(bc)			;95b0	0a 	. 
	ld a,(bc)			;95b1	0a 	. 
	rra			;95b2	1f 	. 
	ld a,(bc)			;95b3	0a 	. 
	ld a,(bc)			;95b4	0a 	. 
	ld a,(bc)			;95b5	0a 	. 
	ld a,(bc)			;95b6	0a 	. 
	nop			;95b7	00 	. 
	ld a,(bc)			;95b8	0a 	. 
	ld a,(bc)			;95b9	0a 	. 
	jr c,$+41		;95ba	38 27 	8 ' 
	ld a,(bc)			;95bc	0a 	. 
	ld a,(bc)			;95bd	0a 	. 
	ld a,(bc)			;95be	0a 	. 
	nop			;95bf	00 	. 
	ld a,(bc)			;95c0	0a 	. 
	ld a,(bc)			;95c1	0a 	. 
	jr $+57		;95c2	18 37 	. 7 
	ld a,(bc)			;95c4	0a 	. 
	ld a,(bc)			;95c5	0a 	. 
	ld a,(bc)			;95c6	0a 	. 
	nop			;95c7	00 	. 
	ld a,(bc)			;95c8	0a 	. 
	ld a,(bc)			;95c9	0a 	. 
	ld a,(bc)			;95ca	0a 	. 
	jr nz,$+12		;95cb	20 0a 	  . 
	ld a,(bc)			;95cd	0a 	. 
	dec b			;95ce	05 	. 
	ld h,01eh		;95cf	26 1e 	& . 
	ld bc,00101h		;95d1	01 01 01 	. . . 
	ld bc,00a06h		;95d4	01 06 0a 	. . . 
	rlca			;95d7	07 	. 
	ex af,af'			;95d8	08 	. 
	ld l,b			;95d9	68 	h 
	ld a,(bc)			;95da	0a 	. 
	ld a,(bc)			;95db	0a 	. 
	ld a,(bc)			;95dc	0a 	. 
	ld a,(bc)			;95dd	0a 	. 
	ld a,(bc)			;95de	0a 	. 
	rlca			;95df	07 	. 
	ex af,af'			;95e0	08 	. 
	ld l,b			;95e1	68 	h 
	ld a,(bc)			;95e2	0a 	. 
	ld a,(bc)			;95e3	0a 	. 
	ld a,(bc)			;95e4	0a 	. 
	ld a,(bc)			;95e5	0a 	. 
	ld a,(bc)			;95e6	0a 	. 
	rlca			;95e7	07 	. 
	ex af,af'			;95e8	08 	. 
	ld l,b			;95e9	68 	h 
	ld a,(bc)			;95ea	0a 	. 
	ld a,(bc)			;95eb	0a 	. 
	ld a,(bc)			;95ec	0a 	. 
	ld a,(bc)			;95ed	0a 	. 
	ld a,(bc)			;95ee	0a 	. 
	rlca			;95ef	07 	. 
	ex af,af'			;95f0	08 	. 
	ld l,b			;95f1	68 	h 
	ld a,(bc)			;95f2	0a 	. 
	ld a,(bc)			;95f3	0a 	. 
	ld a,(bc)			;95f4	0a 	. 
	ld a,(bc)			;95f5	0a 	. 
	ld a,(bc)			;95f6	0a 	. 
	ld bc,00101h		;95f7	01 01 01 	. . . 
	ld bc,00101h		;95fa	01 01 01 	. . . 
	ld bc,0020ah		;95fd	01 0a 02 	. . . 
	sbc a,l			;9600	9d 	. 
	ld (bc),a			;9601	02 	. 
	sbc a,l			;9602	9d 	. 
	ld (bc),a			;9603	02 	. 
	sbc a,l			;9604	9d 	. 
	ld (bc),a			;9605	02 	. 
	ld a,(bc)			;9606	0a 	. 
	djnz $+18		;9607	10 10 	. . 
	djnz $+18		;9609	10 10 	. . 
	djnz $+18		;960b	10 10 	. . 
	djnz $+12		;960d	10 0a 	. . 
	ld l,h			;960f	6c 	l 
	ld l,h			;9610	6c 	l 
	ld l,h			;9611	6c 	l 
	ld l,h			;9612	6c 	l 
	ld l,h			;9613	6c 	l 
	ld l,h			;9614	6c 	l 
	ld l,h			;9615	6c 	l 
	ld a,(bc)			;9616	0a 	. 
	ld l,e			;9617	6b 	k 
	ld l,e			;9618	6b 	k 
	ld l,e			;9619	6b 	k 
	ld l,e			;961a	6b 	k 
	ld l,e			;961b	6b 	k 
	ld l,e			;961c	6b 	k 
	ld l,e			;961d	6b 	k 
	ld bc,00001h		;961e	01 01 00 	. . . 
	ld bc,00000h		;9621	01 00 00 	. . . 
	ld a,(bc)			;9624	0a 	. 
	ld a,(bc)			;9625	0a 	. 
	ld (bc),a			;9626	02 	. 
	sbc a,l			;9627	9d 	. 
	ld e,0abh		;9628	1e ab 	. . 
	ld bc,09d26h		;962a	01 26 9d 	. & . 
	ld (bc),a			;962d	02 	. 
	djnz $+18		;962e	10 10 	. . 
	ld (hl),010h		;9630	36 10 	6 . 
	djnz $+55		;9632	10 35 	. 5 
	djnz $+18		;9634	10 10 	. . 
	ld l,h			;9636	6c 	l 
	ld l,h			;9637	6c 	l 
	ld l,h			;9638	6c 	l 
	ld l,h			;9639	6c 	l 
	ld l,h			;963a	6c 	l 
	ld l,h			;963b	6c 	l 
	ld l,h			;963c	6c 	l 
	ld l,h			;963d	6c 	l 
	ld l,e			;963e	6b 	k 
	ld l,e			;963f	6b 	k 
	ld l,e			;9640	6b 	k 
	ld l,e			;9641	6b 	k 
	ld l,e			;9642	6b 	k 
	ld l,e			;9643	6b 	k 
	ld l,e			;9644	6b 	k 
	ld l,e			;9645	6b 	k 
	ld a,(bc)			;9646	0a 	. 
	ld a,(bc)			;9647	0a 	. 
	ld a,(bc)			;9648	0a 	. 
	ld a,(bc)			;9649	0a 	. 
	ld a,(bc)			;964a	0a 	. 
	ld a,(bc)			;964b	0a 	. 
	ld a,(bc)			;964c	0a 	. 
	ld a,(bc)			;964d	0a 	. 
	sbc a,l			;964e	9d 	. 
	ld (bc),a			;964f	02 	. 
	ld (bc),a			;9650	02 	. 
	sbc a,l			;9651	9d 	. 
	ld (bc),a			;9652	02 	. 
	ld (bc),a			;9653	02 	. 
	sbc a,l			;9654	9d 	. 
	ld (bc),a			;9655	02 	. 
	djnz $+18		;9656	10 10 	. . 
	djnz $+18		;9658	10 10 	. . 
	djnz $+18		;965a	10 10 	. . 
	djnz $+18		;965c	10 10 	. . 
	ld l,h			;965e	6c 	l 
	ld l,h			;965f	6c 	l 
	ld l,h			;9660	6c 	l 
	ld l,h			;9661	6c 	l 
	ld l,h			;9662	6c 	l 
	ld l,h			;9663	6c 	l 
	ld l,h			;9664	6c 	l 
	ld l,h			;9665	6c 	l 
	ld l,e			;9666	6b 	k 
	ld l,e			;9667	6b 	k 
	ld l,e			;9668	6b 	k 
	ld l,e			;9669	6b 	k 
	ld l,e			;966a	6b 	k 
	ld l,e			;966b	6b 	k 
	ld l,e			;966c	6b 	k 
	ld l,e			;966d	6b 	k 
	ld a,(bc)			;966e	0a 	. 
	jr c,$+3		;966f	38 01 	8 . 
	nop			;9671	00 	. 
	ex af,af'			;9672	08 	. 
	ld a,(bc)			;9673	0a 	. 
	ld a,(bc)			;9674	0a 	. 
	ld a,(bc)			;9675	0a 	. 
	sbc a,l			;9676	9d 	. 
	jr $-97		;9677	18 9d 	. . 
	ld h,034h		;9679	26 34 	& 4 
	xor e			;967b	ab 	. 
	ld (bc),a			;967c	02 	. 
	sbc a,l			;967d	9d 	. 
	djnz $+18		;967e	10 10 	. . 
	djnz $+61		;9680	10 3b 	. ; 
	ld (hl),010h		;9682	36 10 	6 . 
	djnz $+18		;9684	10 10 	. . 
	ld l,h			;9686	6c 	l 
	ld l,h			;9687	6c 	l 
	ld l,h			;9688	6c 	l 
	ld l,h			;9689	6c 	l 
	ld l,h			;968a	6c 	l 
	ld l,h			;968b	6c 	l 
	ld l,h			;968c	6c 	l 
	ld l,h			;968d	6c 	l 
	ld l,e			;968e	6b 	k 
	ld l,e			;968f	6b 	k 
	ld l,e			;9690	6b 	k 
	ld l,e			;9691	6b 	k 
	ld l,e			;9692	6b 	k 
	ld l,e			;9693	6b 	k 
	ld l,e			;9694	6b 	k 
	ld l,e			;9695	6b 	k 
	ld a,(bc)			;9696	0a 	. 
	ld a,(bc)			;9697	0a 	. 
	ld a,(bc)			;9698	0a 	. 
	ld a,(bc)			;9699	0a 	. 
	ld a,(bc)			;969a	0a 	. 
	ld a,(bc)			;969b	0a 	. 
	ld a,(bc)			;969c	0a 	. 
	ld a,(bc)			;969d	0a 	. 
	sbc a,l			;969e	9d 	. 
	ld (bc),a			;969f	02 	. 
	ld (bc),a			;96a0	02 	. 
	sbc a,l			;96a1	9d 	. 
	ld (bc),a			;96a2	02 	. 
	xor e			;96a3	ab 	. 
	sbc a,l			;96a4	9d 	. 
	ld (bc),a			;96a5	02 	. 
	djnz $+18		;96a6	10 10 	. . 
	djnz $+18		;96a8	10 10 	. . 
	djnz $+18		;96aa	10 10 	. . 
	djnz $+18		;96ac	10 10 	. . 
	ld l,h			;96ae	6c 	l 
	ld l,h			;96af	6c 	l 
	ld l,h			;96b0	6c 	l 
	ld l,h			;96b1	6c 	l 
	ld l,h			;96b2	6c 	l 
	ld l,h			;96b3	6c 	l 
	ld l,h			;96b4	6c 	l 
	ld l,h			;96b5	6c 	l 
	ld l,e			;96b6	6b 	k 
	ld l,e			;96b7	6b 	k 
	ld l,e			;96b8	6b 	k 
	ld l,e			;96b9	6b 	k 
	ld l,e			;96ba	6b 	k 
	ld l,e			;96bb	6b 	k 
	ld l,e			;96bc	6b 	k 
	ld l,e			;96bd	6b 	k 
	ld a,(bc)			;96be	0a 	. 
	rlca			;96bf	07 	. 
	ld e,016h		;96c0	1e 16 	. . 
	ld bc,00a0ah		;96c2	01 0a 0a 	. . . 
	ld a,(bc)			;96c5	0a 	. 
	sbc a,l			;96c6	9d 	. 
	ld (00e34h),a		;96c7	32 34 0e 	2 4 . 
	xor e			;96ca	ab 	. 
	ld (bc),a			;96cb	02 	. 
	ld (bc),a			;96cc	02 	. 
	ld (bc),a			;96cd	02 	. 
	djnz $+55		;96ce	10 35 	. 5 
	ld (hl),010h		;96d0	36 10 	6 . 
	djnz $+18		;96d2	10 10 	. . 
	djnz $+12		;96d4	10 0a 	. . 
	ld l,h			;96d6	6c 	l 
	ld l,h			;96d7	6c 	l 
	ld l,h			;96d8	6c 	l 
	ld l,h			;96d9	6c 	l 
	ld l,h			;96da	6c 	l 
	ld l,h			;96db	6c 	l 
	ld l,h			;96dc	6c 	l 
	ld a,(bc)			;96dd	0a 	. 
	ld l,e			;96de	6b 	k 
	ld l,e			;96df	6b 	k 
	ld l,e			;96e0	6b 	k 
	ld l,e			;96e1	6b 	k 
	ld l,e			;96e2	6b 	k 
	ld l,e			;96e3	6b 	k 
	ld l,e			;96e4	6b 	k 
	ld a,(bc)			;96e5	0a 	. 
	ld bc,00001h		;96e6	01 01 00 	. . . 
	nop			;96e9	00 	. 
	ld a,(bc)			;96ea	0a 	. 
	ld a,(bc)			;96eb	0a 	. 
	ld a,(bc)			;96ec	0a 	. 
	ld a,(bc)			;96ed	0a 	. 
	ld a,(bc)			;96ee	0a 	. 
	ld a,(bc)			;96ef	0a 	. 
	ld bc,00a00h		;96f0	01 00 0a 	. . . 
	ld a,(bc)			;96f3	0a 	. 
	djnz $-97		;96f4	10 9d 	. . 
	ld a,(bc)			;96f6	0a 	. 
	ld a,(bc)			;96f7	0a 	. 
	ld a,(bc)			;96f8	0a 	. 
	ld bc,00a10h		;96f9	01 10 0a 	. . . 
	ld bc,00a0fh		;96fc	01 0f 0a 	. . . 
	djnz $+4		;96ff	10 02 	. . 
	sbc a,l			;9701	9d 	. 
	ld bc,0100ah		;9702	01 0a 10 	. . . 
	ld b,00ah		;9705	06 0a 	. . 
	ld bc,00202h		;9707	01 02 02 	. . . 
	ld (bc),a			;970a	02 	. 
	xor e			;970b	ab 	. 
	ld bc,00a0ah		;970c	01 0a 0a 	. . . 
	nop			;970f	00 	. 
	nop			;9710	00 	. 
	ld e,000h		;9711	1e 00 	. . 
	nop			;9713	00 	. 
	ld h,000h		;9714	26 00 	& . 
	ld (bc),a			;9716	02 	. 
	nop			;9717	00 	. 
	ld bc,01e36h		;9718	01 36 1e 	. 6 . 
	ld h,035h		;971b	26 35 	& 5 
	ld bc,0000ah		;971d	01 0a 00 	. . . 
	djnz $+2		;9720	10 00 	. . 
	ld (hl),035h		;9722	36 35 	6 5 
	nop			;9724	00 	. 
	djnz $+12		;9725	10 0a 	. . 
	nop			;9727	00 	. 
	nop			;9728	00 	. 
	nop			;9729	00 	. 
	nop			;972a	00 	. 
	nop			;972b	00 	. 
	nop			;972c	00 	. 
	nop			;972d	00 	. 
	ld a,(bc)			;972e	0a 	. 
	ld l,h			;972f	6c 	l 
	ld l,h			;9730	6c 	l 
	ld l,h			;9731	6c 	l 
	ld l,h			;9732	6c 	l 
	ld l,h			;9733	6c 	l 
	ld l,h			;9734	6c 	l 
	ld l,h			;9735	6c 	l 
	nop			;9736	00 	. 
	nop			;9737	00 	. 
	ld h,000h		;9738	26 00 	& . 
	nop			;973a	00 	. 
	ld bc,00100h		;973b	01 00 01 	. . . 
	ld bc,03500h		;973e	01 00 35 	. . 5 
	nop			;9741	00 	. 
	nop			;9742	00 	. 
	djnz $+2		;9743	10 00 	. . 
	daa			;9745	27 	' 
	djnz $+2		;9746	10 00 	. . 
	nop			;9748	00 	. 
	ld bc,02600h		;9749	01 00 26 	. . & 
	ld h,035h		;974c	26 35 	& 5 
	nop			;974e	00 	. 
	nop			;974f	00 	. 
	nop			;9750	00 	. 
	djnz $+2		;9751	10 00 	. . 
	dec (hl)			;9753	35 	5 
	dec (hl)			;9754	35 	5 
	nop			;9755	00 	. 
	ld l,h			;9756	6c 	l 
	ld l,h			;9757	6c 	l 
	ld l,h			;9758	6c 	l 
	ld l,h			;9759	6c 	l 
	ld l,h			;975a	6c 	l 
	ld l,h			;975b	6c 	l 
	ld l,h			;975c	6c 	l 
	ld l,h			;975d	6c 	l 
	ld bc,00000h		;975e	01 00 00 	. . . 
	nop			;9761	00 	. 
	nop			;9762	00 	. 
	nop			;9763	00 	. 
	ld d,001h		;9764	16 01 	. . 
	djnz $+2		;9766	10 00 	. . 
	nop			;9768	00 	. 
	ld e,000h		;9769	1e 00 	. . 
	nop			;976b	00 	. 
	djnz $+18		;976c	10 10 	. . 
	nop			;976e	00 	. 
	nop			;976f	00 	. 
	ld e,036h		;9770	1e 36 	. 6 
	nop			;9772	00 	. 
	ld h,000h		;9773	26 00 	& . 
	ld bc,02600h		;9775	01 00 26 	. . & 
	ld (hl),000h		;9778	36 00 	6 . 
	nop			;977a	00 	. 
	dec (hl)			;977b	35 	5 
	ld h,010h		;977c	26 10 	& . 
	ld l,h			;977e	6c 	l 
	ld l,h			;977f	6c 	l 
	ld l,h			;9780	6c 	l 
	ld l,h			;9781	6c 	l 
	ld l,h			;9782	6c 	l 
	ld l,h			;9783	6c 	l 
	ld l,h			;9784	6c 	l 
	ld l,h			;9785	6c 	l 
	ld bc,03f01h		;9786	01 01 3f 	. . ? 
	ld bc,00026h		;9789	01 26 00 	. & . 
	nop			;978c	00 	. 
	ld a,(bc)			;978d	0a 	. 
	djnz $+27		;978e	10 19 	. . 
	add hl,de			;9790	19 	. 
	add hl,de			;9791	19 	. 
	dec (hl)			;9792	35 	5 
	ld e,000h		;9793	1e 00 	. . 
	ld a,(bc)			;9795	0a 	. 
	ld bc,03636h		;9796	01 36 36 	. 6 6 
	ld (hl),000h		;9799	36 00 	6 . 
	ld (hl),001h		;979b	36 01 	6 . 
	ld a,(bc)			;979d	0a 	. 
	djnz $+2		;979e	10 00 	. . 
	nop			;97a0	00 	. 
	ld h,01eh		;97a1	26 1e 	& . 
	nop			;97a3	00 	. 
	djnz $+12		;97a4	10 0a 	. . 
	ld l,h			;97a6	6c 	l 
	ld l,h			;97a7	6c 	l 
	ld l,h			;97a8	6c 	l 
	ld l,h			;97a9	6c 	l 
	ld l,h			;97aa	6c 	l 
	ld l,h			;97ab	6c 	l 
	ld l,h			;97ac	6c 	l 
	ld a,(bc)			;97ad	0a 	. 
	rlca			;97ae	07 	. 
	rla			;97af	17 	. 
	ld e,00ah		;97b0	1e 0a 	. . 
	ld a,(bc)			;97b2	0a 	. 
	ld e,e			;97b3	5b 	[ 
	ld h,008h		;97b4	26 08 	& . 
	dec b			;97b6	05 	. 
	ld d,036h		;97b7	16 36 	. 6 
	ld a,(bc)			;97b9	0a 	. 
	ld a,(bc)			;97ba	0a 	. 
	ld a,(bc)			;97bb	0a 	. 
	jr nz,$+10		;97bc	20 08 	  . 
	inc bc			;97be	03 	. 
	xor e			;97bf	ab 	. 
	ld bc,09d27h		;97c0	01 27 9d 	. ' . 
	ld (bc),a			;97c3	02 	. 
	ld a,(de)			;97c4	1a 	. 
	ld b,003h		;97c5	06 03 	. . 
	add hl,de			;97c7	19 	. 
	ld a,(00232h)		;97c8	3a 32 02 	: 2 . 
	add hl,de			;97cb	19 	. 
	sbc a,l			;97cc	9d 	. 
	inc b			;97cd	04 	. 
	add hl,bc			;97ce	09 	. 
	ld (hl),035h		;97cf	36 35 	6 5 
	dec (hl)			;97d1	35 	5 
	djnz $+56		;97d2	10 36 	. 6 
	rra			;97d4	1f 	. 
	rrca			;97d5	0f 	. 
	dec b			;97d6	05 	. 
	ld d,000h		;97d7	16 00 	. . 
	ld bc,01a01h		;97d9	01 01 1a 	. . . 
	nop			;97dc	00 	. 
	ld b,009h		;97dd	06 09 	. . 
	add hl,de			;97df	19 	. 
	ld bc,0100eh		;97e0	01 0e 10 	. . . 
	xor e			;97e3	ab 	. 
	ld bc,0070fh		;97e4	01 0f 07 	. . . 
	ld (hl),09dh		;97e7	36 9d 	6 . 
	ld (bc),a			;97e9	02 	. 
	ld bc,00215h		;97ea	01 15 02 	. . . 
	ld b,005h		;97ed	06 05 	. . 
	ld bc,0100dh		;97ef	01 0d 10 	. . . 
	ld (bc),a			;97f2	02 	. 
	jr $+4		;97f3	18 02 	. . 
	inc b			;97f5	04 	. 
	inc bc			;97f6	03 	. 
	sbc a,l			;97f7	9d 	. 
	add hl,de			;97f8	19 	. 
	ld bc,09d02h		;97f9	01 02 9d 	. . . 
	add hl,bc			;97fc	09 	. 
	ld c,00ah		;97fd	0e 0a 	. . 
	ld a,(bc)			;97ff	0a 	. 
	nop			;9800	00 	. 
	ld bc,0001ah		;9801	01 1a 00 	. . . 
	ld a,(bc)			;9804	0a 	. 
	ld a,(bc)			;9805	0a 	. 
	ld a,(bc)			;9806	0a 	. 
	ld a,(bc)			;9807	0a 	. 
	ld bc,02719h		;9808	01 19 27 	. . ' 
	ld e,00ah		;980b	1e 0a 	. . 
	ld a,(bc)			;980d	0a 	. 
	ld a,(bc)			;980e	0a 	. 
	ld a,(bc)			;980f	0a 	. 
	djnz $+8		;9810	10 06 	. . 
	dec b			;9812	05 	. 
	ld sp,00a0ah		;9813	31 0a 0a 	1 . . 
	ld a,(bc)			;9816	0a 	. 
	ld a,(bc)			;9817	0a 	. 
	ld bc,00904h		;9818	01 04 09 	. . . 
	dec h			;981b	25 	% 
	ld a,(bc)			;981c	0a 	. 
	ld a,(bc)			;981d	0a 	. 
	add hl,bc			;981e	09 	. 
	add hl,de			;981f	19 	. 
	dec c			;9820	0d 	. 
	djnz $+55		;9821	10 35 	. 5 
	dec de			;9823	1b 	. 
	ld a,(bc)			;9824	0a 	. 
	ld a,(bc)			;9825	0a 	. 
	rlca			;9826	07 	. 
	ld e,001h		;9827	1e 01 	. . 
	ld a,(bc)			;9829	0a 	. 
	ld a,(bc)			;982a	0a 	. 
	ld e,00ah		;982b	1e 0a 	. . 
	ld a,(bc)			;982d	0a 	. 
	dec b			;982e	05 	. 
	jr $+18		;982f	18 10 	. . 
	ld a,(bc)			;9831	0a 	. 
	ld a,(bc)			;9832	0a 	. 
	ld sp,00a0ah		;9833	31 0a 0a 	1 . . 
	inc bc			;9836	03 	. 
	djnz $+3		;9837	10 01 	. . 
	ld a,(bc)			;9839	0a 	. 
	ld a,(bc)			;983a	0a 	. 
	dec sp			;983b	3b 	; 
	ld a,(bc)			;983c	0a 	. 
	ld a,(bc)			;983d	0a 	. 
	inc bc			;983e	03 	. 
	ld bc,010abh		;983f	01 ab 10 	. . . 
	djnz $+26		;9842	10 18 	. . 
	ld a,(bc)			;9844	0a 	. 
	ld a,(bc)			;9845	0a 	. 
	ld a,(bc)			;9846	0a 	. 
	ld a,(bc)			;9847	0a 	. 
	djnz $+3		;9848	10 01 	. . 
	ld bc,00a10h		;984a	01 10 0a 	. . . 
	ld a,(bc)			;984d	0a 	. 
	dec b			;984e	05 	. 
	ld bc,00126h		;984f	01 26 01 	. & . 
	ld a,(bc)			;9852	0a 	. 
	nop			;9853	00 	. 
	ld h,008h		;9854	26 08 	& . 
	add hl,bc			;9856	09 	. 
	add hl,de			;9857	19 	. 
	dec sp			;9858	3b 	; 
	ld c,00ah		;9859	0e 0a 	. . 
	nop			;985b	00 	. 
	rlca			;985c	07 	. 
	ld b,007h		;985d	06 07 	. . 
	rla			;985f	17 	. 
	ld (hl),09dh		;9860	36 9d 	6 . 
	ld (bc),a			;9862	02 	. 
	nop			;9863	00 	. 
	dec b			;9864	05 	. 
	rrca			;9865	0f 	. 
	dec b			;9866	05 	. 
	ld d,001h		;9867	16 01 	. . 
	djnz $+17		;9869	10 0f 	. . 
	ld bc,00609h		;986b	01 09 06 	. . . 
	inc bc			;986e	03 	. 
	xor e			;986f	ab 	. 
	djnz $+3		;9870	10 01 	. . 
	jr $-97		;9872	18 9d 	. . 
	dec b			;9874	05 	. 
	sbc a,l			;9875	9d 	. 
	dec b			;9876	05 	. 
	ld e,001h		;9877	1e 01 	. . 
	ccf			;9879	3f 	? 
	ld bc,00108h		;987a	01 08 01 	. . . 
	ld bc,00603h		;987d	01 03 06 	. . . 
	daa			;9880	27 	' 
	sbc a,l			;9881	9d 	. 
	rrca			;9882	0f 	. 
	ld sp,0199dh		;9883	31 9d 19 	1 . . 
	inc bc			;9886	03 	. 
	add hl,de			;9887	19 	. 
	dec h			;9888	25 	% 
	rrca			;9889	0f 	. 
	jr $+52		;988a	18 32 	. 2 
	inc bc			;988c	03 	. 
	ex af,af'			;988d	08 	. 
	add hl,bc			;988e	09 	. 
	ld b,019h		;988f	06 19 	. . 
	ld b,019h		;9891	06 19 	. . 
	dec sp			;9893	3b 	; 
	rrca			;9894	0f 	. 
	jr $+39		;9895	18 25 	. % 
	inc bc			;9897	03 	. 
	jr $-97		;9898	18 9d 	. . 
	ld b,006h		;989a	06 06 	. . 
	jr $+6		;989c	18 04 	. . 
	ld bc,02608h		;989e	01 08 26 	. . & 
	ld bc,00801h		;98a1	01 01 08 	. . . 
	jr c,$+8		;98a4	38 06 	8 . 
	daa			;98a6	27 	' 
	ld (hl),005h		;98a7	36 05 	6 . 
	djnz $+6		;98a9	10 04 	. . 
	ex af,af'			;98ab	08 	. 
	jr $+17		;98ac	18 0f 	. . 
	rlca			;98ae	07 	. 
	ld bc,00102h		;98af	01 02 01 	. . . 
	inc b			;98b2	04 	. 
	ld sp,0069dh		;98b3	31 9d 06 	1 . . 
	ld (00203h),a		;98b6	32 03 02 	2 . . 
	daa			;98b9	27 	' 
	add hl,bc			;98ba	09 	. 
	dec h			;98bb	25 	% 
	add hl,de			;98bc	19 	. 
	rrca			;98bd	0f 	. 
	dec b			;98be	05 	. 
	ld (bc),a			;98bf	02 	. 
	xor e			;98c0	ab 	. 
	dec h			;98c1	25 	% 
	dec h			;98c2	25 	% 
	inc b			;98c3	04 	. 
	ld b,006h		;98c4	06 06 	. . 
	dec b			;98c6	05 	. 
	ccf			;98c7	3f 	? 
	ex af,af'			;98c8	08 	. 
	ld bc,01608h		;98c9	01 08 16 	. . . 
	ld h,008h		;98cc	26 08 	& . 
	add hl,bc			;98ce	09 	. 
	sbc a,l			;98cf	9d 	. 
	ld sp,03404h		;98d0	31 04 34 	1 . 4 
	sbc a,l			;98d3	9d 	. 
	dec b			;98d4	05 	. 
	ex af,af'			;98d5	08 	. 
	rlca			;98d6	07 	. 
	inc bc			;98d7	03 	. 
	dec h			;98d8	25 	% 
	sbc a,l			;98d9	9d 	. 
	jr $+41		;98da	18 27 	. ' 
	add hl,bc			;98dc	09 	. 
	ld b,005h		;98dd	06 05 	. . 
	rrca			;98df	0f 	. 
	ld (bc),a			;98e0	02 	. 
	rrca			;98e1	0f 	. 
	add hl,de			;98e2	19 	. 
	rlca			;98e3	07 	. 
	dec sp			;98e4	3b 	; 
	inc b			;98e5	04 	. 
	add hl,bc			;98e6	09 	. 
	ld b,09dh		;98e7	06 9d 	. . 
	ld sp,03b18h		;98e9	31 18 3b 	1 . ; 
	jr $+6		;98ec	18 04 	. . 
	dec b			;98ee	05 	. 
	ld h,016h		;98ef	26 16 	& . 
	nop			;98f1	00 	. 
	ld b,020h		;98f2	06 20 	.   
	rlca			;98f4	07 	. 
	ex af,af'			;98f5	08 	. 
	inc bc			;98f6	03 	. 
	dec h			;98f7	25 	% 
	add hl,bc			;98f8	09 	. 
	ld bc,01a0fh		;98f9	01 0f 1a 	. . . 
	dec h			;98fc	25 	% 
	ex af,af'			;98fd	08 	. 
	add hl,bc			;98fe	09 	. 
	ld (bc),a			;98ff	02 	. 
	dec sp			;9900	3b 	; 
	inc b			;9901	04 	. 
	jr $+17		;9902	18 0f 	. . 
	xor e			;9904	ab 	. 
	ld b,005h		;9905	06 05 	. . 
	inc b			;9907	04 	. 
	ex af,af'			;9908	08 	. 
	daa			;9909	27 	' 
	sbc a,l			;990a	9d 	. 
	ld b,09dh		;990b	06 9d 	. . 
	rrca			;990d	0f 	. 
	add hl,bc			;990e	09 	. 
	sbc a,l			;990f	9d 	. 
	jr $+61		;9910	18 3b 	. ; 
	add hl,de			;9912	19 	. 
	ld (bc),a			;9913	02 	. 
	djnz $+8		;9914	10 06 	. . 
	ld bc,00101h		;9916	01 01 01 	. . . 
	ld h,01eh		;9919	26 1e 	& . 
	ld e,007h		;991b	1e 07 	. . 
	ex af,af'			;991d	08 	. 
	daa			;991e	27 	' 
	sbc a,l			;991f	9d 	. 
	inc bc			;9920	03 	. 
	dec h			;9921	25 	% 
	ex af,af'			;9922	08 	. 
	jr $+39		;9923	18 25 	. % 
	ex af,af'			;9925	08 	. 
	dec b			;9926	05 	. 
	add hl,bc			;9927	09 	. 
	ld (bc),a			;9928	02 	. 
	xor e			;9929	ab 	. 
	ld sp,0270fh		;992a	31 0f 27 	1 . ' 
	ex af,af'			;992d	08 	. 
	add hl,bc			;992e	09 	. 
	dec h			;992f	25 	% 
	daa			;9930	27 	' 
	add hl,bc			;9931	09 	. 
	dec sp			;9932	3b 	; 
	jr $+61		;9933	18 3b 	. ; 
	ld b,005h		;9935	06 05 	. . 
	inc bc			;9937	03 	. 
	dec h			;9938	25 	% 
	dec b			;9939	05 	. 
	inc (hl)			;993a	34 	4 
	inc b			;993b	04 	. 
	ld sp,00504h		;993c	31 04 05 	1 . . 
	ccf			;993f	3f 	? 
	nop			;9940	00 	. 
	dec b			;9941	05 	. 
	ld bc,0011eh		;9942	01 1e 01 	. . . 
	ld bc,09d09h		;9945	01 09 9d 	. . . 
	ld h,019h		;9948	26 19 	& . 
	sbc a,l			;994a	9d 	. 
	ld b,010h		;994b	06 10 	. . 
	sbc a,l			;994d	9d 	. 
	dec b			;994e	05 	. 
	daa			;994f	27 	' 
	dec b			;9950	05 	. 
	ld (hl),003h		;9951	36 03 	6 . 
	djnz $+40		;9953	10 26 	. & 
	rrca			;9955	0f 	. 
	inc bc			;9956	03 	. 
	dec h			;9957	25 	% 
	add hl,bc			;9958	09 	. 
	ld bc,0019dh		;9959	01 9d 01 	. . . 
	dec sp			;995c	3b 	; 
	ld b,09dh		;995d	06 9d 	. . 
	ld (bc),a			;995f	02 	. 
	dec h			;9960	25 	% 
	sbc a,l			;9961	9d 	. 
	ld (bc),a			;9962	02 	. 
	inc b			;9963	04 	. 
	jr $+6		;9964	18 04 	. . 
	ld a,(bc)			;9966	0a 	. 
	dec b			;9967	05 	. 
	ld bc,00101h		;9968	01 01 01 	. . . 
	ld bc,00601h		;996b	01 01 06 	. . . 
	ld a,(bc)			;996e	0a 	. 
	add hl,bc			;996f	09 	. 
	add hl,de			;9970	19 	. 
	ld c,010h		;9971	0e 10 	. . 
	xor e			;9973	ab 	. 
	sbc a,l			;9974	9d 	. 
	rrca			;9975	0f 	. 
	ld a,(bc)			;9976	0a 	. 
	dec b			;9977	05 	. 
	ex af,af'			;9978	08 	. 
	djnz $+3		;9979	10 01 	. . 
	sbc a,l			;997b	9d 	. 
	ld (bc),a			;997c	02 	. 
	ld b,09dh		;997d	06 9d 	. . 
	ld (bc),a			;997f	02 	. 
	ld b,000h		;9980	06 00 	. . 
	ld c,002h		;9982	0e 02 	. . 
	dec c			;9984	0d 	. 
	inc b			;9985	04 	. 
	add hl,bc			;9986	09 	. 
	ld (bc),a			;9987	02 	. 
	ld (bc),a			;9988	02 	. 
	ld bc,09d0eh		;9989	01 0e 9d 	. . . 
	dec c			;998c	0d 	. 
	inc b			;998d	04 	. 
	ld bc,00101h		;998e	01 01 01 	. . . 
	ld bc,00101h		;9991	01 01 01 	. . . 
	ccf			;9994	3f 	? 
	ld b,003h		;9995	06 03 	. . 
	ld (bc),a			;9997	02 	. 
	sbc a,l			;9998	9d 	. 
	ld (bc),a			;9999	02 	. 
	inc b			;999a	04 	. 
	ld (bc),a			;999b	02 	. 
	djnz $+6		;999c	10 04 	. . 
	sbc a,l			;999e	9d 	. 
	ld (bc),a			;999f	02 	. 
	djnz $+16		;99a0	10 0e 	. . 
	sbc a,l			;99a2	9d 	. 
	rra			;99a3	1f 	. 
	ld e,006h		;99a4	1e 06 	. . 
	ld a,(bc)			;99a6	0a 	. 
	ld a,(bc)			;99a7	0a 	. 
	ld e,027h		;99a8	1e 27 	. ' 
	rrca			;99aa	0f 	. 
	ld d,034h		;99ab	16 34 	. 4 
	sbc a,l			;99ad	9d 	. 
	ld a,(bc)			;99ae	0a 	. 
	ld a,(bc)			;99af	0a 	. 
	jr $+39		;99b0	18 25 	. % 
	ld b,002h		;99b2	06 02 	. . 
	jr $+6		;99b4	18 04 	. . 
	dec b			;99b6	05 	. 
	ld bc,03f1ah		;99b7	01 1a 3f 	. . ? 
	ld bc,00116h		;99ba	01 16 01 	. . . 
	ld bc,00a0ah		;99bd	01 0a 0a 	. . . 
	ld a,(bc)			;99c0	0a 	. 
	ld a,(bc)			;99c1	0a 	. 
	ld e,h			;99c2	5c 	\ 
	ld a,(bc)			;99c3	0a 	. 
	ld a,(bc)			;99c4	0a 	. 
	ld a,(bc)			;99c5	0a 	. 
	add hl,bc			;99c6	09 	. 
	add hl,de			;99c7	19 	. 
	daa			;99c8	27 	' 
	djnz $+16		;99c9	10 0e 	. . 
	djnz $-97		;99cb	10 9d 	. . 
	ld (bc),a			;99cd	02 	. 
	rlca			;99ce	07 	. 
	jr $+39		;99cf	18 25 	. % 
	nop			;99d1	00 	. 
	add hl,de			;99d2	19 	. 
	ld bc,00f10h		;99d3	01 10 0f 	. . . 
	dec b			;99d6	05 	. 
	ld l,b			;99d7	68 	h 
	djnz $+32		;99d8	10 1e 	. . 
	jr $+41		;99da	18 27 	. ' 
	ld e,006h		;99dc	1e 06 	. . 
	ld a,(bc)			;99de	0a 	. 
	ld l,b			;99df	68 	h 
	nop			;99e0	00 	. 
	ex af,af'			;99e1	08 	. 
	ld a,(bc)			;99e2	0a 	. 
	rlca			;99e3	07 	. 
	ex af,af'			;99e4	08 	. 
	ld a,(bc)			;99e5	0a 	. 
	ld a,(bc)			;99e6	0a 	. 
	ld e,e			;99e7	5b 	[ 
	ld h,036h		;99e8	26 36 	& 6 
	djnz $+55		;99ea	10 35 	. 5 
	ex af,af'			;99ec	08 	. 
	ld a,(bc)			;99ed	0a 	. 
	ld a,(bc)			;99ee	0a 	. 
	add hl,bc			;99ef	09 	. 
	dec (hl)			;99f0	35 	5 
	ld e,000h		;99f1	1e 00 	. . 
	nop			;99f3	00 	. 
	ex af,af'			;99f4	08 	. 
	ld a,(bc)			;99f5	0a 	. 
	ld a,(bc)			;99f6	0a 	. 
	dec b			;99f7	05 	. 
	ld h,036h		;99f8	26 36 	& 6 
	nop			;99fa	00 	. 
	nop			;99fb	00 	. 
	ex af,af'			;99fc	08 	. 
	ld a,(bc)			;99fd	0a 	. 
	ld a,(bc)			;99fe	0a 	. 
	add hl,bc			;99ff	09 	. 
	ld (0011eh),a		;9a00	32 1e 01 	2 . . 
	ld h,008h		;9a03	26 08 	& . 
	ld a,(bc)			;9a05	0a 	. 
	ld a,(bc)			;9a06	0a 	. 
	rlca			;9a07	07 	. 
	nop			;9a08	00 	. 
	nop			;9a09	00 	. 
	ld a,(de)			;9a0a	1a 	. 
	scf			;9a0b	37 	7 
	ex af,af'			;9a0c	08 	. 
	ld a,(bc)			;9a0d	0a 	. 
	ld a,(bc)			;9a0e	0a 	. 
	rlca			;9a0f	07 	. 
	nop			;9a10	00 	. 
	ld e,00eh		;9a11	1e 0e 	. . 
	scf			;9a13	37 	7 
	ex af,af'			;9a14	08 	. 
	ld a,(bc)			;9a15	0a 	. 
	ld a,(bc)			;9a16	0a 	. 
	dec b			;9a17	05 	. 
	ld h,034h		;9a18	26 34 	& 4 
	sbc a,l			;9a1a	9d 	. 
	ld (00a08h),a		;9a1b	32 08 0a 	2 . . 
	ld a,(bc)			;9a1e	0a 	. 
	add hl,bc			;9a1f	09 	. 
	dec (hl)			;9a20	35 	5 
	inc (hl)			;9a21	34 	4 
	xor e			;9a22	ab 	. 
	scf			;9a23	37 	7 
	ex af,af'			;9a24	08 	. 
	ld a,(bc)			;9a25	0a 	. 
	ld a,(bc)			;9a26	0a 	. 
	rlca			;9a27	07 	. 
	nop			;9a28	00 	. 
	ld (hl),00eh		;9a29	36 0e 	6 . 
	dec (hl)			;9a2b	35 	5 
	ex af,af'			;9a2c	08 	. 
	ld a,(bc)			;9a2d	0a 	. 
	ld a,(bc)			;9a2e	0a 	. 
	dec b			;9a2f	05 	. 
	ld h,01eh		;9a30	26 1e 	& . 
	scf			;9a32	37 	7 
	nop			;9a33	00 	. 
	ex af,af'			;9a34	08 	. 
	ld a,(bc)			;9a35	0a 	. 
	ld a,(bc)			;9a36	0a 	. 
	add hl,bc			;9a37	09 	. 
	dec (hl)			;9a38	35 	5 
	inc (hl)			;9a39	34 	4 
	ld (00800h),a		;9a3a	32 00 08 	2 . . 
	ld a,(bc)			;9a3d	0a 	. 
	ld a,(bc)			;9a3e	0a 	. 
	dec b			;9a3f	05 	. 
	ld h,036h		;9a40	26 36 	& 6 
	dec (hl)			;9a42	35 	5 
	nop			;9a43	00 	. 
	ex af,af'			;9a44	08 	. 
	ld a,(bc)			;9a45	0a 	. 
	ld a,(bc)			;9a46	0a 	. 
	add hl,bc			;9a47	09 	. 
	scf			;9a48	37 	7 
	nop			;9a49	00 	. 
	ld bc,00800h		;9a4a	01 00 08 	. . . 
	ld a,(bc)			;9a4d	0a 	. 
	ld a,(bc)			;9a4e	0a 	. 
	rlca			;9a4f	07 	. 
	nop			;9a50	00 	. 
	ld e,027h		;9a51	1e 27 	. ' 
	nop			;9a53	00 	. 
	ex af,af'			;9a54	08 	. 
	ld a,(bc)			;9a55	0a 	. 
	ld a,(bc)			;9a56	0a 	. 
	rlca			;9a57	07 	. 
	nop			;9a58	00 	. 
	jr c,$+2		;9a59	38 00 	8 . 
	ld h,008h		;9a5b	26 08 	& . 
	ld a,(bc)			;9a5d	0a 	. 
	ld a,(bc)			;9a5e	0a 	. 
	rlca			;9a5f	07 	. 
	ld h,036h		;9a60	26 36 	& 6 
	nop			;9a62	00 	. 
	dec (hl)			;9a63	35 	5 
	ex af,af'			;9a64	08 	. 
	ld a,(bc)			;9a65	0a 	. 
	ld a,(bc)			;9a66	0a 	. 
	dec sp			;9a67	3b 	; 
	dec (hl)			;9a68	35 	5 
	nop			;9a69	00 	. 
	nop			;9a6a	00 	. 
	nop			;9a6b	00 	. 
	ld (hl),00ah		;9a6c	36 0a 	6 . 
	inc bc			;9a6e	03 	. 
	ld sp,00000h		;9a6f	31 00 00 	1 . . 
	nop			;9a72	00 	. 
	nop			;9a73	00 	. 
	nop			;9a74	00 	. 
	rrca			;9a75	0f 	. 
	ld l,b			;9a76	68 	h 
	dec (hl)			;9a77	35 	5 
	nop			;9a78	00 	. 
	nop			;9a79	00 	. 
	nop			;9a7a	00 	. 
	nop			;9a7b	00 	. 
	nop			;9a7c	00 	. 
	ex af,af'			;9a7d	08 	. 
	ld e,e			;9a7e	5b 	[ 
	nop			;9a7f	00 	. 
	ld h,01eh		;9a80	26 1e 	& . 
	nop			;9a82	00 	. 
	ld h,01eh		;9a83	26 1e 	& . 
	ex af,af'			;9a85	08 	. 
	add hl,bc			;9a86	09 	. 
	nop			;9a87	00 	. 
	dec (hl)			;9a88	35 	5 
	ld (hl),000h		;9a89	36 00 	6 . 
	dec (hl)			;9a8b	35 	5 
	ld (hl),006h		;9a8c	36 06 	6 . 
	rlca			;9a8e	07 	. 
	nop			;9a8f	00 	. 
	nop			;9a90	00 	. 
	ld e,000h		;9a91	1e 00 	. . 
	nop			;9a93	00 	. 
	ld e,00fh		;9a94	1e 0f 	. . 
	rlca			;9a96	07 	. 
	nop			;9a97	00 	. 
	ld h,036h		;9a98	26 36 	& 6 
	nop			;9a9a	00 	. 
	ld h,036h		;9a9b	26 36 	& 6 
	ex af,af'			;9a9d	08 	. 
	dec b			;9a9e	05 	. 
	nop			;9a9f	00 	. 
	dec (hl)			;9aa0	35 	5 
	nop			;9aa1	00 	. 
	nop			;9aa2	00 	. 
	dec (hl)			;9aa3	35 	5 
	nop			;9aa4	00 	. 
	ld b,005h		;9aa5	06 05 	. . 
	ld bc,00101h		;9aa7	01 01 01 	. . . 
	ld bc,00101h		;9aaa	01 01 01 	. . . 
	ld bc,01068h		;9aad	01 68 10 	. h . 
	djnz $+18		;9ab0	10 10 	. . 
	djnz $+18		;9ab2	10 10 	. . 
	djnz $+17		;9ab4	10 0f 	. . 
	ld l,b			;9ab6	68 	h 
	nop			;9ab7	00 	. 
	nop			;9ab8	00 	. 
	nop			;9ab9	00 	. 
	nop			;9aba	00 	. 
	nop			;9abb	00 	. 
	nop			;9abc	00 	. 
	ex af,af'			;9abd	08 	. 
	ld l,b			;9abe	68 	h 
	nop			;9abf	00 	. 
	nop			;9ac0	00 	. 
	nop			;9ac1	00 	. 
	nop			;9ac2	00 	. 
	nop			;9ac3	00 	. 
	nop			;9ac4	00 	. 
	ex af,af'			;9ac5	08 	. 
	ld e,e			;9ac6	5b 	[ 
	ld bc,00101h		;9ac7	01 01 01 	. . . 
	ld bc,00101h		;9aca	01 01 01 	. . . 
	ld b,03fh		;9acd	06 3f 	. ? 
	nop			;9acf	00 	. 
	ld a,(bc)			;9ad0	0a 	. 
	ld a,(bc)			;9ad1	0a 	. 
	ld a,(bc)			;9ad2	0a 	. 
	ld a,(bc)			;9ad3	0a 	. 
	ld a,(bc)			;9ad4	0a 	. 
	ld a,(bc)			;9ad5	0a 	. 
	ld a,(bc)			;9ad6	0a 	. 
	ld bc,00210h		;9ad7	01 10 02 	. . . 
	ld (bc),a			;9ada	02 	. 
	djnz $+4		;9adb	10 02 	. . 
	inc b			;9add	04 	. 
	ld a,(bc)			;9ade	0a 	. 
	ld a,(bc)			;9adf	0a 	. 
	ld bc,00202h		;9ae0	01 02 02 	. . . 
	ld bc,00f10h		;9ae3	01 10 0f 	. . . 
	ld a,(bc)			;9ae6	0a 	. 
	ld a,(bc)			;9ae7	0a 	. 
	ld (bc),a			;9ae8	02 	. 
	djnz $+41		;9ae9	10 27 	. ' 
	ld (bc),a			;9aeb	02 	. 
	ld bc,00906h		;9aec	01 06 09 	. . . 
	djnz $+29		;9aef	10 1b 	. . 
	nop			;9af1	00 	. 
	dec (hl)			;9af2	35 	5 
	rra			;9af3	1f 	. 
	djnz $+17		;9af4	10 0f 	. . 
	ld bc,00000h		;9af6	01 00 00 	. . . 
	nop			;9af9	00 	. 
	nop			;9afa	00 	. 
	nop			;9afb	00 	. 
	nop			;9afc	00 	. 
	nop			;9afd	00 	. 
	ld a,(bc)			;9afe	0a 	. 
	nop			;9aff	00 	. 
	ld h,000h		;9b00	26 00 	& . 
	nop			;9b02	00 	. 
	nop			;9b03	00 	. 
	nop			;9b04	00 	. 
	ld h,00ah		;9b05	26 0a 	& . 
	nop			;9b07	00 	. 
	dec (hl)			;9b08	35 	5 
	ld e,000h		;9b09	1e 00 	. . 
	nop			;9b0b	00 	. 
	ld h,035h		;9b0c	26 35 	& 5 
	ld a,(bc)			;9b0e	0a 	. 
	nop			;9b0f	00 	. 
	nop			;9b10	00 	. 
	ld (hl),026h		;9b11	36 26 	6 & 
	ld h,035h		;9b13	26 35 	& 5 
	nop			;9b15	00 	. 
	ld a,(bc)			;9b16	0a 	. 
	ld l,h			;9b17	6c 	l 
	ld l,h			;9b18	6c 	l 
	ld l,h			;9b19	6c 	l 
	ld l,h			;9b1a	6c 	l 
	ld l,h			;9b1b	6c 	l 
	ld l,h			;9b1c	6c 	l 
	ld l,h			;9b1d	6c 	l 
	nop			;9b1e	00 	. 
	nop			;9b1f	00 	. 
	ld h,000h		;9b20	26 00 	& . 
	nop			;9b22	00 	. 
	ld h,000h		;9b23	26 00 	& . 
	nop			;9b25	00 	. 
	ld e,000h		;9b26	1e 00 	. . 
	dec (hl)			;9b28	35 	5 
	ld e,000h		;9b29	1e 00 	. . 
	dec (hl)			;9b2b	35 	5 
	ld e,000h		;9b2c	1e 00 	. . 
	ld (hl),000h		;9b2e	36 00 	6 . 
	nop			;9b30	00 	. 
	ld (hl),000h		;9b31	36 00 	6 . 
	nop			;9b33	00 	. 
	ld sp,00000h		;9b34	31 00 00 	1 . . 
	nop			;9b37	00 	. 
	nop			;9b38	00 	. 
	nop			;9b39	00 	. 
	nop			;9b3a	00 	. 
	nop			;9b3b	00 	. 
	dec (hl)			;9b3c	35 	5 
	ld h,06ch		;9b3d	26 6c 	& l 
	ld l,h			;9b3f	6c 	l 
	ld l,h			;9b40	6c 	l 
	ld l,h			;9b41	6c 	l 
	ld l,h			;9b42	6c 	l 
	ld l,h			;9b43	6c 	l 
	ld l,h			;9b44	6c 	l 
	ld l,h			;9b45	6c 	l 
	nop			;9b46	00 	. 
	nop			;9b47	00 	. 
	nop			;9b48	00 	. 
	ld h,026h		;9b49	26 26 	& & 
	nop			;9b4b	00 	. 
	nop			;9b4c	00 	. 
	nop			;9b4d	00 	. 
	nop			;9b4e	00 	. 
	ld e,000h		;9b4f	1e 00 	. . 
	dec (hl)			;9b51	35 	5 
	dec sp			;9b52	3b 	; 
	nop			;9b53	00 	. 
	nop			;9b54	00 	. 
	ld h,000h		;9b55	26 00 	& . 
	ld (hl),026h		;9b57	36 26 	6 & 
	nop			;9b59	00 	. 
	ld (hl),000h		;9b5a	36 00 	6 . 
	ld h,035h		;9b5c	26 35 	& 5 
	ld e,000h		;9b5e	1e 00 	. . 
	dec (hl)			;9b60	35 	5 
	nop			;9b61	00 	. 
	nop			;9b62	00 	. 
	nop			;9b63	00 	. 
	dec (hl)			;9b64	35 	5 
	nop			;9b65	00 	. 
	ld l,h			;9b66	6c 	l 
	ld l,h			;9b67	6c 	l 
	ld l,h			;9b68	6c 	l 
	ld l,h			;9b69	6c 	l 
	ld l,h			;9b6a	6c 	l 
	ld l,h			;9b6b	6c 	l 
	ld l,h			;9b6c	6c 	l 
	ld l,h			;9b6d	6c 	l 
	nop			;9b6e	00 	. 
	ld e,000h		;9b6f	1e 00 	. . 
	nop			;9b71	00 	. 
	nop			;9b72	00 	. 
	nop			;9b73	00 	. 
	nop			;9b74	00 	. 
	ex af,af'			;9b75	08 	. 
	ld e,036h		;9b76	1e 36 	. 6 
	nop			;9b78	00 	. 
	ld h,01eh		;9b79	26 1e 	& . 
	nop			;9b7b	00 	. 
	ld bc,03606h		;9b7c	01 06 36 	. . 6 
	nop			;9b7f	00 	. 
	nop			;9b80	00 	. 
	dec (hl)			;9b81	35 	5 
	ld (hl),01eh		;9b82	36 1e 	6 . 
	xor e			;9b84	ab 	. 
	inc b			;9b85	04 	. 
	nop			;9b86	00 	. 
	nop			;9b87	00 	. 
	nop			;9b88	00 	. 
	nop			;9b89	00 	. 
	nop			;9b8a	00 	. 
	jr $+18		;9b8b	18 10 	. . 
	rrca			;9b8d	0f 	. 
	ld l,h			;9b8e	6c 	l 
	ld l,h			;9b8f	6c 	l 
	ld l,h			;9b90	6c 	l 
	ld l,h			;9b91	6c 	l 
	ld l,h			;9b92	6c 	l 
	ld a,(bc)			;9b93	0a 	. 
	ld bc,00518h		;9b94	01 18 05 	. . . 
	ld bc,01e26h		;9b97	01 26 1e 	. & . 
	ld bc,00100h		;9b9a	01 00 01 	. . . 
	ld b,003h		;9b9d	06 03 	. . 
	ld c,03bh		;9b9f	0e 3b 	. ; 
	jr $-97		;9ba1	18 9d 	. . 
	ld bc,00f10h		;9ba3	01 10 0f 	. . . 
	add hl,bc			;9ba6	09 	. 
	djnz $+26		;9ba7	10 18 	. . 
	sbc a,l			;9ba9	9d 	. 
	ld (bc),a			;9baa	02 	. 
	sbc a,l			;9bab	9d 	. 
	ld bc,00506h		;9bac	01 06 05 	. . . 
	ld bc,0020eh		;9baf	01 0e 02 	. . . 
	djnz $+4		;9bb2	10 02 	. . 
	ld c,004h		;9bb4	0e 04 	. . 
	ld (bc),a			;9bb6	02 	. 
	sbc a,l			;9bb7	9d 	. 
	ld (bc),a			;9bb8	02 	. 
	dec c			;9bb9	0d 	. 
	ld bc,09d02h		;9bba	01 02 9d 	. . . 
	ld (bc),a			;9bbd	02 	. 
	dec b			;9bbe	05 	. 
	ld bc,00101h		;9bbf	01 01 01 	. . . 
	ld bc,00101h		;9bc2	01 01 01 	. . . 
	ld b,003h		;9bc5	06 03 	. . 
	dec c			;9bc7	0d 	. 
	dec c			;9bc8	0d 	. 
	add hl,hl			;9bc9	29 	) 
	jr z,$+16		;9bca	28 0e 	( . 
	ld c,004h		;9bcc	0e 04 	. . 
	inc bc			;9bce	03 	. 
	dec c			;9bcf	0d 	. 
	dec c			;9bd0	0d 	. 
	add hl,hl			;9bd1	29 	) 
	jr z,$+16		;9bd2	28 0e 	( . 
	ld c,004h		;9bd4	0e 04 	. . 
	inc bc			;9bd6	03 	. 
	dec c			;9bd7	0d 	. 
	dec c			;9bd8	0d 	. 
	add hl,hl			;9bd9	29 	) 
	jr z,$+16		;9bda	28 0e 	( . 
	ld c,004h		;9bdc	0e 04 	. . 
	sbc a,l			;9bde	9d 	. 
	dec c			;9bdf	0d 	. 
	dec c			;9be0	0d 	. 
	add hl,hl			;9be1	29 	) 
	jr z,$+16		;9be2	28 0e 	( . 
	ld c,004h		;9be4	0e 04 	. . 
	jp m,03a9bh		;9be6	fa 9b 3a 	. . : 
	sbc a,h			;9be9	9c 	. 
	cp d			;9bea	ba 	. 
	sbc a,h			;9beb	9c 	. 
	jp m,0fa9bh		;9bec	fa 9b fa 	. . . 
	sbc a,e			;9bef	9b 	. 
	jp m,0fa9bh		;9bf0	fa 9b fa 	. . . 
	sbc a,e			;9bf3	9b 	. 
	ld a,d			;9bf4	7a 	z 
	sbc a,h			;9bf5	9c 	. 
	jp m,07a9bh		;9bf6	fa 9b 7a 	. . z 
	sbc a,h			;9bf9	9c 	. 
	nop			;9bfa	00 	. 
	ld e,d			;9bfb	5a 	Z 
	ld e,e			;9bfc	5b 	[ 
	ld e,h			;9bfd	5c 	\ 
	ld a,d			;9bfe	7a 	z 
	ld a,c			;9bff	79 	y 
	ld a,b			;9c00	78 	x 
	nop			;9c01	00 	. 
	ld e,l			;9c02	5d 	] 
	ld e,(hl)			;9c03	5e 	^ 
	ld e,a			;9c04	5f 	_ 
	ld h,b			;9c05	60 	` 
	ld a,(hl)			;9c06	7e 	~ 
	ld a,l			;9c07	7d 	} 
	ld a,h			;9c08	7c 	| 
	ld a,e			;9c09	7b 	{ 
	ld h,c			;9c0a	61 	a 
	ld h,d			;9c0b	62 	b 
	ld h,e			;9c0c	63 	c 
	ld h,h			;9c0d	64 	d 
	add a,d			;9c0e	82 	. 
	add a,c			;9c0f	81 	. 
	add a,b			;9c10	80 	. 
	ld a,a			;9c11	7f 	 
	ld h,l			;9c12	65 	e 
	ld h,(hl)			;9c13	66 	f 
	ld h,a			;9c14	67 	g 
	ld l,b			;9c15	68 	h 
	add a,(hl)			;9c16	86 	. 
	add a,l			;9c17	85 	. 
	add a,h			;9c18	84 	. 
	add a,e			;9c19	83 	. 
	ld l,c			;9c1a	69 	i 
	ld l,d			;9c1b	6a 	j 
	ld l,e			;9c1c	6b 	k 
	ld l,h			;9c1d	6c 	l 
	adc a,d			;9c1e	8a 	. 
	adc a,c			;9c1f	89 	. 
	adc a,b			;9c20	88 	. 
	add a,a			;9c21	87 	. 
	ld l,l			;9c22	6d 	m 
	ld l,(hl)			;9c23	6e 	n 
	ld l,a			;9c24	6f 	o 
	ld (hl),b			;9c25	70 	p 
	adc a,(hl)			;9c26	8e 	. 
	adc a,l			;9c27	8d 	. 
	adc a,h			;9c28	8c 	. 
	adc a,e			;9c29	8b 	. 
	ld (hl),c			;9c2a	71 	q 
	ld (hl),d			;9c2b	72 	r 
	ld (hl),e			;9c2c	73 	s 
	ld (hl),h			;9c2d	74 	t 
	sub d			;9c2e	92 	. 
	sub c			;9c2f	91 	. 
	sub b			;9c30	90 	. 
	adc a,a			;9c31	8f 	. 
	nop			;9c32	00 	. 
	ld (hl),l			;9c33	75 	u 
	halt			;9c34	76 	v 
	ld (hl),a			;9c35	77 	w 
	sub l			;9c36	95 	. 
	sub h			;9c37	94 	. 
	sub e			;9c38	93 	. 
	nop			;9c39	00 	. 
	nop			;9c3a	00 	. 
	ld e,d			;9c3b	5a 	Z 
	ld e,e			;9c3c	5b 	[ 
	ld e,h			;9c3d	5c 	\ 
	ld a,d			;9c3e	7a 	z 
	ld a,c			;9c3f	79 	y 
	ld a,b			;9c40	78 	x 
	nop			;9c41	00 	. 
	ld e,l			;9c42	5d 	] 
	ld e,(hl)			;9c43	5e 	^ 
	ld e,a			;9c44	5f 	_ 
	ld h,b			;9c45	60 	` 
	ld a,(hl)			;9c46	7e 	~ 
	ld a,l			;9c47	7d 	} 
	ld a,h			;9c48	7c 	| 
	ld a,e			;9c49	7b 	{ 
	ld h,c			;9c4a	61 	a 
	ld h,d			;9c4b	62 	b 
	ld h,e			;9c4c	63 	c 
	ld h,h			;9c4d	64 	d 
	add a,d			;9c4e	82 	. 
	add a,c			;9c4f	81 	. 
	add a,b			;9c50	80 	. 
	ld a,a			;9c51	7f 	 
	ld h,l			;9c52	65 	e 
	ld h,(hl)			;9c53	66 	f 
	ld h,a			;9c54	67 	g 
	ld l,b			;9c55	68 	h 
	add a,(hl)			;9c56	86 	. 
	add a,l			;9c57	85 	. 
	add a,h			;9c58	84 	. 
	add a,e			;9c59	83 	. 
	ld l,c			;9c5a	69 	i 
	ld l,d			;9c5b	6a 	j 
	ld l,e			;9c5c	6b 	k 
	ld l,h			;9c5d	6c 	l 
	adc a,d			;9c5e	8a 	. 
	adc a,c			;9c5f	89 	. 
	adc a,b			;9c60	88 	. 
	add a,a			;9c61	87 	. 
	ld l,l			;9c62	6d 	m 
	ld l,(hl)			;9c63	6e 	n 
	ld l,a			;9c64	6f 	o 
	ld (hl),b			;9c65	70 	p 
	adc a,(hl)			;9c66	8e 	. 
	adc a,l			;9c67	8d 	. 
	adc a,h			;9c68	8c 	. 
	adc a,e			;9c69	8b 	. 
	ld (hl),c			;9c6a	71 	q 
	ld (hl),d			;9c6b	72 	r 
	ld (hl),e			;9c6c	73 	s 
	ld (hl),h			;9c6d	74 	t 
	sub d			;9c6e	92 	. 
	sub c			;9c6f	91 	. 
	sub b			;9c70	90 	. 
	adc a,a			;9c71	8f 	. 
	ret p			;9c72	f0 	. 
	ret p			;9c73	f0 	. 
	ret p			;9c74	f0 	. 
	ret p			;9c75	f0 	. 
	ret p			;9c76	f0 	. 
	ret p			;9c77	f0 	. 
	ret p			;9c78	f0 	. 
	ret p			;9c79	f0 	. 
	nop			;9c7a	00 	. 
	ld e,d			;9c7b	5a 	Z 
	ld e,e			;9c7c	5b 	[ 
	ld e,h			;9c7d	5c 	\ 
	ld a,d			;9c7e	7a 	z 
	ld a,c			;9c7f	79 	y 
	ld a,b			;9c80	78 	x 
	nop			;9c81	00 	. 
	ld e,l			;9c82	5d 	] 
	ld e,(hl)			;9c83	5e 	^ 
	ld e,a			;9c84	5f 	_ 
	ld h,b			;9c85	60 	` 
	ld a,(hl)			;9c86	7e 	~ 
	ld a,l			;9c87	7d 	} 
	ld a,h			;9c88	7c 	| 
	ld a,e			;9c89	7b 	{ 
	ld h,c			;9c8a	61 	a 
	ld h,d			;9c8b	62 	b 
	ld h,e			;9c8c	63 	c 
	ld h,h			;9c8d	64 	d 
	add a,d			;9c8e	82 	. 
	add a,c			;9c8f	81 	. 
	add a,b			;9c90	80 	. 
	ld a,a			;9c91	7f 	 
	ret p			;9c92	f0 	. 
	ret p			;9c93	f0 	. 
	ret p			;9c94	f0 	. 
	ret p			;9c95	f0 	. 
	ret p			;9c96	f0 	. 
	ret p			;9c97	f0 	. 
	ret p			;9c98	f0 	. 
	ret p			;9c99	f0 	. 
	ld l,c			;9c9a	69 	i 
	ld l,d			;9c9b	6a 	j 
	ld l,e			;9c9c	6b 	k 
	ld l,h			;9c9d	6c 	l 
	adc a,d			;9c9e	8a 	. 
	adc a,c			;9c9f	89 	. 
	adc a,b			;9ca0	88 	. 
	add a,a			;9ca1	87 	. 
	ld l,l			;9ca2	6d 	m 
	ld l,(hl)			;9ca3	6e 	n 
	ld l,a			;9ca4	6f 	o 
	ld (hl),b			;9ca5	70 	p 
	adc a,(hl)			;9ca6	8e 	. 
	adc a,l			;9ca7	8d 	. 
	adc a,h			;9ca8	8c 	. 
	adc a,e			;9ca9	8b 	. 
	ld (hl),c			;9caa	71 	q 
	ld (hl),d			;9cab	72 	r 
	ld (hl),e			;9cac	73 	s 
	ld (hl),h			;9cad	74 	t 
	sub d			;9cae	92 	. 
	sub c			;9caf	91 	. 
	sub b			;9cb0	90 	. 
	adc a,a			;9cb1	8f 	. 
	ret p			;9cb2	f0 	. 
	ret p			;9cb3	f0 	. 
	ret p			;9cb4	f0 	. 
	ret p			;9cb5	f0 	. 
	ret p			;9cb6	f0 	. 
	ret p			;9cb7	f0 	. 
	ret p			;9cb8	f0 	. 
	ret p			;9cb9	f0 	. 
	nop			;9cba	00 	. 
	ld e,d			;9cbb	5a 	Z 
	ld e,e			;9cbc	5b 	[ 
	ld e,h			;9cbd	5c 	\ 
	ld a,d			;9cbe	7a 	z 
	ld a,c			;9cbf	79 	y 
	ld a,b			;9cc0	78 	x 
	nop			;9cc1	00 	. 
	ld e,l			;9cc2	5d 	] 
	ld e,(hl)			;9cc3	5e 	^ 
	ld e,a			;9cc4	5f 	_ 
	ld h,b			;9cc5	60 	` 
	ld a,(hl)			;9cc6	7e 	~ 
	ld a,l			;9cc7	7d 	} 
	ld a,h			;9cc8	7c 	| 
	ld a,e			;9cc9	7b 	{ 
	ld h,c			;9cca	61 	a 
	ld h,d			;9ccb	62 	b 
	ld h,e			;9ccc	63 	c 
	ld h,h			;9ccd	64 	d 
	add a,d			;9cce	82 	. 
	add a,c			;9ccf	81 	. 
	add a,b			;9cd0	80 	. 
	ld a,a			;9cd1	7f 	 
	ld h,l			;9cd2	65 	e 
	ld h,(hl)			;9cd3	66 	f 
	ret p			;9cd4	f0 	. 
	ret p			;9cd5	f0 	. 
	ret p			;9cd6	f0 	. 
	ret p			;9cd7	f0 	. 
	add a,h			;9cd8	84 	. 
	add a,e			;9cd9	83 	. 
	ld l,c			;9cda	69 	i 
	ld l,d			;9cdb	6a 	j 
	ld l,e			;9cdc	6b 	k 
	ld l,h			;9cdd	6c 	l 
	adc a,d			;9cde	8a 	. 
	adc a,c			;9cdf	89 	. 
	adc a,b			;9ce0	88 	. 
	add a,a			;9ce1	87 	. 
	ld l,l			;9ce2	6d 	m 
	ld l,(hl)			;9ce3	6e 	n 
	ld l,a			;9ce4	6f 	o 
	ld (hl),b			;9ce5	70 	p 
	adc a,(hl)			;9ce6	8e 	. 
	adc a,l			;9ce7	8d 	. 
	adc a,h			;9ce8	8c 	. 
	adc a,e			;9ce9	8b 	. 
	ld (hl),c			;9cea	71 	q 
	ld (hl),d			;9ceb	72 	r 
	ld (hl),e			;9cec	73 	s 
	ld (hl),h			;9ced	74 	t 
	sub d			;9cee	92 	. 
	sub c			;9cef	91 	. 
	sub b			;9cf0	90 	. 
	adc a,a			;9cf1	8f 	. 
	ret p			;9cf2	f0 	. 
	ret p			;9cf3	f0 	. 
	ret p			;9cf4	f0 	. 
	ret p			;9cf5	f0 	. 
	ret p			;9cf6	f0 	. 
	ret p			;9cf7	f0 	. 
	ret p			;9cf8	f0 	. 
	ret p			;9cf9	f0 	. 
	ld hl,0ea60h		;9cfa	21 60 ea 	! ` . 
	ld (0f008h),hl		;9cfd	22 08 f0 	" . . 
	ld hl,0ea30h		;9d00	21 30 ea 	! 0 . 
	ld (0f00ah),hl		;9d03	22 0a f0 	" . . 
	ld hl,0ea00h		;9d06	21 00 ea 	! . . 
	ld (0f00ch),hl		;9d09	22 0c f0 	" . . 
	ld a,(0e041h)		;9d0c	3a 41 e0 	: A . 
	ld hl,0a7bch		;9d0f	21 bc a7 	! . . 
	call 04053h		;9d12	cd 53 40 	. S @ 
	ex de,hl			;9d15	eb 	. 
	ld a,(0e042h)		;9d16	3a 42 e0 	: B . 
	dec a			;9d19	3d 	= 
	jr z,$+16		;9d1a	28 0e 	( . 
	ld b,a			;9d1c	47 	G 
	ld a,(hl)			;9d1d	7e 	~ 
	inc hl			;9d1e	23 	# 
	or a			;9d1f	b7 	. 
	jr z,$+6		;9d20	28 04 	( . 
	inc hl			;9d22	23 	# 
	jp 09d1dh		;9d23	c3 1d 9d 	. . . 
	dec b			;9d26	05 	. 
	jp nz,09d1dh		;9d27	c2 1d 9d 	. . . 
	ld a,(hl)			;9d2a	7e 	~ 
	or a			;9d2b	b7 	. 
	ret z			;9d2c	c8 	. 
	ld c,a			;9d2d	4f 	O 
	inc hl			;9d2e	23 	# 
	ld a,(hl)			;9d2f	7e 	~ 
	and 0e0h		;9d30	e6 e0 	. . 
	ld d,a			;9d32	57 	W 
	ld a,(hl)			;9d33	7e 	~ 
	inc hl			;9d34	23 	# 
	add a,a			;9d35	87 	. 
	add a,a			;9d36	87 	. 
	add a,a			;9d37	87 	. 
	and 0f8h		;9d38	e6 f8 	. . 
	ld e,a			;9d3a	5f 	_ 
	ld a,c			;9d3b	79 	y 
	push hl			;9d3c	e5 	. 
	call 09d44h		;9d3d	cd 44 9d 	. D . 
	pop hl			;9d40	e1 	. 
	jp 09d2ah		;9d41	c3 2a 9d 	. * . 
	ld (0f000h),a		;9d44	32 00 f0 	2 . . 
	ld (0f002h),de		;9d47	ed 53 02 f0 	. S . . 
	and 00fh		;9d4b	e6 0f 	. . 
	dec a			;9d4d	3d 	= 
	call 04050h		;9d4e	cd 50 40 	. P @ 
	inc de			;9d51	13 	. 
	and b			;9d52	a0 	. 
	ld c,0a1h		;9d53	0e a1 	. . 
	ld a,(bc)			;9d55	0a 	. 
	and d			;9d56	a2 	. 
	sbc a,a			;9d57	9f 	. 
	and d			;9d58	a2 	. 
	dec d			;9d59	15 	. 
	and h			;9d5a	a4 	. 
	ld l,0a5h		;9d5b	2e a5 	. . 
	inc (hl)			;9d5d	34 	4 
	and (hl)			;9d5e	a6 	. 
	ld de,(0e041h)		;9d5f	ed 5b 41 e0 	. [ A . 
	ld a,e			;9d63	7b 	{ 
	sub 002h		;9d64	d6 02 	. . 
	ret m			;9d66	f8 	. 
	call 04050h		;9d67	cd 50 40 	. P @ 
	defw 09d7eh		;9d6a	7e 9d 	~ . 
	defw 09da2h		;9d6c	a2 9d 	. . 
	defw 09db5h		;9d6e	b5 9d 	. . 
	defw 09dbfh		;9d70	bf 9d 	. . 
	defw 09dd1h		;9d72	d1 9d 	. . 
	defw 09de3h		;9d74	e3 9d 	. . 
	defw 09df8h		;9d76	f8 9d 	. . 
	defw 09e16h		;9d78	16 9e 	. . 
	defw 09e34h		;9d7a	34 9e 	4 . 
	defw 09e15h		;9d7c	15 9e 	. . 
world1:
	ld a,d			;9d7e	7a 	z 
	cp 00ah		;9d7f	fe 0a 	. . 
	jr z,l1		;9d81	28 0a 	( . 
	cp 00ch		;9d83	fe 0c 	. . 
	ret nz			;9d85	c0 	. 
	ld a,001h		;9d86	3e 01 	> . 
	ld (0e0a2h),a		;9d88	32 a2 e0 	2 . . 
	jr $+124		;9d8b	18 7a 	. z 
l1:
	ld hl,(0e60eh)		;9d8d	2a 0e e6 	* . . 
	set 3,(hl)		;9d90	cb de 	. . 
	call 09e61h		;9d92	cd 61 9e 	. a . 
	ld hl,(0e60eh)		;9d95	2a 0e e6 	* . . 
	bit 4,(hl)		;9d98	cb 66 	. f 
	ret nz			;9d9a	c0 	. 
	set 4,(hl)		;9d9b	cb e6 	. . 
	ld a,02eh		;9d9d	3e 2e 	> . 
	jp 04059h		;9d9f	c3 59 40 	. Y @ 
world2:
	ld a,d			;9da2	7a 	z 
	cp 007h		;9da3	fe 07 	. . 
	jr z,$-24		;9da5	28 e6 	( . 
	cp 00eh		;9da7	fe 0e 	. . 
	jr z,$-28		;9da9	28 e2 	( . 
	cp 00dh		;9dab	fe 0d 	. . 
	ret nz			;9dad	c0 	. 
	ld a,001h		;9dae	3e 01 	> . 
	ld (0e0a3h),a		;9db0	32 a3 e0 	2 . . 
	jr $+84		;9db3	18 52 	. R 
world3:
	ld a,d			;9db5	7a 	z 
	cp 00ch		;9db6	fe 0c 	. . 
	jr z,$-43		;9db8	28 d3 	( . 
	cp 00fh		;9dba	fe 0f 	. . 
	jr z,$-47		;9dbc	28 cf 	( . 
	ret			;9dbe	c9 	. 
world4:
	ld a,d			;9dbf	7a 	z 
	cp 008h		;9dc0	fe 08 	. . 
	ld bc,00f05h		;9dc2	01 05 0f 	. . . 
	jp z,09e4eh		;9dc5	ca 4e 9e 	. N . 
	cp 00bh		;9dc8	fe 0b 	. . 
	ret nz			;9dca	c0 	. 
	ld a,001h		;9dcb	3e 01 	> . 
	ld (0e0a4h),a		;9dcd	32 a4 e0 	2 . . 
	ret			;9dd0	c9 	. 
world5:
	ld a,d			;9dd1	7a 	z 
	cp 003h		;9dd2	fe 03 	. . 
	ld bc,01006h		;9dd4	01 06 10 	. . . 
	jp z,09e4eh		;9dd7	ca 4e 9e 	. N . 
	cp 00eh		;9dda	fe 0e 	. . 
	ret nz			;9ddc	c0 	. 
	ld a,001h		;9ddd	3e 01 	> . 
	ld (0e0a5h),a		;9ddf	32 a5 e0 	2 . . 
	ret			;9de2	c9 	. 
world6:
	ld a,d			;9de3	7a 	z 
	cp 00bh		;9de4	fe 0b 	. . 
	jr z,$-89		;9de6	28 a5 	( . 
	cp 00fh		;9de8	fe 0f 	. . 
	ld bc,00807h		;9dea	01 07 08 	. . . 
	jr z,$+97		;9ded	28 5f 	( _ 
	cp 005h		;9def	fe 05 	. . 
	ret nz			;9df1	c0 	. 
	ld a,001h		;9df2	3e 01 	> . 
	ld (0e0a6h),a		;9df4	32 a6 e0 	2 . . 
	ret			;9df7	c9 	. 
world7:
	ld a,d			;9df8	7a 	z 
	cp 012h		;9df9	fe 12 	. . 
	jp z,09d8dh		;9dfb	ca 8d 9d 	. . . 
	cp 008h		;9dfe	fe 08 	. . 
	jr nz,$+13		;9e00	20 0b 	  . 
	ld a,001h		;9e02	3e 01 	> . 
	ld (0e0a8h),a		;9e04	32 a8 e0 	2 . . 
	xor a			;9e07	af 	. 
	ld (0eac0h),a		;9e08	32 c0 ea 	2 . . 
	jr $-118		;9e0b	18 88 	. . 
	cp 00fh		;9e0d	fe 0f 	. . 
	ret nz			;9e0f	c0 	. 
	ld a,001h		;9e10	3e 01 	> . 
	ld (0e0a9h),a		;9e12	32 a9 e0 	2 . . 
world10:
	ret			;9e15	c9 	. 
world8:
	ld a,d			;9e16	7a 	z 
	cp 008h		;9e17	fe 08 	. . 
	ld bc,00509h		;9e19	01 09 05 	. . . 
	jp z,09e4eh		;9e1c	ca 4e 9e 	. N . 
	cp 003h		;9e1f	fe 03 	. . 
	jr nz,$+9		;9e21	20 07 	  . 
	ld a,001h		;9e23	3e 01 	> . 
	ld (0e0aah),a		;9e25	32 aa e0 	2 . . 
	jr $-33		;9e28	18 dd 	. . 
	cp 014h		;9e2a	fe 14 	. . 
	ret nz			;9e2c	c0 	. 
	ld a,001h		;9e2d	3e 01 	> . 
	ld (0e0abh),a		;9e2f	32 ab e0 	2 . . 
	jr $-43		;9e32	18 d3 	. . 
world9:
	ld a,d			;9e34	7a 	z 
	cp 002h		;9e35	fe 02 	. . 
	jp z,09d8dh		;9e37	ca 8d 9d 	. . . 
	cp 00ah		;9e3a	fe 0a 	. . 
	jp z,09d8dh		;9e3c	ca 8d 9d 	. . . 
	cp 012h		;9e3f	fe 12 	. . 
	jp z,09d8dh		;9e41	ca 8d 9d 	. . . 
	cp 01ah		;9e44	fe 1a 	. . 
	ret nz			;9e46	c0 	. 
	ld a,001h		;9e47	3e 01 	> . 
	ld (0e0ach),a		;9e49	32 ac e0 	2 . . 
	jr $-69		;9e4c	18 b9 	. . 
	ld a,c			;9e4e	79 	y 
	ld hl,0af09h		;9e4f	21 09 af 	! . . 
	call 04053h		;9e52	cd 53 40 	. S @ 
	ld l,b			;9e55	68 	h 
	dec l			;9e56	2d 	- 
	ld h,000h		;9e57	26 00 	& . 
	add hl,de			;9e59	19 	. 
	ld de,00150h		;9e5a	11 50 01 	. P . 
	add hl,de			;9e5d	19 	. 
	set 3,(hl)		;9e5e	cb de 	. . 
	ret			;9e60	c9 	. 
	ld hl,(0e60eh)		;9e61	2a 0e e6 	* . . 
	bit 3,(hl)		;9e64	cb 5e 	. ^ 
	ret z			;9e66	c8 	. 
	ld de,(0e041h)		;9e67	ed 5b 41 e0 	. [ A . 
	ld hl,00703h		;9e6b	21 03 07 	! . . 
	or a			;9e6e	b7 	. 
	sbc hl,de		;9e6f	ed 52 	. R 
	jp z,09efah		;9e71	ca fa 9e 	. . . 
	ld hl,00e03h		;9e74	21 03 0e 	! . . 
	or a			;9e77	b7 	. 
	sbc hl,de		;9e78	ed 52 	. R 
	jp z,09effh		;9e7a	ca ff 9e 	. . . 
	ld hl,00c04h		;9e7d	21 04 0c 	! . . 
	or a			;9e80	b7 	. 
	sbc hl,de		;9e81	ed 52 	. R 
	jp z,09efah		;9e83	ca fa 9e 	. . . 
	ld hl,00f04h		;9e86	21 04 0f 	! . . 
	or a			;9e89	b7 	. 
	sbc hl,de		;9e8a	ed 52 	. R 
	jp z,09f10h		;9e8c	ca 10 9f 	. . . 
	ld hl,00f05h		;9e8f	21 05 0f 	! . . 
	or a			;9e92	b7 	. 
	sbc hl,de		;9e93	ed 52 	. R 
	jp z,09efah		;9e95	ca fa 9e 	. . . 
	ld hl,01006h		;9e98	21 06 10 	! . . 
	or a			;9e9b	b7 	. 
	sbc hl,de		;9e9c	ed 52 	. R 
	jp z,09efah		;9e9e	ca fa 9e 	. . . 
	ld hl,00b07h		;9ea1	21 07 0b 	! . . 
	or a			;9ea4	b7 	. 
	sbc hl,de		;9ea5	ed 52 	. R 
	jr z,$+83		;9ea7	28 51 	( Q 
	ld hl,00807h		;9ea9	21 07 08 	! . . 
	or a			;9eac	b7 	. 
	sbc hl,de		;9ead	ed 52 	. R 
	jr z,$+85		;9eaf	28 53 	( S 
	ld hl,01208h		;9eb1	21 08 12 	! . . 
	or a			;9eb4	b7 	. 
	sbc hl,de		;9eb5	ed 52 	. R 
	jr z,$+84		;9eb7	28 52 	( R 
	ld hl,00509h		;9eb9	21 09 05 	! . . 
	or a			;9ebc	b7 	. 
	sbc hl,de		;9ebd	ed 52 	. R 
	jr z,$+59		;9ebf	28 39 	( 9 
	ld hl,0020ah		;9ec1	21 0a 02 	! . . 
	or a			;9ec4	b7 	. 
	sbc hl,de		;9ec5	ed 52 	. R 
	jr z,$+73		;9ec7	28 47 	( G 
	ld hl,00a0ah		;9ec9	21 0a 0a 	! . . 
	or a			;9ecc	b7 	. 
	sbc hl,de		;9ecd	ed 52 	. R 
	jr z,$+70		;9ecf	28 44 	( D 
	ld hl,0120ah		;9ed1	21 0a 12 	! . . 
	or a			;9ed4	b7 	. 
	sbc hl,de		;9ed5	ed 52 	. R 
	jr z,$+35		;9ed7	28 21 	( ! 
	ld hl,00a02h		;9ed9	21 02 0a 	! . . 
	or a			;9edc	b7 	. 
	sbc hl,de		;9edd	ed 52 	. R 
	ret nz			;9edf	c0 	. 
	ld hl,0ee15h		;9ee0	21 15 ee 	! . . 
	ld a,003h		;9ee3	3e 03 	> . 
	ex de,hl			;9ee5	eb 	. 
	ld hl,0ec08h		;9ee6	21 08 ec 	! . . 
	ld (hl),001h		;9ee9	36 01 	6 . 
	inc l			;9eeb	2c 	, 
	ld (hl),a			;9eec	77 	w 
	inc l			;9eed	2c 	, 
	ld (hl),e			;9eee	73 	s 
	inc l			;9eef	2c 	, 
	ld (hl),d			;9ef0	72 	r 
	call 09d95h		;9ef1	cd 95 9d 	. . . 
	ld a,001h		;9ef4	3e 01 	> . 
	ld (0e6a1h),a		;9ef6	32 a1 e6 	2 . . 
	ret			;9ef9	c9 	. 
	ld hl,0ed8fh		;9efa	21 8f ed 	! . . 
	jr $-26		;9efd	18 e4 	. . 
	ld hl,0ee19h		;9eff	21 19 ee 	! . . 
	jr $-31		;9f02	18 df 	. . 
	ld hl,0ef9ch		;9f04	21 9c ef 	! . . 
	ld a,004h		;9f07	3e 04 	> . 
	jr $-36		;9f09	18 da 	. . 
	ld hl,0ef10h		;9f0b	21 10 ef 	! . . 
	jr $-43		;9f0e	18 d3 	. . 
	ld hl,0ed82h		;9f10	21 82 ed 	! . . 
	jr $-48		;9f13	18 ce 	. . 
	ld hl,0ed84h		;9f15	21 84 ed 	! . . 
	jr $-53		;9f18	18 c9 	. . 
	ld de,(0e041h)		;9f1a	ed 5b 41 e0 	. [ A . 
	ld hl,00404h		;9f1e	21 04 04 	! . . 
	or a			;9f21	b7 	. 
	sbc hl,de		;9f22	ed 52 	. R 
	jr z,$+115		;9f24	28 71 	( q 
	ld hl,00c02h		;9f26	21 02 0c 	! . . 
	or a			;9f29	b7 	. 
	sbc hl,de		;9f2a	ed 52 	. R 
	jp z,09fa2h		;9f2c	ca a2 9f 	. . . 
	ld hl,00d03h		;9f2f	21 03 0d 	! . . 
	or a			;9f32	b7 	. 
	sbc hl,de		;9f33	ed 52 	. R 
	jp z,09fach		;9f35	ca ac 9f 	. . . 
	ld hl,00f05h		;9f38	21 05 0f 	! . . 
	or a			;9f3b	b7 	. 
	sbc hl,de		;9f3c	ed 52 	. R 
	jp z,09fb6h		;9f3e	ca b6 9f 	. . . 
	ld hl,00d06h		;9f41	21 06 0d 	! . . 
	or a			;9f44	b7 	. 
	sbc hl,de		;9f45	ed 52 	. R 
	jp z,09fc0h		;9f47	ca c0 9f 	. . . 
	ld hl,00807h		;9f4a	21 07 08 	! . . 
	or a			;9f4d	b7 	. 
	sbc hl,de		;9f4e	ed 52 	. R 
	jp z,09fcah		;9f50	ca ca 9f 	. . . 
	ld hl,00808h		;9f53	21 08 08 	! . . 
	or a			;9f56	b7 	. 
	sbc hl,de		;9f57	ed 52 	. R 
	jp z,09fe1h		;9f59	ca e1 9f 	. . . 
	ld hl,00e08h		;9f5c	21 08 0e 	! . . 
	or a			;9f5f	b7 	. 
	sbc hl,de		;9f60	ed 52 	. R 
	jp z,09febh		;9f62	ca eb 9f 	. . . 
	ld hl,00309h		;9f65	21 09 03 	! . . 
	or a			;9f68	b7 	. 
	sbc hl,de		;9f69	ed 52 	. R 
	jp z,09ff5h		;9f6b	ca f5 9f 	. . . 
	ld hl,01409h		;9f6e	21 09 14 	! . . 
	or a			;9f71	b7 	. 
	sbc hl,de		;9f72	ed 52 	. R 
	jp z,09fffh		;9f74	ca ff 9f 	. . . 
	ld hl,01a0ah		;9f77	21 0a 1a 	! . . 
	or a			;9f7a	b7 	. 
	sbc hl,de		;9f7b	ed 52 	. R 
	jp z,0a009h		;9f7d	ca 09 a0 	. . . 
	ld hl,00b03h		;9f80	21 03 0b 	! . . 
	or a			;9f83	b7 	. 
	sbc hl,de		;9f84	ed 52 	. R 
	ret nz			;9f86	c0 	. 
	ld a,(0e081h)		;9f87	3a 81 e0 	: . . 
	or a			;9f8a	b7 	. 
	ret z			;9f8b	c8 	. 
	ld a,001h		;9f8c	3e 01 	> . 
	ld (0eac8h),a		;9f8e	32 c8 ea 	2 . . 
	call 09d95h		;9f91	cd 95 9d 	. . . 
	jp 09ef4h		;9f94	c3 f4 9e 	. . . 
	ld a,(0e0a1h)		;9f97	3a a1 e0 	: . . 
	or a			;9f9a	b7 	. 
	ret nz			;9f9b	c0 	. 
	ld a,001h		;9f9c	3e 01 	> . 
	ld (0eac9h),a		;9f9e	32 c9 ea 	2 . . 
	ret			;9fa1	c9 	. 
	ld a,(0e0a2h)		;9fa2	3a a2 e0 	: . . 
	or a			;9fa5	b7 	. 
	ret nz			;9fa6	c0 	. 
	ld de,0ed80h		;9fa7	11 80 ed 	. . . 
	jr $+42		;9faa	18 28 	. ( 
	ld a,(0e0a3h)		;9fac	3a a3 e0 	: . . 
	or a			;9faf	b7 	. 
	ret nz			;9fb0	c0 	. 
	ld de,0ee9ch		;9fb1	11 9c ee 	. . . 
	jr $+32		;9fb4	18 1e 	. . 
	ld a,(0e0a4h)		;9fb6	3a a4 e0 	: . . 
	or a			;9fb9	b7 	. 
	ret nz			;9fba	c0 	. 
	ld de,0ef0eh		;9fbb	11 0e ef 	. . . 
	jr $+22		;9fbe	18 14 	. . 
	ld a,(0e0a5h)		;9fc0	3a a5 e0 	: . . 
	or a			;9fc3	b7 	. 
	ret nz			;9fc4	c0 	. 
	ld de,0ee9ch		;9fc5	11 9c ee 	. . . 
	jr $+12		;9fc8	18 0a 	. . 
	ld a,(0e0a6h)		;9fca	3a a6 e0 	: . . 
	or a			;9fcd	b7 	. 
	jp nz,09d95h		;9fce	c2 95 9d 	. . . 
	ld de,0ef00h		;9fd1	11 00 ef 	. . . 
	ld hl,0eac0h		;9fd4	21 c0 ea 	! . . 
	ld (hl),001h		;9fd7	36 01 	6 . 
	inc l			;9fd9	2c 	, 
	inc l			;9fda	2c 	, 
	ld (hl),e			;9fdb	73 	s 
	inc l			;9fdc	2c 	, 
	ld (hl),d			;9fdd	72 	r 
	jp 09ef4h		;9fde	c3 f4 9e 	. . . 
	ld a,(0e0a8h)		;9fe1	3a a8 e0 	: . . 
	or a			;9fe4	b7 	. 
	ret nz			;9fe5	c0 	. 
	ld de,0ef84h		;9fe6	11 84 ef 	. . . 
	jr $-21		;9fe9	18 e9 	. . 
	ld a,(0e0a9h)		;9feb	3a a9 e0 	: . . 
	or a			;9fee	b7 	. 
	ret nz			;9fef	c0 	. 
	ld de,0ed88h		;9ff0	11 88 ed 	. . . 
	jr $-31		;9ff3	18 df 	. . 
	ld a,(0e0aah)		;9ff5	3a aa e0 	: . . 
	or a			;9ff8	b7 	. 
	ret nz			;9ff9	c0 	. 
	ld de,0ee1ch		;9ffa	11 1c ee 	. . . 
	jr $-41		;9ffd	18 d5 	. . 
	defb 03ah		;9fff	3a 	: 
