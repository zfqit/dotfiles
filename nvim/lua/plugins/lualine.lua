return {
  "lualine.nvim",
  event = "VeryLazy",
  opts = {
    options = {
      globalstatus = true,
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
    },
    sections = {
      lualine_a = { { "mode", icon = "󰕷" } },
      lualine_b = { { "branch", icon = "" } },
      lualine_c = { "filename", "diff", "diagnostics", "searchcount" },
      lualine_x = { "filetype", "filesize" },
      lualine_y = { "location" },
      lualine_z = { "fileformat", "encoding" },
    },
  },
}
