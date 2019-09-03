# make sure that this matches the md file, e.g. if the content is in
# document.md, then this $(CONTENT_FILE) should be document.pdf
CONTENT_FILE=document.pdf

all: $(CONTENT_FILE)

%.pdf: %.md pandoc-template.tex references.bib
	pandoc --filter pandoc-citeproc $< --template pandoc-template.tex -o $@

.PHONY: clean
clean:
	rm $(CONTENT_FILE)
