local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local augroup = vim.api.nvim_create_augroup('numbertoggle', {})

vim.api.nvim_create_autocmd(
    { 'BufEnter', 'FocusGained', 'InsertLeave', 'CmdlineLeave', 'WinEnter' },
    {
        pattern = '*',
        group = augroup,
        callback = function()
            if vim.o.nu and vim.api.nvim_get_mode().mode ~= 'i' then
                vim.opt.relativenumber = true
            end
        end,
    }
)

vim.api.nvim_create_autocmd(
    { 'BufLeave', 'FocusLost', 'InsertEnter', 'CmdlineEnter', 'WinLeave' },
    {
        pattern = '*',
        group = augroup,
        callback = function()
            if vim.o.nu then
                vim.opt.relativenumber = false
                vim.cmd('redraw')
            end
        end,
    }
)

vim.opt.number = true
vim.api.nvim_set_option('clipboard', 'unnamed')
