return {
  'folke/snacks.nvim',
  ---@type snacks.Config
  opts = {
    scope = {},
    indent = {
      indent = {
        -- your indent configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        only_scope = true,
      },
      chunk = {
        -- your chunk configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        enabled = true,
        hl = {
          'RainbowRed',
          'RainbowYellow',
          'RainbowBlue',
          'RainbowOrange',
          'RainbowGreen',
          'RainbowViolet',
          'RainbowCyan',
        },
      },
      animate = {
        duration = {
          step = 20,
          total = 100,
        },
      },
      scope = {
        underline = true,
        hl = {
          'RainbowRed',
          'RainbowYellow',
          'RainbowBlue',
          'RainbowOrange',
          'RainbowGreen',
          'RainbowViolet',
          'RainbowCyan',
        },
      },
    },
  },
}
