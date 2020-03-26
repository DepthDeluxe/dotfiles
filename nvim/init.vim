call plug#begin('~/.nvim/plug')

" color theme
Plug 'AlessandroYorba/Sierra'

" Code search
Plug 'junegunn/fzf'

" File browser
Plug 'scrooloose/nerdtree'

" VS language server
Plug 'neoclide/coc.nvim'

" Tagbar, code browsing, summary support
Plug 'majutsushi/tagbar'

" Bottom bar support
Plug 'vim-airline/vim-airline'

" 100+ langauge pack
Plug 'sheerun/vim-polyglot'

" Git +/- in the number gutter
Plug 'airblade/vim-gitgutter'

call plug#end()

" Add numbers to the left side
set number

" Line ending configuration
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set expandtab
set cursorline

" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let mapleader=","

" Use system clipboard by default
set clipboard=unnamed

" Do not comment about insert mode at the bottom
set noshowmode

"
" nvim plugin configuration
"

" Sierra, theme configuration
colorscheme sierra
let g:sierra_Sunset = 1

" vim gitgutter config
let g:gitgutter_sign_added = '•'
let g:gitgutter_sign_modified = '•'
let g:gitgutter_sign_removed = '•'
let g:gitgutter_sign_removed_first_line = '•'
let g:gitgutter_sign_modified_removed = '•'

" NerdTree configuration
" NerdTree activation shortcut
nnoremap <leader>n :NERDTreeToggle<cr>

" Tagbar shortcuts
nnoremap <leader>b :TagbarToggle<cr>