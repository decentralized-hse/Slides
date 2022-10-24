%.html: %.md
	marp --html $<

MDS= $(wildcard *.md)
HTMLS = $(patsubst %.md,%.html,$(MDS))

all: $(HTMLS)
