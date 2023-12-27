require('nvim-treesitter.configs').setup({
    ensure_installed = {
        'vimdoc',
        'javascript',
        'typescript',
        'tsx',
        'go',
        'c',
        'lua',
        'vim',
        'vimdoc',
        'query',
        'rust',
    },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
})
