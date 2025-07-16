return {
  -- Ayu Theme
  {
    "Shatur/neovim-ayu",
    lazy = false,
    priority = 1000,
    config = function()
      require("ayu").setup({
        mirage = true,
      })
      vim.cmd("colorscheme ayu-mirage")
    end,
  },

  -- Dashboard with Frog image
  {
    "glepnir/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require('dashboard').setup {
        theme = 'doom',
        config = {
          header = {
      "((-)).--.((-))",
      "/     ''     \\",
     "(    ------    )",
     "\\            /",
     "/ /~      ~\\ \\",
"/~~\\/ /          \\ \\/~~\\",
"(   ( (            ) )   )",
"\\ \\ \\ \\          / / / /",
"_\\ \\/  \\.______./  \\/ /_",
"}___//||\\\\      //||\\\\___{",
"    `  ` `      ' '  '",
            "",
            " Welcome to Neovim 🐸",
          },
          center = {
            { icon = '  ', desc = 'New File', action = 'enew', key = 'n' },
            { icon = '  ', desc = 'Find File', action = 'Telescope find_files', key = 'f' },
            { icon = '  ', desc = 'Quit NVIM', action = 'qa', key = 'q' },
          },
          footer = { "github.com/your-username" },
        },
      }
    end
  },

  -- Telescope (optional but useful for file finding)
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
}
