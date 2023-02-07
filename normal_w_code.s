	.globl	str_indices::chars::count
	.p2align	2
str_indices::chars::count:
Lfunc_begin4:
		// /Users/troyhinckley/repos/str_indices/src/chars.rs : 8
		pub fn count(text: &str) -> usize {
	.cfi_startproc
		// /Users/troyhinckley/repos/str_indices/src/chars.rs : 123
		if text.len() < T::SIZE {
	cmp x1, #16
	b.hs LBB4_4
	mov x8, #0
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/iter/macros.rs : 136
		if is_empty!(self) {
	cbz x1, LBB4_3
LBB4_2:
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/iter/traits/iterator.rs : 2438
		accum = f(accum, x);
	ldrb w9, [x0], #1
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/ops/bit.rs : 176
		fn bitand(self, rhs: $t) -> $t { self & rhs }
	and w9, w9, #0xc0
		// /Users/troyhinckley/repos/str_indices/src/chars.rs : 127
		.map(|byte| ((byte & 0xC0) != 0x80) as usize)
	cmp w9, #128
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/iter/traits/accum.rs : 53
		|a, b| a + b,
	cinc x8, x8, ne
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/iter/macros.rs : 136
		if is_empty!(self) {
	subs x1, x1, #1
	b.ne LBB4_2

		// /Users/troyhinckley/repos/str_indices/src/chars.rs : 10
		}
	mov x0, x8
	ret
LBB4_4:
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/ptr/mod.rs : 1718
		let aligned_address = wrapping_add(addr, a_minus_one) & wrapping_sub(0, a);
	add x8, x0, #15
	and x13, x8, #0xfffffffffffffff0
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/ptr/mod.rs : 1719
		let byte_offset = wrapping_sub(aligned_address, addr);
	sub x12, x13, x0
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/mod.rs : 3545
		if offset > self.len() {
	cmp x12, x1
	b.ls LBB4_6
	mov x8, #0
	mov x10, #0
Lloh8:
	adrp x9, l___unnamed_5@PAGE
Lloh9:
	add x9, x9, l___unnamed_5@PAGEOFF
	mov x12, x1
	mov x11, x9
	b LBB4_8
LBB4_6:
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/mod.rs : 1682
		unsafe { (from_raw_parts(ptr, mid), from_raw_parts(ptr.add(mid), len - mid)) }
	sub x9, x1, x12
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/mod.rs : 3494
		let us_len = self.len() / ts * us;
	lsr x10, x9, #4
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/mod.rs : 3496
		let ts_len = self.len() % ts;
	and x8, x9, #0xf
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/mod.rs : 3556
		from_raw_parts(rest.as_ptr().add(rest.len() - ts_len), ts_len),
	and x9, x9, #0xfffffffffffffff0
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/ptr/const_ptr.rs : 473
		unsafe { intrinsics::offset(self, count) }
	add x11, x0, x12
	add x9, x11, x9
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/iter/macros.rs : 136
		if is_empty!(self) {
	cmp x13, x0
	b.ne LBB4_8
	mov x13, #0
	b LBB4_22
LBB4_8:
	cmp x12, #7
	b.hi LBB4_10
	mov x13, #0
	mov x15, x0
	b LBB4_20
LBB4_10:
	cmp x12, #16
	b.hs LBB4_15
	mov x13, #0
	mov x14, #0

	and x16, x12, #0xfffffffffffffff8
	add x15, x0, x16
	movi.2d v0, #0000000000000000
	movi.2d v1, #0000000000000000
	mov.d v1[0], x13
	sub x13, x14, x16
	add x14, x0, x14
	movi.8b v2, #192
	movi.8b v3, #128
	mov w17, #1
	dup.2d v4, x17
	movi.2d v5, #0000000000000000
	movi.2d v6, #0000000000000000
LBB4_13:
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/internal_macros.rs : 50
		$imp::$method(*self, other)
	ldr d7, [x14], #8
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/ops/bit.rs : 176
		fn bitand(self, rhs: $t) -> $t { self & rhs }
	and.8b v7, v7, v2
		// /Users/troyhinckley/repos/str_indices/src/chars.rs : 137
		inv_count += ((byte & 0xC0) == 0x80) as usize;
	cmeq.8b v7, v7, v3
	ushll.8h v7, v7, #0
	ushll.4s v16, v7, #0
	ushll.2d v17, v16, #0
	and.16b v17, v17, v4
	ushll2.2d v16, v16, #0
	and.16b v16, v16, v4
	ushll2.4s v7, v7, #0
	ushll.2d v18, v7, #0
	and.16b v18, v18, v4
	ushll2.2d v7, v7, #0
	and.16b v7, v7, v4
	add.2d v6, v6, v7
	add.2d v5, v5, v18
	add.2d v0, v0, v16
	add.2d v1, v1, v17
	adds x13, x13, #8
	b.ne LBB4_13
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/iter/macros.rs : 136
		if is_empty!(self) {
	add.2d v1, v1, v5
	add.2d v0, v0, v6
	add.2d v0, v1, v0
	addp.2d d0, v0
	fmov x13, d0
	cmp x12, x16
	b.ne LBB4_20
	b LBB4_22
LBB4_15:
	and x14, x12, #0xfffffffffffffff0
	movi.2d v0, #0000000000000000
	movi.16b v1, #192
	movi.16b v2, #128
	mov w13, #1
	dup.2d v4, x13
	mov x13, x0
	movi.2d v3, #0000000000000000
	mov x15, x14
	movi.2d v6, #0000000000000000
	movi.2d v5, #0000000000000000
	movi.2d v17, #0000000000000000
	movi.2d v7, #0000000000000000
	movi.2d v18, #0000000000000000
	movi.2d v16, #0000000000000000
LBB4_16:
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/internal_macros.rs : 50
		$imp::$method(*self, other)
	ldr q19, [x13], #16
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/ops/bit.rs : 176
		fn bitand(self, rhs: $t) -> $t { self & rhs }
	and.16b v19, v19, v1
		// /Users/troyhinckley/repos/str_indices/src/chars.rs : 137
		inv_count += ((byte & 0xC0) == 0x80) as usize;
	cmeq.16b v19, v19, v2
	ushll.8h v20, v19, #0
	ushll.4s v21, v20, #0
	ushll.2d v22, v21, #0
	and.16b v22, v22, v4
	ushll2.2d v21, v21, #0
	and.16b v21, v21, v4
	ushll2.4s v20, v20, #0
	ushll.2d v23, v20, #0
	and.16b v23, v23, v4
	ushll2.8h v19, v19, #0
	ushll.4s v24, v19, #0
	ushll.2d v25, v24, #0
	and.16b v25, v25, v4
	ushll2.2d v20, v20, #0
	and.16b v20, v20, v4
	ushll2.2d v24, v24, #0
	and.16b v24, v24, v4
	ushll2.4s v19, v19, #0
	ushll.2d v26, v19, #0
	and.16b v26, v26, v4
	ushll2.2d v19, v19, #0
	and.16b v19, v19, v4
	add.2d v16, v16, v19
	add.2d v18, v18, v26
	add.2d v7, v7, v24
	add.2d v5, v5, v20
	add.2d v17, v17, v25
	add.2d v6, v6, v23
	add.2d v3, v3, v21
	add.2d v0, v0, v22
	subs x15, x15, #16
	b.ne LBB4_16
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/iter/macros.rs : 136
		if is_empty!(self) {
	add.2d v0, v0, v17
	add.2d v1, v6, v18
	add.2d v0, v0, v1
	add.2d v1, v3, v7
	add.2d v2, v5, v16
	add.2d v1, v1, v2
	add.2d v0, v0, v1
	addp.2d d0, v0
	fmov x13, d0
	cmp x12, x14
	b.eq LBB4_22
	tbnz w12, #3, LBB4_12
	add x15, x0, x14
LBB4_20:
	add x12, x0, x12
LBB4_21:
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/internal_macros.rs : 50
		$imp::$method(*self, other)
	ldrb w14, [x15], #1
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/ops/bit.rs : 176
		fn bitand(self, rhs: $t) -> $t { self & rhs }
	and w14, w14, #0xc0
		// /Users/troyhinckley/repos/str_indices/src/chars.rs : 137
		inv_count += ((byte & 0xC0) == 0x80) as usize;
	cmp w14, #128
	cinc x13, x13, eq
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/iter/macros.rs : 136
		if is_empty!(self) {
	cmp x15, x12
	b.ne LBB4_21
LBB4_22:
	cbz x10, LBB4_29
	mov w12, #255
	movi.16b v0, #192
	movi.16b v1, #128
	b LBB4_25
LBB4_24:
	add x11, x11, x14, lsl #4
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/../../stdarch/crates/core_arch/src/aarch64/neon/mod.rs : 1475
		vaddlvq_u8_(a) as u16
	uaddlv.16b h2, v2
	fmov w14, s2
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/convert/num.rs : 54
		small as Self
	and w14, w14, #0xffff
		// /Users/troyhinckley/repos/str_indices/src/chars.rs : 146
		inv_count += acc.sum_bytes();
	add x13, x13, x14
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/iter.rs : 1466
		if self.v.is_empty() {
	cbz x10, LBB4_29
LBB4_25:
	cmp x10, #255
	csel x14, x10, x12, lo
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/mod.rs : 1682
		unsafe { (from_raw_parts(ptr, mid), from_raw_parts(ptr.add(mid), len - mid)) }
	sub x10, x10, x14
	movi.2d v2, #0000000000000000
	cbz x14, LBB4_24
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/iter/macros.rs : 136
		if is_empty!(self) {
	cbz x11, LBB4_24
	lsl x15, x14, #4
	movi.2d v2, #0000000000000000
	mov x16, x11
LBB4_28:
		// /Users/troyhinckley/repos/str_indices/src/chars.rs : 144
		acc = acc.add(chunk.bitand(T::splat(0xc0)).cmp_eq_byte(0x80));
	ldr q3, [x16], #16
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs : 113
		simd_and(a, b)
	and.16b v3, v3, v0
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs : 28059
		simd_shr(a, vdupq_n_u8(n as _))
	cmeq.16b v3, v3, v1
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/mod.rs : 2164
		simd_add(a, b)
	sub.16b v2, v2, v3
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/iter/macros.rs : 136
		if is_empty!(self) {
	subs x15, x15, #16
	b.ne LBB4_28
	b LBB4_24

	cbz x8, LBB4_31
LBB4_30:
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/internal_macros.rs : 50
		$imp::$method(*self, other)
	ldrb w10, [x9], #1
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/ops/bit.rs : 176
		fn bitand(self, rhs: $t) -> $t { self & rhs }
	and w10, w10, #0xc0
		// /Users/troyhinckley/repos/str_indices/src/chars.rs : 151
		inv_count += ((byte & 0xC0) == 0x80) as usize;
	cmp w10, #128
	cinc x13, x13, eq
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/iter/macros.rs : 136
		if is_empty!(self) {
	subs x8, x8, #1
	b.ne LBB4_30

		// /Users/troyhinckley/repos/str_indices/src/chars.rs : 154
		text.len() - inv_count
	sub x0, x1, x13
		// /Users/troyhinckley/repos/str_indices/src/chars.rs : 10
		}
	ret
	.loh AdrpAdd	Lloh8, Lloh9
