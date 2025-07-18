local opt = vim.opt

--numbers
opt.number = true
opt.relativenumber = true

opt.clipboard:append("unnamedplus")
opt.wrap = false
opt.linebreak = true
opt.mouse = 'a'

opt.ignorecase = true
opt.smartcase = true


-- tabs
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.expandtab = true
opt.autoindent = true

opt.cursorline = true
opt.termguicolors = true
opt.signcolumn = "yes"


opt.backspace = "indent,eol,start"
opt.iskeyword:append("-")
