use str_indices::chars;

#[inline(never)]
pub fn normal(text: &str) -> usize {
    chars::count(text)
}

#[inline(never)]
pub fn inlined(text: &str) -> usize {
    chars::count_inline(text)
}
