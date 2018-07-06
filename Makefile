title = FP_eq

bib = bib.bib

all: $(title).tex

clean:
	rm -f *.toc *.aux *.out *.log *.dvi *.bbl *.xml *gz *blg *blx* *fdb* *.fls *.glg *.glo *.gls *.glsdefs *.ist *.lof *.lol *.lot *.nlg *.nlg *.nls *.sbl *converted-to* *.nlo
 

$(title).pdf: $(title).tex
	pdflatex $(title).tex

$(title).tex: $(chapters) $(bib)
	touch $(title).tex


full:
	pdflatex $(title).tex
	bibtex $(title).aux
	pdflatex $(title).tex
	pdflatex $(title).tex
	



foo :
	for i in $(chapters); do \
		echo $$i ; \
		done


