local status, var = pcall(require,"nvim-tree")

if not status then 
  print "nvim-tree not installed"
  return
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- vim.opt.termguicolors = true

var.setup({
  open_on_setup = false,
  open_on_setup_file = false,
  open_on_tab = true,

})
