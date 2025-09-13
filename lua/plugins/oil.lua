return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    columns = {
      'icon',
      'mtime',
    },
    delete_to_trash = true,
    float = {
      max_width = 0.8,
      max_height = 0.5,
    },
  },
  -- Optional dependencies
  -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  keys = {
    {
      '<leader>E',
      '<cmd>Oil --float<CR>',
      desc = '[E]xplorer: Open Oil',
    },
  },
}
