"Settings for VIM

" Use Vundle package manager
"  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vundle help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"-----------------------------------
" Plugins
Plugin 'scrooloose/nerdtree'

" Both of these plugins are needed for markdown support
" https://github.com/plasticboy/vim-markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"-----------------------------------
" Markdown-specific code folding disabled (don't fold headings by default)
let g:vim_markdown_folding_disabled = 1


"-----------------------------------
" Colors
:syntax on
:colorscheme darcula


"-----------------------------------
" Turn on line numbers
:set nu


" Highlight search results
set hlsearch


" Set font
set guifont=Consolas:h10:cANSI

" Set tab width
set tabstop=4
set shiftwidth=4
set expandtab

" Set window size
" set lines=100 columns=150


"-----------------------------------
" Aliases / Keymap

" Set the timout for key sequences (commands in normal mode)
set timeoutlen=500 ttimeoutlen=10


" Set the LEADER key for mappings
let mapleader = "-"


" Map the key sequence 'jk' to the ESC key to allow exiting insert mode without leaving home-row. Create this mapping to exit visual mode (:vnoremap) without automatically re-selecting anything that was selected using 'gV'.
:vnoremap jk <Esc>gV
:onoremap jk <Esc>
:inoremap jk <Esc>


" Configure splits
" Set new splits to open on the right or bottom (rather than the default which is opposite)
set splitbelow
set splitright


" Move to a different split by pressing CTRL+direction, rather than CTRL+W then direction.
:nnoremap <C-J> <C-W><C-J>
:nnoremap <C-K> <C-W><C-K>
:nnoremap <C-H> <C-W><C-H>
:nnoremap <C-L> <C-W><C-L>


" Map a shortcut to open the .vimrc file in a new split
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>


" Open Nerdtree by pressing ctrl+n
nmap <C-n> :NERDTreeToggle<cr>

" Set Nerdtree to show hidden files by default
let NERDTreeShowHidden=1

" Source the .vimrc file (run it as vimscript, which will apply changes without having to restart Vim)
:nnoremap <leader>sv :source $MYVIMRC<cr>


" Jump to function definition from a function call - place the cursor over the function name and type 'gx' to view function definition
nmap gx yiw/^\(sub\<Bar>function\)\s\+<C-R>"<CR>
