return {
  'akinsho/toggleterm.nvim',
  version = '*',
  event = 'VeryLazy',
  cmd = 'ToggleTerm',
  opts = {
    open_mapping = [[<c-t>]],
    direction = 'float',
    shade_terminals = true,
    shading_factor = 2,
  },
}
