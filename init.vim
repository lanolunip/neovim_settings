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
  " Plug 'universal-ctags/ctags'

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
set termguicolors

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

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
