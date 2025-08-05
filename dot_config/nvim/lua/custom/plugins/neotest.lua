return {
  'nvim-neotest/neotest',
  event = 'VeryLazy',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    'antoinemadec/FixCursorHold.nvim',
    'rouge8/neotest-rust',
    'adrigzr/neotest-mocha',
  },
  opts = function(plugin, opts)
    local rust = require 'neotest-rust'
    opts.adapters = {
      rust,
      require 'neotest-mocha' {
        command = 'pnpm test:unit --',
        command_args = function(context)
          -- The context contains:
          --   results_path: The file that json results are written to
          --   test_name_pattern: The generated pattern for the test
          --   path: The path to the test file
          --
          -- It should return a string array of arguments
          --
          -- Not specifying 'command_args' will use the defaults below
          return {
            '--full-trace',
            '--reporter=json',
            '--reporter-options=output=' .. context.results_path,
            '--grep=' .. context.test_name_pattern,
            context.path,
          }
        end,
        env = { CI = true },
        cwd = function(path)
          return vim.fn.getcwd()
        end,
      },
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
