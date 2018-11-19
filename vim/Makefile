all:
	@echo "Use install/uninstall"

install-core: all
	install vimrc $(HOME)/.vimrc
	install -d $(HOME)/.vim/colors
	install -m 644 colors/* $(HOME)/.vim/colors
	install -d $(HOME)/.vim_runtime/undodir

install: install-core

uninstall:
	rm -rf $(HOME)/.vimrc $(HOME)/.vim

.PHONY: install uninstall install-core
