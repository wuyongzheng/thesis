.PHONY: thesis.pdf
thesis.pdf:
	pdflatex thesis
	bibtex thesis
	pdflatex thesis
	pdflatex thesis

.PHONY: fast
fast:
	pdflatex thesis

.PHONY: html
html:
	latex2html -split 0 -info '' -dir html thesis

.PHONY: clean
clean:
	rm -f thesis.aux thesis.log thesis.out thesis.pdf thesis.toc thesis.bbl thesis.blg
	rm -rf html/
	mkdir html/

.PHONY: dist
dist:
	-rm `date +thesis-%m%d%H.zip`
	zip -q -r `date +thesis-%m%d%H.zip` thesis.pdf thesis.bib *.tex binauth binint depvis lbox lviz sensor winresmon
