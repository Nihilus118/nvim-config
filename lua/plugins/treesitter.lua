return {
    "nvim-treesitter/nvim-treesitter",
    build  = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "lua", "javascript", "php", "go" },
            highlight = { enabled = true },
            indent = { enabled = true },
        })
    end
}
