__ZN11str_indices5chars5count17h3f56c582aa991a2cE:
    .cfi_startproc
    cmp	x1, #16
    b.hs	LBB1_4
    mov	x8, #0
    cbz	x1, LBB1_3
LBB1_2:
    ldrb	w9, [x0], #1
    and	w9, w9, #0xc0
    cmp	w9, #128
    cinc	x8, x8, ne
    subs	x1, x1, #1
    b.ne	LBB1_2
LBB1_3:
    mov	x0, x8
    ret
LBB1_4:
    add	x8, x0, #15
    and	x13, x8, #0xfffffffffffffff0
    sub	x12, x13, x0
    cmp	x12, x1
    b.ls	LBB1_6
    mov	x8, #0
    mov	x10, #0
Lloh0:
    adrp	x9, l___unnamed_1@PAGE
Lloh1:
    add	x9, x9, l___unnamed_1@PAGEOFF
    mov	x12, x1
    mov	x11, x9
    b	LBB1_8
LBB1_6:
    sub	x9, x1, x12
    lsr	x10, x9, #4
    and	x8, x9, #0xf
    and	x9, x9, #0xfffffffffffffff0
    add	x11, x0, x12
    add	x9, x11, x9
    cmp	x13, x0
    b.ne	LBB1_8
    mov	x13, #0
    b	LBB1_22
LBB1_8:
    cmp	x12, #7
    b.hi	LBB1_10
    mov	x13, #0
    mov	x15, x0
    b	LBB1_20
LBB1_10:
    cmp	x12, #16
    b.hs	LBB1_15
    mov	x13, #0
    mov	x14, #0
LBB1_12:
    and	x16, x12, #0xfffffffffffffff8
    add	x15, x0, x16
    movi.2d	v0, #0000000000000000
    movi.2d	v1, #0000000000000000
    mov.d	v1[0], x13
    sub	x13, x14, x16
    add	x14, x0, x14
    movi.8b	v2, #192
    movi.8b	v3, #128
    mov	w17, #1
    dup.2d	v4, x17
    movi.2d	v5, #0000000000000000
    movi.2d	v6, #0000000000000000
LBB1_13:
    ldr	d7, [x14], #8
    and.8b	v7, v7, v2
    cmeq.8b	v7, v7, v3
    ushll.8h	v7, v7, #0
    ushll.4s	v16, v7, #0
    ushll.2d	v17, v16, #0
    and.16b	v17, v17, v4
    ushll2.2d	v16, v16, #0
    and.16b	v16, v16, v4
    ushll2.4s	v7, v7, #0
    ushll.2d	v18, v7, #0
    and.16b	v18, v18, v4
    ushll2.2d	v7, v7, #0
    and.16b	v7, v7, v4
    add.2d	v6, v6, v7
    add.2d	v5, v5, v18
    add.2d	v0, v0, v16
    add.2d	v1, v1, v17
    adds	x13, x13, #8
    b.ne	LBB1_13
    add.2d	v1, v1, v5
    add.2d	v0, v0, v6
    add.2d	v0, v1, v0
    addp.2d	d0, v0
    fmov	x13, d0
    cmp	x12, x16
    b.ne	LBB1_20
    b	LBB1_22
LBB1_15:
    and	x14, x12, #0xfffffffffffffff0
    movi.2d	v0, #0000000000000000
    movi.16b	v1, #192
    movi.16b	v2, #128
    mov	w13, #1
    dup.2d	v4, x13
    mov	x13, x0
    movi.2d	v3, #0000000000000000
    mov	x15, x14
    movi.2d	v6, #0000000000000000
    movi.2d	v5, #0000000000000000
    movi.2d	v17, #0000000000000000
    movi.2d	v7, #0000000000000000
    movi.2d	v18, #0000000000000000
    movi.2d	v16, #0000000000000000
LBB1_16:
    ldr	q19, [x13], #16
    and.16b	v19, v19, v1
    cmeq.16b	v19, v19, v2
    ushll.8h	v20, v19, #0
    ushll.4s	v21, v20, #0
    ushll.2d	v22, v21, #0
    and.16b	v22, v22, v4
    ushll2.2d	v21, v21, #0
    and.16b	v21, v21, v4
    ushll2.4s	v20, v20, #0
    ushll.2d	v23, v20, #0
    and.16b	v23, v23, v4
    ushll2.8h	v19, v19, #0
    ushll.4s	v24, v19, #0
    ushll.2d	v25, v24, #0
    and.16b	v25, v25, v4
    ushll2.2d	v20, v20, #0
    and.16b	v20, v20, v4
    ushll2.2d	v24, v24, #0
    and.16b	v24, v24, v4
    ushll2.4s	v19, v19, #0
    ushll.2d	v26, v19, #0
    and.16b	v26, v26, v4
    ushll2.2d	v19, v19, #0
    and.16b	v19, v19, v4
    add.2d	v16, v16, v19
    add.2d	v18, v18, v26
    add.2d	v7, v7, v24
    add.2d	v5, v5, v20
    add.2d	v17, v17, v25
    add.2d	v6, v6, v23
    add.2d	v3, v3, v21
    add.2d	v0, v0, v22
    subs	x15, x15, #16
    b.ne	LBB1_16
    add.2d	v0, v0, v17
    add.2d	v1, v6, v18
    add.2d	v0, v0, v1
    add.2d	v1, v3, v7
    add.2d	v2, v5, v16
    add.2d	v1, v1, v2
    add.2d	v0, v0, v1
    addp.2d	d0, v0
    fmov	x13, d0
    cmp	x12, x14
    b.eq	LBB1_22
    tbnz	w12, #3, LBB1_12
    add	x15, x0, x14
LBB1_20:
    add	x12, x0, x12
LBB1_21:
    ldrb	w14, [x15], #1
    and	w14, w14, #0xc0
    cmp	w14, #128
    cinc	x13, x13, eq
    cmp	x15, x12
    b.ne	LBB1_21
LBB1_22:
    cbz	x10, LBB1_29
    mov	w12, #255
    movi.16b	v0, #192
    movi.16b	v1, #128
    b	LBB1_25
LBB1_24:
    add	x11, x11, x14, lsl #4
    uaddlv.16b	h2, v2
    fmov	w14, s2
    and	w14, w14, #0xffff
    add	x13, x13, x14
    cbz	x10, LBB1_29
LBB1_25:
    cmp	x10, #255
    csel	x14, x10, x12, lo
    sub	x10, x10, x14
    movi.2d	v2, #0000000000000000
    cbz	x14, LBB1_24
    cbz	x11, LBB1_24
    lsl	x15, x14, #4
    movi.2d	v2, #0000000000000000
    mov	x16, x11
LBB1_28:
    ldr	q3, [x16], #16
    and.16b	v3, v3, v0
    cmeq.16b	v3, v3, v1
    sub.16b	v2, v2, v3
    subs	x15, x15, #16
    b.ne	LBB1_28
    b	LBB1_24
LBB1_29:
    cbz	x8, LBB1_31
LBB1_30:
    ldrb	w10, [x9], #1
    and	w10, w10, #0xc0
    cmp	w10, #128
    cinc	x13, x13, eq
    subs	x8, x8, #1
    b.ne	LBB1_30
LBB1_31:
    sub	x0, x1, x13
    ret
    .loh AdrpAdd	Lloh0, Lloh1
    .cfi_endproc

    .globl	__ZN11str_indices5chars12count_scalar17he159490f50bdbd67E
    .p2align	2
