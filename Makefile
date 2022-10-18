%.html: %.md
	marp $<

MDS= $(wildcard *.md)
HTMLS = $(patsubst %.md,%.html,$(MDS))

all: $(HTMLS)
