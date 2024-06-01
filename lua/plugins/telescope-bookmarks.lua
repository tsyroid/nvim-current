-- plugins/telescope-bookmarks.lua
-- https://github.com/dhruvmanila/browser-bookmarks.nvim

return {
  'dhruvmanila/browser-bookmarks.nvim',
  enabled = true,
  version = '*',
  opts = {
    -- override default (Chrome)
    selected_browser = 'brave',
  },

  dependencies = {
    'nvim-telescope/telescope.nvim',
  },

  keys = {
    { '<leader>bb', '<CMD>:Telescope bookmarks<CR>', { desc = 'Search Brave Bookmarks' } },
  },

  config = function()
    require('telescope').load_extension('bookmarks')
  end,
}
