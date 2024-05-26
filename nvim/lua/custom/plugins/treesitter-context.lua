-- Always display the current context at the top line if its too big
return {
  'nvim-treesitter/nvim-treesitter-context',
  event = 'VeryLazy',
  opts = {
    enable = true,
  },
}
