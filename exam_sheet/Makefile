BUILDDIR=build
FILE=exam_sheet

pdf:
	mkdir $(BUILDDIR) -p
	pandoc $(FILE).md \
	--from=markdown+raw_tex+tex_math_single_backslash \
	--to=latex \
	--output=$(BUILDDIR)/$(FILE).pdf \
	--pdf-engine=xelatex \
	--variable urlcolor=cyan \
	--variable papersize=a4paper \
	--variable classoption=twocolumn \
	--variable margin-left=1cm \
		--variable margin-right=1cm \
	--variable margin-top=1cm \
	--variable margin-bottom=1cm \

# TODO: dimensions, 2 column

clean:
	rm $(BUILDDIR)/*
