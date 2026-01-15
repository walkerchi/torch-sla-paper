# Makefile for torch-sla-paper LaTeX document

MAIN = main
LATEX = pdflatex
BIBTEX = bibtex

# Default target
all: $(MAIN).pdf

# Build PDF
$(MAIN).pdf: $(MAIN).tex references.bib
	$(LATEX) $(MAIN)
	$(BIBTEX) $(MAIN)
	$(LATEX) $(MAIN)
	$(LATEX) $(MAIN)

# Quick build (no bibtex)
quick:
	$(LATEX) $(MAIN)

# Clean auxiliary files
clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.lof *.lot *.synctex.gz *.fdb_latexmk *.fls

# Clean everything including PDF
distclean: clean
	rm -f $(MAIN).pdf

# Watch for changes and rebuild (requires latexmk)
watch:
	latexmk -pdf -pvc $(MAIN)

.PHONY: all quick clean distclean watch

