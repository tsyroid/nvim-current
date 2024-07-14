-- core/options.lua
-- Nvim options
-- See `:help vim.opt` or `:help option-list`

-- Make line numbers default and relative
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent and wrap
vim.opt.breakindent = true
vim.opt.wrap = true
vim.opt.linebreak = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or
-- more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'` and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- backspace
vim.opt.backspace = 'indent,eol,start' -- allow backspace on indent, end of line or insert mode start position

-- Preview substitutions
vim.opt.inccommand = 'split'

-- Turn off swapfile
vim.opt.swapfile = false

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 20

-- For markdown files in Obsidian
-- vim.opt.conceallevel = 1
vim.opt.conceallevel = 0

-- Ababreviations
-- Because I don't know how to integration my separate abbreviations.lua file into /config/
vim.cmd([[

inoreabbrev @@ tsyroid at gmail.com
inoreabbrev ccopy Copyright 2024 Tom Syroid, all rights reserved.

inoreabbrev Tdate <C-R>=strftime("%Y-%m-%d")<CR>
inoreabbrev Gdate <C-R>=strftime("%FT%T")<CR>
iabbrev DT <C-R>=strftime("%Y-%m-%d @ %H:%M")<CR>
iabbrev dt <C-R>=strftime("%a %b %d %Y %T %Z")<CR>

inoreabbrev tasko - [ ]
inoreabbrev taskc - [x]

inoreabbrev seperate separate
inoreabbrev definately definitely
inoreabbrev accomadate accommodate
inoreabbrev dont don't
inoreabbrev btw by the way
inoreabbrev im I'm
inoreabbrev youre you're

]])

-- vim: ts=2 sts=2 sw=2 et
