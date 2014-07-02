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
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
	vim -c "BundleInstall" -c "quitall"
	bash -c "cd ~/.vim/bundle/YouCompleteMe && ./install.sh --clang-completer"

uninstall:
	rm -rf $(HOME)/.vimrc $(HOME)/.vim

.PHONY: install uninstall
