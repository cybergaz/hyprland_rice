vim.cmd("autocmd!")

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- line numbers
vim.opt.relativenumber = true
vim.wo.number = true

-- tabs and indentation
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.breakindent = true
vim.opt.ai = true
vim.opt.si = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- line wrapping
vim.opt.wrap = true

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- backspace
vim.opt.backspace = "start,eol,indent"

-- appearance
--vim.opt.termguicolors = true
vim.opt.background = "dark"
--vim.opt.signcolumn = 'yes'

-- clipboard
vim.opt.clipboard:append("unnamedplus")

-- split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.iskeyword:append("-")

vim.opt.title = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.shell = "zsh"
vim.opt.backupskip = "/tmp/*,/private/tmp/*"

vim.opt.path:append({ "**" }) -- finding files recursively
vim.opt.wildignore:append({ "*/node_modules/*" }) -- ignoring node modules to be searched


-- -- persistent undo
-- vim.opt.undodir = '~/.local/state/nvim/undo/'
-- vim.opt.undofile = true
-- vim.opt.undolevels = 1009
-- vim.opt.undoreload = 10000
