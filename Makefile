all: document.pdf

%.pdf: %.md pandoc-template.tex
	pandoc $< --template pandoc-template.tex -o $@

.PHONY: clean
clean:
	rm document.pdf
