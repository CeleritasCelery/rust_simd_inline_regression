	.globl	inline_issue_codegen::inlined
	.p2align	2
inline_issue_codegen::inlined:
Lfunc_begin1:
		// /Users/troyhinckley/playground/inline-issue-codegen/src/lib.rs : 9
		pub fn inlined(text: &str) -> usize {
	.cfi_startproc
	sub sp, sp, #144
	.cfi_def_cfa_offset 144
	stp x28, x27, [sp, #48]
	stp x26, x25, [sp, #64]
	stp x24, x23, [sp, #80]
	stp x22, x21, [sp, #96]
	stp x20, x19, [sp, #112]
	stp x29, x30, [sp, #128]
	add x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov x19, x1
		// /Users/troyhinckley/repos/str_indices/src/chars.rs : 123
		if text.len() < T::SIZE {
	cmp x1, #16
	b.hs LBB1_3
	mov x8, #0
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/iter/macros.rs : 136
		if is_empty!(self) {
	cbz x19, LBB1_31
LBB1_2:
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
	subs x19, x19, #1
	b.ne LBB1_2
	b LBB1_31
LBB1_3:
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/ptr/mod.rs : 1718
		let aligned_address = wrapping_add(addr, a_minus_one) & wrapping_sub(0, a);
	add x8, x0, #15
	and x9, x8, #0xfffffffffffffff0
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/ptr/mod.rs : 1719
		let byte_offset = wrapping_sub(aligned_address, addr);
	sub x8, x9, x0
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/mod.rs : 3545
		if offset > self.len() {
	cmp x8, x19
	b.ls LBB1_5
	mov x20, #0
	mov x22, #0
Lloh0:
	adrp x21, l___unnamed_1@PAGE
Lloh1:
	add x21, x21, l___unnamed_1@PAGEOFF
	mov x8, x19
	mov x23, x21
	b LBB1_7
LBB1_5:
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/mod.rs : 1682
		unsafe { (from_raw_parts(ptr, mid), from_raw_parts(ptr.add(mid), len - mid)) }
	sub x10, x19, x8
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/mod.rs : 3494
		let us_len = self.len() / ts * us;
	lsr x22, x10, #4
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/mod.rs : 3496
		let ts_len = self.len() % ts;
	and x20, x10, #0xf
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/mod.rs : 3556
		from_raw_parts(rest.as_ptr().add(rest.len() - ts_len), ts_len),
	and x10, x10, #0xfffffffffffffff0
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/ptr/const_ptr.rs : 473
		unsafe { intrinsics::offset(self, count) }
	add x23, x0, x8
	add x21, x23, x10
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/iter/macros.rs : 136
		if is_empty!(self) {
	cmp x9, x0
	b.ne LBB1_7
	mov x24, #0
	b LBB1_21
LBB1_7:
	cmp x8, #7
	b.hi LBB1_9
	mov x24, #0
	mov x10, x0
	b LBB1_19
LBB1_9:
	cmp x8, #16
	b.hs LBB1_14
	mov x24, #0
	mov x9, #0

	and x11, x8, #0xfffffffffffffff8
	add x10, x0, x11
	movi.2d v0, #0000000000000000
	movi.2d v1, #0000000000000000
	mov.d v1[0], x24
	sub x12, x9, x11
	add x9, x0, x9
	movi.8b v2, #192
	movi.8b v3, #128
	mov w13, #1
	dup.2d v4, x13
	movi.2d v5, #0000000000000000
	movi.2d v6, #0000000000000000
LBB1_12:
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/internal_macros.rs : 50
		$imp::$method(*self, other)
	ldr d7, [x9], #8
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
	adds x12, x12, #8
	b.ne LBB1_12
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/iter/macros.rs : 136
		if is_empty!(self) {
	add.2d v1, v1, v5
	add.2d v0, v0, v6
	add.2d v0, v1, v0
	addp.2d d0, v0
	fmov x24, d0
	cmp x8, x11
	b.ne LBB1_19
	b LBB1_21
LBB1_14:
	and x9, x8, #0xfffffffffffffff0
	movi.2d v0, #0000000000000000
	movi.16b v1, #192
	movi.16b v2, #128
	mov w10, #1
	dup.2d v4, x10
	mov x10, x0
	movi.2d v3, #0000000000000000
	mov x11, x9
	movi.2d v6, #0000000000000000
	movi.2d v5, #0000000000000000
	movi.2d v17, #0000000000000000
	movi.2d v7, #0000000000000000
	movi.2d v18, #0000000000000000
	movi.2d v16, #0000000000000000
LBB1_15:
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/internal_macros.rs : 50
		$imp::$method(*self, other)
	ldr q19, [x10], #16
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
	subs x11, x11, #16
	b.ne LBB1_15
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
	fmov x24, d0
	cmp x8, x9
	b.eq LBB1_21
	tbnz w8, #3, LBB1_11
	add x10, x0, x9
LBB1_19:
	add x8, x0, x8
LBB1_20:
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/internal_macros.rs : 50
		$imp::$method(*self, other)
	ldrb w9, [x10], #1
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/ops/bit.rs : 176
		fn bitand(self, rhs: $t) -> $t { self & rhs }
	and w9, w9, #0xc0
		// /Users/troyhinckley/repos/str_indices/src/chars.rs : 137
		inv_count += ((byte & 0xC0) == 0x80) as usize;
	cmp w9, #128
	cinc x24, x24, eq
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/iter/macros.rs : 136
		if is_empty!(self) {
	cmp x10, x8
	b.ne LBB1_20
LBB1_21:
	cbz x22, LBB1_28
	mov w25, #255
	movi.16b v1, #192
	movi.16b v2, #128
	movi.16b v3, #1
	b LBB1_24
LBB1_23:
	add x23, x23, x26, lsl #4
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/../../stdarch/crates/core_arch/src/aarch64/neon/mod.rs : 1475
		vaddlvq_u8_(a) as u16
	uaddlv.16b h0, v0
	fmov w8, s0
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/convert/num.rs : 54
		small as Self
	and w8, w8, #0xffff
		// /Users/troyhinckley/repos/str_indices/src/chars.rs : 146
		inv_count += acc.sum_bytes();
	add x24, x24, x8
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/iter.rs : 1466
		if self.v.is_empty() {
	cbz x22, LBB1_28
LBB1_24:
	cmp x22, #255
	csel x26, x22, x25, lo
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/mod.rs : 1682
		unsafe { (from_raw_parts(ptr, mid), from_raw_parts(ptr.add(mid), len - mid)) }
	sub x22, x22, x26
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/mod.rs : 5374
		uint8x16_t(
	stp xzr, xzr, [sp]
	movi.2d v0, #0000000000000000
	cbz x26, LBB1_23
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/iter/macros.rs : 136
		if is_empty!(self) {
	cbz x23, LBB1_23
	lsl x27, x26, #4
	mov x28, x23
LBB1_27:
		// /Users/troyhinckley/repos/str_indices/src/chars.rs : 144
		acc = acc.add(chunk.bitand(T::splat(0xc0)).cmp_eq_byte(0x80));
	ldr q0, [x28], #16
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs : 113
		simd_and(a, b)
	and.16b v0, v0, v1
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/../../stdarch/crates/core_arch/src/arm_shared/neon/generated.rs : 28059
		simd_shr(a, vdupq_n_u8(n as _))
	cmeq.16b v0, v0, v2
	and.16b v0, v0, v3
		// /Users/troyhinckley/repos/str_indices/src/chars.rs : 144
		acc = acc.add(chunk.bitand(T::splat(0xc0)).cmp_eq_byte(0x80));
	str q0, [sp, #32]
	add x8, sp, #16
	mov x0, sp
	add x1, sp, #32
	bl <core::core_arch::arm_shared::neon::uint8x16_t as str_indices::byte_chunk::ByteChunk>::add
	movi.16b v3, #1
	movi.16b v2, #128
	movi.16b v1, #192
	ldr q0, [sp, #16]
	str q0, [sp]
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/iter/macros.rs : 136
		if is_empty!(self) {
	subs x27, x27, #16
	b.ne LBB1_27
	b LBB1_23

	cbz x20, LBB1_30
LBB1_29:
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/internal_macros.rs : 50
		$imp::$method(*self, other)
	ldrb w8, [x21], #1
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/ops/bit.rs : 176
		fn bitand(self, rhs: $t) -> $t { self & rhs }
	and w8, w8, #0xc0
		// /Users/troyhinckley/repos/str_indices/src/chars.rs : 151
		inv_count += ((byte & 0xC0) == 0x80) as usize;
	cmp w8, #128
	cinc x24, x24, eq
		// /rustc/efd27454ae94386e11997b1158f60d3a79deeb7d/library/core/src/slice/iter/macros.rs : 136
		if is_empty!(self) {
	subs x20, x20, #1
	b.ne LBB1_29

		// /Users/troyhinckley/repos/str_indices/src/chars.rs : 154
		text.len() - inv_count
	sub x8, x19, x24
LBB1_31:
		// /Users/troyhinckley/playground/inline-issue-codegen/src/lib.rs : 11
		}
	mov x0, x8
	.cfi_def_cfa wsp, 144
	ldp x29, x30, [sp, #128]
	ldp x20, x19, [sp, #112]
	ldp x22, x21, [sp, #96]
	ldp x24, x23, [sp, #80]
	ldp x26, x25, [sp, #64]
	ldp x28, x27, [sp, #48]
	add sp, sp, #144
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	ret
	.loh AdrpAdd	Lloh0, Lloh1
