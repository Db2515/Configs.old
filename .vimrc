" Pathogen Plugin Manager
execute pathogen#infect()
filetype plugin on

" Dont try to be vi compatible
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
" Change colour of indent line
let g:indentLine_color_term = 239

" NERD Commenter config
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" YouCompleteMe config
" Close preview after insertion
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_filetype_specific_completion_to_disable = {
        \ 'gitcommit': 1
        \}

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
