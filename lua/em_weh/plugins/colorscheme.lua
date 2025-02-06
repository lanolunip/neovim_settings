return {
  -- Colorscheme
  {
      'tomasiser/vim-code-dark',
      priority = 1000,
      config = function()
        vim.cmd([[colorscheme codedark]])
      end
  },
  'folke/tokyonight.nvim',
}
