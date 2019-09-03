all: document.pdf

%.pdf: %.md pandoc-template.tex references.bib
	pandoc --filter pandoc-citeproc $< --template pandoc-template.tex -o $@

.PHONY: clean
clean:
	rm document.pdf
