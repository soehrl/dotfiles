return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        'nvim-telescope/telescope-frecency.nvim',
    },
    keys = {
      { '<C-p>', ':lua require(\'telescope.builtin\').find_files()<CR>', desc = 'Find files' },
      { '<A-/>', ':lua require(\'telescope.builtin\').live_grep()<CR>', desc = 'Search in files' },
      { '<Leader>B', ':lua require(\'telescope.builtin\').buffers()<CR>', desc = 'Switch Buffers' },
    },
}
