return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { 'nvim-lua/plenary.nvim', "nvim-telescope/telescope-ui-select.nvim" },
    config = function()
        require('telescope').setup({})
        require('telescope').load_extension("ui-select")
        vim.api.nvim_set_keymap('n', '<Leader><Leader>', [[<Cmd>Telescope find_files<CR>]],
            { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<Leader>p', [[<Cmd>Telescope live_grep<CR>]], { noremap = true, silent = true })
    end
}
