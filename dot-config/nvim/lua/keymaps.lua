--- keymaps

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('i', 'jk', '<esc>', { noremap = true })
vim.keymap.set('i', 'JK', '<esc>', { noremap = true })


vim.keymap.set("n", '<Leader>o', 
	function() require('nvim-python-repl').open_repl() end, { desc = "Opens the REPL in a window split"})
vim.keymap.set("v", '<Leader>s', 
	function() require('nvim-python-repl').send_visual_to_repl() end, { desc = "Send visual selection to REPL"})
vim.keymap.set("n", '<Leader>b', 
	function() require('nvim-python-repl').send_buffer_to_repl() end, { desc = "Send entire buffer to REPL"})

vim.keymap.set("n", '<Leader>v', function() require('nvim-python-repl').toggle_execute() end, { desc = "Automatically execute command in REPL after sent"})
vim.keymap.set("n", '<Leader>t', function() require('nvim-python-repl').toggle_vertical() end, { desc = "Create REPL in vertical or horizontal split"})
