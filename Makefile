all: document.pdf

%.pdf: %.md
	pandoc $< --template pandoc-template.tex -o $@

%.docx: %.md
	pandoc $< -o $@
