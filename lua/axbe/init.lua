return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = '[A]dd file to harpoon' })
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Toggle harpoon window' })

    -- vim.keymap.set('n', '<C-1>', function()
    --  harpoon:list():select(1)
    -- end, { desc = 'Select 1st harpoon buffer' })
    -- vim.keymap.set('n', '<C-2>', function()
    --   harpoon:list():select(2)
    -- end, { desc = 'Select 2nd harpoon buffer' })
    -- vim.keymap.set('n', '<C-3>', function()
    --   harpoon:list():select(3)
    -- end, { desc = 'Select 3rd harpoon buffer' })
    -- vim.keymap.set('n', '<C-4>', function()
    --   harpoon:list():select(4)
    -- end, { desc = 'Select 4th harpoon buffer' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-S-Tab>', function()
      harpoon:list():prev()
    end, { desc = 'Select [p]revious harpoon buffer' })
    vim.keymap.set('n', '<C-Tab>', function()
      harpoon:list():next()
    end, { desc = 'Select [n]ext harpoon buffer' })
  end,
}
