local Plug = vim.fn['plug#']

vim.call('plug#begin')
-- Utils
  Plug('preservim/nerdtree')
  Plug('lukas-reineke/indent-blankline.nvim')
  Plug('tpope/vim-commentary')
  Plug('neoclide/coc.nvim', { branch = 'release' })
  Plug('edkolev/tmuxline.vim')
-- LSP Utils
  Plug('neovim/nvim-lspconfig')
  -- Tagbar
  -- Install 'universal-ctags/ctags' to the machine
  -- export ctags bin to PATH or set manually via g['tagbar_ctags_bin'] /
  -- g.tagbar_ctags_bin = "usr/local/bin/ctags"
  Plug('preservim/tagbar')
  Plug('nvim-treesitter/nvim-treesitter', {['do'] = [['<CMD>TSUpdate']]})
-- Git Utils
  Plug('tpope/vim-fugitive')
  Plug('airblade/vim-gitgutter')
  Plug('rbong/vim-flog')
-- Fuzzy Finder
  Plug('junegunn/fzf', {['do'] =  vim.fn['fzf#install']})
  Plug 'junegunn/fzf.vim'
-- Colorscheme
  Plug('glepnir/oceanic-material')
  Plug('tomasiser/vim-code-dark')
-- Aesthetic Plugins
  Plug('vim-airline/vim-airline')
  Plug('ryanoasis/vim-devicons')

vim.call('plug#end')
