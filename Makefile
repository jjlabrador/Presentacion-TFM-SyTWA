all:
	latex presentacion_tfm.tex
	latex presentacion_tfm.tex
	bibtex presentacion_tfm
	latex presentacion_tfm.tex
	dvips -Ppdf -G0 -o presentacion_tfm.ps presentacion_tfm.dvi
	ps2pdf -sPAPERSIZE=a4 -DMaxSubsetPct=100 -dCompatibilityLevel=1.2 -dSubsetFonts=true -dEmbedAllFonts=true presentacion_tfm.ps presentacion_tfm.pdf

clean:
	rm -f *.log *.dvi *.aux *.blg *.ps *.nav *.out *.snm *.toc *.bbl

