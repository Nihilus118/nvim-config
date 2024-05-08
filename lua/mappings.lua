require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>cf", function()
  require("conform").format()
end, { desc = "File Format with conform" })

map("n", "<leader><leader>", require("telescope.builtin").git_files, { desc = "Search git files in current folder" })
map("n", "<leader>fm", vim.lsp.buf.format, { desc = "Format the current buffer using the LSP configured for the filetype" })
