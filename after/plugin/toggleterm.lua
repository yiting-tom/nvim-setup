vim.keymap.set('t', '<esc>', [[<C-\><C-n>]])
vim.keymap.set("n", "<leader>P", ":ToggleTerm<CR>", {silent = true})
vim.keymap.set("n", "<leader>p", ":ToggleTerm size=60 direction=vertical<CR>", {silent = true})
vim.keymap.set("v", "<leader>e", ":ToggleTermSendVisualLines<CR>", {silent = true})
