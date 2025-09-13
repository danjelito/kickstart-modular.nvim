-- Reference: https://github.com/smoka7/hop.nvim
return {
  'smoka7/hop.nvim',
  version = "*",
  opts = {
    keys = 'etovxqpdygfblzhckisuran',
  },
  config = function(_, opts)
    require('hop').setup(opts)

    -- Map <C-s> to :HopWord in normal mode
    vim.keymap.set('n', '<C-s>', ':HopWord<CR>', { silent = true, desc = "[H]op to word" })
  end,
}

