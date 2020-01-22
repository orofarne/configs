all:
	@echo "Use install/uninstall"

install-core: all
	install vimrc $(HOME)/.vimrc
	install -d $(HOME)/.vim/colors
	install -m 644 colors/* $(HOME)/.vim/colors
	install -d $(HOME)/.vim_runtime/undodir

install-plugins:
	test -d ~/.vim/pack/plugins/start/vim-go || git clone https://github.com/fatih/vim-go.git ~/.vim/pack/plugins/start/vim-go
	test -d ~/.vim/pack/plugins/start/vim-airline || git clone https://github.com/vim-airline/vim-airline.git ~/.vim/pack/plugins/start/vim-airline

install: install-core install-plugins

uninstall:
	rm -rf $(HOME)/.vimrc $(HOME)/.vim

.PHONY: install uninstall install-core
