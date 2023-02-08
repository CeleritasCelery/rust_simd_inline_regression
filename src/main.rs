use std::fs;
use std::time::Instant;
use str_indices::chars;

#[inline(never)]
pub fn normal(text: &str) -> usize {
    chars::count(text)
}

#[inline(never)]
pub fn inlined(text: &str) -> usize {
    chars::count_inline(text)
}

fn time(name: &str, mut routine: impl FnMut() -> usize) {
    let now = Instant::now();
    for _ in 0..10000 {
        std::hint::black_box(routine());
    }
    println!("{name}: {}ns", now.elapsed().as_nanos());
}

fn main() {
    let text =
        &fs::read_to_string("benches/text/en_10000.txt").expect("Cannot find benchmark text.");

    println!("starting comparison");

    time("normal", || normal(text));
    time("inline", || inlined(text));
}
