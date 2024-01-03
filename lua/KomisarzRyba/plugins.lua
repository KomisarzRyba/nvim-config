require('lazy').setup({
    {
        'catppuccin/nvim',
        name = 'catppuccin',
        priority = 1000,
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
    },
    {
        'williamboman/mason.nvim',
        dependencies = { 'williamboman/mason-lspconfig.nvim' },
        config = function()
            require('mason').setup()
        end,
    },
    { 'neovim/nvim-lspconfig', dependencies = { 'hrsh7th/cmp-nvim-lsp' } },
    { 'nvimtools/none-ls.nvim', event = 'VeryLazy' },
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    { 'ckipp01/stylua-nvim' },
    {
        'rust-lang/rust.vim',
        ft = 'rust',
        init = function()
            vim.g.rustfmt_autosave = 1
        end,
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    {
        'ThePrimeagen/harpoon',
        branch = 'harpoon2',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    { 'numToStr/FTerm.nvim' },
    { 'stevearc/dressing.nvim', event = 'VeryLazy' },
    { 'L3MON4D3/LuaSnip', run = 'make install_jsregexp' },
    {
        'hrsh7th/nvim-cmp',
        event = 'InsertEnter',
        dependencies = {
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets',
        },
    },
    {
        'windwp/nvim-ts-autotag',
        ft = {
            'html',
            'javascript',
            'javascriptreact',
            'typescript',
            'typescriptreact',
        },
        config = function()
            require('nvim-ts-autotag').setup()
        end,
    },
})
