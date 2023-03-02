local status, telescope = pcall(require, "telescope")
if not status then
	print("something wrong with telescope")
	return
end

telescope.setup({
    defaults = { file_ignore_patterns = {"node_modules"} },
	extensions = {
		file_browser = {
			-- theme = "ivy",
			-- disables netrw and use telescope-file-browser in its place
			hijack_netrw = true,
			mappings = {
				["i"] = {
					-- your custom insert mode mappings
				},
				["n"] = {
					-- your custom normal mode mappings
				},
			},
            hidden = true,
		},
	},
})

telescope.load_extension("file_browser")
