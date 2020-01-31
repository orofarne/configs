all:
	@echo "Use install/uninstall"

install-core: all
	install vimrc $(HOME)/.vimrc
	install -d $(HOME)/.vim/colors
	install -m 644 colors/* $(HOME)/.vim/colors
	install -d $(HOME)/.vim_runtime/undodir

install-plugins:
	test -d ~/.vim/bundle/Vundle.vim || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall

install: install-core install-plugins

uninstall:
	rm -rf $(HOME)/.vimrc $(HOME)/.vim

.PHONY: install uninstall install-core
