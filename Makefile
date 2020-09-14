
.PHONY: force-build

all: dissertation.pdf

clean:
	find . \( -name '*.out'  -o -name '*.aux' -o -name '*.log' -o -name '*.pdf' -o -name '*.out' -o -name '*.toc' -o -name '*.bib' \) -exec rm {} \;

force-build:

dissertation.pdf: force-build
	xelatex dissertation
	#bibtex chapter-1/chapter-1
	xelatex dissertation
	xelatex dissertation

