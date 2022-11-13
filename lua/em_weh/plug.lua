local Plug = vim.fn['plug#']

vim.call('plug#begin', '$HOME/AppData/Local/nvim-data/plugged')
-- Plug Util
  Plug 'preservim/nerdtree'
  Plug 'tpope/vim-commentary'
  Plug 'vim-airline/vim-airline'
-- Fuzzy Finder
  Plug('junegunn/fzf', {['do'] =  vim.fn['fzf#install']})
  Plug 'junegunn/fzf.vim'
-- Tagbar
  Plug 'preservim/tagbar'
-- " Plug 'universal-ctags/ctags'

-- Plug Colorscheme
  Plug 'glepnir/oceanic-material'
  Plug('neoclide/coc.nvim', { branch = 'release' })
-- Plug Devicons
  Plug 'ryanoasis/vim-devicons'
-- Plug LSPCONFIG  
  Plug 'neovim/nvim-lspconfig'
-- Plug Indent Blankline
  Plug 'lukas-reineke/indent-blankline.nvim'
-- Plug Vim Fugitive
  Plug 'tpope/vim-fugitive'
-- Plug Vim Gitgutter
  Plug 'airblade/vim-gitgutter'

vim.call('plug#end')
