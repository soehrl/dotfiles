return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        'nvim-telescope/telescope-frecency.nvim',
        'nvim-treesitter/nvim-treesitter',
    },
    keys = {
      { '<C-p>', ':lua require(\'telescope.builtin\').find_files()<CR>', desc = 'Find files' },
      { '<A-/>', ':lua require(\'telescope.builtin\').live_grep()<CR>', desc = 'Search in files' },
      { '<Leader>B', ':lua require(\'telescope.builtin\').buffers()<CR>', desc = 'Switch buffers' },
      { '<A-p>', function() require('telescope.builtin').old_files() end, desc = 'Open recent file' },

      { '<Leader>gS', function() require('telescope.builtin').git_status() end, desc = 'View git status' },
      { '<Leader>gl', function() require('telescope.builtin').git_commits() end, desc = 'View git commits' },
      { '<Leader>gt', function() require('telescope.builtin').git_stash() end, desc = 'View git stash items' },

      { '<Leader>T', function() require('telescope.builtin').treesitter() end, desc = 'View definitions' },

      { '<Leader>gd', function() require('telescope.builtin').lsp_definitions() end, desc = 'Go to definition' },
      { 'gd', function() require('telescope.builtin').lsp_definitions() end, desc = 'Go to definition' },
      { '<Leader>lt', function() require('telescope.builtin').lsp_references() end, desc = 'Find references (telescope)' },
      { '<Leader>li', function() require('telescope.builtin').lsp_implementations() end, desc = 'Go to implementation (telescope)' },
      { '<Leader>t', function() require('telescope.builtin').resume() end, desc = 'Go to implementation (telescope)' },
    },
}
