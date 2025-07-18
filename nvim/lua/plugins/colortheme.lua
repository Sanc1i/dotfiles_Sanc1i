local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

return {
    "Shatur/neovim-ayu",
    lazy = false,
    priority = 1000,
    config = function()
      require("ayu").setup({
        mirage = true,
        terminal = true,
        overrides = {},
      })
      vim.cmd("colorscheme ayu")
        enable_transparency()
    end
}