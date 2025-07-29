return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "ansible-lint" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ansiblels = {},
      },
    },
  },
}
