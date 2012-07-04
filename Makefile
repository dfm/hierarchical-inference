include Makefile.inc

# Enter the name(s) of the .tex file(s) that you want to compile.
TEX_FILES = hierarchical

# You shouldn't need to edit below here.
default: ${DOCS}

%.pdf: %.tex
	${LATEX} $<
	( ${CHECK_RERUN} && ${LATEX} $< ) || echo "Done."
	( ${CHECK_RERUN} && ${LATEX} $< ) || echo "Done."

clean:
	$(foreach d, ${TEX_FILES}, $(RM_TMP))
