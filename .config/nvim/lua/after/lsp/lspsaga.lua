local status, saga = pcall(require , "lspsaga")
if not status then
    print "something wrong with lspsaga"
    return
end

saga.setup()
-- saga.init_lsp_saga({
--     move_in_saga = { prev= "<Tab>", next = "<S-Tab>" },
--     finder_action_keys = {
--         open = "<CR>",
--     },
--     definition_action_keys = {
--         edit = "<CR>",
--     },
-- })
