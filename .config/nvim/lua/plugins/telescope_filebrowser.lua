return {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = {
        'nvim-telescope/telescope.nvim',
    },
    init = function()
        require('telescope').load_extension('file_browser')
    end,
    keys = {
      { '<Leader>e', ':lua require(\'telescope\').extensions.file_browser.file_browser({ cwd = vim.fn.expand(\'%:p:h\') })<CR>', desc = 'Browser files of the currently opened directory' },
      { '<Leader>E', ':lua require(\'telescope\').extensions.file_browser.file_browser()<CR>', desc = 'Browser files within the directory of the currently opened buffer' },
    },
}
