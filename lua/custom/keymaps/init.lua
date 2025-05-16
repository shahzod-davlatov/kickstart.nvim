-- vim.keymap.set('n', '<leader>cf', '<cmd>EslintFixAll<CR> | <cmd>w<CR>', { desc = 'ESLint Fix All', silent = true })
vim.keymap.set('n', '<leader>cf', 'mF:%!eslint_d --stdin --fix-to-stdout --stdin-filename %<CR>`F | <cmd>w<CR>', { desc = 'ESLint Fix All', silent = true })

vim.keymap.set('n', '<leader>tg', '<cmd>Neogit<CR>', { silent = true, desc = 'Neogit' })

vim.keymap.set('n', 'grs', ':vsplit | lua vim.lsp.buf.definition()<CR>', { silent = true, desc = '[G]oto [D]efinition [V]ertical [S]plit' })
vim.keymap.set('n', 'grS', ':split | lua vim.lsp.buf.definition()<CR>', { silent = true, desc = '[G]oto [D]efinition [H]orizontal [S]plit' })
