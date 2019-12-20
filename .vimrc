" Pathogen Plugin Manager
execute pathogen#infect()

" Don't try to be vi compatible
set nocompatible

" Turn on syntax highlighting
syntax on

" Show line numbers
set number

" Show file stats
set ruler

" Stop noise on error
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set textwidth=100
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set expandtab
" Change to 2 spaces for shell
autocmd Filetype sh setlocal tabstop=2 shiftwidth=2 softtabstop=2
" Match above indentation
set autoindent
set smartindent
" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Show matching brackets
set showmatch

" Hide buffers when they are abandoned
set hidden

" Map the <Space> key to toggle a selected fold opened/closed.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Cscope Plugin
source ~/.vim/plugins/cscope_maps.vim
