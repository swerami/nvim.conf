return {{
    "mason-org/mason.nvim",
    opts = {}
},
{
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {ts_ls}, --tsserver
            })
        end,
},
{
  "neovim/nvim-lspconfig",
  dependencies = { "mason-org/mason-lspconfig.nvim" },
  config = function()
            vim.lsp.config("ts_ls", {})
            vim.lsp.enable("ts_ls")
  end,
},
}
