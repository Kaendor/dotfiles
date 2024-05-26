return {
  'stevearc/oil.nvim',
  opts = {
    view_options = {
      show_hidden = true,
    },
  },
  enabled = true,
  cmd = 'Oil',
  keys = {
    {
      '-',
      function()
        require('oil').open()
      end,
      desc = 'Open parent directory',
    },
  },
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
}
