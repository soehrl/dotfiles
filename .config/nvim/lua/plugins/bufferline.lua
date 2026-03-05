return {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {},
    -- keys = {
        -- { '<A-l>', ':BufferLineCycleNext<CR>', desc = 'Next tab' },
    --     { '<A-h>', ':BufferLineCyclePrev<CR>', desc = 'Previous tab' },
    --     { '<A-L>', ':BufferLineMoveNext<CR>', desc = 'Move tab right' },
    --     { '<A-H>', ':BufferLineMovePrev<CR>', desc = 'Move tab left' },
    -- },
    init = function()
        vim.opt.termguicolors = true

        -- keys do not work when set in the keys table for some reason, so set them here instead
        vim.keymap.set('n', '<A-l>', ':BufferLineCycleNext<CR>', { desc = 'Next tab' })
        vim.keymap.set('n', '<A-h>', ':BufferLineCyclePrev<CR>', { desc = 'Previous tab' })
        vim.keymap.set('n', '<A-L>', ':BufferLineMoveNext<CR>', { desc = 'Move tab right' })
        vim.keymap.set('n', '<A-H>', ':BufferLineMovePrev<CR>', { desc = 'Move tab left' })
    end,
}
