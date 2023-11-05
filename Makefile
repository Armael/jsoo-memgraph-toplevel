all:
	dune build

release:
	dune build --profile=release

pages: release
	git checkout gh-pages && rm -rf docs && \
    mkdir docs && \
    cp _build/default/index.html docs/ && \
	cp _build/default/toplevel.js docs/ && \
	cp _build/default/viz.js docs/ && \
	git add --all docs

.PHONY: all release pages
