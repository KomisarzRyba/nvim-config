return {
  'ray-x/go.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('go').setup()
    vim.api.nvim_create_autocmd('FileType', {
      desc = 'Set tabstop to 4 in go buffers',
      pattern = 'go',
      group = vim.api.nvim_create_augroup('tabstop_go_4', { clear = true }),
      callback = function()
        vim.opt_local.tabstop = 4
      end,
    })
  end,
  event = { 'CmdlineEnter' },
  ft = { 'go', 'gomod' },
}
