python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

set t_Co=256
set encoding=utf-8
set shell=/bin/bash

call pathogen#infect()
set laststatus=2

syntax on
filetype plugin indent on

au BufNewFile,BufRead SConstruct set filetype=python
au BufNewFile,BufRead *.dump set filetype=sql

"wtf is modula2
au BufNewFile,BufRead *.md set filetype=markdown

" Use vim rather than vi settings
set nocompatible
set nocp

" Editor
set number
set title
set visualbell
set colorcolumn=80
set scrolloff=3

" Visual
"let g:solarized_termcolors=256
"color OceanicNext
"color colorsbox-stblue
"color flattown
"color wombat256
set background=dark
"color inkpot
"color gruvbox
color jellybeans
"color solarized

set showmatch "Show matching parens
set showmode
set showcmd "Show incomplete commands
set hlsearch "Hilight search patterns
set cursorline
set numberwidth=5

" Intentation
set formatoptions+=rc
set expandtab
set smarttab
set shiftround
set smartindent
set shiftwidth=4
set tabstop=4
set softtabstop=2
set showtabline=2

" Toggle tab expansion
" http://vim.wikia.com/wiki/Toggle_between_tabs_and_spaces
function TabToggle()
  if &expandtab
    set softtabstop=0
    set noexpandtab
  else
    set softtabstop=2
    set expandtab
  endif
endfunction
noremap <F10> mz:execute TabToggle()<CR>'z
noremap <F11> :retab<CR>

" Toggle word wrap
function WrapToggle()
  if &wrap
    set textwidth=80
    set wrap
  else
    set textwidth=0
    set nowrap
  endif
endfunction
noremap <F12> mz:execute WrapToggle()<CR>'z

" Highlight Characters
"set listchars=tab:>.,trail:.,extends:#,nbsp:.
set list

" Pasting
set pastetoggle=<F2>

" Searching
set incsearch "Search as you type
set ignorecase
set smartcase

" Wildmenu
set wildmenu
set wildmode=longest,list
set wildignore=.svn,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,*.pyc

" Tab Movement
nnoremap <F3> :tabprevious<CR>
nnoremap <F4> :tabnext<CR>

" Compile latex
"nnoremap <F9> :!pdflatex %<CR>
nnoremap <F9> :!./compile.sh compile %:r<CR>


" Easy 'clearing' of highlights
nmap <silent> ./ :nohlsearch<CR>

" Forgotten sudo
cmap w!! w !sudo tee % >/dev/null

" map C-\ to open a tag in a new tab - Thanks Jan!
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

"http://vim.wikia.com/wiki/Move_cursor_by_display_lines_when_wrapping
noremap <buffer> <silent> <Up>   gk
noremap <buffer> <silent> <Down> gj

" Vim sensible
let &listchars = "tab:\u21e5 ,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u00b7"

" Sensible movement
noremap  k gk
noremap  j gj
noremap <UP> gk
noremap <DOWN>  gj

let g:tex_flavor='latex'

" Stop fucking adding numbers
map <C-a> <Nop>
