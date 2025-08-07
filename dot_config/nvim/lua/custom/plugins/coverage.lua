return {
  'andythigpen/nvim-coverage',
  version = '*',
  config = function()
    require('coverage').setup {
      auto_reload = true,
      signs = {
        covered = { hl = 'CoverageCovered', text = '█' },
        uncovered = { hl = 'CoverageUncovered', text = '█' },
        partial = { hl = 'CoveragePartial', text = '█' },
      },
    }
  end,
}
