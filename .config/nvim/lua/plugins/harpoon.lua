function sendCommand(cmd_index)
    local harpoon = require 'harpoon'
    local harpoon_tmux = require("harpoon.tmux")
    local cmd = harpoon.get_term_config().cmds[cmd_index]

    if cmd then
        cmd = cmd:gsub("\\n", "\n")

        local colon_start, colon_end = cmd:find("#", 1, true)
        if colon_start and colon_end then
            idx = cmd:sub(1, colon_start - 1)
            real_cmd = cmd:sub(colon_end + 1)
            harpoon_tmux.sendCommand(idx, real_cmd)
        end
    end
end

return {
    'ThePrimeagen/harpoon',
    opts = {
        global_settings = {
            --   -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
            --   save_on_toggle = false,

            --   -- saves the harpoon file upon every change. disabling is unrecommended.
            --   save_on_change = true,

            --   -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
            enter_on_sendcmd = false,

            --   -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
            --   tmux_autoclose_windows = false,

            --   -- filetypes that you want to prevent from adding to the harpoon list menu.
            --   excluded_filetypes = { "harpoon" },

            --   -- set marks specific to each git branch inside git repository
            --   mark_branch = false,
        }
    },
    keys = {
        -- File navigation
        { '<Leader>pm', ':lua require(\'harpoon.mark\').add_file() <CR>', desc = 'Add file to harpoon' },
        { '<Leader>p1', ':lua require(\'harpoon.ui\').nav_file(1) <CR>', desc = 'Go to harpoon file 1' },
        { '<Leader>p2', ':lua require(\'harpoon.ui\').nav_file(2) <CR>', desc = 'Go to harpoon file 2' },
        { '<Leader>p3', ':lua require(\'harpoon.ui\').nav_file(3) <CR>', desc = 'Go to harpoon file 3' },
        { '<Leader>p4', ':lua require(\'harpoon.ui\').nav_file(4) <CR>', desc = 'Go to harpoon file 4' },
        { '<Leader>p5', ':lua require(\'harpoon.ui\').nav_file(5) <CR>', desc = 'Go to harpoon file 5' },
        { '<Leader>p6', ':lua require(\'harpoon.ui\').nav_file(6) <CR>', desc = 'Go to harpoon file 6' },
        { '<Leader>p7', ':lua require(\'harpoon.ui\').nav_file(7) <CR>', desc = 'Go to harpoon file 7' },
        { '<Leader>p8', ':lua require(\'harpoon.ui\').nav_file(8) <CR>', desc = 'Go to harpoon file 8' },
        { '<Leader>p9', ':lua require(\'harpoon.ui\').nav_file(9) <CR>', desc = 'Go to harpoon file 9' },
        { '<Leader>p0', ':lua require(\'harpoon.ui\').nav_file(10) <CR>', desc = 'Go to harpoon file 10' },
        { '<Leader>pp', ':lua require(\'harpoon.ui\').toggle_quick_menu() <CR>', desc = 'Toggle harpoon menu' },

        -- Commands
        { '<Leader>c1', ':lua require(\'harpoon-setup\').sendCommand(1)<CR>', desc = 'Send command 1' },
        { '<Leader>c2', ':lua require(\'harpoon-setup\').sendCommand(2)<CR>', desc = 'Send command 2' },
        { '<Leader>c3', ':lua require(\'harpoon-setup\').sendCommand(3)<CR>', desc = 'Send command 3' },
        { '<Leader>c4', ':lua require(\'harpoon-setup\').sendCommand(4)<CR>', desc = 'Send command 4' },
        { '<Leader>c5', ':lua require(\'harpoon-setup\').sendCommand(5)<CR>', desc = 'Send command 5' },
        { '<Leader>c6', ':lua require(\'harpoon-setup\').sendCommand(6)<CR>', desc = 'Send command 6' },
        { '<Leader>c7', ':lua require(\'harpoon-setup\').sendCommand(7)<CR>', desc = 'Send command 7' },
        { '<Leader>c8', ':lua require(\'harpoon-setup\').sendCommand(8)<CR>', desc = 'Send command 8' },
        { '<Leader>c9', ':lua require(\'harpoon-setup\').sendCommand(9)<CR>', desc = 'Send command 9' },
        { '<Leader>c0', ':lua require(\'harpoon-setup\').sendCommand(10)<CR>', desc = 'Send command 10' },
        { '<Leader>cp', ':lua require(\'harpoon.cmd-ui\').toggle_quick_menu() <CR>', desc = 'Toggle harpoon menu' },
    },
}
