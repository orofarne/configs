ifeq ($(shell hostname -f), dementyev-X220)
	CONF_P = tmux.conf.in
else
	CONF_P = tmux.conf.in2
endif

all: tmux.conf

tmux.conf: $(CONF_P)
	cp $(CONF_P) tmux.conf

tmux.conf.in2: tmux.conf.in
	sed 's/^#--\s//' tmux.conf.in > tmux.conf.in2

install: all
	install -m 644 tmux.conf $(HOME)/.tmux.conf

clean:
	rm -f tmux.conf tmux.conf.in2

.PHONY: install clean
