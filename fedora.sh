sudo dnf install vim fish htop tree

source base.sh

dconf load /org/gnome/terminal/legacy/profiles:/ < `pwd`/terminal/profile
