all:

install: all
	install vimrc $(HOME)/.vimrc
	install -d $(HOME)/.vim/colors
	install -t $(HOME)/.vim/colors -m 644 colors/*
	install -d $(HOME)/.vim_runtime/undodir
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
	vim -c "BundleInstall" -c "quitall"

uninstall:
	rm -rf $(HOME)/.vimrc $(HOME)/.vim

.PHONY: install uninstall
