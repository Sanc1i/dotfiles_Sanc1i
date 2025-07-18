return {
    -- nvim-autopairs: Automatically close brackets, quotes, etc.
    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',                -- Load when entering insert mode
        opts = {
            check_ts = true,                  -- Integrate with treesitter
            ts_config = {
                lua = { 'string', 'source' }, -- Disable in certain lua contexts
                javascript = { 'string', 'template_string' },
            },
            disable_filetype = { 'TelescopePrompt', 'spectre_panel' }, -- Disable in Telescope
            fast_wrap = {
                map = '<M-e>',                                         -- Fast wrap keybinding
                chars = { '{', '[', '(', '"', "'" },
                pattern = [[\w%'%"\%)%>%]%)%}%,]],
                end_key = '$',
                keys = 'qwertyuiopzxcvbnmasdfghjkl',
            },
        },
        config = function(_, opts)
            require('nvim-autopairs').setup(opts)
            -- Optional: Integrate with nvim-cmp if you use it
            local cmp_status, cmp = pcall(require, 'cmp')
            if cmp_status then
                local cmp_autopairs = require('nvim-autopairs.completion.cmp')
                cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
            end
        end,
    },
    -- which-key.nvim: Display keybinding hints
    {
        'folke/which-key.nvim',
        event = 'VeryLazy',         -- Load after most plugins
        opts = {
            preset = 'modern',      -- Use modern preset for clean UI
            delay = 200,            -- Delay before showing popup (ms)
            win = {
                border = 'single',  -- Border style
                padding = { 1, 2 }, -- Padding around popup
            },
            spec = {
                { '<leader>f', group = 'File' },    -- Group for file-related keybindings
                { '<leader>h', group = 'Harpoon' }, -- Group for harpoon
                { '<leader>l', group = 'LSP' },     -- Group for LSP
            },
        },
        config = function(_, opts)
            local wk = require('which-key')
            wk.setup(opts)
            -- Register additional keybindings
            wk.add({
                { '<leader>ff', '<cmd>Telescope find_files<CR>', desc = 'Find Files' },
                { '<leader>fg', '<cmd>Telescope live_grep<CR>',  desc = 'Live Grep' },
            })
        end,
    },
}
