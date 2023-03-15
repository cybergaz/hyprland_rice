-- souce : https://github.com/nvim-treesitter/nvim-treesitter

local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	print("somethinnnn wrong with the treesitter")
	return
end

treesitter.setup({
	highlight = {
		enable = true,
	},
	indent = { enable = true },
	autotag = { enable = true },
	ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"tsx",
		"html",
		"css",
		"markdown",
		"bash",
		"lua",
		"gitignore",
		"nix",
		"python",
		"java",
		"rust",
		-- "r",
	},
	auto_install = true,
})
