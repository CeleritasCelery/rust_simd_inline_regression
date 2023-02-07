
use core::arch::aarch64;

// Which type to actually use at build time.
pub(crate) type Chunk = aarch64::uint8x16_t;

/// Interface for working with chunks of bytes at a time, providing the
/// operations needed for the functionality in str_utils.
pub(crate) trait ByteChunk: Copy + Clone {
    /// Size of the chunk in bytes.
    const SIZE: usize;

    /// Maximum number of iterations the chunk can accumulate
    /// before sum_bytes() becomes inaccurate.
    const MAX_ACC: usize;

    /// Creates a new chunk with all bytes set to zero.
    fn zero() -> Self;

    /// Creates a new chunk with all bytes set to n.
    fn splat(n: u8) -> Self;

    /// Returns whether all bytes are zero or not.
    fn is_zero(&self) -> bool;

    /// Shifts bytes back lexographically by n bytes.
    fn shift_back_lex(&self, n: usize) -> Self;

    /// Shifts bits to the right by n bits.
    fn shr(&self, n: usize) -> Self;

    /// Compares bytes for equality with the given byte.
    ///
    /// Bytes that are equal are set to 1, bytes that are not
    /// are set to 0.
    fn cmp_eq_byte(&self, byte: u8) -> Self;

    /// Compares bytes to see if they're in the non-inclusive range (a, b),
    /// where a < b <= 127.
    ///
    /// Bytes in the range are set to 1, bytes not in the range are set to 0.
    fn bytes_between_127(&self, a: u8, b: u8) -> Self;

    /// Performs a bitwise and on two chunks.
    fn bitand(&self, other: Self) -> Self;

    /// Adds the bytes of two chunks together.
    fn add(&self, other: Self) -> Self;

    /// Subtracts other's bytes from this chunk.
    fn sub(&self, other: Self) -> Self;

    /// Increments the nth-from-last lexographic byte by 1.
    fn inc_nth_from_end_lex_byte(&self, n: usize) -> Self;

    /// Decrements the last lexographic byte by 1.
    fn dec_last_lex_byte(&self) -> Self;

    /// Returns the sum of all bytes in the chunk.
    fn sum_bytes(&self) -> usize;
}

impl ByteChunk for usize {
    const SIZE: usize = core::mem::size_of::<usize>();
    const MAX_ACC: usize = (256 / core::mem::size_of::<usize>()) - 1;

    #[inline(always)]
    fn zero() -> Self {
        0
    }

    #[inline(always)]
    fn splat(n: u8) -> Self {
        const ONES: usize = core::usize::MAX / 0xFF;
        ONES * n as usize
    }

    #[inline(always)]
    fn is_zero(&self) -> bool {
        *self == 0
    }

    #[inline(always)]
    fn shift_back_lex(&self, n: usize) -> Self {
        if cfg!(target_endian = "little") {
            *self >> (n * 8)
        } else {
            *self << (n * 8)
        }
    }

    #[inline(always)]
    fn shr(&self, n: usize) -> Self {
        *self >> n
    }

    #[inline(always)]
    fn cmp_eq_byte(&self, byte: u8) -> Self {
        const ONES: usize = core::usize::MAX / 0xFF;
        const ONES_HIGH: usize = ONES << 7;
        let word = *self ^ (byte as usize * ONES);
        (!(((word & !ONES_HIGH) + !ONES_HIGH) | word) & ONES_HIGH) >> 7
    }

    #[inline(always)]
    fn bytes_between_127(&self, a: u8, b: u8) -> Self {
        const ONES: usize = core::usize::MAX / 0xFF;
        const ONES_HIGH: usize = ONES << 7;
        let tmp = *self & (ONES * 127);
        (((ONES * (127 + b as usize) - tmp) & !*self & (tmp + (ONES * (127 - a as usize))))
            & ONES_HIGH)
            >> 7
    }

    #[inline(always)]
    fn bitand(&self, other: Self) -> Self {
        *self & other
    }

    #[inline(always)]
    fn add(&self, other: Self) -> Self {
        *self + other
    }

    #[inline(always)]
    fn sub(&self, other: Self) -> Self {
        *self - other
    }

    #[inline(always)]
    fn inc_nth_from_end_lex_byte(&self, n: usize) -> Self {
        if cfg!(target_endian = "little") {
            *self + (1 << ((Self::SIZE - 1 - n) * 8))
        } else {
            *self + (1 << (n * 8))
        }
    }

    #[inline(always)]
    fn dec_last_lex_byte(&self) -> Self {
        if cfg!(target_endian = "little") {
            *self - (1 << ((Self::SIZE - 1) * 8))
        } else {
            *self - 1
        }
    }

    #[inline(always)]
    fn sum_bytes(&self) -> usize {
        const ONES: usize = core::usize::MAX / 0xFF;
        self.wrapping_mul(ONES) >> ((Self::SIZE - 1) * 8)
    }
}


impl ByteChunk for Chunk {
    const SIZE: usize = core::mem::size_of::<Self>();
    const MAX_ACC: usize = 255;

    #[inline(always)]
    fn zero() -> Self {
        unsafe { aarch64::vdupq_n_u8(0) }
    }

    #[inline(always)]
    fn splat(n: u8) -> Self {
        unsafe { aarch64::vdupq_n_u8(n) }
    }

    #[inline(always)]
    fn is_zero(&self) -> bool {
        unsafe { aarch64::vmaxvq_u8(*self) == 0 }
    }

    #[inline(always)]
    fn shift_back_lex(&self, n: usize) -> Self {
        unsafe {
            match n {
                1 => aarch64::vextq_u8(*self, Self::zero(), 1),
                2 => aarch64::vextq_u8(*self, Self::zero(), 2),
                _ => unreachable!(),
            }
        }
    }

    #[inline(always)]
    fn shr(&self, n: usize) -> Self {
        unsafe {
            let u64_vec = aarch64::vreinterpretq_u64_u8(*self);
            let result = match n {
                1 => aarch64::vshrq_n_u64(u64_vec, 1),
                _ => unreachable!(),
            };
            aarch64::vreinterpretq_u8_u64(result)
        }
    }

    #[inline(always)]
    fn cmp_eq_byte(&self, byte: u8) -> Self {
        unsafe {
            let equal = aarch64::vceqq_u8(*self, Self::splat(byte));
            aarch64::vshrq_n_u8(equal, 7)
        }
    }

    #[inline(always)]
    fn bytes_between_127(&self, a: u8, b: u8) -> Self {
        use aarch64::vreinterpretq_s8_u8 as cast;
        unsafe {
            let a_gt = aarch64::vcgtq_s8(cast(*self), cast(Self::splat(a)));
            let b_gt = aarch64::vcltq_s8(cast(*self), cast(Self::splat(b)));
            let in_range = aarch64::vandq_u8(a_gt, b_gt);
            aarch64::vshrq_n_u8(in_range, 7)
        }
    }

    #[inline(always)]
    fn bitand(&self, other: Self) -> Self {
        unsafe { aarch64::vandq_u8(*self, other) }
    }

    fn add(&self, other: Self) -> Self {
        unsafe { aarch64::vaddq_u8(*self, other) }
    }

    #[inline(always)]
    fn sub(&self, other: Self) -> Self {
        unsafe { aarch64::vsubq_u8(*self, other) }
    }

    #[inline(always)]
    fn inc_nth_from_end_lex_byte(&self, n: usize) -> Self {
        let mut tmp = unsafe { core::mem::transmute::<Self, [u8; 16]>(*self) };
        tmp[15 - n] += 1;
        unsafe { core::mem::transmute::<[u8; 16], Self>(tmp) }
    }

    #[inline(always)]
    fn dec_last_lex_byte(&self) -> Self {
        let mut tmp = unsafe { core::mem::transmute::<Self, [u8; 16]>(*self) };
        tmp[15] -= 1;
        unsafe { core::mem::transmute::<[u8; 16], Self>(tmp) }
    }

    #[inline(always)]
    fn sum_bytes(&self) -> usize {
        unsafe { aarch64::vaddlvq_u8(*self).into() }
    }
}
