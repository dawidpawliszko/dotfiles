""" Vundle config start
set nocompatible               " be iMproved
filetype off                   " required!
" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
"Add your bundles here
Bundle 'Syntastic'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'kien/ctrlp.vim'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'airblade/vim-gitgutter'

"...All your other bundles...
if iCanHazVundle == 0
  echo "Installing Bundles, please ignore key map error messages"
  echo ""
  :BundleInstall
endif
" Setting up Vundle - the vim plugin bundler end
filetype plugin indent on     " required!
""" Vundle config end

"" General settings
set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
set laststatus=2                " Always show the statusline
set hidden                      " Maintain scroll position (don't close buffer)
runtime macros/matchit.vim      " Needed for Ruby block selection support: https://github.com/nelstrom/vim-textobj-rubyblock

" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
set list

" Colorscheme
if $COLORTERM == 'mate-terminal' 
  set term=gnome-256color
  colorscheme railscasts
else
  colorscheme default
endif

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
set listchars=trail:·

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Line numbering, cursor
set number                        " Show relative line numbers
set ruler                         " Show cursor position.
set scrolloff=3                   " Show 3 lines of context around the cursor.

"" NERDTree
function! ShowFileInNERDTree()
  if exists("t:NERDTreeBufName")
    NERDTreeFind
  else
    NERDTree
    wincmd l
    NERDTreeFind
  endif
endfunction
map <leader>d :call ShowFileInNERDTree()<cr>







