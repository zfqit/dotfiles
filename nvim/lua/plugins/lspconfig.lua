return {
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  event = "VeryLazy",
  opts = {
    inlay_hints = {
      enabled = false,
    },
    servers = {
      emmet_language_server = {
        -- better html and css support
        filetypes = {
          "html",
          "css",
          "less",
          "sass",
          "scss",
          "pug",
          "vue",
          "javascriptreact",
          "typescriptreact",
          "java",
          "kotlin",
          "dockerfile",
          "markdown",
          "c",
          "go",
          "python",
        },
      },
    },
  },
}
