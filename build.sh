#!/bin/bash

# Create output directory if it doesn't exist
mkdir -p out

# Compile the LaTeX document with all output files going to out/ directory
pdflatex -output-directory=out main.tex

# Run BibTeX if needed (for bibliography)
if [ -f "refs.bib" ]; then
    cd out
    bibtex main
    cd ..
    pdflatex -output-directory=out main.tex
    pdflatex -output-directory=out main.tex
fi

echo "Build complete! PDF is in out/main.pdf"