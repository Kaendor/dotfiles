return {
  'folke/trouble.nvim',
  opts = {},
  keys = {
    {
      '<leader>dw',
      '<cmd>Trouble diagnostics toggle focus=true<cr>',
      desc = '[D]iagnostics [W]orkspace',
    },
    {
      '<leader>co',
      '<cmd>Trouble symbols toggle win.position=left focus=true<cr>',
      desc = '[C]ode [O]verview',
    },
    {
      '<leader>ct',
      '<cmd>Trouble todo toggle focus=true<cr>',
      desc = '[C]ode [T]odo',
    },
  },
}
