#!/bin/sh -eu

find $INPUT_INPUTS -name "*.bib" | xargs -r bibtex-tidy $INPUT_OPTS && find $INPUT_INPUTS -name "*.bib.original" -delete

exit 0
