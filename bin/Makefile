FILES=colortable tmuxcolorlist git-touch git-tree git-ff git-wtf vimmake dirdiff optimize_jpeg to_c44 record_desktop.bash cpptags

all: $(FILES)

install: all
	install -d $(HOME)/bin
	install -t $(HOME)/bin -m 754 $(FILES)

.PHONY: install
