" rTecnica's VIMRC "

set shell=bash

" Plugins!!!!"
set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim

" set vimrc to rc var "
let $rc="~/.config/nvim/init.vim"

call vundle#begin('~/.config/nvim/bundle')
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sainnhe/gruvbox-material'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'ryanoasis/vim-devicons'
Plugin 'rdnetto/YCM-Generator'
Plugin 'sheerun/vim-polyglot'
" Plugin 'jiangmiao/auto-pairs'
Plugin 'matze/vim-move'
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin '907th/vim-auto-save'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'chrisbra/colorizer'
Plugin 'mtth/scratch.vim'
Plugin 'frazrepo/vim-rainbow'
Plugin 'vim-scripts/argtextobj.vim'
Plugin 'ludovicchabant/vim-gutentags'
call vundle#end()

filetype plugin on

" Turn on syntax "
syntax on
" How many columns of whitespace a \t is worth
set tabstop=4 
" How many columns of whitespace a "level of indentation" is worth
set shiftwidth=4 
" Use spaces when tabbing
set expandtab

set incsearch  " Enable incremental search
set hlsearch   " Enable highlight search

set splitbelow         " Always split below
set mouse=a            " Enable mouse drag on window splits

" Set backspace for indents eol and starts "
set backspace=indent,eol,start

" Set linenumbers and relative linenumbers "
set number
set relativenumber
set background=dark

" autocommands 
autocmd FileType nerdtree let b:NERDTreeZoomed = 1 | wincmd |

" swap leaderkey for , and leader commands
let mapleader = "ñ"
nnoremap <leader>e :bufdo e!<CR>
nnoremap <leader>q :bd!<CR>
nnoremap <leader>w :w\|bd<CR>
nnoremap <leader>c :ColorToggle<CR>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <leader>k :wincmd k<CR>
nmap <silent> <leader>j :wincmd j<CR>
nmap <silent> <leader>h :wincmd h<CR>
nmap <silent> <leader>l :wincmd l<CR>

nmap <silent> <c-w><c-h> :vertical resize +5<CR>
nmap <silent> <c-w><c-l> :vertical resize -5<CR>
nmap <silent> <c-w><c-j> :resize +5<CR>
nmap <silent> <c-w><c-k> :resize -5<CR>

" Use ctrl-[arrows] to navigate in insert mode!
imap <silent> <C-h> <C-Left>
imap <silent> <C-l> <C-Right>
imap <silent> <C-k> <C-Up>
imap <silent> <C-j> <C-Down>


" Airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox_material'

" Gruvbox Material Theme
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_background='hard'
colorscheme gruvbox-material

" AutoPair config
let g:AutoPairsShortcutToggle = '<C-P>'

" vim-raindow
let g:rainbow_active = 1

" YCM config
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion = 1

" NERDTree Config
nnoremap <silent> <leader>m :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <silent> <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Nav words with ctrl
nnoremap <C-h> b
nnoremap <C-l> W

" swap buffers with alt-arrow-keys
nnoremap <silent> <C-u> :bprevious!<CR>
nnoremap <silent> <C-i> :bnext!<CR>

" AutoSave config
nnoremap <leader>a :AutoSaveToggle<CR>

" Refactor ''shortcuts''
nnoremap <leader><r> :YcmCompleter RefactorRename 
nnoremap <leader><f> :YcmCompleter Fixit 
