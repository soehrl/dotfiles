-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system({ 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { 'Failed to clone lazy.nvim:\n', 'ErrorMsg' },
      { out, 'WarningMsg' },
      { '\nPress any key to exit...' },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Enable line numbers
vim.o.number = true
-- Show relative numbers above and below current line
vim.o.relativenumber = true
-- Not completely sure why this is needed
vim.o.signcolumn = 'yes'
-- The amount of lines to keep visible above and below current line
vim.o.scrolloff = 8
-- The amount of lines to keep visible to the left and right
vim.o.sidescrolloff = 8
-- Don't wrap lines
vim.o.wrap = false

-- Search while typing
vim.o.incsearch = true
-- Don't show previous search results
vim.o.hlsearch = false

-- Tab width
vim.o.tabstop = 4
-- Number of spaces for indentation
vim.o.shiftwidth = 4
-- Convert tab to spaces
vim.o.expandtab = true

-- Not completely sure why I have this on
vim.o.hidden = true

-- No beep / flash for errors
vim.o.errorbells = false

-- Not sure what exactly this does and why I have it on
vim.o.inccommand = 'nosplit'

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noinsert,noselect'

-- Avoid showing message extra message when using completion (do I want this?)
vim.o.shortmess = vim.o.shortmess .. 'c'

-- Use space as map leader
vim.g.mapleader = ' '

-- Set local leader (need for lazy.vim)
-- vim.g.mapleader = ','

vim.g.completion_matching_strategy_list = {'exact', 'substring', 'fuzzy'}

-- Yanking now also copies to clipboard
vim.o.clipboard = vim.o.clipboard .. 'unnamedplus'
-- " Set up win32 yanking
-- " TODO: this should only be enabled on windows
-- " set clipboard+=unnamedplus
-- " let g:clipboard = {
-- "           \   'name': 'wanking',
-- "           \   'copy': {
-- "           \      '+': 'wank.exe -i --crlf',
-- "           \      '*': 'wank.exe -i --crlf',
-- "           \    },
-- "           \   'paste': {
-- "           \      '+': 'wank.exe -o --lf',
-- "           \      '*': 'wank.exe -o --lf',
-- "           \   },
-- "           \   'cache_enabled': 0,
-- "           \ }

require('config.keymappings')

-- Setup lazy.nvim
require('lazy').setup({
  spec = {
    { import = 'plugins' }
    -- add your plugins here
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { 'habamax' } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
