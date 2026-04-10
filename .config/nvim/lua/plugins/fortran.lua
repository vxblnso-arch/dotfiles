return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.parsers or {}, { "fortran" })
    end,
  },

  { "neovim/nvim-lspconfig", opts = {
    servers = {
      fortls = {},
    },
  } },
}
