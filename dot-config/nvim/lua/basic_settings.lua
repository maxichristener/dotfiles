-- BASIC SETTINGS ---
vim.cmd('colorscheme wildcharm')
vim.g.have_nerd_font = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.clipboard = 'unnamedplus' ---share clipboard with the system
vim.opt.breakindent = true
vim.opt.ignorecase = true --- case ins search
vim.opt.smartcase = true  --- case ins search
vim.opt.incsearch = true   --- increase searching
vim.opt.inccommand = 'split'
vim.opt.hlsearch = true --- highlight search
vim.opt.spelllang = 'es'
vim.opt.updatetime = 250

vim.opt.list = true ---nvim special character showing
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.laststatus = 0 -- status bar
vim.opt.title = true

vim.opt.splitright = true
vim.opt.splitbelow = true

