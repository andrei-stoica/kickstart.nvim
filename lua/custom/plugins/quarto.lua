return {
  'quarto-dev/quarto-nvim',
  opts = {
    lspFeatures = {
      languages = { 'r', 'python', 'julia', 'bash', 'html', 'lua' },
    },
  },
  ft = 'quarto',
  keys = {
    { '<leader>Qa', ':QuartoActivate<cr>', desc = '[Q]uarto [A]ctivate' },
    { '<leader>Qp', ":lua require'quarto'.quartoPreview()<cr>", desc = '[Q]uarto [P]review' },
    { '<leader>Qq', ":lua require'quarto'.quartoClosePreview()<cr>", desc = '[Q]uarto [Q]uit preview' },
    { '<leader>Qh', ':QuartoHelp ', desc = '[Q]uarto [H]elp' },
    { '<leader>Qe', ":lua require'otter'.export()<cr>", desc = '[Q]uarto [E]xport' },
    { '<leader>QE', ":lua require'otter'.export(true)<cr>", desc = '[Q]uarto [E]xport overwrite' },
    { '<leader>Qrr', ':QuartoSendAbove<cr>', desc = '[Q]uarto [R]un to cursor' },
    { '<leader>Qra', ':QuartoSendAll<cr>', desc = '[Q]uarto [R]un [A]ll' },
    { '<leader><cr>', ':SlimeSend<cr>', desc = 'send code chunk' },
    { '<c-cr>', ':SlimeSend<cr>', desc = 'send code chunk' },
    { '<c-cr>', '<esc>:SlimeSend<cr>i', mode = 'i', desc = 'send code chunk' },
    { '<c-cr>', '<Plug>SlimeRegionSend<cr>', mode = 'v', desc = 'send code chunk' },
    { '<cr>', '<Plug>SlimeRegionSend<cr>', mode = 'v', desc = 'send code chunk' },
    { '<leader>ctr', ':split term://R<cr>', desc = 'terminal: R' },
    { '<leader>cti', ':split term://ipython<cr>', desc = 'terminal: ipython' },
    { '<leader>ctp', ':split term://python<cr>', desc = 'terminal: python' },
    { '<leader>ctj', ':split term://julia<cr>', desc = 'terminal: julia' },
  },

  config = function(PluginSpec, opts)
    require('quarto').setup(opts)
    require('which-key').register {
      ['<leader>Q'] = { name = '[^Q]uarto', _ = 'which_key_ignore' },
    }
  end,
}
