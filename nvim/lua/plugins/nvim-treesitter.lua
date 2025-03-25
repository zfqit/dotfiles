return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    keys = {
      {
        "+",
        desc = "Increment selection",
        mode = "v",
        noremap = true,
      },
      {
        "_",
        desc = "Decrement selection",
        mode = "v",
        noremap = true,
      },
    },
    opts = {
      -- all supported languages: https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          node_incremental = "+",
          node_decremental = "_",
        },
      },
      autotag = {
        enable = true,
        enable_rename = true,
        enable_close = true,
        enable_close_on_slash = true,
      },
    },
  },
  {
    -- auto close xml tag
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    enabled = true,
  },
  textobjects = {
    move = {
      enable = true,
      goto_next_start = { ["]f"] = "@function.outer", ["]c"] = "@class.outer", ["]a"] = "@parameter.inner" },
      goto_next_end = { ["]F"] = "@function.outer", ["]C"] = "@class.outer", ["]A"] = "@parameter.inner" },
      goto_previous_start = { ["[f"] = "@function.outer", ["[c"] = "@class.outer", ["[a"] = "@parameter.inner" },
      goto_previous_end = { ["[F"] = "@function.outer", ["[C"] = "@class.outer", ["[A"] = "@parameter.inner" },
    },
  },
}
