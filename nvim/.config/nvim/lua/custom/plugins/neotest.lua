return {
  'nvim-neotest/neotest',
  event = 'VeryLazy',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    'antoinemadec/FixCursorHold.nvim',
    'rouge8/neotest-rust',
  },
  opts = function(plugin, opts)
    local rust = require 'neotest-rust'
    opts.adapters = {
      rust,
    }
  end,
  keys = {
    {
      '<leader>tc',
      function()
        require('neotest').run.run()
      end,
      desc = '[T]est [C]losest',
    },
    {
      '<leader>tf',
      function()
        require('neotest').run.run(vim.fn.expand '%')
      end,
      desc = '[T]est [F]ile',
    },
    {
      '<leader>tp',
      function()
        require('neotest').summary.toggle()
      end,
      desc = '[T]est [P]anel',
    },
  },
}
