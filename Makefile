CONTENT_FILE=document.md
OUTPUT_FILE=$(CONTENT_FILE:.md=.pdf)
REFERENCE_FILE=references.bib
TEMPLATE_FILE=pandoc-template.tex

all: $(OUTPUT_FILE)

%.pdf: %.md $(TEMPLATE_FILE) $(REFERENCE_FILE)
	pandoc --citeproc $< --template $(TEMPLATE_FILE) -o $@

%.docx: %.md
	pandoc --citeproc $< -o $@

.PHONY: clean
clean:
	rm $(OUTPUT_FILE)
