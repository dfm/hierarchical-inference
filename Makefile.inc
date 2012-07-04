.SUFFIXES:
.SUFFIXES: .pdf .tex

LATEX       = pdflatex
RM          = rm -rf

TMP_SUFFS   = pdf aux bbl blg log dvi ps eps out
SUFF        = pdf

RM_TMP      = ${RM} $(foreach suff, ${TMP_SUFFS}, ${d}.${suff})
CHECK_RERUN = grep Rerun $*.log

DOCS        = $(foreach f, ${TEX_FILES}, ${f}.${SUFF})
