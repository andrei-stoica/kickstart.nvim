return {
  'debugloop/telescope-undo.nvim',
  dependencies = { -- note how they're inverted to above example
    {
      'nvim-telescope/telescope.nvim',
      dependencies = { 'nvim-lua/plenary.nvim' },
    },
  },
  keys = {
    { -- lazy style key map
      '<leader>u',
      '<cmd>Telescope undo<cr>',
      desc = '[U]ndo history',
    },
  },
}
