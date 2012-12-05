FILES=colortable tmuxcolorlist git-touch git-tree git-wtf vimmake dirdiff regcam_convert

all: $(FILES)

install: all
	install -d $(HOME)/bin
	install -t $(HOME)/bin -m 754 $(FILES)

.PHONY: install
