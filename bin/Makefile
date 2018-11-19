FILES=$(shell ls * | grep -v Makefile)

all: $(FILES)
	@echo $(FILES)

install: all
	install -d $(HOME)/bin
	install -m 754 $(FILES) $(HOME)/bin

.PHONY: install
