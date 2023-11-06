return {
  {
    "akinsho/nvim-toggleterm.lua",
    version = "*",
    config = function()
      require("toggleterm").setup()
    end,
    keys = {
      {
        "<leader>h",
        "<cmd>ToggleTerm<cr>",
        desc = "Toggle terminal",
      }
    },
  },
}
