BUILDDIR=build
FILENAME=assignment1

# TODO: create separate pdf files and one file that has all questions
pdf:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--from=markdown+tex_math_single_backslash \
	--to=latex \
	--output=$(BUILDDIR)/$(FILENAME).pdf \
	--pdf-engine=xelatex \
	--variable urlcolor=cyan \
	--variable papersize=a4paper
