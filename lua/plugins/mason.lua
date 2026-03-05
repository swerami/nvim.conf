return {
{
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
},
{
  "neovim/nvim-lspconfig",
  dependencies = { "mason-org/mason-lspconfig.nvim" },
  config = function()
            vim.lsp.config("ts_ls", {})
            vim.lsp.config("tailwindcss", {})
  end,
},
}
