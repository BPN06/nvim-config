let mapleader=' '

" Plug-in

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source ~/.config/nvim/init.vim
endif

call plug#begin('/home/bpn/.config/nvim/plugged/')
Plug 'morhetz/gruvbox'

Plug 'junegunn/fzf'
Plug 'tabnine/YouCompleteMe'

Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/unite.vim'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'lervag/vimtex'
Plug 'KeitaNakamura/tex-conceal.vim'

Plug 'rust-lang/rust.vim'
call plug#end()

colorscheme gruvbox

" YCM

let g:ycm_auto_trigger = 1
let g:ycm_min_num_of_chars_for_completion = 0
let g:ycm_key_list_select_completion = ['<A-j>']
let g:ycm_key_list_previous_completion = ['<A-k>']
set completeopt-=preview

" Vimfiler

let g:vimfiler_as_default_explorer = 1
autocmd VimEnter * VimFilerExplorer -winwidth=24 | wincmd p

call vimfiler#custom#profile('default', 'context', {
      \   'safe' : 0
      \ })

" Ultisnips

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<A-l>"
let g:UltiSnipsJumpBackwardTrigger="<A-h>"

" Latex

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none

" Key bindings

" Pasting

nnoremap y "+y
vnoremap y "+y
nnoremap p "+p
vnoremap p "+p
vnoremap D "+d

nnoremap Y "+Y
vnoremap Y "+Y
nnoremap P "+P
vnoremap P "+P

" Insert mode

nnoremap <Esc> i

" Directions

nnoremap k g<Up>
nnoremap j g<Down>
vnoremap k g<Up>
vnoremap j g<Down>

" Window

nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Miscelaneous

nnoremap i o<Esc>
nnoremap I O<Esc>

nnoremap zz :w<CR>

nnoremap <Leader>i gg=G
nmap <Leader>w :set wrap!<CR> <bar> :set linebreak!<CR>

" Settings

set nocompatible
set wildmenu
set mouse=nv
syntax on
filetype plugin indent on
set encoding=utf-8
set undofile

setlocal spell
set spelllang=en_us,fr

set nowrap
set nolinebreak

autocmd FocusLost * wa
autocmd WinLeave * wa

" Tabs

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
