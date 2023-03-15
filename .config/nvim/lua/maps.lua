local keymap = vim.keymap
--local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-- Leader key
vim.g.mapleader = " "

-- format
-- keymap.set( {mode} , {OnKey} ,{Action} )

keymap.set({ "i", "v" }, "jk", "<ESC>", { silent = true })
--keymap.set({'i','v'}, '<leader>jj','<ESC>',{silent = true})

-- do not yank with x
keymap.set("n", "x", '"_x')
keymap.set("n", "c", '"_c')

-- select all
keymap.set({ "i", "n" }, "<C-a>", "<ESC>gg<S-v>G")

-- tab settings
keymap.set({ "n" }, "tt", "<ESC>:tabnew<Return>", { silent = true })
keymap.set({ "n" }, "<leader>ww", "<ESC>:BufferClose<Return>", { silent = true })
keymap.set({ "i", "v", "n" }, "<C-w>", "<Esc>:BufferClose!<Return>", { silent = true })
keymap.set({ "n" }, "tn", "<ESC>:BufferNext<Return>")
keymap.set({ "n" }, "te", "<ESC>:BufferPrevious<Return>")
keymap.set({ "n" }, "ta", "<ESC>:BufferCloseAllButCurrentOrPinned<Return>")
keymap.set({ "n" }, "tp", "<ESC>:BufferPin<Return>")

-- comment and all
--keymap.set({'i','v','n'},'ff','<ESC><S-v>')

-- split window
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sw", ":close<CR>")
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim tree file explorer
keymap.set({ "n" }, "<leader>ee", "<ESC>:NvimTreeToggle<CR>")
-- keymap.set({ "i", "n" }, "<C-e>", "<ESC>:NvimTreeToggle<CR>")

-- clear sesrch
keymap.set({ "n" }, "<leader>cls", ":nohlsearch<CR>")

-- telescope
keymap.set({ "n" }, "<leader>ff", ":Telescope find_files<CR>")
keymap.set({ "n" }, "<leader>fg", ":Telescope live_grep<CR>")
keymap.set({ "n" }, "<leader>fe", ":Telescope file_browser<CR>")

-- arrow keys disable
keymap.set({ "i", "n", "v" }, "<Up>", '<ESC>:lua print "Na Vro Na , I can\'t let this happen"<CR>')
keymap.set({ "i", "n", "v" }, "<Down>", '<ESC>:lua print "Na Vro Na , I can\'t let this happen"<CR>')
keymap.set({ "i", "n", "v" }, "<Left>", '<ESC>:lua print "Na Vro Na , I can\'t let this happen"<CR>')
keymap.set({ "i", "n", "v" }, "<Right>", '<ESC>:lua print "Na Vro Na , I can\'t let this happen"<CR>')
keymap.set({ "i", "n", "v" }, "<ESC>", '<ESC>:lua print "Na Vro Na , I can\'t let this happen"<CR>i')

-- hop search
keymap.set({ "i", "n", "v" }, "sf", "<ESC>:HopChar2<CR>")
keymap.set({ "n" }, "ss", ":HopChar1<CR>")
keymap.set("n", "S", ":HopAnywhere<CR>")

-- operation on selected text
keymap.set({ "n", "v" }, "mm", ":'<,'>norm ")

-- visual block mode
keymap.set({ "n", "v" }, "<space>v", "<C-v>")

-- code formatting using prettier and all
keymap.set("n", "==", ":lua vim.lsp.buf.format()<CR>")
