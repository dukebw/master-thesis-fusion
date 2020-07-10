THESIS=thesis

all:
	pdflatex $(THESIS).tex
	bibtex $(THESIS).aux
	pdflatex $(THESIS).tex
	pdflatex $(THESIS).tex
	$(MAKE) clean

clean:
	rm -rf *.acn *.alg *.glg *.glo *.gls *.glsdefs *.ist *.xdy *.acr *.bbl *.blg *.aux *.dvi *.log *.lot *.idx *.toc *.lof *.brf *.out
	rm -f Abstract/*.aux
	rm -f Acknowledgement/*.aux
	rm -f Chapter1/*.aux
	rm -f Declaration/*.aux
	rm -f Dedication/*.aux
	rm -f Preamble/*.aux
	rm -rf thesis.nlo

mrproper: clean
	rm -rf *.pdf
