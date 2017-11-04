

call plug#begin()
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'zchee/deoplete-jedi'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'sbdchd/neoformat'
Plug 'neomake/neomake'
Plug 'tpope/vim-surround'
Plug 'flazz/vim-colorschemes'
Plug 'tmhedberg/simpylfold'
Plug 'easymotion/vim-easymotion'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'ryanoasis/vim-devicons'
        Plug 'scrooloose/nerdtree'
        Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()


"====================
"= General Settings =
"====================


set tabstop=4
set shiftwidth=4
set expandtab

set showmatch
set number
set relativenumber
set clipboard+=unnamedplus
set ruler
filetype plugin indent on
set encoding=utf-8

let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

"Check for truecolor support
if has('patch-7.4.1778')
  set guicolors
endif
if has('nvim')
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

set background=dark
colorscheme Tomorrow-Night

"=====================
"= Keyboard Bindings =
"=====================


inoremap fd <esc>
let mapleader="\<SPACE>"
nnoremap <leader>bp :bprev<CR>
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>wh <c-w><c-h>
nnoremap <leader>wj <c-w><c-j>
nnoremap <leader>wk <c-w><c-k>
nnoremap <leader>wl <c-w><c-l>
nnoremap <leader>wv :vsplit<CR>
nnoremap <leader>wV :split<CR>
nnoremap <leader>wd :q<CR>
nnoremap <leader>ft :NERDTreeToggle %<CR>
nnoremap <leader>fer :source %<CR>
nnoremap <leader>feR :PlugInstall<CR>
nnoremap <leader>ff :FZF ~<CR>
nnoremap <leader>fT :TagbarToggle<CR>
map <leader>j <Plug>(easymotion-prefix)
nnoremap <leader>gb :Gblame<CR>
tnoremap <Esc> <C-\><C-n>

"======================
"= Neoformat Settings =
"======================


augroup fmt
  autocmd!
  autocmd BufWritePre * Neoformat
augroup END
"

let g:neoformat_enabled_python = ['yapf']

"======================
"= Powerline Settings =
"======================


let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

"======================
"= UltiSnips Settings =
"======================


let g:UltiSnipsSnippetsDir='~/.config/nvim/mySnips'
let g:UltiSnipsSnippetDirectories = ['mySnips', 'UltiSnips']
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger = '<C-j>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'

"====================
"= Neomake Settings =
"====================


let g:neomake_python_enabled_makers= ['flake8', 'pep8']
autocmd! BufWritePost * Neomake

"=====================
"= NerdTree Settings =
"=====================


autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"====================
"= Devicon Settings =
"====================


let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

"=====================
"= Deoplete Settings =
"=====================


let g:deoplete#enable_at_startup = 1

"=======================
"= EasyMotion Settigns =
"=======================


