return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.sections.lualine_b = {}
      opts.sections.lualine_c[4] = { "filename", path = 1 }
      opts.sections.lualine_z = { "branch" }
    end,
  },
}
