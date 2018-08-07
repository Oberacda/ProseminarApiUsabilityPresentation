all: latex

latex: *.tex
	pdflatex -interaction=nonstopmode Presentation.tex
	pdflatex -interaction=nonstopmode Presentation.tex
	bibtex Presentation
	pdflatex -interaction=nonstopmode Presentation.tex
	pdflatex -interaction=nonstopmode Presentation.tex
	
clean: *.tex
	rm -f $(wildcard *.aux)
	rm -f $(wildcard *.log)
	rm -f $(wildcard *.nav)
	rm -f $(wildcard *.out)
	rm -f $(wildcard *.snm)
	rm -f $(wildcard *.toc)
	rm -f $(wildcard *.bbl)
	rm -f $(wildcard *.blg)
	rm -f $(wildcard *.zip)
	rm -f $(wildcard *~)
	rm -f $(wildcard *.bcf)
	rm -f $(wildcard *.xml)
	rm -f $(wildcard *.acn)
	rm -f $(wildcard *.acr)
	rm -f $(wildcard *.alg)
	rm -f $(wildcard *.ist)
	rm -f $(wildcard *.glg)
	rm -f $(wildcard *.glo)
	rm -f $(wildcard *.glo)
	rm -f $(wildcard *.gz)
	rm -f $(filter-out $(wildcard statistics/*.pdf),$(wildcard *.pdf))
