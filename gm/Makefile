include ../Makefile.inc

TEX_FILES = gm

default: ${DOCS}

.tex.pdf:
	latex $*
	dvipdf $*.dvi

clean:
	${RM_TMP}

