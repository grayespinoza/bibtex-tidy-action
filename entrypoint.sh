#!/bin/sh

set -eu

find . -name "*.bib" | xargs bibtex-tidy $*
find . -name "*.bib.original" | xargs rm

exit 0
