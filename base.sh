alias python="python3"
PIP="pip3"

# vim
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cp `pwd`/vim/vimrc ~/.vimrc
cp -r `pwd`/vim/colors ~/.vim/colors

# vim-bundle
rm -rf ~/.vim/bundle/
git clone git://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter

# vim snakemake
mkdir -p ~/.vim/syntax/
curl -LSso ~/.vim/syntax/snakemake.vim https://mstamenk.github.io/assets/files/snakemake.vim

# git
cp `pwd`/git/gitconfig ~/.gitconfig

# fish
mkdir -p ~/.config/fish
cp `pwd`/fish/config.fish ~/.config/fish/config.fish

# tmux
cp `pwd`/tmux/tmux.conf ~/.tmux.conf

# tmux-fish
LOCATION=`which fish`
echo $LOCATION
sed -i "s,#FISHBIN,$LOCATION," ~/.tmux.conf
sed -i 's,#FISHENABLE,,' ~/.tmux.conf

# fucking powerline
$PIP install --user powerline-status
mkdir -p ~/.config/powerline/colorschemes/tmux/
mkdir -p ~/.config/powerline/themes/shell/
mkdir -p ~/.config/powerline/themes/tmux/

cp `pwd`/powerline/config.json ~/.config/powerline/
cp `pwd`/powerline/default.json ~/.config/powerline/colorschemes/

cp `pwd`/powerline/tmux/default.json ~/.config/powerline/colorschemes/tmux/
cp `pwd`/powerline/themes/shell/default.json ~/.config/powerline/themes/shell/
cp `pwd`/powerline/themes/tmux/default.json ~/.config/powerline/themes/tmux/

# powerline-handlers
LOCATION=`$PIP show powerline-status | grep Location | cut -f2 -d' '`
echo $LOCATION
sed -i "s,#POWERLINESETUPROOT,$LOCATION," ~/.config/fish/config.fish
sed -i 's,#POWERLINEENABLE,,' ~/.config/fish/config.fish
sed -i "s,#POWERLINESETUPROOT,$LOCATION," ~/.tmux.conf
sed -i 's,#POWERLINEENABLE,,' ~/.tmux.conf

