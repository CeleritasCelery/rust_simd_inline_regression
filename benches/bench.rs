use std::fs;
use criterion::{black_box, criterion_group, criterion_main, Criterion};
use inline_issue_codegen::{normal, inlined};

fn bench(c: &mut Criterion) {

    let test_strings: Vec<(&str, String)> = vec![
        (
            "en_10000",
            fs::read_to_string("benches/text/en_10000.txt").expect("Cannot find benchmark text."),
        ),
    ];

    {
        let mut group = c.benchmark_group("count");
        for (text_name, text) in test_strings.iter() {
            group.bench_function(*text_name, |bench| {
                bench.iter(|| {
                    black_box(normal(text));
                })
            });
        }
    }
    {
        let mut group = c.benchmark_group("count_inline");
        for (text_name, text) in test_strings.iter() {
            group.bench_function(*text_name, |bench| {
                bench.iter(|| {
                    black_box(inlined(text));
                })
            });
        }
    }
}

criterion_group!(benches, bench);
criterion_main!(benches);
