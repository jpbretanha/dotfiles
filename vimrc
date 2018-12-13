set encoding=utf8
set nomodeline
set nowrap
  autocmd FileType markdown setlocal wrap
set undolevels=100
set clipboard=unnamed
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set conceallevel=1
set noerrorbells
set number
set hlsearch
set scrolloff=1
set ruler
set showcmd
set autoread
set autowrite
set nobackup
set nowritebackup
set noswapfile
set list listchars=tab:»·,trail:·,nbsp:·
set nojoinspaces
set splitbelow
set splitright
set diffopt+=vertical
set lazyredraw
set termguicolors

if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

set sidescrolloff=5
let mapleader="\<SPACE>"
set mouse=r
set autoindent
set smartindent

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

nnoremap <Left> :vertical resize -1<CR>
nnoremap <Right> :vertical resize +1<CR>
nnoremap <Up> :resize -1<CR>
nnoremap <Down> :resize +1<CR>
" Disable arrow keys completely in Insert Mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
nmap <Leader><Leader> <c-^>
nnoremap <Tab> :bnext!<CR>
nnoremap <S-Tab> :bprev!<CR><Paste>

call plug#begin('~/.local/share/nvim/plugged')
Plug 'Shougo/unite.vim'
Plug 'dracula/vim'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
Plug 'mhinz/vim-grepper'
Plug 'Shougo/vimfiler.vim', { 'on': 'VimFiler' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'pangloss/vim-javascript'
Plug 'mattn/emmet-vim'
Plug 'w0rp/ale'
Plug 'justinmk/vim-sneak'
Plug 'reasonml-editor/vim-reason-plus'
Plugin 'zxqfl/tabnine-vim'
call plug#end()
color Dracula
syntax on

nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>t :CtrlP<CR>

let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
set laststatus=2
let g:indentLine_enabled = 1
let g:LanguageClient_serverCommands = {
    \ 'reason': ['ocaml-language-server', '--stdio'],
    \ 'ocaml': ['ocaml-language-server', '--stdio'],
    \ }
let g:ale_fixers = {'javascript': ['prettier_standard']}
let g:ale_linters = {'javascript': ['']}
let g:ale_fix_on_save = 1

let g:javascript_plugin_jsdoc = 1

nnoremap <Leader>fp :Grepper<Space>-query<Space>
nnoremap <Leader>fb :Grepper<Space>-buffers<Space>-query<Space>-<Space>

map ` :VimFiler -explorer<CR>
map ~ :VimFilerCurrentDir -explorer -find<CR>
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
let g:sneak#s_next = 1
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F
let NERDTreeShowHidden=1
