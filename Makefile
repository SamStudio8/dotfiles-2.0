
lite: vim tmux powerline git

all: lite vim-bundle fish

ubuntu: lite
	sudo apt-get install htop tree

fedora: all
	sudo dnf install vim fish htop tree powerline-fonts
	dconf load /org/gnome/terminal/legacy/profiles:/ < `pwd`/terminal/profile

vim:
	mkdir -p ~/.vim/autoload ~/.vim/bundle
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	cp `pwd`/vim/vimrc ~/.vimrc
	cp `pwd`/vim/colors ~/.vim/colors

vim-bundle:
	git clone git://github.com/airblade/vim-gitgutter.git ~/.vim/bundle


fish:
	mkdir -p ~/.config/fish
	cp `pwd`/fish/config.fish ~/.config/fish/config.fish

tmux:
	cp `pwd`/tmux/tmux.conf ~/.tmux.conf

powerline: tmux fish
	sudo pip install powerline-status
	LOCATION = `pip show powerline-status | grep Location | cut -f2 -d' '`
	sed "s,#POWERLINESETUPROOT,{$LOCATION}," ~/.config/fish/config.fish > ~/.config/fish/config.fish
	sed 's,#POWERLINEENABLE,,' ~/.config/fish/config.fish > ~/.config/fish/config.fish
	sed "s,#POWERLINESETUPROOT,{$LOCATION}," ~/.tmux.conf > ~/.tmux.conf
	sed 's,#POWERLINEENABLE,,' ~/.tmux.conf > ~/.tmux.conf

git:
	cp `pwd`/git/gitconfig ~/.gitconfig


