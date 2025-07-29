return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      -- Fügt den Filetype dauerhaft im Bereich lualine_x ein
      table.insert(opts.sections.lualine_x, { "filetype", icon_only = false })
    end,
  },
}
