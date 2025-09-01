return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  opts = {
    cmdline = {
      view = 'cmdline_popup',
    },
    lsp = {
      -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
      override = {
        ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
        ['vim.lsp.util.stylize_markdown'] = true,
        ['cmp.entry.get_documentation'] = true, -- requires hrsh7th/nvim-cmp
      },
    },
    presets = {
      inc_rename = true,
      command_palette = true,
      bottom_search = true,
      lsp_doc_border = true,
      long_message_to_split = true,
    },
  },
  dependencies = {
    'MunifTanjim/nui.nvim',
  },
}
