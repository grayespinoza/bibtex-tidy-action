#!/bin/sh -eu

find . -name "*.bib" | xargs bibtex-tidy $INPUT_OPTS && find . -name "*.bib.original" | xargs rm

exit 0
