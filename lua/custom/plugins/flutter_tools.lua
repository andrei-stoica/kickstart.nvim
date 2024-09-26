return {
  'akinsho/flutter-tools.nvim',
  ft = 'dart',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim', -- optional for vim.ui.select
  },
  keys = {
    { '<leader>Fr', ':FlutterRun<cr>', desc = '[F]lutter [R]un' },
    { '<leader>FR', ':FlutterRestart<cr>', desc = '[F]lutter [R]estart' },
    { '<leader>Fq', ':FlutterQuit<cr>', desc = '[F]lutter [Q]uit' },
    { '<leader>Fv', ':FlutterVisualDebug<cr>', desc = '[F]lutter [V]isual Debug' },
    { '<leader>Fp', ':FlutterCopyProfilerUrl<cr>', desc = '[F]lutter Copy [P]rofiler Url' },
    { '<leader>Fd', ':FlutterDevTools<cr>', desc = '[F]lutter [D]ev Tools' },
  },
  config = true,
}
