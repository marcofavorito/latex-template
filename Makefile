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
	-rm -fr **/*.aux
	# Vim
	-rm -rf  **/.*.s[a-v][a-z]   .*.s[a-v][a-z]
	-rm -rf  **/.*.sw[a-p]       .*.sw[a-p]
	-rm -rf  **/.s[a-rt-v][a-z]  .s[a-rt-v][a-z]
	-rm -rf  **/.ss[a-gi-z]      .ss[a-gi-z]
	-rm -rf  **/.sw[a-p]         .sw[a-p]
