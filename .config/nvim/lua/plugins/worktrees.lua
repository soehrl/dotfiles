return {
    'Juksuu/worktrees.nvim',
    opts = {
    },
    init = function()
        require('telescope').load_extension('worktrees')
    end,
    keys = {
        {
            '<leader>gwl',
            function()
                require("telescope").extensions.worktrees.list_worktrees({})
            end,
            desc = 'Show git worktrees',
        },
        {
            '<leader>gwc',
            function()
                require("worktrees").new_worktree()
            end,
            desc = 'Create git worktree',
        },
    },
}
