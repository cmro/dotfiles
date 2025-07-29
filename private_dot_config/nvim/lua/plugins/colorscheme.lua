return {
  -- add dracula
  -- { "Mofiqul/dracula.nvim" },
  -- { "sainnhe/sonokai" },
  { "gbprod/nord.nvim" },

  -- Configure LazyVim to load dracula
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nord",
    },
  },
}
