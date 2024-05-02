return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Main Utils
  use 'preservim/nerdtree'
  -- use 'lukas-reineke/indent-blankline.nvim'
  use 'tpope/vim-commentary'
  -- use {'neoclide/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile'}
  -- use {
  --     'VonHeikemen/lsp-zero.nvim',
  --     requires = {
  --         -- LSP Support
  --         {'neovim/nvim-lspconfig'},
  --         {'williamboman/mason.nvim'},
  --         {'williamboman/mason-lspconfig.nvim'},

  --         -- Autocompletion
  --         {'hrsh7th/nvim-cmp'},
  --         {'hrsh7th/cmp-buffer'},
  --         {'hrsh7th/cmp-path'},
  --         {'saadparwaiz1/cmp_luasnip'},
  --         {'hrsh7th/cmp-nvim-lsp'},
  --         {'hrsh7th/cmp-nvim-lua'},

  --         -- Snippets
  --         {'L3MON4D3/LuaSnip'},
  --         {'rafamadriz/friendly-snippets'},
  --     }
  -- }
  use 'edkolev/tmuxline.vim'
  -- LSP Utils
  use 'preservim/tagbar'
  -- use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  -- Git Utils
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'
  use {'rbong/vim-flog', branch = 'v1'}
  -- Fuzzy Finder
  -- use ('junegunn/fzf', {['do'] =  vim.fn['fzf#install']})
  -- use 'junegunn/fzf.vim'
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.2',
-- or                            , branch = '0.1.x',
                                   requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Aesthetic Plugins
  use 'vim-airline/vim-airline'
  use 'ryanoasis/vim-devicons'
  -- Colorscheme
  use 'tomasiser/vim-code-dark'
  use 'folke/tokyonight.nvim'                       
end)
