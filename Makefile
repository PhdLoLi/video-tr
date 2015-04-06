################################################################
# Usage:
#	pdf ==> create pdf file
#	ps  ==> create ps file
#	clean ==> clean all files generated
################################################################

latexfile=nextndnvideo-tr
TEX=pdflatex
BIBTEX=bibtex

all: $(latexfile).pdf

$(latexfile).pdf: *.tex *.bib figures/*.pdf
	$(TEX) $(latexfile) && $(BIBTEX) $(latexfile) && $(TEX) $(latexfile) && $(TEX) $(latexfile)

clean:
	rm -f $(latexfile).dvi $(latexfile).pdf $(latexfile).ps $(latexfile).aux $(latexfile).log $(latexfile).bbl $(latexfile).blg texput.log nexndnvideo-tr.out

view: $(latexfile).pdf
	open $(latexfile).pdf &
