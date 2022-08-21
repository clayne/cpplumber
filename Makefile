all: test

build:
	@cargo build --all-features

doc:
	@cargo doc --all-features

test:
	@cargo test
	@cargo test --all-features
	@cargo test --no-default-features

format:
	@rustup component add rustfmt 2> /dev/null
	@cargo fmt --all

format-check:
	@rustup component add rustfmt 2> /dev/null
	@cargo fmt --all -- --check

lint:
	@rustup component add clippy 2> /dev/null
	@cargo clippy -- -D warnings

.PHONY: all doc test format format-check lint

