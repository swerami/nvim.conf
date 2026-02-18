return {
    {"folke/neodev.nvim"},
  {
  "folke/which-key.nvim",
  event = "VimEnter",
  opts = {
      delay = 0,
      icons = { mappings = vim.g.have_nerd_font },

      spec = {
        { '<leader>s', group = '[S]earch', mode = { 'n', 'v' } },
        { '<leader>t', group = '[T]oggle' },
        { '<leader>h', group = '[H]arpoon' },
      },
    },
     keys = {
    -- {
    --   "<leader>?",
    --   function()
    --     require("which-key").show({ global = false })
    --   end,
    --   desc = "Buffer Local Keymaps (which-key)",
    -- },
  },
 }
}
