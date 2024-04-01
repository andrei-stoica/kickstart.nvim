return {
  'theprimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function(_, opts)
    local function toggle_telescope(harpoon_files)
      local conf = require('telescope.config').values
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require('telescope.pickers')
        .new({}, {
          prompt_title = 'Harpoon',
          finder = require('telescope.finders').new_table {
            results = file_paths,
          },
          previewer = conf.file_previewer {},
          sorter = conf.generic_sorter {},
        })
        :find()
    end

    local harpoon = require 'harpoon'
    harpoon:setup {
      settings = {
        save_on_toggle = true,
      },
    }
    local map = function(keys, func, desc)
      vim.keymap.set('n', keys, func, { desc = '[H]arpoon ' .. desc })
    end

    map('<leader>ha', function()
      harpoon:list():append()
    end, '[A]dd')
    map('<leader>hl', function()
      toggle_telescope(harpoon:list())
    end, '[L]ist')
    map('<leader>he', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, '[E]dit')

    map('<leader>hs', function()
      harpoon:list():select(1)
    end, 'Switch to file 1')
    map('<leader>hd', function()
      harpoon:list():select(2)
    end, 'Switch to file 2')
    map('<leader>hf', function()
      harpoon:list():select(3)
    end, 'Switch to file 3')
    map('<leader>hg', function()
      harpoon:list():select(4)
    end, 'Switch to file 4')
  end,
}
