include Makefile.inc

# Enter the name(s) of the .tex file(s) that you want to compile.
TEX_FILES = hierarchical

# You shouldn't need to edit below here.
default: ${DOCS}

.tex.pdf:
	${LATEX} $*.tex
	( ${CHECK_RERUN} && ${LATEX} $*.tex ) || echo "Done."
	( ${CHECK_RERUN} && ${LATEX} $*.tex ) || echo "Done."

clean:
	$(foreach d, ${TEX_FILES}, $(RM_TMP))
