# SHELL=/bin/bash
# .SHELLFLAGS="-O extglob -c"

BUILDDIR=build
FILE=question_1

pdf:
	mkdir $(BUILDDIR) -p
	pandoc $(FILE).md \
	--from=markdown+tex_math_single_backslash \
	--to=latex \
	--output=$(BUILDDIR)/$(FILE).pdf \
	--pdf-engine=xelatex \
	--variable urlcolor=cyan \
	--variable papersize=a4paper \
	--filter pandoc-citeproc \
	--bibliography=bibliography.bib \
	--csl=https://www.zotero.org/styles/frontiers-in-applied-mathematics-and-statistics \

clean:
	rm $(BUILDDIR)/*
