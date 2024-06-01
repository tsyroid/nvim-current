-- plugins/telescope-zoxide.lua
-- https://github.com/jvgrootveld/telescope-zoxide

return {
  'jvgrootveld/telescope-zoxide',
  enabled = true,

  dependencies = {
    'nvim-telescope/telescope.nvim',
  },

  keys = {
    { '<Leader>fz', '<CMD>Telescope zoxide list<CR>', { desc = 'Telescope Zoxide List' } },
  },

  config = function()
    require('telescope').load_extension('zoxide')
  end,
}
