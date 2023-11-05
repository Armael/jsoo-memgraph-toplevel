all:
	dune build

release:
	dune build --profile=release

.PHONY: all release
