return {
    "sbdchd/neoformat",
    config = function ()
        vim.cmd('autocmd BufWritePre * Neoformat')
    end
}
