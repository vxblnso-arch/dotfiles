return {
  -- gruvbox setup
  {
    "ellisonleao/gruvbox.nvim",
  },

  { "shaunsingh/nord.nvim", priority = 1000 },

  -- themery
  {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        themes = {
          {
            name = "Gruvbox Dark",
            colorscheme = "gruvbox",
            before = [[vim.opt.background = "dark"]],
          },
          {
            name = "Gruvbox Light",
            colorscheme = "gruvbox",
            before = [[vim.opt.background = "light"]],
          },
          {
            name = "Nord",
            colorscheme = "nord",
          },
        }, --add other themes here
        livePreview = true,
      })
    end,
  },
}
