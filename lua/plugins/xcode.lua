require('lspconfig').sourcekit.setup {
  cmd = { '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/sourcekit-lsp' },
}

return {
  'wojciech-kulik/xcodebuild.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'MunifTanjim/nui.nvim',
    'nvim-tree/nvim-tree.lua', -- (optional) to manage project files
    'nvim-treesitter/nvim-treesitter', -- (optional) for Quick tests support (required Swift parser)
  },
  config = function()
    require('xcodebuild').setup {
      -- put some options here or leave it empty to use default settings
      code_coverage = {
        enabled = true,
      },
    }
  end,
  keys = {
    {
      '<leader>X',
      '<cmd>XcodebuildPicker<cr>',
      mode = 'n',
      desc = 'Show All Xcodebuild Actions',
    },
  },
}
