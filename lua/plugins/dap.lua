return {
    'mfussenegger/nvim-dap',
    requires = {
        'rcarriga/nvim-dap-ui',
    },
    setup = function()
        -- Setup dap ui and dap ui keybindings
        require('dapui').setup()
        -- leader+dui toggles the dap ui
        vim.api.nvim_set_keymap('n', '<leader>dui', '<cmd>lua require("dapui").toggle()<CR>',
            { noremap = true, silent = true })
        -- setup php debug to liste on port 9003
        require('dap').adapters.php = {
            type = 'executable',
            command = 'node',
            -- use mason path to phpDebug.js
            args = { '/home/mason/.config/nvim/phpDebug.js' },
        }
    end
}
