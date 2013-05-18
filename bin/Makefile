FILES=colortable tmuxcolorlist git-touch git-tree git-wtf vimmake dirdiff optimize_jpeg

all: $(FILES)

install: all
	install -d $(HOME)/bin
	install -t $(HOME)/bin -m 754 $(FILES)

.PHONY: install
