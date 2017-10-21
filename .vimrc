set nocompatible    " required
filetype off        " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" 3rd-party plugins
Plugin 'tpope/vim-fugitive'

" Git +/- in the number gutter
Plugin 'airblade/vim-gitgutter'

Plugin 'scrooloose/nerdtree'

" Autocompletion
Plugin 'Valloric/YouCompleteMe'

" Code search
Plugin 'mileszs/ack.vim'

" Async lint engine
Plugin 'w0rp/ale'

" Lightline
Plugin 'itchyny/lightline.vim'

" 100+ langauge pack
Plugin 'sheerun/vim-polyglot'

" Fuzzy finder that uses fzf command
Plugin 'junegunn/fzf.vim'

" Easy commenting
Plugin 'tpope/vim-commentary'

call vundle#end()

"
" Core Configuration
"

filetype plugin indent on

" syntax highlighting
syntax on
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let mapleader = ","

" Quick ctag generation
nnoremap <leader>c :!ctags -R<cr>

" Quick close bottom window
nnoremap \x :cclose<cr>

" copy to system buffer
set clipboard=unnamed

" Do not comment about insert mode at the bottom
set noshowmode

"
" Plugin Configuration
"

" FZF config
set rtp+=/usr/local/opt/fzf
nnoremap ; :Buffers<cr>
nnoremap <leader>r :Files<cr>
nnoremap <leader>t :Tags<cr>

" Ack.vim config
" Use ag for Ack.vim
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif
nnoremap <leader>a :Ack 

" vim gitgutter config
let g:gitgutter_sign_added = '•'
let g:gitgutter_sign_modified = '•'
let g:gitgutter_sign_removed = '•'
let g:gitgutter_sign_removed_first_line = '•'
let g:gitgutter_sign_modified_removed = '•'


" NerdTree configuration
" NerdTree activation shortcut
nnoremap <leader>n :NERDTreeToggle<cr>

" don't put backup files in these paths
set backupskip=/tmp/*,/private/tmp/*" 

" turn on line numbers
set number

" set search highlighting, clear with leader-/
set hlsearch
nnoremap <leader>/ :noh<CR>

set directory=$HOME/.vim/tmp/swap
if !isdirectory(&directory) | call mkdir(&directory, 'p', 700) | endif

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

let g:ale_linters = {'python': ['flake8']}

" YouCompleteMe settings
let g:ycm_python_binary_path = 'python'
nnoremap gd :YcmCompleter GoTo<cr>
nnoremap gt :YcmCompleter GetType<cr>
nnoremap gr :YcmCompleter GoToReferences<cr>

" Lightline settings
let g:lightline = {
    \ 'colorscheme': 'solarized'
    \ }
set laststatus=2
