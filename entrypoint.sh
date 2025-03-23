#!/bin/sh

set -eu

find . -name "*.bib" | xargs bibtex-tidy $*

exit 0
