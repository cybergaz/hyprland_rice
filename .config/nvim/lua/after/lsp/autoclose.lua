-- souce : https://github.com/windwp/nvim-autopairs

local status, autoclose = pcall(require,"nvim-autopairs")
if not status then
	print("somethinnnn wrong with the autopairs")
	return
end

autoclose.setup({
	check_ts = true,
	ts_config = {
		lua = { "string" }, -- don't add pairs in lua string treesitter nodes
		javascript = { "template_string" }, --  don't add pairs in js template_string
		java = false,
	},
})

local status2, cmp_autopairs = pcall(require,"nvim-autopairs.completion.cmp")
if not status2 then
	print("somethinnnn wrong with the cmp_autopairs")
	return
end

local status3, cmp = pcall(require,"cmp")
if not status3 then
	print("somethinnnn wrong with the cmp ( inside autoclose )")
	return
end

cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
-- default values..
-- local disable_filetype = { "TelescopePrompt" }
-- local disable_in_macro = false  -- disable when recording or executing a macro
-- local disable_in_visualblock = false -- disable when insert after visual block mode
-- local disable_in_replace_mode = true
-- local ignored_next_char = [=[[%w%%%'%[%"%.%`%$]]=]
-- local enable_moveright = true
-- local enable_afterquote = true  -- add bracket pairs after quote
-- local enable_check_bracket_line = true  --- check bracket in same line
-- local enable_bracket_in_quote = true --
-- local enable_abbr = false -- trigger abbreviation
-- local break_undo = true -- switch for basic rule break undo sequence
-- local check_ts = false
-- local map_cr = true
-- local map_bs = true  -- map the <BS> key
-- local map_c_h = false  -- Map the <C-h> key to delete a pair
-- local map_c_w = false -- map <c-w> to delete a pair if possible
