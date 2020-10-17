# Makefile for LaTeX template.

PDF=main.pdf
VIEWER=$(shell which xdg-open open | head -n 1)

all: ${PDF}

%.pdf: %.tex
	latexmk -pdf $< --silent
	${VIEWER} $@ &

clean:
	latexmk -C
	-rm -fr ${PDF} main.run.xml *.bbl *.blg *.nlo clean.aux clean.fdb_latexmk texput.fls
    

