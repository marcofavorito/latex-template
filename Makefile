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
	-rm -rf **/[._]*.s[a-v][a-z]
	-rm -rf **/[._]*.sw[a-p]
	-rm -rf **/[._]s[a-rt-v][a-z]
	-rm -rf **/[._]ss[a-gi-z]
	-rm -rf **/[._]sw[a-p]
