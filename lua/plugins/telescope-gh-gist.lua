-- plugins/telescope-github.lua
-- https://github.com/nvim-telescope/telescope-github.nvim

-- Awesome (simple) entry to Gists
-- `Telescope gh gist`

return {
  'nvim-telescope/telescope-github.nvim',
  enabled = true,
  event = 'VeryLazy',

  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
  },

  keys = {
    { '<leader>gg', "<cmd>lua require('telescope').extensions.gh.gist()<cr>", { desc = 'Github Gists' } },
  },

  config = function()
    require('telescope').load_extension('gh')
  end,
}
