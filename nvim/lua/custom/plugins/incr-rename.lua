return {
  'smjonas/inc-rename.nvim',
  -- opts = {
  --   input_buffer_type = 'dressing',
  -- },
  keys = {
    {
      '<leader>cr',
      function()
        require 'inc_rename'
        return ':IncRename ' .. vim.fn.expand '<cword>'
      end,
      expr = true,
      desc = '[C]ode [R]ename',
    },
  },
}
