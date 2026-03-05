-- Map replace keybindings
vim.keymap.set('n', 'R', '"_Dp')
vim.keymap.set('n', 'rw', '"_dwP')
vim.keymap.set('n', 'riw', '"_diwP')
vim.keymap.set('n', 'ri(', '"_di(P')
vim.keymap.set('n', 'ri[', '"_di[P')
vim.keymap.set('n', 'ri{', '"_di{P')
vim.keymap.set('n', 'ri<', '"_di<P')
vim.keymap.set('n', 'ri\'', '"_di\'P')
vim.keymap.set('n', 'ri"', '"_di"P')
vim.keymap.set('n', 'ri`', '"_di`P')

-- Keep selection after indenting
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')

-- Move lines
vim.keymap.set('n', 'J', ':m +1<CR>==')
vim.keymap.set('n', 'K', ':m -2<CR>==')
vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv')

-- Quick fix list
vim.keymap.set('n', '<Leader>qq', ':copen<CR>')
vim.keymap.set('n', '<Leader>qc', ':cclose<CR>')
vim.keymap.set('n', '<Leader>qj', ':cnext<CR>')
vim.keymap.set('n', '<Leader>qk', ':cprev<CR>')

-- Navigation
vim.keymap.set('n', '<Leader>w', 'w :bd<CR>')

-- LSP
vim.keymap.set('n', '<Leader>le', function() vim.diagnostic.open_float() end)
vim.keymap.set('n', '<Leader>lf', function() vim.lsp.buf.format({ async = true }) end)
vim.keymap.set('n', '<Leader>la', function() vim.lsp.buf.code_action() end)
vim.keymap.set('n', '<Leader>ld', function() vim.lsp.buf.hover() end)
vim.keymap.set('n', '<Leader>lr', function() vim.lsp.buf.rename() end)
