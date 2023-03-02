local status,hop = pcall(require,"hop")
if not status then
    print " there is some problem with hop "
    return
end

local directions = require('hop.hint').HintDirection

hop.setup()
-- vim.keymap.set('n', 's', function()
--   hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = false })
-- end, {remap=true})
-- vim.keymap.set('n', 'S', function()
--   hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = false })
-- end, {remap=true})
