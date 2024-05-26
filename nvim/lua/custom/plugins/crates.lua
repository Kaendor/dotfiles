return {
  'Saecki/crates.nvim',
  event = {
    'BufRead Cargo.toml',
  },
  opts = {
    null_ls = {
      enabled = true,
      name = 'crates.nvim',
    },
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
}
