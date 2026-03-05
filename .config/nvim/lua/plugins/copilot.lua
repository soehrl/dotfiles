return {
    'github/copilot.vim',
    keys = {
        { '<C-J>', 'copilot#Accept("\\<CR>")', mode = 'i', expr = true, replace_keycodes = false, desc = 'Accept copilot suggestions'},
        { '<C-K>', 'copilot#Reject("\\<CR>")', mode = 'i', expr = true, replace_keycodes = false, desc = 'Reject copilot suggestions'},
        { '<C-L>', 'copilot#Skip("\\<CR>")', mode = 'i', expr = true, replace_keycodes = false, desc = 'Skip copilot suggestions'},
        { '<C-H>', 'copilot#Cancel("\\<CR>")', mode = 'i', expr = true, replace_keycodes = false, desc = 'Cancel copilot suggestions'},
        { '<C-D>', 'copilot#Delete("\\<CR>")', mode = 'i', expr = true, replace_keycodes = false, desc = 'Delete copilot suggestions'},
        { '<C-U>', 'copilot#Undo("\\<CR>")', mode = 'i', expr = true, replace_keycodes = false, desc = 'Undo copilot suggestions'},
        { '<C-R>', 'copilot#Redo("\\<CR>")', mode = 'i', expr = true, replace_keycodes = false, desc = 'Redo copilot suggestions'},
    },
    lazy = false,
    enabled = function()
        -- print(os.getenv("HOME"))
        return true
    end,
    ops = {},
    init = function()
        vim.g.copilot_no_tab_map = true
        vim.g.copilot_assume_mapped = true;
    end,
}
