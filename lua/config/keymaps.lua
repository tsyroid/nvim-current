-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }

-- shorten function name
local keymap = vim.keymap.set

-- my go-tos
-- Set highlight on search, but clear on pressing <Esc> in normal mode
-- vim.opt.hlsearch = true
-- keymap('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Select complete document
keymap('n', '<C-a>', 'ggVG', opts)

-- Resize window with +/-
keymap('n', '-', '<C-w>5<', opts)
keymap('n', '+', '<C-w>5>', opts)

-- `jj` to exit insert mode without hitting Esc
keymap('i', 'jj', '<Esc>', opts)

-- 'jk' to insert a task prefix: '- [ ] '
-- Note: This really should be an abbreviation...
-- keymap('i', 'kk', '- [ ] ', opts)
-- NOTE: Added to abbreviations in config/options.lua,
-- but keeping this here for now...

-- keep indents active
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- Move lines up/down
keymap('v', 'K', ":m '>-2<CR>gv=gv", { desc = 'Move current line up' })
keymap('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move current line down' })

-- 'H'/'L' to jump start/end of line
keymap('n', 'H', '^', { desc = 'Move cursor to start (first char) of line' })
keymap('n', 'L', '$', { desc = 'Move cursor to end (last char) of line' })

-- Obsidian mappings
keymap('n', '<leader>on', '<cmd>ObsidianNew<cr>', { desc = 'New Obsidian Note' })
keymap('n', '<leader>oo', '<cmd>ObsidianOpen<cr>', { desc = 'Open Obsidian Vault' })
keymap('n', '<leader>oS', '<cmd>ObsidianSearch<cr>', { desc = 'Search Obsidian Notes' })
keymap('n', '<leader>oq', '<cmd>ObsidianQuickSwitch<cr>', { desc = 'Obsidian Quick Switch' })
keymap('n', '<leader>ot', '<cmd>ObsidianToday<cr>', { desc = 'Daily Note: Today' })
keymap('n', '<leader>oT', '<cmd>ObsidianTomorrow<cr>', { desc = 'Daily Note: Tomorrow' })
keymap('n', '<leader>oy', '<cmd>ObsidianYesterday<cr>', { desc = 'Daily Note: Yesterday' })

keymap('n', '<leader>os', ':Telescope find_files search_dirs={"~/KB"}<cr>', { desc = 'Telescope: Search KB' })
-- stylua: ignore
keymap('n', '<leader>om', ':!mv % /Users/taz/KB/@INBOX<cr>:bd<cr>', { desc = 'Move file in current buffer to KB/@INBOX' })

-- Telescope (custom) - Find Files in ~/KB/ directory
-- stylua: ignore
keymap('n', '<leader>fv', function() require('telescope.builtin').find_files({ cwd = '~/KB/' }) end, { desc = 'Find files KB directory' })

-- Codeium
-- From: https://github.com/omerxx/dotfiles/blob/master/nvim/lua/plugins/lazy.lua
-- stylua: ignore start
keymap('i', '<C-e>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
keymap('i', '<C-n>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
keymap('i', '<C-p>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
keymap('i', '<C-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })

-- keymap('n', '-', '<CMD>Oil --float<CR>', { desc = 'Open parent directory' })
-- stylua: ignore end
