#!/bin/sh -eu

find . -name "*.bib" | xargs bibtex-tidy $INPUT_OPTS && find . -name "*.bib.original" -delete

exit 0
