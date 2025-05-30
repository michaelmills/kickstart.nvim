-- Switch between buffers
return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'
      harpoon:setup()

      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end, { desc = 'harpoon file' })
      vim.keymap.set('n', '<leader>j', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = 'harpoon quick menu' })

      vim.keymap.set('n', '<leader>1', function()
        harpoon:list():select(1)
      end, { desc = 'harpoon to file 1' })
      vim.keymap.set('n', '<leader>2', function()
        harpoon:list():select(2)
      end, { desc = 'harpoon to file 2' })
      vim.keymap.set('n', '<leader>3', function()
        harpoon:list():select(3)
      end, { desc = 'harpoon to file 3' })
      vim.keymap.set('n', '<leader>4', function()
        harpoon:list():select(4)
      end, { desc = 'harpoon to file 4' })

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set('n', '<leader>g', function()
        harpoon:list():prev()
      end, { desc = 'harpoon to previous file' })
      vim.keymap.set('n', '<leader>h', function()
        harpoon:list():next()
      end, { desc = 'harpoon to next file' })
    end,
  },
}
