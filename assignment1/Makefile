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
	--variable papersize=a4paper

clean:
	rm $(BUILDDIR)/*
