return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "williamboman/mason.nvim",
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ui = { icons = { enabled = true, style = "solid" } },
            handlers = {
                function(name)
                    require("lspconfig")[name].setup({
                        capabilities = require('cmp_nvim_lsp').default_capabilities()
                    })
                end
            }
        })
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
        vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
        vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
}
