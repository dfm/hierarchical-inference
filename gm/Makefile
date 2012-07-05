include ../Makefile.inc

TEX_FILES = gm

default: ${DOCS}

.tex.pdf:
	latex $*
	dvipdf $*.dvi
	pdfcrop $*.pdf
	mv $*-crop.pdf $*.pdf

clean:
	${RM_TMP}
