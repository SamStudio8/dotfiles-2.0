# vim
mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/colors ~/.vim/syntax/

# config
curl -LSso ~/.vimrc https://raw.githubusercontent.com/SamStudio8/dotfiles-2.0/master/vim/vimrc

# pathogen
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# jellybeans
curl -LSso ~/.vim/colors/jellybeans.vim https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim

# vim-bundle
rm -rf ~/.vim/bundle/vim-gitgutter
git clone git://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter

# syntax
curl -LSso ~/.vim/syntax/snakemake.vim https://raw.githubusercontent.com/snakemake/snakemake/main/misc/vim/syntax/snakemake.vim
curl -LSso ~/.vim/syntax/nextflow.vim https://raw.githubusercontent.com/LukeGoodsell/nextflow-vim/master/syntax/nextflow.vim
