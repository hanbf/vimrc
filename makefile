all: ~/.vim/bundle ~/.vim/autoload ~/.vim/bundle/Vundle.vim ~/.vim/autoload/pathogen.vim ~/.vim/bundle/nerdtree ~/.vimrc

~/.vimrc: vimrc
	cp vimrc ~/.vimrc

~/.vim/bundle/Vundle.vim: ~/.vim/bundle
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

~/.vim/autoload/pathogen.vim: ~/.vim/autoload 
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

~/.vim/bundle/nerdtree: ~/.vim/bundle ~/.vim/autoload/pathogen.vim
	git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

~/.vim/bundle:
	mkdir -p ~/.vim/bundle

~/.vim/autoload:
	mkdir -p ~/.vim/autoload

