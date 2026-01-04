return {
  "akinsho/toggleterm.nvim",
  version = "*",
  keys = {
    { "<C-\\>", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal" },
  },
  config = function()
    require("toggleterm").setup({
      direction = "horizontal", -- You can also try 'float' or 'vertical'
      size = 15,
      open_mapping = [[<C-\>]],
      start_in_insert = true,
    })
  end,
}
