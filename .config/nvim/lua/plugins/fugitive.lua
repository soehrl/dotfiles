return {
    'tpope/vim-fugitive',
    dependencies = {
    },
    keys = {
      { '<Leader>gs', ':G<CR>', desc = 'Git status' },
      { '<Leader>gc', ':G commit<CR>', desc = 'Git commit' },
      { '<Leader>gp', ':G push<CR>', desc = 'Git push' },
    },
}
