all:

install: all
	install vimrc $(HOME)/.vimrc
	install -d $(HOME)/.vim/colors
	install -t $(HOME)/.vim/colors -m 644 colors/*
	install -d $(HOME)/.vim/syntax
	install -t $(HOME)/.vim/syntax -m 644 syntax/*
	install -d $(HOME)/.vim/ftdetect
	install -t $(HOME)/.vim/ftdetect -m 644 ftdetect/*
	install -d $(HOME)/.vim_runtime/undodir
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
	vim -c "BundleInstall" -c "quitall"
	sh -c "cd $(HOME)/.vim/bundle/vimproc.vim && make -f make_unix.mak"

uninstall:
	rm -rf $(HOME)/.vimrc $(HOME)/.vim

.PHONY: install uninstall
