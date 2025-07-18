return {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- icons for buttons
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- 🐸 Frog ASCII Art Header
        dashboard.section.header.val = {
            "                     :.-:.:...                       .::-.:.:                   ",
            "                    .=+-+===+==                     .==+=*++=-                  ",
            "                 =:=:        .=-=-               -::.         ===.              ",
            "                +:-+=+=++-+=+-+++++=+-=++++++++:++*++*=+++++=+++++:             ",
            "                : .:          .==+.==:+=:+=+:+.++:.:-.        .-= .             ",
            "                .++=    +=     .==+.==:+=:+=+:+.++:--   ..    ++:=:             ",
            "                -=-     .      :.-===:=+-.=+=+-==.==    +*     -+=:             ",
            "                =++            ==+*=*+=+=*++==+===+-           ++=-             ",
            "               *-==*=-        ====+=====++===**==--=+=       :=-=-:             ",
            "             ==*=+-+:--+=-+:+=+-:+=+====-+-+.*+++=+==**==:=*+-=++===++          ",
            "            :..:=.::..:-:.:-:.=-.-:   -=:=::   .::::-:...:..:..::.::-=.         ",
            "          -=+++-=+=+=-+:=+++.:=:-++   *+-*=-   +:+-:++++=:++==-=*+=-=*:==       ",
            "          =+**=+++-**+=**-*++-*++=*+=++*****++*+=+=*+*++++*=*+++**=*++++:       ",
            "          =  ...:::-.. :. ..:.:....:....:.:.-.-**:..=.  . ::.+++*.-..:=:.       ",
            "          ==*--#:+                                               =+*:-:=-       ",
            "          -=*+=*=+  +#+=+++:*+*-***=***++*+**++*++=**+*+**+**:*  +**++=+-       ",
            "            .:.--: ---.-::.::::::-=-..:-.-::+:-::-::-+:--=---.:-=-:::=.         ",
            "              .*.:++:*+-++*:*=++++*=*=*==**=*+*=*+*=*-**--++*:+**=++=           ",
            "               **+=++*+*+=*++-*++=***=**++*+***+*+*+*++*+*+-=*=+++-+            ",
            "                   -=..:=.=: . . .=  :=-..:: .:.+:*.  ..+-:::-.:                ",
            "               *     .+-++*:*=*-+**-+===+-*-+:*----=*==+:--+*.    +:            ",
            "            **:#            *-##*+**+-##*#*+#*+#*#=##**           **-*=         ",
            "         .     :       :::-                            .:-.:      :.     .      ",
            "       :       #        :=#=+-*=**+-++#:##*.#**+=-*+****=*:       :+      .+    ",
            "     :.       .*          ++*:*++=#**+       ++****+*#***         ++        -   ",
            "    =.           ----++     =-*=+-*+          -=*=+:+-=      -:---          ::  ",
            "    -.              .        =+:+**.+-       :+*-:+-*:       -               :  ",
            "    +              -          ***+#**=+     **+****+           -             :: ",
            "   .                |           ::-=-:       =.-==           ::                =",
            "   +                 +:          *+:--       -+*-.          *                  -",
            "   .                   ..         ::           -.         ..                   -",
            "   +                     +.         .-       .+          -                     =",
            "   *                      :-                .+        :*                       +",
            "   =           -             .         -   .        .              :           :",
            "  .+          --               --       ::+       .-               =           +",
            "",
            "                                Welcome to FroggoVim 🐸                            ",
        }

        dashboard.section.header.opts.hl = "AlphaHeader"

        -- 📄 Interactive Buttons
        dashboard.section.buttons.val = {
            dashboard.button("e", "📄  New File", ":ene <BAR> startinsert <CR>"),
            dashboard.button("f", "🔍  Find File", ":Telescope find_files<CR>"),
            dashboard.button("r", "🕘  Recent Files", ":Telescope oldfiles<CR>"),
            dashboard.button("s", "⚙️  Settings", ":edit $MYVIMRC<CR>"),
            dashboard.button("q", "❌  Quit", ":qa<CR>")
        }

        -- 🔢 Footer with version
        local v = vim.version()
        dashboard.section.footer.val = {
            "",
            string.format("Neovim v%d.%d.%d", v.major, v.minor, v.patch),
            "Sanc1i",
        }

        -- Optional: no autocmds interfering
        dashboard.opts.opts.noautocmd = true
        dashboard.config.layout = {
            -- Remove or reduce padding here
            { type = "padding", val = 0 }, -- Set this to 0 or small number to reduce top space
            dashboard.section.header,
            { type = "padding", val = 1 },
            dashboard.section.buttons,
            { type = "padding", val = 1 },
            dashboard.section.footer,
        }
        vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#00d700" })
        -- 🚀 Setup Alpha with dashboard
        alpha.setup(dashboard.config)
    end,
}
