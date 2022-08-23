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
  Plug 'universal-ctags/ctags'

" Plug Colorscheme
  Plug 'glepnir/oceanic-material'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug Devicons
  Plug 'ryanoasis/vim-devicons'
" Plug LSPCONFIG  
  Plug 'neovim/nvim-lspconfig'
" Plug Indent Blankline
  Plug 'lukas-reineke/indent-blankline.nvim'
" Plug Vim Fugitive
  Plug 'tpope/vim-fugitive'
call plug#end()

" Setter Config
set encoding=utf-8
set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set cursorline
set mouse=a
set clipboard+=unnamedplus
set ignorecase

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
nnoremap <leader>f :NERDTreeFind<CR>

" COC
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <c-@> coc#refresh()

" Tagbar
nmap <F8> :TagbarToggle<CR>

" FuzzyFinder
nnoremap <leader>p :Files<CR>

" Universal
nnoremap <leader>/ :noh<CR>

" Formatter Airline
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif
