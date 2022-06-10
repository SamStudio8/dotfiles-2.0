alias python="python3"
PIP="pip3"

# dots
./dots.sh

# vim
./vim.sh

# fish
mkdir -p ~/.config/fish
cp `pwd`/fish/config.fish ~/.config/fish/config.fish

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

