vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<D-s>', '<cmd> w <CR>', opts)

vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', opts)

