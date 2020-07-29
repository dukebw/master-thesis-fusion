THESIS=thesis

all:
	xelatex $(THESIS).tex
	bibtex $(THESIS).aux
	xelatex $(THESIS).tex
	makeindex $(THESIS).nlo -s nomencl.ist -o $(THESIS).nls
	xelatex $(THESIS).tex
	$(MAKE) clean

clean:
	rm -rf *.acn *.alg *.glg *.glo *.gls *.glsdefs *.ist *.xdy *.acr *.bbl *.blg *.aux *.dvi *.log *.lot *.idx *.toc *.lof *.brf *.out
	rm -f Abstract/*.aux
	rm -f Acknowledgement/*.aux
	rm -f Chapter1/*.aux
	rm -f Chapter2/*.aux
	rm -f Chapter3/*.aux
	rm -f Chapter4/*.aux
	rm -f Chapter5/*.aux
	rm -f Chapter6/*.aux
	rm -f Declaration/*.aux
	rm -f Dedication/*.aux
	rm -f Preamble/*.aux
	rm -rf thesis.nlo
	rm -rf thesis.ilg
	rm -rf thesis.nls
	rm -rf x.tex

mrproper: clean
	rm -rf *.pdf
