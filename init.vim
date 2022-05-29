" Plug Install
call plug#begin()
" Plug Util
  Plug 'preservim/nerdtree'
  Plug 'tpope/vim-commentary'
  Plug 'vim-airline/vim-airline'
" Fuzzy Finder
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
" Tagbar
  Plug 'preservim/tagbar'
"  Plug 'universal-ctags/ctags'

" Plug Colorscheme
  Plug 'glepnir/oceanic-material'
call plug#end()

" Setter Config
set number
set relativenumber
set autoindent
set shiftwidth=4
set mouse=a
" Setter Colorscheme
set background=dark
colorscheme oceanic_material


" Remap Key
nnoremap <SPACE> <Nop>
let mapleader=' '

" Shortcut Key
" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Universal
nnoremap <leader>/ :noh<CR>

" Formatter Airline
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
