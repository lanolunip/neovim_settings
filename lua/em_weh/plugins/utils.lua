return {
  -- Main Utils
  'preservim/nerdtree',
  'tpope/vim-commentary',
  'edkolev/tmuxline.vim',
  {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.8',
  -- or                            , branch = '0.1.x',
        dependencies = {'nvim-lua/plenary.nvim'},
  },
  'preservim/tagbar',
}
