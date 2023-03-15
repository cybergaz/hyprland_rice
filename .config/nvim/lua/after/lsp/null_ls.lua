-- souce : https://github.com/jay-babu/mason-null-ls.nvim 
-- and  :  https://github.com/jose-elias-alvarez/null-ls.nvim 


local setup, null = pcall(require, "null-ls")
if not setup then
	print("something wrong with null ls")
	return
end


local formatting = null.builtins.formatting
local diagnostics = null.builtins.diagnostics
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null.setup({
	sources = {
		formatting.prettier,
		formatting.stylua,
		diagnostics.eslint_d,
	},

	-- for formatting on saving ..

	-- on_attach = function(current_client, bufnr)
	-- 	if current_client.supports_method("textDocument/formatting") then
	-- 		vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
	-- 		vim.api.nvim_create_autocmd("BufWritePre", {
	-- 			group = augroup,
	-- 			buffer = bufnr,
	-- 			callback = function()
	-- 				vim.lsp.buf.format({
	-- 					filter = function(client)
	-- 						return client.name == "null-ls"
	-- 					end,
	-- 					bufnr = bufnr,
	-- 				})
	-- 			end,
	-- 		})
	-- 	end
	-- end,
})
