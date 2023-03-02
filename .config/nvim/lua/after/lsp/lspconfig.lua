-- souce : https://github.com/neovim/nvim-lspconfig 
-- and : https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md 
local status1, lspconf = pcall(require, "lspconfig")
if not status1 then
	print("something wring with lspconfig")
	return
end

local status2, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status2 then
	print("something wring with cmp_nvim_lsp")
	return
end

local status3, typescript = pcall(require, "typescript")
if not status3 then
	print("something wring with typescript")
	return
end

local keymap = vim.keymap

-- enable keybinds for available lsp servers

local on_attach = function(client, bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }

	-- keybinds
	keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts)
	keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts)
	keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	keymap.set("n", "<space>ca", "<cmd>Lspsaga code_action<CR>", opts)
	keymap.set("n", "<space>rn", "<cmd>Lspsaga rename<CR>", opts)
	keymap.set("n", "<space>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
	keymap.set("n", "<space>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
	keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
	keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
	keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
	keymap.set("n", "<space>o", "<cmd>LSoutlineToggle<CR>", opts)

	if client.name == "tsserver" then
		keymap.set("n", "<space>rf", ":TypescriptRenameFile<CR>")
	end
end

-- to enable autocompletion

local cap = require("cmp_nvim_lsp").default_capabilities()

lspconf["html"].setup({
	capabilities = cap,
	on_attach = on_attach,
})

typescript.setup({
	server = {
		capabilities = cap,
		on_attach = on_attach,
        cmd = { "typescript-language-server", "--stdio" }
	},
})

lspconf["cssls"].setup({
	capabilities = cap,
	on_attach = on_attach,
})

lspconf["tailwindcss"].setup({
	capabilities = cap,
	on_attach = on_attach,
})

lspconf["sumneko_lua"].setup({
	capabilities = cap,
	on_attach = on_attach,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
})

lspconf["rust_analyzer"].setup({
	capabilities = cap,
	on_attach = on_attach,
})

lspconf.jedi_language_server.setup({
	capabilities = cap,
	on_attach = on_attach,
})

-- lspconf.pylsp.setup({
--     capabilities = cap,
--     on_attach = on_attach,
--     settings = {
--     pylsp = {
--       plugins = {
--
--         flake8 = {
--           enabled = true,
--         },
--         mypy = {
--           enabled = true,
--         },
--         pycodestyle = {
--           enabled = false,
--         },
--         pyflakes = {
--           enabled = false,
--         },
--
--       }
--     }
--   }
-- })

-- lspconf["jdtls"].setup({
--     capabilities = cap,
--     on_attach = on_attach
-- })
