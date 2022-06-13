local harpoon = require 'harpoon'
local harpoon_tmux = require("harpoon.tmux")

harpoon.setup({
  -- global_settings = {
  --   -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
  --   save_on_toggle = false,

  --   -- saves the harpoon file upon every change. disabling is unrecommended.
  --   save_on_change = true,

  --   -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
  --   enter_on_sendcmd = true,

  --   -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
  --   tmux_autoclose_windows = false,

  --   -- filetypes that you want to prevent from adding to the harpoon list menu.
  --   excluded_filetypes = { "harpoon" },

  --   -- set marks specific to each git branch inside git repository
  --   mark_branch = false,
  -- }
})

local M = {}

function M.sendCommand(cmd_index)
  local cmd = harpoon.get_term_config().cmds[cmd_index]

  if cmd then
    local colon_start, colon_end = cmd:find(":", 1, true)
    if colon_start and colon_end then
      idx = cmd:sub(1, colon_start - 1)
      real_cmd = cmd:sub(colon_end + 1)
      harpoon_tmux.sendCommand("." .. idx, real_cmd)
    end
  end

end

return M
