return {
    "nicolasgb/jj.nvim",
    version = "*", -- Use latest stable release
    -- Or from the main branch (uncomment the branch line and comment the version line)
    -- branch = "main",
    config = function()
        require("jj").setup({
          foo = "bar",
          editor = {
            window = {
              type = "tab",
            },
          },
          -- Configure diff module
          diff = {
            -- Default backend for viewing diffs
            -- "native" - Built-in split diff using Neovim's diff mode (default)
            -- "diffview" - Use diffview.nvim plugin (requires diffview.nvim)
            -- "codediff" - Use codediff.nvim plugin (requires codediff.nvim)
            -- Or any custom backend name you've registered
            backend = "codediff",
          },
          terminal = {
            window = {
              type = "floating",
              floating_width = 0.9,
              floating_height = 0.9,
            },
          },
        })
    end,
    keys = {
      -- { '<Leader>j', ':J status<CR>', desc = 'jj status' },
      { '<Leader>jj', ':J log<CR>', desc = 'jj log' },
      { '<Leader>jf', ':J fetch<CR>', desc = 'jj fetch' },
      { '<Leader>jd', ':J describe<CR>', desc = 'jj describe' },
      { '<Leader>js', ':J split<CR>', desc = 'jj split' },
      { '<Leader>jn', ':J new<CR>', desc = 'jj new' },
    }
}
