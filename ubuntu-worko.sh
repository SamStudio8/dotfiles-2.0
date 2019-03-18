bash ubuntu.sh

mkdir ~/ware
cd ~/ware
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
sed -i 's,#CONDAENABLE,,' ~/.config/fish/config.fish
