#!/bin/sh -eu

find . -name "*.bib" | xargs -r bibtex-tidy $INPUT_OPTS && find . -name "*.bib.original" -delete

exit 0
