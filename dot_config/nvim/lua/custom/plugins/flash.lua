return {
  'smoka7/hop.nvim',
  event = 'VeryLazy',
  version = '*',
  opts = {
    -- keys = 'etovxqpdygfblzhckisuran',
    keys = 'nteshdmgiroauflpywjbcqz',
  },
  keys = {
    { 'f', mode = { 'n', 'x', 'v' }, '<cmd>HopChar2<cr>', desc = 'Hop char1' },
    { 'F', mode = { 'n', 'x', 'v' }, '<cmd>HopChar2BC<cr>', desc = 'Hop char1 reverse' },
  },
}
