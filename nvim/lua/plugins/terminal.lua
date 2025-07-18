return {
    'akinsho/toggleterm.nvim',
    version = '*',
    event = 'VeryLazy',
    opts = {
        size = 15,                -- Height for horizontal split
        open_mapping = [[<C-t>]], -- Toggle terminal with Ctrl+t
        shade_terminals = true,
        direction = 'horizontal', -- Default split direction
        float_opts = {
            border = 'curved',
        },
    },
    config = function(_, opts)
        require('toggleterm').setup(opts)
        -- Keybindings for which-key
        local wk = require('which-key')
        wk.add({
            { '<leader>tt', '<cmd>ToggleTerm<CR>',                              desc = 'Toggle Terminal' },
            { '<leader>tv', '<cmd>ToggleTerm direction=vertical size=40<CR>',   desc = 'Vertical Terminal' },
            { '<leader>tf', '<cmd>ToggleTerm direction=float<CR>',              desc = 'Float Terminal' },
            { '<leader>th', '<cmd>ToggleTerm direction=horizontal size=10<CR>', desc = 'Horizontal Terminal' }
        })
        -- Exit terminal mode with <Esc>
        vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })
    end,
}
