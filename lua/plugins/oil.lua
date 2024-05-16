return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  keys = {
    {
      '-',
      ':Oil<CR>',
      mode = 'n',
      desc = 'Toggle file explorer',
    },
  },
}
