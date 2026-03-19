return {
    'puremourning/vimspector',
    dependencies = {
    },
    keys = {
      { '<Leader>dx', ':VimspectorReset<CR>', desc = 'Stop debugging' },
      { '<Leader>di', '<Plug>VimspectorBalloonEval<CR>', desc = 'Inspect symbol' },
      { '<Leader>ds', '<Plug>VimspectorContinue<CR>', desc = 'Start/continue debugging' },
      { '<Leader>dS', '<Plug>VimspectorRestart<CR>', desc = 'Restart debugging' },
      { '<Leader>db', '<Plug>VimspectorToggleBreakpoint<CR>', desc = 'Add/remove breakpoint' },
      { '<Leader>dB', '<Plug>VimspectorToggleConditionalBreakpoint<CR>', desc = 'Add/remove conditional breakpoint' },
      { '<A-k>', '<Plug>VimspectorUpFrame<CR>', desc = 'Go one frame up' },
      { '<A-j>', '<Plug>VimspectorDownFrame<CR>', desc = 'Go one frame down' },
      { '<C-l>', '<Plug>VimspectorStepInto<CR>', desc = 'Step into' },
      { '<C-h>', '<Plug>VimspectorStepOut<CR>', desc = 'Step out' },
      { '<C-j>', '<Plug>VimspectorStepOver<CR>', desc = 'Step over' },
      { '<Leader>dc', ':e .vimspector.json<CR>', desc = 'Debugger config' },
    },
}
