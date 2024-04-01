return {
  'quarto-dev/quarto-nvim',
  opts = {
    lspFeatures = {
      languages = { 'r', 'python', 'julia', 'bash', 'html', 'lua' },
    },
  },
  ft = 'quarto',
  keys = {
    { '<leader>qa', ':QuartoActivate<cr>', desc = '[Q]uarto [A]ctivate' },
    { '<leader>qp', ":lua require'quarto'.quartoPreview()<cr>", desc = '[Q]uarto [P]review' },
    { '<leader>qq', ":lua require'quarto'.quartoClosePreview()<cr>", desc = '[Q]uarto [Q]uit preview' },
    { '<leader>qh', ':QuartoHelp ', desc = '[Q]uarto [H]elp' },
    { '<leader>qe', ":lua require'otter'.export()<cr>", desc = '[Q]uarto [E]xport' },
    { '<leader>qE', ":lua require'otter'.export(true)<cr>", desc = '[Q]uarto [E]xport overwrite' },
    { '<leader>qrr', ':QuartoSendAbove<cr>', desc = '[Q]uarto [R]un to cursor' },
    { '<leader>qra', ':QuartoSendAll<cr>', desc = '[Q]uarto [R]un [A]ll' },
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
}
