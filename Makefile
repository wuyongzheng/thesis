thesis.pdf: *.tex thesis.bib
	pdflatex thesis
	bibtex thesis
	pdflatex thesis
	pdflatex thesis

.PHONY: html
html:
	latex2html -split 0 -info '' -dir html thesis

.PHONY: clean
clean:
	rm -f thesis.aux thesis.log thesis.out thesis.pdf thesis.toc thesis.bbl thesis.blg
	rm -rf html/
	mkdir html/
