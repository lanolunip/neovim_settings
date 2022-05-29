" Plug Install
call plug#begin()
" Plug Util
  Plug 'preservim/nerdtree'
  Plug 'tpope/vim-commentary'
  Plug 'vim-airline/vim-airline' 
  Plug 'junegunn/fzf.vim' 
  Plug 'preservim/tagbar'

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

" Formatter Airline
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
