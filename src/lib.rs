use str_indices::chars;

#[no_mangle]
#[inline(never)]
pub fn normal(text: &str) -> usize {
    chars::count(text)
}

#[no_mangle]
#[inline(never)]
pub fn inlined(text: &str) -> usize {
    chars::count_inline(text)
}
