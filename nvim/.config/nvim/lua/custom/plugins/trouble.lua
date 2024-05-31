return {
  'folke/trouble.nvim',
  opts = {},
  keys = {
    {
      '<leader>dw',
      '<cmd>Trouble diagnostics toggle filter.severity=vim.diagnostic.severity.ERROR<cr>',
      desc = '[D]iagnostics [W]orkspace',
    },
  },
}
