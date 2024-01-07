return {
    {
        'mfussenegger/nvim-dap',
        dependencies = {
            'rcarriga/nvim-dap-ui',
        },
        config = function()
            require("dapui").setup()
            vim.api.nvim_set_keymap('n', '<Leader>dui', [[<Cmd>lua require'dapui'.toggle()<CR>]],
                { noremap = true, silent = true })
        end
    },
}
