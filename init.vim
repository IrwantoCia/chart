call plug#begin('~/.vim/plugged')
" ============================================================
" Deoplete
" ============================================================
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'wokalski/autocomplete-flow'
" For func argument completion
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" ============================================================
" Status bar plugin
" ============================================================
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'

Plug 'sbdchd/neoformat'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-highlightedyank'
Plug 'tmhedberg/SimpylFold'
Plug 'morhetz/gruvbox'


call plug#end()

" ============================================================
" Deoplete settings
" ============================================================
" For python need to install pynvim and jedi
let g:deoplete#enable_at_startup = 1

" Automatically close the method preview window
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Open the preview window below the current window
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Neosnippet
let g:neosnippet#enable_completed_snippet = 1
let g:autocomplete_flow#insert_paren_after_function = 0

" ============================================================
" Theme
" ============================================================
let g:airline_theme='simple' " <theme> is a valid theme name

" ============================================================
" Neoformat
" ============================================================
" Enable alignment
" formatting
let g:neoformat_enabled_javascript = ['prettier']
let g:neoformat_enabled_html = ['prettier']
let g:neoformat_enabled_css = ['prettier']
let g:neoformat_enabled_python = ['black']

" Basic formatting
let g:neoformat_basic_format_align = 1

" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" ============================================================
" Jedi
" ============================================================
" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

" ============================================================
" Neomake
" ============================================================
let g:neomake_python_enabled_makers = ['flake8']
call neomake#configure#automake('nrwi', 500)

let g:highlightedyank_highlight_duration = 1000
colorscheme gruvbox
set background=dark " use dark mode
